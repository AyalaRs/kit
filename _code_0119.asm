.code
.code

__CurrExcContext:
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		cmp	ebx, 0FFFFFFFFh
		jnz	short loc_4F3993
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F3993:				; CODE XREF: .text:004F398Bj
		mov	edx, [ebx+4]
		cmp	word ptr [edx],	25FFh
		jnz	short loc_4F39AE
		mov	eax, [ebx+4]
		add	eax, 2
		mov	edx, [eax]
		mov	ecx, [edx]
		add	ecx, 0FFFFFFF8h
		mov	eax, ecx
		jmp	short loc_4F39B4
; ---------------------------------------------------------------------------

loc_4F39AE:				; CODE XREF: .text:004F399Bj
		mov	eax, [ebx+4]
		add	eax, 0FFFFFFF8h

loc_4F39B4:				; CODE XREF: .text:004F39ACj
		push	8		; n
		push	offset aBccxh1	; "**BCCxh1"
		push	eax		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4F39CE
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F39CE:				; CODE XREF: .text:004F39C6j
		movzx	eax, word ptr [ebx+10h]
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4F39D5:				; DATA XREF: .data:004F60B0o
		push	ebx
		mov	ebx, offset dword_57BCFC
		push	offset @$xt$r19Sysutils@EDivByZero ; void *
		push	0		; void *
		push	1		; void *
		call	@__GetTypeInfo$qpvt1t1 ; __GetTypeInfo(void *,void *,void *)
		add	esp, 0Ch
		mov	eax, [eax+4]
		mov	[ebx+18h], eax
		push	offset @$xt$r20Sysutils@ERangeError ; void *
		push	0		; void *
		push	1		; void *
		call	@__GetTypeInfo$qpvt1t1 ; __GetTypeInfo(void *,void *,void *)
		add	esp, 0Ch
		mov	edx, [eax+4]
		mov	[ebx+20h], edx
		push	offset @$xt$r21Sysutils@EIntOverflow ; void *
		push	0		; void *
		push	1		; void *
		call	@__GetTypeInfo$qpvt1t1 ; __GetTypeInfo(void *,void *,void *)
		add	esp, 0Ch
		mov	ecx, [eax+4]
		mov	[ebx+28h], ecx
		push	offset @$xt$r19Sysutils@EInvalidOp ; void *
		push	0		; void *
		push	1		; void *
		call	@__GetTypeInfo$qpvt1t1 ; __GetTypeInfo(void *,void *,void *)
		add	esp, 0Ch
		mov	eax, [eax+4]
		mov	[ebx+30h], eax
		push	offset @$xt$r20Sysutils@EZeroDivide ; void *
		push	0		; void *
		push	1		; void *
		call	@__GetTypeInfo$qpvt1t1 ; __GetTypeInfo(void *,void *,void *)
		add	esp, 0Ch
		mov	edx, [eax+4]
		mov	[ebx+38h], edx
		push	offset @$xt$r18Sysutils@EOverflow ; void *
		push	0		; void *
		push	1		; void *
		call	@__GetTypeInfo$qpvt1t1 ; __GetTypeInfo(void *,void *,void *)
		add	esp, 0Ch
		mov	ecx, [eax+4]
		mov	[ebx+40h], ecx
		push	offset @$xt$r19Sysutils@EUnderflow ; void *
		push	0		; void *
		push	1		; void *
		call	@__GetTypeInfo$qpvt1t1 ; __GetTypeInfo(void *,void *,void *)
		add	esp, 0Ch
		mov	eax, [eax+4]
		mov	[ebx+48h], eax
		push	offset @$xt$r25Sysutils@EAccessViolation ; void	*
		push	0		; void *
		push	1		; void *
		call	@__GetTypeInfo$qpvt1t1 ; __GetTypeInfo(void *,void *,void *)
		add	esp, 0Ch
		mov	edx, [eax+4]
		mov	[ebx+58h], edx
		push	offset @$xt$r19Sysutils@EPrivilege ; void *
		push	0		; void *
		push	1		; void *
		call	@__GetTypeInfo$qpvt1t1 ; __GetTypeInfo(void *,void *,void *)
		add	esp, 0Ch
		mov	ecx, [eax+4]
		mov	[ebx+60h], ecx
		push	offset @$xt$r18Sysutils@EControlC ; void *
		push	0		; void *
		push	1		; void *
		call	@__GetTypeInfo$qpvt1t1 ; __GetTypeInfo(void *,void *,void *)
		add	esp, 0Ch
		mov	eax, [eax+4]
		mov	[ebx+68h], eax
		push	offset @$xt$r23Sysutils@EStackOverflow ; void *
		push	0		; void *
		push	1		; void *
		call	@__GetTypeInfo$qpvt1t1 ; __GetTypeInfo(void *,void *,void *)
		add	esp, 0Ch
		mov	edx, [eax+4]
		mov	[ebx+70h], edx
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall Sysutils::EIntError::EIntError(Sysutils::EIntError *__hidden this, const int System::AnsiString)
@Sysutils@EIntError@$bctr$qqrx17System@AnsiString: ; CODE XREF:	.text:004F15BFp
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		mov	[ebp-10h], dl
		test	dl, dl
		jle	short loc_4F3AEF
		call	__ClassCreate

loc_4F3AEF:				; CODE XREF: .text:004F3AE8j
		mov	[ebp-4], ecx
		mov	ebx, edx
		mov	[ebp-8], eax
		mov	eax, offset stru_57BFD8
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-14h], 1
		lea	edx, [ebp-4]
		lea	eax, [ebp-4]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		lea	edx, [ebp-4]
		mov	word ptr [ebp-20h], 8
		mov	word ptr [ebp-20h], 14h
		mov	word ptr [ebp-20h], 20h
		lea	eax, [ebp-0Ch]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		mov	ecx, [eax]
		xor	edx, edx	; System::AnsiString
		mov	eax, [ebp-8]	; this
		call	@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_3 ; Sysutils::EExternal::EExternal(System::AnsiString)
		add	dword ptr [ebp-14h], 5
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-0Ch]
		mov	edx, 2
		call	loc_4F52DC
		mov	word ptr [ebp-20h], 14h
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-4]
		mov	edx, 2
		call	loc_4F52DC
		mov	ecx, [ebp-30h]
		mov	fs:0, ecx
		mov	eax, [ebp-8]
		test	bl, bl
		jz	short loc_4F3B81
		call	__AfterConstruction

loc_4F3B81:				; CODE XREF: .text:004F3B7Aj
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall Sysutils::EIntError::EIntError(Sysutils::EIntError *__hidden this, const int System::AnsiString)
@Sysutils@EIntError@$bctr$qqrx17System@AnsiString_0: ; CODE XREF: .text:004F15FBp
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		mov	[ebp-10h], dl
		test	dl, dl
		jle	short loc_4F3B9B
		call	__ClassCreate

loc_4F3B9B:				; CODE XREF: .text:004F3B94j
		mov	[ebp-4], ecx
		mov	ebx, edx
		mov	[ebp-8], eax
		mov	eax, offset stru_57C040
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-14h], 1
		lea	edx, [ebp-4]
		lea	eax, [ebp-4]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		lea	edx, [ebp-4]
		mov	word ptr [ebp-20h], 8
		mov	word ptr [ebp-20h], 14h
		mov	word ptr [ebp-20h], 20h
		lea	eax, [ebp-0Ch]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		mov	ecx, [eax]
		xor	edx, edx	; System::AnsiString
		mov	eax, [ebp-8]	; this
		call	@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_3 ; Sysutils::EExternal::EExternal(System::AnsiString)
		add	dword ptr [ebp-14h], 5
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-0Ch]
		mov	edx, 2
		call	loc_4F52DC
		mov	word ptr [ebp-20h], 14h
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-4]
		mov	edx, 2
		call	loc_4F52DC
		mov	ecx, [ebp-30h]
		mov	fs:0, ecx
		mov	eax, [ebp-8]
		test	bl, bl
		jz	short loc_4F3C2D
		call	__AfterConstruction

loc_4F3C2D:				; CODE XREF: .text:004F3C26j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall Sysutils::EIntError::EIntError(Sysutils::EIntError *__hidden this, const int System::AnsiString)
@Sysutils@EIntError@$bctr$qqrx17System@AnsiString_1: ; CODE XREF: .text:004F1637p
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		mov	[ebp-10h], dl
		test	dl, dl
		jle	short loc_4F3C47
		call	__ClassCreate

loc_4F3C47:				; CODE XREF: .text:004F3C40j
		mov	[ebp-4], ecx
		mov	ebx, edx
		mov	[ebp-8], eax
		mov	eax, offset stru_57C0A8
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-14h], 1
		lea	edx, [ebp-4]
		lea	eax, [ebp-4]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		lea	edx, [ebp-4]
		mov	word ptr [ebp-20h], 8
		mov	word ptr [ebp-20h], 14h
		mov	word ptr [ebp-20h], 20h
		lea	eax, [ebp-0Ch]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		mov	ecx, [eax]
		xor	edx, edx	; System::AnsiString
		mov	eax, [ebp-8]	; this
		call	@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_3 ; Sysutils::EExternal::EExternal(System::AnsiString)
		add	dword ptr [ebp-14h], 5
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-0Ch]
		mov	edx, 2
		call	loc_4F52DC
		mov	word ptr [ebp-20h], 14h
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-4]
		mov	edx, 2
		call	loc_4F52DC
		mov	ecx, [ebp-30h]
		mov	fs:0, ecx
		mov	eax, [ebp-8]
		test	bl, bl
		jz	short loc_4F3CD9
		call	__AfterConstruction

