.code

; int __usercall loc_4B70E4@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4B70E4:				; DATA XREF: .data:stru_5532C8o
		push	ebp		; arglist
		mov	ebp, esp
		mov	eax, [ebp+14h]
		cmp	dword_5FA98C, 0
		jz	short loc_4B7108
		cmp	dword_5FA960, 0C0000h
		jnz	short loc_4B7108
		cmp	cmdsize, 0
		jnz	short loc_4B710C

loc_4B7108:				; CODE XREF: .text:004B70F1j
					; .text:004B70FDj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B710C:				; CODE XREF: .text:004B7106j
		test	eax, eax
		jnz	short loc_4B715B
		mov	eax, decode
		test	eax, eax
		jz	short loc_4B7154
		mov	edx, pd
		mov	ecx, [edx+288h]
		sub	ecx, [edx]
		movzx	eax, byte ptr [eax+ecx]
		and	eax, 1Fh
		cmp	eax, 18h
		jz	short loc_4B7154
		cmp	eax, 19h
		jz	short loc_4B7154
		cmp	eax, 1Ah
		jz	short loc_4B7154
		cmp	eax, 1Ch
		jz	short loc_4B7154
		cmp	eax, 1Dh
		jz	short loc_4B7154
		cmp	eax, 1Eh
		jz	short loc_4B7154
		test	eax, eax
		jz	short loc_4B7154
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B7154:				; CODE XREF: .text:004B7117j
					; .text:004B7131j ...
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B715B:				; CODE XREF: .text:004B710Ej
		dec	eax
		jnz	short loc_4B71B4
		mov	eax, pd
		cmp	dword ptr [eax+298h], 0
		setz	dl
		and	edx, 1
		cmp	decode,	0
		setnz	cl
		and	ecx, 1
		push	edx		; int
		mov	edx, cmdsize
		push	ecx		; int
		push	edx		; int
		mov	eax, [eax+288h]
		push	eax		; arglist
		push	offset cmd	; src
		call	loc_49AC60
		add	esp, 14h
		test	eax, eax
		jz	short loc_4B71B0
		push	offset aNoHelpOnSele_0 ; "No help on selected command"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4B71B0:				; CODE XREF: .text:004B719Cj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B71B4:				; CODE XREF: .text:004B715Cj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B71B8:				; DATA XREF: .data:stru_5532C8o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		cmp	dword_5FA98C, 0
		jz	short loc_4B71E2
		cmp	dword_5FA960, 0C0000h
		jnz	short loc_4B71E2
		mov	edx, pd
		cmp	dword ptr [edx+298h], 0
		jz	short loc_4B71E6

loc_4B71E2:				; CODE XREF: .text:004B71C5j
					; .text:004B71D1j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B71E6:				; CODE XREF: .text:004B71E0j
		test	eax, eax
		jnz	short loc_4B7210
		push	2		; char
		mov	ecx, pd
		mov	eax, [ecx+288h]
		push	eax		; arglist
		call	loc_49A5F8
		add	esp, 8
		test	eax, eax
		jz	short loc_4B7209
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B7209:				; CODE XREF: .text:004B7203j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B7210:				; CODE XREF: .text:004B71E8j
		dec	eax
		jnz	short loc_4B722E
		push	3		; char
		mov	edx, pd
		mov	ecx, [edx+288h]
		push	ecx		; arglist
		call	loc_49A5F8
		add	esp, 8
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B722E:				; CODE XREF: .text:004B7211j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B7234:				; DATA XREF: .data:stru_552F20o
					; .data:stru_552FC8o ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, offset pd
		push	edi
		mov	eax, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	edx, [esi]
		test	edx, edx
		jz	short loc_4B7251
		test	byte ptr [edx+0Ch], 1
		jz	short loc_4B7258

loc_4B7251:				; CODE XREF: .text:004B7249j
		xor	eax, eax
		jmp	loc_4B7363
; ---------------------------------------------------------------------------

loc_4B7258:				; CODE XREF: .text:004B724Fj
		mov	ecx, [esi]
		test	byte ptr [ecx+0Eh], 4
		jnz	short loc_4B726F
		test	ebx, 80000000h
		jz	short loc_4B726F
		xor	eax, eax
		jmp	loc_4B7363
; ---------------------------------------------------------------------------

loc_4B726F:				; CODE XREF: .text:004B725Ej
					; .text:004B7266j
		mov	edx, [esi]
		test	byte ptr [edx+0Eh], 4
		jz	short loc_4B7286
		test	ebx, 80000000h
		jnz	short loc_4B7286
		xor	eax, eax
		jmp	loc_4B7363
; ---------------------------------------------------------------------------

loc_4B7286:				; CODE XREF: .text:004B7275j
					; .text:004B727Dj
		mov	edx, [esi]
		test	byte ptr [edx+0Bh], 20h
		jz	short loc_4B729D
		test	ebx, 40000000h
		jz	short loc_4B729D
		xor	eax, eax
		jmp	loc_4B7363
; ---------------------------------------------------------------------------

loc_4B729D:				; CODE XREF: .text:004B728Cj
					; .text:004B7294j
		mov	ecx, [esi]
		mov	edx, [ecx+8]
		test	edx, 20000000h
		jnz	short loc_4B72B9
		test	ebx, 20000000h
		jz	short loc_4B72B9
		xor	eax, eax
		jmp	loc_4B7363
; ---------------------------------------------------------------------------

loc_4B72B9:				; CODE XREF: .text:004B72A8j
					; .text:004B72B0j
		and	ebx, 3FFFFFFFh
		test	eax, eax
		jnz	short loc_4B72E9
		and	edx, 3FFFFFh
		cmp	ebx, edx
		jnz	short loc_4B72E2
		test	byte ptr [ecx+0Eh], 4
		mov	eax, 2
		jnz	loc_4B7363
		inc	eax
		jmp	loc_4B7363
; ---------------------------------------------------------------------------

loc_4B72E2:				; CODE XREF: .text:004B72CBj
		mov	eax, 1
		jmp	short loc_4B7363
; ---------------------------------------------------------------------------

loc_4B72E9:				; CODE XREF: .text:004B72C1j
		dec	eax
		jnz	short loc_4B7361
		cmp	ebx, 0C0110h
		jnz	short loc_4B7320
		mov	edx, [esi]
		test	byte ptr [edx+0Bh], 20h
		jz	short loc_4B7320
		mov	ecx, [esi]
		cmp	dword ptr [ecx+4E8h], 0
		jz	short loc_4B7320
		mov	eax, [esi]
		mov	edx, [eax+4E8h]
		push	edx		; data
		call	Memfree
		pop	ecx
		mov	ecx, [esi]
		xor	eax, eax
		mov	[ecx+4E8h], eax

loc_4B7320:				; CODE XREF: .text:004B72F2j
					; .text:004B72FAj ...
		mov	edx, [esi]
		mov	edi, [edx+8]
		and	edi, 3C000000h
		or	edi, ebx
		cmp	ebx, 0C0110h
		jnz	short loc_4B734E
		push	0		; psize
		mov	eax, [esi]
		mov	edx, [eax]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_4B734E
		or	edi, 4000000h

loc_4B734E:				; CODE XREF: .text:004B7333j
					; .text:004B7346j
		push	edi		; dumptype
		mov	ecx, [esi]
		push	ecx		; pd
		call	Setdumptype
		add	esp, 8
		mov	eax, 1
		jmp	short loc_4B7363
; ---------------------------------------------------------------------------

loc_4B7361:				; CODE XREF: .text:004B72EAj
		xor	eax, eax

loc_4B7363:				; CODE XREF: .text:004B7253j
					; .text:004B726Aj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4B7368:				; DATA XREF: .data:stru_5532C8o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFB8h
		push	ebx
		mov	ebx, offset pd
		mov	edx, [ebp+14h]
		mov	eax, [ebx]
		test	eax, eax
		jz	short loc_4B7389
		test	byte ptr [eax+0Ch], 1
		jnz	short loc_4B7389
		test	byte ptr [eax+0Bh], 20h
		jnz	short loc_4B7390

loc_4B7389:				; CODE XREF: .text:004B737Bj
					; .text:004B7381j
		xor	eax, eax
		jmp	loc_4B74A2
; ---------------------------------------------------------------------------

loc_4B7390:				; CODE XREF: .text:004B7387j
		test	edx, edx
		jnz	short loc_4B73CE
		mov	eax, [ebx]
		mov	edx, [eax+8]
		and	edx, 3FFFFFh
		cmp	edx, 0D0110h
		jnz	short loc_4B73C4
		cmp	dword ptr [eax+4E8h], 0
		jz	short loc_4B73C4
		cmp	word ptr [eax+4A8h], 0
		jz	short loc_4B73C4
		mov	eax, 2
		jmp	loc_4B74A2
; ---------------------------------------------------------------------------

loc_4B73C4:				; CODE XREF: .text:004B73A5j
					; .text:004B73AEj ...
		mov	eax, 1
		jmp	loc_4B74A2
; ---------------------------------------------------------------------------

loc_4B73CE:				; CODE XREF: .text:004B7392j
		dec	edx
		jnz	loc_4B74A0
		lea	edx, [ebp-8]
		push	edx		; coord
		push	2		; column
		mov	ecx, [ebx]
		add	ecx, 18h
		push	ecx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4B73F6
		or	eax, 0FFFFFFFFh
		mov	[ebp-4], eax
		mov	[ebp-8], eax

loc_4B73F6:				; CODE XREF: .text:004B73EBj
		mov	gggggggggggggg+3Eh, 0
		lea	ecx, [ebp-48h]
		mov	edx, [ebx]
		add	edx, 4A8h
		push	edx		; src
		push	20h		; n
		push	ecx		; dest
		call	StrcopyW
		mov	eax, [ebx]
		add	esp, 0Ch
		mov	edx, [eax+24Ch]
		push	edx		; fi
		lea	edx, [ebp-48h]
		mov	ecx, [ebp-4]
		push	ecx		; y
		mov	eax, [ebp-8]
		push	eax		; x
		push	edx		; strname
		push	offset aDecodeAsAStruc ; "Decode as a structure	of the following "...
		call	_T
		pop	ecx
		push	eax		; text
		push	offset aSelectStruct_0 ; "Select structure"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	ecx, [ebp+8]
		mov	eax, [ecx+22Ch]
		push	eax		; hparent
		call	Getstructuretype
		add	esp, 1Ch
		test	eax, eax
		jz	short loc_4B745D
		xor	eax, eax
		jmp	short loc_4B74A2
; ---------------------------------------------------------------------------

loc_4B745D:				; CODE XREF: .text:004B7457j
		push	1		; mode
		lea	edx, [ebp-48h]
		push	edx		; s1
		mov	ecx, [ebx]
		push	ecx		; pd
		call	loc_4B0028
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4B7476
		xor	eax, eax
		jmp	short loc_4B74A2
; ---------------------------------------------------------------------------

loc_4B7476:				; CODE XREF: .text:004B7470j
		lea	edx, [ebp-48h]
		push	edx		; src
		push	20h		; n
		push	offset gggggggggggggg ;	dest
		call	StrcopyW
		add	esp, 0Ch
		push	200D0110h	; dumptype
		mov	ecx, [ebx]
		push	ecx		; pd
		call	Setdumptype
		add	esp, 8
		mov	eax, 1
		jmp	short loc_4B74A2
; ---------------------------------------------------------------------------

loc_4B74A0:				; CODE XREF: .text:004B73CFj
		xor	eax, eax

loc_4B74A2:				; CODE XREF: .text:004B738Bj
					; .text:004B73BFj ...
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B74A8:				; DATA XREF: .data:00553760o
		mov	edx, pd
		push	ebp
		mov	ebp, esp
		test	byte ptr [edx+0Eh], 1
		mov	eax, [ebp+0Ch]
		jz	short loc_4B74CC
		push	offset aDisasm	; "DISASM"
		push	20h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4B74FA
; ---------------------------------------------------------------------------

loc_4B74CC:				; CODE XREF: .text:004B74B8j
		mov	ecx, pd
		test	byte ptr [ecx+0Eh], 4
		jz	short loc_4B74EA
		push	offset aStack_1	; "STACK"
		push	20h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4B74FA
; ---------------------------------------------------------------------------

loc_4B74EA:				; CODE XREF: .text:004B74D6j
		push	offset aDump_2	; "DUMP"
		push	20h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4B74FA:				; CODE XREF: .text:004B74CAj
					; .text:004B74E8j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 336. _Setdumptype
; Exported entry 711. Setdumptype

; void __cdecl Setdumptype(t_dump *pd, ulong dumptype)
		public Setdumptype
Setdumptype:				; CODE XREF: .text:004777BCp
					; .text:00477941p ...
		push	ebp		; _Setdumptype
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	loc_4B7C26
		cmp	dword ptr [esi+298h], 0
		jz	short loc_4B752F
		and	edi, 0FBFFFFFFh
		mov	eax, [esi+4A4h]
		jmp	short loc_4B7551
; ---------------------------------------------------------------------------

loc_4B752F:				; CODE XREF: .text:004B751Fj
		cmp	dword ptr [esi+14h], 0
		jnz	short loc_4B753D
		mov	eax, [esi+4A4h]
		jmp	short loc_4B7551
; ---------------------------------------------------------------------------

loc_4B753D:				; CODE XREF: .text:004B7533j
		mov	edx, [esi]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4B754E
		xor	eax, eax
		jmp	short loc_4B7551
; ---------------------------------------------------------------------------

loc_4B754E:				; CODE XREF: .text:004B7548j
		mov	eax, [eax+60h]

