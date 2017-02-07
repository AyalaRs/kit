.code

loc_476154:				; CODE XREF: .text:00477F9Cp
					; .text:loc_478862p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFC00h
		cmp	dword_5E6184, 0
		push	ebx
		push	esi
		push	edi
		jz	loc_476350
		push	offset aCpu_0	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-200h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	esi, offset asc_53FB1C ; " - "
		cmp	stru_5E6D24.rtback, 0
		jz	loc_476222
		mov	edi, stru_5E6D24.rtback
		cmp	edi, 1
		jnz	short loc_4761B3
		mov	eax, $CTW0("") ; ""
		jmp	short loc_4761B8
; ---------------------------------------------------------------------------

loc_4761B3:				; CODE XREF: .text:004761AAj
		mov	eax, $CTW0("s") ; "s"

loc_4761B8:				; CODE XREF: .text:004761B1j
		push	eax
		push	edi
		push	offset aRunTraceI_Step ; "Run trace %i.	step%s back"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-400h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		mov	eax, ebx
		mov	ecx, 100h
		lea	edx, [ebp-200h]
		sub	ecx, ebx
		push	esi		; src
		add	eax, eax
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	ecx, [ebp-400h]
		mov	edx, ebx
		push	ecx		; src
		mov	eax, 100h
		sub	eax, ebx
		lea	ecx, [ebp-200h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	esi, offset asc_53FB58 ; ", "
		jmp	short loc_47628B
; ---------------------------------------------------------------------------

loc_476222:				; CODE XREF: .text:0047619Bj
		push	8401h		; mode
		mov	eax, g_disasmdump.threadid
		push	eax		; threadid
		lea	edx, [ebp-400h]
		push	edx		; s
		call	Decodethreadname
		add	esp, 0Ch
		test	eax, eax
		jle	short loc_47628B
		mov	eax, ebx
		mov	ecx, 100h
		sub	ecx, ebx
		push	esi		; src
		lea	edx, [ebp-200h]
		add	eax, eax
		add	eax, edx
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	ecx, [ebp-400h]
		mov	edx, ebx
		push	ecx		; src
		mov	eax, 100h
		sub	eax, ebx
		lea	ecx, [ebp-200h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	esi, offset asc_53FB58 ; ", "

loc_47628B:				; CODE XREF: .text:00476220j
					; .text:0047623Ej
		mov	eax, g_disasmdump.base
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jz	short loc_476307
		mov	edx, ebx
		mov	eax, 100h
		sub	eax, ebx
		push	esi		; src
		lea	ecx, [ebp-200h]
		add	edx, edx
		add	edx, ecx
		push	eax		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		push	offset aModule_3 ; "module "
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, ebx
		mov	eax, 100h
		sub	eax, ebx
		lea	ecx, [ebp-200h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	ebx, eax
		add	esp, 0Ch
		mov	eax, 100h
		add	edi, 0Ch
		sub	eax, ebx
		push	edi		; src
		lea	edx, [ebp-200h]
		add	ebx, ebx
		add	ebx, edx
		push	eax		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_476307:				; CODE XREF: .text:0047629Bj
		push	100h		; nMaxCount
		lea	ecx, [ebp-400h]
		push	ecx		; lpString
		mov	eax, dword_5E6184
		push	eax		; hWnd
		call	GetWindowTextW
		push	100h		; maxlen
		lea	edx, [ebp-400h]
		push	edx		; s2
		lea	ecx, [ebp-200h]
		push	ecx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_476350
		lea	eax, [ebp-200h]
		push	eax		; lpString
		mov	edx, dword_5E6184
		push	edx		; hWnd
		call	SetWindowTextW

loc_476350:				; CODE XREF: .text:00476167j
					; .text:0047633Bj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl tabdumpsel(struct	t_dump *pd, int)
tabdumpsel:				; CODE XREF: .text:0047740Dp
					; .text:00477EA0p ...
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_476361:				; CODE XREF: .text:00476369j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_476361
		mov	eax, [ebp-4]
		add	esp, 0FFFFFF1Ch
		push	ebx
		push	esi
		push	edi
		test	byte ptr [ebp+0Ch], 1
		jz	loc_47716F
		xor	eax, eax
		mov	ebx, offset stru_5E7DA8
		mov	[ebp-4], eax

loc_47638B:				; CODE XREF: .text:0047639Cj
		xor	eax, eax
		mov	[ebx], eax
		inc	dword ptr [ebp-4]
		add	ebx, 66Ch
		cmp	dword ptr [ebp-4], 5
		jl	short loc_47638B
		xor	edi, edi
		push	5		; mode
		push	10h		; size
		mov	eax, g_disasmdump.sel0
		push	eax		; _addr
		lea	edx, [ebp-654h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jbe	loc_476919
		lea	eax, [ebp-28h]
		push	eax		; psize
		mov	edx, g_disasmdump.sel0
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		mov	esi, eax
		cmp	ebx, [ebp-28h]
		jbe	short loc_4763DF
		xor	esi, esi

loc_4763DF:				; CODE XREF: .text:004763DBj
		mov	eax, g_disasmdump.threadid
		push	eax		; threadid
		call	Threadregisters
		pop	ecx
		mov	[ebp-2Ch], eax
		cmp	stru_5E6AB8.rtback, 0
		jle	short loc_47643F
		cmp	dword ptr [ebp-2Ch], 0
		jz	short loc_476413
		mov	edx, [ebp-2Ch]
		push	esi
		push	edi
		mov	esi, edx
		lea	edi, [ebp-818h]
		mov	ecx, 71h
		rep movsd
		pop	edi
		pop	esi

loc_476413:				; CODE XREF: .text:004763FBj
		push	0		; cmd
		lea	eax, [ebp-818h]
		push	eax		; preg
		mov	edx, stru_5E6AB8.rtback
		push	edx		; nback
		call	Getruntrace
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_476436
		xor	ecx, ecx
		mov	[ebp-2Ch], ecx
		jmp	short loc_47643F
; ---------------------------------------------------------------------------

loc_476436:				; CODE XREF: .text:0047642Dj
		lea	eax, [ebp-818h]
		mov	[ebp-2Ch], eax

loc_47643F:				; CODE XREF: .text:004763F5j
					; .text:00476434j
		cmp	dword ptr [ebp-2Ch], 0
		jz	short loc_476461
		cmp	dword_5BE6F4, 0
		jnz	short loc_476461
		mov	edx, [ebp-2Ch]
		mov	ecx, [edx+8]
		cmp	ecx, g_disasmdump.sel0
		jz	short loc_476461
		xor	eax, eax
		mov	[ebp-2Ch], eax

loc_476461:				; CODE XREF: .text:00476443j
					; .text:0047644Cj ...
		push	0		; predict
		mov	ecx, 40h
		mov	edx, [ebp-2Ch]
		cmp	stru_5E6AB8.rtback, 0
		push	edx		; reg
		jg	short loc_476478
		add	ecx, 0FFFFFFC0h

loc_476478:				; CODE XREF: .text:00476473j
		or	ecx, 15h
		lea	eax, [ebp-20E8h]
		or	ecx, 200h
		mov	edx, g_disasmdump.sel0
		push	ecx		; mode
		push	eax		; da
		push	esi		; dec
		push	edx		; ip
		push	ebx		; cmdsize
		lea	ecx, [ebp-654h]
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		cmp	dword_5BE700, 2
		jnz	loc_4765A3	; jumptable 004764DB default case
		cmp	dword ptr [ebp-20BCh], 0
		jnz	loc_4765A3	; jumptable 004764DB default case
		push	offset stru_5E6D24
		call	loc_494B88
		pop	ecx
		mov	edx, [ebp-20D4h]
		and	edx, 1Fh
		add	edx, 0FFFFFFEFh	; switch 8 cases
		cmp	edx, 7
		ja	loc_4765A3	; jumptable 004764DB default case
		jmp	ds:off_4764E2[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4764E2	dd offset loc_476502	; DATA XREF: .text:004764DBr
		dd offset loc_476520	; jump table for switch	statement
		dd offset loc_476540
		dd offset loc_476560
		dd offset loc_4765A3
		dd offset loc_4765A3
		dd offset loc_4765A3
		dd offset loc_476560
; ---------------------------------------------------------------------------

loc_476502:				; CODE XREF: .text:004764DBj
					; DATA XREF: .text:off_4764E2o
		test	al, 0Fh		; jumptable 004764DB case 17
		jz	loc_4765A3	; jumptable 004764DB default case
		and	eax, 0FFFFFFF0h
		push	eax
		push	offset stru_5E6D24
		call	loc_494BB4
		add	esp, 8
		jmp	loc_4765A3	; jumptable 004764DB default case
; ---------------------------------------------------------------------------

loc_476520:				; CODE XREF: .text:004764DBj
					; DATA XREF: .text:off_4764E2o
		mov	ecx, eax	; jumptable 004764DB case 18
		and	ecx, 0Fh
		cmp	ecx, 1
		jz	short loc_4765A3 ; jumptable 004764DB default case
		and	eax, 0FFFFFFF0h
		or	eax, 1
		push	eax
		push	offset stru_5E6D24
		call	loc_494BB4
		add	esp, 8
		jmp	short loc_4765A3 ; jumptable 004764DB default case
; ---------------------------------------------------------------------------

loc_476540:				; CODE XREF: .text:004764DBj
					; DATA XREF: .text:off_4764E2o
		mov	edx, eax	; jumptable 004764DB case 19
		and	edx, 0Fh
		cmp	edx, 2
		jz	short loc_4765A3 ; jumptable 004764DB default case
		and	eax, 0FFFFFFF0h
		or	eax, 2
		push	eax
		push	offset stru_5E6D24
		call	loc_494BB4
		add	esp, 8
		jmp	short loc_4765A3 ; jumptable 004764DB default case
; ---------------------------------------------------------------------------

loc_476560:				; CODE XREF: .text:004764DBj
					; DATA XREF: .text:off_4764E2o
		xor	ecx, ecx	; jumptable 004764DB cases 20,24
		lea	ebx, [ebp-209Ch]
		mov	[ebp-4], ecx

loc_47656B:				; CODE XREF: .text:0047657Dj
		test	byte ptr [ebx],	8
		jnz	short loc_47657F
		inc	dword ptr [ebp-4]
		add	ebx, 460h
		cmp	dword ptr [ebp-4], 4
		jl	short loc_47656B

loc_47657F:				; CODE XREF: .text:0047656Ej
		cmp	dword ptr [ebp-4], 4
		jge	short loc_4765A3 ; jumptable 004764DB default case
		mov	edx, eax
		and	edx, 0Fh
		cmp	edx, 1
		jz	short loc_4765A3 ; jumptable 004764DB default case
		and	eax, 0FFFFFFF0h
		or	eax, 1
		push	eax
		push	offset stru_5E6D24
		call	loc_494BB4
		add	esp, 8

loc_4765A3:				; CODE XREF: .text:004764A8j
					; .text:004764B5j ...
		mov	eax, [ebp-20ACh] ; jumptable 004764DB default case
		cmp	eax, 1
		jz	short loc_4765B7
		cmp	eax, 2
		jnz	loc_4766C1

loc_4765B7:				; CODE XREF: .text:004765ACj
		mov	ecx, [ebp-20D4h]
		and	ecx, 1Fh
		add	ecx, 0FFFFFFFEh
		sub	ecx, 2
		jb	loc_47664E
		add	ecx, 0FFFFFFFCh
		sub	ecx, 2
		jb	short loc_4765D9
		jmp	loc_4766C1
; ---------------------------------------------------------------------------

loc_4765D9:				; CODE XREF: .text:004765D2j
		lea	eax, [edi+edi*2]
		lea	eax, [edi+eax*4]
		shl	eax, 3
		sub	eax, edi
		shl	eax, 2
		sub	eax, edi
		mov	dword ptr stru_5E7DA8.block.index[eax*4], 1
		cmp	dword ptr [ebp-20ACh], 1
		jnz	short loc_476625
		push	offset aJumpIsTaken ; "Jump is taken"
		call	_T
		imul	edx, edi, 66Ch
		pop	ecx
		push	eax		; src
		add	edx, offset stru_5E7DA8.text
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_47664B
; ---------------------------------------------------------------------------

loc_476625:				; CODE XREF: .text:004765FBj
		push	offset aJumpIsNotTaken ; "Jump is not taken"
		call	_T
		pop	ecx
		push	eax		; src
		imul	ecx, edi, 66Ch
		add	ecx, offset stru_5E7DA8.text
		push	100h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_47664B:				; CODE XREF: .text:00476623j
		inc	edi
		jmp	short loc_4766C1
; ---------------------------------------------------------------------------

loc_47664E:				; CODE XREF: .text:004765C6j
		lea	eax, [edi+edi*2]
		lea	eax, [edi+eax*4]
		shl	eax, 3
		sub	eax, edi
		shl	eax, 2
		sub	eax, edi
		mov	dword ptr stru_5E7DA8.block.index[eax*4], 1
		cmp	dword ptr [ebp-20ACh], 1
		jnz	short loc_47669A
		push	offset aConditionIsMet ; "Condition is met"
		call	_T
		imul	edx, edi, 66Ch
		pop	ecx
		push	eax		; src
		add	edx, offset stru_5E7DA8.text
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4766C0
; ---------------------------------------------------------------------------

loc_47669A:				; CODE XREF: .text:00476670j
		push	offset aConditionIsNot ; "Condition is not met"
		call	_T
		pop	ecx
		push	eax		; src
		imul	ecx, edi, 66Ch
		add	ecx, offset stru_5E7DA8.text
		push	100h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4766C0:				; CODE XREF: .text:00476698j
		inc	edi

loc_4766C1:				; CODE XREF: .text:004765B1j
					; .text:004765D4j ...
		cmp	dword ptr [ebp-2Ch], 0
		jz	loc_47681A
		push	100h		; nname
		lea	eax, [ebp-43Ch]
		push	eax		; _name
		push	36h		; type
		mov	edx, g_disasmdump.sel0
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jle	loc_47681A
		mov	ecx, g_disasmdump.sel0
		push	ecx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	loc_47681A
		push	1		; decode
		mov	edx, g_disasmdump.sel0
		push	1		; n
		push	edx		; ip
		mov	ecx, [eax+4]
		push	ecx		; size
		mov	eax, [eax]
		push	eax		; base
		push	0		; copy
		call	Disassembleback
		add	esp, 18h
		push	100h		; nname
		lea	edx, [ebp-23Ch]
		push	edx		; _name
		push	33h		; type
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jle	short loc_476796
		imul	ecx, edi, 66Ch
		lea	eax, [ebp-23Ch]
		add	ecx, offset stru_5E7DA8.text
		push	eax		; src
		push	100h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		push	offset aReturnedEax_0 ;	" returned EAX = "
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; n
		imul	edx, edi, 66Ch
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		add	edx, ecx
		add	edx, offset stru_5E7DA8.text
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-0Ch], eax
		jmp	short loc_4767BF
; ---------------------------------------------------------------------------

loc_476796:				; CODE XREF: .text:0047673Aj
		push	offset aReturnedEax ; "Returned	EAX = "
		call	_T
		pop	ecx
		push	eax		; src
		imul	eax, edi, 66Ch
		add	eax, offset stru_5E7DA8.text
		push	100h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax

loc_4767BF:				; CODE XREF: .text:00476794j
		imul	ecx, edi, 66Ch
		push	0		; nontriv
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; ntext
		mov	eax, [ebp-0Ch]
		add	eax, eax
		add	ecx, eax
		add	ecx, offset stru_5E7DA8.text
		push	ecx		; text
		push	4		; ndata
		mov	edx, [ebp-2Ch]
		lea	ecx, [ebp-43Ch]
		add	edx, 0Ch
		push	edx		; data
		push	ecx		; prtype
		push	0		; pmod
		call	Decodeargument
		add	esp, 1Ch
		mov	esi, eax
		test	esi, esi
		jle	short loc_47681A
		lea	eax, [edi+edi*2]
		lea	eax, [edi+eax*4]
		shl	eax, 3
		sub	eax, edi
		shl	eax, 2
		sub	eax, edi
		inc	edi
		mov	dword ptr stru_5E7DA8.block.index[eax*4], 2

loc_47681A:				; CODE XREF: .text:004766C5j
					; .text:004766EAj ...
		lea	edx, [edi+edi*2]
		mov	dword ptr [ebp-4], 3
		lea	edx, [edi+edx*4]
		shl	edx, 3
		sub	edx, edi
		shl	edx, 2
		sub	edx, edi
		lea	ebx, stru_5E7DA8.block.index[edx*4]
		jmp	loc_47690A
; ---------------------------------------------------------------------------

loc_47683D:				; CODE XREF: .text:00476913j
		mov	eax, [ebp-4]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*2]
		shl	eax, 5
		lea	ecx, [ebp-209Ch]
		add	eax, ecx
		mov	[ebp-30h], eax
		mov	eax, [ebp-30h]
		cmp	word ptr [eax+260h], 0
		jz	loc_476907
		xor	esi, esi
		cmp	edi, esi
		jle	short loc_476897

loc_47686F:				; CODE XREF: .text:00476895j
		imul	eax, esi, 66Ch
		add	eax, offset stru_5E7DA8.text
		push	eax		; s2
		mov	edx, [ebp-30h]
		add	edx, 260h
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_476897
		inc	esi
		cmp	edi, esi
		jg	short loc_47686F

loc_476897:				; CODE XREF: .text:0047686Dj
					; .text:00476890j
		cmp	edi, esi
		jg	short loc_476907
		mov	dword ptr [ebx], 3
		cmp	dword_5BE6F4, 0
		jz	short loc_4768CC
		cmp	dword ptr [ebp-2Ch], 0
		jz	short loc_4768CC
		mov	ecx, [ebp-2Ch]
		mov	eax, [ecx+8]
		cmp	eax, g_disasmdump.sel0
		jz	short loc_4768CC
		mov	edx, [ebp-30h]
		test	dword ptr [edx], 808FFh
		jz	short loc_4768CC
		or	dword ptr [ebx], 10h

loc_4768CC:				; CODE XREF: .text:004768A8j
					; .text:004768AEj ...
		mov	ecx, [ebp-30h]
		push	edi
		mov	esi, ecx
		lea	edi, [ebx+4]
		mov	ecx, 118h
		rep movsd
		pop	edi
		mov	eax, [ebp-30h]
		imul	edx, edi, 66Ch
		add	eax, 260h
		add	edx, offset stru_5E7DA8.text
		push	eax		; src
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		inc	edi
		add	ebx, 66Ch

loc_476907:				; CODE XREF: .text:00476863j
					; .text:00476899j
		dec	dword ptr [ebp-4]

loc_47690A:				; CODE XREF: .text:00476838j
		cmp	dword ptr [ebp-4], 0
		jl	short loc_476919
		cmp	edi, 5
		jl	loc_47683D

loc_476919:				; CODE XREF: .text:004763BDj
					; .text:0047690Ej
		cmp	edi, 5
		jge	loc_476C7F
		mov	dword ptr [ebp-14h], 200h
		push	1		; flags
		mov	ecx, [ebp-14h]
		shl	ecx, 3		; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-34h], eax
		cmp	dword ptr [ebp-34h], 0
		jz	loc_476C7F
		xor	eax, eax
		mov	[ebp-18h], eax

loc_47694C:				; CODE XREF: .text:0047698Ej
		mov	edx, [ebp-14h]
		push	edx		; njmpcall
		mov	ecx, [ebp-34h]
		push	ecx		; jmpcall
		mov	eax, g_disasmdump.sel0
		push	eax		; dest
		call	Findlocaljumpscallsto
		add	esp, 0Ch
		mov	[ebp-10h], eax
		mov	edx, [ebp-10h]
		cmp	edx, [ebp-14h]
		jl	short loc_476990
		lea	ecx, [ebp-18h]	; int
		push	1		; flags
		push	ecx		; failed
		lea	eax, [ebp-14h]	; int
		push	8		; itemsize
		push	eax		; pcount
		mov	edx, [ebp-34h]	; int
		push	edx		; data
		call	Memdouble
		add	esp, 14h
		mov	[ebp-34h], eax
		mov	ecx, [ebp-10h]
		cmp	ecx, [ebp-14h]
		jl	short loc_47694C

loc_476990:				; CODE XREF: .text:0047696Bj
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-20h], eax
		mov	[ebp-1Ch], eax
		mov	[ebp-4], edx
		mov	ecx, [ebp-34h]
		mov	eax, [ebp-4]
		cmp	eax, [ebp-10h]
		lea	ebx, [ecx+4]
		jge	short loc_4769D9

loc_4769AB:				; CODE XREF: .text:004769D7j
		mov	eax, [ebx]
		cmp	eax, 1
		jl	short loc_4769B7
		cmp	eax, 4
		jle	short loc_4769C3

loc_4769B7:				; CODE XREF: .text:004769B0j
		mov	eax, [ebx]
		cmp	eax, 8
		jl	short loc_4769C8
		cmp	eax, 0Ah
		jg	short loc_4769C8

loc_4769C3:				; CODE XREF: .text:004769B5j
		inc	dword ptr [ebp-1Ch]
		jmp	short loc_4769CB
; ---------------------------------------------------------------------------

loc_4769C8:				; CODE XREF: .text:004769BCj
					; .text:004769C1j
		inc	dword ptr [ebp-20h]

loc_4769CB:				; CODE XREF: .text:004769C6j
		inc	dword ptr [ebp-4]
		add	ebx, 8
		mov	edx, [ebp-4]
		cmp	edx, [ebp-10h]
		jl	short loc_4769AB

loc_4769D9:				; CODE XREF: .text:004769A9j
		cmp	edi, 5
		jge	loc_476B2F
		cmp	dword ptr [ebp-1Ch], 0
		jle	loc_476B2F
		cmp	dword ptr [ebp-1Ch], 1
		jnz	short loc_4769FF
		push	offset aJumpFrom ; "Jump from "
		call	_T
		pop	ecx
		jmp	short loc_476A0A
; ---------------------------------------------------------------------------

loc_4769FF:				; CODE XREF: .text:004769F0j
		push	offset aJumpsFrom ; "Jumps from	"
		call	_T
		pop	ecx

loc_476A0A:				; CODE XREF: .text:004769FDj
		push	eax		; src
		push	100h		; n
		imul	ecx, edi, 66Ch
		add	ecx, offset stru_5E7DA8.text
		push	ecx		; dest
		call	StrcopyW
		mov	[ebp-0Ch], eax
		xor	eax, eax
		add	esp, 0Ch
		xor	edx, edx
		mov	[ebp-4], eax
		mov	[ebp-1Ch], edx
		mov	ecx, [ebp-34h]
		lea	ebx, [ecx+4]
		jmp	loc_476AFE
; ---------------------------------------------------------------------------

loc_476A3D:				; CODE XREF: .text:00476B0Dj
		mov	eax, [ebx]
		cmp	eax, 1
		jl	short loc_476A49
		cmp	eax, 4
		jle	short loc_476A5D

loc_476A49:				; CODE XREF: .text:00476A42j
		mov	eax, [ebx]
		cmp	eax, 8
		jl	loc_476AF8
		cmp	eax, 0Ah
		jg	loc_476AF8

loc_476A5D:				; CODE XREF: .text:00476A47j
		cmp	dword ptr [ebp-1Ch], 0
		jle	short loc_476A90
		push	offset asc_53F9BE ; ","
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		imul	ecx, edi, 66Ch
		mov	eax, [ebp-0Ch]
		add	eax, eax
		add	ecx, eax
		add	ecx, offset stru_5E7DA8.text
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-0Ch], eax

