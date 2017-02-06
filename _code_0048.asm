.code

; int __cdecl loc_44EE10(int, int, wchar_t *buffer)
loc_44EE10:				; CODE XREF: .text:004528E8p
					; .text:00452E0Dp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFF10h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+8]
		push	esi		; _addr
		call	Findmodule
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_44EE44
		push	0		; subaddr
		push	esi		; _addr
		push	offset premod	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-4], eax
		jmp	short loc_44EE49
; ---------------------------------------------------------------------------

loc_44EE44:				; CODE XREF: .text:0044EE2Dj
		xor	eax, eax
		mov	[ebp-4], eax

loc_44EE49:				; CODE XREF: .text:0044EE42j
		test	ebx, ebx
		jz	short loc_44EE7A
		test	byte ptr [ebx+0Ah], 1
		jz	short loc_44EE7A
		cmp	esi, [ebx+468h]
		jnz	short loc_44EE7A
		push	offset aWinmainOfMainM ; "WinMain() of main module"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_44F3B8
; ---------------------------------------------------------------------------

loc_44EE7A:				; CODE XREF: .text:0044EE4Bj
					; .text:0044EE51j ...
		test	ebx, ebx
		jz	short loc_44EEAB
		test	byte ptr [ebx+0Ah], 1
		jz	short loc_44EEAB
		cmp	esi, [ebx+49Ch]
		jnz	short loc_44EEAB
		push	offset aFirstTlsCallba ; "First	TLS callback of	main module"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_44F3B8
; ---------------------------------------------------------------------------

loc_44EEAB:				; CODE XREF: .text:0044EE7Cj
					; .text:0044EE82j ...
		test	ebx, ebx
		jz	short loc_44EEF4
		test	byte ptr [ebx+0Ah], 1
		jz	short loc_44EEF4
		cmp	esi, [ebx+460h]
		jnz	short loc_44EEF4
		cmp	esi, [ebx+8D4h]
		jb	short loc_44EEF4
		mov	edx, [ebx+8D4h]
		add	edx, [ebx+8D8h]
		cmp	esi, edx
		jnb	short loc_44EEF4
		push	offset aEntryPointOfSe ; "Entry	point of self-extractor"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_44F3B8
; ---------------------------------------------------------------------------

loc_44EEF4:				; CODE XREF: .text:0044EEADj
					; .text:0044EEB3j ...
		test	ebx, ebx
		jz	short loc_44EF2E
		test	byte ptr [ebx+0Ah], 1
		jz	short loc_44EF2E
		cmp	esi, [ebx+460h]
		jnz	short loc_44EF2E
		cmp	rundll,	0
		jz	short loc_44EF2E
		push	offset aEntryPointOf_0 ; "Entry	point of LOADDLL.EXE"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_44F3B8
; ---------------------------------------------------------------------------

loc_44EF2E:				; CODE XREF: .text:0044EEF6j
					; .text:0044EEFCj ...
		test	ebx, ebx
		jz	loc_44EFB8
		test	byte ptr [ebx+0Ah], 1
		jz	short loc_44EFB8
		cmp	esi, dword_5D3A4C
		jnz	short loc_44EFB8
		cmp	rundll,	0
		jz	short loc_44EFB8
		push	offset aDllLoaded ; "DLL loaded"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebp-0E4h]
		push	ecx
		call	loc_4CC754
		pop	ecx
		test	eax, eax
		jnz	short loc_44EF9C
		mov	eax, [ebp-0D8h]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_44EF90
		or	dword ptr [eax+8], 80000h

loc_44EF90:				; CODE XREF: .text:0044EF87j
		mov	edx, [ebp-0D8h]
		mov	dword_5D3A48, edx

loc_44EF9C:				; CODE XREF: .text:0044EF76j
		cmp	dword_5C894C, 3
		jnz	loc_44F3B8
		push	3		; newstatus
		call	Setstatus
		pop	ecx
		xor	eax, eax
		jmp	loc_44F3BD
; ---------------------------------------------------------------------------

loc_44EFB8:				; CODE XREF: .text:0044EF30j
					; .text:0044EF3Aj ...
		test	ebx, ebx
		jz	loc_44F121
		test	byte ptr [ebx+0Ah], 1
		jz	loc_44F121
		cmp	esi, [ebx+460h]
		jnz	loc_44F121
		push	offset aEntryPointOf_1 ; "Entry	point of main module"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	dword_5CBBB4, 0
		jz	loc_44F3B8
		mov	edx, [ebx+8]
		and	edx, 4060000h
		cmp	edx, 20000h
		jnz	loc_44F3B8
		push	1		; force
		push	ebx		; pm
		call	Backupusercode
		add	esp, 8
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	ecx, [ebx+458h]
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		or	eax, 0FFFFFFFFh
		cmp	dword_5CBBBC, 0
		jz	short loc_44F08D
		cmp	dword ptr [ebx+464h], 0
		jz	short loc_44F08D
		mov	edx, [ebx+464h]
		cmp	edx, [ebx+460h]
		jz	short loc_44F08D
		push	3802000h	; type
		call	Findfreehardbreakslot
		pop	ecx
		test	eax, eax
		jl	short loc_44F08D
		push	0		; exprtype
		push	0		; expression
		push	0		; condition
		push	0		; actions
		push	0		; count
		push	0		; limit
		mov	ecx, [ebx+464h]
		push	ecx		; _addr
		push	0		; fnindex
		push	3802000h	; type
		push	1		; size
		push	eax		; index
		call	Sethardbreakpoint
		add	esp, 2Ch

loc_44F08D:				; CODE XREF: .text:0044F040j
					; .text:0044F049j ...
		test	eax, eax
		jl	short loc_44F09B
		push	0Dh		; newstatus
		call	Setstatus
		pop	ecx
		jmp	short loc_44F102
; ---------------------------------------------------------------------------

loc_44F09B:				; CODE XREF: .text:0044F08Fj
		cmp	dword_5CBBB8, 0
		jnz	short loc_44F0AE
		push	0Bh		; newstatus
		call	Setstatus
		pop	ecx
		jmp	short loc_44F102
; ---------------------------------------------------------------------------

loc_44F0AE:				; CODE XREF: .text:0044F0A2j
		mov	dword_5CBB98, 1
		xor	esi, esi
		jmp	short loc_44F0F2
; ---------------------------------------------------------------------------

loc_44F0BC:				; CODE XREF: .text:0044F0F8j
		push	esi		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_44F0F1
		cmp	dword ptr [eax+4ECh], 0
		jz	short loc_44F0F1
		lea	edx, [eax+328h]
		push	edx		; int
		push	0		; int
		push	0		; src
		mov	eax, [eax+330h]
		push	eax		; int
		call	loc_44D6A0
		add	esp, 10h

loc_44F0F1:				; CODE XREF: .text:0044F0CCj
					; .text:0044F0D5j
		inc	esi

loc_44F0F2:				; CODE XREF: .text:0044F0BAj
		cmp	esi, thread.sorted.n
		jl	short loc_44F0BC
		push	0Ch		; newstatus
		call	Setstatus
		pop	ecx

loc_44F102:				; CODE XREF: .text:0044F099j
					; .text:0044F0ACj
		add	ebx, 0Ch
		push	ebx		; arglist
		push	offset aSearchingForTh ; "Searching for	the SFX	entry point of mo"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Info
		add	esp, 8
		xor	eax, eax
		jmp	loc_44F3BD
; ---------------------------------------------------------------------------

loc_44F121:				; CODE XREF: .text:0044EFBAj
					; .text:0044EFC4j ...
		test	ebx, ebx
		jz	loc_44F1AE
		cmp	esi, [ebx+460h]
		jnz	short loc_44F1AE
		cmp	rundll,	0
		jnz	short loc_44F175
		cmp	dword_5C8A98, 0
		jz	short loc_44F175
		lea	edx, [ebx+0Ch]
		push	edx		; s2
		lea	ecx, [ebx+4Ch]
		push	ecx		; int
		call	loc_44E678
		add	esp, 8
		test	eax, eax
		jz	short loc_44F175
		add	ebx, 0Ch
		push	ebx
		push	offset aEntryPointOfMo ; "Entry	point of module	'%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	edi		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_44F3B8
; ---------------------------------------------------------------------------

loc_44F175:				; CODE XREF: .text:0044F138j
					; .text:0044F141j ...
		cmp	rundll,	0
		jz	short loc_44F1A7
		test	byte ptr [ebx+0Ah], 8
		jz	short loc_44F1A7
		cmp	dword_5C894C, 1
		jnz	short loc_44F1A7
		push	offset aEntryPointOfDl ; "Entry	point of DLL"
		call	_T
		pop	ecx
		push	eax		; format
		push	edi		; buffer
		call	_swprintf
		add	esp, 8
		jmp	loc_44F3B8
; ---------------------------------------------------------------------------

loc_44F1A7:				; CODE XREF: .text:0044F17Cj
					; .text:0044F182j ...
		xor	eax, eax
		jmp	loc_44F3BD
; ---------------------------------------------------------------------------

loc_44F1AE:				; CODE XREF: .text:0044F123j
					; .text:0044F12Fj
		cmp	dword ptr [ebp-4], 0
		jz	loc_44F25A
		mov	edx, [ebp-4]
		cmp	esi, [edx+0Ch]
		jnz	loc_44F25A
		mov	ecx, [ebp-4]
		add	ecx, 10h
		push	ecx		; path
		lea	eax, [ebp-44h]
		push	eax		; int
		call	loc_412FF4
		add	esp, 8
		cmp	rundll,	0
		jnz	short loc_44F21E
		cmp	dword_5C8A98, 0
		jz	short loc_44F21E
		lea	edx, [ebp-44h]
		push	edx		; s2
		mov	ecx, [ebp-4]
		add	ecx, 10h
		push	ecx		; int
		call	loc_44E678
		add	esp, 8
		test	eax, eax
		jz	short loc_44F21E
		lea	eax, [ebp-44h]
		push	eax
		push	offset aEntryPointOfMo ; "Entry	point of module	'%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	edi		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	loc_44F3B8
; ---------------------------------------------------------------------------

loc_44F21E:				; CODE XREF: .text:0044F1DEj
					; .text:0044F1E7j ...
		cmp	rundll,	0
		jz	short loc_44F253
		mov	edx, [ebp-4]
		test	byte ptr [edx+0Ah], 8
		jz	short loc_44F253
		cmp	dword_5C894C, 1
		jnz	short loc_44F253
		push	offset aEntryPointOfDl ; "Entry	point of DLL"
		call	_T
		pop	ecx
		push	eax		; format
		push	edi		; buffer
		call	_swprintf
		add	esp, 8
		jmp	loc_44F3B8
; ---------------------------------------------------------------------------

loc_44F253:				; CODE XREF: .text:0044F225j
					; .text:0044F22Ej ...
		xor	eax, eax
		jmp	loc_44F3BD
; ---------------------------------------------------------------------------

loc_44F25A:				; CODE XREF: .text:0044F1B2j
					; .text:0044F1BEj
		test	ebx, ebx
		jz	loc_44F32A
		cmp	esi, [ebx+464h]
		jnz	loc_44F32A
		test	byte ptr [ebx+0Ah], 4
		jnz	loc_44F32A
		push	offset aKnownEntryPoin ; "Known	entry point of packed file"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		or	dword ptr [ebx+8], 40000h
		push	1		; force
		push	ebx		; pm
		call	Backupusercode
		add	esp, 8
		push	0
		push	ebx
		call	loc_4AB264
		add	esp, 8
		mov	eax, [ebx+8]
		test	eax, 800000h
		jnz	short loc_44F2E4
		mov	edx, [ebx]
		mov	[ebp-0F0h], edx
		mov	ecx, [ebx+4]
		mov	[ebp-0ECh], ecx
		mov	[ebp-0E8h], eax
		lea	eax, [ebp-0F0h]
		push	eax		; item
		push	offset aqueue	; sd
		call	Addsorteddata
		add	esp, 8

loc_44F2E4:				; CODE XREF: .text:0044F2B7j
		push	0		; int
		call	loc_46FADC
		pop	ecx
		cmp	dword_5C8944, 2
		jz	short loc_44F319
		cmp	dword_5C8944, 1
		jnz	short loc_44F307
		cmp	dword ptr [ebx+49Ch], 0
		jz	short loc_44F319

loc_44F307:				; CODE XREF: .text:0044F2FCj
		cmp	dword_5C8944, 3
		jnz	short loc_44F323
		cmp	dword ptr [ebx+468h], 0
		jnz	short loc_44F323

loc_44F319:				; CODE XREF: .text:0044F2F3j
					; .text:0044F305j
		mov	eax, 1
		jmp	loc_44F3BD
; ---------------------------------------------------------------------------

loc_44F323:				; CODE XREF: .text:0044F30Ej
					; .text:0044F317j
		xor	eax, eax
		jmp	loc_44F3BD
; ---------------------------------------------------------------------------

loc_44F32A:				; CODE XREF: .text:0044F25Cj
					; .text:0044F268j ...
		cmp	esi, corexemain
		jnz	short loc_44F349
		push	offset a_netStartupEnt ; ".NET startup entry point"
		call	_T
		pop	ecx
		push	eax		; format
		push	edi		; buffer
		call	_swprintf
		add	esp, 8
		jmp	short loc_44F3B8
; ---------------------------------------------------------------------------

loc_44F349:				; CODE XREF: .text:0044F330j
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_44F374
		mov	edx, [ebp+0Ch]
		cmp	esi, [edx+58h]
		jnz	short loc_44F374
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx]
		push	eax
		push	offset aEntryPointOfTh ; "Entry	point of thread	%08X"
		call	_T
		pop	ecx
		push	eax		; format
		push	edi		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_44F3B8
