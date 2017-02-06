.code

___doserrno:				; CODE XREF: .text:loc_4EA02Cp
					; .text:004EA048p
		call	__thread_data
		add	eax, 10h
		retn
; ---------------------------------------------------------------------------
		align 4

___IOerror:				; CODE XREF: .text:004E89FCp
					; .text:004E8A73p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jl	short loc_4EA03E
		cmp	ebx, 12Ah
		jle	short loc_4EA02C

loc_4EA027:				; CODE XREF: .text:004EA046j
		mov	ebx, 1

loc_4EA02C:				; CODE XREF: .text:004EA025j
		call	___doserrno
		mov	[eax], ebx
		movsx	eax, byte ptr dword_57A8E4[ebx]
		mov	ebx, eax
		jmp	short loc_4EA053
; ---------------------------------------------------------------------------

loc_4EA03E:				; CODE XREF: .text:004EA01Dj
		neg	ebx
		cmp	ebx, dword_57AAE0
		jge	short loc_4EA027
		call	___doserrno
		mov	dword ptr [eax], 0FFFFFFFFh

loc_4EA053:				; CODE XREF: .text:004EA03Cj
		call	___errno
		mov	[eax], ebx
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

___DOSerror:
		push	ebx
		call	GetLastError
		mov	ebx, eax
		and	ebx, 0FFFFh
		mov	eax, ebx
		and	eax, 0FFFFh
		push	eax
		call	___IOerror
		pop	ecx
		mov	eax, ebx
		pop	ebx
		retn
; ---------------------------------------------------------------------------

___NTerror:				; CODE XREF: .text:004E89BCp
					; .text:004E8A54p ...
		call	GetLastError
		and	eax, 0FFFFh
		push	eax
		call	___IOerror
		pop	ecx
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4EA094:				; CODE XREF: .text:004EA0D6p
					; .text:004EA1D9p
		push	ebx
		push	esi
		mov	esi, 32h
		mov	ebx, offset _streams
		jmp	short loc_4EA0BC
; ---------------------------------------------------------------------------

loc_4EA0A2:				; CODE XREF: .text:004EA0C3j
		movzx	eax, word ptr [ebx+12h]
		and	eax, 300h
		cmp	eax, 300h
		jnz	short loc_4EA0B9
		push	ebx		; stream
		call	_fflush
		pop	ecx

loc_4EA0B9:				; CODE XREF: .text:004EA0B0j
		add	ebx, 18h

loc_4EA0BC:				; CODE XREF: .text:004EA0A0j
		mov	edx, esi
		add	esi, 0FFFFFFFFh
		test	edx, edx
		jnz	short loc_4EA0A2
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4EA0C8:				; CODE XREF: .text:004EA1A8p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		test	byte ptr [ebx+13h], 2
		jz	short loc_4EA0DB
		call	loc_4EA094

loc_4EA0DB:				; CODE XREF: .text:004EA0D4j
		mov	eax, [ebx+0Ch]
		push	eax		; len
		mov	edx, [ebx+4]
		mov	[ebx], edx
		push	edx		; s
		movsx	eax, byte ptr [ebx+16h]
		push	eax		; handle
		call	___read
		add	esp, 0Ch
		mov	esi, eax
		mov	[ebx+8], esi
		mov	eax, esi
		mov	[ebx+8], eax
		test	eax, eax
		jle	short loc_4EA10A
		and	word ptr [ebx+12h], 0FFDFh
		xor	eax, eax
		jmp	short loc_4EA130
; ---------------------------------------------------------------------------

loc_4EA10A:				; CODE XREF: .text:004EA0FEj
		cmp	dword ptr [ebx+8], 0
		jnz	short loc_4EA123
		mov	dx, [ebx+12h]
		and	dx, 0FE7Fh
		or	dx, 20h
		mov	[ebx+12h], dx
		jmp	short loc_4EA12D
; ---------------------------------------------------------------------------

loc_4EA123:				; CODE XREF: .text:004EA10Ej
		xor	ecx, ecx
		mov	[ebx+8], ecx
		or	word ptr [ebx+12h], 10h

loc_4EA12D:				; CODE XREF: .text:004EA121j
		or	eax, 0FFFFFFFFh

loc_4EA130:				; CODE XREF: .text:004EA108j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

unknown_libname_12:			; CODE XREF: .text:004E9A13p
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		mov	eax, [ebp+8]
		mov	edx, [eax+8]
		inc	edx
		mov	[eax+8], edx
		push	eax
		call	loc_4ECCA8
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_13:			; CODE XREF: .text:004E99C8p
					; .text:004ECCB8p
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4EA15D
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EA15D:				; CODE XREF: .text:004EA155j
		mov	eax, [ebx+8]
		test	eax, eax
		jle	short loc_4EA17C
		dec	eax
		mov	[ebx+8], eax
		mov	edx, [ebx]
		inc	dword ptr [ebx]
		mov	al, [edx]
		xor	edx, edx
		mov	dl, al
		mov	byte_61BBD8, al
		mov	eax, edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EA17C:				; CODE XREF: .text:004EA162j
		cmp	dword ptr [ebx+8], 0
		jl	short loc_4EA190
		test	word ptr [ebx+12h], 110h
		jnz	short loc_4EA190
		test	byte ptr [ebx+12h], 1
		jnz	short loc_4EA19B

loc_4EA190:				; CODE XREF: .text:004EA180j
					; .text:004EA188j
		or	word ptr [ebx+12h], 10h
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EA19B:				; CODE XREF: .text:004EA18Ej
		or	word ptr [ebx+12h], 80h
		cmp	dword ptr [ebx+0Ch], 0
		jz	short loc_4EA1D3
		push	ebx
		call	loc_4EA0C8
		pop	ecx
		test	eax, eax
		jz	short loc_4EA1B8
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EA1B8:				; CODE XREF: .text:004EA1B0j
		mov	edx, [ebx+8]
		dec	edx
		mov	[ebx+8], edx
		mov	ecx, [ebx]
		inc	dword ptr [ebx]
		xor	edx, edx
		mov	al, [ecx]
		mov	byte_61BBD8, al
		mov	dl, al
		mov	eax, edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EA1D3:				; CODE XREF: .text:004EA1A5j
		test	byte ptr [ebx+13h], 2
		jz	short loc_4EA1DE
		call	loc_4EA094

loc_4EA1DE:				; CODE XREF: .text:004EA1D7j
		push	1		; len
		push	offset byte_61BBD8 ; s
		movsx	ecx, byte ptr [ebx+16h]
		push	ecx		; handle
		call	___read
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4EA222
		movsx	eax, byte ptr [ebx+16h]
		push	eax
		call	___eof
		pop	ecx
		dec	eax
		jz	short loc_4EA20B
		or	word ptr [ebx+12h], 10h
		jmp	short loc_4EA21C
; ---------------------------------------------------------------------------

loc_4EA20B:				; CODE XREF: .text:004EA202j
		mov	dx, [ebx+12h]
		and	dx, 0FE7Fh
		or	dx, 20h
		mov	[ebx+12h], dx

loc_4EA21C:				; CODE XREF: .text:004EA209j
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EA222:				; CODE XREF: .text:004EA1F4j
		and	word ptr [ebx+12h], 0FFDFh
		xor	eax, eax
		mov	al, byte_61BBD8
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl fputc(int	c, FILE	*stream)
_fputc:					; CODE XREF: .text:004E984Cp
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	bl, [ebp+8]
		mov	[ebp-2], bl
		mov	esi, 1
		mov	eax, esi
		neg	eax
		cmp	eax, [edi+8]
		jle	short loc_4EA293
		push	esi		; n
		lea	edx, [ebp-2]
		push	edx		; src
		mov	ecx, [edi]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	[edi+8], esi
		add	[edi], esi
		test	byte ptr [edi+12h], 8
		jz	short loc_4EA28A
		cmp	bl, 0Ah
		jz	short loc_4EA277
		cmp	bl, 0Dh
		jnz	short loc_4EA28A

loc_4EA277:				; CODE XREF: .text:004EA270j
		push	edi		; stream
		call	_fflush
		pop	ecx
		test	eax, eax
		jz	short loc_4EA28A
		or	eax, 0FFFFFFFFh
		jmp	loc_4EA33E
; ---------------------------------------------------------------------------

loc_4EA28A:				; CODE XREF: .text:004EA26Bj
					; .text:004EA275j ...
		xor	eax, eax
		mov	al, bl
		jmp	loc_4EA33E
; ---------------------------------------------------------------------------

loc_4EA293:				; CODE XREF: .text:004EA250j
		mov	ax, [edi+12h]
		test	al, 90h
		jnz	short loc_4EA29F
		test	al, 2
		jnz	short loc_4EA2AC

loc_4EA29F:				; CODE XREF: .text:004EA299j
		or	word ptr [edi+12h], 10h
		or	eax, 0FFFFFFFFh
		jmp	loc_4EA33E
; ---------------------------------------------------------------------------

loc_4EA2AC:				; CODE XREF: .text:004EA29Dj
		or	word ptr [edi+12h], 100h
		cmp	dword ptr [edi+0Ch], 0
		jz	short loc_4EA314
		cmp	dword ptr [edi+8], 0
		jz	short loc_4EA2CE
		push	edi		; stream
		call	_fflush
		pop	ecx
		test	eax, eax
		jz	short loc_4EA2CE
		or	eax, 0FFFFFFFFh
		jmp	short loc_4EA33E
; ---------------------------------------------------------------------------

loc_4EA2CE:				; CODE XREF: .text:004EA2BCj
					; .text:004EA2C7j
		mov	edx, [edi+0Ch]
		lea	ecx, [ebp-2]
		neg	edx
		mov	[edi+8], edx
		push	esi		; n
		push	ecx		; src
		mov	eax, [edi]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		lea	edx, [esi-1]
		add	[edi+8], edx
		add	[edi], esi
		test	byte ptr [edi+12h], 8
		jz	short loc_4EA30E
		cmp	bl, 0Ah
		jz	short loc_4EA2FE
		cmp	bl, 0Dh
		jnz	short loc_4EA30E

loc_4EA2FE:				; CODE XREF: .text:004EA2F7j
		push	edi		; stream
		call	_fflush
		pop	ecx
		test	eax, eax
		jz	short loc_4EA30E
		or	eax, 0FFFFFFFFh
		jmp	short loc_4EA33E
; ---------------------------------------------------------------------------

loc_4EA30E:				; CODE XREF: .text:004EA2F2j
					; .text:004EA2FCj ...
		xor	eax, eax
		mov	al, bl
		jmp	short loc_4EA33E
; ---------------------------------------------------------------------------

loc_4EA314:				; CODE XREF: .text:004EA2B6j
		push	esi		; len
		lea	edx, [ebp-2]
		push	edx		; buf
		movsx	ecx, byte ptr [edi+16h]
		push	ecx		; handle
		call	___write
		add	esp, 0Ch
		cmp	esi, eax
		jz	short loc_4EA33A
		test	byte ptr [edi+13h], 2
		jnz	short loc_4EA33A
		or	word ptr [edi+12h], 10h
		or	eax, 0FFFFFFFFh
		jmp	short loc_4EA33E
; ---------------------------------------------------------------------------

loc_4EA33A:				; CODE XREF: .text:004EA328j
					; .text:004EA32Ej
		xor	eax, eax
		mov	al, bl

loc_4EA33E:				; CODE XREF: .text:004EA285j
					; .text:004EA28Ej ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl __mkname(char *dest, int,	__int16)
___mkname:				; CODE XREF: .text:004E94D0p
					; .text:004EA3BEp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4EA361
		push	1Ah		; size
		push	1Ch		; int
		call	__thread_buf
		add	esp, 8
		mov	ebx, eax

loc_4EA361:				; CODE XREF: .text:004EA351j
		push	0Ah
		test	esi, esi
		jnz	short loc_4EA36E
		mov	eax, offset aTmp ; "TMP"
		jmp	short loc_4EA370
; ---------------------------------------------------------------------------

loc_4EA36E:				; CODE XREF: .text:004EA365j
		mov	eax, esi

loc_4EA370:				; CODE XREF: .text:004EA36Cj
		push	eax		; src
		push	ebx		; dest
		call	__stpcpy
		add	esp, 8
		push	eax
		movzx	edx, word ptr [ebp+10h]
		push	edx
		call	unknown_libname_16 ; BCC v4.x/5.x & BCB	v1.0/v7.0 BDS2006 win32	runtime
		add	esp, 0Ch
		push	offset a__19	; ".$$$"
		push	ebx		; dest
		call	_strcat
		add	esp, 8
		mov	eax, ebx
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl __tmpnam(char *dest, int)
___tmpnam:
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]

loc_4EA3A7:				; CODE XREF: .text:004EA3D5j
		inc	word ptr [esi]
		mov	ax, [esi]
		test	ax, ax
		jnz	short loc_4EA3B7
		mov	word ptr [esi],	1

loc_4EA3B7:				; CODE XREF: .text:004EA3B0j
		mov	dx, [esi]
		push	edx		; __int16
		push	0		; int
		push	ebx		; dest
		call	___mkname
		add	esp, 0Ch
		mov	ebx, eax
		push	0		; char
		push	ebx		; lpFileName
		call	j____access
		add	esp, 8
		test	eax, eax
		jz	short loc_4EA3A7
		mov	eax, ebx
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

__scannerw:				; CODE XREF: .text:004EB06Dp
					; .text:004EB091p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFA0h
		xor	eax, eax
		xor	edx, edx
		push	ebx
		push	esi
		push	edi
		mov	[ebp-4], eax
		mov	[ebp-8], edx

loc_4EA3F3:				; CODE XREF: .text:004EA49Bj
					; .text:004EA4A3j ...
		mov	ecx, [ebp+14h]
		add	dword ptr [ebp+14h], 2
		mov	si, [ecx]
		test	si, si
		jnz	short loc_4EA40A
		mov	eax, [ebp-4]
		jmp	loc_4EAC73
; ---------------------------------------------------------------------------

loc_4EA40A:				; CODE XREF: .text:004EA400j
		cmp	si, 25h
		jnz	short loc_4EA424
		mov	edx, [ebp+14h]
		add	dword ptr [ebp+14h], 2
		mov	si, [edx]
		cmp	si, 25h
		jnz	loc_4EA51E

loc_4EA424:				; CODE XREF: .text:004EA40Ej
		inc	dword ptr [ebp-8]
		mov	ecx, [ebp+10h]
		push	ecx
		call	dword ptr [ebp+8]
		pop	ecx
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0FFFFh
		mov	ebx, eax
		jz	loc_4EAC59
		test	si, 80h
		jnz	short loc_4EA4A0
		movzx	eax, si
		and	eax, 7Fh
		cmp	byte ptr dword_57AE98[eax], 1
		jnz	short loc_4EA4A0
		jmp	short loc_4EA476
; ---------------------------------------------------------------------------

loc_4EA459:				; CODE XREF: .text:004EA488j
		inc	dword ptr [ebp-8]
		mov	edx, [ebp+10h]
		push	edx
		call	dword ptr [ebp+8]
		pop	ecx
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0FFFFh
		mov	ebx, eax
		jz	loc_4EAC59

loc_4EA476:				; CODE XREF: .text:004EA457j
		test	bl, 80h
		jnz	short loc_4EA48A
		movzx	eax, bx
		and	eax, 7Fh
		cmp	byte ptr dword_57AE98[eax], 1
		jz	short loc_4EA459

loc_4EA48A:				; CODE XREF: .text:004EA479j
		movzx	ecx, bx
		mov	edx, [ebp+10h]
		push	edx
		push	ecx
		call	dword ptr [ebp+0Ch]
		add	esp, 8
		dec	dword ptr [ebp-8]
		jmp	loc_4EA3F3
; ---------------------------------------------------------------------------

loc_4EA4A0:				; CODE XREF: .text:004EA446j
					; .text:004EA455j
		cmp	si, bx
		jz	loc_4EA3F3
		movzx	edx, bx
		mov	eax, [ebp+10h]
		push	eax
		push	edx
		call	dword ptr [ebp+0Ch]
		add	esp, 8
		jmp	loc_4EAC70	; jumptable 004EA557 case 2
; ---------------------------------------------------------------------------
		jmp	loc_4EA3F3
; ---------------------------------------------------------------------------
		mov	ecx, [ebp+14h]
		cmp	word ptr [ecx],	0
		jz	loc_4EA3F3
		mov	eax, [ebp+10h]
		push	eax
		call	dword ptr [ebp+8]
		pop	ecx
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0FFFFh
		mov	esi, eax
		jz	loc_4EAC59
		mov	eax, [ebp+14h]
		add	dword ptr [ebp+14h], 2
		cmp	si, [eax]
		jz	short loc_4EA516
		movzx	ecx, si
		mov	edx, [ebp+10h]
		push	edx
		push	ecx
		mov	edi, [ebp+0Ch]
		call	edi
		movzx	edx, bx
		add	esp, 8
		mov	eax, [ebp+10h]
		push	eax
		push	edx
		call	edi
		add	esp, 8
		jmp	loc_4EAC70	; jumptable 004EA557 case 2
; ---------------------------------------------------------------------------

loc_4EA516:				; CODE XREF: .text:004EA4F2j
		inc	dword ptr [ebp-8]
		jmp	loc_4EA3F3
; ---------------------------------------------------------------------------

loc_4EA51E:				; CODE XREF: .text:004EA41Ej
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		mov	dword ptr [ebp-34h], 1
		mov	edi, 20h

loc_4EA531:				; CODE XREF: .text:004EA5CFj
					; .text:004EA5E1j ...
		test	si, 80h
		jz	short loc_4EA53F
		mov	eax, 2
		jmp	short loc_4EA54C
; ---------------------------------------------------------------------------

loc_4EA53F:				; CODE XREF: .text:004EA536j
		movzx	edx, si
		and	edx, 7Fh
		movsx	eax, byte ptr dword_57AE98[edx]

