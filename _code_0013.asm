.code

; Exported entry  46. _Readfile
; Exported entry 682. Readfile

; void *__cdecl	Readfile(wchar_t *path,	ulong fixsize, ulong *psize)
		public Readfile
Readfile:				; CODE XREF: .text:00482B6Ep
					; .text:004B10C6p ...
		push	ebp		; _Readfile
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+14h], 0
		mov	eax, [ebp+8]
		jz	short loc_407211
		mov	edx, [ebp+14h]
		xor	ecx, ecx
		mov	[edx], ecx

loc_407211:				; CODE XREF: .text:00407208j
		test	eax, eax
		jz	short loc_40721B
		cmp	word ptr [eax],	0
		jnz	short loc_407222

loc_40721B:				; CODE XREF: .text:00407213j
		xor	eax, eax
		jmp	loc_407334
; ---------------------------------------------------------------------------

loc_407222:				; CODE XREF: .text:00407219j
		push	offset aRb_2	; mode
		push	eax		; path
		call	__wfopen
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_40723D
		xor	eax, eax
		jmp	loc_407334
; ---------------------------------------------------------------------------

loc_40723D:				; CODE XREF: .text:00407234j
		push	2		; whence
		push	0		; offset
		push	ebx		; stream
		call	_fseek
		add	esp, 0Ch
		push	ebx		; stream
		call	_ftell
		pop	ecx
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0FFFFFFFFh
		jz	short loc_407260
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_40726E

loc_407260:				; CODE XREF: .text:00407258j
		push	ebx		; stream
		call	_fclose
		pop	ecx
		xor	eax, eax
		jmp	loc_407334
; ---------------------------------------------------------------------------

loc_40726E:				; CODE XREF: .text:0040725Ej
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_40727C
		mov	edx, [ebp+14h]
		mov	ecx, [ebp-4]	; int
		mov	[edx], ecx

loc_40727C:				; CODE XREF: .text:00407272j
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_407288
		mov	eax, [ebp-4]	; int
		mov	[ebp+0Ch], eax

loc_407288:				; CODE XREF: .text:00407280j
		push	1		; flags
		mov	edx, [ebp+0Ch]
		add	edx, [ebp+10h]	; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4072AD
		push	ebx		; stream
		call	_fclose
		pop	ecx
		xor	eax, eax
		jmp	loc_407334
; ---------------------------------------------------------------------------

loc_4072AD:				; CODE XREF: .text:0040729Dj
		push	0		; whence
		push	0		; offset
		push	ebx		; stream
		call	_fseek
		add	esp, 0Ch
		mov	edx, [ebp-4]
		cmp	edx, [ebp+0Ch]
		jnb	short loc_4072C7
		lea	ecx, [ebp-4]
		jmp	short loc_4072CA
; ---------------------------------------------------------------------------

loc_4072C7:				; CODE XREF: .text:004072C0j
		lea	ecx, [ebp+0Ch]

loc_4072CA:				; CODE XREF: .text:004072C5j
		mov	edi, [ecx]
		push	ebx		; stream
		push	edi		; n
		push	1		; size
		push	esi		; ptr
		call	_fread
		add	esp, 10h
		mov	[ebp-8], eax
		push	ebx		; stream
		call	_fclose
		pop	ecx
		cmp	edi, [ebp-8]
		jz	short loc_407300
		push	esi		; data
		call	Memfree
		cmp	dword ptr [ebp+14h], 0
		pop	ecx
		jz	short loc_4072FC
		mov	eax, [ebp+14h]
		xor	edx, edx
		mov	[eax], edx

loc_4072FC:				; CODE XREF: .text:004072F3j
		xor	eax, eax
		jmp	short loc_407334
; ---------------------------------------------------------------------------

loc_407300:				; CODE XREF: .text:004072E6j
		cmp	edi, [ebp+0Ch]
		jnb	short loc_407318
		mov	edx, [ebp+0Ch]
		sub	edx, edi
		add	edi, esi
		push	edx		; n
		push	0		; c
		push	edi		; s
		call	_memset
		add	esp, 0Ch

loc_407318:				; CODE XREF: .text:00407303j
		cmp	dword ptr [ebp+10h], 0
		jbe	short loc_407332
		mov	ecx, [ebp+10h]
		push	ecx		; n
		push	0		; c
		mov	eax, [ebp+0Ch]
		add	eax, esi
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_407332:				; CODE XREF: .text:0040731Cj
		mov	eax, esi

loc_407334:				; CODE XREF: .text:0040721Dj
					; .text:00407238j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  47. _Devicenametodosname
; Exported entry 478. Devicenametodosname

; int __cdecl Devicenametodosname(wchar_t *devname, wchar_t *dosname)
		public Devicenametodosname
Devicenametodosname:			; CODE XREF: .text:00407492p
					; .text:0045AC6Dp
		push	ebp		; _Devicenametodosname
		mov	ebp, esp
		add	esp, 0FFFFFDECh
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		test	edi, edi
		jz	short loc_407355
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_40735C

loc_407355:				; CODE XREF: .text:0040734Dj
		xor	eax, eax
		jmp	loc_40740D
; ---------------------------------------------------------------------------

loc_40735C:				; CODE XREF: .text:00407353j
		push	edi		; s
		call	_wcslen
		pop	ecx
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 3
		jge	short loc_407373
		xor	eax, eax
		jmp	loc_40740D
; ---------------------------------------------------------------------------

loc_407373:				; CODE XREF: .text:0040736Aj
		mov	word ptr [ebp-0Ah], 3Ah
		mov	word ptr [ebp-8], 0
		mov	bx, 41h

loc_407383:				; CODE XREF: .text:00407405j
		mov	[ebp-0Ch], bx
		push	104h		; ucchMax
		lea	eax, [ebp-214h]
		push	eax		; lpTargetPath
		lea	edx, [ebp-0Ch]
		push	edx		; lpDeviceName
		call	QueryDosDeviceW
		test	eax, eax
		jz	short loc_407400
		lea	ecx, [ebp-214h]
		push	ecx		; s
		call	_wcslen
		pop	ecx
		mov	esi, eax
		cmp	esi, 3
		jl	short loc_407400
		push	esi		; maxlen
		lea	eax, [ebp-214h]
		push	eax		; s2
		push	edi		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_407400
		lea	edx, [ebp-0Ch]
		push	edx		; src
		push	104h		; n
		mov	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edi, [edi+esi*2]
		push	edi		; src
		push	102h		; n
		mov	eax, [ebp+0Ch]
		add	eax, 4
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, [ebp-4]
		sub	eax, esi
		add	eax, 2
		jmp	short loc_40740D
; ---------------------------------------------------------------------------

loc_407400:				; CODE XREF: .text:0040739Ej
					; .text:004073B2j ...
		inc	ebx
		cmp	bx, 5Ah
		jbe	loc_407383
		xor	eax, eax

loc_40740D:				; CODE XREF: .text:00407357j
					; .text:0040736Ej ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  48. _Filenamefromhandle
; Exported entry 496. Filenamefromhandle

; int __cdecl Filenamefromhandle(HANDLE	hfile, wchar_t *path)
		public Filenamefromhandle
Filenamefromhandle:			; CODE XREF: .text:0045679Dp
					; .text:00456F25p
		push	ebp		; _Filenamefromhandle
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	eax, [ebp+8]
		cmp	eax, 0FFFFFFFFh
		jz	short loc_40742A
		test	esi, esi
		jnz	short loc_407431

loc_40742A:				; CODE XREF: .text:00407424j
		xor	eax, eax
		jmp	loc_4074BD
; ---------------------------------------------------------------------------

loc_407431:				; CODE XREF: .text:00407428j
		cmp	_imp__GetMappedFileNameW, 0
		jnz	short loc_407443
		mov	word ptr [esi],	0
		xor	eax, eax
		jmp	short loc_4074BD
; ---------------------------------------------------------------------------

loc_407443:				; CODE XREF: .text:00407438j
		xor	ebx, ebx
		xor	edi, edi
		push	0		; lpName
		push	1		; dwMaximumSizeLow
		push	0		; dwMaximumSizeHigh
		push	2		; flProtect
		push	0		; lpFileMappingAttributes
		push	eax		; hFile
		call	CreateFileMappingW
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	short loc_40749C
		push	1		; dwNumberOfBytesToMap
		push	0		; dwFileOffsetLow
		push	0		; dwFileOffsetHigh
		push	4		; dwDesiredAccess
		mov	eax, [ebp-4]
		push	eax		; hFileMappingObject
		call	MapViewOfFile
		mov	edi, eax
		test	edi, edi
		jz	short loc_40749C
		push	104h		; _DWORD
		push	esi		; _DWORD
		push	edi		; _DWORD
		call	GetCurrentProcess
		push	eax		; _DWORD
		call	_imp__GetMappedFileNameW
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_40749C
		push	esi		; dosname
		push	esi		; devname
		call	Devicenametodosname
		add	esp, 8
		mov	ebx, eax

loc_40749C:				; CODE XREF: .text:0040745Ej
					; .text:00407475j ...
		test	edi, edi
		jz	short loc_4074A6
		push	edi		; lpBaseAddress
		call	UnmapViewOfFile

loc_4074A6:				; CODE XREF: .text:0040749Ej
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4074B5
		mov	eax, [ebp-4]
		push	eax		; hObject
		call	CloseHandle

loc_4074B5:				; CODE XREF: .text:004074AAj
		mov	word ptr [esi+ebx*2], 0
		mov	eax, ebx

loc_4074BD:				; CODE XREF: .text:0040742Cj
					; .text:00407441j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  49. _Quicktimerstart
; Exported entry 681. Quicktimerstart

; void __cdecl Quicktimerstart(int timer)
		public Quicktimerstart
Quicktimerstart:			; CODE XREF: .text:00407571p
		push	ebp		; _Quicktimerstart
		mov	ebp, esp
		push	ebx
		cmp	_ProcessAffinityMask, 1
		mov	ebx, [ebp+8]
		jz	short loc_407500
		cmp	_imp__SetProcessAffinityMask, 0
		jz	short loc_407500
		mov	_ProcessAffinityMask, 1
		mov	eax, _ProcessAffinityMask
		push	eax		; _DWORD
		call	GetCurrentProcess
		push	eax		; _DWORD
		call	_imp__SetProcessAffinityMask
		push	0		; dwMilliseconds
		call	Sleep