; ---------------------------------------------------------------------------

loc_44F374:				; CODE XREF: .text:0044F34Dj
					; .text:0044F355j
		call	Findmainmodule
		mov	ebx, eax
		test	eax, eax
		jz	short loc_44F39E
		cmp	esi, [ebx+4A0h]
		jnz	short loc_44F39E
		push	offset a_netEntryPoint ; ".NET entry point"
		call	_T
		pop	ecx
		push	eax		; format
		push	edi		; buffer
		call	_swprintf
		add	esp, 8
		jmp	short loc_44F3B8
; ---------------------------------------------------------------------------

loc_44F39E:				; CODE XREF: .text:0044F37Dj
					; .text:0044F385j
		push	offset aExecutedToSele ; "Executed to selection"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_44F3B8:				; CODE XREF: .text:0044EE75j
					; .text:0044EEA6j ...
		mov	eax, 1

loc_44F3BD:				; CODE XREF: .text:0044EFB3j
					; .text:0044F11Cj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
		
; ---------------------------------------------------------------------------
; Exported entry 193. _Suspendallthreads
; Exported entry 733. Suspendallthreads

; int __cdecl Suspendallthreads()
		public Suspendallthreads
Suspendallthreads:			; CODE XREF: .text:0040B37Cp
					; .text:loc_40B3F1p ...
		push	ebp		; _Suspendallthreads
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset thread
		cmp	run.suspended, 0
		jnz	short loc_44F437
		mov	eax, run.status
		cmp	eax, 12h
		jz	short loc_44F3F0
		cmp	eax, 13h
		jz	short loc_44F3F0
		cmp	run.indebugevent, 0
		jz	short loc_44F3FC

loc_44F3F0:				; CODE XREF: .text:0044F3E0j
					; .text:0044F3E5j
		mov	run.suspendonpause, 1
		jmp	short loc_44F437
; ---------------------------------------------------------------------------

loc_44F3FC:				; CODE XREF: .text:0044F3EEj
		xor	esi, esi
		jmp	short loc_44F432
; ---------------------------------------------------------------------------

loc_44F400:				; CODE XREF: .text:0044F435j
		push	esi		; index
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_44F431
		test	byte ptr [ebx+0Ah], 2
		jz	short loc_44F422
		cmp	netdbg,	0
		jnz	short loc_44F431

loc_44F422:				; CODE XREF: .text:0044F417j
		mov	eax, [ebx+50h]
		push	eax		; hThread
		call	SuspendThread
		inc	dword ptr [ebx+6BCh]

loc_44F431:				; CODE XREF: .text:0044F411j
					; .text:0044F420j
		inc	esi

loc_44F432:				; CODE XREF: .text:0044F3FEj
		cmp	esi, [edi+44h]
		jl	short loc_44F400

loc_44F437:				; CODE XREF: .text:0044F3D6j
					; .text:0044F3FAj
		inc	run.suspended
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 194. _Resumeallthreads
; Exported entry 700. Resumeallthreads

; int __cdecl Resumeallthreads()
		public Resumeallthreads
Resumeallthreads:			; CODE XREF: .text:0040B3E7p
					; .text:0040B453p ...
		push	ebp		; _Resumeallthreads
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset thread
		cmp	run.suspended, 0
		jle	short loc_44F4C1
		dec	run.suspended
		cmp	run.suspended, 0
		jnz	short loc_44F4C1
		cmp	run.suspendonpause, 0
		jz	short loc_44F479
		xor	eax, eax
		mov	run.suspendonpause, eax
		jmp	short loc_44F4C1
; ---------------------------------------------------------------------------

loc_44F479:				; CODE XREF: .text:0044F46Ej
		call	Flushmemorycache
		xor	esi, esi
		jmp	short loc_44F4BC
; ---------------------------------------------------------------------------

loc_44F482:				; CODE XREF: .text:0044F4BFj
		push	esi		; index
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_44F4BB
		test	byte ptr [ebx+0Ah], 2
		jz	short loc_44F4A4
		cmp	netdbg,	0
		jnz	short loc_44F4BB

loc_44F4A4:				; CODE XREF: .text:0044F499j
		mov	eax, [ebx+50h]
		push	eax		; hThread
		call	ResumeThread
		xor	edx, edx
		mov	[ebx+4ECh], edx
		dec	dword ptr [ebx+6BCh]

loc_44F4BB:				; CODE XREF: .text:0044F493j
					; .text:0044F4A2j
		inc	esi

loc_44F4BC:				; CODE XREF: .text:0044F480j
		cmp	esi, [edi+44h]
		jl	short loc_44F482

loc_44F4C1:				; CODE XREF: .text:0044F456j
					; .text:0044F465j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 195. _Getlasterror
; Exported entry 577. Getlasterror

; signed int __cdecl Getlasterror(t_thread *pthr, ulong	*error,	wchar_t	*s)
		public Getlasterror
Getlasterror:				; CODE XREF: .text:0044C441p
					; .text:0045C032p
		push	ebp		; _Getlasterror
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_44F4E1
		cmp	dword ptr [eax+54h], 0
		jnz	short loc_44F4E8

loc_44F4E1:				; CODE XREF: .text:0044F4D9j
		xor	eax, eax
		jmp	loc_44F5A1
; ---------------------------------------------------------------------------

loc_44F4E8:				; CODE XREF: .text:0044F4DFj
		mov	edx, VersionInformation.dwPlatformId
		cmp	edx, 2
		jnz	short loc_44F4FD
		mov	ecx, [eax+54h]
		add	ecx, 34h
		mov	eax, ecx
		jmp	short loc_44F511
; ---------------------------------------------------------------------------

loc_44F4FD:				; CODE XREF: .text:0044F4F1j
		cmp	edx, 1
		jnz	short loc_44F50A
		mov	eax, [eax+54h]
		add	eax, 60h
		jmp	short loc_44F511
; ---------------------------------------------------------------------------

loc_44F50A:				; CODE XREF: .text:0044F500j
		xor	eax, eax
		jmp	loc_44F5A1
; ---------------------------------------------------------------------------

loc_44F511:				; CODE XREF: .text:0044F4FBj
					; .text:0044F508j
		push	1		; mode
		push	4		; size
		push	eax		; _addr
		lea	edx, [ebp-4]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_44F52B
		xor	eax, eax
		jmp	short loc_44F5A1
; ---------------------------------------------------------------------------

loc_44F52B:				; CODE XREF: .text:0044F525j
		test	ebx, ebx
		jz	short loc_44F534
		mov	edx, [ebp-4]
		mov	[ebx], edx

loc_44F534:				; CODE XREF: .text:0044F52Dj
		test	esi, esi
		jnz	short loc_44F53F
		mov	eax, 1
		jmp	short loc_44F5A1
; ---------------------------------------------------------------------------

loc_44F53F:				; CODE XREF: .text:0044F536j
		push	esi		; _name
		mov	edx, [ebp-4]
		push	edx		; value
		push	offset aErrcode_1 ; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jle	short loc_44F590
		lea	eax, [ebx+0Ch]
		cmp	eax, 100h
		jge	short loc_44F590
		mov	word ptr [esi+ebx*2], 20h
		inc	ebx
		mov	word ptr [esi+ebx*2], 28h
		inc	ebx
		mov	edx, [ebp-4]
		push	edx		; u
		lea	ecx, [esi+ebx*2]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		add	ebx, eax
		mov	word ptr [esi+ebx*2], 29h
		inc	ebx
		mov	word ptr [esi+ebx*2], 0
		jmp	short loc_44F59F
; ---------------------------------------------------------------------------

loc_44F590:				; CODE XREF: .text:0044F555j
					; .text:0044F55Fj
		mov	eax, [ebp-4]
		push	eax		; u
		push	esi		; s
		call	Hexprint8W
		add	esp, 8
		mov	ebx, eax

loc_44F59F:				; CODE XREF: .text:0044F58Ej
		mov	eax, ebx

loc_44F5A1:				; CODE XREF: .text:0044F4E3j
					; .text:0044F50Cj ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 196. _Getselectorinfo

; int __cdecl Getselectorinfo(int, DWORD dwSelector, int, int, int)
		public _Getselectorinfo
_Getselectorinfo:			; CODE XREF: .text:004930BFp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+18h]
		mov	ebx, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	eax, [ebp+8]
		push	eax		; threadid
		call	Findthread
		pop	ecx
		test	eax, eax
		jnz	short loc_44F5D0
		or	eax, 0FFFFFFFFh
		jmp	loc_44F661
; ---------------------------------------------------------------------------

loc_44F5D0:				; CODE XREF: .text:0044F5C6j
		lea	edx, [ebp-8]
		push	edx		; lpSelectorEntry
		mov	ecx, [ebp+0Ch]
		push	ecx		; dwSelector
		mov	eax, [eax+50h]
		push	eax		; hThread
		call	GetThreadSelectorEntry
		test	eax, eax
		jnz	short loc_44F5EA
		or	eax, 0FFFFFFFFh
		jmp	short loc_44F661
; ---------------------------------------------------------------------------

loc_44F5EA:				; CODE XREF: .text:0044F5E3j
		test	esi, esi
		jz	short loc_44F620
		movzx	ecx, word ptr [ebp-6]
		mov	dl, [ebp-4]
		mov	al, [ebp-1]
		and	edx, 0FFh
		and	eax, 0FFh
		shl	edx, 10h
		and	ecx, 0FFFFh
		shl	eax, 18h
		and	edx, 0FF0000h
		add	edx, ecx
		and	eax, 0FF000000h
		add	edx, eax
		mov	[esi], edx

loc_44F620:				; CODE XREF: .text:0044F5ECj
		test	ebx, ebx
		jz	short loc_44F650
		movzx	edx, word ptr [ebp-8]
		mov	al, [ebp-2]
		and	edx, 0FFFFh
		and	eax, 0Fh
		shl	eax, 10h
		and	eax, 0F0000h
		add	eax, edx
		mov	[ebx], eax
		test	byte ptr [ebp-2], 80h
		jz	short loc_44F650
		shl	eax, 0Ch
		add	eax, 0FFFh
		mov	[ebx], eax

loc_44F650:				; CODE XREF: .text:0044F622j
					; .text:0044F644j
		test	edi, edi
		jz	short loc_44F65F
		mov	cl, [ebp-2]
		shr	ecx, 6
		and	ecx, 1
		mov	[edi], cl

loc_44F65F:				; CODE XREF: .text:0044F652j
		xor	eax, eax

loc_44F661:				; CODE XREF: .text:0044F5CBj
					; .text:0044F5E8j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44F668:				; CODE XREF: .text:00433D72p
					; .text:00434216p ...
		push	ebp
		mov	ebp, esp
		cmp	g_IsWinxp, 0
		jnz	short loc_44F679
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44F679:				; CODE XREF: .text:0044F672j
		mov	eax, run.status
		cmp	eax, 13h
		jz	short loc_44F688
		cmp	eax, 14h
		jnz	short loc_44F68C

loc_44F688:				; CODE XREF: .text:0044F681j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44F68C:				; CODE XREF: .text:0044F686j
		cmp	dword ptr [ebp+8], 0
		mov	edx, 1
		jnz	short loc_44F69A
		add	edx, 0FFFFFFFEh

loc_44F69A:				; CODE XREF: .text:0044F695j
		mov	run.updatedebugreg, edx
		cmp	run.status, 12h
		jz	short loc_44F6CC
		cmp	run.indebugevent, 0
		jnz	short loc_44F6CC
		call	Suspendallthreads
		push	0		; threadid
		call	GetThreadReg
		pop	ecx
		push	0
		call	loc_44C84C
		pop	ecx
		call	Resumeallthreads

loc_44F6CC:				; CODE XREF: .text:0044F6A7j
					; .text:0044F6B0j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44F6D0:				; CODE XREF: .text:00416D33p
					; .text:0044EA3Dp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+14h]
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		mov	edx, edi
		and	edx, 200h
		mov	[ebp-8], edx
		and	edi, 0FFFFFDFFh
		cmp	edi, 2000h
		jz	short loc_44F70B
		cmp	edi, 4000h
		jz	short loc_44F70B
		or	eax, 0FFFFFFFFh
		jmp	loc_44F864
; ---------------------------------------------------------------------------

loc_44F70B:				; CODE XREF: .text:0044F6F9j
					; .text:0044F701j
		cmp	edi, 4000h
		jnz	short loc_44F749
		cmp	dword_5C8940, 0
		jz	short loc_44F749
		cmp	esi, kiuserexcept
		jz	short loc_44F744
		cmp	esi, zwcontinue
		jz	short loc_44F744
		cmp	esi, dword_5D5530
		jz	short loc_44F744
		cmp	esi, uefilter
		jz	short loc_44F744
		cmp	esi, ntqueryinfo
		jnz	short loc_44F749

loc_44F744:				; CODE XREF: .text:0044F722j
					; .text:0044F72Aj ...
		mov	eax, 1

loc_44F749:				; CODE XREF: .text:0044F711j
					; .text:0044F71Aj ...
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		cmp	g_IsWinxp, 0
		jz	short loc_44F7C9
		cmp	dword_5C8938, 0
		jz	short loc_44F7C9
		cmp	zwcontinue, 0
		jz	short loc_44F7C9
		test	eax, eax
		jnz	short loc_44F7C9
		cmp	bphard.sorted.n, 0
		jnz	short loc_44F781
		mov	dword ptr [ebp-4], 3
		jmp	short loc_44F7C9
; ---------------------------------------------------------------------------

loc_44F781:				; CODE XREF: .text:0044F776j
		xor	ebx, ebx

loc_44F783:				; CODE XREF: .text:0044F7C7j
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bphard.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_44F79C
		mov	[ebp-4], ebx
		jmp	short loc_44F7C3
