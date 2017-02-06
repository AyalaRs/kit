.code

; SysUtils::_16727
@SysUtils@_16727:			; CODE XREF: .text:004E1EB3p
					; .text:004E1EC7p
		push	esi
		push	edi
		mov	edi, edx
		xor	edx, edx
		test	eax, eax
		jz	short loc_4E1E90
		cmp	byte ptr [eax+edi], 0
		jz	short loc_4E1E90
		test	edi, edi
		jnz	short loc_4E1E48
		mov	al, [eax]
		and	eax, 0FFh
		bt	dword_579880, eax
		jnb	short loc_4E1E90
		mov	dl, 1
		jmp	short loc_4E1E90
; ---------------------------------------------------------------------------

loc_4E1E48:				; CODE XREF: .text:004E1E32j
		mov	esi, edi
		dec	esi
		jmp	short loc_4E1E4E
; ---------------------------------------------------------------------------

loc_4E1E4D:				; CODE XREF: .text:004E1E62j
		dec	esi

loc_4E1E4E:				; CODE XREF: .text:004E1E4Bj
		test	esi, esi
		jl	short loc_4E1E64
		mov	cl, [eax+esi]
		and	ecx, 0FFh
		bt	dword_579880, ecx
		jb	short loc_4E1E4D

loc_4E1E64:				; CODE XREF: .text:004E1E50j
		mov	ecx, edi
		sub	ecx, esi
		and	ecx, 80000001h
		jns	short loc_4E1E75
		dec	ecx
		or	ecx, 0FFFFFFFEh
		inc	ecx

loc_4E1E75:				; CODE XREF: .text:004E1E6Ej
		test	ecx, ecx
		jnz	short loc_4E1E7D
		mov	dl, 2
		jmp	short loc_4E1E90
; ---------------------------------------------------------------------------

loc_4E1E7D:				; CODE XREF: .text:004E1E77j
		mov	al, [eax+edi]
		and	eax, 0FFh
		bt	dword_579880, eax
		jnb	short loc_4E1E90
		mov	dl, 1

loc_4E1E90:				; CODE XREF: .text:004E1E28j
					; .text:004E1E2Ej ...
		mov	eax, edx
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E1E98:				; CODE XREF: .text:004E0747p
		push	ebx
		push	esi
		mov	esi, edx
		mov	ebx, eax
		xor	eax, eax
		cmp	byte ptr dword_61B090, 0
		jz	short loc_4E1EB8
		mov	eax, ebx
		call	unknown_libname_78 ; Borland Visual Component Library &	Packages
		mov	edx, esi
		dec	edx
		call	@SysUtils@_16727 ; SysUtils::_16727

loc_4E1EB8:				; CODE XREF: .text:004E1EA7j
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_45:			; CODE XREF: .text:004E0917p
					; .text:004E1F18p
		xor	ecx, ecx	; Borland Visual Component Library & Packages
		cmp	byte ptr dword_61B090, 0
		jz	short loc_4E1ECE
		call	@SysUtils@_16727 ; SysUtils::_16727
		mov	ecx, eax

loc_4E1ECE:				; CODE XREF: .text:004E1EC5j
		mov	eax, ecx
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall Sysutils::AnsiStrRScan(char	*, char)
@Sysutils@AnsiStrRScan$qqrpcc:		; CODE XREF: .text:004E145Ep
		push	ebx
		push	esi
		mov	ebx, edx
		mov	edx, ebx	; char
		call	@Sysutils@AnsiStrScan$qqrpcc ; Sysutils::AnsiStrScan(char *,char)
		mov	esi, eax
		test	bl, bl
		jz	short loc_4E1EF7
		test	eax, eax
		jz	short loc_4E1EF7

loc_4E1EE9:				; CODE XREF: .text:004E1EF5j
		mov	esi, eax
		inc	eax		; char *
		mov	edx, ebx	; char
		call	@Sysutils@AnsiStrScan$qqrpcc ; Sysutils::AnsiStrScan(char *,char)
		test	eax, eax
		jnz	short loc_4E1EE9

loc_4E1EF7:				; CODE XREF: .text:004E1EE3j
					; .text:004E1EE7j
		mov	eax, esi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

; _DWORD __fastcall Sysutils::AnsiStrScan(char *, char)
@Sysutils@AnsiStrScan$qqrpcc:		; CODE XREF: .text:004E1EDAp
					; .text:004E1EEEp
		push	ebx
		push	esi
		push	edi
		mov	ebx, edx
		mov	esi, eax
		mov	edx, ebx	; char
		mov	eax, esi	; char *
		call	@Sysutils@StrScan$qqrpxcc ; Sysutils::StrScan(char *,char)
		mov	edi, eax
		test	edi, edi
		jz	short loc_4E1F36

loc_4E1F12:				; CODE XREF: .text:004E1F34j
		mov	edx, edi
		sub	edx, esi
		mov	eax, esi
		call	unknown_libname_45 ; Borland Visual Component Library &	Packages
		sub	al, 1
		jb	short loc_4E1F36
		jz	short loc_4E1F25
		jmp	short loc_4E1F26
; ---------------------------------------------------------------------------

loc_4E1F25:				; CODE XREF: .text:004E1F21j
		inc	edi

loc_4E1F26:				; CODE XREF: .text:004E1F23j
		inc	edi
		mov	edx, ebx	; char
		mov	eax, edi	; char *
		call	@Sysutils@StrScan$qqrpxcc ; Sysutils::StrScan(char *,char)
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4E1F12

loc_4E1F36:				; CODE XREF: .text:004E1F10j
					; .text:004E1F1Fj
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

; SysUtils::_16746
@SysUtils@_16746:			; CODE XREF: .text:004E2012p
		push	ebx
		push	esi
		push	edi
		push	ebp
		add	esp, 0FFFFFFE8h
		mov	edi, offset dword_579880
		lea	ebp, [esp+4]
		mov	esi, offset byte_61B088
		mov	dword ptr [esi], 409h
		mov	word ptr [esi+4], 9
		mov	word ptr [esi+6], 1
		call	GetThreadLocale
		test	eax, eax
		jz	short loc_4E1F6E
		mov	[esi], eax

loc_4E1F6E:				; CODE XREF: .text:004E1F6Aj
		test	ax, ax
		jz	short loc_4E1F88
		mov	edx, eax
		and	dx, 3FFh
		mov	[esi+4], dx
		movzx	eax, ax
		shr	eax, 0Ah
		mov	[esi+6], ax

loc_4E1F88:				; CODE XREF: .text:004E1F71j
		push	4Ah		; nIndex
		call	GetSystemMetrics
		test	eax, eax
		setnz	al
		mov	[esi+9], al
		push	2Ah		; nIndex
		call	GetSystemMetrics
		test	eax, eax
		setnz	bl
		mov	[esi+8], bl
		test	bl, bl
		jz	short loc_4E1FEA
		push	ebp		; lpCPInfo
		push	0		; CodePage
		call	GetCPInfo
		xor	esi, esi
		jmp	short loc_4E1FDB
; ---------------------------------------------------------------------------

loc_4E1FB6:				; CODE XREF: .text:004E1FE8j
		mov	al, [ebp+esi+6]
		mov	bl, [ebp+esi+7]
		sub	bl, al
		jb	short loc_4E1FD8
		inc	ebx
		mov	[esp], al

loc_4E1FC6:				; CODE XREF: .text:004E1FD6j
		mov	al, [esp]
		and	eax, 0FFh
		bts	[edi], eax
		inc	byte ptr [esp]
		dec	bl
		jnz	short loc_4E1FC6

loc_4E1FD8:				; CODE XREF: .text:004E1FC0j
		add	esi, 2

loc_4E1FDB:				; CODE XREF: .text:004E1FB4j
		cmp	esi, 0Ch
		jge	short loc_4E1FEA
		mov	al, [ebp+esi+6]
		or	al, [ebp+esi+7]
		jnz	short loc_4E1FB6

loc_4E1FEA:				; CODE XREF: .text:004E1FA8j
					; .text:004E1FDEj
		add	esp, 18h
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __cdecl Sysutils::GetFormatSettings()
@Sysutils@GetFormatSettings$qqrv:	; CODE XREF: .text:004E2853p
		push	ebp
		mov	ebp, esp
		mov	ecx, 8

loc_4E1FFC:				; CODE XREF: .text:004E2001j
		push	0
		push	0
		dec	ecx
		jnz	short loc_4E1FFC
		push	ebx
		xor	eax, eax
		push	ebp
		push	offset loc_4E22BF
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		call	@SysUtils@_16746 ; SysUtils::_16746
		call	loc_4E0F2C
		cmp	byte ptr dword_61B090, 0
		jz	short loc_4E202A
		call	loc_4E1104

loc_4E202A:				; CODE XREF: .text:004E2023j
		call	GetThreadLocale
		mov	ebx, eax
		lea	eax, [ebp-10h]
		push	eax
		xor	ecx, ecx	; AnsiString
		mov	edx, 14h	; LCType
		mov	eax, ebx	; Locale
		call	@GetLocaleStr$qqriix10AnsiString ; GetLocaleStr(int,int,AnsiString)
		mov	edx, [ebp-10h]
		mov	eax, offset dword_61AFC8
		call	unknown_libname_71 ; Borland Visual Component Library &	Packages
		lea	eax, [ebp-14h]
		push	eax
		mov	ecx, offset _str_0.Text	; AnsiString
		mov	edx, 1Bh	; LCType
		mov	eax, ebx	; Locale
		call	@GetLocaleStr$qqriix10AnsiString ; GetLocaleStr(int,int,AnsiString)
		mov	eax, [ebp-14h]
		xor	edx, edx
		call	loc_4E06F8
		mov	byte_61AFCC, al
		lea	eax, [ebp-18h]
		push	eax
		mov	ecx, offset _str_0.Text	; AnsiString
		mov	edx, 1Ch	; LCType
		mov	eax, ebx	; Locale
		call	@GetLocaleStr$qqriix10AnsiString ; GetLocaleStr(int,int,AnsiString)
		mov	eax, [ebp-18h]
		xor	edx, edx
		call	loc_4E06F8
		mov	byte_61AFCD, al
		mov	cl, 2Ch		; char
		mov	edx, 0Fh	; LCType
		mov	eax, ebx	; Locale
		call	@Sysutils@GetLocaleChar$qqriic ; Sysutils::GetLocaleChar(int,int,char)
		mov	byte_61AFCE, al
		mov	cl, 2Eh		; char
		mov	edx, 0Eh	; LCType
		mov	eax, ebx	; Locale
		call	@Sysutils@GetLocaleChar$qqriic ; Sysutils::GetLocaleChar(int,int,char)
		mov	byte_61AFCF, al
		lea	eax, [ebp-1Ch]
		push	eax
		mov	ecx, offset _str_0.Text	; AnsiString
		mov	edx, 19h	; LCType
		mov	eax, ebx	; Locale
		call	@GetLocaleStr$qqriix10AnsiString ; GetLocaleStr(int,int,AnsiString)
		mov	eax, [ebp-1Ch]
		xor	edx, edx
		call	loc_4E06F8
		mov	byte_61AFD0, al
		mov	cl, 2Fh		; char
		mov	edx, 1Dh	; LCType
		mov	eax, ebx	; Locale
		call	@Sysutils@GetLocaleChar$qqriic ; Sysutils::GetLocaleChar(int,int,char)
		mov	byte_61AFD1, al
		lea	eax, [ebp-24h]
		push	eax
		mov	ecx, offset _str_m_d_yy.Text ; AnsiString
		mov	edx, 1Fh	; LCType
		mov	eax, ebx	; Locale
		call	@GetLocaleStr$qqriix10AnsiString ; GetLocaleStr(int,int,AnsiString)
		mov	eax, [ebp-24h]
		lea	edx, [ebp-20h]
		call	@SysUtils@_16684 ; SysUtils::_16684
		mov	edx, [ebp-20h]
		mov	eax, offset dword_61AFD4
		call	unknown_libname_71 ; Borland Visual Component Library &	Packages
		lea	eax, [ebp-2Ch]
		push	eax
		mov	ecx, offset _str_mmmm_d__yyyy.Text ; AnsiString
		mov	edx, 20h	; LCType
		mov	eax, ebx	; Locale
		call	@GetLocaleStr$qqriix10AnsiString ; GetLocaleStr(int,int,AnsiString)
		mov	eax, [ebp-2Ch]
		lea	edx, [ebp-28h]
		call	@SysUtils@_16684 ; SysUtils::_16684
		mov	edx, [ebp-28h]
		mov	eax, offset dword_61AFD8
		call	unknown_libname_71 ; Borland Visual Component Library &	Packages
		mov	cl, 3Ah		; char
		mov	edx, 1Eh	; LCType
		mov	eax, ebx	; Locale
		call	@Sysutils@GetLocaleChar$qqriic ; Sysutils::GetLocaleChar(int,int,char)
		mov	byte ptr dword_61AFDC, al
		lea	eax, [ebp-30h]
		push	eax
		mov	ecx, offset _str_am.Text ; AnsiString
		mov	edx, 28h	; LCType
		mov	eax, ebx	; Locale
		call	@GetLocaleStr$qqriix10AnsiString ; GetLocaleStr(int,int,AnsiString)
		mov	edx, [ebp-30h]
		mov	eax, offset dword_61AFE0
		call	unknown_libname_71 ; Borland Visual Component Library &	Packages
		lea	eax, [ebp-34h]
		push	eax
		mov	ecx, offset _str_pm.Text ; AnsiString
		mov	edx, 29h	; LCType
		mov	eax, ebx	; Locale
		call	@GetLocaleStr$qqriix10AnsiString ; GetLocaleStr(int,int,AnsiString)
		mov	edx, [ebp-34h]
		mov	eax, offset dword_61AFE4
		call	unknown_libname_71 ; Borland Visual Component Library &	Packages
		lea	eax, [ebp-8]
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		lea	eax, [ebp-0Ch]
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		lea	eax, [ebp-38h]
		push	eax
		mov	ecx, offset _str_0.Text	; AnsiString
		mov	edx, 25h	; LCType
		mov	eax, ebx	; Locale
		call	@GetLocaleStr$qqriix10AnsiString ; GetLocaleStr(int,int,AnsiString)
		mov	eax, [ebp-38h]
		xor	edx, edx
		call	loc_4E06F8
		test	eax, eax
		jnz	short loc_4E21E8
		lea	eax, [ebp-4]
		mov	edx, offset _str_h.Text
		call	unknown_libname_72 ; Borland Visual Component Library &	Packages
		jmp	short loc_4E21F5
; ---------------------------------------------------------------------------

loc_4E21E8:				; CODE XREF: .text:004E21D7j
		lea	eax, [ebp-4]
		mov	edx, offset _str_hh.Text
		call	unknown_libname_72 ; Borland Visual Component Library &	Packages

loc_4E21F5:				; CODE XREF: .text:004E21E6j
		lea	eax, [ebp-3Ch]
		push	eax
		mov	ecx, offset _str_0.Text	; AnsiString
		mov	edx, 23h	; LCType
		mov	eax, ebx	; Locale
		call	@GetLocaleStr$qqriix10AnsiString ; GetLocaleStr(int,int,AnsiString)
		mov	eax, [ebp-3Ch]
		xor	edx, edx
		call	loc_4E06F8
		test	eax, eax
		jnz	short loc_4E2257
		lea	eax, [ebp-40h]
		push	eax
		mov	ecx, offset _str_0.Text	; AnsiString
		mov	edx, 1005h	; LCType
		mov	eax, ebx	; Locale
		call	@GetLocaleStr$qqriix10AnsiString ; GetLocaleStr(int,int,AnsiString)
		mov	eax, [ebp-40h]
		xor	edx, edx
		call	loc_4E06F8
		test	eax, eax
		jnz	short loc_4E224A
		lea	eax, [ebp-0Ch]
		mov	edx, offset _str__AMPM.Text
		call	unknown_libname_72 ; Borland Visual Component Library &	Packages
		jmp	short loc_4E2257
; ---------------------------------------------------------------------------

loc_4E224A:				; CODE XREF: .text:004E2239j
		lea	eax, [ebp-8]
		mov	edx, offset _str_AMPM_.Text
		call	unknown_libname_72 ; Borland Visual Component Library &	Packages

loc_4E2257:				; CODE XREF: .text:004E2216j
					; .text:004E2248j
		push	dword ptr [ebp-8]
		push	dword ptr [ebp-4]
		push	offset _str__mm.Text
		push	dword ptr [ebp-0Ch]
		mov	eax, offset dword_61AFE8
		mov	edx, 4
		call	@System@@LStrCatN$qqrv ; System::__linkproc__ LStrCatN(void)
		push	dword ptr [ebp-8]
		push	dword ptr [ebp-4]
		push	offset _str__mm_ss.Text
		push	dword ptr [ebp-0Ch]
		mov	eax, offset dword_61AFEC
		mov	edx, 4
		call	@System@@LStrCatN$qqrv ; System::__linkproc__ LStrCatN(void)
		mov	cl, 2Ch		; char
		mov	edx, 0Ch	; LCType
		mov	eax, ebx	; Locale
		call	@Sysutils@GetLocaleChar$qqriic ; Sysutils::GetLocaleChar(int,int,char)
		mov	byte ptr dword_61B0CC, al
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E22C6

loc_4E22B1:				; CODE XREF: .text:004E22C4j
		lea	eax, [ebp-40h]
		mov	edx, 10h
		call	unknown_libname_70 ; Borland Visual Component Library &	Packages
		retn
; ---------------------------------------------------------------------------

loc_4E22BF:				; DATA XREF: .text:004E2007o
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E22B1
; ---------------------------------------------------------------------------

loc_4E22C6:				; CODE XREF: .text:004E22BEj
					; DATA XREF: .text:004E22ACo
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
_str_0	label _strings
		dd 0FFFFFFFFh		; _top ; DATA XREF: .text:0
		dd 1			; Len
		db '0',0                ; Text
		align 4
_str_m_d_yy	label _strings
		dd 0FFFFFFFFh		; _top ; DATA XREF: .text:004E20F9o
		dd 6			; Len
		db 'm/d/yy',0           ; Text
		align 4
_str_mmmm_d__yyyy label _strings
		dd 0FFFFFFFFh		  ; _top ; DATA	XREF: .text:004E2126o
		dd 12			; Len
		db 'mmmm d, yyyy',0     ; Text
		align 10h
_str_am	label _strings	
		dd 0FFFFFFFFh		; _top ; DATA XREF: .text:004E2166o
		dd 2			; Len
		db 'am',0               ; Text
		align 4
_str_pm	label _strings	
		dd 0FFFFFFFFh		; _top ; DATA XREF: .text:004E2188o
		dd 2			; Len
		db 'pm',0               ; Text
		align 4
_str_h	label _strings	
		dd 0FFFFFFFFh		; _top ; DATA XREF: .text:004E21DCo
		dd 1			; Len
		db 'h',0                ; Text
		align 4
_str_hh	label _strings	
		dd 0FFFFFFFFh		; _top ; DATA XREF: .text:004E21EBo
		dd 2			; Len
		db 'hh',0               ; Text
		align 10h
_str__AMPM	label _strings
		dd 0FFFFFFFFh		; _top ; DATA XREF: .text:004E223Eo
		dd 5			; Len
		db ' AMPM',0            ; Text
		align 10h
_str_AMPM_	label _strings
		dd 0FFFFFFFFh		; _top ; DATA XREF: .text:004E224Do
		dd 5			; Len
		db 'AMPM ',0            ; Text
		align 10h
_str__mm	label _strings
		dd 0FFFFFFFFh		; _top ; DATA XREF: .text:004E225Do
		dd 3			; Len
		db ':mm',0              ; Text
_str__mm_ss	label _strings
		dd 0FFFFFFFFh		; _top ; DATA XREF: .text:004E227Ao
		dd 6			; Len
		db ':mm:ss',0           ; Text
		align 4

; SysUtils::_16769
@SysUtils@_16769:			; CODE XREF: .text:004E26EFp
		push	ebx
		mov	ebx, offset dword_579A2C
		jmp	short loc_4E2384
; ---------------------------------------------------------------------------

loc_4E2374:				; CODE XREF: .text:004E2387j
		mov	eax, [ebx]
		mov	edx, [eax]
		mov	[ebx], edx
		mov	edx, 8
		call	@System@@FreeMem$qqrv ;	System::__linkproc__ FreeMem(void)

loc_4E2384:				; CODE XREF: .text:004E2372j
		cmp	dword ptr [ebx], 0
		jnz	short loc_4E2374
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_46:			; CODE XREF: .text:004E285Dp
		push	ebx		; Borland Visual Component Library & Packages
		push	offset ModuleName ; "kernel32.dll"
		call	GetModuleHandleA
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4E23AD
		push	offset aGetdiskfreespa ; "GetDiskFreeSpaceExA"
		push	ebx		; hModule
		call	GetProcAddress
		mov	dword_579864, eax

loc_4E23AD:				; CODE XREF: .text:004E239Bj
		cmp	dword_579864, 0
		jnz	short loc_4E23C0
		mov	eax, offset @SysUtils@_16645 ; SysUtils::_16645
		mov	dword_579864, eax

loc_4E23C0:				; CODE XREF: .text:004E23B4j
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4
; CHAR ModuleName[]
ModuleName	db 'kernel32.dll',0     ; DATA XREF: .text:004E238Do
		align 4
; CHAR aGetdiskfreespa[]
aGetdiskfreespa	db 'GetDiskFreeSpaceExA',0 ; DATA XREF: .text:004E239Do
; ---------------------------------------------------------------------------

; _DWORD __fastcall Sysutils::FreeAndNil(void *)
@Sysutils@FreeAndNil$qqrpv:		; CODE XREF: .text:004E26EAp
		mov	edx, [eax]
		xor	ecx, ecx
		mov	[eax], ecx
		mov	eax, edx	; this
		call	@System@TObject@Free$qqrv ; System::TObject::Free(void)
		retn
; ---------------------------------------------------------------------------
		align 4
