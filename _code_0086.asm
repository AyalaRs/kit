.code

loc_4A6434:				; CODE XREF: .text:004B63E0p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFB90h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4A644D
		xor	eax, eax
		jmp	loc_4A68F4
; ---------------------------------------------------------------------------

loc_4A644D:				; CODE XREF: .text:004A6444j
		mov	dword_5F2D60, 5
		cmp	dword_586178, 0
		jz	short loc_4A6465
		call	Listmemory

loc_4A6465:				; CODE XREF: .text:004A645Ej
		xor	edx, edx
		xor	eax, eax
		mov	[ebp-1Ch], edx
		mov	[ebp-18h], edx
		mov	[ebp-4], eax
		jmp	short loc_4A64C1
; ---------------------------------------------------------------------------

loc_4A6474:				; CODE XREF: .text:004A64CAj
		mov	ecx, [ebp-4]
		push	ecx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_4A64BE
		test	byte ptr [esi+0Bh], 8
		jnz	short loc_4A64BE
		mov	eax, [ebp+8]
		mov	edx, [eax]
		cmp	edx, [esi]
		ja	short loc_4A64BE
		mov	ecx, [ebp+8]
		mov	edx, [ebp+8]
		mov	eax, [ecx]
		add	eax, [edx+4]
		cmp	eax, [esi]
		jbe	short loc_4A64BE
		test	dword ptr [esi+8], 2005000h
		jz	short loc_4A64BE
		cmp	dword ptr [esi+60h], 0
		jz	short loc_4A64BE
		mov	ecx, [esi+4]
		add	[ebp-18h], ecx

loc_4A64BE:				; CODE XREF: .text:004A6489j
					; .text:004A648Fj ...
		inc	dword ptr [ebp-4]

loc_4A64C1:				; CODE XREF: .text:004A6472j
		mov	eax, [ebp-4]
		cmp	eax, memory.sorted.n
		jl	short loc_4A6474
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4A64EB
		push	offset aModuleIsNotBac ; "Module is not	backuped"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_4A68F4
; ---------------------------------------------------------------------------

loc_4A64EB:				; CODE XREF: .text:004A64D0j
		call	loc_4A0E20
		mov	edx, g_hCursor
		push	edx		; hCursor
		call	SetCursor
		mov	[ebp-3Ch], eax
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	loc_4A67AA
; ---------------------------------------------------------------------------

loc_4A650E:				; CODE XREF: .text:004A67B9j
		mov	edx, [ebp-4]
		push	edx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	loc_4A67A7
		test	byte ptr [esi+0Bh], 8
		jnz	loc_4A67A7
		mov	edx, [ebp+8]
		mov	edx, [edx]
		mov	eax, [esi]
		cmp	edx, eax
		ja	loc_4A67A7
		mov	ecx, [ebp+8]	; int
		add	edx, [ecx+4]
		cmp	eax, edx
		jnb	loc_4A67A7
		test	dword ptr [esi+8], 2005000h
		jz	loc_4A67A7
		cmp	dword ptr [esi+60h], 0
		jz	loc_4A67A7
		mov	edx, [esi+4]	; int
		add	[ebp-1Ch], edx
		mov	ebx, eax
		mov	[ebp-14h], edx
		push	0		; flags
		mov	eax, [ebp-14h]	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-30h], eax
		cmp	dword ptr [ebp-30h], 0
		jz	loc_4A67A7
		call	Suspendallthreads
		push	0		; mode
		mov	edx, [ebp-14h]
		push	edx		; size
		push	ebx		; _addr
		mov	ecx, [ebp-30h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	edi, eax
		call	Resumeallthreads
		cmp	edi, [ebp-14h]
		jz	short loc_4A65C0
		mov	eax, [ebp-30h]
		push	eax		; data
		call	Memfree
		pop	ecx
		jmp	loc_4A67A7
; ---------------------------------------------------------------------------

loc_4A65C0:				; CODE XREF: .text:004A65AFj
		mov	edx, [esi+60h]
		xor	eax, eax
		mov	[ebp-34h], edx
		mov	ecx, [esi+64h]
		mov	esi, eax
		mov	[ebp-38h], ecx
		mov	[ebp-20h], eax
		mov	dword ptr [ebp-24h], 2000h

loc_4A65DA:				; CODE XREF: .text:004A65F9j
					; .text:004A664Fj ...
		cmp	esi, [ebp-14h]
		jnb	loc_4A679D

loc_4A65E3:				; CODE XREF: .text:004A6797j
		mov	eax, [ebp-30h]
		mov	ecx, [ebp-34h]
		mov	dl, [eax+esi]
		cmp	dl, [ecx+esi]
		jnz	loc_4A6683
		inc	esi
		cmp	esi, [ebp-20h]
		jb	short loc_4A65DA
		push	offset aSearching ; "Searching - "
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp-18h]
		push	eax		; nDenominator
		push	3E8h		; nNumerator
		mov	edx, [ebp-1Ch]
		add	edx, esi
		sub	edx, [ebp-14h]
		push	edx		; nNumber
		call	MulDiv
		push	eax		; promille
		call	Progress
		mov	ecx, [ebp-24h]
		add	esp, 8
		add	ecx, esi
		mov	eax, hwollymain
		mov	[ebp-20h], ecx
		push	1		; wRemoveMsg
		push	100h		; wMsgFilterMax
		push	100h		; wMsgFilterMin
		push	eax		; hWnd
		lea	edx, [ebp-470h]
		push	edx		; lpMsg
		call	PeekMessageW
		test	eax, eax
		jz	short loc_4A65DA
		mov	eax, [ebp-468h]
		cmp	eax, 20h
		jz	short loc_4A6665
		cmp	eax, 1Bh
		jnz	loc_4A65DA

loc_4A6665:				; CODE XREF: .text:004A665Aj
		push	offset aSearchInterrup ; "Search interrupted"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		mov	dword ptr [ebp-0Ch], 1
		jmp	loc_4A679D
; ---------------------------------------------------------------------------

loc_4A6683:				; CODE XREF: .text:004A65EFj
		cmp	esi, 40h
		jbe	short loc_4A6690
		lea	edi, [esi+ebx]
		sub	edi, 40h
		jmp	short loc_4A6692
; ---------------------------------------------------------------------------

loc_4A6690:				; CODE XREF: .text:004A6686j
		mov	edi, ebx

loc_4A6692:				; CODE XREF: .text:004A668Ej
					; .text:004A66C4j
		mov	eax, [ebp-38h]
		push	eax		; decode
		push	1		; n
		push	edi		; ip
		mov	edx, [ebp-14h]
		push	edx		; size
		push	ebx		; base
		mov	ecx, [ebp-30h]
		push	ecx		; copy
		call	Disassembleforward
		add	esp, 18h
		mov	edx, eax
		lea	eax, [esi+ebx]
		cmp	edx, eax
		jnz	short loc_4A66B7
		mov	edi, edx
		jmp	short loc_4A66C6
; ---------------------------------------------------------------------------

loc_4A66B7:				; CODE XREF: .text:004A66B1j
		lea	eax, [esi+ebx]
		cmp	edx, eax
		ja	short loc_4A66C6
		cmp	edi, edx
		jz	short loc_4A66C6
		mov	edi, edx
		jmp	short loc_4A6692
; ---------------------------------------------------------------------------

loc_4A66C6:				; CODE XREF: .text:004A66B5j
					; .text:004A66BCj ...
		mov	[ebp-2Ch], edi
		mov	[ebp-28h], edi
		xor	eax, eax
		mov	[ebp-10h], eax

loc_4A66D1:				; CODE XREF: .text:004A6728j
		mov	edx, [ebp-38h]
		push	edx		; decode
		push	1		; n
		push	edi		; ip
		mov	ecx, [ebp-14h]
		push	ecx		; size
		push	ebx		; base
		mov	eax, [ebp-30h]
		push	eax		; copy
		call	Disassembleforward
		add	esp, 18h
		mov	edx, eax
		cmp	edi, edx
		jnz	short loc_4A66F4
		mov	[ebp-2Ch], edx
		jmp	short loc_4A672A
; ---------------------------------------------------------------------------

loc_4A66F4:				; CODE XREF: .text:004A66EDj
		inc	dword ptr [ebp-10h]
		mov	eax, edi
		cmp	edx, eax
		jbe	short loc_4A6722

loc_4A66FD:				; CODE XREF: .text:004A6720j
		mov	ecx, eax
		sub	ecx, ebx
		mov	esi, [ebp-30h]
		mov	cl, [esi+ecx]
		mov	esi, eax
		sub	esi, ebx
		mov	edi, [ebp-34h]
		cmp	cl, [edi+esi]
		jz	short loc_4A671D
		xor	eax, eax
		mov	[ebp-10h], eax
		mov	[ebp-2Ch], edx
		jmp	short loc_4A6722
; ---------------------------------------------------------------------------

loc_4A671D:				; CODE XREF: .text:004A6711j
		inc	eax
		cmp	edx, eax
		ja	short loc_4A66FD

loc_4A6722:				; CODE XREF: .text:004A66FBj
					; .text:004A671Bj
		cmp	dword ptr [ebp-10h], 2
		mov	edi, edx
		jl	short loc_4A66D1