loc_476A90:				; CODE XREF: .text:00476A61j
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; nsymb
		imul	ecx, edi, 66Ch
		mov	eax, [ebp-0Ch]
		add	eax, eax
		add	ecx, eax
		add	ecx, offset stru_5E7DA8.text
		push	ecx		; symb
		push	8		; addrmode
		mov	edx, [ebx-4]
		push	edx		; _addr
		call	Decoderelativeoffset
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	short loc_476AF2
		push	0		; comment
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; nsymb
		imul	edx, edi, 66Ch
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		add	edx, ecx
		add	edx, offset stru_5E7DA8.text
		push	edx		; symb
		push	0		; mode
		push	0		; amod
		mov	eax, [ebx-4]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	esi, eax

loc_476AF2:				; CODE XREF: .text:00476ABFj
		add	[ebp-0Ch], esi
		inc	dword ptr [ebp-1Ch]

loc_476AF8:				; CODE XREF: .text:00476A4Ej
					; .text:00476A57j
		inc	dword ptr [ebp-4]
		add	ebx, 8

loc_476AFE:				; CODE XREF: .text:00476A38j
		mov	eax, [ebp-4]
		cmp	eax, [ebp-10h]
		jge	short loc_476B13
		cmp	dword ptr [ebp-0Ch], 0FFh
		jl	loc_476A3D

