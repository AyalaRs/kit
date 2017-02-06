.code

; Exported entry 367. _Getguidname
; Exported entry 573. Getguidname

; int __cdecl Getguidname(uchar	*data, ulong ndata, wchar_t *_name)
		public Getguidname
Getguidname:				; CODE XREF: .text:00442983p
					; .text:00461680p ...
		push	ebp		; _Getguidname
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4D3DC2
		cmp	dword ptr [ebp+0Ch], 10h
		jnb	short loc_4D3DCA

loc_4D3DC2:				; CODE XREF: .text:004D3DBAj
		or	eax, 0FFFFFFFFh
		jmp	loc_4D3E62
; ---------------------------------------------------------------------------

loc_4D3DCA:				; CODE XREF: .text:004D3DC0j
		cmp	dword_607848, 0
		jz	short loc_4D3DE5
		cmp	dword_607850, 0
		jz	short loc_4D3DE5
		cmp	dword_607854, 0
		jnz	short loc_4D3DEA

loc_4D3DE5:				; CODE XREF: .text:004D3DD1j
					; .text:004D3DDAj
		or	eax, 0FFFFFFFFh
		jmp	short loc_4D3E62
; ---------------------------------------------------------------------------

loc_4D3DEA:				; CODE XREF: .text:004D3DE3j
		xor	edi, edi
		mov	esi, dword_607850

loc_4D3DF2:				; CODE XREF: .text:004D3E5Dj
		lea	ebx, [esi+edi]
		sar	ebx, 1
		jns	short loc_4D3DFC
		adc	ebx, 0

loc_4D3DFC:				; CODE XREF: .text:004D3DF7j
		mov	edx, ebx
		push	10h		; n
		shl	edx, 2
		mov	eax, [ebp+8]
		push	eax		; s2
		lea	edx, [edx+edx*4]
		add	edx, dword_607848
		push	edx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jle	short loc_4D3E21
		mov	esi, ebx
		jmp	short loc_4D3E5B
; ---------------------------------------------------------------------------

loc_4D3E21:				; CODE XREF: .text:004D3E1Bj
		test	eax, eax
		jge	short loc_4D3E2A
		lea	edi, [ebx+1]
		jmp	short loc_4D3E5B
; ---------------------------------------------------------------------------

loc_4D3E2A:				; CODE XREF: .text:004D3E23j
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4D3E57
		lea	eax, [ebx+ebx*4]
		mov	edx, dword_607848
		mov	ecx, [edx+eax*4+10h]
		add	ecx, ecx
		add	ecx, dword_607854
		push	ecx		; src
		push	100h		; n
		mov	eax, [ebp+10h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4D3E57:				; CODE XREF: .text:004D3E2Ej
		xor	eax, eax
		jmp	short loc_4D3E62
; ---------------------------------------------------------------------------

loc_4D3E5B:				; CODE XREF: .text:004D3E1Fj
					; .text:004D3E28j
		cmp	esi, edi
		jg	short loc_4D3DF2
		or	eax, 0FFFFFFFFh

loc_4D3E62:				; CODE XREF: .text:004D3DC5j
					; .text:004D3DE8j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 368. _Isguid
; Exported entry 631. Isguid

; unsigned int __cdecl Isguid(ulong _addr, wchar_t *_name, int nname)
		public Isguid
Isguid:					; CODE XREF: .text:004883FDp
					; .text:004A3A50p ...
		push	ebp		; _Isguid
		mov	ebp, esp
		add	esp, 0FFFFFDF0h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+0Ch]
		push	1		; mode
		push	10h		; size
		mov	eax, [ebp+8]
		push	eax		; _addr
		lea	edx, [ebp-10h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 10h
		jz	short loc_4D3E97
		xor	eax, eax
		jmp	short loc_4D3EEA
; ---------------------------------------------------------------------------

loc_4D3E97:				; CODE XREF: .text:004D3E91j
		lea	edx, [ebp-210h]
		lea	ecx, [ebp-10h]
		push	edx		; _name
		push	10h		; ndata
		push	ecx		; data
		call	Getguidname
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4D3EB4
		xor	eax, eax
		jmp	short loc_4D3EEA
; ---------------------------------------------------------------------------

loc_4D3EB4:				; CODE XREF: .text:004D3EAEj
		test	esi, esi
		jz	short loc_4D3EE5
		push	offset aGuid_1	; "GUID	"
		push	edi		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		lea	eax, [ebp-210h]
		push	eax		; src
		sub	edi, ebx
		push	edi		; n
		lea	esi, [esi+ebx*2]
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, ebx
		jmp	short loc_4D3EEA
; ---------------------------------------------------------------------------

loc_4D3EE5:				; CODE XREF: .text:004D3EB6j
		mov	eax, 1

loc_4D3EEA:				; CODE XREF: .text:004D3E95j
					; .text:004D3EB2j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D3EF4:				; CODE XREF: .text:004D4914p
					; .text:004D49D7p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset stru_60786C._ne
		mov	esi, [ebp+18h]
		mov	ebx, [edi]
		inc	ebx
		cmp	ebx, 80h
		jl	short loc_4D3F18
		xor	ebx, ebx
		jmp	short loc_4D3F18
; ---------------------------------------------------------------------------

loc_4D3F11:				; CODE XREF: .text:004D3F1Ej
		push	0		; dwMilliseconds
		call	Sleep

loc_4D3F18:				; CODE XREF: .text:004D3F0Bj
					; .text:004D3F0Fj
		cmp	ebx, stru_60786C._nc
		jz	short loc_4D3F11
		mov	eax, [edi]
		mov	ecx, [ebp+8]
		mov	edx, eax
		shl	eax, 5
		add	eax, edx
		test	esi, esi
		lea	eax, [edx+eax*2]
		mov	dword ptr stru_60786C.data._type[eax*8],	ecx
		mov	edx, [ebp+0Ch]
		mov	stru_60786C.data._addr[eax*8], edx
		mov	ecx, [ebp+10h]
		mov	stru_60786C.data.color[eax*8], ecx
		mov	edx, [ebp+14h]
		mov	stru_60786C.data.simple[eax*8],	edx
		jnz	short loc_4D3F64
		mov	stru_60786C.data.text[eax*8], 0
		jmp	short loc_4D3F88
; ---------------------------------------------------------------------------

loc_4D3F64:				; CODE XREF: .text:004D3F56j
		push	esi		; src
		push	104h		; n
		mov	eax, [edi]
		mov	ecx, eax
		shl	eax, 5
		add	eax, ecx
		lea	eax, [ecx+eax*2]
		shl	eax, 3
		add	eax, offset stru_60786C.data.text
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4D3F88:				; CODE XREF: .text:004D3F62j
		mov	[edi], ebx
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4D3F90:				; DATA XREF: .text:loc_4D4B81o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		mov	edx, [ebp+0Ch]
		mov	ebx, [edx]
		mov	ecx, [eax]
		cmp	ebx, ecx
		jbe	short loc_4D3FA8
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D3FA8:				; CODE XREF: .text:004D3FA0j
		cmp	ebx, ecx
		jnb	short loc_4D3FB4
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D3FB4:				; CODE XREF: .text:004D3FAAj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D3FBC:				; DATA XREF: .data:004F601Ao
		push	ebp
		mov	ebp, esp
		mov	eax, offset dword_618474
		mov	dword ptr [eax], offset	off_576100
		mov	dword ptr [eax], offset	off_57610C
		mov	dword ptr [eax+4], offset off_576100
		mov	dword ptr [eax+4], offset off_5760D4
		mov	dword ptr [eax+8], offset off_576100
		mov	dword ptr [eax+8], offset off_5760C4
		mov	dword ptr [eax], offset	off_576180
		mov	dword ptr [eax+4], offset off_576218
		mov	dword ptr [eax+8], offset off_576244
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; void __stdcall __noreturn StartAddress(LPVOID	lpThreadParameter)
StartAddress:				; DATA XREF: .text:004D40A7o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, offset dword_5D40B8
		mov	esi, offset dword_607868
		mov	edi, offset dword_607864

loc_4D4019:				; CODE XREF: .text:004D401Dj
					; .text:004D4030j ...
		mov	eax, [ebx]
		test	eax, eax
		jz	short loc_4D4019
		cmp	dword ptr [edi], 0
		jz	short loc_4D4032
		push	0
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		xor	ecx, ecx
		mov	[edi], ecx
		jmp	short loc_4D4019
; ---------------------------------------------------------------------------

loc_4D4032:				; CODE XREF: .text:004D4022j
		cmp	dword ptr [esi], 0
		jz	short loc_4D4019
		push	0FFFFFFFFh
		mov	eax, [ebx]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+0Ch]
		test	eax, eax
		jnz	short loc_4D4051
		mov	dword_5D40B0, 1
		jmp	short loc_4D4056
; ---------------------------------------------------------------------------

loc_4D4051:				; CODE XREF: .text:004D4043j
		mov	dword_5D40B0, eax

loc_4D4056:				; CODE XREF: .text:004D404Fj
		xor	ecx, ecx
		mov	[esi], ecx
		mov	eax, hThread
		push	eax		; hThread
		call	SuspendThread
		jmp	short loc_4D4019
; ---------------------------------------------------------------------------
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		nop
		nop

loc_4D4070:				; CODE XREF: .text:loc_4D4F47p
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		cmp	dword_5D40B8, 0
		jnz	short loc_4D408D
		or	eax, 0FFFFFFFFh
		jmp	loc_4D410F
; ---------------------------------------------------------------------------

loc_4D4086:				; CODE XREF: .text:004D4094j
		push	0		; dwMilliseconds
		call	Sleep

loc_4D408D:				; CODE XREF: .text:004D407Cj
		cmp	dword_607868, 0
		jnz	short loc_4D4086
		cmp	hThread, 0
		jnz	short loc_4D40DA
		lea	edx, [ebp-4]
		push	edx		; lpThreadId
		push	0		; dwCreationFlags
		push	0		; lpParameter
		push	offset StartAddress ; lpStartAddress
		push	0		; dwStackSize
		push	0		; lpThreadAttributes
		call	CreateThread
		mov	ebx, eax
		mov	hThread, ebx
		test	ebx, ebx
		jnz	short loc_4D40C6
		or	eax, 0FFFFFFFFh
		jmp	short loc_4D410F
; ---------------------------------------------------------------------------

loc_4D40C6:				; CODE XREF: .text:004D40BFj
		push	2		; nPriority
		push	ebx		; hThread
		call	SetThreadPriority
		mov	edx, hThread
		push	edx		; hThread
		call	SuspendThread

