.code

; Exported entry 202. _Checkfordebugevent
; Exported entry 417. Checkfordebugevent

; signed int __cdecl Checkfordebugevent()
		public Checkfordebugevent
Checkfordebugevent:			; CODE XREF: .text:loc_4105EDp
					; .text:loc_44FBB7p ...
		push	ebp		; _Checkfordebugevent
		mov	ebp, esp
		push	eax
		mov	eax, 3

loc_451311:				; CODE XREF: .text:00451319j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_451311
		mov	eax, [ebp-4]
		add	esp, 0FFFFFC28h
		push	ebx
		push	esi
		push	edi		; a4
		mov	edi, offset run
		call	GetTickCount
		mov	[ebp-50h], eax
		mov	eax, [ebp-50h]
		sub	eax, g_Ticks
		cmp	eax, 3E8h
		jb	short loc_4513A8
		cmp	dword_5C8960, 0
		jz	short loc_45137B
		cmp	dword_5E0BBC, 0Ah
		jle	short loc_45137B
		cmp	dword ptr [edi], 12h
		jz	short loc_45137B
		cmp	dword ptr [edi], 13h
		jz	short loc_45137B
		mov	edx, dword_5E0BBC
		push	edx		; arglist
		push	offset aIEventsPerSeco ; "%i events per	second"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		add	esp, 8

loc_45137B:				; CODE XREF: .text:0045134Bj
					; .text:00451354j ...
		mov	ecx, [ebp-50h]
		sub	ecx, g_Ticks
		cmp	ecx, 4B0h
		jnb	short loc_451398
		add	g_Ticks, 3E8h
		jmp	short loc_4513A0
; ---------------------------------------------------------------------------

loc_451398:				; CODE XREF: .text:0045138Aj
		mov	eax, [ebp-50h]
		mov	g_Ticks, eax

loc_4513A0:				; CODE XREF: .text:00451396j
		xor	edx, edx
		mov	dword_5E0BBC, edx

loc_4513A8:				; CODE XREF: .text:00451342j
		cmp	netdbg,	0
		jz	short loc_4513B6
		call	loc_4D42F8

loc_4513B6:				; CODE XREF: .text:004513AFj
		mov	eax, [edi]
		test	eax, eax
		jz	short loc_4513C1
		cmp	eax, 12h
		jnz	short loc_4513CF

loc_4513C1:				; CODE XREF: .text:004513BAj
		push	1		; dwMilliseconds
		call	Sleep
		xor	eax, eax
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_4513CF:				; CODE XREF: .text:004513BFj
		cmp	netdbg,	0
		jz	short loc_4513E4
		cmp	dword ptr [edi+88h], 103h
		jnz	short loc_451404

loc_4513E4:				; CODE XREF: .text:004513D6j
		cmp	netdbg,	0
		jnz	loc_4514F2
		push	1		; dwMilliseconds
		lea	edx, [edi+24h]
		push	edx		; lpDebugEvent
		call	WaitForDebugEvent
		test	eax, eax
		jnz	loc_4514F2

loc_451404:				; CODE XREF: .text:004513E2j
		cmp	premod.n, 0
		jle	short loc_45141E
		cmp	skipsystembp, 0
		jnz	short loc_45141E
		push	0
		call	loc_44FA44
		pop	ecx

loc_45141E:				; CODE XREF: .text:0045140Bj
					; .text:00451414j
		cmp	dword ptr [edi], 11h
		jnz	loc_4514D1
		cmp	dword ptr [edi+0Ch], 0
		jnz	short loc_451476
		mov	ecx, [ebp-50h]
		sub	ecx, [edi+8]
		cmp	ecx, 64h
		jbe	short loc_451476
		xor	ebx, ebx
		jmp	short loc_45145F
; ---------------------------------------------------------------------------

loc_45143C:				; CODE XREF: .text:00451465j
		push	ebx		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_45145E
		push	0		; lParam
		push	0		; wParam
		push	0		; Msg
		mov	eax, [esi]
		push	eax		; idThread
		call	PostThreadMessageW

loc_45145E:				; CODE XREF: .text:0045144Ej
		inc	ebx

loc_45145F:				; CODE XREF: .text:0045143Aj
		cmp	ebx, thread.sorted.n
		jl	short loc_45143C
		mov	dword ptr [edi+0Ch], 1
		mov	edx, [ebp-50h]
		mov	[edi+8], edx
		jmp	short loc_4514D1
; ---------------------------------------------------------------------------

loc_451476:				; CODE XREF: .text:0045142Bj
					; .text:00451436j
		cmp	dword ptr [edi+0Ch], 1
		jnz	short loc_4514D1
		mov	ecx, [ebp-50h]
		sub	ecx, [edi+8]
		cmp	ecx, 0C8h
		jbe	short loc_4514D1
		xor	ebx, ebx
		jmp	short loc_4514BD
; ---------------------------------------------------------------------------

loc_45148E:				; CODE XREF: .text:004514C3j
		push	ebx		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_4514BC
		jmp	short loc_4514B3
; ---------------------------------------------------------------------------

loc_4514A4:				; CODE XREF: .text:004514BAj
		mov	eax, [esi+50h]
		push	eax		; hThread
		call	ResumeThread
		dec	dword ptr [esi+6B8h]

loc_4514B3:				; CODE XREF: .text:004514A2j
		cmp	dword ptr [esi+6B8h], 0
		jg	short loc_4514A4

loc_4514BC:				; CODE XREF: .text:004514A0j
		inc	ebx

loc_4514BD:				; CODE XREF: .text:0045148Cj
		cmp	ebx, thread.sorted.n
		jl	short loc_45148E
		xor	edx, edx
		mov	[edi+4], edx
		mov	dword ptr [edi+0Ch], 2

loc_4514D1:				; CODE XREF: .text:00451421j
					; .text:00451474j ...
		xor	ebx, ebx
		jmp	short loc_4514E3
; ---------------------------------------------------------------------------

loc_4514D5:				; CODE XREF: .text:004514E9j
		push	0
		mov	eax, dword_5D4544
		mov	edx, [eax+ebx*4]
		call	edx
		pop	ecx
		inc	ebx

loc_4514E3:				; CODE XREF: .text:004514D3j
		cmp	ebx, g_nPluginmainloop
		jl	short loc_4514D5
		xor	eax, eax
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_4514F2:				; CODE XREF: .text:004513EBj
					; .text:004513FEj
		xor	ebx, ebx
		jmp	short loc_451507
; ---------------------------------------------------------------------------

loc_4514F6:				; CODE XREF: .text:0045150Dj
		mov	edx, dword_5D4544
		lea	eax, [edi+24h]
		push	eax
		mov	ecx, [edx+ebx*4]
		call	ecx
		pop	ecx
		inc	ebx

loc_451507:				; CODE XREF: .text:004514F4j
		cmp	ebx, g_nPluginmainloop
		jl	short loc_4514F6
		mov	eax, [edi+28h]
		cmp	eax, processid
		jz	loc_4517C9
		cmp	dword_5D4564, 0
		jz	loc_4515ED
		cmp	_imp__DebugActiveProcessStop, 0
		jz	loc_4515ED
		cmp	dword ptr [edi+24h], 3
		jnz	loc_4515ED
		push	14h		; n
		push	0		; c
		lea	edx, [ebp-2C54h]
		push	edx		; s
		call	_memset
		mov	ecx, [edi+28h]
		add	esp, 0Ch
		mov	[ebp-2C54h], ecx
		xor	eax, eax
		mov	dword ptr [ebp-2C50h], 1
		mov	[ebp-2C4Ch], eax
		lea	eax, [ebp-2C54h]
		mov	edx, [edi+34h]
		mov	[ebp-2C48h], edx
		mov	ecx, [edi+38h]
		mov	[ebp-2C44h], ecx
		push	eax		; item
		push	offset stru_5D456C ; sd
		call	Addsorteddata
		add	esp, 8
		mov	edx, [edi+28h]
		push	edx		; arglist
		push	offset aChildProcessWi ; "Child	process	with ID	%08lX starts"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		mov	ecx, [edi+30h]
		push	ecx		; hObject
		call	CloseHandle
		cmp	dword ptr [edi+88h], 103h
		jnz	short loc_4515D6
		mov	dword ptr [edi+88h], 10002h
		jmp	loc_4517C2
; ---------------------------------------------------------------------------

loc_4515D6:				; CODE XREF: .text:004515C5j
		push	10002h		; dwContinueStatus
		mov	eax, [edi+2Ch]
		push	eax		; dwThreadId
		mov	edx, [edi+28h]
		push	edx		; dwProcessId
		call	ContinueDebugEvent
		jmp	loc_4517C2
; ---------------------------------------------------------------------------

loc_4515ED:				; CODE XREF: .text:00451525j
					; .text:00451532j ...
		cmp	dword_5D4564, 0
		jz	loc_451778
		cmp	_imp__DebugActiveProcessStop, 0
		jz	loc_451778
		push	0		; subaddr
		mov	ecx, [edi+28h]
		push	ecx		; _addr
		push	offset stru_5D456C ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	ebx, eax
		test	eax, eax
		jz	loc_451778
		cmp	dword ptr [edi+24h], 6
		jnz	short loc_451665
		mov	edx, [edi+30h]
		push	edx		; hObject
		call	CloseHandle
		cmp	dword ptr [edi+88h], 103h
		jnz	short loc_45164E
		mov	dword ptr [edi+88h], 10002h
		jmp	loc_4517C2
; ---------------------------------------------------------------------------

loc_45164E:				; CODE XREF: .text:0045163Dj
		push	10002h		; dwContinueStatus
		mov	ecx, [edi+2Ch]
		push	ecx		; dwThreadId
		mov	eax, [edi+28h]
		push	eax		; dwProcessId
		call	ContinueDebugEvent
		jmp	loc_4517C2
; ---------------------------------------------------------------------------

loc_451665:				; CODE XREF: .text:00451628j
		cmp	dword ptr [edi+24h], 1
		jnz	loc_45170F
		cmp	dword ptr [edi+30h], 80000003h
		jnz	loc_45170F
		mov	dword ptr [ebp-33C4h], 10007h
		lea	edx, [ebp-33C4h]
		push	edx		; lpContext
		mov	ecx, [ebx+10h]
		push	ecx		; hThread
		call	GetThreadContext
		test	eax, eax
		jz	short loc_4516B0
		dec	dword ptr [ebp-330Ch]
		lea	eax, [ebp-33C4h]
		push	eax		; lpContext
		mov	edx, [ebx+10h]
		push	edx		; hThread
		call	SetThreadContext

loc_4516B0:				; CODE XREF: .text:00451698j
		mov	ecx, [ebx+10h]
		push	ecx		; hThread
		call	SuspendThread
		cmp	dword ptr [edi+88h], 103h
		jnz	short loc_4516D1
		mov	dword ptr [edi+88h], 10002h
		jmp	short loc_4516E3
; ---------------------------------------------------------------------------

loc_4516D1:				; CODE XREF: .text:004516C3j
		push	10002h		; dwContinueStatus
		mov	eax, [edi+2Ch]
		push	eax		; dwThreadId
		mov	edx, [edi+28h]
		push	edx		; dwProcessId
		call	ContinueDebugEvent

loc_4516E3:				; CODE XREF: .text:004516CFj
		mov	ecx, [edi+28h]
		push	ecx		; _DWORD
		call	_imp__DebugActiveProcessStop
		push	0		; subaddr
		mov	eax, [edi+28h]
		push	eax		; _addr
		push	offset stru_5D456C ; sd
		call	Deletesorteddata
		add	esp, 0Ch
		mov	edx, [edi+28h]
		push	edx
		call	loc_449DA0
		pop	ecx
		jmp	loc_4517C2
; ---------------------------------------------------------------------------

loc_45170F:				; CODE XREF: .text:00451669j
					; .text:00451676j
		mov	ecx, [edi+28h]
		push	ecx
		mov	eax, [edi+24h]
		push	eax		; arglist
		push	offset aUnexpectedDebu ; "Unexpected debug event %i from child pr"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h
		cmp	dword ptr [edi+88h], 103h
		jnz	short loc_451747
		mov	dword ptr [edi+88h], 10002h
		jmp	short loc_451759
; ---------------------------------------------------------------------------

loc_451747:				; CODE XREF: .text:00451739j
		push	10002h		; dwContinueStatus
		mov	edx, [edi+2Ch]
		push	edx		; dwThreadId
		mov	ecx, [edi+28h]
		push	ecx		; dwProcessId
		call	ContinueDebugEvent

loc_451759:				; CODE XREF: .text:00451745j
		mov	eax, [edi+28h]
		push	eax		; _DWORD
		call	_imp__DebugActiveProcessStop
		push	0		; subaddr
		mov	edx, [edi+28h]
		push	edx		; _addr
		push	offset stru_5D456C ; sd
		call	Deletesorteddata
		add	esp, 0Ch
		jmp	short loc_4517C2
; ---------------------------------------------------------------------------

loc_451778:				; CODE XREF: .text:004515F4j
					; .text:00451601j ...
		mov	ecx, [edi+28h]
		push	ecx
		mov	eax, [edi+24h]
		push	eax		; arglist
		push	offset aEvent08lxFromD ; "Event	%08lX from different process (ID "...
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h
		cmp	dword ptr [edi+88h], 103h
		jnz	short loc_4517B0
		mov	dword ptr [edi+88h], 10002h
		jmp	short loc_4517C2
; ---------------------------------------------------------------------------

loc_4517B0:				; CODE XREF: .text:004517A2j
		push	10002h		; dwContinueStatus
		mov	edx, [edi+2Ch]
		push	edx		; dwThreadId
		mov	ecx, [edi+28h]
		push	ecx		; dwProcessId
		call	ContinueDebugEvent

loc_4517C2:				; CODE XREF: .text:004515D1j
					; .text:004515E8j ...
		xor	eax, eax
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_4517C9:				; CODE XREF: .text:00451518j
		cmp	dword ptr [edi], 0
		jnz	short loc_451811
		push	offset aOllydbgReceive ; "OllyDbg received debug event,	but there"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		cmp	dword ptr [edi+88h], 103h
		pop	ecx
		jnz	short loc_4517F8
		mov	dword ptr [edi+88h], 80010001h
		jmp	short loc_45180A
; ---------------------------------------------------------------------------

loc_4517F8:				; CODE XREF: .text:004517EAj
		push	80010001h	; dwContinueStatus
		mov	edx, [edi+2Ch]
		push	edx		; dwThreadId
		mov	ecx, [edi+28h]
		push	ecx		; dwProcessId
		call	ContinueDebugEvent

loc_45180A:				; CODE XREF: .text:004517F6j
		xor	eax, eax
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_451811:				; CODE XREF: .text:004517CCj
		call	loc_4585F4
		mov	edx, [edi+24h]
		cmp	edx, 9		; switch 10 cases
		ja	loc_4578A1	; jumptable 00451822 default case
		jmp	ds:off_451829[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_451829	dd offset loc_4578A1	; DATA XREF: .text:00451822r
		dd offset loc_451851	; jump table for switch	statement
		dd offset loc_4561E5
		dd offset loc_456469
		dd offset loc_45687A
		dd offset loc_456AD1
		dd offset loc_456E12
		dd offset loc_4570A6
		dd offset loc_457293
		dd offset loc_457881
; ---------------------------------------------------------------------------

loc_451851:				; CODE XREF: .text:00451822j
					; DATA XREF: .text:off_451829o
		lea	ecx, [edi+30h]	; jumptable 00451822 case 1
		mov	[ebp-0C0h], ecx
		mov	dword ptr [edi+84h], 1
		cmp	premod.n, 0
		jle	short loc_45187E
		cmp	skipsystembp, 0
		jnz	short loc_45187E
		push	0
		call	loc_44FA44
		pop	ecx

loc_45187E:				; CODE XREF: .text:0045186Bj
					; .text:00451874j
		xor	eax, eax
		mov	[ebp-70h], eax

loc_451883:				; CODE XREF: .text:00455E9Ej
					; .text:00455EB6j
		inc	dword_5E0BBC
		xor	edx, edx
		mov	[edi+8Ch], edx
		xor	ecx, ecx
		mov	[ebp-2C30h], ecx
		xor	eax, eax
		mov	[ebp-30h], eax
		xor	eax, eax
		mov	word ptr [ebp-4F0h], 0
		mov	edx, [ebp-0C0h]
		mov	ecx, [edx+0Ch]
		mov	[ebp-58h], ecx
		mov	[ebp-44h], eax
		cmp	dword ptr [ebp-70h], 0
		jnz	loc_451A5F
		mov	edx, [edi+2Ch]
		push	edx		; threadid
		call	Findthread
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	loc_451962
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		mov	eax, [ebp-0C0h]
		mov	edx, [eax]
		push	edx		; arglist
		push	offset aUnrecoverableE ; "Unrecoverable	exception %08X (no thread"...
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp-58h]
		push	ecx		; _addr
		call	Message
		add	esp, 0Ch
		push	2100Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	eax, [ebp-58h]
		push	eax		; asmaddr
		mov	edx, [edi+2Ch]
		push	edx		; threadid
		call	Setcpu
		add	esp, 18h
		mov	ecx, [ebp-58h]
		push	ecx
		mov	eax, [ebp-0C0h]
		mov	edx, [eax]
		push	edx
		mov	ecx, [edi+2Ch]
		push	ecx		; arglist
		push	offset aThread08xThatR ; "Thread %08X that reported exception %08"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 10h
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		xor	eax, eax
		mov	[edi+84h], eax
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_451962:				; CODE XREF: .text:004518D0j
		mov	edx, [edi+2Ch]
		push	edx		; threadid
		call	GetThreadReg
		pop	ecx
		mov	[ebp-0B0h], eax
		cmp	dword ptr [ebp-0B0h], 0
		jnz	loc_451A0B
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		mov	ecx, [ebp-0C0h]
		mov	eax, [ecx]
		push	eax		; arglist
		push	offset aUnrecoverabl_1 ; "Unrecoverable	exception %08X (no regist"...
		call	_T
		pop	ecx
		push	eax		; format
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Message
		add	esp, 0Ch
		push	2100Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	ecx, [ebp-58h]
		push	ecx		; asmaddr
		mov	eax, [edi+2Ch]
		push	eax		; threadid
		call	Setcpu
		add	esp, 18h
		mov	edx, [edi+2Ch]
		push	edx
		mov	ecx, [ebp-58h]
		push	ecx
		mov	eax, [ebp-0C0h]
		mov	edx, [eax]
		push	edx		; arglist
		push	offset aOllydbgIsUna_6 ; "OllyDbg is unable to read registers for"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 10h
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		xor	ecx, ecx
		mov	[edi+84h], ecx
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_451A0B:				; CODE XREF: .text:00451979j
		cmp	dword ptr [edi+0A0h], 0
		jz	short loc_451A5F
		cmp	VersionInformation.dwPlatformId, 2
		jnz	short loc_451A2A
		push	offset aMaybeItCalledZ ; src
		call	_T
		pop	ecx
		jmp	short loc_451A2F
; ---------------------------------------------------------------------------

loc_451A2A:				; CODE XREF: .text:00451A1Bj
		mov	eax, (offset aErrcode_1+0Dh) ; ""

loc_451A2F:				; CODE XREF: .text:00451A28j
		push	eax		; arglist
		push	offset aDebuggedApplic ; "Debugged application has modified the	d"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aDebugRegisters ; "Debug	registers modified"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6C8 ; cond
		call	Conderror
		add	esp, 10h
		mov	dword ptr [edi+9Ch], 1

loc_451A5F:				; CODE XREF: .text:004518BCj
					; .text:00451A12j
		cmp	dword_5CBB94, 0
		jz	short loc_451AAF
		mov	edx, [ebp-0B0h]
		lea	ecx, [ebp-2C40h]
		push	edx		; t_reg	*
		push	esi		; int
		push	ecx		; t_disasm *
		lea	eax, [ebp-940h]
		push	eax		; src
		mov	edx, [ebp-58h]
		push	edx		; int
		call	loc_44DA78
		add	esp, 14h
		test	byte ptr rtcond.options+1, 4
		jz	short loc_451AAF
		mov	ecx, [ebp-58h]
		cmp	ecx, [edi+10h]
		jnz	short loc_451AA9
		mov	eax, [ebp-0B0h]
		mov	edx, [eax+10h]
		cmp	edx, [edi+14h]
		jz	short loc_451AAF

loc_451AA9:				; CODE XREF: .text:00451A99j
		inc	rtcond.currcount

loc_451AAF:				; CODE XREF: .text:00451A66j
					; .text:00451A91j ...
		xor	ecx, ecx
		mov	[ebp-24h], ecx
		mov	word ptr [ebp-930h], 0
		cmp	g_nPluginexception, 0
		jle	loc_451B4A
		mov	eax, [ebp-0B0h]
		push	eax		; reg
		lea	edx, [ebp-2C40h]
		push	edx		; da
		lea	ecx, [ebp-940h]
		push	ecx		; src
		mov	eax, [ebp-58h]
		push	eax		; arglist
		call	loc_44CA4C
		add	esp, 10h
		xor	ebx, ebx
		jmp	short loc_451B3E
; ---------------------------------------------------------------------------

loc_451AEF:				; CODE XREF: .text:00451B44j
		lea	eax, [ebp-4F0h]
		lea	ecx, [ebp-2C40h]
		push	eax
		mov	eax, dword_5D454C
		mov	edx, [ebp-0B0h]
		push	edx
		push	esi
		push	ecx
		push	edi
		mov	edx, [eax+ebx*4]
		call	edx
		add	esp, 14h
		mov	[ebp-4], eax
		test	byte ptr [ebp-4], 4
		jz	short loc_451B37
		lea	ecx, [ebp-4F0h]
		lea	eax, [ebp-930h]
		push	ecx		; src
		push	100h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_451B37:				; CODE XREF: .text:00451B1Aj
		mov	edx, [ebp-4]
		or	[ebp-24h], edx
		inc	ebx

loc_451B3E:				; CODE XREF: .text:00451AEDj
		cmp	ebx, g_nPluginexception
		jl	short loc_451AEF
		and	dword ptr [ebp-24h], 7

loc_451B4A:				; CODE XREF: .text:00451AC4j
		cmp	dword ptr [edi+4], 0
		jz	short loc_451BB2
		mov	ecx, [edi+4]
		cmp	ecx, [edi+2Ch]
		jz	short loc_451BB2
		mov	eax, [edi+2Ch]
		push	eax		; threadid
		call	Findthread
		pop	ecx
		mov	[ebp-9Ch], eax
		cmp	dword ptr [ebp-9Ch], 0
		jz	short loc_451B7D
		mov	edx, [ebp-9Ch]
		cmp	dword ptr [edx+0Ch], 0
		jz	short loc_451BAA

loc_451B7D:				; CODE XREF: .text:00451B6Fj
		mov	ecx, [edi+2Ch]
		push	ecx
		mov	eax, [edi+4]
		push	eax		; arglist
		push	offset aWhileRunningSi ; "While	running	single thread of debugged"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aDifferentThrea ; "Different thread"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E69C ; cond
		call	Conderror
		add	esp, 14h

loc_451BAA:				; CODE XREF: .text:00451B7Bj
		push	12h		; newstatus
		call	Setstatus
		pop	ecx

loc_451BB2:				; CODE XREF: .text:00451B4Ej
					; .text:00451B56j
		mov	edx, [edi+10h]
		cmp	edx, [ebp-58h]
		jnz	short loc_451BC8
		mov	ecx, [ebp-0B0h]
		mov	eax, [ecx+10h]
		cmp	eax, [edi+14h]
		jz	short loc_451C3C

loc_451BC8:				; CODE XREF: .text:00451BB8j
		cmp	dword ptr [edi+18h], 0
		jz	short loc_451C06
		push	0		; subaddr
		mov	edx, [edi+10h]
		push	edx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-0B4h], eax
		cmp	dword ptr [ebp-0B4h], 0
		jz	short loc_451C01
		push	0
		mov	ecx, [ebp-0B4h]
		push	ecx
		call	loc_497418
		add	esp, 8

loc_451C01:				; CODE XREF: .text:00451BEEj
		xor	eax, eax
		mov	[edi+18h], eax

loc_451C06:				; CODE XREF: .text:00451BCCj
		cmp	dword ptr [edi+20h], 0
		jz	short loc_451C19
		push	1
		call	loc_4C6E78
		pop	ecx
		xor	edx, edx
		mov	[edi+20h], edx

loc_451C19:				; CODE XREF: .text:00451C0Aj
		cmp	dword ptr [esi+6F8h], 0
		jz	short loc_451C34
		xor	ecx, ecx
		mov	[esi+6F8h], ecx
		mov	dword ptr [edi+9Ch], 1

loc_451C34:				; CODE XREF: .text:00451C20j
		xor	eax, eax
		mov	[esi+6FCh], eax

loc_451C3C:				; CODE XREF: .text:00451BC6j
		cmp	dwProcessId, 0
		jz	short loc_451C7A
		cmp	hEvent,	0
		jz	short loc_451C62
		mov	edx, hEvent
		push	edx		; hEvent
		call	SetEvent
		xor	ecx, ecx
		mov	hEvent,	ecx

loc_451C62:				; CODE XREF: .text:00451C4Cj
		cmp	skipsystembp, 0
		jnz	short loc_451C7A
		xor	eax, eax
		xor	edx, edx
		mov	dwProcessId, eax
		mov	hEvent,	edx

loc_451C7A:				; CODE XREF: .text:00451C43j
					; .text:00451C69j
		mov	ecx, [esi+6D0h]
		xor	eax, eax
		mov	[ebp-14h], ecx
		mov	[esi+6D0h], eax
		cmp	dword ptr [ebp-70h], 0
		jnz	loc_455888
		mov	edx, [ebp-0C0h]
		mov	ecx, [edx]
		cmp	ecx, 0C000008Dh
		jge	short loc_451CEA
		cmp	ecx, 0C0000005h
		jg	short loc_451CD0
		jz	loc_4539D2
		sub	ecx, 80000001h
		jz	loc_454272
		sub	ecx, 2
		jz	short loc_451D38
		dec	ecx
		jz	loc_452C89
		jmp	loc_45569E
; ---------------------------------------------------------------------------

loc_451CD0:				; CODE XREF: .text:00451CABj
		sub	ecx, 0C000001Dh
		jz	loc_454DA4
		sub	ecx, 8
		jz	loc_454FBD
		jmp	loc_45569E
; ---------------------------------------------------------------------------

loc_451CEA:				; CODE XREF: .text:00451CA3j
		cmp	ecx, 0C00000FDh
		jg	short loc_451D1B
		jz	loc_454F03
		add	ecx, 3FFFFF73h
		sub	ecx, 7
		jb	loc_455015
		jz	loc_454CD8
		sub	ecx, 2
		jz	loc_4545FF
		jmp	loc_45569E
; ---------------------------------------------------------------------------

loc_451D1B:				; CODE XREF: .text:00451CF0j
		sub	ecx, 0E06D7363h
		jz	loc_455482
		sub	ecx, 5FFFA025h
		jz	loc_4552EF
		jmp	loc_45569E
; ---------------------------------------------------------------------------

loc_451D38:				; CODE XREF: .text:00451CC2j
		xor	eax, eax
		mov	[ebp-28h], eax
		push	0		; subaddr
		mov	edx, [ebp-58h]
		push	edx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-0B4h], eax
		cmp	dword ptr [ebp-0B4h], 0
		jz	short loc_451D6F
		mov	ecx, [ebp-0B4h]
		test	byte ptr [ecx+0Ah], 1
		jnz	loc_451E78

