.code

unknown_libname_1:			; DATA XREF: .data:stru_50D5CCo
					; .data:stru_50D77Co ...
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_408AC4:				; DATA XREF: .data:stru_50D41Co
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		mov	edx, [ebp+0Ch]
		cmp	ischild, 0
		jnz	short loc_408ADF
		cmp	dword ptr word_57E468+1F8h, 0
		jnz	short loc_408AE3

loc_408ADF:				; CODE XREF: .text:00408AD4j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408AE3:				; CODE XREF: .text:00408ADDj
		cmp	eax, 7D2h
		jnz	short loc_408AFF
		push	offset aEnglish	; "English"
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_408B1D
; ---------------------------------------------------------------------------

loc_408AFF:				; CODE XREF: .text:00408AE8j
		sub	eax, 7D2h
		dec	eax
		shl	eax, 7
		add	eax, offset word_57DE68
		push	eax		; src
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_408B1D:				; CODE XREF: .text:00408AFDj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408B24:				; DATA XREF: .data:stru_50D5CCo
		push	ebp
		mov	ebp, esp
		cmp	ischild, 0
		jz	short loc_408B34
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408B34:				; CODE XREF: .text:00408B2Ej
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_408B3C:				; DATA XREF: .data:stru_50D5CCo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF8h
		cmp	ischild, 0
		jz	short loc_408B52
		xor	eax, eax
		jmp	short loc_408B7D
; ---------------------------------------------------------------------------

loc_408B52:				; CODE XREF: .text:00408B4Cj
		push	104h		; length
		lea	edx, [ebp-208h]
		push	edx		; s
		push	offset key	; "Executable[0]"
		push	offset _section	; "History"
		call	Stringfromini
		add	esp, 10h
		test	eax, eax
		jnz	short loc_408B78
		xor	eax, eax
		jmp	short loc_408B7D
; ---------------------------------------------------------------------------

loc_408B78:				; CODE XREF: .text:00408B72j
		mov	eax, 1

loc_408B7D:				; CODE XREF: .text:00408B50j
					; .text:00408B76j
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_408B84:				; DATA XREF: .data:stru_50D5CCo
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		cmp	_imp__DebugActiveProcessStop, 0
		jnz	short loc_408B97
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408B97:				; CODE XREF: .text:00408B91j
		cmp	netdbg,	0
		jz	short loc_408BA4
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408BA4:				; CODE XREF: .text:00408B9Ej
		cmp	eax, 838h
		jnz	short loc_408BB8
		cmp	ischild, 0
		jz	short loc_408BB8
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408BB8:				; CODE XREF: .text:00408BA9j
					; .text:00408BB2j
		cmp	eax, 839h
		jnz	short loc_408BCC
		cmp	ischild, 0
		jnz	short loc_408BCC
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408BCC:				; CODE XREF: .text:00408BBDj
					; .text:00408BC6j
		mov	eax, run.status
		test	eax, eax
		jz	short loc_408BDA
		cmp	eax, 13h
		jnz	short loc_408BDE

loc_408BDA:				; CODE XREF: .text:00408BD3j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408BDE:				; CODE XREF: .text:00408BD8j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_408BE8(int, wchar_t *, int)
loc_408BE8:				; DATA XREF: .data:stru_50D5CCo
					; .data:stru_50D95Co ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF1ECh
		cmp	ischild, 0
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		jz	short loc_408C07
		xor	eax, eax
		jmp	loc_408E05
; ---------------------------------------------------------------------------

loc_408C07:				; CODE XREF: .text:00408BFEj
		cmp	ebx, 905h
		jnz	short loc_408C27
		cmp	executable, 0
		jz	short loc_408C23
		mov	eax, 1
		jmp	loc_408E05
; ---------------------------------------------------------------------------

loc_408C23:				; CODE XREF: .text:00408C17j
		xor	esi, esi
		jmp	short loc_408C2F
; ---------------------------------------------------------------------------

loc_408C27:				; CODE XREF: .text:00408C0Dj
		mov	esi, ebx
		sub	esi, 83Eh

loc_408C2F:				; CODE XREF: .text:00408C25j
		test	esi, esi
		jl	short loc_408C38
		cmp	esi, 6
		jl	short loc_408C3F

loc_408C38:				; CODE XREF: .text:00408C31j
		xor	eax, eax
		jmp	loc_408E05
; ---------------------------------------------------------------------------