loc_4D40DA:				; CODE XREF: .text:004D409Dj
		mov	dword_607864, 1
		mov	ecx, hThread
		push	ecx		; hThread
		call	ResumeThread
		jmp	short loc_4D40F9
; ---------------------------------------------------------------------------

loc_4D40F2:				; CODE XREF: .text:004D4100j
		push	0		; dwMilliseconds
		call	Sleep

loc_4D40F9:				; CODE XREF: .text:004D40F0j
		cmp	dword_607864, 0
		jnz	short loc_4D40F2
		mov	eax, hThread
		push	eax		; hThread
		call	SuspendThread
		xor	eax, eax

loc_4D410F:				; CODE XREF: .text:004D4081j
					; .text:004D40C4j
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D4114:				; CODE XREF: .text:0044AADFp
		push	ebp
		mov	ebp, esp
		push	ecx
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4D4126
		test	edx, edx
		jnz	short loc_4D412C

loc_4D4126:				; CODE XREF: .text:004D4120j
		or	eax, 0FFFFFFFFh
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D412C:				; CODE XREF: .text:004D4124j
		cmp	_imp__GetRequestedRuntimeVersion, 0
		jnz	short loc_4D413B
		or	eax, 0FFFFFFFFh
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D413B:				; CODE XREF: .text:004D4133j
		lea	ecx, [ebp-4]
		push	ecx
		push	100h
		push	edx
		push	eax
		call	_imp__GetRequestedRuntimeVersion
		test	eax, eax
		jz	short loc_4D4156
		or	eax, 0FFFFFFFFh
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D4156:				; CODE XREF: .text:004D414Ej
		xor	eax, eax
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D415C:				; CODE XREF: .text:0044AAF6p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	loc_4D421F
		cmp	word ptr [ebx],	0
		jz	loc_4D421F
		cmp	_imp__CreateDebuggingInterfaceFromVersion, 0
		jz	loc_4D421F
		cmp	dword_5D40B4, 0
		jnz	loc_4D421F
		push	offset dword_5D40B4
		push	ebx
		push	3
		call	_imp__CreateDebuggingInterfaceFromVersion
		test	eax, eax
		jnz	short loc_4D421F
		mov	eax, dword_5D40B4
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+0Ch]
		test	eax, eax
		jz	short loc_4D41C6
		mov	ecx, dword_5D40B4
		push	ecx
		mov	eax, [ecx]
		call	dword ptr [eax+10h]
		xor	edx, edx
		mov	dword_5D40B4, edx
		jmp	short loc_4D421F
; ---------------------------------------------------------------------------

loc_4D41C6:				; CODE XREF: .text:004D41AEj
		push	offset dword_618474
		mov	ecx, dword_5D40B4
		push	ecx
		mov	eax, [ecx]
		call	dword ptr [eax+14h]
		test	eax, eax
		jz	short loc_4D41F0
		mov	edx, dword_5D40B4
		push	edx
		mov	ecx, [edx]
		call	dword ptr [ecx+10h]
		xor	eax, eax
		mov	dword_5D40B4, eax
		jmp	short loc_4D421F
; ---------------------------------------------------------------------------

loc_4D41F0:				; CODE XREF: .text:004D41D9j
		push	offset dword_61847C
		mov	edx, dword_5D40B4
		push	edx
		mov	ecx, [edx]
		call	dword ptr [ecx+18h]
		test	eax, eax
		jz	short loc_4D421A
		mov	eax, dword_5D40B4
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		xor	ecx, ecx
		mov	dword_5D40B4, ecx
		jmp	short loc_4D421F
; ---------------------------------------------------------------------------

loc_4D421A:				; CODE XREF: .text:004D4203j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D421F:				; CODE XREF: .text:004D4165j
					; .text:004D416Fj ...
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4D4228@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int, int, int, int)
loc_4D4228:				; CODE XREF: .text:0044AB38p
		push	ebp		; arglist
		mov	ebp, esp
		mov	eax, dword_5D40B4
		test	eax, eax
		jnz	short loc_4D4239
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D4239:				; CODE XREF: .text:004D4232j
		push	offset dword_5D40B8
		push	0
		mov	edx, [ebp+20h]
		push	edx
		mov	ecx, [ebp+1Ch]
		push	ecx
		mov	edx, [ebp+18h]
		push	edx
		mov	ecx, [ebp+14h]
		push	ecx
		mov	edx, [ebp+10h]
		push	edx
		push	0
		push	0
		push	0
		mov	ecx, [ebp+0Ch]
		push	ecx
		mov	edx, [ebp+8]
		push	edx
		push	eax
		mov	eax, [eax]
		call	dword ptr [eax+1Ch]
		test	eax, eax
		jz	short loc_4D4271
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D4271:				; CODE XREF: .text:004D426Aj
		mov	edx, dword_5D40B8
		push	offset dword_5D40BC
		push	offset stru_575EBC
		push	edx
		mov	ecx, [edx]
		call	dword ptr [ecx]
		test	eax, eax
		jz	short loc_4D42A3
		push	offset aUnableToGet_ne ; "Unable to get	.NET debugging interface "...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		pop	ecx
		xor	eax, eax
		mov	dword_5D40BC, eax

loc_4D42A3:				; CODE XREF: .text:004D4288j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D42A8:				; CODE XREF: .text:loc_449FD8p
					; .text:0044AB4Dp
		push	ebp
		mov	ebp, esp
		mov	eax, dword_5D40BC
		test	eax, eax
		jz	short loc_4D42C2
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+8]
		xor	ecx, ecx
		mov	dword_5D40BC, ecx

loc_4D42C2:				; CODE XREF: .text:004D42B2j
		mov	eax, dword_5D40B4
		test	eax, eax
		jz	short loc_4D42D9
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		xor	ecx, ecx
		mov	dword_5D40B4, ecx

loc_4D42D9:				; CODE XREF: .text:004D42C9j
		xor	eax, eax
		mov	dword_5D40B8, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D42E4:				; CODE XREF: .text:0044A086p
		xor	eax, eax
		push	ebp
		mov	stru_60786C._nc,	eax
		mov	stru_60786C._ne,	eax
		mov	ebp, esp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D42F8:				; CODE XREF: .text:004513B1p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDD0h
		cmp	run.status, 11h
		push	ebx
		push	esi
		push	edi
		jnz	loc_4D45C1
		cmp	dword_5D40B0, 1
		jnz	loc_4D45C1
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		xor	eax, eax
		mov	dword_5D40B0, eax
		jmp	loc_4D45C1
; ---------------------------------------------------------------------------

loc_4D4332:				; CODE XREF: .text:004D45CCj
		mov	ebx, eax
		shl	ebx, 5
		add	ebx, eax
		lea	ebx, [eax+ebx*2]
		shl	ebx, 3
		add	ebx, offset stru_60786C
		mov	eax, [ebx]
		dec	eax
		jz	short loc_4D435C
		dec	eax
		jz	short loc_4D4382
		dec	eax
		jz	short loc_4D43B7
		dec	eax
		jz	loc_4D44DF
		jmp	loc_4D45AD
; ---------------------------------------------------------------------------

loc_4D435C:				; CODE XREF: .text:004D4348j
		lea	eax, [ebx+10h]
		test	eax, eax
		jz	loc_4D45AD
		push	eax		; arglist
		push	offset aS_40	; "%s"
		mov	edx, [ebx+8]
		push	edx		; color
		mov	ecx, [ebx+4]
		push	ecx		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	loc_4D45AD
; ---------------------------------------------------------------------------

loc_4D4382:				; CODE XREF: .text:004D434Bj
		mov	eax, [ebx+4]
		push	eax		; threadid
		call	Findthread
		pop	ecx
		test	eax, eax
		jz	loc_4D45AD
		or	dword ptr [eax+8], 20000h
		mov	eax, thread.hw
		test	eax, eax
		jz	loc_4D45AD
		push	0		; bErase
		push	0		; lpRect
		push	eax		; hWnd
		call	InvalidateRect
		jmp	loc_4D45AD
; ---------------------------------------------------------------------------