dword_4E23F8 label dword
				 dd 1Dh                 
                 dd offset dword_579A28
                 dd offset off_57D838
                 dd offset dword_579A20
                 dd offset off_57D83C
                 dd offset dword_579A18
                 dd offset off_57D810
                 dd offset dword_579A10
                 dd offset off_57D7F4
                 dd offset dword_579A08
                 dd offset off_57D840
                 dd offset dword_579A00
                 dd offset off_57D844
                 dd offset dword_5799F8
                 dd offset off_57D848
                 dd offset dword_5799F0
                 dd offset off_57D84C
                 dd offset dword_5799E8
                 dd offset off_57D850
                 dd offset dword_5799E0
                 dd offset off_57D854
                 dd offset dword_5799D8
                 dd offset off_57D858
                 dd offset dword_5799D0
                 dd offset off_57D85C
                 dd offset dword_5799C8
                 dd offset off_57D860
                 dd offset dword_5799C0
                 dd offset off_57D80C
                 dd offset dword_5799B8
                 dd offset off_57D864
                 dd offset dword_5799B0
                 dd offset off_57D868
                 dd offset dword_5799A8
                 dd offset off_57D86C
                 dd offset dword_5799A0
                 dd offset off_57D870
                 dd offset dword_579998
                 dd offset off_57D874
                 dd offset dword_579990
                 dd offset off_57D878
                 dd offset dword_579988
                 dd offset off_57D87C
                 dd offset dword_579980
                 dd offset off_57D880
                 dd offset dword_579978
                 dd offset off_57D884
                 dd offset dword_579970
                 dd offset off_57D888
                 dd offset dword_579968
                 dd offset off_57D88C
                 dd offset dword_579960
                 dd offset off_57D890
                 dd offset dword_579958
                 dd offset off_57D894
                 dd offset dword_579950
                 dd offset off_57D898
                 dd offset dword_579948
                 dd offset off_57D89C
unknown_libname_47 label dword
		dd 28h		; DATA XREF: .text:004E282Co
		dd offset off_579940
		dd offset off_57D8A0
		dd 0
		dd offset off_57993C
		dd offset off_57D8A4
		dd 0
		dd offset off_579938
		dd offset off_57D8A8
		dd 0
		dd offset off_579934
		dd offset off_57D8AC
		dd 0
		dd offset off_579930
		dd offset off_57D8B0
		dd 0
		dd offset off_57992C
		dd offset off_57D8B4
		dd 0
		dd offset off_579928
		dd offset off_57D8B8
		dd 0
		dd offset off_579924
		dd offset off_57D8BC
		dd 0
		dd offset off_579920
		dd offset off_57D8C0
		dd 0
		dd offset off_57991C
		dd offset off_57D8C4
		dd 0
		dd offset off_579918
		dd offset off_57D8C8
		dd 0
		dd offset off_579914
		dd offset off_57D8CC
		dd 0
		dd offset off_579910
		dd offset off_57D8D0
		dd 0
		dd offset off_57990C
		dd offset off_57D8D4
		dd 0
		dd offset off_579908
		dd offset off_57D8D8
		dd 0
		dd offset off_579904
		dd offset off_57D8DC
		dd 0
		dd offset off_579900
		dd offset off_57D8E0
		dd 0
		dd offset off_5798FC
		dd offset off_57D8E4
		dd 0
		dd offset off_5798F8
		dd offset off_57D8E8
		dd 0
		dd offset off_5798F4
		dd offset off_57D8EC
		dd 0
		dd offset off_5798F0
		dd offset off_57D8F0
		dd 0
		dd offset off_5798EC
		dd offset off_57D8F4
		dd 0
		dd offset off_5798E8
		dd offset off_57D8F8
		dd 0
		dd offset off_5798E4
		dd offset off_57D8FC
		dd 0
		dd offset off_5798E0
		dd offset off_57D900
		dd 0
		dd offset off_5798DC
		dd offset off_57D904
		dd 0
		dd offset off_5798D8
		dd offset off_57D908
		dd 0
		dd offset off_5798D4
		dd offset off_57D90C
		dd 0
		dd offset off_5798D0
		dd offset off_57D910
		dd 0
		dd offset off_5798CC
		dd offset off_57D914
		dd 0
		dd offset off_5798C8
		dd offset off_57D918
		dd 0
		dd offset off_5798C4
		dd offset off_57D91C
		dd 0
		dd offset off_5798C0
		dd offset off_57D920
		dd 0
		dd offset off_5798BC
		dd offset off_57D924
		dd 0
		dd offset off_5798B8
		dd offset off_57D928
		dd 0
		dd offset off_5798B4
		dd offset off_57D92C
		dd 0
		dd offset off_5798B0
		dd offset off_57D930
		dd 0
		dd offset off_5798AC
		dd offset off_57D934
		dd 0
		dd offset off_5798A8
		dd offset off_57D938
		dd 0
		dd offset off_5798A4
		dd offset off_57D93C
		dd 0

; _DWORD __cdecl Sysutils::Finalization()
@Sysutils@Finalization$qqrv:		; DATA XREF: .data:004F6152o
		push	ebp
		mov	ebp, esp
		xor	eax, eax
		push	ebp
		push	offset loc_4E27FE
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		inc	dword_61B0D0
		jnz	loc_4E27F0
		mov	eax, offset dword_61B0E0 ; void	*
		call	@Sysutils@FreeAndNil$qqrpv ; Sysutils::FreeAndNil(void *)
		call	@SysUtils@_16769 ; SysUtils::_16769
		call	unknown_libname_98 ; Borland Visual Component Library &	Packages
		mov	eax, offset off_57997C
		mov	ecx, 16h
		mov	edx, ds:off_4E17BC
		call	@System@@FinalizeArray$qqrv ; System::__linkproc__ FinalizeArray(void)
		mov	eax, offset dword_579944
		mov	ecx, 7
		mov	edx, ds:off_4E173C
		call	@System@@FinalizeArray$qqrv ; System::__linkproc__ FinalizeArray(void)
		mov	eax, offset off_5798A0
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		mov	eax, offset byte_61B094
		mov	ecx, 7
		mov	edx, ds:@$xp$13System@String ; `__DPdsc__'[System::String]
		call	@System@@FinalizeArray$qqrv ; System::__linkproc__ FinalizeArray(void)
		mov	eax, offset byte_61B06C
		mov	ecx, 7
		mov	edx, ds:@$xp$13System@String ; `__DPdsc__'[System::String]
		call	@System@@FinalizeArray$qqrv ; System::__linkproc__ FinalizeArray(void)
		mov	eax, offset byte_61B050
		mov	ecx, 7
		mov	edx, ds:@$xp$13System@String ; `__DPdsc__'[System::String]
		call	@System@@FinalizeArray$qqrv ; System::__linkproc__ FinalizeArray(void)
		mov	eax, offset byte_61B020
		mov	ecx, 0Ch
		mov	edx, ds:@$xp$13System@String ; `__DPdsc__'[System::String]
		call	@System@@FinalizeArray$qqrv ; System::__linkproc__ FinalizeArray(void)
		mov	eax, offset byte_61AFF0
		mov	ecx, 0Ch
		mov	edx, ds:@$xp$13System@String ; `__DPdsc__'[System::String]
		call	@System@@FinalizeArray$qqrv ; System::__linkproc__ FinalizeArray(void)
		mov	eax, offset dword_61AFEC
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		mov	eax, offset dword_61AFE8
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		mov	eax, offset dword_61AFE4
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		mov	eax, offset dword_61AFE0
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		mov	eax, offset dword_61AFD8
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		mov	eax, offset dword_61AFD4
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		mov	eax, offset dword_61AFC8
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		mov	eax, offset dword_57987C
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		mov	eax, offset dword_579868
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages

loc_4E27F0:				; CODE XREF: .text:004E26DFj
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E2805

loc_4E27FD:				; CODE XREF: .text:004E2803j
		retn
; ---------------------------------------------------------------------------

loc_4E27FE:				; DATA XREF: .text:004E26CEo
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E27FD
; ---------------------------------------------------------------------------

loc_4E2805:				; CODE XREF: .text:loc_4E27FDj
					; DATA XREF: .text:004E27F8o
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __cdecl Sysutils::initialization()
@Sysutils@initialization$qqrv:		; DATA XREF: .data:004F60DAo
		push	ebp
		mov	ebp, esp
		xor	eax, eax
		push	ebp
		push	offset loc_4E2870
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		sub	dword_61B0D0, 1
		jnb	short loc_4E2862
		mov	eax, offset dword_4E23F8
		call	@System@@InitResStringImports$qqrv ; System::__linkproc__ InitResStringImports(void)
		mov	eax, offset unknown_libname_47 ; Borland Visual	Component Library & Packages
		call	@System@@InitImports$qqrv ; System::__linkproc__ InitImports(void)
		cmp	byte_57D942, 0
		jz	short loc_4E284E
		mov	eax, offset off_5798A0
		mov	edx, offset _str_0x.Text
		call	unknown_libname_71 ; Borland Visual Component Library &	Packages

loc_4E284E:				; CODE XREF: .text:004E283Dj
		call	@SysUtils@_16723 ; SysUtils::_16723
		call	@Sysutils@GetFormatSettings$qqrv ; Sysutils::GetFormatSettings(void)
		call	loc_4E1DC8
		call	unknown_libname_46 ; Borland Visual Component Library &	Packages

loc_4E2862:				; CODE XREF: .text:004E2820j
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E2877

loc_4E286F:				; CODE XREF: .text:004E2875j
		retn
; ---------------------------------------------------------------------------

loc_4E2870:				; DATA XREF: .text:004E280Eo
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E286F
; ---------------------------------------------------------------------------

loc_4E2877:				; CODE XREF: .text:loc_4E286Fj
					; DATA XREF: .text:004E286Ao
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
_str_0x	label _strings	
		dd 0FFFFFFFFh		; _top ; DATA XREF: .text:004E2844o
		dd 2			; Len
		db '0x',0               ; Text
		align 4
		dd offset byte_4E288C
byte_4E288C	db 4			; DATA XREF: .text:004E2888o
					; Float
		db 8,'Extended'
		db 2			; extended
		align 4
; `__DPdsc__'[System::Cardinal]
@$xp$15System@Cardinal dd offset byte_4E289C
byte_4E289C	db 1			; DATA XREF: .text:`__DPdsc__'[System::Cardinal]o
					; Integer
		db 8,'Cardinal'
		db 5			; ulong	- min/max
		dd 0, 0FFFFFFFFh
		align 10h
; `__DPdsc__'[System::Single]
@$xp$13System@Single dd	offset byte_4E28B4
byte_4E28B4	db 4			; DATA XREF: .text:`__DPdsc__'[System::Single]o
					; Float
		db 6,'Single'
		db 0			; float
		align 10h
; `__DPdsc__'[System::Openstring]
@$xp$17System@Openstring dd offset byte_4E28C4
byte_4E28C4	db 5			; DATA XREF: .text:`__DPdsc__'[System::Openstring]o
					; String
		db 10,'Openstring'
		db 254			; sizeof=
		align 4
; `__DPdsc__'[System::String]
@$xp$13System@String dd	offset byte_4E28D8 ; DATA XREF:	.text:004DEF99r
					; .text:004DFD42o ...
byte_4E28D8	db 0Ah			; DATA XREF: .text:`__DPdsc__'[System::String]o
					; LString
		db 6,'String'
; `__DPdsc__'[HRESULT]
@$xp$7HRESULT	dd offset byte_4E28E4
byte_4E28E4	db 1			; DATA XREF: .text:`__DPdsc__'[HRESULT]o
					; Integer
		db 7,'HRESULT'
		db 4			; long - min/max
		dd 80000000h, 7FFFFFFFh
		align 4
; `__DPdsc__'[System::TInterfacedObject]
@$xp$24System@TInterfacedObject	dd offset byte_4E28FC
byte_4E28FC	db 7			; DATA XREF: .text:`__DPdsc__'[System::TInterfacedObject]o
					; Class
		db 17,'TInterfacedObject'
		dd offset _cls_System_TInterfacedObject	; "TInterfacedObject"
		dd offset @$xp$14System@TObject	; `__DPdsc__'[System::TObject]
		dw 0
		db 6,'System'
		dw 0			; PropCount
		align 4
; `__DPdsc__'[System::TDateTime]
@$xp$16System@TDateTime	dd offset byte_4E2928
byte_4E2928	db 4			; DATA XREF: .text:`__DPdsc__'[System::TDateTime]o
					; Float
		db 9,'TDateTime'
		db 1			; double
; `__DPdsc__'[System::PDateTime]
@$xp$16System@PDateTime	dd offset byte_4E2938
byte_4E2938	db 11h			; DATA XREF: .text:`__DPdsc__'[System::PDateTime]o
					; DynArray
		db 11,'TBoundArray'
		dd 4			; sizeof(arr[0])
		dd 0
		dd 3
		align 4

loc_4E2954:				; DATA XREF: .text:004E29F7o
		xor	edx, edx
		mov	[eax+10h], edx
		mov	[eax+0Ch], edx
		push	edx
		lea	edx, [eax+10h]
		push	edx
		push	dword ptr [eax+8]
		push	dword ptr [eax+14h]
		push	dword ptr [eax]
		call	ReadFile
		test	eax, eax
		jz	short loc_4E2975

loc_4E2972:				; CODE XREF: .text:004E297Dj
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_4E2975:				; CODE XREF: .text:004E2970j
		call	GetLastError
		cmp	eax, 6Dh
		jz	short loc_4E2972
		retn
; ---------------------------------------------------------------------------

loc_4E2980:				; DATA XREF: .text:004E2A2Eo
					; .text:loc_4E2AEDo
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_4E2983:				; DATA XREF: .text:loc_4E2A20o
					; .text:004E2B28o
		push	ecx
		mov	edx, [eax+0Ch]
		test	edx, edx
		jle	short loc_4E29A5
		xor	ecx, ecx
		mov	[eax+0Ch], ecx
		push	ecx
		lea	ecx, [esp+4]
		push	ecx
		push	edx
		push	dword ptr [eax+14h]
		push	dword ptr [eax]
		call	WriteFile
		test	eax, eax
		jz	short loc_4E29A9

loc_4E29A5:				; CODE XREF: .text:004E2989j
		xor	eax, eax

loc_4E29A7:				; CODE XREF: .text:004E29AEj
		pop	ecx
		retn
; ---------------------------------------------------------------------------

loc_4E29A9:				; CODE XREF: .text:004E29A3j
		call	GetLastError
		jmp	short loc_4E29A7
; ---------------------------------------------------------------------------

loc_4E29B0:				; DATA XREF: .text:loc_4E2A27o
		push	dword ptr [eax]
		mov	dword ptr [eax+4], 0D7B0h
		call	CloseHandle
		dec	eax
		jnz	short loc_4E29C2
		retn
; ---------------------------------------------------------------------------

loc_4E29C2:				; CODE XREF: .text:004E29BFj
		call	GetLastError
		retn
; ---------------------------------------------------------------------------

loc_4E29C8:				; DATA XREF: .text:004E2B77o
		push	esi
		mov	esi, eax
		xor	eax, eax
		mov	[esi+0Ch], eax
		mov	[esi+10h], eax
		mov	eax, [esi+4]
		sub	eax, 0D7B1h
		jz	short loc_4E29E8
		dec	eax
		jz	short loc_4E2A00
		dec	eax
		jz	short loc_4E2A11
		jmp	loc_4E2B31
; ---------------------------------------------------------------------------

loc_4E29E8:				; CODE XREF: .text:004E29DBj
		mov	eax, 80000000h
		mov	edx, 1
		mov	ecx, 3
		mov	dword ptr [esi+1Ch], offset loc_4E2954
		jmp	short loc_4E2A27
; ---------------------------------------------------------------------------

loc_4E2A00:				; CODE XREF: .text:004E29DEj
		mov	eax, 40000000h
		mov	edx, 1
		mov	ecx, 2
		jmp	short loc_4E2A20
; ---------------------------------------------------------------------------

loc_4E2A11:				; CODE XREF: .text:004E29E1j
		mov	eax, 0C0000000h
		mov	edx, 1
		mov	ecx, 3

loc_4E2A20:				; CODE XREF: .text:004E2A0Fj
		mov	dword ptr [esi+1Ch], offset loc_4E2983

loc_4E2A27:				; CODE XREF: .text:004E29FEj
		mov	dword ptr [esi+24h], offset loc_4E29B0
		mov	dword ptr [esi+20h], offset loc_4E2980
		cmp	byte ptr [esi+48h], 0
		jz	loc_4E2AED
		push	0
		push	80h
		push	ecx
		push	0
		push	edx
		push	eax
		lea	eax, [esi+48h]
		push	eax
		call	CreateFileA
		cmp	eax, 0FFFFFFFFh
		jz	loc_4E2B48
		mov	[esi], eax
		cmp	dword ptr [esi+4], 0D7B3h
		jnz	loc_4E2B0F
		dec	dword ptr [esi+4]
		push	0
		push	dword ptr [esi]
		call	GetFileSize
		inc	eax
		jz	loc_4E2B48
		sub	eax, 81h
		jnb	short loc_4E2A88
		xor	eax, eax

loc_4E2A88:				; CODE XREF: .text:004E2A84j
		push	0
		push	0
		push	eax
		push	dword ptr [esi]
		call	SetFilePointer
		inc	eax
		jz	loc_4E2B48
		push	0
		mov	edx, esp
		push	0
		push	edx
		push	80h
		lea	edx, [esi+14Ch]
		push	edx
		push	dword ptr [esi]
		call	ReadFile
		pop	edx
		dec	eax
		jnz	loc_4E2B48
		xor	eax, eax

loc_4E2ABF:				; CODE XREF: .text:004E2ACEj
		cmp	eax, edx
		jnb	short loc_4E2B0F
		cmp	byte ptr [esi+eax+14Ch], 1Ah
		jz	short loc_4E2AD0
		inc	eax
		jmp	short loc_4E2ABF
; ---------------------------------------------------------------------------

loc_4E2AD0:				; CODE XREF: .text:004E2ACBj
		push	2
		push	0
		sub	eax, edx
		push	eax
		push	dword ptr [esi]
		call	SetFilePointer
		inc	eax
		jz	short loc_4E2B48
		push	dword ptr [esi]
		call	SetEndOfFile
		dec	eax
		jnz	short loc_4E2B48
		jmp	short loc_4E2B0F
; ---------------------------------------------------------------------------

loc_4E2AED:				; CODE XREF: .text:004E2A39j
		mov	dword ptr [esi+24h], offset loc_4E2980
		cmp	dword ptr [esi+4], 0D7B2h
		jz	short loc_4E2B01
		push	0FFFFFFF6h
		jmp	short loc_4E2B03
; ---------------------------------------------------------------------------

loc_4E2B01:				; CODE XREF: .text:004E2AFBj
		push	0FFFFFFF5h

loc_4E2B03:				; CODE XREF: .text:004E2AFFj
		call	GetStdHandle
		cmp	eax, 0FFFFFFFFh
		jz	short loc_4E2B48
		mov	[esi], eax

loc_4E2B0F:				; CODE XREF: .text:004E2A66j
					; .text:004E2AC1j ...
		cmp	dword ptr [esi+4], 0D7B1h
		jz	short loc_4E2B2F
		push	dword ptr [esi]
		call	GetFileType
		test	eax, eax
		jz	short loc_4E2B33
		cmp	eax, 2
		jnz	short loc_4E2B2F
		mov	dword ptr [esi+20h], offset loc_4E2983

loc_4E2B2F:				; CODE XREF: .text:004E2B16j
					; .text:004E2B26j
		xor	eax, eax

loc_4E2B31:				; CODE XREF: .text:004E29E3j
					; .text:004E2B46j ...
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_4E2B33:				; CODE XREF: .text:004E2B21j
		push	dword ptr [esi]
		call	CloseHandle
		mov	dword ptr [esi+4], 0D7B0h
		mov	eax, 69h
		jmp	short loc_4E2B31
; ---------------------------------------------------------------------------

loc_4E2B48:				; CODE XREF: .text:004E2A57j
					; .text:004E2A79j ...
		mov	dword ptr [esi+4], 0D7B0h
		call	GetLastError
		jmp	short loc_4E2B31
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ Assign(void *&, System::SmallString<(unsigned	char)255> &)
@System@@Assign$qqrrpvr28System@_SmallString$iuc$255_: ; CODE XREF: .text:004E6B10p
					; .text:004E6B1Fp
		lea	ecx, [eax+14Ch]
		mov	[eax+14h], ecx
		xor	ecx, ecx
		mov	[eax], ecx
		mov	dword ptr [eax+4], 0D7B0h
		mov	dword ptr [eax+8], 80h
		mov	[eax+0Ch], ecx
		mov	[eax+10h], ecx
		mov	dword ptr [eax+18h], offset loc_4E29C8
		mov	[eax+1Ch], ecx
		mov	[eax+20h], ecx
		mov	[eax+24h], ecx
		lea	eax, [eax+48h]
		test	edx, edx
		jz	short loc_4E2BA9
		mov	ch, 82h

loc_4E2B90:				; CODE XREF: .text:004E2BA6j
		mov	cl, [edx]
		inc	edx
		mov	[eax], cl
		inc	eax
		test	cl, cl
		jz	short locret_4E2BAB
		mov	cl, [edx]
		inc	edx
		mov	[eax], cl
		inc	eax
		test	cl, cl
		jz	short locret_4E2BAB
		dec	ch
		jnz	short loc_4E2B90
		dec	eax

loc_4E2BA9:				; CODE XREF: .text:004E2B8Cj
		mov	[eax], ch

locret_4E2BAB:				; CODE XREF: .text:004E2B98j
					; .text:004E2BA2j
		retn
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ _Flush(void *&)
@System@@_Flush$qqrrpv:
		mov	edx, [eax+4]
		cmp	edx, 0D7B2h
		jnz	short loc_4E2BBF
		call	dword ptr [eax+1Ch]
		test	eax, eax
		jnz	short loc_4E2BCC

locret_4E2BBE:				; CODE XREF: .text:004E2BC5j
		retn
; ---------------------------------------------------------------------------