loc_4EA54C:				; CODE XREF: .text:004EA53Dj
		mov	edx, eax
		cmp	edx, 18h	; switch 25 cases
		ja	loc_4EA708	; jumptable 004EA557 default case
		jmp	ds:off_4EA55E[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4EA55E	dd offset loc_4EA708	; DATA XREF: .text:004EA557r
		dd offset loc_4EA708	; jump table for switch	statement
		dd offset loc_4EAC70
		dd offset loc_4EA708
		dd offset loc_4EA5C2
		dd offset loc_4EA60A
		dd offset loc_4EAA00
		dd offset loc_4EAA00
		dd offset loc_4EA6DA
		dd offset loc_4EA6DA
		dd offset loc_4EA6F5
		dd offset loc_4EA833
		dd offset loc_4EA5F8
		dd offset loc_4EA5D4
		dd offset loc_4EA5E6
		dd offset loc_4EA6E3
		dd offset loc_4EA89D
		dd offset loc_4EA89D
		dd offset loc_4EAAF3
		dd offset loc_4EA6FC
		dd offset loc_4EA6EC
		dd offset loc_4EA7E0
		dd offset loc_4EA63A
		dd offset loc_4EA64C
		dd offset loc_4EA65E
; ---------------------------------------------------------------------------

loc_4EA5C2:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		or	edi, 1		; jumptable 004EA557 case 4
		mov	ecx, [ebp+14h]
		mov	si, [ecx]
		add	dword ptr [ebp+14h], 2
		jmp	loc_4EA531
; ---------------------------------------------------------------------------

loc_4EA5D4:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		or	edi, 2		; jumptable 004EA557 case 13
		mov	eax, [ebp+14h]
		mov	si, [eax]
		add	dword ptr [ebp+14h], 2
		jmp	loc_4EA531
; ---------------------------------------------------------------------------

loc_4EA5E6:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		or	edi, 4		; jumptable 004EA557 case 14
		mov	eax, [ebp+14h]
		mov	si, [eax]
		add	dword ptr [ebp+14h], 2
		jmp	loc_4EA531
; ---------------------------------------------------------------------------

loc_4EA5F8:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		or	edi, 8		; jumptable 004EA557 case 12
		mov	eax, [ebp+14h]
		mov	si, [eax]
		add	dword ptr [ebp+14h], 2
		jmp	loc_4EA531
; ---------------------------------------------------------------------------

loc_4EA60A:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		cmp	dword ptr [ebp-10h], 0 ; jumptable 004EA557 case 5
		jge	short loc_4EA618
		movzx	eax, si
		add	eax, 0FFFFFFD0h
		jmp	short loc_4EA628
; ---------------------------------------------------------------------------

loc_4EA618:				; CODE XREF: .text:004EA60Ej
		mov	eax, [ebp-10h]
		add	eax, eax
		lea	eax, [eax+eax*4]
		movzx	edx, si
		add	eax, edx
		add	eax, 0FFFFFFD0h

loc_4EA628:				; CODE XREF: .text:004EA616j
		mov	[ebp-10h], eax
		mov	ecx, [ebp+14h]
		mov	si, [ecx]
		add	dword ptr [ebp+14h], 2
		jmp	loc_4EA531
; ---------------------------------------------------------------------------

loc_4EA63A:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		and	edi, 0FFFFFFDFh	; jumptable 004EA557 case 22
		mov	eax, [ebp+14h]
		mov	si, [eax]
		add	dword ptr [ebp+14h], 2
		jmp	loc_4EA531
; ---------------------------------------------------------------------------

loc_4EA64C:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		or	edi, 20h	; jumptable 004EA557 case 23
		mov	eax, [ebp+14h]
		mov	si, [eax]
		add	dword ptr [ebp+14h], 2
		jmp	loc_4EA531
; ---------------------------------------------------------------------------

loc_4EA65E:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		mov	eax, [ebp+14h]	; jumptable 004EA557 case 24
		cmp	word ptr [eax],	36h
		jnz	short loc_4EA67D
		mov	edx, [ebp+14h]
		cmp	word ptr [edx+2], 34h
		jnz	short loc_4EA67D
		and	edi, 0FFFFFFF9h
		or	edi, 8
		add	dword ptr [ebp+14h], 4
		jmp	short loc_4EA6CB
; ---------------------------------------------------------------------------

loc_4EA67D:				; CODE XREF: .text:004EA665j
					; .text:004EA66Fj
		mov	ecx, [ebp+14h]
		cmp	word ptr [ecx],	33h
		jnz	short loc_4EA69C
		mov	eax, [ebp+14h]
		cmp	word ptr [eax+2], 32h
		jnz	short loc_4EA69C
		and	edi, 0FFFFFFF5h
		or	edi, 4
		add	dword ptr [ebp+14h], 4
		jmp	short loc_4EA6CB
; ---------------------------------------------------------------------------

loc_4EA69C:				; CODE XREF: .text:004EA684j
					; .text:004EA68Ej
		mov	edx, [ebp+14h]
		cmp	word ptr [edx],	31h
		jnz	short loc_4EA6BB
		mov	ecx, [ebp+14h]
		cmp	word ptr [ecx+2], 36h
		jnz	short loc_4EA6BB
		and	edi, 0FFFFFFF3h
		or	edi, 2
		add	dword ptr [ebp+14h], 4
		jmp	short loc_4EA6CB
; ---------------------------------------------------------------------------

loc_4EA6BB:				; CODE XREF: .text:004EA6A3j
					; .text:004EA6ADj
		mov	eax, [ebp+14h]
		cmp	word ptr [eax],	38h
		jnz	short loc_4EA6CB
		and	edi, 0FFFFFFF1h
		add	dword ptr [ebp+14h], 2

loc_4EA6CB:				; CODE XREF: .text:004EA67Bj
					; .text:004EA69Aj ...
		mov	edx, [ebp+14h]
		mov	si, [edx]
		add	dword ptr [ebp+14h], 2
		jmp	loc_4EA531
; ---------------------------------------------------------------------------

loc_4EA6DA:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		mov	dword ptr [ebp-14h], 0Ah ; jumptable 004EA557 cases 8,9
		jmp	short loc_4EA708 ; jumptable 004EA557 default case
; ---------------------------------------------------------------------------

loc_4EA6E3:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		mov	dword ptr [ebp-14h], 8 ; jumptable 004EA557 case 15
		jmp	short loc_4EA708 ; jumptable 004EA557 default case
; ---------------------------------------------------------------------------

loc_4EA6EC:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		mov	dword ptr [ebp-14h], 10h ; jumptable 004EA557 case 20
		jmp	short loc_4EA708 ; jumptable 004EA557 default case
; ---------------------------------------------------------------------------

loc_4EA6F5:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		xor	eax, eax	; jumptable 004EA557 case 10
		mov	[ebp-14h], eax
		jmp	short loc_4EA708 ; jumptable 004EA557 default case
; ---------------------------------------------------------------------------

loc_4EA6FC:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		mov	eax, [ebp-8]	; jumptable 004EA557 case 19
		cdq
		mov	[ebp-24h], eax
		mov	[ebp-20h], edx
		jmp	short loc_4EA74C
; ---------------------------------------------------------------------------

loc_4EA708:				; CODE XREF: .text:004EA551j
					; .text:004EA557j ...
		lea	ecx, [ebp-0Ch]	; jumptable 004EA557 default case
		lea	eax, [ebp-8]
		push	ecx
		push	eax
		mov	edx, [ebp-10h]
		and	edx, 7FFFh
		push	edx
		mov	ecx, [ebp-14h]
		push	ecx
		mov	eax, [ebp+10h]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		call	___scanwtoint64
		add	esp, 1Ch
		mov	[ebp-24h], eax
		mov	[ebp-20h], edx
		cmp	dword ptr [ebp-0Ch], 0
		jl	loc_4EAC59
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_4EAC70	; jumptable 004EA557 case 2

loc_4EA74C:				; CODE XREF: .text:004EA706j
		cmp	si, 41h
		jb	short loc_4EA761
		cmp	si, 5Ah
		ja	short loc_4EA761
		cmp	si, 58h
		jz	short loc_4EA761
		or	edi, 4

loc_4EA761:				; CODE XREF: .text:004EA750j
					; .text:004EA756j ...
		test	edi, 1
		jnz	loc_4EA3F3
		test	edi, 8
		jz	short loc_4EA78C
		add	dword ptr [ebp+18h], 4
		mov	eax, [ebp+18h]
		mov	edx, [eax-4]
		mov	ecx, [ebp-24h]
		mov	[edx], ecx
		mov	ecx, [ebp-20h]
		mov	[edx+4], ecx
		jmp	short loc_4EA7CE
; ---------------------------------------------------------------------------

loc_4EA78C:				; CODE XREF: .text:004EA773j
		test	edi, 4
		jz	short loc_4EA7A5
		mov	eax, [ebp-24h]
		add	dword ptr [ebp+18h], 4
		mov	edx, [ebp+18h]
		mov	ecx, [edx-4]
		mov	[ecx], eax
		jmp	short loc_4EA7CE
; ---------------------------------------------------------------------------

loc_4EA7A5:				; CODE XREF: .text:004EA792j
		test	edi, 2
		jz	short loc_4EA7BF
		mov	eax, [ebp-24h]
		add	dword ptr [ebp+18h], 4
		mov	edx, [ebp+18h]
		mov	ecx, [edx-4]
		mov	[ecx], ax
		jmp	short loc_4EA7CE
; ---------------------------------------------------------------------------

loc_4EA7BF:				; CODE XREF: .text:004EA7ABj
		mov	eax, [ebp-24h]
		add	dword ptr [ebp+18h], 4
		mov	edx, [ebp+18h]
		mov	ecx, [edx-4]
		mov	[ecx], eax

loc_4EA7CE:				; CODE XREF: .text:004EA78Aj
					; .text:004EA7A3j ...
		cmp	si, 6Eh
		jz	loc_4EA3F3
		inc	dword ptr [ebp-4]
		jmp	loc_4EA3F3
; ---------------------------------------------------------------------------

loc_4EA7E0:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		lea	eax, [ebp-0Ch]	; jumptable 004EA557 case 21
		lea	edx, [ebp-8]
		push	eax
		push	edx
		push	8
		push	10h
		mov	ecx, [ebp+10h]
		push	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	___scanwtoint64
		add	esp, 1Ch
		mov	[ebp-24h], eax
		mov	[ebp-20h], edx
		cmp	dword ptr [ebp-0Ch], 0
		jle	loc_4EAC70	; jumptable 004EA557 case 2
		test	edi, 1
		jnz	loc_4EA3F3
		mov	eax, [ebp-24h]
		add	dword ptr [ebp+18h], 4
		mov	edx, [ebp+18h]
		mov	ecx, [edx-4]
		mov	[ecx], eax
		inc	dword ptr [ebp-4]
		jmp	loc_4EA3F3
; ---------------------------------------------------------------------------

loc_4EA833:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		lea	eax, [ebp-0Ch]	; jumptable 004EA557 case 11
		lea	edx, [ebp-8]
		push	eax
		push	edx
		mov	ecx, [ebp-10h]
		and	ecx, 7FFFh
		push	ecx
		mov	eax, [ebp+10h]
		push	eax
		lea	eax, [ebp-30h]
		mov	edx, [ebp+0Ch]
		push	edx
		mov	ecx, [ebp+8]
		push	ecx
		push	eax
		call	loc_4EDA18
		add	esp, 1Ch
		cmp	dword ptr [ebp-0Ch], 0
		jl	loc_4EAC59
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_4EAC70	; jumptable 004EA557 case 2
		test	edi, 1
		jnz	loc_4EA3F3
		push	edi
		add	dword ptr [ebp+18h], 4
		mov	edx, [ebp+18h]
		mov	ecx, [edx-4]
		push	ecx
		lea	eax, [ebp-30h]
		push	eax
		call	loc_4EDA06
		add	esp, 0Ch
		inc	dword ptr [ebp-4]
		jmp	loc_4EA3F3
; ---------------------------------------------------------------------------

loc_4EA89D:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		test	edi, 4		; jumptable 004EA557 cases 16,17
		jz	short loc_4EA8AE
		mov	dword ptr [ebp-34h], 1
		jmp	short loc_4EA8CF
; ---------------------------------------------------------------------------

loc_4EA8AE:				; CODE XREF: .text:004EA8A3j
		test	edi, 2
		jz	short loc_4EA8BD
		xor	edx, edx
		mov	[ebp-34h], edx
		jmp	short loc_4EA8CF
; ---------------------------------------------------------------------------

loc_4EA8BD:				; CODE XREF: .text:004EA8B4j
		cmp	eax, 11h
		jnz	short loc_4EA8CF
		mov	ecx, [ebp-34h]
		cmp	ecx, 1
		sbb	eax, eax
		neg	eax
		mov	[ebp-34h], eax

loc_4EA8CF:				; CODE XREF: .text:004EA8ACj
					; .text:004EA8BBj ...
		inc	dword ptr [ebp-8]
		mov	edx, [ebp+10h]
		push	edx
		call	dword ptr [ebp+8]
		pop	ecx
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0FFFFh
		mov	ebx, eax
		jz	loc_4EAC59
		test	bl, 80h
		jnz	short loc_4EA900
		movzx	eax, bx
		and	eax, 7Fh
		cmp	byte ptr dword_57AE98[eax], 1
		jz	short loc_4EA8CF

loc_4EA900:				; CODE XREF: .text:004EA8EFj
		test	edi, 1
		jnz	short loc_4EA92D
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_4EA91D
		add	dword ptr [ebp+18h], 4
		mov	edx, [ebp+18h]
		mov	ecx, [edx-4]
		mov	[ebp-38h], ecx
		jmp	short loc_4EA92A
; ---------------------------------------------------------------------------

loc_4EA91D:				; CODE XREF: .text:004EA90Cj
		add	dword ptr [ebp+18h], 4
		mov	eax, [ebp+18h]
		mov	edx, [eax-4]
		mov	[ebp-38h], edx

loc_4EA92A:				; CODE XREF: .text:004EA91Bj
		inc	dword ptr [ebp-4]

loc_4EA92D:				; CODE XREF: .text:004EA906j
		cmp	dword ptr [ebp-10h], 0FFFFFFFFh
		jnz	short loc_4EA93A
		mov	dword ptr [ebp-10h], 7FFFh

loc_4EA93A:				; CODE XREF: .text:004EA931j
					; .text:004EA9BFj
		test	edi, 1
		jnz	short loc_4EA985
		cmp	dword ptr [ebp-34h], 1
		jnz	short loc_4EA954
		mov	ecx, [ebp-38h]
		add	dword ptr [ebp-38h], 2
		mov	[ecx], bx
		jmp	short loc_4EA985
; ---------------------------------------------------------------------------

loc_4EA954:				; CODE XREF: .text:004EA946j
		push	ebx		; wc
		lea	eax, [ebp-3Eh]
		push	eax		; s
		call	_wctomb
		add	esp, 8
		mov	edx, eax
		lea	eax, [ebp-3Eh]
		test	edx, edx
		jle	short loc_4EA982
		jmp	short loc_4EA977
; ---------------------------------------------------------------------------

loc_4EA96C:				; CODE XREF: .text:004EA97Ej
		mov	cl, [eax]
		mov	ebx, [ebp-38h]
		inc	dword ptr [ebp-38h]
		inc	eax
		mov	[ebx], cl

loc_4EA977:				; CODE XREF: .text:004EA96Aj
		mov	ecx, edx
		add	edx, 0FFFFFFFFh
		test	ecx, ecx
		jnz	short loc_4EA96C
		jmp	short loc_4EA985
; ---------------------------------------------------------------------------

loc_4EA982:				; CODE XREF: .text:004EA968j
		dec	dword ptr [ebp-8]

loc_4EA985:				; CODE XREF: .text:004EA940j
					; .text:004EA952j ...
		inc	dword ptr [ebp-8]
		mov	eax, [ebp+10h]
		push	eax
		call	dword ptr [ebp+8]
		pop	ecx
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0FFFFh
		mov	ebx, eax
		jz	short loc_4EA9C5
		test	bx, bx
		jz	short loc_4EA9C5
		test	bl, 80h
		jnz	short loc_4EA9B7
		movzx	eax, bx
		and	eax, 7Fh
		cmp	byte ptr dword_57AE98[eax], 1
		jz	short loc_4EA9C5

loc_4EA9B7:				; CODE XREF: .text:004EA9A6j
		dec	dword ptr [ebp-10h]
		mov	edx, [ebp-10h]
		test	edx, edx
		jg	loc_4EA93A

loc_4EA9C5:				; CODE XREF: .text:004EA99Cj
					; .text:004EA9A1j ...
		movzx	eax, bx
		mov	ecx, [ebp+10h]
		push	ecx
		push	eax
		call	dword ptr [ebp+0Ch]
		add	esp, 8
		dec	dword ptr [ebp-8]
		test	edi, 1
		jnz	loc_4EA3F3
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_4EA9F5
		mov	edx, [ebp-38h]
		mov	word ptr [edx],	0
		jmp	loc_4EA3F3
; ---------------------------------------------------------------------------

loc_4EA9F5:				; CODE XREF: .text:004EA9E6j
		mov	ecx, [ebp-38h]
		mov	byte ptr [ecx],	0
		jmp	loc_4EA3F3
; ---------------------------------------------------------------------------

loc_4EAA00:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		test	edi, 4		; jumptable 004EA557 cases 6,7
		jz	short loc_4EAA11
		mov	dword ptr [ebp-34h], 1
		jmp	short loc_4EAA32
; ---------------------------------------------------------------------------

loc_4EAA11:				; CODE XREF: .text:004EAA06j
		test	edi, 2
		jz	short loc_4EAA20
		xor	eax, eax
		mov	[ebp-34h], eax
		jmp	short loc_4EAA32
; ---------------------------------------------------------------------------

loc_4EAA20:				; CODE XREF: .text:004EAA17j
		cmp	eax, 7
		jnz	short loc_4EAA32
		mov	edx, [ebp-34h]
		cmp	edx, 1
		sbb	ecx, ecx
		neg	ecx
		mov	[ebp-34h], ecx

loc_4EAA32:				; CODE XREF: .text:004EAA0Fj
					; .text:004EAA1Ej ...
		test	edi, 1
		jnz	short loc_4EAA5C
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_4EAA4F
		add	dword ptr [ebp+18h], 4
		mov	eax, [ebp+18h]
		mov	edx, [eax-4]
		mov	[ebp-38h], edx
		jmp	short loc_4EAA5C
; ---------------------------------------------------------------------------

loc_4EAA4F:				; CODE XREF: .text:004EAA3Ej
		add	dword ptr [ebp+18h], 4
		mov	ecx, [ebp+18h]
		mov	eax, [ecx-4]
		mov	[ebp-38h], eax

loc_4EAA5C:				; CODE XREF: .text:004EAA38j
					; .text:004EAA4Dj
		cmp	dword ptr [ebp-10h], 0
		jge	short loc_4EAA69
		mov	dword ptr [ebp-10h], 1

loc_4EAA69:				; CODE XREF: .text:004EAA60j
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4EAADF

loc_4EAA6F:				; CODE XREF: .text:004EAADDj
		inc	dword ptr [ebp-8]
		mov	edx, [ebp+10h]
		push	edx
		call	dword ptr [ebp+8]
		pop	ecx
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0FFFFh
		mov	ebx, eax
		jz	loc_4EAC59
		test	edi, 1
		jnz	short loc_4EAAD5
		cmp	dword ptr [ebp-34h], 1
		jnz	short loc_4EAAA6
		mov	eax, [ebp-38h]
		add	dword ptr [ebp-38h], 2
		mov	[eax], bx
		jmp	short loc_4EAAD5
; ---------------------------------------------------------------------------

loc_4EAAA6:				; CODE XREF: .text:004EAA98j
		push	ebx		; wc
		lea	edx, [ebp-40h]
		push	edx		; s
		call	_wctomb
		add	esp, 8
		mov	edx, eax
		lea	eax, [ebp-40h]
		test	edx, edx
		jle	short loc_4EAAD5
		jmp	short loc_4EAACC
; ---------------------------------------------------------------------------

loc_4EAABE:				; CODE XREF: .text:004EAAD3j
		movsx	ecx, byte ptr [eax]
		mov	ebx, [ebp-38h]
		add	dword ptr [ebp-38h], 2
		mov	[ebx], cx
		inc	eax

loc_4EAACC:				; CODE XREF: .text:004EAABCj
		mov	ecx, edx
		add	edx, 0FFFFFFFFh
		test	ecx, ecx
		jnz	short loc_4EAABE

loc_4EAAD5:				; CODE XREF: .text:004EAA92j
					; .text:004EAAA4j ...
		dec	dword ptr [ebp-10h]
		mov	eax, [ebp-10h]
		test	eax, eax
		jg	short loc_4EAA6F

loc_4EAADF:				; CODE XREF: .text:004EAA6Dj
		test	edi, 1
		jnz	loc_4EA3F3
		inc	dword ptr [ebp-4]
		jmp	loc_4EA3F3
; ---------------------------------------------------------------------------

loc_4EAAF3:				; CODE XREF: .text:004EA557j
					; DATA XREF: .text:off_4EA55Eo
		push	20h		; jumptable 004EA557 case 18
		push	0		; c
		lea	edx, [ebp-60h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		xor	eax, eax
		mov	[ebp-18h], eax
		mov	edx, [ebp+14h]
		add	dword ptr [ebp+14h], 2
		mov	bx, [edx]
		cmp	bx, 5Eh
		jnz	short loc_4EAB29
		mov	dword ptr [ebp-18h], 1
		mov	ecx, [ebp+14h]
		mov	bx, [ecx]
		add	dword ptr [ebp+14h], 2

loc_4EAB29:				; CODE XREF: .text:004EAB16j
					; .text:004EAB5Ej ...
		mov	esi, ebx
		test	bx, bx
		jz	loc_4EAC70	; jumptable 004EA557 case 2
		movzx	eax, bx
		mov	ecx, eax
		and	ecx, 7
		mov	dl, 1
		shl	dl, cl
		sar	eax, 3
		and	eax, 1Fh
		or	[ebp+eax-60h], dl
		mov	eax, [ebp+14h]
		add	dword ptr [ebp+14h], 2
		mov	bx, [eax]
		cmp	bx, 5Dh
		jz	short loc_4EAB9B
		cmp	bx, 2Dh
		jnz	short loc_4EAB29
		mov	edx, [ebp+14h]
		cmp	si, [edx]
		jnb	short loc_4EAB29
		mov	ecx, [ebp+14h]
		cmp	word ptr [ecx],	5Dh
		jz	short loc_4EAB29
		mov	eax, [ebp+14h]
		mov	bx, [eax]
		add	dword ptr [ebp+14h], 2
		jmp	short loc_4EAB93
; ---------------------------------------------------------------------------

loc_4EAB7D:				; CODE XREF: .text:004EAB97j
		movzx	eax, si
		mov	ecx, eax
		and	ecx, 7
		mov	dl, 1
		shl	dl, cl
		sar	eax, 3
		and	eax, 1Fh
		or	[ebp+eax-60h], dl

loc_4EAB93:				; CODE XREF: .text:004EAB7Bj
		inc	esi
		cmp	bx, si
		ja	short loc_4EAB7D
		jmp	short loc_4EAB29
; ---------------------------------------------------------------------------

loc_4EAB9B:				; CODE XREF: .text:004EAB58j
		cmp	dword ptr [ebp-10h], 0FFFFFFFFh
		jnz	short loc_4EABA8
		mov	dword ptr [ebp-10h], 7FFFh

loc_4EABA8:				; CODE XREF: .text:004EAB9Fj
		test	edi, 1
		jnz	short loc_4EABBD
		add	dword ptr [ebp+18h], 4
		mov	eax, [ebp+18h]
		mov	edx, [eax-4]
		mov	[ebp-38h], edx

loc_4EABBD:				; CODE XREF: .text:004EABAEj
		xor	esi, esi
		jmp	short loc_4EAC14
; ---------------------------------------------------------------------------

loc_4EABC1:				; CODE XREF: .text:004EAC17j
		inc	dword ptr [ebp-8]
		mov	eax, [ebp+10h]
		push	eax
		call	dword ptr [ebp+8]
		pop	ecx
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0FFFFh
		mov	ebx, eax
		jz	short loc_4EAC19
		movzx	eax, bx
		mov	ecx, eax
		mov	edx, 1
		sar	eax, 3
		and	ecx, 7
		and	eax, 1Fh
		shl	edx, cl
		movsx	eax, byte ptr [ebp+eax-60h]
		and	edx, eax
		setnz	dl
		and	edx, 1
		cmp	edx, [ebp-18h]
		jz	short loc_4EAC19
		inc	esi
		test	edi, 1
		jnz	short loc_4EAC14
		mov	ecx, [ebp-38h]
		add	dword ptr [ebp-38h], 2
		mov	[ecx], bx

loc_4EAC14:				; CODE XREF: .text:004EABBFj
					; .text:004EAC08j
		dec	dword ptr [ebp-10h]
		jns	short loc_4EABC1

loc_4EAC19:				; CODE XREF: .text:004EABD8j
					; .text:004EABFFj
		cmp	dword ptr [ebp-10h], 0
		jl	short loc_4EAC30
		movzx	edx, bx
		mov	eax, [ebp+10h]
		push	eax
		push	edx
		call	dword ptr [ebp+0Ch]
		add	esp, 8
		dec	dword ptr [ebp-8]

loc_4EAC30:				; CODE XREF: .text:004EAC1Dj
		test	esi, esi
		jz	short loc_4EAC4B
		test	edi, 1
		jnz	short loc_4EAC4B
		mov	ecx, [ebp-38h]
		add	dword ptr [ebp-38h], 2
		mov	word ptr [ecx],	0
		inc	dword ptr [ebp-4]

loc_4EAC4B:				; CODE XREF: .text:004EAC32j
					; .text:004EAC3Aj
		cmp	dword ptr [ebp-1Ch], 0FFFFh
		jz	short loc_4EAC59
		jmp	loc_4EA3F3
; ---------------------------------------------------------------------------

loc_4EAC59:				; CODE XREF: .text:004EA43Bj
					; .text:004EA470j ...
		mov	eax, [ebp+10h]
		push	eax
		push	0FFFFFFFFh
		call	dword ptr [ebp+0Ch]
		add	esp, 8
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4EAC70 ; jumptable 004EA557 case 2
		or	eax, 0FFFFFFFFh
		jmp	short loc_4EAC73
; ---------------------------------------------------------------------------

loc_4EAC70:				; CODE XREF: .text:004EA4B7j
					; .text:004EA511j ...
		mov	eax, [ebp-4]	; jumptable 004EA557 case 2

loc_4EAC73:				; CODE XREF: .text:004EA405j
					; .text:004EAC6Ej
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

___scanwtoint64:			; CODE XREF: .text:004EA72Ap
					; .text:004EA7F8p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		xor	eax, eax
		xor	edx, edx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		xor	edi, edi
		mov	byte ptr [ebp-1], 0
		mov	[ebp-8], eax
		mov	dword ptr [ebp-0Ch], 1
		mov	[ebp-10h], edx
		mov	dword ptr [ebp-18h], 0
		mov	dword ptr [ebp-14h], 0

loc_4EACAD:				; CODE XREF: .text:004EACCEj
					; .text:004EAD01j ...
		inc	dword ptr [ebp-8]
		mov	eax, [ebp+10h]
		push	eax
		call	dword ptr [ebp+8]
		pop	ecx
		mov	ebx, eax
		test	edi, edi
		jnz	short loc_4EACD5
		cmp	bx, 80h
		jnb	short loc_4EACD0
		push	ebx		; c
		call	_iswspace
		pop	ecx
		test	eax, eax
		jnz	short loc_4EACAD

loc_4EACD0:				; CODE XREF: .text:004EACC3j
		mov	edi, 1

loc_4EACD5:				; CODE XREF: .text:004EACBCj
		dec	dword ptr [ebp+18h]
		js	loc_4EAE61
		cmp	edi, 1
		jnz	short loc_4EAD03
		mov	edi, 2
		cmp	bx, 2Bh
		jz	short loc_4EACF4
		cmp	bx, 2Dh
		jnz	short loc_4EAD03

loc_4EACF4:				; CODE XREF: .text:004EACECj
		cmp	bx, 2Dh
		setz	al
		and	eax, 1
		mov	[ebp-1], al
		jmp	short loc_4EACAD
; ---------------------------------------------------------------------------

loc_4EAD03:				; CODE XREF: .text:004EACE1j
					; .text:004EACF2j
		cmp	edi, 2
		jnz	short loc_4EAD75
		mov	edi, 3
		cmp	bx, 30h
		jnz	short loc_4EAD58
		mov	dword ptr [ebp-10h], 1
		test	esi, esi
		jz	short loc_4EAD23
		cmp	esi, 10h
		jnz	short loc_4EAD58

loc_4EAD23:				; CODE XREF: .text:004EAD1Cj
		inc	dword ptr [ebp-8]
		mov	eax, [ebp+10h]
		push	eax
		call	dword ptr [ebp+8]
		pop	ecx
		mov	ebx, eax
		dec	dword ptr [ebp+18h]
		js	loc_4EAE61
		cmp	bx, 78h
		jz	short loc_4EAD45
		cmp	bx, 58h
		jnz	short loc_4EAD4F

loc_4EAD45:				; CODE XREF: .text:004EAD3Dj
		mov	esi, 10h
		jmp	loc_4EACAD
; ---------------------------------------------------------------------------

loc_4EAD4F:				; CODE XREF: .text:004EAD43j
		test	esi, esi
		jnz	short loc_4EAD58
		mov	esi, 8

loc_4EAD58:				; CODE XREF: .text:004EAD11j
					; .text:004EAD21j ...
		test	esi, esi
		jnz	short loc_4EAD63
		mov	esi, 0Ah
		jmp	short loc_4EAD75
; ---------------------------------------------------------------------------

loc_4EAD63:				; CODE XREF: .text:004EAD5Aj
		cmp	esi, 1
		jl	loc_4EAE61
		cmp	esi, 24h
		jg	loc_4EAE61

loc_4EAD75:				; CODE XREF: .text:004EAD06j
					; .text:004EAD61j
		cmp	edi, 3
		jnz	loc_4EACAD
		cmp	bx, 30h
		jb	short loc_4EAD95
		cmp	bx, 39h
		ja	short loc_4EAD95
		movzx	eax, bx
		add	eax, 0FFFFFFD0h
		mov	[ebp-1Ch], eax
		jmp	short loc_4EADC9
; ---------------------------------------------------------------------------

loc_4EAD95:				; CODE XREF: .text:004EAD82j
					; .text:004EAD88j
		cmp	bx, 61h
		jb	short loc_4EADAC
		cmp	bx, 7Ah
		ja	short loc_4EADAC
		movzx	edx, bx
		add	edx, 0FFFFFFA9h
		mov	[ebp-1Ch], edx
		jmp	short loc_4EADC9
; ---------------------------------------------------------------------------

loc_4EADAC:				; CODE XREF: .text:004EAD99j
					; .text:004EAD9Fj
		cmp	bx, 41h
		jb	loc_4EAE61
		cmp	bx, 5Ah
		ja	loc_4EAE61
		movzx	ecx, bx
		add	ecx, 0FFFFFFC9h
		mov	[ebp-1Ch], ecx

loc_4EADC9:				; CODE XREF: .text:004EAD93j
					; .text:004EADAAj
		cmp	esi, [ebp-1Ch]
		jle	loc_4EAE61
		inc	dword ptr [ebp-10h]
		mov	eax, [ebp-18h]
		mov	[ebp-24h], eax
		mov	eax, [ebp-14h]
		mov	[ebp-20h], eax
		mov	eax, esi
		cdq
		push	edx
		push	eax
		mov	eax, [ebp-18h]
		mov	edx, [ebp-14h]
		call	__llmul
		push	edx
		push	eax
		mov	eax, [ebp-1Ch]
		cdq
		add	eax, [esp]
		adc	edx, [esp+4]
		add	esp, 8
		mov	[ebp-18h], eax
		mov	[ebp-14h], edx
		mov	eax, esi
		cdq
		push	edx
		push	eax
		mov	eax, [ebp-18h]
		mov	edx, [ebp-14h]
		push	edx
		push	eax
		mov	eax, [ebp-1Ch]
		cdq
		sub	[esp], eax
		sbb	[esp+4], edx
		pop	eax
		pop	edx
		call	__lludiv
		cmp	edx, [ebp-20h]
		jnz	short loc_4EAE2E
		cmp	eax, [ebp-24h]

loc_4EAE2E:				; CODE XREF: .text:004EAE29j
		jz	loc_4EACAD
		mov	dword ptr [ebp-0Ch], 2
		cmp	byte ptr [ebp-1], 0
		jz	short loc_4EAE4A
		xor	eax, eax
		mov	edx, 80000000h
		jmp	short loc_4EAE54
; ---------------------------------------------------------------------------

loc_4EAE4A:				; CODE XREF: .text:004EAE3Fj
		mov	eax, 0FFFFFFFFh
		mov	edx, 7FFFFFFFh

loc_4EAE54:				; CODE XREF: .text:004EAE48j
		mov	[ebp-18h], eax
		mov	[ebp-14h], edx
		jmp	short loc_4EAE61
; ---------------------------------------------------------------------------
		jmp	loc_4EACAD
; ---------------------------------------------------------------------------

loc_4EAE61:				; CODE XREF: .text:004EACD8j
					; .text:004EAD33j ...
		cmp	dword ptr [ebp-0Ch], 2
		jz	short loc_4EAE8A
		movzx	eax, bx
		mov	ecx, [ebp+10h]
		push	ecx
		push	eax
		call	dword ptr [ebp+0Ch]
		add	esp, 8
		dec	dword ptr [ebp-8]
		cmp	byte ptr [ebp-1], 0
		jz	short loc_4EAE8A
		mov	eax, [ebp-18h]
		neg	eax
		cdq
		mov	[ebp-18h], eax
		mov	[ebp-14h], edx

loc_4EAE8A:				; CODE XREF: .text:004EAE65j
					; .text:004EAE7Cj
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4EAEA5
		mov	ecx, 0FFFFh
		cmp	bx, 0FFFFh
		jz	short loc_4EAEA2
		add	ecx, 0FFFF0001h

loc_4EAEA2:				; CODE XREF: .text:004EAE9Aj
		mov	[ebp-0Ch], ecx

loc_4EAEA5:				; CODE XREF: .text:004EAE8Ej
		mov	eax, [ebp+20h]
		mov	edx, [ebp-0Ch]
		mov	[eax], edx
		mov	ecx, [ebp+1Ch]
		mov	eax, [ebp-8]
		add	[ecx], eax
		mov	eax, [ebp-18h]
		mov	edx, [ebp-14h]
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl setvbuf(FILE *stream, char *buf, int type, _size_t	size)
_setvbuf:				; CODE XREF: .text:004E976Ap
					; .text:004EC8DAp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+8]
		cmp	bl, [ebx+17h]
		jnz	short loc_4EAEE5
		cmp	esi, 2
		jg	short loc_4EAEE5
		cmp	edi, 7FFFFFFFh
		jbe	short loc_4EAEEA

loc_4EAEE5:				; CODE XREF: .text:004EAED6j
					; .text:004EAEDBj
		or	eax, 0FFFFFFFFh
		jmp	short loc_4EAF1E
; ---------------------------------------------------------------------------

loc_4EAEEA:				; CODE XREF: .text:004EAEE3j
		push	ebx
		call	loc_4EB1D8
		cmp	dword ptr [ebx+8], 0
		pop	ecx
		jz	short loc_4EAF04
		push	1		; whence
		push	0		; offset
		push	ebx		; stream
		call	_fseek
		add	esp, 0Ch

loc_4EAF04:				; CODE XREF: .text:004EAEF5j
		push	edi		; size
		push	esi		; int
		mov	edx, [ebp+0Ch]
		push	edx		; int
		push	ebx		; int
		call	__allocbuf
		add	esp, 10h
		mov	esi, eax
		push	ebx
		call	loc_4EB2A0
		pop	ecx
		mov	eax, esi

loc_4EAF1E:				; CODE XREF: .text:004EAEE8j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4EAF24(void *src, _size_t n, int)
loc_4EAF24:				; DATA XREF: .text:004EAF65o
					; .text:004EAF8Do
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		push	ebx		; n
		mov	eax, [ebp+8]
		push	eax		; src
		mov	edx, [esi]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	[esi], ebx
		mov	ecx, [esi]
		mov	byte ptr [ecx],	0
		mov	eax, ebx
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int sprintf(char *buffer, const char *format,	...)
_sprintf:				; CODE XREF: .text:0045CA7Fp
					; .text:0045E364p ...
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		lea	ecx, [ebp+8]
		mov	byte ptr [eax],	0
		lea	eax, [ebp+10h]
		push	eax
		push	0
		push	0
		mov	edx, [ebp+0Ch]
		push	edx
		push	ecx
		push	offset loc_4EAF24
		call	___vprinter
		add	esp, 18h
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl vsprintf(char *buffer, const char	*format, void *arglist)
_vsprintf:				; CODE XREF: .text:0046BF9Ep
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		mov	byte ptr [eax],	0
		lea	eax, [ebp+8]
		mov	edx, [ebp+10h]
		push	edx
		push	0
		push	0
		mov	ecx, [ebp+0Ch]
		push	ecx
		push	eax
		push	offset loc_4EAF24
		call	___vprinter
		add	esp, 18h
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4EAF9C(void *src, int, int)
loc_4EAF9C:				; DATA XREF: .text:004EAFEBo
					; .text:004EB017o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		mov	eax, ebx
		add	eax, eax
		push	eax		; n
		mov	edx, [ebp+8]
		push	edx		; src
		mov	ecx, [esi]
		push	ecx		; dest
		call	_memcpy
		mov	eax, ebx
		add	esp, 0Ch
		add	eax, eax
		add	[esi], eax
		mov	eax, ebx
		mov	edx, [esi]
		mov	word ptr [edx],	0
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int swprintf(wchar_t *buffer,	const wchar_t *format, ...)
_swprintf:				; CODE XREF: .text:004015CEp
					; .text:00401AE6p ...
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		lea	ecx, [ebp+8]
		mov	word ptr [eax],	0
		lea	eax, [ebp+10h]
		push	eax
		push	0
		push	0
		mov	edx, [ebp+0Ch]
		push	edx
		push	ecx
		push	offset loc_4EAF9C
		call	___vprinterw
		add	esp, 18h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl vswprintf(wchar_t	*buffer, const wchar_t *format,	void *arglist)
_vswprintf:				; CODE XREF: .text:00401CF2p
					; .text:00401D86p ...
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		mov	word ptr [eax],	0
		lea	eax, [ebp+8]
		mov	edx, [ebp+10h]
		push	edx
		push	0
		push	0
		mov	ecx, [ebp+0Ch]
		push	ecx
		push	eax
		push	offset loc_4EAF9C
		call	___vprinterw
		add	esp, 18h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4EB028:				; DATA XREF: .text:004EB068o
					; .text:004EB08Co
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		mov	edx, [eax]
		add	dword ptr [eax], 2
		mov	ax, [edx]
		test	ax, ax
		jnz	short loc_4EB041
		mov	cx, 0FFFFh
		jmp	short loc_4EB043
; ---------------------------------------------------------------------------

loc_4EB041:				; CODE XREF: .text:004EB039j
		mov	ecx, eax

loc_4EB043:				; CODE XREF: .text:004EB03Fj
		movzx	eax, cx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EB048:				; DATA XREF: .text:004EB063o
					; .text:004EB087o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+0Ch]
		sub	dword ptr [eax], 2
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int swscanf(const wchar_t *buffer, const wchar_t *format, ...)
_swscanf:				; CODE XREF: .text:0040941Ap
					; .text:0040951Dp ...
		push	ebp
		mov	ebp, esp
		lea	eax, [ebp+10h]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		lea	ecx, [ebp+8]
		push	ecx
		push	offset loc_4EB048
		push	offset loc_4EB028
		call	__scannerw
		add	esp, 14h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl vswscanf(const wchar_t *buffer, const wchar_t *format, void *arglist)