loc_476B13:				; CODE XREF: .text:00476B04j
		lea	edx, [edi+edi*2]
		lea	edx, [edi+edx*4]
		shl	edx, 3
		sub	edx, edi
		shl	edx, 2
		sub	edx, edi
		inc	edi
		mov	dword ptr stru_5E7DA8.block.index[edx*4], 4

loc_476B2F:				; CODE XREF: .text:004769DCj
					; .text:004769E6j
		cmp	edi, 5
		jge	loc_476C75
		cmp	dword ptr [ebp-20h], 0
		jle	loc_476C75
		cmp	dword ptr [ebp-20h], 1
		jnz	short loc_476B55
		push	offset aLocalCallFrom ;	"Local call from "
		call	_T
		pop	ecx
		jmp	short loc_476B60
; ---------------------------------------------------------------------------

loc_476B55:				; CODE XREF: .text:00476B46j
		push	offset aLocalCallsFrom ; "Local	calls from "
		call	_T
		pop	ecx

loc_476B60:				; CODE XREF: .text:00476B53j
		push	eax		; src
		push	100h		; n
		imul	ecx, edi, 66Ch
		add	ecx, offset stru_5E7DA8.text
		push	ecx		; dest
		call	StrcopyW
		mov	[ebp-0Ch], eax
		xor	eax, eax
		add	esp, 0Ch
		xor	edx, edx
		mov	[ebp-4], eax
		mov	[ebp-20h], edx
		mov	ecx, [ebp-34h]
		lea	ebx, [ecx+4]
		jmp	loc_476C44
