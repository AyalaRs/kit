.code

__startup:				; CODE XREF: .text:00401054j
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	eax, [esi+10h]
		and	eax, 1
		mov	dword_57BCA8, eax
		call	__fpreset
		mov	edx, [esi+20h]
		push	edx
		mov	ecx, [esi+1Ch]
		push	ecx
		call	__initmatherr
		add	esp, 8
		mov	eax, [esi+28h]
		push	eax
		call	__initfmode
		pop	ecx
		mov	edx, [esi+44h]
		push	edx
		call	__initfileinfo
		pop	ecx
		mov	dword_61BE78, 1
		mov	dword_61BE7C, esi
		lea	ecx, [ebp-8]
		mov	dword_61BE60, ecx
		call	__InitDefaultHander
		call	GetEnvironmentStrings
		mov	dword_61BE50, eax
		call	GetCommandLineA
		mov	dword_61BE4C, eax
		mov	eax, [esi+30h]
		push	eax
		mov	edx, [esi+2Ch]
		push	edx
		call	__init_wild_handlers
		add	esp, 8
		mov	ecx, [esi+40h]
		push	ecx
		mov	eax, [esi+3Ch]
		push	eax
		mov	edx, [esi+38h]
		push	edx
		mov	ecx, [esi+34h]
		push	ecx
		call	__init_setargv_handlers
		add	esp, 10h
		call	__create_shmem
		mov	edi, eax
		test	eax, eax
		jz	short loc_4F0FF7
		mov	edx, [edi]
		mov	dword ptr [edi+edx*4+4], 0FFFFFFFFh
		push	0
		push	edi
		call	__init_exit_proc
		add	esp, 8
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		lea	ebx, [edi+4]
		jmp	short loc_4F0FF0
; ---------------------------------------------------------------------------

loc_4F0FDC:				; CODE XREF: .text:004F0FF5j
		mov	eax, [ebx]
		mov	edx, [eax+14h]
		push	edx
		push	0
		call	dword ptr [eax+18h]
		add	esp, 8
		inc	dword ptr [ebp-0Ch]
		add	ebx, 4

loc_4F0FF0:				; CODE XREF: .text:004F0FDAj
		mov	ecx, [edi]
		cmp	ecx, [ebp-0Ch]
		jg	short loc_4F0FDC

loc_4F0FF7:				; CODE XREF: .text:004F0FBBj
		push	0
		push	offset dword_61BE78
		call	__init_exit_proc
		add	esp, 8
		test	byte ptr [esi+10h], 1
		jz	short loc_4F1073
		mov	ebx, dword_61BE4C
		jmp	short loc_4F1015
; ---------------------------------------------------------------------------

loc_4F1014:				; CODE XREF: .text:004F1019j
					; .text:004F101Dj
		inc	ebx

loc_4F1015:				; CODE XREF: .text:004F1012j
		mov	al, [ebx]
		cmp	al, 20h
		jz	short loc_4F1014
		cmp	al, 9
		jz	short loc_4F1014
		cmp	byte ptr [ebx],	22h
		jnz	short loc_4F1029
		mov	dl, 22h
		inc	ebx
		jmp	short loc_4F102E
; ---------------------------------------------------------------------------

loc_4F1029:				; CODE XREF: .text:004F1022j
		mov	dl, 20h
		jmp	short loc_4F102E
; ---------------------------------------------------------------------------

loc_4F102D:				; CODE XREF: .text:004F103Aj
		inc	ebx

loc_4F102E:				; CODE XREF: .text:004F1027j
					; .text:004F102Bj
		mov	al, [ebx]
		test	al, al
		jz	short loc_4F103C
		cmp	dl, al
		jz	short loc_4F103C
		cmp	al, 9
		jnz	short loc_4F102D

loc_4F103C:				; CODE XREF: .text:004F1032j
					; .text:004F1036j
		cmp	byte ptr [ebx],	22h
		jnz	short loc_4F1045
		inc	ebx
		jmp	short loc_4F1045
; ---------------------------------------------------------------------------

loc_4F1044:				; CODE XREF: .text:004F104Dj
					; .text:004F1051j
		inc	ebx

loc_4F1045:				; CODE XREF: .text:004F103Fj
					; .text:004F1042j
		mov	al, [ebx]
		test	al, al
		jz	short loc_4F104F
		cmp	al, 20h
		jz	short loc_4F1044

loc_4F104F:				; CODE XREF: .text:004F1049j
		cmp	al, 9
		jz	short loc_4F1044
		call	loc_4F109C
		push	eax
		push	ebx
		push	0
		push	0		; lpModuleName
		call	GetModuleHandleA
		push	eax
		call	dword ptr [esi+18h]
		add	esp, 10h
		push	eax		; status
		call	_exit
; ---------------------------------------------------------------------------
		pop	ecx
		jmp	short loc_4F1094
; ---------------------------------------------------------------------------

loc_4F1073:				; CODE XREF: .text:004F100Aj
		mov	edx, dword_61BE48
		push	edx
		mov	ecx, dword_61BE44
		push	ecx
		mov	eax, dword_61BE40
		push	eax
		call	dword ptr [esi+18h]
		add	esp, 0Ch
		push	eax		; status
		call	_exit
; ---------------------------------------------------------------------------
		pop	ecx

loc_4F1094:				; CODE XREF: .text:004F1071j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4F109C:				; CODE XREF: .text:004F1053p
		add	esp, 0FFFFFFBCh
		push	esp		; lpStartupInfo
		call	GetStartupInfoA
		test	byte ptr [esp+2Ch], 1
		jz	short loc_4F10B3
		movzx	eax, word ptr [esp+30h]
		jmp	short loc_4F10B8
; ---------------------------------------------------------------------------

loc_4F10B3:				; CODE XREF: .text:004F10AAj
		mov	eax, 0Ah

loc_4F10B8:				; CODE XREF: .text:004F10B1j
		add	esp, 44h
		retn
; ---------------------------------------------------------------------------

___GetTlsIndex:
		call	qqrv
		mov	eax, [eax+0B0h]
		retn
; ---------------------------------------------------------------------------

___GetStkIndex:
		call	qqrv
		mov	eax, [eax+0ACh]
		retn
; ---------------------------------------------------------------------------

__init_tls:				; DATA XREF: .data:004F6098o
		push	ebx
		add	esp, 0FFFFFF50h
		xor	ebx, ebx
		mov	dword ptr [esp+1Ch], 94h
		lea	eax, [esp+1Ch]
		push	eax		; lpVersionInformation
		call	GetVersionExA
		cmp	dword ptr [esp+2Ch], 1
		jnz	short loc_4F10FB
		mov	ebx, 10000h

loc_4F10FB:				; CODE XREF: .text:004F10F4j
		push	1Ch		; dwLength
		lea	eax, [esp+4]
		push	eax		; lpBuffer
		lea	edx, [esp+8]
		push	edx		; lpAddress
		call	VirtualQuery
		call	qqrv
		add	ebx, [esp+4]
		mov	[eax+0ACh], ebx
		add	esp, 0B0h
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

___CRTL_TLS_Alloc:			; CODE XREF: .text:004010D9p
		call	TlsAlloc
		retn
; ---------------------------------------------------------------------------
		align 4

; int __stdcall	__CRTL_TLS_Free(DWORD dwTlsIndex)
___CRTL_TLS_Free:			; CODE XREF: .text:0040113Ap
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax		; dwTlsIndex
		call	TlsFree
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

; int __stdcall	__CRTL_TLS_GetValue(DWORD dwTlsIndex)
___CRTL_TLS_GetValue:			; CODE XREF: .text:00401102p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax		; dwTlsIndex
		call	TlsGetValue
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

; int __stdcall	__CRTL_TLS_SetValue(DWORD dwTlsIndex, LPVOID lpTlsValue)
___CRTL_TLS_SetValue:			; CODE XREF: .text:004010BEp
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+0Ch]
		push	eax		; lpTlsValue
		mov	edx, [ebp+8]
		push	edx		; dwTlsIndex
		call	TlsSetValue
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

___CRTL_TLS_InitThread:			; CODE XREF: .text:004010C9p
		push	ebp
		mov	ebp, esp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 4

___CRTL_TLS_ExitThread:			; CODE XREF: .text:0040111Fp
		push	ebp
		mov	ebp, esp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

___CRTL_TLS_GetInfo:
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _thread_buf(int, _size_t size)
__thread_buf:				; CODE XREF: .text:004EA357p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		call	__thread_data
		mov	ebx, eax
		test	eax, eax
		jnz	short loc_4F1188
		xor	eax, eax
		jmp	short loc_4F11AB
; ---------------------------------------------------------------------------

loc_4F1188:				; CODE XREF: .text:004F1182j
		mov	esi, [ebp+8]
		add	esi, ebx
		mov	ebx, [esi]
		test	ebx, ebx
		jnz	short loc_4F11A9
		mov	eax, [ebp+0Ch]
		push	eax		; size
		call	_malloc
		pop	ecx
		mov	ebx, eax
		test	eax, eax
		jnz	short loc_4F11A7
		xor	eax, eax
		jmp	short loc_4F11AB
; ---------------------------------------------------------------------------

loc_4F11A7:				; CODE XREF: .text:004F11A1j
		mov	[esi], ebx

loc_4F11A9:				; CODE XREF: .text:004F1191j
		mov	eax, ebx

loc_4F11AB:				; CODE XREF: .text:004F1186j
					; .text:004F11A5j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

__thread_data:				; CODE XREF: .text:___doserrnop
					; .text:004EF975p ...
		push	ebx
		call	qqrv
		mov	ebx, [eax+0B0h]
		test	ebx, ebx
		jnz	short loc_4F11D2
		call	__thread_data_new
		mov	ebx, eax
		call	qqrv
		mov	[eax+0B0h], ebx

loc_4F11D2:				; CODE XREF: .text:004F11BEj
		mov	eax, ebx
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

__thread_data_new:			; CODE XREF: .text:004F11C0p
		push	ebx
		mov	eax, dword_61BE88
		push	eax		; lpCriticalSection
		call	__lock_nt
		pop	ecx
		mov	ebx, dword_61BE84
		test	ebx, ebx
		jz	short loc_4F11F9
		mov	edx, [ebx]
		mov	dword_61BE84, edx
		jmp	short loc_4F1214
; ---------------------------------------------------------------------------

loc_4F11F9:				; CODE XREF: .text:004F11EDj
		push	5Ch		; size
		call	_malloc
		pop	ecx
		mov	ebx, eax
		test	eax, eax
		jz	short loc_4F1214
		push	5Ch		; n
		push	0		; c
		push	ebx		; s
		call	_memset
		add	esp, 0Ch

loc_4F1214:				; CODE XREF: .text:004F11F7j
					; .text:004F1205j
		test	ebx, ebx
		jz	short loc_4F126C
		mov	dword ptr [ebx+44h], 1
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebx+48h], edx
		xor	eax, eax
		mov	[ebx+54h], ecx
		xor	edx, edx
		mov	[ebx+2Ch], eax
		mov	[ebx+58h], edx
		cmp	dword ptr [ebx+4Ch], 0
		jnz	short loc_4F1258
		mov	ecx, dword_57A294
		push	ecx		; size
		call	_malloc
		pop	ecx
		mov	[ebx+4Ch], eax
		test	eax, eax
		jnz	short loc_4F1258
		push	ebx		; block
		call	_free
		pop	ecx
		xor	ebx, ebx
		jmp	short loc_4F126C
; ---------------------------------------------------------------------------

loc_4F1258:				; CODE XREF: .text:004F1237j
					; .text:004F124Bj
		mov	eax, dword_57A294
		push	eax		; n
		push	0		; c
		mov	edx, [ebx+4Ch]
		push	edx		; s
		call	_memset
		add	esp, 0Ch

loc_4F126C:				; CODE XREF: .text:004F1216j
					; .text:004F1256j
		mov	ecx, dword_61BE88
		push	ecx		; lpCriticalSection
		call	__unlock_nt
		pop	ecx
		mov	eax, ebx
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 10h

__thread_data_del:			; CODE XREF: .text:004F12E3p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	eax, dword_61BE88
		push	eax		; lpCriticalSection
		call	__lock_nt
		pop	ecx
		mov	edx, dword_61BE84
		mov	[ebx], edx
		mov	dword_61BE84, ebx
		mov	ecx, dword_61BE88
		push	ecx		; lpCriticalSection
		call	__unlock_nt
		pop	ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4F12B4:				; DATA XREF: .data:004F609Eo
		push	offset aCreatingThread ; "creating thread data lock"
		push	offset dword_61BE88 ; int
		call	__create_lock
		add	esp, 8
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4F12C8:				; DATA XREF: .data:004F612Eo
		push	ebx
		push	esi
		mov	esi, offset dword_61BE84
		call	qqrv
		mov	ebx, [eax+0B0h]
		test	ebx, ebx
		jz	loc_4F136A
		push	ebx
		call	__thread_data_del
		pop	ecx
		jmp	short loc_4F136A
; ---------------------------------------------------------------------------

loc_4F12EB:				; CODE XREF: .text:004F136Ej
		mov	ebx, eax
		mov	eax, [ebx+38h]
		test	eax, eax
		jz	short loc_4F12FB
		push	eax		; block
		call	_free
		pop	ecx

loc_4F12FB:				; CODE XREF: .text:004F12F2j
		mov	eax, [ebx+1Ch]
		test	eax, eax
		jz	short loc_4F1309
		push	eax		; block
		call	_free
		pop	ecx

loc_4F1309:				; CODE XREF: .text:004F1300j
		mov	eax, [ebx+34h]
		test	eax, eax
		jz	short loc_4F1317
		push	eax		; block
		call	_free
		pop	ecx

loc_4F1317:				; CODE XREF: .text:004F130Ej
		mov	eax, [ebx+40h]
		test	eax, eax
		jz	short loc_4F1325
		push	eax		; block
		call	_free
		pop	ecx

loc_4F1325:				; CODE XREF: .text:004F131Cj
		mov	eax, [ebx+30h]
		test	eax, eax
		jz	short loc_4F1333
		push	eax		; block
		call	_free
		pop	ecx

loc_4F1333:				; CODE XREF: .text:004F132Aj
		mov	eax, [ebx+3Ch]
		test	eax, eax
		jz	short loc_4F1341
		push	eax		; block
		call	_free
		pop	ecx

loc_4F1341:				; CODE XREF: .text:004F1338j
		mov	eax, [ebx+4Ch]
		test	eax, eax
		jz	short loc_4F134F
		push	eax		; block
		call	_free
		pop	ecx

loc_4F134F:				; CODE XREF: .text:004F1346j
		mov	eax, [ebx+28h]
		test	eax, eax
		jz	short loc_4F135D
		push	eax		; block
		call	_free
		pop	ecx

loc_4F135D:				; CODE XREF: .text:004F1354j
		mov	eax, [esi]
		mov	ebx, [eax]
		push	eax		; block
		call	_free
		pop	ecx
		mov	[esi], ebx

loc_4F136A:				; CODE XREF: .text:004F12DCj
					; .text:004F12E9j
		mov	eax, [esi]
		test	eax, eax
		jnz	loc_4F12EB
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _create_lock(int,	char *src)
__create_lock:				; CODE XREF: .text:004E9CD3p
					; .text:004E9EACp ...
		push	ebp
		mov	ebp, esp
		push	offset stru_61BE8C ; lpCriticalSection
		call	EnterCriticalSection
		cmp	dword_61EE8C, 200h
		jl	short loc_4F139B
		mov	eax, [ebp+0Ch]
		push	eax		; src
		call	__lock_error
; ---------------------------------------------------------------------------
		db  59h	; Y
; ---------------------------------------------------------------------------

loc_4F139B:				; CODE XREF: .text:004F138Fj
		mov	edx, dword_61EE8C
		shl	edx, 3
		lea	edx, [edx+edx*2]
		add	edx, offset stru_61BE8C
		push	edx		; lpCriticalSection
		call	InitializeCriticalSection
		mov	ecx, dword_61EE8C
		mov	eax, [ebp+8]
		shl	ecx, 3
		lea	ecx, [ecx+ecx*2]
		add	ecx, offset stru_61BE8C
		mov	[eax], ecx
		push	offset stru_61BE8C ; lpCriticalSection
		inc	dword_61EE8C
		call	LeaveCriticalSection
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl _lock_nt(LPCRITICAL_SECTION lpCriticalSection)
__lock_nt:				; CODE XREF: .text:004E9C22p
					; .text:004E9CEAp ...
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax		; lpCriticalSection
		call	EnterCriticalSection
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _unlock_nt(LPCRITICAL_SECTION lpCriticalSection)
__unlock_nt:				; CODE XREF: .text:004E9C56p
					; .text:004E9D23p ...
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax		; lpCriticalSection
		call	LeaveCriticalSection
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _lock_error(char *src)
__lock_error:				; CODE XREF: .text:004E9CA3p
					; .text:004EB22Bp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFB0h
		push	esi
		push	edi
		mov	esi, offset aSemaphoreError ; "Semaphore error "
		lea	edi, [ebp-50h]
		mov	eax, edi
		mov	ecx, 4
		rep movsd
		movsb
		mov	edx, [ebp+8]
		push	edx		; src
		lea	ecx, [ebp-50h]
		push	ecx		; dest
		call	_strcat
		add	esp, 8
		lea	eax, [ebp-50h]
		push	eax		; lpText
		call	__ErrorExit
; ---------------------------------------------------------------------------
		db  59h	; Y
		db  5Fh	; _
		db  5Eh	; ^
		db  8Bh	; ˍ
		db 0E5h	; 半		db  5Dh	; ]
		db 0C3h	; Í
		align 4

loc_4F1438:				; DATA XREF: .data:004F60A4o
		push	offset stru_61BE8C ; lpCriticalSection
		call	InitializeCriticalSection
		mov	dword_61EE8C, 1
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4F1450:				; DATA XREF: .data:004F60AAo
		push	offset a___cppdebugh_0 ; "___CPPdebugHook"
		push	0		; lpModuleName
		call	GetModuleHandleA
		push	eax		; hModule
		call	GetProcAddress
		mov	dword_61EE94, eax
		cmp	dword_61EE94, 0
		jnz	short locret_4F147A
		mov	dword_61EE94, offset ___CPPdebugHook

locret_4F147A:				; CODE XREF: .text:004F146Ej
		retn
; ---------------------------------------------------------------------------

___JumpToCatch__:			; CODE XREF: .text:004F2DE3p
		mov	esp, ebx
		mov	ebp, ecx
		jmp	eax
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------