loc_4D43B7:				; CODE XREF: .text:004D434Ej
		mov	eax, [ebx+4]
		test	eax, eax
		jz	loc_4D45AD
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	loc_4D45AD
		push	0		; subaddr
		mov	edx, [ebx+4]
		push	edx		; _addr
		push	offset premod	; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_4D45AD
		push	218h		; n
		push	0		; c
		lea	ecx, [ebp-218h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	eax, [ebx+4]
		mov	[ebp-218h], eax
		mov	dword ptr [ebp-214h], 1
		mov	dword ptr [ebp-210h], 1000000h
		cmp	dword_5D5610, 0
		jnz	short loc_4D4432
		or	dword ptr [ebp-210h], 100h

loc_4D4432:				; CODE XREF: .text:004D4426j
		lea	edx, [ebp-214h]
		lea	ecx, [ebp-20Ch]
		push	edx
		push	ecx
		mov	eax, [ebp-218h]
		push	eax
		call	loc_4136A8
		add	esp, 0Ch
		add	ebx, 10h
		push	ebx		; src
		push	104h		; n
		lea	eax, [ebp-208h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		xor	ebx, ebx
		jmp	short loc_4D4487
; ---------------------------------------------------------------------------

loc_4D446B:				; CODE XREF: .text:004D448Dj
		push	0
		lea	eax, [ebp-218h]
		mov	edx, g_pPluginnotify
		push	0
		push	eax
		push	5
		mov	ecx, [edx+ebx*4]
		call	ecx
		add	esp, 10h
		inc	ebx

loc_4D4487:				; CODE XREF: .text:004D4469j
		cmp	ebx, g_nPluginnotify
		jl	short loc_4D446B
		lea	eax, [ebp-218h]
		push	eax
		call	loc_416C70
		pop	ecx
		test	eax, eax
		jz	loc_4D45AD
		lea	edx, [ebp-218h]
		push	edx		; item
		push	offset premod	; sd
		call	Addsorteddata
		add	esp, 8
		mov	eax, [ebp-20Ch]
		test	eax, eax
		jz	loc_4D45AD
		push	0
		push	1
		push	0
		push	2000h
		push	eax
		call	loc_44F6D0
		add	esp, 14h
		jmp	loc_4D45AD
; ---------------------------------------------------------------------------

loc_4D44DF:				; CODE XREF: .text:004D4351j
		mov	eax, [ebx+0Ch]
		test	eax, eax
		jz	loc_4D45AD
		mov	edi, eax
		xor	ebx, ebx
		jmp	loc_4D4579
; ---------------------------------------------------------------------------

loc_4D44F3:				; CODE XREF: .text:004D457Cj
		push	ebx		; index
		push	edi		; pdat
		call	Getsimpledatabyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_4D4578
		mov	eax, [esi+8]
		push	eax		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_4D4518
		or	dword ptr [eax+8], 2000000h

loc_4D4518:				; CODE XREF: .text:004D450Fj
		mov	edx, [esi+8]
		mov	[ebp-230h], edx
		lea	edx, [ebp-230h]	; int
		mov	ecx, [esi+0Ch]	; int
		mov	[ebp-22Ch], ecx
		mov	eax, [esi]	; int
		mov	[ebp-228h], eax
		push	edx		; data
		push	offset pdat	; pdat
		call	Addsimpledata
		add	esp, 8
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_4D4578
		mov	[ebp-224h], eax
		lea	eax, [ebp-224h]	; int
		mov	edx, [esi+4]	; int
		mov	[ebp-220h], edx
		mov	ecx, [esi+8]	; int
		mov	[ebp-21Ch], ecx
		push	eax		; data
		push	offset stru_5D4088 ; pdat
		call	Addsimpledata
		add	esp, 8

loc_4D4578:				; CODE XREF: .text:004D4501j
					; .text:004D454Aj
		inc	ebx

loc_4D4579:				; CODE XREF: .text:004D44EEj
		cmp	ebx, [edi+0Ch]
		jl	loc_4D44F3
		test	ebx, ebx
		jle	short loc_4D459F
		cmp	memory.hw, 0
		jz	short loc_4D459F
		push	0		; bErase
		push	0		; lpRect
		mov	edx, memory.hw
		push	edx		; hWnd
		call	InvalidateRect

loc_4D459F:				; CODE XREF: .text:004D4584j
					; .text:004D458Dj
		push	edi		; pdat
		call	Destroysimpledata
		pop	ecx
		push	edi		; data
		call	Memfree
		pop	ecx

loc_4D45AD:				; CODE XREF: .text:004D4357j
					; .text:004D4361j ...
		mov	eax, stru_60786C._nc
		inc	eax
		cmp	eax, 80h
		jl	short loc_4D45BC
		xor	eax, eax

loc_4D45BC:				; CODE XREF: .text:004D45B8j
		mov	stru_60786C._nc,	eax

loc_4D45C1:				; CODE XREF: .text:004D430Bj
					; .text:004D4318j ...
		mov	eax, stru_60786C._nc
		cmp	eax, stru_60786C._ne
		jnz	loc_4D4332
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D45DC:				; CODE XREF: .text:004B4EC1p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	edi, [ebp+8]
		push	edi		; _addr
		push	offset stru_5D4088 ; pdat
		call	Getsimpledataindexbyaddr
		add	esp, 8
		mov	ebx, eax
		push	ebx		; index
		push	offset stru_5D4088 ; pdat
		call	Getsimpledatabyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4D460E
		cmp	edi, [eax]
		jz	short loc_4D4638

loc_4D460E:				; CODE XREF: .text:004D4608j
		test	ebx, ebx
		jnz	short loc_4D4617
		or	eax, 0FFFFFFFFh
		jmp	short loc_4D4689
; ---------------------------------------------------------------------------

loc_4D4617:				; CODE XREF: .text:004D4610j
		dec	ebx
		push	ebx		; index
		push	offset stru_5D4088 ; pdat
		call	Getsimpledatabyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4D4633
		mov	edx, [eax]
		add	edx, [eax+4]
		cmp	edi, edx
		jb	short loc_4D4638

loc_4D4633:				; CODE XREF: .text:004D4628j
		or	eax, 0FFFFFFFFh
		jmp	short loc_4D4689
; ---------------------------------------------------------------------------

loc_4D4638:				; CODE XREF: .text:004D460Cj
					; .text:004D4631j
		mov	edx, [eax+8]
		test	edx, edx
		jnz	short loc_4D4644
		or	eax, 0FFFFFFFFh
		jmp	short loc_4D4689
; ---------------------------------------------------------------------------

loc_4D4644:				; CODE XREF: .text:004D463Dj
		test	esi, esi
		jnz	short loc_4D4657
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4D4653
		mov	ecx, [ebp+0Ch]
		mov	[ecx], edx

loc_4D4653:				; CODE XREF: .text:004D464Cj
		xor	eax, eax
		jmp	short loc_4D4689
; ---------------------------------------------------------------------------

loc_4D4657:				; CODE XREF: .text:004D4646j
		mov	edx, [eax+8]
		push	edx		; _addr
		push	offset pdat	; pdat
		call	Findsimpledata
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D4671
		or	eax, 0FFFFFFFFh
		jmp	short loc_4D4689
; ---------------------------------------------------------------------------

loc_4D4671:				; CODE XREF: .text:004D466Aj
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4D467E
		mov	edx, [eax]
		mov	ecx, [ebp+0Ch]
		mov	[ecx], edx

loc_4D467E:				; CODE XREF: .text:004D4675j
		test	esi, esi
		jz	short loc_4D4687
		mov	eax, [eax+4]
		mov	[esi], eax

loc_4D4687:				; CODE XREF: .text:004D4680j
		xor	eax, eax

loc_4D4689:				; CODE XREF: .text:004D4615j
					; .text:004D4636j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4D4690:				; CODE XREF: .text:00460FB6p
					; .text:004B4E35p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	edi, [ebp+8]
		push	edi		; _addr
		push	offset pdat	; pdat
		call	Getsimpledataindexbyaddr
		add	esp, 8
		mov	ebx, eax
		push	ebx		; index
		push	offset pdat	; pdat
		call	Getsimpledatabyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4D46C2
		cmp	edi, [eax]
		jz	short loc_4D46EC

loc_4D46C2:				; CODE XREF: .text:004D46BCj
		test	ebx, ebx
		jnz	short loc_4D46CB
		or	eax, 0FFFFFFFFh
		jmp	short loc_4D473D
; ---------------------------------------------------------------------------

loc_4D46CB:				; CODE XREF: .text:004D46C4j
		dec	ebx
		push	ebx		; index
		push	offset pdat	; pdat
		call	Getsimpledatabyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4D46E7
		mov	edx, [eax]
		add	edx, [eax+4]
		cmp	edi, edx
		jb	short loc_4D46EC

loc_4D46E7:				; CODE XREF: .text:004D46DCj
		or	eax, 0FFFFFFFFh
		jmp	short loc_4D473D
; ---------------------------------------------------------------------------

loc_4D46EC:				; CODE XREF: .text:004D46C0j
					; .text:004D46E5j
		mov	edx, [eax+8]
		test	edx, edx
		jnz	short loc_4D46F8
		or	eax, 0FFFFFFFFh
		jmp	short loc_4D473D
; ---------------------------------------------------------------------------

loc_4D46F8:				; CODE XREF: .text:004D46F1j
		test	esi, esi
		jnz	short loc_4D470B
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4D4707
		mov	ecx, [ebp+0Ch]
		mov	[ecx], edx

loc_4D4707:				; CODE XREF: .text:004D4700j
		xor	eax, eax
		jmp	short loc_4D473D
; ---------------------------------------------------------------------------

loc_4D470B:				; CODE XREF: .text:004D46FAj
		mov	edx, [eax+8]
		push	edx		; _addr
		push	offset stru_5D4088 ; pdat
		call	Findsimpledata
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D4725
		or	eax, 0FFFFFFFFh
		jmp	short loc_4D473D
; ---------------------------------------------------------------------------

loc_4D4725:				; CODE XREF: .text:004D471Ej
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4D4732
		mov	edx, [eax]
		mov	ecx, [ebp+0Ch]
		mov	[ecx], edx

loc_4D4732:				; CODE XREF: .text:004D4729j
		test	esi, esi
		jz	short loc_4D473B
		mov	eax, [eax+4]
		mov	[esi], eax

loc_4D473B:				; CODE XREF: .text:004D4734j
		xor	eax, eax

loc_4D473D:				; CODE XREF: .text:004D46C9j
					; .text:004D46EAj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D4744:				; CODE XREF: .text:004D4F9Bj
					; .text:004D5009j
					; DATA XREF: ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		mov	[ebp-4], esi
		push	10h		; n
		push	(offset	a123456789abcde+0Fh) ; s2
		mov	eax, [ebp-4]
		push	eax		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4D4774
		mov	[edi], ebx
		jmp	short loc_4D47DF
; ---------------------------------------------------------------------------

loc_4D4774:				; CODE XREF: .text:004D476Ej
		mov	[ebp-8], esi
		push	10h		; n
		push	offset stru_575E8C ; s2
		mov	edx, [ebp-8]
		push	edx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4D4792
		mov	[edi], ebx
		jmp	short loc_4D47DF
; ---------------------------------------------------------------------------

loc_4D4792:				; CODE XREF: .text:004D478Cj
		mov	[ebp-0Ch], esi
		push	10h		; n
		push	offset stru_575E9C ; s2
		mov	ecx, [ebp-0Ch]
		push	ecx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4D47B3
		lea	eax, [ebx+4]
		mov	[edi], eax
		jmp	short loc_4D47DF
; ---------------------------------------------------------------------------

loc_4D47B3:				; CODE XREF: .text:004D47AAj
		mov	[ebp-10h], esi
		push	10h		; n
		push	offset stru_575EAC ; s2
		mov	edx, [ebp-10h]
		push	edx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4D47D4
		lea	ecx, [ebx+8]
		mov	[edi], ecx
		jmp	short loc_4D47DF
; ---------------------------------------------------------------------------

loc_4D47D4:				; CODE XREF: .text:004D47CBj
		xor	eax, eax
		mov	[edi], eax
		mov	eax, 80004002h
		jmp	short loc_4D47E7
; ---------------------------------------------------------------------------

loc_4D47DF:				; CODE XREF: .text:004D4772j
					; .text:004D4790j ...
		push	ebx
		mov	edx, [ebx]
		call	dword ptr [edx+4]
		xor	eax, eax

loc_4D47E7:				; CODE XREF: .text:004D47DDj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------

loc_4D47F0:				; CODE XREF: .text:004D4F91j
					; .text:004D4FFFj
					; DATA XREF: ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		add	ebx, 0Ch
		push	ebx		; lpAddend
		call	InterlockedIncrement
		pop	ebx
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 4

loc_4D4808:				; CODE XREF: .text:004D4F87j
					; .text:004D4FF5j
					; DATA XREF: ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		add	ebx, 0Ch
		push	ebx		; lpAddend
		call	InterlockedIncrement
		pop	ebx
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 10h

loc_4D4820:				; DATA XREF: .data:0057618Co
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		xor	eax, eax
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

loc_4D4838:				; DATA XREF: .data:00576190o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	14h
; ---------------------------------------------------------------------------
		align 4

loc_4D4854:				; DATA XREF: .data:00576194o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		xor	eax, eax
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 4

loc_4D486C:				; DATA XREF: .data:00576198o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

loc_4D4888:				; DATA XREF: .data:0057619Co
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

loc_4D48A4:				; DATA XREF: .data:005761A0o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 10h

loc_4D48C0:				; DATA XREF: .data:005761A4o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		xor	eax, eax
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------
		align 4

loc_4D48D8:				; DATA XREF: .data:005761A8o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		xor	eax, eax
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------
		align 10h

loc_4D48F0:				; DATA XREF: .data:005761ACo
		push	ebp
		mov	ebp, esp
		mov	edx, dword_5D40B8
		push	ecx
		lea	eax, [ebp-4]
		push	eax
		push	edx
		mov	ecx, [edx]
		call	dword ptr [ecx+74h]
		test	eax, eax
		jnz	short loc_4D491C
		push	0
		push	0
		push	0
		mov	eax, [ebp-4]
		push	eax
		push	2
		call	loc_4D3EF4
		add	esp, 14h

loc_4D491C:				; CODE XREF: .text:004D4906j
		push	0
		mov	edx, dword_5D40B8
		push	edx
		mov	ecx, [edx]
		call	dword ptr [ecx+10h]
		xor	eax, eax
		pop	ecx
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 4

loc_4D4934:				; DATA XREF: .data:005761B0o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 10h

loc_4D4950:				; DATA XREF: .data:005761B4o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDACh
		push	ebx
		push	esi
		push	edi
		push	1
		push	1
		mov	eax, [ebp+10h]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+1Ch]
		lea	ecx, [ebp-244h]
		push	ecx
		lea	eax, [ebp-0Ch]
		push	eax
		push	104h
		mov	edx, [ebp+10h]
		push	edx
		mov	ecx, [edx]
		call	dword ptr [ecx+18h]
		test	eax, eax
		jz	short loc_4D498F
		mov	word ptr [ebp-244h], 0

loc_4D498F:				; CODE XREF: .text:004D4984j
		lea	eax, [ebp-30h]
		push	eax
		mov	edx, [ebp+10h]
		push	edx
		mov	ecx, [edx]
		call	dword ptr [ecx+10h]
		test	eax, eax
		jz	short loc_4D49AE
		mov	dword ptr [ebp-30h], 0
		mov	dword ptr [ebp-2Ch], 0

loc_4D49AE:				; CODE XREF: .text:004D499Ej
		lea	eax, [ebp-28h]
		push	eax
		mov	edx, [ebp+10h]
		push	edx
		mov	ecx, [edx]
		call	dword ptr [ecx+4Ch]
		test	eax, eax
		jz	short loc_4D49C4
		xor	eax, eax
		mov	[ebp-28h], eax

loc_4D49C4:				; CODE XREF: .text:004D49BDj
		lea	edx, [ebp-244h]
		push	edx
		push	0
		mov	ecx, [ebp-28h]
		push	ecx
		mov	eax, [ebp-30h]
		push	eax
		push	3
		call	loc_4D3EF4
		add	esp, 14h
		push	3		; flags
		push	14h		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0
		jz	loc_4D4C5C
		push	10h		; itemsize
		mov	edx, [ebp-24h]
		push	edx		; pdat
		call	Createsimpledata
		add	esp, 8
		test	eax, eax
		jnz	loc_4D4C5C
		xor	ecx, ecx	; int
		mov	[ebp-4], ecx
		mov	dword ptr [ebp-10h], 100h
		push	1		; flags
		mov	eax, [ebp-10h]
		shl	eax, 2
		lea	eax, [eax+eax*2] ; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4D4A3B
		mov	dword ptr [ebp-4], 1

loc_4D4A3B:				; CODE XREF: .text:004D4A32j
		mov	dword ptr [ebp-8], 6000001h
		test	edi, edi
		jz	loc_4D4C3A

loc_4D4A4A:				; CODE XREF: .text:004D4C34j
		lea	eax, [ebp-34h]
		push	eax
		mov	edx, [ebp-8]
		push	edx
		mov	ecx, [ebp+10h]
		push	ecx
		mov	eax, [ecx]
		call	dword ptr [eax+24h]
		test	eax, eax
		jnz	loc_4D4C3A
		lea	edx, [ebp-38h]
		push	edx
		mov	ecx, [ebp-34h]
		push	ecx
		mov	eax, [ecx]
		call	dword ptr [eax+18h]
		test	eax, eax
		jz	short loc_4D4A80
		mov	dword ptr [ebp-4], 1
		jmp	loc_4D4C2F
; ---------------------------------------------------------------------------

loc_4D4A80:				; CODE XREF: .text:004D4A72j
		lea	edx, [ebp-30h]
		push	edx
		mov	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ecx]
		call	dword ptr [eax+14h]
		test	eax, eax
		jz	short loc_4D4A9D
		mov	dword ptr [ebp-4], 1
		jmp	loc_4D4C2F