; ---------------------------------------------------------------------------

loc_476B93:				; CODE XREF: .text:00476C53j
		mov	eax, [ebx]
		cmp	eax, 5
		jz	short loc_476BA3
		cmp	eax, 6
		jnz	loc_476C3E

loc_476BA3:				; CODE XREF: .text:00476B98j
		cmp	dword ptr [ebp-20h], 0
		jle	short loc_476BD6
		push	offset asc_53F9BE ; ","
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		imul	ecx, edi, 66Ch
		mov	eax, [ebp-0Ch]
		add	eax, eax
		add	ecx, eax
		add	ecx, offset stru_5E7DA8.text
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-0Ch], eax

loc_476BD6:				; CODE XREF: .text:00476BA7j
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; nsymb
		imul	ecx, edi, 66Ch
		mov	eax, [ebp-0Ch]
		add	eax, eax
		add	ecx, eax
		add	ecx, offset stru_5E7DA8.text
		push	ecx		; symb
		push	8		; addrmode
		mov	edx, [ebx-4]
		push	edx		; _addr
		call	Decoderelativeoffset
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	short loc_476C38
		push	0		; comment
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; nsymb
		imul	edx, edi, 66Ch
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		add	edx, ecx
		add	edx, offset stru_5E7DA8.text
		push	edx		; symb
		push	0		; mode
		push	0		; amod
		mov	eax, [ebx-4]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	esi, eax