loc_4B7551:				; CODE XREF: .text:004B752Dj
					; .text:004B753Bj ...
		test	eax, eax
		jnz	short loc_4B755B
		and	edi, 0F7FFFFFFh

loc_4B755B:				; CODE XREF: .text:004B7553j
		lea	ebx, [esi+0A4h]
		xor	edx, edx
		test	eax, eax
		jz	short loc_4B7568
		inc	edx

loc_4B7568:				; CODE XREF: .text:004B7565j
		test	edi, 10000000h
		mov	[ebx+90h], edx
		jz	short loc_4B7586
		mov	dword ptr [ebx+8], offset aLocked ; "Locked"
		mov	dword ptr [ebx+4Ch], offset aPressToAllowAu ; "Press to	allow automatic	repositioning"
		jmp	short loc_4B75AC
; ---------------------------------------------------------------------------

loc_4B7586:				; CODE XREF: .text:004B7574j
		test	edi, 8000000h
		jz	short loc_4B759E
		mov	dword ptr [ebx+8], offset aBackup_0 ; "Backup"
		mov	dword ptr [ebx+4Ch], offset aPressToViewCur ; "Press to	view current data"
		jmp	short loc_4B75AC
; ---------------------------------------------------------------------------

loc_4B759E:				; CODE XREF: .text:004B758Cj
		mov	dword ptr [ebx+8], offset aAddress_0 ; "Address"
		mov	dword ptr [ebx+4Ch], offset aAddressOfFirst ; "Address of first	displayed byte in a ro"...

loc_4B75AC:				; CODE XREF: .text:004B7584j
					; .text:004B759Cj
		mov	eax, edi
		and	eax, 3F0000h
		cmp	eax, 0C0000h
		jnz	short loc_4B75C9
		cmp	dword ptr [esi+298h], 0
		jnz	short loc_4B75C9
		test	byte ptr [esi+0Eh], 1
		jnz	short loc_4B75CF

loc_4B75C9:				; CODE XREF: .text:004B75B8j
					; .text:004B75C1j
		and	edi, 0FCFFFFFFh

loc_4B75CF:				; CODE XREF: .text:004B75C7j
		mov	dword ptr [ebx+0D4h], 9
		mov	ecx, [esi+8]
		xor	ecx, edi
		test	ecx, 0C0FFFFFFh
		jnz	short loc_4B7610
		mov	[esi+8], edi
		mov	eax, edi
		and	eax, 3F0000h
		cmp	eax, 0C0000h
		jnz	short loc_4B7601
		push	edi		; dumptype
		push	esi		; pd
		call	_sub_4AE9A0
		add	esp, 8

loc_4B7601:				; CODE XREF: .text:004B75F5j
		add	esi, 18h
		push	esi
		call	loc_41A554
		pop	ecx
		jmp	loc_4B7C26
; ---------------------------------------------------------------------------

loc_4B7610:				; CODE XREF: .text:004B75E4j
		mov	eax, edi
		mov	edx, edi
		and	eax, 0FF00h
		mov	ecx, edi
		shr	eax, 8
		and	ecx, 3F0000h
		and	edx, 0FFh
		cmp	ecx, 80000h
		jg	short loc_4B7698
		jz	loc_4B793F
		cmp	ecx, 40000h
		jg	short loc_4B766F
		jz	loc_4B7815
		sub	ecx, 10000h
		jz	loc_4B76EC
		sub	ecx, 10000h
		jz	loc_4B773E
		sub	ecx, 10000h
		jz	loc_4B77E4
		jmp	loc_4B7C26
; ---------------------------------------------------------------------------

loc_4B766F:				; CODE XREF: .text:004B763Ej
		sub	ecx, 50000h
		jz	loc_4B7846
		sub	ecx, 10000h
		jz	loc_4B7896
		sub	ecx, 10000h
		jz	loc_4B78E6
		jmp	loc_4B7C26
; ---------------------------------------------------------------------------

loc_4B7698:				; CODE XREF: .text:004B7630j
		cmp	ecx, 0C0000h
		jg	short loc_4B76CF
		jz	loc_4B7B0C
		sub	ecx, 90000h
		jz	loc_4B79B4
		sub	ecx, 10000h
		jz	loc_4B7A10
		sub	ecx, 10000h
		jz	loc_4B7A8E
		jmp	loc_4B7C26
; ---------------------------------------------------------------------------

loc_4B76CF:				; CODE XREF: .text:004B769Ej
		sub	ecx, 0D0000h
		jz	loc_4B7B90
		sub	ecx, 10000h
		jz	loc_4B7792
		jmp	loc_4B7C26
; ---------------------------------------------------------------------------

loc_4B76EC:				; CODE XREF: .text:004B764Cj
		mov	dword ptr [esi+10h], 3
		mov	dword ptr [ebx], 3
		lea	edx, [eax+eax*2]
		mov	dword ptr [ebx+0Ch], offset aHexDump_0 ; "Hex dump"
		mov	dword ptr [ebx+50h], offset aHexadecimalDum ; "Hexadecimal dump, press to change dump "...
		mov	dword ptr [ebx+94h], 5051h
		mov	[ebx+0D8h], edx
		inc	eax
		mov	dword ptr [ebx+10h], offset aAscii ; "ASCII"
		mov	dword ptr [ebx+54h], offset aAsciiDumpPress ; "ASCII dump, press to toggle between UNI"...
		mov	dword ptr [ebx+98h], 100F001h
		mov	[ebx+0DCh], eax
		jmp	loc_4B7C19
; ---------------------------------------------------------------------------

loc_4B773E:				; CODE XREF: .text:004B7658j
		mov	dword ptr [esi+10h], 3
		mov	dword ptr [ebx], 3
		lea	ecx, [eax+eax*2]
		mov	dword ptr [ebx+0Ch], offset aHexDump_0 ; "Hex dump"
		mov	dword ptr [ebx+50h], offset aHexadecimalDum ; "Hexadecimal dump, press to change dump "...
		mov	dword ptr [ebx+94h], 5051h
		mov	[ebx+0D8h], ecx
		mov	dword ptr [ebx+10h], offset aUnicode_2 ; "UNICODE"
		mov	dword ptr [ebx+54h], offset aUnicodeDumpPre ; "UNICODE dump, press to toggle between U"...
		shr	eax, 1
		mov	dword ptr [ebx+98h], 0F021h
		inc	eax
		mov	[ebx+0DCh], eax
		jmp	loc_4B7C19
; ---------------------------------------------------------------------------

loc_4B7792:				; CODE XREF: .text:004B76E1j
		mov	dword ptr [esi+10h], 3
		mov	dword ptr [ebx], 3
		lea	edx, [eax+eax*2]
		mov	dword ptr [ebx+0Ch], offset aHexDump_0 ; "Hex dump"
		mov	dword ptr [ebx+50h], offset aHexadecimalDum ; "Hexadecimal dump, press to change dump "...
		mov	dword ptr [ebx+94h], 5051h
		mov	[ebx+0D8h], edx
		inc	eax
		mov	dword ptr [ebx+10h], offset aMultibyte ; "Multibyte"
		mov	dword ptr [ebx+54h], offset aMultibyteTextP ; "Multibyte text, press to	change to UNIC"...
		mov	dword ptr [ebx+98h], 200F021h
		mov	[ebx+0DCh], eax
		jmp	loc_4B7C19
; ---------------------------------------------------------------------------

loc_4B77E4:				; CODE XREF: .text:004B7664j
		mov	dword ptr [esi+10h], 1
		mov	dword ptr [ebx], 2
		inc	eax
		mov	dword ptr [ebx+0Ch], offset aAsciiDump ; "ASCII	dump"
		mov	dword ptr [ebx+50h], offset aAsciiDumpPre_0 ; "ASCII dump, press to change dump	type"
		mov	dword ptr [ebx+94h], 1004001h
		mov	[ebx+0D8h], eax
		jmp	loc_4B7C19
; ---------------------------------------------------------------------------

loc_4B7815:				; CODE XREF: .text:004B7640j
		mov	dword ptr [esi+10h], 1
		mov	dword ptr [ebx], 2
		inc	eax
		mov	dword ptr [ebx+0Ch], offset aUnicodeDump ; "UNICODE dump"
		mov	dword ptr [ebx+50h], offset aUnicodeDumpP_0 ; "UNICODE dump, press to change dump type"
		mov	dword ptr [ebx+94h], 4021h
		mov	[ebx+0D8h], eax
		jmp	loc_4B7C19
; ---------------------------------------------------------------------------

loc_4B7846:				; CODE XREF: .text:004B7675j
		mov	dword ptr [ebx], 2
		cmp	edx, 2
		jnz	short loc_4B7868
		mov	dword ptr [ebx+0Ch], offset a16BitSignedDec ; "16-bit signed decimal dump"
		mov	dword ptr [ebx+50h], offset a16BitSignedD_1 ; "16-bit signed decimal dump, press to ch"...
		mov	dword ptr [esi+10h], 8
		jmp	short loc_4B787D
; ---------------------------------------------------------------------------

loc_4B7868:				; CODE XREF: .text:004B784Fj
		mov	dword ptr [ebx+0Ch], offset a32BitSignedD_0 ; "32-bit signed decimal dump"
		mov	dword ptr [ebx+50h], offset a32BitSignedDec ; "32-bit signed decimal dump, press to ch"...
		mov	dword ptr [esi+10h], 0Eh

loc_4B787D:				; CODE XREF: .text:004B7866j
		mov	dword ptr [ebx+94h], 1
		imul	dword ptr [esi+10h]
		inc	eax
		mov	[ebx+0D8h], eax
		jmp	loc_4B7C19
; ---------------------------------------------------------------------------

loc_4B7896:				; CODE XREF: .text:004B7681j
		mov	dword ptr [ebx], 2
		cmp	edx, 2
		jnz	short loc_4B78B8
		mov	dword ptr [ebx+0Ch], offset a16BitUnsignedD ; "16-bit unsigned decimal dump"
		mov	dword ptr [ebx+50h], offset a16BitUnsigne_0 ; "16-bit unsigned decimal dump, press to "...
		mov	dword ptr [esi+10h], 8
		jmp	short loc_4B78CD
; ---------------------------------------------------------------------------

loc_4B78B8:				; CODE XREF: .text:004B789Fj
		mov	dword ptr [ebx+0Ch], offset a32BitUnsigne_0 ; "32-bit unsigned decimal dump"
		mov	dword ptr [ebx+50h], offset a32BitUnsignedD ; "32-bit unsigned decimal dump, press to "...
		mov	dword ptr [esi+10h], 0Eh

loc_4B78CD:				; CODE XREF: .text:004B78B6j
		mov	dword ptr [ebx+94h], 1
		imul	dword ptr [esi+10h]
		inc	eax
		mov	[ebx+0D8h], eax
		jmp	loc_4B7C19
; ---------------------------------------------------------------------------

loc_4B78E6:				; CODE XREF: .text:004B768Dj
		mov	dword ptr [ebx], 2
		cmp	edx, 2
		jnz	short loc_4B7908
		mov	dword ptr [ebx+0Ch], offset a16BitHexDump ; "16-bit hex	dump"
		mov	dword ptr [ebx+50h], offset a16BitHexadecim ; "16-bit hexadecimal dump,	press to chang"...
		mov	dword ptr [esi+10h], 8
		jmp	short loc_4B7926
; ---------------------------------------------------------------------------

loc_4B7908:				; CODE XREF: .text:004B78EFj
		cmp	edx, 4
		jnz	loc_4B7C26
		mov	dword ptr [ebx+0Ch], offset a32BitHexDump ; "32-bit hex	dump"
		mov	dword ptr [ebx+50h], offset a32BitHexadec_2 ; "32-bit hexadecimal dump,	press to chang"...
		mov	dword ptr [esi+10h], 0Eh

loc_4B7926:				; CODE XREF: .text:004B7906j
		mov	dword ptr [ebx+94h], 1
		imul	dword ptr [esi+10h]
		inc	eax
		mov	[ebx+0D8h], eax
		jmp	loc_4B7C19
; ---------------------------------------------------------------------------

loc_4B793F:				; CODE XREF: .text:004B7632j
		mov	dword ptr [ebx], 2
		cmp	edx, 4
		jnz	short loc_4B7961
		mov	dword ptr [ebx+0Ch], offset a32BitFloatingP ; "32-bit floating-point dump"
		mov	dword ptr [ebx+50h], offset a32BitFloatin_3 ; "32-bit floating-point numbers, press to"...
		mov	dword ptr [esi+10h], 11h
		jmp	short loc_4B799B
; ---------------------------------------------------------------------------

loc_4B7961:				; CODE XREF: .text:004B7948j
		cmp	edx, 8
		jnz	short loc_4B797D
		mov	dword ptr [ebx+0Ch], offset a64BitFloatingP ; "64-bit floating-point dump"
		mov	dword ptr [ebx+50h], offset a64BitFloatin_2 ; "64-bit floating-point numbers, press to"...
		mov	dword ptr [esi+10h], 1Ah
		jmp	short loc_4B799B
; ---------------------------------------------------------------------------

loc_4B797D:				; CODE XREF: .text:004B7964j
		cmp	edx, 0Ah
		jnz	loc_4B7C26
		mov	dword ptr [ebx+0Ch], offset a80BitFloatin_0 ; "80-bit floating-point dump"
		mov	dword ptr [ebx+50h], offset a80BitFloatin_3 ; "80-bit floating-point numbers, press to"...
		mov	dword ptr [esi+10h], 21h

loc_4B799B:				; CODE XREF: .text:004B795Fj
					; .text:004B797Bj
		mov	dword ptr [ebx+94h], 1
		imul	dword ptr [esi+10h]
		inc	eax
		mov	[ebx+0D8h], eax
		jmp	loc_4B7C19
