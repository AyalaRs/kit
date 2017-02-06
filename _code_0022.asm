.code

; int __cdecl loc_413CF0(int a4, t_module *pm)
loc_413CF0:				; CODE XREF: .text:00416C98p
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 3

loc_413CF9:				; CODE XREF: .text:00413D01j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_413CF9
		add	esp, 0FFFFF3C8h
		mov	eax, [ebp-4]
		cmp	process, 0
		push	ebx
		push	esi
		push	edi		; arglist
		mov	esi, [ebp+0Ch]
		jz	short loc_413D2D
		cmp	dword ptr [ebp+8], 0
		jz	short loc_413D2D
		mov	eax, [ebp+8]
		cmp	dword ptr [eax], 0
		jz	short loc_413D2D
		test	esi, esi
		jnz	short loc_413D35

loc_413D2D:				; CODE XREF: .text:00413D19j
					; .text:00413D1Fj ...
		or	eax, 0FFFFFFFFh
		jmp	loc_416C66
; ---------------------------------------------------------------------------

loc_413D35:				; CODE XREF: .text:00413D2Bj
		cmp	skipsystembp, 0
		jz	short loc_413D46
		or	eax, 0FFFFFFFFh
		jmp	loc_416C66
; ---------------------------------------------------------------------------

loc_413D46:				; CODE XREF: .text:00413D3Cj
		push	0FB0h		; n
		push	0		; c
		push	esi		; s
		call	_memset
		add	esp, 0Ch
		xor	edx, edx
		mov	[ebp-94h], edx
		mov	dword ptr [ebp-10h], 1
		cmp	VersionInformation.dwPlatformId, 2
		jnz	loc_413E71
		cmp	_imp__EnumProcessModules, 0
		jz	loc_413E71
		cmp	_imp__GetModuleInformation, 0
		jz	loc_413E71
		cmp	_imp__GetModuleFileNameExW, 0
		jz	loc_413E71
		lea	ecx, [ebp-5Ch]
		lea	eax, [ebp-3C3Ch]
		push	ecx		; _DWORD
		push	2000h		; _DWORD
		push	eax		; _DWORD
		mov	edx, process
		push	edx		; _DWORD
		call	_imp__EnumProcessModules
		test	eax, eax
		jz	loc_413E71
		mov	ecx, [ebp-5Ch]
		shr	ecx, 2
		mov	[ebp-4], ecx
		cmp	dword ptr [ebp-4], 800h
		jle	short loc_413DD7
		mov	dword ptr [ebp-4], 800h

loc_413DD7:				; CODE XREF: .text:00413DCEj
		xor	ebx, ebx
		lea	edi, [ebp-3C3Ch]
		cmp	ebx, [ebp-4]
		jge	loc_413E71

loc_413DE8:				; CODE XREF: .text:00413E6Bj
		lea	eax, [ebp-17B0h]
		push	0Ch		; _DWORD
		push	eax		; _DWORD
		mov	ecx, process
		mov	edx, [edi]
		push	edx		; _DWORD
		push	ecx		; _DWORD
		call	_imp__GetModuleInformation
		test	eax, eax
		jz	short loc_413E64
		mov	eax, [ebp+8]
		mov	edx, [eax]
		cmp	edx, [ebp-17B0h]
		jnz	short loc_413E64
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		mov	[esi], eax
		mov	edx, [ebp-17ACh]
		add	edx, 1000h
		dec	edx
		and	edx, 0FFFFF000h
		mov	[esi+4], edx
		mov	ecx, [ebp+8]
		mov	eax, [ecx+8]
		lea	ecx, [esi+4Ch]
		mov	[esi+8], eax
		mov	edx, [ebp-17A8h]
		mov	[esi+460h], edx
		push	104h		; _DWORD
		push	ecx		; _DWORD
		mov	edx, process
		mov	eax, [edi]
		push	eax		; _DWORD
		push	edx		; _DWORD
		call	_imp__GetModuleFileNameExW
		xor	ecx, ecx
		mov	[ebp-10h], ecx
		jmp	short loc_413E71
; ---------------------------------------------------------------------------

loc_413E64:				; CODE XREF: .text:00413E03j
					; .text:00413E10j
		inc	ebx
		add	edi, 4
		cmp	ebx, [ebp-4]
		jl	loc_413DE8

loc_413E71:				; CODE XREF: .text:00413D6Cj
					; .text:00413D79j ...
		cmp	VersionInformation.dwPlatformId, 1
		jnz	loc_413F5A
		cmp	_imp__CreateToolhelp32Snapshot,	0
		jz	loc_413F5A
		cmp	_imp__Module32First, 0
		jz	loc_413F5A
		cmp	_imp__Module32Next, 0
		jz	loc_413F5A
		mov	eax, processid
		push	eax		; _DWORD
		push	8		; _DWORD
		call	_imp__CreateToolhelp32Snapshot
		mov	[ebp-0B8h], eax
		cmp	dword ptr [ebp-0B8h], 0FFFFFFFFh
		jz	loc_413F5A
		mov	dword ptr [ebp-19D4h], 224h
		lea	edx, [ebp-19D4h]
		push	edx		; _DWORD
		mov	ecx, [ebp-0B8h]
		push	ecx		; _DWORD
		call	_imp__Module32First
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_413F4E

loc_413EEA:				; CODE XREF: .text:00413F4Cj
		mov	eax, [ebp+8]
		mov	edx, [eax]
		cmp	edx, [ebp-19C0h]
		jnz	short loc_413F34
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		mov	[esi], eax
		mov	edx, [ebp-19BCh]
		mov	[esi+4], edx
		lea	edx, [esi+4Ch]
		mov	ecx, [ebp+8]
		mov	eax, [ecx+8]
		lea	ecx, [ebp-18B4h]
		mov	[esi+8], eax
		push	104h		; nw
		push	edx		; w
		push	104h		; ns
		push	ecx		; s
		call	Asciitounicode
		add	esp, 10h
		xor	eax, eax
		mov	[ebp-10h], eax
		jmp	short loc_413F4E
; ---------------------------------------------------------------------------

loc_413F34:				; CODE XREF: .text:00413EF5j
		lea	edx, [ebp-19D4h]
		push	edx		; _DWORD
		mov	ecx, [ebp-0B8h]
		push	ecx		; _DWORD
		call	_imp__Module32Next
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_413EEA

loc_413F4E:				; CODE XREF: .text:00413EE8j
					; .text:00413F32j
		mov	eax, [ebp-0B8h]
		push	eax		; hObject
		call	CloseHandle

loc_413F5A:				; CODE XREF: .text:00413E78j
					; .text:00413E85j ...
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_413F85
		mov	edx, [ebp+8]
		test	byte ptr [edx+0Bh], 2
		jz	short loc_413F85
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		mov	[esi], eax
		xor	eax, eax
		mov	dword ptr [esi+4], 1
		mov	edx, [ebp+8]
		mov	ecx, [edx+8]
		mov	[esi+8], ecx
		mov	[ebp-10h], eax

loc_413F85:				; CODE XREF: .text:00413F5Ej
					; .text:00413F67j
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_413F93
		or	eax, 0FFFFFFFFh
		jmp	loc_416C66
; ---------------------------------------------------------------------------

loc_413F93:				; CODE XREF: .text:00413F89j
		cmp	word ptr [esi+4Ch], 0
		jz	loc_414144
		test	byte ptr [esi+0Ah], 1
		jz	short loc_413FCA
		cmp	rundll,	0
		jz	short loc_413FCA
		lea	edx, [esi+4Ch]
		push	edx		; arglist
		push	offset aModuleSOllydbg ; "Module '%s' (OllyDbg DLL loader)"
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [esi]
		push	ecx		; _addr
		call	Message
		add	esp, 0Ch
		jmp	short loc_413FE5
; ---------------------------------------------------------------------------

loc_413FCA:				; CODE XREF: .text:00413FA2j
					; .text:00413FABj
		lea	eax, [esi+4Ch]
		push	eax		; arglist
		push	offset aModuleS	; "Module '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		mov	edx, [esi]
		push	edx		; _addr
		call	Message
		add	esp, 0Ch

loc_413FE5:				; CODE XREF: .text:00413FC8j
		lea	ecx, [esi+254h]
		push	ecx		; version
		lea	eax, [esi+4Ch]
		push	eax		; path
		call	Getexeversion
		add	esp, 8
		lea	edx, [ebp-0AE8h]
		lea	ecx, [ebp-8E8h]
		lea	eax, [ebp-6E8h]
		push	edx		; ext
		push	ecx		; _name
		push	eax		; dir
		lea	edx, [ebp-9Ch]
		push	edx		; drive
		lea	ecx, [esi+4Ch]
		push	ecx		; path
		call	__wfnsplit
		add	esp, 14h
		lea	eax, [ebp-6E8h]
		lea	edx, [ebp-9Ch]
		lea	ecx, [ebp-4E8h]
		push	0		; ext
		push	0		; _name
		push	eax		; dir
		push	edx		; drive
		push	ecx		; path
		call	__wfnmerge
		add	esp, 14h
		push	offset systemdir ; s2
		lea	eax, [ebp-4E8h]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_414066
		test	byte ptr [esi+0Ah], 1
		jnz	short loc_414066
		or	dword ptr [esi+8], 100000h