loc_4A672A:				; CODE XREF: .text:004A66F2j
		mov	eax, [ebp-28h]
		mov	[ebp-454h], eax
		mov	dword ptr [ebp-450h], 1
		mov	edx, [ebp-454h]
		cmp	edx, [ebp+0Ch]
		jnz	short loc_4A6759
		mov	dword ptr [ebp-44Ch], 10000h
		xor	ecx, ecx
		mov	[ebp+0Ch], ecx
		jmp	short loc_4A6761
; ---------------------------------------------------------------------------

loc_4A6759:				; CODE XREF: .text:004A6746j
		xor	eax, eax
		mov	[ebp-44Ch], eax

loc_4A6761:				; CODE XREF: .text:004A6757j
		xor	edx, edx
		lea	ecx, [ebp-454h]
		mov	[ebp-444h], edx
		mov	[ebp-448h], edx
		mov	eax, [ebp-2Ch]
		sub	eax, [ebp-28h]
		mov	[ebp-440h], eax
		push	ecx		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8
		mov	esi, [ebp-2Ch]
		sub	esi, ebx
		cmp	esi, [ebp-14h]
		jb	loc_4A65E3

loc_4A679D:				; CODE XREF: .text:004A65DDj
					; .text:004A667Ej
		mov	eax, [ebp-30h]
		push	eax		; data
		call	Memfree
		pop	ecx

loc_4A67A7:				; CODE XREF: .text:004A6523j
					; .text:004A652Dj ...
		inc	dword ptr [ebp-4]

loc_4A67AA:				; CODE XREF: .text:004A6509j
		mov	edx, [ebp-4]
		cmp	edx, memory.sorted.n
		jge	short loc_4A67BF
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_4A650E

loc_4A67BF:				; CODE XREF: .text:004A67B3j
		cmp	dword_5BE6D8, 0
		jz	short loc_4A6815
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4A6815
		mov	ecx, [ebp+0Ch]
		xor	eax, eax
		mov	[ebp-454h], ecx
		xor	edx, edx
		mov	dword ptr [ebp-450h], 1
		mov	dword ptr [ebp-44Ch], 10000h
		mov	[ebp-444h], eax
		mov	[ebp-448h], eax
		mov	[ebp-440h], edx
		lea	ecx, [ebp-454h]
		push	ecx		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4A6815:				; CODE XREF: .text:004A67C6j
					; .text:004A67CCj
		push	$CTW0("");(offset aAddress+0Dh) ;	format
		push	0		; promille
		call	Progress
		add	esp, 8
		mov	eax, [ebp-3Ch]
		push	eax		; hCursor
		call	SetCursor
		cmp	stru_5FA8D4.n, 1
		jnz	short loc_4A685B
		push	offset aFound1Modifica ; "Found	1 modification"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-23Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-8], eax
		jmp	short loc_4A6880
; ---------------------------------------------------------------------------

loc_4A685B:				; CODE XREF: .text:004A6834j
		mov	ecx, stru_5FA8D4.n
		push	ecx
		push	offset aFoundIModifica ; "Found	%i modifications"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-23Ch]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-8], eax

loc_4A6880:				; CODE XREF: .text:004A6859j
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4A68B1
		push	offset aIncomplete ; " (incomplete)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-8]
		push	edx		; n
		mov	ecx, [ebp-8]
		add	ecx, ecx
		lea	eax, [ebp-23Ch]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4A68B1:				; CODE XREF: .text:004A6884j
		mov	edx, [ebp+8]
		add	edx, 0Ch
		push	edx
		push	offset aModsS	; "Mods	%s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-43Ch]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-23Ch]	; int
		push	eax		; int
		mov	edx, [ebp+10h]	; int
		push	edx		; int
		lea	ecx, [ebp-43Ch]	; int
		push	ecx		; int
		push	9		; int
		push	offset stru_5FA8D4 ; s
		call	loc_4A0E4C
		add	esp, 14h

loc_4A68F4:				; CODE XREF: .text:004A6448j
					; .text:004A64E6j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4A68FC@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int)
loc_4A68FC:				; CODE XREF: .text:004A7AB0p
					; .text:004B5B6Ep
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD4h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_4A6912
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4A691A

loc_4A6912:				; CODE XREF: .text:004A690Aj
		or	eax, 0FFFFFFFFh
		jmp	loc_4A6BC5
; ---------------------------------------------------------------------------

loc_4A691A:				; CODE XREF: .text:004A6910j
		mov	dword_5F2D60, 5
		mov	edx, [esi]
		mov	[ebp-0Ch], edx
		cmp	dword ptr [esi+14h], 0
		mov	edi, [esi+4]
		jnz	short loc_4A693D
		mov	eax, [esi+4A4h]
		mov	[ebp-20h], eax
		jmp	short loc_4A6974
; ---------------------------------------------------------------------------

loc_4A693D:				; CODE XREF: .text:004A6930j
		cmp	dword ptr [esi+298h], 0
		jz	short loc_4A694D
		xor	edx, edx
		mov	[ebp-20h], edx
		jmp	short loc_4A6974
; ---------------------------------------------------------------------------

loc_4A694D:				; CODE XREF: .text:004A6944j
		mov	ecx, [ebp-0Ch]
		push	ecx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_4A6967
		mov	edx, [eax]
		cmp	edx, [ebp-0Ch]
		jnz	short loc_4A6967
		cmp	edi, [eax+4]
		jz	short loc_4A696E

loc_4A6967:				; CODE XREF: .text:004A6959j
					; .text:004A6960j
		xor	eax, eax
		mov	[ebp-20h], eax
		jmp	short loc_4A6974
; ---------------------------------------------------------------------------

loc_4A696E:				; CODE XREF: .text:004A6965j
		mov	ecx, [eax+60h]
		mov	[ebp-20h], ecx

loc_4A6974:				; CODE XREF: .text:004A693Bj
					; .text:004A694Bj ...
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_4A6993
		push	offset aNoBackup ; "No backup"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_4A6BC5
; ---------------------------------------------------------------------------

loc_4A6993:				; CODE XREF: .text:004A6978j
		mov	eax, [esi+288h]
		cmp	eax, [esi+28Ch]
		jnb	short loc_4A69AF
		cmp	eax, [ebp-0Ch]
		jb	short loc_4A69AF
		mov	edx, [ebp-0Ch]
		add	edx, edi	; int
		cmp	eax, edx
		jb	short loc_4A69B3

loc_4A69AF:				; CODE XREF: .text:004A699Fj
					; .text:004A69A4j
		xor	ebx, ebx
		jmp	short loc_4A69B8
; ---------------------------------------------------------------------------

loc_4A69B3:				; CODE XREF: .text:004A69ADj
		mov	ebx, eax
		sub	ebx, [ebp-0Ch]

loc_4A69B8:				; CODE XREF: .text:004A69B1j
		mov	eax, dword_5BE6DC
		test	eax, eax
		jz	short loc_4A69C4
		dec	eax
		jnz	short loc_4A69D5

loc_4A69C4:				; CODE XREF: .text:004A69BFj
		cmp	dword ptr [ebp+0Ch], 3
		mov	edx, 2
		jz	short loc_4A69D0
		dec	edx

loc_4A69D0:				; CODE XREF: .text:004A69CDj
		mov	[ebp-4], edx
		jmp	short loc_4A69E4
; ---------------------------------------------------------------------------

loc_4A69D5:				; CODE XREF: .text:004A69C2j
		cmp	dword ptr [ebp+0Ch], 3
		mov	ecx, 1
		jz	short loc_4A69E1
		inc	ecx		; int

loc_4A69E1:				; CODE XREF: .text:004A69DEj
		mov	[ebp-4], ecx

loc_4A69E4:				; CODE XREF: .text:004A69D3j
		mov	eax, [esi+298h]	; int
		test	eax, eax
		jz	short loc_4A69F3
		mov	[ebp-1Ch], eax
		jmp	short loc_4A6A46
; ---------------------------------------------------------------------------

loc_4A69F3:				; CODE XREF: .text:004A69ECj
		push	0		; flags
		push	edi		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_4A6A0F
		or	eax, 0FFFFFFFFh
		jmp	loc_4A6BC5
; ---------------------------------------------------------------------------

loc_4A6A0F:				; CODE XREF: .text:004A6A05j
		call	Suspendallthreads
		push	0		; mode
		push	edi		; size
		mov	edx, [ebp-0Ch]
		push	edx		; _addr
		mov	ecx, [ebp-1Ch]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-10h], eax
		call	Resumeallthreads
		cmp	edi, [ebp-10h]
		jz	short loc_4A6A46
		mov	eax, [ebp-1Ch]
		push	eax		; data
		call	Memfree
		pop	ecx
		or	eax, 0FFFFFFFFh
		jmp	loc_4A6BC5
; ---------------------------------------------------------------------------

loc_4A6A46:				; CODE XREF: .text:004A69F1j
					; .text:004A6A32j
		mov	eax, [esi+8]
		mov	edx, eax
		and	eax, 0FFh
		and	edx, 3F0000h
		mov	[ebp-18h], edx
		mov	[ebp-24h], eax
		mov	dword ptr [ebp-28h], 1
		mov	ecx, [ebp-28h]
		cmp	ecx, [ebp-24h]
		jbe	short loc_4A6A70
		lea	eax, [ebp-28h]
		jmp	short loc_4A6A73
