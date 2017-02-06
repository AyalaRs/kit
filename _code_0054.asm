.code

; int __cdecl loc_460E14(int, int, int nDenominator)
loc_460E14:				; CODE XREF: .text:0046F0C3p
					; .text:0046F0F8p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF718h
		push	ebx
		push	esi
		mov	eax, addr0
		cmp	eax, [ebp+0Ch]
		ja	short loc_460E3B
		mov	edx, [ebp+0Ch]
		cmp	edx, addr1
		jb	short loc_460E42

loc_460E3B:				; CODE XREF: .text:00460E2Ej
		xor	eax, eax
		jmp	loc_4615F9
; ---------------------------------------------------------------------------

loc_460E42:				; CODE XREF: .text:00460E39j
		mov	edx, [ebp+0Ch]
		add	edx, [ebp+10h]
		cmp	edx, addr1
		jbe	short loc_460E5C
		mov	ecx, addr1
		sub	ecx, [ebp+0Ch]
		mov	[ebp+10h], ecx

loc_460E5C:				; CODE XREF: .text:00460E4Ej
		xor	eax, eax
		mov	[ebp-0Ch], eax
		mov	edx, [ebp+8]
		test	byte ptr [edx+0Ah], 20h
		setnz	cl
		and	ecx, 1
		mov	[ebp-8], ecx
		mov	esi, [ebp+0Ch]
		sub	esi, addr0
		jmp	loc_4615E3
; ---------------------------------------------------------------------------

loc_460E7F:				; CODE XREF: .text:004615F1j
		mov	eax, [ebp-0Ch]
		add	eax, 2000h
		cmp	esi, eax
		jbe	short loc_460EBD
		mov	edx, [ebp+10h]
		push	edx		; nDenominator
		push	3E8h		; nNumerator
		mov	ecx, [ebp+0Ch]
		sub	ecx, addr0
		mov	eax, esi
		sub	eax, ecx
		push	eax		; nNumber
		call	MulDiv
		push	eax		; int
		call	loc_45C684
		pop	ecx
		test	eax, eax
		jz	short loc_460EBA
		or	eax, 0FFFFFFFFh
		jmp	loc_4615F9
; ---------------------------------------------------------------------------

loc_460EBA:				; CODE XREF: .text:00460EB0j
		mov	[ebp-0Ch], esi

loc_460EBD:				; CODE XREF: .text:00460E89j
		mov	edx, dword_5E5D74
		or	word ptr [edx+esi*2], 4000h
		mov	ecx, s
		cmp	byte ptr [ecx+esi], 0
		jnz	loc_4615E2
		mov	eax, dword_5E5D74
		test	byte ptr [eax+esi*2], 4
		jnz	loc_4615E2
		push	0		; predict
		push	0		; reg
		lea	edx, [ebp-18E8h]
		push	0		; mode
		mov	eax, addr0
		push	edx		; da
		mov	edx, eax
		push	0		; dec
		add	edx, esi
		push	edx		; ip
		mov	ecx, [ebp+0Ch]
		sub	ecx, eax
		mov	eax, copy
		add	ecx, [ebp+10h]
		sub	ecx, esi
		add	eax, esi
		push	ecx		; cmdsize
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4615E2
		cmp	dword ptr [ebp-18BCh], 0
		jnz	loc_4615E2
		cmp	dword_5E5D7C, 0
		jz	short loc_460F8A
		xor	edx, edx
		cmp	edx, [ebp-10h]
		jnb	short loc_460F81

loc_460F46:				; CODE XREF: .text:00460F7Fj
		test	edx, edx
		jz	short loc_460F6D
		lea	ecx, [edx+esi]
		mov	eax, dword_5E5D74
		test	byte ptr [eax+ecx*2], 8
		jz	short loc_460F6D
		cmp	edx, [ebp-18C4h]
		jz	short loc_460F68
		cmp	edx, [ebp-18C0h]
		jnz	short loc_460F6D

loc_460F68:				; CODE XREF: .text:00460F5Ej
		add	edx, 3
		jmp	short loc_460F7B
; ---------------------------------------------------------------------------

loc_460F6D:				; CODE XREF: .text:00460F48j
					; .text:00460F56j ...
		lea	ecx, [edx+esi]
		mov	eax, dword_5E5D74
		test	byte ptr [eax+ecx*2], 4
		jnz	short loc_460F81

loc_460F7B:				; CODE XREF: .text:00460F6Bj
		inc	edx
		cmp	edx, [ebp-10h]
		jb	short loc_460F46

loc_460F81:				; CODE XREF: .text:00460F44j
					; .text:00460F79j
		cmp	edx, [ebp-10h]
		jnz	loc_4615E2

loc_460F8A:				; CODE XREF: .text:00460F3Dj
		cmp	dword ptr [ebp-18A8h], 0
		jz	short loc_460FC6
		mov	eax, [ebp-18A8h]
		cmp	eax, addr0
		jb	short loc_460FA9
		cmp	eax, addr1
		jb	short loc_460FC6

loc_460FA9:				; CODE XREF: .text:00460F9Fj
		mov	edx, addr0
		push	0
		add	edx, esi
		push	0
		push	edx
		call	loc_4D4690
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_4615E2

loc_460FC6:				; CODE XREF: .text:00460F91j
					; .text:00460FA7j
		mov	edx, addr0
		add	edx, esi
		mov	eax, [ebp-18A8h]
		cmp	edx, eax
		ja	short loc_460FE3
		add	edx, [ebp-10h]
		cmp	eax, edx
		jb	loc_4615E2

loc_460FE3:				; CODE XREF: .text:00460FD6j
		mov	ecx, addr0
		mov	eax, [ebp-18A8h]
		cmp	ecx, eax
		ja	short loc_461011
		cmp	eax, addr1
		jnb	short loc_461011
		sub	eax, addr0
		mov	edx, dword_5E5D74
		test	byte ptr [edx+eax*2], 4
		jnz	loc_4615E2

loc_461011:				; CODE XREF: .text:00460FF1j
					; .text:00460FF9j
		mov	ecx, [ebp-18D4h]
		and	ecx, 1Fh
		xor	eax, eax
		mov	[ebp-14h], ecx
		mov	[ebp-4], eax
		lea	eax, [ebp-189Ch]

loc_461028:				; CODE XREF: .text:004612AAj
		test	byte ptr [eax+1], 1
		jz	loc_46129E
		mov	edx, [ebp-18C8h]
		add	edx, esi
		mov	ecx, copy
		cmp	byte ptr [ecx+edx], 8Dh
		jz	loc_46129E
		cmp	dword ptr [eax+20h], 4
		jnz	short loc_461079
		cmp	dword ptr [eax+30h], 400h
		jb	loc_46129E
		cmp	dword ptr [ebp-8], 0
		jnz	loc_46129E
		cmp	dword_5BDD90, 0
		jnz	loc_46129E
		jmp	loc_4612B0
; ---------------------------------------------------------------------------

loc_461079:				; CODE XREF: .text:0046104Ej
		cmp	dword ptr [eax+20h], 5
		jnz	short loc_46109B
		cmp	dword ptr [ebp-8], 0
		jnz	loc_46129E
		cmp	dword_5BDD90, 0
		jnz	loc_46129E
		jmp	loc_4612B0
; ---------------------------------------------------------------------------

loc_46109B:				; CODE XREF: .text:0046107Dj
		cmp	dword ptr [eax+2Ch], 0
		jz	short loc_4610DE
		xor	edx, edx
		lea	ecx, [ebp-189Ch]

loc_4610A9:				; CODE XREF: .text:004610DCj
		mov	ebx, [ecx+18h]
		cmp	ebx, [eax+2Ch]
		jnz	short loc_4610D2
		mov	ebx, [eax+30h]
		cmp	ebx, addr0
		jb	short loc_4610C4
		cmp	ebx, addr1
		jb	short loc_4610D2

loc_4610C4:				; CODE XREF: .text:004610BAj
		mov	edx, dword_5E5D74
		or	word ptr [edx+esi*2], 200h
		jmp	short loc_4610DE
; ---------------------------------------------------------------------------

loc_4610D2:				; CODE XREF: .text:004610AFj
					; .text:004610C2j
		inc	edx
		add	ecx, 460h
		cmp	edx, 4
		jl	short loc_4610A9

loc_4610DE:				; CODE XREF: .text:0046109Fj
					; .text:004610D0j
		mov	edx, [eax+30h]
		cmp	edx, addr0
		jb	loc_4611E7
		cmp	edx, addr1
		jnb	loc_4611E7
		cmp	dword_5E5D7C, 0
		jz	short loc_461144
		cmp	dword ptr [ebp-18C4h], 0FFFFFFFFh
		jz	short loc_461144
		mov	ecx, [ebp-18C4h]
		add	ecx, esi
		mov	edx, dword_5E5D74
		test	byte ptr [edx+ecx*2], 8
		jnz	short loc_461144
		cmp	dword_5BDD90, 0
		jz	short loc_461136
		mov	ecx, dword_5E5D74
		or	word ptr [ecx+esi*2], 200h
		jmp	short loc_461184
; ---------------------------------------------------------------------------

loc_461136:				; CODE XREF: .text:00461126j
		mov	edx, dword_5E5D74
		or	word ptr [edx+esi*2], 300h
		jmp	short loc_461184
; ---------------------------------------------------------------------------

loc_461144:				; CODE XREF: .text:00461100j
					; .text:00461109j ...
		cmp	dword ptr [eax+2Ch], 0
		jnz	short loc_461184
		mov	ecx, [eax+30h]
		add	ecx, 4
		cmp	ecx, addr1
		ja	short loc_461184
		mov	ecx, [eax+30h]
		mov	edx, addr0
		sub	ecx, edx
		mov	ebx, copy
		mov	ecx, [ebx+ecx]
		sub	ecx, edx
		mov	edx, ecx
		cmp	edx, _size
		jnb	short loc_461184
		mov	ecx, dword_5E5D74
		or	word ptr [ecx+edx*2], 2000h

loc_461184:				; CODE XREF: .text:00461134j
					; .text:00461142j ...
		cmp	dword ptr [eax+2Ch], 0
		jnz	short loc_46119B
		mov	edx, dword_5E5D74
		or	word ptr [edx+esi*2], 1000h
		jmp	loc_46129E
; ---------------------------------------------------------------------------

loc_46119B:				; CODE XREF: .text:00461188j
		cmp	dword ptr [ebp-14h], 6
		jz	short loc_4611A7
		cmp	dword ptr [ebp-14h], 0Ch
		jnz	short loc_4611B8

loc_4611A7:				; CODE XREF: .text:0046119Fj
		mov	edx, dword_5E5D74
		or	word ptr [edx+esi*2], 800h
		jmp	loc_46129E
; ---------------------------------------------------------------------------

loc_4611B8:				; CODE XREF: .text:004611A5j
		cmp	dword ptr [ebp-14h], 1
		jnz	loc_46129E
		cmp	dword ptr [ebp-4], 1
		jnz	loc_46129E
		cmp	dword ptr [eax+0Ch], 1
		jnz	loc_46129E
		mov	ecx, dword_5E5D74
		or	word ptr [ecx+esi*2], 800h
		jmp	loc_46129E
; ---------------------------------------------------------------------------

loc_4611E7:				; CODE XREF: .text:004610E7j
					; .text:004610F3j
		mov	edx, [ebp-18C4h]
		cmp	edx, 0FFFFFFFFh
		jz	short loc_461204
		add	edx, esi
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+edx*2], 8
		jnz	loc_46129E

loc_461204:				; CODE XREF: .text:004611F0j
		cmp	dword ptr [ebp-8], 0
		jz	short loc_461221
		mov	edx, [eax+30h]
		cmp	edx, 10000h
		jb	loc_46129E
		cmp	edx, 7FF80000h
		jnb	short loc_46129E

loc_461221:				; CODE XREF: .text:00461208j
		test	byte ptr [eax+2], 8
		jz	short loc_46125D
		mov	edx, [eax+30h]
		cmp	edx, 1000000h
		jbe	short loc_461272
		cmp	edx, 0FF000000h
		jnb	short loc_461272
		mov	ecx, addr0
		sub	ecx, 1000000h
		mov	edx, [eax+30h]
		cmp	ecx, edx
		ja	short loc_46125D
		mov	ecx, addr1
		add	ecx, 1000000h
		cmp	edx, ecx
		jbe	short loc_461272

loc_46125D:				; CODE XREF: .text:00461225j
					; .text:0046124Bj
		cmp	dword_5BDD90, 0
		jz	short loc_4612B0
		mov	edx, dword_5E5D74
		or	word ptr [edx+esi*2], 200h

loc_461272:				; CODE XREF: .text:00461230j
					; .text:00461238j ...
		xor	edx, edx
		lea	ecx, [eax+24h]

loc_461277:				; CODE XREF: .text:00461281j
		cmp	byte ptr [ecx],	2
		jnb	short loc_461283
		inc	edx
		inc	ecx
		cmp	edx, 8
		jl	short loc_461277

loc_461283:				; CODE XREF: .text:0046127Aj
		cmp	edx, 8
		jge	short loc_46129E
		xor	edx, edx
		lea	ecx, [eax+24h]

loc_46128D:				; CODE XREF: .text:00461297j
		cmp	byte ptr [ecx],	1
		jz	short loc_461299
		inc	edx
		inc	ecx
		cmp	edx, 8
		jl	short loc_46128D

loc_461299:				; CODE XREF: .text:00461290j
		cmp	edx, 8
		jge	short loc_4612B0

loc_46129E:				; CODE XREF: .text:0046102Cj
					; .text:00461044j ...
		inc	dword ptr [ebp-4]
		add	eax, 460h
		cmp	dword ptr [ebp-4], 4
		jl	loc_461028

loc_4612B0:				; CODE XREF: .text:00461074j
					; .text:00461096j ...
		cmp	dword ptr [ebp-4], 4
		jl	loc_4615E2
		cmp	dword ptr [ebp-18C0h], 0FFFFFFFFh
		jz	short loc_461313
		cmp	dword_5E5D7C, 0
		jz	short loc_4612E0
		mov	eax, [ebp-18C0h]
		add	eax, esi
		mov	edx, dword_5E5D74
		test	byte ptr [edx+eax*2], 8
		jz	short loc_461313

loc_4612E0:				; CODE XREF: .text:004612CAj
		mov	eax, copy
		lea	ecx, [eax+esi]
		mov	eax, [ebp-18C0h]
		mov	edx, [ecx+eax]
		cmp	edx, addr0
		jb	short loc_461313
		cmp	edx, addr1
		jnb	short loc_461313
		sub	edx, addr0
		mov	ecx, dword_5E5D74
		or	word ptr [ecx+edx*2], 2000h

loc_461313:				; CODE XREF: .text:004612C1j
					; .text:004612DEj ...
		cmp	dword ptr [ebp-18B8h], 0
		jz	loc_461450
		cmp	dword_5BDD60, 0
		jnz	short loc_46133C
		test	byte ptr [ebp-18B8h], 40h
		jz	short loc_46133C
		cmp	dword ptr [ebp-8], 0
		jz	loc_461411

loc_46133C:				; CODE XREF: .text:00461327j
					; .text:00461330j
		cmp	dword_5BDD64, 0
		jnz	short loc_461358
		test	byte ptr [ebp-18B8h], 80h
		jz	short loc_461358
		cmp	dword ptr [ebp-8], 0
		jz	loc_461411

loc_461358:				; CODE XREF: .text:00461343j
					; .text:0046134Cj
		cmp	dword_5BDD68, 0
		jnz	short loc_46136E
		test	byte ptr [ebp-18B7h], 1
		jnz	loc_461411

loc_46136E:				; CODE XREF: .text:0046135Fj
		cmp	dword_5BDD6C, 0
		jnz	short loc_461384
		test	byte ptr [ebp-18B7h], 2
		jnz	loc_461411

loc_461384:				; CODE XREF: .text:00461375j
		cmp	dword_5BDD74, 0
		jnz	short loc_461396
		test	byte ptr [ebp-18B7h], 4
		jnz	short loc_461411

loc_461396:				; CODE XREF: .text:0046138Bj
		cmp	dword_5BDD78, 0
		jnz	short loc_4613A8
		test	byte ptr [ebp-18B8h], 0Fh
		jnz	short loc_461411

loc_4613A8:				; CODE XREF: .text:0046139Dj
		cmp	dword_5BDD7C, 0
		jnz	short loc_4613BA
		test	byte ptr [ebp-18B8h], 10h
		jnz	short loc_461411

loc_4613BA:				; CODE XREF: .text:004613AFj
		cmp	dword_5BDD80, 0
		jnz	short loc_4613D2
		test	byte ptr [ebp-18B7h], 8
		jz	short loc_4613D2
		cmp	dword ptr [ebp-8], 0
		jz	short loc_461411

loc_4613D2:				; CODE XREF: .text:004613C1j
					; .text:004613CAj
		cmp	dword_5BDD84, 0
		jnz	short loc_4613E4
		test	byte ptr [ebp-18B7h], 10h
		jnz	short loc_461411

loc_4613E4:				; CODE XREF: .text:004613D9j
		cmp	dword_5BDD88, 0
		jnz	short loc_4613F6
		test	byte ptr [ebp-18B7h], 20h
		jnz	short loc_461411

loc_4613F6:				; CODE XREF: .text:004613EBj
		cmp	dword_5BDD8C, 0
		jnz	short loc_461408
		test	byte ptr [ebp-18B7h], 80h
		jnz	short loc_461411

loc_461408:				; CODE XREF: .text:004613FDj
		test	byte ptr [ebp-18B8h], 20h
		jz	short loc_46141E

loc_461411:				; CODE XREF: .text:00461336j
					; .text:00461352j ...
		mov	eax, dword_5E5D74
		or	word ptr [eax+esi*2], 300h
		jmp	short loc_461450
; ---------------------------------------------------------------------------

loc_46141E:				; CODE XREF: .text:0046140Fj
		cmp	dword_5BDD94, 0
		jnz	short loc_461444
		test	byte ptr [ebp-18B6h], 1
		jz	short loc_461444
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_461450
		mov	edx, dword_5E5D74
		or	word ptr [edx+esi*2], 100h
		jmp	short loc_461450
; ---------------------------------------------------------------------------

loc_461444:				; CODE XREF: .text:00461425j
					; .text:0046142Ej
		mov	ecx, dword_5E5D74
		or	word ptr [ecx+esi*2], 200h

loc_461450:				; CODE XREF: .text:0046131Aj
					; .text:0046141Cj ...
		mov	eax, [ebp-18D4h]
		and	eax, 0C0000000h
		cmp	eax, 80000000h
		jnz	short loc_46146E
		mov	edx, dword_5E5D74
		or	word ptr [edx+esi*2], 300h

loc_46146E:				; CODE XREF: .text:00461460j
		cmp	dword_5BDD70, 0
		jnz	short loc_4614A5
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4614A5
		push	0
		mov	ecx, _size
		push	ecx
		mov	eax, copy
		push	eax
		push	esi
		call	loc_45CC50
		add	esp, 10h
		test	eax, eax
		jz	short loc_4614A5
		mov	edx, dword_5E5D74
		or	word ptr [edx+esi*2], 100h

