.code

; MENUFUNC loc_4C6C44
loc_4C6C44:				; DATA XREF: .text:004C7762o
					; .text:004C7779o ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	eax, dword_5FCB2C
		test	eax, eax
		jnz	short loc_4C6C5C
		xor	eax, eax
		jmp	short loc_4C6CD2
; ---------------------------------------------------------------------------

loc_4C6C5C:				; CODE XREF: .text:004C6C56j
		mov	edx, [eax]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4C6C6D
		xor	eax, eax
		jmp	short loc_4C6CD2
; ---------------------------------------------------------------------------

loc_4C6C6D:				; CODE XREF: .text:004C6C67j
		test	ebx, ebx
		jnz	short loc_4C6C89
		test	esi, esi
		jnz	short loc_4C6C82
		test	dword ptr [eax+8], 2001000h
		jnz	short loc_4C6C82
		xor	eax, eax
		jmp	short loc_4C6CD2
; ---------------------------------------------------------------------------

loc_4C6C82:				; CODE XREF: .text:004C6C73j
					; .text:004C6C7Cj
		mov	eax, 1
		jmp	short loc_4C6CD2
; ---------------------------------------------------------------------------

loc_4C6C89:				; CODE XREF: .text:004C6C6Fj
		dec	ebx
		jnz	short loc_4C6CD0
		test	esi, esi
		jnz	short loc_4C6CAD
		push	0Dh		; mode
		mov	edx, dword_5FCB2C
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	ecx, [edx]
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4C6CCC
; ---------------------------------------------------------------------------

loc_4C6CAD:				; CODE XREF: .text:004C6C8Ej
		mov	eax, dword_5FCB2C
		push	90h		; mode
		push	0		; stackaddr
		mov	edx, [eax+4]
		push	edx		; selsize
		mov	ecx, [eax]
		push	ecx		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_4C6CCC:				; CODE XREF: .text:004C6CABj
		xor	eax, eax
		jmp	short loc_4C6CD2
; ---------------------------------------------------------------------------

loc_4C6CD0:				; CODE XREF: .text:004C6C8Aj
		xor	eax, eax

loc_4C6CD2:				; CODE XREF: .text:004C6C5Aj
					; .text:004C6C6Bj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C6CD8:				; DATA XREF: .data:stru_55EF74o
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edi, eax
		xor	ebx, ebx
		jmp	short loc_4C6D07
; ---------------------------------------------------------------------------

loc_4C6CED:				; CODE XREF: .text:004C6D0Aj
		push	ebx		; index
		lea	eax, [esi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	byte ptr [eax+0Ah], 2
		jz	short loc_4C6D05
		inc	dword ptr [ebp-4]
		jmp	short loc_4C6D06
; ---------------------------------------------------------------------------

loc_4C6D05:				; CODE XREF: .text:004C6CFEj
		inc	edi

loc_4C6D06:				; CODE XREF: .text:004C6D03j
		inc	ebx

loc_4C6D07:				; CODE XREF: .text:004C6CEBj
		cmp	ebx, [esi+44h]
		jl	short loc_4C6CED
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4C6D37
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4C6D20
		test	edi, edi
		jnz	short loc_4C6D20
		xor	eax, eax
		jmp	short loc_4C6D8E
; ---------------------------------------------------------------------------

loc_4C6D20:				; CODE XREF: .text:004C6D16j
					; .text:004C6D1Aj
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4C6D30
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4C6D30
		xor	eax, eax
		jmp	short loc_4C6D8E
; ---------------------------------------------------------------------------

loc_4C6D30:				; CODE XREF: .text:004C6D24j
					; .text:004C6D2Aj
		mov	eax, 1
		jmp	short loc_4C6D8E
; ---------------------------------------------------------------------------

loc_4C6D37:				; CODE XREF: .text:004C6D10j
		cmp	dword ptr [ebp+14h], 1
		jnz	short loc_4C6D8C
		call	Suspendallthreads
		xor	ebx, ebx
		jmp	short loc_4C6D7B
; ---------------------------------------------------------------------------

loc_4C6D46:				; CODE XREF: .text:004C6D7Ej
		push	ebx		; index
		lea	eax, [esi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4C6D5F
		test	byte ptr [eax+0Ah], 2
		jnz	short loc_4C6D7A

loc_4C6D5F:				; CODE XREF: .text:004C6D57j
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4C6D6B
		test	byte ptr [eax+0Ah], 2
		jz	short loc_4C6D7A

loc_4C6D6B:				; CODE XREF: .text:004C6D63j
		mov	edx, [ebp+10h]
		push	edx		; enable
		mov	ecx, [eax]
		push	ecx		; _addr
		call	Enablemembreakpoint
		add	esp, 8

loc_4C6D7A:				; CODE XREF: .text:004C6D5Dj
					; .text:004C6D69j
		inc	ebx

loc_4C6D7B:				; CODE XREF: .text:004C6D44j
		cmp	ebx, [esi+44h]
		jl	short loc_4C6D46
		call	Resumeallthreads
		mov	eax, 1
		jmp	short loc_4C6D8E
; ---------------------------------------------------------------------------

loc_4C6D8C:				; CODE XREF: .text:004C6D3Bj
		xor	eax, eax

loc_4C6D8E:				; CODE XREF: .text:004C6D1Ej
					; .text:004C6D2Ej ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __usercall loc_4C6D94@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	char arglist, char src)
loc_4C6D94:				; CODE XREF: .text:0045928Ap
					; .text:004C705Fp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDC0h
		push	ebx		; arglist
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	loc_4C6E71
		push	offset aMemoryProtecti ; "Memory protection attributes in memory "...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		mov	eax, [ebx]
		push	eax		; _addr
		call	Addtolist
		add	esp, 0Ch
		mov	word ptr [ebp-240h], 40h
		push	offset aPage_x	; "PAGE_X"
		push	1Fh		; n
		lea	edx, [ebp-23Eh]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebp-200h]
		lea	eax, [ebp+0Ch]
		lea	edx, [ebp-240h]
		push	0		; nontriv
		push	100h		; ntext
		push	ecx		; text
		push	4		; ndata
		push	eax		; data
		push	edx		; prtype
		push	0		; pmod
		call	Decodeargument
		add	esp, 1Ch
		lea	ecx, [ebp-200h]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax		; arglist
		push	offset asc_55F106 ; " "
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h
		lea	edx, [ebp-200h]
		lea	ecx, [ebp+10h]
		lea	eax, [ebp-240h]
		push	0		; nontriv
		push	100h		; ntext
		push	edx		; text
		push	4		; ndata
		push	ecx		; data
		push	eax		; prtype
		push	0		; pmod
		call	Decodeargument
		add	esp, 1Ch
		lea	edx, [ebp-200h]
		push	edx
		mov	ecx, [ebp+10h]
		push	ecx		; arglist
		push	offset aNewProtection0 ; "  New	protection: %08X %s"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h

loc_4C6E71:				; CODE XREF: .text:004C6DA3j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C6E78:				; CODE XREF: .text:0044D5B7p
					; .text:00450BAAp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFBCh
		push	ebx
		push	esi
		push	edi
		mov	eax, run.status
		cmp	eax, 13h
		jz	short loc_4C6E90
		cmp	eax, 14h
		jnz	short loc_4C6E97

loc_4C6E90:				; CODE XREF: .text:004C6E89j
		xor	eax, eax
		jmp	loc_4C70C2
; ---------------------------------------------------------------------------

loc_4C6E97:				; CODE XREF: .text:004C6E8Ej
		call	Suspendallthreads
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4C6EB8
		push	0FFFFFFFFh	; addr1
		push	0		; addr0
		push	offset bppage	; sd
		call	Deletesorteddatarange
		add	esp, 0Ch
		jmp	loc_4C70BB
; ---------------------------------------------------------------------------

loc_4C6EB8:				; CODE XREF: .text:004C6EA0j
		cmp	dword_586178, 0
		jz	short loc_4C6EC6
		call	Listmemory

loc_4C6EC6:				; CODE XREF: .text:004C6EBFj
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	short loc_4C6EE1
; ---------------------------------------------------------------------------

loc_4C6ECD:				; CODE XREF: .text:004C6EEAj
		mov	ecx, [ebp-4]
		lea	ecx, [ecx+ecx*4]
		mov	eax, bppage.data
		xor	edx, edx
		mov	[eax+ecx*4+8], edx
		inc	dword ptr [ebp-4]

loc_4C6EE1:				; CODE XREF: .text:004C6ECBj
		mov	ecx, [ebp-4]
		cmp	ecx, bppage.n
		jl	short loc_4C6ECD
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	loc_4C6FBE
; ---------------------------------------------------------------------------

loc_4C6EF6:				; CODE XREF: .text:004C6FC7j
		mov	edx, [ebp-4]
		push	edx		; index
		push	offset bpmem.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jz	loc_4C6FBB
		mov	ecx, [ebp-14h]
		test	byte ptr [ecx+0Ah], 2
		jnz	loc_4C6FBB
		mov	eax, [ebp-14h]
		mov	edi, [eax]
		mov	eax, [ebp-14h]
		mov	edx, [eax+4]
		mov	[ebp-8], edx

