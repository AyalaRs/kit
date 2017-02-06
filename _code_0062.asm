.code

; MENUFUNC loc_474D5C
loc_474D5C:				; DATA XREF: .text:0047744Fo
					; .data:stru_53F05Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDCCh
		push	ebx
		push	esi
		push	edi		; arglist
		mov	esi, [ebp+14h]
		mov	edi, [ebp+8]
		mov	eax, [edi+68h]
		test	eax, eax
		jl	short loc_474D83
		cmp	eax, 5
		jge	short loc_474D83
		cmp	stru_5E6AB8.rtback, 0
		jle	short loc_474D8A

loc_474D83:				; CODE XREF: .text:00474D73j
					; .text:00474D78j
		xor	eax, eax
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_474D8A:				; CODE XREF: .text:00474D81j
		lea	edx, [eax+eax*2]
		lea	edx, [eax+edx*4]
		shl	edx, 3
		sub	edx, eax
		shl	edx, 2
		sub	edx, eax
		mov	ecx, dword ptr stru_5E7DA8.block.index[edx*4]
		and	ecx, 0Fh
		cmp	ecx, 3
		jz	short loc_474DB0
		xor	eax, eax
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_474DB0:				; CODE XREF: .text:00474DA7j
		imul	ebx, eax, 66Ch
		add	ebx, offset stru_5E7DA8.block._type
		mov	eax, [ebx]
		test	eax, 93Fh
		jnz	short loc_474DCC
		xor	eax, eax
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_474DCC:				; CODE XREF: .text:00474DC3j
		test	eax, 41000h
		jz	short loc_474DDA
		xor	eax, eax
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_474DDA:				; CODE XREF: .text:00474DD1j
		test	byte ptr [ebx+1], 1
		jz	short loc_474E00
		test	byte ptr [ebx+3], 2
		jz	short loc_474DF9
		cmp	dword ptr [ebx+0Ch], 10h
		jg	short loc_474DF9
		mov	eax, [ebx+8]
		cmp	eax, 4
		jz	short loc_474E00
		cmp	eax, 0Dh
		jz	short loc_474E00

loc_474DF9:				; CODE XREF: .text:00474DE4j
					; .text:00474DEAj
		xor	eax, eax
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_474E00:				; CODE XREF: .text:00474DDEj
					; .text:00474DF2j ...
		mov	edx, g_disasmdump.threadid
		push	edx		; threadid
		call	Threadregisters
		pop	ecx
		mov	[ebp-18h], eax
		test	dword ptr [ebx], 8FFh
		jz	short loc_474E2E
		cmp	run.status, 12h
		jnz	short loc_474E27
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_474E2E

loc_474E27:				; CODE XREF: .text:00474E1Fj
		xor	eax, eax
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_474E2E:				; CODE XREF: .text:00474E16j
					; .text:00474E25j
		test	byte ptr [ebx],	20h
		jz	short loc_474E42
		mov	edx, [ebp-18h]
		test	byte ptr [edx],	4
		jnz	short loc_474E42
		xor	eax, eax
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_474E42:				; CODE XREF: .text:00474E31j
					; .text:00474E39j
		test	byte ptr [ebx+1], 8
		jz	short loc_474E65
		mov	edx, [ebx+4]
		and	edx, 0FFh
		cmp	edx, 7Ch
		jnz	short loc_474E65
		mov	ecx, [ebp-18h]
		test	byte ptr [ecx],	4
		jnz	short loc_474E65
		xor	eax, eax
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_474E65:				; CODE XREF: .text:00474E46j
					; .text:00474E54j ...
		test	esi, esi
		jnz	short loc_474E73
		mov	eax, 1
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_474E73:				; CODE XREF: .text:00474E67j
		dec	esi
		jnz	loc_475B04
		lea	edx, [ebp-24h]
		push	edx		; coord
		push	0		; column
		push	offset stru_5E6AB8 ; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_474E9A
		or	ecx, 0FFFFFFFFh
		mov	[ebp-20h], ecx
		mov	[ebp-24h], ecx

loc_474E9A:				; CODE XREF: .text:00474E8Fj
		mov	eax, g_disasmdump.threadid
		push	eax		; threadid
		call	Findthread
		pop	ecx
		mov	[ebp-1Ch], eax
		test	byte ptr [ebx],	1
		jz	short loc_474F17
		cmp	dword ptr [ebx+0Ch], 1
		jnz	short loc_474EC2
		mov	edx, [ebx+14h]
		push	edx		; bytereg
		call	Byteregtodwordreg
		pop	ecx
		mov	esi, eax
		jmp	short loc_474EC5
; ---------------------------------------------------------------------------

loc_474EC2:				; CODE XREF: .text:00474EB2j
		mov	esi, [ebx+14h]

loc_474EC5:				; CODE XREF: .text:00474EC0j
		mov	eax, [ebp-18h]
		mov	edx, [eax+esi*4+0Ch]
		mov	[ebp-4], edx
		push	0		; mode
		mov	ecx, [edi+234h]
		push	ecx		; fi
		lea	ecx, [ebp-4]
		mov	eax, [ebp-20h]
		push	eax		; y
		mov	edx, [ebp-24h]
		push	edx		; x
		push	0		; letter
		push	ecx		; data
		push	esi		; reg
		mov	eax, [edi+22Ch]
		push	eax		; hparent
		call	Getregister
		add	esp, 20h
		test	eax, eax
		jle	loc_475AFD
		mov	edx, [ebp-1Ch]
		push	edx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	ecx, [ebp-18h]
		mov	eax, [ebp-4]
		mov	[ecx+esi*4+0Ch], eax
		jmp	loc_475AFD
; ---------------------------------------------------------------------------

loc_474F17:				; CODE XREF: .text:00474EACj
		test	byte ptr [ebx],	2
		jz	loc_474FA4
		mov	esi, [ebx+14h]
		mov	eax, [ebp-18h]
		mov	edx, [eax+esi*4+30h]
		mov	[ebp-4], edx
		mov	ecx, segname[esi*4]
		push	ecx
		push	offset aModifyS	; "Modify %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-224h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		push	22h		; mode
		mov	edx, [edi+234h]
		push	edx		; fi
		lea	edx, [ebp-4]
		mov	ecx, [ebp-20h]
		push	ecx		; y
		lea	ecx, [ebp-224h]
		mov	eax, [ebp-24h]
		push	eax		; x
		push	0		; letter
		push	edx		; data
		push	ecx		; _title
		mov	eax, [edi+22Ch]
		push	eax		; hparent
		call	Getinteger
		add	esp, 20h
		test	eax, eax
		jle	loc_475AFD
		mov	edx, [ebp-1Ch]
		push	edx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	eax, [ebp-18h]
		mov	ecx, [ebp-4]
		and	ecx, 0FFFFh
		mov	[eax+esi*4+30h], ecx
		jmp	loc_475AFD