loc_451D6F:				; CODE XREF: .text:00451D5Dj
		push	3		; mode
		push	2		; size
		mov	eax, [ebp-0B0h]
		mov	edx, [eax+8]
		sub	edx, 2
		push	edx		; _addr
		lea	ecx, [ebp-92h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 2
		jnz	short loc_451DB9
		cmp	byte ptr [ebp-92h], 0CDh
		jnz	short loc_451DB9
		cmp	byte ptr [ebp-91h], 3
		jnz	short loc_451DB9
		mov	eax, [ebp-0B0h]
		mov	edx, [eax+8]
		sub	edx, 2
		mov	[ebp-58h], edx

loc_451DB9:				; CODE XREF: .text:00451D96j
					; .text:00451D9Fj ...
		cmp	dword ptr [ebp-54h], 2
		jnz	short loc_451E0E
		cmp	byte ptr [ebp-92h], 2Dh
		jnz	short loc_451E0E
		push	3		; mode
		push	1		; size
		mov	ecx, [ebp-0B0h]
		mov	eax, [ecx+8]
		sub	eax, 3
		push	eax		; _addr
		lea	edx, [ebp-92h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 1
		jnz	short loc_451E0E
		cmp	byte ptr [ebp-92h], 0CDh
		jnz	short loc_451E0E
		mov	ecx, [ebp-0B0h]
		mov	eax, [ecx+8]
		dec	eax
		mov	[ebp-58h], eax
		mov	dword ptr [ebp-28h], 1

loc_451E0E:				; CODE XREF: .text:00451DBDj
					; .text:00451DC6j ...
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_451E78
		test	byte ptr [ebp-14h], 1
		jz	short loc_451E78
		cmp	dword ptr [edi+80h], 0
		jz	short loc_451E78
		mov	edx, [ebp-0B0h]
		mov	ecx, [ebp-58h]
		mov	[edx+8], ecx
		mov	eax, [ebp-0B0h]
		or	dword ptr [eax], 1
		push	esi
		call	loc_44C4E8
		pop	ecx
		call	Flushmemorycache
		cmp	dword ptr [edi+88h], 103h
		jnz	short loc_451E5C
		mov	dword ptr [edi+88h], 10002h
		jmp	short loc_451E6E
; ---------------------------------------------------------------------------

loc_451E5C:				; CODE XREF: .text:00451E4Ej
		push	10002h		; dwContinueStatus
		mov	edx, [edi+2Ch]
		push	edx		; dwThreadId
		mov	ecx, [edi+28h]
		push	ecx		; dwProcessId
		call	ContinueDebugEvent

loc_451E6E:				; CODE XREF: .text:00451E5Aj
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_451E78:				; CODE XREF: .text:00451D69j
					; .text:00451E12j ...
		mov	edx, skipsystembp
		xor	ecx, ecx
		mov	[ebp-10h], edx
		mov	skipsystembp, ecx
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4523FC
		mov	eax, [ebp-0B0h]
		xor	edx, edx
		mov	[eax+0ECh], edx
		mov	ecx, [ebp-0B0h]
		xor	eax, eax
		mov	[ecx+0F0h], eax
		mov	edx, [ebp-0B0h]
		xor	ecx, ecx
		mov	[edx+0F4h], ecx
		mov	eax, [ebp-0B0h]
		xor	edx, edx
		mov	[eax+0F8h], edx
		mov	ecx, [ebp-0B0h]
		mov	dword ptr [ecx+104h], 0FFFF0FF0h
		mov	eax, [ebp-0B0h]
		mov	dword ptr [eax+108h], 2500h
		mov	edx, [ebp-0B0h]
		or	dword ptr [edx], 81h
		call	loc_44F8E8
		push	1
		call	loc_44FA44
		pop	ecx		; int
		push	1		; int
		call	loc_46FADC
		pop	ecx
		call	Listmemory
		push	offset module.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		push	offset thread.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		push	offset memory.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		cmp	_imp__NtQueryInformationProcess, 0
		jz	loc_451FC6
		push	0		; _DWORD
		lea	ecx, [ebp-33DCh]
		push	18h		; _DWORD
		push	ecx		; _DWORD
		mov	eax, process
		push	0		; _DWORD
		push	eax		; _DWORD
		call	_imp__NtQueryInformationProcess
		test	eax, eax
		jnz	short loc_451FC6
		mov	edx, [ebp-33CCh]
		cmp	edx, processid
		jnz	short loc_451FC6
		mov	ecx, [ebp-33D8h]
		push	ecx		; _addr
		call	Findmemory
		pop	ecx
		mov	[ebp-0A0h], eax
		cmp	dword ptr [ebp-0A0h], 0
		jz	short loc_451FC6
		mov	eax, [ebp-0A0h]
		mov	edx, [eax]
		cmp	edx, [ebp-33D8h]
		jnz	short loc_451FC6
		mov	ecx, [ebp-0A0h]
		mov	dword ptr [ecx+0Ch], 1
		mov	eax, [ebp-33D8h]
		mov	peblock, eax
		push	0
		mov	edx, peblock
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		push	eax
		call	loc_4700D4
		add	esp, 8

loc_451FC6:				; CODE XREF: .text:00451F39j
					; .text:00451F5Aj ...
		mov	dword ptr [ebp-54h], 7FFE0000h
		mov	ecx, [ebp-54h]
		push	ecx		; _addr
		call	Findmemory
		pop	ecx		; int
		mov	[ebp-0A0h], eax
		cmp	dword ptr [ebp-0A0h], 0
		jz	loc_4520EF
		mov	eax, [ebp-0A0h]	; int
		cmp	dword ptr [eax+4], 1000h
		jnz	loc_4520EF
		push	1		; flags
		push	1000h		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-98h], eax
		cmp	dword ptr [ebp-98h], 0
		jz	loc_4520EF
		push	1		; mode
		push	1000h		; size
		mov	edx, [ebp-54h]
		push	edx		; _addr
		mov	ecx, [ebp-98h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 1000h
		jnz	loc_4520E2
		xor	eax, eax
		mov	[ebp-88h], eax
		mov	[ebp-84h], eax
		push	4		; nvalue
		lea	edx, [ebp-84h]
		push	edx		; value
		push	offset itemname	; itemname
		push	offset aKuser_shared_d ; _name
		push	1000h		; ncode
		mov	ecx, [ebp-98h]
		push	ecx		; code
		call	Getstructureitemvalue
		add	esp, 18h
		push	4		; nvalue
		lea	eax, [ebp-88h]
		push	eax		; value
		push	offset aNtminorversion ; "NtMinorVersion"
		push	offset aKuser_shared_d ; _name
		push	1000h		; ncode
		mov	edx, [ebp-98h]
		push	edx		; code
		call	Getstructureitemvalue
		add	esp, 18h
		mov	ecx, VersionInformation.dwMajorVersion
		cmp	ecx, [ebp-84h]
		jnz	short loc_4520E2
		mov	eax, VersionInformation.dwMinorVersion
		cmp	eax, [ebp-88h]
		jnz	short loc_4520E2
		mov	edx, [ebp-0A0h]
		mov	dword ptr [edx+0Ch], 2
		mov	ecx, [ebp-54h]
		push	0
		mov	eax, [ebp-0A0h]
		mov	kusershareddata, ecx
		push	eax
		call	loc_470200
		add	esp, 8

loc_4520E2:				; CODE XREF: .text:0045203Ej
					; .text:004520ACj ...
		mov	edx, [ebp-98h]
		push	edx		; data
		call	Memfree
		pop	ecx

loc_4520EF:				; CODE XREF: .text:00451FE4j
					; .text:00451FF7j ...
		cmp	rundll,	0
		jz	short loc_45211B
		call	loc_4CC63C
		test	eax, eax
		jz	short loc_45211B
		push	offset aOllydbgIsUna_4 ; "OllyDbg is unable to establish connecti"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		pop	ecx
		xor	ecx, ecx
		mov	rundll,	ecx

loc_45211B:				; CODE XREF: .text:004520F6j
					; .text:004520FFj
		cmp	bphard.sorted.n, 0
		jle	short loc_452146
		cmp	zwcontinue, 0
		jz	short loc_452146
		push	0
		push	0
		push	0
		push	4000h
		mov	eax, zwcontinue
		push	eax
		call	loc_44F6D0
		add	esp, 14h

loc_452146:				; CODE XREF: .text:00452122j
					; .text:0045212Bj
		call	Findmainmodule
		mov	[ebp-0A4h], eax
		xor	edx, edx
		mov	[ebp-60h], edx
		xor	ecx, ecx
		mov	[ebp-18h], ecx
		mov	eax, [edi]
		mov	[ebp-0BCh], eax
		cmp	dword ptr [ebp-0A4h], 0
		jz	loc_452348
		cmp	rundll,	0
		jz	short loc_4521ED
		cmp	dword_5C894C, 0
		jnz	short loc_452196
		mov	edx, [ebp-0A4h]
		mov	ecx, [edx+460h]
		mov	[ebp-60h], ecx
		jmp	loc_452348
; ---------------------------------------------------------------------------

loc_452196:				; CODE XREF: .text:00452180j
		cmp	dword_5C894C, 1
		jz	short loc_4521A8
		cmp	dword_5C894C, 2
		jnz	short loc_4521D3

loc_4521A8:				; CODE XREF: .text:0045219Dj
		cmp	dword_5D3A4C, 0
		jnz	short loc_4521C5
		mov	eax, [ebp-0A4h]
		mov	edx, [eax+460h]
		mov	[ebp-60h], edx
		jmp	loc_452348
; ---------------------------------------------------------------------------

loc_4521C5:				; CODE XREF: .text:004521AFj
		mov	ecx, dword_5D3A4C
		mov	[ebp-60h], ecx
		jmp	loc_452348
; ---------------------------------------------------------------------------

loc_4521D3:				; CODE XREF: .text:004521A6j
		cmp	dword_5C894C, 3
		jnz	loc_452348
		mov	eax, dword_5D3A4C
		mov	[ebp-60h], eax
		jmp	loc_452348
; ---------------------------------------------------------------------------

loc_4521ED:				; CODE XREF: .text:00452177j
		cmp	dword ptr [edi], 2
		jnz	short loc_45222C
		cmp	dword_5C8948, 0
		jnz	short loc_452210
		cmp	dwProcessId, 0
		jnz	short loc_452210
		mov	dword ptr [ebp-18h], 1
		jmp	loc_452348
; ---------------------------------------------------------------------------

loc_452210:				; CODE XREF: .text:004521F9j
					; .text:00452202j
		cmp	dword_5C8948, 2
		jnz	loc_452348
		mov	dword ptr [ebp-0BCh], 3
		jmp	loc_452348
; ---------------------------------------------------------------------------

loc_45222C:				; CODE XREF: .text:004521F0j
		cmp	dword_5C8944, 0
		jnz	short loc_452241
		mov	dword ptr [ebp-18h], 1
		jmp	loc_452348
; ---------------------------------------------------------------------------

loc_452241:				; CODE XREF: .text:00452233j
		cmp	dword_5C8944, 1
		jnz	short loc_45226D
		mov	edx, [ebp-0A4h]
		cmp	dword ptr [edx+49Ch], 0
		jz	short loc_45226D
		mov	ecx, [ebp-0A4h]
		mov	eax, [ecx+49Ch]
		mov	[ebp-60h], eax
		jmp	loc_452348
; ---------------------------------------------------------------------------

loc_45226D:				; CODE XREF: .text:00452248j
					; .text:00452257j
		cmp	dword_5CBBB4, 0
		jz	short loc_4522AE
		mov	edx, [ebp-0A4h]
		cmp	dword ptr [edx+460h], 0
		jz	short loc_4522AE
		mov	ecx, [ebp-0A4h]
		mov	eax, [ecx+8]
		and	eax, 4060000h
		cmp	eax, 20000h
		jnz	short loc_4522AE
		mov	edx, [ebp-0A4h]
		mov	ecx, [edx+460h]
		mov	[ebp-60h], ecx
		jmp	loc_452348
; ---------------------------------------------------------------------------

loc_4522AE:				; CODE XREF: .text:00452274j
					; .text:00452283j ...
		cmp	dword_5C8944, 2
		jz	short loc_4522E7
		cmp	dword_5C8944, 1
		jnz	short loc_4522CF
		mov	eax, [ebp-0A4h]
		cmp	dword ptr [eax+49Ch], 0
		jz	short loc_4522E7

loc_4522CF:				; CODE XREF: .text:004522BEj
		cmp	dword_5C8944, 3
		jnz	short loc_452312
		mov	edx, [ebp-0A4h]
		cmp	dword ptr [edx+468h], 0
		jnz	short loc_452312

loc_4522E7:				; CODE XREF: .text:004522B5j
					; .text:004522CDj
		mov	ecx, [ebp-0A4h]
		test	byte ptr [ecx+0Bh], 4
		jz	short loc_452301
		mov	eax, [ebp-0A4h]
		mov	edx, [eax+4A0h]
		jmp	short loc_45230D
; ---------------------------------------------------------------------------

loc_452301:				; CODE XREF: .text:004522F1j
		mov	ecx, [ebp-0A4h]
		mov	edx, [ecx+460h]

loc_45230D:				; CODE XREF: .text:004522FFj
		mov	[ebp-60h], edx
		jmp	short loc_452348
; ---------------------------------------------------------------------------

loc_452312:				; CODE XREF: .text:004522D6j
					; .text:004522E5j
		cmp	dword_5C8944, 3
		jnz	short loc_45232C
		mov	eax, [ebp-0A4h]
		mov	ecx, [eax+468h]
		mov	[ebp-60h], ecx
		jmp	short loc_452348
; ---------------------------------------------------------------------------

loc_45232C:				; CODE XREF: .text:00452319j
		cmp	dword_5C8944, 4
		jnz	short loc_452341
		mov	dword ptr [ebp-0BCh], 3
		jmp	short loc_452348
; ---------------------------------------------------------------------------

loc_452341:				; CODE XREF: .text:00452333j
		mov	dword ptr [ebp-18h], 1

loc_452348:				; CODE XREF: .text:0045216Aj
					; .text:00452191j ...
		cmp	dword ptr [ebp-60h], 0
		jz	short loc_452391
		mov	eax, zwcontinue
		push	eax
		push	0
		push	0
		push	2000h
		mov	edx, [ebp-60h]
		push	edx
		call	loc_44F6D0
		add	esp, 14h
		mov	[ebp-2Ch], eax
		cmp	dword ptr [ebp-2Ch], 0
		jz	short loc_452391
		mov	ecx, [ebp-60h]
		push	ecx		; arglist
		push	offset aUnableToSetSta ; "Unable to set	startup	breakpoint at add"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		mov	dword ptr [ebp-18h], 1
		add	esp, 8

loc_452391:				; CODE XREF: .text:0045234Cj
					; .text:00452370j
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4523FC
		push	1
		call	loc_44C84C
		pop	ecx
		call	Flushmemorycache
		push	0		; dwSize
		push	0		; lpBaseAddress
		mov	eax, process
		push	eax		; hProcess
		call	FlushInstructionCache
		mov	edx, [ebp-0BCh]
		push	edx		; newstatus
		call	Setstatus
		pop	ecx
		xor	ecx, ecx
		mov	[edi+84h], ecx
		cmp	dword ptr [edi+88h], 103h
		jnz	short loc_4523E0
		mov	dword ptr [edi+88h], 10002h
		jmp	short loc_4523F2
; ---------------------------------------------------------------------------

loc_4523E0:				; CODE XREF: .text:004523D2j
		push	10002h		; dwContinueStatus
		mov	eax, [edi+2Ch]
		push	eax		; dwThreadId
		mov	edx, [edi+28h]
		push	edx		; dwProcessId
		call	ContinueDebugEvent

loc_4523F2:				; CODE XREF: .text:004523DEj
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_4523FC:				; CODE XREF: .text:00451E8Dj
					; .text:00452395j
		cmp	rundll,	0
		jz	short loc_452423
		cmp	dword_5D3A3C, 0
		jz	short loc_452423
		mov	edx, [ebp-58h]
		cmp	edx, dword_5D3A50
		jnz	short loc_452423
		call	loc_4CD5C8
		mov	[ebp-48h], eax
		jmp	short loc_45242A
; ---------------------------------------------------------------------------

loc_452423:				; CODE XREF: .text:00452403j
					; .text:0045240Cj ...
		mov	dword ptr [ebp-48h], 0FFFFFFFFh

loc_45242A:				; CODE XREF: .text:00452421j
		cmp	dword ptr [ebp-0B4h], 0
		jz	short loc_452443
		mov	ecx, [ebp-0B4h]
		test	byte ptr [ecx+0Ah], 1
		jnz	loc_4527B2

loc_452443:				; CODE XREF: .text:00452431j
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_45246E
		push	offset aSystemBreakpoi ; "System breakpoint"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-4F0h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4525CE
; ---------------------------------------------------------------------------

loc_45246E:				; CODE XREF: .text:00452447j
		cmp	dword ptr [ebp-48h], 0
		jl	short loc_452499
		push	offset aReturnFromCall ; "Return from call to DLL export"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-4F0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4525CE
; ---------------------------------------------------------------------------

loc_452499:				; CODE XREF: .text:00452472j
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_452508
		mov	ecx, [ebp-0B0h]
		mov	eax, [ebp-58h]
		mov	[ecx+8], eax
		mov	edx, [ebp-0B0h]
		or	dword ptr [edx], 1
		push	offset aInt2dCommandAt ; "INT 2D command at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-4F0h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		push	0		; comment
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; nsymb
		mov	edx, [ebp-0Ch]
		add	edx, edx
		lea	ecx, [ebp-4F0h]
		add	edx, ecx
		push	edx		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		jmp	loc_4525CE
; ---------------------------------------------------------------------------

loc_452508:				; CODE XREF: .text:0045249Dj
		cmp	dword ptr [esi+0Ch], 0
		jnz	short loc_452525
		mov	dword ptr [edi+8Ch], 1
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_452525:				; CODE XREF: .text:0045250Cj
		mov	edx, [ebp-58h]
		cmp	edx, debugbreak
		jnz	short loc_452552
		push	offset aCallToDebugbre ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-4F0h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4525CE
; ---------------------------------------------------------------------------

loc_452552:				; CODE XREF: .text:0045252Ej
		mov	eax, [ebp-58h]
		cmp	eax, dbgbreakpoint
		jnz	short loc_45257F
		push	offset aCallToDbgbreak ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-4F0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4525CE
; ---------------------------------------------------------------------------

loc_45257F:				; CODE XREF: .text:0045255Bj
		push	offset aInt3CommandAt ;	"INT3 command at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-4F0h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		push	0		; comment
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; nsymb
		mov	edx, [ebp-0Ch]
		add	edx, edx
		lea	ecx, [ebp-4F0h]
		add	edx, ecx
		push	edx		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h

loc_4525CE:				; CODE XREF: .text:00452469j
					; .text:00452494j ...
		mov	edx, [ebp-0C0h]
		mov	ecx, [edx]
		mov	[edi+90h], ecx
		cmp	dword ptr [edi], 14h
		jnz	short loc_452626
		call	Findmainmodule
		mov	[ebp-0A8h], eax
		test	eax, eax
		jz	short loc_452626
		mov	edx, [ebp-0A8h]
		test	byte ptr [edx+0Bh], 4
		jz	short loc_452626
		cmp	dword_5C8A94, 0
		jz	loc_455888
		push	offset aInt3In_netAppl ; "INT3 in .NET application stepped over	o"...
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp-58h]
		push	ecx		; _addr
		call	Message
		add	esp, 8
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_452626:				; CODE XREF: .text:004525DFj
					; .text:004525EEj ...
		cmp	dword_5C896C, 0
		jz	loc_4526E5
		cmp	dword ptr [ebp-10h], 0
		jnz	loc_4526E5
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-0A4h], eax
		cmp	dword ptr [ebp-0A4h], 0
		jnz	short loc_45268E
		call	Findmainmodule
		mov	[ebp-0A8h], eax
		cmp	dword ptr [ebp-0A8h], 0
		jz	short loc_45268E
		mov	edx, [ebp-0A8h]
		test	byte ptr [edx+0Bh], 4
		jz	short loc_45268E
		push	1
		call	loc_44FA44
		pop	ecx
		mov	ecx, [ebp-58h]
		push	ecx		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-0A4h], eax

loc_45268E:				; CODE XREF: .text:00452654j
					; .text:00452668j ...
		cmp	dword ptr [ebp-0A4h], 0
		jz	short loc_4526E5
		push	offset aMscorwks ; s2
		mov	eax, [ebp-0A4h]
		add	eax, 0Ch
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4526E5
		cmp	dword ptr [edi+80h], 0
		jz	short loc_4526E5
		cmp	dword_5C8A94, 0
		jz	loc_455888
		push	offset aInt3InMscorwks ; "INT3 in MSCORWKS stepped over	on reques"...
		call	_T
		pop	ecx
		push	eax		; format
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Message
		add	esp, 8
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_4526E5:				; CODE XREF: .text:0045262Dj
					; .text:00452637j ...
		cmp	dwProcessId, 0
		jnz	short loc_452761
		cmp	dword ptr [ebp-48h], 0
		jge	short loc_452761
		cmp	dword_5C8970, 0
		jnz	short loc_45270C
		push	80000003h
		call	loc_44DD58
		pop	ecx
		test	eax, eax
		jz	short loc_452761

loc_45270C:				; CODE XREF: .text:004526FBj
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_452761
		cmp	dword ptr [edi+80h], 0
		jz	short loc_452761
		lea	ecx, [ebp-2C40h] ; int
		lea	eax, [ebp-940h]	; int
		push	ecx		; int
		push	eax		; src
		mov	edx, [ebp-0B0h]	; int
		push	edx		; int
		push	esi		; int
		call	loc_44E7EC
		add	esp, 10h
		test	eax, eax
		jnz	short loc_452761
		lea	ecx, [ebp-4F0h]
		push	ecx		; int
		mov	eax, [ebp-0B0h]
		push	eax		; int
		mov	edx, [ebp-58h]
		push	edx		; int
		call	loc_44DDBC
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_452761:				; CODE XREF: .text:004526ECj
					; .text:004526F2j ...
		cmp	dword ptr [ebp-48h], 0
		jnz	short loc_45277A
		mov	edx, [edi]
		push	edx		; newstatus
		call	Setstatus
		pop	ecx
		xor	ecx, ecx
		mov	[ebp-18h], ecx
		jmp	loc_452C23
; ---------------------------------------------------------------------------

loc_45277A:				; CODE XREF: .text:00452765j
		cmp	dword ptr [ebp-10h], 0
		mov	eax, 2
		jnz	short loc_45278C
		cmp	dword ptr [ebp-48h], 0
		jge	short loc_45278C
		dec	eax

loc_45278C:				; CODE XREF: .text:00452783j
					; .text:00452789j
		mov	[edi+8Ch], eax
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		mov	ecx, [ebp-58h]
		push	ecx		; int
		call	loc_44DEF0
		add	esp, 8
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_4527B2:				; CODE XREF: .text:0045243Dj
		mov	eax, [ebp-0B0h]
		mov	edx, [ebp-58h]
		mov	[eax+8], edx
		mov	ecx, [ebp-0B0h]
		or	dword ptr [ecx], 1
		mov	eax, [ebp-0B4h]
		mov	edx, [eax+8]
		mov	[ebp-68h], edx
		cmp	dword ptr [edi], 12h
		jnz	short loc_4527E1
		mov	dword ptr [ebp-18h], 1
		jmp	short loc_4527E6
; ---------------------------------------------------------------------------

loc_4527E1:				; CODE XREF: .text:004527D6j
		xor	ecx, ecx
		mov	[ebp-18h], ecx

loc_4527E6:				; CODE XREF: .text:004527DFj
		test	byte ptr [ebp-67h], 40h
		jz	loc_4528C5
		mov	eax, [ebp-0B4h]
		mov	edx, [eax+18h]
		and	edx, 80000001h
		cmp	edx, 80000001h
		jz	short loc_45281C
		mov	ecx, [ebp-0B4h]
		test	byte ptr [ecx+18h], 1
		jz	short loc_45282B
		cmp	dword_5C8940, 0
		jz	short loc_45282B

loc_45281C:				; CODE XREF: .text:00452805j
		mov	dword ptr [ebp-30h], 1
		mov	eax, [edi+2Ch]
		mov	[edi+4], eax
		jmp	short loc_45283C
; ---------------------------------------------------------------------------

loc_45282B:				; CODE XREF: .text:00452811j
					; .text:0045281Aj
		push	4000h		; type
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Removeint3breakpoint
		add	esp, 8

loc_45283C:				; CODE XREF: .text:00452829j
		mov	ecx, [ebp-0B0h]
		push	ecx
		mov	eax, [ebp-58h]
		push	eax
		call	loc_44EBF4
		add	esp, 8
		mov	edx, [ebp-0B4h]
		test	byte ptr [edx+1Bh], 80h
		jz	short loc_4528B2
		cmp	g_nPlugintempbreakpoint, 0
		jle	short loc_4528B2
		mov	ecx, [ebp-0B0h]
		push	ecx		; reg
		lea	eax, [ebp-2C40h]
		push	eax		; da
		lea	edx, [ebp-940h]
		push	edx		; src
		mov	ecx, [ebp-58h]
		push	ecx		; arglist
		call	loc_44CA4C
		add	esp, 10h
		xor	ebx, ebx
		jmp	short loc_4528AA
; ---------------------------------------------------------------------------

loc_452889:				; CODE XREF: .text:004528B0j
		mov	eax, [ebp-0B0h]
		lea	edx, [ebp-2C40h]
		push	eax
		push	esi
		push	edx
		mov	eax, dword_5D4554
		mov	ecx, [ebp-58h]
		push	ecx
		mov	edx, [eax+ebx*4]
		call	edx
		add	esp, 10h
		inc	ebx

loc_4528AA:				; CODE XREF: .text:00452887j
		cmp	ebx, g_nPlugintempbreakpoint
		jl	short loc_452889

loc_4528B2:				; CODE XREF: .text:00452859j
					; .text:00452862j
		mov	ecx, [ebp-58h]
		cmp	ecx, ntqueryinfo
		jnz	short loc_4528C5
		xor	eax, eax
		mov	[ebp-2C30h], eax

loc_4528C5:				; CODE XREF: .text:004527EAj
					; .text:004528BBj
		test	byte ptr [ebp-67h], 20h
		jz	short loc_4528F3
		push	2000h		; type
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Removeint3breakpoint
		add	esp, 8
		lea	ecx, [ebp-4F0h]
		push	ecx		; buffer
		push	esi		; int
		mov	eax, [ebp-58h]
		push	eax		; int
		call	loc_44EE10
		add	esp, 0Ch
		or	[ebp-18h], eax

loc_4528F3:				; CODE XREF: .text:004528C9j
		test	byte ptr [ebp-67h], 80h
		jz	loc_4529B5
		mov	edx, [ebp-0B0h]
		push	edx		; int
		lea	ecx, [ebp-2C40h]
		push	ecx		; int
		lea	eax, [ebp-940h]
		push	eax		; src
		mov	edx, [ebp-58h]
		push	edx		; int
		call	loc_44D6A0
		add	esp, 10h
		mov	[ebp-3Ch], eax
		cmp	dword ptr [ebp-3Ch], 0
		jnz	short loc_45293A
		push	8000h		; type
		mov	ecx, [ebp-58h]
		push	ecx		; _addr
		call	Removeint3breakpoint
		add	esp, 8
		jmp	short loc_452941
; ---------------------------------------------------------------------------

loc_45293A:				; CODE XREF: .text:00452925j
		mov	dword ptr [ebp-30h], 1

loc_452941:				; CODE XREF: .text:00452938j
		cmp	dword ptr [ebp-3Ch], 0FFFFFFFFh
		jnz	short loc_452970
		push	offset aHitTraceMayPas ; "Hit trace may	pass control to	the non-c"...
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-4F0h]
		push	eax		; dest
		call	StrcopyW
		mov	dword ptr [ebp-18h], 1
		add	esp, 0Ch
		jmp	short loc_4529AF
; ---------------------------------------------------------------------------

loc_452970:				; CODE XREF: .text:00452945j
		cmp	dword ptr [ebp-3Ch], 0FFFFFFFEh
		jnz	short loc_4529AF
		cmp	dword_5CBBA8, 2
		jnz	short loc_452988
		mov	dword ptr [ebp-44h], 1
		jmp	short loc_4529AF
; ---------------------------------------------------------------------------

loc_452988:				; CODE XREF: .text:0045297Dj
		push	offset aHitTraceMayLea ; "Hit trace may	leave code section"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-4F0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword ptr [ebp-18h], 1

loc_4529AF:				; CODE XREF: .text:0045296Ej
					; .text:00452974j ...
		mov	ecx, [edi+2Ch]
		mov	[edi+4], ecx

loc_4529B5:				; CODE XREF: .text:004528F7j
		mov	eax, [ebp-68h]
		and	eax, 21000h
		cmp	eax, 1000h
		jnz	loc_452C23
		mov	dword ptr [ebp-30h], 1
		mov	edx, [edi+2Ch]
		lea	ecx, [ebp-730h]
		mov	[edi+4], edx
		push	ecx
		mov	eax, [edi+2Ch]
		push	eax
		mov	edx, [ebp-58h]
		push	edx
		mov	ecx, [ebp-58h]
		push	ecx
		mov	eax, [ebp-0B4h]
		mov	edx, [eax+8]
		push	edx
		push	51h
		call	loc_44CAAC
		add	esp, 18h
		mov	[ebp-20h], eax
		mov	ecx, [ebp-68h]
		and	ecx, 0C000000h
		cmp	ecx, 0C000000h
		jz	short loc_452A25
		mov	eax, [ebp-68h]
		and	eax, 0C000000h
		cmp	eax, 4000000h
		jnz	short loc_452A3B
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_452A3B

loc_452A25:				; CODE XREF: .text:00452A0Ej
		mov	edx, [edi+2Ch]	; int
		push	edx		; int
		mov	ecx, [ebp-58h]	; int
		push	ecx		; int
		mov	eax, [ebp-58h]	; int
		push	eax		; int
		push	51h		; int
		call	loc_44CC24
		add	esp, 10h

loc_452A3B:				; CODE XREF: .text:00452A1Dj
					; .text:00452A23j
		mov	edx, [ebp-68h]
		and	edx, 30000000h
		cmp	edx, 30000000h
		jz	short loc_452A63
		mov	ecx, [ebp-68h]
		and	ecx, 30000000h
		cmp	ecx, 10000000h
		jnz	short loc_452A8F
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_452A8F

loc_452A63:				; CODE XREF: .text:00452A4Aj
		mov	eax, [ebp-0B0h]
		push	eax		; int
		lea	edx, [ebp-2C40h]
		push	edx		; int
		lea	ecx, [ebp-940h]
		push	ecx		; src
		mov	eax, [ebp-0B4h]	; int
		movzx	edx, word ptr [eax+0Ch]	; int
		push	edx		; int
		mov	ecx, [ebp-58h]	; int
		push	ecx		; int
		call	loc_44CFD4
		add	esp, 14h

loc_452A8F:				; CODE XREF: .text:00452A5Bj
					; .text:00452A61j
		mov	eax, [ebp-68h]
		and	eax, 0C0000000h
		cmp	eax, 0C0000000h
		jz	short loc_452AB5
		mov	edx, [ebp-68h]
		and	edx, 0C0000000h
		cmp	edx, 40000000h
		jnz	short loc_452ACB
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_452ACB

loc_452AB5:				; CODE XREF: .text:00452A9Cj
		mov	ecx, [ebp-0B0h]	; int
		mov	eax, [ecx+0Ch]	; int
		push	eax		; char
		mov	edx, [ebp-58h]	; int
		push	edx		; int
		call	loc_44D420
		add	esp, 8

loc_452ACB:				; CODE XREF: .text:00452AADj
					; .text:00452AB3j
		mov	ecx, [ebp-68h]
		and	ecx, 3000000h
		cmp	ecx, 3000000h
		jz	short loc_452AF9
		mov	eax, [ebp-68h]
		and	eax, 3000000h
		cmp	eax, 1000000h
		jnz	loc_452C23
		cmp	dword ptr [ebp-20h], 0
		jz	loc_452C23

loc_452AF9:				; CODE XREF: .text:00452ADAj
		mov	edx, [ebp-0B4h]
		cmp	dword ptr [edx+10h], 0
		jnz	short loc_452B0E
		mov	dword ptr [ebp-1Ch], 1
		jmp	short loc_452B5B
; ---------------------------------------------------------------------------

loc_452B0E:				; CODE XREF: .text:00452B03j
		mov	ecx, [ebp-0B4h]
		inc	dword ptr [ecx+14h]
		mov	eax, [ebp-0B4h]
		mov	ecx, [ebp-0B4h]
		mov	edx, [eax+14h]
		cmp	edx, [ecx+10h]
		jnb	short loc_452B32
		xor	eax, eax
		mov	[ebp-1Ch], eax
		jmp	short loc_452B5B
; ---------------------------------------------------------------------------

loc_452B32:				; CODE XREF: .text:00452B29j
		mov	edx, [ebp-0B4h]
		xor	ecx, ecx
		mov	[edx+14h], ecx
		mov	eax, [ebp-0B4h]
		test	byte ptr [eax+0Ah], 8
		jnz	short loc_452B54
		mov	edx, [ebp-0B4h]
		xor	ecx, ecx
		mov	[edx+10h], ecx

loc_452B54:				; CODE XREF: .text:00452B47j
		mov	dword ptr [ebp-1Ch], 2

loc_452B5B:				; CODE XREF: .text:00452B0Cj
					; .text:00452B30j
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_452C23
		mov	eax, [ebp-68h]
		and	eax, 3000000h
		cmp	eax, 3000000h
		jnz	short loc_452B99
		push	offset aBreakpointAt ; "Breakpoint at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-4F0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		jmp	short loc_452BBC
; ---------------------------------------------------------------------------

