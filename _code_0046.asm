.code

; int __cdecl loc_4495A8(LPARAM	lParam)
loc_4495A8:				; CODE XREF: .text:00449A9Dp
					; .text:0044B164p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF480h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+8]
		push	eax		; sd
		call	Issortedinit
		pop	ecx
		test	eax, eax
		jnz	short loc_4495CA
		or	eax, 0FFFFFFFFh
		jmp	loc_449A7A
; ---------------------------------------------------------------------------

loc_4495CA:				; CODE XREF: .text:004495C0j
		call	GetCurrentProcessId
		mov	[ebp-0Ch], eax
		xor	esi, esi
		jmp	short loc_4495EF
; ---------------------------------------------------------------------------

loc_4495D6:				; CODE XREF: .text:004495F4j
		push	esi		; index
		mov	eax, [ebp+8]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4495EE
		and	dword ptr [eax+8], 0FFFFFDFFh

loc_4495EE:				; CODE XREF: .text:004495E5j
		inc	esi

loc_4495EF:				; CODE XREF: .text:004495D4j
		mov	edx, [ebp+8]
		cmp	esi, [edx]
		jl	short loc_4495D6
		cmp	_imp__CreateToolhelp32Snapshot,	0
		jz	loc_44986D
		cmp	_imp__Process32First, 0
		jz	loc_44986D
		cmp	_imp__Process32Next, 0
		jz	loc_44986D
		push	0		; _DWORD
		push	2		; _DWORD
		call	_imp__CreateToolhelp32Snapshot
		mov	edi, eax
		cmp	edi, 0FFFFFFFFh
		jnz	short loc_44963A
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		jmp	loc_449874
; ---------------------------------------------------------------------------

loc_44963A:				; CODE XREF: .text:0044962Cj
		xor	eax, eax
		lea	edx, [ebp-95Ch]
		mov	[ebp-4], eax
		mov	dword ptr [ebp-95Ch], 128h
		push	edx
		push	edi
		call	_imp__Process32First
		mov	esi, eax
		test	esi, esi
		jz	loc_449865