; ---------------------------------------------------------------------------

loc_4A6A70:				; CODE XREF: .text:004A6A69j
		lea	eax, [ebp-24h]

loc_4A6A73:				; CODE XREF: .text:004A6A6Ej
		mov	edx, [eax]
		xor	ecx, ecx
		mov	[ebp-14h], edx
		mov	[ebp-8], ecx
		cmp	dword ptr [ebp-4], 1
		jnz	short loc_4A6AE6
		cmp	dword ptr [ebp-18h], 0C0000h
		jz	short loc_4A6A95
		cmp	dword ptr [ebp-18h], 0D0000h
		jnz	short loc_4A6AB3

loc_4A6A95:				; CODE XREF: .text:004A6A8Aj
		push	1		; n
		mov	eax, [esi]
		add	eax, ebx
		push	eax		; _addr
		push	esi		; pd
		call	Dumpforward
		add	esp, 0Ch
		sub	eax, [esi]
		cmp	ebx, eax
		jnz	short loc_4A6AAF
		mov	ebx, edi
		jmp	short loc_4A6AB6
; ---------------------------------------------------------------------------

loc_4A6AAF:				; CODE XREF: .text:004A6AA9j
		mov	ebx, eax
		jmp	short loc_4A6AB6
; ---------------------------------------------------------------------------

loc_4A6AB3:				; CODE XREF: .text:004A6A93j
		add	ebx, [ebp-14h]

loc_4A6AB6:				; CODE XREF: .text:004A6AADj
					; .text:004A6AB1j
		mov	eax, [ebp-20h]
		cmp	edi, ebx
		lea	edx, [eax+ebx]
		mov	[ebp-2Ch], edx
		mov	ecx, [ebp-1Ch]
		lea	eax, [ecx+ebx]
		jbe	short loc_4A6B0C

loc_4A6AC9:				; CODE XREF: .text:004A6AE2j
		mov	dl, [eax]
		mov	ecx, [ebp-2Ch]
		cmp	dl, [ecx]
		jz	short loc_4A6ADB
		mov	dword ptr [ebp-8], 1
		jmp	short loc_4A6B0C
; ---------------------------------------------------------------------------

loc_4A6ADB:				; CODE XREF: .text:004A6AD0j
		inc	ebx
		inc	dword ptr [ebp-2Ch]
		inc	eax
		cmp	edi, ebx
		ja	short loc_4A6AC9
		jmp	short loc_4A6B0C
; ---------------------------------------------------------------------------

loc_4A6AE6:				; CODE XREF: .text:004A6A81j
		mov	eax, [ebp-20h]
		mov	ecx, [ebp-1Ch]
		test	ebx, ebx
		lea	edx, [eax+ebx]
		lea	eax, [ecx+ebx]
		jbe	short loc_4A6B0C

loc_4A6AF6:				; CODE XREF: .text:004A6B0Aj
		dec	eax
		dec	edx
		dec	ebx
		mov	cl, [eax]
		cmp	cl, [edx]
		jz	short loc_4A6B08
		mov	dword ptr [ebp-8], 1
		jmp	short loc_4A6B0C
; ---------------------------------------------------------------------------

loc_4A6B08:				; CODE XREF: .text:004A6AFDj
		test	ebx, ebx
		ja	short loc_4A6AF6

loc_4A6B0C:				; CODE XREF: .text:004A6AC7j
					; .text:004A6AD9j ...
		cmp	dword ptr [ebp-8], 0
		jz	loc_4A6BAF
		cmp	dword ptr [ebp-18h], 0C0000h
		jz	short loc_4A6B28
		cmp	dword ptr [ebp-18h], 0D0000h
		jnz	short loc_4A6B6D

loc_4A6B28:				; CODE XREF: .text:004A6B1Dj
		cmp	ebx, 40h
		jbe	short loc_4A6B37
		mov	edi, [ebp-0Ch]
		add	edi, ebx
		sub	edi, 40h
		jmp	short loc_4A6B3A
; ---------------------------------------------------------------------------

loc_4A6B37:				; CODE XREF: .text:004A6B2Bj
		mov	edi, [ebp-0Ch]

loc_4A6B3A:				; CODE XREF: .text:004A6B35j
					; .text:004A6B6Bj
		push	1		; n
		push	edi		; _addr
		push	esi		; pd
		call	Dumpforward
		add	esp, 0Ch
		mov	edx, [ebp-0Ch]
		add	edx, ebx
		cmp	eax, edx
		jbe	short loc_4A6B5E
		mov	ecx, [ebp+10h]
		mov	[ecx], edi
		sub	eax, edi
		mov	edx, [ebp+10h]
		mov	[edx+4], eax
		jmp	short loc_4A6BAF
; ---------------------------------------------------------------------------

loc_4A6B5E:				; CODE XREF: .text:004A6B4Dj
		cmp	edi, eax
		jnz	short loc_4A6B69
		xor	eax, eax
		mov	[ebp-8], eax
		jmp	short loc_4A6BAF
; ---------------------------------------------------------------------------

loc_4A6B69:				; CODE XREF: .text:004A6B60j
		mov	edi, eax
		jmp	short loc_4A6B3A
; ---------------------------------------------------------------------------

loc_4A6B6D:				; CODE XREF: .text:004A6B26j
		mov	eax, ebx
		xor	edx, edx
		div	dword ptr [ebp-14h]
		push	edx
		mov	eax, [esi+284h]
		sub	eax, [ebp-0Ch]
		xor	edx, edx
		div	dword ptr [ebp-14h]
		pop	eax
		sub	eax, edx
		cmp	eax, [ebp-14h]
		jbe	short loc_4A6B8E
		add	eax, [ebp-14h]

loc_4A6B8E:				; CODE XREF: .text:004A6B89j
		cmp	ebx, eax
		jnb	short loc_4A6B9C
		mov	edx, [ebp+10h]
		mov	ecx, [ebp-0Ch]
		mov	[edx], ecx
		jmp	short loc_4A6BA6
; ---------------------------------------------------------------------------

loc_4A6B9C:				; CODE XREF: .text:004A6B90j
		add	ebx, [ebp-0Ch]
		sub	ebx, eax
		mov	eax, [ebp+10h]
		mov	[eax], ebx

loc_4A6BA6:				; CODE XREF: .text:004A6B9Aj
		mov	edx, [ebp+10h]
		mov	ecx, [ebp-14h]
		mov	[edx+4], ecx

loc_4A6BAF:				; CODE XREF: .text:004A6B10j
					; .text:004A6B5Cj ...
		cmp	dword ptr [esi+298h], 0
		jnz	short loc_4A6BC2
		mov	eax, [ebp-1Ch]
		push	eax		; data
		call	Memfree
		pop	ecx

loc_4A6BC2:				; CODE XREF: .text:004A6BB6j
		mov	eax, [ebp-8]

loc_4A6BC5:				; CODE XREF: .text:004A6915j
					; .text:004A698Ej ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __usercall loc_4A6BCC@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int)
loc_4A6BCC:				; CODE XREF: .text:00412659p
					; .text:004B5D50p
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 5

loc_4A6BD5:				; CODE XREF: .text:004A6BDDj
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4A6BD5
		mov	eax, [ebp-4]
		add	esp, 0FFFFFAC0h
		push	ebx
		push	esi
		push	edi		; arglist
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4A6BF8
		xor	eax, eax
		jmp	loc_4A71C8
; ---------------------------------------------------------------------------

loc_4A6BF8:				; CODE XREF: .text:004A6BEFj
		mov	edx, dword_5BDCC8
		lea	ecx, [ebp-240h]
		mov	[ebp-0Ch], edx
		push	ecx		; errtxt
		push	2		; mode
		lea	eax, [ebp-3C40h]
		push	80h		; maxmodel
		push	eax		; model
		push	0		; ip
		push	offset src	; "CALL	ANY"
		mov	dword_5BDCC8, 1
		call	Assembleallforms
		mov	[ebp-8], eax
		add	esp, 18h
		cmp	dword ptr [ebp-8], 0
		mov	edx, [ebp-0Ch]
		mov	dword_5BDCC8, edx
		jnz	short loc_4A6C48
		xor	eax, eax
		jmp	loc_4A71C8
; ---------------------------------------------------------------------------

loc_4A6C48:				; CODE XREF: .text:004A6C3Fj
		mov	edx, g_hCursor
		push	edx		; hCursor
		call	SetCursor
		mov	[ebp-38h], eax
		call	loc_4A0E20
		cmp	dword_586178, 0
		jz	short loc_4A6C6A
		call	Listmemory

loc_4A6C6A:				; CODE XREF: .text:004A6C63j
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-2Ch], ecx
		mov	[ebp-28h], ecx
		mov	[ebp-4], eax
		jmp	short loc_4A6CD2
; ---------------------------------------------------------------------------

loc_4A6C79:				; CODE XREF: .text:004A6CDBj
		mov	edx, [ebp-4]
		push	edx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-34h], eax
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_4A6CCF
		mov	eax, [ebp-34h]
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_4A6CCF
		mov	edx, [ebp+8]
		mov	eax, [ebp-34h]
		mov	ecx, [edx]
		cmp	ecx, [eax]
		ja	short loc_4A6CCF
		mov	edx, [ebp+8]
		mov	eax, [ebp+8]
		mov	ecx, [edx]
		mov	edx, [ebp-34h]
		add	ecx, [eax+4]
		cmp	ecx, [edx]
		jbe	short loc_4A6CCF
		mov	ecx, [ebp-34h]
		test	dword ptr [ecx+8], 2005000h
		jz	short loc_4A6CCF
		mov	eax, [ebp-34h]
		mov	edx, [eax+4]
		add	[ebp-28h], edx