_vswscanf:				; CODE XREF: .text:0040277Ep
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		lea	ecx, [ebp+8]
		push	ecx
		push	offset loc_4EB048
		push	offset loc_4EB028
		call	__scannerw
		add	esp, 14h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4EB09C:				; DATA XREF: .data:004F604Ao
		push	ebx
		mov	ebx, offset _streams
		push	offset aCreatingGlob_0 ; "creating global stream lock"
		push	offset dword_61BBDC ; int
		call	__create_lock
		add	esp, 8
		xor	eax, eax
		lea	edx, [ebx+17h]

loc_4EB0B9:				; CODE XREF: .text:004EB0CCj
		mov	ecx, eax
		inc	eax
		shl	ecx, 3
		lea	ecx, [ecx+ecx*2]
		add	ecx, ebx
		mov	[edx], cl
		add	edx, 18h
		cmp	eax, 3
		jl	short loc_4EB0B9
		mov	eax, 3
		lea	edx, [ebx+5Eh]
		jmp	short loc_4EB0EC
; ---------------------------------------------------------------------------

loc_4EB0D8:				; CODE XREF: .text:004EB0F2j
		mov	ecx, eax
		mov	byte ptr [edx],	0FFh
		shl	ecx, 3
		inc	eax
		lea	ecx, [ecx+ecx*2]
		add	ecx, ebx
		mov	[edx+1], cl
		add	edx, 18h

loc_4EB0EC:				; CODE XREF: .text:004EB0D6j
		cmp	eax, _nfile
		jb	short loc_4EB0D8
		movsx	eax, byte ptr [ebx+16h]
		test	byte ptr (_openfd+1)[eax*4], 20h
		jnz	short loc_4EB108
		and	word ptr [ebx+12h], 0FDFFh