; ---------------------------------------------------------------------------

loc_4D4A9D:				; CODE XREF: .text:004D4A8Fj
		mov	eax, [ebp-30h]
		lea	edx, [ebp-18h]
		mov	[ebp-1Ch], eax
		push	edx
		mov	ecx, [ebp-38h]
		push	ecx
		mov	eax, [ecx]
		call	dword ptr [eax+18h]
		test	eax, eax
		jz	short loc_4D4AC0
		mov	dword ptr [ebp-4], 1
		jmp	loc_4D4C2F
; ---------------------------------------------------------------------------

loc_4D4AC0:				; CODE XREF: .text:004D4AB2j
		lea	edx, [ebp-3Ch]
		push	edx
		mov	ecx, [ebp-34h]
		push	ecx
		mov	eax, [ecx]
		call	dword ptr [eax+1Ch]
		test	eax, eax
		jz	short loc_4D4ADD
		mov	dword ptr [ebp-4], 1
		jmp	loc_4D4C2F
; ---------------------------------------------------------------------------

loc_4D4ADD:				; CODE XREF: .text:004D4ACFj
		lea	edx, [ebp-30h]
		push	edx
		mov	ecx, [ebp-3Ch]
		push	ecx
		mov	eax, [ecx]
		call	dword ptr [eax+14h]
		test	eax, eax
		jz	short loc_4D4AFA
		mov	dword ptr [ebp-4], 1
		jmp	loc_4D4C2F
; ---------------------------------------------------------------------------

loc_4D4AFA:				; CODE XREF: .text:004D4AECj
		mov	eax, [ebp-30h]
		lea	edx, [ebp-14h]
		mov	[ebp-20h], eax
		push	edi
		push	edx
		mov	ecx, [ebp-10h]
		push	ecx
		mov	eax, [ebp-3Ch]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+28h]
		test	eax, eax
		jz	short loc_4D4B22
		mov	dword ptr [ebp-4], 1
		jmp	loc_4D4C2F
; ---------------------------------------------------------------------------

loc_4D4B22:				; CODE XREF: .text:004D4B14j
		mov	ecx, [ebp-14h]	; int
		cmp	ecx, [ebp-10h]
		jbe	short loc_4D4B81
		push	1		; flags
		mov	eax, [ebp-14h]
		shl	eax, 2
		lea	eax, [eax+eax*2] ; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4D4B50
		mov	dword ptr [ebp-4], 1
		jmp	loc_4D4C2F
; ---------------------------------------------------------------------------

loc_4D4B50:				; CODE XREF: .text:004D4B42j
		push	edi		; data
		call	Memfree
		pop	ecx
		mov	eax, [ebp-14h]
		mov	[ebp-10h], eax
		mov	edi, ebx
		push	edi
		lea	edx, [ebp-14h]
		push	edx
		mov	ecx, [ebp-10h]
		push	ecx
		mov	eax, [ebp-3Ch]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+28h]
		test	eax, eax
		jz	short loc_4D4B81
		mov	dword ptr [ebp-4], 1
		jmp	loc_4D4C2F
; ---------------------------------------------------------------------------

loc_4D4B81:				; CODE XREF: .text:004D4B28j
					; .text:004D4B73j
		push	offset loc_4D3F90 ; _DWORD
		push	0Ch		; size
		mov	ecx, [ebp-14h]
		push	ecx		; count
		push	edi		; data
		call	Heapsort
		add	esp, 10h
		xor	esi, esi
		mov	ebx, edi
		cmp	esi, [ebp-14h]
		jnb	loc_4D4C2F

loc_4D4BA2:				; CODE XREF: .text:004D4C29j
		cmp	dword ptr [ebx], 0FFFFFFFFh
		jz	short loc_4D4C22
		mov	edx, [ebp-20h]
		mov	eax, [ebx+4]
		add	edx, eax
		mov	[ebp-24Ch], edx
		mov	ecx, [ebx+8]
		sub	ecx, eax
		mov	[ebp-248h], ecx
		mov	eax, [ebx]
		cmp	eax, 0FFFFFFFEh
		jz	short loc_4D4BCC
		cmp	eax, 0FFFFFFFDh
		jnz	short loc_4D4BDE

loc_4D4BCC:				; CODE XREF: .text:004D4BC5j
		xor	edx, edx
		mov	[ebp-254h], edx
		xor	ecx, ecx
		mov	[ebp-250h], ecx
		jmp	short loc_4D4C0F
; ---------------------------------------------------------------------------

loc_4D4BDE:				; CODE XREF: .text:004D4BCAj
		mov	edx, [ebp-1Ch]
		add	edx, eax
		mov	[ebp-254h], edx
		lea	eax, [esi+1]
		cmp	eax, [ebp-14h]
		jnb	short loc_4D4C04
		cmp	dword ptr [ebx+0Ch], 0
		jle	short loc_4D4C04
		mov	ecx, [ebx+0Ch]
		sub	ecx, [ebx]
		mov	[ebp-250h], ecx
		jmp	short loc_4D4C0F
; ---------------------------------------------------------------------------

loc_4D4C04:				; CODE XREF: .text:004D4BEFj
					; .text:004D4BF5j
		mov	eax, [ebp-18h]
		sub	eax, [ebx]	; int
		mov	[ebp-250h], eax