loc_4A6CCF:				; CODE XREF: .text:004A6C91j
					; .text:004A6C9Aj ...
		inc	dword ptr [ebp-4]

loc_4A6CD2:				; CODE XREF: .text:004A6C77j
		mov	ecx, [ebp-4]
		cmp	ecx, memory.sorted.n
		jl	short loc_4A6C79
		xor	eax, eax
		mov	[ebp-10h], eax
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	loc_4A7059
; ---------------------------------------------------------------------------

loc_4A6CEC:				; CODE XREF: .text:004A7068j
		mov	ecx, [ebp-4]
		push	ecx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-34h], eax
		cmp	dword ptr [ebp-34h], 0
		jz	loc_4A7056
		mov	eax, [ebp-34h]
		test	byte ptr [eax+0Bh], 8
		jnz	loc_4A7056
		mov	edx, [ebp+8]
		mov	eax, [ebp-34h]
		mov	eax, [eax]
		mov	edx, [edx]
		cmp	edx, eax
		ja	loc_4A7056
		mov	ecx, [ebp+8]	; int
		add	edx, [ecx+4]
		cmp	eax, edx
		jnb	loc_4A7056
		mov	edx, [ebp-34h]
		test	dword ptr [edx+8], 2005000h
		jz	loc_4A7056
		mov	edx, [ebp-34h]
		mov	edx, [edx+4]	; int
		add	[ebp-2Ch], edx
		mov	esi, eax
		mov	[ebp-14h], edx
		push	0		; flags
		mov	eax, [ebp-14h]	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-30h], eax
		cmp	dword ptr [ebp-30h], 0
		jz	loc_4A7056
		call	Suspendallthreads
		push	0		; mode
		mov	edx, [ebp-14h]
		push	edx		; size
		push	esi		; _addr
		mov	ecx, [ebp-30h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		call	Resumeallthreads
		cmp	ebx, [ebp-14h]
		jz	short loc_4A6DA3
		mov	eax, [ebp-30h]
		push	eax		; data
		call	Memfree
		pop	ecx
		jmp	loc_4A7056
; ---------------------------------------------------------------------------

loc_4A6DA3:				; CODE XREF: .text:004A6D92j
		mov	edx, [ebp-34h]
		mov	edi, [edx+64h]
		mov	[ebp-20h], esi
		mov	ebx, esi
		mov	eax, [ebp-34h]
		mov	eax, [eax+4]
		mov	ecx, 1F4h
		xor	edx, edx
		div	ecx
		mov	[ebp-3Ch], eax
		mov	dword ptr [ebp-40h], 2000h
		mov	eax, [ebp-40h]
		cmp	eax, [ebp-3Ch]
		jbe	short loc_4A6DD4
		lea	edx, [ebp-40h]
		jmp	short loc_4A6DD7
; ---------------------------------------------------------------------------

loc_4A6DD4:				; CODE XREF: .text:004A6DCDj
		lea	edx, [ebp-3Ch]

loc_4A6DD7:				; CODE XREF: .text:004A6DD2j
		mov	eax, [edx]
		mov	[ebp-24h], eax
		jmp	loc_4A703F
; ---------------------------------------------------------------------------

loc_4A6DE1:				; CODE XREF: .text:004A7046j
		cmp	ebx, [ebp-20h]
		jb	loc_4A6E72
		push	offset aSearching ; "Searching - "
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp-28h]
		push	ecx		; nDenominator
		push	3E8h		; nNumerator
		mov	eax, [ebp-2Ch]
		add	eax, ebx
		sub	eax, esi
		sub	eax, [ebp-14h]
		push	eax		; nNumber
		call	MulDiv
		push	eax		; promille
		call	Progress
		mov	edx, [ebp-24h]
		add	esp, 8
		add	edx, ebx
		mov	ecx, hwollymain
		mov	[ebp-20h], edx
		push	1		; wRemoveMsg
		push	100h		; wMsgFilterMax
		push	100h		; wMsgFilterMin
		push	ecx		; hWnd
		lea	eax, [ebp-5544h]
		push	eax		; lpMsg
		call	PeekMessageW
		test	eax, eax
		jz	short loc_4A6E72
		mov	eax, [ebp-553Ch]
		cmp	eax, 20h
		jz	short loc_4A6E53
		cmp	eax, 1Bh
		jnz	short loc_4A6E72

loc_4A6E53:				; CODE XREF: .text:004A6E4Cj
		push	offset aSearchInterrup ; "Search interrupted"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		mov	dword ptr [ebp-10h], 1
		jmp	loc_4A704C
; ---------------------------------------------------------------------------

loc_4A6E71:				; CODE XREF: .text:004A6EBAj
		inc	ebx

loc_4A6E72:				; CODE XREF: .text:004A6DE4j
					; .text:004A6E41j ...
		test	edi, edi
		jz	short loc_4A6EBC
		mov	edx, [ebp-14h]
		add	edx, esi
		cmp	ebx, edx
		jnb	short loc_4A6EBC
		mov	ecx, ebx
		sub	ecx, esi
		test	byte ptr [edi+ecx], 1Fh
		jz	short loc_4A6EBC
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 1Ch
		jz	short loc_4A6EBC
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 1Dh
		jz	short loc_4A6EBC
		mov	edx, ebx
		sub	edx, esi
		xor	ecx, ecx
		mov	cl, [edi+edx]
		and	ecx, 1Fh
		cmp	ecx, 1Eh
		jnz	short loc_4A6E71

loc_4A6EBC:				; CODE XREF: .text:004A6E74j
					; .text:004A6E7Dj ...
		mov	eax, [ebp-14h]
		add	eax, esi
		cmp	ebx, eax
		jnb	loc_4A704C
		mov	[ebp-18h], ebx
		push	0		; da
		push	0		; pb
		push	0		; pa
		mov	edx, [ebp-8]
		lea	ecx, [ebp-3C40h]
		push	edx		; nmodel
		push	ecx		; model
		mov	eax, [ebp-18h]
		push	eax		; cmdip
		mov	edx, [ebp-18h]
		mov	ecx, [ebp-14h]
		sub	edx, esi
		sub	ecx, edx
		push	ecx		; cmdsize
		mov	eax, [ebp-30h]
		add	eax, [ebp-18h]
		sub	eax, esi
		push	eax		; cmd
		call	Comparecommand
		add	esp, 20h
		inc	ebx
		test	eax, eax
		jz	loc_4A703F
		push	0		; predict
		push	0		; reg
		push	10h		; mode
		lea	edx, [ebp-5528h]
		push	edx		; da
		push	0		; dec
		mov	ecx, [ebp-18h]
		push	ecx		; ip
		mov	eax, [ebp-18h]
		sub	eax, esi
		mov	edx, [ebp-14h]
		sub	edx, eax
		push	edx		; cmdsize
		mov	ecx, [ebp-30h]
		add	ecx, [ebp-18h]
		sub	ecx, esi
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		test	edi, edi
		jnz	short loc_4A6F53
		cmp	dword ptr [ebp-54FCh], 0
		jnz	loc_4A703F
		cmp	dword ptr [ebp-54F8h], 0
		jnz	loc_4A703F

loc_4A6F53:				; CODE XREF: .text:004A6F37j
		mov	eax, [ebp-54E8h]
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_4A6F97
		cmp	dword_5BE6D0, 0
		jz	short loc_4A6F97
		mov	edx, [ebp-18h]
		push	edx		; _addr
		mov	ecx, [ebp+8]
		add	ecx, 950h
		push	ecx		; pdat
		call	Findsimpledata
		add	esp, 8
		test	eax, eax
		jz	short loc_4A6F97
		movzx	edx, word ptr [eax+4]
		and	edx, 3Fh
		cmp	edx, 20h
		jnz	short loc_4A6F97
		mov	eax, [eax+0Eh]
		mov	[ebp-1Ch], eax

loc_4A6F97:				; CODE XREF: .text:004A6F60j
					; .text:004A6F69j ...
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_4A703F
		mov	ecx, [ebp-1Ch]
		push	ecx		; _addr
		call	Followcall
		pop	ecx
		mov	[ebp-1Ch], eax
		mov	eax, [ebp+8]
		mov	eax, [eax]
		cmp	eax, [ebp-1Ch]
		ja	short loc_4A6FC3
		mov	edx, [ebp+8]
		add	eax, [edx+4]
		cmp	eax, [ebp-1Ch]
		ja	short loc_4A703F

loc_4A6FC3:				; CODE XREF: .text:004A6FB6j
		test	edi, edi
		jnz	short loc_4A6FDB
		push	0		; firsttype
		push	0		; _name
		mov	ecx, [ebp-1Ch]
		push	ecx		; _addr
		call	Findlabel
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4A703F

