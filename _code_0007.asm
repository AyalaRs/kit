.code

; Exported entry  26. _Swprintf
; Exported entry 388. Swprintf

; int Swprintf(wchar_t *s, wchar_t *format, ...)
		public Swprintf
Swprintf:				; _Swprintf
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4039D8
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4039DC

loc_4039D8:				; CODE XREF: .text:004039D0j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4039DC:				; CODE XREF: .text:004039D6j
		lea	edx, [ebp+10h]
		push	edx		; arglist
		mov	ecx, [ebp+0Ch]
		push	ecx		; format
		push	eax		; buffer
		call	_vswprintf
		add	esp, 0Ch
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4039F0:				; CODE XREF: .text:0040FA8Bp
		push	ebp
		mov	ebp, esp
		push	ebx		; arglist
		cmp	dword_57D9B0, 0
		jz	short loc_403A02
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_403A02:				; CODE XREF: .text:004039FBj
		xor	edx, edx
		mov	dword_57D9B4, edx
		push	8		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	800h		; nexp
		push	14h		; itemsize
		push	offset sd	; sd
		call	Createsorteddata
		add	esp, 18h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_403A4E
		push	offset aMemmonOllydbgM ; "MEMMON: OllyDbg memory monitoring activ"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		mov	dword_57D9B0, 1
		jmp	short loc_403A66
; ---------------------------------------------------------------------------

loc_403A4E:				; CODE XREF: .text:00403A28j
		push	offset aMemmonUnableTo ; "MEMMON: Unable to start memory monitori"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_403A66:				; CODE XREF: .text:00403A4Cj
		mov	eax, ebx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_403A6C(FILE *stream, int)
loc_403A6C:				; CODE XREF: .text:00403C22p
					; .text:00403CB5p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi
		push	edi
		mov	esi, offset aAboutOllydbg ; "About OllyDbg"
;__DebugBreak		
		cmp	dword_57D9B0, 0
		jnz	short loc_403A8A
		xor	eax, eax
		jmp	loc_403C05
; ---------------------------------------------------------------------------

loc_403A8A:				; CODE XREF: .text:00403A81j
		xor	edx, edx
		mov	[ebp-8], edx
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	loc_403BF3
; ---------------------------------------------------------------------------

loc_403A99:				; CODE XREF: .text:00403BFCj
		mov	eax, [ebp-4]
		push	eax		; index
		push	offset sd	; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_403BF0
		push	4		; ucb
		mov	eax, [ebx]
		add	eax, [ebx+4]
		push	eax		; lp
		call	IsBadReadPtr
		test	eax, eax
		jz	short loc_403AE2
		mov	edi, 1
		mov	dword ptr [ebp-8], 0FFFFFFFFh
		lea	eax, aAbsent;[esi+6DCh]
		lea	edx, aAbsent_0;[esi+6E4h]
		mov	[ebp-10h], edx
		jmp	short loc_403B18
; ---------------------------------------------------------------------------

loc_403AE2:				; CODE XREF: .text:00403AC3j
		mov	ecx, [ebx]
		mov	eax, [ebx+4]
		cmp	dword ptr [ecx+eax], 0BAD0DA7Ah
		jz	short loc_403B0D
		mov	edi, 2
		mov	dword ptr [ebp-8], 0FFFFFFFFh
		lea	eax, aCorrupted;[esi+6F4h]
		lea	edx, aCorrupted_0;[esi+700h]
		mov	[ebp-10h], edx
		jmp	short loc_403B18
; ---------------------------------------------------------------------------

loc_403B0D:				; CODE XREF: .text:00403AEEj
		lea	edx, $CTW0("");[esi+19h]
		xor	edi, edi
		mov	[ebp-10h], edx
		lea	eax, $CTA0("");[esi+1]

loc_403B18:				; CODE XREF: .text:00403AE0j
					; .text:00403B0Bj
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_403B26
		test	edi, edi
		jz	loc_403BF0

loc_403B26:				; CODE XREF: .text:00403B1Cj
		cmp	dword ptr [ebp+8], 0
		jz	short loc_403B81
		mov	edx, [ebx+8]
		and	edx, 30000h
		cmp	edx, 10000h
		jnz	short loc_403B45
		lea	edx, aGlob;[esi+716h]
		jmp	short loc_403B5B
; ---------------------------------------------------------------------------

