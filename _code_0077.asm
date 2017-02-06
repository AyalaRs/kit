.code

; int __usercall loc_49413C@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_49413C:				; DATA XREF: .data:0054A8E8o
		push	ebp
		mov	ebp, esp
		push	ebx		; arglist
		mov	edx, [ebp+14h]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_494159
		cmp	dword ptr [eax+44h], 0
		jz	short loc_494159
		cmp	dword_5EC2B8, 0
		jnz	short loc_49415E

loc_494159:				; CODE XREF: .text:00494148j
					; .text:0049414Ej
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49415E:				; CODE XREF: .text:00494157j
		test	edx, edx
		jnz	short loc_49416A
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49416A:				; CODE XREF: .text:00494160j
		dec	edx
		jnz	loc_4941F2
		push	1		; compatible
		push	eax		; pt
		call	Copywholetable
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_494196
		push	offset aUnableToCopy_0 ; "Unable to copy"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_4941ED
; ---------------------------------------------------------------------------

loc_494196:				; CODE XREF: .text:00494180j
		mov	eax, hwollymain
		push	eax		; hWndNewOwner
		call	OpenClipboard
		test	eax, eax
		jnz	short loc_4941BF
		push	ebx		; hMem
		call	GlobalFree
		push	offset aUnableToCopy_0 ; "Unable to copy"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_4941ED
; ---------------------------------------------------------------------------

loc_4941BF:				; CODE XREF: .text:004941A3j
		call	EmptyClipboard
		push	ebx		; hMem
		push	0Dh		; uFormat
		call	SetClipboardData
		cmp	dword_57DE50, 0
		jz	short loc_4941E8
		push	ebx		; hunicode
		call	Unicodebuffertoascii
		pop	ecx
		test	eax, eax
		jz	short loc_4941E8
		push	eax		; hMem
		push	1		; uFormat
		call	SetClipboardData

loc_4941E8:				; CODE XREF: .text:004941D3j
					; .text:004941DEj
		call	CloseClipboard

loc_4941ED:				; CODE XREF: .text:00494194j
					; .text:004941BDj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4941F2:				; CODE XREF: .text:0049416Bj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4941F8:				; DATA XREF: .data:0054A8E8o
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+14h]
		mov	eax, [ebp+8]
		cmp	run.status, 12h
		jnz	short loc_494217
		test	eax, eax
		jz	short loc_49421B
		cmp	dword ptr [eax+268h], 0
		jle	short loc_49421B

loc_494217:				; CODE XREF: .text:00494208j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49421B:				; CODE XREF: .text:0049420Cj
					; .text:00494215j
		test	edx, edx
		jnz	short loc_494240
		mov	eax, dword_5EC0E8
		cmp	eax, 10E00h
		jz	short loc_494239
		cmp	eax, 10F00h
		jz	short loc_494239
		cmp	eax, 11100h
		jnz	short loc_494285

loc_494239:				; CODE XREF: .text:00494229j
					; .text:00494230j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_494240:				; CODE XREF: .text:0049421Dj
		dec	edx
		jnz	short loc_494285
		mov	edx, pthr
		push	edx		; pthr
		call	Registermodifiedbyuser
		mov	eax, pthr
		pop	ecx
		mov	edx, [eax+3A8h]
		add	edx, [ebp+10h]
		and	edx, 7
		mov	[eax+3A8h], edx
		mov	ecx, [eax+404h]
		shl	edx, 0Bh
		and	ecx, 0C7FFh
		or	ecx, edx
		mov	[eax+404h], ecx
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_494285:				; CODE XREF: .text:00494237j
					; .text:00494241j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC loc_49428C
loc_49428C:				; DATA XREF: .text:00496AE7o
					; .data:0054A8E8o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	edx, dumpaddr
		test	edx, edx
		mov	ebx, [ebp+10h]
		mov	eax, [ebp+14h]
		jnz	short loc_4942A5
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4942A5:				; CODE XREF: .text:0049429Ej
		test	eax, eax
		jnz	short loc_4942DE
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4942B9
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4942B9:				; CODE XREF: .text:004942B2j
		test	ebx, ebx
		jnz	short loc_4942C6
		test	dword ptr [eax+8], 2001000h
		jnz	short loc_4942D6

loc_4942C6:				; CODE XREF: .text:004942BBj
		cmp	ebx, 1
		jz	short loc_4942D6
		cmp	ebx, 2
		jnz	short loc_494344
		test	byte ptr [eax+0Ah], 8
		jz	short loc_494344

loc_4942D6:				; CODE XREF: .text:004942C4j
					; .text:004942C9j
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4942DE:				; CODE XREF: .text:004942A7j
		dec	eax
		jnz	short loc_494344
		cmp	ebx, 1
		jnz	short loc_494304
		push	90h		; mode
		push	0		; stackaddr
		push	1		; selsize
		mov	edx, dumpaddr
		push	edx		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_49433F
; ---------------------------------------------------------------------------

loc_494304:				; CODE XREF: .text:004942E4j
		cmp	ebx, 2
		jnz	short loc_494327
		push	100h		; mode
		mov	ecx, dumpaddr
		push	ecx		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_49433F
; ---------------------------------------------------------------------------

loc_494327:				; CODE XREF: .text:00494307j
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		mov	eax, dumpaddr
		push	0		; dumpaddr
		push	eax		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_49433F:				; CODE XREF: .text:00494302j
					; .text:00494325j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_494344:				; CODE XREF: .text:004942CEj
					; .text:004942D4j ...
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_49434C:				; DATA XREF: .data:0054A8E8o
		push	ebp
		mov	ebp, esp
		mov	ecx, [ebp+14h]
		mov	eax, offset dword_54A418
		jmp	short loc_494364
; ---------------------------------------------------------------------------

loc_494359:				; CODE XREF: .text:00494368j
		cmp	edx, dword_5EC0E8
		jz	short loc_49436A
		add	eax, 8

loc_494364:				; CODE XREF: .text:00494357j
		mov	edx, [eax]
		test	edx, edx
		jnz	short loc_494359

loc_49436A:				; CODE XREF: .text:0049435Fj
		cmp	dword ptr [eax], 0
		jnz	short loc_494373
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_494373:				; CODE XREF: .text:0049436Dj
		test	ecx, ecx
		jnz	short loc_4943A7
		cmp	dword_5EC0E8, 10700h
		jnz	short loc_4943A0
		push	offset aHelpOnFlag ; "Help on flag"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4943A0:				; CODE XREF: .text:00494381j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4943A7:				; CODE XREF: .text:00494375j
		dec	ecx
		jnz	short loc_4943E7
		cmp	dword_5EC0D8, 0
		jnz	short loc_4943B7
		xor	edx, edx
		jmp	short loc_4943C0
; ---------------------------------------------------------------------------

loc_4943B7:				; CODE XREF: .text:004943B1j
		mov	ecx, dword_5EC0D8
		mov	edx, [ecx+20h]

loc_4943C0:				; CODE XREF: .text:004943B5j
		push	edx
		mov	eax, [eax+4]
		push	eax
		call	loc_49B060
		add	esp, 8
		test	eax, eax
		jz	short loc_4943E3
		push	offset aNoHelpOnSelect ; "No help on selected item"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4943E3:				; CODE XREF: .text:004943CFj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4943E7:				; CODE XREF: .text:004943A8j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4943EC:				; CODE XREF: .text:0049642Ep
					; .text:00496454p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFCF0h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		test	edi, edi
		jz	loc_4944E8
		mov	ebx, [edi+220h]
		test	ebx, ebx
		jz	loc_4944E8
		cmp	dword_57FE88, 0
		jz	loc_4944E5
		test	esi, esi
		jz	loc_4944E5
		cmp	esi, [ebx+0Ch]
		jz	loc_4944E5
		lea	eax, [ebp-0Ch]
		push	eax
		mov	edx, [ebx+8]
		push	edx
		push	esi
		call	loc_492714
		add	esp, 0Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jl	loc_4944E5
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_4944E5
		push	2
		call	loc_4D2FEC
		pop	ecx
		mov	ecx, [ebp-0Ch]
		cmp	dword ptr [ecx+20h], 0
		jz	short loc_494491
		mov	eax, [ebp-0Ch]
		mov	edx, [eax+20h]
		cmp	word ptr [edx],	0
		jz	short loc_494491
		push	0
		mov	ecx, [ebp-0Ch]
		mov	eax, [ecx+20h]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax
		push	2
		call	loc_4D21C8
		add	esp, 0Ch

loc_494491:				; CODE XREF: .text:00494469j
					; .text:00494475j
		lea	edx, [ebp-8]
		push	edx		; tselect
		lea	ecx, [ebp-310h]
		push	ecx		; tmask
		lea	eax, [ebp-210h]
		push	eax		; text
		push	0		; column
		mov	edx, [ebp-4]
		push	edx		; row
		push	edi		; pt
		call	Gettabletext
		mov	edx, eax
		mov	eax, [ebp-0Ch]
		add	esp, 18h
		mov	eax, [eax+0Ch]
		cmp	edx, eax
		jle	short loc_4944E5
		mov	edx, [ebp-0Ch]
		add	eax, eax
		mov	ecx, [edx+10h]
		lea	edx, [ebp-210h]
		add	eax, edx
		mov	word ptr [ebp+ecx*2-20Eh], 0
		push	0
		push	eax
		push	2
		call	loc_4D21C8
		add	esp, 0Ch

loc_4944E5:				; CODE XREF: .text:0049441Bj
					; .text:00494423j ...
		mov	[ebx+0Ch], esi