loc_407500:				; CODE XREF: .text:004074D2j
					; .text:004074DBj
		test	ebx, ebx
		jl	short loc_407525
		cmp	ebx, 8
		jge	short loc_407525
		mov	edx, ebx
		shl	edx, 3
		add	edx, (offset g_timer+40h)
		push	edx		; lpPerformanceCount
		call	QueryPerformanceCounter
		mov	dword ptr (g_timer+0A0h)[ebx*4], 1

loc_407525:				; CODE XREF: .text:00407502j
					; .text:00407507j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  50. _Quicktimerstop
; Exported entry 683. Quicktimerstop

; unsigned __int64 __cdecl Quicktimerstop(int timer)
		public Quicktimerstop
Quicktimerstop:				; _Quicktimerstop
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jl	short loc_4075A9
		cmp	ebx, 8
		jge	short loc_4075A9
		cmp	dword ptr (g_timer+0A0h)[ebx*4], 0
		jz	short loc_4075A9
		lea	eax, [ebp-8]
		push	eax		; lpPerformanceCount
		call	QueryPerformanceCounter
		mov	eax, [ebp-8]
		mov	edx, [ebp-4]
		sub	eax, dword ptr (g_timer+40h)[ebx*8]
		sbb	edx, dword ptr (g_timer+44h)[ebx*8]
		add	dword ptr g_timer[ebx*8], eax
		adc	dword ptr (g_timer+4)[ebx*8], edx
		push	ebx		; timer
		call	Quicktimerstart
		pop	ecx
		inc	dword ptr (g_timer+80h)[ebx*4]
		lea	ecx, [ebp-8]
		push	ecx		; lpPerformanceCount
		call	QueryPerformanceCounter
		mov	eax, [ebp-8]
		mov	edx, [ebp-4]
		sub	eax, dword ptr (g_timer+40h)[ebx*8]
		sbb	edx, dword ptr (g_timer+44h)[ebx*8]
		sub	dword ptr g_timer[ebx*8], eax
		sbb	dword ptr (g_timer+4)[ebx*8], edx

loc_4075A9:				; CODE XREF: .text:00407534j
					; .text:00407539j ...
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  51. _Quicktimerflush
; Exported entry 680. Quicktimerflush

; void __cdecl Quicktimerflush(int timer)
		public Quicktimerflush
Quicktimerflush:			; _Quicktimerflush
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE4h
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jl	loc_40768D
		cmp	ebx, 8
		jge	loc_40768D
		cmp	dword ptr (g_timer+0A0h)[ebx*4], 0
		jz	loc_40768D
		lea	eax, [ebp-8]
		push	eax		; lpFrequency
		call	QueryPerformanceFrequency
		fild	qword ptr g_timer[ebx*8]
		fild	qword ptr [ebp-8]
		fdivp	st(1), st
		fstp	qword ptr [ebp-10h]
		fld	qword ptr [ebp-10h]
		fcomp	ds:flt_407694
		fnstsw	ax
		sahf
		jnb	short loc_407607
		xor	edx, edx
		mov	[ebp-10h], edx
		mov	[ebp-0Ch], edx

loc_407607:				; CODE XREF: .text:004075FDj
		mov	ecx, dword ptr (g_timer+80h)[ebx*4]
		test	ecx, ecx
		jnz	short loc_40761C
		xor	eax, eax
		mov	[ebp-18h], eax
		mov	[ebp-14h], eax
		jmp	short loc_407639
; ---------------------------------------------------------------------------

loc_40761C:				; CODE XREF: .text:00407610j
		fild	qword ptr g_timer[ebx*8]
		fmul	ds:flt_407698
		fild	qword ptr [ebp-8]
		mov	[ebp-1Ch], ecx
		fdivp	st(1), st
		fild	dword ptr [ebp-1Ch]
		fdivp	st(1), st
		fstp	qword ptr [ebp-18h]

loc_407639:				; CODE XREF: .text:0040761Aj
		push	dword ptr [ebp-14h]
		push	dword ptr [ebp-18h]
		mov	ecx, dword ptr (g_timer+80h)[ebx*4]
		push	ecx
		push	dword ptr [ebp-0Ch]
		push	dword ptr [ebp-10h]
		push	ebx		; arglist
		push	offset aTimerI_3lfS7iC ; "Timer	%i: %.3lf s, %7i calls (%.3lf us/"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	ebx		; _addr
		call	Addtolist
		add	esp, 24h
		mov	dword ptr g_timer[ebx*8], 0
		mov	dword ptr (g_timer+4)[ebx*8], 0
		xor	edx, edx
		mov	dword ptr (g_timer+80h)[ebx*4],	edx
		xor	ecx, ecx
		mov	dword ptr (g_timer+0A0h)[ebx*4], ecx

loc_40768D:				; CODE XREF: .text:004075BCj
					; .text:004075C5j ...
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
flt_407694	dd 0.0			; DATA XREF: .text:004075F4r
flt_407698	dd 1000000.0		; DATA XREF: .text:00407623r
; ---------------------------------------------------------------------------

loc_40769C:				; DATA XREF: .data:004FA7F4o
					; .data:004FA828o ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	ebx, [eax+4]
		mov	[eax], ebx
		mov	[ecx+16Eh], ebx
		mov	eax, [edx+4]
		mov	[edx], eax
		mov	[ecx+172h], eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4076C4:				; DATA XREF: .data:004FCEC0o
					; .data:004FCF28o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ecx, [ebp+8]
		mov	eax, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		mov	edx, [ebp+14h]
		mov	esi, [ecx+4]
		test	edx, edx
		mov	[ecx], esi
		mov	[eax+16Eh], esi
		mov	ecx, [ebx+4]
		mov	[ebx], ecx
		mov	[eax+172h], ecx
		jz	short loc_407709
		cmp	dword ptr [edx+4B8h], 4
		jnz	short loc_407709
		mov	ecx, [eax+26h]
		and	ecx, 30h
		cmp	ecx, 20h
		jnz	short loc_407709
		add	dword ptr [eax+46h], 4
		jmp	short loc_407713
; ---------------------------------------------------------------------------

loc_407709:				; CODE XREF: .text:004076EDj
					; .text:004076F6j ...
		xor	ecx, ecx
		mov	[eax+26h], ecx
		xor	ecx, ecx
		mov	[eax+46h], ecx

loc_407713:				; CODE XREF: .text:00407707j
		test	edx, edx
		jz	short loc_40772E
		cmp	dword ptr [edx+58h], 4
		jnz	short loc_40772E
		mov	edx, [eax+2Ah]
		and	edx, 30h
		cmp	edx, 20h
		jnz	short loc_40772E
		add	dword ptr [eax+4Ah], 4
		jmp	short loc_407738
; ---------------------------------------------------------------------------

loc_40772E:				; CODE XREF: .text:00407715j
					; .text:0040771Bj ...
		xor	edx, edx
		xor	ecx, ecx
		mov	[eax+2Ah], edx
		mov	[eax+4Ah], ecx

loc_407738:				; CODE XREF: .text:0040772Cj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_40773C:				; DATA XREF: .data:004FC8DCo
					; .data:004FC910o ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		mov	ecx, [eax]
		mov	ebx, [eax+4]
		mov	[eax], ebx
		mov	[eax+4], ecx
		mov	ecx, [edx]
		mov	eax, [edx+4]
		mov	[edx], eax
		mov	[edx+4], ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_407760:				; DATA XREF: .data:004FA348o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	ebx, [eax+4]
		and	ebx, 30h
		cmp	ebx, 30h
		jz	short loc_40777F
		xor	edx, edx
		mov	[eax], edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_40777F:				; CODE XREF: .text:00407776j
		mov	ebx, [eax+4]
		and	ebx, 0FFFFFFEFh
		mov	[eax], ebx
		mov	[ecx+16Eh], ebx
		mov	eax, [edx+4]
		mov	[edx], eax
		mov	[ecx+172h], eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_40779C:				; DATA XREF: .data:004F7E1Co
					; .data:004F7E50o ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+8]
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		test	byte ptr [eax],	20h
		jz	short loc_4077B5
		test	byte ptr [eax+4], 20h
		jnz	short loc_4077BB

loc_4077B5:				; CODE XREF: .text:004077ADj
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	short loc_40782D
; ---------------------------------------------------------------------------

loc_4077BB:				; CODE XREF: .text:004077B3j
		cmp	dword ptr [eax+4], 20h
		jnz	short loc_4077C7
		cmp	dword ptr [edx+4], 0
		jz	short loc_40782D

loc_4077C7:				; CODE XREF: .text:004077BFj
		cmp	dword ptr [eax], 20h
		jnz	short loc_4077DD
		cmp	dword ptr [edx], 0
		jnz	short loc_4077DD
		mov	ebx, [eax+4]
		mov	[eax], ebx
		mov	ebx, [edx+4]
		mov	[edx], ebx
		jmp	short loc_40782D
; ---------------------------------------------------------------------------

loc_4077DD:				; CODE XREF: .text:004077CAj
					; .text:004077CFj
		test	byte ptr [eax],	10h
		jnz	short loc_4077E8
		test	byte ptr [eax+4], 10h
		jz	short loc_4077EE

loc_4077E8:				; CODE XREF: .text:004077E0j
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	short loc_40782D
; ---------------------------------------------------------------------------

loc_4077EE:				; CODE XREF: .text:004077E6j
		test	byte ptr [eax+1], 2
		jnz	short loc_4077FA
		test	byte ptr [eax+5], 2
		jz	short loc_407800

loc_4077FA:				; CODE XREF: .text:004077F2j
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	short loc_40782D
; ---------------------------------------------------------------------------

loc_407800:				; CODE XREF: .text:004077F8j
		test	byte ptr [eax],	8
		jz	short loc_407811
		test	byte ptr [eax+4], 8
		jz	short loc_407811
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	short loc_40782D
; ---------------------------------------------------------------------------

loc_407811:				; CODE XREF: .text:00407803j
					; .text:00407809j
		mov	ebx, [eax+4]
		mov	esi, ebx
		and	esi, 80h
		xor	esi, [eax]
		and	ebx, 0FFFFFC0Fh
		or	esi, ebx
		mov	[eax], esi
		mov	ebx, [edx+4]
		add	[edx], ebx

loc_40782D:				; CODE XREF: .text:004077B9j
					; .text:004077C5j ...
		mov	eax, [eax]
		mov	[ecx+16Eh], eax
		mov	edx, [edx]
		mov	[ecx+172h], edx
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_407844:				; DATA XREF: .data:004FC500o
					; .data:004FC534o ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	edx, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	ecx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	edx, edx
		jz	short loc_407882
		test	byte ptr [edx+4Ch], 1
		jz	short loc_407882
		test	byte ptr [edx+4ACh], 1
		jz	short loc_407882
		mov	esi, [edx+60h]
		cmp	esi, [edx+4C0h]
		jnz	short loc_407882
		mov	dword ptr [eax], 20h
		xor	edx, edx
		mov	[ecx], edx
		jmp	loc_40790D