loc_414066:				; CODE XREF: .text:00414057j
					; .text:0041405Dj
		lea	edx, [ebp-8E8h]
		push	edx		; s
		call	__lwcsupr
		pop	ecx
		push	offset a_dll_1	; ".DLL"
		lea	ecx, [ebp-0AE8h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4140EB
		push	offset aNtdll	; s2
		lea	eax, [ebp-8E8h]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_41411B
		push	offset aKernel32_0 ; s2
		lea	edx, [ebp-8E8h]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_41411B
		push	offset aUser32	; s2
		lea	ecx, [ebp-8E8h]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_41411B
		push	offset aAdvapi32 ; s2
		lea	eax, [ebp-8E8h]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_41411B

loc_4140EB:				; CODE XREF: .text:00414089j
		push	offset aShell32	; "SHELL32"
		lea	edx, [ebp-8E8h]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_41411B
		push	offset aGdi32	; "GDI32"
		lea	ecx, [ebp-8E8h]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_414122

loc_41411B:				; CODE XREF: .text:004140A1j
					; .text:004140B9j ...
		or	dword ptr [esi+8], 200000h

loc_414122:				; CODE XREF: .text:00414119j
		lea	eax, [esi+4Ch]
		push	eax		; path
		lea	edx, [esi+0Ch]
		push	edx		; int
		call	loc_412FF4
		add	esp, 8
		lea	ecx, [ebp-8E8h]
		push	ecx
		call	loc_484884
		pop	ecx
		mov	[ebp-28h], eax
		jmp	short loc_41417B
; ---------------------------------------------------------------------------

loc_414144:				; CODE XREF: .text:00413F98j
		mov	eax, [esi]
		lea	edx, [esi+0Ch]
		shr	eax, 10h
		push	eax
		push	offset aMod_04x	; "Mod_%04X"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [esi+0Ch]
		push	ecx		; arglist
		push	offset aModuleSAnonymo ; "Module <%s> (anonymous)"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [esi]
		push	eax		; _addr
		call	Message
		add	esp, 0Ch
		xor	edx, edx
		mov	[ebp-28h], edx

loc_41417B:				; CODE XREF: .text:00414142j
		lea	ecx, [esi+0Ch]
		lea	eax, [esi+4Ch]	; int
		push	ecx		; arglist
		push	eax		; int
		mov	edx, [esi+4]	; int
		push	edx		; int
		mov	ecx, [esi]	; int
		push	ecx		; int
		call	loc_4C9A60
		add	esp, 10h
		test	eax, eax
		jle	short loc_41419D
		or	dword ptr [esi+8], 400000h

loc_41419D:				; CODE XREF: .text:00414194j
		cmp	word ptr [esi+4Ch], 0
		jz	short loc_4141DE
		push	offset aRb_3	; mode
		lea	eax, [esi+4Ch]
		push	eax		; path
		call	__wfopen
		add	esp, 8
		mov	[ebp-0ACh], eax
		cmp	dword ptr [ebp-0ACh], 0
		jnz	short loc_4141E6
		push	offset aUnableToOpenEx ; "  Unable to open executable file"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	short loc_4141E6
; ---------------------------------------------------------------------------

loc_4141DE:				; CODE XREF: .text:004141A2j
		xor	edx, edx
		mov	[ebp-0ACh], edx

loc_4141E6:				; CODE XREF: .text:004141C2j
					; .text:004141DCj
		mov	ecx, [esi]
		mov	[ebp-30h], ecx

loc_4141EB:				; CODE XREF: .text:004146E9j
		cmp	dword ptr [ebp-0ACh], 0
		jz	loc_41430C
		mov	eax, [ebp-0ACh]
		push	eax		; stream
		push	40h		; n
		push	1		; size
		lea	edx, [ebp-1A14h]
		push	edx		; ptr
		call	_fread
		add	esp, 10h
		cmp	eax, 40h
		jnz	loc_416BC4
		cmp	word ptr [ebp-1A14h], 5A4Dh
		jz	short loc_414243
		push	offset aInvalidDosSign ; "  Invalid DOS	signature"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_416BFF
; ---------------------------------------------------------------------------

loc_414243:				; CODE XREF: .text:00414224j
		push	0		; whence
		mov	ecx, [ebp-19D8h]
		push	ecx		; offset
		mov	eax, [ebp-0ACh]
		push	eax		; stream
		call	_fseek
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_416BC4
		mov	edx, [ebp-0ACh]
		push	edx		; stream
		push	4		; n
		push	1		; size
		lea	ecx, [ebp-54h]
		push	ecx		; ptr
		call	_fread
		add	esp, 10h
		cmp	eax, 4
		jnz	loc_416BC4
		cmp	dword ptr [ebp-54h], 4550h
		jz	short loc_4142A9
		push	offset aInvalidPeSigna ; "  Invalid PE signature"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_416BFF
; ---------------------------------------------------------------------------

loc_4142A9:				; CODE XREF: .text:0041428Aj
		mov	eax, [ebp-0ACh]
		push	eax		; stream
		push	14h		; n
		push	1		; size
		lea	edx, [ebp-1A28h]
		push	edx		; ptr
		call	_fread
		add	esp, 10h
		cmp	eax, 14h
		jnz	loc_416BC4
		cmp	word ptr [ebp-1A28h], 14Ch
		jz	short loc_4142F4
		push	offset aNotAn80x86Exec ; "  Not	an 80x86 executable"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_416BFF
; ---------------------------------------------------------------------------

loc_4142F4:				; CODE XREF: .text:004142D5j
		mov	ecx, [ebp-0ACh]
		push	ecx		; stream
		call	_ftell
		pop	ecx
		add	eax, [ebp-30h]
		mov	[ebp-48h], eax
		jmp	loc_4143F0
; ---------------------------------------------------------------------------

loc_41430C:				; CODE XREF: .text:004141F2j
		push	1		; mode
		push	40h		; size
		mov	eax, [ebp-30h]
		push	eax		; _addr
		lea	edx, [ebp-1A14h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jz	loc_416BC4
		cmp	word ptr [ebp-1A14h], 5A4Dh
		jz	short loc_414353
		push	offset aInvalidDosSign ; "  Invalid DOS	signature"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_416BFF
; ---------------------------------------------------------------------------

loc_414353:				; CODE XREF: .text:00414334j
		mov	ecx, [ebp-30h]
		add	ecx, [ebp-19D8h]
		mov	[ebp-48h], ecx
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-48h]
		push	eax		; _addr
		lea	edx, [ebp-54h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jz	loc_416BC4
		cmp	dword ptr [ebp-54h], 4550h
		jz	short loc_4143A1
		push	offset aInvalidPeSigna ; "  Invalid PE signature"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_416BFF
; ---------------------------------------------------------------------------

loc_4143A1:				; CODE XREF: .text:00414382j
		add	dword ptr [ebp-48h], 4
		push	1		; mode
		push	14h		; size
		mov	ecx, [ebp-48h]
		push	ecx		; _addr
		lea	eax, [ebp-1A28h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jz	loc_416BC4
		cmp	word ptr [ebp-1A28h], 14Ch
		jz	short loc_4143EC
		push	offset aNotAn80x86Exec ; "  Not	an 80x86 executable"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_416BFF
; ---------------------------------------------------------------------------

loc_4143EC:				; CODE XREF: .text:004143CDj
		add	dword ptr [ebp-48h], 14h

loc_4143F0:				; CODE XREF: .text:00414307j
		movzx	edx, word ptr [ebp-1A18h]
		mov	[ebp-34h], edx
		cmp	dword ptr [ebp-34h], 60h
		jnb	short loc_41441D
		push	offset aTooShortOption ; "  Too	short Optional Header"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_416BFF
; ---------------------------------------------------------------------------

loc_41441D:				; CODE XREF: .text:004143FEj
		cmp	dword ptr [ebp-34h], 0E0h
		jz	short loc_414447
		push	0E0h
		mov	ecx, [ebp-34h]
		push	ecx		; arglist
		push	offset aSizeOfOptional ; "  Size of Optional Header (%i. bytes)	d"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h

loc_414447:				; CODE XREF: .text:00414424j
		cmp	dword ptr [ebp-34h], 0E0h
		jnb	loc_4144F8
		push	0E0h		; n
		push	0		; c
		lea	eax, [ebp-1BE8h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		lea	edx, [ebp-1B08h]
		push	0E0h		; n
		push	0		; c
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		push	1		; mode
		mov	ecx, [ebp-34h]
		push	ecx		; size
		mov	eax, [ebp-48h]
		push	eax		; _addr
		lea	edx, [ebp-1BE8h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-64h], eax
		cmp	dword ptr [ebp-0ACh], 0
		jnz	short loc_4144C8
		mov	ecx, [ebp-64h]
		cmp	ecx, [ebp-34h]
		jnz	loc_416BC4
		push	esi
		lea	esi, [ebp-1BE8h]
		lea	edi, [ebp-1B08h]
		mov	ecx, 38h
		rep movsd
		pop	esi
		jmp	short loc_4144ED
; ---------------------------------------------------------------------------

loc_4144C8:				; CODE XREF: .text:004144A3j
		mov	eax, [ebp-0ACh]
		lea	ecx, [ebp-1B08h]
		push	eax		; stream
		mov	edx, [ebp-34h]
		push	edx		; n
		push	1		; size
		push	ecx		; ptr
		call	_fread
		add	esp, 10h
		cmp	eax, [ebp-34h]
		jnz	loc_416BC4

loc_4144ED:				; CODE XREF: .text:004144C6j
		mov	eax, [ebp-34h]
		add	[ebp-48h], eax
		jmp	loc_414594
; ---------------------------------------------------------------------------

loc_4144F8:				; CODE XREF: .text:0041444Ej
		push	1		; mode
		push	0E0h		; size
		mov	edx, [ebp-48h]
		push	edx		; _addr
		lea	ecx, [ebp-1BE8h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-64h], eax
		cmp	dword ptr [ebp-0ACh], 0
		jnz	short loc_414541
		mov	eax, [ebp-64h]
		cmp	eax, [ebp-34h]
		jnz	loc_416BC4
		push	esi
		lea	esi, [ebp-1BE8h]
		lea	edi, [ebp-1B08h]
		mov	ecx, 38h
		rep movsd
		pop	esi
		jmp	short loc_41458D
; ---------------------------------------------------------------------------

loc_414541:				; CODE XREF: .text:0041451Cj
		mov	eax, [ebp-0ACh]
		push	eax		; stream
		push	0E0h		; n
		push	1		; size
		lea	edx, [ebp-1B08h]
		push	edx		; ptr
		call	_fread
		add	esp, 10h
		cmp	eax, 0E0h
		jnz	loc_416BC4
		cmp	dword ptr [ebp-34h], 0E0h
		jbe	short loc_41458D
		push	1		; whence
		mov	ecx, [ebp-34h]
		sub	ecx, 0E0h
		push	ecx		; offset
		mov	eax, [ebp-0ACh]
		push	eax		; stream
		call	_fseek
		add	esp, 0Ch

loc_41458D:				; CODE XREF: .text:0041453Fj
					; .text:00414570j
		add	dword ptr [ebp-48h], 0E0h

loc_414594:				; CODE XREF: .text:004144F3j
		mov	edx, [ebp-1AACh]
		mov	[ebp-2Ch], edx
		cmp	dword ptr [ebp-2Ch], 10h
		jbe	short loc_4145AA
		mov	dword ptr [ebp-2Ch], 10h

loc_4145AA:				; CODE XREF: .text:004145A1j
		cmp	word ptr [ebp-1B08h], 10Bh
		jnz	short loc_4145CD
		mov	eax, [ebp-2Ch]
		mov	ecx, [ebp-34h]
		shl	eax, 3
		add	ecx, 80h
		add	eax, 0E0h
		cmp	ecx, eax
		jz	short loc_4145EA

loc_4145CD:				; CODE XREF: .text:004145B3j
		push	offset aInvalidOptiona ; "  Invalid Optional Header"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_416BFF
; ---------------------------------------------------------------------------

loc_4145EA:				; CODE XREF: .text:004145CBj
		cmp	dword ptr [ebp-1AE8h], 1000h
		jnb	short loc_41461A
		push	1000h
		mov	edx, [ebp-1AE8h]
		push	edx		; arglist
		push	offset aSectionalignme ; "  SectionAlignment in	Optional Header	i"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h

loc_41461A:				; CODE XREF: .text:004145F4j
		mov	ecx, [ebp-1A38h]
		mov	[ebp-2Ch], ecx
		mov	eax, [ebp-1A34h]
		mov	[ebp-34h], eax
		cmp	dword ptr [ebp-2Ch], 0
		jbe	short loc_41466F
		cmp	dword ptr [ebp-34h], 48h
		jb	short loc_41466F
		or	dword ptr [esi+8], 4000000h
		cmp	dword ptr [ebp-1BD8h], 0
		jz	short loc_414657
		mov	edx, [ebp-1BD8h]
		add	edx, [ebp-30h]
		mov	[esi+4A0h], edx

loc_414657:				; CODE XREF: .text:00414646j
		mov	ecx, [ebp-2Ch]
		add	ecx, [ebp-30h]
		mov	[esi+4A4h], ecx
		mov	eax, [ebp-34h]
		add	eax, [ebp-30h]
		mov	[esi+4A8h], eax

loc_41466F:				; CODE XREF: .text:00414630j
					; .text:00414636j
		mov	edx, [ebp-1AECh]
		lea	eax, [ebp-1BE8h]
		mov	[ebp-1BCCh], edx
		lea	edx, [ebp-1B08h]
		mov	ecx, [ebp-1AF8h]
		mov	[ebp-1BD8h], ecx
		push	60h		; n
		push	eax		; s2
		push	edx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4146EE
		test	byte ptr [esi+0Ah], 10h
		jz	short loc_4146B6
		push	offset aPendingSystemU ; " (pending system update?)"
		call	_T
		pop	ecx
		jmp	short loc_4146BB
; ---------------------------------------------------------------------------

loc_4146B6:				; CODE XREF: .text:004146A7j
		mov	eax, (offset aEmptyRange+15h) ;	""

loc_4146BB:				; CODE XREF: .text:004146B4j
		push	eax		; arglist
		push	offset aDifferentPeHea ; "  Different PE headers in file and in	m"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		mov	edx, [ebp-0ACh]
		push	edx		; stream
		call	_fclose
		pop	ecx
		xor	ecx, ecx
		mov	[ebp-0ACh], ecx
		jmp	loc_4141EB
; ---------------------------------------------------------------------------

loc_4146EE:				; CODE XREF: .text:004146A1j
		xor	eax, eax
		xor	ebx, ebx
		mov	[ebp-4], eax
		lea	eax, [ebp-1B84h]
		mov	[ebp-0DCh], eax
		lea	edi, [ebp-1AA4h]

loc_414707:				; CODE XREF: .text:0041489Cj
		mov	eax, [edi]
		mov	edx, [ebp-0DCh]
		cmp	eax, [edx]
		jnz	short loc_414725
		mov	ecx, [edi-4]
		mov	eax, [ebp-0DCh]
		cmp	ecx, [eax-4]
		jz	loc_41488E	; jumptable 00414730 default case

loc_414725:				; CODE XREF: .text:00414711j
		mov	edx, ebx
		cmp	edx, 0Dh	; switch 14 cases
		ja	loc_41488E	; jumptable 00414730 default case
		jmp	ds:off_414737[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_414737	dd offset loc_41476F	; DATA XREF: .text:00414730r
		dd offset loc_414785	; jump table for switch	statement
		dd offset loc_41479B
		dd offset loc_4147B1
		dd offset loc_4147C4
		dd offset loc_4147D7
		dd offset loc_4147EA
		dd offset loc_41488E
		dd offset loc_41488E
		dd offset loc_4147FD
		dd offset loc_41488E
		dd offset loc_41488E
		dd offset loc_414810
		dd offset loc_414823
; ---------------------------------------------------------------------------

loc_41476F:				; CODE XREF: .text:00414730j
					; DATA XREF: .text:off_414737o
		push	offset aExportTable ; jumptable	00414730 case 0
		call	_T
		pop	ecx
		mov	[ebp-0A0h], eax
		jmp	loc_414834
; ---------------------------------------------------------------------------

loc_414785:				; CODE XREF: .text:00414730j
					; DATA XREF: .text:off_414737o
		push	offset aImportTable ; jumptable	00414730 case 1
		call	_T
		pop	ecx
		mov	[ebp-0A0h], eax
		jmp	loc_414834
; ---------------------------------------------------------------------------

loc_41479B:				; CODE XREF: .text:00414730j
					; DATA XREF: .text:off_414737o
		push	offset aResourceTable ;	jumptable 00414730 case	2
		call	_T
		pop	ecx
		mov	[ebp-0A0h], eax
		jmp	loc_414834
; ---------------------------------------------------------------------------

loc_4147B1:				; CODE XREF: .text:00414730j
					; DATA XREF: .text:off_414737o
		push	offset aExceptionTable ; jumptable 00414730 case 3
		call	_T
		pop	ecx
		mov	[ebp-0A0h], eax
		jmp	short loc_414834
; ---------------------------------------------------------------------------

loc_4147C4:				; CODE XREF: .text:00414730j
					; DATA XREF: .text:off_414737o
		push	offset aCertificateTab ; jumptable 00414730 case 4
		call	_T
		pop	ecx
		mov	[ebp-0A0h], eax
		jmp	short loc_414834
; ---------------------------------------------------------------------------

loc_4147D7:				; CODE XREF: .text:00414730j
					; DATA XREF: .text:off_414737o
		push	offset aBaseRelocation ; jumptable 00414730 case 5
		call	_T
		pop	ecx
		mov	[ebp-0A0h], eax
		jmp	short loc_414834
; ---------------------------------------------------------------------------

loc_4147EA:				; CODE XREF: .text:00414730j
					; DATA XREF: .text:off_414737o
		push	offset aDebuggingInfoT ; jumptable 00414730 case 6
		call	_T
		pop	ecx
		mov	[ebp-0A0h], eax
		jmp	short loc_414834
; ---------------------------------------------------------------------------

loc_4147FD:				; CODE XREF: .text:00414730j
					; DATA XREF: .text:off_414737o
		push	offset aTlsTable ; jumptable 00414730 case 9
		call	_T
		pop	ecx
		mov	[ebp-0A0h], eax
		jmp	short loc_414834
; ---------------------------------------------------------------------------

loc_414810:				; CODE XREF: .text:00414730j
					; DATA XREF: .text:off_414737o
		push	offset aImportAddressT ; jumptable 00414730 case 12
		call	_T
		pop	ecx
		mov	[ebp-0A0h], eax
		jmp	short loc_414834
; ---------------------------------------------------------------------------

loc_414823:				; CODE XREF: .text:00414730j
					; DATA XREF: .text:off_414737o
		push	offset aDelayImportTab ; jumptable 00414730 case 13
		call	_T
		pop	ecx
		mov	[ebp-0A0h], eax

loc_414834:				; CODE XREF: .text:00414780j
					; .text:00414796j ...
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_414852
		push	offset aDifferentPeDat ; "  Different PE Data Directory	in file	a"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_414852:				; CODE XREF: .text:00414838j
		mov	ecx, [ebp-0DCh]
		mov	eax, [ecx]
		push	eax
		mov	edx, [ebp-0DCh]
		mov	ecx, [edx-4]
		push	ecx
		mov	eax, [edi]
		push	eax
		mov	edx, [edi-4]
		push	edx
		mov	ecx, [ebp-0A0h]
		push	ecx		; arglist
		push	offset aSFile08x08xMem ; "  %s:	file (%08X,%08X), memory (%08X,%0"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 20h
		inc	dword ptr [ebp-4]

loc_41488E:				; CODE XREF: .text:0041471Fj
					; .text:0041472Aj ...
		add	dword ptr [ebp-0DCh], 8	; jumptable 00414730 default case
		inc	ebx
		add	edi, 8
		cmp	ebx, 10h
		jl	loc_414707
		cmp	word ptr [ebp-1A26h], 3E7h
		jbe	short loc_4148CF
		movzx	eax, word ptr [ebp-1A26h]
		push	eax		; arglist
		push	offset aFileContainsIn ; "  File contains invalid number of secti"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	short loc_41492C
; ---------------------------------------------------------------------------

loc_4148CF:				; CODE XREF: .text:004148ABj
		cmp	word ptr [ebp-1A26h], 0
		jz	short loc_41492C
		movzx	edx, word ptr [ebp-1A26h] ; int
		mov	[esi+8E4h], edx
		push	3		; flags
		mov	ecx, [esi+8E4h]
		shl	ecx, 4
		lea	ecx, [ecx+ecx*2] ; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[esi+8E8h], eax
		cmp	dword ptr [esi+8E8h], 0
		jnz	short loc_41492C
		xor	eax, eax
		mov	[esi+8E4h], eax
		push	offset aUnableToReadSe ; "  Unable to read section headers"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_41492C:				; CODE XREF: .text:004148CDj
					; .text:004148D7j ...
		cmp	dword ptr [esi+8E8h], 0
		jz	loc_414C7C
		mov	edx, [ebp-30h]
		xor	ebx, ebx
		mov	[ebp-3Ch], edx
		jmp	loc_414B2E
; ---------------------------------------------------------------------------

loc_414946:				; CODE XREF: .text:00414B34j
		cmp	dword ptr [ebp-0ACh], 0
		jz	short loc_41496E
		mov	eax, [ebp-0ACh]
		push	eax		; stream
		push	28h		; n
		push	1		; size
		lea	edx, [ebp-1C10h]
		push	edx		; ptr
		call	_fread
		add	esp, 10h
		cmp	eax, 28h
		jnz	short loc_414993

loc_41496E:				; CODE XREF: .text:0041494Dj
		cmp	dword ptr [ebp-0ACh], 0
		jnz	short loc_4149B5
		push	1		; mode
		push	28h		; size
		mov	ecx, [ebp-48h]
		push	ecx		; _addr
		lea	eax, [ebp-1C10h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 28h
		jz	short loc_4149B5

loc_414993:				; CODE XREF: .text:0041496Cj
		mov	edx, [esi+8E8h]
		push	edx		; data
		call	Memfree
		pop	ecx
		xor	ecx, ecx
		mov	[esi+8E8h], ecx
		xor	eax, eax
		mov	[esi+8E4h], eax
		jmp	loc_416BC4
; ---------------------------------------------------------------------------

loc_4149B5:				; CODE XREF: .text:00414975j
					; .text:00414991j
		add	dword ptr [ebp-48h], 28h
		mov	edx, ebx
		push	0Ch		; nw
		shl	edx, 4
		lea	ecx, [ebp-1C10h]
		lea	edx, [edx+edx*2]
		add	edx, [esi+8E8h]
		push	edx		; w
		push	8		; ns
		push	ecx		; s
		call	Asciitounicode
		add	esp, 10h
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		mov	word ptr [edx+eax*8+12h], 0
		xor	eax, eax
		jmp	short loc_414A20
; ---------------------------------------------------------------------------

loc_4149F3:				; CODE XREF: .text:00414A37j
		mov	ecx, ebx
		mov	edi, [esi+8E8h]
		add	ecx, ecx
		cmp	dx, 20h
		lea	ecx, [ecx+ecx*2]
		lea	ecx, [edi+ecx*8]
		jnz	short loc_414A1F
		mov	edx, ebx
		add	edx, edx
		lea	edx, [edx+edx*2]
		mov	ecx, [esi+8E8h]
		lea	edx, [ecx+edx*8]
		mov	word ptr [edx+eax*2], 5Fh

loc_414A1F:				; CODE XREF: .text:00414A07j
		inc	eax

loc_414A20:				; CODE XREF: .text:004149F1j
		mov	edx, ebx
		add	edx, edx
		lea	edx, [edx+edx*2]
		mov	ecx, [esi+8E8h]
		lea	edx, [ecx+edx*8]
		mov	dx, [edx+eax*2]
		test	dx, dx
		jnz	short loc_4149F3
		test	eax, eax
		jnz	short loc_414A5A
		mov	eax, ebx
		push	ebx
		shl	eax, 4
		push	offset aSect_X	; format
		lea	eax, [eax+eax*2]
		add	eax, [esi+8E8h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_414A5A:				; CODE XREF: .text:00414A3Bj
		mov	ecx, ebx
		mov	edi, [ebp-1C04h]
		add	ecx, ecx
		mov	eax, [esi+8E8h]
		add	edi, [ebp-30h]
		lea	ecx, [ecx+ecx*2]
		mov	[eax+ecx*8+18h], edi
		mov	eax, [ebp-1C08h]
		cmp	eax, [ebp-1C00h]
		jbe	short loc_414A8A
		lea	edx, [ebp-1C08h]
		jmp	short loc_414A90
; ---------------------------------------------------------------------------

loc_414A8A:				; CODE XREF: .text:00414A80j
		lea	edx, [ebp-1C00h]

loc_414A90:				; CODE XREF: .text:00414A88j
		mov	eax, [edx]
		mov	[ebp-34h], eax
		mov	eax, ebx
		mov	ecx, [ebp-34h]
		add	eax, eax
		add	ecx, edi
		add	ecx, 1000h
		lea	eax, [eax+eax*2]
		dec	ecx
		and	ecx, 0FFFFF000h
		mov	[ebp-38h], ecx
		mov	edx, [esi+8E8h]
		mov	ecx, [ebp-38h]
		sub	ecx, edi
		mov	[edx+eax*8+1Ch], ecx
		mov	eax, ebx
		add	eax, eax
		mov	edx, [esi+8E8h]
		xor	ecx, ecx
		lea	eax, [eax+eax*2]
		mov	[edx+eax*8+20h], ecx
		mov	eax, ebx
		add	eax, eax
		mov	edx, [esi+8E8h]
		mov	ecx, [ebp-1BFCh]
		lea	eax, [eax+eax*2]
		mov	[edx+eax*8+24h], ecx
		mov	eax, ebx
		add	eax, eax
		mov	edx, [esi+8E8h]
		mov	ecx, [ebp-1C00h]
		lea	eax, [eax+eax*2]
		mov	[edx+eax*8+28h], ecx
		mov	eax, ebx
		add	eax, eax
		mov	edx, [esi+8E8h]
		mov	ecx, [ebp-1BECh]
		lea	eax, [eax+eax*2]
		mov	[edx+eax*8+2Ch], ecx
		mov	eax, [ebp-3Ch]
		cmp	eax, [ebp-38h]
		jbe	short loc_414B25
		lea	edx, [ebp-3Ch]
		jmp	short loc_414B28
; ---------------------------------------------------------------------------

loc_414B25:				; CODE XREF: .text:00414B1Ej
		lea	edx, [ebp-38h]

loc_414B28:				; CODE XREF: .text:00414B23j
		mov	eax, [edx]
		inc	ebx
		mov	[ebp-3Ch], eax

loc_414B2E:				; CODE XREF: .text:00414941j
		cmp	ebx, [esi+8E4h]
		jl	loc_414946
		cmp	dword ptr [esi+4], 1
		jnz	short loc_414B49
		mov	ecx, [ebp-3Ch]
		sub	ecx, [ebp-30h]
		mov	[esi+4], ecx

loc_414B49:				; CODE XREF: .text:00414B3Ej
		xor	ebx, ebx
		jmp	loc_414BF5
; ---------------------------------------------------------------------------

loc_414B50:				; CODE XREF: .text:00414BFEj
		lea	eax, [ebx+1]
		jmp	loc_414BE8
; ---------------------------------------------------------------------------

loc_414B58:				; CODE XREF: .text:00414BEEj
		mov	edx, ebx
		add	edx, edx
		lea	edx, [edx+edx*2]
		mov	ecx, [esi+8E8h]
		mov	edx, [ecx+edx*8+18h]
		mov	ecx, eax
		add	ecx, ecx
		lea	ecx, [ecx+ecx*2]
		mov	edi, [esi+8E8h]
		cmp	edx, [edi+ecx*8+18h]
		jbe	short loc_414BE7
		mov	edx, ebx
		mov	ecx, [esi+8E8h]
		add	edx, edx
		push	esi
		lea	edi, [ebp-17A4h]
		lea	edx, [edx+edx*2]
		lea	esi, [ecx+edx*8]
		mov	ecx, 0Ch
		rep movsd
		mov	edx, eax
		pop	esi
		add	edx, edx
		mov	ecx, [esi+8E8h]
		lea	edx, [edx+edx*2]
		lea	edx, [ecx+edx*8]
		mov	ecx, ebx
		add	ecx, ecx
		push	edx
		mov	edx, [esi+8E8h]
		pop	edi
		lea	ecx, [ecx+ecx*2]
		push	esi
		mov	esi, edi
		lea	edi, [edx+ecx*8]
		mov	ecx, 0Ch
		mov	edx, eax
		rep movsd
		pop	esi
		add	edx, edx
		mov	ecx, [esi+8E8h]
		lea	edx, [edx+edx*2]
		push	esi
		lea	esi, [ebp-17A4h]
		lea	edi, [ecx+edx*8]
		mov	ecx, 0Ch
		rep movsd
		pop	esi

loc_414BE7:				; CODE XREF: .text:00414B7Aj
		inc	eax

loc_414BE8:				; CODE XREF: .text:00414B53j
		cmp	eax, [esi+8E4h]
		jl	loc_414B58
		inc	ebx

loc_414BF5:				; CODE XREF: .text:00414B4Bj
		mov	eax, [esi+8E4h]
		dec	eax
		cmp	ebx, eax
		jl	loc_414B50
		xor	ebx, ebx
		jmp	short loc_414C71
; ---------------------------------------------------------------------------

loc_414C08:				; CODE XREF: .text:00414C7Aj
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		mov	ecx, [edx+eax*8+18h]
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		add	ecx, [edx+eax*8+1Ch]
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		cmp	ecx, [edx+eax*8+48h]
		jbe	short loc_414C70
		mov	ecx, ebx
		add	ecx, ecx
		lea	ecx, [ecx+ecx*2]
		mov	eax, [esi+8E8h]
		mov	edx, [eax+ecx*8+48h]
		mov	ecx, ebx
		add	ecx, ecx
		lea	ecx, [ecx+ecx*2]
		mov	eax, [esi+8E8h]
		sub	edx, [eax+ecx*8+18h]
		mov	ecx, ebx
		add	ecx, ecx
		lea	ecx, [ecx+ecx*2]
		mov	eax, [esi+8E8h]
		mov	[eax+ecx*8+1Ch], edx

loc_414C70:				; CODE XREF: .text:00414C3Bj
		inc	ebx

loc_414C71:				; CODE XREF: .text:00414C06j
		mov	edx, [esi+8E4h]
		dec	edx
		cmp	ebx, edx
		jl	short loc_414C08

loc_414C7C:				; CODE XREF: .text:00414933j
		cmp	dword ptr [ebp-1AF8h], 0
		jnz	short loc_414C8C
		xor	ecx, ecx
		mov	[ebp-58h], ecx
		jmp	short loc_414C98
; ---------------------------------------------------------------------------

loc_414C8C:				; CODE XREF: .text:00414C83j
		mov	eax, [ebp-1AF8h]
		add	eax, [ebp-30h]
		mov	[ebp-58h], eax

loc_414C98:				; CODE XREF: .text:00414C8Aj
		cmp	dword ptr [ebp-58h], 0
		jnz	short loc_414CA9
		mov	edx, [esi+460h]
		mov	[ebp-58h], edx
		jmp	short loc_414CEB
; ---------------------------------------------------------------------------

loc_414CA9:				; CODE XREF: .text:00414C9Cj
		cmp	dword ptr [esi+460h], 0
		jnz	short loc_414CBD
		mov	ecx, [ebp-58h]
		mov	[esi+460h], ecx
		jmp	short loc_414CEB
; ---------------------------------------------------------------------------

loc_414CBD:				; CODE XREF: .text:00414CB0j
		mov	eax, [esi+460h]
		cmp	eax, [ebp-58h]
		jz	short loc_414CEB
		mov	edx, [esi+460h]
		push	edx
		mov	ecx, [ebp-58h]
		push	ecx		; arglist
		push	offset aEntryPointInPe ; src
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h

loc_414CEB:				; CODE XREF: .text:00414CA7j
					; .text:00414CBBj ...
		cmp	dword ptr [ebp-58h], 0
		jz	short loc_414D04
		push	offset aModuleentryp_0 ; "<ModuleEntryPoint>"
		push	22h		; type
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_414D04:				; CODE XREF: .text:00414CEFj
		cmp	dword ptr [ebp-1AF8h], 0
		jz	loc_414E0B
		cmp	dword ptr [ebp-1B04h], 0
		jz	loc_414E0B
		mov	edx, [ebp-1AF4h]
		cmp	edx, [ebp-1AF8h]
		ja	short loc_414D44
		mov	ecx, [ebp-1AF4h]
		add	ecx, [ebp-1B04h]
		cmp	ecx, [ebp-1AF8h]
		ja	loc_414E0B

loc_414D44:				; CODE XREF: .text:00414D2Aj
		test	byte ptr [esi+0Ah], 1
		jnz	loc_414E0B
		cmp	dword ptr [ebp-1A80h], 0
		jz	loc_414E0B
		cmp	dword ptr [ebp-1A7Ch], 0
		jz	loc_414E0B
		xor	ebx, ebx
		jmp	short loc_414DBA
; ---------------------------------------------------------------------------

loc_414D6C:				; CODE XREF: .text:00414DC0j
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		mov	ecx, [edx+eax*8+18h]
		mov	eax, [ebp-1AF8h]
		add	eax, [ebp-30h]
		cmp	ecx, eax
		ja	short loc_414DB9
		mov	edx, ebx
		add	edx, edx
		lea	edx, [edx+edx*2]
		mov	ecx, [esi+8E8h]
		mov	eax, [ecx+edx*8+18h]
		mov	edx, ebx
		add	edx, edx
		lea	edx, [edx+edx*2]
		mov	ecx, [esi+8E8h]
		add	eax, [ecx+edx*8+1Ch]
		mov	edx, [ebp-1AF8h]
		add	edx, [ebp-30h]
		cmp	eax, edx
		ja	short loc_414DC2

loc_414DB9:				; CODE XREF: .text:00414D88j
		inc	ebx

loc_414DBA:				; CODE XREF: .text:00414D6Aj
		cmp	ebx, [esi+8E4h]
		jl	short loc_414D6C

loc_414DC2:				; CODE XREF: .text:00414DB7j
		cmp	ebx, [esi+8E4h]
		jge	short loc_414E0B
		mov	eax, ebx
		mov	ecx, [esi+8E8h]
		add	eax, eax
		mov	edx, ebx
		shl	edx, 4
		lea	eax, [eax+eax*2]
		mov	eax, [ecx+eax*8+18h]
		lea	edx, [edx+edx*2]
		sub	eax, [ebp-30h]
		mov	[ebp-1AF4h], eax
		add	edx, [esi+8E8h]
		push	edx		; arglist
		push	offset aBaseofcodePoin ; "  BaseOfCode points to end of	code, cor"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_414E0B:				; CODE XREF: .text:00414D0Bj
					; .text:00414D18j ...
		mov	ecx, [ebp-1B04h]
		add	ecx, 0FFFh
		and	ecx, 0FFFFF000h
		mov	[esi+45Ch], ecx
		cmp	dword ptr [esi+45Ch], 0
		jnz	short loc_414E36
		xor	eax, eax
		mov	[esi+458h], eax
		jmp	short loc_414E45
; ---------------------------------------------------------------------------

loc_414E36:				; CODE XREF: .text:00414E2Aj
		mov	edx, [ebp-1AF4h]
		add	edx, [ebp-30h]
		mov	[esi+458h], edx

loc_414E45:				; CODE XREF: .text:00414E34j
		cmp	dword ptr [ebp-1AECh], 0
		jnz	short loc_414E58
		mov	ecx, [esi]
		mov	[esi+454h], ecx
		jmp	short loc_414E64
; ---------------------------------------------------------------------------

loc_414E58:				; CODE XREF: .text:00414E4Cj
		mov	eax, [ebp-1AECh]
		mov	[esi+454h], eax

loc_414E64:				; CODE XREF: .text:00414E56j
		mov	edx, [ebp-1ACCh]
		mov	[esi+8DCh], edx
		mov	ecx, [ebp-1ACCh]
		add	ecx, 1000h
		dec	ecx
		and	ecx, 0FFFFF000h
		mov	[esi+8E0h], ecx
		cmp	dword ptr [esi+458h], 0
		jz	loc_414F4C
		cmp	dword ptr [esi+460h], 0
		jnz	short loc_414EA9
		test	byte ptr [esi+0Ah], 1
		jz	loc_414F4C

loc_414EA9:				; CODE XREF: .text:00414E9Dj
		xor	ebx, ebx
		jmp	short loc_414EC7
; ---------------------------------------------------------------------------

loc_414EAD:				; CODE XREF: .text:00414ECDj
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		mov	ecx, [edx+eax*8+18h]
		cmp	ecx, [esi+458h]
		jz	short loc_414ECF
		inc	ebx

loc_414EC7:				; CODE XREF: .text:00414EABj
		cmp	ebx, [esi+8E4h]
		jl	short loc_414EAD

loc_414ECF:				; CODE XREF: .text:00414EC4j
		cmp	ebx, [esi+8E4h]
		jge	short loc_414F4C
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		mov	ecx, [edx+eax*8+1Ch]
		cmp	ecx, [esi+45Ch]
		jbe	short loc_414F4C
		mov	eax, ebx
		mov	edx, [esi+8E8h]
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	ecx, [edx+eax*8+1Ch]
		mov	eax, ebx
		shl	eax, 4
		push	ecx
		lea	eax, [eax+eax*2]
		add	eax, [esi+8E8h]
		push	eax
		mov	edx, [esi+45Ch]
		push	edx		; arglist
		push	offset aCodeSizeInHead ; "  Code size in header	is %08X, extended"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		mov	ecx, [esi+458h]
		push	ecx		; _addr
		call	Addtolist
		add	esp, 18h
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		mov	ecx, [edx+eax*8+1Ch]
		mov	[esi+45Ch], ecx

loc_414F4C:				; CODE XREF: .text:00414E90j
					; .text:00414EA3j ...
		cmp	dword ptr [esi+458h], 0
		jz	loc_4150D6
		cmp	dword ptr [esi+45Ch], 0
		jz	loc_4150D6
		xor	ebx, ebx
		jmp	loc_4150CA
; ---------------------------------------------------------------------------

loc_414F6D:				; CODE XREF: .text:004150D0j
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		mov	ecx, [edx+eax*8+18h]
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		add	ecx, [edx+eax*8+1Ch]
		cmp	ecx, [esi+458h]
		jbe	loc_4150C9
		mov	ecx, ebx
		add	ecx, ecx
		lea	ecx, [ecx+ecx*2]
		mov	eax, [esi+8E8h]
		mov	edx, [eax+ecx*8+18h]
		mov	ecx, [esi+458h]
		add	ecx, [esi+45Ch]
		cmp	edx, ecx
		jnb	loc_4150C9
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		mov	ecx, [edx+eax*8+18h]
		cmp	ecx, [esi+458h]
		jnb	short loc_41503B
		mov	eax, ebx
		shl	eax, 4
		lea	eax, [eax+eax*2]
		add	eax, [esi+8E8h]
		push	eax
		mov	edx, [esi+458h]
		push	edx		; arglist
		push	offset aCodeStartInHea ; "  Code start in header is %08X, extende"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		mov	ecx, ebx
		mov	eax, [esi+8E8h]
		add	ecx, ecx
		mov	edx, [esi+458h]
		add	esp, 14h
		lea	ecx, [ecx+ecx*2]
		sub	edx, [eax+ecx*8+18h]
		mov	ecx, ebx
		add	[esi+45Ch], edx
		add	ecx, ecx
		mov	eax, [esi+8E8h]
		lea	ecx, [ecx+ecx*2]
		mov	edx, [eax+ecx*8+18h]
		mov	[esi+458h], edx

loc_41503B:				; CODE XREF: .text:00414FD7j
		mov	ecx, ebx
		add	ecx, ecx
		lea	ecx, [ecx+ecx*2]
		mov	eax, [esi+8E8h]
		mov	edx, [eax+ecx*8+18h]
		mov	ecx, ebx
		add	ecx, ecx
		lea	ecx, [ecx+ecx*2]
		mov	eax, [esi+8E8h]
		add	edx, [eax+ecx*8+1Ch]
		mov	ecx, [esi+458h]
		add	ecx, [esi+45Ch]
		cmp	edx, ecx
		jbe	short loc_4150C9
		mov	edx, ebx
		shl	edx, 4
		lea	edx, [edx+edx*2]
		add	edx, [esi+8E8h]
		push	edx
		mov	eax, [ebp-1B04h]
		push	eax		; arglist
		push	offset aCodeSizeInHe_1 ; "  Code size in header	is %08X, extended"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h
		mov	edx, ebx
		add	edx, edx
		lea	edx, [edx+edx*2]
		mov	ecx, [esi+8E8h]
		mov	eax, [ecx+edx*8+18h]
		mov	edx, ebx
		add	edx, edx
		lea	edx, [edx+edx*2]
		mov	ecx, [esi+8E8h]
		add	eax, [ecx+edx*8+1Ch]
		sub	eax, [esi+458h]
		mov	[esi+45Ch], eax

loc_4150C9:				; CODE XREF: .text:00414F95j
					; .text:00414FBAj ...
		inc	ebx

loc_4150CA:				; CODE XREF: .text:00414F68j
		cmp	ebx, [esi+8E4h]
		jl	loc_414F6D

loc_4150D6:				; CODE XREF: .text:00414F53j
					; .text:00414F60j
		mov	eax, [esi+458h]
		cmp	eax, [ebp-30h]
		jnz	loc_4151D5
		cmp	dword ptr [esi+45Ch], 0
		jnz	loc_4151D5
		cmp	dword ptr [esi+460h], 0
		jz	loc_4151D5
		xor	ebx, ebx
		jmp	loc_4151C9
; ---------------------------------------------------------------------------

loc_415106:				; CODE XREF: .text:004151CFj
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		mov	ecx, [edx+eax*8+18h]
		cmp	ecx, [esi+460h]
		ja	loc_4151C8
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		mov	ecx, [edx+eax*8+18h]
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		add	ecx, [edx+eax*8+1Ch]
		cmp	ecx, [esi+460h]
		jbe	short loc_4151C8
		mov	ecx, ebx
		add	ecx, ecx
		lea	ecx, [ecx+ecx*2]
		mov	eax, [esi+8E8h]
		test	byte ptr [eax+ecx*8+2Ch], 20h
		jz	short loc_4151C8
		mov	edx, ebx
		shl	edx, 4
		lea	edx, [edx+edx*2]
		add	edx, [esi+8E8h]
		push	edx		; arglist
		push	offset aCodeSizeInHe_0 ; "  Code size in header	is 0, assumed cod"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		mov	ecx, ebx
		add	ecx, ecx
		lea	ecx, [ecx+ecx*2]
		mov	eax, [esi+8E8h]
		mov	edx, [eax+ecx*8+18h]
		push	edx		; _addr
		call	Addtolist
		mov	ecx, ebx
		mov	eax, [esi+8E8h]
		add	ecx, ecx
		add	esp, 10h
		lea	ecx, [ecx+ecx*2]
		mov	edx, [eax+ecx*8+18h]
		mov	ecx, ebx
		add	ecx, ecx
		mov	[esi+458h], edx
		mov	eax, [esi+8E8h]
		lea	ecx, [ecx+ecx*2]
		mov	edx, [eax+ecx*8+1Ch]
		mov	[esi+45Ch], edx
		jmp	short loc_4151D5
; ---------------------------------------------------------------------------

loc_4151C8:				; CODE XREF: .text:0041511Dj
					; .text:0041514Bj ...
		inc	ebx

loc_4151C9:				; CODE XREF: .text:00415101j
		cmp	ebx, [esi+8E4h]
		jl	loc_415106

loc_4151D5:				; CODE XREF: .text:004150DFj
					; .text:004150ECj ...
		mov	dword ptr [ebp-8Ch], 0FFFFFFFFh
		xor	ecx, ecx
		xor	ebx, ebx
		mov	[ebp-90h], ecx
		jmp	loc_415290
; ---------------------------------------------------------------------------

loc_4151EE:				; CODE XREF: .text:00415296j
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		test	byte ptr [edx+eax*8+2Ch], 20h
		jz	loc_41528F
		mov	ecx, ebx
		shl	ecx, 4
		lea	ecx, [ecx+ecx*2]
		add	ecx, [esi+8E8h]
		add	ecx, 18h
		mov	[ebp-0BCh], ecx
		mov	eax, [ebp-0BCh]
		mov	edx, [eax]
		cmp	edx, [ebp-8Ch]
		jbe	short loc_415235
		lea	ecx, [ebp-8Ch]
		jmp	short loc_41523B
; ---------------------------------------------------------------------------

loc_415235:				; CODE XREF: .text:0041522Bj
		mov	ecx, [ebp-0BCh]

loc_41523B:				; CODE XREF: .text:00415233j
		mov	edx, ebx
		mov	eax, [ecx]
		add	edx, edx
		mov	[ebp-8Ch], eax
		mov	eax, [esi+8E8h]
		mov	ecx, ebx
		lea	edx, [edx+edx*2]
		add	ecx, ecx
		mov	edx, [eax+edx*8+18h]
		mov	eax, [esi+8E8h]
		lea	ecx, [ecx+ecx*2]
		add	edx, [eax+ecx*8+1Ch]
		mov	[ebp-0C0h], edx
		mov	edx, [ebp-90h]
		cmp	edx, [ebp-0C0h]
		jbe	short loc_415281
		lea	ecx, [ebp-90h]
		jmp	short loc_415287
; ---------------------------------------------------------------------------

loc_415281:				; CODE XREF: .text:00415277j
		lea	ecx, [ebp-0C0h]

loc_415287:				; CODE XREF: .text:0041527Fj
		mov	eax, [ecx]
		mov	[ebp-90h], eax

loc_41528F:				; CODE XREF: .text:00415200j
		inc	ebx

loc_415290:				; CODE XREF: .text:004151E9j
		cmp	ebx, [esi+8E4h]
		jl	loc_4151EE
		mov	edx, [esi+458h]
		cmp	edx, [ebp-30h]
		jz	loc_41535E
		cmp	dword ptr [esi+45Ch], 0
		jz	loc_41535E
		mov	eax, [esi+458h]
		cmp	eax, [ebp-8Ch]
		jnz	short loc_4152DE
		mov	edx, [esi+458h]
		add	edx, [esi+45Ch]
		cmp	edx, [ebp-90h]
		jz	loc_41535E

loc_4152DE:				; CODE XREF: .text:004152C4j
		push	offset aCodeSizeIsExte ; "  Code size is extended to include all "...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		lea	ecx, [esi+458h]
		mov	[ebp-0C4h], ecx
		mov	eax, [ebp-0C4h]
		mov	edx, [eax]
		cmp	edx, [ebp-8Ch]
		jbe	short loc_41531A
		lea	ecx, [ebp-8Ch]
		jmp	short loc_415320
; ---------------------------------------------------------------------------

loc_41531A:				; CODE XREF: .text:00415310j
		mov	ecx, [ebp-0C4h]

loc_415320:				; CODE XREF: .text:00415318j
		mov	eax, [ecx]
		mov	[ebp-8Ch], eax
		mov	edx, [esi+458h]
		add	edx, [esi+45Ch]
		mov	[ebp-0C8h], edx
		mov	eax, [ebp-90h]
		cmp	eax, [ebp-0C8h]
		jbe	short loc_415350
		lea	edx, [ebp-90h]
		jmp	short loc_415356
; ---------------------------------------------------------------------------

loc_415350:				; CODE XREF: .text:00415346j
		lea	edx, [ebp-0C8h]

loc_415356:				; CODE XREF: .text:0041534Ej
		mov	eax, [edx]
		mov	[ebp-90h], eax

loc_41535E:				; CODE XREF: .text:004152A5j
					; .text:004152B2j ...
		mov	ecx, [ebp-8Ch]
		mov	[esi+458h], ecx
		mov	eax, [ebp-90h]
		sub	eax, [ebp-8Ch]
		mov	[esi+45Ch], eax
		mov	edx, [esi+458h]
		mov	ecx, [ebp-30h]
		add	ecx, [esi+4]
		add	edx, [esi+45Ch]
		cmp	edx, ecx
		jb	short loc_4153BC
		push	offset aSizeOfCodeInHe ; "  Size of code in header is too large"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		mov	eax, [ebp-30h]
		add	eax, [esi+4]
		sub	eax, [esi+458h]
		mov	[esi+45Ch], eax

loc_4153BC:				; CODE XREF: .text:00415390j
		cmp	dword ptr [esi+458h], 0
		jz	loc_415506
		cmp	dword ptr [esi+45Ch], 0
		jz	loc_415506
		mov	eax, 1
		xor	ebx, ebx
		jmp	short loc_415459
; ---------------------------------------------------------------------------

loc_4153DF:				; CODE XREF: .text:0041545Fj
		mov	edx, ebx
		add	edx, edx
		lea	edx, [edx+edx*2]
		mov	ecx, [esi+8E8h]
		mov	edx, [ecx+edx*8+18h]
		cmp	edx, [esi+458h]
		jz	short loc_415465
		mov	ecx, ebx
		add	ecx, ecx
		lea	ecx, [ecx+ecx*2]
		mov	edx, [esi+8E8h]
		mov	ecx, [edx+ecx*8+2Ch]
		and	ecx, 200000C0h
		cmp	ecx, 20000080h
		jz	short loc_41541B
		xor	eax, eax
		jmp	short loc_415465
; ---------------------------------------------------------------------------

loc_41541B:				; CODE XREF: .text:00415415j
		test	ebx, ebx
		jle	short loc_415458
		mov	edx, ebx
		add	edx, edx
		lea	edx, [edx+edx*2]
		mov	ecx, [esi+8E8h]
		mov	edx, [ecx+edx*8-18h]
		mov	ecx, ebx
		add	ecx, ecx
		lea	ecx, [ecx+ecx*2]
		mov	edi, [esi+8E8h]
		add	edx, [edi+ecx*8-14h]
		mov	ecx, ebx
		add	ecx, ecx
		lea	ecx, [ecx+ecx*2]
		mov	edi, [esi+8E8h]
		cmp	edx, [edi+ecx*8+18h]
		jz	short loc_415458
		xor	eax, eax
		jmp	short loc_415465
; ---------------------------------------------------------------------------

loc_415458:				; CODE XREF: .text:0041541Dj
					; .text:00415452j
		inc	ebx

loc_415459:				; CODE XREF: .text:004153DDj
		cmp	ebx, [esi+8E4h]
		jl	loc_4153DF

loc_415465:				; CODE XREF: .text:004153F6j
					; .text:00415419j ...
		test	eax, eax
		jz	loc_415506
		test	ebx, ebx
		jle	loc_415506
		cmp	ebx, [esi+8E4h]
		jge	loc_415506
		cmp	ebx, 1
		jnz	short loc_4154A7
		mov	edx, [esi+8E8h]
		push	edx		; arglist
		push	offset aProbablySfxFil ; "  Probably SFX file, code area extended"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	short loc_4154BF
; ---------------------------------------------------------------------------

loc_4154A7:				; CODE XREF: .text:00415484j
		push	offset aProbablySfxF_0 ; "  Probably SFX file, code area extended"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_4154BF:				; CODE XREF: .text:004154A5j
		mov	ecx, ebx
		mov	eax, [esi+8E8h]
		add	ecx, ecx
		lea	ecx, [ecx+ecx*2]
		mov	edx, [eax+ecx*8+18h]
		mov	ecx, [esi+8E8h]
		mov	eax, ebx
		add	eax, eax
		sub	edx, [ecx+18h]
		add	[esi+45Ch], edx
		mov	edx, [esi+8E8h]
		lea	eax, [eax+eax*2]
		mov	ecx, [edx+eax*8+18h]
		mov	eax, [esi+8E8h]
		sub	ecx, [eax+18h]
		sub	[esi+458h], ecx
		or	dword ptr [esi+8], 20000h

loc_415506:				; CODE XREF: .text:004153C3j
					; .text:004153D0j ...
		mov	edx, [ebp-1AF0h]
		xor	edi, edi
		add	edx, [ebp-30h]
		xor	ebx, ebx
		mov	[esi+46Ch], edx
		jmp	loc_4155D7
; ---------------------------------------------------------------------------

loc_41551E:				; CODE XREF: .text:004155DDj
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		mov	ecx, [edx+eax*8+18h]
		cmp	ecx, [esi+46Ch]
		jb	loc_4155D6
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		mov	ecx, [edx+eax*8+2Ch]
		and	ecx, 0E0000020h
		cmp	ecx, 0C0000000h
		jnz	short loc_4155D6
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		test	byte ptr [edx+eax*8+2Ch], 0C0h
		jz	short loc_4155D6
		push	offset a_data	; ".DATA"
		mov	ecx, ebx
		shl	ecx, 4
		lea	ecx, [ecx+ecx*2]
		add	ecx, [esi+8E8h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4155AE
		push	(offset	a_data+2) ; s2
		mov	eax, ebx
		shl	eax, 4
		lea	eax, [eax+eax*2]
		add	eax, [esi+8E8h]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4155C1

loc_4155AE:				; CODE XREF: .text:0041558Cj
		mov	edx, ebx
		add	edx, edx
		lea	edx, [edx+edx*2]
		mov	ecx, [esi+8E8h]
		mov	edi, [ecx+edx*8+18h]
		jmp	short loc_4155E3
; ---------------------------------------------------------------------------

loc_4155C1:				; CODE XREF: .text:004155ACj
		test	edi, edi
		jnz	short loc_4155D6
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		mov	edi, [edx+eax*8+18h]

loc_4155D6:				; CODE XREF: .text:00415535j
					; .text:00415558j ...
		inc	ebx

loc_4155D7:				; CODE XREF: .text:00415519j
		cmp	ebx, [esi+8E4h]
		jl	loc_41551E

loc_4155E3:				; CODE XREF: .text:004155BFj
		test	edi, edi
		jz	short loc_4155ED
		mov	[esi+46Ch], edi

loc_4155ED:				; CODE XREF: .text:004155E5j
		mov	eax, [ebp-1AA4h]
		mov	[ebp-34h], eax
		cmp	dword ptr [ebp-34h], 0
		jz	loc_415F72
		mov	edx, [ebp-1AA8h]
		mov	[ebp-50h], edx
		mov	ecx, [ebp-30h]
		add	ecx, [ebp-50h]
		mov	[esi+470h], ecx
		mov	eax, [ebp-34h]
		mov	[esi+474h], eax
		cmp	dword ptr [ebp-0ACh], 0
		jnz	short loc_41562E
		xor	edx, edx
		mov	[ebp-44h], edx
		jmp	short loc_415640
; ---------------------------------------------------------------------------

loc_41562E:				; CODE XREF: .text:00415625j
		mov	ecx, [esi]
		add	ecx, [ebp-50h]
		push	ecx		; _addr
		push	esi		; pmod
		call	Findfileoffset
		add	esp, 8
		mov	[ebp-44h], eax

loc_415640:				; CODE XREF: .text:0041562Cj
		cmp	dword ptr [ebp-44h], 0
		jnz	short loc_415650
		xor	eax, eax
		mov	[ebp-0A8h], eax
		jmp	short loc_4156BF
; ---------------------------------------------------------------------------

loc_415650:				; CODE XREF: .text:00415644j
		push	3		; flags
		mov	edx, [ebp-34h]
		add	edx, 4		; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-0A8h], eax
		cmp	dword ptr [ebp-0A8h], 0
		jz	short loc_4156BF
		push	0		; whence
		mov	ecx, [ebp-44h]
		push	ecx		; offset
		mov	eax, [ebp-0ACh]
		push	eax		; stream
		call	_fseek
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4156AA
		mov	edx, [ebp-0ACh]
		push	edx		; stream
		mov	ecx, [ebp-34h]
		push	ecx		; n
		push	1		; size
		mov	eax, [ebp-0A8h]
		push	eax		; ptr
		call	_fread
		add	esp, 10h
		cmp	eax, [ebp-34h]
		jz	short loc_4156BF

loc_4156AA:				; CODE XREF: .text:00415687j
		mov	edx, [ebp-0A8h]
		push	edx		; data
		call	Memfree
		pop	ecx
		xor	ecx, ecx	; int
		mov	[ebp-0A8h], ecx

loc_4156BF:				; CODE XREF: .text:0041564Ej
					; .text:0041566Ej ...
		mov	eax, [ebp-0A8h]	; int
		mov	[ebp-0B0h], eax
		push	1		; flags
		mov	edx, [ebp-34h]
		add	edx, 4		; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-0A4h], eax
		mov	ecx, [ebp-0A4h]
		mov	[ebp-0B4h], ecx
		cmp	dword ptr [ebp-0A4h], 0
		jnz	short loc_415714
		push	offset aUnableToReadEx ; "  Unable to read export data"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_415F46
; ---------------------------------------------------------------------------

loc_415714:				; CODE XREF: .text:004156F5j
		push	1		; mode
		mov	eax, [ebp-34h]
		push	eax		; size
		mov	edx, [ebp-30h]
		add	edx, [ebp-50h]
		push	edx		; _addr
		mov	ecx, [ebp-0A4h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [ebp-34h]
		jz	short loc_415752
		push	offset aUnableToReadEx ; "  Unable to read export data"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_415F46
; ---------------------------------------------------------------------------

loc_415752:				; CODE XREF: .text:00415733j
		cmp	dword ptr [ebp-0B0h], 0
		jz	short loc_4157A2
		mov	eax, [ebp-0B0h]
		cmp	dword ptr [eax+14h], 0
		jl	short loc_415785
		mov	edx, [ebp-0B0h]
		cmp	dword ptr [edx+1Ch], 0F0000000h
		ja	short loc_415785
		mov	ecx, [ebp-0B0h]
		cmp	dword ptr [ecx+24h], 0F0000000h
		jbe	short loc_4157A2

loc_415785:				; CODE XREF: .text:00415765j
					; .text:00415774j
		push	offset aInvalidExportD ; "  Invalid export data"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_415F46
; ---------------------------------------------------------------------------

loc_4157A2:				; CODE XREF: .text:00415759j
					; .text:00415783j
		cmp	dword ptr [ebp-0A8h], 0
		jz	loc_415834
		mov	eax, [ebp-0B0h]
		mov	ecx, [ebp-0B4h]
		mov	edx, [eax+10h]
		cmp	edx, [ecx+10h]
		jnz	short loc_4157FF
		mov	eax, [ebp-0B0h]
		mov	ecx, [ebp-0B4h]
		mov	edx, [eax+14h]
		cmp	edx, [ecx+14h]
		jnz	short loc_4157FF
		mov	eax, [ebp-0B0h]
		mov	ecx, [ebp-0B4h]
		mov	edx, [eax+1Ch]
		cmp	edx, [ecx+1Ch]
		jnz	short loc_4157FF
		mov	eax, [ebp-0B0h]
		mov	ecx, [ebp-0B4h]
		mov	edx, [eax+24h]
		cmp	edx, [ecx+24h]
		jz	short loc_415834

loc_4157FF:				; CODE XREF: .text:004157C1j
					; .text:004157D5j ...
		push	offset aExportDirector ; "  Export directory in	memory is damaged"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		mov	eax, [ebp-34h]
		add	eax, 4
		push	eax		; n
		mov	edx, [ebp-0A8h]
		push	edx		; src
		mov	ecx, [ebp-0A4h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch

loc_415834:				; CODE XREF: .text:004157A9j
					; .text:004157FDj
		mov	eax, [ebp-0A4h]
		mov	edx, [eax+10h]
		mov	[ebp-6Ch], edx
		mov	ecx, [ebp-0A4h]
		mov	eax, [ecx+14h]
		mov	[ebp-8], eax
		mov	edx, [ebp-0A4h]
		mov	ecx, [edx+1Ch]
		sub	ecx, [ebp-50h]
		mov	[ebp-70h], ecx
		mov	eax, [ebp-0A4h]
		mov	edx, [eax+24h]
		sub	edx, [ebp-50h]
		mov	[ebp-74h], edx
		mov	ecx, [ebp-0A4h]
		mov	eax, [ecx+18h]
		mov	[ebp-0Ch], eax
		mov	edx, [ebp-0A4h]
		mov	ecx, [edx+20h]
		sub	ecx, [ebp-50h]
		mov	[ebp-78h], ecx
		and	dword ptr [ebp-8], 3FFFFFFFh
		and	dword ptr [ebp-0Ch], 3FFFFFFFh
		mov	eax, [ebp-70h]
		cmp	eax, [ebp-34h]
		jnb	short loc_4158CC
		mov	edx, [ebp-74h]
		cmp	edx, [ebp-34h]
		jnb	short loc_4158CC
		mov	ecx, [ebp-34h]
		sub	ecx, [ebp-70h]
		shr	ecx, 2
		cmp	ecx, [ebp-8]
		jl	short loc_4158CC
		mov	eax, [ebp-34h]
		sub	eax, [ebp-78h]
		shr	eax, 2
		cmp	eax, [ebp-0Ch]
		jl	short loc_4158CC
		mov	edx, [ebp-34h]
		sub	edx, [ebp-74h]
		shr	edx, 1
		cmp	edx, [ebp-0Ch]
		jge	short loc_41590C

loc_4158CC:				; CODE XREF: .text:00415899j
					; .text:004158A1j ...
		test	byte ptr [esi+0Ah], 10h
		jz	short loc_4158EC
		push	offset aInvalidImageEx ; "  Invalid Image Export Directory, or sy"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	short loc_415904
; ---------------------------------------------------------------------------

loc_4158EC:				; CODE XREF: .text:004158D0j
		push	offset aInvalidOrCompr ; "  Invalid or compressed Image	Export Di"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_415904:				; CODE XREF: .text:004158EAj
		xor	ecx, ecx	; int
		mov	[ebp-0Ch], ecx
		mov	[ebp-8], ecx

loc_41590C:				; CODE XREF: .text:004158CAj
		cmp	dword ptr [ebp-8], 0
		jle	short loc_415928
		push	1		; flags
		mov	eax, [ebp-8]
		shl	eax, 2		; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-14h], eax
		jmp	short loc_41592D
; ---------------------------------------------------------------------------

loc_415928:				; CODE XREF: .text:00415910j
		xor	edx, edx
		mov	[ebp-14h], edx

loc_41592D:				; CODE XREF: .text:00415926j
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_415970
		xor	ebx, ebx
		cmp	ebx, [ebp-8]
		jge	short loc_415949

loc_41593A:				; CODE XREF: .text:00415947j
		mov	eax, [ebp-14h]
		mov	edx, [ebp-0Ch]
		mov	[eax+ebx*4], edx
		inc	ebx
		cmp	ebx, [ebp-8]
		jl	short loc_41593A

loc_415949:				; CODE XREF: .text:00415938j
		xor	eax, eax
		cmp	eax, [ebp-0Ch]
		jge	short loc_415970

loc_415950:				; CODE XREF: .text:0041596Ej
		mov	edx, [ebp-0A4h]
		mov	ecx, [ebp-74h]
		add	edx, ecx
		movzx	ebx, word ptr [edx+eax*2]
		cmp	ebx, [ebp-8]
		jge	short loc_41596A
		mov	edx, [ebp-14h]
		mov	[edx+ebx*4], eax

loc_41596A:				; CODE XREF: .text:00415962j
		inc	eax
		cmp	eax, [ebp-0Ch]
		jl	short loc_415950

loc_415970:				; CODE XREF: .text:00415931j
					; .text:0041594Ej
		xor	ebx, ebx
		cmp	ebx, [ebp-8]
		jge	loc_415F36

loc_41597B:				; CODE XREF: .text:00415F30j
		mov	eax, [ebp-0A4h]
		mov	edx, [ebp-70h]
		lea	ecx, [eax+edx]
		mov	edi, [ecx+ebx*4]
		sub	edi, [ebp-50h]
		cmp	edi, [ebp-34h]
		jb	loc_415F2C
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_4159A4
		mov	eax, [ebp-14h]
		mov	eax, [eax+ebx*4]
		jmp	short loc_4159C5
; ---------------------------------------------------------------------------

loc_4159A4:				; CODE XREF: .text:0041599Aj
		xor	eax, eax
		cmp	eax, [ebp-0Ch]
		jge	short loc_4159C5

loc_4159AB:				; CODE XREF: .text:004159C3j
		mov	edx, [ebp-0A4h]
		mov	ecx, [ebp-74h]
		add	edx, ecx
		mov	cx, [edx+eax*2]
		cmp	cx, bx
		jz	short loc_4159C5
		inc	eax
		cmp	eax, [ebp-0Ch]
		jl	short loc_4159AB

loc_4159C5:				; CODE XREF: .text:004159A2j
					; .text:004159A9j ...
		xor	edx, edx
		mov	[ebp-0EE8h], dx
		mov	[ebp-0CE8h], dx
		cmp	eax, [ebp-0Ch]
		jge	loc_415D1E
		mov	ecx, [ebp-0A4h]
		mov	edx, [ebp-78h]
		add	ecx, edx
		cmp	dword ptr [ecx+eax*4], 0
		jz	loc_415D1E
		mov	edx, [ebp-0A4h]
		mov	ecx, [ebp-78h]
		add	edx, ecx
		mov	eax, [edx+eax*4]
		sub	eax, [ebp-50h]
		mov	[ebp-40h], eax
		mov	ecx, [ebp-40h]
		cmp	ecx, [ebp-34h]
		jnb	loc_415D1E
		push	100h		; nw
		lea	eax, [ebp-0CE8h]
		push	eax		; w
		mov	edx, [ebp-34h]
		sub	edx, [ebp-40h]
		push	edx		; ns
		mov	ecx, [ebp-0A4h]
		add	ecx, [ebp-40h]
		push	ecx		; s
		call	Asciitounicode
		add	esp, 10h
		lea	eax, [ebp-0CE8h]
		push	eax		; s
		push	22h		; type
		mov	edx, [ebp-30h]
		add	edx, [ebp-50h]
		add	edx, edi
		push	edx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		cmp	dword ptr [ebp-28h], 0
		jz	loc_415CE8
		lea	ecx, [ebp-0CE8h]
		lea	eax, [ebp-8E8h]
		push	ecx
		push	eax
		lea	edx, [ebp-12E8h]
		push	offset aS_S	; "%s.%s"
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		lea	ecx, [ebp-1774h]
		push	40h		; n
		push	0		; c
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		push	0FFFFFFFFh	; nexp
		push	0		; rettype
		push	0		; adec
		lea	eax, [ebp-1774h]
		push	eax		; pd
		lea	edx, [ebp-12E8h]
		push	edx		; _name
		call	Decodeknownbyname
		add	esp, 14h
		test	eax, eax
		jl	loc_415CE8
		mov	ecx, [ebp-30h]
		lea	eax, [ebp-1774h]
		add	ecx, [ebp-50h]
		add	ecx, edi
		mov	[ebp-1774h], ecx
		push	eax		; item
		push	offset procdata	; sd
		call	Addsorteddata
		add	esp, 8
		push	offset aKernel32_debug ; "KERNEL32.DebugBreak"
		lea	edx, [ebp-12E8h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_415B00
		mov	ecx, [ebp-1774h]
		mov	debugbreak, ecx
		jmp	loc_415CE8
; ---------------------------------------------------------------------------

loc_415B00:				; CODE XREF: .text:00415AEDj
		push	offset aNtdll_dbgbreak ; s2
		lea	eax, [ebp-12E8h]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_415B29
		mov	edx, [ebp-1774h]
		mov	dbgbreakpoint, edx
		jmp	loc_415CE8
; ---------------------------------------------------------------------------

loc_415B29:				; CODE XREF: .text:00415B16j
		push	offset aNtdll_kiuserex ; s2
		lea	ecx, [ebp-12E8h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_415B59
		push	offset aNtdll_rtlusere ; s2
		lea	eax, [ebp-12E8h]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_415B6A

loc_415B59:				; CODE XREF: .text:00415B3Fj
		mov	edx, [ebp-1774h]
		mov	kiuserexcept, edx
		jmp	loc_415CE8
; ---------------------------------------------------------------------------

loc_415B6A:				; CODE XREF: .text:00415B57j
		push	offset aNtdll_zwcontin ; s2
		lea	ecx, [ebp-12E8h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_415B92
		mov	eax, [ebp-1774h]
		mov	zwcontinue, eax
		jmp	loc_415CE8
; ---------------------------------------------------------------------------

loc_415B92:				; CODE XREF: .text:00415B80j
		push	offset aNtdll_rtlencod ; s2
		lea	edx, [ebp-12E8h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_415BC1
		mov	ecx, [ebp-1774h]
		push	ecx		; arglist
		call	loc_4705C4
		pop	ecx
		mov	dword_5D5530, eax
		jmp	loc_415CE8
; ---------------------------------------------------------------------------

loc_415BC1:				; CODE XREF: .text:00415BA8j
		push	offset aNtdll_rtladdve ; s2
		lea	eax, [ebp-12E8h]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_415BEA
		mov	edx, [ebp-1774h]
		mov	[ebp-94h], edx
		jmp	loc_415CE8
; ---------------------------------------------------------------------------

loc_415BEA:				; CODE XREF: .text:00415BD7j
		push	offset aNtdll_rtlraise ; s2
		lea	ecx, [ebp-12E8h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_415C12
		mov	eax, [ebp-1774h]
		mov	dword_5D553C, eax
		jmp	loc_415CE8
; ---------------------------------------------------------------------------

loc_415C12:				; CODE XREF: .text:00415C00j
		push	offset aKernel32_unhan ; "KERNEL32.UnhandledExceptionFilter"
		lea	edx, [ebp-12E8h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_415C3B
		mov	ecx, [ebp-1774h]
		mov	uefilter, ecx
		jmp	loc_415CE8
; ---------------------------------------------------------------------------

loc_415C3B:				; CODE XREF: .text:00415C28j
		push	offset aNtdll_ntqueryi ; s2
		lea	eax, [ebp-12E8h]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_415C6B
		push	offset aNtdll_zwqueryi ; s2
		lea	edx, [ebp-12E8h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_415C79

loc_415C6B:				; CODE XREF: .text:00415C51j
		mov	ecx, [ebp-1774h]
		mov	ntqueryinfo, ecx
		jmp	short loc_415CE8
; ---------------------------------------------------------------------------

loc_415C79:				; CODE XREF: .text:00415C69j
		push	offset aKernel32_outpu ; "KERNEL32.OutputDebugStringA"
		lea	eax, [ebp-12E8h]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_415C9F
		mov	edx, [ebp-1774h]
		mov	dword_5D5544, edx
		jmp	short loc_415CE8
; ---------------------------------------------------------------------------

loc_415C9F:				; CODE XREF: .text:00415C8Fj
		push	offset aKernel32_out_0 ; "KERNEL32.OutputDebugStringW"
		lea	ecx, [ebp-12E8h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_415CC4
		mov	eax, [ebp-1774h]
		mov	dword_5D5548, eax
		jmp	short loc_415CE8
; ---------------------------------------------------------------------------

loc_415CC4:				; CODE XREF: .text:00415CB5j
		push	offset aMscoree__corex ; s2
		lea	edx, [ebp-12E8h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_415CE8
		mov	ecx, [ebp-1774h]
		mov	corexemain, ecx

loc_415CE8:				; CODE XREF: .text:00415A56j
					; .text:00415AAFj ...
		push	0		; recurs
		lea	eax, [ebp-0EE8h]
		push	eax		; undecorated
		lea	edx, [ebp-0CE8h]
		push	edx		; _name
		call	DemanglenameW
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_415D1E
		lea	ecx, [ebp-0EE8h]
		push	ecx		; s
		push	23h		; type
		mov	eax, [ebp-30h]
		add	eax, [ebp-50h]
		add	eax, edi
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_415D1E:				; CODE XREF: .text:004159D8j
					; .text:004159EDj ...
		cmp	dword ptr [ebp-0A8h], 0
		jz	loc_415F0B
		mov	edx, [ebp-0A8h]
		mov	ecx, [ebp-70h]
		lea	eax, [edx+ecx]
		mov	edx, [eax+ebx*4]
		sub	edx, [ebp-50h]
		cmp	edi, edx
		jz	loc_415F0B
		cmp	word ptr [ebp-0EE8h], 0
		jz	short loc_415DA8
		mov	ecx, [ebp-30h]
		lea	eax, [ebp-0EE8h]
		add	ecx, [ebp-50h]
		add	ecx, edi
		push	ecx
		push	eax		; arglist
		push	offset aExportSIsRedir ; "  Export '%s' is redirected to %08X"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		mov	edx, [ebp-0A8h]
		mov	ecx, [ebp-70h]
		lea	eax, [edx+ecx]
		mov	edx, [eax+ebx*4]
		add	edx, [ebp-30h]
		push	edx		; _addr
		call	Addtolist
		add	esp, 14h
		lea	ecx, [ebp-0EE8h]
		push	ecx		; src
		push	100h		; n
		lea	eax, [ebp-0CE8h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_415E43
; ---------------------------------------------------------------------------

loc_415DA8:				; CODE XREF: .text:00415D4Dj
		cmp	word ptr [ebp-0CE8h], 0
		jz	short loc_415DED
		mov	edx, [ebp-30h]
		lea	ecx, [ebp-0CE8h]
		add	edx, [ebp-50h]
		add	edx, edi
		push	edx
		push	ecx		; arglist
		push	offset aExportSIsRedir ; "  Export '%s' is redirected to %08X"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		mov	eax, [ebp-0A8h]
		mov	edx, [ebp-70h]
		lea	ecx, [eax+edx]
		mov	eax, [ecx+ebx*4]
		add	eax, [ebp-30h]
		push	eax		; _addr
		call	Addtolist
		add	esp, 14h
		jmp	short loc_415E43
; ---------------------------------------------------------------------------

loc_415DED:				; CODE XREF: .text:00415DB0j
		mov	edx, [ebp-30h]
		add	edx, [ebp-50h]
		add	edx, edi
		push	edx
		mov	ecx, [ebp-6Ch]
		add	ecx, ebx
		push	ecx		; arglist
		push	offset aExportIIsRedir ; "  Export #%i is redirected to	%08X"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		mov	eax, [ebp-0A8h]
		mov	edx, [ebp-70h]
		lea	ecx, [eax+edx]
		mov	eax, [ecx+ebx*4]
		add	eax, [ebp-30h]
		push	eax		; _addr
		call	Addtolist
		add	esp, 14h
		mov	edx, [ebp-6Ch]
		add	edx, ebx
		lea	ecx, [esi+0Ch]
		push	edx
		push	ecx
		lea	eax, [ebp-0CE8h]
		push	offset aS_I	; "#s.#%i"
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h

loc_415E43:				; CODE XREF: .text:00415DA3j
					; .text:00415DEBj
		lea	edx, [ebp-0CE8h]
		push	edx
		push	offset aOriginal_S ; "<Original_%s>"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-12E8h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-12E8h]
		push	eax		; s
		push	22h		; type
		mov	edx, [ebp-0A8h]
		mov	ecx, [ebp-70h]
		lea	eax, [edx+ecx]
		mov	edx, [eax+ebx*4]
		add	edx, [ebp-30h]
		push	edx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		lea	ecx, [ebp-0CE8h]
		push	ecx
		push	offset aRedirectedToS ;	"Redirected to %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-12E8h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-12E8h]
		push	edx		; s
		push	37h		; type
		mov	ecx, [ebp-0A8h]
		mov	eax, [ebp-70h]
		lea	edx, [ecx+eax]
		mov	ecx, [edx+ebx*4]
		add	ecx, [ebp-30h]
		push	ecx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		lea	eax, [ebp-0CE8h]
		push	eax
		push	offset aRedirectedFrom ; "Redirected from <Original_%s>"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-12E8h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-12E8h]
		push	ecx		; s
		push	37h		; type
		mov	eax, [ebp-30h]
		add	eax, [ebp-50h]
		add	eax, edi
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_415F0B:				; CODE XREF: .text:00415D25j
					; .text:00415D3Fj
		mov	edx, [ebp-6Ch]
		lea	ecx, [ebp-2Ch]
		add	edx, ebx
		mov	[ebp-2Ch], edx
		push	4		; datasize
		push	ecx		; data
		push	24h		; type
		mov	eax, [ebp-30h]
		add	eax, [ebp-50h]
		add	edi, eax
		push	edi		; _addr
		call	Quickinsertdata
		add	esp, 10h

loc_415F2C:				; CODE XREF: .text:00415990j
		inc	ebx
		cmp	ebx, [ebp-8]
		jl	loc_41597B

loc_415F36:				; CODE XREF: .text:00415975j
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_415F46
		mov	edx, [ebp-14h]
		push	edx		; data
		call	Memfree
		pop	ecx

loc_415F46:				; CODE XREF: .text:0041570Fj
					; .text:0041574Dj ...
		cmp	dword ptr [ebp-0A4h], 0
		jz	short loc_415F5C
		mov	ecx, [ebp-0A4h]
		push	ecx		; data
		call	Memfree
		pop	ecx

loc_415F5C:				; CODE XREF: .text:00415F4Dj
		cmp	dword ptr [ebp-0A8h], 0
		jz	short loc_415F72
		mov	eax, [ebp-0A8h]
		push	eax		; data
		call	Memfree
		pop	ecx

loc_415F72:				; CODE XREF: .text:004155FAj
					; .text:00415F63j
		cmp	dword_5C8940, 0
		jz	short loc_415F80
		call	loc_451220

loc_415F80:				; CODE XREF: .text:00415F79j
		mov	edx, [ebp-1AA0h]
		mov	[ebp-50h], edx
		mov	ecx, [ebp-1A9Ch]
		mov	[ebp-34h], ecx
		cmp	dword ptr [ebp-50h], 0
		jz	short loc_415FAA
		cmp	dword ptr [ebp-34h], 0
		jbe	short loc_415FAA
		mov	eax, [ebp-30h]
		add	eax, [ebp-50h]
		mov	[esi+478h], eax

loc_415FAA:				; CODE XREF: .text:00415F96j
					; .text:00415F9Cj
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-18h], edx
		xor	eax, eax
		mov	dword ptr [ebp-80h], 0FFFFFFFFh
		mov	[ebp-84h], ecx
		mov	[esi+9ACh], eax
		xor	edx, edx
		mov	[ebp-40h], edx
		jmp	loc_416454
; ---------------------------------------------------------------------------

loc_415FD0:				; CODE XREF: .text:0041645Dj
		cmp	dword ptr [ebp-0ACh], 0
		jz	short loc_416041
		mov	ecx, [ebp-30h]
		add	ecx, [ebp-50h]
		add	ecx, [ebp-40h]
		push	ecx		; _addr
		push	esi		; pmod
		call	Findfileoffset
		add	esp, 8
		mov	[ebp-2Ch], eax
		cmp	dword ptr [ebp-2Ch], 0
		jnz	short loc_416001
		mov	dword ptr [ebp-18h], 1
		jmp	loc_416450
; ---------------------------------------------------------------------------

loc_416001:				; CODE XREF: .text:00415FF3j
		push	0		; whence
		mov	eax, [ebp-2Ch]
		push	eax		; offset
		mov	edx, [ebp-0ACh]
		push	edx		; stream
		call	_fseek
		add	esp, 0Ch
		mov	ecx, [ebp-0ACh]
		push	ecx		; stream
		push	14h		; n
		push	1		; size
		lea	eax, [ebp-1C24h]
		push	eax		; ptr
		call	_fread
		add	esp, 10h
		cmp	eax, 14h
		jz	short loc_416075
		mov	dword ptr [ebp-18h], 1
		jmp	loc_416450
; ---------------------------------------------------------------------------

loc_416041:				; CODE XREF: .text:00415FD7j
		mov	edx, [ebp-30h]
		add	edx, [ebp-50h]
		add	edx, [ebp-40h]
		mov	[ebp-2Ch], edx
		push	1		; mode
		push	14h		; size
		mov	ecx, [ebp-2Ch]
		push	ecx		; _addr
		lea	eax, [ebp-1C24h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 14h
		jz	short loc_416075
		mov	dword ptr [ebp-18h], 1
		jmp	loc_416450
; ---------------------------------------------------------------------------

loc_416075:				; CODE XREF: .text:00416033j
					; .text:00416067j
		cmp	dword ptr [ebp-1C18h], 0
		jz	loc_416463
		cmp	dword ptr [ebp-1C24h], 0
		jnz	short loc_4160A0
		cmp	dword ptr [ebp-1C14h], 0
		jnz	short loc_4160A0
		mov	dword ptr [ebp-18h], 1
		jmp	loc_416450
; ---------------------------------------------------------------------------

loc_4160A0:				; CODE XREF: .text:00416089j
					; .text:00416092j
		push	5		; mode
		push	203h		; size
		mov	edx, [ebp-30h]
		add	edx, [ebp-1C18h]
		push	edx		; _addr
		lea	ecx, [ebp-2E0h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4160D2
		mov	dword ptr [ebp-18h], 1
		jmp	loc_416450
; ---------------------------------------------------------------------------

loc_4160D2:				; CODE XREF: .text:004160C4j
		mov	byte ptr [ebp+ebx-2E0h], 0
		push	104h		; nw
		lea	eax, [ebp-4E8h]
		push	eax		; w
		push	ebx		; nt
		lea	edx, [ebp-2E0h]
		push	edx		; t
		call	Utftounicode
		add	esp, 10h
		lea	ecx, [ebp-4E8h]
		push	ecx		; path
		lea	eax, [ebp-14F0h]
		push	eax		; int
		call	loc_412FF4
		add	esp, 8
		mov	[ebp-24h], eax
		cmp	dword ptr [esi+9ACh], 18h
		jge	short loc_416178
		xor	ebx, ebx
		jmp	short loc_416140
; ---------------------------------------------------------------------------

loc_41611C:				; CODE XREF: .text:00416146j
		mov	edx, ebx
		lea	eax, [ebp-14F0h]
		shl	edx, 6
		push	20h		; maxlen
		add	edx, esi
		push	eax		; s2
		add	edx, 9B0h
		push	edx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_416148
		inc	ebx

loc_416140:				; CODE XREF: .text:0041611Aj
		cmp	ebx, [esi+9ACh]
		jl	short loc_41611C

loc_416148:				; CODE XREF: .text:0041613Dj
		cmp	ebx, [esi+9ACh]
		jl	short loc_416178
		lea	ecx, [ebp-14F0h]
		push	ecx		; src
		push	20h		; n
		mov	eax, [esi+9ACh]
		shl	eax, 6
		add	eax, esi
		add	eax, 9B0h
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		inc	dword ptr [esi+9ACh]

loc_416178:				; CODE XREF: .text:00416116j
					; .text:0041614Ej
		xor	edx, edx
		mov	[ebp-4], edx
		mov	edi, [ebp-30h]
		add	edi, [ebp-1C14h]

loc_416186:				; CODE XREF: .text:004161AAj
		push	1		; mode
		push	4		; size
		push	edi		; _addr
		lea	eax, [ebp-2Ch]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		cmp	ebx, 4
		jnz	short loc_4161AC
		cmp	dword ptr [ebp-2Ch], 0
		jz	short loc_4161AC
		inc	dword ptr [ebp-4]
		add	edi, 4
		jmp	short loc_416186
; ---------------------------------------------------------------------------

loc_4161AC:				; CODE XREF: .text:0041619Cj
					; .text:004161A2j
		cmp	dword ptr [ebp-4], 0
		jz	loc_416450
		cmp	dword ptr [ebp-1C24h], 0
		jz	short loc_4161C7
		mov	eax, [ebp-1C24h]
		jmp	short loc_4161CD
; ---------------------------------------------------------------------------

loc_4161C7:				; CODE XREF: .text:004161BDj
		mov	eax, [ebp-1C14h]

loc_4161CD:				; CODE XREF: .text:004161C5j
		add	eax, [ebp-30h]	; int
		mov	[ebp-2Ch], eax
		cmp	dword ptr [ebp-0ACh], 0
		jz	short loc_4161FE
		mov	edx, [ebp-2Ch]
		push	edx		; _addr
		push	esi		; pmod
		call	Findfileoffset
		add	esp, 8
		mov	[ebp-2Ch], eax
		cmp	dword ptr [ebp-2Ch], 0
		jnz	short loc_4161FE
		mov	dword ptr [ebp-18h], 1
		jmp	loc_416450
; ---------------------------------------------------------------------------

loc_4161FE:				; CODE XREF: .text:004161DAj
					; .text:004161F0j
		push	1		; flags
		mov	ecx, [ebp-4]
		shl	ecx, 2		; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-7Ch], eax
		cmp	dword ptr [ebp-7Ch], 0
		jnz	short loc_416224
		mov	dword ptr [ebp-18h], 1
		jmp	loc_416450
; ---------------------------------------------------------------------------

loc_416224:				; CODE XREF: .text:00416216j
		cmp	dword ptr [ebp-0ACh], 0
		jz	short loc_416263
		push	0		; whence
		mov	eax, [ebp-2Ch]
		push	eax		; offset
		mov	edx, [ebp-0ACh]
		push	edx		; stream
		call	_fseek
		add	esp, 0Ch
		mov	ecx, [ebp-0ACh]
		push	ecx		; stream
		mov	eax, [ebp-4]
		shl	eax, 2
		push	eax		; n
		push	1		; size
		mov	edx, [ebp-7Ch]
		push	edx		; ptr
		call	_fread
		add	esp, 10h
		mov	[ebp-4Ch], eax
		jmp	short loc_41627F
; ---------------------------------------------------------------------------

loc_416263:				; CODE XREF: .text:0041622Bj
		push	1		; mode
		mov	ecx, [ebp-4]
		shl	ecx, 2
		push	ecx		; size
		mov	eax, [ebp-2Ch]
		push	eax		; _addr
		mov	edx, [ebp-7Ch]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-4Ch], eax

loc_41627F:				; CODE XREF: .text:00416261j
		mov	ecx, [ebp-4]
		shl	ecx, 2
		cmp	ecx, [ebp-4Ch]
		jz	short loc_416296
		mov	dword ptr [ebp-18h], 1
		jmp	loc_416446
; ---------------------------------------------------------------------------

loc_416296:				; CODE XREF: .text:00416288j
		mov	edi, [ebp-30h]
		xor	ebx, ebx
		add	edi, [ebp-1C14h]
		cmp	ebx, [ebp-4]
		jge	loc_416446

loc_4162AA:				; CODE XREF: .text:00416440j
		mov	eax, [ebp-7Ch]
		test	byte ptr [eax+ebx*4+3],	80h
		jz	short loc_416309
		push	44h		; n
		push	0		; c
		lea	edx, [ebp-1734h]
		push	edx		; s
		call	_memset
		mov	ecx, [ebp-7Ch]
		add	esp, 0Ch
		lea	edx, [ebp-14F0h]
		mov	eax, [ecx+ebx*4]
		and	eax, 7FFFFFFFh
		lea	ecx, [ebp-1730h]
		mov	[ebp-1734h], eax
		push	edx		; src
		push	20h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	44h		; datasize
		lea	eax, [ebp-1734h]
		push	eax		; data
		push	28h		; type
		push	edi		; _addr
		call	Quickinsertdata
		add	esp, 10h
		jmp	loc_41641D
; ---------------------------------------------------------------------------

loc_416309:				; CODE XREF: .text:004162B2j
		push	1		; mode
		push	203h		; size
		mov	edx, [ebp-7Ch]
		mov	ecx, [edx+ebx*4]
		add	ecx, [ebp-30h]
		push	ecx		; _addr
		lea	eax, [ebp-2E0h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 2
		jg	short loc_41633A
		mov	dword ptr [ebp-18h], 1
		jmp	loc_41641D
; ---------------------------------------------------------------------------

loc_41633A:				; CODE XREF: .text:0041632Cj
		push	100h		; nw
		lea	edx, [ebp-16F0h]
		push	edx		; w
		add	eax, 0FFFFFFFEh
		push	eax		; ns
		lea	edx, [ebp-2DEh]
		push	edx		; s
		call	Asciitounicode
		mov	word ptr [ebp-0CE8h], 26h
		add	esp, 10h
		mov	ecx, [ebp-24h]
		add	ecx, ecx
		lea	eax, [ebp-14F0h]
		push	ecx		; n
		push	eax		; src
		lea	edx, [ebp-0CE6h]
		push	edx		; dest
		call	_memcpy
		mov	ecx, [ebp-24h]
		add	esp, 0Ch
		lea	eax, [ebp-16F0h]
		mov	edx, 100h
		mov	word ptr [ebp+ecx*2-0CE6h], 2Eh
		push	eax		; src
		lea	eax, [ebp-0CE4h]
		sub	edx, [ebp-24h]
		add	edx, 0FFFFFFFEh
		push	edx		; n
		mov	ecx, [ebp-24h]
		add	ecx, ecx
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, [ebp-0CE8h]
		push	edx		; s
		push	26h		; type
		push	edi		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		push	0		; recurs
		lea	ecx, [ebp-0EE8h]
		push	ecx		; undecorated
		lea	eax, [ebp-16F0h]
		push	eax		; _name
		call	DemanglenameW
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_41641D
		lea	edx, [ebp-0EE8h]
		push	edx		; src
		mov	ecx, 100h
		sub	ecx, [ebp-24h]
		add	ecx, 0FFFFFFFEh
		push	ecx		; n
		mov	eax, [ebp-24h]
		add	eax, eax
		lea	edx, [ebp-0CE4h]

loc_416400:				; DATA XREF: .text:0043D325o
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebp-0CE8h]
		push	ecx		; s
		push	27h		; type
		push	edi		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_41641D:				; CODE XREF: .text:00416304j
					; .text:00416335j ...
		cmp	edi, [ebp-80h]
		jnb	short loc_416425
		mov	[ebp-80h], edi

loc_416425:				; CODE XREF: .text:00416420j
		lea	eax, [edi+4]
		cmp	eax, [ebp-84h]
		jbe	short loc_416439
		lea	edx, [edi+4]
		mov	[ebp-84h], edx

loc_416439:				; CODE XREF: .text:0041642Ej
		inc	ebx
		add	edi, 4
		cmp	ebx, [ebp-4]
		jl	loc_4162AA

loc_416446:				; CODE XREF: .text:00416291j
					; .text:004162A4j
		mov	ecx, [ebp-7Ch]
		push	ecx		; data
		call	Memfree
		pop	ecx

loc_416450:				; CODE XREF: .text:00415FFCj
					; .text:0041603Cj ...
		add	dword ptr [ebp-40h], 14h

loc_416454:				; CODE XREF: .text:00415FCBj
		mov	eax, [ebp-40h]
		add	eax, 14h
		cmp	eax, [ebp-34h]
		jbe	loc_415FD0

loc_416463:				; CODE XREF: .text:0041607Cj
		mov	edx, [ebp-80h]
		cmp	edx, [ebp-84h]
		jnb	short loc_416488
		mov	ecx, [ebp-80h]
		mov	[esi+47Ch], ecx
		mov	eax, [ebp-84h]
		sub	eax, [ebp-80h]
		mov	[esi+480h], eax
		jmp	short loc_416498
; ---------------------------------------------------------------------------

loc_416488:				; CODE XREF: .text:0041646Cj
		xor	edx, edx
		xor	ecx, ecx
		mov	[esi+47Ch], edx
		mov	[esi+480h], ecx

loc_416498:				; CODE XREF: .text:00416486j
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_4164B6
		push	offset aUnableToReadIm ; "  Unable to read import data"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_4164B6:				; CODE XREF: .text:0041649Cj
		cmp	dword ptr [esi+9ACh], 1
		jle	short loc_4164DC
		push	offset __wcsicoll ; _DWORD
		push	40h		; size
		mov	eax, [esi+9ACh]
		push	eax		; count
		lea	edx, [esi+9B0h]
		push	edx		; data
		call	Heapsort
		add	esp, 10h

loc_4164DC:				; CODE XREF: .text:004164BDj
		push	esi
		call	loc_4C9CE8
		pop	ecx
		mov	ecx, [ebp-1A80h]
		mov	[ebp-50h], ecx
		mov	eax, [ebp-1A7Ch]
		mov	[ebp-34h], eax
		cmp	dword ptr [ebp-50h], 0
		jz	short loc_416516
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_416516
		mov	edx, [ebp-30h]
		add	edx, [ebp-50h]
		mov	[esi+484h], edx
		mov	ecx, [ebp-34h]
		mov	[esi+488h], ecx

loc_416516:				; CODE XREF: .text:004164F9j
					; .text:004164FFj
		xor	eax, eax	; int
		xor	edx, edx
		mov	[ebp-1Ch], eax
		mov	[ebp-20h], edx
		mov	ecx, [ebp-30h]
		add	ecx, [ebp-50h]	; int
		mov	[ebp-2Ch], ecx
		cmp	dword ptr [ebp-50h], 0
		jz	loc_416722
		cmp	dword ptr [ebp-34h], 0
		jz	loc_416722
		cmp	dword ptr [ebp-0ACh], 0
		jz	short loc_416566
		mov	eax, [ebp-2Ch]
		push	eax		; _addr
		push	esi		; pmod
		call	Findfileoffset
		add	esp, 8
		mov	[ebp-2Ch], eax
		test	eax, eax
		jnz	short loc_416566
		mov	dword ptr [ebp-1Ch], 1
		jmp	loc_416722
; ---------------------------------------------------------------------------

loc_416566:				; CODE XREF: .text:00416544j
					; .text:00416558j
		push	1		; flags
		mov	edx, [ebp-34h]	; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-0A8h], eax
		test	eax, eax
		jnz	short loc_41658A
		mov	dword ptr [ebp-1Ch], 1
		jmp	loc_416722
; ---------------------------------------------------------------------------

loc_41658A:				; CODE XREF: .text:0041657Cj
		cmp	dword ptr [ebp-0ACh], 0
		jz	short loc_4165C9
		push	0		; whence
		mov	edx, [ebp-2Ch]
		push	edx		; offset
		mov	ecx, [ebp-0ACh]
		push	ecx		; stream
		call	_fseek
		add	esp, 0Ch
		mov	eax, [ebp-0ACh]
		push	eax		; stream
		mov	edx, [ebp-34h]
		push	edx		; n
		push	1		; size
		mov	ecx, [ebp-0A8h]
		push	ecx		; ptr
		call	_fread
		add	esp, 10h
		mov	[ebp-4Ch], eax
		jmp	short loc_4165E5
; ---------------------------------------------------------------------------

loc_4165C9:				; CODE XREF: .text:00416591j
		push	1		; mode
		mov	eax, [ebp-34h]
		push	eax		; size
		mov	edx, [ebp-2Ch]
		push	edx		; _addr
		mov	ecx, [ebp-0A8h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-4Ch], eax

loc_4165E5:				; CODE XREF: .text:004165C7j
		mov	eax, [ebp-4Ch]	; int
		cmp	eax, [ebp-34h]
		jz	short loc_4165F9
		mov	dword ptr [ebp-1Ch], 1
		jmp	loc_416715
; ---------------------------------------------------------------------------

loc_4165F9:				; CODE XREF: .text:004165EBj
		push	1		; flags
		mov	edx, [ebp-34h]
		add	edx, edx	; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	[esi+8F0h], eax
		test	eax, eax
		jnz	short loc_41661F
		mov	dword ptr [ebp-1Ch], 1
		jmp	loc_416715
; ---------------------------------------------------------------------------

loc_41661F:				; CODE XREF: .text:00416611j
		xor	edx, edx
		mov	[ebp-40h], edx
		jmp	loc_4166D8
; ---------------------------------------------------------------------------

loc_416629:				; CODE XREF: .text:004166E1j
		mov	ecx, [ebp-0A8h]
		mov	eax, [ebp-40h]
		mov	edx, [ebp-40h]
		mov	edi, [ecx+eax]
		mov	eax, [ebp-0A8h]
		add	edi, [ebp-30h]
		mov	ecx, [eax+edx+4]
		mov	[ebp-60h], ecx
		add	dword ptr [ebp-40h], 8
		cmp	dword ptr [ebp-60h], 0
		jz	short loc_4166CC
		cmp	dword ptr [ebp-60h], 8
		jb	short loc_416660
		mov	eax, [ebp-60h]
		cmp	eax, [ebp-34h]
		jbe	short loc_416669

loc_416660:				; CODE XREF: .text:00416656j
		mov	dword ptr [ebp-1Ch], 1
		jmp	short loc_4166E7
; ---------------------------------------------------------------------------

loc_416669:				; CODE XREF: .text:0041665Ej
		mov	edx, [ebp-60h]
		sub	edx, 8
		shr	edx, 1
		mov	[ebp-4], edx
		xor	ebx, ebx
		cmp	ebx, [ebp-4]
		jge	short loc_4166CC

loc_41667B:				; CODE XREF: .text:004166CAj
		mov	eax, [ebp-0A8h]
		mov	edx, [ebp-40h]
		movzx	eax, word ptr [eax+edx]
		add	dword ptr [ebp-40h], 2
		mov	edx, eax
		sar	edx, 0Ch
		and	edx, 0Fh
		test	edx, edx
		jz	short loc_4166C6
		cmp	edx, 3
		jz	short loc_4166A6
		mov	dword ptr [ebp-20h], 1
		jmp	short loc_4166C6
; ---------------------------------------------------------------------------

loc_4166A6:				; CODE XREF: .text:0041669Bj
		mov	ecx, [esi+8ECh]
		inc	dword ptr [esi+8ECh]
		mov	edx, [esi+8F0h]
		lea	ecx, [edx+ecx*4]
		push	ecx
		and	eax, 0FFFh
		add	eax, edi
		pop	edx
		mov	[edx], eax

loc_4166C6:				; CODE XREF: .text:00416696j
					; .text:004166A4j
		inc	ebx
		cmp	ebx, [ebp-4]
		jl	short loc_41667B

loc_4166CC:				; CODE XREF: .text:00416650j
					; .text:00416679j
		mov	eax, [ebp-40h]
		add	eax, 3
		and	eax, 0FFFFFFFCh
		mov	[ebp-40h], eax

loc_4166D8:				; CODE XREF: .text:00416624j
		mov	ecx, [ebp-40h]
		add	ecx, 8
		cmp	ecx, [ebp-34h]
		jb	loc_416629

loc_4166E7:				; CODE XREF: .text:00416667j
		push	offset fcmp	; fcmp
		push	4		; width
		mov	eax, [esi+8ECh]
		push	eax		; nelem
		mov	edx, [esi+8F0h]
		push	edx		; base
		call	_qsort
		mov	ecx, [esi+8F0h]
		mov	eax, [esi+8ECh]
		add	esp, 10h
		xor	edx, edx
		mov	[ecx+eax*4], edx

loc_416715:				; CODE XREF: .text:004165F4j
					; .text:0041661Aj
		mov	ecx, [ebp-0A8h]
		push	ecx		; data
		call	Memfree
		pop	ecx

loc_416722:				; CODE XREF: .text:0041652Dj
					; .text:00416537j ...
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_416742
		push	offset aUnableToReadFi ; "  Unable to read fixup data"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	short loc_416760
; ---------------------------------------------------------------------------

loc_416742:				; CODE XREF: .text:00416726j
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_416760
		push	offset aModuleContains ; "  Module contains unknown or non-32bit "...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_416760:				; CODE XREF: .text:00416740j
					; .text:00416746j
		mov	eax, [ebp-30h]
		add	eax, [ebp-1A98h]
		mov	[esi+48Ch], eax
		mov	edx, [ebp-1A94h]
		mov	[esi+490h], edx
		mov	ecx, [ebp-1A60h]
		mov	[ebp-50h], ecx
		cmp	dword ptr [ebp-50h], 0
		jz	loc_4168EC
		mov	eax, [ebp-30h]
		add	eax, [ebp-50h]
		mov	[esi+494h], eax
		mov	edx, [ebp-1A5Ch]
		mov	[esi+498h], edx
		cmp	dword ptr [esi+498h], 18h
		jnb	short loc_4167B9
		mov	dword ptr [esi+498h], 18h

loc_4167B9:				; CODE XREF: .text:004167ADj
		push	18h		; n
		push	0		; c
		lea	ecx, [ebp-1C3Ch]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		push	1		; mode
		push	18h		; size
		mov	eax, [ebp-30h]
		add	eax, [ebp-50h]
		push	eax		; _addr
		lea	edx, [ebp-1C3Ch]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 18h
		jz	short loc_416808
		push	offset aUnableToReadTl ; "  Unable to read TLS directory"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_4168EC
; ---------------------------------------------------------------------------

loc_416808:				; CODE XREF: .text:004167E9j
		cmp	dword ptr [ebp-1C30h], 0
		jz	loc_4168EC
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	edi, [ebp-1C30h]

loc_416820:				; CODE XREF: .text:004168E7j
		push	1		; mode
		push	4		; size
		push	edi		; _addr
		lea	eax, [ebp-2Ch]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		cmp	ebx, 4
		jz	short loc_416850
		push	offset aUnableToRead_2 ; "  Unable to read TLS callback	address"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_416850:				; CODE XREF: .text:00416836j
		cmp	dword ptr [ebp-2Ch], 0
		jz	loc_4168EC
		mov	eax, [esi]
		cmp	eax, [ebp-2Ch]
		ja	short loc_41686B
		mov	edx, [esi]
		add	edx, [esi+4]
		cmp	edx, [ebp-2Ch]
		ja	short loc_416887

loc_41686B:				; CODE XREF: .text:0041685Fj
		push	offset aInvalidTlsCall ; "  Invalid TLS	callback address"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		mov	ecx, [ebp-2Ch]
		push	ecx		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	short loc_4168EC
; ---------------------------------------------------------------------------

loc_416887:				; CODE XREF: .text:00416869j
		cmp	dword ptr [esi+49Ch], 0
		jnz	short loc_4168B3
		mov	eax, [ebp-2Ch]
		mov	[esi+49Ch], eax
		push	offset aModuleContai_0 ; "  Module contains TLS	callback(s)"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		mov	edx, [ebp-2Ch]
		push	edx		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_4168B3:				; CODE XREF: .text:0041688Ej
		mov	ecx, [ebp-4]
		lea	eax, [ebp-0CE8h]
		inc	ecx
		push	ecx
		push	offset aTls_callback_I ; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-0CE8h]
		push	edx		; s
		push	22h		; type
		mov	ecx, [ebp-2Ch]
		push	ecx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		inc	dword ptr [ebp-4]
		add	edi, 4
		jmp	loc_416820
; ---------------------------------------------------------------------------

loc_4168EC:				; CODE XREF: .text:00416788j
					; .text:00416803j ...
		mov	eax, [ebp-1A78h]
		mov	[ebp-50h], eax
		mov	edx, [ebp-1A74h]
		mov	[ebp-34h], edx
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_416919
		mov	ecx, [ebp-30h]
		add	ecx, [ebp-50h]
		push	ecx		; _addr
		push	esi		; pmod
		call	Findfileoffset
		add	esp, 8
		mov	[ebp-68h], eax
		jmp	short loc_41691E
; ---------------------------------------------------------------------------

loc_416919:				; CODE XREF: .text:00416902j
		xor	eax, eax
		mov	[ebp-68h], eax

loc_41691E:				; CODE XREF: .text:00416917j
		cmp	dword ptr [esi+460h], 0
		jz	loc_416B4F
		cmp	dword ptr [esi+458h], 0
		jz	loc_416B4F
		mov	edx, [esi+458h]
		cmp	edx, [esi+460h]
		ja	short loc_41695E
		mov	ecx, [esi+458h]
		add	ecx, [esi+45Ch]
		cmp	ecx, [esi+460h]
		ja	loc_416B4F

loc_41695E:				; CODE XREF: .text:00416944j
		xor	ebx, ebx
		jmp	short loc_4169A6
; ---------------------------------------------------------------------------

loc_416962:				; CODE XREF: .text:004169ACj
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		mov	ecx, [edx+eax*8+18h]
		cmp	ecx, [esi+460h]
		ja	short loc_4169A5
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		mov	ecx, [edx+eax*8+18h]
		mov	eax, ebx
		add	eax, eax
		lea	eax, [eax+eax*2]
		mov	edx, [esi+8E8h]
		add	ecx, [edx+eax*8+1Ch]
		cmp	ecx, [esi+460h]
		ja	short loc_4169AE

loc_4169A5:				; CODE XREF: .text:00416979j
		inc	ebx

loc_4169A6:				; CODE XREF: .text:00416960j
		cmp	ebx, [esi+8E4h]
		jl	short loc_416962

loc_4169AE:				; CODE XREF: .text:004169A3j
		cmp	ebx, [esi+8E4h]
		jl	short loc_4169D3
		push	offset aEntryPointBelo ; "  Entry point	belongs	to no section"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_416B4F
; ---------------------------------------------------------------------------

loc_4169D3:				; CODE XREF: .text:004169B4j
		mov	ecx, ebx
		add	ecx, ecx
		lea	ecx, [ecx+ecx*2]
		mov	eax, [esi+8E8h]
		mov	edx, [eax+ecx*8+18h]
		push	edx		; _addr
		push	esi		; pmod
		call	Findfixup
		add	esp, 8
		mov	[ebp-88h], eax
		cmp	dword ptr [ebp-88h], 0
		jz	loc_416B21
		mov	ecx, ebx
		add	ecx, ecx
		lea	ecx, [ecx+ecx*2]
		mov	eax, [esi+8E8h]
		mov	edx, [eax+ecx*8+18h]
		mov	ecx, ebx
		add	ecx, ecx
		lea	ecx, [ecx+ecx*2]
		mov	eax, [esi+8E8h]
		add	edx, [eax+ecx*8+1Ch]
		mov	ecx, [ebp-88h]
		cmp	edx, [ecx]
		jbe	loc_416B21
		mov	edx, ebx
		shl	edx, 4
		lea	edx, [edx+edx*2]
		add	edx, [esi+8E8h]
		push	edx		; arglist
		push	offset aSectionSPointe ; "  Section '%s', pointed to by entry poi"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		mov	eax, ebx
		lea	edx, [esi+458h]
		shl	eax, 4
		add	esp, 10h
		lea	eax, [eax+eax*2]
		add	eax, [esi+8E8h]
		add	eax, 18h
		mov	[ebp-0CCh], eax
		mov	[ebp-0D0h], edx
		mov	ecx, [ebp-0D0h]
		mov	edx, [ebp-0CCh]
		mov	eax, [ecx]
		cmp	eax, [edx]
		jnb	short loc_416A95
		mov	ecx, [ebp-0D0h]
		jmp	short loc_416A9B
; ---------------------------------------------------------------------------

loc_416A95:				; CODE XREF: .text:00416A8Bj
		mov	ecx, [ebp-0CCh]

loc_416A9B:				; CODE XREF: .text:00416A93j
		mov	edx, ebx
		mov	eax, [ecx]
		add	edx, edx
		mov	[ebp-8Ch], eax
		mov	eax, [esi+8E8h]
		mov	ecx, ebx
		lea	edx, [edx+edx*2]
		add	ecx, ecx
		mov	edx, [eax+edx*8+18h]
		mov	eax, [esi+8E8h]
		lea	ecx, [ecx+ecx*2]
		add	edx, [eax+ecx*8+1Ch]
		mov	[ebp-0D4h], edx
		mov	edx, [esi+458h]
		add	edx, [esi+45Ch]
		mov	[ebp-0D8h], edx
		mov	ecx, [ebp-0D8h]
		cmp	ecx, [ebp-0D4h]
		jbe	short loc_416AF3
		lea	eax, [ebp-0D8h]
		jmp	short loc_416AF9
; ---------------------------------------------------------------------------

loc_416AF3:				; CODE XREF: .text:00416AE9j
		lea	eax, [ebp-0D4h]

loc_416AF9:				; CODE XREF: .text:00416AF1j
		mov	edx, [eax]
		mov	[ebp-90h], edx
		mov	ecx, [ebp-8Ch]
		mov	[esi+458h], ecx
		mov	eax, [ebp-90h]
		sub	eax, [ebp-8Ch]
		mov	[esi+45Ch], eax
		jmp	short loc_416B4F
; ---------------------------------------------------------------------------

loc_416B21:				; CODE XREF: .text:004169FBj
					; .text:00416A2Bj
		mov	edx, ebx
		mov	ecx, [esi+8E8h]
		add	edx, edx
		lea	edx, [edx+edx*2]
		mov	eax, [ecx+edx*8+18h]
		mov	edx, ebx
		add	edx, edx
		mov	[esi+8D4h], eax
		mov	ecx, [esi+8E8h]
		lea	edx, [edx+edx*2]
		mov	eax, [ecx+edx*8+1Ch]
		mov	[esi+8D8h], eax

loc_416B4F:				; CODE XREF: .text:00416925j
					; .text:00416932j ...
		cmp	dword ptr [esi+8E8h], 0
		jz	loc_416BFF
		xor	ebx, ebx
		mov	edi, [esi+8E8h]
		jmp	short loc_416BB7
; ---------------------------------------------------------------------------

loc_416B66:				; CODE XREF: .text:00416BC0j
		mov	eax, [edi+18h]
		cmp	eax, [esi+458h]
		jb	short loc_416BB3
		mov	edx, [edi+48h]
		mov	ecx, [esi+458h]
		add	ecx, [esi+45Ch]
		add	edx, [edi+4Ch]
		cmp	edx, ecx
		ja	short loc_416BB3
		mov	eax, [edi+18h]
		add	eax, [edi+1Ch]
		cmp	eax, [edi+48h]
		jnz	short loc_416BB3
		lea	edx, [edi+30h]
		push	edx
		push	edi		; arglist
		push	offset aCodeSectionsSA ; "  Code sections '%s' and '%s' will be m"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h
		or	dword ptr [edi+20h], 1

loc_416BB3:				; CODE XREF: .text:00416B6Fj
					; .text:00416B85j ...
		inc	ebx
		add	edi, 30h

loc_416BB7:				; CODE XREF: .text:00416B64j
		mov	ecx, [esi+8E4h]
		dec	ecx
		cmp	ebx, ecx
		jl	short loc_416B66
		jmp	short loc_416BFF
; ---------------------------------------------------------------------------

loc_416BC4:				; CODE XREF: .text:00414215j
					; .text:0041425Dj ...
		cmp	dword ptr [ebp-0ACh], 0
		jz	short loc_416BE7
		push	offset aErrorReadingEx ; "  Error reading executable file"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	short loc_416BFF
; ---------------------------------------------------------------------------

loc_416BE7:				; CODE XREF: .text:00416BCBj
		push	offset aErrorParsingMo ; "  Error parsing module in memory"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_416BFF:				; CODE XREF: .text:0041423Ej
					; .text:004142A4j ...
		cmp	dword ptr [ebp-0ACh], 0
		jz	short loc_416C15
		mov	eax, [ebp-0ACh]
		push	eax		; stream
		call	_fclose
		pop	ecx

loc_416C15:				; CODE XREF: .text:00416C06j
		call	Mergequickdata
		cmp	dword ptr [ebp-94h], 0
		jz	short loc_416C39
		push	0
		mov	edx, [ebp-94h]
		push	edx
		call	loc_4706B0
		add	esp, 8
		mov	dword_5D5534, eax

loc_416C39:				; CODE XREF: .text:00416C21j
		mov	ecx, [esi]
		add	ecx, [esi+4]
		push	ecx
		mov	eax, [esi]
		push	eax
		call	loc_439AB4
		add	esp, 8
		mov	dword_586178, 1
		push	esi
		call	loc_4AD1C4
		pop	ecx
		mov	edx, [esi]
		push	edx
		call	loc_4C2968
		pop	ecx
		xor	eax, eax

loc_416C66:				; CODE XREF: .text:00413D30j
					; .text:00413D41j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
