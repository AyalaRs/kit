.code

; Exported entry 308. _Removeint3breakpoint
; Exported entry 693. Removeint3breakpoint

; signed int __cdecl Removeint3breakpoint(ulong	_addr, ulong type)
		public Removeint3breakpoint
Removeint3breakpoint:			; CODE XREF: .text:0044F8DAp
					; .text:00452834p ...
		push	ebp		; _Removeint3breakpoint
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		and	esi, 0F000h
		test	esi, esi
		jnz	short loc_497762
		xor	eax, eax
		jmp	loc_49781A
; ---------------------------------------------------------------------------

loc_497762:				; CODE XREF: .text:00497759j
		push	0		; subaddr
		push	edi		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_497780
		or	eax, 0FFFFFFFFh
		jmp	loc_49781A
; ---------------------------------------------------------------------------

loc_497780:				; CODE XREF: .text:00497776j
		test	[ebx+8], esi
		jnz	short loc_49778C
		xor	eax, eax
		jmp	loc_49781A
; ---------------------------------------------------------------------------

loc_49778C:				; CODE XREF: .text:00497783j
		mov	edx, esi
		and	edx, 1000h
		test	edx, edx
		jz	short loc_4977D1
		push	edi		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_4977AD
		mov	dword ptr [eax+9A8h], 1

loc_4977AD:				; CODE XREF: .text:004977A1j
		push	53h		; type3
		push	52h		; type2
		push	51h		; type1
		lea	ecx, [edi+1]
		push	ecx		; addr1
		push	edi		; addr0
		call	Deletedatarange
		and	dword ptr [ebx+8], 0F7FFFFh
		xor	eax, eax
		add	esp, 14h
		xor	edx, edx
		mov	[ebx+10h], eax
		mov	[ebx+14h], edx

loc_4977D1:				; CODE XREF: .text:00497796j
		mov	ecx, esi
		not	ecx
		and	[ebx+8], ecx
		push	0
		push	ebx
		call	loc_497418
		add	esp, 8
		mov	[ebp-4], eax
		test	byte ptr [ebx+9], 0F0h
		jnz	short loc_4977FC
		push	0		; subaddr
		push	edi		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Deletesorteddata
		add	esp, 0Ch

loc_4977FC:				; CODE XREF: .text:004977EAj
		and	esi, 1000h
		test	esi, esi
		jz	short loc_497817
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_497817:				; CODE XREF: .text:00497804j
		mov	eax, [ebp-4]

loc_49781A:				; CODE XREF: .text:0049775Dj
					; .text:0049777Bj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 309. _Setint3breakpoint
; Exported entry 713. Setint3breakpoint

; signed int __cdecl Setint3breakpoint(ulong _addr, ulong type, int fnindex, int	limit, int count, ulong	actions, wchar_t *condition, wchar_t *expression, wchar_t *exprtype)
		public Setint3breakpoint
Setint3breakpoint:			; CODE XREF: .text:00431C94p
					; .text:004322EEp ...
		push	ebp		; _Setint3breakpoint
		mov	ebp, esp
		add	esp, 0FFFFFFE0h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	bh, 0F0h
		jnz	short loc_49783B
		xor	eax, eax
		jmp	loc_497A42
; ---------------------------------------------------------------------------

loc_49783B:				; CODE XREF: .text:00497832j
		cmp	VersionInformation.dwPlatformId, 2
		jnz	short loc_49786E
		cmp	VersionInformation.dwMajorVersion, 5
		jb	short loc_49786E
		push	esi		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_49786E
		mov	edx, [eax+14h]
		and	edx, 0FFh
		cmp	edx, 2
		jnz	short loc_49786E
		or	eax, 0FFFFFFFFh
		jmp	loc_497A42
; ---------------------------------------------------------------------------

loc_49786E:				; CODE XREF: .text:00497842j
					; .text:0049784Bj ...
		xor	edi, edi
		test	bh, 10h
		jz	short loc_49788A
		push	esi		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_49788A
		mov	dword ptr [eax+9A8h], 1

loc_49788A:				; CODE XREF: .text:00497873j
					; .text:0049787Ej
		mov	eax, ebx
		and	eax, 0F000h
		cmp	eax, 1000h
		jnz	short loc_4978B3
		test	ebx, 0FF000000h
		jnz	short loc_4978B3
		push	1000h		; type
		push	esi		; _addr
		call	Removeint3breakpoint
		add	esp, 8
		jmp	loc_497A42
; ---------------------------------------------------------------------------

loc_4978B3:				; CODE XREF: .text:00497896j
					; .text:0049789Ej
		push	0		; subaddr
		push	esi		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4978EC
		mov	edx, [ebp-4]
		push	esi
		push	edi
		mov	esi, edx
		lea	edi, [ebp-20h]
		mov	ecx, 7
		rep movsd
		pop	edi
		pop	esi
		test	byte ptr [ebp-17h], 60h
		jnz	short loc_497906
		xor	eax, eax
		mov	[ebp-8], eax
		jmp	short loc_497906
; ---------------------------------------------------------------------------

