.code
; ---------------------------------------------------------------------------
; Exported entry   1. __GetExceptDLLinfo


		public __GetExceptDLLinfo
__GetExceptDLLinfo:
		jmp	__GetExceptDLLinfo_0
; ---------------------------------------------------------------------------

__isDLL:
		xor	eax, eax
		mov	al, byte_4F61E1
		retn
; ---------------------------------------------------------------------------

__getHInstance:
		mov	eax, dword_4F61F7
		retn
; ---------------------------------------------------------------------------

loc_40106C:				; CODE XREF: .text:00401090p
					; .text:004010B1p ...
		pusha
		mov	ebx, 0BCB05000h
		push	ebx
		push	0BADh
		retn
; ---------------------------------------------------------------------------

loc_401079:				; CODE XREF: .text:004010E6j
		mov	ecx, 0B4h
		or	ecx, ecx
		jz	short locret_4010CF
		cmp	dwTlsIndex, 0
		jnb	short loc_401095
		mov	eax, 0FEh
		call	loc_40106C
; ---------------------------------------------------------------------------

loc_401095:				; CODE XREF: .text:00401089j
		mov	ecx, 0B4h
		push	ecx
		push	8
		call	GetProcessHeap
		push	eax
		call	HeapAlloc
		or	eax, eax
		jnz	short loc_4010B6
		mov	eax, 0FDh
		call	loc_40106C
; ---------------------------------------------------------------------------

loc_4010B6:				; CODE XREF: .text:004010AAj
		push	eax
		push	eax
		push	dwTlsIndex
		call	___CRTL_TLS_SetValue
		push	dwTlsIndex
		call	___CRTL_TLS_InitThread
		pop	edi

locret_4010CF:				; CODE XREF: .text:00401080j
		retn
; ---------------------------------------------------------------------------
		mov	ecx, 0B4h
		or	ecx, ecx
		jz	short locret_4010F2
		call	___CRTL_TLS_Alloc
		mov	dwTlsIndex, eax
		cmp	eax, 0
		jnb	short loc_401079
		mov	eax, 0FCh
		call	loc_40106C
; ---------------------------------------------------------------------------

locret_4010F2:				; CODE XREF: .text:004010D7j
		retn
; ---------------------------------------------------------------------------

loc_4010F3:				; CODE XREF: .text:0040112Fp
		cmp	dwTlsIndex, 0
		jb	short locret_401124
		push	dwTlsIndex	; dwTlsIndex
		call	___CRTL_TLS_GetValue
		or	eax, eax
		jz	short locret_401124
		push	eax		; lpMem
		push	8		; dwFlags
		call	GetProcessHeap
		push	eax		; hHeap
		call	HeapFree
		push	dwTlsIndex
		call	___CRTL_TLS_ExitThread

locret_401124:				; CODE XREF: .text:004010FAj
					; .text:00401109j
		retn
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		cmp	dwTlsIndex, 0
		jb	short locret_40113F
		call	loc_4010F3
		push	dwTlsIndex
		call	___CRTL_TLS_Free

locret_40113F:				; CODE XREF: .text:0040112Dj
		retn
; ---------------------------------------------------------------------------

qqrv:					; CODE XREF: .text:004E2FFEp
					; .text:004E4E6Dp ...
		mov	eax, dwTlsIndex
		mov	edx, fs:2Ch
		mov	eax, [edx+eax*4]
		retn
; ---------------------------------------------------------------------------
		align 10h

; SysInit::_16393
@SysInit@_16393:			; CODE XREF: .text:0040120Fp
		push	ebx
		add	esp, 0FFFFFEF8h
		push	105h		; nSize
		lea	eax, [esp+4]
		push	eax		; lpFilename
		mov	eax, hModule
		push	eax		; hModule
		call	GetModuleFileNameA
		mov	eax, esp	; char *
		call	@System@LoadResourceModule$qqrpc ; System::LoadResourceModule(char *)
		mov	ebx, eax
		mov	hLibModule, ebx
		test	ebx, ebx
		jnz	short loc_401189
		mov	eax, dword_4F6210
		mov	hLibModule, eax

