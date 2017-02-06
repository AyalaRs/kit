.code

; ---------------------------------------------------------------------------
; Exported entry 346. _Ensurememorybackup
; Exported entry 490. Ensurememorybackup

; signed int __cdecl Ensurememorybackup(t_memory *pmem,	int makebackup)
		public Ensurememorybackup
Ensurememorybackup:			; CODE XREF: .text:004D6C07p
		push	ebp		; _Ensurememorybackup
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4BD229
		test	byte ptr [ebx+0Bh], 8
		jnz	short loc_4BD229
		cmp	dword ptr [ebx+4], 0
		jz	short loc_4BD229
		mov	edx, [ebx]	; int
		cmp	edx, userspacelimit
		jb	short loc_4BD22E

loc_4BD229:				; CODE XREF: .text:004BD211j
					; .text:004BD217j ...
		or	eax, 0FFFFFFFFh
		jmp	short loc_4BD28E
; ---------------------------------------------------------------------------

loc_4BD22E:				; CODE XREF: .text:004BD227j
		mov	esi, [ebx+60h]
		test	esi, esi
		jnz	short loc_4BD253
		push	1		; flags
		mov	eax, [ebx+4]	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4BD24E
		or	eax, 0FFFFFFFFh
		jmp	short loc_4BD28E
; ---------------------------------------------------------------------------

loc_4BD24E:				; CODE XREF: .text:004BD247j
		mov	eax, 1

loc_4BD253:				; CODE XREF: .text:004BD233j
		test	eax, eax
		jz	short loc_4BD277
		push	1		; mode
		mov	edx, [ebx+4]
		push	edx		; size
		mov	ecx, [ebx]
		push	ecx		; _addr
		push	esi		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [ebx+4]
		jz	short loc_4BD277
		push	esi		; data
		call	Memfree
		pop	ecx
		xor	esi, esi

loc_4BD277:				; CODE XREF: .text:004BD255j
					; .text:004BD26Cj
		mov	[ebx+60h], esi
		push	0		; lp
		mov	eax, [ebx]
		push	eax		; wp
		push	487h		; msg
		call	Broadcast
		add	esp, 0Ch
		xor	eax, eax

loc_4BD28E:				; CODE XREF: .text:004BD22Cj
					; .text:004BD24Cj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4BD294:				; CODE XREF: .text:0042DF8Cp
					; .text:004B041Ap ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4BD2B1
		cmp	dword ptr [ebx+4], 0
		jz	short loc_4BD2B1
		mov	eax, [ebx]
		cmp	eax, userspacelimit
		jb	short loc_4BD2B9

loc_4BD2B1:				; CODE XREF: .text:004BD29Fj
					; .text:004BD2A5j
		or	eax, 0FFFFFFFFh
		jmp	loc_4BD38E
; ---------------------------------------------------------------------------

loc_4BD2B9:				; CODE XREF: .text:004BD2AFj
		cmp	dword ptr [ebx+298h], 0
		jnz	short loc_4BD2C8
		cmp	dword ptr [ebx+14h], 0
		jnz	short loc_4BD2D2

loc_4BD2C8:				; CODE XREF: .text:004BD2C0j
		mov	esi, [ebx+4A4h]
		xor	edi, edi
		jmp	short loc_4BD2FA
; ---------------------------------------------------------------------------

loc_4BD2D2:				; CODE XREF: .text:004BD2C6j
		mov	eax, [ebx]
		push	eax		; _addr
		call	Findmemory
		pop	ecx		; int
		mov	edi, eax
		test	edi, edi
		jz	short loc_4BD2EF
		mov	eax, [edi]
		cmp	eax, [ebx]
		jnz	short loc_4BD2EF
		mov	edx, [edi+4]	; int
		cmp	edx, [ebx+4]
		jz	short loc_4BD2F7

loc_4BD2EF:				; CODE XREF: .text:004BD2DFj
					; .text:004BD2E5j
		or	eax, 0FFFFFFFFh
		jmp	loc_4BD38E
; ---------------------------------------------------------------------------

loc_4BD2F7:				; CODE XREF: .text:004BD2EDj
		mov	esi, [edi+60h]

loc_4BD2FA:				; CODE XREF: .text:004BD2D0j
		test	esi, esi
		jnz	short loc_4BD31E
		push	1		; flags
		mov	eax, [ebx+4]	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4BD317
		or	eax, 0FFFFFFFFh
		jmp	short loc_4BD38E
; ---------------------------------------------------------------------------

loc_4BD317:				; CODE XREF: .text:004BD310j
		mov	dword ptr [ebp+0Ch], 1

loc_4BD31E:				; CODE XREF: .text:004BD2FCj
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4BD35E
		mov	eax, [ebx+298h]
		test	eax, eax
		jz	short loc_4BD33E
		mov	edx, [ebx+4]
		push	edx		; n
		push	eax		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_4BD35E
; ---------------------------------------------------------------------------

loc_4BD33E:				; CODE XREF: .text:004BD32Cj
		push	1		; mode
		mov	ecx, [ebx+4]
		push	ecx		; size
		mov	eax, [ebx]
		push	eax		; _addr
		push	esi		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [ebx+4]
		jz	short loc_4BD35E
		push	esi		; data
		call	Memfree
		pop	ecx
		xor	esi, esi

loc_4BD35E:				; CODE XREF: .text:004BD322j
					; .text:004BD33Cj ...
		test	edi, edi
		jz	short loc_4BD379
		mov	[edi+60h], esi
		push	0		; lp
		mov	eax, [edi]
		push	eax		; wp
		push	487h		; msg
		call	Broadcast
		add	esp, 0Ch
		jmp	short loc_4BD38C
; ---------------------------------------------------------------------------

loc_4BD379:				; CODE XREF: .text:004BD360j
		mov	[ebx+4A4h], esi
		mov	edx, [ebx+8]
		push	edx		; dumptype
		push	ebx		; pd
		call	Setdumptype
		add	esp, 8

loc_4BD38C:				; CODE XREF: .text:004BD377j
		xor	eax, eax

loc_4BD38E:				; CODE XREF: .text:004BD2B4j
					; .text:004BD2F2j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 347. _Backupusercode
; Exported entry 408. Backupusercode

; int __cdecl Backupusercode(struct t_module *pm, int force)
		public Backupusercode
Backupusercode:				; CODE XREF: .text:00416D00p
					; .text:0044E15Cp ...
		push	ebp		; _Backupusercode
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	loc_4BD4B6
; ---------------------------------------------------------------------------

loc_4BD3A5:				; CODE XREF: .text:004BD4BFj
		mov	edx, [ebp-4]
		push	edx		; index
		push	offset module.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	loc_4BD4B3
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4BD3D3
		mov	eax, [ebp+8]
		mov	edx, [eax]
		cmp	edx, [esi]
		jnz	loc_4BD4B3

loc_4BD3D3:				; CODE XREF: .text:004BD3C4j
		test	byte ptr [esi+0Ah], 30h
		jnz	loc_4BD4B3
		xor	edi, edi
		jmp	loc_4BD4A7
; ---------------------------------------------------------------------------

loc_4BD3E4:				; CODE XREF: .text:004BD4ADj
		push	edi		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4BD4A6
		test	byte ptr [ebx+0Bh], 8
		jnz	loc_4BD4A6
		mov	eax, [ebx]
		cmp	eax, userspacelimit
		jnb	loc_4BD4B3
		mov	edx, [esi]
		mov	eax, [ebx]	; int
		cmp	edx, eax
		ja	loc_4BD4A6
		add	edx, [esi+4]
		cmp	eax, edx
		jnb	short loc_4BD4A6
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4BD43D
		test	byte ptr [ebx+0Ah], 40h
		jnz	short loc_4BD43D
		mov	edx, [ebx]	; int
		cmp	edx, [esi+458h]
		jb	short loc_4BD446

loc_4BD43D:				; CODE XREF: .text:004BD42Bj
					; .text:004BD431j
		test	dword ptr [ebx+8], 2005000h
		jz	short loc_4BD4A6

loc_4BD446:				; CODE XREF: .text:004BD43Bj
		cmp	dword ptr [ebx+60h], 0
		jnz	short loc_4BD465
		push	0		; flags
		mov	ecx, [ebx+4]	; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebx+60h], eax
		cmp	dword ptr [ebx+60h], 0
		jz	short loc_4BD4A6
		jmp	short loc_4BD46B
; ---------------------------------------------------------------------------

loc_4BD465:				; CODE XREF: .text:004BD44Aj
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4BD4A6

loc_4BD46B:				; CODE XREF: .text:004BD463j
		push	0		; mode
		mov	eax, [ebx+4]
		push	eax		; size
		mov	edx, [ebx]
		push	edx		; _addr
		mov	ecx, [ebx+60h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [ebx+4]
		jz	short loc_4BD494
		mov	eax, [ebx+60h]
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+60h], edx

loc_4BD494:				; CODE XREF: .text:004BD483j
		push	0		; lp
		mov	ecx, [ebx]
		push	ecx		; wp
		push	487h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_4BD4A6:				; CODE XREF: .text:004BD3F6j
					; .text:004BD400j ...
		inc	edi

loc_4BD4A7:				; CODE XREF: .text:004BD3DFj
		cmp	edi, memory.sorted.n
		jl	loc_4BD3E4

loc_4BD4B3:				; CODE XREF: .text:004BD3BAj
					; .text:004BD3CDj ...
		inc	dword ptr [ebp-4]