loc_4978EC:				; CODE XREF: .text:004978CAj
		push	1Ch		; n
		push	0		; c
		lea	edx, [ebp-20h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		mov	[ebp-20h], esi
		mov	dword ptr [ebp-1Ch], 1

loc_497906:				; CODE XREF: .text:004978E3j
					; .text:004978EAj
		test	bh, 10h
		jz	loc_4979CC
		cmp	dword ptr [ebp+20h], 0
		jnz	short loc_49791C
		mov	dword ptr [ebp+20h], (offset aInt1+7) ;	""

loc_49791C:				; CODE XREF: .text:00497913j
		cmp	dword ptr [ebp+24h], 0
		jnz	short loc_497929
		mov	dword ptr [ebp+24h], (offset aInt1+7) ;	""

loc_497929:				; CODE XREF: .text:00497920j
		cmp	dword ptr [ebp+28h], 0
		jnz	short loc_497936
		mov	dword ptr [ebp+28h], (offset aInt1+7) ;	""

loc_497936:				; CODE XREF: .text:0049792Dj
		mov	ecx, [ebp-18h]
		mov	eax, ebx
		and	eax, 0FF0A0000h
		and	ecx, 0F1FFFFh
		or	ecx, eax
		test	ebx, 3000000h
		mov	[ebp-18h], ecx
		jz	short loc_497972
		mov	edx, ebx
		and	edx, 3000000h
		cmp	edx, 1000000h
		jnz	short loc_497979
		cmp	dword ptr [ebp+20h], 0
		jz	short loc_497979
		mov	ecx, [ebp+20h]
		cmp	word ptr [ecx],	0
		jz	short loc_497979

loc_497972:				; CODE XREF: .text:00497951j
		or	dword ptr [ebp-18h], 40000h

loc_497979:				; CODE XREF: .text:00497961j
					; .text:00497967j ...
		cmp	dword ptr [ebp+10h], 0
		jl	short loc_497987
		mov	ax, [ebp+10h]
		mov	[ebp-14h], ax

loc_497987:				; CODE XREF: .text:0049797Dj
		mov	edx, [ebp+14h]
		mov	[ebp-10h], edx
		cmp	dword ptr [ebp+18h], 0
		jl	short loc_497999
		mov	ecx, [ebp+18h]
		mov	[ebp-0Ch], ecx

loc_497999:				; CODE XREF: .text:00497991j
		mov	eax, [ebp+20h]
		push	eax		; s
		push	51h		; type
		push	esi		; _addr
		call	InsertnameW
		add	esp, 0Ch
		or	edi, eax
		mov	edx, [ebp+24h]
		push	edx		; s
		push	52h		; type
		push	esi		; _addr
		call	InsertnameW
		add	esp, 0Ch
		or	edi, eax
		mov	ecx, [ebp+28h]
		push	ecx		; s
		push	53h		; type
		push	esi		; _addr
		call	InsertnameW
		add	esp, 0Ch
		or	edi, eax

loc_4979CC:				; CODE XREF: .text:00497909j
		test	bh, 60h
		jz	short loc_4979D7
		mov	eax, [ebp+1Ch]
		or	[ebp-8], eax

loc_4979D7:				; CODE XREF: .text:004979CFj
		mov	edx, ebx
		lea	ecx, [ebp-20h]
		and	edx, 0F000h
		or	[ebp-18h], edx
		push	0
		push	ecx
		call	loc_497418
		add	esp, 8
		test	eax, eax
		jz	short loc_4979F9
		or	eax, 0FFFFFFFFh
		jmp	short loc_497A42
; ---------------------------------------------------------------------------

loc_4979F9:				; CODE XREF: .text:004979F2j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_497A12
		mov	edx, [ebp-4]
		push	edi
		mov	edi, edx
		lea	esi, [ebp-20h]
		mov	ecx, 7
		rep movsd
		pop	edi
		jmp	short loc_497A2A
; ---------------------------------------------------------------------------

loc_497A12:				; CODE XREF: .text:004979FDj
		lea	eax, [ebp-20h]
		push	eax		; item
		push	offset stru_5D6528.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		test	eax, eax
		jnz	short loc_497A2A
		or	edi, 0FFFFFFFFh

loc_497A2A:				; CODE XREF: .text:00497A10j
					; .text:00497A25j
		test	bh, 10h
		jz	short loc_497A40
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_497A40:				; CODE XREF: .text:00497A2Dj
		mov	eax, edi

loc_497A42:				; CODE XREF: .text:00497836j
					; .text:00497869j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 310. _Enableint3breakpoint
; Exported entry 487. Enableint3breakpoint

; signed int __cdecl Enableint3breakpoint(ulong	_addr, int enable)
		public Enableint3breakpoint
Enableint3breakpoint:			; CODE XREF: .text:00431CA9p
					; .text:00432304p ...
		push	ebp		; _Enableint3breakpoint
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		push	0		; subaddr
		push	esi		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_497A73
		or	eax, 0FFFFFFFFh
		jmp	short loc_497AE9
; ---------------------------------------------------------------------------

loc_497A73:				; CODE XREF: .text:00497A6Cj
		test	byte ptr [ebx+9], 10h
		jnz	short loc_497A7E
		or	eax, 0FFFFFFFFh
		jmp	short loc_497AE9
; ---------------------------------------------------------------------------

loc_497A7E:				; CODE XREF: .text:00497A77j
		push	esi		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_497A93
		mov	dword ptr [eax+9A8h], 1

loc_497A93:				; CODE XREF: .text:00497A87j
		test	edi, edi
		jnz	short loc_497AA0
		or	dword ptr [ebx+8], 20000h
		jmp	short loc_497AB4
; ---------------------------------------------------------------------------

loc_497AA0:				; CODE XREF: .text:00497A95j
		test	edi, edi
		jle	short loc_497AAD
		and	dword ptr [ebx+8], 0FFFDFFFFh
		jmp	short loc_497AB4
; ---------------------------------------------------------------------------

loc_497AAD:				; CODE XREF: .text:00497AA2j
		xor	dword ptr [ebx+8], 20000h

loc_497AB4:				; CODE XREF: .text:00497A9Ej
					; .text:00497AABj
		call	Suspendallthreads
		push	0
		push	ebx
		call	loc_497418
		add	esp, 8
		mov	esi, eax
		call	Flushmemorycache
		call	Resumeallthreads
		test	byte ptr [ebx+9], 10h
		jz	short loc_497AE7
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_497AE7:				; CODE XREF: .text:00497AD4j
		mov	eax, esi

loc_497AE9:				; CODE XREF: .text:00497A71j
					; .text:00497A7Cj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 311. _Confirmint3breakpoint
; Exported entry 430. Confirmint3breakpoint

; int __cdecl Confirmint3breakpoint(ulong _addr)
		public Confirmint3breakpoint
Confirmint3breakpoint:			; CODE XREF: .text:0044F835p
					; .text:00497BAAp ...
		push	ebp		; _Confirmint3breakpoint
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		push	0		; requireanalysis
		push	ebx		; _addr
		call	Maybecommand
		add	esp, 8
		test	eax, eax
		jnz	short loc_497B37
		push	ebx		; arglist
		push	offset aYouAreGoingToS ; "You are going	to set execution breakpoi"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aSuspiciousBrea ; "Suspicious breakpoint"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset g_Cond	; cond
		call	Condyesno
		add	esp, 10h
		cmp	eax, 6
		jz	short loc_497B37
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_497B37:				; CODE XREF: .text:00497B04j
					; .text:00497B2Fj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 312. _Confirmhardwarebreakpoint
; Exported entry 429. Confirmhardwarebreakpoint

; int __cdecl Confirmhardwarebreakpoint(ulong _addr)
		public Confirmhardwarebreakpoint
Confirmhardwarebreakpoint:		; CODE XREF: .text:0044F7D6p
		push	ebp		; _Confirmhardwarebreakpoint
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		push	0		; requireanalysis
		push	ebx		; _addr
		call	Maybecommand
		add	esp, 8
		test	eax, eax
		jnz	short loc_497B83
		push	ebx		; arglist
		push	offset aYouAreGoingT_0 ; "You are going	to set execution breakpoi"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aSuspiciousBrea ; "Suspicious breakpoint"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset g_Cond	; cond
		call	Condyesno
		add	esp, 10h
		cmp	eax, 6
		jz	short loc_497B83
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_497B83:				; CODE XREF: .text:00497B50j
					; .text:00497B7Bj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 313. _Confirmint3breakpointlist
; Exported entry 432. Confirmint3breakpointlist

; int __cdecl Confirmint3breakpointlist(ulong *_addr, int naddr)
		public Confirmint3breakpointlist
Confirmint3breakpointlist:		; CODE XREF: .text:004A22D9p
		push	ebp		; _Confirmint3breakpointlist
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_497B9D
		test	edi, edi
		jg	short loc_497BA2

loc_497B9D:				; CODE XREF: .text:00497B97j
		or	eax, 0FFFFFFFFh
		jmp	short loc_497C18
; ---------------------------------------------------------------------------

loc_497BA2:				; CODE XREF: .text:00497B9Bj
		cmp	edi, 1
		jnz	short loc_497BB2
		mov	edx, [eax]
		push	edx		; _addr
		call	Confirmint3breakpoint
		pop	ecx
		jmp	short loc_497C18
; ---------------------------------------------------------------------------

loc_497BB2:				; CODE XREF: .text:00497BA5j
		xor	ecx, ecx
		xor	esi, esi
		cmp	edi, esi
		mov	[ebp-4], ecx
		mov	ebx, eax
		jle	short loc_497BDF

loc_497BBF:				; CODE XREF: .text:00497BDDj
		push	0		; requireanalysis
		mov	eax, [ebx]
		push	eax		; _addr
		call	Maybecommand
		add	esp, 8
		test	eax, eax
		jnz	short loc_497BD7
		mov	edx, [ebx]
		mov	[ebp-4], edx
		jmp	short loc_497BDF
; ---------------------------------------------------------------------------

loc_497BD7:				; CODE XREF: .text:00497BCEj
		inc	esi
		add	ebx, 4
		cmp	edi, esi
		jg	short loc_497BBF

loc_497BDF:				; CODE XREF: .text:00497BBDj
					; .text:00497BD5j
		cmp	edi, esi
		jle	short loc_497C16
		mov	ecx, [ebp-4]
		push	ecx		; arglist
		push	offset aYouAreGoingT_7 ; "You are going	to set execution breakpoi"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aSuspiciousBr_0 ; "Suspicious breakpoints"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset g_Cond	; cond
		call	Condyesno
		add	esp, 10h
		cmp	eax, 6
		jz	short loc_497C16
		or	eax, 0FFFFFFFFh
		jmp	short loc_497C18
; ---------------------------------------------------------------------------

loc_497C16:				; CODE XREF: .text:00497BE1j
					; .text:00497C0Fj
		xor	eax, eax

loc_497C18:				; CODE XREF: .text:00497BA0j
					; .text:00497BB0j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_497C20:				; CODE XREF: .text:0040B3D1p
					; .text:0040B43Dp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, offset stru_5D6528
		xor	ebx, ebx
		jmp	short loc_497C5D
; ---------------------------------------------------------------------------

loc_497C2E:				; CODE XREF: .text:00497C60j
		push	ebx		; index
		lea	eax, [esi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	byte ptr [eax+9], 70h
		jnz	short loc_497C4A
		and	dword ptr [eax+8], 0FFFFFDFFh
		jmp	short loc_497C5C
; ---------------------------------------------------------------------------

loc_497C4A:				; CODE XREF: .text:00497C3Fj
		mov	edx, [eax+8]
		and	edx, 0FFFF7FFFh
		or	edx, 200h
		mov	[eax+8], edx

loc_497C5C:				; CODE XREF: .text:00497C48j
		inc	ebx

loc_497C5D:				; CODE XREF: .text:00497C2Cj
		cmp	ebx, [esi+44h]
		jl	short loc_497C2E
		lea	ecx, [esi+44h]
		push	ecx		; sd
		call	Deletenonconfirmedsorteddata
		pop	ecx
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_497C70:				; CODE XREF: .text:loc_409F79p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, offset stru_5D6528
		xor	ebx, ebx
		jmp	loc_497D16
; ---------------------------------------------------------------------------

loc_497C81:				; CODE XREF: .text:00497D19j
		push	ebx		; index
		lea	eax, [esi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	edx, [eax]
		cmp	edx, zwcontinue
		jnz	short loc_497CA1
		or	dword ptr [eax+8], 200h
		jmp	short loc_497D15
; ---------------------------------------------------------------------------

loc_497CA1:				; CODE XREF: .text:00497C96j
		test	byte ptr [eax+9], 40h
		jz	short loc_497CC1
		mov	ecx, [eax+18h]
		and	ecx, 80000001h
		cmp	ecx, 80000001h
		jnz	short loc_497CC1
		or	dword ptr [eax+8], 200h
		jmp	short loc_497D15
; ---------------------------------------------------------------------------

loc_497CC1:				; CODE XREF: .text:00497CA5j
					; .text:00497CB6j
		cmp	dword_5C8940, 0
		jz	short loc_497CDF
		test	byte ptr [eax+9], 40h
		jz	short loc_497CDF
		test	byte ptr [eax+18h], 1
		jz	short loc_497CDF
		or	dword ptr [eax+8], 200h
		jmp	short loc_497D15
; ---------------------------------------------------------------------------

loc_497CDF:				; CODE XREF: .text:00497CC8j
					; .text:00497CCEj ...
		test	byte ptr [eax+9], 40h
		jz	short loc_497CF4
		test	byte ptr [eax+1Bh], 80h
		jz	short loc_497CF4
		or	dword ptr [eax+8], 200h
		jmp	short loc_497D15
; ---------------------------------------------------------------------------

loc_497CF4:				; CODE XREF: .text:00497CE3j
					; .text:00497CE9j
		test	byte ptr [eax+9], 0B0h
		jnz	short loc_497D03
		and	dword ptr [eax+8], 0FFFFFDFFh
		jmp	short loc_497D15
; ---------------------------------------------------------------------------

loc_497D03:				; CODE XREF: .text:00497CF8j
		mov	edx, [eax+8]
		and	edx, 0FFFFBFFFh
		or	edx, 200h
		mov	[eax+8], edx

loc_497D15:				; CODE XREF: .text:00497C9Fj
					; .text:00497CBFj ...
		inc	ebx

loc_497D16:				; CODE XREF: .text:00497C7Cj
		cmp	ebx, [esi+44h]
		jl	loc_497C81
		lea	eax, [esi+44h]
		push	eax		; sd
		call	Deletenonconfirmedsorteddata
		pop	ecx
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 314. _Wipebreakpointrange
; Exported entry 749. Wipebreakpointrange

; void __cdecl Wipebreakpointrange(ulong addr0,	ulong addr1)
		public Wipebreakpointrange
Wipebreakpointrange:			; CODE XREF: .text:00457151p
					; .text:004571F3p
		push	ebp		; _Wipebreakpointrange
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		cmp	edi, [ebp+0Ch]
		jnb	short loc_497DBC
		call	Suspendallthreads
		call	Listmemory
		xor	esi, esi
		jmp	short loc_497D9F
; ---------------------------------------------------------------------------

loc_497D4C:				; CODE XREF: .text:00497DA5j
		push	esi		; index
		push	offset stru_5D6528.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		mov	eax, [ebx]
		cmp	edi, eax
		ja	short loc_497D67
		cmp	eax, [ebp+0Ch]
		jb	short loc_497D70

loc_497D67:				; CODE XREF: .text:00497D60j
		or	dword ptr [ebx+8], 200h
		jmp	short loc_497D9E
; ---------------------------------------------------------------------------

loc_497D70:				; CODE XREF: .text:00497D65j
		and	dword ptr [ebx+8], 0FFFFFDFFh
		test	byte ptr [ebx+0Ah], 1
		jz	short loc_497D9E
		mov	edx, [ebx]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_497D97
		push	0FFFFFFFFh
		push	ebx
		call	loc_497418
		add	esp, 8
		jmp	short loc_497D9E
; ---------------------------------------------------------------------------

loc_497D97:				; CODE XREF: .text:00497D88j
		and	dword ptr [ebx+8], 0FFFEFFFFh

loc_497D9E:				; CODE XREF: .text:00497D6Ej
					; .text:00497D7Bj ...
		inc	esi

loc_497D9F:				; CODE XREF: .text:00497D4Aj
		cmp	esi, stru_5D6528.sorted.n
		jl	short loc_497D4C
		push	offset stru_5D6528.sorted ; sd
		call	Deletenonconfirmedsorteddata
		pop	ecx
		call	Flushmemorycache
		call	Resumeallthreads

loc_497DBC:				; CODE XREF: .text:00497D3Cj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; SORTFUNC loc_497DC4
loc_497DC4:				; DATA XREF: .text:0044A22Fo
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		mov	ebx, [ebp+8]
		mov	eax, [ebp+0Ch]
		mov	[ebp-4], eax
		xor	ecx, ecx
		cmp	dword ptr [ebp+10h], 2
		jnz	loc_497ED4
		mov	edx, [ebp-4]
		mov	eax, [ebx+8]
		test	ah, 10h
		mov	edx, [edx+8]
		jz	short loc_497E56
		test	dh, 10h
		jz	short loc_497E56
		test	eax, 40000h
		jz	short loc_497E08
		test	edx, 40000h
		jnz	short loc_497E08
		or	ecx, 0FFFFFFFFh
		jmp	loc_497ED4
; ---------------------------------------------------------------------------

loc_497E08:				; CODE XREF: .text:00497DF6j
					; .text:00497DFEj
		test	eax, 40000h
		jnz	short loc_497E21
		test	edx, 40000h
		jz	short loc_497E21
		mov	ecx, 1
		jmp	loc_497ED4
; ---------------------------------------------------------------------------

loc_497E21:				; CODE XREF: .text:00497E0Dj
					; .text:00497E15j
		test	eax, 20000h
		jz	short loc_497E38
		test	edx, 20000h
		jnz	short loc_497E38
		or	ecx, 0FFFFFFFFh
		jmp	loc_497ED4
; ---------------------------------------------------------------------------

loc_497E38:				; CODE XREF: .text:00497E26j
					; .text:00497E2Ej
		test	eax, 20000h
		jnz	loc_497ED4
		test	edx, 20000h
		jz	loc_497ED4
		mov	ecx, 1
		jmp	short loc_497ED4
; ---------------------------------------------------------------------------

loc_497E56:				; CODE XREF: .text:00497DEAj
					; .text:00497DEFj
		test	ah, 10h
		jz	short loc_497E65
		test	dh, 10h
		jnz	short loc_497E65
		or	ecx, 0FFFFFFFFh
		jmp	short loc_497ED4
; ---------------------------------------------------------------------------

loc_497E65:				; CODE XREF: .text:00497E59j
					; .text:00497E5Ej
		test	ah, 10h
		jnz	short loc_497E76
		test	dh, 10h
		jz	short loc_497E76
		mov	ecx, 1
		jmp	short loc_497ED4
; ---------------------------------------------------------------------------

loc_497E76:				; CODE XREF: .text:00497E68j
					; .text:00497E6Dj
		test	ah, 20h
		jz	short loc_497E85
		test	dh, 20h
		jnz	short loc_497E85
		or	ecx, 0FFFFFFFFh
		jmp	short loc_497ED4
; ---------------------------------------------------------------------------

loc_497E85:				; CODE XREF: .text:00497E79j
					; .text:00497E7Ej
		test	ah, 20h
		jnz	short loc_497E96
		test	dh, 20h
		jz	short loc_497E96
		mov	ecx, 1
		jmp	short loc_497ED4
; ---------------------------------------------------------------------------

loc_497E96:				; CODE XREF: .text:00497E88j
					; .text:00497E8Dj
		test	ah, 40h
		jz	short loc_497EA5
		test	dh, 40h
		jnz	short loc_497EA5
		or	ecx, 0FFFFFFFFh
		jmp	short loc_497ED4
; ---------------------------------------------------------------------------

loc_497EA5:				; CODE XREF: .text:00497E99j
					; .text:00497E9Ej
		test	ah, 40h
		jnz	short loc_497EB6
		test	dh, 40h
		jz	short loc_497EB6
		mov	ecx, 1
		jmp	short loc_497ED4
; ---------------------------------------------------------------------------

loc_497EB6:				; CODE XREF: .text:00497EA8j
					; .text:00497EADj
		test	ah, 80h
		jz	short loc_497EC5
		test	dh, 80h
		jnz	short loc_497EC5
		or	ecx, 0FFFFFFFFh
		jmp	short loc_497ED4
; ---------------------------------------------------------------------------

loc_497EC5:				; CODE XREF: .text:00497EB9j
					; .text:00497EBEj
		test	ah, 80h
		jnz	short loc_497ED4
		test	dh, 80h
		jz	short loc_497ED4
		mov	ecx, 1

loc_497ED4:				; CODE XREF: .text:00497DD8j
					; .text:00497E03j ...
		test	ecx, ecx
		jnz	short loc_497EF1
		mov	edx, [ebp-4]
		mov	edx, [edx]
		mov	eax, [ebx]
		cmp	edx, eax
		jbe	short loc_497EE8
		or	ecx, 0FFFFFFFFh
		jmp	short loc_497EF1
; ---------------------------------------------------------------------------

loc_497EE8:				; CODE XREF: .text:00497EE1j
		cmp	edx, eax
		jnb	short loc_497EF1
		mov	ecx, 1

loc_497EF1:				; CODE XREF: .text:00497ED6j
					; .text:00497EE6j ...
		mov	eax, ecx
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; DESTFUNC loc_497EF8
loc_497EF8:				; DATA XREF: .text:0044A22Ao
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_497F2C
		mov	ebx, eax
		and	dword ptr [ebx+8], 0FFFF0FFFh
		push	0FFFFFFFFh
		push	ebx
		call	loc_497418
		add	esp, 8
		push	53h		; type3
		push	52h		; type2
		push	51h		; type1
		mov	eax, [ebx]
		mov	edx, eax
		inc	edx
		push	edx		; addr1
		push	eax		; addr0
		call	Deletedatarange
		add	esp, 14h

loc_497F2C:				; CODE XREF: .text:00497F01j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_497F30(wchar_t *buffer, void *s, int,	int, int, int, int)
loc_497F30:				; DATA XREF: .text:004983C7o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		xor	ebx, ebx
		mov	eax, [ebp+1Ch]
		mov	edi, [ebp+20h]
		add	eax, 4
		mov	esi, [ebp+18h]
		cmp	eax, 8		; switch 9 cases
		ja	loc_498236	; jumptable 00497F50 default case
		jmp	ds:off_497F57[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_497F57	dd offset loc_497F7B	; DATA XREF: .text:00497F50r
		dd offset loc_497F85	; jump table for switch	statement
		dd offset loc_497F8C
		dd offset loc_497F93
		dd offset loc_497FE8
		dd offset loc_49803B
		dd offset loc_498068
		dd offset loc_4981D2
		dd offset loc_4981F7
; ---------------------------------------------------------------------------

loc_497F7B:				; CODE XREF: .text:00497F50j
					; DATA XREF: .text:off_497F57o
		mov	eax, 18D4h	; jumptable 00497F50 case 0
		jmp	loc_498238
; ---------------------------------------------------------------------------

loc_497F85:				; CODE XREF: .text:00497F50j
					; DATA XREF: .text:off_497F57o
		xor	eax, eax	; jumptable 00497F50 case 1
		jmp	loc_498238
; ---------------------------------------------------------------------------

loc_497F8C:				; CODE XREF: .text:00497F50j
					; DATA XREF: .text:off_497F57o
		xor	eax, eax	; jumptable 00497F50 case 2
		jmp	loc_498238
; ---------------------------------------------------------------------------

loc_497F93:				; CODE XREF: .text:00497F50j
					; DATA XREF: .text:off_497F57o
		push	5		; jumptable 00497F50 case 3
		push	10h		; size
		mov	edx, [esi]
		push	edx		; _addr
		lea	ecx, [ebp-14h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jbe	short loc_497FDA
		push	0		; predict
		push	0		; reg
		push	15h		; mode
		push	edi		; da
		push	0		; psize
		mov	eax, [esi]
		push	eax		; _addr
		call	Finddecode
		add	esp, 8
		push	eax		; dec
		mov	edx, [esi]
		push	edx		; ip
		mov	ecx, [ebp-4]
		push	ecx		; cmdsize
		lea	eax, [ebp-14h]
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		mov	[ebp-4], eax

loc_497FDA:				; CODE XREF: .text:00497FADj
		mov	edx, [ebp-4]
		mov	[edi+18D0h], edx
		jmp	loc_498236	; jumptable 00497F50 default case
; ---------------------------------------------------------------------------

loc_497FE8:				; CODE XREF: .text:00497F50j
					; DATA XREF: .text:off_497F57o
		mov	eax, dword_57DE54 ; jumptable 00497F50 case 4
		cmp	eax, 1
		jnz	short loc_497FF9
		mov	eax, 2011h
		jmp	short loc_49800A
; ---------------------------------------------------------------------------

loc_497FF9:				; CODE XREF: .text:00497FF0j
		cmp	eax, 2
		jnz	short loc_498005
		mov	eax, 2012h
		jmp	short loc_49800A
; ---------------------------------------------------------------------------

loc_498005:				; CODE XREF: .text:00497FFCj
		mov	eax, 2010h

loc_49800A:				; CODE XREF: .text:00497FF7j
					; .text:00498003j
		cmp	dword_57DE58, 0
		jz	short loc_498016
		or	eax, 20h

loc_498016:				; CODE XREF: .text:00498011j
		push	eax		; mode
		mov	edx, [ebp+10h]
		push	edx		; select
		mov	ecx, [ebp+0Ch]
		push	ecx		; mask
		push	0		; index
		push	0FFFFFFFFh	; relreg
		push	0		; reladdr
		mov	eax, [esi]
		push	eax		; _addr
		mov	edx, [ebp+8]
		push	edx		; text
		call	Labeladdress
		add	esp, 20h
		mov	ebx, eax
		jmp	loc_498236	; jumptable 00497F50 default case
; ---------------------------------------------------------------------------

loc_49803B:				; CODE XREF: .text:00497F50j
					; DATA XREF: .text:off_497F57o
		mov	eax, [esi]	; jumptable 00497F50 case 5
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	loc_498236	; jumptable 00497F50 default case
		add	eax, 0Ch
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_498236	; jumptable 00497F50 default case
; ---------------------------------------------------------------------------

loc_498068:				; CODE XREF: .text:00497F50j
					; DATA XREF: .text:off_497F57o
		mov	eax, [esi+8]	; jumptable 00497F50 case 6
		test	ah, 10h
		jz	short loc_4980E9
		test	eax, 20000h
		jz	short loc_49809B
		push	offset aDisabled_1 ; "Disabled"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_498236	; jumptable 00497F50 default case
; ---------------------------------------------------------------------------

loc_49809B:				; CODE XREF: .text:00498075j
		test	byte ptr [esi+0Ah], 4
		jz	short loc_4980C5
		push	offset aCond_0	; "Cond"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_498236	; jumptable 00497F50 default case
; ---------------------------------------------------------------------------

loc_4980C5:				; CODE XREF: .text:0049809Fj
		push	offset aActive_0 ; "Active"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_498236	; jumptable 00497F50 default case
; ---------------------------------------------------------------------------

loc_4980E9:				; CODE XREF: .text:0049806Ej
		test	byte ptr [esi+9], 20h
		jz	short loc_498113
		push	offset aOneShot	; "One-shot"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_498236	; jumptable 00497F50 default case
; ---------------------------------------------------------------------------

loc_498113:				; CODE XREF: .text:004980EDj
		test	byte ptr [esi+9], 40h
		jz	loc_4981A7
		mov	eax, [esi+18h]
		and	eax, 80000001h
		cmp	eax, 80000001h
		jnz	short loc_498150
		push	offset aPluginPermanen ; "Plugin Permanent"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_498236	; jumptable 00497F50 default case
; ---------------------------------------------------------------------------

loc_498150:				; CODE XREF: .text:0049812Aj
		cmp	dword_5C8940, 0
		jz	short loc_498183
		test	byte ptr [esi+18h], 1
		jz	short loc_498183
		push	(offset	aPluginPermanen+0Eh) ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_498236	; jumptable 00497F50 default case
; ---------------------------------------------------------------------------

loc_498183:				; CODE XREF: .text:00498157j
					; .text:0049815Dj
		push	offset aTemporary ; "Temporary"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_498236	; jumptable 00497F50 default case
; ---------------------------------------------------------------------------

loc_4981A7:				; CODE XREF: .text:00498117j
		test	byte ptr [esi+9], 80h
		jz	loc_498236	; jumptable 00497F50 default case
		push	offset aTrace	; "Trace"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_498236 ; jumptable 00497F50 default case
; ---------------------------------------------------------------------------

loc_4981D2:				; CODE XREF: .text:00497F50j
					; DATA XREF: .text:off_497F57o
		cmp	dword ptr [edi+18D0h], 0 ; jumptable 00497F50 case 7
		jbe	short loc_498236 ; jumptable 00497F50 default case
		add	edi, 13CCh
		push	edi		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_498236 ; jumptable 00497F50 default case
; ---------------------------------------------------------------------------

loc_4981F7:				; CODE XREF: .text:00497F50j
					; DATA XREF: .text:off_497F57o
		push	100h		; jumptable 00497F50 case 8
		mov	eax, [ebp+8]
		push	eax		; comment
		push	0FFFFFFFFh	; typelist
		mov	edx, [esi]
		push	edx		; _addr
		call	Commentaddress
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_49822D
		add	edi, 16D0h
		push	edi		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_49822D:				; CODE XREF: .text:00498211j
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 200h

loc_498236:				; CODE XREF: .text:00497F4Aj
					; .text:00497FE3j ...
		mov	eax, ebx	; jumptable 00497F50 default case

loc_498238:				; CODE XREF: .text:00497F80j
					; .text:00497F87j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_498240:				; DATA XREF: .text:004983A3o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		sub	eax, 471h
		jz	short loc_498254
		sub	eax, 1Bh
		jz	short loc_498278
		jmp	short loc_498283
; ---------------------------------------------------------------------------

loc_498254:				; CODE XREF: .text:0049824Bj
		push	0		; index
		push	offset loc_4970F0 ; menufunc
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

loc_498278:				; CODE XREF: .text:00498250j
		or	dword_57FE7C, 20h
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_498283:				; CODE XREF: .text:00498252j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_498288:				; CODE XREF: .text:0040B04Bp
					; .text:00410042p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, offset aInt1 ; "INT1"
;__DebugBreak		
		cmp	stru_5D6528.bar.nbar, 0
		jnz	loc_4983E1
		lea	eax, $CTW0("INT3 breakpoints");[ebx+0DC6h]
		push	eax		; src
		push	offset stru_5D6528 ; dst
		call	_wcscpy
		mov	stru_5D6528.mode, 0F0000h
		lea	edx, aAddress_1;[ebx+0ED0h]
		mov	stru_5D6528.bar.visible, 1
		mov	stru_5D6528.bar._name, edx
		lea	ecx, aAddressOfInt3B;[ebx+0EE0h]
		lea	eax, aModule_2;[ebx+0F16h]
		mov	stru_5D6528.bar.expl, ecx
		mov	stru_5D6528.bar.mode, 2
		mov	stru_5D6528.bar.defdx, 9
		mov	stru_5D6528.bar._name+4,	eax
		lea	edx, aNameOfTheModul;[ebx+0F24h]
		lea	ecx, aStatus;[ebx+0F80h]
		mov	stru_5D6528.bar.expl+4,	edx
		mov	stru_5D6528.bar.mode+4,	2
		mov	stru_5D6528.bar.defdx+4, 9
		lea	eax, aStatusOfInt3Br;[ebx+0F8Eh]
		mov	stru_5D6528.bar._name+8,	ecx
		mov	stru_5D6528.bar.expl+8,	eax
		mov	stru_5D6528.bar.mode+8,	2
		lea	edx, aDisassembly;[ebx+0FC2h]
		mov	stru_5D6528.bar.defdx+8, 0Ch
		mov	stru_5D6528.bar._name+0Ch, edx
		lea	ecx, aDisassembled_0;[ebx+0FDAh]
		xor	eax, eax
		mov	stru_5D6528.bar.expl+0Ch, ecx
		mov	stru_5D6528.bar.mode+0Ch, eax
		lea	edx, aComment;[ebx+1004h]
		mov	stru_5D6528.bar.defdx+0Ch, 28h
		lea	ecx, aComment;[ebx+1004h]
		mov	stru_5D6528.bar._name+10h, edx
		xor	eax, eax
		mov	stru_5D6528.bar.expl+10h, ecx
		mov	stru_5D6528.bar.mode+10h, eax
		mov	stru_5D6528.bar.defdx+10h, 100h
		mov	stru_5D6528.bar.nbar, 5
		xor	edx, edx
		mov	stru_5D6528.tabfunc, offset loc_498240
		xor	ecx, ecx
		mov	stru_5D6528.custommode,	edx
		xor	eax, eax
		mov	stru_5D6528.customdata,	ecx
		mov	stru_5D6528.updatefunc,	eax
		add	esp, 8
		xor	edx, edx
		mov	stru_5D6528.drawfunc, offset loc_497F30
		mov	stru_5D6528.tableselfunc, edx
		mov	stru_5D6528.menu, offset stru_54C6E4

loc_4983E1:				; CODE XREF: .text:00498298j
		cmp	stru_5D6528.hw,	0
		jnz	short loc_49841E
		lea	ecx, $CTW0("INT3 breakpoints");[ebx+0DC6h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; _title
		lea	eax, aIco_b_yellow;[ebx+1014h]
		push	eax		; icon
		mov	edx, g_hInstance
		push	edx		; hi
		mov	ecx, stru_5D6528.bar.nbar
		push	ecx		; ncolumn
		push	0		; nrow
		push	offset stru_5D6528 ; pt
		call	Createtablewindow
		add	esp, 18h
		jmp	short loc_49842D
; ---------------------------------------------------------------------------

loc_49841E:				; CODE XREF: .text:004983E8j
		push	0		; bErase
		push	0		; lpRect
		mov	eax, stru_5D6528.hw
		push	eax		; hWnd
		call	InvalidateRect

loc_49842D:				; CODE XREF: .text:0049841Cj
		cmp	stru_5D6528.hparent, 0
		jz	short loc_498482
		cmp	dword ptr [ebp+8], 0
		jz	short loc_498482
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_498459
		push	0		; lParam
		mov	edx, stru_5D6528.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_498459:				; CODE XREF: .text:00498443j
		mov	ecx, stru_5D6528.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_498476
		push	9		; nCmdShow
		mov	eax, stru_5D6528.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_498476:				; CODE XREF: .text:00498467j
		mov	edx, stru_5D6528.hw
		push	edx		; hWnd
		call	SetFocus

loc_498482:				; CODE XREF: .text:00498434j
					; .text:0049843Aj
		mov	eax, stru_5D6528.hw
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_49848C(wchar_t *s, int, char,	char)
loc_49848C:				; CODE XREF: .text:00498656p
					; .text:0049877Fp ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		mov	esi, offset dword_5F26E0
		cmp	dword ptr [esi], 1000h
		jge	loc_49860E
		test	byte ptr [ebp+14h], 1
		jz	short loc_4984D9
		cmp	dword_5F26E8, 0
		jz	short loc_4984D9
		mov	eax, [esi]
		mov	word_5EF6E0[eax*2], 0
		inc	dword ptr [esi]
		inc	dword_5F26E4
		xor	edx, edx
		mov	dword_5F26E8, edx
		mov	ecx, [esi]
		mov	dword_5F26EC, ecx

loc_4984D9:				; CODE XREF: .text:004984AAj
					; .text:004984B3j
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4984E9
		push	ebx		; s
		call	_wcslen
		pop	ecx
		mov	[ebp+0Ch], eax

loc_4984E9:				; CODE XREF: .text:004984DDj
		xor	eax, eax
		mov	[ebp-4], eax
		mov	ecx, ebx
		mov	edx, [ebp-4]
		cmp	edx, [ebp+0Ch]
		jge	loc_49860E

loc_4984FC:				; CODE XREF: .text:00498608j
		cmp	dword ptr [esi], 1000h
		jge	loc_49860E
		cmp	word ptr [ecx],	9
		jnz	short loc_49853E
		jmp	short loc_498530
; ---------------------------------------------------------------------------

loc_498510:				; CODE XREF: .text:00498537j
		mov	eax, [esi]
		mov	word_5EF6E0[eax*2], 20h
		inc	dword ptr [esi]
		inc	dword_5F26E8
		cmp	dword ptr [esi], 1000h
		jge	loc_4985FC

loc_498530:				; CODE XREF: .text:0049850Ej
		cmp	dword_5F26E8, 17h
		jl	short loc_498510
		jmp	loc_4985FC
; ---------------------------------------------------------------------------

loc_49853E:				; CODE XREF: .text:0049850Cj
		mov	dx, [ecx]
		mov	eax, [esi]
		mov	word_5EF6E0[eax*2], dx
		mov	dl, [ebp+10h]
		mov	eax, [esi]
		mov	byte_5F16E0[eax], dl
		inc	dword_5F26E8
		mov	ax, [ecx]
		test	ax, ax
		jz	short loc_49856A
		cmp	ax, 0Ah
		jnz	short loc_49858E

loc_49856A:				; CODE XREF: .text:00498562j
		mov	edx, [esi]
		xor	eax, eax
		mov	word_5EF6E0[edx*2], 0
		inc	dword_5F26E4
		mov	dword_5F26E8, eax
		mov	edx, [esi]
		inc	edx
		mov	dword_5F26EC, edx
		jmp	short loc_4985FA
; ---------------------------------------------------------------------------

loc_49858E:				; CODE XREF: .text:00498568j
		test	byte ptr [ebp+14h], 2
		jz	short loc_49859D
		mov	eax, [esi]
		mov	dword_5F26EC, eax
		jmp	short loc_4985FA
; ---------------------------------------------------------------------------

loc_49859D:				; CODE XREF: .text:00498592j
		mov	edx, dword_5F26E8
		cmp	edx, dword_5EF6DC
		jle	short loc_4985FA
		mov	eax, [esi]
		lea	edx, word_5EF6E0[eax*2]
		jmp	short loc_4985C0
; ---------------------------------------------------------------------------

loc_4985B6:				; CODE XREF: .text:004985C6j
		cmp	word ptr [edx],	20h
		jz	short loc_4985C8
		dec	eax
		add	edx, 0FFFFFFFEh

loc_4985C0:				; CODE XREF: .text:004985B4j
		cmp	eax, dword_5F26EC
		jge	short loc_4985B6

loc_4985C8:				; CODE XREF: .text:004985BAj
		cmp	eax, dword_5F26EC
		jge	short loc_4985D9
		mov	eax, [esi]
		mov	dword_5F26EC, eax
		jmp	short loc_4985FA
; ---------------------------------------------------------------------------

loc_4985D9:				; CODE XREF: .text:004985CEj
		mov	word_5EF6E0[eax*2], 0
		inc	dword_5F26E4
		mov	edx, [esi]
		sub	edx, eax
		inc	edx
		inc	eax
		mov	dword_5F26E8, edx
		mov	dword_5F26EC, eax

loc_4985FA:				; CODE XREF: .text:0049858Cj
					; .text:0049859Bj ...
		inc	dword ptr [esi]

loc_4985FC:				; CODE XREF: .text:0049852Aj
					; .text:00498539j
		inc	dword ptr [ebp-4]
		add	ecx, 2
		mov	edx, [ebp-4]
		cmp	edx, [ebp+0Ch]
		jl	loc_4984FC

loc_49860E:				; CODE XREF: .text:004984A0j
					; .text:004984F6j ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_498614:				; CODE XREF: .text:00498815p
					; .text:0049883Ep ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFC00h
		mov	eax, [ebp+0Ch]
		lea	edx, [ebp-400h]
		test	eax, eax
		push	200h		; nw
		push	edx		; w
		jnz	short loc_498637
		mov	ecx, 1000h
		jmp	short loc_498639
; ---------------------------------------------------------------------------

loc_498637:				; CODE XREF: .text:0049862Ej
		mov	ecx, eax

loc_498639:				; CODE XREF: .text:00498635j
		push	ecx		; ns
		mov	eax, [ebp+8]
		push	eax		; s
		call	Asciitounicode
		add	esp, 10h
		mov	edx, [ebp+14h]
		push	edx		; char
		mov	edx, [ebp+10h]
		push	edx		; char
		push	eax		; int
		lea	eax, [ebp-400h]
		push	eax		; s
		call	loc_49848C
		add	esp, 10h
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_498664:				; CODE XREF: .text:loc_49AA42p
					; .text:loc_49AFCBp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDB4h
		xor	eax, eax
		mov	dword_5F26E0, eax
		cmp	stru_5EF470.hw,	0
		push	ebx
		push	esi
		push	edi
		jz	loc_49A550
		cmp	dword_5EF46C, 0
		jz	loc_49A550
		mov	edx, dword_5EF46C
		cmp	dword ptr [edx], 0
		jz	loc_49A550
		cmp	dword_5EC2C8, 0
		jnz	short loc_4986B6
		cmp	stru_5EDB9C._size, 0
		jz	loc_49A550

loc_4986B6:				; CODE XREF: .text:004986A7j
		lea	ecx, [ebp-24Ch]
		push	ecx		; lpRect
		mov	eax, stru_5EF470.hw
		push	eax		; hWnd
		call	GetClientRect
		mov	eax, stru_5EF470.font
		test	eax, eax
		jl	short loc_4986D6
		cmp	eax, 8
		jl	short loc_4986E2

loc_4986D6:				; CODE XREF: .text:004986CFj
		mov	edx, fi
		mov	stru_5EF470.font, edx

loc_4986E2:				; CODE XREF: .text:004986D4j
		mov	ecx, stru_5EF470.font
		mov	eax, ecx
		lea	ecx, [eax+ecx*4]
		shl	ecx, 5
		sub	ecx, eax
		mov	ecx, font._width[ecx*4]
		mov	edx, ecx
		sar	edx, 1
		jns	short loc_498702
		adc	edx, 0

loc_498702:				; CODE XREF: .text:004986FDj
		mov	eax, [ebp-244h]
		sub	eax, edx
		mov	edx, stru_5EF470.font
		mov	ebx, edx
		dec	eax
		lea	edx, [ebx+edx*4]
		shl	edx, 5
		sub	edx, ebx
		cdq
		idiv	ecx
		mov	ebx, eax
		mov	dword_5EF6DC, ebx
		cmp	ebx, 14h
		jge	short loc_498737
		mov	dword_5EF6DC, 14h
		jmp	short loc_49874D
; ---------------------------------------------------------------------------

loc_498737:				; CODE XREF: .text:00498729j
		cmp	dword_5EF6DC, 100h
		jle	short loc_49874D
		mov	dword_5EF6DC, 100h

loc_49874D:				; CODE XREF: .text:00498735j
					; .text:00498741j
		mov	dword_5F26E4, 1
		xor	eax, eax
		mov	dword_5F26E8, eax
		xor	edx, edx
		mov	dword_5F26EC, edx
		xor	ecx, ecx
		mov	[ebp-24h], ecx
		cmp	dword_5EC2C8, 0
		jnz	short loc_4987D3
		push	2		; char
		push	2		; char
		push	0		; int
		push	offset aCommand_0 ; "Command:  "
		call	loc_49848C
		add	esp, 10h
		push	2		; char
		push	1		; char
		push	0		; int
		push	offset da.result ; s
		call	loc_49848C
		add	esp, 10h
		push	3		; char
		push	2		; char
		push	0		; int
		push	offset aHexDump	; "Hex dump: "
		call	loc_49848C
		add	esp, 10h
		push	2		; char
		push	0		; char
		push	0		; int
		push	offset da.dump	; s
		call	loc_49848C
		add	esp, 10h
		push	2		; char
		push	2		; char
		push	2		; int
		push	offset asc_54D886 ; "\n\n"
		call	loc_49848C
		add	esp, 10h

loc_4987D3:				; CODE XREF: .text:00498772j
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-18h], eax
		mov	eax, dword_5EF46C
		mov	[ebp-1Ch], edx
		xor	ecx, ecx
		mov	edx, [eax]
		mov	edi, eax
		mov	[ebp-14h], edx
		xor	esi, esi
		add	edi, 0Ch
		mov	[ebp-0Ch], ecx

loc_4987F3:				; CODE XREF: .text:00499361j
					; .text:004993A5j ...
		cmp	esi, [ebp-14h]
		jl	short loc_498822
		cmp	dword ptr [ebp-0Ch], 0
		jle	loc_49A544
		mov	eax, [ebp-1Ch]
		push	eax
		mov	edx, [ebp-18h]
		push	edx
		mov	ecx, [ebp-0Ch]
		push	ecx
		lea	eax, [ebp-23Ch]
		push	eax
		call	loc_498614
		add	esp, 10h
		jmp	loc_49A544
; ---------------------------------------------------------------------------

loc_498822:				; CODE XREF: .text:004987F6j
		cmp	dword ptr [ebp-0Ch], 100h
		jl	short loc_49884B
		mov	edx, [ebp-1Ch]
		push	edx
		mov	ecx, [ebp-18h]
		push	ecx
		mov	eax, [ebp-0Ch]
		push	eax
		lea	edx, [ebp-23Ch]
		push	edx
		call	loc_498614
		add	esp, 10h
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx

loc_49884B:				; CODE XREF: .text:00498829j
		mov	dword ptr [ebp-30h], offset stru_5EDB9C.op
		xor	eax, eax
		mov	al, [edi+esi]
		cmp	eax, 3Fh
		jnz	loc_4993B6
		cmp	dword ptr [ebp-0Ch], 0
		jle	short loc_498886
		mov	edx, [ebp-1Ch]
		push	edx
		mov	ecx, [ebp-18h]
		push	ecx
		mov	eax, [ebp-0Ch]
		push	eax
		lea	edx, [ebp-23Ch]
		push	edx
		call	loc_498614
		add	esp, 10h
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx

loc_498886:				; CODE XREF: .text:00498864j
		inc	esi
		cmp	esi, [ebp-14h]
		jge	loc_49A544
		xor	eax, eax
		mov	[ebp-20h], eax
		xor	edx, edx
		mov	dl, [edi+esi]
		add	edx, 0FFFFFFCFh	; switch 74 cases
		cmp	edx, 49h
		ja	loc_499336	; jumptable 004988AC default case
		mov	dl, ds:byte_4988B3[edx]
		jmp	ds:off_4988FD[edx*4] ; switch jump
; ---------------------------------------------------------------------------
byte_4988B3	db	6,     0,     0,     0 ; DATA XREF: .text:004988A6r
		db	0,     0,     0,     0 ; indirect table	for switch statement
		db	0,   16h,     0,     0
		db	0,     0,     0,     0
		db	0,   15h,     6,   14h
		db    13h,     6,     0,     0
		db    12h,   11h,   10h,     0
		db    0Fh,     0,   0Eh,   0Dh
		db	0,   0Ch,   0Bh,   0Ah
		db	9,     0,     8,     7
		db	0,     6,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     5,     0,     0
		db	0,     0,     0,     0
		db	0,     4,     0,     3
		db	0,     0,     2,     0
		db	0,     0,     0,     0
		db	0,     1
off_4988FD	dd offset loc_499336, offset loc_498C5C, offset	loc_49911C
					; DATA XREF: .text:004988ACr
		dd offset loc_49901D, offset loc_498C88, offset	loc_498BF9 ; jump table	for switch statement
		dd offset loc_498A56, offset loc_4991CE, offset	loc_498D16
		dd offset loc_498959, offset loc_499142, offset	loc_4990E1
		dd offset loc_49903A, offset loc_498F1C, offset	loc_4989AB
		dd offset loc_498CB4, offset loc_498EBA, offset	loc_498D48
		dd offset loc_498CE5, offset loc_4989FD, offset	loc_498D2F
		dd offset loc_498CFD, offset loc_499237
; ---------------------------------------------------------------------------

loc_498959:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	ecx, [ebp-30h]	; jumptable 004988AC case 85
		test	byte ptr [ecx],	1
		jz	loc_499336	; jumptable 004988AC default case
		mov	eax, [ebp-30h]
		cmp	dword ptr [eax+0Ch], 4
		jnz	loc_499336	; jumptable 004988AC default case
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+14h], 4
		jnz	loc_499336	; jumptable 004988AC default case
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+461h], 2
		jz	loc_499336	; jumptable 004988AC default case
		mov	eax, [ebp-30h]
		cmp	dword ptr [eax+490h], 0
		jle	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_4989AB:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	edx, [ebp-30h]	; jumptable 004988AC case 79
		test	byte ptr [edx],	1
		jz	loc_499336	; jumptable 004988AC default case
		mov	ecx, [ebp-30h]
		cmp	dword ptr [ecx+0Ch], 4
		jnz	loc_499336	; jumptable 004988AC default case
		mov	eax, [ebp-30h]
		cmp	dword ptr [eax+14h], 4
		jnz	loc_499336	; jumptable 004988AC default case
		mov	edx, [ebp-30h]
		test	byte ptr [edx+461h], 2
		jz	loc_499336	; jumptable 004988AC default case
		mov	ecx, [ebp-30h]
		cmp	dword ptr [ecx+490h], 0
		jge	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_4989FD:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	eax, [ebp-30h]	; jumptable 004988AC case 69
		test	byte ptr [eax],	0FFh
		jz	loc_499336	; jumptable 004988AC default case
		mov	edx, [ebp-30h]
		mov	eax, [ebp-30h]
		mov	ecx, [edx]
		xor	ecx, [eax+460h]
		test	cl, 0FFh
		jnz	loc_499336	; jumptable 004988AC default case
		mov	edx, [ebp-30h]
		mov	eax, [ebp-30h]
		mov	ecx, [edx+14h]
		cmp	ecx, [eax+474h]
		jnz	loc_499336	; jumptable 004988AC default case
		mov	edx, [ebp-30h]
		mov	eax, [ebp-30h]
		mov	ecx, [edx+0Ch]
		cmp	ecx, [eax+46Ch]
		jnz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498A56:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	edx, [ebp-30h]	; jumptable 004988AC cases 49,67,70,90
		test	byte ptr [edx+1], 2
		jz	short loc_498A73
		mov	ecx, [ebp-30h]
		mov	eax, [ecx+30h]
		mov	[ebp-28h], eax
		mov	edx, [ebp-30h]
		mov	ecx, [edx+0Ch]
		mov	[ebp-2Ch], ecx
		jmp	short loc_498AD3
; ---------------------------------------------------------------------------

loc_498A73:				; CODE XREF: .text:00498A5Dj
		mov	eax, [ebp-30h]
		test	byte ptr [eax+461h], 2
		jz	short loc_498A99
		mov	edx, [ebp-30h]
		mov	ecx, [edx+490h]
		mov	[ebp-28h], ecx
		mov	eax, [ebp-30h]
		mov	edx, [eax+46Ch]
		mov	[ebp-2Ch], edx
		jmp	short loc_498AD3
; ---------------------------------------------------------------------------

loc_498A99:				; CODE XREF: .text:00498A7Dj
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+8C1h], 2
		jz	short loc_498ABF
		mov	eax, [ebp-30h]
		mov	edx, [eax+8F0h]
		mov	[ebp-28h], edx
		mov	ecx, [ebp-30h]
		mov	eax, [ecx+8CCh]
		mov	[ebp-2Ch], eax
		jmp	short loc_498AD3
; ---------------------------------------------------------------------------

loc_498ABF:				; CODE XREF: .text:00498AA3j
		xor	edx, edx
		mov	dl, [edi+esi]
		cmp	edx, 43h
		jnz	loc_499336	; jumptable 004988AC default case
		inc	esi
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498AD3:				; CODE XREF: .text:00498A71j
					; .text:00498A97j ...
		xor	ecx, ecx
		mov	cl, [edi+esi]
		cmp	ecx, 5Ah
		jnz	short loc_498AF3
		cmp	dword ptr [ebp-28h], 0
		jnz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498AF3:				; CODE XREF: .text:00498ADBj
		xor	eax, eax
		mov	al, [edi+esi]
		cmp	eax, 31h
		jnz	short loc_498B13
		cmp	dword ptr [ebp-28h], 1
		jnz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498B13:				; CODE XREF: .text:00498AFBj
		xor	edx, edx
		mov	dl, [edi+esi]
		cmp	edx, 43h
		jnz	loc_498BAD
		inc	esi
		xor	ecx, ecx
		mov	cl, [edi+esi]
		cmp	ecx, 30h
		jnz	short loc_498B4D
		cmp	dword ptr [ebp-2Ch], 1
		jnz	short loc_498B3B
		or	dword ptr [ebp-28h], 0FFFFFF00h
		jmp	short loc_498B48
; ---------------------------------------------------------------------------

loc_498B3B:				; CODE XREF: .text:00498B30j
		cmp	dword ptr [ebp-2Ch], 2
		jnz	short loc_498B48
		or	dword ptr [ebp-28h], 0FFFF0000h

loc_498B48:				; CODE XREF: .text:00498B39j
					; .text:00498B3Fj
		not	dword ptr [ebp-28h]
		jmp	short loc_498B7A
; ---------------------------------------------------------------------------

loc_498B4D:				; CODE XREF: .text:00498B2Aj
		xor	eax, eax
		mov	al, [edi+esi]
		cmp	eax, 31h
		jnz	short loc_498B75
		cmp	dword ptr [ebp-2Ch], 1
		jnz	short loc_498B66
		and	dword ptr [ebp-28h], 0FFh
		jmp	short loc_498B7A
; ---------------------------------------------------------------------------

loc_498B66:				; CODE XREF: .text:00498B5Bj
		cmp	dword ptr [ebp-2Ch], 2
		jnz	short loc_498B7A
		and	dword ptr [ebp-28h], 0FFFFh
		jmp	short loc_498B7A
; ---------------------------------------------------------------------------

loc_498B75:				; CODE XREF: .text:00498B55j
		xor	edx, edx
		mov	[ebp-28h], edx

loc_498B7A:				; CODE XREF: .text:00498B4Bj
					; .text:00498B64j ...
		xor	ecx, ecx
		mov	[ebp-4], ecx

loc_498B7F:				; CODE XREF: .text:00498B95j
		mov	ecx, [ebp-4]
		mov	eax, 1
		shl	eax, cl
		cmp	eax, [ebp-28h]
		jz	short loc_498B97
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 20h
		jl	short loc_498B7F

loc_498B97:				; CODE XREF: .text:00498B8Cj
		cmp	dword ptr [ebp-4], 20h
		jge	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498BAD:				; CODE XREF: .text:00498B1Bj
		cmp	dword ptr [ebp-2Ch], 1
		jnz	short loc_498BC8
		cmp	dword ptr [ebp-28h], 0FFh
		jnz	short loc_498BC8
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498BC8:				; CODE XREF: .text:00498BB1j
					; .text:00498BBAj
		cmp	dword ptr [ebp-2Ch], 2
		jnz	short loc_498BE3
		cmp	dword ptr [ebp-28h], 0FFFFh
		jnz	short loc_498BE3
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498BE3:				; CODE XREF: .text:00498BCCj
					; .text:00498BD5j
		cmp	dword ptr [ebp-28h], 0FFFFFFFFh
		jnz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498BF9:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	edx, [ebp-14h]	; jumptable 004988AC case 102
		dec	edx
		cmp	esi, edx
		jge	loc_499336	; jumptable 004988AC default case
		inc	esi
		mov	eax, [ebp-30h]
		test	byte ptr [eax],	4
		jz	loc_499336	; jumptable 004988AC default case
		xor	edx, edx
		mov	dl, [edi+esi]
		cmp	edx, 30h
		jnz	short loc_498C35
		mov	ecx, [ebp-30h]
		cmp	dword ptr [ecx+14h], 0
		jnz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498C35:				; CODE XREF: .text:00498C1Aj
		xor	eax, eax
		mov	al, [edi+esi]
		cmp	eax, 31h
		jnz	loc_499336	; jumptable 004988AC default case
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+14h], 1
		jnz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498C5C:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	ecx, [ebp-30h]	; jumptable 004988AC case 122
		test	byte ptr [ecx+461h], 2
		jz	loc_499336	; jumptable 004988AC default case
		mov	eax, [ebp-30h]
		cmp	dword ptr [eax+490h], 0
		jnz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498C88:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	edx, [ebp-30h]	; jumptable 004988AC case 110
		test	byte ptr [edx+461h], 2
		jz	loc_499336	; jumptable 004988AC default case
		mov	ecx, [ebp-30h]
		cmp	dword ptr [ecx+490h], 0
		jz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498CB4:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	eax, [ebp-30h]	; jumptable 004988AC case 77
		test	byte ptr [eax+1], 1
		jnz	short loc_498CD9
		mov	edx, [ebp-30h]
		test	byte ptr [edx+461h], 1
		jnz	short loc_498CD9
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+8C1h], 1
		jz	loc_499336	; jumptable 004988AC default case