loc_403B45:				; CODE XREF: .text:00403B3Bj
		cmp	edx, 20000h
		jnz	short loc_403B55
		lea	edx, aVirt;[esi+71Bh]
		jmp	short loc_403B5B
; ---------------------------------------------------------------------------

loc_403B55:				; CODE XREF: .text:00403B4Bj
		lea	edx, aGenr;[esi+720h]

loc_403B5B:				; CODE XREF: .text:00403B43j
					; .text:00403B53j
		push	eax
		mov	eax, [ebx+10h]
		push	eax
		mov	ecx, [ebx+0Ch]
		push	ecx
		mov	eax, [ebx+4]
		push	eax
		mov	ecx, [ebx]
		push	ecx
		push	edx
		lea	edx, aSMemoryAddr08x;[esi+725h]
		push	edx		; format
		mov	eax, [ebp+8]
		push	eax		; stream
		call	_fprintf
		add	esp, 20h
		jmp	short loc_403BF0
; ---------------------------------------------------------------------------

loc_403B81:				; CODE XREF: .text:00403B2Aj
		mov	eax, [ebx+8]
		and	eax, 30000h
		cmp	eax, 10000h
		jnz	short loc_403B9B
		lea	edx, aGlob_0;[esi+756h]
		mov	[ebp-0Ch], edx
		jmp	short loc_403BB6
; ---------------------------------------------------------------------------

loc_403B9B:				; CODE XREF: .text:00403B8Ej
		cmp	eax, 20000h
		jnz	short loc_403BAD
		lea	ecx, aVirt_0;[esi+760h]
		mov	[ebp-0Ch], ecx
		jmp	short loc_403BB6
; ---------------------------------------------------------------------------

loc_403BAD:				; CODE XREF: .text:00403BA0j
		lea	eax, aGenr_0;[esi+76Ah]
		mov	[ebp-0Ch], eax