loc_452B99:				; CODE XREF: .text:00452B72j
		push	offset aConditionalBre ; "Conditional breakpoint at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-4F0h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax

loc_452BBC:				; CODE XREF: .text:00452B97j
		push	0		; comment
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; nsymb
		mov	edx, [ebp-0Ch]
		add	edx, edx
		lea	ecx, [ebp-4F0h]
		add	edx, ecx
		push	edx		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		add	[ebp-0Ch], eax
		cmp	dword ptr [ebp-1Ch], 2
		jnz	short loc_452C1C
		push	offset aCountReached ; " (count	reached)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_452C1C:				; CODE XREF: .text:00452BEFj
		mov	dword ptr [ebp-18h], 1

loc_452C23:				; CODE XREF: .text:00452775j
					; .text:004529C2j ...
		cmp	dword ptr [ebp-18h], 0
		jz	loc_455888
		cmp	dword_5D5610, 0
		jz	short loc_452C64
		call	Listmemory
		push	offset module.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		push	offset thread.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		push	offset memory.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		xor	edx, edx
		mov	dword_5D5610, edx

loc_452C64:				; CODE XREF: .text:00452C34j
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		lea	ecx, [ebp-4F0h]
		push	ecx		; arglist
		push	(offset	aS_9+4)	; format
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Message
		add	esp, 0Ch
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_452C89:				; CODE XREF: .text:00451CC5j
		xor	edx, edx
		xor	eax, eax
		mov	[ebp-80h], edx
		mov	[ebp-7Ch], edx
		mov	[ebp-18h], eax
		xor	ecx, ecx
		mov	[ebp-40h], ecx

loc_452C9B:				; CODE XREF: .text:00453172j
		mov	ecx, [ebp-40h]
		mov	eax, 3
		add	ecx, ecx
		mov	edx, [ebp-0B0h]
		shl	eax, cl
		and	eax, [edx+108h]
		jz	loc_45316B
		mov	ecx, [ebp-40h]
		mov	eax, 1
		shl	eax, cl
		mov	edx, [ebp-0B0h]
		and	eax, [edx+104h]
		jz	loc_45316B
		push	0		; subaddr
		mov	eax, [ebp-40h]
		push	eax		; _addr
		push	offset bphard.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_452CF4
		test	byte ptr [ebx+0Ah], 2
		jz	short loc_452D06

loc_452CF4:				; CODE XREF: .text:00452CECj
		mov	ecx, [ebp-40h]
		mov	eax, 1
		shl	eax, cl
		or	[ebp-80h], eax
		jmp	loc_45316B
; ---------------------------------------------------------------------------

loc_452D06:				; CODE XREF: .text:00452CF2j
		test	byte ptr [ebx+9], 40h
		jz	loc_452DCD
		mov	edx, [ebp-40h]
		push	edx		; index
		call	Removehardbreakpoint
		pop	ecx
		mov	eax, 1
		mov	ecx, [ebp-40h]
		mov	edx, [ebp-0B0h]
		shl	eax, cl
		not	eax
		and	[edx+104h], eax
		mov	eax, [ebp-0B0h]
		or	dword ptr [eax], 81h
		mov	edx, [ebp-0B0h]
		push	edx
		mov	ecx, [ebp-58h]
		push	ecx
		call	loc_44EBF4
		add	esp, 8
		test	byte ptr [ebx+23h], 80h
		jz	short loc_452DAE
		cmp	g_nPlugintempbreakpoint, 0
		jle	short loc_452DAE
		mov	eax, [ebp-0B0h]
		push	eax		; reg
		lea	edx, [ebp-2C40h]
		push	edx		; da
		lea	ecx, [ebp-940h]
		push	ecx		; src
		mov	eax, [ebp-58h]
		push	eax		; arglist
		call	loc_44CA4C
		add	esp, 10h
		xor	ebx, ebx
		jmp	short loc_452DA6
; ---------------------------------------------------------------------------

loc_452D85:				; CODE XREF: .text:00452DACj
		mov	eax, [ebp-0B0h]
		lea	edx, [ebp-2C40h]
		push	eax
		push	esi
		push	edx
		mov	eax, dword_5D4554
		mov	ecx, [ebp-58h]
		push	ecx
		mov	edx, [eax+ebx*4]
		call	edx
		add	esp, 10h
		inc	ebx

loc_452DA6:				; CODE XREF: .text:00452D83j
		cmp	ebx, g_nPlugintempbreakpoint
		jl	short loc_452D85

loc_452DAE:				; CODE XREF: .text:00452D55j
					; .text:00452D5Ej
		mov	ecx, [ebp-58h]
		cmp	ecx, ntqueryinfo
		jnz	short loc_452DC1
		xor	eax, eax
		mov	[ebp-2C30h], eax

loc_452DC1:				; CODE XREF: .text:00452DB7j
		or	dword ptr [ebp-7Ch], 80000000h
		jmp	loc_45316B
; ---------------------------------------------------------------------------

loc_452DCD:				; CODE XREF: .text:00452D0Aj
		test	byte ptr [ebx+9], 20h
		jz	short loc_452E42
		mov	edx, [ebp-40h]
		push	edx		; index
		call	Removehardbreakpoint
		pop	ecx
		mov	eax, 1
		mov	ecx, [ebp-40h]
		mov	edx, [ebp-0B0h]
		shl	eax, cl
		not	eax
		and	[edx+104h], eax
		lea	eax, [ebp-4F0h]
		mov	ecx, [ebp-0B0h]
		or	dword ptr [ecx], 81h
		push	eax		; buffer
		push	esi		; int
		mov	edx, [ebp-58h]
		push	edx		; int
		call	loc_44EE10
		add	esp, 0Ch
		or	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_452E36
		lea	ecx, [ebp-4F0h]
		push	ecx		; arglist
		push	(offset	aS_9+4)	; format
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Message
		add	esp, 0Ch

loc_452E36:				; CODE XREF: .text:00452E1Cj
		or	dword ptr [ebp-7Ch], 80000000h
		jmp	loc_45316B
; ---------------------------------------------------------------------------

loc_452E42:				; CODE XREF: .text:00452DD1j
		mov	ecx, [ebp-40h]
		mov	edx, 1
		shl	edx, cl
		or	[ebp-7Ch], edx
		mov	eax, 1
		mov	ecx, [ebp-40h]
		mov	edx, [ebp-0B0h]
		shl	eax, cl
		not	eax
		and	[edx+104h], eax
		mov	eax, [ebp-0B0h]
		or	dword ptr [eax], 81h
		mov	edx, [ebx+8]
		mov	[ebp-68h], edx
		test	byte ptr [ebp-66h], 80h
		jz	short loc_452E86
		mov	dword ptr [ebp-30h], 4

loc_452E86:				; CODE XREF: .text:00452E7Dj
		mov	ecx, [edi+2Ch]
		lea	eax, [ebp-730h]
		mov	[edi+4], ecx
		push	eax
		mov	edx, [edi+2Ch]
		push	edx
		mov	ecx, [ebx+0Ch]
		push	ecx
		mov	eax, [ebx]
		push	eax
		mov	edx, [ebp-68h]
		push	edx
		push	57h
		call	loc_44CAAC
		add	esp, 18h
		mov	[ebp-20h], eax
		mov	ecx, [ebp-68h]
		and	ecx, 0C000000h
		cmp	ecx, 0C000000h
		jz	short loc_452ED5
		mov	eax, [ebp-68h]
		and	eax, 0C000000h
		cmp	eax, 4000000h
		jnz	short loc_452EEA
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_452EEA

loc_452ED5:				; CODE XREF: .text:00452EBEj
		mov	edx, [edi+2Ch]	; int
		push	edx		; int
		mov	ecx, [ebp-58h]	; int
		push	ecx		; int
		mov	eax, [ebx]	; int
		push	eax		; int
		push	57h		; int
		call	loc_44CC24
		add	esp, 10h

loc_452EEA:				; CODE XREF: .text:00452ECDj
					; .text:00452ED3j
		mov	edx, [ebp-68h]
		and	edx, 30000000h
		cmp	edx, 30000000h
		jz	short loc_452F12
		mov	ecx, [ebp-68h]
		and	ecx, 30000000h
		cmp	ecx, 10000000h
		jnz	short loc_452F37
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_452F37

loc_452F12:				; CODE XREF: .text:00452EF9j
		mov	eax, [ebp-0B0h]
		push	eax		; int
		lea	edx, [ebp-2C40h]
		push	edx		; int
		lea	ecx, [ebp-940h]	; int
		push	ecx		; src
		mov	eax, [ebx+14h]	; int
		push	eax		; int
		mov	edx, [ebp-58h]	; int
		push	edx		; int
		call	loc_44CFD4
		add	esp, 14h

loc_452F37:				; CODE XREF: .text:00452F0Aj
					; .text:00452F10j
		mov	ecx, [ebp-68h]
		and	ecx, 0C0000000h
		cmp	ecx, 0C0000000h
		jz	short loc_452F5D
		mov	eax, [ebp-68h]
		and	eax, 0C0000000h
		cmp	eax, 40000000h
		jnz	short loc_452F73
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_452F73

loc_452F5D:				; CODE XREF: .text:00452F46j
		mov	edx, [ebp-0B0h]	; int
		mov	ecx, [edx+0Ch]	; int
		push	ecx		; char
		mov	eax, [ebp-58h]	; int
		push	eax		; int
		call	loc_44D420
		add	esp, 8

loc_452F73:				; CODE XREF: .text:00452F55j
					; .text:00452F5Bj
		mov	edx, [ebp-68h]
		and	edx, 3000000h
		cmp	edx, 3000000h
		jz	short loc_452FA3
		mov	ecx, [ebp-68h]
		and	ecx, 3000000h
		cmp	ecx, 1000000h
		jnz	loc_45315B
		cmp	dword ptr [ebp-20h], 0
		jz	loc_45315B

loc_452FA3:				; CODE XREF: .text:00452F82j
		cmp	dword ptr [ebx+18h], 0
		jnz	short loc_452FB2
		mov	dword ptr [ebp-1Ch], 1
		jmp	short loc_452FDB
; ---------------------------------------------------------------------------

loc_452FB2:				; CODE XREF: .text:00452FA7j
		inc	dword ptr [ebx+1Ch]
		mov	eax, [ebx+1Ch]
		cmp	eax, [ebx+18h]
		jnb	short loc_452FC4
		xor	edx, edx
		mov	[ebp-1Ch], edx
		jmp	short loc_452FDB
; ---------------------------------------------------------------------------

loc_452FC4:				; CODE XREF: .text:00452FBBj
		xor	ecx, ecx
		mov	[ebx+1Ch], ecx
		test	byte ptr [ebx+0Ah], 8
		jnz	short loc_452FD4
		xor	eax, eax
		mov	[ebx+18h], eax

loc_452FD4:				; CODE XREF: .text:00452FCDj
		mov	dword ptr [ebp-1Ch], 2

loc_452FDB:				; CODE XREF: .text:00452FB0j
					; .text:00452FC2j
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_45315B
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_453009
		push	offset asc_535F44 ; "+ "
		push	100h		; n
		lea	edx, [ebp-4F0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		jmp	short loc_45300E
; ---------------------------------------------------------------------------

loc_453009:				; CODE XREF: .text:00452FE9j
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx

loc_45300E:				; CODE XREF: .text:00453007j
		mov	eax, [ebp-68h]
		and	eax, 3000000h
		cmp	eax, 3000000h
		jnz	short loc_453049
		mov	edx, [ebp-40h]
		inc	edx
		push	edx
		push	offset aHardwareBrea_1 ; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-0Ch], eax
		jmp	short loc_453073
; ---------------------------------------------------------------------------

loc_453049:				; CODE XREF: .text:0045301Bj
		mov	edx, [ebp-40h]
		inc	edx
		push	edx
		push	offset aConditionalHar ; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-0Ch], eax

loc_453073:				; CODE XREF: .text:00453047j
		push	(offset	aInt2dCommandAt+1Eh) ; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-0Ch], eax
		push	0		; comment
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; nsymb
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; symb
		push	20400h		; mode
		push	0		; amod
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Decodeaddress
		add	esp, 18h
		add	[ebp-0Ch], eax
		cmp	dword ptr [ebp-1Ch], 2
		jnz	short loc_453101
		push	offset aCountReached ; " (count	reached)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, 100h
		sub	ecx, [ebp-0Ch]
		push	ecx		; n
		mov	eax, [ebp-0Ch]
		add	eax, eax
		lea	edx, [ebp-4F0h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_453101:				; CODE XREF: .text:004530D4j
		test	byte ptr [ebp-66h], 80h
		jnz	short loc_453132
		push	offset aEipPointsToNex ; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, 100h
		sub	ecx, [ebp-0Ch]
		push	ecx		; n
		mov	eax, [ebp-0Ch]
		add	eax, eax
		lea	edx, [ebp-4F0h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_453132:				; CODE XREF: .text:00453105j
		lea	ecx, [ebp-4F0h]
		push	ecx		; arglist
		push	(offset	aS_9+4)	; format
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_453149
		mov	eax, [ebp-58h]
		jmp	short loc_45314B
; ---------------------------------------------------------------------------

loc_453149:				; CODE XREF: .text:00453142j
		xor	eax, eax

loc_45314B:				; CODE XREF: .text:00453147j
		push	eax		; _addr
		call	Message
		add	esp, 0Ch
		mov	dword ptr [ebp-18h], 1

loc_45315B:				; CODE XREF: .text:00452F93j
					; .text:00452F9Dj ...
		mov	ecx, [ebp-40h]
		mov	edx, 1
		shl	edx, cl
		or	[esi+6FCh], edx

loc_45316B:				; CODE XREF: .text:00452CB3j
					; .text:00452CCFj ...
		inc	dword ptr [ebp-40h]
		cmp	dword ptr [ebp-40h], 4
		jl	loc_452C9B
		cmp	dword ptr [ebp-80h], 0
		jz	loc_4532BD
		mov	eax, [ebp-0C0h]
		mov	edx, [eax]
		mov	[edi+90h], edx
		mov	ecx, [ebp-80h]
		push	ecx		; u
		call	Bitcount
		pop	ecx
		dec	eax
		jle	short loc_4531C2
		push	offset aBreakOnHardw_1 ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-4F0h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		jmp	short loc_4531E5
; ---------------------------------------------------------------------------

loc_4531C2:				; CODE XREF: .text:0045319Bj
		push	offset aBreakOnHardwar ; "Break	on hardware breakpoint "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-4F0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax

loc_4531E5:				; CODE XREF: .text:004531C0j
		xor	ebx, ebx

loc_4531E7:				; CODE XREF: .text:0045321Bj
		mov	ecx, ebx
		mov	eax, 1
		shl	eax, cl
		and	eax, [ebp-80h]
		jz	short loc_453217
		lea	edx, [ebx+1]
		push	edx
		push	offset aI_3	; "%i, "
		mov	eax, [ebp-0Ch]
		add	eax, eax
		lea	edx, [ebp-4F0h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-0Ch], eax

loc_453217:				; CODE XREF: .text:004531F3j
		inc	ebx
		cmp	ebx, 4
		jl	short loc_4531E7
		sub	dword ptr [ebp-0Ch], 2
		push	offset aSetByApplicati ; " set by application"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, 100h
		sub	ecx, [ebp-0Ch]
		push	ecx		; n
		mov	eax, [ebp-0Ch]
		add	eax, eax
		lea	edx, [ebp-4F0h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	80000004h
		call	loc_44DD58
		pop	ecx
		test	eax, eax
		jz	short loc_4532AA
		cmp	dword ptr [edi+80h], 0
		jz	short loc_4532AA
		lea	ecx, [ebp-2C40h] ; int
		lea	eax, [ebp-940h]	; int
		push	ecx		; int
		push	eax		; src
		mov	edx, [ebp-0B0h]	; int
		push	edx		; int
		push	esi		; int
		call	loc_44E7EC
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4532AA
		lea	ecx, [ebp-4F0h]
		push	ecx		; int
		mov	eax, [ebp-0B0h]
		push	eax		; int
		mov	edx, [ebp-58h]
		push	edx		; int
		call	loc_44DDBC
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_4532AA:				; CODE XREF: .text:00453259j
					; .text:00453262j ...
		mov	dword ptr [edi+8Ch], 1
		mov	dword ptr [ebp-18h], 1
		jmp	short loc_4532C6
; ---------------------------------------------------------------------------

loc_4532BD:				; CODE XREF: .text:0045317Cj
		mov	word ptr [ebp-4F0h], 0

loc_4532C6:				; CODE XREF: .text:004532BBj
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_4532F1
		push	12h		; newstatus
		call	Setstatus
		cmp	word ptr [ebp-4F0h], 0
		pop	ecx
		jz	short loc_4532F1
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		mov	ecx, [ebp-58h]
		push	ecx		; int
		call	loc_44DEF0
		add	esp, 8

loc_4532F1:				; CODE XREF: .text:004532CAj
					; .text:004532DCj
		cmp	dword ptr [ebp-7Ch], 0
		jnz	loc_455888
		cmp	dword ptr [ebp-80h], 0
		jnz	loc_455888
		mov	eax, [ebp-0B0h]
		test	byte ptr [eax+104h], 0Fh
		jz	short loc_45337C
		test	byte ptr [ebp-14h], 4
		jz	short loc_45337C
		cmp	dword ptr [edi+80h], 0
		jz	short loc_45337C
		mov	edx, [ebp-0B0h]
		and	dword ptr [edx+104h], 0FFFFFFF0h
		mov	ecx, [ebp-0B0h]
		or	dword ptr [ecx], 81h
		push	esi
		call	loc_44C4E8
		pop	ecx
		call	Flushmemorycache
		cmp	dword ptr [edi+88h], 103h
		jnz	short loc_453360
		mov	dword ptr [edi+88h], 10002h
		jmp	short loc_453372
; ---------------------------------------------------------------------------

loc_453360:				; CODE XREF: .text:00453352j
		push	10002h		; dwContinueStatus
		mov	eax, [edi+2Ch]
		push	eax		; dwThreadId
		mov	edx, [edi+28h]
		push	edx		; dwProcessId
		call	ContinueDebugEvent

loc_453372:				; CODE XREF: .text:0045335Ej
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_45337C:				; CODE XREF: .text:00453312j
					; .text:00453318j ...
		push	3		; mode
		push	1		; size
		mov	edx, [ebp-0B0h]
		mov	ecx, [edx+8]
		dec	ecx
		push	ecx		; _addr
		lea	eax, [ebp-92h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 1
		jnz	short loc_4533F7
		cmp	byte ptr [ebp-92h], 0F1h
		jnz	short loc_4533F7
		push	0		; subaddr
		mov	edx, [ebp-0B0h]
		mov	ecx, [edx+8]
		dec	ecx
		push	ecx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-0B4h], eax
		cmp	dword ptr [ebp-0B4h], 0
		jz	short loc_4533FF
		mov	eax, [ebp-0B4h]
		test	byte ptr [eax+0Ah], 1
		jnz	short loc_4533FF
		mov	edx, [ebp-0B4h]
		cmp	byte ptr [edx+0Fh], 0F1h
		jz	short loc_4533FF
		xor	ecx, ecx
		mov	[ebp-0B4h], ecx
		jmp	short loc_4533FF
; ---------------------------------------------------------------------------

loc_4533F7:				; CODE XREF: .text:004533A1j
					; .text:004533AAj
		xor	eax, eax
		mov	[ebp-0B4h], eax

loc_4533FF:				; CODE XREF: .text:004533D3j
					; .text:004533DFj ...
		cmp	dword ptr [ebp-0B4h], 0
		jz	loc_4538F0
		mov	edx, [ebp-0B0h]
		mov	ecx, [edx+8]
		dec	ecx
		mov	[ebp-58h], ecx
		mov	eax, [ebp-0B0h]
		mov	edx, [ebp-58h]
		mov	[eax+8], edx
		mov	ecx, [ebp-0B0h]
		or	dword ptr [ecx], 1
		mov	eax, [ebp-0B4h]
		mov	edx, [eax+8]
		mov	[ebp-68h], edx
		cmp	dword ptr [edi], 12h
		jnz	short loc_453448
		mov	dword ptr [ebp-18h], 1
		jmp	short loc_45344D
; ---------------------------------------------------------------------------

loc_453448:				; CODE XREF: .text:0045343Dj
		xor	ecx, ecx
		mov	[ebp-18h], ecx

loc_45344D:				; CODE XREF: .text:00453446j
		test	byte ptr [ebp-67h], 40h
		jz	loc_45352C
		mov	eax, [ebp-0B4h]
		mov	edx, [eax+18h]
		and	edx, 80000001h
		cmp	edx, 80000001h
		jz	short loc_453483
		mov	ecx, [ebp-0B4h]
		test	byte ptr [ecx+18h], 1
		jz	short loc_453492
		cmp	dword_5C8940, 0
		jz	short loc_453492

loc_453483:				; CODE XREF: .text:0045346Cj
		mov	dword ptr [ebp-30h], 1
		mov	eax, [edi+2Ch]
		mov	[edi+4], eax
		jmp	short loc_4534A3
; ---------------------------------------------------------------------------

loc_453492:				; CODE XREF: .text:00453478j
					; .text:00453481j
		push	4000h		; type
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Removeint3breakpoint
		add	esp, 8

loc_4534A3:				; CODE XREF: .text:00453490j
		mov	ecx, [ebp-0B0h]
		push	ecx
		mov	eax, [ebp-58h]
		push	eax
		call	loc_44EBF4
		add	esp, 8
		mov	edx, [ebp-0B4h]
		test	byte ptr [edx+1Bh], 80h
		jz	short loc_453519
		cmp	g_nPlugintempbreakpoint, 0
		jle	short loc_453519
		mov	ecx, [ebp-0B0h]
		push	ecx		; reg
		lea	eax, [ebp-2C40h]
		push	eax		; da
		lea	edx, [ebp-940h]
		push	edx		; src
		mov	ecx, [ebp-58h]
		push	ecx		; arglist
		call	loc_44CA4C
		add	esp, 10h
		xor	ebx, ebx
		jmp	short loc_453511
; ---------------------------------------------------------------------------

loc_4534F0:				; CODE XREF: .text:00453517j
		mov	eax, [ebp-0B0h]
		lea	edx, [ebp-2C40h]
		push	eax
		push	esi
		push	edx
		mov	eax, dword_5D4554
		mov	ecx, [ebp-58h]
		push	ecx
		mov	edx, [eax+ebx*4]
		call	edx
		add	esp, 10h
		inc	ebx

loc_453511:				; CODE XREF: .text:004534EEj
		cmp	ebx, g_nPlugintempbreakpoint
		jl	short loc_4534F0

loc_453519:				; CODE XREF: .text:004534C0j
					; .text:004534C9j
		mov	ecx, [ebp-58h]
		cmp	ecx, ntqueryinfo
		jnz	short loc_45352C
		xor	eax, eax
		mov	[ebp-2C30h], eax

loc_45352C:				; CODE XREF: .text:00453451j
					; .text:00453522j
		test	byte ptr [ebp-67h], 20h
		jz	short loc_45355A
		push	2000h		; type
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Removeint3breakpoint
		add	esp, 8
		lea	ecx, [ebp-4F0h]
		push	ecx		; buffer
		push	esi		; int
		mov	eax, [ebp-58h]
		push	eax		; int
		call	loc_44EE10
		add	esp, 0Ch
		or	[ebp-18h], eax

loc_45355A:				; CODE XREF: .text:00453530j
		test	byte ptr [ebp-67h], 80h
		jz	loc_45361C
		mov	edx, [ebp-0B0h]
		push	edx		; int
		lea	ecx, [ebp-2C40h]
		push	ecx		; int
		lea	eax, [ebp-940h]
		push	eax		; src
		mov	edx, [ebp-58h]
		push	edx		; int
		call	loc_44D6A0
		add	esp, 10h
		mov	[ebp-3Ch], eax
		cmp	dword ptr [ebp-3Ch], 0
		jnz	short loc_4535A1
		push	8000h		; type
		mov	ecx, [ebp-58h]
		push	ecx		; _addr
		call	Removeint3breakpoint
		add	esp, 8
		jmp	short loc_4535A8
; ---------------------------------------------------------------------------

loc_4535A1:				; CODE XREF: .text:0045358Cj
		mov	dword ptr [ebp-30h], 1

loc_4535A8:				; CODE XREF: .text:0045359Fj
		cmp	dword ptr [ebp-3Ch], 0FFFFFFFFh
		jnz	short loc_4535D7
		push	offset aHitTraceMayPas ; "Hit trace may	pass control to	the non-c"...
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-4F0h]
		push	eax		; dest
		call	StrcopyW
		mov	dword ptr [ebp-18h], 1
		add	esp, 0Ch
		jmp	short loc_453616
; ---------------------------------------------------------------------------

loc_4535D7:				; CODE XREF: .text:004535ACj
		cmp	dword ptr [ebp-3Ch], 0FFFFFFFEh
		jnz	short loc_453616
		cmp	dword_5CBBA8, 2
		jnz	short loc_4535EF
		mov	dword ptr [ebp-44h], 1
		jmp	short loc_453616
; ---------------------------------------------------------------------------

loc_4535EF:				; CODE XREF: .text:004535E4j
		push	offset aHitTraceMayLea ; "Hit trace may	leave code section"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-4F0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword ptr [ebp-18h], 1

loc_453616:				; CODE XREF: .text:004535D5j
					; .text:004535DBj ...
		mov	ecx, [edi+2Ch]
		mov	[edi+4], ecx

loc_45361C:				; CODE XREF: .text:0045355Ej
		mov	eax, [ebp-68h]
		and	eax, 21000h
		cmp	eax, 1000h
		jnz	loc_45388A
		mov	dword ptr [ebp-30h], 1
		mov	edx, [edi+2Ch]
		lea	ecx, [ebp-730h]
		mov	[edi+4], edx
		push	ecx
		mov	eax, [edi+2Ch]
		push	eax
		mov	edx, [ebp-58h]
		push	edx
		mov	ecx, [ebp-58h]
		push	ecx
		mov	eax, [ebp-0B4h]
		mov	edx, [eax+8]
		push	edx
		push	51h
		call	loc_44CAAC
		add	esp, 18h
		mov	[ebp-20h], eax
		mov	ecx, [ebp-68h]
		and	ecx, 0C000000h
		cmp	ecx, 0C000000h
		jz	short loc_45368C
		mov	eax, [ebp-68h]
		and	eax, 0C000000h
		cmp	eax, 4000000h
		jnz	short loc_4536A2
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_4536A2

loc_45368C:				; CODE XREF: .text:00453675j
		mov	edx, [edi+2Ch]	; int
		push	edx		; int
		mov	ecx, [ebp-58h]	; int
		push	ecx		; int
		mov	eax, [ebp-58h]	; int
		push	eax		; int
		push	51h		; int
		call	loc_44CC24
		add	esp, 10h

loc_4536A2:				; CODE XREF: .text:00453684j
					; .text:0045368Aj
		mov	edx, [ebp-68h]
		and	edx, 30000000h
		cmp	edx, 30000000h
		jz	short loc_4536CA
		mov	ecx, [ebp-68h]
		and	ecx, 30000000h
		cmp	ecx, 10000000h
		jnz	short loc_4536F6
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_4536F6

loc_4536CA:				; CODE XREF: .text:004536B1j
		mov	eax, [ebp-0B0h]
		push	eax		; int
		lea	edx, [ebp-2C40h]
		push	edx		; int
		lea	ecx, [ebp-940h]
		push	ecx		; src
		mov	eax, [ebp-0B4h]	; int
		movzx	edx, word ptr [eax+0Ch]	; int
		push	edx		; int
		mov	ecx, [ebp-58h]	; int
		push	ecx		; int
		call	loc_44CFD4
		add	esp, 14h

loc_4536F6:				; CODE XREF: .text:004536C2j
					; .text:004536C8j
		mov	eax, [ebp-68h]
		and	eax, 0C0000000h
		cmp	eax, 0C0000000h
		jz	short loc_45371C
		mov	edx, [ebp-68h]
		and	edx, 0C0000000h
		cmp	edx, 40000000h
		jnz	short loc_453732
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_453732

loc_45371C:				; CODE XREF: .text:00453703j
		mov	ecx, [ebp-0B0h]	; int
		mov	eax, [ecx+0Ch]	; int
		push	eax		; char
		mov	edx, [ebp-58h]	; int
		push	edx		; int
		call	loc_44D420
		add	esp, 8

loc_453732:				; CODE XREF: .text:00453714j
					; .text:0045371Aj
		mov	ecx, [ebp-68h]
		and	ecx, 3000000h
		cmp	ecx, 3000000h
		jz	short loc_453760
		mov	eax, [ebp-68h]
		and	eax, 3000000h
		cmp	eax, 1000000h
		jnz	loc_45388A
		cmp	dword ptr [ebp-20h], 0
		jz	loc_45388A

loc_453760:				; CODE XREF: .text:00453741j
		mov	edx, [ebp-0B4h]
		cmp	dword ptr [edx+10h], 0
		jnz	short loc_453775
		mov	dword ptr [ebp-1Ch], 1
		jmp	short loc_4537C2
; ---------------------------------------------------------------------------

loc_453775:				; CODE XREF: .text:0045376Aj
		mov	ecx, [ebp-0B4h]
		inc	dword ptr [ecx+14h]
		mov	eax, [ebp-0B4h]
		mov	ecx, [ebp-0B4h]
		mov	edx, [eax+14h]
		cmp	edx, [ecx+10h]
		jnb	short loc_453799
		xor	eax, eax
		mov	[ebp-1Ch], eax
		jmp	short loc_4537C2
; ---------------------------------------------------------------------------

loc_453799:				; CODE XREF: .text:00453790j
		mov	edx, [ebp-0B4h]
		xor	ecx, ecx
		mov	[edx+14h], ecx
		mov	eax, [ebp-0B4h]
		test	byte ptr [eax+0Ah], 8
		jnz	short loc_4537BB
		mov	edx, [ebp-0B4h]
		xor	ecx, ecx
		mov	[edx+10h], ecx

loc_4537BB:				; CODE XREF: .text:004537AEj
		mov	dword ptr [ebp-1Ch], 2

loc_4537C2:				; CODE XREF: .text:00453773j
					; .text:00453797j
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_45388A
		mov	eax, [ebp-68h]
		and	eax, 3000000h
		cmp	eax, 3000000h
		jnz	short loc_453800
		push	offset aBreakpointAt ; "Breakpoint at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-4F0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		jmp	short loc_453823
; ---------------------------------------------------------------------------

loc_453800:				; CODE XREF: .text:004537D9j
		push	offset aConditionalBre ; "Conditional breakpoint at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-4F0h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax

loc_453823:				; CODE XREF: .text:004537FEj
		push	0		; comment
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; nsymb
		mov	edx, [ebp-0Ch]
		add	edx, edx
		lea	ecx, [ebp-4F0h]
		add	edx, ecx
		push	edx		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		add	[ebp-0Ch], eax
		cmp	dword ptr [ebp-1Ch], 2
		jnz	short loc_453883
		push	offset aCountReached ; " (count	reached)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_453883:				; CODE XREF: .text:00453856j
		mov	dword ptr [ebp-18h], 1

loc_45388A:				; CODE XREF: .text:00453629j
					; .text:00453750j ...
		cmp	dword ptr [ebp-18h], 0
		jz	loc_455888
		cmp	dword_5D5610, 0
		jz	short loc_4538CB
		call	Listmemory
		push	offset module.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		push	offset thread.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		push	offset memory.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		xor	edx, edx
		mov	dword_5D5610, edx

loc_4538CB:				; CODE XREF: .text:0045389Bj
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		lea	ecx, [ebp-4F0h]
		push	ecx		; arglist
		push	(offset	aS_9+4)	; format
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Message
		add	esp, 0Ch
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_4538F0:				; CODE XREF: .text:00453406j
		cmp	dword ptr [esi+6C4h], 0
		jnz	loc_4539C5
		push	offset aBreakOnSingleS ; "Break	on single-step trap or INT1 set	b"...
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-4F0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, [ebp-0C0h]
		mov	eax, [ecx]
		mov	[edi+90h], eax
		cmp	dwProcessId, 0
		jnz	short loc_45399B
		cmp	dword_5C8974, 0
		jnz	short loc_45394C
		push	80000004h
		call	loc_44DD58
		pop	ecx
		test	eax, eax
		jz	short loc_45399B

loc_45394C:				; CODE XREF: .text:0045393Bj
		cmp	dword ptr [edi+80h], 0
		jz	short loc_45399B
		lea	edx, [ebp-2C40h] ; int
		lea	ecx, [ebp-940h]	; int
		push	edx		; int
		push	ecx		; src
		mov	eax, [ebp-0B0h]	; int
		push	eax		; int
		push	esi		; int
		call	loc_44E7EC
		add	esp, 10h
		test	eax, eax
		jnz	short loc_45399B
		lea	edx, [ebp-4F0h]
		push	edx		; int
		mov	ecx, [ebp-0B0h]
		push	ecx		; int
		mov	eax, [ebp-58h]
		push	eax		; int
		call	loc_44DDBC
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_45399B:				; CODE XREF: .text:00453932j
					; .text:0045394Aj ...
		mov	dword ptr [edi+8Ch], 1
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		mov	ecx, [ebp-58h]
		push	ecx		; int
		call	loc_44DEF0
		add	esp, 8
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_4539C5:				; CODE XREF: .text:004538F7j
		xor	eax, eax
		mov	[esi+6C4h], eax
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_4539D2:				; CODE XREF: .text:00451CADj
		mov	edx, [ebp-0B0h]
		push	edx		; reg
		lea	ecx, [ebp-2C40h]
		push	ecx		; da
		lea	eax, [ebp-940h]
		push	eax		; src
		mov	edx, [ebp-58h]
		push	edx		; arglist
		call	loc_44CA4C
		add	esp, 10h
		mov	[ebp-6Ch], eax
		cmp	bppage.n, 0
		jle	loc_453F57
		xor	ecx, ecx
		lea	eax, [ebp-2BF4h]
		mov	[ebp-18h], ecx
		mov	[ebp-0C8h], eax
		xor	ebx, ebx

loc_453A16:				; CODE XREF: .text:00453F43j
		cmp	ebx, 4
		jnz	short loc_453A33
		mov	edx, [ebp-58h]
		mov	[ebp-5Ch], edx
		mov	ecx, [ebp-6Ch]
		mov	[ebp-78h], ecx
		mov	dword ptr [ebp-68h], 800000h
		jmp	loc_453AE0
; ---------------------------------------------------------------------------

loc_453A33:				; CODE XREF: .text:00453A19j
		test	ebx, ebx
		jnz	short loc_453A5F
		test	byte ptr [ebp-2C14h], 1
		jz	short loc_453A5F
		mov	eax, [ebp-0C0h]
		mov	edx, [eax+18h]
		mov	[ebp-5Ch], edx
		mov	dword ptr [ebp-78h], 1
		mov	dword ptr [ebp-68h], (offset stru_5FF23C.text+0DC0h)
		jmp	loc_453AE0
; ---------------------------------------------------------------------------

loc_453A5F:				; CODE XREF: .text:00453A35j
					; .text:00453A3Ej
		mov	ecx, [ebp-0C8h]
		test	byte ptr [ecx+1], 1
		jz	loc_453F35
		mov	eax, [ebp-0C8h]
		test	byte ptr [eax+3], 1
		jz	loc_453F35
		mov	edx, [ebp-0C8h]
		mov	ecx, [edx+4]
		and	ecx, 0FFh
		cmp	ecx, 27h
		jz	loc_453F35
		mov	eax, [ebp-0C8h]
		mov	edx, [eax+3Ch]
		mov	[ebp-5Ch], edx
		mov	ecx, [ebp-0C8h]
		mov	eax, [ecx+0Ch]
		mov	[ebp-78h], eax
		mov	edx, [ebp-0C8h]
		test	byte ptr [edx+7], 10h
		jz	short loc_453AC4
		mov	dword ptr [ebp-68h], 400000h
		jmp	short loc_453AE0
; ---------------------------------------------------------------------------

loc_453AC4:				; CODE XREF: .text:00453AB9j
		mov	ecx, [ebp-0C8h]
		test	byte ptr [ecx+7], 20h
		jz	short loc_453AD9
		mov	dword ptr [ebp-68h], (offset stru_5FF23C.text+0DC0h)
		jmp	short loc_453AE0
; ---------------------------------------------------------------------------

loc_453AD9:				; CODE XREF: .text:00453ACEj
		mov	dword ptr [ebp-68h], 200000h

loc_453AE0:				; CODE XREF: .text:00453A2Ej
					; .text:00453A5Aj ...
		mov	eax, [ebp-5Ch]
		mov	[ebp-54h], eax
		jmp	loc_453EF6
; ---------------------------------------------------------------------------

loc_453AEB:				; CODE XREF: .text:00453EFFj
		mov	edx, [ebp-5Ch]
		add	edx, [ebp-78h]
		push	edx		; addr1
		mov	ecx, [ebp-54h]
		push	ecx		; addr0
		push	offset bpmem.sorted ; sd
		call	Findsorteddatarange
		add	esp, 0Ch
		mov	[ebp-0B8h], eax
		cmp	dword ptr [ebp-0B8h], 0
		jz	loc_453F05
		mov	eax, [ebp-0B8h]
		mov	edx, [eax+8]
		and	edx, [ebp-68h]
		mov	[ebp-50h], edx
		mov	ecx, [ebp-0B8h]
		test	byte ptr [ecx+0Ah], 2
		jnz	loc_453EE2
		cmp	dword ptr [ebp-50h], 0
		jz	loc_453EE2
		lea	eax, [ebp-730h]
		push	eax
		mov	edx, [edi+2Ch]
		push	edx
		mov	ecx, [ebp-58h]
		push	ecx
		mov	eax, [ebp-0B8h]
		mov	edx, [eax]
		push	edx
		mov	ecx, [ebp-0B8h]
		mov	eax, [ecx+8]
		push	eax
		push	54h
		call	loc_44CAAC
		add	esp, 18h
		mov	[ebp-20h], eax
		mov	edx, [ebp-0B8h]
		mov	ecx, [edx+8]
		and	ecx, 0C000000h
		cmp	ecx, 0C000000h
		jz	short loc_453BA2
		mov	eax, [ebp-0B8h]
		mov	edx, [eax+8]
		and	edx, 0C000000h
		cmp	edx, 4000000h
		jnz	short loc_453BBD
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_453BBD

loc_453BA2:				; CODE XREF: .text:00453B83j
		mov	ecx, [edi+2Ch]
		push	ecx		; int
		mov	eax, [ebp-58h]	; int
		push	eax		; int
		mov	edx, [ebp-0B8h]	; int
		mov	ecx, [edx]	; int
		push	ecx		; int
		push	54h		; int
		call	loc_44CC24
		add	esp, 10h

loc_453BBD:				; CODE XREF: .text:00453B9Aj
					; .text:00453BA0j
		mov	eax, [ebp-0B8h]
		mov	edx, [eax+8]
		and	edx, 3000000h
		cmp	edx, 3000000h
		jz	short loc_453BF7
		mov	ecx, [ebp-0B8h]
		mov	eax, [ecx+8]
		and	eax, 3000000h
		cmp	eax, 1000000h
		jnz	loc_453EE2
		cmp	dword ptr [ebp-20h], 0
		jz	loc_453EE2

loc_453BF7:				; CODE XREF: .text:00453BD2j
		mov	edx, [ebp-0B8h]
		cmp	dword ptr [edx+0Ch], 0
		jnz	short loc_453C0C
		mov	dword ptr [ebp-1Ch], 1
		jmp	short loc_453C59
; ---------------------------------------------------------------------------

loc_453C0C:				; CODE XREF: .text:00453C01j
		mov	ecx, [ebp-0B8h]
		inc	dword ptr [ecx+10h]
		mov	eax, [ebp-0B8h]
		mov	ecx, [ebp-0B8h]
		mov	edx, [eax+10h]
		cmp	edx, [ecx+0Ch]
		jnb	short loc_453C30
		xor	eax, eax
		mov	[ebp-1Ch], eax
		jmp	short loc_453C59
; ---------------------------------------------------------------------------

loc_453C30:				; CODE XREF: .text:00453C27j
		mov	edx, [ebp-0B8h]
		xor	ecx, ecx
		mov	[edx+10h], ecx
		mov	eax, [ebp-0B8h]
		test	byte ptr [eax+0Ah], 8
		jnz	short loc_453C52
		mov	edx, [ebp-0B8h]
		xor	ecx, ecx
		mov	[edx+0Ch], ecx

loc_453C52:				; CODE XREF: .text:00453C45j
		mov	dword ptr [ebp-1Ch], 2

loc_453C59:				; CODE XREF: .text:00453C0Aj
					; .text:00453C2Ej
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_453EE2
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_453C87
		push	offset asc_535F44 ; "+ "
		push	100h		; n
		lea	eax, [ebp-4F0h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		jmp	short loc_453C8C
; ---------------------------------------------------------------------------

loc_453C87:				; CODE XREF: .text:00453C67j
		xor	edx, edx
		mov	[ebp-0Ch], edx

loc_453C8C:				; CODE XREF: .text:00453C85j
		mov	ecx, [ebp-0B8h]
		mov	eax, [ecx+8]
		and	eax, 3000000h
		cmp	eax, 3000000h
		jnz	short loc_453CD1
		push	offset aMemoryBreakpoi ; "Memory breakpoint "
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-0Ch], eax
		jmp	short loc_453CFF
; ---------------------------------------------------------------------------

loc_453CD1:				; CODE XREF: .text:00453C9Fj
		push	offset aConditionalMem ; "Conditional memory breakpoint	"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-0Ch], eax

loc_453CFF:				; CODE XREF: .text:00453CCFj
		test	byte ptr [ebp-4Eh], 80h
		jnz	loc_453D8D
		push	(offset	aInt2dCommandAt+1Eh) ; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-0Ch], eax
		push	0		; comment
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; nsymb
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; symb
		push	20400h		; mode
		push	0		; amod
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Decodeaddress
		add	esp, 18h
		add	[ebp-0Ch], eax
		push	(offset	aModifiedDebugR+36h) ; src
		mov	ecx, 100h
		sub	ecx, [ebp-0Ch]
		push	ecx		; n
		mov	eax, [ebp-0Ch]
		add	eax, eax
		lea	edx, [ebp-4F0h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-0Ch], eax