loc_4E2BBF:				; CODE XREF: .text:004E2BB5j
		cmp	edx, 0D7B1h
		jz	short locret_4E2BBE
		mov	eax, 67h

loc_4E2BCC:				; CODE XREF: .text:004E2BBCj
		jmp	loc_4E4EB8
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ Flush(void *&)
@System@@Flush$qqrrpv:			; CODE XREF: .text:004E3052j
		mov	edx, [eax+4]
		cmp	edx, 0D7B2h
		jnz	short loc_4E2BE4
		call	dword ptr [eax+20h]
		test	eax, eax
		jnz	short loc_4E2BF1

locret_4E2BE3:				; CODE XREF: .text:004E2BEAj
		retn
; ---------------------------------------------------------------------------

loc_4E2BE4:				; CODE XREF: .text:004E2BDAj
		cmp	edx, 0D7B1h
		jz	short locret_4E2BE3
		mov	eax, 67h

loc_4E2BF1:				; CODE XREF: .text:004E2BE1j
		jmp	loc_4E4EB8
; ---------------------------------------------------------------------------
		align 4
byte_4E2BF8	db 0			; DATA XREF: .text:004E2CB0r
		db 1, 2	dup(0)
		dd 7000004h, 0A0000h, 0D00h
flt_4E2C08	dd 0.9375		; DATA XREF: .text:004E2CD9r
					; .text:004E2CE1r
flt_4E2C0C	dd 1.0625		; DATA XREF: .text:loc_4E2CEBr
					; .text:004E2CF3r
flt_4E2C10	dd 9.223372e18		; DATA XREF: .text:004E2D44r
dbl_4E2C14	dq 4195835.0		; DATA XREF: .text:004E2C3Ar
					; .text:004E2C4Cr
dbl_4E2C1C	dq 3145727.0		; DATA XREF: .text:004E2C40r
					; .text:004E2C46r
dbl_4E2C24	dq 1.0			; DATA XREF: .text:004E2C52r
; ---------------------------------------------------------------------------

loc_4E2C2C:				; CODE XREF: .text:loc_4E2C7Ej
		mov	byte_61B135, 1
		push	eax
		sub	esp, 0Ch
		fstp	tbyte ptr [esp]
		fld	ds:dbl_4E2C14
		fdiv	ds:dbl_4E2C1C
		fmul	ds:dbl_4E2C1C
		fsubr	ds:dbl_4E2C14
		fcomp	ds:dbl_4E2C24
		fstsw	ax
		shr	eax, 7
		and	eax, 2
		dec	eax
		mov	byte_61B135, al
		fld	tbyte ptr [esp]
		add	esp, 0Ch
		pop	eax
		jmp	short @System@@FSafeDivide$qqrv	; System::__linkproc__ FSafeDivide(void)
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ FSafeDivideR(void)
@System@@FSafeDivideR$qqrv:
		fxch	st(1)

; __fastcall System::__linkproc__ FSafeDivide(void)
@System@@FSafeDivide$qqrv:		; CODE XREF: .text:004E2C6Ej
		cmp	byte_61B135, 0
		jle	short loc_4E2C7E
		fdivp	st(1), st
		retn
; ---------------------------------------------------------------------------

loc_4E2C7E:				; CODE XREF: .text:004E2C79j
		jz	short loc_4E2C2C
		push	eax
		sub	esp, 18h
		fstp	tbyte ptr [esp+0Ch]
		fstp	tbyte ptr [esp]
		fld	tbyte ptr [esp]
		fld	tbyte ptr [esp+0Ch]

loc_4E2C92:				; CODE XREF: .text:004E2D53j
		mov	eax, [esp+10h]
		add	eax, eax
		jnb	short loc_4E2CFD
		xor	eax, 0E000000h
		test	eax, 0E000000h
		jz	short loc_4E2CAD

loc_4E2CA6:				; CODE XREF: .text:004E2CB7j
					; .text:004E2CC2j ...
		fdivp	st(1), st
		add	esp, 18h
		pop	eax
		retn
; ---------------------------------------------------------------------------

loc_4E2CAD:				; CODE XREF: .text:004E2CA4j
		shr	eax, 1Ch
		cmp	ds:byte_4E2BF8[eax], 0
		jz	short loc_4E2CA6
		mov	eax, [esp+14h]
		and	eax, 7FFFh
		jz	short loc_4E2CA6
		cmp	eax, 7FFFh
		jz	short loc_4E2CA6
		mov	eax, [esp+8]
		and	eax, 7FFFh
		cmp	eax, 1
		jz	short loc_4E2CEB
		fmul	ds:flt_4E2C08
		fxch	st(1)
		fmul	ds:flt_4E2C08
		fxch	st(1)
		jmp	short loc_4E2CA6
; ---------------------------------------------------------------------------

loc_4E2CEB:				; CODE XREF: .text:004E2CD7j
		fmul	ds:flt_4E2C0C
		fxch	st(1)
		fmul	ds:flt_4E2C0C
		fxch	st(1)
		jmp	short loc_4E2CA6
; ---------------------------------------------------------------------------

loc_4E2CFD:				; CODE XREF: .text:004E2C98j
		mov	eax, [esp+0Ch]
		or	eax, [esp+10h]
		jz	short loc_4E2CA6
		mov	eax, [esp+14h]
		and	eax, 7FFFh
		jnz	short loc_4E2CA6
		mov	eax, [esp+8]
		and	eax, 7FFFh
		jz	short loc_4E2D32
		cmp	eax, 7FFFh
		jz	short loc_4E2CA6
		mov	eax, [esp+4]
		add	eax, eax
		jnb	loc_4E2CA6
		jmp	short loc_4E2D3E
; ---------------------------------------------------------------------------

loc_4E2D32:				; CODE XREF: .text:004E2D1Bj
		mov	eax, [esp+4]
		add	eax, eax
		jb	loc_4E2CA6

loc_4E2D3E:				; CODE XREF: .text:004E2D30j
		fxch	st(1)
		fstp	st
		fld	st
		fmul	ds:flt_4E2C10
		fstp	tbyte ptr [esp+0Ch]
		fld	tbyte ptr [esp]
		fxch	st(1)
		jmp	loc_4E2C92
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ ReadString(void)
@System@@ReadString$qqrv:
		push	edx
		inc	edx
		call	loc_4E2D6F
		pop	edx
		mov	[edx], cl
		retn
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ ReadCString(void)
@System@@ReadCString$qqrv:
		push	edx
		call	loc_4E2D6F
		pop	edx
		mov	byte ptr [edx+ecx], 0
		retn
; ---------------------------------------------------------------------------

loc_4E2D6F:				; CODE XREF: .text:004E2D5Ap
					; .text:004E2D64p
		push	ebx
		push	esi
		push	edi
		push	ecx
		mov	ebx, eax
		mov	esi, ecx
		mov	edi, edx
		cmp	dword ptr [ebx+4], 0D7B1h
		jnz	short loc_4E2DCA

loc_4E2D82:				; CODE XREF: .text:004E2DE9j
		test	esi, esi
		jle	short loc_4E2DAC
		mov	edx, [ebx+0Ch]
		mov	ecx, [ebx+10h]
		sub	ecx, edx
		add	edx, [ebx+14h]

loc_4E2D91:				; CODE XREF: .text:004E2DA1j
		dec	ecx
		jl	short loc_4E2DB3
		mov	al, [edx]
		inc	edx

loc_4E2D97:				; CODE XREF: .text:004E2DC8j
		cmp	al, 1Ah
		jz	short loc_4E2DAC
		cmp	al, 0Dh
		jz	short loc_4E2DA5
		stosb
		dec	esi
		jg	short loc_4E2D91
		jmp	short loc_4E2DA6
; ---------------------------------------------------------------------------

loc_4E2DA5:				; CODE XREF: .text:004E2D9Dj
		dec	edx

loc_4E2DA6:				; CODE XREF: .text:004E2DA3j
		sub	edx, [ebx+14h]
		mov	[ebx+0Ch], edx

loc_4E2DAC:				; CODE XREF: .text:004E2D84j
					; .text:004E2D99j ...
		pop	ecx
		sub	ecx, esi
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4E2DB3:				; CODE XREF: .text:004E2D92j
		mov	[ebx+0Ch], edx
		mov	eax, ebx
		call	_READCHAR
		mov	edx, [ebx+0Ch]
		mov	ecx, [ebx+10h]
		sub	ecx, edx
		add	edx, [ebx+14h]
		jmp	short loc_4E2D97
; ---------------------------------------------------------------------------

loc_4E2DCA:				; CODE XREF: .text:004E2D80j
		cmp	eax, offset byte_61B138
		jz	short loc_4E2DDD

loc_4E2DD1:				; CODE XREF: .text:004E2DEBj
		mov	eax, 68h
		call	loc_4E4EB8
		jmp	short loc_4E2DAC
; ---------------------------------------------------------------------------

loc_4E2DDD:				; CODE XREF: .text:004E2DCFj
		call	@System@@ResetText$qqrrpv ; System::__linkproc__ ResetText(void	*&)
		cmp	dword ptr [ebx+4], 0D7B1h
		jz	short loc_4E2D82
		jmp	short loc_4E2DD1
; ---------------------------------------------------------------------------
		align 10h

loc_4E2DF0:				; CODE XREF: .text:004E2E30j
					; .text:004E2E37j ...
		push	ebx
		push	esi
		mov	esi, eax
		mov	ebx, edx
		mov	edx, [esi+4]
		sub	edx, 0D7B0h
		jz	short loc_4E2E0B
		cmp	edx, 3
		ja	short loc_4E2E1F
		call	_CLOSE

loc_4E2E0B:				; CODE XREF: .text:004E2DFFj
		mov	eax, esi
		mov	[esi+4], ebx
		call	dword ptr [esi+18h]
		test	eax, eax
		jz	short loc_4E2E1C
		call	loc_4E4EB8

loc_4E2E1C:				; CODE XREF: .text:004E2E15j
					; .text:004E2E29j
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4E2E1F:				; CODE XREF: .text:004E2E04j
		mov	eax, 66h
		call	loc_4E4EB8
		jmp	short loc_4E2E1C
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ ResetText(void *&)
@System@@ResetText$qqrrpv:		; CODE XREF: .text:loc_4E2DDDp
					; .text:loc_4E69C3p
		mov	edx, 0D7B1h
		jmp	short loc_4E2DF0
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ RewritText(void *&)
@System@@RewritText$qqrrpv:		; CODE XREF: .text:004E2FBDp
					; .text:004E3087p
		mov	edx, 0D7B2h
		jmp	short loc_4E2DF0
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ Append(void)
@System@@Append$qqrv:
		mov	edx, 0D7B3h
		jmp	short loc_4E2DF0
; ---------------------------------------------------------------------------

loc_4E2E40:				; CODE XREF: .text:loc_4E2F53j
					; .text:004E2F5Dj
		push	ebx
		push	esi
		push	edi
		mov	ebx, eax
		mov	esi, edx
		mov	edi, ecx
		mov	edx, [ebx+4]
		sub	edx, 0D7B0h
		jz	short loc_4E2E69
		cmp	edx, 3
		ja	loc_4E2F07
		call	dword ptr [ebx+24h]
		test	eax, eax
		jz	short loc_4E2E69
		call	loc_4E4EB8

loc_4E2E69:				; CODE XREF: .text:004E2E52j
					; .text:004E2E62j
		mov	dword ptr [ebx+4], 0D7B3h
		mov	[ebx+8], esi
		mov	dword ptr [ebx+24h], offset loc_4E2F62
		mov	dword ptr [ebx+1Ch], offset loc_4E2EEB
		cmp	byte ptr [ebx+48h], 0
		jz	short loc_4E2EEE
		mov	eax, 0C0000000h
		mov	dl, byte_61B132
		and	edx, 70h
		shr	edx, 2
		mov	edx, ds:dword_4E2F21[edx]
		mov	ecx, 2
		sub	edi, 3
		jz	short loc_4E2ECB
		mov	ecx, 3
		inc	edi
		jz	short loc_4E2ECB
		mov	eax, 40000000h
		inc	edi
		mov	dword ptr [ebx+4], 0D7B2h
		jz	short loc_4E2ECB
		mov	eax, 80000000h
		mov	dword ptr [ebx+4], 0D7B1h

loc_4E2ECB:				; CODE XREF: .text:004E2EA6j
					; .text:004E2EAEj ...
		push	0		; hTemplateFile
		push	80h		; dwFlagsAndAttributes
		push	ecx		; dwCreationDisposition
		push	0		; lpSecurityAttributes
		push	edx		; dwShareMode
		push	eax		; dwDesiredAccess
		lea	eax, [ebx+48h]
		push	eax		; lpFileName
		call	CreateFileA

loc_4E2EE0:				; CODE XREF: .text:004E2F05j
		cmp	eax, 0FFFFFFFFh
		jz	short loc_4E2F0E
		mov	[ebx], eax

loc_4E2EE7:				; CODE XREF: .text:004E2F1Fj
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4E2EEB:				; DATA XREF: .text:004E2E7Ao
					; .text:loc_4E2EEEo
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_4E2EEE:				; CODE XREF: .text:004E2E85j
		mov	dword ptr [ebx+24h], offset loc_4E2EEB
		cmp	edi, 3
		jz	short loc_4E2EFE
		push	0FFFFFFF6h
		jmp	short loc_4E2F00
; ---------------------------------------------------------------------------

loc_4E2EFE:				; CODE XREF: .text:004E2EF8j
		push	0FFFFFFF5h	; nStdHandle

loc_4E2F00:				; CODE XREF: .text:004E2EFCj
		call	GetStdHandle
		jmp	short loc_4E2EE0
; ---------------------------------------------------------------------------

loc_4E2F07:				; CODE XREF: .text:004E2E57j
		mov	eax, 66h
		jmp	short loc_4E2F1A
; ---------------------------------------------------------------------------

loc_4E2F0E:				; CODE XREF: .text:004E2EE3j
		mov	dword ptr [ebx+4], 0D7B0h
		call	GetLastError

loc_4E2F1A:				; CODE XREF: .text:004E2F0Cj
		call	loc_4E4EB8
		jmp	short loc_4E2EE7
; ---------------------------------------------------------------------------
dword_4E2F21	dd 3			; DATA XREF: .text:004E2E98r
		align 4
		dd 100h, 200h, 300h, 3 dup(0)
		db 0
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ ResetFile(void)
@System@@ResetFile$qqrv:
		xor	ecx, ecx
		mov	cl, byte_61B132
		and	cl, 3
		cmp	cl, 2
		jbe	short loc_4E2F53
		mov	cl, 2

loc_4E2F53:				; CODE XREF: .text:004E2F4Fj
		jmp	loc_4E2E40
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ RewritFile(void)
@System@@RewritFile$qqrv:
		mov	ecx, 3
		jmp	loc_4E2E40
; ---------------------------------------------------------------------------

loc_4E2F62:				; DATA XREF: .text:004E2E73o
		push	dword ptr [eax]	; hObject
		mov	dword ptr [eax+4], 0D7B0h
		call	CloseHandle
		dec	eax
		jnz	unknown_libname_59 ; Borland Visual Component Library &	Packages
		retn
; ---------------------------------------------------------------------------

loc_4E2F78:				; CODE XREF: .text:004E2FF9p
					; .text:004E3012j ...
		push	esi
		push	edi
		mov	esi, edx
		cmp	dword ptr [eax+4], 0D7B2h
		jnz	short loc_4E2FB3

loc_4E2F85:				; CODE XREF: .text:004E2FA9j
					; .text:004E2FCCj
		mov	edi, [eax+14h]
		add	edi, [eax+0Ch]
		mov	edx, [eax+8]
		sub	edx, [eax+0Ch]
		cmp	edx, ecx
		jg	short loc_4E2FAB
		add	[eax+0Ch], edx
		sub	ecx, edx
		push	eax
		push	ecx
		mov	ecx, edx
		rep movsb
		call	dword ptr [eax+1Ch]
		test	eax, eax
		jnz	short loc_4E2FDA
		pop	ecx
		pop	eax
		jmp	short loc_4E2F85
; ---------------------------------------------------------------------------

loc_4E2FAB:				; CODE XREF: .text:004E2F93j
		add	[eax+0Ch], ecx
		rep movsb

loc_4E2FB0:				; CODE XREF: .text:004E2FD8j
					; .text:004E2FE1j
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_4E2FB3:				; CODE XREF: .text:004E2F83j
		cmp	eax, offset byte_61B304
		jnz	short loc_4E2FCE
		push	ecx
		push	edx
		push	eax
		call	@System@@RewritText$qqrrpv ; System::__linkproc__ RewritText(void *&)
		pop	eax
		pop	edx
		pop	ecx
		cmp	dword ptr [eax+4], 0D7B2h
		jz	short loc_4E2F85

loc_4E2FCE:				; CODE XREF: .text:004E2FB8j
		mov	eax, 69h
		call	loc_4E4EB8
		jmp	short loc_4E2FB0
; ---------------------------------------------------------------------------

loc_4E2FDA:				; CODE XREF: .text:004E2FA5j
		call	loc_4E4EB8
		pop	ecx
		pop	eax
		jmp	short loc_4E2FB0
; ---------------------------------------------------------------------------

loc_4E2FE3:				; CODE XREF: .text:004E3033p
					; .text:004E30ADp ...
		mov	ecx, edx

loc_4E2FE5:				; CODE XREF: .text:004E300Ej
		mov	edx, offset byte_579A30
		cmp	ecx, 40h
		jle	short loc_4E3010
		sub	ecx, 40h
		push	eax
		push	ecx
		mov	ecx, 40h
		call	loc_4E2F78
		call	qqrv
		cmp	dword ptr [eax+4], 0
		jnz	short loc_4E3019
		pop	ecx
		pop	eax
		jmp	short loc_4E2FE5
; ---------------------------------------------------------------------------

loc_4E3010:				; CODE XREF: .text:004E2FEDj
		test	ecx, ecx
		jg	loc_4E2F78
		retn
; ---------------------------------------------------------------------------

loc_4E3019:				; CODE XREF: .text:004E300Aj
		pop	ecx
		pop	eax
		retn
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ Write0String(void)
@System@@Write0String$qqrv:
		xor	ecx, ecx
		mov	cl, [edx]
		inc	edx
		jmp	loc_4E2F78
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ WriteString(void)
@System@@WriteString$qqrv:
		push	ebx
		xor	ebx, ebx
		mov	bl, [edx]
		sub	ecx, ebx
		jle	short loc_4E303A
		push	eax
		push	edx
		mov	edx, ecx
		call	loc_4E2FE3
		pop	edx
		pop	eax

loc_4E303A:				; CODE XREF: .text:004E302Dj
		mov	ecx, ebx
		pop	ebx
		inc	edx
		jmp	loc_4E2F78
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ WriteLn(void)
@System@@WriteLn$qqrv:			; CODE XREF: .text:004E1594p
					; .text:004E5845p
		mov	edx, offset dword_579A70
		mov	ecx, 2
		call	loc_4E2F78
		jmp	@System@@Flush$qqrrpv ;	System::__linkproc__ Flush(void	*&)
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ Write0Char(void)
@System@@Write0Char$qqrv:
		cmp	dword ptr [eax+4], 0D7B2h
		jnz	short loc_4E307E

loc_4E3060:				; CODE XREF: .text:004E307Cj
					; .text:004E3095j
		mov	ecx, [eax+0Ch]
		cmp	ecx, [eax+8]
		jge	short loc_4E3071
		add	ecx, [eax+14h]
		mov	[ecx], dl
		inc	dword ptr [eax+0Ch]
		retn
; ---------------------------------------------------------------------------

loc_4E3071:				; CODE XREF: .text:004E3066j
		push	eax
		push	edx
		call	dword ptr [eax+1Ch]
		test	eax, eax
		jnz	short loc_4E30A1
		pop	edx
		pop	eax
		jmp	short loc_4E3060
; ---------------------------------------------------------------------------

loc_4E307E:				; CODE XREF: .text:004E305Ej
		cmp	eax, offset byte_61B304
		jnz	short loc_4E3097
		push	edx
		push	eax
		call	@System@@RewritText$qqrrpv ; System::__linkproc__ RewritText(void *&)
		pop	eax
		pop	edx
		cmp	dword ptr [eax+4], 0D7B2h
		jz	short loc_4E3060

loc_4E3097:				; CODE XREF: .text:004E3083j
		mov	eax, 69h
		jmp	loc_4E4EB8
; ---------------------------------------------------------------------------

loc_4E30A1:				; CODE XREF: .text:004E3078j
		call	loc_4E4EB8
		pop	edx
		pop	eax
		retn
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ WriteChar(void)
@System@@WriteChar$qqrv:
		push	edx
		lea	edx, [ecx-1]
		call	loc_4E2FE3
		mov	edx, esp
		mov	ecx, 1
		call	loc_4E2F78
		pop	edx
		retn
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ Write0CString(void)
@System@@Write0CString$qqrv:		; CODE XREF: .text:004E158Fp
					; .text:004E5840p
		xor	ecx, ecx
		jmp	short $+2	; System::__linkproc__ WriteCString(void)
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ WriteCString(void)
@System@@WriteCString$qqrv:		; CODE XREF: .text:004E30C2j
		push	esi
		push	edi
		mov	esi, eax
		push	ecx
		mov	edi, edx
		or	ecx, 0FFFFFFFFh
		mov	al, 0
		repne scasb
		not	ecx
		dec	ecx
		mov	edi, edx
		pop	edx
		sub	edx, ecx
		mov	eax, esi
		push	ecx
		call	loc_4E2FE3
		pop	ecx
		mov	eax, esi
		mov	edx, edi
		pop	edi
		pop	esi
		jmp	loc_4E2F78
; ---------------------------------------------------------------------------
		db 2 dup(90h)
		dd 0
		dd 3FF00000h
dbl_4E30F8	dq 10.0			; DATA XREF: .text:loc_4E3219r
dbl_4E3100	dq 1.0e17		; DATA XREF: .text:004E32EFr
dbl_4E3108	dq 1.0e18		; DATA XREF: .text:004E32F7r
					; .text:004E3303r
; ---------------------------------------------------------------------------