loc_4BD4B6:				; CODE XREF: .text:004BD3A0j
		mov	eax, [ebp-4]
		cmp	eax, module.sorted.n
		jl	loc_4BD3A5
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4BD4CC:				; CODE XREF: .text:004B0CDAp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4BD4E8
		test	byte ptr [ebx+0Bh], 8
		jnz	short loc_4BD4E8
		cmp	dword ptr [ebx+4], 0
		jnz	short loc_4BD4EF

loc_4BD4E8:				; CODE XREF: .text:004BD4DAj
					; .text:004BD4E0j
		xor	eax, eax
		jmp	loc_4BD734
; ---------------------------------------------------------------------------

loc_4BD4EF:				; CODE XREF: .text:004BD4E6j
		mov	edx, [ebx]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_4BD515
		mov	ecx, [ebp-14h]
		mov	edx, [ebp-14h]
		mov	eax, [ecx]
		mov	ecx, [ebx]
		add	ecx, [ebx+4]	; int
		add	eax, [edx+4]	; int
		cmp	eax, ecx
		jnb	short loc_4BD51C

loc_4BD515:				; CODE XREF: .text:004BD4FFj
		xor	eax, eax
		jmp	loc_4BD734
; ---------------------------------------------------------------------------

loc_4BD51C:				; CODE XREF: .text:004BD513j
		mov	edx, [ebp-14h]
		cmp	word ptr [edx+4Ch], 0
		jnz	short loc_4BD52D
		xor	eax, eax
		jmp	loc_4BD734
; ---------------------------------------------------------------------------

loc_4BD52D:				; CODE XREF: .text:004BD524j
		push	3		; flags
		mov	edx, [ebx+4]	; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4BD54B
		xor	eax, eax
		jmp	loc_4BD734
; ---------------------------------------------------------------------------

loc_4BD54B:				; CODE XREF: .text:004BD542j
		push	offset aRb_0	; "rb"
		mov	edx, [ebp-14h]
		add	edx, 4Ch
		push	edx		; path
		call	__wfopen
		add	esp, 8
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4BD579
		mov	ecx, [ebp-10h]
		push	ecx		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		jmp	loc_4BD734
; ---------------------------------------------------------------------------

loc_4BD579:				; CODE XREF: .text:004BD566j
		mov	edx, [ebp-14h]
		mov	ecx, [edx]
		cmp	ecx, [ebx]
		jbe	short loc_4BD587
		mov	eax, [ebp-14h]
		jmp	short loc_4BD589
; ---------------------------------------------------------------------------

loc_4BD587:				; CODE XREF: .text:004BD580j
		mov	eax, ebx

loc_4BD589:				; CODE XREF: .text:004BD585j
		mov	esi, [eax]
		mov	eax, [ebx]
		add	eax, [ebx+4]
		mov	[ebp-1Ch], eax
		mov	edx, [ebp-14h]
		mov	eax, [ebp-14h]
		mov	ecx, [edx]
		add	ecx, [eax+8DCh]
		mov	[ebp-20h], ecx
		mov	edx, [ebp-20h]
		cmp	edx, [ebp-1Ch]
		jnb	short loc_4BD5B1
		lea	ecx, [ebp-20h]
		jmp	short loc_4BD5B4
; ---------------------------------------------------------------------------

loc_4BD5B1:				; CODE XREF: .text:004BD5AAj
		lea	ecx, [ebp-1Ch]

loc_4BD5B4:				; CODE XREF: .text:004BD5AFj
		mov	eax, [ecx]
		mov	[ebp-8], eax
		cmp	esi, [ebp-8]
		jnb	short loc_4BD60F
		push	0		; whence
		mov	edx, [ebp-14h]
		mov	eax, esi
		sub	eax, [edx]
		push	eax		; offset
		mov	edx, [ebp-18h]
		push	edx		; stream
		call	_fseek
		add	esp, 0Ch
		mov	ecx, [ebp-18h]
		push	ecx		; stream
		mov	edi, [ebp-8]
		sub	edi, esi
		push	edi		; n
		push	1		; size
		mov	eax, [ebp-10h]
		add	eax, esi
		sub	eax, [ebx]
		push	eax		; ptr
		call	_fread
		add	esp, 10h
		cmp	eax, edi
		jz	short loc_4BD60F
		mov	edx, [ebp-18h]
		push	edx		; stream
		call	_fclose
		pop	ecx
		mov	ecx, [ebp-10h]
		push	ecx		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		jmp	loc_4BD734
; ---------------------------------------------------------------------------

loc_4BD60F:				; CODE XREF: .text:004BD5BCj
					; .text:004BD5F2j
		xor	edx, edx
		mov	[ebp-4], edx
		mov	ecx, [ebp-14h]
		mov	edi, [ecx+8E8h]
		jmp	short loc_4BD699
; ---------------------------------------------------------------------------

loc_4BD61F:				; CODE XREF: .text:004BD6A5j
		lea	eax, [edi+18h]
		mov	edx, [eax]
		cmp	edx, [ebx]
		ja	short loc_4BD62A
		mov	eax, ebx

loc_4BD62A:				; CODE XREF: .text:004BD626j
		mov	esi, [eax]
		mov	eax, [ebx]
		add	eax, [ebx+4]
		mov	[ebp-24h], eax
		mov	edx, [edi+18h]
		add	edx, [edi+28h]
		mov	[ebp-28h], edx
		mov	ecx, [ebp-28h]
		cmp	ecx, [ebp-24h]
		jnb	short loc_4BD64A
		lea	eax, [ebp-28h]
		jmp	short loc_4BD64D
; ---------------------------------------------------------------------------

loc_4BD64A:				; CODE XREF: .text:004BD643j
		lea	eax, [ebp-24h]

loc_4BD64D:				; CODE XREF: .text:004BD648j
		mov	edx, [eax]
		mov	[ebp-8], edx
		cmp	esi, [ebp-8]
		jnb	short loc_4BD693
		push	0		; whence
		mov	ecx, [edi+24h]
		add	ecx, esi
		sub	ecx, [edi+18h]
		push	ecx		; offset
		mov	eax, [ebp-18h]
		push	eax		; stream
		call	_fseek
		add	esp, 0Ch
		mov	edx, [ebp-18h]
		push	edx		; stream
		mov	ecx, [ebp-8]
		sub	ecx, esi
		push	ecx		; n
		push	1		; size
		mov	eax, [ebp-10h]
		add	eax, esi
		sub	eax, [ebx]
		push	eax		; ptr
		call	_fread
		add	esp, 10h
		mov	edx, [ebp-8]
		sub	edx, esi
		cmp	eax, edx
		jnz	short loc_4BD6AB

loc_4BD693:				; CODE XREF: .text:004BD655j
		inc	dword ptr [ebp-4]
		add	edi, 30h

loc_4BD699:				; CODE XREF: .text:004BD61Dj
		mov	ecx, [ebp-14h]
		mov	eax, [ecx+8E4h]
		cmp	eax, [ebp-4]
		jg	loc_4BD61F

loc_4BD6AB:				; CODE XREF: .text:004BD691j
		mov	edx, [ebp-18h]
		push	edx		; stream
		call	_fclose
		pop	ecx
		mov	ecx, [ebp-14h]
		mov	eax, [ecx+8E4h]
		cmp	eax, [ebp-4]
		jle	short loc_4BD6D1
		mov	edx, [ebp-10h]
		push	edx		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		jmp	short loc_4BD734
; ---------------------------------------------------------------------------

loc_4BD6D1:				; CODE XREF: .text:004BD6C1j
		mov	edx, [ebp-14h]
		mov	eax, [ebp-14h]
		mov	ecx, [edx]
		cmp	ecx, [eax+454h]
		jz	short loc_4BD731
		mov	edx, [ebx]
		push	edx		; _addr
		mov	ecx, [ebp-14h]
		push	ecx		; pmod
		call	Findfixup
		add	esp, 8
		test	eax, eax
		jz	short loc_4BD731
		mov	edx, [ebx]
		mov	esi, edx
		add	edx, [ebx+4]
		sub	edx, 4
		mov	[ebp-8], edx
		mov	edx, [ebp-14h]
		mov	ecx, [edx]
		mov	edx, [ebp-14h]
		sub	ecx, [edx+454h]
		mov	[ebp-0Ch], ecx
		jmp	short loc_4BD726
; ---------------------------------------------------------------------------

loc_4BD714:				; CODE XREF: .text:004BD72Fj
		cmp	esi, edx
		ja	short loc_4BD723
		sub	edx, esi
		mov	ecx, [ebp-10h]
		mov	ebx, [ebp-0Ch]
		add	[ecx+edx], ebx

loc_4BD723:				; CODE XREF: .text:004BD716j
		add	eax, 4

loc_4BD726:				; CODE XREF: .text:004BD712j
		mov	edx, [eax]
		test	edx, edx
		jz	short loc_4BD731
		cmp	edx, [ebp-8]
		jbe	short loc_4BD714

loc_4BD731:				; CODE XREF: .text:004BD6DFj
					; .text:004BD6F2j ...
		mov	eax, [ebp-10h]

loc_4BD734:				; CODE XREF: .text:004BD4EAj
					; .text:004BD517j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4BD73C:				; CODE XREF: .text:004B4065p
					; .text:004BEB0Ep ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFFDC0h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		mov	edi, offset aSource ; "Source"
;__DebugBreak		
		test	ebx, ebx
		jz	short loc_4BD76A
		cmp	dword ptr [ebx+4], 0
		jz	short loc_4BD76A
		cmp	dword ptr [ebx+298h], 0
		jnz	short loc_4BD772

