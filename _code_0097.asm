.code

; MENUFUNC loc_4C3268
loc_4C3268:				; DATA XREF: .text:004C5940o
					; .data:stru_55D35Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+10h]
		cmp	dword_5FC8B4, 0
		jnz	short loc_4C3283
		xor	eax, eax
		jmp	loc_4C3320
; ---------------------------------------------------------------------------

loc_4C3283:				; CODE XREF: .text:004C327Aj
		cmp	ebx, 1
		jnz	short loc_4C3298
		cmp	stru_5FC458.sorted.selected, 0
		jg	short loc_4C3298
		xor	eax, eax
		jmp	loc_4C3320
; ---------------------------------------------------------------------------

loc_4C3298:				; CODE XREF: .text:004C3286j
					; .text:004C328Fj
		test	ebx, ebx
		jnz	short loc_4C32AD
		call	loc_4C49A0
		cmp	eax, stru_5FC458.sorted.selected
		jg	short loc_4C32AD
		xor	eax, eax
		jmp	short loc_4C3320
; ---------------------------------------------------------------------------

loc_4C32AD:				; CODE XREF: .text:004C329Aj
					; .text:004C32A7j
		test	esi, esi
		jnz	short loc_4C32B8
		mov	eax, 1
		jmp	short loc_4C3320
; ---------------------------------------------------------------------------

loc_4C32B8:				; CODE XREF: .text:004C32AFj
		dec	esi
		jnz	short loc_4C331E
		mov	edx, 1
		test	ebx, ebx
		jz	short loc_4C32C7
		add	edx, 0FFFFFFFEh

loc_4C32C7:				; CODE XREF: .text:004C32C2j
		push	edx		; n
		push	offset stru_5FC458 ; pt
		call	Movetableselection
		add	esp, 8
		cmp	stru_5FC458.sorted.selected, 0
		jnz	short loc_4C32FC
		push	0A004h		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		mov	ecx, stru_5FC6F0.threadid
		push	ecx		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4C3317
; ---------------------------------------------------------------------------

loc_4C32FC:				; CODE XREF: .text:004C32DCj
		push	1A004h		; mode
		push	0		; stackaddr
		push	0		; selsize
		mov	eax, stru_5FC458.sorted.selected
		push	0		; dumpaddr
		push	eax		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_4C3317:				; CODE XREF: .text:004C32FAj
		mov	eax, 1
		jmp	short loc_4C3320
; ---------------------------------------------------------------------------

loc_4C331E:				; CODE XREF: .text:004C32B9j
		xor	eax, eax

loc_4C3320:				; CODE XREF: .text:004C327Ej
					; .text:004C3293j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; MENUFUNC loc_4C3324
loc_4C3324:				; DATA XREF: .text:004C5841o
					; .data:stru_55D35Co
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		cmp	dword_5FC8B4, 0
		jnz	short loc_4C3337
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3337:				; CODE XREF: .text:004C3331j
		test	eax, eax
		jnz	short loc_4C3342
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3342:				; CODE XREF: .text:004C3339j
		dec	eax
		jnz	short loc_4C3389
		cmp	stru_5FC458.sorted.selected, 0
		jnz	short loc_4C3369
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		mov	edx, stru_5FC6F0.threadid
		push	edx		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4C3385
; ---------------------------------------------------------------------------

loc_4C3369:				; CODE XREF: .text:004C334Cj
		push	1000Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		mov	ecx, stru_5FC458.sorted.selected
		push	0		; dumpaddr
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_4C3385:				; CODE XREF: .text:004C3367j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3389:				; CODE XREF: .text:004C3343j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4C3390:				; DATA XREF: .data:stru_55D35Co
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		cmp	dword_5FC288, 0
		jz	short loc_4C33AD
		mov	edx, dword_5FC6CC
		cmp	edx, dword_5FC6D0
		jnz	short loc_4C33B1

loc_4C33AD:				; CODE XREF: .text:004C339Dj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C33B1:				; CODE XREF: .text:004C33ABj
		test	eax, eax
		jnz	short loc_4C33BC
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C33BC:				; CODE XREF: .text:004C33B3j
		dec	eax
		jnz	short loc_4C33CE
		push	1
		call	loc_4C4318
		pop	ecx
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C33CE:				; CODE XREF: .text:004C33BDj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C33D4:				; DATA XREF: .data:stru_55D2CCo
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		mov	edx, [ebp+10h]
		test	eax, eax
		jnz	short loc_4C340A
		test	edx, edx
		jnz	short loc_4C33EE
		cmp	dword_5FC6E8, 0
		jz	short loc_4C33FC

loc_4C33EE:				; CODE XREF: .text:004C33E3j
		cmp	edx, 1
		jnz	short loc_4C3403
		cmp	dword_5FC6E8, 0
		jz	short loc_4C3403

loc_4C33FC:				; CODE XREF: .text:004C33ECj
		mov	eax, 2
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3403:				; CODE XREF: .text:004C33F1j
					; .text:004C33FAj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C340A:				; CODE XREF: .text:004C33DFj
		dec	eax
		jnz	short loc_4C3424
		mov	ecx, dword_5FC6EC
		push	ecx
		push	edx
		call	loc_4C3180
		add	esp, 8
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3424:				; CODE XREF: .text:004C340Bj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3428:				; DATA XREF: .data:stru_55D314o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		mov	edx, [ebp+10h]
		test	eax, eax
		jnz	short loc_4C345E
		test	edx, edx
		jnz	short loc_4C3442
		cmp	dword_5FC6EC, 0
		jz	short loc_4C3450

loc_4C3442:				; CODE XREF: .text:004C3437j
		cmp	edx, 1
		jnz	short loc_4C3457
		cmp	dword_5FC6EC, 0
		jz	short loc_4C3457

loc_4C3450:				; CODE XREF: .text:004C3440j
		mov	eax, 2
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3457:				; CODE XREF: .text:004C3445j
					; .text:004C344Ej
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C345E:				; CODE XREF: .text:004C3433j
		dec	eax
		jnz	short loc_4C3478
		push	edx
		mov	edx, dword_5FC6E8
		push	edx
		call	loc_4C3180
		add	esp, 8
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3478:				; CODE XREF: .text:004C345Fj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C347C:				; DATA XREF: .data:stru_55D1DCo
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		mov	ecx, [ebp+10h]
		cmp	dword_5FC288, 0
		jnz	short loc_4C3492
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3492:				; CODE XREF: .text:004C348Cj
		mov	edx, dword_55D0AC
		test	edx, edx
		jl	short loc_4C34A1
		cmp	edx, 8
		jl	short loc_4C34AB

loc_4C34A1:				; CODE XREF: .text:004C349Aj
		mov	dword_55D0AC, 0FFFFFFFFh

loc_4C34AB:				; CODE XREF: .text:004C349Fj
		test	eax, eax
		jnz	short loc_4C34CC
		mov	eax, dword_55D0AC
		cmp	eax, ecx
		jnz	short loc_4C34C5
		mov	edx, 2
		inc	eax
		jz	short loc_4C34C1
		inc	edx

loc_4C34C1:				; CODE XREF: .text:004C34BEj
		mov	eax, edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C34C5:				; CODE XREF: .text:004C34B6j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C34CC:				; CODE XREF: .text:004C34ADj
		dec	eax
		jnz	short loc_4C34DC
		mov	dword_55D0AC, ecx
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C34DC:				; CODE XREF: .text:004C34CDj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __usercall loc_4C34E0@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4C34E0:				; DATA XREF: .data:stru_55D35Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		cmp	dword_5FC288, 0
		push	ebx		; arglist
		mov	ebx, [ebp+8]
		mov	edx, [ebp+14h]
		mov	eax, [ebp+10h]
		jz	short loc_4C3507
		mov	ecx, dword_5FC6CC
		cmp	ecx, dword_5FC6D0
		jnz	short loc_4C350E

loc_4C3507:				; CODE XREF: .text:004C34F7j
		xor	eax, eax
		jmp	loc_4C3620
; ---------------------------------------------------------------------------

loc_4C350E:				; CODE XREF: .text:004C3505j
		cmp	dword_5FC6E4, 0
		jnz	short loc_4C3523
		cmp	eax, 2
		jnz	short loc_4C3523
		xor	eax, eax
		jmp	loc_4C3620
; ---------------------------------------------------------------------------

loc_4C3523:				; CODE XREF: .text:004C3515j
					; .text:004C351Aj
		test	eax, eax
		jnz	short loc_4C3537
		cmp	dword_5FC8B4, 0
		jnz	short loc_4C3537
		xor	eax, eax
		jmp	loc_4C3620
; ---------------------------------------------------------------------------

loc_4C3537:				; CODE XREF: .text:004C3525j
					; .text:004C352Ej
		test	edx, edx
		jnz	short loc_4C3545
		mov	eax, 1
		jmp	loc_4C3620
; ---------------------------------------------------------------------------

