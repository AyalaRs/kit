.code

; Exported entry 296. _Getanalysercomment
; Exported entry 550. Getanalysercomment

; int __cdecl Getanalysercomment(struct	t_module *pmod,	ulong _addr, wchar_t *comment, int len)
		public Getanalysercomment
Getanalysercomment:			; CODE XREF: .text:004A8733p
					; .text:004BC9FEp ...
		push	ebp		; _Getanalysercomment
		mov	ebp, esp
		add	esp, 0FFFFFDF0h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_488AA0
		cmp	dword ptr [ebp+14h], 10h
		jge	short loc_488AA7

loc_488AA0:				; CODE XREF: .text:00488A98j
		xor	eax, eax
		jmp	loc_488DA8
; ---------------------------------------------------------------------------

loc_488AA7:				; CODE XREF: .text:00488A9Ej
		push	100h		; nname
		lea	edx, [ebp-210h]
		push	edx		; _name
		push	31h		; type
		mov	ecx, [ebp+0Ch]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_488AD1
		xor	eax, eax
		jmp	loc_488DA8
; ---------------------------------------------------------------------------

loc_488AD1:				; CODE XREF: .text:00488AC8j
		xor	edx, edx
		mov	esi, edx
		mov	edi, edx
		jmp	loc_488D6F
; ---------------------------------------------------------------------------

loc_488ADC:				; CODE XREF: .text:00488D77j
		mov	ax, [ebp+esi*2-210h]
		test	ax, ax
		jz	loc_488D7D
		cmp	ax, 3Ch
		jz	short loc_488B01
		mov	edx, [ebp+10h]
		mov	[edx+edi*2], ax
		inc	esi
		inc	edi
		jmp	loc_488D6F
; ---------------------------------------------------------------------------

loc_488B01:				; CODE XREF: .text:00488AF1j
		inc	esi
		cmp	word ptr [ebp+esi*2-210h], 0
		jz	loc_488D7D
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_488B24
		mov	ecx, [ebp+0Ch]
		push	ecx		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp+8], eax

