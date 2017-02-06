.code

; int __cdecl loc_4578F4(LPVOID	lpBaseAddress, LPVOID lpBuffer,	DWORD nSize)
loc_4578F4:				; CODE XREF: .text:004579D1p
					; .text:00457A0Cp ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		cmp	netdbg,	0
		jz	short loc_457916
		cmp	dword_5D40B8, 0
		jnz	short loc_45792B

loc_457916:				; CODE XREF: .text:0045790Bj
		lea	eax, [ebp-4]
		mov	edx, process
		push	eax		; lpNumberOfBytesWritten
		push	edi		; nSize
		push	esi		; lpBuffer
		push	ebx		; lpBaseAddress
		push	edx		; hProcess
		call	WriteProcessMemory
		jmp	short loc_45794B
; ---------------------------------------------------------------------------

loc_45792B:				; CODE XREF: .text:00457914j
		lea	ecx, [ebp-4]
		xor	edx, edx
		push	ecx
		push	esi
		push	edi
		mov	ecx, dword_5D40B8
		push	edx
		mov	eax, ebx
		push	eax
		push	ecx
		mov	eax, [ecx]
		call	dword ptr [eax+58h]
		test	eax, eax
		setz	al
		and	eax, 1

loc_45794B:				; CODE XREF: .text:00457929j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_457954(LPCVOID lpBaseAddress,	LPVOID lpBuffer, DWORD nSize)
loc_457954:				; CODE XREF: .text:00457BA3p
					; .text:00457C42p
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		cmp	netdbg,	0
		jz	short loc_457976
		cmp	dword_5D40B8, 0
		jnz	short loc_45798B

loc_457976:				; CODE XREF: .text:0045796Bj
		lea	eax, [ebp-4]
		mov	edx, process
		push	eax		; lpNumberOfBytesRead
		push	edi		; nSize
		push	esi		; lpBuffer
		push	ebx		; lpBaseAddress
		push	edx		; hProcess
		call	ReadProcessMemory
		jmp	short loc_4579AB
; ---------------------------------------------------------------------------

loc_45798B:				; CODE XREF: .text:00457974j
		lea	ecx, [ebp-4]
		xor	edx, edx
		push	ecx
		push	esi
		push	edi
		mov	ecx, dword_5D40B8
		push	edx
		mov	eax, ebx
		push	eax
		push	ecx
		mov	eax, [ecx]
		call	dword ptr [eax+54h]
		test	eax, eax
		setz	al
		and	eax, 1

loc_4579AB:				; CODE XREF: .text:00457989j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4579B4:				; CODE XREF: .text:00457B54p
					; .text:00458649p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		test	byte ptr [ebx+4], 1
		jz	short loc_457A44
		push	1000h		; nSize
		mov	eax, [ebx+8]
		push	eax		; lpBuffer
		mov	edx, [ebx]
		push	edx		; lpBaseAddress
		call	loc_4578F4
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_457A3A
		lea	ecx, [ebp-8]
		push	ecx		; lpflOldProtect
		push	4		; flNewProtect
		push	1000h		; dwSize
		mov	eax, [ebx]
		push	eax		; lpAddress
		mov	edx, process
		push	edx		; hProcess
		call	VirtualProtectEx
		test	eax, eax
		jnz	short loc_457A00
		or	eax, 0FFFFFFFFh
		jmp	short loc_457A46
; ---------------------------------------------------------------------------

loc_457A00:				; CODE XREF: .text:004579F9j
		push	1000h		; nSize
		mov	edx, [ebx+8]
		push	edx		; lpBuffer
		mov	ecx, [ebx]
		push	ecx		; lpBaseAddress
		call	loc_4578F4
		add	esp, 0Ch
		mov	esi, eax
		lea	eax, [ebp-4]
		push	eax		; lpflOldProtect
		mov	edx, [ebp-8]
		push	edx		; flNewProtect
		push	1000h		; dwSize
		mov	ecx, [ebx]
		push	ecx		; lpAddress
		mov	eax, process
		push	eax		; hProcess
		call	VirtualProtectEx
		test	esi, esi
		jnz	short loc_457A3A
		or	eax, 0FFFFFFFFh
		jmp	short loc_457A46
; ---------------------------------------------------------------------------

loc_457A3A:				; CODE XREF: .text:004579DBj
					; .text:00457A33j
		inc	dword_586174
		and	dword ptr [ebx+4], 0FFFFFFFEh

loc_457A44:				; CODE XREF: .text:004579C3j
		xor	eax, eax

loc_457A46:				; CODE XREF: .text:004579FEj
					; .text:00457A38j
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_457A4C:				; CODE XREF: .text:00458B94p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, offset dword_5E17C0
		push	edi
		xor	eax, eax
		mov	edx, [ebp+8]
		mov	ebx, [esi]
		shl	ebx, 2
		lea	ebx, [ebx+ebx*2]
		add	ebx, offset dword_5E0BB4
		jmp	short loc_457A9D
; ---------------------------------------------------------------------------

loc_457A6C:				; CODE XREF: .text:00457AA1j
		cmp	edx, [ebx]
		jnz	short loc_457A99
		inc	dword_58616C
		test	eax, eax
		jle	short loc_457A95
		mov	edx, [esi]
		sub	edx, eax
		mov	ecx, edx
		dec	ecx
		push	ecx		; i2
		push	edx		; i1
		push	0Ch		; size
		push	offset dword_5E0BC0 ; base
		call	Swapmem
		add	esp, 10h
		add	ebx, 0Ch

loc_457A95:				; CODE XREF: .text:00457A78j
		mov	eax, ebx
		jmp	short loc_457AA5
; ---------------------------------------------------------------------------

loc_457A99:				; CODE XREF: .text:00457A6Ej
		inc	eax
		sub	ebx, 0Ch

loc_457A9D:				; CODE XREF: .text:00457A6Aj
		mov	edi, [esi]
		cmp	eax, edi
		jl	short loc_457A6C
		xor	eax, eax

loc_457AA5:				; CODE XREF: .text:00457A97j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_457AAC:				; CODE XREF: .text:004586F5p
					; .text:00458D0Dp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	edi, offset dword_5E17C0
		and	esi, 0FFFFF000h
		cmp	esi, 0FFFFF000h
		jnz	short loc_457AD2
		xor	eax, eax
		jmp	loc_457C82
; ---------------------------------------------------------------------------

loc_457AD2:				; CODE XREF: .text:00457AC9j
		cmp	VersionInformation.dwPlatformId, 1
		jnz	short loc_457AEA
		cmp	esi, 10000h
		jnb	short loc_457AEA
		xor	eax, eax
		jmp	loc_457C82
; ---------------------------------------------------------------------------

loc_457AEA:				; CODE XREF: .text:00457AD9j
					; .text:00457AE1j
		xor	eax, eax
		mov	ebx, [edi]
		shl	ebx, 2
		lea	ebx, [ebx+ebx*2]
		add	ebx, offset dword_5E0BB4
		jmp	short loc_457B43
; ---------------------------------------------------------------------------

loc_457AFC:				; CODE XREF: .text:00457B45j
		cmp	esi, [ebx]
		jnz	short loc_457B3F
		test	byte ptr [ebp+0Ch], 40h
		jz	short loc_457B13
		test	byte ptr [ebx+4], 4
		jz	short loc_457B13
		xor	eax, eax
		jmp	loc_457C82
; ---------------------------------------------------------------------------

loc_457B13:				; CODE XREF: .text:00457B04j
					; .text:00457B0Aj
		inc	dword_58616C
		test	eax, eax
		jle	short loc_457B38
		mov	edx, [edi]
		sub	edx, eax
		mov	ecx, edx
		dec	ecx
		push	ecx		; i2
		push	edx		; i1
		push	0Ch		; size
		push	offset dword_5E0BC0 ; base
		call	Swapmem
		add	esp, 10h
		add	ebx, 0Ch

loc_457B38:				; CODE XREF: .text:00457B1Bj
		mov	eax, ebx
		jmp	loc_457C82
; ---------------------------------------------------------------------------

loc_457B3F:				; CODE XREF: .text:00457AFEj
		inc	eax
		sub	ebx, 0Ch

loc_457B43:				; CODE XREF: .text:00457AFAj
		cmp	eax, [edi]
		jl	short loc_457AFC
		cmp	dword ptr [edi], 100h
		jl	short loc_457B89
		push	offset dword_5E0BC0
		call	loc_4579B4
		pop	ecx
		mov	ebx, dword_5E0BC8
		push	0BF4h		; n
		push	offset byte_5E0BCC ; src
		push	offset dword_5E0BC0 ; dest
		call	_memmove
		add	esp, 0Ch
		mov	dword ptr [edi], 0FFh
		mov	eax, [edi]
		lea	eax, [eax+eax*2]
		mov	dword_5E0BC8[eax*4], ebx

loc_457B89:				; CODE XREF: .text:00457B4Dj
		mov	ebx, [edi]
		shl	ebx, 2
		lea	ebx, [ebx+ebx*2]
		add	ebx, offset dword_5E0BC0
		mov	[ebx], esi
		push	1000h		; nSize
		mov	eax, [ebx+8]
		push	eax		; lpBuffer
		push	esi		; lpBaseAddress
		call	loc_457954
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_457BC3
		xor	edx, edx
		mov	eax, ebx
		mov	[ebx+4], edx
		inc	dword ptr [edi]
		inc	dword_586170
		jmp	loc_457C82
; ---------------------------------------------------------------------------

loc_457BC3:				; CODE XREF: .text:00457BADj
		call	GetLastError
		cmp	eax, 42Bh
		jnz	short loc_457BD6
		xor	eax, eax
		jmp	loc_457C82
; ---------------------------------------------------------------------------

loc_457BD6:				; CODE XREF: .text:00457BCDj
		cmp	esi, userspacelimit
		jb	short loc_457C0E
		push	1000h
		push	esi
		mov	edx, [ebx+8]
		push	edx
		call	loc_4584E4
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_457BFB
		xor	eax, eax
		jmp	loc_457C82
; ---------------------------------------------------------------------------

loc_457BFB:				; CODE XREF: .text:00457BF2j
		mov	dword ptr [ebx+4], 2
		inc	dword ptr [edi]
		inc	dword_586170
		mov	eax, ebx
		jmp	short loc_457C82
; ---------------------------------------------------------------------------

loc_457C0E:				; CODE XREF: .text:00457BDCj
		test	byte ptr [ebp+0Ch], 40h
		jz	short loc_457C18
		xor	eax, eax
		jmp	short loc_457C82
; ---------------------------------------------------------------------------

loc_457C18:				; CODE XREF: .text:00457C12j
		lea	edx, [ebp-0Ch]
		mov	ecx, process
		push	edx		; lpflOldProtect
		push	2		; flNewProtect
		push	1000h		; dwSize
		push	esi		; lpAddress
		push	ecx		; hProcess
		call	VirtualProtectEx
		test	eax, eax
		jnz	short loc_457C38
		xor	eax, eax
		jmp	short loc_457C82
; ---------------------------------------------------------------------------

loc_457C38:				; CODE XREF: .text:00457C32j
		push	1000h		; nSize
		mov	edx, [ebx+8]
		push	edx		; lpBuffer
		push	esi		; lpBaseAddress
		call	loc_457954
		add	esp, 0Ch
		mov	[ebp-4], eax
		lea	ecx, [ebp-8]
		push	ecx		; lpflOldProtect
		mov	eax, [ebp-0Ch]
		push	eax		; flNewProtect
		push	1000h		; dwSize
		push	esi		; lpAddress
		mov	edx, process
		push	edx		; hProcess
		call	VirtualProtectEx
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_457C71
		xor	eax, eax
		jmp	short loc_457C82
; ---------------------------------------------------------------------------

loc_457C71:				; CODE XREF: .text:00457C6Bj
		mov	dword ptr [ebx+4], 4
		inc	dword ptr [edi]
		inc	dword_586170
		mov	eax, ebx

loc_457C82:				; CODE XREF: .text:00457ACDj
					; .text:00457AE5j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_457C8C:				; CODE XREF: .text:0045936Fp
					; .text:00459388p
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		mov	ecx, edx
		and	edx, 0FFFFFCFFh
		or	ecx, eax
		and	eax, 0FFFFFCFFh
		and	ecx, 300h
		cmp	eax, 8
		jnz	short loc_457CB4
		cmp	edx, 4
		jz	short loc_457CBE

loc_457CB4:				; CODE XREF: .text:00457CADj
		cmp	edx, 8
		jnz	short loc_457CC5
		cmp	eax, 4
		jnz	short loc_457CC5

loc_457CBE:				; CODE XREF: .text:00457CB2j
		mov	eax, ecx
		or	eax, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_457CC5:				; CODE XREF: .text:00457CB7j
					; .text:00457CBCj
		cmp	eax, 80h
		jnz	short loc_457CD1
		cmp	edx, 40h
		jz	short loc_457CDE

loc_457CD1:				; CODE XREF: .text:00457CCAj
		cmp	edx, 80h
		jnz	short loc_457CE7
		cmp	eax, 40h
		jnz	short loc_457CE7

loc_457CDE:				; CODE XREF: .text:00457CCFj
		mov	eax, ecx
		or	eax, 80h
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_457CE7:				; CODE XREF: .text:00457CD7j
					; .text:00457CDCj
		cmp	VersionInformation.dwPlatformId, 1
		jnz	short loc_457D0B
		cmp	eax, 2
		jnz	short loc_457CFA
		cmp	edx, 4
		jz	short loc_457D04

loc_457CFA:				; CODE XREF: .text:00457CF3j
		cmp	eax, 4
		jnz	short loc_457D0B
		cmp	edx, 2
		jnz	short loc_457D0B

loc_457D04:				; CODE XREF: .text:00457CF8j
		mov	eax, ecx
		or	eax, 4
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_457D0B:				; CODE XREF: .text:00457CEEj
					; .text:00457CFDj ...
		cmp	edx, eax
		jnz	short loc_457D15
		or	ecx, eax
		mov	eax, ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_457D15:				; CODE XREF: .text:00457D0Dj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_457D1C:				; DATA XREF: .data:stru_5370F0o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		test	eax, eax
		jnz	short loc_457D40
		cmp	dword ptr [ebp+8], 0
		jz	short loc_457D35
		cmp	process, 0
		jnz	short loc_457D39

loc_457D35:				; CODE XREF: .text:00457D2Aj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_457D39:				; CODE XREF: .text:00457D33j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_457D40:				; CODE XREF: .text:00457D24j
		dec	eax
		jnz	short loc_457D66
		push	offset memory.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		call	Listmemory
		mov	edx, memory.sorted.version
		mov	eax, 1
		mov	memory.version,	edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_457D66:				; CODE XREF: .text:00457D41j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_457D6C:				; DATA XREF: .data:stru_5370F0o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+14h]
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_457D82
		xor	eax, eax
		jmp	loc_457E1C
; ---------------------------------------------------------------------------

loc_457D82:				; CODE XREF: .text:00457D79j
		mov	edx, [eax+68h]
		push	edx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_457DAE
		test	byte ptr [ebx+0Bh], 8
		jnz	short loc_457DAE
		cmp	dword ptr [ebx+60h], 0
		jnz	short loc_457DAE
		mov	eax, [ebx]	; int
		cmp	eax, userspacelimit
		jnz	short loc_457DB2

loc_457DAE:				; CODE XREF: .text:00457D96j
					; .text:00457D9Cj ...
		xor	eax, eax
		jmp	short loc_457E1C
; ---------------------------------------------------------------------------