; ---------------------------------------------------------------------------

loc_44F79C:				; CODE XREF: .text:0044F795j
		mov	edx, [eax+8]
		mov	ecx, edx
		and	ecx, 0F000h
		cmp	edi, ecx
		jnz	short loc_44F7C3
		and	edx, 0E00000h
		cmp	edx, 800000h
		jnz	short loc_44F7C3
		cmp	esi, [eax+0Ch]
		jnz	short loc_44F7C3
		mov	[ebp-4], ebx
		jmp	short loc_44F7C9
; ---------------------------------------------------------------------------

loc_44F7C3:				; CODE XREF: .text:0044F79Aj
					; .text:0044F7A9j ...
		inc	ebx
		cmp	ebx, 4
		jl	short loc_44F783

loc_44F7C9:				; CODE XREF: .text:0044F757j
					; .text:0044F760j ...
		cmp	dword ptr [ebp-4], 0
		jl	short loc_44F82E
		cmp	dword ptr [ebp-8], 0
		jz	short loc_44F7E5
		push	esi		; _addr
		call	Confirmhardwarebreakpoint
		pop	ecx
		test	eax, eax
		jz	short loc_44F7E5
		or	eax, 0FFFFFFFFh
		jmp	short loc_44F864
; ---------------------------------------------------------------------------

loc_44F7E5:				; CODE XREF: .text:0044F7D3j
					; .text:0044F7DEj
		push	0		; exprtype
		push	0		; expression
		push	0		; condition
		mov	eax, [ebp+10h]
		push	eax		; actions
		push	0FFFFFFFFh	; count
		push	0FFFFFFFFh	; limit
		push	esi		; _addr
		push	0		; fnindex
		or	edi, 800000h
		push	edi		; type
		push	1		; size
		mov	edx, [ebp-4]
		push	edx		; index
		call	Sethardbreakpoint
		add	esp, 2Ch
		test	eax, eax
		jnz	short loc_44F864
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_44F864
		push	0
		push	0
		push	0
		push	4000h
		mov	ecx, [ebp+18h]
		push	ecx
		call	loc_44F6D0
		add	esp, 14h
		jmp	short loc_44F864
; ---------------------------------------------------------------------------

loc_44F82E:				; CODE XREF: .text:0044F7CDj
		cmp	dword ptr [ebp-8], 0
		jz	short loc_44F844
		push	esi		; _addr
		call	Confirmint3breakpoint
		pop	ecx
		test	eax, eax
		jz	short loc_44F844
		or	eax, 0FFFFFFFFh
		jmp	short loc_44F864
; ---------------------------------------------------------------------------

loc_44F844:				; CODE XREF: .text:0044F832j
					; .text:0044F83Dj
		push	0		; exprtype
		push	0		; expression
		push	0		; condition
		or	edi, 800000h
		mov	edx, [ebp+10h]
		push	edx		; actions
		push	0FFFFFFFFh	; count
		push	0FFFFFFFFh	; limit
		push	0FFFFFFFFh	; fnindex
		push	edi		; type
		push	esi		; _addr
		call	Setint3breakpoint
		add	esp, 24h

loc_44F864:				; CODE XREF: .text:0044F706j
					; .text:0044F7E3j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_44F86C:				; CODE XREF: .text:00456FC6p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		cmp	esi, 2000h
		jz	short loc_44F888
		cmp	esi, 4000h
		jnz	short loc_44F8E2

loc_44F888:				; CODE XREF: .text:0044F87Ej
		cmp	g_IsWinxp, 0
		jz	short loc_44F8D8
		xor	ebx, ebx

loc_44F893:				; CODE XREF: .text:0044F8D6j
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bphard.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_44F8D2
		mov	edx, [eax+8]
		mov	ecx, edx
		and	ecx, 0F000h
		cmp	esi, ecx
		jnz	short loc_44F8D2
		and	edx, 0E00000h
		cmp	edx, 800000h
		jnz	short loc_44F8D2
		cmp	edi, [eax+0Ch]
		jnz	short loc_44F8D2
		push	ebx		; index
		call	Removehardbreakpoint
		pop	ecx
		jmp	short loc_44F8E2
; ---------------------------------------------------------------------------

loc_44F8D2:				; CODE XREF: .text:0044F8A5j
					; .text:0044F8B4j ...
		inc	ebx
		cmp	ebx, 4
		jl	short loc_44F893

loc_44F8D8:				; CODE XREF: .text:0044F88Fj
		push	esi		; type
		push	edi		; _addr
		call	Removeint3breakpoint
		add	esp, 8

loc_44F8E2:				; CODE XREF: .text:0044F886j
					; .text:0044F8D0j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_44F8E8:				; CODE XREF: .text:00409F46p
					; .text:00451EF7p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDE0h
		push	ebx
		push	esi
		push	edi
		lea	edi, [ebp-220h]
		cmp	dword_586178, 0
		jz	short loc_44F908
		call	Listmemory

loc_44F908:				; CODE XREF: .text:0044F901j
		xor	esi, esi
		jmp	loc_44FA31
; ---------------------------------------------------------------------------

loc_44F90F:				; CODE XREF: .text:0044FA37j
		push	esi		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_44FA30
		test	byte ptr [ebx+0Bh], 8
		jnz	loc_44FA30
		mov	eax, [ebx]
		test	eax, 0FFFFh
		jnz	loc_44FA30
		test	byte ptr [ebx+1Bh], 1
		jz	loc_44FA30
		cmp	eax, [ebx+10h]
		jnz	loc_44FA30
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	loc_44FA30
		push	0		; subaddr
		mov	edx, [ebx]
		push	edx		; _addr
		push	offset premod	; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_44FA30
		lea	ecx, [ebp-8]
		lea	eax, [ebp-4]
		push	ecx
		push	eax
		mov	edx, [ebx]
		push	edx
		call	loc_4136A8
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_44FA30
		push	218h		; n
		push	0		; c
		push	edi		; s
		call	_memset
		add	esp, 0Ch
		mov	ecx, [ebx]
		mov	[edi], ecx
		mov	eax, [ebp-8]
		mov	[edi+4], eax
		mov	dword ptr [edi+8], 3000000h
		cmp	dword_5D5610, 0
		jnz	short loc_44F9C6
		or	dword ptr [edi+8], 100h

loc_44F9C6:				; CODE XREF: .text:0044F9BDj
		mov	edx, [ebp-4]
		xor	ebx, ebx
		mov	[edi+0Ch], edx
		jmp	short loc_44F9E5
; ---------------------------------------------------------------------------

loc_44F9D0:				; CODE XREF: .text:0044F9EBj
		push	0
		mov	eax, g_pPluginnotify
		push	0
		push	edi
		push	5
		mov	edx, [eax+ebx*4]
		call	edx
		add	esp, 10h
		inc	ebx

loc_44F9E5:				; CODE XREF: .text:0044F9CEj
		cmp	ebx, g_nPluginnotify
		jl	short loc_44F9D0
		lea	ecx, [edi+10h]
		push	ecx
		mov	eax, [edi]
		push	eax
		call	loc_44C89C
		add	esp, 8
		push	edi
		call	loc_416C70
		pop	ecx
		test	eax, eax
		jz	short loc_44FA30
		push	edi		; item
		push	offset premod	; sd
		call	Addsorteddata
		add	esp, 8
		mov	eax, [edi+0Ch]
		test	eax, eax
		jz	short loc_44FA30
		push	0
		push	1
		push	0
		push	2000h
		push	eax
		call	loc_44F6D0
		add	esp, 14h

loc_44FA30:				; CODE XREF: .text:0044F921j
					; .text:0044F92Bj ...
		inc	esi

loc_44FA31:				; CODE XREF: .text:0044F90Aj
		cmp	esi, memory.sorted.n
		jl	loc_44F90F
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_44FA44:				; CODE XREF: .text:00409F4Dp
					; .text:0044FE03p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		cmp	premod.n, 0
		jz	loc_44FB0E
		cmp	process, 0
		jz	loc_44FB0E
		xor	edi, edi
		xor	esi, esi
		jmp	short loc_44FAD2
; ---------------------------------------------------------------------------

loc_44FA6A:				; CODE XREF: .text:0044FAD8j
		push	esi		; index
		push	offset premod	; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_44FAD1
		or	dword ptr [ebx+8], 200h
		cmp	word ptr [ebx+10h], 0
		jnz	short loc_44FA9B
		lea	eax, [ebx+10h]
		push	eax
		mov	edx, [ebx]
		push	edx
		call	loc_44C89C
		add	esp, 8

loc_44FA9B:				; CODE XREF: .text:0044FA8Aj
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_44FABA
		test	byte ptr [ebx+0Bh], 40h
		jnz	short loc_44FABA
		mov	ecx, [ebx]
		push	ecx
		call	loc_413A9C
		pop	ecx
		dec	eax
		jnz	short loc_44FAD1
		or	dword ptr [ebx+8], 40000000h

loc_44FABA:				; CODE XREF: .text:0044FA9Fj
					; .text:0044FAA5j
		push	ebx
		call	loc_416C70
		pop	ecx
		test	eax, eax
		jnz	short loc_44FAD1
		and	dword ptr [ebx+8], 0FFFFFDFFh
		mov	edi, 1

loc_44FAD1:				; CODE XREF: .text:0044FA7Cj
					; .text:0044FAB1j ...
		inc	esi

loc_44FAD2:				; CODE XREF: .text:0044FA68j
		cmp	esi, premod.n
		jl	short loc_44FA6A
		test	edi, edi
		jz	short loc_44FB0E
		mov	dword_586178, 1
		push	offset premod	; sd
		call	Deletenonconfirmedsorteddata
		pop	ecx		; int
		mov	eax, [ebp+8]	; int
		push	eax		; int
		call	loc_46FADC
		pop	ecx
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_44FB0E:				; CODE XREF: .text:0044FA51j
					; .text:0044FA5Ej ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 197. _Pauseprocess
; Exported entry 665. Pauseprocess

; int __cdecl Pauseprocess()
		public Pauseprocess
Pauseprocess:				; CODE XREF: .text:loc_40B1A3p
					; .text:loc_410401p ...
		push	ebp		; _Pauseprocess
		mov	ebp, esp
		add	esp, 0FFFFFD30h
		push	ebx
		push	esi
		push	edi
		mov	edi, offset thread
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Issortedinit
		pop	ecx
		test	eax, eax
		jnz	short loc_44FB3B
		or	eax, 0FFFFFFFFh
		jmp	loc_44FD14
; ---------------------------------------------------------------------------

loc_44FB3B:				; CODE XREF: .text:0044FB31j
		mov	eax, run.status
		test	eax, eax
		jz	short loc_44FB59
		cmp	eax, 12h
		jz	short loc_44FB59
		cmp	eax, 13h
		jz	short loc_44FB59
		cmp	eax, 14h
		jz	short loc_44FB59
		cmp	dword ptr [edi+44h], 0
		jnz	short loc_44FB60

loc_44FB59:				; CODE XREF: .text:0044FB42j
					; .text:0044FB47j ...
		xor	eax, eax
		jmp	loc_44FD14
; ---------------------------------------------------------------------------

loc_44FB60:				; CODE XREF: .text:0044FB57j
		cmp	eax, 11h
		jnz	short loc_44FB6C
		xor	eax, eax
		jmp	loc_44FD14
; ---------------------------------------------------------------------------

loc_44FB6C:				; CODE XREF: .text:0044FB63j
		xor	ebx, ebx
		jmp	short loc_44FB9C
; ---------------------------------------------------------------------------

loc_44FB70:				; CODE XREF: .text:0044FB9Fj
		push	ebx		; index
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_44FB9B
		test	byte ptr [esi+0Ah], 2
		jz	short loc_44FB92
		cmp	netdbg,	0
		jnz	short loc_44FB9B

loc_44FB92:				; CODE XREF: .text:0044FB87j
		mov	eax, [esi+50h]
		push	eax		; hThread
		call	SuspendThread

loc_44FB9B:				; CODE XREF: .text:0044FB81j
					; .text:0044FB90j
		inc	ebx

loc_44FB9C:				; CODE XREF: .text:0044FB6Ej
		cmp	ebx, [edi+44h]
		jl	short loc_44FB70
		xor	edx, edx
		mov	[ebp-4], edx
		push	11h		; newstatus
		call	Setstatus
		pop	ecx
		call	GetTickCount
		mov	ebx, eax
		jmp	short loc_44FBBC
; ---------------------------------------------------------------------------

loc_44FBB7:				; CODE XREF: .text:0044FBC6j
		call	Checkfordebugevent

loc_44FBBC:				; CODE XREF: .text:0044FBB5j
		call	GetTickCount
		sub	eax, ebx
		cmp	eax, 32h
		jb	short loc_44FBB7
		cmp	run.status, 12h
		jz	loc_44FCDC
		cmp	dword_5C8958, 0
		jz	short loc_44FC04
		cmp	_imp__DebugBreakProcess, 0
		jz	short loc_44FC04
		cmp	process, 0
		jz	short loc_44FC04
		mov	eax, process
		push	eax		; _DWORD
		call	_imp__DebugBreakProcess
		test	eax, eax
		jnz	loc_44FCDC

loc_44FC04:				; CODE XREF: .text:0044FBDCj
					; .text:0044FBE5j ...
		cmp	VersionInformation.dwPlatformId, 2
		jnz	short loc_44FC6B
		cmp	VersionInformation.dwMajorVersion, 5
		jb	short loc_44FC6B
		call	Listmemory
		xor	ebx, ebx
		jmp	short loc_44FC61
; ---------------------------------------------------------------------------