loc_4D4C0F:				; CODE XREF: .text:004D4BDCj
					; .text:004D4C02j
		lea	edx, [ebp-254h]	; int
		push	edx		; data
		mov	ecx, [ebp-24h]	; int
		push	ecx		; pdat
		call	Addsimpledata
		add	esp, 8

loc_4D4C22:				; CODE XREF: .text:004D4BA5j
		inc	esi
		add	ebx, 0Ch
		cmp	esi, [ebp-14h]
		jb	loc_4D4BA2

loc_4D4C2F:				; CODE XREF: .text:004D4A7Bj
					; .text:004D4A98j ...
		inc	dword ptr [ebp-8]
		test	edi, edi
		jnz	loc_4D4A4A

loc_4D4C3A:				; CODE XREF: .text:004D4A44j
					; .text:004D4A5Dj
		push	edi		; data
		call	Memfree
		pop	ecx
		lea	eax, [ebp-244h]
		push	eax
		mov	edx, [ebp-24h]
		push	edx
		push	0
		mov	ecx, [ebp-4]
		push	ecx
		push	4
		call	loc_4D3EF4
		add	esp, 14h

loc_4D4C5C:				; CODE XREF: .text:004D49F2j
					; .text:004D4A08j
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		xor	eax, eax
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------

loc_4D4C74:				; DATA XREF: .data:005761B8o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 10h

loc_4D4C90:				; DATA XREF: .data:005761BCo
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 4

loc_4D4CAC:				; DATA XREF: .data:005761C0o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 4

loc_4D4CC8:				; DATA XREF: .data:005761C4o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

loc_4D4CE4:				; DATA XREF: .data:005761C8o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	18h
; ---------------------------------------------------------------------------
		align 10h

loc_4D4D00:				; DATA XREF: .data:005761CCo
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	1Ch
; ---------------------------------------------------------------------------
		align 4

loc_4D4D1C:				; DATA XREF: .data:005761D0o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+54h]
		push	0
		mov	ecx, dword_5D40B8
		push	ecx
		mov	eax, [ecx]
		call	dword ptr [eax+10h]
		xor	eax, eax
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------

loc_4D4D3C:				; DATA XREF: .data:005761D4o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 4

loc_4D4D58:				; DATA XREF: .data:005761D8o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		xor	eax, eax
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 10h

loc_4D4D70:				; DATA XREF: .data:005761DCo
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 4

loc_4D4D8C:				; DATA XREF: .data:005761E0o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------
		align 4

loc_4D4DA8:				; DATA XREF: .data:005761E4o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		xor	eax, eax
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 10h

loc_4D4DC0:				; DATA XREF: .data:005761E8o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

loc_4D4DDC:				; DATA XREF: .data:005761ECo
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	14h
; ---------------------------------------------------------------------------
		align 4

loc_4D4DF8:				; DATA XREF: .data:005761F0o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	14h
; ---------------------------------------------------------------------------
		align 4

loc_4D4E14:				; CODE XREF: .text:004D4FD7j
					; DATA XREF: .data:005761F4o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 10h

loc_4D4E30:				; CODE XREF: .text:004D4FE1j
					; DATA XREF: .data:005761F8o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

loc_4D4E4C:				; CODE XREF: .text:004D4FCDj
					; DATA XREF: .data:005761FCo
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 4

loc_4D4E68:				; CODE XREF: .text:004D4FC3j
					; DATA XREF: .data:00576200o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	1Ch
; ---------------------------------------------------------------------------
		align 4

loc_4D4E84:				; CODE XREF: .text:004D4FB9j
					; DATA XREF: .data:00576204o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	14h
; ---------------------------------------------------------------------------
		align 10h

loc_4D4EA0:				; CODE XREF: .text:004D4FAFj
					; DATA XREF: .data:00576208o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

loc_4D4EBC:				; CODE XREF: .text:004D4FEBj
					; DATA XREF: .data:0057620Co
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		mov	eax, 80004001h
		pop	ebp
		retn	18h
; ---------------------------------------------------------------------------
		align 4

loc_4D4ED8:				; CODE XREF: .text:004D4FA5j
					; DATA XREF: .data:00576210o
		push	ebp
		mov	ebp, esp
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+10h]
		xor	eax, eax
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 10h

; int __stdcall	loc_4D4EF0(int,	void *src, int)
loc_4D4EF0:				; CODE XREF: .text:004D4F7Dj
					; DATA XREF: .data:00576214o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+0Ch]
		push	60h		; n
		push	ebx		; src
		push	offset run.de	; dest
		call	_memcpy
		add	esp, 0Ch
		mov	run.netevent, 103h
		jmp	short loc_4D4F1A
; ---------------------------------------------------------------------------

loc_4D4F13:				; CODE XREF: .text:004D4F24j
		push	0		; dwMilliseconds
		call	Sleep

loc_4D4F1A:				; CODE XREF: .text:004D4F11j
		cmp	run.netevent, 103h
		jz	short loc_4D4F13
		cmp	dword ptr [ebx], 1
		jnz	short loc_4D4F4E
		cmp	run.netevent, 10002h
		jnz	short loc_4D4F47
		mov	edx, dword_5D40B8
		mov	eax, [ebx+8]
		push	eax
		push	edx
		mov	ecx, [edx]
		call	dword ptr [ecx+5Ch]

loc_4D4F47:				; CODE XREF: .text:004D4F35j
		call	loc_4D4070
		jmp	short loc_4D4F6E
; ---------------------------------------------------------------------------

loc_4D4F4E:				; CODE XREF: .text:004D4F29j
		mov	edx, dword_5D40B8
		mov	eax, [ebx+8]
		push	eax
		push	edx
		mov	ecx, [edx]
		call	dword ptr [ecx+5Ch]
		mov	edx, dword_5D40B8
		mov	eax, [ebp+10h]
		push	eax
		push	edx
		mov	ecx, [edx]
		call	dword ptr [ecx+10h]

loc_4D4F6E:				; CODE XREF: .text:004D4F4Cj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 4

loc_4D4F78:				; DATA XREF: .data:00576250o
		add	dword ptr [esp+4], 0FFFFFFF8h
		jmp	loc_4D4EF0
; ---------------------------------------------------------------------------

loc_4D4F82:				; DATA XREF: .data:0057624Co
		add	dword ptr [esp+4], 0FFFFFFF8h
		jmp	loc_4D4808
; ---------------------------------------------------------------------------

loc_4D4F8C:				; DATA XREF: .data:00576248o
		add	dword ptr [esp+4], 0FFFFFFF8h
		jmp	loc_4D47F0
; ---------------------------------------------------------------------------

loc_4D4F96:				; DATA XREF: .data:off_576244o
		add	dword ptr [esp+4], 0FFFFFFF8h
		jmp	loc_4D4744
; ---------------------------------------------------------------------------

loc_4D4FA0:				; DATA XREF: .data:00576240o
		add	dword ptr [esp+4], 0FFFFFFFCh
		jmp	loc_4D4ED8
; ---------------------------------------------------------------------------

loc_4D4FAA:				; DATA XREF: .data:0057623Co
		add	dword ptr [esp+4], 0FFFFFFFCh
		jmp	loc_4D4EA0
; ---------------------------------------------------------------------------

loc_4D4FB4:				; DATA XREF: .data:00576238o
		add	dword ptr [esp+4], 0FFFFFFFCh
		jmp	loc_4D4E84
; ---------------------------------------------------------------------------

loc_4D4FBE:				; DATA XREF: .data:00576234o
		add	dword ptr [esp+4], 0FFFFFFFCh
		jmp	loc_4D4E68
; ---------------------------------------------------------------------------

loc_4D4FC8:				; DATA XREF: .data:00576230o
		add	dword ptr [esp+4], 0FFFFFFFCh
		jmp	loc_4D4E4C
; ---------------------------------------------------------------------------

loc_4D4FD2:				; DATA XREF: .data:0057622Co
		add	dword ptr [esp+4], 0FFFFFFFCh
		jmp	loc_4D4E14
; ---------------------------------------------------------------------------

loc_4D4FDC:				; DATA XREF: .data:00576228o
		add	dword ptr [esp+4], 0FFFFFFFCh
		jmp	loc_4D4E30
; ---------------------------------------------------------------------------

loc_4D4FE6:				; DATA XREF: .data:00576224o
		add	dword ptr [esp+4], 0FFFFFFFCh
		jmp	loc_4D4EBC
; ---------------------------------------------------------------------------

loc_4D4FF0:				; DATA XREF: .data:00576220o
		add	dword ptr [esp+4], 0FFFFFFFCh
		jmp	loc_4D4808
; ---------------------------------------------------------------------------

loc_4D4FFA:				; DATA XREF: .data:0057621Co
		add	dword ptr [esp+4], 0FFFFFFFCh
		jmp	loc_4D47F0
; ---------------------------------------------------------------------------

loc_4D5004:				; DATA XREF: .data:off_576218o
		add	dword ptr [esp+4], 0FFFFFFFCh
		jmp	loc_4D4744
; ---------------------------------------------------------------------------
		align 10h

loc_4D5010:				; CODE XREF: .text:004D5555p
					; .text:004D567Ep
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		mov	ecx, [eax]
		cmp	ecx, [edx]
		jnz	short loc_4D5061
		mov	ecx, [eax+0Ch]
		cmp	ecx, [edx+0Ch]
		jnz	short loc_4D5061
		mov	ecx, [eax+10h]
		test	ecx, ecx
		jz	short loc_4D5039
		cmp	dword ptr [edx+10h], 0
		jz	short loc_4D5039
		cmp	ecx, [edx+10h]
		jnz	short loc_4D5061

loc_4D5039:				; CODE XREF: .text:004D502Cj
					; .text:004D5032j
		mov	ecx, [eax+14h]
		cmp	ecx, [edx+14h]
		jnz	short loc_4D5061
		mov	ecx, [eax+18h]
		cmp	ecx, [edx+18h]
		jnz	short loc_4D5061
		mov	ecx, [eax+1Ch]
		cmp	ecx, [edx+1Ch]
		jnz	short loc_4D5061
		mov	ecx, [eax+20h]
		cmp	ecx, [edx+20h]
		jnz	short loc_4D5061
		mov	eax, [eax+24h]
		cmp	eax, [edx+24h]
		jz	short loc_4D5065

