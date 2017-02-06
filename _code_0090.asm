.code

; MENUFUNC loc_4B331C
loc_4B331C:				; DATA XREF: .text:004C0061o
					; .data:stru_5524A0o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		cmp	dword_5FA98C, 0
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, [ebp+8]
		mov	eax, [ebp+14h]
		mov	esi, [ebp+10h]
		jz	short loc_4B335E
		mov	edx, pd
		cmp	dword ptr [edx+298h], 0
		jnz	short loc_4B335E
		mov	ecx, pd
		test	byte ptr [ecx+0Bh], 8
		jnz	short loc_4B335E
		cmp	dword_5FA960, 0C0000h
		jz	short loc_4B3365

loc_4B335E:				; CODE XREF: .text:004B3335j
					; .text:004B3344j ...
		xor	eax, eax
		jmp	loc_4B34EC
; ---------------------------------------------------------------------------

loc_4B3365:				; CODE XREF: .text:004B335Cj
		test	eax, eax
		jnz	short loc_4B3373
		mov	eax, 1
		jmp	loc_4B34EC
; ---------------------------------------------------------------------------

loc_4B3373:				; CODE XREF: .text:004B3367j
		dec	eax
		jnz	loc_4B34EA
		push	0		; subaddr
		mov	edx, pd
		mov	ecx, [edx+288h]
		push	ecx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4B33B9
		mov	eax, pd
		mov	edx, [eax+288h]
		push	edx		; _addr
		call	Confirmint3breakpoint
		pop	ecx
		test	eax, eax
		jz	short loc_4B33B9
		xor	eax, eax
		jmp	loc_4B34EC
; ---------------------------------------------------------------------------

loc_4B33B9:				; CODE XREF: .text:004B339Aj
					; .text:004B33B0j
		test	esi, esi
		jnz	short loc_4B3439
		test	ebx, ebx
		jz	short loc_4B33E6
		test	byte ptr [ebx+9], 10h
		jz	short loc_4B33E6
		push	1000h		; type
		mov	edx, pd
		mov	ecx, [edx+288h]
		push	ecx		; _addr
		call	Removeint3breakpoint
		add	esp, 8
		jmp	loc_4B34E3
; ---------------------------------------------------------------------------

loc_4B33E6:				; CODE XREF: .text:004B33BFj
					; .text:004B33C5j
		push	$CTW0("") ; exprtype
		push	$CTW0("") ; expression
		push	$CTW0("") ; condition
		push	0		; actions
		push	0		; count
		mov	eax, pd
		push	0		; limit
		push	0		; fnindex
		push	3001000h	; type
		mov	edx, [eax+288h]
		push	edx		; _addr
		call	Setint3breakpoint
		add	esp, 24h
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4B34E3
		push	offset aUnableToSetB_9 ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_4B34EC
; ---------------------------------------------------------------------------

loc_4B3439:				; CODE XREF: .text:004B33BBj
		lea	edx, [ebp-8]
		mov	ecx, pd
		push	edx		; coord
		add	ecx, 18h
		push	2		; column
		push	ecx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B345E
		or	eax, 0FFFFFFFFh
		mov	[ebp-4], eax
		mov	[ebp-8], eax

loc_4B345E:				; CODE XREF: .text:004B3453j
		cmp	esi, 1
		jnz	short loc_4B3494
		mov	eax, pd
		mov	edx, [eax+24Ch]
		add	eax, 288h
		push	edx		; fi
		mov	ecx, [ebp-4]	; int
		push	ecx		; y
		mov	edx, [ebp-8]	; int
		push	edx		; x
		push	0		; _title
		push	1		; naddr
		push	eax		; _addr
		mov	eax, [edi+22Ch]	; int
		push	eax		; hparent
		call	Condbreakpoint
		add	esp, 1Ch
		mov	ebx, eax
		jmp	short loc_4B34C5
; ---------------------------------------------------------------------------

loc_4B3494:				; CODE XREF: .text:004B3461j
		mov	eax, pd
		mov	edx, [eax+24Ch]
		add	eax, 288h
		push	edx		; fi
		mov	ecx, [ebp-4]	; int
		push	ecx		; y
		mov	edx, [ebp-8]	; int
		push	edx		; x
		push	0		; _title
		push	0		; fnindex
		push	1		; naddr
		push	eax		; _addr
		mov	eax, [edi+22Ch]	; int
		push	eax		; hparent
		call	Condlogbreakpoint
		add	esp, 20h
		mov	ebx, eax

loc_4B34C5:				; CODE XREF: .text:004B3492j
		test	ebx, ebx
		jge	short loc_4B34DB
		push	offset aUnableToSetB_9 ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4B34DB:				; CODE XREF: .text:004B34C7j
		test	ebx, ebx
		jg	short loc_4B34E3
		xor	eax, eax
		jmp	short loc_4B34EC
; ---------------------------------------------------------------------------

loc_4B34E3:				; CODE XREF: .text:004B33E1j
					; .text:004B341Aj ...
		mov	eax, 1
		jmp	short loc_4B34EC
; ---------------------------------------------------------------------------

loc_4B34EA:				; CODE XREF: .text:004B3374j
		xor	eax, eax

loc_4B34EC:				; CODE XREF: .text:004B3360j
					; .text:004B336Ej ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4B34F4@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B34F4:				; DATA XREF: .data:stru_5524A0o
		push	ebp		; arglist
		mov	ebp, esp
		mov	eax, [ebp+14h]
		cmp	dword_5FA98C, 0
		jz	short loc_4B352A
		mov	edx, pd
		cmp	dword ptr [edx+298h], 0
		jnz	short loc_4B352A
		mov	ecx, pd
		test	byte ptr [ecx+0Bh], 8
		jnz	short loc_4B352A
		cmp	dword_5FA960, 0C0000h
		jz	short loc_4B352E

loc_4B352A:				; CODE XREF: .text:004B3501j
					; .text:004B3510j ...
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B352E:				; CODE XREF: .text:004B3528j
		test	eax, eax
		jnz	short loc_4B3546
		cmp	run.status, 12h
		jz	short loc_4B353F
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B353F:				; CODE XREF: .text:004B3539j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B3546:				; CODE XREF: .text:004B3530j
		dec	eax
		jnz	short loc_4B3596
		push	0
		mov	edx, pd
		push	0
		push	0
		push	2200h
		mov	ecx, [edx+288h]
		push	ecx
		call	loc_44F6D0
		add	esp, 14h
		test	eax, eax
		jz	short loc_4B3583
		push	offset aUnableToSetT_0 ; "Unable to set	temporary breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B3583:				; CODE XREF: .text:004B356Bj
		push	0		; pass
		push	4		; status
		call	Run
		add	esp, 8
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B3596:				; CODE XREF: .text:004B3547j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B359C:				; DATA XREF: .data:stru_5524A0o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+14h]
		mov	esi, [ebp+10h]
		cmp	dword_5FA98C, 0
		jz	short loc_4B35D6
		mov	eax, pd
		cmp	dword ptr [eax+298h], 0
		jnz	short loc_4B35D6
		mov	edx, pd
		test	byte ptr [edx+0Bh], 8
		jnz	short loc_4B35D6
		cmp	dword_5FA960, 0C0000h
		jz	short loc_4B35DA

loc_4B35D6:				; CODE XREF: .text:004B35AEj
					; .text:004B35BCj ...
		xor	eax, eax
		jmp	short loc_4B364E
; ---------------------------------------------------------------------------

loc_4B35DA:				; CODE XREF: .text:004B35D4j
		push	0		; subaddr
		mov	edx, pd
		mov	ecx, [edx+288h]
		push	ecx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4B3600
		test	byte ptr [eax+9], 10h
		jnz	short loc_4B3604

loc_4B3600:				; CODE XREF: .text:004B35F8j
		xor	eax, eax
		jmp	short loc_4B364E
; ---------------------------------------------------------------------------

loc_4B3604:				; CODE XREF: .text:004B35FEj
		test	ebx, ebx
		jnz	short loc_4B362C
		test	esi, esi
		jnz	short loc_4B3616
		test	byte ptr [eax+0Ah], 2
		jz	short loc_4B3616
		xor	eax, eax
		jmp	short loc_4B364E
; ---------------------------------------------------------------------------

loc_4B3616:				; CODE XREF: .text:004B360Aj
					; .text:004B3610j
		cmp	esi, 1
		jnz	short loc_4B3625
		test	byte ptr [eax+0Ah], 2
		jnz	short loc_4B3625
		xor	eax, eax
		jmp	short loc_4B364E
; ---------------------------------------------------------------------------

loc_4B3625:				; CODE XREF: .text:004B3619j
					; .text:004B361Fj
		mov	eax, 1
		jmp	short loc_4B364E
; ---------------------------------------------------------------------------

loc_4B362C:				; CODE XREF: .text:004B3606j
		dec	ebx
		jnz	short loc_4B364C
		push	esi		; enable
		mov	edx, pd
		mov	ecx, [edx+288h]
		push	ecx		; _addr
		call	Enableint3breakpoint
		add	esp, 8
		mov	eax, 1
		jmp	short loc_4B364E
; ---------------------------------------------------------------------------

loc_4B364C:				; CODE XREF: .text:004B362Dj
		xor	eax, eax

loc_4B364E:				; CODE XREF: .text:004B35D8j
					; .text:004B3602j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4B3654@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B3654:				; DATA XREF: .data:stru_5524A0o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		cmp	dword_5FA98C, 0
		push	ebx
		push	esi
		push	edi		; arglist
		mov	esi, offset pd
		mov	eax, [ebp+14h]
		jz	short loc_4B3681
		mov	edx, [esi]
		cmp	dword ptr [edx+298h], 0
		jnz	short loc_4B3681
		mov	ecx, [esi]
		test	byte ptr [ecx+0Bh], 8
		jz	short loc_4B3688

loc_4B3681:				; CODE XREF: .text:004B366Cj
					; .text:004B3677j
		xor	eax, eax
		jmp	loc_4B37E7
; ---------------------------------------------------------------------------

loc_4B3688:				; CODE XREF: .text:004B367Fj
		test	eax, eax
		jnz	short loc_4B3696
		mov	eax, 1
		jmp	loc_4B37E7
; ---------------------------------------------------------------------------

loc_4B3696:				; CODE XREF: .text:004B368Aj
		dec	eax
		jnz	loc_4B37E5
		push	0		; subaddr
		mov	edx, [esi]
		mov	ecx, [edx+288h]
		push	ecx		; _addr
		push	offset bpmem.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4B36F7
		mov	edx, [esi]
		mov	ecx, [edx+288h]
		cmp	ecx, [eax]
		jb	short loc_4B36F7
		mov	edx, [eax]
		mov	ecx, [esi]
		add	edx, [eax+4]
		cmp	edx, [ecx+28Ch]
		jb	short loc_4B36F7
		mov	edx, [esi]
		mov	ecx, [edx]
		cmp	ecx, [eax]
		ja	short loc_4B36F7
		mov	edx, [esi]
		mov	ecx, [edx]
		add	ecx, [edx+4]
		mov	edx, [eax]
		add	edx, [eax+4]
		cmp	ecx, edx
		jb	short loc_4B36F7
		mov	edx, [eax]
		mov	ebx, edx
		mov	edi, edx
		add	edi, [eax+4]
		jmp	short loc_4B3705
; ---------------------------------------------------------------------------

loc_4B36F7:				; CODE XREF: .text:004B36B7j
					; .text:004B36C3j ...
		mov	eax, [esi]
		mov	ebx, [eax+288h]
		mov	edi, [eax+28Ch]