loc_4C3545:				; CODE XREF: .text:004C3539j
		dec	edx
		jnz	loc_4C361E
		test	eax, eax
		jnz	short loc_4C3561
		mov	edx, stru_5FC6F0._ip
		mov	dword_5FC6E4, edx
		jmp	loc_4C3612
; ---------------------------------------------------------------------------

loc_4C3561:				; CODE XREF: .text:004C354Ej
		cmp	eax, 1
		jnz	loc_4C360A
		lea	ecx, [ebp-0Ch]
		push	ecx		; coord
		push	3		; column
		push	ebx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4C3586
		or	eax, 0FFFFFFFFh
		mov	[ebp-8], eax
		mov	[ebp-0Ch], eax

loc_4C3586:				; CODE XREF: .text:004C357Bj
		push	0		; mode
		mov	edx, [ebx+234h]
		push	edx		; fi
		mov	ecx, [ebp-8]
		push	ecx		; y
		mov	eax, [ebp-0Ch]
		push	eax		; x
		push	65h		; savetype
		call	Getcputhreadid
		push	eax		; threadid
		lea	edx, [ebp-4]
		push	edx		; u
		push	offset aEnterExpress_0 ; "Enter	expression to mark"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	ecx, [ebx+22Ch]
		push	ecx		; hparent
		call	Getdwordexpression
		add	esp, 24h
		test	eax, eax
		jz	short loc_4C35C6
		xor	eax, eax
		jmp	short loc_4C3620
; ---------------------------------------------------------------------------

loc_4C35C6:				; CODE XREF: .text:004C35C0j
		mov	edx, [ebp-4]
		inc	edx
		push	edx		; addr1
		mov	ecx, [ebp-4]
		push	ecx		; addr0
		call	Findruntracerecord
		add	esp, 8
		test	eax, eax
		jge	short loc_4C35F1
		push	offset aNoRecordFoun_0 ; "No record found"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	short loc_4C3620
; ---------------------------------------------------------------------------

loc_4C35F1:				; CODE XREF: .text:004C35D9j
		mov	edx, [ebp-4]
		mov	dword_5FC6E4, edx
		push	eax		; selected
		push	offset stru_5FC458 ; pt
		call	Settableselection
		add	esp, 8
		jmp	short loc_4C3612
; ---------------------------------------------------------------------------

loc_4C360A:				; CODE XREF: .text:004C3564j
		xor	ecx, ecx
		mov	dword_5FC6E4, ecx

loc_4C3612:				; CODE XREF: .text:004C355Cj
					; .text:004C3608j
		call	loc_4C60D4
		mov	eax, 1
		jmp	short loc_4C3620
; ---------------------------------------------------------------------------

loc_4C361E:				; CODE XREF: .text:004C3546j
		xor	eax, eax

loc_4C3620:				; CODE XREF: .text:004C3509j
					; .text:004C351Ej ...
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4C3628@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4C3628:				; DATA XREF: .data:stru_55D35Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi		; arglist
		mov	ebx, [ebp+14h]
		mov	esi, [ebp+10h]
		cmp	dword_5FC288, 0
		jz	short loc_4C365C
		mov	eax, dword_5FC6CC
		cmp	eax, dword_5FC6D0
		jz	short loc_4C365C
		cmp	dword_5FC6E4, 0
		jz	short loc_4C365C
		cmp	stru_5FC458.sorted.selected, 0
		jge	short loc_4C3663

loc_4C365C:				; CODE XREF: .text:004C363Bj
					; .text:004C3648j ...
		xor	eax, eax
		jmp	loc_4C374C
; ---------------------------------------------------------------------------

loc_4C3663:				; CODE XREF: .text:004C365Aj
		call	loc_4C49A0
		mov	edx, eax
		test	ebx, ebx
		jnz	short loc_4C36A0
		test	esi, esi
		jnz	short loc_4C3681
		cmp	edx, stru_5FC458.sorted.selected
		jg	short loc_4C3681
		xor	eax, eax
		jmp	loc_4C374C
; ---------------------------------------------------------------------------

loc_4C3681:				; CODE XREF: .text:004C3670j
					; .text:004C3678j
		cmp	esi, 1
		jnz	short loc_4C3696
		cmp	stru_5FC458.sorted.selected, 0
		jnz	short loc_4C3696
		xor	eax, eax
		jmp	loc_4C374C
; ---------------------------------------------------------------------------

loc_4C3696:				; CODE XREF: .text:004C3684j
					; .text:004C368Dj
		mov	eax, 1
		jmp	loc_4C374C
; ---------------------------------------------------------------------------

loc_4C36A0:				; CODE XREF: .text:004C366Cj
		dec	ebx
		jnz	loc_4C374A
		mov	ebx, stru_5FC458.sorted.selected
		mov	eax, dword_5FC6CC
		sub	eax, ebx
		dec	eax
		test	eax, eax
		jge	short loc_4C36BF
		add	eax, dword_5FC6C4

loc_4C36BF:				; CODE XREF: .text:004C36B7j
					; .text:004C3725j
		test	esi, esi
		jnz	short loc_4C36EB
		inc	ebx
		cmp	edx, ebx
		jg	short loc_4C36DE
		push	offset aMarkNotFound ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	short loc_4C374C
; ---------------------------------------------------------------------------

loc_4C36DE:				; CODE XREF: .text:004C36C6j
		dec	eax
		test	eax, eax
		jge	short loc_4C3713
		add	eax, dword_5FC6C4
		jmp	short loc_4C3713
; ---------------------------------------------------------------------------

loc_4C36EB:				; CODE XREF: .text:004C36C1j
		dec	ebx
		test	ebx, ebx
		jge	short loc_4C3706
		push	offset aMarkNotFound ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	short loc_4C374C
; ---------------------------------------------------------------------------

loc_4C3706:				; CODE XREF: .text:004C36EEj
		inc	eax
		mov	ecx, dword_5FC6C4
		cmp	eax, ecx
		jl	short loc_4C3713
		sub	eax, ecx

loc_4C3713:				; CODE XREF: .text:004C36E1j
					; .text:004C36E9j ...
		lea	ecx, [eax+eax*2]
		mov	edi, dword_5FC288
		mov	ecx, [edi+ecx*4]
		cmp	ecx, dword_5FC6E4
		jnz	short loc_4C36BF
		push	ebx		; selected
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Settableselection
		add	esp, 8
		push	1
		push	ebx
		mov	edx, [ebp+8]
		push	edx
		call	loc_4C4D5C
		add	esp, 0Ch
		mov	eax, 1
		jmp	short loc_4C374C
; ---------------------------------------------------------------------------

loc_4C374A:				; CODE XREF: .text:004C36A1j
		xor	eax, eax

loc_4C374C:				; CODE XREF: .text:004C365Ej
					; .text:004C367Cj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C3754:				; DATA XREF: .data:stru_55D35Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+10h]
		cmp	dword_5FC288, 0
		jnz	short loc_4C376C
		xor	eax, eax
		jmp	short loc_4C37C7
; ---------------------------------------------------------------------------

loc_4C376C:				; CODE XREF: .text:004C3766j
		test	ebx, ebx
		jnz	short loc_4C3792
		cmp	dword_5FC8B4, 0
		jnz	short loc_4C377D
		xor	eax, eax
		jmp	short loc_4C37C7
; ---------------------------------------------------------------------------

loc_4C377D:				; CODE XREF: .text:004C3777j
		mov	edx, stru_5FC6F0._ip
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_4C3792
		xor	eax, eax
		jmp	short loc_4C37C7
; ---------------------------------------------------------------------------

loc_4C3792:				; CODE XREF: .text:004C376Ej
					; .text:004C378Cj
		test	esi, esi
		jnz	short loc_4C379D
		mov	eax, 1
		jmp	short loc_4C37C7
; ---------------------------------------------------------------------------

loc_4C379D:				; CODE XREF: .text:004C3794j
		dec	esi
		jnz	short loc_4C37C5
		test	ebx, ebx
		jnz	short loc_4C37B5
		mov	edx, [eax+4]
		push	edx
		mov	ecx, [eax]
		push	ecx
		call	loc_4C5E48
		add	esp, 8
		jmp	short loc_4C37C1
; ---------------------------------------------------------------------------

loc_4C37B5:				; CODE XREF: .text:004C37A2j
		push	0FFFFFFFFh
		push	0
		call	loc_4C5E48
		add	esp, 8

loc_4C37C1:				; CODE XREF: .text:004C37B3j
		xor	eax, eax
		jmp	short loc_4C37C7
; ---------------------------------------------------------------------------

loc_4C37C5:				; CODE XREF: .text:004C379Ej
		xor	eax, eax

loc_4C37C7:				; CODE XREF: .text:004C376Aj
					; .text:004C377Bj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4C37CC@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4C37CC:				; DATA XREF: .data:stru_55D35Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFA44h
		cmp	tracefile, 0
		push	ebx
		push	esi
		push	edi		; arglist
		mov	eax, [ebp+14h]
		jz	short loc_4C37EB
		xor	eax, eax
		jmp	loc_4C3A1B
; ---------------------------------------------------------------------------