loc_476C38:				; CODE XREF: .text:00476C05j
		add	[ebp-0Ch], esi
		inc	dword ptr [ebp-20h]

loc_476C3E:				; CODE XREF: .text:00476B9Dj
		inc	dword ptr [ebp-4]
		add	ebx, 8

loc_476C44:				; CODE XREF: .text:00476B8Ej
		mov	eax, [ebp-4]
		cmp	eax, [ebp-10h]
		jge	short loc_476C59
		cmp	dword ptr [ebp-0Ch], 0FFh
		jl	loc_476B93

loc_476C59:				; CODE XREF: .text:00476C4Aj
		lea	edx, [edi+edi*2]
		lea	edx, [edi+edx*4]
		shl	edx, 3
		sub	edx, edi
		shl	edx, 2
		sub	edx, edi
		inc	edi
		mov	dword ptr stru_5E7DA8.block.index[edx*4], 5

loc_476C75:				; CODE XREF: .text:00476B32j
					; .text:00476B3Cj
		mov	ecx, [ebp-34h]
		push	ecx		; data
		call	Memfree
		pop	ecx

loc_476C7F:				; CODE XREF: .text:0047691Cj
					; .text:00476941j
		cmp	edi, 5
		jge	loc_476F43
		xor	eax, eax
		mov	edx, g_disasmdump.sel0
		mov	[ebp-20h], eax
		mov	[ebp-1Ch], eax
		push	edx		; from
		call	Findjumpfrom
		pop	ecx
		mov	[ebp-38h], eax
		cmp	dword ptr [ebp-38h], 0
		jz	loc_476F43
		mov	ecx, [ebp-38h]
		mov	ebx, ecx
		jmp	short loc_476CC7
; ---------------------------------------------------------------------------

loc_476CB1:				; CODE XREF: .text:00476CCFj
		mov	al, [ebx+8]
		cmp	al, 3
		jnz	short loc_476CBD
		inc	dword ptr [ebp-1Ch]
		jmp	short loc_476CC4
; ---------------------------------------------------------------------------

loc_476CBD:				; CODE XREF: .text:00476CB6j
		cmp	al, 6
		jnz	short loc_476CC4
		inc	dword ptr [ebp-20h]

loc_476CC4:				; CODE XREF: .text:00476CBBj
					; .text:00476CBFj
		add	ebx, 9

loc_476CC7:				; CODE XREF: .text:00476CAFj
		mov	edx, [ebx]
		cmp	edx, g_disasmdump.sel0
		jz	short loc_476CB1
		cmp	edi, 5
		jge	loc_476E0A
		cmp	dword ptr [ebp-1Ch], 0
		jle	loc_476E0A
		cmp	dword ptr [ebp-1Ch], 1
		jnz	short loc_476CF7
		push	offset aJumpTo	; "Jump	to "
		call	_T
		pop	ecx
		jmp	short loc_476D02
; ---------------------------------------------------------------------------

loc_476CF7:				; CODE XREF: .text:00476CE8j
		push	offset aJumpsTo_0 ; "Jumps to "
		call	_T
		pop	ecx

loc_476D02:				; CODE XREF: .text:00476CF5j
		push	eax		; src
		push	100h		; n
		imul	ecx, edi, 66Ch
		add	ecx, offset stru_5E7DA8.text
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		xor	eax, eax
		mov	[ebp-1Ch], eax
		mov	edx, [ebp-38h]
		mov	ebx, edx
		jmp	loc_476DD7
; ---------------------------------------------------------------------------

loc_476D2F:				; CODE XREF: .text:00476DE8j
		cmp	byte ptr [ebx+8], 3
		jnz	loc_476DD4
		cmp	dword ptr [ebp-1Ch], 0
		jle	short loc_476D6C
		push	offset asc_53F9BE ; ","
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; n
		imul	edx, edi, 66Ch
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		add	edx, ecx
		add	edx, offset stru_5E7DA8.text
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-0Ch], eax

loc_476D6C:				; CODE XREF: .text:00476D3Dj
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; nsymb
		imul	edx, edi, 66Ch
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		add	edx, ecx
		add	edx, offset stru_5E7DA8.text
		push	edx		; symb
		push	8		; addrmode
		mov	eax, [ebx+4]
		push	eax		; _addr
		call	Decoderelativeoffset
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	short loc_476DCE
		push	0		; comment
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; nsymb
		imul	edx, edi, 66Ch
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		add	edx, ecx
		add	edx, offset stru_5E7DA8.text
		push	edx		; symb
		push	0		; mode
		push	0		; amod
		mov	eax, [ebx+4]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	esi, eax

loc_476DCE:				; CODE XREF: .text:00476D9Bj
		add	[ebp-0Ch], esi
		inc	dword ptr [ebp-1Ch]

loc_476DD4:				; CODE XREF: .text:00476D33j
		add	ebx, 9

loc_476DD7:				; CODE XREF: .text:00476D2Aj
		mov	eax, [ebx]
		cmp	eax, g_disasmdump.sel0
		jnz	short loc_476DEE
		cmp	dword ptr [ebp-0Ch], 0FFh
		jl	loc_476D2F