loc_498CD9:				; CODE XREF: .text:00498CBBj
					; .text:00498CC7j
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498CE5:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	eax, [ebp-30h]	; jumptable 004988AC case 73
		test	byte ptr [eax],	1
		jz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498CFD:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	edx, [ebp-30h]	; jumptable 004988AC case 66
		cmp	dword ptr [edx+0Ch], 1
		jnz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498D16:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	ecx, [ebp-30h]	; jumptable 004988AC case 87
		cmp	dword ptr [ecx+0Ch], 2
		jnz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498D2F:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	eax, [ebp-30h]	; jumptable 004988AC case 68
		cmp	dword ptr [eax+0Ch], 4
		jnz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498D48:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	edx, [ebp-14h]	; jumptable 004988AC case 74
		dec	edx
		cmp	esi, edx
		jge	loc_499336	; jumptable 004988AC default case
		inc	esi
		xor	ecx, ecx
		mov	cl, [edi+esi]
		cmp	ecx, 46h
		jnz	short loc_498D98
		mov	eax, stru_5EDB9C.cmdtype
		and	eax, 1Fh
		cmp	eax, 7
		jz	short loc_498D8C
		mov	edx, stru_5EDB9C.cmdtype
		and	edx, 1Fh
		cmp	edx, 0Dh
		jz	short loc_498D8C
		mov	ecx, stru_5EDB9C.cmdtype
		and	ecx, 1Fh
		cmp	ecx, 10h
		jnz	loc_499336	; jumptable 004988AC default case