loc_4944E8:				; CODE XREF: .text:00494400j
					; .text:0049440Ej
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4944F0:				; DATA XREF: .data:004F6014o
		push	ebp
		mov	ebp, esp
		mov	ecx, offset regname
		push	ebx
		push	esi
		push	edi
		mov	esi, [ecx+40h]
		mov	ebx, offset segname
		mov	stru_5475D4._name, esi
		mov	stru_5475F8._name, esi
		mov	esi, [ecx+44h]
		mov	edx, offset mmxname
		mov	stru_547640._name, esi
		mov	stru_547664._name, esi
		mov	esi, [ecx+48h]
		mov	eax, offset ssename
		mov	stru_5476AC._name, esi
		mov	stru_5476D0._name, esi
		mov	esi, [ecx+4Ch]
		mov	stru_547718._name, esi
		mov	stru_54773C._name, esi
		mov	esi, [ecx+50h]
		mov	stru_547784._name, esi
		mov	stru_5477A8._name, esi
		mov	esi, [ecx+54h]
		mov	stru_5477F0._name, esi
		mov	stru_547814._name, esi
		mov	esi, [ecx+58h]
		mov	stru_54785C._name, esi
		mov	stru_547880._name, esi
		mov	esi, [ecx+5Ch]
		mov	stru_5478C8._name, esi
		mov	stru_5478EC._name, esi
		mov	ecx, [ebx]
		mov	stru_547D24._name, ecx
		mov	stru_547D48._name, ecx
		mov	ecx, [ebx+4]
		mov	stru_547D90._name, ecx
		mov	stru_547DB4._name, ecx
		mov	ecx, [ebx+8]
		mov	stru_547DFC._name, ecx
		mov	stru_547E20._name, ecx
		mov	ecx, [ebx+0Ch]
		mov	stru_547E68._name, ecx
		mov	stru_547E8C._name, ecx
		mov	ecx, [ebx+10h]
		mov	stru_547ED4._name, ecx
		mov	stru_547EF8._name, ecx
		mov	ecx, [ebx+14h]
		mov	stru_547F40._name, ecx
		mov	stru_547F64._name, ecx
		mov	ecx, off_52FDE4
		mov	stru_548018._name, ecx
		mov	ecx, off_52FDE8
		mov	stru_5480A8._name, ecx
		mov	ecx, off_52FDEC
		mov	stru_548138._name, ecx
		mov	ecx, off_52FDF0
		mov	stru_5481C8._name, ecx
		mov	ecx, off_52FDF4
		mov	stru_548258._name, ecx
		mov	ecx, off_52FDF8
		mov	stru_5482E8._name, ecx
		mov	ecx, off_52FDFC
		mov	stru_548378._name, ecx
		mov	ecx, off_52FE00
		mov	stru_548408._name, ecx
		mov	ecx, [edx]
		mov	stru_548960._name, ecx
		mov	stru_548984._name, ecx
		mov	ebx, [edx+4]
		mov	stru_5489A8._name, ebx
		mov	stru_5489CC._name, ebx
		mov	esi, [edx+8]
		mov	stru_5489F0._name, esi
		mov	stru_548A14._name, esi
		mov	edi, [edx+0Ch]
		mov	stru_548A38._name, edi
		mov	edi, [edx+0Ch]
		mov	stru_548A5C._name, edi
		mov	edi, [edx+10h]
		mov	stru_548A80._name, edi
		mov	edi, [edx+10h]
		mov	stru_548AA4._name, edi
		mov	edi, [edx+14h]
		mov	stru_548AC8._name, edi
		mov	edi, [edx+14h]
		mov	stru_548AEC._name, edi
		mov	edi, [edx+18h]
		mov	stru_548B10._name, edi
		mov	edi, [edx+18h]
		mov	stru_548B34._name, edi
		mov	edi, [edx+1Ch]
		mov	stru_548B58._name, edi
		mov	edi, [edx+1Ch]
		mov	stru_548B7C._name, edi
		mov	stru_548BA0._name, ecx
		mov	stru_548C0C._name, ebx
		mov	stru_548C78._name, esi
		mov	ecx, [edx+0Ch]
		mov	stru_548CE4._name, ecx
		mov	ecx, [edx+10h]
		mov	stru_548D50._name, ecx
		mov	ecx, [edx+14h]
		mov	stru_548DBC._name, ecx
		mov	ecx, [edx+18h]
		mov	stru_548E28._name, ecx
		mov	edx, [edx+1Ch]
		mov	stru_548E94._name, edx
		mov	edx, [eax]
		mov	stru_548F00._name, edx
		mov	ecx, [eax]
		mov	stru_548F24._name, ecx
		mov	edx, [eax+4]
		mov	stru_548F48._name, edx
		mov	ecx, [eax+4]
		mov	stru_548F6C._name, ecx
		mov	edx, [eax+8]
		mov	stru_548F90._name, edx
		mov	ecx, [eax+8]
		mov	stru_548FB4._name, ecx
		mov	edx, [eax+0Ch]
		mov	stru_548FD8._name, edx
		mov	ecx, [eax+0Ch]
		mov	stru_548FFC._name, ecx
		mov	edx, [eax+10h]
		mov	stru_549020._name, edx
		mov	ecx, [eax+10h]
		mov	stru_549044._name, ecx
		mov	edx, [eax+14h]
		mov	stru_549068._name, edx
		mov	ecx, [eax+14h]
		mov	stru_54908C._name, ecx
		mov	edx, [eax+18h]
		mov	stru_5490B0._name, edx
		mov	ecx, [eax+18h]
		mov	stru_5490D4._name, ecx
		mov	edx, [eax+1Ch]
		mov	stru_5490F8._name, edx
		mov	ecx, [eax+1Ch]
		mov	stru_54911C._name, ecx
		mov	edx, [eax]
		mov	stru_54947C._name, edx
		mov	ecx, [eax]
		mov	stru_5494A0._name, ecx
		mov	edx, [eax]
		mov	stru_5494C4._name, edx
		mov	ecx, [eax]
		mov	stru_5494E8._name, ecx
		mov	edx, [eax]
		mov	stru_54950C._name, edx
		mov	ecx, [eax+4]
		mov	stru_549530._name, ecx
		mov	edx, [eax+4]
		mov	stru_549554._name, edx
		mov	ecx, [eax+4]
		mov	stru_549578._name, ecx
		mov	edx, [eax+4]
		mov	stru_54959C._name, edx
		mov	ecx, [eax+4]
		mov	stru_5495C0._name, ecx
		mov	edx, [eax+8]
		mov	stru_5495E4._name, edx
		mov	ecx, [eax+8]
		mov	stru_549608._name, ecx
		mov	edx, [eax+8]
		mov	stru_54962C._name, edx
		mov	ecx, [eax+8]
		mov	stru_549650._name, ecx
		mov	edx, [eax+8]
		mov	stru_549674._name, edx
		mov	ecx, [eax+0Ch]
		mov	stru_549698._name, ecx
		mov	edx, [eax+0Ch]
		mov	stru_5496BC._name, edx
		mov	ecx, [eax+0Ch]
		mov	stru_5496E0._name, ecx
		mov	edx, [eax+0Ch]
		mov	stru_549704._name, edx
		mov	ecx, [eax+0Ch]
		mov	stru_549728._name, ecx
		mov	edx, [eax+10h]
		mov	stru_54974C._name, edx
		mov	ecx, [eax+10h]
		mov	stru_549770._name, ecx
		mov	edx, [eax+10h]
		mov	stru_549794._name, edx
		mov	ecx, [eax+10h]
		mov	stru_5497B8._name, ecx
		mov	edx, [eax+10h]
		mov	stru_5497DC._name, edx
		mov	ecx, [eax+14h]
		mov	stru_549800._name, ecx
		mov	edx, [eax+14h]
		mov	stru_549824._name, edx
		mov	ecx, [eax+14h]
		mov	stru_549848._name, ecx
		mov	edx, [eax+14h]
		mov	stru_54986C._name, edx
		mov	ecx, [eax+14h]
		mov	stru_549890._name, ecx
		mov	edx, [eax+18h]
		mov	stru_5498B4._name, edx
		mov	ecx, [eax+18h]
		mov	stru_5498D8._name, ecx
		mov	edx, [eax+18h]
		mov	stru_5498FC._name, edx
		mov	ecx, [eax+18h]
		mov	stru_549920._name, ecx
		mov	edx, [eax+18h]
		mov	stru_549944._name, edx
		mov	ecx, [eax+1Ch]
		mov	stru_549968._name, ecx
		mov	edx, [eax+1Ch]
		mov	stru_54998C._name, edx
		mov	ecx, [eax+1Ch]
		mov	stru_5499B0._name, ecx
		mov	edx, [eax+1Ch]
		mov	stru_5499D4._name, edx
		mov	ecx, [eax+1Ch]
		mov	stru_5499F8._name, ecx
		mov	edx, [eax]
		mov	stru_549D58._name, edx
		mov	ecx, [eax+4]
		mov	stru_549DC4._name, ecx
		mov	edx, [eax+8]
		mov	stru_549E30._name, edx
		mov	ecx, [eax+0Ch]
		mov	stru_549E9C._name, ecx
		mov	edx, [eax+10h]
		mov	stru_549F08._name, edx
		mov	ecx, [eax+14h]
		mov	stru_549F74._name, ecx
		mov	edx, [eax+18h]
		mov	stru_549FE0._name, edx
		mov	eax, [eax+1Ch]
		mov	stru_54A04C._name, eax
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 305. _Checkcondition
; Exported entry 416. Checkcondition

; bool __cdecl Checkcondition(int code,	ulong flags)
		public Checkcondition