; ---------------------------------------------------------------------------

loc_4B79B4:				; CODE XREF: .text:004B76ACj
		mov	dword ptr [esi+10h], 8
		mov	dword ptr [ebx], 3
		mov	edx, 0Ah
		mov	dword ptr [ebx+0Ch], offset aValue ; "Value"
		mov	dword ptr [ebx+50h], offset a32BitAddressPr ; "32-bit address, press to	change dump ty"...
		mov	dword ptr [ebx+94h], 1
		test	byte ptr [esi+0Eh], 7
		jnz	short loc_4B79E5
		dec	edx

loc_4B79E5:				; CODE XREF: .text:004B79E2j
		mov	[ebx+0D8h], edx
		xor	ecx, ecx
		mov	dword ptr [ebx+10h], (offset aProfileComment+12h) ; "Comments"
		mov	dword ptr [ebx+54h], offset aAddressRelated ; "Address-related comments"
		mov	[ebx+98h], ecx
		mov	dword ptr [ebx+0DCh], 100h
		jmp	loc_4B7C19
; ---------------------------------------------------------------------------

loc_4B7A10:				; CODE XREF: .text:004B76B8j
		mov	dword ptr [esi+10h], 8
		mov	dword ptr [ebx], 4
		mov	eax, 0Ah
		mov	dword ptr [ebx+0Ch], offset aValue ; "Value"
		mov	dword ptr [ebx+50h], offset a32BitAddressPr ; "32-bit address, press to	change dump ty"...
		mov	dword ptr [ebx+94h], 1
		test	byte ptr [esi+0Eh], 7
		jnz	short loc_4B7A41
		dec	eax

loc_4B7A41:				; CODE XREF: .text:004B7A3Ej
		mov	[ebx+0D8h], eax
		xor	edx, edx
		mov	dword ptr [ebx+10h], offset aAscii ; "ASCII"
		mov	dword ptr [ebx+54h], offset aAsciiDumpPress ; "ASCII dump, press to toggle between UNI"...
		mov	dword ptr [ebx+98h], 1004001h
		mov	dword ptr [ebx+0DCh], 5
		mov	dword ptr [ebx+14h], (offset aProfileComment+12h) ; "Comments"
		mov	dword ptr [ebx+58h], offset aAddressRelated ; "Address-related comments"
		mov	[ebx+9Ch], edx
		mov	dword ptr [ebx+0E0h], 100h
		jmp	loc_4B7C19
; ---------------------------------------------------------------------------

loc_4B7A8E:				; CODE XREF: .text:004B76C4j
		mov	dword ptr [esi+10h], 8
		mov	dword ptr [ebx], 4
		mov	ecx, 0Ah
		mov	dword ptr [ebx+0Ch], offset aValue ; "Value"
		mov	dword ptr [ebx+50h], offset a32BitAddressPr ; "32-bit address, press to	change dump ty"...
		mov	dword ptr [ebx+94h], 1
		test	byte ptr [esi+0Eh], 7
		jnz	short loc_4B7ABF
		dec	ecx

loc_4B7ABF:				; CODE XREF: .text:004B7ABCj
		mov	[ebx+0D8h], ecx
		xor	eax, eax
		mov	dword ptr [ebx+10h], offset aUnicode_2 ; "UNICODE"
		mov	dword ptr [ebx+54h], offset aUnicodeDumpPre ; "UNICODE dump, press to toggle between U"...
		mov	dword ptr [ebx+98h], 4021h
		mov	dword ptr [ebx+0DCh], 3
		mov	dword ptr [ebx+14h], (offset aProfileComment+12h) ; "Comments"
		mov	dword ptr [ebx+58h], offset aAddressRelated ; "Address-related comments"
		mov	[ebx+9Ch], eax
		mov	dword ptr [ebx+0E0h], 100h
		jmp	loc_4B7C19
; ---------------------------------------------------------------------------

loc_4B7B0C:				; CODE XREF: .text:004B76A0j
		mov	dword ptr [esi+10h], 100h
		mov	dword ptr [ebx], 4
		mov	dword ptr [ebx+0Ch], offset aHexDump_0 ; "Hex dump"
		mov	dword ptr [ebx+50h], offset aHexadecimalD_0 ; "Hexadecimal dump	of disassembled	comman"...
		mov	dword ptr [ebx+94h], 0F000h
		mov	dword ptr [ebx+0D8h], 11h
		mov	dword ptr [ebx+10h], offset aCommand_1 ; "Command"
		mov	dword ptr [ebx+54h], offset aDisassembled_1 ; "Disassembled commands"
		mov	dword ptr [ebx+98h], 1000h
		mov	dword ptr [ebx+0DCh], 28h
		push	edi		; dumptype
		push	esi		; pd
		call	_sub_4AE9A0
		add	esp, 8
		test	byte ptr [esi+0Eh], 1
		jz	short loc_4B7B79
		mov	dword ptr [ebx+9Ch], 1
		jmp	short loc_4B7B81
; ---------------------------------------------------------------------------

loc_4B7B79:				; CODE XREF: .text:004B7B6Bj
		xor	edx, edx
		mov	[ebx+9Ch], edx

loc_4B7B81:				; CODE XREF: .text:004B7B77j
		mov	dword ptr [ebx+0E0h], 100h
		jmp	loc_4B7C19
; ---------------------------------------------------------------------------

loc_4B7B90:				; CODE XREF: .text:004B76D5j
		mov	dword ptr [esi+10h], 100h
		mov	dword ptr [ebx], 4
		mov	ecx, 3
		mov	dword ptr [ebx+0Ch], offset aHexDump_0 ; "Hex dump"
		mov	dword ptr [ebx+50h], offset aHexadecimalD_1 ; "Hexadecimal dump	of decoded data"
		mov	dword ptr [ebx+94h], 0F000h
		test	edi, 20000000h
		jnz	short loc_4B7BC5
		add	ecx, 0Ah

loc_4B7BC5:				; CODE XREF: .text:004B7BC0j
		mov	[ebx+0D8h], ecx
		mov	eax, 12h
		mov	dword ptr [ebx+10h], offset aDecodedData ; "Decoded data"
		mov	dword ptr [ebx+54h], offset aDecodedData ; "Decoded data"
		mov	dword ptr [ebx+98h], 1000h
		test	edi, 20000000h
		jnz	short loc_4B7BF3
		add	eax, 6

loc_4B7BF3:				; CODE XREF: .text:004B7BEEj
		mov	[ebx+0DCh], eax
		xor	edx, edx
		mov	dword ptr [ebx+14h], (offset aProfileComment+12h) ; "Comments"
		mov	dword ptr [ebx+58h], (offset aProfileComment+12h) ; "Comments"
		mov	[ebx+9Ch], edx
		mov	dword ptr [ebx+0E0h], 100h

loc_4B7C19:				; CODE XREF: .text:004B7739j
					; .text:004B778Dj ...
		mov	[esi+8], edi
		add	esi, 18h
		push	esi		; pt
		call	Defaultbar
		pop	ecx

loc_4B7C26:				; CODE XREF: .text:004B7512j
					; .text:004B760Bj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4B7C2C:				; CODE XREF: .text:00477E93p
					; .text:00477EFDp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	loc_4B7CCB
		cmp	dword ptr [ebx+298h], 0
		jz	short loc_4B7C4C
		mov	eax, [ebx+4A4h]
		jmp	short loc_4B7C6E
; ---------------------------------------------------------------------------

loc_4B7C4C:				; CODE XREF: .text:004B7C42j
		cmp	dword ptr [ebx+14h], 0
		jnz	short loc_4B7C5A
		mov	eax, [ebx+4A4h]
		jmp	short loc_4B7C6E
; ---------------------------------------------------------------------------

loc_4B7C5A:				; CODE XREF: .text:004B7C50j
		mov	edx, [ebx]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4B7C6B
		xor	eax, eax
		jmp	short loc_4B7C6E
; ---------------------------------------------------------------------------

loc_4B7C6B:				; CODE XREF: .text:004B7C65j
		mov	eax, [eax+60h]

loc_4B7C6E:				; CODE XREF: .text:004B7C4Aj
					; .text:004B7C58j ...
		test	eax, eax
		jnz	short loc_4B7C8D
		test	byte ptr [ebx+0Bh], 8
		jz	short loc_4B7C8D
		mov	edx, [ebx+8]
		and	edx, 0F7FFFFFFh
		push	edx		; dumptype
		push	ebx		; pd
		call	Setdumptype
		add	esp, 8
		jmp	short loc_4B7CB7
; ---------------------------------------------------------------------------

loc_4B7C8D:				; CODE XREF: .text:004B7C70j
					; .text:004B7C76j
		test	byte ptr [ebx+134h], 1
		jnz	short loc_4B7CA3
		test	eax, eax
		jz	short loc_4B7CA3
		or	dword ptr [ebx+134h], 1
		jmp	short loc_4B7CB7
; ---------------------------------------------------------------------------

loc_4B7CA3:				; CODE XREF: .text:004B7C94j
					; .text:004B7C98j
		test	byte ptr [ebx+134h], 1
		jz	short loc_4B7CCB
		test	eax, eax
		jnz	short loc_4B7CCB
		and	dword ptr [ebx+134h], 0FFFFFFFEh

loc_4B7CB7:				; CODE XREF: .text:004B7C8Bj
					; .text:004B7CA1j
		mov	eax, [ebx+244h]
		test	eax, eax
		jz	short loc_4B7CCB
		push	0		; bErase
		push	0		; lpRect
		push	eax		; hWnd
		call	InvalidateRect

loc_4B7CCB:				; CODE XREF: .text:004B7C35j
					; .text:004B7CAAj ...
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 337. _Dumpback
; Exported entry 477. Dumpback

; int __cdecl Dumpback(t_dump *pd, ulong _addr, int n)
		public Dumpback
Dumpback:				; CODE XREF: .text:004B8CAAp
					; .text:004B8CD8p ...
		push	ebp		; _Dumpback
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4B7CE6
		mov	eax, esi
		jmp	loc_4B7D87
; ---------------------------------------------------------------------------

loc_4B7CE6:				; CODE XREF: .text:004B7CDDj
		cmp	dword ptr [ebx+298h], 0
		jz	short loc_4B7D10
		test	byte ptr [ebx+0Bh], 8
		jz	short loc_4B7D06
		cmp	dword ptr [ebx+4A4h], 0
		jz	short loc_4B7D06
		mov	eax, [ebx+4A4h]
		jmp	short loc_4B7D0C
; ---------------------------------------------------------------------------

loc_4B7D06:				; CODE XREF: .text:004B7CF3j
					; .text:004B7CFCj
		mov	eax, [ebx+298h]

loc_4B7D0C:				; CODE XREF: .text:004B7D04j
		xor	edx, edx
		jmp	short loc_4B7D71
; ---------------------------------------------------------------------------

loc_4B7D10:				; CODE XREF: .text:004B7CEDj
		mov	edx, [ebx+8]
		test	edx, 8000000h
		jnz	short loc_4B7D3D
		xor	eax, eax
		mov	ecx, [ebx+4E8h]
		test	ecx, ecx
		jz	short loc_4B7D2B
		mov	edx, ecx
		jmp	short loc_4B7D71
; ---------------------------------------------------------------------------

loc_4B7D2B:				; CODE XREF: .text:004B7D25j
		test	edx, 4000000h
		mov	ecx, 1
		jnz	short loc_4B7D39
		dec	ecx

loc_4B7D39:				; CODE XREF: .text:004B7D36j
		mov	edx, ecx
		jmp	short loc_4B7D71
; ---------------------------------------------------------------------------

loc_4B7D3D:				; CODE XREF: .text:004B7D19j
		cmp	dword ptr [ebx+14h], 0
		jnz	short loc_4B7D4D
		mov	eax, [ebx+4A4h]
		xor	edx, edx
		jmp	short loc_4B7D71
; ---------------------------------------------------------------------------

loc_4B7D4D:				; CODE XREF: .text:004B7D41j
		mov	eax, [ebx]
		push	eax		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_4B7D68
		mov	ecx, [eax]
		cmp	ecx, [ebx]
		jnz	short loc_4B7D68
		mov	edx, [eax+4]
		cmp	edx, [ebx+4]
		jnb	short loc_4B7D6C

loc_4B7D68:				; CODE XREF: .text:004B7D58j
					; .text:004B7D5Ej
		xor	eax, eax
		jmp	short loc_4B7D6F
; ---------------------------------------------------------------------------

loc_4B7D6C:				; CODE XREF: .text:004B7D66j
		mov	eax, [eax+60h]

loc_4B7D6F:				; CODE XREF: .text:004B7D6Aj
		xor	edx, edx

loc_4B7D71:				; CODE XREF: .text:004B7D0Ej
					; .text:004B7D29j ...
		push	edx		; decode
		mov	ecx, [ebp+10h]
		push	ecx		; n
		push	esi		; ip
		mov	edx, [ebx+4]
		push	edx		; size
		mov	ecx, [ebx]
		push	ecx		; base
		push	eax		; copy
		call	Disassembleback
		add	esp, 18h

loc_4B7D87:				; CODE XREF: .text:004B7CE1j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 338. _Dumpforward
; Exported entry 481. Dumpforward

; int __cdecl Dumpforward(t_dump *pd, ulong _addr, int n)
		public Dumpforward
Dumpforward:				; CODE XREF: .text:00478492p
					; .text:004A6A9Dp ...
		push	ebp		; _Dumpforward
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4B7DA2
		mov	eax, esi
		jmp	loc_4B7E43
; ---------------------------------------------------------------------------