loc_4EB108:				; CODE XREF: .text:004EB100j
		push	200h		; size
		mov	edx, 1
		test	byte ptr [ebx+13h], 2
		jnz	short loc_4EB119
		dec	edx

loc_4EB119:				; CODE XREF: .text:004EB116j
		push	edx		; int
		push	0		; int
		push	ebx		; int
		call	__allocbuf
		movsx	ecx, byte ptr [ebx+2Eh]
		add	esp, 10h
		test	byte ptr (_openfd+1)[ecx*4], 20h
		jnz	short loc_4EB139
		and	word ptr [ebx+2Ah], 0FDFFh

loc_4EB139:				; CODE XREF: .text:004EB131j
		push	200h		; size
		mov	eax, 2
		test	byte ptr [ebx+2Bh], 2
		jnz	short loc_4EB14C
		add	eax, 0FFFFFFFEh

loc_4EB14C:				; CODE XREF: .text:004EB147j
		push	eax		; int
		push	0		; int
		lea	edx, [ebx+18h]
		push	edx		; int
		call	__allocbuf
		add	esp, 10h
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4EB160:				; DATA XREF: .data:004F6110o
		push	ebx
		mov	ebx, offset _streams
		call	_lock_all_streams
		test	byte ptr [ebx+12h], 4
		jz	short loc_4EB18C
		push	ebx		; stream
		call	_fflush
		pop	ecx
		mov	eax, [ebx+4]
		push	eax		; block
		call	_free
		pop	ecx
		xor	edx, edx
		mov	[ebx+0Ch], edx
		xor	ecx, ecx
		mov	[ebx+8], ecx

loc_4EB18C:				; CODE XREF: .text:004EB16Fj
		test	byte ptr [ebx+2Ah], 4
		jz	short loc_4EB1B0
		lea	eax, [ebx+18h]
		push	eax		; stream
		call	_fflush
		pop	ecx
		mov	edx, [ebx+1Ch]
		push	edx		; block
		call	_free
		pop	ecx
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebx+24h], ecx
		mov	[ebx+20h], eax

loc_4EB1B0:				; CODE XREF: .text:004EB190j
		call	_unlock_all_streams
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

_lock_all_streams:			; CODE XREF: .text:004E92C3p
					; .text:004E9588p ...
		mov	eax, dword_61BBDC
		push	eax		; lpCriticalSection
		call	__lock_nt
		pop	ecx
		retn
; ---------------------------------------------------------------------------
		align 4

_unlock_all_streams:			; CODE XREF: .text:004E92F7p
					; .text:004E95DCp ...
		mov	eax, dword_61BBDC
		push	eax		; lpCriticalSection
		call	__unlock_nt
		pop	ecx
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4EB1D8:				; CODE XREF: .text:004E946Fp
					; .text:004E9514p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+8]
		sub	eax, offset _streams
		mov	ecx, 18h
		cdq
		idiv	ecx
		mov	ebx, eax
		mov	eax, dword_61BBE0
		test	eax, eax
		jz	short loc_4EB1FF
		cmp	dword ptr [eax+ebx*4], 0
		jnz	short loc_4EB268

loc_4EB1FF:				; CODE XREF: .text:004EB1F7j
		call	_lock_all_streams
		cmp	dword_61BBE0, 0
		jnz	short loc_4EB243
		mov	esi, _nfile
		shl	esi, 2
		push	esi		; size
		call	_malloc
		pop	ecx
		mov	dword_61BBE0, eax
		test	eax, eax
		jnz	short loc_4EB231
		push	offset aAllocatingStre ; "allocating stream lock table"
		call	__lock_error
; ---------------------------------------------------------------------------
		pop	ecx

loc_4EB231:				; CODE XREF: .text:004EB224j
		push	esi		; n
		push	0		; c
		mov	edx, dword_61BBE0
		push	edx		; s
		call	_memset
		add	esp, 0Ch

loc_4EB243:				; CODE XREF: .text:004EB20Bj
		mov	eax, dword_61BBE0
		cmp	dword ptr [eax+ebx*4], 0
		jnz	short loc_4EB263
		push	offset aCreatingStream ; "creating stream lock"
		mov	edx, ebx
		shl	edx, 2
		add	edx, eax
		push	edx		; int
		call	__create_lock
		add	esp, 8

loc_4EB263:				; CODE XREF: .text:004EB24Cj
		call	_unlock_all_streams

loc_4EB268:				; CODE XREF: .text:004EB1FDj
		mov	ecx, dword_61BBE0
		mov	eax, [ecx+ebx*4]
		push	eax		; lpCriticalSection
		call	__lock_nt
		pop	ecx
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EB27C:				; CODE XREF: .text:004EB2EDp
					; .text:004EFF2Fp
		mov	eax, dword_61BBE0
		test	eax, eax
		jz	short loc_4EB294
		push	eax		; block
		call	_free
		pop	ecx
		xor	edx, edx
		mov	dword_61BBE0, edx

loc_4EB294:				; CODE XREF: .text:004EB283j
		mov	dword_57AF18, 1
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4EB2A0:				; CODE XREF: .text:004E94E6p
					; .text:004E9577p ...
		push	ebp
		mov	ebp, esp
		cmp	dword_61BBE0, 0
		jnz	short loc_4EB2C3
		push	122h		; line
		push	offset aStreams_c ; "streams.c"
		push	offset aStrm_locks ; "strm_locks"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4EB2C3:				; CODE XREF: .text:004EB2AAj
		mov	eax, [ebp+8]
		sub	eax, offset _streams
		mov	ecx, 18h
		cdq
		idiv	ecx
		mov	edx, dword_61BBE0
		mov	eax, [edx+eax*4]
		push	eax		; lpCriticalSection
		call	__unlock_nt
		pop	ecx
		cmp	dword_57AF18, 0
		jz	short loc_4EB2F2
		call	loc_4EB27C

loc_4EB2F2:				; CODE XREF: .text:004EB2EBj
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl unknown_libname_14(LPCSTR	lpFileName)
unknown_libname_14:			; CODE XREF: .text:004E94D9p
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax		; lpFileName
		call	DeleteFileA
		dec	eax
		jnz	short loc_4EB307
		xor	eax, eax
		jmp	short loc_4EB30C
; ---------------------------------------------------------------------------

loc_4EB307:				; CODE XREF: .text:004EB301j
		call	___NTerror

loc_4EB30C:				; CODE XREF: .text:004EB305j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4EB310:				; CODE XREF: .text:004EB366p
					; .text:004EBCD7p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	eax, 1
		cmp	dword ptr [ebx+50h], 0
		jz	short loc_4EB352
		mov	edx, [ebx+64h]
		test	edx, edx
		jz	short loc_4EB332
		mov	ecx, [edx]
		cmp	ecx, [ebx+5Ch]
		ja	short loc_4EB332
		xor	eax, eax

loc_4EB332:				; CODE XREF: .text:004EB327j
					; .text:004EB32Ej
		push	eax
		mov	edx, [ebx+58h]
		push	edx
		mov	ecx, [ebx+50h]
		push	ecx
		push	ebx
		call	dword ptr [ebx+54h]
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4EB34D
		mov	dword ptr [ebx+60h], 1

loc_4EB34D:				; CODE XREF: .text:004EB344j
		xor	eax, eax
		mov	[ebx+50h], eax

loc_4EB352:				; CODE XREF: .text:004EB320j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4EB358:				; CODE XREF: .text:004EB43Ap
					; .text:004EB44Dp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+0Ch]
		cmp	dword ptr [ebx+50h], 50h
		jl	short loc_4EB36C
		push	ebx
		call	loc_4EB310
		pop	ecx

loc_4EB36C:				; CODE XREF: .text:004EB363j
		mov	eax, [ebx+64h]
		test	eax, eax
		jz	short loc_4EB37A
		mov	edx, [eax]
		cmp	edx, [ebx+5Ch]
		jbe	short loc_4EB386

loc_4EB37A:				; CODE XREF: .text:004EB371j
		mov	ecx, [ebx+50h]
		mov	al, [ebp+8]
		mov	[ebx+ecx], al
		inc	dword ptr [ebx+50h]

loc_4EB386:				; CODE XREF: .text:004EB378j
		inc	dword ptr [ebx+5Ch]
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EB38C:				; CODE XREF: .text:004EB882p
		push	ebp
		mov	ebp, esp
		push	esi
		mov	ecx, 7
		mov	eax, [ebp+0Ch]
		mov	esi, [ebp+8]
		add	eax, 7

loc_4EB39E:				; CODE XREF: .text:004EB3BBj
		mov	edx, esi
		and	edx, 0Fh
		cmp	edx, 0Ah
		jge	short loc_4EB3AF
		add	dl, 30h
		mov	[eax], dl
		jmp	short loc_4EB3B4
; ---------------------------------------------------------------------------

loc_4EB3AF:				; CODE XREF: .text:004EB3A6j
		add	dl, 37h
		mov	[eax], dl

loc_4EB3B4:				; CODE XREF: .text:004EB3ADj
		shr	esi, 4
		dec	ecx
		dec	eax
		test	ecx, ecx
		jge	short loc_4EB39E
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

___vprinter:				; CODE XREF: .text:004E9811p
					; .text:004EAF6Ap ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFAE0h
		xor	eax, eax
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	[ebp-4C0h], eax
		mov	[ebp-4C4h], eax
		mov	[ebp-4D0h], eax
		mov	edx, [ebp+8]
		mov	[ebp-4CCh], edx
		mov	ecx, [ebp+0Ch]
		mov	[ebp-4C8h], ecx
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4EB400
		lea	eax, [ebp+18h]
		jmp	short loc_4EB402
; ---------------------------------------------------------------------------

loc_4EB400:				; CODE XREF: .text:004EB3F9j
		xor	eax, eax

loc_4EB402:				; CODE XREF: .text:004EB3FEj
		mov	[ebp-4BCh], eax

loc_4EB408:				; CODE XREF: .text:004EB455j
					; .text:004EBC60j ...
		mov	bl, [esi]
		inc	esi
		test	bl, bl
		jz	loc_4EBCD0
		cmp	bl, 25h
		jnz	short loc_4EB420
		mov	bl, [esi]
		cmp	bl, 25h
		jnz	short loc_4EB457
		inc	esi

loc_4EB420:				; CODE XREF: .text:004EB416j
		xor	eax, eax
		mov	al, bl
		test	byte_61BBE5[eax], 4
		jz	short loc_4EB445
		cmp	byte ptr [esi],	0
		jz	short loc_4EB445
		lea	edx, [ebp-520h]
		push	edx
		push	ebx
		call	loc_4EB358
		add	esp, 8
		mov	bl, [esi]
		inc	esi

loc_4EB445:				; CODE XREF: .text:004EB42Bj
					; .text:004EB430j
		lea	eax, [ebp-520h]
		push	eax
		push	ebx
		call	loc_4EB358
		add	esp, 8
		jmp	short loc_4EB408
; ---------------------------------------------------------------------------

loc_4EB457:				; CODE XREF: .text:004EB41Dj
		lea	edx, [esi-1]
		xor	eax, eax
		mov	[ebp-14h], edx
		xor	edx, edx
		mov	[ebp-10h], edx
		or	edx, 0FFFFFFFFh
		mov	byte ptr [ebp-9], 0
		mov	[ebp-8], edx
		mov	[ebp-4], edx
		xor	ecx, ecx
		mov	edi, 20h
		mov	[ebp-1Ch], ecx

loc_4EB47B:				; CODE XREF: .text:004EB4A7j
					; .text:004EB527j ...
		mov	bl, [esi]	; jumptable 004EB4A9 default case
		inc	esi
		cmp	bl, 20h
		jl	loc_4EBCC4	; jumptable 004EB4A9 cases 21-23
		movsx	edx, bl
		cmp	edx, 7Fh
		jg	loc_4EBCC4	; jumptable 004EB4A9 cases 21-23
		mov	ecx, ebx
		add	cl, 0E0h
		xor	edx, edx
		mov	dl, cl
		xor	ecx, ecx
		mov	cl, byte_57AF96[edx]
		cmp	ecx, 1Ah	; switch 27 cases
		ja	short loc_4EB47B ; jumptable 004EB4A9 default case
		jmp	ds:off_4EB4B0[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4EB4B0	dd offset loc_4EB53C	; DATA XREF: .text:004EB4A9r
		dd offset loc_4EB51C	; jump table for switch	statement
		dd offset loc_4EB58D
		dd offset loc_4EB52C
		dd offset loc_4EB5D7
		dd offset loc_4EB5ED
		dd offset loc_4EB63E
		dd offset loc_4EB64B
		dd offset loc_4EB65E
		dd offset loc_4EB570
		dd offset loc_4EB71B
		dd offset loc_4EB6F4
		dd offset loc_4EB6FD
		dd offset loc_4EB706
		dd offset loc_4EB86A
		dd offset loc_4EB9DD
		dd offset loc_4EB8AD
		dd offset loc_4EB928
		dd offset loc_4EB8A2
		dd offset loc_4EB91D
		dd offset loc_4EBC65
		dd offset loc_4EBCC4
		dd offset loc_4EBCC4
		dd offset loc_4EBCC4
		dd offset loc_4EB556
		dd offset loc_4EB563
		dd offset loc_4EB671
; ---------------------------------------------------------------------------

loc_4EB51C:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		test	eax, eax	; jumptable 004EB4A9 case 1
		jg	loc_4EBCC4	; jumptable 004EB4A9 cases 21-23
		or	edi, 1
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB52C:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		test	eax, eax	; jumptable 004EB4A9 case 3
		jg	loc_4EBCC4	; jumptable 004EB4A9 cases 21-23
		or	edi, 2
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB53C:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		test	eax, eax	; jumptable 004EB4A9 case 0
		jg	loc_4EBCC4	; jumptable 004EB4A9 cases 21-23
		cmp	byte ptr [ebp-9], 2Bh
		jz	loc_4EB47B	; jumptable 004EB4A9 default case
		mov	[ebp-9], bl
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB556:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		and	edi, 0FFFFFFDFh	; jumptable 004EB4A9 case 24
		mov	eax, 5
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB563:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		or	edi, 20h	; jumptable 004EB4A9 case 25
		mov	eax, 5
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB570:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		test	eax, eax	; jumptable 004EB4A9 case 9
		jg	short loc_4EB5ED ; jumptable 004EB4A9 case 5
		test	edi, 2
		jnz	loc_4EB47B	; jumptable 004EB4A9 default case
		or	edi, 8
		mov	eax, 1
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB58D:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		add	dword ptr [ebp+1Ch], 4 ; jumptable 004EB4A9 case 2
		mov	edx, [ebp+1Ch]
		cmp	eax, 2
		mov	ecx, [edx-4]
		mov	[ebp-30h], ecx
		jge	short loc_4EB5C2
		cmp	dword ptr [ebp-30h], 0
		jge	short loc_4EB5B2
		mov	eax, [ebp-30h]
		neg	eax
		mov	[ebp-4], eax
		or	edi, 2
		jmp	short loc_4EB5B8
; ---------------------------------------------------------------------------

loc_4EB5B2:				; CODE XREF: .text:004EB5A3j
		mov	edx, [ebp-30h]
		mov	[ebp-4], edx

loc_4EB5B8:				; CODE XREF: .text:004EB5B0j
		mov	eax, 3
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB5C2:				; CODE XREF: .text:004EB59Dj
		cmp	eax, 4
		jnz	loc_4EBCC4	; jumptable 004EB4A9 cases 21-23
		mov	edx, [ebp-30h]
		inc	eax
		mov	[ebp-8], edx
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB5D7:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		cmp	eax, 4		; jumptable 004EB4A9 case 4
		jge	loc_4EBCC4	; jumptable 004EB4A9 cases 21-23
		mov	eax, 4
		inc	dword ptr [ebp-8]
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB5ED:				; CODE XREF: .text:004EB4A9j
					; .text:004EB572j
					; DATA XREF: ...
		add	bl, 0D0h	; jumptable 004EB4A9 case 5
		cmp	eax, 2
		jg	short loc_4EB620
		cmp	dword ptr [ebp-4], 0FFFFFFFFh
		mov	eax, 2
		jnz	short loc_4EB60B
		movsx	edx, bl
		mov	[ebp-4], edx
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB60B:				; CODE XREF: .text:004EB5FEj
		mov	ecx, [ebp-4]
		add	ecx, ecx
		lea	ecx, [ecx+ecx*4]
		movsx	edx, bl
		add	ecx, edx
		mov	[ebp-4], ecx
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB620:				; CODE XREF: .text:004EB5F3j
		cmp	eax, 4
		jnz	loc_4EBCC4	; jumptable 004EB4A9 cases 21-23
		mov	ecx, [ebp-8]
		add	ecx, ecx
		lea	ecx, [ecx+ecx*4]
		movsx	edx, bl
		add	ecx, edx
		mov	[ebp-8], ecx
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB63E:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		or	edi, 10h	; jumptable 004EB4A9 case 6
		mov	eax, 5
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB64B:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		or	edi, 100h	; jumptable 004EB4A9 case 7
		mov	eax, 5
		and	edi, 0FFFFFFEFh
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB65E:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		or	edi, 200h	; jumptable 004EB4A9 case 8
		mov	eax, 5
		and	edi, 0FFFFFFEFh
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB671:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		cmp	byte ptr [esi],	36h ; jumptable	004EB4A9 case 26
		jnz	short loc_4EB695
		cmp	byte ptr [esi+1], 34h
		jnz	short loc_4EB695
		add	esi, 2
		or	edi, 100h
		and	edi, 0FFFFFDEFh
		mov	eax, 5
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB695:				; CODE XREF: .text:004EB674j
					; .text:004EB67Aj
		cmp	byte ptr [esi],	33h
		jnz	short loc_4EB6B6
		cmp	byte ptr [esi+1], 32h
		jnz	short loc_4EB6B6
		add	esi, 2
		or	edi, 10h
		and	edi, 0FFFFFCFFh
		mov	eax, 5
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB6B6:				; CODE XREF: .text:004EB698j
					; .text:004EB69Ej
		cmp	byte ptr [esi],	31h
		jnz	short loc_4EB6DA
		cmp	byte ptr [esi+1], 36h
		jnz	short loc_4EB6DA
		add	esi, 2
		or	edi, 200h
		and	edi, 0FFFFFEEFh
		mov	eax, 5
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB6DA:				; CODE XREF: .text:004EB6B9j
					; .text:004EB6BFj
		cmp	byte ptr [esi],	38h
		jnz	loc_4EB47B	; jumptable 004EB4A9 default case
		inc	esi
		and	edi, 0FFFFFCEFh
		mov	eax, 5
		jmp	loc_4EB47B	; jumptable 004EB4A9 default case
; ---------------------------------------------------------------------------

loc_4EB6F4:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		mov	dword ptr [ebp-38h], 8 ; jumptable 004EB4A9 case 11
		jmp	short loc_4EB713
; ---------------------------------------------------------------------------

loc_4EB6FD:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		mov	dword ptr [ebp-38h], 0Ah ; jumptable 004EB4A9 case 12
		jmp	short loc_4EB713
; ---------------------------------------------------------------------------

loc_4EB706:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		mov	dword ptr [ebp-38h], 10h ; jumptable 004EB4A9 case 13
		lea	edx, [ebx-17h]
		mov	[ebp-1Dh], dl

loc_4EB713:				; CODE XREF: .text:004EB6FBj
					; .text:004EB704j
		mov	byte ptr [ebp-9], 0
		xor	ecx, ecx
		jmp	short loc_4EB724
; ---------------------------------------------------------------------------

loc_4EB71B:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		mov	dword ptr [ebp-38h], 0Ah ; jumptable 004EB4A9 case 10
		mov	cl, 1

loc_4EB724:				; CODE XREF: .text:004EB719j
		test	edi, 100h
		jz	short loc_4EB744
		add	dword ptr [ebp+1Ch], 8
		mov	eax, [ebp+1Ch]
		mov	edx, [eax-8]
		mov	[ebp-28h], edx
		mov	edx, [eax-4]
		mov	[ebp-24h], edx
		jmp	loc_4EB7D4
; ---------------------------------------------------------------------------

loc_4EB744:				; CODE XREF: .text:004EB72Aj
		test	edi, 10h
		jz	short loc_4EB776
		add	dword ptr [ebp+1Ch], 4
		mov	eax, [ebp+1Ch]
		test	cl, cl
		mov	edx, [eax-4]
		mov	[ebp-2Ch], edx
		jz	short loc_4EB769
		mov	eax, [ebp-2Ch]
		cdq
		mov	[ebp-28h], eax
		mov	[ebp-24h], edx
		jmp	short loc_4EB7D4
; ---------------------------------------------------------------------------

loc_4EB769:				; CODE XREF: .text:004EB75Bj
		mov	eax, [ebp-2Ch]
		xor	edx, edx
		mov	[ebp-28h], eax
		mov	[ebp-24h], edx
		jmp	short loc_4EB7D4
; ---------------------------------------------------------------------------

loc_4EB776:				; CODE XREF: .text:004EB74Aj
		test	edi, 200h
		jz	short loc_4EB7AC
		add	dword ptr [ebp+1Ch], 4
		mov	eax, [ebp+1Ch]
		test	cl, cl
		mov	dx, [eax-4]
		mov	[ebp-32h], dx
		jz	short loc_4EB79E
		movsx	eax, word ptr [ebp-32h]
		cdq
		mov	[ebp-28h], eax
		mov	[ebp-24h], edx
		jmp	short loc_4EB7D4
; ---------------------------------------------------------------------------

loc_4EB79E:				; CODE XREF: .text:004EB78Fj
		movzx	eax, word ptr [ebp-32h]
		xor	edx, edx
		mov	[ebp-28h], eax
		mov	[ebp-24h], edx
		jmp	short loc_4EB7D4
; ---------------------------------------------------------------------------

loc_4EB7AC:				; CODE XREF: .text:004EB77Cj
		add	dword ptr [ebp+1Ch], 4
		mov	eax, [ebp+1Ch]
		test	cl, cl
		mov	edx, [eax-4]
		mov	[ebp-30h], edx
		jz	short loc_4EB7C9
		mov	eax, [ebp-30h]
		cdq
		mov	[ebp-28h], eax
		mov	[ebp-24h], edx
		jmp	short loc_4EB7D4
; ---------------------------------------------------------------------------

loc_4EB7C9:				; CODE XREF: .text:004EB7BBj
		mov	eax, [ebp-30h]
		xor	edx, edx
		mov	[ebp-28h], eax
		mov	[ebp-24h], edx

loc_4EB7D4:				; CODE XREF: .text:004EB73Fj
					; .text:004EB767j ...
		lea	eax, [ebp-0B7h]
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-24h], 0
		jnz	short loc_4EB7F7
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_4EB7F7
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4EB7FA
		mov	edx, [ebp-18h]
		mov	byte ptr [edx],	0
		jmp	short loc_4EB815