loc_476DEE:				; CODE XREF: .text:00476DDFj
		lea	edx, [edi+edi*2]
		lea	edx, [edi+edx*4]
		shl	edx, 3
		sub	edx, edi
		shl	edx, 2
		sub	edx, edi
		inc	edi
		mov	dword ptr stru_5E7DA8.block.index[edx*4], 6

loc_476E0A:				; CODE XREF: .text:00476CD4j
					; .text:00476CDEj
		cmp	edi, 5
		jge	loc_476F43
		cmp	dword ptr [ebp-20h], 0
		jle	loc_476F43
		cmp	dword ptr [ebp-1Ch], 1
		jnz	short loc_476E30
		push	offset aCallTo_0 ; src
		call	_T
		pop	ecx
		jmp	short loc_476E3B
; ---------------------------------------------------------------------------

loc_476E30:				; CODE XREF: .text:00476E21j
		push	offset aCallsTo	; src
		call	_T
		pop	ecx

loc_476E3B:				; CODE XREF: .text:00476E2Ej
		push	eax		; src
		push	100h		; n
		imul	ecx, edi, 66Ch
		add	ecx, offset stru_5E7DA8.text
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		xor	eax, eax
		mov	[ebp-20h], eax
		mov	edx, [ebp-38h]
		mov	ebx, edx
		jmp	loc_476F10
; ---------------------------------------------------------------------------

loc_476E68:				; CODE XREF: .text:00476F21j
		cmp	byte ptr [ebx+8], 6
		jnz	loc_476F0D
		cmp	dword ptr [ebp-20h], 0
		jle	short loc_476EA5
		push	offset asc_53F9BE ; ","
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; n
		imul	edx, edi, 66Ch
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		add	edx, ecx
		add	edx, offset stru_5E7DA8.text
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-0Ch], eax

loc_476EA5:				; CODE XREF: .text:00476E76j
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; nsymb
		imul	edx, edi, 66Ch
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		add	edx, ecx
		add	edx, offset stru_5E7DA8.text
		push	edx		; symb
		push	8		; addrmode
		mov	eax, [ebx+4]
		push	eax		; _addr
		call	Decoderelativeoffset
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	short loc_476F07
		push	0		; comment
		mov	eax, 100h
		sub	eax, [ebp-0Ch]
		push	eax		; nsymb
		imul	edx, edi, 66Ch
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		add	edx, ecx
		add	edx, offset stru_5E7DA8.text
		push	edx		; symb
		push	0		; mode
		push	0		; amod
		mov	eax, [ebx+4]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	esi, eax

loc_476F07:				; CODE XREF: .text:00476ED4j
		add	[ebp-0Ch], esi
		inc	dword ptr [ebp-20h]

loc_476F0D:				; CODE XREF: .text:00476E6Cj
		add	ebx, 9

loc_476F10:				; CODE XREF: .text:00476E63j
		mov	eax, [ebx]
		cmp	eax, g_disasmdump.sel0
		jnz	short loc_476F27
		cmp	dword ptr [ebp-0Ch], 0FFh
		jl	loc_476E68

loc_476F27:				; CODE XREF: .text:00476F18j
		lea	edx, [edi+edi*2]
		lea	edx, [edi+edx*4]
		shl	edx, 3
		sub	edx, edi
		shl	edx, 2
		sub	edx, edi
		inc	edi
		mov	dword ptr stru_5E7DA8.block.index[edx*4], 7

loc_476F43:				; CODE XREF: .text:00476C82j
					; .text:00476CA4j ...
		cmp	edi, 2
		jge	short loc_476F4D
		mov	edi, 2

loc_476F4D:				; CODE XREF: .text:00476F46j
		mov	eax, g_disasmdump.sel0
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jz	loc_47704F
		mov	eax, g_disasmdump.sel0
		push	eax		; _addr
		lea	edx, [esi+920h]
		push	edx		; nd
		call	Getnestingdepth
		mov	[ebp-8], eax
		lea	eax, [edi+edi*2]
		mov	ecx, [ebp-8]
		add	esp, 8
		lea	eax, [edi+eax*4]
		dec	ecx
		shl	eax, 3
		mov	[ebp-4], ecx
		sub	eax, edi
		shl	eax, 2
		sub	eax, edi
		lea	ebx, (stru_5E7DA8.block.status+1F8h)[eax*4]
		jmp	loc_477040
; ---------------------------------------------------------------------------

loc_476F9E:				; CODE XREF: .text:00477049j
		imul	eax, edi, 66Ch
		add	eax, offset stru_5E7DA8.text
		push	100h		; len
		push	eax		; comment
		mov	ecx, g_disasmdump.sel0
		mov	edx, [ebp-4]
		inc	edx
		push	edx		; level
		push	ecx		; _addr
		push	esi		; pmod
		call	Getloopcomment
		add	esp, 14h
		test	eax, eax
		jz	short loc_47703D
		mov	eax, [ebp-4]
		mov	edx, g_disasmdump.sel0
		inc	eax
		lea	ecx, [esi+920h]
		push	eax		; level
		push	edx		; _addr
		push	ecx		; nd
		call	Findnesteddata
		add	esp, 0Ch
		mov	[ebp-3Ch], eax
		cmp	dword ptr [ebp-3Ch], 0
		jz	short loc_477023
		mov	eax, [ebp-3Ch]
		test	byte ptr [eax+14h], 20h
		jz	short loc_477023
		mov	edx, [ebp-3Ch]
		mov	ecx, [edx]
		mov	[ebx], ecx
		push	1		; decode
		push	1		; n
		mov	eax, [ebp-3Ch]
		mov	edx, [eax+4]
		push	edx		; ip
		mov	ecx, [esi+4]
		push	ecx		; size
		mov	eax, [esi]
		push	eax		; base
		push	0		; copy
		call	Disassembleforward
		add	esp, 18h
		mov	edx, [ebp-3Ch]
		sub	eax, [edx]
		mov	[ebx+4], eax
		jmp	short loc_47702C
; ---------------------------------------------------------------------------

loc_477023:				; CODE XREF: .text:00476FEBj
					; .text:00476FF4j
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebx], ecx
		mov	[ebx+4], eax

loc_47702C:				; CODE XREF: .text:00477021j
		mov	dword ptr [ebx-464h], 8
		inc	edi
		add	ebx, 66Ch

loc_47703D:				; CODE XREF: .text:00476FC7j
		dec	dword ptr [ebp-4]

loc_477040:				; CODE XREF: .text:00476F99j
		cmp	dword ptr [ebp-4], 0
		jl	short loc_47704F
		cmp	edi, 5
		jl	loc_476F9E