loc_4B7DA2:				; CODE XREF: .text:004B7D99j
		cmp	dword ptr [ebx+298h], 0
		jz	short loc_4B7DCC
		test	byte ptr [ebx+0Bh], 8
		jz	short loc_4B7DC2
		cmp	dword ptr [ebx+4A4h], 0
		jz	short loc_4B7DC2
		mov	eax, [ebx+4A4h]
		jmp	short loc_4B7DC8
; ---------------------------------------------------------------------------

loc_4B7DC2:				; CODE XREF: .text:004B7DAFj
					; .text:004B7DB8j
		mov	eax, [ebx+298h]

loc_4B7DC8:				; CODE XREF: .text:004B7DC0j
		xor	edx, edx
		jmp	short loc_4B7E2D
; ---------------------------------------------------------------------------

loc_4B7DCC:				; CODE XREF: .text:004B7DA9j
		mov	edx, [ebx+8]
		test	edx, 8000000h
		jnz	short loc_4B7DF9
		xor	eax, eax
		mov	ecx, [ebx+4E8h]
		test	ecx, ecx
		jz	short loc_4B7DE7
		mov	edx, ecx
		jmp	short loc_4B7E2D
; ---------------------------------------------------------------------------

loc_4B7DE7:				; CODE XREF: .text:004B7DE1j
		test	edx, 4000000h
		mov	ecx, 1
		jnz	short loc_4B7DF5
		dec	ecx

loc_4B7DF5:				; CODE XREF: .text:004B7DF2j
		mov	edx, ecx
		jmp	short loc_4B7E2D
; ---------------------------------------------------------------------------

loc_4B7DF9:				; CODE XREF: .text:004B7DD5j
		cmp	dword ptr [ebx+14h], 0
		jnz	short loc_4B7E09
		mov	eax, [ebx+4A4h]
		xor	edx, edx
		jmp	short loc_4B7E2D
; ---------------------------------------------------------------------------

loc_4B7E09:				; CODE XREF: .text:004B7DFDj
		mov	eax, [ebx]
		push	eax		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_4B7E24
		mov	ecx, [eax]
		cmp	ecx, [ebx]
		jnz	short loc_4B7E24
		mov	edx, [eax+4]
		cmp	edx, [ebx+4]
		jnb	short loc_4B7E28

loc_4B7E24:				; CODE XREF: .text:004B7E14j
					; .text:004B7E1Aj
		xor	eax, eax
		jmp	short loc_4B7E2B
; ---------------------------------------------------------------------------

loc_4B7E28:				; CODE XREF: .text:004B7E22j
		mov	eax, [eax+60h]

loc_4B7E2B:				; CODE XREF: .text:004B7E26j
		xor	edx, edx

loc_4B7E2D:				; CODE XREF: .text:004B7DCAj
					; .text:004B7DE5j ...
		push	edx		; decode
		mov	ecx, [ebp+10h]
		push	ecx		; n
		push	esi		; ip
		mov	edx, [ebx+4]
		push	edx		; size
		mov	ecx, [ebx]
		push	ecx		; base
		push	eax		; copy
		call	Disassembleforward
		add	esp, 18h

loc_4B7E43:				; CODE XREF: .text:004B7D9Dj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 339. _Getmbdumpaddress
; Exported entry 581. Getmbdumpaddress

; ulong	__cdecl	Getmbdumpaddress(t_dump	*pd, signed int	a2, int	a3, int	a4, _DWORD *a5)
		public Getmbdumpaddress
Getmbdumpaddress:			; CODE XREF: .text:004AF281p
		push	ebp		; _Getmbdumpaddress
		mov	ebp, esp
		add	esp, 0FFFFFFE4h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4B7E5E
		xor	eax, eax
		jmp	loc_4B8144
; ---------------------------------------------------------------------------

loc_4B7E5E:				; CODE XREF: .text:004B7E55j
		mov	edx, [ebp+8]
		mov	ecx, [edx+284h]
		mov	[ebp-0Ch], ecx
		mov	eax, [ebp+8]
		mov	eax, [eax]
		cmp	eax, [ebp-0Ch]
		ja	loc_4B8144
		mov	edx, eax
		mov	ecx, [ebp+8]
		add	edx, [ecx+4]
		cmp	edx, [ebp-0Ch]
		jbe	loc_4B8144
		cmp	dword ptr [ebp+0Ch], 0
		jge	short loc_4B7E97
		mov	eax, [ebp-0Ch]
		jmp	loc_4B8144
; ---------------------------------------------------------------------------

loc_4B7E97:				; CODE XREF: .text:004B7E8Dj
		cmp	dword ptr [ebp+10h], 0
		jge	short loc_4B7EA2
		xor	edx, edx
		mov	[ebp+10h], edx

loc_4B7EA2:				; CODE XREF: .text:004B7E9Bj
		mov	ecx, [ebp+8]
		cmp	dword ptr [ecx+298h], 0
		jz	short loc_4B7ED9
		mov	eax, [ebp+8]
		test	byte ptr [eax+0Bh], 8
		jz	short loc_4B7ECE
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+4A4h], 0
		jz	short loc_4B7ECE
		mov	ecx, [ebp+8]
		mov	edi, [ecx+4A4h]
		jmp	short loc_4B7F25
; ---------------------------------------------------------------------------

loc_4B7ECE:				; CODE XREF: .text:004B7EB5j
					; .text:004B7EC1j
		mov	eax, [ebp+8]
		mov	edi, [eax+298h]
		jmp	short loc_4B7F25
; ---------------------------------------------------------------------------

loc_4B7ED9:				; CODE XREF: .text:004B7EACj
		mov	eax, [ebp+8]
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_4B7EE6
		xor	edi, edi
		jmp	short loc_4B7F25
; ---------------------------------------------------------------------------

loc_4B7EE6:				; CODE XREF: .text:004B7EE0j
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+14h], 0
		jnz	short loc_4B7EFA
		mov	edx, [ebp+8]
		mov	edi, [edx+4A4h]
		jmp	short loc_4B7F25
; ---------------------------------------------------------------------------

loc_4B7EFA:				; CODE XREF: .text:004B7EEDj
		mov	eax, [ebp+8]
		mov	edx, [eax]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_4B7F1E
		mov	ecx, [eax]
		mov	edx, [ebp+8]
		cmp	ecx, [edx]
		jnz	short loc_4B7F1E
		mov	ecx, [eax+4]
		mov	edx, [ebp+8]
		cmp	ecx, [edx+4]
		jnb	short loc_4B7F22

loc_4B7F1E:				; CODE XREF: .text:004B7F08j
					; .text:004B7F11j
		xor	edi, edi
		jmp	short loc_4B7F25
; ---------------------------------------------------------------------------

loc_4B7F22:				; CODE XREF: .text:004B7F1Cj
		mov	edi, [eax+60h]

loc_4B7F25:				; CODE XREF: .text:004B7ECCj
					; .text:004B7ED7j ...
		cmp	dword ptr [ebp+0Ch], 0FFh
		jle	short loc_4B7F35
		mov	dword ptr [ebp+0Ch], 0FFh

loc_4B7F35:				; CODE XREF: .text:004B7F2Cj
		mov	eax, [ebp+8]
		mov	esi, [eax+8]
		mov	eax, [ebp+0Ch]
		and	esi, 0FF00h
		inc	eax
		shr	esi, 8
		imul	esi
		add	eax, 4
		mov	[ebp-10h], eax
		mov	edx, [ebp+8]
		mov	ecx, [ebp-0Ch]
		add	ecx, [ebp-10h]	; int
		mov	eax, [edx]
		mov	edx, [ebp+8]	; int
		add	eax, [edx+4]
		cmp	eax, ecx
		jnb	short loc_4B7F6B
		sub	eax, [ebp-0Ch]
		mov	[ebp-10h], eax

loc_4B7F6B:				; CODE XREF: .text:004B7F63j
		test	edi, edi
		jnz	short loc_4B7FC4
		push	1		; flags
		mov	eax, [ebp-10h]
		add	eax, eax	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_4B7F90
		mov	eax, [ebp-0Ch]
		jmp	loc_4B8144
; ---------------------------------------------------------------------------

loc_4B7F90:				; CODE XREF: .text:004B7F86j
		push	1		; mode
		mov	edx, [ebp-10h]
		push	edx		; size
		mov	ecx, [ebp-0Ch]
		push	ecx		; _addr
		mov	ebx, [ebp-14h]
		add	ebx, [ebp-10h]
		push	ebx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [ebp-10h]
		jz	short loc_4B7FC0
		mov	eax, [ebp-14h]
		push	eax		; data
		call	Memfree
		pop	ecx
		mov	eax, [ebp-0Ch]
		jmp	loc_4B8144
; ---------------------------------------------------------------------------

loc_4B7FC0:				; CODE XREF: .text:004B7FACj
		mov	edi, ebx
		jmp	short loc_4B7FED
; ---------------------------------------------------------------------------

loc_4B7FC4:				; CODE XREF: .text:004B7F6Dj
		push	1		; flags
		mov	eax, [ebp-10h]	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_4B7FE3
		mov	eax, [ebp-0Ch]
		jmp	loc_4B8144
; ---------------------------------------------------------------------------

loc_4B7FE3:				; CODE XREF: .text:004B7FD9j
		mov	edx, [ebp+8]
		mov	ecx, [ebp-0Ch]
		sub	ecx, [edx]
		add	edi, ecx

loc_4B7FED:				; CODE XREF: .text:004B7FC2j
		lea	edx, [ebp-8]
		push	edx		; nBytes
		push	0		; a6
		mov	ecx, [ebp-14h]
		push	ecx		; sel1
		mov	eax, [ebp-10h]
		push	eax		; cb
		push	eax		; nb
		push	edi		; sel0
		mov	eax, mbcscodepage
		push	eax		; CodePage
		call	Getmbstringinfo
		add	esp, 1Ch
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4B8019
		mov	eax, [ebp-8]
		cmp	eax, [ebp-10h]
		jz	short loc_4B802B

loc_4B8019:				; CODE XREF: .text:004B800Fj
		mov	edx, [ebp-14h]
		push	edx		; data
		call	Memfree
		pop	ecx
		mov	eax, [ebp-0Ch]
		jmp	loc_4B8144
; ---------------------------------------------------------------------------

loc_4B802B:				; CODE XREF: .text:004B8017j
		xor	edx, edx
		cmp	dword ptr [ebp+0Ch], 0
		jle	short loc_4B805C

loc_4B8033:				; CODE XREF: .text:004B805Aj
		xor	ecx, ecx
		mov	eax, [ebp-14h]
		add	eax, edx
		jmp	short loc_4B8043
; ---------------------------------------------------------------------------

loc_4B803C:				; CODE XREF: .text:004B804Ej
		movzx	edi, byte ptr [eax]
		add	ecx, edi
		inc	edx
		inc	eax

loc_4B8043:				; CODE XREF: .text:004B803Aj
		cmp	ebx, edx
		jle	short loc_4B8050
		movzx	edi, byte ptr [eax]
		add	edi, ecx
		cmp	esi, edi
		jge	short loc_4B803C

loc_4B8050:				; CODE XREF: .text:004B8045j
		add	[ebp-0Ch], ecx
		dec	dword ptr [ebp+0Ch]
		cmp	dword ptr [ebp+0Ch], 0
		jg	short loc_4B8033

loc_4B805C:				; CODE XREF: .text:004B8031j
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4B80CD
		xor	ecx, ecx
		mov	eax, [ebp-14h]
		add	eax, edx
		jmp	short loc_4B8072
; ---------------------------------------------------------------------------

loc_4B806B:				; CODE XREF: .text:004B807Dj
		movzx	edi, byte ptr [eax]
		add	ecx, edi
		inc	edx
		inc	eax

loc_4B8072:				; CODE XREF: .text:004B8069j
		cmp	ebx, edx
		jle	short loc_4B807F
		movzx	edi, byte ptr [eax]
		add	edi, ecx
		cmp	esi, edi
		jge	short loc_4B806B

loc_4B807F:				; CODE XREF: .text:004B8074j
		cmp	ecx, [ebp+10h]
		jg	short loc_4B80A2
		dec	ecx
		xor	eax, eax
		mov	[ebp-18h], ecx
		mov	[ebp-1Ch], eax
		mov	edx, [ebp-1Ch]
		cmp	edx, [ebp-18h]
		jle	short loc_4B809A
		lea	eax, [ebp-1Ch]
		jmp	short loc_4B809D
; ---------------------------------------------------------------------------

loc_4B809A:				; CODE XREF: .text:004B8093j
		lea	eax, [ebp-18h]

loc_4B809D:				; CODE XREF: .text:004B8098j
		mov	edx, [eax]
		mov	[ebp+10h], edx

loc_4B80A2:				; CODE XREF: .text:004B8082j
		mov	ecx, [ebp+10h]
		add	[ebp-0Ch], ecx
		mov	eax, [ebp+8]
		mov	edx, [ebp+8]
		mov	eax, [eax]
		add	eax, [edx+4]
		cmp	eax, [ebp-0Ch]
		ja	short loc_4B80BC
		dec	eax
		mov	[ebp-0Ch], eax

loc_4B80BC:				; CODE XREF: .text:004B80B6j
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4B8137
		mov	ecx, [ebp+18h]
		mov	dword ptr [ecx], 1
		jmp	short loc_4B8137
; ---------------------------------------------------------------------------

loc_4B80CD:				; CODE XREF: .text:004B8060j
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-4], eax
		mov	eax, [ebp-14h]
		add	eax, edx
		jmp	short loc_4B80F4
; ---------------------------------------------------------------------------