; int __stdcall	System::__linkproc__ Str0Ext(long double)
@System@@Str0Ext$qqrv:
		mov	ecx, eax
		mov	eax, 17h
		or	edx, 0FFFFFFFFh
		jmp	short @System@@Str2Ext$qqrv ; System::__linkproc__ Str2Ext(void)
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ Str1Ext(void)
@System@@Str1Ext$qqrv:
		mov	ecx, edx
		or	edx, 0FFFFFFFFh
		jmp	short $+2	; System::__linkproc__ Str2Ext(void)
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ Str2Ext(void)
@System@@Str2Ext$qqrv:			; CODE XREF: .text:004E311Aj
					; .text:004E3121j
		fld	tbyte ptr [esp+4]
		push	ebx
		push	esi
		push	edi
		mov	ebx, eax
		mov	esi, edx
		push	ecx
		sub	esp, 100h
		cmp	ebx, 0FFh
		jle	short loc_4E3142
		mov	ebx, 0FFh

loc_4E3142:				; CODE XREF: .text:004E313Bj
		fld	st
		fstp	tbyte ptr [esp]
		xor	eax, eax
		mov	ax, [esp+8]
		mov	edi, eax
		shr	edi, 0Fh
		and	ax, 7FFFh
		cmp	ax, 7FFFh
		jz	loc_4E329F
		fabs
		test	esi, esi
		jge	loc_4E320C
		call	loc_4E334E

loc_4E3170:				; CODE XREF: .text:004E3232j
		mov	esi, ebx
		sub	esi, 8
		cmp	esi, 2
		jge	short loc_4E3181
		mov	esi, 2
		jmp	short loc_4E318B
; ---------------------------------------------------------------------------

loc_4E3181:				; CODE XREF: .text:004E3178j
		cmp	esi, 12h
		jle	short loc_4E318B
		mov	esi, 12h

loc_4E318B:				; CODE XREF: .text:004E317Fj
					; .text:004E3184j
		mov	edx, esp
		push	eax
		mov	eax, esi
		call	loc_4E32E4
		mov	edx, edi
		mov	edi, [esp+104h]
		mov	[edi], bl
		inc	edi
		mov	al, 20h
		mov	ecx, ebx
		sub	ecx, esi
		sub	ecx, 8
		jle	short loc_4E31AE
		rep stosb

loc_4E31AE:				; CODE XREF: .text:004E31AAj
		sub	[edi-1], cl
		test	dl, dl
		jz	short loc_4E31B7
		mov	al, 2Dh

loc_4E31B7:				; CODE XREF: .text:004E31B3j
		stosb
		pop	eax
		mov	ecx, esi
		mov	esi, esp
		cmp	byte ptr [esi],	30h
		jz	short loc_4E31C4
		inc	eax
		dec	esi

loc_4E31C4:				; CODE XREF: .text:004E31C0j
		inc	esi
		movsb
		mov	byte ptr [edi],	2Eh
		inc	edi
		dec	ecx
		rep movsb
		mov	byte ptr [edi],	45h
		mov	cl, 2Bh
		test	eax, eax
		jge	short loc_4E31DA
		mov	cl, 2Dh
		neg	eax

loc_4E31DA:				; CODE XREF: .text:004E31D4j
		mov	[edi+1], cl
		xor	edx, edx
		mov	cx, 0Ah
		div	cx
		add	dl, 30h
		mov	[edi+5], dl
		xor	edx, edx
		div	cx
		add	dl, 30h
		mov	[edi+4], dl
		xor	edx, edx
		div	cx
		add	dl, 30h
		mov	[edi+3], dl
		add	al, 30h
		mov	[edi+2], al
		jmp	loc_4E3292
; ---------------------------------------------------------------------------

loc_4E320C:				; CODE XREF: .text:004E3165j
		cmp	esi, 0D8h
		jle	short loc_4E3219
		mov	esi, 0D8h

loc_4E3219:				; CODE XREF: .text:004E3212j
		fcom	ds:dbl_4E30F8
		fstsw	ax
		sahf
		mov	eax, 0
		jb	short loc_4E3238
		call	loc_4E334E
		cmp	eax, 23h
		jg	loc_4E3170

loc_4E3238:				; CODE XREF: .text:004E3228j
		inc	eax
		mov	edx, esp
		push	eax
		add	eax, esi
		call	loc_4E32E4
		pop	eax
		mov	edx, esi
		mov	esi, esp
		cmp	byte ptr [esi],	30h
		jz	short loc_4E324F
		inc	eax
		dec	esi

loc_4E324F:				; CODE XREF: .text:004E324Bj
		inc	esi
		mov	ecx, eax
		add	ecx, edi
		test	edx, edx
		jz	short loc_4E3261
		inc	ecx
		add	ecx, edx
		cmp	ebx, ecx
		jg	short loc_4E3261
		mov	ebx, ecx

loc_4E3261:				; CODE XREF: .text:004E3256j
					; .text:004E325Dj
		push	eax
		push	edi
		mov	edi, [esp+108h]
		mov	[edi], bl
		inc	edi
		sub	ebx, ecx
		mov	ecx, ebx
		jle	short loc_4E3277
		mov	al, 20h
		rep stosb

loc_4E3277:				; CODE XREF: .text:004E3271j
		sub	[edi-1], cl
		pop	eax
		pop	ecx
		test	eax, eax
		jz	short loc_4E3284
		mov	byte ptr [edi],	2Dh
		inc	edi

loc_4E3284:				; CODE XREF: .text:004E327Ej
		rep movsb
		test	edx, edx
		jz	short loc_4E3292
		mov	byte ptr [edi],	2Eh
		inc	edi
		mov	ecx, edx
		rep movsb

loc_4E3292:				; CODE XREF: .text:004E3207j
					; .text:004E3288j ...
		add	esp, 100h
		pop	ecx
		pop	edi
		pop	esi
		pop	ebx
		retn	0Ch
; ---------------------------------------------------------------------------

loc_4E329F:				; CODE XREF: .text:004E315Bj
		fstp	st
		cmp	dword ptr [esp+4], 80000000h
		mov	esi, offset aNan_2 ; "Nan"
		jnz	short loc_4E32BD
		dec	edi
		mov	esi, offset word_4E32DA
		jnz	short loc_4E32BD
		mov	esi, offset byte_4E32DF

loc_4E32BD:				; CODE XREF: .text:004E32AEj
					; .text:004E32B6j
		mov	edi, ecx
		mov	ecx, ebx
		mov	[edi], cl
		inc	edi
		sub	cl, [esi]
		jbe	short loc_4E32CC
		mov	al, 20h
		rep stosb

loc_4E32CC:				; CODE XREF: .text:004E32C6j
		sub	[edi-1], cl
		mov	cl, [esi]
		inc	esi
		rep movsb
		jmp	short loc_4E3292
; ---------------------------------------------------------------------------
aNan_2		db 3,'Nan'              ; DATA XREF: .text:004E32A9o
word_4E32DA	dw 2B04h		; DATA XREF: .text:004E32B1o
		db 49h,	6Eh, 66h
byte_4E32DF	db 4			; DATA XREF: .text:004E32B8o
		dd 666E492Dh
; ---------------------------------------------------------------------------

loc_4E32E4:				; CODE XREF: .text:004E3190p
					; .text:004E323Ep
		push	edi
		mov	edi, edx
		mov	ecx, eax
		sub	esp, 0Ah
		mov	byte ptr [edi],	30h
		fmul	ds:dbl_4E3100
		frndint
		fcom	ds:dbl_4E3108
		fstsw	ax
		sahf
		jb	short loc_4E330C
		fsub	ds:dbl_4E3108
		mov	byte ptr [edi],	31h

loc_4E330C:				; CODE XREF: .text:004E3301j
		fbstp	tbyte ptr [esp]
		mov	edx, 8
		inc	edi

loc_4E3315:				; CODE XREF: .text:004E3328j
		wait
		mov	al, [esp+edx]
		mov	ah, al
		shr	al, 4
		and	ah, 0Fh
		add	ax, 3030h
		stosw
		dec	edx
		jns	short loc_4E3315
		sub	ecx, 12h
		jl	short loc_4E3335
		mov	al, 30h
		rep stosb
		jmp	short loc_4E3349
; ---------------------------------------------------------------------------

loc_4E3335:				; CODE XREF: .text:004E332Dj
		add	edi, ecx
		cmp	byte ptr [edi],	35h
		jl	short loc_4E3349

loc_4E333C:				; CODE XREF: .text:004E3347j
		dec	edi
		inc	byte ptr [edi]
		cmp	byte ptr [edi],	39h
		jle	short loc_4E3349
		mov	byte ptr [edi],	30h
		jmp	short loc_4E333C
; ---------------------------------------------------------------------------

loc_4E3349:				; CODE XREF: .text:004E3333j
					; .text:004E333Aj ...
		add	esp, 0Ah
		pop	edi
		retn
; ---------------------------------------------------------------------------

loc_4E334E:				; CODE XREF: .text:004E316Bp
					; .text:004E322Ap
		push	ebx
		sub	esp, 0Ch
		xor	ebx, ebx

loc_4E3354:				; CODE XREF: .text:004E337Cj
		fld	st
		fstp	tbyte ptr [esp]
		mov	ax, [esp+8]
		test	ax, ax
		jz	short loc_4E3385

loc_4E3363:				; CODE XREF: .text:004E338Aj
					; .text:004E3390j
		sub	ax, 3FFFh
		mov	dx, 4D10h
		imul	dx
		movsx	eax, dx
		neg	eax
		jz	short loc_4E337E
		sub	ebx, eax
		call	@System@@Pow10$qqrv ; System::__linkproc__ Pow10(void)
		jmp	short loc_4E3354
; ---------------------------------------------------------------------------

loc_4E337E:				; CODE XREF: .text:004E3373j
					; .text:004E3392j
		add	esp, 0Ch
		mov	eax, ebx
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4E3385:				; CODE XREF: .text:004E3361j
		cmp	dword ptr [esp+4], 0
		jnz	short loc_4E3363
		cmp	dword ptr [esp], 0
		jnz	short loc_4E3363
		jmp	short loc_4E337E
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ Pow10(void)
@System@@Pow10$qqrv:			; CODE XREF: .text:004DFA54p
					; .text:loc_4DFC4Dp ...
		test	eax, eax
		jl	short loc_4E33E0
		jz	short locret_4E33DF
		cmp	eax, 1400h
		jge	loc_4E3424
		mov	edx, eax
		and	edx, 1Fh
		lea	edx, [edx+edx*4]
		fld	ds:tbyte_4E3438[edx*2]
		fmulp	st(1), st
		shr	eax, 5
		jz	short locret_4E33DF
		mov	edx, eax
		and	edx, 0Fh
		jz	short loc_4E33CE
		lea	edx, [edx+edx*4]
		fld	ds:tbyte_4E356E[edx*2]
		fmulp	st(1), st

loc_4E33CE:				; CODE XREF: .text:004E33C0j
		shr	eax, 4
		jz	short locret_4E33DF
		lea	eax, [eax+eax*4]
		fld	ds:tbyte_4E3604[eax*2]
		fmulp	st(1), st

locret_4E33DF:				; CODE XREF: .text:004E3398j
					; .text:004E33B9j ...
		retn
; ---------------------------------------------------------------------------

loc_4E33E0:				; CODE XREF: .text:004E3396j
		neg	eax
		cmp	eax, 1400h
		jge	short loc_4E342B
		mov	edx, eax
		and	edx, 1Fh
		lea	edx, [edx+edx*4]
		fld	ds:tbyte_4E3438[edx*2]
		fdivp	st(1), st
		shr	eax, 5
		jz	short locret_4E33DF
		mov	edx, eax
		and	edx, 0Fh
		jz	short loc_4E3412
		lea	edx, [edx+edx*4]
		fld	ds:tbyte_4E356E[edx*2]
		fdivp	st(1), st

loc_4E3412:				; CODE XREF: .text:004E3404j
		shr	eax, 4
		jz	short locret_4E33DF
		lea	eax, [eax+eax*4]
		fld	ds:tbyte_4E3604[eax*2]
		fdivp	st(1), st
		retn
; ---------------------------------------------------------------------------

loc_4E3424:				; CODE XREF: .text:004E339Fj
		fld	ds:tbyte_4E342E
		retn
; ---------------------------------------------------------------------------

loc_4E342B:				; CODE XREF: .text:004E33E7j
		fldz
		retn
; ---------------------------------------------------------------------------
tbyte_4E342E	 T_Tbyte <0, 80000000h, 7FFFh>;dt 1.1897314953572317651e4932 ;	DATA XREF: .text:loc_4E3424r
tbyte_4E3438	 T_Tbyte <0, 80000000h, 3FFFh>;dt 1.0			; DATA XREF: .text:004E33ADr
                 T_Tbyte <0, 0A0000000h, 4002h>; 0
                 T_Tbyte <0, 0C8000000h, 4005h>; 0
                 T_Tbyte <0, 0FA000000h, 4008h>; 0
                 T_Tbyte <0, 9C400000h, 400Ch>; 0
                 T_Tbyte <0, 0C3500000h, 400Fh>; 0
                 T_Tbyte <0, 0F4240000h, 4012h>; 0
                 T_Tbyte <0, 98968000h, 4016h>; 0
                 T_Tbyte <0, 0BEBC2000h, 4019h>; 0
                 T_Tbyte <0, 0EE6B2800h, 401Ch>; 0
                 T_Tbyte <0, 9502F900h, 4020h>; 0
                 T_Tbyte <0, 0BA43B740h, 4023h>; 0
                 T_Tbyte <0, 0E8D4A510h, 4026h>; 0
                 T_Tbyte <0, 9184E72Ah, 402Ah>; 0
                 T_Tbyte <80000000h, 0B5E620F4h, 402Dh>; 0
                 T_Tbyte <0A0000000h, 0E35FA931h, 4030h>; 0
                 T_Tbyte <4000000h, 8E1BC9BFh, 4034h>; 0
                 T_Tbyte <0C5000000h, 0B1A2BC2Eh, 4037h>; 0
                 T_Tbyte <76400000h, 0DE0B6B3Ah, 403Ah>; 0
                 T_Tbyte <89E80000h, 8AC72304h, 403Eh>; 0
                 T_Tbyte <0AC620000h, 0AD78EBC5h, 4041h>; 0
                 T_Tbyte <177A8000h, 0D8D726B7h, 4044h>; 0
                 T_Tbyte <6EAC9000h, 87867832h, 4048h>; 0
                 T_Tbyte <0A57B400h, 0A968163Fh, 404Bh>; 0
                 T_Tbyte <0CCEDA100h, 0D3C21BCEh, 404Eh>; 0
                 T_Tbyte <401484A0h, 84595161h, 4052h>; 0
                 T_Tbyte <9019A5C8h, 0A56FA5B9h, 4055h>; 0
                 T_Tbyte <0F4200F3Ah, 0CECB8F27h, 4058h>; 0
                 T_Tbyte <0F8940984h, 813F3978h, 405Ch>; 0
                 T_Tbyte <36B90BE5h, 0A18F07D7h, 405Fh>; 0
                 T_Tbyte <4674EDFh, 0C9F2C9CDh, 4062h>; 0
tbyte_4E356E label tbyte
				 T_Tbyte <45812296h, 0FC6F7C40h, 4065h>;dt 9.9999999999999999998e30 ; DATA XREF: 
                 T_Tbyte <2B70B59Eh, 9DC5ADA8h, 4069h>; 0
                 T_Tbyte <0FFCFA6D5h, 0C2781F49h, 40D3h>; 0
                 T_Tbyte <0C59B14A3h, 0EFB3AB16h, 413Dh>; 0
                 T_Tbyte <80E98CE0h, 93BA47C9h, 41A8h>; 0
                 T_Tbyte <7FE617AAh, 0B616A12Bh, 4212h>; 0
                 T_Tbyte <3927556Bh, 0E070F78Dh, 427Ch>; 0
                 T_Tbyte <0E33CC930h, 8A5296FFh, 42E7h>; 0
                 T_Tbyte <9DF9DE8Eh, 0AA7EEBFBh, 4351h>; 0
                 T_Tbyte <5C6A2F8Ch, 0D226FC19h, 43BBh>; 0
                 T_Tbyte <0F2CCE376h, 81842F29h, 4426h>; 0
                 T_Tbyte <0DB900AD2h, 9FA42700h, 4490h>; 0
                 T_Tbyte <0AEF8AA17h, 0C4C5E310h, 44FAh>; 0
                 T_Tbyte <0E9B09C59h, 0F28A9C07h, 4564h>; 0
                 T_Tbyte <0EBF7F3D4h, 957A4AE1h, 45CFh>; 0
tbyte_4E3604 label tbyte
				 T_Tbyte <795A262h, 0B83ED8DCh, 4639h>;
                 T_Tbyte <0A60E91C7h, 0E319A0AEh, 46A3h>; 0
                 T_Tbyte <81750C17h, 0C9767586h, 4D48h>; 0
                 T_Tbyte <3993A7E4h, 0B2B8353Bh, 53EDh>; 0
                 T_Tbyte <0C53D5DE5h, 9E8B3B5Dh, 5A92h>; 0
                 T_Tbyte <20A1F0A6h, 8CA554C0h, 6137h>; 0
                 T_Tbyte <0D88B5A8Bh, 0F9895D25h, 67DBh>; 0
                 T_Tbyte <0BF27F3F8h, 0DD5DC8A2h, 6E80h>; 0
                 T_Tbyte <8A20979Bh, 0C4605202h, 7525h>; 0
                 T_Tbyte <6ED559F0h, 0AE351162h, 7BCAh>; 0
comment #
 tbyte_4E342E    dt  1.1897314953572317651e4932; 0
 tbyte_4E3438    dt  1.0                 ; 0 ;
                 dt  10.0                ; 0
                 dt  100.0               ; 0
                 dt  1000.0              ; 0
                 dt  10000.0             ; 0
                 dt  100000.0            ; 0
                 dt  1000000.0           ; 0
                 dt  1.0e7               ; 0
                 dt  1.0e8               ; 0
                 dt  1.0e9               ; 0
                 dt  1.0e10              ; 0
                 dt  1.0e11              ; 0
                 dt  1.0e12              ; 0
                 dt  1.0e13              ; 0
                 dt  1.0e14              ; 0
                 dt  1.0e15              ; 0
                 dt  1.0e16              ; 0
                 dt  1.0e17              ; 0
                 dt  1.0e18              ; 0
                 dt  1.0e19              ; 0
                 dt  1.0e20              ; 0
                 dt  1.0e21              ; 0
                 dt  1.0e22              ; 0
                 dt  1.0e23              ; 0
                 dt  1.0e24              ; 0
                 dt  1.0e25              ; 0
                 dt  1.0e26              ; 0
                 dt  1.0e27              ; 0
                 dt  9.9999999999999999997e27; 0
                 dt  9.9999999999999999997e28; 0
                 dt  1.0e30              ; 0
 tbyte_4E356E    dt  9.9999999999999999998e30; 0 ; 
                 dt  1.0e32              ; 0
                 dt  9.9999999999999999998e63; 0
                 dt  1.0e96              ; 0
                 dt  1.0e128             ; 0
                 dt  9.9999999999999999997e159; 0
                 dt  1.0e192             ; 0
                 dt  1.0e224             ; 0
                 dt  1.0e256             ; 0
                 dt  9.9999999999999999997e287; 0
                 dt  1.0e320             ; 0
                 dt  9.9999999999999999997e351; 0
                 dt  1.0e384             ; 0
                 dt  1.0e416             ; 0
                 dt  1.0e448             ; 0
 tbyte_4E3604    dt  9.9999999999999999996e479; 0 ;
                 dt  1.0e512             ; 0
                 dt  9.9999999999999999997e1023; 0
                 dt  9.9999999999999999998e1535; 0
                 dt  1.0e2048            ; 0
                 dt  9.9999999999999999996e2559; 0
                 dt  1.0e3072            ; 0
                 dt  1.0e3584            ; 0
                 dt  1.0e4096            ; 0
                 dt  9.9999999999999999996e4607; 0

;#
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ _llmul(void)
@System@@_llmul$qqrv:			; CODE XREF: .text:004E07DBp
					; .text:004E07F5p
		push	edx
		push	eax
		mov	eax, [esp+10h]
		mul	dword ptr [esp]
		mov	ecx, eax
		mov	eax, [esp+4]
		mul	dword ptr [esp+0Ch]
		add	ecx, eax
		mov	eax, [esp]
		mul	dword ptr [esp+0Ch]
		add	edx, ecx
		pop	ecx
		pop	ecx
		retn	8
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ _llmulo(void)
@System@@_llmulo$qqrv:
		push	edx
		push	eax
		mov	eax, [esp+10h]
		mul	dword ptr [esp]
		mov	ecx, eax
		mov	eax, [esp+4]
		mul	dword ptr [esp+0Ch]
		add	ecx, eax
		mov	eax, [esp]
		mul	dword ptr [esp+0Ch]
		add	edx, ecx
		pop	ecx
		pop	ecx
		retn	8
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ _lldiv(void)
@System@@_lldiv$qqrv:			; CODE XREF: .text:004E374Ep
		push	ebp
		push	ebx
		push	esi
		push	edi
		xor	edi, edi
		mov	ebx, [esp+14h]
		mov	ecx, [esp+18h]
		or	ecx, ecx
		jnz	short loc_4E36C8
		or	edx, edx
		jz	short loc_4E3720
		or	ebx, ebx
		jz	short loc_4E3720

loc_4E36C8:				; CODE XREF: .text:004E36BEj
		or	edx, edx
		jns	short loc_4E36D6
		neg	edx
		neg	eax
		sbb	edx, 0
		or	edi, 1

loc_4E36D6:				; CODE XREF: .text:004E36CAj
		or	ecx, ecx
		jns	short loc_4E36E4
		neg	ecx
		neg	ebx
		sbb	ecx, 0
		xor	edi, 1

loc_4E36E4:				; CODE XREF: .text:004E36D8j
		mov	ebp, ecx
		mov	ecx, 40h
		push	edi
		xor	edi, edi
		xor	esi, esi