loc_47704F:				; CODE XREF: .text:00476F5Dj
					; .text:00477044j
		cmp	edi, 5
		jge	loc_47711C
		test	esi, esi
		jz	loc_47711C
		lea	edx, [ebp-24h]
		push	edx
		lea	ecx, [ebp-644h]
		push	ecx
		mov	eax, g_disasmdump.sel0
		push	eax
		call	loc_4C9D74
		add	esp, 0Ch
		test	eax, eax
		jz	loc_47711C
		push	0		; nextent
		lea	edx, [ebp-43Ch]
		push	0		; extent
		push	edx		; fname
		lea	ecx, [ebp-23Ch]
		lea	edx, [ebp-644h]
		push	ecx		; text
		push	1		; skipspaces
		mov	eax, [ebp-24h]
		push	eax		; line
		push	edx		; path
		mov	ecx, [esi]
		push	ecx		; base
		call	Getsourceline
		add	esp, 20h
		test	eax, eax
		jle	short loc_47711C
		lea	eax, [ebp-43Ch]
		push	eax		; src
		push	40h		; n
		push	(offset	stru_5E7DA8.text+19B0h)	; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		mov	edx, [ebp-24h]
		inc	edx
		push	edx
		push	offset aI_9	; ":%i "
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		add	ecx, (offset stru_5E7DA8.text+19B0h)
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-0Ch], eax
		lea	eax, [ebp-23Ch]
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		add	ecx, (offset stru_5E7DA8.text+19B0h)
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword ptr stru_5E7DA8.block.status+1744h, 9
		mov	edi, 5

loc_47711C:				; CODE XREF: .text:00477052j
					; .text:0047705Aj ...
		cmp	edi, 5
		jge	short loc_47714C
		push	100h		; nsymb
		push	(offset	stru_5E7DA8.text+19B0h)	; symb
		push	20008h		; addrmode
		mov	eax, g_disasmdump.sel0
		push	eax		; _addr
		call	Decoderelativeoffset
		add	esp, 10h
		test	eax, eax
		jle	short loc_47714C
		mov	dword ptr stru_5E7DA8.block.status+1744h, 0Ah

loc_47714C:				; CODE XREF: .text:0047711Fj
					; .text:00477140j
		mov	stru_5E6AB8.sorted.n, 5
		cmp	stru_5E6AB8.hw,	0
		jz	short loc_47716F
		push	0		; bErase
		push	0		; lpRect
		mov	edx, stru_5E6AB8.hw
		push	edx		; hWnd
		call	InvalidateRect

loc_47716F:				; CODE XREF: .text:0047637Bj
					; .text:0047715Dj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_477178(int, void *s, int, int, int, int)
loc_477178:				; DATA XREF: .text:0047783Do
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		xor	ebx, ebx
		mov	eax, [ebp+1Ch]
		add	eax, 4		; switch 5 cases
		cmp	eax, 4
		ja	loc_4773B1	; jumptable 0047718F default case
		jmp	ds:off_477196[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_477196	dd offset loc_4773B1	; DATA XREF: .text:0047718Fr
		dd offset loc_4773B1	; jump table for switch	statement
		dd offset loc_4773B1
		dd offset loc_4773B1
		dd offset loc_4771AF
; ---------------------------------------------------------------------------
		jmp	loc_4773B1	; jumptable 0047718F default case
; ---------------------------------------------------------------------------

loc_4771AF:				; CODE XREF: .text:0047718Fj
					; DATA XREF: .text:off_477196o
		mov	edx, [ebp+18h]	; jumptable 0047718F case 0
		mov	eax, [ebp+14h]
		mov	esi, [edx]
		add	esi, [eax+248h]
		cmp	esi, 5
		jge	loc_47738E
		lea	edx, [esi+esi*2]
		lea	edx, [esi+edx*4]
		shl	edx, 3
		sub	edx, esi
		shl	edx, 2
		sub	edx, esi
		test	byte ptr stru_5E7DA8.block.index[edx*4], 0Fh
		jz	loc_47738E
		imul	ecx, esi, 66Ch
		add	ecx, offset stru_5E7DA8.text
		push	ecx		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		mov	ebx, eax
		lea	eax, [esi+esi*2]
		add	esp, 0Ch
		lea	eax, [esi+eax*4]
		shl	eax, 3
		sub	eax, esi
		shl	eax, 2
		sub	eax, esi
		mov	edx, dword ptr stru_5E7DA8.block.index[eax*4]
		and	edx, 0Fh
		cmp	edx, 9
		jnz	short loc_477231
		mov	ecx, [ebp+10h]
		mov	dword ptr [ecx], 2
		jmp	loc_47738E
; ---------------------------------------------------------------------------

loc_477231:				; CODE XREF: .text:00477221j
		mov	eax, dword ptr stru_5E7DA8.block.index[eax*4]
		and	eax, 0Fh
		cmp	eax, 0Ah
		jnz	short loc_47724E
		mov	edx, [ebp+10h]
		mov	dword ptr [edx], 2
		jmp	loc_47738E
; ---------------------------------------------------------------------------

loc_47724E:				; CODE XREF: .text:0047723Ej
		lea	eax, [esi+esi*2]
		lea	eax, [esi+eax*4]
		shl	eax, 3
		sub	eax, esi
		shl	eax, 2
		sub	eax, esi
		mov	edx, dword ptr stru_5E7DA8.block.index[eax*4]
		and	edx, 0Fh
		cmp	edx, 3
		jnz	loc_4772F6
		cmp	stru_5E6AB8.rtback, 0
		jle	short loc_4772F6
		mov	ecx, stru_5E7DA8.block._type[eax*4]
		and	ecx, 10000100h
		cmp	ecx, 100h
		jnz	short loc_4772F6
		mov	eax, stru_5E7DA8.block.percent[eax*4]
		and	eax, 0FFh
		cmp	eax, 27h
		jz	short loc_4772F6
		mov	edx, [ebp+10h]
		or	dword ptr [edx], 100h
		push	ebx		; n
		push	0		; c
		mov	ecx, [ebp+0Ch]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		push	offset aCurrentMemoryS ; " (current memory state)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		add	edx, edx
		push	eax		; n
		add	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		push	edi		; n
		push	1		; c
		mov	eax, [ebp+0Ch]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		add	ebx, edi
		jmp	loc_47738E
; ---------------------------------------------------------------------------

loc_4772F6:				; CODE XREF: .text:0047726Bj
					; .text:00477278j ...
		lea	edx, [esi+esi*2]
		lea	edx, [esi+edx*4]
		shl	edx, 3
		sub	edx, esi
		shl	edx, 2
		sub	edx, esi
		mov	eax, dword ptr stru_5E7DA8.block.index[edx*4]
		mov	edx, eax
		and	edx, 0Fh
		cmp	edx, 3
		jnz	short loc_47738E
		cmp	stru_5E6AB8.rtback, 0
		jnz	short loc_47738E
		lea	ecx, [esi+esi*2]
		lea	ecx, [esi+ecx*4]
		shl	ecx, 3
		sub	ecx, esi
		shl	ecx, 2
		sub	ecx, esi
		test	al, 10h
		jz	short loc_47738E
		cmp	dword_5BE6F8, 0
		jnz	short loc_47738E
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 100h
		push	ebx		; n
		push	0		; c
		mov	edx, [ebp+0Ch]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		push	offset aCurrentRegiste ; " (current registers)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, 100h
		mov	eax, ebx
		sub	ecx, ebx
		add	eax, eax
		push	ecx		; n
		add	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		push	edi		; n
		push	1		; c
		mov	eax, [ebp+0Ch]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		add	ebx, edi

loc_47738E:				; CODE XREF: .text:004771C0j
					; .text:004771DEj ...
		mov	edx, [ebp+14h]
		cmp	esi, [edx+68h]
		jnz	short loc_4773B1 ; jumptable 0047718F default case
		push	offset word_5E6130 ; pf
		call	Getactiveframe
		pop	ecx
		cmp	eax, offset stru_5E6AB8
		jnz	short loc_4773B1 ; jumptable 0047718F default case
		mov	ecx, [ebp+10h]
		or	dword ptr [ecx], 80h

loc_4773B1:				; CODE XREF: .text:00477189j
					; .text:0047718Fj ...
		cmp	stru_5E6AB8.rtback, 0 ;	jumptable 0047718F default case
		jle	short loc_4773C3
		mov	eax, [ebp+10h]
		xor	dword ptr [eax], 80h

loc_4773C3:				; CODE XREF: .text:004773B8j
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4773CC:				; DATA XREF: .text:00477819o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	eax, [ebp+10h]
		sub	eax, 471h
		jz	short loc_47741A
		dec	eax
		jz	short loc_4773ED
		add	eax, 0FFFFFFEEh
		sub	eax, 4
		jb	short loc_477406
		jmp	loc_4775B9
; ---------------------------------------------------------------------------

loc_4773ED:				; CODE XREF: .text:004773DEj
		mov	ax, [ebx+68h]
		sub	ax, [ebx+248h]
		movzx	eax, ax
		shl	eax, 10h
		or	eax, 0FFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_477406:				; CODE XREF: .text:004773E6j
		push	3		; int
		push	offset g_disasmdump ; pd
		call	tabdumpsel
		add	esp, 8
		jmp	loc_4775B9
; ---------------------------------------------------------------------------

loc_47741A:				; CODE XREF: .text:004773DBj
		mov	eax, [ebx+68h]
		test	eax, eax
		jl	loc_4775B9
		cmp	eax, 5
		jge	loc_4775B9
		lea	edx, [eax+eax*2]
		lea	edx, [eax+edx*4]
		shl	edx, 3
		sub	edx, eax
		shl	edx, 2
		sub	edx, eax
		mov	ecx, dword ptr stru_5E7DA8.block.index[edx*4]
		and	ecx, 0Fh
		cmp	ecx, 3
		jnz	short loc_477488
		push	0		; index
		push	offset loc_474D5C ; menufunc
		mov	eax, [ebx+218h]
		push	eax		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h
		test	eax, eax
		jge	loc_4775B1
		push	0		; index
		push	offset loc_475B10 ; menufunc
		mov	edx, [ebx+218h]
		push	edx		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4775B1
; ---------------------------------------------------------------------------

loc_477488:				; CODE XREF: .text:0047744Bj
		mov	ecx, [ebx+68h]
		mov	eax, ecx
		lea	ecx, [eax+ecx*2]
		lea	ecx, [eax+ecx*4]
		shl	ecx, 3
		sub	ecx, eax
		shl	ecx, 2
		sub	ecx, eax
		mov	eax, dword ptr stru_5E7DA8.block.index[ecx*4]
		and	eax, 0Fh
		cmp	eax, 4
		jz	short loc_4774C6
		mov	edx, [ebx+68h]
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*4]
		shl	edx, 3
		sub	edx, ecx
		shl	edx, 2
		sub	edx, ecx
		cmp	eax, 5
		jnz	short loc_4774E2