loc_4C37EB:				; CODE XREF: .text:004C37E2j
		test	eax, eax
		jnz	short loc_4C37F9
		mov	eax, 1
		jmp	loc_4C3A1B
; ---------------------------------------------------------------------------

loc_4C37F9:				; CODE XREF: .text:004C37EDj
		dec	eax
		jnz	loc_4C3A19
		push	offset word_5C8724 ; src
		push	104h		; n
		lea	edx, [ebp-214h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, dword_5C8930
		and	ecx, 0E0000h
		mov	eax, hwollymain
		or	ecx, 38000000h
		lea	edx, [ebp-214h]
		push	ecx		; mode
		push	eax		; hwnd
		push	offset a_txt_0	; "*.txt"
		push	0		; currdir
		push	0		; args
		push	edx		; _name
		push	offset aSelectFileForT ; "Select file for the run trace	data"
		call	_T
		pop	ecx
		push	eax		; _title
		call	Browsefilename
		add	esp, 1Ch
		test	eax, eax
		jnz	short loc_4C3861
		xor	eax, eax
		jmp	loc_4C3A1B
; ---------------------------------------------------------------------------

loc_4C3861:				; CODE XREF: .text:004C3858j
		mov	ebx, eax
		and	ebx, 0E0000h
		test	ebx, 80000h
		mov	dword_5C8930, ebx
		jz	short loc_4C387E
		mov	eax, offset aAT_0 ; "a+t"
		jmp	short loc_4C3883
; ---------------------------------------------------------------------------

loc_4C387E:				; CODE XREF: .text:004C3875j
		mov	eax, offset aWt_0 ; "wt"

loc_4C3883:				; CODE XREF: .text:004C387Cj
		push	eax		; mode
		lea	edx, [ebp-214h]
		push	edx		; path
		call	__wfopen
		add	esp, 8
		mov	esi, eax
		mov	tracefile, esi
		test	esi, esi
		jnz	short loc_4C38BF
		lea	eax, [ebp-214h]
		push	eax		; arglist
		push	offset aUnableToOpenRu ; "Unable to open run trace log file '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		jmp	loc_4C3A15
; ---------------------------------------------------------------------------

loc_4C38BF:				; CODE XREF: .text:004C389Dj
		lea	edx, [ebp-214h]
		push	edx		; src
		push	104h		; n
		push	offset word_5C8724 ; dest
		call	StrcopyW
		add	esp, 0Ch
		test	byte ptr dword_5C8930+2, 4
		jz	loc_4C3A15
		push	180h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	ecx, hwollymain
		push	ecx		; hWnd
		call	RedrawWindow
		mov	eax, g_hCursor
		push	eax		; hCursor
		call	SetCursor
		mov	[ebp-0Ch], eax
		call	loc_4C49A0
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 2
		jge	short loc_4C391D
		xor	eax, eax
		jmp	loc_4C3A1B
; ---------------------------------------------------------------------------

loc_4C391D:				; CODE XREF: .text:004C3914j
		lea	edx, [ebp-224h]
		lea	ecx, [ebp-3F8h]
		push	edx		; cmd
		push	ecx		; preg
		mov	eax, [ebp-4]
		dec	eax
		push	eax		; nback
		call	Getruntrace
		add	esp, 0Ch
		mov	[ebp-8], eax
		mov	ebx, [ebp-4]
		add	ebx, 0FFFFFFFEh
		xor	edi, edi
		test	ebx, ebx
		jl	loc_4C39FD

loc_4C394B:				; CODE XREF: .text:004C39F7j
		cmp	edi, 4000h
		jl	short loc_4C3980
		push	offset aSavingExisting ; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp-4]
		dec	eax
		push	eax		; nDenominator
		mov	edx, [ebp-4]
		sub	edx, ebx
		dec	edx
		push	edx		; nNumerator
		push	3E8h		; nNumber
		call	MulDiv
		push	eax		; promille
		call	Progress
		add	esp, 8
		xor	edi, edi

loc_4C3980:				; CODE XREF: .text:004C3951j
		lea	eax, [ebp-234h]
		lea	edx, [ebp-5BCh]
		push	eax		; cmd
		push	edx		; preg
		push	ebx		; nback
		call	Getruntrace
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jl	short loc_4C39F3
		mov	eax, [ebp-8]
		push	eax		; int
		lea	edx, [ebp-224h]
		push	edx		; int
		lea	ecx, [ebp-5BCh]
		push	ecx		; int
		lea	eax, [ebp-3F8h]
		push	eax		; t_reg	*
		call	loc_4C2990
		add	esp, 10h
		mov	[ebp-8], esi
		push	esi
		push	edi
		lea	esi, [ebp-5BCh]
		lea	edi, [ebp-3F8h]
		mov	ecx, 71h
		rep movsd
		pop	edi
		pop	esi
		test	esi, esi
		jle	short loc_4C39F3
		push	esi		; n
		lea	eax, [ebp-234h]
		push	eax		; src
		lea	edx, [ebp-224h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch

loc_4C39F3:				; CODE XREF: .text:004C399Bj
					; .text:004C39DAj
		dec	ebx
		inc	edi
		test	ebx, ebx
		jge	loc_4C394B

loc_4C39FD:				; CODE XREF: .text:004C3945j
		push	(offset	aUnableToAllo_2+5Bh) ; format
		push	0		; promille
		call	Progress
		add	esp, 8
		mov	ecx, [ebp-0Ch]
		push	ecx		; hCursor
		call	SetCursor

loc_4C3A15:				; CODE XREF: .text:004C38BAj
					; .text:004C38DFj
		xor	eax, eax
		jmp	short loc_4C3A1B
; ---------------------------------------------------------------------------

loc_4C3A19:				; CODE XREF: .text:004C37FAj
		xor	eax, eax

loc_4C3A1B:				; CODE XREF: .text:004C37E6j
					; .text:004C37F4j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C3A24:				; DATA XREF: .data:stru_55D35Co
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		mov	edx, tracefile
		test	edx, edx
		jnz	short loc_4C3A38
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3A38:				; CODE XREF: .text:004C3A32j
		test	eax, eax
		jnz	short loc_4C3A43
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3A43:				; CODE XREF: .text:004C3A3Aj
		dec	eax
		jnz	short loc_4C3A6D
		push	offset aLoggingStopp_0 ; "--------  Logging stopped\n\n"
		push	edx		; stream
		call	_fprintf
		add	esp, 8
		mov	edx, tracefile
		push	edx		; stream
		call	_fclose
		pop	ecx
		xor	ecx, ecx
		xor	eax, eax
		mov	tracefile, ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3A6D:				; CODE XREF: .text:004C3A44j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C3A74:				; CODE XREF: .text:004C590Fp
					; .text:004C595Fp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, offset aUnableToAllo_2 ; "Unable to allocate memory for run trace"...
;__DebugBreak
		cmp	stru_5FC458.bar.nbar, 0
		jnz	loc_4C3C08
		lea	eax, aRunTraceData;[ebx+1048h]
		push	eax		; src
		push	offset stru_5FC458 ; dst
		call	_wcscpy
		mov	stru_5FC458.mode, 20F000Bh
		lea	edx, aBack;[ebx+1066h]
		mov	stru_5FC458.bar.visible, 1
		mov	stru_5FC458.bar._name, edx
		lea	ecx, aBackwardIndexO;[ebx+1070h]
		xor	eax, eax
		mov	stru_5FC458.bar.expl, ecx
		mov	stru_5FC458.bar.mode, eax
		lea	edx, aThread_4;[ebx+10CEh]
		mov	stru_5FC458.bar.defdx, 9
		mov	stru_5FC458.bar._name+4,	edx
		lea	ecx, aThreadInWhichT;[ebx+10DCh]
		xor	eax, eax
		mov	stru_5FC458.bar.expl+4,	ecx
		mov	stru_5FC458.bar.mode+4,	eax
		lea	edx, aModule_5;[ebx+112Eh]
		mov	stru_5FC458.bar.defdx+4, 8
		mov	stru_5FC458.bar._name+8,	edx
		lea	ecx, aModuleToWhichT;[ebx+113Ch]
		xor	eax, eax
		mov	stru_5FC458.bar.expl+8,	ecx
		mov	stru_5FC458.bar.mode+8,	eax
		lea	edx, aAddress_11;[ebx+1184h]
		mov	stru_5FC458.bar.defdx+8, 9
		mov	stru_5FC458.bar._name+0Ch, edx
		lea	ecx, aAddressOfTheCo;[ebx+1194h]
		add	esp, 8
		xor	eax, eax
		mov	stru_5FC458.bar.expl+0Ch, ecx
		mov	stru_5FC458.bar.mode+0Ch, eax
		lea	edx, aCommand_3;[ebx+11C2h]
		mov	stru_5FC458.bar.defdx+0Ch, 9
		mov	stru_5FC458.bar._name+10h, edx
		lea	ecx, aDisassembled_3;[ebx+11D2h]
		mov	stru_5FC458.bar.expl+10h, ecx
		mov	stru_5FC458.bar.mode+10h, 1000h
		mov	stru_5FC458.bar.defdx+10h, 28h
		mov	eax, dword_5FC6EC
		mov	edx, dword_5FC6E8
		push	eax
		push	edx
		call	loc_4C3180
		add	esp, 8
		mov	stru_5FC458.bar.mode+14h, 1
		mov	stru_5FC458.bar.defdx+14h, 18h
		mov	stru_5FC458.bar.mode+18h, 1
		mov	stru_5FC458.bar.defdx+18h, 100h
		mov	stru_5FC458.bar.nbar, 7
		mov	stru_5FC458.tabfunc, offset loc_4C5810
		xor	ecx, ecx
		mov	stru_5FC458.custommode,	ecx
		xor	eax, eax
		mov	stru_5FC458.customdata,	eax
		xor	edx, edx
		mov	stru_5FC458.updatefunc,	edx
		mov	stru_5FC458.drawfunc, offset loc_4C4E08
		mov	stru_5FC458.tableselfunc, offset loc_4C4D5C
		mov	stru_5FC458.menu, offset stru_55D35C

loc_4C3C08:				; CODE XREF: .text:004C3A84j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C3C0C:				; CODE XREF: .text:004C3E3Bp
					; .text:004C6034p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE0h
		push	ebx
		push	esi
		push	edi
		push	4		; mode
		push	0		; destfunc
		push	offset loc_4C5B20 ; sortfunc
		push	2000h		; nexp
		push	8		; itemsize
		push	offset stru_5FC8B8.sorted ; sd
		call	Createsorteddata
		add	esp, 18h
		test	eax, eax
		jz	short loc_4C3C3D
		xor	eax, eax
		jmp	loc_4C3E0A
; ---------------------------------------------------------------------------

loc_4C3C3D:				; CODE XREF: .text:004C3C34j
		cmp	process, 0
		jnz	short loc_4C3C4D
		xor	eax, eax
		jmp	loc_4C3E0A
; ---------------------------------------------------------------------------

loc_4C3C4D:				; CODE XREF: .text:004C3C44j
		mov	edx, g_hCursor
		push	edx		; hCursor
		call	SetCursor
		mov	[ebp-20h], eax
		call	Listmemory
		xor	ecx, ecx	; int
		xor	eax, eax	; int
		mov	[ebp-0Ch], ecx
		mov	[ebp-8], eax
		cmp	dword_5FCB24, 0
		jnz	short loc_4C3CB5
		push	3		; flags
		push	800h		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_4C3CBA
		mov	edx, [ebp-14h]
		push	edx
		call	loc_4C3120
		pop	ecx
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	eax, [ebp-14h]

loc_4C3C9E:				; CODE XREF: .text:004C3CB1j
		cmp	byte ptr [eax],	0
		jz	short loc_4C3CA6
		inc	dword ptr [ebp-8]

loc_4C3CA6:				; CODE XREF: .text:004C3CA1j
		inc	dword ptr [ebp-4]
		inc	eax
		cmp	dword ptr [ebp-4], 800h
		jl	short loc_4C3C9E
		jmp	short loc_4C3CBA
; ---------------------------------------------------------------------------

loc_4C3CB5:				; CODE XREF: .text:004C3C72j
		xor	edx, edx
		mov	[ebp-14h], edx

loc_4C3CBA:				; CODE XREF: .text:004C3C8Aj
					; .text:004C3CB3j
		xor	ecx, ecx
		mov	ebx, dword_5FCB24
		mov	[ebp-4], ecx
		jmp	loc_4C3D97
; ---------------------------------------------------------------------------

loc_4C3CCA:				; CODE XREF: .text:004C3DA4j
		sub	eax, ebx
		cmp	eax, 200000h
		jbe	short loc_4C3CD8
		mov	eax, 200000h

loc_4C3CD8:				; CODE XREF: .text:004C3CD1j
		add	eax, ebx
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_4C3CF5
		mov	edx, ebx
		shr	edx, 15h
		mov	ecx, [ebp-14h]
		cmp	byte ptr [ecx+edx], 0
		jz	loc_4C3D94

loc_4C3CF5:				; CODE XREF: .text:004C3CE1j
		cmp	dword ptr [ebp-8], 0
		jle	short loc_4C3D2B
		push	offset aProfiling ; "Profiling - $%%"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp-4]
		shl	eax, 3
		lea	eax, [eax+eax*4]
		lea	eax, [eax+eax*4]
		lea	eax, [eax+eax*4]
		add	eax, 3E8h
		cdq
		idiv	dword ptr [ebp-8]
		push	eax		; promille
		call	Progress
		add	esp, 8
		inc	dword ptr [ebp-4]