loc_4D5061:				; CODE XREF: .text:004D501Dj
					; .text:004D5025j ...
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D5065:				; CODE XREF: .text:004D505Fj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D506C:				; CODE XREF: .text:004D5142p
					; .text:004D5AE4p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFB8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+8]
		push	20h		; maxlen
		lea	eax, [ebx+458h]
		push	eax		; src
		lea	edx, [ebp-48h]
		push	edx		; dest
		call	_wcsncpy
		mov	dword ptr [ebp-8], 1Eh
		mov	ecx, [ebp+0Ch]
		add	esp, 0Ch
		cmp	ecx, [ebp-8]
		jge	short loc_4D50A4
		lea	eax, [ebp+0Ch]
		jmp	short loc_4D50A7
; ---------------------------------------------------------------------------

loc_4D50A4:				; CODE XREF: .text:004D509Dj
		lea	eax, [ebp-8]

loc_4D50A7:				; CODE XREF: .text:004D50A2j
		mov	edx, [eax]
		mov	[ebp-4], edx
		cmp	dword ptr [ebp-4], 1
		jle	short loc_4D50DE
		mov	ecx, [ebp-4]
		cmp	word ptr [ebp+ecx*2-4Ch], 1Bh
		jnz	short loc_4D50C9
		mov	eax, [ebp-4]
		mov	word ptr [ebp+eax*2-4Ch], 19h
		jmp	short loc_4D50DE
; ---------------------------------------------------------------------------

loc_4D50C9:				; CODE XREF: .text:004D50BBj
		mov	edx, [ebp-4]
		cmp	word ptr [ebp+edx*2-4Ch], 1Ch
		jnz	short loc_4D50DE
		mov	ecx, [ebp-4]
		mov	word ptr [ebp+ecx*2-4Ch], 1

loc_4D50DE:				; CODE XREF: .text:004D50B0j
					; .text:004D50C7j ...
		mov	eax, [ebx+48h]
		mov	edx, [ebp-4]
		lea	esi, [ebp+edx*2-4Ah]
		test	eax, eax
		jl	short loc_4D5153

loc_4D50EC:				; CODE XREF: .text:004D5151j
		push	eax		; index
		push	offset win.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4D5153
		mov	[ebx+50h], edi
		inc	edi
		mov	eax, [ebp+0Ch]
		mov	[ebx+54h], eax
		cmp	dword ptr [ebp-4], 0
		jle	short loc_4D5128
		cmp	dword ptr [ebx+4Ch], 0
		jl	short loc_4D511D
		mov	word ptr [esi],	1Bh
		jmp	short loc_4D5122
; ---------------------------------------------------------------------------

loc_4D511D:				; CODE XREF: .text:004D5114j
		mov	word ptr [esi],	1Ch

loc_4D5122:				; CODE XREF: .text:004D511Bj
		mov	word ptr [esi+2], 0

loc_4D5128:				; CODE XREF: .text:004D510Ej
		lea	edx, [ebp-48h]
		push	edx		; src
		lea	ecx, [ebx+458h]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8
		push	edi
		mov	eax, [ebp+0Ch]
		inc	eax
		push	eax
		push	ebx
		call	loc_4D506C
		add	esp, 0Ch
		mov	edi, eax
		mov	eax, [ebx+4Ch]
		test	eax, eax
		jge	short loc_4D50EC

loc_4D5153:				; CODE XREF: .text:004D50EAj
					; .text:004D50FEj
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D515C:				; DATA XREF: .data:stru_576254o
		push	ebp
		mov	ebp, esp
		cmp	win.sorted.n, 0
		jz	short loc_4D5171
		cmp	win.sorted.selected, 0
		jge	short loc_4D517A

loc_4D5171:				; CODE XREF: .text:004D5166j
		xor	eax, eax
		mov	dword_618484, eax
		jmp	short loc_4D5193
; ---------------------------------------------------------------------------

loc_4D517A:				; CODE XREF: .text:004D516Fj
		mov	edx, win.sorted.selected
		push	edx		; index
		push	offset win.sorted ; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	dword_618484, eax

loc_4D5193:				; CODE XREF: .text:004D5178j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4D519C:				; DATA XREF: .data:stru_576254o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		test	eax, eax
		jnz	short loc_4D51C0
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4D51B5
		cmp	process, 0
		jnz	short loc_4D51B9

loc_4D51B5:				; CODE XREF: .text:004D51AAj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D51B9:				; CODE XREF: .text:004D51B3j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D51C0:				; CODE XREF: .text:004D51A4j
		dec	eax
		jnz	short loc_4D51E6
		push	offset win.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		call	loc_4D56BC
		mov	edx, win.sorted.version
		mov	eax, 1
		mov	win.version, edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4D51E6:				; CODE XREF: .text:004D51C1j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC loc_4D51EC
loc_4D51EC:				; DATA XREF: .text:004D656Ao
					; .text:004D658Fo ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+14h]
		cmp	dword_618484, 0
		jnz	short loc_4D5201
		xor	eax, eax
		jmp	short loc_4D5254
; ---------------------------------------------------------------------------

loc_4D5201:				; CODE XREF: .text:004D51FBj
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4D5212
		mov	edx, dword_618484
		mov	ebx, [edx+10h]
		jmp	short loc_4D521A
; ---------------------------------------------------------------------------

loc_4D5212:				; CODE XREF: .text:004D5205j
		mov	eax, dword_618484
		mov	ebx, [eax+24h]

loc_4D521A:				; CODE XREF: .text:004D5210j
		test	ebx, ebx
		jz	short loc_4D5229
		push	ebx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4D522D

loc_4D5229:				; CODE XREF: .text:004D521Cj
		xor	eax, eax
		jmp	short loc_4D5254
; ---------------------------------------------------------------------------

loc_4D522D:				; CODE XREF: .text:004D5227j
		test	esi, esi
		jnz	short loc_4D5238
		mov	eax, 1
		jmp	short loc_4D5254
; ---------------------------------------------------------------------------

loc_4D5238:				; CODE XREF: .text:004D522Fj
		dec	esi
		jnz	short loc_4D5252
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	ebx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		xor	eax, eax
		jmp	short loc_4D5254
; ---------------------------------------------------------------------------

loc_4D5252:				; CODE XREF: .text:004D5239j
		xor	eax, eax

loc_4D5254:				; CODE XREF: .text:004D51FFj
					; .text:004D522Bj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __usercall loc_4D5258@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4D5258:				; DATA XREF: .data:stru_576254o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	ebx, [ebp+10h]
		mov	edi, [ebp+8]
		cmp	dword_618484, 0
		jnz	short loc_4D5277
		xor	eax, eax
		jmp	loc_4D5453
; ---------------------------------------------------------------------------

loc_4D5277:				; CODE XREF: .text:004D526Ej
		test	bl, 10h
		jnz	short loc_4D5287
		mov	edx, dword_618484
		mov	ecx, [edx+10h]
		jmp	short loc_4D528F
; ---------------------------------------------------------------------------

loc_4D5287:				; CODE XREF: .text:004D527Aj
		mov	eax, dword_618484
		mov	ecx, [eax+24h]

loc_4D528F:				; CODE XREF: .text:004D5285j
		mov	[ebp-4], ecx
		and	ebx, 3
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4D52A9
		mov	edx, [ebp-4]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4D52B0

loc_4D52A9:				; CODE XREF: .text:004D5299j
		xor	eax, eax
		jmp	loc_4D5453
; ---------------------------------------------------------------------------

loc_4D52B0:				; CODE XREF: .text:004D52A7j
		push	0		; subaddr
		mov	edx, [ebp-4]
		push	edx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4D5300
		test	ebx, ebx
		jnz	short loc_4D52E0
		test	esi, esi
		jz	short loc_4D52E0
		test	byte ptr [esi+9], 10h
		jz	short loc_4D52E0
		xor	eax, eax
		jmp	loc_4D5453
; ---------------------------------------------------------------------------

loc_4D52E0:				; CODE XREF: .text:004D52CDj
					; .text:004D52D1j ...
		cmp	ebx, 3
		jnz	short loc_4D52F6
		test	esi, esi
		jz	short loc_4D52EF
		test	byte ptr [esi+9], 10h
		jnz	short loc_4D52F6

loc_4D52EF:				; CODE XREF: .text:004D52E7j
		xor	eax, eax
		jmp	loc_4D5453
; ---------------------------------------------------------------------------

loc_4D52F6:				; CODE XREF: .text:004D52E3j
					; .text:004D52EDj
		mov	eax, 1
		jmp	loc_4D5453
; ---------------------------------------------------------------------------

loc_4D5300:				; CODE XREF: .text:004D52C9j
		cmp	dword ptr [ebp+14h], 1
		jnz	loc_4D5451
		test	esi, esi
		jnz	short loc_4D5323
		mov	edx, [ebp-4]
		push	edx		; _addr
		call	Confirmint3breakpoint
		pop	ecx
		test	eax, eax
		jz	short loc_4D5323
		xor	eax, eax
		jmp	loc_4D5453
; ---------------------------------------------------------------------------

loc_4D5323:				; CODE XREF: .text:004D530Cj
					; .text:004D531Aj
		test	ebx, ebx
		jz	short loc_4D532C
		cmp	ebx, 3
		jnz	short loc_4D5395

loc_4D532C:				; CODE XREF: .text:004D5325j
		test	esi, esi
		jz	short loc_4D534C
		test	byte ptr [esi+9], 10h
		jz	short loc_4D534C
		push	1000h		; type
		mov	edx, [ebp-4]
		push	edx		; _addr
		call	Removeint3breakpoint
		add	esp, 8
		jmp	loc_4D544A
; ---------------------------------------------------------------------------

loc_4D534C:				; CODE XREF: .text:004D532Ej
					; .text:004D5334j
		push	offset word_5763A4 ; exprtype
		push	offset word_5763A4 ; expression
		push	offset word_5763A4 ; condition
		push	0		; actions
		push	0		; count
		push	0		; limit
		push	0		; fnindex
		push	3001000h	; type
		mov	ecx, [ebp-4]
		push	ecx		; _addr
		call	Setint3breakpoint
		add	esp, 24h
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4D544A
		push	offset aUnableToSet_11 ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_4D544A
; ---------------------------------------------------------------------------

loc_4D5395:				; CODE XREF: .text:004D532Aj
		lea	eax, [ebp-0Ch]
		push	eax		; coord
		push	2		; column
		push	edi		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4D53B1
		or	edx, 0FFFFFFFFh
		mov	[ebp-8], edx
		mov	[ebp-0Ch], edx

loc_4D53B1:				; CODE XREF: .text:004D53A6j
		cmp	ebx, 1
		jnz	short loc_4D53E0
		mov	eax, [edi+234h]
		lea	edx, [ebp-4]	; int
		push	eax		; fi
		mov	ecx, [ebp-8]
		push	ecx		; y
		mov	eax, [ebp-0Ch]	; int
		push	eax		; x
		push	0		; _title
		push	1		; naddr
		push	edx		; _addr
		mov	ecx, [edi+22Ch]	; int
		push	ecx		; hparent
		call	Condbreakpoint
		add	esp, 1Ch
		mov	ebx, eax
		jmp	short loc_4D542C