loc_457DB2:				; CODE XREF: .text:00457DACj
		test	esi, esi
		jnz	short loc_457DBD
		mov	eax, 1
		jmp	short loc_457E1C
; ---------------------------------------------------------------------------

loc_457DBD:				; CODE XREF: .text:00457DB4j
		dec	esi
		jnz	short loc_457E1A
		push	0		; flags
		mov	edx, [ebx+4]	; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		mov	[ebx+60h], esi
		test	esi, esi
		jnz	short loc_457DDB
		xor	eax, eax
		jmp	short loc_457E1C
; ---------------------------------------------------------------------------

loc_457DDB:				; CODE XREF: .text:00457DD5j
		push	0		; mode
		mov	edx, [ebx+4]
		push	edx		; size
		mov	ecx, [ebx]
		push	ecx		; _addr
		push	esi		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [ebx+4]
		jz	short loc_457E01
		mov	eax, [ebx+60h]
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+60h], edx

loc_457E01:				; CODE XREF: .text:00457DF0j
		push	0		; lp
		mov	ecx, [ebx]
		push	ecx		; wp
		push	487h		; msg
		call	Broadcast
		add	esp, 0Ch
		mov	eax, 1
		jmp	short loc_457E1C
; ---------------------------------------------------------------------------

loc_457E1A:				; CODE XREF: .text:00457DBEj
		xor	eax, eax

loc_457E1C:				; CODE XREF: .text:00457D7Dj
					; .text:00457DB0j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; MENUFUNC loc_457E20
loc_457E20:				; DATA XREF: .text:0045ACB6o
					; .data:stru_5370F0o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+14h]
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_457E36
		xor	eax, eax
		jmp	loc_457FAE
; ---------------------------------------------------------------------------

loc_457E36:				; CODE XREF: .text:00457E2Dj
		mov	edx, [eax+68h]
		push	edx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_457E52
		test	byte ptr [ebx+0Bh], 8
		jz	short loc_457E59

loc_457E52:				; CODE XREF: .text:00457E4Aj
		xor	eax, eax
		jmp	loc_457FAE
; ---------------------------------------------------------------------------

loc_457E59:				; CODE XREF: .text:00457E50j
		test	esi, esi
		jnz	short loc_457E67
		mov	eax, 1
		jmp	loc_457FAE
; ---------------------------------------------------------------------------

loc_457E67:				; CODE XREF: .text:00457E5Bj
		dec	esi
		jnz	loc_457FAC
		test	dword ptr [ebx+8], 2005000h
		jz	short loc_457E81
		mov	eax, 40C0110h
		jmp	loc_457F89
; ---------------------------------------------------------------------------

loc_457E81:				; CODE XREF: .text:00457E75j
		test	byte ptr [ebx+0Ah], 20h
		jz	short loc_457EA2
		push	0		; psize
		mov	edx, [ebx]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_457EA2
		mov	eax, 40D0110h
		jmp	loc_457F89
; ---------------------------------------------------------------------------

loc_457EA2:				; CODE XREF: .text:00457E85j
					; .text:00457E96j
		cmp	dword ptr [ebx+0Ch], 1
		jnz	short loc_457EC3
		push	0		; psize
		mov	edx, [ebx]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_457EC3
		mov	eax, 40D0110h
		jmp	loc_457F89
; ---------------------------------------------------------------------------

loc_457EC3:				; CODE XREF: .text:00457EA6j
					; .text:00457EB7j
		cmp	dword ptr [ebx+0Ch], 2
		jnz	short loc_457EE4
		push	0		; psize
		mov	edx, [ebx]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_457EE4
		mov	eax, 40D0110h
		jmp	loc_457F89
; ---------------------------------------------------------------------------

loc_457EE4:				; CODE XREF: .text:00457EC7j
					; .text:00457ED8j
		cmp	dword ptr [ebx+0Ch], 3
		jnz	short loc_457F05
		push	0		; psize
		mov	edx, [ebx]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_457F05
		mov	eax, 40D0110h
		jmp	loc_457F89
; ---------------------------------------------------------------------------

loc_457F05:				; CODE XREF: .text:00457EE8j
					; .text:00457EF9j
		cmp	dword ptr [ebx+0Ch], 4
		jnz	short loc_457F29
		cmp	VersionInformation.dwPlatformId, 2
		jnz	short loc_457F29
		mov	eax, 42002h
		cmp	dword_5BE6BC, 0
		jnz	short loc_457F89
		add	eax, 2000h
		jmp	short loc_457F89
; ---------------------------------------------------------------------------

loc_457F29:				; CODE XREF: .text:00457F09j
					; .text:00457F12j
		cmp	dword ptr [ebx+0Ch], 5
		jnz	short loc_457F47
		push	0		; psize
		mov	edx, [ebx]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_457F47
		mov	eax, 40D0110h
		jmp	short loc_457F89
; ---------------------------------------------------------------------------

loc_457F47:				; CODE XREF: .text:00457F2Dj
					; .text:00457F3Ej
		mov	eax, [ebx+8]
		test	eax, 380000h
		jz	short loc_457F58
		mov	eax, 0A0104h
		jmp	short loc_457F89
; ---------------------------------------------------------------------------

loc_457F58:				; CODE XREF: .text:00457F4Fj
		test	eax, 20000h
		jz	short loc_457F66
		mov	eax, 21001h
		jmp	short loc_457F89
; ---------------------------------------------------------------------------

loc_457F66:				; CODE XREF: .text:00457F5Dj
		test	byte ptr [ebx+0Ah], 40h
		jz	short loc_457F84
		push	0		; psize
		mov	edx, [ebx]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_457F84
		mov	eax, 40D0110h
		jmp	short loc_457F89
; ---------------------------------------------------------------------------

loc_457F84:				; CODE XREF: .text:00457F6Aj
					; .text:00457F7Bj
		mov	eax, 11001h

loc_457F89:				; CODE XREF: .text:00457E7Cj
					; .text:00457E9Dj ...
		push	0		; strname
		push	0		; sel1
		push	0		; sel0
		or	eax, 800000h
		push	eax		; dumptype
		push	0		; path
		mov	edx, [ebx+4]
		push	edx		; size
		mov	ecx, [ebx]
		push	ecx		; base
		push	0		; _title
		call	Createdumpwindow
		add	esp, 20h
		xor	eax, eax
		jmp	short loc_457FAE
; ---------------------------------------------------------------------------

loc_457FAC:				; CODE XREF: .text:00457E68j
		xor	eax, eax

loc_457FAE:				; CODE XREF: .text:00457E31j
					; .text:00457E54j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_457FB4:				; DATA XREF: .data:stru_5370F0o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+14h]
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_457FC7
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_457FC7:				; CODE XREF: .text:00457FC0j
		mov	edx, [eax+68h]
		push	edx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jz	short loc_457FEA
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_457FEA
		test	dword ptr [eax+8], 2005000h
		jnz	short loc_457FEF

loc_457FEA:				; CODE XREF: .text:00457FD9j
					; .text:00457FDFj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_457FEF:				; CODE XREF: .text:00457FE8j
		test	ebx, ebx
		jnz	short loc_457FFB
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_457FFB:				; CODE XREF: .text:00457FF1j
		dec	ebx
		jnz	short loc_458018
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	edx, [eax]
		push	edx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_458018:				; CODE XREF: .text:00457FFCj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_458020:				; DATA XREF: .data:stru_5370F0o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+14h]
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_458033
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_458033:				; CODE XREF: .text:0045802Cj
		mov	edx, [eax+68h]
		push	edx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jz	short loc_45804D
		test	byte ptr [eax+0Bh], 8
		jz	short loc_458052

loc_45804D:				; CODE XREF: .text:00458045j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_458052:				; CODE XREF: .text:0045804Bj
		test	ebx, ebx
		jnz	short loc_45805E
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45805E:				; CODE XREF: .text:00458054j
		dec	ebx
		jnz	short loc_45807E
		push	90h		; mode
		push	0		; stackaddr
		push	0		; selsize
		mov	edx, [eax]
		push	edx		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45807E:				; CODE XREF: .text:0045805Fj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_458084:				; DATA XREF: .data:stru_5370F0o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF8DCh
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+14h]
		mov	edi, [ebp+10h]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_4580B5
		cmp	run.status, 0
		jz	short loc_4580B5
		cmp	memory.sorted.n, 0
		jz	short loc_4580B5
		cmp	dword ptr [esi+68h], 0
		jge	short loc_4580BC

loc_4580B5:				; CODE XREF: .text:0045809Bj
					; .text:004580A4j ...
		xor	eax, eax
		jmp	loc_45824C
; ---------------------------------------------------------------------------

loc_4580BC:				; CODE XREF: .text:004580B3j
		cmp	edi, 1
		jnz	short loc_4580D8
		push	3
		push	0
		call	loc_4A7938
		add	esp, 8
		test	eax, eax
		jnz	short loc_4580D8
		xor	eax, eax
		jmp	loc_45824C
; ---------------------------------------------------------------------------

loc_4580D8:				; CODE XREF: .text:004580BFj
					; .text:004580CFj
		test	ebx, ebx
		jnz	short loc_4580E6
		mov	eax, 1
		jmp	loc_45824C
; ---------------------------------------------------------------------------

loc_4580E6:				; CODE XREF: .text:004580DAj
		dec	ebx
		jnz	loc_45824A
		mov	edx, 1
		test	edi, edi
		jz	short loc_4580F9
		add	edx, 3

loc_4580F9:				; CODE XREF: .text:004580F4j
		mov	[ebp-8], edx
		lea	ecx, [ebp-18h]
		push	ecx		; coord
		push	4		; column
		push	esi		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_458118
		or	eax, 0FFFFFFFFh
		mov	[ebp-14h], eax
		mov	[ebp-18h], eax

loc_458118:				; CODE XREF: .text:0045810Dj
		mov	edi, [esi+68h]
		jmp	loc_458225
; ---------------------------------------------------------------------------

loc_458120:				; CODE XREF: .text:0045822Bj
		push	edi		; selected
		push	esi		; pt
		call	Settableselection
		add	esp, 8
		push	edi		; index
		lea	eax, [esi+44h]
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_458224
		test	byte ptr [ebx+0Bh], 8
		jnz	loc_458224
		mov	eax, [ebx]
		add	eax, [ebx+4]
		cmp	eax, userspacelimit
		jnb	loc_458224
		push	70Ch		; n
		push	0		; c
		lea	edx, [ebp-724h]
		push	edx		; s
		call	_memset
		mov	ecx, [ebx]
		add	esp, 0Ch
		mov	[ebp-498h], ecx
		mov	[ebp-49Ch], ecx
		mov	[ebp-724h], ecx
		mov	eax, [ebx+4]
		mov	[ebp-720h], eax
		lea	eax, [ebp-10h]
		mov	dword ptr [ebp-71Ch], 11001h
		mov	edx, [esi+234h]
		mov	[ebp-4D8h], edx
		push	eax		; int
		mov	edx, [ebp-14h]
		push	edx		; int
		lea	edx, [ebp-724h]	; int
		mov	ecx, [ebp-18h]	; int
		push	ecx		; int
		mov	eax, [ebp-8]	; int
		push	eax		; int
		push	edx		; int
		call	loc_4A71D0
		add	esp, 14h
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jge	short loc_4581D4
		mov	eax, 1
		jmp	short loc_45824C
; ---------------------------------------------------------------------------

loc_4581D4:				; CODE XREF: .text:004581CBj
		mov	dword ptr [ebp-8], 4
		lea	edx, [edi+1]
		push	edx		; selected
		push	esi		; pt
		call	Settableselection
		add	esp, 8
		push	1		; force
		push	esi		; pt
		call	Updatetable
		add	esp, 8
		cmp	dword ptr [ebp-4], 0
		jz	short loc_458224
		push	0		; strname
		mov	eax, [ebp-10h]
		mov	edx, eax
		add	edx, [ebp-0Ch]
		push	edx		; sel1
		push	eax		; sel0
		push	811001h		; dumptype
		push	0		; path
		mov	ecx, [ebx+4]
		push	ecx		; size
		mov	eax, [ebx]
		push	eax		; base
		push	0		; _title
		call	Createdumpwindow
		add	esp, 20h
		mov	eax, 1
		jmp	short loc_45824C
; ---------------------------------------------------------------------------

loc_458224:				; CODE XREF: .text:0045813Bj
					; .text:00458145j ...
		inc	edi

loc_458225:				; CODE XREF: .text:0045811Bj
		cmp	edi, memory.sorted.n
		jl	loc_458120
		push	offset aItemNotFound ; "Item not found"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		mov	eax, 1
		jmp	short loc_45824C
; ---------------------------------------------------------------------------

loc_45824A:				; CODE XREF: .text:004580E7j
		xor	eax, eax

loc_45824C:				; CODE XREF: .text:004580B7j
					; .text:004580D3j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_458254:				; DATA XREF: .data:stru_5370F0o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		test	eax, eax
		jnz	short loc_45826F
		mov	eax, 2
		cmp	dword_58617C, 0
		jnz	short loc_458293
		dec	eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45826F:				; CODE XREF: .text:0045825Cj
		dec	eax
		jnz	short loc_458291
		cmp	dword_58617C, 0
		setz	dl
		and	edx, 1
		mov	dword_58617C, edx
		call	Listmemory
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_458291:				; CODE XREF: .text:00458270j
		xor	eax, eax

loc_458293:				; CODE XREF: .text:0045826Aj
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_458298@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_458298:				; DATA XREF: .data:stru_5370F0o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi		; arglist
		mov	esi, [ebp+14h]
		mov	edi, [ebp+10h]
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_4582B2
		xor	eax, eax
		jmp	loc_458361
; ---------------------------------------------------------------------------

loc_4582B2:				; CODE XREF: .text:004582A9j
		cmp	VersionInformation.dwPlatformId, 2
		jz	short loc_4582C2
		xor	eax, eax
		jmp	loc_458361
; ---------------------------------------------------------------------------

loc_4582C2:				; CODE XREF: .text:004582B9j
		mov	edx, [eax+68h]
		push	edx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4582E4
		test	byte ptr [ebx+0Bh], 8
		jnz	short loc_4582E4
		test	byte ptr [ebx+0Ah], 18h
		jz	short loc_4582E8

loc_4582E4:				; CODE XREF: .text:004582D6j
					; .text:004582DCj
		xor	eax, eax
		jmp	short loc_458361
; ---------------------------------------------------------------------------

loc_4582E8:				; CODE XREF: .text:004582E2j
		test	esi, esi
		jnz	short loc_458310
		test	byte ptr [ebx+0Bh], 40h
		jnz	short loc_4582FA
		test	edi, edi
		jnz	short loc_4582FA
		xor	eax, eax
		jmp	short loc_458361
; ---------------------------------------------------------------------------

loc_4582FA:				; CODE XREF: .text:004582F0j
					; .text:004582F4j
		test	byte ptr [ebx+0Bh], 40h
		jz	short loc_458309
		cmp	edi, 1
		jnz	short loc_458309
		xor	eax, eax
		jmp	short loc_458361
; ---------------------------------------------------------------------------

loc_458309:				; CODE XREF: .text:004582FEj
					; .text:00458303j
		mov	eax, 1
		jmp	short loc_458361
; ---------------------------------------------------------------------------

loc_458310:				; CODE XREF: .text:004582EAj
		dec	esi
		jnz	short loc_45835F
		push	edi		; guard
		mov	edx, [ebx+4]
		push	edx		; size
		mov	ecx, [ebx]
		push	ecx		; base
		call	Guardmemory
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_458351
		push	0		; guard
		mov	eax, [ebx+4]
		push	eax		; size
		mov	edx, [ebx]
		push	edx		; base
		call	Guardmemory
		add	esp, 0Ch
		push	offset aUnableToSetB_6 ; "Unable to set	break-on-access"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		mov	eax, 1
		jmp	short loc_458361
