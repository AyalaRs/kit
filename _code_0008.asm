.code

; Exported entry  33. _Broadcast
; Exported entry 409. Broadcast

; int __cdecl Broadcast(UINT msg, WPARAM wp, LPARAM lp)
		public Broadcast
Broadcast:				; CODE XREF: .text:0040B3DFp
					; .text:0040B44Bp ...
		push	ebp		; _Broadcast
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		xor	eax, eax
		mov	ebx, [ebp+8]
		mov	esi, [ebp+0Ch]
		mov	Msg, ebx
		mov	wParam,	esi
		mov	edi, [ebp+10h]
		mov	lParam,	edi
		mov	dword_57D9C4, eax
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4042B4
		push	0		; lParam
		push	offset fn	; lpEnumFunc
		push	eax		; hWndParent
		call	EnumChildWindows
		jmp	short loc_4042C6
; ---------------------------------------------------------------------------

loc_4042B4:				; CODE XREF: .text:004042A3j
		push	0		; lParam
		push	offset fn	; lpfn
		call	GetCurrentThreadId
		push	eax		; dwThreadId
		call	EnumThreadWindows

loc_4042C6:				; CODE XREF: .text:004042B2j
		cmp	dword_57D9C4, 1234h
		jz	short loc_4042EF
		cmp	hDlg, 0
		jz	short loc_4042EF
		push	edi		; lParam
		push	esi		; wParam
		push	ebx		; Msg
		mov	edx, hDlg
		push	edx		; hWnd
		call	SendMessageW
		mov	dword_57D9C4, eax

loc_4042EF:				; CODE XREF: .text:004042D0j
					; .text:004042D9j
		mov	eax, dword_57D9C4
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4042FC:				; CODE XREF: .text:0040FD8Fp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFF70h
		mov	eax, dword_4F6324
		cmp	VersionInformation.dwPlatformId, 1
		push	ebx
		push	esi
		push	edi
		mov	[ebp-1Ch], eax
		mov	esi, offset aAboutOllydbg ; "About OllyDbg"		
		mov	ax, word_4F6328
		mov	ebx, offset g_ADVAPI32
		mov	[ebp-18h], ax
		jnz	short loc_404339
		mov	eax, 1
		jmp	loc_4045EB
; ---------------------------------------------------------------------------

loc_404339:				; CODE XREF: .text:0040432Dj
		mov	eax, [ebx]
		test	eax, eax
		jnz	short loc_404347
		or	eax, 0FFFFFFFFh
		jmp	loc_4045EB
; ---------------------------------------------------------------------------

loc_404347:				; CODE XREF: .text:0040433Dj
		invoke GetProcAddress,g_ADVAPI32,$CTA0("ImpersonateSelf")
		mov	[ebp-24h], eax
		invoke GetProcAddress,g_ADVAPI32,$CTA0("OpenThreadToken")
		mov	[ebp-28h], eax
		invoke GetProcAddress,g_ADVAPI32,$CTA0("AllocateAndInitializeSid")
		mov	[ebp-2Ch], eax
		invoke GetProcAddress,g_ADVAPI32,$CTA0("FreeSid")
		mov	[ebp-30h], eax
		invoke GetProcAddress,g_ADVAPI32,$CTA0("InitializeSecurityDescriptor")
		mov	[ebp-34h], eax
		invoke GetProcAddress,g_ADVAPI32,$CTA0("GetLengthSid")
		mov	[ebp-38h], eax
		invoke GetProcAddress,g_ADVAPI32,$CTA0("InitializeAcl")
		mov	[ebp-3Ch], eax
		invoke GetProcAddress,g_ADVAPI32,$CTA0("AddAccessAllowedAce")
		mov	[ebp-40h], eax
		invoke GetProcAddress,g_ADVAPI32,$CTA0("SetSecurityDescriptorDacl")
		mov	[ebp-44h], eax
		invoke GetProcAddress,g_ADVAPI32,$CTA0("SetSecurityDescriptorGroup")
		mov	[ebp-48h], eax
		invoke GetProcAddress,g_ADVAPI32,$CTA0("SetSecurityDescriptorOwner")
		mov	[ebp-4Ch], eax
		invoke GetProcAddress,g_ADVAPI32,$CTA0("IsValidSecurityDescriptor")
		mov	[ebp-50h], eax
		invoke GetProcAddress,g_ADVAPI32,$CTA0("AccessCheck")
		mov	[ebp-54h], eax
		invoke GetProcAddress,g_ADVAPI32,$CTA0("RevertToSelf")
		mov	[ebp-58h], eax
		
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_404495
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_404495
		cmp	dword ptr [ebp-2Ch], 0
		jz	short loc_404495
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_404495
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_404495
		cmp	dword ptr [ebp-38h], 0
		jz	short loc_404495
		cmp	dword ptr [ebp-3Ch], 0
		jz	short loc_404495
		cmp	dword ptr [ebp-40h], 0
		jz	short loc_404495
		cmp	dword ptr [ebp-44h], 0
		jz	short loc_404495
		cmp	dword ptr [ebp-48h], 0
		jz	short loc_404495
		cmp	dword ptr [ebp-4Ch], 0
		jz	short loc_404495
		cmp	dword ptr [ebp-50h], 0
		jz	short loc_404495
		cmp	dword ptr [ebp-54h], 0
		jz	short loc_404495
		cmp	dword ptr [ebp-58h], 0
		jnz	short loc_40449D