loc_498D8C:				; CODE XREF: .text:00498D6Aj
					; .text:00498D78j
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498D98:				; CODE XREF: .text:00498D5Dj
		xor	eax, eax
		mov	al, [edi+esi]
		cmp	eax, 48h
		jnz	short loc_498DCD
		mov	edx, stru_5EDB9C.cmdtype
		and	edx, 1Fh
		cmp	edx, 8
		jnz	loc_499336	; jumptable 004988AC default case
		test	byte ptr stru_5EDB9C.prefixes, 0Ah
		jz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498DCD:				; CODE XREF: .text:00498DA0j
		xor	ecx, ecx
		mov	cl, [edi+esi]
		cmp	ecx, 2Bh
		jnz	short loc_498E01
		mov	eax, stru_5EDB9C.cmdtype
		and	eax, 1Fh
		cmp	eax, 8
		jnz	loc_499336	; jumptable 004988AC default case
		test	byte ptr stru_5EDB9C.prefixes, 8
		jz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498E01:				; CODE XREF: .text:00498DD5j
		xor	edx, edx
		mov	dl, [edi+esi]
		cmp	edx, 2Dh
		jnz	short loc_498E36
		mov	ecx, stru_5EDB9C.cmdtype
		and	ecx, 1Fh
		cmp	ecx, 8
		jnz	loc_499336	; jumptable 004988AC default case
		test	byte ptr stru_5EDB9C.prefixes, 2
		jz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498E36:				; CODE XREF: .text:00498E09j
		xor	eax, eax
		mov	al, [edi+esi]
		cmp	eax, 53h
		jnz	loc_499336	; jumptable 004988AC default case
		mov	edx, stru_5EDB9C.cmdtype
		and	edx, 1Fh
		cmp	edx, 6
		jnz	loc_499336	; jumptable 004988AC default case
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+1], 1
		jz	loc_499336	; jumptable 004988AC default case
		mov	eax, [ebp-30h]
		cmp	dword ptr [eax+30h], 0FFFFh
		jbe	loc_499336	; jumptable 004988AC default case
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+30h], 0FFFF0000h
		jnb	loc_499336	; jumptable 004988AC default case
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-4], ecx
		mov	[ebp-8], eax
		mov	edx, [ebp-30h]
		lea	ebx, [edx+24h]