loc_403BB6:				; CODE XREF: .text:00403B99j
					; .text:00403BABj
		mov	edx, [ebp-10h]
		push	edx
		mov	ecx, [ebx+10h]
		push	ecx
		mov	eax, [ebx+0Ch]
		push	eax
		mov	edx, [ebx+4]
		push	edx
		mov	ecx, [ebx]
		push	ecx
		mov	eax, [ebp-0Ch]
		push	eax		; arglist
		lea	edx, aMemmonSMemoryA;[esi+774h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, 1
		test	edi, edi
		jnz	short loc_403BE5
		dec	ecx

loc_403BE5:				; CODE XREF: .text:00403BE2j
		push	ecx		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 24h

loc_403BF0:				; CODE XREF: .text:00403AAEj
					; .text:00403B20j ...
		inc	dword ptr [ebp-4]

loc_403BF3:				; CODE XREF: .text:00403A94j
		mov	eax, [ebp-4]
		cmp	eax, sd.n
		jl	loc_403A99
		mov	eax, [ebp-8]

loc_403C05:				; CODE XREF: .text:00403A85j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_403C0C:				; CODE XREF: .text:00410811p
		push	ebp
		mov	ebp, esp
		push	ebx
		cmp	dword_57D9B0, 0
		jnz	short loc_403C1E
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_403C1E:				; CODE XREF: .text:00403C17j
		push	1		; int
		push	0		; stream
		call	loc_403A6C
		add	esp, 8
		mov	ebx, eax
		xor	eax, eax
		mov	dword_57D9B0, eax
		push	offset sd	; sd
		call	Destroysorteddata
		pop	ecx
		mov	eax, ebx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_403C44:				; CODE XREF: .text:004BE0A6p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE0h
		mov	dword ptr [ebp-20h], 20h
		lea	eax, [ebp-20h]
		push	eax		; lpBuffer
		call	GlobalMemoryStatus
		mov	edx, [ebp-0Ch]
		cmp	edx, [ebp-4]
		jnb	short loc_403C67
		lea	ecx, [ebp-0Ch]
		jmp	short loc_403C6A
; ---------------------------------------------------------------------------

loc_403C67:				; CODE XREF: .text:00403C60j
		lea	ecx, [ebp-4]

loc_403C6A:				; CODE XREF: .text:00403C65j
		mov	eax, [ecx]
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  27. _Memalloc
; Exported entry 648. Memalloc

; int __cdecl Memalloc(ulong size, int flags)
		public Memalloc
Memalloc:				; CODE XREF: .text:00401996p
					; .text:00403F73p ...
		push	ebp		; _Memalloc
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jnz	short loc_403C8A
		xor	eax, eax
		jmp	loc_403D75
; ---------------------------------------------------------------------------

loc_403C8A:				; CODE XREF: .text:00403C81j
		cmp	dword_57D9B0, 0
		jnz	short loc_403CB1
		push	esi		; dwBytes
		mov	edx, 40h
		test	edi, 2
		jnz	short loc_403CA4
		add	edx, 0FFFFFFC0h

loc_403CA4:				; CODE XREF: .text:00403C9Fj
		push	edx		; uFlags
		call	GlobalAlloc
		mov	ebx, eax
		jmp	loc_403D41
; ---------------------------------------------------------------------------

loc_403CB1:				; CODE XREF: .text:00403C91j
		push	0		; int
		push	0		; stream
		call	loc_403A6C
		add	esp, 8
		lea	eax, [esi+4]
		test	edi, 2
		push	eax		; dwBytes
		mov	edx, 40h
		jnz	short loc_403CD1
		add	edx, 0FFFFFFC0h

loc_403CD1:				; CODE XREF: .text:00403CCCj
		push	edx		; uFlags
		call	GlobalAlloc
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_403D41
		mov	dword ptr [ebx+esi], 0BAD0DA7Ah
		mov	[ebp-14h], ebx
		mov	[ebp-10h], esi
		mov	dword ptr [ebp-0Ch], 10000h
		call	loc_411017
		mov	[ebp-8], eax
		call	loc_41102E
		mov	[ebp-4], eax
		lea	eax, [ebp-14h]
		push	eax		; item
		push	offset sd	; sd
		call	Addsorteddata
		add	esp, 8
		test	eax, eax
		jnz	short loc_403D41
		cmp	dword_57D9B4, 0
		jnz	short loc_403D37
		push	offset aMemmonTooManyM ; src
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_403D37:				; CODE XREF: .text:00403D1Dj
		mov	dword_57D9B4, 1

loc_403D41:				; CODE XREF: .text:00403CACj
					; .text:00403CDBj ...
		test	ebx, ebx
		jnz	short loc_403D73
		test	edi, 1
		jnz	short loc_403D73
		push	esi		; arglist
		push	offset aUnableToAlloca ; "Unable to allocate %li. bytes	of memory"
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aLowMemory ; "Low memory!"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E66C ; cond
		call	Conderror
		add	esp, 10h

loc_403D73:				; CODE XREF: .text:00403D43j
					; .text:00403D4Bj
		mov	eax, ebx

loc_403D75:				; CODE XREF: .text:00403C85j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  28. _Memfree
; Exported entry 651. Memfree

; HGLOBAL __cdecl Memfree(void *data)
		public Memfree
Memfree:				; CODE XREF: .text:00401A75p
					; .text:00403FCFp ...
		push	ebp		; _Memfree
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_403DB7
		cmp	dword_57D9B0, 0
		jz	short loc_403DB1
		push	10000h		; int
		mov	esi, ebx
		push	esi		; arglist
		call	loc_401708
		add	esp, 8
		push	0		; subaddr
		push	esi		; _addr
		push	offset sd	; sd
		call	Deletesorteddata
		add	esp, 0Ch

loc_403DB1:				; CODE XREF: .text:00403D8Fj
		push	ebx		; hMem
		call	GlobalFree

loc_403DB7:				; CODE XREF: .text:00403D86j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  29. _Mempurge
; Exported entry 653. Mempurge

; HGLOBAL __cdecl Mempurge(void	*data, int count, ulong	itemsize, int *newcount)
		public Mempurge
Mempurge:				; CODE XREF: .text:0040FF4Bp
					; .text:0040FFC3p ...
		push	ebp		; _Mempurge
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi		; arglist
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_403DD9
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_403DD9
		test	esi, esi
		jnz	short loc_403DE0

loc_403DD9:				; CODE XREF: .text:00403DCDj
					; .text:00403DD3j
		mov	eax, ebx
		jmp	loc_403EBD
; ---------------------------------------------------------------------------

loc_403DE0:				; CODE XREF: .text:00403DD7j
		cmp	dword_57D9B0, 0
		jnz	short loc_403DED
		xor	edi, edi
		jmp	short loc_403DFD
; ---------------------------------------------------------------------------

loc_403DED:				; CODE XREF: .text:00403DE7j
		push	0		; int
		push	ebx		; arglist
		call	loc_401708
		add	esp, 8
		mov	edi, 4

loc_403DFD:				; CODE XREF: .text:00403DEBj
		mov	eax, [ebp+0Ch]
		push	ebx		; hMem
		imul	esi
		mov	esi, eax
		call	GlobalSize
		lea	edx, [edi+esi]
		cmp	eax, edx
		ja	short loc_403E18
		mov	eax, ebx
		jmp	loc_403EBD
; ---------------------------------------------------------------------------

loc_403E18:				; CODE XREF: .text:00403E0Fj
		push	0		; uFlags
		add	edi, esi
		push	edi		; dwBytes
		push	ebx		; hMem
		call	GlobalReAlloc
		mov	edi, eax
		test	edi, edi
		jnz	short loc_403E30
		mov	eax, ebx
		jmp	loc_403EBD
; ---------------------------------------------------------------------------

loc_403E30:				; CODE XREF: .text:00403E27j
		cmp	dword_57D9B0, 0
		jz	short loc_403EAD
		push	0		; subaddr
		push	ebx		; _addr
		push	offset sd	; sd
		call	Deletesorteddata
		add	esp, 0Ch
		mov	dword ptr [edi+esi], 0BAD0DA7Ah
		mov	[ebp-14h], edi
		mov	[ebp-10h], esi
		mov	dword ptr [ebp-0Ch], 10000h
		call	loc_411017
		mov	[ebp-8], eax
		call	loc_41102E
		mov	[ebp-4], eax
		lea	edx, [ebp-14h]
		push	edx		; item
		push	offset sd	; sd
		call	Addsorteddata
		add	esp, 8
		test	eax, eax
		jnz	short loc_403EAD
		cmp	dword_57D9B4, 0
		jnz	short loc_403EA3
		push	offset aMemmonTooManyM ; src
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_403EA3:				; CODE XREF: .text:00403E89j
		mov	dword_57D9B4, 1

loc_403EAD:				; CODE XREF: .text:00403E37j
					; .text:00403E80j
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_403EBB
		mov	ecx, [ebp+14h]
		mov	eax, [ebp+0Ch]
		mov	[ecx], eax

loc_403EBB:				; CODE XREF: .text:00403EB1j
		mov	eax, edi

loc_403EBD:				; CODE XREF: .text:00403DDBj
					; .text:00403E13j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  30. _Memdouble
; Exported entry 650. Memdouble

; char *__cdecl	Memdouble(void *data, int *pcount, ulong itemsize, int *failed,	int flags)
		public Memdouble
Memdouble:				; CODE XREF: .text:00436678p
					; .text:00436779p ...
		push	ebp		; _Memdouble
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi		; arglist
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+8]
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_403EE8
		mov	eax, [ebp+14h]
		cmp	dword ptr [eax], 0
		jz	short loc_403EE8
		mov	eax, ebx
		jmp	loc_404068