loc_4614A5:				; CODE XREF: .text:00461475j
					; .text:0046147Bj ...
		mov	ecx, dword_5E5D70
		mov	al, [ebp-10h]
		mov	[ecx+esi], al
		mov	edx, [ebp-14h]
		add	edx, 0FFFFFFFAh	; switch 11 cases
		cmp	edx, 0Ah
		ja	loc_4615CF	; jumptable 004614C0 default case
		jmp	ds:off_4614C7[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4614C7	dd offset loc_4614F3	; DATA XREF: .text:004614C0r
		dd offset loc_4614F3	; jump table for switch	statement
		dd offset loc_461503
		dd offset loc_461503
		dd offset loc_461512
		dd offset loc_461522
		dd offset loc_461532
		dd offset loc_4615CF
		dd offset loc_4615CF
		dd offset loc_461593
		dd offset loc_461593
; ---------------------------------------------------------------------------

loc_4614F3:				; CODE XREF: .text:004614C0j
					; DATA XREF: .text:off_4614C7o
		mov	ecx, dword_5E5D74 ; jumptable 004614C0 cases 6,7
		or	word ptr [ecx+esi*2], 30h
		jmp	loc_4615E2
; ---------------------------------------------------------------------------

loc_461503:				; CODE XREF: .text:004614C0j
					; DATA XREF: .text:off_4614C7o
		mov	eax, dword_5E5D74 ; jumptable 004614C0 cases 8,9
		or	word ptr [eax+esi*2], 40h
		jmp	loc_4615E2
; ---------------------------------------------------------------------------

loc_461512:				; CODE XREF: .text:004614C0j
					; DATA XREF: .text:off_4614C7o
		mov	edx, dword_5E5D74 ; jumptable 004614C0 case 10
		or	word ptr [edx+esi*2], 50h
		jmp	loc_4615E2
; ---------------------------------------------------------------------------

loc_461522:				; CODE XREF: .text:004614C0j
					; DATA XREF: .text:off_4614C7o
		mov	ecx, dword_5E5D74 ; jumptable 004614C0 case 11
		or	word ptr [ecx+esi*2], 60h
		jmp	loc_4615E2
; ---------------------------------------------------------------------------

loc_461532:				; CODE XREF: .text:004614C0j
					; DATA XREF: .text:off_4614C7o
		cmp	dword ptr [ebp-18B8h], 0 ; jumptable 004614C0 case 12
		jnz	short loc_461586
		mov	eax, [ebp-18A8h]
		cmp	eax, addr0
		jb	short loc_461586
		mov	edx, [ebp-18A8h]
		cmp	edx, addr1
		jnb	short loc_461586
		mov	ecx, [ebp-18A8h]
		sub	ecx, addr0
		mov	[ebp-18h], ecx
		mov	eax, dword_5E5D74
		mov	edx, [ebp-18h]
		movzx	ecx, word ptr [eax+edx*2]
		and	ecx, 3
		cmp	ecx, 3
		jge	short loc_461586
		mov	eax, dword_5E5D74
		mov	edx, [ebp-18h]
		inc	word ptr [eax+edx*2]

loc_461586:				; CODE XREF: .text:00461539j
					; .text:00461547j ...
		mov	ecx, dword_5E5D74
		or	word ptr [ecx+esi*2], 20h
		jmp	short loc_4615E2
; ---------------------------------------------------------------------------

loc_461593:				; CODE XREF: .text:004614C0j
					; DATA XREF: .text:off_4614C7o
		cmp	dword ptr [ebp-18A0h], 100h ; jumptable	004614C0 cases 15,16
		jbe	short loc_4615AA
		mov	eax, dword_5E5D74
		or	word ptr [eax+esi*2], 200h

loc_4615AA:				; CODE XREF: .text:0046159Dj
		cmp	dword ptr [ebp-18A0h], 1000h
		jbe	short loc_4615C2
		mov	edx, dword_5E5D70
		mov	byte ptr [edx+esi], 0
		jmp	short loc_4615E2
; ---------------------------------------------------------------------------

loc_4615C2:				; CODE XREF: .text:004615B4j
		mov	ecx, dword_5E5D74
		or	word ptr [ecx+esi*2], 70h
		jmp	short loc_4615E2
; ---------------------------------------------------------------------------

loc_4615CF:				; CODE XREF: .text:004614BAj
					; .text:004614C0j
					; DATA XREF: ...
		test	byte ptr [ebp-18D1h], 10h ; jumptable 004614C0 default case
		jz	short loc_4615E2
		mov	eax, dword_5E5D74
		or	word ptr [eax+esi*2], 10h

loc_4615E2:				; CODE XREF: .text:00460ED3j
					; .text:00460EE2j ...
		inc	esi

loc_4615E3:				; CODE XREF: .text:00460E7Aj
		mov	edx, [ebp+0Ch]
		sub	edx, addr0
		add	edx, [ebp+10h]
		cmp	esi, edx
		jb	loc_460E7F
		xor	eax, eax

loc_4615F9:				; CODE XREF: .text:00460E3Dj
					; .text:00460EB5j
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_461600:				; CODE XREF: .text:0046F116p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi
		push	edi
		lea	ebx, [ebp-0Ch]
		mov	esi, offset dword_5E5D74
		xor	eax, eax
		mov	[ebp-10h], eax
		xor	edx, edx
		mov	[ebx], edx
		jmp	loc_461780
; ---------------------------------------------------------------------------

loc_46161F:				; CODE XREF: .text:00461788j
		mov	ecx, [ebp-10h]
		add	ecx, 2000h
		cmp	ecx, [ebx]
		jnb	short loc_461652
		push	edi		; nDenominator
		push	3E8h		; nNumerator
		mov	eax, [ebx]
		push	eax		; nNumber
		call	MulDiv
		push	eax		; int
		call	loc_45C684
		pop	ecx
		test	eax, eax
		jz	short loc_46164D
		or	eax, 0FFFFFFFFh
		jmp	loc_4617FA
; ---------------------------------------------------------------------------

loc_46164D:				; CODE XREF: .text:00461643j
		mov	edx, [ebx]
		mov	[ebp-10h], edx

loc_461652:				; CODE XREF: .text:0046162Aj
		mov	ecx, s
		mov	eax, [ebx]
		cmp	byte ptr [ecx+eax], 0
		jnz	short loc_4616BC
		mov	edx, _size
		sub	edx, [ebx]
		cmp	edx, 10h
		jb	short loc_4616BC
		push	0		; _name
		mov	ecx, _size
		sub	ecx, [ebx]
		push	ecx		; ndata
		mov	eax, copy
		add	eax, [ebx]
		push	eax		; data
		call	Getguidname
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4616BC
		xor	edx, edx
		mov	[ebp-4], edx

loc_461691:				; CODE XREF: .text:004616A5j
		mov	ecx, [ebx]
		add	ecx, [ebp-4]
		mov	eax, [esi]
		test	byte ptr [eax+ecx*2], 4
		jnz	short loc_4616A7
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 10h
		jb	short loc_461691

loc_4616A7:				; CODE XREF: .text:0046169Cj
		cmp	dword ptr [ebp-4], 10h
		jb	short loc_4616BC
		push	10h
		mov	edx, [ebx]
		push	edx
		push	10h
		call	loc_45C740
		add	esp, 0Ch

loc_4616BC:				; CODE XREF: .text:0046165Ej
					; .text:0046166Bj ...
		mov	eax, 1
		mov	edx, dword_5E5D70
		mov	ecx, [ebx]
		add	edx, ecx
		jmp	short loc_4616DB
; ---------------------------------------------------------------------------

loc_4616CD:				; CODE XREF: .text:004616E1j
		mov	ecx, [ebx]
		add	ecx, eax
		mov	edi, [esi]
		test	byte ptr [edi+ecx*2+1],	20h
		jnz	short loc_4616E3
		inc	eax

loc_4616DB:				; CODE XREF: .text:004616CBj
		xor	ecx, ecx
		mov	cl, [edx]
		cmp	eax, ecx
		jl	short loc_4616CD

loc_4616E3:				; CODE XREF: .text:004616D8j
		mov	edx, dword_5E5D70
		mov	ecx, [ebx]
		movzx	edx, byte ptr [edx+ecx]
		cmp	eax, edx
		jge	short loc_4616FD
		mov	eax, [esi]
		mov	edx, [ebx]
		or	word ptr [eax+edx*2], 200h

loc_4616FD:				; CODE XREF: .text:004616F1j
		mov	edx, [esi]
		mov	eax, [ebx]
		movzx	eax, word ptr [edx+eax*2]
		and	eax, 3
		test	eax, eax
		jz	short loc_46177E
		mov	ecx, [ebx]
		and	word ptr [edx+ecx*2], 0FFFCh
		mov	edx, dword_5E5D70
		mov	ecx, [ebx]
		cmp	byte ptr [edx+ecx], 0
		jz	short loc_46177E
		mov	edx, [ebx]
		add	edx, 4
		cmp	edx, _size
		ja	short loc_461757
		mov	edx, copy
		mov	ecx, [ebx]
		mov	edx, [edx+ecx]
		mov	[ebp-4], edx
		mov	edx, [ebp-4]
		and	edx, 0FFFFFFh
		cmp	edx, 0EC8B55h
		jz	short loc_461756
		cmp	edx, 0E58955h
		jnz	short loc_461757

loc_461756:				; CODE XREF: .text:0046174Cj
		inc	eax

loc_461757:				; CODE XREF: .text:0046172Dj
					; .text:00461754j
		mov	ecx, [esi]
		mov	edx, [ebx]
		mov	dx, [ecx+edx*2]
		test	dl, 80h
		jz	short loc_461765
		inc	eax

loc_461765:				; CODE XREF: .text:00461762j
		mov	ecx, [esi]
		mov	edi, [ebx]
		test	dh, 1
		jz	short loc_46176F
		dec	eax

loc_46176F:				; CODE XREF: .text:0046176Cj
		cmp	eax, 2
		jl	short loc_46177E
		mov	eax, [esi]
		mov	edx, [ebx]
		or	word ptr [eax+edx*2], 400h

loc_46177E:				; CODE XREF: .text:0046170Aj
					; .text:00461720j ...
		inc	dword ptr [ebx]

loc_461780:				; CODE XREF: .text:0046161Aj
		mov	edi, _size
		cmp	edi, [ebx]
		ja	loc_46161F
		mov	eax, [ebp+8]
		test	byte ptr [eax+0Ah], 40h
		jz	short loc_4617F8
		push	29h		; type
		mov	edx, addr1
		push	edx		; addr1
		mov	ecx, addr0
		push	ecx		; addr0
		call	Startnextdata
		add	esp, 0Ch
		jmp	short loc_4617E4
; ---------------------------------------------------------------------------

loc_4617B1:				; CODE XREF: .text:004617F6j
		lea	eax, [ebp-4]
		push	eax
		push	ebx
		push	0
		mov	edx, [ebp-8]
		push	edx
		call	loc_4C9C4C
		add	esp, 10h
		test	eax, eax
		jz	short loc_4617E4
		cmp	dword ptr [ebx], 0
		jnz	short loc_4617E4
		cmp	dword ptr [ebp-4], 5
		jnz	short loc_4617E4
		mov	ecx, [ebp-8]
		sub	ecx, addr0
		mov	eax, [esi]
		or	word ptr [eax+ecx*2], 480h

loc_4617E4:				; CODE XREF: .text:004617AFj
					; .text:004617C6j ...
		push	0		; nname
		push	0		; _name
		lea	edx, [ebp-8]
		push	edx		; _addr
		call	FindnextnameW
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4617B1

loc_4617F8:				; CODE XREF: .text:00461795j
		xor	eax, eax

loc_4617FA:				; CODE XREF: .text:00461648j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_461804(void *src, int, int)
loc_461804:				; CODE XREF: .text:00461FC1p
					; .text:0046275Fp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF72Ch
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_461829
		cmp	esi, 2
		jnb	short loc_461830

loc_461829:				; CODE XREF: .text:00461822j
		xor	eax, eax
		jmp	loc_461989
; ---------------------------------------------------------------------------

loc_461830:				; CODE XREF: .text:00461827j
		xor	edx, edx
		mov	dl, [ebx]
		cmp	edx, 0E8h
		jge	short loc_461856
		sub	edx, 0Fh
		jz	short loc_46186E
		add	edx, 0FFFFFF9Fh
		sub	edx, 10h
		jb	short loc_46189B
		add	edx, 0FFFFFFA0h
		sub	edx, 4
		jb	short loc_46189B
		jmp	loc_461929
; ---------------------------------------------------------------------------

loc_461856:				; CODE XREF: .text:0046183Aj
		add	edx, 0FFFFFF18h
		sub	edx, 2
		jb	short loc_4618A9
		dec	edx
		jz	short loc_46189B
		sub	edx, 14h
		jz	short loc_4618BB
		jmp	loc_461929
; ---------------------------------------------------------------------------

loc_46186E:				; CODE XREF: .text:0046183Fj
		cmp	esi, 6
		jb	loc_461929
		xor	ecx, ecx
		mov	cl, [ebx+1]
		and	ecx, 0F0h
		cmp	ecx, 80h
		jnz	loc_461929
		mov	eax, [ebx+2]
		add	eax, edi
		add	eax, 6
		jmp	loc_461989
; ---------------------------------------------------------------------------

loc_46189B:				; CODE XREF: .text:00461847j
					; .text:0046184Fj ...
		movsx	eax, byte ptr [ebx+1]
		add	eax, edi
		add	eax, 2
		jmp	loc_461989
; ---------------------------------------------------------------------------

loc_4618A9:				; CODE XREF: .text:0046185Fj
		cmp	esi, 5
		jb	short loc_461929
		mov	eax, [ebx+1]
		add	eax, edi
		add	eax, 5
		jmp	loc_461989
; ---------------------------------------------------------------------------

loc_4618BB:				; CODE XREF: .text:00461867j
		cmp	esi, 6
		jb	short loc_461908
		mov	al, [ebx+1]
		cmp	al, 15h
		jz	short loc_4618CB
		cmp	al, 25h
		jnz	short loc_461908

loc_4618CB:				; CODE XREF: .text:004618C5j
		push	1		; mode
		push	4		; size
		mov	edx, [ebx+2]
		push	edx		; _addr
		lea	ecx, [ebp-4]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	short loc_461908
		mov	eax, addr0
		cmp	eax, [ebp-4]
		ja	short loc_461900
		add	eax, _size
		cmp	eax, [ebp-4]
		jbe	short loc_461900
		xor	eax, eax
		jmp	loc_461989
; ---------------------------------------------------------------------------

loc_461900:				; CODE XREF: .text:004618ECj
					; .text:004618F7j
		mov	eax, [ebp-4]
		jmp	loc_461989
; ---------------------------------------------------------------------------

loc_461908:				; CODE XREF: .text:004618BEj
					; .text:004618C9j ...
		xor	eax, eax
		mov	al, [ebx+1]
		mov	edx, eax
		and	edx, 0C0h
		cmp	edx, 0C0h
		jz	short loc_461925
		and	eax, 7
		cmp	eax, 4
		jz	short loc_461929

loc_461925:				; CODE XREF: .text:0046191Bj
		xor	eax, eax
		jmp	short loc_461989
; ---------------------------------------------------------------------------

loc_461929:				; CODE XREF: .text:00461851j
					; .text:00461869j ...
		push	0		; predict
		push	0		; reg
		push	30h		; mode
		lea	edx, [ebp-18D4h]
		push	edx		; da
		push	0		; dec
		push	edi		; ip
		push	esi		; cmdsize
		push	ebx		; cmd
		call	Disasm
		add	esp, 20h
		test	eax, eax
		jz	short loc_461950
		cmp	dword ptr [ebp-18A8h], 0
		jz	short loc_461954

loc_461950:				; CODE XREF: .text:00461945j
		xor	eax, eax
		jmp	short loc_461989
; ---------------------------------------------------------------------------

loc_461954:				; CODE XREF: .text:0046194Ej
		test	byte ptr [ebp-1887h], 1
		jz	short loc_461983
		mov	edx, [ebp-1894h]
		cmp	edx, addr0
		jb	short loc_461983
		mov	ecx, addr0
		add	ecx, _size
		cmp	ecx, [ebp-1894h]
		jbe	short loc_461983
		xor	eax, eax
		jmp	short loc_461989
; ---------------------------------------------------------------------------

loc_461983:				; CODE XREF: .text:0046195Bj
					; .text:00461969j ...
		mov	eax, [ebp-1894h]

loc_461989:				; CODE XREF: .text:0046182Bj
					; .text:00461896j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_461990:				; CODE XREF: .text:0046F149p
					; .text:0046F17Ep
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_461999:				; CODE XREF: .text:004619A1j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_461999
		mov	eax, [ebp-4]
		add	esp, 0FFFFFD80h
		push	ebx
		push	esi
		push	edi		; arglist
		lea	edi, [ebp-40h]
		mov	eax, [ebp+0Ch]
		cmp	eax, addr0
		jb	short loc_4619C8
		mov	edx, [ebp+0Ch]
		cmp	edx, addr1
		jb	short loc_4619CF

loc_4619C8:				; CODE XREF: .text:004619BBj
		xor	eax, eax
		jmp	loc_464226
; ---------------------------------------------------------------------------

loc_4619CF:				; CODE XREF: .text:004619C6j
		mov	edx, [ebp+0Ch]
		add	edx, [ebp+10h]
		cmp	edx, addr1
		jbe	short loc_4619E9
		mov	ecx, addr1
		sub	ecx, [ebp+0Ch]
		mov	[ebp+10h], ecx

loc_4619E9:				; CODE XREF: .text:004619DBj
		mov	eax, [ebp+8]
		add	eax, 8F4h
		mov	[ebp-84h], eax
		mov	edx, [ebp+8]
		test	byte ptr [edx+0Ah], 20h
		jz	short loc_461A07
		xor	ecx, ecx
		mov	[ebp-34h], ecx
		jmp	short loc_461A0F
; ---------------------------------------------------------------------------

loc_461A07:				; CODE XREF: .text:004619FEj
		mov	eax, dword_57DD34
		mov	[ebp-34h], eax

loc_461A0F:				; CODE XREF: .text:00461A05j
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-20h], edx
		mov	[ebp-0Ch], ecx
		mov	eax, [ebp+8]
		test	byte ptr [eax+0Ah], 4
		jz	short loc_461A62
		mov	edx, [ebp+8]
		mov	ecx, [edx+464h]
		cmp	ecx, [ebp+0Ch]
		jb	short loc_461A62
		mov	eax, [ebp+8]
		mov	ecx, [ebp+0Ch]
		add	ecx, [ebp+10h]
		mov	edx, [eax+464h]
		cmp	edx, ecx
		jnb	short loc_461A62
		mov	ecx, [ebp+8]
		mov	eax, dword_5E5D88
		mov	edx, [ebp-0Ch]
		mov	ecx, [ecx+464h]
		sub	ecx, addr0
		mov	[eax+edx*4], ecx
		inc	dword ptr [ebp-0Ch]
		jmp	short loc_461AA0
; ---------------------------------------------------------------------------