loc_404495:				; CODE XREF: .text:00404445j
					; .text:0040444Bj ...
		or	eax, 0FFFFFFFFh
		jmp	loc_4045EB
; ---------------------------------------------------------------------------

loc_40449D:				; CODE XREF: .text:00404493j
		or	edi, 0FFFFFFFFh
		xor	eax, eax
		mov	[ebp-20h], eax
		xor	ebx, ebx
		push	2
		call	dword ptr [ebp-24h]
		lea	eax, [ebp-14h]
		push	eax
		push	0
		push	8
		call	GetCurrentThread
		push	eax
		call	dword ptr [ebp-28h]
		test	eax, eax
		jz	loc_4045CE
		lea	edx, [ebp-20h]
		lea	ecx, [ebp-1Ch]
		push	edx
		push	0
		push	0
		push	0
		push	0
		push	0
		push	0
		push	220h
		push	20h
		push	2
		push	ecx
		call	dword ptr [ebp-2Ch]
		test	eax, eax
		jz	loc_4045CE
		lea	esi, [ebp-6Ch]
		push	1
		push	esi
		call	dword ptr [ebp-34h]
		test	eax, eax
		jz	loc_4045CE
		mov	eax, [ebp-20h]
		push	eax
		call	dword ptr [ebp-38h]
		add	eax, 14h
		sub	eax, 4		; int
		mov	[ebp-8], eax
		push	3		; flags
		mov	edx, [ebp-8]	; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4045CE
		push	2
		mov	eax, [ebp-8]
		push	eax
		push	ebx
		call	dword ptr [ebp-3Ch]
		test	eax, eax
		jz	loc_4045CE
		mov	edx, [ebp-20h]
		push	edx
		push	3
		push	2
		push	ebx
		call	dword ptr [ebp-40h]
		test	eax, eax
		jz	loc_4045CE
		push	0
		push	ebx
		push	1
		push	esi
		call	dword ptr [ebp-44h]
		test	eax, eax
		jz	short loc_4045CE
		push	0
		mov	ecx, [ebp-20h]
		push	ecx
		push	esi
		call	dword ptr [ebp-48h]
		push	0
		mov	eax, [ebp-20h]
		push	eax
		push	esi
		call	dword ptr [ebp-4Ch]
		push	esi
		call	dword ptr [ebp-50h]
		test	eax, eax
		jz	short loc_4045CE
		mov	dword ptr [ebp-7Ch], 1
		mov	dword ptr [ebp-78h], 2
		xor	edx, edx
		lea	ecx, [ebp-10h]
		mov	[ebp-74h], edx
		lea	edx, [ebp-4]
		mov	dword ptr [ebp-70h], 3
		mov	dword ptr [ebp-0Ch], 14h
		push	edx
		lea	edx, [ebp-0Ch]
		push	ecx
		lea	ecx, [ebp-90h]
		push	edx
		lea	edx, [ebp-7Ch]
		push	ecx
		push	edx
		mov	eax, 1
		push	eax
		mov	eax, [ebp-14h]
		push	eax
		push	esi
		call	dword ptr [ebp-54h]
		test	eax, eax
		jz	short loc_4045CE
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4045CC
		mov	edi, 1
		jmp	short loc_4045CE