; ---------------------------------------------------------------------------

loc_4D53E0:				; CODE XREF: .text:004D53B4j
		mov	eax, dword_618484
		test	byte ptr [eax+0Ah], 1
		jz	short loc_4D53F8
		push	offset a_intern__winpr ; "_INTERN_.WINPROCW"
		call	Getindexbypredefinedtype
		pop	ecx
		jmp	short loc_4D5403
; ---------------------------------------------------------------------------

loc_4D53F8:				; CODE XREF: .text:004D53E9j
		push	offset a_intern__win_0 ; "_INTERN_.WINPROCA"
		call	Getindexbypredefinedtype
		pop	ecx

loc_4D5403:				; CODE XREF: .text:004D53F6j
		mov	edx, [edi+234h]
		push	edx		; fi
		mov	ecx, [ebp-8]
		push	ecx		; y
		mov	edx, [ebp-0Ch]	; int
		push	edx		; x
		push	0		; _title
		push	eax		; fnindex
		lea	eax, [ebp-4]	; int
		push	1		; naddr
		push	eax		; _addr
		mov	ecx, [edi+22Ch]	; int
		push	ecx		; hparent
		call	Condlogbreakpoint
		add	esp, 20h
		mov	ebx, eax

loc_4D542C:				; CODE XREF: .text:004D53DEj
		test	ebx, ebx
		jge	short loc_4D5442
		push	offset aUnableToSet_11 ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4D5442:				; CODE XREF: .text:004D542Ej
		test	ebx, ebx
		jg	short loc_4D544A
		xor	eax, eax
		jmp	short loc_4D5453
; ---------------------------------------------------------------------------

loc_4D544A:				; CODE XREF: .text:004D5347j
					; .text:004D5378j ...
		mov	eax, 1
		jmp	short loc_4D5453
; ---------------------------------------------------------------------------

loc_4D5451:				; CODE XREF: .text:004D5304j
		xor	eax, eax

loc_4D5453:				; CODE XREF: .text:004D5272j
					; .text:004D52ABj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; BOOL __stdcall loc_4D545C(HWND, LPARAM)
loc_4D545C:				; DATA XREF: .text:004D56A0o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFB68h
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		lea	esi, [ebp-498h]
		push	498h		; n
		push	0		; c
		push	esi		; s
		call	_memset
		add	esp, 0Ch
		mov	[esi], ebx
		mov	dword ptr [esi+4], 1
		mov	dword ptr [esi+8], 200h
		push	ebx		; hWnd
		call	IsWindowUnicode
		test	eax, eax
		jz	short loc_4D54A1
		or	dword ptr [esi+8], 10000h

loc_4D54A1:				; CODE XREF: .text:004D5498j
		push	ebx		; hWnd
		call	GetParent
		mov	[esi+0Ch], eax
		xor	eax, eax
		mov	[esi+10h], eax
		mov	edx, [ebp+0Ch]
		mov	[esi+14h], edx
		push	0FFFFFFECh	; nIndex
		push	ebx		; hWnd
		call	GetWindowLongW
		mov	[esi+18h], eax
		push	0FFFFFFF0h	; nIndex
		push	ebx		; hWnd
		call	GetWindowLongW
		mov	[esi+1Ch], eax
		push	0FFFFFFF4h	; nIndex
		push	ebx		; hWnd
		call	GetWindowLongW
		mov	[esi+20h], eax
		test	byte ptr [esi+0Ah], 1
		jz	short loc_4D54E9
		push	0FFFFFFE8h	; nIndex
		push	ebx		; hWnd
		call	GetClassLongW
		mov	[esi+24h], eax
		jmp	short loc_4D54F4
; ---------------------------------------------------------------------------

loc_4D54E9:				; CODE XREF: .text:004D54DAj
		push	0FFFFFFE8h	; nIndex
		push	ebx		; hWnd
		call	GetClassLongA
		mov	[esi+24h], eax

loc_4D54F4:				; CODE XREF: .text:004D54E7j
		push	100h		; nMaxCount
		lea	ecx, [esi+58h]
		push	ecx		; lpString
		push	ebx		; hWnd
		call	GetWindowTextW
		mov	word ptr [esi+256h], 0
		push	100h		; nMaxCount
		lea	eax, [esi+258h]
		push	eax		; lpClassName
		push	ebx		; hWnd
		call	GetClassNameW
		mov	word ptr [esi+456h], 0
		mov	dword ptr [esi+48h], 0FFFFFFFFh
		mov	dword ptr [esi+4Ch], 0FFFFFFFFh
		xor	edx, edx
		xor	ecx, ecx
		mov	[esi+50h], edx
		mov	[esi+54h], ecx
		push	0		; subaddr
		push	ebx		; _addr
		push	offset win.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4D5561
		push	eax
		push	esi
		call	loc_4D5010
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D5568

loc_4D5561:				; CODE XREF: .text:004D5551j
		or	dword ptr [esi+8], 100h

loc_4D5568:				; CODE XREF: .text:004D555Fj
		push	esi		; item
		push	offset win.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		mov	eax, 1
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------
		align 4

; BOOL __stdcall loc_4D5584(HWND, LPARAM)
loc_4D5584:				; DATA XREF: .text:004D5744o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFB68h
		push	ebx
		push	esi
		push	edi
		lea	esi, [ebp-498h]
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		push	498h		; n
		push	0		; c
		push	esi		; s
		call	_memset
		add	esp, 0Ch
		mov	[esi], ebx
		mov	dword ptr [esi+4], 1
		mov	dword ptr [esi+8], 200h
		push	ebx		; hWnd
		call	IsWindowUnicode
		test	eax, eax
		jz	short loc_4D55CD
		or	dword ptr [esi+8], 10000h

loc_4D55CD:				; CODE XREF: .text:004D55C4j
		push	ebx		; hWnd
		call	GetParent
		mov	[esi+0Ch], eax
		xor	eax, eax
		mov	[esi+10h], eax
		mov	[esi+14h], edi
		push	0FFFFFFECh	; nIndex
		push	ebx		; hWnd
		call	GetWindowLongW
		mov	[esi+18h], eax
		push	0FFFFFFF0h	; nIndex
		push	ebx		; hWnd
		call	GetWindowLongW
		mov	[esi+1Ch], eax
		push	0FFFFFFF4h	; nIndex
		push	ebx		; hWnd
		call	GetWindowLongW
		mov	[esi+20h], eax
		test	byte ptr [esi+0Ah], 1
		jz	short loc_4D5612
		push	0FFFFFFE8h	; nIndex
		push	ebx		; hWnd
		call	GetClassLongW
		mov	[esi+24h], eax
		jmp	short loc_4D561D
; ---------------------------------------------------------------------------

loc_4D5612:				; CODE XREF: .text:004D5603j
		push	0FFFFFFE8h	; nIndex
		push	ebx		; hWnd
		call	GetClassLongA
		mov	[esi+24h], eax

loc_4D561D:				; CODE XREF: .text:004D5610j
		push	100h		; nMaxCount
		lea	edx, [esi+58h]
		push	edx		; lpString
		push	ebx		; hWnd
		call	GetWindowTextW
		mov	word ptr [esi+256h], 0
		push	100h		; nMaxCount
		lea	ecx, [esi+258h]
		push	ecx		; lpClassName
		push	ebx		; hWnd
		call	GetClassNameW
		mov	word ptr [esi+456h], 0
		mov	dword ptr [esi+48h], 0FFFFFFFFh
		mov	dword ptr [esi+4Ch], 0FFFFFFFFh
		xor	eax, eax
		xor	edx, edx
		mov	[esi+50h], eax
		mov	[esi+54h], edx
		push	0		; subaddr
		push	ebx		; _addr
		push	offset win.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4D568A
		push	eax
		push	esi
		call	loc_4D5010
		add	esp, 8
		test	eax, eax
		jnz	short loc_4D5691

loc_4D568A:				; CODE XREF: .text:004D567Aj
		or	dword ptr [esi+8], 100h

loc_4D5691:				; CODE XREF: .text:004D5688j
		push	esi		; item
		push	offset win.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		push	edi		; lParam
		push	offset loc_4D545C ; lpEnumFunc
		push	ebx		; hWndParent
		call	EnumChildWindows
		mov	eax, 1
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------
		align 4

loc_4D56BC:				; CODE XREF: .text:00409F60p
					; .text:004D51CEp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFA30h
		push	ebx
		push	esi
		push	edi
		call	Suspendallthreads
		cmp	win.sorted.n, 0
		setz	al
		and	eax, 1
		xor	esi, esi
		mov	edi, eax
		jmp	short loc_4D5714
; ---------------------------------------------------------------------------

loc_4D56E0:				; CODE XREF: .text:004D571Aj
		push	esi		; index
		push	offset win.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4D5713
		and	dword ptr [ebx+8], 0FFFFFDFFh
		mov	dword ptr [ebx+48h], 0FFFFFFFFh
		mov	dword ptr [ebx+4Ch], 0FFFFFFFFh
		xor	eax, eax
		xor	edx, edx
		mov	[ebx+50h], eax
		mov	[ebx+54h], edx

loc_4D5713:				; CODE XREF: .text:004D56F2j
		inc	esi

loc_4D5714:				; CODE XREF: .text:004D56DEj
		cmp	esi, win.sorted.n
		jl	short loc_4D56E0
		xor	ecx, ecx
		xor	esi, esi
		mov	[ebp-10h], ecx
		jmp	short loc_4D5750
; ---------------------------------------------------------------------------

loc_4D5725:				; CODE XREF: .text:004D5756j
		push	esi		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4D574F
		mov	edx, [eax+54h]
		test	edx, edx
		jz	short loc_4D5741
		mov	[ebp-10h], edx

loc_4D5741:				; CODE XREF: .text:004D573Cj
		mov	edx, [eax]
		push	edx		; lParam
		push	offset loc_4D5584 ; lpfn
		push	edx		; dwThreadId
		call	EnumThreadWindows

loc_4D574F:				; CODE XREF: .text:004D5735j
		inc	esi