loc_4F3CD9:				; CODE XREF: .text:004F3CD2j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; _DWORD __fastcall Sysutils::EIntError::EIntError(Sysutils::EIntError *__hidden this, const int System::AnsiString)
@Sysutils@EIntError@$bctr$qqrx17System@AnsiString_2: ; CODE XREF: .text:004F1673p
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		mov	[ebp-10h], dl
		test	dl, dl
		jle	short loc_4F3CF3
		call	__ClassCreate

loc_4F3CF3:				; CODE XREF: .text:004F3CECj
		mov	[ebp-4], ecx
		mov	ebx, edx
		mov	[ebp-8], eax
		mov	eax, offset stru_57C110
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-14h], 1
		lea	edx, [ebp-4]
		lea	eax, [ebp-4]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		lea	edx, [ebp-4]
		mov	word ptr [ebp-20h], 8
		mov	word ptr [ebp-20h], 14h
		mov	word ptr [ebp-20h], 20h
		lea	eax, [ebp-0Ch]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		mov	ecx, [eax]
		xor	edx, edx	; System::AnsiString
		mov	eax, [ebp-8]	; this
		call	@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_4 ; Sysutils::EExternal::EExternal(System::AnsiString)
		add	dword ptr [ebp-14h], 5
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-0Ch]
		mov	edx, 2
		call	loc_4F52DC
		mov	word ptr [ebp-20h], 14h
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-4]
		mov	edx, 2
		call	loc_4F52DC
		mov	ecx, [ebp-30h]
		mov	fs:0, ecx
		mov	eax, [ebp-8]
		test	bl, bl
		jz	short loc_4F3D85
		call	__AfterConstruction

loc_4F3D85:				; CODE XREF: .text:004F3D7Ej
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall Sysutils::EIntError::EIntError(Sysutils::EIntError *__hidden this, const int System::AnsiString)
@Sysutils@EIntError@$bctr$qqrx17System@AnsiString_3: ; CODE XREF: .text:004F16AFp
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		mov	[ebp-10h], dl
		test	dl, dl
		jle	short loc_4F3D9F
		call	__ClassCreate

loc_4F3D9F:				; CODE XREF: .text:004F3D98j
		mov	[ebp-4], ecx
		mov	ebx, edx
		mov	[ebp-8], eax
		mov	eax, offset stru_57C178
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-14h], 1
		lea	edx, [ebp-4]
		lea	eax, [ebp-4]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		lea	edx, [ebp-4]
		mov	word ptr [ebp-20h], 8
		mov	word ptr [ebp-20h], 14h
		mov	word ptr [ebp-20h], 20h
		lea	eax, [ebp-0Ch]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		mov	ecx, [eax]
		xor	edx, edx	; System::AnsiString
		mov	eax, [ebp-8]	; this
		call	@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_4 ; Sysutils::EExternal::EExternal(System::AnsiString)
		add	dword ptr [ebp-14h], 5
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-0Ch]
		mov	edx, 2
		call	loc_4F52DC
		mov	word ptr [ebp-20h], 14h
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-4]
		mov	edx, 2
		call	loc_4F52DC
		mov	ecx, [ebp-30h]
		mov	fs:0, ecx
		mov	eax, [ebp-8]
		test	bl, bl
		jz	short loc_4F3E31
		call	__AfterConstruction

loc_4F3E31:				; CODE XREF: .text:004F3E2Aj
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall Sysutils::EIntError::EIntError(Sysutils::EIntError *__hidden this, const int System::AnsiString)
@Sysutils@EIntError@$bctr$qqrx17System@AnsiString_4: ; CODE XREF: .text:004F16EBp
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		mov	[ebp-10h], dl
		test	dl, dl
		jle	short loc_4F3E4B
		call	__ClassCreate

loc_4F3E4B:				; CODE XREF: .text:004F3E44j
		mov	[ebp-4], ecx
		mov	ebx, edx
		mov	[ebp-8], eax
		mov	eax, offset stru_57C1E0
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-14h], 1
		lea	edx, [ebp-4]
		lea	eax, [ebp-4]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		lea	edx, [ebp-4]
		mov	word ptr [ebp-20h], 8
		mov	word ptr [ebp-20h], 14h
		mov	word ptr [ebp-20h], 20h
		lea	eax, [ebp-0Ch]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		mov	ecx, [eax]
		xor	edx, edx	; System::AnsiString
		mov	eax, [ebp-8]	; this
		call	@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_4 ; Sysutils::EExternal::EExternal(System::AnsiString)
		add	dword ptr [ebp-14h], 5
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-0Ch]
		mov	edx, 2
		call	loc_4F52DC
		mov	word ptr [ebp-20h], 14h
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-4]
		mov	edx, 2
		call	loc_4F52DC
		mov	ecx, [ebp-30h]
		mov	fs:0, ecx
		mov	eax, [ebp-8]
		test	bl, bl
		jz	short loc_4F3EDD
		call	__AfterConstruction

loc_4F3EDD:				; CODE XREF: .text:004F3ED6j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall Sysutils::EIntError::EIntError(Sysutils::EIntError *__hidden this, const int System::AnsiString)
@Sysutils@EIntError@$bctr$qqrx17System@AnsiString_5: ; CODE XREF: .text:004F1727p
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		mov	[ebp-10h], dl
		test	dl, dl
		jle	short loc_4F3EF7
		call	__ClassCreate

loc_4F3EF7:				; CODE XREF: .text:004F3EF0j
		mov	[ebp-4], ecx
		mov	ebx, edx
		mov	[ebp-8], eax
		mov	eax, offset stru_57C248
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-14h], 1
		lea	edx, [ebp-4]
		lea	eax, [ebp-4]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		lea	edx, [ebp-4]
		mov	word ptr [ebp-20h], 8
		mov	word ptr [ebp-20h], 14h
		mov	word ptr [ebp-20h], 20h
		lea	eax, [ebp-0Ch]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		mov	ecx, [eax]
		xor	edx, edx	; System::AnsiString
		mov	eax, [ebp-8]	; this
		call	@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_4 ; Sysutils::EExternal::EExternal(System::AnsiString)
		add	dword ptr [ebp-14h], 5
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-0Ch]
		mov	edx, 2
		call	loc_4F52DC
		mov	word ptr [ebp-20h], 14h
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-4]
		mov	edx, 2
		call	loc_4F52DC
		mov	ecx, [ebp-30h]
		mov	fs:0, ecx
		mov	eax, [ebp-8]
		test	bl, bl
		jz	short loc_4F3F89
		call	__AfterConstruction

loc_4F3F89:				; CODE XREF: .text:004F3F82j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; _DWORD __fastcall Sysutils::EExternal::EExternal(Sysutils::EExternal *__hidden this, const int System::AnsiString)
@Sysutils@EExternal@$bctr$qqrx17System@AnsiString: ; CODE XREF:	.text:004F1763p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		mov	[ebp-10h], dl
		test	dl, dl
		jle	short loc_4F3FA3
		call	__ClassCreate

loc_4F3FA3:				; CODE XREF: .text:004F3F9Cj
		mov	[ebp-4], ecx
		mov	ebx, edx
		mov	[ebp-8], eax
		mov	eax, offset stru_57C2B0
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-14h], 1
		lea	edx, [ebp-4]
		lea	eax, [ebp-4]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		lea	edx, [ebp-4]
		mov	word ptr [ebp-20h], 8
		mov	word ptr [ebp-20h], 14h
		mov	word ptr [ebp-20h], 20h
		lea	eax, [ebp-0Ch]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		mov	ecx, [eax]
		xor	edx, edx	; System::AnsiString
		mov	eax, [ebp-8]	; this
		call	@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_5 ; Sysutils::EExternal::EExternal(System::AnsiString)
		add	dword ptr [ebp-14h], 4
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-0Ch]
		mov	edx, 2
		call	loc_4F52DC
		mov	word ptr [ebp-20h], 14h
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-4]
		mov	edx, 2
		call	loc_4F52DC
		mov	ecx, [ebp-30h]
		mov	fs:0, ecx
		mov	eax, [ebp-8]
		test	bl, bl
		jz	short loc_4F4035
		call	__AfterConstruction

loc_4F4035:				; CODE XREF: .text:004F402Ej
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall Sysutils::EExternal::EExternal(Sysutils::EExternal *__hidden this, const int System::AnsiString)
@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_0: ; CODE XREF: .text:004F179Fp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		mov	[ebp-10h], dl
		test	dl, dl
		jle	short loc_4F404F
		call	__ClassCreate

loc_4F404F:				; CODE XREF: .text:004F4048j
		mov	[ebp-4], ecx
		mov	ebx, edx
		mov	[ebp-8], eax
		mov	eax, offset stru_57C318
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-14h], 1
		lea	edx, [ebp-4]
		lea	eax, [ebp-4]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		lea	edx, [ebp-4]
		mov	word ptr [ebp-20h], 8
		mov	word ptr [ebp-20h], 14h
		mov	word ptr [ebp-20h], 20h
		lea	eax, [ebp-0Ch]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		mov	ecx, [eax]
		xor	edx, edx	; System::AnsiString
		mov	eax, [ebp-8]	; this
		call	@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_5 ; Sysutils::EExternal::EExternal(System::AnsiString)
		add	dword ptr [ebp-14h], 4
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-0Ch]
		mov	edx, 2
		call	loc_4F52DC
		mov	word ptr [ebp-20h], 14h
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-4]
		mov	edx, 2
		call	loc_4F52DC
		mov	ecx, [ebp-30h]
		mov	fs:0, ecx
		mov	eax, [ebp-8]
		test	bl, bl
		jz	short loc_4F40E1
		call	__AfterConstruction