; ---------------------------------------------------------------------------

loc_458351:				; CODE XREF: .text:00458325j
		xor	dword ptr [ebx+8], 40000000h
		mov	eax, 1
		jmp	short loc_458361
; ---------------------------------------------------------------------------

loc_45835F:				; CODE XREF: .text:00458311j
		xor	eax, eax

loc_458361:				; CODE XREF: .text:004582ADj
					; .text:004582BDj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_458368:				; DATA XREF: .data:stru_5370F0o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+14h]
		mov	esi, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_458381
		xor	eax, eax
		jmp	loc_458415
; ---------------------------------------------------------------------------

loc_458381:				; CODE XREF: .text:00458378j
		mov	edx, [eax+68h]
		push	edx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jz	short loc_4583A4
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_4583A4
		test	dword ptr [eax+8], 2005000h
		jnz	short loc_4583A8

loc_4583A4:				; CODE XREF: .text:00458393j
					; .text:00458399j
		xor	eax, eax
		jmp	short loc_458415
; ---------------------------------------------------------------------------

loc_4583A8:				; CODE XREF: .text:004583A2j
		test	ebx, ebx
		jnz	short loc_4583F8
		push	offset rtprot.range ; set
		call	Getrangecount
		pop	ecx
		test	eax, eax
		jnz	short loc_4583D7
		push	offset aLimitRunTrac_0 ; "Limit	run trace protocol to selected me"...
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4583F1
; ---------------------------------------------------------------------------

loc_4583D7:				; CODE XREF: .text:004583B9j
		push	offset aAddMemoryBlock ; "Add memory block to run trace	protocol"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4583F1:				; CODE XREF: .text:004583D5j
		mov	eax, 1
		jmp	short loc_458415
; ---------------------------------------------------------------------------

loc_4583F8:				; CODE XREF: .text:004583AAj
		dec	ebx
		jnz	short loc_458413
		mov	edx, [eax]	; int
		mov	ecx, edx
		add	ecx, [eax+4]	; int
		push	ecx		; addr1
		push	edx		; addr0
		call	Addprotocolrange
		add	esp, 8
		mov	eax, 1
		jmp	short loc_458415
; ---------------------------------------------------------------------------

loc_458413:				; CODE XREF: .text:004583F9j
		xor	eax, eax

loc_458415:				; CODE XREF: .text:0045837Cj
					; .text:004583A6j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_45841C@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, DWORD flNewProtect, int)
loc_45841C:				; DATA XREF: .data:stru_537048o
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi		; arglist
		mov	esi, [ebp+14h]
		mov	edi, [ebp+10h]
		mov	eax, [ebp+8]
		mov	edx, run.status
		test	edx, edx
		jz	short loc_458444
		cmp	edx, 13h
		jz	short loc_458444
		cmp	edx, 14h
		jz	short loc_458444
		test	eax, eax
		jnz	short loc_45844B

loc_458444:				; CODE XREF: .text:00458434j
					; .text:00458439j ...
		xor	eax, eax
		jmp	loc_4584DD
; ---------------------------------------------------------------------------

loc_45844B:				; CODE XREF: .text:00458442j
		mov	ecx, [eax+68h]
		push	ecx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_45846D
		test	byte ptr [ebx+0Bh], 8
		jnz	short loc_45846D
		test	byte ptr [ebx+1Ah], 4
		jz	short loc_458471

loc_45846D:				; CODE XREF: .text:0045845Fj
					; .text:00458465j
		xor	eax, eax
		jmp	short loc_4584DD
; ---------------------------------------------------------------------------

loc_458471:				; CODE XREF: .text:0045846Bj
		test	esi, esi
		jnz	short loc_458487
		mov	eax, 2
		mov	edx, [ebx+18h]
		and	edx, 77h
		cmp	edi, edx
		jz	short loc_4584DD
		dec	eax
		jmp	short loc_4584DD
; ---------------------------------------------------------------------------

loc_458487:				; CODE XREF: .text:00458473j
		dec	esi
		jnz	short loc_4584DB
		test	byte ptr [ebx+0Bh], 40h
		mov	esi, edi
		jz	short loc_458498
		or	esi, 100h

loc_458498:				; CODE XREF: .text:00458490j
		call	Flushmemorycache
		call	loc_4585F4
		lea	eax, [ebp-4]
		push	eax		; lpflOldProtect
		push	esi		; flNewProtect
		mov	edx, [ebx+4]
		push	edx		; dwSize
		mov	ecx, [ebx]
		push	ecx		; lpAddress
		mov	eax, process
		push	eax		; hProcess
		call	VirtualProtectEx
		test	eax, eax
		jnz	short loc_4584CF
		push	offset aUnableToChange ; "Unable to change memory access rights"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4584CF:				; CODE XREF: .text:004584BBj
		call	Listmemory
		mov	eax, 1
		jmp	short loc_4584DD
; ---------------------------------------------------------------------------

loc_4584DB:				; CODE XREF: .text:00458488j
		xor	eax, eax

loc_4584DD:				; CODE XREF: .text:00458446j
					; .text:0045846Fj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4584E4:				; CODE XREF: .text:00457BE8p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		cmp	_imp__NtSystemDebugControl, 0
		jnz	short loc_4584F7
		xor	eax, eax
		jmp	short loc_458551
; ---------------------------------------------------------------------------

loc_4584F7:				; CODE XREF: .text:004584F1j
		cmp	VersionInformation.dwPlatformId, 2
		jnz	short loc_45851B
		cmp	VersionInformation.dwMajorVersion, 5
		jb	short loc_45851B
		cmp	VersionInformation.dwMajorVersion, 5
		jnz	short loc_458520
		cmp	VersionInformation.dwMinorVersion, 0
		jnz	short loc_458520

loc_45851B:				; CODE XREF: .text:004584FEj
					; .text:00458507j
		or	eax, 0FFFFFFFFh
		jmp	short loc_458551
; ---------------------------------------------------------------------------

loc_458520:				; CODE XREF: .text:00458510j
					; .text:00458519j
		mov	edx, [ebp+0Ch]
		mov	[ebp-0Ch], edx
		mov	ecx, [ebp+8]
		mov	[ebp-8], ecx
		mov	eax, [ebp+10h]
		mov	[ebp-4], eax
		push	0
		push	0
		push	0
		push	0Ch
		lea	edx, [ebp-0Ch]
		push	edx
		push	8
		call	_imp__NtSystemDebugControl
		test	eax, eax
		jnz	short loc_45854E
		xor	eax, eax
		jmp	short loc_458551
; ---------------------------------------------------------------------------

loc_45854E:				; CODE XREF: .text:00458548j
		or	eax, 0FFFFFFFFh

loc_458551:				; CODE XREF: .text:004584F5j
					; .text:0045851Ej ...
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_458558:				; CODE XREF: .text:004107A7p
					; .text:0045858Ap
		push	ebp
		mov	ebp, esp
		mov	eax, dword_5E17C4
		test	eax, eax
		jz	short loc_458573
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	dword_5E17C4, edx

loc_458573:				; CODE XREF: .text:00458562j
		xor	ecx, ecx
		mov	dword_5E17C0, ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_458580:				; CODE XREF: .text:loc_40FE7Ap
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, offset dword_5E17C4
		call	loc_458558
		push	1		; flags
		push	100000h		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		mov	[esi], ebx
		test	ebx, ebx
		jnz	short loc_4585AB
		or	eax, 0FFFFFFFFh
		jmp	short loc_4585F0
; ---------------------------------------------------------------------------

loc_4585AB:				; CODE XREF: .text:004585A4j
		xor	edx, edx
		mov	eax, offset dword_5E0BC0

loc_4585B2:				; CODE XREF: .text:004585D1j
		mov	dword ptr [eax], 0FFFFFFFFh
		xor	ecx, ecx
		mov	[eax+4], ecx
		mov	ecx, edx
		shl	ecx, 0Ch
		inc	edx
		add	ecx, [esi]
		mov	[eax+8], ecx
		add	eax, 0Ch
		cmp	edx, 100h
		jl	short loc_4585B2
		xor	eax, eax
		xor	edx, edx
		mov	dword_5E17C0, eax
		mov	dword_586174, edx
		mov	dword_586170, edx
		mov	dword_58616C, edx
		xor	eax, eax

loc_4585F0:				; CODE XREF: .text:004585A9j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4585F4:				; CODE XREF: .text:0044A3A1p
					; .text:loc_44D5CCp ...
		push	ebp
		mov	ebp, esp
		xor	edx, edx
		mov	eax, offset dword_5E0BC0
		jmp	short loc_45861E
; ---------------------------------------------------------------------------

loc_458600:				; CODE XREF: .text:00458624j
		test	byte ptr [eax+4], 1
		jz	short loc_45861A
		push	offset aInvalidatingNo ; "Invalidating non-flushed cache!"
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		pop	ecx
		jmp	short loc_458626
; ---------------------------------------------------------------------------

loc_45861A:				; CODE XREF: .text:00458604j
		inc	edx
		add	eax, 0Ch

loc_45861E:				; CODE XREF: .text:004585FEj
		cmp	edx, dword_5E17C0
		jl	short loc_458600

loc_458626:				; CODE XREF: .text:00458618j
		xor	ecx, ecx
		mov	dword_5E17C0, ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 203. _Flushmemorycache
; Exported entry 540. Flushmemorycache

; void Flushmemorycache(void)
		public Flushmemorycache
Flushmemorycache:			; CODE XREF: .text:0044D5B0p
					; .text:0044EBA4p ...
		push	ebp		; _Flushmemorycache
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		xor	edi, edi
		xor	esi, esi
		mov	ebx, offset dword_5E0BC0
		jmp	short loc_458661
; ---------------------------------------------------------------------------

loc_458642:				; CODE XREF: .text:00458667j
		cmp	dword ptr [ebx+4], 0
		jz	short loc_45865D
		push	ebx
		call	loc_4579B4
		pop	ecx
		test	eax, eax
		jz	short loc_45865D
		mov	edi, 1
		mov	eax, [ebx]
		mov	[ebp-4], eax

loc_45865D:				; CODE XREF: .text:00458646j
					; .text:00458651j
		inc	esi
		add	ebx, 0Ch

loc_458661:				; CODE XREF: .text:00458640j
		cmp	esi, dword_5E17C0
		jl	short loc_458642
		test	edi, edi
		jz	short loc_458685
		mov	edx, [ebp-4]
		push	edx		; arglist
		push	offset aUnableToFlushC ; "Unable to flush cache	at %08X"
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8

loc_458685:				; CODE XREF: .text:0045866Bj
		xor	ecx, ecx
		mov	dword_5E17C0, ecx
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 204. _Readmemory
; Exported entry 684. Readmemory

; int __cdecl Readmemory(void *buf, ulong _addr,	ulong size, int	mode)
		public Readmemory
Readmemory:				; CODE XREF: .text:00408536p
					; .text:004136D6p ...
		push	ebp		; _Readmemory
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	esi, [ebp+10h]
		jz	short loc_4586AE
		cmp	esi, 7FFFFFFFh
		jbe	short loc_4586B5

loc_4586AE:				; CODE XREF: .text:004586A4j
		xor	eax, eax
		jmp	loc_4587C3
; ---------------------------------------------------------------------------

loc_4586B5:				; CODE XREF: .text:004586ACj
		cmp	run.suspended, 0
		jnz	short loc_4586D5
		cmp	run.status, 12h
		jz	short loc_4586D5
		call	Suspendallthreads
		mov	dword ptr [ebp-8], 1
		jmp	short loc_4586DA
; ---------------------------------------------------------------------------

loc_4586D5:				; CODE XREF: .text:004586BCj
					; .text:004586C5j
		xor	edx, edx
		mov	[ebp-8], edx

loc_4586DA:				; CODE XREF: .text:004586D3j
		mov	ecx, [ebp+8]
		xor	eax, eax
		mov	[ebp-0Ch], ecx
		test	esi, esi
		mov	edi, [ebp+0Ch]
		mov	[ebp-4], eax
		jbe	loc_45879B

loc_4586F0:				; CODE XREF: .text:00458795j
		mov	edx, [ebp+14h]
		push	edx
		push	edi
		call	loc_457AAC
		add	esp, 8
		mov	edx, eax
		test	edx, edx
		jnz	short loc_45875B
		test	byte ptr [ebp+14h], 1
		jnz	short loc_458740
		test	byte ptr [ebp+14h], 4
		jz	short loc_458715
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_458740

loc_458715:				; CODE XREF: .text:0045870Dj
		push	esi
		push	esi
		mov	eax, [ebp+0Ch]
		push	eax		; arglist
		push	offset aMemoryAtAddres ; "Memory at address %08X of size %08X (%i"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aUnableToReadMe ; "Unable to read memory"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E688 ; cond
		call	Conderror
		add	esp, 18h

loc_458740:				; CODE XREF: .text:00458707j
					; .text:00458713j
		test	byte ptr [ebp+14h], 4
		jz	short loc_45874C
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_45879B

loc_45874C:				; CODE XREF: .text:00458744j
		cmp	dword ptr [ebp-8], 0
		jz	short loc_458757
		call	Resumeallthreads

loc_458757:				; CODE XREF: .text:00458750j
		xor	eax, eax
		jmp	short loc_4587C3
; ---------------------------------------------------------------------------

loc_45875B:				; CODE XREF: .text:00458701j
		mov	eax, edi
		mov	ecx, 1000h
		and	eax, 0FFFh
		mov	ebx, esi
		sub	ecx, eax
		cmp	ebx, ecx
		jbe	short loc_458776
		mov	ebx, 1000h
		sub	ebx, eax

loc_458776:				; CODE XREF: .text:0045876Dj
		push	ebx		; n
		mov	edx, [edx+8]
		add	edx, eax
		push	edx		; src
		mov	eax, [ebp-0Ch]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		add	[ebp-0Ch], ebx
		add	edi, ebx
		sub	esi, ebx
		add	[ebp-4], ebx
		test	esi, esi
		ja	loc_4586F0

loc_45879B:				; CODE XREF: .text:004586EAj
					; .text:0045874Aj
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4587A6
		call	Resumeallthreads

loc_4587A6:				; CODE XREF: .text:0045879Fj
		test	byte ptr [ebp+14h], 2
		jnz	short loc_4587C0
		mov	ecx, [ebp-4]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	loc_497284
		add	esp, 0Ch

loc_4587C0:				; CODE XREF: .text:004587AAj
		mov	eax, [ebp-4]

loc_4587C3:				; CODE XREF: .text:004586B0j
					; .text:00458759j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 205. _Readmemoryex
; Exported entry 685. Readmemoryex

; int __cdecl Readmemoryex(void	*buf, ulong _addr, ulong	size, int mode,	ulong threadid)
		public Readmemoryex
Readmemoryex:				; CODE XREF: .text:00491695p
					; .text:00491FA2p ...
		push	ebp		; _Readmemoryex
		mov	ebp, esp
		add	esp, 0FFFFFDE4h
		push	ebx
		push	esi
		push	edi
		test	byte ptr [ebp+16h], 0E0h
		mov	edi, [ebp+0Ch]
		jz	loc_458A2D
		cmp	bpmem.sorted.n,	0
		jle	loc_458904
		mov	eax, edi