loc_4A6FDB:				; CODE XREF: .text:004A6FC5j
		mov	eax, [ebp-18h]
		mov	[ebp-3C58h], eax
		mov	dword ptr [ebp-3C54h], 1
		mov	edx, [ebp-3C58h]
		cmp	edx, [ebp+0Ch]
		jnz	short loc_4A700A
		mov	dword ptr [ebp-3C50h], 10000h
		xor	ecx, ecx
		mov	[ebp+0Ch], ecx
		jmp	short loc_4A7012
; ---------------------------------------------------------------------------

loc_4A700A:				; CODE XREF: .text:004A6FF7j
		xor	eax, eax
		mov	[ebp-3C50h], eax

loc_4A7012:				; CODE XREF: .text:004A7008j
		mov	edx, [ebp-1Ch]
		xor	ecx, ecx
		mov	[ebp-3C4Ch], edx
		mov	[ebp-3C48h], ecx
		xor	eax, eax
		lea	edx, [ebp-3C58h]
		mov	[ebp-3C44h], eax
		push	edx		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4A703F:				; CODE XREF: .text:004A6DDCj
					; .text:004A6F00j ...
		mov	ecx, [ebp-14h]
		add	ecx, esi
		cmp	ebx, ecx
		jb	loc_4A6DE1

loc_4A704C:				; CODE XREF: .text:004A6E6Cj
					; .text:004A6EC3j
		mov	eax, [ebp-30h]
		push	eax		; data
		call	Memfree
		pop	ecx

loc_4A7056:				; CODE XREF: .text:004A6D04j
					; .text:004A6D11j ...
		inc	dword ptr [ebp-4]

loc_4A7059:				; CODE XREF: .text:004A6CE7j
		mov	edx, [ebp-4]
		cmp	edx, memory.sorted.n
		jge	short loc_4A706E
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4A6CEC

loc_4A706E:				; CODE XREF: .text:004A7062j
		cmp	dword_5BE6D8, 0
		jz	short loc_4A70C4
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4A70C4
		mov	ecx, [ebp+0Ch]
		xor	eax, eax
		mov	[ebp-3C58h], ecx
		xor	edx, edx
		mov	dword ptr [ebp-3C54h], 1
		mov	dword ptr [ebp-3C50h], 10000h
		mov	[ebp-3C48h], eax
		mov	[ebp-3C4Ch], eax
		mov	[ebp-3C44h], edx
		lea	ecx, [ebp-3C58h]
		push	ecx		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4A70C4:				; CODE XREF: .text:004A7075j
					; .text:004A707Bj
		push	$CTW0("");(offset aAddress+0Dh) ;	format
		push	0		; promille
		call	Progress
		add	esp, 8
		mov	eax, [ebp-38h]
		push	eax		; hCursor
		call	SetCursor
		mov	edx, [ebp+8]
		add	edx, 0Ch
		push	edx
		push	offset aIntermodularCa ; "Intermodular calls in	%s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-640h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		cmp	stru_5FA8D4.n, 1
		jnz	short loc_4A712C
		push	offset aFound1Intermod ; "Found	1 intermodular call"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-240h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-8], eax
		jmp	short loc_4A7151
; ---------------------------------------------------------------------------

loc_4A712C:				; CODE XREF: .text:004A7105j
		mov	edx, stru_5FA8D4.n
		push	edx
		push	offset aFoundIIntermod ; "Found	%i intermodular	calls"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-240h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-8], eax

loc_4A7151:				; CODE XREF: .text:004A712Aj
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4A7182
		push	offset aIncomplete ; " (incomplete)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, [ebp-8]
		push	eax		; n
		mov	edx, [ebp-8]
		add	edx, edx
		lea	ecx, [ebp-240h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4A7182:				; CODE XREF: .text:004A7155j
		mov	eax, [ebp+8]
		add	eax, 0Ch
		push	eax
		push	offset aCallsS	; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-440h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-240h]	; int
		lea	eax, [ebp-640h]	; int
		lea	edx, [ebp-440h]	; int
		push	ecx		; int
		push	eax		; int
		push	edx		; int
		push	8		; int
		push	offset stru_5FA8D4 ; s
		call	loc_4A0E4C
		add	esp, 14h

loc_4A71C8:				; CODE XREF: .text:004A6BF3j
					; .text:004A6C43j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __usercall loc_4A71D0@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int, int)
loc_4A71D0:				; CODE XREF: .text:004581BCp
					; .text:004A7A84p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF794h
		push	ebx
		push	esi
		push	edi		; arglist
		cmp	dword ptr [ebp+8], 0
		mov	ebx, [ebp+0Ch]
		jz	short loc_4A71EB
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_4A71F3

loc_4A71EB:				; CODE XREF: .text:004A71E3j
		or	eax, 0FFFFFFFFh
		jmp	loc_4A771D
; ---------------------------------------------------------------------------

loc_4A71F3:				; CODE XREF: .text:004A71E9j
		mov	edx, [ebp+8]
		mov	ecx, [edx]
		mov	[ebp-24h], ecx
		mov	eax, [ebp+8]
		mov	edx, [eax+4]
		mov	[ebp-28h], edx
		mov	ecx, [ebp+8]
		mov	edx, [ebp+8]
		mov	eax, [ecx+288h]
		cmp	eax, [edx+28Ch]
		jnb	short loc_4A7227
		cmp	eax, [ebp-24h]
		jb	short loc_4A7227
		mov	ecx, [ebp-24h]
		add	ecx, [ebp-28h]
		cmp	eax, ecx
		jb	short loc_4A722E

loc_4A7227:				; CODE XREF: .text:004A7216j
					; .text:004A721Bj
		xor	eax, eax
		mov	[ebp-2Ch], eax
		jmp	short loc_4A7234
; ---------------------------------------------------------------------------

loc_4A722E:				; CODE XREF: .text:004A7225j
		sub	eax, [ebp-24h]
		mov	[ebp-2Ch], eax

loc_4A7234:				; CODE XREF: .text:004A722Cj
		cmp	ebx, 1
		jz	short loc_4A723E
		cmp	ebx, 4
		jnz	short loc_4A724E

loc_4A723E:				; CODE XREF: .text:004A7237j
		mov	dword ptr [ebp-0Ch], 1
		mov	dword ptr [ebp-2Ch], 0FFFFFFFFh
		jmp	short loc_4A727E
; ---------------------------------------------------------------------------

loc_4A724E:				; CODE XREF: .text:004A723Cj
		cmp	dword_5BE6DC, 0
		jz	short loc_4A7260
		cmp	dword_5BE6DC, 1
		jnz	short loc_4A7270

loc_4A7260:				; CODE XREF: .text:004A7255j
		mov	edx, 2
		cmp	ebx, 3
		jz	short loc_4A726B
		dec	edx

loc_4A726B:				; CODE XREF: .text:004A7268j
		mov	[ebp-0Ch], edx
		jmp	short loc_4A727E
; ---------------------------------------------------------------------------

loc_4A7270:				; CODE XREF: .text:004A725Ej
		mov	ecx, 1
		cmp	ebx, 3
		jz	short loc_4A727B
		inc	ecx

loc_4A727B:				; CODE XREF: .text:004A7278j
		mov	[ebp-0Ch], ecx

loc_4A727E:				; CODE XREF: .text:004A724Cj
					; .text:004A726Ej
		test	ebx, ebx
		jz	short loc_4A7294
		cmp	ebx, 1
		jz	short loc_4A7294
		cmp	hstr.n,	0
		jnz	loc_4A7372

loc_4A7294:				; CODE XREF: .text:004A7280j
					; .text:004A7285j
		mov	esi, 0B000h
		cmp	ebx, 1
		jnz	short loc_4A72A6
		or	esi, 100h
		jmp	short loc_4A72E2
; ---------------------------------------------------------------------------

loc_4A72A6:				; CODE XREF: .text:004A729Cj
		mov	eax, [ebp+8]
		mov	edx, [eax+8]
		and	edx, 3F0000h
		cmp	edx, 30000h
		jnz	short loc_4A72C2
		or	esi, 4400h
		jmp	short loc_4A72E2
; ---------------------------------------------------------------------------

loc_4A72C2:				; CODE XREF: .text:004A72B8j
		mov	ecx, [ebp+8]
		mov	eax, [ecx+8]
		and	eax, 3F0000h
		cmp	eax, 40000h
		jnz	short loc_4A72DC
		or	esi, 4500h
		jmp	short loc_4A72E2
; ---------------------------------------------------------------------------

loc_4A72DC:				; CODE XREF: .text:004A72D2j
		or	esi, 4100h

loc_4A72E2:				; CODE XREF: .text:004A72A4j
					; .text:004A72C0j ...
		mov	hstr.nmax, 400h
		push	esi		; mode
		mov	edx, [ebp+8]
		mov	ecx, [edx+24Ch]
		push	ecx		; fi
		mov	eax, [ebp+14h]
		push	eax		; y
		mov	edx, [ebp+10h]
		push	edx		; x
		push	0		; letter
		push	offset hstr	; hstr
		push	offset aEnterSearchPat ; "Enter	search pattern"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	ecx, [ebp+8]
		mov	eax, [ecx+244h]
		push	eax		; hparent
		call	Binaryedit
		add	esp, 20h
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jl	short loc_4A7336
		cmp	hstr.n,	0
		jnz	short loc_4A733E

loc_4A7336:				; CODE XREF: .text:004A732Bj
		or	eax, 0FFFFFFFFh
		jmp	loc_4A771D