loc_4D5750:				; CODE XREF: .text:004D5723j
		cmp	esi, thread.sorted.n
		jl	short loc_4D5725
		push	offset win.sorted ; sd
		call	Deletenonconfirmedsorteddata
		pop	ecx
		call	GetDesktopWindow
		mov	[ebp-0Ch], eax
		xor	eax, eax
		mov	dword ptr [ebp-474h], 0FFFFFFFFh
		mov	dword ptr [ebp-470h], 0FFFFFFFFh
		mov	[ebp-46Ch], eax
		mov	esi, win.sorted.n
		mov	word ptr [ebp-64h], 0
		xor	ecx, ecx
		dec	esi
		test	esi, esi
		mov	[ebp-18h], ecx
		jl	short loc_4D5818

loc_4D579D:				; CODE XREF: .text:004D5816j
		push	esi		; index
		push	offset win.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4D5813
		mov	eax, [ebx]
		and	eax, 0FFFFh
		mov	[ebp-24h], eax
		mov	edx, [ebp-18h]
		cmp	edx, [ebp-24h]
		jbe	short loc_4D57C8
		lea	ecx, [ebp-18h]
		jmp	short loc_4D57CB
; ---------------------------------------------------------------------------

loc_4D57C8:				; CODE XREF: .text:004D57C1j
		lea	ecx, [ebp-24h]

loc_4D57CB:				; CODE XREF: .text:004D57C6j
		mov	eax, [ecx]
		test	edi, edi
		mov	[ebp-18h], eax
		jz	short loc_4D57DB
		and	dword ptr [ebx+8], 0FFFFFEFFh

loc_4D57DB:				; CODE XREF: .text:004D57D2j
		mov	eax, [ebx+0Ch]
		test	eax, eax
		jz	short loc_4D57E7
		cmp	eax, [ebp-0Ch]
		jnz	short loc_4D57EF

loc_4D57E7:				; CODE XREF: .text:004D57E0j
		lea	eax, [ebp-4BCh]
		jmp	short loc_4D5803
; ---------------------------------------------------------------------------

loc_4D57EF:				; CODE XREF: .text:004D57E5j
		push	0		; subaddr
		push	eax		; _addr
		push	offset win.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4D5813

loc_4D5803:				; CODE XREF: .text:004D57EDj
		mov	edx, [eax+48h]
		mov	[ebx+4Ch], edx
		mov	[eax+48h], esi
		mov	ecx, [eax+54h]
		inc	ecx
		mov	[ebx+54h], ecx

loc_4D5813:				; CODE XREF: .text:004D57AFj
					; .text:004D5801j
		dec	esi
		test	esi, esi
		jge	short loc_4D579D

loc_4D5818:				; CODE XREF: .text:004D579Bj
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4D583C
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-10h]
		add	eax, 6E8h
		push	eax		; _addr
		lea	edx, [ebp-14h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_4D5841

loc_4D583C:				; CODE XREF: .text:004D581Cj
		xor	ecx, ecx	; int
		mov	[ebp-14h], ecx

loc_4D5841:				; CODE XREF: .text:004D583Aj
		cmp	win.sorted.n, 0
		jle	loc_4D5AD4
		cmp	dword ptr [ebp-14h], 0
		jz	loc_4D5AD4
		mov	eax, [ebp-18h]
		shl	eax, 2
		lea	eax, [eax+eax*2]
		add	eax, 0Ch	; int
		mov	[ebp-1Ch], eax
		push	1		; flags
		mov	edx, [ebp-1Ch]	; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-20h], 0
		jz	loc_4D5AD4
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	loc_4D5ABB
; ---------------------------------------------------------------------------

loc_4D588C:				; CODE XREF: .text:004D5AC4j
		mov	eax, [ebp-4]
		push	eax		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4D5AB8
		test	byte ptr [ebx+0Bh], 8
		jnz	loc_4D5AB8
		test	byte ptr [ebx+1Ah], 4
		jz	loc_4D5AB8
		mov	eax, [ebx+4]
		cmp	eax, [ebp-1Ch]
		jb	loc_4D5AB8
		push	1		; mode
		mov	edx, [ebp-1Ch]
		push	edx		; size
		mov	ecx, [ebx]
		push	ecx		; _addr
		mov	eax, [ebp-20h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [ebp-1Ch]
		jnz	loc_4D5AB8
		mov	dword ptr [ebp-8], 1
		xor	esi, esi
		jmp	loc_4D5AA6
; ---------------------------------------------------------------------------

loc_4D58F3:				; CODE XREF: .text:004D5AACj
		push	esi		; index
		push	offset win.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4D5AA5
		mov	edx, [ebx]
		mov	eax, edx
		and	eax, 0FFFFh
		shl	eax, 2
		lea	eax, [eax+eax*2]
		mov	ecx, [ebp-20h]
		cmp	byte ptr [ecx+eax+8], 1
		jz	short loc_4D592E
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	loc_4D5AB2
; ---------------------------------------------------------------------------

loc_4D592E:				; CODE XREF: .text:004D5922j
		mov	ecx, [ebp-20h]
		shr	edx, 10h
		and	dx, 0FFFFh
		mov	cx, [ecx+eax+0Ah]
		cmp	cx, dx
		jz	short loc_4D594D
		xor	eax, eax
		mov	[ebp-8], eax
		jmp	loc_4D5AB2
; ---------------------------------------------------------------------------

loc_4D594D:				; CODE XREF: .text:004D5941j
		mov	edx, [ebp-20h]
		mov	edi, [edx+eax]
		sub	edi, [ebp-14h]
		cmp	edi, userspacelimit
		jb	short loc_4D5968
		xor	eax, eax
		mov	[ebp-8], eax
		jmp	loc_4D5AB2
; ---------------------------------------------------------------------------

loc_4D5968:				; CODE XREF: .text:004D595Cj
		cmp	VersionInformation.dwMajorVersion, 5
		ja	short loc_4D598B
		cmp	VersionInformation.dwMajorVersion, 5
		jnz	loc_4D5A1F
		cmp	VersionInformation.dwMinorVersion, 1
		jb	loc_4D5A1F

loc_4D598B:				; CODE XREF: .text:004D596Fj
		push	1		; mode
		push	8Ch		; size
		push	edi		; _addr
		lea	edx, [ebp-5D0h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 8Ch
		jz	short loc_4D59B3
		xor	ecx, ecx
		mov	[ebp-8], ecx
		jmp	loc_4D5AB2
; ---------------------------------------------------------------------------

loc_4D59B3:				; CODE XREF: .text:004D59A7j
		mov	eax, [ebp-5D0h]
		cmp	eax, [ebx]
		jnz	short loc_4D59C8
		add	edi, [ebp-14h]
		cmp	edi, [ebp-5C0h]
		jz	short loc_4D59D2

loc_4D59C8:				; CODE XREF: .text:004D59BBj
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	loc_4D5AB2
; ---------------------------------------------------------------------------

loc_4D59D2:				; CODE XREF: .text:004D59C6j
		mov	ecx, [ebp-570h]
		push	ecx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4D59ED
		xor	eax, eax
		mov	[ebp-8], eax
		jmp	loc_4D5AB2
; ---------------------------------------------------------------------------

loc_4D59ED:				; CODE XREF: .text:004D59E1j
		mov	edx, [ebp-570h]
		lea	edi, [ebx+28h]
		mov	[ebx+10h], edx
		push	esi
		lea	esi, [ebp-590h]
		mov	ecx, 4
		rep movsd
		pop	esi
		lea	edi, [ebx+38h]
		push	esi
		lea	esi, [ebp-580h]
		mov	ecx, 4
		rep movsd
		pop	esi
		jmp	loc_4D5AA5
; ---------------------------------------------------------------------------

loc_4D5A1F:				; CODE XREF: .text:004D5978j
					; .text:004D5985j
		push	1		; mode
		push	88h		; size
		push	edi		; _addr
		lea	eax, [ebp-544h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 88h
		jz	short loc_4D5A44
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	short loc_4D5AB2
; ---------------------------------------------------------------------------

loc_4D5A44:				; CODE XREF: .text:004D5A3Bj
		mov	ecx, [ebp-544h]
		cmp	ecx, [ebx]
		jnz	short loc_4D5A59
		add	edi, [ebp-14h]
		cmp	edi, [ebp-534h]
		jz	short loc_4D5A60

loc_4D5A59:				; CODE XREF: .text:004D5A4Cj
		xor	eax, eax
		mov	[ebp-8], eax
		jmp	short loc_4D5AB2
; ---------------------------------------------------------------------------

loc_4D5A60:				; CODE XREF: .text:004D5A57j
		mov	edx, [ebp-4E8h]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4D5A78
		xor	ecx, ecx
		mov	[ebp-8], ecx
		jmp	short loc_4D5AB2
; ---------------------------------------------------------------------------

loc_4D5A78:				; CODE XREF: .text:004D5A6Fj
		mov	eax, [ebp-4E8h]
		lea	edi, [ebx+28h]
		mov	[ebx+10h], eax
		push	esi
		lea	esi, [ebp-508h]
		mov	ecx, 4
		rep movsd
		pop	esi
		lea	edi, [ebx+38h]
		push	esi
		lea	esi, [ebp-4F8h]
		mov	ecx, 4
		rep movsd
		pop	esi

loc_4D5AA5:				; CODE XREF: .text:004D5905j
					; .text:004D5A1Aj
		inc	esi

loc_4D5AA6:				; CODE XREF: .text:004D58EEj
		cmp	esi, win.sorted.n
		jl	loc_4D58F3

loc_4D5AB2:				; CODE XREF: .text:004D5929j
					; .text:004D5948j ...
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4D5ACA

loc_4D5AB8:				; CODE XREF: .text:004D58A1j
					; .text:004D58ABj ...
		inc	dword ptr [ebp-4]

loc_4D5ABB:				; CODE XREF: .text:004D5887j
		mov	eax, [ebp-4]
		cmp	eax, memory.sorted.n
		jl	loc_4D588C

loc_4D5ACA:				; CODE XREF: .text:004D5AB6j
		mov	edx, [ebp-20h]
		push	edx		; data
		call	Memfree
		pop	ecx

loc_4D5AD4:				; CODE XREF: .text:004D5848j
					; .text:004D5852j ...
		call	Resumeallthreads
		push	0
		push	0
		lea	ecx, [ebp-4BCh]
		push	ecx
		call	loc_4D506C
		add	esp, 0Ch
		mov	eax, win.hw
		test	eax, eax
		jz	short loc_4D5AFF
		push	0		; bErase
		push	0		; lpRect
		push	eax		; hWnd
		call	InvalidateRect

loc_4D5AFF:				; CODE XREF: .text:004D5AF3j
		xor	eax, eax
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