loc_4F1482:				; CODE XREF: .text:004F1531p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		mov	edx, [eax]
		cmp	edx, 0C0000092h
		jg	short loc_4F14C2
		jz	short loc_4F14F7
		cmp	edx, 0C000008Eh
		jg	short loc_4F14B3
		jz	short loc_4F14FB
		sub	edx, 0C0000005h
		jz	short loc_4F1507
		sub	edx, 87h
		jz	short loc_4F14EF
		dec	edx
		jz	short loc_4F1503
		jmp	short loc_4F1517
; ---------------------------------------------------------------------------

loc_4F14B3:				; CODE XREF: .text:004F149Aj
		add	edx, 3FFFFF71h
		sub	edx, 2
		jb	short loc_4F14F7
		jz	short loc_4F14FF
		jmp	short loc_4F1517
; ---------------------------------------------------------------------------

loc_4F14C2:				; CODE XREF: .text:004F1490j
		cmp	edx, 0C0000096h
		jg	short loc_4F14DC
		jz	short loc_4F150B
		sub	edx, 0C0000093h
		jz	short loc_4F1503
		dec	edx
		jz	short loc_4F14EB
		dec	edx
		jz	short loc_4F14F3
		jmp	short loc_4F1517
; ---------------------------------------------------------------------------

loc_4F14DC:				; CODE XREF: .text:004F14C8j
		sub	edx, 0C00000FDh
		jz	short loc_4F1513
		sub	edx, 3Dh
		jz	short loc_4F150F
		jmp	short loc_4F1517
; ---------------------------------------------------------------------------

loc_4F14EB:				; CODE XREF: .text:004F14D5j
		mov	al, 3
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F14EF:				; CODE XREF: .text:004F14ACj
		mov	al, 4
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F14F3:				; CODE XREF: .text:004F14D8j
		mov	al, 5
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F14F7:				; CODE XREF: .text:004F1492j
					; .text:004F14BCj
		mov	al, 6
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F14FB:				; CODE XREF: .text:004F149Cj
		mov	al, 7
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F14FF:				; CODE XREF: .text:004F14BEj
		mov	al, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F1503:				; CODE XREF: .text:004F14AFj
					; .text:004F14D2j
		mov	al, 9
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F1507:				; CODE XREF: .text:004F14A4j
		mov	al, 0Bh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F150B:				; CODE XREF: .text:004F14CAj
		mov	al, 0Ch
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F150F:				; CODE XREF: .text:004F14E7j
		mov	al, 0Dh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F1513:				; CODE XREF: .text:004F14E2j
		mov	al, 0Eh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F1517:				; CODE XREF: .text:004F14B1j
					; .text:004F14C0j ...
		mov	al, 15h
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F151B:				; CODE XREF: .text:004F2B71p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFA8h
		mov	eax, offset stru_57BE24
		push	ebx
		push	esi
		push	edi
		call	@__InitExceptBlockLDTC
		push	dword ptr [ebp+8]
		call	loc_4F1482
		pop	ecx
		and	eax, 0FFh
		cmp	eax, 3
		jl	short loc_4F1546
		cmp	eax, 0Fh
		jle	short loc_4F1556

loc_4F1546:				; CODE XREF: .text:004F153Fj
		xor	eax, eax
		mov	edx, [ebp-50h]
		mov	fs:0, edx
		jmp	loc_4F1906
; ---------------------------------------------------------------------------

loc_4F1556:				; CODE XREF: .text:004F1544j
		mov	esi, dword_57BCFC[eax*8]
		add	eax, 0FFFFFFFDh	; switch 12 cases
		cmp	eax, 0Bh
		ja	loc_4F182E	; jumptable 004F1569 default case
		jmp	ds:off_4F1570[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4F1570	dd offset loc_4F15A0	; DATA XREF: .text:004F1569r
		dd offset loc_4F15DC	; jump table for switch	statement
		dd offset loc_4F1618
		dd offset loc_4F1654
		dd offset loc_4F1690
		dd offset loc_4F16CC
		dd offset loc_4F1708
		dd offset loc_4F182E
		dd offset loc_4F1744
		dd offset loc_4F1780
		dd offset loc_4F17BC
		dd offset loc_4F17F5
; ---------------------------------------------------------------------------

loc_4F15A0:				; CODE XREF: .text:004F1569j
					; DATA XREF: .text:off_4F1570o
		mov	word ptr [ebp-40h], 8 ;	jumptable 004F1569 case	3
		mov	edx, offset aEdivbyzero	; "EDivByZero"
		lea	eax, [ebp-4]
		call	loc_4F5268
		inc	dword ptr [ebp-34h]
		mov	ecx, [eax]
		mov	dl, 1		; System::AnsiString
		mov	eax, ds:off_4DFF74 ; this
		call	@Sysutils@EIntError@$bctr$qqrx17System@AnsiString ; BCC	v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	[ebp-58h], eax
		dec	dword ptr [ebp-34h]
		lea	eax, [ebp-4]
		mov	edx, 2
		call	loc_4F52DC
		jmp	loc_4F184E
; ---------------------------------------------------------------------------

loc_4F15DC:				; CODE XREF: .text:004F1569j
					; DATA XREF: .text:off_4F1570o
		mov	word ptr [ebp-40h], 14h	; jumptable 004F1569 case 4
		mov	edx, offset aErangeerror ; "ERangeError"
		lea	eax, [ebp-8]
		call	loc_4F5268
		inc	dword ptr [ebp-34h]
		mov	ecx, [eax]
		mov	dl, 1		; System::AnsiString
		mov	eax, ds:off_4DFFCC ; this
		call	@Sysutils@EIntError@$bctr$qqrx17System@AnsiString_0 ; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	[ebp-58h], eax
		dec	dword ptr [ebp-34h]
		lea	eax, [ebp-8]
		mov	edx, 2
		call	loc_4F52DC
		jmp	loc_4F184E
; ---------------------------------------------------------------------------

loc_4F1618:				; CODE XREF: .text:004F1569j
					; DATA XREF: .text:off_4F1570o
		mov	word ptr [ebp-40h], 20h	; jumptable 004F1569 case 5
		mov	edx, offset aEintoverflow ; "EIntOverflow"
		lea	eax, [ebp-0Ch]
		call	loc_4F5268
		inc	dword ptr [ebp-34h]
		mov	ecx, [eax]
		mov	dl, 1		; System::AnsiString
		mov	eax, ds:off_4E0024 ; this
		call	@Sysutils@EIntError@$bctr$qqrx17System@AnsiString_1 ; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	[ebp-58h], eax
		dec	dword ptr [ebp-34h]
		lea	eax, [ebp-0Ch]
		mov	edx, 2
		call	loc_4F52DC
		jmp	loc_4F184E
; ---------------------------------------------------------------------------

loc_4F1654:				; CODE XREF: .text:004F1569j
					; DATA XREF: .text:off_4F1570o
		mov	word ptr [ebp-40h], 2Ch	; jumptable 004F1569 case 6
		mov	edx, offset aEinvalidop	; "EInvalidOp"
		lea	eax, [ebp-10h]
		call	loc_4F5268
		inc	dword ptr [ebp-34h]
		mov	ecx, [eax]
		mov	dl, 1		; System::AnsiString
		mov	eax, ds:off_4E00D8 ; this
		call	@Sysutils@EIntError@$bctr$qqrx17System@AnsiString_2 ; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	[ebp-58h], eax
		dec	dword ptr [ebp-34h]
		lea	eax, [ebp-10h]
		mov	edx, 2
		call	loc_4F52DC
		jmp	loc_4F184E
; ---------------------------------------------------------------------------

loc_4F1690:				; CODE XREF: .text:004F1569j
					; DATA XREF: .text:off_4F1570o
		mov	word ptr [ebp-40h], 38h	; jumptable 004F1569 case 7
		mov	edx, offset aEzerodivide ; "EZeroDivide"
		lea	eax, [ebp-14h]
		call	loc_4F5268
		inc	dword ptr [ebp-34h]
		mov	ecx, [eax]
		mov	dl, 1		; System::AnsiString
		mov	eax, ds:off_4E0130 ; this
		call	@Sysutils@EIntError@$bctr$qqrx17System@AnsiString_3 ; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	[ebp-58h], eax
		dec	dword ptr [ebp-34h]
		lea	eax, [ebp-14h]
		mov	edx, 2
		call	loc_4F52DC
		jmp	loc_4F184E
; ---------------------------------------------------------------------------

loc_4F16CC:				; CODE XREF: .text:004F1569j
					; DATA XREF: .text:off_4F1570o
		mov	word ptr [ebp-40h], 44h	; jumptable 004F1569 case 8
		mov	edx, offset aEoverflow ; "EOverflow"
		lea	eax, [ebp-18h]
		call	loc_4F5268
		inc	dword ptr [ebp-34h]
		mov	ecx, [eax]
		mov	dl, 1		; System::AnsiString
		mov	eax, ds:off_4E0188 ; this
		call	@Sysutils@EIntError@$bctr$qqrx17System@AnsiString_4 ; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	[ebp-58h], eax
		dec	dword ptr [ebp-34h]
		lea	eax, [ebp-18h]
		mov	edx, 2
		call	loc_4F52DC
		jmp	loc_4F184E
; ---------------------------------------------------------------------------

loc_4F1708:				; CODE XREF: .text:004F1569j
					; DATA XREF: .text:off_4F1570o
		mov	word ptr [ebp-40h], 50h	; jumptable 004F1569 case 9
		mov	edx, offset aEunderflow	; "EUnderflow"
		lea	eax, [ebp-1Ch]
		call	loc_4F5268
		inc	dword ptr [ebp-34h]
		mov	ecx, [eax]
		mov	dl, 1		; System::AnsiString
		mov	eax, ds:off_4E01E0 ; this
		call	@Sysutils@EIntError@$bctr$qqrx17System@AnsiString_5 ; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	[ebp-58h], eax
		dec	dword ptr [ebp-34h]
		lea	eax, [ebp-1Ch]
		mov	edx, 2
		call	loc_4F52DC
		jmp	loc_4F184E
; ---------------------------------------------------------------------------

loc_4F1744:				; CODE XREF: .text:004F1569j
					; DATA XREF: .text:off_4F1570o
		mov	word ptr [ebp-40h], 5Ch	; jumptable 004F1569 case 11
		mov	edx, offset aEaccessviolati ; "EAccessViolation"
		lea	eax, [ebp-20h]
		call	loc_4F5268
		inc	dword ptr [ebp-34h]
		mov	ecx, [eax]
		mov	dl, 1		; System::AnsiString
		mov	eax, ds:off_4E034C ; this
		call	@Sysutils@EExternal@$bctr$qqrx17System@AnsiString ; Sysutils::EExternal::EExternal(System::AnsiString)
		mov	[ebp-58h], eax
		dec	dword ptr [ebp-34h]
		lea	eax, [ebp-20h]
		mov	edx, 2
		call	loc_4F52DC
		jmp	loc_4F184E
; ---------------------------------------------------------------------------

loc_4F1780:				; CODE XREF: .text:004F1569j
					; DATA XREF: .text:off_4F1570o
		mov	word ptr [ebp-40h], 68h	; jumptable 004F1569 case 12
		mov	edx, offset aEprivilege	; "EPrivilege"
		lea	eax, [ebp-24h]
		call	loc_4F5268
		inc	dword ptr [ebp-34h]
		mov	ecx, [eax]
		mov	dl, 1		; System::AnsiString
		mov	eax, ds:off_4E03AC ; this
		call	@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_0 ; Sysutils::EExternal::EExternal(System::AnsiString)
		mov	[ebp-58h], eax
		dec	dword ptr [ebp-34h]
		lea	eax, [ebp-24h]
		mov	edx, 2
		call	loc_4F52DC
		jmp	loc_4F184E
; ---------------------------------------------------------------------------

loc_4F17BC:				; CODE XREF: .text:004F1569j
					; DATA XREF: .text:off_4F1570o
		mov	word ptr [ebp-40h], 74h	; jumptable 004F1569 case 13
		mov	edx, offset aEcontrolc ; "EControlC"
		lea	eax, [ebp-28h]
		call	loc_4F5268
		inc	dword ptr [ebp-34h]
		mov	ecx, [eax]
		mov	dl, 1		; System::AnsiString
		mov	eax, ds:off_4E0460 ; this
		call	@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_1 ; Sysutils::EExternal::EExternal(System::AnsiString)
		mov	[ebp-58h], eax
		dec	dword ptr [ebp-34h]
		lea	eax, [ebp-28h]
		mov	edx, 2
		call	loc_4F52DC
		jmp	short loc_4F184E
; ---------------------------------------------------------------------------

loc_4F17F5:				; CODE XREF: .text:004F1569j
					; DATA XREF: .text:off_4F1570o
		mov	word ptr [ebp-40h], 80h	; jumptable 004F1569 case 14
		mov	edx, offset aEstackoverflow ; "EStackOverflow"
		lea	eax, [ebp-2Ch]
		call	loc_4F5268
		inc	dword ptr [ebp-34h]
		mov	ecx, [eax]
		mov	dl, 1		; System::AnsiString
		mov	eax, ds:off_4E0404 ; this
		call	@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_2 ; Sysutils::EExternal::EExternal(System::AnsiString)
		mov	[ebp-58h], eax
		dec	dword ptr [ebp-34h]
		lea	eax, [ebp-2Ch]
		mov	edx, 2
		call	loc_4F52DC
		jmp	short loc_4F184E
; ---------------------------------------------------------------------------

loc_4F182E:				; CODE XREF: .text:004F1563j
					; .text:004F1569j
					; DATA XREF: ...
		mov	ecx, offset aBadExceptionNu ; jumptable	004F1569 default case
		test	ecx, ecx
		jz	short loc_4F184E
		push	119h		; line
		push	offset aXx_cpp	; "xx.cpp"
		push	offset aBadException_0 ; "!\"Bad exception number\""
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F184E:				; CODE XREF: .text:004F15D7j
					; .text:004F1613j ...
		mov	di, [esi+4]
		test	di, 20h
		jnz	short loc_4F1870
		push	11Eh		; line
		push	offset aXx_cpp_0 ; "xx.cpp"
		push	offset aMaskTm_is_ref ;	"mask &	TM_IS_REF"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F1870:				; CODE XREF: .text:004F1857j
		mov	eax, [esi+8]
		mov	[ebp-54h], eax
		push	56h		; size
		call	loc_4F190D
		mov	ebx, eax
		xor	eax, eax
		pop	ecx
		xor	ecx, ecx
		mov	[ebx], eax
		mov	[ebx+4], esi
		xor	eax, eax
		mov	dword ptr [ebx+0Ch], 2
		mov	dword ptr [ebx+10h], 4
		mov	[ebx+18h], di
		mov	word ptr [ebx+1Ah], 0
		mov	edx, [ebp-54h]
		mov	[ebx+14h], edx
		mov	[ebx+8], ecx
		mov	[ebx+28h], eax
		xor	edx, edx
		mov	[ebx+2Ch], edx
		xor	ecx, ecx
		mov	dword ptr [ebx+1Ch], offset loc_4F1957
		mov	[ebx+34h], ecx
		xor	eax, eax
		mov	[ebx+38h], eax
		xor	edx, edx
		mov	[ebx+20h], edx
		xor	ecx, ecx
		mov	[ebx+24h], ecx
		mov	byte ptr [ebx+45h], 0
		mov	byte ptr [ebx+44h], 1
		mov	eax, [ebp+0Ch]
		mov	[ebx+46h], eax
		lea	eax, [ebp-58h]
		mov	edx, [ebp+10h]
		mov	[ebx+4Ah], edx
		lea	edx, [ebx+52h]
		mov	ecx, [ebp+14h]
		mov	[ebx+4Eh], ecx
		push	4		; n
		push	eax		; src
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, ebx
		mov	edx, [ebp-50h]
		mov	fs:0, edx

loc_4F1906:				; CODE XREF: .text:004F1551j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4F190D(size_t	size)
loc_4F190D:				; CODE XREF: .text:004F1878p
					; .text:004F1E2Bp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		push	ebx		; size
		call	_malloc
		pop	ecx
		test	eax, eax
		jnz	short loc_4F1954
		cmp	ebx, 80h
		ja	short loc_4F1935
		call	qqrv
		test	byte ptr [eax+0Ch], 1
		jz	short loc_4F193A

loc_4F1935:				; CODE XREF: .text:004F1925j
		call	_abort
; ---------------------------------------------------------------------------

loc_4F193A:				; CODE XREF: .text:004F1933j
		call	qqrv
		or	dword ptr [eax+0Ch], 1
		call	qqrv
		mov	eax, [eax+1Ch]
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F1954:				; CODE XREF: .text:004F191Dj
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4F1957(void *block)
loc_4F1957:				; DATA XREF: .text:004F18B6o
					; .text:004F1E87o ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		call	qqrv
		cmp	ebx, [eax+1Ch]
		jnz	short loc_4F197A
		call	qqrv
		and	dword ptr [eax+0Ch], 0FFFFFFFEh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F197A:				; CODE XREF: .text:004F1969j
		push	ebx		; block
		call	_free
		pop	ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F1984:				; CODE XREF: .text:004F2A06p
					; .text:004F2ABAp
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	edi, [ebp+8]
		push	dword ptr [ebp+0Ch]
		push	0
		push	esi
		push	edi
		call	@__isCompatTypeID$qp4tpidt1ipp4tpid ; __isCompatTypeID(tpid *,tpid *,int,tpid **)
		add	esp, 10h
		test	eax, eax
		jz	short loc_4F19AE
		mov	eax, 1
		jmp	loc_4F1A8D
; ---------------------------------------------------------------------------

loc_4F19AE:				; CODE XREF: .text:004F19A2j
		movzx	edx, word ptr [edi+4]
		mov	[ebp-4], edx
		movzx	ebx, word ptr [esi+4]
		test	byte ptr [ebp+14h], 2
		jz	short loc_4F1A02
		test	bl, 20h
		jz	short loc_4F1A02
		test	byte ptr [ebp-4], 20h
		jnz	short loc_4F19E1
		push	197h		; line
		push	offset aXx_cpp_1 ; "xx.cpp"
		push	offset aSrcmaskTm_is_r ; "srcmask & TM_IS_REF"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F19E1:				; CODE XREF: .text:004F19C8j
		push	dword ptr [ebp+0Ch]
		push	1
		push	dword ptr [esi+8]
		push	dword ptr [edi+8]
		call	@__isCompatTypeID$qp4tpidt1ipp4tpid ; __isCompatTypeID(tpid *,tpid *,int,tpid **)
		add	esp, 10h
		test	eax, eax
		jz	short loc_4F1A02
		mov	eax, 1
		jmp	loc_4F1A8D
; ---------------------------------------------------------------------------

loc_4F1A02:				; CODE XREF: .text:004F19BDj
					; .text:004F19C2j ...
		test	bl, 20h
		jz	short loc_4F1A4D
		push	dword ptr [ebp+0Ch]
		push	1
		push	dword ptr [esi+8]
		push	edi
		call	@__isCompatTypeID$qp4tpidt1ipp4tpid ; __isCompatTypeID(tpid *,tpid *,int,tpid **)
		add	esp, 10h
		test	eax, eax
		jz	short loc_4F1A23
		mov	eax, 1
		jmp	short loc_4F1A8D
; ---------------------------------------------------------------------------

loc_4F1A23:				; CODE XREF: .text:004F1A1Aj
		mov	esi, [esi+8]
		movzx	ebx, word ptr [esi+4]
		test	bl, 10h
		jnz	short loc_4F1A33
		xor	eax, eax
		jmp	short loc_4F1A8D
; ---------------------------------------------------------------------------

loc_4F1A33:				; CODE XREF: .text:004F1A2Dj
		push	dword ptr [ebp+0Ch]
		push	0
		push	esi
		push	edi
		call	@__isCompatTypeID$qp4tpidt1ipp4tpid ; __isCompatTypeID(tpid *,tpid *,int,tpid **)
		add	esp, 10h
		test	eax, eax
		jz	short loc_4F1A4D
		mov	eax, 1
		jmp	short loc_4F1A8D
; ---------------------------------------------------------------------------

loc_4F1A4D:				; CODE XREF: .text:004F1A05j
					; .text:004F1A44j
		test	bl, 10h
		jz	short loc_4F1A8B
		test	byte ptr [ebp+14h], 1
		jz	short loc_4F1A5F
		mov	eax, 1
		jmp	short loc_4F1A8D
; ---------------------------------------------------------------------------

loc_4F1A5F:				; CODE XREF: .text:004F1A56j
		test	byte ptr [ebp-4], 10h
		jnz	short loc_4F1A69
		xor	eax, eax
		jmp	short loc_4F1A8D
; ---------------------------------------------------------------------------

loc_4F1A69:				; CODE XREF: .text:004F1A63j
		test	bl, 40h
		jz	short loc_4F1A8B
		test	bh, 1
		jnz	short loc_4F1A79
		test	byte ptr [ebp-3], 1
		jnz	short loc_4F1A8B

loc_4F1A79:				; CODE XREF: .text:004F1A71j
		test	bh, 2
		jnz	short loc_4F1A84
		test	byte ptr [ebp-3], 2
		jnz	short loc_4F1A8B

loc_4F1A84:				; CODE XREF: .text:004F1A7Cj
		mov	eax, 1
		jmp	short loc_4F1A8D
; ---------------------------------------------------------------------------

loc_4F1A8B:				; CODE XREF: .text:004F1A50j
					; .text:004F1A6Cj ...
		xor	eax, eax

loc_4F1A8D:				; CODE XREF: .text:004F19A9j
					; .text:004F19FDj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F1A93:				; CODE XREF: .text:004F1F8Fp
					; .text:004F26ACp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+14h]
		mov	edi, [ebp+0Ch]
		test	bh, 1
		mov	esi, [ebp+8]
		jnz	short loc_4F1AC3
		test	bl, 20h
		jz	short loc_4F1AC3
		push	205h		; line
		push	offset aXx_cpp_2 ; "xx.cpp"
		push	offset aCtormask0x0100 ; "(ctorMask & 0x0100) != 0 || (ctorMask	&"...
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F1AC3:				; CODE XREF: .text:004F1AA5j
					; .text:004F1AAAj
		test	bl, 80h
		jz	short loc_4F1ADF
		push	207h		; line
		push	offset aXx_cpp_3 ; "xx.cpp"
		push	offset aCtormask0x0080 ; "(ctorMask & 0x0080) == 0"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F1ADF:				; CODE XREF: .text:004F1AC6j
		test	bh, 10h
		jz	short loc_4F1B48
		and	ebx, 7
		dec	ebx
		jz	short loc_4F1AF7
		dec	ebx
		jz	short loc_4F1B06
		dec	ebx
		jz	short loc_4F1B12
		sub	ebx, 2
		jz	short loc_4F1B1D
		jmp	short loc_4F1B26