loc_453D8D:				; CODE XREF: .text:00453D03j
		test	byte ptr [ebp-4Eh], 80h
		jz	short loc_453DC2
		push	offset aWhenExecuting ;	"when executing	"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-0Ch], eax
		jmp	loc_453E66
; ---------------------------------------------------------------------------

loc_453DC2:				; CODE XREF: .text:00453D91j
		mov	edx, [ebp-50h]
		and	edx, (offset stru_5FF23C.text+0DC0h)
		cmp	edx, 200000h
		jnz	short loc_453DFF
		push	offset aWhenReading ; "when reading "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-0Ch], eax
		jmp	short loc_453E66
; ---------------------------------------------------------------------------

loc_453DFF:				; CODE XREF: .text:00453DD1j
		mov	edx, [ebp-50h]
		and	edx, (offset stru_5FF23C.text+0DC0h)
		cmp	edx, 400000h
		jnz	short loc_453E3C
		push	offset aWhenWritingTo ;	"when writing to "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-0Ch], eax
		jmp	short loc_453E66
; ---------------------------------------------------------------------------

loc_453E3C:				; CODE XREF: .text:00453E0Ej
		push	offset aWhenAccessing ;	"when accessing	"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp-0Ch]
		add	edx, edx
		lea	ecx, [ebp-4F0h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-0Ch], eax

loc_453E66:				; CODE XREF: .text:00453DBDj
					; .text:00453DFDj ...
		mov	eax, [ebp-54h]
		push	eax
		push	offset a08x_11	; format
		mov	edx, [ebp-0Ch]
		add	edx, edx
		lea	ecx, [ebp-4F0h]
		add	edx, ecx
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-0Ch], eax
		cmp	dword ptr [ebp-1Ch], 2
		jnz	short loc_453EB9
		push	offset aCountReached ; " (count	reached)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; n
		mov	edx, [ebp-0Ch]
		add	edx, edx
		lea	ecx, [ebp-4F0h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_453EB9:				; CODE XREF: .text:00453E8Cj
		lea	eax, [ebp-4F0h]
		push	eax		; arglist
		push	(offset	aS_9+4)	; format
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_453ED0
		mov	edx, [ebp-58h]
		jmp	short loc_453ED2
; ---------------------------------------------------------------------------

loc_453ED0:				; CODE XREF: .text:00453EC9j
		xor	edx, edx

loc_453ED2:				; CODE XREF: .text:00453ECEj
		push	edx		; _addr
		call	Message
		add	esp, 0Ch
		mov	dword ptr [ebp-18h], 1

loc_453EE2:				; CODE XREF: .text:00453B2Fj
					; .text:00453B39j ...
		mov	eax, [ebp-0B8h]
		mov	ecx, [eax]
		mov	eax, [ebp-0B8h]
		add	ecx, [eax+4]
		mov	[ebp-54h], ecx

loc_453EF6:				; CODE XREF: .text:00453AE6j
		mov	edx, [ebp-5Ch]
		add	edx, [ebp-78h]
		cmp	edx, [ebp-54h]
		ja	loc_453AEB

loc_453F05:				; CODE XREF: .text:00453B10j
		mov	ecx, [ebp-5Ch]
		add	ecx, [ebp-78h]
		push	ecx		; addr1
		mov	eax, [ebp-5Ch]
		push	eax		; addr0
		push	offset bppage	; sd
		call	Deletesorteddatarange
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_453F35
		mov	edx, [edi+2Ch]
		mov	[edi+4], edx
		mov	dword ptr [ebp-30h], 2
		mov	dword ptr [edi+20h], 1

loc_453F35:				; CODE XREF: .text:00453A69j
					; .text:00453A79j ...
		inc	ebx
		add	dword ptr [ebp-0C8h], 460h
		cmp	ebx, 5
		jl	loc_453A16
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_453F57
		push	12h		; newstatus
		call	Setstatus
		pop	ecx

loc_453F57:				; CODE XREF: .text:004539FDj
					; .text:00453F4Dj
		cmp	dword ptr [ebp-30h], 2
		jz	loc_455888
		test	byte ptr [ebp-14h], 2
		jz	short loc_453FA9
		cmp	dword ptr [edi+80h], 0
		jz	short loc_453FA9
		call	Flushmemorycache
		cmp	dword ptr [edi+88h], 103h
		jnz	short loc_453F8D
		mov	dword ptr [edi+88h], 10002h
		jmp	short loc_453F9F
; ---------------------------------------------------------------------------

loc_453F8D:				; CODE XREF: .text:00453F7Fj
		push	10002h		; dwContinueStatus
		mov	ecx, [edi+2Ch]
		push	ecx		; dwThreadId
		mov	eax, [edi+28h]
		push	eax		; dwProcessId
		call	ContinueDebugEvent

loc_453F9F:				; CODE XREF: .text:00453F8Bj
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_453FA9:				; CODE XREF: .text:00453F65j
					; .text:00453F6Ej
		cmp	dwProcessId, 0
		jnz	loc_45409C
		cmp	dword ptr [ebp-24h], 0
		jz	loc_45409C
		test	byte ptr [ebp-24h], 4
		jz	loc_455888
		cmp	word ptr [ebp-930h], 0
		jnz	loc_455888
		mov	edx, [ebp-0C0h]
		cmp	dword ptr [edx+10h], 2
		jb	short loc_45404A
		mov	ecx, [ebp-5Ch]
		push	ecx
		mov	eax, [ebp-0C0h]
		cmp	dword ptr [eax+14h], 1
		jnz	short loc_454001
		push	offset aWritingTo ; "writing to"
		call	_T
		pop	ecx
		jmp	short loc_45402C
; ---------------------------------------------------------------------------

loc_454001:				; CODE XREF: .text:00453FF2j
		mov	edx, [ebp-5Ch]
		cmp	edx, [ebp-58h]
		jb	short loc_454021
		mov	ecx, [ebp-58h]
		add	ecx, [ebp-6Ch]
		cmp	ecx, [ebp-5Ch]
		jbe	short loc_454021
		push	offset aExecuting ; "executing"
		call	_T
		pop	ecx
		jmp	short loc_45402C
; ---------------------------------------------------------------------------

loc_454021:				; CODE XREF: .text:00454007j
					; .text:00454012j
		push	offset aReading	; "reading"
		call	_T
		pop	ecx

loc_45402C:				; CODE XREF: .text:00453FFFj
					; .text:0045401Fj
		push	eax
		push	offset aAccessViolat_2 ; "Access violation when	%s [%08lX] caused"...
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-930h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	short loc_45406A
; ---------------------------------------------------------------------------

loc_45404A:				; CODE XREF: .text:00453FE2j
		push	offset aAccessViolatio ; "Access violation caused by plugin"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-930h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_45406A:				; CODE XREF: .text:00454048j
		mov	dword ptr [ebp-30h], 2
		mov	ecx, [edi+2Ch]
		mov	[edi+4], ecx
		lea	eax, [ebp-930h]
		push	eax		; arglist
		push	(offset	aS_9+4)	; format
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Message
		add	esp, 0Ch
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_45409C:				; CODE XREF: .text:00453FB0j
					; .text:00453FBAj
		mov	ecx, [ebp-0C0h]
		mov	eax, [ecx]
		mov	[edi+90h], eax
		cmp	dword_5C8968, 0
		mov	edx, [ebp-0C0h]
		mov	ecx, [edx+18h]
		mov	[ebp-5Ch], ecx
		jz	loc_45414B
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-0A4h], eax
		cmp	dword ptr [ebp-0A4h], 0
		jz	short loc_45414B
		push	offset aKernel32 ; "KERNEL32"
		mov	edx, [ebp-0A4h]
		add	edx, 0Ch
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_45414B
		cmp	dword ptr [edi+80h], 0
		jz	short loc_45414B
		lea	ecx, [ebp-2C40h] ; int
		lea	eax, [ebp-940h]	; int
		push	ecx		; int
		push	eax		; src
		mov	edx, [ebp-0B0h]	; int
		push	edx		; int
		push	esi		; int
		call	loc_44E7EC
		add	esp, 10h
		test	eax, eax
		jnz	short loc_45414B
		push	offset aAccessViolat_1 ; "Access violation in KERNEL32 ignored on"...
		call	_T
		pop	ecx
		push	eax		; int
		mov	ecx, [ebp-0B0h]
		push	ecx		; int
		mov	eax, [ebp-58h]
		push	eax		; int
		call	loc_44DDBC
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_45414B:				; CODE XREF: .text:004540BDj
					; .text:004540DAj ...
		mov	edx, [ebp-0C0h]
		cmp	dword ptr [edx+10h], 2
		jb	short loc_4541BD
		mov	ecx, [ebp-5Ch]
		push	ecx
		mov	eax, [ebp-0C0h]
		cmp	dword ptr [eax+14h], 1
		jnz	short loc_454174
		push	offset aWritingTo ; "writing to"
		call	_T
		pop	ecx
		jmp	short loc_45419F
; ---------------------------------------------------------------------------

loc_454174:				; CODE XREF: .text:00454165j
		mov	edx, [ebp-5Ch]
		cmp	edx, [ebp-58h]
		jb	short loc_454194
		mov	ecx, [ebp-58h]
		add	ecx, [ebp-6Ch]
		cmp	ecx, [ebp-5Ch]
		jbe	short loc_454194
		push	offset aExecuting ; "executing"
		call	_T
		pop	ecx
		jmp	short loc_45419F
; ---------------------------------------------------------------------------

loc_454194:				; CODE XREF: .text:0045417Aj
					; .text:00454185j
		push	offset aReading	; "reading"
		call	_T
		pop	ecx

loc_45419F:				; CODE XREF: .text:00454172j
					; .text:00454192j
		push	eax
		push	offset aAccessViolat_4 ; "Access violation when	%s [%08lX]"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-4F0h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	short loc_4541DD
; ---------------------------------------------------------------------------

loc_4541BD:				; CODE XREF: .text:00454155j
		push	offset aAccessViolat_3 ; "Access violation"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-4F0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4541DD:				; CODE XREF: .text:004541BBj
		cmp	dword_5C8978, 0
		jnz	short loc_4541F9
		mov	ecx, [ebp-0C0h]
		mov	eax, [ecx]
		push	eax
		call	loc_44DD58
		pop	ecx
		test	eax, eax
		jz	short loc_454248

loc_4541F9:				; CODE XREF: .text:004541E4j
		cmp	dword ptr [edi+80h], 0
		jz	short loc_454248
		lea	edx, [ebp-2C40h] ; int
		lea	ecx, [ebp-940h]	; int
		push	edx		; int
		push	ecx		; src
		mov	eax, [ebp-0B0h]	; int
		push	eax		; int
		push	esi		; int
		call	loc_44E7EC
		add	esp, 10h
		test	eax, eax
		jnz	short loc_454248
		lea	edx, [ebp-4F0h]
		push	edx		; int
		mov	ecx, [ebp-0B0h]
		push	ecx		; int
		mov	eax, [ebp-58h]
		push	eax		; int
		call	loc_44DDBC
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_454248:				; CODE XREF: .text:004541F7j
					; .text:00454200j ...
		mov	dword ptr [edi+8Ch], 1
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		mov	ecx, [ebp-58h]
		push	ecx		; int
		call	loc_44DEF0
		add	esp, 8
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_454272:				; CODE XREF: .text:00451CB9j
		mov	eax, [ebp-0C0h]
		mov	edx, [eax+18h]
		mov	[ebp-5Ch], edx
		mov	ecx, [ebp-5Ch]
		push	ecx		; _addr
		call	Findmemory
		pop	ecx
		mov	[ebp-0A0h], eax
		cmp	dword ptr [ebp-0A0h], 0
		jz	loc_454392
		mov	eax, [ebp-0A0h]
		test	byte ptr [eax+0Bh], 40h
		jz	loc_454392
		mov	edx, [ebp-5Ch]
		push	edx
		mov	ecx, [ebp-0C0h]
		cmp	dword ptr [ecx+10h], 2
		jnb	short loc_4542C8
		push	offset aAccessing ; "accessing"
		call	_T
		pop	ecx
		jmp	short loc_454301
; ---------------------------------------------------------------------------

loc_4542C8:				; CODE XREF: .text:004542B9j
		mov	eax, [ebp-0C0h]
		cmp	dword ptr [eax+14h], 1
		jnz	short loc_4542E1
		push	offset aWritingTo ; "writing to"
		call	_T
		pop	ecx
		jmp	short loc_454301
; ---------------------------------------------------------------------------

loc_4542E1:				; CODE XREF: .text:004542D2j
		mov	edx, [ebp-58h]
		cmp	edx, [ebp-5Ch]
		jnz	short loc_4542F6
		push	offset aExecuting ; "executing"
		call	_T
		pop	ecx
		jmp	short loc_454301
; ---------------------------------------------------------------------------

loc_4542F6:				; CODE XREF: .text:004542E7j
		push	offset aReading	; "reading"
		call	_T
		pop	ecx

loc_454301:				; CODE XREF: .text:004542C6j
					; .text:004542DFj ...
		push	eax
		push	offset aBreakOnAccessW ; "Break-on-access while	%s %08X"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-4F0h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h
		push	0		; guard
		mov	eax, [ebp-0A0h]
		mov	edx, [eax+4]
		push	edx		; size
		mov	ecx, [ebp-0A0h]
		mov	eax, [ecx]
		push	eax		; base
		call	Guardmemory
		add	esp, 0Ch
		mov	edx, [ebp-0A0h]
		and	dword ptr [edx+8], 0BFFFFFFFh
		cmp	memory.hw, 0
		jz	short loc_454360
		push	0		; bErase
		push	0		; lpRect
		mov	ecx, memory.hw
		push	ecx		; hWnd
		call	InvalidateRect

loc_454360:				; CODE XREF: .text:0045434Ej
		mov	dword ptr [ebp-30h], 3
		mov	eax, [edi+2Ch]
		mov	[edi+4], eax
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		push	(offset	aS_9+4)	; format
		mov	ecx, [ebp-58h]
		push	ecx		; _addr
		call	Message
		add	esp, 0Ch
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_454392:				; CODE XREF: .text:00454295j
					; .text:004542A5j
		cmp	dword ptr [ebp-0A0h], 0
		jz	loc_454428
		mov	eax, [ebp-0A0h]
		test	byte ptr [eax+0Bh], 80h
		jz	short loc_454428
		xor	ebx, ebx
		jmp	short loc_45441B
; ---------------------------------------------------------------------------

loc_4543AF:				; CODE XREF: .text:00454421j
		push	ebx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-0A0h], eax
		cmp	dword ptr [ebp-0A0h], 0
		jz	short loc_45441A
		mov	eax, [ebp-0A0h]
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_45441A
		mov	edx, [ebp-0A0h]
		test	byte ptr [edx+0Bh], 40h
		jnz	short loc_45441A
		mov	ecx, [ebp-0A0h]
		test	byte ptr [ecx+0Bh], 80h
		jz	short loc_45441A
		push	0		; guard
		mov	eax, [ebp-0A0h]
		mov	edx, [eax+4]
		push	edx		; size
		mov	ecx, [ebp-0A0h]
		mov	eax, [ecx]
		push	eax		; base
		call	Guardmemory
		add	esp, 0Ch
		mov	edx, [ebp-0A0h]
		and	dword ptr [edx+8], 7FFFFFFFh

loc_45441A:				; CODE XREF: .text:004543CAj
					; .text:004543D6j ...
		inc	ebx

loc_45441B:				; CODE XREF: .text:004543ADj
		cmp	ebx, memory.sorted.n
		jl	short loc_4543AF
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_454428:				; CODE XREF: .text:00454399j
					; .text:004543A9j
		cmp	dwProcessId, 0
		jnz	loc_4544F7
		cmp	dword ptr [ebp-24h], 0
		jz	loc_4544F7
		test	byte ptr [ebp-24h], 4
		jz	loc_455888
		cmp	word ptr [ebp-930h], 0
		jnz	short loc_4544C5
		mov	ecx, [ebp-5Ch]
		push	ecx
		mov	eax, [ebp-0C0h]
		cmp	dword ptr [eax+10h], 2
		jnb	short loc_454470
		push	offset aAccessing ; "accessing"
		call	_T
		pop	ecx
		jmp	short loc_4544A9
; ---------------------------------------------------------------------------

loc_454470:				; CODE XREF: .text:00454461j
		mov	edx, [ebp-0C0h]
		cmp	dword ptr [edx+14h], 1
		jnz	short loc_454489
		push	offset aWritingTo ; "writing to"
		call	_T
		pop	ecx
		jmp	short loc_4544A9
; ---------------------------------------------------------------------------

loc_454489:				; CODE XREF: .text:0045447Aj
		mov	ecx, [ebp-58h]
		cmp	ecx, [ebp-5Ch]
		jnz	short loc_45449E
		push	offset aExecuting ; "executing"
		call	_T
		pop	ecx
		jmp	short loc_4544A9
; ---------------------------------------------------------------------------

loc_45449E:				; CODE XREF: .text:0045448Fj
		push	offset aReading	; "reading"
		call	_T
		pop	ecx

loc_4544A9:				; CODE XREF: .text:0045446Ej
					; .text:00454487j ...
		push	eax
		push	offset aBreakOnAccessS ; "Break-on-access set by plugin	while %s "...
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-930h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h

loc_4544C5:				; CODE XREF: .text:00454451j
		mov	dword ptr [ebp-30h], 3
		mov	edx, [edi+2Ch]
		mov	[edi+4], edx
		lea	ecx, [ebp-930h]
		push	ecx		; arglist
		push	(offset	aS_9+4)	; format
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Message
		add	esp, 0Ch
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_4544F7:				; CODE XREF: .text:0045442Fj
					; .text:00454439j
		mov	edx, [ebp-5Ch]
		push	edx
		mov	ecx, [ebp-0C0h]
		cmp	dword ptr [ecx+10h], 2
		jnb	short loc_454514
		push	offset aAccessing ; "accessing"
		call	_T
		pop	ecx
		jmp	short loc_45454D
; ---------------------------------------------------------------------------

loc_454514:				; CODE XREF: .text:00454505j
		mov	eax, [ebp-0C0h]
		cmp	dword ptr [eax+14h], 1
		jnz	short loc_45452D
		push	offset aWritingTo ; "writing to"
		call	_T
		pop	ecx
		jmp	short loc_45454D
; ---------------------------------------------------------------------------

loc_45452D:				; CODE XREF: .text:0045451Ej
		mov	edx, [ebp-58h]
		cmp	edx, [ebp-5Ch]
		jnz	short loc_454542
		push	offset aExecuting ; "executing"
		call	_T
		pop	ecx
		jmp	short loc_45454D
; ---------------------------------------------------------------------------

loc_454542:				; CODE XREF: .text:00454533j
		push	offset aReading	; "reading"
		call	_T
		pop	ecx