loc_4B80DB:				; CODE XREF: .text:004B80FEj
		movzx	edi, byte ptr [eax]
		add	edi, ecx
		cmp	esi, edi
		jle	short loc_4B8100
		movzx	edi, byte ptr [eax]
		add	ecx, edi
		inc	edx
		movzx	edi, byte ptr [eax]
		add	[ebp-0Ch], edi
		inc	eax
		inc	dword ptr [ebp-4]

loc_4B80F4:				; CODE XREF: .text:004B80D9j
		cmp	ebx, edx
		jle	short loc_4B8100
		mov	edi, [ebp-4]
		cmp	edi, [ebp+10h]
		jl	short loc_4B80DB

loc_4B8100:				; CODE XREF: .text:004B80E2j
					; .text:004B80F6j
		cmp	ebx, edx
		jle	short loc_4B8111
		mov	eax, [ebp-14h]
		movzx	eax, byte ptr [eax+edx]
		add	ecx, eax
		cmp	esi, ecx
		jge	short loc_4B8121

loc_4B8111:				; CODE XREF: .text:004B8102j
		test	edx, edx
		jle	short loc_4B8121
		dec	edx
		mov	ecx, [ebp-14h]
		xor	eax, eax
		mov	al, [ecx+edx]
		sub	[ebp-0Ch], eax

loc_4B8121:				; CODE XREF: .text:004B810Fj
					; .text:004B8113j
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4B8137
		cmp	ebx, edx
		jle	short loc_4B8137
		mov	ecx, [ebp-14h]
		mov	eax, [ebp+18h]
		movzx	edx, byte ptr [ecx+edx]
		mov	[eax], edx

loc_4B8137:				; CODE XREF: .text:004B80C0j
					; .text:004B80CBj ...
		mov	edx, [ebp-14h]
		push	edx		; data
		call	Memfree
		pop	ecx
		mov	eax, [ebp-0Ch]

loc_4B8144:				; CODE XREF: .text:004B7E59j
					; .text:004B7E72j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 340. _Getmbdumpposition
; Exported entry 582. Getmbdumpposition

; signed int __cdecl Getmbdumpposition(t_dump *pd, signed int a2, unsigned int a3, int a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
		public Getmbdumpposition
Getmbdumpposition:			; CODE XREF: .text:004B8469p
					; .text:004BDFA1p ...
		push	ebp		; _Getmbdumpposition
		mov	ebp, esp
		add	esp, 0FFFFFFE8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4B8173
		cmp	dword ptr [ebp+0Ch], 0
		jle	short loc_4B8173
		mov	eax, [ebx]
		cmp	eax, [ebp+10h]
		ja	short loc_4B8173
		mov	edx, [ebx]
		add	edx, [ebx+4]
		cmp	edx, [ebp+10h]
		ja	short loc_4B817B

loc_4B8173:				; CODE XREF: .text:004B815Aj
					; .text:004B8160j ...
		or	eax, 0FFFFFFFFh
		jmp	loc_4B8409
; ---------------------------------------------------------------------------

loc_4B817B:				; CODE XREF: .text:004B8171j
		mov	edx, [ebx+8]
		and	edx, 0FF00h
		shr	edx, 8
		mov	[ebp-0Ch], edx
		mov	eax, [ebx+284h]
		cmp	eax, [ebp+10h]
		ja	short loc_4B81A3
		mov	edx, [ebp-0Ch]
		imul	edx, [ebp+0Ch]
		add	eax, edx
		cmp	eax, [ebp+10h]
		ja	short loc_4B81AB

loc_4B81A3:				; CODE XREF: .text:004B8193j
		or	eax, 0FFFFFFFFh
		jmp	loc_4B8409
; ---------------------------------------------------------------------------

loc_4B81AB:				; CODE XREF: .text:004B81A1j
		cmp	dword ptr [ebx+298h], 0
		jz	short loc_4B81D3
		test	byte ptr [ebx+0Bh], 8
		jz	short loc_4B81CB
		cmp	dword ptr [ebx+4A4h], 0
		jz	short loc_4B81CB
		mov	edi, [ebx+4A4h]
		jmp	short loc_4B820D
; ---------------------------------------------------------------------------

loc_4B81CB:				; CODE XREF: .text:004B81B8j
					; .text:004B81C1j
		mov	edi, [ebx+298h]
		jmp	short loc_4B820D
; ---------------------------------------------------------------------------

loc_4B81D3:				; CODE XREF: .text:004B81B2j
		test	byte ptr [ebx+0Bh], 8
		jnz	short loc_4B81DD
		xor	edi, edi
		jmp	short loc_4B820D
; ---------------------------------------------------------------------------

loc_4B81DD:				; CODE XREF: .text:004B81D7j
		cmp	dword ptr [ebx+14h], 0
		jnz	short loc_4B81EB
		mov	edi, [ebx+4A4h]
		jmp	short loc_4B820D
; ---------------------------------------------------------------------------

loc_4B81EB:				; CODE XREF: .text:004B81E1j
		mov	eax, [ebx]
		push	eax		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_4B8206
		mov	edx, [eax]
		cmp	edx, [ebx]
		jnz	short loc_4B8206
		mov	ecx, [eax+4]	; int
		cmp	ecx, [ebx+4]
		jnb	short loc_4B820A

loc_4B8206:				; CODE XREF: .text:004B81F6j
					; .text:004B81FCj
		xor	edi, edi
		jmp	short loc_4B820D
; ---------------------------------------------------------------------------

loc_4B820A:				; CODE XREF: .text:004B8204j
		mov	edi, [eax+60h]

loc_4B820D:				; CODE XREF: .text:004B81C9j
					; .text:004B81D1j ...
		cmp	dword ptr [ebp+0Ch], 100h
		jle	short loc_4B821D
		mov	dword ptr [ebp+0Ch], 100h

loc_4B821D:				; CODE XREF: .text:004B8214j
		mov	esi, [ebp-0Ch]
		mov	eax, [ebx]
		imul	esi, [ebp+0Ch]
		add	esi, 4
		mov	edx, [ebx+284h]
		add	eax, [ebx+4]	; int
		add	edx, esi	; int
		cmp	eax, edx
		jnb	short loc_4B8240
		mov	esi, eax
		sub	esi, [ebx+284h]

loc_4B8240:				; CODE XREF: .text:004B8236j
		test	edi, edi
		jnz	short loc_4B8292
		push	1		; flags
		mov	eax, esi
		add	eax, eax	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4B8264
		or	eax, 0FFFFFFFFh
		jmp	loc_4B8409
; ---------------------------------------------------------------------------

loc_4B8264:				; CODE XREF: .text:004B825Aj
		push	1		; mode
		push	esi		; size
		mov	edx, [ebx+284h]
		push	edx		; _addr
		mov	edi, [ebp-18h]
		add	edi, esi
		push	edi		; buf
		call	Readmemory
		add	esp, 10h
		cmp	esi, eax
		jz	short loc_4B82B8
		mov	eax, [ebp-18h]
		push	eax		; data
		call	Memfree
		pop	ecx
		or	eax, 0FFFFFFFFh
		jmp	loc_4B8409
; ---------------------------------------------------------------------------

loc_4B8292:				; CODE XREF: .text:004B8242j
		push	1		; flags
		push	esi		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4B82AE
		or	eax, 0FFFFFFFFh
		jmp	loc_4B8409
; ---------------------------------------------------------------------------

loc_4B82AE:				; CODE XREF: .text:004B82A4j
		mov	edx, [ebx+284h]
		sub	edx, [ebx]
		add	edi, edx

loc_4B82B8:				; CODE XREF: .text:004B827Ej
		lea	ecx, [ebp-10h]
		mov	eax, esi
		push	ecx		; nBytes
		push	0		; a6
		mov	edx, [ebp-18h]
		mov	ecx, mbcscodepage
		push	edx		; sel1
		push	eax		; cb
		push	eax		; nb
		push	edi		; sel0
		push	ecx		; CodePage
		call	Getmbstringinfo
		add	esp, 1Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4B82E6
		mov	eax, [ebp-10h]
		cmp	eax, esi
		jz	short loc_4B82F8

loc_4B82E6:				; CODE XREF: .text:004B82DDj
		mov	edx, [ebp-18h]
		push	edx		; data
		call	Memfree
		pop	ecx
		or	eax, 0FFFFFFFFh
		jmp	loc_4B8409
; ---------------------------------------------------------------------------

loc_4B82F8:				; CODE XREF: .text:004B82E4j
		mov	ebx, [ebx+284h]
		xor	edx, edx
		mov	[ebp-14h], edx
		xor	eax, eax
		mov	[ebp-4], eax
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp+0Ch]
		jge	short loc_4B834A

loc_4B8310:				; CODE XREF: .text:004B8348j
		xor	ecx, ecx
		mov	[ebp-14h], edx
		mov	eax, [ebp-18h]
		add	eax, edx
		jmp	short loc_4B8323
; ---------------------------------------------------------------------------

loc_4B831C:				; CODE XREF: .text:004B8330j
		movzx	esi, byte ptr [eax]
		add	ecx, esi
		inc	edx
		inc	eax

loc_4B8323:				; CODE XREF: .text:004B831Aj
		cmp	edx, [ebp-8]
		jge	short loc_4B8332
		movzx	esi, byte ptr [eax]
		add	esi, ecx
		cmp	esi, [ebp-0Ch]
		jle	short loc_4B831C

loc_4B8332:				; CODE XREF: .text:004B8326j
		mov	eax, ecx
		mov	esi, eax
		add	esi, ebx
		cmp	esi, [ebp+10h]
		ja	short loc_4B834A
		add	ebx, eax
		inc	dword ptr [ebp-4]
		mov	eax, [ebp-4]
		cmp	eax, [ebp+0Ch]
		jl	short loc_4B8310

loc_4B834A:				; CODE XREF: .text:004B830Ej
					; .text:004B833Bj
		mov	edx, [ebp-4]
		cmp	edx, [ebp+0Ch]
		jl	short loc_4B8364
		mov	ecx, [ebp-18h]
		push	ecx		; data
		call	Memfree
		pop	ecx
		or	eax, 0FFFFFFFFh
		jmp	loc_4B8409
; ---------------------------------------------------------------------------

loc_4B8364:				; CODE XREF: .text:004B8350j
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4B8372
		mov	edx, [ebp+18h]
		mov	ecx, [ebp-4]
		mov	[edx], ecx

loc_4B8372:				; CODE XREF: .text:004B8368j
		cmp	dword ptr [ebp+24h], 0
		jz	short loc_4B837D
		mov	eax, [ebp+24h]
		mov	[eax], ebx

loc_4B837D:				; CODE XREF: .text:004B8376j
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4B83A4
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_4B8393
		mov	ecx, [ebp+1Ch]
		mov	edx, [ebp+10h]
		sub	edx, ebx
		mov	[ecx], edx

loc_4B8393:				; CODE XREF: .text:004B8387j
		cmp	dword ptr [ebp+20h], 0
		jz	short loc_4B83FD
		mov	eax, [ebp+20h]
		mov	dword ptr [eax], 1
		jmp	short loc_4B83FD
; ---------------------------------------------------------------------------

loc_4B83A4:				; CODE XREF: .text:004B8381j
		mov	edx, [ebp-14h]
		mov	ecx, [ebp-18h]
		lea	eax, [ecx+edx]
		jmp	short loc_4B83B7
; ---------------------------------------------------------------------------

loc_4B83AF:				; CODE XREF: .text:004B83C5j
		xor	ecx, ecx
		inc	edx
		mov	cl, [eax]
		add	ebx, ecx
		inc	eax

loc_4B83B7:				; CODE XREF: .text:004B83ADj
		cmp	edx, [ebp-8]
		jge	short loc_4B83C7
		xor	ecx, ecx
		mov	cl, [eax]
		add	ecx, ebx
		cmp	ecx, [ebp+10h]
		jbe	short loc_4B83AF

loc_4B83C7:				; CODE XREF: .text:004B83BAj
		cmp	edx, [ebp-8]
		jl	short loc_4B83DB
		mov	eax, [ebp-18h]
		push	eax		; data
		call	Memfree
		pop	ecx
		or	eax, 0FFFFFFFFh
		jmp	short loc_4B8409
; ---------------------------------------------------------------------------

loc_4B83DB:				; CODE XREF: .text:004B83CAj
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_4B83EB
		mov	ecx, edx
		mov	eax, [ebp+1Ch]
		sub	ecx, [ebp-14h]
		mov	[eax], ecx

loc_4B83EB:				; CODE XREF: .text:004B83DFj
		cmp	dword ptr [ebp+20h], 0
		jz	short loc_4B83FD
		mov	ecx, [ebp-18h]
		mov	eax, [ebp+20h]
		movzx	edx, byte ptr [ecx+edx]
		mov	[eax], edx

loc_4B83FD:				; CODE XREF: .text:004B8397j
					; .text:004B83A2j ...
		mov	edx, [ebp-18h]
		push	edx		; data
		call	Memfree
		pop	ecx
		xor	eax, eax

loc_4B8409:				; CODE XREF: .text:004B8176j
					; .text:004B81A6j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 341. _Scrolldumpwindow
; Exported entry 705. Scrolldumpwindow

; unsigned int __cdecl Scrolldumpwindow(t_dump *pd, ulong _addr,	int mode)
		public Scrolldumpwindow
Scrolldumpwindow:			; CODE XREF: .text:00427C09p
					; .text:0047837Ap ...
		push	ebp		; _Scrolldumpwindow
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4B8430
		cmp	esi, [ebx]
		jb	short loc_4B8430
		mov	eax, [ebx]
		add	eax, [ebx+4]
		cmp	esi, eax
		jb	short loc_4B8437