; ---------------------------------------------------------------------------

loc_403EE8:				; CODE XREF: .text:00403ED7j
					; .text:00403EDFj
		test	ebx, ebx
		jz	short loc_403EFE
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_403EFE
		mov	edx, [ebp+0Ch]
		cmp	dword ptr [edx], 0
		jz	short loc_403EFE
		test	esi, esi
		jnz	short loc_403F14

loc_403EFE:				; CODE XREF: .text:00403EEAj
					; .text:00403EF0j ...
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_403F0D
		mov	ecx, [ebp+14h]
		mov	dword ptr [ecx], 1

loc_403F0D:				; CODE XREF: .text:00403F02j
		mov	eax, ebx
		jmp	loc_404068
; ---------------------------------------------------------------------------

loc_403F14:				; CODE XREF: .text:00403EFCj
		cmp	dword_57D9B0, 0
		jnz	short loc_403F21
		xor	eax, eax
		jmp	short loc_403F31
; ---------------------------------------------------------------------------

loc_403F21:				; CODE XREF: .text:00403F1Bj
		push	0		; int
		push	ebx		; arglist
		call	loc_401708
		add	esp, 8
		mov	eax, 4

loc_403F31:				; CODE XREF: .text:00403F1Fj
		mov	edx, [ebp+0Ch]
		mov	edi, [edx]
		imul	edi, esi
		cmp	edi, 40000000h
		jbe	short loc_403F57
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_403F50
		mov	eax, [ebp+14h]
		mov	dword ptr [eax], 1