loc_44FC1F:				; CODE XREF: .text:0044FC67j
		push	ebx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_44FC60
		test	byte ptr [esi+0Bh], 8
		jnz	short loc_44FC60
		mov	eax, [esi+8]
		test	ah, 10h
		jz	short loc_44FC60
		test	eax, 40000000h
		jnz	short loc_44FC60
		push	1		; guard
		mov	edx, [esi+4]
		push	edx		; size
		mov	ecx, [esi]
		push	ecx		; base
		call	Guardmemory
		add	esp, 0Ch
		or	dword ptr [esi+8], 80000000h

loc_44FC60:				; CODE XREF: .text:0044FC31j
					; .text:0044FC37j ...
		inc	ebx

loc_44FC61:				; CODE XREF: .text:0044FC1Dj
		cmp	ebx, memory.sorted.n
		jl	short loc_44FC1F
		jmp	short loc_44FCDC
; ---------------------------------------------------------------------------

loc_44FC6B:				; CODE XREF: .text:0044FC0Bj
					; .text:0044FC14j
		xor	ebx, ebx
		jmp	short loc_44FCD7
; ---------------------------------------------------------------------------

loc_44FC6F:				; CODE XREF: .text:0044FCDAj
		push	ebx		; index
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_44FCD6
		mov	dword ptr [ebp-2D0h], 10001h
		lea	eax, [ebp-2D0h]
		push	eax		; lpContext
		mov	edx, [esi+50h]
		push	edx		; hThread
		call	GetThreadContext
		test	eax, eax
		jnz	short loc_44FCA9
		mov	dword ptr [ebp-4], 0FFFFFFFFh
		jmp	short loc_44FCD6
; ---------------------------------------------------------------------------

loc_44FCA9:				; CODE XREF: .text:0044FC9Ej
		test	byte ptr [ebp-20Fh], 1
		jnz	short loc_44FCD6
		or	dword ptr [ebp-210h], 100h
		lea	ecx, [ebp-2D0h]
		push	ecx		; lpContext
		mov	eax, [esi+50h]
		push	eax		; hThread
		call	SetThreadContext
		mov	dword ptr [esi+6C4h], 1

loc_44FCD6:				; CODE XREF: .text:0044FC80j
					; .text:0044FCA7j ...
		inc	ebx

loc_44FCD7:				; CODE XREF: .text:0044FC6Dj
		cmp	ebx, [edi+44h]
		jl	short loc_44FC6F

loc_44FCDC:				; CODE XREF: .text:0044FBCFj
					; .text:0044FBFEj ...
		xor	ebx, ebx
		jmp	short loc_44FD0C
; ---------------------------------------------------------------------------

loc_44FCE0:				; CODE XREF: .text:0044FD0Fj
		push	ebx		; index
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_44FD0B
		test	byte ptr [esi+0Ah], 2
		jz	short loc_44FD02
		cmp	netdbg,	0
		jnz	short loc_44FD0B

loc_44FD02:				; CODE XREF: .text:0044FCF7j
		mov	eax, [esi+50h]
		push	eax		; hThread
		call	ResumeThread

loc_44FD0B:				; CODE XREF: .text:0044FCF1j
					; .text:0044FD00j
		inc	ebx

loc_44FD0C:				; CODE XREF: .text:0044FCDEj
		cmp	ebx, [edi+44h]
		jl	short loc_44FCE0
		mov	eax, [ebp-4]

loc_44FD14:				; CODE XREF: .text:0044FB36j
					; .text:0044FB5Bj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 198. _Closeprocess
; Exported entry 419. Closeprocess

; int __cdecl Closeprocess(int confirm)
		public Closeprocess
Closeprocess:				; CODE XREF: .text:0040B215p
					; .text:0044A997p ...
		push	ebp		; _Closeprocess
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, offset run
		cmp	dword ptr [edi], 0
		jnz	short loc_44FD36
		xor	eax, eax
		jmp	loc_450126
; ---------------------------------------------------------------------------

loc_44FD36:				; CODE XREF: .text:0044FD2Dj
		mov	eax, [edi]
		cmp	eax, 1
		jz	short loc_44FD47
		cmp	eax, 2
		jz	short loc_44FD47
		cmp	eax, 14h
		jnz	short loc_44FD74

loc_44FD47:				; CODE XREF: .text:0044FD3Bj
					; .text:0044FD40j
		push	offset aTheStateOfTheD ; "The state of the debugged process does "...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aUnableToCloseP ; "Unable to close process"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6A8 ; cond
		call	Conderror
		add	esp, 0Ch
		or	eax, 0FFFFFFFFh
		jmp	loc_450126
; ---------------------------------------------------------------------------

loc_44FD74:				; CODE XREF: .text:0044FD45j
		cmp	dword ptr [edi], 13h
		jz	short loc_44FDC5
		cmp	dword ptr [ebp+8], 0
		jz	short loc_44FDC5
		push	offset aTheDebuggedPro ; "The debugged process is still	active.	W"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aProcessIsSti_0 ; "Process is still running"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6A0 ; cond
		call	Condyesno
		add	esp, 0Ch
		mov	esi, eax
		cmp	esi, 6
		jz	short loc_44FDC5
		push	offset aProcessIsSti_0 ; "Process is still running"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		or	eax, 0FFFFFFFFh
		jmp	loc_450126
; ---------------------------------------------------------------------------

loc_44FDC5:				; CODE XREF: .text:0044FD77j
					; .text:0044FD7Dj ...
		xor	edx, edx
		cmp	dword_5C895C, 0
		jz	short loc_44FDD9
		cmp	netdbg,	0
		jz	short loc_44FDDA

loc_44FDD9:				; CODE XREF: .text:0044FDCEj
		inc	edx

loc_44FDDA:				; CODE XREF: .text:0044FDD7j
		mov	[ebp-4], edx
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_44FE5E
		cmp	dword ptr [edi], 11h
		jz	short loc_44FE5E
		cmp	dword ptr [edi], 12h
		jz	short loc_44FE5E
		cmp	dword ptr [edi], 13h
		jz	short loc_44FE5E
		call	Listmemory
		call	Flushmemorycache
		call	loc_4585F4
		push	0
		call	loc_44FA44
		pop	ecx
		xor	esi, esi
		jmp	short loc_44FE3C
; ---------------------------------------------------------------------------

loc_44FE0D:				; CODE XREF: .text:0044FE42j
		push	esi		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_44FE3B
		jmp	short loc_44FE32
; ---------------------------------------------------------------------------

loc_44FE23:				; CODE XREF: .text:0044FE39j
		mov	eax, [ebx+50h]
		push	eax		; hThread
		call	ResumeThread
		dec	dword ptr [ebx+6C0h]

loc_44FE32:				; CODE XREF: .text:0044FE21j
		cmp	dword ptr [ebx+6C0h], 0
		jg	short loc_44FE23

loc_44FE3B:				; CODE XREF: .text:0044FE1Fj
		inc	esi

loc_44FE3C:				; CODE XREF: .text:0044FE0Bj
		cmp	esi, thread.sorted.n
		jl	short loc_44FE0D
		call	Pauseprocess
		push	180h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	edx, hwollymain
		push	edx		; hWnd
		call	RedrawWindow

loc_44FE5E:				; CODE XREF: .text:0044FDE1j
					; .text:0044FDE6j ...
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_44FEBF
		cmp	dword ptr [edi], 11h
		jnz	short loc_44FEBF
		call	GetTickCount
		mov	ebx, eax
		jmp	short loc_44FE89
; ---------------------------------------------------------------------------

loc_44FE72:				; CODE XREF: .text:0044FE8Cj
		call	Checkfordebugevent
		test	eax, eax
		jnz	short loc_44FE89
		call	GetTickCount
		sub	eax, ebx
		cmp	eax, 9C4h
		ja	short loc_44FE8E

loc_44FE89:				; CODE XREF: .text:0044FE70j
					; .text:0044FE79j
		cmp	dword ptr [edi], 12h
		jnz	short loc_44FE72

loc_44FE8E:				; CODE XREF: .text:0044FE87j
		cmp	dword ptr [edi], 12h
		jz	short loc_44FEBF
		push	offset aOllydbgIsUna_8 ; "OllyDbg is unable to pause debugged pro"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aUnableToPauseP ; "Unable to pause process"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6A8 ; cond
		call	Conderror
		add	esp, 0Ch
		mov	dword ptr [ebp-4], 1

loc_44FEBF:				; CODE XREF: .text:0044FE62j
					; .text:0044FE67j ...
		call	loc_44D528
		cmp	dword ptr [edi], 12h
		jnz	loc_44FFD0
		cmp	dword ptr [ebp-4], 0
		jnz	loc_44FFD0
		push	0		; errtxt
		lea	eax, [ebp-0Ch]
		push	eax		; _addr
		push	0		; pmod
		push	offset aKernel32_exitp ; "KERNEL32.ExitProcess"
		call	FindaddressW
		add	esp, 10h
		test	eax, eax
		jz	short loc_44FEFC
		mov	dword ptr [ebp-4], 1
		jmp	loc_44FF97
; ---------------------------------------------------------------------------

loc_44FEFC:				; CODE XREF: .text:0044FEEEj
		xor	esi, esi
		jmp	loc_44FF8B
; ---------------------------------------------------------------------------

loc_44FF03:				; CODE XREF: .text:0044FF91j
		push	esi		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_44FF8A

loc_44FF17:				; CODE XREF: .text:0044FF21j
		mov	eax, [ebx+50h]
		push	eax		; hThread
		call	ResumeThread
		dec	eax
		jg	short loc_44FF17
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebx+6B8h], edx
		xor	eax, eax
		mov	[ebx+6BCh], ecx
		mov	[ebx+6C0h], eax
		cmp	dword ptr [ebx+4ECh], 0
		jnz	short loc_44FF4D
		mov	dword ptr [ebp-4], 1
		jmp	short loc_44FF8A
; ---------------------------------------------------------------------------

loc_44FF4D:				; CODE XREF: .text:0044FF42j
		xor	edx, edx
		mov	[ebp-8], edx
		push	9		; mode
		push	4		; size
		mov	ecx, [ebx+344h]
		add	ecx, 4
		push	ecx		; _addr
		lea	eax, [ebp-8]
		push	eax		; buf
		call	Writememory
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_44FF7A
		mov	dword ptr [ebp-4], 1
		jmp	short loc_44FF8A
; ---------------------------------------------------------------------------

loc_44FF7A:				; CODE XREF: .text:0044FF6Fj
		mov	edx, [ebp-0Ch]
		mov	[ebx+330h], edx
		or	dword ptr [ebx+328h], 1

loc_44FF8A:				; CODE XREF: .text:0044FF15j
					; .text:0044FF4Bj ...
		inc	esi

loc_44FF8B:				; CODE XREF: .text:0044FEFEj
		cmp	esi, thread.sorted.n
		jl	loc_44FF03

loc_44FF97:				; CODE XREF: .text:0044FEF7j
		xor	ecx, ecx
		mov	[edi+98h], ecx
		mov	[edi+94h], ecx
		cmp	dword ptr [ebp-4], 0
		jz	short loc_44FFD0
		push	offset aOllydbgIsUna_0 ; "OllyDbg is unable to close debugged pro"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aUnableToCloseG ; "Unable to close gracefully"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6A8 ; cond
		call	Conderror
		add	esp, 0Ch

loc_44FFD0:				; CODE XREF: .text:0044FEC7j
					; .text:0044FED1j ...
		cmp	dword ptr [ebp-4], 0
		jz	short loc_450009
		cmp	dword ptr [edi], 13h
		jz	short loc_450009
		cmp	netdbg,	0
		jz	short loc_44FFFC
		cmp	dword_5D40B8, 0
		jz	short loc_44FFFC
		push	0
		mov	eax, dword_5D40B8
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+28h]
		test	eax, eax

loc_44FFFC:				; CODE XREF: .text:0044FFE2j
					; .text:0044FFEBj
		push	0		; uExitCode

loc_44FFFE:
		mov	eax, process
		push	eax		; hProcess
		call	TerminateProcess

loc_450009:				; CODE XREF: .text:0044FFD4j
					; .text:0044FFD9j
		cmp	dword ptr [edi], 12h
		jnz	short loc_450040
		push	14h		; newstatus
		call	Setstatus
		pop	ecx
		push	1
		call	loc_44C84C
		pop	ecx
		push	0		; dwSize
		push	0		; lpBaseAddress
		mov	edx, process
		push	edx		; hProcess
		call	FlushInstructionCache
		push	10002h		; dwContinueStatus
		mov	ecx, [edi+2Ch]
		push	ecx		; dwThreadId
		mov	eax, [edi+28h]
		push	eax		; dwProcessId
		call	ContinueDebugEvent

loc_450040:				; CODE XREF: .text:0045000Cj
		call	GetTickCount
		mov	ebx, eax

loc_450047:
		jmp	short loc_450060
; ---------------------------------------------------------------------------

loc_450049:				; CODE XREF: .text:loc_450063j
		call	Checkfordebugevent

loc_45004E:
		test	eax, eax
		jnz	short loc_450060

loc_450052:
		call	GetTickCount
		sub	eax, ebx
		cmp	eax, 9C4h

loc_45005E:
		ja	short loc_450065

loc_450060:				; CODE XREF: .text:loc_450047j
					; .text:00450050j
		cmp	dword ptr [edi], 13h

loc_450063:
		jnz	short loc_450049

loc_450065:				; CODE XREF: .text:loc_45005Ej
		cmp	dword ptr [edi], 13h
		jz	short loc_45009C
		push	0		; uExitCode
		mov	eax, process
		push	eax		; hProcess

loc_450072:
		call	TerminateProcess
		call	GetTickCount
		mov	ebx, eax
		jmp	short loc_450097
; ---------------------------------------------------------------------------