loc_4F40E1:				; CODE XREF: .text:004F40DAj
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall Sysutils::EExternal::EExternal(Sysutils::EExternal *__hidden this, const int System::AnsiString)
@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_1: ; CODE XREF: .text:004F17DBp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		mov	[ebp-10h], dl
		test	dl, dl
		jle	short loc_4F40FB
		call	__ClassCreate

loc_4F40FB:				; CODE XREF: .text:004F40F4j
		mov	[ebp-4], ecx
		mov	ebx, edx
		mov	[ebp-8], eax
		mov	eax, offset stru_57C380
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-14h], 1
		lea	edx, [ebp-4]
		lea	eax, [ebp-4]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		lea	edx, [ebp-4]
		mov	word ptr [ebp-20h], 8
		mov	word ptr [ebp-20h], 14h
		mov	word ptr [ebp-20h], 20h
		lea	eax, [ebp-0Ch]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		mov	ecx, [eax]
		xor	edx, edx	; System::AnsiString
		mov	eax, [ebp-8]	; this
		call	@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_5 ; Sysutils::EExternal::EExternal(System::AnsiString)
		add	dword ptr [ebp-14h], 4
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-0Ch]
		mov	edx, 2
		call	loc_4F52DC
		mov	word ptr [ebp-20h], 14h
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-4]
		mov	edx, 2
		call	loc_4F52DC
		mov	ecx, [ebp-30h]
		mov	fs:0, ecx
		mov	eax, [ebp-8]
		test	bl, bl
		jz	short loc_4F418D
		call	__AfterConstruction

loc_4F418D:				; CODE XREF: .text:004F4186j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall Sysutils::EExternal::EExternal(Sysutils::EExternal *__hidden this, const int System::AnsiString)
@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_2: ; CODE XREF: .text:004F1814p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		mov	[ebp-10h], dl
		test	dl, dl
		jle	short loc_4F41A7
		call	__ClassCreate

loc_4F41A7:				; CODE XREF: .text:004F41A0j
		mov	[ebp-4], ecx
		mov	ebx, edx
		mov	[ebp-8], eax
		mov	eax, offset stru_57C3E8
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-14h], 1
		lea	edx, [ebp-4]
		lea	eax, [ebp-4]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		lea	edx, [ebp-4]
		mov	word ptr [ebp-20h], 8
		mov	word ptr [ebp-20h], 14h
		mov	word ptr [ebp-20h], 20h
		lea	eax, [ebp-0Ch]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		mov	ecx, [eax]
		xor	edx, edx	; System::AnsiString
		mov	eax, [ebp-8]	; this
		call	@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_5 ; Sysutils::EExternal::EExternal(System::AnsiString)
		add	dword ptr [ebp-14h], 4
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-0Ch]
		mov	edx, 2
		call	loc_4F52DC
		mov	word ptr [ebp-20h], 14h
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-4]
		mov	edx, 2
		call	loc_4F52DC
		mov	ecx, [ebp-30h]
		mov	fs:0, ecx
		mov	eax, [ebp-8]
		test	bl, bl
		jz	short loc_4F4239
		call	__AfterConstruction

loc_4F4239:				; CODE XREF: .text:004F4232j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; _DWORD __fastcall Sysutils::EExternal::EExternal(Sysutils::EExternal *__hidden this, const int System::AnsiString)
@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_3: ; CODE XREF: .text:004F3B3Dp
					; .text:004F3BE9p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		mov	[ebp-10h], dl
		test	dl, dl
		jle	short loc_4F4253
		call	__ClassCreate

loc_4F4253:				; CODE XREF: .text:004F424Cj
		mov	[ebp-4], ecx
		mov	ebx, edx
		mov	[ebp-8], eax
		mov	eax, offset stru_57C450
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-14h], 1
		lea	edx, [ebp-4]
		lea	eax, [ebp-4]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		lea	edx, [ebp-4]
		mov	word ptr [ebp-20h], 8
		mov	word ptr [ebp-20h], 14h
		mov	word ptr [ebp-20h], 20h
		lea	eax, [ebp-0Ch]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		mov	ecx, [eax]
		xor	edx, edx	; System::AnsiString
		mov	eax, [ebp-8]	; this
		call	@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_5 ; Sysutils::EExternal::EExternal(System::AnsiString)
		add	dword ptr [ebp-14h], 4
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-0Ch]
		mov	edx, 2
		call	loc_4F52DC
		mov	word ptr [ebp-20h], 14h
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-4]
		mov	edx, 2
		call	loc_4F52DC
		mov	ecx, [ebp-30h]
		mov	fs:0, ecx
		mov	eax, [ebp-8]
		test	bl, bl
		jz	short loc_4F42E5
		call	__AfterConstruction

loc_4F42E5:				; CODE XREF: .text:004F42DEj
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall Sysutils::EExternal::EExternal(Sysutils::EExternal *__hidden this, const int System::AnsiString)
@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_4: ; CODE XREF: .text:004F3D41p
					; .text:004F3DEDp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		mov	[ebp-10h], dl
		test	dl, dl
		jle	short loc_4F42FF
		call	__ClassCreate

loc_4F42FF:				; CODE XREF: .text:004F42F8j
		mov	[ebp-4], ecx
		mov	ebx, edx
		mov	[ebp-8], eax
		mov	eax, offset stru_57C4B8
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-14h], 1
		lea	edx, [ebp-4]
		lea	eax, [ebp-4]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		lea	edx, [ebp-4]
		mov	word ptr [ebp-20h], 8
		mov	word ptr [ebp-20h], 14h
		mov	word ptr [ebp-20h], 20h
		lea	eax, [ebp-0Ch]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		mov	ecx, [eax]
		xor	edx, edx	; System::AnsiString
		mov	eax, [ebp-8]	; this
		call	@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_5 ; Sysutils::EExternal::EExternal(System::AnsiString)
		add	dword ptr [ebp-14h], 4
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-0Ch]
		mov	edx, 2
		call	loc_4F52DC
		mov	word ptr [ebp-20h], 14h
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-4]
		mov	edx, 2
		call	loc_4F52DC
		mov	ecx, [ebp-30h]
		mov	fs:0, ecx
		mov	eax, [ebp-8]
		test	bl, bl
		jz	short loc_4F4391
		call	__AfterConstruction

loc_4F4391:				; CODE XREF: .text:004F438Aj
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall Sysutils::EExternal::EExternal(Sysutils::EExternal *__hidden this, const int System::AnsiString)
@Sysutils@EExternal@$bctr$qqrx17System@AnsiString_5: ; CODE XREF: .text:004F3FF1p
					; .text:004F409Dp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		mov	[ebp-10h], dl
		test	dl, dl
		jle	short loc_4F43AB
		call	__ClassCreate

loc_4F43AB:				; CODE XREF: .text:004F43A4j
		mov	[ebp-4], ecx
		mov	ebx, edx
		mov	[ebp-8], eax
		mov	eax, offset stru_57C520
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-14h], 1
		lea	edx, [ebp-4]
		lea	eax, [ebp-4]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		lea	edx, [ebp-4]
		mov	word ptr [ebp-20h], 8
		mov	word ptr [ebp-20h], 14h
		mov	word ptr [ebp-20h], 20h
		lea	eax, [ebp-0Ch]
		call	@System@AnsiString@$bctr$qqrrx17System@AnsiString ; System::AnsiString::AnsiString(System::AnsiString &)
		inc	dword ptr [ebp-14h]
		mov	ecx, [eax]
		xor	edx, edx
		mov	eax, [ebp-8]
		call	loc_4E15E0
		add	dword ptr [ebp-14h], 3
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-0Ch]
		mov	edx, 2
		call	loc_4F52DC
		mov	word ptr [ebp-20h], 14h
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-4]
		mov	edx, 2
		call	loc_4F52DC
		mov	ecx, [ebp-30h]
		mov	fs:0, ecx
		mov	eax, [ebp-8]
		test	bl, bl
		jz	short loc_4F443D
		call	__AfterConstruction

loc_4F443D:				; CODE XREF: .text:004F4436j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; `__tpdsc__'[Sysutils::EExternal *]
@$xt$p18Sysutils@EExternal dd 4			   ; tpDtt ; DATA XREF:	.data:stru_57C500o
					; .data:stru_57C72Co
		dw 90h			; tpMask ; `__tpdsc__'[Sysutils::EExternal]
		dw 0Ch			; tpName
		dd offset @$xt$18Sysutils@EExternal; BaseType
		db 'EExternal *',0      ; Name
; `__tpdsc__'[Sysutils::EMathError *]
@$xt$p19Sysutils@EMathError dd 4		    ; tpDtt ; DATA XREF: .data:stru_57C498o
					; .data:stru_57C708o
		dw 90h			; tpMask ; `__tpdsc__'[Sysutils::EMathError]
		dw 0Ch			; tpName
		dd offset @$xt$19Sysutils@EMathError; BaseType
		db 'EMathError *',0     ; Name
		align 4
; `__tpdsc__'[Sysutils::EIntError *]
@$xt$p18Sysutils@EIntError dd 4			   ; tpDtt ; DATA XREF:	.data:stru_57C430o
					; .data:stru_57C6E4o
		dw 90h			; tpMask ; `__tpdsc__'[Sysutils::EIntError]
		dw 0Ch			; tpName
		dd offset @$xt$18Sysutils@EIntError; BaseType
		db 'EIntError *',0      ; Name
; `__tpdsc__'[Sysutils::EStackOverflow *]
@$xt$p23Sysutils@EStackOverflow	dd 4			; tpDtt
					; DATA XREF: .data:stru_57C3C8o
					; .data:stru_57C6C0o
		dw 90h			; tpMask ; `__tpdsc__'[Sysutils::EStackOverflow]
		dw 0Ch			; tpName
		dd offset @$xt$23Sysutils@EStackOverflow; BaseType
		db 'EStackOverflow *',0 ; Name
		align 10h