loc_4BD76A:				; CODE XREF: .text:004BD759j
					; .text:004BD75Fj
		or	eax, 0FFFFFFFFh
		jmp	loc_4BDCF4
; ---------------------------------------------------------------------------

loc_4BD772:				; CODE XREF: .text:004BD768j
		test	byte ptr [ebx+0Ch], 8
		jz	short loc_4BD7AC
		push	10030h		; uType
		lea	edx, aReadOnlyDump;[edi+0F0Ch]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; lpCaption
		lea	ecx, aThisDumpIsRead;[edi+0EDEh]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; lpText
		mov	eax, hwollymain
		push	eax		; hWnd
		call	MessageBoxW
		or	eax, 0FFFFFFFFh
		jmp	loc_4BDCF4
; ---------------------------------------------------------------------------

loc_4BD7AC:				; CODE XREF: .text:004BD776j
		lea	edx, aRb_0;[edi+0ED8h]
		push	edx		; mode
		lea	ecx, [ebx+29Ch]
		push	ecx		; path
		call	__wfopen
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4BD7D4
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		jmp	loc_4BD884
; ---------------------------------------------------------------------------

loc_4BD7D4:				; CODE XREF: .text:004BD7C6j
		push	2		; whence
		push	0		; offset
		push	esi		; stream
		call	_fseek
		add	esp, 0Ch
		push	esi		; stream
		call	_ftell
		pop	ecx
		mov	[ebp-8], eax
		push	0		; whence
		push	0		; offset
		push	esi		; stream
		call	_fseek
		add	esp, 0Ch
		mov	eax, [ebx+4]	; int
		cmp	eax, [ebp-8]
		jz	short loc_4BD809
		mov	dword ptr [ebp-4], 2
		jmp	short loc_4BD87D
; ---------------------------------------------------------------------------

loc_4BD809:				; CODE XREF: .text:004BD7FEj
		push	1		; flags
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4BD826
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		jmp	short loc_4BD87D
; ---------------------------------------------------------------------------

loc_4BD826:				; CODE XREF: .text:004BD81Bj
		push	esi		; stream
		mov	edx, [ebx+4]
		push	edx		; n
		push	1		; size
		mov	ecx, [ebp-18h]
		push	ecx		; ptr
		call	_fread
		add	esp, 10h
		mov	[ebp-8], eax
		mov	eax, [ebx+4]
		cmp	eax, [ebp-8]
		jz	short loc_4BD84D
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		jmp	short loc_4BD873
; ---------------------------------------------------------------------------

loc_4BD84D:				; CODE XREF: .text:004BD842j
		push	eax		; n
		mov	edx, [ebx+298h]
		push	edx		; s2
		mov	ecx, [ebp-18h]
		push	ecx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4BD86C
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_4BD873
; ---------------------------------------------------------------------------

loc_4BD86C:				; CODE XREF: .text:004BD863j
		mov	dword ptr [ebp-4], 1

loc_4BD873:				; CODE XREF: .text:004BD84Bj
					; .text:004BD86Aj
		mov	edx, [ebp-18h]
		push	edx		; data
		call	Memfree
		pop	ecx

loc_4BD87D:				; CODE XREF: .text:004BD807j
					; .text:004BD824j
		push	esi		; stream
		call	_fclose
		pop	ecx

loc_4BD884:				; CODE XREF: .text:004BD7CFj
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4BD897
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4BD897
		xor	eax, eax
		jmp	loc_4BDCF4
; ---------------------------------------------------------------------------