loc_449661:				; CODE XREF: .text:0044985Fj
		push	614h		; n
		push	0		; c
		lea	eax, [ebp-834h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, [ebp-954h]
		mov	[ebp-834h], edx
		mov	dword ptr [ebp-82Ch], 200h
		mov	dword ptr [ebp-830h], 1
		mov	ecx, [ebp-834h]
		cmp	ecx, [ebp-0Ch]
		jnz	short loc_4496AE
		or	dword ptr [ebp-82Ch], 10000h
		jmp	short loc_4496D2
; ---------------------------------------------------------------------------

loc_4496AE:				; CODE XREF: .text:004496A0j
		mov	eax, processid
		test	eax, eax
		jz	short loc_4496D2
		cmp	run.status, 0
		jz	short loc_4496D2
		cmp	eax, [ebp-834h]
		jnz	short loc_4496D2
		or	dword ptr [ebp-82Ch], 20000h

loc_4496D2:				; CODE XREF: .text:004496ACj
					; .text:004496B5j ...
		push	104h		; nw
		lea	edx, [ebp-828h]
		push	edx		; w
		push	104h		; ns
		lea	ecx, [ebp-938h]
		push	ecx		; s
		call	Asciitounicode
		add	esp, 10h
		xor	ebx, ebx
		cmp	_imp__GetModuleFileNameExW, 0
		jz	short loc_44975E
		mov	eax, [ebp-954h]
		push	eax		; dwProcessId
		push	0		; bInheritHandle
		push	410h		; dwDesiredAccess
		call	OpenProcess
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_44975E
		push	104h		; _DWORD
		lea	edx, [ebp-220h]
		push	edx		; _DWORD
		push	0		; _DWORD
		mov	ecx, [ebp-14h]
		push	ecx		; _DWORD
		call	_imp__GetModuleFileNameExW
		test	eax, eax
		jle	short loc_44975E
		lea	eax, [ebp-220h]
		lea	edx, [ebp-828h]
		push	eax		; src
		push	104h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, [ebp-14h]
		push	ecx		; hObject
		call	CloseHandle
		mov	ebx, 1

loc_44975E:				; CODE XREF: .text:004496FBj
					; .text:00449717j ...
		test	ebx, ebx
		jnz	loc_449815
		cmp	_imp__Module32First, 0
		jz	loc_449815
		cmp	_imp__Module32Next, 0
		jz	loc_449815
		cmp	VersionInformation.dwPlatformId, 2
		jnz	short loc_44979B
		cmp	VersionInformation.dwMajorVersion, 5
		jnz	short loc_44979B
		cmp	VersionInformation.dwMinorVersion, 0
		jz	short loc_449815

loc_44979B:				; CODE XREF: .text:00449787j
					; .text:00449790j
		mov	eax, [ebp-834h]
		push	eax		; _DWORD
		push	8		; _DWORD
		call	_imp__CreateToolhelp32Snapshot
		mov	ebx, eax
		cmp	ebx, 0FFFFFFFFh
		jz	short loc_449815
		mov	dword ptr [ebp-0B80h], 224h
		lea	eax, [ebp-0B80h]
		push	eax		; _DWORD
		push	ebx		; _DWORD
		call	_imp__Module32First
		test	eax, eax
		jz	short loc_44980F

loc_4497CD:				; CODE XREF: .text:0044980Dj
		mov	edx, [ebp-0B78h]
		cmp	edx, [ebp-954h]
		jnz	short loc_4497FD
		push	104h		; nw
		lea	ecx, [ebp-828h]
		push	ecx		; w
		push	104h		; ns
		lea	eax, [ebp-0A60h]
		push	eax		; s
		call	Asciitounicode
		add	esp, 10h
		jmp	short loc_44980F
; ---------------------------------------------------------------------------

loc_4497FD:				; CODE XREF: .text:004497D9j
		lea	edx, [ebp-0B80h]
		push	edx		; _DWORD
		push	ebx		; _DWORD
		call	_imp__Module32Next
		test	eax, eax
		jnz	short loc_4497CD

loc_44980F:				; CODE XREF: .text:004497CBj
					; .text:004497FBj
		push	ebx		; hObject
		call	CloseHandle

loc_449815:				; CODE XREF: .text:00449760j
					; .text:0044976Dj ...
		mov	word ptr [ebp-622h], 0
		push	0		; ext
		lea	ecx, [ebp-620h]
		push	ecx		; _name
		push	0		; dir
		push	0		; drive
		lea	eax, [ebp-828h]
		push	eax		; path
		call	__wfnsplit
		add	esp, 14h
		lea	edx, [ebp-834h]
		push	edx		; item
		mov	ecx, [ebp+8]
		push	ecx		; sd
		call	Addsorteddata
		add	esp, 8
		lea	eax, [ebp-95Ch]
		push	eax
		push	edi
		call	_imp__Process32Next
		mov	esi, eax
		test	esi, esi
		jnz	loc_449661

loc_449865:				; CODE XREF: .text:0044965Bj
		push	edi		; hObject
		call	CloseHandle
		jmp	short loc_449874
; ---------------------------------------------------------------------------

loc_44986D:				; CODE XREF: .text:004495FDj
					; .text:0044960Aj ...
		mov	dword ptr [ebp-4], 0FFFFFFFFh

loc_449874:				; CODE XREF: .text:00449635j
					; .text:0044986Bj
		cmp	dword ptr [ebp-4], 0
		jge	loc_449A4A
		cmp	g_PSAPI, 0
		jz	loc_449A4A
		cmp	_imp__EnumProcesses, 0
		jz	short loc_4498AD
		cmp	_imp__EnumProcessModules, 0
		jz	short loc_4498AD
		cmp	_imp__GetModuleFileNameExW, 0
		jz	short loc_4498AD
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_4498B4
; ---------------------------------------------------------------------------

loc_4498AD:				; CODE XREF: .text:00449892j
					; .text:0044989Bj ...
		mov	dword ptr [ebp-4], 0FFFFFFFFh

loc_4498B4:				; CODE XREF: .text:004498ABj
		xor	edx, edx	; int
		xor	ebx, ebx
		mov	[ebp-8], edx
		mov	esi, 100h
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_449929

loc_4498C6:				; CODE XREF: .text:00449927j
		push	1		; flags
		mov	edi, esi
		shl	edi, 2
		push	edi		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4498E5
		mov	dword ptr [ebp-4], 1
		jmp	short loc_449929
; ---------------------------------------------------------------------------

loc_4498E5:				; CODE XREF: .text:004498DAj
		lea	eax, [ebp-10h]
		push	eax
		push	edi
		push	ebx
		call	_imp__EnumProcesses
		test	eax, eax
		jnz	short loc_4498FE
		mov	dword ptr [ebp-4], 1
		jmp	short loc_449929
; ---------------------------------------------------------------------------

loc_4498FE:				; CODE XREF: .text:004498F3j
		mov	edx, [ebp-10h]
		shr	edx, 2
		mov	[ebp-8], edx
		cmp	esi, [ebp-8]
		jg	short loc_449929
		cmp	esi, 10000h
		jg	short loc_449929
		push	ebx		; data
		call	Memfree
		mov	eax, esi
		xor	ebx, ebx
		add	eax, eax
		pop	ecx
		cmp	dword ptr [ebp-4], 0
		mov	esi, eax
		jz	short loc_4498C6

loc_449929:				; CODE XREF: .text:004498C4j
					; .text:004498E3j ...
		cmp	dword ptr [ebp-4], 0
		jnz	loc_449A3F
		xor	esi, esi
		mov	edi, ebx
		cmp	esi, [ebp-8]
		jge	loc_449A3F

loc_449940:				; CODE XREF: .text:00449A39j
		mov	eax, [edi]
		push	eax		; dwProcessId
		push	0		; bInheritHandle
		push	410h		; dwDesiredAccess
		call	OpenProcess
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jz	loc_449A32
		lea	edx, [ebp-10h]
		lea	ecx, [ebp-18h]
		push	edx		; _DWORD
		push	4		; _DWORD
		push	ecx		; _DWORD
		mov	eax, [ebp-14h]
		push	eax		; _DWORD
		call	_imp__EnumProcessModules
		test	eax, eax
		jnz	short loc_449982
		mov	edx, [ebp-14h]
		push	edx		; hObject
		call	CloseHandle
		jmp	loc_449A32
; ---------------------------------------------------------------------------

loc_449982:				; CODE XREF: .text:00449972j
		push	614h		; n
		push	0		; c
		lea	ecx, [ebp-834h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	eax, [edi]
		mov	[ebp-834h], eax
		mov	dword ptr [ebp-82Ch], 200h
		mov	dword ptr [ebp-830h], 1
		cmp	eax, [ebp-0Ch]
		jnz	short loc_4499C5
		or	dword ptr [ebp-82Ch], 10000h
		jmp	short loc_4499D7
; ---------------------------------------------------------------------------

loc_4499C5:				; CODE XREF: .text:004499B7j
		cmp	eax, processid
		jnz	short loc_4499D7
		or	dword ptr [ebp-82Ch], 20000h

loc_4499D7:				; CODE XREF: .text:004499C3j
					; .text:004499CBj
		push	104h		; _DWORD
		lea	edx, [ebp-828h]
		push	edx		; _DWORD
		mov	ecx, [ebp-18h]
		push	ecx		; _DWORD
		mov	eax, [ebp-14h]
		push	eax		; _DWORD
		call	_imp__GetModuleFileNameExW
		mov	word ptr [ebp-622h], 0
		mov	edx, [ebp-14h]
		push	edx		; hObject
		call	CloseHandle
		push	0		; ext
		lea	ecx, [ebp-620h]
		push	ecx		; _name
		push	0		; dir
		push	0		; drive
		lea	eax, [ebp-828h]
		push	eax		; path
		call	__wfnsplit
		add	esp, 14h
		lea	edx, [ebp-834h]
		push	edx		; item
		mov	ecx, [ebp+8]
		push	ecx		; sd
		call	Addsorteddata
		add	esp, 8

loc_449A32:				; CODE XREF: .text:00449956j
					; .text:0044997Dj
		inc	esi
		add	edi, 4
		cmp	esi, [ebp-8]
		jl	loc_449940

loc_449A3F:				; CODE XREF: .text:0044992Dj
					; .text:0044993Aj
		test	ebx, ebx
		jz	short loc_449A4A
		push	ebx		; data
		call	Memfree
		pop	ecx

loc_449A4A:				; CODE XREF: .text:00449878j
					; .text:00449885j ...
		cmp	dword ptr [ebp-4], 0
		jz	short loc_449A55
		or	eax, 0FFFFFFFFh
		jmp	short loc_449A7A
; ---------------------------------------------------------------------------

loc_449A55:				; CODE XREF: .text:00449A4Ej
		mov	edx, [ebp+8]
		cmp	dword ptr [edx], 0
		jle	short loc_449A6B
		mov	ecx, [ebp+8]
		push	ecx		; lParam
		push	offset loc_44AFC4 ; lpEnumFunc
		call	EnumWindows

loc_449A6B:				; CODE XREF: .text:00449A5Bj
		mov	eax, [ebp+8]
		push	eax		; sd
		call	Deletenonconfirmedsorteddata
		pop	ecx
		mov	edx, [ebp+8]
		mov	eax, [edx]

loc_449A7A:				; CODE XREF: .text:004495C5j
					; .text:00449A53j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_449A84:				; DATA XREF: .data:stru_532074o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		test	eax, eax
		jnz	short loc_449A95
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_449A95:				; CODE XREF: .text:00449A8Cj
		dec	eax
		jnz	short loc_449AAA
		push	offset stru_5E074C.sorted ; lParam
		call	loc_4495A8
		pop	ecx
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_449AAA:				; CODE XREF: .text:00449A96j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; MENUFUNC loc_449AB0
loc_449AB0:				; DATA XREF: .text:0044B817o
					; .data:stru_532074o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		test	eax, eax
		jnz	short loc_449AE8
		cmp	stru_5E074C.hw,	0
		jnz	short loc_449AC7
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_449AC7:				; CODE XREF: .text:00449AC1j
		cmp	stru_5E074C.sorted.n, 0
		jnz	short loc_449AD4
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_449AD4:				; CODE XREF: .text:00449ACEj
		cmp	stru_5E074C.sorted.selected, 0
		jge	short loc_449AE1
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_449AE1:				; CODE XREF: .text:00449ADBj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_449AE8:				; CODE XREF: .text:00449AB8j
		dec	eax
		jnz	short loc_449B07
		push	0		; lParam
		push	1		; wParam
		push	111h		; Msg
		mov	edx, [ebp+8]
		mov	ecx, [edx+224h]
		push	ecx		; hWnd
		call	SendMessageW
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_449B07:				; CODE XREF: .text:00449AE9j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_449B0C(wchar_t *s2, char arglist, char)
loc_449B0C:				; CODE XREF: .text:0044ACE0p
					; .text:0044B2BBp
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 3

loc_449B15:				; CODE XREF: .text:00449B1Dj
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_449B15
		mov	eax, [ebp-4]
		add	esp, 0FFFFF1B4h
		push	ebx
		push	esi
		push	edi
		mov	esi, offset defname
		cmp	dword ptr [ebp+8], 0
		jz	loc_449D96
		mov	eax, [ebp+8]
		cmp	word ptr [eax],	0
		jz	loc_449D96
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_449B50
		mov	[ebp+0Ch], esi

loc_449B50:				; CODE XREF: .text:00449B4Bj
		xor	ebx, ebx
		lea	ecx, [ebp-3C50h]
		lea	edx, [ebp-3228h]
		lea	eax, [ebp-0A28h]

loc_449B64:				; CODE XREF: .text:00449B88j
		mov	word ptr [eax],	0
		add	eax, 208h
		mov	word ptr [edx],	0
		add	edx, 800h
		mov	word ptr [ecx],	0
		add	ecx, 208h
		inc	ebx
		cmp	ebx, 5
		jl	short loc_449B64
		xor	eax, eax
		mov	edi, eax
		mov	ebx, eax
		jmp	loc_449C72
; ---------------------------------------------------------------------------

loc_449B95:				; CODE XREF: .text:00449C7Aj
		push	ebx
		lea	eax, [esi+2]
		push	eax		; format
		lea	edx, [ebp-3E50h]
		push	edx		; buffer
		call	_swprintf
		mov	ecx, edi
		add	esp, 0Ch
		shl	ecx, 6
		lea	eax, [ebp-0A28h]
		add	ecx, edi
		push	esi		; defname
		shl	ecx, 3
		lea	edx, [ebp-3E50h]
		add	ecx, eax
		push	ecx		; _name
		push	edx		; key
		call	Filefromini
		add	esp, 0Ch
		test	eax, eax
		jz	loc_449C71
		mov	eax, edi
		mov	ecx, [ebp+8]
		shl	eax, 6
		lea	edx, [ebp-0A28h]
		add	eax, edi
		push	ecx		; s2
		shl	eax, 3
		add	eax, edx
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_449C71
		push	ebx
		lea	ecx, [esi+20h]
		push	ecx		; format
		lea	eax, [ebp-3E50h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	edx, edi
		shl	edx, 0Bh
		lea	ecx, [ebp-3228h]
		add	edx, ecx
		push	400h		; length
		push	edx		; s
		lea	eax, [ebp-3E50h]
		push	eax		; key
		lea	edx, [esi+3Ch]
		push	edx		; section
		call	Stringfromini
		add	esp, 10h
		push	ebx
		lea	ecx, [esi+4Ch]
		push	ecx		; format
		lea	eax, [ebp-3E50h]
		push	eax		; buffer
		call	_swprintf
		mov	edx, edi
		add	esp, 0Ch
		shl	edx, 6
		lea	ecx, [ebp-3C50h]
		add	edx, edi
		push	400h		; length
		shl	edx, 3
		lea	eax, [ebp-3E50h]
		add	edx, ecx
		push	edx		; s
		lea	edx, [esi+3Ch]
		push	eax		; key
		push	edx		; section
		call	Stringfromini
		add	esp, 10h
		inc	edi

loc_449C71:				; CODE XREF: .text:00449BCEj
					; .text:00449BF5j
		inc	ebx

loc_449C72:				; CODE XREF: .text:00449B90j
		cmp	ebx, 6
		jge	short loc_449C80
		cmp	edi, 5
		jl	loc_449B95

loc_449C80:				; CODE XREF: .text:00449C75j
		mov	ecx, [ebp+8]
		push	ecx		; _name
		lea	eax, [esi+6Ch]
		push	eax		; key
		call	Filetoini
		add	esp, 8
		mov	edx, [ebp+0Ch]
		lea	ecx, [esi+0A2h]
		lea	eax, [esi+88h]
		push	edx		; arglist
		push	ecx		; format
		push	eax		; key
		lea	edx, [esi+3Ch]
		push	edx		; section
		push	0		; file
		call	Writetoini
		add	esp, 14h
		mov	ecx, [ebp+10h]
		lea	eax, [esi+0A2h]
		lea	edx, [esi+0A8h]
		push	ecx		; arglist
		push	eax		; format
		push	edx		; key
		lea	ecx, [esi+3Ch]
		push	ecx		; section
		push	0		; file
		call	Writetoini
		add	esp, 14h
		xor	ebx, ebx

loc_449CD2:				; CODE XREF: .text:00449D90j
		lea	edi, [ebx+1]
		push	edi
		lea	eax, [esi+2]
		push	eax		; format
		lea	edx, [ebp-3E50h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ecx, ebx
		shl	ecx, 6
		add	ecx, ebx
		shl	ecx, 3
		lea	eax, [ebp-0A28h]
		add	ecx, eax
		push	ecx		; _name
		lea	edx, [ebp-3E50h]
		push	edx		; key
		call	Filetoini
		add	esp, 8
		push	edi
		lea	ecx, [esi+20h]
		push	ecx		; format
		lea	eax, [ebp-3E50h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	edx, ebx
		shl	edx, 0Bh
		lea	ecx, [ebp-3228h]
		add	edx, ecx
		push	edx		; arglist
		lea	eax, [esi+0A2h]
		push	eax		; format
		lea	edx, [ebp-3E50h]
		push	edx		; key
		lea	ecx, [esi+3Ch]
		push	ecx		; section
		push	0		; file
		call	Writetoini
		add	esp, 14h
		push	edi
		lea	eax, [esi+4Ch]
		push	eax		; format
		lea	edx, [ebp-3E50h]
		push	edx		; buffer
		call	_swprintf
		mov	ecx, ebx
		add	esp, 0Ch
		shl	ecx, 6
		lea	eax, [ebp-3C50h]
		add	ecx, ebx
		lea	edx, [esi+0A2h]
		shl	ecx, 3
		add	ecx, eax
		lea	eax, [esi+3Ch]
		push	ecx		; arglist
		lea	ecx, [ebp-3E50h]
		push	edx		; format
		push	ecx		; key
		push	eax		; section
		push	0		; file
		call	Writetoini
		add	esp, 14h
		inc	ebx
		cmp	ebx, 5
		jl	loc_449CD2

loc_449D96:				; CODE XREF: .text:00449B34j
					; .text:00449B41j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_449DA0:				; CODE XREF: .text:00451704p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDA4h
		inc	dword_5D4568
		mov	eax, dword_5D4568
		push	eax
		mov	edx, [ebp+8]
		push	edx
		push	offset ollyfile
		push	offset aSAttachII ; format
		lea	ecx, [ebp-208h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 14h
		lea	eax, [ebp-24Ch]
		push	44h		; n
		push	0		; c
		push	eax		; s
		call	_memset
		mov	dword ptr [ebp-24Ch], 44h
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-248h], edx
		mov	[ebp-244h], ecx
		xor	eax, eax
		add	esp, 0Ch
		mov	[ebp-240h], eax
		xor	edx, edx
		mov	dword ptr [ebp-220h], 81h
		mov	word ptr [ebp-21Ch], 0Ah
		mov	word ptr [ebp-21Ah], 0
		mov	[ebp-218h], edx
		lea	ecx, [ebp-25Ch]
		push	ecx		; lpProcessInformation
		lea	eax, [ebp-24Ch]
		push	eax		; lpStartupInfo
		push	0		; lpCurrentDirectory
		push	0		; lpEnvironment
		push	0		; dwCreationFlags
		push	0		; bInheritHandles
		push	0		; lpThreadAttributes
		lea	edx, [ebp-208h]
		push	0		; lpProcessAttributes
		push	edx		; lpCommandLine
		push	0		; lpApplicationName
		call	CreateProcessW
		test	eax, eax
		jnz	short loc_449E5C
		or	eax, 0FFFFFFFFh
		jmp	short loc_449E5E
; ---------------------------------------------------------------------------

loc_449E5C:				; CODE XREF: .text:00449E55j
		xor	eax, eax

loc_449E5E:				; CODE XREF: .text:00449E5Aj
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

olly_reset:				; CODE XREF: .text:0040C662p
					; .text:004106D7p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset pluginlist
		mov	esi, [ebp+8]
		call	loc_49B24C
		call	loc_481964
		push	offset premod	; sd
		call	Destroysorteddata
		pop	ecx
		push	offset module.sorted ; sd
		call	Destroysorteddata
		pop	ecx
		push	offset aqueue	; sd
		call	Destroysorteddata
		pop	ecx
		push	offset thread.sorted ; sd
		call	Destroysorteddata
		pop	ecx
		push	offset memory.sorted ; sd
		call	Destroysorteddata
		pop	ecx
		push	offset win.sorted ; sd
		call	Destroysorteddata
		pop	ecx
		push	offset handles.sorted ;	sd
		call	Destroysorteddata
		pop	ecx
		push	offset stru_5D6528.sorted ; sd
		call	Destroysorteddata
		pop	ecx
		push	offset bpmem.sorted ; sd
		call	Destroysorteddata
		pop	ecx
		push	offset bppage	; sd
		call	Destroysorteddata
		pop	ecx
		push	offset bphard.sorted ; sd
		call	Destroysorteddata
		pop	ecx
		push	offset procdata	; sd
		call	Destroysorteddata
		pop	ecx
		push	offset encaddr	; sd
		call	Destroysorteddata
		pop	ecx
		push	offset patch.sorted ; sd
		call	Destroysorteddata
		pop	ecx
		push	offset watch.sorted ; sd
		call	Destroysorteddata
		pop	ecx
		push	offset source.sorted ; sd
		call	Destroysorteddata
		pop	ecx
		push	offset sehchain.sorted ; sd
		call	Destroysorteddata
		pop	ecx
		xor	eax, eax
		mov	sehchain.custommode, eax
		push	offset _callstk.sorted ; sd
		call	Destroysorteddata
		pop	ecx
		push	offset stru_5D4088 ; pdat
		call	Destroysimpledata
		pop	ecx
		push	offset pdat	; pdat
		call	Destroysimpledata
		pop	ecx
		call	loc_4A8790
		call	loc_438A20
		call	loc_4C60A4
		call	loc_4C4270
		push	7C40h		; n
		push	0		; c
		push	offset rtcond	; s
		call	_memset
		add	esp, 0Ch
		push	224h		; n
		push	0		; c
		push	offset rtprot	; s
		call	_memset
		add	esp, 0Ch
		push	40h		; nmax
		push	offset rtprot.range ; set
		call	Initset
		add	esp, 8
		call	loc_4C599C
		xor	edx, edx
		push	0		; dwBytes
		mov	dword_5CBB98, edx
		call	loc_4041A0
		mov	_name, 0
		pop	ecx
		mov	eax, process
		test	eax, eax
		jz	short loc_449FD8
		push	eax
		call	loc_4C9A48
		pop	ecx

loc_449FD8:				; CODE XREF: .text:00449FCFj
		call	loc_4D42A8
		mov	eax, hObject
		test	eax, eax
		jz	short loc_449FF9
		cmp	eax, 6
		jz	short loc_449FF9
		push	eax		; hObject
		call	CloseHandle
		xor	edx, edx
		mov	hObject, edx

loc_449FF9:				; CODE XREF: .text:00449FE4j
					; .text:00449FE9j
		mov	eax, dword_5D550C
		test	eax, eax
		jz	short loc_44A015
		cmp	eax, 6
		jz	short loc_44A015
		push	eax		; hObject
		call	CloseHandle
		xor	edx, edx
		mov	dword_5D550C, edx

loc_44A015:				; CODE XREF: .text:0044A000j
					; .text:0044A005j
		cmp	process, 0
		jz	short loc_44A047
		xor	ebx, ebx
		jmp	short loc_44A037
; ---------------------------------------------------------------------------

loc_44A022:				; CODE XREF: .text:0044A03Dj
		push	0
		push	esi
		mov	eax, g_pPluginnotify
		push	0
		push	15h
		mov	edx, [eax+ebx*4]
		call	edx
		add	esp, 10h
		inc	ebx

loc_44A037:				; CODE XREF: .text:0044A020j
		cmp	ebx, g_nPluginnotify
		jl	short loc_44A022
		xor	ecx, ecx
		mov	process, ecx

loc_44A047:				; CODE XREF: .text:0044A01Cj
		xor	eax, eax
		push	0A4h		; n
		mov	processid, eax
		xor	edx, edx
		push	0		; c
		push	offset run	; s
		mov	mainthreadid, edx
		call	_memset
		add	esp, 0Ch
		push	0		; newstatus
		call	Setstatus
		pop	ecx
		xor	ecx, ecx
		mov	dword_5D3A3C, ecx
		call	loc_40A170
		xor	eax, eax
		mov	netdbg,	eax
		call	loc_4D42E4
		xor	ebx, ebx
		jmp	short loc_44A0B0
; ---------------------------------------------------------------------------

loc_44A08F:				; CODE XREF: .text:0044A0B3j
		push	ebx		; index
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_44A0AF
		cmp	dword ptr [eax+2C4h], 0
		jz	short loc_44A0AF
		call	dword ptr [eax+2C4h]

loc_44A0AF:				; CODE XREF: .text:0044A09Ej
					; .text:0044A0A7j
		inc	ebx

loc_44A0B0:				; CODE XREF: .text:0044A08Dj
		cmp	ebx, [edi+44h]
		jl	short loc_44A08F
		xor	eax, eax
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44A0BC:				; CODE XREF: .text:0040FEABp
					; .text:0044B1BCp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF4h
		mov	eax, [ebp+8]
		push	eax
		call	olly_reset
		pop	ecx
		xor	edx, edx
		mov	dword_57E66C, edx
		xor	ecx, ecx
		mov	dword_57E670, ecx
		xor	eax, eax
		mov	dword_5D551C, eax
		xor	edx, edx
		mov	dbgbreakpoint, edx
		xor	ecx, ecx
		mov	kiuserexcept, ecx
		xor	eax, eax
		mov	zwcontinue, eax
		xor	edx, edx
		mov	dword_5D5530, edx
		xor	ecx, ecx
		mov	dword_5D5534, ecx
		xor	eax, eax
		mov	dword_5D553C, eax
		xor	edx, edx
		mov	uefilter, edx
		xor	ecx, ecx
		mov	ntqueryinfo, ecx
		xor	eax, eax
		mov	dword_5D5544, eax
		xor	edx, edx
		mov	dword_5D5548, edx
		xor	ecx, ecx
		mov	corexemain, ecx
		xor	eax, eax
		mov	peblock, eax
		xor	edx, edx
		mov	kusershareddata, edx
		xor	ecx, ecx
		mov	dword_5D5614, ecx
		call	loc_438A9C
		push	0		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	40h		; nexp
		push	218h		; itemsize
		push	offset premod	; sd
		call	Createsorteddata
		add	esp, 18h
		push	0		; mode
		push	offset destfunc	; destfunc
		push	offset sortfunc	; sortfunc
		push	40h		; nexp
		push	0FB0h		; itemsize
		push	offset module.sorted ; sd
		call	Createsorteddata
		add	esp, 18h
		push	0		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	40h		; nexp
		push	0Ch		; itemsize
		push	offset aqueue	; sd
		call	Createsorteddata
		add	esp, 18h
		push	0		; mode
		push	offset loc_45BE3C ; destfunc
		push	offset loc_45BD38 ; sortfunc
		push	20h		; nexp
		push	714h		; itemsize
		push	offset thread.sorted ; sd
		call	Createsorteddata
		add	esp, 18h
		push	0		; mode
		push	offset loc_45A288 ; destfunc
		push	offset loc_45A168 ; sortfunc
		push	100h		; nexp
		push	68h		; itemsize
		push	offset memory.sorted ; sd
		call	Createsorteddata
		add	esp, 18h
		push	0		; mode
		push	0		; destfunc
		push	offset loc_4D5B08 ; sortfunc
		push	100h		; nexp
		push	498h		; itemsize
		push	offset win.sorted ; sd
		call	Createsorteddata
		add	esp, 18h
		push	0		; mode
		push	0		; destfunc
		push	offset loc_4DDB24 ; sortfunc
		push	100h		; nexp
		push	468h		; itemsize
		push	offset handles.sorted ;	sd
		call	Createsorteddata
		add	esp, 18h
		push	1		; mode
		push	offset loc_497EF8 ; destfunc
		push	offset loc_497DC4 ; sortfunc
		push	100h		; nexp
		push	1Ch		; itemsize
		push	offset stru_5D6528.sorted ; sd
		call	Createsorteddata
		add	esp, 18h
		push	0		; mode
		push	offset loc_4C74A8 ; destfunc
		push	offset loc_4C73B4 ; sortfunc
		push	100h		; nexp
		push	14h		; itemsize
		push	offset bpmem.sorted ; sd
		call	Createsorteddata
		add	esp, 18h
		push	0		; mode
		push	offset loc_4C74CC ; destfunc
		push	0		; sortfunc
		push	100h		; nexp
		push	14h		; itemsize
		push	offset bppage	; sd
		call	Createsorteddata
		add	esp, 18h
		push	0		; mode
		push	offset loc_4C83FC ; destfunc
		push	offset loc_4C82B8 ; sortfunc
		push	4		; nexp
		push	230h		; itemsize
		push	offset bphard.sorted ; sd
		call	Createsorteddata
		add	esp, 18h
		push	1		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	1000h		; nexp
		push	40h		; itemsize
		push	offset procdata	; sd
		call	Createsorteddata
		add	esp, 18h
		push	4		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	100h		; nexp
		push	8		; itemsize
		push	offset encaddr	; sd
		call	Createsorteddata
		add	esp, 18h
		push	0		; mode
		push	offset loc_4CA914 ; destfunc
		push	offset loc_4CA8A4 ; sortfunc
		push	100h		; nexp
		push	238h		; itemsize
		push	offset source.sorted ; sd
		call	Createsorteddata
		add	esp, 18h
		push	0		; line
		push	0		; path
		push	0		; base
		call	Showsourcecode
		add	esp, 0Ch
		push	0		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	8		; nexp
		push	40Ch		; itemsize
		push	offset patch.sorted ; sd
		call	Createsorteddata
		add	esp, 18h
		push	0		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	40h		; nexp
		push	14h		; itemsize
		push	offset sehchain.sorted ; sd
		call	Createsorteddata
		add	esp, 18h
		push	0		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	100h		; nexp
		push	220h		; itemsize
		push	offset _callstk.sorted ; sd
		call	Createsorteddata
		add	esp, 18h
		push	0		; mode
		push	0		; destfunc
		push	1		; sortfunc
		push	20h		; nexp
		push	20Ch		; itemsize
		push	offset watch.sorted ; sd
		call	Createsorteddata
		add	esp, 18h
		lea	eax, [ebp-20Ch]
		push	20Ch		; n
		push	0		; c
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		lea	edx, [ebp-20Ch]
		push	edx		; item
		push	offset watch.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		call	loc_4A8790
		call	loc_4585F4
		xor	ecx, ecx
		xor	eax, eax
		mov	dword_58616C, ecx
		xor	edx, edx
		mov	dword_586170, eax
		mov	dword_586174, edx
		xor	ecx, ecx
		push	0		; _addr
		mov	dword_586178, ecx
		call	Findmodule
		pop	ecx
		push	0FFFFFFFFh	; _addr
		call	Findmemory
		pop	ecx
		push	0		; threadid
		call	Findthread
		pop	ecx
		push	0		; path
		push	0		; base
		call	Findsource
		add	esp, 8
		call	loc_481AC0
		push	offset aCommon	; "common"
		call	loc_482A7C
		pop	ecx
		xor	eax, eax
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

;int __cdecl sub_44A400(int, int, int)
loc_44A400:				; CODE XREF: .text:0040A91Ep
					; .text:0040AD8Ep ...
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_44A409:				; CODE XREF: .text:0044A411j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_44A409
		mov	eax, [ebp-4]
		add	esp, 0FFFFF814h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	ebx, [ebp+8]
		mov	edi, offset defname
		test	ebx, ebx
		jnz	short loc_44A433
		or	eax, 0FFFFFFFFh
		jmp	loc_44AFBD
; ---------------------------------------------------------------------------

loc_44A433:				; CODE XREF: .text:0044A429j
		xor	edx, edx
		mov	[ebp-4], edx
		push	ebx		; src
		push	104h		; n
		lea	ecx, [ebp-230h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	_imp__PathUnquoteSpacesW, 0
		jz	short loc_44A463
		lea	eax, [ebp-230h]
		push	eax
		call	_imp__PathUnquoteSpacesW

loc_44A463:				; CODE XREF: .text:0044A454j
		cmp	word ptr [ebp-230h], 0
		jnz	short loc_44A475
		or	eax, 0FFFFFFFFh
		jmp	loc_44AFBD
; ---------------------------------------------------------------------------

loc_44A475:				; CODE XREF: .text:0044A46Bj
		mov	word ptr [ebp-438h], 0
		mov	word ptr [ebp-0E40h], 0
		mov	word ptr [ebp-1048h], 0
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-8], edx
		mov	[ebp-10h], ecx
		lea	eax, [ebp-1448h]
		lea	edx, [ebp-230h]
		push	eax		; ext
		push	0		; _name
		push	0		; dir
		push	0		; drive
		push	edx		; path
		call	__wfnsplit
		add	esp, 14h
		lea	ecx, a_lnk_0
		push	ecx		; s2
		lea	eax, [ebp-1448h]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_44A5E5
		lea	edx, [ebp-24h]
		push	edx		; ppv
		push	offset riid	; riid
		push	1		; dwClsContext
		push	0		; pUnkOuter
		push	offset rclsid	; rclsid
		call	CoCreateInstance
		test	eax, eax
		jl	loc_44A5B8
		lea	ecx, [ebp-28h]
		push	ecx
		push	offset stru_579B00
		mov	eax, [ebp-24h]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx]
		test	eax, eax
		jl	loc_44A5AF
		push	0
		lea	ecx, [ebp-230h]
		push	ecx
		mov	eax, [ebp-28h]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+14h]
		test	eax, eax
		jl	loc_44A5A6
		push	0
		mov	ecx, hwollymain
		push	ecx
		mov	eax, [ebp-24h]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+4Ch]
		test	eax, eax
		jl	short loc_44A5A6
		push	0
		push	0
		push	104h
		lea	ecx, [ebp-438h]
		push	ecx
		mov	eax, [ebp-24h]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+0Ch]
		test	eax, eax
		jge	short loc_44A562
		mov	word ptr [ebp-438h], 0

loc_44A562:				; CODE XREF: .text:0044A557j
		push	400h
		lea	ecx, [ebp-0E40h]
		push	ecx
		mov	eax, [ebp-24h]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+28h]
		test	eax, eax
		jge	short loc_44A584
		mov	word ptr [ebp-0E40h], 0