; ---------------------------------------------------------------------------

loc_4F1AF7:				; CODE XREF: .text:004F1AE8j
		push	edi
		push	0
		push	esi
		call	dword ptr [ebp+10h]
		add	esp, 0Ch
		jmp	loc_4F1B9C
; ---------------------------------------------------------------------------

loc_4F1B06:				; CODE XREF: .text:004F1AEBj
		push	0
		push	edi
		push	esi
		call	dword ptr [ebp+10h]
		jmp	loc_4F1B9C
; ---------------------------------------------------------------------------

loc_4F1B12:				; CODE XREF: .text:004F1AEEj
		mov	ecx, edi
		xor	edx, edx
		mov	eax, esi
		call	dword ptr [ebp+10h]
		jmp	short loc_4F1B9C
; ---------------------------------------------------------------------------

loc_4F1B1D:				; CODE XREF: .text:004F1AF3j
		push	edi
		push	0
		push	esi
		call	dword ptr [ebp+10h]
		jmp	short loc_4F1B9C
; ---------------------------------------------------------------------------

loc_4F1B26:				; CODE XREF: .text:004F1AF5j
		mov	eax, $CTA0("what?") ; "what?"
		test	eax, eax
		jz	short loc_4F1B9C
		push	232h		; line
		push	offset aXx_cpp_4 ; "xx.cpp"
		push	$CTA0("\:\=what?\=")	; '!"what?"',0
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch
		jmp	short loc_4F1B9C
; ---------------------------------------------------------------------------

loc_4F1B48:				; CODE XREF: .text:004F1AE2j
		and	ebx, 7
		dec	ebx
		jz	short loc_4F1B5B
		dec	ebx
		jz	short loc_4F1B65
		dec	ebx
		jz	short loc_4F1B6C
		sub	ebx, 2
		jz	short loc_4F1B75
		jmp	short loc_4F1B7C
; ---------------------------------------------------------------------------

loc_4F1B5B:				; CODE XREF: .text:004F1B4Cj
		push	edi
		push	esi
		call	dword ptr [ebp+10h]
		add	esp, 8
		jmp	short loc_4F1B9C
; ---------------------------------------------------------------------------

loc_4F1B65:				; CODE XREF: .text:004F1B4Fj
		push	esi
		push	edi
		call	dword ptr [ebp+10h]
		jmp	short loc_4F1B9C
; ---------------------------------------------------------------------------

loc_4F1B6C:				; CODE XREF: .text:004F1B52j
		mov	edx, edi
		mov	eax, esi
		call	dword ptr [ebp+10h]
		jmp	short loc_4F1B9C
; ---------------------------------------------------------------------------

loc_4F1B75:				; CODE XREF: .text:004F1B57j
		push	edi
		push	esi
		call	dword ptr [ebp+10h]
		jmp	short loc_4F1B9C
; ---------------------------------------------------------------------------

loc_4F1B7C:				; CODE XREF: .text:004F1B59j
		mov	edx, $CTA0("what?")
		test	edx, edx
		jz	short loc_4F1B9C
		push	25Eh		; line
		push	offset aXx_cpp_5 ; "xx.cpp"
		push	$CTA0("\:\\\=what?\\\=")	; "!\"what?\""
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F1B9C:				; CODE XREF: .text:004F1B01j
					; .text:004F1B0Dj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F1BA1:				; CODE XREF: .text:004F1C0Fp
					; .text:004F1F33p ...
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+8]
		xor	eax, eax
		test	edx, edx
		jz	short loc_4F1BB7
		jmp	short loc_4F1BB0
; ---------------------------------------------------------------------------

loc_4F1BAF:				; CODE XREF: .text:004F1BB5j
		inc	eax

loc_4F1BB0:				; CODE XREF: .text:004F1BADj
		mov	cl, [edx]
		inc	edx
		test	cl, cl
		jnz	short loc_4F1BAF

loc_4F1BB7:				; CODE XREF: .text:004F1BABj
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4F1BB9(ULONG_PTR Arguments, int)
loc_4F1BB9:				; CODE XREF: .text:004E86C8p
					; .text:004E8728p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		lea	eax, [ebp+8]
		push	eax		; lpArguments
		mov	eax, [ebp+0Ch]
		inc	eax
		inc	eax
		push	eax		; nNumberOfArguments
		push	0		; dwExceptionFlags
		push	0EEDFAE6h	; dwExceptionCode
		call	RaiseException
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F1BD6:				; CODE XREF: .text:004F214Ap
					; .text:004F2F8Dp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, 2
		cmp	dword ptr [ebp+1Ch], 0
		mov	esi, [ebp+18h]
		jnz	short loc_4F1BED
		add	ebx, 0FFFFFFFEh

loc_4F1BED:				; CODE XREF: .text:004F1BE8j
		test	byte ptr [ebp+10h], 2
		jz	short loc_4F1BF9
		or	ebx, 80h

loc_4F1BF9:				; CODE XREF: .text:004F1BF1j
		mov	eax, dword_61EE94
		cmp	dword ptr [eax], 2
		jnz	short loc_4F1C26
		push	dword ptr [ebp+0Ch]
		call	loc_4E8050
		pop	ecx
		mov	edi, eax
		push	edi
		call	loc_4F1BA1
		pop	ecx
		push	eax
		push	edi
		push	dword ptr [ebp+14h]
		push	3		; int
		push	0		; Arguments
		call	loc_4F1BB9
		add	esp, 14h

loc_4F1C26:				; CODE XREF: .text:004F1C01j
		test	esi, 80h
		jz	short loc_4F1C45
		push	2CDh		; line
		push	offset aXx_cpp_6 ; "xx.cpp"
		push	offset aDtormask0x0080 ; "(dtorMask & 0x0080) == 0"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F1C45:				; CODE XREF: .text:004F1C2Cj
		and	esi, 7
		dec	esi
		jz	short loc_4F1C58
		dec	esi
		jz	short loc_4F1C64
		dec	esi
		jz	short loc_4F1C6D
		sub	esi, 2
		jz	short loc_4F1C77
		jmp	short loc_4F1C80
; ---------------------------------------------------------------------------

loc_4F1C58:				; CODE XREF: .text:004F1C49j
		push	ebx
		push	dword ptr [ebp+8]
		call	dword ptr [ebp+14h]
		add	esp, 8
		jmp	short loc_4F1CA0
; ---------------------------------------------------------------------------

loc_4F1C64:				; CODE XREF: .text:004F1C4Cj
		push	ebx
		push	dword ptr [ebp+8]
		call	dword ptr [ebp+14h]
		jmp	short loc_4F1CA0
; ---------------------------------------------------------------------------

loc_4F1C6D:				; CODE XREF: .text:004F1C4Fj
		mov	edx, ebx
		mov	eax, [ebp+8]
		call	dword ptr [ebp+14h]
		jmp	short loc_4F1CA0
; ---------------------------------------------------------------------------

loc_4F1C77:				; CODE XREF: .text:004F1C54j
		push	ebx
		push	dword ptr [ebp+8]
		call	dword ptr [ebp+14h]
		jmp	short loc_4F1CA0
; ---------------------------------------------------------------------------

loc_4F1C80:				; CODE XREF: .text:004F1C56j
		mov	ecx, $CTA0("what?")
		test	ecx, ecx
		jz	short loc_4F1CA0
		push	2F4h		; line
		push	offset aXx_cpp_7 ; "xx.cpp"
		push	$CTA0("\:\\\=what?\\\=")	; "!\"what?\""
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F1CA0:				; CODE XREF: .text:004F1C62j
					; .text:004F1C6Bj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F1CA5:				; CODE XREF: .text:004F3923p
					; .text:004F3952p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+10h]
		test	bl, 80h
		jz	short loc_4F1CC8
		push	2FCh		; line
		push	offset aXx_cpp_8 ; "xx.cpp"
		push	offset aMfnmask0x00800 ; "(mfnMask & 0x0080) ==	0"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F1CC8:				; CODE XREF: .text:004F1CAFj
		and	ebx, 7
		dec	ebx
		jz	short loc_4F1CDB
		dec	ebx
		jz	short loc_4F1CE5
		dec	ebx
		jz	short loc_4F1CEE
		sub	ebx, 2
		jz	short loc_4F1CF7
		jmp	short loc_4F1D00
; ---------------------------------------------------------------------------

loc_4F1CDB:				; CODE XREF: .text:004F1CCCj
		push	dword ptr [ebp+8]
		call	dword ptr [ebp+0Ch]
		pop	ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F1CE5:				; CODE XREF: .text:004F1CCFj
		push	dword ptr [ebp+8]
		call	dword ptr [ebp+0Ch]
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F1CEE:				; CODE XREF: .text:004F1CD2j
		mov	eax, [ebp+8]
		call	dword ptr [ebp+0Ch]
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F1CF7:				; CODE XREF: .text:004F1CD7j
		push	dword ptr [ebp+8]
		call	dword ptr [ebp+0Ch]
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F1D00:				; CODE XREF: .text:004F1CD9j
		mov	edx, $CTA0("what?")
		test	edx, edx
		jz	short loc_4F1D20
		push	323h		; line
		push	offset aXx_cpp_9 ; "xx.cpp"
		push	$CTA0("\:\\\=what?\\\=")	; "!\"what?\""
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F1D20:				; CODE XREF: .text:004F1D07j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F1D23:				; CODE XREF: .text:004F2020p
					; .text:004F20B2p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFC0h
		push	ebx
		push	esi
		push	edi
		mov	eax, offset stru_57BED0
		call	@__InitExceptBlockLDTC
		mov	esi, [ebp+8]
		call	qqrv
		or	dword ptr [eax+0Ch], 2
		call	qqrv
		test	esi, esi
		jz	short loc_4F1D56
		movzx	edx, word ptr [esi+6]
		add	edx, esi
		jmp	short loc_4F1D58
; ---------------------------------------------------------------------------

loc_4F1D56:				; CODE XREF: .text:004F1D4Cj
		xor	edx, edx

loc_4F1D58:				; CODE XREF: .text:004F1D54j
		mov	[eax+18h], edx
		call	qqrv
		mov	ecx, [ebp+20h]
		mov	[eax+14h], ecx
		call	qqrv
		mov	edx, [ebp+24h]
		test	esi, esi
		mov	[eax+10h], edx
		jnz	short loc_4F1DA1
		cmp	dword ptr [ebp+2Ch], 0
		jz	short loc_4F1D8A
		test	byte ptr [ebp+1Ch], 4
		jnz	short loc_4F1DA1

loc_4F1D8A:				; CODE XREF: .text:004F1D82j
		push	373h		; line
		push	offset aXx_cpp_10 ; "xx.cpp"
		push	offset aTypeidRethrowF ; "typeID || (reThrow &&	(flags & XDF_ISDE"...
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F1DA1:				; CODE XREF: .text:004F1D7Cj
					; .text:004F1D88j
		test	esi, esi
		jz	short loc_4F1DB1
		test	byte ptr [esi+4], 2
		jz	short loc_4F1DB1
		test	byte ptr [esi+0Ch], 80h
		jnz	short loc_4F1DB7

loc_4F1DB1:				; CODE XREF: .text:004F1DA3j
					; .text:004F1DA9j
		test	byte ptr [ebp+1Ch], 4
		jz	short loc_4F1DFB

loc_4F1DB7:				; CODE XREF: .text:004F1DAFj
		mov	[ebp-28h], esi
		test	esi, esi
		jz	short loc_4F1DCD
		test	byte ptr [esi+4], 30h
		jz	short loc_4F1DCD
		mov	eax, [ebp-28h]
		mov	ecx, [eax+8]
		mov	[ebp-28h], ecx

loc_4F1DCD:				; CODE XREF: .text:004F1DBCj
					; .text:004F1DC2j
		sub	dword ptr [ebp+28h], 4
		push	dword ptr [ebp-28h]
		push	dword ptr [ebp+3Ah]
		push	dword ptr [ebp+39h]
		push	dword ptr [ebp+37h]
		push	dword ptr [ebp+38h]
		push	dword ptr [ebp+35h]
		push	dword ptr [ebp+0Ch]
		push	dword ptr [ebp+28h]
		push	esp		; lpArguments
		push	8		; nNumberOfArguments
		push	0C0000025h	; dwExceptionFlags
		push	0EEDFADEh	; dwExceptionCode
		call	RaiseException

loc_4F1DFB:				; CODE XREF: .text:004F1DB5j
		mov	[ebp-28h], esi
		movzx	edi, word ptr [esi+4]
		test	edi, 2
		mov	ebx, [esi]
		jz	short loc_4F1E11
		mov	eax, [esi+0Ch]
		jmp	short loc_4F1E13
; ---------------------------------------------------------------------------

loc_4F1E11:				; CODE XREF: .text:004F1E0Aj
		xor	eax, eax

loc_4F1E13:				; CODE XREF: .text:004F1E0Fj
		test	edi, 30h
		mov	[ebp-2Ch], eax
		jz	short loc_4F1E27
		mov	edx, [ebp-28h]
		mov	ecx, [edx+8]
		mov	[ebp-28h], ecx