loc_45454D:				; CODE XREF: .text:00454512j
					; .text:0045452Bj ...
		push	eax
		push	offset aBreakOnGuarded ; "Break	on guarded memory page set by app"...
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-4F0h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h
		mov	eax, [ebp-0C0h]
		mov	edx, [eax]
		mov	[edi+90h], edx
		push	80000001h
		call	loc_44DD58
		pop	ecx
		test	eax, eax
		jz	short loc_4545D5
		cmp	dword ptr [edi+80h], 0
		jz	short loc_4545D5
		lea	ecx, [ebp-2C40h] ; int
		lea	eax, [ebp-940h]	; int
		push	ecx		; int
		push	eax		; src
		mov	edx, [ebp-0B0h]	; int
		push	edx		; int
		push	esi		; int
		call	loc_44E7EC
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4545D5
		lea	ecx, [ebp-4F0h]
		push	ecx		; int
		mov	eax, [ebp-0B0h]
		push	eax		; int
		mov	edx, [ebp-58h]
		push	edx		; int
		call	loc_44DDBC
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_4545D5:				; CODE XREF: .text:00454584j
					; .text:0045458Dj ...
		mov	dword ptr [edi+8Ch], 1
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		mov	ecx, [ebp-58h]
		push	ecx		; int
		call	loc_44DEF0
		add	esp, 8
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_4545FF:				; CODE XREF: .text:00451D10j
		push	3		; mode
		push	1		; size
		mov	eax, [ebp-0B0h]
		mov	edx, [eax+8]
		push	edx		; _addr
		lea	ecx, [ebp-92h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 1
		jnz	short loc_45467F
		cmp	byte ptr [ebp-92h], 0F4h
		jz	short loc_454664
		cmp	byte ptr [ebp-92h], 0FAh
		jz	short loc_454664
		cmp	byte ptr [ebp-92h], 0FBh
		jz	short loc_454664
		cmp	byte ptr [ebp-92h], 6Ch
		jz	short loc_454664
		cmp	byte ptr [ebp-92h], 6Dh
		jz	short loc_454664
		cmp	byte ptr [ebp-92h], 6Eh
		jz	short loc_454664
		cmp	byte ptr [ebp-92h], 6Fh
		jnz	short loc_45467F

loc_454664:				; CODE XREF: .text:0045462Cj
					; .text:00454635j ...
		push	0		; subaddr
		mov	eax, [ebp-58h]
		push	eax		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-0B4h], eax
		jmp	short loc_454687
; ---------------------------------------------------------------------------

loc_45467F:				; CODE XREF: .text:00454623j
					; .text:00454662j
		xor	edx, edx
		mov	[ebp-0B4h], edx

loc_454687:				; CODE XREF: .text:0045467Dj
		cmp	dword ptr [ebp-0B4h], 0
		jz	loc_454B79
		mov	ecx, [ebp-0B4h]
		test	byte ptr [ecx+0Ah], 1
		jz	loc_454B79
		mov	eax, [ebp-0B4h]
		mov	dl, [eax+0Fh]
		cmp	dl, [ebp-92h]
		jnz	loc_454B79
		mov	ecx, [ebp-0B4h]
		mov	eax, [ecx+8]
		mov	[ebp-68h], eax
		cmp	dword ptr [edi], 12h
		jnz	short loc_4546D3
		mov	dword ptr [ebp-18h], 1
		jmp	short loc_4546D8
; ---------------------------------------------------------------------------

loc_4546D3:				; CODE XREF: .text:004546C8j
		xor	edx, edx
		mov	[ebp-18h], edx

loc_4546D8:				; CODE XREF: .text:004546D1j
		test	byte ptr [ebp-67h], 40h
		jz	loc_4547B5
		mov	ecx, [ebp-0B4h]
		mov	eax, [ecx+18h]
		and	eax, 80000001h
		cmp	eax, 80000001h
		jz	short loc_45470C
		mov	edx, [ebp-0B4h]
		test	byte ptr [edx+18h], 1
		jz	short loc_45471B
		cmp	dword_5C8940, 0
		jz	short loc_45471B

loc_45470C:				; CODE XREF: .text:004546F5j
		mov	dword ptr [ebp-30h], 1
		mov	ecx, [edi+2Ch]
		mov	[edi+4], ecx
		jmp	short loc_45472C
; ---------------------------------------------------------------------------

loc_45471B:				; CODE XREF: .text:00454701j
					; .text:0045470Aj
		push	4000h		; type
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Removeint3breakpoint
		add	esp, 8

loc_45472C:				; CODE XREF: .text:00454719j
		mov	edx, [ebp-0B0h]
		push	edx
		mov	ecx, [ebp-58h]
		push	ecx
		call	loc_44EBF4
		add	esp, 8
		mov	eax, [ebp-0B4h]
		test	byte ptr [eax+1Bh], 80h
		jz	short loc_4547A2
		cmp	g_nPlugintempbreakpoint, 0
		jle	short loc_4547A2
		mov	edx, [ebp-0B0h]
		push	edx		; reg
		lea	ecx, [ebp-2C40h]
		push	ecx		; da
		lea	eax, [ebp-940h]
		push	eax		; src
		mov	edx, [ebp-58h]
		push	edx		; arglist
		call	loc_44CA4C
		add	esp, 10h
		xor	ebx, ebx
		jmp	short loc_45479A
; ---------------------------------------------------------------------------

loc_454779:				; CODE XREF: .text:004547A0j
		mov	eax, [ebp-0B0h]
		lea	edx, [ebp-2C40h]
		push	eax
		push	esi
		push	edx
		mov	eax, dword_5D4554
		mov	ecx, [ebp-58h]
		push	ecx
		mov	edx, [eax+ebx*4]
		call	edx
		add	esp, 10h
		inc	ebx

loc_45479A:				; CODE XREF: .text:00454777j
		cmp	ebx, g_nPlugintempbreakpoint
		jl	short loc_454779

loc_4547A2:				; CODE XREF: .text:00454749j
					; .text:00454752j
		mov	ecx, [ebp-58h]
		cmp	ecx, ntqueryinfo
		jnz	short loc_4547B5
		xor	eax, eax
		mov	[ebp-2C30h], eax

loc_4547B5:				; CODE XREF: .text:004546DCj
					; .text:004547ABj
		test	byte ptr [ebp-67h], 20h
		jz	short loc_4547E3
		push	2000h		; type
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Removeint3breakpoint
		add	esp, 8
		lea	ecx, [ebp-4F0h]
		push	ecx		; buffer
		push	esi		; int
		mov	eax, [ebp-58h]
		push	eax		; int
		call	loc_44EE10
		add	esp, 0Ch
		or	[ebp-18h], eax

loc_4547E3:				; CODE XREF: .text:004547B9j
		test	byte ptr [ebp-67h], 80h
		jz	loc_4548A5
		mov	edx, [ebp-0B0h]
		push	edx		; int
		lea	ecx, [ebp-2C40h]
		push	ecx		; int
		lea	eax, [ebp-940h]
		push	eax		; src
		mov	edx, [ebp-58h]
		push	edx		; int
		call	loc_44D6A0
		add	esp, 10h
		mov	[ebp-3Ch], eax
		cmp	dword ptr [ebp-3Ch], 0
		jnz	short loc_45482A
		push	8000h		; type
		mov	ecx, [ebp-58h]
		push	ecx		; _addr
		call	Removeint3breakpoint
		add	esp, 8
		jmp	short loc_454831
; ---------------------------------------------------------------------------

loc_45482A:				; CODE XREF: .text:00454815j
		mov	dword ptr [ebp-30h], 1

loc_454831:				; CODE XREF: .text:00454828j
		cmp	dword ptr [ebp-3Ch], 0FFFFFFFFh
		jnz	short loc_454860
		push	offset aHitTraceMayPas ; "Hit trace may	pass control to	the non-c"...
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-4F0h]
		push	eax		; dest
		call	StrcopyW
		mov	dword ptr [ebp-18h], 1
		add	esp, 0Ch
		jmp	short loc_45489F
; ---------------------------------------------------------------------------

loc_454860:				; CODE XREF: .text:00454835j
		cmp	dword ptr [ebp-3Ch], 0FFFFFFFEh
		jnz	short loc_45489F
		cmp	dword_5CBBA8, 2
		jnz	short loc_454878
		mov	dword ptr [ebp-44h], 1
		jmp	short loc_45489F
; ---------------------------------------------------------------------------

loc_454878:				; CODE XREF: .text:0045486Dj
		push	offset aHitTraceMayLea ; "Hit trace may	leave code section"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-4F0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword ptr [ebp-18h], 1

loc_45489F:				; CODE XREF: .text:0045485Ej
					; .text:00454864j ...
		mov	ecx, [edi+2Ch]
		mov	[edi+4], ecx

loc_4548A5:				; CODE XREF: .text:004547E7j
		mov	eax, [ebp-68h]
		and	eax, 21000h
		cmp	eax, 1000h
		jnz	loc_454B13
		mov	dword ptr [ebp-30h], 1
		mov	edx, [edi+2Ch]
		lea	ecx, [ebp-730h]
		mov	[edi+4], edx
		push	ecx
		mov	eax, [edi+2Ch]
		push	eax
		mov	edx, [ebp-58h]
		push	edx
		mov	ecx, [ebp-58h]
		push	ecx
		mov	eax, [ebp-0B4h]
		mov	edx, [eax+8]
		push	edx
		push	51h
		call	loc_44CAAC
		add	esp, 18h
		mov	[ebp-20h], eax
		mov	ecx, [ebp-68h]
		and	ecx, 0C000000h
		cmp	ecx, 0C000000h
		jz	short loc_454915
		mov	eax, [ebp-68h]
		and	eax, 0C000000h
		cmp	eax, 4000000h
		jnz	short loc_45492B
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_45492B

loc_454915:				; CODE XREF: .text:004548FEj
		mov	edx, [edi+2Ch]	; int
		push	edx		; int
		mov	ecx, [ebp-58h]	; int
		push	ecx		; int
		mov	eax, [ebp-58h]	; int
		push	eax		; int
		push	51h		; int
		call	loc_44CC24
		add	esp, 10h

loc_45492B:				; CODE XREF: .text:0045490Dj
					; .text:00454913j
		mov	edx, [ebp-68h]
		and	edx, 30000000h
		cmp	edx, 30000000h
		jz	short loc_454953
		mov	ecx, [ebp-68h]
		and	ecx, 30000000h
		cmp	ecx, 10000000h
		jnz	short loc_45497F
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_45497F

loc_454953:				; CODE XREF: .text:0045493Aj
		mov	eax, [ebp-0B0h]
		push	eax		; int
		lea	edx, [ebp-2C40h]
		push	edx		; int
		lea	ecx, [ebp-940h]
		push	ecx		; src
		mov	eax, [ebp-0B4h]	; int
		movzx	edx, word ptr [eax+0Ch]	; int
		push	edx		; int
		mov	ecx, [ebp-58h]	; int
		push	ecx		; int
		call	loc_44CFD4
		add	esp, 14h

loc_45497F:				; CODE XREF: .text:0045494Bj
					; .text:00454951j
		mov	eax, [ebp-68h]
		and	eax, 0C0000000h
		cmp	eax, 0C0000000h
		jz	short loc_4549A5
		mov	edx, [ebp-68h]
		and	edx, 0C0000000h
		cmp	edx, 40000000h
		jnz	short loc_4549BB
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_4549BB

loc_4549A5:				; CODE XREF: .text:0045498Cj
		mov	ecx, [ebp-0B0h]	; int
		mov	eax, [ecx+0Ch]	; int
		push	eax		; char
		mov	edx, [ebp-58h]	; int
		push	edx		; int
		call	loc_44D420
		add	esp, 8

loc_4549BB:				; CODE XREF: .text:0045499Dj
					; .text:004549A3j
		mov	ecx, [ebp-68h]
		and	ecx, 3000000h
		cmp	ecx, 3000000h
		jz	short loc_4549E9
		mov	eax, [ebp-68h]
		and	eax, 3000000h
		cmp	eax, 1000000h
		jnz	loc_454B13
		cmp	dword ptr [ebp-20h], 0
		jz	loc_454B13

loc_4549E9:				; CODE XREF: .text:004549CAj
		mov	edx, [ebp-0B4h]
		cmp	dword ptr [edx+10h], 0
		jnz	short loc_4549FE
		mov	dword ptr [ebp-1Ch], 1
		jmp	short loc_454A4B
; ---------------------------------------------------------------------------

loc_4549FE:				; CODE XREF: .text:004549F3j
		mov	ecx, [ebp-0B4h]
		inc	dword ptr [ecx+14h]
		mov	eax, [ebp-0B4h]
		mov	ecx, [ebp-0B4h]
		mov	edx, [eax+14h]
		cmp	edx, [ecx+10h]
		jnb	short loc_454A22
		xor	eax, eax
		mov	[ebp-1Ch], eax
		jmp	short loc_454A4B
; ---------------------------------------------------------------------------

loc_454A22:				; CODE XREF: .text:00454A19j
		mov	edx, [ebp-0B4h]
		xor	ecx, ecx
		mov	[edx+14h], ecx
		mov	eax, [ebp-0B4h]
		test	byte ptr [eax+0Ah], 8
		jnz	short loc_454A44
		mov	edx, [ebp-0B4h]
		xor	ecx, ecx
		mov	[edx+10h], ecx

loc_454A44:				; CODE XREF: .text:00454A37j
		mov	dword ptr [ebp-1Ch], 2

loc_454A4B:				; CODE XREF: .text:004549FCj
					; .text:00454A20j
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_454B13
		mov	eax, [ebp-68h]
		and	eax, 3000000h
		cmp	eax, 3000000h
		jnz	short loc_454A89
		push	offset aBreakpointAt ; "Breakpoint at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-4F0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		jmp	short loc_454AAC
; ---------------------------------------------------------------------------

loc_454A89:				; CODE XREF: .text:00454A62j
		push	offset aConditionalBre ; "Conditional breakpoint at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-4F0h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax

loc_454AAC:				; CODE XREF: .text:00454A87j
		push	0		; comment
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; nsymb
		mov	edx, [ebp-0Ch]
		add	edx, edx
		lea	ecx, [ebp-4F0h]
		add	edx, ecx
		push	edx		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		add	[ebp-0Ch], eax
		cmp	dword ptr [ebp-1Ch], 2
		jnz	short loc_454B0C
		push	offset aCountReached ; " (count	reached)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_454B0C:				; CODE XREF: .text:00454ADFj
		mov	dword ptr [ebp-18h], 1

loc_454B13:				; CODE XREF: .text:004548B2j
					; .text:004549D9j ...
		cmp	dword ptr [ebp-18h], 0
		jz	loc_455888
		cmp	dword_5D5610, 0
		jz	short loc_454B54
		call	Listmemory
		push	offset module.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		push	offset thread.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		push	offset memory.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		xor	edx, edx
		mov	dword_5D5610, edx

loc_454B54:				; CODE XREF: .text:00454B24j
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		lea	ecx, [ebp-4F0h]
		push	ecx		; arglist
		push	(offset	aS_9+4)	; format
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Message
		add	esp, 0Ch
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_454B79:				; CODE XREF: .text:0045468Ej
					; .text:0045469Ej ...
		mov	edx, [ebp-0C0h]
		mov	ecx, [edx]
		mov	[edi+90h], ecx
		push	offset aPrivilegedInst ; "Privileged instruction"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-4F0h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		cmp	dwProcessId, 0
		jnz	loc_454C3A
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_454C3A
		test	byte ptr [ebp-24h], 4
		jz	loc_455888
		cmp	word ptr [ebp-930h], 0
		jnz	short loc_454C0F
		push	offset aRaisedByPlugin ; " raised by plugin"
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		push	(offset	aS_9+4)	; format
		mov	ecx, [ebp-58h]
		push	ecx		; _addr
		call	Message
		add	esp, 0Ch
		jmp	short loc_454C27
; ---------------------------------------------------------------------------

loc_454C0F:				; CODE XREF: .text:00454BCFj
		lea	eax, [ebp-930h]
		push	eax		; arglist
		push	(offset	aS_9+4)	; format
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Message
		add	esp, 0Ch

loc_454C27:				; CODE XREF: .text:00454C0Dj
		mov	ecx, [edi+2Ch]
		mov	[edi+4], ecx
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_454C3A:				; CODE XREF: .text:00454BB1j
					; .text:00454BBBj
		cmp	dwProcessId, 0
		jnz	short loc_454CAE
		cmp	dword_5C8980, 0
		jnz	short loc_454C5F
		mov	eax, [ebp-0C0h]
		mov	edx, [eax]
		push	edx
		call	loc_44DD58
		pop	ecx
		test	eax, eax
		jz	short loc_454CAE

loc_454C5F:				; CODE XREF: .text:00454C4Aj
		cmp	dword ptr [edi+80h], 0
		jz	short loc_454CAE
		lea	ecx, [ebp-2C40h] ; int
		lea	eax, [ebp-940h]	; int
		push	ecx		; int
		push	eax		; src
		mov	edx, [ebp-0B0h]	; int
		push	edx		; int
		push	esi		; int
		call	loc_44E7EC
		add	esp, 10h
		test	eax, eax
		jnz	short loc_454CAE
		lea	ecx, [ebp-4F0h]
		push	ecx		; int
		mov	eax, [ebp-0B0h]
		push	eax		; int
		mov	edx, [ebp-58h]
		push	edx		; int
		call	loc_44DDBC
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_454CAE:				; CODE XREF: .text:00454C41j
					; .text:00454C5Dj ...
		mov	dword ptr [edi+8Ch], 1
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		mov	ecx, [ebp-58h]
		push	ecx		; int
		call	loc_44DEF0
		add	esp, 8
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_454CD8:				; CODE XREF: .text:00451D07j
		mov	eax, [ebp-0C0h]
		mov	edx, [eax]
		mov	[edi+90h], edx
		push	offset aIntegerDivisio ; "Integer division by zero"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-4F0h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	dwProcessId, 0
		jnz	short loc_454D7A
		cmp	dword_5C897C, 0
		jnz	short loc_454D2B
		mov	eax, [ebp-0C0h]
		mov	edx, [eax]
		push	edx
		call	loc_44DD58
		pop	ecx
		test	eax, eax
		jz	short loc_454D7A

loc_454D2B:				; CODE XREF: .text:00454D16j
		cmp	dword ptr [edi+80h], 0
		jz	short loc_454D7A
		lea	ecx, [ebp-2C40h] ; int
		lea	eax, [ebp-940h]	; int
		push	ecx		; int
		push	eax		; src
		mov	edx, [ebp-0B0h]	; int
		push	edx		; int
		push	esi		; int
		call	loc_44E7EC
		add	esp, 10h
		test	eax, eax
		jnz	short loc_454D7A
		lea	ecx, [ebp-4F0h]
		push	ecx		; int
		mov	eax, [ebp-0B0h]
		push	eax		; int
		mov	edx, [ebp-58h]
		push	edx		; int
		call	loc_44DDBC
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_454D7A:				; CODE XREF: .text:00454D0Dj
					; .text:00454D29j ...
		mov	dword ptr [edi+8Ch], 1
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		mov	ecx, [ebp-58h]
		push	ecx		; int
		call	loc_44DEF0
		add	esp, 8
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_454DA4:				; CODE XREF: .text:00451CD6j
		mov	eax, [ebp-0C0h]
		mov	edx, [eax]
		mov	[edi+90h], edx
		push	offset aIllegalInstruc ; "Illegal instruction"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-4F0h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		cmp	dwProcessId, 0
		jnz	loc_454E65
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_454E65
		test	byte ptr [ebp-24h], 4
		jz	loc_455888
		cmp	word ptr [ebp-930h], 0
		jnz	short loc_454E3A
		push	offset aRaisedByPlugin ; " raised by plugin"
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; n
		mov	edx, [ebp-0Ch]
		add	edx, edx
		lea	ecx, [ebp-4F0h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-4F0h]
		push	eax		; arglist
		push	(offset	aS_9+4)	; format
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Message
		add	esp, 0Ch
		jmp	short loc_454E52
; ---------------------------------------------------------------------------

loc_454E3A:				; CODE XREF: .text:00454DFAj
		lea	ecx, [ebp-930h]
		push	ecx		; arglist
		push	(offset	aS_9+4)	; format
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Message
		add	esp, 0Ch

loc_454E52:				; CODE XREF: .text:00454E38j
		mov	edx, [edi+2Ch]
		mov	[edi+4], edx
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_454E65:				; CODE XREF: .text:00454DDCj
					; .text:00454DE6j
		cmp	dwProcessId, 0
		jnz	short loc_454ED9
		cmp	dword_5C8980, 0
		jnz	short loc_454E8A
		mov	ecx, [ebp-0C0h]
		mov	eax, [ecx]
		push	eax
		call	loc_44DD58
		pop	ecx
		test	eax, eax
		jz	short loc_454ED9

loc_454E8A:				; CODE XREF: .text:00454E75j
		cmp	dword ptr [edi+80h], 0
		jz	short loc_454ED9
		lea	edx, [ebp-2C40h] ; int
		lea	ecx, [ebp-940h]	; int
		push	edx		; int
		push	ecx		; src
		mov	eax, [ebp-0B0h]	; int
		push	eax		; int
		push	esi		; int
		call	loc_44E7EC
		add	esp, 10h
		test	eax, eax
		jnz	short loc_454ED9
		lea	edx, [ebp-4F0h]
		push	edx		; int
		mov	ecx, [ebp-0B0h]
		push	ecx		; int
		mov	eax, [ebp-58h]
		push	eax		; int
		call	loc_44DDBC
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_454ED9:				; CODE XREF: .text:00454E6Cj
					; .text:00454E88j ...
		mov	dword ptr [edi+8Ch], 1
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		mov	ecx, [ebp-58h]
		push	ecx		; int
		call	loc_44DEF0
		add	esp, 8
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_454F03:				; CODE XREF: .text:00451CF2j
		mov	eax, [ebp-0C0h]
		mov	edx, [eax]
		mov	[edi+90h], edx
		push	offset aStackOverflo_1 ; "Stack	overflow"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-4F0h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, [ebp-0C0h]
		mov	edx, [eax]
		push	edx
		call	loc_44DD58
		pop	ecx
		test	eax, eax
		jz	short loc_454F93
		cmp	dword ptr [edi+80h], 0
		jz	short loc_454F93
		lea	ecx, [ebp-2C40h] ; int
		lea	eax, [ebp-940h]	; int
		push	ecx		; int
		push	eax		; src
		mov	edx, [ebp-0B0h]	; int
		push	edx		; int
		push	esi		; int
		call	loc_44E7EC
		add	esp, 10h
		test	eax, eax
		jnz	short loc_454F93
		lea	ecx, [ebp-4F0h]
		push	ecx		; int
		mov	eax, [ebp-0B0h]
		push	eax		; int
		mov	edx, [ebp-58h]
		push	edx		; int
		call	loc_44DDBC
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_454F93:				; CODE XREF: .text:00454F42j
					; .text:00454F4Bj ...
		mov	dword ptr [edi+8Ch], 1
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		mov	ecx, [ebp-58h]
		push	ecx		; int
		call	loc_44DEF0
		add	esp, 8
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_454FBD:				; CODE XREF: .text:00451CDFj
		mov	eax, [ebp-0C0h]
		mov	edx, [eax]
		mov	[edi+90h], edx
		push	offset aNoncontinuable ; "Noncontinuable exception"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-4F0h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword ptr [edi+8Ch], 1
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		lea	eax, [ebp-4F0h]
		push	eax		; arglist
		mov	edx, [ebp-58h]
		push	edx		; int
		call	loc_44DEF0
		add	esp, 8
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_455015:				; CODE XREF: .text:00451D01j
		mov	ecx, [ebp-0C0h]
		cmp	dword ptr [ecx], 0C000008Dh
		jnz	short loc_45504B
		push	offset aDenormalizedFl ; "Denormalized floating-point operand"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-4F0h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		jmp	loc_455176
; ---------------------------------------------------------------------------

loc_45504B:				; CODE XREF: .text:00455021j
		mov	edx, [ebp-0C0h]
		cmp	dword ptr [edx], 0C000008Eh
		jnz	short loc_455081
		push	offset aFloatingPointD ; "Floating-point division by zero"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-4F0h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		jmp	loc_455176
; ---------------------------------------------------------------------------

loc_455081:				; CODE XREF: .text:00455057j
		mov	eax, [ebp-0C0h]
		cmp	dword ptr [eax], 0C000008Fh
		jnz	short loc_4550B7
		push	offset aInexactFloatin ; "Inexact floating-point result"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-4F0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		jmp	loc_455176
; ---------------------------------------------------------------------------

loc_4550B7:				; CODE XREF: .text:0045508Dj
		mov	ecx, [ebp-0C0h]
		cmp	dword ptr [ecx], 0C0000090h
		jnz	short loc_4550ED
		push	offset aInvalidFloatin ; "Invalid floating-point operation"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-4F0h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		jmp	loc_455176
; ---------------------------------------------------------------------------

loc_4550ED:				; CODE XREF: .text:004550C3j
		mov	edx, [ebp-0C0h]
		cmp	dword ptr [edx], 0C0000091h
		jnz	short loc_455120
		push	offset aFloatingPointO ; "Floating-point overflow"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-4F0h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		jmp	short loc_455176
; ---------------------------------------------------------------------------

loc_455120:				; CODE XREF: .text:004550F9j
		mov	eax, [ebp-0C0h]
		cmp	dword ptr [eax], 0C0000092h
		jnz	short loc_455153
		push	offset aFpuStackError ;	src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-4F0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		jmp	short loc_455176
; ---------------------------------------------------------------------------

loc_455153:				; CODE XREF: .text:0045512Cj
		push	offset aFloatingPointU ; "Floating-point underflow"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-4F0h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax

loc_455176:				; CODE XREF: .text:00455046j
					; .text:0045507Cj ...
		mov	eax, [ebp-0B0h]
		mov	edx, [eax+8]
		cmp	edx, [ebp-58h]
		jz	short loc_4551B3
		mov	ecx, [ebp-0B0h]
		mov	eax, [ecx+8]
		push	eax
		push	offset aFromEip08x ; " from EIP=%08X"
		call	_T
		pop	ecx
		push	eax		; format
		mov	edx, [ebp-0Ch]
		add	edx, edx
		lea	ecx, [ebp-4F0h]
		add	edx, ecx
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-0Ch], eax

loc_4551B3:				; CODE XREF: .text:00455182j
		cmp	dwProcessId, 0
		jnz	loc_455243
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_455243
		test	byte ptr [ebp-24h], 4
		jz	loc_455888
		cmp	word ptr [ebp-930h], 0
		jnz	short loc_455218
		push	offset aRaisedByPlugin ; " raised by plugin"
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; n
		mov	edx, [ebp-0Ch]
		add	edx, edx
		lea	ecx, [ebp-4F0h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-4F0h]
		push	eax		; arglist
		push	(offset	aS_9+4)	; format
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Message
		add	esp, 0Ch
		jmp	short loc_455230
; ---------------------------------------------------------------------------

loc_455218:				; CODE XREF: .text:004551D8j
		lea	ecx, [ebp-930h]
		push	ecx		; arglist
		push	(offset	aS_9+4)	; format
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Message
		add	esp, 0Ch

loc_455230:				; CODE XREF: .text:00455216j
		mov	edx, [edi+2Ch]
		mov	[edi+4], edx
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_455243:				; CODE XREF: .text:004551BAj
					; .text:004551C4j
		mov	ecx, [ebp-0C0h]
		mov	eax, [ecx]
		mov	[edi+90h], eax
		cmp	dwProcessId, 0
		jnz	short loc_4552C5
		cmp	dword_5C8984, 0
		jnz	short loc_455276
		mov	edx, [ebp-0C0h]
		mov	ecx, [edx]
		push	ecx
		call	loc_44DD58
		pop	ecx
		test	eax, eax
		jz	short loc_4552C5

loc_455276:				; CODE XREF: .text:00455261j
		cmp	dword ptr [edi+80h], 0
		jz	short loc_4552C5
		lea	eax, [ebp-2C40h] ; int
		lea	edx, [ebp-940h]	; int
		push	eax		; int
		push	edx		; src
		mov	ecx, [ebp-0B0h]	; int
		push	ecx		; int
		push	esi		; int
		call	loc_44E7EC
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4552C5
		lea	eax, [ebp-4F0h]
		push	eax		; int
		mov	edx, [ebp-0B0h]
		push	edx		; int
		mov	ecx, [ebp-58h]
		push	ecx		; int
		call	loc_44DDBC
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_4552C5:				; CODE XREF: .text:00455258j
					; .text:00455274j ...
		mov	dword ptr [edi+8Ch], 1
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		mov	ecx, [ebp-58h]
		push	ecx		; int
		call	loc_44DEF0
		add	esp, 8
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_4552EF:				; CODE XREF: .text:00451D2Dj
		mov	eax, [ebp-0C0h]
		mov	edx, [eax]
		mov	[edi+90h], edx
		push	offset aVcServiceExcep ; "VC service exception"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-4F0h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		mov	eax, [ebp-0C0h]
		cmp	dword ptr [eax+10h], 4
		jb	loc_4553ED
		mov	edx, [ebp-0C0h]
		cmp	dword ptr [edx+14h], 1000h
		jnz	loc_4553ED
		push	5		; mode
		push	20h		; size
		mov	ecx, [ebp-0C0h]
		mov	eax, [ecx+18h]
		push	eax		; _addr
		lea	edx, [ebp-0A44h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-54h], eax
		mov	ecx, [ebp-0C0h]
		mov	eax, [ecx+1Ch]
		mov	[ebp-50h], eax
		cmp	dword ptr [ebp-50h], 0FFFFFFFFh
		jnz	short loc_45537B
		mov	edx, [edi+2Ch]
		mov	[ebp-50h], edx

loc_45537B:				; CODE XREF: .text:00455373j
		mov	ecx, [ebp-50h]
		push	ecx		; threadid
		call	Findthread
		pop	ecx
		mov	[ebp-9Ch], eax
		cmp	dword ptr [ebp-54h], 1
		jbe	short loc_4553ED
		cmp	dword ptr [ebp-9Ch], 0
		jz	short loc_4553ED
		push	20h		; nw
		mov	eax, [ebp-9Ch]
		add	eax, 10h
		push	eax		; w
		mov	edx, [ebp-54h]
		push	edx		; nt
		lea	ecx, [ebp-0A44h]
		push	ecx		; t
		call	Utftounicode
		add	esp, 10h
		test	eax, eax
		jle	short loc_4553ED
		mov	eax, [ebp-9Ch]
		add	eax, 10h
		push	eax
		mov	edx, [ebp-50h]
		push	edx
		push	offset aThread08xIsNam ; ": Thread %08X	is named '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h

loc_4553ED:				; CODE XREF: .text:0045532Aj
					; .text:0045533Dj ...
		cmp	dword_5C8988, 0
		jnz	short loc_455409
		mov	edx, [ebp-0C0h]
		mov	ecx, [edx]
		push	ecx
		call	loc_44DD58
		pop	ecx
		test	eax, eax
		jz	short loc_455458