loc_4B8430:				; CODE XREF: .text:004B8421j
					; .text:004B8425j
		xor	eax, eax
		jmp	loc_4B8856
; ---------------------------------------------------------------------------

loc_4B8437:				; CODE XREF: .text:004B842Ej
		mov	edx, [ebx+8]
		and	edx, 3F0000h
		mov	[ebp-18h], edx
		lea	ecx, [ebx+18h]
		push	ecx		; pt
		call	Linecount
		pop	ecx
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-18h], 0E0000h
		jnz	short loc_4B8482
		push	0		; a8
		push	0		; a7
		push	0		; a6
		push	0		; a5
		push	0		; a4
		push	esi		; a3
		mov	eax, [ebp-4]
		push	eax		; a2
		push	ebx		; pd
		call	Getmbdumpposition
		add	esp, 20h
		test	eax, eax
		jz	short loc_4B847B
		mov	[ebx+284h], esi

loc_4B847B:				; CODE XREF: .text:004B8473j
		mov	eax, esi
		jmp	loc_4B8856
; ---------------------------------------------------------------------------

loc_4B8482:				; CODE XREF: .text:004B8457j
		mov	eax, [ebx+8]
		mov	edx, eax
		and	eax, 0FFh
		and	edx, 0FF00h
		shr	edx, 8
		mov	[ebp-8], edx
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4B84A8
		mov	dword ptr [ebp-0Ch], 1

loc_4B84A8:				; CODE XREF: .text:004B849Fj
		test	byte ptr [ebp+10h], 1
		jnz	loc_4B8555
		cmp	dword ptr [ebp-18h], 0C0000h
		jz	short loc_4B84C4
		cmp	dword ptr [ebp-18h], 0D0000h
		jnz	short loc_4B8520

loc_4B84C4:				; CODE XREF: .text:004B84B9j
		test	byte ptr [ebx+0Bh], 4
		mov	ecx, 1
		jnz	short loc_4B84D0
		dec	ecx

loc_4B84D0:				; CODE XREF: .text:004B84CDj
		push	ecx		; decode
		push	1		; n
		push	esi		; ip
		mov	eax, [ebx+4]
		push	eax		; size
		mov	edx, [ebx]
		push	edx		; base
		mov	ecx, [ebx+298h]
		push	ecx		; copy
		call	Disassembleback
		add	esp, 18h
		mov	edi, eax

loc_4B84EC:				; CODE XREF: .text:004B851Aj
		test	byte ptr [ebx+0Bh], 4
		mov	eax, 1
		jnz	short loc_4B84F8
		dec	eax

loc_4B84F8:				; CODE XREF: .text:004B84F5j
		push	eax		; decode
		push	1		; n
		push	edi		; ip
		mov	edx, [ebx+4]
		push	edx		; size
		mov	ecx, [ebx]
		push	ecx		; base
		mov	eax, [ebx+298h]
		push	eax		; copy
		call	Disassembleforward
		add	esp, 18h
		cmp	esi, eax
		jb	short loc_4B851C
		mov	edi, eax
		cmp	esi, edi
		jnz	short loc_4B84EC

loc_4B851C:				; CODE XREF: .text:004B8514j
		mov	esi, edi
		jmp	short loc_4B857A
; ---------------------------------------------------------------------------

loc_4B8520:				; CODE XREF: .text:004B84C2j
		mov	eax, esi
		mov	ecx, [ebx]
		sub	eax, ecx
		xor	edx, edx
		div	dword ptr [ebp-0Ch]
		push	edx
		mov	eax, [ebx+284h]
		sub	eax, ecx
		xor	edx, edx
		div	dword ptr [ebp-0Ch]
		pop	eax
		sub	eax, edx
		test	eax, eax
		jge	short loc_4B8543
		add	eax, [ebp-0Ch]

loc_4B8543:				; CODE XREF: .text:004B853Ej
		mov	edi, ecx
		mov	edx, eax
		add	edi, edx
		cmp	esi, edi
		jnb	short loc_4B8551
		mov	esi, ecx
		jmp	short loc_4B857A
; ---------------------------------------------------------------------------

loc_4B8551:				; CODE XREF: .text:004B854Bj
		sub	esi, edx
		jmp	short loc_4B857A
; ---------------------------------------------------------------------------

loc_4B8555:				; CODE XREF: .text:004B84ACj
		cmp	dword ptr [ebp-18h], 0C0000h
		jz	short loc_4B857A
		cmp	dword ptr [ebp-18h], 0D0000h
		jz	short loc_4B857A
		cmp	dword ptr [ebp+10h], 1
		jnz	short loc_4B857A
		mov	[ebx+284h], esi
		mov	eax, esi
		jmp	loc_4B8856
; ---------------------------------------------------------------------------

loc_4B857A:				; CODE XREF: .text:004B851Ej
					; .text:004B854Fj ...
		cmp	dword ptr [ebp-18h], 0C0000h
		jz	short loc_4B85AA
		cmp	dword ptr [ebp-18h], 0D0000h
		jz	short loc_4B85AA
		cmp	esi, [ebx+284h]
		jbe	short loc_4B859D
		cmp	dword ptr [ebx+244h], 0
		jnz	short loc_4B85AA

loc_4B859D:				; CODE XREF: .text:004B8592j
		mov	[ebx+284h], esi
		mov	eax, esi
		jmp	loc_4B8856
; ---------------------------------------------------------------------------

loc_4B85AA:				; CODE XREF: .text:004B8581j
					; .text:004B858Aj ...
		cmp	dword ptr [ebp-18h], 0C0000h
		jz	short loc_4B85C0
		cmp	dword ptr [ebp-18h], 0D0000h
		jnz	loc_4B87ED

loc_4B85C0:				; CODE XREF: .text:004B85B1j
		xor	edx, edx
		mov	[ebp-10h], edx
		cmp	dword ptr [ebx+244h], 0
		jnz	short loc_4B85D9
		mov	[ebx+284h], esi
		jmp	loc_4B8746
; ---------------------------------------------------------------------------

loc_4B85D9:				; CODE XREF: .text:004B85CCj
		cmp	esi, [ebx+284h]
		jnb	short loc_4B85F3
		mov	[ebx+284h], esi
		mov	dword ptr [ebp-10h], 1
		jmp	loc_4B8746
; ---------------------------------------------------------------------------

loc_4B85F3:				; CODE XREF: .text:004B85DFj
		cmp	dword ptr [ebp-4], 2
		jge	short loc_4B8604
		mov	[ebx+284h], esi
		jmp	loc_4B8746
; ---------------------------------------------------------------------------

loc_4B8604:				; CODE XREF: .text:004B85F7j
		mov	ecx, [ebp-4]
		shl	ecx, 4
		add	ecx, [ebx+284h]
		cmp	esi, ecx
		jbe	short loc_4B8626
		mov	[ebx+284h], esi
		mov	dword ptr [ebp-10h], 1
		jmp	loc_4B8746
; ---------------------------------------------------------------------------

loc_4B8626:				; CODE XREF: .text:004B8612j
		mov	eax, [ebx+284h]
		xor	edx, edx
		mov	[ebp-14h], edx
		xor	edi, edi
		cmp	edi, [ebp-4]
		jge	short loc_4B868A

loc_4B8638:				; CODE XREF: .text:004B8688j
		test	byte ptr [ebx+0Bh], 4
		mov	edx, 1
		jnz	short loc_4B8644
		dec	edx

loc_4B8644:				; CODE XREF: .text:004B8641j
		push	edx		; decode
		push	1		; n
		push	eax		; ip
		mov	eax, [ebx+4]
		push	eax		; size
		mov	ecx, [ebx]
		push	ecx		; base
		mov	eax, [ebx+298h]
		push	eax		; copy
		call	Disassembleforward
		add	esp, 18h
		test	edi, edi
		jnz	short loc_4B8665
		mov	[ebp-20h], eax

loc_4B8665:				; CODE XREF: .text:004B8660j
		cmp	edi, 1
		jnz	short loc_4B866D
		mov	[ebp-24h], eax

loc_4B866D:				; CODE XREF: .text:004B8668j
		cmp	edi, 2
		jnz	short loc_4B8675
		mov	[ebp-28h], eax

loc_4B8675:				; CODE XREF: .text:004B8670j
		cmp	esi, eax
		jnz	short loc_4B8680
		mov	dword ptr [ebp-14h], 1

loc_4B8680:				; CODE XREF: .text:004B8677j
		cmp	esi, eax
		jbe	short loc_4B868A
		inc	edi
		cmp	edi, [ebp-4]
		jl	short loc_4B8638

loc_4B868A:				; CODE XREF: .text:004B8636j
					; .text:004B8682j
		cmp	edi, [ebp-4]
		jge	short loc_4B86A0
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_4B86A0
		mov	[ebx+284h], esi
		jmp	loc_4B8746
; ---------------------------------------------------------------------------

loc_4B86A0:				; CODE XREF: .text:004B868Dj
					; .text:004B8693j
		cmp	esi, eax
		jnz	short loc_4B86C0
		cmp	dword ptr [ebp-4], 0Ah
		jle	short loc_4B86C0
		mov	edx, [ebp-4]
		dec	edx
		cmp	edi, edx
		jnz	short loc_4B86C0
		mov	ecx, [ebp-28h]
		mov	[ebx+284h], ecx
		jmp	loc_4B8746
; ---------------------------------------------------------------------------

loc_4B86C0:				; CODE XREF: .text:004B86A2j
					; .text:004B86A8j ...
		cmp	esi, eax
		jnz	short loc_4B86ED
		cmp	dword ptr [ebp-4], 0Ah
		jle	short loc_4B86D4
		mov	edx, [ebp-4]
		add	edx, 0FFFFFFFEh
		cmp	edi, edx
		jz	short loc_4B86E2

loc_4B86D4:				; CODE XREF: .text:004B86C8j
		cmp	dword ptr [ebp-4], 4
		jle	short loc_4B86ED
		mov	ecx, [ebp-4]
		dec	ecx
		cmp	edi, ecx
		jnz	short loc_4B86ED

loc_4B86E2:				; CODE XREF: .text:004B86D2j
		mov	eax, [ebp-24h]
		mov	[ebx+284h], eax
		jmp	short loc_4B8746
; ---------------------------------------------------------------------------

loc_4B86ED:				; CODE XREF: .text:004B86C2j
					; .text:004B86D8j ...
		cmp	esi, eax
		jnz	short loc_4B8724
		cmp	dword ptr [ebp-4], 0Ah
		jle	short loc_4B8701
		mov	edx, [ebp-4]
		add	edx, 0FFFFFFFDh
		cmp	edi, edx
		jz	short loc_4B8719

loc_4B8701:				; CODE XREF: .text:004B86F5j
		cmp	dword ptr [ebp-4], 4
		jle	short loc_4B8711
		mov	ecx, [ebp-4]
		add	ecx, 0FFFFFFFEh
		cmp	edi, ecx
		jz	short loc_4B8719

loc_4B8711:				; CODE XREF: .text:004B8705j
		mov	edx, [ebp-4]
		dec	edx
		cmp	edi, edx
		jnz	short loc_4B8724

loc_4B8719:				; CODE XREF: .text:004B86FFj
					; .text:004B870Fj
		mov	eax, [ebp-20h]
		mov	[ebx+284h], eax
		jmp	short loc_4B8746
; ---------------------------------------------------------------------------

loc_4B8724:				; CODE XREF: .text:004B86EFj
					; .text:004B8717j
		cmp	edi, [ebp-4]
		jge	short loc_4B8735
		cmp	esi, eax
		jnb	short loc_4B8735
		mov	[ebx+284h], esi
		jmp	short loc_4B8746
; ---------------------------------------------------------------------------

loc_4B8735:				; CODE XREF: .text:004B8727j
					; .text:004B872Bj
		cmp	esi, eax
		jz	short loc_4B8746
		mov	[ebx+284h], esi
		mov	dword ptr [ebp-10h], 1

loc_4B8746:				; CODE XREF: .text:004B85D4j
					; .text:004B85EEj ...
		cmp	dword ptr [ebp-4], 2
		jle	loc_4B87E9
		test	byte ptr [ebp+10h], 2
		jz	loc_4B87E9
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4B87E9
		cmp	dword_5BE6F0, 0
		jz	short loc_4B87E9
		test	byte ptr [ebx+0Bh], 4
		mov	ecx, 1
		jnz	short loc_4B8779
		dec	ecx

loc_4B8779:				; CODE XREF: .text:004B8776j
		push	ecx		; decode
		mov	eax, [ebp-4]
		sar	eax, 1
		jns	short loc_4B8784
		adc	eax, 0

loc_4B8784:				; CODE XREF: .text:004B877Fj
		push	eax		; n
		push	esi		; ip
		mov	edx, [ebx+4]
		push	edx		; size
		mov	ecx, [ebx]
		push	ecx		; base
		mov	eax, [ebx+298h]
		push	eax		; copy
		call	Disassembleback
		add	esp, 18h
		mov	[ebp-1Ch], eax
		xor	edi, edi
		jmp	short loc_4B87CE
; ---------------------------------------------------------------------------

loc_4B87A3:				; CODE XREF: .text:004B87DAj
		test	byte ptr [ebx+0Bh], 4
		mov	edx, 1
		jnz	short loc_4B87AF
		dec	edx

loc_4B87AF:				; CODE XREF: .text:004B87ACj
		push	edx		; decode
		push	1		; n
		push	eax		; ip
		mov	eax, [ebx+4]
		push	eax		; size
		mov	ecx, [ebx]
		push	ecx		; base
		mov	eax, [ebx+298h]
		push	eax		; copy
		call	Disassembleforward
		add	esp, 18h
		cmp	esi, eax
		jbe	short loc_4B87DC
		inc	edi