loc_4774C6:				; CODE XREF: .text:004774AAj
		push	0		; index
		push	offset loc_475F4C ; menufunc
		mov	eax, [ebx+218h]
		push	eax		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	loc_4775B1
; ---------------------------------------------------------------------------

loc_4774E2:				; CODE XREF: .text:004774C4j
		mov	edx, [ebx+68h]
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*4]
		shl	edx, 3
		sub	edx, ecx
		shl	edx, 2
		sub	edx, ecx
		mov	eax, dword ptr stru_5E7DA8.block.index[edx*4]
		and	eax, 0Fh
		cmp	eax, 6
		jz	short loc_477520
		mov	edx, [ebx+68h]
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*4]
		shl	edx, 3
		sub	edx, ecx
		shl	edx, 2
		sub	edx, ecx
		cmp	eax, 7
		jnz	short loc_477539

loc_477520:				; CODE XREF: .text:00477504j
		push	1		; index
		push	offset loc_475F4C ; menufunc
		mov	eax, [ebx+218h]
		push	eax		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	short loc_4775B1
; ---------------------------------------------------------------------------

loc_477539:				; CODE XREF: .text:0047751Ej
		mov	edx, [ebx+68h]
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*4]
		shl	edx, 3
		sub	edx, ecx
		shl	edx, 2
		sub	edx, ecx
		mov	eax, dword ptr stru_5E7DA8.block.index[edx*4]
		and	eax, 0Fh
		cmp	eax, 8
		jnz	short loc_477576
		push	0		; index
		push	offset loc_475BB0 ; menufunc
		mov	edx, [ebx+218h]
		push	edx		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h
		jmp	short loc_4775B1
; ---------------------------------------------------------------------------

loc_477576:				; CODE XREF: .text:0047755Bj
		mov	ecx, [ebx+68h]
		mov	eax, ecx
		lea	ecx, [eax+ecx*2]
		lea	ecx, [eax+ecx*4]
		shl	ecx, 3
		sub	ecx, eax
		shl	ecx, 2
		sub	ecx, eax
		mov	edx, dword ptr stru_5E7DA8.block.index[ecx*4]
		and	edx, 0Fh
		cmp	edx, 9
		jnz	short loc_4775B1
		push	0		; index
		push	offset loc_47608C ; menufunc
		mov	ecx, [ebx+218h]
		push	ecx		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h

loc_4775B1:				; CODE XREF: .text:00477466j
					; .text:00477483j ...
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4775B9:				; CODE XREF: .text:004773E8j
					; .text:00477415j ...
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
		