loc_44A584:				; CODE XREF: .text:0044A579j
		push	104h
		lea	ecx, [ebp-1048h]
		push	ecx
		mov	eax, [ebp-24h]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+20h]
		test	eax, eax
		jge	short loc_44A5A6
		mov	word ptr [ebp-1048h], 0

loc_44A5A6:				; CODE XREF: .text:0044A520j
					; .text:0044A53Aj ...
		mov	ecx, [ebp-28h]
		push	ecx
		mov	eax, [ecx]
		call	dword ptr [eax+8]

loc_44A5AF:				; CODE XREF: .text:0044A506j
		mov	edx, [ebp-24h]
		push	edx
		mov	ecx, [edx]
		call	dword ptr [ecx+8]

loc_44A5B8:				; CODE XREF: .text:0044A4EDj
		cmp	word ptr [ebp-438h], 0
		jnz	loc_44A690
		push	ebx		; arglist
		lea	eax, aUnableToExtr_1
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		or	eax, 0FFFFFFFFh
		jmp	loc_44AFBD
; ---------------------------------------------------------------------------

loc_44A5E5:				; CODE XREF: .text:0044A4CEj
		lea	edx, a_pif_1
		push	edx		; s2
		lea	ecx, [ebp-1448h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_44A624
		lea	eax, [ebp-230h]
		push	eax		; arglist
		lea	edx, aProgramInforma
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		or	eax, 0FFFFFFFFh
		jmp	loc_44AFBD
; ---------------------------------------------------------------------------

loc_44A624:				; CODE XREF: .text:0044A5FDj
		lea	edx, [ebp-20h]
		lea	ecx, [ebp-438h]
		push	edx		; lpFilePart
		push	ecx		; lpBuffer
		lea	eax, a_exe_3
		push	104h		; nBufferLength
		push	eax		; lpExtension
		lea	edx, [ebp-230h]
		push	edx		; lpFileName
		push	0		; lpPath
		call	SearchPathW
		test	eax, eax
		jnz	short loc_44A672
		lea	ecx, [ebp-230h]
		push	ecx		; arglist
		lea	eax, aUnableToLoca_0
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		or	eax, 0FFFFFFFFh
		jmp	loc_44AFBD
; ---------------------------------------------------------------------------

loc_44A672:				; CODE XREF: .text:0044A64Bj
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_44A690
		mov	edx, [ebp+0Ch]
		lea	ecx, [ebp-0E40h]
		push	edx		; src
		push	400h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_44A690:				; CODE XREF: .text:0044A5C0j
					; .text:0044A676j
		cmp	_imp__PathCanonicalizeW, 0
		jz	short loc_44A6C8
		lea	eax, [ebp-438h]
		lea	edx, [ebp-2260h]
		push	eax		; src
		push	507h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebp-2260h]
		push	ecx		; _DWORD
		lea	eax, [ebp-438h]
		push	eax		; _DWORD
		call	_imp__PathCanonicalizeW

