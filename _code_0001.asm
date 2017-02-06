.code
start:
		jmp	short loc_401012
; ---------------------------------------------------------------------------
		db 'f','b',':','C','+','+','H','O','O','K'
		db  90h	; ?
		db 0E9h
		dd offset ___CPPdebugHook
; ---------------------------------------------------------------------------

loc_401012:				; CODE XREF: .text:startj
		mov	eax, dwTlsIndex
		shl	eax, 2
		mov	dword_4F61F3, eax
		push	edx
		push	0		; lpModuleName
		call	GetModuleHandleA
		mov	edx, eax
		call	___CRTL_VCL_Init
		pop	edx
		call	nullsub_1
		call	nullsub_3
		push	0		; src
		call	__ExceptInit
		pop	ecx
		push	offset off_4F6198
		push	0		; lpModuleName
		call	GetModuleHandleA
		mov	dword_4F61F7, eax
		push	0
		jmp	__startup
