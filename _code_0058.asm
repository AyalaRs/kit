.code

; Exported entry 218. _Removeanalysis
; Exported entry 691. Removeanalysis

; int __cdecl Removeanalysis(ulong base, ulong size, int keephittrace)
		public Removeanalysis
Removeanalysis:				; CODE XREF: .text:0042DFD9p
					; .text:00459EF7p ...
		push	ebp		; _Removeanalysis
		mov	ebp, esp
		add	esp, 0FFFFFF68h
		cmp	dword_586178, 0
		push	ebx
		push	esi
		push	edi
		jz	short loc_46E79E
		call	Listmemory

loc_46E79E:				; CODE XREF: .text:0046E797j
		cmp	dword_5CBB98, 0
		jnz	short loc_46E7B5
		cmp	dword_5CBBAC, 0
		jnz	short loc_46E7B5
		xor	eax, eax
		mov	[ebp+10h], eax

loc_46E7B5:				; CODE XREF: .text:0046E7A5j
					; .text:0046E7AEj
		xor	esi, esi
		jmp	loc_46E8E7
; ---------------------------------------------------------------------------

loc_46E7BC:				; CODE XREF: .text:0046E8EDj
		push	esi		; index
		push	offset module.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_46E8E6
		mov	eax, [ebx]
		mov	edx, eax
		add	edx, [ebx+4]
		cmp	edx, [ebp+8]
		jbe	loc_46E8E6
		mov	ecx, [ebp+8]
		add	ecx, [ebp+0Ch]
		cmp	eax, ecx
		jnb	loc_46E8E6
		cmp	eax, [ebp+8]
		jbe	short loc_46E7FB
		mov	eax, ebx
		jmp	short loc_46E7FE
; ---------------------------------------------------------------------------

loc_46E7FB:				; CODE XREF: .text:0046E7F5j
		lea	eax, [ebp+8]

loc_46E7FE:				; CODE XREF: .text:0046E7F9j
		mov	edx, [eax]
		mov	[ebp-8], edx
		mov	ecx, [ebp+8]
		add	ecx, [ebp+0Ch]
		mov	[ebp-0Ch], ecx
		mov	eax, [ebx]
		add	eax, [ebx+4]
		mov	[ebp-10h], eax
		mov	edx, [ebp-10h]
		cmp	edx, [ebp-0Ch]
		jnb	short loc_46E821
		lea	ecx, [ebp-10h]
		jmp	short loc_46E824
; ---------------------------------------------------------------------------

loc_46E821:				; CODE XREF: .text:0046E81Aj
		lea	ecx, [ebp-0Ch]

loc_46E824:				; CODE XREF: .text:0046E81Fj
		mov	edi, [ecx]
		mov	eax, [ebx]
		cmp	eax, [ebp-8]
		jnz	short loc_46E834
		add	eax, [ebx+4]
		cmp	edi, eax
		jz	short loc_46E838

loc_46E834:				; CODE XREF: .text:0046E82Bj
		xor	edx, edx
		jmp	short loc_46E83D
; ---------------------------------------------------------------------------

loc_46E838:				; CODE XREF: .text:0046E832j
		mov	edx, 1

loc_46E83D:				; CODE XREF: .text:0046E836j
		mov	[ebp-4], edx
		cmp	dword ptr [ebp-4], 0
		jz	short loc_46E855
		lea	ecx, [ebx+8F4h]
		push	ecx
		call	loc_470FCC
		pop	ecx
		jmp	short loc_46E869
; ---------------------------------------------------------------------------

loc_46E855:				; CODE XREF: .text:0046E844j
		push	edi
		mov	eax, [ebp-8]
		push	eax
		lea	edx, [ebx+8F4h]
		push	edx
		call	loc_471964
		add	esp, 0Ch

loc_46E869:				; CODE XREF: .text:0046E853j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_46E88B
		lea	ecx, [ebx+920h]
		push	ecx		; nd
		call	Destroynesteddata
		pop	ecx
		lea	eax, [ebx+938h]
		push	eax		; nd
		call	Destroynesteddata
		pop	ecx
		jmp	short loc_46E8B3
; ---------------------------------------------------------------------------

loc_46E88B:				; CODE XREF: .text:0046E86Dj
		push	edi		; addr1
		mov	edx, [ebp-8]
		push	edx		; addr0
		lea	ecx, [ebx+920h]
		push	ecx		; nd
		call	Deletenestedrange
		add	esp, 0Ch
		push	edi		; addr1
		mov	eax, [ebp-8]
		push	eax		; addr0
		lea	edx, [ebx+938h]
		push	edx		; nd
		call	Deletenestedrange
		add	esp, 0Ch

loc_46E8B3:				; CODE XREF: .text:0046E889j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_46E8C8
		lea	ecx, [ebx+950h]
		push	ecx		; pdat
		call	Destroysimpledata
		pop	ecx
		jmp	short loc_46E8DC
; ---------------------------------------------------------------------------

loc_46E8C8:				; CODE XREF: .text:0046E8B7j
		push	edi		; addr1
		mov	eax, [ebp-8]
		push	eax		; addr0
		lea	edx, [ebx+950h]
		push	edx		; pdat
		call	Deletesimpledatarange
		add	esp, 0Ch

loc_46E8DC:				; CODE XREF: .text:0046E8C6j
		mov	dword ptr [ebx+9A8h], 1

loc_46E8E6:				; CODE XREF: .text:0046E7CEj
					; .text:0046E7DEj ...
		inc	esi

loc_46E8E7:				; CODE XREF: .text:0046E7B7j
		cmp	esi, module.sorted.n
		jl	loc_46E7BC
		xor	esi, esi
		jmp	loc_46E9DC
; ---------------------------------------------------------------------------

loc_46E8FA:				; CODE XREF: .text:0046E9E2j
		push	esi		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_46E9DB
		test	byte ptr [ebx+0Bh], 8
		jnz	loc_46E9DB
		mov	eax, [ebx]
		mov	edx, eax
		add	edx, [ebx+4]
		cmp	edx, [ebp+8]
		jbe	loc_46E9DB
		mov	ecx, [ebp+8]
		add	ecx, [ebp+0Ch]
		cmp	eax, ecx
		jnb	loc_46E9DB
		cmp	dword ptr [ebx+64h], 0
		jz	loc_46E9DB
		mov	eax, [ebx]
		cmp	eax, [ebp+8]
		jb	short loc_46E96F
		mov	edx, [ebp+8]
		add	edx, [ebp+0Ch]
		add	eax, [ebx+4]
		cmp	eax, edx
		ja	short loc_46E96F
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_46E96F
		mov	ecx, [ebx+64h]
		push	ecx		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		mov	[ebx+64h], eax
		jmp	short loc_46E9DB
; ---------------------------------------------------------------------------

loc_46E96F:				; CODE XREF: .text:0046E949j
					; .text:0046E956j ...
		mov	edx, [ebx]
		cmp	edx, [ebp+8]
		jbe	short loc_46E97A
		mov	ecx, ebx
		jmp	short loc_46E97D
; ---------------------------------------------------------------------------

loc_46E97A:				; CODE XREF: .text:0046E974j
		lea	ecx, [ebp+8]

loc_46E97D:				; CODE XREF: .text:0046E978j
		mov	eax, [ecx]
		mov	[ebp-8], eax
		mov	edx, [ebp+8]
		add	edx, [ebp+0Ch]
		mov	[ebp-14h], edx
		mov	eax, [ebx]
		add	eax, [ebx+4]
		mov	[ebp-18h], eax
		mov	edx, [ebp-18h]
		cmp	edx, [ebp-14h]
		jnb	short loc_46E9A0
		lea	ecx, [ebp-18h]
		jmp	short loc_46E9A3
; ---------------------------------------------------------------------------

loc_46E9A0:				; CODE XREF: .text:0046E999j
		lea	ecx, [ebp-14h]

loc_46E9A3:				; CODE XREF: .text:0046E99Ej
		cmp	dword ptr [ebp+10h], 0
		mov	edi, [ecx]
		jnz	short loc_46E9C4
		sub	edi, [ebp-8]
		push	edi		; n
		push	0		; c
		mov	eax, [ebx+64h]
		add	eax, [ebp-8]
		sub	eax, [ebx]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		jmp	short loc_46E9DB
; ---------------------------------------------------------------------------

loc_46E9C4:				; CODE XREF: .text:0046E9A9j
		mov	eax, [ebp-8]
		sub	eax, [ebx]
		jmp	short loc_46E9D3
; ---------------------------------------------------------------------------

loc_46E9CB:				; CODE XREF: .text:0046E9D9j
		mov	edx, [ebx+64h]
		and	byte ptr [edx+eax], 80h
		inc	eax

loc_46E9D3:				; CODE XREF: .text:0046E9C9j
		mov	ecx, edi
		sub	ecx, [ebx]
		cmp	eax, ecx
		jb	short loc_46E9CB

loc_46E9DB:				; CODE XREF: .text:0046E90Cj
					; .text:0046E916j ...
		inc	esi

loc_46E9DC:				; CODE XREF: .text:0046E8F5j
		cmp	esi, memory.sorted.n
		jl	loc_46E8FA
		mov	dword ptr [ebp-98h], 2Bh
		mov	dword ptr [ebp-94h], 2Ch
		mov	dword ptr [ebp-90h], 31h
		mov	dword ptr [ebp-8Ch], 32h
		mov	dword ptr [ebp-88h], 33h
		mov	dword ptr [ebp-84h], 34h
		mov	dword ptr [ebp-80h], 35h
		mov	dword ptr [ebp-7Ch], 36h
		mov	dword ptr [ebp-78h], 40h
		mov	dword ptr [ebp-74h], 41h
		push	0Ah		; n
		lea	eax, [ebp-98h]
		push	eax		; list
		mov	edx, [ebp+8]
		add	edx, [ebp+0Ch]
		push	edx		; addr1
		mov	ecx, [ebp+8]
		push	ecx		; addr0
		call	Deletedatarangelist
		add	esp, 10h
		xor	esi, esi
		jmp	short loc_46EA7B
; ---------------------------------------------------------------------------

loc_46EA60:				; CODE XREF: .text:0046EA81j
		mov	eax, [ebp+0Ch]
		mov	ecx, g_pPluginnotify
		push	eax
		mov	edx, [ebp+8]
		push	edx
		push	0
		push	10h
		mov	eax, [ecx+esi*4]
		call	eax
		add	esp, 10h
		inc	esi

loc_46EA7B:				; CODE XREF: .text:0046EA5Ej
		cmp	esi, g_nPluginnotify
		jl	short loc_46EA60
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 219. _Getpackednetint
; Exported entry 590. Getpackednetint

; signed int __cdecl Getpackednetint(uchar *code, ulong	size, ulong *value)
		public Getpackednetint
Getpackednetint:			; CODE XREF: .text:0045E151p
					; .text:0045F2E8p ...
		push	ebp		; _Getpackednetint
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ecx, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		mov	edx, [ebp+8]
		test	ebx, ebx
		jz	short loc_46EAA2
		test	ecx, ecx
		jnz	short loc_46EAA9

loc_46EAA2:				; CODE XREF: .text:0046EA9Cj
		xor	eax, eax
		jmp	loc_46EB3E
; ---------------------------------------------------------------------------

loc_46EAA9:				; CODE XREF: .text:0046EAA0j
		xor	eax, eax
		mov	al, [edx]
		cmp	eax, 0FFh
		jnz	short loc_46EABF
		xor	edx, edx
		mov	eax, 1
		mov	[ecx], edx
		jmp	short loc_46EB3E
; ---------------------------------------------------------------------------

loc_46EABF:				; CODE XREF: .text:0046EAB2j
		test	al, 80h
		jnz	short loc_46EACC
		mov	[ecx], eax
		mov	eax, 1
		jmp	short loc_46EB3E
; ---------------------------------------------------------------------------

loc_46EACC:				; CODE XREF: .text:0046EAC1j
		mov	esi, eax
		and	esi, 0C0h
		cmp	esi, 80h
		jnz	short loc_46EAFA
		cmp	ebx, 2
		jnb	short loc_46EAE5
		xor	eax, eax
		jmp	short loc_46EB3E
; ---------------------------------------------------------------------------

loc_46EAE5:				; CODE XREF: .text:0046EADFj
		and	eax, 3Fh
		shl	eax, 8
		movzx	edx, byte ptr [edx+1]
		or	eax, edx
		mov	[ecx], eax
		mov	eax, 2
		jmp	short loc_46EB3E
; ---------------------------------------------------------------------------

loc_46EAFA:				; CODE XREF: .text:0046EADAj
		mov	esi, eax
		and	esi, 0E0h
		cmp	esi, 0C0h
		jnz	short loc_46EB3C
		cmp	ebx, 4
		jnb	short loc_46EB13
		xor	eax, eax
		jmp	short loc_46EB3E