loc_455409:				; CODE XREF: .text:004553F4j
		cmp	dword ptr [edi+80h], 0
		jz	short loc_455458
		lea	eax, [ebp-2C40h] ; int
		lea	edx, [ebp-940h]	; int
		push	eax		; int
		push	edx		; src
		mov	ecx, [ebp-0B0h]	; int
		push	ecx		; int
		push	esi		; int
		call	loc_44E7EC
		add	esp, 10h
		test	eax, eax
		jnz	short loc_455458
		lea	eax, [ebp-4F0h]
		push	eax		; int
		mov	edx, [ebp-0B0h]
		push	edx		; int
		mov	ecx, [ebp-58h]
		push	ecx		; int
		call	loc_44DDBC
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_455458:				; CODE XREF: .text:00455407j
					; .text:00455410j ...
		mov	dword ptr [edi+8Ch], 1
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		mov	ecx, [ebp-58h]
		push	ecx		; int
		call	loc_44DEF0
		add	esp, 8
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_455482:				; CODE XREF: .text:00451D21j
		mov	eax, [ebp-0C0h]
		mov	edx, [eax]
		mov	[edi+90h], edx
		push	offset aMsCException ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-4F0h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		mov	eax, [ebp-0C0h]
		cmp	dword ptr [eax+10h], 3
		jb	loc_455609
		mov	edx, [ebp-0C0h]
		cmp	dword ptr [edx+14h], 19930520h
		jnz	loc_455609
		mov	ecx, [ebp-0C0h]
		mov	eax, [ecx+1Ch]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-0A4h], eax
		push	1		; mode
		push	4		; size
		mov	edx, [ebp-0C0h]
		mov	ecx, [edx+1Ch]
		add	ecx, 0Ch
		push	ecx		; _addr
		lea	eax, [ebp-50h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-0A4h], 0
		jz	loc_455609
		cmp	dword ptr [ebp-54h], 4
		jnz	loc_455609
		push	1		; mode
		push	4		; size
		mov	edx, [ebp-50h]
		add	edx, 4
		push	edx		; _addr
		lea	ecx, [ebp-50h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 4
		jnz	loc_455609
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-50h]
		add	eax, 4
		push	eax		; _addr
		lea	edx, [ebp-50h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 4
		jnz	loc_455609
		push	5		; mode
		push	100h		; size
		mov	ecx, [ebp-50h]
		add	ecx, 8
		push	ecx		; _addr
		lea	eax, [ebp-0A44h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-54h], eax
		mov	byte ptr [ebp-945h], 0
		cmp	dword ptr [ebp-54h], 1
		jbe	short loc_455609
		lea	edx, [ebp-0A44h]
		push	edx		; s
		call	_strlen
		pop	ecx
		mov	[ebp-8], eax
		test	eax, eax
		jle	short loc_455609
		push	20h		; nw
		lea	edx, [ebp-530h]
		push	edx		; w
		mov	ecx, [ebp-8]
		push	ecx		; nt
		lea	eax, [ebp-0A44h]
		push	eax		; t
		call	Utftounicode
		add	esp, 10h
		test	eax, eax
		jle	short loc_455609
		mov	edx, [ebp-0C0h]
		lea	eax, [ebp-530h]
		mov	ecx, [edx+18h]
		push	ecx
		push	eax
		mov	edx, [ebp-0A4h]
		add	edx, 0Ch
		push	edx
		push	offset aModuleSClassSO ; ", module %s class '%s' object %08X"
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 14h

loc_455609:				; CODE XREF: .text:004554BDj
					; .text:004554D0j ...
		cmp	dword_5C8988, 0
		jnz	short loc_455625
		mov	edx, [ebp-0C0h]
		mov	ecx, [edx]
		push	ecx
		call	loc_44DD58
		pop	ecx
		test	eax, eax
		jz	short loc_455674

loc_455625:				; CODE XREF: .text:00455610j
		cmp	dword ptr [edi+80h], 0
		jz	short loc_455674
		lea	eax, [ebp-2C40h] ; int
		lea	edx, [ebp-940h]	; int
		push	eax		; int
		push	edx		; src
		mov	ecx, [ebp-0B0h]	; int
		push	ecx		; int
		push	esi		; int
		call	loc_44E7EC
		add	esp, 10h
		test	eax, eax
		jnz	short loc_455674
		lea	eax, [ebp-4F0h]
		push	eax		; int
		mov	edx, [ebp-0B0h]
		push	edx		; int
		mov	ecx, [ebp-58h]
		push	ecx		; int
		call	loc_44DDBC
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_455674:				; CODE XREF: .text:00455623j
					; .text:0045562Cj ...
		mov	dword ptr [edi+8Ch], 1
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		mov	ecx, [ebp-58h]
		push	ecx		; int
		call	loc_44DEF0
		add	esp, 8
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_45569E:				; CODE XREF: .text:00451CCBj
					; .text:00451CE5j ...
		cmp	dwProcessId, 0
		jnz	loc_455789
		cmp	dword ptr [ebp-24h], 0
		jz	loc_455789
		test	byte ptr [ebp-24h], 4
		jz	loc_455888
		cmp	word ptr [ebp-930h], 0
		jnz	loc_45575E
		mov	eax, [ebp-0C0h]
		mov	edx, [eax]
		push	edx
		push	offset aException08x ; "Exception %08X"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-930h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		lea	eax, [ebp-730h]
		push	eax		; _name
		mov	edx, [ebp-0C0h]
		mov	ecx, [edx]
		push	ecx		; value
		push	offset aException_2 ; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_45573A
		lea	eax, [ebp-730h]
		push	eax
		push	offset aS_31	; " (%s)"
		mov	edx, [ebp-0Ch]
		add	edx, edx
		lea	ecx, [ebp-930h]
		add	edx, ecx
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-0Ch], eax

loc_45573A:				; CODE XREF: .text:00455713j
		push	offset aRaisedByPlugin ; " raised by plugin"
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; n
		mov	edx, [ebp-0Ch]
		add	edx, edx
		lea	ecx, [ebp-930h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_45575E:				; CODE XREF: .text:004556C7j
		lea	eax, [ebp-930h]
		push	eax		; arglist
		push	(offset	aS_9+4)	; format
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Message
		add	esp, 0Ch
		mov	ecx, [edi+2Ch]
		mov	[edi+4], ecx
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		jmp	loc_455888
; ---------------------------------------------------------------------------

loc_455789:				; CODE XREF: .text:004556A5j
					; .text:004556AFj
		mov	eax, [ebp-0C0h]
		mov	edx, [eax]
		push	edx
		push	offset aException08x ; "Exception %08X"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-4F0h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		lea	eax, [ebp-730h]
		push	eax		; _name
		mov	edx, [ebp-0C0h]
		mov	ecx, [edx]
		push	ecx		; value
		push	offset aException_2 ; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4557F3
		lea	eax, [ebp-730h]
		push	eax
		push	offset aS_31	; " (%s)"
		mov	edx, [ebp-0Ch]
		add	edx, edx
		lea	ecx, [ebp-4F0h]
		add	edx, ecx
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_4557F3:				; CODE XREF: .text:004557CFj
		mov	eax, [ebp-0C0h]
		mov	edx, [eax]
		mov	[edi+90h], edx
		mov	ecx, [ebp-0C0h]
		mov	eax, [ecx]
		push	eax
		call	loc_44DD58
		pop	ecx
		test	eax, eax
		jz	short loc_455863
		cmp	dword ptr [edi+80h], 0
		jz	short loc_455863
		lea	edx, [ebp-2C40h] ; int
		lea	ecx, [ebp-940h]	; int
		push	edx		; int
		push	ecx		; src
		mov	eax, [ebp-0B0h]	; int
		push	eax		; int
		push	esi		; int
		call	loc_44E7EC
		add	esp, 10h
		test	eax, eax
		jnz	short loc_455863
		lea	edx, [ebp-4F0h]
		push	edx		; int
		mov	ecx, [ebp-0B0h]
		push	ecx		; int
		mov	eax, [ebp-58h]
		push	eax		; int
		call	loc_44DDBC
		add	esp, 0Ch
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_455863:				; CODE XREF: .text:00455812j
					; .text:0045581Bj ...
		mov	dword ptr [edi+8Ch], 1
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		mov	ecx, [ebp-58h]
		push	ecx		; int
		call	loc_44DEF0
		add	esp, 8

loc_455888:				; CODE XREF: .text:00451C8Fj
					; .text:00452520j ...
		mov	eax, [ebp-58h]
		mov	[edi+10h], eax
		mov	edx, [ebp-0B0h]
		mov	ecx, [edx+10h]
		mov	[edi+14h], ecx
		cmp	dword ptr [edi], 11h
		jz	short loc_4558B7
		cmp	dword ptr [edi], 5
		jz	short loc_4558B7
		cmp	dword ptr [edi], 6
		jnz	short loc_4558C1
		mov	eax, [edi+1Ch]
		cmp	eax, [ebp-58h]
		jz	short loc_4558B7
		cmp	dword ptr [edi+1Ch], 0
		jnz	short loc_4558C1

loc_4558B7:				; CODE XREF: .text:0045589Dj
					; .text:004558A2j ...
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		jmp	short loc_4558E6
; ---------------------------------------------------------------------------

loc_4558C1:				; CODE XREF: .text:004558A7j
					; .text:004558B5j
		cmp	dword ptr [edi], 0Fh
		jnz	short loc_4558E6
		push	offset aReturnReachedA ; "Return reached and executed"
		call	_T
		pop	ecx
		push	eax		; format
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Message
		add	esp, 8
		push	12h		; newstatus
		call	Setstatus
		pop	ecx

loc_4558E6:				; CODE XREF: .text:004558BFj
					; .text:004558C4j
		cmp	dword ptr [edi], 10h
		jnz	short loc_455930
		mov	ecx, [ebp-58h]
		push	ecx		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-0A4h], eax
		cmp	dword ptr [ebp-0A4h], 0
		jz	short loc_455930
		mov	eax, [ebp-0A4h]
		test	byte ptr [eax+0Ah], 30h
		jnz	short loc_455930
		push	offset aUserCodeReache ; "User code reached"
		call	_T
		pop	ecx
		push	eax		; format
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Message
		add	esp, 8
		push	12h		; newstatus
		call	Setstatus
		pop	ecx

loc_455930:				; CODE XREF: .text:004558E9j
					; .text:00455902j ...
		cmp	dword ptr [edi], 0Bh
		jz	short loc_455964
		cmp	dword ptr [edi], 0Ch
		jz	short loc_455964
		cmp	rtcond.options,	0
		jz	loc_4559E2
		cmp	dword ptr [edi], 7
		jz	short loc_455964
		cmp	dword ptr [edi], 8
		jz	short loc_455964
		cmp	dword ptr [edi], 9
		jz	short loc_455964
		cmp	dword ptr [edi], 0Ah
		jz	short loc_455964
		cmp	dword_5CBB98, 0
		jz	short loc_4559E2

loc_455964:				; CODE XREF: .text:00455933j
					; .text:00455938j ...
		lea	ecx, [ebp-4F0h]
		lea	edx, [ebp-2C40h]
		push	ecx		; buffer
		lea	ecx, [ebp-940h]
		mov	eax, [ebp-0B0h]
		push	eax		; int
		push	edx		; int
		push	ecx		; s1
		mov	eax, [ebp-58h]
		push	eax		; int
		call	loc_44DF74
		add	esp, 14h
		test	eax, eax
		jz	short loc_4559E2
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		cmp	dword ptr [edi], 0Bh
		jz	short loc_4559A2
		cmp	dword ptr [edi], 0Ch
		jnz	short loc_4559C3

loc_4559A2:				; CODE XREF: .text:0045599Bj
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		push	offset aSfxTraceS ; "SFX trace:	%s"
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp-58h]
		push	ecx		; _addr
		call	Message
		add	esp, 0Ch
		jmp	short loc_4559E2
; ---------------------------------------------------------------------------

loc_4559C3:				; CODE XREF: .text:004559A0j
		lea	eax, [ebp-4F0h]
		push	eax		; arglist
		push	offset aRunTraceS ; "Run trace:	%s"
		call	_T
		pop	ecx
		push	eax		; format
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Message
		add	esp, 0Ch

loc_4559E2:				; CODE XREF: .text:00455941j
					; .text:00455962j ...
		mov	ecx, [ebp-0B0h]
		push	ecx		; reg
		lea	eax, [ebp-2C40h]
		push	eax		; da
		lea	edx, [ebp-940h]
		push	edx		; src
		mov	ecx, [ebp-58h]
		push	ecx		; arglist
		call	loc_44CA4C
		mov	[ebp-6Ch], eax
		xor	eax, eax
		mov	ebx, [ebp-2C2Ch]
		mov	[ebp-4Ch], eax
		and	ebx, 1Fh
		add	esp, 10h
		cmp	dword ptr [ebp-6Ch], 0
		jbe	short loc_455A7B
		test	byte ptr [ebp-2C26h], 80h
		jz	short loc_455A7B
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		mov	[ebp-0A0h], eax
		cmp	dword ptr [ebp-0A0h], 0
		jz	loc_455DA0
		cmp	VersionInformation.dwPlatformId, 2
		jnz	loc_455DA0
		cmp	VersionInformation.dwMajorVersion, 5
		jb	loc_455DA0
		mov	ecx, [ebp-0A0h]
		mov	eax, [ecx+14h]
		and	eax, 0FFh
		cmp	eax, 2
		jnz	loc_455DA0
		xor	edx, edx
		mov	[ebp-6Ch], edx
		jmp	loc_455DA0
; ---------------------------------------------------------------------------

loc_455A7B:				; CODE XREF: .text:00455A18j
					; .text:00455A21j
		cmp	dword ptr [edi], 8
		jz	short loc_455ABA
		cmp	dword ptr [edi], 9
		jz	short loc_455ABA
		cmp	dword ptr [edi], 0Ah
		jz	short loc_455ABA
		cmp	dword ptr [edi], 0Eh
		jz	short loc_455ABA
		cmp	dword ptr [edi], 10h
		jz	short loc_455ABA
		cmp	dword ptr [edi], 7
		jz	short loc_455A9E
		cmp	dword ptr [edi], 0Bh
		jnz	short loc_455AB0

loc_455A9E:				; CODE XREF: .text:00455A97j
		cmp	dword_5CBB78, 0
		jnz	short loc_455ABA
		cmp	dword_5CBB7C, 0
		jnz	short loc_455ABA

loc_455AB0:				; CODE XREF: .text:00455A9Cj
		cmp	dword ptr [ebp-44h], 0
		jz	loc_455D95

loc_455ABA:				; CODE XREF: .text:00455A7Ej
					; .text:00455A83j ...
		mov	ecx, [ebp-2C30h]
		mov	[ebp-6Ch], ecx
		cmp	dword ptr [ebp-6Ch], 0
		jnz	short loc_455AEE
		mov	eax, [ebp-58h]
		push	eax		; arglist
		push	offset aOllydbgIsUna_2 ; "OllyDbg is unable to step over the comm"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		jmp	loc_455DA0
; ---------------------------------------------------------------------------

loc_455AEE:				; CODE XREF: .text:00455AC7j
		cmp	dword ptr [ebp-6Ch], 2
		jb	short loc_455B40
		cmp	word ptr [ebp-940h], 2ECDh
		jz	short loc_455B0A
		cmp	word ptr [ebp-940h], 340Fh
		jnz	short loc_455B40

loc_455B0A:				; CODE XREF: .text:00455AFDj
		push	0FFFFFFFFh	; addr1
		push	0		; addr0
		push	offset bppage	; sd
		call	Deletesorteddatarange
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_455B26
		mov	dword ptr [edi+20h], 1

loc_455B26:				; CODE XREF: .text:00455B1Dj
		call	loc_4C826C
		test	eax, eax
		jle	short loc_455B40
		or	dword ptr [esi+6F8h], 0Fh
		mov	dword ptr [edi+9Ch], 1

loc_455B40:				; CODE XREF: .text:00455AF2j
					; .text:00455B08j ...
		cmp	dword ptr [ebp-2C14h], 0
		jz	short loc_455B53
		xor	edx, edx
		mov	[ebp-6Ch], edx
		jmp	loc_455D51
; ---------------------------------------------------------------------------

loc_455B53:				; CODE XREF: .text:00455B47j
		cmp	zwcontinue, 0
		jz	loc_455CD4
		cmp	ebx, 0Ch
		jnz	loc_455CD4
		mov	ecx, zwcontinue
		cmp	ecx, [ebp-2C00h]
		jnz	loc_455CD4
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-0B0h]
		mov	edx, [eax+1Ch]
		push	edx		; _addr
		lea	ecx, [ebp-5Ch]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 4
		jnz	loc_455CCB
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-5Ch]
		add	eax, 0B8h
		push	eax		; _addr
		lea	edx, [ebp-60h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 4
		jnz	short loc_455C10
		push	1		; mode
		push	1		; size
		mov	ecx, [ebp-60h]
		push	ecx		; _addr
		lea	eax, [ebp-93h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_455C07
		mov	edx, [ebp-5Ch]
		add	edx, 0B8h
		push	edx		; arglist
		push	offset aTheContextStru ; "The CONTEXT structure	passed to ZwConti"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		jmp	short loc_455C10
; ---------------------------------------------------------------------------

loc_455C07:				; CODE XREF: .text:00455BDDj
		mov	ecx, [ebp-60h]
		sub	ecx, [ebp-58h]
		mov	[ebp-6Ch], ecx

loc_455C10:				; CODE XREF: .text:00455BC2j
					; .text:00455C05j
		cmp	bphard.sorted.n, 0
		jle	loc_455CCB
		push	0
		lea	eax, [ebp-0F0h]
		push	eax
		call	loc_44BE60
		add	esp, 8
		mov	[ebp-54h], eax
		test	byte ptr [ebp-54h], 1
		jz	short loc_455C51
		push	1		; mode
		push	4		; size
		mov	edx, [ebp-5Ch]
		add	edx, 4
		push	edx		; _addr
		lea	ecx, [ebp-0F0h]
		push	ecx		; buf
		call	Writememory
		add	esp, 10h

loc_455C51:				; CODE XREF: .text:00455C35j
		test	byte ptr [ebp-54h], 2
		jz	short loc_455C71
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-5Ch]
		add	eax, 8
		push	eax		; _addr
		lea	edx, [ebp-0ECh]
		push	edx		; buf
		call	Writememory
		add	esp, 10h

loc_455C71:				; CODE XREF: .text:00455C55j
		test	byte ptr [ebp-54h], 4
		jz	short loc_455C91
		push	1		; mode
		push	4		; size
		mov	ecx, [ebp-5Ch]
		add	ecx, 0Ch
		push	ecx		; _addr
		lea	eax, [ebp-0E8h]
		push	eax		; buf
		call	Writememory
		add	esp, 10h

loc_455C91:				; CODE XREF: .text:00455C75j
		test	byte ptr [ebp-54h], 8
		jz	short loc_455CB1
		push	1		; mode
		push	4		; size
		mov	edx, [ebp-5Ch]
		add	edx, 10h
		push	edx		; _addr
		lea	ecx, [ebp-0E4h]
		push	ecx		; buf
		call	Writememory
		add	esp, 10h

loc_455CB1:				; CODE XREF: .text:00455C95j
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-5Ch]
		add	eax, 18h
		push	eax		; _addr
		lea	edx, [ebp-0D4h]
		push	edx		; buf
		call	Writememory
		add	esp, 10h

loc_455CCB:				; CODE XREF: .text:00455B9Cj
					; .text:00455C17j
		mov	dword ptr [ebp-4Ch], 1
		jmp	short loc_455D51
; ---------------------------------------------------------------------------

loc_455CD4:				; CODE XREF: .text:00455B5Aj
					; .text:00455B63j ...
		cmp	dword ptr [edi], 7
		jz	short loc_455CE8
		cmp	dword ptr [edi], 9
		jz	short loc_455CE8
		cmp	dword ptr [edi], 0Bh
		jz	short loc_455CE8
		cmp	dword ptr [edi], 0Dh
		jnz	short loc_455D2E

loc_455CE8:				; CODE XREF: .text:00455CD7j
					; .text:00455CDCj ...
		cmp	dword_5CBB78, 0
		jz	short loc_455D0E
		cmp	ebx, 0Ch
		jnz	short loc_455D0E
		mov	ecx, [ebp-2C00h]
		push	ecx		; _addr
		call	Followcall
		pop	ecx
		push	eax		; _addr
		call	Issystem
		pop	ecx
		test	eax, eax
		jnz	short loc_455D51

loc_455D0E:				; CODE XREF: .text:00455CEFj
					; .text:00455CF4j
		cmp	ebx, 5
		jnz	short loc_455D27
		cmp	dword_5CBB7C, 0
		jz	short loc_455D27
		mov	eax, [ebp-58h]
		cmp	eax, userspacelimit
		jb	short loc_455D51

loc_455D27:				; CODE XREF: .text:00455D11j
					; .text:00455D1Aj
		xor	edx, edx
		mov	[ebp-6Ch], edx
		jmp	short loc_455D51
; ---------------------------------------------------------------------------

loc_455D2E:				; CODE XREF: .text:00455CE6j
		cmp	ebx, 0Ch
		jz	short loc_455D51
		cmp	ebx, 0Dh
		jz	short loc_455D51
		cmp	ebx, 5
		jz	short loc_455D51
		cmp	ebx, 0Eh
		jz	short loc_455D51
		cmp	ebx, 15h
		jz	short loc_455D51
		cmp	ebx, 17h
		jz	short loc_455D51
		xor	ecx, ecx
		mov	[ebp-6Ch], ecx

loc_455D51:				; CODE XREF: .text:00455B4Ej
					; .text:00455CD2j ...
		cmp	dword ptr [edi], 0Eh
		jnz	short loc_455DA0
		cmp	ebx, 0Fh
		jz	short loc_455D60
		cmp	ebx, 10h
		jnz	short loc_455DA0

loc_455D60:				; CODE XREF: .text:00455D59j
		cmp	dword_5C8954, 0
		jz	short loc_455D73
		push	0Fh		; newstatus
		call	Setstatus
		pop	ecx
		jmp	short loc_455DA0
; ---------------------------------------------------------------------------

loc_455D73:				; CODE XREF: .text:00455D67j
		push	offset aReturnReached ;	"Return	reached"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Message
		add	esp, 8
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		jmp	short loc_455DA0
; ---------------------------------------------------------------------------

loc_455D95:				; CODE XREF: .text:00455AB4j
		test	byte ptr [ebp-24h], 2
		jnz	short loc_455DA0
		xor	edx, edx
		mov	[ebp-6Ch], edx

loc_455DA0:				; CODE XREF: .text:00455A3Aj
					; .text:00455A47j ...
		cmp	dword ptr [esi+6C4h], 0
		jnz	short loc_455DB3
		xor	ecx, ecx
		mov	[esi+6C8h], ecx
		jmp	short loc_455DDB
; ---------------------------------------------------------------------------

loc_455DB3:				; CODE XREF: .text:00455DA7j
		mov	eax, [ebp-0B0h]
		and	dword ptr [eax+2Ch], 0FFFFFEFFh
		mov	edx, [ebp-0B0h]
		or	dword ptr [edx], 1
		xor	ecx, ecx
		mov	[esi+6C4h], ecx
		mov	dword ptr [esi+6C8h], 1

loc_455DDB:				; CODE XREF: .text:00455DB1j
		cmp	dword ptr [edi], 12h
		jz	short loc_455DE5
		cmp	dword ptr [edi], 13h
		jnz	short loc_455E2E

loc_455DE5:				; CODE XREF: .text:00455DDEj
		push	2100Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		cmp	dword ptr [esi+0Ch], 0
		jnz	short loc_455DFF
		call	Getcputhreadid
		jmp	short loc_455E02
; ---------------------------------------------------------------------------

loc_455DFF:				; CODE XREF: .text:00455DF6j
		mov	eax, [edi+2Ch]

loc_455E02:				; CODE XREF: .text:00455DFDj
		push	eax		; threadid
		call	Setcpu
		add	esp, 18h
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		xor	edx, edx
		mov	[edi+84h], edx
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_455E2E:				; CODE XREF: .text:00455DE3j
		cmp	dword_5C8964, 0
		jz	loc_455EC6
		cmp	dword ptr [ebp-6Ch], 0
		jnz	loc_455EC6
		inc	dword ptr [ebp-70h]
		mov	edx, [ebp-70h]
		cmp	edx, 7D0h
		jnb	short loc_455EC6
		cmp	dword ptr [edi], 7
		jz	short loc_455EC6
		cmp	dword ptr [edi], 8
		jz	short loc_455EC6
		cmp	dword ptr [ebp-30h], 1
		setz	cl
		and	ecx, 1
		push	ecx		; int
		mov	eax, [ebp-0B0h]
		push	eax		; src
		mov	edx, [edi+2Ch]
		push	edx		; dwThreadId
		call	Executecommand
		add	esp, 0Ch
		dec	eax
		jnz	short loc_455EC6
		mov	ecx, [ebp-0C0h]
		xor	eax, eax
		mov	[ecx], eax
		mov	edx, [ebp-0B0h]
		mov	eax, [ebp-0C0h]
		mov	ecx, [edx+8]
		mov	[eax+0Ch], ecx
		cmp	dword ptr [edi+20h], 0
		jnz	loc_451883
		cmp	dword ptr [edi], 1
		jz	short loc_455EBC
		cmp	dword ptr [edi], 3
		jz	short loc_455EBC
		cmp	dword ptr [edi], 4
		jz	short loc_455EBC
		cmp	dword ptr [edi], 0Dh
		jnz	loc_451883

loc_455EBC:				; CODE XREF: .text:00455EA7j
					; .text:00455EACj ...
		xor	edx, edx
		mov	[ebp-64h], edx
		jmp	loc_456067
; ---------------------------------------------------------------------------

loc_455EC6:				; CODE XREF: .text:00455E35j
					; .text:00455E3Fj ...
		cmp	dword ptr [ebp-30h], 1
		jnz	short loc_455F14
		push	0		; subaddr
		mov	ecx, [ebp-58h]
		push	ecx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-0B4h], eax
		cmp	dword ptr [ebp-0B4h], 0
		jz	short loc_455F05
		push	0FFFFFFFFh
		mov	eax, [ebp-0B4h]
		push	eax
		call	loc_497418
		add	esp, 8
		mov	edx, [ebp-58h]
		mov	[edi+18h], edx

loc_455F05:				; CODE XREF: .text:00455EECj
		mov	ecx, [edi+2Ch]
		mov	[ebp-64h], ecx
		mov	dword ptr [ebp-38h], 1
		jmp	short loc_455F61
; ---------------------------------------------------------------------------

loc_455F14:				; CODE XREF: .text:00455ECAj
		cmp	dword ptr [ebp-30h], 2
		jnz	short loc_455F29
		mov	eax, [edi+2Ch]
		mov	[ebp-64h], eax
		mov	dword ptr [ebp-38h], 1
		jmp	short loc_455F61
; ---------------------------------------------------------------------------

loc_455F29:				; CODE XREF: .text:00455F18j
		cmp	dword ptr [ebp-30h], 4
		jnz	short loc_455F57
		mov	edx, [ebp-7Ch]
		and	edx, 7FFFFFFFh
		or	[esi+6F8h], edx
		mov	dword ptr [edi+9Ch], 1
		mov	ecx, [edi+2Ch]
		mov	[ebp-64h], ecx
		mov	dword ptr [ebp-38h], 1
		jmp	short loc_455F61
; ---------------------------------------------------------------------------

loc_455F57:				; CODE XREF: .text:00455F2Dj
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-64h], eax
		mov	[ebp-38h], edx

loc_455F61:				; CODE XREF: .text:00455F12j
					; .text:00455F27j ...
		cmp	dword ptr [ebp-6Ch], 0
		jbe	loc_455FFC
		push	0
		mov	ecx, [ebp-4Ch]
		push	ecx
		mov	eax, 80000000h
		test	byte ptr [ebp-24h], 2
		jnz	short loc_455F81
		add	eax, 80000000h

loc_455F81:				; CODE XREF: .text:00455F7Aj
		push	eax
		push	4000h
		mov	edx, [ebp-58h]
		add	edx, [ebp-6Ch]
		push	edx
		call	loc_44F6D0
		add	esp, 14h
		test	eax, eax
		jz	short loc_455FF6
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		push	2100Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		mov	ecx, [edi+2Ch]
		push	ecx		; threadid
		call	Setcpu
		add	esp, 18h
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		mov	eax, [ebp-58h]
		push	eax		; arglist
		push	offset aOllydbgIsUna_5 ; "OllyDbg is unable to step over the comm"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		xor	edx, edx
		mov	[edi+84h], edx
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_455FF6:				; CODE XREF: .text:00455F98j
		mov	edx, [edi+2Ch]
		mov	[ebp-64h], edx

loc_455FFC:				; CODE XREF: .text:00455F65j
		cmp	dword ptr [ebp-6Ch], 0
		jnz	short loc_456041
		cmp	dword ptr [ebp-38h], 1
		jz	short loc_456035
		cmp	dword ptr [edi], 7
		jz	short loc_456035
		cmp	dword ptr [edi], 8
		jz	short loc_456035
		cmp	dword ptr [edi], 9
		jz	short loc_456035
		cmp	dword ptr [edi], 0Ah
		jz	short loc_456035
		cmp	dword ptr [edi], 0Eh
		jz	short loc_456035
		cmp	dword ptr [edi], 0Fh
		jz	short loc_456035
		cmp	dword ptr [edi], 10h
		jz	short loc_456035
		cmp	dword ptr [edi], 0Bh
		jz	short loc_456035
		cmp	dword ptr [edi], 0Dh
		jnz	short loc_456041

loc_456035:				; CODE XREF: .text:00456006j
					; .text:0045600Bj ...
		mov	ecx, [ebp-0B0h]
		test	byte ptr [ecx+2Dh], 1
		jz	short loc_456047

loc_456041:				; CODE XREF: .text:00456000j
					; .text:00456033j
		cmp	dword ptr [ebp-44h], 0
		jz	short loc_456067

loc_456047:				; CODE XREF: .text:0045603Fj
		mov	eax, [ebp-0B0h]
		or	dword ptr [eax+2Ch], 100h
		mov	edx, [ebp-0B0h]
		or	dword ptr [edx], 1
		mov	dword ptr [esi+6C4h], 1