loc_461A62:				; CODE XREF: .text:00461A20j
					; .text:00461A2Ej ...
		mov	eax, [ebp+8]
		mov	edx, [eax+460h]
		cmp	edx, [ebp+0Ch]
		jb	short loc_461AA0
		mov	eax, [ebp+8]
		mov	ecx, [ebp+0Ch]
		add	ecx, [ebp+10h]
		mov	edx, [eax+460h]
		cmp	edx, ecx
		jnb	short loc_461AA0
		mov	ecx, [ebp+8]
		mov	eax, dword_5E5D88
		mov	edx, [ebp-0Ch]
		mov	ecx, [ecx+460h]
		sub	ecx, addr0
		mov	[eax+edx*4], ecx
		inc	dword ptr [ebp-0Ch]

loc_461AA0:				; CODE XREF: .text:00461A60j
					; .text:00461A6Ej ...
		mov	esi, [ebp+0Ch]
		sub	esi, addr0
		jmp	short loc_461AFD
; ---------------------------------------------------------------------------

loc_461AAB:				; CODE XREF: .text:00461B0Bj
		mov	eax, dword_5E5D74
		test	byte ptr [eax+esi*2+1],	4
		jz	short loc_461AFC
		mov	edx, [ebp-0Ch]	; int
		cmp	edx, dword_5E5D8C
		jl	short loc_461AED
		push	1		; flags
		lea	ecx, [ebp-20h]	; int
		push	ecx		; failed
		push	4		; itemsize
		push	offset dword_5E5D8C ; pcount
		mov	eax, dword_5E5D88 ; int
		push	eax		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5E5D88, eax
		mov	edx, [ebp-0Ch]
		cmp	edx, dword_5E5D8C
		jge	short loc_461B0D

loc_461AED:				; CODE XREF: .text:00461AC0j
		mov	ecx, dword_5E5D88
		mov	eax, [ebp-0Ch]
		mov	[ecx+eax*4], esi
		inc	dword ptr [ebp-0Ch]

loc_461AFC:				; CODE XREF: .text:00461AB5j
		inc	esi

loc_461AFD:				; CODE XREF: .text:00461AA9j
		mov	edx, [ebp+0Ch]
		sub	edx, addr0
		add	edx, [ebp+10h]
		cmp	esi, edx
		jb	short loc_461AAB

loc_461B0D:				; CODE XREF: .text:00461AEBj
		mov	ecx, addr0
		push	ecx		; _addr
		push	offset pdat	; pdat
		call	Getsimpledataindexbyaddr
		add	esp, 8
		mov	[ebp-8], eax

loc_461B24:				; CODE XREF: .text:00461B9Fj
		mov	eax, [ebp-8]
		push	eax		; index
		push	offset pdat	; pdat
		call	Getsimpledatabyindex
		add	esp, 8
		mov	[ebp-78h], eax
		cmp	dword ptr [ebp-78h], 0
		jz	short loc_461BA1
		mov	edx, [ebp-78h]
		mov	ecx, [edx]
		cmp	ecx, addr1
		jnb	short loc_461BA1
		mov	eax, [ebp-0Ch]	; int
		cmp	eax, dword_5E5D8C
		jl	short loc_461B82
		push	1		; flags
		lea	edx, [ebp-20h]	; int
		push	edx		; failed
		push	4		; itemsize
		push	offset dword_5E5D8C ; pcount
		mov	ecx, dword_5E5D88 ; int
		push	ecx		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5E5D88, eax
		mov	eax, [ebp-0Ch]
		cmp	eax, dword_5E5D8C
		jge	short loc_461BA1

loc_461B82:				; CODE XREF: .text:00461B54j
		mov	eax, [ebp-78h]
		mov	edx, dword_5E5D88
		mov	ecx, [ebp-0Ch]
		mov	eax, [eax]
		sub	eax, addr0
		mov	[edx+ecx*4], eax
		inc	dword ptr [ebp-0Ch]
		inc	dword ptr [ebp-8]
		jmp	short loc_461B24
; ---------------------------------------------------------------------------

loc_461BA1:				; CODE XREF: .text:00461B3Cj
					; .text:00461B49j ...
		xor	edx, edx
		mov	eax, addr0
		mov	[ebp-64h], edx
		mov	[ebp-60h], edx
		mov	[ebp-5Ch], edx
		push	eax		; _addr
		push	offset stru_5D4088 ; pdat
		call	Getsimpledataindexbyaddr
		add	esp, 8
		mov	[ebp-8], eax

loc_461BC2:				; CODE XREF: .text:00461C9Aj
		mov	ecx, [ebp-8]
		push	ecx		; index
		push	offset stru_5D4088 ; pdat
		call	Getsimpledatabyindex
		add	esp, 8
		mov	[ebp-7Ch], eax
		cmp	dword ptr [ebp-7Ch], 0
		jz	loc_461C9F
		mov	eax, [ebp-7Ch]
		mov	edx, [eax]
		cmp	edx, addr1
		jnb	loc_461C9F
		mov	ecx, [ebp-7Ch]
		mov	esi, [ecx]
		sub	esi, addr0
		cmp	esi, [ebp-60h]
		jbe	short loc_461C1A
		mov	eax, [ebp-64h]
		push	eax
		mov	edx, [ebp-5Ch]
		push	edx
		call	loc_45CC08
		add	esp, 8
		mov	[ebp-64h], esi
		mov	[ebp-60h], esi
		mov	[ebp-5Ch], esi

loc_461C1A:				; CODE XREF: .text:00461BFFj
		mov	ecx, s
		cmp	byte ptr [ecx+esi], 18h
		jz	short loc_461C97
		mov	eax, [ebp-7Ch]
		mov	edx, [eax+4]
		add	edx, esi
		mov	[ebp-4Ch], edx
		mov	ecx, _size
		cmp	ecx, [ebp-4Ch]
		jnb	short loc_461C44
		mov	eax, _size
		mov	[ebp-4Ch], eax

loc_461C44:				; CODE XREF: .text:00461C3Aj
		cmp	esi, [ebp-4Ch]
		jnb	short loc_461C91

loc_461C49:				; CODE XREF: .text:00461C8Fj
		mov	[ebp-64h], esi
		push	0		; pmod
		lea	edx, [ebp-2284h]
		mov	ecx, addr0
		push	0		; mode
		add	ecx, esi
		push	edx		; da
		push	ecx		; ip
		mov	eax, [ebp-4Ch]
		mov	edx, copy
		sub	eax, esi
		add	edx, esi
		push	eax		; size
		push	edx		; cmd
		call	Ndisasm
		add	esp, 18h
		mov	[ebp-50h], eax
		mov	ecx, [ebp-50h]
		push	ecx
		push	esi
		push	18h
		call	loc_45C740
		add	esp, 0Ch
		add	esi, [ebp-50h]
		cmp	esi, [ebp-4Ch]
		jb	short loc_461C49

loc_461C91:				; CODE XREF: .text:00461C47j
		mov	eax, [ebp-4Ch]
		mov	[ebp-60h], eax

loc_461C97:				; CODE XREF: .text:00461C24j
		inc	dword ptr [ebp-8]
		jmp	loc_461BC2
; ---------------------------------------------------------------------------

loc_461C9F:				; CODE XREF: .text:00461BDAj
					; .text:00461BEBj
		mov	edx, [ebp-64h]
		cmp	edx, [ebp-5Ch]
		jbe	short loc_461CB7
		mov	ecx, [ebp-64h]
		push	ecx
		mov	eax, [ebp-5Ch]
		push	eax
		call	loc_45CC08
		add	esp, 8

loc_461CB7:				; CODE XREF: .text:00461CA5j
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-48h], edx
		mov	[ebp-54h], ecx
		mov	eax, [ebp+0Ch]
		sub	eax, addr0
		add	eax, [ebp+10h]
		mov	[ebp-4Ch], eax
		mov	esi, [ebp+0Ch]
		sub	esi, addr0
		cmp	esi, [ebp-4Ch]
		jnb	loc_4641B5

loc_461CE2:				; CODE XREF: .text:004641AFj
		cmp	dword ptr [ebp-0Ch], 0
		jle	loc_462DA2
		dec	dword ptr [ebp-0Ch]
		mov	eax, dword_5E5D88
		mov	edx, [ebp-0Ch]
		mov	ebx, [eax+edx*4]
		mov	eax, [ebp+0Ch]
		sub	eax, addr0
		cmp	ebx, eax
		jb	short loc_461D0C
		cmp	ebx, [ebp-4Ch]
		jb	short loc_461D27

loc_461D0C:				; CODE XREF: .text:00461D05j
		cmp	ebx, [ebp+10h]
		jnb	short loc_461D1D
		mov	edx, dword_5E5D74
		or	word ptr [edx+ebx*2], 400h

loc_461D1D:				; CODE XREF: .text:00461D0Fj
		xor	ecx, ecx
		mov	[ebp-54h], ecx
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_461D27:				; CODE XREF: .text:00461D0Aj
		mov	eax, s
		cmp	byte ptr [eax+ebx], 1Ch
		jnz	short loc_461D3C
		xor	edx, edx
		mov	[ebp-54h], edx
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_461D3C:				; CODE XREF: .text:00461D30j
		mov	ecx, dword_5E5D70
		xor	eax, eax
		mov	al, [ecx+ebx]
		mov	[ebp-50h], eax
		cmp	dword ptr [ebp-50h], 0
		jnz	short loc_461D80
		cmp	dword_5BDD18, 0
		jz	short loc_461D76
		push	offset aInvalidComma_1 ; "  Invalid command in sure code"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		add	ebx, addr0
		push	ebx		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_461D76:				; CODE XREF: .text:00461D57j
		xor	edx, edx
		mov	[ebp-54h], edx
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_461D80:				; CODE XREF: .text:00461D4Ej
		mov	dword ptr [edi], 1
		mov	ecx, [edi]
		cmp	ecx, [ebp-50h]
		jnb	short loc_461DA6

loc_461D8D:				; CODE XREF: .text:00461DA4j
		mov	eax, [edi]
		add	eax, ebx
		mov	edx, s
		cmp	byte ptr [edx+eax], 1Ch
		jz	short loc_461DA6
		inc	dword ptr [edi]
		mov	ecx, [edi]
		cmp	ecx, [ebp-50h]
		jb	short loc_461D8D

loc_461DA6:				; CODE XREF: .text:00461D8Bj
					; .text:00461D9Bj
		mov	eax, [edi]
		cmp	eax, [ebp-50h]
		jb	short loc_461DB9
		mov	edx, s
		cmp	byte ptr [edx+ebx], 1
		jnz	short loc_461DE9

loc_461DB9:				; CODE XREF: .text:00461DABj
		cmp	dword_5BDD18, 0
		jz	short loc_461DDF
		push	offset aCommandAlready ; "  Command already decoded differently"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		add	ebx, addr0
		push	ebx		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_461DDF:				; CODE XREF: .text:00461DC0j
		xor	ecx, ecx
		mov	[ebp-54h], ecx
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_461DE9:				; CODE XREF: .text:00461DB7j
		mov	eax, [ebp-50h]
		push	eax
		push	ebx
		push	1Ch
		call	loc_45C740
		add	esp, 0Ch
		mov	edx, dword_5E5D74
		test	byte ptr [edx+ebx*2+1],	10h
		jz	loc_461F78
		push	0		; predict
		push	0		; reg
		lea	ecx, [ebp-1A58h]
		push	0		; mode
		push	ecx		; da
		mov	eax, addr0
		add	eax, ebx
		push	0		; dec
		push	eax		; ip
		mov	ecx, copy
		mov	edx, [ebp-4Ch]
		sub	edx, ebx
		add	ecx, ebx
		push	edx		; cmdsize
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		xor	eax, eax
		mov	[ebp-4], eax
		lea	edx, [ebp-1A0Ch]
		mov	[ebp-80h], edx

loc_461E45:				; CODE XREF: .text:00461F72j
		mov	ecx, [ebp-80h]
		mov	eax, [ecx]
		and	eax, 80100h
		cmp	eax, 100h
		jnz	loc_461F64
		mov	edx, [ebp-80h]
		mov	ecx, [edx+30h]
		cmp	ecx, addr0
		jb	loc_461F64
		mov	eax, [ebp-80h]
		mov	ecx, [ebp-80h]
		mov	edx, [eax+30h]
		add	edx, [ecx+0Ch]
		cmp	edx, addr1
		ja	loc_461F64
		mov	eax, [ebp-80h]
		mov	edx, [eax+30h]
		sub	edx, addr0
		mov	[edi], edx
		jmp	short loc_461EF7
; ---------------------------------------------------------------------------

loc_461E94:				; CODE XREF: .text:00461F0Bj
		mov	ecx, s
		mov	eax, [edi]
		mov	al, [ecx+eax]
		cmp	al, 1Ch
		jz	short loc_461EAF
		mov	edx, s
		mov	ecx, [edi]
		cmp	al, 1
		jnz	short loc_461EF5

loc_461EAF:				; CODE XREF: .text:00461EA1j
		cmp	dword_5BDD18, 0
		jz	short loc_461F0D
		mov	eax, [ebp-80h]
		test	byte ptr [eax+1], 40h
		jz	short loc_461ECE
		push	offset aSelfModifiedCo ; " (self-modified code?)"
		call	_T
		pop	ecx
		jmp	short loc_461ED3
; ---------------------------------------------------------------------------

loc_461ECE:				; CODE XREF: .text:00461EBFj
		mov	eax, (offset aAnalysingSPres+55h) ; ""

loc_461ED3:				; CODE XREF: .text:00461ECCj
		push	eax		; arglist
		push	offset aDataAlreadyDec ; "  Data already decoded as command%s"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		mov	edx, addr0
		add	edx, ebx
		push	edx		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	short loc_461F0D
; ---------------------------------------------------------------------------

loc_461EF5:				; CODE XREF: .text:00461EADj
		inc	dword ptr [edi]

loc_461EF7:				; CODE XREF: .text:00461E92j
		mov	ecx, [ebp-80h]
		mov	edx, [ebp-80h]
		mov	eax, [ecx+30h]
		sub	eax, addr0
		add	eax, [edx+0Ch]
		cmp	eax, [edi]
		ja	short loc_461E94

loc_461F0D:				; CODE XREF: .text:00461EB6j
					; .text:00461EF3j
		mov	ecx, [ebp-80h]
		mov	edx, [ebp-80h]
		mov	eax, [ecx+30h]
		sub	eax, addr0
		add	eax, [edx+0Ch]
		cmp	eax, [edi]
		ja	short loc_461F64
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	short loc_461F59
; ---------------------------------------------------------------------------

loc_461F2A:				; CODE XREF: .text:00461F62j
		mov	eax, [ebp-80h]
		mov	edx, [eax+10h]
		push	edx
		mov	ecx, [ebp-80h]
		mov	eax, [ecx+30h]
		sub	eax, addr0
		add	eax, [ebp-4]
		push	eax
		mov	edx, [ebp-80h]
		mov	ecx, [edx+8]
		push	ecx
		call	loc_45C740
		add	esp, 0Ch
		mov	eax, [ebp-80h]
		mov	edx, [eax+10h]
		add	[ebp-4], edx

loc_461F59:				; CODE XREF: .text:00461F28j
		mov	ecx, [ebp-80h]
		mov	eax, [ecx+0Ch]
		cmp	eax, [ebp-4]
		jg	short loc_461F2A

loc_461F64:				; CODE XREF: .text:00461E54j
					; .text:00461E66j ...
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-80h], 460h
		cmp	dword ptr [ebp-4], 4
		jl	loc_461E45

loc_461F78:				; CODE XREF: .text:00461E03j
		mov	edx, dword_5E5D74
		movzx	ecx, word ptr [edx+ebx*2]
		and	ecx, 70h
		sub	ecx, 20h
		jz	short loc_461FAA
		sub	ecx, 10h
		jz	loc_462747
		sub	ecx, 10h
		jz	loc_462C4A
		sub	ecx, 30h
		jz	loc_462D2F
		jmp	loc_462D39
; ---------------------------------------------------------------------------

loc_461FAA:				; CODE XREF: .text:00461F88j
		mov	eax, addr0
		mov	ecx, copy
		add	eax, ebx
		push	eax		; int
		mov	edx, [ebp-4Ch]
		sub	edx, ebx
		add	ecx, ebx
		push	edx		; int
		push	ecx		; src
		call	loc_461804
		add	esp, 0Ch
		mov	[ebp-68h], eax
		cmp	dword_5BDD20, 0
		jz	loc_4621D7
		mov	eax, [ebp-68h]
		add	eax, 4
		cmp	eax, addr1
		ja	loc_4621D7
		mov	edx, addr0
		add	edx, ebx
		add	edx, [ebp-50h]
		inc	edx
		cmp	edx, [ebp-68h]
		jnb	loc_4621D7
		mov	ecx, addr0
		add	ecx, ebx
		add	ecx, [ebp-50h]
		add	ecx, 100h
		cmp	ecx, [ebp-68h]
		jb	loc_4621D7
		mov	eax, [ebp-68h]
		sub	eax, addr0
		mov	edx, copy
		cmp	byte ptr [edx+eax-1], 0
		jnz	loc_4621D7
		mov	ecx, copy
		add	ecx, [ebp-68h]
		sub	ecx, addr0
		mov	eax, [ecx]
		and	eax, 0FFFFFFh
		cmp	eax, 0EC8B55h
		jz	loc_4621D7
		mov	edx, copy
		add	edx, [ebp-68h]
		sub	edx, addr0
		mov	ecx, [edx]
		and	ecx, 0FFFFFFh
		cmp	ecx, 0E58955h
		jz	loc_4621D7
		mov	eax, [ebp-68h]
		sub	eax, addr0
		mov	edx, copy
		cmp	byte ptr [edx+eax], 0C8h
		jz	loc_4621D7
		mov	ecx, [ebp-50h]
		add	ecx, ebx
		mov	[edi], ecx
		jmp	short loc_4620F6
; ---------------------------------------------------------------------------

loc_46209A:				; CODE XREF: .text:00462102j
		mov	eax, dword_5E5D74
		mov	edx, [edi]
		test	byte ptr [eax+edx*2], 4
		jnz	short loc_462104
		mov	ecx, copy
		mov	eax, [edi]
		mov	dl, [ecx+eax]
		push	edx		; a1
		call	IstextA
		pop	ecx
		test	eax, eax
		jz	short loc_462104
		mov	ecx, copy
		mov	eax, [edi]
		cmp	byte ptr [ecx+eax], 0C2h
		jz	short loc_462104
		mov	edx, copy
		mov	ecx, [edi]
		cmp	byte ptr [edx+ecx], 0C3h
		jz	short loc_462104
		mov	eax, s
		mov	edx, [edi]
		cmp	byte ptr [eax+edx], 1Ch
		jz	short loc_462104
		mov	ecx, s
		mov	eax, [edi]
		cmp	byte ptr [ecx+eax], 1
		jz	short loc_462104
		inc	dword ptr [edi]

loc_4620F6:				; CODE XREF: .text:00462098j
		mov	edx, [ebp-68h]
		sub	edx, addr0
		dec	edx
		cmp	edx, [edi]
		ja	short loc_46209A