loc_4C3D2B:				; CODE XREF: .text:004C3CF9j
		mov	ecx, [ebp-10h]
		sub	ecx, ebx
		shl	ecx, 2
		push	ecx		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4C3D48
		mov	ebx, [ebp-10h]
		inc	dword ptr [ebp-0Ch]
		jmp	short loc_4C3D97
; ---------------------------------------------------------------------------

loc_4C3D48:				; CODE XREF: .text:004C3D3Ej
		push	esi		; s
		mov	eax, [ebp-10h]
		push	eax		; int
		push	ebx		; int
		call	loc_4C4CB4
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4C3D5F
		mov	ebx, [ebp-10h]
		jmp	short loc_4C3D97
; ---------------------------------------------------------------------------

loc_4C3D5F:				; CODE XREF: .text:004C3D58j
		xor	edi, edi
		mov	eax, esi
		mov	esi, eax
		jmp	short loc_4C3D8B
; ---------------------------------------------------------------------------

loc_4C3D67:				; CODE XREF: .text:004C3D92j
		mov	eax, [esi]
		test	eax, eax
		jz	short loc_4C3D87
		lea	edx, [edi+ebx]
		lea	ecx, [ebp-1Ch]
		mov	[ebp-1Ch], edx
		mov	[ebp-18h], eax
		push	ecx		; item
		push	offset stru_5FC8B8.sorted ; sd
		call	Addsorteddata
		add	esp, 8

loc_4C3D87:				; CODE XREF: .text:004C3D6Bj
		inc	edi
		add	esi, 4

loc_4C3D8B:				; CODE XREF: .text:004C3D65j
		mov	eax, [ebp-10h]
		sub	eax, ebx
		cmp	edi, eax
		jb	short loc_4C3D67

loc_4C3D94:				; CODE XREF: .text:004C3CEFj
		mov	ebx, [ebp-10h]

loc_4C3D97:				; CODE XREF: .text:004C3CC5j
					; .text:004C3D46j ...
		mov	eax, dword_5FCB24
		add	eax, dword_5FCB28
		cmp	ebx, eax
		jb	loc_4C3CCA
		push	(offset	aUnableToAllo_2+5Bh) ; format
		push	0		; promille
		call	Progress
		add	esp, 8
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_4C3DC9
		mov	edx, [ebp-14h]
		push	edx		; data
		call	Memfree
		pop	ecx

loc_4C3DC9:				; CODE XREF: .text:004C3DBDj
		push	0		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	eax, stru_5FC8B8.hw
		test	eax, eax
		jz	short loc_4C3DE4
		push	0		; bErase
		push	0		; lpRect
		push	eax		; hWnd
		call	InvalidateRect

loc_4C3DE4:				; CODE XREF: .text:004C3DD8j
		mov	edx, [ebp-20h]
		push	edx		; hCursor
		call	SetCursor
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4C3E05
		push	offset aIncompleteProf ; "Incomplete profile"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4C3E05:				; CODE XREF: .text:004C3DF1j
		mov	eax, stru_5FC8B8.sorted.n

loc_4C3E0A:				; CODE XREF: .text:004C3C38j
					; .text:004C3C48j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C3E14:				; DATA XREF: .data:stru_55D35Co
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		mov	edx, run.status
		test	edx, edx
		jz	short loc_4C3E29
		cmp	edx, 14h
		jnz	short loc_4C3E2D

loc_4C3E29:				; CODE XREF: .text:004C3E22j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3E2D:				; CODE XREF: .text:004C3E27j
		test	eax, eax
		jnz	short loc_4C3E38
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3E38:				; CODE XREF: .text:004C3E2Fj
		dec	eax
		jnz	short loc_4C3E47
		call	loc_4C3C0C
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3E47:				; CODE XREF: .text:004C3E39j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC loc_4C3E4C
loc_4C3E4C:				; DATA XREF: .text:004C5E1Fo
					; .data:stru_55D35Co
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+14h]
		mov	ebx, [ebp+10h]
		cmp	stru_5FC8B8.sorted.selected, 0
		jge	short loc_4C3E64
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3E64:				; CODE XREF: .text:004C3E5Dj
		test	eax, eax
		jnz	short loc_4C3E9C
		cmp	stru_5FC8B8.sorted.selected, 0
		jnz	short loc_4C3E7B
		cmp	ebx, 1
		jnz	short loc_4C3E7B
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3E7B:				; CODE XREF: .text:004C3E6Fj
					; .text:004C3E74j
		mov	edx, stru_5FC8B8.sorted.n
		dec	edx
		cmp	edx, stru_5FC8B8.sorted.selected
		jnz	short loc_4C3E94
		cmp	ebx, 2
		jnz	short loc_4C3E94
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3E94:				; CODE XREF: .text:004C3E88j
					; .text:004C3E8Dj
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3E9C:				; CODE XREF: .text:004C3E66j
		dec	eax
		jnz	short loc_4C3F0D
		test	ebx, ebx
		jz	short loc_4C3EBC
		or	edx, 0FFFFFFFFh
		cmp	ebx, 1
		jz	short loc_4C3EAE
		add	edx, 2

