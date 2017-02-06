.code

; SORTFUNC loc_45A168
loc_45A168:				; DATA XREF: .text:0044A1CFo
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	edx, [ebp+10h]
		xor	eax, eax
		mov	ebx, [ebp+8]
		mov	esi, [ebp+0Ch]
		cmp	edx, 1
		jnz	short loc_45A1A1
		mov	ecx, [esi+4]
		mov	edx, [ebx+4]
		cmp	ecx, edx
		jnb	short loc_45A18F
		or	eax, 0FFFFFFFFh
		jmp	loc_45A269
; ---------------------------------------------------------------------------

loc_45A18F:				; CODE XREF: .text:0045A185j
		cmp	ecx, edx
		jbe	loc_45A269
		mov	eax, 1
		jmp	loc_45A269
; ---------------------------------------------------------------------------

loc_45A1A1:				; CODE XREF: .text:0045A17Bj
		cmp	edx, 2
		jnz	short loc_45A1CA
		mov	ecx, [esi+10h]
		mov	edx, [ebx+10h]
		cmp	ecx, edx
		jbe	short loc_45A1B8
		or	eax, 0FFFFFFFFh
		jmp	loc_45A269
; ---------------------------------------------------------------------------

loc_45A1B8:				; CODE XREF: .text:0045A1AEj
		cmp	ecx, edx
		jnb	loc_45A269
		mov	eax, 1
		jmp	loc_45A269
; ---------------------------------------------------------------------------

loc_45A1CA:				; CODE XREF: .text:0045A1A4j
		cmp	edx, 3
		jnz	short loc_45A1E4
		lea	edx, [esi+20h]
		push	edx		; s2
		lea	ecx, [ebx+20h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		jmp	loc_45A269
; ---------------------------------------------------------------------------

loc_45A1E4:				; CODE XREF: .text:0045A1CDj
		cmp	edx, 5
		jnz	short loc_45A203
		mov	ecx, [esi+18h]
		mov	edx, [ebx+18h]
		cmp	ecx, edx
		jbe	short loc_45A1F8
		or	eax, 0FFFFFFFFh
		jmp	short loc_45A269
; ---------------------------------------------------------------------------

loc_45A1F8:				; CODE XREF: .text:0045A1F1j
		cmp	ecx, edx
		jnb	short loc_45A269
		mov	eax, 1
		jmp	short loc_45A269
; ---------------------------------------------------------------------------

loc_45A203:				; CODE XREF: .text:0045A1E7j
		cmp	edx, 6
		jnz	short loc_45A237
		mov	ecx, [esi+18h]
		mov	edx, [ebx+18h]
		and	edx, 0FFh
		and	ecx, 0FFh
		cmp	ecx, edx
		jbe	short loc_45A223
		or	eax, 0FFFFFFFFh
		jmp	short loc_45A269
; ---------------------------------------------------------------------------

loc_45A223:				; CODE XREF: .text:0045A21Cj
		mov	ecx, [esi+18h]
		and	ecx, 0FFh
		cmp	edx, ecx
		jbe	short loc_45A269
		mov	eax, 1
		jmp	short loc_45A269
; ---------------------------------------------------------------------------

loc_45A237:				; CODE XREF: .text:0045A206j
		cmp	edx, 7
		jnz	short loc_45A269
		mov	ecx, [esi+14h]
		mov	edx, [ebx+14h]
		and	edx, 0FFh
		and	ecx, 0FFh
		cmp	ecx, edx
		jbe	short loc_45A257
		or	eax, 0FFFFFFFFh
		jmp	short loc_45A269
; ---------------------------------------------------------------------------

loc_45A257:				; CODE XREF: .text:0045A250j
		mov	ecx, [esi+14h]
		and	ecx, 0FFh
		cmp	edx, ecx
		jbe	short loc_45A269
		mov	eax, 1

loc_45A269:				; CODE XREF: .text:0045A18Aj
					; .text:0045A191j ...
		test	eax, eax
		jnz	short loc_45A283
		mov	ecx, [esi]
		mov	edx, [ebx]
		cmp	ecx, edx
		jbe	short loc_45A27A
		or	eax, 0FFFFFFFFh
		jmp	short loc_45A283
; ---------------------------------------------------------------------------

loc_45A27A:				; CODE XREF: .text:0045A273j
		cmp	ecx, edx
		jnb	short loc_45A283
		mov	eax, 1

loc_45A283:				; CODE XREF: .text:0045A26Bj
					; .text:0045A278j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; DESTFUNC loc_45A288
loc_45A288:				; DATA XREF: .text:0044A1CAo
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_45A2BB
		mov	ebx, eax
		mov	eax, [ebx+60h]
		test	eax, eax
		jz	short loc_45A2A8
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+60h], edx

loc_45A2A8:				; CODE XREF: .text:0045A29Aj
		mov	eax, [ebx+64h]
		test	eax, eax
		jz	short loc_45A2BB
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+64h], edx