; ---------------------------------------------------------------------------

loc_4A733E:				; CODE XREF: .text:004A7334j
		cmp	ebx, 1
		jnz	short loc_4A734D
		mov	dword_5BE6DC, 1

loc_4A734D:				; CODE XREF: .text:004A7341j
		cmp	dword_5BE6DC, 0
		jz	short loc_4A7359
		dec	ebx
		jnz	short loc_4A7369

loc_4A7359:				; CODE XREF: .text:004A7354j
		mov	dword ptr [ebp-2Ch], 0FFFFFFFFh
		mov	dword ptr [ebp-0Ch], 1
		jmp	short loc_4A7372
; ---------------------------------------------------------------------------

loc_4A7369:				; CODE XREF: .text:004A7357j
		mov	edx, dword_5BE6DC
		mov	[ebp-0Ch], edx

loc_4A7372:				; CODE XREF: .text:004A728Ej
					; .text:004A7367j
		mov	ecx, hstr.n
		mov	[ebp-18h], ecx
		mov	eax, [ebp-28h]
		cmp	eax, [ebp-18h]
		jnb	short loc_4A738A
		xor	eax, eax
		jmp	loc_4A771D
; ---------------------------------------------------------------------------

loc_4A738A:				; CODE XREF: .text:004A7381j
		mov	dword_5F2D60, 3
		xor	edx, edx
		mov	[ebp-10h], edx
		mov	ecx, [ebp+8]
		cmp	dword ptr [ecx+298h], 0
		jnz	short loc_4A73AA
		call	Suspendallthreads

loc_4A73AA:				; CODE XREF: .text:004A73A3j
		mov	eax, [ebp-28h]
		mov	[ebp-34h], eax
		xor	edx, edx
		mov	[ebp-38h], edx
		call	GetTickCount
		mov	[ebp-1Ch], eax
		xor	ecx, ecx
		mov	[ebp-8], ecx
		mov	eax, [ebp-2Ch]
		mov	[ebp-30h], eax

loc_4A73C8:				; CODE XREF: .text:004A73FEj
					; .text:004A75B8j ...
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4A73D4
		cmp	dword ptr [ebp-0Ch], 1
		jnz	short loc_4A73E8

loc_4A73D4:				; CODE XREF: .text:004A73CCj
		inc	dword ptr [ebp-2Ch]
		mov	edx, [ebp-2Ch]
		add	edx, [ebp-18h]
		cmp	edx, [ebp-28h]
		ja	loc_4A76EE
		jmp	short loc_4A7400
; ---------------------------------------------------------------------------

loc_4A73E8:				; CODE XREF: .text:004A73D2j
		cmp	dword ptr [ebp-2Ch], 0
		jz	loc_4A76EE
		dec	dword ptr [ebp-2Ch]
		mov	ecx, [ebp-2Ch]
		add	ecx, [ebp-18h]
		cmp	ecx, [ebp-28h]
		ja	short loc_4A73C8

loc_4A7400:				; CODE XREF: .text:004A73E6j
		mov	eax, [ebp+8]
		mov	eax, [eax+298h]
		test	eax, eax
		jz	short loc_4A7415
		add	eax, [ebp-2Ch]
		jmp	loc_4A75E7
; ---------------------------------------------------------------------------

loc_4A7415:				; CODE XREF: .text:004A740Bj
		mov	edx, [ebp-2Ch]
		cmp	edx, [ebp-34h]
		jb	short loc_4A7431
		mov	ecx, [ebp-2Ch]
		mov	eax, [ebp-34h]
		add	eax, [ebp-38h]
		add	ecx, [ebp-18h]
		cmp	ecx, eax
		jbe	loc_4A75DB

loc_4A7431:				; CODE XREF: .text:004A741Bj
		cmp	dword ptr [ebp-8], 0
		jz	loc_4A74D5
		push	1		; wRemoveMsg
		push	100h		; wMsgFilterMax
		push	100h		; wMsgFilterMin
		mov	edx, hwollymain
		push	edx		; hWnd
		lea	ecx, [ebp-86Ch]
		push	ecx		; lpMsg
		call	PeekMessageW
		test	eax, eax
		jz	short loc_4A748C
		mov	eax, [ebp-864h]
		cmp	eax, 20h
		jz	short loc_4A746E
		cmp	eax, 1Bh
		jnz	short loc_4A748C

loc_4A746E:				; CODE XREF: .text:004A7467j
		push	offset aSearchInterrup ; "Search interrupted"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	loc_4A76EE
; ---------------------------------------------------------------------------

loc_4A748C:				; CODE XREF: .text:004A745Cj
					; .text:004A746Cj
		mov	edx, [ebp-30h]
		sub	edx, [ebp-2Ch]
		cmp	edx, 80000h
		jb	short loc_4A74D5
		mov	ecx, [ebp-2Ch]
		sub	ecx, [ebp-30h]
		cmp	ecx, 80000h
		jb	short loc_4A74D5
		push	offset aSearchingPress ; "Searching - $	- press	SPACE to interrup"...
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp-28h]
		push	eax		; nDenominator
		push	3E8h		; nNumerator
		mov	edx, [ebp-2Ch]
		push	edx		; nNumber
		call	MulDiv
		push	eax		; promille
		call	Progress
		add	esp, 8
		mov	ecx, [ebp-2Ch]
		mov	[ebp-30h], ecx

loc_4A74D5:				; CODE XREF: .text:004A7435j
					; .text:004A7498j ...
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4A74E1
		cmp	dword ptr [ebp-0Ch], 1
		jnz	short loc_4A74E9

loc_4A74E1:				; CODE XREF: .text:004A74D9j
		mov	eax, [ebp-2Ch]
		mov	[ebp-34h], eax
		jmp	short loc_4A7503
; ---------------------------------------------------------------------------

loc_4A74E9:				; CODE XREF: .text:004A74DFj
		mov	eax, [ebp-2Ch]
		add	eax, [ebp-18h]
		cmp	eax, 800h
		jnb	short loc_4A74FD
		xor	edx, edx
		mov	[ebp-34h], edx
		jmp	short loc_4A7503
; ---------------------------------------------------------------------------

loc_4A74FD:				; CODE XREF: .text:004A74F4j
		sub	eax, [ebp-38h]
		mov	[ebp-34h], eax

loc_4A7503:				; CODE XREF: .text:004A74E7j
					; .text:004A74FBj
		mov	dword ptr [ebp-40h], 800h
		mov	ecx, [ebp-28h]
		sub	ecx, [ebp-34h]
		mov	[ebp-44h], ecx
		mov	eax, [ebp-44h]
		cmp	eax, [ebp-40h]
		jnb	short loc_4A7520
		lea	edx, [ebp-44h]
		jmp	short loc_4A7523
; ---------------------------------------------------------------------------

loc_4A7520:				; CODE XREF: .text:004A7519j
		lea	edx, [ebp-40h]

loc_4A7523:				; CODE XREF: .text:004A751Ej
		mov	eax, [edx]
		mov	[ebp-38h], eax
		push	1		; mode
		mov	ecx, [ebp-38h]
		push	ecx		; size
		mov	ebx, [ebp-24h]
		add	ebx, [ebp-34h]
		push	ebx		; _addr
		lea	eax, [ebp-850h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-20h], eax
		mov	edx, [ebp-20h]
		cmp	edx, [ebp-38h]
		jz	loc_4A75DB
		cmp	ebx, userspacelimit
		jb	short loc_4A75BD
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4A7584
		call	GetTickCount
		sub	eax, [ebp-1Ch]
		cmp	eax, 64h
		jb	short loc_4A7584
		mov	ecx, g_hCursor
		push	ecx		; hCursor
		call	SetCursor
		mov	[ebp-3Ch], eax
		mov	dword ptr [ebp-8], 1

loc_4A7584:				; CODE XREF: .text:004A755Fj
					; .text:004A756Cj
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4A7590
		cmp	dword ptr [ebp-0Ch], 1
		jnz	short loc_4A75A3

loc_4A7590:				; CODE XREF: .text:004A7588j
		mov	eax, [ebp-2Ch]
		add	eax, 1000h
		and	eax, 0FFFFF000h
		dec	eax
		mov	[ebp-2Ch], eax
		jmp	short loc_4A75B3
; ---------------------------------------------------------------------------

loc_4A75A3:				; CODE XREF: .text:004A758Ej
		mov	edx, [ebp-2Ch]
		and	edx, 0FFFFF000h
		sub	edx, [ebp-18h]
		inc	edx
		mov	[ebp-2Ch], edx

loc_4A75B3:				; CODE XREF: .text:004A75A1j
		xor	ecx, ecx
		mov	[ebp-38h], ecx
		jmp	loc_4A73C8
; ---------------------------------------------------------------------------

loc_4A75BD:				; CODE XREF: .text:004A7559j
		push	offset aUnableToRead_4 ; "Unable to read memory	of debugged proce"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	loc_4A76EE
; ---------------------------------------------------------------------------

loc_4A75DB:				; CODE XREF: .text:004A742Bj
					; .text:004A754Dj
		lea	eax, [ebp-850h]
		add	eax, [ebp-2Ch]
		sub	eax, [ebp-34h]