; ---------------------------------------------------------------------------

loc_474FA4:				; CODE XREF: .text:00474F1Aj
		test	byte ptr [ebx],	4
		jz	loc_4750B7
		mov	edx, [ebp-18h]
		mov	esi, [edx+80h]
		add	esi, [ebx+14h]
		and	esi, 80000007h
		jns	short loc_474FC6
		dec	esi
		or	esi, 0FFFFFFF8h
		inc	esi

loc_474FC6:				; CODE XREF: .text:00474FBFj
		mov	eax, [ebp-18h]
		lea	ebx, [esi+esi*4]
		mov	edx, [eax+ebx*2+84h]
		mov	[ebp-14h], edx
		mov	edx, [eax+ebx*2+88h]
		mov	[ebp-10h], edx
		mov	dx, [eax+ebx*2+8Ch]
		mov	[ebp-0Ch], dx
		mov	ecx, [edi+234h]
		push	ecx		; fi
		lea	ecx, [ebp-14h]
		mov	eax, [ebp-20h]
		push	eax		; y
		mov	edx, [ebp-24h]
		push	edx		; x
		push	0		; letter
		push	ecx		; data
		push	esi		; reg
		mov	eax, [edi+22Ch]
		push	eax		; hparent
		call	Getfpureg
		add	esp, 1Ch
		test	eax, eax
		jle	loc_475AFD
		mov	edx, [ebp-1Ch]
		push	edx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	ecx, [ebp-18h]
		mov	eax, [ebp-14h]
		mov	[ecx+ebx*2+84h], eax
		mov	eax, [ebp-10h]
		mov	[ecx+ebx*2+88h], eax
		mov	ax, [ebp-0Ch]
		mov	[ecx+ebx*2+8Ch], ax
		cmp	dword_5BE240, 0
		jz	loc_475AFD
		lea	eax, [ebp-14h]
		cmp	dword ptr [eax], 0
		jnz	short loc_47507B
		cmp	word ptr [eax+4], 0
		jnz	short loc_47507B
		test	dword ptr [eax+6], 7FFFFFFFh
		jnz	short loc_47507B
		mov	edx, [ebp-18h]
		mov	byte ptr [edx+esi+0D4h], 1
		jmp	loc_475AFD
; ---------------------------------------------------------------------------

loc_47507B:				; CODE XREF: .text:00475059j
					; .text:00475060j ...
		mov	ecx, [eax+6]
		mov	edx, ecx
		and	edx, 7FFF0000h
		test	edx, edx
		jz	short loc_4750A7
		cmp	edx, 7FFF0000h
		jz	short loc_4750A7
		test	ch, 80h
		jz	short loc_4750A7
		mov	eax, [ebp-18h]
		mov	byte ptr [eax+esi+0D4h], 0
		jmp	loc_475AFD
; ---------------------------------------------------------------------------

loc_4750A7:				; CODE XREF: .text:00475088j
					; .text:00475090j ...
		mov	ecx, [ebp-18h]
		mov	byte ptr [ecx+esi+0D4h], 2
		jmp	loc_475AFD
; ---------------------------------------------------------------------------