; ---------------------------------------------------------------------------

loc_4045CC:				; CODE XREF: .text:004045C3j
		xor	edi, edi

loc_4045CE:				; CODE XREF: .text:004044BFj
					; .text:004044E7j ...
		call	dword ptr [ebp-58h]
		test	ebx, ebx
		jz	short loc_4045DC
		push	ebx		; data
		call	Memfree
		pop	ecx

loc_4045DC:				; CODE XREF: .text:004045D3j
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_4045E9
		mov	eax, [ebp-20h]
		push	eax
		call	dword ptr [ebp-30h]

loc_4045E9:				; CODE XREF: .text:004045E0j
		mov	eax, edi

loc_4045EB:				; CODE XREF: .text:00404334j
					; .text:00404342j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4045F4:				; CODE XREF: .text:0040FD81p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE4h
		push	ebx
		push	esi
		push	edi
		mov	eax, g_ADVAPI32
		test	eax, eax
		jnz	short loc_40460E
		or	eax, 0FFFFFFFFh
		jmp	loc_4046CA
; ---------------------------------------------------------------------------

loc_40460E:				; CODE XREF: .text:00404604j
		push	offset ProcName	; "OpenProcessToken"
		push	eax		; hModule
		call	GetProcAddress
		mov	ebx, eax
		push	offset aLookupprivileg ; "LookupPrivilegeValueW"
		mov	eax, g_ADVAPI32
		push	eax		; hModule
		call	GetProcAddress
		mov	esi, eax
		push	offset aAdjusttokenpri ; "AdjustTokenPrivileges"
		mov	eax, g_ADVAPI32
		push	eax		; hModule
		call	GetProcAddress
		mov	edi, eax
		test	ebx, ebx
		jz	short loc_40464B
		test	esi, esi
		jz	short loc_40464B
		test	edi, edi
		jnz	short loc_404650

loc_40464B:				; CODE XREF: .text:00404641j
					; .text:00404645j
		or	eax, 0FFFFFFFFh
		jmp	short loc_4046CA
; ---------------------------------------------------------------------------

loc_404650:				; CODE XREF: .text:00404649j
		push	8		; n
		push	0		; c
		lea	edx, [ebp-8]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		call	GetCurrentProcess
		lea	ecx, [ebp-0Ch]
		push	ecx
		push	28h
		push	eax
		call	ebx
		test	eax, eax
		jnz	short loc_404677
		or	eax, 0FFFFFFFFh
		jmp	short loc_4046CA
; ---------------------------------------------------------------------------

loc_404677:				; CODE XREF: .text:00404670j
		lea	edx, [ebp-8]
		push	edx
		push	offset aSedebugprivile ; "SeDebugPrivilege"
		push	0
		call	esi
		test	eax, eax
		jnz	short loc_40468D
		or	eax, 0FFFFFFFFh
		jmp	short loc_4046CA
; ---------------------------------------------------------------------------

loc_40468D:				; CODE XREF: .text:00404686j
		mov	dword ptr [ebp-1Ch], 1
		push	8		; n
		lea	edx, [ebp-8]
		push	edx		; src
		lea	ecx, [ebp-18h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	dword ptr [ebp-10h], 2
		push	0
		push	0
		push	0
		lea	eax, [ebp-1Ch]
		push	eax
		push	0
		mov	edx, [ebp-0Ch]
		push	edx
		call	edi
		test	eax, eax
		jnz	short loc_4046C8
		or	eax, 0FFFFFFFFh
		jmp	short loc_4046CA
; ---------------------------------------------------------------------------

loc_4046C8:				; CODE XREF: .text:004046C1j
		xor	eax, eax

loc_4046CA:				; CODE XREF: .text:00404609j
					; .text:0040464Ej ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		