loc_4E36F0:				; CODE XREF: .text:loc_4E3707j
		shl	eax, 1
		rcl	edx, 1
		rcl	esi, 1
		rcl	edi, 1
		cmp	edi, ebp
		jb	short loc_4E3707
		ja	short loc_4E3702
		cmp	esi, ebx
		jb	short loc_4E3707

loc_4E3702:				; CODE XREF: .text:004E36FCj
		sub	esi, ebx
		sbb	edi, ebp
		inc	eax

loc_4E3707:				; CODE XREF: .text:004E36FAj
					; .text:004E3700j
		loop	loc_4E36F0
		pop	ebx
		test	ebx, 1
		jz	short loc_4E3719
		neg	edx
		neg	eax
		sbb	edx, 0

loc_4E3719:				; CODE XREF: .text:004E3710j
					; .text:004E3724j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_4E3720:				; CODE XREF: .text:004E36C2j
					; .text:004E36C6j
		div	ebx
		xor	edx, edx
		jmp	short loc_4E3719
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ _lldivo(void)
@System@@_lldivo$qqrv:
		push	esi
		mov	esi, [esp+0Ch]
		and	esi, [esp+8]
		cmp	esi, 0FFFFFFFFh
		jnz	short loc_4E3745
		mov	esi, eax
		or	esi, edx
		cmp	esi, 80000000h
		jnz	short loc_4E3745
		mov	eax, esi
		pop	esi
		dec	eax
		retn
; ---------------------------------------------------------------------------

loc_4E3745:				; CODE XREF: .text:004E3732j
					; .text:004E373Ej
		pop	esi
		push	dword ptr [esp+8]
		push	dword ptr [esp+8]
		call	@System@@_lldiv$qqrv ; System::__linkproc__ _lldiv(void)
		and	eax, eax
		retn	8
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ _lludiv(void)
@System@@_lludiv$qqrv:			; CODE XREF: .text:004E0B8Ep
		push	ebp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [esp+14h]
		mov	ecx, [esp+18h]
		or	ecx, ecx
		jnz	short loc_4E3770
		or	edx, edx
		jz	short loc_4E379B
		or	ebx, ebx
		jz	short loc_4E379B

loc_4E3770:				; CODE XREF: .text:004E3766j
		mov	ebp, ecx
		mov	ecx, 40h
		xor	edi, edi
		xor	esi, esi

loc_4E377B:				; CODE XREF: .text:loc_4E3792j
		shl	eax, 1
		rcl	edx, 1
		rcl	esi, 1
		rcl	edi, 1
		cmp	edi, ebp
		jb	short loc_4E3792
		ja	short loc_4E378D
		cmp	esi, ebx
		jb	short loc_4E3792

loc_4E378D:				; CODE XREF: .text:004E3787j
		sub	esi, ebx
		sbb	edi, ebp
		inc	eax

loc_4E3792:				; CODE XREF: .text:004E3785j
					; .text:004E378Bj
		loop	loc_4E377B

loc_4E3794:				; CODE XREF: .text:004E379Fj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_4E379B:				; CODE XREF: .text:004E376Aj
					; .text:004E376Ej
		div	ebx
		xor	edx, edx
		jmp	short loc_4E3794
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ _llmod(void)
@System@@_llmod$qqrv:			; CODE XREF: .text:004E3843p
		push	ebp
		push	ebx
		push	esi
		push	edi
		xor	edi, edi
		mov	ebx, [esp+14h]
		mov	ecx, [esp+18h]
		or	ecx, ecx
		jnz	short loc_4E37BB
		or	edx, edx
		jz	short loc_4E3814
		or	ebx, ebx
		jz	short loc_4E3814

loc_4E37BB:				; CODE XREF: .text:004E37B1j
		or	edx, edx
		jns	short loc_4E37C9
		neg	edx
		neg	eax
		sbb	edx, 0
		or	edi, 1

loc_4E37C9:				; CODE XREF: .text:004E37BDj
		or	ecx, ecx
		jns	short loc_4E37D4
		neg	ecx
		neg	ebx
		sbb	ecx, 0

loc_4E37D4:				; CODE XREF: .text:004E37CBj
		mov	ebp, ecx
		mov	ecx, 40h
		push	edi
		xor	edi, edi
		xor	esi, esi

loc_4E37E0:				; CODE XREF: .text:loc_4E37F7j
		shl	eax, 1
		rcl	edx, 1
		rcl	esi, 1
		rcl	edi, 1
		cmp	edi, ebp
		jb	short loc_4E37F7
		ja	short loc_4E37F2
		cmp	esi, ebx
		jb	short loc_4E37F7

loc_4E37F2:				; CODE XREF: .text:004E37ECj
		sub	esi, ebx
		sbb	edi, ebp
		inc	eax

loc_4E37F7:				; CODE XREF: .text:004E37EAj
					; .text:004E37F0j
		loop	loc_4E37E0
		mov	eax, esi
		mov	edx, edi
		pop	ebx
		test	ebx, 1
		jz	short loc_4E380D
		neg	edx
		neg	eax
		sbb	edx, 0

loc_4E380D:				; CODE XREF: .text:004E3804j
					; .text:004E3819j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_4E3814:				; CODE XREF: .text:004E37B5j
					; .text:004E37B9j
		div	ebx
		xchg	eax, edx
		xor	edx, edx
		jmp	short loc_4E380D
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ _llmodo(void)
@System@@_llmodo$qqrv:
		push	esi
		mov	esi, [esp+0Ch]
		and	esi, [esp+8]
		cmp	esi, 0FFFFFFFFh
		jnz	short loc_4E383A
		mov	esi, eax
		or	esi, edx
		cmp	esi, 80000000h
		jnz	short loc_4E383A
		mov	eax, esi
		pop	esi
		dec	eax
		retn
; ---------------------------------------------------------------------------

loc_4E383A:				; CODE XREF: .text:004E3827j
					; .text:004E3833j
		pop	esi
		push	dword ptr [esp+8]
		push	dword ptr [esp+8]
		call	@System@@_llmod$qqrv ; System::__linkproc__ _llmod(void)
		and	eax, eax
		retn	8
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ _llumod(void)
@System@@_llumod$qqrv:			; CODE XREF: .text:004E0B70p
		push	ebp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [esp+14h]
		mov	ecx, [esp+18h]
		or	ecx, ecx
		jnz	short loc_4E3865
		or	edx, edx
		jz	short loc_4E3894
		or	ebx, ebx
		jz	short loc_4E3894

loc_4E3865:				; CODE XREF: .text:004E385Bj
		mov	ebp, ecx
		mov	ecx, 40h
		xor	edi, edi
		xor	esi, esi

loc_4E3870:				; CODE XREF: .text:loc_4E3887j
		shl	eax, 1
		rcl	edx, 1
		rcl	esi, 1
		rcl	edi, 1
		cmp	edi, ebp
		jb	short loc_4E3887
		ja	short loc_4E3882
		cmp	esi, ebx
		jb	short loc_4E3887

loc_4E3882:				; CODE XREF: .text:004E387Cj
		sub	esi, ebx
		sbb	edi, ebp
		inc	eax

loc_4E3887:				; CODE XREF: .text:004E387Aj
					; .text:004E3880j
		loop	loc_4E3870
		mov	eax, esi
		mov	edx, edi

loc_4E388D:				; CODE XREF: .text:004E3899j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_4E3894:				; CODE XREF: .text:004E385Fj
					; .text:004E3863j
		div	ebx
		xchg	eax, edx
		xor	edx, edx
		jmp	short loc_4E388D
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ _llshl(void)
@System@@_llshl$qqrv:
		cmp	cl, 20h
		jl	short loc_4E38B1
		cmp	cl, 40h
		jl	short loc_4E38AA
		xor	edx, edx
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_4E38AA:				; CODE XREF: .text:004E38A3j
		mov	edx, eax
		shl	edx, cl
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_4E38B1:				; CODE XREF: .text:004E389Ej
		shld	edx, eax, cl
		shl	eax, cl
		retn
; ---------------------------------------------------------------------------
		cmp	cl, 20h
		jl	short loc_4E38CD
		cmp	cl, 40h
		jl	short loc_4E38C7
		sar	edx, 1Fh
		mov	eax, edx
		retn
; ---------------------------------------------------------------------------

loc_4E38C7:				; CODE XREF: .text:004E38BFj
		mov	eax, edx
		cdq
		sar	eax, cl
		retn
; ---------------------------------------------------------------------------

loc_4E38CD:				; CODE XREF: .text:004E38BAj
		shrd	eax, edx, cl
		sar	edx, cl
		retn
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ _llushr(void)
@System@@_llushr$qqrv:
		cmp	cl, 20h
		jl	short loc_4E38E9
		cmp	cl, 40h
		jl	short loc_4E38E2
		xor	edx, edx
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_4E38E2:				; CODE XREF: .text:004E38DBj
		mov	eax, edx
		xor	edx, edx
		shr	eax, cl
		retn
; ---------------------------------------------------------------------------

loc_4E38E9:				; CODE XREF: .text:004E38D6j
		shrd	eax, edx, cl
		shr	edx, cl
		retn
; ---------------------------------------------------------------------------
		align 10h
; `__DPdsc__'[System::Char]
@$xp$11System@Char dd offset byte_4E38F4 ; DATA	XREF: .text:004DF2F6o
byte_4E38F4	db 2			; DATA XREF: .text:`__DPdsc__'[System::Char]o
					; Char
		db 4,'Char'
		db 1			; uchar	- min/max
		dd 0, 0FFh
		align 4
off_4E3904	dd offset _cls_System_TObject ;	DATA XREF: .text:004DFD14o
					; .text:004E39F0o
					; "TObject"
		dd 7 dup(0)
		dd offset _cls_System_TObject ;	"TObject"
unknown_libname_48 dd 4, 0		; Borland Visual Component Library & Packages
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset nullsub_7
		dd offset nullsub_8
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset unknown_libname_62 ; Borland Visual Component	Library	& Packages
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
_cls_System_TObject db 7,'TObject'      ; DATA XREF: .text:off_4E3904o
					; .text:004E3924o ...
; `__DPdsc__'[System::TObject]
@$xp$14System@TObject dd offset	byte_4E395C ; DATA XREF: .text:004DF3C3o
					; .text:004E2913o
byte_4E395C	db 7			; DATA XREF: .text:`__DPdsc__'[System::TObject]o
					; Class
		db 7,'TObject'
		dd offset _cls_System_TObject ;	"TObject"
		dd 0
		dw 0
		db 6,'System'
		dw 0			; PropCount
; System::_16419
@System@_16419	db 0CCh
; ---------------------------------------------------------------------------

loc_4E3979:				; DATA XREF: .text:off_4E399Ao
		add	dword ptr [esp+4], 0FFFFFFF8h
		jmp	unknown_libname_89 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------

loc_4E3983:				; DATA XREF: .text:004E399Eo
		add	dword ptr [esp+4], 0FFFFFFF8h
		jmp	@Corbaobj@TCorbaImplementation@ObjAddRef$qqsv ;	Corbaobj::TCorbaImplementation::ObjAddRef(void)
; ---------------------------------------------------------------------------

loc_4E398D:				; DATA XREF: .text:004E39A2o
		add	dword ptr [esp+4], 0FFFFFFF8h
		jmp	unknown_libname_90 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		db 3 dup(0CCh)
off_4E399A	dd offset loc_4E3979	; DATA XREF: .text:004E39BAo
		dd offset loc_4E3983
		dd offset loc_4E398D
word_4E39A6	dw 1			; DATA XREF: .text:004E39CCo
		dd 2 dup(0)
		dd 0C00000h, 0
		db 0, 46h
		dd offset off_4E399A
		db 8			; Method
		db 0
		db 0			; Procedure
		db 0
		align 8
		dd offset _cls_System_TInterfacedObject	; "TInterfacedObject"
		dd offset word_4E39A6
		dd 6 dup(0)
		dd offset _cls_System_TInterfacedObject	; "TInterfacedObject"
		dd 0Ch
		dd offset off_4E3904
		dd offset @System@TObject@SafeCallException$qqrp14System@TObjectpv ; System::TObject::SafeCallException(System::TObject	*,void *)
		dd offset loc_4E68C0
		dd offset @System@TInterfacedObject@BeforeDestruction$qqrv ; System::TInterfacedObject::BeforeDestruction(void)
		dd offset @System@TObject@Dispatch$qqrpv ; System::TObject::Dispatch(void *)
		dd offset nullsub_9
		dd offset @System@TInterfacedObject@NewInstance$qqrp17System@TMetaClass	; System::TInterfacedObject::NewInstance(System::TMetaClass *)
		dd offset @System@TObject@FreeInstance$qqrv ; System::TObject::FreeInstance(void)
		dd offset loc_4E5148
_cls_System_TInterfacedObject db 17,'TInterfacedObject' ; DATA XREF: .text:004E290Fo
					; .text:004E39C8o ...
		align 4

; System::_16453
@System@_16453:				; CODE XREF: .text:004E6B2Ep
		push	ebx
		add	esp, 0FFFFFFBCh
		mov	ebx, 0Ah
		push	esp		; lpStartupInfo
		call	GetStartupInfoA
		test	byte ptr [esp+2Ch], 1
		jz	short loc_4E3A43
		movzx	ebx, word ptr [esp+30h]

loc_4E3A43:				; CODE XREF: .text:004E3A3Cj
		mov	eax, ebx
		add	esp, 44h
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; System::_16422
@System@_16422:				; CODE XREF: .text:004E3AAAp
		push	ebx
		push	esi
		mov	esi, offset dword_61B53C
		cmp	dword ptr [esi], 0
		jnz	short loc_4E3A92
		push	644h		; uBytes
		push	0		; uFlags
		call	LocalAlloc
		mov	ecx, eax
		test	ecx, ecx
		jnz	short loc_4E3A6F
		xor	eax, eax
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4E3A6F:				; CODE XREF: .text:004E3A68j
		mov	eax, dword_61B538
		mov	[ecx], eax
		mov	dword_61B538, ecx
		xor	edx, edx

loc_4E3A7E:				; CODE XREF: .text:004E3A90j
		mov	eax, edx
		add	eax, eax
		lea	eax, [ecx+eax*8+4]
		mov	ebx, [esi]
		mov	[eax], ebx
		mov	[esi], eax
		inc	edx
		cmp	edx, 64h
		jnz	short loc_4E3A7E

loc_4E3A92:				; CODE XREF: .text:004E3A56j
		mov	eax, [esi]
		mov	edx, [eax]
		mov	[esi], edx
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; System::_16423
@System@_16423:				; CODE XREF: .text:004E410Bp
					; .text:004E4115p ...
		mov	[eax], eax
		mov	[eax+4], eax
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E3AA4:				; CODE XREF: .text:004E3B4Ap
					; .text:004E3BCFp ...
		push	ebx
		push	esi
		mov	esi, edx
		mov	ebx, eax
		call	@System@_16422	; System::_16422
		test	eax, eax
		jnz	short loc_4E3AB8
		xor	eax, eax
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4E3AB8:				; CODE XREF: .text:004E3AB1j
		mov	edx, [esi]
		mov	[eax+8], edx
		mov	edx, [esi+4]
		mov	[eax+0Ch], edx
		mov	edx, [ebx]
		mov	[eax], edx
		mov	[eax+4], ebx
		mov	[edx+4], eax
		mov	[ebx], eax
		mov	al, 1
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

; System::_16425
@System@_16425:				; CODE XREF: .text:004E3B18p
					; .text:004E3B35p ...
		mov	edx, [eax+4]
		mov	ecx, [eax]
		mov	[edx], ecx
		mov	[ecx+4], edx
		mov	edx, dword_61B53C
		mov	[eax], edx
		mov	dword_61B53C, eax
		retn
; ---------------------------------------------------------------------------

; System::_16426
@System@_16426:				; CODE XREF: .text:004E3F04p
					; .text:004E3F8Ap ...
		push	ebx
		push	esi
		push	edi
		push	ebp
		push	ecx
		mov	esi, ecx
		mov	[esp], edx
		mov	ebp, eax
		mov	ebx, [ebp+0]
		mov	eax, [esp]
		mov	edx, [eax]
		mov	[esi], edx
		mov	edx, [eax+4]
		mov	[esi+4], edx

loc_4E3B08:				; CODE XREF: .text:004E3B44j
		mov	edi, [ebx]
		mov	eax, [ebx+8]
		mov	edx, eax
		add	edx, [ebx+0Ch]
		cmp	edx, [esi]
		jnz	short loc_4E3B2A
		mov	eax, ebx
		call	@System@_16425	; System::_16425
		mov	eax, [ebx+8]
		mov	[esi], eax
		mov	eax, [ebx+0Ch]
		add	[esi+4], eax
		jmp	short loc_4E3B40
; ---------------------------------------------------------------------------

loc_4E3B2A:				; CODE XREF: .text:004E3B14j
		mov	edx, [esi]
		add	edx, [esi+4]
		cmp	eax, edx
		jnz	short loc_4E3B40
		mov	eax, ebx
		call	@System@_16425	; System::_16425
		mov	eax, [ebx+0Ch]
		add	[esi+4], eax

loc_4E3B40:				; CODE XREF: .text:004E3B28j
					; .text:004E3B31j
		mov	ebx, edi
		cmp	ebp, ebx
		jnz	short loc_4E3B08
		mov	edx, esi
		mov	eax, ebp
		call	loc_4E3AA4
		test	al, al
		jnz	short loc_4E3B57
		xor	eax, eax
		mov	[esi], eax

loc_4E3B57:				; CODE XREF: .text:004E3B51j
		pop	edx
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 10h

; System::_16427
@System@_16427:				; CODE XREF: .text:004E40C6p
					; .text:004E44BEp
		push	ebx
		push	esi
		push	edi
		push	ebp
		add	esp, 0FFFFFFF8h
		mov	ebx, eax
		mov	edi, ebx

loc_4E3B6B:				; CODE XREF: .text:004E3BE4j
		mov	esi, [edx]
		mov	eax, [ebx+8]
		cmp	esi, eax
		jb	short loc_4E3BE0
		mov	ecx, esi
		add	ecx, [edx+4]
		mov	ebp, eax
		add	ebp, [ebx+0Ch]
		cmp	ecx, ebp
		ja	short loc_4E3BE0
		cmp	esi, eax
		jnz	short loc_4E3BA1
		mov	eax, [edx+4]
		add	[ebx+8], eax
		mov	eax, [edx+4]
		sub	[ebx+0Ch], eax
		cmp	dword ptr [ebx+0Ch], 0
		jnz	short loc_4E3BDC
		mov	eax, ebx
		call	@System@_16425	; System::_16425
		jmp	short loc_4E3BDC
; ---------------------------------------------------------------------------

loc_4E3BA1:				; CODE XREF: .text:004E3B84j
		mov	ecx, [edx]
		mov	esi, [edx+4]
		add	ecx, esi
		mov	edi, eax
		add	edi, [ebx+0Ch]
		cmp	ecx, edi
		jnz	short loc_4E3BB6
		sub	[ebx+0Ch], esi
		jmp	short loc_4E3BDC
; ---------------------------------------------------------------------------

loc_4E3BB6:				; CODE XREF: .text:004E3BAFj
		mov	ecx, [edx]
		add	ecx, [edx+4]
		mov	[esp], ecx
		sub	edi, ecx
		mov	[esp+4], edi
		mov	edx, [edx]
		sub	edx, eax
		mov	[ebx+0Ch], edx
		mov	edx, esp
		mov	eax, ebx
		call	loc_4E3AA4
		test	al, al
		jnz	short loc_4E3BDC
		xor	eax, eax
		jmp	short loc_4E3BE8
; ---------------------------------------------------------------------------

loc_4E3BDC:				; CODE XREF: .text:004E3B96j
					; .text:004E3B9Fj ...
		mov	al, 1
		jmp	short loc_4E3BE8
; ---------------------------------------------------------------------------

loc_4E3BE0:				; CODE XREF: .text:004E3B72j
					; .text:004E3B80j
		mov	ebx, [ebx]
		cmp	edi, ebx
		jnz	short loc_4E3B6B
		xor	eax, eax

loc_4E3BE8:				; CODE XREF: .text:004E3BDAj
					; .text:004E3BDEj
		pop	ecx
		pop	edx
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4E3BF0:				; CODE XREF: .text:004E3EF4p
		push	ebx
		push	esi
		push	edi
		mov	ebx, edx
		mov	esi, eax
		cmp	esi, 100000h
		jge	short loc_4E3C06
		mov	esi, 100000h
		jmp	short loc_4E3C12
; ---------------------------------------------------------------------------

loc_4E3C06:				; CODE XREF: .text:004E3BFDj
		add	esi, 0FFFFh
		and	esi, 0FFFF0000h

loc_4E3C12:				; CODE XREF: .text:004E3C04j
		mov	[ebx+4], esi
		push	1		; flProtect
		push	2000h		; flAllocationType
		push	esi		; dwSize
		push	0		; lpAddress
		call	VirtualAlloc
		mov	edi, eax
		mov	[ebx], edi
		test	edi, edi
		jz	short loc_4E3C4F
		mov	edx, ebx
		mov	eax, offset dword_61B540
		call	loc_4E3AA4
		test	al, al
		jnz	short loc_4E3C4F
		push	8000h		; dwFreeType
		push	0		; dwSize
		mov	eax, [ebx]
		push	eax		; lpAddress
		call	VirtualFree
		xor	eax, eax
		mov	[ebx], eax

loc_4E3C4F:				; CODE XREF: .text:004E3C2Aj
					; .text:004E3C3Aj
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; int __fastcall loc_4E3C54(LPVOID lpAddress)
loc_4E3C54:				; CODE XREF: .text:004E3F74p
					; .text:004E3FBBp
		push	ebx
		push	esi
		push	edi
		push	ebp
		mov	ebx, ecx
		mov	esi, edx
		mov	ebp, eax
		mov	dword ptr [ebx+4], 100000h
		push	4		; flProtect
		push	2000h		; flAllocationType
		push	100000h		; dwSize
		push	ebp		; lpAddress
		call	VirtualAlloc
		mov	edi, eax
		mov	[ebx], edi
		test	edi, edi
		jnz	short loc_4E3C9E
		add	esi, 0FFFFh
		and	esi, 0FFFF0000h
		mov	[ebx+4], esi
		push	4		; flProtect
		push	2000h		; flAllocationType
		push	esi		; dwSize
		push	ebp		; lpAddress
		call	VirtualAlloc
		mov	[ebx], eax