loc_4C6F2F:				; CODE XREF: .text:004C6FB6j
		mov	ebx, edi
		and	ebx, 0FFFFF000h
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bppage	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jz	short loc_4C6F5E
		mov	eax, [ebp-14h]
		mov	edx, [eax+8]
		and	edx, 0E00000h
		or	[esi+8], edx
		jmp	short loc_4C6F9E
; ---------------------------------------------------------------------------

loc_4C6F5E:				; CODE XREF: .text:004C6F4Bj
		push	14h		; n
		push	0		; c
		lea	ecx, [ebp-28h]
		push	ecx		; s
		call	_memset
		mov	[ebp-28h], ebx
		add	esp, 0Ch
		mov	dword ptr [ebp-24h], 1000h
		mov	eax, [ebp-14h]
		lea	ecx, [ebp-28h]
		mov	edx, [eax+8]
		and	edx, 0E00000h
		or	edx, 100h
		mov	[ebp-20h], edx
		push	ecx		; item
		push	offset bppage	; sd
		call	Addsorteddata
		add	esp, 8

loc_4C6F9E:				; CODE XREF: .text:004C6F5Cj
		lea	eax, [ebx+1000h]
		mov	edx, [ebp-8]
		add	edx, edi
		cmp	eax, edx
		jnb	short loc_4C6FBB
		mov	ecx, eax
		sub	ecx, edi
		mov	edi, eax
		sub	[ebp-8], ecx
		jmp	loc_4C6F2F
; ---------------------------------------------------------------------------

loc_4C6FBB:				; CODE XREF: .text:004C6F0Ej
					; .text:004C6F1Bj ...
		inc	dword ptr [ebp-4]

loc_4C6FBE:				; CODE XREF: .text:004C6EF1j
		mov	eax, [ebp-4]
		cmp	eax, bpmem.sorted.n
		jl	loc_4C6EF6
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	loc_4C70A1
; ---------------------------------------------------------------------------

loc_4C6FD7:				; CODE XREF: .text:004C70AAj
		mov	ecx, [ebp-4]
		push	ecx		; index
		push	offset bppage	; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	loc_4C709E
		mov	eax, [esi+8]
		and	eax, 0E00000h
		test	eax, 0A00000h
		jz	short loc_4C700A
		mov	dword ptr [ebp-0Ch], 1
		jmp	short loc_4C701C
; ---------------------------------------------------------------------------

loc_4C700A:				; CODE XREF: .text:004C6FFFj
		test	eax, 400000h
		jz	loc_4C709E
		mov	dword ptr [ebp-0Ch], 2

loc_4C701C:				; CODE XREF: .text:004C7008j
		push	1Ch		; dwLength
		lea	edx, [ebp-44h]
		push	edx		; lpBuffer
		mov	ecx, [esi]
		push	ecx		; lpAddress
		mov	eax, process
		push	eax		; hProcess
		call	VirtualQueryEx
		test	eax, eax
		jz	short loc_4C709E
		cmp	dword ptr [ebp-34h], 1000h
		jnz	short loc_4C709E
		test	byte ptr [esi+9], 1
		jz	short loc_4C7052
		mov	edx, [ebp-30h]
		mov	[esi+0Ch], edx
		and	dword ptr [esi+8], 0FFFFFEFFh
		jmp	short loc_4C706D
; ---------------------------------------------------------------------------

loc_4C7052:				; CODE XREF: .text:004C7041j
		mov	eax, [esi+10h]	; int
		mov	edx, [ebp-30h]	; int
		cmp	eax, edx
		jz	short loc_4C706D
		push	edx		; src
		push	eax		; arglist
		push	esi		; int
		call	loc_4C6D94
		add	esp, 0Ch
		mov	ecx, [ebp-30h]
		mov	[esi+0Ch], ecx

loc_4C706D:				; CODE XREF: .text:004C7050j
					; .text:004C705Aj
		mov	eax, [ebp-30h]
		cmp	eax, [ebp-0Ch]
		jz	short loc_4C7091
		lea	edx, [ebp-10h]
		push	edx		; lpflOldProtect
		mov	ecx, [ebp-0Ch]
		push	ecx		; flNewProtect
		push	1000h		; dwSize
		mov	eax, [esi]
		push	eax		; lpAddress
		mov	edx, process
		push	edx		; hProcess
		call	VirtualProtectEx

loc_4C7091:				; CODE XREF: .text:004C7073j
		mov	ecx, [ebp-0Ch]
		mov	[esi+10h], ecx
		or	dword ptr [esi+8], 200h

loc_4C709E:				; CODE XREF: .text:004C6FECj
					; .text:004C700Fj ...
		inc	dword ptr [ebp-4]

loc_4C70A1:				; CODE XREF: .text:004C6FD2j
		mov	eax, [ebp-4]
		cmp	eax, bppage.n
		jl	loc_4C6FD7
		push	offset bppage	; sd
		call	Deletenonconfirmedsorteddata
		pop	ecx

loc_4C70BB:				; CODE XREF: .text:004C6EB3j
		call	Resumeallthreads
		xor	eax, eax

loc_4C70C2:				; CODE XREF: .text:004C6E92j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 356. _Removemembreakpoint
; Exported entry 694. Removemembreakpoint

; signed int __cdecl Removemembreakpoint(ulong _addr)
		public Removemembreakpoint
Removemembreakpoint:			; CODE XREF: .text:004B3879p
					; .text:004C6B0Dp ...
		push	ebp		; _Removemembreakpoint
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bpmem.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4C70ED
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C70ED:				; CODE XREF: .text:004C70E5j
		mov	ebx, [eax]
		push	ebx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_4C7104
		mov	dword ptr [eax+9A8h], 1

loc_4C7104:				; CODE XREF: .text:004C70F8j
		push	56h		; type3
		push	55h		; type2
		push	54h		; type1
		lea	eax, [ebx+1]
		push	eax		; addr1
		push	ebx		; addr0
		call	Deletedatarange
		add	esp, 14h
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bpmem.sorted ; sd
		call	Deletesorteddata
		add	esp, 0Ch
		push	1
		call	loc_4C6E78
		pop	ecx
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 357. _Setmembreakpoint
; Exported entry 714. Setmembreakpoint

; int __cdecl Setmembreakpoint(ulong _addr, ulong size, ulong type, int limit, int count, wchar_t *condition, wchar_t *expression, wchar_t *exprtype)
		public Setmembreakpoint
Setmembreakpoint:			; CODE XREF: .text:00432CA5p
					; .text:00432F1Fp
		push	ebp		; _Setmembreakpoint
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+8]
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4C7165
		or	eax, 0FFFFFFFFh
		jmp	loc_4C7330
; ---------------------------------------------------------------------------

loc_4C7165:				; CODE XREF: .text:004C715Bj
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bpmem.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jz	short loc_4C7189
		cmp	ebx, [esi]
		jnz	short loc_4C7187
		mov	eax, [esi+4]
		cmp	eax, [ebp+0Ch]
		jz	short loc_4C7189

loc_4C7187:				; CODE XREF: .text:004C717Dj
		xor	esi, esi

loc_4C7189:				; CODE XREF: .text:004C7179j
					; .text:004C7185j
		mov	eax, edi
		and	eax, 0E00000h
		test	eax, eax
		jz	short loc_4C719C
		test	edi, 0FF000000h
		jnz	short loc_4C71B3

loc_4C719C:				; CODE XREF: .text:004C7192j
		test	esi, esi
		jnz	short loc_4C71A7
		xor	eax, eax
		jmp	loc_4C7330
; ---------------------------------------------------------------------------

loc_4C71A7:				; CODE XREF: .text:004C719Ej
		push	ebx		; _addr
		call	Removemembreakpoint
		pop	ecx
		jmp	loc_4C7330
; ---------------------------------------------------------------------------

loc_4C71B3:				; CODE XREF: .text:004C719Aj
		push	ebx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_4C71F6
		test	byte ptr [eax+0Ah], 18h
		jz	short loc_4C71F6
		push	offset aYouAreGoingT_3 ; "You are going	to set memory breakpoint "...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aMemoryBreakp_0 ; "Memory breakpoint on stack"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6C4 ; cond
		call	Condyesno
		add	esp, 0Ch
		cmp	eax, 6
		jz	short loc_4C71F6
		or	eax, 0FFFFFFFFh
		jmp	loc_4C7330
; ---------------------------------------------------------------------------

loc_4C71F6:				; CODE XREF: .text:004C71BCj
					; .text:004C71C2j ...
		test	esi, esi
		jz	short loc_4C720A
		push	esi
		push	edi
		lea	edi, [ebp-14h]
		mov	ecx, 5
		rep movsd
		pop	edi
		pop	esi
		jmp	short loc_4C7223
; ---------------------------------------------------------------------------