loc_45A2BB:				; CODE XREF: .text:0045A291j
					; .text:0045A2ADj
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_45A2C0(wchar_t *buffer, int, int, int, int, int, int)
loc_45A2C0:				; DATA XREF: .text:0045AEEEo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		xor	ebx, ebx
		mov	eax, [ebp+1Ch]
		mov	edi, [ebp+8]
		mov	esi, [ebp+18h]
		mov	edx, [ebp+20h]
		mov	[ebp-10h], edx
		mov	edx, eax
		add	edx, 4		; switch 13 cases
		cmp	edx, 0Ch
		ja	loc_45AC77	; jumptable 0045A2E8 default case
		jmp	ds:off_45A2EF[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_45A2EF	dd offset loc_45A323	; DATA XREF: .text:0045A2E8r
		dd offset loc_45A32D	; jump table for switch	statement
		dd offset loc_45A3B7
		dd offset loc_45A3BE
		dd offset loc_45A3D4
		dd offset loc_45A41A
		dd offset loc_45A434
		dd offset loc_45A4B3
		dd offset loc_45A4CC
		dd offset loc_45A95C
		dd offset loc_45AA56
		dd offset loc_45AA56
		dd offset loc_45AC3A
; ---------------------------------------------------------------------------

loc_45A323:				; CODE XREF: .text:0045A2E8j
					; DATA XREF: .text:off_45A2EFo
		mov	eax, 10h	; jumptable 0045A2E8 case -4
		jmp	loc_45AC99
; ---------------------------------------------------------------------------

loc_45A32D:				; CODE XREF: .text:0045A2E8j
					; DATA XREF: .text:off_45A2EFo
		mov	eax, peblock	; jumptable 0045A2E8 case -3
		test	eax, eax
		jz	short loc_45A34F
		push	1		; mode
		add	eax, 58h
		push	4		; size
		push	eax		; _addr
		mov	edx, [ebp-10h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_45A356

loc_45A34F:				; CODE XREF: .text:0045A334j
		mov	ecx, [ebp-10h]
		xor	eax, eax
		mov	[ecx], eax

loc_45A356:				; CODE XREF: .text:0045A34Dj
		mov	eax, peblock
		test	eax, eax
		jz	short loc_45A37B
		push	1		; mode
		add	eax, 5Ch
		push	4		; size
		push	eax		; _addr
		mov	edx, [ebp-10h]
		add	edx, 4
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_45A383

loc_45A37B:				; CODE XREF: .text:0045A35Dj
		mov	ecx, [ebp-10h]
		xor	eax, eax
		mov	[ecx+4], eax

loc_45A383:				; CODE XREF: .text:0045A379j
		mov	eax, peblock
		test	eax, eax
		jz	short loc_45A3A8
		push	1		; mode
		add	eax, 60h
		push	4		; size
		push	eax		; _addr
		mov	edx, [ebp-10h]
		add	edx, 8
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_45A3B0

loc_45A3A8:				; CODE XREF: .text:0045A38Aj
		mov	ecx, [ebp-10h]
		xor	eax, eax
		mov	[ecx+8], eax

loc_45A3B0:				; CODE XREF: .text:0045A3A6j
		xor	eax, eax
		jmp	loc_45AC99
; ---------------------------------------------------------------------------

loc_45A3B7:				; CODE XREF: .text:0045A2E8j
					; DATA XREF: .text:off_45A2EFo
		xor	eax, eax	; jumptable 0045A2E8 case -2
		jmp	loc_45AC99
; ---------------------------------------------------------------------------

loc_45A3BE:				; CODE XREF: .text:0045A2E8j
					; DATA XREF: .text:off_45A2EFo
		mov	edx, [esi]	; jumptable 0045A2E8 case -1
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		mov	ecx, [ebp-10h]
		mov	[ecx+0Ch], eax
		xor	eax, eax
		jmp	loc_45AC99
; ---------------------------------------------------------------------------

loc_45A3D4:				; CODE XREF: .text:0045A2E8j
					; DATA XREF: .text:off_45A2EFo
		mov	edx, [esi]	; jumptable 0045A2E8 case 0
		push	edx		; u
		push	edi		; s
		call	Hexprint8W
		add	esp, 8
		mov	ebx, eax
		test	byte ptr [esi+0Bh], 8
		jz	short loc_45A3F3
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 2
		jmp	short loc_45A413
; ---------------------------------------------------------------------------

loc_45A3F3:				; CODE XREF: .text:0045A3E6j
		test	byte ptr [esi+0Bh], 40h
		jz	short loc_45A404
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 4
		jmp	short loc_45A413
; ---------------------------------------------------------------------------

loc_45A404:				; CODE XREF: .text:0045A3F7j
		test	byte ptr [esi+9], 1
		jz	short loc_45A413
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 1

loc_45A413:				; CODE XREF: .text:0045A3F1j
					; .text:0045A402j ...
		mov	eax, ebx
		jmp	loc_45AC99
; ---------------------------------------------------------------------------

loc_45A41A:				; CODE XREF: .text:0045A2E8j
					; DATA XREF: .text:off_45A2EFo
		mov	eax, [esi+4]	; jumptable 0045A2E8 case 1
		push	eax
		push	eax
		push	offset a08xI__0	; format
		push	edi		; buffer
		call	_swprintf
		add	esp, 10h
		mov	ebx, eax
		jmp	loc_45AC77	; jumptable 0045A2E8 default case
; ---------------------------------------------------------------------------

loc_45A434:				; CODE XREF: .text:0045A2E8j
					; DATA XREF: .text:off_45A2EFo
		mov	eax, [ebp-10h]	; jumptable 0045A2E8 case 2
		mov	eax, [eax+0Ch]
		test	eax, eax
		jz	short loc_45A452
		add	eax, 0Ch
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_45A452:				; CODE XREF: .text:0045A43Cj
		mov	word ptr [edi+ebx*2], 20h
		inc	ebx
		lea	eax, [edi+ebx*2]
		cmp	ebx, 10h
		jge	short loc_45A46F

loc_45A461:				; CODE XREF: .text:0045A46Dj
		mov	word ptr [eax],	20h
		inc	ebx
		add	eax, 2
		cmp	ebx, 10h
		jl	short loc_45A461

loc_45A46F:				; CODE XREF: .text:0045A45Fj
		mov	edx, [esi+10h]
		push	edx		; u
		lea	ecx, [edi+ebx*2]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		add	ebx, eax
		mov	eax, [esi]
		cmp	eax, [esi+10h]
		jnz	loc_45AC77	; jumptable 0045A2E8 default case
		push	offset aSelf	; " (self)"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_45AC77	; jumptable 0045A2E8 default case
; ---------------------------------------------------------------------------

loc_45A4B3:				; CODE XREF: .text:0045A2E8j
					; DATA XREF: .text:off_45A2EFo
		lea	eax, [esi+20h]	; jumptable 0045A2E8 case 3
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45AC77	; jumptable 0045A2E8 default case
; ---------------------------------------------------------------------------

loc_45A4CC:				; CODE XREF: .text:0045A2E8j
					; DATA XREF: .text:off_45A2EFo
		mov	eax, [esi+8]	; jumptable 0045A2E8 case 4
		xor	edx, edx
		mov	[ebp-4], eax
		mov	[ebp-8], edx
		test	byte ptr [ebp-1], 8
		jz	short loc_45A53B
		test	byte ptr [esi+1Ah], 1
		jz	short loc_45A50A
		push	offset aFree	; "Free"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, 100h
		sub	ecx, ebx
		push	ecx		; n
		lea	eax, [edi+ebx*2]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_45A912
; ---------------------------------------------------------------------------

loc_45A50A:				; CODE XREF: .text:0045A4E1j
		test	byte ptr [esi+19h], 20h
		jz	loc_45A912
		push	offset aReserved_0 ; "Reserved"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		lea	ecx, [edi+ebx*2]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_45A912
; ---------------------------------------------------------------------------

loc_45A53B:				; CODE XREF: .text:0045A4DBj
		test	byte ptr [ebp-3], 10h
		jz	short loc_45A563
		push	offset aCode	; "code,"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A563:				; CODE XREF: .text:0045A53Fj
		test	byte ptr [ebp-3], 20h
		jz	short loc_45A58B
		push	offset aData_1	; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, 100h
		sub	ecx, ebx
		push	ecx		; n
		lea	eax, [edi+ebx*2]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A58B:				; CODE XREF: .text:0045A567j
		test	byte ptr [ebp-3], 40h
		jz	short loc_45A5B3
		push	offset aSfx	; "SFX,"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		lea	ecx, [edi+ebx*2]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A5B3:				; CODE XREF: .text:0045A58Fj
		test	byte ptr [ebp-2], 80h
		jz	short loc_45A5DD
		push	offset aDefaultHeap ; "default heap,"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_45A605
; ---------------------------------------------------------------------------

loc_45A5DD:				; CODE XREF: .text:0045A5B7j
		test	byte ptr [ebp-1], 1
		jz	short loc_45A605
		push	(offset	aDefaultHeap+10h) ; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, 100h
		sub	ecx, ebx
		push	ecx		; n
		lea	eax, [edi+ebx*2]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A605:				; CODE XREF: .text:0045A5DBj
					; .text:0045A5E1j
		test	byte ptr [ebp-3], 80h
		jz	short loc_45A62D
		push	offset aImports	; "imports,"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		lea	ecx, [edi+ebx*2]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A62D:				; CODE XREF: .text:0045A609j
		test	byte ptr [ebp-2], 1
		jz	short loc_45A655
		push	offset aExports	; "exports,"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A655:				; CODE XREF: .text:0045A631j
		test	byte ptr [ebp-2], 2
		jz	short loc_45A67D
		push	offset aResources ; "resources,"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, 100h
		sub	ecx, ebx
		push	ecx		; n
		lea	eax, [edi+ebx*2]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A67D:				; CODE XREF: .text:0045A659j
		test	byte ptr [ebp-2], 4
		jz	short loc_45A6A5
		push	offset aRelocations ; "relocations,"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		lea	ecx, [edi+ebx*2]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A6A5:				; CODE XREF: .text:0045A681j
		test	byte ptr [ebp-2], 10h
		jz	short loc_45A6CD
		push	offset aStackGuardingP ; "stack	guarding page,"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A6CD:				; CODE XREF: .text:0045A6A9j
		test	byte ptr [ebp-2], 40h
		jz	short loc_45A729
		mov	ecx, [ebp-10h]
		mov	eax, [ecx+0Ch]
		test	eax, eax
		jz	short loc_45A707
		test	byte ptr [eax+0Bh], 4
		jz	short loc_45A707
		push	offset aPeHeader_net ; "PE header (.NET),"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		lea	ecx, [edi+ebx*2]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_45A729
; ---------------------------------------------------------------------------

loc_45A707:				; CODE XREF: .text:0045A6DBj
					; .text:0045A6E1j
		push	offset aPeHeader ; "PE header,"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A729:				; CODE XREF: .text:0045A6D1j
					; .text:0045A705j
		cmp	dword ptr [esi+0Ch], 1
		jnz	short loc_45A751
		push	offset aProcessEnvir_0 ; "Process Environment Block,"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, 100h
		sub	ecx, ebx
		push	ecx		; n
		lea	eax, [edi+ebx*2]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A751:				; CODE XREF: .text:0045A72Dj
		cmp	dword ptr [esi+0Ch], 2
		jnz	short loc_45A779
		push	offset aUserSharedDa_0 ; "User Shared Data,"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		lea	ecx, [edi+ebx*2]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A779:				; CODE XREF: .text:0045A755j
		test	byte ptr [ebp-2], 8
		jz	short loc_45A7A7
		push	offset aStack_0	; "stack,"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, [esi+1Ch]
		mov	[ebp-8], ecx
		add	ebx, eax

loc_45A7A7:				; CODE XREF: .text:0045A77Dj
		test	byte ptr [ebp-2], 20h
		jz	short loc_45A7D5
		push	offset aDataBlock_0 ; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, [esi+1Ch]
		mov	[ebp-8], ecx
		add	ebx, eax

loc_45A7D5:				; CODE XREF: .text:0045A7ABj
		test	byte ptr [ebp-1], 2
		jz	short loc_45A7FD
		push	offset aNativeCode ; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A7FD:				; CODE XREF: .text:0045A7D9j
		cmp	dword ptr [esi+0Ch], 3
		jnz	short loc_45A825
		push	offset aProcessParamet ; "Process Parameters,"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, 100h
		sub	ecx, ebx
		push	ecx		; n
		lea	eax, [edi+ebx*2]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A825:				; CODE XREF: .text:0045A801j
		cmp	dword ptr [esi+0Ch], 4
		jnz	short loc_45A84D
		push	offset aEnvironment_0 ;	"Environment,"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		lea	ecx, [edi+ebx*2]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A84D:				; CODE XREF: .text:0045A829j
		cmp	dword ptr [esi+0Ch], 5
		jnz	short loc_45A875
		push	offset aGdiHandles_0 ; "GDI handles,"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A875:				; CODE XREF: .text:0045A851j
		mov	ecx, [esi]
		cmp	ecx, userspacelimit
		jnz	short loc_45A8A1
		push	offset aKernelMemory_0 ; "Kernel memory,"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A8A1:				; CODE XREF: .text:0045A87Dj
		mov	eax, [esi]
		mov	edx, [esi+4]
		add	edx, eax
		mov	ecx, [ebp-10h]
		cmp	eax, [ecx]
		ja	short loc_45A8B6
		mov	ecx, [ebp-10h]
		cmp	edx, [ecx]
		ja	short loc_45A8D6

loc_45A8B6:				; CODE XREF: .text:0045A8ADj
		mov	ecx, [ebp-10h]
		cmp	eax, [ecx+4]
		ja	short loc_45A8C6
		mov	ecx, [ebp-10h]
		cmp	edx, [ecx+4]
		ja	short loc_45A8D6

loc_45A8C6:				; CODE XREF: .text:0045A8BCj
		mov	ecx, [ebp-10h]
		cmp	eax, [ecx+8]
		ja	short loc_45A8F8
		mov	eax, [ebp-10h]
		cmp	edx, [eax+8]
		jbe	short loc_45A8F8

loc_45A8D6:				; CODE XREF: .text:0045A8B4j
					; .text:0045A8C4j
		push	offset aCodePages ; "Code pages,"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		push	eax		; src
		lea	eax, [edi+ebx*2]
		push	edx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_45A8F8:				; CODE XREF: .text:0045A8CCj
					; .text:0045A8D4j
		test	ebx, ebx
		jle	short loc_45A912
		mov	dx, [edi]
		mov	[ebp-12h], dx
		mov	cx, [ebp-12h]
		push	ecx		; ch
		call	__ltowupper
		pop	ecx
		dec	ebx
		mov	[edi], ax

loc_45A912:				; CODE XREF: .text:0045A505j
					; .text:0045A50Ej ...
		cmp	dword ptr [ebp-8], 0
		jz	short loc_45A951
		push	offset aOf_0	; " of "
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		push	8400h		; mode
		mov	ecx, [ebp-8]
		push	ecx		; threadid
		lea	eax, [edi+ebx*2]
		push	eax		; s
		call	Decodethreadname
		add	esp, 0Ch
		add	ebx, eax

loc_45A951:				; CODE XREF: .text:0045A916j
		mov	word ptr [edi+ebx*2], 0
		jmp	loc_45AC77	; jumptable 0045A2E8 default case
; ---------------------------------------------------------------------------

loc_45A95C:				; CODE XREF: .text:0045A2E8j
					; DATA XREF: .text:off_45A2EFo
		test	byte ptr [esi+0Bh], 8 ;	jumptable 0045A2E8 case	5
		jnz	loc_45AC77	; jumptable 0045A2E8 default case
		mov	edx, [esi+18h]
		mov	[ebp-0Ch], edx
		test	byte ptr [ebp-0Ah], 1
		jz	short loc_45A993
		push	offset aFree_0	; "Free	"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45AA3F
; ---------------------------------------------------------------------------

loc_45A993:				; CODE XREF: .text:0045A970j
		test	byte ptr [ebp-0Ah], 2
		jz	short loc_45A9BA
		push	offset aPriv	; "Priv	"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45AA3F
; ---------------------------------------------------------------------------

loc_45A9BA:				; CODE XREF: .text:0045A997j
		test	byte ptr [ebp-0Ah], 4
		jz	short loc_45A9DE
		push	offset aMap	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_45AA3F
; ---------------------------------------------------------------------------

loc_45A9DE:				; CODE XREF: .text:0045A9BEj
		test	byte ptr [ebp-9], 1
		jz	short loc_45AA02
		push	offset aImg	; "Img	"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_45AA3F
; ---------------------------------------------------------------------------

loc_45AA02:				; CODE XREF: .text:0045A9E2j
		mov	eax, [esi]
		cmp	eax, userspacelimit
		jnz	short loc_45AA2A
		push	offset aKern	; "Kern	"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_45AA3F
; ---------------------------------------------------------------------------

loc_45AA2A:				; CODE XREF: .text:0045AA0Aj
		push	$CTW0("????")	; "????	"
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_45AA3F:				; CODE XREF: .text:0045A98Ej
					; .text:0045A9B5j ...
		mov	eax, [ebp-0Ch]
		push	eax		; u
		lea	edi, [edi+ebx*2]
		push	edi		; s
		call	Hexprint8W
		add	esp, 8
		add	ebx, eax
		jmp	loc_45AC77	; jumptable 0045A2E8 default case
; ---------------------------------------------------------------------------

loc_45AA56:				; CODE XREF: .text:0045A2E8j
					; DATA XREF: .text:off_45A2EFo
		test	byte ptr [esi+0Bh], 8 ;	jumptable 0045A2E8 cases 6,7
		jnz	loc_45AC77	; jumptable 0045A2E8 default case
		cmp	eax, 6
		jnz	short loc_45AA6D
		mov	eax, [esi+18h]
		mov	[ebp-0Ch], eax
		jmp	short loc_45AA73
; ---------------------------------------------------------------------------

loc_45AA6D:				; CODE XREF: .text:0045AA63j
		mov	edx, [esi+14h]
		mov	[ebp-0Ch], edx

loc_45AA73:				; CODE XREF: .text:0045AA6Bj
		test	byte ptr [ebp-0Bh], 20h
		jz	short loc_45AA9A
		push	offset aReserved ; "	Reserved"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45AC77	; jumptable 0045A2E8 default case
; ---------------------------------------------------------------------------

loc_45AA9A:				; CODE XREF: .text:0045AA77j
		and	dword ptr [ebp-0Ch], 0FFh
		cmp	dword ptr [ebp-0Ch], 1
		jnz	short loc_45AAC8
		push	offset asc_538236 ; "	"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45AC13
; ---------------------------------------------------------------------------

loc_45AAC8:				; CODE XREF: .text:0045AAA5j
		cmp	dword ptr [ebp-0Ch], 2
		jnz	short loc_45AAEF
		push	offset aR	; "R  "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45AC13
; ---------------------------------------------------------------------------

loc_45AAEF:				; CODE XREF: .text:0045AACCj
		cmp	dword ptr [ebp-0Ch], 4
		jnz	short loc_45AB16
		push	offset aRw	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45AC13
; ---------------------------------------------------------------------------

loc_45AB16:				; CODE XREF: .text:0045AAF3j
		cmp	dword ptr [ebp-0Ch], 8
		jnz	short loc_45AB3D
		push	offset aRwCopyonwr ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45AC13
; ---------------------------------------------------------------------------

loc_45AB3D:				; CODE XREF: .text:0045AB1Aj
		cmp	dword ptr [ebp-0Ch], 10h
		jnz	short loc_45AB64
		push	offset aE_5	; "  E"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45AC13
; ---------------------------------------------------------------------------

loc_45AB64:				; CODE XREF: .text:0045AB41j
		cmp	dword ptr [ebp-0Ch], 20h
		jnz	short loc_45AB8B
		push	offset aRE	; "R E"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45AC13
; ---------------------------------------------------------------------------

loc_45AB8B:				; CODE XREF: .text:0045AB68j
		cmp	dword ptr [ebp-0Ch], 40h
		jnz	short loc_45ABAF
		push	offset aRwe	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_45AC13
; ---------------------------------------------------------------------------

loc_45ABAF:				; CODE XREF: .text:0045AB8Fj
		cmp	dword ptr [ebp-0Ch], 80h
		jnz	short loc_45ABD6
		push	offset aRweCopyonwr ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_45AC13
; ---------------------------------------------------------------------------

loc_45ABD6:				; CODE XREF: .text:0045ABB6j
		mov	eax, [esi]
		cmp	eax, userspacelimit
		jnz	short loc_45ABFE
		push	offset asc_538236 ; "	"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_45AC13
; ---------------------------------------------------------------------------

loc_45ABFE:				; CODE XREF: .text:0045ABDEj
		push	$CTW0("???")	; "???"
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_45AC13:				; CODE XREF: .text:0045AAC3j
					; .text:0045AAEAj ...
		test	byte ptr [esi+19h], 1
		jz	short loc_45AC77 ; jumptable 0045A2E8 default case
		push	offset aGuarded	; " Guarded"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_45AC77 ; jumptable 0045A2E8 default case
; ---------------------------------------------------------------------------

loc_45AC3A:				; CODE XREF: .text:0045A2E8j
					; DATA XREF: .text:off_45A2EFo
		test	byte ptr [esi+0Bh], 8 ;	jumptable 0045A2E8 case	8
		jnz	short loc_45AC77 ; jumptable 0045A2E8 default case
		cmp	_imp__GetMappedFileNameW, 0
		jz	short loc_45AC77 ; jumptable 0045A2E8 default case
		test	byte ptr [esi+1Ah], 4
		jz	short loc_45AC77 ; jumptable 0045A2E8 default case
		push	100h		; _DWORD
		push	edi		; _DWORD
		mov	eax, [esi]
		mov	edx, process
		push	eax		; _DWORD
		push	edx		; _DWORD
		call	_imp__GetMappedFileNameW
		mov	ebx, eax
		test	ebx, ebx
		jle	short loc_45AC77 ; jumptable 0045A2E8 default case
		push	edi		; dosname
		push	edi		; devname
		call	Devicenametodosname
		add	esp, 8
		mov	ebx, eax

loc_45AC77:				; CODE XREF: .text:0045A2E2j
					; .text:0045A42Fj ...
		test	byte ptr [esi+0Bh], 8 ;	jumptable 0045A2E8 default case
		jz	short loc_45AC88
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 2
		jmp	short loc_45AC97
; ---------------------------------------------------------------------------

loc_45AC88:				; CODE XREF: .text:0045AC7Bj
		test	byte ptr [esi+9], 1
		jz	short loc_45AC97
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 1

loc_45AC97:				; CODE XREF: .text:0045AC86j
					; .text:0045AC8Cj
		mov	eax, ebx

loc_45AC99:				; CODE XREF: .text:0045A328j
					; .text:0045A3B2j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45ACA0:				; DATA XREF: .text:0045AECDo
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		sub	eax, 471h
		jz	short loc_45ACB4
		sub	eax, 1Bh
		jz	short loc_45ACD8
		jmp	short loc_45ACE3
; ---------------------------------------------------------------------------

loc_45ACB4:				; CODE XREF: .text:0045ACABj
		push	0		; index
		push	offset loc_457E20 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45ACD8:				; CODE XREF: .text:0045ACB0j
		or	dword_57FE7C, 8
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45ACE3:				; CODE XREF: .text:0045ACB2j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_45ACE8:				; CODE XREF: .text:0040B00Ap
					; .text:00410020p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, offset aInvalidatingNo ; "Invalidating non-flushed	cache!"
;__DebugBreak
		cmp	memory.bar.nbar, 0
		jnz	loc_45AF08
		lea	eax, aMemory_3;[ebx+1074h]
		push	eax		; src
		push	20h		; n
		push	offset memory	; dest
		call	StrcopyW
		mov	memory.mode, 0F0000h
		lea	edx, aAddress_7;[ebx+1082h]
		mov	memory.bar.visible, 1
		mov	memory.bar._name, edx
		lea	ecx, aBaseAddressOfM;[ebx+1092h]
		lea	eax, aSizeDecimal_0;[ebx+10CCh]
		mov	memory.bar.expl, ecx
		mov	memory.bar.mode, 2
		mov	memory.bar.defdx, 9
		mov	memory.bar._name+4, eax
		lea	edx, aSizeOfMemoryBl;[ebx+10F2h]
		lea	ecx, aOwner;[ebx+1140h]
		mov	memory.bar.expl+4, edx
		mov	memory.bar.mode+4, 2
		mov	memory.bar.defdx+4, 9
		mov	memory.bar._name+8, ecx
		lea	eax, aOwnerOfMemoryB;[ebx+114Ch]
		lea	edx, aSection;[ebx+1178h]
		mov	memory.bar.expl+8, eax
		mov	memory.bar.mode+8, 2
		mov	memory.bar.defdx+8, 10h
		lea	ecx, aNameOfAssociat;[ebx+1188h]
		mov	memory.bar._name+0Ch, edx
		mov	memory.bar.expl+0Ch, ecx
		mov	memory.bar.mode+0Ch, 3002h
		lea	eax, aContains;[ebx+11CCh]
		mov	memory.bar.defdx+0Ch, 0Ah
		mov	memory.bar._name+10h, eax
		lea	edx, aTypesOfDataTha;[ebx+11DEh]
		xor	ecx, ecx
		mov	memory.bar.expl+10h, edx
		mov	memory.bar.mode+10h, ecx
		lea	eax, aType_3;[ebx+1230h]
		mov	memory.bar.defdx+10h, 18h
		mov	memory.bar._name+14h, eax
		lea	edx, aTypeOfMemoryBl;[ebx+123Ah]
		mov	memory.bar.expl+14h, edx
		mov	memory.bar.mode+14h, 2
		lea	ecx, aAccess;[ebx+1264h]
		mov	memory.bar.defdx+14h, 5
		mov	memory.bar._name+18h, ecx
		lea	eax, aMemoryAccessRi;[ebx+1272h]
		mov	memory.bar.expl+18h, eax
		mov	memory.bar.mode+18h, 2
		lea	edx, aInitialAccess;[ebx+129Ch]
		mov	memory.bar.defdx+18h, 8
		mov	memory.bar._name+1Ch, edx
		lea	ecx, aInitialMemoryA;[ebx+12BAh]
		mov	memory.bar.expl+1Ch, ecx
		mov	memory.bar.mode+1Ch, 2
		mov	memory.bar.defdx+1Ch, 8
		add	esp, 0Ch
		cmp	_imp__GetMappedFileNameW, 0
		jnz	short loc_45AE96
		mov	memory.bar.nbar, 8
		jmp	short loc_45AECB
; ---------------------------------------------------------------------------

loc_45AE96:				; CODE XREF: .text:0045AE88j
		lea	eax, aMappedAs;[ebx+12F4h]
		lea	edx, aNameOfAssoci_0;[ebx+1308h]
		mov	memory.bar._name+20h, eax
		mov	memory.bar.expl+20h, edx
		mov	memory.bar.mode+20h, 3000h
		mov	memory.bar.defdx+20h, 100h
		mov	memory.bar.nbar, 9

loc_45AECB:				; CODE XREF: .text:0045AE94j
		xor	ecx, ecx
		mov	memory.tabfunc,	offset loc_45ACA0
		xor	eax, eax
		mov	memory.custommode, ecx
		xor	edx, edx
		mov	memory.customdata, eax
		mov	memory.updatefunc, edx
		xor	ecx, ecx
		mov	memory.drawfunc, offset	loc_45A2C0
		mov	memory.tableselfunc, ecx
		mov	memory.menu, offset stru_5370F0

loc_45AF08:				; CODE XREF: .text:0045ACF8j
		cmp	memory.hw, 0
		jnz	short loc_45AF44
		lea	eax, aMemoryMap_1;[ebx+1360h]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; _title
		lea	edx, aIco_m;[ebx+1354h]
		push	edx		; icon
		mov	ecx, g_hInstance
		push	ecx		; hi
		mov	eax, memory.bar.nbar
		push	eax		; ncolumn
		push	0		; nrow
		push	offset memory	; pt
		call	Createtablewindow
		add	esp, 18h
		jmp	short loc_45AF54
; ---------------------------------------------------------------------------

loc_45AF44:				; CODE XREF: .text:0045AF0Fj
		push	0		; bErase
		push	0		; lpRect
		mov	edx, memory.hw
		push	edx		; hWnd
		call	InvalidateRect

loc_45AF54:				; CODE XREF: .text:0045AF42j
		cmp	memory.hparent,	0
		jz	short loc_45AFA9
		cmp	dword ptr [ebp+8], 0
		jz	short loc_45AFA9
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_45AF80
		push	0		; lParam
		mov	edx, memory.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_45AF80:				; CODE XREF: .text:0045AF6Aj
		mov	ecx, memory.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_45AF9D
		push	9		; nCmdShow
		mov	eax, memory.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_45AF9D:				; CODE XREF: .text:0045AF8Ej
		mov	edx, memory.hw
		push	edx		; hWnd
		call	SetFocus

loc_45AFA9:				; CODE XREF: .text:0045AF5Bj
					; .text:0045AF61j
		mov	eax, memory.hw
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; BOOL __stdcall loc_45AFB4(HWND, LPARAM)
loc_45AFB4:				; DATA XREF: .text:0045BC87o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	edi, [ebp+0Ch]
		test	edi, edi
		jnz	short loc_45AFD1
		xor	eax, eax
		jmp	loc_45B073
; ---------------------------------------------------------------------------

loc_45AFD1:				; CODE XREF: .text:0045AFC8j
					; .text:0045AFEBj
		push	esi		; hWnd
		call	GetParent
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_45AFED
		push	0		; lpdwProcessId
		push	ebx		; hWnd
		call	GetWindowThreadProcessId
		cmp	eax, [edi]
		jnz	short loc_45AFED
		mov	esi, ebx
		jmp	short loc_45AFD1
; ---------------------------------------------------------------------------

loc_45AFED:				; CODE XREF: .text:0045AFDBj
					; .text:0045AFE7j
		cmp	dword ptr [edi+700h], 0
		jnz	short loc_45AFFE
		mov	[edi+700h], esi
		jmp	short loc_45B06E
; ---------------------------------------------------------------------------

loc_45AFFE:				; CODE XREF: .text:0045AFF4j
		mov	eax, [edi+700h]
		push	eax		; hWnd
		call	IsWindowVisible
		test	eax, eax
		jnz	short loc_45B020
		push	esi		; hWnd
		call	IsWindowVisible
		test	eax, eax
		jz	short loc_45B020
		mov	[edi+700h], esi
		jmp	short loc_45B06E
; ---------------------------------------------------------------------------

loc_45B020:				; CODE XREF: .text:0045B00Cj
					; .text:0045B016j
		push	0FFFFFFF0h	; nIndex
		mov	edx, [edi+700h]
		push	edx		; hWnd
		call	GetWindowLongW
		test	eax, 80000000h
		jz	short loc_45B04C
		push	0FFFFFFF0h	; nIndex
		push	esi		; hWnd
		call	GetWindowLongW
		test	eax, 80000000h
		jnz	short loc_45B04C
		mov	[edi+700h], esi
		jmp	short loc_45B06E
; ---------------------------------------------------------------------------

loc_45B04C:				; CODE XREF: .text:0045B033j
					; .text:0045B042j
		push	100h		; nMaxCount
		lea	ecx, [ebp-200h]
		push	ecx		; lpString
		mov	eax, [edi+700h]
		push	eax		; hWnd
		call	GetWindowTextW
		test	eax, eax
		jnz	short loc_45B06E
		mov	[edi+700h], esi

loc_45B06E:				; CODE XREF: .text:0045AFFCj
					; .text:0045B01Ej ...
		mov	eax, 1

loc_45B073:				; CODE XREF: .text:0045AFCCj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------

loc_45B07C:				; DATA XREF: .data:stru_53867Co
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		mov	edx, [ebp+8]
		test	eax, eax
		jnz	short loc_45B09E
		test	edx, edx
		jz	short loc_45B093
		cmp	dword ptr [edx+44h], 0
		jnz	short loc_45B097

loc_45B093:				; CODE XREF: .text:0045B08Bj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45B097:				; CODE XREF: .text:0045B091j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45B09E:				; CODE XREF: .text:0045B087j
		dec	eax
		jnz	short loc_45B0CA
		push	offset thread.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		push	offset thread
		call	loc_45BC5C
		pop	ecx
		mov	edx, thread.sorted.version
		mov	thread.version,	edx
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45B0CA:				; CODE XREF: .text:0045B09Fj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __usercall loc_45B0D0@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_45B0D0:				; DATA XREF: .data:stru_53867Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi		; arglist
		mov	esi, [ebp+14h]
		mov	eax, [ebp+8]
		mov	edx, run.status
		test	edx, edx
		jz	short loc_45B0F3
		cmp	edx, 13h
		jz	short loc_45B0F3
		cmp	edx, 14h
		jz	short loc_45B0F3
		test	eax, eax
		jnz	short loc_45B0F7

loc_45B0F3:				; CODE XREF: .text:0045B0E3j
					; .text:0045B0E8j ...
		xor	eax, eax
		jmp	short loc_45B160
; ---------------------------------------------------------------------------

loc_45B0F7:				; CODE XREF: .text:0045B0F1j
		mov	ecx, [eax+68h]
		push	ecx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_45B113
		cmp	dword ptr [ebx+50h], 0
		jnz	short loc_45B117

loc_45B113:				; CODE XREF: .text:0045B10Bj
		xor	eax, eax
		jmp	short loc_45B160
; ---------------------------------------------------------------------------

loc_45B117:				; CODE XREF: .text:0045B111j
		test	byte ptr [ebx+0Ah], 2
		jz	short loc_45B121
		xor	eax, eax
		jmp	short loc_45B160
; ---------------------------------------------------------------------------

loc_45B121:				; CODE XREF: .text:0045B11Bj
		test	esi, esi
		jnz	short loc_45B12C
		mov	eax, 1
		jmp	short loc_45B160
; ---------------------------------------------------------------------------

loc_45B12C:				; CODE XREF: .text:0045B123j
		dec	esi
		jnz	short loc_45B15E
		mov	edx, [ebx+50h]
		push	edx		; hThread
		call	SuspendThread
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_45B151
		push	offset aUnableToSuspen ; "Unable to suspend thread"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_45B157
; ---------------------------------------------------------------------------

loc_45B151:				; CODE XREF: .text:0045B13Bj
		inc	dword ptr [ebx+6C0h]

loc_45B157:				; CODE XREF: .text:0045B14Fj
		mov	eax, 1
		jmp	short loc_45B160
; ---------------------------------------------------------------------------

loc_45B15E:				; CODE XREF: .text:0045B12Dj
		xor	eax, eax

loc_45B160:				; CODE XREF: .text:0045B0F5j
					; .text:0045B115j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __usercall loc_45B164@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_45B164:				; DATA XREF: .data:stru_53867Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi		; arglist
		mov	esi, [ebp+14h]
		mov	eax, [ebp+8]
		mov	edx, run.status
		test	edx, edx
		jz	short loc_45B187
		cmp	edx, 13h
		jz	short loc_45B187
		cmp	edx, 14h
		jz	short loc_45B187
		test	eax, eax
		jnz	short loc_45B18B

loc_45B187:				; CODE XREF: .text:0045B177j
					; .text:0045B17Cj ...
		xor	eax, eax
		jmp	short loc_45B1FD
; ---------------------------------------------------------------------------

loc_45B18B:				; CODE XREF: .text:0045B185j
		mov	ecx, [eax+68h]
		push	ecx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_45B1A7
		cmp	dword ptr [ebx+50h], 0
		jnz	short loc_45B1AB

loc_45B1A7:				; CODE XREF: .text:0045B19Fj
		xor	eax, eax
		jmp	short loc_45B1FD
; ---------------------------------------------------------------------------

loc_45B1AB:				; CODE XREF: .text:0045B1A5j
		test	byte ptr [ebx+0Ah], 2
		jz	short loc_45B1B5
		xor	eax, eax
		jmp	short loc_45B1FD
; ---------------------------------------------------------------------------

loc_45B1B5:				; CODE XREF: .text:0045B1AFj
		test	esi, esi
		jnz	short loc_45B1C0
		mov	eax, 1
		jmp	short loc_45B1FD
; ---------------------------------------------------------------------------

loc_45B1C0:				; CODE XREF: .text:0045B1B7j
		dec	esi
		jnz	short loc_45B1FB
		mov	edx, [ebx+50h]
		push	edx		; hThread
		call	ResumeThread
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_45B1E5
		push	offset aUnableToResume ; "Unable to resume thread"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_45B1F4
; ---------------------------------------------------------------------------

loc_45B1E5:				; CODE XREF: .text:0045B1CFj
		cmp	dword ptr [ebx+6C0h], 0
		jle	short loc_45B1F4
		dec	dword ptr [ebx+6C0h]

loc_45B1F4:				; CODE XREF: .text:0045B1E3j
					; .text:0045B1ECj
		mov	eax, 1
		jmp	short loc_45B1FD
; ---------------------------------------------------------------------------

loc_45B1FB:				; CODE XREF: .text:0045B1C1j
		xor	eax, eax

loc_45B1FD:				; CODE XREF: .text:0045B189j
					; .text:0045B1A9j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC loc_45B204
loc_45B204:				; DATA XREF: .text:0045C2FEo
					; .data:stru_53867Co
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+14h]
		mov	eax, [ebp+8]
		mov	edx, [eax+68h]
		push	edx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jnz	short loc_45B227
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45B227:				; CODE XREF: .text:0045B220j
		test	ebx, ebx
		jnz	short loc_45B233
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45B233:				; CODE XREF: .text:0045B229j
		dec	ebx
		jnz	short loc_45B264
		push	2000Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		mov	edx, [eax]
		push	edx		; threadid
		call	Setcpu
		add	esp, 18h
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45B264:				; CODE XREF: .text:0045B234j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_45B26C:				; DATA XREF: .data:stru_53867Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+14h]
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_45B289
		xor	eax, eax
		jmp	loc_45B355