; ---------------------------------------------------------------------------

loc_4EB7F7:				; CODE XREF: .text:004EB7E1j
					; .text:004EB7E7j
		or	edi, 4

loc_4EB7FA:				; CODE XREF: .text:004EB7EDj
		mov	al, [ebp-1Dh]
		push	eax
		push	ecx
		mov	edx, [ebp-38h]
		push	edx
		mov	ecx, [ebp-18h]
		push	ecx
		push	dword ptr [ebp-24h]
		push	dword ptr [ebp-28h]
		call	___int64toa
		add	esp, 18h

loc_4EB815:				; CODE XREF: .text:004EB7F5j
		cmp	dword ptr [ebp-8], 0
		jl	loc_4EBA34
		mov	edx, [ebp-18h]
		push	edx		; s
		call	_strlen
		pop	ecx
		mov	[ebp-3Ch], eax
		mov	[ebp-40h], eax
		mov	edx, [ebp-18h]
		cmp	byte ptr [edx],	2Dh
		jnz	short loc_4EB83C
		dec	dword ptr [ebp-3Ch]
		jmp	short loc_4EB850
; ---------------------------------------------------------------------------

loc_4EB83C:				; CODE XREF: .text:004EB835j
		cmp	byte ptr [ebp-9], 0
		jz	short loc_4EB850
		inc	dword ptr [ebp-40h]
		dec	dword ptr [ebp-18h]
		mov	ecx, [ebp-18h]
		mov	al, [ebp-9]
		mov	[ecx], al

loc_4EB850:				; CODE XREF: .text:004EB83Aj
					; .text:004EB840j
		mov	edx, [ebp-8]
		cmp	edx, [ebp-3Ch]
		jle	loc_4EBAA2
		mov	ecx, [ebp-8]
		sub	ecx, [ebp-3Ch]
		mov	[ebp-10h], ecx
		jmp	loc_4EBAA2
; ---------------------------------------------------------------------------

loc_4EB86A:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		add	dword ptr [ebp+1Ch], 4 ; jumptable 004EB4A9 case 14
		mov	eax, [ebp+1Ch]
		lea	ecx, [ebp-0B8h]
		mov	edx, [eax-4]
		mov	[ebp-18h], edx
		push	ecx
		mov	eax, [ebp-18h]
		push	eax
		call	loc_4EB38C
		add	esp, 8
		mov	byte ptr [ebp-0B0h], 0
		and	edi, 0FFFFFFFBh
		lea	edx, [ebp-0B8h]
		mov	[ebp-18h], edx
		jmp	loc_4EBA34
; ---------------------------------------------------------------------------

loc_4EB8A2:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		test	edi, 210h	; jumptable 004EB4A9 case 18
		jnz	short loc_4EB8AD ; jumptable 004EB4A9 case 16
		or	edi, 10h

loc_4EB8AD:				; CODE XREF: .text:004EB4A9j
					; .text:004EB8A8j
					; DATA XREF: ...
		test	edi, 10h	; jumptable 004EB4A9 case 16
		jz	short loc_4EB8EC
		add	dword ptr [ebp+1Ch], 4
		mov	ecx, [ebp+1Ch]
		lea	edx, [ebp-0B8h]
		mov	ax, [ecx-4]
		mov	[ebp-0B8h], ax
		mov	word ptr [ebp-0B6h], 0
		mov	dword ptr [ebp-1Ch], 1
		mov	[ebp-18h], edx
		mov	dword ptr [ebp-40h], 1
		jmp	loc_4EBAA2
; ---------------------------------------------------------------------------

loc_4EB8EC:				; CODE XREF: .text:004EB8B3j
		add	dword ptr [ebp+1Ch], 4
		mov	ecx, [ebp+1Ch]
		lea	edx, [ebp-0B8h]
		mov	al, [ecx-4]
		xor	ecx, ecx
		mov	[ebp-0B8h], al
		mov	byte ptr [ebp-0B7h], 0
		mov	[ebp-18h], edx
		mov	[ebp-1Ch], ecx
		mov	dword ptr [ebp-40h], 1
		jmp	loc_4EBAA2
; ---------------------------------------------------------------------------

loc_4EB91D:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		test	edi, 210h	; jumptable 004EB4A9 case 19
		jnz	short loc_4EB928 ; jumptable 004EB4A9 case 17
		or	edi, 10h

loc_4EB928:				; CODE XREF: .text:004EB4A9j
					; .text:004EB923j
					; DATA XREF: ...
		test	edi, 10h	; jumptable 004EB4A9 case 17
		jz	short loc_4EB953
		add	dword ptr [ebp+1Ch], 4
		mov	eax, [ebp+1Ch]
		mov	edx, [eax-4]
		mov	[ebp-18h], edx
		mov	dword ptr [ebp-1Ch], 1
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4EB972
		mov	dword ptr [ebp-18h], offset aNull ; "(null)"
		jmp	short loc_4EB972
; ---------------------------------------------------------------------------

loc_4EB953:				; CODE XREF: .text:004EB92Ej
		add	dword ptr [ebp+1Ch], 4
		mov	ecx, [ebp+1Ch]
		xor	edx, edx
		mov	eax, [ecx-4]
		mov	[ebp-18h], eax
		mov	[ebp-1Ch], edx
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4EB972
		mov	dword ptr [ebp-18h], offset aNull_0 ; "(null)"

loc_4EB972:				; CODE XREF: .text:004EB948j
					; .text:004EB951j ...
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_4EB9AC
		cmp	dword ptr [ebp-8], 0
		jl	short loc_4EB983
		mov	eax, [ebp-8]
		jmp	short loc_4EB988
; ---------------------------------------------------------------------------

loc_4EB983:				; CODE XREF: .text:004EB97Cj
		mov	eax, 7FFFFFFFh

loc_4EB988:				; CODE XREF: .text:004EB981j
		mov	edx, [ebp-18h]
		xor	ecx, ecx
		mov	[ebp-40h], ecx
		jmp	short loc_4EB999
; ---------------------------------------------------------------------------

loc_4EB992:				; CODE XREF: .text:004EB9A5j
		dec	eax
		inc	dword ptr [ebp-40h]
		add	edx, 2

loc_4EB999:				; CODE XREF: .text:004EB990j
		test	eax, eax
		jz	loc_4EBAA2
		cmp	word ptr [edx],	0
		jnz	short loc_4EB992
		jmp	loc_4EBAA2
; ---------------------------------------------------------------------------

loc_4EB9AC:				; CODE XREF: .text:004EB976j
		cmp	dword ptr [ebp-8], 0
		jl	short loc_4EB9B7
		mov	eax, [ebp-8]
		jmp	short loc_4EB9BC
; ---------------------------------------------------------------------------

loc_4EB9B7:				; CODE XREF: .text:004EB9B0j
		mov	eax, 7FFFFFFFh

loc_4EB9BC:				; CODE XREF: .text:004EB9B5j
		mov	edx, [ebp-18h]
		xor	ecx, ecx
		mov	[ebp-40h], ecx
		jmp	short loc_4EB9CB
; ---------------------------------------------------------------------------

loc_4EB9C6:				; CODE XREF: .text:004EB9D6j
		dec	eax
		inc	dword ptr [ebp-40h]
		inc	edx

loc_4EB9CB:				; CODE XREF: .text:004EB9C4j
		test	eax, eax
		jz	loc_4EBAA2
		cmp	byte ptr [edx],	0
		jnz	short loc_4EB9C6
		jmp	loc_4EBAA2
; ---------------------------------------------------------------------------

loc_4EB9DD:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		test	edi, 100h	; jumptable 004EB4A9 case 15
		mov	eax, 8
		jnz	short loc_4EB9ED
		add	eax, 0FFFFFFFEh

loc_4EB9ED:				; CODE XREF: .text:004EB9E8j
		mov	edx, edi
		push	eax
		and	dl, 1
		lea	ecx, [ebp-0B7h]
		push	edx
		push	ebx
		mov	[ebp-18h], ecx
		push	ecx
		cmp	dword ptr [ebp-8], 0
		jge	short loc_4EBA0C
		mov	eax, 6
		jmp	short loc_4EBA0F
; ---------------------------------------------------------------------------

loc_4EBA0C:				; CODE XREF: .text:004EBA03j
		mov	eax, [ebp-8]

loc_4EBA0F:				; CODE XREF: .text:004EBA0Aj
		push	eax
		mov	edx, [ebp+1Ch]
		push	edx
		call	loc_4ED9F4
		add	esp, 18h
		mov	ecx, edi
		and	ecx, 100h
		push	ecx
		mov	eax, [ebp+1Ch]
		push	eax
		call	loc_4ED9FA
		add	esp, 8
		mov	[ebp+1Ch], eax

loc_4EBA34:				; CODE XREF: .text:004EB819j
					; .text:004EB89Dj
		test	edi, 8
		jz	short loc_4EBA6B
		cmp	dword ptr [ebp-4], 0
		jle	short loc_4EBA6B
		mov	edx, [ebp-18h]
		push	edx		; s
		call	_strlen
		pop	ecx
		mov	[ebp-40h], eax
		mov	ecx, [ebp-18h]
		cmp	byte ptr [ecx],	2Dh
		jnz	short loc_4EBA5A
		dec	dword ptr [ebp-40h]

loc_4EBA5A:				; CODE XREF: .text:004EBA55j
		mov	eax, [ebp-4]
		cmp	eax, [ebp-40h]
		jle	short loc_4EBA6B
		mov	edx, [ebp-4]
		sub	edx, [ebp-40h]
		mov	[ebp-10h], edx

loc_4EBA6B:				; CODE XREF: .text:004EBA3Aj
					; .text:004EBA40j ...
		mov	ecx, [ebp-18h]
		cmp	byte ptr [ecx],	2Dh
		jz	short loc_4EBA79
		cmp	byte ptr [ebp-9], 0
		jz	short loc_4EBA95

loc_4EBA79:				; CODE XREF: .text:004EBA71j
		mov	eax, [ebp-18h]
		cmp	byte ptr [eax],	2Dh
		jz	short loc_4EBA8C
		dec	dword ptr [ebp-18h]
		mov	edx, [ebp-18h]
		mov	cl, [ebp-9]
		mov	[edx], cl

loc_4EBA8C:				; CODE XREF: .text:004EBA7Fj
		cmp	dword ptr [ebp-10h], 0
		jle	short loc_4EBA95
		dec	dword ptr [ebp-10h]

loc_4EBA95:				; CODE XREF: .text:004EBA77j
					; .text:004EBA90j
		mov	eax, [ebp-18h]
		push	eax		; s
		call	_strlen
		pop	ecx
		mov	[ebp-40h], eax

loc_4EBAA2:				; CODE XREF: .text:004EB856j
					; .text:004EB865j ...
		test	edi, 1
		jz	short loc_4EBADA
		cmp	bl, 6Fh
		jnz	short loc_4EBABE
		cmp	dword ptr [ebp-10h], 0
		jg	short loc_4EBADA
		mov	dword ptr [ebp-10h], 1
		jmp	short loc_4EBADA
; ---------------------------------------------------------------------------

loc_4EBABE:				; CODE XREF: .text:004EBAADj
		cmp	bl, 78h
		jz	short loc_4EBAC8
		cmp	bl, 58h
		jnz	short loc_4EBADA

loc_4EBAC8:				; CODE XREF: .text:004EBAC1j
		or	edi, 40h
		sub	dword ptr [ebp-4], 2
		sub	dword ptr [ebp-10h], 2
		jns	short loc_4EBADA
		xor	edx, edx
		mov	[ebp-10h], edx

loc_4EBADA:				; CODE XREF: .text:004EBAA8j
					; .text:004EBAB3j ...
		mov	ecx, [ebp-10h]
		add	[ebp-40h], ecx
		test	edi, 2
		jnz	short loc_4EBB0C
		mov	eax, [ebp-4]
		cmp	eax, [ebp-40h]
		jle	short loc_4EBB0C

loc_4EBAF0:				; CODE XREF: .text:004EBB0Aj
		lea	edx, [ebp-520h]
		push	edx
		push	20h
		call	loc_4EB358
		add	esp, 8
		dec	dword ptr [ebp-4]
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-40h]
		jg	short loc_4EBAF0

loc_4EBB0C:				; CODE XREF: .text:004EBAE6j
					; .text:004EBAEEj
		test	edi, 40h
		jz	short loc_4EBB35
		lea	eax, [ebp-520h]
		push	eax
		push	30h
		call	loc_4EB358
		add	esp, 8
		lea	edx, [ebp-520h]
		push	edx
		push	ebx
		call	loc_4EB358
		add	esp, 8

loc_4EBB35:				; CODE XREF: .text:004EBB12j
		cmp	dword ptr [ebp-10h], 0
		jle	short loc_4EBB9B
		mov	ecx, [ebp-10h]
		sub	[ebp-40h], ecx
		mov	eax, [ebp-10h]
		sub	[ebp-4], eax
		mov	edx, [ebp-18h]
		cmp	byte ptr [edx],	2Dh
		jz	short loc_4EBB5F
		mov	ecx, [ebp-18h]
		cmp	byte ptr [ecx],	20h
		jz	short loc_4EBB5F
		mov	eax, [ebp-18h]
		cmp	byte ptr [eax],	2Bh
		jnz	short loc_4EBB90

loc_4EBB5F:				; CODE XREF: .text:004EBB4Dj
					; .text:004EBB55j
		lea	edx, [ebp-520h]
		push	edx
		mov	ecx, [ebp-18h]
		inc	dword ptr [ebp-18h]
		mov	al, [ecx]
		push	eax
		call	loc_4EB358
		add	esp, 8
		dec	dword ptr [ebp-40h]
		dec	dword ptr [ebp-4]
		jmp	short loc_4EBB90
; ---------------------------------------------------------------------------

loc_4EBB7F:				; CODE XREF: .text:004EBB99j
		lea	edx, [ebp-520h]
		push	edx
		push	30h
		call	loc_4EB358
		add	esp, 8

loc_4EBB90:				; CODE XREF: .text:004EBB5Dj
					; .text:004EBB7Dj
		mov	ecx, [ebp-10h]
		add	dword ptr [ebp-10h], 0FFFFFFFFh
		test	ecx, ecx
		jnz	short loc_4EBB7F

loc_4EBB9B:				; CODE XREF: .text:004EBB39j
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_4EBC11
		mov	eax, [ebp-18h]
		xor	edx, edx
		mov	[ebp-44h], eax
		mov	[ebp-4Ch], edx
		mov	ecx, [ebp-40h]
		mov	[ebp-54h], ecx
		jmp	short loc_4EBBF7
; ---------------------------------------------------------------------------

loc_4EBBB4:				; CODE XREF: .text:004EBC00j
		mov	eax, [ebp-44h]
		add	dword ptr [ebp-44h], 2
		mov	dx, [eax]
		push	edx		; wc
		lea	ecx, [ebp-56h]
		push	ecx		; s
		call	_wctomb
		add	esp, 8
		mov	[ebp-50h], eax
		cmp	dword ptr [ebp-50h], 0
		jle	short loc_4EBC02
		xor	ecx, ecx
		mov	eax, [ebp-4Ch]
		lea	edx, [ebp+eax-4B8h]
		lea	eax, [ebp-56h]
		cmp	ecx, [ebp-50h]
		jge	short loc_4EBBF7

loc_4EBBE8:				; CODE XREF: .text:004EBBF5j
		mov	bl, [eax]
		inc	eax
		mov	[edx], bl
		inc	edx
		inc	dword ptr [ebp-4Ch]
		inc	ecx
		cmp	ecx, [ebp-50h]
		jl	short loc_4EBBE8

loc_4EBBF7:				; CODE XREF: .text:004EBBB2j
					; .text:004EBBE6j
		mov	eax, [ebp-54h]
		add	dword ptr [ebp-54h], 0FFFFFFFFh
		test	eax, eax
		jg	short loc_4EBBB4

loc_4EBC02:				; CODE XREF: .text:004EBBD2j
		lea	edx, [ebp-4B8h]
		mov	[ebp-18h], edx
		mov	ecx, [ebp-4Ch]
		mov	[ebp-40h], ecx

loc_4EBC11:				; CODE XREF: .text:004EBB9Fj
		cmp	dword ptr [ebp-40h], 0
		jz	short loc_4EBC55
		mov	eax, [ebp-40h]
		sub	[ebp-4], eax
		jmp	short loc_4EBC37
; ---------------------------------------------------------------------------

loc_4EBC1F:				; CODE XREF: .text:004EBC40j
		lea	edx, [ebp-520h]
		push	edx
		mov	ecx, [ebp-18h]
		inc	dword ptr [ebp-18h]
		mov	al, [ecx]
		push	eax
		call	loc_4EB358
		add	esp, 8

loc_4EBC37:				; CODE XREF: .text:004EBC1Dj
		mov	edx, [ebp-40h]
		add	dword ptr [ebp-40h], 0FFFFFFFFh
		test	edx, edx
		jnz	short loc_4EBC1F
		jmp	short loc_4EBC55
; ---------------------------------------------------------------------------