; ---------------------------------------------------------------------------

loc_407882:				; CODE XREF: .text:00407857j
					; .text:0040785Dj ...
		test	byte ptr [eax],	20h
		jz	short loc_40788D
		test	byte ptr [eax+4], 20h
		jnz	short loc_407893

loc_40788D:				; CODE XREF: .text:00407885j
		xor	edx, edx
		mov	[eax], edx
		jmp	short loc_40790D
; ---------------------------------------------------------------------------

loc_407893:				; CODE XREF: .text:0040788Bj
		cmp	dword ptr [eax+4], 20h
		jnz	short loc_40789F
		cmp	dword ptr [ecx+4], 0
		jz	short loc_40790D

loc_40789F:				; CODE XREF: .text:00407897j
		test	byte ptr [eax],	10h
		jnz	short loc_4078AA
		test	byte ptr [eax+4], 10h
		jz	short loc_4078B0

loc_4078AA:				; CODE XREF: .text:004078A2j
		xor	edx, edx
		mov	[eax], edx
		jmp	short loc_40790D
; ---------------------------------------------------------------------------

loc_4078B0:				; CODE XREF: .text:004078A8j
		test	byte ptr [eax+1], 2
		jnz	short loc_4078BC
		test	byte ptr [eax+5], 2
		jz	short loc_4078C2

loc_4078BC:				; CODE XREF: .text:004078B4j
		xor	edx, edx
		mov	[eax], edx
		jmp	short loc_40790D
; ---------------------------------------------------------------------------

loc_4078C2:				; CODE XREF: .text:004078BAj
		test	byte ptr [eax+4], 8
		jz	short loc_4078FD
		test	byte ptr [eax],	8
		jnz	short loc_4078D3
		xor	edx, edx
		mov	[eax], edx
		jmp	short loc_40790D
; ---------------------------------------------------------------------------

loc_4078D3:				; CODE XREF: .text:004078CBj
		mov	edx, [eax]
		xor	edx, [eax+4]
		test	edx, 0FFFFFC07h
		jz	short loc_4078E6
		xor	edx, edx
		mov	[eax], edx
		jmp	short loc_40790D
; ---------------------------------------------------------------------------

loc_4078E6:				; CODE XREF: .text:004078DEj
		mov	edx, [ecx+4]
		sub	[ecx], edx
		mov	edx, [eax]
		xor	edx, [eax+4]
		and	edx, 80h
		or	edx, 20h
		mov	[eax], edx
		jmp	short loc_40790D
; ---------------------------------------------------------------------------

loc_4078FD:				; CODE XREF: .text:004078C6j
		mov	edx, [eax+4]
		and	edx, 80h
		xor	[eax], edx
		mov	edx, [ecx+4]
		sub	[ecx], edx

loc_40790D:				; CODE XREF: .text:0040787Dj
					; .text:00407891j ...
		mov	eax, [eax]
		mov	[ebx+16Eh], eax
		mov	ecx, [ecx]
		mov	[ebx+172h], ecx
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_407924:				; DATA XREF: .data:004F7F20o
					; .data:004F7F54o ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		cmp	dword ptr [eax], 20h
		jnz	short loc_40793B
		cmp	dword ptr [edx], 0
		jz	short loc_4079B9

loc_40793B:				; CODE XREF: .text:00407934j
		cmp	dword ptr [eax+4], 20h
		jnz	short loc_407953
		cmp	dword ptr [edx+4], 0
		jnz	short loc_407953
		mov	dword ptr [eax], 20h
		xor	ebx, ebx
		mov	[edx], ebx
		jmp	short loc_4079B9
; ---------------------------------------------------------------------------

loc_407953:				; CODE XREF: .text:0040793Fj
					; .text:00407945j
		cmp	dword ptr [eax], 20h
		jnz	short loc_407969
		cmp	dword ptr [edx], 0FFFFFFFFh
		jnz	short loc_407969
		mov	ebx, [eax+4]
		mov	[eax], ebx
		mov	ebx, [edx+4]
		mov	[edx], ebx
		jmp	short loc_4079B9
; ---------------------------------------------------------------------------

loc_407969:				; CODE XREF: .text:00407956j
					; .text:0040795Bj
		cmp	dword ptr [eax+4], 20h
		jnz	short loc_407975
		cmp	dword ptr [edx+4], 0FFFFFFFFh
		jz	short loc_4079B9

loc_407975:				; CODE XREF: .text:0040796Dj
		mov	ebx, [eax]
		cmp	ebx, [eax+4]
		jnz	short loc_407983
		mov	ebx, [edx]
		cmp	ebx, [edx+4]
		jz	short loc_4079B9

loc_407983:				; CODE XREF: .text:0040797Aj
		mov	ebx, [eax]
		and	ebx, 0FFFFFF7Fh
		cmp	ebx, 20h
		jnz	short loc_40799E
		mov	ebx, [eax+4]
		and	ebx, 0FFFFFF7Fh
		cmp	ebx, 20h
		jz	short loc_4079A4

loc_40799E:				; CODE XREF: .text:0040798Ej
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	short loc_4079B9
; ---------------------------------------------------------------------------

loc_4079A4:				; CODE XREF: .text:0040799Cj
		mov	ebx, [eax]
		or	ebx, [eax+4]
		and	ebx, 80h
		or	ebx, 20h
		mov	[eax], ebx
		mov	ebx, [edx+4]
		and	[edx], ebx

loc_4079B9:				; CODE XREF: .text:00407939j
					; .text:00407951j ...
		mov	eax, [eax]
		mov	[ecx+16Eh], eax
		mov	edx, [edx]
		mov	[ecx+172h], edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4079CC:				; DATA XREF: .data:004FACA0o
					; .data:004FACD4o ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		cmp	dword ptr [eax], 20h
		jnz	short loc_4079E7
		cmp	dword ptr [edx], 0FFFFFFFFh
		jz	loc_407A67

loc_4079E7:				; CODE XREF: .text:004079DCj
		cmp	dword ptr [eax+4], 20h
		jnz	short loc_407A01
		cmp	dword ptr [edx+4], 0FFFFFFFFh
		jnz	short loc_407A01
		mov	dword ptr [eax], 20h
		mov	dword ptr [edx], 0FFFFFFFFh
		jmp	short loc_407A67
; ---------------------------------------------------------------------------

loc_407A01:				; CODE XREF: .text:004079EBj
					; .text:004079F1j
		cmp	dword ptr [eax], 20h
		jnz	short loc_407A17
		cmp	dword ptr [edx], 0
		jnz	short loc_407A17
		mov	ebx, [eax+4]
		mov	[eax], ebx
		mov	ebx, [edx+4]
		mov	[edx], ebx
		jmp	short loc_407A67
; ---------------------------------------------------------------------------

loc_407A17:				; CODE XREF: .text:00407A04j
					; .text:00407A09j
		cmp	dword ptr [eax+4], 20h
		jnz	short loc_407A23
		cmp	dword ptr [edx+4], 0
		jz	short loc_407A67

loc_407A23:				; CODE XREF: .text:00407A1Bj
		mov	ebx, [eax]
		cmp	ebx, [eax+4]
		jnz	short loc_407A31
		mov	ebx, [edx]
		cmp	ebx, [edx+4]
		jz	short loc_407A67

loc_407A31:				; CODE XREF: .text:00407A28j
		mov	ebx, [eax]
		and	ebx, 0FFFFFF7Fh
		cmp	ebx, 20h
		jnz	short loc_407A4C
		mov	ebx, [eax+4]
		and	ebx, 0FFFFFF7Fh
		cmp	ebx, 20h
		jz	short loc_407A52

loc_407A4C:				; CODE XREF: .text:00407A3Cj
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	short loc_407A67
; ---------------------------------------------------------------------------

loc_407A52:				; CODE XREF: .text:00407A4Aj
		mov	ebx, [eax]
		or	ebx, [eax+4]
		and	ebx, 80h
		or	ebx, 20h
		mov	[eax], ebx
		mov	ebx, [edx+4]
		or	[edx], ebx

loc_407A67:				; CODE XREF: .text:004079E1j
					; .text:004079FFj ...
		mov	eax, [eax]
		mov	[ecx+16Eh], eax
		mov	edx, [edx]
		mov	[ecx+172h], edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_407A7C:				; DATA XREF: .data:004FCA14o
					; .data:004FCA48o ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+8]
		mov	ecx, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		cmp	dword ptr [eax], 20h
		jnz	short loc_407AA6
		cmp	dword ptr [edx], 0
		jnz	short loc_407AA6
		mov	ecx, [eax+4]
		mov	[eax], ecx
		mov	ecx, [edx+4]
		mov	[edx], ecx
		jmp	loc_407B31
; ---------------------------------------------------------------------------

loc_407AA6:				; CODE XREF: .text:00407A90j
					; .text:00407A95j
		cmp	dword ptr [eax+4], 20h
		jnz	short loc_407AB2
		cmp	dword ptr [edx+4], 0
		jz	short loc_407B31

loc_407AB2:				; CODE XREF: .text:00407AAAj
		test	ecx, ecx
		jz	short loc_407ADC
		test	byte ptr [ecx+4Ch], 1
		jz	short loc_407ADC
		test	byte ptr [ecx+4ACh], 1
		jz	short loc_407ADC
		mov	esi, [ecx+60h]
		cmp	esi, [ecx+4C0h]
		jnz	short loc_407ADC
		mov	dword ptr [eax], 20h
		xor	ecx, ecx
		mov	[edx], ecx
		jmp	short loc_407B31
; ---------------------------------------------------------------------------

loc_407ADC:				; CODE XREF: .text:00407AB4j
					; .text:00407ABAj ...
		mov	ecx, [eax]
		test	cl, 20h
		jz	short loc_407AFB
		cmp	ecx, [eax+4]
		jnz	short loc_407AFB
		mov	ecx, [edx]
		cmp	ecx, [edx+4]
		jnz	short loc_407AFB
		mov	dword ptr [eax], 20h
		xor	ecx, ecx
		mov	[edx], ecx
		jmp	short loc_407B31
; ---------------------------------------------------------------------------