loc_4B3705:				; CODE XREF: .text:004B36F5j
		lea	eax, [ebp-8]
		push	eax		; coord
		push	2		; column
		mov	edx, [esi]
		add	edx, 18h
		push	edx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B3726
		or	ecx, 0FFFFFFFFh
		mov	[ebp-4], ecx
		mov	[ebp-8], ecx

loc_4B3726:				; CODE XREF: .text:004B371Bj
		cmp	dword_5FA960, 0C0000h
		jz	short loc_4B3736
		xor	eax, eax
		jmp	short loc_4B3770
; ---------------------------------------------------------------------------

loc_4B3736:				; CODE XREF: .text:004B3730j
		mov	eax, decode
		test	eax, eax
		jnz	short loc_4B3746
		mov	eax, 600h
		jmp	short loc_4B3770
; ---------------------------------------------------------------------------

loc_4B3746:				; CODE XREF: .text:004B373Dj
		mov	edx, [esi]
		mov	ecx, ebx
		sub	ecx, [edx]
		movzx	eax, byte ptr [eax+ecx]
		and	eax, 1Fh
		cmp	eax, 1Ch
		jz	short loc_4B3767
		cmp	eax, 1Dh
		jz	short loc_4B3767
		cmp	eax, 1Eh
		jz	short loc_4B3767
		cmp	eax, 1Fh
		jnz	short loc_4B376E

loc_4B3767:				; CODE XREF: .text:004B3756j
					; .text:004B375Bj ...
		mov	eax, 600h
		jmp	short loc_4B3770
; ---------------------------------------------------------------------------

loc_4B376E:				; CODE XREF: .text:004B3765j
		xor	eax, eax

loc_4B3770:				; CODE XREF: .text:004B3734j
					; .text:004B3744j ...
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4B37A0
		push	eax		; mode
		mov	edx, [esi]
		mov	ecx, [edx+24Ch]
		push	ecx		; fi
		mov	eax, [ebp-4]
		push	eax		; y
		mov	edx, [ebp-8]	; int
		push	edx		; x
		sub	edi, ebx
		push	edi		; size
		push	ebx		; _addr
		mov	ecx, [ebp+8]	; int
		mov	eax, [ecx+22Ch]	; int
		push	eax		; hparent
		call	Membreakpoint
		add	esp, 1Ch
		jmp	short loc_4B37C8
; ---------------------------------------------------------------------------

loc_4B37A0:				; CODE XREF: .text:004B3774j
		push	eax		; mode
		mov	edx, [esi]
		mov	ecx, [edx+24Ch]
		push	ecx		; fi
		mov	eax, [ebp-4]
		push	eax		; y
		mov	edx, [ebp-8]	; int
		push	edx		; x
		sub	edi, ebx
		push	edi		; size
		push	ebx		; _addr
		mov	ecx, [ebp+8]	; int
		mov	eax, [ecx+22Ch]	; int
		push	eax		; hparent
		call	Memlogbreakpoint
		add	esp, 1Ch

loc_4B37C8:				; CODE XREF: .text:004B379Ej
		test	eax, eax
		jge	short loc_4B37DE
		push	offset aUnableToSetB_9 ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4B37DE:				; CODE XREF: .text:004B37CAj
		mov	eax, 1
		jmp	short loc_4B37E7
; ---------------------------------------------------------------------------

loc_4B37E5:				; CODE XREF: .text:004B3697j
		xor	eax, eax

loc_4B37E7:				; CODE XREF: .text:004B3683j
					; .text:004B3691j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4B37F0:				; DATA XREF: .data:stru_5524A0o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+10h]
		cmp	dword_5FA98C, 0
		jz	short loc_4B381E
		mov	eax, pd
		cmp	dword ptr [eax+298h], 0
		jnz	short loc_4B381E
		mov	edx, pd
		test	byte ptr [edx+0Bh], 8
		jz	short loc_4B3822

loc_4B381E:				; CODE XREF: .text:004B3802j
					; .text:004B3810j
		xor	eax, eax
		jmp	short loc_4B3896
; ---------------------------------------------------------------------------

loc_4B3822:				; CODE XREF: .text:004B381Cj
		push	0		; subaddr
		mov	edx, pd
		mov	ecx, [edx+288h]
		push	ecx		; _addr
		push	offset bpmem.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4B3846
		xor	eax, eax
		jmp	short loc_4B3896
; ---------------------------------------------------------------------------

loc_4B3846:				; CODE XREF: .text:004B3840j
		test	esi, esi
		jnz	short loc_4B386E
		test	ebx, ebx
		jnz	short loc_4B3858
		test	byte ptr [eax+0Ah], 2
		jz	short loc_4B3858
		xor	eax, eax
		jmp	short loc_4B3896
; ---------------------------------------------------------------------------

loc_4B3858:				; CODE XREF: .text:004B384Cj
					; .text:004B3852j
		cmp	ebx, 1
		jnz	short loc_4B3867
		test	byte ptr [eax+0Ah], 2
		jnz	short loc_4B3867
		xor	eax, eax
		jmp	short loc_4B3896
; ---------------------------------------------------------------------------

loc_4B3867:				; CODE XREF: .text:004B385Bj
					; .text:004B3861j
		mov	eax, 1
		jmp	short loc_4B3896
; ---------------------------------------------------------------------------

loc_4B386E:				; CODE XREF: .text:004B3848j
		dec	esi
		jnz	short loc_4B3894
		cmp	ebx, 2
		jnz	short loc_4B3881
		mov	edx, [eax]
		push	edx		; _addr
		call	Removemembreakpoint
		pop	ecx
		jmp	short loc_4B388D
; ---------------------------------------------------------------------------

loc_4B3881:				; CODE XREF: .text:004B3874j
		push	ebx		; enable
		mov	ecx, [eax]
		push	ecx		; _addr
		call	Enablemembreakpoint
		add	esp, 8

loc_4B388D:				; CODE XREF: .text:004B387Fj
		mov	eax, 1
		jmp	short loc_4B3896
; ---------------------------------------------------------------------------

loc_4B3894:				; CODE XREF: .text:004B386Fj
		xor	eax, eax

loc_4B3896:				; CODE XREF: .text:004B3820j
					; .text:004B3844j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4B389C@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B389C:				; DATA XREF: .data:stru_5524A0o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		cmp	dword_5FA98C, 0
		push	ebx
		push	esi		; arglist
		mov	esi, [ebp+8]
		mov	eax, [ebp+14h]
		mov	ebx, offset pd
		jz	short loc_4B38D4
		mov	edx, [ebx]
		cmp	dword ptr [edx+298h], 0
		jnz	short loc_4B38D4
		mov	ecx, [ebx]
		test	byte ptr [ecx+0Bh], 8
		jnz	short loc_4B38D4
		cmp	g_IsWinxp, 0
		jnz	short loc_4B38DB

loc_4B38D4:				; CODE XREF: .text:004B38B6j
					; .text:004B38C1j ...
		xor	eax, eax
		jmp	loc_4B3A0D
; ---------------------------------------------------------------------------

loc_4B38DB:				; CODE XREF: .text:004B38D2j
		test	eax, eax
		jnz	short loc_4B38E9
		mov	eax, 1
		jmp	loc_4B3A0D
; ---------------------------------------------------------------------------

loc_4B38E9:				; CODE XREF: .text:004B38DDj
		dec	eax
		jnz	loc_4B3A0B
		lea	edx, [ebp-8]
		push	edx		; coord
		push	2		; column
		mov	ecx, [ebx]
		add	ecx, 18h
		push	ecx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B3911
		or	eax, 0FFFFFFFFh
		mov	[ebp-4], eax
		mov	[ebp-8], eax

loc_4B3911:				; CODE XREF: .text:004B3906j
		cmp	dword_5FA960, 0C0000h
		jz	short loc_4B3921
		xor	eax, eax
		jmp	short loc_4B395F
; ---------------------------------------------------------------------------

loc_4B3921:				; CODE XREF: .text:004B391Bj
		mov	eax, decode
		test	eax, eax
		jnz	short loc_4B3931
		mov	eax, 600h
		jmp	short loc_4B395F
; ---------------------------------------------------------------------------

loc_4B3931:				; CODE XREF: .text:004B3928j
		mov	edx, [ebx]
		mov	ecx, [edx+288h]
		sub	ecx, [edx]
		movzx	eax, byte ptr [eax+ecx]
		and	eax, 1Fh
		cmp	eax, 1Ch
		jz	short loc_4B3956
		cmp	eax, 1Dh
		jz	short loc_4B3956
		cmp	eax, 1Eh
		jz	short loc_4B3956
		cmp	eax, 1Fh
		jnz	short loc_4B395D

loc_4B3956:				; CODE XREF: .text:004B3945j
					; .text:004B394Aj ...
		mov	eax, 600h
		jmp	short loc_4B395F
; ---------------------------------------------------------------------------

loc_4B395D:				; CODE XREF: .text:004B3954j
		xor	eax, eax

loc_4B395F:				; CODE XREF: .text:004B391Fj
					; .text:004B392Fj ...
		mov	edx, [ebx]
		mov	ecx, [edx+28Ch]
		sub	ecx, [edx+288h]
		cmp	ecx, 4
		jnz	short loc_4B3977
		or	eax, 4
		jmp	short loc_4B3994
; ---------------------------------------------------------------------------

loc_4B3977:				; CODE XREF: .text:004B3970j
		mov	edx, [ebx]
		mov	ecx, [edx+28Ch]
		mov	edx, [ebx]
		sub	ecx, [edx+288h]
		cmp	ecx, 2
		jnz	short loc_4B3991
		or	eax, 2
		jmp	short loc_4B3994
; ---------------------------------------------------------------------------

loc_4B3991:				; CODE XREF: .text:004B398Aj
		or	eax, 1

loc_4B3994:				; CODE XREF: .text:004B3975j
					; .text:004B398Fj
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4B39C4
		push	eax		; mode
		mov	edx, [ebx]
		mov	eax, [edx+24Ch]
		push	eax		; fi
		mov	ecx, [ebp-4]
		push	ecx		; y
		mov	eax, [ebp-8]	; int
		push	eax		; x
		mov	edx, [edx+288h]	; int
		push	edx		; _addr
		mov	ecx, [esi+22Ch]	; int
		push	ecx		; hparent
		call	Hardbreakpoint
		add	esp, 18h
		jmp	short loc_4B39EE
; ---------------------------------------------------------------------------

loc_4B39C4:				; CODE XREF: .text:004B3998j
		push	eax		; mode
		mov	edx, [ebx]
		mov	eax, [edx+24Ch]
		push	eax		; fi
		mov	ecx, [ebp-4]
		push	ecx		; y
		mov	eax, [ebp-8]	; int
		push	eax		; x
		push	0		; fnindex
		mov	edx, [edx+288h]	; int
		push	edx		; _addr
		mov	ecx, [esi+22Ch]	; int
		push	ecx		; hparent
		call	Hardlogbreakpoint
		add	esp, 1Ch

loc_4B39EE:				; CODE XREF: .text:004B39C2j
		test	eax, eax
		jge	short loc_4B3A04
		push	offset aUnableToSetB_9 ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4B3A04:				; CODE XREF: .text:004B39F0j
		mov	eax, 1
		jmp	short loc_4B3A0D
; ---------------------------------------------------------------------------

loc_4B3A0B:				; CODE XREF: .text:004B38EAj
		xor	eax, eax