loc_462104:				; CODE XREF: .text:004620A5j
					; .text:004620BBj ...
		mov	ecx, [ebp-68h]
		sub	ecx, addr0
		dec	ecx
		cmp	ecx, [edi]
		jnz	loc_4621D7
		push	offset aJumpOverImmedi ; "Jump over immediate data"
		call	_T
		pop	ecx
		push	eax		; s
		push	31h		; type
		mov	eax, addr0
		add	eax, ebx
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		mov	edx, [ebp-68h]
		sub	edx, addr0
		sub	edx, ebx
		sub	edx, [ebp-50h]
		push	edx
		mov	ecx, [ebp-50h]
		add	ecx, ebx
		push	ecx
		push	9
		call	loc_45C740
		mov	eax, dword_5E5D74
		mov	ecx, dword_5E5D74
		add	esp, 0Ch
		mov	dx, [eax+ebx*2]
		and	dx, 0FF8Fh
		or	dx, 30h
		mov	[ecx+ebx*2], dx
		mov	eax, [ebp-68h]
		mov	edx, dword_5E5D74 ; int
		sub	eax, addr0
		or	word ptr [edx+eax*2], 401h
		push	1		; type
		mov	ecx, [ebp-68h]	; int
		add	ebx, addr0
		push	ecx		; dest
		push	ebx		; from
		mov	eax, [ebp-84h]	; int
		push	eax		; pdat
		call	Addjump
		add	esp, 10h
		mov	edx, [ebp-68h]
		cmp	edx, [ebp+0Ch]
		jb	loc_4641AC
		mov	ecx, [ebp+0Ch]
		add	ecx, [ebp+10h]
		cmp	ecx, [ebp-68h]
		jbe	loc_4641AC
		mov	eax, dword_5E5D88
		mov	edx, [ebp-0Ch]
		mov	ecx, [ebp-68h]
		sub	ecx, addr0
		mov	[eax+edx*4], ecx
		inc	dword ptr [ebp-0Ch]
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_4621D7:				; CODE XREF: .text:00461FD3j
					; .text:00461FE5j ...
		mov	eax, addr0
		cmp	eax, [ebp-68h]
		ja	short loc_462255
		mov	edx, [ebp-68h]
		cmp	edx, addr1
		jnb	short loc_462255
		mov	ecx, [ebp-68h]
		mov	eax, dword_5E5D74
		sub	ecx, addr0
		or	word ptr [eax+ecx*2], 402h
		push	5		; type
		mov	edx, [ebp-68h]	; int
		mov	ecx, addr0
		add	ecx, ebx	; int
		push	edx		; dest
		push	ecx		; from
		mov	eax, [ebp-84h]	; int
		push	eax		; pdat
		call	Addjump
		add	esp, 10h
		mov	edx, [ebp-68h]
		cmp	edx, [ebp+0Ch]
		jb	loc_4626F5
		mov	ecx, [ebp+0Ch]
		add	ecx, [ebp+10h]
		cmp	ecx, [ebp-68h]
		jbe	loc_4626F5
		mov	eax, dword_5E5D88
		mov	edx, [ebp-0Ch]
		mov	ecx, [ebp-68h]
		sub	ecx, addr0
		mov	[eax+edx*4], ecx
		inc	dword ptr [ebp-0Ch]
		jmp	loc_4626F5
; ---------------------------------------------------------------------------

loc_462255:				; CODE XREF: .text:004621DFj
					; .text:004621EAj
		cmp	dword ptr [ebp-68h], 0
		jnz	loc_4626A0
		mov	eax, dword_5E5D74 ; int
		test	byte ptr [eax+ebx*2+1],	8
		jz	loc_4626A0
		mov	edx, addr0
		push	5		; type
		add	edx, ebx	; int
		push	0		; dest
		push	edx		; from
		mov	ecx, [ebp-84h]	; int
		push	ecx		; pdat
		call	Addjump
		add	esp, 10h
		lea	eax, [ebp-1A58h]
		mov	edx, addr0
		add	edx, ebx
		push	0		; predict
		push	0		; reg
		push	0		; mode
		push	eax		; da
		push	0		; dec
		push	edx		; ip
		mov	eax, copy
		mov	ecx, [ebp-4Ch]
		sub	ecx, ebx
		add	eax, ebx
		push	ecx		; cmdsize
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		mov	edx, addr0
		cmp	edx, [ebp-1A14h]
		ja	loc_4626F5
		mov	ecx, [ebp-1A14h]
		cmp	ecx, addr1
		jnb	loc_4626F5
		xor	eax, eax
		mov	[ebp-24h], eax
		lea	eax, [ebp-19E8h]
		mov	edx, [ebp-1A14h]
		sub	edx, addr0
		xor	ecx, ecx
		mov	[edi], edx
		mov	dword ptr [ebp-58h], 4
		mov	[ebp-4], ecx
		mov	[ebp-88h], eax

loc_462308:				; CODE XREF: .text:00462329j
		mov	edx, [ebp-88h]
		cmp	byte ptr [edx],	8
		jnz	short loc_46231C
		mov	dword ptr [ebp-58h], 8
		jmp	short loc_46232B
; ---------------------------------------------------------------------------

loc_46231C:				; CODE XREF: .text:00462311j
		inc	dword ptr [ebp-4]
		inc	dword ptr [ebp-88h]
		cmp	dword ptr [ebp-4], 8
		jl	short loc_462308

loc_46232B:				; CODE XREF: .text:0046231Aj
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	loc_462473
; ---------------------------------------------------------------------------

loc_462335:				; CODE XREF: .text:0046247Ej
		mov	edx, [edi]
		mov	eax, copy
		mov	ecx, [eax+edx]
		sub	ecx, addr0
		cmp	dword_5E5D7C, 0
		mov	[ebp-44h], ecx
		jz	short loc_462362
		mov	eax, dword_5E5D74
		mov	edx, [edi]
		test	byte ptr [eax+edx*2], 8
		jz	loc_46245E

loc_462362:				; CODE XREF: .text:0046234Fj
		mov	ecx, s
		mov	eax, [edi]
		cmp	byte ptr [ecx+eax], 0
		jz	short loc_46238F
		mov	edx, s
		mov	ecx, [edi]
		cmp	byte ptr [edx+ecx], 4
		jz	short loc_46238F
		mov	eax, s
		mov	edx, [edi]
		cmp	byte ptr [eax+edx], 5
		jnz	loc_46245E

loc_46238F:				; CODE XREF: .text:0046236Ej
					; .text:0046237Cj
		mov	ecx, [ebp-44h]
		cmp	ecx, _size
		jnb	loc_46245E
		mov	eax, dword_5E5D70
		mov	edx, [ebp-44h]
		cmp	byte ptr [eax+edx], 0
		jz	loc_46245E
		mov	ecx, s
		mov	eax, [ebp-44h]
		cmp	byte ptr [ecx+eax], 0
		jz	short loc_4623D2
		mov	edx, s
		mov	ecx, [ebp-44h]
		cmp	byte ptr [edx+ecx], 1Ch
		jnz	loc_46245E

loc_4623D2:				; CODE XREF: .text:004623BDj
		push	4
		mov	eax, [edi]
		push	eax
		push	5
		call	loc_45C740
		add	esp, 0Ch
		mov	edx, [ebp-0Ch]	; int
		cmp	edx, dword_5E5D8C
		jl	short loc_46240C
		push	1		; flags
		lea	ecx, [ebp-20h]	; int
		push	ecx		; failed
		push	4		; itemsize
		push	offset dword_5E5D8C ; pcount
		mov	eax, dword_5E5D88 ; int
		push	eax		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5E5D88, eax

loc_46240C:				; CODE XREF: .text:004623EAj
		mov	edx, [ebp-0Ch]
		cmp	edx, dword_5E5D8C
		jge	short loc_462429
		mov	ecx, dword_5E5D88
		mov	eax, [ebp-0Ch]
		mov	edx, [ebp-44h]
		mov	[ecx+eax*4], edx
		inc	dword ptr [ebp-0Ch]

loc_462429:				; CODE XREF: .text:00462415j
		mov	eax, [ebp-44h]
		mov	ecx, dword_5E5D74
		or	word ptr [ecx+eax*2], 402h
		push	6		; type
		mov	edx, addr0
		mov	ecx, addr0
		add	edx, [ebp-44h]	; int
		add	ecx, ebx	; int
		push	edx		; dest
		push	ecx		; from
		mov	eax, [ebp-84h]	; int
		push	eax		; pdat
		call	Addjump
		add	esp, 10h
		jmp	short loc_46246B
; ---------------------------------------------------------------------------

loc_46245E:				; CODE XREF: .text:0046235Cj
					; .text:00462389j ...
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_462484
		mov	dword ptr [ebp-24h], 1

loc_46246B:				; CODE XREF: .text:0046245Cj
		inc	dword ptr [ebp-4]
		mov	edx, [ebp-58h]
		add	[edi], edx

loc_462473:				; CODE XREF: .text:00462330j
		mov	ecx, [edi]
		add	ecx, 4
		cmp	ecx, _size
		jbe	loc_462335

loc_462484:				; CODE XREF: .text:00462462j
		mov	eax, [ebp-24h]
		add	eax, 2
		cmp	eax, [ebp-4]
		jle	loc_4625ED
		mov	edx, [ebp-1A14h]
		sub	edx, addr0
		mov	[edi], edx
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	loc_4625DA
; ---------------------------------------------------------------------------

loc_4624AB:				; CODE XREF: .text:004625E2j
		mov	edx, [edi]
		mov	eax, copy
		mov	ecx, [eax+edx]
		sub	ecx, addr0
		cmp	dword_5E5D7C, 0
		mov	[ebp-44h], ecx
		jz	short loc_4624D8
		mov	eax, dword_5E5D74
		mov	edx, [edi]
		test	byte ptr [eax+edx*2], 8
		jz	loc_4626F5

loc_4624D8:				; CODE XREF: .text:004624C5j
		mov	ecx, s
		mov	eax, [edi]
		cmp	byte ptr [ecx+eax], 0
		jz	short loc_462505
		mov	edx, s
		mov	ecx, [edi]
		cmp	byte ptr [edx+ecx], 4
		jz	short loc_462505
		mov	eax, s
		mov	edx, [edi]
		cmp	byte ptr [eax+edx], 5
		jnz	loc_4626F5

loc_462505:				; CODE XREF: .text:004624E4j
					; .text:004624F2j
		mov	ecx, [ebp-44h]
		cmp	ecx, _size
		jnb	loc_4626F5
		mov	eax, dword_5E5D70
		mov	edx, [ebp-44h]
		cmp	byte ptr [eax+edx], 0
		jz	loc_4626F5
		mov	ecx, s
		mov	eax, [ebp-44h]
		cmp	byte ptr [ecx+eax], 0
		jz	short loc_462548
		mov	edx, s
		mov	ecx, [ebp-44h]
		cmp	byte ptr [edx+ecx], 1Ch
		jnz	loc_4626F5

loc_462548:				; CODE XREF: .text:00462533j
		push	4
		mov	eax, [edi]
		push	eax
		push	5
		call	loc_45C740
		add	esp, 0Ch
		mov	edx, [ebp-0Ch]	; int
		cmp	edx, dword_5E5D8C
		jl	short loc_462582
		push	1		; flags
		lea	ecx, [ebp-20h]	; int
		push	ecx		; failed
		push	4		; itemsize
		push	offset dword_5E5D8C ; pcount
		mov	eax, dword_5E5D88 ; int
		push	eax		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5E5D88, eax

loc_462582:				; CODE XREF: .text:00462560j
		mov	edx, [ebp-0Ch]
		cmp	edx, dword_5E5D8C
		jge	short loc_46259F
		mov	ecx, dword_5E5D88
		mov	eax, [ebp-0Ch]
		mov	edx, [ebp-44h]
		mov	[ecx+eax*4], edx
		inc	dword ptr [ebp-0Ch]

loc_46259F:				; CODE XREF: .text:0046258Bj
		mov	eax, [ebp-44h]
		mov	ecx, dword_5E5D74
		or	word ptr [ecx+eax*2], 402h
		push	6		; type
		mov	edx, addr0
		mov	ecx, addr0
		add	edx, [ebp-44h]	; int
		add	ecx, ebx	; int
		push	edx		; dest
		push	ecx		; from
		mov	eax, [ebp-84h]	; int
		push	eax		; pdat
		call	Addjump
		add	esp, 10h
		inc	dword ptr [ebp-4]
		mov	edx, [ebp-58h]
		sub	[edi], edx

loc_4625DA:				; CODE XREF: .text:004624A6j
		mov	ecx, [edi]
		cmp	ecx, _size
		jb	loc_4624AB
		jmp	loc_4626F5
; ---------------------------------------------------------------------------

loc_4625ED:				; CODE XREF: .text:0046248Dj
		mov	eax, addr0
		cmp	eax, [ebp-54h]
		ja	loc_4626F5
		mov	edx, [ebp-54h]
		cmp	edx, addr1
		jnb	loc_4626F5
		mov	ecx, [ebp-54h]
		sub	ecx, addr0
		mov	[edi], ecx
		xor	eax, eax
		mov	[ebp-8], eax
		jmp	short loc_46266E
; ---------------------------------------------------------------------------

loc_46261C:				; CODE XREF: .text:00462676j
		mov	edx, dword_5E5D74
		mov	ecx, [edi]
		test	byte ptr [edx+ecx*2], 4
		jnz	short loc_462678
		mov	eax, s
		mov	edx, [edi]
		cmp	byte ptr [eax+edx], 0
		jz	short loc_462645
		mov	ecx, s
		mov	eax, [edi]
		cmp	byte ptr [ecx+eax], 5
		jnz	short loc_462678

loc_462645:				; CODE XREF: .text:00462635j
		mov	edx, copy
		mov	ecx, [edi]
		xor	eax, eax
		mov	al, [edx+ecx]
		cmp	eax, [ebp-24h]
		jl	short loc_462678
		mov	edx, copy
		mov	ecx, [edi]
		xor	eax, eax
		mov	al, [edx+ecx]
		cmp	eax, [ebp-4]
		jge	short loc_462678
		inc	dword ptr [ebp-8]
		inc	dword ptr [edi]

loc_46266E:				; CODE XREF: .text:0046261Aj
		mov	edx, [edi]
		cmp	edx, _size
		jb	short loc_46261C

loc_462678:				; CODE XREF: .text:00462628j
					; .text:00462643j ...
		mov	ecx, [ebp-8]
		cmp	ecx, [ebp-4]
		jl	short loc_4626F5
		mov	eax, [ebp-8]
		mov	edx, s
		push	eax		; n
		push	5		; c
		add	edx, [ebp-54h]
		sub	edx, addr0
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		jmp	short loc_4626F5
; ---------------------------------------------------------------------------

loc_4626A0:				; CODE XREF: .text:00462259j
					; .text:00462269j
		cmp	dword ptr [ebp-68h], 0FFFFh
		jbe	short loc_4626D2
		cmp	dword ptr [ebp-68h], 80000000h
		jb	short loc_4626BB
		cmp	dword ptr [ebp-68h], 8000FFFFh
		jbe	short loc_4626D2

loc_4626BB:				; CODE XREF: .text:004626B0j
		cmp	dword ptr [ebp-68h], 0FFFF0000h
		jnb	short loc_4626D2
		mov	ecx, [ebp-68h]
		push	ecx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4626D7

loc_4626D2:				; CODE XREF: .text:004626A7j
					; .text:004626B9j ...
		xor	eax, eax
		mov	[ebp-68h], eax

loc_4626D7:				; CODE XREF: .text:004626D0j
		push	5		; type
		mov	ecx, addr0
		mov	edx, [ebp-68h]	; int
		add	ecx, ebx	; int
		push	edx		; dest
		push	ecx		; from
		mov	eax, [ebp-84h]	; int
		push	eax		; pdat
		call	Addjump
		add	esp, 10h

loc_4626F5:				; CODE XREF: .text:00462224j
					; .text:00462233j ...
		mov	edx, [ebp-0Ch]	; int
		cmp	edx, dword_5E5D8C
		jl	short loc_462720
		push	1		; flags
		lea	ecx, [ebp-20h]	; int
		push	ecx		; failed
		push	4		; itemsize
		push	offset dword_5E5D8C ; pcount
		mov	eax, dword_5E5D88 ; int
		push	eax		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5E5D88, eax

loc_462720:				; CODE XREF: .text:004626FEj
		mov	edx, [ebp-0Ch]
		cmp	edx, dword_5E5D8C
		jge	short loc_46273D
		mov	ecx, dword_5E5D88
		mov	eax, [ebp-0Ch]
		add	ebx, [ebp-50h]
		mov	[ecx+eax*4], ebx
		inc	dword ptr [ebp-0Ch]

loc_46273D:				; CODE XREF: .text:00462729j
		xor	edx, edx
		mov	[ebp-54h], edx
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_462747:				; CODE XREF: .text:00461F8Dj
		mov	ecx, addr0
		mov	edx, copy
		add	ecx, ebx
		push	ecx		; int
		mov	eax, [ebp-4Ch]
		sub	eax, ebx
		add	edx, ebx
		push	eax		; int
		push	edx		; src
		call	loc_461804
		add	esp, 0Ch
		mov	[ebp-68h], eax
		mov	ecx, addr0
		cmp	ecx, [ebp-68h]
		ja	short loc_4627E9
		mov	eax, [ebp-68h]
		cmp	eax, addr1
		jnb	short loc_4627E9
		mov	edx, [ebp-68h]
		mov	ecx, dword_5E5D74 ; int
		sub	edx, addr0
		or	word ptr [ecx+edx*2], 401h
		push	1		; type
		mov	eax, [ebp-68h]	; int
		add	ebx, addr0
		push	eax		; dest
		push	ebx		; from
		mov	edx, [ebp-84h]	; int
		push	edx		; pdat
		call	Addjump
		add	esp, 10h
		mov	ecx, [ebp-68h]
		cmp	ecx, [ebp+0Ch]
		jb	loc_462C40
		mov	eax, [ebp+0Ch]
		add	eax, [ebp+10h]
		cmp	eax, [ebp-68h]
		jbe	loc_462C40
		mov	edx, dword_5E5D88
		mov	ecx, [ebp-0Ch]
		mov	eax, [ebp-68h]
		sub	eax, addr0
		mov	[edx+ecx*4], eax
		inc	dword ptr [ebp-0Ch]
		jmp	loc_462C40
; ---------------------------------------------------------------------------