loc_4EBC44:				; CODE XREF: .text:004EBC5Ej
		lea	ecx, [ebp-520h]
		push	ecx
		push	20h
		call	loc_4EB358
		add	esp, 8

loc_4EBC55:				; CODE XREF: .text:004EBC15j
					; .text:004EBC42j
		mov	eax, [ebp-4]
		add	dword ptr [ebp-4], 0FFFFFFFFh
		test	eax, eax
		jg	short loc_4EBC44
		jmp	loc_4EB408
; ---------------------------------------------------------------------------

loc_4EBC65:				; CODE XREF: .text:004EB4A9j
					; DATA XREF: .text:off_4EB4B0o
		add	dword ptr [ebp+1Ch], 4 ; jumptable 004EB4A9 case 20
		mov	edx, [ebp+1Ch]
		test	edi, 10h
		mov	ecx, [edx-4]
		mov	[ebp-18h], ecx
		jz	short loc_4EBC8A
		mov	eax, [ebp-18h]
		mov	edx, [ebp-4C4h]
		mov	[eax], edx
		jmp	loc_4EB408
; ---------------------------------------------------------------------------

loc_4EBC8A:				; CODE XREF: .text:004EBC78j
		test	edi, 200h
		jz	short loc_4EBCA4
		mov	ecx, [ebp-18h]
		mov	ax, [ebp-4C4h]
		mov	[ecx], ax
		jmp	loc_4EB408
; ---------------------------------------------------------------------------

loc_4EBCA4:				; CODE XREF: .text:004EBC90j
		mov	edx, [ebp-18h]
		mov	ecx, [ebp-4C4h]
		mov	[edx], ecx
		jmp	loc_4EB408
; ---------------------------------------------------------------------------

loc_4EBCB4:				; CODE XREF: .text:004EBCCEj
		lea	edx, [ebp-520h]
		push	edx
		push	eax
		call	loc_4EB358
		add	esp, 8

loc_4EBCC4:				; CODE XREF: .text:004EB481j
					; .text:004EB48Dj ...
		mov	eax, [ebp-14h]	; jumptable 004EB4A9 cases 21-23
		inc	dword ptr [ebp-14h]
		mov	al, [eax]
		test	al, al
		jnz	short loc_4EBCB4

loc_4EBCD0:				; CODE XREF: .text:004EB40Dj
		lea	ecx, [ebp-520h]
		push	ecx
		call	loc_4EB310
		cmp	dword ptr [ebp-4C0h], 0
		pop	ecx
		jz	short loc_4EBCEB
		or	eax, 0FFFFFFFFh
		jmp	short loc_4EBCF1
; ---------------------------------------------------------------------------

loc_4EBCEB:				; CODE XREF: .text:004EBCE4j
		mov	eax, [ebp-4C4h]

loc_4EBCF1:				; CODE XREF: .text:004EBCE9j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EBCF8:				; CODE XREF: .text:004EBD69p
					; .text:004EC718p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	eax, 1
		cmp	dword ptr [ebx+0A0h], 0
		jz	short loc_4EBD52
		mov	edx, [ebx+0B4h]
		test	edx, edx
		jz	short loc_4EBD23
		mov	ecx, [edx]
		cmp	ecx, [ebx+0ACh]
		ja	short loc_4EBD23
		xor	eax, eax

loc_4EBD23:				; CODE XREF: .text:004EBD15j
					; .text:004EBD1Fj
		push	eax
		mov	edx, [ebx+0A8h]
		push	edx
		mov	ecx, [ebx+0A0h]
		push	ecx
		push	ebx
		call	dword ptr [ebx+0A4h]
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4EBD4A
		mov	dword ptr [ebx+0B0h], 1

loc_4EBD4A:				; CODE XREF: .text:004EBD3Ej
		xor	eax, eax
		mov	[ebx+0A0h], eax

loc_4EBD52:				; CODE XREF: .text:004EBD0Bj
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4EBD58:				; CODE XREF: .text:004EBE55p
					; .text:004EBE6Bp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+0Ch]
		cmp	dword ptr [ebx+0A0h], 50h
		jl	short loc_4EBD6F
		push	ebx
		call	loc_4EBCF8
		pop	ecx

loc_4EBD6F:				; CODE XREF: .text:004EBD66j
		mov	eax, [ebx+0B4h]
		test	eax, eax
		jz	short loc_4EBD83
		mov	edx, [eax]
		cmp	edx, [ebx+0ACh]
		jbe	short loc_4EBD97

loc_4EBD83:				; CODE XREF: .text:004EBD77j
		mov	ecx, [ebx+0A0h]
		mov	ax, [ebp+8]
		mov	[ebx+ecx*2], ax
		inc	dword ptr [ebx+0A0h]

loc_4EBD97:				; CODE XREF: .text:004EBD81j
		inc	dword ptr [ebx+0ACh]
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4EBDA0:				; CODE XREF: .text:004EC2C2p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ecx, 7
		mov	eax, [ebp+0Ch]
		mov	ebx, [ebp+8]
		add	eax, 0Eh

loc_4EBDB2:				; CODE XREF: .text:004EBDD5j
		mov	edx, ebx
		and	edx, 0Fh
		cmp	edx, 0Ah
		jge	short loc_4EBDC5
		add	dx, 30h
		mov	[eax], dx
		jmp	short loc_4EBDCC
; ---------------------------------------------------------------------------

loc_4EBDC5:				; CODE XREF: .text:004EBDBAj
		add	dx, 37h
		mov	[eax], dx

loc_4EBDCC:				; CODE XREF: .text:004EBDC3j
		shr	ebx, 4
		dec	ecx
		add	eax, 0FFFFFFFEh
		test	ecx, ecx
		jge	short loc_4EBDB2
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

___vprinterw:				; CODE XREF: .text:004EAFF0p
					; .text:004EB01Cp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFA9Ch
		xor	eax, eax
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	[ebp-4B4h], eax
		mov	[ebp-4B8h], eax
		mov	[ebp-4C4h], eax
		mov	edx, [ebp+8]
		mov	[ebp-4C0h], edx
		mov	ecx, [ebp+0Ch]
		mov	[ebp-4BCh], ecx
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4EBE1C
		lea	eax, [ebp+18h]
		jmp	short loc_4EBE1E
; ---------------------------------------------------------------------------

loc_4EBE1C:				; CODE XREF: .text:004EBE15j
		xor	eax, eax

loc_4EBE1E:				; CODE XREF: .text:004EBE1Aj
		mov	[ebp-4B0h], eax

loc_4EBE24:				; CODE XREF: .text:004EBE73j
					; .text:004EC69Ej ...
		mov	bx, [esi]
		add	esi, 2
		test	bx, bx
		jz	loc_4EC711
		cmp	bx, 25h
		jnz	short loc_4EBE63
		mov	bx, [esi]
		cmp	bx, 25h
		jnz	short loc_4EBE75
		add	esi, 2
		jmp	short loc_4EBE63
; ---------------------------------------------------------------------------
		cmp	word ptr [esi],	0
		jz	short loc_4EBE63
		lea	eax, [ebp-564h]
		push	eax
		push	ebx
		call	loc_4EBD58
		mov	bx, [esi]
		add	esp, 8
		add	esi, 2

loc_4EBE63:				; CODE XREF: .text:004EBE37j
					; .text:004EBE45j ...
		lea	eax, [ebp-564h]
		push	eax
		push	ebx
		call	loc_4EBD58
		add	esp, 8
		jmp	short loc_4EBE24
; ---------------------------------------------------------------------------

loc_4EBE75:				; CODE XREF: .text:004EBE40j
		lea	edx, [esi-2]
		xor	eax, eax
		mov	[ebp-14h], edx
		xor	edx, edx
		mov	[ebp-10h], edx
		or	edx, 0FFFFFFFFh
		mov	word ptr [ebp-0Ah], 0
		mov	[ebp-8], edx
		mov	[ebp-4], edx
		mov	dword ptr [ebp-1Ch], 1
		mov	edi, 20h

loc_4EBE9D:				; CODE XREF: .text:004EBECDj
					; .text:004EBF4Dj ...
		mov	bx, [esi]	; jumptable 004EBECF default case
		add	esi, 2
		cmp	bx, 20h
		jb	loc_4EC702	; jumptable 004EBECF cases 21-23
		movzx	edx, bx
		cmp	edx, 7Fh
		jg	loc_4EC702	; jumptable 004EBECF cases 21-23
		mov	ecx, ebx
		add	cl, 0E0h
		xor	edx, edx
		mov	dl, cl
		xor	ecx, ecx
		mov	cl, byte_57B00E[edx]
		cmp	ecx, 1Ah	; switch 27 cases
		ja	short loc_4EBE9D ; jumptable 004EBECF default case
		jmp	ds:off_4EBED6[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4EBED6	dd offset loc_4EBF62	; DATA XREF: .text:004EBECFr
		dd offset loc_4EBF42	; jump table for switch	statement
		dd offset loc_4EBFB5
		dd offset loc_4EBF52
		dd offset loc_4EBFFA
		dd offset loc_4EC010
		dd offset loc_4EC062
		dd offset loc_4EC06F
		dd offset loc_4EC082
		dd offset loc_4EBF98
		dd offset loc_4EC14E
		dd offset loc_4EC121
		dd offset loc_4EC12A
		dd offset loc_4EC133
		dd offset loc_4EC2AA
		dd offset loc_4EC427
		dd offset loc_4EC2F2
		dd offset loc_4EC372
		dd offset loc_4EC2E4
		dd offset loc_4EC364
		dd offset loc_4EC6A3
		dd offset loc_4EC702
		dd offset loc_4EC702
		dd offset loc_4EC702
		dd offset loc_4EBF7E
		dd offset loc_4EBF8B
		dd offset loc_4EC095
; ---------------------------------------------------------------------------

loc_4EBF42:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		test	eax, eax	; jumptable 004EBECF case 1
		jg	loc_4EC702	; jumptable 004EBECF cases 21-23
		or	edi, 1
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EBF52:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		test	eax, eax	; jumptable 004EBECF case 3
		jg	loc_4EC702	; jumptable 004EBECF cases 21-23
		or	edi, 2
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EBF62:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		test	eax, eax	; jumptable 004EBECF case 0
		jg	loc_4EC702	; jumptable 004EBECF cases 21-23
		cmp	word ptr [ebp-0Ah], 2Bh
		jz	loc_4EBE9D	; jumptable 004EBECF default case
		mov	[ebp-0Ah], bx
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EBF7E:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		and	edi, 0FFFFFFDFh	; jumptable 004EBECF case 24
		mov	eax, 5
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EBF8B:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		or	edi, 20h	; jumptable 004EBECF case 25
		mov	eax, 5
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EBF98:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		test	eax, eax	; jumptable 004EBECF case 9
		jg	short loc_4EC010 ; jumptable 004EBECF case 5
		test	edi, 2
		jnz	loc_4EBE9D	; jumptable 004EBECF default case
		or	edi, 8
		mov	eax, 1
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EBFB5:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		add	dword ptr [ebp+1Ch], 4 ; jumptable 004EBECF case 2
		mov	edx, [ebp+1Ch]
		cmp	eax, 2
		mov	ecx, [edx-4]
		mov	[ebp-30h], ecx
		jge	short loc_4EBFE5
		mov	eax, [ebp-30h]
		test	eax, eax
		jge	short loc_4EBFD8
		neg	eax
		mov	[ebp-4], eax
		or	edi, 2
		jmp	short loc_4EBFDB
; ---------------------------------------------------------------------------

loc_4EBFD8:				; CODE XREF: .text:004EBFCCj
		mov	[ebp-4], eax

loc_4EBFDB:				; CODE XREF: .text:004EBFD6j
		mov	eax, 3
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EBFE5:				; CODE XREF: .text:004EBFC5j
		cmp	eax, 4
		jnz	loc_4EC702	; jumptable 004EBECF cases 21-23
		mov	edx, [ebp-30h]
		inc	eax
		mov	[ebp-8], edx
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EBFFA:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		cmp	eax, 4		; jumptable 004EBECF case 4
		jge	loc_4EC702	; jumptable 004EBECF cases 21-23
		mov	eax, 4
		inc	dword ptr [ebp-8]
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EC010:				; CODE XREF: .text:004EBECFj
					; .text:004EBF9Aj
					; DATA XREF: ...
		sub	bx, 30h		; jumptable 004EBECF case 5
		cmp	eax, 2
		jg	short loc_4EC044
		cmp	dword ptr [ebp-4], 0FFFFFFFFh
		mov	eax, 2
		jnz	short loc_4EC02F
		movzx	edx, bx
		mov	[ebp-4], edx
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EC02F:				; CODE XREF: .text:004EC022j
		mov	ecx, [ebp-4]
		add	ecx, ecx
		lea	ecx, [ecx+ecx*4]
		movzx	edx, bx
		add	ecx, edx
		mov	[ebp-4], ecx
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EC044:				; CODE XREF: .text:004EC017j
		cmp	eax, 4
		jnz	loc_4EC702	; jumptable 004EBECF cases 21-23
		mov	ecx, [ebp-8]
		add	ecx, ecx
		lea	ecx, [ecx+ecx*4]
		movzx	edx, bx
		add	ecx, edx
		mov	[ebp-8], ecx
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EC062:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		or	edi, 10h	; jumptable 004EBECF case 6
		mov	eax, 5
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EC06F:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		or	edi, 100h	; jumptable 004EBECF case 7
		mov	eax, 5
		and	edi, 0FFFFFFEFh
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EC082:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		or	edi, 200h	; jumptable 004EBECF case 8
		mov	eax, 5
		and	edi, 0FFFFFFEFh
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EC095:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		cmp	word ptr [esi],	36h ; jumptable	004EBECF case 26
		jnz	short loc_4EC0BB
		cmp	word ptr [esi+2], 34h
		jnz	short loc_4EC0BB
		add	esi, 4
		or	edi, 100h
		and	edi, 0FFFFFDEFh
		mov	eax, 5
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EC0BB:				; CODE XREF: .text:004EC099j
					; .text:004EC0A0j
		cmp	word ptr [esi],	33h
		jnz	short loc_4EC0DE
		cmp	word ptr [esi+2], 32h
		jnz	short loc_4EC0DE
		add	esi, 4
		or	edi, 10h
		and	edi, 0FFFFFCFFh
		mov	eax, 5
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EC0DE:				; CODE XREF: .text:004EC0BFj
					; .text:004EC0C6j
		cmp	word ptr [esi],	31h
		jnz	short loc_4EC104
		cmp	word ptr [esi+2], 36h
		jnz	short loc_4EC104
		add	esi, 4
		or	edi, 200h
		and	edi, 0FFFFFEEFh
		mov	eax, 5
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EC104:				; CODE XREF: .text:004EC0E2j
					; .text:004EC0E9j
		cmp	word ptr [esi],	38h
		jnz	loc_4EBE9D	; jumptable 004EBECF default case
		add	esi, 2
		and	edi, 0FFFFFCEFh
		mov	eax, 5
		jmp	loc_4EBE9D	; jumptable 004EBECF default case
; ---------------------------------------------------------------------------

loc_4EC121:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		mov	dword ptr [ebp-38h], 8 ; jumptable 004EBECF case 11
		jmp	short loc_4EC144
; ---------------------------------------------------------------------------

loc_4EC12A:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		mov	dword ptr [ebp-38h], 0Ah ; jumptable 004EBECF case 12
		jmp	short loc_4EC144
; ---------------------------------------------------------------------------

loc_4EC133:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		mov	dword ptr [ebp-38h], 10h ; jumptable 004EBECF case 13
		lea	edx, [ebx+0FFE9h]
		mov	[ebp-1Eh], dx

loc_4EC144:				; CODE XREF: .text:004EC128j
					; .text:004EC131j
		mov	word ptr [ebp-0Ah], 0
		xor	ecx, ecx
		jmp	short loc_4EC159
; ---------------------------------------------------------------------------

loc_4EC14E:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		mov	dword ptr [ebp-38h], 0Ah ; jumptable 004EBECF case 10
		mov	cx, 1

loc_4EC159:				; CODE XREF: .text:004EC14Cj
		test	edi, 100h
		jz	short loc_4EC179
		add	dword ptr [ebp+1Ch], 8
		mov	eax, [ebp+1Ch]
		mov	edx, [eax-8]
		mov	[ebp-28h], edx
		mov	edx, [eax-4]
		mov	[ebp-24h], edx
		jmp	loc_4EC20C
; ---------------------------------------------------------------------------

loc_4EC179:				; CODE XREF: .text:004EC15Fj
		test	edi, 10h
		jz	short loc_4EC1AC
		add	dword ptr [ebp+1Ch], 4
		mov	eax, [ebp+1Ch]
		test	cx, cx
		mov	edx, [eax-4]
		mov	[ebp-2Ch], edx
		jz	short loc_4EC19F
		mov	eax, [ebp-2Ch]
		cdq
		mov	[ebp-28h], eax
		mov	[ebp-24h], edx
		jmp	short loc_4EC20C
; ---------------------------------------------------------------------------

loc_4EC19F:				; CODE XREF: .text:004EC191j
		mov	eax, [ebp-2Ch]
		xor	edx, edx
		mov	[ebp-28h], eax
		mov	[ebp-24h], edx
		jmp	short loc_4EC20C
; ---------------------------------------------------------------------------

loc_4EC1AC:				; CODE XREF: .text:004EC17Fj
		test	edi, 200h
		jz	short loc_4EC1E3
		add	dword ptr [ebp+1Ch], 4
		mov	eax, [ebp+1Ch]
		test	cx, cx
		mov	dx, [eax-4]
		mov	[ebp-32h], dx
		jz	short loc_4EC1D5
		movsx	eax, word ptr [ebp-32h]
		cdq
		mov	[ebp-28h], eax
		mov	[ebp-24h], edx
		jmp	short loc_4EC20C
; ---------------------------------------------------------------------------

loc_4EC1D5:				; CODE XREF: .text:004EC1C6j
		movzx	eax, word ptr [ebp-32h]
		xor	edx, edx
		mov	[ebp-28h], eax
		mov	[ebp-24h], edx
		jmp	short loc_4EC20C
; ---------------------------------------------------------------------------

loc_4EC1E3:				; CODE XREF: .text:004EC1B2j
		add	dword ptr [ebp+1Ch], 4
		mov	eax, [ebp+1Ch]
		test	cx, cx
		mov	edx, [eax-4]
		mov	[ebp-30h], edx
		jz	short loc_4EC201
		mov	eax, [ebp-30h]
		cdq
		mov	[ebp-28h], eax
		mov	[ebp-24h], edx
		jmp	short loc_4EC20C
; ---------------------------------------------------------------------------

loc_4EC201:				; CODE XREF: .text:004EC1F3j
		mov	eax, [ebp-30h]
		xor	edx, edx
		mov	[ebp-28h], eax
		mov	[ebp-24h], edx

loc_4EC20C:				; CODE XREF: .text:004EC174j
					; .text:004EC19Dj ...
		lea	eax, [ebp-0AAh]
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-24h], 0
		jnz	short loc_4EC231
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_4EC231
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4EC234
		mov	edx, [ebp-18h]
		mov	word ptr [edx],	0
		jmp	short loc_4EC250
; ---------------------------------------------------------------------------

loc_4EC231:				; CODE XREF: .text:004EC219j
					; .text:004EC21Fj
		or	edi, 4

loc_4EC234:				; CODE XREF: .text:004EC225j
		mov	ax, [ebp-1Eh]
		push	eax
		push	ecx
		mov	edx, [ebp-38h]
		push	edx
		mov	ecx, [ebp-18h]
		push	ecx
		push	dword ptr [ebp-24h]
		push	dword ptr [ebp-28h]
		call	___int64tow
		add	esp, 18h