loc_4B3A0D:				; CODE XREF: .text:004B38D6j
					; .text:004B38E4j ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B3A14:				; DATA XREF: .data:stru_5524A0o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+14h]
		mov	esi, [ebp+10h]
		cmp	dword_5FA98C, 0
		jz	short loc_4B3A4D
		mov	edx, pd
		cmp	dword ptr [edx+298h], 0
		jnz	short loc_4B3A4D
		mov	ecx, pd
		test	byte ptr [ecx+0Bh], 8
		jnz	short loc_4B3A4D
		cmp	g_IsWinxp, 0
		jnz	short loc_4B3A54

loc_4B3A4D:				; CODE XREF: .text:004B3A27j
					; .text:004B3A36j ...
		xor	eax, eax
		jmp	loc_4B3AD6
; ---------------------------------------------------------------------------

loc_4B3A54:				; CODE XREF: .text:004B3A4Bj
		xor	ebx, ebx

loc_4B3A56:				; CODE XREF: .text:004B3A7Fj
		push	0		; subaddr
		push	ebx		; _addr
		push	offset bphard.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4B3A7B
		mov	edx, pd
		mov	ecx, [edx+288h]
		cmp	ecx, [eax+0Ch]
		jz	short loc_4B3A81

loc_4B3A7B:				; CODE XREF: .text:004B3A68j
		inc	ebx
		cmp	ebx, 4
		jl	short loc_4B3A56

loc_4B3A81:				; CODE XREF: .text:004B3A79j
		cmp	ebx, 4
		jl	short loc_4B3A8A
		xor	eax, eax
		jmp	short loc_4B3AD6
; ---------------------------------------------------------------------------

loc_4B3A8A:				; CODE XREF: .text:004B3A84j
		test	edi, edi
		jnz	short loc_4B3AB2
		test	esi, esi
		jnz	short loc_4B3A9C
		test	byte ptr [eax+0Ah], 2
		jz	short loc_4B3A9C
		xor	eax, eax
		jmp	short loc_4B3AD6
; ---------------------------------------------------------------------------

loc_4B3A9C:				; CODE XREF: .text:004B3A90j
					; .text:004B3A96j
		cmp	esi, 1
		jnz	short loc_4B3AAB
		test	byte ptr [eax+0Ah], 2
		jnz	short loc_4B3AAB
		xor	eax, eax
		jmp	short loc_4B3AD6
; ---------------------------------------------------------------------------

loc_4B3AAB:				; CODE XREF: .text:004B3A9Fj
					; .text:004B3AA5j
		mov	eax, 1
		jmp	short loc_4B3AD6
; ---------------------------------------------------------------------------

loc_4B3AB2:				; CODE XREF: .text:004B3A8Cj
		dec	edi
		jnz	short loc_4B3AD4
		cmp	esi, 2
		jnz	short loc_4B3AC3
		push	ebx		; index
		call	Removehardbreakpoint
		pop	ecx
		jmp	short loc_4B3ACD
; ---------------------------------------------------------------------------

loc_4B3AC3:				; CODE XREF: .text:004B3AB8j
		push	esi		; enable
		push	ebx		; index
		call	Enablehardbreakpoint
		add	esp, 8

loc_4B3ACD:				; CODE XREF: .text:004B3AC1j
		mov	eax, 1
		jmp	short loc_4B3AD6
; ---------------------------------------------------------------------------

loc_4B3AD4:				; CODE XREF: .text:004B3AB3j
		xor	eax, eax

loc_4B3AD6:				; CODE XREF: .text:004B3A4Fj
					; .text:004B3A88j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B3ADC:				; DATA XREF: .data:stru_5524A0o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+0Ch]
		cmp	dword_5FA98C, 0
		jz	short loc_4B3B1A
		mov	edx, pd
		cmp	dword ptr [edx+298h], 0
		jnz	short loc_4B3B1A
		mov	ecx, pd		; int
		test	byte ptr [ecx+0Bh], 8
		jnz	short loc_4B3B1A
		cmp	dword_5FA960, 0C0000h
		jz	short loc_4B3B21

loc_4B3B1A:				; CODE XREF: .text:004B3AF1j
					; .text:004B3B00j ...
		xor	eax, eax
		jmp	loc_4B3C25
; ---------------------------------------------------------------------------

loc_4B3B21:				; CODE XREF: .text:004B3B18j
		cmp	ebx, 1
		jnz	short loc_4B3B4F
		mov	edx, pd
		mov	ecx, [edx+288h]
		cmp	ecx, amin
		jb	short loc_4B3B48
		mov	edx, [edx+28Ch]
		cmp	edx, amax
		jbe	short loc_4B3B4F

loc_4B3B48:				; CODE XREF: .text:004B3B38j
		xor	eax, eax
		jmp	loc_4B3C25
; ---------------------------------------------------------------------------

loc_4B3B4F:				; CODE XREF: .text:004B3B24j
					; .text:004B3B46j
		test	eax, eax
		jnz	loc_4B3BE3
		push	offset rtprot.range ; set
		call	Getrangecount
		pop	ecx
		test	eax, eax
		jnz	short loc_4B3BA2
		test	ebx, ebx
		jnz	short loc_4B3B86
		push	offset aLimitRunTrac_1 ; "Limit	run trace protocol to selection"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4B3BDC
; ---------------------------------------------------------------------------

loc_4B3B86:				; CODE XREF: .text:004B3B68j
		push	offset aLimitRunTrac_2 ; "Limit	run trace protocol to current pro"...
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4B3BDC
; ---------------------------------------------------------------------------

loc_4B3BA2:				; CODE XREF: .text:004B3B64j
		test	ebx, ebx
		jnz	short loc_4B3BC2
		push	offset aAddSelection_0 ; "Add selection	to run trace protocol"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4B3BDC
; ---------------------------------------------------------------------------

loc_4B3BC2:				; CODE XREF: .text:004B3BA4j
		push	offset aAddProcedureTo ; "Add procedure	to run trace protocol"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4B3BDC:				; CODE XREF: .text:004B3B84j
					; .text:004B3BA0j ...
		mov	eax, 1
		jmp	short loc_4B3C25
; ---------------------------------------------------------------------------

loc_4B3BE3:				; CODE XREF: .text:004B3B51j
		dec	eax
		jnz	short loc_4B3C23
		test	ebx, ebx
		jnz	short loc_4B3C07
		mov	eax, pd		; int
		mov	edx, [eax+28Ch]	; int
		push	edx		; addr1
		mov	ecx, [eax+288h]	; int
		push	ecx		; addr0
		call	Addprotocolrange
		add	esp, 8
		jmp	short loc_4B3C1C
; ---------------------------------------------------------------------------

loc_4B3C07:				; CODE XREF: .text:004B3BE8j
		mov	eax, amax	; int
		push	eax		; addr1
		mov	edx, amin	; int
		push	edx		; addr0
		call	Addprotocolrange
		add	esp, 8

loc_4B3C1C:				; CODE XREF: .text:004B3C05j
		mov	eax, 1
		jmp	short loc_4B3C25
; ---------------------------------------------------------------------------

loc_4B3C23:				; CODE XREF: .text:004B3BE4j
		xor	eax, eax

loc_4B3C25:				; CODE XREF: .text:004B3B1Cj
					; .text:004B3B4Aj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC loc_4B3C2C
loc_4B3C2C:				; DATA XREF: .text:004BEBB8o
					; .text:004BEC2Co ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBECh
		push	ebx
		push	esi
		push	edi
		mov	edx, [ebp+14h]
		mov	eax, [ebp+10h]
		cmp	dword_5FA98C, 0
		jz	short loc_4B3C62
		mov	ecx, pd
		cmp	dword ptr [ecx+298h], 0
		jnz	short loc_4B3C62
		mov	ecx, pd
		test	byte ptr [ecx+0Bh], 8
		jz	short loc_4B3C69

loc_4B3C62:				; CODE XREF: .text:004B3C45j
					; .text:004B3C54j
		xor	eax, eax
		jmp	loc_4B3F13
; ---------------------------------------------------------------------------

loc_4B3C69:				; CODE XREF: .text:004B3C60j
		mov	ecx, pd
		test	byte ptr [ecx+0Eh], 4
		jz	short loc_4B3C7C
		xor	eax, eax
		jmp	loc_4B3F13
; ---------------------------------------------------------------------------

loc_4B3C7C:				; CODE XREF: .text:004B3C73j
		test	eax, eax
		jz	short loc_4B3C8A
		cmp	eax, 1
		jz	short loc_4B3C8A
		cmp	eax, 2
		jnz	short loc_4B3CA2

loc_4B3C8A:				; CODE XREF: .text:004B3C7Ej
					; .text:004B3C83j
		mov	dword ptr [ebp-4], 60h
		xor	ecx, ecx
		mov	ebx, 21h
		mov	[ebp-0Ch], ecx
		xor	ecx, ecx
		mov	[ebp-8], ecx
		jmp	short loc_4B3CD9
; ---------------------------------------------------------------------------

loc_4B3CA2:				; CODE XREF: .text:004B3C88j
		mov	ecx, dword_5FA960
		cmp	ecx, 0C0000h
		jz	short loc_4B3CBF
		cmp	ecx, 0D0000h
		jz	short loc_4B3CBF
		xor	eax, eax
		jmp	loc_4B3F13
; ---------------------------------------------------------------------------

loc_4B3CBF:				; CODE XREF: .text:004B3CAEj
					; .text:004B3CB6j
		mov	dword ptr [ebp-4], 63h
		mov	dword ptr [ebp-0Ch], 800000h
		mov	dword ptr [ebp-8], 3
		mov	ebx, 30h

loc_4B3CD9:				; CODE XREF: .text:004B3CA0j
		test	eax, eax
		jz	short loc_4B3CE2
		cmp	eax, 3
		jnz	short loc_4B3CE6

loc_4B3CE2:				; CODE XREF: .text:004B3CDBj
		xor	edi, edi
		jmp	short loc_4B3CFA
; ---------------------------------------------------------------------------

loc_4B3CE6:				; CODE XREF: .text:004B3CE0j
		cmp	eax, 1
		jz	short loc_4B3CF0
		cmp	eax, 4
		jnz	short loc_4B3CF7

loc_4B3CF0:				; CODE XREF: .text:004B3CE9j
		mov	edi, 1
		jmp	short loc_4B3CFA
; ---------------------------------------------------------------------------

loc_4B3CF7:				; CODE XREF: .text:004B3CEEj
		or	edi, 0FFFFFFFFh

loc_4B3CFA:				; CODE XREF: .text:004B3CE4j
					; .text:004B3CF5j
		test	edx, edx
		jnz	short loc_4B3D39
		mov	eax, pd
		push	0		; nname
		push	0		; _name
		push	ebx		; type
		mov	edx, [eax+288h]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jz	short loc_4B3D21
		test	edi, edi
		jz	short loc_4B3D28

loc_4B3D21:				; CODE XREF: .text:004B3D1Bj
		test	esi, esi
		jnz	short loc_4B3D2F
		dec	edi
		jnz	short loc_4B3D2F

loc_4B3D28:				; CODE XREF: .text:004B3D1Fj
		xor	eax, eax
		jmp	loc_4B3F13
; ---------------------------------------------------------------------------

loc_4B3D2F:				; CODE XREF: .text:004B3D23j
					; .text:004B3D26j
		mov	eax, 1
		jmp	loc_4B3F13
; ---------------------------------------------------------------------------

loc_4B3D39:				; CODE XREF: .text:004B3CFCj
		dec	edx
		jnz	loc_4B3F11
		mov	eax, dword_5FA960
		cmp	eax, 0C0000h
		jz	short loc_4B3D53
		cmp	eax, 0D0000h
		jnz	short loc_4B3D63