loc_4C3EAE:				; CODE XREF: .text:004C3EA9j
		push	edx		; n
		push	offset stru_5FC8B8 ; pt
		call	Movetableselection
		add	esp, 8

loc_4C3EBC:				; CODE XREF: .text:004C3EA1j
		mov	ecx, stru_5FC8B8.sorted.selected
		push	ecx		; index
		push	offset stru_5FC8B8.sorted ; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jnz	short loc_4C3EDC
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3EDC:				; CODE XREF: .text:004C3ED2j
		xor	edx, edx
		test	ebx, ebx
		jz	short loc_4C3EE8
		add	edx, 8000h

loc_4C3EE8:				; CODE XREF: .text:004C3EE0j
		or	edx, 0Dh
		or	edx, 20000h
		push	edx		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	ecx, [eax]
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3F0D:				; CODE XREF: .text:004C3E9Dj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C3F14:				; DATA XREF: .data:stru_55D35Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+10h]
		cmp	dword_5FC288, 0
		jz	short loc_4C3F3E
		mov	eax, dword_5FC6CC
		cmp	eax, dword_5FC6D0
		jz	short loc_4C3F3E
		cmp	stru_5FC8B8.sorted.selected, 0
		jge	short loc_4C3F42

loc_4C3F3E:				; CODE XREF: .text:004C3F26j
					; .text:004C3F33j
		xor	eax, eax
		jmp	short loc_4C3FB0
; ---------------------------------------------------------------------------

loc_4C3F42:				; CODE XREF: .text:004C3F3Cj
		mov	edx, stru_5FC8B8.sorted.selected
		push	edx		; index
		push	offset stru_5FC8B8.sorted ; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jnz	short loc_4C3F5E
		xor	eax, eax
		jmp	short loc_4C3FB0
; ---------------------------------------------------------------------------

loc_4C3F5E:				; CODE XREF: .text:004C3F58j
		cmp	dword_5FC6E4, 0
		jnz	short loc_4C3F70
		cmp	ebx, 2
		jnz	short loc_4C3F70
		xor	eax, eax
		jmp	short loc_4C3FB0
; ---------------------------------------------------------------------------

loc_4C3F70:				; CODE XREF: .text:004C3F65j
					; .text:004C3F6Aj
		test	esi, esi
		jnz	short loc_4C3F7B
		mov	eax, 1
		jmp	short loc_4C3FB0
; ---------------------------------------------------------------------------

loc_4C3F7B:				; CODE XREF: .text:004C3F72j
		dec	esi
		jnz	short loc_4C3FAE
		test	ebx, ebx
		jnz	short loc_4C3F8C
		mov	edx, [eax]
		mov	dword_5FC6E4, edx
		jmp	short loc_4C3F94
; ---------------------------------------------------------------------------

loc_4C3F8C:				; CODE XREF: .text:004C3F80j
		xor	ecx, ecx
		mov	dword_5FC6E4, ecx

loc_4C3F94:				; CODE XREF: .text:004C3F8Aj
		mov	eax, stru_5FC458.hw
		test	eax, eax
		jz	short loc_4C3FA7
		push	0		; bErase
		push	0		; lpRect
		push	eax		; hWnd
		call	InvalidateRect

loc_4C3FA7:				; CODE XREF: .text:004C3F9Bj
		mov	eax, 1
		jmp	short loc_4C3FB0
; ---------------------------------------------------------------------------

loc_4C3FAE:				; CODE XREF: .text:004C3F7Cj
		xor	eax, eax

loc_4C3FB0:				; CODE XREF: .text:004C3F40j
					; .text:004C3F5Cj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __usercall loc_4C3FB4@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4C3FB4:				; DATA XREF: .data:stru_55D35Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		mov	eax, stru_5FC8B8.sorted.selected
		test	eax, eax
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, [ebp+8]
		jge	short loc_4C3FD0
		xor	eax, eax
		jmp	loc_4C41CE
; ---------------------------------------------------------------------------

loc_4C3FD0:				; CODE XREF: .text:004C3FC7j
		push	eax		; index
		push	offset stru_5FC8B8.sorted ; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4C3FEB
		xor	eax, eax
		jmp	loc_4C41CE
; ---------------------------------------------------------------------------

loc_4C3FEB:				; CODE XREF: .text:004C3FE2j
		push	0		; subaddr
		mov	edx, [ebx]
		push	edx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4C4078
		push	0		; psize
		mov	eax, [ebx]
		push	eax		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_4C4040
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 1Ch
		jz	short loc_4C4040
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 1Dh
		jz	short loc_4C4040
		movzx	eax, byte ptr [eax]
		and	eax, 1Fh
		cmp	eax, 1Eh
		jz	short loc_4C4040
		xor	eax, eax
		jmp	loc_4C41CE
; ---------------------------------------------------------------------------

loc_4C4040:				; CODE XREF: .text:004C4014j
					; .text:004C4020j ...
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4C4057
		test	esi, esi
		jz	short loc_4C4057
		test	byte ptr [esi+9], 10h
		jz	short loc_4C4057
		xor	eax, eax
		jmp	loc_4C41CE
; ---------------------------------------------------------------------------

loc_4C4057:				; CODE XREF: .text:004C4044j
					; .text:004C4048j ...
		cmp	dword ptr [ebp+10h], 3
		jnz	short loc_4C406E
		test	esi, esi
		jz	short loc_4C4067
		test	byte ptr [esi+9], 10h
		jnz	short loc_4C406E

loc_4C4067:				; CODE XREF: .text:004C405Fj
		xor	eax, eax
		jmp	loc_4C41CE
; ---------------------------------------------------------------------------

loc_4C406E:				; CODE XREF: .text:004C405Bj
					; .text:004C4065j
		mov	eax, 1
		jmp	loc_4C41CE
; ---------------------------------------------------------------------------

loc_4C4078:				; CODE XREF: .text:004C4003j
		cmp	dword ptr [ebp+14h], 1
		jnz	loc_4C41CC
		test	esi, esi
		jnz	short loc_4C409A
		mov	edx, [ebx]
		push	edx		; _addr
		call	Confirmint3breakpoint
		pop	ecx
		test	eax, eax
		jz	short loc_4C409A
		xor	eax, eax
		jmp	loc_4C41CE
; ---------------------------------------------------------------------------

loc_4C409A:				; CODE XREF: .text:004C4084j
					; .text:004C4091j
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4C40AA
		cmp	dword ptr [ebp+10h], 3
		jnz	loc_4C4134

loc_4C40AA:				; CODE XREF: .text:004C409Ej
		test	esi, esi
		jz	short loc_4C40C6
		test	byte ptr [esi+9], 10h
		jz	short loc_4C40C6
		push	1000h		; type
		mov	edx, [ebx]
		push	edx		; _addr
		call	Removeint3breakpoint
		add	esp, 8
		jmp	short loc_4C4105
; ---------------------------------------------------------------------------

loc_4C40C6:				; CODE XREF: .text:004C40ACj
					; .text:004C40B2j
		push	(offset	aUnableToAllo_2+5Bh) ; exprtype
		push	(offset	aUnableToAllo_2+5Bh) ; expression
		push	(offset	aUnableToAllo_2+5Bh) ; condition
		push	0		; actions
		push	0		; count
		push	0		; limit
		push	0		; fnindex
		push	3001000h	; type
		mov	ecx, [ebx]
		push	ecx		; _addr
		call	Setint3breakpoint
		add	esp, 24h
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4C4105
		push	offset aUnableToSet_10 ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4C4105:				; CODE XREF: .text:004C40C4j
					; .text:004C40F1j
		call	loc_42521C
		test	eax, eax
		jz	loc_4C41C5
		mov	eax, [edi+68h]
		mov	edx, [edi+44h]
		dec	edx
		cmp	eax, edx
		jge	loc_4C41C5
		mov	ecx, [edi+68h]
		inc	ecx
		push	ecx		; selected
		push	edi		; pt
		call	Settableselection
		add	esp, 8
		jmp	loc_4C41C5
; ---------------------------------------------------------------------------

loc_4C4134:				; CODE XREF: .text:004C40A4j
		lea	eax, [ebp-8]
		push	eax		; coord
		push	2		; column
		push	offset stru_5FC8B8 ; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4C4154
		or	edx, 0FFFFFFFFh
		mov	[ebp-4], edx
		mov	[ebp-8], edx