loc_401189:				; CODE XREF: .text:0040117Dj
		mov	eax, offset dword_4F620C
		call	@System@RegisterModule$qqrp17System@TLibModule ; System::RegisterModule(System::TLibModule *)
		add	esp, 108h
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; SysInit::_16394
@SysInit@_16394:			; CODE XREF: .text:loc_40127Fp
		mov	eax, offset dword_4F620C
		call	@System@UnregisterModule$qqrp17System@TLibModule ; System::UnregisterModule(System::TLibModule *)
		mov	eax, hLibModule
		cmp	eax, dword_4F6210
		jz	short locret_4011B9
		push	eax		; hLibModule
		call	FreeLibrary

locret_4011B9:				; CODE XREF: .text:004011B1j
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4011BC:				; CODE XREF: .text:004F536Fp
					; DATA XREF: .text:0040121Do
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		mov	edx, [ebp+8]
		cmp	byte ptr [ebp+0Ch], 0
		jz	short loc_4011DB
		mov	byte_57D940, 1
		mov	byte_57D941, 1
		jmp	short loc_4011F0
; ---------------------------------------------------------------------------

loc_4011DB:				; CODE XREF: .text:004011C9j
		mov	ecx, off_57D7C4
		mov	[ecx], dl
		mov	byte_57D940, dl
		mov	byte_57D941, 0

loc_4011F0:				; CODE XREF: .text:004011D9j
		mov	hModule, eax
		mov	dword_4F6210, eax
		xor	eax, eax
		mov	dword_4F6214, eax
		xor	eax, eax
		mov	dword_4F6218, eax
		mov	byte_57D942, 1
		call	@SysInit@_16393	; SysInit::_16393
		cmp	byte_57D940, 0
		jnz	short loc_401255
		mov	eax, offset loc_4011BC ; lpAddress
		call	@System@FindHInstance$qqrpv ; System::FindHInstance(void *)
		mov	dword_4F6214, eax
		mov	eax, offset dword_4F6208 ; lpAddress
		call	@System@FindHInstance$qqrpv ; System::FindHInstance(void *)
		mov	dword_4F6218, eax
		call	GetCommandLineA
		mov	edx, off_57D7C8
		mov	[edx], eax
		mov	al, [ebp+14h]
		xor	al, 1
		mov	edx, off_57D7D0
		mov	[edx], al

loc_401255:				; CODE XREF: .text:0040121Bj
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_401258:				; CODE XREF: .text:004F537Fp
		push	ebx
		push	esi
		mov	ebx, off_57D7CC
		cmp	byte_57D940, 0
		jnz	short loc_40127F
		cmp	dword ptr [ebx], 0
		jz	short loc_40127F

loc_40126E:				; CODE XREF: .text:0040127Dj
		mov	edx, [ebx]
		mov	eax, edx
		xor	edx, edx
		mov	[ebx], edx
		mov	esi, eax
		call	esi
		cmp	dword ptr [ebx], 0
		jnz	short loc_40126E

loc_40127F:				; CODE XREF: .text:00401267j
					; .text:0040126Cj
		call	@SysInit@_16394	; SysInit::_16394
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

loc_401288:				; DATA XREF: .data:004F613Ao
		push	ebp
		mov	ebp, esp
		xor	eax, eax
		push	ebp
		push	offset loc_4012AD
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		inc	dword_57D954
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4012B4

loc_4012AC:				; CODE XREF: .text:004012B2j
		retn
; ---------------------------------------------------------------------------

loc_4012AD:				; DATA XREF: .text:0040128Eo
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4012AC
; ---------------------------------------------------------------------------

loc_4012B4:				; CODE XREF: .text:loc_4012ACj
					; DATA XREF: .text:004012A7o
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4012B8:				; DATA XREF: .data:004F60C2o
		sub	dword_57D954, 1
		retn
; ---------------------------------------------------------------------------