; ---------------------------------------------------------------------------

loc_46EB13:				; CODE XREF: .text:0046EB0Dj
		and	eax, 1Fh
		shl	eax, 18h
		xor	ebx, ebx
		mov	bl, [edx+1]
		shl	ebx, 10h
		or	eax, ebx
		xor	ebx, ebx
		mov	bl, [edx+2]
		shl	ebx, 8
		or	eax, ebx
		movzx	edx, byte ptr [edx+3]
		or	eax, edx
		mov	[ecx], eax
		mov	eax, 4
		jmp	short loc_46EB3E
; ---------------------------------------------------------------------------

loc_46EB3C:				; CODE XREF: .text:0046EB08j
		xor	eax, eax

loc_46EB3E:				; CODE XREF: .text:0046EAA4j
					; .text:0046EABDj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_46EB44(t_module *a4, int a5, int a6)
loc_46EB44:				; CODE XREF: .text:00412755p
					; .text:0046FC82p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF750h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_46EB5D
		cmp	dword ptr [ebx+4], 0
		jnz	short loc_46EB65

loc_46EB5D:				; CODE XREF: .text:0046EB55j
		or	eax, 0FFFFFFFFh
		jmp	loc_46FAD3
; ---------------------------------------------------------------------------

loc_46EB65:				; CODE XREF: .text:0046EB5Bj
		mov	edx, g_hCursor
		push	edx		; hCursor
		call	SetCursor
		mov	[ebp-0Ch], eax
		call	Suspendallthreads
		xor	ecx, ecx
		mov	copy, ecx
		xor	eax, eax
		mov	s, eax
		xor	edx, edx
		mov	dword_5E5D70, edx
		xor	ecx, ecx
		mov	dword_5E5D74, ecx
		xor	eax, eax
		mov	dword_5E5D78, eax
		xor	edx, edx
		mov	dword_5E5D7C, edx
		xor	ecx, ecx
		mov	dword_5E5D80, ecx
		xor	eax, eax
		mov	dword_5E5D90, eax
		xor	edx, edx
		mov	dword_5E5D94, edx
		xor	ecx, ecx
		mov	dword_5E5D98, ecx
		xor	eax, eax
		mov	dword_5E5D9C, eax
		xor	edx, edx
		mov	dword_5E5DA0, edx
		push	44h		; n
		push	0		; c
		lea	ecx, [ebp-660h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		call	Redrawlist
		mov	dword ptr [ebx+9A8h], 1
		call	Listmemory
		lea	eax, [ebp-20Ch]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		push	ebx
		call	loc_45CEE0
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jg	loc_46F9BE
		lea	eax, [ebx+0Ch]
		push	eax		; arglist
		push	offset aAnalysingS ; "Analysing	%s"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		cmp	dword ptr [ebp+10h], 1
		jz	short loc_46EC5D
		cmp	dword_5BDD18, 0
		jz	short loc_46EC5D
		push	offset aSomeStaticImpo ; "  Some static	imports	are not	yet resol"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_46EC5D:				; CODE XREF: .text:0046EC3Aj
					; .text:0046EC43j
		test	esi, esi
		jge	short loc_46EC8C
		cmp	word ptr [ebp-20Ch], 0
		jz	loc_46F9BE
		lea	edx, [ebp-20Ch]
		push	edx		; arglist
		push	offset aS_10	; "%s"
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	loc_46F9BE
; ---------------------------------------------------------------------------

loc_46EC8C:				; CODE XREF: .text:0046EC5Fj
		cmp	word ptr [ebp-20Ch], 0
		jz	short loc_46ECAE
		lea	ecx, [ebp-20Ch]
		push	ecx		; arglist
		push	offset aS_10	; "%s"
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_46ECAE:				; CODE XREF: .text:0046EC94j
		xor	eax, eax
		mov	dword_5E5D58, eax
		cmp	dword_5BDD98, 0
		jz	loc_46EE3A
		push	offset word_57EDF8 ; src
		push	104h		; n
		lea	edx, [ebp-414h]
		push	edx		; dest
		call	StrcopyW
		mov	edi, eax
		add	esp, 0Ch
		mov	eax, 104h
		lea	edx, [ebp-414h]
		sub	eax, edi
		add	edi, edi
		push	offset a_udl	; "\\*.udl"
		push	eax		; n
		add	edi, edx
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebp-8B0h]
		push	ecx		; lpFindFileData
		lea	eax, [ebp-414h]
		push	eax		; lpFileName
		call	FindFirstFileW
		mov	edi, eax
		jmp	loc_46EE1D
; ---------------------------------------------------------------------------

loc_46ED17:				; CODE XREF: .text:0046EE29j
		push	offset word_57EDF8 ; src
		push	104h		; n
		lea	eax, [ebp-61Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		mov	edx, esi
		mov	eax, 104h
		sub	eax, esi
		lea	ecx, [ebp-61Ch]
		add	edx, edx
		push	offset asc_53B9CE ; "\\"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	edx, 104h
		lea	eax, [ebp-884h]
		sub	edx, esi
		push	eax		; src
		lea	ecx, [ebp-61Ch]
		add	esi, esi
		add	esi, ecx
		push	edx		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, dword_5E5D58
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*4]
		lea	eax, [edx+eax*2]
		shl	eax, 2
		add	eax, offset byte_5E19E0
		push	eax		; ptr
		lea	ecx, [ebp-61Ch]
		push	ecx		; path
		call	loc_4DC2DC
		mov	esi, eax
		mov	eax, dword_5E5D58
		mov	edx, eax
		add	esp, 8
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*4]
		lea	eax, [edx+eax*2]
		mov	dword_5E1A00[eax*4], esi
		mov	ecx, dword_5E5D58
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		test	esi, esi
		lea	ecx, [eax+ecx*4]
		lea	ecx, [eax+ecx*2]
		jl	short loc_46EE0C
		mov	ecx, dword_5E5D58
		lea	edx, [ebp-884h]
		mov	eax, ecx
		push	edx		; src
		shl	ecx, 4
		push	104h		; n
		add	ecx, eax
		lea	ecx, [eax+ecx*4]
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		add	ecx, offset word_5E17D8
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		inc	dword_5E5D58

loc_46EE0C:				; CODE XREF: .text:0046EDD3j
		lea	edx, [ebp-8B0h]
		push	edx		; lpFindFileData
		push	edi		; hFindFile
		call	FindNextFileW
		test	eax, eax
		jz	short loc_46EE2F

loc_46EE1D:				; CODE XREF: .text:0046ED12j
		cmp	edi, 0FFFFFFFFh
		jz	short loc_46EE2F
		cmp	dword_5E5D58, 20h
		jl	loc_46ED17

loc_46EE2F:				; CODE XREF: .text:0046EE1Bj
					; .text:0046EE20j
		cmp	edi, 0FFFFFFFFh
		jz	short loc_46EE3A
		push	edi		; hFindFile
		call	FindClose

loc_46EE3A:				; CODE XREF: .text:0046ECBCj
					; .text:0046EE32j
		push	64h		; n
		push	0		; c
		push	offset dword_5E5FB0 ; s
		call	_memset
		add	esp, 0Ch
		test	byte ptr [ebx+0Bh], 4
		jz	short loc_46EE5B
		mov	dword_5E5FB4, 0C8h

loc_46EE5B:				; CODE XREF: .text:0046EE4Fj
		mov	eax, [ebx+8D8h]
		test	eax, eax
		jbe	short loc_46EE6F
		mov	dword_5E5FB8, 32h

loc_46EE6F:				; CODE XREF: .text:0046EE63j
		mov	edx, dword_5E5D78
		test	edx, edx
		jnz	short loc_46EE83
		mov	dword_5E5FBC, 3E8h

loc_46EE83:				; CODE XREF: .text:0046EE77j
		mov	dword_5E5FC0, 64h
		test	eax, eax
		jbe	short loc_46EE9B
		mov	dword_5E5FC4, 32h

loc_46EE9B:				; CODE XREF: .text:0046EE8Fj
		test	edx, edx
		jnz	short loc_46EEA9
		mov	dword_5E5FC8, 3E8h

loc_46EEA9:				; CODE XREF: .text:0046EE9Dj
		test	eax, eax
		jbe	short loc_46EEB7
		mov	dword_5E5FCC, 0Ah

loc_46EEB7:				; CODE XREF: .text:0046EEABj
		test	edx, edx
		jnz	short loc_46EEC5
		mov	dword_5E5FD0, 32h

loc_46EEC5:				; CODE XREF: .text:0046EEB9j
		cmp	dword_5BDD20, 0
		jz	short loc_46EEE1
		cmp	dword ptr [ebx+8D8h], 0
		jbe	short loc_46EEE1
		mov	dword_5E5FD4, 64h

loc_46EEE1:				; CODE XREF: .text:0046EECCj
					; .text:0046EED5j
		cmp	dword_5BDD20, 0
		jz	short loc_46EEFD
		cmp	dword_5E5D78, 0
		jnz	short loc_46EEFD
		mov	dword_5E5FD8, 1F4h

loc_46EEFD:				; CODE XREF: .text:0046EEE8j
					; .text:0046EEF1j
		cmp	dword_5BDD98, 0
		jz	short loc_46EF25
		cmp	dword ptr [ebx+8D8h], 0
		jbe	short loc_46EF25
		mov	ecx, dword_5E5D58
		mov	eax, ecx
		shl	ecx, 4
		sub	ecx, eax
		lea	ecx, [ecx+ecx*4]
		mov	dword_5E5FDC, ecx

loc_46EF25:				; CODE XREF: .text:0046EF04j
					; .text:0046EF0Dj
		cmp	dword_5BDD98, 0
		jz	short loc_46EF4C
		cmp	dword_5E5D78, 0
		jnz	short loc_46EF4C
		mov	edx, dword_5E5D58
		shl	edx, 4
		lea	edx, [edx+edx*4]
		lea	edx, [edx+edx*4]
		mov	dword_5E5FE0, edx

loc_46EF4C:				; CODE XREF: .text:0046EF2Cj
					; .text:0046EF35j
		mov	eax, [ebx+8D8h]
		test	eax, eax
		jbe	short loc_46EF60
		mov	dword_5E5FE4, 14h

loc_46EF60:				; CODE XREF: .text:0046EF54j
		mov	edx, dword_5E5D78
		test	edx, edx
		jnz	short loc_46EF74
		mov	dword_5E5FE8, 190h

loc_46EF74:				; CODE XREF: .text:0046EF68j
		test	eax, eax
		jbe	short loc_46EF8C
		mov	dword_5E5FEC, 32h
		mov	dword_5E5FF4, 19h

loc_46EF8C:				; CODE XREF: .text:0046EF76j
		test	edx, edx
		jnz	short loc_46EFA4
		mov	dword_5E5FF0, 0FAh
		mov	dword_5E5FF8, 78h

loc_46EFA4:				; CODE XREF: .text:0046EF8Ej
		test	eax, eax
		jbe	short loc_46EFB2
		mov	dword_5E5FFC, 64h

loc_46EFB2:				; CODE XREF: .text:0046EFA6j
		test	edx, edx
		jnz	short loc_46EFC0
		mov	dword_5E6000, 0FA0h

loc_46EFC0:				; CODE XREF: .text:0046EFB4j
		test	eax, eax
		jbe	short loc_46EFDB
		mov	ecx, 64h
		cmp	dword_5BDD38, 0
		jnz	short loc_46EFD5
		add	ecx, 64h

loc_46EFD5:				; CODE XREF: .text:0046EFD0j
		mov	dword_5E6004, ecx

loc_46EFDB:				; CODE XREF: .text:0046EFC2j
		cmp	dword_5E5D78, 0
		jnz	short loc_46EFFC
		mov	eax, 7D0h
		cmp	dword_5BDD38, 0
		jnz	short loc_46EFF7
		add	eax, 7D0h

loc_46EFF7:				; CODE XREF: .text:0046EFF0j
		mov	dword_5E6008, eax

loc_46EFFC:				; CODE XREF: .text:0046EFE2j
		cmp	dword ptr [ebx+8D8h], 0
		jbe	short loc_46F00F
		mov	dword_5E600C, 14h

loc_46F00F:				; CODE XREF: .text:0046F003j
		cmp	dword_5E5D78, 0
		jnz	short loc_46F022
		mov	dword_5E6010, 190h

loc_46F022:				; CODE XREF: .text:0046F016j
		xor	edx, edx
		mov	edi, 1
		mov	[ebp-4], edx
		mov	esi, offset dword_5E5FB4