; `__tpdsc__'[Sysutils::EControlC *]
@$xt$p18Sysutils@EControlC dd 4			   ; tpDtt ; DATA XREF:	.data:stru_57C360o
					; .data:stru_57C69Co
		dw 90h			; tpMask ; `__tpdsc__'[Sysutils::EControlC]
		dw 0Ch			; tpName
		dd offset @$xt$18Sysutils@EControlC; BaseType
		db 'EControlC *',0      ; Name
; `__tpdsc__'[Sysutils::EPrivilege *]
@$xt$p19Sysutils@EPrivilege dd 4		    ; tpDtt ; DATA XREF: .data:stru_57C2F8o
					; .data:stru_57C678o
		dw 90h			; tpMask ; `__tpdsc__'[Sysutils::EPrivilege]
		dw 0Ch			; tpName
		dd offset @$xt$19Sysutils@EPrivilege; BaseType
		db 'EPrivilege *',0     ; Name
		align 4
; `__tpdsc__'[Sysutils::EAccessViolation *]
@$xt$p25Sysutils@EAccessViolation dd 4			  ; tpDtt
					; DATA XREF: .data:stru_57C290o
					; .data:stru_57C654o
		dw 90h			; tpMask ; `__tpdsc__'[Sysutils::EAccessViolation]
		dw 0Ch			; tpName
		dd offset @$xt$25Sysutils@EAccessViolation; BaseType
		db 'EAccessViolation *',0; Name
		align 4
; `__tpdsc__'[Sysutils::EUnderflow *]
@$xt$p19Sysutils@EUnderflow dd 4		    ; tpDtt ; DATA XREF: .data:stru_57C228o
					; .data:stru_57C630o
		dw 90h			; tpMask ; `__tpdsc__'[Sysutils::EUnderflow]
		dw 0Ch			; tpName
		dd offset @$xt$19Sysutils@EUnderflow; BaseType
		db 'EUnderflow *',0     ; Name
		align 10h
; `__tpdsc__'[Sysutils::EOverflow *]
@$xt$p18Sysutils@EOverflow dd 4			   ; tpDtt ; DATA XREF:	.data:stru_57C1C0o
					; .data:stru_57C60Co
		dw 90h			; tpMask ; `__tpdsc__'[Sysutils::EOverflow]
		dw 0Ch			; tpName
		dd offset @$xt$18Sysutils@EOverflow; BaseType
		db 'EOverflow *',0      ; Name
; `__tpdsc__'[Sysutils::EZeroDivide *]
@$xt$p20Sysutils@EZeroDivide dd	4		     ; tpDtt ; DATA XREF: .data:stru_57C158o
					; .data:stru_57C5E8o
		dw 90h			; tpMask ; `__tpdsc__'[Sysutils::EZeroDivide]
		dw 0Ch			; tpName
		dd offset @$xt$20Sysutils@EZeroDivide; BaseType
		db 'EZeroDivide *',0    ; Name
		align 4
; `__tpdsc__'[Sysutils::EInvalidOp *]
@$xt$p19Sysutils@EInvalidOp dd 4		    ; tpDtt ; DATA XREF: .data:stru_57C0F0o
					; .data:stru_57C5C4o
		dw 90h			; tpMask ; `__tpdsc__'[Sysutils::EInvalidOp]
		dw 0Ch			; tpName
		dd offset @$xt$19Sysutils@EInvalidOp; BaseType
		db 'EInvalidOp *',0     ; Name
		align 10h
; `__tpdsc__'[Sysutils::EIntOverflow *]
@$xt$p21Sysutils@EIntOverflow dd 4		      ;	tpDtt
					; DATA XREF: .data:stru_57C088o
					; .data:stru_57C5A0o
		dw 90h			; tpMask ; `__tpdsc__'[Sysutils::EIntOverflow]
		dw 0Ch			; tpName
		dd offset @$xt$21Sysutils@EIntOverflow;	BaseType
		db 'EIntOverflow *',0   ; Name
		align 4
; `__tpdsc__'[Sysutils::ERangeError *]
@$xt$p20Sysutils@ERangeError dd	4		     ; tpDtt ; DATA XREF: .data:stru_57C020o
					; .data:stru_57C57Co
		dw 90h			; tpMask ; `__tpdsc__'[Sysutils::ERangeError]
		dw 0Ch			; tpName
		dd offset @$xt$20Sysutils@ERangeError; BaseType
		db 'ERangeError *',0    ; Name
		align 4
; `__tpdsc__'[Sysutils::EDivByZero *]
@$xt$p19Sysutils@EDivByZero dd 4		    ; tpDtt ; DATA XREF: .data:stru_57BFB8o
					; .data:stru_57C558o
		dw 90h			; tpMask ; `__tpdsc__'[Sysutils::EDivByZero]
		dw 0Ch			; tpName
		dd offset @$xt$19Sysutils@EDivByZero; BaseType
		db 'EDivByZero *',0     ; Name
		align 4
; `__tpdsc__'[Sysutils::Exception *[2]]
@$xt$a2$p18Sysutils@Exception dd 8		      ;	tpDtt
					; DATA XREF: .data:stru_57BF18o
		dw 400h			; tpMask ; `__tpdsc__'[Sysutils::Exception *]
		dw 10h			; tpName
		dd offset @$xt$p18Sysutils@Exception; BaseType
		dd 2			; Elements
		db 'Exception *[2]',0   ; Name
		align 4
; `__tpdsc__'[System::AnsiString]
@$xt$17System@AnsiString dd 4			 ; tpDtt ; DATA	XREF: .text:004F5210o
					; .text:`__tpdsc__'[System::AnsiString *]o ...
		dw 3			; tpMask
		dw 30h			; tpName
		dd 0FFFFFFFFh		; bParent
		dd 3			; tpcFlags
		dw 44h			; Size
		dw 48h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 1			; DtorCount
		dd 1			; DtorAltCount
		dd offset loc_4F52DC	; DtorAddr
		dw 3			; DtorMask
		dw 4Ch			; DtorMemberOff
		db 'System::AnsiString',0; Name
		align 4
		dd 0
		dd 0
		dd 0			; end of tpid
; `__tpdsc__'[Sysutils::EStackOverflow &]
@$xt$r23Sysutils@EStackOverflow	dd 4			; tpDtt	; DATA XREF: .text:004F3AC1o
		dw 0A0h			; tpMask ; `__tpdsc__'[Sysutils::EStackOverflow]
		dw 0Ch			; tpName
		dd offset @$xt$23Sysutils@EStackOverflow; BaseType
		db 'EStackOverflow &',0 ; Name
		align 4
; `__tpdsc__'[Sysutils::EControlC &]
@$xt$r18Sysutils@EControlC dd 4			   ; tpDtt ; DATA XREF:	.text:004F3AAAo
		dw 0A0h			; tpMask ; `__tpdsc__'[Sysutils::EControlC]
		dw 0Ch			; tpName
		dd offset @$xt$18Sysutils@EControlC; BaseType
		db 'EControlC &',0      ; Name
; `__tpdsc__'[Sysutils::EPrivilege &]
@$xt$r19Sysutils@EPrivilege dd 4		    ; tpDtt ; DATA XREF: .text:004F3A93o
		dw 0A0h			; tpMask ; `__tpdsc__'[Sysutils::EPrivilege]
		dw 0Ch			; tpName
		dd offset @$xt$19Sysutils@EPrivilege; BaseType
		db 'EPrivilege &',0     ; Name
		align 4
; `__tpdsc__'[Sysutils::EAccessViolation &]
@$xt$r25Sysutils@EAccessViolation dd 4			  ; tpDtt
					; DATA XREF: .text:004F3A7Co
		dw 0A0h			; tpMask ; `__tpdsc__'[Sysutils::EAccessViolation]
		dw 0Ch			; tpName
		dd offset @$xt$25Sysutils@EAccessViolation; BaseType
		db 'EAccessViolation &',0; Name
		align 4
; `__tpdsc__'[Sysutils::EUnderflow &]
@$xt$r19Sysutils@EUnderflow dd 4		    ; tpDtt ; DATA XREF: .text:004F3A65o
		dw 0A0h			; tpMask ; `__tpdsc__'[Sysutils::EUnderflow]
		dw 0Ch			; tpName
		dd offset @$xt$19Sysutils@EUnderflow; BaseType
		db 'EUnderflow &',0     ; Name
		align 4
; `__tpdsc__'[Sysutils::EOverflow &]
@$xt$r18Sysutils@EOverflow dd 4			   ; tpDtt ; DATA XREF:	.text:004F3A4Eo
		dw 0A0h			; tpMask ; `__tpdsc__'[Sysutils::EOverflow]
		dw 0Ch			; tpName
		dd offset @$xt$18Sysutils@EOverflow; BaseType
		db 'EOverflow &',0      ; Name
; `__tpdsc__'[Sysutils::EZeroDivide &]
@$xt$r20Sysutils@EZeroDivide dd	4		     ; tpDtt ; DATA XREF: .text:004F3A37o
		dw 0A0h			; tpMask ; `__tpdsc__'[Sysutils::EZeroDivide]
		dw 0Ch			; tpName
		dd offset @$xt$20Sysutils@EZeroDivide; BaseType
		db 'EZeroDivide &',0    ; Name
		align 4