loc_4C4154:				; CODE XREF: .text:004C4149j
		cmp	dword ptr [ebp+10h], 1
		jnz	short loc_4C4180
		mov	eax, stru_5FC8B8.font
		push	eax		; fi
		mov	ecx, [ebp-4]	; int
		push	ecx		; y
		mov	eax, [ebp-8]	; int
		push	eax		; x
		push	0		; _title
		push	1		; naddr
		push	ebx		; _addr
		mov	edx, [edi+22Ch]	; int
		push	edx		; hparent
		call	Condbreakpoint
		add	esp, 1Ch
		mov	ebx, eax
		jmp	short loc_4C41A7
; ---------------------------------------------------------------------------

loc_4C4180:				; CODE XREF: .text:004C4158j
		mov	ecx, stru_5FC8B8.font
		push	ecx		; fi
		mov	eax, [ebp-4]	; int
		push	eax		; y
		mov	edx, [ebp-8]	; int
		push	edx		; x
		push	0		; _title
		push	0		; fnindex
		push	1		; naddr
		push	ebx		; _addr
		mov	ecx, [edi+22Ch]	; int
		push	ecx		; hparent
		call	Condlogbreakpoint
		add	esp, 20h
		mov	ebx, eax

loc_4C41A7:				; CODE XREF: .text:004C417Ej
		test	ebx, ebx
		jge	short loc_4C41BD
		push	offset aUnableToSet_10 ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4C41BD:				; CODE XREF: .text:004C41A9j
		test	ebx, ebx
		jg	short loc_4C41C5
		xor	eax, eax
		jmp	short loc_4C41CE
; ---------------------------------------------------------------------------

loc_4C41C5:				; CODE XREF: .text:004C410Cj
					; .text:004C411Bj ...
		mov	eax, 1
		jmp	short loc_4C41CE
; ---------------------------------------------------------------------------

loc_4C41CC:				; CODE XREF: .text:004C407Cj
		xor	eax, eax

loc_4C41CE:				; CODE XREF: .text:004C3FCBj
					; .text:004C3FE6j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C41D8:				; DATA XREF: .data:stru_55D35Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	eax, stru_5FC8B8.sorted.selected
		test	eax, eax
		mov	edi, [ebp+10h]
		mov	esi, [ebp+14h]
		jge	short loc_4C41F1
		xor	eax, eax
		jmp	short loc_4C4269
; ---------------------------------------------------------------------------

loc_4C41F1:				; CODE XREF: .text:004C41EBj
		push	eax		; index
		push	offset stru_5FC8B8.sorted ; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4C4209
		xor	eax, eax
		jmp	short loc_4C4269
; ---------------------------------------------------------------------------

loc_4C4209:				; CODE XREF: .text:004C4203j
		push	0		; subaddr
		mov	edx, [ebx]
		push	edx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4C4225
		test	byte ptr [eax+9], 10h
		jnz	short loc_4C4229

loc_4C4225:				; CODE XREF: .text:004C421Dj
		xor	eax, eax
		jmp	short loc_4C4269
; ---------------------------------------------------------------------------

loc_4C4229:				; CODE XREF: .text:004C4223j
		test	esi, esi
		jnz	short loc_4C4251
		test	edi, edi
		jnz	short loc_4C423B
		test	byte ptr [eax+0Ah], 2
		jz	short loc_4C423B
		xor	eax, eax
		jmp	short loc_4C4269
; ---------------------------------------------------------------------------

loc_4C423B:				; CODE XREF: .text:004C422Fj
					; .text:004C4235j
		cmp	edi, 1
		jnz	short loc_4C424A
		test	byte ptr [eax+0Ah], 2
		jnz	short loc_4C424A
		xor	eax, eax
		jmp	short loc_4C4269
; ---------------------------------------------------------------------------

loc_4C424A:				; CODE XREF: .text:004C423Ej
					; .text:004C4244j
		mov	eax, 1
		jmp	short loc_4C4269
; ---------------------------------------------------------------------------

loc_4C4251:				; CODE XREF: .text:004C422Bj
		dec	esi
		jnz	short loc_4C4267
		push	edi		; enable
		mov	edx, [ebx]
		push	edx		; _addr
		call	Enableint3breakpoint
		add	esp, 8
		mov	eax, 1
		jmp	short loc_4C4269
; ---------------------------------------------------------------------------

loc_4C4267:				; CODE XREF: .text:004C4252j
		xor	eax, eax

loc_4C4269:				; CODE XREF: .text:004C41EFj
					; .text:004C4207j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4C4270:				; CODE XREF: .text:loc_40B494p
					; .text:00449F6Ep ...
		push	ebp
		mov	ebp, esp
		mov	eax, dword_5FC288
		test	eax, eax
		jz	short loc_4C428B
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	dword_5FC288, edx

loc_4C428B:				; CODE XREF: .text:004C427Aj
		xor	ecx, ecx
		mov	dword_5FC6C4, ecx
		mov	eax, dword_5FC28C
		test	eax, eax
		jz	short loc_4C42AB
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	dword_5FC28C, edx

loc_4C42AB:				; CODE XREF: .text:004C429Aj
		xor	ecx, ecx
		xor	eax, eax
		mov	dword_5FC6C8, ecx
		mov	dword_5FC6D0, eax
		push	1C4h		; n
		mov	dword_5FC6CC, eax
		xor	edx, edx
		push	0		; c
		push	offset stru_5FC290 ; s
		mov	dword_5FC6D4, edx
		call	_memset
		add	esp, 0Ch
		xor	ecx, ecx
		mov	dword_5FC454, ecx
		xor	eax, eax
		mov	dword_5FC6DC, eax
		xor	edx, edx
		mov	dword_5FC6E0, edx
		xor	ecx, ecx
		mov	dword_5CBB94, ecx
		xor	eax, eax
		mov	dword_5FC6E4, eax
		mov	eax, stru_5FC458.hw
		test	eax, eax
		jz	short loc_4C4314
		push	0		; bErase
		push	0		; lpRect
		push	eax		; hWnd
		call	InvalidateRect

loc_4C4314:				; CODE XREF: .text:004C4308j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C4318:				; CODE XREF: .text:0040B2F4p
					; .text:00450728p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		cmp	dword_5FC288, 0
		jz	short loc_4C4333
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4C4333
		xor	eax, eax
		jmp	loc_4C44C6
; ---------------------------------------------------------------------------

loc_4C4333:				; CODE XREF: .text:004C4324j
					; .text:004C432Aj
		call	loc_4C4270
		mov	ecx, 100000h
		xor	eax, eax
		jmp	short loc_4C4348
; ---------------------------------------------------------------------------

loc_4C4341:				; CODE XREF: .text:004C434Ej
		mov	edx, ecx
		add	edx, edx
		inc	eax
		mov	ecx, edx

loc_4C4348:				; CODE XREF: .text:004C433Fj
		cmp	eax, dword_5CBB70
		jl	short loc_4C4341
		cmp	dword_5CBB80, 0
		jnz	short loc_4C4369
		cmp	dword_5CBB88, 0
		jnz	short loc_4C4369
		mov	ebx, 4
		jmp	short loc_4C43A0
; ---------------------------------------------------------------------------

loc_4C4369:				; CODE XREF: .text:004C4357j
					; .text:004C4360j
		cmp	dword_5CBB80, 1
		jnz	short loc_4C4382
		cmp	dword_5CBB88, 0
		jnz	short loc_4C4382
		mov	ebx, 6
		jmp	short loc_4C43A0
; ---------------------------------------------------------------------------

loc_4C4382:				; CODE XREF: .text:004C4370j
					; .text:004C4379j
		cmp	dword_5CBB80, 0
		jnz	short loc_4C439B
		cmp	dword_5CBB88, 1
		jnz	short loc_4C439B
		mov	ebx, 6
		jmp	short loc_4C43A0
; ---------------------------------------------------------------------------

loc_4C439B:				; CODE XREF: .text:004C4389j
					; .text:004C4392j
		mov	ebx, 9

loc_4C43A0:				; CODE XREF: .text:004C4367j
					; .text:004C4380j ...
		cmp	dword_5CBB84, 0
		jz	short loc_4C43AC
		add	ebx, 3

loc_4C43AC:				; CODE XREF: .text:004C43A7j
		lea	eax, [ebx+0Ch]
		push	eax
		mov	eax, ecx
		pop	edx
		mov	ecx, edx	; int
		xor	edx, edx
		div	ecx
		mov	esi, eax
		mov	dword_5FC6C4, esi
		cmp	esi, 400h
		jge	short loc_4C43D3
		mov	dword_5FC6C4, 400h

loc_4C43D3:				; CODE XREF: .text:004C43C7j
		mov	esi, dword_5FC6C4
		push	0		; flags
		mov	eax, esi
		imul	ebx		; int
		mov	edx, esi
		mov	dword_5FC6C8, eax
		shl	edx, 2
		lea	edx, [edx+edx*2] ; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	dword_5FC288, eax
		push	0		; flags
		mov	ecx, dword_5FC6C8 ; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	dword_5FC28C, eax
		cmp	dword_5FC288, 0
		jz	short loc_4C4422
		cmp	dword_5FC28C, 0
		jnz	short loc_4C4441