loc_44A6C8:				; CODE XREF: .text:0044A697j
		xor	ebx, ebx
		lea	eax, aRb_5
		push	eax		; mode
		lea	edx, [ebp-438h]
		push	edx		; path
		call	__wfopen
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_44A6EB
		mov	ebx, 1

loc_44A6EB:				; CODE XREF: .text:0044A6E4j
		test	ebx, ebx
		jnz	short loc_44A70D
		push	esi		; stream
		push	40h		; n
		push	1		; size
		lea	eax, [ebp-26A8h]
		push	eax		; ptr
		call	_fread
		add	esp, 10h
		cmp	eax, 40h
		jz	short loc_44A70D
		mov	ebx, 1

loc_44A70D:				; CODE XREF: .text:0044A6EDj
					; .text:0044A706j
		test	ebx, ebx
		jnz	short loc_44A721
		cmp	word ptr [ebp-26A8h], 5A4Dh
		jz	short loc_44A721
		mov	ebx, 2

loc_44A721:				; CODE XREF: .text:0044A70Fj
					; .text:0044A71Aj
		test	ebx, ebx
		jnz	short loc_44A740
		push	0		; whence
		mov	eax, [ebp-266Ch]
		push	eax		; offset
		push	esi		; stream
		call	_fseek
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_44A740
		mov	ebx, 1