loc_46F031:				; CODE XREF: .text:0046F040j
		mov	eax, [ebp-4]
		inc	edi
		add	eax, [esi]
		add	esi, 4
		cmp	edi, 19h
		mov	[ebp-4], eax
		jl	short loc_46F031
		mov	edi, 1
		mov	esi, offset dword_5E5FB4

loc_46F04C:				; CODE XREF: .text:0046F077j
		mov	eax, [ebp-4]
		push	eax		; nDenominator
		push	3E7h		; nNumerator
		mov	edx, [esi]
		push	edx		; nNumber
		call	MulDiv
		add	eax, [esi-4]
		mov	[esi], eax
		cmp	dword ptr [esi], 3E7h
		jbe	short loc_46F070
		mov	dword ptr [esi], 3E7h

loc_46F070:				; CODE XREF: .text:0046F068j
		inc	edi
		add	esi, 4
		cmp	edi, 19h
		jl	short loc_46F04C
		push	ebx
		call	loc_45D2F8
		pop	ecx
		push	ebx
		call	loc_45D5AC
		pop	ecx
		push	ebx
		call	loc_45D89C
		pop	ecx
		push	1
		push	ebx
		call	loc_45C608
		add	esp, 8
		push	ebx		; int
		call	loc_45EC80
		cmp	dword ptr [ebx+8D8h], 0
		pop	ecx
		jbe	short loc_46F0D5
		push	2
		push	ebx
		call	loc_45C608
		add	esp, 8
		mov	ecx, [ebx+8D8h]
		push	ecx		; nDenominator
		mov	eax, [ebx+8D4h]
		push	eax		; int
		push	ebx		; int
		call	loc_460E14
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F0D5:				; CODE XREF: .text:0046F0A7j
		cmp	dword_5E5D78, 0
		jnz	short loc_46F10A
		push	3
		push	ebx
		call	loc_45C608
		add	esp, 8
		mov	eax, [ebx+45Ch]
		push	eax		; nDenominator
		mov	edx, [ebx+458h]
		push	edx		; int
		push	ebx		; int
		call	loc_460E14
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F10A:				; CODE XREF: .text:0046F0DCj
		push	4
		push	ebx
		call	loc_45C608
		add	esp, 8
		push	ebx
		call	loc_461600
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE
		cmp	dword ptr [ebx+8D8h], 0
		jbe	short loc_46F15B
		push	5
		push	ebx
		call	loc_45C608
		add	esp, 8
		mov	eax, [ebx+8D8h]
		push	eax
		mov	edx, [ebx+8D4h]
		push	edx
		push	ebx
		call	loc_461990
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F15B:				; CODE XREF: .text:0046F12Dj
		cmp	dword_5E5D78, 0
		jnz	short loc_46F190
		push	6
		push	ebx
		call	loc_45C608
		add	esp, 8
		mov	eax, [ebx+45Ch]
		push	eax
		mov	edx, [ebx+458h]
		push	edx
		push	ebx
		call	loc_461990
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F190:				; CODE XREF: .text:0046F162j
		cmp	dword ptr [ebx+8D8h], 0
		jbe	short loc_46F1C5
		push	7
		push	ebx
		call	loc_45C608
		add	esp, 8
		mov	eax, [ebx+8D8h]
		push	eax		; nDenominator
		mov	edx, [ebx+8D4h]
		push	edx		; int
		push	ebx		; int
		call	loc_464230
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F1C5:				; CODE XREF: .text:0046F197j
		cmp	dword_5E5D78, 0
		jnz	short loc_46F1FA
		push	8
		push	ebx
		call	loc_45C608
		add	esp, 8
		mov	eax, [ebx+45Ch]
		push	eax		; nDenominator
		mov	edx, [ebx+458h]
		push	edx		; int
		push	ebx		; int
		call	loc_464230
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F1FA:				; CODE XREF: .text:0046F1CCj
		cmp	dword_5BDD20, 0
		jz	short loc_46F238
		cmp	dword ptr [ebx+8D8h], 0
		jbe	short loc_46F238
		push	9
		push	ebx
		call	loc_45C608
		add	esp, 8
		mov	eax, [ebx+8D8h]
		push	eax		; nDenominator
		mov	edx, [ebx+8D4h]
		push	edx		; int
		push	ebx		; int
		call	loc_464590
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F238:				; CODE XREF: .text:0046F201j
					; .text:0046F20Aj
		cmp	dword_5BDD20, 0
		jz	short loc_46F276
		cmp	dword_5E5D78, 0
		jnz	short loc_46F276
		push	0Ah
		push	ebx
		call	loc_45C608
		add	esp, 8
		mov	eax, [ebx+45Ch]
		push	eax		; nDenominator
		mov	edx, [ebx+458h]
		push	edx		; int
		push	ebx		; int
		call	loc_464590
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F276:				; CODE XREF: .text:0046F23Fj
					; .text:0046F248j
		cmp	dword_5BDD98, 0
		jz	short loc_46F2B4
		cmp	dword ptr [ebx+8D8h], 0
		jbe	short loc_46F2B4
		push	0Bh
		push	ebx
		call	loc_45C608
		add	esp, 8
		mov	eax, [ebx+8D8h]
		push	eax		; nDenominator
		mov	edx, [ebx+8D4h]
		push	edx		; int
		push	ebx		; int
		call	loc_465270
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F2B4:				; CODE XREF: .text:0046F27Dj
					; .text:0046F286j
		cmp	dword_5BDD98, 0
		jz	short loc_46F2F2
		cmp	dword_5E5D78, 0
		jnz	short loc_46F2F2
		push	0Ch
		push	ebx
		call	loc_45C608
		add	esp, 8
		mov	eax, [ebx+45Ch]
		push	eax		; nDenominator
		mov	edx, [ebx+458h]
		push	edx		; int
		push	ebx		; int
		call	loc_465270
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F2F2:				; CODE XREF: .text:0046F2BBj
					; .text:0046F2C4j
		cmp	dword ptr [ebx+8D8h], 0
		jbe	short loc_46F327
		push	0Dh
		push	ebx
		call	loc_45C608
		add	esp, 8
		mov	eax, [ebx+8D8h]	; int
		push	eax		; nDenominator
		mov	edx, [ebx+8D4h]	; int
		push	edx		; int
		push	ebx		; int
		call	loc_467444
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F327:				; CODE XREF: .text:0046F2F9j
		cmp	dword_5E5D78, 0
		jnz	short loc_46F35C
		push	0Eh
		push	ebx
		call	loc_45C608
		add	esp, 8
		mov	eax, [ebx+45Ch]	; int
		push	eax		; nDenominator
		mov	edx, [ebx+458h]	; int
		push	edx		; int
		push	ebx		; int
		call	loc_467444
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F35C:				; CODE XREF: .text:0046F32Ej
		lea	eax, [ebx+8F4h]
		push	eax		; pdat
		call	Sortjumpdata
		cmp	dword ptr [ebx+8D8h], 0
		pop	ecx
		jbe	short loc_46F3A0
		push	0Fh
		push	ebx
		call	loc_45C608
		add	esp, 8
		push	0		; int
		mov	edx, [ebx+8D8h]
		push	edx		; nDenominator
		mov	ecx, [ebx+8D4h]
		push	ecx		; int
		push	ebx		; int
		call	loc_468CA4
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F3A0:				; CODE XREF: .text:0046F370j
		cmp	dword_5E5D78, 0
		jnz	short loc_46F3D7
		push	10h
		push	ebx
		call	loc_45C608
		add	esp, 8
		push	0		; int
		mov	eax, [ebx+45Ch]
		push	eax		; nDenominator
		mov	edx, [ebx+458h]
		push	edx		; int
		push	ebx		; int
		call	loc_468CA4
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F3D7:				; CODE XREF: .text:0046F3A7j
		cmp	dword ptr [ebx+8D8h], 0
		jbe	short loc_46F40E
		push	11h
		push	ebx
		call	loc_45C608
		add	esp, 8
		push	1		; int
		mov	eax, [ebx+8D8h]
		push	eax		; nDenominator
		mov	edx, [ebx+8D4h]
		push	edx		; int
		push	ebx		; int
		call	loc_468CA4
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F40E:				; CODE XREF: .text:0046F3DEj
		cmp	dword_5E5D78, 0
		jnz	short loc_46F445
		push	12h
		push	ebx
		call	loc_45C608
		add	esp, 8
		push	1		; int
		mov	eax, [ebx+45Ch]
		push	eax		; nDenominator
		mov	edx, [ebx+458h]
		push	edx		; int
		push	ebx		; int
		call	loc_468CA4
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F445:				; CODE XREF: .text:0046F415j
		push	1		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	1000h		; nexp
		push	80h		; itemsize
		lea	eax, [ebp-660h]
		push	eax		; sd
		call	Createsorteddata
		add	esp, 18h
		cmp	dword ptr [ebx+8D8h], 0
		jbe	short loc_46F4A0
		push	13h
		push	ebx
		call	loc_45C608
		add	esp, 8
		lea	edx, [ebp-660h]	; int
		push	edx		; int
		mov	ecx, [ebx+8D8h]	; int
		push	ecx		; nDenominator
		mov	eax, [ebx+8D4h]	; int
		push	eax		; int
		push	ebx		; int
		call	loc_4698F4
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F4A0:				; CODE XREF: .text:0046F46Bj
		cmp	dword_5E5D78, 0
		jnz	short loc_46F4DC
		push	14h
		push	ebx
		call	loc_45C608
		add	esp, 8
		lea	eax, [ebp-660h]	; int
		push	eax		; int
		mov	edx, [ebx+45Ch]	; int
		push	edx		; nDenominator
		mov	ecx, [ebx+458h]	; int
		push	ecx		; int
		push	ebx		; int
		call	loc_4698F4
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F4DC:				; CODE XREF: .text:0046F4A7j
		call	Mergequickdata
		mov	eax, [ebx+8D8h]
		test	eax, eax
		jbe	short loc_46F50D
		lea	edx, [ebp-660h]
		push	edx
		push	eax
		mov	ecx, [ebx+8D4h]
		push	ecx
		push	ebx
		call	loc_46BCF4
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F50D:				; CODE XREF: .text:0046F4E9j
		cmp	dword_5E5D78, 0
		jnz	short loc_46F53E
		lea	eax, [ebp-660h]
		push	eax
		mov	edx, [ebx+45Ch]
		push	edx
		mov	ecx, [ebx+458h]
		push	ecx
		push	ebx
		call	loc_46BCF4
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F53E:				; CODE XREF: .text:0046F514j
		cmp	dword ptr [ebx+8D8h], 0
		jbe	short loc_46F57A
		push	15h
		push	ebx
		call	loc_45C608
		add	esp, 8
		lea	eax, [ebp-660h]
		push	eax		; int
		mov	edx, [ebx+8D8h]
		push	edx		; nDenominator
		mov	ecx, [ebx+8D4h]
		push	ecx		; int
		push	ebx		; int
		call	loc_46BFCC
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F57A:				; CODE XREF: .text:0046F545j
		cmp	dword_5E5D78, 0
		jnz	short loc_46F5B6
		push	16h
		push	ebx
		call	loc_45C608
		add	esp, 8
		lea	eax, [ebp-660h]
		push	eax		; int
		mov	edx, [ebx+45Ch]
		push	edx		; nDenominator
		mov	ecx, [ebx+458h]
		push	ecx		; int
		push	ebx		; int
		call	loc_46BFCC
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F5B6:				; CODE XREF: .text:0046F581j
		lea	eax, [ebp-660h]
		push	eax		; sd
		call	Destroysorteddata
		cmp	dword ptr [ebx+8D8h], 0
		pop	ecx
		jbe	short loc_46F5F8
		push	17h
		push	ebx
		call	loc_45C608
		add	esp, 8
		mov	edx, [ebx+8D8h]	; int
		push	edx		; nDenominator
		mov	ecx, [ebx+8D4h]	; int
		push	ecx		; int
		push	ebx		; int
		call	loc_46D53C
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F5F8:				; CODE XREF: .text:0046F5CAj
		cmp	dword_5E5D78, 0
		jnz	short loc_46F62D
		push	18h
		push	ebx
		call	loc_45C608
		add	esp, 8
		mov	eax, [ebx+45Ch]	; int
		push	eax		; nDenominator
		mov	edx, [ebx+458h]	; int
		push	edx		; int
		push	ebx		; int
		call	loc_46D53C
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	loc_46F9BE

loc_46F62D:				; CODE XREF: .text:0046F5FFj
		mov	eax, [ebx+8E0h]
		push	eax
		mov	edx, [ebx]
		push	edx
		push	ebx
		call	loc_45D9F8
		add	esp, 0Ch
		mov	ecx, copy
		push	ecx		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		mov	copy, eax
		xor	edi, edi
		jmp	short loc_46F6AA