loc_4F1E27:				; CODE XREF: .text:004F1E1Cj
		lea	eax, [ebx+52h]
		push	eax		; size
		call	loc_4F190D
		pop	ecx
		mov	[ebp-30h], eax
		mov	edx, [ebp-30h]
		xor	ecx, ecx
		mov	[edx], ecx
		mov	eax, [ebp-30h]
		mov	[eax+4], esi
		mov	edx, [ebp-30h]
		mov	ecx, [ebp+1Ch]
		mov	[edx+0Ch], ecx
		mov	eax, [ebp-30h]
		mov	[eax+10h], ebx
		mov	edx, [ebp-30h]
		mov	[edx+18h], di
		mov	ecx, [ebp-30h]
		mov	ax, [ebp-2Ch]
		mov	[ecx+1Ah], ax
		mov	edx, [ebp-30h]
		mov	ecx, [ebp-28h]
		mov	[edx+14h], ecx
		mov	eax, [ebp-30h]
		mov	edx, [ebp+10h]
		mov	[eax+8], edx
		mov	ecx, [ebp-30h]
		xor	eax, eax
		mov	[ecx+28h], eax
		mov	edx, [ebp-30h]
		xor	ecx, ecx
		mov	[edx+2Ch], ecx
		mov	eax, [ebp-30h]
		mov	dword ptr [eax+1Ch], offset loc_4F1957
		mov	edx, [ebp-30h]
		mov	ecx, [ebp+20h]
		mov	[edx+34h], ecx
		mov	eax, [ebp-30h]
		mov	edx, [ebp+24h]
		mov	[eax+38h], edx
		mov	ecx, [ebp-30h]
		mov	eax, [ebp+14h]
		mov	[ecx+20h], eax
		mov	edx, [ebp-30h]
		mov	ecx, [ebp+18h]
		mov	[edx+24h], ecx
		mov	eax, [ebp-30h]
		mov	byte ptr [eax+45h], 0
		mov	edx, [ebp-30h]
		mov	byte ptr [edx+44h], 1
		push	ebx		; n
		push	dword ptr [ebp+0Ch] ; src
		mov	ecx, [ebp-30h]
		add	ecx, 52h
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, dword_61EE94
		cmp	dword ptr [eax], 1
		jz	short loc_4F1EE8
		mov	edx, dword_61EE94
		cmp	dword ptr [edx], 2
		jnz	short loc_4F1F4E

loc_4F1EE8:				; CODE XREF: .text:004F1EDBj
		push	esi
		call	loc_4E8050
		mov	ebx, eax
		mov	eax, [ebp+34h]
		pop	ecx
		push	dword ptr [eax+18h]
		mov	edx, [ebp+34h]
		push	dword ptr [edx+14h]
		mov	ecx, [ebp+34h]
		push	dword ptr [ecx+10h]
		mov	eax, [ebp+34h]
		push	dword ptr [eax+0Ch]
		mov	edx, [ebp+34h]
		push	dword ptr [edx+8]
		mov	ecx, [ebp+34h]
		push	dword ptr [ecx+4]
		mov	eax, [ebp+34h]
		push	dword ptr [eax]
		mov	edx, [ebp-30h]
		cmp	byte ptr [edx+44h], 0
		jz	short loc_4F1F2B
		mov	ecx, [ebp-30h]
		add	ecx, 52h
		jmp	short loc_4F1F31
; ---------------------------------------------------------------------------

loc_4F1F2B:				; CODE XREF: .text:004F1F21j
		mov	eax, [ebp-30h]
		mov	ecx, [eax+40h]

loc_4F1F31:				; CODE XREF: .text:004F1F29j
		push	ecx
		push	ebx
		call	loc_4F1BA1
		pop	ecx
		push	eax
		push	ebx
		mov	edx, [ebp+28h]
		sub	edx, 5
		push	edx
		push	0Bh		; int
		push	1		; Arguments
		call	loc_4F1BB9
		add	esp, 34h

loc_4F1F4E:				; CODE XREF: .text:004F1EE6j
		test	byte ptr [ebp-2Ch], 1
		jz	short loc_4F1FB8
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4F1F71
		push	445h		; line
		push	offset aXx_cpp_11 ; "xx.cpp"
		push	offset aCctraddr ; "cctrAddr"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F1F71:				; CODE XREF: .text:004F1F58j
		mov	eax, dword_61EE90
		mov	[ebp-34h], eax
		mov	word ptr [ebp-14h], 8
		push	dword ptr [ebp+18h]
		push	dword ptr [ebp+14h]
		push	dword ptr [ebp+0Ch]
		mov	edx, [ebp-30h]
		add	edx, 52h
		push	edx
		call	loc_4F1A93
		mov	word ptr [ebp-14h], 0
		add	esp, 10h
		jmp	short loc_4F1FAF
; ---------------------------------------------------------------------------

loc_4F1F9F:				; DATA XREF: .data:stru_57BEB0o
		call	___call_terminate
; ---------------------------------------------------------------------------
		mov	word ptr [ebp-14h], 10h
		call	loc_4F2215

loc_4F1FAF:				; CODE XREF: .text:004F1F9Dj
		mov	ecx, [ebp-34h]
		mov	dword_61EE90, ecx

loc_4F1FB8:				; CODE XREF: .text:004F1F52j
		call	qqrv
		mov	eax, [eax+18h]
		mov	[ebp-40h], eax
		lea	eax, [ebp-40h]
		mov	edx, [ebp+28h]
		mov	[ebp-3Ch], edx
		mov	ecx, [ebp-30h]
		mov	[ebp-38h], ecx
		push	eax		; lpArguments
		push	3		; nNumberOfArguments
		push	1		; dwExceptionFlags
		push	0EEFFACEh	; dwExceptionCode
		call	RaiseException
		mov	edx, [ebp-24h]
		mov	fs:0, edx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F1FF4:				; CODE XREF: .text:004E6C26p
					; .text:004E6DB6p ...
		mov	ecx, esp
		add	ecx, 4
		push	ecx
		push	ebp
		push	esi
		push	edi
		push	edx
		push	ebx
		push	eax
		push	esp
		push	dword ptr [ecx+20h]
		push	0
		push	dword ptr [ecx-4]
		push	dword ptr [ecx+1Ch]
		push	dword ptr [ecx+18h]
		push	dword ptr [ecx+14h]
		push	dword ptr [ecx+10h]
		push	dword ptr [ecx+0Ch]
		push	dword ptr [ecx+8]
		push	dword ptr [ecx+4]
		push	dword ptr [ecx]
		call	loc_4F1D23
		add	esp, 4Ch
		retn
; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	ecx, ebp
		add	ecx, 8
		push	ecx
		push	dword ptr [ebp+0]
		push	esi
		push	edi
		push	edx
		push	ebx
		push	eax
		mov	[ebp-4], esp
		mov	eax, ebp
		mov	esi, [eax+4]
		call	qqrv
		mov	ebx, [eax+8]
		test	ebx, ebx
		jnz	short loc_4F205A
		call	___call_terminate
; ---------------------------------------------------------------------------

loc_4F205A:				; CODE XREF: .text:004F2053j
		test	byte ptr [ebx+0Ch], 4
		jz	short loc_4F2082
		cmp	byte ptr [ebx+44h], 0
		jnz	short loc_4F207D
		push	551h
		push	offset aXx_cpp_12 ; "xx.cpp"
		push	offset aXdpXdargbuff ; "xdp->xdArgBuff"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F207D:				; CODE XREF: .text:004F2064j
		mov	eax, [ebx+52h]
		jmp	short loc_4F2090
; ---------------------------------------------------------------------------

loc_4F2082:				; CODE XREF: .text:004F205Ej
		cmp	byte ptr [ebx+44h], 0
		jz	short loc_4F208D
		lea	eax, [ebx+52h]
		jmp	short loc_4F2090
; ---------------------------------------------------------------------------

loc_4F208D:				; CODE XREF: .text:004F2086j
		mov	eax, [ebx+40h]

loc_4F2090:				; CODE XREF: .text:004F2080j
					; .text:004F208Bj
		or	dword ptr [ebx+0Ch], 8
		push	dword ptr [ebp-4]
		push	0
		push	1
		push	esi
		push	dword ptr [ebp+0Ch]
		push	dword ptr [ebp+8]
		push	dword ptr [ebx+0Ch]
		push	dword ptr [ebx+24h]
		push	dword ptr [ebx+20h]
		push	dword ptr [ebx+8]
		push	eax
		push	dword ptr [ebx+4]
		call	loc_4F1D23
		add	esp, 30h
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

__Global_unwind:			; CODE XREF: .text:004F2CC6p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFB0h
		push	ebx
		mov	ebx, [ebp+0Ch]
		test	ebx, ebx
		jnz	short loc_4F20E4
		mov	dword ptr [ebp-50h], 26h
		mov	dword ptr [ebp-4Ch], 2
		xor	eax, eax
		lea	ebx, [ebp-50h]
		mov	[ebp-40h], eax

loc_4F20E4:				; CODE XREF: .text:004F20CCj
		or	dword ptr [ebx+4], 2
		mov	eax, 7Bh
		mov	edx, 7Bh
		mov	eax, [ebp+8]
		mov	edx, ebx
		call	___doGlobalUnwind
		xor	dword ptr [ebx+4], 2
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F2105:				; CODE XREF: .text:004F21B7p
					; .text:004F2205p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		mov	eax, offset stru_57BF04
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		call	@__InitExceptBlockLDTC
		test	ebx, ebx
		jnz	short loc_4F2136
		push	5B9h		; line
		push	offset aXx_cpp_13 ; "xx.cpp"
		push	offset aDtoraddr ; "dtorAddr"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F2136:				; CODE XREF: .text:004F211Dj
		mov	word ptr [ebp-14h], 8
		push	1
		push	dword ptr [ebp+14h]
		push	ebx
		push	0
		push	dword ptr [ebp+0Ch]
		push	dword ptr [ebp+8]
		call	loc_4F1BD6
		mov	word ptr [ebp-14h], 0
		add	esp, 18h
		jmp	short loc_4F216A
; ---------------------------------------------------------------------------

loc_4F215A:				; DATA XREF: .data:stru_57BEE4o
		call	___call_terminate
; ---------------------------------------------------------------------------
		mov	word ptr [ebp-14h], 10h
		call	loc_4F2215

loc_4F216A:				; CODE XREF: .text:004F2158j
		mov	edx, [ebp-24h]
		mov	fs:0, edx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F217A:				; CODE XREF: .text:004F22C0p
					; .text:004F2842p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		cmp	byte ptr [ebx+44h], 0
		jz	short loc_4F21C9
		test	byte ptr [ebx+1Ah], 2
		jz	short loc_4F21C5
		mov	eax, [ebx+14h]
		mov	esi, dword_61EE90
		lea	edx, [ebx+52h]
		test	byte ptr [eax+0Ch], 80h
		jz	short loc_4F21A2
		mov	edx, [edx]

loc_4F21A2:				; CODE XREF: .text:004F219Ej
		mov	ecx, [ebx+0Ch]
		and	ecx, 0Ch
		cmp	ecx, 0Ch
		jz	short loc_4F21BF
		movzx	ecx, word ptr [eax+2Ch]
		push	ecx
		push	dword ptr [eax+28h]
		push	eax
		push	edx
		call	loc_4F2105
		add	esp, 10h

loc_4F21BF:				; CODE XREF: .text:004F21ABj
		mov	dword_61EE90, esi

loc_4F21C5:				; CODE XREF: .text:004F218Cj
		mov	byte ptr [ebx+44h], 0

loc_4F21C9:				; CODE XREF: .text:004F2186j
		cmp	byte ptr [ebx+45h], 0
		jz	short loc_4F2211
		mov	esi, [ebx+3Ch]
		test	esi, esi
		jnz	short loc_4F21ED
		push	5FEh		; line
		push	offset aXx_cpp_14 ; "xx.cpp"
		push	offset aArgtype	; "argType"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F21ED:				; CODE XREF: .text:004F21D4j
		test	byte ptr [esi+4], 2
		jz	short loc_4F220D
		test	byte ptr [esi+0Ch], 2
		jz	short loc_4F220D
		movzx	eax, word ptr [esi+2Ch]
		push	eax
		push	dword ptr [esi+28h]
		push	esi
		push	dword ptr [ebx+40h]
		call	loc_4F2105
		add	esp, 10h

loc_4F220D:				; CODE XREF: .text:004F21F1j
					; .text:004F21F7j
		mov	byte ptr [ebx+45h], 0

loc_4F2211:				; CODE XREF: .text:004F21CDj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F2215:				; CODE XREF: .text:loc_4E8624p
					; .text:loc_4E86EAp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		mov	[ebp-8], ebx
		mov	[ebp-0Ch], edi
		mov	[ebp-10h], esi
		call	qqrv
		cmp	dword ptr [eax+8], 0
		jnz	short loc_4F224C
		push	629h		; line
		push	offset aXx_cpp_15 ; "xx.cpp"
		push	offset a__cppexception ; "__CPPexceptionList"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F224C:				; CODE XREF: .text:004F2233j
		call	qqrv
		mov	ebx, [eax+8]
		call	qqrv
		mov	edx, [ebx]
		mov	[eax+8], edx
		mov	eax, [ebx+28h]
		mov	[ebp-4], eax
		mov	esi, fs:0
		test	esi, esi
		jnz	short loc_4F228B
		push	637h		; line
		push	offset aXx_cpp_16 ; "xx.cpp"
		push	offset aXl	; "xl"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F228B:				; CODE XREF: .text:004F2272j
		cmp	esi, [ebx+28h]
		jz	short loc_4F22A7
		push	638h		; line
		push	offset aXx_cpp_17 ; "xx.cpp"
		push	offset aXdrptrXderradd ; "xdrPtr->xdERRaddr == xl"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F22A7:				; CODE XREF: .text:004F228Ej
		mov	eax, [ebp-4]
		mov	ecx, [ebp-4]
		movzx	edx, word ptr [eax+10h]
		mov	eax, [ecx+8]
		mov	ecx, [ebp-4]
		mov	dx, [eax+edx]
		mov	[ecx+10h], dx
		push	ebx
		call	loc_4F217A
		pop	ecx
		mov	esi, [ebx+0Ch]
		and	esi, 2
		test	esi, esi
		push	ebx
		call	dword ptr [ebx+1Ch]
		pop	ecx
		test	esi, esi
		jz	short loc_4F230D
		mov	eax, dword_61EE94
		cmp	dword ptr [eax], 2
		jnz	short loc_4F22F0
		push	dword ptr [ebp+4]
		push	1		; int
		push	6		; Arguments
		call	loc_4F1BB9
		add	esp, 0Ch

loc_4F22F0:				; CODE XREF: .text:004F22DFj
		mov	edx, [ebp-4]
		mov	ecx, [edx+0Ch]
		mov	[ebp-14h], ecx
		mov	ebx, [ebp-8]
		mov	edi, [ebp-0Ch]
		mov	esi, [ebp-10h]
		mov	edx, [ebp-14h]
		mov	esp, ebp
		pop	ebp
		pop	eax
		mov	esp, edx
		push	eax
		retn
; ---------------------------------------------------------------------------

loc_4F230D:				; CODE XREF: .text:004F22D5j
		mov	eax, dword_61EE94
		cmp	dword ptr [eax], 2
		jnz	short loc_4F2326
		push	dword ptr [ebp+4]
		push	1		; int
		push	6		; Arguments
		call	loc_4F1BB9
		add	esp, 0Ch

loc_4F2326:				; CODE XREF: .text:004F2315j
		mov	ebx, [ebp-8]
		mov	edi, [ebp-0Ch]
		mov	esi, [ebp-10h]
		mov	eax, ebp
		mov	eax, [ebp+4]
		mov	edx, [ebp-4]
		mov	edx, [edx+0Ch]
		mov	ebp, [ebp+0]
		mov	esp, edx
		push	eax
		retn
; ---------------------------------------------------------------------------
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F2348:				; CODE XREF: .text:004F2D01p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		mov	esi, [edi+4]
		test	esi, esi
		jz	short loc_4F2375
		test	byte ptr [esi+4], 30h
		jnz	short loc_4F2375
		push	6B2h		; line
		push	offset aXx_cpp_18 ; "xx.cpp"
		push	offset aTpidTpidTpmask ; "!tpid	|| tpid->tpMask	& (TM_IS_PTR | TM"...
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F2375:				; CODE XREF: .text:004F2356j
					; .text:004F235Cj
		push	56h		; size
		call	loc_4F190D
		pop	ecx
		mov	ebx, eax
		call	qqrv
		mov	eax, [eax+8]
		mov	[ebx], eax
		call	qqrv
		mov	[eax+8], ebx
		mov	edx, [ebp+10h]
		cmp	dword ptr [edx+10h], 8
		jnz	short loc_4F23BB
		mov	ecx, [ebp+10h]
		mov	eax, [ecx+30h]
		mov	[ebx+14h], eax
		test	eax, eax
		jz	short loc_4F23B3
		mov	dx, [eax+0Ch]
		jmp	short loc_4F23B5
; ---------------------------------------------------------------------------

loc_4F23B3:				; CODE XREF: .text:004F23ABj
		xor	edx, edx

loc_4F23B5:				; CODE XREF: .text:004F23B1j
		mov	[ebx+1Ah], dx
		jmp	short loc_4F23DE
; ---------------------------------------------------------------------------

loc_4F23BB:				; CODE XREF: .text:004F239Ej
		mov	eax, esi
		test	esi, esi
		jz	short loc_4F23C6
		mov	ecx, [esi+8]
		jmp	short loc_4F23C8
; ---------------------------------------------------------------------------

loc_4F23C6:				; CODE XREF: .text:004F23BFj
		xor	ecx, ecx

loc_4F23C8:				; CODE XREF: .text:004F23C4j
		mov	[ebx+14h], ecx
		test	esi, esi
		jz	short loc_4F23D8
		mov	edx, [esi+8]
		mov	dx, [edx+0Ch]
		jmp	short loc_4F23DA
; ---------------------------------------------------------------------------

loc_4F23D8:				; CODE XREF: .text:004F23CDj
		xor	edx, edx

loc_4F23DA:				; CODE XREF: .text:004F23D6j
		mov	[ebx+1Ah], dx

loc_4F23DE:				; CODE XREF: .text:004F23B9j
		mov	[ebx+4], eax
		mov	dword ptr [ebx+0Ch], 4
		mov	dword ptr [ebx+10h], 4
		test	eax, eax
		jz	short loc_4F23F9
		mov	ax, [eax+4]
		jmp	short loc_4F23FB
; ---------------------------------------------------------------------------

loc_4F23F9:				; CODE XREF: .text:004F23F1j
		xor	eax, eax

loc_4F23FB:				; CODE XREF: .text:004F23F7j
		mov	[ebx+18h], ax
		xor	edx, edx
		mov	[ebx+8], edx
		xor	eax, eax
		mov	ecx, [ebp+0Ch]
		xor	edx, edx
		mov	[ebx+28h], ecx
		mov	[ebx+2Ch], edi
		mov	dword ptr [ebx+1Ch], offset loc_4F1957
		mov	[ebx+34h], eax
		mov	[ebx+38h], edx
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebx+20h], ecx
		mov	[ebx+24h], eax
		mov	byte ptr [ebx+45h], 0
		mov	byte ptr [ebx+44h], 1
		mov	[ebx+3Ch], esi
		test	esi, esi
		mov	edx, [ebp+1Ch]
		mov	[ebx+30h], edx
		mov	ecx, [ebp+10h]
		mov	eax, [ecx+18h]
		mov	[ebx+52h], eax
		jz	short loc_4F2465
		test	byte ptr [edi+8], 80h
		jnz	short loc_4F2465
		mov	byte ptr [ebx+45h], 1
		mov	edx, [ebp+14h]
		lea	eax, [ebx+52h]
		mov	ecx, [edx]
		add	ecx, [ebp+18h]
		mov	[ebx+40h], ecx
		mov	edx, [ebx+40h]
		mov	eax, [eax]
		mov	[edx], eax