; ---------------------------------------------------------------------------

loc_45B289:				; CODE XREF: .text:0045B280j
		mov	edx, [eax+68h]
		push	edx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_45B2A6
		xor	eax, eax
		jmp	loc_45B355
; ---------------------------------------------------------------------------

loc_45B2A6:				; CODE XREF: .text:0045B29Dj
		mov	edx, [esi+54h]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_45B2BD
		xor	eax, eax
		jmp	loc_45B355
; ---------------------------------------------------------------------------

loc_45B2BD:				; CODE XREF: .text:0045B2B4j
		test	edi, edi
		jnz	short loc_45B2CB
		mov	eax, 1
		jmp	loc_45B355
; ---------------------------------------------------------------------------

loc_45B2CB:				; CODE XREF: .text:0045B2BFj
		dec	edi
		jnz	loc_45B353
		push	offset aThreadInformat ; "Thread Information Block of "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-200h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, [ebp-200h]
		add	eax, eax
		add	eax, edx
		push	8400h		; mode
		mov	ecx, [esi]
		push	ecx		; threadid
		push	eax		; s
		call	Decodethreadname
		add	esp, 0Ch
		push	0		; psize
		mov	eax, [ebx]
		push	eax		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_45B325
		mov	edx, 40D0110h
		jmp	short loc_45B32A