loc_407AFB:				; CODE XREF: .text:00407AE1j
					; .text:00407AE6j ...
		mov	ecx, [eax]
		and	ecx, 0FFFFFF7Fh
		cmp	ecx, 20h
		jnz	short loc_407B16
		mov	ecx, [eax+4]
		and	ecx, 0FFFFFF7Fh
		cmp	ecx, 20h
		jz	short loc_407B1C

loc_407B16:				; CODE XREF: .text:00407B06j
		xor	ecx, ecx
		mov	[eax], ecx
		jmp	short loc_407B31
; ---------------------------------------------------------------------------

loc_407B1C:				; CODE XREF: .text:00407B14j
		mov	ecx, [eax]
		or	ecx, [eax+4]
		and	ecx, 80h
		or	ecx, 20h
		mov	[eax], ecx
		mov	ecx, [edx+4]
		xor	[edx], ecx

loc_407B31:				; CODE XREF: .text:00407AA1j
					; .text:00407AB0j ...
		mov	eax, [eax]
		mov	[ebx+16Eh], eax
		mov	edx, [edx]
		mov	[ebx+172h], edx
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_407B48:				; DATA XREF: .data:004F9134o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ecx, [ebp+10h]
		mov	eax, [ebp+0Ch]
		mov	edx, [ebp+8]
		cmp	dword ptr [edx], 20h
		jnz	short loc_407B60
		cmp	dword ptr [edx+4], 20h
		jz	short loc_407B66

loc_407B60:				; CODE XREF: .text:00407B58j
		xor	ebx, ebx
		mov	[edx], ebx
		jmp	short loc_407B6E
; ---------------------------------------------------------------------------

loc_407B66:				; CODE XREF: .text:00407B5Ej
		mov	ebx, [eax]
		imul	ebx, [eax+4]
		mov	[eax], ebx

loc_407B6E:				; CODE XREF: .text:00407B64j
		mov	edx, [edx]
		mov	[ecx+16Eh], edx
		mov	eax, [eax]
		mov	[ecx+172h], eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_407B84:				; DATA XREF: .data:004F9168o
					; .data:004F919Co
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		cmp	dword ptr [eax+4], 20h
		jnz	short loc_407B9D
		cmp	dword ptr [eax+8], 20h
		jz	short loc_407BA3

loc_407B9D:				; CODE XREF: .text:00407B95j
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	short loc_407BB2
; ---------------------------------------------------------------------------

loc_407BA3:				; CODE XREF: .text:00407B9Bj
		mov	dword ptr [eax], 20h
		mov	ebx, [edx+4]
		imul	ebx, [edx+8]
		mov	[edx], ebx

loc_407BB2:				; CODE XREF: .text:00407BA1j
		mov	eax, [eax]
		mov	[ecx+16Eh], eax
		mov	edx, [edx]
		mov	[ecx+172h], edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_407BC8:				; DATA XREF: .data:004F9238o
					; .data:004F926Co
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		test	byte ptr [eax],	20h
		jnz	short loc_407BE0
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	short loc_407BF0
; ---------------------------------------------------------------------------

loc_407BE0:				; CODE XREF: .text:00407BD8j
		test	dword ptr [eax], 210h
		jz	short loc_407BEE
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	short loc_407BF0
; ---------------------------------------------------------------------------

loc_407BEE:				; CODE XREF: .text:00407BE6j
		inc	dword ptr [edx]

loc_407BF0:				; CODE XREF: .text:00407BDEj
					; .text:00407BECj
		mov	eax, [eax]
		mov	[ecx+16Eh], eax
		mov	edx, [edx]
		mov	[ecx+172h], edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_407C04:				; DATA XREF: .data:004F8E90o
					; .data:004F8EC4o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		test	byte ptr [eax],	20h
		jnz	short loc_407C1C
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	short loc_407C2C
; ---------------------------------------------------------------------------

loc_407C1C:				; CODE XREF: .text:00407C14j
		test	dword ptr [eax], 210h
		jz	short loc_407C2A
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	short loc_407C2C
; ---------------------------------------------------------------------------

loc_407C2A:				; CODE XREF: .text:00407C22j
		dec	dword ptr [edx]

loc_407C2C:				; CODE XREF: .text:00407C1Aj
					; .text:00407C28j
		mov	eax, [eax]
		mov	[ecx+16Eh], eax
		mov	edx, [edx]
		mov	[ecx+172h], edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_407C40:				; DATA XREF: .data:004FA480o
					; .data:004FA4B4o ...
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	byte ptr [eax],	20h
		jnz	short loc_407C51
		xor	edx, edx
		mov	[eax], edx
		jmp	short loc_407C64
; ---------------------------------------------------------------------------

loc_407C51:				; CODE XREF: .text:00407C49j
		test	dword ptr [eax], 210h
		jz	short loc_407C5F
		xor	ecx, ecx
		mov	[eax], ecx
		jmp	short loc_407C64
; ---------------------------------------------------------------------------

loc_407C5F:				; CODE XREF: .text:00407C57j
		mov	eax, [ebp+0Ch]
		dec	dword ptr [eax]

loc_407C64:				; CODE XREF: .text:00407C4Fj
					; .text:00407C5Dj
		mov	eax, [ebp+10h]
		xor	edx, edx
		mov	[eax], edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_407C70:				; DATA XREF: .data:004FAC38o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		test	byte ptr [eax],	20h
		jnz	short loc_407C88
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	short loc_407C9C
; ---------------------------------------------------------------------------

loc_407C88:				; CODE XREF: .text:00407C80j
		test	dword ptr [eax], 298h
		jz	short loc_407C96
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	short loc_407C9C
; ---------------------------------------------------------------------------

loc_407C96:				; CODE XREF: .text:00407C8Ej
		mov	ebx, [edx]
		neg	ebx
		mov	[edx], ebx

loc_407C9C:				; CODE XREF: .text:00407C86j
					; .text:00407C94j
		mov	eax, [eax]
		mov	[ecx+16Eh], eax
		mov	edx, [edx]
		mov	[ecx+172h], edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_407CB0:				; DATA XREF: .data:004FAC6Co
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		test	byte ptr [eax],	20h
		jnz	short loc_407CC8
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	short loc_407CD8
; ---------------------------------------------------------------------------

loc_407CC8:				; CODE XREF: .text:00407CC0j
		test	dword ptr [eax], 298h
		jz	short loc_407CD6
		xor	ebx, ebx
		mov	[eax], ebx
		jmp	short loc_407CD8
; ---------------------------------------------------------------------------

loc_407CD6:				; CODE XREF: .text:00407CCEj
		not	dword ptr [edx]

loc_407CD8:				; CODE XREF: .text:00407CC6j
					; .text:00407CD4j
		mov	eax, [eax]
		mov	[ecx+16Eh], eax
		mov	edx, [edx]
		mov	[ecx+172h], edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_407CEC:				; DATA XREF: .data:004F80F4o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edx, [ebp+8]
		mov	ebx, [ebp+10h]
		mov	ecx, [ebp+0Ch]
		test	byte ptr [edx],	20h
		jnz	short loc_407D06
		xor	eax, eax
		mov	[edx], eax
		jmp	short loc_407D47
; ---------------------------------------------------------------------------

loc_407D06:				; CODE XREF: .text:00407CFEj
		test	dword ptr [edx], 298h
		jz	short loc_407D14
		xor	eax, eax
		mov	[edx], eax
		jmp	short loc_407D47
; ---------------------------------------------------------------------------

loc_407D14:				; CODE XREF: .text:00407D0Cj
		mov	eax, [ecx]
		mov	esi, eax
		mov	edi, eax
		shl	edi, 8
		shl	esi, 18h
		and	edi, 0FF0000h
		and	esi, 0FF000000h
		or	esi, edi
		mov	edi, eax
		shr	edi, 8
		shr	eax, 18h
		and	edi, 0FF00h
		or	esi, edi
		and	eax, 0FFh
		or	esi, eax
		mov	[ecx], esi

loc_407D47:				; CODE XREF: .text:00407D04j
					; .text:00407D12j
		mov	eax, [edx]
		mov	[ebx+16Eh], eax
		mov	edx, [ecx]
		mov	[ebx+172h], edx
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_407D5C:				; DATA XREF: .data:004FB388o
					; .data:004FB3BCo ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+0Ch]
		mov	ebx, [ebp+8]
		cmp	dword ptr [ebx], 20h
		jnz	short loc_407D72
		cmp	dword ptr [ebx+4], 20h
		jz	short loc_407D78

loc_407D72:				; CODE XREF: .text:00407D6Aj
		xor	edx, edx
		mov	[ebx], edx
		jmp	short loc_407D97
; ---------------------------------------------------------------------------

loc_407D78:				; CODE XREF: .text:00407D70j
		xor	edx, edx
		jmp	short loc_407D8D
; ---------------------------------------------------------------------------

loc_407D7C:				; CODE XREF: .text:00407D95j
		mov	ecx, [eax]
		mov	esi, ecx
		shr	ecx, 1Fh
		add	esi, esi
		and	ecx, 1
		or	esi, ecx
		inc	edx
		mov	[eax], esi

loc_407D8D:				; CODE XREF: .text:00407D7Aj
		mov	ecx, [eax+4]
		and	ecx, 1Fh
		cmp	edx, ecx
		jb	short loc_407D7C

loc_407D97:				; CODE XREF: .text:00407D76j
		mov	edx, [ebx]
		mov	ecx, [ebp+10h]
		mov	[ecx+16Eh], edx
		mov	edx, [ebp+10h]
		mov	eax, [eax]
		mov	[edx+172h], eax
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_407DB4:				; DATA XREF: .data:004FB424o
					; .data:004FB458o ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+0Ch]
		mov	ebx, [ebp+8]
		cmp	dword ptr [ebx], 20h
		jnz	short loc_407DCA
		cmp	dword ptr [ebx+4], 20h
		jz	short loc_407DD0

loc_407DCA:				; CODE XREF: .text:00407DC2j
		xor	edx, edx
		mov	[ebx], edx
		jmp	short loc_407DF2
; ---------------------------------------------------------------------------

loc_407DD0:				; CODE XREF: .text:00407DC8j
		xor	edx, edx
		jmp	short loc_407DE8
; ---------------------------------------------------------------------------

loc_407DD4:				; CODE XREF: .text:00407DF0j
		mov	ecx, [eax]
		mov	esi, ecx
		shr	esi, 1
		shl	ecx, 1Fh
		and	esi, 7FFFFFFFh
		or	esi, ecx
		inc	edx
		mov	[eax], esi

loc_407DE8:				; CODE XREF: .text:00407DD2j
		mov	ecx, [eax+4]
		and	ecx, 1Fh
		cmp	edx, ecx
		jb	short loc_407DD4