loc_4587F4:				; CODE XREF: .text:004588FEj
		mov	edx, [ebp+10h]
		add	edx, edi
		push	edx		; addr1
		push	eax		; addr0
		push	offset bpmem.sorted ; sd
		call	Findsorteddatarange
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_458904
		mov	eax, [ebx+8]
		test	eax, 20000h
		jnz	loc_4588F2
		and	eax, [ebp+14h]
		test	eax, 0E00000h
		jz	loc_4588F2
		mov	eax, [ebx+8]
		mov	edx, eax
		and	edx, 3000000h
		cmp	edx, 3000000h
		jz	loc_4588E2
		mov	ecx, eax
		and	ecx, 0C000000h
		cmp	ecx, 0C000000h
		jz	loc_4588E2
		mov	edx, eax
		and	edx, 30000000h
		cmp	edx, 30000000h
		jz	short loc_4588E2
		and	eax, 0C0000000h
		cmp	eax, 0C0000000h
		jz	short loc_4588E2
		mov	eax, [ebp+18h]
		push	eax		; threadid
		push	54h		; type
		mov	ecx, [ebx]
		push	ecx		; _addr
		lea	eax, [ebp-21Ch]
		push	eax		; result
		call	Fastexpression
		add	esp, 10h
		test	eax, eax
		jz	short loc_458898
		mov	esi, 1
		jmp	short loc_4588E7
; ---------------------------------------------------------------------------

loc_458898:				; CODE XREF: .text:0045888Fj
		mov	eax, [ebp-214h]
		and	eax, 0Fh
		sub	eax, 3
		jz	short loc_4588B5
		sub	eax, 3
		jz	short loc_4588BD
		add	eax, 0FFFFFFFEh
		sub	eax, 2
		jb	short loc_4588B5
		jmp	short loc_4588DE
; ---------------------------------------------------------------------------

loc_4588B5:				; CODE XREF: .text:004588A4j
					; .text:004588B1j
		mov	esi, [ebp-20Ch]
		jmp	short loc_4588E7
; ---------------------------------------------------------------------------

loc_4588BD:				; CODE XREF: .text:004588A9j
		xor	eax, eax
		lea	edx, [ebp-20Ch]

loc_4588C5:				; CODE XREF: .text:004588CFj
		cmp	byte ptr [edx],	0
		jnz	short loc_4588D1
		inc	eax
		inc	edx
		cmp	eax, 0Ah
		jl	short loc_4588C5

loc_4588D1:				; CODE XREF: .text:004588C8j
		mov	esi, 1
		cmp	eax, 0Ah
		jl	short loc_4588E7
		dec	esi
		jmp	short loc_4588E7
; ---------------------------------------------------------------------------

loc_4588DE:				; CODE XREF: .text:004588B3j
		xor	esi, esi
		jmp	short loc_4588E7
; ---------------------------------------------------------------------------

loc_4588E2:				; CODE XREF: .text:0045883Fj
					; .text:00458853j ...
		mov	esi, 1

loc_4588E7:				; CODE XREF: .text:00458896j
					; .text:004588BBj ...
		test	esi, esi
		jz	short loc_4588F2
		xor	eax, eax
		jmp	loc_458A42
; ---------------------------------------------------------------------------

loc_4588F2:				; CODE XREF: .text:0045881Aj
					; .text:00458828j ...
		mov	eax, [ebx]
		mov	edx, [ebp+10h]
		add	eax, [ebx+4]
		add	edx, edi
		cmp	eax, edx
		jbe	loc_4587F4

loc_458904:				; CODE XREF: .text:004587ECj
					; .text:0045880Cj
		cmp	bphard.sorted.n, 0
		jle	loc_458A2D
		xor	ebx, ebx
		jmp	loc_458A21
; ---------------------------------------------------------------------------

loc_458918:				; CODE XREF: .text:00458A27j
		push	ebx		; index
		push	offset bphard.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	loc_458A20
		test	byte ptr [eax+0Ah], 2
		jnz	loc_458A20
		mov	edx, [eax+8]
		and	edx, [ebp+14h]
		test	edx, 0E00000h
		jz	loc_458A20
		mov	ecx, [eax+0Ch]
		add	ecx, [eax+10h]
		cmp	edi, ecx
		jnb	loc_458A20
		mov	edx, [ebp+10h]
		add	edx, edi
		cmp	edx, [eax+0Ch]
		jbe	loc_458A20
		mov	edx, [eax+8]
		mov	ecx, edx
		and	ecx, 3000000h
		cmp	ecx, 3000000h
		jz	loc_458A1C
		mov	ecx, edx
		and	ecx, 0C000000h
		cmp	ecx, 0C000000h
		jz	loc_458A1C
		mov	ecx, edx
		and	ecx, 30000000h
		cmp	ecx, 30000000h
		jz	short loc_458A1C
		and	edx, 0C0000000h
		cmp	edx, 0C0000000h
		jz	short loc_458A1C
		mov	eax, [ebp+18h]
		push	eax		; threadid
		push	57h		; type
		push	ebx		; _addr
		lea	edx, [ebp-21Ch]
		push	edx		; result
		call	Fastexpression
		add	esp, 10h
		test	eax, eax
		jz	short loc_4589D0
		mov	esi, 1
		jmp	short loc_458A18
; ---------------------------------------------------------------------------

loc_4589D0:				; CODE XREF: .text:004589C7j
		mov	eax, [ebp-214h]
		and	eax, 0Fh
		sub	eax, 3
		jz	short loc_4589ED
		sub	eax, 3
		jz	short loc_4589F5
		add	eax, 0FFFFFFFEh
		sub	eax, 2
		jb	short loc_4589ED
		jmp	short loc_458A16
; ---------------------------------------------------------------------------

loc_4589ED:				; CODE XREF: .text:004589DCj
					; .text:004589E9j
		mov	esi, [ebp-20Ch]
		jmp	short loc_458A18
; ---------------------------------------------------------------------------

loc_4589F5:				; CODE XREF: .text:004589E1j
		xor	eax, eax
		lea	edx, [ebp-20Ch]

loc_4589FD:				; CODE XREF: .text:00458A07j
		cmp	byte ptr [edx],	0
		jnz	short loc_458A09
		inc	eax
		inc	edx
		cmp	eax, 0Ah
		jl	short loc_4589FD

loc_458A09:				; CODE XREF: .text:00458A00j
		mov	esi, 1
		cmp	eax, 0Ah
		jl	short loc_458A18
		dec	esi
		jmp	short loc_458A18
; ---------------------------------------------------------------------------

loc_458A16:				; CODE XREF: .text:004589EBj
		xor	esi, esi

loc_458A18:				; CODE XREF: .text:004589CEj
					; .text:004589F3j ...
		test	esi, esi
		jz	short loc_458A20

loc_458A1C:				; CODE XREF: .text:00458977j
					; .text:0045898Bj ...
		xor	eax, eax
		jmp	short loc_458A42
; ---------------------------------------------------------------------------

loc_458A20:				; CODE XREF: .text:00458928j
					; .text:00458932j ...
		inc	ebx

loc_458A21:				; CODE XREF: .text:00458913j
		cmp	ebx, bphard.sorted.n
		jl	loc_458918

loc_458A2D:				; CODE XREF: .text:004587DFj
					; .text:0045890Bj
		mov	edx, [ebp+14h]
		push	edx		; mode
		mov	ecx, [ebp+10h]
		push	ecx		; size
		push	edi		; _addr
		mov	eax, [ebp+8]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h

loc_458A42:				; CODE XREF: .text:004588EDj
					; .text:00458A1Ej
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 206. _Writememory
; Exported entry 750. Writememory

; int __cdecl Writememory(const	void *buf, ulong _addr, ulong size, int mode)
		public Writememory
Writememory:				; CODE XREF: .text:0042DFC8p
					; .text:0044BE52p ...
		push	ebp		; _Writememory
		mov	ebp, esp
		add	esp, 0FFFFFFE4h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		test	edi, edi
		jz	short loc_458A65
		cmp	dword ptr [ebp+10h], 7FFFFFFFh
		jbe	short loc_458A6C

loc_458A65:				; CODE XREF: .text:00458A5Aj
		xor	eax, eax
		jmp	loc_458DDD
; ---------------------------------------------------------------------------

loc_458A6C:				; CODE XREF: .text:00458A63j
		test	byte ptr [ebp+16h], 0E0h
		jz	loc_458B1D
		cmp	bpmem.sorted.n,	0
		jle	short loc_458AC7
		mov	esi, [ebp+0Ch]

loc_458A82:				; CODE XREF: .text:00458AC5j
		mov	eax, [ebp+0Ch]
		add	eax, [ebp+10h]
		push	eax		; addr1
		push	esi		; addr0
		push	offset bpmem.sorted ; sd
		call	Findsorteddatarange
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_458AC7
		mov	edx, [eax+8]
		test	edx, 20000h
		jnz	short loc_458AB8
		and	edx, [ebp+14h]
		test	edx, 0E00000h
		jz	short loc_458AB8
		xor	eax, eax
		jmp	loc_458DDD
; ---------------------------------------------------------------------------

loc_458AB8:				; CODE XREF: .text:00458AA4j
					; .text:00458AAFj
		mov	esi, [eax]
		add	esi, [eax+4]
		mov	eax, [ebp+0Ch]
		add	eax, [ebp+10h]
		cmp	esi, eax
		jbe	short loc_458A82

loc_458AC7:				; CODE XREF: .text:00458A7Dj
					; .text:00458A99j
		cmp	bphard.sorted.n, 0
		jle	short loc_458B1D
		xor	ebx, ebx

loc_458AD2:				; CODE XREF: .text:00458B1Bj
		push	ebx		; index
		push	offset bphard.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_458B17
		test	byte ptr [eax+0Ah], 2
		jnz	short loc_458B17
		mov	edx, [eax+8]
		and	edx, [ebp+14h]
		test	edx, 0E00000h
		jz	short loc_458B17
		mov	ecx, [eax+0Ch]
		add	ecx, [eax+10h]
		cmp	ecx, [ebp+0Ch]
		jbe	short loc_458B17
		mov	eax, [eax+0Ch]
		mov	edx, [ebp+0Ch]
		add	edx, [ebp+10h]
		cmp	eax, edx
		jnb	short loc_458B17
		xor	eax, eax
		jmp	loc_458DDD
; ---------------------------------------------------------------------------

loc_458B17:				; CODE XREF: .text:00458AE2j
					; .text:00458AE8j ...
		inc	ebx
		cmp	ebx, 4
		jl	short loc_458AD2

loc_458B1D:				; CODE XREF: .text:00458A70j
					; .text:00458ACEj
		mov	[ebp-1Ch], edi
		xor	eax, eax
		mov	esi, [ebp+0Ch]
		mov	[ebp-0Ch], eax
		test	byte ptr [ebp+14h], 10h
		jz	short loc_458B4F
		mov	edx, [ebp+0Ch]
		add	edx, [ebp+10h]
		push	edx		; addr1
		mov	ecx, [ebp+0Ch]
		push	ecx		; addr0
		push	offset stru_5D6528.sorted ; sd
		call	Deletesorteddatarange
		add	esp, 0Ch
		mov	[ebp-4], eax
		and	dword ptr [ebp+14h], 0FFFFFFDFh
		jmp	short loc_458B7F
; ---------------------------------------------------------------------------

loc_458B4F:				; CODE XREF: .text:00458B2Cj
		test	byte ptr [ebp+14h], 20h
		jz	short loc_458B7A
		cmp	dword ptr [ebp+10h], 1
		jbe	short loc_458B7A
		mov	eax, [ebp+0Ch]
		add	eax, [ebp+10h]
		dec	eax
		push	eax		; addr1
		mov	edx, [ebp+0Ch]
		inc	edx
		push	edx		; addr0
		push	offset stru_5D6528.sorted ; sd
		call	Deletesorteddatarange
		add	esp, 0Ch
		mov	[ebp-4], eax
		jmp	short loc_458B7F
; ---------------------------------------------------------------------------

loc_458B7A:				; CODE XREF: .text:00458B53j
					; .text:00458B59j
		xor	ecx, ecx
		mov	[ebp-4], ecx

loc_458B7F:				; CODE XREF: .text:00458B4Dj
					; .text:00458B78j
		test	byte ptr [ebp+14h], 8
		jz	loc_458CFE
		cmp	dword ptr [ebp+10h], 0
		jbe	loc_458DC3

loc_458B93:				; CODE XREF: .text:00458CF3j
		push	esi
		call	loc_457A4C
		mov	edi, eax
		mov	eax, esi
		and	eax, 0FFFh
		pop	ecx
		mov	[ebp-10h], eax
		mov	eax, 1000h
		sub	eax, [ebp-10h]
		mov	ebx, [ebp+10h]
		cmp	ebx, eax
		jbe	short loc_458BB7
		mov	ebx, eax

loc_458BB7:				; CODE XREF: .text:00458BB3j
		test	edi, edi
		jz	short loc_458C12
		test	byte ptr [edi+4], 2
		jz	short loc_458BCA
		mov	dword ptr [ebp-8], 1
		jmp	short loc_458BE3
; ---------------------------------------------------------------------------