; ---------------------------------------------------------------------------

loc_45B325:				; CODE XREF: .text:0045B31Cj
		mov	edx, 90104h

loc_45B32A:				; CODE XREF: .text:0045B323j
		push	0		; strname
		mov	eax, [ebx]
		mov	ecx, eax
		add	ecx, 4
		push	ecx		; sel1
		push	eax		; sel0
		push	edx		; dumptype
		push	0		; path
		mov	edx, [ebx+4]
		push	edx		; size
		push	eax		; base
		lea	eax, [ebp-200h]
		push	eax		; _title
		call	Createdumpwindow
		add	esp, 20h
		mov	eax, 1
		jmp	short loc_45B355
; ---------------------------------------------------------------------------

loc_45B353:				; CODE XREF: .text:0045B2CCj
		xor	eax, eax

loc_45B355:				; CODE XREF: .text:0045B284j
					; .text:0045B2A1j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45B35C:				; DATA XREF: .data:stru_53867Co
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+14h]
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_45B36F
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45B36F:				; CODE XREF: .text:0045B368j
		mov	edx, [eax+68h]
		push	edx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jnz	short loc_45B388
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45B388:				; CODE XREF: .text:0045B381j
		test	ebx, ebx
		jnz	short loc_45B394
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45B394:				; CODE XREF: .text:0045B38Aj
		dec	ebx
		jnz	short loc_45B3A5
		mov	edx, [eax]
		push	edx
		call	loc_496BD4
		pop	ecx
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45B3A5:				; CODE XREF: .text:0045B395j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_45B3AC:				; DATA XREF: .data:stru_53867Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+14h]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_45B3C6
		xor	eax, eax
		jmp	loc_45B44F
; ---------------------------------------------------------------------------

loc_45B3C6:				; CODE XREF: .text:0045B3BDj
		mov	edx, [ebx+68h]
		push	edx		; index
		lea	ecx, [ebx+44h]
		push	ecx		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_45B3E2
		test	byte ptr [esi+0Ah], 1
		jz	short loc_45B3E6

loc_45B3E2:				; CODE XREF: .text:0045B3DAj
		xor	eax, eax
		jmp	short loc_45B44F
; ---------------------------------------------------------------------------

loc_45B3E6:				; CODE XREF: .text:0045B3E0j
		test	edi, edi
		jnz	short loc_45B3F1
		mov	eax, 1
		jmp	short loc_45B44F
; ---------------------------------------------------------------------------

loc_45B3F1:				; CODE XREF: .text:0045B3E8j
		dec	edi
		jnz	short loc_45B44D
		lea	edx, [ebp-8]
		push	edx		; coord
		push	1		; column
		push	ebx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_45B410
		or	ecx, 0FFFFFFFFh
		mov	[ebp-4], ecx
		mov	[ebp-8], ecx

loc_45B410:				; CODE XREF: .text:0045B405j
		push	0		; mode
		add	esi, 10h
		mov	eax, [ebx+234h]
		push	eax		; fi
		mov	edx, [ebp-4]
		push	edx		; y
		mov	eax, [ebp-8]
		push	eax		; x
		push	0		; letter
		push	6Bh		; savetype
		push	20h		; length
		push	esi		; s
		push	offset aSetSymbolicThr ; "Set symbolic thread _name"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	eax, [ebx+22Ch]
		push	eax		; hparent
		call	Getstring
		add	esp, 28h
		mov	eax, 1
		jmp	short loc_45B44F
; ---------------------------------------------------------------------------

loc_45B44D:				; CODE XREF: .text:0045B3F2j
		xor	eax, eax

loc_45B44F:				; CODE XREF: .text:0045B3C1j
					; .text:0045B3E4j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_45B458:				; DATA XREF: .data:stru_53867Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFC00h
		mov	eax, run.status
		test	eax, eax
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+14h]
		mov	esi, [ebp+8]
		jz	short loc_45B481
		cmp	eax, 13h
		jz	short loc_45B481
		cmp	eax, 14h
		jz	short loc_45B481
		test	esi, esi
		jnz	short loc_45B488

loc_45B481:				; CODE XREF: .text:0045B471j
					; .text:0045B476j ...
		xor	eax, eax
		jmp	loc_45B59E
; ---------------------------------------------------------------------------

loc_45B488:				; CODE XREF: .text:0045B47Fj
		mov	edx, [esi+68h]
		push	edx		; index
		lea	ecx, [esi+44h]
		push	ecx		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_45B4A5
		xor	eax, eax
		jmp	loc_45B59E