loc_4B3D53:				; CODE XREF: .text:004B3D4Aj
		xor	edx, edx
		cmp	ebx, 21h
		jz	short loc_4B3D5D
		add	edx, 2

loc_4B3D5D:				; CODE XREF: .text:004B3D58j
		mov	dword_55216C, edx

loc_4B3D63:				; CODE XREF: .text:004B3D51j
		lea	ecx, [ebp-214h]
		mov	eax, pd
		push	100h		; nname
		push	ecx		; _name
		push	ebx		; type
		mov	edx, [eax+288h]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	esi, eax
		lea	eax, [ebp-14h]
		mov	ecx, pd
		push	eax		; coord
		add	ecx, 18h
		mov	edx, [ebp-8]
		push	edx		; column
		push	ecx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B3DAD
		or	eax, 0FFFFFFFFh
		mov	[ebp-10h], eax
		mov	[ebp-14h], eax

loc_4B3DAD:				; CODE XREF: .text:004B3DA2j
		test	esi, esi
		jnz	short loc_4B3DD8
		cmp	ebx, 21h
		jnz	short loc_4B3DD8
		push	offset aAddLabelAt ; "Add label	at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-414h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4B3E4E
; ---------------------------------------------------------------------------

loc_4B3DD8:				; CODE XREF: .text:004B3DAFj
					; .text:004B3DB4j
		test	esi, esi
		jnz	short loc_4B3E03
		cmp	ebx, 21h
		jz	short loc_4B3E03
		push	offset aAddCommentAt ; "Add comment at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-414h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4B3E4E
; ---------------------------------------------------------------------------

loc_4B3E03:				; CODE XREF: .text:004B3DDAj
					; .text:004B3DDFj
		test	esi, esi
		jz	short loc_4B3E2E
		cmp	ebx, 21h
		jnz	short loc_4B3E2E
		push	offset aEditLabelAt ; "Edit label at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-414h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4B3E4E
; ---------------------------------------------------------------------------

loc_4B3E2E:				; CODE XREF: .text:004B3E05j
					; .text:004B3E0Aj
		push	offset aEditCommentAt ;	"Edit comment at "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-414h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4B3E4E:				; CODE XREF: .text:004B3DD6j
					; .text:004B3E01j ...
		mov	ecx, 100h
		lea	edx, [ebp-414h]
		sub	ecx, eax
		add	eax, eax
		push	0		; comment
		push	ecx		; nsymb
		add	eax, edx
		push	eax		; symb
		mov	eax, pd
		push	20400h		; mode
		push	0		; amod
		mov	ecx, [eax+288h]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	edx, pd
		mov	eax, [ebp-0Ch]
		push	eax		; mode
		mov	ecx, [edx+24Ch]
		push	ecx		; fi
		mov	ecx, letter
		mov	eax, [ebp-10h]
		push	eax		; y
		mov	edx, [ebp-14h]
		push	edx		; x
		push	ecx		; letter
		mov	eax, [ebp-4]
		lea	edx, [ebp-214h]
		push	eax		; savetype
		push	100h		; length
		push	edx		; s
		lea	ecx, [ebp-414h]
		push	ecx		; _title
		mov	eax, [ebp+8]
		mov	edx, [eax+22Ch]
		push	edx		; hparent
		call	Getstring
		add	esp, 28h
		mov	esi, eax
		test	esi, esi
		jle	short loc_4B3F05
		lea	eax, [ebp-214h]
		mov	edx, pd
		push	eax		; s
		push	ebx		; type
		mov	ecx, [edx+288h]
		push	ecx		; _addr
		call	InsertnameW
		add	esp, 0Ch
		push	0
		call	loc_4C2968
		pop	ecx
		mov	eax, dword_5FA988
		test	eax, eax
		jz	short loc_4B3F05
		mov	dword ptr [eax+9A8h], 1

loc_4B3F05:				; CODE XREF: .text:004B3ECBj
					; .text:004B3EF9j
		mov	eax, 1
		test	esi, esi
		jg	short loc_4B3F13
		dec	eax
		jmp	short loc_4B3F13
; ---------------------------------------------------------------------------

loc_4B3F11:				; CODE XREF: .text:004B3D3Aj
		xor	eax, eax

loc_4B3F13:				; CODE XREF: .text:004B3C64j
					; .text:004B3C77j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC loc_4B3F1C
loc_4B3F1C:				; DATA XREF: .text:004BEBF2o
					; .text:004C0090o ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		mov	ecx, offset dword_5FA960
		cmp	dword_5FA98C, 0
		push	ebx
		mov	edx, [ebp+14h]
		jz	short loc_4B3F3F
		mov	eax, pd
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B3F46

loc_4B3F3F:				; CODE XREF: .text:004B3F32j
		xor	eax, eax
		jmp	loc_4B4021
; ---------------------------------------------------------------------------

loc_4B3F46:				; CODE XREF: .text:004B3F3Dj
		mov	eax, pd
		mov	eax, [eax]
		cmp	eax, userspacelimit
		jb	short loc_4B3F5C
		xor	eax, eax
		jmp	loc_4B4021
; ---------------------------------------------------------------------------

loc_4B3F5C:				; CODE XREF: .text:004B3F53j
		mov	eax, [ecx]
		cmp	eax, 0C0000h
		jz	short loc_4B3F88
		cmp	eax, 0D0000h
		jz	short loc_4B3F88
		cmp	eax, 10000h
		jz	short loc_4B3F88
		cmp	eax, 20000h
		jz	short loc_4B3F88
		cmp	eax, 0E0000h
		jz	short loc_4B3F88
		xor	eax, eax
		jmp	loc_4B4021
; ---------------------------------------------------------------------------

loc_4B3F88:				; CODE XREF: .text:004B3F63j
					; .text:004B3F6Aj ...
		test	edx, edx
		jnz	short loc_4B3F96
		mov	eax, 1
		jmp	loc_4B4021
; ---------------------------------------------------------------------------

loc_4B3F96:				; CODE XREF: .text:004B3F8Aj
		dec	edx
		jnz	loc_4B401F
		mov	eax, [ecx]
		cmp	eax, 0C0000h
		jz	short loc_4B3FAD
		cmp	eax, 0D0000h
		jnz	short loc_4B3FB7

loc_4B3FAD:				; CODE XREF: .text:004B3FA4j
		mov	dword_55216C, 1

loc_4B3FB7:				; CODE XREF: .text:004B3FABj
		lea	edx, [ebp-8]
		mov	ecx, pd
		push	edx		; coord
		add	ecx, 18h
		push	2		; column
		push	ecx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B3FDC
		or	eax, 0FFFFFFFFh
		mov	[ebp-4], eax
		mov	[ebp-8], eax

loc_4B3FDC:				; CODE XREF: .text:004B3FD1j
		push	0		; mode
		mov	ebx, pd
		mov	eax, [ebx+24Ch]
		push	eax		; fi
		mov	edx, [ebp-4]
		push	edx		; y
		mov	ecx, [ebp-8]
		push	ecx		; x
		mov	eax, letter
		push	eax		; letter
		push	ebx		; pd
		push	offset aAssemble_1 ; "Assemble"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	edx, [ebp+8]
		mov	ecx, [edx+22Ch]
		push	ecx		; hparent
		call	Asmindump
		add	esp, 20h
		mov	eax, 1
		jmp	short loc_4B4021
; ---------------------------------------------------------------------------

loc_4B401F:				; CODE XREF: .text:004B3F97j
		xor	eax, eax

loc_4B4021:				; CODE XREF: .text:004B3F41j
					; .text:004B3F57j ...
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B4028:				; DATA XREF: .data:stru_5532C8o
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+14h]
		mov	eax, pd
		test	eax, eax
		jz	short loc_4B4046
		cmp	dword ptr [eax+298h], 0
		jz	short loc_4B4046
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B404A

loc_4B4046:				; CODE XREF: .text:004B4035j
					; .text:004B403Ej
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B404A:				; CODE XREF: .text:004B4044j
		test	edx, edx
		jnz	short loc_4B405F
		test	byte ptr [eax+0Ch], 8
		jz	short loc_4B4058
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4058:				; CODE XREF: .text:004B4052j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B405F:				; CODE XREF: .text:004B404Cj
		dec	edx
		jnz	short loc_4B4071
		push	0
		push	eax
		call	loc_4BD73C
		add	esp, 8
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4071:				; CODE XREF: .text:004B4060j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B4078:				; DATA XREF: .data:stru_5532C8o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ecx, [ebp+14h]
		mov	edx, [ebp+10h]
		cmp	dword_5FA98C, 0
		jz	short loc_4B40A4
		mov	eax, pd
		cmp	dword ptr [eax+298h], 0
		jnz	short loc_4B40A4
		mov	eax, pd
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B40A9

loc_4B40A4:				; CODE XREF: .text:004B4089j
					; .text:004B4097j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B40A9:				; CODE XREF: .text:004B40A2j
		mov	eax, pd
		test	byte ptr [eax+0Eh], 1
		jz	short loc_4B40CC
		cmp	run.status, 12h
		jnz	short loc_4B40CC
		cmp	dword ptr [eax+14h], 0
		jz	short loc_4B40CC
		cmp	dword_5FC27C, 0
		jnz	short loc_4B40D1

loc_4B40CC:				; CODE XREF: .text:004B40B2j
					; .text:004B40BBj ...
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B40D1:				; CODE XREF: .text:004B40CAj
		test	ecx, ecx
		jnz	short loc_4B4142
		mov	ebx, [eax+288h]
		mov	ecx, dword_5FC27C
		cmp	ebx, [ecx+8]
		jnz	short loc_4B40EB
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B40EB:				; CODE XREF: .text:004B40E4j
		mov	ecx, decode
		test	ecx, ecx
		jnz	short loc_4B40FC
		mov	eax, 1
		jmp	short loc_4B4124
; ---------------------------------------------------------------------------

loc_4B40FC:				; CODE XREF: .text:004B40F3j
		sub	ebx, [eax]
		xor	eax, eax
		mov	al, [ecx+ebx]
		and	eax, 1Fh
		cmp	eax, 1Ch
		jz	short loc_4B411D
		cmp	eax, 1Dh
		jz	short loc_4B411D
		cmp	eax, 1Eh
		jz	short loc_4B411D
		test	eax, eax
		jz	short loc_4B411D
		xor	ecx, ecx
		jmp	short loc_4B4122
; ---------------------------------------------------------------------------

loc_4B411D:				; CODE XREF: .text:004B4109j
					; .text:004B410Ej ...
		mov	ecx, 1

loc_4B4122:				; CODE XREF: .text:004B411Bj
		mov	eax, ecx

loc_4B4124:				; CODE XREF: .text:004B40FAj
		test	edx, edx
		jnz	short loc_4B412C
		test	eax, eax
		jz	short loc_4B4135

loc_4B412C:				; CODE XREF: .text:004B4126j
		cmp	edx, 1
		jnz	short loc_4B413A
		test	eax, eax
		jz	short loc_4B413A

loc_4B4135:				; CODE XREF: .text:004B412Aj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B413A:				; CODE XREF: .text:004B412Fj
					; .text:004B4133j
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4142:				; CODE XREF: .text:004B40D3j
		dec	ecx
		jnz	short loc_4B41AF
		test	edx, edx
		jz	short loc_4B4185
		mov	edx, pd
		mov	ecx, [edx+288h]
		push	ecx		; arglist
		push	offset aYouAreGoingT_2 ; "You are going	to set execution point at"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aSuspiciousLoca ; "Suspicious location"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E684 ; cond
		call	Condyesno
		add	esp, 10h
		cmp	eax, 6
		jz	short loc_4B4185
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4185:				; CODE XREF: .text:004B4147j
					; .text:004B417Ej
		mov	edx, dword_5FC278
		push	edx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	edx, dword_5FC27C
		mov	ecx, pd
		mov	eax, [ecx+288h]
		mov	[edx+8], eax
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B41AF:				; CODE XREF: .text:004B4143j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B41B4:				; DATA XREF: .data:stru_5532C8o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		mov	edi, [ebp+10h]
		cmp	dword_5FA98C, 0
		jz	short loc_4B41E3
		mov	eax, pd
		cmp	dword ptr [eax+298h], 0
		jnz	short loc_4B41E3
		mov	edx, pd
		test	byte ptr [edx+0Bh], 8
		jz	short loc_4B41EA