loc_407DF2:				; CODE XREF: .text:00407DCEj
		mov	edx, [ebx]
		mov	ecx, [ebp+10h]
		mov	[ecx+16Eh], edx
		mov	edx, [ebp+10h]
		mov	eax, [eax]
		mov	[edx+172h], eax
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_407E0C:				; DATA XREF: .data:004FB798o
					; .data:004FB7CCo ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		cmp	dword ptr [eax], 20h
		jnz	short loc_407E24
		cmp	dword ptr [eax+4], 20h
		jz	short loc_407E2A

loc_407E24:				; CODE XREF: .text:00407E1Cj
		xor	ecx, ecx
		mov	[eax], ecx
		jmp	short loc_407E32
; ---------------------------------------------------------------------------

loc_407E2A:				; CODE XREF: .text:00407E22j
		mov	ecx, [edx+4]
		and	ecx, 1Fh
		shl	dword ptr [edx], cl

loc_407E32:				; CODE XREF: .text:00407E28j
		mov	eax, [eax]
		mov	[ebx+16Eh], eax
		mov	edx, [edx]
		mov	[ebx+172h], edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_407E48:				; DATA XREF: .data:004FB9A0o
					; .data:004FB9D4o ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+10h]
		mov	eax, [ebp+0Ch]
		mov	ecx, [ebp+8]
		cmp	dword ptr [ecx], 20h
		jnz	short loc_407E61
		cmp	dword ptr [ecx+4], 20h
		jz	short loc_407E67

loc_407E61:				; CODE XREF: .text:00407E59j
		xor	edx, edx
		mov	[ecx], edx
		jmp	short loc_407E82
; ---------------------------------------------------------------------------

loc_407E67:				; CODE XREF: .text:00407E5Fj
		xor	edx, edx
		jmp	short loc_407E78
; ---------------------------------------------------------------------------

loc_407E6B:				; CODE XREF: .text:00407E80j
		mov	esi, [eax]
		shr	esi, 1
		and	esi, 7FFFFFFFh
		inc	edx
		mov	[eax], esi

loc_407E78:				; CODE XREF: .text:00407E69j
		mov	esi, [eax+4]
		and	esi, 1Fh
		cmp	edx, esi
		jb	short loc_407E6B

loc_407E82:				; CODE XREF: .text:00407E65j
		mov	edx, [ecx]
		mov	[ebx+16Eh], edx
		mov	eax, [eax]
		mov	[ebx+172h], eax
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_407E98:				; DATA XREF: .data:004FBA3Co
					; .data:004FBA70o ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+0Ch]
		mov	ebx, [ebp+8]
		cmp	dword ptr [ebx], 20h
		jnz	short loc_407EAE
		cmp	dword ptr [ebx+4], 20h
		jz	short loc_407EB4

loc_407EAE:				; CODE XREF: .text:00407EA6j
		xor	edx, edx
		mov	[ebx], edx
		jmp	short loc_407ED9
; ---------------------------------------------------------------------------

loc_407EB4:				; CODE XREF: .text:00407EACj
		xor	edx, edx
		jmp	short loc_407ECF
; ---------------------------------------------------------------------------

loc_407EB8:				; CODE XREF: .text:00407ED7j
		mov	ecx, [eax]
		mov	esi, ecx
		and	ecx, 80000000h
		shr	esi, 1
		and	esi, 7FFFFFFFh
		or	esi, ecx
		inc	edx
		mov	[eax], esi

loc_407ECF:				; CODE XREF: .text:00407EB6j
		mov	ecx, [eax+4]
		and	ecx, 1Fh
		cmp	edx, ecx
		jb	short loc_407EB8

loc_407ED9:				; CODE XREF: .text:00407EB2j
		mov	edx, [ebx]
		mov	ecx, [ebp+10h]
		mov	[ecx+16Eh], edx
		mov	edx, [ebp+10h]
		mov	eax, [eax]
		mov	[edx+172h], eax
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_407EF4:				; CODE XREF: .text:00408180p
					; .text:00408270p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	eax, [ebx+1Eh]
		and	eax, 0FFh
		cmp	eax, 2Ch
		jz	short loc_407F2C
		call	loc_4400F0
		or	eax, 2Ch
		mov	[ebx+1Eh], eax
		xor	edx, edx
		mov	[ebx+3Eh], edx
		xor	ecx, ecx
		mov	[ebx+5Ah], ecx
		xor	eax, eax
		mov	[ebx+0EEh], eax

loc_407F2C:				; CODE XREF: .text:00407F0Dj
		cmp	dword ptr [ebx+1Eh], 2Ch
		jnz	short loc_407F4D
		mov	edx, [ebp+8]
		cmp	dword ptr [edx], 2Dh
		jnz	short loc_407F4D
		test	byte ptr [ebx+0Ah], 1
		jnz	short loc_407F4D
		or	dword ptr [ebx+8], 10000h
		mov	ecx, [ebx+3Eh]
		mov	[ebx+56h], ecx

loc_407F4D:				; CODE XREF: .text:00407F30j
					; .text:00407F38j ...
		push	1
		mov	eax, [ebx+3Eh]
		sub	eax, 4
		push	eax
		mov	edx, [ebx+1Eh]
		push	edx
		push	ebx
		test	esi, esi
		jnz	short loc_407F63
		xor	ecx, ecx
		jmp	short loc_407F66
; ---------------------------------------------------------------------------

loc_407F63:				; CODE XREF: .text:00407F5Dj
		mov	ecx, [esi+0Ch]

loc_407F66:				; CODE XREF: .text:00407F61j
		push	ecx
		call	loc_4405C8
		sub	dword ptr [ebx+3Eh], 4
		mov	eax, [ebx+3Eh]
		add	esp, 14h
		xor	edx, edx
		mov	[ebp-8], eax
		mov	[ebp-4], edx
		mov	eax, [ebp-4]
		lea	eax, [eax+eax*2]
		lea	ecx, [ebx+eax*4+5Eh]
		lea	eax, [edx+edx*2]
		mov	[ebp-0Ch], ecx
		lea	eax, [ebx+eax*4+5Eh]
		jmp	short loc_407FCD
; ---------------------------------------------------------------------------

loc_407F94:				; CODE XREF: .text:00407FD0j
		mov	ecx, [eax]
		mov	esi, ecx
		add	esi, 4
		cmp	esi, [ebp-8]
		jle	short loc_407FAA
		mov	esi, [ebp-8]
		add	esi, 4
		cmp	ecx, esi
		jl	short loc_407FC9

loc_407FAA:				; CODE XREF: .text:00407F9Ej
		cmp	edx, [ebp-4]
		jz	short loc_407FC2
		mov	ecx, [ebp-0Ch]
		mov	esi, [eax]
		mov	[ecx], esi
		mov	esi, [eax+4]
		mov	[ecx+4], esi
		mov	esi, [eax+8]
		mov	[ecx+8], esi

loc_407FC2:				; CODE XREF: .text:00407FADj
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-0Ch], 0Ch

loc_407FC9:				; CODE XREF: .text:00407FA8j
		inc	edx
		add	eax, 0Ch

loc_407FCD:				; CODE XREF: .text:00407F92j
		cmp	edx, [ebx+5Ah]
		jl	short loc_407F94
		mov	eax, [ebp+8]
		test	byte ptr [eax],	60h
		jz	short loc_40801A
		cmp	dword ptr [ebp-4], 0Ch
		jl	short loc_407FE7
		mov	dword ptr [ebp-4], 0Bh

loc_407FE7:				; CODE XREF: .text:00407FDEj
		mov	edx, [ebp-4]
		lea	ecx, [ebx+5Eh]
		shl	edx, 2
		lea	eax, [ebx+6Ah]
		lea	edx, [edx+edx*2]
		push	edx		; n
		push	ecx		; src
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch
		inc	dword ptr [ebp-4]
		mov	edx, [ebp-8]
		mov	[ebx+5Eh], edx
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		mov	[ebx+62h], eax
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx]
		mov	[ebx+66h], ecx

loc_40801A:				; CODE XREF: .text:00407FD8j
		mov	eax, [ebp-4]
		mov	[ebx+5Ah], eax
		mov	edx, [ebp+8]
		mov	eax, [ebp+8]
		mov	ecx, [edx]
		mov	[eax+4], ecx
		mov	[ebx+16Eh], ecx
		mov	edx, [ebp+0Ch]
		mov	eax, [edx]
		mov	edx, [ebp+0Ch]
		mov	[edx+4], eax
		mov	[ebx+172h], eax
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_408048:				; CODE XREF: .text:0040822Ap
					; .text:00408359p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	edx, [ebx+1Eh]
		and	edx, 0FFh
		cmp	edx, 2Ch
		jz	short loc_40808F
		call	loc_4400F0
		or	eax, 2Ch
		mov	[ebx+1Eh], eax
		xor	eax, eax
		mov	[ebx+3Eh], eax
		xor	ecx, ecx
		mov	[ebx+5Ah], ecx
		xor	eax, eax
		mov	[ebx+0EEh], eax
		mov	edx, [ebp+8]
		xor	ecx, ecx
		mov	[edx], ecx
		mov	eax, [ebp+0Ch]
		xor	edx, edx
		mov	[eax], edx
		jmp	short loc_40810E
; ---------------------------------------------------------------------------

loc_40808F:				; CODE XREF: .text:00408060j
		push	0
		mov	ecx, [ebx+3Eh]
		add	ecx, 4
		push	ecx
		mov	edx, [ebx+1Eh]
		push	edx
		push	ebx
		test	eax, eax
		jnz	short loc_4080A5
		xor	ecx, ecx
		jmp	short loc_4080A8
; ---------------------------------------------------------------------------

loc_4080A5:				; CODE XREF: .text:0040809Fj
		mov	ecx, [eax+0Ch]

loc_4080A8:				; CODE XREF: .text:004080A3j
		push	ecx
		call	loc_4405C8
		add	esp, 14h
		mov	ecx, [ebx+3Eh]
		xor	eax, eax
		lea	edx, [ebx+5Eh]
		jmp	short loc_4080C3
; ---------------------------------------------------------------------------

loc_4080BB:				; CODE XREF: .text:004080C6j
		cmp	ecx, [edx]
		jz	short loc_4080C8
		inc	eax
		add	edx, 0Ch

loc_4080C3:				; CODE XREF: .text:004080B9j
		cmp	eax, [ebx+5Ah]
		jl	short loc_4080BB