loc_4B87CE:				; CODE XREF: .text:004B87A1j
		mov	edx, [ebp-4]
		sar	edx, 1
		jns	short loc_4B87D8
		adc	edx, 0

loc_4B87D8:				; CODE XREF: .text:004B87D3j
		cmp	edi, edx
		jl	short loc_4B87A3

loc_4B87DC:				; CODE XREF: .text:004B87CBj
		cmp	esi, eax
		jnz	short loc_4B87E9
		mov	ecx, [ebp-1Ch]
		mov	[ebx+284h], ecx

loc_4B87E9:				; CODE XREF: .text:004B874Aj
					; .text:004B8754j ...
		mov	eax, esi
		jmp	short loc_4B8856
; ---------------------------------------------------------------------------

loc_4B87ED:				; CODE XREF: .text:004B85BAj
		mov	ecx, [ebp-8]
		imul	ecx, [ebp-0Ch]
		cmp	dword ptr [ebp-4], 1
		jge	short loc_4B8801
		mov	dword ptr [ebp-4], 1

loc_4B8801:				; CODE XREF: .text:004B87F8j
		test	byte ptr [ebp+10h], 1
		jz	short loc_4B8820
		mov	eax, esi
		sub	eax, [ebx+284h]
		xor	edx, edx
		div	dword ptr [ebp-0Ch]
		test	edx, edx
		jz	short loc_4B8820
		mov	[ebx+284h], esi
		jmp	short loc_4B8854
; ---------------------------------------------------------------------------

loc_4B8820:				; CODE XREF: .text:004B8805j
					; .text:004B8816j
		mov	edx, ecx
		mov	eax, [ebp-0Ch]
		imul	edx, [ebp-4]
		add	edx, [ebx+284h]
		add	eax, esi
		cmp	eax, edx
		jbe	short loc_4B8854
		add	[ebx+284h], ecx
		imul	ecx, [ebp-4]
		add	ecx, [ebx+284h]
		mov	eax, [ebp-0Ch]
		add	eax, esi
		cmp	eax, ecx
		jbe	short loc_4B8854
		mov	[ebx+284h], esi

loc_4B8854:				; CODE XREF: .text:004B881Ej
					; .text:004B8833j ...
		mov	eax, esi

loc_4B8856:				; CODE XREF: .text:004B8432j
					; .text:004B847Dj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4B8860:				; CODE XREF: .text:00478AF6p
					; .text:00478B43p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF4ECh
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	loc_4B8C53
		cmp	dword ptr [ebx+244h], 0
		jz	loc_4B8C53
		and	dword ptr [ebx+8], 0FF7FFFFFh
		cmp	dword ptr [ebx+240h], 0
		jz	loc_4B8926
		test	esi, esi
		jz	loc_4B8926
		mov	eax, [ebx+28Ch]
		sub	eax, [ebx+288h]
		cmp	eax, 1
		jnz	short loc_4B88E0
		mov	edx, [ebx+28Ch]
		dec	edx
		push	edx
		mov	ecx, [ebx+288h]
		push	ecx
		push	offset aSelection08x_0 ; "Selection %08X..%08X (1. byte)"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-208h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		jmp	short loc_4B8913
; ---------------------------------------------------------------------------

loc_4B88E0:				; CODE XREF: .text:004B88B2j
		mov	edi, [ebx+28Ch]
		mov	eax, edi
		sub	eax, [ebx+288h]
		dec	edi
		push	eax
		push	edi
		mov	edx, [ebx+288h]
		push	edx
		push	offset aSelection08x__ ; "Selection %08X..%08X (%i. bytes)"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-208h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 14h

loc_4B8913:				; CODE XREF: .text:004B88DEj
		lea	eax, [ebp-208h]
		push	eax		; lpString
		mov	edx, [ebx+240h]
		push	edx		; hWnd
		call	SetWindowTextW

loc_4B8926:				; CODE XREF: .text:004B8895j
					; .text:004B889Dj
		cmp	dword_57FE88, 0
		jz	loc_4B8C53
		test	esi, esi
		jz	loc_4B8C53
		mov	ecx, [ebx+28Ch]
		cmp	ecx, [ebx+288h]
		jbe	loc_4B8C53
		push	2
		call	loc_4D2FEC
		cmp	dword ptr [ebx+1BCh], 3
		pop	ecx
		jle	loc_4B8B71
		xor	esi, esi
		cmp	dword ptr [ebx+298h], 0
		jz	short loc_4B8982
		mov	dword ptr [ebp-4], 3
		mov	edx, [ebx+6F8h]
		or	eax, 0FFFFFFFFh
		jmp	loc_4B8B25
; ---------------------------------------------------------------------------

loc_4B8982:				; CODE XREF: .text:004B896Bj
		mov	eax, dword_57DE54
		cmp	eax, 1
		jnz	short loc_4B8995
		mov	dword ptr [ebp-4], 1
		jmp	short loc_4B89A8
; ---------------------------------------------------------------------------

loc_4B8995:				; CODE XREF: .text:004B898Aj
		cmp	eax, 2
		jnz	short loc_4B89A3
		mov	dword ptr [ebp-4], 2
		jmp	short loc_4B89A8
; ---------------------------------------------------------------------------

loc_4B89A3:				; CODE XREF: .text:004B8998j
		xor	edx, edx
		mov	[ebp-4], edx

loc_4B89A8:				; CODE XREF: .text:004B8993j
					; .text:004B89A1j
		mov	eax, [ebx+14h]
		test	eax, eax
		jnz	short loc_4B89B3
		xor	edi, edi
		jmp	short loc_4B89BC
; ---------------------------------------------------------------------------

loc_4B89B3:				; CODE XREF: .text:004B89ADj
		push	eax		; threadid
		call	Threadregisters
		pop	ecx
		mov	edi, eax

loc_4B89BC:				; CODE XREF: .text:004B89B1j
		test	byte ptr [ebx+0Eh], 1
		jz	short loc_4B8A04
		mov	eax, run.status
		cmp	eax, 12h
		jz	short loc_4B89D1
		cmp	eax, 13h
		jnz	short loc_4B8A04

loc_4B89D1:				; CODE XREF: .text:004B89CAj
		test	edi, edi
		jz	short loc_4B8A04
		mov	edx, [edi+8]
		cmp	edx, [ebx+288h]
		jnz	short loc_4B8A04
		push	offset aCurrentEip ; "Current EIP "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-408h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_4B8A4A
; ---------------------------------------------------------------------------

loc_4B8A04:				; CODE XREF: .text:004B89C0j
					; .text:004B89CFj ...
		test	byte ptr [ebx+0Eh], 4
		jz	short loc_4B8A4A
		mov	eax, run.status
		cmp	eax, 12h
		jz	short loc_4B8A19
		cmp	eax, 13h
		jnz	short loc_4B8A4A

loc_4B8A19:				; CODE XREF: .text:004B8A12j
		test	edi, edi
		jz	short loc_4B8A4A
		mov	edx, [edi+1Ch]
		cmp	edx, [ebx+288h]
		jnz	short loc_4B8A4A
		push	offset aCurrentEsp ; "Current ESP "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-408h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax

loc_4B8A4A:				; CODE XREF: .text:004B8A02j
					; .text:004B8A08j ...
		push	0		; subaddr
		mov	eax, [ebx+288h]
		push	eax		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	loc_4B8B03
		test	byte ptr [eax+9], 10h
		jz	loc_4B8B03
		test	byte ptr [eax+0Ah], 2
		jz	short loc_4B8AA5
		push	offset aDisabledBreakp ; "Disabled breakpoint "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 100h
		sub	edx, esi
		lea	eax, [ebp-408h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_4B8B03
; ---------------------------------------------------------------------------

loc_4B8AA5:				; CODE XREF: .text:004B8A76j
		test	byte ptr [eax+0Ah], 4
		jz	short loc_4B8AD8
		push	offset aConditionalB_0 ; "Conditional breakpoint "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 100h
		sub	edx, esi
		lea	eax, [ebp-408h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_4B8B03
; ---------------------------------------------------------------------------

loc_4B8AD8:				; CODE XREF: .text:004B8AA9j
		push	offset aBreakpoint ; "Breakpoint "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 100h
		sub	edx, esi
		lea	eax, [ebp-408h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax

loc_4B8B03:				; CODE XREF: .text:004B8A62j
					; .text:004B8A6Cj ...
		mov	eax, [ebx+6F4h]
		test	eax, eax
		jl	short loc_4B8B1C
		cmp	eax, 8
		jge	short loc_4B8B1C
		test	edi, edi
		jz	short loc_4B8B1C
		mov	edx, [edi+eax*4+0Ch]
		jmp	short loc_4B8B25
; ---------------------------------------------------------------------------

loc_4B8B1C:				; CODE XREF: .text:004B8B0Bj
					; .text:004B8B10j ...
		or	eax, 0FFFFFFFFh
		mov	edx, [ebx+6F8h]

loc_4B8B25:				; CODE XREF: .text:004B897Dj
					; .text:004B8B1Aj
		mov	ecx, [ebp-4]
		push	ecx		; mode
		push	0		; select
		push	0		; mask
		push	0		; index
		push	eax		; relreg
		push	edx		; reladdr
		mov	eax, [ebx+288h]
		push	eax		; _addr
		lea	edx, [ebp-208h]
		push	edx		; text
		call	Labeladdress
		add	esp, 20h
		lea	ecx, [ebp-208h]
		push	0
		push	ecx
		push	2
		call	loc_4D21C8
		add	esp, 0Ch
		test	esi, esi
		jle	short loc_4B8B71
		push	0
		lea	eax, [ebp-408h]
		push	eax
		push	2
		call	loc_4D21C8
		add	esp, 0Ch

loc_4B8B71:				; CODE XREF: .text:004B895Cj
					; .text:004B8B5Cj
		mov	esi, ebx
		lea	edi, [ebp-0B14h]
		mov	ecx, 1C3h
		lea	eax, [ebp-958h]
		rep movsd
		xor	esi, esi
		jmp	short loc_4B8B92
; ---------------------------------------------------------------------------

loc_4B8B8A:				; CODE XREF: .text:004B8B98j
		xor	edx, edx
		inc	esi
		mov	[eax], edx
		add	eax, 4

loc_4B8B92:				; CODE XREF: .text:004B8B88j
		cmp	esi, [ebp-0A70h]
		jl	short loc_4B8B8A
		mov	esi, 1
		lea	edi, [ebp-9DCh]
		lea	eax, [ebx+1C0h]
		mov	ebx, eax
		jmp	loc_4B8C47
; ---------------------------------------------------------------------------

loc_4B8BB2:				; CODE XREF: .text:004B8C4Dj
		cmp	dword ptr [ebx], 3
		jle	loc_4B8C40
		mov	edx, [edi]
		and	edx, 0F000h
		cmp	edx, 0F000h
		jz	short loc_4B8C40
		mov	ecx, [ebp-8C8h]
		mov	eax, ecx
		lea	ecx, [eax+ecx*4]
		shl	ecx, 5
		sub	ecx, eax
		mov	edx, font._width[ecx*4]
		lea	ecx, [ebp-0B14h]
		shl	edx, 8
		mov	[edi+88h], edx
		push	2		; mode
		push	ecx		; pd
		call	Copydumpselection
		mov	[ebp-8], eax
		xor	eax, eax
		mov	[edi+88h], eax
		add	esp, 8
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4B8C40
		mov	edx, [ebp-8]
		push	edx		; hMem
		call	GlobalLock
		test	eax, eax
		jz	short loc_4B8C37
		mov	ecx, [edi]
		and	ecx, 0F000h
		push	ecx
		push	eax
		push	2
		call	loc_4D21C8
		add	esp, 0Ch
		mov	eax, [ebp-8]
		push	eax		; hMem
		call	GlobalUnlock

loc_4B8C37:				; CODE XREF: .text:004B8C18j
		mov	edx, [ebp-8]
		push	edx		; hMem
		call	GlobalFree

loc_4B8C40:				; CODE XREF: .text:004B8BB5j
					; .text:004B8BC9j ...
		inc	esi
		add	edi, 4
		add	ebx, 4

loc_4B8C47:				; CODE XREF: .text:004B8BADj
		cmp	esi, [ebp-0A70h]
		jl	loc_4B8BB2

loc_4B8C53:				; CODE XREF: .text:004B8874j
					; .text:004B8881j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 342. _Alignselection
; Exported entry 400. Alignselection

; signed int __cdecl Alignselection(t_dump *pd,	ulong *sel0, ulong *sel1)
		public Alignselection
Alignselection:				; _Alignselection
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_4B8C78
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4B8C78
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4B8C80

loc_4B8C78:				; CODE XREF: .text:004B8C6Aj
					; .text:004B8C70j
		or	eax, 0FFFFFFFFh
		jmp	loc_4B8D6E
; ---------------------------------------------------------------------------

loc_4B8C80:				; CODE XREF: .text:004B8C76j
		mov	edx, [ebp+0Ch]
		mov	ecx, [edx]
		mov	[ebp-8], ecx
		mov	eax, [ebp+10h]
		mov	edi, [eax]
		mov	eax, [esi+8]
		and	eax, 3F0000h
		cmp	eax, 0C0000h
		jz	short loc_4B8CA3
		cmp	eax, 0D0000h
		jnz	short loc_4B8D0C

loc_4B8CA3:				; CODE XREF: .text:004B8C9Aj
		push	1		; n
		mov	edx, [ebp-8]
		push	edx		; _addr
		push	esi		; pd
		call	Dumpback
		add	esp, 0Ch
		mov	ebx, eax
		cmp	ebx, [ebp-8]
		jnz	short loc_4B8CBE
		mov	eax, [ebp-8]
		jmp	short loc_4B8CCA
; ---------------------------------------------------------------------------

loc_4B8CBE:				; CODE XREF: .text:004B8CB7j
		push	1		; n
		push	ebx		; _addr
		push	esi		; pd
		call	Dumpforward
		add	esp, 0Ch

loc_4B8CCA:				; CODE XREF: .text:004B8CBCj
		cmp	eax, [ebp-8]
		jbe	short loc_4B8CD1
		mov	eax, ebx

loc_4B8CD1:				; CODE XREF: .text:004B8CCDj
		mov	[ebp-8], eax
		push	1		; n
		push	edi		; _addr
		push	esi		; pd
		call	Dumpback
		add	esp, 0Ch
		mov	ebx, eax
		xor	eax, eax
		mov	[ebp-4], eax

loc_4B8CE7:				; CODE XREF: .text:004B8D00j
		push	1		; n
		push	ebx		; _addr
		push	esi		; pd
		call	Dumpforward
		add	esp, 0Ch
		mov	ebx, eax
		cmp	edi, ebx
		jbe	short loc_4B8D02
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 10h
		jl	short loc_4B8CE7

loc_4B8D02:				; CODE XREF: .text:004B8CF7j
		cmp	dword ptr [ebp-4], 10h
		jge	short loc_4B8D47
		mov	edi, ebx
		jmp	short loc_4B8D47
; ---------------------------------------------------------------------------

loc_4B8D0C:				; CODE XREF: .text:004B8CA1j
		cmp	eax, 0E0000h
		jnz	short loc_4B8D17
		xor	eax, eax
		jmp	short loc_4B8D6E
; ---------------------------------------------------------------------------

loc_4B8D17:				; CODE XREF: .text:004B8D11j
		mov	ebx, [esi+284h]
		mov	ecx, [esi+8]
		mov	eax, [ebp-8]
		and	ecx, 0FFh
		sub	eax, ebx
		xor	edx, edx
		div	ecx
		imul	ecx
		add	eax, ebx
		xor	edx, edx
		mov	[ebp-8], eax
		mov	eax, edi
		sub	eax, ebx
		add	eax, ecx
		dec	eax
		div	ecx
		imul	ecx
		add	eax, ebx
		mov	edi, eax

loc_4B8D47:				; CODE XREF: .text:004B8D06j
					; .text:004B8D0Aj
		mov	eax, [esi]
		cmp	eax, [ebp-8]
		ja	short loc_4B8D5A
		add	eax, [esi+4]
		cmp	edi, eax
		ja	short loc_4B8D5A
		cmp	edi, [ebp-8]
		ja	short loc_4B8D5F

loc_4B8D5A:				; CODE XREF: .text:004B8D4Cj
					; .text:004B8D53j
		or	eax, 0FFFFFFFFh
		jmp	short loc_4B8D6E
; ---------------------------------------------------------------------------

loc_4B8D5F:				; CODE XREF: .text:004B8D58j
		mov	edx, [ebp+0Ch]
		mov	ecx, [ebp-8]
		mov	[edx], ecx
		mov	eax, [ebp+10h]
		mov	[eax], edi
		xor	eax, eax

loc_4B8D6E:				; CODE XREF: .text:004B8C7Bj
					; .text:004B8D15j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 343. _Getproclimits
; Exported entry 593. Getproclimits

; signed int __cdecl Getproclimits(ulong _addr, ulong *amin, ulong *amax)
		public Getproclimits
Getproclimits:				; CODE XREF: .text:0048892Dp
					; .text:004AD976p ...
		push	ebp		; _Getproclimits
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		push	ebx		; _addr
		call	Findmemory
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4B8D98
		or	eax, 0FFFFFFFFh
		jmp	loc_4B8E58
; ---------------------------------------------------------------------------

loc_4B8D98:				; CODE XREF: .text:004B8D8Ej
		lea	edx, [ebp-4]
		push	edx		; psize
		mov	ecx, [esi]
		push	ecx		; _addr
		call	Finddecode
		add	esp, 8
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4B8DB8
		mov	eax, [esi+4]
		cmp	eax, [ebp-4]
		jbe	short loc_4B8DC0

loc_4B8DB8:				; CODE XREF: .text:004B8DAEj
		or	eax, 0FFFFFFFFh
		jmp	loc_4B8E58
; ---------------------------------------------------------------------------

loc_4B8DC0:				; CODE XREF: .text:004B8DB6j
		mov	ecx, ebx
		sub	ecx, [esi]
		mov	edx, [ebp-8]
		test	byte ptr [edx+ecx], 60h
		jnz	short loc_4B8DD5
		or	eax, 0FFFFFFFFh
		jmp	loc_4B8E58
; ---------------------------------------------------------------------------

loc_4B8DD5:				; CODE XREF: .text:004B8DCBj
		mov	edx, ecx
		mov	eax, [ebp-8]
		lea	ebx, [eax+edx]
		test	edx, edx
		jbe	short loc_4B8DF7

loc_4B8DE1:				; CODE XREF: .text:004B8DF5j
		xor	eax, eax
		mov	al, [ebx]
		and	eax, 60h
		test	eax, eax
		jz	short loc_4B8DF7
		cmp	eax, 20h
		jz	short loc_4B8DF7
		dec	edx
		dec	ebx
		test	edx, edx
		ja	short loc_4B8DE1

loc_4B8DF7:				; CODE XREF: .text:004B8DDFj
					; .text:004B8DEAj ...
		mov	eax, [ebp-8]
		lea	ebx, [eax+ecx]
		jmp	short loc_4B8E11
; ---------------------------------------------------------------------------

loc_4B8DFF:				; CODE XREF: .text:004B8E17j
		xor	eax, eax
		mov	al, [ebx]
		and	eax, 60h
		test	eax, eax
		jz	short loc_4B8E19
		cmp	eax, 40h
		jz	short loc_4B8E19
		inc	ecx
		inc	ebx

loc_4B8E11:				; CODE XREF: .text:004B8DFDj
		mov	eax, [esi+4]
		dec	eax
		cmp	ecx, eax
		jb	short loc_4B8DFF

loc_4B8E19:				; CODE XREF: .text:004B8E08j
					; .text:004B8E0Dj
		mov	eax, [ebp-8]
		movzx	eax, byte ptr [eax+edx]
		and	eax, 60h
		cmp	eax, 20h
		jnz	short loc_4B8E55
		mov	eax, [ebp-8]
		movzx	eax, byte ptr [eax+ecx]
		and	eax, 60h
		cmp	eax, 40h
		jnz	short loc_4B8E55
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4B8E44
		add	edx, [esi]
		mov	eax, [ebp+0Ch]
		mov	[eax], edx

loc_4B8E44:				; CODE XREF: .text:004B8E3Bj
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4B8E51
		add	ecx, [esi]
		mov	edx, [ebp+10h]
		mov	[edx], ecx

loc_4B8E51:				; CODE XREF: .text:004B8E48j
		xor	eax, eax
		jmp	short loc_4B8E58
; ---------------------------------------------------------------------------

loc_4B8E55:				; CODE XREF: .text:004B8E26j
					; .text:004B8E35j
		or	eax, 0FFFFFFFFh

loc_4B8E58:				; CODE XREF: .text:004B8D93j
					; .text:004B8DBBj ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 344. _Getextproclimits
; Exported entry 568. Getextproclimits

; int __cdecl Getextproclimits(ulong _addr, ulong *amin,	ulong *amax)
		public Getextproclimits
Getextproclimits:			; CODE XREF: .text:00412B9Cp
					; .text:004B07D5p
		push	ebp		; _Getextproclimits
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+8]
		push	ebx		; amax
		mov	eax, [ebp+0Ch]
		push	eax		; amin
		push	esi		; _addr
		call	Getproclimits
		add	esp, 0Ch
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4B8E84
		test	ebx, ebx
		jnz	short loc_4B8E88

loc_4B8E84:				; CODE XREF: .text:004B8E7Ej
		mov	eax, edi
		jmp	short loc_4B8EB5
; ---------------------------------------------------------------------------

loc_4B8E88:				; CODE XREF: .text:004B8E82j
		push	esi		; _addr
		call	Findmemory
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4B8E99
		mov	eax, edi
		jmp	short loc_4B8EB5
; ---------------------------------------------------------------------------

loc_4B8E99:				; CODE XREF: .text:004B8E93j
		push	1		; decode
		push	1		; n
		mov	edx, [ebx]
		push	edx		; ip
		mov	ecx, [esi+4]
		push	ecx		; size
		mov	eax, [esi]
		push	eax		; base
		push	0		; copy
		call	Disassembleforward
		add	esp, 18h
		mov	[ebx], eax
		xor	eax, eax

loc_4B8EB5:				; CODE XREF: .text:004B8E86j
					; .text:004B8E97j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 345. _Newdumpselection
; Exported entry 661. Newdumpselection

; signed int __cdecl Newdumpselection(t_dump *pd, ulong	_addr, ulong size)
		public Newdumpselection
Newdumpselection:			; CODE XREF: .text:004B2D49p
					; .text:004B2F8Ap ...
		push	ebp		; _Newdumpselection
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4B8EDA
		or	eax, 0FFFFFFFFh
		jmp	loc_4B905B
; ---------------------------------------------------------------------------

loc_4B8EDA:				; CODE XREF: .text:004B8ED0j
		mov	eax, [ebx]
		cmp	esi, eax
		jb	short loc_4B8EEB
		add	eax, [ebx+4]
		cmp	esi, eax
		jb	loc_4B8FCF

loc_4B8EEB:				; CODE XREF: .text:004B8EDEj
		cmp	dword ptr [ebx+298h], 0
		jz	short loc_4B8EFC
		or	eax, 0FFFFFFFFh
		jmp	loc_4B905B
; ---------------------------------------------------------------------------

loc_4B8EFC:				; CODE XREF: .text:004B8EF2j
		push	esi		; _addr
		call	Findmemory
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4B8F11
		or	eax, 0FFFFFFFFh
		jmp	loc_4B905B
; ---------------------------------------------------------------------------

loc_4B8F11:				; CODE XREF: .text:004B8F07j
		mov	eax, [ebx+4A4h]
		test	eax, eax
		jz	short loc_4B8F2A
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+4A4h], edx

loc_4B8F2A:				; CODE XREF: .text:004B8F19j
		mov	eax, [ebx+4E8h]
		test	eax, eax
		jz	short loc_4B8F43
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+4E8h], edx

loc_4B8F43:				; CODE XREF: .text:004B8F32j
		mov	word ptr [ebx+4ECh], 0
		mov	dword ptr [ebx+6F4h], 0FFFFFFFFh
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebx+6F8h], ecx
		mov	[ebx+704h], eax
		mov	edx, [edi]
		mov	[ebx+284h], edx
		mov	[ebx], edx
		mov	eax, [edi+4]
		mov	[ebx+4], eax
		test	byte ptr [ebx+0Eh], 7
		jnz	short loc_4B8FCF
		test	byte ptr [ebx+5Bh], 10h
		jnz	short loc_4B8FCF
		push	offset aDump	; "Dump	- "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-200h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edx, [ebx+4]
		add	eax, eax
		push	edx		; size
		lea	edx, [ebp-200h]
		mov	ecx, [ebx]
		push	ecx		; _addr
		add	eax, edx
		push	eax		; s
		call	Decoderange
		add	esp, 0Ch
		lea	eax, [ebp-200h]
		push	eax		; lpString
		mov	ecx, [ebx+23Ch]
		push	ecx		; hWnd
		call	SetWindowTextW

loc_4B8FCF:				; CODE XREF: .text:004B8EE5j
					; .text:004B8F7Aj ...
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4B9005
		mov	eax, [ebx+8]
		and	eax, 3F0000h
		cmp	eax, 0C0000h
		jz	short loc_4B8FEB
		cmp	eax, 0D0000h
		jnz	short loc_4B8FF9

loc_4B8FEB:				; CODE XREF: .text:004B8FE2j
		push	1		; n
		push	esi		; _addr
		push	ebx		; pd
		call	Dumpforward
		add	esp, 0Ch
		jmp	short loc_4B900A
; ---------------------------------------------------------------------------

loc_4B8FF9:				; CODE XREF: .text:004B8FE9j
		mov	eax, [ebx+8]
		and	eax, 0FFh
		add	eax, esi
		jmp	short loc_4B900A
; ---------------------------------------------------------------------------

loc_4B9005:				; CODE XREF: .text:004B8FD3j
		mov	eax, [ebp+10h]
		add	eax, esi

loc_4B900A:				; CODE XREF: .text:004B8FF7j
					; .text:004B9003j
		mov	edx, [ebx]
		add	edx, [ebx+4]
		cmp	eax, edx
		jbe	short loc_4B9015
		mov	eax, edx

loc_4B9015:				; CODE XREF: .text:004B9011j
		mov	[ebx+294h], esi
		mov	[ebx+290h], esi
		mov	[ebx+288h], esi
		mov	[ebx+28Ch], eax
		push	1		; mode
		push	esi		; _addr
		push	ebx		; pd
		call	Scrolldumpwindow
		add	esp, 0Ch
		cmp	dword ptr [ebx+708h], 0
		jz	short loc_4B904E
		push	3
		push	ebx
		call	dword ptr [ebx+708h]
		add	esp, 8

loc_4B904E:				; CODE XREF: .text:004B9040j
		push	3
		push	ebx
		call	loc_4B8860
		add	esp, 8
		xor	eax, eax

loc_4B905B:				; CODE XREF: .text:004B8ED5j
					; .text:004B8EF7j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