loc_4EC250:				; CODE XREF: .text:004EC22Fj
		cmp	dword ptr [ebp-8], 0
		jl	loc_4EC47F
		mov	edx, [ebp-18h]
		push	edx		; s
		call	_wcslen
		pop	ecx
		mov	[ebp-3Ch], eax
		mov	[ebp-40h], eax
		mov	edx, [ebp-18h]
		cmp	word ptr [edx],	2Dh
		jnz	short loc_4EC278
		dec	dword ptr [ebp-3Ch]
		jmp	short loc_4EC290
; ---------------------------------------------------------------------------

loc_4EC278:				; CODE XREF: .text:004EC271j
		cmp	word ptr [ebp-0Ah], 0
		jz	short loc_4EC290
		inc	dword ptr [ebp-40h]
		sub	dword ptr [ebp-18h], 2
		mov	ecx, [ebp-18h]
		mov	ax, [ebp-0Ah]
		mov	[ecx], ax

loc_4EC290:				; CODE XREF: .text:004EC276j
					; .text:004EC27Dj
		mov	edx, [ebp-8]
		cmp	edx, [ebp-3Ch]
		jle	loc_4EC4F4
		mov	ecx, [ebp-8]
		sub	ecx, [ebp-3Ch]
		mov	[ebp-10h], ecx
		jmp	loc_4EC4F4
; ---------------------------------------------------------------------------

loc_4EC2AA:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		add	dword ptr [ebp+1Ch], 4 ; jumptable 004EBECF case 14
		mov	eax, [ebp+1Ch]
		lea	ecx, [ebp-0ACh]
		mov	edx, [eax-4]
		mov	[ebp-18h], edx
		push	ecx
		mov	eax, [ebp-18h]
		push	eax
		call	loc_4EBDA0
		add	esp, 8
		mov	word ptr [ebp-9Ch], 0
		and	edi, 0FFFFFFFBh
		lea	edx, [ebp-0ACh]
		mov	[ebp-18h], edx
		jmp	loc_4EC47F
; ---------------------------------------------------------------------------

loc_4EC2E4:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		test	edi, 210h	; jumptable 004EBECF case 18
		jnz	short loc_4EC2F2 ; jumptable 004EBECF case 16
		or	edi, 200h

loc_4EC2F2:				; CODE XREF: .text:004EBECFj
					; .text:004EC2EAj
					; DATA XREF: ...
		test	edi, 200h	; jumptable 004EBECF case 16
		jz	short loc_4EC32D
		add	dword ptr [ebp+1Ch], 4
		mov	ecx, [ebp+1Ch]
		mov	al, [ecx-4]
		lea	ecx, [ebp-0ACh]
		and	al, 0FFh
		xor	edx, edx
		mov	[ebp-0ACh], al
		mov	byte ptr [ebp-0ABh], 0
		mov	[ebp-1Ch], edx
		mov	[ebp-18h], ecx
		mov	dword ptr [ebp-40h], 1
		jmp	loc_4EC4F4
; ---------------------------------------------------------------------------

loc_4EC32D:				; CODE XREF: .text:004EC2F8j
		add	dword ptr [ebp+1Ch], 4
		mov	eax, [ebp+1Ch]
		lea	ecx, [ebp-0ACh]
		mov	dx, [eax-4]
		mov	[ebp-0ACh], dx
		mov	word ptr [ebp-0AAh], 0
		mov	[ebp-18h], ecx
		mov	dword ptr [ebp-1Ch], 1
		mov	dword ptr [ebp-40h], 1
		jmp	loc_4EC4F4
; ---------------------------------------------------------------------------

loc_4EC364:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		test	edi, 210h	; jumptable 004EBECF case 19
		jnz	short loc_4EC372 ; jumptable 004EBECF case 17
		or	edi, 200h

loc_4EC372:				; CODE XREF: .text:004EBECFj
					; .text:004EC36Aj
					; DATA XREF: ...
		test	edi, 200h	; jumptable 004EBECF case 17
		jz	short loc_4EC39B
		add	dword ptr [ebp+1Ch], 4
		mov	eax, [ebp+1Ch]
		xor	ecx, ecx
		mov	edx, [eax-4]
		mov	[ebp-18h], edx
		mov	[ebp-1Ch], ecx
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4EC3BC
		mov	dword ptr [ebp-18h], offset aNull_1 ; "(null)"
		jmp	short loc_4EC3BC
; ---------------------------------------------------------------------------

loc_4EC39B:				; CODE XREF: .text:004EC378j
		add	dword ptr [ebp+1Ch], 4
		mov	eax, [ebp+1Ch]
		mov	edx, [eax-4]
		mov	[ebp-18h], edx
		mov	dword ptr [ebp-1Ch], 1
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4EC3BC
		mov	dword ptr [ebp-18h], offset aNull_2 ; "(null)"

loc_4EC3BC:				; CODE XREF: .text:004EC390j
					; .text:004EC399j ...
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_4EC3F6
		cmp	dword ptr [ebp-8], 0
		jl	short loc_4EC3CD
		mov	eax, [ebp-8]
		jmp	short loc_4EC3D2
; ---------------------------------------------------------------------------

loc_4EC3CD:				; CODE XREF: .text:004EC3C6j
		mov	eax, 7FFFFFFFh

loc_4EC3D2:				; CODE XREF: .text:004EC3CBj
		mov	edx, [ebp-18h]
		xor	ecx, ecx
		mov	[ebp-40h], ecx
		jmp	short loc_4EC3E3
; ---------------------------------------------------------------------------

loc_4EC3DC:				; CODE XREF: .text:004EC3EFj
		dec	eax
		inc	dword ptr [ebp-40h]
		add	edx, 2

loc_4EC3E3:				; CODE XREF: .text:004EC3DAj
		test	eax, eax
		jz	loc_4EC4F4
		cmp	word ptr [edx],	0
		jnz	short loc_4EC3DC
		jmp	loc_4EC4F4
; ---------------------------------------------------------------------------

loc_4EC3F6:				; CODE XREF: .text:004EC3C0j
		cmp	dword ptr [ebp-8], 0
		jl	short loc_4EC401
		mov	eax, [ebp-8]
		jmp	short loc_4EC406
; ---------------------------------------------------------------------------

loc_4EC401:				; CODE XREF: .text:004EC3FAj
		mov	eax, 7FFFFFFFh

loc_4EC406:				; CODE XREF: .text:004EC3FFj
		mov	edx, [ebp-18h]
		xor	ecx, ecx
		mov	[ebp-40h], ecx
		jmp	short loc_4EC415
; ---------------------------------------------------------------------------

loc_4EC410:				; CODE XREF: .text:004EC420j
		dec	eax
		inc	dword ptr [ebp-40h]
		inc	edx

loc_4EC415:				; CODE XREF: .text:004EC40Ej
		test	eax, eax
		jz	loc_4EC4F4
		cmp	byte ptr [edx],	0
		jnz	short loc_4EC410
		jmp	loc_4EC4F4
; ---------------------------------------------------------------------------

loc_4EC427:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		test	edi, 100h	; jumptable 004EBECF case 15
		mov	eax, 8
		jnz	short loc_4EC437
		add	eax, 0FFFFFFFEh

loc_4EC437:				; CODE XREF: .text:004EC432j
		mov	edx, edi
		push	eax
		and	dx, 1
		lea	ecx, [ebp-0AAh]
		push	edx
		push	ebx
		mov	[ebp-18h], ecx
		push	ecx
		cmp	dword ptr [ebp-8], 0
		jge	short loc_4EC457
		mov	eax, 6
		jmp	short loc_4EC45A
; ---------------------------------------------------------------------------

loc_4EC457:				; CODE XREF: .text:004EC44Ej
		mov	eax, [ebp-8]

loc_4EC45A:				; CODE XREF: .text:004EC455j
		push	eax
		mov	edx, [ebp+1Ch]
		push	edx
		call	loc_4EDA0C
		add	esp, 18h
		mov	ecx, edi
		and	ecx, 100h
		push	ecx
		mov	eax, [ebp+1Ch]
		push	eax
		call	loc_4ED9FA
		add	esp, 8
		mov	[ebp+1Ch], eax

loc_4EC47F:				; CODE XREF: .text:004EC254j
					; .text:004EC2DFj
		test	edi, 8
		jz	short loc_4EC4B7
		cmp	dword ptr [ebp-4], 0
		jle	short loc_4EC4B7
		mov	edx, [ebp-18h]
		push	edx		; s
		call	_wcslen
		pop	ecx
		mov	[ebp-40h], eax
		mov	ecx, [ebp-18h]
		cmp	word ptr [ecx],	2Dh
		jnz	short loc_4EC4A6
		dec	dword ptr [ebp-40h]

loc_4EC4A6:				; CODE XREF: .text:004EC4A1j
		mov	eax, [ebp-4]
		cmp	eax, [ebp-40h]
		jle	short loc_4EC4B7
		mov	edx, [ebp-4]
		sub	edx, [ebp-40h]
		mov	[ebp-10h], edx

loc_4EC4B7:				; CODE XREF: .text:004EC485j
					; .text:004EC48Bj ...
		mov	ecx, [ebp-18h]
		cmp	word ptr [ecx],	2Dh
		jz	short loc_4EC4C7
		cmp	word ptr [ebp-0Ah], 0
		jz	short loc_4EC4E7

loc_4EC4C7:				; CODE XREF: .text:004EC4BEj
		mov	eax, [ebp-18h]
		cmp	word ptr [eax],	2Dh
		jz	short loc_4EC4DE
		sub	dword ptr [ebp-18h], 2
		mov	edx, [ebp-18h]
		mov	cx, [ebp-0Ah]
		mov	[edx], cx

loc_4EC4DE:				; CODE XREF: .text:004EC4CEj
		cmp	dword ptr [ebp-10h], 0
		jle	short loc_4EC4E7
		dec	dword ptr [ebp-10h]

loc_4EC4E7:				; CODE XREF: .text:004EC4C5j
					; .text:004EC4E2j
		mov	eax, [ebp-18h]
		push	eax		; s
		call	_wcslen
		pop	ecx
		mov	[ebp-40h], eax

loc_4EC4F4:				; CODE XREF: .text:004EC296j
					; .text:004EC2A5j ...
		test	edi, 1
		jz	short loc_4EC52F
		cmp	bx, 6Fh
		jnz	short loc_4EC511
		cmp	dword ptr [ebp-10h], 0
		jg	short loc_4EC52F
		mov	dword ptr [ebp-10h], 1
		jmp	short loc_4EC52F
; ---------------------------------------------------------------------------

loc_4EC511:				; CODE XREF: .text:004EC500j
		cmp	bx, 78h
		jz	short loc_4EC51D
		cmp	bx, 58h
		jnz	short loc_4EC52F

loc_4EC51D:				; CODE XREF: .text:004EC515j
		or	edi, 40h
		sub	dword ptr [ebp-4], 2
		sub	dword ptr [ebp-10h], 2
		jns	short loc_4EC52F
		xor	edx, edx
		mov	[ebp-10h], edx

loc_4EC52F:				; CODE XREF: .text:004EC4FAj
					; .text:004EC506j ...
		mov	ecx, [ebp-10h]
		add	[ebp-40h], ecx
		test	edi, 2
		jnz	short loc_4EC561
		mov	eax, [ebp-4]
		cmp	eax, [ebp-40h]
		jle	short loc_4EC561

loc_4EC545:				; CODE XREF: .text:004EC55Fj
		lea	edx, [ebp-564h]
		push	edx
		push	20h
		call	loc_4EBD58
		add	esp, 8
		dec	dword ptr [ebp-4]
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-40h]
		jg	short loc_4EC545

loc_4EC561:				; CODE XREF: .text:004EC53Bj
					; .text:004EC543j
		test	edi, 40h
		jz	short loc_4EC58A
		lea	eax, [ebp-564h]
		push	eax
		push	30h
		call	loc_4EBD58
		add	esp, 8
		lea	edx, [ebp-564h]
		push	edx
		push	ebx
		call	loc_4EBD58
		add	esp, 8

loc_4EC58A:				; CODE XREF: .text:004EC567j
		cmp	dword ptr [ebp-10h], 0
		jle	short loc_4EC5F5
		mov	ecx, [ebp-10h]
		sub	[ebp-40h], ecx
		mov	eax, [ebp-10h]
		sub	[ebp-4], eax
		mov	edx, [ebp-18h]
		cmp	word ptr [edx],	2Dh
		jz	short loc_4EC5B7
		mov	ecx, [ebp-18h]
		cmp	word ptr [ecx],	20h
		jz	short loc_4EC5B7
		mov	eax, [ebp-18h]
		cmp	word ptr [eax],	2Bh
		jnz	short loc_4EC5EA

loc_4EC5B7:				; CODE XREF: .text:004EC5A3j
					; .text:004EC5ACj
		lea	edx, [ebp-564h]
		push	edx
		mov	ecx, [ebp-18h]
		add	dword ptr [ebp-18h], 2
		mov	ax, [ecx]
		push	eax
		call	loc_4EBD58
		add	esp, 8
		dec	dword ptr [ebp-40h]
		dec	dword ptr [ebp-4]
		jmp	short loc_4EC5EA
; ---------------------------------------------------------------------------

loc_4EC5D9:				; CODE XREF: .text:004EC5F3j
		lea	edx, [ebp-564h]
		push	edx
		push	30h
		call	loc_4EBD58
		add	esp, 8

loc_4EC5EA:				; CODE XREF: .text:004EC5B5j
					; .text:004EC5D7j
		mov	ecx, [ebp-10h]
		add	dword ptr [ebp-10h], 0FFFFFFFFh
		test	ecx, ecx
		jnz	short loc_4EC5D9

loc_4EC5F5:				; CODE XREF: .text:004EC58Ej
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_4EC64D
		mov	edi, [ebp-18h]
		xor	eax, eax
		mov	[ebp-48h], eax
		lea	ebx, [ebp-4ACh]
		mov	edx, [ebp-40h]
		mov	[ebp-4Ch], edx
		jmp	short loc_4EC633
; ---------------------------------------------------------------------------

loc_4EC611:				; CODE XREF: .text:004EC63Cj
		push	2		; n
		push	edi		; s
		lea	eax, [ebp-42h]
		push	eax		; pwc
		call	_mbtowc
		add	esp, 0Ch
		test	eax, eax
		jle	short loc_4EC63E
		mov	dx, [ebp-42h]
		mov	[ebx], dx
		add	ebx, 2
		inc	dword ptr [ebp-48h]
		add	edi, eax

loc_4EC633:				; CODE XREF: .text:004EC60Fj
		mov	ecx, [ebp-4Ch]
		add	dword ptr [ebp-4Ch], 0FFFFFFFFh
		test	ecx, ecx
		jg	short loc_4EC611

loc_4EC63E:				; CODE XREF: .text:004EC622j
		lea	eax, [ebp-4ACh]
		mov	[ebp-18h], eax
		mov	edx, [ebp-48h]
		mov	[ebp-40h], edx

loc_4EC64D:				; CODE XREF: .text:004EC5F9j
		cmp	dword ptr [ebp-40h], 0
		jz	short loc_4EC693
		mov	ecx, [ebp-40h]
		sub	[ebp-4], ecx
		jmp	short loc_4EC675
; ---------------------------------------------------------------------------

loc_4EC65B:				; CODE XREF: .text:004EC67Ej
		lea	eax, [ebp-564h]
		push	eax
		mov	edx, [ebp-18h]
		add	dword ptr [ebp-18h], 2
		mov	cx, [edx]
		push	ecx
		call	loc_4EBD58
		add	esp, 8

loc_4EC675:				; CODE XREF: .text:004EC659j
		mov	eax, [ebp-40h]
		add	dword ptr [ebp-40h], 0FFFFFFFFh
		test	eax, eax
		jnz	short loc_4EC65B
		jmp	short loc_4EC693
; ---------------------------------------------------------------------------

loc_4EC682:				; CODE XREF: .text:004EC69Cj
		lea	edx, [ebp-564h]
		push	edx
		push	20h
		call	loc_4EBD58
		add	esp, 8

loc_4EC693:				; CODE XREF: .text:004EC651j
					; .text:004EC680j
		mov	ecx, [ebp-4]
		add	dword ptr [ebp-4], 0FFFFFFFFh
		test	ecx, ecx
		jg	short loc_4EC682
		jmp	loc_4EBE24
; ---------------------------------------------------------------------------

loc_4EC6A3:				; CODE XREF: .text:004EBECFj
					; DATA XREF: .text:off_4EBED6o
		add	dword ptr [ebp+1Ch], 4 ; jumptable 004EBECF case 20
		mov	eax, [ebp+1Ch]
		test	edi, 10h
		mov	edx, [eax-4]
		mov	[ebp-18h], edx
		jz	short loc_4EC6C8
		mov	ecx, [ebp-18h]
		mov	eax, [ebp-4B8h]
		mov	[ecx], eax
		jmp	loc_4EBE24
; ---------------------------------------------------------------------------

loc_4EC6C8:				; CODE XREF: .text:004EC6B6j
		test	edi, 200h
		jz	short loc_4EC6E2
		mov	edx, [ebp-18h]
		mov	cx, [ebp-4B8h]
		mov	[edx], cx
		jmp	loc_4EBE24
; ---------------------------------------------------------------------------

loc_4EC6E2:				; CODE XREF: .text:004EC6CEj
		mov	eax, [ebp-18h]
		mov	edx, [ebp-4B8h]
		mov	[eax], edx
		jmp	loc_4EBE24
; ---------------------------------------------------------------------------

loc_4EC6F2:				; CODE XREF: .text:004EC70Fj
		lea	ecx, [ebp-564h]
		push	ecx
		push	eax
		call	loc_4EBD58
		add	esp, 8

loc_4EC702:				; CODE XREF: .text:004EBEA7j
					; .text:004EBEB3j ...
		mov	eax, [ebp-14h]	; jumptable 004EBECF cases 21-23
		add	dword ptr [ebp-14h], 2
		mov	ax, [eax]
		test	ax, ax
		jnz	short loc_4EC6F2

loc_4EC711:				; CODE XREF: .text:004EBE2Dj
		lea	edx, [ebp-564h]
		push	edx
		call	loc_4EBCF8
		cmp	dword ptr [ebp-4B4h], 0
		pop	ecx
		jz	short loc_4EC72C
		or	eax, 0FFFFFFFFh
		jmp	short loc_4EC732
; ---------------------------------------------------------------------------

loc_4EC72C:				; CODE XREF: .text:004EC725j
		mov	eax, [ebp-4B8h]

loc_4EC732:				; CODE XREF: .text:004EC72Aj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; void __cdecl _wfnmerge(wchar_t *path,	const wchar_t *drive, const wchar_t *dir, const	wchar_t	*_name, const wchar_t *ext)
__wfnmerge:				; CODE XREF: .text:0040936Cp
					; .text:0040D6FDp ...
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+18h]
		push	eax		; ext
		mov	edx, [ebp+14h]
		push	edx		; _name
		mov	ecx, [ebp+10h]
		push	ecx		; dir
		mov	eax, [ebp+0Ch]
		push	eax		; drive
		mov	edx, [ebp+8]
		push	edx		; path
		call	__wmakepath
		add	esp, 14h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4EC760:				; CODE XREF: .text:004EC86Ep
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		mov	ecx, [ebp+8]
		xor	eax, eax
		mov	[ebp-4], eax
		mov	ax, [ecx]
		add	ecx, 2
		cmp	ax, 72h
		jnz	short loc_4EC782
		xor	edx, edx
		mov	ebx, 1
		jmp	short loc_4EC7BB
; ---------------------------------------------------------------------------

loc_4EC782:				; CODE XREF: .text:004EC777j
		cmp	ax, 77h
		jnz	short loc_4EC79B
		mov	edx, 301h
		mov	dword ptr [ebp-4], 80h
		mov	ebx, 2
		jmp	short loc_4EC7BB
; ---------------------------------------------------------------------------

loc_4EC79B:				; CODE XREF: .text:004EC786j
		cmp	ax, 61h
		jnz	short loc_4EC7B4
		mov	edx, 901h
		mov	dword ptr [ebp-4], 80h
		mov	ebx, 2
		jmp	short loc_4EC7BB