loc_498E93:				; CODE XREF: .text:00498EA2j
		xor	eax, eax
		mov	al, [ebx]
		add	[ebp-8], eax
		inc	dword ptr [ebp-4]
		inc	ebx
		cmp	dword ptr [ebp-4], 8
		jl	short loc_498E93
		cmp	dword ptr [ebp-8], 4
		jnz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498EBA:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	edx, [ebp-30h]	; jumptable 004988AC case 75
		test	byte ptr [edx],	1
		jz	loc_499336	; jumptable 004988AC default case
		mov	ecx, [ebp-30h]
		cmp	dword ptr [ecx+0Ch], 4
		jnz	loc_499336	; jumptable 004988AC default case
		mov	eax, [ebp-30h]
		cmp	dword ptr [eax+14h], 5
		jnz	loc_499336	; jumptable 004988AC default case
		mov	edx, [ebp-30h]
		test	byte ptr [edx+460h], 1
		jz	loc_499336	; jumptable 004988AC default case
		mov	ecx, [ebp-30h]
		cmp	dword ptr [ecx+46Ch], 4
		jnz	loc_499336	; jumptable 004988AC default case
		mov	eax, [ebp-30h]
		cmp	dword ptr [eax+474h], 4
		jnz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498F1C:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	edx, [ebp-14h]	; jumptable 004988AC case 80
		dec	edx
		cmp	esi, edx
		jge	loc_499336	; jumptable 004988AC default case
		inc	esi
		xor	eax, eax
		mov	al, [edi+esi]
		cmp	eax, 41h
		jnz	short loc_498F4C
		test	byte ptr stru_5EDB9C.prefixes, 80h
		jz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498F4C:				; CODE XREF: .text:00498F31j
		cmp	eax, 61h
		jnz	short loc_498F6A
		test	byte ptr stru_5EDB9C.prefixes, 80h
		jnz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498F6A:				; CODE XREF: .text:00498F4Fj
		cmp	eax, 44h
		jnz	short loc_498F88
		test	byte ptr stru_5EDB9C.prefixes, 40h
		jz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498F88:				; CODE XREF: .text:00498F6Dj
		cmp	eax, 64h
		jnz	short loc_498FA6
		test	byte ptr stru_5EDB9C.prefixes, 40h
		jnz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498FA6:				; CODE XREF: .text:00498F8Bj
		cmp	eax, 46h
		jnz	short loc_498FE9
		test	byte ptr stru_5EDB9C.prefixes, 10h
		jz	loc_499336	; jumptable 004988AC default case
		mov	edx, [ebp-30h]
		test	byte ptr [edx+1], 1
		jnz	short loc_498FDD
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+461h], 1
		jnz	short loc_498FDD
		mov	eax, [ebp-30h]
		test	byte ptr [eax+8C1h], 1
		jz	loc_499336	; jumptable 004988AC default case

loc_498FDD:				; CODE XREF: .text:00498FBFj
					; .text:00498FCBj
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_498FE9:				; CODE XREF: .text:00498FA9j
		xor	edx, edx
		mov	dl, [edi+esi]
		cmp	edx, 4Ch
		jnz	loc_499336	; jumptable 004988AC default case
		test	byte ptr stru_5EDB9C.prefixes+1, 1
		jz	loc_499336	; jumptable 004988AC default case
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+1], 1
		jz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_49901D:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	eax, stru_5EDB9C.cmdtype ; jumptable 004988AC case 112
		and	eax, 1Fh
		cmp	eax, 17h
		jnz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_49903A:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	edx, [ebp-14h]	; jumptable 004988AC case 82
		dec	edx
		cmp	esi, edx
		jge	loc_499336	; jumptable 004988AC default case
		inc	esi
		xor	ecx, ecx
		mov	cl, [edi+esi]
		cmp	ecx, 2Bh
		jnz	short loc_49906A
		test	byte ptr stru_5EDB9C.prefixes+1, 6
		jz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_49906A:				; CODE XREF: .text:0049904Fj
		xor	eax, eax
		mov	al, [edi+esi]
		cmp	eax, 2Dh
		jnz	short loc_49908D
		test	byte ptr stru_5EDB9C.prefixes+1, 6
		jnz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_49908D:				; CODE XREF: .text:00499072j
		xor	edx, edx
		mov	dl, [edi+esi]
		cmp	edx, 50h
		jz	short loc_4990A1
		xor	ecx, ecx
		mov	cl, [edi+esi]
		cmp	ecx, 45h
		jnz	short loc_4990BA

loc_4990A1:				; CODE XREF: .text:00499095j
		test	byte ptr stru_5EDB9C.prefixes+1, 4
		jz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_4990BA:				; CODE XREF: .text:0049909Fj
		xor	eax, eax
		mov	al, [edi+esi]
		cmp	eax, 4Eh
		jnz	loc_499336	; jumptable 004988AC default case
		test	byte ptr stru_5EDB9C.prefixes+1, 2
		jz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_4990E1:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	edx, [ebp-30h]	; jumptable 004988AC case 83
		test	byte ptr [edx],	1
		jz	loc_499336	; jumptable 004988AC default case
		mov	ecx, [ebp-30h]
		cmp	dword ptr [ecx+0Ch], 2
		jz	short loc_499103
		mov	eax, [ebp-30h]
		cmp	dword ptr [eax+0Ch], 4
		jnz	loc_499336	; jumptable 004988AC default case

loc_499103:				; CODE XREF: .text:004990F4j
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+14h], 4
		jnz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_49911C:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	ecx, [ebp-30h]	; jumptable 004988AC case 115
		test	byte ptr [ecx+1], 1
		jz	loc_499336	; jumptable 004988AC default case
		mov	eax, [ebp-30h]
		cmp	byte ptr [eax+28h], 0
		jz	loc_499336	; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_499142:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	edx, [ebp-30h]	; jumptable 004988AC case 84
		mov	ecx, [edx+4]
		and	ecx, 0F0000h
		cmp	ecx, 50000h
		jnz	short loc_499167
		mov	eax, [ebp-30h]
		mov	edx, [eax+4]
		and	edx, 0FFh
		cmp	edx, 70h
		jnz	short loc_4991C2

loc_499167:				; CODE XREF: .text:00499154j
		mov	ecx, [ebp-30h]
		mov	eax, [ecx+464h]
		and	eax, 0F0000h
		cmp	eax, 50000h
		jnz	short loc_499190
		mov	edx, [ebp-30h]
		mov	ecx, [edx+464h]
		and	ecx, 0FFh
		cmp	ecx, 70h
		jnz	short loc_4991C2

loc_499190:				; CODE XREF: .text:0049917Aj
		mov	eax, [ebp-30h]
		mov	edx, [eax+8C4h]
		and	edx, 0F0000h
		cmp	edx, 50000h
		jnz	loc_499336	; jumptable 004988AC default case
		mov	ecx, [ebp-30h]
		mov	eax, [ecx+8C4h]
		and	eax, 0FFh
		cmp	eax, 70h
		jz	loc_499336	; jumptable 004988AC default case

loc_4991C2:				; CODE XREF: .text:00499165j
					; .text:0049918Ej
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_4991CE:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	edx, [ebp-14h]	; jumptable 004988AC case 88
		dec	edx
		cmp	esi, edx
		jge	loc_499336	; jumptable 004988AC default case
		inc	esi
		xor	ecx, ecx
		mov	cl, [edi+esi]
		cmp	ecx, 49h
		jnz	short loc_499207
		cmp	dword_5BDCC8, 0
		jz	short loc_4991FB
		cmp	dword_5BDCC8, 1
		jnz	loc_499336	; jumptable 004988AC default case

loc_4991FB:				; CODE XREF: .text:004991ECj
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_499207:				; CODE XREF: .text:004991E3j
		xor	eax, eax
		mov	al, [edi+esi]
		cmp	eax, 52h
		jnz	loc_499336	; jumptable 004988AC default case
		cmp	dword_5BDCC8, 2
		jz	short loc_49922B
		cmp	dword_5BDCC8, 3
		jnz	loc_499336	; jumptable 004988AC default case

loc_49922B:				; CODE XREF: .text:0049921Cj
		mov	dword ptr [ebp-20h], 1
		jmp	loc_499336	; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_499237:				; CODE XREF: .text:004988ACj
					; DATA XREF: .text:off_4988FDo
		mov	edx, [ebp-14h]	; jumptable 004988AC case 58
		dec	edx
		cmp	esi, edx
		jge	loc_499336	; jumptable 004988AC default case
		xor	ecx, ecx
		lea	ebx, [edi+esi+1]
		mov	[ebp-28h], ecx
		jmp	short loc_4992A2
; ---------------------------------------------------------------------------

loc_49924E:				; CODE XREF: .text:004992B7j
		inc	esi
		inc	ebx
		xor	eax, eax
		mov	al, [ebx-1]
		cmp	eax, 30h
		jl	short loc_49926F
		cmp	eax, 39h
		jg	short loc_49926F
		mov	edx, [ebp-28h]
		shl	edx, 4
		add	edx, eax
		sub	edx, 30h
		mov	[ebp-28h], edx
		jmp	short loc_4992A2
; ---------------------------------------------------------------------------

loc_49926F:				; CODE XREF: .text:00499258j
					; .text:0049925Dj
		xor	eax, eax
		mov	al, [ebx-1]
		cmp	eax, 41h
		jl	short loc_499291
		cmp	eax, 46h
		jg	short loc_499291
		mov	edx, [ebp-28h]
		shl	edx, 4
		add	edx, eax
		sub	edx, 41h
		add	edx, 0Ah
		mov	[ebp-28h], edx
		jmp	short loc_4992A2
; ---------------------------------------------------------------------------

loc_499291:				; CODE XREF: .text:00499277j
					; .text:0049927Cj
		mov	ecx, [ebp-28h]
		shl	ecx, 4
		add	ecx, eax
		sub	ecx, 61h
		add	ecx, 0Ah
		mov	[ebp-28h], ecx

loc_4992A2:				; CODE XREF: .text:0049924Cj
					; .text:0049926Dj ...
		mov	eax, [ebp-14h]
		dec	eax
		cmp	esi, eax
		jge	short loc_4992B9
		xor	edx, edx
		mov	dl, [ebx]
		push	edx		; c
		call	_isxdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_49924E

loc_4992B9:				; CODE XREF: .text:004992A8j
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+1], 1
		jz	short loc_4992F1
		mov	eax, [ebp-30h]
		cmp	dword ptr [eax+0Ch], 4
		jnz	short loc_4992F1
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+20h], 4
		jnz	short loc_4992F1
		mov	ecx, [ebp-30h]
		cmp	dword ptr [ecx+2Ch], 0
		jnz	short loc_4992F1
		mov	eax, [ebp-30h]
		mov	edx, [eax+30h]
		cmp	edx, [ebp-28h]
		jnz	short loc_4992F1
		mov	dword ptr [ebp-20h], 1
		jmp	short loc_499336 ; jumptable 004988AC default case
; ---------------------------------------------------------------------------

loc_4992F1:				; CODE XREF: .text:004992C0j
					; .text:004992C9j ...
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+461h], 1
		jz	short loc_499336 ; jumptable 004988AC default case
		mov	eax, [ebp-30h]
		cmp	dword ptr [eax+46Ch], 4
		jnz	short loc_499336 ; jumptable 004988AC default case
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+480h], 4
		jnz	short loc_499336 ; jumptable 004988AC default case
		mov	ecx, [ebp-30h]
		cmp	dword ptr [ecx+48Ch], 0
		jnz	short loc_499336 ; jumptable 004988AC default case
		mov	eax, [ebp-30h]
		mov	edx, [eax+490h]
		cmp	edx, [ebp-28h]
		jnz	short loc_499336 ; jumptable 004988AC default case
		mov	dword ptr [ebp-20h], 1

loc_499336:				; CODE XREF: .text:004988A0j
					; .text:004988ACj ...
		inc	esi		; jumptable 004988AC default case
		cmp	esi, [ebp-14h]
		jge	loc_49A544
		xor	ecx, ecx
		mov	cl, [edi+esi]
		cmp	ecx, 7Bh
		jnz	loc_49A544
		inc	esi
		cmp	esi, [ebp-14h]
		jge	loc_49A544
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_499366
		inc	dword ptr [ebp-24h]
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_499366:				; CODE XREF: .text:0049935Cj
		mov	dword ptr [ebp-4], 1
		lea	ebx, [edi+esi]
		jmp	short loc_4993A2
; ---------------------------------------------------------------------------

loc_499372:				; CODE XREF: .text:004993AFj
		xor	eax, eax
		mov	al, [ebx]
		cmp	eax, 7Bh
		jnz	short loc_49938A
		xor	edx, edx
		mov	dl, [ebx-1]
		cmp	edx, 26h
		jz	short loc_49938A
		inc	dword ptr [ebp-4]
		jmp	short loc_4993A0
; ---------------------------------------------------------------------------

loc_49938A:				; CODE XREF: .text:00499379j
					; .text:00499383j
		xor	ecx, ecx
		mov	cl, [ebx]
		cmp	ecx, 7Dh
		jnz	short loc_4993A0
		xor	eax, eax
		mov	al, [ebx-1]
		cmp	eax, 26h
		jz	short loc_4993A0
		dec	dword ptr [ebp-4]

loc_4993A0:				; CODE XREF: .text:00499388j
					; .text:00499391j ...
		inc	esi
		inc	ebx

loc_4993A2:				; CODE XREF: .text:00499370j
		cmp	esi, [ebp-14h]
		jge	loc_4987F3
		cmp	dword ptr [ebp-4], 0
		jg	short loc_499372
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_4993B6:				; CODE XREF: .text:0049885Aj
		mov	al, [edi+esi]
		xor	edx, edx
		mov	dl, al
		cmp	edx, 7Dh
		jnz	short loc_4993E0
		cmp	dword ptr [ebp-24h], 0
		jle	short loc_4993CD
		dec	dword ptr [ebp-24h]
		jmp	short loc_4993DA
; ---------------------------------------------------------------------------

loc_4993CD:				; CODE XREF: .text:004993C6j
		mov	ecx, [ebp-0Ch]
		mov	[ebp+ecx-23Ch],	al
		inc	dword ptr [ebp-0Ch]

loc_4993DA:				; CODE XREF: .text:004993CBj
		inc	esi
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_4993E0:				; CODE XREF: .text:004993C0j
		xor	eax, eax
		mov	al, [edi+esi]
		cmp	eax, 26h
		jnz	loc_49A3C3
		cmp	dword ptr [ebp-0Ch], 0
		jle	short loc_499414
		mov	edx, [ebp-1Ch]
		push	edx
		mov	ecx, [ebp-18h]
		push	ecx
		mov	eax, [ebp-0Ch]
		push	eax
		lea	edx, [ebp-23Ch]
		push	edx
		call	loc_498614
		add	esp, 10h
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx

loc_499414:				; CODE XREF: .text:004993F2j
		inc	esi
		cmp	esi, [ebp-14h]
		jge	loc_49A544
		xor	ebx, ebx
		mov	bl, [edi+esi]
		mov	eax, ebx
		add	eax, 0FFFFFFD5h	; switch 78 cases
		cmp	eax, 4Dh
		ja	loc_49A3AD	; jumptable 00499437 default case
		mov	al, ds:byte_49943E[eax]
		jmp	ds:off_49948C[eax*4] ; switch jump
; ---------------------------------------------------------------------------
byte_49943E	db    12h,     0,   11h,   10h ; DATA XREF: .text:00499431r
		db    0Fh,   0Eh,     0,     0 ; indirect table	for switch statement
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,   0Dh,   0Ch
		db	0,     0,   0Bh,     0
		db    0Ah,     0,     9,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     8
		db	0,     0,     0,     7
		db	0,     1,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     6,     5
		db	1,     4,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     3
		db	1,     0,     0,     1
		db	2,     0,     0,     0
		db	0,     1