; ---------------------------------------------------------------------------

loc_46F658:				; CODE XREF: .text:0046F6B0j
		push	edi		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_46F6A9
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_46F6A9
		mov	edx, [eax]
		cmp	edx, addr0
		jb	short loc_46F6A9
		mov	ecx, [eax]
		add	ecx, [eax+4]
		cmp	ecx, addr1
		ja	short loc_46F6B2
		test	dword ptr [eax+8], 241D000h
		jz	short loc_46F6A9
		cmp	dword_5E5D78, 0
		jz	short loc_46F6A2
		test	dword ptr [eax+8], 41C000h
		jz	short loc_46F6A9

loc_46F6A2:				; CODE XREF: .text:0046F697j
		push	eax
		call	loc_46E5E0
		pop	ecx

loc_46F6A9:				; CODE XREF: .text:0046F668j
					; .text:0046F66Ej ...
		inc	edi

loc_46F6AA:				; CODE XREF: .text:0046F656j
		cmp	edi, memory.sorted.n
		jl	short loc_46F658

loc_46F6B2:				; CODE XREF: .text:0046F685j
		call	Mergequickdata
		cmp	dword_5BDD14, 0
		jz	short loc_46F6D3
		test	byte ptr [ebx+0Ah], 30h
		jz	short loc_46F6D3
		lea	eax, [ebx+950h]
		push	eax		; pdat
		call	Destroysimpledata
		pop	ecx

loc_46F6D3:				; CODE XREF: .text:0046F6BEj
					; .text:0046F6C4j
		cmp	dword_5E5D90, 1
		jnz	short loc_46F718
		cmp	dword_5BDD1C, 0
		jz	short loc_46F6F2
		push	offset aFuzzy	; "fuzzy"
		call	_T
		pop	ecx
		jmp	short loc_46F6FD
; ---------------------------------------------------------------------------

loc_46F6F2:				; CODE XREF: .text:0046F6E3j
		push	offset aStrict	; "strict"
		call	_T
		pop	ecx

loc_46F6FD:				; CODE XREF: .text:0046F6F0j
		push	eax		; arglist
		push	offset a1SProcedure ; "	 1 %s procedure"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	short loc_46F758
; ---------------------------------------------------------------------------

loc_46F718:				; CODE XREF: .text:0046F6DAj
		cmp	dword_5BDD1C, 0
		jz	short loc_46F72E
		push	offset aFuzzy	; "fuzzy"
		call	_T
		pop	ecx
		jmp	short loc_46F739
; ---------------------------------------------------------------------------

loc_46F72E:				; CODE XREF: .text:0046F71Fj
		push	offset aStrict	; "strict"
		call	_T
		pop	ecx

loc_46F739:				; CODE XREF: .text:0046F72Cj
		push	eax
		mov	eax, dword_5E5D90
		push	eax		; arglist
		push	offset aISProcedures ; "  %i %s	procedures"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h

loc_46F758:				; CODE XREF: .text:0046F716j
		cmp	dword_5E5D98, 0
		jnz	short loc_46F7B8
		cmp	dword_5E5D94, 1
		jnz	short loc_46F787
		push	offset a1CallToKnownFu ; "  1 call to known function"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_46F887
; ---------------------------------------------------------------------------

loc_46F787:				; CODE XREF: .text:0046F768j
		cmp	dword_5E5D94, 1
		jle	loc_46F887
		mov	edx, dword_5E5D94
		push	edx		; arglist
		push	offset aICallsToKnownF ; "  %i calls to	known functions"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	loc_46F887
; ---------------------------------------------------------------------------

loc_46F7B8:				; CODE XREF: .text:0046F75Fj
		cmp	dword_5E5D94, 0
		jnz	short loc_46F7D9
		push	offset asc_53C2F6 ; format
		lea	ecx, [ebp-20Ch]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 8
		mov	edi, eax
		jmp	short loc_46F824
; ---------------------------------------------------------------------------

loc_46F7D9:				; CODE XREF: .text:0046F7BFj
		cmp	dword_5E5D94, 1
		jnz	short loc_46F801
		push	offset a1CallToKnown ; "  1 call to known, "
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-20Ch]
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		mov	edi, eax
		jmp	short loc_46F824
; ---------------------------------------------------------------------------

loc_46F801:				; CODE XREF: .text:0046F7E0j
		mov	eax, dword_5E5D94
		push	eax
		push	offset aICallsToKnown ;	"  %i calls to known, "
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-20Ch]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	edi, eax

loc_46F824:				; CODE XREF: .text:0046F7D7j
					; .text:0046F7FFj
		cmp	dword_5E5D98, 1
		jnz	short loc_46F84E
		push	offset a1CallToGuessed ; "1 call to guessed functions"
		call	_T
		pop	ecx
		push	eax		; format
		add	edi, edi
		lea	eax, [ebp-20Ch]
		add	edi, eax
		push	edi		; buffer
		call	_swprintf
		add	esp, 8
		jmp	short loc_46F874
; ---------------------------------------------------------------------------

loc_46F84E:				; CODE XREF: .text:0046F82Bj
		mov	edx, dword_5E5D98
		push	edx
		push	offset aICallsToGuesse ; "%i calls to guessed functions"
		call	_T
		pop	ecx
		push	eax		; format
		add	edi, edi
		lea	ecx, [ebp-20Ch]
		add	edi, ecx
		push	edi		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_46F874:				; CODE XREF: .text:0046F84Cj
		lea	eax, [ebp-20Ch]
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_46F887:				; CODE XREF: .text:0046F782j
					; .text:0046F78Ej ...
		cmp	dword_5E5D9C, 1
		jnz	short loc_46F8CA
		cmp	dword_5BDD28, 0
		jz	short loc_46F8A6
		push	offset aSwitchOrCascad ; "switch or cascaded IF"
		call	_T
		pop	ecx
		jmp	short loc_46F8B1
; ---------------------------------------------------------------------------

loc_46F8A6:				; CODE XREF: .text:0046F897j
		push	offset aSwitch_0 ; "switch"
		call	_T
		pop	ecx

loc_46F8B1:				; CODE XREF: .text:0046F8A4j
		push	eax
		push	offset a1S	; "1 %s"
		lea	edx, [ebp-20Ch]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	edi, eax
		jmp	short loc_46F911
; ---------------------------------------------------------------------------

loc_46F8CA:				; CODE XREF: .text:0046F88Ej
		mov	edi, dword_5E5D9C
		test	edi, edi
		jle	short loc_46F90F
		cmp	dword_5BDD28, 0
		jz	short loc_46F8EA
		push	offset aSwitchesAndCas ; "switches and cascaded	IFs"
		call	_T
		pop	ecx
		jmp	short loc_46F8F5
; ---------------------------------------------------------------------------

loc_46F8EA:				; CODE XREF: .text:0046F8DBj
		push	offset aSwitches ; "switches"
		call	_T
		pop	ecx

loc_46F8F5:				; CODE XREF: .text:0046F8E8j
		push	eax
		push	edi
		push	offset aIS_4	; "%i %s"
		lea	eax, [ebp-20Ch]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		mov	edi, eax
		jmp	short loc_46F911
; ---------------------------------------------------------------------------

loc_46F90F:				; CODE XREF: .text:0046F8D2j
		xor	edi, edi

loc_46F911:				; CODE XREF: .text:0046F8C8j
					; .text:0046F90Dj
		cmp	dword_5E5DA0, 0
		jle	short loc_46F93A
		test	edi, edi
		jle	short loc_46F93A
		push	offset asc_53C0BC ; ", "
		mov	eax, edi
		add	eax, eax
		lea	edx, [ebp-20Ch]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	edi, eax

loc_46F93A:				; CODE XREF: .text:0046F918j
					; .text:0046F91Cj
		cmp	dword_5E5DA0, 1
		jnz	short loc_46F968
		push	offset a1Loop	; "1 loop"
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, edi
		add	ecx, ecx
		lea	eax, [ebp-20Ch]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 8
		add	edi, eax
		jmp	short loc_46F99B
; ---------------------------------------------------------------------------

loc_46F968:				; CODE XREF: .text:0046F941j
		cmp	dword_5E5DA0, 1
		jle	short loc_46F99B
		mov	edx, dword_5E5DA0
		push	edx
		push	offset aILoops	; "%i loops"
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, edi
		add	ecx, ecx
		lea	eax, [ebp-20Ch]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	edi, eax

loc_46F99B:				; CODE XREF: .text:0046F966j
					; .text:0046F96Fj
		test	edi, edi
		jle	short loc_46F9B7
		lea	edx, [ebp-20Ch]
		push	edx		; arglist
		push	offset aS_12	; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_46F9B7:				; CODE XREF: .text:0046F99Dj
		or	dword ptr [ebx+8], 800000h

loc_46F9BE:				; CODE XREF: .text:0046EC14j
					; .text:0046EC69j ...
		call	Mergequickdata
		lea	ecx, [ebp-660h]
		push	ecx		; sd
		call	Destroysorteddata
		pop	ecx
		mov	eax, copy
		test	eax, eax
		jz	short loc_46F9E8
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	copy, edx

loc_46F9E8:				; CODE XREF: .text:0046F9D7j
		mov	eax, s
		test	eax, eax
		jz	short loc_46FA00
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	s, edx

loc_46FA00:				; CODE XREF: .text:0046F9EFj
		mov	eax, dword_5E5D70
		test	eax, eax
		jz	short loc_46FA18
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	dword_5E5D70, edx

loc_46FA18:				; CODE XREF: .text:0046FA07j
		mov	eax, dword_5E5D74
		test	eax, eax
		jz	short loc_46FA30
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	dword_5E5D74, edx

loc_46FA30:				; CODE XREF: .text:0046FA1Fj
		mov	eax, dword_5E5D88
		test	eax, eax
		jz	short loc_46FA48
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	dword_5E5D88, edx

loc_46FA48:				; CODE XREF: .text:0046FA37j
		xor	ecx, ecx
		mov	dword_5E5D8C, ecx
		test	byte ptr [ebx+0Ah], 80h
		jz	short loc_46FAAE
		xor	edi, edi
		jmp	short loc_46FAA6
; ---------------------------------------------------------------------------

loc_46FA5A:				; CODE XREF: .text:0046FAACj
		push	edi		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jz	short loc_46FAA5
		mov	eax, [ebp-8]
		cmp	dword ptr [eax+2A4h], 0
		jz	short loc_46FAA5
		mov	edx, [ebp-8]
		add	edx, 0Ch
		push	edx
		lea	ecx, [ebx+0Ch]
		push	ecx		; arglist
		push	offset aAnalysingSPlug ; "Analysing %s - $ - plugin %s"
		push	3E7h		; promille
		call	Progress
		add	esp, 10h
		push	ebx
		mov	eax, [ebp-8]
		call	dword ptr [eax+2A4h]
		pop	ecx

loc_46FAA5:				; CODE XREF: .text:0046FA6Fj
					; .text:0046FA7Bj
		inc	edi

loc_46FAA6:				; CODE XREF: .text:0046FA58j
		cmp	edi, pluginlist.sorted.n
		jl	short loc_46FA5A

loc_46FAAE:				; CODE XREF: .text:0046FA54j
		push	0		; format
		push	0		; promille
		call	Progress
		add	esp, 8
		call	Resumeallthreads
		mov	edx, [ebp-0Ch]
		push	edx		; hCursor
		call	SetCursor
		mov	ecx, [ebx]
		push	ecx
		call	loc_4C2968
		pop	ecx
		mov	eax, esi

loc_46FAD3:				; CODE XREF: .text:0046EB60j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_46FADC@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int)
loc_46FADC:				; CODE XREF: .text:00409F55p
					; .text:0044E1A6p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi		; arglist
		mov	eax, aqueue.n
		test	eax, eax
		jz	loc_46FD7C
		cmp	process, 0
		jz	loc_46FD7C
		shl	eax, 3		; int
		push	3		; flags
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_46FB44
		push	offset aLowMemoryAutom ; "Low memory, automatic	analysis not poss"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		push	0FFFFFFFFh	; addr1
		push	0		; addr0
		push	offset aqueue	; sd
		call	Deletesorteddatarange
		add	esp, 0Ch
		jmp	loc_46FD7C
; ---------------------------------------------------------------------------

loc_46FB44:				; CODE XREF: .text:0046FB14j
		mov	edx, g_hCursor
		push	edx		; hCursor
		call	SetCursor
		mov	[ebp-10h], eax
		xor	ecx, ecx
		mov	[ebp-8], ecx
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	loc_46FC30
; ---------------------------------------------------------------------------