loc_458BCA:				; CODE XREF: .text:00458BBFj
		push	ebx		; n
		mov	eax, [ebp-1Ch]
		push	eax		; src
		mov	edx, [edi+8]
		add	edx, [ebp-10h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		xor	ecx, ecx
		mov	[ebp-8], ecx

loc_458BE3:				; CODE XREF: .text:00458BC8j
		test	byte ptr [edi+4], 1
		jz	loc_458C9E
		push	1000h		; nSize
		mov	eax, [edi+8]
		push	eax		; lpBuffer
		mov	edx, [edi]
		push	edx		; lpBaseAddress
		call	loc_4578F4
		add	esp, 0Ch
		test	eax, eax
		jz	loc_458C9E
		and	dword ptr [edi+4], 0FFFFFFFEh
		jmp	loc_458C9E
; ---------------------------------------------------------------------------

loc_458C12:				; CODE XREF: .text:00458BB9j
		mov	edi, ebx
		push	edi		; nSize
		mov	eax, [ebp-1Ch]
		push	eax		; lpBuffer
		push	esi		; lpBaseAddress
		call	loc_4578F4
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_458C2D
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	short loc_458C9E
; ---------------------------------------------------------------------------

loc_458C2D:				; CODE XREF: .text:00458C24j
		lea	ecx, [ebp-18h]
		push	ecx		; lpflOldProtect
		push	4		; flNewProtect
		push	1000h		; dwSize
		mov	eax, [ebp-10h]
		push	eax		; lpAddress
		mov	edx, process
		push	edx		; hProcess
		call	VirtualProtectEx
		test	eax, eax
		jnz	short loc_458C55
		mov	dword ptr [ebp-8], 1
		jmp	short loc_458C9E
; ---------------------------------------------------------------------------

loc_458C55:				; CODE XREF: .text:00458C4Aj
		push	edi		; nSize
		mov	ecx, [ebp-1Ch]
		push	ecx		; lpBuffer
		push	esi		; lpBaseAddress
		call	loc_4578F4
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_458C70
		mov	dword ptr [ebp-8], 1
		jmp	short loc_458C9E
; ---------------------------------------------------------------------------

loc_458C70:				; CODE XREF: .text:00458C65j
		lea	eax, [ebp-14h]
		push	eax		; lpflOldProtect
		mov	edx, [ebp-18h]
		push	edx		; flNewProtect
		push	1000h		; dwSize
		mov	ecx, [ebp-10h]
		push	ecx		; lpAddress
		mov	eax, process
		push	eax		; hProcess
		call	VirtualProtectEx
		test	eax, eax
		jnz	short loc_458C99
		mov	dword ptr [ebp-8], 1
		jmp	short loc_458C9E
; ---------------------------------------------------------------------------

loc_458C99:				; CODE XREF: .text:00458C8Ej
		xor	edx, edx
		mov	[ebp-8], edx

loc_458C9E:				; CODE XREF: .text:00458BE7j
					; .text:00458C03j ...
		cmp	dword ptr [ebp-8], 0
		jz	short loc_458CE4
		test	byte ptr [ebp+14h], 1
		jnz	loc_458DC3
		mov	ecx, [ebp+10h]
		push	ecx
		mov	eax, [ebp+10h]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx		; arglist
		push	offset aMemoryAtAddr_0 ; "Memory at address %08X of size %08X (%i"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aUnableToWriteT ; "Unable to write to memory"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E68C ; cond
		call	Conderror
		add	esp, 18h
		jmp	loc_458DC3
; ---------------------------------------------------------------------------

loc_458CE4:				; CODE XREF: .text:00458CA2j
		add	[ebp-1Ch], ebx
		add	esi, ebx
		sub	[ebp+10h], ebx
		add	[ebp-0Ch], ebx
		cmp	dword ptr [ebp+10h], 0
		ja	loc_458B93
		jmp	loc_458DC3
; ---------------------------------------------------------------------------

loc_458CFE:				; CODE XREF: .text:00458B83j
		cmp	dword ptr [ebp+10h], 0
		jbe	loc_458DC3

loc_458D08:				; CODE XREF: .text:00458DBDj
		mov	ecx, [ebp+14h]
		push	ecx
		push	esi
		call	loc_457AAC
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jz	short loc_458D21
		test	byte ptr [edi+4], 2
		jz	short loc_458D5E

loc_458D21:				; CODE XREF: .text:00458D19j
		test	byte ptr [ebp+14h], 1
		jnz	loc_458DC3
		mov	eax, [ebp+10h]
		push	eax
		mov	edx, [ebp+10h]
		push	edx
		mov	ecx, [ebp+0Ch]
		push	ecx		; arglist
		push	offset aMemoryAtAddr_0 ; "Memory at address %08X of size %08X (%i"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aUnableToWriteT ; "Unable to write to memory"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E68C ; cond
		call	Conderror
		add	esp, 18h
		jmp	short loc_458DC3
; ---------------------------------------------------------------------------

loc_458D5E:				; CODE XREF: .text:00458D1Fj
		mov	eax, esi
		and	eax, 0FFFh
		mov	[ebp-10h], eax
		mov	eax, 1000h
		sub	eax, [ebp-10h]
		mov	ebx, [ebp+10h]
		cmp	ebx, eax
		jbe	short loc_458D79
		mov	ebx, eax

loc_458D79:				; CODE XREF: .text:00458D75j
		push	ebx		; n
		mov	eax, [ebp-1Ch]
		push	eax		; src
		mov	edx, [edi+8]
		add	edx, [ebp-10h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		test	byte ptr [ebp+14h], 20h
		jz	short loc_458DAA
		cmp	esi, [ebp+0Ch]
		jnz	short loc_458DAA
		push	1
		push	esi
		mov	ecx, [edi+8]
		add	ecx, [ebp-10h]
		push	ecx
		call	loc_497388
		add	esp, 0Ch

loc_458DAA:				; CODE XREF: .text:00458D91j
					; .text:00458D96j
		or	dword ptr [edi+4], 1
		add	[ebp-1Ch], ebx
		add	esi, ebx
		sub	[ebp+10h], ebx
		add	[ebp-0Ch], ebx
		cmp	dword ptr [ebp+10h], 0
		ja	loc_458D08

loc_458DC3:				; CODE XREF: .text:00458B8Dj
					; .text:00458CA8j ...
		cmp	dword ptr [ebp-4], 0
		jle	short loc_458DDA
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_458DDA:				; CODE XREF: .text:00458DC7j
		mov	eax, [ebp-0Ch]

loc_458DDD:				; CODE XREF: .text:00458A67j
					; .text:00458AB3j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 207. _Findmemory
; Exported entry 520. Findmemory

; t_memory *__cdecl Findmemory(ulong _addr)
		public Findmemory
Findmemory:				; CODE XREF: .text:00412BF3p
					; .text:00413C90p ...
		push	ebp		; _Findmemory
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		mov	esi, offset dword_5E17C8
		cmp	ebx, 0FFFFFFFFh
		jnz	short loc_458E06
		xor	eax, eax
		xor	edx, edx
		mov	[esi], eax
		xor	eax, eax
		mov	dword_537044, edx
		jmp	short loc_458E64
; ---------------------------------------------------------------------------

loc_458E06:				; CODE XREF: .text:00458DF4j
		cmp	dword_586178, 0
		jz	short loc_458E14
		call	Listmemory

loc_458E14:				; CODE XREF: .text:00458E0Dj
		mov	edx, memory.sorted.version
		cmp	edx, dword_537044
		jnz	short loc_458E38
		cmp	dword ptr [esi], 0
		jz	short loc_458E38
		mov	ecx, [esi]
		cmp	ebx, [ecx]
		jb	short loc_458E38
		mov	eax, [esi]
		mov	edx, [eax]
		add	edx, [eax+4]
		cmp	ebx, edx
		jb	short loc_458E56

loc_458E38:				; CODE XREF: .text:00458E20j
					; .text:00458E25j ...
		push	0		; subaddr
		push	ebx		; _addr
		push	offset memory.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[esi], eax
		mov	ecx, memory.sorted.version
		mov	dword_537044, ecx

loc_458E56:				; CODE XREF: .text:00458E36j
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_458E64
		test	byte ptr [eax+0Bh], 8
		jz	short loc_458E64
		xor	eax, eax

loc_458E64:				; CODE XREF: .text:00458E04j
					; .text:00458E5Aj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 208. _Finddecode
; Exported entry 508. Finddecode

; _DWORD __cdecl Finddecode(ulong _addr,	ulong *psize)
		public Finddecode
Finddecode:				; CODE XREF: .text:00427B7Ep
					; .text:0042DF0Dp ...
		push	ebp		; _Finddecode
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		push	esi		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_458E9C
		cmp	dword ptr [eax+64h], 0
		jz	short loc_458E9C
		test	ebx, ebx
		jz	short loc_458E91
		mov	edx, [eax]
		add	edx, [eax+4]
		sub	edx, esi
		mov	[ebx], edx

loc_458E91:				; CODE XREF: .text:00458E86j
		mov	ecx, [eax+64h]
		add	ecx, esi
		sub	ecx, [eax]
		mov	eax, ecx
		jmp	short loc_458EA6
; ---------------------------------------------------------------------------

loc_458E9C:				; CODE XREF: .text:00458E7Cj
					; .text:00458E82j
		test	ebx, ebx
		jz	short loc_458EA4
		xor	eax, eax
		mov	[ebx], eax

loc_458EA4:				; CODE XREF: .text:00458E9Ej
		xor	eax, eax

loc_458EA6:				; CODE XREF: .text:00458E9Aj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 209. _Guardmemory
; Exported entry 620. Guardmemory

; int __cdecl Guardmemory(ulong	base, ulong size, int guard)
		public Guardmemory
Guardmemory:				; CODE XREF: .text:0044D567p
					; .text:0044FC51p ...
		push	ebp		; _Guardmemory
		mov	ebp, esp
		add	esp, 0FFFFFFE0h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		cmp	VersionInformation.dwPlatformId, 2
		jz	short loc_458EC9
		or	eax, 0FFFFFFFFh
		jmp	short loc_458F43
; ---------------------------------------------------------------------------

loc_458EC9:				; CODE XREF: .text:00458EC2j
		mov	eax, ebx
		jmp	short loc_458F3A
; ---------------------------------------------------------------------------

loc_458ECD:				; CODE XREF: .text:00458F3Fj
		push	1Ch		; dwLength
		lea	edx, [ebp-20h]
		push	edx		; lpBuffer
		push	eax		; lpAddress
		mov	ecx, process
		push	ecx		; hProcess
		call	VirtualQueryEx
		test	eax, eax
		jnz	short loc_458EE9
		or	eax, 0FFFFFFFFh
		jmp	short loc_458F43
; ---------------------------------------------------------------------------

loc_458EE9:				; CODE XREF: .text:00458EE2j
		mov	eax, [ebp-20h]
		mov	edx, eax
		add	edx, [ebp-14h]
		cmp	edi, edx
		jnb	short loc_458EFA
		sub	edi, eax
		mov	[ebp-14h], edi

loc_458EFA:				; CODE XREF: .text:00458EF3j
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_458F09
		or	dword ptr [ebp-0Ch], 100h
		jmp	short loc_458F10
; ---------------------------------------------------------------------------

loc_458F09:				; CODE XREF: .text:00458EFEj
		and	dword ptr [ebp-0Ch], 0FFFFFEFFh

loc_458F10:				; CODE XREF: .text:00458F07j
		lea	ecx, [ebp-4]
		push	ecx		; lpflOldProtect
		mov	eax, [ebp-0Ch]
		push	eax		; flNewProtect
		mov	edx, [ebp-14h]
		push	edx		; dwSize
		mov	ecx, [ebp-20h]
		push	ecx		; lpAddress
		mov	eax, process
		push	eax		; hProcess
		call	VirtualProtectEx
		test	eax, eax
		jnz	short loc_458F34
		or	eax, 0FFFFFFFFh
		jmp	short loc_458F43
; ---------------------------------------------------------------------------

loc_458F34:				; CODE XREF: .text:00458F2Dj
		mov	eax, [ebp-20h]
		add	eax, [ebp-14h]

loc_458F3A:				; CODE XREF: .text:00458ECBj
		lea	edi, [esi+ebx]
		cmp	eax, edi
		jb	short loc_458ECD
		xor	eax, eax

loc_458F43:				; CODE XREF: .text:00458EC7j
					; .text:00458EE7j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 210. _Listmemory
; Exported entry 645. Listmemory

; int __cdecl Listmemory()
		public Listmemory
Listmemory:				; CODE XREF: .text:00409F5Bp
					; .text:loc_416CCDp ...
		push	ebp		; _Listmemory
		mov	ebp, esp
		add	esp, 0FFFFFC08h
		xor	eax, eax
		mov	dword_586178, eax
		cmp	process, 0
		push	ebx
		push	esi
		push	edi
		jnz	short loc_458F70
		or	eax, 0FFFFFFFFh
		jmp	loc_459B0A
; ---------------------------------------------------------------------------

loc_458F70:				; CODE XREF: .text:00458F66j
		push	offset memory.sorted ; sd
		call	Issortedinit
		pop	ecx
		test	eax, eax
		jnz	short loc_458F87
		or	eax, 0FFFFFFFFh
		jmp	loc_459B0A
; ---------------------------------------------------------------------------

loc_458F87:				; CODE XREF: .text:00458F7Dj
		xor	edx, edx
		cmp	peblock, 0
		mov	[ebp-4], edx
		jnz	short loc_458F9F
		xor	ecx, ecx
		mov	[ebp-30h], ecx
		mov	[ebp-34h], ecx
		jmp	short loc_459009
; ---------------------------------------------------------------------------

loc_458F9F:				; CODE XREF: .text:00458F93j
		mov	eax, peblock
		push	1		; mode
		add	eax, 10h
		push	4		; size
		push	eax		; _addr
		lea	edx, [ebp-30h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_458FC6
		xor	eax, eax
		mov	[ebp-30h], eax
		mov	[ebp-34h], eax
		jmp	short loc_459009
; ---------------------------------------------------------------------------

loc_458FC6:				; CODE XREF: .text:00458FBAj
		test	dword ptr [ebp-30h], 0FFFh
		jz	short loc_458FD9
		xor	edx, edx
		mov	[ebp-30h], edx
		mov	[ebp-34h], edx
		jmp	short loc_459009
; ---------------------------------------------------------------------------

loc_458FD9:				; CODE XREF: .text:00458FCDj
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-30h]
		add	eax, 48h
		push	eax		; _addr
		lea	ecx, [ebp-34h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_458FFB
		xor	eax, eax
		mov	[ebp-34h], eax
		jmp	short loc_459009
; ---------------------------------------------------------------------------

loc_458FFB:				; CODE XREF: .text:00458FF2j
		test	dword ptr [ebp-34h], 0FFFh
		jz	short loc_459009
		xor	edx, edx
		mov	[ebp-34h], edx

loc_459009:				; CODE XREF: .text:00458F9Dj
					; .text:00458FC4j ...
		cmp	peblock, 0
		jnz	short loc_459019
		xor	ecx, ecx
		mov	[ebp-8], ecx
		jmp	short loc_459087
; ---------------------------------------------------------------------------

loc_459019:				; CODE XREF: .text:00459010j
		mov	eax, peblock
		push	1		; mode
		add	eax, 88h
		push	0Ch		; size
		push	eax		; _addr
		lea	edx, [ebp-13Ch]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_459042
		xor	ecx, ecx
		mov	[ebp-8], ecx
		jmp	short loc_459087
; ---------------------------------------------------------------------------

loc_459042:				; CODE XREF: .text:00459039j
		mov	eax, [ebp-13Ch]
		mov	[ebp-8], eax
		test	eax, eax
		jz	short loc_459058
		cmp	dword ptr [ebp-13Ch], 40h
		jbe	short loc_45905F

loc_459058:				; CODE XREF: .text:0045904Dj
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	short loc_459087
; ---------------------------------------------------------------------------

loc_45905F:				; CODE XREF: .text:00459056j
		push	1		; mode
		mov	ecx, [ebp-8]
		shl	ecx, 2
		push	ecx		; size
		mov	eax, [ebp-134h]
		push	eax		; _addr
		lea	edx, [ebp-13Ch]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_459087
		xor	ecx, ecx
		mov	[ebp-8], ecx

loc_459087:				; CODE XREF: .text:00459017j
					; .text:00459040j ...
		cmp	peblock, 0
		jnz	short loc_459097
		xor	eax, eax
		mov	[ebp-38h], eax
		jmp	short loc_4590BD
; ---------------------------------------------------------------------------

loc_459097:				; CODE XREF: .text:0045908Ej
		mov	edx, peblock
		push	1		; mode
		add	edx, 94h
		push	4		; size
		push	edx		; _addr
		lea	ecx, [ebp-38h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4590BD
		xor	eax, eax
		mov	[ebp-38h], eax

loc_4590BD:				; CODE XREF: .text:00459095j
					; .text:004590B6j
		xor	edi, edi
		jmp	short loc_459116
; ---------------------------------------------------------------------------

loc_4590C1:				; CODE XREF: .text:0045911Cj
		push	edi		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_459115
		push	1		; mode
		push	8		; size
		mov	eax, [ebx+54h]
		add	eax, 4
		push	eax		; _addr
		lea	edx, [ebp-24h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 8
		jz	short loc_459103
		xor	ecx, ecx
		mov	[ebx+70Ch], ecx
		xor	eax, eax
		mov	[ebx+710h], eax
		jmp	short loc_459115
; ---------------------------------------------------------------------------

loc_459103:				; CODE XREF: .text:004590EFj
		mov	edx, [ebp-24h]
		mov	[ebx+70Ch], edx
		mov	ecx, [ebp-20h]
		mov	[ebx+710h], ecx

loc_459115:				; CODE XREF: .text:004590D3j
					; .text:00459101j
		inc	edi

loc_459116:				; CODE XREF: .text:004590BFj
		cmp	edi, thread.sorted.n
		jl	short loc_4590C1
		xor	edi, edi
		jmp	short loc_45913E
; ---------------------------------------------------------------------------

loc_459122:				; CODE XREF: .text:00459144j
		push	edi		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_45913D
		and	dword ptr [ebx+8], 0FFFFFDFFh

loc_45913D:				; CODE XREF: .text:00459134j
		inc	edi

loc_45913E:				; CODE XREF: .text:00459120j
		cmp	edi, memory.sorted.n
		jl	short loc_459122
		xor	eax, eax
		mov	[ebp-14h], eax
		xor	edx, edx
		mov	[ebp-3D0h], edx
		xor	ecx, ecx
		mov	[ebp-3F8h], ecx

loc_45915B:				; CODE XREF: .text:00459423j
					; .text:00459A43j
		lea	esi, [ebp-3DCh]
		lea	edi, [ebp-3C0h]
		mov	ecx, 7
		rep movsd
		xor	eax, eax
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-3B4h], 0
		jb	loc_459205
		cmp	dword ptr [ebp-3A8h], 1000000h
		jnz	short loc_459205
		mov	edx, [ebp-3C0h]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-3Ch], eax
		cmp	dword ptr [ebp-3Ch], 0
		jz	short loc_459205
		mov	ecx, [ebp-3Ch]
		cmp	dword ptr [ecx+8E4h], 0
		jle	short loc_459205
		mov	eax, [ebp-3Ch]
		cmp	dword ptr [eax+8E8h], 0
		jz	short loc_459205
		xor	edi, edi
		mov	eax, [ebp-3Ch]
		mov	esi, [eax+8E8h]
		jmp	short loc_4591FA
; ---------------------------------------------------------------------------

loc_4591C7:				; CODE XREF: .text:00459203j
		mov	eax, [esi+18h]
		cmp	eax, [ebp-3C0h]
		jnz	short loc_4591F6
		jmp	short loc_4591D7
; ---------------------------------------------------------------------------

loc_4591D4:				; CODE XREF: .text:004591E9j
		add	esi, 30h

loc_4591D7:				; CODE XREF: .text:004591D2j
		test	byte ptr [esi+20h], 1
		jz	short loc_4591EB
		mov	edx, [ebp-3Ch]
		mov	ecx, [edx+8E4h]
		dec	ecx
		cmp	edi, ecx
		jl	short loc_4591D4

loc_4591EB:				; CODE XREF: .text:004591DBj
		mov	eax, [esi+18h]
		add	eax, [esi+1Ch]
		mov	[ebp-18h], eax
		jmp	short loc_459205
; ---------------------------------------------------------------------------

loc_4591F6:				; CODE XREF: .text:004591D0j
		inc	edi
		add	esi, 30h

loc_4591FA:				; CODE XREF: .text:004591C5j
		mov	edx, [ebp-3Ch]
		cmp	edi, [edx+8E4h]
		jl	short loc_4591C7

loc_459205:				; CODE XREF: .text:0045917Aj
					; .text:0045918Aj ...
		push	1Ch		; dwLength
		lea	ecx, [ebp-3DCh]
		push	ecx		; lpBuffer
		mov	eax, [ebp-14h]
		push	eax		; lpAddress
		mov	edx, process
		push	edx		; hProcess
		call	VirtualQueryEx
		test	eax, eax
		jnz	short loc_45922A
		xor	ecx, ecx
		mov	[ebp-3D0h], ecx

loc_45922A:				; CODE XREF: .text:00459220j
		cmp	dword ptr [ebp-3D0h], 0
		jz	loc_4593FF
		mov	eax, [ebp-14h]
		add	eax, [ebp-3D0h]
		push	eax		; addr1
		mov	edx, [ebp-14h]
		push	edx		; addr0
		push	offset bppage	; sd
		call	Findsorteddatarange
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4592B0
		mov	eax, [ebx]
		cmp	eax, [ebp-14h]
		jbe	short loc_45926C
		mov	edx, [ebx]
		sub	edx, [ebp-14h]
		mov	[ebp-3D0h], edx
		jmp	short loc_4592B0
; ---------------------------------------------------------------------------

loc_45926C:				; CODE XREF: .text:0045925Dj
		mov	ecx, [ebx]
		cmp	ecx, [ebp-14h]
		jnz	short loc_4592B0
		mov	eax, [ebx+10h]	; int
		cmp	eax, [ebp-3C8h]
		jz	short loc_45929D
		mov	edx, [ebp-3C8h]	; int
		push	edx		; src
		mov	ecx, [ebx+10h]	; int
		push	ecx		; arglist
		push	ebx		; int
		call	loc_4C6D94
		add	esp, 0Ch
		mov	eax, [ebp-3C8h]
		mov	[ebx+0Ch], eax
		jmp	short loc_4592A6
; ---------------------------------------------------------------------------

loc_45929D:				; CODE XREF: .text:0045927Cj
		mov	edx, [ebx+0Ch]
		mov	[ebp-3C8h], edx

loc_4592A6:				; CODE XREF: .text:0045929Bj
		mov	dword ptr [ebp-3D0h], 1000h

loc_4592B0:				; CODE XREF: .text:00459256j
					; .text:0045926Aj ...
		mov	ecx, [ebp-3D0h]
		add	[ebp-14h], ecx
		and	dword ptr [ebp-3D4h], 0FFFFFCFFh
		cmp	dword ptr [ebp-3CCh], 2000h
		jnz	short loc_4592D9
		mov	dword ptr [ebp-3D4h], 1

loc_4592D9:				; CODE XREF: .text:004592CDj
		cmp	dword ptr [ebp-3B4h], 0
		jnz	short loc_4592FA
		lea	esi, [ebp-3DCh]
		lea	edi, [ebp-3C0h]
		mov	ecx, 7
		rep movsd
		jmp	loc_459205
; ---------------------------------------------------------------------------

loc_4592FA:				; CODE XREF: .text:004592E0j
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_459361
		mov	eax, [ebp-3DCh]
		cmp	eax, [ebp-18h]
		jnb	short loc_459361
		mov	edx, [ebp-3C0h]
		add	edx, [ebp-3B4h]
		cmp	edx, [ebp-3DCh]
		jnz	short loc_459361
		cmp	dword ptr [ebp-3ACh], 4
		jz	short loc_459331
		cmp	dword ptr [ebp-3ACh], 40h
		jnz	short loc_45933D

loc_459331:				; CODE XREF: .text:00459326j
		mov	ecx, [ebp-3C8h]
		mov	[ebp-3ACh], ecx

loc_45933D:				; CODE XREF: .text:0045932Fj
		mov	eax, [ebp-3D0h]
		add	[ebp-3B4h], eax
		lea	esi, [ebp-3DCh]
		lea	edi, [ebp-3F8h]
		mov	ecx, 7
		rep movsd
		jmp	loc_459205
; ---------------------------------------------------------------------------

loc_459361:				; CODE XREF: .text:004592FEj
					; .text:00459309j ...
		mov	eax, [ebp-3C8h]
		push	eax
		mov	edx, [ebp-3ACh]
		push	edx
		call	loc_457C8C
		add	esp, 8
		mov	[ebp-2Ch], eax
		mov	ecx, [ebp-3D4h]
		push	ecx
		mov	eax, [ebp-3B8h]
		push	eax
		call	loc_457C8C
		add	esp, 8
		mov	[ebp-28h], eax
		mov	edx, [ebp-3BCh]
		cmp	edx, [ebp-3D8h]
		jnz	short loc_4593FF
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_4593FF
		cmp	dword ptr [ebp-2Ch], 0
		jz	short loc_4593FF
		mov	ecx, [ebp-3B0h]
		cmp	ecx, [ebp-3CCh]
		jnz	short loc_4593FF
		mov	eax, [ebp-3A8h]
		cmp	eax, [ebp-3C4h]
		jnz	short loc_4593FF
		mov	edx, [ebp-28h]
		lea	esi, [ebp-3DCh]
		mov	[ebp-3B8h], edx
		lea	edi, [ebp-3F8h]
		mov	ecx, [ebp-2Ch]
		mov	[ebp-3ACh], ecx
		mov	ecx, 7
		mov	eax, [ebp-3D0h]
		add	[ebp-3B4h], eax
		rep movsd
		jmp	loc_459205
; ---------------------------------------------------------------------------

loc_4593FF:				; CODE XREF: .text:00459231j
					; .text:0045939Fj ...
		cmp	dword ptr [ebp-3B4h], 0
		jz	loc_459A49
		cmp	dword_58617C, 0
		jnz	loc_459A2F
		cmp	dword ptr [ebp-3B0h], 1000h
		jnz	loc_45915B
		jmp	loc_459A2F
; ---------------------------------------------------------------------------

loc_45942E:				; CODE XREF: .text:00459A36j
		push	68h		; n
		push	0		; c
		lea	eax, [ebp-3A4h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, [ebp-3C0h]
		mov	[ebp-0Ch], edx
		mov	ecx, [ebp-0Ch]
		add	ecx, [ebp-3B4h]
		mov	[ebp-10h], ecx
		cmp	dword ptr [ebp-3B0h], 1000h
		jz	short loc_459478
		mov	eax, [ebp-39Ch]
		and	eax, 0F0000FFFh
		or	eax, 8000000h
		mov	[ebp-39Ch], eax

loc_459478:				; CODE XREF: .text:00459460j
		mov	edx, [ebp-10h]
		push	edx		; addr1
		mov	ecx, [ebp-0Ch]
		push	ecx		; addr0
		push	offset module.sorted ; sd
		call	Findsorteddatarange
		add	esp, 0Ch
		mov	[ebp-3Ch], eax
		cmp	dword ptr [ebp-3Ch], 0
		jz	loc_459714
		mov	eax, [ebp-3Ch]
		cmp	dword ptr [eax+8E4h], 0
		jle	loc_459714
		mov	edx, [ebp-3Ch]
		cmp	dword ptr [edx+8E8h], 0
		jz	loc_459714
		xor	edi, edi
		mov	eax, [ebp-3Ch]
		mov	esi, [eax+8E8h]
		jmp	loc_459705
; ---------------------------------------------------------------------------

loc_4594CA:				; CODE XREF: .text:0045970Ej
		mov	eax, [esi+18h]
		mov	[ebp-1Ch], eax
		push	esi		; src
		push	100h		; n
		lea	edx, [ebp-33Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_459531
; ---------------------------------------------------------------------------

loc_4594E9:				; CODE XREF: .text:00459543j
		mov	edx, ebx
		mov	eax, 100h
		sub	eax, ebx
		inc	edi
		add	esi, 30h
		lea	ecx, [ebp-33Ch]
		add	edx, edx
		push	offset asc_537596 ; ","
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	edx, ebx
		mov	eax, 100h
		sub	eax, ebx
		push	esi		; src
		lea	ecx, [ebp-33Ch]
		add	edx, edx
		add	edx, ecx
		push	eax		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_459531:				; CODE XREF: .text:004594E7j
		test	byte ptr [esi+20h], 1
		jz	short loc_459545
		mov	eax, [ebp-3Ch]
		mov	edx, [eax+8E4h]
		dec	edx
		cmp	edi, edx
		jl	short loc_4594E9

loc_459545:				; CODE XREF: .text:00459535j
		mov	eax, [esi+18h]
		mov	edx, [ebp-1Ch]
		add	eax, [esi+1Ch]
		cmp	edx, [ebp-0Ch]
		jbe	short loc_459566
		mov	ecx, [ebp-1Ch]
		cmp	ecx, [ebp-10h]
		jnb	short loc_459566
		mov	eax, [ebp-1Ch]
		mov	[ebp-10h], eax
		jmp	loc_459701
; ---------------------------------------------------------------------------

loc_459566:				; CODE XREF: .text:00459551j
					; .text:00459559j
		mov	edx, [ebp-1Ch]
		cmp	edx, [ebp-0Ch]
		ja	loc_459701
		cmp	eax, [ebp-0Ch]
		jbe	loc_459701
		or	dword ptr [ebp-39Ch], 10000000h
		cmp	eax, [ebp-10h]
		jnb	short loc_45958D
		mov	[ebp-10h], eax

loc_45958D:				; CODE XREF: .text:00459588j
		lea	ecx, [ebp-33Ch]
		push	ecx		; s
		call	_wcslen
		pop	ecx
		mov	ebx, eax
		cmp	ebx, 20h
		jl	short loc_4595EE
		mov	esi, 1Ch
		lea	eax, [ebp-304h]
		jmp	short loc_4595B2
; ---------------------------------------------------------------------------

loc_4595AE:				; CODE XREF: .text:004595BBj
		dec	esi
		add	eax, 0FFFFFFFEh

loc_4595B2:				; CODE XREF: .text:004595ACj
		cmp	esi, 10h
		jle	short loc_4595BD
		cmp	word ptr [eax],	2Ch
		jnz	short loc_4595AE

loc_4595BD:				; CODE XREF: .text:004595B5j
		cmp	word ptr [ebp+esi*2-33Ch], 2Ch
		jnz	short loc_4595EE
		mov	ecx, esi
		mov	edx, 100h
		sub	edx, esi
		lea	eax, [ebp-33Ch]
		add	ecx, ecx
		push	offset a____7	; "..."
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		add	ebx, esi

loc_4595EE:				; CODE XREF: .text:0045959Fj
					; .text:004595C6j
		push	ebx		; nsrc
		lea	eax, [ebp-33Ch]
		push	eax		; src
		push	20h		; ndest
		lea	edx, [ebp-384h]
		push	edx		; dest
		call	Squeezename
		add	esp, 10h
		mov	ecx, [ebp-3Ch]
		mov	eax, [ecx+8D4h]
		cmp	eax, [ebp-10h]
		jnb	short loc_45962D
		mov	edx, [ebp-3Ch]
		add	eax, [edx+8D8h]
		cmp	eax, [ebp-0Ch]
		jbe	short loc_45962D
		or	dword ptr [ebp-39Ch], 4000h

loc_45962D:				; CODE XREF: .text:00459613j
					; .text:00459621j
		mov	ecx, [ebp-3Ch]
		mov	eax, [ecx+458h]
		cmp	eax, [ebp-10h]
		jnb	short loc_459653
		mov	edx, [ebp-3Ch]
		add	eax, [edx+45Ch]
		cmp	eax, [ebp-0Ch]
		jbe	short loc_459653
		or	dword ptr [ebp-39Ch], 1000h

loc_459653:				; CODE XREF: .text:00459639j
					; .text:00459647j
		mov	ecx, [ebp-3Ch]
		mov	eax, [ecx+46Ch]
		cmp	eax, [ebp-0Ch]
		jb	short loc_459670
		cmp	eax, [ebp-10h]
		jnb	short loc_459670
		or	dword ptr [ebp-39Ch], 2000h

loc_459670:				; CODE XREF: .text:0045965Fj
					; .text:00459664j
		mov	edx, [ebp-3Ch]
		mov	eax, [edx+478h]
		cmp	eax, [ebp-0Ch]
		jb	short loc_45968D
		cmp	eax, [ebp-10h]
		jnb	short loc_45968D
		or	dword ptr [ebp-39Ch], 8000h

loc_45968D:				; CODE XREF: .text:0045967Cj
					; .text:00459681j
		mov	edx, [ebp-3Ch]
		mov	eax, [edx+470h]
		cmp	eax, [ebp-10h]
		jnb	short loc_4596B3
		mov	edx, [ebp-3Ch]
		add	eax, [edx+474h]
		cmp	eax, [ebp-0Ch]
		jbe	short loc_4596B3
		or	dword ptr [ebp-39Ch], 10000h

loc_4596B3:				; CODE XREF: .text:00459699j
					; .text:004596A7j
		mov	ecx, [ebp-3Ch]
		mov	eax, [ecx+48Ch]
		cmp	eax, [ebp-10h]
		jnb	short loc_4596D9
		mov	edx, [ebp-3Ch]
		add	eax, [edx+490h]
		cmp	eax, [ebp-0Ch]
		jbe	short loc_4596D9
		or	dword ptr [ebp-39Ch], 20000h

loc_4596D9:				; CODE XREF: .text:004596BFj
					; .text:004596CDj
		mov	ecx, [ebp-3Ch]
		mov	eax, [ecx+484h]
		cmp	eax, [ebp-10h]
		jnb	short loc_459714
		mov	edx, [ebp-3Ch]
		add	eax, [edx+488h]
		cmp	eax, [ebp-0Ch]
		jbe	short loc_459714
		or	dword ptr [ebp-39Ch], 40000h
		jmp	short loc_459714
; ---------------------------------------------------------------------------

loc_459701:				; CODE XREF: .text:00459561j
					; .text:0045956Cj ...
		inc	edi
		add	esi, 30h

loc_459705:				; CODE XREF: .text:004594C5j
		mov	ecx, [ebp-3Ch]
		cmp	edi, [ecx+8E4h]
		jl	loc_4594CA

loc_459714:				; CODE XREF: .text:00459494j
					; .text:004594A4j ...
		cmp	dword ptr [ebp-3Ch], 0
		jz	short loc_45972E
		mov	eax, [ebp-3Ch]
		mov	edx, [eax]
		cmp	edx, [ebp-0Ch]
		jnz	short loc_45972E
		or	dword ptr [ebp-39Ch], 400000h

loc_45972E:				; CODE XREF: .text:00459718j
					; .text:00459722j
		xor	edi, edi
		jmp	loc_4597F1
; ---------------------------------------------------------------------------

loc_459735:				; CODE XREF: .text:004597F7j
		push	edi		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4597F0
		mov	eax, [ebx+54h]
		cmp	eax, [ebp-0Ch]
		jbe	short loc_45975F
		cmp	eax, [ebp-10h]
		jnb	short loc_45975F
		mov	[ebp-10h], eax
		jmp	short loc_459784
; ---------------------------------------------------------------------------

loc_45975F:				; CODE XREF: .text:00459753j
					; .text:00459758j
		cmp	eax, [ebp-0Ch]
		jnz	short loc_459784
		mov	edx, [ebp-39Ch]
		and	edx, 0F0000FFFh
		or	edx, 200000h
		mov	[ebp-39Ch], edx
		mov	ecx, [ebx]
		mov	[ebp-388h], ecx

loc_459784:				; CODE XREF: .text:0045975Dj
					; .text:00459762j
		mov	eax, [ebx+710h]
		cmp	eax, [ebp-0Ch]
		jbe	short loc_459799
		cmp	eax, [ebp-10h]
		jnb	short loc_459799
		mov	[ebp-10h], eax
		jmp	short loc_4597F0
; ---------------------------------------------------------------------------

loc_459799:				; CODE XREF: .text:0045978Dj
					; .text:00459792j
		mov	edx, [ebx+710h]
		cmp	edx, [ebp-0Ch]
		ja	short loc_4597F0
		mov	ecx, [ebx+70Ch]
		cmp	ecx, [ebp-0Ch]
		jbe	short loc_4597F0
		cmp	dword ptr [ebp-3ACh], 1
		jnz	short loc_4597D0
		mov	eax, [ebp-39Ch]
		and	eax, 0F0000FFFh
		or	eax, 100000h
		mov	[ebp-39Ch], eax
		jmp	short loc_4597E8
; ---------------------------------------------------------------------------

loc_4597D0:				; CODE XREF: .text:004597B6j
		mov	edx, [ebp-39Ch]
		and	edx, 0F0000FFFh
		or	edx, 80000h
		mov	[ebp-39Ch], edx

loc_4597E8:				; CODE XREF: .text:004597CEj
		mov	ecx, [ebx]
		mov	[ebp-388h], ecx

loc_4597F0:				; CODE XREF: .text:00459747j
					; .text:00459797j ...
		inc	edi

loc_4597F1:				; CODE XREF: .text:00459730j
		cmp	edi, thread.sorted.n
		jl	loc_459735
		cmp	dword ptr [ebp-8], 0
		jle	short loc_459844
		xor	edi, edi
		lea	eax, [ebp-13Ch]
		cmp	edi, [ebp-8]
		jge	short loc_459825

loc_459810:				; CODE XREF: .text:00459823j
		mov	edx, [eax]
		cmp	edx, [ebp-0Ch]
		jb	short loc_45981C
		cmp	edx, [ebp-10h]
		jb	short loc_459825

loc_45981C:				; CODE XREF: .text:00459815j
		inc	edi
		add	eax, 4
		cmp	edi, [ebp-8]
		jl	short loc_459810

loc_459825:				; CODE XREF: .text:0045980Ej
					; .text:0045981Aj
		test	edi, edi
		jnz	short loc_459835
		or	dword ptr [ebp-39Ch], 800000h
		jmp	short loc_459844
; ---------------------------------------------------------------------------

loc_459835:				; CODE XREF: .text:00459827j
		cmp	edi, [ebp-8]
		jge	short loc_459844
		or	dword ptr [ebp-39Ch], 1000000h

loc_459844:				; CODE XREF: .text:00459801j
					; .text:00459833j ...
		mov	ecx, [ebp-0Ch]
		cmp	ecx, peblock
		jnz	short loc_459859
		mov	dword ptr [ebp-398h], 1

loc_459859:				; CODE XREF: .text:0045984Dj
		mov	eax, [ebp-0Ch]
		cmp	eax, kusershareddata
		jnz	short loc_45986E
		mov	dword ptr [ebp-398h], 2

loc_45986E:				; CODE XREF: .text:00459862j
		mov	edx, [ebp-0Ch]
		cmp	edx, [ebp-30h]
		jnz	short loc_459880
		mov	dword ptr [ebp-398h], 3

loc_459880:				; CODE XREF: .text:00459874j
		mov	ecx, [ebp-0Ch]
		cmp	ecx, [ebp-34h]
		jnz	short loc_459892
		mov	dword ptr [ebp-398h], 4

loc_459892:				; CODE XREF: .text:00459886j
		mov	eax, [ebp-38h]
		cmp	eax, [ebp-0Ch]
		jb	short loc_4598AC
		mov	edx, [ebp-38h]
		cmp	edx, [ebp-10h]
		jnb	short loc_4598AC
		mov	dword ptr [ebp-398h], 5

loc_4598AC:				; CODE XREF: .text:00459898j
					; .text:004598A0j
		mov	ecx, [ebp-0Ch]
		mov	[ebp-3A4h], ecx
		mov	eax, [ebp-10h]
		sub	eax, [ebp-0Ch]
		mov	[ebp-3A0h], eax
		or	dword ptr [ebp-39Ch], 200h
		mov	edx, [ebp-3BCh]
		mov	[ebp-394h], edx
		mov	ecx, [ebp-3B8h]
		mov	[ebp-390h], ecx
		mov	eax, [ebp-3B0h]
		or	eax, [ebp-3ACh]
		or	eax, [ebp-3A8h]
		mov	[ebp-38Ch], eax
		push	0		; subaddr
		mov	edx, [ebp-0Ch]
		push	edx		; _addr
		push	offset memory.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_45993F
		mov	eax, [ebx]
		cmp	eax, [ebp-3A4h]
		jnz	short loc_45993F
		mov	edx, [ebx+4]
		cmp	edx, [ebp-3A0h]
		jnz	short loc_45993F
		mov	ecx, [ebx+10h]
		cmp	ecx, [ebp-394h]
		jnz	short loc_45993F
		mov	eax, [ebx+14h]
		cmp	eax, [ebp-390h]
		jz	short loc_459941

loc_45993F:				; CODE XREF: .text:00459912j
					; .text:0045991Cj ...
		xor	ebx, ebx

loc_459941:				; CODE XREF: .text:0045993Dj
		test	ebx, ebx
		jz	short loc_459988
		mov	eax, [ebx+8]
		and	eax, 0C2000100h
		or	eax, [ebp-39Ch]
		mov	[ebx+8], eax
		mov	edx, [ebp-398h]
		mov	[ebx+0Ch], edx
		lea	edx, [ebp-384h]
		mov	ecx, [ebp-38Ch]
		mov	[ebx+18h], ecx
		lea	ecx, [ebx+20h]
		mov	eax, [ebp-388h]
		mov	[ebx+1Ch], eax
		push	edx		; src
		push	20h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4599C1
; ---------------------------------------------------------------------------

loc_459988:				; CODE XREF: .text:00459943j
		test	byte ptr [ebp-399h], 8
		jnz	short loc_4599A4
		cmp	dword_5D5610, 0
		jnz	short loc_4599A4
		or	dword ptr [ebp-39Ch], 100h

loc_4599A4:				; CODE XREF: .text:0045998Fj
					; .text:00459998j
		lea	eax, [ebp-3A4h]
		push	eax		; item
		push	offset memory.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		mov	ebx, eax
		mov	dword ptr [ebp-4], 1

loc_4599C1:				; CODE XREF: .text:00459986j
		test	ebx, ebx
		jz	short loc_4599D6
		test	byte ptr [ebx+0Ah], 20h
		jz	short loc_4599D6
		push	0
		push	ebx
		call	loc_46FED4
		add	esp, 8

loc_4599D6:				; CODE XREF: .text:004599C3j
					; .text:004599C9j
		test	ebx, ebx
		jz	short loc_4599EB
		cmp	dword ptr [ebx+0Ch], 3
		jnz	short loc_4599EB
		push	0
		push	ebx
		call	loc_46FFE4
		add	esp, 8

loc_4599EB:				; CODE XREF: .text:004599D8j
					; .text:004599DEj
		mov	eax, [ebp-10h]
		mov	[ebp-3C0h], eax
		mov	edx, [ebp-3A0h]
		sub	[ebp-3B4h], edx
		mov	ecx, [ebp-3C0h]
		cmp	ecx, [ebp-3F8h]
		jnz	short loc_459A2F
		mov	eax, [ebp-3B4h]
		cmp	eax, [ebp-3ECh]
		jnz	short loc_459A2F
		lea	esi, [ebp-3F8h]
		lea	edi, [ebp-3C0h]
		mov	ecx, 7
		rep movsd

loc_459A2F:				; CODE XREF: .text:00459413j
					; .text:00459429j ...
		cmp	dword ptr [ebp-3B4h], 0
		jnz	loc_45942E
		cmp	dword ptr [ebp-3D0h], 0
		jnz	loc_45915B

loc_459A49:				; CODE XREF: .text:00459406j
		cmp	_imp__NtSystemDebugControl, 0
		jz	short loc_459AC4
		cmp	VersionInformation.dwPlatformId, 2
		jnz	short loc_459AC4
		cmp	VersionInformation.dwMajorVersion, 5
		ja	short loc_459A76
		cmp	VersionInformation.dwMajorVersion, 5
		jnz	short loc_459AC4
		cmp	VersionInformation.dwMinorVersion, 0
		jbe	short loc_459AC4

loc_459A76:				; CODE XREF: .text:00459A62j
		push	68h		; n
		push	0		; c
		lea	eax, [ebp-3A4h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	ecx, 0FFFF0000h
		sub	ecx, userspacelimit
		mov	edx, userspacelimit
		mov	[ebp-3A4h], edx
		mov	[ebp-3A0h], ecx
		mov	dword ptr [ebp-39Ch], 200h
		lea	eax, [ebp-3A4h]
		push	eax		; item
		push	offset memory.sorted ; sd
		call	Addsorteddata
		add	esp, 8

loc_459AC4:				; CODE XREF: .text:00459A50j
					; .text:00459A59j ...
		push	offset memory.sorted ; sd
		call	Deletenonconfirmedsorteddata
		pop	ecx
		add	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	short loc_459AE9
		push	0		; lp
		push	0		; wp
		push	486h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_459AE9:				; CODE XREF: .text:00459AD6j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_459B08
		cmp	memory.hw, 0
		jz	short loc_459B08
		push	0		; bErase
		push	0		; lpRect
		mov	edx, memory.hw
		push	edx		; hWnd
		call	InvalidateRect

loc_459B08:				; CODE XREF: .text:00459AEDj
					; .text:00459AF6j
		xor	eax, eax

loc_459B0A:				; CODE XREF: .text:00458F6Bj
					; .text:00458F82j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 211. _Copymemoryhex
; Exported entry 436. Copymemoryhex

; HGLOBAL __cdecl Copymemoryhex(ulong _addr, ulong size)
		public Copymemoryhex
Copymemoryhex:				; _Copymemoryhex
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_459B2B
		test	edi, edi
		jnz	short loc_459B32

loc_459B2B:				; CODE XREF: .text:00459B25j
		xor	eax, eax
		jmp	loc_459CDC
; ---------------------------------------------------------------------------

loc_459B32:				; CODE XREF: .text:00459B29j
		lea	ebx, [edi+edi*2]
		lea	eax, [edi+0Fh]
		shr	eax, 4
		add	ebx, eax
		inc	ebx
		mov	edx, ebx
		add	edx, edx
		push	edx		; dwBytes
		push	2002h		; uFlags
		call	GlobalAlloc
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_459B85
		add	ebx, ebx
		push	ebx		; arglist
		push	offset aUnableToAllo_0 ; "Unable to allocate %li. bytes	of memory"
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aLowMemory_3 ; "Low memory"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E66C ; cond
		call	Conderror
		add	esp, 10h
		xor	eax, eax
		jmp	loc_459CDC
; ---------------------------------------------------------------------------

loc_459B85:				; CODE XREF: .text:00459B54j
		mov	edx, [ebp-10h]
		push	edx		; hMem
		call	GlobalLock
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_459BCF
		add	ebx, ebx
		push	ebx		; arglist
		push	offset aUnableToAllo_0 ; "Unable to allocate %li. bytes	of memory"
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aLowMemory_3 ; "Low memory"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E66C ; cond
		call	Conderror
		add	esp, 10h
		mov	ecx, [ebp-10h]
		push	ecx		; hMem
		call	GlobalFree
		xor	eax, eax
		jmp	loc_459CDC
; ---------------------------------------------------------------------------

loc_459BCF:				; CODE XREF: .text:00459B95j
		push	0		; flags
		push	edi		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_459BF3
		mov	edx, [ebp-10h]
		push	edx		; hMem
		call	GlobalFree
		xor	eax, eax
		jmp	loc_459CDC
; ---------------------------------------------------------------------------

loc_459BF3:				; CODE XREF: .text:00459BE1j
		push	0		; mode
		push	edi		; size
		push	esi		; _addr
		mov	edx, [ebp-8]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	edi, eax
		jz	short loc_459C21
		mov	ecx, [ebp-10h]
		push	ecx		; hMem
		call	GlobalFree
		mov	eax, [ebp-8]
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		jmp	loc_459CDC
; ---------------------------------------------------------------------------

loc_459C21:				; CODE XREF: .text:00459C05j
		xor	ecx, ecx
		xor	ebx, ebx
		mov	eax, [ebp-0Ch]
		test	edi, edi
		jbe	short loc_459CAB

loc_459C2C:				; CODE XREF: .text:00459CA9j
		test	ecx, ecx
		jle	short loc_459C39
		mov	word ptr [eax],	20h
		inc	ebx
		add	eax, 2

loc_459C39:				; CODE XREF: .text:00459C2Ej
		mov	edx, [ebp-8]
		movzx	edx, byte ptr [edx]
		mov	[ebp-4], edx
		inc	dword ptr [ebp-8]
		mov	edx, [ebp-4]
		sar	edx, 4
		and	edx, 0Fh
		cmp	edx, 0Ah
		jge	short loc_459C5B
		mov	esi, edx
		add	si, 30h
		jmp	short loc_459C61
; ---------------------------------------------------------------------------

loc_459C5B:				; CODE XREF: .text:00459C51j
		mov	esi, edx
		add	si, 37h

loc_459C61:				; CODE XREF: .text:00459C59j
		mov	[eax], si
		inc	ebx
		add	eax, 2
		mov	edx, [ebp-4]
		and	edx, 0Fh
		cmp	edx, 0Ah
		jge	short loc_459C7B
		mov	esi, edx
		add	si, 30h
		jmp	short loc_459C81
; ---------------------------------------------------------------------------

loc_459C7B:				; CODE XREF: .text:00459C71j
		mov	esi, edx
		add	si, 37h

loc_459C81:				; CODE XREF: .text:00459C79j
		mov	[eax], si
		inc	ebx
		add	eax, 2
		inc	ecx
		dec	edi
		cmp	ecx, 10h
		jz	short loc_459C93
		test	edi, edi
		jnz	short loc_459CA7

loc_459C93:				; CODE XREF: .text:00459C8Dj
		mov	word ptr [eax],	0Dh
		add	eax, 2
		inc	ebx
		mov	word ptr [eax],	0Ah
		add	eax, 2
		inc	ebx
		xor	ecx, ecx

loc_459CA7:				; CODE XREF: .text:00459C91j
		test	edi, edi
		ja	short loc_459C2C

loc_459CAB:				; CODE XREF: .text:00459C2Aj
		mov	eax, [ebp-0Ch]
		mov	word ptr [eax+ebx*2], 0
		inc	ebx
		mov	edx, [ebp-8]
		push	edx		; data
		call	Memfree
		pop	ecx
		mov	eax, [ebp-10h]
		push	eax		; hMem
		call	GlobalUnlock
		push	2		; uFlags
		add	ebx, ebx
		push	ebx		; dwBytes
		mov	edx, [ebp-10h]
		push	edx		; hMem
		call	GlobalReAlloc
		mov	[ebp-10h], eax
		mov	eax, [ebp-10h]

loc_459CDC:				; CODE XREF: .text:00459B2Dj
					; .text:00459B80j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 212. _Pastememoryhex
; Exported entry 664. Pastememoryhex

; int __cdecl Pastememoryhex(ulong _addr, ulong size, int ensurebackup, int removeanalysis)
		public Pastememoryhex
Pastememoryhex:				; _Pastememoryhex
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_459CFB
		or	eax, 0FFFFFFFFh
		jmp	loc_459F36
; ---------------------------------------------------------------------------

loc_459CFB:				; CODE XREF: .text:00459CF1j
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_459D1A
		mov	eax, [ebx]
		mov	edx, [ebp+8]
		add	edx, [ebp+0Ch]
		add	eax, [ebx+4]
		cmp	eax, edx
		jnb	short loc_459D22

loc_459D1A:				; CODE XREF: .text:00459D09j
		or	eax, 0FFFFFFFFh
		jmp	loc_459F36
; ---------------------------------------------------------------------------

loc_459D22:				; CODE XREF: .text:00459D18j
		mov	edx, hwollymain
		push	edx		; hWndNewOwner
		call	OpenClipboard
		test	eax, eax
		jnz	short loc_459D3A
		or	eax, 0FFFFFFFFh
		jmp	loc_459F36
; ---------------------------------------------------------------------------

loc_459D3A:				; CODE XREF: .text:00459D30j
		push	1		; uFormat
		call	GetClipboardData
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_459D57
		call	CloseClipboard
		or	eax, 0FFFFFFFFh
		jmp	loc_459F36
; ---------------------------------------------------------------------------

loc_459D57:				; CODE XREF: .text:00459D48j
		mov	edx, [ebp-10h]
		push	edx		; hMem
		call	GlobalLock
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_459D76
		call	CloseClipboard
		or	eax, 0FFFFFFFFh
		jmp	loc_459F36
; ---------------------------------------------------------------------------

loc_459D76:				; CODE XREF: .text:00459D67j
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_459DD5
		cmp	dword ptr [ebx+60h], 0
		jnz	short loc_459DD5
		mov	edx, [ebx]	; int
		cmp	edx, userspacelimit
		jz	short loc_459DD5
		push	1		; flags
		mov	ecx, [ebx+4]	; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_459DD5
		push	1		; mode
		mov	eax, [ebx+4]
		push	eax		; size
		mov	edx, [ebx]
		push	edx		; _addr
		push	esi		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [ebx+4]
		jz	short loc_459DC0
		push	esi		; data
		call	Memfree
		pop	ecx
		jmp	short loc_459DD5
; ---------------------------------------------------------------------------

loc_459DC0:				; CODE XREF: .text:00459DB5j
		mov	[ebx+60h], esi
		push	0		; lp
		mov	ecx, [ebx]
		push	ecx		; wp
		push	487h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_459DD5:				; CODE XREF: .text:00459D7Aj
					; .text:00459D80j ...
		push	0		; flags
		mov	eax, [ebp+0Ch]	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jnz	short loc_459DFF
		mov	eax, [ebp-10h]
		push	eax		; hMem
		call	GlobalUnlock
		call	CloseClipboard
		or	eax, 0FFFFFFFFh
		jmp	loc_459F36
; ---------------------------------------------------------------------------

loc_459DFF:				; CODE XREF: .text:00459DE7j
		push	0		; mode
		mov	edx, [ebp+0Ch]
		push	edx		; size
		mov	ecx, [ebp+8]
		push	ecx		; _addr
		push	edi		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [ebp+0Ch]
		jz	short loc_459E34
		push	edi		; data
		call	Memfree
		pop	ecx
		mov	eax, [ebp-10h]
		push	eax		; hMem
		call	GlobalUnlock
		call	CloseClipboard
		or	eax, 0FFFFFFFFh
		jmp	loc_459F36
; ---------------------------------------------------------------------------

loc_459E34:				; CODE XREF: .text:00459E15j
		mov	edx, [ebp-10h]
		push	edx		; hMem
		call	GlobalSize
		mov	[ebp-8], eax
		xor	ecx, ecx
		mov	[ebp-4], ecx
		xor	esi, esi
		mov	eax, [ebp-0Ch]
		mov	edx, eax
		mov	[ebp-14h], edx
		jmp	short loc_459EBE
; ---------------------------------------------------------------------------

loc_459E51:				; CODE XREF: .text:00459ECDj
		mov	ecx, [ebp-14h]
		xor	ebx, ebx
		mov	bl, [ecx]
		cmp	ebx, 3Fh
		jnz	short loc_459E60
		inc	esi
		jmp	short loc_459EB8
; ---------------------------------------------------------------------------

loc_459E60:				; CODE XREF: .text:00459E5Bj
		push	ebx		; c
		call	_isdigit
		pop	ecx
		test	eax, eax
		jz	short loc_459E70
		sub	ebx, 30h
		jmp	short loc_459E8C
; ---------------------------------------------------------------------------

loc_459E70:				; CODE XREF: .text:00459E69j
		cmp	ebx, 41h
		jl	short loc_459E7F
		cmp	ebx, 46h
		jg	short loc_459E7F
		add	ebx, 0FFFFFFC9h
		jmp	short loc_459E8C
; ---------------------------------------------------------------------------

loc_459E7F:				; CODE XREF: .text:00459E73j
					; .text:00459E78j
		cmp	ebx, 61h
		jl	short loc_459EB8
		cmp	ebx, 66h
		jg	short loc_459EB8
		add	ebx, 0FFFFFFA9h

loc_459E8C:				; CODE XREF: .text:00459E6Ej
					; .text:00459E7Dj
		test	esi, 1
		jnz	short loc_459EA8
		mov	eax, esi
		shr	eax, 1
		shl	ebx, 4
		mov	dl, [edi+eax]
		and	dl, 0Fh
		or	dl, bl
		mov	[edi+eax], dl
		jmp	short loc_459EB7
; ---------------------------------------------------------------------------

loc_459EA8:				; CODE XREF: .text:00459E92j
		mov	eax, esi
		shr	eax, 1
		mov	dl, [edi+eax]
		and	dl, 0F0h
		or	dl, bl
		mov	[edi+eax], dl

loc_459EB7:				; CODE XREF: .text:00459EA6j
		inc	esi

loc_459EB8:				; CODE XREF: .text:00459E5Ej
					; .text:00459E82j ...
		inc	dword ptr [ebp-4]
		inc	dword ptr [ebp-14h]

loc_459EBE:				; CODE XREF: .text:00459E4Fj
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-8]
		jge	short loc_459ECF
		mov	eax, [ebp+0Ch]
		add	eax, eax
		cmp	esi, eax
		jb	short loc_459E51

loc_459ECF:				; CODE XREF: .text:00459EC4j
		call	Suspendallthreads
		push	20h		; mode
		mov	edx, [ebp+0Ch]
		push	edx		; size
		mov	ecx, [ebp+8]
		push	ecx		; _addr
		push	edi		; buf
		call	Writememory
		add	esp, 10h
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_459EFF
		push	0		; keephittrace
		mov	eax, [ebp+0Ch]
		push	eax		; size
		mov	edx, [ebp+8]
		push	edx		; base
		call	Removeanalysis
		add	esp, 0Ch

loc_459EFF:				; CODE XREF: .text:00459EEBj
		mov	ecx, [ebp+0Ch]
		push	ecx
		mov	eax, [ebp+8]
		push	eax
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		push	eax
		call	loc_4D6D14
		add	esp, 0Ch
		call	Resumeallthreads
		push	edi		; data
		call	Memfree
		pop	ecx
		mov	ecx, [ebp-10h]
		push	ecx		; hMem
		call	GlobalUnlock
		call	CloseClipboard
		xor	eax, eax

loc_459F36:				; CODE XREF: .text:00459CF6j
					; .text:00459D1Dj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 213. _Editmemory
; Exported entry 482. Editmemory

; int __cdecl Editmemory(HWND hparent, ulong _addr, ulong size, int ensurebackup, int removeanalysis, int x, int	y, int font)
		public Editmemory
Editmemory:				; _Editmemory
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF1F8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		test	ebx, ebx
		jnz	short loc_459F5B
		or	eax, 0FFFFFFFFh
		jmp	loc_45A161
; ---------------------------------------------------------------------------

loc_459F5B:				; CODE XREF: .text:00459F51j
		cmp	ebx, 400h
		jbe	short loc_459F68
		mov	ebx, 400h

loc_459F68:				; CODE XREF: .text:00459F61j
		mov	eax, [ebp+0Ch]
		push	eax		; _addr
		call	Findmemory
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jz	short loc_459F86
		mov	eax, [esi]
		mov	edx, [ebp+0Ch]
		add	eax, [esi+4]
		add	edx, ebx
		cmp	eax, edx
		jnb	short loc_459F8E

loc_459F86:				; CODE XREF: .text:00459F76j
		or	eax, 0FFFFFFFFh
		jmp	loc_45A161
; ---------------------------------------------------------------------------

loc_459F8E:				; CODE XREF: .text:00459F84j
		push	0		; mode
		push	ebx		; size
		mov	edx, [ebp+0Ch]
		push	edx		; _addr
		lea	ecx, [ebp-600h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	ebx, eax
		jz	short loc_459FB0
		or	eax, 0FFFFFFFFh
		jmp	loc_45A161
; ---------------------------------------------------------------------------

loc_459FB0:				; CODE XREF: .text:00459FA6j
		push	offset aEditDataAtAddr ; "Edit data at address "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-200h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, 100h
		sub	ecx, eax
		lea	edx, [ebp-200h]
		add	eax, eax
		push	0		; comment
		push	ecx		; nsymb
		add	eax, edx
		push	eax		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [ebp+0Ch]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	[ebp-0E04h], ebx
		mov	[ebp-0E08h], ebx
		lea	ecx, [ebp-600h]
		push	ebx		; n
		push	ecx		; src
		lea	eax, [ebp-0E00h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		lea	edx, [ebp-0A00h]
		push	ebx		; n
		push	0FFh		; c
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		push	100h		; mode
		mov	ecx, [ebp+24h]
		push	ecx		; fi
		lea	ecx, [ebp-0E08h]
		mov	eax, [ebp+20h]
		push	eax		; y
		lea	eax, [ebp-200h]
		mov	edx, [ebp+1Ch]
		push	edx		; x
		push	0		; letter
		push	ecx		; hstr
		push	eax		; _title
		mov	edx, [ebp+8]
		push	edx		; hparent
		call	Binaryedit
		add	esp, 20h
		test	eax, eax
		jle	short loc_45A06A
		cmp	dword ptr [ebp-0E08h], 0
		jnz	short loc_45A071

loc_45A06A:				; CODE XREF: .text:0045A05Fj
		xor	eax, eax
		jmp	loc_45A161
; ---------------------------------------------------------------------------

loc_45A071:				; CODE XREF: .text:0045A068j
		xor	edi, edi
		lea	eax, [ebp-0A00h]
		lea	edx, [ebp-600h]
		jmp	short loc_45A096
; ---------------------------------------------------------------------------

loc_45A081:				; CODE XREF: .text:0045A09Cj
		mov	cl, [eax]
		mov	bl, [eax-400h]
		not	cl
		and	bl, [eax]
		and	cl, [edx]
		or	cl, bl		; int
		inc	eax
		mov	[edx], cl
		inc	edi
		inc	edx

loc_45A096:				; CODE XREF: .text:0045A07Fj
		cmp	edi, [ebp-0E08h]
		jb	short loc_45A081
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_45A0FD
		cmp	dword ptr [esi+60h], 0
		jnz	short loc_45A0FD
		mov	eax, [esi]	; int
		cmp	eax, userspacelimit
		jz	short loc_45A0FD
		push	1		; flags
		mov	edx, [esi+4]	; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_45A0FD
		push	1		; mode
		mov	eax, [esi+4]
		push	eax		; size
		mov	edx, [esi]
		push	edx		; _addr
		push	ebx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [esi+4]
		jz	short loc_45A0E8
		push	ebx		; data
		call	Memfree
		pop	ecx
		jmp	short loc_45A0FD
; ---------------------------------------------------------------------------

loc_45A0E8:				; CODE XREF: .text:0045A0DDj
		mov	[esi+60h], ebx
		push	0		; lp
		mov	ecx, [esi]
		push	ecx		; wp
		push	487h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_45A0FD:				; CODE XREF: .text:0045A0A2j
					; .text:0045A0A8j ...
		call	Suspendallthreads
		push	20h		; mode
		mov	eax, [ebp-0E08h]
		push	eax		; size
		mov	edx, [ebp+0Ch]
		push	edx		; _addr
		lea	ecx, [ebp-600h]
		push	ecx		; buf
		call	Writememory
		add	esp, 10h
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_45A139
		push	0		; keephittrace
		mov	eax, [ebp-0E08h]
		push	eax		; size
		mov	edx, [ebp+0Ch]
		push	edx		; base
		call	Removeanalysis
		add	esp, 0Ch

loc_45A139:				; CODE XREF: .text:0045A122j
		mov	ecx, [ebp-0E08h]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		push	eax
		call	loc_4D6D14
		add	esp, 0Ch
		call	Resumeallthreads
		mov	eax, 1

loc_45A161:				; CODE XREF: .text:00459F56j
					; .text:00459F89j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