loc_488B24:				; CODE XREF: .text:00488B15j
		movzx	eax, word ptr [ebp+esi*2-210h]
		mov	[ebp-8], eax
		inc	esi
		cmp	dword ptr [ebp-8], 3Ch
		jnz	short loc_488B58
		push	offset asc_545308 ; "<"
		mov	ecx, edi
		mov	edx, [ebp+14h]
		add	ecx, ecx
		sub	edx, edi
		push	edx		; n
		add	ecx, [ebp+10h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	loc_488D6F
; ---------------------------------------------------------------------------

loc_488B58:				; CODE XREF: .text:00488B34j
		xor	eax, eax
		lea	ebx, [ebp+esi*2-210h]
		mov	[ebp-0Ch], eax
		jmp	short loc_488B9F
; ---------------------------------------------------------------------------

loc_488B66:				; CODE XREF: .text:00488BABj
		mov	eax, [ebp-0Ch]
		shl	eax, 4
		mov	[ebp-0Ch], eax
		cmp	word ptr [ebx],	39h
		ja	short loc_488B80
		movzx	edx, word ptr [ebx]
		add	edx, 0FFFFFFD0h
		add	[ebp-0Ch], edx
		jmp	short loc_488B9B
; ---------------------------------------------------------------------------

loc_488B80:				; CODE XREF: .text:00488B73j
		mov	cx, [ebx]
		mov	[ebp-0Eh], cx
		mov	ax, [ebp-0Eh]
		push	eax		; ch
		call	__ltowupper
		movzx	edx, ax
		add	edx, 0FFFFFFC9h
		pop	ecx
		add	[ebp-0Ch], edx

loc_488B9B:				; CODE XREF: .text:00488B7Ej
		inc	esi
		add	ebx, 2

loc_488B9F:				; CODE XREF: .text:00488B64j
		mov	cx, [ebx]
		push	ecx		; c
		call	_iswxdigit
		pop	ecx
		test	eax, eax
		jnz	short loc_488B66
		cmp	dword ptr [ebp-8], 2Bh
		jnz	short loc_488BEA
		cmp	dword ptr [ebp+8], 0
		jz	short loc_488BEA
		mov	eax, [ebp+8]
		mov	edx, edi
		add	edx, edx
		mov	ebx, [eax]
		add	[ebp-0Ch], ebx
		push	0		; comment
		mov	eax, [ebp+14h]
		sub	eax, edi
		push	eax		; nsymb
		add	edx, [ebp+10h]
		push	edx		; symb
		push	10000h		; mode
		push	ebx		; amod
		mov	ecx, [ebp-0Ch]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		add	edi, eax
		jmp	loc_488D48
; ---------------------------------------------------------------------------

loc_488BEA:				; CODE XREF: .text:00488BB1j
					; .text:00488BB7j
		cmp	dword ptr [ebp-8], 54h
		jnz	loc_488D2B
		cmp	dword ptr [ebp-0Ch], 10h
		jnz	short loc_488C2C
		cmp	dword_5BDCF0, 1
		jnz	short loc_488C2C
		push	offset aXmmword16_Byte ; "XMMWORD (16.-byte)"
		call	_T
		pop	ecx
		push	eax
		mov	eax, [ebp+14h]
		mov	edx, edi
		sub	eax, edi
		add	edx, edx
		push	eax
		add	edx, [ebp+10h]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		add	edi, eax
		jmp	loc_488D48
; ---------------------------------------------------------------------------

loc_488C2C:				; CODE XREF: .text:00488BF8j
					; .text:00488C01j
		cmp	dword ptr [ebp-0Ch], 20h
		jnz	short loc_488C64
		cmp	dword_5BDCF0, 1
		jnz	short loc_488C64
		push	offset aYmmword32_Byte ; "YMMWORD (32.-byte)"
		call	_T
		pop	ecx
		push	eax
		mov	ecx, [ebp+14h]
		mov	eax, edi
		sub	ecx, edi
		add	eax, eax
		push	ecx
		add	eax, [ebp+10h]
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		add	edi, eax
		jmp	loc_488D48
; ---------------------------------------------------------------------------

loc_488C64:				; CODE XREF: .text:00488C30j
					; .text:00488C39j
		cmp	dword ptr [ebp-0Ch], 20h
		ja	short loc_488CDE
		mov	edx, [ebp-0Ch]
		mov	ecx, _sizename[edx*4]
		mov	edx, edi
		push	ecx
		add	edx, edx
		mov	eax, [ebp+14h]
		sub	eax, edi
		push	eax
		add	edx, [ebp+10h]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		add	edi, eax
		cmp	dword ptr [ebp-0Ch], 0Ah
		jnb	short loc_488CBA
		mov	ecx, [ebp-0Ch]
		push	ecx
		push	offset aIByte	; " (%i-byte)"
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, edi
		add	eax, eax
		add	eax, [ebp+10h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	edi, eax
		jmp	loc_488D48
; ---------------------------------------------------------------------------

loc_488CBA:				; CODE XREF: .text:00488C91j
		mov	edx, [ebp-0Ch]
		push	edx
		push	offset aI_Byte	; " (%i.-byte)"
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, edi
		add	ecx, ecx
		add	ecx, [ebp+10h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	edi, eax
		jmp	short loc_488D48
; ---------------------------------------------------------------------------

loc_488CDE:				; CODE XREF: .text:00488C68j
		mov	eax, [ebp+14h]
		sub	eax, edi
		cmp	eax, 20h
		jle	short loc_488D0C
		mov	edx, [ebp-0Ch]
		push	edx
		push	offset aI_Byte_1 ; "%i.-byte"
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, edi
		add	ecx, ecx
		add	ecx, [ebp+10h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	edi, eax
		jmp	short loc_488D48
; ---------------------------------------------------------------------------

loc_488D0C:				; CODE XREF: .text:00488CE6j
		push	$CTW0("\[???\]")	; "<???>"
		mov	edx, edi
		mov	eax, [ebp+14h]
		add	edx, edx
		sub	eax, edi
		push	eax		; n
		add	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		jmp	short loc_488D48
; ---------------------------------------------------------------------------

loc_488D2B:				; CODE XREF: .text:00488BEEj
		push	$CTW0("\[???\]")	; "<???>"
		mov	eax, edi
		mov	ecx, [ebp+14h]
		add	eax, eax
		sub	ecx, edi
		push	ecx		; n
		add	eax, [ebp+10h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax

loc_488D48:				; CODE XREF: .text:00488BE5j
					; .text:00488C27j ...
		lea	eax, [ebp+esi*2-210h]
		jmp	short loc_488D55
; ---------------------------------------------------------------------------

loc_488D51:				; CODE XREF: .text:00488D61j
		inc	esi
		add	eax, 2

loc_488D55:				; CODE XREF: .text:00488D4Fj
		mov	dx, [eax]
		test	dx, dx
		jz	short loc_488D63
		cmp	dx, 3Eh
		jnz	short loc_488D51

loc_488D63:				; CODE XREF: .text:00488D5Bj
		cmp	word ptr [ebp+esi*2-210h], 3Eh
		jnz	short loc_488D6F
		inc	esi

loc_488D6F:				; CODE XREF: .text:00488AD7j
					; .text:00488AFCj ...
		cmp	esi, [ebp-4]
		jge	short loc_488D7D
		cmp	edi, [ebp+14h]
		jl	loc_488ADC

loc_488D7D:				; CODE XREF: .text:00488AE7j
					; .text:00488B0Bj ...
		cmp	edi, [ebp+14h]
		jl	short loc_488D9D
		dec	edi
		push	offset a____3	; "..."
		push	4		; n
		mov	ecx, edi
		add	ecx, ecx
		add	ecx, [ebp+10h]
		add	ecx, 0FFFFFFFAh
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_488D9D:				; CODE XREF: .text:00488D80j
		mov	eax, [ebp+10h]
		mov	word ptr [eax+edi*2], 0
		mov	eax, edi

loc_488DA8:				; CODE XREF: .text:00488AA2j
					; .text:00488ACCj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 297. _Getswitchcomment
; Exported entry 614. Getswitchcomment

; int __cdecl Getswitchcomment(ulong _addr, wchar_t *comment, int len)
		public Getswitchcomment
Getswitchcomment:			; CODE XREF: .text:004BCA2Dp
		push	ebp		; _Getswitchcomment
		mov	ebp, esp
		add	esp, 0FFFFF1E4h
		push	ebx
		push	esi
		push	edi
		lea	esi, [ebp-0C10h]
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_488DCE
		cmp	dword ptr [ebp+10h], 10h
		jge	short loc_488DD5

loc_488DCE:				; CODE XREF: .text:00488DC6j
		xor	eax, eax
		jmp	loc_4892D4
; ---------------------------------------------------------------------------

loc_488DD5:				; CODE XREF: .text:00488DCCj
		push	0		; type3
		push	41h		; type2
		push	40h		; type1
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Isdataavailable
		add	esp, 10h
		cmp	eax, 40h
		jnz	loc_488FBD
		push	410h		; datasize
		push	esi		; data
		lea	ecx, [ebp+8]
		push	ecx		; _addr
		call	Findnextdata
		add	esp, 0Ch
		mov	ebx, eax
		cmp	ebx, 10h
		jge	short loc_488E10
		xor	eax, eax
		jmp	loc_4892D4
; ---------------------------------------------------------------------------

loc_488E10:				; CODE XREF: .text:00488E07j
		test	byte ptr [esi+8], 1
		jz	short loc_488E3A
		push	offset aCascadedIf ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	300h		; n
		lea	edx, [ebp-600h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_488E5C
; ---------------------------------------------------------------------------

loc_488E3A:				; CODE XREF: .text:00488E14j
		push	offset aSwitch	; "Switch ("
		call	_T
		pop	ecx
		push	eax		; src
		push	300h		; n
		lea	eax, [ebp-600h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_488E5C:				; CODE XREF: .text:00488E38j
		test	byte ptr [esi+8], 80h
		jz	short loc_488E93
		mov	eax, [esi+4]
		push	eax
		mov	edx, [esi]
		neg	edx
		push	edx
		push	offset aCasesX__X ; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-600h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h
		add	ebx, eax
		jmp	loc_488F21
; ---------------------------------------------------------------------------

loc_488E93:				; CODE XREF: .text:00488E60j
		test	byte ptr [esi+8], 40h
		jz	short loc_488EC5
		mov	edx, [esi+4]
		push	edx
		mov	ecx, [esi]
		push	ecx
		push	offset aExceptionsX__X ; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-600h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		add	ebx, eax
		jmp	short loc_488F21
; ---------------------------------------------------------------------------

loc_488EC5:				; CODE XREF: .text:00488E97j
		test	byte ptr [esi+8], 20h
		jz	short loc_488EF7
		mov	ecx, [esi+4]
		push	ecx
		mov	eax, [esi]
		push	eax
		push	offset aMessagesX__X ; src
		call	_T
		pop	ecx
		mov	edx, ebx
		lea	ecx, [ebp-600h]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		add	ebx, eax
		jmp	short loc_488F21
; ---------------------------------------------------------------------------

loc_488EF7:				; CODE XREF: .text:00488EC9j
		mov	eax, [esi+4]
		push	eax
		mov	edx, [esi]
		push	edx
		push	offset aCasesX__X_1 ; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-600h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h
		add	ebx, eax

loc_488F21:				; CODE XREF: .text:00488E8Ej
					; .text:00488EC3j ...
		cmp	dword ptr [esi+0Ch], 9
		jg	short loc_488F50
		mov	edx, [esi+0Ch]
		push	edx
		push	offset aIExits	; ", %i	exits)"
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-600h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_488F77
; ---------------------------------------------------------------------------

loc_488F50:				; CODE XREF: .text:00488F25j
		mov	edx, [esi+0Ch]
		push	edx
		push	offset aI_Exits	; ", %i. exits)"
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-600h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_488F77:				; CODE XREF: .text:00488F4Ej
		test	byte ptr [esi+8], 2
		jz	short loc_488FA0
		push	offset aSomeCasesLostD ; ", some cases lost due	to high	complexit"...
		call	_T
		pop	ecx
		mov	edx, ebx
		lea	ecx, [ebp-600h]
		add	edx, edx
		add	edx, ecx
		push	eax		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax

loc_488FA0:				; CODE XREF: .text:00488F7Bj
		push	ebx		; nsrc
		lea	eax, [ebp-600h]
		push	eax		; src
		mov	edx, [ebp+10h]
		push	edx		; ndest
		mov	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	Squeezename
		add	esp, 10h
		jmp	loc_4892D4
; ---------------------------------------------------------------------------

loc_488FBD:				; CODE XREF: .text:00488DEAj
		cmp	eax, 41h
		jnz	loc_4892D2
		push	20Ch		; datasize
		lea	eax, [ebp-0E1Ch]
		push	eax		; data
		lea	edx, [ebp+8]
		push	edx		; _addr
		call	Findnextdata
		add	esp, 0Ch
		mov	ebx, eax
		cmp	ebx, 0Ch
		jl	short loc_488FF5
		mov	eax, [ebp-0E14h]
		shl	eax, 2
		add	eax, 0Ch
		cmp	ebx, eax
		jge	short loc_488FFC

loc_488FF5:				; CODE XREF: .text:00488FE3j
		xor	eax, eax
		jmp	loc_4892D4
; ---------------------------------------------------------------------------

loc_488FFC:				; CODE XREF: .text:00488FF3j
		test	byte ptr [ebp-0E18h], 4
		jz	short loc_48902C
		push	offset aDefaultCase_0 ;	"Default case"
		call	_T
		pop	ecx
		push	eax		; src
		push	300h		; n
		lea	edx, [ebp-600h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_489229
; ---------------------------------------------------------------------------

loc_48902C:				; CODE XREF: .text:00489003j
		cmp	dword ptr [ebp-0E14h], 1
		jnz	short loc_489059
		push	offset aCase	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	300h		; n
		lea	eax, [ebp-600h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_48907B
; ---------------------------------------------------------------------------

loc_489059:				; CODE XREF: .text:00489033j
		push	offset aCases	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	300h		; n
		lea	eax, [ebp-600h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_48907B:				; CODE XREF: .text:00489057j
		xor	edi, edi
		lea	esi, [ebp-0E10h]
		jmp	loc_4891E1
; ---------------------------------------------------------------------------

loc_489088:				; CODE XREF: .text:004891EFj
		test	edi, edi
		jle	short loc_4890B0
		mov	edx, ebx
		mov	eax, 300h
		sub	eax, ebx
		lea	ecx, [ebp-600h]
		add	edx, edx
		push	offset asc_545504 ; ", "
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4890B0:				; CODE XREF: .text:0048908Aj
		test	byte ptr [ebp-0E18h], 80h
		jz	short loc_4890BE
		cmp	dword ptr [esi], 0
		jl	short loc_4890DF

loc_4890BE:				; CODE XREF: .text:004890B7j
		mov	eax, [esi]
		mov	edx, ebx
		push	eax
		lea	ecx, [ebp-600h]
		add	edx, edx
		push	(offset	aCasesX__X+16h)	; format
		add	edx, ecx
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_489100
; ---------------------------------------------------------------------------

loc_4890DF:				; CODE XREF: .text:004890BCj
		mov	eax, [esi]
		mov	edx, ebx
		neg	eax
		push	eax
		lea	ecx, [ebp-600h]
		add	edx, edx
		push	offset asc_54550A ; "-%X"
		add	edx, ecx
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_489100:				; CODE XREF: .text:004890DDj
		test	byte ptr [ebp-0E18h], 40h
		jz	short loc_489150
		lea	eax, [ebp-800h]
		push	eax		; _name
		mov	edx, [esi]
		push	edx		; value
		push	offset aException_1 ; groupname
		call	Getconstantbyvalue
		add	esp, 0Ch
		test	eax, eax
		jz	loc_4891DD
		lea	ecx, [ebp-800h]
		mov	eax, ebx
		push	ecx
		lea	edx, [ebp-600h]
		add	eax, eax
		push	offset aS_19	; format
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4891DD
; ---------------------------------------------------------------------------

loc_489150:				; CODE XREF: .text:00489107j
		test	byte ptr [ebp-0E18h], 20h
		jz	short loc_489199
		lea	ecx, [ebp-800h]
		push	ecx		; _name
		mov	eax, [esi]
		push	eax		; value
		push	offset aMessage_3 ; "MESSAGE"
		call	Getconstantbyvalue
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4891DD
		lea	edx, [ebp-800h]
		mov	ecx, ebx
		push	edx
		lea	eax, [ebp-600h]
		add	ecx, ecx
		push	offset aS_19	; format
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_4891DD
; ---------------------------------------------------------------------------

loc_489199:				; CODE XREF: .text:00489157j
		test	byte ptr [ebp-0E18h], 10h
		jz	short loc_4891DD
		push	0		; mode
		mov	edx, [esi]
		push	edx		; c
		lea	ecx, [ebp-800h]
		push	ecx		; s
		call	Commentcharacter
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4891DD
		lea	eax, [ebp-800h]
		mov	edx, ebx
		push	eax
		lea	ecx, [ebp-600h]
		add	edx, edx
		push	offset aS_19	; format
		add	edx, ecx
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_4891DD:				; CODE XREF: .text:00489122j
					; .text:0048914Bj ...
		inc	edi
		add	esi, 4

loc_4891E1:				; CODE XREF: .text:00489083j
		cmp	edi, [ebp-0E14h]
		jge	short loc_4891F5
		cmp	ebx, 100h
		jl	loc_489088

loc_4891F5:				; CODE XREF: .text:004891E7j
		test	byte ptr [ebp-0E18h], 2
		jz	short loc_489229
		push	offset aAndOther ; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, ebx
		mov	eax, 300h
		sub	eax, ebx
		lea	ecx, [ebp-600h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_489229:				; CODE XREF: .text:00489027j
					; .text:004891FCj
		test	byte ptr [ebp-0E18h], 1
		jz	short loc_48925F
		push	offset aOfCascadedIf ; " of cascaded IF	"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, ebx
		mov	eax, 300h
		sub	eax, ebx
		lea	ecx, [ebp-600h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_48928A
; ---------------------------------------------------------------------------

loc_48925F:				; CODE XREF: .text:00489230j
		push	offset aOfSwitch ; " of	switch "
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, ebx
		mov	eax, 300h
		sub	eax, ebx
		lea	ecx, [ebp-600h]
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_48928A:				; CODE XREF: .text:0048925Dj
		mov	edx, ebx
		mov	eax, 300h
		sub	eax, ebx
		lea	ecx, [ebp-600h]
		add	edx, edx
		push	0		; comment
		push	eax		; nsymb
		add	edx, ecx
		push	edx		; symb
		push	20000h		; mode
		mov	esi, [ebp-0E1Ch]
		push	esi		; amod
		push	esi		; _addr
		call	Decodeaddress
		add	esp, 18h
		add	ebx, eax
		push	ebx		; nsrc
		lea	eax, [ebp-600h]
		push	eax		; src
		mov	edx, [ebp+10h]
		push	edx		; ndest
		mov	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	Squeezename
		add	esp, 10h
		jmp	short loc_4892D4
; ---------------------------------------------------------------------------

loc_4892D2:				; CODE XREF: .text:00488FC0j
		xor	eax, eax

loc_4892D4:				; CODE XREF: .text:00488DD0j
					; .text:00488E0Bj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 298. _Getloopcomment
; Exported entry 579. Getloopcomment

; int __cdecl Getloopcomment(struct t_module *pmod, ulong _addr,	int level, wchar_t *comment, int len)
		public Getloopcomment
Getloopcomment:				; CODE XREF: .text:00476FBDp
		push	ebp		; _Getloopcomment
		mov	ebp, esp
		add	esp, 0FFFFF7F8h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+14h], 0
		mov	eax, [ebp+8]
		jz	short loc_4892F7
		cmp	dword ptr [ebp+18h], 10h
		jge	short loc_4892FE

loc_4892F7:				; CODE XREF: .text:004892EFj
		xor	eax, eax
		jmp	loc_489693
; ---------------------------------------------------------------------------

loc_4892FE:				; CODE XREF: .text:004892F5j
		test	eax, eax
		jnz	short loc_489317
		mov	edx, [ebp+0Ch]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_489317
		xor	eax, eax
		jmp	loc_489693
; ---------------------------------------------------------------------------

loc_489317:				; CODE XREF: .text:00489300j
					; .text:0048930Ej
		mov	edx, [ebp+10h]
		push	edx		; level
		mov	ecx, [ebp+0Ch]
		push	ecx		; _addr
		add	eax, 920h
		push	eax		; nd
		call	Findnesteddata
		add	esp, 0Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jz	short loc_48933F
		mov	edx, [ebp-8]
		test	byte ptr [edx+14h], 20h
		jnz	short loc_489346

loc_48933F:				; CODE XREF: .text:00489334j
		xor	eax, eax
		jmp	loc_489693
; ---------------------------------------------------------------------------

loc_489346:				; CODE XREF: .text:0048933Dj
		push	offset aLoop_2	; "Loop	"
		call	_T
		pop	ecx
		push	eax		; src
		push	300h		; n
		lea	edx, [ebp-608h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	edx, ebx
		mov	eax, 300h
		sub	eax, ebx
		lea	ecx, [ebp-608h]
		add	edx, edx
		push	0		; comment
		add	edx, ecx
		push	eax		; nsymb
		push	edx		; symb
		push	400h		; mode
		mov	eax, [ebp+0Ch]
		push	eax		; amod
		mov	edx, [ebp-8]
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Decodeaddress
		add	ebx, eax
		mov	eax, [ebp-8]
		add	esp, 18h
		test	byte ptr [eax+1Dh], 20h
		jnz	short loc_4893CE
		push	offset aLoopVariable ; ": loop variable	"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, ebx
		mov	edx, 300h
		sub	edx, ebx
		lea	eax, [ebp-608h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_4893F9
; ---------------------------------------------------------------------------

loc_4893CE:				; CODE XREF: .text:0048939Fj
		push	offset aLoopVariables ;	": loop	variables "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, ebx
		mov	edx, 300h
		sub	edx, ebx
		lea	eax, [ebp-608h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4893F9:				; CODE XREF: .text:004893CCj
		xor	edx, edx
		mov	[ebp-4], edx
		mov	ecx, [ebp-8]
		lea	esi, [ecx+14h]
		jmp	loc_48963C
; ---------------------------------------------------------------------------

loc_489409:				; CODE XREF: .text:00489648j
		movzx	edi, byte ptr [esi]
		test	edi, 20h
		jz	loc_48964E
		cmp	dword ptr [ebp-4], 0
		jle	short loc_489442
		mov	edx, ebx
		mov	eax, 300h
		sub	eax, ebx
		lea	ecx, [ebp-608h]
		add	edx, edx
		push	offset asc_545504 ; ", "
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_489442:				; CODE XREF: .text:0048941Cj
		test	edi, 10h
		jnz	short loc_489479
		and	edi, 7
		mov	ecx, ebx
		mov	edx, 300h
		add	ecx, ecx
		mov	eax, off_52FC84[edi*4]
		sub	edx, ebx
		push	eax
		lea	eax, [ebp-608h]
		add	ecx, eax
		push	edx
		push	ecx
		call	loc_410A49
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_48958F
; ---------------------------------------------------------------------------

loc_489479:				; CODE XREF: .text:00489448j
		cmp	edi, 30h
		jnz	short loc_4894F6
		mov	ecx, ebx
		mov	edx, 300h
		sub	edx, ebx
		lea	eax, [ebp-608h]
		add	ecx, ecx
		push	offset asc_5455E4 ; "["
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	ecx, ebx
		mov	edx, 300h
		sub	edx, ebx
		lea	eax, [ebp-608h]
		add	ecx, ecx
		push	0		; comment
		push	edx		; nsymb
		add	ecx, eax
		push	ecx		; symb
		push	0		; mode
		mov	edx, [ebp+0Ch]
		push	edx		; amod
		mov	ecx, [esi+1]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		add	ebx, eax
		mov	edx, ebx
		mov	eax, 300h
		sub	eax, ebx
		lea	ecx, [ebp-608h]
		add	edx, edx
		push	offset asc_5455E8 ; "]"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_48958F
; ---------------------------------------------------------------------------

loc_4894F6:				; CODE XREF: .text:0048947Cj
		push	100h		; len
		lea	eax, [ebp-808h]
		push	eax		; _name
		push	4		; datasize
		mov	edx, [esi+1]
		push	edx		; offs
		mov	ecx, [ebp-8]
		mov	eax, [ecx]
		push	eax		; ip
		call	Decodearglocal
		add	esp, 14h
		test	eax, eax
		jle	short loc_48953F
		lea	edx, [ebp-808h]
		mov	ecx, ebx
		push	edx
		lea	eax, [ebp-608h]
		add	ecx, ecx
		push	offset aS_24	; "[%s]"
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_48958F
; ---------------------------------------------------------------------------

loc_48953F:				; CODE XREF: .text:00489518j
		mov	edi, [esi+1]
		test	edi, edi
		jns	short loc_489549
		add	edi, 3

loc_489549:				; CODE XREF: .text:00489544j
		sar	edi, 2
		test	edi, edi
		jle	short loc_48956F
		mov	eax, ebx
		push	edi
		lea	edx, [ebp-608h]
		add	eax, eax
		add	eax, edx
		push	offset aArg_I_0	; "[ARG.%i]"
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_48958F
; ---------------------------------------------------------------------------

loc_48956F:				; CODE XREF: .text:0048954Ej
		neg	edi
		dec	edi
		mov	ecx, ebx
		push	edi
		lea	eax, [ebp-608h]
		add	ecx, ecx
		push	offset aLocal_I	; "[LOCAL.%i]"
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax

loc_48958F:				; CODE XREF: .text:00489474j
					; .text:004894F1j ...
		mov	edi, [esi+5]
		test	edi, edi
		jle	short loc_4895D4
		mov	edx, ebx
		mov	eax, 300h
		sub	eax, ebx
		lea	ecx, [ebp-608h]
		add	edx, edx
		push	offset asc_54561E ; "(+"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	ebx, eax
		add	esp, 0Ch
		mov	eax, ebx
		lea	edx, [ebp-608h]
		add	eax, eax
		push	edi		; u
		add	eax, edx
		push	eax		; s
		call	HexprintW
		add	esp, 8
		add	ebx, eax
		jmp	short loc_489612
; ---------------------------------------------------------------------------

loc_4895D4:				; CODE XREF: .text:00489594j
		mov	eax, ebx
		mov	ecx, 300h
		sub	ecx, ebx
		lea	edx, [ebp-608h]
		add	eax, eax
		push	offset asc_545624 ; "(-"
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		neg	edi
		push	edi		; u
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-608h]
		add	ecx, eax
		push	ecx		; s
		call	HexprintW
		add	esp, 8
		add	ebx, eax

loc_489612:				; CODE XREF: .text:004895D2j
		mov	ecx, ebx
		mov	edx, 300h
		sub	edx, ebx
		lea	eax, [ebp-608h]
		add	ecx, ecx
		push	(offset	aXmmword16_Byte+22h) ; src
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		inc	dword ptr [ebp-4]
		add	esi, 9

loc_48963C:				; CODE XREF: .text:00489404j
		cmp	dword ptr [ebp-4], 4
		jge	short loc_48964E
		cmp	ebx, 100h
		jl	loc_489409

loc_48964E:				; CODE XREF: .text:00489412j
					; .text:00489640j
		mov	edx, [ebp-8]
		test	byte ptr [edx+0Ah], 1
		jz	short loc_48967B
		mov	eax, ebx
		mov	ecx, 300h
		sub	ecx, ebx
		lea	edx, [ebp-608h]
		add	eax, eax
		push	offset a____6	; ", ..."
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_48967B:				; CODE XREF: .text:00489655j
		push	ebx		; nsrc
		lea	ecx, [ebp-608h]
		push	ecx		; src
		mov	eax, [ebp+18h]
		push	eax		; ndest
		mov	edx, [ebp+14h]
		push	edx		; dest
		call	Squeezename
		add	esp, 10h

loc_489693:				; CODE XREF: .text:004892F9j
					; .text:00489312j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 299. _Getproccomment
; Exported entry 592. Getproccomment

; unsigned int __cdecl Getproccomment(ulong _addr, ulong	acall, wchar_t *comment, int len, int argonly)
		public Getproccomment
Getproccomment:				; CODE XREF: .text:004899FDp
					; .text:004A8698p
		push	ebp		; _Getproccomment
		mov	ebp, esp
		push	eax
		mov	eax, 8

loc_4896A5:				; CODE XREF: .text:004896ADj
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4896A5
		mov	eax, [ebp-4]
		add	esp, 0FFFFFFC0h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		test	edi, edi
		jz	short loc_4896C8
		cmp	dword ptr [ebp+14h], 20h
		jge	short loc_4896CF

loc_4896C8:				; CODE XREF: .text:004896C0j
		xor	eax, eax
		jmp	loc_489964
; ---------------------------------------------------------------------------

loc_4896CF:				; CODE XREF: .text:004896C6j
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_489738
		test	ebx, ebx
		jnz	short loc_4896E0
		xor	eax, eax
		jmp	loc_489964
; ---------------------------------------------------------------------------

loc_4896E0:				; CODE XREF: .text:004896D7j
		push	5		; mode
		push	10h		; size
		push	ebx		; _addr
		lea	edx, [ebp-54h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jbe	short loc_489738
		push	0		; predict
		push	0		; reg
		push	10h		; mode
		lea	ecx, [ebp-8044h]
		push	ecx		; da
		push	0		; dec
		push	ebx		; ip
		push	eax		; cmdsize
		lea	eax, [ebp-54h]
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		test	eax, eax
		jbe	short loc_489738
		cmp	dword ptr [ebp-8018h], 0
		jnz	short loc_489738
		cmp	dword ptr [ebp-8004h], 0
		jz	short loc_489738
		mov	edx, [ebp-8004h]
		push	edx		; _addr
		call	Followcall
		pop	ecx
		mov	[ebp+8], eax

loc_489738:				; CODE XREF: .text:004896D3j
					; .text:004896F3j ...
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_489745
		xor	eax, eax
		jmp	loc_489964
; ---------------------------------------------------------------------------

loc_489745:				; CODE XREF: .text:0048973Cj
		xor	esi, esi
		lea	eax, [ebp-6774h]

loc_48974D:				; CODE XREF: .text:0048975Fj
		xor	edx, edx
		xor	ecx, ecx
		mov	[eax], edx
		mov	[eax+8], ecx
		add	eax, 44Ch
		inc	esi
		cmp	esi, 18h
		jl	short loc_48974D
		push	0		; follow
		push	0		; nexp
		push	0		; _name
		lea	eax, [ebp-44h]
		push	eax		; rettype
		lea	edx, [ebp-6774h]
		push	edx		; adec
		push	0		; pd
		mov	ecx, [ebp+8]
		push	ecx		; _addr
		call	Decodeknownbyaddr
		add	esp, 1Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jge	short loc_4897D4
		push	0		; subaddr
		mov	eax, [ebp+8]
		push	eax		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		test	esi, esi
		jz	short loc_4897AF
		test	byte ptr [esi+9], 10h
		jz	short loc_4897AF
		mov	eax, [esi]
		cmp	eax, [ebp+8]
		jz	short loc_4897B6

loc_4897AF:				; CODE XREF: .text:004897A0j
					; .text:004897A6j
		xor	eax, eax
		jmp	loc_489964
; ---------------------------------------------------------------------------

loc_4897B6:				; CODE XREF: .text:004897ADj
		push	offset aCallback_2 ; src
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, [ebp+14h]
		push	edx		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_489964
; ---------------------------------------------------------------------------

loc_4897D4:				; CODE XREF: .text:00489787j
		push	0		; subaddr
		mov	ecx, [ebp+8]
		push	ecx		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_48982B
		cmp	word ptr [ebp-44h], 0
		jz	short loc_48982B
		cmp	word ptr [ebp-42h], 0
		jz	short loc_48982B
		lea	eax, [ebp-42h]
		push	eax		; src
		mov	edx, [ebp+14h]
		push	edx		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		push	(offset	aAscii_0+0Ah) ;	src
		mov	eax, [ebp+14h]
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_48982D
; ---------------------------------------------------------------------------

loc_48982B:				; CODE XREF: .text:004897EDj
					; .text:004897F4j ...
		xor	ebx, ebx

loc_48982D:				; CODE XREF: .text:00489829j
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_489854
		push	0		; comment
		lea	edx, [edi+ebx*2]
		mov	eax, [ebp+14h]
		sub	eax, ebx
		push	eax		; nsymb
		push	edx		; symb
		push	20400h		; mode
		push	0		; amod
		mov	ecx, [ebp+8]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		add	ebx, eax

loc_489854:				; CODE XREF: .text:00489831j
		push	(offset	aCascadedIf+18h) ; src
		mov	eax, [ebp+14h]
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		test	esi, esi
		jz	short loc_489897
		cmp	byte ptr [esi+1Ch], 0
		jz	short loc_489897
		push	offset aGuessed	; "guessed "
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, [ebp+14h]
		sub	ecx, ebx
		push	ecx		; n
		lea	eax, [edi+ebx*2]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_489897:				; CODE XREF: .text:0048986Fj
					; .text:00489875j
		xor	esi, esi
		cmp	esi, [ebp-4]
		jge	short loc_4898EE

loc_48989E:				; CODE XREF: .text:004898ECj
		test	esi, esi
		jle	short loc_4898BB
		push	(offset	aAscii02x+14h) ; src
		mov	eax, [ebp+14h]
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4898BB:				; CODE XREF: .text:004898A0j
		mov	ecx, esi
		shl	ecx, 4
		add	ecx, esi
		lea	ecx, [esi+ecx*8]
		lea	ecx, [esi+ecx*2]
		shl	ecx, 2
		lea	eax, [ebp-6728h]
		add	ecx, eax
		push	ecx		; src
		mov	edx, [ebp+14h]
		sub	edx, ebx
		push	edx		; n
		lea	ecx, [edi+ebx*2]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		inc	esi
		cmp	esi, [ebp-4]
		jl	short loc_48989E

loc_4898EE:				; CODE XREF: .text:0048989Cj
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_489916
		push	offset aVoid_0	; "void"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, [ebp+14h]
		sub	eax, ebx
		push	eax		; n
		lea	edx, [edi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_489949
; ---------------------------------------------------------------------------

loc_489916:				; CODE XREF: .text:004898F2j
		mov	ecx, [ebp-4]
		mov	eax, ecx
		shl	ecx, 4
		add	ecx, eax
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*2]
		test	byte ptr [ebp+ecx*4-6BB4h], 20h
		jz	short loc_489949
		push	offset a____3	; "..."
		mov	edx, [ebp+14h]
		sub	edx, ebx
		push	edx		; n
		lea	ecx, [edi+ebx*2]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_489949:				; CODE XREF: .text:00489914j
					; .text:0048992Ej
		push	(offset	aXmmword16_Byte+22h) ; src
		mov	eax, [ebp+14h]
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, ebx

loc_489964:				; CODE XREF: .text:004896CAj
					; .text:004896DBj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 300. _Commentaddress
; Exported entry 422. Commentaddress

; int __cdecl Commentaddress(ulong _addr, int typelist, wchar_t *comment, int len)
		public Commentaddress
Commentaddress:				; CODE XREF: .text:00498205p
					; .text:004BCAAEp ...
		push	ebp		; _Commentaddress
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+14h]
		mov	esi, [ebp+0Ch]
		test	esi, esi
		jz	short loc_48998D
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_48998D
		cmp	edi, 20h
		jge	short loc_489994

loc_48998D:				; CODE XREF: .text:00489980j
					; .text:00489986j
		xor	eax, eax
		jmp	loc_489A7F
; ---------------------------------------------------------------------------

loc_489994:				; CODE XREF: .text:0048998Bj
		test	esi, 1
		jz	short loc_4899BC
		push	edi		; nname
		mov	edx, [ebp+10h]
		push	edx		; _name
		push	30h		; type
		mov	ecx, [ebp+8]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jle	short loc_4899BC
		mov	eax, ebx
		jmp	loc_489A7F
; ---------------------------------------------------------------------------

loc_4899BC:				; CODE XREF: .text:0048999Aj
					; .text:004899B3j
		test	esi, 2
		jz	short loc_4899E4
		push	edi		; nname
		mov	edx, [ebp+10h]
		push	edx		; _name
		push	32h		; type
		mov	ecx, [ebp+8]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jle	short loc_4899E4
		mov	eax, ebx
		jmp	loc_489A7F
; ---------------------------------------------------------------------------

loc_4899E4:				; CODE XREF: .text:004899C2j
					; .text:004899DBj
		test	esi, 4
		jz	loc_489A7D
		push	0		; argonly
		push	edi		; len
		mov	edx, [ebp+10h]
		push	edx		; comment
		push	0		; acall
		mov	ecx, [ebp+8]
		push	ecx		; _addr
		call	Getproccomment
		add	esp, 14h
		mov	ebx, eax
		lea	eax, [ebx+20h]
		cmp	edi, eax
		jle	short loc_489A75
		push	100h		; nname
		lea	edx, [ebp-200h]
		push	edx		; _name
		push	37h		; type
		mov	ecx, [ebp+8]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jle	short loc_489A75
		test	ebx, ebx
		jle	short loc_489A59
		mov	eax, edi
		mov	edx, ebx
		sub	eax, ebx
		push	offset asc_545504 ; ", "
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	ecx, [ebp-200h]
		push	ecx		; s
		call	Uncapitalize
		pop	ecx

loc_489A59:				; CODE XREF: .text:00489A2Ej
		lea	eax, [ebp-200h]
		sub	edi, ebx
		push	eax		; src
		mov	edx, ebx
		push	edi		; n
		add	edx, edx
		add	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_489A75:				; CODE XREF: .text:00489A0Cj
					; .text:00489A2Aj
		test	ebx, ebx
		jle	short loc_489A7D
		mov	eax, ebx
		jmp	short loc_489A7F
; ---------------------------------------------------------------------------

loc_489A7D:				; CODE XREF: .text:004899EAj
					; .text:00489A77j
		xor	eax, eax

loc_489A7F:				; CODE XREF: .text:0048998Fj
					; .text:004899B7j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