loc_403F50:				; CODE XREF: .text:00403F45j
		mov	eax, ebx
		jmp	loc_404068
; ---------------------------------------------------------------------------

loc_403F57:				; CODE XREF: .text:00403F3Fj
		push	2		; uFlags
		mov	edx, edi
		add	edx, edx
		add	eax, edx
		push	eax		; dwBytes
		push	ebx		; hMem
		call	GlobalReAlloc
		mov	esi, eax
		test	esi, esi
		jnz	short loc_403FDA
		push	1		; flags
		mov	eax, edi
		add	eax, eax	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_403FC3
		test	byte ptr [ebp+18h], 1
		jnz	short loc_403FAD
		push	edi		; arglist
		push	offset aUnableToAlloca ; "Unable to allocate %li. bytes	of memory"
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aLowMemory ; "Low memory!"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E66C ; cond
		call	Conderror
		add	esp, 10h

loc_403FAD:				; CODE XREF: .text:00403F85j
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_403FBC
		mov	eax, [ebp+14h]
		mov	dword ptr [eax], 1

loc_403FBC:				; CODE XREF: .text:00403FB1j
		mov	eax, ebx
		jmp	loc_404068
; ---------------------------------------------------------------------------

loc_403FC3:				; CODE XREF: .text:00403F7Fj
		push	edi		; n
		push	ebx		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		push	ebx		; data
		call	Memfree
		pop	ecx
		jmp	loc_40405D
; ---------------------------------------------------------------------------

loc_403FDA:				; CODE XREF: .text:00403F6Aj
		cmp	dword_57D9B0, 0
		jz	short loc_40405D
		push	0		; subaddr
		push	ebx		; _addr
		push	offset sd	; sd
		call	Deletesorteddata
		mov	edx, edi
		add	esp, 0Ch
		add	edx, edx
		add	edi, edi
		mov	dword ptr [esi+edx], 0BAD0DA7Ah
		mov	[ebp-14h], esi
		mov	[ebp-10h], edi
		mov	dword ptr [ebp-0Ch], 10000h
		call	loc_411017
		mov	[ebp-8], eax
		call	loc_41102E
		mov	[ebp-4], eax
		lea	ecx, [ebp-14h]
		push	ecx		; item
		push	offset sd	; sd
		call	Addsorteddata
		add	esp, 8
		test	eax, eax
		jnz	short loc_40405D
		cmp	dword_57D9B4, 0
		jnz	short loc_404053
		push	offset aMemmonTooManyM ; src
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_404053:				; CODE XREF: .text:00404039j
		mov	dword_57D9B4, 1

loc_40405D:				; CODE XREF: .text:00403FD5j
					; .text:00403FE1j ...
		mov	eax, [ebp+0Ch]
		mov	edx, [eax]
		add	edx, edx
		mov	[eax], edx
		mov	eax, esi

loc_404068:				; CODE XREF: .text:00403EE3j
					; .text:00403F0Fj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  31. _Virtalloc
; Exported entry 746. Virtalloc

; LPVOID __cdecl Virtalloc(ulong size, int flags)
		public Virtalloc
Virtalloc:				; CODE XREF: .text:004174A8p
					; .text:00417536p ...
		push	ebp		; _Virtalloc
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi		; arglist
		mov	esi, [ebp+8]
		test	esi, esi
		jnz	short loc_404086
		xor	eax, eax
		jmp	loc_404150
; ---------------------------------------------------------------------------

loc_404086:				; CODE XREF: .text:0040407Dj
		cmp	dword_57D9B0, 0
		jnz	short loc_4040A2
		push	4		; flProtect
		push	1000h		; flAllocationType
		push	esi		; dwSize
		push	0		; lpAddress
		call	VirtualAlloc
		mov	ebx, eax
		jmp	short loc_40411E
; ---------------------------------------------------------------------------

loc_4040A2:				; CODE XREF: .text:0040408Dj
		push	4		; flProtect
		lea	eax, [esi+4]
		push	1000h		; flAllocationType
		push	eax		; dwSize
		push	0		; lpAddress
		call	VirtualAlloc
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_40411E
		mov	dword ptr [ebx+esi], 0BAD0DA7Ah
		mov	[ebp-14h], ebx
		mov	[ebp-10h], esi
		mov	dword ptr [ebp-0Ch], 20000h
		call	loc_411017
		mov	[ebp-8], eax
		call	loc_41102E
		mov	[ebp-4], eax
		lea	eax, [ebp-14h]
		push	eax		; item
		push	offset sd	; sd
		call	Addsorteddata
		add	esp, 8
		test	eax, eax
		jnz	short loc_40411E
		cmp	dword_57D9B4, 0
		jnz	short loc_404114
		push	offset aMemmonTooManyM ; src
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_404114:				; CODE XREF: .text:004040FAj
		mov	dword_57D9B4, 1