loc_4C720A:				; CODE XREF: .text:004C71F8j
		push	14h		; n
		push	0		; c
		lea	eax, [ebp-14h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	[ebp-14h], ebx
		mov	edx, [ebp+0Ch]
		mov	[ebp-10h], edx

loc_4C7223:				; CODE XREF: .text:004C7208j
		cmp	dword ptr [ebp+1Ch], 0
		jnz	short loc_4C7230
		mov	dword ptr [ebp+1Ch], (offset aMemoryProtecti+79h) ; ""

loc_4C7230:				; CODE XREF: .text:004C7227j
		cmp	dword ptr [ebp+20h], 0
		jnz	short loc_4C723D
		mov	dword ptr [ebp+20h], (offset aMemoryProtecti+79h) ; ""

loc_4C723D:				; CODE XREF: .text:004C7234j
		cmp	dword ptr [ebp+24h], 0
		jnz	short loc_4C724A
		mov	dword ptr [ebp+24h], (offset aMemoryProtecti+79h) ; ""

loc_4C724A:				; CODE XREF: .text:004C7241j
		mov	ecx, [ebp-0Ch]
		mov	eax, edi
		and	eax, 0FFEA0000h
		and	ecx, 11FFFFh
		or	ecx, eax
		or	ecx, 1000h
		test	edi, 3000000h
		mov	[ebp-0Ch], ecx
		jz	short loc_4C7284
		and	edi, 3000000h
		cmp	edi, 1000000h
		jnz	short loc_4C728B
		mov	edx, [ebp+1Ch]
		cmp	word ptr [edx],	0
		jz	short loc_4C728B

loc_4C7284:				; CODE XREF: .text:004C726Bj
		or	dword ptr [ebp-0Ch], 40000h

loc_4C728B:				; CODE XREF: .text:004C7279j
					; .text:004C7282j
		mov	ecx, [ebp+14h]
		mov	[ebp-8], ecx
		cmp	dword ptr [ebp+18h], 0
		jl	short loc_4C729D
		mov	eax, [ebp+18h]
		mov	[ebp-4], eax

loc_4C729D:				; CODE XREF: .text:004C7295j
		xor	edi, edi
		mov	eax, [ebp+1Ch]
		push	eax		; s
		push	54h		; type
		push	ebx		; _addr
		call	InsertnameW
		add	esp, 0Ch
		or	edi, eax
		mov	edx, [ebp+20h]
		push	edx		; s
		push	55h		; type
		push	ebx		; _addr
		call	InsertnameW
		add	esp, 0Ch
		or	edi, eax
		mov	ecx, [ebp+24h]
		push	ecx		; s
		push	56h		; type
		push	ebx		; _addr
		call	InsertnameW
		add	esp, 0Ch
		or	edi, eax
		test	esi, esi
		jz	short loc_4C72E8
		push	esi
		push	edi
		mov	edi, esi
		lea	esi, [ebp-14h]
		mov	ecx, 5
		rep movsd
		pop	edi
		pop	esi
		jmp	short loc_4C7300
; ---------------------------------------------------------------------------

loc_4C72E8:				; CODE XREF: .text:004C72D4j
		lea	eax, [ebp-14h]
		push	eax		; item
		push	offset bpmem.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		test	eax, eax
		jnz	short loc_4C7300
		or	edi, 0FFFFFFFFh

loc_4C7300:				; CODE XREF: .text:004C72E6j
					; .text:004C72FBj
		push	ebx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_4C7315
		mov	dword ptr [eax+9A8h], 1

loc_4C7315:				; CODE XREF: .text:004C7309j
		push	1
		call	loc_4C6E78
		pop	ecx
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		mov	eax, edi

loc_4C7330:				; CODE XREF: .text:004C7160j
					; .text:004C71A2j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 358. _Enablemembreakpoint
; Exported entry 488. Enablemembreakpoint

; signed int __cdecl Enablemembreakpoint(ulong _addr, int enable)
		public Enablemembreakpoint
Enablemembreakpoint:			; CODE XREF: .text:00432CB9p
					; .text:00432F33p ...
		push	ebp		; _Enablemembreakpoint
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bpmem.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4C735C
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C73AD
; ---------------------------------------------------------------------------

loc_4C735C:				; CODE XREF: .text:004C7355j
		test	esi, esi
		jnz	short loc_4C7369
		or	dword ptr [eax+8], 20000h
		jmp	short loc_4C737D
; ---------------------------------------------------------------------------

loc_4C7369:				; CODE XREF: .text:004C735Ej
		test	esi, esi
		jle	short loc_4C7376
		and	dword ptr [eax+8], 0FFFDFFFFh
		jmp	short loc_4C737D
; ---------------------------------------------------------------------------

loc_4C7376:				; CODE XREF: .text:004C736Bj
		xor	dword ptr [eax+8], 20000h

loc_4C737D:				; CODE XREF: .text:004C7367j
					; .text:004C7374j
		push	1
		call	loc_4C6E78
		pop	ecx
		push	ebx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_4C739A
		mov	dword ptr [eax+9A8h], 1

loc_4C739A:				; CODE XREF: .text:004C738Ej
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		xor	eax, eax

loc_4C73AD:				; CODE XREF: .text:004C735Aj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; SORTFUNC loc_4C73B4
loc_4C73B4:				; DATA XREF: .text:0044A24Fo
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		mov	edx, [ebp+10h]
		xor	eax, eax
		mov	ebx, [ebp+8]
		mov	ecx, [ebp+0Ch]
		mov	[ebp-4], ecx
		cmp	edx, 1
		jnz	short loc_4C73F3
		mov	ecx, [ebp-4]
		mov	ecx, [ecx+4]
		mov	edx, [ebx+4]
		cmp	ecx, edx
		jnb	short loc_4C73E1
		or	eax, 0FFFFFFFFh
		jmp	loc_4C7485
; ---------------------------------------------------------------------------

loc_4C73E1:				; CODE XREF: .text:004C73D7j
		cmp	ecx, edx
		jbe	loc_4C7485
		mov	eax, 1
		jmp	loc_4C7485
; ---------------------------------------------------------------------------

loc_4C73F3:				; CODE XREF: .text:004C73CAj
		cmp	edx, 3
		jnz	short loc_4C7421
		mov	ecx, [ebp-4]
		mov	edx, [ebx+8]
		and	edx, 0E00000h
		mov	ecx, [ecx+8]
		and	ecx, 0E00000h
		cmp	ecx, edx
		jnb	short loc_4C7416
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C7485
; ---------------------------------------------------------------------------

loc_4C7416:				; CODE XREF: .text:004C740Fj
		cmp	ecx, edx
		jbe	short loc_4C7485
		mov	eax, 1
		jmp	short loc_4C7485
; ---------------------------------------------------------------------------

loc_4C7421:				; CODE XREF: .text:004C73F6j
		cmp	edx, 4
		jnz	short loc_4C7485
		mov	ecx, [ebp-4]
		mov	edx, [ebx+8]
		test	edx, 40000h
		mov	ecx, [ecx+8]
		jz	short loc_4C7444
		test	ecx, 40000h
		jnz	short loc_4C7444
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C7485
; ---------------------------------------------------------------------------

loc_4C7444:				; CODE XREF: .text:004C7435j
					; .text:004C743Dj
		test	edx, 40000h
		jnz	short loc_4C745B
		test	ecx, 40000h
		jz	short loc_4C745B
		mov	eax, 1
		jmp	short loc_4C7485
; ---------------------------------------------------------------------------

loc_4C745B:				; CODE XREF: .text:004C744Aj
					; .text:004C7452j
		test	edx, 20000h
		jz	short loc_4C7470
		test	ecx, 20000h
		jnz	short loc_4C7470
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C7485
; ---------------------------------------------------------------------------

loc_4C7470:				; CODE XREF: .text:004C7461j
					; .text:004C7469j
		test	edx, 20000h
		jnz	short loc_4C7485
		test	ecx, 20000h
		jz	short loc_4C7485
		mov	eax, 1

loc_4C7485:				; CODE XREF: .text:004C73DCj
					; .text:004C73E3j ...
		test	eax, eax
		jnz	short loc_4C74A2
		mov	ecx, [ebp-4]
		mov	ecx, [ecx]
		mov	edx, [ebx]
		cmp	ecx, edx
		jbe	short loc_4C7499
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C74A2
; ---------------------------------------------------------------------------

loc_4C7499:				; CODE XREF: .text:004C7492j
		cmp	ecx, edx
		jnb	short loc_4C74A2
		mov	eax, 1

loc_4C74A2:				; CODE XREF: .text:004C7487j
					; .text:004C7497j ...
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; DESTFUNC loc_4C74A8
loc_4C74A8:				; DATA XREF: .text:0044A24Ao
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4C74C7
		push	56h		; type3
		push	55h		; type2
		push	54h		; type1
		mov	edx, [eax]
		mov	ecx, edx
		inc	ecx
		push	ecx		; addr1
		push	edx		; addr0
		call	Deletedatarange
		add	esp, 14h

loc_4C74C7:				; CODE XREF: .text:004C74B0j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; DESTFUNC loc_4C74CC
loc_4C74CC:				; DATA XREF: .text:0044A26Ao
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE0h
		push	ebx
		push	esi
		mov	eax, [ebp+8]
		mov	esi, offset thread
		test	eax, eax
		jz	short loc_4C7559
		mov	ebx, eax
		lea	eax, [ebp-20h]
		push	1Ch		; dwLength
		push	eax		; lpBuffer
		mov	edx, [ebx]
		mov	ecx, process
		push	edx		; lpAddress
		push	ecx		; hProcess
		call	VirtualQueryEx
		test	eax, eax
		jz	short loc_4C7559
		cmp	dword ptr [ebp-10h], 1000h
		jnz	short loc_4C7559
		mov	eax, [ebx+10h]	; int
		mov	edx, [ebp-0Ch]	; int
		cmp	eax, edx
		jz	short loc_4C751B
		push	edx		; src
		push	eax		; arglist
		push	ebx		; int
		call	loc_4C6D94
		add	esp, 0Ch
		jmp	short loc_4C7559
; ---------------------------------------------------------------------------

loc_4C751B:				; CODE XREF: .text:004C750Cj
		lea	ecx, [ebp-4]
		push	ecx		; lpflOldProtect
		mov	eax, [ebx+0Ch]
		push	eax		; flNewProtect
		push	1000h		; dwSize
		mov	edx, [ebx]
		push	edx		; lpAddress
		mov	ecx, process
		push	ecx		; hProcess
		call	VirtualProtectEx
		xor	ebx, ebx
		jmp	short loc_4C7554
; ---------------------------------------------------------------------------

loc_4C753B:				; CODE XREF: .text:004C7557j
		push	ebx		; index
		lea	eax, [esi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4C7553
		or	dword ptr [eax+6D0h], 2

loc_4C7553:				; CODE XREF: .text:004C754Aj
		inc	ebx

loc_4C7554:				; CODE XREF: .text:004C7539j
		cmp	ebx, [esi+44h]
		jl	short loc_4C753B

loc_4C7559:				; CODE XREF: .text:004C74DEj
					; .text:004C74F9j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_4C7560(wchar_t *buffer, void *s, int,	int, int, int)
loc_4C7560:				; DATA XREF: .text:004C7915o
		push	ebp
		mov	ebp, esp
		push	ebx
		xor	eax, eax
		mov	ecx, [ebp+1Ch]
		mov	edx, [ebp+18h]
		add	ecx, 4		; switch 10 cases
		cmp	ecx, 9
		ja	loc_4C7745	; jumptable 004C7578 default case
		jmp	ds:off_4C757F[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4C757F	dd offset loc_4C75A7	; DATA XREF: .text:004C7578r
		dd offset loc_4C75AC	; jump table for switch	statement
		dd offset loc_4C75B1
		dd offset loc_4C75B6
		dd offset loc_4C75BB
		dd offset loc_4C760C
		dd offset loc_4C7627
		dd offset loc_4C7679
		dd offset loc_4C76BD
		dd offset loc_4C7726
; ---------------------------------------------------------------------------

loc_4C75A7:				; CODE XREF: .text:004C7578j
					; DATA XREF: .text:off_4C757Fo
		xor	eax, eax	; jumptable 004C7578 case -4
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C75AC:				; CODE XREF: .text:004C7578j
					; DATA XREF: .text:off_4C757Fo
		xor	eax, eax	; jumptable 004C7578 case -3
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C75B1:				; CODE XREF: .text:004C7578j
					; DATA XREF: .text:off_4C757Fo
		xor	eax, eax	; jumptable 004C7578 case -2
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C75B6:				; CODE XREF: .text:004C7578j
					; DATA XREF: .text:off_4C757Fo
		xor	eax, eax	; jumptable 004C7578 case -1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C75BB:				; CODE XREF: .text:004C7578j
					; DATA XREF: .text:off_4C757Fo
		mov	eax, dword_57DE54 ; jumptable 004C7578 case 0
		cmp	eax, 1
		jnz	short loc_4C75CC
		mov	eax, 2011h
		jmp	short loc_4C75DD
; ---------------------------------------------------------------------------

loc_4C75CC:				; CODE XREF: .text:004C75C3j
		cmp	eax, 2
		jnz	short loc_4C75D8
		mov	eax, 2012h
		jmp	short loc_4C75DD
; ---------------------------------------------------------------------------

loc_4C75D8:				; CODE XREF: .text:004C75CFj
		mov	eax, 2010h

loc_4C75DD:				; CODE XREF: .text:004C75CAj
					; .text:004C75D6j
		cmp	dword_57DE58, 0
		jz	short loc_4C75E9
		or	eax, 20h

loc_4C75E9:				; CODE XREF: .text:004C75E4j
		push	eax		; mode
		mov	ecx, [ebp+10h]
		push	ecx		; select
		mov	eax, [ebp+0Ch]
		push	eax		; mask
		push	0		; index
		push	0FFFFFFFFh	; relreg
		push	0		; reladdr
		mov	edx, [edx]
		push	edx		; _addr
		mov	ecx, [ebp+8]
		push	ecx		; text
		call	Labeladdress
		add	esp, 20h
		jmp	loc_4C7745	; jumptable 004C7578 default case
; ---------------------------------------------------------------------------

loc_4C760C:				; CODE XREF: .text:004C7578j
					; DATA XREF: .text:off_4C757Fo
		mov	eax, [edx+4]	; jumptable 004C7578 case 1
		push	eax
		push	eax
		push	offset a08xU_	; "%08X	(%u.)"
		mov	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	loc_4C7745	; jumptable 004C7578 default case
; ---------------------------------------------------------------------------

loc_4C7627:				; CODE XREF: .text:004C7578j
					; DATA XREF: .text:off_4C757Fo
		mov	ecx, [edx]	; jumptable 004C7578 case 2
		push	ecx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_4C765F
		push	offset aNoneNotKeptBet ; "<none	- not kept between sessions>"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 2
		jmp	loc_4C7745	; jumptable 004C7578 default case
; ---------------------------------------------------------------------------

loc_4C765F:				; CODE XREF: .text:004C7632j
		add	eax, 0Ch
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4C7745	; jumptable 004C7578 default case
; ---------------------------------------------------------------------------

loc_4C7679:				; CODE XREF: .text:004C7578j
					; DATA XREF: .text:off_4C757Fo
		mov	cx, 52h		; jumptable 004C7578 case 3
		test	byte ptr [edx+0Ah], 20h
		jnz	short loc_4C7686
		add	ecx, 0FFFFFFCEh

loc_4C7686:				; CODE XREF: .text:004C7681j
		mov	ebx, [ebp+8]
		mov	[ebx+eax*2], cx
		inc	eax
		test	byte ptr [edx+0Ah], 40h
		mov	cx, 57h
		jnz	short loc_4C769B
		add	ecx, 0FFFFFFC9h

loc_4C769B:				; CODE XREF: .text:004C7696j
		mov	ebx, [ebp+8]
		mov	[ebx+eax*2], cx
		inc	eax
		test	byte ptr [edx+0Ah], 80h
		mov	cx, 45h
		jnz	short loc_4C76B0
		add	ecx, 0FFFFFFDBh

loc_4C76B0:				; CODE XREF: .text:004C76ABj
		mov	edx, [ebp+8]
		mov	[edx+eax*2], cx
		inc	eax
		jmp	loc_4C7745	; jumptable 004C7578 default case
; ---------------------------------------------------------------------------

loc_4C76BD:				; CODE XREF: .text:004C7578j
					; DATA XREF: .text:off_4C757Fo
		test	byte ptr [edx+0Ah], 2 ;	jumptable 004C7578 case	4
		jz	short loc_4C76E2
		push	offset aDisabled ; "Disabled"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4C7745 ; jumptable 004C7578 default case
; ---------------------------------------------------------------------------

loc_4C76E2:				; CODE XREF: .text:004C76C1j
		test	byte ptr [edx+0Ah], 4
		jz	short loc_4C7707
		push	offset aCond_3	; "Cond"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4C7745 ; jumptable 004C7578 default case
; ---------------------------------------------------------------------------

loc_4C7707:				; CODE XREF: .text:004C76E6j
		push	offset aActive	; "Active"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4C7745 ; jumptable 004C7578 default case
; ---------------------------------------------------------------------------

loc_4C7726:				; CODE XREF: .text:004C7578j
					; DATA XREF: .text:off_4C757Fo
		push	100h		; jumptable 004C7578 case 5
		mov	ecx, [ebp+8]
		push	ecx		; comment
		push	0FFFFFFFFh	; typelist
		mov	eax, [edx]
		push	eax		; _addr
		call	Commentaddress
		add	esp, 10h
		mov	edx, [ebp+10h]
		or	dword ptr [edx], 200h

loc_4C7745:				; CODE XREF: .text:004C7572j
					; .text:004C7607j ...
		pop	ebx		; jumptable 004C7578 default case
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C7748:				; DATA XREF: .text:004C78F1o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	eax, [ebp+10h]
		sub	eax, 471h
		jz	short loc_4C7760
		sub	eax, 1Bh
		jz	short loc_4C7796
		jmp	short loc_4C77A2
; ---------------------------------------------------------------------------

loc_4C7760:				; CODE XREF: .text:004C7757j
		push	0		; index
		push	offset loc_4C6C44 ; menufunc
		mov	edx, [ebx+218h]
		push	edx		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h
		push	1		; index
		push	offset loc_4C6C44 ; menufunc
		mov	ecx, [ebx+218h]
		push	ecx		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C7796:				; CODE XREF: .text:004C775Cj
		or	dword_57FE7C, 40h
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C77A2:				; CODE XREF: .text:004C775Ej
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C77A8:				; CODE XREF: .text:0040B058p
					; .text:loc_410053p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, offset aMemoryProtecti ; "Memory protection attributes in memory "...
__DebugBreak
		cmp	bpmem.bar.nbar,	0
		jnz	loc_4C792F
		lea	eax, [ebx+686h]
		push	eax		; src
		push	offset bpmem	; dst
		call	_wcscpy
		mov	bpmem.mode, 0F0000h
		lea	edx, [ebx+6ACh]
		mov	bpmem.bar.visible, 1
		mov	bpmem.bar._name,	edx
		lea	ecx, [ebx+6BCh]
		lea	eax, [ebx+6FEh]
		mov	bpmem.bar.expl,	ecx
		mov	bpmem.bar.mode,	2
		mov	bpmem.bar.defdx, 9
		mov	bpmem.bar._name+4, eax
		lea	edx, [ebx+724h]
		lea	ecx, [ebx+788h]
		mov	bpmem.bar.expl+4, edx
		mov	bpmem.bar.mode+4, 2
		mov	bpmem.bar.defdx+4, 9
		mov	bpmem.bar._name+8, ecx
		lea	eax, [ebx+796h]
		lea	edx, [ebx+7F2h]
		mov	bpmem.bar.expl+8, eax
		mov	bpmem.bar.mode+8, 2
		mov	bpmem.bar.defdx+8, 9
		mov	bpmem.bar._name+0Ch, edx
		lea	ecx, [ebx+7FCh]
		lea	eax, [ebx+838h]
		mov	bpmem.bar.expl+0Ch, ecx
		mov	bpmem.bar.mode+0Ch, 2
		mov	bpmem.bar.defdx+0Ch, 5
		lea	edx, [ebx+846h]
		mov	bpmem.bar._name+10h, eax
		mov	bpmem.bar.expl+10h, edx
		mov	bpmem.bar.mode+10h, 2
		lea	ecx, [ebx+886h]
		mov	bpmem.bar.defdx+10h, 0Ch
		lea	eax, [ebx+886h]
		mov	bpmem.bar._name+14h, ecx
		xor	edx, edx
		mov	bpmem.bar.expl+14h, eax
		mov	bpmem.bar.mode+14h, edx
		mov	bpmem.bar.defdx+14h, 100h
		mov	bpmem.bar.nbar,	6
		xor	ecx, ecx
		mov	bpmem.tabfunc, offset loc_4C7748
		xor	eax, eax
		mov	bpmem.custommode, ecx
		xor	edx, edx
		mov	bpmem.customdata, eax
		mov	bpmem.updatefunc, edx
		add	esp, 8
		xor	ecx, ecx
		mov	bpmem.drawfunc,	offset loc_4C7560
		mov	bpmem.tableselfunc, ecx
		mov	bpmem.menu, offset stru_55EF74

loc_4C792F:				; CODE XREF: .text:004C77B8j
		cmp	bpmem.hw, 0
		jnz	short loc_4C796B
		lea	eax, [ebx+686h]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; _title
		lea	edx, [ebx+896h]
		push	edx		; icon
		mov	ecx, g_hInstance
		push	ecx		; hi
		mov	eax, bpmem.bar.nbar
		push	eax		; ncolumn
		push	0		; nrow
		push	offset bpmem	; pt
		call	Createtablewindow
		add	esp, 18h
		jmp	short loc_4C797B
; ---------------------------------------------------------------------------

loc_4C796B:				; CODE XREF: .text:004C7936j
		push	0		; bErase
		push	0		; lpRect
		mov	edx, bpmem.hw
		push	edx		; hWnd
		call	InvalidateRect

loc_4C797B:				; CODE XREF: .text:004C7969j
		cmp	bpmem.hparent, 0
		jz	short loc_4C79D0
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4C79D0
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4C79A7
		push	0		; lParam
		mov	edx, bpmem.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4C79A7:				; CODE XREF: .text:004C7991j
		mov	ecx, bpmem.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_4C79C4
		push	9		; nCmdShow
		mov	eax, bpmem.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_4C79C4:				; CODE XREF: .text:004C79B5j
		mov	edx, bpmem.hw
		push	edx		; hWnd
		call	SetFocus

loc_4C79D0:				; CODE XREF: .text:004C7982j
					; .text:004C7988j
		mov	eax, bpmem.hw
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C79D8:				; DATA XREF: .data:stru_55F92Co
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	eax, [ebx+68h]
		push	eax		; index
		add	ebx, 44h
		push	ebx		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	dword_5FCB30, eax
		mov	eax, dword_5FCB30
		test	eax, eax
		jz	short loc_4C7A03
		test	byte ptr [eax+9], 10h
		jnz	short loc_4C7A0F

loc_4C7A03:				; CODE XREF: .text:004C79FBj
		mov	dword_5FCB34, 1
		jmp	short loc_4C7A17
; ---------------------------------------------------------------------------

loc_4C7A0F:				; CODE XREF: .text:004C7A01j
		xor	edx, edx
		mov	dword_5FCB34, edx

loc_4C7A17:				; CODE XREF: .text:004C7A0Dj
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4C7A20:				; DATA XREF: .data:stru_55F92Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+14h]
		mov	esi, [ebp+8]
		mov	edx, dword_5FCB30
		test	edx, edx
		jz	short loc_4C7A3E
		cmp	dword_5FCB34, 0
		jz	short loc_4C7A42

loc_4C7A3E:				; CODE XREF: .text:004C7A33j
		xor	eax, eax
		jmp	short loc_4C7A75
; ---------------------------------------------------------------------------

loc_4C7A42:				; CODE XREF: .text:004C7A3Cj
		test	eax, eax
		jnz	short loc_4C7A4D
		mov	eax, 1
		jmp	short loc_4C7A75
; ---------------------------------------------------------------------------

loc_4C7A4D:				; CODE XREF: .text:004C7A44j
		dec	eax
		jnz	short loc_4C7A73
		mov	ebx, [esi+68h]
		mov	eax, [edx]
		push	eax		; index
		call	Removehardbreakpoint
		pop	ecx
		cmp	ebx, [esi+44h]
		jl	short loc_4C7A62
		dec	ebx

loc_4C7A62:				; CODE XREF: .text:004C7A5Fj
		push	ebx		; selected
		push	esi		; pt
		call	Settableselection
		add	esp, 8
		mov	eax, 1
		jmp	short loc_4C7A75
; ---------------------------------------------------------------------------

loc_4C7A73:				; CODE XREF: .text:004C7A4Ej
		xor	eax, eax

loc_4C7A75:				; CODE XREF: .text:004C7A40j
					; .text:004C7A4Bj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C7A7C:				; DATA XREF: .data:stru_55F92Co
		push	ebp
		mov	ebp, esp
		push	ebx
		cmp	dword_5FCB30, 0
		mov	ebx, [ebp+8]
		mov	eax, [ebp+14h]
		mov	edx, [ebp+10h]
		jz	short loc_4C7A9B
		cmp	dword_5FCB34, 0
		jz	short loc_4C7AA0

loc_4C7A9B:				; CODE XREF: .text:004C7A90j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C7AA0:				; CODE XREF: .text:004C7A99j
		test	eax, eax
		jnz	short loc_4C7AD0
		mov	ecx, dword_5FCB30
		test	byte ptr [ecx+0Ah], 2
		jnz	short loc_4C7AB4
		test	edx, edx
		jnz	short loc_4C7AC3

loc_4C7AB4:				; CODE XREF: .text:004C7AAEj
		mov	eax, dword_5FCB30
		test	byte ptr [eax+0Ah], 2
		jz	short loc_4C7AC8
		test	edx, edx
		jnz	short loc_4C7AC8

loc_4C7AC3:				; CODE XREF: .text:004C7AB2j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C7AC8:				; CODE XREF: .text:004C7ABDj
					; .text:004C7AC1j
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C7AD0:				; CODE XREF: .text:004C7AA2j
		dec	eax
		jnz	short loc_4C7B0D
		push	edx		; enable
		mov	edx, dword_5FCB30
		mov	ecx, [edx]
		push	ecx		; index
		call	Enablehardbreakpoint
		add	esp, 8
		call	loc_42521C
		test	eax, eax
		jz	short loc_4C7B05
		mov	eax, [ebx+44h]
		dec	eax
		cmp	eax, [ebx+68h]
		jle	short loc_4C7B05
		mov	edx, [ebx+68h]
		inc	edx
		push	edx		; selected
		push	ebx		; pt
		call	Settableselection
		add	esp, 8

loc_4C7B05:				; CODE XREF: .text:004C7AECj
					; .text:004C7AF5j
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C7B0D:				; CODE XREF: .text:004C7AD1j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C7B14:				; DATA XREF: .data:stru_55F92Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		mov	eax, [ebp+14h]
		mov	ebx, [ebp+8]
		cmp	dword_5FCB30, 0
		jz	short loc_4C7B33
		cmp	dword_5FCB34, 0
		jz	short loc_4C7B37

loc_4C7B33:				; CODE XREF: .text:004C7B28j
		xor	eax, eax
		jmp	short loc_4C7B98
; ---------------------------------------------------------------------------

loc_4C7B37:				; CODE XREF: .text:004C7B31j
		test	eax, eax
		jnz	short loc_4C7B42
		mov	eax, 1
		jmp	short loc_4C7B98
; ---------------------------------------------------------------------------

loc_4C7B42:				; CODE XREF: .text:004C7B39j
		dec	eax
		jnz	short loc_4C7B96
		lea	edx, [ebp-8]
		push	edx		; coord
		push	2		; column
		push	ebx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4C7B61
		or	ecx, 0FFFFFFFFh
		mov	[ebp-4], ecx
		mov	[ebp-8], ecx

loc_4C7B61:				; CODE XREF: .text:004C7B56j
		push	80h		; mode
		mov	eax, [ebx+234h]
		push	eax		; fi
		mov	edx, [ebp-4]
		push	edx		; y
		mov	edx, dword_5FCB30 ; int
		mov	eax, [ebp-8]
		push	eax		; x
		push	0		; fnindex
		mov	ecx, [edx]	; int
		push	ecx		; _addr
		mov	eax, [ebx+22Ch]	; int
		push	eax		; hparent
		call	Hardlogbreakpoint
		add	esp, 1Ch
		mov	eax, 1
		jmp	short loc_4C7B98
; ---------------------------------------------------------------------------

loc_4C7B96:				; CODE XREF: .text:004C7B43j
		xor	eax, eax

loc_4C7B98:				; CODE XREF: .text:004C7B35j
					; .text:004C7B40j ...
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; MENUFUNC loc_4C7BA0
loc_4C7BA0:				; DATA XREF: .text:004C8796o
					; .text:004C87ADo ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	eax, dword_5FCB30
		test	eax, eax
		jnz	short loc_4C7BBB
		xor	eax, eax
		jmp	loc_4C7C59
; ---------------------------------------------------------------------------

loc_4C7BBB:				; CODE XREF: .text:004C7BB2j
		mov	edx, [eax+0Ch]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4C7BD0
		xor	eax, eax
		jmp	loc_4C7C59
; ---------------------------------------------------------------------------

loc_4C7BD0:				; CODE XREF: .text:004C7BC7j
		mov	edx, dword_5FCB30
		mov	ecx, [edx+8]
		and	ecx, 0E00000h
		cmp	ecx, 800000h
		setz	al
		and	eax, 1
		test	ebx, ebx
		jnz	short loc_4C7C0E
		test	eax, eax
		jnz	short loc_4C7BFB
		test	esi, esi
		jnz	short loc_4C7BFB
		xor	eax, eax
		jmp	short loc_4C7C59
; ---------------------------------------------------------------------------

loc_4C7BFB:				; CODE XREF: .text:004C7BF1j
					; .text:004C7BF5j
		test	eax, eax
		jz	short loc_4C7C07
		test	esi, esi
		jz	short loc_4C7C07
		xor	eax, eax
		jmp	short loc_4C7C59
; ---------------------------------------------------------------------------

loc_4C7C07:				; CODE XREF: .text:004C7BFDj
					; .text:004C7C01j
		mov	eax, 1
		jmp	short loc_4C7C59
; ---------------------------------------------------------------------------

loc_4C7C0E:				; CODE XREF: .text:004C7BEDj
		dec	ebx
		jnz	short loc_4C7C57
		test	eax, eax
		jz	short loc_4C7C33
		push	0Dh		; mode
		mov	edx, dword_5FCB30
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	ecx, [edx+0Ch]
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4C7C53
; ---------------------------------------------------------------------------

loc_4C7C33:				; CODE XREF: .text:004C7C13j
		mov	eax, dword_5FCB30
		push	90h		; mode
		push	0		; stackaddr
		mov	edx, [eax+10h]
		push	edx		; selsize
		mov	ecx, [eax+0Ch]
		push	ecx		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_4C7C53:				; CODE XREF: .text:004C7C31j
		xor	eax, eax
		jmp	short loc_4C7C59
; ---------------------------------------------------------------------------

loc_4C7C57:				; CODE XREF: .text:004C7C0Fj
		xor	eax, eax

loc_4C7C59:				; CODE XREF: .text:004C7BB6j
					; .text:004C7BCBj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4C7C60:				; DATA XREF: .data:stru_55F92Co
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edi, eax
		xor	ebx, ebx
		jmp	short loc_4C7C99
; ---------------------------------------------------------------------------

loc_4C7C75:				; CODE XREF: .text:004C7C9Cj
		push	ebx		; index
		lea	eax, [esi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	edx, [eax+8]
		test	dh, 10h
		jz	short loc_4C7C98
		test	edx, 20000h
		jz	short loc_4C7C97
		inc	dword ptr [ebp-4]
		jmp	short loc_4C7C98
; ---------------------------------------------------------------------------

loc_4C7C97:				; CODE XREF: .text:004C7C90j
		inc	edi

loc_4C7C98:				; CODE XREF: .text:004C7C88j
					; .text:004C7C95j
		inc	ebx

loc_4C7C99:				; CODE XREF: .text:004C7C73j
		cmp	ebx, [esi+44h]
		jl	short loc_4C7C75
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4C7CC9
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4C7CB2
		test	edi, edi
		jnz	short loc_4C7CB2
		xor	eax, eax
		jmp	short loc_4C7D1C
; ---------------------------------------------------------------------------

loc_4C7CB2:				; CODE XREF: .text:004C7CA8j
					; .text:004C7CACj
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4C7CC2
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4C7CC2
		xor	eax, eax
		jmp	short loc_4C7D1C
; ---------------------------------------------------------------------------

loc_4C7CC2:				; CODE XREF: .text:004C7CB6j
					; .text:004C7CBCj
		mov	eax, 1
		jmp	short loc_4C7D1C
; ---------------------------------------------------------------------------

loc_4C7CC9:				; CODE XREF: .text:004C7CA2j
		cmp	dword ptr [ebp+14h], 1
		jnz	short loc_4C7D1A
		xor	ebx, ebx
		jmp	short loc_4C7D0E
; ---------------------------------------------------------------------------

loc_4C7CD3:				; CODE XREF: .text:004C7D11j
		push	ebx		; index
		lea	eax, [esi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	byte ptr [eax+9], 10h
		jz	short loc_4C7D0D
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4C7CF2
		test	byte ptr [eax+0Ah], 2
		jnz	short loc_4C7D0D

loc_4C7CF2:				; CODE XREF: .text:004C7CEAj
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4C7CFE
		test	byte ptr [eax+0Ah], 2
		jz	short loc_4C7D0D

loc_4C7CFE:				; CODE XREF: .text:004C7CF6j
		mov	edx, [ebp+10h]
		push	edx		; enable
		mov	ecx, [eax]
		push	ecx		; index
		call	Enablehardbreakpoint
		add	esp, 8

loc_4C7D0D:				; CODE XREF: .text:004C7CE4j
					; .text:004C7CF0j ...
		inc	ebx

loc_4C7D0E:				; CODE XREF: .text:004C7CD1j
		cmp	ebx, [esi+44h]
		jl	short loc_4C7CD3
		mov	eax, 1
		jmp	short loc_4C7D1C
; ---------------------------------------------------------------------------

loc_4C7D1A:				; CODE XREF: .text:004C7CCDj
		xor	eax, eax

loc_4C7D1C:				; CODE XREF: .text:004C7CB0j
					; .text:004C7CC0j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 359. _Removehardbreakpoint
; Exported entry 692. Removehardbreakpoint

; signed int __cdecl Removehardbreakpoint(int index)
		public Removehardbreakpoint
Removehardbreakpoint:			; CODE XREF: .text:0044F8CAp
					; .text:00452D14p ...
		push	ebp		; _Removehardbreakpoint
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jl	short loc_4C7D36
		cmp	ebx, 4
		jl	short loc_4C7D3E

loc_4C7D36:				; CODE XREF: .text:004C7D2Fj
		or	eax, 0FFFFFFFFh
		jmp	loc_4C7DDD
; ---------------------------------------------------------------------------

loc_4C7D3E:				; CODE XREF: .text:004C7D34j
		push	0		; subaddr
		mov	esi, ebx
		push	esi		; _addr
		push	offset bphard.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4C7D5B
		xor	eax, eax
		jmp	loc_4C7DDD
; ---------------------------------------------------------------------------

loc_4C7D5B:				; CODE XREF: .text:004C7D52j
		mov	edi, [eax+8]
		push	0		; subaddr
		push	esi		; _addr
		push	offset bphard.sorted ; sd
		call	Deletesorteddata
		add	esp, 0Ch
		push	1
		call	loc_44F668
		test	edi, 1000h
		pop	ecx
		jz	short loc_4C7DB5
		push	59h		; type3
		push	58h		; type2
		push	57h		; type1
		lea	eax, [ebx+1]
		push	eax		; addr1
		push	esi		; addr0
		call	Deletedatarange
		add	esp, 14h
		call	Findmainmodule
		test	eax, eax
		jz	short loc_4C7DA4
		mov	dword ptr [eax+9A8h], 1

loc_4C7DA4:				; CODE XREF: .text:004C7D98j
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_4C7DB5:				; CODE XREF: .text:004C7D7Cj
		xor	ebx, ebx
		jmp	short loc_4C7DD3
; ---------------------------------------------------------------------------

loc_4C7DB9:				; CODE XREF: .text:004C7DD9j
		push	ebx		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4C7DD2
		or	dword ptr [eax+6D0h], 4

loc_4C7DD2:				; CODE XREF: .text:004C7DC9j
		inc	ebx

loc_4C7DD3:				; CODE XREF: .text:004C7DB7j
		cmp	ebx, thread.sorted.n
		jl	short loc_4C7DB9
		xor	eax, eax

loc_4C7DDD:				; CODE XREF: .text:004C7D39j
					; .text:004C7D56j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 360. _Sethardbreakpoint
; Exported entry 712. Sethardbreakpoint

; signed int __cdecl Sethardbreakpoint(int index, ulong	size, ulong type, int fnindex, ulong _addr, int limit, int count, ulong actions,	wchar_t	*condition, wchar_t *expression, wchar_t *exprtype)
		public Sethardbreakpoint
Sethardbreakpoint:			; CODE XREF: .text:00433D52p
					; .text:004341F2p ...
		push	ebp		; _Sethardbreakpoint
		mov	ebp, esp
		add	esp, 0FFFFFDC8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+8]
		cmp	g_IsWinxp, 0
		jnz	short loc_4C7E07
		or	eax, 0FFFFFFFFh
		jmp	loc_4C8137
; ---------------------------------------------------------------------------

loc_4C7E07:				; CODE XREF: .text:004C7DFDj
		test	ebx, ebx
		jl	short loc_4C7E10
		cmp	ebx, 4
		jl	short loc_4C7E18

loc_4C7E10:				; CODE XREF: .text:004C7E09j
		or	eax, 0FFFFFFFFh
		jmp	loc_4C8137
; ---------------------------------------------------------------------------

loc_4C7E18:				; CODE XREF: .text:004C7E0Ej
		mov	edx, edi
		mov	ecx, edi
		and	edx, 0F000h
		and	ecx, 0E00000h
		mov	[ebp-8], edx
		mov	[ebp-4], ecx
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bphard.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp-8], 1000h
		jnz	short loc_4C7EB5
		test	esi, esi
		jz	short loc_4C7E5B
		test	byte ptr [esi+9], 60h
		jz	short loc_4C7E5B
		or	eax, 0FFFFFFFFh
		jmp	loc_4C8137
; ---------------------------------------------------------------------------

loc_4C7E5B:				; CODE XREF: .text:004C7E4Bj
					; .text:004C7E51j
		cmp	dword ptr [ebp-4], 400000h
		jz	short loc_4C7E7E
		cmp	dword ptr [ebp-4], (offset stru_5FF23C.text+0DC0h)
		jz	short loc_4C7E7E
		cmp	dword ptr [ebp-4], 800000h
		jz	short loc_4C7E7E
		or	eax, 0FFFFFFFFh
		jmp	loc_4C8137
; ---------------------------------------------------------------------------

loc_4C7E7E:				; CODE XREF: .text:004C7E62j
					; .text:004C7E6Bj ...
		cmp	dword ptr [ebp-4], 800000h
		jz	short loc_4C7EA1
		cmp	dword ptr [ebp+0Ch], 1
		jz	short loc_4C7EA1
		cmp	dword ptr [ebp+0Ch], 2
		jz	short loc_4C7EA1
		cmp	dword ptr [ebp+0Ch], 4
		jz	short loc_4C7EA1
		or	eax, 0FFFFFFFFh
		jmp	loc_4C8137
; ---------------------------------------------------------------------------

loc_4C7EA1:				; CODE XREF: .text:004C7E85j
					; .text:004C7E8Bj ...
		test	edi, 0FF000000h
		jnz	short loc_4C7EFE
		push	ebx		; index
		call	Removehardbreakpoint
		pop	ecx
		jmp	loc_4C8137
; ---------------------------------------------------------------------------

loc_4C7EB5:				; CODE XREF: .text:004C7E47j
		cmp	dword ptr [ebp-8], 2000h
		jz	short loc_4C7EC7
		cmp	dword ptr [ebp-8], 4000h
		jnz	short loc_4C7EF6

loc_4C7EC7:				; CODE XREF: .text:004C7EBCj
		test	esi, esi
		jz	short loc_4C7ED9
		test	byte ptr [esi+9], 10h
		jz	short loc_4C7ED9
		or	eax, 0FFFFFFFFh
		jmp	loc_4C8137
; ---------------------------------------------------------------------------

loc_4C7ED9:				; CODE XREF: .text:004C7EC9j
					; .text:004C7ECFj
		cmp	dword ptr [ebp-4], 800000h
		jz	short loc_4C7EEA
		or	eax, 0FFFFFFFFh
		jmp	loc_4C8137
; ---------------------------------------------------------------------------

loc_4C7EEA:				; CODE XREF: .text:004C7EE0j
		test	esi, esi
		jz	short loc_4C7EFE
		mov	edx, [esi+20h]
		or	[ebp+24h], edx
		jmp	short loc_4C7EFE
; ---------------------------------------------------------------------------

loc_4C7EF6:				; CODE XREF: .text:004C7EC5j
		or	eax, 0FFFFFFFFh
		jmp	loc_4C8137
; ---------------------------------------------------------------------------

loc_4C7EFE:				; CODE XREF: .text:004C7EA7j
					; .text:004C7EECj ...
		test	esi, esi
		jz	short loc_4C7F26
		push	esi
		push	edi
		lea	edi, [ebp-238h]
		mov	ecx, 8Ch
		rep movsd
		pop	edi
		pop	esi
		test	byte ptr [ebp-22Fh], 60h
		jnz	short loc_4C7F42
		xor	eax, eax
		mov	[ebp-218h], eax
		jmp	short loc_4C7F42
; ---------------------------------------------------------------------------

loc_4C7F26:				; CODE XREF: .text:004C7F00j
		push	230h		; n
		push	0		; c
		lea	edx, [ebp-238h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		mov	[ebp-238h], ebx

loc_4C7F42:				; CODE XREF: .text:004C7F1Aj
					; .text:004C7F24j
		cmp	dword ptr [ebp-8], 1000h
		jnz	loc_4C8038
		mov	ecx, [ebp-230h]
		mov	eax, edi
		and	eax, 0FFEA0000h
		and	ecx, 11FFFFh
		or	ecx, eax
		or	ecx, 1000h
		test	edi, 3000000h
		mov	[ebp-230h], ecx
		jz	short loc_4C7F8F
		and	edi, 3000000h
		cmp	edi, 1000000h
		jnz	short loc_4C7F99
		mov	edx, [ebp+28h]
		cmp	word ptr [edx],	0
		jz	short loc_4C7F99

loc_4C7F8F:				; CODE XREF: .text:004C7F76j
		or	dword ptr [ebp-230h], 40000h

loc_4C7F99:				; CODE XREF: .text:004C7F84j
					; .text:004C7F8Dj
		cmp	dword ptr [ebp+14h], 0
		jl	short loc_4C7FA9
		movzx	ecx, word ptr [ebp+14h]
		mov	[ebp-224h], ecx

loc_4C7FA9:				; CODE XREF: .text:004C7F9Dj
		mov	eax, [ebp+1Ch]
		mov	[ebp-220h], eax
		cmp	dword ptr [ebp+20h], 0
		jl	short loc_4C7FC1
		mov	edx, [ebp+20h]
		mov	[ebp-21Ch], edx

loc_4C7FC1:				; CODE XREF: .text:004C7FB6j
		mov	ecx, [ebp+18h]
		push	ecx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_4C7FEF
		xor	eax, eax
		mov	[ebp-214h], eax
		push	208h		; n
		push	0		; c
		lea	edx, [ebp-210h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		jmp	short loc_4C800F
; ---------------------------------------------------------------------------

loc_4C7FEF:				; CODE XREF: .text:004C7FCDj
		mov	ecx, [eax]
		add	eax, 4Ch
		mov	[ebp-214h], ecx
		push	208h		; n
		push	eax		; src
		lea	edx, [ebp-210h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch

loc_4C800F:				; CODE XREF: .text:004C7FEDj
		cmp	dword ptr [ebp+28h], 0
		jnz	short loc_4C801C
		mov	dword ptr [ebp+28h], offset word_55FA34

loc_4C801C:				; CODE XREF: .text:004C8013j
		cmp	dword ptr [ebp+2Ch], 0
		jnz	short loc_4C8029
		mov	dword ptr [ebp+2Ch], offset word_55FA34

loc_4C8029:				; CODE XREF: .text:004C8020j
		cmp	dword ptr [ebp+30h], 0
		jnz	short loc_4C807B
		mov	dword ptr [ebp+30h], offset word_55FA34
		jmp	short loc_4C807B
; ---------------------------------------------------------------------------

loc_4C8038:				; CODE XREF: .text:004C7F49j
		xor	ecx, ecx
		mov	[ebp-230h], edi
		mov	[ebp-21Ch], ecx
		mov	[ebp-220h], ecx
		mov	eax, [ebp+24h]
		xor	edx, edx
		mov	[ebp-218h], eax
		mov	[ebp-214h], edx
		mov	word ptr [ebp-210h], 0
		mov	dword ptr [ebp+28h], offset word_55FA34
		mov	dword ptr [ebp+2Ch], offset word_55FA34
		mov	dword ptr [ebp+30h], offset word_55FA34

loc_4C807B:				; CODE XREF: .text:004C802Dj
					; .text:004C8036j
		mov	dword ptr [ebp-234h], 1
		mov	eax, [ebp+18h]
		mov	[ebp-22Ch], eax
		mov	edx, [ebp+0Ch]
		mov	[ebp-228h], edx
		xor	edi, edi
		mov	eax, [ebp+28h]
		push	eax		; s
		push	57h		; type
		push	ebx		; _addr
		call	InsertnameW
		add	esp, 0Ch
		or	edi, eax
		mov	edx, [ebp+2Ch]
		push	edx		; s
		push	58h		; type
		push	ebx		; _addr
		call	InsertnameW
		add	esp, 0Ch
		or	edi, eax
		mov	ecx, [ebp+30h]
		push	ecx		; s
		push	59h		; type
		push	ebx		; _addr
		call	InsertnameW
		add	esp, 0Ch
		or	edi, eax
		test	esi, esi
		jz	short loc_4C80E5
		push	esi
		push	edi
		mov	edi, esi
		lea	esi, [ebp-238h]
		mov	ecx, 8Ch
		rep movsd
		pop	edi
		pop	esi
		jmp	short loc_4C8100
; ---------------------------------------------------------------------------

loc_4C80E5:				; CODE XREF: .text:004C80CEj
		lea	eax, [ebp-238h]
		push	eax		; item
		push	offset bphard.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		test	eax, eax
		jnz	short loc_4C8100
		or	edi, 0FFFFFFFFh

loc_4C8100:				; CODE XREF: .text:004C80E3j
					; .text:004C80FBj
		push	1
		call	loc_44F668
		cmp	dword ptr [ebp-8], 1000h
		pop	ecx
		jnz	short loc_4C8135
		call	Findmainmodule
		test	eax, eax
		jz	short loc_4C8124
		mov	dword ptr [eax+9A8h], 1

loc_4C8124:				; CODE XREF: .text:004C8118j
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_4C8135:				; CODE XREF: .text:004C810Fj
		mov	eax, edi

loc_4C8137:				; CODE XREF: .text:004C7E02j
					; .text:004C7E13j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 361. _Enablehardbreakpoint
; Exported entry 486. Enablehardbreakpoint

; signed int __cdecl Enablehardbreakpoint(int index, int enable)
		public Enablehardbreakpoint
Enablehardbreakpoint:			; CODE XREF: .text:00433D68p
					; .text:0043420Cp ...
		push	ebp		; _Enablehardbreakpoint
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jl	short loc_4C8154
		cmp	eax, 4
		jl	short loc_4C815C

loc_4C8154:				; CODE XREF: .text:004C814Dj
		or	eax, 0FFFFFFFFh
		jmp	loc_4C8200
; ---------------------------------------------------------------------------

loc_4C815C:				; CODE XREF: .text:004C8152j
		push	0		; subaddr
		push	eax		; _addr
		push	offset bphard.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4C817A
		or	eax, 0FFFFFFFFh
		jmp	loc_4C8200
; ---------------------------------------------------------------------------

loc_4C817A:				; CODE XREF: .text:004C8170j
		test	byte ptr [ebx+9], 10h
		jnz	short loc_4C8185
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C8200
; ---------------------------------------------------------------------------

loc_4C8185:				; CODE XREF: .text:004C817Ej
		test	esi, esi
		jnz	short loc_4C8192
		or	dword ptr [ebx+8], 20000h
		jmp	short loc_4C81A6
; ---------------------------------------------------------------------------

loc_4C8192:				; CODE XREF: .text:004C8187j
		test	esi, esi
		jle	short loc_4C819F
		and	dword ptr [ebx+8], 0FFFDFFFFh
		jmp	short loc_4C81A6
; ---------------------------------------------------------------------------

loc_4C819F:				; CODE XREF: .text:004C8194j
		xor	dword ptr [ebx+8], 20000h

loc_4C81A6:				; CODE XREF: .text:004C8190j
					; .text:004C819Dj
		push	1
		call	loc_44F668
		pop	ecx
		call	Findmainmodule
		test	eax, eax
		jz	short loc_4C81C1
		mov	dword ptr [eax+9A8h], 1

loc_4C81C1:				; CODE XREF: .text:004C81B5j
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		test	byte ptr [ebx+0Ah], 2
		jz	short loc_4C81FE
		xor	ebx, ebx
		jmp	short loc_4C81F6
; ---------------------------------------------------------------------------

loc_4C81DC:				; CODE XREF: .text:004C81FCj
		push	ebx		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4C81F5
		or	dword ptr [eax+6D0h], 4

loc_4C81F5:				; CODE XREF: .text:004C81ECj
		inc	ebx

loc_4C81F6:				; CODE XREF: .text:004C81DAj
		cmp	ebx, thread.sorted.n
		jl	short loc_4C81DC

loc_4C81FE:				; CODE XREF: .text:004C81D6j
		xor	eax, eax

loc_4C8200:				; CODE XREF: .text:004C8157j
					; .text:004C8175j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 362. _Findfreehardbreakslot
; Exported entry 512. Findfreehardbreakslot

; signed int __cdecl Findfreehardbreakslot(ulong type)
		public Findfreehardbreakslot
Findfreehardbreakslot:			; CODE XREF: .text:0044F05Ep
		push	ebp		; _Findfreehardbreakslot
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		cmp	g_IsWinxp, 0
		mov	esi, [ebp+8]
		jnz	short loc_4C821B
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C8267
; ---------------------------------------------------------------------------

loc_4C821B:				; CODE XREF: .text:004C8214j
		cmp	bphard.sorted.n, 0
		jnz	short loc_4C822B
		mov	eax, 3
		jmp	short loc_4C8267
; ---------------------------------------------------------------------------

loc_4C822B:				; CODE XREF: .text:004C8222j
		or	edi, 0FFFFFFFFh
		xor	ebx, ebx

loc_4C8230:				; CODE XREF: .text:004C8263j
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bphard.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4C8248
		mov	edi, ebx
		jmp	short loc_4C825F
; ---------------------------------------------------------------------------

loc_4C8248:				; CODE XREF: .text:004C8242j
		cmp	esi, [eax+8]
		jnz	short loc_4C825F
		mov	eax, esi
		and	eax, 0E09000h
		cmp	eax, 800000h
		jnz	short loc_4C825F
		mov	eax, ebx
		jmp	short loc_4C8267
; ---------------------------------------------------------------------------

loc_4C825F:				; CODE XREF: .text:004C8246j
					; .text:004C824Bj ...
		inc	ebx
		cmp	ebx, 4
		jl	short loc_4C8230
		mov	eax, edi

loc_4C8267:				; CODE XREF: .text:004C8219j
					; .text:004C8229j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C826C:				; CODE XREF: .text:loc_45090Cp
					; .text:loc_455B26p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, offset bphard
		cmp	dword ptr [esi+44h], 0
		jz	short loc_4C8285
		cmp	g_IsWinxp, 0
		jnz	short loc_4C8289

loc_4C8285:				; CODE XREF: .text:004C827Aj
		xor	eax, eax
		jmp	short loc_4C82B3
; ---------------------------------------------------------------------------

loc_4C8289:				; CODE XREF: .text:004C8283j
		xor	ebx, ebx
		jmp	short loc_4C82AC
; ---------------------------------------------------------------------------

loc_4C828D:				; CODE XREF: .text:004C82AFj
		push	ebx		; index
		lea	eax, [esi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4C82AB
		test	byte ptr [eax+0Ah], 2
		jnz	short loc_4C82AB
		mov	eax, 1
		jmp	short loc_4C82B3
; ---------------------------------------------------------------------------

loc_4C82AB:				; CODE XREF: .text:004C829Cj
					; .text:004C82A2j
		inc	ebx

loc_4C82AC:				; CODE XREF: .text:004C828Bj
		cmp	ebx, [esi+44h]
		jl	short loc_4C828D
		xor	eax, eax

loc_4C82B3:				; CODE XREF: .text:004C8287j
					; .text:004C82A9j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