loc_4F2465:				; CODE XREF: .text:004F2444j
					; .text:004F244Aj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F246A:				; CODE XREF: .text:004F2D1Ap
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	eax, [ebx+28h]
		cmp	eax, [ebp+0Ch]
		jz	short loc_4F2495
		push	722h		; line
		push	offset aXx_cpp_19 ; "xx.cpp"
		push	offset aDscptrXderradd ; "dscPtr->xdERRaddr == errPtr"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F2495:				; CODE XREF: .text:004F247Cj
		mov	edx, [ebx+2Ch]
		cmp	edx, [ebp+8]
		jz	short loc_4F24B4
		push	723h		; line
		push	offset aXx_cpp_20 ; "xx.cpp"
		push	offset aDscptrXdhtabad ; "dscPtr->xdHtabAdr == hdtPtr"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F24B4:				; CODE XREF: .text:004F249Bj
		cmp	byte ptr [ebx+45h], 0
		jz	short loc_4F24D1
		push	725h		; line
		push	offset aXx_cpp_21 ; "xx.cpp"
		push	offset aDscptrXdargcop ; "dscPtr->xdArgCopy == 0"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F24D1:				; CODE XREF: .text:004F24B8j
		mov	ecx, [ebp+8]
		mov	eax, [ecx+4]
		mov	[ebx+3Ch], eax
		test	eax, eax
		jz	loc_4F273A
		mov	edx, [ebp+8]
		test	byte ptr [edx+8], 80h
		jnz	loc_4F273A
		mov	ecx, [ebp+8]
		mov	esi, eax
		test	byte ptr [ecx+8], 1
		setz	dl
		and	edx, 1
		lea	ecx, [ebx+52h]
		mov	[ebp-8], edx
		mov	[ebp-4], ecx
		mov	byte ptr [ebx+45h], 1
		mov	edx, [ebp+14h]
		mov	ecx, [edx]
		add	ecx, [ebp+18h]
		mov	[ebx+40h], ecx
		movzx	eax, word ptr [esi+4]
		mov	edx, eax
		test	al, 30h
		mov	edi, [esi]
		jz	short loc_4F2529
		mov	esi, [esi+8]
		movzx	edx, word ptr [esi+4]

loc_4F2529:				; CODE XREF: .text:004F2520j
		test	al, 10h
		jz	short loc_4F254D
		test	byte ptr [ebx+0Ch], 1
		jz	short loc_4F254D
		push	edi		; n
		push	0		; c
		push	dword ptr [ebx+40h] ; s
		call	_memset
		mov	dword ptr [ebp-8], 1
		add	esp, 0Ch
		jmp	loc_4F2716
; ---------------------------------------------------------------------------

loc_4F254D:				; CODE XREF: .text:004F252Bj
					; .text:004F2531j
		test	dl, 1
		jz	loc_4F2622
		test	al, 30h
		jz	loc_4F2622
		test	al, 20h
		jz	short loc_4F2596
		test	byte ptr [ebx+18h], 10h
		jz	short loc_4F257F
		push	782h		; line
		push	offset aXx_cpp_22 ; "xx.cpp"
		push	offset aDscptrXdmaskTm ; "(dscPtr->xdMask & TM_IS_PTR) == 0"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F257F:				; CODE XREF: .text:004F2566j
		mov	dword ptr [ebp-8], 1
		test	byte ptr [ebx+0Ch], 2
		jz	short loc_4F25D6
		mov	eax, [ebp-4]
		mov	ecx, [eax]
		mov	[ebp-4], ecx
		jmp	short loc_4F25D6
; ---------------------------------------------------------------------------

loc_4F2596:				; CODE XREF: .text:004F2560j
		test	al, 10h
		jnz	short loc_4F25B1
		push	795h		; line
		push	offset aXx_cpp_23 ; "xx.cpp"
		push	offset aMaskTm_is_ptr ;	"mask &	TM_IS_PTR"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F25B1:				; CODE XREF: .text:004F2598j
		test	byte ptr [ebx+18h], 10h
		jnz	short loc_4F25CE
		push	796h		; line
		push	offset aXx_cpp_24 ; "xx.cpp"
		push	offset aDscptrXdmask_0 ; "dscPtr->xdMask & TM_IS_PTR"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F25CE:				; CODE XREF: .text:004F25B5j
		mov	eax, [ebp-4]
		mov	edx, [eax]
		mov	[ebp-4], edx

loc_4F25D6:				; CODE XREF: .text:004F258Aj
					; .text:004F2594j
		push	esi
		push	dword ptr [ebx+14h]
		call	loc_4E8088
		add	esp, 8
		test	eax, eax
		jnz	short loc_4F260D
		mov	ecx, [ebp-4]
		mov	[ebp-0Ch], ecx
		push	esi
		push	dword ptr [ebx+14h]
		push	dword ptr [ebp-4]
		call	@__adjustClassAdr$qpvp4tpidt2 ;	__adjustClassAdr(void *,tpid *,tpid *)
		add	esp, 0Ch
		mov	[ebp-4], eax
		mov	eax, [ebp-4]
		cmp	eax, [ebp-0Ch]
		jz	short loc_4F260D
		mov	dword ptr [ebp-8], 1

loc_4F260D:				; CODE XREF: .text:004F25E4j
					; .text:004F2604j
		push	edi		; n
		lea	edx, [ebp-4]
		push	edx		; src
		push	dword ptr [ebx+40h] ; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_4F2716
; ---------------------------------------------------------------------------

loc_4F2622:				; CODE XREF: .text:004F2550j
					; .text:004F2558j
		test	byte ptr [ebx+18h], 1
		jz	loc_4F26CE
		mov	ecx, [ebx+4]
		cmp	ecx, [ebx+14h]
		jz	short loc_4F264B
		push	7B6h		; line
		push	offset aXx_cpp_25 ; "xx.cpp"
		push	offset aDscptrXdtypeid ; "dscPtr->xdTypeID == dscPtr->xdBase"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F264B:				; CODE XREF: .text:004F2632j
		push	esi
		push	dword ptr [ebx+14h]
		call	loc_4E8088
		add	esp, 8
		test	eax, eax
		jnz	short loc_4F2674
		push	esi
		push	dword ptr [ebx+14h]
		push	dword ptr [ebp-4]
		call	@__adjustClassAdr$qpvp4tpidt2 ;	__adjustClassAdr(void *,tpid *,tpid *)
		add	esp, 0Ch
		mov	[ebp-4], eax
		mov	dword ptr [ebp-8], 1

loc_4F2674:				; CODE XREF: .text:004F2659j
		test	byte ptr [esi+0Ch], 1
		jz	short loc_4F26BD
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+0Ch], 0
		jnz	short loc_4F269A
		push	7D0h		; line
		push	offset aXx_cpp_26 ; "xx.cpp"
		push	offset aHdtptrHdcctrad ; "hdtPtr->HDcctrAddr"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F269A:				; CODE XREF: .text:004F2681j
		mov	edx, [ebp+8]
		push	dword ptr [edx+10h]
		mov	ecx, [ebp+8]
		push	dword ptr [ecx+0Ch]
		push	dword ptr [ebp-4]
		push	dword ptr [ebx+40h]
		call	loc_4F1A93
		mov	dword ptr [ebp-8], 1
		add	esp, 10h
		jmp	short loc_4F2716
; ---------------------------------------------------------------------------

loc_4F26BD:				; CODE XREF: .text:004F2678j
		push	edi		; n
		push	dword ptr [ebp-4] ; src
		push	dword ptr [ebx+40h] ; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_4F2716
; ---------------------------------------------------------------------------

loc_4F26CE:				; CODE XREF: .text:004F2626j
		test	al, 20h
		jz	short loc_4F26EB
		push	edi		; n
		lea	eax, [ebp-4]
		push	eax		; src
		push	dword ptr [ebx+40h] ; dest
		call	_memcpy
		mov	dword ptr [ebp-8], 1
		add	esp, 0Ch
		jmp	short loc_4F2716
; ---------------------------------------------------------------------------

loc_4F26EB:				; CODE XREF: .text:004F26D0j
		cmp	edi, [ebx+10h]
		jz	short loc_4F2707
		push	7F8h		; line
		push	offset aXx_cpp_27 ; "xx.cpp"
		push	offset aDscptrXdsizeSi ; "dscPtr->xdSize == size"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F2707:				; CODE XREF: .text:004F26EEj
		push	edi		; n
		push	dword ptr [ebp-4] ; src
		push	dword ptr [ebx+40h] ; dest
		call	_memcpy
		add	esp, 0Ch

loc_4F2716:				; CODE XREF: .text:004F2548j
					; .text:004F261Dj ...
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4F273A
		test	byte ptr [esi+0Ch], 2
		jz	short loc_4F2736
		movzx	edx, word ptr [esi+2Ch]
		push	edx
		push	dword ptr [esi+28h]
		push	esi
		push	dword ptr [ebp-4]
		call	loc_4F2105
		add	esp, 10h

loc_4F2736:				; CODE XREF: .text:004F2720j
		mov	byte ptr [ebx+44h], 0

loc_4F273A:				; CODE XREF: .text:004F24DCj
					; .text:004F24E9j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F2741:				; CODE XREF: .text:004F28B5p
					; .text:004F28C9p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		xor	eax, eax
		push	ebx
		push	esi
		push	edi
		mov	[ebp-0Ch], eax
		mov	edx, [ebp+8]
		mov	ecx, [edx+8]
		mov	[ebp-4], ecx
		mov	eax, [ebp-4]
		mov	edx, [ebp+8]
		sub	edx, [eax+4]
		mov	[ebp-8], edx
		mov	ecx, [ebp+8]
		movzx	ebx, word ptr [ecx+10h]
		jmp	loc_4F2898
; ---------------------------------------------------------------------------

loc_4F2770:				; CODE XREF: .text:004F289Fj
		mov	eax, ebx
		mov	edx, [ebp-4]
		mov	ecx, [ebp+8]
		movzx	edi, word ptr [edx+eax]
		add	eax, 2
		mov	edx, [ebp-4]
		movzx	edx, word ptr [edx+eax]
		mov	[ecx+10h], di
		add	eax, 2
		sub	edx, 1
		jb	short loc_4F27AE
		sub	edx, 3
		jb	loc_4F2896
		jz	short loc_4F27F0
		dec	edx
		jz	loc_4F284F
		jmp	loc_4F2876
; ---------------------------------------------------------------------------
		jmp	loc_4F2896
; ---------------------------------------------------------------------------

loc_4F27AE:				; CODE XREF: .text:004F2790j
		mov	edx, [ebp-4]
		mov	ecx, [ebp+8]
		mov	eax, [edx+eax+4]
		mov	dword_61EE98, eax
		mov	word ptr [ecx+12h], 1
		push	ebx
		push	ebp
		push	esi
		push	edi
		mov	ecx, 7Bh
		mov	ebx, 7Bh
		mov	ecx, [ebp-8]
		mov	ebx, offset dword_61EE98
		call	@invokeHnd$qv	; invokeHnd(void)
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		mov	eax, [ebp+8]
		mov	word ptr [eax+12h], 0
		jmp	loc_4F2896
; ---------------------------------------------------------------------------

loc_4F27F0:				; CODE XREF: .text:004F279Bj
		call	qqrv
		add	eax, 8
		mov	[ebp-10h], eax
		jmp	short loc_4F280F
; ---------------------------------------------------------------------------

loc_4F27FF:				; CODE XREF: .text:004F2816j
		mov	edx, [esi+28h]
		cmp	edx, [ebp+8]
		jnz	short loc_4F280C
		cmp	ebx, [esi+30h]
		jz	short loc_4F2818

loc_4F280C:				; CODE XREF: .text:004F2805j
		mov	[ebp-10h], esi

loc_4F280F:				; CODE XREF: .text:004F27FDj
		mov	ecx, [ebp-10h]
		mov	esi, [ecx]
		test	esi, esi
		jnz	short loc_4F27FF

loc_4F2818:				; CODE XREF: .text:004F280Aj
		test	esi, esi
		jz	short loc_4F2823
		mov	eax, [ebp-10h]
		cmp	esi, [eax]
		jz	short loc_4F283A

loc_4F2823:				; CODE XREF: .text:004F281Aj
		push	8BAh		; line
		push	offset aXx_cpp_28 ; "xx.cpp"
		push	offset aXdrptrXdrptrXd ; "xdrPtr && xdrPtr == *xdrLPP"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F283A:				; CODE XREF: .text:004F2821j
		mov	edx, [esi]
		mov	ecx, [ebp-10h]
		mov	[ecx], edx
		push	esi
		call	loc_4F217A
		pop	ecx
		push	esi
		call	dword ptr [esi+1Ch]
		pop	ecx
		jmp	short loc_4F2896
; ---------------------------------------------------------------------------

loc_4F284F:				; CODE XREF: .text:004F279Ej
		mov	edx, [ebp-4]
		mov	ecx, [ebp-4]
		mov	edx, [edx+eax]
		add	eax, 4
		mov	eax, [ecx+eax]
		push	dword ptr [ebp-8]
		push	dword ptr [ebp+8]
		add	edx, [ebp-0Ch]
		push	edx
		push	eax
		call	loc_4F34FD
		add	esp, 10h
		mov	[ebp-0Ch], eax
		jmp	short loc_4F2896
; ---------------------------------------------------------------------------

loc_4F2876:				; CODE XREF: .text:004F27A4j
		mov	eax, offset aBogusContextIn ; "bogus context in	Local_unwind()"
		test	eax, eax
		jz	short loc_4F2896
		push	8E9h		; line
		push	offset aXx_cpp_29 ; "xx.cpp"
		push	offset aBogusContext_0 ; "!\"bogus context in Local_unwind()\""
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F2896:				; CODE XREF: .text:004F2795j
					; .text:004F27A9j ...
		mov	ebx, edi

loc_4F2898:				; CODE XREF: .text:004F276Bj
		test	ebx, ebx
		jz	short loc_4F28A5
		cmp	ebx, [ebp+0Ch]
		jnz	loc_4F2770

loc_4F28A5:				; CODE XREF: .text:004F289Aj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; operator==(_GUID const &, _GUID const	&)
@$beql$qrx5_GUIDt1:
		push	ebp
		mov	ebp, esp
		push	dword ptr [ebp+0Ch]
		push	dword ptr [ebp+8]
		call	loc_4F2741
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		push	0
		push	ebx
		call	loc_4F2741
		add	esp, 8
		mov	eax, [ebx]
		mov	fs:0, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F28DB:				; CODE XREF: .text:004F2BC3p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFF00h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		add	edi, 8
		jmp	loc_4F29CD
; ---------------------------------------------------------------------------

loc_4F28F2:				; CODE XREF: .text:004F29D0j
		mov	eax, [edi+4]
		test	eax, eax
		jnz	short loc_4F2900
		mov	eax, edi
		jmp	loc_4F29D8
; ---------------------------------------------------------------------------

loc_4F2900:				; CODE XREF: .text:004F28F7j
		test	byte ptr [eax+4], 30h
		jz	loc_4F29CA
		push	eax
		call	loc_4E8050
		pop	ecx
		mov	esi, eax

loc_4F2913:				; CODE XREF: .text:004F2947j
		mov	ebx, esi
		push	6		; maxlen
		push	offset s2	; "const "
		push	ebx		; s1
		call	_strncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4F292E
		add	esi, 6
		jmp	short loc_4F2945
; ---------------------------------------------------------------------------

loc_4F292E:				; CODE XREF: .text:004F2927j
		push	9		; maxlen
		push	offset aVolatile ; "volatile "
		push	ebx		; s1
		call	_strncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4F2945
		add	esi, 9

loc_4F2945:				; CODE XREF: .text:004F292Cj
					; .text:004F2940j
		cmp	esi, ebx
		jnz	short loc_4F2913
		jmp	short loc_4F2956
; ---------------------------------------------------------------------------

loc_4F294B:				; CODE XREF: .text:004F2959j
		movsx	eax, byte ptr [ebx]
		cmp	eax, 3Ah
		jnz	short loc_4F2955
		mov	esi, ebx

loc_4F2955:				; CODE XREF: .text:004F2951j
		inc	ebx

loc_4F2956:				; CODE XREF: .text:004F2949j
		cmp	byte ptr [ebx],	0
		jnz	short loc_4F294B
		movsx	eax, byte ptr [esi]
		cmp	eax, 3Ah
		jnz	short loc_4F2964
		inc	esi

loc_4F2964:				; CODE XREF: .text:004F2961j
		push	esi		; s
		call	_strlen
		pop	ecx
		mov	ebx, eax
		sub	ebx, 2
		cmp	ebx, 0FFh
		jg	short loc_4F29CA
		push	ebx		; n
		push	esi		; src
		lea	eax, [ebp-0FFh]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	[ebp-100h], bl
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx+18h]
		mov	ebx, [ecx]

loc_4F2997:				; CODE XREF: .text:004F29C0j
		xor	eax, eax
		lea	edx, [ebp-100h]
		mov	al, [ebp-100h]
		inc	eax
		push	eax		; n
		push	dword ptr [ebx-2Ch] ; s2
		push	edx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4F29C2
		mov	ebx, [ebx-24h]
		test	ebx, ebx
		jz	short loc_4F29C2
		mov	ebx, [ebx]
		jmp	short loc_4F2997
; ---------------------------------------------------------------------------

loc_4F29C2:				; CODE XREF: .text:004F29B5j
					; .text:004F29BCj
		test	ebx, ebx
		jz	short loc_4F29CA
		mov	eax, edi
		jmp	short loc_4F29D8
; ---------------------------------------------------------------------------

loc_4F29CA:				; CODE XREF: .text:004F2904j
					; .text:004F2976j ...
		add	edi, 14h

loc_4F29CD:				; CODE XREF: .text:004F28EDj
		cmp	dword ptr [edi], 0
		jnz	loc_4F28F2
		xor	eax, eax

loc_4F29D8:				; CODE XREF: .text:004F28FBj
					; .text:004F29C8j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F29DF:				; CODE XREF: .text:004F2BD6p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		add	ebx, 8
		jmp	short loc_4F2A19