loc_46FB62:				; CODE XREF: .text:0046FC39j
		mov	edx, [ebp-4]
		push	edx		; index
		push	offset aqueue	; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	loc_46FC2D
		or	dword ptr [esi+8], 200h
		test	byte ptr [esi+0Bh], 40h
		jnz	short loc_46FB9D
		mov	eax, [esi]
		push	eax
		call	loc_413A9C
		pop	ecx
		dec	eax
		jnz	short loc_46FB9D
		or	dword ptr [esi+8], 40000000h

loc_46FB9D:				; CODE XREF: .text:0046FB88j
					; .text:0046FB94j
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_46FBAD
		test	byte ptr [esi+0Bh], 40h
		jz	loc_46FC2D

loc_46FBAD:				; CODE XREF: .text:0046FBA1j
		mov	edx, [esi]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jz	short loc_46FBC2
		test	byte ptr [edi+0Ah], 80h
		jz	short loc_46FBCB

loc_46FBC2:				; CODE XREF: .text:0046FBBAj
		and	dword ptr [esi+8], 0FFFFFDFFh
		jmp	short loc_46FC2D
; ---------------------------------------------------------------------------

loc_46FBCB:				; CODE XREF: .text:0046FBC0j
		mov	ebx, [ebp-8]
		mov	eax, [ebp-0Ch]
		dec	ebx
		test	ebx, ebx
		lea	edx, [eax+ebx*8+4]
		mov	[ebp-14h], edx
		jl	short loc_46FBF9

loc_46FBDD:				; CODE XREF: .text:0046FBF7j
		mov	ecx, [ebp-14h]
		mov	eax, [ecx]
		push	eax
		push	edi
		call	loc_46E6EC
		add	esp, 8
		test	eax, eax
		jnz	short loc_46FBF9
		dec	ebx
		add	dword ptr [ebp-14h], 0FFFFFFF8h
		test	ebx, ebx
		jge	short loc_46FBDD

loc_46FBF9:				; CODE XREF: .text:0046FBDBj
					; .text:0046FBEEj
		inc	ebx
		cmp	ebx, [ebp-8]
		jge	short loc_46FC1D
		mov	edx, [ebp-8]
		mov	eax, ebx
		sub	edx, ebx
		shl	edx, 3
		shl	eax, 3
		push	edx		; n
		add	eax, [ebp-0Ch]
		push	eax		; src
		add	eax, 8
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch

loc_46FC1D:				; CODE XREF: .text:0046FBFDj
		mov	edx, [ebp-0Ch]
		mov	[edx+ebx*8], esi
		mov	ecx, [ebp-0Ch]
		mov	[ecx+ebx*8+4], edi
		inc	dword ptr [ebp-8]

loc_46FC2D:				; CODE XREF: .text:0046FB77j
					; .text:0046FBA7j ...
		inc	dword ptr [ebp-4]

loc_46FC30:				; CODE XREF: .text:0046FB5Dj
		mov	eax, [ebp-4]
		cmp	eax, aqueue.n
		jl	loc_46FB62
		cmp	dword_5BDD10, 3
		jnz	short loc_46FC9F
		xor	edx, edx
		mov	[ebp-4], edx
		mov	ecx, [ebp-0Ch]	; int
		mov	ebx, ecx
		mov	eax, [ebp-4]
		cmp	eax, [ebp-8]
		jge	short loc_46FC9F

loc_46FC5A:				; CODE XREF: .text:0046FC9Dj
		mov	esi, [ebx]
		mov	edi, [ebx+4]
		mov	edx, [esi+8]
		test	dh, 2
		jz	short loc_46FC91
		mov	eax, [edi+8]	; int
		test	eax, 10000h
		jnz	short loc_46FC91
		test	eax, 300000h
		jz	short loc_46FC91
		and	edx, 40000000h	; int
		push	edx		; int
		push	0		; int
		push	edi		; int
		call	loc_46EB44
		add	esp, 0Ch
		and	dword ptr [esi+8], 0FFFFFDFFh

loc_46FC91:				; CODE XREF: .text:0046FC65j
					; .text:0046FC6Fj ...
		inc	dword ptr [ebp-4]
		add	ebx, 8
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-8]
		jl	short loc_46FC5A

loc_46FC9F:				; CODE XREF: .text:0046FC46j
					; .text:0046FC58j
		mov	eax, dword_5BDD10
		cmp	eax, 2
		jz	short loc_46FCAE
		cmp	eax, 3
		jnz	short loc_46FCF9

loc_46FCAE:				; CODE XREF: .text:0046FCA7j
		xor	edx, edx	; int
		mov	[ebp-4], edx
		mov	ecx, [ebp-0Ch]	; int
		mov	ebx, ecx
		mov	eax, [ebp-4]
		cmp	eax, [ebp-8]
		jge	short loc_46FCF9

loc_46FCC0:				; CODE XREF: .text:0046FCF7j
		mov	esi, [ebx]
		mov	edi, [ebx+4]
		mov	eax, [esi+8]
		test	ah, 2
		jz	short loc_46FCEB
		test	byte ptr [edi+0Ah], 31h
		jnz	short loc_46FCEB
		and	eax, 40000000h	; int
		push	eax		; int
		push	0		; int
		push	edi		; int
		call	loc_46EB44
		add	esp, 0Ch
		and	dword ptr [esi+8], 0FFFFFDFFh

loc_46FCEB:				; CODE XREF: .text:0046FCCBj
					; .text:0046FCD1j
		inc	dword ptr [ebp-4]
		add	ebx, 8
		mov	edx, [ebp-4]	; int
		cmp	edx, [ebp-8]
		jl	short loc_46FCC0

loc_46FCF9:				; CODE XREF: .text:0046FCACj
					; .text:0046FCBEj
		cmp	dword_5BDD10, 0
		jz	short loc_46FD4D
		xor	ecx, ecx	; int
		mov	[ebp-4], ecx
		mov	eax, [ebp-0Ch]
		mov	ebx, eax
		mov	eax, [ebp-4]
		cmp	eax, [ebp-8]
		jge	short loc_46FD4D

loc_46FD14:				; CODE XREF: .text:0046FD4Bj
		mov	esi, [ebx]
		mov	edi, [ebx+4]
		mov	eax, [esi+8]
		test	ah, 2
		jz	short loc_46FD3F
		test	byte ptr [edi+0Ah], 1
		jz	short loc_46FD3F
		and	eax, 40000000h	; int
		push	eax		; int
		push	0		; int
		push	edi		; int
		call	loc_46EB44
		add	esp, 0Ch
		and	dword ptr [esi+8], 0FFFFFDFFh

loc_46FD3F:				; CODE XREF: .text:0046FD1Fj
					; .text:0046FD25j
		inc	dword ptr [ebp-4]
		add	ebx, 8
		mov	edx, [ebp-4]
		cmp	edx, [ebp-8]
		jl	short loc_46FD14

loc_46FD4D:				; CODE XREF: .text:0046FD00j
					; .text:0046FD12j
		push	offset aqueue	; sd
		call	Deletenonconfirmedsorteddata
		pop	ecx
		mov	ecx, [ebp-0Ch]
		push	ecx		; data
		call	Memfree
		pop	ecx
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		mov	eax, [ebp-10h]
		push	eax		; hCursor
		call	SetCursor

loc_46FD7C:				; CODE XREF: .text:0046FAECj
					; .text:0046FAF9j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_46FD84:				; CODE XREF: .text:004B6F0Fp
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	eax, [esi]
		push	eax		; _addr
		call	Findmodule
		pop	ecx		; int
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	loc_46FECE
		xor	ebx, ebx
		mov	eax, [esi]
		mov	addr0, eax
		mov	edi, [esi+4]
		mov	_size, edi
		add	eax, edi	; int
		mov	addr1, eax
		push	2		; flags
		push	edi		; size
		call	Memalloc
		add	esp, 8
		mov	copy, eax
		cmp	copy, 0
		jnz	short loc_46FDDB
		mov	ebx, 1

loc_46FDDB:				; CODE XREF: .text:0046FDD4j
		push	2		; flags
		mov	eax, _size	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		mov	s, edi
		test	edi, edi
		jnz	short loc_46FDFC
		mov	ebx, 1

loc_46FDFC:				; CODE XREF: .text:0046FDF5j
		xor	eax, eax
		xor	edx, edx
		mov	dword_5E5D70, eax
		xor	ecx, ecx
		mov	dword_5E5D74, edx
		mov	dword_5E5D88, ecx
		test	ebx, ebx
		jnz	short loc_46FE39
		mov	eax, dword_5CBB98
		mov	edx, _size
		or	eax, dword_5CBBAC
		mov	ecx, addr0
		push	eax		; keephittrace
		push	edx		; size
		push	ecx		; base
		call	Removeanalysis
		add	esp, 0Ch

loc_46FE39:				; CODE XREF: .text:0046FE15j
		test	ebx, ebx
		jnz	short loc_46FE64
		push	5		; mode
		mov	eax, _size
		push	eax		; size
		mov	edx, addr0
		push	edx		; _addr
		mov	ecx, copy
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_46FE64
		mov	ebx, 1

loc_46FE64:				; CODE XREF: .text:0046FE3Bj
					; .text:0046FE5Dj
		test	ebx, ebx
		jnz	short loc_46FE8D
		mov	eax, _size
		mov	edx, addr0
		push	eax
		push	edx
		mov	ecx, [ebp-4]
		push	ecx
		call	loc_45D9F8
		add	esp, 0Ch
		call	Mergequickdata
		push	esi
		call	loc_46E5E0
		pop	ecx

loc_46FE8D:				; CODE XREF: .text:0046FE66j
		mov	eax, copy
		test	eax, eax
		jz	short loc_46FEA5
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	copy, edx

loc_46FEA5:				; CODE XREF: .text:0046FE94j
		mov	eax, s
		test	eax, eax
		jz	short loc_46FEBD
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	s, edx

loc_46FEBD:				; CODE XREF: .text:0046FEACj
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_46FECE:				; CODE XREF: .text:0046FD9Ej
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_46FED4:				; CODE XREF: .text:004599CEp
					; .text:004B6F28p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	edi, offset _size
		test	esi, esi
		jz	loc_46FFDF
		test	byte ptr [esi+0Bh], 8
		jnz	loc_46FFDF
		cmp	dword ptr [esi+4], 0
		jz	loc_46FFDF
		mov	eax, [esi+64h]
		test	eax, eax
		jz	short loc_46FF1B
		cmp	dword ptr [ebp+0Ch], 0
		jz	loc_46FFDF
		push	eax		; data
		call	Memfree
		pop	ecx		; int
		xor	edx, edx	; int
		mov	[esi+64h], edx

loc_46FF1B:				; CODE XREF: .text:0046FF03j
		mov	eax, [esi]
		mov	addr0, eax
		mov	ebx, [esi+4]
		mov	[edi], ebx
		add	eax, ebx	; int
		mov	addr1, eax
		push	2		; flags
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	s, eax
		cmp	s, 0
		jz	loc_46FFDF
		cmp	VersionInformation.dwPlatformId, 1
		jnz	short loc_46FF73
		push	0		; int
		push	0		; int
		mov	eax, [edi]
		mov	edx, addr0
		push	eax		; int
		push	edx		; int
		push	offset aThread_informa ; "THREAD_INFORMATION_BLOCK_95"
		call	loc_45C938
		add	esp, 14h
		mov	ebx, eax
		jmp	short loc_46FF90
; ---------------------------------------------------------------------------

loc_46FF73:				; CODE XREF: .text:0046FF52j
		push	0		; int
		push	0		; int
		mov	eax, [edi]
		mov	edx, addr0
		push	eax		; int
		push	edx		; int
		push	offset aThread_infor_0 ; "THREAD_INFORMATION_BLOCK_NT"
		call	loc_45C938
		add	esp, 14h
		mov	ebx, eax

loc_46FF90:				; CODE XREF: .text:0046FF71j
		xor	eax, eax
		cmp	ebx, eax
		jbe	short loc_46FFB7

loc_46FF96:				; CODE XREF: .text:0046FFA3j
		mov	edx, s
		and	byte ptr [edx+eax], 9Fh
		inc	eax
		cmp	ebx, eax
		ja	short loc_46FF96
		jmp	short loc_46FFB7
; ---------------------------------------------------------------------------

loc_46FFA7:				; CODE XREF: .text:0046FFBCj
		push	4
		push	ebx
		push	4
		call	loc_45C740
		add	esp, 0Ch
		add	ebx, 4

loc_46FFB7:				; CODE XREF: .text:0046FF94j
					; .text:0046FFA5j
		lea	ecx, [ebx+4]
		cmp	ecx, [edi]
		jbe	short loc_46FFA7
		jmp	short loc_46FFCE
; ---------------------------------------------------------------------------