loc_450080:				; CODE XREF: .text:0045009Aj
		call	Checkfordebugevent
		test	eax, eax
		jnz	short loc_450097
		call	GetTickCount
		sub	eax, ebx
		cmp	eax, 9C4h
		ja	short loc_45009C

loc_450097:				; CODE XREF: .text:0045007Ej
					; .text:00450087j
		cmp	dword ptr [edi], 12h
		jnz	short loc_450080

loc_45009C:				; CODE XREF: .text:00450068j
					; .text:00450095j
		cmp	dword ptr [edi], 13h
		jz	short loc_4500CB
		push	offset aOllydbgWasUnab ; "OllyDbg was unable to	close debugged pr"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aUnableToCloseD ; "Unable to close debugged process"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6A8 ; cond
		call	Conderror
		add	esp, 0Ch
		or	eax, 0FFFFFFFFh
		jmp	short loc_450126
; ---------------------------------------------------------------------------

loc_4500CB:				; CODE XREF: .text:0045009Fj
		push	10002h		; dwContinueStatus
		mov	edx, [edi+2Ch]
		push	edx		; dwThreadId
		mov	ecx, [edi+28h]
		push	ecx		; dwProcessId
		call	ContinueDebugEvent
		push	0
		call	loc_44A0BC
		pop	ecx
		push	offset aProcessClosed ;	"Process closed"
		call	_T
		pop	ecx
		push	eax		; format
		call	Info
		pop	ecx
		push	2E000h		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		call	loc_40A170
		xor	eax, eax

loc_450126:				; CODE XREF: .text:0044FD31j
					; .text:0044FD6Fj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 199. _Detachprocess
; Exported entry 476. Detachprocess

; int Detachprocess(void)
		public Detachprocess
Detachprocess:				; CODE XREF: .text:loc_40AE54p
		push	ebp		; _Detachprocess
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, offset run
		mov	ebx, offset pluginlist
		mov	eax, [edi]	; int
		test	eax, eax
		jnz	short loc_45014D
		xor	eax, eax
		jmp	loc_4503B0
; ---------------------------------------------------------------------------

loc_45014D:				; CODE XREF: .text:00450144j
		cmp	eax, 13h
		jnz	short loc_45015F
		push	0		; confirm
		call	Closeprocess
		pop	ecx
		jmp	loc_4503B0
; ---------------------------------------------------------------------------

loc_45015F:				; CODE XREF: .text:00450150j
		cmp	_imp__DebugActiveProcessStop, 0
		jz	short loc_450171
		cmp	netdbg,	0
		jz	short loc_450179

loc_450171:				; CODE XREF: .text:00450166j
		or	eax, 0FFFFFFFFh
		jmp	loc_4503B0
; ---------------------------------------------------------------------------

loc_450179:				; CODE XREF: .text:0045016Fj
		mov	eax, [edi]
		cmp	eax, 1
		jz	short loc_45018A
		cmp	eax, 2
		jz	short loc_45018A
		cmp	eax, 14h
		jnz	short loc_4501B7

loc_45018A:				; CODE XREF: .text:0045017Ej
					; .text:00450183j
		push	offset aTheStateOfTh_0 ; "The state of the debugged process does "...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aUnableToDetach ; "Unable to detach debugged process"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6A8 ; cond
		call	Conderror
		add	esp, 0Ch
		or	eax, 0FFFFFFFFh
		jmp	loc_4503B0
; ---------------------------------------------------------------------------

loc_4501B7:				; CODE XREF: .text:00450188j
		call	Pauseprocess
		call	GetTickCount
		mov	esi, eax
		jmp	short loc_4501CA
; ---------------------------------------------------------------------------

loc_4501C5:				; CODE XREF: .text:004501DBj
		call	Checkfordebugevent

loc_4501CA:				; CODE XREF: .text:004501C3j
		call	GetTickCount
		sub	eax, esi
		cmp	eax, 3E8h
		jnb	short loc_4501DD
		cmp	dword ptr [edi], 12h
		jnz	short loc_4501C5

loc_4501DD:				; CODE XREF: .text:004501D6j
		xor	esi, esi
		jmp	short loc_450202
; ---------------------------------------------------------------------------

loc_4501E1:				; CODE XREF: .text:00450205j
		push	esi		; index
		lea	eax, [ebx+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_450201
		cmp	dword ptr [eax+2C8h], 0
		jz	short loc_450201
		call	dword ptr [eax+2C8h]

loc_450201:				; CODE XREF: .text:004501F0j
					; .text:004501F9j
		inc	esi

loc_450202:				; CODE XREF: .text:004501DFj
		cmp	esi, [ebx+44h]
		jl	short loc_4501E1
		call	loc_44D528
		test	eax, eax
		jz	short loc_450248
		push	2124h		; uType
		push	offset aUnableToRemove ; "Unable to remove breakpoints"
		call	_T
		pop	ecx
		push	eax		; lpCaption
		push	offset aOllydbgIsUna_1 ; "OllyDbg is unable to remove some breakp"...
		call	_T
		pop	ecx
		push	eax		; lpText
		mov	edx, hwollymain
		push	edx		; hWnd
		call	MessageBoxW
		mov	esi, eax
		cmp	esi, 6
		jz	short loc_450248
		or	eax, 0FFFFFFFFh
		jmp	loc_4503B0
; ---------------------------------------------------------------------------

loc_450248:				; CODE XREF: .text:0045020Ej
					; .text:0045023Ej
		xor	esi, esi
		jmp	short loc_4502AF
; ---------------------------------------------------------------------------

loc_45024C:				; CODE XREF: .text:004502B5j
		push	esi		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4502AE
		jmp	short loc_450271
; ---------------------------------------------------------------------------

loc_450262:				; CODE XREF: .text:00450278j
		mov	eax, [ebx+50h]
		push	eax		; hThread
		call	ResumeThread
		dec	dword ptr [ebx+6C0h]

loc_450271:				; CODE XREF: .text:00450260j
		cmp	dword ptr [ebx+6C0h], 0
		jg	short loc_450262
		jmp	short loc_45028B
; ---------------------------------------------------------------------------

loc_45027C:				; CODE XREF: .text:00450292j
		mov	edx, [ebx+50h]
		push	edx		; hThread
		call	ResumeThread
		dec	dword ptr [ebx+6B8h]

loc_45028B:				; CODE XREF: .text:0045027Aj
		cmp	dword ptr [ebx+6B8h], 0
		jg	short loc_45027C
		jmp	short loc_4502A5
; ---------------------------------------------------------------------------

loc_450296:				; CODE XREF: .text:004502ACj
		mov	ecx, [ebx+50h]
		push	ecx		; hThread
		call	ResumeThread
		dec	dword ptr [ebx+6BCh]

loc_4502A5:				; CODE XREF: .text:00450294j
		cmp	dword ptr [ebx+6BCh], 0
		jg	short loc_450296

loc_4502AE:				; CODE XREF: .text:0045025Ej
		inc	esi

loc_4502AF:				; CODE XREF: .text:0045024Aj
		cmp	esi, thread.sorted.n
		jl	short loc_45024C
		xor	eax, eax
		mov	[edi+98h], eax
		mov	[edi+94h], eax
		cmp	dword ptr [edi], 12h
		jnz	short loc_4502FC
		push	14h		; newstatus
		call	Setstatus
		pop	ecx
		push	1
		call	loc_44C84C
		pop	ecx
		push	0		; dwSize
		push	0		; lpBaseAddress
		mov	edx, process
		push	edx		; hProcess
		call	FlushInstructionCache
		push	10002h		; dwContinueStatus
		mov	ecx, [edi+2Ch]
		push	ecx		; dwThreadId
		mov	eax, [edi+28h]
		push	eax		; dwProcessId
		call	ContinueDebugEvent

loc_4502FC:				; CODE XREF: .text:004502C8j
		call	GetTickCount
		mov	esi, eax
		jmp	short loc_450326
; ---------------------------------------------------------------------------

loc_450305:				; CODE XREF: .text:00450332j
		push	1		; dwMilliseconds
		lea	eax, [edi+24h]
		push	eax		; lpDebugEvent
		call	WaitForDebugEvent
		test	eax, eax
		jz	short loc_450334
		push	10002h		; dwContinueStatus
		mov	edx, [edi+2Ch]
		push	edx		; dwThreadId
		mov	ecx, [edi+28h]
		push	ecx		; dwProcessId
		call	ContinueDebugEvent

loc_450326:				; CODE XREF: .text:00450303j
		call	GetTickCount
		sub	eax, esi
		cmp	eax, 9C4h
		jb	short loc_450305

loc_450334:				; CODE XREF: .text:00450312j
		mov	eax, processid
		push	eax		; _DWORD
		call	_imp__DebugActiveProcessStop
		test	eax, eax
		jnz	short loc_450363
		push	offset aOllydbgIsUna_9 ; "OllyDbg is unable to detach debugged ap"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		pop	ecx
		push	3		; newstatus
		call	Setstatus
		pop	ecx
		or	eax, 0FFFFFFFFh
		jmp	short loc_4503B0
; ---------------------------------------------------------------------------

loc_450363:				; CODE XREF: .text:00450342j
		push	1
		call	loc_44A0BC
		pop	ecx
		push	offset aProcessDetache ; "Process detached"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; _addr
		call	Message
		add	esp, 8
		push	2E000h		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		call	loc_40A170
		xor	eax, eax

loc_4503B0:				; CODE XREF: .text:00450148j
					; .text:0045015Aj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4503B8(char arglist)
loc_4503B8:				; CODE XREF: .text:0044EB87p
					; .text:004505B6p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		xor	eax, eax
		mov	[ebp-4], eax
		xor	edi, edi
		jmp	loc_45044F
; ---------------------------------------------------------------------------

loc_4503CE:				; CODE XREF: .text:00450455j
		push	edi		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_45044E
		test	esi, esi
		jz	short loc_4503EA
		cmp	esi, [ebx]
		jnz	short loc_450406

loc_4503EA:				; CODE XREF: .text:004503E4j
		cmp	dword ptr [ebx+6B8h], 0
		jz	short loc_450406
		mov	eax, [ebx+50h]
		push	eax		; hThread
		call	ResumeThread
		xor	edx, edx
		mov	[ebx+6B8h], edx
		jmp	short loc_450439
; ---------------------------------------------------------------------------

loc_450406:				; CODE XREF: .text:004503E8j
					; .text:004503F1j
		test	esi, esi
		jz	short loc_450439
		cmp	esi, [ebx]
		jz	short loc_450439
		cmp	dword ptr [ebx+6B8h], 0
		jnz	short loc_450439
		test	byte ptr [ebx+0Ah], 2
		jz	short loc_450426
		cmp	netdbg,	0
		jnz	short loc_45044E

loc_450426:				; CODE XREF: .text:0045041Bj
		mov	ecx, [ebx+50h]
		push	ecx		; hThread
		call	SuspendThread
		mov	dword ptr [ebx+6B8h], 1

loc_450439:				; CODE XREF: .text:00450404j
					; .text:00450408j ...
		cmp	dword ptr [ebx+6B8h], 0
		jnz	short loc_45044E
		cmp	dword ptr [ebx+6C0h], 0
		jnz	short loc_45044E
		inc	dword ptr [ebp-4]

loc_45044E:				; CODE XREF: .text:004503E0j
					; .text:00450424j ...
		inc	edi

loc_45044F:				; CODE XREF: .text:004503C9j
		cmp	edi, thread.sorted.n
		jl	loc_4503CE
		cmp	dword ptr [ebp-4], 0
		jnz	loc_4504ED
		test	esi, esi
		jnz	short loc_450490
		push	offset aAllThreadsInTh ; "All threads in the debugged application"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aAllThreadsAreS ; "All threads are suspended"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E698 ; cond
		call	Conderror
		add	esp, 0Ch
		jmp	short loc_4504E8
; ---------------------------------------------------------------------------

loc_450490:				; CODE XREF: .text:00450467j
		cmp	dword ptr [ebx+0Ch], 0
		jnz	short loc_4504BE
		push	esi		; arglist
		push	offset aTheThreadYouAr ; "The thread you are going to run (ID %08"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aAllThreadsAreS ; "All threads are suspended"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E698 ; cond
		call	Conderror
		add	esp, 10h
		jmp	short loc_4504E8
; ---------------------------------------------------------------------------

loc_4504BE:				; CODE XREF: .text:00450494j
		push	esi
		mov	eax, [ebx+0Ch]
		push	eax		; arglist
		push	offset aTheThreadYou_0 ; "The thread you are going to run (ordina"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aAllThreadsAreS ; "All threads are suspended"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E698 ; cond
		call	Conderror
		add	esp, 14h

loc_4504E8:				; CODE XREF: .text:0045048Ej
					; .text:004504BCj
		or	eax, 0FFFFFFFFh
		jmp	short loc_4504EF
; ---------------------------------------------------------------------------

loc_4504ED:				; CODE XREF: .text:0045045Fj
		xor	eax, eax

loc_4504EF:				; CODE XREF: .text:004504EBj
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4504F8:				; CODE XREF: .text:0040B35Ep
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset procdata
		xor	esi, esi
		jmp	short loc_450543
; ---------------------------------------------------------------------------

loc_450507:				; CODE XREF: .text:00450545j
		push	esi		; index
		push	edi		; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_450542
		test	byte ptr [ebx+9], 10h
		jz	short loc_450542
		cmp	dword_5CBB78, 0
		jz	short loc_450539
		mov	eax, [ebx]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_450542
		test	byte ptr [eax+0Ah], 30h
		jnz	short loc_450542

loc_450539:				; CODE XREF: .text:00450524j
		mov	edx, [ebx]
		push	edx
		call	loc_44D5E0
		pop	ecx

loc_450542:				; CODE XREF: .text:00450515j
					; .text:0045051Bj ...
		inc	esi

loc_450543:				; CODE XREF: .text:00450505j
		cmp	esi, [edi]
		jl	short loc_450507
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 200. _Runthread
; Exported entry 701. Runthread

; int __cdecl Runthread(t_status status, int pass, int threadid)
		public Runthread
Runthread:				; CODE XREF: .text:00451215p
		push	ebp		; _Runthread
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF4C4h
		push	ebx
		push	esi
		push	edi		; arglist
		xor	esi, esi
		jmp	short loc_45057E
; ---------------------------------------------------------------------------

loc_450563:				; CODE XREF: .text:00450584j
		push	0
		lea	edx, [ebp+8]
		mov	eax, [ebp+0Ch]
		mov	ecx, g_pPluginnotify
		push	eax
		push	edx
		push	18h
		mov	eax, [ecx+esi*4]
		call	eax
		add	esp, 10h
		inc	esi

loc_45057E:				; CODE XREF: .text:00450561j
		cmp	esi, g_nPluginnotify
		jl	short loc_450563
		cmp	dword ptr [ebp+8], 3
		jnz	short loc_4505CD
		mov	eax, run.status
		cmp	eax, 4
		jz	short loc_4505B4
		cmp	eax, 7
		jz	short loc_4505B4
		cmp	eax, 8
		jz	short loc_4505B4
		cmp	eax, 9
		jz	short loc_4505B4
		cmp	eax, 0Ah
		jz	short loc_4505B4
		cmp	eax, 0Eh
		jz	short loc_4505B4
		cmp	eax, 0Fh
		jnz	short loc_4505CD

loc_4505B4:				; CODE XREF: .text:00450594j
					; .text:00450599j ...
		push	0		; arglist
		call	loc_4503B8
		pop	ecx
		mov	edx, [ebp+8]
		push	edx		; newstatus
		call	Setstatus
		pop	ecx
		xor	eax, eax
		jmp	loc_451201
; ---------------------------------------------------------------------------

loc_4505CD:				; CODE XREF: .text:0045058Aj
					; .text:004505B2j
		cmp	run.status, 9
		jz	short loc_4505DF
		cmp	run.status, 0Ah
		jnz	short loc_4505E5

loc_4505DF:				; CODE XREF: .text:004505D4j
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4505F6

loc_4505E5:				; CODE XREF: .text:004505DDj
		cmp	run.status, 12h
		jz	short loc_4505F6
		or	eax, 0FFFFFFFFh
		jmp	loc_451201
; ---------------------------------------------------------------------------

loc_4505F6:				; CODE XREF: .text:004505E3j
					; .text:004505ECj
		cmp	dword ptr [ebp+8], 3
		jz	short loc_45064C
		cmp	dword ptr [ebp+8], 4
		jz	short loc_45064C
		cmp	dword ptr [ebp+8], 5
		jz	short loc_45064C
		cmp	dword ptr [ebp+8], 6
		jz	short loc_45064C
		cmp	dword ptr [ebp+8], 7
		jz	short loc_45064C
		cmp	dword ptr [ebp+8], 8
		jz	short loc_45064C
		cmp	dword ptr [ebp+8], 9
		jz	short loc_45064C
		cmp	dword ptr [ebp+8], 0Ah
		jz	short loc_45064C
		cmp	dword ptr [ebp+8], 0Eh
		jz	short loc_45064C
		cmp	dword ptr [ebp+8], 10h
		jz	short loc_45064C
		cmp	dword ptr [ebp+8], 0Bh
		jz	short loc_45064C
		cmp	dword ptr [ebp+8], 0Ch
		jz	short loc_45064C
		cmp	dword ptr [ebp+8], 0Dh
		jz	short loc_45064C
		or	eax, 0FFFFFFFFh
		jmp	loc_451201
; ---------------------------------------------------------------------------

loc_45064C:				; CODE XREF: .text:004505FAj
					; .text:00450600j ...
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_45065A
		call	Getcputhreadid
		mov	[ebp+10h], eax

loc_45065A:				; CODE XREF: .text:00450650j
		mov	edx, [ebp+10h]
		push	edx		; threadid
		call	Findthread
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jz	short loc_450673
		cmp	dword ptr [edi+4ECh], 0
		jnz	short loc_4506AC

loc_450673:				; CODE XREF: .text:00450668j
		mov	eax, [ebp+10h]
		push	eax		; arglist
		push	offset aTheThreadWithI ; "The thread with ID %08X is no	longer va"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		push	2100Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		mov	edx, [ebp+10h]
		push	edx		; threadid
		call	Setcpu
		add	esp, 18h
		or	eax, 0FFFFFFFFh
		jmp	loc_451201
; ---------------------------------------------------------------------------

loc_4506AC:				; CODE XREF: .text:00450671j
		lea	edx, [edi+328h]
		mov	[ebp-38h], edx
		mov	ecx, [ebp-38h]
		mov	eax, [ecx+8]
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp+8], 3
		jnz	short loc_4506CB
		xor	edx, edx
		mov	[ebp-14h], edx
		jmp	short loc_4506D1