; ---------------------------------------------------------------------------

loc_4F29EF:				; CODE XREF: .text:004F2A1Cj
		mov	eax, [ebx+4]
		test	eax, eax
		jnz	short loc_4F29FA
		mov	eax, ebx
		jmp	short loc_4F2A20
; ---------------------------------------------------------------------------

loc_4F29FA:				; CODE XREF: .text:004F29F4j
		push	0
		push	dword ptr [esi+0Ch]
		push	eax
		push	dword ptr [esi+8]
		push	dword ptr [esi+4]
		call	loc_4F1984
		add	esp, 14h
		test	eax, eax
		jz	short loc_4F2A16
		mov	eax, ebx
		jmp	short loc_4F2A20
; ---------------------------------------------------------------------------

loc_4F2A16:				; CODE XREF: .text:004F2A10j
		add	ebx, 14h

loc_4F2A19:				; CODE XREF: .text:004F29EDj
		cmp	dword ptr [ebx], 0
		jnz	short loc_4F29EF
		xor	eax, eax

loc_4F2A20:				; CODE XREF: .text:004F29F8j
					; .text:004F2A14j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F2A24:				; CODE XREF: .text:004E7B8Cp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFEA0h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		mov	eax, offset stru_57BF28
		call	@__InitExceptBlockLDTC
		mov	edx, [edi+1Ch]
		mov	[ebp-30h], edx
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx+8]
		mov	[ebp-34h], eax
		mov	edx, [ebp-34h]
		mov	ecx, [ebp+0Ch]
		sub	ecx, [edx+4]
		mov	[ebp-3Ch], ecx
		mov	eax, [ebp+0Ch]
		mov	edx, [eax+0Ch]
		mov	[ebp-40h], edx
		cmp	dword ptr [edi], 0EEDFAE6h
		jnz	short loc_4F2A79
		xor	eax, eax
		mov	edx, [ebp-2Ch]
		mov	fs:0, edx
		jmp	loc_4F2ED6
; ---------------------------------------------------------------------------

loc_4F2A79:				; CODE XREF: .text:004F2A67j
		call	__fpreset
		test	byte ptr [edi+4], 6
		jz	short loc_4F2AFD
		push	0
		push	dword ptr [ebp+0Ch]
		call	loc_4F2741
		add	esp, 8
		cmp	dword ptr [edi], 0EEFFACEh
		jnz	short loc_4F2AEA
		mov	ecx, [ebp-34h]
		mov	ebx, [ecx]
		test	ebx, ebx
		jz	short loc_4F2AEA
		jmp	short loc_4F2AC9
; ---------------------------------------------------------------------------

loc_4F2AA4:				; CODE XREF: .text:004F2ACCj
		push	1
		mov	eax, [ebp-30h]
		push	dword ptr [eax+0Ch]
		push	dword ptr [ebx]
		mov	edx, [ebp-30h]
		push	dword ptr [edx+8]
		mov	ecx, [ebp-30h]
		push	dword ptr [ecx+4]
		call	loc_4F1984
		add	esp, 14h
		test	eax, eax
		jnz	short loc_4F2AEA
		add	ebx, 4

loc_4F2AC9:				; CODE XREF: .text:004F2AA2j
		cmp	dword ptr [ebx], 0
		jnz	short loc_4F2AA4
		mov	ebx, fs:0
		mov	eax, [ebp+0Ch]
		mov	edx, [eax]
		mov	fs:0, edx
		call	___call_unexpected
; ---------------------------------------------------------------------------
		mov	fs:0, ebx

loc_4F2AEA:				; CODE XREF: .text:004F2A97j
					; .text:004F2AA0j ...
		mov	eax, 1
		mov	edx, [ebp-2Ch]
		mov	fs:0, edx
		jmp	loc_4F2ED6
; ---------------------------------------------------------------------------

loc_4F2AFD:				; CODE XREF: .text:004F2A82j
		mov	ecx, [ebp+0Ch]
		movzx	ebx, word ptr [ecx+10h]
		test	ebx, ebx
		jz	loc_4F2EC8

loc_4F2B0C:				; CODE XREF: .text:004F2EC2j
		mov	esi, ebx
		mov	eax, [ebp-34h]
		movzx	edx, word ptr [eax+esi]
		mov	[ebp-38h], edx
		add	esi, 2
		mov	ecx, [ebp-34h]
		movzx	eax, word ptr [ecx+esi]
		mov	[ebp-44h], eax
		add	esi, 2
		mov	edx, [ebp-44h]
		cmp	edx, 5		; switch 6 cases
		ja	loc_4F2E9D	; jumptable 004F2B34 default case
		jmp	ds:off_4F2B3B[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4F2B3B	dd offset loc_4F2EBD	; DATA XREF: .text:004F2B34r
		dd offset loc_4F2DED	; jump table for switch	statement
		dd offset loc_4F2E40
		dd offset loc_4F2B53
		dd offset loc_4F2EBD
		dd offset loc_4F2EBD
; ---------------------------------------------------------------------------

loc_4F2B53:				; CODE XREF: .text:004F2B34j
					; DATA XREF: .text:off_4F2B3Bo
		test	byte ptr [edi+3], 80h ;	jumptable 004F2B34 case	3
		jz	short loc_4F2B88
		test	byte ptr [ebp+2Ch], 2
		jz	short loc_4F2B88
		mov	eax, fs:0
		mov	[ebp-60h], eax
		push	dword ptr [ebp+10h]
		push	dword ptr [ebp-60h]
		push	dword ptr [ebp+18h]
		push	edi
		call	loc_4F151B
		add	esp, 10h
		mov	[ebp-30h], eax
		cmp	dword ptr [ebp-30h], 0
		jz	loc_4F2EBD	; jumptable 004F2B34 cases 0,4,5
		jmp	short loc_4F2BAB
; ---------------------------------------------------------------------------

loc_4F2B88:				; CODE XREF: .text:004F2B57j
					; .text:004F2B5Dj
		mov	ecx, [edi]
		sub	ecx, 0EEDFADEh
		jz	short loc_4F2BA0
		sub	ecx, 1FFF0h
		jnz	loc_4F2EBD	; jumptable 004F2B34 cases 0,4,5
		jmp	short loc_4F2BAB
; ---------------------------------------------------------------------------

loc_4F2BA0:				; CODE XREF: .text:004F2B90j
		test	byte ptr [ebp+2Ch], 1
		jnz	short loc_4F2BAB
		jmp	loc_4F2EBD	; jumptable 004F2B34 cases 0,4,5
; ---------------------------------------------------------------------------

loc_4F2BAB:				; CODE XREF: .text:004F2B86j
					; .text:004F2B9Ej ...
		mov	eax, [ebp-34h]
		mov	edx, [eax+esi]
		mov	[ebp-4Ch], edx
		add	esi, 4
		cmp	dword ptr [edi], 0EEDFADEh
		jnz	short loc_4F2BD0
		push	edi
		push	dword ptr [ebp-4Ch]
		call	loc_4F28DB
		add	esp, 8
		mov	[ebp-48h], eax
		jmp	short loc_4F2BE1
; ---------------------------------------------------------------------------

loc_4F2BD0:				; CODE XREF: .text:004F2BBDj
		push	dword ptr [ebp-30h]
		push	dword ptr [ebp-4Ch]
		call	loc_4F29DF
		add	esp, 8
		mov	[ebp-48h], eax

loc_4F2BE1:				; CODE XREF: .text:004F2BCEj
		cmp	dword ptr [ebp-48h], 0
		jnz	short loc_4F2C40
		test	byte ptr [edi+3], 80h
		jz	loc_4F2EBD	; jumptable 004F2B34 cases 0,4,5
		call	qqrv
		mov	ecx, [ebp-30h]
		mov	edx, [ecx]
		mov	[eax+8], edx
		mov	eax, [ebp-30h]
		mov	ecx, [eax+52h]
		mov	[ebp-8], ecx
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4F2C31
		mov	eax, [ebp-8]
		mov	edx, [eax]
		mov	[ebp-4], edx
		mov	word ptr [ebp-1Ch], 14h
		mov	edx, 3
		mov	eax, [ebp-8]
		mov	ecx, [eax]
		call	dword ptr [ecx-4]
		mov	word ptr [ebp-1Ch], 8

loc_4F2C31:				; CODE XREF: .text:004F2C0Ej
		push	dword ptr [ebp-30h]
		mov	eax, [ebp-30h]
		call	dword ptr [eax+1Ch]
		pop	ecx
		jmp	loc_4F2EBD	; jumptable 004F2B34 cases 0,4,5
; ---------------------------------------------------------------------------

loc_4F2C40:				; CODE XREF: .text:004F2BE5j
		mov	edx, dword_61EE94
		cmp	dword ptr [edx], 1
		jz	short loc_4F2C56
		mov	ecx, dword_61EE94
		cmp	dword ptr [ecx], 2
		jnz	short loc_4F2C79

loc_4F2C56:				; CODE XREF: .text:004F2C49j
		cmp	dword ptr [edi], 0EEDFACEh
		jb	short loc_4F2C66
		cmp	dword ptr [edi], 0EEFFACEh
		jbe	short loc_4F2C79

loc_4F2C66:				; CODE XREF: .text:004F2C5Cj
		push	dword ptr [ebp+10h]
		push	edi
		push	dword ptr [ebp+0Ch]
		push	3		; int
		push	2		; Arguments
		call	loc_4F1BB9
		add	esp, 14h

loc_4F2C79:				; CODE XREF: .text:004F2C54j
					; .text:004F2C64j
		cmp	dword ptr [edi], 0EEDFADEh
		jz	short loc_4F2CB7
		call	qqrv
		mov	eax, [eax+8]
		mov	edx, [ebp-30h]
		mov	[edx], eax
		call	qqrv
		mov	ecx, [ebp-30h]
		mov	[eax+8], ecx
		mov	eax, [ebp-30h]
		mov	edx, [ebp+0Ch]
		mov	[eax+28h], edx
		mov	ecx, [ebp-30h]
		mov	eax, [ebp-48h]
		mov	[ecx+2Ch], eax
		mov	edx, [ebp-30h]
		mov	[edx+30h], esi

loc_4F2CB7:				; CODE XREF: .text:004F2C7Fj
		mov	[ebp-54h], esi
		mov	ecx, [ebp-48h]
		mov	eax, [ecx]
		mov	[ebp-50h], eax

loc_4F2CC2:				; CODE XREF: .text:004F2E98j
		push	edi
		push	dword ptr [ebp+0Ch]
		call	__Global_unwind
		add	esp, 8
		push	ebx
		push	dword ptr [ebp+0Ch]
		call	loc_4F2741
		add	esp, 8
		mov	edx, [ebp+0Ch]
		mov	cx, [ebp-54h]
		mov	[edx+10h], cx
		cmp	dword ptr [ebp-44h], 3
		jnz	short loc_4F2D22
		cmp	dword ptr [edi], 0EEDFADEh
		jnz	short loc_4F2D0B
		push	esi
		push	dword ptr [ebp-3Ch]
		push	dword ptr [ebp-4Ch]
		push	edi
		push	dword ptr [ebp+0Ch]
		push	dword ptr [ebp-48h]
		call	loc_4F2348
		add	esp, 18h
		jmp	short loc_4F2D22
; ---------------------------------------------------------------------------

loc_4F2D0B:				; CODE XREF: .text:004F2CF1j
		push	dword ptr [ebp-3Ch]
		push	dword ptr [ebp-4Ch]
		push	dword ptr [ebp-30h]
		push	dword ptr [ebp+0Ch]
		push	dword ptr [ebp-48h]
		call	loc_4F246A
		add	esp, 14h

loc_4F2D22:				; CODE XREF: .text:004F2CE9j
					; .text:004F2D09j
		call	qqrv
		and	dword ptr [eax+0Ch], 0FFFFFFFDh
		mov	eax, dword_61EE94
		cmp	dword ptr [eax], 2
		jnz	loc_4F2DCB
		cmp	dword ptr [ebp-44h], 3
		jnz	loc_4F2DCB
		cmp	dword ptr [edi], 0EEDFADEh
		jnz	short loc_4F2D80
		mov	edx, [edi+18h]
		mov	eax, [edx]
		mov	ebx, [eax-2Ch]
		movsx	eax, byte ptr [ebx]
		push	eax		; maxlen
		lea	edx, [ebx+1]
		push	edx		; src
		lea	ecx, [ebp-160h]
		push	ecx		; dest
		call	_strncpy
		movsx	eax, byte ptr [ebx]
		add	esp, 0Ch
		lea	ebx, [ebp-160h]
		mov	byte ptr [ebp+eax-160h], 0
		jmp	short loc_4F2D8E
; ---------------------------------------------------------------------------

loc_4F2D80:				; CODE XREF: .text:004F2D4Cj
		mov	eax, [ebp-30h]
		push	dword ptr [eax+4]
		call	loc_4E8050
		pop	ecx
		mov	ebx, eax

loc_4F2D8E:				; CODE XREF: .text:004F2D7Ej
		cmp	dword ptr [edi], 0EEDFADEh
		jnz	short loc_4F2D9B
		mov	eax, [edi+18h]
		jmp	short loc_4F2DB2
; ---------------------------------------------------------------------------

loc_4F2D9B:				; CODE XREF: .text:004F2D94j
		mov	edx, [ebp-30h]
		cmp	byte ptr [edx+44h], 0
		jz	short loc_4F2DAC
		mov	eax, [ebp-30h]
		add	eax, 52h
		jmp	short loc_4F2DB2
; ---------------------------------------------------------------------------

loc_4F2DAC:				; CODE XREF: .text:004F2DA2j
		mov	edx, [ebp-30h]
		mov	eax, [edx+40h]

loc_4F2DB2:				; CODE XREF: .text:004F2D99j
					; .text:004F2DAAj
		push	eax
		push	ebx
		call	loc_4F1BA1
		pop	ecx
		push	eax
		push	ebx
		push	dword ptr [ebp-50h]
		push	5		; int
		push	3		; Arguments
		call	loc_4F1BB9
		add	esp, 18h

loc_4F2DCB:				; CODE XREF: .text:004F2D36j
					; .text:004F2D40j
		mov	eax, 7Bh
		mov	ebx, 7Bh
		mov	ecx, 7Bh
		mov	eax, [ebp-50h]
		mov	ebx, [ebp-40h]
		mov	ecx, [ebp-3Ch]
		call	___JumpToCatch__
		jmp	loc_4F2EBD	; jumptable 004F2B34 cases 0,4,5
; ---------------------------------------------------------------------------

loc_4F2DED:				; CODE XREF: .text:004F2B34j
					; DATA XREF: .text:off_4F2B3Bo
		cmp	dword ptr [edi], 0EEFFACEh ; jumptable 004F2B34	case 1
		jz	loc_4F2EBD	; jumptable 004F2B34 cases 0,4,5
		mov	[ebp-5Ch], edi
		mov	edx, [ebp+10h]
		mov	[ebp-58h], edx
		mov	ecx, [ebp+0Ch]
		mov	eax, [edi]
		mov	[ecx+14h], eax
		lea	edx, [ebp-5Ch]
		mov	ecx, [ebp+0Ch]
		mov	[ecx+18h], edx
		mov	eax, [ebp-34h]
		mov	edx, [eax+esi]
		mov	dword_61EE9C, edx
		push	ebx
		push	ebp
		push	esi
		push	edi
		mov	ecx, 7Bh
		mov	ebx, 7Bh
		mov	ecx, [ebp-3Ch]
		mov	ebx, offset dword_61EE9C
		call	@invokeHnd$qv	; invokeHnd(void)
		pop	edi
		pop	esi
		pop	ebp
		pop	ebx
		jmp	short loc_4F2E56
; ---------------------------------------------------------------------------

loc_4F2E40:				; CODE XREF: .text:004F2B34j
					; DATA XREF: .text:off_4F2B3Bo
		cmp	dword ptr [edi], 0EEFFACEh ; jumptable 004F2B34	case 2
		jz	short loc_4F2EBD ; jumptable 004F2B34 cases 0,4,5
		mov	ecx, [ebp+0Ch]
		mov	eax, [edi]
		mov	[ecx+14h], eax
		mov	edx, [ebp-34h]
		mov	eax, [edx+esi]

loc_4F2E56:				; CODE XREF: .text:004F2E3Ej
		test	eax, eax
		jge	short loc_4F2E78
		test	byte ptr [edi+4], 1
		jz	short loc_4F2E6B
		mov	edx, [ebp+0Ch]
		mov	cx, [ebp-38h]
		mov	[edx+10h], cx

loc_4F2E6B:				; CODE XREF: .text:004F2E5Ej
		xor	eax, eax
		mov	edx, [ebp-2Ch]
		mov	fs:0, edx
		jmp	short loc_4F2ED6
; ---------------------------------------------------------------------------

loc_4F2E78:				; CODE XREF: .text:004F2E58j
		test	eax, eax
		jz	short loc_4F2EBD ; jumptable 004F2B34 cases 0,4,5
		mov	ecx, [ebp+0Ch]
		xor	eax, eax
		mov	[ecx+18h], eax
		add	esi, 4
		mov	edx, [ebp-38h]
		mov	[ebp-54h], edx
		mov	ebx, edx
		mov	eax, [ebp-34h]
		mov	edx, [eax+esi]
		mov	[ebp-50h], edx
		jmp	loc_4F2CC2
; ---------------------------------------------------------------------------

loc_4F2E9D:				; CODE XREF: .text:004F2B2Ej
		mov	ecx, offset aBogusContext_1 ; jumptable	004F2B34 default case
		test	ecx, ecx
		jz	short loc_4F2EBD ; jumptable 004F2B34 cases 0,4,5
		push	0C00h		; line
		push	offset aXx_cpp_30 ; "xx.cpp"
		push	offset aBogusContext_2 ; "!\"bogus context in _ExceptionHandler()"...
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F2EBD:				; CODE XREF: .text:004F2B34j
					; .text:004F2B80j ...
		mov	ebx, [ebp-38h]	; jumptable 004F2B34 cases 0,4,5
		test	ebx, ebx
		jnz	loc_4F2B0C

loc_4F2EC8:				; CODE XREF: .text:004F2B06j
		mov	eax, 1
		mov	edx, [ebp-2Ch]
		mov	fs:0, edx

loc_4F2ED6:				; CODE XREF: .text:004F2A74j
					; .text:004F2AF8j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F2EDD:				; CODE XREF: .text:004F30DDp
					; .text:004F30F9p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		mov	eax, offset stru_57BF88
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		call	@__InitExceptBlockLDTC
		test	byte ptr [ebx+0Ch], 2
		jnz	short loc_4F2F16
		push	0C1Ch		; line
		push	offset aXx_cpp_31 ; "xx.cpp"
		push	offset aVartypeTpclass ; "varType->tpClass.tpcFlags & CF_HAS_DTOR"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F2F16:				; CODE XREF: .text:004F2EFDj
		cmp	dword ptr [ebx+28h], 0
		jnz	short loc_4F2F33
		push	0C1Dh		; line
		push	offset aXx_cpp_32 ; "xx.cpp"
		push	offset aVartypeTpcla_0 ; "varType->tpClass.tpcDtorAddr"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F2F33:				; CODE XREF: .text:004F2F1Aj
		mov	word ptr [ebp-14h], 8
		mov	word ptr [ebp-14h], 14h
		mov	edx, [ebp+18h]
		mov	ecx, [edx+1Ch]
		cmp	ecx, [ebx+20h]
		jnb	short loc_4F2F65
		test	esi, esi
		jnz	short loc_4F2F65
		push	0C28h		; line
		push	offset aXx_cpp_33 ; "xx.cpp"
		push	offset aErrptrErrcinit ; "(errPtr->ERRcInitDtc >= varType->tpClas"...
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F2F65:				; CODE XREF: .text:004F2F48j
					; .text:004F2F4Cj
		test	esi, 2
		jnz	short loc_4F2F7F
		test	edi, edi
		jz	short loc_4F2F76
		mov	eax, [ebx+20h]
		jmp	short loc_4F2F79
; ---------------------------------------------------------------------------

loc_4F2F76:				; CODE XREF: .text:004F2F6Fj
		mov	eax, [ebx+24h]

loc_4F2F79:				; CODE XREF: .text:004F2F74j
		mov	edx, [ebp+18h]
		sub	[edx+1Ch], eax

loc_4F2F7F:				; CODE XREF: .text:004F2F6Bj
		push	edi
		movzx	ecx, word ptr [ebx+2Ch]
		push	ecx
		push	dword ptr [ebx+28h]
		push	esi
		push	ebx
		push	dword ptr [ebp+8]
		call	loc_4F1BD6
		mov	word ptr [ebp-14h], 8
		add	esp, 18h
		jmp	short loc_4F2FAD
; ---------------------------------------------------------------------------

loc_4F2F9D:				; DATA XREF: .data:stru_57BF48o
		call	___call_terminate
; ---------------------------------------------------------------------------
		mov	word ptr [ebp-14h], 1Ch
		call	loc_4F2215

loc_4F2FAD:				; CODE XREF: .text:004F2F9Bj
		mov	word ptr [ebp-14h], 0
		jmp	short loc_4F2FC5
; ---------------------------------------------------------------------------

loc_4F2FB5:				; DATA XREF: .data:stru_57BF68o
		call	___call_terminate
; ---------------------------------------------------------------------------
		mov	word ptr [ebp-14h], 10h
		call	loc_4F2215

loc_4F2FC5:				; CODE XREF: .text:004F2FB3j
		mov	eax, [ebp-24h]
		mov	fs:0, eax
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F2FD4:				; CODE XREF: .text:004F3185p
					; .text:004F31FAp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+18h]
		mov	ebx, [ebp+10h]
		mov	edi, [ebp+8]
		jmp	short loc_4F3012