loc_4A75E7:				; CODE XREF: .text:004A7410j
		cmp	dword_5BE230, 0
		jnz	short loc_4A762A
		xor	edx, edx
		mov	[ebp-20h], edx
		mov	ebx, offset hstr.data
		mov	esi, eax
		mov	eax, [ebp-20h]
		cmp	eax, [ebp-18h]
		jnb	loc_4A76C7

loc_4A7608:				; CODE XREF: .text:004A7623j
		mov	dl, [esi]
		xor	dl, [ebx]
		and	dl, [ebx+400h]
		jnz	loc_4A76C7
		inc	dword ptr [ebp-20h]
		inc	ebx
		inc	esi
		mov	ecx, [ebp-20h]
		cmp	ecx, [ebp-18h]
		jb	short loc_4A7608
		jmp	loc_4A76C7
; ---------------------------------------------------------------------------

loc_4A762A:				; CODE XREF: .text:004A75EEj
		xor	edx, edx
		mov	[ebp-20h], edx
		mov	esi, eax
		mov	ebx, offset hstr._mask
		mov	eax, [ebp-20h]
		cmp	eax, [ebp-18h]
		jnb	loc_4A76C7

loc_4A7642:				; CODE XREF: .text:004A76C1j
		movzx	edi, byte ptr [ebx]
		cmp	edi, 0FFh
		jnz	short loc_4A7674
		movzx	edi, byte ptr [esi]
		push	edi		; ch
		call	__ltoupper
		pop	ecx
		push	eax
		xor	eax, eax
		mov	al, [ebx-400h]
		mov	[ebp-48h], eax
		mov	edx, [ebp-48h]
		push	edx		; ch
		call	__ltoupper
		pop	ecx
		pop	ecx
		cmp	ecx, eax
		jnz	short loc_4A76C7
		jmp	short loc_4A76B6
; ---------------------------------------------------------------------------

loc_4A7674:				; CODE XREF: .text:004A764Bj
		mov	edx, edi
		xor	eax, eax
		not	edx
		xor	ecx, ecx
		mov	al, [esi]
		mov	cl, [ebx-400h]
		and	eax, edx
		and	ecx, edi
		or	eax, ecx
		mov	[ebp-14h], eax
		xor	eax, eax
		mov	al, [esi]
		mov	[ebp-4Ch], eax
		mov	edx, [ebp-4Ch]
		push	edx		; ch
		call	__ltoupper
		pop	ecx
		push	eax
		mov	ecx, [ebp-14h]
		mov	[ebp-50h], ecx
		mov	eax, [ebp-50h]
		push	eax		; ch
		call	__ltoupper
		pop	ecx
		pop	edx
		xor	edx, eax
		test	edx, edi
		jnz	short loc_4A76C7

loc_4A76B6:				; CODE XREF: .text:004A7672j
		inc	dword ptr [ebp-20h]
		inc	esi
		inc	ebx
		mov	ecx, [ebp-20h]
		cmp	ecx, [ebp-18h]
		jb	loc_4A7642

loc_4A76C7:				; CODE XREF: .text:004A7602j
					; .text:004A7612j ...
		mov	eax, [ebp-20h]
		cmp	eax, [ebp-18h]
		jb	loc_4A73C8
		mov	edx, [ebp-24h]
		mov	ecx, [ebp+18h]
		add	edx, [ebp-2Ch]
		mov	[ecx], edx
		mov	eax, [ebp+18h]
		mov	edx, [ebp-18h]
		mov	[eax+4], edx
		mov	dword ptr [ebp-10h], 1

loc_4A76EE:				; CODE XREF: .text:004A73E0j
					; .text:004A73ECj ...
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4A7709
		push	0		; format
		push	0		; promille
		call	Progress
		add	esp, 8
		mov	ecx, [ebp-3Ch]
		push	ecx		; hCursor
		call	SetCursor

loc_4A7709:				; CODE XREF: .text:004A76F2j
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+298h], 0
		jnz	short loc_4A771A
		call	Resumeallthreads

loc_4A771A:				; CODE XREF: .text:004A7713j
		mov	eax, [ebp-10h]

loc_4A771D:				; CODE XREF: .text:004A71EEj
					; .text:004A7339j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A7724:				; CODE XREF: .text:004A8516p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF3DCh
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+10h], 0
		mov	eax, [ebp+8]
		jnz	short loc_4A7740
		xor	eax, eax
		jmp	loc_4A7930
; ---------------------------------------------------------------------------

loc_4A7740:				; CODE XREF: .text:004A7737j
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4A7775
		test	eax, eax
		jz	short loc_4A7775
		push	410h		; datasize
		lea	edx, [ebp-0A18h]
		push	edx		; data
		push	40h		; type
		push	eax		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4A776C
		xor	eax, eax
		jmp	loc_4A7930
; ---------------------------------------------------------------------------

loc_4A776C:				; CODE XREF: .text:004A7763j
		lea	edx, [ebp-0A18h]
		mov	[ebp+0Ch], edx

loc_4A7775:				; CODE XREF: .text:004A7744j
					; .text:004A7748j
		xor	esi, esi
		xor	eax, eax
		mov	[ebp-4], eax
		mov	edx, [ebp+0Ch]
		lea	ecx, [edx+10h]
		mov	[ebp-8], ecx
		jmp	short loc_4A77E2
; ---------------------------------------------------------------------------

loc_4A7787:				; CODE XREF: .text:004A77F3j
		push	20Ch		; datasize
		lea	eax, [ebp-0C24h]
		push	eax		; data
		push	41h		; type
		mov	edx, [ebp-8]
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jz	short loc_4A77DB
		xor	eax, eax
		lea	ecx, [ebp+esi*4-408h]
		lea	edx, [ebp-0C18h]
		jmp	short loc_4A77C4
; ---------------------------------------------------------------------------

loc_4A77B8:				; CODE XREF: .text:004A77D9j
		mov	ebx, [edx]
		inc	esi
		mov	[ecx], ebx
		add	ecx, 4
		inc	eax
		add	edx, 4

loc_4A77C4:				; CODE XREF: .text:004A77B6j
		cmp	eax, [ebp-0C1Ch]
		jge	short loc_4A77DB
		cmp	eax, 80h
		jge	short loc_4A77DB
		cmp	esi, 100h
		jl	short loc_4A77B8

loc_4A77DB:				; CODE XREF: .text:004A77A5j
					; .text:004A77CAj ...
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-8], 4

loc_4A77E2:				; CODE XREF: .text:004A7785j
		mov	eax, [ebp+0Ch]
		mov	edx, [eax+0Ch]
		cmp	edx, [ebp-4]
		jle	short loc_4A77F5
		cmp	esi, 100h
		jl	short loc_4A7787

loc_4A77F5:				; CODE XREF: .text:004A77EBj
		cmp	esi, 1
		jle	short loc_4A7818
		mov	ecx, [ebp+0Ch]
		lea	edx, [ebp-408h]
		mov	eax, [ecx+8]
		push	eax		; lp
		push	offset compareex ; compareex
		push	4		; size
		push	esi		; count
		push	edx		; data
		call	Heapsortex
		add	esp, 14h

loc_4A7818:				; CODE XREF: .text:004A77F8j
		xor	edi, edi
		xor	eax, eax
		mov	[ebp-4], eax
		lea	ebx, [ebp-408h]
		jmp	loc_4A791D
; ---------------------------------------------------------------------------

loc_4A782A:				; CODE XREF: .text:004A7928j
		test	edi, edi
		jle	short loc_4A784D
		mov	eax, 100h
		mov	edx, edi
		sub	eax, edi
		push	offset asc_54FB80 ; ","
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax

loc_4A784D:				; CODE XREF: .text:004A782Cj
		mov	ecx, [ebp+0Ch]
		test	byte ptr [ecx+8], 40h
		jz	short loc_4A786F
		lea	eax, [ebp-608h]
		push	eax		; _name
		mov	edx, [ebx]
		push	edx		; value
		push	offset aException_0 ; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch
		jmp	short loc_4A78B2
; ---------------------------------------------------------------------------

loc_4A786F:				; CODE XREF: .text:004A7854j
		mov	ecx, [ebp+0Ch]
		test	byte ptr [ecx+8], 20h
		jz	short loc_4A7891
		lea	eax, [ebp-608h]
		push	eax		; _name
		mov	edx, [ebx]
		push	edx		; value
		push	offset aMessage_0 ; "MESSAGE"
		call	Getconstantbyvalue
		add	esp, 0Ch
		jmp	short loc_4A78B2
; ---------------------------------------------------------------------------

loc_4A7891:				; CODE XREF: .text:004A7876j
		mov	ecx, [ebp+0Ch]
		test	byte ptr [ecx+8], 10h
		jz	short loc_4A78B0
		push	0		; mode
		mov	eax, [ebx]
		push	eax		; c
		lea	edx, [ebp-608h]
		push	edx		; s
		call	Commentcharacter
		add	esp, 0Ch
		jmp	short loc_4A78B2
; ---------------------------------------------------------------------------

loc_4A78B0:				; CODE XREF: .text:004A7898j
		xor	eax, eax

loc_4A78B2:				; CODE XREF: .text:004A786Dj
					; .text:004A788Fj ...
		test	eax, eax
		jnz	short loc_4A78F6
		mov	edx, [ebp+0Ch]
		test	byte ptr [edx+8], 80h
		jz	short loc_4A78C4
		cmp	dword ptr [ebx], 0
		jl	short loc_4A78DD