loc_44A740:				; CODE XREF: .text:0044A723j
					; .text:0044A739j
		test	ebx, ebx
		jnz	short loc_44A75F
		push	esi		; stream
		push	4		; n
		push	1		; size
		lea	eax, [ebp-14h]
		push	eax		; ptr
		call	_fread
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_44A75F
		mov	ebx, 1

loc_44A75F:				; CODE XREF: .text:0044A742j
					; .text:0044A758j
		test	ebx, ebx
		jnz	short loc_44A781
		push	4		; n
		lea	eax, aPe_0
		push	eax		; s2
		lea	edx, [ebp-14h]
		push	edx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_44A781
		mov	ebx, 2

loc_44A781:				; CODE XREF: .text:0044A761j
					; .text:0044A77Aj
		test	ebx, ebx
		jnz	short loc_44A7A3
		push	esi		; stream
		push	14h		; n
		push	1		; size
		lea	eax, [ebp-26BCh]
		push	eax		; ptr
		call	_fread
		add	esp, 10h
		cmp	eax, 14h
		jz	short loc_44A7A3
		mov	ebx, 1

loc_44A7A3:				; CODE XREF: .text:0044A783j
					; .text:0044A79Cj
		test	ebx, ebx
		jnz	short loc_44A7C5
		cmp	word ptr [ebp-26BCh], 14Ch
		jz	short loc_44A7B7
		mov	ebx, 2

loc_44A7B7:				; CODE XREF: .text:0044A7B0j
		test	byte ptr [ebp-26AAh], 2
		jnz	short loc_44A7C5
		mov	ebx, 2

loc_44A7C5:				; CODE XREF: .text:0044A7A5j
					; .text:0044A7BEj
		test	ebx, ebx
		jnz	short loc_44A836
		cmp	word ptr [ebp-26ACh], 0E0h
		jnz	short loc_44A836
		push	esi		; stream
		push	0E0h		; n
		push	1		; size
		lea	eax, [ebp-279Ch]
		push	eax		; ptr
		call	_fread
		add	esp, 10h
		cmp	eax, 0E0h
		jnz	short loc_44A836
		cmp	word ptr [ebp-2758h], 3
		jnz	short loc_44A80C
		mov	dword ptr [ebp-10h], 10h
		mov	dword ptr [ebp-8], 1
		jmp	short loc_44A81C
; ---------------------------------------------------------------------------

loc_44A80C:				; CODE XREF: .text:0044A7FAj
		cmp	dword ptr [ebp-26CCh], 0
		jz	short loc_44A81C
		mov	dword ptr [ebp-8], 2

loc_44A81C:				; CODE XREF: .text:0044A80Aj
					; .text:0044A813j
		cmp	dword ptr [ebp-277Ch], 1000h
		jnb	short loc_44A836
		cmp	VersionInformation.dwPlatformId, 2
		jz	short loc_44A836
		mov	ebx, 3

loc_44A836:				; CODE XREF: .text:0044A7C7j
					; .text:0044A7D2j ...
		test	esi, esi
		jz	short loc_44A841
		push	esi		; stream
		call	_fclose
		pop	ecx

loc_44A841:				; CODE XREF: .text:0044A838j
		cmp	ebx, 1
		jnz	short loc_44A86B
		lea	eax, [ebp-438h]
		push	eax		; arglist
		lea	edx, aUnableToOpen_0
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		or	eax, 0FFFFFFFFh
		jmp	loc_44AFBD
; ---------------------------------------------------------------------------

loc_44A86B:				; CODE XREF: .text:0044A844j
		cmp	ebx, 2
		jnz	short loc_44A8CC
		lea	edx, [ebp-438h]
		push	edx
		lea	ecx,aFileSIsProbabl
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-1850h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		push	2124h		; uType
		lea	edx, aNotAValidPeFil
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; lpCaption
		lea	ecx, [ebp-1850h]
		push	ecx		; lpText
		mov	eax, hwollymain
		push	eax		; hWnd
		call	MessageBoxW
		mov	ebx, eax
		cmp	ebx, 6
		jz	loc_44A981
		or	eax, 0FFFFFFFFh
		jmp	loc_44AFBD
; ---------------------------------------------------------------------------

loc_44A8CC:				; CODE XREF: .text:0044A86Ej
		cmp	ebx, 3
		jnz	short loc_44A929
		lea	edx, [ebp-438h]
		push	edx
		lea	ecx, aFileSProbablyWillNotRunUnd
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-1850h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		push	2124h		; uType
		lea	edx, aSuspiciousPeFi
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; lpCaption
		lea	ecx, [ebp-1850h]
		push	ecx		; lpText
		mov	eax, hwollymain
		push	eax		; hWnd
		call	MessageBoxW
		mov	ebx, eax
		cmp	ebx, 6
		jz	short loc_44A981
		or	eax, 0FFFFFFFFh
		jmp	loc_44AFBD
; ---------------------------------------------------------------------------

loc_44A929:				; CODE XREF: .text:0044A8CFj
		test	byte ptr [ebp-26A9h], 20h
		jz	short loc_44A981
		lea	edx, [ebp-438h]
		push	edx		; arglist
		lea	ecx, aFileSIsADll_Wi
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, aRequestToLoadD
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6CC ; cond
		call	Condyesno
		add	esp, 10h
		mov	ebx, eax
		cmp	ebx, 6
		jz	short loc_44A971
		or	eax, 0FFFFFFFFh
		jmp	loc_44AFBD
; ---------------------------------------------------------------------------

loc_44A971:				; CODE XREF: .text:0044A967j
		mov	dword ptr [ebp-4], 1
		mov	word ptr [ebp-0E40h], 0