loc_4C4422:				; CODE XREF: .text:004C4417j
		call	loc_4C4270
		push	offset aUnableToAllo_2 ; "Unable to allocate memory for	run trace"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		or	eax, 0FFFFFFFFh
		jmp	loc_4C44C6
; ---------------------------------------------------------------------------

loc_4C4441:				; CODE XREF: .text:004C4420j
		xor	edx, edx
		xor	eax, eax
		mov	dword_5FC6D4, edx
		mov	edx, offset dword_55D0B8

loc_4C4450:				; CODE XREF: .text:004C445Bj
		xor	ecx, ecx
		inc	eax
		mov	[edx], ecx
		add	edx, 0Ch
		cmp	eax, 19h
		jl	short loc_4C4450
		xor	eax, eax
		mov	dword_5FC6D0, eax
		mov	dword_5FC6CC, eax
		mov	dword_5FC6D8, 1
		cmp	dword_5CBB88, 0
		jz	short loc_4C4488
		mov	dword_5FC6DC, 7FFFFFC0h
		jmp	short loc_4C4492
; ---------------------------------------------------------------------------

loc_4C4488:				; CODE XREF: .text:004C447Aj
		mov	dword_5FC6DC, 3FFC0h

loc_4C4492:				; CODE XREF: .text:004C4486j
		mov	edx, 40h
		xor	ecx, ecx
		mov	dword_5FC6E0, ecx
		xor	eax, eax

loc_4C44A1:				; CODE XREF: .text:004C44B8j
		test	dword_5FC6DC, edx
		jz	short loc_4C44B2
		lea	ecx, [eax+1]
		mov	dword_5FC6E0, ecx

loc_4C44B2:				; CODE XREF: .text:004C44A7j
		inc	eax
		add	edx, edx
		cmp	eax, 19h
		jl	short loc_4C44A1
		mov	dword_5CBB94, 1
		xor	eax, eax

loc_4C44C6:				; CODE XREF: .text:004C432Ej
					; .text:004C443Cj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4C44CC(t_reg *, int, void *src, _size_t n)
loc_4C44CC:				; CODE XREF: .text:0044DD15p
					; .text:0044DD44p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		mov	ebx, offset dword_5FC6D0
		cmp	dword ptr [ebp+8], 0
		mov	esi, [ebp+14h]
		jz	short loc_4C44EC
		cmp	dword_5FC288, 0
		jnz	short loc_4C44F4

loc_4C44EC:				; CODE XREF: .text:004C44E1j
		or	eax, 0FFFFFFFFh
		jmp	loc_4C4932
; ---------------------------------------------------------------------------

loc_4C44F4:				; CODE XREF: .text:004C44EAj
		cmp	dword_5FC454, 0
		jz	short loc_4C452B
		mov	edx, [ebp+0Ch]
		cmp	edx, stru_5FC290._ip
		jnz	short loc_4C452B
		mov	ecx, [ebp+8]
		mov	eax, [ecx+4]
		cmp	eax, stru_5FC290.threadid
		jnz	short loc_4C452B
		mov	edx, [ebp+8]
		mov	ecx, [edx+10h]
		cmp	ecx, stru_5FC290.r+4
		jnz	short loc_4C452B
		xor	eax, eax
		jmp	loc_4C4932
; ---------------------------------------------------------------------------

loc_4C452B:				; CODE XREF: .text:004C44FBj
					; .text:004C4506j ...
		cmp	tracefile, 0
		jz	short loc_4C4552
		cmp	dword_5FC454, 0
		jz	short loc_4C4552
		push	0		; int
		push	0		; int
		mov	edx, [ebp+8]
		push	edx		; int
		push	offset stru_5FC290 ; t_reg *
		call	loc_4C2990
		add	esp, 10h

loc_4C4552:				; CODE XREF: .text:004C4532j
					; .text:004C453Bj
		mov	ecx, [ebp+0Ch]
		mov	stru_5FC290._ip, ecx
		mov	eax, dword_5FC6CC
		inc	eax
		mov	[ebp-4], eax
		mov	eax, dword_5FC6C4
		cmp	eax, [ebp-4]
		jg	short loc_4C4573
		xor	edx, edx
		mov	[ebp-4], edx

loc_4C4573:				; CODE XREF: .text:004C456Cj
		mov	ecx, [ebx]
		cmp	ecx, [ebp-4]
		jnz	short loc_4C458C
		inc	dword ptr [ebx]
		cmp	eax, [ebx]
		jg	short loc_4C4584
		xor	eax, eax
		mov	[ebx], eax

loc_4C4584:				; CODE XREF: .text:004C457Ej
		xor	edx, edx
		mov	dword_5FC6D8, edx

loc_4C458C:				; CODE XREF: .text:004C4578j
		mov	ecx, dword_5FC6D4
		add	ecx, 400h
		cmp	ecx, dword_5FC6C8
		jbe	short loc_4C45E3
		xor	eax, eax
		mov	dword_5FC6D4, eax
		jmp	short loc_4C45E3
; ---------------------------------------------------------------------------

loc_4C45A9:				; CODE XREF: .text:004C45EBj
		mov	ecx, [ebx]
		lea	ecx, [ecx+ecx*2]
		mov	eax, dword_5FC288
		mov	eax, [eax+ecx*4+4]
		mov	edx, dword_5FC6D4
		cmp	eax, edx
		jb	short loc_4C45ED
		add	edx, 400h
		cmp	eax, edx
		jnb	short loc_4C45ED
		inc	dword ptr [ebx]
		mov	ecx, [ebx]
		cmp	ecx, dword_5FC6C4
		jl	short loc_4C45DB
		xor	eax, eax
		mov	[ebx], eax

loc_4C45DB:				; CODE XREF: .text:004C45D5j
		xor	edx, edx
		mov	dword_5FC6D8, edx

loc_4C45E3:				; CODE XREF: .text:004C459Ej
					; .text:004C45A7j
		mov	ecx, [ebx]
		cmp	ecx, dword_5FC6CC
		jnz	short loc_4C45A9

loc_4C45ED:				; CODE XREF: .text:004C45BFj
					; .text:004C45C9j
		mov	eax, dword_5FC6CC
		lea	eax, [eax+eax*2]
		mov	edx, dword_5FC288
		mov	ecx, [ebp+0Ch]
		mov	[edx+eax*4], ecx
		mov	eax, dword_5FC6CC
		lea	eax, [eax+eax*2]
		mov	edx, dword_5FC288
		mov	ecx, dword_5FC6D4
		mov	[edx+eax*4+4], ecx
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4C464D
		test	esi, esi
		jbe	short loc_4C464D
		cmp	esi, 0Fh
		ja	short loc_4C464D
		push	esi		; n
		mov	edx, dword_5FC28C
		add	edx, dword_5FC6D4
		mov	eax, [ebp+10h]
		push	eax		; src
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	dword_5FC6D4, esi
		mov	[ebp-8], esi
		jmp	short loc_4C4652
; ---------------------------------------------------------------------------

loc_4C464D:				; CODE XREF: .text:004C461Dj
					; .text:004C4621j ...
		xor	ecx, ecx
		mov	[ebp-8], ecx

loc_4C4652:				; CODE XREF: .text:004C464Bj
		mov	eax, [ebp+8]
		test	byte ptr [eax],	40h
		jz	loc_4C46EE
		xor	edi, edi
		mov	eax, [ebp+8]
		lea	ebx, [eax+198h]

loc_4C4669:				; CODE XREF: .text:004C46E8j
		mov	eax, [ebx]
		test	eax, eax
		jz	short loc_4C46E1
		cmp	eax, 10h
		ja	short loc_4C46E1
		mov	edx, dword_5FC28C
		mov	ecx, dword_5FC6D4
		mov	eax, [ebx-4]
		mov	[edx+ecx], eax
		add	dword_5FC6D4, 4
		mov	edx, dword_5FC28C
		mov	ecx, dword_5FC6D4
		mov	al, [ebx]
		mov	[edx+ecx], al
		mov	ecx, edi
		inc	dword_5FC6D4
		shl	ecx, 3
		mov	edx, [ebx]
		push	edx		; n
		mov	eax, dword_5FC28C
		lea	ecx, [ecx+ecx*2]
		add	ecx, [ebp+8]
		add	ecx, 19Ch
		add	eax, dword_5FC6D4
		push	ecx		; src
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [ebx]
		add	dword_5FC6D4, edx
		mov	ecx, edi
		mov	eax, 10h
		shl	eax, cl
		or	[ebp-8], eax

loc_4C46E1:				; CODE XREF: .text:004C466Dj
					; .text:004C4672j
		inc	edi
		add	ebx, 18h
		cmp	edi, 2
		jl	loc_4C4669