; ---------------------------------------------------------------------------

loc_4506CB:				; CODE XREF: .text:004506C2j
		mov	ecx, [ebp+10h]
		mov	[ebp-14h], ecx

loc_4506D1:				; CODE XREF: .text:004506C9j
		cmp	run.isappexception, 1
		jnz	short loc_4506E3
		cmp	dword ptr run.de.u+50h,	0
		jnz	short loc_4506EC

loc_4506E3:				; CODE XREF: .text:004506D8j
		mov	dword ptr [ebp+0Ch], 0FFFFFFFFh
		jmp	short loc_450705
; ---------------------------------------------------------------------------

loc_4506EC:				; CODE XREF: .text:004506E1j
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_450705
		push	10h		; nVirtKey
		call	GetKeyState
		test	ah, 80h
		jz	short loc_450705
		mov	dword ptr [ebp+0Ch], 1

loc_450705:				; CODE XREF: .text:004506EAj
					; .text:004506F0j ...
		cmp	dword_5CBB94, 0
		jnz	short loc_45072E
		cmp	dword ptr [ebp+8], 7
		jz	short loc_450726
		cmp	dword ptr [ebp+8], 8
		jz	short loc_450726
		cmp	dword ptr [ebp+8], 9
		jz	short loc_450726
		cmp	dword ptr [ebp+8], 0Ah
		jnz	short loc_45072E

loc_450726:				; CODE XREF: .text:00450712j
					; .text:00450718j ...
		push	0
		call	loc_4C4318
		pop	ecx

loc_45072E:				; CODE XREF: .text:0045070Cj
					; .text:00450724j
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-8], eax
		mov	[ebp-10h], edx
		push	5		; mode
		push	10h		; size
		mov	ecx, [ebp-18h]
		lea	eax, [ebp-26Ch]
		push	ecx		; _addr
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jbe	short loc_450783
		push	0		; predict
		lea	ecx, [ebp-1B3Ch]
		mov	edx, [ebp-38h]
		push	edx		; reg
		push	10h		; mode
		push	ecx		; da
		push	0		; dec
		mov	eax, [ebp-18h]
		lea	ecx, [ebp-26Ch]
		push	eax		; ip
		mov	edx, [ebp-28h]
		push	edx		; cmdsize
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		mov	[ebp-28h], eax

loc_450783:				; CODE XREF: .text:00450756j
		mov	ebx, [ebp-1B28h]
		and	ebx, 1Fh
		cmp	dword ptr [ebp+8], 6
		jnz	short loc_4507A9
		cmp	ebx, 0Ch
		jz	short loc_45079C
		cmp	ebx, 0Dh
		jnz	short loc_4507A9

loc_45079C:				; CODE XREF: .text:00450795j
		mov	eax, [ebp-18h]
		add	eax, [ebp-28h]
		mov	run.stepoverdest, eax
		jmp	short loc_4507B1
; ---------------------------------------------------------------------------

loc_4507A9:				; CODE XREF: .text:00450790j
					; .text:0045079Aj
		xor	edx, edx
		mov	run.stepoverdest, edx

loc_4507B1:				; CODE XREF: .text:004507A7j
		mov	ecx, [ebp-18h]
		push	ecx		; _addr
		call	Findmemory
		cmp	dword ptr [ebp-28h], 0
		pop	ecx
		jbe	short loc_450802
		test	byte ptr [ebp-1B22h], 80h
		jz	short loc_450802
		test	eax, eax
		jz	short loc_4507F7
		cmp	VersionInformation.dwPlatformId, 2
		jnz	short loc_4507F7
		cmp	VersionInformation.dwMajorVersion, 5
		jb	short loc_4507F7
		mov	eax, [eax+14h]
		and	eax, 0FFh
		cmp	eax, 2
		jnz	short loc_4507F7
		xor	edx, edx
		mov	[ebp-2Ch], edx
		jmp	loc_450B27
; ---------------------------------------------------------------------------

loc_4507F7:				; CODE XREF: .text:004507CCj
					; .text:004507D5j ...
		mov	ecx, [ebp-28h]
		mov	[ebp-2Ch], ecx
		jmp	loc_450B27
; ---------------------------------------------------------------------------

loc_450802:				; CODE XREF: .text:004507BFj
					; .text:004507C8j
		test	eax, eax
		jz	short loc_45084B
		cmp	VersionInformation.dwPlatformId, 2
		jnz	short loc_45084B
		cmp	VersionInformation.dwMajorVersion, 5
		jb	short loc_45084B
		mov	eax, [eax+14h]
		and	eax, 0FFh
		cmp	eax, 2
		jnz	short loc_45084B
		cmp	dword ptr [ebp-28h], 0
		jbe	short loc_45084B
		cmp	ebx, 0Fh
		jnz	short loc_45084B
		cmp	dword ptr [ebp-1AFCh], 0
		jz	short loc_45084B
		mov	edx, [ebp-28h]
		mov	[ebp-2Ch], edx
		mov	dword ptr [ebp-8], 1
		jmp	loc_450B27
; ---------------------------------------------------------------------------

loc_45084B:				; CODE XREF: .text:00450804j
					; .text:0045080Dj ...
		cmp	dword ptr [ebp+8], 6
		jz	short loc_450885
		cmp	dword ptr [ebp+8], 8
		jz	short loc_450885
		cmp	dword ptr [ebp+8], 9
		jz	short loc_450885
		cmp	dword ptr [ebp+8], 0Ah
		jz	short loc_450885
		cmp	dword ptr [ebp+8], 0Eh
		jz	short loc_450885
		cmp	dword ptr [ebp+8], 10h
		jz	short loc_450885
		cmp	dword ptr [ebp+8], 7
		jz	short loc_450885
		cmp	dword ptr [ebp+8], 0Bh
		jz	short loc_450885
		cmp	dword ptr [ebp+8], 0Dh
		jnz	loc_450B22

loc_450885:				; CODE XREF: .text:0045084Fj
					; .text:00450855j ...
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_4508AB
		mov	ecx, [ebp-18h]
		push	ecx		; arglist
		push	offset aOllydbgIsUna_2 ; "OllyDbg is unable to step over the comm"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		or	eax, 0FFFFFFFFh
		jmp	loc_451201
; ---------------------------------------------------------------------------

loc_4508AB:				; CODE XREF: .text:00450889j
		mov	edx, [ebp-28h]
		mov	[ebp-2Ch], edx
		cmp	dword ptr [ebp+8], 0Eh
		jnz	short loc_4508D1
		cmp	dword_5C8954, 0
		jz	short loc_4508D1
		cmp	ebx, 0Fh
		jz	short loc_4508CA
		cmp	ebx, 10h
		jnz	short loc_4508D1

loc_4508CA:				; CODE XREF: .text:004508C3j
		mov	dword ptr [ebp+8], 0Fh

loc_4508D1:				; CODE XREF: .text:004508B5j
					; .text:004508BEj ...
		cmp	dword ptr [ebp-2Ch], 2
		jb	short loc_450926
		cmp	word ptr [ebp-26Ch], 2ECDh
		jz	short loc_4508ED
		cmp	word ptr [ebp-26Ch], 340Fh
		jnz	short loc_450926

loc_4508ED:				; CODE XREF: .text:004508E0j
		push	0FFFFFFFFh	; addr1
		push	0		; addr0
		push	offset bppage	; sd
		call	Deletesorteddatarange
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_45090C
		mov	run.updatebppage, 1

loc_45090C:				; CODE XREF: .text:00450900j
		call	loc_4C826C
		test	eax, eax
		jle	short loc_450926
		or	dword ptr [edi+6F8h], 0Fh
		mov	run.updatedebugreg, 1

loc_450926:				; CODE XREF: .text:004508D5j
					; .text:004508EBj ...
		cmp	dword ptr [ebp-1B10h], 0
		jz	short loc_450939
		xor	ecx, ecx
		mov	[ebp-2Ch], ecx
		jmp	loc_450B27
; ---------------------------------------------------------------------------