loc_44A981:				; CODE XREF: .text:0044A8BEj
					; .text:0044A91Fj ...
		push	edi		; defname
		lea	edx, [ebp-640h]
		push	edx		; _name
		lea	ecx, aExecutable0_0
		push	ecx		; key
		call	Filefromini
		add	esp, 0Ch
		push	1		; confirm
		call	Closeprocess
		pop	ecx
		test	eax, eax
		jz	short loc_44A9A9
		or	eax, 0FFFFFFFFh
		jmp	loc_44AFBD
; ---------------------------------------------------------------------------

loc_44A9A9:				; CODE XREF: .text:0044A99Fj
		xor	edx, edx
		mov	ecx, [ebp-4]
		mov	dword_5D4568, edx
		xor	eax, eax
		mov	rundll,	ecx
		mov	dword_5D3A48, eax
		cmp	rundll,	0
		jz	short loc_44A9DB
		call	loc_4CC3BC
		test	eax, eax
		jge	short loc_44A9DB
		or	eax, 0FFFFFFFFh
		jmp	loc_44AFBD
; ---------------------------------------------------------------------------

loc_44A9DB:				; CODE XREF: .text:0044A9C8j
					; .text:0044A9D1j
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_44AA02
		mov	edx, [ebp+10h]
		cmp	word ptr [edx],	0
		jz	short loc_44AA02
		mov	ecx, [ebp+10h]
		lea	eax, [ebp-1048h]
		push	ecx		; src
		push	104h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_44AA02:				; CODE XREF: .text:0044A9DFj
					; .text:0044A9E8j
		cmp	word ptr [ebp-1048h], 0
		jnz	short loc_44AA51
		push	0		; ext
		push	0		; _name
		lea	edx, [ebp-1248h]
		push	edx		; dir
		lea	ecx, [ebp-1Ch]
		push	ecx		; drive
		lea	eax, [ebp-438h]
		push	eax		; path
		call	__wfnsplit
		add	esp, 14h
		lea	edx, [ebp-1248h]
		lea	ecx, [ebp-1Ch]
		lea	eax, [ebp-1048h]
		push	0		; ext
		push	0		; _name
		push	edx		; dir
		push	ecx		; drive
		push	eax		; path
		call	__wfnmerge
		mov	dword ptr [ebp-0Ch], 1
		add	esp, 14h
		jmp	short loc_44AA56
; ---------------------------------------------------------------------------

loc_44AA51:				; CODE XREF: .text:0044AA0Aj
		xor	edx, edx
		mov	[ebp-0Ch], edx

loc_44AA56:				; CODE XREF: .text:0044AA4Fj
		push	44h		; n
		push	0		; c
		lea	ecx, [ebp-27E0h]
		push	ecx		; s
		call	_memset
		mov	dword ptr [ebp-27E0h], 44h
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-27DCh], eax
		mov	[ebp-27D8h], edx
		xor	ecx, ecx
		xor	edx, edx
		mov	[ebp-27D4h], ecx
		xor	eax, eax
		mov	dword ptr [ebp-27B4h], 81h
		mov	word ptr [ebp-27B0h], 0Ah
		mov	word ptr [ebp-27AEh], 0
		mov	dword_5D4080, edx
		add	esp, 0Ch
		cmp	dword_5D4080, 0
		mov	[ebp-27ACh], eax
		jz	loc_44AB9A
		cmp	rundll,	0
		jnz	loc_44AB9A
		lea	ecx, [ebp-1850h]
		push	ecx
		lea	eax, [ebp-438h]
		push	eax
		call	loc_4D4114
		add	esp, 8
		test	eax, eax
		jnz	loc_44AB9A
		lea	edx, [ebp-1850h]
		push	edx
		call	loc_4D415C
		pop	ecx
		test	eax, eax
		jnz	loc_44AB9A
		mov	netdbg,	1
		lea	ecx, [ebp-27F0h]
		push	ecx		; int
		lea	eax, [ebp-27E0h]
		push	eax		; int
		lea	edx, [ebp-1048h] ; int
		push	edx		; int
		push	0		; int
		push	4000023h	; int
		lea	ecx, [ebp-0E40h] ; int
		push	ecx		; int
		lea	eax, [ebp-438h]	; int
		push	eax		; int
		call	loc_4D4228
		add	esp, 1Ch
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_44AB77
		xor	eax, eax
		mov	netdbg,	eax
		call	loc_4D42A8
		lea	edx, [ebp-438h]
		push	edx		; arglist
		lea	ecx, aUnableToStart_
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		or	eax, 0FFFFFFFFh
		jmp	loc_44AFBD
; ---------------------------------------------------------------------------

loc_44AB77:				; CODE XREF: .text:0044AB44j
		push	0Ch		; itemsize
		push	offset stru_5D4088 ; pdat
		call	Createsimpledata
		add	esp, 8
		push	0Ch		; itemsize
		push	offset pdat	; pdat
		call	Createsimpledata
		add	esp, 8
		jmp	loc_44ACC1
; ---------------------------------------------------------------------------