off_49948C	dd offset loc_49A3AD, offset loc_499A09, offset	loc_49A145
					; DATA XREF: .text:00499437r
		dd offset loc_49951A, offset loc_49A2DD, offset	loc_49A261 ; jump table	for switch statement
		dd offset loc_4995CD, offset loc_49993F, offset	loc_499885
		dd offset loc_499937, offset loc_4996DD, offset	loc_499542
		dd offset loc_49A31F, offset loc_4994F2, offset	loc_49952E
		dd offset loc_4994FD, offset loc_49950A, offset	loc_4994E5
		dd offset loc_4994D8
; ---------------------------------------------------------------------------

loc_4994D8:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		mov	dword ptr [ebp-18h], 1 ; jumptable 00499437 case 43
		inc	esi
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_4994E5:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		mov	dword ptr [ebp-18h], 2 ; jumptable 00499437 case 45
		inc	esi
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_4994F2:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		xor	edx, edx	; jumptable 00499437 case 61
		inc	esi
		mov	[ebp-18h], edx
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_4994FD:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		mov	dword ptr [ebp-1Ch], 2 ; jumptable 00499437 case 47
		inc	esi
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_49950A:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		xor	ecx, ecx	; jumptable 00499437 case 46
		xor	eax, eax
		mov	[ebp-18h], ecx
		mov	[ebp-1Ch], eax
		inc	esi
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_49951A:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		mov	edx, [ebp-0Ch]	; jumptable 00499437 case 110
		mov	byte ptr [ebp+edx-23Ch], 0Ah
		inc	dword ptr [ebp-0Ch]
		inc	esi
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_49952E:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		mov	ecx, [ebp-0Ch]	; jumptable 00499437 case 48
		mov	byte ptr [ebp+ecx-23Ch], 0
		inc	dword ptr [ebp-0Ch]
		inc	esi
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_499542:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		mov	eax, [ebp-30h]	; jumptable 00499437 case 65
		cmp	dword ptr [eax+0Ch], 1
		jnz	short loc_499569
		push	offset aAl_1	; "AL"
		push	100h		; n
		lea	edx, [ebp-23Ch]
		push	edx		; dest
		call	StrcopyA
		add	esp, 0Ch
		mov	[ebp-8], eax
		jmp	short loc_4995AC
; ---------------------------------------------------------------------------

loc_499569:				; CODE XREF: .text:00499549j
		mov	ecx, [ebp-30h]
		cmp	dword ptr [ecx+0Ch], 2
		jnz	short loc_499590
		push	offset aAx	; "AX"
		push	100h		; n
		lea	eax, [ebp-23Ch]
		push	eax		; dest
		call	StrcopyA
		add	esp, 0Ch
		mov	[ebp-8], eax
		jmp	short loc_4995AC
; ---------------------------------------------------------------------------

loc_499590:				; CODE XREF: .text:00499570j
		push	offset off_54D892 ; src
		push	100h		; n
		lea	edx, [ebp-23Ch]
		push	edx		; dest
		call	StrcopyA
		add	esp, 0Ch
		mov	[ebp-8], eax

loc_4995AC:				; CODE XREF: .text:00499567j
					; .text:0049958Ej
		mov	ecx, [ebp-1Ch]
		push	ecx
		mov	eax, [ebp-18h]
		push	eax
		mov	edx, [ebp-8]
		push	edx
		lea	ecx, [ebp-23Ch]
		push	ecx
		call	loc_498614
		add	esp, 10h
		inc	esi
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_4995CD:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		inc	esi		; jumptable 00499437 case 97
		cmp	esi, [ebp-14h]
		jge	loc_4987F3
		xor	ebx, ebx
		mov	eax, [ebp-30h]
		mov	bl, [edi+esi]
		inc	esi
		test	byte ptr [eax+1], 1
		jz	short loc_4995ED
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	short loc_499604
; ---------------------------------------------------------------------------

loc_4995ED:				; CODE XREF: .text:004995E4j
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+461h], 1
		jz	loc_4987F3
		mov	dword ptr [ebp-4], 1

loc_499604:				; CODE XREF: .text:004995EBj
		cmp	ebx, 43h
		jnz	short loc_499658
		mov	eax, [ebp-4]
		mov	ecx, [ebp-30h]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*2]
		lea	edx, [ebp-23Ch]
		shl	eax, 2
		mov	eax, [ecx+eax*8+30h]
		push	eax
		push	offset a0xX	; "0x%X"
		push	edx		; buffer
		call	_sprintf
		add	esp, 0Ch
		mov	[ebp-10h], eax
		mov	ecx, [ebp-1Ch]
		push	ecx
		mov	eax, [ebp-18h]
		push	eax
		mov	edx, [ebp-10h]
		push	edx
		lea	ecx, [ebp-23Ch]
		push	ecx
		call	loc_498614
		add	esp, 10h
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_499658:				; CODE XREF: .text:00499607j
		cmp	ebx, 52h
		jnz	loc_4987F3
		xor	eax, eax
		mov	[ebp-8], eax
		mov	edx, [ebp-4]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		mov	eax, [ebp-30h]
		lea	ebx, [eax+edx*8+24h]

loc_49967D:				; CODE XREF: .text:0049968Aj
		cmp	byte ptr [ebx],	0
		jnz	short loc_49968C
		inc	dword ptr [ebp-8]
		inc	ebx
		cmp	dword ptr [ebp-8], 8
		jl	short loc_49967D

loc_49968C:				; CODE XREF: .text:00499680j
		cmp	dword ptr [ebp-8], 8
		jge	loc_4987F3
		mov	eax, [ebp-1Ch]
		push	eax		; char
		mov	edx, [ebp-18h]
		push	edx		; char
		push	0		; int
		mov	ecx, 1
		mov	eax, [ebp-4]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*2]
		shl	eax, 2
		mov	edx, [ebp-30h]
		test	byte ptr [edx+eax*8+2],	20h
		jnz	short loc_4996C0
		inc	ecx

loc_4996C0:				; CODE XREF: .text:004996BDj
		shl	ecx, 5
		lea	eax, regname[ecx]
		mov	ecx, [ebp-8]
		mov	eax, [eax+ecx*4]
		push	eax		; s
		call	loc_49848C
		add	esp, 10h
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_4996DD:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		inc	esi		; jumptable 00499437 case 67
		cmp	esi, [ebp-14h]
		jge	loc_4987F3
		xor	ebx, ebx
		mov	eax, [ebp-30h]
		mov	bl, [edi+esi]
		inc	esi
		test	byte ptr [eax+1], 2
		jz	short loc_49970A
		mov	edx, [ebp-30h]
		mov	ecx, [edx+30h]
		mov	[ebp-28h], ecx
		mov	eax, [ebp-30h]
		mov	edx, [eax+0Ch]
		mov	[ebp-2Ch], edx
		jmp	short loc_499758
; ---------------------------------------------------------------------------

loc_49970A:				; CODE XREF: .text:004996F4j
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+461h], 2
		jz	short loc_499730
		mov	eax, [ebp-30h]
		mov	edx, [eax+490h]
		mov	[ebp-28h], edx
		mov	ecx, [ebp-30h]
		mov	eax, [ecx+46Ch]
		mov	[ebp-2Ch], eax
		jmp	short loc_499758
; ---------------------------------------------------------------------------

loc_499730:				; CODE XREF: .text:00499714j
		mov	edx, [ebp-30h]
		test	byte ptr [edx+8C1h], 2
		jz	loc_4987F3
		mov	ecx, [ebp-30h]
		mov	eax, [ecx+8F0h]
		mov	[ebp-28h], eax
		mov	edx, [ebp-30h]
		mov	ecx, [edx+8CCh]
		mov	[ebp-2Ch], ecx

loc_499758:				; CODE XREF: .text:00499708j
					; .text:0049972Ej
		cmp	ebx, 30h
		jnz	short loc_49977E
		cmp	dword ptr [ebp-2Ch], 1
		jnz	short loc_49976C
		or	dword ptr [ebp-28h], 0FFFFFF00h
		jmp	short loc_499779
; ---------------------------------------------------------------------------

loc_49976C:				; CODE XREF: .text:00499761j
		cmp	dword ptr [ebp-2Ch], 2
		jnz	short loc_499779
		or	dword ptr [ebp-28h], 0FFFF0000h

loc_499779:				; CODE XREF: .text:0049976Aj
					; .text:00499770j
		not	dword ptr [ebp-28h]
		jmp	short loc_4997A6
; ---------------------------------------------------------------------------

loc_49977E:				; CODE XREF: .text:0049975Bj
		cmp	ebx, 31h
		jnz	short loc_4997A1
		cmp	dword ptr [ebp-2Ch], 1
		jnz	short loc_499792
		and	dword ptr [ebp-28h], 0FFh
		jmp	short loc_4997A6
; ---------------------------------------------------------------------------

loc_499792:				; CODE XREF: .text:00499787j
		cmp	dword ptr [ebp-2Ch], 2
		jnz	short loc_4997A6
		and	dword ptr [ebp-28h], 0FFFFh
		jmp	short loc_4997A6
; ---------------------------------------------------------------------------

loc_4997A1:				; CODE XREF: .text:00499781j
		xor	eax, eax
		mov	[ebp-28h], eax

loc_4997A6:				; CODE XREF: .text:0049977Cj
					; .text:00499790j ...
		xor	edx, edx
		mov	[ebp-4], edx

loc_4997AB:				; CODE XREF: .text:004997C1j
		mov	ecx, [ebp-4]
		mov	eax, 1
		shl	eax, cl
		cmp	eax, [ebp-28h]
		jz	short loc_4997C3
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 20h
		jl	short loc_4997AB

loc_4997C3:				; CODE XREF: .text:004997B8j
		cmp	dword ptr [ebp-4], 20h
		jge	loc_4987F3
		cmp	dword ptr [ebp-4], 0Ah
		jge	short loc_4997DA
		mov	edx, (offset aRtl+1) ; "͈ۑ"
		jmp	short loc_4997DF
; ---------------------------------------------------------------------------

loc_4997DA:				; CODE XREF: .text:004997D1j
		mov	edx, offset a_hlp ; ".hlp"

loc_4997DF:				; CODE XREF: .text:004997D8j
		push	edx
		lea	ecx, [ebp-23Ch]
		mov	eax, [ebp-4]
		push	eax
		push	offset aIS_5	; "%i%s	"
		push	ecx		; buffer
		call	_sprintf
		add	esp, 10h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-2Ch], 1
		jnz	short loc_499821
		mov	eax, [ebp-28h]
		lea	edx, [ebp-23Ch]
		push	eax
		push	offset a0x02x_0	; "(0x%02X)"
		add	edx, [ebp-10h]
		push	edx		; buffer
		call	_sprintf
		add	esp, 0Ch
		add	[ebp-10h], eax
		jmp	short loc_499865
; ---------------------------------------------------------------------------

loc_499821:				; CODE XREF: .text:004997FFj
		cmp	dword ptr [ebp-2Ch], 2
		jnz	short loc_499847
		mov	ecx, [ebp-28h]
		lea	eax, [ebp-23Ch]
		push	ecx
		push	offset a0x04x	; "(0x%04X)"
		add	eax, [ebp-10h]
		push	eax		; buffer
		call	_sprintf
		add	esp, 0Ch
		add	[ebp-10h], eax
		jmp	short loc_499865
; ---------------------------------------------------------------------------

loc_499847:				; CODE XREF: .text:00499825j
		mov	edx, [ebp-28h]
		lea	ecx, [ebp-23Ch]
		push	edx
		push	offset a0x08x	; "(0x%08X)"
		add	ecx, [ebp-10h]
		push	ecx		; buffer
		call	_sprintf
		add	esp, 0Ch
		add	[ebp-10h], eax

loc_499865:				; CODE XREF: .text:0049981Fj
					; .text:00499845j
		mov	eax, [ebp-1Ch]
		push	eax
		mov	edx, [ebp-18h]
		push	edx
		mov	ecx, [ebp-10h]
		push	ecx
		lea	eax, [ebp-23Ch]
		push	eax
		call	loc_498614
		add	esp, 10h
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_499885:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		mov	edx, [ebp-30h]	; jumptable 00499437 case 82
		cmp	dword ptr [edx+4], 0A0073h
		jnz	short loc_49989C
		mov	ecx, [ebp-30h]
		mov	eax, [ecx+30h]
		mov	[ebp-8], eax
		jmp	short loc_4998BF
; ---------------------------------------------------------------------------

loc_49989C:				; CODE XREF: .text:0049988Fj
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+464h], 0A0073h
		jnz	short loc_4998B9
		mov	ecx, [ebp-30h]
		mov	eax, [ecx+490h]
		mov	[ebp-8], eax
		jmp	short loc_4998BF
; ---------------------------------------------------------------------------

loc_4998B9:				; CODE XREF: .text:004998A9j
		inc	esi
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_4998BF:				; CODE XREF: .text:0049989Aj
					; .text:004998B7j
		test	byte ptr stru_5EDB9C.prefixes, 40h
		mov	edx, 2
		jnz	short loc_4998D0
		add	edx, 2

loc_4998D0:				; CODE XREF: .text:004998CBj
		mov	[ebp-10h], edx
		mov	eax, [ebp-8]
		cdq
		idiv	dword ptr [ebp-10h]
		imul	dword ptr [ebp-10h]
		cmp	eax, [ebp-8]
		jnz	short loc_499900
		mov	eax, [ebp-8]
		lea	ecx, [ebp-23Ch]
		cdq
		idiv	dword ptr [ebp-10h]
		push	eax
		push	offset aI_Arguments ; "%i. arguments"
		push	ecx		; buffer
		call	_sprintf
		add	esp, 0Ch
		jmp	short loc_499918
; ---------------------------------------------------------------------------

loc_499900:				; CODE XREF: .text:004998E0j
		mov	eax, [ebp-8]
		lea	edx, [ebp-23Ch]
		push	eax
		push	offset aI_BytesOfArgum ; "%i. bytes of arguments"
		push	edx		; buffer
		call	_sprintf
		add	esp, 0Ch

loc_499918:				; CODE XREF: .text:004998FEj
		mov	ecx, [ebp-1Ch]
		lea	edx, [ebp-23Ch]
		push	ecx
		mov	eax, [ebp-18h]
		push	eax
		push	0
		push	edx
		call	loc_498614
		add	esp, 10h
		inc	esi
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_499937:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		mov	esi, [ebp-14h]	; jumptable 00499437 case 69
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_49993F:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		inc	esi		; jumptable 00499437 case 86
		xor	eax, eax
		mov	al, [edi+esi]
		cmp	eax, 30h
		jnz	short loc_499981
		inc	esi
		push	1
		push	2
		push	offset aI_02i	; "%i.%02i"
		lea	edx, [ebp-23Ch]
		push	edx		; buffer
		call	_sprintf
		add	esp, 10h
		mov	ecx, [ebp-1Ch]
		lea	edx, [ebp-23Ch]
		push	ecx
		mov	eax, [ebp-18h]
		push	eax
		push	0
		push	edx
		call	loc_498614
		add	esp, 10h
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_499981:				; CODE XREF: .text:00499948j
		xor	ecx, ecx
		mov	cl, [edi+esi]
		cmp	ecx, 31h
		jnz	short loc_4999C3
		inc	esi
		push	offset a20002013_0 ; "2000-2013"
		push	offset aS_25	; "%S"
		lea	eax, [ebp-23Ch]
		push	eax		; buffer
		call	_sprintf
		add	esp, 0Ch
		mov	edx, [ebp-1Ch]
		lea	eax, [ebp-23Ch]
		push	edx
		mov	ecx, [ebp-18h]
		push	ecx
		push	0
		push	eax
		call	loc_498614
		add	esp, 10h
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_4999C3:				; CODE XREF: .text:00499989j
		xor	edx, edx
		mov	dl, [edi+esi]
		cmp	edx, 32h
		jnz	loc_4987F3
		inc	esi
		push	offset aOlehYuschuk_0 ;	"Oleh Yuschuk"
		push	offset aS_25	; "%S"
		lea	ecx, [ebp-23Ch]
		push	ecx		; buffer
		call	_sprintf
		add	esp, 0Ch
		mov	eax, [ebp-1Ch]
		lea	ecx, [ebp-23Ch]
		push	eax
		mov	edx, [ebp-18h]
		push	edx
		push	0
		push	ecx
		call	loc_498614
		add	esp, 10h
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_499A09:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		inc	esi		; jumptable 00499437 cases 88,99,111,114,120
		cmp	esi, [ebp-14h]
		jge	loc_4987F3
		xor	eax, eax
		mov	al, [edi+esi]
		add	eax, 0FFFFFFCFh
		mov	[ebp-4], eax
		inc	esi
		cmp	dword ptr [ebp-4], 0
		jl	loc_4987F3
		cmp	dword ptr [ebp-4], 3
		jge	loc_4987F3
		cmp	ebx, 6Fh
		jz	short loc_499A3D
		cmp	ebx, 72h
		jnz	short loc_499A47