loc_40411E:				; CODE XREF: .text:004040A0j
					; .text:004040B8j ...
		test	ebx, ebx
		jnz	short loc_40414E
		test	byte ptr [ebp+0Ch], 1
		jnz	short loc_40414E
		push	esi		; arglist
		push	offset aUnableToAlloca ; "Unable to allocate %li. bytes	of memory"
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aLowMemory ; "Low memory!"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E66C ; cond
		call	Conderror
		add	esp, 10h

loc_40414E:				; CODE XREF: .text:00404120j
					; .text:00404126j
		mov	eax, ebx

loc_404150:				; CODE XREF: .text:00404081j
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  32. _Virtfree
; Exported entry 747. Virtfree

; int __cdecl Virtfree(void *data)
		public Virtfree
Virtfree:				; CODE XREF: .text:004173ABp
					; .text:004173C7p ...
		push	ebp		; _Virtfree
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_40419A
		cmp	dword_57D9B0, 0
		jz	short loc_40418D
		push	20000h		; int
		mov	esi, ebx
		push	esi		; arglist
		call	loc_401708
		add	esp, 8
		push	0		; subaddr
		push	esi		; _addr
		push	offset sd	; sd
		call	Deletesorteddata
		add	esp, 0Ch

loc_40418D:				; CODE XREF: .text:0040416Bj
		push	8000h		; dwFreeType
		push	0		; dwSize
		push	ebx		; lpAddress
		call	VirtualFree

loc_40419A:				; CODE XREF: .text:00404162j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_4041A0(SIZE_T	dwBytes)
loc_4041A0:				; CODE XREF: .text:004136BDp
					; .text:0042E6A3p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		cmp	dword_57D964, 0
		jz	short loc_4041D9
		test	ebx, ebx
		jz	short loc_4041BD
		cmp	ebx, dword_57D968
		jbe	short loc_4041D9

loc_4041BD:				; CODE XREF: .text:004041B3j
		mov	eax, dword_57D964
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx	; int
		mov	dword_57D964, edx
		xor	ecx, ecx	; int
		mov	dword_57D968, ecx

loc_4041D9:				; CODE XREF: .text:004041AFj
					; .text:004041BBj
		test	ebx, ebx
		jz	short loc_404203
		cmp	dword_57D964, 0
		jnz	short loc_404203
		push	0		; flags
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		mov	dword_57D964, esi
		test	esi, esi
		jz	short loc_404203
		mov	dword_57D968, ebx

loc_404203:				; CODE XREF: .text:004041DBj
					; .text:004041E4j ...
		mov	eax, dword_57D964
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_40420C(void *dest, void *lp, UINT_PTR	ucb)
loc_40420C:				; CODE XREF: .text:004097D3p
					; .text:00409805p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		push	esi		; ucb
		mov	edi, ebx
		push	edi		; lp
		call	IsBadReadPtr
		test	eax, eax
		jz	short loc_40422A
		or	eax, 0FFFFFFFFh
		jmp	short loc_40423A
; ---------------------------------------------------------------------------

loc_40422A:				; CODE XREF: .text:00404223j
		push	esi		; n
		push	edi		; src
		mov	edx, [ebp+8]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		xor	eax, eax

loc_40423A:				; CODE XREF: .text:00404228j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_404240(void *src, LPVOID lp, UINT_PTR	ucb)
loc_404240:				; CODE XREF: .text:00409A23p
					; .text:004D84EFp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		push	esi		; ucb
		mov	edi, ebx
		push	edi		; lp
		call	IsBadWritePtr
		test	eax, eax
		jz	short loc_40425E
		or	eax, 0FFFFFFFFh
		jmp	short loc_40426E
; ---------------------------------------------------------------------------

loc_40425E:				; CODE XREF: .text:00404257j
		push	esi		; n
		mov	edx, [ebp+8]
		push	edx		; src
		push	edi		; dest
		call	_memcpy
		add	esp, 0Ch
		xor	eax, eax

loc_40426E:				; CODE XREF: .text:0040425Cj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		