loc_4A78C4:				; CODE XREF: .text:004A78BDj
		mov	ecx, [ebx]
		lea	eax, [ebp-608h]
		push	ecx
		push	offset asc_54FBA8 ; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_4A78F6
; ---------------------------------------------------------------------------

loc_4A78DD:				; CODE XREF: .text:004A78C2j
		mov	edx, [ebx]
		lea	ecx, [ebp-608h]
		neg	edx
		push	edx
		push	offset asc_54FBAE ; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_4A78F6:				; CODE XREF: .text:004A78B4j
					; .text:004A78DBj
		lea	eax, [ebp-608h]
		mov	edx, 100h
		sub	edx, edi
		push	eax		; src
		mov	ecx, edi
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+10h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		inc	dword ptr [ebp-4]
		add	ebx, 4

loc_4A791D:				; CODE XREF: .text:004A7825j
		cmp	esi, [ebp-4]
		jle	short loc_4A792E
		cmp	edi, 0FFh
		jl	loc_4A782A

loc_4A792E:				; CODE XREF: .text:004A7920j
		mov	eax, edi

loc_4A7930:				; CODE XREF: .text:004A773Bj
					; .text:004A7767j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; signed int __cdecl loc_4A7938(t_dump *a1, int	a2)
loc_4A7938:				; CODE XREF: .text:004580C5p
					; .text:004A79F1p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+0Ch]
		cmp	eax, 7		; switch 8 cases
		ja	loc_4A79D4	; jumptable 004A7947 default case
		jmp	ds:off_4A794E[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4A794E	dd offset loc_4A79D4	; DATA XREF: .text:004A7947r
		dd offset loc_4A796E	; jump table for switch	statement
		dd offset loc_4A796E
		dd offset loc_4A797D
		dd offset loc_4A798C
		dd offset loc_4A7993
		dd offset loc_4A799A
		dd offset loc_4A79C3
; ---------------------------------------------------------------------------

loc_4A796E:				; CODE XREF: .text:004A7947j
					; DATA XREF: .text:off_4A794Eo
		cmp	nmodel,	0	; jumptable 004A7947 cases 1,2
		setnle	al
		and	eax, 1
		jmp	short loc_4A79D6
; ---------------------------------------------------------------------------

loc_4A797D:				; CODE XREF: .text:004A7947j
					; DATA XREF: .text:off_4A794Eo
		cmp	hstr.n,	0	; jumptable 004A7947 case 3
		setnbe	al
		and	eax, 1
		jmp	short loc_4A79D6
; ---------------------------------------------------------------------------

loc_4A798C:				; CODE XREF: .text:004A7947j
					; DATA XREF: .text:off_4A794Eo
		mov	eax, dword_5F6B94 ; jumptable 004A7947 case 4
		jmp	short loc_4A79D6
; ---------------------------------------------------------------------------

loc_4A7993:				; CODE XREF: .text:004A7947j
					; DATA XREF: .text:off_4A794Eo
		mov	eax, 1		; jumptable 004A7947 case 5
		jmp	short loc_4A79D6
; ---------------------------------------------------------------------------

loc_4A799A:				; CODE XREF: .text:004A7947j
					; DATA XREF: .text:off_4A794Eo
		cmp	dword ptr [ebp+8], 0 ; jumptable 004A7947 case 6
		jnz	short loc_4A79A4
		xor	eax, eax
		jmp	short loc_4A79D6
; ---------------------------------------------------------------------------

loc_4A79A4:				; CODE XREF: .text:004A799Ej
		mov	edx, [ebp+8]
		mov	ecx, [edx+8]
		and	ecx, 0FFh
		cmp	ecx, g_dumptype
		jz	short loc_4A79BC
		xor	eax, eax
		jmp	short loc_4A79D6
; ---------------------------------------------------------------------------

loc_4A79BC:				; CODE XREF: .text:004A79B6j
		mov	eax, dword_5F2D68
		jmp	short loc_4A79D6
; ---------------------------------------------------------------------------

loc_4A79C3:				; CODE XREF: .text:004A7947j
					; DATA XREF: .text:off_4A794Eo
		cmp	dword ptr [ebp+8], 0 ; jumptable 004A7947 case 7
		jnz	short loc_4A79CD
		xor	eax, eax
		jmp	short loc_4A79D6
; ---------------------------------------------------------------------------

loc_4A79CD:				; CODE XREF: .text:004A79C7j
		mov	eax, dword_5F2D7C
		jmp	short loc_4A79D6
; ---------------------------------------------------------------------------

loc_4A79D4:				; CODE XREF: .text:004A7941j
					; .text:004A7947j
					; DATA XREF: ...
		xor	eax, eax	; jumptable 004A7947 default case

loc_4A79D6:				; CODE XREF: .text:004A797Bj
					; .text:004A798Aj ...
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A79D8:				; CODE XREF: .text:004B5C39p
					; .text:004B5C73p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4A79E9
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A79E9:				; CODE XREF: .text:004A79E1j
		mov	edx, dword_5F2D60
		push	edx
		push	ebx
		call	loc_4A7938
		add	esp, 8
		cmp	dword ptr [ebp+0Ch], 0
		jnz	loc_4A7AEE
		test	eax, eax
		jnz	short loc_4A7A0D
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A7A0D:				; CODE XREF: .text:004A7A05j
		mov	edx, dword_5F2D60 ; int
		cmp	edx, 7		; switch 8 cases
		ja	loc_4A7AEB	; jumptable 004A7A1C default case
		jmp	ds:off_4A7A23[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4A7A23	dd offset loc_4A7AEB	; DATA XREF: .text:004A7A1Cr
		dd offset loc_4A7A43	; jump table for switch	statement
		dd offset loc_4A7A5D
		dd offset loc_4A7A77
		dd offset loc_4A7A8F
		dd offset loc_4A7AA7
		dd offset loc_4A7ABB
		dd offset loc_4A7AD3
; ---------------------------------------------------------------------------

loc_4A7A43:				; CODE XREF: .text:004A7A1Cj
					; DATA XREF: .text:off_4A7A23o
		mov	ecx, [ebp+14h]	; jumptable 004A7A1C case 1
		push	ecx
		push	0FFFFFFFFh
		push	0FFFFFFFFh
		mov	eax, [ebp+10h]
		push	eax
		push	0
		push	ebx
		call	loc_4A5C60
		add	esp, 18h
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A7A5D:				; CODE XREF: .text:004A7A1Cj
					; DATA XREF: .text:off_4A7A23o
		mov	edx, [ebp+14h]	; jumptable 004A7A1C case 2
		push	edx
		push	0FFFFFFFFh
		push	0FFFFFFFFh
		mov	ecx, [ebp+10h]
		push	ecx
		push	1
		push	ebx
		call	loc_4A5C60
		add	esp, 18h
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A7A77:				; CODE XREF: .text:004A7A1Cj
					; DATA XREF: .text:off_4A7A23o
		mov	eax, [ebp+14h]	; jumptable 004A7A1C case 3
		push	eax		; int
		push	0FFFFFFFFh	; int
		push	0FFFFFFFFh	; int
		mov	edx, [ebp+10h]	; int
		push	edx		; int
		push	ebx		; int
		call	loc_4A71D0
		add	esp, 14h
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A7A8F:				; CODE XREF: .text:004A7A1Cj
					; DATA XREF: .text:off_4A7A23o
		mov	ecx, [ebp+14h]	; jumptable 004A7A1C case 4
		push	ecx		; int
		push	0FFFFFFFFh	; int
		push	0FFFFFFFFh	; int
		mov	eax, [ebp+10h]	; int
		push	eax		; int
		push	ebx		; int
		call	loc_4A5FC4
		add	esp, 14h
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A7AA7:				; CODE XREF: .text:004A7A1Cj
					; DATA XREF: .text:off_4A7A23o
		mov	edx, [ebp+14h]	; jumptable 004A7A1C case 5
		push	edx		; int
		mov	ecx, [ebp+10h]	; int
		push	ecx		; int
		push	ebx		; int
		call	loc_4A68FC
		add	esp, 0Ch
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A7ABB:				; CODE XREF: .text:004A7A1Cj
					; DATA XREF: .text:off_4A7A23o
		mov	eax, [ebp+14h]	; jumptable 004A7A1C case 6
		push	eax		; _addr
		push	0FFFFFFFFh	; y
		push	0FFFFFFFFh	; x
		mov	edx, [ebp+10h]
		push	edx		; a2
		push	ebx		; a1
		call	loc_4A48AC
		add	esp, 14h
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A7AD3:				; CODE XREF: .text:004A7A1Cj
					; DATA XREF: .text:off_4A7A23o
		mov	ecx, [ebp+14h]	; jumptable 004A7A1C case 7
		push	ecx
		push	0FFFFFFFFh
		push	0FFFFFFFFh
		mov	eax, [ebp+10h]
		push	eax
		push	ebx
		call	loc_4A4B24
		add	esp, 14h
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A7AEB:				; CODE XREF: .text:004A7A16j
					; .text:004A7A1Cj
					; DATA XREF: ...
		or	eax, 0FFFFFFFFh	; jumptable 004A7A1C default case

loc_4A7AEE:				; CODE XREF: .text:004A79FDj
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