loc_499A3D:				; CODE XREF: .text:00499A36j
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	loc_499EE5
; ---------------------------------------------------------------------------

loc_499A47:				; CODE XREF: .text:00499A3Bj
		cmp	ebx, 63h
		jnz	short loc_499A6A
		push	offset aContentsOf ; "contents of "
		push	100h		; n
		lea	ecx, [ebp-23Ch]
		push	ecx		; dest
		call	StrcopyA
		add	esp, 0Ch
		mov	[ebp-8], eax
		jmp	short loc_499A6F
; ---------------------------------------------------------------------------

loc_499A6A:				; CODE XREF: .text:00499A4Aj
		xor	eax, eax
		mov	[ebp-8], eax

loc_499A6F:				; CODE XREF: .text:00499A68j
		mov	eax, [ebp-4]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*2]
		shl	eax, 2
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+eax*8], 1
		jz	loc_499B18
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+eax*8+0Ch], 1
		jnz	short loc_499ABE
		push	offset a8BitRegister ; "8-bit register "
		mov	eax, 100h
		sub	eax, [ebp-8]
		push	eax		; n
		lea	ecx, [ebp-23Ch]
		add	ecx, [ebp-8]
		push	ecx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_499EC5
; ---------------------------------------------------------------------------

loc_499ABE:				; CODE XREF: .text:00499A94j
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+eax*8+0Ch], 2
		jnz	short loc_499AF0
		push	offset a16BitRegister ;	"16-bit	register "
		mov	eax, 100h
		sub	eax, [ebp-8]
		push	eax		; n
		lea	ecx, [ebp-23Ch]
		add	ecx, [ebp-8]
		push	ecx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_499EC5
; ---------------------------------------------------------------------------

loc_499AF0:				; CODE XREF: .text:00499AC6j
		push	offset a32BitRegister ;	"32-bit	register "
		mov	eax, 100h
		sub	eax, [ebp-8]
		push	eax		; n
		lea	edx, [ebp-23Ch]
		add	edx, [ebp-8]
		push	edx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_499EC5
; ---------------------------------------------------------------------------

loc_499B18:				; CODE XREF: .text:00499A86j
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+eax*8], 2
		jz	short loc_499B49
		push	offset aSegmentRegiste ; "segment register "
		mov	eax, 100h
		sub	eax, [ebp-8]
		push	eax		; n
		lea	edx, [ebp-23Ch]
		add	edx, [ebp-8]
		push	edx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_499EC5
; ---------------------------------------------------------------------------

loc_499B49:				; CODE XREF: .text:00499B1Fj
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+eax*8], 4
		jz	short loc_499B7A
		push	offset a80BitFloatingP ; "80-bit floating-point	register "
		mov	eax, 100h
		sub	eax, [ebp-8]
		push	eax		; n
		lea	edx, [ebp-23Ch]
		add	edx, [ebp-8]
		push	edx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_499EC5
; ---------------------------------------------------------------------------

loc_499B7A:				; CODE XREF: .text:00499B50j
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+eax*8], 8
		jz	short loc_499BAB
		push	offset aMmxRegister ; "MMX register "
		mov	eax, 100h
		sub	eax, [ebp-8]
		push	eax		; n
		lea	edx, [ebp-23Ch]
		add	edx, [ebp-8]
		push	edx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_499EC5
; ---------------------------------------------------------------------------

loc_499BAB:				; CODE XREF: .text:00499B81j
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+eax*8], 10h
		jz	short loc_499BDC
		push	offset a3dnowRegister ;	"3DNow!	register "
		mov	eax, 100h
		sub	eax, [ebp-8]
		push	eax		; n
		lea	edx, [ebp-23Ch]
		add	edx, [ebp-8]
		push	edx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_499EC5
; ---------------------------------------------------------------------------

loc_499BDC:				; CODE XREF: .text:00499BB2j
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+eax*8], 20h
		jz	short loc_499C0D
		push	offset aSseRegister ; "SSE register "
		mov	eax, 100h
		sub	eax, [ebp-8]
		push	eax		; n
		lea	edx, [ebp-23Ch]
		add	edx, [ebp-8]
		push	edx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_499EC5
; ---------------------------------------------------------------------------

loc_499C0D:				; CODE XREF: .text:00499BE3j
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+eax*8], 40h
		jz	short loc_499C3E
		push	offset aControlRegiste ; "control register "
		mov	eax, 100h
		sub	eax, [ebp-8]
		push	eax		; n
		lea	edx, [ebp-23Ch]
		add	edx, [ebp-8]
		push	edx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_499EC5
; ---------------------------------------------------------------------------

loc_499C3E:				; CODE XREF: .text:00499C14j
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+eax*8], 80h
		jz	short loc_499C6F
		push	offset aDebuggingRegis ; "debugging register "
		mov	eax, 100h
		sub	eax, [ebp-8]
		push	eax		; n
		lea	edx, [ebp-23Ch]
		add	edx, [ebp-8]
		push	edx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_499EC5
; ---------------------------------------------------------------------------

loc_499C6F:				; CODE XREF: .text:00499C45j
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+eax*8+1],	1
		jz	loc_499E28
		mov	edx, [ebp-30h]
		mov	ecx, [edx+eax*8+4]
		and	ecx, 0FFh
		cmp	ecx, 27h
		jnz	short loc_499CB7
		push	offset aMemory	; "memory "
		mov	eax, 100h
		sub	eax, [ebp-8]
		push	eax		; n
		lea	eax, [ebp-23Ch]
		add	eax, [ebp-8]
		push	eax		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_499E00
; ---------------------------------------------------------------------------

loc_499CB7:				; CODE XREF: .text:00499C8Dj
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+eax*8+0Ch], 1
		jnz	short loc_499CE9
		push	offset a8BitMemory ; "8-bit memory "
		mov	ecx, 100h
		sub	ecx, [ebp-8]
		push	ecx		; n
		lea	eax, [ebp-23Ch]
		add	eax, [ebp-8]
		push	eax		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_499E00
; ---------------------------------------------------------------------------

loc_499CE9:				; CODE XREF: .text:00499CBFj
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+eax*8+0Ch], 2
		jnz	short loc_499D1B
		push	offset a16BitMemory ; "16-bit memory "
		mov	ecx, 100h
		sub	ecx, [ebp-8]
		push	ecx		; n
		lea	eax, [ebp-23Ch]
		add	eax, [ebp-8]
		push	eax		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_499E00
; ---------------------------------------------------------------------------

loc_499D1B:				; CODE XREF: .text:00499CF1j
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+eax*8+0Ch], 4
		jnz	short loc_499D4D
		push	offset a32BitMemory ; "32-bit memory "
		mov	ecx, 100h
		sub	ecx, [ebp-8]
		push	ecx		; n
		lea	eax, [ebp-23Ch]
		add	eax, [ebp-8]
		push	eax		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_499E00
; ---------------------------------------------------------------------------

loc_499D4D:				; CODE XREF: .text:00499D23j
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+eax*8+0Ch], 8
		jnz	short loc_499D7F
		push	offset a64BitMemory ; "64-bit memory "
		mov	ecx, 100h
		sub	ecx, [ebp-8]
		push	ecx		; n
		lea	eax, [ebp-23Ch]
		add	eax, [ebp-8]
		push	eax		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_499E00
; ---------------------------------------------------------------------------

loc_499D7F:				; CODE XREF: .text:00499D55j
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+eax*8+0Ch], 0Ah
		jnz	short loc_499DAE
		push	offset a80BitMemory ; "80-bit memory "
		mov	ecx, 100h
		sub	ecx, [ebp-8]
		push	ecx		; n
		lea	eax, [ebp-23Ch]
		add	eax, [ebp-8]
		push	eax		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	short loc_499E00
; ---------------------------------------------------------------------------

loc_499DAE:				; CODE XREF: .text:00499D87j
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+eax*8+0Ch], 10h
		jnz	short loc_499DDD
		push	offset a128BitMemory ; "128-bit	memory "
		mov	ecx, 100h
		sub	ecx, [ebp-8]
		push	ecx		; n
		lea	eax, [ebp-23Ch]
		add	eax, [ebp-8]
		push	eax		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	short loc_499E00
; ---------------------------------------------------------------------------

loc_499DDD:				; CODE XREF: .text:00499DB6j
		push	offset aMemory	; "memory "
		mov	edx, 100h
		sub	edx, [ebp-8]
		push	edx		; n
		lea	ecx, [ebp-23Ch]
		add	ecx, [ebp-8]
		push	ecx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax

loc_499E00:				; CODE XREF: .text:00499CB2j
					; .text:00499CE4j ...
		push	offset aAtLocation ; "at location "
		mov	eax, 100h
		sub	eax, [ebp-8]
		push	eax		; n
		lea	edx, [ebp-23Ch]
		add	edx, [ebp-8]
		push	edx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_499EC5
; ---------------------------------------------------------------------------

loc_499E28:				; CODE XREF: .text:00499C77j
		mov	ecx, [ebp-4]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		mov	edx, [ebp-30h]
		test	byte ptr [edx+ecx*8+1],	2
		jz	short loc_499E60
		push	offset aImmediateConst ; "immediate constant "
		push	100h		; n
		lea	ecx, [ebp-23Ch]
		push	ecx		; dest
		call	StrcopyA
		add	esp, 0Ch
		mov	[ebp-8], eax
		jmp	short loc_499EC5
; ---------------------------------------------------------------------------

loc_499E60:				; CODE XREF: .text:00499E40j
		mov	eax, [ebp-4]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*2]
		shl	eax, 2
		mov	ecx, [ebp-30h]
		test	byte ptr [ecx+eax*8+1],	4
		jz	short loc_499EC0
		cmp	ebx, 63h
		jnz	short loc_499E9B
		push	offset aDataReadFromTh ; "data read from the "
		push	100h		; n
		lea	eax, [ebp-23Ch]
		push	eax		; dest
		call	StrcopyA
		add	esp, 0Ch
		mov	[ebp-8], eax

loc_499E9B:				; CODE XREF: .text:00499E7Dj
		push	offset aIOPort	; "I/O port "
		mov	edx, 100h
		sub	edx, [ebp-8]
		push	edx		; n
		lea	ecx, [ebp-23Ch]
		add	ecx, [ebp-8]
		push	ecx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	short loc_499EC5
; ---------------------------------------------------------------------------

loc_499EC0:				; CODE XREF: .text:00499E78j
		xor	eax, eax
		mov	[ebp-8], eax

loc_499EC5:				; CODE XREF: .text:00499AB9j
					; .text:00499AEBj ...
		cmp	ebx, 58h
		jnz	short loc_499EE5
		xor	edx, edx
		mov	dl, [ebp-23Ch]
		mov	[ebp-34h], edx
		mov	ecx, [ebp-34h]
		push	ecx		; ch
		call	__ltoupper
		pop	ecx
		mov	[ebp-23Ch], al

loc_499EE5:				; CODE XREF: .text:00499A42j
					; .text:00499EC8j
		cmp	ebx, 72h
		jnz	loc_49A0F6
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-10h], edx
		mov	ecx, [ebp-4]
		mov	edx, ecx
		shl	ecx, 4
		add	ecx, edx
		lea	ecx, [edx+ecx*2]
		shl	ecx, 2
		mov	edx, [ebp-30h]
		lea	ecx, [edx+ecx*8]
		mov	[ebp-3Ch], ecx
		mov	dword ptr [ebp-38h], offset regname
		mov	edx, [ebp-4]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		mov	ecx, [ebp-30h]
		lea	ebx, [ecx+edx*8+24h]

loc_499F2C:				; CODE XREF: .text:00499FF9j
		cmp	byte ptr [ebx],	0
		jz	loc_499FED
		test	eax, eax
		jz	short loc_499F5C
		push	offset asc_54DA7F ; "+"
		mov	eax, 200h
		sub	eax, [ebp-8]
		push	eax		; n
		lea	edx, [ebp-23Ch]
		add	edx, [ebp-8]
		push	edx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax

loc_499F5C:				; CODE XREF: .text:00499F37j
		cmp	dword_5BDCC8, 3
		jnz	short loc_499F88
		push	offset asc_54DA81 ; "%"
		mov	ecx, 200h
		sub	ecx, [ebp-8]
		push	ecx		; n
		lea	eax, [ebp-23Ch]
		add	eax, [ebp-8]
		push	eax		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	[ebp-8], eax

loc_499F88:				; CODE XREF: .text:00499F63j
		mov	edx, 200h
		sub	edx, [ebp-8]
		push	edx		; ns
		lea	ecx, [ebp-23Ch]
		add	ecx, [ebp-8]
		push	ecx		; s
		push	100h		; nw
		mov	eax, 1
		mov	edx, [ebp-3Ch]
		test	byte ptr [edx+2], 20h
		jnz	short loc_499FAF
		inc	eax

loc_499FAF:				; CODE XREF: .text:00499FACj
		shl	eax, 5
		mov	ecx, [ebp-38h]
		mov	eax, [ecx+eax]
		push	eax		; w
		call	Unicodetoascii
		add	esp, 10h
		add	[ebp-8], eax
		cmp	byte ptr [ebx],	1
		jbe	short loc_499FE8
		xor	edx, edx
		lea	ecx, [ebp-23Ch]
		mov	dl, [ebx]
		push	edx
		push	offset aI_18	; "*%i"
		add	ecx, [ebp-8]
		push	ecx		; buffer
		call	_sprintf
		add	esp, 0Ch
		add	[ebp-8], eax

loc_499FE8:				; CODE XREF: .text:00499FC7j
		mov	eax, 1

loc_499FED:				; CODE XREF: .text:00499F2Fj
		inc	dword ptr [ebp-10h]
		add	dword ptr [ebp-38h], 4
		inc	ebx
		cmp	dword ptr [ebp-10h], 8
		jl	loc_499F2C
		mov	edx, [ebp-4]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		mov	ecx, [ebp-30h]
		cmp	dword ptr [ecx+edx*8+30h], 0
		jnz	short loc_49A021
		test	eax, eax
		jnz	loc_49A0D6

loc_49A021:				; CODE XREF: .text:0049A017j
		mov	edx, [ebp-4]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		mov	ecx, [ebp-30h]
		cmp	dword ptr [ecx+edx*8+30h], 0
		jge	short loc_49A097
		mov	edx, [ebp-4]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*2]
		shl	edx, 2
		mov	ecx, [ebp-30h]
		cmp	dword ptr [ecx+edx*8+30h], 0FFFFC000h
		jle	short loc_49A097
		mov	eax, [ebp-8]
		mov	byte ptr [ebp+eax-23Ch], 2Dh
		inc	dword ptr [ebp-8]
		mov	edx, [ebp-4]
		mov	eax, edx
		shl	edx, 4
		add	edx, eax
		lea	edx, [eax+edx*2]
		shl	edx, 2
		mov	ecx, [ebp-30h]
		mov	edx, [ecx+edx*8+30h]
		neg	edx
		push	edx		; u
		lea	eax, [ebp-23Ch]
		add	eax, [ebp-8]
		push	eax		; s
		call	HexprintA
		add	esp, 8
		add	[ebp-8], eax
		jmp	short loc_49A0D6
; ---------------------------------------------------------------------------

loc_49A097:				; CODE XREF: .text:0049A039j
					; .text:0049A056j
		test	eax, eax
		jz	short loc_49A0A9
		mov	edx, [ebp-8]
		mov	byte ptr [ebp+edx-23Ch], 2Bh
		inc	dword ptr [ebp-8]

loc_49A0A9:				; CODE XREF: .text:0049A099j
		mov	ecx, [ebp-4]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*2]
		shl	ecx, 2
		mov	edx, [ebp-30h]
		mov	ecx, [edx+ecx*8+30h]
		push	ecx		; u
		lea	eax, [ebp-23Ch]
		add	eax, [ebp-8]
		push	eax		; s
		call	HexprintA
		add	esp, 8
		add	[ebp-8], eax