; ---------------------------------------------------------------------------

loc_4EC7B4:				; CODE XREF: .text:004EC79Fj
		xor	eax, eax
		jmp	loc_4EC852
; ---------------------------------------------------------------------------

loc_4EC7BB:				; CODE XREF: .text:004EC780j
					; .text:004EC799j ...
		mov	ax, [ecx]
		add	ecx, 2
		cmp	ax, 2Bh
		jz	short loc_4EC7D9
		cmp	word ptr [ecx],	2Bh
		jnz	short loc_4EC7F4
		cmp	ax, 74h
		jz	short loc_4EC7D9
		cmp	ax, 62h
		jnz	short loc_4EC7F4

loc_4EC7D9:				; CODE XREF: .text:004EC7C5j
					; .text:004EC7D1j
		cmp	ax, 2Bh
		jnz	short loc_4EC7E2
		mov	ax, [ecx]

loc_4EC7E2:				; CODE XREF: .text:004EC7DDj
		and	edx, 0FFFFFFFEh
		mov	ebx, 3
		mov	dword ptr [ebp-4], 180h
		or	edx, 2

loc_4EC7F4:				; CODE XREF: .text:004EC7CBj
					; .text:004EC7D7j
		cmp	ax, 74h
		jnz	short loc_4EC802
		or	edx, 4000h
		jmp	short loc_4EC839
; ---------------------------------------------------------------------------

loc_4EC802:				; CODE XREF: .text:004EC7F8j
		cmp	ax, 62h
		jnz	short loc_4EC813
		or	edx, 8000h
		or	ebx, 40h
		jmp	short loc_4EC839
; ---------------------------------------------------------------------------

loc_4EC813:				; CODE XREF: .text:004EC806j
		cmp	ax, 2Bh
		jz	short loc_4EC822
		test	ax, ax
		jz	short loc_4EC822
		xor	eax, eax
		jmp	short loc_4EC852
; ---------------------------------------------------------------------------

loc_4EC822:				; CODE XREF: .text:004EC817j
					; .text:004EC81Cj
		mov	ecx, off_57A87C
		mov	eax, [ecx]
		and	eax, 0C000h
		or	edx, eax
		test	dh, 80h
		jz	short loc_4EC839
		or	ebx, 40h

loc_4EC839:				; CODE XREF: .text:004EC800j
					; .text:004EC811j ...
		mov	off_57BA90, offset __xfclose
		mov	ecx, [ebp+0Ch]
		mov	[ecx], edx
		mov	edx, [ebp+10h]
		mov	eax, [ebp-4]
		mov	[edx], eax
		mov	eax, ebx

loc_4EC852:				; CODE XREF: .text:004EC7B6j
					; .text:004EC820j
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl __wopenfp(FILE *stream, LPCWSTR lpFileName, int, int)
___wopenfp:				; CODE XREF: .text:004EC91Fp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		mov	ebx, [ebp+8]
		lea	eax, [ebp-8]
		push	eax
		lea	edx, [ebp-4]
		push	edx
		mov	ecx, [ebp+10h]
		push	ecx
		call	loc_4EC760
		add	esp, 0Ch
		mov	[ebx+12h], ax
		test	ax, ax
		jz	short loc_4EC8A3
		cmp	byte ptr [ebx+16h], 0
		jge	short loc_4EC8B1
		mov	edx, [ebp-8]
		push	edx		; char
		mov	ecx, [ebp-4]
		or	ecx, [ebp+14h]
		push	ecx		; char
		mov	eax, [ebp+0Ch]
		push	eax		; lpFileName
		call	___wopen
		add	esp, 0Ch
		mov	[ebx+16h], al
		test	al, al
		jge	short loc_4EC8B1

loc_4EC8A3:				; CODE XREF: .text:004EC87Dj
		mov	byte ptr [ebx+16h], 0FFh
		mov	word ptr [ebx+12h], 0
		xor	eax, eax
		jmp	short loc_4EC8F9
; ---------------------------------------------------------------------------

loc_4EC8B1:				; CODE XREF: .text:004EC883j
					; .text:004EC8A1j
		movsx	edx, byte ptr [ebx+16h]
		test	byte ptr (_openfd+1)[edx*4], 20h
		jz	short loc_4EC8C5
		or	word ptr [ebx+12h], 200h

loc_4EC8C5:				; CODE XREF: .text:004EC8BDj
		push	200h		; size
		mov	ecx, 1
		test	byte ptr [ebx+13h], 2
		jnz	short loc_4EC8D6
		dec	ecx

loc_4EC8D6:				; CODE XREF: .text:004EC8D3j
		push	ecx		; type
		push	0		; buf
		push	ebx		; stream
		call	_setvbuf
		add	esp, 10h
		test	eax, eax
		jz	short loc_4EC8F1
		push	ebx		; stream
		call	_fclose
		pop	ecx
		xor	eax, eax
		jmp	short loc_4EC8F9
; ---------------------------------------------------------------------------

loc_4EC8F1:				; CODE XREF: .text:004EC8E4j
		mov	word ptr [ebx+10h], 0
		mov	eax, ebx

loc_4EC8F9:				; CODE XREF: .text:004EC8AFj
					; .text:004EC8EFj
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; FILE *__cdecl	_wfopen(const wchar_t *path, const wchar_t *mode)
__wfopen:				; CODE XREF: .text:00407228p
					; .text:0040C7B3p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		call	_lock_all_streams
		call	___getfp
		mov	ebx, eax
		test	eax, eax
		jz	short loc_4EC929
		push	0		; int
		mov	edx, [ebp+0Ch]
		push	edx		; int
		mov	ecx, [ebp+8]
		push	ecx		; lpFileName
		push	ebx		; stream
		call	___wopenfp
		add	esp, 10h
		mov	ebx, eax

loc_4EC929:				; CODE XREF: .text:004EC912j
		call	_unlock_all_streams
		mov	eax, ebx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; void __cdecl _wmakepath(wchar_t *path, const wchar_t *drive, const wchar_t *dir, const wchar_t *_name,	const wchar_t *ext)
__wmakepath:				; CODE XREF: .text:004EC753p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+18h]
		mov	edi, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	edx, edx
		jz	short loc_4EC964
		cmp	word ptr [edx],	0
		jz	short loc_4EC964
		mov	dx, [edx]
		mov	[eax], dx
		add	eax, 2
		mov	word ptr [eax],	3Ah
		add	eax, 2

loc_4EC964:				; CODE XREF: .text:004EC94Bj
					; .text:004EC951j
		test	esi, esi
		jz	short loc_4EC990
		cmp	word ptr [esi],	0
		jz	short loc_4EC990
		push	esi		; src
		push	eax		; dest
		call	__wcspcpy
		mov	dx, [eax-2]
		add	esp, 8
		cmp	dx, 5Ch
		jz	short loc_4EC990
		cmp	dx, 2Fh
		jz	short loc_4EC990
		mov	word ptr [eax],	5Ch
		add	eax, 2

loc_4EC990:				; CODE XREF: .text:004EC966j
					; .text:004EC96Cj ...
		test	edi, edi
		jz	short loc_4EC99E
		push	edi		; src
		push	eax		; dest
		call	__wcspcpy
		add	esp, 8

loc_4EC99E:				; CODE XREF: .text:004EC992j
		test	ebx, ebx
		jz	short loc_4EC9C0
		cmp	word ptr [ebx],	0
		jz	short loc_4EC9C0
		cmp	word ptr [ebx],	2Eh
		jz	short loc_4EC9B6
		mov	word ptr [eax],	2Eh
		add	eax, 2

loc_4EC9B6:				; CODE XREF: .text:004EC9ACj
		push	ebx		; src
		push	eax		; dest
		call	__wcspcpy
		add	esp, 8

loc_4EC9C0:				; CODE XREF: .text:004EC9A0j
					; .text:004EC9A6j
		mov	word ptr [eax],	0
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4EC9CC(wchar_t *dst, wchar_t *s, _size_t maxlen)
loc_4EC9CC:				; CODE XREF: .text:004ECB3Dp
					; .text:004ECB74p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4ECA07
		push	esi		; s
		call	_wcslen
		pop	ecx
		cmp	edi, eax
		ja	short loc_4EC9FD
		push	edi		; maxlen
		push	esi		; src
		push	ebx		; dest
		call	_wcsncpy
		add	esp, 0Ch
		mov	word ptr [ebx+edi*2], 0
		jmp	short loc_4ECA07
; ---------------------------------------------------------------------------

loc_4EC9FD:				; CODE XREF: .text:004EC9E8j
		push	esi		; src
		push	ebx		; dst
		call	_wcscpy
		add	esp, 8

loc_4ECA07:				; CODE XREF: .text:004EC9DDj
					; .text:004EC9FBj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ECA0C:				; CODE XREF: .text:004ECB1Cp
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		cmp	word ptr [eax-2], 2Eh
		jnz	short loc_4ECA1C
		sub	eax, 2

loc_4ECA1C:				; CODE XREF: .text:004ECA17j
		sub	eax, 2
		mov	dx, [eax]
		sub	dx, 1
		jb	short loc_4ECA43
		sub	dx, 2Eh
		jz	short loc_4ECA43
		sub	dx, 0Bh
		jz	short loc_4ECA3C
		sub	dx, 22h
		jz	short loc_4ECA43
		jmp	short loc_4ECA4A
; ---------------------------------------------------------------------------

loc_4ECA3C:				; CODE XREF: .text:004ECA32j
		cmp	word ptr [eax-4], 0
		jnz	short loc_4ECA4A

loc_4ECA43:				; CODE XREF: .text:004ECA26j
					; .text:004ECA2Cj ...
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ECA4A:				; CODE XREF: .text:004ECA3Aj
					; .text:004ECA41j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl _wfnsplit(const wchar_t *path, wchar_t *drive, wchar_t *dir, wchar_t *_name, wchar_t *ext)
__wfnsplit:				; CODE XREF: .text:0040930Ap
					; .text:00409344p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF4h
		push	ebx
		push	esi
		push	edi
		xor	edi, edi
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4ECA6C
		mov	eax, [ebp+0Ch]
		mov	word ptr [eax],	0

loc_4ECA6C:				; CODE XREF: .text:004ECA62j
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4ECA7A
		mov	edx, [ebp+10h]
		mov	word ptr [edx],	0

loc_4ECA7A:				; CODE XREF: .text:004ECA70j
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4ECA88
		mov	ecx, [ebp+14h]
		mov	word ptr [ecx],	0

loc_4ECA88:				; CODE XREF: .text:004ECA7Ej
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4ECA96
		mov	eax, [ebp+18h]
		mov	word ptr [eax],	0

loc_4ECA96:				; CODE XREF: .text:004ECA8Cj
		lea	ebx, [ebp-20Ch]
		mov	eax, [ebp+8]
		push	eax		; s
		call	_wcslen
		pop	ecx
		mov	esi, eax
		cmp	eax, 104h
		jle	short loc_4ECAB4
		mov	esi, 104h

loc_4ECAB4:				; CODE XREF: .text:004ECAADj
		mov	word ptr [ebx],	0
		push	esi		; maxlen
		mov	eax, [ebp+8]
		add	ebx, 2
		push	eax		; src
		push	ebx		; dest
		call	_wcsncpy
		add	esi, esi
		add	esp, 0Ch
		add	ebx, esi
		xor	esi, esi
		mov	word ptr [ebx],	0

loc_4ECAD5:				; CODE XREF: .text:004ECAF9j
					; .text:004ECB0Ej ...
		sub	ebx, 2
		movzx	eax, word ptr [ebx]
		cmp	eax, 2Fh
		jg	short loc_4ECAFB
		jz	loc_4ECB86
		sub	eax, 1
		jb	short loc_4ECB5A
		sub	eax, 29h
		jz	loc_4ECBD4
		sub	eax, 4
		jz	short loc_4ECB10
		jmp	short loc_4ECAD5
; ---------------------------------------------------------------------------

loc_4ECAFB:				; CODE XREF: .text:004ECADEj
		sub	eax, 3Ah
		jz	short loc_4ECB4C
		sub	eax, 5
		jz	loc_4ECBD4
		sub	eax, 1Dh
		jz	short loc_4ECB86
		jmp	short loc_4ECAD5
; ---------------------------------------------------------------------------

loc_4ECB10:				; CODE XREF: .text:004ECAF7j
		test	esi, esi
		jnz	short loc_4ECB24
		cmp	word ptr [ebx+2], 0
		jnz	short loc_4ECB24
		push	ebx
		call	loc_4ECA0C
		pop	ecx
		mov	esi, eax

loc_4ECB24:				; CODE XREF: .text:004ECB12j
					; .text:004ECB19j
		test	esi, esi
		jnz	short loc_4ECAD5
		test	edi, 2
		jnz	short loc_4ECAD5
		push	0FFh		; maxlen
		push	ebx		; s
		mov	eax, [ebp+18h]
		or	edi, 2
		push	eax		; dst
		call	loc_4EC9CC
		add	esp, 0Ch
		mov	word ptr [ebx],	0
		jmp	short loc_4ECAD5
; ---------------------------------------------------------------------------

loc_4ECB4C:				; CODE XREF: .text:004ECAFEj
		lea	edx, [ebp-208h]
		cmp	ebx, edx
		jnz	loc_4ECAD5

loc_4ECB5A:				; CODE XREF: .text:004ECAE9j
		test	esi, esi
		jz	short loc_4ECB86
		add	ebx, 2
		cmp	word ptr [ebx],	0
		jz	short loc_4ECB6A
		or	edi, 8

loc_4ECB6A:				; CODE XREF: .text:004ECB65j
		push	0FFh		; maxlen
		push	ebx		; s
		mov	ecx, [ebp+10h]
		push	ecx		; dst
		call	loc_4EC9CC
		mov	word ptr [ebx],	0
		add	esp, 0Ch
		sub	ebx, 2
		jmp	short loc_4ECBE4
; ---------------------------------------------------------------------------

loc_4ECB86:				; CODE XREF: .text:004ECAE0j
					; .text:004ECB0Cj ...
		test	esi, esi
		jnz	loc_4ECAD5
		inc	esi
		add	ebx, 2
		cmp	word ptr [ebx],	0
		jz	short loc_4ECB9B
		or	edi, 4

loc_4ECB9B:				; CODE XREF: .text:004ECB96j
		push	0FFh		; maxlen
		push	ebx		; s
		mov	eax, [ebp+14h]
		push	eax		; dst
		call	loc_4EC9CC
		mov	word ptr [ebx],	0
		sub	ebx, 2
		add	esp, 0Ch
		cmp	word ptr [ebx],	0
		jz	short loc_4ECBE4
		cmp	word ptr [ebx],	3Ah
		jnz	loc_4ECAD5
		lea	edx, [ebp-208h]
		cmp	ebx, edx
		jz	short loc_4ECBE4
		jmp	loc_4ECAD5
; ---------------------------------------------------------------------------

loc_4ECBD4:				; CODE XREF: .text:004ECAEEj
					; .text:004ECB03j
		test	esi, esi
		jnz	loc_4ECAD5
		or	edi, 1
		jmp	loc_4ECAD5
; ---------------------------------------------------------------------------

loc_4ECBE4:				; CODE XREF: .text:004ECB84j
					; .text:004ECBB9j ...
		cmp	word ptr [ebx],	3Ah
		jnz	short loc_4ECC0C
		cmp	word ptr [ebp-20Ah], 0
		jz	short loc_4ECBF7
		or	edi, 10h

loc_4ECBF7:				; CODE XREF: .text:004ECBF2j
		push	2		; maxlen
		lea	ecx, [ebp-20Ah]
		push	ecx		; s
		mov	eax, [ebp+0Ch]
		push	eax		; dst
		call	loc_4EC9CC
		add	esp, 0Ch

loc_4ECC0C:				; CODE XREF: .text:004ECBE8j
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; void __cdecl _wsplitpath(const wchar_t *path,	wchar_t	*drive,	wchar_t	*dir, wchar_t *_name, wchar_t *ext)
__wsplitpath:
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+18h]
		push	eax		; ext
		mov	edx, [ebp+14h]
		push	edx		; _name
		mov	ecx, [ebp+10h]
		push	ecx		; dir
		mov	eax, [ebp+0Ch]
		push	eax		; drive
		mov	edx, [ebp+8]
		push	edx		; path
		call	__wfnsplit
		add	esp, 14h
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__xfclose:				; DATA XREF: .text:loc_4E96C8o
					; .text:loc_4EC839o
		push	ebx
		push	esi
		call	_lock_all_streams
		xor	esi, esi
		mov	ebx, offset _streams
		jmp	short loc_4ECC64
; ---------------------------------------------------------------------------

loc_4ECC4C:				; CODE XREF: .text:004ECC6Aj
		test	byte ptr [ebx+12h], 3
		jz	short loc_4ECC60
		cmp	word ptr [ebx+10h], 0
		jz	short loc_4ECC60
		push	ebx		; stream
		call	_fclose
		pop	ecx

loc_4ECC60:				; CODE XREF: .text:004ECC50j
					; .text:004ECC57j
		add	ebx, 18h
		inc	esi

loc_4ECC64:				; CODE XREF: .text:004ECC4Aj
		cmp	esi, _nfile
		jb	short loc_4ECC4C
		call	_unlock_all_streams
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

__xfflush:				; DATA XREF: .text:004E9410o
		push	ebx
		push	esi
		call	_lock_all_streams
		xor	esi, esi
		mov	ebx, offset _streams
		jmp	short loc_4ECC95
; ---------------------------------------------------------------------------

loc_4ECC84:				; CODE XREF: .text:004ECC9Bj
		test	byte ptr [ebx+12h], 3
		jz	short loc_4ECC91
		push	ebx		; stream
		call	_fflush
		pop	ecx

loc_4ECC91:				; CODE XREF: .text:004ECC88j
		inc	esi
		add	ebx, 18h

loc_4ECC95:				; CODE XREF: .text:004ECC82j
		cmp	esi, _nfile
		jb	short loc_4ECC84
		call	_unlock_all_streams
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4ECCA8:				; CODE XREF: .text:004EA142p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		push	ebx
		call	loc_4EB1D8
		pop	ecx
		push	ebx
		call	unknown_libname_13 ; BCC v4.x/5.x & BCB	v1.0/v7.0 BDS2006 win32	runtime
		pop	ecx
		mov	esi, eax
		push	ebx
		call	loc_4EB2A0
		pop	ecx
		mov	eax, esi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

__getLocaleNumericInfo:			; CODE XREF: .text:004EDFD9p
					; .text:004EE017p ...
		push	ebp
		mov	ebp, esp
		mov	eax, off_57B5B0
		mov	edx, [ebp+8]
		cmp	edx, 10h
		jg	short loc_4ECCEC
		jz	short loc_4ECD05
		sub	edx, 0Eh
		jz	short loc_4ECCF6
		dec	edx
		jz	short loc_4ECCFE
		jmp	short loc_4ECD1D
; ---------------------------------------------------------------------------

loc_4ECCEC:				; CODE XREF: .text:004ECCDEj
		sub	edx, 50h
		jz	short loc_4ECD0D
		dec	edx
		jz	short loc_4ECD15
		jmp	short loc_4ECD1D
; ---------------------------------------------------------------------------

loc_4ECCF6:				; CODE XREF: .text:004ECCE5j
		mov	ecx, [eax+18h]
		mov	eax, [ecx+4]
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ECCFE:				; CODE XREF: .text:004ECCE8j
		mov	eax, [eax+18h]
		mov	eax, [eax]
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ECD05:				; CODE XREF: .text:004ECCE0j
		mov	edx, [eax+18h]
		mov	eax, [edx+8]
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ECD0D:				; CODE XREF: .text:004ECCEFj
		mov	ecx, [eax+18h]
		mov	eax, [ecx+0Ch]
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ECD15:				; CODE XREF: .text:004ECCF2j
		mov	eax, [eax+18h]
		mov	eax, [eax+10h]
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4ECD1D:				; CODE XREF: .text:004ECCEAj
					; .text:004ECCF4j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