loc_4BD897:				; CODE XREF: .text:004BD888j
					; .text:004BD88Ej
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4BD8FC
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4BD8FC
		lea	edx, [ebx+29Ch]
		push	edx
		lea	ecx, aInternalCopy_0;[edi+0F2Ah]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-620h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		push	10024h		; uType
		lea	edx, aFileUnchanged;[edi+0FE8h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; lpCaption
		lea	ecx, [ebp-620h]
		push	ecx		; lpText
		mov	eax, hwollymain
		push	eax		; hWnd
		call	MessageBoxW
		cmp	eax, 7
		jnz	loc_4BDA9B
		xor	eax, eax
		jmp	loc_4BDCF4
; ---------------------------------------------------------------------------

loc_4BD8FC:				; CODE XREF: .text:004BD89Bj
					; .text:004BD8A1j
		cmp	dword ptr [ebp-4], 0
		jge	short loc_4BD93A
		lea	edx, [ebx+29Ch]
		push	edx
		lea	ecx, aFileSOnTheDisk;[edi+1006h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-620h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	esi, eax
		lea	eax, aOriginalFileLo;[edi+10CAh]
		push	eax		; src
		call	_T
		pop	ecx
		mov	[ebp-0Ch], eax
		jmp	short loc_4BD9AE
; ---------------------------------------------------------------------------

loc_4BD93A:				; CODE XREF: .text:004BD900j
		cmp	dword ptr [ebp-4], 1
		jnz	short loc_4BD978
		lea	edx, [ebx+29Ch]
		push	edx
		lea	ecx, aInternalCopyOf;[edi+10F0h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-620h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	esi, eax
		lea	eax, aFileChanged;[edi+11B6h]
		push	eax		; src
		call	_T
		pop	ecx
		mov	[ebp-0Ch], eax
		jmp	short loc_4BD9AE
; ---------------------------------------------------------------------------

loc_4BD978:				; CODE XREF: .text:004BD93Ej
		lea	edx, [ebx+29Ch]
		push	edx
		lea	ecx, aSizeOfFileSOnT;[edi+11D0h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-620h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	esi, eax
		lea	eax, aFileChanged;[edi+11B6h]
		push	eax		; src
		call	_T
		pop	ecx
		mov	[ebp-0Ch], eax

loc_4BD9AE:				; CODE XREF: .text:004BD938j
					; .text:004BD976j
		lea	edx, aIfYouAnswerYes;[edi+12F6h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, esi
		add	ecx, ecx
		lea	eax, [ebp-620h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 8
		add	esi, eax
		cmp	dword ptr [ebp+0Ch], 1
		jnz	short loc_4BD9FC
		lea	edx, aDumpWindowOpen;[edi+1412h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		add	esi, esi
		lea	ecx, [ebp-620h]
		add	esi, ecx
		push	esi		; buffer
		call	_swprintf
		add	esp, 8
		jmp	short loc_4BDA1D
; ---------------------------------------------------------------------------

loc_4BD9FC:				; CODE XREF: .text:004BD9D7j
		lea	eax, aOllydbgRunning;[edi+1436h]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; format
		add	esi, esi
		lea	edx, [ebp-620h]
		add	esi, edx
		push	esi		; buffer
		call	_swprintf
		add	esp, 8

loc_4BDA1D:				; CODE XREF: .text:004BD9FAj
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4BDA3A
		push	0		; lParam
		mov	edx, [ebx+23Ch]
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4BDA3A:				; CODE XREF: .text:004BDA24j
		mov	ecx, [ebx+23Ch]
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_4BDA58
		push	9		; nCmdShow
		mov	eax, [ebx+23Ch]
		push	eax		; hWnd
		call	ShowWindow

loc_4BDA58:				; CODE XREF: .text:004BDA48j
		mov	edx, [ebx+244h]
		push	edx		; hWnd
		call	SetFocus
		push	10023h		; uType
		lea	eax, [ebp-620h]
		mov	ecx, [ebp-0Ch]
		mov	edx, hwollymain
		push	ecx		; lpCaption
		push	eax		; lpText
		push	edx		; hWnd
		call	MessageBoxW
		cmp	eax, 2
		jnz	short loc_4BDA8F
		mov	eax, 1
		jmp	loc_4BDCF4
; ---------------------------------------------------------------------------

loc_4BDA8F:				; CODE XREF: .text:004BDA83j
		cmp	eax, 7
		jnz	short loc_4BDA9B
		xor	eax, eax
		jmp	loc_4BDCF4
; ---------------------------------------------------------------------------

loc_4BDA9B:				; CODE XREF: .text:004BD8EFj
					; .text:004BDA92j
		lea	edx, [ebx+29Ch]
		push	edx		; src
		lea	ecx, [ebp-828h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_4BDAB1:				; CODE XREF: .text:004BDB12j
					; .text:004BDC16j ...
		test	byte ptr [ebx+0Ch], 4
		jz	short loc_4BDABE
		mov	esi, 18000000h
		jmp	short loc_4BDAC3
; ---------------------------------------------------------------------------

loc_4BDABE:				; CODE XREF: .text:004BDAB5j
		mov	esi, 8000000h

loc_4BDAC3:				; CODE XREF: .text:004BDABCj
		push	esi		; mode
		mov	eax, hwollymain
		push	eax		; hwnd
		lea	edx, a__49;[edi+1472h]
		push	edx		; defext
		push	0		; currdir
		push	0		; args
		lea	ecx, [ebp-828h]
		push	ecx		; _name
		lea	eax, aSaveFileAs;[edi+1458h]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; _title
		call	Browsefilename
		add	esp, 1Ch
		test	eax, 800000h
		jnz	short loc_4BDB03
		mov	eax, 1
		jmp	loc_4BDCF4
; ---------------------------------------------------------------------------

loc_4BDB03:				; CODE XREF: .text:004BDAF7j
		lea	edx, [ebp-828h]
		push	edx		; path
		call	Confirmoverwrite
		pop	ecx
		test	eax, eax
		jz	short loc_4BDAB1
		cmp	eax, 2
		jnz	loc_4BDC1B
		push	0		; dst
		lea	ecx, [ebp-1240h]
		push	ecx		; void *
		lea	eax, [ebp-1040h]
		push	eax		; void *
		lea	edx, [ebp-0E38h]
		push	edx		; dest
		lea	ecx, [ebp-14h]
		push	ecx		; int
		lea	eax, [ebp-828h]
		push	eax		; s
		call	_wFnsplit
		add	esp, 18h
		lea	edx, a_bak_0;[edi+147Ah]
		push	edx		; s2
		lea	ecx, [ebp-1240h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	loc_4BDC1B
		push	0		; a6
		lea	eax, [ebp-1240h]
		push	eax		; ext
		lea	edx, [ebp-1040h]
		push	edx		; _name
		lea	ecx, [ebp-0E38h]
		push	ecx		; dir
		lea	eax, [ebp-14h]
		push	eax		; drive
		lea	edx, [ebp-0A30h]
		push	edx		; path
		call	_wFnmerge
		add	esp, 18h
		lea	ecx, a_bak_0;[edi+147Ah]
		lea	eax, [ebp-1040h]
		lea	edx, [ebp-0E38h]
		push	0		; a6
		push	ecx		; ext
		push	eax		; _name
		push	edx		; dir
		lea	ecx, [ebp-14h]
		lea	eax, [ebp-0C38h]
		push	ecx		; drive
		push	eax		; path
		call	_wFnmerge
		add	esp, 18h
		lea	edx, [ebp-0C38h]
		push	edx		; lpFileName
		call	DeleteFileW
		test	byte ptr [ebx+0Ch], 4
		jz	short loc_4BDBE2
		push	0		; bFailIfExists
		lea	ecx, [ebp-0C38h]
		push	ecx		; lpNewFileName
		lea	eax, [ebp-0A30h]
		push	eax		; lpExistingFileName
		call	CopyFileW
		jmp	short loc_4BDBF5
; ---------------------------------------------------------------------------

loc_4BDBE2:				; CODE XREF: .text:004BDBC9j
		lea	edx, [ebp-0C38h]
		push	edx		; lpNewFileName
		lea	ecx, [ebp-0A30h]
		push	ecx		; lpExistingFileName
		call	MoveFileW

loc_4BDBF5:				; CODE XREF: .text:004BDBE0j
		test	eax, eax
		jnz	short loc_4BDC1B
		lea	eax, [ebp-0A30h]
		push	eax		; arglist
		lea	edx, aUnableToBackup;[edi+1484h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		jmp	loc_4BDAB1
; ---------------------------------------------------------------------------

loc_4BDC1B:				; CODE XREF: .text:004BDB17j
					; .text:004BDB5Fj ...
		lea	ecx, aWb_0;[edi+14ECh]
		push	ecx		; mode
		lea	eax, [ebp-828h]
		push	eax		; path
		call	__wfopen
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4BDC59
		lea	eax, [ebp-828h]
		push	eax		; arglist
		lea	edx, aUnableToCrea_5;[edi+14F2h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		jmp	loc_4BDAB1
; ---------------------------------------------------------------------------

loc_4BDC59:				; CODE XREF: .text:004BDC35j
		push	esi		; stream
		mov	ecx, [ebx+4]
		push	ecx		; n
		push	1		; size
		mov	eax, [ebx+298h]
		push	eax		; ptr
		call	_fwrite
		add	esp, 10h
		mov	[ebp-8], eax
		push	esi		; stream
		call	_fclose
		pop	ecx
		mov	edx, [ebp-8]
		cmp	edx, [ebx+4]
		jnz	short loc_4BDCD2
		lea	ecx, [ebp-828h]
		push	ecx		; src
		lea	eax, [ebx+29Ch]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8
		lea	edx, [ebp-828h]
		push	edx
		lea	ecx, aFileS;[edi+155Ah]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-620h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-620h]
		push	edx		; lpString
		mov	ecx, [ebx+23Ch]
		push	ecx		; hWnd
		call	SetWindowTextW
		xor	eax, eax
		jmp	short loc_4BDCF4
; ---------------------------------------------------------------------------

loc_4BDCD2:				; CODE XREF: .text:004BDC7Fj
		lea	edx, [ebp-828h]
		push	edx		; arglist
		lea	ecx, aErrorSavingFil;[edi+156Ah]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		jmp	loc_4BDAB1
; ---------------------------------------------------------------------------

loc_4BDCF4:				; CODE XREF: .text:004BD76Dj
					; .text:004BD7A7j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 348. _Copydumpselection
; Exported entry 435. Copydumpselection

; HGLOBAL __cdecl Copydumpselection(t_dump *pd,	int mode)
		public Copydumpselection
Copydumpselection:			; CODE XREF: .text:004B1626p
					; .text:004B8BF4p
		push	ebp		; _Copydumpselection
		mov	ebp, esp
		add	esp, 0FFFFF128h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4BDD51
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+4], 0
		jz	short loc_4BDD51
		mov	edx, [ebp+8]
		mov	eax, [ebp+8]
		mov	ecx, [edx+288h]
		cmp	ecx, [eax+28Ch]
		jnb	short loc_4BDD51
		mov	edx, [ebp+8]
		mov	eax, [ebp+8]
		mov	ecx, [edx]
		mov	edx, [ebp+8]
		add	ecx, [eax+4]
		cmp	ecx, [edx+288h]
		jbe	short loc_4BDD51
		mov	ecx, [ebp+8]
		mov	edx, [ebp+8]
		mov	eax, [ecx+28Ch]
		cmp	eax, [edx]
		ja	short loc_4BDD58

loc_4BDD51:				; CODE XREF: .text:004BDD0Cj
					; .text:004BDD15j ...
		xor	eax, eax
		jmp	loc_4BE76E
; ---------------------------------------------------------------------------

loc_4BDD58:				; CODE XREF: .text:004BDD4Fj
		mov	edx, [ebp+8]
		lea	edi, [ebp-0DC8h]
		mov	esi, edx
		mov	ecx, 1C3h
		rep movsd
		lea	eax, [ebp-0DC8h]
		lea	edx, [ebp-0DC8h]
		mov	[ebp-0B90h], eax
		mov	[ebp+8], edx
		mov	ecx, [ebp+8]
		add	ecx, 288h
		mov	[ebp-58h], ecx
		mov	eax, [ebp-58h]
		mov	ecx, [ebp+8]
		mov	edx, [eax]
		cmp	edx, [ecx]
		jbe	short loc_4BDD9C
		mov	eax, [ebp-58h]
		jmp	short loc_4BDD9F
; ---------------------------------------------------------------------------

loc_4BDD9C:				; CODE XREF: .text:004BDD95j
		mov	eax, [ebp+8]

loc_4BDD9F:				; CODE XREF: .text:004BDD9Aj
		mov	ecx, [ebp+8]
		mov	edx, [eax]
		mov	[ecx+288h], edx
		mov	eax, [ebp+8]
		mov	ecx, [ebp+8]
		mov	edx, [eax]
		add	edx, [ecx+4]
		mov	[ebp-5Ch], edx
		mov	eax, [ebp+8]
		add	eax, 28Ch
		mov	[ebp-60h], eax
		mov	edx, [ebp-60h]
		mov	ecx, [edx]
		cmp	ecx, [ebp-5Ch]
		jnb	short loc_4BDDD2
		mov	eax, [ebp-60h]
		jmp	short loc_4BDDD5
; ---------------------------------------------------------------------------

loc_4BDDD2:				; CODE XREF: .text:004BDDCBj
		lea	eax, [ebp-5Ch]

loc_4BDDD5:				; CODE XREF: .text:004BDDD0j
		mov	edx, [eax]
		mov	ecx, [ebp+8]
		mov	[ecx+28Ch], edx
		mov	eax, [ebp+8]
		add	eax, 18h
		mov	[ebp-4Ch], eax
		mov	edx, [ebp+8]
		mov	ecx, [edx+8]
		and	ecx, 3F0000h
		mov	[ebp-2Ch], ecx
		cmp	dword ptr [ebp-2Ch], 0C0000h
		jz	short loc_4BDE25
		cmp	dword ptr [ebp-2Ch], 0D0000h
		jz	short loc_4BDE25
		cmp	dword ptr [ebp-2Ch], 90000h
		jz	short loc_4BDE25
		cmp	dword ptr [ebp-2Ch], 0A0000h
		jz	short loc_4BDE25
		cmp	dword ptr [ebp-2Ch], 0B0000h
		jnz	short loc_4BDE34

loc_4BDE25:				; CODE XREF: .text:004BDDFFj
					; .text:004BDE08j ...
		mov	eax, [ebp-4Ch]
		mov	edx, [eax+8Ch]
		dec	edx
		mov	[ebp-18h], edx
		jmp	short loc_4BDE3B
; ---------------------------------------------------------------------------

loc_4BDE34:				; CODE XREF: .text:004BDE23j
		mov	dword ptr [ebp-18h], 0FFFFFFFFh

loc_4BDE3B:				; CODE XREF: .text:004BDE32j
		xor	ecx, ecx
		xor	ebx, ebx
		mov	[ebp-8], ecx
		mov	esi, ecx
		lea	edi, [ebp-0BCh]
		jmp	loc_4BDF12
; ---------------------------------------------------------------------------

loc_4BDE4F:				; CODE XREF: .text:004BDF20j
		mov	eax, [ebp-4Ch]
		cmp	dword ptr [eax+ebx*4+1A4h], 3
		jg	short loc_4BDE65
		xor	edx, edx
		mov	[edi], edx
		jmp	loc_4BDF0E
; ---------------------------------------------------------------------------

loc_4BDE65:				; CODE XREF: .text:004BDE5Aj
		push	ebx		; column
		mov	ecx, [ebp-4Ch]
		push	ecx		; pt
		call	Getcharacterwidth
		mov	ecx, eax
		mov	eax, [ebp-4Ch]
		add	esp, 8
		mov	eax, [eax+ebx*4+1A4h]
		cdq
		idiv	ecx
		mov	[edi], eax
		cmp	dword ptr [edi], 100h
		jl	short loc_4BDE91
		mov	dword ptr [edi], 0FFh

loc_4BDE91:				; CODE XREF: .text:004BDE89j
		mov	ecx, [edi]
		inc	ecx
		add	[ebp-8], ecx
		mov	eax, [ebp-18h]
		dec	eax
		cmp	ebx, eax
		jnz	short loc_4BDED6
		cmp	dword ptr [ebp-2Ch], 0C0000h
		jz	short loc_4BDEB1
		cmp	dword ptr [ebp-2Ch], 0D0000h
		jnz	short loc_4BDED6

loc_4BDEB1:				; CODE XREF: .text:004BDEA6j
		mov	eax, ebx
		lea	edx, [ebp-0BCh]
		shl	eax, 2
		add	eax, edx
		mov	dword ptr [ebp-64h], 20h
		mov	ecx, [eax]
		cmp	ecx, [ebp-64h]
		jl	short loc_4BDECF
		lea	eax, [ebp-64h]

loc_4BDECF:				; CODE XREF: .text:004BDECAj
		mov	edx, [eax]
		inc	edx
		add	esi, edx
		jmp	short loc_4BDF05
; ---------------------------------------------------------------------------

loc_4BDED6:				; CODE XREF: .text:004BDE9Dj
					; .text:004BDEAFj
		cmp	ebx, [ebp-18h]
		jnz	short loc_4BDF00
		mov	eax, ebx
		lea	edx, [ebp-0BCh]
		shl	eax, 2
		add	eax, edx
		mov	dword ptr [ebp-68h], 10h
		mov	ecx, [eax]
		cmp	ecx, [ebp-68h]
		jl	short loc_4BDEF9
		lea	eax, [ebp-68h]

loc_4BDEF9:				; CODE XREF: .text:004BDEF4j
		mov	edx, [eax]
		inc	edx
		add	esi, edx
		jmp	short loc_4BDF05
; ---------------------------------------------------------------------------

loc_4BDF00:				; CODE XREF: .text:004BDED9j
		mov	ecx, [edi]
		inc	ecx
		add	esi, ecx

loc_4BDF05:				; CODE XREF: .text:004BDED4j
					; .text:004BDEFEj
		cmp	ebx, [ebp-18h]
		jnz	short loc_4BDF0E
		add	dword ptr [ebp-8], 2

loc_4BDF0E:				; CODE XREF: .text:004BDE60j
					; .text:004BDF08j
		inc	ebx
		add	edi, 4

loc_4BDF12:				; CODE XREF: .text:004BDE4Aj
		mov	eax, [ebp-4Ch]
		cmp	ebx, [eax+8Ch]
		jge	short loc_4BDF26
		cmp	ebx, 11h
		jl	loc_4BDE4F

loc_4BDF26:				; CODE XREF: .text:004BDF1Bj
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4BDF33
		xor	eax, eax
		jmp	loc_4BE76E
; ---------------------------------------------------------------------------

loc_4BDF33:				; CODE XREF: .text:004BDF2Aj
		cmp	dword ptr [ebp-2Ch], 0C0000h
		jz	short loc_4BDF45
		cmp	dword ptr [ebp-2Ch], 0D0000h
		jnz	short loc_4BDF6F

loc_4BDF45:				; CODE XREF: .text:004BDF3Aj
		mov	edx, [ebp+8]
		mov	eax, [ebp+8]
		mov	ecx, [edx+288h]
		mov	[eax+284h], ecx
		mov	edx, [ebp+8]
		mov	eax, [ebp+8]
		mov	ebx, [edx+28Ch]
		sub	ebx, [eax+288h]
		inc	ebx
		jmp	loc_4BE09F
; ---------------------------------------------------------------------------

loc_4BDF6F:				; CODE XREF: .text:004BDF43j
		cmp	dword ptr [ebp-2Ch], 0E0000h
		jnz	loc_4BE015
		mov	edx, [ebp+8]
		add	edx, 284h
		push	edx		; a8
		push	0		; a7
		push	0		; a6
		push	0		; a5
		push	0		; a4
		mov	ecx, [ebp+8]
		mov	eax, [ecx+288h]
		push	eax		; a3
		push	0FFh		; a2
		mov	edx, [ebp+8]
		push	edx		; pd
		call	Getmbdumpposition
		add	esp, 20h
		test	eax, eax
		jz	short loc_4BDFBF
		mov	ecx, [ebp+8]
		mov	edx, [ebp+8]
		mov	eax, [ecx+288h]
		mov	[edx+284h], eax

loc_4BDFBF:				; CODE XREF: .text:004BDFABj
		mov	ecx, [ebp+8]
		mov	eax, [ecx+8]
		and	eax, 0FFh
		mov	[ebp-20h], eax
		mov	edx, [ebp+8]
		mov	ecx, [edx+8]
		and	ecx, 0FF00h
		shr	ecx, 8
		mov	[ebp-24h], ecx
		mov	ecx, [ebp-20h]
		imul	ecx, [ebp-24h]
		cmp	ecx, 5
		jnb	short loc_4BDFF2
		mov	ecx, 1
		jmp	short loc_4BDFF5
; ---------------------------------------------------------------------------

loc_4BDFF2:				; CODE XREF: .text:004BDFE9j
		sub	ecx, 4

loc_4BDFF5:				; CODE XREF: .text:004BDFF0j
		mov	eax, [ebp+8]
		mov	edx, [ebp+8]
		mov	eax, [eax+28Ch]
		sub	eax, [edx+288h]
		xor	edx, edx
		div	ecx
		mov	ebx, eax
		add	ebx, 2
		jmp	loc_4BE09F
; ---------------------------------------------------------------------------

loc_4BE015:				; CODE XREF: .text:004BDF76j
		mov	eax, [ebp+8]
		mov	edx, [eax+8]
		and	edx, 0FFh
		mov	[ebp-20h], edx
		mov	ecx, [ebp+8]
		mov	eax, [ecx+8]
		and	eax, 0FF00h
		shr	eax, 8
		mov	[ebp-24h], eax
		mov	ecx, [ebp-20h]
		imul	ecx, [ebp-24h]
		test	ecx, ecx
		jnz	short loc_4BE045
		mov	ecx, 1

loc_4BE045:				; CODE XREF: .text:004BE03Ej
		mov	eax, [ebp+8]
		mov	edx, [ebp+8]
		mov	eax, [eax+284h]
		sub	eax, [edx]
		xor	edx, edx
		div	ecx
		mov	[ebp-28h], edx
		mov	edx, [ebp+8]
		mov	eax, [ebp+8]
		mov	edx, [edx]
		mov	eax, [eax+288h]
		add	edx, [ebp-28h]
		sub	eax, edx
		xor	edx, edx
		div	ecx
		imul	ecx
		mov	edx, [ebp+8]
		add	eax, [edx]
		mov	edx, [ebp+8]
		add	eax, [ebp-28h]
		mov	[edx+284h], eax
		mov	eax, [ebp+8]
		mov	edx, [ebp+8]
		mov	eax, [eax+28Ch]
		sub	eax, [edx+288h]
		xor	edx, edx
		div	ecx
		mov	ebx, eax
		add	ebx, 2

loc_4BE09F:				; CODE XREF: .text:004BDF6Aj
					; .text:004BE010j
		mov	dword ptr [ebp-6Ch], 100000h
		call	loc_403C44
		shr	eax, 2
		mov	[ebp-70h], eax
		mov	eax, [ebp-70h]
		cmp	eax, [ebp-6Ch]
		jbe	short loc_4BE0BE
		lea	edx, [ebp-70h]
		jmp	short loc_4BE0C1
; ---------------------------------------------------------------------------

loc_4BE0BE:				; CODE XREF: .text:004BE0B7j
		lea	edx, [ebp-6Ch]

loc_4BE0C1:				; CODE XREF: .text:004BE0BCj
		mov	eax, [edx]
		xor	edx, edx
		mov	[ebp-38h], eax
		mov	[ebp-34h], edx
		mov	eax, [ebp-8]
		add	eax, 2
		cdq
		push	edx
		push	eax
		lea	eax, [ebx+2]
		xor	edx, edx
		call	__llmul
		add	eax, 100h
		adc	edx, 0
		add	eax, 100h
		adc	edx, 0
		mov	[ebp-40h], eax
		mov	[ebp-3Ch], edx
		cmp	dword ptr [ebp-3Ch], 0
		jnz	short loc_4BE105
		cmp	dword ptr [ebp-40h], 100000h
		jbe	short loc_4BE12D
		jmp	short loc_4BE107
; ---------------------------------------------------------------------------

loc_4BE105:				; CODE XREF: .text:004BE0F8j
		jle	short loc_4BE12D

loc_4BE107:				; CODE XREF: .text:004BE103j
		lea	eax, [esi+2]
		cdq
		push	edx
		push	eax
		lea	eax, [ebx+2]
		xor	edx, edx
		call	__llmul
		add	eax, 100h
		adc	edx, 0
		add	eax, 40000h
		adc	edx, 0
		mov	[ebp-40h], eax
		mov	[ebp-3Ch], edx

loc_4BE12D:				; CODE XREF: .text:004BE101j
					; .text:loc_4BE105j
		mov	eax, [ebp-40h]
		mov	edx, [ebp-3Ch]
		cmp	edx, [ebp-34h]
		jnz	short loc_4BE13F
		cmp	eax, [ebp-38h]
		jbe	short loc_4BE1AB
		jmp	short loc_4BE141
; ---------------------------------------------------------------------------

loc_4BE13F:				; CODE XREF: .text:004BE136j
		jle	short loc_4BE1AB

loc_4BE141:				; CODE XREF: .text:004BE13Dj
		cmp	dword_57E694, 7
		jnz	short loc_4BE152
		xor	ecx, ecx
		mov	dword_57E694, ecx

loc_4BE152:				; CODE XREF: .text:004BE148j
		push	0
		push	100000h
		push	0
		push	2
		mov	eax, [ebp-40h]
		mov	edx, [ebp-3Ch]
		call	__llmul
		call	__lldiv
		push	eax		; arglist
		push	offset aEstimatedSizeO ; "Estimated size of clipboard buffer is	%"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aHugeClipboardD ; "Huge clipboard data size"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E694 ; cond
		call	Condyesno
		add	esp, 10h
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 7
		jnz	short loc_4BE1A3
		xor	eax, eax
		jmp	loc_4BE76E
; ---------------------------------------------------------------------------

loc_4BE1A3:				; CODE XREF: .text:004BE19Aj
		mov	eax, [ebp-38h]
		mov	[ebp-0Ch], eax
		jmp	short loc_4BE1B1
; ---------------------------------------------------------------------------

loc_4BE1AB:				; CODE XREF: .text:004BE13Bj
					; .text:loc_4BE13Fj
		mov	eax, [ebp-40h]
		mov	[ebp-0Ch], eax

loc_4BE1B1:				; CODE XREF: .text:004BE1A9j
		mov	edx, [ebp-0Ch]
		add	edx, edx
		push	edx		; dwBytes
		push	2002h		; uFlags
		call	GlobalAlloc
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 0
		jnz	short loc_4BE1FC
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		push	ecx		; arglist
		push	offset aUnableToAllo_1 ; "Unable to allocate %li. bytes	of memory"
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aLowMemory_1 ; "Low memory"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E66C ; cond
		call	Conderror
		add	esp, 10h
		xor	eax, eax
		jmp	loc_4BE76E
; ---------------------------------------------------------------------------

loc_4BE1FC:				; CODE XREF: .text:004BE1C8j
		mov	edx, [ebp-54h]
		push	edx		; hMem
		call	GlobalLock
		mov	[ebp-44h], eax
		cmp	dword ptr [ebp-44h], 0
		jnz	short loc_4BE249
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		push	ecx		; arglist
		push	offset aUnableToAllo_1 ; "Unable to allocate %li. bytes	of memory"
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aLowMemory_1 ; "Low memory"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E66C ; cond
		call	Conderror
		add	esp, 10h
		mov	eax, [ebp-54h]
		push	eax		; hMem
		call	GlobalFree
		xor	eax, eax
		jmp	loc_4BE76E
; ---------------------------------------------------------------------------

loc_4BE249:				; CODE XREF: .text:004BE20Cj
		test	byte ptr [ebp+0Ch], 1
		jnz	short loc_4BE253
		xor	esi, esi
		jmp	short loc_4BE2C4
; ---------------------------------------------------------------------------

loc_4BE253:				; CODE XREF: .text:004BE24Dj
		mov	eax, [ebp-4Ch]
		test	byte ptr [eax+43h], 10h
		jnz	short loc_4BE268
		mov	edx, [ebp-4Ch]
		cmp	dword ptr [edx+224h], 0
		jnz	short loc_4BE27E

loc_4BE268:				; CODE XREF: .text:004BE25Aj
		mov	ecx, [ebp-4Ch]
		push	ecx		; src
		push	20h		; n
		mov	eax, [ebp-44h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_4BE2B0
; ---------------------------------------------------------------------------

loc_4BE27E:				; CODE XREF: .text:004BE266j
		push	80h		; nMaxCount
		mov	eax, [ebp-44h]
		push	eax		; lpString
		mov	edx, [ebp-4Ch]
		mov	ecx, [edx+224h]
		push	ecx		; hWnd
		call	GetWindowTextW
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4BE2B0
		mov	eax, [ebp-4Ch]
		push	eax		; src
		push	20h		; n
		mov	edx, [ebp-44h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax

loc_4BE2B0:				; CODE XREF: .text:004BE27Cj
					; .text:004BE29Aj
		mov	eax, [ebp-44h]
		mov	word ptr [eax+esi*2], 0Dh
		inc	esi
		mov	edx, [ebp-44h]
		mov	word ptr [edx+esi*2], 0Ah
		inc	esi

loc_4BE2C4:				; CODE XREF: .text:004BE251j
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-0ED8h], ecx
		mov	[ebp-0ED4h], ebx
		mov	[ebp-0ECCh], eax
		lea	edx, [ebp-0ED8h]
		mov	[ebp-50h], edx
		push	0
		push	0FFFFFFFCh
		lea	edx, [ebp-14h]
		mov	ecx, [ebp-50h]
		push	ecx
		lea	ecx, [ebp-6BCh]
		mov	eax, [ebp-4Ch]
		push	eax
		push	edx
		push	ecx
		lea	eax, [ebp-4BCh]
		push	eax
		mov	edx, [ebp-4Ch]
		call	dword ptr [edx+210h]
		add	esp, 1Ch
		mov	[ebp-30h], eax
		cmp	dword ptr [ebp-30h], 0
		jbe	short loc_4BE33D
		push	2		; flags
		mov	ecx, [ebp-30h]	; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-48h], eax
		cmp	dword ptr [ebp-48h], 0
		jnz	short loc_4BE342
		mov	eax, [ebp-54h]
		push	eax		; hMem
		call	GlobalFree
		xor	eax, eax
		jmp	loc_4BE76E
; ---------------------------------------------------------------------------

loc_4BE33D:				; CODE XREF: .text:004BE314j
		xor	edx, edx
		mov	[ebp-48h], edx

loc_4BE342:				; CODE XREF: .text:004BE32Bj
		cmp	dword ptr [ebp-30h], 0
		jbe	short loc_4BE374
		mov	ecx, [ebp-48h]
		push	ecx
		push	0FFFFFFFDh
		mov	eax, [ebp-50h]
		lea	ecx, [ebp-14h]
		push	eax
		lea	eax, [ebp-6BCh]
		mov	edx, [ebp-4Ch]
		push	edx
		push	ecx
		push	eax
		lea	edx, [ebp-4BCh]
		push	edx
		mov	ecx, [ebp-4Ch]
		call	dword ptr [ecx+210h]
		add	esp, 1Ch

loc_4BE374:				; CODE XREF: .text:004BE346j
		test	byte ptr [ebp+0Ch], 1
		jz	loc_4BE419
		xor	ebx, ebx
		lea	edi, [ebp-0BCh]
		jmp	short loc_4BE3DE
; ---------------------------------------------------------------------------

loc_4BE388:				; CODE XREF: .text:004BE3ECj
		cmp	dword ptr [edi], 0
		jz	short loc_4BE3DA
		mov	eax, esi
		add	eax, eax
		add	eax, [ebp-44h]
		push	eax
		push	1
		push	ebx
		mov	edx, [ebp-4Ch]
		push	edx
		call	loc_41A3C8
		add	esp, 10h
		cmp	eax, [edi]
		jle	short loc_4BE3B6
		add	esi, [edi]
		mov	ecx, [ebp-44h]
		mov	word ptr [ecx+esi*2], 3Eh
		inc	esi
		jmp	short loc_4BE3DA
; ---------------------------------------------------------------------------

loc_4BE3B6:				; CODE XREF: .text:004BE3A6j
		add	esi, eax
		mov	edx, [ebp-4Ch]
		mov	ecx, [edx+8Ch]
		dec	ecx
		cmp	ebx, ecx
		jz	short loc_4BE3DA
		jmp	short loc_4BE3D3
; ---------------------------------------------------------------------------

loc_4BE3C8:				; CODE XREF: .text:004BE3D8j
		mov	edx, [ebp-44h]
		mov	word ptr [edx+esi*2], 20h
		inc	esi
		inc	eax

loc_4BE3D3:				; CODE XREF: .text:004BE3C6j
		mov	ecx, [edi]
		inc	ecx
		cmp	eax, ecx
		jl	short loc_4BE3C8

loc_4BE3DA:				; CODE XREF: .text:004BE38Bj
					; .text:004BE3B4j ...
		inc	ebx
		add	edi, 4

loc_4BE3DE:				; CODE XREF: .text:004BE386j
		mov	eax, [ebp-4Ch]
		cmp	ebx, [eax+8Ch]
		jge	short loc_4BE3EE
		cmp	ebx, 11h
		jl	short loc_4BE388

loc_4BE3EE:				; CODE XREF: .text:004BE3E7j
		mov	eax, [ebp-44h]
		lea	edi, [eax+esi*2-2]
		jmp	short loc_4BE3FB
; ---------------------------------------------------------------------------

loc_4BE3F7:				; CODE XREF: .text:004BE403j
		dec	esi
		add	edi, 0FFFFFFFEh

loc_4BE3FB:				; CODE XREF: .text:004BE3F5j
		test	esi, esi
		jle	short loc_4BE405
		cmp	word ptr [edi],	20h
		jz	short loc_4BE3F7

loc_4BE405:				; CODE XREF: .text:004BE3FDj
		mov	eax, [ebp-44h]
		mov	word ptr [eax+esi*2], 0Dh
		inc	esi
		mov	edx, [ebp-44h]
		mov	word ptr [edx+esi*2], 0Ah
		inc	esi

loc_4BE419:				; CODE XREF: .text:004BE378j
		xor	ecx, ecx
		mov	[ebp-10h], ecx

loc_4BE41E:				; CODE XREF: .text:004BE702j
		mov	eax, [ebp-10h]
		mov	[ebp-0ED8h], eax
		mov	edx, [ebp-48h]
		push	edx
		push	0FFFFFFFFh
		mov	ecx, [ebp-50h]
		lea	edx, [ebp-14h]
		push	ecx
		lea	ecx, [ebp-6BCh]
		mov	eax, [ebp-4Ch]
		push	eax
		push	edx
		push	ecx
		lea	eax, [ebp-4BCh]
		push	eax
		mov	edx, [ebp-4Ch]
		call	dword ptr [edx+210h]
		add	esp, 1Ch
		mov	ecx, [ebp-8]
		add	ecx, esi
		add	ecx, 3
		cmp	ecx, [ebp-0Ch]
		jl	short loc_4BE48D
		push	offset aUnableToCopyTh ; "Unable to copy the whole selection to	t"...
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; _addr
		call	Message
		add	esp, 8
		push	offset aUnableToCopyTh ; "Unable to copy the whole selection to	t"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_4BE707
; ---------------------------------------------------------------------------

loc_4BE48D:				; CODE XREF: .text:004BE45Ej
		xor	ebx, ebx
		lea	eax, [ebp-0BCh]
		mov	[ebp-74h], eax
		jmp	loc_4BE6A8
; ---------------------------------------------------------------------------

loc_4BE49D:				; CODE XREF: .text:004BE6B6j
		mov	edx, [ebp-74h]
		cmp	dword ptr [edx], 0
		jz	loc_4BE6A3
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		mov	eax, [ebp-48h]
		push	eax
		push	ebx
		mov	edx, [ebp-50h]
		lea	eax, [ebp-14h]
		push	edx
		lea	edx, [ebp-6BCh]
		mov	ecx, [ebp-4Ch]
		push	ecx
		push	eax
		push	edx
		lea	ecx, [ebp-4BCh]
		push	ecx
		mov	eax, [ebp-4Ch]
		call	dword ptr [eax+210h]
		add	esp, 1Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jge	short loc_4BE4E9
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	short loc_4BE4F9
; ---------------------------------------------------------------------------

loc_4BE4E9:				; CODE XREF: .text:004BE4E0j
		cmp	dword ptr [ebp-4], 100h
		jl	short loc_4BE4F9
		mov	dword ptr [ebp-4], 0FFh

loc_4BE4F9:				; CODE XREF: .text:004BE4E7j
					; .text:004BE4F0j
		mov	ecx, [ebp-4]
		lea	edx, [ebp-6BCh]
		push	ecx		; n
		lea	ecx, [ebp-4BCh]
		mov	eax, [ebp-14h]
		push	eax		; select
		push	edx		; mask
		push	ecx		; s
		test	byte ptr [ebp+0Ch], 2
		jz	short loc_4BE519
		xor	eax, eax
		jmp	short loc_4BE51E
; ---------------------------------------------------------------------------

loc_4BE519:				; CODE XREF: .text:004BE513j
		mov	eax, dword_57DE4C

loc_4BE51E:				; CODE XREF: .text:004BE517j
		push	eax		; mode
		call	Replacegraphs
		add	esp, 14h
		xor	eax, eax
		lea	edx, [ebp-4BCh]
		cmp	eax, [ebp-4]
		jge	short loc_4BE548

loc_4BE534:				; CODE XREF: .text:004BE546j
		cmp	word ptr [edx],	0
		jnz	short loc_4BE53F
		mov	word ptr [edx],	20h

loc_4BE53F:				; CODE XREF: .text:004BE538j
		inc	eax
		add	edx, 2
		cmp	eax, [ebp-4]
		jl	short loc_4BE534

loc_4BE548:				; CODE XREF: .text:004BE532j
		test	byte ptr [ebp-13h], 1
		jz	loc_4BE611
		cmp	dword ptr [ebp-2Ch], 10000h
		jnz	short loc_4BE565
		cmp	ebx, 1
		jz	short loc_4BE5DF
		cmp	ebx, 2
		jz	short loc_4BE5DF

loc_4BE565:				; CODE XREF: .text:004BE559j
		cmp	dword ptr [ebp-2Ch], 20000h
		jnz	short loc_4BE578
		cmp	ebx, 1
		jz	short loc_4BE5DF
		cmp	ebx, 2
		jz	short loc_4BE5DF

loc_4BE578:				; CODE XREF: .text:004BE56Cj
		cmp	dword ptr [ebp-2Ch], 0E0000h
		jnz	short loc_4BE58B
		cmp	ebx, 1
		jz	short loc_4BE5DF
		cmp	ebx, 2
		jz	short loc_4BE5DF

loc_4BE58B:				; CODE XREF: .text:004BE57Fj
		cmp	dword ptr [ebp-2Ch], 30000h
		jnz	short loc_4BE599
		cmp	ebx, 1
		jz	short loc_4BE5DF

loc_4BE599:				; CODE XREF: .text:004BE592j
		cmp	dword ptr [ebp-2Ch], 40000h
		jnz	short loc_4BE5A7
		cmp	ebx, 1
		jz	short loc_4BE5DF

loc_4BE5A7:				; CODE XREF: .text:004BE5A0j
		cmp	dword ptr [ebp-2Ch], 50000h
		jnz	short loc_4BE5B5
		cmp	ebx, 1
		jz	short loc_4BE5DF

loc_4BE5B5:				; CODE XREF: .text:004BE5AEj
		cmp	dword ptr [ebp-2Ch], 60000h
		jnz	short loc_4BE5C3
		cmp	ebx, 1
		jz	short loc_4BE5DF

loc_4BE5C3:				; CODE XREF: .text:004BE5BCj
		cmp	dword ptr [ebp-2Ch], 70000h
		jnz	short loc_4BE5D1
		cmp	ebx, 1
		jz	short loc_4BE5DF

loc_4BE5D1:				; CODE XREF: .text:004BE5CAj
		cmp	dword ptr [ebp-2Ch], 80000h
		jnz	short loc_4BE611
		cmp	ebx, 1
		jnz	short loc_4BE611

loc_4BE5DF:				; CODE XREF: .text:004BE55Ej
					; .text:004BE563j ...
		xor	eax, eax
		lea	edx, [ebp-4BCh]
		mov	[ebp-78h], edx
		lea	edi, [ebp-6BCh]
		mov	edx, [ebp-74h]
		jmp	short loc_4BE608
; ---------------------------------------------------------------------------

loc_4BE5F5:				; CODE XREF: .text:004BE60Fj
		test	byte ptr [edi],	80h
		jnz	short loc_4BE602
		mov	ecx, [ebp-78h]
		mov	word ptr [ecx],	20h

loc_4BE602:				; CODE XREF: .text:004BE5F8j
		add	dword ptr [ebp-78h], 2
		inc	eax
		inc	edi

loc_4BE608:				; CODE XREF: .text:004BE5F3j
		cmp	eax, [edx]
		jge	short loc_4BE611
		cmp	eax, [ebp-4]
		jl	short loc_4BE5F5

loc_4BE611:				; CODE XREF: .text:004BE54Cj
					; .text:004BE5D8j ...
		cmp	ebx, [ebp-18h]
		jnz	short loc_4BE636
		cmp	dword ptr [ebp-4], 0
		jle	short loc_4BE636
		test	byte ptr [ebp+0Ch], 2
		jnz	short loc_4BE62C
		mov	eax, [ebp-44h]
		mov	word ptr [eax+esi*2], 3Bh
		inc	esi

loc_4BE62C:				; CODE XREF: .text:004BE620j
		mov	eax, [ebp-44h]
		mov	word ptr [eax+esi*2], 20h
		inc	esi

loc_4BE636:				; CODE XREF: .text:004BE614j
					; .text:004BE61Aj
		mov	edx, [ebp-44h]
		mov	ecx, [ebp-74h]
		mov	[ebp-78h], ecx
		xor	eax, eax
		lea	edx, [edx+esi*2]
		lea	edi, [ebp-4BCh]
		jmp	short loc_4BE65A
; ---------------------------------------------------------------------------

loc_4BE64C:				; CODE XREF: .text:004BE664j
		mov	cx, [edi]
		inc	esi
		mov	[edx], cx
		add	edx, 2
		inc	eax
		add	edi, 2

loc_4BE65A:				; CODE XREF: .text:004BE64Aj
		mov	ecx, [ebp-78h]
		cmp	eax, [ecx]
		jge	short loc_4BE666
		cmp	eax, [ebp-4]
		jl	short loc_4BE64C

loc_4BE666:				; CODE XREF: .text:004BE65Fj
		mov	edx, [ebp-74h]
		cmp	eax, [edx]
		jl	short loc_4BE67E
		cmp	eax, [ebp-4]
		jge	short loc_4BE67E
		mov	eax, [ebp-44h]
		mov	word ptr [eax+esi*2], 20h
		inc	esi
		jmp	short loc_4BE6A3
; ---------------------------------------------------------------------------

loc_4BE67E:				; CODE XREF: .text:004BE66Bj
					; .text:004BE670j
		mov	edx, [ebp-4Ch]
		mov	ecx, [edx+8Ch]
		dec	ecx
		cmp	ebx, ecx
		jz	short loc_4BE6A3
		jmp	short loc_4BE699
; ---------------------------------------------------------------------------

loc_4BE68E:				; CODE XREF: .text:004BE6A1j
		mov	edx, [ebp-44h]
		mov	word ptr [edx+esi*2], 20h
		inc	esi
		inc	eax

loc_4BE699:				; CODE XREF: .text:004BE68Cj
		mov	ecx, [ebp-74h]
		mov	edx, [ecx]
		inc	edx
		cmp	eax, edx
		jl	short loc_4BE68E

loc_4BE6A3:				; CODE XREF: .text:004BE4A3j
					; .text:004BE67Cj ...
		inc	ebx
		add	dword ptr [ebp-74h], 4

loc_4BE6A8:				; CODE XREF: .text:004BE498j
		mov	eax, [ebp-4Ch]
		cmp	ebx, [eax+8Ch]
		jge	short loc_4BE6BC
		cmp	ebx, 11h
		jl	loc_4BE49D

loc_4BE6BC:				; CODE XREF: .text:004BE6B1j
		mov	ecx, [ebp-44h]
		lea	eax, [ecx+esi*2-2]
		mov	[ebp-74h], eax
		jmp	short loc_4BE6CD
; ---------------------------------------------------------------------------

loc_4BE6C8:				; CODE XREF: .text:004BE6D8j
		dec	esi
		add	dword ptr [ebp-74h], 0FFFFFFFEh

loc_4BE6CD:				; CODE XREF: .text:004BE6C6j
		test	esi, esi
		jle	short loc_4BE6DA
		mov	edx, [ebp-74h]
		cmp	word ptr [edx],	20h
		jz	short loc_4BE6C8

loc_4BE6DA:				; CODE XREF: .text:004BE6CFj
		mov	ecx, [ebp-44h]
		mov	word ptr [ecx+esi*2], 0Dh
		inc	esi
		mov	eax, [ebp-44h]
		mov	word ptr [eax+esi*2], 0Ah
		inc	esi
		mov	edx, [ebp+8]
		mov	ecx, [edx+28Ch]
		cmp	ecx, [ebp-0ED0h]
		jbe	short loc_4BE707
		inc	dword ptr [ebp-10h]
		jmp	loc_4BE41E
; ---------------------------------------------------------------------------

loc_4BE707:				; CODE XREF: .text:004BE488j
					; .text:004BE6FDj
		mov	eax, [ebp-44h]
		mov	word ptr [eax+esi*2], 0
		inc	esi
		cmp	dword ptr [ebp-30h], 0
		jbe	short loc_4BE741
		mov	edx, [ebp-48h]
		lea	eax, [ebp-14h]
		push	edx
		push	0FFFFFFFEh
		push	0
		lea	edx, [ebp-6BCh]
		mov	ecx, [ebp-4Ch]
		push	ecx
		push	eax
		push	edx
		lea	ecx, [ebp-4BCh]
		push	ecx
		mov	eax, [ebp-4Ch]
		call	dword ptr [eax+210h]
		add	esp, 1Ch

loc_4BE741:				; CODE XREF: .text:004BE715j
		cmp	dword ptr [ebp-48h], 0
		jz	short loc_4BE751
		mov	edx, [ebp-48h]
		push	edx		; data
		call	Memfree
		pop	ecx

loc_4BE751:				; CODE XREF: .text:004BE745j
		mov	ecx, [ebp-54h]
		push	ecx		; hMem
		call	GlobalUnlock
		push	2		; uFlags
		add	esi, esi
		push	esi		; dwBytes
		mov	eax, [ebp-54h]
		push	eax		; hMem
		call	GlobalReAlloc
		mov	[ebp-54h], eax
		mov	eax, [ebp-54h]

loc_4BE76E:				; CODE XREF: .text:004BDD53j
					; .text:004BDF2Ej ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC loc_4BE778
loc_4BE778:				; DATA XREF: .text:0040FF16o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDE0h
		push	ebx
		push	esi
		mov	edx, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	eax, dword_5FA960
		cmp	eax, 10000h
		jz	short loc_4BE7AD
		cmp	eax, 30000h
		jz	short loc_4BE7AD
		cmp	eax, 0A0000h
		jz	short loc_4BE7AD
		xor	eax, eax
		jmp	loc_4BE847
; ---------------------------------------------------------------------------

loc_4BE7AD:				; CODE XREF: .text:004BE796j
					; .text:004BE79Dj ...
		cmp	g_Menu,	0
		jnz	short loc_4BE7BD
		xor	eax, eax
		jmp	loc_4BE847
; ---------------------------------------------------------------------------

loc_4BE7BD:				; CODE XREF: .text:004BE7B4j
		test	edx, edx
		jnz	short loc_4BE824
		cmp	_imp__GetCPInfoExW, 0
		jz	short loc_4BE7FF
		lea	edx, [ebp-220h]
		push	edx		; _DWORD
		push	0		; _DWORD
		push	ebx		; _DWORD
		call	_imp__GetCPInfoExW
		test	eax, eax
		jz	short loc_4BE7FF
		cmp	word ptr [ebp-208h], 0
		jz	short loc_4BE7FF
		lea	ecx, [ebp-208h]
		push	ecx		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4BE80E
; ---------------------------------------------------------------------------

loc_4BE7FF:				; CODE XREF: .text:004BE7C8j
					; .text:004BE7DCj ...
		push	ebx
		push	offset aU_0	; format
		push	esi		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_4BE80E:				; CODE XREF: .text:004BE7FDj
		cmp	ebx, asciicodepage
		jnz	short loc_4BE81D
		mov	eax, 2
		jmp	short loc_4BE847
; ---------------------------------------------------------------------------

loc_4BE81D:				; CODE XREF: .text:004BE814j
		mov	eax, 1
		jmp	short loc_4BE847
; ---------------------------------------------------------------------------

loc_4BE824:				; CODE XREF: .text:004BE7BFj
		dec	edx
		jnz	short loc_4BE845
		mov	asciicodepage, ebx
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		mov	eax, 1
		jmp	short loc_4BE847
; ---------------------------------------------------------------------------

loc_4BE845:				; CODE XREF: .text:004BE825j
		xor	eax, eax

loc_4BE847:				; CODE XREF: .text:004BE7A8j
					; .text:004BE7B8j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; MENUFUNC loc_4BE850
loc_4BE850:				; DATA XREF: .text:0040FF8Eo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDE0h
		cmp	dword_5FA960, 0E0000h
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	eax, [ebp+14h]
		mov	ebx, [ebp+10h]
		jz	short loc_4BE877
		xor	eax, eax
		jmp	loc_4BE911
; ---------------------------------------------------------------------------

loc_4BE877:				; CODE XREF: .text:004BE86Ej
		cmp	g_Menu_0, 0
		jnz	short loc_4BE887
		xor	eax, eax
		jmp	loc_4BE911
; ---------------------------------------------------------------------------

loc_4BE887:				; CODE XREF: .text:004BE87Ej
		test	eax, eax
		jnz	short loc_4BE8EE
		cmp	_imp__GetCPInfoExW, 0
		jz	short loc_4BE8C9
		lea	edx, [ebp-220h]
		push	edx		; _DWORD
		push	0		; _DWORD
		push	ebx		; _DWORD
		call	_imp__GetCPInfoExW
		test	eax, eax
		jz	short loc_4BE8C9
		cmp	word ptr [ebp-208h], 0
		jz	short loc_4BE8C9
		lea	ecx, [ebp-208h]
		push	ecx		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4BE8D8
; ---------------------------------------------------------------------------

loc_4BE8C9:				; CODE XREF: .text:004BE892j
					; .text:004BE8A6j ...
		push	ebx
		push	offset aU_0	; format
		push	esi		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_4BE8D8:				; CODE XREF: .text:004BE8C7j
		cmp	ebx, mbcscodepage
		jnz	short loc_4BE8E7
		mov	eax, 2
		jmp	short loc_4BE911
; ---------------------------------------------------------------------------

loc_4BE8E7:				; CODE XREF: .text:004BE8DEj
		mov	eax, 1
		jmp	short loc_4BE911
; ---------------------------------------------------------------------------

loc_4BE8EE:				; CODE XREF: .text:004BE889j
		dec	eax
		jnz	short loc_4BE90F
		mov	mbcscodepage, ebx
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		mov	eax, 1
		jmp	short loc_4BE911
; ---------------------------------------------------------------------------

loc_4BE90F:				; CODE XREF: .text:004BE8EFj
		xor	eax, eax

loc_4BE911:				; CODE XREF: .text:004BE872j
					; .text:004BE882j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4BE918:				; CODE XREF: .text:004BEAE6p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4BE96E
		mov	eax, [ebx+298h]
		test	eax, eax
		jz	short loc_4BE93C
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+298h], edx

loc_4BE93C:				; CODE XREF: .text:004BE92Bj
		mov	eax, [ebx+4A4h]
		test	eax, eax
		jz	short loc_4BE955
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+4A4h], edx

loc_4BE955:				; CODE XREF: .text:004BE944j
		mov	eax, [ebx+4E8h]
		test	eax, eax
		jz	short loc_4BE96E
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+4E8h], edx

loc_4BE96E:				; CODE XREF: .text:004BE921j
					; .text:004BE95Dj
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