loc_49A0D6:				; CODE XREF: .text:0049A01Bj
					; .text:0049A095j
		mov	edx, [ebp-1Ch]
		push	edx
		mov	ecx, [ebp-18h]
		push	ecx
		mov	eax, [ebp-8]
		push	eax
		lea	edx, [ebp-23Ch]
		push	edx
		call	loc_498614
		add	esp, 10h
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_49A0F6:				; CODE XREF: .text:00499EE8j
		cmp	dword ptr [ebp-8], 0
		jle	short loc_49A117
		mov	ecx, [ebp-1Ch]
		push	ecx
		mov	eax, [ebp-18h]
		push	eax
		mov	edx, [ebp-8]
		push	edx
		lea	ecx, [ebp-23Ch]
		push	ecx
		call	loc_498614
		add	esp, 10h

loc_49A117:				; CODE XREF: .text:0049A0FAj
		mov	eax, [ebp-1Ch]
		push	eax		; char
		mov	edx, [ebp-18h]
		push	edx		; char
		push	0		; int
		mov	ecx, [ebp-4]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*2]
		shl	ecx, 5
		add	ecx, [ebp-30h]
		add	ecx, 60h
		push	ecx		; s
		call	loc_49848C
		add	esp, 10h
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_49A145:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		inc	esi		; jumptable 00499437 case 115
		cmp	esi, [ebp-14h]
		jge	loc_4987F3
		xor	edx, edx
		mov	dl, [edi+esi]
		add	edx, 0FFFFFFCFh
		mov	[ebp-4], edx
		inc	esi
		cmp	dword ptr [ebp-4], 0
		jl	loc_4987F3
		cmp	dword ptr [ebp-4], 3
		jge	loc_4987F3
		mov	eax, [ebp-4]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*2]
		shl	eax, 2
		mov	ecx, [ebp-30h]
		cmp	dword ptr [ecx+eax*8+0Ch], 1
		jnz	short loc_49A1AA
		push	offset aByte	; "byte"
		push	100h		; n
		lea	eax, [ebp-23Ch]
		push	eax		; dest
		call	StrcopyA
		add	esp, 0Ch
		mov	[ebp-8], eax
		jmp	loc_49A241
; ---------------------------------------------------------------------------

loc_49A1AA:				; CODE XREF: .text:0049A187j
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+eax*8+0Ch], 2
		jnz	short loc_49A1D2
		push	offset aWord	; "word"
		push	100h		; n
		lea	ecx, [ebp-23Ch]
		push	ecx		; dest
		call	StrcopyA
		add	esp, 0Ch
		mov	[ebp-8], eax
		jmp	short loc_49A241
; ---------------------------------------------------------------------------

loc_49A1D2:				; CODE XREF: .text:0049A1B2j
		mov	edx, [ebp-30h]
		cmp	dword ptr [edx+eax*8+0Ch], 4
		jnz	short loc_49A1FA
		push	offset aDoubleword ; "doubleword"
		push	100h		; n
		lea	eax, [ebp-23Ch]
		push	eax		; dest
		call	StrcopyA
		add	esp, 0Ch
		mov	[ebp-8], eax
		jmp	short loc_49A241
; ---------------------------------------------------------------------------

loc_49A1FA:				; CODE XREF: .text:0049A1DAj
		mov	ecx, [ebp-30h]
		cmp	dword ptr [ecx+eax*8+0Ch], 8
		jnz	short loc_49A222
		push	offset aQuadword ; "quadword"
		push	100h		; n
		lea	eax, [ebp-23Ch]
		push	eax		; dest
		call	StrcopyA
		add	esp, 0Ch
		mov	[ebp-8], eax
		jmp	short loc_49A241
; ---------------------------------------------------------------------------

loc_49A222:				; CODE XREF: .text:0049A202j
		mov	edx, [ebp-30h]
		mov	ecx, [edx+eax*8+0Ch]
		lea	eax, [ebp-23Ch]
		push	ecx
		push	offset aIByteOperand ; "%i-byte	operand"
		push	eax		; buffer
		call	_sprintf
		add	esp, 0Ch
		mov	[ebp-8], eax

loc_49A241:				; CODE XREF: .text:0049A1A5j
					; .text:0049A1D0j ...
		mov	edx, [ebp-1Ch]
		push	edx
		mov	ecx, [ebp-18h]
		push	ecx
		mov	eax, [ebp-8]
		push	eax
		lea	edx, [ebp-23Ch]
		push	edx
		call	loc_498614
		add	esp, 10h
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_49A261:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		inc	esi		; jumptable 00499437 case 98
		cmp	esi, [ebp-14h]
		jge	loc_4987F3
		xor	ecx, ecx
		mov	cl, [edi+esi]
		add	ecx, 0FFFFFFCFh
		mov	[ebp-4], ecx
		inc	esi
		cmp	dword ptr [ebp-4], 0
		jl	loc_4987F3
		cmp	dword ptr [ebp-4], 3
		jge	loc_4987F3
		mov	eax, [ebp-4]
		mov	ecx, [ebp-30h]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*2]
		lea	edx, [ebp-23Ch]
		shl	eax, 2
		mov	eax, [ecx+eax*8+0Ch]
		shl	eax, 3
		push	eax
		push	(offset	aI_18+1) ; format
		push	edx		; buffer
		call	_sprintf
		add	esp, 0Ch
		mov	[ebp-8], eax
		mov	ecx, [ebp-1Ch]
		push	ecx
		mov	eax, [ebp-18h]
		push	eax
		mov	edx, [ebp-8]
		push	edx
		lea	ecx, [ebp-23Ch]
		push	ecx
		call	loc_498614
		add	esp, 10h
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_49A2DD:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		mov	eax, [ebp-30h]	; jumptable 00499437 case 100
		inc	esi
		lea	ecx, [ebp-23Ch]
		mov	edx, [eax+0Ch]
		shl	edx, 4
		push	edx
		push	(offset	aI_18+1) ; format
		push	ecx		; buffer
		call	_sprintf
		add	esp, 0Ch
		mov	[ebp-8], eax
		mov	eax, [ebp-1Ch]
		push	eax
		mov	edx, [ebp-18h]
		push	edx
		mov	ecx, [ebp-8]
		push	ecx
		lea	eax, [ebp-23Ch]
		push	eax
		call	loc_498614
		add	esp, 10h
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_49A31F:				; CODE XREF: .text:00499437j
					; DATA XREF: .text:off_49948Co
		inc	esi		; jumptable 00499437 case 62
		lea	edx, [esi+2]
		cmp	edx, [ebp-14h]
		jg	loc_4987F3
		xor	ecx, ecx
		xor	edx, edx
		mov	cl, [edi+esi]
		mov	dl, [edi+esi+1]
		mov	eax, ecx
		mov	ecx, dword_5F26E8
		add	eax, eax
		add	esi, 2
		lea	eax, [eax+eax*4]
		add	eax, edx
		add	eax, 0FFFFFDF0h
		mov	[ebp-8], eax
		cmp	ecx, [ebp-8]
		jle	short loc_49A39E
		mov	eax, dword_5F26E8
		sub	eax, [ebp-8]
		sub	dword_5F26E0, eax
		mov	edx, [ebp-8]
		mov	dword_5F26E8, edx
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_49A372:				; CODE XREF: .text:0049A3A6j
		cmp	dword_5F26E0, 1000h
		jge	loc_4987F3
		mov	ecx, dword_5F26E0
		mov	word_5EF6E0[ecx*2], 20h
		inc	dword_5F26E0
		inc	dword_5F26E8

loc_49A39E:				; CODE XREF: .text:0049A354j
		mov	eax, dword_5F26E8
		cmp	eax, [ebp-8]
		jl	short loc_49A372
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_49A3AD:				; CODE XREF: .text:0049942Bj
					; .text:00499437j
					; DATA XREF: ...
		mov	dl, [edi+esi]	; jumptable 00499437 default case
		mov	ecx, [ebp-0Ch]
		mov	[ebp+ecx-23Ch],	dl
		inc	esi
		inc	dword ptr [ebp-0Ch]
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_49A3C3:				; CODE XREF: .text:004993E8j
		xor	eax, eax
		mov	al, [edi+esi]
		cmp	eax, 0A0h
		jl	loc_49A52E
		cmp	eax, 0DFh
		jg	loc_49A52E
		cmp	dword ptr [ebp-0Ch], 0
		jle	short loc_49A404
		mov	edx, [ebp-1Ch]
		push	edx
		mov	ecx, [ebp-18h]
		push	ecx
		mov	eax, [ebp-0Ch]
		push	eax
		lea	edx, [ebp-23Ch]
		push	edx
		call	loc_498614
		add	esp, 10h
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx

loc_49A404:				; CODE XREF: .text:0049A3E2j
		xor	eax, eax
		mov	al, [edi+esi]
		add	eax, 0FFFFFF53h	; switch 46 cases
		cmp	eax, 2Dh
		ja	loc_49A50C	; jumptable 0049A41D default case
		mov	al, ds:byte_49A424[eax]
		jmp	ds:off_49A452[eax*4] ; switch jump
; ---------------------------------------------------------------------------
byte_49A424	db    0Eh,   0Dh,   0Ch,     0 ; DATA XREF: .text:0049A417r
		db	0,     0,   0Bh,   0Ah ; indirect table	for switch statement
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     9,     8
		db	7,     6,     5,     4
		db	3,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	2,     1
off_49A452	dd offset loc_49A50C	; DATA XREF: .text:0049A41Dr
		dd offset loc_49A497	; jump table for switch	statement
		dd offset loc_49A4DF
		dd offset loc_49A4BB
		dd offset loc_49A48E
		dd offset loc_49A4B2
		dd offset loc_49A4A0
		dd offset loc_49A4D6
		dd offset loc_49A4CD
		dd offset loc_49A4A9
		dd offset loc_49A4C4
		dd offset loc_49A4E8
		dd offset loc_49A4FA
		dd offset loc_49A4F1
		dd offset loc_49A503
; ---------------------------------------------------------------------------

loc_49A48E:				; CODE XREF: .text:0049A41Dj
					; DATA XREF: .text:off_49A452o
		mov	byte ptr [ebp-23Ch], 30h ; jumptable 0049A41D case 196
		jmp	short loc_49A513
; ---------------------------------------------------------------------------

loc_49A497:				; CODE XREF: .text:0049A41Dj
					; DATA XREF: .text:off_49A452o
		mov	byte ptr [ebp-23Ch], 31h ; jumptable 0049A41D case 218
		jmp	short loc_49A513
; ---------------------------------------------------------------------------

loc_49A4A0:				; CODE XREF: .text:0049A41Dj
					; DATA XREF: .text:off_49A452o
		mov	byte ptr [ebp-23Ch], 32h ; jumptable 0049A41D case 194
		jmp	short loc_49A513
; ---------------------------------------------------------------------------

loc_49A4A9:				; CODE XREF: .text:0049A41Dj
					; DATA XREF: .text:off_49A452o
		mov	byte ptr [ebp-23Ch], 33h ; jumptable 0049A41D case 191
		jmp	short loc_49A513
; ---------------------------------------------------------------------------

loc_49A4B2:				; CODE XREF: .text:0049A41Dj
					; DATA XREF: .text:off_49A452o
		mov	byte ptr [ebp-23Ch], 34h ; jumptable 0049A41D case 195
		jmp	short loc_49A513
; ---------------------------------------------------------------------------

loc_49A4BB:				; CODE XREF: .text:0049A41Dj
					; DATA XREF: .text:off_49A452o
		mov	byte ptr [ebp-23Ch], 35h ; jumptable 0049A41D case 197
		jmp	short loc_49A513
; ---------------------------------------------------------------------------

loc_49A4C4:				; CODE XREF: .text:0049A41Dj
					; DATA XREF: .text:off_49A452o
		mov	byte ptr [ebp-23Ch], 36h ; jumptable 0049A41D case 180
		jmp	short loc_49A513
; ---------------------------------------------------------------------------

loc_49A4CD:				; CODE XREF: .text:0049A41Dj
					; DATA XREF: .text:off_49A452o
		mov	byte ptr [ebp-23Ch], 37h ; jumptable 0049A41D case 192
		jmp	short loc_49A513
; ---------------------------------------------------------------------------

loc_49A4D6:				; CODE XREF: .text:0049A41Dj
					; DATA XREF: .text:off_49A452o
		mov	byte ptr [ebp-23Ch], 38h ; jumptable 0049A41D case 193
		jmp	short loc_49A513
; ---------------------------------------------------------------------------

loc_49A4DF:				; CODE XREF: .text:0049A41Dj
					; DATA XREF: .text:off_49A452o
		mov	byte ptr [ebp-23Ch], 39h ; jumptable 0049A41D case 217
		jmp	short loc_49A513
; ---------------------------------------------------------------------------

loc_49A4E8:				; CODE XREF: .text:0049A41Dj
					; DATA XREF: .text:off_49A452o
		mov	byte ptr [ebp-23Ch], 3Ah ; jumptable 0049A41D case 179
		jmp	short loc_49A513
; ---------------------------------------------------------------------------

loc_49A4F1:				; CODE XREF: .text:0049A41Dj
					; DATA XREF: .text:off_49A452o
		mov	byte ptr [ebp-23Ch], 3Bh ; jumptable 0049A41D case 174
		jmp	short loc_49A513
; ---------------------------------------------------------------------------

loc_49A4FA:				; CODE XREF: .text:0049A41Dj
					; DATA XREF: .text:off_49A452o
		mov	byte ptr [ebp-23Ch], 3Ch ; jumptable 0049A41D case 175
		jmp	short loc_49A513
; ---------------------------------------------------------------------------

loc_49A503:				; CODE XREF: .text:0049A41Dj
					; DATA XREF: .text:off_49A452o
		mov	byte ptr [ebp-23Ch], 3Dh ; jumptable 0049A41D case 173
		jmp	short loc_49A513
; ---------------------------------------------------------------------------

loc_49A50C:				; CODE XREF: .text:0049A411j
					; .text:0049A41Dj
					; DATA XREF: ...
		mov	byte ptr [ebp-23Ch], 1 ; jumptable 0049A41D default case

loc_49A513:				; CODE XREF: .text:0049A495j
					; .text:0049A49Ej ...
		push	2
		push	60h
		push	1
		lea	edx, [ebp-23Ch]
		push	edx
		call	loc_498614
		add	esp, 10h
		inc	esi
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_49A52E:				; CODE XREF: .text:0049A3CDj
					; .text:0049A3D8j
		mov	cl, [edi+esi]
		mov	eax, [ebp-0Ch]
		mov	[ebp+eax-23Ch],	cl
		inc	esi
		inc	dword ptr [ebp-0Ch]
		jmp	loc_4987F3
; ---------------------------------------------------------------------------

loc_49A544:				; CODE XREF: .text:004987FCj
					; .text:0049881Dj ...
		mov	edx, dword_5F26E4
		mov	stru_5EF470.sorted.n, edx

loc_49A550:				; CODE XREF: .text:0049867Ej
					; .text:0049868Bj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_49A558:				; CODE XREF: .text:0049AF86p
					; .text:0049B15Ap
		push	ebp
		mov	ebp, esp
		push	offset aCommandHelp ; "Command help"
		call	_T
		pop	ecx
		push	eax		; src
		push	offset stru_5EF470 ; dst
		call	_wcscpy
		xor	eax, eax
		mov	stru_5EF470.mode, offset loc_43CB01
		mov	stru_5EF470.bar.visible, eax
		mov	stru_5EF470.bar._name, offset aHelp ; "Help"
		mov	stru_5EF470.bar.expl, offset aHelp ; "Help"
		mov	stru_5EF470.bar.mode, 8
		mov	stru_5EF470.bar.defdx, 100h
		mov	stru_5EF470.bar.nbar, 1
		xor	edx, edx
		mov	stru_5EF470.tabfunc, offset loc_49A9EC
		xor	ecx, ecx
		mov	stru_5EF470.custommode,	edx
		xor	eax, eax
		mov	stru_5EF470.customdata,	ecx
		mov	stru_5EF470.updatefunc,	eax
		add	esp, 8
		xor	edx, edx
		mov	stru_5EF470.drawfunc, offset loc_49AB84
		mov	stru_5EF470.tableselfunc, edx
		mov	stru_5EF470.menu, offset stru_518BF4
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