; `__tpdsc__'[Sysutils::EInvalidOp &]
@$xt$r19Sysutils@EInvalidOp dd 4		    ; tpDtt ; DATA XREF: .text:004F3A20o
		dw 0A0h			; tpMask ; `__tpdsc__'[Sysutils::EInvalidOp]
		dw 0Ch			; tpName
		dd offset @$xt$19Sysutils@EInvalidOp; BaseType
		db 'EInvalidOp &',0     ; Name
		align 4
; `__tpdsc__'[Sysutils::EIntOverflow &]
@$xt$r21Sysutils@EIntOverflow dd 4		      ;	tpDtt ;	DATA XREF: .text:004F3A09o
		dw 0A0h			; tpMask ; `__tpdsc__'[Sysutils::EIntOverflow]
		dw 0Ch			; tpName
		dd offset @$xt$21Sysutils@EIntOverflow;	BaseType
		db 'EIntOverflow &',0   ; Name
		align 10h
; `__tpdsc__'[Sysutils::ERangeError &]
@$xt$r20Sysutils@ERangeError dd	4		     ; tpDtt ; DATA XREF: .text:004F39F2o
		dw 0A0h			; tpMask ; `__tpdsc__'[Sysutils::ERangeError]
		dw 0Ch			; tpName
		dd offset @$xt$20Sysutils@ERangeError; BaseType
		db 'ERangeError &',0    ; Name
		align 4
; `__tpdsc__'[Sysutils::EDivByZero &]
@$xt$r19Sysutils@EDivByZero dd 4		    ; tpDtt ; DATA XREF: .text:004F39DBo
		dw 0A0h			; tpMask ; `__tpdsc__'[Sysutils::EDivByZero]
		dw 0Ch			; tpName
		dd offset @$xt$19Sysutils@EDivByZero; BaseType
		db 'EDivByZero &',0     ; Name
		align 4
; `__tpdsc__'[Sysutils::Exception *]
@$xt$p18Sysutils@Exception dd 4			   ; tpDtt
					; DATA XREF: .text:`__tpdsc__'[Sysutils::Exception *[2]]o
					; .data:stru_57C750o
		dw 90h			; tpMask ; `__tpdsc__'[Sysutils::Exception]
		dw 0Ch			; tpName
		dd offset @$xt$18Sysutils@Exception; BaseType
		db 'Exception *',0      ; Name
; `__tpdsc__'[Sysutils::EDivByZero]
@$xt$19Sysutils@EDivByZero dd 10h		   ; tpDtt
					; DATA XREF: .text:`__tpdsc__'[Sysutils::EDivByZero *]o
					; .text:`__tpdsc__'[Sysutils::EDivByZero &]o
		dw 3			; tpMask ; BCC v4.x/5.x	& BCB v1.0/v7.0	BDS2006	win32 runtime
		dw 30h			; tpName ; Borland Visual Component Library & Packages
		dd 0			; bParent
		dd 0B7h			; tpcFlags
		dw 48h			; Size
		dw 58h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 6			; DtorCount
		dd 6			; DtorAltCount
		dd offset unknown_libname_91; DtorAddr
		dw 3			; DtorMask
		dw 5Ch			; DtorMemberOff
		db 'Sysutils::EDivByZero',0; Name
		align 4
		dd offset @$xt$18Sysutils@EIntError ; Parent
		dd 0, 3, 0
		dd 0
		dd 0			; end of tpid
; `__tpdsc__'[Sysutils::ERangeError]
@$xt$20Sysutils@ERangeError dd 10h		    ; tpDtt
					; DATA XREF: .text:`__tpdsc__'[Sysutils::ERangeError *]o
					; .text:`__tpdsc__'[Sysutils::ERangeError &]o
		dw 3			; tpMask ; BCC v4.x/5.x	& BCB v1.0/v7.0	BDS2006	win32 runtime
		dw 30h			; tpName ; Borland Visual Component Library & Packages
		dd 0			; bParent
		dd 0B7h			; tpcFlags
		dw 48h			; Size
		dw 58h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 6			; DtorCount
		dd 6			; DtorAltCount
		dd offset unknown_libname_92; DtorAddr
		dw 3			; DtorMask
		dw 5Ch			; DtorMemberOff
		db 'Sysutils::ERangeError',0; Name
		align 4
		dd offset @$xt$18Sysutils@EIntError ; Parent
		dd 0, 3, 0
		dd 0
		dd 0			; end of tpid
; `__tpdsc__'[Sysutils::EIntOverflow]
@$xt$21Sysutils@EIntOverflow dd	10h		     ; tpDtt
					; DATA XREF: .text:`__tpdsc__'[Sysutils::EIntOverflow *]o
					; .text:`__tpdsc__'[Sysutils::EIntOverflow &]o
		dw 3			; tpMask ; BCC v4.x/5.x	& BCB v1.0/v7.0	BDS2006	win32 runtime
		dw 30h			; tpName ; Borland Visual Component Library & Packages
		dd 0			; bParent
		dd 0B7h			; tpcFlags
		dw 48h			; Size
		dw 58h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 6			; DtorCount
		dd 6			; DtorAltCount
		dd offset unknown_libname_93; DtorAddr
		dw 3			; DtorMask
		dw 5Ch			; DtorMemberOff
		db 'Sysutils::EIntOverflow',0; Name
		align 4
		dd offset @$xt$18Sysutils@EIntError ; Parent
		dd 0, 3, 0
		dd 0
		dd 0			; end of tpid
; `__tpdsc__'[Sysutils::EInvalidOp]
@$xt$19Sysutils@EInvalidOp dd 10h		   ; tpDtt
					; DATA XREF: .text:`__tpdsc__'[Sysutils::EInvalidOp *]o
					; .text:`__tpdsc__'[Sysutils::EInvalidOp &]o
		dw 3			; tpMask ; BCC v4.x/5.x	& BCB v1.0/v7.0	BDS2006	win32 runtime
		dw 30h			; tpName ; Borland Visual Component Library & Packages
		dd 0			; bParent
		dd 0B7h			; tpcFlags
		dw 48h			; Size
		dw 58h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 6			; DtorCount
		dd 6			; DtorAltCount
		dd offset unknown_libname_94; DtorAddr
		dw 3			; DtorMask
		dw 5Ch			; DtorMemberOff
		db 'Sysutils::EInvalidOp',0; Name
		align 4
		dd offset @$xt$19Sysutils@EMathError ; Parent
		dd 0, 3, 0
		dd 0
		dd 0			; end of tpid
; `__tpdsc__'[Sysutils::EZeroDivide]
@$xt$20Sysutils@EZeroDivide dd 10h		    ; tpDtt
					; DATA XREF: .text:`__tpdsc__'[Sysutils::EZeroDivide *]o
					; .text:`__tpdsc__'[Sysutils::EZeroDivide &]o
		dw 3			; tpMask ; BCC v4.x/5.x	& BCB v1.0/v7.0	BDS2006	win32 runtime
		dw 30h			; tpName ; Borland Visual Component Library & Packages
		dd 0			; bParent
		dd 0B7h			; tpcFlags
		dw 48h			; Size
		dw 58h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 6			; DtorCount
		dd 6			; DtorAltCount
		dd offset unknown_libname_95; DtorAddr
		dw 3			; DtorMask
		dw 5Ch			; DtorMemberOff
		db 'Sysutils::EZeroDivide',0; Name
		align 4
		dd offset @$xt$19Sysutils@EMathError ; Parent
		dd 0, 3, 0
		dd 0
		dd 0			; end of tpid
; `__tpdsc__'[Sysutils::EOverflow]
@$xt$18Sysutils@EOverflow dd 10h		  ; tpDtt
					; DATA XREF: .text:`__tpdsc__'[Sysutils::EOverflow *]o
					; .text:`__tpdsc__'[Sysutils::EOverflow &]o
		dw 3			; tpMask ; BCC v4.x/5.x	& BCB v1.0/v7.0	BDS2006	win32 runtime
		dw 30h			; tpName ; Borland Visual Component Library & Packages
		dd 0			; bParent
		dd 0B7h			; tpcFlags
		dw 44h			; Size
		dw 54h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 6			; DtorCount
		dd 6			; DtorAltCount
		dd offset unknown_libname_96; DtorAddr
		dw 3			; DtorMask
		dw 58h			; DtorMemberOff
		db 'Sysutils::EOverflow',0; Name
		dd offset @$xt$19Sysutils@EMathError ; Parent
		dd 0, 3, 0
		dd 0
		dd 0			; end of tpid
; `__tpdsc__'[Sysutils::EUnderflow]
@$xt$19Sysutils@EUnderflow dd 10h		   ; tpDtt
					; DATA XREF: .text:`__tpdsc__'[Sysutils::EUnderflow *]o
					; .text:`__tpdsc__'[Sysutils::EUnderflow &]o
		dw 3			; tpMask ; BCC v4.x/5.x	& BCB v1.0/v7.0	BDS2006	win32 runtime
		dw 30h			; tpName ; Borland Visual Component Library & Packages
		dd 0			; bParent
		dd 0B7h			; tpcFlags
		dw 48h			; Size
		dw 58h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 6			; DtorCount
		dd 6			; DtorAltCount
		dd offset unknown_libname_97; DtorAddr
		dw 3			; DtorMask
		dw 5Ch			; DtorMemberOff
		db 'Sysutils::EUnderflow',0; Name
		align 4
		dd offset @$xt$19Sysutils@EMathError ; Parent
		dd 0, 3, 0
		dd 0
		dd 0			; end of tpid