loc_456067:				; CODE XREF: .text:00455EC1j
					; .text:00456045j
		cmp	dword ptr [edi], 4
		jz	short loc_45609F
		cmp	dword ptr [edi], 10h
		jz	short loc_45609F
		cmp	dword ptr [edi], 7
		jz	short loc_45609F
		cmp	dword ptr [edi], 8
		jz	short loc_45609F
		cmp	dword ptr [edi], 9
		jz	short loc_45609F
		cmp	dword ptr [edi], 0Ah
		jz	short loc_45609F
		cmp	dword ptr [edi], 0Eh
		jz	short loc_45609F
		cmp	dword ptr [edi], 0Fh
		jz	short loc_45609F
		cmp	dword ptr [edi], 0Bh
		jz	short loc_45609F
		cmp	dword ptr [edi], 0Dh
		jz	short loc_45609F
		cmp	dword ptr [ebp-44h], 0
		jz	short loc_4560A5

loc_45609F:				; CODE XREF: .text:0045606Aj
					; .text:0045606Fj ...
		mov	ecx, [edi+2Ch]
		mov	[ebp-64h], ecx

loc_4560A5:				; CODE XREF: .text:0045609Dj
		mov	eax, [ebp-64h]
		push	eax		; arglist
		call	loc_4503B8
		pop	ecx
		test	eax, eax
		jz	short loc_4560F7
		push	12h		; newstatus
		call	Setstatus
		pop	ecx
		push	2100Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		mov	edx, [edi+2Ch]
		push	edx		; threadid
		call	Setcpu
		add	esp, 18h
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		xor	ecx, ecx
		mov	[edi+84h], ecx
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_4560F7:				; CODE XREF: .text:004560B1j
		mov	edx, [ebp-64h]
		mov	[edi+4], edx
		cmp	dword ptr [edi], 7
		jz	short loc_456107
		cmp	dword ptr [edi], 8
		jnz	short loc_456167

loc_456107:				; CODE XREF: .text:00456100j
		push	2F005h		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		mov	ecx, [edi+2Ch]
		push	ecx		; threadid
		call	Setcpu
		add	esp, 18h
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		mov	eax, [ebp-0B0h]
		push	esi
		push	edi
		lea	edi, [esi+4F0h]
		mov	esi, eax
		mov	ecx, 71h
		rep movsd
		pop	edi
		pop	esi
		cmp	dword ptr [esi+6C4h], 0
		jz	short loc_45615D
		and	dword ptr [esi+51Ch], 0FFFFFEFFh

loc_45615D:				; CODE XREF: .text:00456151j
		mov	dword ptr [esi+6B4h], 1

loc_456167:				; CODE XREF: .text:00456105j
		push	1
		call	loc_44C84C
		pop	ecx
		call	Flushmemorycache
		push	0		; dwSize
		push	0		; lpBaseAddress
		mov	eax, process
		push	eax		; hProcess
		call	FlushInstructionCache
		xor	edx, edx
		mov	[edi+84h], edx
		cmp	dword ptr [edi+88h], 103h
		jnz	short loc_4561A3
		mov	dword ptr [edi+88h], 10002h
		jmp	short loc_4561B5
; ---------------------------------------------------------------------------

loc_4561A3:				; CODE XREF: .text:00456195j
		push	10002h		; dwContinueStatus
		mov	ecx, [edi+2Ch]
		push	ecx		; dwThreadId
		mov	eax, [edi+28h]
		push	eax		; dwProcessId
		call	ContinueDebugEvent

loc_4561B5:				; CODE XREF: .text:004561A1j
		cmp	dword ptr [edi], 7
		jz	short loc_4561BF
		cmp	dword ptr [edi], 8
		jnz	short loc_4561DB

loc_4561BF:				; CODE XREF: .text:004561B8j
		cmp	dword_5CBB90, 0
		jle	short loc_4561DB
		mov	edx, dword_5CBB90
		mov	ecx, dwMilliseconds[edx*4]
		push	ecx		; dwMilliseconds
		call	Sleep

loc_4561DB:				; CODE XREF: .text:004561BDj
					; .text:004561C6j
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_4561E5:				; CODE XREF: .text:00451822j
					; DATA XREF: .text:off_451829o
		push	714h		; jumptable 00451822 case 2
		push	0		; c
		lea	edx, [ebp-1158h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		mov	ecx, [edi+2Ch]
		mov	[ebp-1158h], ecx
		mov	dword ptr [ebp-1154h], 1
		cmp	dword_5D5610, 0
		jnz	short loc_456221
		mov	dword ptr [ebp-1150h], 100h

loc_456221:				; CODE XREF: .text:00456215j
		push	0		; dwOptions
		push	0		; bInheritHandle
		push	1F03FFh		; dwDesiredAccess
		lea	eax, [ebp-0C4h]
		push	eax		; lpTargetHandle
		mov	edx, hTargetProcessHandle
		push	edx		; hTargetProcessHandle
		mov	ecx, [edi+30h]
		push	ecx		; hSourceHandle
		mov	eax, hTargetProcessHandle
		push	eax		; hSourceProcessHandle
		call	DuplicateHandle
		test	eax, eax
		jnz	short loc_456260
		or	dword ptr [ebp-1150h], 100000h
		mov	edx, [edi+30h]
		mov	[ebp-1108h], edx
		jmp	short loc_45626C
; ---------------------------------------------------------------------------

loc_456260:				; CODE XREF: .text:00456249j
		mov	ecx, [ebp-0C4h]
		mov	[ebp-1108h], ecx

loc_45626C:				; CODE XREF: .text:0045625Ej
		mov	eax, [edi+34h]
		lea	ecx, [ebp-4F0h]
		mov	[ebp-1104h], eax
		mov	edx, [edi+38h]
		mov	[ebp-1100h], edx
		push	200h		; nname
		push	ecx		; _name
		push	22h		; type
		mov	eax, [ebp-1100h]
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jle	short loc_4562C1
		push	offset aDbguiremotebre ; "DbgUiRemoteBreakin"
		lea	edx, [ebp-4F0h]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4562C1
		xor	ecx, ecx
		mov	[ebp-114Ch], ecx
		jmp	short loc_456318
; ---------------------------------------------------------------------------

loc_4562C1:				; CODE XREF: .text:0045629Dj
					; .text:004562B5j
		cmp	module.sorted.n, 0
		jnz	short loc_456306
		lea	eax, [ebp-4F0h]
		push	eax		; s
		mov	edx, [ebp-1100h]
		push	edx		; _addr
		call	Getexportfrommemory
		add	esp, 8
		test	eax, eax
		jle	short loc_456306
		push	offset aDbguiremotebre ; "DbgUiRemoteBreakin"
		lea	ecx, [ebp-4F0h]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_456306
		xor	eax, eax
		mov	[ebp-114Ch], eax
		jmp	short loc_456318
; ---------------------------------------------------------------------------

loc_456306:				; CODE XREF: .text:004562C8j
					; .text:004562E2j ...
		inc	dword_5D551C
		mov	edx, dword_5D551C
		mov	[ebp-114Ch], edx

loc_456318:				; CODE XREF: .text:004562BFj
					; .text:00456304j
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-0AA4h], ecx
		mov	[ebp-0C6Ch], ecx
		mov	[ebp-0AA0h], eax
		mov	[ebp-0A98h], eax
		mov	[ebp-0A9Ch], eax
		lea	edx, [ebp-1158h]
		push	edx		; item
		push	offset thread.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		mov	esi, eax
		cmp	dword ptr [edi+94h], 0
		jz	short loc_456379
		cmp	dword ptr [edi+98h], 0
		jnz	short loc_456379
		test	esi, esi
		jz	short loc_456379
		mov	eax, [esi+50h]
		push	eax		; hThread
		call	SuspendThread
		mov	dword ptr [esi+6BCh], 1

loc_456379:				; CODE XREF: .text:00456357j
					; .text:00456360j ...
		cmp	dword ptr [ebp-114Ch], 0
		jz	short loc_4563B3
		mov	edx, [ebp-1158h]
		push	edx
		mov	ecx, [ebp-114Ch]
		push	ecx		; arglist
		push	offset aNewThreadI_Id0 ; "New thread %i. (ID %08X) created"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp-1100h]
		push	eax		; _addr
		call	Message
		add	esp, 10h
		push	1
		call	loc_44F668
		pop	ecx

loc_4563B3:				; CODE XREF: .text:00456380j
		cmp	thread.hw, 0
		jz	short loc_4563CC
		push	0		; bErase
		push	0		; lpRect
		mov	edx, thread.hw
		push	edx		; hWnd
		call	InvalidateRect

loc_4563CC:				; CODE XREF: .text:004563BAj
		cmp	dword_5CBB68, 0
		jz	short loc_456440
		cmp	dword ptr [ebp-114Ch], 0
		jz	short loc_456440
		push	0
		push	0
		push	0
		push	2000h
		mov	ecx, [ebp-1100h]
		push	ecx
		call	loc_44F6D0
		add	esp, 14h
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_456440
		mov	eax, [ebp-1100h]
		push	eax
		mov	edx, [edi+30h]
		push	edx		; arglist
		push	offset aNewThread08xUn ; "New thread %08X: unable to set breakpoi"...
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; _addr
		call	Message
		add	esp, 10h
		call	Pauseprocess
		push	2E000h		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		mov	ecx, [ebp-1158h]
		push	ecx		; threadid
		call	Setcpu
		add	esp, 18h

loc_456440:				; CODE XREF: .text:004563D3j
					; .text:004563DCj ...
		xor	ebx, ebx
		jmp	short loc_45645C
; ---------------------------------------------------------------------------

loc_456444:				; CODE XREF: .text:00456462j
		push	0
		mov	edx, g_pPluginnotify
		mov	eax, [edi+2Ch]
		push	eax
		push	esi
		push	3
		mov	ecx, [edx+ebx*4]
		call	ecx
		add	esp, 10h
		inc	ebx

loc_45645C:				; CODE XREF: .text:00456442j
		cmp	ebx, g_nPluginnotify
		jl	short loc_456444
		jmp	loc_4578BB
; ---------------------------------------------------------------------------

loc_456469:				; CODE XREF: .text:00451822j
					; DATA XREF: .text:off_451829o
		cmp	hObject, 0	; jumptable 00451822 case 3
		jz	short loc_45647B
		cmp	hObject, 6
		jnz	short loc_456483

loc_45647B:				; CODE XREF: .text:00456470j
		mov	eax, [edi+34h]
		mov	process, eax

loc_456483:				; CODE XREF: .text:00456479j
		push	714h		; n
		push	0		; c
		lea	edx, [ebp-1158h]
		push	edx		; s
		call	_memset
		mov	ecx, [edi+2Ch]
		add	esp, 0Ch
		mov	[ebp-1158h], ecx
		xor	ecx, ecx
		mov	dword ptr [ebp-1154h], 1
		mov	eax, [edi+48h]
		mov	[ebp-1104h], eax
		xor	eax, eax
		mov	edx, [edi+4Ch]
		mov	[ebp-1100h], edx
		mov	[ebp-0AA4h], ecx
		mov	[ebp-0C6Ch], ecx
		mov	[ebp-0AA0h], eax
		mov	[ebp-0A98h], eax
		mov	[ebp-0A9Ch], eax
		push	0		; dwOptions
		push	0		; bInheritHandle
		lea	edx, [ebp-0C4h]
		push	1F03FFh		; dwDesiredAccess
		push	edx		; lpTargetHandle
		mov	ecx, hTargetProcessHandle
		push	ecx		; hTargetProcessHandle
		mov	edx, hTargetProcessHandle
		mov	eax, [edi+38h]
		push	eax		; hSourceHandle
		push	edx		; hSourceProcessHandle
		call	DuplicateHandle
		test	eax, eax
		jnz	short loc_456520
		or	dword ptr [ebp-1150h], 100000h
		mov	ecx, [edi+38h]
		mov	[ebp-1108h], ecx
		jmp	short loc_45652C
; ---------------------------------------------------------------------------

loc_456520:				; CODE XREF: .text:00456509j
		mov	eax, [ebp-0C4h]
		mov	[ebp-1108h], eax

loc_45652C:				; CODE XREF: .text:0045651Ej
		cmp	thread.sorted.n, 0
		jz	short loc_456544
		mov	edx, processid
		cmp	edx, [edi+28h]
		jz	loc_4565C5

loc_456544:				; CODE XREF: .text:00456533j
		mov	ecx, [edi+28h]
		mov	processid, ecx
		mov	eax, processid
		push	eax		; arglist
		push	offset aNewProcessId08 ; "New process (ID %08X)	created"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; _addr
		call	Message
		add	esp, 0Ch
		mov	edx, [edi+2Ch]
		mov	mainthreadid, edx
		mov	dword ptr [ebp-1150h], 10000h
		cmp	dword_5D5610, 0
		jnz	short loc_45658F
		or	dword ptr [ebp-1150h], 100h

loc_45658F:				; CODE XREF: .text:00456583j
		inc	dword_5D551C
		mov	ecx, dword_5D551C
		mov	[ebp-114Ch], ecx
		mov	eax, [ebp-1158h]
		push	eax		; arglist
		push	offset aMainThreadId08 ; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	edx, [ebp-1100h]
		push	edx		; _addr
		call	Message
		add	esp, 0Ch
		jmp	short loc_4565FC
; ---------------------------------------------------------------------------

loc_4565C5:				; CODE XREF: .text:0045653Ej
		mov	dword ptr [ebp-1150h], 100h
		xor	ecx, ecx
		mov	[ebp-114Ch], ecx
		push	1		; ordinal
		call	Findthreadbyordinal
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jz	short loc_4565FC
		cmp	dword ptr [esi+58h], 0
		jnz	short loc_4565FC
		mov	eax, [ebp-1100h]
		xor	edx, edx
		mov	[esi+58h], eax
		mov	[ebp-1100h], edx

loc_4565FC:				; CODE XREF: .text:004565C3j
					; .text:004565E3j ...
		lea	ecx, [ebp-1158h]
		push	ecx		; item
		push	offset thread.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		mov	esi, eax
		cmp	thread.hw, 0
		jz	short loc_45662A
		push	0		; bErase
		push	0		; lpRect
		mov	eax, thread.hw
		push	eax		; hWnd
		call	InvalidateRect

loc_45662A:				; CODE XREF: .text:00456619j
		mov	edx, [ebp-1108h]
		push	edx		; hThread
		call	SuspendThread
		mov	[ebp-2Ch], eax
		mov	ecx, [ebp-1108h]
		push	ecx		; hThread
		call	ResumeThread
		cmp	dword ptr [edi], 2
		jnz	short loc_45664D
		dec	dword ptr [ebp-2Ch]

loc_45664D:				; CODE XREF: .text:00456648j
		cmp	dword ptr [ebp-2Ch], 0
		jle	short loc_456684
		push	offset aMainThreadIsRe ; src
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		xor	ebx, ebx
		cmp	ebx, [ebp-2Ch]
		jge	short loc_456684

loc_456672:				; CODE XREF: .text:00456682j
		mov	eax, [ebp-1108h]
		push	eax		; hThread
		call	ResumeThread
		inc	ebx
		cmp	ebx, [ebp-2Ch]
		jl	short loc_456672

loc_456684:				; CODE XREF: .text:00456651j
					; .text:00456670j
		cmp	ischild, 0
		jz	short loc_4566A7
		mov	skipsystembp, 1
		xor	edx, edx
		mov	dwProcessId, edx
		push	1		; newstatus
		call	Setstatus
		pop	ecx

loc_4566A7:				; CODE XREF: .text:0045668Bj
		push	218h		; n
		push	0		; c
		lea	ecx, [ebp-1370h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	eax, [edi+3Ch]
		mov	[ebp-1370h], eax
		mov	dword ptr [ebp-136Ch], 1
		mov	dword ptr [ebp-1368h], 1010000h
		cmp	skipsystembp, 0
		jnz	short loc_4566ED
		or	dword ptr [ebp-1368h], 100h

loc_4566ED:				; CODE XREF: .text:004566E1j
		cmp	dword ptr [edi+50h], 0
		jz	loc_456788
		push	1		; mode
		push	4		; size
		mov	edx, [edi+50h]
		push	edx		; _addr
		lea	ecx, [ebp-58h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 4
		jnz	short loc_456788
		cmp	dword ptr [ebp-58h], 0
		jz	short loc_456788
		cmp	word ptr [edi+54h], 0
		jz	short loc_456746
		push	1		; mode
		push	206h		; size
		mov	eax, [ebp-58h]
		push	eax		; _addr
		lea	edx, [ebp-1360h]
		push	edx		; buf
		call	Readmemory
		mov	word ptr [ebp-115Ah], 0
		add	esp, 10h
		jmp	short loc_456788
; ---------------------------------------------------------------------------

loc_456746:				; CODE XREF: .text:0045671Fj
		push	1		; mode
		push	104h		; size
		mov	ecx, [ebp-58h]
		push	ecx		; _addr
		lea	eax, [ebp-0A44h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 0
		jbe	short loc_456788
		push	104h		; nw
		lea	edx, [ebp-1360h]
		push	edx		; w
		mov	ecx, [ebp-54h]
		push	ecx		; ns
		lea	eax, [ebp-0A44h]
		push	eax		; s
		call	Asciitounicode
		add	esp, 10h

loc_456788:				; CODE XREF: .text:004566F1j
					; .text:00456712j ...
		cmp	word ptr [ebp-1360h], 0
		jnz	short loc_4567A5
		lea	edx, [ebp-1360h]
		push	edx		; path
		mov	ecx, [edi+30h]
		push	ecx		; hfile
		call	Filenamefromhandle
		add	esp, 8

loc_4567A5:				; CODE XREF: .text:00456790j
		cmp	word ptr [ebp-1360h], 0
		jnz	short loc_4567C5
		lea	eax, [ebp-1360h]
		push	eax
		mov	edx, [ebp-1370h]
		push	edx
		call	loc_44C89C
		add	esp, 8

loc_4567C5:				; CODE XREF: .text:004567ADj
		lea	ecx, [ebp-1360h]
		push	ecx		; s
		mov	eax, process
		push	eax		; int
		call	loc_4C9724
		add	esp, 8
		lea	edx, [ebp-1370h]
		push	edx		; item
		push	offset premod	; sd
		call	Addsorteddata
		add	esp, 8
		mov	[ebp-0ACh], eax
		mov	ecx, [edi+30h]
		push	ecx		; hObject
		call	CloseHandle
		mov	eax, [ebp-50h]
		xor	edx, edx
		mov	g_Ticks, eax
		mov	dword_5E0BBC, edx
		xor	ebx, ebx
		jmp	short loc_45686D
; ---------------------------------------------------------------------------

loc_456811:				; CODE XREF: .text:00456873j
		mov	eax, processid
		push	0
		push	eax
		mov	edx, g_pPluginnotify
		push	0
		push	1
		mov	ecx, [edx+ebx*4]
		call	ecx
		add	esp, 10h
		test	esi, esi
		jz	short loc_456848
		mov	eax, mainthreadid
		push	0
		push	eax
		mov	edx, g_pPluginnotify
		push	esi
		push	3
		mov	ecx, [edx+ebx*4]
		call	ecx
		add	esp, 10h

loc_456848:				; CODE XREF: .text:0045682Dj
		cmp	dword ptr [ebp-0ACh], 0
		jz	short loc_45686C
		push	0
		push	0
		mov	eax, [ebp-0ACh]
		mov	edx, g_pPluginnotify
		push	eax
		push	5
		mov	ecx, [edx+ebx*4]
		call	ecx
		add	esp, 10h

loc_45686C:				; CODE XREF: .text:0045684Fj
		inc	ebx

loc_45686D:				; CODE XREF: .text:0045680Fj
		cmp	ebx, g_nPluginnotify
		jl	short loc_456811
		jmp	loc_4578BB
; ---------------------------------------------------------------------------

loc_45687A:				; CODE XREF: .text:00451822j
					; DATA XREF: .text:off_451829o
		mov	eax, [edi+2Ch]	; jumptable 00451822 case 4
		push	eax		; threadid
		call	Findthread
		mov	esi, eax
		mov	eax, [edi+30h]
		pop	ecx
		mov	[ebp-54h], eax
		xor	ebx, ebx
		jmp	short loc_4568AA
; ---------------------------------------------------------------------------

loc_456890:				; CODE XREF: .text:004568B0j
		mov	eax, [ebp-54h]
		mov	ecx, g_pPluginnotify
		push	eax
		mov	edx, [edi+2Ch]
		push	edx
		push	esi
		push	4
		mov	eax, [ecx+ebx*4]
		call	eax
		add	esp, 10h
		inc	ebx

loc_4568AA:				; CODE XREF: .text:0045688Ej
		cmp	ebx, g_nPluginnotify
		jl	short loc_456890
		test	esi, esi
		jz	short loc_4568C0
		cmp	dword ptr [esi+0Ch], 0
		jz	loc_4569D6

loc_4568C0:				; CODE XREF: .text:004568B4j
		test	esi, esi
		jnz	short loc_4568EC
		mov	edx, [ebp-54h]
		push	edx
		mov	ecx, [edi+2Ch]
		push	ecx
		push	offset aThreadId08xTer ; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-4F0h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	loc_4569C0
; ---------------------------------------------------------------------------

loc_4568EC:				; CODE XREF: .text:004568C2j
		mov	edx, [ebp-54h]
		push	edx
		mov	ecx, [edi+2Ch]
		push	ecx
		mov	eax, [esi+0Ch]
		push	eax
		push	offset aThreadI_Id08xT ; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-4F0h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 14h
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-54h], 80000001h
		jb	short loc_456966
		cmp	dword ptr [ebp-54h], 0C0FFFFFFh
		ja	short loc_456966
		lea	ecx, [ebp-730h]
		push	ecx		; _name
		mov	eax, [ebp-54h]
		push	eax		; value
		push	offset aException_2 ; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_45696B
		lea	edx, [ebp-730h]
		push	edx		; _name
		mov	ecx, [ebp-54h]
		push	ecx		; value
		push	offset aHresult	; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch
		mov	[ebp-8], eax
		jmp	short loc_45696B
; ---------------------------------------------------------------------------

loc_456966:				; CODE XREF: .text:0045691Dj
					; .text:00456926j
		xor	eax, eax
		mov	[ebp-8], eax

loc_45696B:				; CODE XREF: .text:00456947j
					; .text:00456964j
		cmp	dword ptr [ebp-8], 0
		jle	short loc_456995
		lea	edx, [ebp-730h]
		push	edx
		push	offset aS_31	; " (%s)"
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_4569C0
; ---------------------------------------------------------------------------

loc_456995:				; CODE XREF: .text:0045696Fj
		cmp	dword ptr [ebp-54h], 0
		jl	short loc_4569A1
		cmp	dword ptr [ebp-54h], 9
		jle	short loc_4569C0

loc_4569A1:				; CODE XREF: .text:00456999j
		mov	edx, [ebp-54h]
		push	edx
		push	offset aLi__4	; format
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_4569C0:				; CODE XREF: .text:004568E7j
					; .text:00456993j ...
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		push	(offset	aS_9+4)	; format
		push	0		; _addr
		call	Message
		add	esp, 0Ch

loc_4569D6:				; CODE XREF: .text:004568BAj
		push	0		; subaddr
		mov	ecx, [edi+2Ch]
		push	ecx		; _addr
		push	offset thread.sorted ; sd
		call	Deletesorteddata
		add	esp, 0Ch
		call	Listmemory
		mov	dword_586178, 1
		cmp	dword ptr [edi], 2
		jnz	short loc_456A16
		cmp	dword_5C8948, 2
		jnz	short loc_456A16
		push	0		; arglist
		call	loc_4503B8
		pop	ecx
		push	3		; newstatus
		call	Setstatus
		pop	ecx

loc_456A16:				; CODE XREF: .text:004569FBj
					; .text:00456A04j
		xor	ebx, ebx
		jmp	short loc_456A41
; ---------------------------------------------------------------------------

loc_456A1A:				; CODE XREF: .text:00456A47j
		push	ebx		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_456A40
		cmp	dword ptr [esi+6B8h], 0
		jnz	short loc_456A40
		cmp	dword ptr [esi+6C0h], 0
		jz	short loc_456A49

loc_456A40:				; CODE XREF: .text:00456A2Cj
					; .text:00456A35j
		inc	ebx

loc_456A41:				; CODE XREF: .text:00456A18j
		cmp	ebx, thread.sorted.n
		jl	short loc_456A1A

loc_456A49:				; CODE XREF: .text:00456A3Ej
		cmp	ebx, thread.sorted.n
		jge	short loc_456A68
		cmp	dword ptr [edi], 2
		jnz	short loc_456A6D
		cmp	dword_5C8948, 1
		jnz	short loc_456A6D
		cmp	dwProcessId, 0
		jnz	short loc_456A6D

loc_456A68:				; CODE XREF: .text:00456A4Fj
		call	Pauseprocess

loc_456A6D:				; CODE XREF: .text:00456A54j
					; .text:00456A5Dj ...
		cmp	skipsystembp, 0
		jnz	short loc_456A84
		cmp	dword_5CBB6C, 0
		jz	short loc_456A84
		call	Pauseprocess

loc_456A84:				; CODE XREF: .text:00456A74j
					; .text:00456A7Dj
		call	Getcputhreadid
		test	eax, eax
		jz	short loc_456A97
		call	Getcputhreadid
		cmp	eax, [edi+2Ch]
		jnz	short loc_456ABB

loc_456A97:				; CODE XREF: .text:00456A8Bj
		xor	eax, eax
		cmp	dword ptr [edi], 11h
		jz	short loc_456AA3
		add	eax, 2A000h

loc_456AA3:				; CODE XREF: .text:00456A9Cj
		or	eax, 4000h
		push	eax		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_456ABB:				; CODE XREF: .text:00456A95j
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		jmp	loc_4578BB
; ---------------------------------------------------------------------------

loc_456AD1:				; CODE XREF: .text:00451822j
					; DATA XREF: .text:off_451829o
		push	1		; jumptable 00451822 case 5
		call	loc_44FA44
		pop	ecx
		mov	edx, [edi+30h]
		mov	[ebp-54h], edx
		xor	ebx, ebx
		jmp	short loc_456B01
; ---------------------------------------------------------------------------

loc_456AE3:				; CODE XREF: .text:00456B07j
		mov	eax, [ebp-54h]
		mov	edx, processid
		push	eax
		push	edx
		mov	ecx, g_pPluginnotify
		push	0
		push	2
		mov	eax, [ecx+ebx*4]
		call	eax
		add	esp, 10h
		inc	ebx

loc_456B01:				; CODE XREF: .text:00456AE1j
		cmp	ebx, g_nPluginnotify
		jl	short loc_456AE3
		cmp	rundll,	0
		jz	loc_456C94
		cmp	dword ptr [ebp-54h], 1001h
		jnz	loc_456C46
		lea	edx, [ebp-2CF4h]
		push	edx
		call	loc_4CC754
		pop	ecx
		test	eax, eax
		jnz	loc_456C46
		cmp	dword ptr [ebp-2CF4h], 0
		jz	loc_456C46
		mov	ecx, [ebp-2CF4h]
		dec	ecx
		jz	short loc_456B5D
		dec	ecx
		jz	short loc_456B78
		dec	ecx
		jz	loc_456C09
		jmp	loc_456C24
; ---------------------------------------------------------------------------

loc_456B5D:				; CODE XREF: .text:00456B4Cj
		push	offset aLoaddllTermi_4 ; "LOADDLL terminated: Missing DLL _name"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; _addr
		call	Message
		add	esp, 8
		jmp	loc_456D76
; ---------------------------------------------------------------------------

loc_456B78:				; CODE XREF: .text:00456B4Fj
		push	offset aLoaddllTermina ; "LOADDLL terminated: Unable to	load DLL"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; _addr
		call	Message
		add	esp, 8
		cmp	dword ptr [ebp-2CCCh], 0
		jz	loc_456D76
		lea	eax, [ebp-4F0h]
		push	eax		; _name
		mov	edx, [ebp-2CCCh]
		push	edx		; value
		push	offset aErrcode_1 ; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch
		test	eax, eax
		jle	short loc_456BE5
		lea	ecx, [ebp-4F0h]
		push	ecx
		mov	eax, [ebp-2CCCh]
		push	eax		; arglist
		push	offset aLoadlibraryRep ; "  LoadLibrary() reports error	%08X (%s)"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 14h
		jmp	loc_456D76
; ---------------------------------------------------------------------------

loc_456BE5:				; CODE XREF: .text:00456BB8j
		mov	edx, [ebp-2CCCh]
		push	edx		; arglist
		push	offset aLoadlibraryR_1 ; "  LoadLibrary() reports error	%08X"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	loc_456D76
; ---------------------------------------------------------------------------

loc_456C09:				; CODE XREF: .text:00456B52j
		push	offset aLoaddllTermi_0 ; "LOADDLL terminated: Too many parameters"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; _addr
		call	Message
		add	esp, 8
		jmp	loc_456D76
; ---------------------------------------------------------------------------

loc_456C24:				; CODE XREF: .text:00456B58j
		mov	ecx, [ebp-2CF4h]
		push	ecx		; arglist
		push	offset aLoaddllTermi_3 ; "LOADDLL terminated: Error %08X"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; _addr
		call	Message
		add	esp, 0Ch
		jmp	loc_456D76
; ---------------------------------------------------------------------------

loc_456C46:				; CODE XREF: .text:00456B1Dj
					; .text:00456B32j ...
		cmp	dword ptr [ebp-54h], 0
		jl	short loc_456C71
		cmp	dword ptr [ebp-54h], 9
		jg	short loc_456C71
		mov	eax, [ebp-54h]
		push	eax		; arglist
		push	offset aLoaddllTermi_5 ; "LOADDLL terminated, exit code	%X"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; _addr
		call	Message
		add	esp, 0Ch
		jmp	loc_456D76
; ---------------------------------------------------------------------------

loc_456C71:				; CODE XREF: .text:00456C4Aj
					; .text:00456C50j
		mov	edx, [ebp-54h]
		push	edx
		mov	ecx, [ebp-54h]
		push	ecx		; arglist
		push	offset aLoaddllTermi_2 ; "LOADDLL terminated, exit code	%X (%li.)"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; _addr
		call	Message
		add	esp, 10h
		jmp	loc_456D76
; ---------------------------------------------------------------------------

loc_456C94:				; CODE XREF: .text:00456B10j
		mov	eax, [ebp-54h]
		push	eax
		push	offset aProcessTermi_0 ; "Process terminated, exit code	%X"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-4F0h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-54h], 80000001h
		jb	short loc_456D06
		cmp	dword ptr [ebp-54h], 0C0FFFFFFh
		ja	short loc_456D06
		lea	ecx, [ebp-730h]
		push	ecx		; _name
		mov	eax, [ebp-54h]
		push	eax		; value
		push	offset aException_2 ; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_456D0B
		lea	edx, [ebp-730h]
		push	edx		; _name
		mov	ecx, [ebp-54h]
		push	ecx		; value
		push	offset aHresult	; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch
		mov	[ebp-8], eax
		jmp	short loc_456D0B
; ---------------------------------------------------------------------------

loc_456D06:				; CODE XREF: .text:00456CBDj
					; .text:00456CC6j
		xor	eax, eax
		mov	[ebp-8], eax

loc_456D0B:				; CODE XREF: .text:00456CE7j
					; .text:00456D04j
		cmp	dword ptr [ebp-8], 0
		jle	short loc_456D35
		lea	edx, [ebp-730h]
		push	edx
		push	offset aS_31	; " (%s)"
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_456D60
; ---------------------------------------------------------------------------

loc_456D35:				; CODE XREF: .text:00456D0Fj
		cmp	dword ptr [ebp-54h], 0
		jl	short loc_456D41
		cmp	dword ptr [ebp-54h], 9
		jle	short loc_456D60

loc_456D41:				; CODE XREF: .text:00456D39j
		mov	edx, [ebp-54h]
		push	edx
		push	offset aLi__4	; format
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-4F0h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_456D60:				; CODE XREF: .text:00456D33j
					; .text:00456D3Fj
		lea	edx, [ebp-4F0h]
		push	edx		; arglist
		push	(offset	aS_9+4)	; format
		push	0		; _addr
		call	Message
		add	esp, 0Ch

loc_456D76:				; CODE XREF: .text:00456B73j
					; .text:00456B95j ...
		push	13h		; newstatus
		call	Setstatus
		pop	ecx
		call	Listmemory
		push	0		; threadid
		call	GetThreadReg
		pop	ecx
		push	2100Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		mov	ecx, [edi+2Ch]
		push	ecx		; threadid
		call	Setcpu
		add	esp, 18h
		xor	ebx, ebx
		jmp	short loc_456DD9
; ---------------------------------------------------------------------------

loc_456DA8:				; CODE XREF: .text:00456DDFj
		push	ebx		; index
		push	offset module.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-0A4h], eax
		cmp	dword ptr [ebp-0A4h], 0
		jz	short loc_456DD8
		push	0
		push	0
		mov	eax, [ebp-0A4h]
		push	eax
		call	loc_4D6D14
		add	esp, 0Ch