loc_4E3C9E:				; CODE XREF: .text:004E3C7Dj
		cmp	dword ptr [ebx], 0
		jz	short loc_4E3CC6
		mov	edx, ebx
		mov	eax, offset dword_61B540
		call	loc_4E3AA4
		test	al, al
		jnz	short loc_4E3CC6
		push	8000h		; dwFreeType
		push	0		; dwSize
		mov	eax, [ebx]
		push	eax		; lpAddress
		call	VirtualFree
		xor	eax, eax
		mov	[ebx], eax

loc_4E3CC6:				; CODE XREF: .text:004E3CA1j
					; .text:004E3CB1j
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; System::_16430
@System@_16430:				; CODE XREF: .text:004E3F16p
					; .text:004E3FA2p ...
		push	ebx
		push	esi
		push	edi
		push	ebp
		add	esp, 0FFFFFFECh
		mov	[esp+4], ecx
		mov	[esp], edx
		mov	dword ptr [esp+8], 0FFFFFFFFh
		xor	edx, edx
		mov	[esp+0Ch], edx
		mov	ebp, eax
		mov	eax, [esp]
		add	eax, ebp
		mov	[esp+10h], eax
		mov	ebx, dword_61B540
		jmp	short loc_4E3D4C
; ---------------------------------------------------------------------------

loc_4E3CFB:				; CODE XREF: .text:004E3D52j
		mov	edi, [ebx]
		mov	esi, [ebx+8]
		cmp	ebp, esi
		ja	short loc_4E3D4A
		mov	eax, esi
		add	eax, [ebx+0Ch]
		cmp	eax, [esp+10h]
		ja	short loc_4E3D4A
		cmp	esi, [esp+8]
		jnb	short loc_4E3D19
		mov	[esp+8], esi

loc_4E3D19:				; CODE XREF: .text:004E3D13j
		mov	eax, esi
		add	eax, [ebx+0Ch]
		cmp	eax, [esp+0Ch]
		jbe	short loc_4E3D28
		mov	[esp+0Ch], eax

loc_4E3D28:				; CODE XREF: .text:004E3D22j
		push	8000h		; dwFreeType
		push	0		; dwSize
		push	esi		; lpAddress
		call	VirtualFree
		test	eax, eax
		jnz	short loc_4E3D43
		mov	dword_61B51C, 1

loc_4E3D43:				; CODE XREF: .text:004E3D37j
		mov	eax, ebx
		call	@System@_16425	; System::_16425

loc_4E3D4A:				; CODE XREF: .text:004E3D02j
					; .text:004E3D0Dj
		mov	ebx, edi

loc_4E3D4C:				; CODE XREF: .text:004E3CF9j
		cmp	ebx, offset dword_61B540
		jnz	short loc_4E3CFB
		mov	eax, [esp+4]
		xor	edx, edx
		mov	[eax], edx
		cmp	dword ptr [esp+0Ch], 0
		jz	short loc_4E3D7C
		mov	eax, [esp+4]
		mov	edx, [esp+8]
		mov	[eax], edx
		mov	eax, [esp+0Ch]
		sub	eax, [esp+8]
		mov	edx, [esp+4]
		mov	[edx+4], eax

loc_4E3D7C:				; CODE XREF: .text:004E3D61j
		add	esp, 14h
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

; System::_16431
@System@_16431:				; CODE XREF: .text:004E3EC5p
					; .text:004E400Ep
		push	ebx
		push	esi
		push	edi
		push	ebp
		add	esp, 0FFFFFFF4h
		mov	[esp+4], ecx
		mov	[esp], edx
		mov	edx, eax
		mov	ebp, edx
		and	ebp, 0FFFFF000h
		add	edx, [esp]
		add	edx, 0FFFh
		and	edx, 0FFFFF000h
		mov	[esp+8], edx
		mov	eax, [esp+4]
		mov	[eax], ebp
		mov	eax, [esp+8]
		sub	eax, ebp
		mov	edx, [esp+4]
		mov	[edx+4], eax
		mov	esi, dword_61B540
		jmp	short loc_4E3E06
; ---------------------------------------------------------------------------

loc_4E3DCA:				; CODE XREF: .text:004E3E0Cj
		mov	ebx, [esi+8]
		mov	edi, [esi+0Ch]
		add	edi, ebx
		cmp	ebp, ebx
		jbe	short loc_4E3DD8
		mov	ebx, ebp

loc_4E3DD8:				; CODE XREF: .text:004E3DD4j
		cmp	edi, [esp+8]
		jbe	short loc_4E3DE2
		mov	edi, [esp+8]

loc_4E3DE2:				; CODE XREF: .text:004E3DDCj
		cmp	edi, ebx
		jbe	short loc_4E3E04
		push	4		; flProtect
		push	1000h		; flAllocationType
		sub	edi, ebx
		push	edi		; dwSize
		push	ebx		; lpAddress
		call	VirtualAlloc
		test	eax, eax
		jnz	short loc_4E3E04
		mov	eax, [esp+4]
		xor	edx, edx
		mov	[eax], edx
		jmp	short loc_4E3E0E
; ---------------------------------------------------------------------------

loc_4E3E04:				; CODE XREF: .text:004E3DE4j
					; .text:004E3DF8j
		mov	esi, [esi]

loc_4E3E06:				; CODE XREF: .text:004E3DC8j
		cmp	esi, offset dword_61B540
		jnz	short loc_4E3DCA

loc_4E3E0E:				; CODE XREF: .text:004E3E02j
		add	esp, 0Ch
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; System::_16432
@System@_16432:				; CODE XREF: .text:004E407Ap
		push	ebx
		push	esi
		push	edi
		push	ebp
		push	ecx
		mov	ebx, eax
		mov	esi, ebx
		add	esi, 0FFFh
		and	esi, 0FFFFF000h
		mov	[esp], esi
		mov	ebp, ebx
		add	ebp, edx
		and	ebp, 0FFFFF000h
		mov	eax, [esp]
		mov	[ecx], eax
		mov	eax, ebp
		sub	eax, [esp]
		mov	[ecx+4], eax
		mov	esi, dword_61B540
		jmp	short loc_4E3E87
; ---------------------------------------------------------------------------

loc_4E3E4F:				; CODE XREF: .text:004E3E8Dj
		mov	ebx, [esi+8]
		mov	edi, [esi+0Ch]
		add	edi, ebx
		cmp	ebx, [esp]
		jnb	short loc_4E3E5F
		mov	ebx, [esp]

loc_4E3E5F:				; CODE XREF: .text:004E3E5Aj
		cmp	ebp, edi
		jnb	short loc_4E3E65
		mov	edi, ebp

loc_4E3E65:				; CODE XREF: .text:004E3E61j
		cmp	edi, ebx
		jbe	short loc_4E3E85
		push	4000h		; dwFreeType
		sub	edi, ebx
		push	edi		; dwSize
		push	ebx		; lpAddress
		call	VirtualFree
		test	eax, eax
		jnz	short loc_4E3E85
		mov	dword_61B51C, 2

loc_4E3E85:				; CODE XREF: .text:004E3E67j
					; .text:004E3E79j
		mov	esi, [esi]

loc_4E3E87:				; CODE XREF: .text:004E3E4Dj
		cmp	esi, offset dword_61B540
		jnz	short loc_4E3E4F
		pop	edx
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E3E98:				; CODE XREF: .text:004E4637p
		push	ebx
		push	esi
		push	edi
		push	ebp
		add	esp, 0FFFFFFF8h
		mov	esi, edx
		mov	edi, eax
		mov	ebp, offset byte_61B550
		add	edi, 3FFFh
		and	edi, 0FFFFC000h

loc_4E3EB4:				; CODE XREF: .text:004E3F0Dj
		mov	ebx, [ebp+0]
		jmp	short loc_4E3EEC
; ---------------------------------------------------------------------------

loc_4E3EB9:				; CODE XREF: .text:004E3EEEj
		cmp	edi, [ebx+0Ch]
		jg	short loc_4E3EEA
		mov	ecx, esi
		mov	edx, edi
		mov	eax, [ebx+8]
		call	@System@_16431	; System::_16431
		cmp	dword ptr [esi], 0
		jz	short loc_4E3F1F
		mov	eax, [esi+4]
		add	[ebx+8], eax
		mov	eax, [esi+4]
		sub	[ebx+0Ch], eax
		cmp	dword ptr [ebx+0Ch], 0
		jnz	short loc_4E3F1F
		mov	eax, ebx
		call	@System@_16425	; System::_16425
		jmp	short loc_4E3F1F
; ---------------------------------------------------------------------------

loc_4E3EEA:				; CODE XREF: .text:004E3EBCj
		mov	ebx, [ebx]

loc_4E3EEC:				; CODE XREF: .text:004E3EB7j
		cmp	ebx, ebp
		jnz	short loc_4E3EB9
		mov	edx, esi
		mov	eax, edi
		call	loc_4E3BF0
		cmp	dword ptr [esi], 0
		jz	short loc_4E3F1F
		mov	ecx, esp
		mov	edx, esi
		mov	eax, ebp
		call	@System@_16426	; System::_16426
		cmp	dword ptr [esp], 0
		jnz	short loc_4E3EB4
		mov	ecx, esp
		mov	edx, [esi+4]
		mov	eax, [esi]
		call	@System@_16430	; System::_16430
		xor	eax, eax
		mov	[esi], eax

loc_4E3F1F:				; CODE XREF: .text:004E3ECDj
					; .text:004E3EDFj ...
		pop	ecx
		pop	edx
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; int __fastcall System::_16434(LPVOID lpAddress)
@System@_16434:				; CODE XREF: .text:004E4668p
		push	ebx
		push	esi
		push	edi
		push	ebp
		add	esp, 0FFFFFFECh
		mov	[esp], ecx
		mov	edi, edx
		mov	esi, eax
		mov	ebp, offset byte_61B550
		add	edi, 3FFFh
		and	edi, 0FFFFC000h

loc_4E3F47:				; CODE XREF: .text:004E3F94j
					; .text:004E3FDBj
		mov	ebx, [ebp+0]
		jmp	short loc_4E3F4E
; ---------------------------------------------------------------------------

loc_4E3F4C:				; CODE XREF: .text:004E3F55j
		mov	ebx, [ebx]

loc_4E3F4E:				; CODE XREF: .text:004E3F4Aj
		cmp	ebx, ebp
		jz	short loc_4E3F57
		cmp	esi, [ebx+8]
		jnz	short loc_4E3F4C

loc_4E3F57:				; CODE XREF: .text:004E3F50j
		cmp	esi, [ebx+8]
		jnz	short loc_4E3FB3
		cmp	edi, [ebx+0Ch]
		jle	loc_4E3FFB
		lea	ecx, [esp+4]
		mov	edx, edi
		sub	edx, [ebx+0Ch]
		mov	eax, [ebx+8]
		add	eax, [ebx+0Ch]	; lpAddress
		call	loc_4E3C54
		cmp	dword ptr [esp+4], 0
		jz	short loc_4E3FB3
		lea	ecx, [esp+0Ch]
		lea	edx, [esp+4]
		mov	eax, ebp
		call	@System@_16426	; System::_16426
		cmp	dword ptr [esp+0Ch], 0
		jnz	short loc_4E3F47
		lea	ecx, [esp+0Ch]
		mov	edx, [esp+8]
		mov	eax, [esp+4]
		call	@System@_16430	; System::_16430
		mov	eax, [esp]
		xor	edx, edx
		mov	[eax], edx
		jmp	loc_4E4043
; ---------------------------------------------------------------------------

loc_4E3FB3:				; CODE XREF: .text:004E3F5Aj
					; .text:004E3F7Ej
		lea	ecx, [esp+4]
		mov	edx, edi
		mov	eax, esi	; lpAddress
		call	loc_4E3C54
		cmp	dword ptr [esp+4], 0
		jz	short loc_4E3FFB
		lea	ecx, [esp+0Ch]
		lea	edx, [esp+4]
		mov	eax, ebp
		call	@System@_16426	; System::_16426
		cmp	dword ptr [esp+0Ch], 0
		jnz	loc_4E3F47
		lea	ecx, [esp+0Ch]
		mov	edx, [esp+8]
		mov	eax, [esp+4]
		call	@System@_16430	; System::_16430
		mov	eax, [esp]
		xor	edx, edx
		mov	[eax], edx
		jmp	short loc_4E4043
; ---------------------------------------------------------------------------

loc_4E3FFB:				; CODE XREF: .text:004E3F5Fj
					; .text:004E3FC5j
		mov	ebp, [ebx+8]
		cmp	esi, ebp
		jnz	short loc_4E403C
		cmp	edi, [ebx+0Ch]
		jg	short loc_4E403C
		mov	ecx, [esp]
		mov	edx, edi
		mov	eax, ebp
		call	@System@_16431	; System::_16431
		mov	eax, [esp]
		cmp	dword ptr [eax], 0
		jz	short loc_4E4043
		mov	eax, [esp]
		mov	eax, [eax+4]
		add	[ebx+8], eax
		mov	eax, [esp]
		mov	eax, [eax+4]
		sub	[ebx+0Ch], eax
		cmp	dword ptr [ebx+0Ch], 0
		jnz	short loc_4E4043
		mov	eax, ebx
		call	@System@_16425	; System::_16425
		jmp	short loc_4E4043
; ---------------------------------------------------------------------------

loc_4E403C:				; CODE XREF: .text:004E4000j
					; .text:004E4005j
		mov	eax, [esp]
		xor	edx, edx
		mov	[eax], edx

loc_4E4043:				; CODE XREF: .text:004E3FAEj
					; .text:004E3FF9j ...
		add	esp, 14h
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E404C:				; CODE XREF: .text:004E4474p
					; .text:004E4485p
		push	ebx
		push	esi
		push	edi
		add	esp, 0FFFFFFECh
		mov	edi, ecx
		mov	[esp], edx
		lea	ebx, [eax+3FFFh]
		and	ebx, 0FFFFC000h
		mov	esi, [esp]
		add	esi, eax
		and	esi, 0FFFFC000h
		cmp	ebx, esi
		jnb	short loc_4E40CD
		mov	ecx, edi
		mov	edx, esi
		sub	edx, ebx
		mov	eax, ebx
		call	@System@_16432	; System::_16432
		lea	ecx, [esp+4]
		mov	edx, edi
		mov	eax, offset byte_61B550
		call	@System@_16426	; System::_16426
		mov	ebx, [esp+4]
		test	ebx, ebx
		jz	short loc_4E40B6
		lea	ecx, [esp+0Ch]
		mov	edx, [esp+8]
		mov	eax, ebx
		call	@System@_16430	; System::_16430
		mov	eax, [esp+0Ch]
		mov	[esp+4], eax
		mov	eax, [esp+10h]
		mov	[esp+8], eax

loc_4E40B6:				; CODE XREF: .text:004E4095j
		cmp	dword ptr [esp+4], 0
		jz	short loc_4E40D1
		lea	edx, [esp+4]
		mov	eax, offset byte_61B550
		call	@System@_16427	; System::_16427
		jmp	short loc_4E40D1
; ---------------------------------------------------------------------------

loc_4E40CD:				; CODE XREF: .text:004E4070j
		xor	eax, eax
		mov	[edi], eax

loc_4E40D1:				; CODE XREF: .text:004E40BBj
					; .text:004E40CBj
		add	esp, 14h
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

; System::_16436
@System@_16436:				; CODE XREF: .text:004E47C0p
					; .text:004E494Dp ...
		push	ebp
		mov	ebp, esp
		xor	edx, edx
		push	ebp
		push	offset loc_4E418E
		push	dword ptr fs:[edx]
		mov	fs:[edx], esp
		push	offset CriticalSection ; lpCriticalSection
		call	InitializeCriticalSection
		cmp	byte_61B131, 0
		jz	short loc_4E4106
		push	offset CriticalSection ; lpCriticalSection
		call	EnterCriticalSection

loc_4E4106:				; CODE XREF: .text:004E40FAj
		mov	eax, offset dword_61B540
		call	@System@_16423	; System::_16423
		mov	eax, offset byte_61B550
		call	@System@_16423	; System::_16423
		mov	eax, offset dword_61B57C
		call	@System@_16423	; System::_16423
		push	0FF8h		; uBytes
		push	0		; uFlags
		call	LocalAlloc
		mov	hMem, eax
		cmp	hMem, 0
		jz	short loc_4E416D
		mov	eax, 3

loc_4E4143:				; CODE XREF: .text:004E4155j
		mov	edx, hMem
		xor	ecx, ecx
		mov	[edx+eax*4-0Ch], ecx
		inc	eax
		cmp	eax, 401h
		jnz	short loc_4E4143
		mov	eax, offset dword_61B560
		mov	[eax+4], eax
		mov	[eax], eax
		mov	dword_61B56C, eax
		mov	byte_61B518, 1

loc_4E416D:				; CODE XREF: .text:004E413Cj
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E4195

loc_4E417A:				; CODE XREF: .text:004E4193j
		cmp	byte_61B131, 0
		jz	short loc_4E418D
		push	offset CriticalSection ; lpCriticalSection
		call	LeaveCriticalSection

loc_4E418D:				; CODE XREF: .text:004E4181j
		retn
; ---------------------------------------------------------------------------

loc_4E418E:				; DATA XREF: .text:004E40DEo
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E417A
; ---------------------------------------------------------------------------

loc_4E4195:				; CODE XREF: .text:loc_4E418Dj
					; DATA XREF: .text:004E4175o
		mov	al, byte_61B518
		pop	ebp
		retn
; ---------------------------------------------------------------------------

unknown_libname_49:			; CODE XREF: .text:004E6A2Dp
		push	ebp		; Borland Visual Component Library & Packages
		mov	ebp, esp
		push	ebx
		cmp	byte_61B518, 0
		jz	loc_4E4279
		xor	edx, edx
		push	ebp
		push	offset loc_4E4272
		push	dword ptr fs:[edx]
		mov	fs:[edx], esp
		cmp	byte_61B131, 0
		jz	short loc_4E41CE
		push	offset CriticalSection ; lpCriticalSection
		call	EnterCriticalSection

loc_4E41CE:				; CODE XREF: .text:004E41C2j
		mov	byte_61B518, 0
		mov	eax, hMem
		push	eax		; hMem
		call	LocalFree
		xor	eax, eax
		mov	hMem, eax
		mov	ebx, dword_61B540
		jmp	short loc_4E4201
; ---------------------------------------------------------------------------

loc_4E41EF:				; CODE XREF: .text:004E4207j
		push	8000h		; dwFreeType
		push	0		; dwSize
		mov	eax, [ebx+8]
		push	eax		; lpAddress
		call	VirtualFree
		mov	ebx, [ebx]

loc_4E4201:				; CODE XREF: .text:004E41EDj
		cmp	ebx, offset dword_61B540
		jnz	short loc_4E41EF
		mov	eax, offset dword_61B540
		call	@System@_16423	; System::_16423
		mov	eax, offset byte_61B550
		call	@System@_16423	; System::_16423
		mov	eax, offset dword_61B57C
		call	@System@_16423	; System::_16423
		mov	eax, dword_61B538
		test	eax, eax
		jz	short loc_4E4247

loc_4E4230:				; CODE XREF: .text:004E4245j
		mov	edx, [eax]
		mov	dword_61B538, edx
		push	eax		; hMem
		call	LocalFree
		mov	eax, dword_61B538
		test	eax, eax
		jnz	short loc_4E4230

loc_4E4247:				; CODE XREF: .text:004E422Ej
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E4279

loc_4E4254:				; CODE XREF: .text:004E4277j
		cmp	byte_61B131, 0
		jz	short loc_4E4267
		push	offset CriticalSection ; lpCriticalSection
		call	LeaveCriticalSection

loc_4E4267:				; CODE XREF: .text:004E425Bj
		push	offset CriticalSection ; lpCriticalSection
		call	DeleteCriticalSection
		retn
; ---------------------------------------------------------------------------

loc_4E4272:				; DATA XREF: .text:004E41B0o
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E4254
; ---------------------------------------------------------------------------

loc_4E4279:				; CODE XREF: .text:004E41A7j
					; .text:004E4271j
					; DATA XREF: ...
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

unknown_libname_50:			; CODE XREF: .text:loc_4E43EDp
					; .text:004E441Fp ...
		push	ebx		; Borland Visual Component Library & Packages
		cmp	eax, dword_61B56C
		jnz	short loc_4E428E
		mov	edx, [eax+4]
		mov	dword_61B56C, edx

loc_4E428E:				; CODE XREF: .text:004E4283j
		mov	edx, [eax+4]
		mov	ecx, [eax+8]
		cmp	ecx, 1000h
		jg	short loc_4E42D4
		cmp	eax, edx
		jnz	short loc_4E42B7
		test	ecx, ecx
		jns	short loc_4E42A7
		add	ecx, 3

loc_4E42A7:				; CODE XREF: .text:004E42A2j
		sar	ecx, 2
		mov	eax, hMem
		xor	edx, edx
		mov	[eax+ecx*4-0Ch], edx
		jmp	short loc_4E42DB
; ---------------------------------------------------------------------------

loc_4E42B7:				; CODE XREF: .text:004E429Ej
		test	ecx, ecx
		jns	short loc_4E42BE
		add	ecx, 3

loc_4E42BE:				; CODE XREF: .text:004E42B9j
		sar	ecx, 2
		mov	ebx, hMem
		mov	[ebx+ecx*4-0Ch], edx
		mov	eax, [eax]
		mov	[edx], eax
		mov	[eax+4], edx
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4E42D4:				; CODE XREF: .text:004E429Aj
		mov	eax, [eax]
		mov	[edx], eax
		mov	[eax+4], edx

loc_4E42DB:				; CODE XREF: .text:004E42B5j
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 10h