loc_408C3F:				; CODE XREF: .text:00408C36j
		push	esi
		push	offset aExecutableI ; format
		lea	edx, [ebp-0E14h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		push	$CTW0("") ; defname
		lea	ecx, [ebp-20Ch]
		push	ecx		; _name
		lea	eax, [ebp-0E14h]
		push	eax		; key
		call	Filefromini
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_408C7A
		xor	eax, eax
		jmp	loc_408E05
; ---------------------------------------------------------------------------

loc_408C7A:				; CODE XREF: .text:00408C71j
		cmp	dword_57E7D8, 0
		jz	short loc_408CBC
		push	esi
		push	offset aArgumentsI ; "Arguments[%i]"
		lea	edx, [ebp-0E14h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-0C14h]
		lea	eax, [ebp-0E14h]
		push	400h		; length
		push	ecx		; s
		push	eax		; key
		push	offset _section	; "History"
		call	Stringfromini
		add	esp, 10h
		mov	edi, eax
		jmp	short loc_408CBE
; ---------------------------------------------------------------------------

loc_408CBC:				; CODE XREF: .text:00408C81j
		xor	edi, edi

loc_408CBE:				; CODE XREF: .text:00408CBAj
		cmp	ebx, 905h
		jz	loc_408E00
		cmp	_imp__PathCompactPathExW, 0
		jz	short loc_408CF2
		push	0
		push	80h
		lea	eax, [ebp-20Ch]
		push	eax
		lea	edx, [ebp-414h]
		push	edx
		call	_imp__PathCompactPathExW
		test	eax, eax
		jnz	short loc_408D70

loc_408CF2:				; CODE XREF: .text:00408CD1j
		lea	ecx, [ebp-20Ch]
		push	ecx		; s
		call	_wcslen
		pop	ecx
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 80h
		jge	short loc_408D28
		lea	eax, [ebp-20Ch]
		lea	edx, [ebp-414h]
		push	eax		; src
		push	104h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_408D70
; ---------------------------------------------------------------------------

loc_408D28:				; CODE XREF: .text:00408D09j
		push	offset a___	; "..."
		push	104h		; n
		lea	ecx, [ebp-414h]
		push	ecx		; dest
		call	StrcopyW
		mov	ebx, eax
		mov	edx, [ebp-4]
		mov	eax, ebx
		add	edx, edx
		add	eax, eax
		add	esp, 0Ch
		add	edx, eax
		lea	ecx, [ebp-30Ch]
		add	edx, ecx
		lea	ecx, [ebp-414h]
		push	edx		; src
		mov	edx, 104h
		sub	edx, ebx
		add	eax, ecx
		push	edx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_408D70:				; CODE XREF: .text:00408CF0j
					; .text:00408D26j
		push	20h		; c
		lea	eax, [ebp-414h]
		push	eax		; s
		call	_wcschr
		add	esp, 8
		test	eax, eax
		jnz	short loc_408DA3
		lea	eax, [ebp-414h]
		push	eax
		inc	esi
		push	esi
		push	offset aIS	; "&%i %s"
		mov	eax, [ebp+0Ch]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		mov	ebx, eax
		jmp	short loc_408DBF
; ---------------------------------------------------------------------------

loc_408DA3:				; CODE XREF: .text:00408D83j
		lea	eax, [ebp-414h]
		push	eax
		inc	esi
		push	esi
		push	offset aIS_3	; "&%i \"%s\""
		mov	eax, [ebp+0Ch]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		mov	ebx, eax

loc_408DBF:				; CODE XREF: .text:00408DA1j
		test	edi, edi
		jle	short loc_408E00
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		push	offset asc_50ED34 ; " "
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	ecx, [ebp-0C14h]
		mov	eax, 100h
		push	edi		; nsrc
		sub	eax, ebx
		push	ecx		; src
		push	eax		; ndest
		add	ebx, ebx
		add	ebx, [ebp+0Ch]
		push	ebx		; dest
		call	Squeezename
		add	esp, 10h

loc_408E00:				; CODE XREF: .text:00408CC4j
					; .text:00408DC1j
		mov	eax, 1

loc_408E05:				; CODE XREF: .text:00408C02j
					; .text:00408C1Ej ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408E0C:				; DATA XREF: .data:stru_50DBE4o
		push	ebp
		mov	ebp, esp
		xor	eax, eax
		cmp	g_nPluginoptions, 0
		jz	short loc_408E1B
		inc	eax

loc_408E1B:				; CODE XREF: .text:00408E18j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_408E20:				; DATA XREF: .data:stru_50DC74o
		push	ebp
		mov	ebp, esp
		mov	eax, 2
		cmp	dword_57FE44, 0
		jnz	short loc_408E32
		dec	eax

loc_408E32:				; CODE XREF: .text:00408E2Fj
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408E34:				; DATA XREF: .data:stru_50DC74o
		push	ebp
		mov	ebp, esp
		push	ecx
		mov	eax, hwclient
		test	eax, eax
		jnz	short loc_408E46
		xor	eax, eax
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408E46:				; CODE XREF: .text:00408E3Fj
		xor	edx, edx
		mov	[ebp-4], edx
		lea	ecx, [ebp-4]
		push	ecx		; lParam
		push	offset EnumFunc	; lpEnumFunc
		push	eax		; hWndParent
		call	EnumChildWindows
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_408E65
		xor	eax, eax
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408E65:				; CODE XREF: .text:00408E5Ej
		mov	eax, 1
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_408E70:				; DATA XREF: .data:stru_50DC74o
		push	ebp
		mov	ebp, esp
		push	ecx
		xor	eax, eax
		mov	[ebp-4], eax
		lea	edx, [ebp-4]
		push	edx		; lParam
		push	offset EnumFunc	; lpEnumFunc
		mov	ecx, hwclient
		push	ecx		; hWndParent
		call	EnumChildWindows
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_408E99
		xor	eax, eax
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408E99:				; CODE XREF: .text:00408E92j
		mov	eax, 1
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_408EA4:				; DATA XREF: .data:stru_50D77Co
		push	ebp
		mov	ebp, esp
		cmp	VersionInformation.dwPlatformId, 2
		jnz	short loc_408EB9
		cmp	_imp__GetDiskFreeSpaceExW, 0
		jnz	short loc_408EBD

loc_408EB9:				; CODE XREF: .text:00408EAEj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408EBD:				; CODE XREF: .text:00408EB7j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408EC4:				; DATA XREF: .data:stru_50D95Co
					; .data:stru_50DA94o ...
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		cmp	eax, 907h
		jg	short loc_408F14
		jz	loc_409113
		add	eax, 0FFFFF703h	; switch 10 cases
		cmp	eax, 9
		ja	loc_409135	; jumptable 00408EE5 default case
		jmp	ds:off_408EEC[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_408EEC	dd offset loc_408F3A	; DATA XREF: .text:00408EE5r
		dd offset loc_409061	; jump table for switch	statement
		dd offset loc_408F96
		dd offset loc_408F96
		dd offset loc_408F96
		dd offset loc_408F96
		dd offset loc_40901E
		dd offset loc_409135
		dd offset loc_4090B7
		dd offset loc_4090B7
; ---------------------------------------------------------------------------

loc_408F14:				; CODE XREF: .text:00408ECFj
		add	eax, 0FFFFF69Dh
		sub	eax, 5
		jb	short loc_408F96 ; jumptable 00408EE5 cases 2303-2306
		jz	loc_408FAA
		dec	eax
		jz	loc_408FD1
		dec	eax
		sub	eax, 2
		jb	loc_409001
		jmp	loc_409135	; jumptable 00408EE5 default case
; ---------------------------------------------------------------------------

loc_408F3A:				; CODE XREF: .text:00408EE5j
					; DATA XREF: .text:off_408EECo
		cmp	run.status, 12h	; jumptable 00408EE5 case 2301
		jz	short loc_408F8F
		cmp	run.status, 4
		jnz	short loc_408F55
		cmp	thread.sorted.n, 1
		jg	short loc_408F8F

loc_408F55:				; CODE XREF: .text:00408F4Aj
		cmp	run.status, 7
		jz	short loc_408F8F
		cmp	run.status, 8
		jz	short loc_408F8F
		cmp	run.status, 9
		jz	short loc_408F8F
		cmp	run.status, 0Ah
		jz	short loc_408F8F
		cmp	run.status, 0Eh
		jz	short loc_408F8F
		cmp	run.status, 0Fh
		jnz	loc_409135	; jumptable 00408EE5 default case

loc_408F8F:				; CODE XREF: .text:00408F41j
					; .text:00408F53j ...
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408F96:				; CODE XREF: .text:00408EE5j
					; .text:00408F1Cj
					; DATA XREF: ...
		cmp	run.status, 12h	; jumptable 00408EE5 cases 2303-2306
		jnz	loc_409135	; jumptable 00408EE5 default case
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408FAA:				; CODE XREF: .text:00408F1Ej
		cmp	dword_5CBB98, 0
		jz	loc_409135	; jumptable 00408EE5 default case
		mov	eax, run.status
		cmp	eax, 12h
		jz	short loc_408FCA
		cmp	eax, 13h
		jnz	loc_409135	; jumptable 00408EE5 default case

loc_408FCA:				; CODE XREF: .text:00408FBFj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408FD1:				; CODE XREF: .text:00408F25j
		cmp	dword_5CBB98, 0
		jnz	short loc_408FE7
		cmp	dword_5CBBAC, 0
		jz	loc_409135	; jumptable 00408EE5 default case

loc_408FE7:				; CODE XREF: .text:00408FD8j
		mov	eax, run.status
		cmp	eax, 12h
		jz	short loc_408FFA
		cmp	eax, 13h
		jnz	loc_409135	; jumptable 00408EE5 default case

loc_408FFA:				; CODE XREF: .text:00408FEFj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_409001:				; CODE XREF: .text:00408F2Fj
		mov	eax, run.status
		test	eax, eax
		jz	loc_409135	; jumptable 00408EE5 default case
		cmp	eax, 14h
		jz	loc_409135	; jumptable 00408EE5 default case
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_40901E:				; CODE XREF: .text:00408EE5j
					; DATA XREF: .text:off_408EECo
		cmp	run.status, 12h	; jumptable 00408EE5 case 2307
		jz	short loc_40902B
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_40902B:				; CODE XREF: .text:00409025j
		call	Getcputhreadid
		push	eax		; threadid
		call	Findthread
		pop	ecx
		test	eax, eax
		jnz	short loc_40903F
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_40903F:				; CODE XREF: .text:00409039j
		mov	edx, [eax+330h]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_40905A
		test	byte ptr [eax+0Ah], 30h
		jnz	short loc_40905A
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_40905A:				; CODE XREF: .text:0040904Ej
					; .text:00409054j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_409061:				; CODE XREF: .text:00408EE5j
					; DATA XREF: .text:off_408EECo
		mov	eax, run.status	; jumptable 00408EE5 case 2302
		cmp	eax, 3
		jz	short loc_4090B0
		cmp	eax, 4
		jz	short loc_4090B0
		cmp	eax, 5
		jz	short loc_4090B0
		cmp	eax, 6
		jz	short loc_4090B0
		cmp	eax, 7
		jz	short loc_4090B0
		cmp	eax, 8
		jz	short loc_4090B0
		cmp	eax, 9
		jz	short loc_4090B0
		cmp	eax, 0Ah
		jz	short loc_4090B0
		cmp	eax, 0Eh
		jz	short loc_4090B0
		cmp	eax, 0Fh
		jz	short loc_4090B0
		cmp	eax, 10h
		jz	short loc_4090B0
		cmp	eax, 0Bh
		jz	short loc_4090B0
		cmp	eax, 0Ch
		jz	short loc_4090B0
		cmp	eax, 0Dh
		jnz	loc_409135	; jumptable 00408EE5 default case

loc_4090B0:				; CODE XREF: .text:00409069j
					; .text:0040906Ej ...
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4090B7:				; CODE XREF: .text:00408EE5j
					; DATA XREF: .text:off_408EECo
		mov	eax, run.status	; jumptable 00408EE5 cases 2309,2310
		cmp	eax, 3
		jz	short loc_40910C
		cmp	eax, 4
		jz	short loc_40910C
		cmp	eax, 6
		jz	short loc_40910C
		cmp	eax, 12h
		jz	short loc_40910C
		cmp	eax, 7
		jz	short loc_40910C
		cmp	eax, 8
		jz	short loc_40910C
		cmp	eax, 9
		jz	short loc_40910C
		cmp	eax, 0Ah
		jz	short loc_40910C
		cmp	eax, 0Eh
		jz	short loc_40910C
		cmp	eax, 0Fh
		jz	short loc_40910C
		cmp	eax, 10h
		jz	short loc_40910C
		cmp	eax, 11h
		jz	short loc_40910C
		cmp	eax, 13h
		jz	short loc_40910C
		cmp	eax, 0Bh
		jz	short loc_40910C
		cmp	eax, 0Ch
		jz	short loc_40910C
		cmp	eax, 0Dh
		jnz	short loc_409135 ; jumptable 00408EE5 default case

loc_40910C:				; CODE XREF: .text:004090BFj
					; .text:004090C4j ...
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_409113:				; CODE XREF: .text:00408ED1j
		cmp	_SystemAffinityMask, 1
		jz	short loc_409135 ; jumptable 00408EE5 default case
		cmp	run.status, 0
		jz	short loc_409135 ; jumptable 00408EE5 default case
		cmp	run.status, 13h
		jz	short loc_409135 ; jumptable 00408EE5 default case
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_409135:				; CODE XREF: .text:00408EDFj
					; .text:00408EE5j ...
		xor	eax, eax	; jumptable 00408EE5 default case
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_40913C:				; DATA XREF: .data:stru_50D95Co
		push	ebp
		mov	ebp, esp
		cmp	rundll,	0
		jz	short loc_409158
		cmp	hDlg, 0
		jnz	short loc_409158
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_409158:				; CODE XREF: .text:00409146j
					; .text:0040914Fj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_40915C(int, wchar_t *dst, int)
loc_40915C:				; DATA XREF: .data:stru_50DA94o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		sub	eax, 961h
		jz	short loc_40916E
		dec	eax
		jz	short loc_4091B0
		jmp	short loc_4091C0
; ---------------------------------------------------------------------------

loc_40916E:				; CODE XREF: .text:00409167j
		cmp	dword_5CBB94, 0
		jz	short loc_409191
		push	offset aClearRunTrace ;	"Clear run trace"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, [ebp+0Ch]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		jmp	short loc_4091A9
; ---------------------------------------------------------------------------

loc_409191:				; CODE XREF: .text:00409175j
		push	offset aOpenRunTrace ; "Open run trace"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, [ebp+0Ch]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_4091A9:				; CODE XREF: .text:0040918Fj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4091B0:				; CODE XREF: .text:0040916Aj
		cmp	dword_5CBB94, 0
		jz	short loc_4091C0
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4091C0:				; CODE XREF: .text:0040916Cj
					; .text:004091B7j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4091C4:				; DATA XREF: .data:stru_50DC74o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		cmp	hwclient, 0
		push	ebx
		mov	ebx, [ebp+0Ch]
		jnz	short loc_409241
		call	GetActiveWindow
		test	eax, eax
		jnz	short loc_4091E7
		xor	eax, eax
		jmp	loc_4092A1
; ---------------------------------------------------------------------------

loc_4091E7:				; CODE XREF: .text:004091DEj
		mov	dword ptr [ebp-30h], 2Ch
		lea	edx, [ebp-30h]
		push	edx		; lpwndpl
		push	eax		; hWnd
		call	GetWindowPlacement
		test	eax, eax
		jnz	short loc_409203
		xor	eax, eax
		jmp	loc_4092A1
; ---------------------------------------------------------------------------

loc_409203:				; CODE XREF: .text:004091FAj
		cmp	dword ptr [ebp-28h], 3
		jnz	short loc_409225
		push	offset aRestoreWindow ;	"Restore window"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_40929C
; ---------------------------------------------------------------------------

loc_409225:				; CODE XREF: .text:00409207j
		push	offset aMaximizeWindow ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_40929C
; ---------------------------------------------------------------------------

loc_409241:				; CODE XREF: .text:004091D5j
		lea	edx, [ebp-4]
		push	edx		; lParam
		push	0		; wParam
		push	229h		; Msg
		mov	ecx, hwclient
		push	ecx		; hWnd
		call	SendMessageW
		test	eax, eax
		jnz	short loc_409260
		xor	eax, eax
		jmp	short loc_4092A1
; ---------------------------------------------------------------------------

loc_409260:				; CODE XREF: .text:0040925Aj
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_409282
		push	offset aMaximizeWindow ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_40929C
; ---------------------------------------------------------------------------

loc_409282:				; CODE XREF: .text:00409264j
		push	offset aRestoreWindow ;	"Restore window"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_40929C:				; CODE XREF: .text:00409223j
					; .text:0040923Fj ...
		mov	eax, 1

loc_4092A1:				; CODE XREF: .text:004091E2j
					; .text:004091FEj ...
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4092A8:				; DATA XREF: .data:stru_50DC74o
		push	ebp
		mov	ebp, esp
		push	ecx
		mov	eax, hwclient
		test	eax, eax
		jnz	short loc_4092BA
		xor	eax, eax
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4092BA:				; CODE XREF: .text:004092B3j
		lea	edx, [ebp-4]
		push	edx		; lParam
		push	0		; wParam
		push	229h		; Msg
		push	eax		; hWnd
		call	SendMessageW
		test	eax, eax
		jnz	short loc_4092D4
		xor	eax, eax
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4092D4:				; CODE XREF: .text:004092CDj
		mov	eax, 1
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4092DC(wchar_t *path,	int)
loc_4092DC:				; CODE XREF: .text:0040FD52p
					; .text:0040FD63p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		lea	edx, [ebp-840h]
		push	eax
		add	esp, 0FFFFFDB8h
		lea	eax, [ebp-0A40h]
		push	esi
		push	edi
		push	eax		; ext
		push	edx		; _name
		push	0		; dir
		push	0		; drive
		lea	edi, [ebp-28h]
		mov	ecx, [ebp+8]
		lea	esi, [ebp-18h]
		push	ecx		; path
		call	__wfnsplit
		add	esp, 14h
		cmp	word ptr [ebp-0A40h], 0
		jnz	short loc_409330
		push	offset a_dll	; ".dll"
		lea	eax, [ebp-0A40h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_409330:				; CODE XREF: .text:0040931Aj
		push	0		; ext
		push	0		; _name
		lea	edx, [ebp-638h]
		push	edx		; dir
		lea	ecx, [ebp-8]
		push	ecx		; drive
		push	offset ollyfile	; path
		call	__wfnsplit
		add	esp, 14h
		lea	eax, [ebp-0A40h]
		lea	edx, [ebp-840h]
		lea	ecx, [ebp-638h]
		push	eax		; ext
		push	edx		; _name
		push	ecx		; dir
		lea	eax, [ebp-8]
		push	eax		; drive
		lea	edx, [ebp-438h]
		push	edx		; path
		call	__wfnmerge
		add	esp, 14h
		lea	ecx, [ebp-1048h]
		push	ecx		; version
		lea	eax, [ebp-438h]
		push	eax		; path
		call	Getexeversion
		add	esp, 8
		test	eax, eax
		jz	loc_4095E3
		cmp	VersionInformation.dwPlatformId, 2
		jz	short loc_4093F4
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4093F4
		lea	edx, [ebp-0A40h]
		lea	ecx, [ebp-840h]
		push	edx
		push	ecx
		push	offset aDynamicLinkL_2 ; "Dynamic link library '%s%s' that reside"...
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-0E48h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		push	24h		; uType
		push	offset aWrongDll ; "Wrong DLL"
		call	_T
		pop	ecx
		push	eax		; lpCaption
		lea	edx, [ebp-0E48h]
		push	edx		; lpText
		mov	ecx, hwollymain
		push	ecx		; hWnd
		call	MessageBoxW
		cmp	eax, 6
		jz	loc_4095D7

loc_4093F4:				; CODE XREF: .text:00409399j
					; .text:0040939Fj
		xor	eax, eax
		lea	edx, [esi+0Ch]
		mov	[esi+0Ch], eax
		mov	[esi+8], eax
		mov	[esi+4], eax
		mov	[esi], eax
		push	edx
		lea	ecx, [esi+8]
		push	ecx
		lea	eax, [esi+4]
		push	eax
		push	esi
		lea	edx, [ebp-1048h]
		push	offset aI_I_I_I	; "%i.%i.%i.%i"
		push	edx		; buffer
		call	_swscanf
		add	esp, 18h
		push	offset systemdir ; src
		lea	ecx, [ebp-230h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8
		lea	eax, [ebp-840h]
		push	eax		; src
		lea	edx, [ebp-230h]
		push	edx		; dest
		call	_wcscat
		add	esp, 8
		lea	ecx, [ebp-0A40h]
		push	ecx		; src
		lea	eax, [ebp-230h]
		push	eax		; dest
		call	_wcscat
		add	esp, 8
		lea	edx, [ebp-1248h]
		push	edx		; version
		lea	ecx, [ebp-230h]
		push	ecx		; path
		call	Getexeversion
		add	esp, 8
		test	eax, eax
		jnz	short loc_4094F7
		push	104h		; uSize
		lea	eax, [ebp-230h]
		push	eax		; lpBuffer
		call	GetWindowsDirectoryW
		cmp	word ptr [ebp+eax*2-230h], 5Ch
		jz	short loc_4094AD
		mov	word ptr [ebp+eax*2-230h], 5Ch
		inc	eax
		mov	word ptr [ebp+eax*2-230h], 0

loc_4094AD:				; CODE XREF: .text:00409496j
		lea	edx, [ebp-840h]
		push	edx		; src
		lea	ecx, [ebp-230h]
		push	ecx		; dest
		call	_wcscat
		add	esp, 8
		lea	eax, [ebp-0A40h]
		push	eax		; src
		lea	edx, [ebp-230h]
		push	edx		; dest
		call	_wcscat
		add	esp, 8
		lea	ecx, [ebp-1248h]
		push	ecx		; version
		lea	eax, [ebp-230h]
		push	eax		; path
		call	Getexeversion
		add	esp, 8
		test	eax, eax
		jz	loc_4095E3

loc_4094F7:				; CODE XREF: .text:0040947Aj
		xor	edx, edx
		lea	eax, [edi+0Ch]
		mov	[edi+0Ch], edx
		mov	[edi+8], edx
		mov	[edi+4], edx
		mov	[edi], edx
		push	eax
		lea	ecx, [edi+8]
		push	ecx
		lea	eax, [edi+4]
		push	eax
		push	edi
		lea	edx, [ebp-1248h]
		push	offset aI_I_I_I	; "%i.%i.%i.%i"
		push	edx		; buffer
		call	_swscanf
		add	esp, 18h
		xor	eax, eax
		mov	ecx, [esi]
		mov	edx, [edi]
		cmp	ecx, edx
		jge	short loc_409536
		add	eax, 3E8h
		jmp	short loc_40953F
; ---------------------------------------------------------------------------

loc_409536:				; CODE XREF: .text:0040952Dj
		cmp	ecx, edx
		jle	short loc_40953F
		sub	eax, 3E8h

loc_40953F:				; CODE XREF: .text:00409534j
					; .text:00409538j
		mov	ecx, [esi+4]
		mov	edx, [edi+4]
		cmp	ecx, edx
		jge	short loc_40954E
		add	eax, 64h
		jmp	short loc_409555
; ---------------------------------------------------------------------------

loc_40954E:				; CODE XREF: .text:00409547j
		cmp	ecx, edx
		jle	short loc_409555
		sub	eax, 64h

loc_409555:				; CODE XREF: .text:0040954Cj
					; .text:00409550j
		mov	ecx, [esi+8]
		mov	edx, [edi+8]
		cmp	ecx, edx
		jge	short loc_409564
		add	eax, 0Ah
		jmp	short loc_40956B
; ---------------------------------------------------------------------------

loc_409564:				; CODE XREF: .text:0040955Dj
		cmp	ecx, edx
		jle	short loc_40956B
		sub	eax, 0Ah

loc_40956B:				; CODE XREF: .text:00409562j
					; .text:00409566j
		mov	ecx, [esi+0Ch]
		mov	edx, [edi+0Ch]
		cmp	ecx, edx
		jge	short loc_409578
		inc	eax
		jmp	short loc_40957D
; ---------------------------------------------------------------------------

loc_409578:				; CODE XREF: .text:00409573j
		cmp	ecx, edx
		jle	short loc_40957D
		dec	eax

loc_40957D:				; CODE XREF: .text:00409576j
					; .text:0040957Aj
		test	eax, eax
		jle	short loc_4095E3
		lea	eax, [ebp-1248h]
		push	eax
		lea	eax, [ebp-1048h]
		push	eax
		lea	edx, [ebp-0A40h]
		push	edx
		lea	ecx, [ebp-840h]
		push	ecx
		push	offset aDynamicLinkLib ; "Dynamic link library '%s%s' that reside"...
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-0E48h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 18h
		lea	edx, [ebp-0E48h]
		mov	ecx, hwollymain
		push	24h		; uType
		push	offset Caption	; "Old DLL"
		push	edx		; lpText
		push	ecx		; hWnd
		call	MessageBoxW
		cmp	eax, 6
		jnz	short loc_4095E3

loc_4095D7:				; CODE XREF: .text:004093EEj
		lea	eax, [ebp-438h]
		push	eax		; lpFileName
		call	DeleteFileW

loc_4095E3:				; CODE XREF: .text:0040938Cj
					; .text:004094F1j ...
		pop	edi
		pop	esi
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4095EC(int, wchar_t *s1)
loc_4095EC:				; CODE XREF: .text:0040C896p
					; .text:0040CB68p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBF0h
		cmp	VersionInformation.dwPlatformId, 2
		push	ebx
		push	esi
		push	edi
		jnz	short loc_40961C
		cmp	_imp__EnumProcessModules, 0
		jz	short loc_40961C
		cmp	_imp__GetModuleInformation, 0
		jz	short loc_40961C
		cmp	_imp__GetModuleFileNameExW, 0
		jnz	short loc_409624

loc_40961C:				; CODE XREF: .text:004095FFj
					; .text:00409608j ...
		or	eax, 0FFFFFFFFh
		jmp	loc_409723
; ---------------------------------------------------------------------------

loc_409624:				; CODE XREF: .text:0040961Aj
		lea	edx, [ebp-4]
		lea	ecx, [ebp-410h]
		push	edx		; _DWORD
		push	400h		; _DWORD
		push	ecx		; _DWORD
		mov	eax, hTargetProcessHandle
		push	eax		; _DWORD
		call	_imp__EnumProcessModules
		test	eax, eax
		jnz	short loc_40964C
		or	eax, 0FFFFFFFFh
		jmp	loc_409723
; ---------------------------------------------------------------------------

loc_40964C:				; CODE XREF: .text:00409642j
		mov	edi, [ebp-4]
		shr	edi, 2
		cmp	edi, 100h
		jle	short loc_40965F
		mov	edi, 100h

loc_40965F:				; CODE XREF: .text:00409658j
		xor	esi, esi
		lea	ebx, [ebp-410h]
		cmp	edi, esi
		jle	loc_409720

loc_40966F:				; CODE XREF: .text:0040971Aj
		lea	eax, [ebp-10h]
		push	0Ch		; _DWORD
		push	eax		; _DWORD
		mov	ecx, hTargetProcessHandle
		mov	edx, [ebx]
		push	edx		; _DWORD
		push	ecx		; _DWORD
		call	_imp__GetModuleInformation
		test	eax, eax
		jz	loc_409714
		mov	eax, [ebp-10h]
		cmp	eax, [ebp+8]
		ja	short loc_409714
		add	eax, [ebp-0Ch]
		cmp	eax, [ebp+8]
		jbe	short loc_409714
		push	104h		; _DWORD
		mov	eax, hTargetProcessHandle
		mov	edx, [ebp+0Ch]
		push	edx		; _DWORD
		mov	ecx, [ebx]
		push	ecx		; _DWORD
		push	eax		; _DWORD
		call	_imp__GetModuleFileNameExW
		test	eax, eax
		jnz	short loc_4096BE
		or	eax, 0FFFFFFFFh
		jmp	short loc_409723
; ---------------------------------------------------------------------------

loc_4096BE:				; CODE XREF: .text:004096B7j
		mov	edx, offset hTargetProcessHandle
		mov	eax, [ebp-10h]
		cmp	edx, eax
		jb	short loc_4096DA
		mov	edx, offset hTargetProcessHandle
		add	eax, [ebp-0Ch]
		cmp	edx, eax
		jnb	short loc_4096DA
		xor	eax, eax
		jmp	short loc_409723
; ---------------------------------------------------------------------------

loc_4096DA:				; CODE XREF: .text:004096C8j
					; .text:004096D4j
		push	104h		; n
		push	offset plugindir ; src
		call	StrlenW
		add	esp, 8
		test	eax, eax
		jle	short loc_40970D
		push	eax		; maxlen
		push	offset plugindir ; s2
		mov	edx, [ebp+0Ch]
		push	edx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_40970D
		mov	eax, 1
		jmp	short loc_409723
; ---------------------------------------------------------------------------

loc_40970D:				; CODE XREF: .text:004096EEj
					; .text:00409704j
		mov	eax, 2
		jmp	short loc_409723
; ---------------------------------------------------------------------------

loc_409714:				; CODE XREF: .text:00409687j
					; .text:00409693j ...
		inc	esi
		add	ebx, 4
		cmp	edi, esi
		jg	loc_40966F

loc_409720:				; CODE XREF: .text:00409669j
		or	eax, 0FFFFFFFFh

loc_409723:				; CODE XREF: .text:0040961Fj
					; .text:00409647j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __stdcall	FONTENUMPROCW(const LOGFONTW *,	const TEXTMETRICW *, DWORD, LPARAM)
FONTENUMPROCW:				; DATA XREF: .text:0040E34Co
		push	ebp
		mov	ebp, esp
		mov	dword_5D7BC0, 1
		mov	eax, 1
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

; int __stdcall	FONTENUMPROCW_0(const LOGFONTW *, const	TEXTMETRICW *, DWORD, LPARAM)
FONTENUMPROCW_0:			; DATA XREF: .text:0040E36Bo
		push	ebp
		mov	ebp, esp
		test	byte ptr [ebp+10h], 1
		jz	short loc_409757
		mov	dword_5D7BC4, 1

loc_409757:				; CODE XREF: .text:0040974Bj
		mov	eax, 1
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------

loc_409760:				; CODE XREF: .text:0040D6A7p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE4Ch
		cmp	VersionInformation.dwPlatformId, 1
		push	ebx
		push	esi
		push	edi
		jz	short loc_40977C
		xor	eax, eax
		jmp	loc_409A85
; ---------------------------------------------------------------------------

loc_40977C:				; CODE XREF: .text:00409773j
		push	offset LibFileName ; "UNICOWS.DLL"
		call	LoadLibraryA
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_4097AA
		push	10h		; uType
		push	offset aWindows95Unico ; "Windows 95 UNICODE alert"
		push	offset Text	; "OllyDbg 2 is	a UNICODE application and "...
		push	0		; hWnd
		call	MessageBoxA
		or	eax, 0FFFFFFFFh
		jmp	loc_409A85
; ---------------------------------------------------------------------------

loc_4097AA:				; CODE XREF: .text:0040978Dj
		xor	edx, edx
		mov	[ebp-20h], edx
		push	0		; lpModuleName
		call	GetModuleHandleW
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4097C6
		mov	dword ptr [ebp-8], 400000h

loc_4097C6:				; CODE XREF: .text:004097BDj
		push	40h		; ucb
		mov	ecx, [ebp-8]
		push	ecx		; lp
		lea	eax, [ebp-0ACh]
		push	eax		; dest
		call	loc_40420C
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_409A60
		cmp	word ptr [ebp-0ACh], 5A4Dh
		jnz	loc_409A60
		mov	edx, [ebp-8]
		add	edx, [ebp-70h]
		mov	[ebp-0Ch], edx
		push	4		; ucb
		mov	ecx, [ebp-0Ch]
		push	ecx		; lp
		lea	eax, [ebp-18h]
		push	eax		; dest
		call	loc_40420C
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_409A60
		cmp	dword ptr [ebp-18h], 4550h
		jnz	loc_409A60
		add	dword ptr [ebp-0Ch], 4
		push	14h		; ucb
		mov	edx, [ebp-0Ch]
		push	edx		; lp
		lea	ecx, [ebp-0C0h]
		push	ecx		; dest
		call	loc_40420C
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_409A60
		cmp	word ptr [ebp-0C0h], 14Ch
		jnz	loc_409A60
		add	dword ptr [ebp-0Ch], 14h
		movzx	eax, word ptr [ebp-0B0h]
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 60h
		jb	loc_409A60
		cmp	dword ptr [ebp-10h], 0E0h
		jnb	short loc_4098AA
		push	0E0h		; n
		push	0		; c
		lea	edx, [ebp-1A0h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		mov	ecx, [ebp-10h]
		push	ecx		; ucb
		mov	eax, [ebp-0Ch]
		push	eax		; lp
		lea	edx, [ebp-1A0h]
		push	edx		; dest
		call	loc_40420C
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_409A60
		jmp	short loc_4098CA
; ---------------------------------------------------------------------------

loc_4098AA:				; CODE XREF: .text:00409871j
		push	0E0h		; ucb
		mov	ecx, [ebp-0Ch]
		push	ecx		; lp
		lea	eax, [ebp-1A0h]
		push	eax		; dest
		call	loc_40420C
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_409A60

loc_4098CA:				; CODE XREF: .text:004098A8j
		mov	edx, [ebp-138h]
		mov	[ebp-1Ch], edx
		mov	ecx, [ebp-134h]
		mov	[ebp-10h], ecx
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_409A60
		cmp	dword ptr [ebp-10h], 0
		jz	loc_409A60
		xor	eax, eax
		mov	[ebp-14h], eax
		jmp	loc_409A4D
; ---------------------------------------------------------------------------

loc_4098FA:				; CODE XREF: .text:00409A56j
		push	14h		; ucb
		mov	edx, [ebp-8]
		add	edx, [ebp-1Ch]
		add	edx, [ebp-14h]
		push	edx		; lp
		lea	ecx, [ebp-1B4h]
		push	ecx		; dest
		call	loc_40420C
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_409A60
		cmp	dword ptr [ebp-1A8h], 0
		jz	loc_409A5C
		cmp	dword ptr [ebp-1A4h], 0
		jz	loc_409A5C
		xor	edi, edi
		mov	ebx, [ebp-8]
		add	ebx, [ebp-1A4h]

loc_409942:				; CODE XREF: .text:00409961j
		push	4		; ucb
		push	ebx		; lp
		lea	eax, [ebp-4]
		push	eax		; dest
		call	loc_40420C
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jnz	short loc_409963
		cmp	dword ptr [ebp-4], 0
		jz	short loc_409963
		inc	edi
		add	ebx, 4
		jmp	short loc_409942
; ---------------------------------------------------------------------------

loc_409963:				; CODE XREF: .text:00409955j
					; .text:0040995Bj
		test	edi, edi
		jz	loc_409A49
		cmp	dword ptr [ebp-1B4h], 0
		jz	short loc_40997C
		mov	eax, [ebp-1B4h]
		jmp	short loc_409982
; ---------------------------------------------------------------------------

loc_40997C:				; CODE XREF: .text:00409972j
		mov	eax, [ebp-1A4h]

loc_409982:				; CODE XREF: .text:0040997Aj
		add	eax, [ebp-8]
		mov	ebx, edi
		shl	ebx, 2
		mov	[ebp-4], eax
		push	ebx		; dwBytes
		push	40h		; uFlags
		call	GlobalAlloc
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-20h], 0
		jz	loc_409A60
		push	ebx		; ucb
		mov	eax, [ebp-4]
		push	eax		; lp
		mov	edx, [ebp-20h]
		push	edx		; dest
		call	loc_40420C
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_409A60
		mov	ebx, [ebp-8]
		mov	eax, [ebp-20h]
		add	ebx, [ebp-1A4h]
		mov	edx, eax
		xor	esi, esi
		mov	[ebp-2Ch], edx
		cmp	edi, esi
		jle	short loc_409A3B

loc_4099D2:				; CODE XREF: .text:00409A39j
		mov	ecx, [ebp-2Ch]
		mov	eax, [ecx]
		test	eax, 80000000h
		jnz	short loc_409A2F
		push	3Fh		; ucb
		add	eax, [ebp-8]
		push	eax		; lp
		lea	edx, [ebp-6Ch]
		push	edx		; dest
		call	loc_40420C
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_409A60
		mov	byte ptr [ebp-2Dh], 0
		lea	ecx, [ebp-6Ah]
		push	ecx		; lpProcName
		mov	eax, [ebp-28h]
		push	eax		; hModule
		call	GetProcAddress
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_409A2F
		lea	edx, [ebp-24h]
		push	edx		; lpflOldProtect
		push	40h		; flNewProtect
		push	1		; dwSize
		push	ebx		; lpAddress
		call	VirtualProtect
		push	4		; ucb
		push	ebx		; lp
		lea	ecx, [ebp-0Ch]
		push	ecx		; src
		call	loc_404240
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_409A60

loc_409A2F:				; CODE XREF: .text:004099DCj
					; .text:00409A0Cj
		add	dword ptr [ebp-2Ch], 4
		inc	esi
		add	ebx, 4
		cmp	edi, esi
		jg	short loc_4099D2

loc_409A3B:				; CODE XREF: .text:004099D0j
		mov	eax, [ebp-20h]
		push	eax		; hMem
		call	GlobalFree
		xor	edx, edx
		mov	[ebp-20h], edx

loc_409A49:				; CODE XREF: .text:00409965j
		add	dword ptr [ebp-14h], 14h

loc_409A4D:				; CODE XREF: .text:004098F5j
		mov	ecx, [ebp-14h]
		add	ecx, 14h
		cmp	ecx, [ebp-10h]
		jbe	loc_4098FA

loc_409A5C:				; CODE XREF: .text:00409924j
					; .text:00409931j
		xor	eax, eax
		jmp	short loc_409A85
; ---------------------------------------------------------------------------

loc_409A60:				; CODE XREF: .text:004097DDj
					; .text:004097ECj ...
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_409A6F
		mov	edx, [ebp-20h]
		push	edx		; hMem
		call	GlobalFree

loc_409A6F:				; CODE XREF: .text:00409A64j
		push	10h		; uType
		push	offset aWindows95Unico ; "Windows 95 UNICODE alert"
		push	offset aOllydbg2WasUna ; "OllyDbg 2 was	unable to attach to the	M"...
		push	0		; hWnd
		call	MessageBoxA
		or	eax, 0FFFFFFFFh

loc_409A85:				; CODE XREF: .text:00409777j
					; .text:004097A5j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_409A8C:				; DATA XREF: .data:004F6002o
		mov	eax, fi
		push	ebp
		mov	stru_50E0F4.visable+180h, eax
		mov	stru_50E0F4.visable+258h, eax
		mov	edx, g_Color_index
		mov	ebp, esp
		mov	stru_50E0F4.visable+264h, edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_409AAC:				; CODE XREF: .text:00409B8Cp
					; .text:00409C95p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	0
		push	0
		push	0
		lea	eax, [ebp-10h]
		push	eax
		push	0
		call	loc_4087E8
		add	esp, 14h
		lea	edx, [ebp-10h]
		mov	ecx, hwollymain
		push	141h		; flags
		push	0		; hrgnUpdate
		push	edx		; lprcUpdate
		push	ecx		; hWnd
		call	RedrawWindow
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		