; ---------------------------------------------------------------------------

loc_45B4A5:				; CODE XREF: .text:0045B49Cj
		test	edi, edi
		jnz	short loc_45B4B3
		mov	eax, 1
		jmp	loc_45B59E
; ---------------------------------------------------------------------------

loc_45B4B3:				; CODE XREF: .text:0045B4A7j
		dec	edi
		jnz	loc_45B59C
		cmp	dword ptr [esi+44h], 1
		jnz	short loc_45B4E2
		push	offset aYouAreGoingToK ; "You are going	to kill	the last thread	i"...
		call	_T
		pop	ecx
		push	eax		; src
		push	200h		; n
		lea	edx, [ebp-400h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_45B550
; ---------------------------------------------------------------------------

loc_45B4E2:				; CODE XREF: .text:0045B4BEj
		test	byte ptr [ebx+0Ah], 2
		jz	short loc_45B50A
		push	offset aYouAreGoingT_4 ; "You are going	to kill	internal .NET deb"...
		call	_T
		pop	ecx
		push	eax		; src
		push	200h		; n
		lea	ecx, [ebp-400h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_45B550
; ---------------------------------------------------------------------------

loc_45B50A:				; CODE XREF: .text:0045B4E6j
		test	byte ptr [ebx+0Ah], 1
		jz	short loc_45B532
		push	offset aYouAreGoingT_5 ; "You are going	to kill	main thread of de"...
		call	_T
		pop	ecx
		push	eax		; src
		push	200h		; n
		lea	eax, [ebp-400h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_45B550
; ---------------------------------------------------------------------------

loc_45B532:				; CODE XREF: .text:0045B50Ej
		mov	edx, [ebx]
		push	edx
		push	offset aYouAreGoingT_6 ; "You are going	to kill	thread %08X. All "...
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-400h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_45B550:				; CODE XREF: .text:0045B4E0j
					; .text:0045B508j ...
		test	byte ptr [ebx+0Ah], 1
		mov	eax, 100h
		jnz	short loc_45B560
		add	eax, 0FFFFFF00h

loc_45B560:				; CODE XREF: .text:0045B559j
		or	eax, 2024h
		push	eax		; uType
		push	offset aAboutToKillThe ; "About	to kill	the thread"
		call	_T
		pop	ecx
		push	eax		; lpCaption
		lea	edx, [ebp-400h]
		push	edx		; lpText
		mov	ecx, hwollymain
		push	ecx		; hWnd
		call	MessageBoxW
		cmp	eax, 6
		jnz	short loc_45B595
		push	0		; dwExitCode
		mov	eax, [ebx+50h]
		push	eax		; hThread
		call	TerminateThread

loc_45B595:				; CODE XREF: .text:0045B588j
		mov	eax, 1
		jmp	short loc_45B59E
; ---------------------------------------------------------------------------

loc_45B59C:				; CODE XREF: .text:0045B4B4j
		xor	eax, eax

loc_45B59E:				; CODE XREF: .text:0045B483j
					; .text:0045B4A0j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_45B5A8@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int nPriority, int)
loc_45B5A8:				; DATA XREF: .data:stru_5385BCo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFC00h
		mov	edx, run.status
		test	edx, edx
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	eax, [ebp+8]
		jz	short loc_45B5D5
		cmp	edx, 13h
		jz	short loc_45B5D5
		cmp	edx, 14h
		jz	short loc_45B5D5
		test	eax, eax
		jnz	short loc_45B5DC

loc_45B5D5:				; CODE XREF: .text:0045B5C5j
					; .text:0045B5CAj ...
		xor	eax, eax
		jmp	loc_45B6E4
; ---------------------------------------------------------------------------

loc_45B5DC:				; CODE XREF: .text:0045B5D3j
		mov	ecx, [eax+68h]
		push	ecx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_45B5F9
		xor	eax, eax
		jmp	loc_45B6E4
; ---------------------------------------------------------------------------

loc_45B5F9:				; CODE XREF: .text:0045B5F0j
		test	edi, edi
		jnz	short loc_45B617
		mov	edx, [ebx+50h]
		push	edx		; hThread
		call	GetThreadPriority
		mov	ecx, 2
		cmp	esi, eax
		jz	short loc_45B610
		dec	ecx

loc_45B610:				; CODE XREF: .text:0045B60Dj
		mov	eax, ecx
		jmp	loc_45B6E4
; ---------------------------------------------------------------------------

loc_45B617:				; CODE XREF: .text:0045B5FBj
		dec	edi
		jnz	loc_45B6E2
		cmp	esi, 0Fh
		jnz	loc_45B6BB
		push	offset aYouAreGoingToA ; "You are going	to assign time-critical	p"...
		call	_T
		pop	ecx
		push	eax		; src
		push	200h		; n
		lea	eax, [ebp-400h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		mov	edx, edi
		lea	ecx, [ebp-400h]
		push	8400h		; mode
		add	edx, edx
		mov	eax, [ebx]
		add	edx, ecx
		push	eax		; threadid
		push	edx		; s
		call	Decodethreadname
		add	esp, 0Ch
		add	edi, eax
		push	offset a_InSomeCasesTh ; ". In some cases this may slow	down or	p"...
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 200h
		lea	edx, [ebp-400h]
		sub	eax, edi
		add	edi, edi
		add	edi, edx
		push	eax		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	2124h		; uType
		push	offset aAboutToAssignT ; "About	to assign time-critical	priority "...
		call	_T
		pop	ecx
		push	eax		; lpCaption
		lea	ecx, [ebp-400h]
		push	ecx		; lpText
		mov	eax, hwollymain
		push	eax		; hWnd
		call	MessageBoxW
		cmp	eax, 6
		jz	short loc_45B6BB
		xor	eax, eax
		jmp	short loc_45B6E4
; ---------------------------------------------------------------------------

loc_45B6BB:				; CODE XREF: .text:0045B621j
					; .text:0045B6B5j
		push	esi		; nPriority
		mov	edx, [ebx+50h]
		push	edx		; hThread
		call	SetThreadPriority
		test	eax, eax
		jnz	short loc_45B6DB
		push	offset aUnableToChan_0 ; "Unable to change priority"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_45B6DB:				; CODE XREF: .text:0045B6C7j
		mov	eax, 1
		jmp	short loc_45B6E4
; ---------------------------------------------------------------------------

loc_45B6E2:				; CODE XREF: .text:0045B618j
		xor	eax, eax

loc_45B6E4:				; CODE XREF: .text:0045B5D7j
					; .text:0045B5F4j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 214. _Findthread
; Exported entry 538. Findthread

; t_thread *__cdecl Findthread(ulong threadid)
		public Findthread
Findthread:				; CODE XREF: .text:00406B34p
					; .text:00409031p ...
		push	ebp		; _Findthread
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_45B70B
		xor	eax, eax
		xor	edx, edx
		mov	dword_5E17CC, eax
		xor	eax, eax
		mov	dword_5385B8, edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45B70B:				; CODE XREF: .text:0045B6F5j
		mov	edx, thread.sorted.version
		cmp	edx, dword_5385B8
		jnz	short loc_45B72C
		cmp	dword_5E17CC, 0
		jz	short loc_45B72C
		mov	ecx, dword_5E17CC
		cmp	ebx, [ecx]
		jz	short loc_45B74B

loc_45B72C:				; CODE XREF: .text:0045B717j
					; .text:0045B720j
		push	0		; subaddr
		push	ebx		; _addr
		push	offset thread.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	dword_5E17CC, eax
		mov	eax, thread.sorted.version
		mov	dword_5385B8, eax

loc_45B74B:				; CODE XREF: .text:0045B72Aj
		mov	eax, dword_5E17CC
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 215. _Findthreadbyordinal
; Exported entry 539. Findthreadbyordinal

; t_thread *__cdecl Findthreadbyordinal(int ordinal)
		public Findthreadbyordinal
Findthreadbyordinal:			; CODE XREF: .text:004565D9p
					; .text:00492A7Bp ...
		push	ebp		; _Findthreadbyordinal
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	edi, offset thread
		xor	ebx, ebx
		jmp	short loc_45B77D
; ---------------------------------------------------------------------------

loc_45B766:				; CODE XREF: .text:0045B780j
		push	ebx		; index
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_45B77C
		cmp	esi, [eax+0Ch]
		jz	short loc_45B784

loc_45B77C:				; CODE XREF: .text:0045B775j
		inc	ebx

loc_45B77D:				; CODE XREF: .text:0045B764j
		cmp	ebx, [edi+44h]
		jl	short loc_45B766
		xor	eax, eax

loc_45B784:				; CODE XREF: .text:0045B77Aj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 216. _Threadregisters
; Exported entry 735. Threadregisters

; t_reg	*__cdecl Threadregisters(ulong threadid)
		public Threadregisters
Threadregisters:			; CODE XREF: .text:00474E07p
					; .text:004763E5p ...
		push	ebp		; _Threadregisters
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax		; threadid
		call	Findthread
		pop	ecx
		test	eax, eax
		jnz	short loc_45B7A1
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45B7A1:				; CODE XREF: .text:0045B79Bj
		cmp	dword ptr [eax+4ECh], 0
		jz	short loc_45B7B1
		add	eax, 328h
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45B7B1:				; CODE XREF: .text:0045B7A8j
		cmp	dword ptr [eax+6B4h], 0
		jz	short loc_45B7C1
		add	eax, 4F0h
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45B7C1:				; CODE XREF: .text:0045B7B8j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 217. _Decodethreadname
; Exported entry 459. Decodethreadname

; unsigned int __cdecl Decodethreadname(wchar_t	*s, ulong threadid, int	mode)
		public Decodethreadname
Decodethreadname:			; CODE XREF: .text:00412C5Ap
					; .text:00412CAEp ...
		push	ebp		; _Decodethreadname
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		xor	esi, esi
		cmp	dword ptr [ebp+8], 0
		mov	edi, [ebp+10h]
		jnz	short loc_45B7E0
		xor	eax, eax
		jmp	loc_45BA3E
; ---------------------------------------------------------------------------

loc_45B7E0:				; CODE XREF: .text:0045B7D7j
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_45B857
		test	edi, 1
		jz	short loc_45B808
		push	offset word_538784 ; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_45B850
; ---------------------------------------------------------------------------

loc_45B808:				; CODE XREF: .text:0045B7ECj
		test	edi, 400h
		jz	short loc_45B831
		push	offset aNullThread ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_45B850
; ---------------------------------------------------------------------------

loc_45B831:				; CODE XREF: .text:0045B80Ej
		push	offset aNull_3	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax

loc_45B850:				; CODE XREF: .text:0045B806j
					; .text:0045B82Fj
		mov	eax, esi
		jmp	loc_45BA3E
; ---------------------------------------------------------------------------

loc_45B857:				; CODE XREF: .text:0045B7E4j
		mov	edx, [ebp+0Ch]
		push	edx		; threadid
		call	Findthread
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_45B88C
		test	edi, 1
		jz	short loc_45B88C
		push	offset word_538784 ; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	loc_45BA3C
; ---------------------------------------------------------------------------

loc_45B88C:				; CODE XREF: .text:0045B865j
					; .text:0045B86Dj
		test	ebx, ebx
		jz	loc_45B920
		test	byte ptr [ebx+0Ah], 1
		jz	loc_45B920
		test	edi, 100h
		jnz	short loc_45B920
		test	edi, 400h
		jz	short loc_45B8E7
		test	edi, 800h
		jz	short loc_45B8C3
		push	offset aMainThread ; src
		call	_T
		pop	ecx
		jmp	short loc_45B8CE
; ---------------------------------------------------------------------------

loc_45B8C3:				; CODE XREF: .text:0045B8B4j
		push	offset aMainThread_0 ; src
		call	_T
		pop	ecx

loc_45B8CE:				; CODE XREF: .text:0045B8C1j
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	loc_45BA3C
; ---------------------------------------------------------------------------

loc_45B8E7:				; CODE XREF: .text:0045B8ACj
		test	edi, 800h
		jz	short loc_45B8FC
		push	offset aMain_1	; src
		call	_T
		pop	ecx
		jmp	short loc_45B907
; ---------------------------------------------------------------------------

loc_45B8FC:				; CODE XREF: .text:0045B8EDj
		push	offset aMain_3	; src
		call	_T
		pop	ecx

loc_45B907:				; CODE XREF: .text:0045B8FAj
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	loc_45BA3C
; ---------------------------------------------------------------------------

loc_45B920:				; CODE XREF: .text:0045B88Ej
					; .text:0045B898j ...
		test	edi, 400h
		jz	loc_45B9CB
		test	ebx, ebx
		jz	short loc_45B957
		test	byte ptr [ebx+0Ah], 2
		jz	short loc_45B957
		push	offset a_netHelperThre ; ".NET helper thread "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_45B9CB
; ---------------------------------------------------------------------------

loc_45B957:				; CODE XREF: .text:0045B92Ej
					; .text:0045B934j
		test	ebx, ebx
		jz	short loc_45B997
		cmp	dword ptr [ebx+0Ch], 0
		jnz	short loc_45B997
		test	edi, 800h
		jz	short loc_45B976
		push	offset aTemporaryThrea ; "Temporary thread "
		call	_T
		pop	ecx
		jmp	short loc_45B981
; ---------------------------------------------------------------------------

loc_45B976:				; CODE XREF: .text:0045B967j
		push	offset aTemporaryThr_0 ; "temporary thread "
		call	_T
		pop	ecx

loc_45B981:				; CODE XREF: .text:0045B974j
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_45B9CB
; ---------------------------------------------------------------------------

loc_45B997:				; CODE XREF: .text:0045B959j
					; .text:0045B95Fj
		test	edi, 800h
		jz	short loc_45B9AC
		push	offset aThread	; "Thread "
		call	_T
		pop	ecx
		jmp	short loc_45B9B7
; ---------------------------------------------------------------------------

loc_45B9AC:				; CODE XREF: .text:0045B99Dj
		push	(offset	a_netHelperThre+18h) ; src
		call	_T
		pop	ecx

loc_45B9B7:				; CODE XREF: .text:0045B9AAj
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax

loc_45B9CB:				; CODE XREF: .text:0045B926j
					; .text:0045B955j ...
		test	ebx, ebx
		jz	short loc_45B9DD
		test	edi, 8000h
		jz	short loc_45B9DD
		cmp	dword ptr [ebx+0Ch], 0
		jnz	short loc_45B9F5

loc_45B9DD:				; CODE XREF: .text:0045B9CDj
					; .text:0045B9D5j
		mov	eax, [ebp+0Ch]
		mov	edx, esi
		push	eax		; u
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; s
		call	Hexprint8W
		add	esp, 8
		add	esi, eax
		jmp	short loc_45BA3C
; ---------------------------------------------------------------------------

loc_45B9F5:				; CODE XREF: .text:0045B9DBj
		cmp	word ptr [ebx+10h], 0
		jz	short loc_45BA1D
		mov	ecx, [ebp+0Ch]
		add	ebx, 10h
		push	ecx
		push	ebx
		mov	eax, esi
		push	offset aS08x	; "%s (%08X)"
		add	eax, eax
		add	eax, [ebp+8]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		add	esi, eax
		jmp	short loc_45BA3C
; ---------------------------------------------------------------------------

loc_45BA1D:				; CODE XREF: .text:0045B9FAj
		mov	edx, [ebp+0Ch]
		mov	eax, esi
		push	edx
		add	eax, eax
		mov	ecx, [ebx+0Ch]
		push	ecx
		push	offset aI_08x	; "%i. (%08X)"
		add	eax, [ebp+8]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		add	esi, eax

loc_45BA3C:				; CODE XREF: .text:0045B887j
					; .text:0045B8E2j ...
		mov	eax, esi

loc_45BA3E:				; CODE XREF: .text:0045B7DBj
					; .text:0045B852j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_45BA44:				; DATA XREF: .text:0045BBF7o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		mov	edx, [ebp+0Ch]
		cmp	dword ptr [eax+8], 0
		jnz	short loc_45BA61
		cmp	dword ptr [edx+8], 0
		jz	short loc_45BA61
		mov	eax, 1
		jmp	short loc_45BAA6
; ---------------------------------------------------------------------------

loc_45BA61:				; CODE XREF: .text:0045BA52j
					; .text:0045BA58j
		mov	ecx, [eax+8]
		test	ecx, ecx
		jz	short loc_45BA73
		cmp	dword ptr [edx+8], 0
		jnz	short loc_45BA73
		or	eax, 0FFFFFFFFh
		jmp	short loc_45BAA6
; ---------------------------------------------------------------------------

loc_45BA73:				; CODE XREF: .text:0045BA66j
					; .text:0045BA6Cj
		mov	ebx, [edx+8]
		cmp	ecx, ebx
		jle	short loc_45BA81
		mov	eax, 1
		jmp	short loc_45BAA6
; ---------------------------------------------------------------------------

loc_45BA81:				; CODE XREF: .text:0045BA78j
		cmp	ebx, ecx
		jle	short loc_45BA8A
		or	eax, 0FFFFFFFFh
		jmp	short loc_45BAA6
; ---------------------------------------------------------------------------

loc_45BA8A:				; CODE XREF: .text:0045BA83j
		mov	ebx, [edx+14h]
		mov	ecx, [eax+14h]
		cmp	ebx, ecx
		jnb	short loc_45BA9B
		mov	eax, 1
		jmp	short loc_45BAA6
; ---------------------------------------------------------------------------

loc_45BA9B:				; CODE XREF: .text:0045BA92j
		cmp	ebx, ecx
		jbe	short loc_45BAA4
		or	eax, 0FFFFFFFFh
		jmp	short loc_45BAA6
; ---------------------------------------------------------------------------

loc_45BAA4:				; CODE XREF: .text:0045BA9Dj
		xor	eax, eax

loc_45BAA6:				; CODE XREF: .text:0045BA5Fj
					; .text:0045BA71j ...
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_45BAAC:				; CODE XREF: .text:00410794p
					; .text:004AD3AEp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		mov	ebx, [ebp+0Ch]
		push	30h		; n
		push	0		; c
		push	offset dword_586216 ; s
		call	_memset
		add	esp, 0Ch
		mov	dword_586216, offset word_538784
		mov	dword_586226, offset dword_58622E
		test	ebx, ebx
		jl	short loc_45BAF7
		cmp	data, 0
		jz	short loc_45BB13
		mov	eax, thread.sorted.n
		inc	eax
		cmp	eax, dword_5E17D4
		jle	short loc_45BB13

loc_45BAF7:				; CODE XREF: .text:0045BADEj
		mov	edx, data
		push	edx		; data
		call	Memfree
		pop	ecx
		xor	ecx, ecx
		xor	eax, eax
		mov	data, ecx
		mov	dword_5E17D4, eax

loc_45BB13:				; CODE XREF: .text:0045BAE7j
					; .text:0045BAF5j
		test	ebx, ebx
		jl	short loc_45BB33
		cmp	dword ptr [ebp+8], 0
		jz	short loc_45BB33
		cmp	thread.sorted.n, 0
		jz	short loc_45BB33
		test	ebx, ebx
		jz	short loc_45BB3A
		cmp	thread.sorted.n, 1
		jnz	short loc_45BB3A

loc_45BB33:				; CODE XREF: .text:0045BB15j
					; .text:0045BB1Bj ...
		xor	eax, eax
		jmp	loc_45BC53
; ---------------------------------------------------------------------------

loc_45BB3A:				; CODE XREF: .text:0045BB28j
					; .text:0045BB31j
		cmp	data, 0
		jnz	short loc_45BB94
		mov	edx, thread.sorted.n
		add	edx, edx
		inc	edx		; int
		mov	[ebp-8], edx
		mov	dword ptr [ebp-0Ch], 20h
		mov	ecx, [ebp-0Ch]	; int
		cmp	ecx, [ebp-8]
		jle	short loc_45BB63
		lea	eax, [ebp-0Ch]
		jmp	short loc_45BB66
; ---------------------------------------------------------------------------

loc_45BB63:				; CODE XREF: .text:0045BB5Cj
		lea	eax, [ebp-8]

loc_45BB66:				; CODE XREF: .text:0045BB61j
		mov	esi, [eax]
		push	3		; flags
		mov	eax, esi
		shl	eax, 3
		lea	eax, [eax+eax*2] ; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		mov	data, ebx
		test	ebx, ebx
		jnz	short loc_45BB8E
		xor	eax, eax
		jmp	loc_45BC53
; ---------------------------------------------------------------------------

loc_45BB8E:				; CODE XREF: .text:0045BB85j
		mov	dword_5E17D4, esi

loc_45BB94:				; CODE XREF: .text:0045BB41j
		xor	ebx, ebx
		xor	esi, esi
		jmp	short loc_45BBEB
; ---------------------------------------------------------------------------

loc_45BB9A:				; CODE XREF: .text:0045BBF1j
		push	ebx		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	short loc_45BBEA
		lea	eax, [esi+esi*2]
		mov	edx, data
		mov	dword ptr [edx+eax*8], offset aThread_1	; "Thread"
		mov	dword ptr [edx+eax*8+4], offset	aSelectThread ;	"Select	thread"
		mov	ecx, [ebp-4]
		mov	ecx, [ecx+0Ch]
		mov	[edx+eax*8+8], ecx
		mov	ecx, [ebp+8]
		mov	[edx+eax*8+0Ch], ecx
		xor	ecx, ecx
		mov	[edx+eax*8+10h], ecx
		inc	esi
		mov	ecx, [ebp-4]
		mov	ecx, [ecx]
		mov	[edx+eax*8+14h], ecx

loc_45BBEA:				; CODE XREF: .text:0045BBAFj
		inc	ebx

loc_45BBEB:				; CODE XREF: .text:0045BB98j
		cmp	ebx, thread.sorted.n
		jl	short loc_45BB9A
		test	esi, esi
		jle	short loc_45BC0D
		push	offset loc_45BA44 ; _DWORD
		push	18h		; size
		push	esi		; count
		mov	eax, data
		push	eax		; data
		call	Heapsort
		add	esp, 10h

loc_45BC0D:				; CODE XREF: .text:0045BBF5j
		xor	ebx, ebx
		cmp	esi, ebx
		jle	short loc_45BC27

loc_45BC13:				; CODE XREF: .text:0045BC25j
		lea	eax, [ebx+ebx*2]
		mov	edx, data
		xor	ecx, ecx
		mov	[edx+eax*8+8], ecx
		inc	ebx
		cmp	esi, ebx
		jg	short loc_45BC13

loc_45BC27:				; CODE XREF: .text:0045BC11j
		mov	eax, esi
		push	18h		; n
		shl	eax, 3
		push	0		; c
		lea	eax, [eax+eax*2]
		add	eax, data
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, data
		mov	dword_586226, edx
		mov	eax, offset dword_586216

loc_45BC53:				; CODE XREF: .text:0045BB35j
					; .text:0045BB89j
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_45BC5C:				; CODE XREF: .text:0045B0B1p
					; DATA XREF: .text:0045C53Ao
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE0h
		push	ebx
		push	esi
		push	edi
		xor	esi, esi
		mov	edi, [ebp+8]
		jmp	loc_45BD0C
; ---------------------------------------------------------------------------

loc_45BC6F:				; CODE XREF: .text:0045BD0Fj
		push	esi		; index
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		xor	eax, eax
		mov	[ebx+700h], eax
		push	ebx		; lParam
		push	offset loc_45AFB4 ; lpfn
		mov	edx, [ebx]
		push	edx		; dwThreadId
		call	EnumThreadWindows
		mov	eax, [ebx+50h]
		test	eax, eax
		jz	short loc_45BCBF
		cmp	_imp__GetThreadTimes, 0
		jz	short loc_45BCBF
		lea	edx, [ebp-20h]
		push	edx
		lea	ecx, [ebp-18h]
		push	ecx
		lea	edx, [ebp-10h]
		push	edx
		lea	ecx, [ebp-8]
		push	ecx
		push	eax
		call	_imp__GetThreadTimes
		test	eax, eax
		jnz	short loc_45BCD5

loc_45BCBF:				; CODE XREF: .text:0045BC99j
					; .text:0045BCA2j
		mov	dword ptr [ebx+704h], 0FFFFFFFFh
		mov	dword ptr [ebx+708h], 0FFFFFFFFh
		jmp	short loc_45BD0B
; ---------------------------------------------------------------------------

loc_45BCD5:				; CODE XREF: .text:0045BCBDj
		push	3E8h
		mov	eax, [ebp-1Ch]
		push	eax
		mov	eax, [ebp-20h]
		push	eax
		call	loc_410F32
		add	esp, 0Ch
		mov	[ebx+704h], eax
		push	3E8h
		mov	edx, [ebp-14h]
		push	edx
		mov	ecx, [ebp-18h]
		push	ecx
		call	loc_410F32
		add	esp, 0Ch
		mov	[ebx+708h], eax

loc_45BD0B:				; CODE XREF: .text:0045BCD3j
		inc	esi

loc_45BD0C:				; CODE XREF: .text:0045BC6Aj
		cmp	esi, [edi+44h]
		jl	loc_45BC6F
		xor	eax, eax
		mov	[edi+80h], eax
		mov	edx, [edi+7Ch]
		push	edx		; sort
		add	edi, 44h
		push	edi		; sd
		call	Sortsorteddata
		add	esp, 8
		xor	eax, eax
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; SORTFUNC loc_45BD38
loc_45BD38:				; DATA XREF: .text:0044A1AFo
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+10h]
		xor	ecx, ecx
		mov	eax, [ebp+8]
		mov	edx, [ebp+0Ch]
		cmp	ebx, 1
		jnz	short loc_45BD6F
		mov	esi, [edx]
		mov	ebx, [eax]
		cmp	esi, ebx
		jbe	short loc_45BD5D
		or	ecx, 0FFFFFFFFh
		jmp	loc_45BDF5
; ---------------------------------------------------------------------------

loc_45BD5D:				; CODE XREF: .text:0045BD53j
		cmp	esi, ebx
		jnb	loc_45BDF5
		mov	ecx, 1
		jmp	loc_45BDF5
; ---------------------------------------------------------------------------

loc_45BD6F:				; CODE XREF: .text:0045BD4Bj
		cmp	ebx, 4
		jnz	short loc_45BD8E
		mov	esi, [edx+58h]
		mov	ebx, [eax+58h]
		cmp	esi, ebx
		jbe	short loc_45BD83
		or	ecx, 0FFFFFFFFh
		jmp	short loc_45BDF5
; ---------------------------------------------------------------------------

loc_45BD83:				; CODE XREF: .text:0045BD7Cj
		cmp	esi, ebx
		jnb	short loc_45BDF5
		mov	ecx, 1
		jmp	short loc_45BDF5
; ---------------------------------------------------------------------------

loc_45BD8E:				; CODE XREF: .text:0045BD72j
		cmp	ebx, 5
		jnz	short loc_45BDAD
		mov	esi, [edx+54h]
		mov	ebx, [eax+54h]
		cmp	esi, ebx
		jbe	short loc_45BDA2
		or	ecx, 0FFFFFFFFh
		jmp	short loc_45BDF5
; ---------------------------------------------------------------------------

loc_45BDA2:				; CODE XREF: .text:0045BD9Bj
		cmp	esi, ebx
		jnb	short loc_45BDF5
		mov	ecx, 1
		jmp	short loc_45BDF5
; ---------------------------------------------------------------------------

loc_45BDAD:				; CODE XREF: .text:0045BD91j
		cmp	ebx, 8
		jnz	short loc_45BDD2
		mov	esi, [edx+704h]
		mov	ebx, [eax+704h]
		cmp	esi, ebx
		jnb	short loc_45BDC7
		or	ecx, 0FFFFFFFFh
		jmp	short loc_45BDF5
; ---------------------------------------------------------------------------

loc_45BDC7:				; CODE XREF: .text:0045BDC0j
		cmp	esi, ebx
		jbe	short loc_45BDF5
		mov	ecx, 1
		jmp	short loc_45BDF5
; ---------------------------------------------------------------------------

loc_45BDD2:				; CODE XREF: .text:0045BDB0j
		cmp	ebx, 9
		jnz	short loc_45BDF5
		mov	esi, [edx+708h]
		mov	ebx, [eax+708h]
		cmp	esi, ebx
		jnb	short loc_45BDEC
		or	ecx, 0FFFFFFFFh
		jmp	short loc_45BDF5
; ---------------------------------------------------------------------------

loc_45BDEC:				; CODE XREF: .text:0045BDE5j
		cmp	esi, ebx
		jbe	short loc_45BDF5
		mov	ecx, 1

loc_45BDF5:				; CODE XREF: .text:0045BD58j
					; .text:0045BD5Fj ...
		test	ecx, ecx
		jnz	short loc_45BE33
		cmp	dword ptr [eax+0Ch], 0
		jnz	short loc_45BE0C
		cmp	dword ptr [edx+0Ch], 0
		jz	short loc_45BE0C
		mov	ecx, 1
		jmp	short loc_45BE33
; ---------------------------------------------------------------------------

loc_45BE0C:				; CODE XREF: .text:0045BDFDj
					; .text:0045BE03j
		mov	ebx, [eax+0Ch]
		test	ebx, ebx
		jz	short loc_45BE1E
		cmp	dword ptr [edx+0Ch], 0
		jnz	short loc_45BE1E
		or	ecx, 0FFFFFFFFh
		jmp	short loc_45BE33
; ---------------------------------------------------------------------------

loc_45BE1E:				; CODE XREF: .text:0045BE11j
					; .text:0045BE17j
		mov	esi, [edx+0Ch]
		cmp	ebx, esi
		jge	short loc_45BE2A
		or	ecx, 0FFFFFFFFh
		jmp	short loc_45BE33
; ---------------------------------------------------------------------------

loc_45BE2A:				; CODE XREF: .text:0045BE23j
		cmp	esi, ebx
		jge	short loc_45BE33
		mov	ecx, 1

loc_45BE33:				; CODE XREF: .text:0045BDF7j
					; .text:0045BE0Aj ...
		mov	eax, ecx
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; DESTFUNC loc_45BE3C
loc_45BE3C:				; DATA XREF: .text:0044A1AAo
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_45BE66
		mov	ebx, eax
		mov	eax, [ebx+50h]
		test	eax, eax
		jz	short loc_45BE66
		cmp	eax, 0FFFFFFFFh
		jz	short loc_45BE66
		test	byte ptr [ebx+0Ah], 10h
		jnz	short loc_45BE61
		push	eax		; hObject
		call	CloseHandle

loc_45BE61:				; CODE XREF: .text:0045BE59j
		xor	edx, edx
		mov	[ebx+50h], edx

loc_45BE66:				; CODE XREF: .text:0045BE45j
					; .text:0045BE4Ej ...
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_45BE6C(LPWSTR	lpString, void *s, int,	int, int, int)
loc_45BE6C:				; DATA XREF: .text:0045C546o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+1Ch]
		xor	ebx, ebx
		add	eax, 4
		mov	esi, [ebp+18h]
		cmp	eax, 0Dh	; switch 14 cases
		ja	loc_45C2E2	; jumptable 0045BE85 default case
		jmp	ds:off_45BE8C[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_45BE8C	dd offset loc_45BEC4	; DATA XREF: .text:0045BE85r
		dd offset loc_45BECB	; jump table for switch	statement
		dd offset loc_45BED2
		dd offset loc_45BED9
		dd offset loc_45BEE0
		dd offset loc_45BF7A
		dd offset loc_45C007
		dd offset loc_45C02B
		dd offset loc_45C041
		dd offset loc_45C068
		dd offset loc_45C08F
		dd offset loc_45C0DE
		dd offset loc_45C256
		dd offset loc_45C29D
; ---------------------------------------------------------------------------

loc_45BEC4:				; CODE XREF: .text:0045BE85j
					; DATA XREF: .text:off_45BE8Co
		xor	eax, eax	; jumptable 0045BE85 case 0
		jmp	loc_45C2E4
; ---------------------------------------------------------------------------

loc_45BECB:				; CODE XREF: .text:0045BE85j
					; DATA XREF: .text:off_45BE8Co
		xor	eax, eax	; jumptable 0045BE85 case 1
		jmp	loc_45C2E4
; ---------------------------------------------------------------------------

loc_45BED2:				; CODE XREF: .text:0045BE85j
					; DATA XREF: .text:off_45BE8Co
		xor	eax, eax	; jumptable 0045BE85 case 2
		jmp	loc_45C2E4
; ---------------------------------------------------------------------------

loc_45BED9:				; CODE XREF: .text:0045BE85j
					; DATA XREF: .text:off_45BE8Co
		xor	eax, eax	; jumptable 0045BE85 case 3
		jmp	loc_45C2E4
; ---------------------------------------------------------------------------

loc_45BEE0:				; CODE XREF: .text:0045BE85j
					; DATA XREF: .text:off_45BE8Co
		test	byte ptr [esi+0Ah], 1 ;	jumptable 0045BE85 case	4
		jz	short loc_45BF0A
		push	offset aMain_1	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45BF0A:				; CODE XREF: .text:0045BEE4j
		test	byte ptr [esi+0Ah], 2
		jz	short loc_45BF34
		push	offset aDebug_0	; "Debug"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45BF34:				; CODE XREF: .text:0045BF0Ej
		cmp	dword ptr [esi+0Ch], 0
		jnz	short loc_45BF5E
		push	offset aTemp	; "Temp"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45BF5E:				; CODE XREF: .text:0045BF38j
		mov	eax, [esi+0Ch]
		push	eax
		push	offset aI__0	; "%i."
		mov	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45BF7A:				; CODE XREF: .text:0045BE85j
					; DATA XREF: .text:off_45BE8Co
		cmp	word ptr [esi+10h], 0 ;	jumptable 0045BE85 case	5
		jz	short loc_45BFD1
		lea	eax, [esi+10h]
		push	eax		; src
		push	20h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		push	(offset	a_netHelperThre+24h) ; src
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		cmp	dword_57DE58, 0
		mov	ecx, 1
		push	ebx		; n
		jnz	short loc_45BFC4
		dec	ecx

loc_45BFC4:				; CODE XREF: .text:0045BFC1j
		push	ecx		; c
		mov	eax, [ebp+0Ch]
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_45BFD1:				; CODE XREF: .text:0045BF7Fj
		mov	edx, [esi]
		mov	ecx, ebx
		push	edx		; u
		add	ecx, ecx
		add	ecx, [ebp+8]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		mov	esi, eax
		push	esi		; n
		push	0		; c
		mov	eax, [ebp+0Ch]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		add	ebx, esi
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 100h
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C007:				; CODE XREF: .text:0045BE85j
					; DATA XREF: .text:off_45BE8Co
		mov	eax, [esi+700h]	; jumptable 0045BE85 case 6
		test	eax, eax
		jz	loc_45C2E2	; jumptable 0045BE85 default case
		push	100h		; nMaxCount
		mov	edx, [ebp+8]
		push	edx		; lpString
		push	eax		; hWnd
		call	GetWindowTextW
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C02B:				; CODE XREF: .text:0045BE85j
					; DATA XREF: .text:off_45BE8Co
		mov	eax, [ebp+8]	; jumptable 0045BE85 case 7
		push	eax		; s
		push	0		; error
		push	esi		; pthr
		call	Getlasterror
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C041:				; CODE XREF: .text:0045BE85j
					; DATA XREF: .text:off_45BE8Co
		push	9		; jumptable 0045BE85 case 8
		mov	eax, [ebp+10h]
		push	eax		; select
		mov	edx, [ebp+0Ch]
		push	edx		; mask
		push	0		; index
		push	0FFFFFFFFh	; relreg
		push	0		; reladdr
		mov	ecx, [esi+58h]
		push	ecx		; _addr
		mov	eax, [ebp+8]
		push	eax		; text
		call	Labeladdress
		add	esp, 20h
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C068:				; CODE XREF: .text:0045BE85j
					; DATA XREF: .text:off_45BE8Co
		push	1		; jumptable 0045BE85 case 9
		mov	eax, [ebp+10h]
		push	eax		; select
		mov	edx, [ebp+0Ch]
		push	edx		; mask
		push	0		; index
		push	0FFFFFFFFh	; relreg
		push	0		; reladdr
		mov	ecx, [esi+54h]
		push	ecx		; _addr
		mov	eax, [ebp+8]
		push	eax		; text
		call	Labeladdress
		add	esp, 20h
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C08F:				; CODE XREF: .text:0045BE85j
					; DATA XREF: .text:off_45BE8Co
		mov	eax, [esi+50h]	; jumptable 0045BE85 case 10
		push	eax		; hThread
		call	SuspendThread
		mov	ebx, eax
		mov	eax, [esi+50h]
		push	eax		; hThread
		call	ResumeThread
		cmp	ebx, 0FFFFFFFFh
		jnz	short loc_45C0C5
		push	$CTW0("???")	; "???"
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C0C5:				; CODE XREF: .text:0045C0A6j
		push	ebx
		push	offset aI__0	; "%i."
		mov	eax, [ebp+8]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C0DE:				; CODE XREF: .text:0045BE85j
					; DATA XREF: .text:off_45BE8Co
		mov	edx, [esi+50h]	; jumptable 0045BE85 case 11
		push	edx		; hThread
		call	GetThreadPriority
		mov	ecx, eax
		add	ecx, 0Fh	; switch 31 cases
		cmp	ecx, 1Eh
		ja	loc_45C23D	; jumptable 0045C0FB default case
		mov	cl, ds:byte_45C102[ecx]
		jmp	ds:off_45C121[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
byte_45C102	db	7,     0,     0,     0 ; DATA XREF: .text:0045C0F5r
		db	0,     0,     0,     0 ; indirect table	for switch statement
		db	0,     0,     0,     0
		db	0,     6,     5,     4
		db	3,     2,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     1
off_45C121	dd offset loc_45C23D	; DATA XREF: .text:0045C0FBr
		dd offset loc_45C219	; jump table for switch	statement
		dd offset loc_45C1F5
		dd offset loc_45C1D1
		dd offset loc_45C1AD
		dd offset loc_45C189
		dd offset loc_45C165
		dd offset loc_45C141
; ---------------------------------------------------------------------------

loc_45C141:				; CODE XREF: .text:0045C0FBj
					; DATA XREF: .text:off_45C121o
		push	offset aIdle	; jumptable 0045C0FB case -15
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C165:				; CODE XREF: .text:0045C0FBj
					; DATA XREF: .text:off_45C121o
		push	offset aLowest	; jumptable 0045C0FB case -2
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C189:				; CODE XREF: .text:0045C0FBj
					; DATA XREF: .text:off_45C121o
		push	offset aLow	; jumptable 0045C0FB case -1
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C1AD:				; CODE XREF: .text:0045C0FBj
					; DATA XREF: .text:off_45C121o
		push	offset aNormal_0 ; jumptable 0045C0FB case 0
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C1D1:				; CODE XREF: .text:0045C0FBj
					; DATA XREF: .text:off_45C121o
		push	offset aHigh_0	; jumptable 0045C0FB case 1
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C1F5:				; CODE XREF: .text:0045C0FBj
					; DATA XREF: .text:off_45C121o
		push	offset aHighest	; jumptable 0045C0FB case 2
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C219:				; CODE XREF: .text:0045C0FBj
					; DATA XREF: .text:off_45C121o
		push	offset aTimeCritical ; jumptable 0045C0FB case 15
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C23D:				; CODE XREF: .text:0045C0EFj
					; .text:0045C0FBj
					; DATA XREF: ...
		push	eax		; jumptable 0045C0FB default case
		push	offset aI__0	; "%i."
		mov	eax, [ebp+8]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_45C2E2	; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C256:				; CODE XREF: .text:0045BE85j
					; DATA XREF: .text:off_45BE8Co
		cmp	dword ptr [esi+704h], 0FFFFFFFFh ; jumptable 0045BE85 case 12
		jnz	short loc_45C263
		xor	ebx, ebx
		jmp	short loc_45C2E2 ; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C263:				; CODE XREF: .text:0045C25Dj
		mov	ebx, [esi+704h]
		xor	edx, edx
		mov	eax, ebx
		mov	ecx, 2710h
		div	ecx
		push	edx
		mov	eax, ebx
		mov	ecx, 2710h
		xor	edx, edx
		div	ecx
		push	eax
		push	offset a4i_04iS	; "%4i.%04i s"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp+8]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		mov	ebx, eax
		jmp	short loc_45C2E2 ; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C29D:				; CODE XREF: .text:0045BE85j
					; DATA XREF: .text:off_45BE8Co
		cmp	dword ptr [esi+708h], 0FFFFFFFFh ; jumptable 0045BE85 case 13
		jnz	short loc_45C2AA
		xor	ebx, ebx
		jmp	short loc_45C2E2 ; jumptable 0045BE85 default case
; ---------------------------------------------------------------------------

loc_45C2AA:				; CODE XREF: .text:0045C2A4j
		mov	ebx, [esi+708h]
		xor	edx, edx
		mov	eax, ebx
		mov	ecx, 2710h
		div	ecx
		push	edx
		mov	eax, ebx
		mov	ecx, 2710h
		xor	edx, edx
		div	ecx
		push	eax
		push	offset a4i_04iS	; "%4i.%04i s"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp+8]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		mov	ebx, eax

loc_45C2E2:				; CODE XREF: .text:0045BE7Fj
					; .text:0045BF05j ...
		mov	eax, ebx	; jumptable 0045BE85 default case

loc_45C2E4:				; CODE XREF: .text:0045BEC6j
					; .text:0045BECDj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45C2E8:				; DATA XREF: .text:0045C51Fo
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		sub	eax, 471h
		jz	short loc_45C2FC
		sub	eax, 1Bh
		jz	short loc_45C320
		jmp	short loc_45C32B
; ---------------------------------------------------------------------------

loc_45C2FC:				; CODE XREF: .text:0045C2F3j
		push	0		; index
		push	offset loc_45B204 ; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45C320:				; CODE XREF: .text:0045C2F8j
		or	dword_57FE7C, 10h
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45C32B:				; CODE XREF: .text:0045C2FAj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_45C330:				; CODE XREF: .text:0040B024p
					; .text:00410031p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, offset word_538784
		cmp	thread.bar.nbar, 0
		jnz	loc_45C55F
		lea	eax, [ebx+100Eh]
		push	eax		; src
		push	offset thread	; dst
		call	_wcscpy
		mov	thread.mode, 0F0000h
		mov	thread.bar.nbar, 0Ah
		lea	edx, [ebx+101Eh]
		mov	thread.bar.visible, 1
		mov	thread.bar._name, edx
		lea	ecx, [ebx+1026h]
		mov	thread.bar.expl, ecx
		mov	thread.bar.mode, 2
		lea	eax, [ebx+1084h]
		mov	thread.bar.defdx, 6
		lea	edx, [ebx+1090h]
		mov	thread.bar._name+4, eax
		mov	thread.bar.expl+4, edx
		mov	thread.bar.mode+4, 2
		lea	ecx, [ebx+1114h]
		mov	thread.bar.defdx+4, 9
		mov	thread.bar._name+8, ecx
		lea	eax, [ebx+1132h]
		xor	edx, edx
		mov	thread.bar.expl+8, eax
		mov	thread.bar.mode+8, edx
		lea	ecx, [ebx+119Eh]
		mov	thread.bar.defdx+8, 12h
		mov	thread.bar._name+0Ch, ecx
		lea	eax, [ebx+11B4h]
		xor	edx, edx
		mov	thread.bar.expl+0Ch, eax
		mov	thread.bar.mode+0Ch, edx
		lea	ecx, [ebx+1208h]
		mov	thread.bar.defdx+0Ch, 12h
		mov	thread.bar._name+10h, ecx
		lea	eax, [ebx+1214h]
		mov	thread.bar.expl+10h, eax
		mov	thread.bar.mode+10h, 2
		lea	edx, [ebx+0D6Ch]
		mov	thread.bar.defdx+10h, 9
		lea	ecx, [ebx+1254h]
		mov	thread.bar._name+14h, edx
		mov	thread.bar.expl+14h, ecx
		mov	thread.bar.mode+14h, 2
		lea	eax, [ebx+0EA2h]
		mov	thread.bar.defdx+14h, 9
		mov	thread.bar._name+18h, eax
		lea	edx, [ebx+129Ch]
		xor	ecx, ecx
		mov	thread.bar.expl+18h, edx
		mov	thread.bar.mode+18h, ecx
		lea	eax, [ebx+12D4h]
		mov	thread.bar.defdx+18h, 9
		mov	thread.bar._name+1Ch, eax
		lea	edx, [ebx+12E6h]
		xor	ecx, ecx
		mov	thread.bar.expl+1Ch, edx
		mov	thread.bar.mode+1Ch, ecx
		lea	eax, [ebx+1372h]
		mov	thread.bar.defdx+1Ch, 0Ch
		lea	edx, [ebx+1386h]
		mov	thread.bar._name+20h, eax
		mov	thread.bar.expl+20h, edx
		mov	thread.bar.mode+20h, 2
		lea	ecx, [ebx+13D2h]
		mov	thread.bar.defdx+20h, 0Ch
		lea	eax, [ebx+13EAh]
		mov	thread.bar._name+24h, ecx
		mov	thread.bar.expl+24h, eax
		mov	thread.bar.mode+24h, 2
		mov	thread.bar.defdx+24h, 0Ch
		xor	edx, edx
		mov	thread.tabfunc,	offset loc_45C2E8
		xor	ecx, ecx
		mov	thread.custommode, edx
		mov	thread.customdata, ecx
		add	esp, 8
		mov	thread.updatefunc, offset loc_45BC5C
		xor	eax, eax
		mov	thread.drawfunc, offset	loc_45BE6C
		mov	thread.tableselfunc, eax
		mov	thread.menu, offset stru_53867C

loc_45C55F:				; CODE XREF: .text:0045C340j
		cmp	thread.hw, 0
		jnz	short loc_45C59B
		lea	edx, [ebx+100Eh]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; _title
		lea	ecx, [ebx+143Ah]
		push	ecx		; icon
		mov	eax, g_hInstance
		push	eax		; hi
		mov	edx, thread.bar.nbar
		push	edx		; ncolumn
		push	0		; nrow
		push	offset thread	; pt
		call	Createtablewindow
		add	esp, 18h
		jmp	short loc_45C5AB
; ---------------------------------------------------------------------------

loc_45C59B:				; CODE XREF: .text:0045C566j
		push	0		; bErase
		push	0		; lpRect
		mov	ecx, thread.hw
		push	ecx		; hWnd
		call	InvalidateRect

loc_45C5AB:				; CODE XREF: .text:0045C599j
		cmp	thread.hparent,	0
		jz	short loc_45C600
		cmp	dword ptr [ebp+8], 0
		jz	short loc_45C600
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_45C5D7
		push	0		; lParam
		mov	edx, thread.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_45C5D7:				; CODE XREF: .text:0045C5C1j
		mov	ecx, thread.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_45C5F4
		push	9		; nCmdShow
		mov	eax, thread.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_45C5F4:				; CODE XREF: .text:0045C5E5j
		mov	edx, thread.hw
		push	edx		; hWnd
		call	SetFocus

loc_45C600:				; CODE XREF: .text:0045C5B2j
					; .text:0045C5B8j
		mov	eax, thread.hw
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45C608:				; CODE XREF: .text:0046F091p
					; .text:0046F0ACp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+0Ch]
		mov	eax, [ebp+8]
		add	eax, 0Ch
		push	eax
		push	offset aAnalysingSPres ; "Analysing %s - $ - press SPACE to inter"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset word_5E5DA4 ; buffer
		call	_swprintf
		add	esp, 0Ch
		test	ebx, ebx
		jle	short loc_45C64F
		mov	edx, dword_5E5FAC[ebx*4]
		mov	promille, edx
		mov	ecx, dword_5E5FB0[ebx*4]
		mov	dword_5E5FA8, ecx
		jmp	short loc_45C65B
; ---------------------------------------------------------------------------

loc_45C64F:				; CODE XREF: .text:0045C631j
		xor	eax, eax
		mov	dword_5E5FA8, eax
		mov	promille, eax

loc_45C65B:				; CODE XREF: .text:0045C64Dj
		push	offset word_5E5DA4 ; arglist
		push	offset aS_10	; "%s"
		mov	edx, promille
		push	edx		; promille
		call	Progress
		add	esp, 0Ch
		call	GetTickCount
		mov	dword_5E5FAC, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