loc_4627E9:				; CODE XREF: .text:00462773j
					; .text:0046277Ej
		cmp	dword ptr [ebp-68h], 0
		jnz	loc_462BED
		mov	edx, dword_5E5D74 ; int
		test	byte ptr [edx+ebx*2+1],	8
		jz	loc_462BED
		mov	ecx, addr0
		push	1		; type
		add	ecx, ebx	; int
		push	0		; dest
		push	ecx		; from
		mov	eax, [ebp-84h]	; int
		push	eax		; pdat
		call	Addjump
		add	esp, 10h
		lea	edx, [ebp-1A58h]
		mov	ecx, addr0
		add	ecx, ebx
		push	0		; predict
		push	0		; reg
		push	0		; mode
		push	edx		; da
		push	0		; dec
		push	ecx		; ip
		mov	edx, copy
		mov	eax, [ebp-4Ch]
		sub	eax, ebx
		add	edx, ebx
		push	eax		; cmdsize
		push	edx		; cmd
		call	Disasm
		add	esp, 20h
		mov	ecx, addr0
		cmp	ecx, [ebp-1A14h]
		ja	loc_462C40
		mov	eax, [ebp-1A14h]
		cmp	eax, addr1
		jnb	loc_462C40
		xor	edx, edx
		mov	[ebp-24h], edx
		lea	edx, [ebp-19E8h]
		mov	ecx, [ebp-1A14h]
		sub	ecx, addr0
		xor	eax, eax
		mov	[edi], ecx
		mov	dword ptr [ebp-58h], 4
		mov	[ebp-4], eax
		mov	[ebp-88h], edx

loc_46289E:				; CODE XREF: .text:004628BFj
		mov	ecx, [ebp-88h]
		cmp	byte ptr [ecx],	8
		jnz	short loc_4628B2
		mov	dword ptr [ebp-58h], 8
		jmp	short loc_4628C1
; ---------------------------------------------------------------------------

loc_4628B2:				; CODE XREF: .text:004628A7j
		inc	dword ptr [ebp-4]
		inc	dword ptr [ebp-88h]
		cmp	dword ptr [ebp-4], 8
		jl	short loc_46289E

loc_4628C1:				; CODE XREF: .text:004628B0j
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	loc_4629E2
; ---------------------------------------------------------------------------

loc_4628CB:				; CODE XREF: .text:004629EDj
		mov	ecx, [edi]
		mov	edx, copy
		mov	eax, [edx+ecx]
		sub	eax, addr0
		cmp	dword_5E5D7C, 0
		mov	[ebp-44h], eax
		jz	short loc_4628FA
		mov	edx, dword_5E5D74
		mov	ecx, [edi]
		test	byte ptr [edx+ecx*2], 8
		jz	loc_4629CD

loc_4628FA:				; CODE XREF: .text:004628E6j
		mov	eax, s
		mov	edx, [edi]
		cmp	byte ptr [eax+edx], 0
		jz	short loc_462927
		mov	ecx, s
		mov	eax, [edi]
		cmp	byte ptr [ecx+eax], 4
		jz	short loc_462927
		mov	edx, s
		mov	ecx, [edi]
		cmp	byte ptr [edx+ecx], 5
		jnz	loc_4629CD

loc_462927:				; CODE XREF: .text:00462905j
					; .text:00462913j
		mov	eax, [ebp-44h]
		cmp	eax, _size
		jnb	loc_4629CD
		mov	edx, dword_5E5D70
		mov	ecx, [ebp-44h]
		cmp	byte ptr [edx+ecx], 0
		jz	loc_4629CD
		mov	eax, s
		mov	edx, [ebp-44h]
		cmp	byte ptr [eax+edx], 0
		jz	short loc_462966
		mov	ecx, s
		mov	eax, [ebp-44h]
		cmp	byte ptr [ecx+eax], 1Ch
		jnz	short loc_4629CD

loc_462966:				; CODE XREF: .text:00462955j
		push	4
		mov	edx, [edi]
		push	edx
		push	5
		call	loc_45C740
		add	esp, 0Ch
		mov	ecx, [ebp-0Ch]	; int
		cmp	ecx, dword_5E5D8C
		jl	short loc_4629A1
		push	1		; flags
		lea	eax, [ebp-20h]	; int
		push	eax		; failed
		push	4		; itemsize
		push	offset dword_5E5D8C ; pcount
		mov	edx, dword_5E5D88 ; int
		push	edx		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5E5D88, eax

loc_4629A1:				; CODE XREF: .text:0046297Ej
		mov	ecx, [ebp-0Ch]
		cmp	ecx, dword_5E5D8C
		jge	short loc_4629BD
		mov	eax, dword_5E5D88
		mov	edx, [ebp-0Ch]
		mov	ecx, [ebp-44h]
		mov	[eax+edx*4], ecx
		inc	dword ptr [ebp-0Ch]

loc_4629BD:				; CODE XREF: .text:004629AAj
		mov	eax, dword_5E5D74
		mov	edx, [ebp-44h]
		or	word ptr [eax+edx*2], 401h
		jmp	short loc_4629DA
; ---------------------------------------------------------------------------

loc_4629CD:				; CODE XREF: .text:004628F4j
					; .text:00462921j ...
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4629F3
		mov	dword ptr [ebp-24h], 1

loc_4629DA:				; CODE XREF: .text:004629CBj
		inc	dword ptr [ebp-4]
		mov	ecx, [ebp-58h]
		add	[edi], ecx

loc_4629E2:				; CODE XREF: .text:004628C6j
		mov	eax, [edi]
		add	eax, 4
		cmp	eax, _size
		jbe	loc_4628CB

loc_4629F3:				; CODE XREF: .text:004629D1j
		mov	edx, [ebp-24h]
		add	edx, 2
		cmp	edx, [ebp-4]
		jle	loc_462B39
		mov	ecx, [ebp-1A14h]
		sub	ecx, addr0
		mov	[edi], ecx
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	loc_462B26
; ---------------------------------------------------------------------------

loc_462A1A:				; CODE XREF: .text:00462B2Ej
		mov	ecx, [edi]
		mov	edx, copy
		mov	eax, [edx+ecx]
		sub	eax, addr0
		cmp	dword_5E5D7C, 0
		mov	[ebp-44h], eax
		jz	short loc_462A49
		mov	edx, dword_5E5D74
		mov	ecx, [edi]
		test	byte ptr [edx+ecx*2], 8
		jz	loc_462C40

loc_462A49:				; CODE XREF: .text:00462A35j
		mov	eax, s
		mov	edx, [edi]
		cmp	byte ptr [eax+edx], 0
		jz	short loc_462A76
		mov	ecx, s
		mov	eax, [edi]
		cmp	byte ptr [ecx+eax], 4
		jz	short loc_462A76
		mov	edx, s
		mov	ecx, [edi]
		cmp	byte ptr [edx+ecx], 5
		jnz	loc_462C40

loc_462A76:				; CODE XREF: .text:00462A54j
					; .text:00462A62j
		mov	eax, [ebp-44h]
		cmp	eax, _size
		jnb	loc_462C40
		mov	edx, dword_5E5D70
		mov	ecx, [ebp-44h]
		cmp	byte ptr [edx+ecx], 0
		jz	loc_462C40
		mov	eax, s
		mov	edx, [ebp-44h]
		cmp	byte ptr [eax+edx], 0
		jz	short loc_462AB9
		mov	ecx, s
		mov	eax, [ebp-44h]
		cmp	byte ptr [ecx+eax], 1Ch
		jnz	loc_462C40

loc_462AB9:				; CODE XREF: .text:00462AA4j
		push	4
		mov	edx, [edi]
		push	edx
		push	5
		call	loc_45C740
		add	esp, 0Ch
		mov	ecx, [ebp-0Ch]	; int
		cmp	ecx, dword_5E5D8C
		jl	short loc_462AF4
		push	1		; flags
		lea	eax, [ebp-20h]	; int
		push	eax		; failed
		push	4		; itemsize
		push	offset dword_5E5D8C ; pcount
		mov	edx, dword_5E5D88 ; int
		push	edx		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5E5D88, eax

loc_462AF4:				; CODE XREF: .text:00462AD1j
		mov	ecx, [ebp-0Ch]
		cmp	ecx, dword_5E5D8C
		jge	short loc_462B10
		mov	eax, dword_5E5D88
		mov	edx, [ebp-0Ch]
		mov	ecx, [ebp-44h]
		mov	[eax+edx*4], ecx
		inc	dword ptr [ebp-0Ch]

loc_462B10:				; CODE XREF: .text:00462AFDj
		mov	eax, dword_5E5D74
		mov	edx, [ebp-44h]
		or	word ptr [eax+edx*2], 401h
		inc	dword ptr [ebp-4]
		mov	ecx, [ebp-58h]
		sub	[edi], ecx

loc_462B26:				; CODE XREF: .text:00462A15j
		mov	eax, [edi]
		cmp	eax, _size
		jb	loc_462A1A
		jmp	loc_462C40
; ---------------------------------------------------------------------------

loc_462B39:				; CODE XREF: .text:004629FCj
		mov	edx, addr0
		cmp	edx, [ebp-54h]
		ja	loc_462C40
		mov	ecx, [ebp-54h]
		cmp	ecx, addr1
		jnb	loc_462C40
		mov	eax, [ebp-54h]
		sub	eax, addr0
		mov	[edi], eax
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	short loc_462BBB
; ---------------------------------------------------------------------------

loc_462B69:				; CODE XREF: .text:00462BC3j
		mov	ecx, dword_5E5D74
		mov	eax, [edi]
		test	byte ptr [ecx+eax*2], 4
		jnz	short loc_462BC5
		mov	edx, s
		mov	ecx, [edi]
		cmp	byte ptr [edx+ecx], 0
		jz	short loc_462B92
		mov	eax, s
		mov	edx, [edi]
		cmp	byte ptr [eax+edx], 5
		jnz	short loc_462BC5

loc_462B92:				; CODE XREF: .text:00462B83j
		mov	ecx, copy
		mov	eax, [edi]
		xor	edx, edx
		mov	dl, [ecx+eax]
		cmp	edx, [ebp-24h]
		jl	short loc_462BC5
		mov	ecx, copy
		mov	eax, [edi]
		xor	edx, edx
		mov	dl, [ecx+eax]
		cmp	edx, [ebp-4]
		jge	short loc_462BC5
		inc	dword ptr [ebp-8]
		inc	dword ptr [edi]

loc_462BBB:				; CODE XREF: .text:00462B67j
		mov	ecx, [edi]
		cmp	ecx, _size
		jb	short loc_462B69

loc_462BC5:				; CODE XREF: .text:00462B75j
					; .text:00462B90j ...
		mov	eax, [ebp-8]
		cmp	eax, [ebp-4]
		jl	short loc_462C40
		mov	edx, [ebp-8]
		mov	ecx, s
		push	edx		; n
		push	5		; c
		add	ecx, [ebp-54h]
		sub	ecx, addr0
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		jmp	short loc_462C40
; ---------------------------------------------------------------------------

loc_462BED:				; CODE XREF: .text:004627EDj
					; .text:004627FEj
		cmp	dword ptr [ebp-68h], 0FFFFh
		jbe	short loc_462C1F
		cmp	dword ptr [ebp-68h], 80000000h
		jb	short loc_462C08
		cmp	dword ptr [ebp-68h], 8000FFFFh
		jbe	short loc_462C1F

loc_462C08:				; CODE XREF: .text:00462BFDj
		cmp	dword ptr [ebp-68h], 0FFFF0000h
		jnb	short loc_462C1F
		mov	eax, [ebp-68h]
		push	eax		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_462C24

loc_462C1F:				; CODE XREF: .text:00462BF4j
					; .text:00462C06j ...
		xor	edx, edx	; int
		mov	[ebp-68h], edx

loc_462C24:				; CODE XREF: .text:00462C1Dj
		push	1		; type
		add	ebx, addr0
		mov	ecx, [ebp-68h]	; int
		push	ecx		; dest
		push	ebx		; from
		mov	eax, [ebp-84h]	; int
		push	eax		; pdat
		call	Addjump
		add	esp, 10h

loc_462C40:				; CODE XREF: .text:004627B7j
					; .text:004627C6j ...
		xor	edx, edx
		mov	[ebp-54h], edx
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_462C4A:				; CODE XREF: .text:00461F96j
		mov	ecx, addr0
		mov	edx, copy
		add	ecx, ebx
		push	ecx		; int
		mov	eax, [ebp-4Ch]
		sub	eax, ebx
		add	edx, ebx
		push	eax		; int
		push	edx		; src
		call	loc_461804
		add	esp, 0Ch
		mov	[edi], eax
		mov	eax, addr0
		add	eax, ebx	; int
		push	2		; type
		mov	ecx, [edi]	; int
		push	ecx		; dest
		push	eax		; from
		mov	edx, [ebp-84h]	; int
		push	edx		; pdat
		call	Addjump
		add	esp, 10h
		mov	ecx, addr0
		cmp	ecx, [edi]
		ja	short loc_462CD8
		mov	eax, [edi]
		cmp	eax, addr1
		jnb	short loc_462CD8
		mov	edx, [edi]
		sub	edx, addr0
		mov	ecx, dword_5E5D74
		or	word ptr [ecx+edx*2], 401h
		mov	eax, [edi]
		cmp	eax, [ebp+0Ch]
		jb	short loc_462CD8
		mov	edx, [ebp+0Ch]
		add	edx, [ebp+10h]
		cmp	edx, [edi]
		jbe	short loc_462CD8
		mov	ecx, dword_5E5D88
		mov	eax, [ebp-0Ch]
		mov	edx, [edi]
		sub	edx, addr0
		mov	[ecx+eax*4], edx
		inc	dword ptr [ebp-0Ch]

loc_462CD8:				; CODE XREF: .text:00462C90j
					; .text:00462C9Aj ...
		mov	ecx, [ebp-0Ch]	; int
		cmp	ecx, dword_5E5D8C
		jl	short loc_462D04
		push	1		; flags
		lea	eax, [ebp-20h]	; int
		push	eax		; failed
		push	4		; itemsize
		push	offset dword_5E5D8C ; pcount
		mov	edx, dword_5E5D88 ; int
		push	edx		; data
		call	Memdouble
		add	esp, 14h
		mov	dword_5E5D88, eax

loc_462D04:				; CODE XREF: .text:00462CE1j
		mov	ecx, [ebp-0Ch]
		cmp	ecx, dword_5E5D8C
		jge	short loc_462D25
		mov	eax, dword_5E5D88
		mov	edx, [ebp-0Ch]
		add	ebx, [ebp-50h]
		mov	[eax+edx*4], ebx
		inc	dword ptr [ebp-0Ch]
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_462D25:				; CODE XREF: .text:00462D0Dj
		xor	ecx, ecx
		mov	[ebp-54h], ecx
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_462D2F:				; CODE XREF: .text:00461F9Fj
		xor	eax, eax
		mov	[ebp-54h], eax
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_462D39:				; CODE XREF: .text:00461FA5j
		mov	edx, dword_5E5D74
		test	byte ptr [edx+ebx*2+1],	8
		jz	short loc_462D8B
		push	0		; predict
		push	0		; reg
		lea	ecx, [ebp-1A58h]
		push	0		; mode
		push	ecx		; da
		mov	eax, addr0
		add	eax, ebx
		push	0		; dec
		push	eax		; ip
		mov	ecx, copy
		mov	edx, [ebp-4Ch]
		sub	edx, ebx
		add	ecx, ebx
		push	edx		; cmdsize
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		mov	eax, [ebp-1A44h]
		and	eax, 1Fh
		cmp	eax, 1
		jnz	short loc_462D8B
		mov	edx, [ebp-1A14h]
		mov	[ebp-54h], edx

loc_462D8B:				; CODE XREF: .text:00462D44j
					; .text:00462D80j
		mov	ecx, dword_5E5D88
		mov	eax, [ebp-0Ch]
		add	ebx, [ebp-50h]
		mov	[ecx+eax*4], ebx
		inc	dword ptr [ebp-0Ch]
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_462DA2:				; CODE XREF: .text:00461CE6j
		mov	edx, s
		cmp	byte ptr [edx+esi], 0
		jz	short loc_462DCC
		inc	esi
		jmp	short loc_462DB2
; ---------------------------------------------------------------------------

loc_462DB1:				; CODE XREF: .text:00462DC5j
		inc	esi

loc_462DB2:				; CODE XREF: .text:00462DAFj
		cmp	esi, [ebp-4Ch]
		jnb	loc_4641AC
		mov	ecx, s
		cmp	byte ptr [ecx+esi], 0
		jnz	short loc_462DB1
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_462DCC:				; CODE XREF: .text:00462DACj
		mov	eax, [ebp-48h]
		add	eax, 1000h
		cmp	esi, eax
		jbe	short loc_462E0A
		mov	edx, [ebp+10h]
		push	edx		; nDenominator
		push	3E8h		; nNumerator
		mov	ecx, [ebp+0Ch]
		sub	ecx, addr0
		mov	eax, esi
		sub	eax, ecx
		push	eax		; nNumber
		call	MulDiv
		push	eax		; int
		call	loc_45C684
		pop	ecx
		test	eax, eax
		jz	short loc_462E07
		or	eax, 0FFFFFFFFh
		jmp	loc_464226
; ---------------------------------------------------------------------------

loc_462E07:				; CODE XREF: .text:00462DFDj
		mov	[ebp-48h], esi

loc_462E0A:				; CODE XREF: .text:00462DD6j
		mov	ecx, dword_5E5D74
		xor	edx, edx
		mov	[ebp-54h], edx
		test	byte ptr [ecx+esi*2], 8
		jz	short loc_462E30
		push	4
		push	esi
		push	4
		call	loc_45C740
		add	esp, 0Ch
		add	esi, 4
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_462E30:				; CODE XREF: .text:00462E19j
		mov	eax, dword_5E5D74
		test	byte ptr [eax+esi*2], 4
		jz	short loc_462E7E
		cmp	dword_5BDD18, 0
		jz	short loc_462E63
		push	offset aFixupSplitBetw ; "  Fixup split	between	items"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		mov	edx, addr0
		add	edx, esi
		push	edx		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_462E63:				; CODE XREF: .text:00462E42j
		inc	esi
		jmp	short loc_462E67
; ---------------------------------------------------------------------------

loc_462E66:				; CODE XREF: .text:00462E77j
		inc	esi

loc_462E67:				; CODE XREF: .text:00462E64j
		mov	ecx, dword_5E5D74
		movzx	eax, word ptr [ecx+esi*2]
		and	eax, 0Ch
		cmp	eax, 4
		jz	short loc_462E66
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_462E7E:				; CODE XREF: .text:00462E39j
		xor	edx, edx
		mov	ebx, offset dword_539F08
		mov	[ebp-4], edx

loc_462E88:				; CODE XREF: .text:00462EDCj
		mov	eax, [ebx]
		add	eax, esi
		cmp	eax, _size
		ja	short loc_462ED2
		mov	edx, [ebx]
		mov	eax, copy
		push	edx		; n
		add	eax, esi
		mov	ecx, [ebx+4]
		push	ecx		; s2
		push	eax		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_462ED2
		xor	edx, edx
		mov	[edi], edx
		jmp	short loc_462EC6
; ---------------------------------------------------------------------------

loc_462EB5:				; CODE XREF: .text:00462ECAj
		mov	ecx, [edi]
		add	ecx, esi
		mov	eax, dword_5E5D74
		test	byte ptr [eax+ecx*2], 87h
		jnz	short loc_462ECC
		inc	dword ptr [edi]

loc_462EC6:				; CODE XREF: .text:00462EB3j
		mov	edx, [ebx]
		cmp	edx, [edi]
		ja	short loc_462EB5

loc_462ECC:				; CODE XREF: .text:00462EC2j
		mov	ecx, [ebx]
		cmp	ecx, [edi]
		jbe	short loc_462EDE