; ---------------------------------------------------------------------------

loc_4F2FE5:				; CODE XREF: .text:004F3018j
		mov	eax, [ebx+4]
		add	eax, edi
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_4F2FF2
		mov	eax, [eax]

loc_4F2FF2:				; CODE XREF: .text:004F2FEEj
		mov	edx, [ebx]
		test	byte ptr [edx+0Ch], 2
		jz	short loc_4F3012
		push	dword ptr [ebp+24h]
		push	dword ptr [ebp+20h]
		push	0
		push	esi
		push	dword ptr [ebp+0Ch]
		push	edx
		push	eax
		call	loc_4F301F
		add	esp, 1Ch
		xor	esi, esi

loc_4F3012:				; CODE XREF: .text:004F2FE3j
					; .text:004F2FF8j
		sub	ebx, 0Ch
		cmp	ebx, [ebp+14h]
		jnb	short loc_4F2FE5
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F301F:				; CODE XREF: .text:004F3008p
					; .text:004F32EDp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		mov	eax, [ebp+0Ch]
		test	byte ptr [eax+0Ch], 2
		jnz	short loc_4F304B
		push	0CB3h		; line
		push	offset aXx_cpp_34 ; "xx.cpp"
		push	offset aVartypeTpcla_1 ; "varType->tpClass.tpcFlags & CF_HAS_DTOR"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F304B:				; CODE XREF: .text:004F3032j
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4F3059
		mov	edx, [ebp+0Ch]
		mov	ebx, [edx+20h]
		jmp	short loc_4F305F
; ---------------------------------------------------------------------------

loc_4F3059:				; CODE XREF: .text:004F304Fj
		mov	eax, [ebp+0Ch]
		mov	ebx, [eax+24h]

loc_4F305F:				; CODE XREF: .text:004F3057j
		test	esi, esi
		jz	short loc_4F306B
		cmp	ebx, esi
		ja	loc_4F3106

loc_4F306B:				; CODE XREF: .text:004F3061j
		test	esi, esi
		jnz	short loc_4F30EA
		test	byte ptr [ebp+10h], 2
		jz	short loc_4F30EA
		mov	eax, [ebp+0Ch]
		cmp	word ptr [eax+10h], 0
		jz	loc_4F334B
		mov	edx, [ebp+0Ch]
		movzx	ebx, word ptr [edx+10h]
		add	ebx, [ebp+0Ch]
		test	ebx, ebx
		jnz	short loc_4F30A8
		push	0CD0h		; line
		push	offset aXx_cpp_35 ; "xx.cpp"
		push	offset aBl	; "bl"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F30A8:				; CODE XREF: .text:004F308Fj
		mov	esi, [ebx]
		test	byte ptr [esi+0Ch], 2
		jz	loc_4F334B
		cmp	dword ptr [ebx+4], 0
		jz	short loc_4F30D1
		push	0CD4h		; line
		push	offset aXx_cpp_36 ; "xx.cpp"
		push	offset aBlBloffs0 ; "bl->blOffs	== 0"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F30D1:				; CODE XREF: .text:004F30B8j
		push	dword ptr [ebp+20h]
		push	0
		push	dword ptr [ebp+10h]
		push	esi
		push	dword ptr [ebp+8]
		call	loc_4F2EDD
		add	esp, 14h
		jmp	loc_4F334B
; ---------------------------------------------------------------------------

loc_4F30EA:				; CODE XREF: .text:004F306Dj
					; .text:004F3073j
		push	dword ptr [ebp+20h]
		push	dword ptr [ebp+18h]
		push	dword ptr [ebp+10h]
		push	dword ptr [ebp+0Ch]
		push	dword ptr [ebp+8]
		call	loc_4F2EDD
		add	esp, 14h
		jmp	loc_4F334B
; ---------------------------------------------------------------------------

loc_4F3106:				; CODE XREF: .text:004F3065j
		cmp	ebx, esi
		ja	short loc_4F3121
		push	0CEDh		; line
		push	offset aXx_cpp_37 ; "xx.cpp"
		push	offset aDtorcntVarcoun ; "dtorCnt < varCount"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F3121:				; CODE XREF: .text:004F3108j
		mov	ebx, esi
		mov	eax, [ebp+0Ch]
		movzx	edx, word ptr [eax+12h]
		add	edx, [ebp+0Ch]
		mov	[ebp-10h], edx
		mov	[ebp-0Ch], edx
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4F319A

loc_4F3139:				; CODE XREF: .text:004F3198j
		mov	eax, [ebp-10h]
		mov	esi, [eax]
		test	esi, esi
		jz	short loc_4F319A
		test	byte ptr [esi+4], 1
		jnz	short loc_4F315F
		push	0D18h		; line
		push	offset aXx_cpp_38 ; "xx.cpp"
		push	offset aIs_strucBltype ; "IS_STRUC(blType->tpMask)"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F315F:				; CODE XREF: .text:004F3146j
		test	byte ptr [esi+0Ch], 2
		jz	short loc_4F3194
		mov	eax, [esi+24h]
		cmp	ebx, eax
		ja	short loc_4F3192
		push	dword ptr [ebp+20h]
		push	dword ptr [ebp+1Ch]
		push	1
		push	ebx
		push	dword ptr [ebp-0Ch]
		mov	edx, [ebp-10h]
		add	edx, 0Ch
		push	edx
		push	dword ptr [ebp+10h]
		push	dword ptr [ebp+8]
		call	loc_4F2FD4
		add	esp, 20h
		jmp	loc_4F334B
; ---------------------------------------------------------------------------

loc_4F3192:				; CODE XREF: .text:004F316Aj
		sub	ebx, eax

loc_4F3194:				; CODE XREF: .text:004F3163j
		add	dword ptr [ebp-10h], 0Ch
		jmp	short loc_4F3139
; ---------------------------------------------------------------------------

loc_4F319A:				; CODE XREF: .text:004F3137j
					; .text:004F3140j
		mov	ecx, [ebp+0Ch]
		movzx	eax, word ptr [ecx+10h]
		add	eax, [ebp+0Ch]
		mov	[ebp-8], eax
		mov	[ebp-4], eax

loc_4F31AA:				; CODE XREF: .text:004F3235j
		mov	edx, [ebp-8]
		mov	esi, [edx]
		test	esi, esi
		jz	loc_4F323A
		test	byte ptr [esi+4], 1
		jnz	short loc_4F31D4
		push	0D3Fh		; line
		push	offset aXx_cpp_39 ; "xx.cpp"
		push	offset aIs_strucBlty_0 ; "IS_STRUC(blType->tpMask)"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F31D4:				; CODE XREF: .text:004F31BBj
		test	byte ptr [esi+0Ch], 2
		jz	short loc_4F3231
		mov	eax, [esi+24h]
		cmp	ebx, eax
		ja	short loc_4F322F
		push	dword ptr [ebp+20h]
		push	dword ptr [ebp+1Ch]
		push	0
		push	ebx
		push	dword ptr [ebp-4]
		mov	edx, [ebp-8]
		add	edx, 0Ch
		push	edx
		push	dword ptr [ebp+10h]
		push	dword ptr [ebp+8]
		call	loc_4F2FD4
		add	esp, 20h
		cmp	dword ptr [ebp+18h], 0
		jz	loc_4F334B
		push	dword ptr [ebp+20h]
		push	dword ptr [ebp+1Ch]
		push	1
		push	0
		push	dword ptr [ebp-0Ch]
		push	dword ptr [ebp-10h]
		push	dword ptr [ebp+10h]
		push	dword ptr [ebp+8]
		call	loc_4F2FD4
		add	esp, 20h
		jmp	loc_4F334B
; ---------------------------------------------------------------------------

loc_4F322F:				; CODE XREF: .text:004F31DFj
		sub	ebx, eax

loc_4F3231:				; CODE XREF: .text:004F31D8j
		add	dword ptr [ebp-8], 0Ch
		jmp	loc_4F31AA
; ---------------------------------------------------------------------------

loc_4F323A:				; CODE XREF: .text:004F31B1j
		mov	ecx, [ebp+0Ch]
		movzx	edi, word ptr [ecx+2Eh]
		add	edi, [ebp+0Ch]
		mov	[ebp-14h], edi

loc_4F3247:				; CODE XREF: .text:004F3346j
		mov	esi, [edi]
		test	esi, esi
		jnz	short loc_4F3264
		push	0D65h		; line
		push	offset aXx_cpp_40 ; "xx.cpp"
		push	offset aMemtype	; "memType"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F3264:				; CODE XREF: .text:004F324Bj
		mov	dword ptr [ebp-18h], 1
		test	byte ptr [esi+5], 4
		jz	short loc_4F327A
		mov	eax, [esi+0Ch]
		mov	[ebp-18h], eax
		mov	esi, [esi+8]

loc_4F327A:				; CODE XREF: .text:004F326Fj
		test	byte ptr [esi+0Ch], 2
		jnz	short loc_4F3297
		push	0D73h		; line
		push	offset aXx_cpp_41 ; "xx.cpp"
		push	offset aMemtypeTpclass ; "memType->tpClass.tpcFlags & CF_HAS_DTOR"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F3297:				; CODE XREF: .text:004F327Ej
		mov	eax, [ebp-18h]
		imul	dword ptr [esi+20h]
		cmp	ebx, eax
		jbe	short loc_4F32A8
		sub	ebx, eax
		jmp	loc_4F3343
; ---------------------------------------------------------------------------

loc_4F32A8:				; CODE XREF: .text:004F329Fj
					; .text:004F32FDj
		mov	edx, [edi+4]
		add	edx, [ebp+8]
		mov	eax, [edi]
		mov	dword ptr [ebp-18h], 1
		test	byte ptr [eax+5], 4
		jz	short loc_4F32C6
		mov	ecx, [eax+0Ch]
		mov	[ebp-18h], ecx
		mov	eax, [eax+8]

loc_4F32C6:				; CODE XREF: .text:004F32BBj
		cmp	dword ptr [ebp-18h], 1
		jbe	short loc_4F32E0
		push	dword ptr [ebp+20h]
		push	dword ptr [ebp+1Ch]
		push	ebx
		push	dword ptr [edi]
		push	edx
		call	loc_4F3352
		add	esp, 14h
		jmp	short loc_4F32F5
; ---------------------------------------------------------------------------

loc_4F32E0:				; CODE XREF: .text:004F32CAj
		push	dword ptr [ebp+20h]
		push	dword ptr [ebp+1Ch]
		push	1
		push	ebx
		push	0
		push	eax
		push	edx
		call	loc_4F301F
		add	esp, 1Ch

loc_4F32F5:				; CODE XREF: .text:004F32DEj
		xor	ebx, ebx
		sub	edi, 8
		cmp	edi, [ebp-14h]
		jnb	short loc_4F32A8
		push	dword ptr [ebp+20h]
		push	dword ptr [ebp+1Ch]
		push	0
		push	0
		push	dword ptr [ebp-4]
		push	dword ptr [ebp-8]
		push	dword ptr [ebp+10h]
		push	dword ptr [ebp+8]
		call	loc_4F2FD4
		add	esp, 20h
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4F334B
		push	dword ptr [ebp+20h]
		push	dword ptr [ebp+1Ch]
		push	1
		push	0
		push	dword ptr [ebp-0Ch]
		push	dword ptr [ebp-10h]
		push	dword ptr [ebp+10h]
		push	dword ptr [ebp+8]
		call	loc_4F2FD4
		add	esp, 20h
		jmp	short loc_4F334B
; ---------------------------------------------------------------------------

loc_4F3343:				; CODE XREF: .text:004F32A3j
		add	edi, 8
		jmp	loc_4F3247
; ---------------------------------------------------------------------------

loc_4F334B:				; CODE XREF: .text:004F307Dj
					; .text:004F30AEj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F3352:				; CODE XREF: .text:004F32D6p
					; .text:004F3894p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	byte ptr [ebx+5], 4
		jnz	short loc_4F337E
		push	0DCCh		; line
		push	offset aXx_cpp_42 ; "xx.cpp"
		push	offset aVartypeTpmaskT ; "varType->tpMask & TM_IS_ARRAY"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F337E:				; CODE XREF: .text:004F3365j
		mov	eax, [ebx+8]
		test	byte ptr [eax+0Ch], 2
		jnz	short loc_4F339E
		push	0DCDh		; line
		push	offset aXx_cpp_43 ; "xx.cpp"
		push	offset aVartypeTparr_t ; "varType->tpArr.tpaElemType->tpClass.tpc"...
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F339E:				; CODE XREF: .text:004F3385j
		mov	edx, [ebx+0Ch]
		mov	[ebp-4], edx
		mov	ebx, [ebx+8]
		mov	edi, [ebx+20h]
		test	edi, edi
		jnz	short loc_4F33C5
		push	0DD6h		; line
		push	offset aXx_cpp_44 ; "xx.cpp"
		push	offset aVdtcount ; "vdtCount"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F33C5:				; CODE XREF: .text:004F33ACj
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4F33D3
		mov	eax, edi
		imul	dword ptr [ebp-4]
		mov	[ebp+10h], eax

loc_4F33D3:				; CODE XREF: .text:004F33C9j
		mov	eax, [ebp+10h]
		xor	edx, edx
		div	edi
		mov	[ebp-8], eax
		mov	ecx, [ebp-8]
		cmp	ecx, [ebp-4]
		jbe	short loc_4F3402
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4F3402
		push	0DDFh		; line
		push	offset aXx_cpp_45 ; "xx.cpp"
		push	offset aEtdcountElemco ; "etdCount <= elemCount	|| elemCount ==	0"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F3402:				; CODE XREF: .text:004F33E3j
					; .text:004F33E9j
		mov	eax, [ebp-8]
		imul	edi
		sub	[ebp+10h], eax
		cmp	edi, [ebp+10h]
		jnb	short loc_4F3426
		push	0DE0h		; line
		push	offset aXx_cpp_46 ; "xx.cpp"
		push	offset aDtrcountVdtcou ; "dtrCount <= vdtCount"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F3426:				; CODE XREF: .text:004F340Dj
		mov	edx, [ebp-8]
		imul	edx, [ebx]
		add	esi, edx
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4F3464
		push	dword ptr [ebp+18h]
		push	dword ptr [ebp+14h]
		push	1
		push	dword ptr [ebp+10h]
		push	0
		push	ebx
		push	esi
		call	loc_4F301F
		add	esp, 1Ch
		jmp	short loc_4F3464
; ---------------------------------------------------------------------------

loc_4F344D:				; CODE XREF: .text:004F346Dj
		sub	esi, [ebx]
		push	dword ptr [ebp+18h]
		push	dword ptr [ebp+14h]
		push	1
		push	edi
		push	0
		push	ebx
		push	esi
		call	loc_4F301F
		add	esp, 1Ch