loc_4080C8:				; CODE XREF: .text:004080BDj
		cmp	eax, [ebx+5Ah]
		jge	short loc_4080E4
		lea	edx, [eax+eax*2]
		mov	edi, [ebp+8]
		mov	esi, [ebx+edx*4+62h]
		mov	[edi], esi
		mov	eax, [ebx+edx*4+66h]
		mov	edx, [ebp+0Ch]
		mov	[edx], eax
		jmp	short loc_4080F2
; ---------------------------------------------------------------------------

loc_4080E4:				; CODE XREF: .text:004080CBj
		mov	eax, [ebp+8]
		xor	edx, edx
		mov	[eax], edx
		mov	eax, [ebp+0Ch]
		xor	edx, edx
		mov	[eax], edx

loc_4080F2:				; CODE XREF: .text:004080E2j
		add	ecx, 4
		mov	[ebx+3Eh], ecx
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		mov	[ebx+16Eh], eax
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx]
		mov	[ebx+172h], ecx

loc_40810E:				; CODE XREF: .text:0040808Dj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_408114:				; DATA XREF: .data:004F8F94o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		cmp	dword ptr [edi], 20h
		jnz	short loc_408144
		cmp	dword ptr [edi+4], 20h
		jnz	short loc_408144
		cmp	dword ptr [esi+4], 0
		jnz	short loc_408144
		mov	eax, [ebx+1Eh]
		and	eax, 0FFh
		cmp	eax, 2Ch
		jz	short loc_408167

loc_408144:				; CODE XREF: .text:00408129j
					; .text:0040812Fj ...
		xor	edx, edx
		mov	[ebx+1Eh], edx
		xor	ecx, ecx
		mov	[ebx+3Eh], ecx
		xor	eax, eax
		mov	[ebx+5Ah], eax
		xor	edx, edx
		mov	[ebx+0EEh], edx
		xor	ecx, ecx
		mov	[edi+8], ecx
		xor	eax, eax
		mov	[esi+8], eax
		jmp	short loc_4081DE
; ---------------------------------------------------------------------------

loc_408167:				; CODE XREF: .text:00408142j
		mov	edx, [ebx+22h]
		mov	[ebp-0Ch], edx
		lea	edx, [ebp-18h]
		mov	ecx, [ebx+42h]
		mov	[ebp-18h], ecx
		lea	ecx, [ebp-0Ch]
		mov	eax, [ebp+14h]
		push	eax
		push	ebx
		push	edx
		push	ecx
		call	loc_407EF4
		add	esp, 10h
		test	byte ptr [ebx+0Ah], 3
		jnz	short loc_4081A7
		cmp	dword ptr [ebx+1Eh], 2Ch
		jnz	short loc_4081A7
		cmp	dword ptr [ebx+22h], 2Dh
		jnz	short loc_4081A7
		cmp	dword ptr [ebx+42h], 0
		jnz	short loc_4081A7
		or	dword ptr [ebx+8], 30000h

loc_4081A7:				; CODE XREF: .text:0040818Cj
					; .text:00408192j ...
		mov	eax, [ebx+1Eh]
		mov	[edi+8], eax
		mov	edx, [ebx+3Eh]
		mov	[esi+8], edx
		push	1
		mov	ecx, [ebx+3Eh]
		sub	ecx, [esi]
		push	ecx
		mov	eax, [ebx+1Eh]
		push	eax
		push	ebx
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4081CA
		xor	edx, edx
		jmp	short loc_4081D0
; ---------------------------------------------------------------------------

loc_4081CA:				; CODE XREF: .text:004081C4j
		mov	ecx, [ebp+14h]
		mov	edx, [ecx+0Ch]

loc_4081D0:				; CODE XREF: .text:004081C8j
		push	edx
		call	loc_4405C8
		add	esp, 14h
		mov	eax, [esi]
		sub	[ebx+3Eh], eax

loc_4081DE:				; CODE XREF: .text:00408165j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4081E8:				; DATA XREF: .data:004FA37Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		push	0
		mov	eax, [edi]
		push	eax
		mov	edx, [esi]
		push	edx
		push	ebx
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_40820A
		xor	ecx, ecx
		jmp	short loc_408210
; ---------------------------------------------------------------------------

loc_40820A:				; CODE XREF: .text:00408204j
		mov	eax, [ebp+14h]
		mov	ecx, [eax+0Ch]

loc_408210:				; CODE XREF: .text:00408208j
		push	ecx
		call	loc_4405C8
		add	esp, 14h
		mov	edx, [esi]
		mov	[ebx+1Eh], edx
		mov	eax, [edi]
		mov	[ebx+3Eh], eax
		mov	edx, [ebp+14h]
		push	edx
		push	ebx
		push	edi
		push	esi
		call	loc_408048
		add	esp, 10h
		and	dword ptr [ebx+8], 0FFFCFFFFh
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_408240:				; DATA XREF: .data:004FB1E8o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD0h
		push	ebx
		push	esi
		push	edi
		lea	edi, [ebp-0Ch]
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+14h]
		mov	eax, [ebx+1Eh]
		mov	[ebp-24h], eax
		mov	edx, [ebx+3Eh]
		mov	[ebp-30h], edx
		lea	edx, [ebp-18h]
		mov	ecx, [ebx+0Eh]
		mov	[edi], ecx
		mov	eax, [ebx+2Eh]
		mov	[ebp-18h], eax
		push	esi
		push	ebx
		push	edx
		push	edi
		call	loc_407EF4
		mov	ecx, [ebx+12h]
		add	esp, 10h
		mov	[edi], ecx
		lea	edx, [ebp-18h]
		mov	eax, [ebx+32h]
		mov	[ebp-18h], eax
		push	esi
		push	ebx
		push	edx
		push	edi
		call	loc_407EF4
		mov	ecx, [ebx+16h]
		add	esp, 10h
		mov	[edi], ecx
		lea	edx, [ebp-18h]
		mov	eax, [ebx+36h]
		mov	[ebp-18h], eax
		push	esi
		push	ebx
		push	edx
		push	edi
		call	loc_407EF4
		mov	ecx, [ebx+1Ah]
		add	esp, 10h
		mov	[edi], ecx
		lea	edx, [ebp-18h]
		mov	eax, [ebx+3Ah]
		mov	[ebp-18h], eax
		push	esi
		push	ebx
		push	edx
		push	edi
		call	loc_407EF4
		add	esp, 10h
		lea	ecx, [ebp-30h]
		lea	eax, [ebp-24h]
		push	esi
		push	ebx
		push	ecx
		push	eax
		call	loc_407EF4
		mov	edx, [ebx+22h]
		add	esp, 10h
		mov	[edi], edx
		lea	eax, [ebp-18h]
		mov	ecx, [ebx+42h]
		mov	[ebp-18h], ecx
		push	esi
		push	ebx
		push	eax
		push	edi
		call	loc_407EF4
		mov	edx, [ebx+26h]
		add	esp, 10h
		mov	[edi], edx
		lea	eax, [ebp-18h]
		mov	ecx, [ebx+46h]
		mov	[ebp-18h], ecx
		push	esi
		push	ebx
		push	eax
		push	edi
		call	loc_407EF4
		mov	edx, [ebx+2Ah]
		add	esp, 10h
		mov	[edi], edx
		lea	eax, [ebp-18h]
		mov	ecx, [ebx+4Ah]
		mov	[ebp-18h], ecx
		push	esi
		push	ebx
		push	eax
		push	edi
		call	loc_407EF4
		add	esp, 10h
		xor	edx, edx
		mov	[ebx+16Eh], edx
		xor	ecx, ecx
		mov	[ebx+172h], ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_408340:				; DATA XREF: .data:004FAF78o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+10h]
		lea	edi, [ebp-0Ch]
		push	esi
		push	ebx
		lea	eax, [ebp-18h]
		push	eax
		push	edi
		call	loc_408048
		mov	edx, [edi]
		add	esp, 10h
		mov	[ebx+2Ah], edx
		lea	eax, [ebp-18h]
		mov	ecx, [ebp-18h]
		mov	[ebx+4Ah], ecx
		push	esi
		push	ebx
		push	eax
		push	edi
		call	loc_408048
		mov	edx, [edi]
		add	esp, 10h
		mov	[ebx+26h], edx
		lea	eax, [ebp-18h]
		mov	ecx, [ebp-18h]
		mov	[ebx+46h], ecx
		push	esi
		push	ebx
		push	eax
		push	edi
		call	loc_408048
		mov	edx, [edi]
		add	esp, 10h
		mov	[ebx+22h], edx
		lea	eax, [ebp-18h]
		mov	ecx, [ebp-18h]
		mov	[ebx+42h], ecx
		push	esi
		push	ebx
		push	eax
		push	edi
		call	loc_408048
		add	esp, 10h
		lea	edx, [ebp-18h]
		push	esi
		push	ebx
		push	edx
		push	edi
		call	loc_408048
		mov	ecx, [edi]
		add	esp, 10h
		mov	[ebx+1Ah], ecx
		lea	edx, [ebp-18h]
		mov	eax, [ebp-18h]
		mov	[ebx+3Ah], eax
		push	esi
		push	ebx
		push	edx
		push	edi
		call	loc_408048
		mov	ecx, [edi]
		add	esp, 10h
		mov	[ebx+16h], ecx
		lea	edx, [ebp-18h]
		mov	eax, [ebp-18h]
		mov	[ebx+36h], eax
		push	esi
		push	ebx
		push	edx
		push	edi
		call	loc_408048
		mov	ecx, [edi]
		add	esp, 10h
		mov	[ebx+12h], ecx
		lea	edx, [ebp-18h]
		mov	eax, [ebp-18h]
		mov	[ebx+32h], eax
		push	esi
		push	ebx
		push	edx
		push	edi
		call	loc_408048
		mov	ecx, [edi]
		xor	edx, edx
		mov	[ebx+0Eh], ecx
		xor	ecx, ecx
		mov	eax, [ebp-18h]
		add	esp, 10h
		mov	[ebx+2Eh], eax
		mov	[ebx+16Eh], edx
		mov	[ebx+172h], ecx
		and	dword ptr [ebx+8], 0FFFCFFFFh
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_408438:				; DATA XREF: .data:004FA0D8o
					; .data:004FA10Co ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	edx, [ebp+8]
		mov	eax, [ebp+10h]
		mov	ecx, [ebp+0Ch]
		mov	ebx, [edx]
		mov	[eax+4Eh], ebx
		mov	[eax+16Eh], ebx
		mov	ebx, [ecx]
		mov	[eax+52h], ebx
		mov	[eax+172h], ebx
		mov	edx, [edx]
		and	edx, 0FFFFFF7Fh
		cmp	edx, 20h
		jnz	short loc_40846F
		mov	ecx, [ecx]
		mov	[eax], ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_40846F:				; CODE XREF: .text:00408466j
		xor	edx, edx
		mov	[eax], edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_408478:				; DATA XREF: .data:004F82C8o
					; .data:004F82FCo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE0h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	ebx, [ebp+10h]
		mov	edi, [ebp+14h]
		mov	eax, [esi]
		mov	[ebx+16Eh], eax
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx]
		mov	[ebx+172h], ecx
		test	byte ptr [ebx+0Bh], 10h
		jz	short loc_4084FC
		test	edi, edi
		jnz	short loc_4084B3
		xor	eax, eax
		mov	[ebp-14h], eax
		xor	edx, edx
		mov	[ebp-20h], edx
		jmp	short loc_4084C3