loc_4B41E3:				; CODE XREF: .text:004B41C7j
					; .text:004B41D5j
		xor	eax, eax
		jmp	loc_4B4312
; ---------------------------------------------------------------------------

loc_4B41EA:				; CODE XREF: .text:004B41E1j
		cmp	stru_5FA9A8._size, 0
		jbe	short loc_4B4204
		cmp	stru_5FA9A8.jmpaddr, 0
		jz	short loc_4B4204
		mov	ebx, stru_5FA9A8.jmpaddr
		jmp	short loc_4B4206
; ---------------------------------------------------------------------------

loc_4B4204:				; CODE XREF: .text:004B41F1j
					; .text:004B41FAj
		xor	ebx, ebx

loc_4B4206:				; CODE XREF: .text:004B4202j
		test	ebx, ebx
		jnz	short loc_4B4250
		cmp	dword_5FA960, 0C0000h
		jnz	short loc_4B4250
		mov	eax, pd
		mov	edx, [eax+288h]
		push	edx		; from
		call	Findjumpfrom
		pop	ecx
		test	eax, eax
		jz	short loc_4B4250
		mov	ecx, pd
		mov	edx, [ecx+288h]
		cmp	edx, [eax]
		jnz	short loc_4B4250
		mov	ecx, pd
		mov	edx, [ecx+288h]
		cmp	edx, [eax+9]
		jz	short loc_4B4250
		mov	ebx, [eax+4]

loc_4B4250:				; CODE XREF: .text:004B4208j
					; .text:004B4214j ...
		test	ebx, ebx
		jnz	short loc_4B4290
		mov	eax, decode
		test	eax, eax
		jnz	short loc_4B4264
		xor	eax, eax
		jmp	loc_4B4312
; ---------------------------------------------------------------------------

loc_4B4264:				; CODE XREF: .text:004B425Bj
		mov	edx, pd
		mov	ecx, [edx+288h]
		sub	ecx, [edx]
		movzx	eax, byte ptr [eax+ecx]
		and	eax, 1Fh
		cmp	eax, 4
		jz	short loc_4B428A
		cmp	eax, 5
		jz	short loc_4B428A
		xor	eax, eax
		jmp	loc_4B4312
; ---------------------------------------------------------------------------

loc_4B428A:				; CODE XREF: .text:004B427Cj
					; .text:004B4281j
		mov	ebx, stru_5FA9A8.op.u

loc_4B4290:				; CODE XREF: .text:004B4252j
		test	esi, esi
		jnz	short loc_4B42F3
		mov	eax, pd
		test	byte ptr [eax+0Eh], 1
		jnz	short loc_4B42A7
		test	edi, edi
		jnz	short loc_4B42A7
		xor	eax, eax
		jmp	short loc_4B4312
; ---------------------------------------------------------------------------

loc_4B42A7:				; CODE XREF: .text:004B429Dj
					; .text:004B42A1j
		mov	edx, pd
		test	byte ptr [edx+0Eh], 1
		jz	short loc_4B42BC
		cmp	edi, 1
		jnz	short loc_4B42BC
		xor	eax, eax
		jmp	short loc_4B4312
; ---------------------------------------------------------------------------

loc_4B42BC:				; CODE XREF: .text:004B42B1j
					; .text:004B42B6j
		test	ebx, ebx
		jnz	short loc_4B42C4
		xor	eax, eax
		jmp	short loc_4B4312
; ---------------------------------------------------------------------------

loc_4B42C4:				; CODE XREF: .text:004B42BEj
		push	ebx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4B42D3
		xor	eax, eax
		jmp	short loc_4B4312
; ---------------------------------------------------------------------------

loc_4B42D3:				; CODE XREF: .text:004B42CDj
		mov	edx, pd
		test	byte ptr [edx+0Eh], 1
		jnz	short loc_4B42EC
		test	dword ptr [eax+8], 2001000h
		jnz	short loc_4B42EC
		xor	eax, eax
		jmp	short loc_4B4312
; ---------------------------------------------------------------------------

loc_4B42EC:				; CODE XREF: .text:004B42DDj
					; .text:004B42E6j
		mov	eax, 1
		jmp	short loc_4B4312
; ---------------------------------------------------------------------------

loc_4B42F3:				; CODE XREF: .text:004B4292j
		dec	esi
		jnz	short loc_4B4310
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	ebx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		mov	eax, 1
		jmp	short loc_4B4312
; ---------------------------------------------------------------------------

loc_4B4310:				; CODE XREF: .text:004B42F4j
		xor	eax, eax

loc_4B4312:				; CODE XREF: .text:004B41E5j
					; .text:004B425Fj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B4318:				; DATA XREF: .data:stru_552668o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		cmp	dword_5FA98C, 0
		push	ebx
		push	esi
		push	edi
		jz	short loc_4B434D
		mov	eax, pd
		cmp	dword ptr [eax+298h], 0
		jnz	short loc_4B434D
		mov	edx, pd
		test	byte ptr [edx+0Eh], 1
		jz	short loc_4B434D
		cmp	stru_5FA9A8._size, 0
		jnz	short loc_4B4354

loc_4B434D:				; CODE XREF: .text:004B4328j
					; .text:004B4336j ...
		xor	eax, eax
		jmp	loc_4B449C
; ---------------------------------------------------------------------------

loc_4B4354:				; CODE XREF: .text:004B434Bj
		xor	edx, edx
		mov	eax, decode
		mov	[ebp-0Ch], edx
		mov	[ebp-8], edx
		mov	[ebp-4], edx
		test	eax, eax
		mov	dword ptr [ebp-10h], 1
		mov	ebx, edx
		mov	ecx, edx
		jz	short loc_4B43A7
		mov	esi, pd
		mov	edi, pd
		mov	esi, [esi+288h]
		sub	esi, [edi]
		movzx	eax, byte ptr [eax+esi]
		and	eax, 1Fh
		cmp	eax, 4
		jz	short loc_4B4398
		cmp	eax, 5
		jnz	short loc_4B43A7

loc_4B4398:				; CODE XREF: .text:004B4391j
		mov	eax, stru_5FA9A8.op.u
		mov	[ebp-0Ch], eax
		mov	dword ptr [ebp-10h], 4

loc_4B43A7:				; CODE XREF: .text:004B4371j
					; .text:004B4396j
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4B4412
		xor	esi, esi
		mov	eax, offset stru_5FA9A8.op

loc_4B43B4:				; CODE XREF: .text:004B4410j
		test	byte ptr [eax+1], 2
		jz	short loc_4B43BF
		mov	ebx, [eax+40h]
		jmp	short loc_4B4407
; ---------------------------------------------------------------------------

loc_4B43BF:				; CODE XREF: .text:004B43B8j
		mov	edi, [eax]
		and	edi, 2100h
		cmp	edi, 100h
		jnz	short loc_4B4407
		mov	edi, [eax+4]
		and	edi, 0FFh
		cmp	edi, 22h
		jnz	short loc_4B43E5
		mov	edi, [eax+3Ch]
		mov	[ebp-4], edi
		jmp	short loc_4B4401
; ---------------------------------------------------------------------------

loc_4B43E5:				; CODE XREF: .text:004B43DBj
		mov	edi, [eax+4]
		and	edi, 0FFh
		cmp	edi, 20h
		jnz	short loc_4B43FB
		mov	edi, [eax+3Ch]
		mov	[ebp-8], edi
		jmp	short loc_4B4401
; ---------------------------------------------------------------------------

loc_4B43FB:				; CODE XREF: .text:004B43F1j
		mov	edx, [eax+30h]
		mov	ecx, [eax+3Ch]

loc_4B4401:				; CODE XREF: .text:004B43E3j
					; .text:004B43F9j
		mov	edi, [eax+0Ch]
		mov	[ebp-10h], edi

loc_4B4407:				; CODE XREF: .text:004B43BDj
					; .text:004B43CDj
		inc	esi
		add	eax, 460h
		cmp	esi, 4
		jl	short loc_4B43B4

loc_4B4412:				; CODE XREF: .text:004B43ABj
		cmp	ecx, edx
		jnz	short loc_4B4418
		xor	edx, edx

loc_4B4418:				; CODE XREF: .text:004B4414j
		cmp	ecx, ebx
		jz	short loc_4B4420
		cmp	edx, ebx
		jnz	short loc_4B4422

loc_4B4420:				; CODE XREF: .text:004B441Aj
		xor	ebx, ebx

loc_4B4422:				; CODE XREF: .text:004B441Ej
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4B442C
		mov	eax, ecx
		jmp	short loc_4B4459
; ---------------------------------------------------------------------------

loc_4B442C:				; CODE XREF: .text:004B4426j
		cmp	dword ptr [ebp+10h], 1
		jnz	short loc_4B4437
		mov	eax, [ebp-4]
		jmp	short loc_4B4459
; ---------------------------------------------------------------------------

loc_4B4437:				; CODE XREF: .text:004B4430j
		cmp	dword ptr [ebp+10h], 2
		jnz	short loc_4B4442
		mov	eax, [ebp-8]
		jmp	short loc_4B4459
; ---------------------------------------------------------------------------

loc_4B4442:				; CODE XREF: .text:004B443Bj
		cmp	dword ptr [ebp+10h], 3
		jnz	short loc_4B444C
		mov	eax, edx
		jmp	short loc_4B4459
; ---------------------------------------------------------------------------

loc_4B444C:				; CODE XREF: .text:004B4446j
		cmp	dword ptr [ebp+10h], 4
		jnz	short loc_4B4456
		mov	eax, ebx
		jmp	short loc_4B4459
; ---------------------------------------------------------------------------

loc_4B4456:				; CODE XREF: .text:004B4450j
		mov	eax, [ebp-0Ch]

loc_4B4459:				; CODE XREF: .text:004B442Aj
					; .text:004B4435j ...
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4B4475
		push	eax		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4B446E
		xor	eax, eax
		jmp	short loc_4B449C
; ---------------------------------------------------------------------------

loc_4B446E:				; CODE XREF: .text:004B4468j
		mov	eax, 1
		jmp	short loc_4B449C
; ---------------------------------------------------------------------------

loc_4B4475:				; CODE XREF: .text:004B445Dj
		cmp	dword ptr [ebp+14h], 1
		jnz	short loc_4B449A
		push	90h		; mode
		push	0		; stackaddr
		mov	edx, [ebp-10h]
		push	edx		; selsize
		push	eax		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		mov	eax, 1
		jmp	short loc_4B449C
; ---------------------------------------------------------------------------

loc_4B449A:				; CODE XREF: .text:004B4479j
		xor	eax, eax

loc_4B449C:				; CODE XREF: .text:004B434Fj
					; .text:004B446Cj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B44A4:				; DATA XREF: .data:stru_552668o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		cmp	dword_5FA98C, 0
		jz	short loc_4B44C2
		mov	edx, pd
		cmp	dword ptr [edx+298h], 0
		jz	short loc_4B44C6