loc_46FFC0:				; CODE XREF: .text:0046FFD0j
		push	1
		push	ebx
		push	3
		call	loc_45C740
		add	esp, 0Ch
		inc	ebx

loc_46FFCE:				; CODE XREF: .text:0046FFBEj
		cmp	ebx, [edi]
		jb	short loc_46FFC0
		call	Mergequickdata
		mov	eax, s
		mov	[esi+64h], eax

loc_46FFDF:				; CODE XREF: .text:0046FEE4j
					; .text:0046FEEEj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_46FFE4:				; CODE XREF: .text:004599E3p
					; .text:004B6F3Fp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		test	edi, edi
		jz	loc_4700CE
		test	byte ptr [edi+0Bh], 8
		jnz	loc_4700CE

loc_46FFFF:
		cmp	dword ptr [edi+4], 0
		jz	loc_4700CE
		mov	eax, [edi+64h]
		test	eax, eax
		jz	short loc_470026
		cmp	dword ptr [ebp+0Ch], 0
		jz	loc_4700CE
		push	eax		; data
		call	Memfree
		pop	ecx		; int
		xor	edx, edx	; int
		mov	[edi+64h], edx

loc_470026:				; CODE XREF: .text:0047000Ej
		mov	eax, [edi]
		mov	addr0, eax
		mov	ebx, [edi+4]
		mov	_size, ebx
		add	eax, ebx	; int
		mov	addr1, eax
		push	2		; flags
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		mov	s, esi
		test	esi, esi
		jz	short loc_4700CE
		push	0		; int
		push	0		; int
		mov	eax, _size
		push	eax		; int
		mov	edx, addr0
		push	edx		; int
		push	offset aRtl_user_proce ; s1
		call	loc_45C938
		add	esp, 14h
		mov	ebx, eax
		xor	esi, esi

loc_470076:				; CODE XREF: .text:004700A6j
		cmp	ebx, _size
		jnb	short loc_4700B8
		mov	eax, _size
		push	0		; int
		sub	eax, ebx
		mov	edx, addr0
		push	0		; int
		push	eax		; int
		add	edx, ebx
		push	edx		; int
		push	offset aRtl_drive_lett ; s1
		call	loc_45C938
		add	esp, 14h
		add	ebx, eax
		inc	esi
		cmp	esi, 20h
		jl	short loc_470076
		jmp	short loc_4700B8
; ---------------------------------------------------------------------------

loc_4700AA:				; CODE XREF: .text:004700BEj
		push	1
		push	ebx
		push	3
		call	loc_45C740
		add	esp, 0Ch
		inc	ebx

loc_4700B8:				; CODE XREF: .text:0047007Cj
					; .text:004700A8j
		cmp	ebx, _size
		jb	short loc_4700AA
		call	Mergequickdata
		mov	ecx, s
		mov	[edi+64h], ecx

loc_4700CE:				; CODE XREF: .text:0046FFEFj
					; .text:0046FFF9j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4700D4:				; CODE XREF: .text:00451FBEp
					; .text:004B6F57p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	edi, offset _size
		test	esi, esi
		jz	loc_4701F9
		test	byte ptr [esi+0Bh], 8
		jnz	loc_4701F9
		cmp	dword ptr [esi+4], 0
		jz	loc_4701F9
		cmp	VersionInformation.dwPlatformId, 2
		jnz	loc_4701F9
		cmp	VersionInformation.dwMajorVersion, 5
		jb	loc_4701F9
		mov	eax, [esi+64h]
		test	eax, eax
		jz	short loc_470135
		cmp	dword ptr [ebp+0Ch], 0
		jz	loc_4701F9
		push	eax		; data
		call	Memfree
		pop	ecx		; int
		xor	edx, edx	; int
		mov	[esi+64h], edx

loc_470135:				; CODE XREF: .text:0047011Dj
		mov	eax, [esi]
		mov	addr0, eax
		mov	ebx, [esi+4]
		mov	[edi], ebx
		add	eax, ebx	; int
		mov	addr1, eax
		push	2		; flags
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	s, eax
		cmp	s, 0
		jz	loc_4701F9
		cmp	VersionInformation.dwMinorVersion, 0
		jnz	short loc_47018D
		push	0		; int
		push	0		; int
		mov	eax, [edi]
		mov	edx, addr0
		push	eax		; int
		push	edx		; int
		push	offset aPeb_win2000 ; "PEB_WIN2000"
		call	loc_45C938
		add	esp, 14h
		mov	ebx, eax
		jmp	short loc_4701AA
; ---------------------------------------------------------------------------

loc_47018D:				; CODE XREF: .text:0047016Cj
		push	0		; int
		push	0		; int
		mov	eax, [edi]
		mov	edx, addr0
		push	eax		; int
		push	edx		; int
		push	offset aPeb_winxp ; "PEB_WINXP"
		call	loc_45C938
		add	esp, 14h
		mov	ebx, eax

loc_4701AA:				; CODE XREF: .text:0047018Bj
		xor	eax, eax
		cmp	ebx, eax
		jbe	short loc_4701D1

loc_4701B0:				; CODE XREF: .text:004701BDj
		mov	edx, s
		and	byte ptr [edx+eax], 9Fh
		inc	eax
		cmp	ebx, eax
		ja	short loc_4701B0
		jmp	short loc_4701D1
; ---------------------------------------------------------------------------

loc_4701C1:				; CODE XREF: .text:004701D6j
		push	4
		push	ebx
		push	4
		call	loc_45C740
		add	esp, 0Ch
		add	ebx, 4

loc_4701D1:				; CODE XREF: .text:004701AEj
					; .text:004701BFj
		lea	ecx, [ebx+4]
		cmp	ecx, [edi]
		jbe	short loc_4701C1
		jmp	short loc_4701E8
; ---------------------------------------------------------------------------

loc_4701DA:				; CODE XREF: .text:004701EAj
		push	1
		push	ebx
		push	3
		call	loc_45C740
		add	esp, 0Ch
		inc	ebx

loc_4701E8:				; CODE XREF: .text:004701D8j
		cmp	ebx, [edi]
		jb	short loc_4701DA
		call	Mergequickdata
		mov	eax, s
		mov	[esi+64h], eax

loc_4701F9:				; CODE XREF: .text:004700E4j
					; .text:004700EEj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_470200:				; CODE XREF: .text:004520DAp
					; .text:004B6F6Fp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF6ECh
		push	ebx
		push	esi
		push	edi
		mov	edi, offset _size
		cmp	dword ptr [ebp+8], 0
		jz	loc_47042B
		mov	eax, [ebp+8]
		test	byte ptr [eax+0Bh], 8
		jnz	loc_47042B
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+4], 1000h
		jnz	loc_47042B
		cmp	VersionInformation.dwPlatformId, 2
		jnz	loc_47042B
		cmp	VersionInformation.dwMajorVersion, 5
		jb	loc_47042B
		mov	ecx, [ebp+8]
		mov	eax, [ecx+64h]
		test	eax, eax
		jz	short loc_47027C
		cmp	dword ptr [ebp+0Ch], 0
		jz	loc_47042B
		push	eax		; data
		call	Memfree
		pop	ecx
		mov	edx, [ebp+8]
		xor	ecx, ecx	; int
		mov	[edx+64h], ecx

loc_47027C:				; CODE XREF: .text:00470261j
		mov	eax, [ebp+8]
		mov	edx, [ebp+8]	; int
		mov	eax, [eax]
		mov	addr0, eax
		mov	ebx, [edx+4]
		mov	[edi], ebx
		add	eax, ebx	; int
		push	2		; flags
		push	ebx		; size
		mov	addr1, eax
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		mov	s, esi
		test	esi, esi
		jz	loc_47042B
		push	0		; int
		push	0		; int
		mov	eax, [edi]
		mov	edx, addr0
		push	eax		; int
		push	edx		; int
		push	offset aKuser_shared_0 ; s1
		call	loc_45C938
		add	esp, 14h
		mov	esi, eax
		xor	ebx, ebx
		cmp	esi, ebx
		jbe	short loc_4702F3

loc_4702D3:				; CODE XREF: .text:004702DFj
		mov	eax, s
		and	byte ptr [eax+ebx], 9Fh
		inc	ebx
		cmp	esi, ebx
		ja	short loc_4702D3
		jmp	short loc_4702F3
; ---------------------------------------------------------------------------

loc_4702E3:				; CODE XREF: .text:004702F8j
		push	4
		push	esi
		push	4
		call	loc_45C740
		add	esp, 0Ch
		add	esi, 4

loc_4702F3:				; CODE XREF: .text:004702D1j
					; .text:004702E1j
		lea	edx, [esi+4]
		cmp	edx, [edi]
		jbe	short loc_4702E3
		jmp	short loc_47030A
; ---------------------------------------------------------------------------

loc_4702FC:				; CODE XREF: .text:0047030Cj
		push	1
		push	esi
		push	3
		call	loc_45C740
		add	esp, 0Ch
		inc	esi