loc_4C46EE:				; CODE XREF: .text:004C4658j
		mov	edx, [ebp+8]
		mov	ebx, offset dword_55D0B0
		mov	[ebp-10h], edx
		xor	edi, edi
		mov	dword ptr [ebp-14h], offset stru_5FC290
		mov	dword ptr [ebp-0Ch], 40h
		jmp	loc_4C48CE
; ---------------------------------------------------------------------------

loc_4C470E:				; CODE XREF: .text:004C48D4j
		mov	eax, dword_5FC6DC
		and	eax, [ebp-0Ch]
		jz	loc_4C48C7
		cmp	dword ptr [ebx+8], 0
		jle	short loc_4C4725
		dec	dword ptr [ebx+8]

loc_4C4725:				; CODE XREF: .text:004C4720j
		mov	esi, [ebx]
		mov	eax, [ebx+4]
		dec	eax
		jz	short loc_4C473E
		dec	eax
		jz	short loc_4C479A
		sub	eax, 2
		jz	loc_4C47F6
		jmp	loc_4C484A
; ---------------------------------------------------------------------------

loc_4C473E:				; CODE XREF: .text:004C472Bj
		cmp	dword ptr [ebx+8], 0
		jle	short loc_4C4757
		mov	edx, [ebp-14h]
		mov	eax, [ebp-10h]
		mov	cl, [edx+esi]
		cmp	cl, [eax+esi]
		jz	short loc_4C4757
		xor	edx, edx
		mov	[ebx+8], edx

loc_4C4757:				; CODE XREF: .text:004C4742j
					; .text:004C4750j
		cmp	dword ptr [ebx+8], 0
		jnz	loc_4C48C7
		mov	ecx, [ebp-10h]
		mov	edx, [ebp-14h]
		mov	al, [ecx+esi]
		mov	[edx+esi], al
		mov	ecx, [ebp-10h]
		mov	edx, dword_5FC28C
		mov	al, [ecx+esi]
		mov	ecx, dword_5FC6D4
		mov	[edx+ecx], al
		inc	dword_5FC6D4
		mov	eax, [ebp-0Ch]
		or	[ebp-8], eax
		mov	dword ptr [ebx+8], 28h
		jmp	loc_4C48C7
; ---------------------------------------------------------------------------

loc_4C479A:				; CODE XREF: .text:004C472Ej
		cmp	dword ptr [ebx+8], 0
		jle	short loc_4C47B5
		mov	edx, [ebp-14h]
		mov	eax, [ebp-10h]
		mov	cx, [edx+esi]
		cmp	cx, [eax+esi]
		jz	short loc_4C47B5
		xor	edx, edx
		mov	[ebx+8], edx

loc_4C47B5:				; CODE XREF: .text:004C479Ej
					; .text:004C47AEj
		cmp	dword ptr [ebx+8], 0
		jnz	loc_4C48C7
		mov	ecx, [ebp-10h]
		mov	edx, [ebp-14h]
		mov	ax, [ecx+esi]
		mov	[edx+esi], ax
		mov	edx, dword_5FC28C
		mov	ecx, dword_5FC6D4
		mov	[edx+ecx], ax
		add	dword_5FC6D4, 2
		mov	eax, [ebp-0Ch]
		or	[ebp-8], eax
		mov	dword ptr [ebx+8], 28h
		jmp	loc_4C48C7
; ---------------------------------------------------------------------------

loc_4C47F6:				; CODE XREF: .text:004C4733j
		cmp	dword ptr [ebx+8], 0
		jle	short loc_4C480F
		mov	edx, [ebp-14h]
		mov	eax, [ebp-10h]
		mov	ecx, [edx+esi]
		cmp	ecx, [eax+esi]
		jz	short loc_4C480F
		xor	edx, edx
		mov	[ebx+8], edx

loc_4C480F:				; CODE XREF: .text:004C47FAj
					; .text:004C4808j
		cmp	dword ptr [ebx+8], 0
		jnz	loc_4C48C7
		mov	ecx, [ebp-10h]
		mov	edx, [ebp-14h]
		mov	eax, [ecx+esi]
		mov	[edx+esi], eax
		mov	edx, dword_5FC28C
		mov	ecx, dword_5FC6D4
		mov	[edx+ecx], eax
		add	dword_5FC6D4, 4
		mov	eax, [ebp-0Ch]
		or	[ebp-8], eax
		mov	dword ptr [ebx+8], 28h
		jmp	short loc_4C48C7
; ---------------------------------------------------------------------------

loc_4C484A:				; CODE XREF: .text:004C4739j
		cmp	dword ptr [ebx+8], 0
		jle	short loc_4C4873
		mov	edx, [ebx+4]
		push	edx		; n
		mov	ecx, [ebp-10h]
		mov	eax, esi
		add	ecx, eax
		push	ecx		; s2
		mov	edx, [ebp-14h]
		add	edx, eax
		push	edx		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4C4873
		xor	ecx, ecx
		mov	[ebx+8], ecx

loc_4C4873:				; CODE XREF: .text:004C484Ej
					; .text:004C486Cj
		cmp	dword ptr [ebx+8], 0
		jnz	short loc_4C48C7
		mov	edx, [ebx+4]
		push	edx		; n
		mov	ecx, [ebp-10h]
		mov	eax, esi
		add	ecx, eax
		push	ecx		; src
		mov	edx, [ebp-14h]
		add	edx, eax
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebx+4]
		push	eax		; n
		mov	eax, dword_5FC28C
		mov	ecx, [ebp-10h]
		add	ecx, esi
		add	eax, dword_5FC6D4
		push	ecx		; src
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [ebx+4]
		add	dword_5FC6D4, edx
		mov	ecx, [ebp-0Ch]
		or	[ebp-8], ecx
		mov	dword ptr [ebx+8], 28h

loc_4C48C7:				; CODE XREF: .text:004C4716j
					; .text:004C475Bj ...
		shl	dword ptr [ebp-0Ch], 1
		inc	edi
		add	ebx, 0Ch

loc_4C48CE:				; CODE XREF: .text:004C4709j
		cmp	edi, dword_5FC6E0
		jl	loc_4C470E
		mov	eax, [ebp+8]
		mov	edx, [eax]
		push	30h		; n
		mov	ecx, [ebp+8]
		mov	stru_5FC290.status, edx
		add	ecx, 194h
		push	ecx		; src
		push	offset stru_5FC290.mem ; dest
		call	_memcpy
		mov	dword_5FC454, 1
		add	esp, 0Ch
		mov	eax, dword_5FC6CC
		mov	edx, dword_5FC288
		mov	ecx, [ebp-8]
		lea	eax, [eax+eax*2]
		mov	[edx+eax*4+8], ecx
		mov	eax, [ebp-4]
		push	offset stru_5FC458 ; pt
		mov	dword_5FC6CC, eax
		call	Delayedtableredraw
		pop	ecx
		xor	eax, eax

loc_4C4932:				; CODE XREF: .text:004C44EFj
					; .text:004C4526j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 353. _Addprotocolrange
; Exported entry 393. Addprotocolrange

; int __cdecl Addprotocolrange(ulong addr0, ulong addr1)
		public Addprotocolrange
Addprotocolrange:			; CODE XREF: .text:004126F4p
					; .text:00458404p ...
		push	ebp		; _Addprotocolrange
		mov	ebp, esp
		push	ebx
		push	esi		; arglist
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		cmp	esi, ebx
		ja	short loc_4C4950
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C499C
; ---------------------------------------------------------------------------

loc_4C4950:				; CODE XREF: .text:004C4949j
		cmp	rtprot.rangeactive, 0
		jnz	short loc_4C4972
		push	40h		; nmax
		push	offset rtprot.range ; set
		call	Initset
		add	esp, 8
		mov	rtprot.rangeactive, 1

loc_4C4972:				; CODE XREF: .text:004C4957j
		dec	esi
		push	esi		; rmax
		push	ebx		; rmin
		push	offset rtprot.range ; set
		call	Addrange
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4C499A
		push	offset aTooManyRangesT ; "Too many ranges to protocol"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4C499A:				; CODE XREF: .text:004C4986j
		mov	eax, ebx

loc_4C499C:				; CODE XREF: .text:004C494Ej
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C49A0:				; CODE XREF: .text:004B4DBCp
					; .text:loc_4B6968p ...
		push	ebp
		mov	ebp, esp
		cmp	dword_5FC288, 0
		jz	short loc_4C49B5
		cmp	dword_5FC6C4, 0
		jnz	short loc_4C49B9

loc_4C49B5:				; CODE XREF: .text:004C49AAj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C49B9:				; CODE XREF: .text:004C49B3j
		mov	eax, dword_5FC6CC
		mov	ecx, dword_5FC6C4
		add	eax, ecx
		sub	eax, dword_5FC6D0
		cdq
		idiv	ecx
		mov	eax, edx
		cmp	dword_5FC6D8, 0
		jnz	short loc_4C49E3
		sub	eax, 28h
		test	eax, eax
		jge	short loc_4C49E3
		xor	eax, eax

loc_4C49E3:				; CODE XREF: .text:004C49D8j
					; .text:004C49DFj
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		