Checkcondition:				; CODE XREF: .text:004455E7p
					; .text:00495594p
		push	ebp		; _Checkcondition
		mov	ebp, esp
		mov	eax, [ebp+0Ch]
		mov	edx, [ebp+8]
		mov	ecx, edx
		and	ecx, 0Eh
		cmp	ecx, 0Eh	; switch 15 cases
		ja	loc_494A02	; jumptable 00494953 default case
		jmp	ds:off_49495A[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
off_49495A	dd offset loc_494996	; DATA XREF: .text:00494953r
		dd offset loc_494A02	; jump table for switch	statement
		dd offset loc_49499D
		dd offset loc_494A02
		dd offset loc_4949A2
		dd offset loc_494A02
		dd offset loc_4949A7
		dd offset loc_494A02
		dd offset loc_4949AC
		dd offset loc_494A02
		dd offset loc_4949B3
		dd offset loc_494A02
		dd offset loc_4949B8
		dd offset loc_494A02
		dd offset loc_4949DB
; ---------------------------------------------------------------------------

loc_494996:				; CODE XREF: .text:00494953j
					; DATA XREF: .text:off_49495Ao
		and	eax, 800h	; jumptable 00494953 case 0
		jmp	short loc_494A06
; ---------------------------------------------------------------------------

loc_49499D:				; CODE XREF: .text:00494953j
					; DATA XREF: .text:off_49495Ao
		and	eax, 1		; jumptable 00494953 case 2
		jmp	short loc_494A06
; ---------------------------------------------------------------------------

loc_4949A2:				; CODE XREF: .text:00494953j
					; DATA XREF: .text:off_49495Ao
		and	eax, 40h	; jumptable 00494953 case 4
		jmp	short loc_494A06
; ---------------------------------------------------------------------------

loc_4949A7:				; CODE XREF: .text:00494953j
					; DATA XREF: .text:off_49495Ao
		and	eax, 41h	; jumptable 00494953 case 6
		jmp	short loc_494A06
; ---------------------------------------------------------------------------

loc_4949AC:				; CODE XREF: .text:00494953j
					; DATA XREF: .text:off_49495Ao
		and	eax, 80h	; jumptable 00494953 case 8
		jmp	short loc_494A06
; ---------------------------------------------------------------------------

loc_4949B3:				; CODE XREF: .text:00494953j
					; DATA XREF: .text:off_49495Ao
		and	eax, 4		; jumptable 00494953 case 10
		jmp	short loc_494A06
; ---------------------------------------------------------------------------

loc_4949B8:				; CODE XREF: .text:00494953j
					; DATA XREF: .text:off_49495Ao
		mov	ecx, eax	; jumptable 00494953 case 12
		and	ecx, 880h
		cmp	ecx, 800h
		jz	short loc_4949D4
		cmp	ecx, 80h
		jz	short loc_4949D4
		xor	eax, eax
		jmp	short loc_494A06
; ---------------------------------------------------------------------------

loc_4949D4:				; CODE XREF: .text:004949C6j
					; .text:004949CEj
		mov	eax, 1
		jmp	short loc_494A06
; ---------------------------------------------------------------------------

loc_4949DB:				; CODE XREF: .text:00494953j
					; DATA XREF: .text:off_49495Ao
		mov	ecx, eax	; jumptable 00494953 case 14
		and	ecx, 880h
		cmp	ecx, 800h
		jz	short loc_4949FB
		cmp	ecx, 80h
		jz	short loc_4949FB
		test	al, 40h
		jnz	short loc_4949FB
		xor	eax, eax
		jmp	short loc_494A06
; ---------------------------------------------------------------------------

loc_4949FB:				; CODE XREF: .text:004949E9j
					; .text:004949F1j ...
		mov	eax, 1
		jmp	short loc_494A06
; ---------------------------------------------------------------------------

loc_494A02:				; CODE XREF: .text:0049494Dj
					; .text:00494953j
					; DATA XREF: ...
		xor	eax, eax	; jumptable 00494953 default case
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_494A06:				; CODE XREF: .text:0049499Bj
					; .text:004949A0j ...
		test	dl, 1
		jnz	short loc_494A17
		test	eax, eax
		setnz	dl
		and	edx, 1
		mov	eax, edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_494A17:				; CODE XREF: .text:00494A09j
		test	eax, eax
		setz	cl
		and	ecx, 1
		mov	eax, ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 306. _Setcondition
; Exported entry 709. Setcondition

; unsigned int __cdecl Setcondition(int	code, ulong flags)
		public Setcondition
Setcondition:				; CODE XREF: .text:00493941p
					; .text:0049397Cp
		push	ebp		; _Setcondition
		mov	ebp, esp
		mov	eax, [ebp+0Ch]
		mov	edx, [ebp+8]
		and	edx, 0Fh
		cmp	edx, 0Fh	; switch 16 cases
		ja	loc_494B86	; jumptable 00494A39 default case
		jmp	ds:off_494A40[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_494A40	dd offset loc_494A80	; DATA XREF: .text:00494A39r
		dd offset loc_494A8A	; jump table for switch	statement
		dd offset loc_494A94
		dd offset loc_494A9C
		dd offset loc_494AA4
		dd offset loc_494AAC
		dd offset loc_494AB4
		dd offset loc_494AC4
		dd offset loc_494ACC
		dd offset loc_494AD6
		dd offset loc_494AE0
		dd offset loc_494AE8
		dd offset loc_494AF0
		dd offset loc_494B18
		dd offset loc_494B3E
		dd offset loc_494B5F
; ---------------------------------------------------------------------------

loc_494A80:				; CODE XREF: .text:00494A39j
					; DATA XREF: .text:off_494A40o
		or	eax, 800h	; jumptable 00494A39 case 0
		jmp	loc_494B86	; jumptable 00494A39 default case
; ---------------------------------------------------------------------------

loc_494A8A:				; CODE XREF: .text:00494A39j
					; DATA XREF: .text:off_494A40o
		and	eax, 0FFFFF7FFh	; jumptable 00494A39 case 1
		jmp	loc_494B86	; jumptable 00494A39 default case
; ---------------------------------------------------------------------------

loc_494A94:				; CODE XREF: .text:00494A39j
					; DATA XREF: .text:off_494A40o
		or	eax, 1		; jumptable 00494A39 case 2
		jmp	loc_494B86	; jumptable 00494A39 default case
; ---------------------------------------------------------------------------

loc_494A9C:				; CODE XREF: .text:00494A39j
					; DATA XREF: .text:off_494A40o
		and	eax, 0FFFFFFFEh	; jumptable 00494A39 case 3
		jmp	loc_494B86	; jumptable 00494A39 default case
; ---------------------------------------------------------------------------

loc_494AA4:				; CODE XREF: .text:00494A39j
					; DATA XREF: .text:off_494A40o
		or	eax, 40h	; jumptable 00494A39 case 4
		jmp	loc_494B86	; jumptable 00494A39 default case
; ---------------------------------------------------------------------------

loc_494AAC:				; CODE XREF: .text:00494A39j
					; DATA XREF: .text:off_494A40o
		and	eax, 0FFFFFFBFh	; jumptable 00494A39 case 5
		jmp	loc_494B86	; jumptable 00494A39 default case
; ---------------------------------------------------------------------------

loc_494AB4:				; CODE XREF: .text:00494A39j
					; DATA XREF: .text:off_494A40o
		test	al, 41h		; jumptable 00494A39 case 6
		jnz	loc_494B86	; jumptable 00494A39 default case
		or	eax, 1
		jmp	loc_494B86	; jumptable 00494A39 default case
; ---------------------------------------------------------------------------

loc_494AC4:				; CODE XREF: .text:00494A39j
					; DATA XREF: .text:off_494A40o
		and	eax, 0FFFFFFBEh	; jumptable 00494A39 case 7
		jmp	loc_494B86	; jumptable 00494A39 default case
; ---------------------------------------------------------------------------

loc_494ACC:				; CODE XREF: .text:00494A39j
					; DATA XREF: .text:off_494A40o
		or	eax, 80h	; jumptable 00494A39 case 8
		jmp	loc_494B86	; jumptable 00494A39 default case
; ---------------------------------------------------------------------------

loc_494AD6:				; CODE XREF: .text:00494A39j
					; DATA XREF: .text:off_494A40o
		and	eax, 0FFFFFF7Fh	; jumptable 00494A39 case 9
		jmp	loc_494B86	; jumptable 00494A39 default case
; ---------------------------------------------------------------------------

loc_494AE0:				; CODE XREF: .text:00494A39j
					; DATA XREF: .text:off_494A40o
		or	eax, 4		; jumptable 00494A39 case 10
		jmp	loc_494B86	; jumptable 00494A39 default case
; ---------------------------------------------------------------------------

loc_494AE8:				; CODE XREF: .text:00494A39j
					; DATA XREF: .text:off_494A40o
		and	eax, 0FFFFFFFBh	; jumptable 00494A39 case 11
		jmp	loc_494B86	; jumptable 00494A39 default case
; ---------------------------------------------------------------------------

loc_494AF0:				; CODE XREF: .text:00494A39j
					; DATA XREF: .text:off_494A40o
		mov	edx, eax	; jumptable 00494A39 case 12
		and	edx, 880h
		cmp	edx, 800h
		jz	loc_494B86	; jumptable 00494A39 default case
		cmp	edx, 80h
		jz	short loc_494B86 ; jumptable 00494A39 default case
		and	eax, 0FFFFF7FFh
		or	eax, 80h
		jmp	short loc_494B86 ; jumptable 00494A39 default case
; ---------------------------------------------------------------------------

loc_494B18:				; CODE XREF: .text:00494A39j
					; DATA XREF: .text:off_494A40o
		mov	edx, eax	; jumptable 00494A39 case 13
		and	edx, 880h
		cmp	edx, 800h
		jnz	short loc_494B2F
		and	eax, 0FFFFF7FFh
		jmp	short loc_494B86 ; jumptable 00494A39 default case
; ---------------------------------------------------------------------------

loc_494B2F:				; CODE XREF: .text:00494B26j
		cmp	edx, 80h
		jnz	short loc_494B86 ; jumptable 00494A39 default case
		and	eax, 0FFFFFF7Fh
		jmp	short loc_494B86 ; jumptable 00494A39 default case
; ---------------------------------------------------------------------------

loc_494B3E:				; CODE XREF: .text:00494A39j
					; DATA XREF: .text:off_494A40o
		mov	edx, eax	; jumptable 00494A39 case 14
		and	edx, 880h
		cmp	edx, 800h
		jz	short loc_494B86 ; jumptable 00494A39 default case
		cmp	edx, 80h
		jz	short loc_494B86 ; jumptable 00494A39 default case
		test	al, 40h
		jnz	short loc_494B86 ; jumptable 00494A39 default case
		or	eax, 40h
		jmp	short loc_494B86 ; jumptable 00494A39 default case
; ---------------------------------------------------------------------------

loc_494B5F:				; CODE XREF: .text:00494A39j
					; DATA XREF: .text:off_494A40o
		and	eax, 0FFFFFFBFh	; jumptable 00494A39 case 15
		mov	edx, eax
		and	edx, 880h
		cmp	edx, 800h
		jnz	short loc_494B79
		and	eax, 0FFFFF7FFh
		jmp	short loc_494B86 ; jumptable 00494A39 default case
; ---------------------------------------------------------------------------

loc_494B79:				; CODE XREF: .text:00494B70j
		cmp	edx, 80h
		jnz	short loc_494B86 ; jumptable 00494A39 default case
		and	eax, 0FFFFFF7Fh

loc_494B86:				; CODE XREF: .text:00494A33j
					; .text:00494A85j ...
		pop	ebp		; jumptable 00494A39 default case
		retn
; ---------------------------------------------------------------------------

loc_494B88:				; CODE XREF: .text:004764C0p
					; .text:00478998p ...
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_494BA4
		cmp	dword ptr [eax+22Ch], 0
		jz	short loc_494BA4
		cmp	dword ptr [eax+220h], 0
		jnz	short loc_494BA8

loc_494BA4:				; CODE XREF: .text:00494B90j
					; .text:00494B99j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_494BA8:				; CODE XREF: .text:00494BA2j
		mov	edx, [eax+220h]
		mov	eax, [edx+8]
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_494BB4:				; CODE XREF: .text:00476513p
					; .text:00476536p ...
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	loc_494C8A
		cmp	dword ptr [eax+220h], 0
		jz	loc_494C8A
		mov	ecx, [eax+220h]
		mov	[ecx+8], edx
		mov	ecx, off_54A450
		mov	[eax+44h], ecx
		mov	ecx, edx
		and	ecx, 0Fh
		test	ecx, ecx
		jnz	short loc_494C02
		mov	dword ptr [eax+94h], offset aRegistersFpu ; "Registers (FPU)"
		mov	edx, off_54A454
		add	[eax+44h], edx
		jmp	short loc_494C5A
; ---------------------------------------------------------------------------

loc_494C02:				; CODE XREF: .text:00494BEBj
		cmp	ecx, 1
		jnz	short loc_494C1C
		mov	dword ptr [eax+94h], offset aRegistersMmx ; "Registers (MMX)"
		mov	edx, off_54A458
		add	[eax+44h], edx
		jmp	short loc_494C5A
; ---------------------------------------------------------------------------

loc_494C1C:				; CODE XREF: .text:00494C05j
		cmp	ecx, 2
		jnz	short loc_494C36
		mov	dword ptr [eax+94h], offset aRegisters3dnow ; "Registers (3DNow!)"
		mov	ecx, off_54A45C
		add	[eax+44h], ecx
		jmp	short loc_494C5A
; ---------------------------------------------------------------------------

loc_494C36:				; CODE XREF: .text:00494C1Fj
		cmp	ecx, 3
		jnz	short loc_494C50
		mov	dword ptr [eax+94h], offset aRegistersDr ; "Registers (DR)"
		mov	edx, off_54A460
		add	[eax+44h], edx
		jmp	short loc_494C5A
; ---------------------------------------------------------------------------

loc_494C50:				; CODE XREF: .text:00494C39j
		mov	dword ptr [eax+94h], offset aRegisters ; "Registers"

loc_494C5A:				; CODE XREF: .text:00494C00j
					; .text:00494C1Aj ...
		cmp	dword_5CBBC4, 0
		jz	short loc_494C76
		cmp	dword_5CBBC8, 0
		jz	short loc_494C76
		mov	ecx, off_54A464
		inc	ecx
		add	[eax+44h], ecx

loc_494C76:				; CODE XREF: .text:00494C61j
					; .text:00494C6Aj
		mov	edx, [eax+22Ch]
		test	edx, edx
		jz	short loc_494C8A
		push	0		; bErase
		push	0		; lpRect
		push	edx		; hWnd
		call	InvalidateRect

loc_494C8A:				; CODE XREF: .text:00494BBFj
					; .text:00494BCCj ...
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_494C8C:				; CODE XREF: .text:00477F8Fp
					; .text:00478240p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	loc_494D58
		mov	esi, [ebx+220h]
		test	esi, esi
		jz	loc_494D58
		push	edi		; threadid
		call	Findthread
		pop	ecx
		test	eax, eax
		jnz	short loc_494CC7
		mov	dword ptr [esi], 0FFFFFFFFh
		jmp	short loc_494CCC
; ---------------------------------------------------------------------------

loc_494CC7:				; CODE XREF: .text:00494CBDj
		mov	edx, [eax+0Ch]
		mov	[esi], edx

loc_494CCC:				; CODE XREF: .text:00494CC5j
		mov	[esi+4], edi
		test	byte ptr [ebx+43h], 10h
		jnz	short loc_494D48
		cmp	dword ptr [ebx+224h], 0
		jz	short loc_494D48
		test	eax, eax
		jnz	short loc_494CFC
		push	offset aRegisters ; "Registers"
		call	_T
		pop	ecx
		push	eax		; lpString
		mov	eax, [ebx+224h]
		push	eax		; hWnd
		call	SetWindowTextW
		jmp	short loc_494D48
; ---------------------------------------------------------------------------

loc_494CFC:				; CODE XREF: .text:00494CE0j
		push	offset aRegistersOf ; "Registers of "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-200h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, [ebp-200h]
		add	eax, eax
		add	eax, edx
		push	8400h		; mode
		push	edi		; threadid
		push	eax		; s
		call	Decodethreadname
		add	esp, 0Ch
		lea	eax, [ebp-200h]
		push	eax		; lpString
		mov	ecx, [ebx+224h]
		push	ecx		; hWnd
		call	SetWindowTextW

loc_494D48:				; CODE XREF: .text:00494CD3j
					; .text:00494CDCj ...
		push	0		; bErase
		push	0		; lpRect
		mov	eax, [ebx+22Ch]
		push	eax		; hWnd
		call	InvalidateRect

loc_494D58:				; CODE XREF: .text:00494CA0j
					; .text:00494CAEj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_494D60:				; CODE XREF: .text:004775F1p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		push	ebx
		call	loc_494B88
		pop	ecx
		push	eax
		push	ebx
		call	loc_494BB4
		add	esp, 8
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_494D7C(void *, void *s, int, int, int, int, int)
loc_494D7C:				; DATA XREF: .text:00496CE6o
					; .text:00496E5Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBC8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		test	esi, esi
		jz	short loc_494D98
		cmp	dword ptr [esi+220h], 0
		jnz	short loc_494D9F

loc_494D98:				; CODE XREF: .text:00494D8Dj
		xor	eax, eax
		jmp	loc_4960AE
; ---------------------------------------------------------------------------

loc_494D9F:				; CODE XREF: .text:00494D96j
		xor	edx, edx
		mov	[ebp-10h], edx
		mov	ecx, [ebp+1Ch]
		add	ecx, 4		; switch 5 cases
		cmp	ecx, 4
		ja	loc_496099	; jumptable 00494DB3 default case
		jmp	ds:off_494DBA[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
off_494DBA	dd offset loc_494DCE	; DATA XREF: .text:00494DB3r
		dd offset loc_494DD8	; jump table for switch	statement
		dd offset loc_496099
		dd offset loc_496099
		dd offset loc_494FB4
; ---------------------------------------------------------------------------

loc_494DCE:				; CODE XREF: .text:00494DB3j
					; DATA XREF: .text:off_494DBAo
		mov	eax, 394h	; jumptable 00494DB3 case -4
		jmp	loc_4960AE
; ---------------------------------------------------------------------------

loc_494DD8:				; CODE XREF: .text:00494DB3j
					; DATA XREF: .text:off_494DBAo
		mov	ebx, [ebp+20h]	; jumptable 00494DB3 case -3
		mov	eax, [esi+220h]
		mov	edi, [eax]
		push	edi		; ordinal
		call	Findthreadbyordinal
		pop	ecx
		mov	[ebx], eax
		cmp	dword ptr [esi+268h], 0
		jnz	loc_494EBB
		cmp	dword ptr [ebx], 0
		jnz	short loc_494E08
		xor	eax, eax
		mov	[ebx+1C8h], eax
		jmp	short loc_494E78
; ---------------------------------------------------------------------------

loc_494E08:				; CODE XREF: .text:00494DFCj
		cmp	run.status, 12h
		jz	short loc_494E45
		cmp	run.status, 13h
		jz	short loc_494E45
		mov	edx, [ebx]
		cmp	dword ptr [edx+6B4h], 0
		jz	short loc_494E45
		mov	ecx, [ebx]
		push	esi
		lea	esi, [ecx+4F0h]
		lea	edi, [ebx+4]
		mov	ecx, 71h
		rep movsd
		pop	esi
		mov	dword ptr [ebx+1C8h], 1
		jmp	short loc_494E78
; ---------------------------------------------------------------------------

loc_494E45:				; CODE XREF: .text:00494E0Fj
					; .text:00494E18j ...
		mov	eax, [ebx]
		cmp	dword ptr [eax+4ECh], 0
		jnz	short loc_494E5A
		xor	edx, edx
		mov	[ebx+1C8h], edx
		jmp	short loc_494E78
; ---------------------------------------------------------------------------

loc_494E5A:				; CODE XREF: .text:00494E4Ej
		mov	ecx, [ebx]
		push	esi
		lea	esi, [ecx+328h]
		lea	edi, [ebx+4]
		mov	ecx, 71h
		rep movsd
		pop	esi
		mov	dword ptr [ebx+1C8h], 1

loc_494E78:				; CODE XREF: .text:00494E06j
					; .text:00494E43j ...
		cmp	dword ptr [ebx], 0
		jz	short loc_494E88
		mov	eax, [ebx]
		cmp	dword ptr [eax+6B4h], 0
		jnz	short loc_494E95

loc_494E88:				; CODE XREF: .text:00494E7Bj
		xor	edx, edx
		mov	[ebx+390h], edx
		jmp	loc_496099	; jumptable 00494DB3 default case
; ---------------------------------------------------------------------------

loc_494E95:				; CODE XREF: .text:00494E86j
		mov	ecx, [ebx]
		push	esi
		lea	esi, [ecx+4F0h]
		lea	edi, [ebx+1CCh]
		mov	ecx, 71h
		rep movsd
		pop	esi
		mov	dword ptr [ebx+390h], 1
		jmp	loc_496099	; jumptable 00494DB3 default case
; ---------------------------------------------------------------------------

loc_494EBB:				; CODE XREF: .text:00494DF3j
		cmp	dword ptr [ebx], 0
		jnz	short loc_494ED5
		push	1C4h		; n
		push	0		; c
		lea	eax, [ebx+4]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		jmp	short loc_494F3C
; ---------------------------------------------------------------------------

loc_494ED5:				; CODE XREF: .text:00494EBEj
		cmp	run.status, 12h
		jz	short loc_494F08
		cmp	run.status, 13h
		jz	short loc_494F08
		mov	edx, [ebx]
		cmp	dword ptr [edx+6B4h], 0
		jz	short loc_494F08
		mov	ecx, [ebx]
		push	esi
		lea	esi, [ecx+4F0h]
		lea	edi, [ebx+4]
		mov	ecx, 71h
		rep movsd
		pop	esi
		jmp	short loc_494F3C
; ---------------------------------------------------------------------------

loc_494F08:				; CODE XREF: .text:00494EDCj
					; .text:00494EE5j ...
		mov	eax, [ebx]
		cmp	dword ptr [eax+4ECh], 0
		jnz	short loc_494F28
		push	1C4h		; n
		push	0		; c
		lea	edx, [ebx+4]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		jmp	short loc_494F3C
; ---------------------------------------------------------------------------

loc_494F28:				; CODE XREF: .text:00494F11j
		mov	ecx, [ebx]
		push	esi
		lea	esi, [ecx+328h]
		lea	edi, [ebx+4]
		mov	ecx, 71h
		rep movsd
		pop	esi

loc_494F3C:				; CODE XREF: .text:00494ED3j
					; .text:00494F06j ...
		push	esi
		lea	esi, [ebx+4]
		lea	edi, [ebx+1CCh]
		mov	ecx, 71h
		rep movsd
		pop	esi
		lea	eax, [ebx+4]
		push	0		; cmd
		push	eax		; preg
		mov	edx, [esi+268h]
		push	edx		; nback
		call	Getruntrace
		add	esp, 0Ch
		test	eax, eax
		jl	short loc_494F73
		mov	dword ptr [ebx+1C8h], 1
		jmp	short loc_494F7B
; ---------------------------------------------------------------------------

loc_494F73:				; CODE XREF: .text:00494F65j
		xor	ecx, ecx
		mov	[ebx+1C8h], ecx

loc_494F7B:				; CODE XREF: .text:00494F71j
		push	0		; cmd
		lea	eax, [ebx+1CCh]
		push	eax		; preg
		mov	edx, [esi+268h]
		inc	edx
		push	edx		; nback
		call	Getruntrace
		add	esp, 0Ch
		test	eax, eax
		jl	short loc_494FA7
		mov	dword ptr [ebx+390h], 1
		jmp	loc_496099	; jumptable 00494DB3 default case
; ---------------------------------------------------------------------------

loc_494FA7:				; CODE XREF: .text:00494F96j
		xor	ecx, ecx
		mov	[ebx+390h], ecx
		jmp	loc_496099	; jumptable 00494DB3 default case
; ---------------------------------------------------------------------------

loc_494FB4:				; CODE XREF: .text:00494DB3j
					; DATA XREF: .text:off_494DBAo
		mov	ebx, [ebp+20h]	; jumptable 00494DB3 case 0
		cmp	dword ptr [ebx], 0
		jnz	short loc_494FCC
		cmp	dword ptr [esi+268h], 0
		jnz	short loc_494FCC
		xor	eax, eax
		jmp	loc_4960AE
; ---------------------------------------------------------------------------

loc_494FCC:				; CODE XREF: .text:00494FBAj
					; .text:00494FC3j
		cmp	dword ptr [ebx+1C8h], 0
		jz	short loc_494FDA
		lea	edi, [ebx+4]
		jmp	short loc_494FDC
; ---------------------------------------------------------------------------

loc_494FDA:				; CODE XREF: .text:00494FD3j
		xor	edi, edi

loc_494FDC:				; CODE XREF: .text:00494FD8j
		cmp	dword ptr [ebx+390h], 0
		jz	short loc_494FED
		add	ebx, 1CCh
		jmp	short loc_494FEF
; ---------------------------------------------------------------------------

loc_494FED:				; CODE XREF: .text:00494FE3j
		xor	ebx, ebx

loc_494FEF:				; CODE XREF: .text:00494FEBj
		mov	[ebp-28h], ebx
		mov	eax, [esi+220h]
		mov	edx, [eax+8]
		and	edx, 0Fh
		mov	[ebp-1Ch], edx
		mov	ecx, [esi+220h]
		mov	eax, [ecx+8]
		and	eax, 0F0h
		mov	[ebp-20h], eax
		push	100h		; n
		push	20h		; c
		mov	edx, [ebp+8]
		push	edx		; s
		call	__wmemset
		add	esp, 0Ch
		push	100h		; n
		push	0		; c
		mov	ecx, [ebp+0Ch]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 100h
		mov	ebx, offset stru_5475D4
		jmp	loc_496086
; ---------------------------------------------------------------------------

loc_49504B:				; CODE XREF: .text:0049608Aj
		cmp	eax, 1
		jnz	short loc_495058
		mov	eax, [ebx+8]
		jmp	loc_495173
; ---------------------------------------------------------------------------

loc_495058:				; CODE XREF: .text:0049504Ej
		cmp	eax, 2
		jnz	short loc_495075
		cmp	dword ptr [ebp-1Ch], 0
		jnz	loc_496083
		mov	eax, [ebx+8]
		add	eax, off_54A450
		jmp	loc_495173
; ---------------------------------------------------------------------------

loc_495075:				; CODE XREF: .text:0049505Bj
		cmp	eax, 3
		jnz	short loc_495092
		cmp	dword ptr [ebp-1Ch], 1
		jnz	loc_496083
		mov	eax, [ebx+8]
		add	eax, off_54A450
		jmp	loc_495173
; ---------------------------------------------------------------------------

loc_495092:				; CODE XREF: .text:00495078j
		cmp	eax, 4
		jnz	short loc_4950AF
		cmp	dword ptr [ebp-1Ch], 2
		jnz	loc_496083
		mov	eax, [ebx+8]
		add	eax, off_54A450
		jmp	loc_495173
; ---------------------------------------------------------------------------

loc_4950AF:				; CODE XREF: .text:00495095j
		cmp	eax, 5
		jnz	short loc_4950CC
		cmp	dword ptr [ebp-1Ch], 3
		jnz	loc_496083
		mov	eax, [ebx+8]
		add	eax, off_54A450
		jmp	loc_495173
; ---------------------------------------------------------------------------

loc_4950CC:				; CODE XREF: .text:004950B2j
		mov	eax, [ebx]
		cmp	eax, 6
		jz	short loc_4950E1
		cmp	eax, 7
		jz	short loc_4950E1
		cmp	eax, 8
		jnz	loc_496083

loc_4950E1:				; CODE XREF: .text:004950D1j
					; .text:004950D6j
		cmp	dword_5CBBC4, 0
		jz	loc_496083
		cmp	dword_5CBBC8, 0
		jz	loc_496083
		cmp	dword ptr [ebx], 6
		jnz	short loc_49510A
		cmp	dword ptr [ebp-20h], 0
		jnz	loc_496083

loc_49510A:				; CODE XREF: .text:004950FEj
		cmp	dword ptr [ebx], 7
		jnz	short loc_495119
		cmp	dword ptr [ebp-20h], 10h
		jnz	loc_496083

loc_495119:				; CODE XREF: .text:0049510Dj
		cmp	dword ptr [ebx], 8
		jnz	short loc_495128
		cmp	dword ptr [ebp-20h], 20h
		jnz	loc_496083

loc_495128:				; CODE XREF: .text:0049511Cj
		mov	eax, [ebx+8]
		add	eax, off_54A450
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_495142
		mov	edx, off_54A454
		inc	edx
		add	eax, edx
		jmp	short loc_495173
; ---------------------------------------------------------------------------

loc_495142:				; CODE XREF: .text:00495135j
		cmp	dword ptr [ebp-1Ch], 1
		jnz	short loc_495153
		mov	ecx, off_54A458
		inc	ecx
		add	eax, ecx
		jmp	short loc_495173
; ---------------------------------------------------------------------------

loc_495153:				; CODE XREF: .text:00495146j
		cmp	dword ptr [ebp-1Ch], 2
		jnz	short loc_495164
		mov	edx, off_54A45C
		inc	edx
		add	eax, edx
		jmp	short loc_495173
; ---------------------------------------------------------------------------

loc_495164:				; CODE XREF: .text:00495157j
		cmp	dword ptr [ebp-1Ch], 3
		jnz	short loc_495173
		mov	ecx, off_54A460
		inc	ecx
		add	eax, ecx

loc_495173:				; CODE XREF: .text:00495053j
					; .text:00495070j ...
		mov	edx, [ebp+18h]
		mov	ecx, [edx]
		add	ecx, [esi+248h]
		cmp	eax, ecx
		jnz	loc_496083
		xor	eax, eax
		mov	[ebp-14h], eax
		mov	eax, [ebx+4]
		and	eax, 1FF00h
		cmp	eax, 11100h
		jg	loc_495284
		jz	loc_4955F0
		cmp	eax, 1800h
		jg	short loc_495220
		jz	loc_495B8B
		cmp	eax, 900h
		jg	short loc_4951EF
		jz	loc_495562
		sub	eax, 100h
		jz	loc_495364
		sub	eax, 100h
		jz	loc_495364
		sub	eax, 200h
		jz	loc_49543C
		sub	eax, 200h
		jz	loc_4954AC
		jmp	loc_495EC2
; ---------------------------------------------------------------------------

loc_4951EF:				; CODE XREF: .text:004951B6j
		sub	eax, 0B00h
		jz	loc_495638
		sub	eax, 200h
		jz	loc_49572B
		sub	eax, 300h
		jz	loc_4958C6
		sub	eax, 300h
		jz	loc_495919
		jmp	loc_495EC2
; ---------------------------------------------------------------------------

loc_495220:				; CODE XREF: .text:004951A9j
		cmp	eax, 10A00h
		jg	short loc_49525E
		jz	loc_4955F0
		sub	eax, 10300h
		jz	loc_4953F9
		sub	eax, 200h
		jz	loc_4953F9
		sub	eax, 200h
		jz	loc_4954F6
		sub	eax, 100h
		jz	loc_4953F9
		jmp	loc_495EC2
; ---------------------------------------------------------------------------

loc_49525E:				; CODE XREF: .text:00495225j
		sub	eax, 10C00h
		jz	loc_4956E3
		sub	eax, 200h
		jz	loc_49576C
		sub	eax, 100h
		jz	loc_495858
		jmp	loc_495EC2
; ---------------------------------------------------------------------------

loc_495284:				; CODE XREF: .text:00495198j
		cmp	eax, 11D00h
		jg	short loc_495300
		jz	loc_495CF0
		cmp	eax, 11700h
		jg	short loc_4952CF
		jz	loc_495B37
		sub	eax, 11200h
		jz	loc_4954F6
		sub	eax, 200h
		jz	loc_4955F0
		sub	eax, 100h
		jz	loc_4959E5
		sub	eax, 100h
		jz	loc_4954F6
		jmp	loc_495EC2
; ---------------------------------------------------------------------------

loc_4952CF:				; CODE XREF: .text:00495296j
		sub	eax, 11900h
		jz	loc_495BEC
		sub	eax, 100h
		jz	loc_495C2E
		sub	eax, 100h
		jz	loc_495C2E
		sub	eax, 100h
		jz	loc_495C8B
		jmp	loc_495EC2
; ---------------------------------------------------------------------------

loc_495300:				; CODE XREF: .text:00495289j
		cmp	eax, 12200h
		jg	short loc_49533E
		jz	loc_495D52
		sub	eax, 11E00h
		jz	loc_495CF0
		sub	eax, 100h
		jz	loc_495CF0
		sub	eax, 100h
		jz	loc_495CF0
		sub	eax, 100h
		jz	loc_495D52
		jmp	loc_495EC2
; ---------------------------------------------------------------------------

loc_49533E:				; CODE XREF: .text:00495305j
		sub	eax, 12300h
		jz	loc_495DB8
		sub	eax, 100h
		jz	loc_4954F6
		sub	eax, 100h
		jz	loc_495E00
		jmp	loc_495EC2
; ---------------------------------------------------------------------------

loc_495364:				; CODE XREF: .text:004951C3j
					; .text:004951CEj
		mov	edx, [ebx+4]
		and	edx, 0F1FF00h
		cmp	edx, 100100h
		jnz	short loc_4953A9
		call	Getcpudisasmdump
		mov	[ebp-2Ch], eax
		test	eax, eax
		jz	short loc_4953A9
		mov	edx, [ebp-2Ch]
		cmp	dword ptr [edx+6FCh], 1
		jnz	short loc_4953A9
		mov	ecx, [ebp-2Ch]
		mov	edx, [ebx+4]
		and	edx, 0FFh
		mov	eax, [ecx+700h]
		cmp	eax, edx
		jnz	short loc_4953A9
		or	dword ptr [ebp-14h], 1
		jmp	short loc_4953C7
; ---------------------------------------------------------------------------

loc_4953A9:				; CODE XREF: .text:00495373j
					; .text:0049537Fj ...
		cmp	dword_57FEB4, 0
		jnz	short loc_4953C3
		mov	ecx, [ebx+4]
		and	ecx, 1FF00h
		cmp	ecx, 200h
		jnz	short loc_4953C7

loc_4953C3:				; CODE XREF: .text:004953B0j
		or	dword ptr [ebp-14h], 2

loc_4953C7:				; CODE XREF: .text:004953A7j
					; .text:004953C1j
		mov	eax, [ebx+20h]
		mov	[ebp-24h], eax
		test	byte ptr [ebx+7], 1
		jz	short loc_4953E1
		mov	edx, [ebp+10h]
		or	dword ptr [edx], 1000h
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_4953E1:				; CODE XREF: .text:004953D1j
		test	byte ptr [ebx+7], 2
		jz	loc_495EC7
		mov	ecx, [ebp+10h]
		or	dword ptr [ecx], 2000h
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_4953F9:				; CODE XREF: .text:00495232j
					; .text:0049523Dj ...
		test	edi, edi
		jnz	short loc_495418
		push	$CTW0("????????") ; "????????"
		push	100h		; n
		lea	eax, [ebp-238h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_49542E
; ---------------------------------------------------------------------------

loc_495418:				; CODE XREF: .text:004953FBj
		mov	edx, [ebx+14h]
		mov	ecx, [edi+edx]
		push	ecx		; u
		lea	eax, [ebp-238h]
		push	eax		; s
		call	Hexprint8W
		add	esp, 8

loc_49542E:				; CODE XREF: .text:00495416j
		lea	edx, [ebp-238h]
		mov	[ebp-24h], edx
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_49543C:				; CODE XREF: .text:004951D9j
		test	edi, edi
		jnz	short loc_49544A
		xor	ecx, ecx
		mov	[ebp-24h], ecx
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_49544A:				; CODE XREF: .text:0049543Ej
		mov	word ptr [ebp-238h], 0
		mov	word ptr [ebp-438h], 0
		lea	eax, [ebp-438h]
		lea	edx, [ebp-238h]
		push	eax		; comment
		push	100h		; nsymb
		push	edx		; symb
		push	8F26403h	; mode
		push	0		; amod
		mov	ecx, [ebx+14h]
		mov	eax, [edi+ecx]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		cmp	word ptr [ebp-438h], 0
		jnz	short loc_49549A
		lea	edx, [ebp-238h]
		mov	[ebp-24h], edx
		jmp	short loc_4954A3
; ---------------------------------------------------------------------------

loc_49549A:				; CODE XREF: .text:0049548Dj
		lea	ecx, [ebp-438h]
		mov	[ebp-24h], ecx

loc_4954A3:				; CODE XREF: .text:00495498j
		or	dword ptr [ebp-14h], 2
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_4954AC:				; CODE XREF: .text:004951E4j
		test	edi, edi
		jnz	short loc_4954BA
		xor	eax, eax
		mov	[ebp-24h], eax
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_4954BA:				; CODE XREF: .text:004954AEj
		mov	word ptr [ebp-238h], 0
		push	0		; comment
		lea	edx, [ebp-238h]
		push	100h		; nsymb
		push	edx		; symb
		push	26403h		; mode
		push	0		; amod
		mov	ecx, [edi+8]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		lea	eax, [ebp-238h]
		mov	[ebp-24h], eax
		or	dword ptr [ebp-14h], 2
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_4954F6:				; CODE XREF: .text:00495248j
					; .text:004952A3j ...
		test	edi, edi
		jnz	short loc_495515
		push	$CTW0("?") ; src
		push	100h		; n
		lea	edx, [ebp-238h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495554
; ---------------------------------------------------------------------------

loc_495515:				; CODE XREF: .text:004954F8j
		mov	ecx, [ebx+14h]
		mov	eax, [edi+ecx]
		and	eax, [ebx+1Ch]
		jz	short loc_49553B
		push	(offset	aTag1+8) ; src
		push	100h		; n
		lea	edx, [ebp-238h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495554
; ---------------------------------------------------------------------------

loc_49553B:				; CODE XREF: .text:0049551Ej
		push	(offset	aTag0+8) ; src
		push	100h		; n
		lea	ecx, [ebp-238h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_495554:				; CODE XREF: .text:00495513j
					; .text:00495539j
		lea	eax, [ebp-238h]
		mov	[ebp-24h], eax
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_495562:				; CODE XREF: .text:004951B8j
		test	edi, edi
		jnz	short loc_495570
		xor	edx, edx
		mov	[ebp-24h], edx
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_495570:				; CODE XREF: .text:00495564j
		mov	word ptr [ebp-238h], 28h
		mov	dword ptr [ebp-8], 1
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	dword ptr [ebp-38h], offset off_547594

loc_49558C:				; CODE XREF: .text:004955CFj
		mov	eax, [edi+2Ch]
		push	eax		; flags
		mov	edx, [ebp-4]
		push	edx		; code
		call	Checkcondition
		add	esp, 8
		test	eax, eax
		jz	short loc_4955C4
		mov	ecx, [ebp-38h]
		mov	eax, [ecx]
		push	eax
		push	offset aS_14	; "%s,"
		mov	edx, [ebp-8]
		add	edx, edx
		lea	ecx, [ebp-238h]
		add	edx, ecx
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-8], eax

loc_4955C4:				; CODE XREF: .text:0049559Ej
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-38h], 4
		cmp	dword ptr [ebp-4], 10h
		jl	short loc_49558C
		mov	eax, [ebp-8]
		lea	edx, [ebp-238h]
		mov	word ptr [ebp+eax*2-23Ah], 29h
		mov	[ebp-24h], edx
		or	dword ptr [ebp-14h], 2
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_4955F0:				; CODE XREF: .text:0049519Ej
					; .text:00495227j ...
		test	edi, edi
		jnz	short loc_49560F
		push	$CTW0("????") ; src
		push	100h		; n
		lea	ecx, [ebp-238h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_49562A
; ---------------------------------------------------------------------------

loc_49560F:				; CODE XREF: .text:004955F2j
		mov	eax, [ebx+14h]
		lea	ecx, [ebp-238h]
		mov	edx, [edi+eax]
		push	edx
		push	offset a04x_4	; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_49562A:				; CODE XREF: .text:0049560Dj
		lea	eax, [ebp-238h]
		mov	[ebp-24h], eax
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_495638:				; CODE XREF: .text:004951F4j
		mov	edx, [ebx+4]
		and	edx, 0FFh
		test	edi, edi
		mov	[ebp-18h], edx
		jz	short loc_495657
		cmp	dword_5C8950, 0
		jz	short loc_495662
		cmp	dword ptr [ebp-18h], 4
		jge	short loc_495662

loc_495657:				; CODE XREF: .text:00495646j
		mov	word ptr [ebp-238h], 0
		jmp	short loc_4956D1
; ---------------------------------------------------------------------------

loc_495662:				; CODE XREF: .text:0049564Fj
					; .text:00495655j
		mov	ecx, [ebp-18h]
		test	dword ptr [edi+ecx*4+30h], 0FFFCh
		jnz	short loc_49568A
		push	offset aNull_5	; "NULL"
		push	100h		; n
		lea	eax, [ebp-238h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4956D1
; ---------------------------------------------------------------------------

loc_49568A:				; CODE XREF: .text:0049566Dj
		mov	edx, [ebp-18h]
		mov	ecx, [edi+edx*4+60h]
		push	ecx
		mov	eax, [ebp-18h]
		mov	edx, [edi+eax*4+48h]
		push	edx
		mov	ecx, [ebp-18h]
		cmp	byte ptr [edi+ecx+78h],	0
		jz	short loc_4956B1
		push	offset a32bit	; "32bit"
		call	_T
		pop	ecx
		jmp	short loc_4956BC
; ---------------------------------------------------------------------------

loc_4956B1:				; CODE XREF: .text:004956A2j
		push	offset a16bit	; "16bit"
		call	_T
		pop	ecx

loc_4956BC:				; CODE XREF: .text:004956AFj
		push	eax
		push	offset aSLxLx	; format
		lea	eax, [ebp-238h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 14h

loc_4956D1:				; CODE XREF: .text:00495660j
					; .text:00495688j
		or	dword ptr [ebp-14h], 2
		lea	edx, [ebp-238h]
		mov	[ebp-24h], edx
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_4956E3:				; CODE XREF: .text:00495263j
		test	edi, edi
		jz	short loc_4956EC
		test	byte ptr [edi],	10h
		jnz	short loc_495707

loc_4956EC:				; CODE XREF: .text:004956E5j
		push	$CTW0("????????") ; "????????"
		push	100h		; n
		lea	ecx, [ebp-238h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_49571D
; ---------------------------------------------------------------------------

loc_495707:				; CODE XREF: .text:004956EAj
		mov	eax, [edi+10Ch]
		push	eax		; u
		lea	edx, [ebp-238h]
		push	edx		; s
		call	Hexprint8W
		add	esp, 8

loc_49571D:				; CODE XREF: .text:00495705j
		lea	ecx, [ebp-238h]
		mov	[ebp-24h], ecx
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_49572B:				; CODE XREF: .text:004951FFj
		test	edi, edi
		jz	short loc_495753
		test	byte ptr [edi],	10h
		jz	short loc_495753
		lea	eax, [ebp-238h]
		push	eax		; _name
		mov	edx, [edi+10Ch]
		push	edx		; value
		push	offset aErrcode_3 ; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_49575A

loc_495753:				; CODE XREF: .text:0049572Dj
					; .text:00495732j
		xor	ecx, ecx
		mov	[ebp-24h], ecx
		jmp	short loc_495763
; ---------------------------------------------------------------------------

loc_49575A:				; CODE XREF: .text:00495751j
		lea	eax, [ebp-238h]
		mov	[ebp-24h], eax

loc_495763:				; CODE XREF: .text:00495758j
		or	dword ptr [ebp-14h], 2
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_49576C:				; CODE XREF: .text:0049526Ej
		test	edi, edi
		jnz	short loc_49578E
		push	$CTW0("????") ; src
		push	100h		; n
		lea	edx, [ebp-238h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_49584A
; ---------------------------------------------------------------------------

loc_49578E:				; CODE XREF: .text:0049576Ej
		mov	ecx, [ebx+4]
		and	ecx, 0FFh
		add	ecx, [edi+80h]
		and	ecx, 7
		mov	[ebp-0Ch], ecx
		mov	eax, [ebp-0Ch]
		xor	edx, edx
		mov	dl, [edi+eax+0D4h]
		and	edx, 3
		sub	edx, 1
		jb	short loc_4957C4
		jz	short loc_4957E6
		dec	edx
		jz	short loc_495808
		dec	edx
		jz	short loc_49582A
		jmp	loc_49584A
; ---------------------------------------------------------------------------

loc_4957C4:				; CODE XREF: .text:004957B5j
		push	(offset	aInvalid_0+4) ;	src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-238h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_49584A
; ---------------------------------------------------------------------------

loc_4957E6:				; CODE XREF: .text:004957B7j
		push	offset aZero_4	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-238h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_49584A
; ---------------------------------------------------------------------------

loc_495808:				; CODE XREF: .text:004957BAj
		push	offset aBad	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-238h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_49584A
; ---------------------------------------------------------------------------

loc_49582A:				; CODE XREF: .text:004957BDj
		push	offset aEmpty	; "empty"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-238h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_49584A:				; CODE XREF: .text:00495789j
					; .text:004957BFj ...
		lea	eax, [ebp-238h]
		mov	[ebp-24h], eax
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_495858:				; CODE XREF: .text:00495279j
		test	edi, edi
		jnz	short loc_495877
		push	$CTW0("????") ; src
		push	100h		; n
		lea	edx, [ebp-238h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4958B8
; ---------------------------------------------------------------------------

loc_495877:				; CODE XREF: .text:0049585Aj
		mov	ecx, [ebx+4]
		and	ecx, 0FFh
		add	ecx, [edi+80h]
		and	ecx, 7
		mov	[ebp-0Ch], ecx
		lea	ecx, [ebp-238h]
		mov	eax, [ebp-0Ch]
		lea	eax, [eax+eax*4]
		mov	dx, [edi+eax*2+8Ch]
		push	edx
		push	dword ptr [edi+eax*2+88h]
		push	dword ptr [edi+eax*2+84h] ; ext
		push	ecx		; s
		call	Printfloat10
		add	esp, 10h

loc_4958B8:				; CODE XREF: .text:00495875j
		lea	eax, [ebp-238h]
		mov	[ebp-24h], eax
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_4958C6:				; CODE XREF: .text:0049520Aj
		test	edi, edi
		jnz	short loc_4958D1
		xor	edx, edx
		mov	[ebp-24h], edx
		jmp	short loc_495910
; ---------------------------------------------------------------------------

loc_4958D1:				; CODE XREF: .text:004958C8j
		mov	ecx, [ebx+4]
		and	ecx, 0FFh
		add	ecx, [edi+80h]
		and	ecx, 7
		mov	[ebp-0Ch], ecx
		push	0Ah		; size
		mov	eax, [ebp-0Ch]
		add	eax, eax
		lea	eax, [eax+eax*4]
		add	eax, edi
		add	eax, 84h
		push	eax		; data
		lea	edx, [ebp-238h]
		push	edx		; s
		call	Nameoffloat
		add	esp, 0Ch
		lea	ecx, [ebp-238h]
		mov	[ebp-24h], ecx

loc_495910:				; CODE XREF: .text:004958CFj
		or	dword ptr [ebp-14h], 2
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_495919:				; CODE XREF: .text:00495215j
		test	edi, edi
		jnz	short loc_495927
		xor	eax, eax
		mov	[ebp-24h], eax
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_495927:				; CODE XREF: .text:0049591Bj
		mov	edx, [edi+0DCh]
		and	edx, 4500h
		mov	[ebp-0Ch], edx
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_495957
		push	offset aGt	; "(GT)"
		push	100h		; n
		lea	ecx, [ebp-238h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4959D3
; ---------------------------------------------------------------------------

loc_495957:				; CODE XREF: .text:0049593Aj
		cmp	dword ptr [ebp-0Ch], 100h
		jnz	short loc_49597B
		push	offset aLt_1	; "(LT)"
		push	100h		; n
		lea	eax, [ebp-238h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4959D3
; ---------------------------------------------------------------------------

loc_49597B:				; CODE XREF: .text:0049595Ej
		cmp	dword ptr [ebp-0Ch], 4000h
		jnz	short loc_49599F
		push	offset aEq	; "(EQ)"
		push	100h		; n
		lea	edx, [ebp-238h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4959D3
; ---------------------------------------------------------------------------

loc_49599F:				; CODE XREF: .text:00495982j
		cmp	dword ptr [ebp-0Ch], 4500h
		jnz	short loc_4959CA
		push	offset aUnordered ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-238h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4959D3
; ---------------------------------------------------------------------------

loc_4959CA:				; CODE XREF: .text:004959A6j
		mov	word ptr [ebp-238h], 0

loc_4959D3:				; CODE XREF: .text:00495955j
					; .text:00495979j ...
		lea	eax, [ebp-238h]
		mov	[ebp-24h], eax
		or	dword ptr [ebp-14h], 2
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_4959E5:				; CODE XREF: .text:004952B9j
		test	edi, edi
		jnz	short loc_495A07
		push	$CTW0("???????") ; src
		push	100h		; n
		lea	edx, [ebp-238h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_495B29
; ---------------------------------------------------------------------------

loc_495A07:				; CODE XREF: .text:004959E7j
		mov	ecx, [edi+0E0h]
		and	ecx, 0C00h
		mov	[ebp-0Ch], ecx
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_495A37
		push	offset aNear_2	; "NEAR,"
		push	100h		; n
		lea	eax, [ebp-238h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495A98
; ---------------------------------------------------------------------------

loc_495A37:				; CODE XREF: .text:00495A1Aj
		cmp	dword ptr [ebp-0Ch], 400h
		jnz	short loc_495A5B
		push	offset aDown	; "DOWN,"
		push	100h		; n
		lea	edx, [ebp-238h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495A98
; ---------------------------------------------------------------------------

loc_495A5B:				; CODE XREF: .text:00495A3Ej
		cmp	dword ptr [ebp-0Ch], 800h
		jnz	short loc_495A7F
		push	offset aUp	; "  UP,"
		push	100h		; n
		lea	ecx, [ebp-238h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495A98
; ---------------------------------------------------------------------------

loc_495A7F:				; CODE XREF: .text:00495A62j
		push	offset aZero_0	; "ZERO,"
		push	100h		; n
		lea	eax, [ebp-238h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_495A98:				; CODE XREF: .text:00495A35j
					; .text:00495A59j ...
		mov	edx, [edi+0E0h]
		and	edx, 300h
		mov	[ebp-0Ch], edx
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_495AC8
		push	offset a24	; "24"
		push	0FBh		; n
		lea	ecx, [ebp-22Eh]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495B29
; ---------------------------------------------------------------------------

loc_495AC8:				; CODE XREF: .text:00495AABj
		cmp	dword ptr [ebp-0Ch], 100h
		jnz	short loc_495AEC
		push	$CTW0("??") ; src
		push	0FBh		; n
		lea	eax, [ebp-22Eh]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495B29
; ---------------------------------------------------------------------------

loc_495AEC:				; CODE XREF: .text:00495ACFj
		cmp	dword ptr [ebp-0Ch], 200h
		jnz	short loc_495B10
		push	offset a53	; "53"
		push	0FBh		; n
		lea	edx, [ebp-22Eh]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495B29
; ---------------------------------------------------------------------------

loc_495B10:				; CODE XREF: .text:00495AF3j
		push	offset a64	; "64"
		push	0FBh		; n
		lea	ecx, [ebp-22Eh]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_495B29:				; CODE XREF: .text:00495A02j
					; .text:00495AC6j ...
		lea	eax, [ebp-238h]
		mov	[ebp-24h], eax
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_495B37:				; CODE XREF: .text:00495298j
		test	edi, edi
		jnz	short loc_495B56
		push	$CTW0("????:????????") ; "????:????????"
		push	100h		; n
		lea	edx, [ebp-238h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495B7D
; ---------------------------------------------------------------------------

loc_495B56:				; CODE XREF: .text:00495B39j
		mov	ecx, [edi+0E8h]
		lea	edx, [ebp-238h]
		push	ecx
		mov	eax, [edi+0E4h]
		and	eax, 0FFFFh
		push	eax
		push	offset a04x08x_2 ; "%04X:%08X"
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h

loc_495B7D:				; CODE XREF: .text:00495B54j
		lea	ecx, [ebp-238h]
		mov	[ebp-24h], ecx
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_495B8B:				; CODE XREF: .text:004951ABj
		test	edi, edi
		jz	short loc_495B9A
		mov	eax, [edi+0E4h]
		cmp	eax, [edi+34h]
		jz	short loc_495BA4

loc_495B9A:				; CODE XREF: .text:00495B8Dj
		xor	edx, edx
		mov	[ebp-24h], edx
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_495BA4:				; CODE XREF: .text:00495B98j
		mov	word ptr [ebp-238h], 0
		mov	word ptr [ebp-438h], 0
		push	0		; comment
		lea	ecx, [ebp-238h]
		push	100h		; nsymb
		push	ecx		; symb
		push	26403h		; mode
		push	0		; amod
		mov	eax, [edi+0E8h]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		lea	edx, [ebp-238h]
		mov	[ebp-24h], edx
		or	dword ptr [ebp-14h], 2
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_495BEC:				; CODE XREF: .text:004952D4j
		test	edi, edi
		jnz	short loc_495C0B
		push	$CTW0("???? ???? ???? ????") ; "???? ???? ???? ????"
		push	100h		; n
		lea	ecx, [ebp-238h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495C20
; ---------------------------------------------------------------------------

loc_495C0B:				; CODE XREF: .text:00495BEEj
		mov	eax, [ebx+14h]
		add	eax, edi
		push	eax		; data
		lea	edx, [ebp-238h]
		push	edx		; s
		call	Printmmx
		add	esp, 8

loc_495C20:				; CODE XREF: .text:00495C09j
		lea	ecx, [ebp-238h]
		mov	[ebp-24h], ecx
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_495C2E:				; CODE XREF: .text:004952DFj
					; .text:004952EAj
		test	edi, edi
		jnz	short loc_495C4D
		push	$CTW0("????") ; src
		push	100h		; n
		lea	eax, [ebp-238h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495C7D
; ---------------------------------------------------------------------------

loc_495C4D:				; CODE XREF: .text:00495C30j
		mov	edx, [ebx+14h]
		lea	eax, [ebp-438h]
		push	dword ptr [edi+edx] ; f
		push	eax		; s
		call	Printfloat4
		add	esp, 8
		lea	edx, [ebp-438h]
		push	edx
		push	offset a13s	; "%13s"
		lea	ecx, [ebp-238h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_495C7D:				; CODE XREF: .text:00495C4Bj
		lea	eax, [ebp-238h]
		mov	[ebp-24h], eax
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_495C8B:				; CODE XREF: .text:004952F5j
		test	edi, edi
		jz	short loc_495C94
		test	byte ptr [edi],	4
		jnz	short loc_495CAF

loc_495C94:				; CODE XREF: .text:00495C8Dj
		push	$CTW0("???????? ???????? ???????? ????????") ; "???????? ???????? ???????? ????????"
		push	100h		; n
		lea	edx, [ebp-238h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495CE2
; ---------------------------------------------------------------------------

loc_495CAF:				; CODE XREF: .text:00495C92j
		mov	ecx, [ebx+14h]
		mov	eax, [edi+ecx]
		push	eax
		mov	edx, [ebx+14h]
		mov	ecx, [edi+edx+4]
		push	ecx
		mov	eax, [ebx+14h]
		mov	edx, [edi+eax+8]
		push	edx
		lea	edx, [ebp-238h]
		mov	ecx, [ebx+14h]
		mov	eax, [edi+ecx+0Ch]
		push	eax
		push	offset a08x08x08x08x_0 ; "%08X %08X %08X %08X"
		push	edx		; buffer
		call	_swprintf
		add	esp, 18h

loc_495CE2:				; CODE XREF: .text:00495CADj
		lea	ecx, [ebp-238h]
		mov	[ebp-24h], ecx
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_495CF0:				; CODE XREF: .text:0049528Bj
					; .text:00495312j ...
		test	edi, edi
		jz	short loc_495CF9
		test	byte ptr [edi],	4
		jnz	short loc_495D14

loc_495CF9:				; CODE XREF: .text:00495CF2j
		push	$CTW0("???? ????????") ; src
		push	100h		; n
		lea	eax, [ebp-238h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495D44
; ---------------------------------------------------------------------------

loc_495D14:				; CODE XREF: .text:00495CF7j
		mov	edx, [ebx+14h]
		lea	eax, [ebp-438h]
		push	dword ptr [edi+edx] ; f
		push	eax		; s
		call	Printfloat4
		add	esp, 8
		lea	edx, [ebp-438h]
		push	edx
		push	offset a13s	; "%13s"
		lea	ecx, [ebp-238h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_495D44:				; CODE XREF: .text:00495D12j
		lea	eax, [ebp-238h]
		mov	[ebp-24h], eax
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_495D52:				; CODE XREF: .text:00495307j
					; .text:00495333j
		test	edi, edi
		jz	short loc_495D5B
		test	byte ptr [edi],	4
		jnz	short loc_495D76

loc_495D5B:				; CODE XREF: .text:00495D54j
		push	$CTW0("???? ???????? ????????") ; src
		push	100h		; n
		lea	edx, [ebp-238h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495DAA
; ---------------------------------------------------------------------------

loc_495D76:				; CODE XREF: .text:00495D59j
		mov	ecx, [ebx+14h]
		lea	edx, [ebp-438h]
		push	dword ptr [edi+ecx+4]
		push	dword ptr [edi+ecx] ; d
		push	edx		; s
		call	Printfloat8
		add	esp, 0Ch
		lea	ecx, [ebp-438h]
		push	ecx
		push	offset a22s	; format
		lea	eax, [ebp-238h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_495DAA:				; CODE XREF: .text:00495D74j
		lea	edx, [ebp-238h]
		mov	[ebp-24h], edx
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_495DB8:				; CODE XREF: .text:00495343j
		test	edi, edi
		jz	short loc_495DC1
		test	byte ptr [edi],	4
		jnz	short loc_495DDC

loc_495DC1:				; CODE XREF: .text:00495DBAj
		push	$CTW0("????????") ; "????????"
		push	100h		; n
		lea	ecx, [ebp-238h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495DF2
; ---------------------------------------------------------------------------

loc_495DDC:				; CODE XREF: .text:00495DBFj
		mov	eax, [ebx+14h]
		mov	edx, [edi+eax]
		push	edx		; u
		lea	ecx, [ebp-238h]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8

loc_495DF2:				; CODE XREF: .text:00495DDAj
		lea	eax, [ebp-238h]
		mov	[ebp-24h], eax
		jmp	loc_495EC7
; ---------------------------------------------------------------------------

loc_495E00:				; CODE XREF: .text:00495359j
		test	edi, edi
		jz	short loc_495E09
		test	byte ptr [edi],	4
		jnz	short loc_495E27

loc_495E09:				; CODE XREF: .text:00495E02j
		push	$CTW0("????") ; src
		push	100h		; n
		lea	edx, [ebp-238h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_495EB7
; ---------------------------------------------------------------------------

loc_495E27:				; CODE XREF: .text:00495E07j
		mov	ecx, [ebx+14h]
		mov	eax, [edi+ecx]
		and	eax, 6000h
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_495E56
		push	offset aNear_1	; "NEAR"
		push	100h		; n
		lea	edx, [ebp-238h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495EB7
; ---------------------------------------------------------------------------

loc_495E56:				; CODE XREF: .text:00495E39j
		cmp	dword ptr [ebp-0Ch], 2000h
		jnz	short loc_495E7A
		push	offset aDown_0	; "DOWN"
		push	100h		; n
		lea	ecx, [ebp-238h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495EB7
; ---------------------------------------------------------------------------

loc_495E7A:				; CODE XREF: .text:00495E5Dj
		cmp	dword ptr [ebp-0Ch], 4000h
		jnz	short loc_495E9E
		push	offset aUp_0	; "UP  "
		push	100h		; n
		lea	eax, [ebp-238h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_495EB7
; ---------------------------------------------------------------------------

loc_495E9E:				; CODE XREF: .text:00495E81j
		push	offset aZero_1	; "ZERO"
		push	100h		; n
		lea	edx, [ebp-238h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_495EB7:				; CODE XREF: .text:00495E22j
					; .text:00495E54j ...
		lea	ecx, [ebp-238h]
		mov	[ebp-24h], ecx
		jmp	short loc_495EC7
; ---------------------------------------------------------------------------

loc_495EC2:				; CODE XREF: .text:004951EAj
					; .text:0049521Bj ...
		xor	eax, eax
		mov	[ebp-24h], eax

loc_495EC7:				; CODE XREF: .text:004953DCj
					; .text:004953E5j ...
		cmp	dword ptr [ebp-24h], 0
		jz	loc_496083
		mov	edx, [ebx+10h]
		sub	edx, [ebx+0Ch]
		mov	[ebp-30h], edx
		mov	ecx, [ebp-24h]
		push	ecx		; s
		call	_wcslen
		pop	ecx
		mov	[ebp-34h], eax
		mov	eax, [ebp-34h]
		cmp	eax, [ebp-30h]
		jge	short loc_495EF4
		lea	edx, [ebp-34h]
		jmp	short loc_495EF7
; ---------------------------------------------------------------------------

loc_495EF4:				; CODE XREF: .text:00495EEDj
		lea	edx, [ebp-30h]

loc_495EF7:				; CODE XREF: .text:00495EF2j
		mov	eax, [edx]
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jle	short loc_495F1D
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		push	ecx		; n
		mov	eax, [ebp-24h]
		push	eax		; src
		mov	edx, [ebx+0Ch]
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch

loc_495F1D:				; CODE XREF: .text:00495F00j
		mov	ecx, [ebx+0Ch]
		add	ecx, [ebp-0Ch]
		mov	[ebp-4], ecx
		mov	eax, [ebx+4]
		test	eax, 10000h
		jz	loc_49600E
		test	edi, edi
		jnz	short loc_495F41
		or	dword ptr [ebp-14h], 2
		jmp	loc_49600E
; ---------------------------------------------------------------------------

loc_495F41:				; CODE XREF: .text:00495F36j
		cmp	dword ptr [ebp-28h], 0
		jz	loc_49600E
		mov	edx, eax
		and	edx, 1FF00h
		cmp	edx, 10E00h
		jnz	short loc_495F8B
		and	eax, 0FFh
		add	eax, [edi+80h]
		and	eax, 7
		mov	[ebp-0Ch], eax
		mov	ecx, [ebp-0Ch]
		mov	edx, [ebp-28h]
		mov	al, [edi+ecx+0D4h]
		mov	ecx, [ebp-0Ch]
		cmp	al, [edx+ecx+0D4h]
		setnz	al
		and	eax, 1
		jmp	short loc_496006
; ---------------------------------------------------------------------------

loc_495F8B:				; CODE XREF: .text:00495F59j
		cmp	edx, 10F00h
		jnz	short loc_495FD3
		and	eax, 0FFh
		add	eax, [edi+80h]
		and	eax, 7
		mov	[ebp-0Ch], eax
		push	0Ah		; n
		mov	edx, [ebp-0Ch]
		add	edx, edx
		lea	edx, [edx+edx*4]
		add	edx, [ebp-28h]
		add	edx, 84h
		push	edx		; s2
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	ecx, [ecx+ecx*4]
		add	ecx, edi
		add	ecx, 84h
		push	ecx		; s1
		call	_memcmp
		add	esp, 0Ch
		jmp	short loc_496006
; ---------------------------------------------------------------------------

loc_495FD3:				; CODE XREF: .text:00495F91j
		cmp	dword ptr [ebx+1Ch], 0
		jz	short loc_495FED
		mov	eax, [ebx+14h]
		mov	edx, [ebp-28h]
		mov	ecx, [ebx+14h]
		mov	eax, [edi+eax]
		xor	eax, [edx+ecx]
		and	eax, [ebx+1Ch]
		jmp	short loc_496006
; ---------------------------------------------------------------------------

loc_495FED:				; CODE XREF: .text:00495FD7j
		mov	eax, [ebx+18h]
		push	eax		; n
		mov	edx, [ebp-28h]
		add	edx, [ebx+14h]
		push	edx		; s2
		mov	ecx, [ebx+14h]
		add	ecx, edi
		push	ecx		; s1
		call	_memcmp
		add	esp, 0Ch

loc_496006:				; CODE XREF: .text:00495F89j
					; .text:00495FD1j ...
		test	eax, eax
		jz	short loc_49600E
		or	dword ptr [ebp-14h], 1

loc_49600E:				; CODE XREF: .text:00495F2Ej
					; .text:00495F3Cj ...
		mov	eax, [esi+220h]
		mov	ecx, [ebx+4]
		and	ecx, 0F1FFFFh
		mov	edx, [eax+0Ch]
		and	edx, 0F1FFFFh
		cmp	edx, ecx
		jnz	short loc_496031
		or	dword ptr [ebp-14h], 80h

loc_496031:				; CODE XREF: .text:00496028j
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_496061
		mov	eax, [ebx+0Ch]
		mov	[ebp-8], eax
		mov	edx, [ebp+0Ch]
		mov	ecx, [ebp-8]
		lea	eax, [edx+ecx]
		mov	[ebp-38h], eax
		jmp	short loc_496059
; ---------------------------------------------------------------------------

loc_49604B:				; CODE XREF: .text:0049605Fj
		mov	dl, [ebp-14h]
		mov	ecx, [ebp-38h]
		or	[ecx], dl
		inc	dword ptr [ebp-8]
		inc	dword ptr [ebp-38h]

loc_496059:				; CODE XREF: .text:00496049j
		mov	eax, [ebp-8]
		cmp	eax, [ebx+10h]
		jle	short loc_49604B

loc_496061:				; CODE XREF: .text:00496035j
		test	byte ptr [ebx+6], 1
		jz	short loc_496075
		mov	edx, [ebx+10h]
		cmp	edx, [ebp-10h]
		jle	short loc_496075
		mov	ecx, [ebx+10h]
		mov	[ebp-10h], ecx

loc_496075:				; CODE XREF: .text:00496065j
					; .text:0049606Dj
		mov	eax, [ebp-4]
		cmp	eax, [ebp-10h]
		jle	short loc_496083
		mov	edx, [ebp-4]
		mov	[ebp-10h], edx

loc_496083:				; CODE XREF: .text:00495061j
					; .text:0049507Ej ...
		add	ebx, 24h

loc_496086:				; CODE XREF: .text:00495046j
		mov	eax, [ebx]
		test	eax, eax
		jnz	loc_49504B
		cmp	dword ptr [ebp-10h], 0
		jle	short loc_496099 ; jumptable 00494DB3 default case
		inc	dword ptr [ebp-10h]

loc_496099:				; CODE XREF: .text:00494DADj
					; .text:00494DB3j ...
		cmp	dword ptr [esi+268h], 0	; jumptable 00494DB3 default case
		jle	short loc_4960AB
		mov	edx, [ebp+10h]
		or	dword ptr [edx], 80h

loc_4960AB:				; CODE XREF: .text:004960A0j
		mov	eax, [ebp-10h]

loc_4960AE:				; CODE XREF: .text:00494D9Aj
					; .text:00494DD3j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		