loc_44AB9A:				; CODE XREF: .text:0044AABEj
					; .text:0044AACBj ...
		cmp	rundll,	0
		jz	short loc_44ABC7
		lea	edx, [ebp-438h]
		lea	ecx, aSLoaddll_exeS
		push	edx
		push	offset ollydir
		push	ecx		; format
		lea	eax, [ebp-2260h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	short loc_44AC14
; ---------------------------------------------------------------------------

loc_44ABC7:				; CODE XREF: .text:0044ABA1j
		cmp	word ptr [ebp-0E40h], 0
		jz	short loc_44ABF7
		lea	edx, [ebp-0E40h]
		push	edx
		lea	ecx, [ebp-438h]
		push	ecx
		lea	eax, $CTW0("\=%s\= %s")
		push	eax		; format
		lea	edx, [ebp-2260h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	short loc_44AC14
; ---------------------------------------------------------------------------

loc_44ABF7:				; CODE XREF: .text:0044ABCFj
		lea	ecx, [ebp-438h]
		push	ecx
		lea	eax, $CTW0("\=%s\=")
		push	eax		; format
		lea	edx, [ebp-2260h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_44AC14:				; CODE XREF: .text:0044ABC5j
					; .text:0044ABF5j
		xor	ecx, ecx
		mov	netdbg,	ecx
		mov	esi, 1
		cmp	dword_5D4564, 0
		jz	short loc_44AC33
		cmp	_imp__DebugActiveProcessStop, 0
		jnz	short loc_44AC34

loc_44AC33:				; CODE XREF: .text:0044AC28j
		inc	esi

loc_44AC34:				; CODE XREF: .text:0044AC31j
		mov	eax, [ebp-10h]
		or	eax, 4000020h
		or	esi, eax
		xor	ebx, ebx
		jmp	short loc_44AC62
; ---------------------------------------------------------------------------

loc_44AC42:				; CODE XREF: .text:0044AC68j
		lea	eax, [ebp-27E0h]
		lea	edx, [ebp-2260h]
		push	eax
		push	esi
		mov	ecx, g_pPluginnotify
		push	edx
		push	14h
		mov	eax, [ecx+ebx*4]
		call	eax
		add	esp, 10h
		inc	ebx

loc_44AC62:				; CODE XREF: .text:0044AC40j
		cmp	ebx, g_nPluginnotify
		jl	short loc_44AC42
		lea	edx, [ebp-27F0h]
		lea	ecx, [ebp-27E0h]
		push	edx		; lpProcessInformation
		push	ecx		; lpStartupInfo
		lea	eax, [ebp-1048h]
		lea	edx, [ebp-2260h]
		push	eax		; lpCurrentDirectory
		push	0		; lpEnvironment
		push	esi		; dwCreationFlags
		push	0		; bInheritHandles
		push	0		; lpThreadAttributes
		push	0		; lpProcessAttributes
		push	edx		; lpCommandLine
		push	0		; lpApplicationName
		call	CreateProcessW
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_44ACC1
		lea	eax, [ebp-438h]
		push	eax		; arglist
		lea	edx, aUnableToStartF
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		or	eax, 0FFFFFFFFh
		jmp	loc_44AFBD
; ---------------------------------------------------------------------------

loc_44ACC1:				; CODE XREF: .text:0044AB95j
					; .text:0044AC9Aj
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_44ACCB
		mov	edx, edi
		jmp	short loc_44ACD1
; ---------------------------------------------------------------------------

loc_44ACCB:				; CODE XREF: .text:0044ACC5j
		lea	edx, [ebp-1048h]

loc_44ACD1:				; CODE XREF: .text:0044ACC9j
		push	edx		; char
		lea	eax, [ebp-0E40h]
		push	eax		; arglist
		lea	ecx, [ebp-438h]
		push	ecx		; s2
		call	loc_449B0C
		add	esp, 0Ch
		lea	eax, [ebp-438h]
		push	eax		; src
		push	104h		; n
		push	offset executable ; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edx, [ebp+0Ch]
		push	edx		; src
		push	400h		; n
		push	offset arguments ; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, [ebp+10h]
		push	ecx		; src
		push	104h		; n
		push	offset word_5D4FB8 ; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-438h]
		push	eax		; s2
		lea	edx, [ebp-640h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_44AD62
		call	loc_4191C0
		call	loc_477AD0
		push	0		; lp
		push	0		; wp
		push	48Bh		; msg
		call	Broadcast
		add	esp, 0Ch

loc_44AD62:				; CODE XREF: .text:0044AD45j
		push	edi		; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		cmp	dword ptr [ebp-8], 1
		jnz	short loc_44AD96
		lea	ecx, [ebp-438h]
		push	ecx		; arglist
		lea	eax, aConsoleApplica
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; _addr
		call	Message
		add	esp, 0Ch
		jmp	short loc_44ADDC
; ---------------------------------------------------------------------------

loc_44AD96:				; CODE XREF: .text:0044AD73j
		cmp	dword ptr [ebp-8], 2
		jnz	short loc_44ADBD
		lea	edx, [ebp-438h]
		push	edx		; arglist
		lea	ecx, a_netApplicatio
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; _addr
		call	Message
		add	esp, 0Ch
		jmp	short loc_44ADDC
; ---------------------------------------------------------------------------

loc_44ADBD:				; CODE XREF: .text:0044AD9Aj
		lea	eax, [ebp-438h]
		push	eax		; arglist
		lea	edx, $CTW0("File \-%s\-")
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; _addr
		call	Message
		add	esp, 0Ch

loc_44ADDC:				; CODE XREF: .text:0044AD94j
					; .text:0044ADBBj
		cmp	word ptr [ebp-0E40h], 0
		jz	short loc_44AE54
		lea	ecx, aArguments_1
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-2668h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		lea	eax, [ebp-0E40h]
		push	eax		; s
		call	_wcslen
		pop	ecx
		push	eax		; nsrc
		mov	ecx, 100h
		lea	edx, [ebp-0E40h]
		sub	ecx, ebx
		push	edx		; src
		lea	eax, [ebp-2668h]
		add	ebx, ebx
		add	ebx, eax
		push	ecx		; ndest
		push	ebx		; dest
		call	Squeezename
		add	esp, 10h
		lea	edx, [ebp-2668h]
		push	edx		; arglist
		lea	ecx, $CTW0("%s")
		push	ecx		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_44AE54:				; CODE XREF: .text:0044ADE4j
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_44AED2
		cmp	word ptr [ebp-1048h], 0
		jz	short loc_44AED2
		lea	eax, aCurrentDirecto
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-2668h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		lea	eax, [ebp-1048h]
		push	eax		; s
		call	_wcslen
		pop	ecx
		push	eax		; nsrc
		mov	ecx, 100h
		lea	edx, [ebp-1048h]
		sub	ecx, ebx
		push	edx		; src
		lea	eax, [ebp-2668h]
		add	ebx, ebx
		add	ebx, eax
		push	ecx		; ndest
		push	ebx		; dest
		call	Squeezename
		add	esp, 10h
		lea	edx, [ebp-2668h]
		push	edx		; arglist
		lea	ecx, $CTW0("%s")
		push	ecx		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_44AED2:				; CODE XREF: .text:0044AE58j
					; .text:0044AE62j
		lea	eax, [ebp-1448h]
		lea	edx, [ebp-438h]
		push	eax		; ext
		push	offset _name	; _name
		push	0		; dir
		push	0		; drive
		push	edx		; path
		call	__wfnsplit
		add	esp, 14h
		push	offset _name	; arglist
		call	loc_482A7C
		pop	ecx
		call	loc_482278
		lea	ecx, [ebp-1448h]
		push	ecx		; src
		push	offset _name	; dest
		call	_wcscat
		add	esp, 8
		lea	eax, $CTW0("%s - %s")
		lea	edx, [ebp-2668h]
		push	offset _name
		push	offset ClassName
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		lea	ecx, [ebp-2668h]
		push	ecx		; lpString
		mov	eax, hwollymain
		push	eax		; hWnd
		call	SetWindowTextW
		mov	eax, [ebp-27F0h]
		mov	hObject, eax
		mov	edx, [ebp-27ECh]
		mov	dword_5D550C, edx
		mov	edx, eax
		mov	process, edx
		cmp	edx, 6
		jnz	short loc_44AF72
		xor	eax, eax
		mov	process, eax

loc_44AF72:				; CODE XREF: .text:0044AF69j
		mov	ecx, [ebp-27E8h]
		mov	eax, [ebp-27E4h]
		mov	processid, ecx
		mov	mainthreadid, eax
		mov	skipsystembp, 1
		mov	dword_5D5610, 1
		push	1		; newstatus
		call	Setstatus
		pop	ecx
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		call	loc_40A170
		xor	eax, eax

loc_44AFBD:				; CODE XREF: .text:0044A42Ej
					; .text:0044A470j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; BOOL __stdcall loc_44AFC4(HWND, LPARAM)
loc_44AFC4:				; DATA XREF: .text:00449A61o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF0h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	edi, edi
		jnz	short loc_44AFE1
		xor	eax, eax
		jmp	loc_44B0FD
; ---------------------------------------------------------------------------

loc_44AFE1:				; CODE XREF: .text:0044AFD8j
		push	ebx		; hWnd
		call	IsWindowVisible
		test	eax, eax
		jnz	short loc_44AFF5
		mov	eax, 1
		jmp	loc_44B0FD
; ---------------------------------------------------------------------------

loc_44AFF5:				; CODE XREF: .text:0044AFE9j
		push	ebx		; hWnd
		call	GetParent
		mov	esi, eax
		call	GetDesktopWindow
		cmp	esi, eax
		jnz	short loc_44B010
		mov	eax, 1
		jmp	loc_44B0FD
; ---------------------------------------------------------------------------

loc_44B010:				; CODE XREF: .text:0044B004j
		push	100h		; nMaxCount
		lea	edx, [ebp-210h]
		push	edx		; lpString
		push	ebx		; hWnd
		call	GetWindowTextW
		test	eax, eax
		jnz	short loc_44B030
		mov	eax, 1
		jmp	loc_44B0FD
; ---------------------------------------------------------------------------

loc_44B030:				; CODE XREF: .text:0044B024j
		push	0FFFFFFF0h	; nIndex
		push	ebx		; hWnd
		call	GetWindowLongW
		test	eax, 80000000h
		lea	ecx, [ebp-0Ch]
		setz	dl
		and	edx, 1
		mov	[ebp-4], edx
		push	ecx		; lpdwProcessId
		push	ebx		; hWnd
		call	GetWindowThreadProcessId
		test	esi, esi
		jnz	short loc_44B05D
		mov	dword ptr [ebp-8], 1
		jmp	short loc_44B076
; ---------------------------------------------------------------------------

loc_44B05D:				; CODE XREF: .text:0044B052j
		lea	eax, [ebp-10h]
		push	eax		; lpdwProcessId
		push	esi		; hWnd
		call	GetWindowThreadProcessId
		mov	edx, [ebp-10h]
		cmp	edx, [ebp-0Ch]
		setnz	cl
		and	ecx, 1
		mov	[ebp-8], ecx

loc_44B076:				; CODE XREF: .text:0044B05Bj
		xor	esi, esi
		jmp	short loc_44B0F2
; ---------------------------------------------------------------------------

loc_44B07A:				; CODE XREF: .text:0044B0F6j
		push	esi		; index
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_44B0F1
		mov	eax, [ebx]
		cmp	eax, [ebp-0Ch]
		jnz	short loc_44B0F1
		cmp	word ptr [ebx+414h], 0
		jz	short loc_44B0B3
		test	byte ptr [ebx+0Ah], 0Ch
		jz	short loc_44B0A7
		cmp	dword ptr [ebp-4], 0
		jz	short loc_44B0F8

loc_44B0A7:				; CODE XREF: .text:0044B09Fj
		test	byte ptr [ebx+0Ah], 8
		jz	short loc_44B0B3
		cmp	dword ptr [ebp-8], 0
		jz	short loc_44B0F8

loc_44B0B3:				; CODE XREF: .text:0044B099j
					; .text:0044B0ABj
		lea	edx, [ebp-210h]
		lea	ecx, [ebx+414h]
		push	edx		; src
		push	100h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		and	dword ptr [ebx+8], 0FFF3FFFFh
		cmp	dword ptr [ebp-4], 0
		jz	short loc_44B0E2
		or	dword ptr [ebx+8], 40000h

loc_44B0E2:				; CODE XREF: .text:0044B0D9j
		cmp	dword ptr [ebp-8], 0
		jz	short loc_44B0F8
		or	dword ptr [ebx+8], 80000h
		jmp	short loc_44B0F8
; ---------------------------------------------------------------------------

loc_44B0F1:				; CODE XREF: .text:0044B088j
					; .text:0044B08Fj
		inc	esi

loc_44B0F2:				; CODE XREF: .text:0044B078j
		mov	eax, edi
		cmp	esi, [eax]
		jl	short loc_44B07A

loc_44B0F8:				; CODE XREF: .text:0044B0A5j
					; .text:0044B0B1j ...
		mov	eax, 1

loc_44B0FD:				; CODE XREF: .text:0044AFDCj
					; .text:0044AFF0j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_44B108(DWORD dwProcessId)
loc_44B108:				; CODE XREF: .text:004101A7p
					; .text:0044BDC7p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF5A4h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		push	1		; confirm
		call	Closeprocess
		pop	ecx
		test	eax, eax
		jz	short loc_44B12B
		or	eax, 0FFFFFFFFh
		jmp	loc_44B424
; ---------------------------------------------------------------------------

loc_44B12B:				; CODE XREF: .text:0044B121j
		push	44h		; n
		push	0		; c
		lea	edx, [ebp-0A5Ch]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		push	0		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	80h		; nexp
		push	614h		; itemsize
		lea	ecx, [ebp-0A5Ch]
		push	ecx		; sd
		call	Createsorteddata
		add	esp, 18h
		lea	eax, [ebp-0A5Ch]
		push	eax		; lParam
		call	loc_4495A8
		pop	ecx
		mov	ebx, [ebp-0A4Ch]
		xor	eax, eax
		jmp	short loc_44B17F
; ---------------------------------------------------------------------------

loc_44B174:				; CODE XREF: .text:0044B185j
		cmp	esi, [ebx]
		jz	short loc_44B187
		inc	eax
		add	ebx, 614h

loc_44B17F:				; CODE XREF: .text:0044B172j
		cmp	eax, [ebp-0A5Ch]
		jl	short loc_44B174

loc_44B187:				; CODE XREF: .text:0044B176j
		cmp	eax, [ebp-0A5Ch]
		jl	short loc_44B1BA
		push	esi
		push	esi		; arglist
		push	offset aUnableToLoca_1 ; "Unable to locate process with	identifie"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 0Ch
		lea	edx, [ebp-0A5Ch]
		push	edx		; sd
		call	Destroysorteddata
		pop	ecx
		or	eax, 0FFFFFFFFh
		jmp	loc_44B424
; ---------------------------------------------------------------------------

loc_44B1BA:				; CODE XREF: .text:0044B18Dj
		push	0
		call	loc_44A0BC
		pop	ecx
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		push	2E000h		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		xor	edx, edx
		mov	netdbg,	edx
		push	esi		; dwProcessId
		call	DebugActiveProcess
		test	eax, eax
		jnz	short loc_44B276
		call	GetLastError
		mov	edi, eax
		lea	eax, [ebp-0A18h]
		push	eax		; _name
		push	edi		; value
		push	offset aErrcode_0 ; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_44B23C
		push	offset aUnknownMeaning ; "unknown meaning"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-0A18h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_44B23C:				; CODE XREF: .text:0044B21Aj
		lea	ecx, [ebp-0A18h]
		add	ebx, 214h
		push	ecx
		push	edi
		push	esi
		push	esi
		push	ebx		; arglist
		push	offset aUnableToAttach ; "Unable to attach to process '%s' with I"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 18h
		lea	eax, [ebp-0A5Ch]
		push	eax		; sd
		call	Destroysorteddata
		pop	ecx
		or	eax, 0FFFFFFFFh
		jmp	loc_44B424
; ---------------------------------------------------------------------------

loc_44B276:				; CODE XREF: .text:0044B1FAj
		cmp	_imp__PathCanonicalizeW, 0
		jz	short loc_44B292
		lea	edx, [ebx+0Ch]
		lea	ecx, [ebp-210h]
		push	edx		; _DWORD
		push	ecx		; _DWORD
		call	_imp__PathCanonicalizeW
		jmp	short loc_44B2AA
; ---------------------------------------------------------------------------

loc_44B292:				; CODE XREF: .text:0044B27Dj
		lea	eax, [ebx+0Ch]
		lea	edx, [ebp-210h]
		push	eax		; src
		push	104h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_44B2AA:				; CODE XREF: .text:0044B290j
		push	offset defname	; char
		push	offset defname	; arglist
		lea	ecx, [ebp-210h]
		push	ecx		; s2
		call	loc_449B0C
		add	esp, 0Ch
		lea	eax, [ebp-610h]
		lea	edx, [ebp-410h]
		lea	ecx, [ebp-8]
		push	eax		; ext
		push	offset _name	; _name
		push	edx		; dir
		push	ecx		; drive
		lea	eax, [ebp-210h]
		push	eax		; path
		call	__wfnsplit
		add	esp, 14h
		lea	edx, [ebp-410h]
		lea	ecx, [ebp-8]
		push	0		; ext
		push	0		; _name
		push	edx		; dir
		push	ecx		; drive
		push	offset word_5D4FB8 ; path
		call	__wfnmerge
		add	esp, 14h
		lea	eax, [ebp-210h]
		push	eax		; s2
		push	offset executable ; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_44B338
		call	loc_4191C0
		call	loc_477AD0
		push	0		; lp
		push	0		; wp
		push	48Bh		; msg
		call	Broadcast
		add	esp, 0Ch

loc_44B338:				; CODE XREF: .text:0044B31Bj
		push	offset defname	; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		add	ebx, 0Ch
		push	ebx		; arglist
		push	offset aAttachedToS ; "Attached	to '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; _addr
		call	Message
		add	esp, 0Ch
		push	offset _name	; arglist
		call	loc_482A7C
		pop	ecx
		call	loc_482278
		lea	eax, [ebp-610h]
		push	eax		; src
		push	offset _name	; dest
		call	_wcscat
		add	esp, 8
		push	offset _name
		push	offset ClassName
		push	offset aSS_3	; format
		lea	edx, [ebp-0A18h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		lea	ecx, [ebp-0A18h]
		push	ecx		; lpString
		mov	eax, hwollymain
		push	eax		; hWnd
		call	SetWindowTextW
		lea	edx, [ebp-210h]
		push	edx		; src
		push	104h		; n
		push	offset executable ; dest
		call	StrcopyW
		mov	arguments, 0
		xor	ecx, ecx
		mov	hObject, ecx
		mov	process, ecx
		xor	eax, eax
		add	esp, 0Ch
		mov	dword_5D550C, eax
		mov	processid, esi
		xor	edx, edx
		lea	eax, [ebp-0A5Ch]
		mov	mainthreadid, edx
		mov	skipsystembp, 1
		mov	dword_5D5610, 1
		push	eax		; sd
		call	Destroysorteddata
		pop	ecx
		call	loc_40A170
		xor	eax, eax

loc_44B424:				; CODE XREF: .text:0044B126j
					; .text:0044B1B5j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_44B42C(wchar_t *buffer, int, int, int, int, int)
loc_44B42C:				; DATA XREF: .text:0044BD4Ao
		push	ebp
		mov	ebp, esp
		push	ebx
		xor	eax, eax
		mov	edx, [ebp+1Ch]
		mov	ebx, [ebp+18h]
		add	edx, 4		; switch 8 cases
		cmp	edx, 7
		ja	loc_44B580	; jumptable 0044B444 default case
		jmp	ds:off_44B44B[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_44B44B	dd offset loc_44B580	; DATA XREF: .text:0044B444r
		dd offset loc_44B580	; jump table for switch	statement
		dd offset loc_44B580
		dd offset loc_44B580
		dd offset loc_44B470
		dd offset loc_44B48A
		dd offset loc_44B4CE
		dd offset loc_44B54B
; ---------------------------------------------------------------------------
		jmp	loc_44B580	; jumptable 0044B444 default case
; ---------------------------------------------------------------------------

loc_44B470:				; CODE XREF: .text:0044B444j
					; DATA XREF: .text:off_44B44Bo
		mov	eax, [ebx]	; jumptable 0044B444 case 0
		push	eax
		push	eax
		push	offset a08xU__0	; format
		mov	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	loc_44B580	; jumptable 0044B444 default case
; ---------------------------------------------------------------------------

loc_44B48A:				; CODE XREF: .text:0044B444j
					; DATA XREF: .text:off_44B44Bo
		lea	ecx, [ebx+214h]	; jumptable 0044B444 case 1
		push	ecx		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		test	byte ptr [ebx+0Ah], 2
		jz	short loc_44B4B6
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 1
		jmp	loc_44B580	; jumptable 0044B444 default case
; ---------------------------------------------------------------------------

loc_44B4B6:				; CODE XREF: .text:0044B4A6j
		test	byte ptr [ebx+0Ah], 1
		jz	loc_44B580	; jumptable 0044B444 default case
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 2
		jmp	loc_44B580	; jumptable 0044B444 default case
; ---------------------------------------------------------------------------

loc_44B4CE:				; CODE XREF: .text:0044B444j
					; DATA XREF: .text:off_44B44Bo
		test	byte ptr [ebx+0Ah], 1 ;	jumptable 0044B444 case	2
		jz	short loc_44B4EC
		push	offset aOllydbg_0 ; "<OllyDbg>"
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_44B529
; ---------------------------------------------------------------------------

loc_44B4EC:				; CODE XREF: .text:0044B4D2j
		test	byte ptr [ebx+0Ah], 2
		jz	short loc_44B511
		push	offset aDebuggee ; "<Debuggee>"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_44B529
; ---------------------------------------------------------------------------

loc_44B511:				; CODE XREF: .text:0044B4F0j
		lea	ecx, [ebx+414h]
		push	ecx		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_44B529:				; CODE XREF: .text:0044B4EAj
					; .text:0044B50Fj
		test	byte ptr [ebx+0Ah], 2
		jz	short loc_44B53A
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 1
		jmp	short loc_44B580 ; jumptable 0044B444 default case
; ---------------------------------------------------------------------------

loc_44B53A:				; CODE XREF: .text:0044B52Dj
		test	byte ptr [ebx+0Ah], 1
		jz	short loc_44B580 ; jumptable 0044B444 default case
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 2
		jmp	short loc_44B580 ; jumptable 0044B444 default case
; ---------------------------------------------------------------------------

loc_44B54B:				; CODE XREF: .text:0044B444j
					; DATA XREF: .text:off_44B44Bo
		lea	eax, [ebx+0Ch]	; jumptable 0044B444 case 3
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		test	byte ptr [ebx+0Ah], 2
		jz	short loc_44B571
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 1
		jmp	short loc_44B580 ; jumptable 0044B444 default case
; ---------------------------------------------------------------------------

loc_44B571:				; CODE XREF: .text:0044B564j
		test	byte ptr [ebx+0Ah], 1
		jz	short loc_44B580 ; jumptable 0044B444 default case
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 2

loc_44B580:				; CODE XREF: .text:0044B43Ej
					; .text:0044B444j ...
		pop	ebx		; jumptable 0044B444 default case
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