; ---------------------------------------------------------------------------

loc_4084B3:				; CODE XREF: .text:004084A5j
		mov	dword ptr [ebp-14h], 20h
		mov	ecx, [edi+0Ch]
		add	ecx, [edi+10h]
		mov	[ebp-20h], ecx

loc_4084C3:				; CODE XREF: .text:004084B1j
		push	edi
		push	ebx
		lea	eax, [ebp-20h]
		push	eax
		lea	edx, [ebp-14h]
		push	edx
		call	loc_407EF4
		add	esp, 10h
		mov	ecx, [esi]
		mov	[ebx+4Eh], ecx
		mov	eax, [ebp+0Ch]
		mov	edx, [eax]
		mov	[ebx+52h], edx
		cmp	dword ptr [esi], 20h
		jnz	short loc_4084F3
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx]
		mov	[ebx], eax
		jmp	loc_4086E3
; ---------------------------------------------------------------------------

loc_4084F3:				; CODE XREF: .text:004084E5j
		xor	edx, edx
		mov	[ebx], edx
		jmp	loc_4086E3
; ---------------------------------------------------------------------------

loc_4084FC:				; CODE XREF: .text:004084A1j
		mov	ecx, [esi]
		and	ecx, 0FFFFFF7Fh
		cmp	ecx, 30h
		jnz	short loc_40855E
		push	28h		; type3
		push	27h		; type2
		push	26h		; type1
		mov	eax, [ebp+0Ch]
		mov	edx, [eax]
		push	edx		; _addr
		call	Isdataavailable
		add	esp, 10h
		test	eax, eax
		jnz	short loc_408528
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	short loc_40857A
; ---------------------------------------------------------------------------

loc_408528:				; CODE XREF: .text:0040851Fj
		push	1		; mode
		push	4		; size
		mov	eax, [ebp+0Ch]
		mov	edx, [eax]
		push	edx		; _addr
		lea	ecx, [ebp-4]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_408549
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_40857A
; ---------------------------------------------------------------------------

loc_408549:				; CODE XREF: .text:00408540j
		mov	dword ptr [ebx+16Eh], 20h
		mov	edx, [ebp-4]
		mov	[ebx+172h], edx
		jmp	short loc_40857A
; ---------------------------------------------------------------------------

loc_40855E:				; CODE XREF: .text:00408507j
		mov	ecx, [esi]
		and	ecx, 0FFFFFF7Fh
		cmp	ecx, 20h
		jnz	short loc_408575
		mov	eax, [ebp+0Ch]
		mov	edx, [eax]
		mov	[ebp-4], edx
		jmp	short loc_40857A
; ---------------------------------------------------------------------------

loc_408575:				; CODE XREF: .text:00408569j
		xor	ecx, ecx
		mov	[ebp-4], ecx

loc_40857A:				; CODE XREF: .text:00408526j
					; .text:00408547j ...
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4085C2
		push	0		; subaddr
		mov	eax, [ebp-4]
		push	eax		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jz	short loc_40859F
		test	byte ptr [esi+0Ah], 1
		jnz	short loc_4085C4

loc_40859F:				; CODE XREF: .text:00408597j
		mov	eax, [ebp-4]
		push	eax		; _addr
		call	Followcall
		pop	ecx
		cmp	eax, [ebp-4]
		jz	short loc_4085C4
		push	0		; subaddr
		push	eax		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_4085C4
; ---------------------------------------------------------------------------

loc_4085C2:				; CODE XREF: .text:0040857Ej
		xor	esi, esi

loc_4085C4:				; CODE XREF: .text:0040859Dj
					; .text:004085ACj ...
		test	esi, esi
		jz	short loc_40860C
		mov	eax, [esi+18h]
		sub	eax, 10000h
		jnz	short loc_40860C
		cmp	dword ptr [ebx+0Eh], 20h
		jnz	short loc_4085E6
		test	byte ptr [ebx+1Eh], 20h
		jz	short loc_4085E6
		mov	edx, [ebx+2Eh]
		sub	[ebx+3Eh], edx
		jmp	short loc_4085F5
; ---------------------------------------------------------------------------

loc_4085E6:				; CODE XREF: .text:004085D6j
					; .text:004085DCj
		xor	ecx, ecx
		mov	[ebx+1Eh], ecx
		xor	eax, eax
		mov	[ebx+3Eh], eax
		xor	edx, edx
		mov	[ebx+5Ah], edx

loc_4085F5:				; CODE XREF: .text:004085E4j
		xor	ecx, ecx
		mov	[ebx+0Eh], ecx
		xor	eax, eax
		mov	[ebx+2Eh], eax
		xor	edx, edx
		mov	[ebx+0EEh], edx
		jmp	loc_4086E3
; ---------------------------------------------------------------------------

loc_40860C:				; CODE XREF: .text:004085C6j
					; .text:004085D0j
		test	esi, esi
		jz	short loc_408651
		test	byte ptr [esi+0Ah], 1
		jz	short loc_408651
		test	byte ptr [esi+0Ah], 2
		jnz	short loc_408651
		mov	ecx, [ebx+1Eh]
		and	ecx, 30h
		cmp	ecx, 20h
		jnz	short loc_408651
		push	0
		mov	eax, [esi+0Ch]
		add	eax, [ebx+3Eh]
		push	eax
		mov	edx, [ebx+1Eh]
		push	edx
		push	ebx
		test	edi, edi
		jnz	short loc_40863D
		xor	ecx, ecx
		jmp	short loc_408640
; ---------------------------------------------------------------------------

loc_40863D:				; CODE XREF: .text:00408637j
		mov	ecx, [edi+0Ch]

loc_408640:				; CODE XREF: .text:0040863Bj
		push	ecx
		call	loc_4405C8
		add	esp, 14h
		mov	eax, [esi+0Ch]
		add	[ebx+3Eh], eax
		jmp	short loc_408668
; ---------------------------------------------------------------------------

loc_408651:				; CODE XREF: .text:0040860Ej
					; .text:00408614j ...
		xor	edx, edx
		mov	[ebx+1Eh], edx
		xor	eax, eax
		mov	[ebx+3Eh], eax
		xor	edx, edx
		mov	[ebx+5Ah], edx
		xor	ecx, ecx
		mov	[ebx+0EEh], ecx

loc_408668:				; CODE XREF: .text:0040864Fj
		mov	dword ptr [ebp-8], 10h
		test	esi, esi
		jz	short loc_40867B
		xor	eax, eax
		mov	al, [esi+38h]
		or	[ebp-8], eax

loc_40867B:				; CODE XREF: .text:00408671j
		mov	eax, dword_5BDD30
		cmp	eax, 1
		jnz	short loc_40868B
		or	dword ptr [ebp-8], 20h
		jmp	short loc_408697
; ---------------------------------------------------------------------------

loc_40868B:				; CODE XREF: .text:00408683j
		cmp	eax, 2
		jnz	short loc_408697
		or	dword ptr [ebp-8], 0E8h

loc_408697:				; CODE XREF: .text:00408689j
					; .text:0040868Ej
		mov	edx, [ebx+8]
		and	edx, 30000h
		cmp	edx, 30000h
		jnz	short loc_4086AC
		or	dword ptr [ebp-8], 20h

loc_4086AC:				; CODE XREF: .text:004086A6j
		xor	eax, eax
		lea	edx, [ebx+0Eh]

loc_4086B1:				; CODE XREF: .text:004086CFj
		mov	ecx, eax
		mov	edi, 1
		shl	edi, cl
		and	edi, [ebp-8]
		jnz	short loc_4086C8
		xor	ecx, ecx
		mov	[edx], ecx
		xor	ecx, ecx
		mov	[edx+20h], ecx

loc_4086C8:				; CODE XREF: .text:004086BDj
		inc	eax
		add	edx, 4
		cmp	eax, 8
		jl	short loc_4086B1
		test	esi, esi
		jz	short loc_4086DB
		test	byte ptr [esi+0Ah], 8
		jnz	short loc_4086E3

loc_4086DB:				; CODE XREF: .text:004086D3j
		xor	eax, eax
		mov	[ebx+152h], eax

loc_4086E3:				; CODE XREF: .text:004084EEj
					; .text:004084F7j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4086EC:				; DATA XREF: .data:004FB590o
					; .data:004FB5C4o ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		mov	eax, [ebp+14h]
		push	eax
		push	ebx
		push	edi
		push	esi
		call	loc_408048
		add	esp, 10h
		mov	edx, [esi]
		and	edx, 0FFFFFF7Fh
		cmp	edx, 20h
		jnz	short loc_40871D
		mov	ecx, [edi]
		mov	[ebx], ecx
		jmp	short loc_408721
; ---------------------------------------------------------------------------

loc_40871D:				; CODE XREF: .text:00408715j
		xor	eax, eax
		mov	[ebx], eax

loc_408721:				; CODE XREF: .text:0040871Bj
		mov	edx, [esi]
		mov	[ebx+4Eh], edx
		mov	[ebx+16Eh], edx
		mov	eax, [edi]
		mov	[ebx+52h], eax
		mov	[ebx+172h], eax
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_40873C:				; DATA XREF: .data:004FB660o
					; .data:004FB694o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		mov	eax, [ebp+14h]
		push	eax
		push	ebx
		push	esi
		push	edi
		call	loc_408048
		add	esp, 10h
		mov	edx, [edi]
		and	edx, 0FFFFFF7Fh
		cmp	edx, 20h
		jnz	short loc_40876D
		mov	ecx, [esi]
		mov	[ebx], ecx
		jmp	short loc_408771
; ---------------------------------------------------------------------------

loc_40876D:				; CODE XREF: .text:00408765j
		xor	eax, eax
		mov	[ebx], eax