; `__tpdsc__'[Sysutils::EAccessViolation]
@$xt$25Sysutils@EAccessViolation dd 10h			 ; tpDtt
					; DATA XREF: .text:`__tpdsc__'[Sysutils::EAccessViolation *]o
					; .text:`__tpdsc__'[Sysutils::EAccessViolation &]o
		dw 3			; tpMask ; BCC v4.x/5.x	& BCB v1.0/v7.0	BDS2006	win32 runtime
		dw 30h			; tpName
		dd 0			; bParent
		dd 0B7h			; tpcFlags
		dw 4Ch			; Size
		dw 5Ch			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 5			; DtorCount
		dd 5			; DtorAltCount
		dd offset unknown_libname_34; DtorAddr
		dw 3			; DtorMask
		dw 60h			; DtorMemberOff
		db 'Sysutils::EAccessViolation',0; Name
		align 4
		dd offset @$xt$18Sysutils@EExternal ; Parent
		dd 0, 3, 0
		dd 0
		dd 0			; end of tpid
; `__tpdsc__'[Sysutils::EPrivilege]
@$xt$19Sysutils@EPrivilege dd 10h		   ; tpDtt
					; DATA XREF: .text:`__tpdsc__'[Sysutils::EPrivilege *]o
					; .text:`__tpdsc__'[Sysutils::EPrivilege &]o
		dw 3			; tpMask ; BCC v4.x/5.x	& BCB v1.0/v7.0	BDS2006	win32 runtime
		dw 30h			; tpName
		dd 0			; bParent
		dd 0B7h			; tpcFlags
		dw 48h			; Size
		dw 58h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 5			; DtorCount
		dd 5			; DtorAltCount
		dd offset unknown_libname_35; DtorAddr
		dw 3			; DtorMask
		dw 5Ch			; DtorMemberOff
		db 'Sysutils::EPrivilege',0; Name
		align 4
		dd offset @$xt$18Sysutils@EExternal ; Parent
		dd 0, 3, 0
		dd 0
		dd 0			; end of tpid
; `__tpdsc__'[Sysutils::EControlC]
@$xt$18Sysutils@EControlC dd 10h		  ; tpDtt
					; DATA XREF: .text:`__tpdsc__'[Sysutils::EControlC *]o
					; .text:`__tpdsc__'[Sysutils::EControlC &]o
		dw 3			; tpMask ; BCC v4.x/5.x	& BCB v1.0/v7.0	BDS2006	win32 runtime
		dw 30h			; tpName
		dd 0			; bParent
		dd 0B7h			; tpcFlags
		dw 44h			; Size
		dw 54h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 5			; DtorCount
		dd 5			; DtorAltCount
		dd offset unknown_libname_36; DtorAddr
		dw 3			; DtorMask
		dw 58h			; DtorMemberOff
		db 'Sysutils::EControlC',0; Name
		dd offset @$xt$18Sysutils@EExternal ; Parent
		dd 0, 3, 0
		dd 0
		dd 0			; end of tpid
; `__tpdsc__'[Sysutils::EStackOverflow]
@$xt$23Sysutils@EStackOverflow dd 10h		       ; tpDtt
					; DATA XREF: .text:`__tpdsc__'[Sysutils::EStackOverflow *]o
					; .text:`__tpdsc__'[Sysutils::EStackOverflow &]o
		dw 3			; tpMask ; BCC v4.x/5.x	& BCB v1.0/v7.0	BDS2006	win32 runtime
		dw 30h			; tpName
		dd 0			; bParent
		dd 0B7h			; tpcFlags
		dw 4Ch			; Size
		dw 5Ch			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 5			; DtorCount
		dd 5			; DtorAltCount
		dd offset unknown_libname_37; DtorAddr
		dw 3			; DtorMask
		dw 60h			; DtorMemberOff
		db 'Sysutils::EStackOverflow',0; Name
		align 4
		dd offset @$xt$18Sysutils@EExternal ; Parent
		dd 0, 3, 0
		dd 0
		dd 0			; end of tpid
; `__tpdsc__'[Sysutils::EIntError]
@$xt$18Sysutils@EIntError dd 10h		  ; tpDtt
					; DATA XREF: .text:`__tpdsc__'[Sysutils::EIntError *]o
					; .text:004F47C8o ...
		dw 3			; tpMask ; BCC v4.x/5.x	& BCB v1.0/v7.0	BDS2006	win32 runtime
		dw 30h			; tpName
		dd 0			; bParent
		dd 0B7h			; tpcFlags
		dw 44h			; Size
		dw 54h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 5			; DtorCount
		dd 5			; DtorAltCount
		dd offset unknown_libname_38; DtorAddr
		dw 3			; DtorMask
		dw 58h			; DtorMemberOff
		db 'Sysutils::EIntError',0; Name
		dd offset @$xt$18Sysutils@EExternal ; Parent
		dd 0, 3, 0
		dd 0
		dd 0			; end of tpid
; `__tpdsc__'[Sysutils::EMathError]
@$xt$19Sysutils@EMathError dd 10h		   ; tpDtt
					; DATA XREF: .text:`__tpdsc__'[Sysutils::EMathError *]o
					; .text:004F48E8o ...
		dw 3			; tpMask ; BCC v4.x/5.x	& BCB v1.0/v7.0	BDS2006	win32 runtime
		dw 30h			; tpName
		dd 0			; bParent
		dd 0B7h			; tpcFlags
		dw 48h			; Size
		dw 58h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 5			; DtorCount
		dd 5			; DtorAltCount
		dd offset unknown_libname_39; DtorAddr
		dw 3			; DtorMask
		dw 5Ch			; DtorMemberOff
		db 'Sysutils::EMathError',0; Name
		align 4
		dd offset @$xt$18Sysutils@EExternal ; Parent
		dd 0, 3, 0
		dd 0
		dd 0			; end of tpid
; `__tpdsc__'[Sysutils::EExternal]
@$xt$18Sysutils@EExternal dd 10h		  ; tpDtt
					; DATA XREF: .text:`__tpdsc__'[Sysutils::EExternal *]o
					; .text:004F4A68o ...
		dw 3			; tpMask ; Sysutils::EExternal::~EExternal(void)
		dw 30h			; tpName
		dd 0			; bParent
		dd 0B7h			; tpcFlags
		dw 44h			; Size
		dw 54h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 4			; DtorCount
		dd 4			; DtorAltCount
		dd offset @Sysutils@EExternal@$bdtr$qqrv; DtorAddr
		dw 3			; DtorMask
		dw 58h			; DtorMemberOff
		db 'Sysutils::EExternal',0; Name
		dd offset @$xt$18Sysutils@Exception ; Parent
		dd 0, 3, 0
		dd 0
		dd 0			; end of tpid
; ---------------------------------------------------------------------------

unknown_libname_91:			; DATA XREF: .text:`__tpdsc__'[Sysutils::EDivByZero]o
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
					; Borland Visual Component Library & Packages
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		call	__BeforeDestruction
		mov	ebx, edx
		mov	[ebp-4], eax
		mov	eax, offset stru_57C568
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-0Ch], 5
		test	bl, bl
		jl	short loc_4F4CF2
		mov	word ptr [ebp-18h], 8
		sub	dword ptr [ebp-0Ch], 5
		xor	edx, edx
		mov	eax, [ebp-4]
		call	unknown_libname_38 ; BCC v4.x/5.x & BCB	v1.0/v7.0 BDS2006 win32	runtime

loc_4F4CF2:				; CODE XREF: .text:004F4CDCj
		mov	edx, [ebp-28h]
		mov	fs:0, edx
		test	bl, bl
		jle	short loc_4F4D07
		mov	eax, [ebp-4]
		call	__ClassDestroy

loc_4F4D07:				; CODE XREF: .text:004F4CFDj
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

unknown_libname_92:			; DATA XREF: .text:`__tpdsc__'[Sysutils::ERangeError]o
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
					; Borland Visual Component Library & Packages
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		call	__BeforeDestruction
		mov	ebx, edx
		mov	[ebp-4], eax
		mov	eax, offset stru_57C58C
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-0Ch], 5
		test	bl, bl
		jl	short loc_4F4D46
		mov	word ptr [ebp-18h], 8
		sub	dword ptr [ebp-0Ch], 5
		xor	edx, edx
		mov	eax, [ebp-4]
		call	unknown_libname_38 ; BCC v4.x/5.x & BCB	v1.0/v7.0 BDS2006 win32	runtime

loc_4F4D46:				; CODE XREF: .text:004F4D30j
		mov	edx, [ebp-28h]
		mov	fs:0, edx
		test	bl, bl
		jle	short loc_4F4D5B
		mov	eax, [ebp-4]
		call	__ClassDestroy

loc_4F4D5B:				; CODE XREF: .text:004F4D51j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

unknown_libname_93:			; DATA XREF: .text:`__tpdsc__'[Sysutils::EIntOverflow]o
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
					; Borland Visual Component Library & Packages
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		call	__BeforeDestruction
		mov	ebx, edx
		mov	[ebp-4], eax
		mov	eax, offset stru_57C5B0
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-0Ch], 5
		test	bl, bl
		jl	short loc_4F4D9A
		mov	word ptr [ebp-18h], 8
		sub	dword ptr [ebp-0Ch], 5
		xor	edx, edx
		mov	eax, [ebp-4]
		call	unknown_libname_38 ; BCC v4.x/5.x & BCB	v1.0/v7.0 BDS2006 win32	runtime

loc_4F4D9A:				; CODE XREF: .text:004F4D84j
		mov	edx, [ebp-28h]
		mov	fs:0, edx
		test	bl, bl
		jle	short loc_4F4DAF
		mov	eax, [ebp-4]
		call	__ClassDestroy

loc_4F4DAF:				; CODE XREF: .text:004F4DA5j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

unknown_libname_94:			; DATA XREF: .text:`__tpdsc__'[Sysutils::EInvalidOp]o
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
					; Borland Visual Component Library & Packages
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		call	__BeforeDestruction
		mov	ebx, edx
		mov	[ebp-4], eax
		mov	eax, offset stru_57C5D4
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-0Ch], 5
		test	bl, bl
		jl	short loc_4F4DEE
		mov	word ptr [ebp-18h], 8
		sub	dword ptr [ebp-0Ch], 5
		xor	edx, edx
		mov	eax, [ebp-4]
		call	unknown_libname_39 ; BCC v4.x/5.x & BCB	v1.0/v7.0 BDS2006 win32	runtime