loc_462ED2:				; CODE XREF: .text:00462E92j
					; .text:00462EADj
		inc	dword ptr [ebp-4]
		add	ebx, 0Ch
		cmp	dword ptr [ebp-4], 2
		jl	short loc_462E88

loc_462EDE:				; CODE XREF: .text:00462ED0j
		cmp	dword ptr [ebp-4], 2
		jge	short loc_462F25
		mov	eax, [ebx]
		push	eax
		push	esi
		push	9
		call	loc_45C740
		add	esp, 0Ch
		cmp	dword ptr [ebx+8], 0
		jz	short loc_462F1E
		mov	edx, [ebx+8]
		cmp	word ptr [edx],	0
		jz	short loc_462F1E
		mov	ecx, [ebx+8]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; s
		push	31h		; type
		mov	eax, addr0
		add	eax, esi
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_462F1E:				; CODE XREF: .text:00462EF6j
					; .text:00462EFFj
		add	esi, [ebx]
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_462F25:				; CODE XREF: .text:00462EE2j
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-74h], edx
		mov	[ebp-3Ch], ecx
		mov	ebx, esi
		jmp	short loc_462F4A
; ---------------------------------------------------------------------------

loc_462F33:				; CODE XREF: .text:00462F53j
		mov	eax, copy
		mov	dx, [eax+ebx]
		push	edx		; a1
		call	IstextW
		pop	ecx
		test	eax, eax
		jz	short loc_462F55
		add	ebx, 2

loc_462F4A:				; CODE XREF: .text:00462F31j
		lea	ecx, [ebx+2]
		cmp	ecx, _size
		jbe	short loc_462F33

loc_462F55:				; CODE XREF: .text:00462F45j
		lea	eax, [esi+6]
		cmp	ebx, eax
		jb	short loc_462F74
		lea	edx, [ebx+2]
		cmp	edx, _size
		ja	short loc_462F74
		mov	ecx, copy
		cmp	word ptr [ecx+ebx], 0
		jz	short loc_462FEB

loc_462F74:				; CODE XREF: .text:00462F5Aj
					; .text:00462F65j
		cmp	dword_57DD38, 0
		jz	short loc_462FEB
		cmp	_imp__IsTextUnicode, 0
		jz	short loc_462FEB
		mov	ebx, esi
		jmp	short loc_462FAB
; ---------------------------------------------------------------------------

loc_462F8A:				; CODE XREF: .text:00462FB4j
		mov	eax, copy
		mov	ax, [eax+ebx]
		test	ax, ax
		jz	short loc_462FB6
		cmp	ax, 0FFFEh
		jz	short loc_462FA4
		cmp	ax, 0FFFFh
		jnz	short loc_462FA8

loc_462FA4:				; CODE XREF: .text:00462F9Cj
		mov	ebx, esi
		jmp	short loc_462FB6
; ---------------------------------------------------------------------------

loc_462FA8:				; CODE XREF: .text:00462FA2j
		add	ebx, 2

loc_462FAB:				; CODE XREF: .text:00462F88j
		lea	eax, [ebx+2]
		cmp	eax, _size
		jbe	short loc_462F8A

loc_462FB6:				; CODE XREF: .text:00462F96j
					; .text:00462FA6j
		mov	dword ptr [ebp-8], 0Fh
		lea	edx, [esi+6]
		cmp	ebx, edx
		jb	short loc_462FE0
		lea	ecx, [ebp-8]
		mov	eax, ebx
		sub	eax, esi
		push	ecx		; _DWORD
		mov	edx, copy
		push	eax		; _DWORD
		add	edx, esi
		push	edx		; _DWORD
		call	_imp__IsTextUnicode
		test	eax, eax
		jnz	short loc_462FE4

loc_462FE0:				; CODE XREF: .text:00462FC2j
		mov	ebx, esi
		jmp	short loc_462FEB
; ---------------------------------------------------------------------------

loc_462FE4:				; CODE XREF: .text:00462FDEj
		mov	dword ptr [ebp-3Ch], 1

loc_462FEB:				; CODE XREF: .text:00462F72j
					; .text:00462F7Bj ...
		lea	eax, [esi+6]
		cmp	ebx, eax
		jb	short loc_463070
		lea	edx, [ebx+2]
		cmp	edx, _size
		ja	short loc_463070
		mov	ecx, copy
		cmp	word ptr [ecx+ebx], 0
		jnz	short loc_463070
		add	ebx, 2
		mov	[edi], esi
		cmp	ebx, [edi]
		jbe	short loc_463034

loc_463013:				; CODE XREF: .text:00463032j
		mov	eax, s
		mov	edx, [edi]
		cmp	byte ptr [eax+edx], 0
		jnz	short loc_463034
		mov	ecx, dword_5E5D74
		mov	eax, [edi]
		test	byte ptr [ecx+eax*2], 4
		jnz	short loc_463034
		inc	dword ptr [edi]
		cmp	ebx, [edi]
		ja	short loc_463013

loc_463034:				; CODE XREF: .text:00463011j
					; .text:0046301Ej ...
		cmp	ebx, [edi]
		ja	short loc_463070
		cmp	dword ptr [ebp-3Ch], 0
		jnz	short loc_46306B
		test	esi, 1
		mov	edx, 5
		jz	short loc_46304C
		inc	edx

loc_46304C:				; CODE XREF: .text:00463049j
		add	edx, edx
		add	edx, esi
		cmp	ebx, edx
		jb	short loc_46306B
		mov	ecx, ebx
		sub	ecx, esi
		push	ecx
		push	esi
		push	0Bh
		call	loc_45C740
		add	esp, 0Ch
		mov	esi, ebx
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_46306B:				; CODE XREF: .text:0046303Cj
					; .text:00463052j
		sub	ebx, esi
		mov	[ebp-74h], ebx

loc_463070:				; CODE XREF: .text:00462FF0j
					; .text:00462FFBj ...
		lea	eax, [esi+8]
		cmp	eax, _size
		ja	loc_4631C0
		mov	edx, copy
		cmp	word ptr [edx+esi], 0
		jbe	loc_4631C0
		mov	ecx, copy
		test	byte ptr [ecx+esi], 1
		jnz	loc_4631C0
		mov	eax, copy
		mov	ecx, copy
		movzx	edx, word ptr [eax+esi]
		movzx	eax, word ptr [ecx+esi+2]
		add	edx, 2
		cmp	edx, eax
		jnz	loc_4631C0
		mov	edx, copy
		mov	ecx, [edx+esi+4]
		cmp	ecx, addr0
		jb	loc_4631C0
		mov	eax, copy
		mov	ecx, copy
		mov	edx, [eax+esi+4]
		movzx	eax, word ptr [ecx+esi+2]
		add	edx, eax
		cmp	edx, addr1
		ja	loc_4631C0
		mov	edx, copy
		mov	ebx, [edx+esi+4]
		sub	ebx, addr0
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_463142
; ---------------------------------------------------------------------------

loc_46310E:				; CODE XREF: .text:0046314Fj
		mov	edx, [ebp-4]
		add	edx, ebx
		add	edx, 2
		cmp	edx, _size
		ja	short loc_463151
		mov	ecx, copy
		lea	eax, [ecx+ebx]
		mov	edx, [ebp-4]
		mov	cx, [eax+edx]
		push	ecx		; a1
		call	IstextW
		pop	ecx
		test	eax, eax
		jz	short loc_463151
		mov	eax, [ebp-4]
		add	eax, 2
		mov	[ebp-4], eax

loc_463142:				; CODE XREF: .text:0046310Cj
		mov	edx, copy
		movzx	ecx, word ptr [edx+esi]
		cmp	ecx, [ebp-4]
		jg	short loc_46310E

loc_463151:				; CODE XREF: .text:0046311Cj
					; .text:00463137j
		mov	eax, copy
		movzx	edx, word ptr [eax+esi]
		cmp	edx, [ebp-4]
		jnz	short loc_4631C0
		mov	ecx, [ebp-4]
		add	ecx, ebx
		add	ecx, 2
		cmp	ecx, _size
		ja	short loc_4631C0
		mov	eax, copy
		lea	edx, [eax+ebx]
		mov	ecx, [ebp-4]
		cmp	word ptr [edx+ecx], 0
		jnz	short loc_4631C0
		push	2
		push	esi
		push	6
		call	loc_45C740
		add	esp, 0Ch
		lea	eax, [esi+2]
		push	2
		push	eax
		push	6
		call	loc_45C740
		add	esp, 0Ch
		lea	edx, [esi+4]
		push	4
		push	edx
		push	4
		call	loc_45C740
		add	esp, 0Ch
		mov	ecx, [ebp-4]
		add	ecx, 2
		push	ecx
		push	ebx
		push	0Bh
		call	loc_45C740
		add	esp, 0Ch

loc_4631C0:				; CODE XREF: .text:00463079j
					; .text:0046308Aj ...
		lea	eax, [esi+8]
		cmp	eax, _size
		ja	loc_4632F0
		mov	edx, copy
		cmp	word ptr [edx+esi], 0
		jbe	loc_4632F0
		mov	ecx, copy
		mov	edx, copy
		movzx	eax, word ptr [ecx+esi]
		movzx	ecx, word ptr [edx+esi+2]
		inc	eax
		cmp	eax, ecx
		jnz	loc_4632F0
		mov	eax, copy
		mov	edx, [eax+esi+4]
		cmp	edx, addr0
		jb	loc_4632F0
		mov	ecx, copy
		mov	edx, copy
		mov	eax, [ecx+esi+4]
		movzx	ecx, word ptr [edx+esi+2]
		add	eax, ecx
		cmp	eax, addr1
		ja	loc_4632F0
		mov	eax, copy
		mov	ebx, [eax+esi+4]
		sub	ebx, addr0
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_463277
; ---------------------------------------------------------------------------

loc_46324C:				; CODE XREF: .text:00463283j
		mov	edx, [ebp-4]
		add	edx, ebx
		inc	edx
		cmp	edx, _size
		ja	short loc_463285
		mov	ecx, copy
		lea	eax, [ecx+ebx]
		mov	edx, [ebp-4]
		mov	cl, [eax+edx]
		push	ecx		; a1
		call	IstextA
		pop	ecx
		test	eax, eax
		jz	short loc_463285
		inc	dword ptr [ebp-4]

loc_463277:				; CODE XREF: .text:0046324Aj
		mov	eax, copy
		movzx	edx, word ptr [eax+esi]
		cmp	edx, [ebp-4]
		jg	short loc_46324C

loc_463285:				; CODE XREF: .text:00463258j
					; .text:00463272j
		mov	ecx, copy
		movzx	eax, word ptr [ecx+esi]
		cmp	eax, [ebp-4]
		jnz	short loc_4632F0
		mov	edx, [ebp-4]
		add	edx, ebx
		cmp	edx, _size
		jnb	short loc_4632F0
		mov	ecx, copy
		lea	eax, [ecx+ebx]
		mov	edx, [ebp-4]
		cmp	byte ptr [eax+edx], 0
		jnz	short loc_4632F0
		push	2
		push	esi
		push	6
		call	loc_45C740
		add	esp, 0Ch
		lea	ecx, [esi+2]
		push	2
		push	ecx
		push	6
		call	loc_45C740
		add	esp, 0Ch
		lea	eax, [esi+4]
		push	4
		push	eax
		push	4
		call	loc_45C740
		add	esp, 0Ch
		mov	edx, [ebp-4]
		inc	edx
		push	edx
		push	ebx
		push	9
		call	loc_45C740
		add	esp, 0Ch

loc_4632F0:				; CODE XREF: .text:004631C9j
					; .text:004631DAj ...
		cmp	dword_5E5D7C, 0
		jnz	loc_463391
		lea	ecx, [esi+8]
		cmp	ecx, _size
		ja	loc_463391
		mov	eax, s
		cmp	dword ptr [eax+esi], 0
		jnz	short loc_463391
		mov	edx, copy
		mov	ecx, [edx+esi]
		sub	ecx, addr0
		cmp	ecx, _size
		jnb	short loc_463391
		mov	eax, copy
		mov	edx, [eax+esi+4]
		sub	edx, addr0
		cmp	edx, _size
		jnb	short loc_463391
		jmp	short loc_463357
; ---------------------------------------------------------------------------

loc_463347:				; CODE XREF: .text:0046338Aj
		push	4
		push	esi
		push	4
		call	loc_45C740
		add	esp, 0Ch
		add	esi, 4

loc_463357:				; CODE XREF: .text:00463345j
		lea	ecx, [esi+4]
		cmp	ecx, _size
		ja	loc_4641AC
		mov	eax, s
		cmp	dword ptr [eax+esi], 0
		jnz	loc_4641AC
		mov	edx, copy
		mov	ecx, [edx+esi]
		sub	ecx, addr0
		cmp	ecx, _size
		jb	short loc_463347
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_463391:				; CODE XREF: .text:004632F7j
					; .text:00463306j ...
		mov	eax, dword_5E5D74
		test	byte ptr [eax+esi*2], 80h
		jnz	short loc_4633FD
		push	10h
		mov	edx, _size
		push	edx
		mov	ecx, copy
		push	ecx
		push	esi
		call	loc_45CC50
		add	esp, 10h
		mov	[edi], eax
		cmp	dword ptr [edi], 0
		jbe	short loc_4633FD
		mov	ebx, esi
		jmp	short loc_4633D8
; ---------------------------------------------------------------------------

loc_4633C0:				; CODE XREF: .text:004633DEj
		mov	eax, s
		cmp	byte ptr [eax+ebx], 0
		jnz	short loc_4633E0
		mov	edx, dword_5E5D74
		test	byte ptr [edx+ebx*2], 4
		jnz	short loc_4633E0
		inc	ebx

loc_4633D8:				; CODE XREF: .text:004633BEj
		mov	ecx, [edi]
		add	ecx, esi
		cmp	ebx, ecx
		jb	short loc_4633C0

loc_4633E0:				; CODE XREF: .text:004633C9j
					; .text:004633D5j
		mov	eax, [edi]
		add	eax, esi
		cmp	ebx, eax
		jb	short loc_4633FD
		mov	edx, [edi]
		push	edx
		push	esi
		push	1Fh
		call	loc_45C740
		add	esp, 0Ch
		add	esi, [edi]
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_4633FD:				; CODE XREF: .text:0046339Aj
					; .text:004633BAj ...
		cmp	dword ptr [ebp-34h], 0
		jz	loc_4634F3
		test	esi, 3
		jnz	loc_4634F3
		lea	ecx, [esi+8]
		cmp	ecx, _size
		jnb	loc_4634F3
		mov	eax, copy
		cmp	dword ptr [eax+esi], 0FFFFFFFFh
		jnz	loc_4634F3
		mov	edx, copy
		mov	ecx, [edx+esi+4]
		mov	[ebp-44h], ecx
		cmp	dword ptr [ebp-44h], 0
		jbe	loc_4634F3
		cmp	dword ptr [ebp-44h], 400h
		jnb	loc_4634F3
		mov	eax, [ebp-44h]
		add	eax, esi
		add	eax, 8
		cmp	eax, _size
		ja	loc_4634F3
		mov	ebx, esi
		jmp	short loc_46349F
; ---------------------------------------------------------------------------

loc_46346D:				; CODE XREF: .text:004634A9j
		mov	eax, s
		cmp	byte ptr [eax+ebx], 0
		jnz	short loc_4634AB
		mov	edx, dword_5E5D74
		test	byte ptr [edx+ebx*2], 4
		jnz	short loc_4634AB
		lea	ecx, [esi+8]
		cmp	ebx, ecx
		jb	short loc_46349E
		mov	eax, copy
		mov	dl, [eax+ebx]
		push	edx		; a1
		call	IstextA
		pop	ecx
		test	eax, eax
		jz	short loc_4634AB

loc_46349E:				; CODE XREF: .text:00463489j
		inc	ebx

loc_46349F:				; CODE XREF: .text:0046346Bj
		mov	ecx, [ebp-44h]
		add	ecx, esi
		add	ecx, 8
		cmp	ebx, ecx
		jb	short loc_46346D

loc_4634AB:				; CODE XREF: .text:00463476j
					; .text:00463482j ...
		mov	eax, [ebp-44h]
		add	eax, esi
		add	eax, 8
		cmp	ebx, eax
		jb	short loc_4634F3
		push	4
		push	esi
		push	6
		call	loc_45C740
		add	esp, 0Ch
		lea	edx, [esi+4]
		push	4
		push	edx
		push	6
		call	loc_45C740
		add	esp, 0Ch
		mov	ecx, [ebp-44h]
		push	ecx
		lea	eax, [esi+8]
		push	eax
		push	9
		call	loc_45C740
		add	esp, 0Ch
		mov	edx, [ebp-44h]
		add	edx, 8
		add	esi, edx
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_4634F3:				; CODE XREF: .text:00463401j
					; .text:0046340Dj ...
		xor	ecx, ecx
		mov	eax, copy
		mov	[ebp-70h], ecx
		mov	[ebp-6Ch], ecx
		mov	dl, [eax+esi]
		push	edx		; a1
		call	IstextA
		pop	ecx
		mov	[ebp-2Ch], eax
		cmp	dword ptr [ebp-2Ch], 2
		mov	eax, 1
		jz	short loc_463519
		dec	eax

loc_463519:				; CODE XREF: .text:00463516j
		mov	[ebp-30h], eax
		mov	dword ptr [edi], 1
		jmp	short loc_463559
; ---------------------------------------------------------------------------

loc_463524:				; CODE XREF: .text:00463563j
		mov	edx, dword_5E5D74
		test	byte ptr [edx+ebx*2], 84h
		jnz	short loc_463565
		mov	ecx, s
		cmp	byte ptr [ecx+ebx], 1Ch
		jz	short loc_463565
		mov	eax, copy
		mov	dl, [eax+ebx]
		push	edx		; a1
		call	IstextA
		pop	ecx
		test	eax, eax
		jz	short loc_463565
		cmp	eax, 2
		jnz	short loc_463557
		inc	dword ptr [ebp-30h]

loc_463557:				; CODE XREF: .text:00463552j
		inc	dword ptr [edi]

loc_463559:				; CODE XREF: .text:00463522j
		mov	ebx, [edi]
		add	ebx, esi
		cmp	ebx, _size
		jb	short loc_463524

loc_463565:				; CODE XREF: .text:0046352Ej
					; .text:0046353Aj ...
		cmp	dword ptr [edi], 0
		jbe	short loc_463598
		mov	eax, [edi]
		add	eax, esi
		cmp	eax, _size
		jnb	short loc_463596
		mov	edx, [edi]
		add	edx, esi
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+edx*2], 84h
		jnz	short loc_463596
		mov	eax, [edi]
		add	eax, esi
		mov	edx, s
		cmp	byte ptr [edx+eax], 1Ch
		jnz	short loc_463598

loc_463596:				; CODE XREF: .text:00463574j
					; .text:00463584j
		dec	dword ptr [edi]

loc_463598:				; CODE XREF: .text:00463568j
					; .text:00463594j
		cmp	dword ptr [edi], 3
		jb	loc_4636CE
		xor	ebx, ebx
		mov	ecx, copy
		cmp	dword ptr [ebp-2Ch], 0
		mov	bl, [ecx+esi]
		jz	loc_46364E
		cmp	dword ptr [edi], 4
		jnb	short loc_4635C5
		cmp	dword ptr [ebp-30h], 0
		jnz	loc_46364E