loc_408771:				; CODE XREF: .text:0040876Bj
		mov	edx, [edi]
		mov	[ebx+4Eh], edx
		mov	[ebx+16Eh], edx
		mov	eax, [esi]
		mov	[ebx+52h], eax
		mov	[ebx+172h], eax
		mov	edx, [ebx+1Eh]
		and	edx, 0FFh
		cmp	edx, 2Ch
		jnz	short loc_40879B
		cmp	dword ptr [edi+4], 20h
		jz	short loc_4087B4

loc_40879B:				; CODE XREF: .text:00408793j
		xor	ecx, ecx
		mov	[ebx+1Eh], ecx
		xor	eax, eax
		mov	[ebx+3Eh], eax
		xor	edx, edx
		mov	[ebx+5Ah], edx
		xor	ecx, ecx
		mov	[ebx+0EEh], ecx
		jmp	short loc_4087E1
; ---------------------------------------------------------------------------

loc_4087B4:				; CODE XREF: .text:00408799j
		push	0
		mov	eax, [ebx+3Eh]
		add	eax, [esi+4]
		push	eax
		mov	edx, [ebx+1Eh]
		push	edx
		push	ebx
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4087CC
		xor	ecx, ecx
		jmp	short loc_4087D2
; ---------------------------------------------------------------------------

loc_4087CC:				; CODE XREF: .text:004087C6j
		mov	eax, [ebp+14h]
		mov	ecx, [eax+0Ch]

loc_4087D2:				; CODE XREF: .text:004087CAj
		push	ecx
		call	loc_4405C8
		add	esp, 14h
		mov	edx, [esi+4]
		add	[ebx+3Eh], edx

loc_4087E1:				; CODE XREF: .text:004087B2j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4087E8:				; CODE XREF: .text:00409ABEp
					; .text:0040A01Ep ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		mov	edx, hwollymain
		lea	eax, [ebp-10h]
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+18h]
		mov	esi, [ebp+14h]
		push	eax		; lpRect
		push	edx		; hWnd
		call	GetClientRect
		cmp	dword ptr [ebp+8], 0
		mov	eax, sysfont._width
		jz	short loc_408853
		mov	edx, [ebp+8]
		push	esi
		mov	edi, edx
		lea	esi, [ebp-10h]
		mov	ecx, 4
		rep movsd
		pop	esi
		cmp	g_IsShowtoolbar, 1
		jnz	short loc_408835
		mov	edx, [ebp+8]
		add	dword ptr [edx+4], 16h
		jmp	short loc_408844
; ---------------------------------------------------------------------------

loc_408835:				; CODE XREF: .text:0040882Aj
		cmp	g_IsShowtoolbar, 2
		jnz	short loc_408844
		mov	ecx, [ebp+8]
		add	dword ptr [ecx], 17h

loc_408844:				; CODE XREF: .text:00408833j
					; .text:0040883Cj
		mov	ecx, [ebp+8]
		mov	edx, sysfont.height
		add	edx, 5
		sub	[ecx+0Ch], edx

loc_408853:				; CODE XREF: .text:00408810j
		dec	dword ptr [ebp-10h]
		inc	dword ptr [ebp-8]
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4088AD
		mov	edx, [ebp+0Ch]
		push	esi
		lea	esi, [ebp-10h]
		mov	edi, edx
		mov	ecx, 4
		rep movsd
		mov	edx, [ebp-4]
		mov	ecx, [ebp+0Ch]
		sub	edx, sysfont.height
		pop	esi
		add	edx, 0FFFFFFFBh
		mov	[ecx+4], edx
		mov	edx, eax
		add	edx, edx
		mov	ecx, [ebp+0Ch]
		lea	edx, [edx+edx*2]
		sub	[ecx+8], edx
		cmp	g_ToolbarStatus, 0
		jz	short loc_4088A1
		cmp	g_IsShowtoolbar, 1
		jz	short loc_4088AD

loc_4088A1:				; CODE XREF: .text:00408896j
		lea	edx, [eax+eax*2]
		mov	ecx, [ebp+0Ch]
		lea	edx, [eax+edx*4]
		sub	[ecx+8], edx

loc_4088AD:				; CODE XREF: .text:0040885Dj
					; .text:0040889Fj
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_408908
		mov	edx, [ebp+10h]
		push	esi
		lea	esi, [ebp-10h]
		mov	edi, edx
		mov	ecx, 4
		rep movsd
		mov	edx, [ebp-4]
		mov	ecx, [ebp+10h]
		sub	edx, sysfont.height
		pop	esi
		add	edx, 0FFFFFFFBh
		mov	[ecx+4], edx
		cmp	g_ToolbarStatus, 0
		jz	short loc_4088E8
		cmp	g_IsShowtoolbar, 1
		jz	short loc_4088F4

loc_4088E8:				; CODE XREF: .text:004088DDj
		lea	edx, [eax+eax*2]
		mov	ecx, [ebp+10h]
		lea	edx, [eax+edx*4]
		sub	[ecx+8], edx

loc_4088F4:				; CODE XREF: .text:004088E6j
		mov	edx, [ebp+10h]
		mov	ecx, [edx+8]
		mov	edx, eax
		add	edx, edx
		lea	edx, [edx+edx*2]
		sub	ecx, edx
		mov	edx, [ebp+10h]
		mov	[edx], ecx

loc_408908:				; CODE XREF: .text:004088B1j
		test	esi, esi
		jz	short loc_40895F
		push	esi
		mov	edi, esi
		lea	esi, [ebp-10h]
		mov	ecx, 4
		rep movsd
		pop	esi
		cmp	g_ToolbarStatus, 0
		jz	short loc_408943
		cmp	g_IsShowtoolbar, 1
		jnz	short loc_408943
		lea	ecx, [eax+eax*2]
		mov	edx, [ebp-0Ch]
		add	edx, 16h
		mov	[esi+0Ch], edx
		lea	ecx, [eax+ecx*4]
		add	ecx, [ebp-10h]
		mov	[esi+8], ecx
		jmp	short loc_40895F
; ---------------------------------------------------------------------------

loc_408943:				; CODE XREF: .text:00408921j
					; .text:0040892Aj
		mov	edx, [ebp-4]
		lea	ecx, [eax+eax*2]
		sub	edx, sysfont.height
		add	edx, 0FFFFFFFBh
		lea	ecx, [eax+ecx*4]
		mov	[esi+4], edx
		mov	edx, [ebp-8]
		sub	edx, ecx
		mov	[esi], edx

loc_40895F:				; CODE XREF: .text:0040890Aj
					; .text:00408941j
		test	ebx, ebx
		jz	short loc_4089C5
		lea	esi, [ebp-10h]
		mov	edi, ebx
		mov	ecx, 4
		rep movsd
		cmp	g_IsShowtoolbar, 1
		jnz	short loc_408999
		mov	edx, [ebp-0Ch]
		add	edx, 16h
		mov	[ebx+0Ch], edx
		cmp	g_ToolbarStatus, 0
		jz	short loc_4089C5
		mov	ecx, eax
		lea	eax, [ecx+eax*2]
		lea	eax, [ecx+eax*4]
		add	eax, [ebp-10h]
		mov	[ebx], eax
		jmp	short loc_4089C5
; ---------------------------------------------------------------------------

loc_408999:				; CODE XREF: .text:00408976j
		cmp	g_IsShowtoolbar, 2
		jnz	short loc_4089B9
		mov	eax, [ebp-10h]
		add	eax, 18h
		mov	[ebx+8], eax
		mov	edx, sysfont.height
		add	edx, 5
		sub	[ebx+0Ch], edx
		jmp	short loc_4089C5
; ---------------------------------------------------------------------------

loc_4089B9:				; CODE XREF: .text:004089A0j
		mov	ecx, [ebp-10h]
		mov	[ebx+8], ecx
		mov	eax, [ebp-0Ch]
		mov	[ebx+0Ch], eax

loc_4089C5:				; CODE XREF: .text:00408961j
					; .text:00408988j ...
		cmp	g_ToolbarStatus, 0
		jz	short loc_4089D7
		cmp	g_IsShowtoolbar, 1
		jz	short loc_4089DB

loc_4089D7:				; CODE XREF: .text:004089CCj
		xor	eax, eax
		jmp	short loc_4089E0
; ---------------------------------------------------------------------------

loc_4089DB:				; CODE XREF: .text:004089D5j
		mov	eax, 1

loc_4089E0:				; CODE XREF: .text:004089D9j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; bool __stdcall EnumFunc(HWND hWnd, LPARAM a2)
EnumFunc:				; DATA XREF: .text:00408E4Fo
					; .text:00408E7Do ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		cmp	hwclient, 0
		jz	short loc_408A1A
		push	ebx		; hWnd
		call	GetParent
		cmp	eax, hwclient
		jz	short loc_408A1A
		mov	eax, 1
		jmp	loc_408AAD
; ---------------------------------------------------------------------------

loc_408A1A:				; CODE XREF: .text:00408A00j
					; .text:00408A0Ej
		push	100h		; nMaxCount
		lea	edx, [ebp-200h]
		push	edx		; lpClassName
		push	ebx		; hWnd
		call	GetClassNameW
		push	offset word_5D5448 ; s2
		lea	ecx, [ebp-200h]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_408A7B
		push	offset word_5D54C8 ; s2
		lea	eax, [ebp-200h]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_408A7B
		push	offset word_5D5488 ; s2
		lea	edx, [ebp-200h]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_408A7B
		mov	eax, 1
		jmp	short loc_408AAD
; ---------------------------------------------------------------------------

loc_408A7B:				; CODE XREF: .text:00408A42j
					; .text:00408A5Aj ...
		test	esi, esi
		jnz	short loc_408AA6
		cmp	hwclient, 0
		jnz	short loc_408A90
		push	ebx		; hWnd
		call	DestroyWindow
		jmp	short loc_408AA8
; ---------------------------------------------------------------------------

loc_408A90:				; CODE XREF: .text:00408A86j
		push	0		; lParam
		push	ebx		; wParam
		push	221h		; Msg
		mov	edx, hwclient
		push	edx		; hWnd
		call	SendMessageW
		jmp	short loc_408AA8
; ---------------------------------------------------------------------------

loc_408AA6:				; CODE XREF: .text:00408A7Dj
		inc	dword ptr [esi]

loc_408AA8:				; CODE XREF: .text:00408A8Ej
					; .text:00408AA4j
		mov	eax, 1

loc_408AAD:				; CODE XREF: .text:00408A15j
					; .text:00408A79j
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------
		align 4