loc_4B44C2:				; CODE XREF: .text:004B44B1j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B44C6:				; CODE XREF: .text:004B44C0j
		mov	edx, pd
		test	byte ptr [edx+0Eh], 1
		jnz	short loc_4B44D6
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B44D6:				; CODE XREF: .text:004B44D0j
		test	eax, eax
		jnz	short loc_4B44E1
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B44E1:				; CODE XREF: .text:004B44D8j
		dec	eax
		jnz	short loc_4B4513
		mov	eax, pd
		push	90h		; mode
		push	0		; stackaddr
		mov	eax, [eax+288h]
		mov	ecx, [edx+28Ch]
		sub	ecx, eax
		push	ecx		; selsize
		push	eax		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4513:				; CODE XREF: .text:004B44E2j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B4518:				; DATA XREF: .data:stru_5532C8o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ecx, offset dword_5FA960
		cmp	dword_5FA98C, 0
		mov	edx, [ebp+14h]
		mov	eax, [ebp+10h]
		jz	short loc_4B453F
		mov	ebx, pd
		cmp	dword ptr [ebx+298h], 0
		jz	short loc_4B4544

loc_4B453F:				; CODE XREF: .text:004B452Ej
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4544:				; CODE XREF: .text:004B453Dj
		mov	ebx, pd
		test	byte ptr [ebx+0Eh], 4
		jz	short loc_4B4555
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4555:				; CODE XREF: .text:004B454Ej
		mov	ebx, [ecx]
		cmp	ebx, 10000h
		jz	short loc_4B45BA
		cmp	ebx, 20000h
		jz	short loc_4B45BA
		cmp	ebx, 0E0000h
		jz	short loc_4B45BA
		mov	ebx, [ecx]
		cmp	ebx, 50000h
		jz	short loc_4B4589
		cmp	ebx, 60000h
		jz	short loc_4B4589
		cmp	ebx, 70000h
		jnz	short loc_4B459D

loc_4B4589:				; CODE XREF: .text:004B4577j
					; .text:004B457Fj
		mov	ebx, pd
		mov	ebx, [ebx+8]
		and	ebx, 0FFh
		cmp	ebx, 4
		jz	short loc_4B45BA

loc_4B459D:				; CODE XREF: .text:004B4587j
		cmp	dword ptr [ecx], 90000h
		jz	short loc_4B45BA
		cmp	dword ptr [ecx], 0A0000h
		jz	short loc_4B45BA
		cmp	dword ptr [ecx], 0B0000h
		jz	short loc_4B45BA
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B45BA:				; CODE XREF: .text:004B455Dj
					; .text:004B4565j ...
		cmp	cmdsize, 4
		jnb	short loc_4B45C8
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B45C8:				; CODE XREF: .text:004B45C1j
		mov	ebx, dword ptr cmd
		test	edx, edx
		jnz	loc_4B4658
		test	eax, eax
		jnz	short loc_4B4612
		push	ebx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_4B460D
		mov	edx, [eax+458h]
		cmp	ebx, edx
		jb	short loc_4B45F9
		add	edx, [eax+45Ch]
		cmp	ebx, edx
		jb	short loc_4B4650

loc_4B45F9:				; CODE XREF: .text:004B45EDj
		mov	edx, [eax+8D4h]
		cmp	ebx, edx
		jb	short loc_4B460D
		add	edx, [eax+8D8h]
		cmp	ebx, edx
		jb	short loc_4B4650

loc_4B460D:				; CODE XREF: .text:004B45E3j
					; .text:004B4601j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4612:				; CODE XREF: .text:004B45D8j
		cmp	eax, 1
		jnz	short loc_4B4627
		push	ebx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4B4650
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4627:				; CODE XREF: .text:004B4615j
		cmp	eax, 2
		jnz	short loc_4B464B
		mov	eax, pd
		mov	edx, [eax]
		cmp	ebx, edx
		jb	short loc_4B4646
		add	edx, [eax+4]
		cmp	ebx, edx
		jnb	short loc_4B4646
		cmp	ebx, [eax+288h]
		jnz	short loc_4B4650

loc_4B4646:				; CODE XREF: .text:004B4635j
					; .text:004B463Cj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B464B:				; CODE XREF: .text:004B462Aj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4650:				; CODE XREF: .text:004B45F7j
					; .text:004B460Bj ...
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4658:				; CODE XREF: .text:004B45D0j
		dec	edx
		jnz	short loc_4B46AC
		test	eax, eax
		jnz	short loc_4B4674
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	ebx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B46A4
; ---------------------------------------------------------------------------

loc_4B4674:				; CODE XREF: .text:004B465Dj
		cmp	eax, 1
		jnz	short loc_4B4691
		push	90h		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	ebx		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B46A4
; ---------------------------------------------------------------------------

loc_4B4691:				; CODE XREF: .text:004B4677j
		push	0		; mode
		push	ebx		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_4B46A4:				; CODE XREF: .text:004B4672j
					; .text:004B468Fj
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B46AC:				; CODE XREF: .text:004B4659j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B46B4:				; DATA XREF: .data:stru_5532C8o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	edx, [ebp+14h]
		mov	eax, [ebp+10h]
		cmp	dword_5FA98C, 0
		jz	short loc_4B46D6
		mov	ecx, pd
		cmp	dword ptr [ecx+298h], 0
		jz	short loc_4B46DB

loc_4B46D6:				; CODE XREF: .text:004B46C5j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B46DB:				; CODE XREF: .text:004B46D4j
		mov	ecx, pd
		test	byte ptr [ecx+0Eh], 4
		jnz	short loc_4B46EC
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B46EC:				; CODE XREF: .text:004B46E5j
		cmp	cmdsize, 4
		jnb	short loc_4B46FA
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B46FA:				; CODE XREF: .text:004B46F3j
		mov	ebx, dword ptr cmd
		test	edx, edx
		jnz	loc_4B478A
		test	eax, eax
		jnz	short loc_4B4744
		push	ebx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_4B473F
		mov	edx, [eax+458h]
		cmp	ebx, edx
		jb	short loc_4B472B
		add	edx, [eax+45Ch]
		cmp	ebx, edx
		jb	short loc_4B4782

loc_4B472B:				; CODE XREF: .text:004B471Fj
		mov	edx, [eax+8D4h]
		cmp	ebx, edx
		jb	short loc_4B473F
		add	edx, [eax+8D8h]
		cmp	ebx, edx
		jb	short loc_4B4782

loc_4B473F:				; CODE XREF: .text:004B4715j
					; .text:004B4733j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4744:				; CODE XREF: .text:004B470Aj
		cmp	eax, 1
		jnz	short loc_4B4759
		push	ebx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4B4782
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4759:				; CODE XREF: .text:004B4747j
		cmp	eax, 2
		jnz	short loc_4B477D
		mov	eax, pd
		mov	edx, [eax]
		cmp	ebx, edx
		jb	short loc_4B4778
		add	edx, [eax+4]
		cmp	ebx, edx
		jnb	short loc_4B4778
		cmp	ebx, [eax+288h]
		jnz	short loc_4B4782

loc_4B4778:				; CODE XREF: .text:004B4767j
					; .text:004B476Ej
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B477D:				; CODE XREF: .text:004B475Cj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4782:				; CODE XREF: .text:004B4729j
					; .text:004B473Dj ...
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B478A:				; CODE XREF: .text:004B4702j
		dec	edx
		jnz	short loc_4B47DE
		test	eax, eax
		jnz	short loc_4B47A6
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	ebx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B47D6
; ---------------------------------------------------------------------------

loc_4B47A6:				; CODE XREF: .text:004B478Fj
		cmp	eax, 1
		jnz	short loc_4B47C3
		push	90h		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	ebx		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B47D6
; ---------------------------------------------------------------------------

loc_4B47C3:				; CODE XREF: .text:004B47A9j
		push	0		; mode
		push	ebx		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_4B47D6:				; CODE XREF: .text:004B47A4j
					; .text:004B47C1j
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B47DE:				; CODE XREF: .text:004B478Bj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B47E4:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+14h]
		mov	eax, pd
		test	eax, eax
		jz	short loc_4B4802
		cmp	dword_5FC27C, 0
		jz	short loc_4B4802
		test	byte ptr [eax+0Eh], 1
		jnz	short loc_4B4806

loc_4B4802:				; CODE XREF: .text:004B47F1j
					; .text:004B47FAj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4806:				; CODE XREF: .text:004B4800j
		test	byte ptr [eax+0Ch], 2
		jz	short loc_4B4810
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4810:				; CODE XREF: .text:004B480Aj
		test	edx, edx
		jnz	short loc_4B4830
		mov	edx, [eax+288h]
		mov	ecx, dword_5FC27C
		cmp	edx, [ecx+8]
		jnz	short loc_4B4829
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4829:				; CODE XREF: .text:004B4823j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4830:				; CODE XREF: .text:004B4812j
		dec	edx
		jnz	short loc_4B4856
		push	5		; mode
		mov	edx, dword_5FC27C
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	ecx, [edx+8]
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4856:				; CODE XREF: .text:004B4831j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4B485C@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B485C:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		cmp	process, 0
		push	ebx
		push	esi		; arglist
		mov	esi, [ebp+8]
		mov	eax, [ebp+14h]
		mov	ebx, offset pd
		jnz	short loc_4B488A
		mov	edx, [ebx]
		cmp	dword ptr [edx+298h], 0
		jnz	short loc_4B488A
		xor	eax, eax
		jmp	loc_4B4A2A
; ---------------------------------------------------------------------------

loc_4B488A:				; CODE XREF: .text:004B4876j
					; .text:004B4881j
		mov	edx, [ebx]
		test	byte ptr [edx+0Ch], 2
		jz	short loc_4B4899
		xor	eax, eax
		jmp	loc_4B4A2A
; ---------------------------------------------------------------------------

loc_4B4899:				; CODE XREF: .text:004B4890j
		test	eax, eax
		jnz	short loc_4B48A7
		mov	eax, 1
		jmp	loc_4B4A2A
; ---------------------------------------------------------------------------

loc_4B48A7:				; CODE XREF: .text:004B489Bj
		dec	eax
		jnz	loc_4B4A28
		lea	ecx, [ebp-0Ch]
		add	edx, 18h
		push	ecx		; coord
		push	2		; column
		push	edx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B48CD
		or	edx, 0FFFFFFFFh
		mov	[ebp-8], edx
		mov	[ebp-0Ch], edx

loc_4B48CD:				; CODE XREF: .text:004B48C2j
		mov	eax, [ebx]
		cmp	dword ptr [eax+298h], 0
		jz	short loc_4B4910
		push	0		; mode
		mov	ecx, [ebx]
		mov	eax, [ecx+24Ch]
		push	eax		; fi
		lea	eax, [ebp-4]
		mov	edx, [ebp-8]
		push	edx		; y
		mov	ecx, [ebp-0Ch]
		push	ecx		; x
		push	65h		; savetype
		push	0		; threadid
		push	eax		; u
		push	offset aEnterExpressio ; "Enter	expression to follow"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	edx, [esi+22Ch]
		push	edx		; hparent
		call	Getdwordexpression
		add	esp, 24h
		jmp	short loc_4B494A
; ---------------------------------------------------------------------------

loc_4B4910:				; CODE XREF: .text:004B48D6j
		push	0		; mode
		mov	ecx, [ebx]
		mov	eax, [ecx+24Ch]
		push	eax		; fi
		mov	edx, [ebp-8]
		push	edx		; y
		mov	ecx, [ebp-0Ch]
		push	ecx		; x
		push	65h		; savetype
		call	Getcputhreadid
		push	eax		; threadid
		lea	eax, [ebp-4]
		push	eax		; u
		push	offset aEnterExpressio ; "Enter	expression to follow"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	edx, [esi+22Ch]
		push	edx		; hparent
		call	Getgotoexpression
		add	esp, 24h