loc_450939:				; CODE XREF: .text:0045092Dj
		cmp	zwcontinue, 0
		jz	loc_450A99
		cmp	ebx, 0Ch
		jnz	loc_450A99
		mov	eax, zwcontinue
		cmp	eax, [ebp-1AFCh]
		jnz	loc_450A99
		push	1		; mode
		push	4		; size
		mov	edx, [ebp-38h]
		mov	ecx, [edx+1Ch]
		push	ecx		; _addr
		lea	eax, [ebp-1Ch]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		cmp	ebx, 4
		jnz	loc_450A8D
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-1Ch]
		add	eax, 0B8h
		push	eax		; _addr
		lea	edx, [ebp-24h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		cmp	ebx, 4
		jnz	short loc_4509E9
		push	1		; mode
		push	1		; size
		mov	eax, [ebp-24h]
		push	eax		; _addr
		lea	edx, [ebp-31h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4509E0
		mov	ecx, [ebp-1Ch]
		add	ecx, 0B8h
		push	ecx		; arglist
		push	offset aTheContextStru ; "The CONTEXT structure	passed to ZwConti"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		or	eax, 0FFFFFFFFh
		jmp	loc_451201
; ---------------------------------------------------------------------------

loc_4509E0:				; CODE XREF: .text:004509B8j
		mov	edx, [ebp-24h]
		sub	edx, [ebp-18h]
		mov	[ebp-2Ch], edx

loc_4509E9:				; CODE XREF: .text:004509A0j
		cmp	bphard.sorted.n, 0
		jle	loc_450A8D
		push	0
		lea	ecx, [ebp-5Ch]
		push	ecx
		call	loc_44BE60
		add	esp, 8
		mov	ebx, eax
		test	bl, 1
		jz	short loc_450A22
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-1Ch]
		add	eax, 4
		push	eax		; _addr
		lea	edx, [ebp-5Ch]
		push	edx		; buf
		call	Writememory
		add	esp, 10h

loc_450A22:				; CODE XREF: .text:00450A09j
		test	bl, 2
		jz	short loc_450A3E
		push	1		; mode
		push	4		; size
		mov	ecx, [ebp-1Ch]
		add	ecx, 8
		push	ecx		; _addr
		lea	eax, [ebp-58h]
		push	eax		; buf
		call	Writememory
		add	esp, 10h

loc_450A3E:				; CODE XREF: .text:00450A25j
		test	bl, 4
		jz	short loc_450A5A
		push	1		; mode
		push	4		; size
		mov	edx, [ebp-1Ch]
		add	edx, 0Ch
		push	edx		; _addr
		lea	ecx, [ebp-54h]
		push	ecx		; buf
		call	Writememory
		add	esp, 10h

loc_450A5A:				; CODE XREF: .text:00450A41j
		test	bl, 8
		jz	short loc_450A76
		push	1		; mode
		push	4		; size
		mov	eax, [ebp-1Ch]
		add	eax, 10h
		push	eax		; _addr
		lea	edx, [ebp-50h]
		push	edx		; buf
		call	Writememory
		add	esp, 10h

loc_450A76:				; CODE XREF: .text:00450A5Dj
		push	1		; mode
		push	4		; size
		mov	ecx, [ebp-1Ch]
		add	ecx, 18h
		push	ecx		; _addr
		lea	eax, [ebp-40h]
		push	eax		; buf
		call	Writememory
		add	esp, 10h

loc_450A8D:				; CODE XREF: .text:0045097Cj
					; .text:004509F0j
		mov	dword ptr [ebp-10h], 1
		jmp	loc_450B27
; ---------------------------------------------------------------------------

loc_450A99:				; CODE XREF: .text:00450940j
					; .text:00450949j ...
		cmp	dword ptr [ebp+8], 7
		jz	short loc_450AB1
		cmp	dword ptr [ebp+8], 9
		jz	short loc_450AB1
		cmp	dword ptr [ebp+8], 0Bh
		jz	short loc_450AB1
		cmp	dword ptr [ebp+8], 0Dh
		jnz	short loc_450AF7

loc_450AB1:				; CODE XREF: .text:00450A9Dj
					; .text:00450AA3j ...
		cmp	dword_5CBB78, 0
		jz	short loc_450AD7
		cmp	ebx, 0Ch
		jnz	short loc_450AD7
		mov	edx, [ebp-1AFCh]
		push	edx		; _addr
		call	Followcall
		pop	ecx
		push	eax		; _addr
		call	Issystem
		pop	ecx
		test	eax, eax
		jnz	short loc_450B27

loc_450AD7:				; CODE XREF: .text:00450AB8j
					; .text:00450ABDj
		cmp	ebx, 5
		jnz	short loc_450AF0
		cmp	dword_5CBB7C, 0
		jz	short loc_450AF0
		mov	ecx, [ebp-18h]
		cmp	ecx, userspacelimit
		jb	short loc_450B27

loc_450AF0:				; CODE XREF: .text:00450ADAj
					; .text:00450AE3j
		xor	eax, eax
		mov	[ebp-2Ch], eax
		jmp	short loc_450B27
; ---------------------------------------------------------------------------

loc_450AF7:				; CODE XREF: .text:00450AAFj
		cmp	dword ptr [ebp+0Ch], 1
		jz	short loc_450B27
		cmp	ebx, 0Ch
		jz	short loc_450B27
		cmp	ebx, 0Dh
		jz	short loc_450B27
		cmp	ebx, 5
		jz	short loc_450B27
		cmp	ebx, 0Eh
		jz	short loc_450B27
		cmp	ebx, 15h
		jz	short loc_450B27
		cmp	ebx, 17h
		jz	short loc_450B27
		xor	edx, edx
		mov	[ebp-2Ch], edx
		jmp	short loc_450B27
; ---------------------------------------------------------------------------

loc_450B22:				; CODE XREF: .text:0045087Fj
		xor	ecx, ecx
		mov	[ebp-2Ch], ecx

loc_450B27:				; CODE XREF: .text:004507F2j
					; .text:004507FDj ...
		xor	eax, eax
		mov	[ebp-4], eax
		push	0		; subaddr
		mov	edx, [ebp-18h]
		push	edx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_450B86
		test	byte ptr [ebx+0Ah], 1
		jz	short loc_450B86
		cmp	run.restoreint3addr, 0
		jz	short loc_450B66
		push	offset aTemporarilyRem ; "Temporarily removed INT3 already pendin"...
		call	_T
		pop	ecx
		push	eax		; format
		call	loc_401D68
		pop	ecx

loc_450B66:				; CODE XREF: .text:00450B52j
		push	0FFFFFFFFh
		push	ebx
		call	loc_497418
		mov	eax, [ebp-18h]
		mov	edx, [ebp+10h]
		mov	[ebp-14h], edx
		mov	run.restoreint3addr, eax
		mov	dword ptr [ebp-4], 1
		add	esp, 8

loc_450B86:				; CODE XREF: .text:00450B43j
					; .text:00450B49j
		cmp	run.updatebppage, 0
		jz	short loc_450BB8
		mov	ecx, run.threadid
		cmp	ecx, [ebp+10h]
		jnz	short loc_450BA8
		mov	eax, [ebp-38h]
		mov	edx, [eax+8]
		cmp	edx, run._eip
		jz	short loc_450BB8

loc_450BA8:				; CODE XREF: .text:00450B98j
		push	1
		call	loc_4C6E78
		pop	ecx
		xor	ecx, ecx
		mov	run.updatebppage, ecx

loc_450BB8:				; CODE XREF: .text:00450B8Dj
					; .text:00450BA6j
		cmp	run.updatebppage, 0
		jnz	loc_450D5A
		cmp	bppage.n, 0
		jle	loc_450D5A
		cmp	dword ptr [ebp-28h], 0
		jbe	loc_450D5A
		test	byte ptr [ebp-1B10h], 1
		jnz	loc_450D5A
		xor	esi, esi
		lea	eax, [ebp-1AF0h]
		mov	[ebp-3Ch], eax

loc_450BF4:				; CODE XREF: .text:00450D54j
		cmp	esi, 4
		jnz	short loc_450C0E
		mov	edx, [ebp-18h]
		mov	[ebp-1Ch], edx
		mov	ecx, [ebp-28h]
		mov	[ebp-20h], ecx
		mov	dword ptr [ebp-30h], 800000h
		jmp	short loc_450C7B
; ---------------------------------------------------------------------------

loc_450C0E:				; CODE XREF: .text:00450BF7j
		mov	eax, [ebp-3Ch]
		mov	eax, [eax]
		test	ah, 1
		jz	loc_450D49
		test	eax, 1000000h
		jz	loc_450D49
		mov	edx, [ebp-3Ch]
		mov	ecx, [edx+4]
		and	ecx, 0FFh
		cmp	ecx, 27h
		jz	loc_450D49
		mov	eax, [ebp-3Ch]
		mov	edx, [eax+3Ch]
		mov	[ebp-1Ch], edx
		mov	ecx, [ebp-3Ch]
		mov	eax, [ecx+0Ch]
		mov	[ebp-20h], eax
		mov	edx, [ebp-3Ch]
		mov	eax, [edx+4]
		test	eax, 10000000h
		jz	short loc_450C64
		mov	dword ptr [ebp-30h], 400000h
		jmp	short loc_450C7B
; ---------------------------------------------------------------------------

loc_450C64:				; CODE XREF: .text:00450C59j
		test	eax, 20000000h
		jz	short loc_450C74
		mov	dword ptr [ebp-30h], (offset stru_5FF23C.text+0DC0h)
		jmp	short loc_450C7B
; ---------------------------------------------------------------------------

loc_450C74:				; CODE XREF: .text:00450C69j
		mov	dword ptr [ebp-30h], 200000h

loc_450C7B:				; CODE XREF: .text:00450C0Cj
					; .text:00450C62j ...
		mov	ebx, [ebp-1Ch]
		jmp	loc_450D15
; ---------------------------------------------------------------------------

loc_450C83:				; CODE XREF: .text:00450D1Dj
		push	eax		; addr1
		push	ebx		; addr0
		push	offset bpmem.sorted ; sd
		call	Findsorteddatarange
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_450D23
		mov	eax, [ebx+8]
		and	eax, [ebp-30h]
		mov	edx, [ebx+8]
		test	edx, 20000h
		jnz	short loc_450D0E
		test	eax, eax
		jz	short loc_450D0E
		lea	ecx, [ebp-25Ch]
		push	ecx
		mov	eax, [ebp+10h]
		push	eax
		mov	ecx, [ebp-18h]
		push	ecx
		mov	eax, [ebx]
		push	eax
		push	edx
		push	54h
		call	loc_44CAAC
		add	esp, 18h
		mov	[ebp-0Ch], eax
		mov	edx, [ebx+8]
		and	edx, 0C000000h
		cmp	edx, 0C000000h
		jz	short loc_450CF9
		mov	ecx, [ebx+8]
		and	ecx, 0C000000h
		cmp	ecx, 4000000h
		jnz	short loc_450D0E
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_450D0E

loc_450CF9:				; CODE XREF: .text:00450CE0j
		mov	eax, [ebp+10h]	; int
		push	eax		; int
		mov	edx, [ebp-18h]	; int
		push	edx		; int
		mov	ecx, [ebx]	; int
		push	ecx		; int
		push	54h		; int
		call	loc_44CC24
		add	esp, 10h

loc_450D0E:				; CODE XREF: .text:00450CABj
					; .text:00450CAFj ...
		mov	eax, [ebx]
		add	eax, [ebx+4]
		mov	ebx, eax

loc_450D15:				; CODE XREF: .text:00450C7Ej
		mov	eax, [ebp-1Ch]
		add	eax, [ebp-20h]
		cmp	ebx, eax
		jb	loc_450C83

loc_450D23:				; CODE XREF: .text:00450C96j
		mov	edx, [ebp-1Ch]
		add	edx, [ebp-20h]
		push	edx		; addr1
		mov	ecx, [ebp-1Ch]
		push	ecx		; addr0
		push	offset bppage	; sd
		call	Deletesorteddatarange
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_450D49
		mov	run.updatebppage, 1

loc_450D49:				; CODE XREF: .text:00450C16j
					; .text:00450C21j ...
		inc	esi
		add	dword ptr [ebp-3Ch], 460h
		cmp	esi, 5
		jl	loc_450BF4

loc_450D5A:				; CODE XREF: .text:00450BBFj
					; .text:00450BCCj ...
		cmp	run.updatebppage, 0
		jz	short loc_450D70
		mov	eax, [ebp+10h]
		mov	[ebp-14h], eax
		mov	dword ptr [ebp-4], 1

loc_450D70:				; CODE XREF: .text:00450D61j
		cmp	bphard.sorted.n, 0
		jle	loc_450F0B
		xor	ebx, ebx

loc_450D7F:				; CODE XREF: .text:00450F05j
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bphard.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jz	loc_450F01
		test	byte ptr [esi+0Ah], 80h
		jz	loc_450F01
		test	byte ptr [esi+0Ah], 2
		jnz	loc_450F01
		mov	eax, [esi+0Ch]
		cmp	eax, [ebp-18h]
		jnz	loc_450F01
		mov	ecx, ebx
		mov	edx, 1
		shl	edx, cl
		and	edx, [edi+6F8h]
		jnz	loc_450F01
		mov	ecx, ebx
		mov	eax, 1
		shl	eax, cl
		and	eax, [edi+6FCh]
		jnz	loc_450EDB
		lea	edx, [ebp-25Ch]
		push	edx
		mov	eax, [ebp+10h]
		push	eax
		mov	edx, [ebp-18h]
		push	edx
		push	ebx
		mov	ecx, [esi+8]
		push	ecx
		push	57h
		call	loc_44CAAC
		add	esp, 18h
		mov	[ebp-0Ch], eax
		mov	eax, [esi+8]
		and	eax, 0C000000h
		cmp	eax, 0C000000h
		jz	short loc_450E2A
		mov	edx, [esi+8]
		and	edx, 0C000000h	; int
		cmp	edx, 4000000h
		jnz	short loc_450E3D
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_450E3D

loc_450E2A:				; CODE XREF: .text:00450E11j
		mov	ecx, [ebp+10h]	; int
		push	ecx		; int
		mov	eax, [ebp-18h]	; int
		push	eax		; int
		push	ebx		; int
		push	57h		; int
		call	loc_44CC24
		add	esp, 10h

loc_450E3D:				; CODE XREF: .text:00450E22j
					; .text:00450E28j
		cmp	dword ptr [ebp-28h], 0
		jbe	short loc_450E8D
		mov	edx, [ebp-30h]
		and	edx, 30000000h
		cmp	edx, 30000000h
		jz	short loc_450E6B
		mov	ecx, [ebp-30h]
		and	ecx, 30000000h
		cmp	ecx, 10000000h
		jnz	short loc_450E8D
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_450E8D

loc_450E6B:				; CODE XREF: .text:00450E52j
		mov	eax, [ebp-38h]
		push	eax		; int
		lea	edx, [ebp-1B3Ch]
		push	edx		; int
		lea	ecx, [ebp-26Ch]	; int
		push	ecx		; src
		mov	eax, [esi+14h]	; int
		push	eax		; int
		mov	edx, [ebp-18h]	; int
		push	edx		; int
		call	loc_44CFD4
		add	esp, 14h

loc_450E8D:				; CODE XREF: .text:00450E41j
					; .text:00450E63j ...
		cmp	dword ptr [ebp-28h], 0
		jbe	short loc_450ECC
		mov	ecx, [ebp-30h]
		and	ecx, 0C0000000h
		cmp	ecx, 0C0000000h
		jz	short loc_450EB9
		mov	eax, [ebp-30h]
		and	eax, 0C0000000h
		cmp	eax, 40000000h
		jnz	short loc_450ECC
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_450ECC

loc_450EB9:				; CODE XREF: .text:00450EA2j
		mov	edx, [ebp-38h]	; int
		mov	ecx, [edx+0Ch]	; int
		push	ecx		; char
		mov	eax, [ebp-18h]	; int
		push	eax		; int
		call	loc_44D420
		add	esp, 8

loc_450ECC:				; CODE XREF: .text:00450E91j
					; .text:00450EB1j ...
		mov	ecx, ebx
		mov	edx, 1
		shl	edx, cl
		or	[edi+6FCh], edx

loc_450EDB:				; CODE XREF: .text:00450DDDj
		mov	ecx, ebx
		mov	eax, 1
		shl	eax, cl
		or	[edi+6F8h], eax
		mov	run.updatedebugreg, 1
		mov	edx, [ebp+10h]
		mov	[ebp-14h], edx
		mov	dword ptr [ebp-4], 1

loc_450F01:				; CODE XREF: .text:00450D93j
					; .text:00450D9Dj ...
		inc	ebx
		cmp	ebx, 4
		jl	loc_450D7F

loc_450F0B:				; CODE XREF: .text:00450D77j
		cmp	dword ptr [ebp-2Ch], 0
		jbe	short loc_450F84
		push	0
		mov	eax, [ebp-10h]
		push	eax
		push	0
		push	4000h
		cmp	dword ptr [ebp-8], 0
		jz	short loc_450F2C
		mov	edx, [ebp-1AFCh]
		jmp	short loc_450F32
; ---------------------------------------------------------------------------

loc_450F2C:				; CODE XREF: .text:00450F22j
		mov	edx, [ebp-18h]
		add	edx, [ebp-2Ch]

loc_450F32:				; CODE XREF: .text:00450F2Aj
		push	edx
		call	loc_44F6D0
		add	esp, 14h
		test	eax, eax
		jz	short loc_450F7E
		cmp	dword ptr [ebp-8], 0
		jz	short loc_450F52
		push	offset aDestination ; "destination"
		call	_T
		pop	ecx
		jmp	short loc_450F5D
; ---------------------------------------------------------------------------

loc_450F52:				; CODE XREF: .text:00450F43j
		push	offset aNextCommand ; "next command"
		call	_T
		pop	ecx

loc_450F5D:				; CODE XREF: .text:00450F50j
		push	eax
		mov	eax, [ebp-18h]
		push	eax		; arglist
		push	offset aOllydbgIsUna_3 ; "OllyDbg is unable to step over the comm"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 0Ch
		or	eax, 0FFFFFFFFh
		jmp	loc_451201
; ---------------------------------------------------------------------------

loc_450F7E:				; CODE XREF: .text:00450F3Dj
		mov	edx, [ebp+10h]
		mov	[ebp-14h], edx

loc_450F84:				; CODE XREF: .text:00450F0Fj
		cmp	dword ptr [ebp+0Ch], 1
		jnz	short loc_450FD6
		cmp	kiuserexcept, 0
		jz	short loc_450FD6
		cmp	dword ptr [edi+6C8h], 0
		jz	short loc_450FD6
		push	0
		mov	ecx, [ebp-10h]
		push	ecx
		push	0
		push	4000h
		mov	eax, kiuserexcept
		push	eax
		call	loc_44F6D0
		add	esp, 14h
		test	eax, eax
		jz	short loc_450FD6
		mov	edx, kiuserexcept
		push	edx		; arglist
		push	offset aOllydbgIsUnabl ; "OllyDbg is unable to set temporary brea"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8

loc_450FD6:				; CODE XREF: .text:00450F88j
					; .text:00450F91j ...
		cmp	dword ptr [ebp+0Ch], 1
		jnz	short loc_451031
		cmp	dword_5C8A90, 0
		jz	short loc_451031
		cmp	ntqueryinfo, 0
		jz	short loc_451031
		cmp	VersionInformation.dwPlatformId, 1
		jz	short loc_451031
		push	0
		mov	ecx, [ebp-10h]
		push	ecx
		push	0
		push	4000h
		mov	eax, ntqueryinfo
		push	eax
		call	loc_44F6D0
		add	esp, 14h
		test	eax, eax
		jz	short loc_451031
		mov	edx, ntqueryinfo
		push	edx		; arglist
		push	offset aOllydbgIsUn_10 ; "OllyDbg is unable to set temporary brea"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8

loc_451031:				; CODE XREF: .text:00450FDAj
					; .text:00450FE3j ...
		cmp	dword_5CBB98, 0
		jz	short loc_45107C
		xor	esi, esi
		jmp	short loc_451074
; ---------------------------------------------------------------------------

loc_45103E:				; CODE XREF: .text:0045107Aj
		push	esi		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_451073
		cmp	dword ptr [eax+4ECh], 0
		jz	short loc_451073
		lea	edx, [eax+328h]
		push	edx		; int
		push	0		; int
		push	0		; src
		mov	eax, [eax+330h]
		push	eax		; int
		call	loc_44D6A0
		add	esp, 10h

loc_451073:				; CODE XREF: .text:0045104Ej
					; .text:00451057j
		inc	esi

loc_451074:				; CODE XREF: .text:0045103Cj
		cmp	esi, thread.sorted.n
		jl	short loc_45103E

loc_45107C:				; CODE XREF: .text:00451038j
		cmp	dword ptr [ebp-2Ch], 0
		jnz	short loc_4510B2
		cmp	dword ptr [ebp-4], 1
		jz	short loc_45108E
		cmp	dword ptr [ebp+8], 3
		jz	short loc_4510B2

loc_45108E:				; CODE XREF: .text:00451086j
		test	byte ptr [edi+355h], 1
		jnz	short loc_4510B2
		or	dword ptr [edi+354h], 100h
		or	dword ptr [edi+328h], 1
		mov	dword ptr [edi+6C4h], 1

loc_4510B2:				; CODE XREF: .text:00451080j
					; .text:0045108Cj ...
		mov	ecx, [ebp-14h]
		push	ecx		; arglist
		call	loc_4503B8
		pop	ecx
		test	eax, eax
		jz	short loc_4510C8
		or	eax, 0FFFFFFFFh
		jmp	loc_451201
; ---------------------------------------------------------------------------

loc_4510C8:				; CODE XREF: .text:004510BEj
		mov	edx, [ebp-14h]
		xor	esi, esi
		mov	run.threadid, edx
		jmp	short loc_451127
; ---------------------------------------------------------------------------

loc_4510D5:				; CODE XREF: .text:0045112Dj
		push	esi		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jz	short loc_451126
		cmp	dword ptr [edi+4ECh], 0
		jz	short loc_451126
		push	esi
		push	edi
		lea	esi, [edi+328h]
		add	edi, 4F0h
		mov	ecx, 71h
		rep movsd
		pop	edi
		pop	esi
		cmp	dword ptr [edi+6C4h], 0
		jz	short loc_45111C
		and	dword ptr [edi+51Ch], 0FFFFFEFFh

loc_45111C:				; CODE XREF: .text:00451110j
		mov	dword ptr [edi+6B4h], 1

loc_451126:				; CODE XREF: .text:004510E7j
					; .text:004510F0j
		inc	esi

loc_451127:				; CODE XREF: .text:004510D3j
		cmp	esi, thread.sorted.n
		jl	short loc_4510D5
		push	offset module.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		push	offset thread.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		push	offset memory.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		cmp	dword_5CBB94, 0
		jz	short loc_451178
		mov	eax, [ebp-38h]
		lea	edx, [ebp-1B3Ch]
		push	eax		; t_reg	*
		push	edi		; int
		push	edx		; t_disasm *
		lea	ecx, [ebp-26Ch]
		push	ecx		; src
		mov	eax, [ebp-18h]
		push	eax		; int
		call	loc_44DA78
		add	esp, 14h

loc_451178:				; CODE XREF: .text:00451157j
		mov	edx, [ebp+8]
		push	edx		; newstatus
		call	Setstatus
		pop	ecx
		call	Flushmemorycache
		push	1
		call	loc_44C84C
		pop	ecx
		push	0		; dwSize
		push	0		; lpBaseAddress
		mov	ecx, process
		push	ecx		; hProcess
		call	FlushInstructionCache
		cmp	run.netevent, 103h
		jnz	short loc_4511C2
		cmp	dword ptr [ebp+0Ch], 0
		mov	eax, 80010001h
		jg	short loc_4511BB
		add	eax, 80000001h

loc_4511BB:				; CODE XREF: .text:004511B4j
		mov	run.netevent, eax
		jmp	short loc_4511E6
; ---------------------------------------------------------------------------

loc_4511C2:				; CODE XREF: .text:004511A9j
		cmp	dword ptr [ebp+0Ch], 0
		mov	edx, 80010001h
		jg	short loc_4511D3
		add	edx, 80000001h

loc_4511D3:				; CODE XREF: .text:004511CBj
		push	edx		; dwContinueStatus
		mov	ecx, run.de.dwThreadId
		push	ecx		; dwThreadId
		mov	eax, run.de.dwProcessId
		push	eax		; dwProcessId
		call	ContinueDebugEvent

loc_4511E6:				; CODE XREF: .text:004511C0j
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		push	0		; format
		call	Info
		pop	ecx
		xor	eax, eax

loc_451201:				; CODE XREF: .text:004505C8j
					; .text:004505F1j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 201. _Run
; Exported entry 502. Run

; int __cdecl Run(t_status status, int pass)
		public Run
Run:					; CODE XREF: .text:0040B196p
					; .text:0040B1B1p ...
		push	ebp		; _Run
		mov	ebp, esp
		push	0		; int
		mov	eax, [ebp+0Ch]	; int
		push	eax		; pass
		mov	edx, [ebp+8]	; int
		push	edx		; status
		call	Runthread
		add	esp, 0Ch
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_451220:				; CODE XREF: .text:00415F7Bp
					; .text:004D10DAp
		push	ebp
		mov	ebp, esp
		cmp	dword_5C8940, 0
		jz	loc_451303
		cmp	run.status, 0
		jz	loc_451303
		cmp	run.status, 13h
		jz	loc_451303
		mov	eax, kiuserexcept
		test	eax, eax
		jz	short loc_45126F
		push	0		; exprtype
		push	0		; expression
		push	0		; condition
		push	1		; actions
		push	0FFFFFFFFh	; count
		push	0FFFFFFFFh	; limit
		push	0FFFFFFFFh	; fnindex
		push	4000h		; type
		push	eax		; _addr
		call	Setint3breakpoint
		add	esp, 24h

loc_45126F:				; CODE XREF: .text:00451251j
		mov	eax, zwcontinue
		test	eax, eax
		jz	short loc_451294
		push	0		; exprtype
		push	0		; expression
		push	0		; condition
		push	1		; actions
		push	0FFFFFFFFh	; count
		push	0FFFFFFFFh	; limit
		push	0FFFFFFFFh	; fnindex
		push	4000h		; type
		push	eax		; _addr
		call	Setint3breakpoint
		add	esp, 24h

loc_451294:				; CODE XREF: .text:00451276j
		mov	eax, dword_5D5530
		test	eax, eax
		jz	short loc_4512B9
		push	0		; exprtype
		push	0		; expression
		push	0		; condition
		push	1		; actions
		push	0FFFFFFFFh	; count
		push	0FFFFFFFFh	; limit
		push	0FFFFFFFFh	; fnindex
		push	4000h		; type
		push	eax		; _addr
		call	Setint3breakpoint
		add	esp, 24h

loc_4512B9:				; CODE XREF: .text:0045129Bj
		mov	eax, uefilter
		test	eax, eax
		jz	short loc_4512DE
		push	0		; exprtype
		push	0		; expression
		push	0		; condition
		push	1		; actions
		push	0FFFFFFFFh	; count
		push	0FFFFFFFFh	; limit
		push	0FFFFFFFFh	; fnindex
		push	4000h		; type
		push	eax		; _addr
		call	Setint3breakpoint
		add	esp, 24h

loc_4512DE:				; CODE XREF: .text:004512C0j
		mov	eax, ntqueryinfo
		test	eax, eax
		jz	short loc_451303
		push	0		; exprtype
		push	0		; expression
		push	0		; condition
		push	1		; actions
		push	0FFFFFFFFh	; count
		push	0FFFFFFFFh	; limit
		push	0FFFFFFFFh	; fnindex
		push	4000h		; type
		push	eax		; _addr
		call	Setint3breakpoint
		add	esp, 24h

loc_451303:				; CODE XREF: .text:0045122Aj
					; .text:00451237j ...
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		