loc_4F4DEE:				; CODE XREF: .text:004F4DD8j
		mov	edx, [ebp-28h]
		mov	fs:0, edx
		test	bl, bl
		jle	short loc_4F4E03
		mov	eax, [ebp-4]
		call	__ClassDestroy

loc_4F4E03:				; CODE XREF: .text:004F4DF9j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

unknown_libname_95:			; DATA XREF: .text:`__tpdsc__'[Sysutils::EZeroDivide]o
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
					; Borland Visual Component Library & Packages
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		call	__BeforeDestruction
		mov	ebx, edx
		mov	[ebp-4], eax
		mov	eax, offset stru_57C5F8
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-0Ch], 5
		test	bl, bl
		jl	short loc_4F4E42
		mov	word ptr [ebp-18h], 8
		sub	dword ptr [ebp-0Ch], 5
		xor	edx, edx
		mov	eax, [ebp-4]
		call	unknown_libname_39 ; BCC v4.x/5.x & BCB	v1.0/v7.0 BDS2006 win32	runtime

loc_4F4E42:				; CODE XREF: .text:004F4E2Cj
		mov	edx, [ebp-28h]
		mov	fs:0, edx
		test	bl, bl
		jle	short loc_4F4E57
		mov	eax, [ebp-4]
		call	__ClassDestroy

loc_4F4E57:				; CODE XREF: .text:004F4E4Dj
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

unknown_libname_96:			; DATA XREF: .text:`__tpdsc__'[Sysutils::EOverflow]o
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
					; Borland Visual Component Library & Packages
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		call	__BeforeDestruction
		mov	ebx, edx
		mov	[ebp-4], eax
		mov	eax, offset stru_57C61C
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-0Ch], 5
		test	bl, bl
		jl	short loc_4F4E96
		mov	word ptr [ebp-18h], 8
		sub	dword ptr [ebp-0Ch], 5
		xor	edx, edx
		mov	eax, [ebp-4]
		call	unknown_libname_39 ; BCC v4.x/5.x & BCB	v1.0/v7.0 BDS2006 win32	runtime

loc_4F4E96:				; CODE XREF: .text:004F4E80j
		mov	edx, [ebp-28h]
		mov	fs:0, edx
		test	bl, bl
		jle	short loc_4F4EAB
		mov	eax, [ebp-4]
		call	__ClassDestroy

loc_4F4EAB:				; CODE XREF: .text:004F4EA1j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

unknown_libname_97:			; DATA XREF: .text:`__tpdsc__'[Sysutils::EUnderflow]o
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
					; Borland Visual Component Library & Packages
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		call	__BeforeDestruction
		mov	ebx, edx
		mov	[ebp-4], eax
		mov	eax, offset stru_57C640
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-0Ch], 5
		test	bl, bl
		jl	short loc_4F4EEA
		mov	word ptr [ebp-18h], 8
		sub	dword ptr [ebp-0Ch], 5
		xor	edx, edx
		mov	eax, [ebp-4]
		call	unknown_libname_39 ; BCC v4.x/5.x & BCB	v1.0/v7.0 BDS2006 win32	runtime

loc_4F4EEA:				; CODE XREF: .text:004F4ED4j
		mov	edx, [ebp-28h]
		mov	fs:0, edx
		test	bl, bl
		jle	short loc_4F4EFF
		mov	eax, [ebp-4]
		call	__ClassDestroy

loc_4F4EFF:				; CODE XREF: .text:004F4EF5j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

unknown_libname_34:			; DATA XREF: .text:`__tpdsc__'[Sysutils::EAccessViolation]o
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		call	__BeforeDestruction
		mov	ebx, edx
		mov	[ebp-4], eax
		mov	eax, offset stru_57C664
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-0Ch], 4
		test	bl, bl
		jl	short loc_4F4F3E
		mov	word ptr [ebp-18h], 8
		sub	dword ptr [ebp-0Ch], 4
		xor	edx, edx
		mov	eax, [ebp-4]	; this
		call	@Sysutils@EExternal@$bdtr$qqrv ; Sysutils::EExternal::~EExternal(void)

loc_4F4F3E:				; CODE XREF: .text:004F4F28j
		mov	edx, [ebp-28h]
		mov	fs:0, edx
		test	bl, bl
		jle	short loc_4F4F53
		mov	eax, [ebp-4]
		call	__ClassDestroy

loc_4F4F53:				; CODE XREF: .text:004F4F49j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

unknown_libname_35:			; DATA XREF: .text:`__tpdsc__'[Sysutils::EPrivilege]o
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		call	__BeforeDestruction
		mov	ebx, edx
		mov	[ebp-4], eax
		mov	eax, offset stru_57C688
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-0Ch], 4
		test	bl, bl
		jl	short loc_4F4F92
		mov	word ptr [ebp-18h], 8
		sub	dword ptr [ebp-0Ch], 4
		xor	edx, edx
		mov	eax, [ebp-4]	; this
		call	@Sysutils@EExternal@$bdtr$qqrv ; Sysutils::EExternal::~EExternal(void)

loc_4F4F92:				; CODE XREF: .text:004F4F7Cj
		mov	edx, [ebp-28h]
		mov	fs:0, edx
		test	bl, bl
		jle	short loc_4F4FA7
		mov	eax, [ebp-4]
		call	__ClassDestroy

loc_4F4FA7:				; CODE XREF: .text:004F4F9Dj
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

unknown_libname_36:			; DATA XREF: .text:`__tpdsc__'[Sysutils::EControlC]o
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		call	__BeforeDestruction
		mov	ebx, edx
		mov	[ebp-4], eax
		mov	eax, offset stru_57C6AC
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-0Ch], 4
		test	bl, bl
		jl	short loc_4F4FE6
		mov	word ptr [ebp-18h], 8
		sub	dword ptr [ebp-0Ch], 4
		xor	edx, edx
		mov	eax, [ebp-4]	; this
		call	@Sysutils@EExternal@$bdtr$qqrv ; Sysutils::EExternal::~EExternal(void)

loc_4F4FE6:				; CODE XREF: .text:004F4FD0j
		mov	edx, [ebp-28h]
		mov	fs:0, edx
		test	bl, bl
		jle	short loc_4F4FFB
		mov	eax, [ebp-4]
		call	__ClassDestroy

loc_4F4FFB:				; CODE XREF: .text:004F4FF1j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

unknown_libname_37:			; DATA XREF: .text:`__tpdsc__'[Sysutils::EStackOverflow]o
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		call	__BeforeDestruction
		mov	ebx, edx
		mov	[ebp-4], eax
		mov	eax, offset stru_57C6D0
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-0Ch], 4
		test	bl, bl
		jl	short loc_4F503A
		mov	word ptr [ebp-18h], 8
		sub	dword ptr [ebp-0Ch], 4
		xor	edx, edx
		mov	eax, [ebp-4]	; this
		call	@Sysutils@EExternal@$bdtr$qqrv ; Sysutils::EExternal::~EExternal(void)

loc_4F503A:				; CODE XREF: .text:004F5024j
		mov	edx, [ebp-28h]
		mov	fs:0, edx
		test	bl, bl
		jle	short loc_4F504F
		mov	eax, [ebp-4]
		call	__ClassDestroy

loc_4F504F:				; CODE XREF: .text:004F5045j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

unknown_libname_38:			; CODE XREF: .text:004F4CEDp
					; .text:004F4D41p ...
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		call	__BeforeDestruction
		mov	ebx, edx
		mov	[ebp-4], eax
		mov	eax, offset stru_57C6F4
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-0Ch], 4
		test	bl, bl
		jl	short loc_4F508E
		mov	word ptr [ebp-18h], 8
		sub	dword ptr [ebp-0Ch], 4
		xor	edx, edx
		mov	eax, [ebp-4]	; this
		call	@Sysutils@EExternal@$bdtr$qqrv ; Sysutils::EExternal::~EExternal(void)

loc_4F508E:				; CODE XREF: .text:004F5078j
		mov	edx, [ebp-28h]
		mov	fs:0, edx
		test	bl, bl
		jle	short loc_4F50A3
		mov	eax, [ebp-4]
		call	__ClassDestroy

loc_4F50A3:				; CODE XREF: .text:004F5099j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

unknown_libname_39:			; CODE XREF: .text:004F4DE9p
					; .text:004F4E3Dp ...
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		call	__BeforeDestruction
		mov	ebx, edx
		mov	[ebp-4], eax
		mov	eax, offset stru_57C718
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-0Ch], 4
		test	bl, bl
		jl	short loc_4F50E2
		mov	word ptr [ebp-18h], 8
		sub	dword ptr [ebp-0Ch], 4
		xor	edx, edx
		mov	eax, [ebp-4]	; this
		call	@Sysutils@EExternal@$bdtr$qqrv ; Sysutils::EExternal::~EExternal(void)

loc_4F50E2:				; CODE XREF: .text:004F50CCj
		mov	edx, [ebp-28h]
		mov	fs:0, edx
		test	bl, bl
		jle	short loc_4F50F7
		mov	eax, [ebp-4]
		call	__ClassDestroy

loc_4F50F7:				; CODE XREF: .text:004F50EDj
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; _DWORD __fastcall Sysutils::EExternal::~EExternal(Sysutils::EExternal	*__hidden this)
@Sysutils@EExternal@$bdtr$qqrv:		; CODE XREF: .text:004F4F39p
					; .text:004F4F8Dp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		call	__BeforeDestruction
		mov	ebx, edx
		mov	[ebp-4], eax
		mov	eax, offset stru_57C73C
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-0Ch], 3
		test	bl, bl
		jl	short loc_4F5136
		mov	word ptr [ebp-18h], 8
		sub	dword ptr [ebp-0Ch], 3
		xor	edx, edx
		mov	eax, [ebp-4]	; this
		call	@Sysutils@Exception@$bdtr$qqrv ; Sysutils::Exception::~Exception(void)

loc_4F5136:				; CODE XREF: .text:004F5120j
		mov	edx, [ebp-28h]
		mov	fs:0, edx
		test	bl, bl
		jle	short loc_4F514B
		mov	eax, [ebp-4]
		call	__ClassDestroy

loc_4F514B:				; CODE XREF: .text:004F5141j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; _DWORD __fastcall Sysutils::Exception::~Exception(Sysutils::Exception	*__hidden this)
@Sysutils@Exception@$bdtr$qqrv:		; CODE XREF: .text:004F5131p
					; DATA XREF: .text:`__tpdsc__'[Sysutils::Exception]o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		call	__BeforeDestruction
		mov	ebx, edx
		mov	[ebp-4], eax
		mov	eax, offset stru_57C760
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-0Ch], 2
		test	bl, bl
		jl	short loc_4F519C
		mov	word ptr [ebp-18h], 8
		dec	dword ptr [ebp-0Ch]
		mov	edx, 2
		mov	eax, [ebp-4]
		add	eax, 4
		call	loc_4F52DC
		dec	dword ptr [ebp-0Ch]
		xor	edx, edx
		mov	eax, [ebp-4]
		call	loc_4E5148