loc_4750B7:				; CODE XREF: .text:00474FA7j
		test	byte ptr [ebx],	8
		jz	loc_47515F
		mov	esi, [ebx+14h]
		push	8		; n
		mov	ebx, esi
		add	ebx, ebx
		lea	ebx, [ebx+ebx*4]
		add	ebx, [ebp-18h]
		add	ebx, 84h
		push	ebx		; src
		lea	eax, [ebp-234h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, mmxname[esi*4]
		push	edx
		push	offset aModifyS	; "Modify %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-224h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	eax, [edi+234h]
		push	eax		; fi
		lea	eax, [ebp-234h]
		mov	edx, [ebp-20h]
		push	edx		; y
		lea	edx, [ebp-224h]
		mov	ecx, [ebp-24h]
		push	ecx		; x
		push	0		; letter
		push	eax		; data
		push	edx		; _title
		mov	ecx, [edi+22Ch]
		push	ecx		; hparent
		call	Getmmx
		add	esp, 1Ch
		test	eax, eax
		jle	loc_475AFD
		mov	eax, [ebp-1Ch]
		push	eax		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		lea	edx, [ebp-234h]
		push	8		; n
		push	edx		; src
		push	ebx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_475AFD
; ---------------------------------------------------------------------------

loc_47515F:				; CODE XREF: .text:004750BAj
		test	byte ptr [ebx],	10h
		jz	loc_47520C
		mov	esi, [ebx+14h]
		push	8		; n
		mov	ebx, esi
		add	ebx, ebx
		lea	ebx, [ebx+ebx*4]
		add	ebx, [ebp-18h]
		add	ebx, 84h
		push	ebx		; src
		lea	eax, [ebp-234h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, mmxname[esi*4]
		push	edx
		push	offset aModify3dnowReg ; "Modify 3DNow!	register %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-224h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		push	40000h		; mode
		mov	eax, [edi+234h]
		push	eax		; fi
		lea	eax, [ebp-234h]
		mov	edx, [ebp-20h]
		push	edx		; y
		lea	edx, [ebp-224h]
		mov	ecx, [ebp-24h]
		push	ecx		; x
		push	0		; letter
		push	eax		; data
		push	edx		; _title
		mov	ecx, [edi+22Ch]
		push	ecx		; hparent
		call	Get3dnow
		add	esp, 20h
		test	eax, eax
		jle	loc_475AFD
		mov	eax, [ebp-1Ch]
		push	eax		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		lea	edx, [ebp-234h]
		push	8		; n
		push	edx		; src
		push	ebx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_475AFD
; ---------------------------------------------------------------------------

loc_47520C:				; CODE XREF: .text:00475162j
		test	byte ptr [ebx],	20h
		jz	loc_475305
		mov	esi, [ebx+14h]
		push	10h		; n
		mov	eax, esi
		shl	eax, 4
		add	eax, [ebp-18h]
		add	eax, 110h
		push	eax		; src
		lea	edx, [ebp-234h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, [ebx+4]
		and	ecx, 0FFh
		add	ecx, 0FFFFFFB2h
		sub	ecx, 6
		jb	short loc_47525C
		sub	ecx, 4
		jb	short loc_475265
		add	ecx, 0FFFFFFDBh
		sub	ecx, 2
		jb	short loc_47525C
		sub	ecx, 2
		jb	short loc_475265
		jmp	short loc_47526E
; ---------------------------------------------------------------------------

loc_47525C:				; CODE XREF: .text:00475246j
					; .text:00475253j
		mov	dword ptr [ebp-8], 0C0704h
		jmp	short loc_475275
; ---------------------------------------------------------------------------

loc_475265:				; CODE XREF: .text:0047524Bj
					; .text:00475258j
		mov	dword ptr [ebp-8], 80708h
		jmp	short loc_475275
; ---------------------------------------------------------------------------

loc_47526E:				; CODE XREF: .text:0047525Aj
		mov	dword ptr [ebp-8], 0C0104h

loc_475275:				; CODE XREF: .text:00475263j
					; .text:0047526Cj
		mov	eax, ssename[esi*4]
		push	eax
		push	offset aModifyS	; "Modify %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-224h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ecx, [ebp-8]
		push	ecx		; mode
		mov	eax, [edi+234h]
		push	eax		; fi
		lea	eax, [ebp-234h]
		mov	edx, [ebp-20h]
		push	edx		; y
		lea	edx, [ebp-224h]
		mov	ecx, [ebp-24h]
		push	ecx		; x
		push	0		; letter
		push	eax		; data
		push	edx		; _title
		mov	ecx, [edi+22Ch]
		push	ecx		; hparent
		call	Getsse
		add	esp, 20h
		test	eax, eax
		jle	loc_475AFD
		mov	eax, [ebp-1Ch]
		push	eax		; pthr
		call	Registermodifiedbyuser
		mov	edx, [ebp-18h]
		pop	ecx
		lea	ecx, [ebp-234h]
		shl	esi, 4
		or	dword ptr [edx], 8
		push	10h		; n
		push	ecx		; src
		add	esi, [ebp-18h]
		add	esi, 110h
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_475AFD
; ---------------------------------------------------------------------------

loc_475305:				; CODE XREF: .text:0047520Fj
		test	byte ptr [ebx+1], 1
		jz	loc_4759A9
		push	10h		; n
		push	0		; c
		lea	eax, [ebp-234h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		push	offset aEdit	; "Edit	"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-224h]
		push	edx		; dest
		call	StrcopyW
		mov	esi, eax
		mov	eax, [ebx+4]
		and	eax, 0FFh
		add	esp, 0Ch
		add	eax, 0FFFFFFEAh	; switch 83 cases
		cmp	eax, 52h
		ja	loc_475942	; jumptable 0047535E default case
		mov	al, ds:byte_475365[eax]
		jmp	ds:off_4753B8[eax*4] ; switch jump
; ---------------------------------------------------------------------------
byte_475365	db	5,     5,     5,     5 ; DATA XREF: .text:00475358r
		db	5,     5,     5,     5 ; indirect table	for switch statement
		db	5,     0,     5,     5
		db	5,     5,     5,     5
		db	5,     0,     5,     0
		db	5,     0,     5,     5
		db	0,     0,     5,     0
		db	0,     0,     0,     0
		db	0,     0,     0,     0
		db	0,     0,     2,     2
		db	2,     0,     0,     4
		db	4,     0,     4,     0
		db	4,     0,     4,     0
		db	3,     0,     0,     0
		db	0,     0,     0,     1
		db	2,     1,     0,     0
		db	1,     2,     0,     1
		db	1,     1,     1,     1
		db	0,     1,     1,     1
		db	0,     0,     0,     1
		db	1,     0,     1
off_4753B8	dd offset loc_475942, offset loc_475849, offset	loc_475557
					; DATA XREF: .text:0047535Er
		dd offset loc_475788, offset loc_4756CC, offset	loc_4753D0 ; jump table	for switch statement
; ---------------------------------------------------------------------------

loc_4753D0:				; CODE XREF: .text:0047535Ej
					; DATA XREF: .text:off_4753B8o
		cmp	dword ptr [ebx+0Ch], 1 ; jumptable 0047535E cases 22-30,32-38,40,42,44,45,48
		jnz	short loc_47540A
		mov	dword ptr [ebp-8], 101h
		push	offset aByteAt	; "byte	at "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 100h
		sub	edx, esi
		lea	eax, [ebp-224h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_475485
; ---------------------------------------------------------------------------

loc_47540A:				; CODE XREF: .text:004753D4j
		cmp	dword ptr [ebx+0Ch], 2
		jnz	short loc_475444
		mov	dword ptr [ebp-8], 102h
		push	offset aWordAt	; "word	at "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 100h
		sub	edx, esi
		lea	eax, [ebp-224h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_475485
; ---------------------------------------------------------------------------

loc_475444:				; CODE XREF: .text:0047540Ej
		cmp	dword ptr [ebx+0Ch], 4
		jnz	short loc_47547E
		mov	dword ptr [ebp-8], 104h
		push	offset aDwordAt	; "dword at "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 100h
		sub	edx, esi
		lea	eax, [ebp-224h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_475485
; ---------------------------------------------------------------------------

loc_47547E:				; CODE XREF: .text:00475448j
		xor	eax, eax
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_475485:				; CODE XREF: .text:00475408j
					; .text:00475442j ...
		mov	edx, 100h
		lea	ecx, [ebp-224h]
		sub	edx, esi
		add	esi, esi
		push	0		; comment
		push	edx		; nsymb
		add	esi, ecx
		push	esi		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [ebx+3Ch]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		push	1		; mode
		mov	edx, [ebx+0Ch]
		push	edx		; size
		mov	ecx, [ebx+3Ch]
		push	ecx		; _addr
		lea	eax, [ebp-234h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4754E3
		push	offset aMemoryIsNotRea ; "Memory is not	readable"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_4754E3:				; CODE XREF: .text:004754C8j
		cmp	dword ptr [ebx+0Ch], 4
		jnz	short loc_475520
		mov	edx, [ebp-8]
		push	edx		; mode
		mov	ecx, [edi+234h]
		push	ecx		; fi
		lea	ecx, [ebp-234h]
		mov	eax, [ebp-20h]
		push	eax		; y
		lea	eax, [ebp-224h]
		mov	edx, [ebp-24h]
		push	edx		; x
		push	0		; letter
		push	ecx		; data
		push	eax		; _title
		mov	edx, [edi+22Ch]
		push	edx		; hparent
		call	Getdword
		add	esp, 20h
		jmp	loc_475949
; ---------------------------------------------------------------------------

loc_475520:				; CODE XREF: .text:004754E7j
		mov	ecx, [ebp-8]
		push	ecx		; mode
		mov	eax, [edi+234h]
		push	eax		; fi
		lea	eax, [ebp-234h]
		mov	edx, [ebp-20h]
		push	edx		; y
		lea	edx, [ebp-224h]
		mov	ecx, [ebp-24h]
		push	ecx		; x
		push	0		; letter
		push	eax		; data
		push	edx		; _title
		mov	ecx, [edi+22Ch]
		push	ecx		; hparent
		call	Getinteger
		add	esp, 20h
		jmp	loc_475949
; ---------------------------------------------------------------------------

loc_475557:				; CODE XREF: .text:0047535Ej
					; DATA XREF: .text:off_4753B8o
		cmp	dword ptr [ebx+0Ch], 4 ; jumptable 0047535E cases 60-62,82,87
		jnz	short loc_475591
		mov	dword ptr [ebp-8], 4
		push	offset a32BitFloat_0 ; "32-bit float "
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, esi
		mov	eax, 100h
		sub	eax, esi
		lea	ecx, [ebp-224h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_47560C
; ---------------------------------------------------------------------------

loc_475591:				; CODE XREF: .text:0047555Bj
		cmp	dword ptr [ebx+0Ch], 8
		jnz	short loc_4755CB
		mov	dword ptr [ebp-8], 8
		push	offset a64BitFloat_1 ; "64-bit float "
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, esi
		mov	eax, 100h
		sub	eax, esi
		lea	ecx, [ebp-224h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_47560C
; ---------------------------------------------------------------------------

loc_4755CB:				; CODE XREF: .text:00475595j
		cmp	dword ptr [ebx+0Ch], 0Ah
		jnz	short loc_475605
		mov	dword ptr [ebp-8], 0Ah
		push	offset a80BitFloat_1 ; "80-bit float "
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, esi
		mov	eax, 100h
		sub	eax, esi
		lea	ecx, [ebp-224h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		jmp	short loc_47560C
; ---------------------------------------------------------------------------

loc_475605:				; CODE XREF: .text:004755CFj
		xor	eax, eax
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_47560C:				; CODE XREF: .text:0047558Fj
					; .text:004755C9j ...
		push	(offset	aByteAt+0Ah) ; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 100h
		sub	edx, esi
		lea	eax, [ebp-224h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	edx, 100h
		lea	ecx, [ebp-224h]
		sub	edx, esi
		add	esi, esi
		push	0		; comment
		push	edx		; nsymb
		add	esi, ecx
		push	esi		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [ebx+3Ch]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		push	1		; mode
		mov	edx, [ebx+0Ch]
		push	edx		; size
		mov	ecx, [ebx+3Ch]
		push	ecx		; _addr
		lea	eax, [ebp-234h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_475695
		push	offset aMemoryIsNotRea ; "Memory is not	readable"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_475695:				; CODE XREF: .text:0047567Aj
		mov	edx, [ebp-8]
		push	edx		; mode
		mov	ecx, [edi+234h]
		push	ecx		; fi
		lea	ecx, [ebp-234h]
		mov	eax, [ebp-20h]
		push	eax		; y
		lea	eax, [ebp-224h]
		mov	edx, [ebp-24h]
		push	edx		; x
		push	0		; letter
		push	ecx		; data
		push	eax		; _title
		mov	edx, [edi+22Ch]
		push	edx		; hparent
		call	Getfloat
		add	esp, 20h
		jmp	loc_475949
; ---------------------------------------------------------------------------

loc_4756CC:				; CODE XREF: .text:0047535Ej
					; DATA XREF: .text:off_4753B8o
		push	offset aMmxOperandAt ; jumptable 0047535E cases	65,66,68,70,72
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, esi
		mov	ecx, 100h
		sub	ecx, esi
		lea	edx, [ebp-224h]
		add	eax, eax
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	ecx, 100h
		lea	eax, [ebp-224h]
		sub	ecx, esi
		add	esi, esi
		push	0		; comment
		push	ecx		; nsymb
		add	esi, eax
		push	esi		; symb
		push	20400h		; mode
		push	0		; amod
		mov	edx, [ebx+3Ch]
		push	edx		; _addr
		call	Decodeaddress
		add	esp, 18h
		push	1		; mode
		mov	ecx, [ebx+0Ch]
		push	ecx		; size
		mov	eax, [ebx+3Ch]
		push	eax		; _addr
		lea	edx, [ebp-234h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_475755
		push	offset aMemoryIsNotRea ; "Memory is not	readable"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_475755:				; CODE XREF: .text:0047573Aj
		mov	edx, [edi+234h]
		push	edx		; fi
		lea	edx, [ebp-234h]
		mov	ecx, [ebp-20h]
		push	ecx		; y
		lea	ecx, [ebp-224h]
		mov	eax, [ebp-24h]
		push	eax		; x
		push	0		; letter
		push	edx		; data
		push	ecx		; _title
		mov	eax, [edi+22Ch]
		push	eax		; hparent
		call	Getmmx
		add	esp, 1Ch
		jmp	loc_475949
; ---------------------------------------------------------------------------

loc_475788:				; CODE XREF: .text:0047535Ej
					; DATA XREF: .text:off_4753B8o
		push	offset a3dnowOperandAt ; jumptable 0047535E case 74
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, esi
		mov	edx, 100h
		sub	edx, esi
		lea	eax, [ebp-224h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		mov	edx, 100h
		lea	ecx, [ebp-224h]
		sub	edx, esi
		add	esi, esi
		push	0		; comment
		push	edx		; nsymb
		add	esi, ecx
		push	esi		; symb
		push	20400h		; mode
		push	0		; amod
		mov	eax, [ebx+3Ch]
		push	eax		; _addr
		call	Decodeaddress
		add	esp, 18h
		push	1		; mode
		mov	edx, [ebx+0Ch]
		push	edx		; size
		mov	ecx, [ebx+3Ch]
		push	ecx		; _addr
		lea	eax, [ebp-234h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_475811
		push	offset aMemoryIsNotRea ; "Memory is not	readable"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_475811:				; CODE XREF: .text:004757F6j
		push	40000h		; mode
		mov	edx, [edi+234h]
		push	edx		; fi
		lea	edx, [ebp-234h]
		mov	ecx, [ebp-20h]
		push	ecx		; y
		lea	ecx, [ebp-224h]
		mov	eax, [ebp-24h]
		push	eax		; x
		push	0		; letter
		push	edx		; data
		push	ecx		; _title
		mov	eax, [edi+22Ch]
		push	eax		; hparent
		call	Get3dnow
		add	esp, 20h
		jmp	loc_475949
; ---------------------------------------------------------------------------

loc_475849:				; CODE XREF: .text:0047535Ej
					; DATA XREF: .text:off_4753B8o
		cmp	dword ptr [ebx+8], 0Dh ; jumptable 0047535E cases 81,83,86,89-93,95-97,101,102,104
		jnz	short loc_47586B
		cmp	dword ptr [ebx+10h], 4
		mov	edx, 0C0004h
		jz	short loc_475860
		add	edx, 0FFFC0004h

loc_475860:				; CODE XREF: .text:00475858j
		or	edx, 700h
		mov	[ebp-8], edx
		jmp	short loc_475885
; ---------------------------------------------------------------------------

loc_47586B:				; CODE XREF: .text:0047584Dj
		cmp	dword ptr [ebx+10h], 2
		mov	ecx, 0E0002h
		jz	short loc_47587C
		add	ecx, 0FFFE0002h

loc_47587C:				; CODE XREF: .text:00475874j
		or	ecx, 100h
		mov	[ebp-8], ecx

loc_475885:				; CODE XREF: .text:00475869j
		push	offset aSseOperandAt ; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, esi
		mov	eax, 100h
		sub	eax, esi
		lea	ecx, [ebp-224h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esi, eax
		add	esp, 0Ch
		mov	eax, 100h
		lea	edx, [ebp-224h]
		sub	eax, esi
		add	esi, esi
		push	0		; comment
		push	eax		; nsymb
		add	esi, edx
		push	esi		; symb
		push	20400h		; mode
		push	0		; amod
		mov	ecx, [ebx+3Ch]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		push	1		; mode
		mov	eax, [ebx+0Ch]
		push	eax		; size
		mov	edx, [ebx+3Ch]
		push	edx		; _addr
		lea	ecx, [ebp-234h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_47590E
		push	offset aMemoryIsNotRea ; "Memory is not	readable"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		xor	eax, eax
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_47590E:				; CODE XREF: .text:004758F3j
		mov	edx, [ebp-8]
		push	edx		; mode
		mov	ecx, [edi+234h]
		push	ecx		; fi
		lea	ecx, [ebp-234h]
		mov	eax, [ebp-20h]
		push	eax		; y
		lea	eax, [ebp-224h]
		mov	edx, [ebp-24h]
		push	edx		; x
		push	0		; letter
		push	ecx		; data
		push	eax		; _title
		mov	edx, [edi+22Ch]
		push	edx		; hparent
		call	Getsse
		add	esp, 20h
		jmp	short loc_475949
; ---------------------------------------------------------------------------

loc_475942:				; CODE XREF: .text:00475352j
					; .text:0047535Ej
					; DATA XREF: ...
		xor	eax, eax	; jumptable 0047535E default case
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_475949:				; CODE XREF: .text:0047551Bj
					; .text:00475552j ...
		test	eax, eax
		jg	short loc_475954
		xor	eax, eax
		jmp	loc_475B06
; ---------------------------------------------------------------------------

loc_475954:				; CODE XREF: .text:0047594Bj
		call	Suspendallthreads
		push	20h		; mode
		mov	edx, [ebx+0Ch]
		push	edx		; size
		mov	ecx, [ebx+3Ch]
		push	ecx		; _addr
		lea	eax, [ebp-234h]
		push	eax		; buf
		call	Writememory
		add	esp, 10h
		push	0		; keephittrace
		mov	edx, [ebx+0Ch]
		push	edx		; size
		mov	ecx, [ebx+3Ch]
		push	ecx		; base
		call	Removeanalysis
		add	esp, 0Ch
		mov	eax, [ebx+0Ch]
		push	eax
		mov	edx, [ebx+3Ch]
		push	edx
		mov	ecx, [ebx+3Ch]
		push	ecx		; _addr
		call	Findmodule
		pop	ecx
		push	eax
		call	loc_4D6D14
		add	esp, 0Ch
		call	Resumeallthreads
		jmp	loc_475AFD
; ---------------------------------------------------------------------------

loc_4759A9:				; CODE XREF: .text:00475309j
		test	byte ptr [ebx+1], 8
		jz	loc_475AFD
		mov	eax, [ebx+4]
		and	eax, 0FFh
		sub	eax, 7Ah
		jz	short loc_4759CF
		dec	eax
		jz	short loc_475A35
		dec	eax
		jz	loc_475A99
		jmp	loc_475AF9
; ---------------------------------------------------------------------------

loc_4759CF:				; CODE XREF: .text:004759BEj
		mov	edx, [ebp-18h]
		mov	ecx, [edx+0DCh]
		mov	[ebp-4], ecx
		push	22h		; mode
		mov	eax, [edi+234h]
		push	eax		; fi
		lea	eax, [ebp-4]
		mov	edx, [ebp-20h]
		push	edx		; y
		mov	ecx, [ebp-24h]
		push	ecx		; x
		push	0		; letter
		push	eax		; data
		push	offset aModifyFpuStatu ; "Modify FPU status register"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	edx, [edi+22Ch]
		push	edx		; hparent
		call	Getinteger
		add	esp, 20h
		test	eax, eax
		jle	loc_475AFD
		mov	ecx, [ebp-1Ch]
		push	ecx		; pthr
		call	Registermodifiedbyuser
		mov	edx, [ebp-18h]
		mov	eax, [ebp-4]
		and	eax, 0FFFFh
		pop	ecx
		mov	[edx+0DCh], eax
		jmp	loc_475AFD
; ---------------------------------------------------------------------------

loc_475A35:				; CODE XREF: .text:004759C1j
		mov	ecx, [ebp-18h]
		mov	eax, [ecx+0E0h]
		mov	[ebp-4], eax
		push	22h		; mode
		mov	edx, [edi+234h]
		push	edx		; fi
		lea	edx, [ebp-4]
		mov	ecx, [ebp-20h]
		push	ecx		; y
		mov	eax, [ebp-24h]
		push	eax		; x
		push	0		; letter
		push	edx		; data
		push	offset aModifyFpuContr ; "Modify FPU control register"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	ecx, [edi+22Ch]
		push	ecx		; hparent
		call	Getinteger
		add	esp, 20h
		test	eax, eax
		jle	loc_475AFD
		mov	eax, [ebp-1Ch]
		push	eax		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	edx, [ebp-4]
		and	edx, 0FFFFh
		mov	ecx, [ebp-18h]
		mov	[ecx+0E0h], edx
		jmp	short loc_475AFD
; ---------------------------------------------------------------------------

loc_475A99:				; CODE XREF: .text:004759C4j
		mov	eax, [ebp-18h]
		mov	edx, [eax+190h]
		mov	[ebp-4], edx
		push	24h		; mode
		mov	ecx, [edi+234h]
		push	ecx		; fi
		lea	ecx, [ebp-4]
		mov	eax, [ebp-20h]
		push	eax		; y
		mov	edx, [ebp-24h]
		push	edx		; x
		push	0		; letter
		push	ecx		; data
		push	offset aModifyMxcsr ; "Modify MXCSR"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	eax, [edi+22Ch]
		push	eax		; hparent
		call	Getinteger
		add	esp, 20h
		test	eax, eax
		jle	short loc_475AFD
		mov	edx, [ebp-1Ch]
		push	edx		; pthr
		call	Registermodifiedbyuser
		pop	ecx
		mov	ecx, [ebp-18h]
		or	dword ptr [ecx], 8
		mov	eax, [ebp-18h]
		mov	edx, [ebp-4]
		mov	[eax+190h], edx
		jmp	short loc_475AFD
; ---------------------------------------------------------------------------

loc_475AF9:				; CODE XREF: .text:004759CAj
		xor	eax, eax
		jmp	short loc_475B06
; ---------------------------------------------------------------------------

loc_475AFD:				; CODE XREF: .text:00474EF8j
					; .text:00474F12j ...
		mov	eax, 1
		jmp	short loc_475B06
; ---------------------------------------------------------------------------

loc_475B04:				; CODE XREF: .text:00474E74j
		xor	eax, eax

loc_475B06:				; CODE XREF: .text:00474D85j
					; .text:00474DABj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; MENUFUNC loc_475B10
loc_475B10:				; DATA XREF: .text:0047746Eo
					; .data:stru_53F05Co
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ecx, [ebp+14h]
		mov	eax, [ebp+8]
		mov	edx, [eax+68h]
		test	edx, edx
		jl	short loc_475B26
		cmp	edx, 5
		jl	short loc_475B2B

loc_475B26:				; CODE XREF: .text:00475B1Fj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_475B2B:				; CODE XREF: .text:00475B24j
		lea	ebx, [edx+edx*2]
		lea	ebx, [edx+ebx*4]
		shl	ebx, 3
		sub	ebx, edx
		shl	ebx, 2
		sub	ebx, edx
		mov	ebx, dword ptr stru_5E7DA8.block.index[ebx*4]
		and	ebx, 0Fh
		cmp	ebx, 3
		jz	short loc_475B4F
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_475B4F:				; CODE XREF: .text:00475B48j
		imul	edx, 66Ch
		add	edx, offset stru_5E7DA8.block._type
		mov	eax, edx
		test	byte ptr [eax+3], 2
		jnz	short loc_475B68
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_475B68:				; CODE XREF: .text:00475B61j
		mov	edx, [eax+4]
		and	edx, 0F0000h
		cmp	edx, 80000h
		jz	short loc_475B7E
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_475B7E:				; CODE XREF: .text:00475B77j
		test	ecx, ecx
		jnz	short loc_475B8A
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_475B8A:				; CODE XREF: .text:00475B80j
		dec	ecx
		jnz	short loc_475BA8
		push	9		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	edx, [eax+40h]
		push	edx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_475BA8:				; CODE XREF: .text:00475B8Bj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; MENUFUNC loc_475BB0
loc_475BB0:				; DATA XREF: .text:0047755Fo
					; .data:stru_53F05Co
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+14h]
		mov	eax, [ebp+8]
		mov	edx, [eax+68h]
		test	edx, edx
		jl	short loc_475BC6
		cmp	edx, 5
		jl	short loc_475BCB

loc_475BC6:				; CODE XREF: .text:00475BBFj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_475BCB:				; CODE XREF: .text:00475BC4j
		lea	ecx, [edx+edx*2]
		lea	ecx, [edx+ecx*4]
		shl	ecx, 3
		sub	ecx, edx
		shl	ecx, 2
		sub	ecx, edx
		mov	edx, dword ptr stru_5E7DA8.block.index[ecx*4]
		and	edx, 0Fh
		cmp	edx, 8
		jz	short loc_475BEF
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_475BEF:				; CODE XREF: .text:00475BE8j
		cmp	dword ptr (stru_5E7DA8.block.status+1FCh)[ecx*4], 0
		jnz	short loc_475BFE
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_475BFE:				; CODE XREF: .text:00475BF7j
		test	ebx, ebx
		jnz	short loc_475C0A
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_475C0A:				; CODE XREF: .text:00475C00j
		dec	ebx
		jnz	short loc_475C47
		push	9		; mode
		push	0		; stackaddr
		mov	edx, [eax+68h]
		mov	ebx, edx
		lea	edx, [ebx+edx*2]
		lea	edx, [ebx+edx*4]
		shl	edx, 3
		sub	edx, ebx
		shl	edx, 2
		sub	edx, ebx
		mov	edx, dword ptr (stru_5E7DA8.block.status+1FCh)[edx*4]
		push	edx		; selsize
		push	0		; dumpaddr
		mov	eax, dword ptr (stru_5E7DA8.block.status+1F8h)[ecx*4]
		push	eax		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_475C47:				; CODE XREF: .text:00475C0Bj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_475C4C:				; DATA XREF: .data:stru_53F05Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		mov	edi, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	eax, [ebx+68h]
		test	eax, eax
		jl	short loc_475C67
		cmp	eax, 5
		jl	short loc_475C6E

loc_475C67:				; CODE XREF: .text:00475C60j
		xor	eax, eax
		jmp	loc_475D54
; ---------------------------------------------------------------------------

loc_475C6E:				; CODE XREF: .text:00475C65j
		lea	edx, [eax+eax*2]
		lea	edx, [eax+edx*4]
		shl	edx, 3
		sub	edx, eax
		shl	edx, 2
		sub	edx, eax
		mov	ecx, dword ptr stru_5E7DA8.block.index[edx*4]
		and	ecx, 0Fh
		cmp	ecx, 3
		jz	short loc_475C94
		xor	eax, eax
		jmp	loc_475D54
; ---------------------------------------------------------------------------

loc_475C94:				; CODE XREF: .text:00475C8Bj
		test	byte ptr (stru_5E7DA8.block._type+3)[edx*4], 1
		jnz	short loc_475CA5
		xor	eax, eax
		jmp	loc_475D54
; ---------------------------------------------------------------------------

loc_475CA5:				; CODE XREF: .text:00475C9Cj
		mov	edx, dword ptr (stru_5E7DA8.block.tabname+14h)[edx*4]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_475CBE
		xor	eax, eax
		jmp	loc_475D54
; ---------------------------------------------------------------------------

loc_475CBE:				; CODE XREF: .text:00475CB5j
		cmp	esi, 1
		jnz	short loc_475CD0
		test	byte ptr [eax+0Ah], 8
		jnz	short loc_475CD0
		xor	eax, eax
		jmp	loc_475D54
; ---------------------------------------------------------------------------

loc_475CD0:				; CODE XREF: .text:00475CC1j
					; .text:00475CC7j
		test	edi, edi
		jnz	short loc_475CDB
		mov	eax, 1
		jmp	short loc_475D54
; ---------------------------------------------------------------------------

loc_475CDB:				; CODE XREF: .text:00475CD2j
		dec	edi
		jnz	short loc_475D52
		test	esi, esi
		jnz	short loc_475D1C
		push	90h		; mode
		push	0		; stackaddr
		mov	eax, [ebx+68h]
		mov	edx, eax
		lea	eax, [edx+eax*2]
		lea	eax, [edx+eax*4]
		shl	eax, 3
		sub	eax, edx
		shl	eax, 2
		sub	eax, edx
		mov	ecx, stru_5E7DA8.block.blk1[eax*4]
		push	ecx		; selsize
		mov	eax, dword ptr (stru_5E7DA8.block.tabname+14h)[eax*4]
		push	eax		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_475D4E
; ---------------------------------------------------------------------------

loc_475D1C:				; CODE XREF: .text:00475CE0j
		push	90h		; mode
		mov	edx, [ebx+68h]
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*4]
		shl	edx, 3
		sub	edx, ecx
		shl	edx, 2
		sub	edx, ecx
		mov	eax, dword ptr (stru_5E7DA8.block.tabname+14h)[edx*4]
		push	eax		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_475D4E:				; CODE XREF: .text:00475D1Aj
		xor	eax, eax
		jmp	short loc_475D54
; ---------------------------------------------------------------------------

loc_475D52:				; CODE XREF: .text:00475CDCj
		xor	eax, eax

loc_475D54:				; CODE XREF: .text:00475C69j
					; .text:00475C8Fj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_475D5C:				; DATA XREF: .data:stru_53F05Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF718h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+10h], 0
		mov	eax, [ebp+14h]
		jb	short loc_475D83
		mov	edx, [ebp+10h]
		cmp	edx, dword_5E9E1C
		jb	short loc_475D8A

loc_475D83:				; CODE XREF: .text:00475D76j
		xor	eax, eax
		jmp	loc_475F45
; ---------------------------------------------------------------------------

loc_475D8A:				; CODE XREF: .text:00475D81j
		mov	esi, [ebp+10h]
		shl	esi, 3
		add	esi, offset stru_5E9DC4
		test	eax, eax
		jnz	loc_475F24
		push	offset aGoTo	; "Go to "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		push	5		; mode
		push	10h		; size
		mov	eax, [esi]
		push	eax		; _addr
		lea	edx, [ebp-18h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	edi, eax
		test	edi, edi
		jle	short loc_475DFA
		push	0		; predict
		push	0		; reg
		lea	eax, [ebp-18E8h]
		push	811h		; mode
		push	eax		; da
		push	0		; dec
		mov	edx, [esi]
		lea	ecx, [ebp-18h]
		push	edx		; ip
		push	edi		; cmdsize
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		mov	edi, eax

loc_475DFA:				; CODE XREF: .text:00475DD4j
		test	edi, edi
		jz	short loc_475E3E
		xor	eax, eax
		lea	edi, [ebp-51Ch]
		mov	[ebp-4], eax
		mov	edx, [ebp+0Ch]
		lea	ecx, [edx+ebx*2]
		mov	[ebp-8], ecx
		jmp	short loc_475E28
; ---------------------------------------------------------------------------

loc_475E14:				; CODE XREF: .text:00475E3Aj
		mov	ax, [edi]
		mov	edx, [ebp-8]
		mov	[edx], ax
		inc	ebx
		add	dword ptr [ebp-8], 2
		inc	dword ptr [ebp-4]
		add	edi, 2

loc_475E28:				; CODE XREF: .text:00475E12j
		mov	cx, [edi]
		push	ecx		; c
		call	_iswalnum
		pop	ecx
		test	eax, eax
		jz	short loc_475EA6
		cmp	dword ptr [ebp-4], 10h
		jl	short loc_475E14
		jmp	short loc_475EA6
; ---------------------------------------------------------------------------

loc_475E3E:				; CODE XREF: .text:00475DFCj
		mov	eax, [esi+4]
		cmp	eax, 1
		jl	short loc_475E4B
		cmp	eax, 4
		jle	short loc_475E58

loc_475E4B:				; CODE XREF: .text:00475E44j
		mov	eax, [esi+4]
		cmp	eax, 8
		jl	short loc_475E80
		cmp	eax, 0Ah
		jg	short loc_475E80

loc_475E58:				; CODE XREF: .text:00475E49j
		push	offset aJump_0	; "jump"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		mov	ecx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_475EA6
; ---------------------------------------------------------------------------

loc_475E80:				; CODE XREF: .text:00475E51j
					; .text:00475E56j
		push	offset aCall_1	; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		add	edx, edx
		push	eax		; n
		add	edx, [ebp+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_475EA6:				; CODE XREF: .text:00475E34j
					; .text:00475E3Cj ...
		mov	eax, [esi+4]
		cmp	eax, 3
		jz	short loc_475EB3
		cmp	eax, 6
		jnz	short loc_475ED2

loc_475EB3:				; CODE XREF: .text:00475EACj
		mov	edx, 100h
		mov	ecx, ebx
		sub	edx, ebx
		push	offset asc_53F472 ; "[]"
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_475ED2:				; CODE XREF: .text:00475EB1j
		mov	eax, [esi]
		push	eax
		push	offset aFrom08x	; " from %08X"
		call	_T
		pop	ecx
		mov	edx, ebx
		push	eax		; format
		add	edx, edx
		add	edx, [ebp+0Ch]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		cmp	dword ptr [ebp+10h], 9
		jnz	short loc_475F1D
		cmp	dword_5E9E1C, 0Ah
		jbe	short loc_475F1D
		push	offset a____8	; "..."
		mov	ecx, 100h
		sub	ecx, ebx
		push	ecx		; n
		add	ebx, ebx
		add	ebx, [ebp+0Ch]
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_475F1D:				; CODE XREF: .text:00475EF7j
					; .text:00475F00j
		mov	eax, 1
		jmp	short loc_475F45
; ---------------------------------------------------------------------------

loc_475F24:				; CODE XREF: .text:00475D98j
		dec	eax
		jnz	short loc_475F43
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	edx, [esi]
		push	edx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		mov	eax, 1
		jmp	short loc_475F45
; ---------------------------------------------------------------------------

loc_475F43:				; CODE XREF: .text:00475F25j
		xor	eax, eax

loc_475F45:				; CODE XREF: .text:00475D85j
					; .text:00475F22j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; MENUFUNC loc_475F4C
loc_475F4C:				; DATA XREF: .text:004774C8o
					; .text:00477522o ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		mov	eax, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	edx, [ebx+68h]
		test	edx, edx
		jl	short loc_475F6A
		cmp	edx, 5
		jl	short loc_475F71

loc_475F6A:				; CODE XREF: .text:00475F63j
		xor	eax, eax
		jmp	loc_476085
; ---------------------------------------------------------------------------

loc_475F71:				; CODE XREF: .text:00475F68j
		test	esi, esi
		jnz	short loc_475FBA
		mov	ecx, [ebx+68h]
		mov	edx, ecx
		lea	ecx, [edx+ecx*2]
		lea	ecx, [edx+ecx*4]
		shl	ecx, 3
		sub	ecx, edx
		shl	ecx, 2
		sub	ecx, edx
		mov	edx, dword ptr stru_5E7DA8.block.index[ecx*4]
		and	edx, 0Fh
		cmp	edx, 4
		jz	short loc_475FBA
		mov	ecx, [ebx+68h]
		mov	edi, ecx
		lea	ecx, [edi+ecx*2]
		lea	ecx, [edi+ecx*4]
		shl	ecx, 3
		sub	ecx, edi
		shl	ecx, 2
		sub	ecx, edi
		cmp	edx, 5
		jz	short loc_475FBA
		xor	eax, eax
		jmp	loc_476085
; ---------------------------------------------------------------------------

loc_475FBA:				; CODE XREF: .text:00475F73j
					; .text:00475F97j ...
		cmp	esi, 1
		jnz	short loc_476004
		mov	edx, [ebx+68h]
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*4]
		shl	edx, 3
		sub	edx, ecx
		shl	edx, 2
		sub	edx, ecx
		mov	edx, dword ptr stru_5E7DA8.block.index[edx*4]
		and	edx, 0Fh
		cmp	edx, 6
		jz	short loc_476004
		mov	ecx, [ebx+68h]
		mov	edi, ecx
		lea	ecx, [edi+ecx*2]
		lea	ecx, [edi+ecx*4]
		shl	ecx, 3
		sub	ecx, edi
		shl	ecx, 2
		sub	ecx, edi
		cmp	edx, 7
		jz	short loc_476004
		xor	eax, eax
		jmp	loc_476085
; ---------------------------------------------------------------------------

loc_476004:				; CODE XREF: .text:00475FBDj
					; .text:00475FE1j ...
		test	eax, eax
		jnz	short loc_47600F
		mov	eax, 1
		jmp	short loc_476085
; ---------------------------------------------------------------------------

loc_47600F:				; CODE XREF: .text:00476006j
		dec	eax
		jnz	short loc_476083
		mov	edi, g_disasmdump.sel0
		lea	eax, [ebp-8]
		push	eax		; coord
		push	0		; column
		push	offset stru_5E6AB8 ; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_476038
		or	edx, 0FFFFFFFFh
		mov	[ebp-4], edx
		mov	[ebp-8], edx

loc_476038:				; CODE XREF: .text:0047602Dj
		mov	eax, offset stru_4FFFE8.postbyte
		test	esi, esi
		jz	short loc_476046
		add	eax, 0FFB00000h

loc_476046:				; CODE XREF: .text:0047603Fj
		push	eax		; __int16
		mov	ecx, [ebx+234h]
		push	ecx		; int
		mov	eax, [ebp-4]
		push	eax		; int
		mov	edx, [ebp-8]
		push	edx		; int
		push	edi		; int
		mov	ecx, [ebx+22Ch]
		push	ecx		; hWndParent
		call	loc_4365EC
		add	esp, 18h
		test	eax, eax
		jnz	short loc_47606C
		mov	eax, edi

loc_47606C:				; CODE XREF: .text:00476068j
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	eax		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		xor	eax, eax
		jmp	short loc_476085
; ---------------------------------------------------------------------------

loc_476083:				; CODE XREF: .text:00476010j
		xor	eax, eax

loc_476085:				; CODE XREF: .text:00475F6Cj
					; .text:00475FB5j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; MENUFUNC loc_47608C
loc_47608C:				; DATA XREF: .text:0047759Co
					; .data:stru_53F05Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF4h
		push	ebx
		push	esi		; arglist
		mov	esi, [ebp+14h]
		mov	eax, [ebp+8]
		mov	edx, [eax+68h]
		test	edx, edx
		jl	short loc_4760A9
		cmp	edx, 5
		jl	short loc_4760B0

loc_4760A9:				; CODE XREF: .text:004760A2j
		xor	eax, eax
		jmp	loc_47614D
; ---------------------------------------------------------------------------

loc_4760B0:				; CODE XREF: .text:004760A7j
		lea	ecx, [edx+edx*2]
		lea	ecx, [edx+ecx*4]
		shl	ecx, 3
		sub	ecx, edx
		shl	ecx, 2
		sub	ecx, edx
		mov	eax, dword ptr stru_5E7DA8.block.index[ecx*4]
		and	eax, 0Fh
		cmp	eax, 9
		jz	short loc_4760D3
		xor	eax, eax
		jmp	short loc_47614D
; ---------------------------------------------------------------------------

loc_4760D3:				; CODE XREF: .text:004760CDj
		mov	edx, g_disasmdump.sel0
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4760EA
		xor	eax, eax
		jmp	short loc_47614D
; ---------------------------------------------------------------------------

loc_4760EA:				; CODE XREF: .text:004760E4j
		test	esi, esi
		jnz	short loc_4760F5
		mov	eax, 1
		jmp	short loc_47614D
; ---------------------------------------------------------------------------

loc_4760F5:				; CODE XREF: .text:004760ECj
		dec	esi
		jnz	short loc_47614B
		lea	edx, [ebp-4]
		push	edx
		lea	ecx, [ebp-20Ch]
		push	ecx
		mov	eax, g_disasmdump.sel0
		push	eax
		call	loc_4C9D74
		add	esp, 0Ch
		mov	edx, [ebp-4]
		push	edx		; line
		lea	ecx, [ebp-20Ch]
		push	ecx		; path
		mov	eax, [ebx]
		push	eax		; base
		call	Showsourcecode
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_476135
		push	1
		call	loc_4CB1B8
		pop	ecx
		jmp	short loc_476147
; ---------------------------------------------------------------------------

loc_476135:				; CODE XREF: .text:00476129j
		push	offset aUnableToShowSo ; "Unable to show source"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_476147:				; CODE XREF: .text:00476133j
		xor	eax, eax
		jmp	short loc_47614D
; ---------------------------------------------------------------------------

loc_47614B:				; CODE XREF: .text:004760F6j
		xor	eax, eax

loc_47614D:				; CODE XREF: .text:004760ABj
					; .text:004760D1j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