loc_4635C5:				; CODE XREF: .text:004635B9j
		mov	eax, [edi]
		add	eax, esi
		mov	edx, copy
		cmp	byte ptr [edx+eax], 0
		jnz	short loc_46364E
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_463625
		cmp	ebx, 20h
		jnb	short loc_463625
		cmp	ebx, [edi]
		jnb	short loc_463625
		mov	ecx, copy
		xor	eax, eax
		mov	al, [ecx+esi+1]
		cmp	eax, [edi]
		jb	short loc_463625
		cmp	ebx, 5
		jb	short loc_46361D
		push	1
		push	esi
		push	6
		call	loc_45C740
		add	esp, 0Ch
		lea	edx, [esi+1]
		push	ebx
		push	edx
		push	9
		call	loc_45C740
		add	esp, 0Ch
		inc	ebx
		add	esi, ebx
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_46361D:				; CODE XREF: .text:004635F7j
		mov	[ebp-6Ch], ebx
		jmp	loc_4636CE
; ---------------------------------------------------------------------------

loc_463625:				; CODE XREF: .text:004635D9j
					; .text:004635DEj ...
		cmp	dword ptr [edi], 5
		jb	short loc_463643
		mov	eax, [edi]
		inc	eax
		push	eax
		push	esi
		push	9
		call	loc_45C740
		add	esp, 0Ch
		mov	edx, [edi]
		inc	edx
		add	esi, edx
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_463643:				; CODE XREF: .text:00463628j
		mov	ecx, [edi]
		inc	ecx
		mov	[ebp-70h], ecx
		jmp	loc_4636CE
; ---------------------------------------------------------------------------

loc_46364E:				; CODE XREF: .text:004635B0j
					; .text:004635BFj ...
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_4636CE
		cmp	ebx, 3
		jb	short loc_4636CE
		cmp	ebx, [edi]
		ja	short loc_4636CE
		mov	eax, copy
		mov	dl, [eax+esi+1]
		push	edx
		call	IsrareA
		pop	ecx
		test	eax, eax
		jz	short loc_463681
		mov	ecx, copy
		xor	eax, eax
		mov	al, [ecx+esi+1]
		cmp	eax, [edi]
		jb	short loc_4636CE

loc_463681:				; CODE XREF: .text:0046366Fj
		cmp	ebx, 3
		ja	short loc_46368C
		cmp	dword ptr [ebp-30h], 0
		jnz	short loc_4636CE

loc_46368C:				; CODE XREF: .text:00463684j
		lea	edx, [ebx+1]
		cmp	edx, [edi]
		jnb	short loc_4636A2
		mov	ecx, [edi]
		add	ecx, esi
		mov	eax, copy
		cmp	byte ptr [eax+ecx], 0
		jz	short loc_4636CE

loc_4636A2:				; CODE XREF: .text:00463691j
		cmp	ebx, 5
		jb	short loc_4636CB
		push	1
		push	esi
		push	6
		call	loc_45C740
		add	esp, 0Ch
		lea	edx, [esi+1]
		push	ebx
		push	edx
		push	9
		call	loc_45C740
		add	esp, 0Ch
		inc	ebx
		add	esi, ebx
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_4636CB:				; CODE XREF: .text:004636A5j
		mov	[ebp-6Ch], ebx

loc_4636CE:				; CODE XREF: .text:0046359Bj
					; .text:00463620j ...
		mov	ebx, 1
		xor	eax, eax
		mov	[ebp-38h], eax
		xor	edx, edx
		mov	[edi], edx
		jmp	loc_4638C5
; ---------------------------------------------------------------------------

loc_4636E1:				; CODE XREF: .text:004638D3j
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+eax*2], 84h
		jz	short loc_4636F4
		xor	ebx, ebx
		jmp	loc_4638C3
; ---------------------------------------------------------------------------

loc_4636F4:				; CODE XREF: .text:004636EBj
		mov	edx, s
		cmp	byte ptr [edx+eax], 1Ch
		jnz	short loc_463707
		xor	ebx, ebx
		jmp	loc_4638C3
; ---------------------------------------------------------------------------

loc_463707:				; CODE XREF: .text:004636FEj
		mov	edx, copy
		cmp	byte ptr [edx+eax], 0
		jz	loc_4638D9
		mov	eax, [edi]
		add	eax, esi
		mov	ecx, copy
		test	byte ptr [ecx+eax], 80h
		jnz	short loc_46374A
		mov	eax, [edi]
		add	eax, esi
		mov	edx, copy
		mov	cl, [edx+eax]
		push	ecx		; a1
		call	IstextA
		pop	ecx
		test	eax, eax
		jnz	loc_4638C3
		xor	ebx, ebx
		jmp	loc_4638C3
; ---------------------------------------------------------------------------

loc_46374A:				; CODE XREF: .text:00463725j
		mov	eax, [edi]
		add	eax, esi
		mov	edx, copy
		xor	ecx, ecx
		mov	cl, [edx+eax]
		and	ecx, 0E0h
		cmp	ecx, 0C0h
		jnz	short loc_4637AA
		mov	eax, [edi]
		add	eax, esi
		inc	eax
		cmp	eax, _size
		jb	short loc_46377B
		xor	ebx, ebx
		jmp	loc_4638C3
; ---------------------------------------------------------------------------

loc_46377B:				; CODE XREF: .text:00463772j
		mov	eax, [edi]
		add	eax, esi
		mov	edx, copy
		xor	ecx, ecx
		mov	cl, [edx+eax+1]
		and	ecx, 0C0h
		cmp	ecx, 80h
		jz	short loc_4637A0
		xor	ebx, ebx
		jmp	loc_4638C3
; ---------------------------------------------------------------------------

loc_4637A0:				; CODE XREF: .text:00463797j
		inc	dword ptr [ebp-38h]
		inc	dword ptr [edi]
		jmp	loc_4638C3
; ---------------------------------------------------------------------------

loc_4637AA:				; CODE XREF: .text:00463765j
		mov	eax, [edi]
		add	eax, esi
		mov	edx, copy
		xor	ecx, ecx
		mov	cl, [edx+eax]
		and	ecx, 0F0h
		cmp	ecx, 0E0h
		jnz	short loc_46382B
		mov	eax, [edi]
		add	eax, esi
		add	eax, 2
		cmp	eax, _size
		jb	short loc_4637DD
		xor	ebx, ebx
		jmp	loc_4638C3
; ---------------------------------------------------------------------------

loc_4637DD:				; CODE XREF: .text:004637D4j
		mov	eax, [edi]
		add	eax, esi
		mov	edx, copy
		xor	ecx, ecx
		mov	cl, [edx+eax+1]
		and	ecx, 0C0h
		cmp	ecx, 80h
		jnz	short loc_463819
		mov	eax, [edi]
		add	eax, esi
		mov	edx, copy
		xor	ecx, ecx
		mov	cl, [edx+eax+2]
		and	ecx, 0C0h
		cmp	ecx, 80h
		jz	short loc_463820

loc_463819:				; CODE XREF: .text:004637F9j
		xor	ebx, ebx
		jmp	loc_4638C3
; ---------------------------------------------------------------------------

loc_463820:				; CODE XREF: .text:00463817j
		inc	dword ptr [ebp-38h]
		add	dword ptr [edi], 2
		jmp	loc_4638C3
; ---------------------------------------------------------------------------

loc_46382B:				; CODE XREF: .text:004637C5j
		mov	eax, [edi]
		add	eax, esi
		mov	edx, copy
		xor	ecx, ecx
		mov	cl, [edx+eax]
		and	ecx, 0F8h
		cmp	ecx, 0F0h
		jnz	short loc_4638C1
		mov	eax, [edi]
		add	eax, esi
		add	eax, 3
		cmp	eax, _size
		jb	short loc_46385B
		xor	ebx, ebx
		jmp	short loc_4638C3
; ---------------------------------------------------------------------------

loc_46385B:				; CODE XREF: .text:00463855j
		mov	eax, [edi]
		add	eax, esi
		mov	edx, copy
		xor	ecx, ecx
		mov	cl, [edx+eax+1]
		and	ecx, 0C0h
		cmp	ecx, 80h
		jnz	short loc_4638B5
		mov	eax, [edi]
		add	eax, esi
		mov	edx, copy
		xor	ecx, ecx
		mov	cl, [edx+eax+2]
		and	ecx, 0C0h
		cmp	ecx, 80h
		jnz	short loc_4638B5
		mov	eax, [edi]
		add	eax, esi
		mov	edx, copy
		xor	ecx, ecx
		mov	cl, [edx+eax+3]
		and	ecx, 0C0h
		cmp	ecx, 80h
		jz	short loc_4638B9

loc_4638B5:				; CODE XREF: .text:00463877j
					; .text:00463895j
		xor	ebx, ebx
		jmp	short loc_4638C3
; ---------------------------------------------------------------------------

loc_4638B9:				; CODE XREF: .text:004638B3j
		inc	dword ptr [ebp-38h]
		add	dword ptr [edi], 3
		jmp	short loc_4638C3
; ---------------------------------------------------------------------------

loc_4638C1:				; CODE XREF: .text:00463846j
		xor	ebx, ebx

loc_4638C3:				; CODE XREF: .text:004636EFj
					; .text:00463702j ...
		inc	dword ptr [edi]

loc_4638C5:				; CODE XREF: .text:004636DCj
		mov	eax, [edi]
		add	eax, esi
		cmp	eax, _size
		jnb	short loc_4638D9
		test	ebx, ebx
		jnz	loc_4636E1

loc_4638D9:				; CODE XREF: .text:00463711j
					; .text:004638CFj
		test	ebx, ebx
		jz	short loc_4638F8
		cmp	dword ptr [ebp-38h], 2
		jl	short loc_4638F8
		mov	edx, [edi]
		push	edx
		push	esi
		push	9
		call	loc_45C740
		add	esp, 0Ch
		add	esi, [edi]
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_4638F8:				; CODE XREF: .text:004638DBj
					; .text:004638E1j
		mov	ecx, copy
		cmp	byte ptr [ecx+esi], 0
		jnz	short loc_463958
		test	esi, 3
		jnz	short loc_463958
		cmp	dword_5E5D7C, 0
		jnz	short loc_463958
		lea	eax, [esi+4]
		cmp	eax, _size
		ja	short loc_463958
		mov	edx, s
		cmp	dword ptr [edx+esi], 0
		jnz	short loc_463958
		mov	ecx, copy
		mov	eax, [ecx+esi]
		sub	eax, addr0
		cmp	eax, _size
		jnb	short loc_463958
		push	4
		push	esi
		push	4
		call	loc_45C740
		add	esp, 0Ch
		add	esi, 4
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_463958:				; CODE XREF: .text:00463902j
					; .text:0046390Aj ...
		mov	edx, dword_5E5D70
		cmp	byte ptr [edx+esi], 0
		jz	loc_464027
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+esi*2+1],	3
		jnz	loc_464027
		mov	eax, copy
		cmp	byte ptr [eax+esi], 0
		jz	loc_464027
		xor	eax, eax
		xor	edx, edx
		mov	ebx, esi
		mov	[ebp-14h], eax
		test	bl, 0Fh
		mov	[ebp-28h], edx
		jnz	short loc_4639A0
		xor	ecx, ecx
		mov	[ebp-18h], ecx
		jmp	short loc_4639A7
; ---------------------------------------------------------------------------

loc_4639A0:				; CODE XREF: .text:00463997j
		mov	dword ptr [ebp-18h], 1

loc_4639A7:				; CODE XREF: .text:0046399Ej
		xor	eax, eax
		mov	[ebp-1Ch], eax
		xor	edx, edx
		mov	[ebp-10h], edx
		jmp	loc_463FE8
; ---------------------------------------------------------------------------

loc_4639B6:				; CODE XREF: .text:00463FF8j
		cmp	ebx, _size
		jb	short loc_4639CA
		mov	dword ptr [ebp-1Ch], 0FFFFFFFFh
		jmp	loc_463FFE
; ---------------------------------------------------------------------------

loc_4639CA:				; CODE XREF: .text:004639BCj
		cmp	dword ptr [ebp-28h], 0
		jnz	short loc_463A14
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+ebx*2], 2
		jz	short loc_463A14
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_463A14
		mov	eax, dword_5E5D74
		mov	dword ptr [ebp-1Ch], 0FFFFFFFFh
		test	byte ptr [eax+esi*2], 80h
		jz	short loc_4639F9
		xor	edx, edx
		mov	[ebp-1Ch], edx

loc_4639F9:				; CODE XREF: .text:004639F2j
		cmp	dword ptr [ebp-10h], 20h
		jle	short loc_463A0A
		cmp	dword ptr [ebp-14h], 0
		jle	short loc_463A0A
		xor	ecx, ecx
		mov	[ebp-1Ch], ecx

loc_463A0A:				; CODE XREF: .text:004639FDj
					; .text:00463A03j
		cmp	dword ptr [ebp-1Ch], 0
		jnz	loc_463FFE

loc_463A14:				; CODE XREF: .text:004639CEj
					; .text:004639DAj ...
		mov	eax, s
		cmp	byte ptr [eax+ebx], 1Ch
		jnz	short loc_463A42
		cmp	dword ptr [ebp-14h], 0
		jz	loc_463FFE
		dec	dword ptr [ebp-14h]
		mov	edx, [ebp-14h]
		mov	ebx, [ebp+edx*4-188h]
		mov	dword ptr [ebp-28h], 1
		jmp	loc_463FE5
; ---------------------------------------------------------------------------

loc_463A42:				; CODE XREF: .text:00463A1Dj
		mov	eax, dword_5E5D70
		xor	edx, edx
		mov	dl, [eax+ebx]
		mov	[ebp-50h], edx
		cmp	dword ptr [ebp-50h], 0
		jz	short loc_463A62
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+ebx*2+1],	1
		jz	short loc_463A6E

loc_463A62:				; CODE XREF: .text:00463A53j
		mov	dword ptr [ebp-1Ch], 0FFFFFFFFh
		jmp	loc_463FFE
; ---------------------------------------------------------------------------

loc_463A6E:				; CODE XREF: .text:00463A60j
		lea	eax, [ebx+2]
		cmp	eax, _size
		ja	short loc_463A92
		mov	edx, copy
		cmp	word ptr [edx+ebx], 0
		jnz	short loc_463A92
		mov	dword ptr [ebp-1Ch], 0FFFFFFFFh
		jmp	loc_463FFE
; ---------------------------------------------------------------------------

loc_463A92:				; CODE XREF: .text:00463A77j
					; .text:00463A84j
		mov	dword ptr [edi], 1
		mov	ecx, [edi]
		cmp	ecx, [ebp-50h]
		jnb	short loc_463AB8

loc_463A9F:				; CODE XREF: .text:00463AB6j
		mov	eax, [edi]
		add	eax, ebx
		mov	edx, s
		cmp	byte ptr [edx+eax], 1Ch
		jz	short loc_463AB8
		inc	dword ptr [edi]
		mov	ecx, [edi]
		cmp	ecx, [ebp-50h]
		jb	short loc_463A9F

loc_463AB8:				; CODE XREF: .text:00463A9Dj
					; .text:00463AADj
		mov	eax, [edi]
		cmp	eax, [ebp-50h]
		jnb	short loc_463ACB
		mov	dword ptr [ebp-1Ch], 0FFFFFFFFh
		jmp	loc_463FFE
; ---------------------------------------------------------------------------

loc_463ACB:				; CODE XREF: .text:00463ABDj
		mov	dword ptr [edi], 1
		jmp	short loc_463B4B
; ---------------------------------------------------------------------------

loc_463AD3:				; CODE XREF: .text:00463B53j
		mov	eax, [edi]
		add	eax, ebx
		mov	edx, copy
		cmp	byte ptr [edx+eax], 55h
		jnz	short loc_463B49
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+eax*2], 4
		jnz	short loc_463B49
		mov	eax, [edi]
		add	eax, ebx
		mov	edx, dword_5E5D74
		test	byte ptr [edx+eax*2+2],	4
		jnz	short loc_463B49
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+eax*2+4],	4
		jnz	short loc_463B49
		mov	eax, [edi]
		add	eax, ebx
		mov	edx, copy
		cmp	byte ptr [edx+eax+1], 8Bh
		jnz	short loc_463B2B
		mov	ecx, copy
		cmp	byte ptr [ecx+eax+2], 0ECh
		jz	short loc_463B59

loc_463B2B:				; CODE XREF: .text:00463B1Cj
		mov	eax, [edi]
		add	eax, ebx
		mov	edx, copy
		cmp	byte ptr [edx+eax+1], 89h
		jnz	short loc_463B49
		mov	ecx, copy
		cmp	byte ptr [ecx+eax+2], 0E5h
		jz	short loc_463B59

loc_463B49:				; CODE XREF: .text:00463AE1j
					; .text:00463AEDj ...
		inc	dword ptr [edi]

loc_463B4B:				; CODE XREF: .text:00463AD1j
		mov	eax, [edi]
		add	eax, 3
		cmp	eax, [ebp-50h]
		jbe	loc_463AD3

loc_463B59:				; CODE XREF: .text:00463B29j
					; .text:00463B47j
		mov	edx, [edi]
		add	edx, 3
		cmp	edx, [ebp-50h]
		ja	short loc_463B6F
		mov	dword ptr [ebp-1Ch], 0FFFFFFFFh
		jmp	loc_463FFE
; ---------------------------------------------------------------------------

loc_463B6F:				; CODE XREF: .text:00463B61j
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+ebx*2+1],	2
		jz	short loc_463B7F
		inc	dword ptr [ebp-18h]

loc_463B7F:				; CODE XREF: .text:00463B7Aj
		mov	eax, dword_5E5D74
		movzx	edx, word ptr [eax+ebx*2]
		and	edx, 70h
		sub	edx, 20h
		jz	short loc_463BAC
		sub	edx, 10h
		jz	loc_463F41
		sub	edx, 10h
		jz	short loc_463BAC
		sub	edx, 30h
		jz	loc_463FBD
		jmp	loc_463FE2
; ---------------------------------------------------------------------------

loc_463BAC:				; CODE XREF: .text:00463B8Ej
					; .text:00463B9Cj
		mov	ecx, addr0
		mov	edx, copy
		add	ecx, ebx
		push	ecx		; int
		mov	eax, [ebp-4Ch]
		sub	eax, ebx
		add	edx, ebx
		push	eax		; int
		push	edx		; src
		call	loc_461804
		add	esp, 0Ch
		mov	[ebp-68h], eax
		cmp	dword ptr [ebp-68h], 0
		jnz	short loc_463BDD
		add	ebx, [ebp-50h]
		jmp	loc_463FE5
; ---------------------------------------------------------------------------