loc_4B494A:				; CODE XREF: .text:004B490Ej
		test	eax, eax
		jz	short loc_4B4955
		xor	eax, eax
		jmp	loc_4B4A2A
; ---------------------------------------------------------------------------

loc_4B4955:				; CODE XREF: .text:004B494Cj
		mov	eax, [ebx]
		cmp	dword ptr [eax+298h], 0
		jz	short loc_4B4981
		mov	edx, [eax+4]
		cmp	edx, [ebp-4]
		ja	short loc_4B4981
		push	offset aOffsetBeyondTh ; "Offset beyond	the end	of file"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_4B4A2A
; ---------------------------------------------------------------------------

loc_4B4981:				; CODE XREF: .text:004B495Ej
					; .text:004B4966j
		mov	edx, [ebx]
		cmp	dword ptr [edx+298h], 0
		jnz	short loc_4B49B0
		mov	ecx, [ebp-4]
		push	ecx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4B49B0
		push	offset aNoMemoryAtTheS ; "No memory at the specified address"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	short loc_4B4A2A
; ---------------------------------------------------------------------------

loc_4B49B0:				; CODE XREF: .text:004B498Aj
					; .text:004B4998j
		mov	edx, [ebx]
		test	byte ptr [edx+0Eh], 1
		jz	short loc_4B49D0
		push	5		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	ecx, [ebp-4]
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B4A21
; ---------------------------------------------------------------------------

loc_4B49D0:				; CODE XREF: .text:004B49B6j
		mov	eax, [ebx]
		test	byte ptr [eax+0Eh], 2
		jz	short loc_4B49F0
		push	10h		; mode
		push	0		; stackaddr
		push	0		; selsize
		mov	edx, [ebp-4]
		push	edx		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B4A21
; ---------------------------------------------------------------------------

loc_4B49F0:				; CODE XREF: .text:004B49D6j
		mov	ecx, [ebx]
		test	byte ptr [ecx+0Eh], 4
		jz	short loc_4B4A10
		push	0		; mode
		mov	eax, [ebp-4]
		push	eax		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B4A21
; ---------------------------------------------------------------------------

loc_4B4A10:				; CODE XREF: .text:004B49F6j
		push	0		; size
		mov	edx, [ebp-4]
		push	edx		; _addr
		mov	ecx, [ebx]
		push	ecx		; pd
		call	Newdumpselection
		add	esp, 0Ch

loc_4B4A21:				; CODE XREF: .text:004B49CEj
					; .text:004B49EEj ...
		mov	eax, 1
		jmp	short loc_4B4A2A
; ---------------------------------------------------------------------------

loc_4B4A28:				; CODE XREF: .text:004B48A8j
		xor	eax, eax

loc_4B4A2A:				; CODE XREF: .text:004B4885j
					; .text:004B4894j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4A30:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		cmp	dword_5FA98C, 0
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		mov	eax, [ebp+14h]
		mov	esi, [ebp+10h]
		jz	short loc_4B4A5A
		mov	edx, pd
		cmp	dword ptr [edx+298h], 0
		jz	short loc_4B4A61

loc_4B4A5A:				; CODE XREF: .text:004B4A49j
		xor	eax, eax
		jmp	loc_4B4BDB
; ---------------------------------------------------------------------------

loc_4B4A61:				; CODE XREF: .text:004B4A58j
		mov	edx, pd
		test	byte ptr [edx+0Eh], 1
		jz	short loc_4B4A79
		cmp	dword_5FA960, 0C0000h
		jz	short loc_4B4A80

loc_4B4A79:				; CODE XREF: .text:004B4A6Bj
		xor	eax, eax
		jmp	loc_4B4BDB
; ---------------------------------------------------------------------------

loc_4B4A80:				; CODE XREF: .text:004B4A77j
		mov	ecx, [edx+288h]
		mov	[ebp-4], ecx
		mov	ebx, ecx
		test	eax, eax
		jnz	loc_4B4B26
		test	esi, esi
		jnz	short loc_4B4AC0
		push	0		; psize
		push	ebx		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_4B4B1F
		movzx	eax, byte ptr [eax]
		and	eax, 1Fh
		cmp	eax, 1Dh
		jz	short loc_4B4AB6
		cmp	eax, 1Eh
		jnz	short loc_4B4B1F

loc_4B4AB6:				; CODE XREF: .text:004B4AAFj
		mov	eax, 1
		jmp	loc_4B4BDB
; ---------------------------------------------------------------------------

loc_4B4AC0:				; CODE XREF: .text:004B4A95j
		cmp	esi, 1
		jnz	short loc_4B4AE9
		push	ebx		; from
		call	Findjumpfrom
		pop	ecx
		test	eax, eax
		jz	short loc_4B4B1F
		xor	edx, edx
		jmp	short loc_4B4AD8
; ---------------------------------------------------------------------------

loc_4B4AD4:				; CODE XREF: .text:004B4ADAj
		add	eax, 9
		inc	edx

loc_4B4AD8:				; CODE XREF: .text:004B4AD2j
		cmp	ebx, [eax]
		jz	short loc_4B4AD4
		dec	edx
		jle	short loc_4B4B1F
		mov	eax, 1
		jmp	loc_4B4BDB
; ---------------------------------------------------------------------------

loc_4B4AE9:				; CODE XREF: .text:004B4AC3j
		push	0		; datasize
		push	40h		; type
		push	ebx		; _addr
		call	Finddataptr
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4B4B04
		mov	eax, 1
		jmp	loc_4B4BDB
; ---------------------------------------------------------------------------

loc_4B4B04:				; CODE XREF: .text:004B4AF8j
		push	0		; datasize
		push	41h		; type
		push	ebx		; _addr
		call	Finddataptr
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4B4B1F
		mov	eax, 1
		jmp	loc_4B4BDB
; ---------------------------------------------------------------------------

loc_4B4B1F:				; CODE XREF: .text:004B4AA4j
					; .text:004B4AB4j ...
		xor	eax, eax
		jmp	loc_4B4BDB
; ---------------------------------------------------------------------------

loc_4B4B26:				; CODE XREF: .text:004B4A8Dj
		dec	eax
		jnz	loc_4B4BD9
		cmp	esi, 2
		jnz	short loc_4B4B5D
		push	0		; datasize
		push	40h		; type
		push	ebx		; _addr
		call	Finddataptr
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4B4B5D
		push	0		; datasize
		push	41h		; type
		push	ebx		; _addr
		call	Finddataptr
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4B4B5B
		xor	eax, eax
		jmp	loc_4B4BDB
; ---------------------------------------------------------------------------

loc_4B4B5B:				; CODE XREF: .text:004B4B52j
		mov	ebx, [eax]

loc_4B4B5D:				; CODE XREF: .text:004B4B30j
					; .text:004B4B41j
		lea	eax, [ebp-0Ch]
		mov	edx, pd
		push	eax		; coord
		add	edx, 18h
		push	3		; column
		push	edx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B4B82
		or	ecx, 0FFFFFFFFh
		mov	[ebp-8], ecx
		mov	[ebp-0Ch], ecx

loc_4B4B82:				; CODE XREF: .text:004B4B77j
		test	esi, esi
		jnz	short loc_4B4B8D
		mov	eax, offset stru_4FFFE8.postbyte
		jmp	short loc_4B4B9B
; ---------------------------------------------------------------------------

loc_4B4B8D:				; CODE XREF: .text:004B4B84j
		cmp	esi, 1
		jnz	short loc_4B4B96
		xor	eax, eax
		jmp	short loc_4B4B9B
; ---------------------------------------------------------------------------

loc_4B4B96:				; CODE XREF: .text:004B4B90j
		mov	eax, 200000h

loc_4B4B9B:				; CODE XREF: .text:004B4B8Bj
					; .text:004B4B94j
		push	eax		; __int16
		mov	edx, [edi+234h]
		push	edx		; int
		mov	ecx, [ebp-8]
		push	ecx		; int
		mov	eax, [ebp-0Ch]
		push	eax		; int
		push	ebx		; int
		mov	edx, [edi+22Ch]
		push	edx		; hWndParent
		call	loc_4365EC
		add	esp, 18h
		test	eax, eax
		jnz	short loc_4B4BC2
		mov	eax, [ebp-4]

loc_4B4BC2:				; CODE XREF: .text:004B4BBDj
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	eax		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		xor	eax, eax
		jmp	short loc_4B4BDB
; ---------------------------------------------------------------------------

loc_4B4BD9:				; CODE XREF: .text:004B4B27j
		xor	eax, eax

loc_4B4BDB:				; CODE XREF: .text:004B4A5Cj
					; .text:004B4A7Bj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B4BE4:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE8h
		push	ebx
		push	esi
		mov	esi, offset pd
		push	edi
		mov	edi, [ebp+10h]
		mov	eax, [esi]
		test	eax, eax
		jnz	short loc_4B4C02
		xor	eax, eax
		jmp	loc_4B4D7D
; ---------------------------------------------------------------------------

loc_4B4C02:				; CODE XREF: .text:004B4BF9j
		mov	edx, [eax+0Ch]
		test	edx, 10000h
		jz	short loc_4B4C14
		mov	ebx, offset ph
		jmp	short loc_4B4C2A
; ---------------------------------------------------------------------------

loc_4B4C14:				; CODE XREF: .text:004B4C0Bj
		test	edx, 20000h
		jz	short loc_4B4C23
		mov	ebx, offset stru_5C3710
		jmp	short loc_4B4C2A
; ---------------------------------------------------------------------------

loc_4B4C23:				; CODE XREF: .text:004B4C1Aj
		xor	eax, eax
		jmp	loc_4B4D7D
; ---------------------------------------------------------------------------

loc_4B4C2A:				; CODE XREF: .text:004B4C12j
					; .text:004B4C21j
		lea	edx, [ebp-4]
		push	edx		; isnewest
		or	ecx, 0FFFFFFFFh
		test	edi, edi
		jz	short loc_4B4C38
		add	ecx, 2

loc_4B4C38:				; CODE XREF: .text:004B4C33j
		push	ecx		; dir
		push	ebx		; ph
		call	Checkhistory
		add	esp, 0Ch
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4B4C76
		test	eax, eax
		jz	short loc_4B4C6C
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4B4C65
		call	loc_42521C
		test	eax, eax
		jz	short loc_4B4C65
		mov	eax, 1
		jmp	loc_4B4D7D
; ---------------------------------------------------------------------------

loc_4B4C65:				; CODE XREF: .text:004B4C50j
					; .text:004B4C59j
		xor	eax, eax
		jmp	loc_4B4D7D
; ---------------------------------------------------------------------------

loc_4B4C6C:				; CODE XREF: .text:004B4C4Aj
		mov	eax, 1
		jmp	loc_4B4D7D
; ---------------------------------------------------------------------------

loc_4B4C76:				; CODE XREF: .text:004B4C46j
		cmp	dword ptr [ebp+14h], 1
		jnz	loc_4B4D7B
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4B4CDE
		mov	eax, [esi]
		test	byte ptr [eax+0Eh], 1
		jz	short loc_4B4CB6
		push	1		; mode
		push	0		; stackaddr
		mov	edx, [eax+28Ch]
		mov	ecx, [esi]
		sub	edx, [ecx+288h]
		push	edx		; selsize
		push	0		; dumpaddr
		mov	eax, [eax+288h]
		push	eax		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B4CDE