loc_456DD8:				; CODE XREF: .text:00456DC3j
		inc	ebx

loc_456DD9:				; CODE XREF: .text:00456DA6j
		cmp	ebx, module.sorted.n
		jl	short loc_456DA8
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		cmp	dword ptr [edi+88h], 103h
		jnz	short loc_456E08
		mov	dword ptr [edi+88h], 80010001h

loc_456E08:				; CODE XREF: .text:00456DFCj
		mov	eax, 1
		jmp	loc_4578EA
; ---------------------------------------------------------------------------

loc_456E12:				; CODE XREF: .text:00451822j
					; DATA XREF: .text:off_451829o
		push	218h		; jumptable 00451822 case 6
		push	0		; c
		lea	edx, [ebp-1370h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		mov	ecx, [edi+34h]
		mov	[ebp-1370h], ecx
		mov	dword ptr [ebp-136Ch], 1
		mov	dword ptr [ebp-1368h], 1000000h
		cmp	dword_5D5610, 0
		jnz	short loc_456E58
		or	dword ptr [ebp-1368h], 100h

loc_456E58:				; CODE XREF: .text:00456E4Cj
		lea	eax, [ebp-136Ch]
		lea	edx, [ebp-1364h]
		push	eax
		push	edx
		mov	ecx, [ebp-1370h]
		push	ecx
		call	loc_4136A8
		add	esp, 0Ch
		cmp	dword ptr [edi+40h], 0
		jz	loc_456F10
		push	1		; mode
		push	4		; size
		mov	eax, [edi+40h]
		push	eax		; _addr
		lea	edx, [ebp-58h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 4
		jnz	short loc_456F10
		cmp	dword ptr [ebp-58h], 0
		jz	short loc_456F10
		cmp	word ptr [edi+44h], 0
		jz	short loc_456ECE
		push	1		; mode
		push	206h		; size
		mov	ecx, [ebp-58h]
		push	ecx		; _addr
		lea	eax, [ebp-1360h]
		push	eax		; buf
		call	Readmemory
		mov	word ptr [ebp-115Ah], 0
		add	esp, 10h
		jmp	short loc_456F10
; ---------------------------------------------------------------------------

loc_456ECE:				; CODE XREF: .text:00456EA7j
		push	1		; mode
		push	104h		; size
		mov	edx, [ebp-58h]
		push	edx		; _addr
		lea	ecx, [ebp-0A44h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 0
		jbe	short loc_456F10
		push	104h		; nw
		lea	eax, [ebp-1360h]
		push	eax		; w
		mov	edx, [ebp-54h]
		push	edx		; ns
		lea	ecx, [ebp-0A44h]
		push	ecx		; s
		call	Asciitounicode
		add	esp, 10h

loc_456F10:				; CODE XREF: .text:00456E79j
					; .text:00456E9Aj ...
		cmp	word ptr [ebp-1360h], 0
		jnz	short loc_456F2D
		lea	eax, [ebp-1360h]
		push	eax		; path
		mov	edx, [edi+30h]
		push	edx		; hfile
		call	Filenamefromhandle
		add	esp, 8

loc_456F2D:				; CODE XREF: .text:00456F18j
		cmp	word ptr [ebp-1360h], 0
		jnz	short loc_456F4A
		lea	ecx, [ebp-1360h]
		push	ecx
		mov	eax, [edi+34h]
		push	eax
		call	loc_44C89C
		add	esp, 8

loc_456F4A:				; CODE XREF: .text:00456F35j
		mov	edx, [edi+30h]
		push	edx		; hObject
		call	CloseHandle
		cmp	rundll,	0
		jz	loc_456FE8
		cmp	dword_5D3A48, 0
		jnz	short loc_456FE8
		push	offset executable ; s2
		lea	ecx, [ebp-1360h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_456FE8
		or	dword ptr [ebp-1368h], 80000h
		mov	eax, [ebp-1370h]
		mov	dword_5D3A48, eax
		cmp	skipsystembp, 0
		jnz	short loc_456FE8
		cmp	dword_5C894C, 1
		jnz	short loc_456FE8
		cmp	dword_5D3A4C, 0
		jz	short loc_456FE8
		cmp	dword ptr [ebp-1364h], 0
		jz	short loc_456FE8
		push	2000h
		mov	edx, dword_5D3A4C
		push	edx
		call	loc_44F86C
		add	esp, 8
		push	0
		push	0
		push	0
		push	2000h
		mov	ecx, [ebp-1364h]
		push	ecx
		call	loc_44F6D0
		add	esp, 14h

loc_456FE8:				; CODE XREF: .text:00456F5Aj
					; .text:00456F67j ...
		xor	ebx, ebx
		jmp	short loc_457008
; ---------------------------------------------------------------------------

loc_456FEC:				; CODE XREF: .text:0045700Ej
		push	0
		lea	eax, [ebp-1370h]
		mov	edx, g_pPluginnotify
		push	0
		push	eax
		push	5
		mov	ecx, [edx+ebx*4]
		call	ecx
		add	esp, 10h
		inc	ebx

loc_457008:				; CODE XREF: .text:00456FEAj
		cmp	ebx, g_nPluginnotify
		jl	short loc_456FEC
		lea	eax, [ebp-1370h]
		push	eax
		call	loc_416C70
		pop	ecx
		test	eax, eax
		jnz	short loc_457028
		xor	edx, edx
		mov	[ebp-34h], edx
		jmp	short loc_457043
; ---------------------------------------------------------------------------

loc_457028:				; CODE XREF: .text:0045701Fj
		lea	ecx, [ebp-1370h]
		push	ecx		; item
		push	offset premod	; sd
		call	Addsorteddata
		add	esp, 8
		mov	dword ptr [ebp-34h], 1

loc_457043:				; CODE XREF: .text:00457026j
		cmp	skipsystembp, 0
		jnz	short loc_45709C
		cmp	dword ptr [ebp-34h], 0
		jnz	short loc_457079
		cmp	rundll,	0
		jnz	short loc_45709C
		cmp	dword_5C8A98, 0
		jz	short loc_45709C
		push	0		; s2
		lea	eax, [ebp-1360h]
		push	eax		; int
		call	loc_44E678
		add	esp, 8
		test	eax, eax
		jz	short loc_45709C

loc_457079:				; CODE XREF: .text:00457050j
		cmp	dword ptr [ebp-1364h], 0
		jz	short loc_45709C
		push	0
		push	1
		push	0
		push	2000h
		mov	edx, [ebp-1364h]
		push	edx
		call	loc_44F6D0
		add	esp, 14h

loc_45709C:				; CODE XREF: .text:0045704Aj
					; .text:00457059j ...
		call	loc_44F8E8
		jmp	loc_4578BB
; ---------------------------------------------------------------------------

loc_4570A6:				; CODE XREF: .text:00451822j
					; DATA XREF: .text:off_451829o
		mov	ecx, [edi+30h]	; jumptable 00451822 case 7
		mov	[ebp-58h], ecx
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-0A4h], eax
		cmp	dword ptr [ebp-0A4h], 0
		jz	loc_45717B
		push	0
		push	0
		mov	edx, [ebp-0A4h]
		push	edx
		call	loc_4D6D14
		add	esp, 0Ch
		mov	ecx, [ebp-0A4h]
		mov	eax, [ecx]
		mov	[ebp-74h], eax
		mov	edx, [ebp-0A4h]
		mov	ecx, [edx+4]
		mov	[ebp-78h], ecx
		mov	eax, [ebp-0A4h]
		add	eax, 4Ch
		push	eax		; arglist
		push	offset aUnloadS	; "Unload %s"
		call	_T
		pop	ecx
		push	eax		; format
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Message
		add	esp, 0Ch
		mov	ecx, [ebp-0A4h]
		add	ecx, 4Ch
		mov	[ebp-8Ch], ecx
		mov	eax, [ebp-0A4h]
		add	eax, 0Ch
		mov	[ebp-90h], eax
		push	0		; subaddr
		mov	edx, [ebp-58h]
		push	edx		; _addr
		push	offset module.sorted ; sd
		call	Deletesorteddata
		add	esp, 0Ch
		mov	ecx, [ebp-74h]
		add	ecx, [ebp-78h]
		push	ecx		; addr1
		mov	eax, [ebp-74h]
		push	eax		; addr0
		call	Wipebreakpointrange
		add	esp, 8
		cmp	module.hw, 0
		jz	loc_457258
		push	0		; bErase
		push	0		; lpRect
		mov	edx, module.hw
		push	edx		; hWnd
		call	InvalidateRect
		jmp	loc_457258
; ---------------------------------------------------------------------------

loc_45717B:				; CODE XREF: .text:004570C3j
		push	0		; subaddr
		mov	ecx, [ebp-58h]
		push	ecx		; _addr
		push	offset premod	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-0ACh], eax
		test	eax, eax
		jz	loc_45722C
		mov	edx, [ebp-0ACh]
		cmp	word ptr [edx+10h], 0
		jnz	short loc_4571B6
		push	offset aNameUnknown ; "(_name unknown)"
		call	_T
		pop	ecx
		jmp	short loc_4571BF
; ---------------------------------------------------------------------------

loc_4571B6:				; CODE XREF: .text:004571A7j
		mov	eax, [ebp-0ACh]
		add	eax, 10h

loc_4571BF:				; CODE XREF: .text:004571B4j
		push	eax		; arglist
		push	offset aModuleSFailedT ; "Module %s - failed to	initialize"
		call	_T
		pop	ecx
		push	eax		; format
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Message
		mov	ecx, [ebp-0ACh]
		mov	edx, [ebp-0ACh]
		add	esp, 0Ch
		mov	eax, [ecx]
		add	eax, [edx+4]
		push	eax		; addr1
		mov	ecx, [ebp-0ACh]
		mov	eax, [ecx]
		push	eax		; addr0
		call	Wipebreakpointrange
		add	esp, 8
		mov	edx, [ebp-0ACh]
		add	edx, 10h
		mov	[ebp-8Ch], edx
		xor	ecx, ecx
		mov	[ebp-90h], ecx
		push	0		; subaddr
		mov	eax, [ebp-0ACh]
		mov	edx, [eax]
		push	edx		; _addr
		push	offset premod	; sd
		call	Deletesorteddata
		add	esp, 0Ch
		jmp	short loc_457258
; ---------------------------------------------------------------------------

loc_45722C:				; CODE XREF: .text:00457196j
		mov	ecx, [ebp-58h]
		push	ecx		; arglist
		push	offset aUnloadHiddenMo ; "Unload hidden	module %08X"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Message
		add	esp, 0Ch
		xor	edx, edx
		mov	[ebp-8Ch], edx
		xor	ecx, ecx
		mov	[ebp-90h], ecx

loc_457258:				; CODE XREF: .text:00457160j
					; .text:00457176j ...
		cmp	skipsystembp, 0
		jnz	short loc_457289
		cmp	dword_5C8A9C, 0
		jz	short loc_457289
		mov	eax, [ebp-90h]
		push	eax		; s2
		mov	edx, [ebp-8Ch]
		push	edx		; int
		call	loc_44E678
		add	esp, 8
		test	eax, eax
		jz	short loc_457289
		call	Pauseprocess

loc_457289:				; CODE XREF: .text:0045725Fj
					; .text:00457268j ...
		call	loc_44F8E8
		jmp	loc_4578BB
; ---------------------------------------------------------------------------

loc_457293:				; CODE XREF: .text:00451822j
					; DATA XREF: .text:off_451829o
		xor	ecx, ecx	; jumptable 00451822 case 8
		mov	[ebp-58h], ecx
		call	Listmemory
		mov	eax, [edi+2Ch]
		push	eax		; threadid
		call	Findthread
		pop	ecx		; int
		mov	esi, eax
		test	esi, esi
		jz	loc_4573BB
		push	esi		; a1
		call	loc_44BF78
		pop	ecx
		mov	[ebp-0B0h], eax
		cmp	dword ptr [ebp-0B0h], 0
		jz	loc_4573BB
		mov	eax, [ebp-0B0h]
		mov	edx, [eax+8]
		mov	[ebp-30F8h], edx
		mov	ecx, [ebp-0B0h]
		mov	eax, [ecx+1Ch]
		mov	[ebp-30F4h], eax
		mov	edx, [ebp-0B0h]
		mov	ecx, [edx+20h]
		mov	[ebp-30F0h], ecx
		mov	dword ptr [ebp-30ECh], 1
		mov	eax, [esi+50h]
		mov	[ebp-30E8h], eax
		push	esi
		push	edi
		add	esi, 5Ch
		lea	edi, [ebp-30E4h]
		mov	ecx, 0B3h
		rep movsd
		pop	edi
		pop	esi
		mov	dword ptr [ebp-2E18h], 1
		xor	eax, eax
		mov	[ebp-4], eax

loc_45732E:				; CODE XREF: .text:004573B5j
		mov	edx, [esi+70Ch]
		sub	edx, [esi+710h]
		push	edx		; size
		mov	ecx, [esi+710h]
		push	ecx		; base
		lea	eax, [ebp-30F8h]
		push	eax		; pf
		call	Findretaddrdata
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4573BB
		mov	edx, [ebp-2E00h]
		push	edx		; _addr
		call	Followcall
		pop	ecx
		mov	[ebp-54h], eax
		cmp	dword ptr [ebp-54h], 0
		jz	short loc_45738A
		mov	ecx, [ebp-54h]
		cmp	ecx, dword_5D5544
		jz	short loc_457381
		mov	eax, [ebp-54h]
		cmp	eax, dword_5D5548
		jnz	short loc_45738A

loc_457381:				; CODE XREF: .text:00457374j
		mov	edx, [ebp-2E10h]
		mov	[ebp-58h], edx

loc_45738A:				; CODE XREF: .text:00457369j
					; .text:0045737Fj
		mov	ecx, [ebp-2E10h] ; int
		mov	[ebp-30F8h], ecx
		mov	eax, [ebp-2E0Ch] ; int
		mov	[ebp-30F4h], eax
		mov	edx, [ebp-2E08h] ; int
		mov	[ebp-30F0h], edx
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 5
		jl	loc_45732E

loc_4573BB:				; CODE XREF: .text:004572ABj
					; .text:004572C5j ...
		movzx	ebx, word ptr [edi+36h]
		test	ebx, ebx
		jg	short loc_4573E0
		push	offset aDebugStringInv ; "Debug	string (invalid	length)"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Message
		add	esp, 8
		jmp	loc_4578BB
; ---------------------------------------------------------------------------

loc_4573E0:				; CODE XREF: .text:004573C1j
		cmp	ebx, 1000h
		jle	short loc_4573ED
		mov	ebx, 1000h

loc_4573ED:				; CODE XREF: .text:004573E6j
		cmp	word ptr [edi+34h], 0
		jz	loc_4575F6
		push	3		; flags
		lea	eax, [ebx+1]
		add	eax, eax	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_45742B
		push	offset aDebugStringUna ; "Debug	string (unable to get text)"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Message
		add	esp, 8
		jmp	loc_4578BB
; ---------------------------------------------------------------------------

loc_45742B:				; CODE XREF: .text:0045740Cj
		push	5		; mode
		add	ebx, ebx
		push	ebx		; size
		mov	edx, [edi+30h]
		push	edx		; _addr
		push	esi		; buf
		call	Readmemory
		shr	eax, 1
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_457469
		push	offset aDebugStringUna ; "Debug	string (unable to get text)"
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp-58h]
		push	ecx		; _addr
		call	Message
		add	esp, 8
		push	esi		; data
		call	Memfree
		pop	ecx
		jmp	loc_4578BB
; ---------------------------------------------------------------------------

loc_457469:				; CODE XREF: .text:00457443j
		mov	word ptr [esi+ebx*2], 0
		xor	eax, eax
		mov	[ebp-4], eax
		push	offset aDebugString ; "Debug string"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-4F0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-8], eax
		mov	dword ptr [ebp-10h], 1
		jmp	loc_4575D7
; ---------------------------------------------------------------------------

loc_4574A3:				; CODE XREF: .text:004575E4j
		push	(offset	aMem+6)	; src
		mov	ecx, 100h
		sub	ecx, [ebp-8]
		push	ecx		; n
		mov	eax, [ebp-8]
		add	eax, eax
		lea	edx, [ebp-4F0h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	eax, [ebp-8]
		mov	[ebp-0Ch], eax
		mov	ecx, [ebp-0Ch]
		lea	eax, [ebp+ecx*2-4F0h]
		mov	[ebp-0CCh], eax

loc_4574DD:				; CODE XREF: .text:00457555j
		mov	edx, [ebp-4]
		cmp	word ptr [esi+edx*2], 0
		jz	short loc_457557
		mov	ecx, [ebp-4]
		cmp	word ptr [esi+ecx*2], 0Ah
		jnz	short loc_457503
		inc	dword ptr [ebp-4]
		mov	eax, [ebp-4]
		cmp	word ptr [esi+eax*2], 0Dh
		jnz	short loc_457557
		inc	dword ptr [ebp-4]
		jmp	short loc_457557
; ---------------------------------------------------------------------------

loc_457503:				; CODE XREF: .text:004574EFj
		mov	edx, [ebp-4]
		cmp	word ptr [esi+edx*2], 0Dh
		jnz	short loc_45751F
		inc	dword ptr [ebp-4]
		mov	ecx, [ebp-4]
		cmp	word ptr [esi+ecx*2], 0Ah
		jnz	short loc_457557
		inc	dword ptr [ebp-4]
		jmp	short loc_457557
; ---------------------------------------------------------------------------

loc_45751F:				; CODE XREF: .text:0045750Bj
		cmp	dword ptr [ebp-0Ch], 100h
		jge	short loc_457552
		mov	eax, [ebp-4]
		cmp	word ptr [esi+eax*2], 9
		jnz	short loc_457538
		mov	dx, 20h
		jmp	short loc_45753F
; ---------------------------------------------------------------------------

loc_457538:				; CODE XREF: .text:00457530j
		mov	ecx, [ebp-4]
		mov	dx, [esi+ecx*2]

loc_45753F:				; CODE XREF: .text:00457536j
		mov	eax, [ebp-0CCh]
		mov	[eax], dx
		inc	dword ptr [ebp-0Ch]
		add	dword ptr [ebp-0CCh], 2

loc_457552:				; CODE XREF: .text:00457526j
		inc	dword ptr [ebp-4]
		jmp	short loc_4574DD
; ---------------------------------------------------------------------------

loc_457557:				; CODE XREF: .text:004574E5j
					; .text:004574FCj ...
		mov	ecx, [ebp-0Ch]
		mov	word ptr [ebp+ecx*2-4F0h], 0
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_457589
		lea	eax, [ebp-4F0h]
		push	eax		; arglist
		push	(offset	aS_9+4)	; format
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Message
		add	esp, 0Ch
		xor	ecx, ecx
		mov	[ebp-10h], ecx
		jmp	short loc_4575A1
; ---------------------------------------------------------------------------

loc_457589:				; CODE XREF: .text:00457568j
		lea	eax, [ebp-4F0h]
		push	eax		; arglist
		push	(offset	aS_9+4)	; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_4575A1:				; CODE XREF: .text:00457587j
		xor	edx, edx
		lea	ecx, [ebp-4F0h]
		mov	[ebp-0Ch], edx
		mov	[ebp-0CCh], ecx
		mov	eax, [ebp-0Ch]
		cmp	eax, [ebp-8]
		jge	short loc_4575D7

loc_4575BA:				; CODE XREF: .text:004575D5j
		mov	edx, [ebp-0CCh]
		mov	word ptr [edx],	20h
		inc	dword ptr [ebp-0Ch]
		add	dword ptr [ebp-0CCh], 2
		mov	ecx, [ebp-0Ch]
		cmp	ecx, [ebp-8]
		jl	short loc_4575BA

loc_4575D7:				; CODE XREF: .text:0045749Ej
					; .text:004575B8j
		cmp	ebx, [ebp-4]
		jle	short loc_4575EA
		mov	eax, [ebp-4]
		cmp	word ptr [esi+eax*2], 0
		jnz	loc_4574A3

loc_4575EA:				; CODE XREF: .text:004575DAj
		push	esi		; data
		call	Memfree
		pop	ecx
		jmp	loc_457807
; ---------------------------------------------------------------------------

loc_4575F6:				; CODE XREF: .text:004573F2j
		push	3		; flags
		lea	edx, [ebx+1]	; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_457627
		push	offset aDebugStringUna ; "Debug	string (unable to get text)"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp-58h]
		push	eax		; _addr
		call	Message
		add	esp, 8
		jmp	loc_4578BB
; ---------------------------------------------------------------------------

loc_457627:				; CODE XREF: .text:00457608j
		push	5		; mode
		push	ebx		; size
		mov	edx, [edi+30h]
		push	edx		; _addr
		push	esi		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_457661
		push	offset aDebugStringUna ; "Debug	string (unable to get text)"
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp-58h]
		push	ecx		; _addr
		call	Message
		add	esp, 8
		push	esi		; data
		call	Memfree
		pop	ecx
		jmp	loc_4578BB
; ---------------------------------------------------------------------------

loc_457661:				; CODE XREF: .text:0045763Bj
		mov	byte ptr [esi+ebx], 0
		push	offset aDebugString ; "Debug string"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-4F0h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-8], eax
		mov	dword ptr [ebp-10h], 1
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	loc_4577F3
; ---------------------------------------------------------------------------

loc_457699:				; CODE XREF: .text:004577FAj
		push	(offset	aMem+6)	; src
		mov	ecx, 100h
		sub	ecx, [ebp-8]
		push	ecx		; n
		mov	eax, [ebp-8]
		add	eax, eax
		lea	edx, [ebp-4F0h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	eax, [ebp-8]
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		lea	eax, [ebp-0A44h]
		mov	[ebp-0D0h], eax
		xor	ebx, ebx

loc_4576D1:				; CODE XREF: .text:0045774Fj
		mov	edx, [ebp-4]
		cmp	byte ptr [esi+edx], 0
		jz	short loc_457751
		mov	ecx, [ebp-4]
		xor	eax, eax
		mov	al, [esi+ecx]
		cmp	eax, 0Ah
		jnz	short loc_4576FC
		inc	dword ptr [ebp-4]
		mov	edx, [ebp-4]
		xor	ecx, ecx
		mov	cl, [esi+edx]
		cmp	ecx, 0Dh
		jnz	short loc_457751
		inc	dword ptr [ebp-4]
		jmp	short loc_457751
; ---------------------------------------------------------------------------

loc_4576FC:				; CODE XREF: .text:004576E5j
		mov	eax, [ebp-4]
		xor	edx, edx
		mov	dl, [esi+eax]
		cmp	edx, 0Dh
		jnz	short loc_45771E
		inc	dword ptr [ebp-4]
		mov	ecx, [ebp-4]
		xor	eax, eax
		mov	al, [esi+ecx]
		cmp	eax, 0Ah
		jnz	short loc_457751
		inc	dword ptr [ebp-4]
		jmp	short loc_457751
; ---------------------------------------------------------------------------

loc_45771E:				; CODE XREF: .text:00457707j
		cmp	ebx, 0FFh
		jge	short loc_45774C
		mov	edx, [ebp-4]
		xor	ecx, ecx
		mov	cl, [esi+edx]
		cmp	ecx, 9
		jnz	short loc_457737
		mov	al, 20h
		jmp	short loc_45773D
; ---------------------------------------------------------------------------

loc_457737:				; CODE XREF: .text:00457731j
		mov	edx, [ebp-4]
		mov	al, [esi+edx]

loc_45773D:				; CODE XREF: .text:00457735j
		mov	edx, [ebp-0D0h]
		mov	[edx], al
		inc	ebx
		inc	dword ptr [ebp-0D0h]

loc_45774C:				; CODE XREF: .text:00457724j
		inc	dword ptr [ebp-4]
		jmp	short loc_4576D1
; ---------------------------------------------------------------------------

loc_457751:				; CODE XREF: .text:004576D8j
					; .text:004576F5j ...
		mov	byte ptr [ebp+ebx-0A44h], 0
		mov	ecx, 100h
		lea	edx, [ebp-4F0h]
		sub	ecx, [ebp-0Ch]
		push	ecx		; nw
		lea	ecx, [ebp-0A44h]
		mov	eax, [ebp-0Ch]
		add	eax, eax
		add	eax, edx
		push	eax		; w
		push	ebx		; nt
		push	ecx		; t
		call	Utftounicode
		add	esp, 10h
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4577A5
		lea	eax, [ebp-4F0h]
		push	eax		; arglist
		push	(offset	aS_9+4)	; format
		mov	edx, [ebp-58h]
		push	edx		; _addr
		call	Message
		add	esp, 0Ch
		xor	ecx, ecx
		mov	[ebp-10h], ecx
		jmp	short loc_4577BD
; ---------------------------------------------------------------------------

loc_4577A5:				; CODE XREF: .text:00457784j
		lea	eax, [ebp-4F0h]
		push	eax		; arglist
		push	(offset	aS_9+4)	; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_4577BD:				; CODE XREF: .text:004577A3j
		xor	edx, edx
		lea	ecx, [ebp-4F0h]
		mov	[ebp-0Ch], edx
		mov	[ebp-0D0h], ecx
		mov	eax, [ebp-0Ch]
		cmp	eax, [ebp-8]
		jge	short loc_4577F3

loc_4577D6:				; CODE XREF: .text:004577F1j
		mov	edx, [ebp-0D0h]
		mov	word ptr [edx],	20h
		inc	dword ptr [ebp-0Ch]
		add	dword ptr [ebp-0D0h], 2
		mov	ecx, [ebp-0Ch]
		cmp	ecx, [ebp-8]
		jl	short loc_4577D6

loc_4577F3:				; CODE XREF: .text:00457694j
					; .text:004577D4j
		mov	eax, [ebp-4]
		cmp	byte ptr [esi+eax], 0
		jnz	loc_457699
		push	esi		; data
		call	Memfree
		pop	ecx

loc_457807:				; CODE XREF: .text:004575F1j
		cmp	skipsystembp, 0
		jnz	short loc_457823
		cmp	dword_5CBB64, 0
		jz	short loc_457823
		call	Pauseprocess
		jmp	loc_4578BB
; ---------------------------------------------------------------------------

loc_457823:				; CODE XREF: .text:0045780Ej
					; .text:00457817j
		mov	edx, [edi+2Ch]
		push	edx		; threadid
		call	Findthread
		pop	ecx		; int
		mov	esi, eax
		test	esi, esi
		jz	loc_4578BB
		cmp	dword ptr [esi+6C4h], 0
		jz	short loc_4578BB
		push	esi		; a1
		call	loc_44BF78
		pop	ecx
		mov	[ebp-0B0h], eax
		cmp	dword ptr [ebp-0B0h], 0
		jz	short loc_4578BB
		mov	eax, [ebp-0B0h]
		test	byte ptr [eax+2Dh], 1
		jnz	short loc_4578BB
		mov	edx, [ebp-0B0h]
		or	dword ptr [edx+2Ch], 100h
		mov	ecx, [ebp-0B0h]
		or	dword ptr [ecx], 1
		push	esi
		call	loc_44C4E8
		pop	ecx
		jmp	short loc_4578BB
; ---------------------------------------------------------------------------

loc_457881:				; CODE XREF: .text:00451822j
					; DATA XREF: .text:off_451829o
		mov	eax, [edi+34h]	; jumptable 00451822 case 9
		push	eax
		mov	edx, [edi+30h]
		push	edx		; arglist
		push	offset aSystemDebuggin ; "System debugging error (RIP event) %08l"...
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; _addr
		call	Message
		add	esp, 10h
		jmp	short loc_4578BB
; ---------------------------------------------------------------------------

loc_4578A1:				; CODE XREF: .text:0045181Cj
					; .text:00451822j
					; DATA XREF: ...
		mov	ecx, [edi+24h]	; jumptable 00451822 default case
		push	ecx		; arglist
		push	offset aUnknownDebuggi ; "Unknown debugging event %08lX"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; _addr
		call	Message
		add	esp, 0Ch

loc_4578BB:				; CODE XREF: .text:00456464j
					; .text:00456875j ...
		cmp	dword ptr [edi+88h], 103h
		jnz	short loc_4578D3
		mov	dword ptr [edi+88h], 10002h
		jmp	short loc_4578E5
; ---------------------------------------------------------------------------

loc_4578D3:				; CODE XREF: .text:004578C5j
		push	10002h		; dwContinueStatus
		mov	eax, [edi+2Ch]
		push	eax		; dwThreadId
		mov	edx, [edi+28h]
		push	edx		; dwProcessId
		call	ContinueDebugEvent

loc_4578E5:				; CODE XREF: .text:004578D1j
		mov	eax, 1

loc_4578EA:				; CODE XREF: .text:004513CAj
					; .text:004514EDj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