loc_4F3464:				; CODE XREF: .text:004F3432j
					; .text:004F344Bj
		mov	ecx, [ebp-8]
		add	dword ptr [ebp-8], 0FFFFFFFFh
		test	ecx, ecx
		jnz	short loc_4F344D
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F3476:				; CODE XREF: .text:004F36EAp
					; .text:004F380Ap
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		mov	ebx, [edi]
		test	byte ptr [ebx+4], 2
		jnz	short loc_4F34A1
		push	0E13h		; line
		push	offset aXx_cpp_47 ; "xx.cpp"
		push	offset aIs_classVartyp ; "IS_CLASS(varType->tpMask)"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F34A1:				; CODE XREF: .text:004F3488j
		mov	eax, [ebx+0Ch]
		and	eax, 50h
		cmp	eax, 50h
		jz	short loc_4F34B0
		mov	eax, esi
		jmp	short loc_4F34F8
; ---------------------------------------------------------------------------

loc_4F34B0:				; CODE XREF: .text:004F34AAj
		cmp	dword ptr [ebx+8], 0FFFFFFFFh
		jnz	short loc_4F34BA
		mov	eax, esi
		jmp	short loc_4F34F8
; ---------------------------------------------------------------------------

loc_4F34BA:				; CODE XREF: .text:004F34B4j
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4F34CB
		mov	edx, [ebx+8]
		add	edx, esi
		mov	ebx, edx
		mov	ebx, [ebx]
		jmp	short loc_4F34CE
; ---------------------------------------------------------------------------

loc_4F34CB:				; CODE XREF: .text:004F34BEj
		mov	ebx, [ebp+10h]

loc_4F34CE:				; CODE XREF: .text:004F34C9j
		sub	esi, [ebx-8]
		sub	ebx, [ebx-4]
		cmp	dword ptr [ebx-4], 0
		jz	short loc_4F34F1
		push	0E39h		; line
		push	offset aXx_cpp_48 ; "xx.cpp"
		push	offset aUnsigned__fa_0 ; "((unsigned __far *)vftAddr)[-1] == 0"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F34F1:				; CODE XREF: .text:004F34D8j
		mov	eax, [ebx-0Ch]
		mov	[edi], eax
		mov	eax, esi

loc_4F34F8:				; CODE XREF: .text:004F34AEj
					; .text:004F34B8j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F34FD:				; CODE XREF: .text:004F2869p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE4h
		xor	eax, eax
		push	ebx
		push	esi
		push	edi
		mov	[ebp-8], eax
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4F3518
		xor	eax, eax
		jmp	loc_4F397A
; ---------------------------------------------------------------------------

loc_4F3518:				; CODE XREF: .text:004F350Fj
		mov	edx, [ebp+10h]
		mov	eax, [edx+1Ch]
		mov	[ebp-4], eax
		mov	edx, [ebp+0Ch]
		sub	[ebp-4], edx
		mov	ecx, [ebp+8]
		test	byte ptr [ecx+4], 20h
		jz	short loc_4F35A5
		mov	eax, [ebp+8]
		test	byte ptr [eax+4], 11h
		jnz	short loc_4F3550
		push	0E78h		; line
		push	offset aXx_cpp_49 ; "xx.cpp"
		push	offset aDttptrDttflags ; "dttPtr->dttFlags & (DTCVF_PTRVAL|DTCVF_"...
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F3550:				; CODE XREF: .text:004F3537j
		mov	edx, [ebp+8]
		mov	ecx, [edx]
		test	byte ptr [ecx+4], 10h
		jnz	short loc_4F3572
		push	0E7Ch		; line
		push	offset aXx_cpp_50 ; "xx.cpp"
		push	offset aDttptrDtttypeT ; "dttPtr->dttType->tpMask & TM_IS_PTR"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F3572:				; CODE XREF: .text:004F3559j
		mov	eax, [ebp+8]
		mov	edx, [eax]
		mov	ecx, [edx+8]
		test	byte ptr [ecx+0Ch], 2
		jnz	short loc_4F3597
		push	0E7Dh		; line
		push	offset aXx_cpp_51 ; "xx.cpp"
		push	offset aDttptrDtttyp_0 ; "dttPtr->dttType->tpPtr.tppBaseType->tpC"...
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F3597:				; CODE XREF: .text:004F357Ej
		mov	eax, [ebp+8]
		mov	edx, [eax]
		mov	ecx, [edx+8]
		mov	eax, [ecx+20h]
		mov	[ebp-4], eax

loc_4F35A5:				; CODE XREF: .text:004F352Ej
		mov	edx, [ebp+8]
		test	byte ptr [edx+5], 1
		jz	short loc_4F35E8
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		test	byte ptr [eax+4], 2
		jz	short loc_4F35C4
		mov	edx, [ebp+8]
		mov	ecx, [edx]
		test	byte ptr [ecx+0Ch], 2
		jnz	short loc_4F35DB

loc_4F35C4:				; CODE XREF: .text:004F35B7j
		push	0E8Bh		; line
		push	offset aXx_cpp_52 ; "xx.cpp"
		push	offset aIs_classDttptr ; "IS_CLASS(dttPtr->dttType->tpMask) && (d"...
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F35DB:				; CODE XREF: .text:004F35C2j
		mov	eax, [ebp+8]
		mov	edx, [eax]
		mov	eax, [edx+24h]
		jmp	loc_4F397A
; ---------------------------------------------------------------------------

loc_4F35E8:				; CODE XREF: .text:004F35ACj
		cmp	dword ptr [ebp-4], 0
		jg	short loc_4F3617
		mov	edx, [ebp+8]
		test	byte ptr [edx+5], 4
		jnz	short loc_4F3617
		mov	ecx, [ebp+8]
		mov	eax, [ecx+4]
		and	eax, 3
		cmp	eax, 3
		jnz	short loc_4F3610
		mov	ebx, [ebp+8]
		inc	dword ptr [ebp-8]
		jmp	loc_4F3738
; ---------------------------------------------------------------------------

loc_4F3610:				; CODE XREF: .text:004F3603j
		xor	eax, eax
		jmp	loc_4F397A
; ---------------------------------------------------------------------------

loc_4F3617:				; CODE XREF: .text:004F35ECj
					; .text:004F35F5j
		mov	ebx, [ebp+8]

loc_4F361A:				; CODE XREF: .text:004F3733j
		cmp	dword ptr [ebx], 0
		jnz	short loc_4F3627
		sub	ebx, 0Ch
		jmp	loc_4F3738
; ---------------------------------------------------------------------------

loc_4F3627:				; CODE XREF: .text:004F361Dj
		test	byte ptr [ebx+5], 10h
		jz	short loc_4F3656
		mov	eax, [ebx]
		test	byte ptr [eax+5], 4
		jnz	short loc_4F364C
		push	0ED7h		; line
		push	offset aXx_cpp_53 ; "xx.cpp"
		push	offset aDtvtptrDtttype ; "dtvtPtr->dttType->tpMask & TM_IS_ARRAY"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F364C:				; CODE XREF: .text:004F3633j
		mov	edx, [ebx]
		mov	esi, [edx+8]
		mov	[ebp-0Ch], esi
		jmp	short loc_4F365B
; ---------------------------------------------------------------------------

loc_4F3656:				; CODE XREF: .text:004F362Bj
		mov	esi, [ebx]
		mov	[ebp-0Ch], esi

loc_4F365B:				; CODE XREF: .text:004F3654j
		mov	edi, 1
		mov	eax, [ebp-0Ch]
		test	byte ptr [eax+4], 10h
		jz	loc_4F36F8
		mov	edx, [ebp-0Ch]
		mov	esi, [edx+8]
		mov	[ebp-0Ch], esi
		mov	ecx, [ebp-0Ch]
		test	byte ptr [ecx+4], 2
		jz	short loc_4F36F8
		mov	eax, [ebp-0Ch]
		test	byte ptr [eax+0Ch], 20h
		jz	short loc_4F36F8
		test	byte ptr [ebx+4], 8
		jz	short loc_4F36F8
		xor	esi, esi
		mov	eax, [ebp-0Ch]
		test	byte ptr [eax+0Ch], 2
		jnz	short loc_4F36B0
		push	0EF7h		; line
		push	offset aXx_cpp_54 ; "xx.cpp"
		push	offset aVartypeTpcla_2 ; "varType->tpClass.tpcFlags & CF_HAS_DTOR"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F36B0:				; CODE XREF: .text:004F3697j
		test	byte ptr [ebx+4], 4
		jz	short loc_4F36C1
		mov	edx, [ebp+14h]
		add	edx, [ebx+8]
		mov	[ebp-10h], edx
		jmp	short loc_4F36C7
; ---------------------------------------------------------------------------

loc_4F36C1:				; CODE XREF: .text:004F36B4j
		mov	ecx, [ebx+8]
		mov	[ebp-10h], ecx

loc_4F36C7:				; CODE XREF: .text:004F36BFj
		mov	eax, [ebp-10h]
		mov	edx, [eax]
		mov	[ebp-10h], edx
		test	byte ptr [ebx+5], 10h
		jz	short loc_4F36D8
		mov	esi, [eax+4]

loc_4F36D8:				; CODE XREF: .text:004F36D3j
		test	byte ptr [ebx+4], 40h
		jz	short loc_4F36E2
		add	dword ptr [ebp-10h], 4

loc_4F36E2:				; CODE XREF: .text:004F36DCj
		push	esi
		lea	eax, [ebp-0Ch]
		push	eax
		push	dword ptr [ebp-10h]
		call	loc_4F3476
		add	esp, 0Ch
		mov	[ebp-10h], eax
		mov	esi, [ebp-0Ch]

loc_4F36F8:				; CODE XREF: .text:004F3667j
					; .text:004F367Dj ...
		mov	eax, [ebp-0Ch]
		test	byte ptr [eax+5], 4
		jz	short loc_4F3707
		mov	edi, [esi+0Ch]
		mov	esi, [esi+8]

loc_4F3707:				; CODE XREF: .text:004F36FFj
		test	byte ptr [esi+0Ch], 2
		jnz	short loc_4F3724
		push	0F22h		; line
		push	offset aXx_cpp_55 ; "xx.cpp"
		push	offset aElemtypeTpclas ; "elemType->tpClass.tpcFlags & CF_HAS_DTO"...
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F3724:				; CODE XREF: .text:004F370Bj
		imul	edi, [esi+20h]
		cmp	edi, [ebp-4]
		jnb	short loc_4F3738
		sub	[ebp-4], edi
		add	ebx, 0Ch
		jmp	loc_4F361A
; ---------------------------------------------------------------------------

loc_4F3738:				; CODE XREF: .text:004F360Bj
					; .text:004F3622j ...
		mov	eax, [ebx]
		mov	[ebp-14h], eax
		mov	esi, [ebx+4]
		test	esi, 4
		jz	short loc_4F3753
		mov	eax, [ebp+14h]
		add	eax, [ebx+8]
		mov	[ebp-18h], eax
		jmp	short loc_4F3759
; ---------------------------------------------------------------------------

loc_4F3753:				; CODE XREF: .text:004F3746j
		mov	edx, [ebx+8]
		mov	[ebp-18h], edx

loc_4F3759:				; CODE XREF: .text:004F3751j
		test	esi, 1000h
		jz	short loc_4F378A
		mov	ecx, [ebp-14h]
		test	byte ptr [ecx+5], 4
		jnz	short loc_4F3781
		push	0F52h		; line
		push	offset aXx_cpp_56 ; "xx.cpp"
		push	offset aVartypeTpmas_0 ; "varType->tpMask & TM_IS_ARRAY"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F3781:				; CODE XREF: .text:004F3768j
		mov	eax, [ebp-14h]
		mov	edx, [eax+8]
		mov	[ebp-14h], edx

loc_4F378A:				; CODE XREF: .text:004F375Fj
		test	esi, 11h
		jz	loc_4F381B
		xor	edi, edi
		mov	eax, [ebp-14h]
		test	byte ptr [eax+4], 10h
		jnz	short loc_4F37B8
		push	0F5Ch		; line
		push	offset aXx_cpp_57 ; "xx.cpp"
		push	offset aVartypeTpmas_1 ; "varType->tpMask & TM_IS_PTR"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F37B8:				; CODE XREF: .text:004F379Fj
		mov	edx, [ebp-14h]
		test	esi, 1000h
		mov	ecx, [edx+8]
		mov	[ebp-14h], ecx
		mov	eax, [ebp-18h]
		mov	edx, [eax]
		mov	[ebp-18h], edx
		jz	short loc_4F37D4
		mov	edi, [eax+4]

loc_4F37D4:				; CODE XREF: .text:004F37CFj
		mov	edx, esi
		mov	eax, [ebp-18h]
		and	edx, 48h
		mov	[ebp-1Ch], eax
		cmp	edx, 40h
		jnz	short loc_4F37E8
		add	dword ptr [ebp-18h], 4

loc_4F37E8:				; CODE XREF: .text:004F37E2j
		mov	ecx, [ebp-14h]
		test	byte ptr [ecx+4], 2
		jz	short loc_4F381B
		mov	eax, [ebp-14h]
		test	byte ptr [eax+0Ch], 20h
		jz	short loc_4F381B
		test	esi, 8
		jz	short loc_4F381B
		push	edi
		lea	edx, [ebp-14h]
		push	edx
		push	dword ptr [ebp-18h]
		call	loc_4F3476
		add	esp, 0Ch
		mov	[ebp-18h], eax
		mov	ecx, [ebp-18h]
		mov	[ebp-1Ch], ecx

loc_4F381B:				; CODE XREF: .text:004F3790j
					; .text:004F37EFj ...
		cmp	dword ptr [ebp-8], 0
		jnz	loc_4F38E1
		test	esi, 400h
		jz	short loc_4F387A
		mov	eax, [ebp-14h]
		cmp	word ptr [eax+10h], 0
		jz	short loc_4F3863
		mov	edx, [ebp-14h]
		movzx	edi, word ptr [edx+10h]
		add	edi, [ebp-14h]
		test	edi, edi
		jnz	short loc_4F385C
		push	0F92h		; line
		push	offset aXx_cpp_58 ; "xx.cpp"
		push	offset aBl_0	; "bl"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4F385C:				; CODE XREF: .text:004F3843j
		mov	eax, [edi]
		mov	eax, [eax+20h]
		jmp	short loc_4F3865
; ---------------------------------------------------------------------------

loc_4F3863:				; CODE XREF: .text:004F3835j
		xor	eax, eax

loc_4F3865:				; CODE XREF: .text:004F3861j
		mov	edx, [ebp-4]
		cmp	edx, eax
		jb	short loc_4F3873
		mov	eax, 1
		jmp	short loc_4F387C
; ---------------------------------------------------------------------------

loc_4F3873:				; CODE XREF: .text:004F386Aj
		mov	eax, 2
		jmp	short loc_4F387C
; ---------------------------------------------------------------------------

loc_4F387A:				; CODE XREF: .text:004F382Bj
		xor	eax, eax

loc_4F387C:				; CODE XREF: .text:004F3871j
					; .text:004F3878j
		mov	edx, [ebp-14h]
		test	byte ptr [edx+5], 4
		jz	short loc_4F389E
		push	dword ptr [ebp+10h]
		push	dword ptr [ebp+14h]
		push	dword ptr [ebp-4]
		push	dword ptr [ebp-14h]
		push	dword ptr [ebp-18h]
		call	loc_4F3352
		add	esp, 14h
		jmp	short loc_4F38B8
; ---------------------------------------------------------------------------

loc_4F389E:				; CODE XREF: .text:004F3883j
		push	dword ptr [ebp+10h]
		push	dword ptr [ebp+14h]
		push	1
		push	dword ptr [ebp-4]
		push	eax
		push	dword ptr [ebp-14h]
		push	dword ptr [ebp-18h]
		call	loc_4F301F
		add	esp, 1Ch

loc_4F38B8:				; CODE XREF: .text:004F389Cj
		test	esi, 400h
		jz	short loc_4F38E1
		mov	ecx, [ebp+10h]
		test	byte ptr [ecx+20h], 1
		jz	short loc_4F38E1
		mov	eax, [ebp+10h]
		cmp	byte ptr [eax+20h], 0FFh
		jz	short loc_4F38E1
		mov	edx, [ebp-18h]
		mov	eax, [edx]
		mov	eax, [eax-8]
		mov	edi, eax
		mov	eax, [ebp-18h]
		call	edi

loc_4F38E1:				; CODE XREF: .text:004F381Fj
					; .text:004F38BEj ...
		mov	edx, esi
		and	edx, 3
		cmp	edx, 3
		jnz	short loc_4F3965
		and	esi, 48h
		cmp	esi, 48h
		jnz	short loc_4F38F7
		sub	dword ptr [ebp-1Ch], 4

loc_4F38F7:				; CODE XREF: .text:004F38F1j
		mov	ecx, [ebp-14h]
		test	byte ptr [ecx+5], 4
		jz	short loc_4F3938
		mov	eax, [ebp-14h]
		mov	edx, [eax+8]
		mov	[ebp-14h], edx
		mov	ecx, [ebp-14h]
		cmp	dword ptr [ecx+1Ch], 0
		jz	short loc_4F392D
		mov	eax, [ebp-14h]
		movzx	edx, word ptr [eax+1Ah]
		push	edx
		mov	ecx, [ebp-14h]
		push	dword ptr [ecx+1Ch]
		push	dword ptr [ebp-1Ch]
		call	loc_4F1CA5
		add	esp, 0Ch
		jmp	short loc_4F3965
; ---------------------------------------------------------------------------

loc_4F392D:				; CODE XREF: .text:004F3910j
		push	dword ptr [ebp-1Ch] ; handle
		call	__close
		pop	ecx
		jmp	short loc_4F3965
; ---------------------------------------------------------------------------

loc_4F3938:				; CODE XREF: .text:004F38FEj
		mov	eax, [ebp-14h]
		cmp	dword ptr [eax+14h], 0
		jz	short loc_4F395C
		mov	edx, [ebp-14h]
		movzx	ecx, word ptr [edx+18h]
		push	ecx
		mov	eax, [ebp-14h]
		push	dword ptr [eax+14h]
		push	dword ptr [ebp-1Ch]
		call	loc_4F1CA5
		add	esp, 0Ch
		jmp	short loc_4F3965
; ---------------------------------------------------------------------------

loc_4F395C:				; CODE XREF: .text:004F393Fj
		push	dword ptr [ebp-1Ch] ; handle
		call	__rtl_close
		pop	ecx

loc_4F3965:				; CODE XREF: .text:004F38E9j
					; .text:004F392Bj ...
		xor	edx, edx
		mov	[ebp-4], edx
		mov	ecx, ebx
		add	ebx, 0FFFFFFF4h
		cmp	ecx, [ebp+8]
		ja	loc_4F3738
		xor	eax, eax

loc_4F397A:				; CODE XREF: .text:004F3513j
					; .text:004F35E3j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