; ---------------------------------------------------------------------------

loc_4B4CB6:				; CODE XREF: .text:004B4C8Cj
		push	10h		; mode
		push	0		; stackaddr
		mov	eax, [esi]
		mov	ecx, [esi]
		mov	edx, [eax+28Ch]
		sub	edx, [ecx+288h]
		push	edx		; selsize
		mov	eax, [eax+288h]
		push	eax		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_4B4CDE:				; CODE XREF: .text:004B4C84j
					; .text:004B4CB4j
		lea	edx, [ebp-18h]
		push	edx		; sel1
		lea	ecx, [ebp-14h]
		push	ecx		; sel0
		lea	eax, [ebp-10h]
		push	eax		; _addr
		lea	edx, [ebp-0Ch]
		push	edx		; dumptype
		lea	ecx, [ebp-8]
		push	ecx		; threadid
		or	eax, 0FFFFFFFFh
		test	edi, edi
		jz	short loc_4B4CFC
		add	eax, 2

loc_4B4CFC:				; CODE XREF: .text:004B4CF7j
		push	eax		; dir
		push	ebx		; ph
		call	Walkhistory
		add	esp, 1Ch
		test	eax, eax
		jz	short loc_4B4D0E
		xor	eax, eax
		jmp	short loc_4B4D7D
; ---------------------------------------------------------------------------

loc_4B4D0E:				; CODE XREF: .text:004B4D08j
		call	Getcputhreadid
		cmp	eax, [ebp-8]
		jnz	short loc_4B4D1D
		xor	edx, edx
		mov	[ebp-8], edx

loc_4B4D1D:				; CODE XREF: .text:004B4D16j
		mov	eax, [esi]
		mov	edx, [ebp-10h]
		mov	[eax+284h], edx
		test	byte ptr [eax+0Eh], 1
		jz	short loc_4B4D4D
		push	0		; mode
		push	0		; stackaddr
		mov	ecx, [ebp-18h]
		sub	ecx, [ebp-14h]
		push	ecx		; selsize
		push	0		; dumpaddr
		mov	eax, [ebp-14h]
		push	eax		; asmaddr
		mov	edx, [ebp-8]
		push	edx		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B4D74
; ---------------------------------------------------------------------------

loc_4B4D4D:				; CODE XREF: .text:004B4D2Cj
		mov	ecx, [ebp-0Ch]
		push	ecx
		call	loc_477D8C
		pop	ecx
		push	0		; mode
		push	0		; stackaddr
		mov	eax, [ebp-18h]
		sub	eax, [ebp-14h]
		push	eax		; selsize
		mov	edx, [ebp-14h]
		push	edx		; dumpaddr
		push	0		; asmaddr
		mov	ecx, [ebp-8]
		push	ecx		; threadid
		call	Setcpu
		add	esp, 18h

loc_4B4D74:				; CODE XREF: .text:004B4D4Bj
		mov	eax, 1
		jmp	short loc_4B4D7D
; ---------------------------------------------------------------------------

loc_4B4D7B:				; CODE XREF: .text:004B4C7Aj
		xor	eax, eax

loc_4B4D7D:				; CODE XREF: .text:004B4BFDj
					; .text:004B4C25j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4D84:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+8]
		mov	eax, pd
		test	eax, eax
		jz	short loc_4B4DA2
		test	byte ptr [eax+0Eh], 1
		jnz	short loc_4B4DA6

loc_4B4DA2:				; CODE XREF: .text:004B4D9Aj
		xor	eax, eax
		jmp	short loc_4B4DEB
; ---------------------------------------------------------------------------

loc_4B4DA6:				; CODE XREF: .text:004B4DA0j
		cmp	ebx, 1
		jnz	short loc_4B4DB8
		cmp	dword ptr [esi+268h], 0
		jnz	short loc_4B4DB8
		xor	eax, eax
		jmp	short loc_4B4DEB
; ---------------------------------------------------------------------------

loc_4B4DB8:				; CODE XREF: .text:004B4DA9j
					; .text:004B4DB2j
		test	ebx, ebx
		jnz	short loc_4B4DCD
		call	loc_4C49A0
		cmp	eax, [esi+268h]
		jg	short loc_4B4DCD
		xor	eax, eax
		jmp	short loc_4B4DEB
; ---------------------------------------------------------------------------

loc_4B4DCD:				; CODE XREF: .text:004B4DBAj
					; .text:004B4DC7j
		test	edi, edi
		jnz	short loc_4B4DD8
		mov	eax, 1
		jmp	short loc_4B4DEB
; ---------------------------------------------------------------------------

loc_4B4DD8:				; CODE XREF: .text:004B4DCFj
		dec	edi
		jnz	short loc_4B4DE9
		push	ebx
		call	loc_4C590C
		pop	ecx
		mov	eax, 1
		jmp	short loc_4B4DEB
; ---------------------------------------------------------------------------

loc_4B4DE9:				; CODE XREF: .text:004B4DD9j
		xor	eax, eax

loc_4B4DEB:				; CODE XREF: .text:004B4DA4j
					; .text:004B4DB6j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4DF0:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		cmp	dword_5FA98C, 0
		push	ebx
		mov	ebx, [ebp+14h]
		jz	short loc_4B4E1D
		mov	eax, pd
		cmp	dword ptr [eax+298h], 0
		jnz	short loc_4B4E1D
		mov	edx, pd
		test	byte ptr [edx+0Bh], 8
		jz	short loc_4B4E21

loc_4B4E1D:				; CODE XREF: .text:004B4E01j
					; .text:004B4E0Fj
		xor	eax, eax
		jmp	short loc_4B4E74
; ---------------------------------------------------------------------------

loc_4B4E21:				; CODE XREF: .text:004B4E1Bj
		lea	edx, [ebp-8]
		mov	eax, pd
		push	edx
		lea	ecx, [ebp-4]
		push	ecx
		mov	edx, [eax+288h]
		push	edx
		call	loc_4D4690
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4B4E45
		xor	eax, eax
		jmp	short loc_4B4E74
; ---------------------------------------------------------------------------

loc_4B4E45:				; CODE XREF: .text:004B4E3Fj
		test	ebx, ebx
		jnz	short loc_4B4E50
		mov	eax, 1
		jmp	short loc_4B4E74
; ---------------------------------------------------------------------------

loc_4B4E50:				; CODE XREF: .text:004B4E47j
		dec	ebx
		jnz	short loc_4B4E72
		push	0Dh		; mode
		push	0		; stackaddr
		mov	edx, [ebp-8]
		push	edx		; selsize
		push	0		; dumpaddr
		mov	ecx, [ebp-4]
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		mov	eax, 1
		jmp	short loc_4B4E74
; ---------------------------------------------------------------------------

loc_4B4E72:				; CODE XREF: .text:004B4E51j
		xor	eax, eax

loc_4B4E74:				; CODE XREF: .text:004B4E1Fj
					; .text:004B4E43j ...
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B4E7C:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		cmp	dword_5FA98C, 0
		push	ebx
		mov	ebx, [ebp+14h]
		jz	short loc_4B4EA9
		mov	eax, pd
		cmp	dword ptr [eax+298h], 0
		jnz	short loc_4B4EA9
		mov	edx, pd
		test	byte ptr [edx+0Bh], 8
		jz	short loc_4B4EAD

loc_4B4EA9:				; CODE XREF: .text:004B4E8Dj
					; .text:004B4E9Bj
		xor	eax, eax
		jmp	short loc_4B4F00
; ---------------------------------------------------------------------------

loc_4B4EAD:				; CODE XREF: .text:004B4EA7j
		lea	edx, [ebp-8]
		mov	eax, pd
		push	edx
		lea	ecx, [ebp-4]
		push	ecx
		mov	edx, [eax+288h]
		push	edx
		call	loc_4D45DC
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4B4ED1
		xor	eax, eax
		jmp	short loc_4B4F00
; ---------------------------------------------------------------------------

loc_4B4ED1:				; CODE XREF: .text:004B4ECBj
		test	ebx, ebx
		jnz	short loc_4B4EDC
		mov	eax, 1
		jmp	short loc_4B4F00
; ---------------------------------------------------------------------------

loc_4B4EDC:				; CODE XREF: .text:004B4ED3j
		dec	ebx
		jnz	short loc_4B4EFE
		push	0Dh		; mode
		push	0		; stackaddr
		mov	edx, [ebp-8]
		push	edx		; selsize
		push	0		; dumpaddr
		mov	ecx, [ebp-4]
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		mov	eax, 1
		jmp	short loc_4B4F00
; ---------------------------------------------------------------------------

loc_4B4EFE:				; CODE XREF: .text:004B4EDDj
		xor	eax, eax

loc_4B4F00:				; CODE XREF: .text:004B4EABj
					; .text:004B4ECFj ...
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B4F08:				; DATA XREF: .data:stru_552728o
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+14h]
		mov	eax, [ebp+10h]
		cmp	dword_5FA98C, 0
		jnz	short loc_4B4F1E
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4F1E:				; CODE XREF: .text:004B4F18j
		mov	ecx, pd
		test	byte ptr [ecx+0Ch], 2
		jz	short loc_4B4F2E
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4F2E:				; CODE XREF: .text:004B4F28j
		test	eax, eax
		jz	short loc_4B4F37
		cmp	eax, 1
		jnz	short loc_4B4F47

loc_4B4F37:				; CODE XREF: .text:004B4F30j
		cmp	dword_5FA960, 0C0000h
		jz	short loc_4B4F47
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4F47:				; CODE XREF: .text:004B4F35j
					; .text:004B4F41j
		cmp	eax, 2
		jz	short loc_4B4F51
		cmp	eax, 3
		jnz	short loc_4B4F61

loc_4B4F51:				; CODE XREF: .text:004B4F4Aj
		cmp	dword_5FA960, 0D0000h
		jz	short loc_4B4F61
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4F61:				; CODE XREF: .text:004B4F4Fj
					; .text:004B4F5Bj
		test	eax, eax
		jz	short loc_4B4F6A
		cmp	eax, 2
		jnz	short loc_4B4F71

loc_4B4F6A:				; CODE XREF: .text:004B4F63j
		mov	eax, dword_5FA980
		jmp	short loc_4B4F76
; ---------------------------------------------------------------------------

loc_4B4F71:				; CODE XREF: .text:004B4F68j
		mov	eax, dword_5FA984

loc_4B4F76:				; CODE XREF: .text:004B4F6Fj
		test	edx, edx
		jnz	short loc_4B4F89
		test	eax, eax
		jnz	short loc_4B4F82
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4F82:				; CODE XREF: .text:004B4F7Cj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4F89:				; CODE XREF: .text:004B4F78j
		dec	edx
		jnz	short loc_4B4FE6
		mov	edx, pd
		test	byte ptr [edx+0Eh], 1
		jz	short loc_4B4FAD
		push	5		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	eax		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B4FDF
; ---------------------------------------------------------------------------

loc_4B4FAD:				; CODE XREF: .text:004B4F96j
		mov	ecx, pd
		test	byte ptr [ecx+0Eh], 2
		jz	short loc_4B4FCE
		push	10h		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	eax		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4B4FDF
; ---------------------------------------------------------------------------

loc_4B4FCE:				; CODE XREF: .text:004B4FB7j
		push	0		; size
		push	eax		; _addr
		mov	eax, pd
		push	eax		; pd
		call	Newdumpselection
		add	esp, 0Ch

loc_4B4FDF:				; CODE XREF: .text:004B4FABj
					; .text:004B4FCCj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B4FE6:				; CODE XREF: .text:004B4F8Aj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