unknown_libname_51:			; CODE XREF: .text:004E4441p
		mov	edx, dword_61B57C ; Borland Visual Component Library & Packages
		jmp	short loc_4E42F8
; ---------------------------------------------------------------------------

loc_4E42E8:				; CODE XREF: .text:004E42FEj
		mov	ecx, [edx+8]
		cmp	eax, ecx
		jb	short loc_4E42F6
		add	ecx, [edx+0Ch]
		cmp	eax, ecx
		jb	short loc_4E430C

loc_4E42F6:				; CODE XREF: .text:004E42EDj
		mov	edx, [edx]

loc_4E42F8:				; CODE XREF: .text:004E42E6j
		cmp	edx, offset dword_61B57C
		jnz	short loc_4E42E8
		mov	dword_61B51C, 3
		xor	edx, edx

loc_4E430C:				; CODE XREF: .text:004E42F4j
		mov	eax, edx
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4E4310:				; CODE XREF: .text:004E449Bp
					; .text:004E4608p
		push	ebx
		mov	ecx, edx
		sub	ecx, 4
		lea	ebx, [ecx+eax]
		cmp	edx, 10h
		jl	short loc_4E432D
		mov	dword ptr [ebx], 80000007h
		mov	edx, ecx
		call	unknown_libname_53 ; Borland Visual Component Library &	Packages
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4E432D:				; CODE XREF: .text:004E431Cj
		cmp	edx, 4
		jl	short loc_4E433E
		mov	ecx, edx
		or	ecx, 80000002h
		mov	[eax], ecx
		mov	[ebx], ecx

loc_4E433E:				; CODE XREF: .text:004E4330j
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4E4340:				; CODE XREF: .text:004E4371p
					; .text:004E458Ap ...
		inc	dword_61B50C
		mov	edx, eax
		sub	edx, 4
		mov	edx, [edx]
		and	edx, 7FFFFFFCh
		sub	edx, 4
		add	dword_61B510, edx
		call	@System@SysFreeMem$qqrpv ; System::SysFreeMem(void *)
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E4364:				; CODE XREF: .text:004E44B5p
		cmp	edx, 0Ch
		jl	short loc_4E4377
		or	edx, 2
		mov	[eax], edx
		add	eax, 4
		call	loc_4E4340
		retn
; ---------------------------------------------------------------------------

loc_4E4377:				; CODE XREF: .text:004E4367j
		cmp	edx, 4
		jl	short loc_4E4386
		mov	ecx, edx
		or	ecx, 80000002h
		mov	[eax], ecx

loc_4E4386:				; CODE XREF: .text:004E437Aj
		add	eax, edx
		and	dword ptr [eax], 0FFFFFFFEh
		retn
; ---------------------------------------------------------------------------

unknown_libname_52:			; CODE XREF: .text:004E45D6p
		push	ebx		; Borland Visual Component Library & Packages
		push	esi
		mov	edx, eax
		sub	edx, 4
		mov	edx, [edx]
		mov	ecx, edx
		and	ecx, 80000002h
		cmp	ecx, 80000002h
		jz	short loc_4E43AF
		mov	dword_61B51C, 4

loc_4E43AF:				; CODE XREF: .text:004E43A3j
		mov	ebx, edx
		and	ebx, 7FFFFFFCh
		sub	eax, ebx
		mov	ecx, eax
		xor	edx, [ecx]
		test	edx, 0FFFFFFFEh
		jz	short loc_4E43CF
		mov	dword_61B51C, 5

loc_4E43CF:				; CODE XREF: .text:004E43C3j
		test	byte ptr [ecx],	1
		jz	short loc_4E43F4
		mov	edx, eax
		sub	edx, 0Ch
		mov	esi, [edx+8]
		sub	eax, esi
		cmp	esi, [eax+8]
		jz	short loc_4E43ED
		mov	dword_61B51C, 6

loc_4E43ED:				; CODE XREF: .text:004E43E1j
		call	unknown_libname_50 ; Borland Visual Component Library &	Packages
		add	ebx, esi

loc_4E43F4:				; CODE XREF: .text:004E43D2j
		mov	eax, ebx
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E43FC:				; CODE XREF: .text:004E45EFp
		push	ebx
		push	esi
		push	edi
		mov	ebx, eax
		xor	edi, edi
		mov	eax, [ebx]
		test	eax, 80000000h
		jz	short loc_4E4417
		and	eax, 7FFFFFFCh
		add	edi, eax
		add	ebx, eax
		mov	eax, [ebx]

loc_4E4417:				; CODE XREF: .text:004E440Aj
		test	al, 2
		jnz	short loc_4E442E
		mov	esi, ebx
		mov	eax, esi
		call	unknown_libname_50 ; Borland Visual Component Library &	Packages
		mov	eax, [esi+8]
		add	edi, eax
		add	ebx, eax
		and	dword ptr [ebx], 0FFFFFFFEh

loc_4E442E:				; CODE XREF: .text:004E4419j
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4E4434:				; CODE XREF: .text:004E452Dp
		push	ebx
		push	esi
		push	edi
		push	ebp
		add	esp, 0FFFFFFF8h
		mov	edi, edx
		mov	esi, eax
		mov	eax, esi
		call	unknown_libname_51 ; Borland Visual Component Library &	Packages
		mov	ebx, eax
		mov	ebp, [ebx+8]
		mov	eax, ebp
		add	eax, [ebx+0Ch]
		mov	edx, eax
		lea	ecx, [edi+esi]
		sub	edx, ecx
		cmp	edx, 0Ch
		jg	short loc_4E4460
		mov	edi, eax
		sub	edi, esi

loc_4E4460:				; CODE XREF: .text:004E445Aj
		mov	eax, esi
		sub	eax, ebp
		cmp	eax, 0Ch
		jge	short loc_4E447B
		mov	ecx, esp
		mov	edx, esi
		sub	edx, [ebx+8]
		add	edx, edi
		mov	eax, ebp
		call	loc_4E404C
		jmp	short loc_4E448A
; ---------------------------------------------------------------------------

loc_4E447B:				; CODE XREF: .text:004E4467j
		mov	ecx, esp
		mov	edx, edi
		sub	edx, 4
		lea	eax, [esi+4]
		call	loc_4E404C

loc_4E448A:				; CODE XREF: .text:004E4479j
		mov	ebp, [esp]
		test	ebp, ebp
		jnz	short loc_4E4495
		xor	eax, eax
		jmp	short loc_4E44C5
; ---------------------------------------------------------------------------

loc_4E4495:				; CODE XREF: .text:004E448Fj
		mov	edx, ebp
		sub	edx, esi
		mov	eax, esi
		call	loc_4E4310
		mov	eax, ebp
		add	eax, [esp+4]
		mov	edx, [ebx+8]
		add	edx, [ebx+0Ch]
		cmp	eax, edx
		jnb	short loc_4E44BA
		lea	edx, [edi+esi]
		sub	edx, eax
		call	loc_4E4364

loc_4E44BA:				; CODE XREF: .text:004E44AEj
		mov	edx, esp
		mov	eax, ebx
		call	@System@_16427	; System::_16427
		mov	al, 1

loc_4E44C5:				; CODE XREF: .text:004E4493j
		pop	ecx
		pop	edx
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

unknown_libname_53:			; CODE XREF: .text:004E4326p
					; .text:004E4773p ...
		push	ebx		; Borland Visual Component Library & Packages
		push	esi
		push	edi
		mov	esi, edx
		mov	edi, eax
		mov	ebx, edi
		mov	[ebx+8], esi
		mov	eax, ebx
		add	eax, esi
		sub	eax, 0Ch
		mov	[eax+8], esi
		cmp	esi, 1000h
		jg	short loc_4E4521
		mov	edx, esi
		test	edx, edx
		jns	short loc_4E44F3
		add	edx, 3

loc_4E44F3:				; CODE XREF: .text:004E44EEj
		sar	edx, 2
		mov	eax, hMem
		mov	eax, [eax+edx*4-0Ch]
		test	eax, eax
		jnz	short loc_4E4513
		mov	eax, hMem
		mov	[eax+edx*4-0Ch], ebx
		mov	[ebx+4], ebx
		mov	[ebx], ebx
		jmp	short loc_4E454D
; ---------------------------------------------------------------------------

loc_4E4513:				; CODE XREF: .text:004E4501j
		mov	edx, [eax]
		mov	[ebx+4], eax
		mov	[ebx], edx
		mov	[eax], ebx
		mov	[edx+4], ebx
		jmp	short loc_4E454D
; ---------------------------------------------------------------------------

loc_4E4521:				; CODE XREF: .text:004E44E8j
		cmp	esi, 3C00h
		jl	short loc_4E4536
		mov	edx, esi
		mov	eax, edi
		call	loc_4E4434
		test	al, al
		jnz	short loc_4E454D

loc_4E4536:				; CODE XREF: .text:004E4527j
		mov	eax, dword_61B56C
		mov	dword_61B56C, ebx
		mov	edx, [eax]
		mov	[ebx+4], eax
		mov	[ebx], edx
		mov	[eax], ebx
		mov	[edx+4], ebx

loc_4E454D:				; CODE XREF: .text:004E4511j
					; .text:004E451Fj ...
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_54:			; CODE XREF: .text:004E45AFp
					; .text:004E4A34p ...
		cmp	dword_61B570, 0	; Borland Visual Component Library & Packages
		jle	short locret_4E459D
		cmp	dword_61B570, 0Ch
		jge	short loc_4E4572
		mov	dword_61B51C, 7
		jmp	short locret_4E459D
; ---------------------------------------------------------------------------

loc_4E4572:				; CODE XREF: .text:004E4564j
		mov	eax, dword_61B570
		or	eax, 2
		mov	edx, dword_61B574
		mov	[edx], eax
		mov	eax, dword_61B574
		add	eax, 4
		call	loc_4E4340
		xor	eax, eax
		mov	dword_61B574, eax
		xor	eax, eax
		mov	dword_61B570, eax

locret_4E459D:				; CODE XREF: .text:004E455Bj
					; .text:004E4570j
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4E45A0:				; CODE XREF: .text:004E4644p
					; .text:004E4675p
		push	ebx
		push	esi
		push	edi
		add	esp, 0FFFFFFF0h
		mov	esi, eax
		lea	edi, [esp]
		movsd
		movsd
		mov	edi, esp
		call	unknown_libname_54 ; Borland Visual Component Library &	Packages
		lea	ecx, [esp+8]
		mov	edx, edi
		mov	eax, offset dword_61B57C
		call	@System@_16426	; System::_16426
		mov	ebx, [esp+8]
		test	ebx, ebx
		jnz	short loc_4E45D0
		xor	eax, eax
		jmp	short loc_4E4622
; ---------------------------------------------------------------------------

loc_4E45D0:				; CODE XREF: .text:004E45CAj
		mov	eax, [edi]
		cmp	ebx, eax
		jnb	short loc_4E45E0
		call	unknown_libname_52 ; Borland Visual Component Library &	Packages
		sub	[edi], eax
		add	[edi+4], eax

loc_4E45E0:				; CODE XREF: .text:004E45D4j
		mov	eax, [edi]
		add	eax, [edi+4]
		mov	esi, ebx
		add	esi, [esp+0Ch]
		cmp	eax, esi
		jnb	short loc_4E45F7
		call	loc_4E43FC
		add	[edi+4], eax

loc_4E45F7:				; CODE XREF: .text:004E45EDj
		mov	eax, [edi]
		add	eax, [edi+4]
		cmp	esi, eax
		jnz	short loc_4E4611
		sub	eax, 4
		mov	edx, 4
		call	loc_4E4310
		sub	dword ptr [edi+4], 4

loc_4E4611:				; CODE XREF: .text:004E45FEj
		mov	eax, [edi]
		mov	dword_61B574, eax
		mov	eax, [edi+4]
		mov	dword_61B570, eax
		mov	al, 1

loc_4E4622:				; CODE XREF: .text:004E45CEj
		add	esp, 10h
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E462C:				; CODE XREF: .text:004E470Fp
		push	ebx
		add	esp, 0FFFFFFF8h
		mov	ebx, eax
		mov	edx, esp
		lea	eax, [ebx+4]
		call	loc_4E3E98
		cmp	dword ptr [esp], 0
		jz	short loc_4E464D
		mov	eax, esp
		call	loc_4E45A0
		test	al, al
		jnz	short loc_4E4651

loc_4E464D:				; CODE XREF: .text:004E4640j
		xor	eax, eax
		jmp	short loc_4E4653
; ---------------------------------------------------------------------------

loc_4E4651:				; CODE XREF: .text:004E464Bj
		mov	al, 1

loc_4E4653:				; CODE XREF: .text:004E464Fj
		pop	ecx
		pop	edx
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; int __fastcall loc_4E4658(LPVOID lpAddress)
loc_4E4658:				; CODE XREF: .text:004E4C71p
		push	ebx
		push	esi
		add	esp, 0FFFFFFF8h
		mov	esi, edx
		mov	ebx, eax
		mov	ecx, esp
		lea	edx, [esi+4]
		mov	eax, ebx	; lpAddress
		call	@System@_16434	; System::_16434
		cmp	dword ptr [esp], 0
		jz	short loc_4E467E
		mov	eax, esp
		call	loc_4E45A0
		test	al, al
		jnz	short loc_4E4682

loc_4E467E:				; CODE XREF: .text:004E4671j
		xor	eax, eax
		jmp	short loc_4E4684
; ---------------------------------------------------------------------------

loc_4E4682:				; CODE XREF: .text:004E467Cj
		mov	al, 1

loc_4E4684:				; CODE XREF: .text:004E4680j
		pop	ecx
		pop	edx
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_55:			; CODE XREF: .text:004E4702p
		xor	edx, edx	; Borland Visual Component Library & Packages
		test	eax, eax
		jns	short loc_4E4695
		add	eax, 3

loc_4E4695:				; CODE XREF: .text:004E4690j
		sar	eax, 2
		cmp	eax, 400h
		jg	short loc_4E46B5

loc_4E469F:				; CODE XREF: .text:004E46B3j
		mov	edx, hMem
		mov	edx, [edx+eax*4-0Ch]
		test	edx, edx
		jnz	short loc_4E46B5
		inc	eax
		cmp	eax, 401h
		jnz	short loc_4E469F

loc_4E46B5:				; CODE XREF: .text:004E469Dj
					; .text:004E46ABj
		mov	eax, edx
		retn
; ---------------------------------------------------------------------------

loc_4E46B8:				; CODE XREF: .text:004E48F7p
		push	ebx
		push	esi
		push	edi
		push	ebp
		mov	esi, eax
		mov	edi, offset dword_61B56C
		mov	ebp, offset dword_61B570

loc_4E46C8:				; CODE XREF: .text:004E4722j
		mov	ebx, dword_61B564
		cmp	esi, [ebx+8]
		jle	loc_4E475B
		mov	ebx, [edi]
		mov	eax, [ebx+8]
		cmp	esi, eax
		jle	short loc_4E475B
		mov	[ebx+8], esi

loc_4E46E3:				; CODE XREF: .text:004E46E9j
		mov	ebx, [ebx+4]
		cmp	esi, [ebx+8]
		jg	short loc_4E46E3
		mov	edx, [edi]
		mov	[edx+8], eax
		cmp	ebx, [edi]
		jz	short loc_4E46F8
		mov	[edi], ebx
		jmp	short loc_4E475B
; ---------------------------------------------------------------------------

loc_4E46F8:				; CODE XREF: .text:004E46F2j
		cmp	esi, 1000h
		jg	short loc_4E470D
		mov	eax, esi
		call	unknown_libname_55 ; Borland Visual Component Library &	Packages
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4E475B

loc_4E470D:				; CODE XREF: .text:004E46FEj
		mov	eax, esi
		call	loc_4E462C
		test	al, al
		jnz	short loc_4E471F
		xor	eax, eax
		jmp	loc_4E47A7
; ---------------------------------------------------------------------------

loc_4E471F:				; CODE XREF: .text:004E4716j
		cmp	esi, [ebp+0]
		jg	short loc_4E46C8
		sub	[ebp+0], esi
		cmp	dword ptr [ebp+0], 0Ch
		jge	short loc_4E4735
		add	esi, [ebp+0]
		xor	eax, eax
		mov	[ebp+0], eax

loc_4E4735:				; CODE XREF: .text:004E472Bj
		mov	eax, dword_61B574
		add	dword_61B574, esi
		mov	edx, esi
		or	edx, 2
		mov	[eax], edx
		add	eax, 4
		inc	dword_61B50C
		sub	esi, 4
		add	dword_61B510, esi
		jmp	short loc_4E47A7
; ---------------------------------------------------------------------------

loc_4E475B:				; CODE XREF: .text:004E46D1j
					; .text:004E46DEj ...
		mov	eax, ebx
		call	unknown_libname_50 ; Borland Visual Component Library &	Packages
		mov	edx, [ebx+8]
		mov	eax, edx
		sub	eax, esi
		cmp	eax, 0Ch
		jl	short loc_4E477A
		mov	edx, ebx
		add	edx, esi
		xchg	eax, edx
		call	unknown_libname_53 ; Borland Visual Component Library &	Packages
		jmp	short loc_4E478C
; ---------------------------------------------------------------------------

loc_4E477A:				; CODE XREF: .text:004E476Cj
		mov	esi, edx
		cmp	ebx, [edi]
		jnz	short loc_4E4785
		mov	eax, [ebx+4]
		mov	[edi], eax

loc_4E4785:				; CODE XREF: .text:004E477Ej
		mov	eax, ebx
		add	eax, esi
		and	dword ptr [eax], 0FFFFFFFEh

loc_4E478C:				; CODE XREF: .text:004E4778j
		mov	eax, ebx
		mov	edx, esi
		or	edx, 2
		mov	[eax], edx
		add	eax, 4
		inc	dword_61B50C
		sub	esi, 4
		add	dword_61B510, esi

loc_4E47A7:				; CODE XREF: .text:004E471Aj
					; .text:004E4759j
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

; _DWORD __fastcall System::SysGetMem(int)
@System@SysGetMem$qqri:			; CODE XREF: .text:004E4D04p
					; .text:004E4D70p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, eax
		cmp	byte_61B518, 0
		jnz	short loc_4E47D3
		call	@System@_16436	; System::_16436
		test	al, al
		jnz	short loc_4E47D3
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	loc_4E4927
; ---------------------------------------------------------------------------

loc_4E47D3:				; CODE XREF: .text:004E47BEj
					; .text:004E47C7j
		xor	ecx, ecx
		push	ebp
		push	offset loc_4E4920
		push	dword ptr fs:[ecx]
		mov	fs:[ecx], esp
		cmp	byte_61B131, 0
		jz	short loc_4E47F4
		push	offset CriticalSection ; lpCriticalSection
		call	EnterCriticalSection

loc_4E47F4:				; CODE XREF: .text:004E47E8j
		add	ebx, 7
		and	ebx, 0FFFFFFFCh
		cmp	ebx, 0Ch
		jge	short loc_4E4804
		mov	ebx, 0Ch

loc_4E4804:				; CODE XREF: .text:004E47FDj
		cmp	ebx, 1000h
		jg	loc_4E48A3
		mov	eax, ebx
		test	eax, eax
		jns	short loc_4E4819
		add	eax, 3

loc_4E4819:				; CODE XREF: .text:004E4814j
		sar	eax, 2
		mov	edx, hMem
		mov	edx, [edx+eax*4-0Ch]
		test	edx, edx
		jz	short loc_4E48A3
		mov	esi, edx
		mov	eax, esi
		add	eax, ebx
		and	dword ptr [eax], 0FFFFFFFEh
		mov	eax, [edx+4]
		cmp	edx, eax
		jnz	short loc_4E4854
		mov	eax, ebx
		test	eax, eax
		jns	short loc_4E4843
		add	eax, 3

loc_4E4843:				; CODE XREF: .text:004E483Ej
		sar	eax, 2
		mov	ecx, hMem
		xor	edi, edi
		mov	[ecx+eax*4-0Ch], edi
		jmp	short loc_4E487A
; ---------------------------------------------------------------------------

loc_4E4854:				; CODE XREF: .text:004E4838j
		mov	ecx, ebx
		test	ecx, ecx
		jns	short loc_4E485D
		add	ecx, 3

loc_4E485D:				; CODE XREF: .text:004E4858j
		sar	ecx, 2
		mov	edi, hMem
		mov	[edi+ecx*4-0Ch], eax
		mov	ecx, [edx]
		mov	[ebp-8], ecx
		mov	ecx, [ebp-8]
		mov	[ecx+4], eax
		mov	ecx, [ebp-8]
		mov	[eax], ecx

loc_4E487A:				; CODE XREF: .text:004E4852j
		mov	eax, esi
		mov	edx, [edx+8]
		or	edx, 2
		mov	[eax], edx
		add	eax, 4
		mov	[ebp-4], eax
		inc	dword_61B50C
		sub	ebx, 4
		add	dword_61B510, ebx
		call	@System@@TryFinallyExit$qqrv ; System::__linkproc__ TryFinallyExit(void)
		jmp	loc_4E4927
; ---------------------------------------------------------------------------

loc_4E48A3:				; CODE XREF: .text:004E480Aj
					; .text:004E4828j
		cmp	ebx, dword_61B570
		jg	short loc_4E48F5
		sub	dword_61B570, ebx
		cmp	dword_61B570, 0Ch
		jge	short loc_4E48C7
		add	ebx, dword_61B570
		xor	eax, eax
		mov	dword_61B570, eax

loc_4E48C7:				; CODE XREF: .text:004E48B8j
		mov	eax, dword_61B574
		add	dword_61B574, ebx
		mov	edx, ebx
		or	edx, 2
		mov	[eax], edx
		add	eax, 4
		mov	[ebp-4], eax
		inc	dword_61B50C
		sub	ebx, 4
		add	dword_61B510, ebx
		call	@System@@TryFinallyExit$qqrv ; System::__linkproc__ TryFinallyExit(void)
		jmp	short loc_4E4927
; ---------------------------------------------------------------------------