loc_47030A:				; CODE XREF: .text:004702FAj
		cmp	esi, [edi]
		jb	short loc_4702FC
		mov	esi, 40h
		push	1		; mode
		push	esi		; size
		mov	eax, [ebp+8]
		mov	edx, [eax]
		add	edx, 300h
		push	edx		; _addr
		lea	ecx, [ebp-44h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	esi, eax
		jnz	loc_47041A
		cmp	dword ptr [ebp-44h], 340FD48Bh
		jnz	loc_47041A
		xor	ebx, ebx
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_4703C1
; ---------------------------------------------------------------------------

loc_47034C:				; CODE XREF: .text:004703CEj
		push	0		; predict
		push	0		; reg
		lea	edx, [ebp-1914h]
		push	0		; mode
		push	edx		; da
		push	0		; dec
		mov	ecx, [ebp+8]
		mov	edx, esi
		sub	edx, ebx
		mov	eax, [ecx]
		add	eax, ebx
		lea	ecx, [ebp-44h]
		add	eax, 300h
		add	ecx, ebx
		push	eax		; ip
		push	edx		; cmdsize
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		mov	edi, eax
		test	edi, edi
		jz	short loc_4703EA
		push	edi
		lea	eax, [ebx+300h]
		push	eax
		push	1Ch
		call	loc_45C740
		add	esp, 0Ch
		mov	edx, [ebp-1900h]
		and	edx, 1Fh
		cmp	edx, 0Fh
		jnz	short loc_4703BF
		lea	ecx, [ebx+300h]
		push	ecx
		mov	eax, [ebp-4]
		add	eax, 300h
		push	eax
		call	loc_45CC08
		add	esp, 8
		lea	edx, [edi+ebx]
		mov	[ebp-4], edx

loc_4703BF:				; CODE XREF: .text:0047039Fj
		add	ebx, edi

loc_4703C1:				; CODE XREF: .text:0047034Aj
		lea	ecx, [ebx+2]
		cmp	esi, ecx
		jbe	short loc_4703EA
		cmp	word ptr [ebp+ebx-44h],	0
		jnz	loc_47034C
		jmp	short loc_4703EA
; ---------------------------------------------------------------------------

loc_4703D6:				; CODE XREF: .text:004703F1j
		push	1
		lea	eax, [ebx+300h]
		push	eax
		push	3
		call	loc_45C740
		add	esp, 0Ch
		inc	ebx

loc_4703EA:				; CODE XREF: .text:0047037Fj
					; .text:004703C6j ...
		cmp	esi, ebx
		jbe	short loc_4703F3
		test	bl, 3
		jnz	short loc_4703D6

loc_4703F3:				; CODE XREF: .text:004703ECj
		call	Mergequickdata
		push	2Ch		; type3
		push	2Bh		; type2
		push	34h		; type1
		mov	edx, [ebp+8]
		mov	eax, [edx]
		add	ebx, eax
		add	ebx, 300h
		push	ebx		; addr1
		add	eax, 300h
		push	eax		; addr0
		call	Deletedatarange
		add	esp, 14h

loc_47041A:				; CODE XREF: .text:00470330j
					; .text:0047033Dj
		call	Mergequickdata
		mov	edx, [ebp+8]
		mov	ecx, s
		mov	[edx+64h], ecx

loc_47042B:				; CODE XREF: .text:0047021Cj
					; .text:00470229j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_470434:				; CODE XREF: .text:004B6F86p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFB8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	loc_4705BC
		test	byte ptr [esi+0Bh], 8
		jnz	loc_4705BC
		cmp	dword ptr [esi+4], 0
		jz	loc_4705BC
		cmp	VersionInformation.dwPlatformId, 2
		jnz	loc_4705BC
		mov	eax, peblock
		test	eax, eax
		jz	loc_4705BC
		push	1		; mode
		push	4		; size
		add	eax, 94h
		push	eax		; _addr
		lea	edx, [ebp-4]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jz	loc_4705BC
		mov	eax, [esi]
		cmp	eax, [ebp-4]
		ja	loc_4705BC
		mov	edx, eax
		add	edx, [esi+4]
		cmp	edx, [ebp-4]
		jbe	loc_4705BC
		mov	edx, eax
		mov	addr0, edx
		mov	eax, [esi+4]
		mov	_size, eax
		add	edx, eax
		mov	addr1, edx
		cmp	dword ptr [esi+4], 100000h
		jb	short loc_4704E9
		cmp	VersionInformation.dwMajorVersion, 5
		jb	short loc_4704E9
		cmp	VersionInformation.dwMajorVersion, 5
		jnz	short loc_4704F0
		cmp	VersionInformation.dwMinorVersion, 1
		jnb	short loc_4704F0

loc_4704E9:				; CODE XREF: .text:004704CCj
					; .text:004704D5j
		mov	edi, 40000h
		jmp	short loc_4704F5
; ---------------------------------------------------------------------------

loc_4704F0:				; CODE XREF: .text:004704DEj
					; .text:004704E7j
		mov	edi, 100000h

loc_4704F5:				; CODE XREF: .text:004704EEj
		mov	eax, [ebp-4]
		add	eax, edi
		cmp	eax, addr1
		ja	loc_4705BC
		mov	eax, [esi+64h]
		test	eax, eax
		jz	short loc_470523
		cmp	dword ptr [ebp+0Ch], 0
		jz	loc_4705BC
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx	; int
		mov	[esi+64h], edx

loc_470523:				; CODE XREF: .text:0047050Bj
		push	0		; flags
		mov	ecx, _size	; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		mov	s, ebx
		test	ebx, ebx
		jz	short loc_4705BC
		mov	eax, g_hCursor
		push	eax		; hCursor
		call	SetCursor
		mov	[ebp-8], eax
		mov	edx, _size
		push	edx		; n
		push	6		; c
		mov	ecx, s
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		xor	ebx, ebx
		cmp	edi, ebx
		jbe	short loc_4705A5

loc_47056C:				; CODE XREF: .text:004705A3j
		mov	eax, ebx
		lea	edx, [ebp-48h]
		shr	eax, 4
		push	eax
		push	offset a04x_1	; "[%04X] "
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		push	0		; int
		lea	ecx, [ebp-48h]
		push	ecx		; int
		push	10h		; int
		mov	eax, [ebp-4]
		add	eax, ebx
		push	eax		; int
		push	offset aGdi_table_entr ; "GDI_TABLE_ENTRY"
		call	loc_45C938
		add	esp, 14h
		add	ebx, 10h
		cmp	edi, ebx
		ja	short loc_47056C

loc_4705A5:				; CODE XREF: .text:0047056Aj
		call	Mergequickdata
		mov	edx, [ebp-8]
		push	edx		; hCursor
		call	SetCursor
		mov	ecx, s
		mov	[esi+64h], ecx

loc_4705BC:				; CODE XREF: .text:00470442j
					; .text:0047044Cj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4705C4(char arglist)
loc_4705C4:				; CODE XREF: .text:00415BB1p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF630h
		lea	eax, [ebp-100h]
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		mov	esi, 100h
		push	5		; mode
		push	esi		; size
		push	edi		; _addr
		push	eax		; buf
		xor	ebx, ebx
		call	Readmemory
		add	esp, 10h
		mov	esi, eax
		cmp	esi, ebx
		jbe	loc_4706A7

loc_4705FE:				; CODE XREF: .text:004706A1j
		push	0		; predict
		push	0		; reg
		lea	edx, [ebp-19D0h]
		push	0		; mode
		push	edx		; da
		lea	ecx, [ebx+edi]
		mov	eax, esi
		push	0		; dec
		sub	eax, ebx
		push	ecx		; ip
		lea	edx, [ebp-100h]
		push	eax		; cmdsize
		add	edx, ebx
		push	edx		; cmd
		call	Disasm
		add	esp, 20h
		test	eax, eax
		jz	short loc_4706A7
		cmp	dword ptr [ebp-19A4h], 0
		jnz	short loc_4706A7
		mov	ecx, [ebp-19BCh]
		and	ecx, 1Fh
		add	ecx, 0FFFFFFFAh	; switch 26 cases
		cmp	ecx, 19h
		ja	short loc_47069D ; jumptable 0047064B default case
		mov	cl, ds:byte_470652[ecx]
		jmp	ds:off_47066C[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
byte_470652	db	3,     1,     3,     3 ; DATA XREF: .text:00470645r
		db	0,     0,     0,     0 ; indirect table	for switch statement
		db	0,     2,     1,     0
		db	0,     0,     0,     0
		db	0,     1,     0,     0
		db	0,     0,     0,     0
		db	1,     1
off_47066C	dd offset loc_47069D	; DATA XREF: .text:0047064Br
		dd offset loc_470699	; jump table for switch	statement
		dd offset loc_470691
		dd offset loc_47067C
; ---------------------------------------------------------------------------

loc_47067C:				; CODE XREF: .text:0047064Bj
					; DATA XREF: .text:off_47066Co
		mov	edx, [ebp-1990h] ; jumptable 0047064B cases 6,8,9
		cmp	edi, edx
		ja	short loc_47068D
		lea	ecx, [ebx+edi]
		cmp	edx, ecx
		jb	short loc_47069D ; jumptable 0047064B default case

loc_47068D:				; CODE XREF: .text:00470684j
		xor	eax, eax
		jmp	short loc_4706A9
; ---------------------------------------------------------------------------

loc_470691:				; CODE XREF: .text:0047064Bj
					; DATA XREF: .text:off_47066Co
		mov	eax, [ebp-19C4h] ; jumptable 0047064B case 15
		jmp	short loc_4706A9
; ---------------------------------------------------------------------------

loc_470699:				; CODE XREF: .text:0047064Bj
					; DATA XREF: .text:off_47066Co
		xor	eax, eax	; jumptable 0047064B cases 7,16,23,30,31
		jmp	short loc_4706A9
; ---------------------------------------------------------------------------

loc_47069D:				; CODE XREF: .text:00470643j
					; .text:0047064Bj ...
		add	ebx, eax	; jumptable 0047064B default case
		cmp	esi, ebx
		ja	loc_4705FE

loc_4706A7:				; CODE XREF: .text:004705F8j
					; .text:00470629j ...
		xor	eax, eax

loc_4706A9:				; CODE XREF: .text:0047068Fj
					; .text:00470697j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4706B0:				; CODE XREF: .text:00416C2Cp
					; .text:004709DEp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF40Ch
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+0Ch], 0
		mov	ebx, [ebp+8]
		jnz	short loc_4706F1
		push	3		; flags
		push	4000h		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		mov	dword_5E6128, esi
		push	800h		; nmax
		push	esi		; set
		call	Initset
		add	esp, 8

loc_4706F1:				; CODE XREF: .text:004706CAj
		cmp	dword_5E6128, 0
		jnz	short loc_470701
		xor	eax, eax
		jmp	loc_470A50
; ---------------------------------------------------------------------------

loc_470701:				; CODE XREF: .text:004706F8j
		push	ebx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_470719
		mov	edx, [eax]
		mov	[ebp-8], edx
		mov	ecx, [eax+4]
		mov	[ebp-0Ch], ecx
		jmp	short loc_470728
; ---------------------------------------------------------------------------

loc_470719:				; CODE XREF: .text:0047070Aj
		mov	dword ptr [ebp-8], 10000h
		mov	eax, userspacelimit
		mov	[ebp-0Ch], eax

loc_470728:				; CODE XREF: .text:00470717j
		mov	[ebp-114h], ebx
		xor	edx, edx
		mov	dword ptr [ebp-4], 1
		mov	[ebp-14h], edx

loc_47073A:				; CODE XREF: .text:00470759j
					; .text:00470763j ...
		mov	ecx, [ebp-4]
		cmp	dword ptr [ebp-4], 0
		lea	ebx, [ebp+ecx*4-114h]
		jle	loc_470A33

loc_47074E:				; CODE XREF: .text:00470A2Dj
		dec	dword ptr [ebp-4]
		add	ebx, 0FFFFFFFCh
		mov	esi, [ebx]
		cmp	esi, [ebp-8]
		jb	short loc_47073A
		mov	eax, [ebp-8]
		add	eax, [ebp-0Ch]
		cmp	esi, eax
		jnb	short loc_47073A
		push	esi		; value
		mov	edx, dword_5E6128
		push	edx		; set
		call	Isinset
		add	esp, 8
		test	eax, eax
		jnz	short loc_47073A
		push	5		; mode
		push	10h		; size
		push	esi		; _addr
		lea	ecx, [ebp-124h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	edi, eax
		test	edi, edi
		jz	short loc_47073A
		push	0		; predict
		push	0		; reg
		push	10h		; mode
		lea	eax, [ebp-1BF4h]
		push	eax		; da
		push	0		; dec
		push	esi		; ip
		push	edi		; cmdsize
		lea	edx, [ebp-124h]
		push	edx		; cmd
		call	Disasm
		add	esp, 20h
		mov	edi, eax
		test	edi, edi
		jz	short loc_47073A
		cmp	dword ptr [ebp-1BC8h], 0
		jnz	loc_47073A
		lea	ecx, [edi+esi]
		mov	eax, dword_5E6128
		dec	ecx
		push	ecx		; rmax
		push	esi		; rmin
		push	eax		; set
		call	Addrange
		add	esp, 0Ch
		mov	eax, [ebp-1BE0h]
		and	eax, 1Fh
		test	eax, eax
		jz	short loc_4707F0
		cmp	eax, 1
		jnz	loc_4708C8

loc_4707F0:				; CODE XREF: .text:004707E5j
		cmp	eax, 1
		jnz	short loc_470812
		test	byte ptr [ebp-1747h], 1
		jz	short loc_470812
		cmp	dword ptr [ebp-173Ch], 4
		jnz	short loc_470812
		mov	edx, [ebp-170Ch]
		mov	[ebp-10h], edx
		jmp	short loc_47084F
; ---------------------------------------------------------------------------

loc_470812:				; CODE XREF: .text:004707F3j
					; .text:004707FCj ...
		mov	eax, [ebp-1BDCh]
		and	eax, 0FF000000h
		cmp	eax, 1000000h
		jnz	short loc_470838
		test	byte ptr [ebp-1747h], 2
		jz	short loc_470838
		mov	edx, [ebp-1708h]
		mov	[ebp-10h], edx
		jmp	short loc_47084F
; ---------------------------------------------------------------------------

loc_470838:				; CODE XREF: .text:00470822j
					; .text:0047082Bj
		cmp	eax, 3000000h
		jnz	short loc_47084A
		mov	ecx, [ebp-1718h]
		mov	[ebp-10h], ecx
		jmp	short loc_47084F
; ---------------------------------------------------------------------------

loc_47084A:				; CODE XREF: .text:0047083Dj
		xor	eax, eax
		mov	[ebp-10h], eax

loc_47084F:				; CODE XREF: .text:00470810j
					; .text:00470836j ...
		mov	edx, [ebp-10h]
		cmp	edx, [ebp-8]
		jb	short loc_4708B9
		mov	ecx, [ebp-8]
		add	ecx, [ebp-0Ch]
		cmp	ecx, [ebp-10h]
		jbe	short loc_4708B9
		mov	eax, [ebp-10h]
		sub	eax, 4
		push	eax
		call	loc_46E740
		pop	ecx
		test	eax, eax
		jz	short loc_470881
		mov	edx, [ebp-10h]
		sub	edx, 4
		mov	[ebp-14h], edx
		jmp	loc_470A33
; ---------------------------------------------------------------------------

loc_470881:				; CODE XREF: .text:00470871j
		mov	ecx, [ebp-10h]
		push	ecx
		call	loc_46E740
		pop	ecx
		test	eax, eax
		jz	short loc_47089A
		mov	eax, [ebp-10h]
		mov	[ebp-14h], eax
		jmp	loc_470A33
; ---------------------------------------------------------------------------

loc_47089A:				; CODE XREF: .text:0047088Dj
		mov	edx, [ebp-10h]
		add	edx, 4
		push	edx
		call	loc_46E740
		pop	ecx
		test	eax, eax
		jz	short loc_4708B9
		mov	ecx, [ebp-10h]
		add	ecx, 4
		mov	[ebp-14h], ecx
		jmp	loc_470A33
; ---------------------------------------------------------------------------

loc_4708B9:				; CODE XREF: .text:00470855j
					; .text:00470860j ...
		add	edi, esi
		mov	[ebx], edi
		inc	dword ptr [ebp-4]
		add	ebx, 4
		jmp	loc_470A29
; ---------------------------------------------------------------------------

loc_4708C8:				; CODE XREF: .text:004707EAj
		cmp	eax, 6
		jnz	short loc_4708E8
		mov	eax, [ebp-1BB4h]
		test	eax, eax
		jz	loc_470A29
		mov	[ebx], eax
		inc	dword ptr [ebp-4]
		add	ebx, 4
		jmp	loc_470A29
; ---------------------------------------------------------------------------

loc_4708E8:				; CODE XREF: .text:004708CBj
		cmp	eax, 8
		jz	short loc_4708F2
		cmp	eax, 9
		jnz	short loc_470921

loc_4708F2:				; CODE XREF: .text:004708EBj
		add	edi, esi
		mov	[ebx], edi
		inc	dword ptr [ebp-4]
		add	ebx, 4
		mov	eax, [ebp-1BB4h]
		test	eax, eax
		jz	loc_470A29
		cmp	dword ptr [ebp-4], 40h
		jge	loc_470A29
		mov	[ebx], eax
		inc	dword ptr [ebp-4]
		add	ebx, 4
		jmp	loc_470A29
; ---------------------------------------------------------------------------

loc_470921:				; CODE XREF: .text:004708F0j
		cmp	eax, 0Ch
		jnz	loc_4709FB
		mov	eax, [ebp-1BB4h]
		cmp	eax, [ebp-8]
		jb	loc_4709EF
		mov	edx, [ebp-8]
		add	edx, [ebp-0Ch]
		cmp	eax, edx
		jnb	loc_4709EF
		cmp	dword ptr [ebp+0Ch], 5
		jge	loc_4709EF
		push	100h		; nname
		lea	ecx, [ebp-324h]
		push	ecx		; _name
		push	22h		; type
		mov	eax, [ebp-1BB4h]
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jz	short loc_4709D2
		push	offset aRtlallocatehea ; "RtlAllocateHeap"
		lea	edx, [ebp-324h]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4709EF
		push	offset aRtlencodepoint ; "RtlEncodePointer"
		lea	ecx, [ebp-324h]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4709EF
		push	offset aRtlentercritic ; "RtlEnterCriticalSection"
		lea	eax, [ebp-324h]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4709EF
		push	offset aRtlleavecritic ; s2
		lea	edx, [ebp-324h]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4709EF

loc_4709D2:				; CODE XREF: .text:00470970j
		mov	ecx, [ebp+0Ch]
		inc	ecx
		push	ecx
		mov	eax, [ebp-1BB4h]
		push	eax
		call	loc_4706B0
		add	esp, 8
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_470A33

loc_4709EF:				; CODE XREF: .text:00470933j
					; .text:00470941j ...
		add	edi, esi
		mov	[ebx], edi
		inc	dword ptr [ebp-4]
		add	ebx, 4
		jmp	short loc_470A29
; ---------------------------------------------------------------------------

loc_4709FB:				; CODE XREF: .text:00470924j
		cmp	eax, 0Fh
		jz	loc_47073A
		cmp	eax, 10h
		jz	loc_47073A
		cmp	eax, 1Eh
		jz	loc_47073A
		cmp	eax, 1Fh
		jz	loc_47073A
		add	edi, esi
		mov	[ebx], edi
		inc	dword ptr [ebp-4]
		add	ebx, 4

loc_470A29:				; CODE XREF: .text:004708C3j
					; .text:004708D5j ...
		cmp	dword ptr [ebp-4], 0
		jg	loc_47074E

loc_470A33:				; CODE XREF: .text:00470748j
					; .text:0047087Cj ...
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_470A4D
		mov	eax, dword_5E6128
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	dword_5E6128, edx

loc_470A4D:				; CODE XREF: .text:00470A37j
		mov	eax, [ebp-14h]

loc_470A50:				; CODE XREF: .text:004706FCj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 220. _Maybecommand
; Exported entry 647. Maybecommand

; bool __cdecl Maybecommand(ulong _addr,	int requireanalysis)
		public Maybecommand
Maybecommand:				; CODE XREF: .text:00497AFAp
					; .text:00497B46p ...
		push	ebp		; _Maybecommand
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		push	0		; psize
		push	esi		; _addr
		call	Finddecode
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jnz	short loc_470A80
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_470A7C
		xor	eax, eax
		jmp	short loc_470AE7
; ---------------------------------------------------------------------------

loc_470A7C:				; CODE XREF: .text:00470A76j
		xor	ebx, ebx
		jmp	short loc_470A87
; ---------------------------------------------------------------------------

loc_470A80:				; CODE XREF: .text:00470A70j
		xor	ebx, ebx
		mov	bl, [edi]
		and	ebx, 1Fh

loc_470A87:				; CODE XREF: .text:00470A7Ej
		push	esi		; _addr
		call	Findmodule
		pop	ecx
		cmp	ebx, 1Ch
		jz	short loc_470AA6
		cmp	ebx, 1Dh
		jz	short loc_470AA6
		cmp	ebx, 1Eh
		jz	short loc_470AA6
		cmp	ebx, 1Fh
		jz	short loc_470AA6
		test	ebx, ebx
		jnz	short loc_470ADE

loc_470AA6:				; CODE XREF: .text:00470A91j
					; .text:00470A96j ...
		test	edi, edi
		jnz	short loc_470AAE
		test	eax, eax
		jz	short loc_470ADE

loc_470AAE:				; CODE XREF: .text:00470AA8j
		test	edi, edi
		jnz	short loc_470AE2
		test	eax, eax
		jz	short loc_470AE2
		mov	edx, [eax+458h]
		cmp	esi, edx
		jb	short loc_470ACA
		add	edx, [eax+45Ch]
		cmp	esi, edx
		jb	short loc_470AE2

loc_470ACA:				; CODE XREF: .text:00470ABEj
		mov	edx, [eax+8D4h]
		cmp	esi, edx
		jb	short loc_470ADE
		add	edx, [eax+8D8h]
		cmp	esi, edx
		jb	short loc_470AE2

loc_470ADE:				; CODE XREF: .text:00470AA4j
					; .text:00470AACj ...
		xor	eax, eax
		jmp	short loc_470AE7
; ---------------------------------------------------------------------------

loc_470AE2:				; CODE XREF: .text:00470AB0j
					; .text:00470AB4j ...
		mov	eax, 1

loc_470AE7:				; CODE XREF: .text:00470A7Aj
					; .text:00470AE0j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_470AEC:				; DATA XREF: .text:00470B69o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		mov	edx, [ebp+0Ch]
		mov	ebx, [edx]
		mov	ecx, [eax]
		cmp	ebx, ecx
		jbe	short loc_470B04
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_470B04:				; CODE XREF: .text:00470AFCj
		cmp	ebx, ecx
		jnb	short loc_470B10
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_470B10:				; CODE XREF: .text:00470B06j
		mov	ebx, [edx+4]
		mov	ecx, [eax+4]
		cmp	ebx, ecx
		jbe	short loc_470B20
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_470B20:				; CODE XREF: .text:00470B18j
		cmp	ebx, ecx
		jnb	short loc_470B2C
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_470B2C:				; CODE XREF: .text:00470B22j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_470B34:				; CODE XREF: .text:00471312p
					; .text:00471380p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	loc_470BF6
		mov	eax, [ebx+14h]
		cmp	eax, [ebx+18h]
		jz	loc_470BF6
		cmp	dword ptr [ebx+10h], 0
		jz	loc_470BF6
		cmp	eax, 2
		jl	loc_470BF6
		mov	esi, [ebx+8]
		push	offset loc_470AEC ; _DWORD
		push	9		; size
		push	eax		; count
		push	esi		; data
		call	Heapsort
		add	esp, 10h
		xor	eax, eax
		mov	[ebp-8], eax
		mov	eax, esi
		mov	dword ptr [ebp-4], 1
		lea	edx, [esi+9]
		jmp	short loc_470BE7
; ---------------------------------------------------------------------------

loc_470B8D:				; CODE XREF: .text:00470BEDj
		mov	ecx, [edx]
		cmp	ecx, [eax]
		jz	short loc_470BAB
		inc	dword ptr [ebp-8]
		add	eax, 9
		mov	ecx, [edx]
		mov	[eax], ecx
		mov	ecx, [edx+4]
		mov	[eax+4], ecx
		mov	cl, [edx+8]
		mov	[eax+8], cl
		jmp	short loc_470BE1
; ---------------------------------------------------------------------------

loc_470BAB:				; CODE XREF: .text:00470B91j
		cmp	dword ptr [eax+4], 0
		jnz	short loc_470BC3
		mov	ecx, [edx]
		mov	[eax], ecx
		mov	ecx, [edx+4]
		mov	[eax+4], ecx
		mov	cl, [edx+8]
		mov	[eax+8], cl
		jmp	short loc_470BE1
; ---------------------------------------------------------------------------

loc_470BC3:				; CODE XREF: .text:00470BAFj
		mov	ecx, [edx+4]
		cmp	ecx, [eax+4]
		jz	short loc_470BE1
		inc	dword ptr [ebp-8]
		add	eax, 9
		mov	ecx, [edx]
		mov	[eax], ecx
		mov	ecx, [edx+4]
		mov	[eax+4], ecx
		mov	cl, [edx+8]
		mov	[eax+8], cl

loc_470BE1:				; CODE XREF: .text:00470BA9j
					; .text:00470BC1j ...
		inc	dword ptr [ebp-4]
		add	edx, 9

loc_470BE7:				; CODE XREF: .text:00470B8Bj
		mov	ecx, [ebx+14h]
		cmp	ecx, [ebp-4]
		jg	short loc_470B8D
		mov	eax, [ebp-8]
		inc	eax
		mov	[ebx+14h], eax

loc_470BF6:				; CODE XREF: .text:00470B41j
					; .text:00470B4Dj ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_470BFC(const void *, const void *)
loc_470BFC:				; DATA XREF: .text:00470CA5o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		mov	esi, dword_5E612C
		mov	edx, [edx]
		mov	eax, [eax]
		lea	ebx, [edx+edx*8]
		mov	ebx, [esi+ebx+4]
		mov	esi, dword_5E612C
		lea	ecx, [eax+eax*8]
		mov	ecx, [esi+ecx+4]
		cmp	ebx, ecx
		jbe	short loc_470C2E
		or	eax, 0FFFFFFFFh
		jmp	short loc_470C84
; ---------------------------------------------------------------------------

loc_470C2E:				; CODE XREF: .text:00470C27j
		lea	ebx, [edx+edx*8]
		mov	esi, dword_5E612C
		cmp	ecx, [esi+ebx+4]
		jbe	short loc_470C44
		mov	eax, 1
		jmp	short loc_470C84
; ---------------------------------------------------------------------------

loc_470C44:				; CODE XREF: .text:00470C3Bj
		lea	ecx, [eax+eax*8]
		mov	ebx, dword_5E612C
		mov	ecx, [ebx+ecx]
		lea	ebx, [edx+edx*8]
		mov	esi, dword_5E612C
		cmp	ecx, [esi+ebx]
		jnb	short loc_470C63
		or	eax, 0FFFFFFFFh
		jmp	short loc_470C84
; ---------------------------------------------------------------------------

loc_470C63:				; CODE XREF: .text:00470C5Cj
		lea	ecx, [eax+eax*8]
		mov	eax, dword_5E612C
		mov	ecx, [eax+ecx]
		lea	edx, [edx+edx*8]
		mov	eax, dword_5E612C
		cmp	ecx, [eax+edx]
		jbe	short loc_470C82
		mov	eax, 1
		jmp	short loc_470C84
; ---------------------------------------------------------------------------

loc_470C82:				; CODE XREF: .text:00470C79j
		xor	eax, eax

loc_470C84:				; CODE XREF: .text:00470C2Cj
					; .text:00470C42j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_470C88:				; CODE XREF: .text:00471319p
					; .text:00471387p ...
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+8]
		test	edx, edx
		jz	short loc_470CC1
		xor	eax, eax
		jmp	short loc_470C9D
; ---------------------------------------------------------------------------

loc_470C96:				; CODE XREF: .text:00470CA0j
		mov	ecx, [edx+0Ch]
		mov	[ecx+eax*4], eax
		inc	eax

loc_470C9D:				; CODE XREF: .text:00470C94j
		cmp	eax, [edx+14h]
		jl	short loc_470C96
		mov	eax, [edx+8]
		push	offset loc_470BFC ; fcmp
		mov	dword_5E612C, eax
		push	4		; width
		mov	ecx, [edx+14h]
		push	ecx		; nelem
		mov	edx, [edx+0Ch]
		push	edx		; base
		call	_qsort
		add	esp, 10h

loc_470CC1:				; CODE XREF: .text:00470C90j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		