loc_4F519C:				; CODE XREF: .text:004F5174j
		mov	ecx, [ebp-28h]
		mov	fs:0, ecx
		test	bl, bl
		jle	short loc_4F51B1
		mov	eax, [ebp-4]
		call	__ClassDestroy

loc_4F51B1:				; CODE XREF: .text:004F51A7j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; `__tpdsc__'[Sysutils::Exception]
@$xt$18Sysutils@Exception dd 0Ch		  ; tpDtt
					; DATA XREF: .text:`__tpdsc__'[Sysutils::Exception *]o
					; .text:004F4CA0o
		dw 3			; tpMask ; Sysutils::Exception::~Exception(void)
		dw 30h			; tpName
		dd 0			; bParent
		dd 0B7h			; tpcFlags
		dw 44h			; Size
		dw 54h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 3			; DtorCount
		dd 3			; DtorAltCount
		dd offset @Sysutils@Exception@$bdtr$qqrv; DtorAddr
		dw 3			; DtorMask
		dw 58h			; DtorMemberOff
		db 'Sysutils::Exception',0; Name
		dd offset @$xt$14System@TObject	; Parent
		dd 0, 3, 0
		dd 0
		_tpc_ext <offset @$xt$17System@AnsiString, 4> ;	`__tpdsc__'[System::AnsiString]
		dd 0			; end of tpid
; `__tpdsc__'[System::TObject]
@$xt$14System@TObject dd 4		      ;	tpDtt ;	DATA XREF: .text:004F51FCo
		dw 3			; tpMask
		dw 30h			; tpName
		dd 0			; bParent
		dd 0B3h			; tpcFlags
		dw 40h			; Size
		dw 44h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 1			; DtorCount
		dd 1			; DtorAltCount
		dd offset loc_4E5148	; DtorAddr
		dw 3			; DtorMask
		dw 48h			; DtorMemberOff
		db 'System::TObject',0  ; Name
		dd 0
		dd 0
		dd 0			; end of tpid
; ---------------------------------------------------------------------------

loc_4F5268:				; CODE XREF: .text:004F15AEp
					; .text:004F15EAp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		mov	[ebp-4], eax
		mov	eax, offset stru_57D0F0
		call	@__InitExceptBlockLDTC
		mov	word ptr [ebp-18h], 8
		xor	ecx, ecx
		mov	eax, [ebp-4]
		mov	[eax], ecx
		call	unknown_libname_74 ; Borland Visual Component Library &	Packages
		mov	edx, [ebp-28h]
		mov	fs:0, edx
		mov	eax, [ebp-4]
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; __fastcall System::AnsiString::AnsiString(System::AnsiString const &)
@System@AnsiString@$bctr$qqrrx17System@AnsiString: ; CODE XREF:	.text:004F3B0Ep
					; .text:004F3B2Ep ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		mov	[ebp-4], eax
		mov	eax, offset stru_57D114
		call	@__InitExceptBlockLDTC
		mov	word ptr [ebp-18h], 8
		mov	edx, [edx]
		xor	ecx, ecx
		mov	eax, [ebp-4]
		mov	[eax], ecx
		call	unknown_libname_71 ; Borland Visual Component Library &	Packages
		mov	edx, [ebp-28h]
		mov	fs:0, edx
		mov	eax, [ebp-4]
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4F52DC:				; CODE XREF: .text:004F15D2p
					; .text:004F160Ep ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		mov	esi, edx
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4F5306
		mov	eax, [ebp-4]
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		test	esi, 1
		jz	short loc_4F5306
		push	dword ptr [ebp-4] ; handle
		call	__rtl_close
		pop	ecx

loc_4F5306:				; CODE XREF: .text:004F52EBj
					; .text:004F52FBj
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4F530C:				; CODE XREF: .text:004F53B6p
					; .text:004F53ECp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, eax
		mov	edx, [edx]
		call	unknown_libname_71 ; Borland Visual Component Library &	Packages
		mov	eax, esi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; `__tpdsc__'[System::AnsiString *]
@$xt$p17System@AnsiString dd 4			  ; tpDtt ; DATA XREF: .data:stru_57D0E0o
					; .data:stru_57D104o
		dw 10h			; tpMask ; `__tpdsc__'[System::AnsiString]
		dw 0Ch			; tpName
		dd offset @$xt$17System@AnsiString; BaseType
		db 'AnsiString *',0     ; Name
		align 4

__InitVCL:				; DATA XREF: .data:004F602Co
		push	ebp
		mov	ebp, esp
		cmp	byte_4F61A8, 0
		setnz	al
		and	eax, 1
		push	eax
		push	dword_4F61F7
		cmp	byte_4F61E0, 0
		setnz	dl
		and	edx, 1
		push	edx
		cmp	byte_4F61E1, 0
		setnz	cl
		and	ecx, 1
		push	ecx
		call	loc_4011BC
		add	esp, 10h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4F537C:				; DATA XREF: .data:004F60F2o
		push	ebp
		mov	ebp, esp
		call	loc_401258
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__LateVCLInit:				; DATA XREF: .data:004F60B6o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		mov	eax, offset stru_57D168
		call	@__InitExceptBlockLDTC
		mov	word ptr [ebp-20h], 8
		mov	edx, offset aFalse_0 ; "false"
		lea	eax, [ebp-4]
		call	loc_4F5268
		inc	dword ptr [ebp-14h]
		lea	edx, [ebp-4]
		mov	eax, off_57D7DC
		call	loc_4F530C
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-4]
		mov	edx, 2
		call	loc_4F52DC
		mov	word ptr [ebp-20h], 14h
		mov	edx, offset aTrue ; "true"
		lea	eax, [ebp-8]
		call	loc_4F5268
		inc	dword ptr [ebp-14h]
		lea	edx, [ebp-8]
		mov	eax, off_57D7DC
		add	eax, 4
		call	loc_4F530C
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-8]
		mov	edx, 2
		call	loc_4F52DC
		mov	word ptr [ebp-20h], 20h
		mov	edx, offset asc_57D133 ; "->"
		lea	eax, [ebp-0Ch]
		call	loc_4F5268
		inc	dword ptr [ebp-14h]
		lea	edx, [ebp-0Ch]
		mov	eax, off_57D7DC+4
		call	loc_4F530C
		dec	dword ptr [ebp-14h]
		lea	eax, [ebp-0Ch]
		mov	edx, 2
		call	loc_4F52DC
		mov	ecx, [ebp-30h]
		mov	fs:0, ecx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__ClassCreate:				; CODE XREF: .text:004F3AEAp
					; .text:004F3B96p ...
		push	edx
		push	ecx
		call	dword ptr [eax-0Ch]
		pop	ecx
		pop	edx
		retn
; ---------------------------------------------------------------------------

__ClassDestroy:				; CODE XREF: .text:004F4D02p
					; .text:004F4D56p ...
		mov	edx, [eax]
		jmp	dword ptr [edx-8]
; ---------------------------------------------------------------------------

__AfterConstruction:			; CODE XREF: .text:004F3B7Cp
					; .text:004F3C28p ...
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx-1Ch]
		pop	eax
		retn
; ---------------------------------------------------------------------------

__BeforeDestruction:			; CODE XREF: .text:004F4CBFp
					; .text:004F4D13p ...
		test	dl, dl
		jg	short loc_4F545E
		retn
; ---------------------------------------------------------------------------

loc_4F545E:				; CODE XREF: .text:004F545Bj
		push	eax
		push	edx
		mov	edx, [eax]
		call	dword ptr [edx-18h]
		pop	edx
		pop	eax
		retn
; ---------------------------------------------------------------------------

__roundToInt64:
		sub	esp, 8
		fld	tbyte ptr [esp+0Ch]
		fistp	qword ptr [esp]
		pop	eax
		pop	edx
		retn
; ---------------------------------------------------------------------------


		