loc_4E48F5:				; CODE XREF: .text:004E48A9j
		mov	eax, ebx
		call	loc_4E46B8
		mov	[ebp-4], eax
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E4927

loc_4E490C:				; CODE XREF: .text:004E4925j
		cmp	byte_61B131, 0
		jz	short loc_4E491F
		push	offset CriticalSection ; lpCriticalSection
		call	LeaveCriticalSection

loc_4E491F:				; CODE XREF: .text:004E4913j
		retn
; ---------------------------------------------------------------------------

loc_4E4920:				; DATA XREF: .text:004E47D6o
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E490C
; ---------------------------------------------------------------------------

loc_4E4927:				; CODE XREF: .text:004E47CEj
					; .text:004E489Ej ...
		mov	eax, [ebp-4]
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall System::SysFreeMem(void *)
@System@SysFreeMem$qqrpv:		; CODE XREF: .text:004E435Cp
					; .text:004E4D30p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	ebx, eax
		xor	eax, eax
		mov	dword_61B51C, eax
		cmp	byte_61B518, 0
		jnz	short loc_4E496C
		call	@System@_16436	; System::_16436
		test	al, al
		jnz	short loc_4E496C
		mov	dword_61B51C, 8
		mov	dword ptr [ebp-4], 8
		jmp	loc_4E4ACD
; ---------------------------------------------------------------------------

loc_4E496C:				; CODE XREF: .text:004E494Bj
					; .text:004E4954j
		xor	ecx, ecx
		push	ebp
		push	offset loc_4E4AC6
		push	dword ptr fs:[ecx]
		mov	fs:[ecx], esp
		cmp	byte_61B131, 0
		jz	short loc_4E498D
		push	offset CriticalSection ; lpCriticalSection
		call	EnterCriticalSection

loc_4E498D:				; CODE XREF: .text:004E4981j
		mov	esi, ebx
		sub	esi, 4
		mov	ebx, [esi]
		test	bl, 2
		jnz	short loc_4E49A8
		mov	dword_61B51C, 9
		jmp	loc_4E4A9D
; ---------------------------------------------------------------------------

loc_4E49A8:				; CODE XREF: .text:004E4997j
		dec	dword_61B50C
		mov	eax, ebx
		and	eax, 7FFFFFFCh
		sub	eax, 4
		sub	dword_61B510, eax
		test	bl, 1
		jz	short loc_4E4A08
		mov	eax, esi
		sub	eax, 0Ch
		mov	edx, [eax+8]
		cmp	edx, 0Ch
		jl	short loc_4E49D8
		test	edx, 80000003h
		jz	short loc_4E49E7

loc_4E49D8:				; CODE XREF: .text:004E49CEj
		mov	dword_61B51C, 0Ah
		jmp	loc_4E4A9D
; ---------------------------------------------------------------------------

loc_4E49E7:				; CODE XREF: .text:004E49D6j
		mov	eax, esi
		sub	eax, edx
		cmp	edx, [eax+8]
		jz	short loc_4E49FF
		mov	dword_61B51C, 0Ah
		jmp	loc_4E4A9D
; ---------------------------------------------------------------------------

loc_4E49FF:				; CODE XREF: .text:004E49EEj
		add	ebx, edx
		mov	esi, eax
		call	unknown_libname_50 ; Borland Visual Component Library &	Packages

loc_4E4A08:				; CODE XREF: .text:004E49C1j
		and	ebx, 7FFFFFFCh
		mov	eax, esi
		add	eax, ebx
		mov	edi, eax
		cmp	edi, dword_61B574
		jnz	short loc_4E4A48
		sub	dword_61B574, ebx
		add	dword_61B570, ebx
		cmp	dword_61B570, 3C00h
		jle	short loc_4E4A39
		call	unknown_libname_54 ; Borland Visual Component Library &	Packages

loc_4E4A39:				; CODE XREF: .text:004E4A32j
		xor	eax, eax
		mov	[ebp-4], eax
		call	@System@@TryFinallyExit$qqrv ; System::__linkproc__ TryFinallyExit(void)
		jmp	loc_4E4ACD
; ---------------------------------------------------------------------------

loc_4E4A48:				; CODE XREF: .text:004E4A1Aj
		mov	edx, [eax]
		test	dl, 2
		jz	short loc_4E4A6B
		and	edx, 7FFFFFFCh
		cmp	edx, 4
		jge	short loc_4E4A66
		mov	dword_61B51C, 0Bh
		jmp	short loc_4E4A9D
; ---------------------------------------------------------------------------

loc_4E4A66:				; CODE XREF: .text:004E4A58j
		or	dword ptr [eax], 1
		jmp	short loc_4E4A94
; ---------------------------------------------------------------------------

loc_4E4A6B:				; CODE XREF: .text:004E4A4Dj
		mov	eax, edi
		cmp	dword ptr [eax+4], 0
		jz	short loc_4E4A7E
		cmp	dword ptr [eax], 0
		jz	short loc_4E4A7E
		cmp	dword ptr [eax+8], 0Ch
		jge	short loc_4E4A8A

loc_4E4A7E:				; CODE XREF: .text:004E4A71j
					; .text:004E4A76j
		mov	dword_61B51C, 0Bh
		jmp	short loc_4E4A9D
; ---------------------------------------------------------------------------

loc_4E4A8A:				; CODE XREF: .text:004E4A7Cj
		mov	edx, [eax+8]
		add	ebx, edx
		call	unknown_libname_50 ; Borland Visual Component Library &	Packages

loc_4E4A94:				; CODE XREF: .text:004E4A69j
		mov	edx, ebx
		mov	eax, esi
		call	unknown_libname_53 ; Borland Visual Component Library &	Packages

loc_4E4A9D:				; CODE XREF: .text:004E49A3j
					; .text:004E49E2j ...
		mov	eax, dword_61B51C
		mov	[ebp-4], eax
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E4ACD

loc_4E4AB2:				; CODE XREF: .text:004E4ACBj
		cmp	byte_61B131, 0
		jz	short loc_4E4AC5
		push	offset CriticalSection ; lpCriticalSection
		call	LeaveCriticalSection

loc_4E4AC5:				; CODE XREF: .text:004E4AB9j
		retn
; ---------------------------------------------------------------------------

loc_4E4AC6:				; DATA XREF: .text:004E496Fo
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E4AB2
; ---------------------------------------------------------------------------

loc_4E4ACD:				; CODE XREF: .text:004E4967j
					; .text:004E4A43j ...
		mov	eax, [ebp-4]
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_56:			; CODE XREF: .text:004E4CF4p
		push	ebx		; Borland Visual Component Library & Packages
		push	esi
		push	edi
		push	ebp
		add	esp, 0FFFFFFF8h
		mov	esi, edx
		add	esi, 7
		and	esi, 0FFFFFFFCh
		cmp	esi, 0Ch
		jge	short loc_4E4AF1
		mov	esi, 0Ch

loc_4E4AF1:				; CODE XREF: .text:004E4AEAj
		mov	ebp, eax
		sub	ebp, 4
		mov	edi, [ebp+0]
		and	edi, 7FFFFFFCh
		mov	eax, ebp
		add	eax, edi
		mov	ebx, eax
		cmp	edi, esi
		jl	loc_4E4B90
		mov	edx, edi
		sub	edx, esi
		mov	[esp], edx
		cmp	ebx, dword_61B574
		jnz	short loc_4E4B54
		mov	eax, [esp]
		sub	dword_61B574, eax
		mov	eax, [esp]
		add	dword_61B570, eax
		cmp	dword_61B570, 0Ch
		jge	loc_4E4C87
		mov	eax, [esp]
		add	dword_61B574, eax
		mov	eax, [esp]
		sub	dword_61B570, eax
		mov	esi, edi
		jmp	loc_4E4C87
; ---------------------------------------------------------------------------

loc_4E4B54:				; CODE XREF: .text:004E4B1Aj
		mov	ebx, eax
		test	byte ptr [ebx],	2
		jnz	short loc_4E4B68
		mov	eax, ebx
		mov	edx, [eax+8]
		add	[esp], edx
		call	unknown_libname_50 ; Borland Visual Component Library &	Packages

loc_4E4B68:				; CODE XREF: .text:004E4B59j
		cmp	dword ptr [esp], 0Ch
		jl	short loc_4E4B89
		mov	ebx, ebp
		add	ebx, esi
		mov	eax, [esp]
		or	eax, 2
		mov	[ebx], eax
		mov	eax, ebx
		add	eax, 4
		call	loc_4E4340
		jmp	loc_4E4C87
; ---------------------------------------------------------------------------

loc_4E4B89:				; CODE XREF: .text:004E4B6Cj
		mov	esi, edi
		jmp	loc_4E4C87
; ---------------------------------------------------------------------------

loc_4E4B90:				; CODE XREF: .text:004E4B07j
					; .text:004E4C7Ej
		mov	eax, esi
		sub	eax, edi
		mov	[esp+4], eax
		cmp	ebx, dword_61B574
		jnz	short loc_4E4C07
		mov	eax, dword_61B570
		cmp	eax, [esp+4]
		jl	short loc_4E4BFE
		mov	eax, [esp+4]
		sub	dword_61B570, eax
		mov	eax, [esp+4]
		add	dword_61B574, eax
		cmp	dword_61B570, 0Ch
		jge	short loc_4E4BE0
		mov	eax, dword_61B570
		add	dword_61B574, eax
		add	esi, dword_61B570
		xor	eax, eax
		mov	dword_61B570, eax

loc_4E4BE0:				; CODE XREF: .text:004E4BC6j
		mov	eax, esi
		sub	eax, edi
		add	dword_61B510, eax
		mov	eax, [ebp+0]
		and	eax, 80000003h
		or	esi, eax
		mov	[ebp+0], esi
		mov	al, 1
		jmp	loc_4E4CA0
; ---------------------------------------------------------------------------

loc_4E4BFE:				; CODE XREF: .text:004E4BA9j
		call	unknown_libname_54 ; Borland Visual Component Library &	Packages
		mov	ebx, ebp
		add	ebx, edi

loc_4E4C07:				; CODE XREF: .text:004E4B9Ej
		test	byte ptr [ebx],	2
		jnz	short loc_4E4C59
		mov	edx, ebx
		mov	eax, edx
		mov	ecx, [eax+8]
		mov	[esp], ecx
		mov	ecx, [esp]
		cmp	ecx, [esp+4]
		jge	short loc_4E4C2D
		add	edx, [esp]
		mov	ebx, edx
		mov	eax, [esp]
		sub	[esp+4], eax
		jmp	short loc_4E4C59
; ---------------------------------------------------------------------------

loc_4E4C2D:				; CODE XREF: .text:004E4C1Dj
		call	unknown_libname_50 ; Borland Visual Component Library &	Packages
		mov	eax, [esp+4]
		sub	[esp], eax
		cmp	dword ptr [esp], 0Ch
		jl	short loc_4E4C4D
		mov	eax, ebp
		add	eax, esi
		mov	edx, [esp]
		call	unknown_libname_53 ; Borland Visual Component Library &	Packages
		jmp	short loc_4E4C87
; ---------------------------------------------------------------------------

loc_4E4C4D:				; CODE XREF: .text:004E4C3Dj
		add	esi, [esp]
		mov	ebx, ebp
		add	ebx, esi
		and	dword ptr [ebx], 0FFFFFFFEh
		jmp	short loc_4E4C87
; ---------------------------------------------------------------------------

loc_4E4C59:				; CODE XREF: .text:004E4C0Aj
					; .text:004E4C2Bj
		mov	eax, [ebx]
		test	eax, 80000000h
		jz	short loc_4E4C83
		and	eax, 7FFFFFFCh
		add	eax, ebx
		mov	ebx, eax
		mov	edx, [esp+4]
		mov	eax, ebx	; lpAddress
		call	loc_4E4658
		test	al, al
		jz	short loc_4E4C83
		mov	ebx, ebp
		add	ebx, edi
		jmp	loc_4E4B90
; ---------------------------------------------------------------------------

loc_4E4C83:				; CODE XREF: .text:004E4C60j
					; .text:004E4C78j
		xor	eax, eax
		jmp	short loc_4E4CA0
; ---------------------------------------------------------------------------

loc_4E4C87:				; CODE XREF: .text:004E4B35j
					; .text:004E4B4Fj ...
		mov	eax, esi
		sub	eax, edi
		add	dword_61B510, eax
		mov	eax, [ebp+0]
		and	eax, 80000003h
		or	esi, eax
		mov	[ebp+0], esi
		mov	al, 1

loc_4E4CA0:				; CODE XREF: .text:004E4BF9j
					; .text:004E4C85j
		pop	ecx
		pop	edx
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall System::SysReallocMem(void *, int)
@System@SysReallocMem$qqrpvi:		; CODE XREF: .text:004E4DA9p
					; DATA XREF: .text:004E4E3Eo ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, edx
		mov	ebx, eax
		cmp	byte_61B518, 0
		jnz	short loc_4E4CCF
		call	@System@_16436	; System::_16436
		test	al, al
		jnz	short loc_4E4CCF
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	loc_4E4D60
; ---------------------------------------------------------------------------

loc_4E4CCF:				; CODE XREF: .text:004E4CBAj
					; .text:004E4CC3j
		xor	edx, edx
		push	ebp
		push	offset loc_4E4D59
		push	dword ptr fs:[edx]
		mov	fs:[edx], esp
		cmp	byte_61B131, 0
		jz	short loc_4E4CF0
		push	offset CriticalSection ; lpCriticalSection
		call	EnterCriticalSection

loc_4E4CF0:				; CODE XREF: .text:004E4CE4j
		mov	edx, esi
		mov	eax, ebx
		call	unknown_libname_56 ; Borland Visual Component Library &	Packages
		test	al, al
		jz	short loc_4E4D02
		mov	[ebp-4], ebx
		jmp	short loc_4E4D38
; ---------------------------------------------------------------------------

loc_4E4D02:				; CODE XREF: .text:004E4CFBj
		mov	eax, esi	; int
		call	@System@SysGetMem$qqri ; System::SysGetMem(int)
		mov	edi, eax
		mov	eax, ebx
		sub	eax, 4
		mov	eax, [eax]
		and	eax, 7FFFFFFCh
		sub	eax, 4
		cmp	esi, eax
		jge	short loc_4E4D20
		mov	eax, esi

loc_4E4D20:				; CODE XREF: .text:004E4D1Cj
		test	edi, edi
		jz	short loc_4E4D35
		mov	edx, edi	; void *
		mov	ecx, ebx
		xchg	eax, ecx	; int
		call	@System@Move$qqrpxvpvi ; System::Move(void *,void *,int)
		mov	eax, ebx	; void *
		call	@System@SysFreeMem$qqrpv ; System::SysFreeMem(void *)

loc_4E4D35:				; CODE XREF: .text:004E4D22j
		mov	[ebp-4], edi

loc_4E4D38:				; CODE XREF: .text:004E4D00j
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E4D60

loc_4E4D45:				; CODE XREF: .text:004E4D5Ej
		cmp	byte_61B131, 0
		jz	short loc_4E4D58
		push	offset CriticalSection ; lpCriticalSection
		call	LeaveCriticalSection

loc_4E4D58:				; CODE XREF: .text:004E4D4Cj
		retn
; ---------------------------------------------------------------------------

loc_4E4D59:				; DATA XREF: .text:004E4CD2o
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E4D45
; ---------------------------------------------------------------------------

loc_4E4D60:				; CODE XREF: .text:004E4CCAj
					; .text:loc_4E4D58j
					; DATA XREF: ...
		mov	eax, [ebp-4]
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; __fastcall System::__linkproc__ GetMem(void)
@System@@GetMem$qqrv:			; CODE XREF: .text:004E5110p
					; .text:004E59F4p
		test	eax, eax
		jz	short locret_4E4D7A
		call	off_579A8C	; System::SysGetMem(int)
		or	eax, eax
		jz	short loc_4E4D7B

locret_4E4D7A:				; CODE XREF: .text:004E4D6Ej
		retn
; ---------------------------------------------------------------------------

loc_4E4D7B:				; CODE XREF: .text:004E4D78j
		mov	al, 1
		jmp	unknown_libname_58 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		align 4

; __fastcall System::__linkproc__ FreeMem(void)
@System@@FreeMem$qqrv:			; CODE XREF: .text:004E237Fp
					; .text:004E513Dp ...
		test	eax, eax
		jz	short locret_4E4D92
		call	off_579A90	; System::SysFreeMem(void *)
		or	eax, eax
		jnz	short loc_4E4D93

locret_4E4D92:				; CODE XREF: .text:004E4D86j
		retn
; ---------------------------------------------------------------------------

loc_4E4D93:				; CODE XREF: .text:004E4D90j
		mov	al, 2
		jmp	unknown_libname_58 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_57:			; CODE XREF: .text:004E5C82p
		mov	ecx, [eax]	; Borland Visual Component Library & Packages
		test	ecx, ecx
		jz	short loc_4E4DD4
		test	edx, edx
		jz	short loc_4E4DBE
		push	eax
		mov	eax, ecx	; void *
		call	off_579A94	; System::SysReallocMem(void *,int)
		pop	ecx
		or	eax, eax
		jz	short loc_4E4DCD
		mov	[ecx], eax
		retn
; ---------------------------------------------------------------------------

loc_4E4DB7:				; CODE XREF: .text:004E4DCAj
		mov	al, 2
		jmp	unknown_libname_58 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------

loc_4E4DBE:				; CODE XREF: .text:004E4DA4j
		mov	[eax], edx
		mov	eax, ecx	; void *
		call	off_579A90	; System::SysFreeMem(void *)
		or	eax, eax
		jnz	short loc_4E4DB7
		retn
; ---------------------------------------------------------------------------

loc_4E4DCD:				; CODE XREF: .text:004E4DB2j
					; .text:004E4DE4j
		mov	al, 1
		jmp	unknown_libname_58 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------

loc_4E4DD4:				; CODE XREF: .text:004E4DA0j
		test	edx, edx
		jz	short locret_4E4DE8
		push	eax
		mov	eax, edx	; int
		call	off_579A8C	; System::SysGetMem(int)
		pop	ecx
		or	eax, eax
		jz	short loc_4E4DCD
		mov	[ecx], eax

locret_4E4DE8:				; CODE XREF: .text:004E4DD6j
		retn
; ---------------------------------------------------------------------------
		align 4

; __fastcall System::GetMemoryManager(System::TMemoryManager &)
@System@GetMemoryManager$qqrr21System@TMemoryManager: ;	CODE XREF: .text:004E7189p
					; .text:004E71ABp ...
		mov	edx, off_579A8C
		mov	[eax], edx
		mov	edx, off_579A90
		mov	[eax+4], edx
		mov	edx, off_579A94
		mov	[eax+8], edx
		retn
; ---------------------------------------------------------------------------
		align 4

; __fastcall System::SetMemoryManager(System::TMemoryManager const &)
@System@SetMemoryManager$qqrrx21System@TMemoryManager: ; CODE XREF: .text:004E7278p
		mov	edx, [eax]
		mov	off_579A8C, edx
		mov	edx, [eax+4]
		mov	off_579A90, edx
		mov	edx, [eax+8]
		mov	off_579A94, edx
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __cdecl System::IsMemoryManagerSet()
@System@IsMemoryManagerSet$qqrv:	; CODE XREF: .text:004E725Ap
		mov	eax, offset @System@SysGetMem$qqri ; System::SysGetMem(int)
		cmp	eax, off_579A8C
		jnz	short loc_4E4E4E
		mov	eax, offset @System@SysFreeMem$qqrpv ; System::SysFreeMem(void *)
		cmp	eax, off_579A90
		jnz	short loc_4E4E4E
		mov	eax, offset @System@SysReallocMem$qqrpvi ; System::SysReallocMem(void *,int)
		cmp	eax, off_579A94
		jnz	short loc_4E4E4E
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_4E4E4E:				; CODE XREF: .text:004E4E2Fj
					; .text:004E4E3Cj ...
		mov	al, 1
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_58:			; CODE XREF: .text:004E4D7Dj
					; .text:004E4D95j ...
		and	eax, 7Fh	; Borland Visual Component Library & Packages
		mov	ecx, dword_61B0E8
		test	ecx, ecx
		jz	short loc_4E4E64
		pop	edx
		call	ecx ; dword_61B0E8

loc_4E4E64:				; CODE XREF: .text:004E4E5Fj
		dec	eax
		mov	al, ds:byte_4E4E7D[eax]
		jns	short loc_4E4E78
		call	qqrv
		mov	eax, [eax+4]

loc_4E4E78:				; CODE XREF: .text:004E4E6Bj
		jmp	loc_4E591C
; ---------------------------------------------------------------------------
byte_4E4E7D	db 0CBh			; DATA XREF: .text:004E4E65r
		db 0CCh
		db 0C8h
		dd 0C8CFD7C9h, 0D8DBCECDh, 0DCDAD9CAh, 0E0DFDEDDh, 0E400E3E1h
		dd 9090C3E5h
; ---------------------------------------------------------------------------

; __fastcall __linkproc__ _IOTest(void)
@@_IOTest$qqrv:				; CODE XREF: .text:004E1599p
		push	eax
		push	edx
		push	ecx
		call	qqrv
		cmp	dword ptr [eax+4], 0
		pop	ecx
		pop	edx
		pop	eax
		jnz	short loc_4E4EAD
		retn
; ---------------------------------------------------------------------------

loc_4E4EAD:				; CODE XREF: .text:004E4EAAj
		xor	eax, eax
		jmp	unknown_libname_58 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E4EB8:				; CODE XREF: .text:loc_4E2BCCj
					; .text:loc_4E2BF1j ...
		push	eax
		call	qqrv
		pop	dword ptr [eax+4]
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_59:			; CODE XREF: .text:004E2F71j
		call	GetLastError	; Borland Visual Component Library & Packages
		jmp	loc_4E4EB8
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __cdecl IOResult()
@IOResult$qqrv:				; CODE XREF: .text:004E1763p
		call	qqrv
		xor	edx, edx
		mov	ecx, [eax+4]
		mov	[eax+4], edx
		mov	eax, ecx
		retn
; ---------------------------------------------------------------------------
		align 4