loc_463BDD:				; CODE XREF: .text:00463BD3j
		mov	ecx, addr0
		mov	eax, dword_5E5D74
		sub	[ebp-68h], ecx
		movzx	edx, word ptr [eax+ebx*2]
		and	edx, 70h
		cmp	edx, 20h
		jnz	short loc_463C5A
		mov	ecx, [ebp-68h]
		cmp	ecx, _size
		jnb	short loc_463C1C
		mov	eax, dword_5E5D74
		mov	edx, [ebp-68h]
		movzx	ecx, word ptr [eax+edx*2]
		and	ecx, 402h
		cmp	ecx, 402h
		jz	short loc_463C2F

loc_463C1C:				; CODE XREF: .text:00463C00j
		mov	eax, addr0
		add	eax, [ebp-68h]
		push	eax		; _addr
		call	Isnoreturn
		pop	ecx
		test	eax, eax
		jz	short loc_463C5A

loc_463C2F:				; CODE XREF: .text:00463C1Aj
		cmp	dword ptr [ebp-14h], 0
		jle	short loc_463C4E
		dec	dword ptr [ebp-14h]
		mov	edx, [ebp-14h]
		mov	ebx, [ebp+edx*4-188h]
		mov	dword ptr [ebp-28h], 1
		jmp	loc_463FE5
; ---------------------------------------------------------------------------

loc_463C4E:				; CODE XREF: .text:00463C33j
		mov	dword ptr [ebp-1Ch], 1
		jmp	loc_463FE5
; ---------------------------------------------------------------------------

loc_463C5A:				; CODE XREF: .text:00463BF5j
					; .text:00463C2Dj
		mov	eax, dword_5E5D74
		movzx	edx, word ptr [eax+ebx*2]
		and	edx, 70h
		cmp	edx, 20h
		jnz	loc_463DA2
		cmp	dword_5BDD20, 0
		jz	loc_463DA2
		mov	ecx, addr0
		add	ecx, [ebp-68h]
		add	ecx, 4
		cmp	ecx, addr1
		ja	loc_463DA2
		mov	eax, [ebp-50h]
		add	eax, ebx
		inc	eax
		cmp	eax, [ebp-68h]
		jnb	loc_463DA2
		mov	edx, [ebp-50h]
		add	edx, ebx
		add	edx, 100h
		cmp	edx, [ebp-68h]
		jb	loc_463DA2
		mov	ecx, copy
		mov	eax, [ebp-68h]
		cmp	byte ptr [ecx+eax-1], 0
		jnz	loc_463DA2
		mov	edx, copy
		mov	ecx, [ebp-68h]
		mov	eax, [edx+ecx]
		and	eax, 0FFFFFFh
		cmp	eax, 0EC8B55h
		jz	loc_463DA2
		mov	edx, copy
		mov	ecx, [ebp-68h]
		mov	eax, [edx+ecx]
		and	eax, 0FFFFFFh
		cmp	eax, 0E58955h
		jz	loc_463DA2
		mov	edx, copy
		mov	ecx, [ebp-68h]
		cmp	byte ptr [edx+ecx], 0C8h
		jz	loc_463DA2
		mov	eax, dword_5E5D70
		xor	edx, edx
		mov	dl, [eax+ebx]
		add	edx, ebx
		mov	[edi], edx
		jmp	short loc_463D83
; ---------------------------------------------------------------------------

loc_463D26:				; CODE XREF: .text:00463D89j
		mov	ecx, dword_5E5D74
		mov	eax, [edi]
		test	byte ptr [ecx+eax*2], 4
		jnz	short loc_463D8B
		mov	edx, copy
		mov	ecx, [edi]
		mov	al, [edx+ecx]
		push	eax		; a1
		call	IstextA
		pop	ecx
		test	eax, eax
		jz	short loc_463D8B
		mov	edx, copy
		mov	ecx, [edi]
		cmp	byte ptr [edx+ecx], 0C2h
		jz	short loc_463D8B
		mov	eax, copy
		mov	edx, [edi]
		cmp	byte ptr [eax+edx], 0C3h
		jz	short loc_463D8B
		mov	ecx, s
		mov	eax, [edi]
		cmp	byte ptr [ecx+eax], 1Ch
		jz	short loc_463D8B
		mov	edx, s
		mov	ecx, [edi]
		cmp	byte ptr [edx+ecx], 1
		jz	short loc_463D8B
		inc	dword ptr [edi]

loc_463D83:				; CODE XREF: .text:00463D24j
		mov	eax, [ebp-68h]
		dec	eax
		cmp	eax, [edi]
		ja	short loc_463D26

loc_463D8B:				; CODE XREF: .text:00463D32j
					; .text:00463D48j ...
		mov	edx, [ebp-68h]
		dec	edx
		cmp	edx, [edi]
		jnz	short loc_463DA2
		mov	ebx, [ebp-68h]
		mov	dword ptr [ebp-28h], 1
		jmp	loc_463FE5
; ---------------------------------------------------------------------------

loc_463DA2:				; CODE XREF: .text:00463C69j
					; .text:00463C76j ...
		mov	eax, [ebp-68h]
		cmp	eax, _size
		jnb	loc_463F39
		mov	edx, s
		mov	ecx, [ebp-68h]
		cmp	byte ptr [edx+ecx], 1
		jnz	short loc_463DCC
		mov	dword ptr [ebp-1Ch], 0FFFFFFFFh
		jmp	loc_463F39
; ---------------------------------------------------------------------------

loc_463DCC:				; CODE XREF: .text:00463DBEj
		mov	eax, dword_5E5D70
		mov	edx, [ebp-68h]
		cmp	byte ptr [eax+edx], 0
		jnz	loc_463EDE
		mov	ecx, dword_5E5D74
		mov	eax, [ebp-68h]
		test	byte ptr [ecx+eax*2+1],	40h
		jnz	loc_463ED5
		mov	edx, dword_5E5D74
		movzx	ecx, word ptr [edx+ebx*2]
		and	ecx, 70h
		cmp	ecx, 20h
		jnz	loc_463ED5
		mov	eax, [ebp-68h]
		mov	[edi], eax
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	loc_463EC3
; ---------------------------------------------------------------------------

loc_463E17:				; CODE XREF: .text:00463ECDj
		mov	ecx, _size
		cmp	ecx, [edi]
		ja	short loc_463E2D
		mov	dword ptr [ebp-1Ch], 0FFFFFFFFh
		jmp	loc_463F39
; ---------------------------------------------------------------------------

loc_463E2D:				; CODE XREF: .text:00463E1Fj
		push	0		; predict
		push	0		; reg
		push	0		; mode
		lea	eax, [ebp-1A58h]
		push	eax		; da
		push	0		; dec
		mov	edx, addr0
		add	edx, [edi]
		push	edx		; ip
		mov	ecx, _size
		sub	ecx, [edi]
		push	ecx		; cmdsize
		mov	eax, copy
		add	eax, [edi]
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		add	[edi], eax
		cmp	dword ptr [ebp-1A2Ch], 0
		jz	short loc_463E72
		mov	dword ptr [ebp-1Ch], 0FFFFFFFFh
		jmp	short loc_463EC0
; ---------------------------------------------------------------------------

loc_463E72:				; CODE XREF: .text:00463E67j
		mov	edx, [ebp-1A44h]
		and	edx, 1Fh
		cmp	edx, 8
		jnz	short loc_463E89
		mov	dword ptr [ebp-1Ch], 0FFFFFFFFh
		jmp	short loc_463EC0
; ---------------------------------------------------------------------------

loc_463E89:				; CODE XREF: .text:00463E7Ej
		mov	ecx, [ebp-1A44h]
		and	ecx, 1Fh
		cmp	ecx, 9
		jnz	short loc_463EA0
		mov	dword ptr [ebp-1Ch], 0FFFFFFFFh
		jmp	short loc_463EC0
; ---------------------------------------------------------------------------

loc_463EA0:				; CODE XREF: .text:00463E95j
		mov	eax, [ebp-1A44h]
		and	eax, 1Fh
		cmp	eax, 6
		jz	loc_463F39
		mov	edx, [ebp-1A44h]
		and	edx, 1Fh
		cmp	edx, 0Ch
		jz	short loc_463F39

loc_463EC0:				; CODE XREF: .text:00463E70j
					; .text:00463E87j ...
		inc	dword ptr [ebp-4]

loc_463EC3:				; CODE XREF: .text:00463E12j
		cmp	dword ptr [ebp-4], 40h
		jge	short loc_463F39
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_463E17
		jmp	short loc_463F39
; ---------------------------------------------------------------------------

loc_463ED5:				; CODE XREF: .text:00463DECj
					; .text:00463E02j
		mov	dword ptr [ebp-1Ch], 0FFFFFFFFh
		jmp	short loc_463F39
; ---------------------------------------------------------------------------

loc_463EDE:				; CODE XREF: .text:00463DD8j
		mov	ecx, s
		mov	eax, [ebp-68h]
		cmp	byte ptr [ecx+eax], 1Ch
		jnz	short loc_463EF2
		dec	dword ptr [ebp-18h]
		jmp	short loc_463F39
; ---------------------------------------------------------------------------

loc_463EF2:				; CODE XREF: .text:00463EEBj
		mov	edx, s
		mov	ecx, [ebp-68h]
		cmp	byte ptr [edx+ecx], 0
		jz	short loc_463F04
		inc	dword ptr [ebp-18h]

loc_463F04:				; CODE XREF: .text:00463EFFj
		cmp	dword ptr [ebp-14h], 40h
		jge	short loc_463F39
		cmp	dword ptr [ebp-14h], 0
		jle	short loc_463F2D
		mov	eax, [ebp-14h]
		lea	edx, [ebp-188h]
		shl	eax, 2
		lea	ecx, [ebp-184h]
		push	eax		; n
		push	edx		; src
		push	ecx		; dest
		call	_memmove
		add	esp, 0Ch

loc_463F2D:				; CODE XREF: .text:00463F0Ej
		mov	eax, [ebp-68h]
		mov	[ebp-188h], eax
		inc	dword ptr [ebp-14h]

loc_463F39:				; CODE XREF: .text:00463DABj
					; .text:00463DC7j ...
		add	ebx, [ebp-50h]
		jmp	loc_463FE5
; ---------------------------------------------------------------------------

loc_463F41:				; CODE XREF: .text:00463B93j
		mov	edx, addr0
		mov	eax, copy
		add	edx, ebx
		push	edx		; int
		mov	ecx, [ebp-4Ch]
		sub	ecx, ebx
		add	eax, ebx
		push	ecx		; int
		push	eax		; src
		call	loc_461804
		add	esp, 0Ch
		sub	eax, addr0
		mov	[ebp-68h], eax
		mov	edx, [ebp-68h]
		cmp	edx, _size
		jnb	short loc_463F98
		mov	ecx, s
		mov	eax, [ebp-68h]
		cmp	byte ptr [ecx+eax], 1
		jnz	short loc_463F8C
		mov	dword ptr [ebp-1Ch], 0FFFFFFFFh
		jmp	short loc_463F8F
; ---------------------------------------------------------------------------

loc_463F8C:				; CODE XREF: .text:00463F81j
		mov	ebx, [ebp-68h]

loc_463F8F:				; CODE XREF: .text:00463F8Aj
		mov	dword ptr [ebp-28h], 1
		jmp	short loc_463FE5
; ---------------------------------------------------------------------------

loc_463F98:				; CODE XREF: .text:00463F72j
		cmp	dword ptr [ebp-14h], 0
		jle	short loc_463FB4
		dec	dword ptr [ebp-14h]
		mov	eax, [ebp-14h]
		mov	ebx, [ebp+eax*4-188h]
		mov	dword ptr [ebp-28h], 1
		jmp	short loc_463FE5
; ---------------------------------------------------------------------------

loc_463FB4:				; CODE XREF: .text:00463F9Cj
		mov	dword ptr [ebp-1Ch], 1
		jmp	short loc_463FE5
; ---------------------------------------------------------------------------

loc_463FBD:				; CODE XREF: .text:00463BA1j
		cmp	dword ptr [ebp-14h], 0
		jle	short loc_463FD9
		dec	dword ptr [ebp-14h]
		mov	eax, [ebp-14h]
		mov	ebx, [ebp+eax*4-188h]
		mov	dword ptr [ebp-28h], 1
		jmp	short loc_463FE5
; ---------------------------------------------------------------------------

loc_463FD9:				; CODE XREF: .text:00463FC1j
		mov	dword ptr [ebp-1Ch], 1
		jmp	short loc_463FE5
; ---------------------------------------------------------------------------

loc_463FE2:				; CODE XREF: .text:00463BA7j
		add	ebx, [ebp-50h]

loc_463FE5:				; CODE XREF: .text:00463A3Dj
					; .text:00463BD8j ...
		inc	dword ptr [ebp-10h]

loc_463FE8:				; CODE XREF: .text:004639B1j
		cmp	dword ptr [ebp-28h], 0
		jz	short loc_463FF4
		cmp	dword ptr [ebp-10h], 40h
		jge	short loc_463FFE

loc_463FF4:				; CODE XREF: .text:00463FECj
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_4639B6

loc_463FFE:				; CODE XREF: .text:004639C5j
					; .text:00463A0Ej ...
		cmp	dword ptr [ebp-1Ch], 0
		jl	short loc_464027
		mov	eax, [ebp-18h]
		lea	eax, [eax+eax*2]
		add	eax, 0FFFFFFFEh
		cmp	eax, [ebp-10h]
		jg	short loc_464027
		mov	edx, dword_5E5D88
		mov	ecx, [ebp-0Ch]
		mov	[edx+ecx*4], esi
		inc	esi
		inc	dword ptr [ebp-0Ch]
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_464027:				; CODE XREF: .text:00463962j
					; .text:00463973j ...
		cmp	dword_5E5D7C, 0
		jnz	short loc_464073
		lea	eax, [esi+4]
		cmp	eax, _size
		ja	short loc_464073
		mov	edx, s
		cmp	dword ptr [edx+esi], 0
		jnz	short loc_464073
		mov	ecx, copy
		mov	eax, [ecx+esi]
		sub	eax, addr0
		cmp	eax, _size
		jnb	short loc_464073
		push	4
		push	esi
		push	4
		call	loc_45C740
		add	esp, 0Ch
		add	esi, 4
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_464073:				; CODE XREF: .text:0046402Ej
					; .text:00464039j ...
		cmp	dword ptr [ebp-74h], 0
		jz	short loc_464090
		mov	edx, [ebp-74h]
		push	edx
		push	esi
		push	0Bh
		call	loc_45C740
		add	esp, 0Ch
		add	esi, [ebp-74h]
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_464090:				; CODE XREF: .text:00464077j
		cmp	dword ptr [ebp-6Ch], 0
		jz	short loc_4640C0
		push	1
		push	esi
		push	6
		call	loc_45C740
		add	esp, 0Ch
		mov	ecx, [ebp-6Ch]
		push	ecx
		lea	eax, [esi+1]
		push	eax
		push	9
		call	loc_45C740
		add	esp, 0Ch
		mov	edx, [ebp-6Ch]
		inc	edx
		add	esi, edx
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_4640C0:				; CODE XREF: .text:00464094j
		cmp	dword ptr [ebp-70h], 0
		jz	short loc_4640DD
		mov	ecx, [ebp-70h]
		push	ecx
		push	esi
		push	9
		call	loc_45C740
		add	esp, 0Ch
		add	esi, [ebp-70h]
		jmp	loc_4641AC
; ---------------------------------------------------------------------------

loc_4640DD:				; CODE XREF: .text:004640C4j
		cmp	esi, 7
		jb	short loc_46414E
		lea	eax, [esi+4]
		cmp	eax, _size
		jnb	short loc_46414E
		mov	edx, copy
		cmp	dword ptr [edx+esi-3], 0
		jnz	short loc_46414E
		mov	ecx, s
		cmp	dword ptr [ecx+esi-3], 0
		jnz	short loc_46414E
		mov	eax, s
		cmp	byte ptr [eax+esi-7], 4
		jnz	short loc_46414E
		mov	edx, s
		cmp	byte ptr [edx+esi-6], 2
		jnz	short loc_46414E
		mov	ecx, s
		cmp	byte ptr [ecx+esi-5], 2
		jnz	short loc_46414E
		mov	eax, s
		cmp	byte ptr [eax+esi-4], 2
		jnz	short loc_46414E
		push	4
		mov	edx, esi
		sub	edx, 3
		push	edx
		push	4
		call	loc_45C740
		add	esp, 0Ch
		inc	esi
		jmp	short loc_4641AC
; ---------------------------------------------------------------------------

loc_46414E:				; CODE XREF: .text:004640E0j
					; .text:004640EBj ...
		push	0
		mov	ecx, _size
		push	ecx
		mov	eax, copy
		push	eax
		push	esi
		call	loc_45CC50
		add	esp, 10h
		mov	[edi], eax
		cmp	dword ptr [edi], 0
		jbe	short loc_4641AB
		mov	ebx, esi
		jmp	short loc_464189
; ---------------------------------------------------------------------------

loc_464171:				; CODE XREF: .text:0046418Fj
		mov	eax, s
		cmp	byte ptr [eax+ebx], 0
		jnz	short loc_464191
		mov	edx, dword_5E5D74
		test	byte ptr [edx+ebx*2], 4
		jnz	short loc_464191
		inc	ebx

loc_464189:				; CODE XREF: .text:0046416Fj
		mov	ecx, [edi]
		add	ecx, esi
		cmp	ebx, ecx
		jb	short loc_464171

loc_464191:				; CODE XREF: .text:0046417Aj
					; .text:00464186j
		mov	eax, [edi]
		add	eax, esi
		cmp	ebx, eax
		jb	short loc_4641AB
		mov	edx, [edi]
		push	edx
		push	esi
		push	1Fh
		call	loc_45C740
		add	esp, 0Ch
		add	esi, [edi]
		jmp	short loc_4641AC
; ---------------------------------------------------------------------------

loc_4641AB:				; CODE XREF: .text:0046416Bj
					; .text:00464197j
		inc	esi

loc_4641AC:				; CODE XREF: .text:00461D22j
					; .text:00461D37j ...
		cmp	esi, [ebp-4Ch]
		jb	loc_461CE2

loc_4641B5:				; CODE XREF: .text:00461CDCj
		cmp	dword_5E5D80, 0
		jz	short loc_464224
		jmp	short loc_464205
; ---------------------------------------------------------------------------

loc_4641C0:				; CODE XREF: .text:00464222j
		push	1		; mode
		mov	ecx, dword_5E5D80
		push	4		; size
		push	ecx		; _addr
		push	edi		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	short loc_464224
		mov	eax, addr0
		cmp	eax, [edi]
		ja	short loc_464224
		mov	edx, [edi]
		cmp	edx, addr1
		jnb	short loc_464224
		mov	ecx, [edi]
		sub	ecx, addr0
		mov	eax, dword_5E5D74
		or	word ptr [eax+ecx*2], 2
		add	dword_5E5D80, 4

loc_464205:				; CODE XREF: .text:004641BEj
		mov	edx, dword_5E5D80
		cmp	edx, addr0
		jb	short loc_464224
		mov	ecx, dword_5E5D80
		add	ecx, 4
		cmp	ecx, addr1
		jbe	short loc_4641C0

loc_464224:				; CODE XREF: .text:004641BCj
					; .text:004641D7j ...
		xor	eax, eax

loc_464226:				; CODE XREF: .text:004619CAj
					; .text:00462E02j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
