.code

; SORTFUNC loc_4C82B8
loc_4C82B8:				; DATA XREF: .text:0044A28Co
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		xor	eax, eax
		push	ebx
		push	esi
		push	edi
		mov	edx, [ebp+10h]
		mov	ebx, [ebp+8]
		mov	ecx, [ebp+0Ch]
		cmp	edx, 1
		mov	[ebp-8], ecx
		jnz	short loc_4C834D
		mov	edx, [ebx+8]
		and	edx, 0E00000h
		cmp	edx, 800000h
		jnz	short loc_4C82EC
		mov	esi, 1
		jmp	short loc_4C82EF
; ---------------------------------------------------------------------------

loc_4C82EC:				; CODE XREF: .text:004C82E3j
		mov	esi, [ebx+10h]

loc_4C82EF:				; CODE XREF: .text:004C82EAj
		mov	ecx, [ebp-8]
		mov	ecx, [ecx+8]
		and	ecx, 0E00000h
		cmp	ecx, 800000h
		jnz	short loc_4C830A
		mov	edi, 1
		jmp	short loc_4C8310
; ---------------------------------------------------------------------------

loc_4C830A:				; CODE XREF: .text:004C8301j
		mov	edi, [ebp-8]
		mov	edi, [edi+10h]

loc_4C8310:				; CODE XREF: .text:004C8308j
		mov	[ebp-4], edi
		cmp	ecx, edx
		jbe	short loc_4C831F
		or	eax, 0FFFFFFFFh
		jmp	loc_4C83D8
; ---------------------------------------------------------------------------

loc_4C831F:				; CODE XREF: .text:004C8315j
		cmp	ecx, edx
		jnb	short loc_4C832D
		mov	eax, 1
		jmp	loc_4C83D8
; ---------------------------------------------------------------------------

loc_4C832D:				; CODE XREF: .text:004C8321j
		cmp	esi, [ebp-4]
		jnb	short loc_4C833C
		mov	eax, 1
		jmp	loc_4C83D8
; ---------------------------------------------------------------------------

loc_4C833C:				; CODE XREF: .text:004C8330j
		cmp	esi, [ebp-4]
		jbe	loc_4C83D8
		or	eax, 0FFFFFFFFh
		jmp	loc_4C83D8
; ---------------------------------------------------------------------------

loc_4C834D:				; CODE XREF: .text:004C82D2j
		cmp	edx, 2
		jz	short loc_4C8357
		cmp	edx, 3
		jnz	short loc_4C8374

loc_4C8357:				; CODE XREF: .text:004C8350j
		mov	ecx, [ebp-8]
		mov	ecx, [ecx+0Ch]
		mov	edx, [ebx+0Ch]
		cmp	ecx, edx
		jbe	short loc_4C8369
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C83D8
; ---------------------------------------------------------------------------

loc_4C8369:				; CODE XREF: .text:004C8362j
		cmp	ecx, edx
		jnb	short loc_4C83D8
		mov	eax, 1
		jmp	short loc_4C83D8
; ---------------------------------------------------------------------------

loc_4C8374:				; CODE XREF: .text:004C8355j
		cmp	edx, 4
		jnz	short loc_4C83D8
		mov	ecx, [ebp-8]
		mov	edx, [ebx+8]
		test	edx, 40000h
		mov	ecx, [ecx+8]
		jz	short loc_4C8397
		test	ecx, 40000h
		jnz	short loc_4C8397
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C83D8
; ---------------------------------------------------------------------------

loc_4C8397:				; CODE XREF: .text:004C8388j
					; .text:004C8390j
		test	edx, 40000h
		jnz	short loc_4C83AE
		test	ecx, 40000h
		jz	short loc_4C83AE
		mov	eax, 1
		jmp	short loc_4C83D8
; ---------------------------------------------------------------------------

loc_4C83AE:				; CODE XREF: .text:004C839Dj
					; .text:004C83A5j
		test	edx, 20000h
		jz	short loc_4C83C3
		test	ecx, 20000h
		jnz	short loc_4C83C3
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C83D8
; ---------------------------------------------------------------------------

loc_4C83C3:				; CODE XREF: .text:004C83B4j
					; .text:004C83BCj
		test	edx, 20000h
		jnz	short loc_4C83D8
		test	ecx, 20000h
		jz	short loc_4C83D8
		mov	eax, 1

loc_4C83D8:				; CODE XREF: .text:004C831Aj
					; .text:004C8328j ...
		test	eax, eax
		jnz	short loc_4C83F5
		mov	ecx, [ebp-8]
		mov	ecx, [ecx]
		mov	edx, [ebx]
		cmp	ecx, edx
		jbe	short loc_4C83EC
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C83F5
; ---------------------------------------------------------------------------

loc_4C83EC:				; CODE XREF: .text:004C83E5j
		cmp	ecx, edx
		jnb	short loc_4C83F5
		mov	eax, 1

loc_4C83F5:				; CODE XREF: .text:004C83DAj
					; .text:004C83EAj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; DESTFUNC loc_4C83FC
loc_4C83FC:				; DATA XREF: .text:0044A287o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4C8425
		push	59h		; type3
		push	58h		; type2
		push	57h		; type1
		mov	edx, [eax]
		mov	ecx, edx
		inc	ecx
		push	ecx		; addr1
		push	edx		; addr0
		call	Deletedatarange
		add	esp, 14h
		mov	run.updatedebugreg, 1

loc_4C8425:				; CODE XREF: .text:004C8404j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4C8428(wchar_t *buffer, void *s, int,	int, int, int, int)
loc_4C8428:				; DATA XREF: .text:004C8976o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		xor	ebx, ebx
		mov	eax, [ebp+1Ch]
		mov	edi, [ebp+20h]
		add	eax, 4
		mov	esi, [ebp+18h]
		cmp	eax, 0Ah	; switch 11 cases
		ja	loc_4C8772	; jumptable 004C8448 default case
		jmp	ds:off_4C844F[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4C844F	dd offset loc_4C847B	; DATA XREF: .text:004C8448r
		dd offset loc_4C8485	; jump table for switch	statement
		dd offset loc_4C848C
		dd offset loc_4C8493
		dd offset loc_4C8503
		dd offset loc_4C851F
		dd offset loc_4C860D
		dd offset loc_4C8661
		dd offset loc_4C868F
		dd offset loc_4C8704
		dd offset loc_4C8729
; ---------------------------------------------------------------------------

loc_4C847B:				; CODE XREF: .text:004C8448j
					; DATA XREF: .text:off_4C844Fo
		mov	eax, 18D4h	; jumptable 004C8448 case 0
		jmp	loc_4C8774
; ---------------------------------------------------------------------------

loc_4C8485:				; CODE XREF: .text:004C8448j
					; DATA XREF: .text:off_4C844Fo
		xor	eax, eax	; jumptable 004C8448 case 1
		jmp	loc_4C8774
; ---------------------------------------------------------------------------

loc_4C848C:				; CODE XREF: .text:004C8448j
					; DATA XREF: .text:off_4C844Fo
		xor	eax, eax	; jumptable 004C8448 case 2
		jmp	loc_4C8774
; ---------------------------------------------------------------------------

loc_4C8493:				; CODE XREF: .text:004C8448j
					; DATA XREF: .text:off_4C844Fo
		mov	edx, [esi+8]	; jumptable 004C8448 case 3
		and	edx, 0E00000h
		cmp	edx, 800000h
		jnz	short loc_4C84F0
		push	5		; mode
		push	10h		; size
		mov	ecx, [esi+0Ch]
		push	ecx		; _addr
		lea	eax, [ebp-14h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jbe	short loc_4C84F5
		push	0		; predict
		push	0		; reg
		push	15h		; mode
		push	edi		; da
		push	0		; psize
		mov	edx, [esi+0Ch]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		push	eax		; dec
		mov	ecx, [esi+0Ch]
		push	ecx		; ip
		mov	eax, [ebp-4]
		push	eax		; cmdsize
		lea	edx, [ebp-14h]
		push	edx		; cmd
		call	Disasm
		add	esp, 20h
		mov	[ebp-4], eax
		jmp	short loc_4C84F5
; ---------------------------------------------------------------------------

loc_4C84F0:				; CODE XREF: .text:004C84A2j
		xor	ecx, ecx
		mov	[ebp-4], ecx

loc_4C84F5:				; CODE XREF: .text:004C84BFj
					; .text:004C84EEj
		mov	eax, [ebp-4]
		mov	[edi+18D0h], eax
		jmp	loc_4C8772	; jumptable 004C8448 default case
; ---------------------------------------------------------------------------

loc_4C8503:				; CODE XREF: .text:004C8448j
					; DATA XREF: .text:off_4C844Fo
		mov	edx, [esi]	; jumptable 004C8448 case 4
		inc	edx
		push	edx
		push	offset aI_8	; format
		mov	ecx, [ebp+8]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C8772	; jumptable 004C8448 default case
; ---------------------------------------------------------------------------

loc_4C851F:				; CODE XREF: .text:004C8448j
					; DATA XREF: .text:off_4C844Fo
		mov	eax, [esi+8]	; jumptable 004C8448 case 5
		and	eax, 0F000h
		cmp	eax, 2000h
		jz	short loc_4C8535
		cmp	eax, 4000h
		jnz	short loc_4C8559

loc_4C8535:				; CODE XREF: .text:004C852Cj
		push	offset aInternal ; "Internal"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C8772	; jumptable 004C8448 default case
; ---------------------------------------------------------------------------

loc_4C8559:				; CODE XREF: .text:004C8533j
		mov	eax, [esi+8]
		and	eax, 0E00000h
		cmp	eax, 800000h
		jnz	short loc_4C858C
		push	offset aExec_0	; "Exec"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C8772	; jumptable 004C8448 default case
; ---------------------------------------------------------------------------

loc_4C858C:				; CODE XREF: .text:004C8566j
		mov	eax, [esi+8]
		and	eax, 0E00000h
		cmp	eax, (offset stru_5FF23C.text+0DC0h)
		jnz	short loc_4C85BE
		mov	edx, [esi+10h]
		push	edx
		push	offset aAccessI	; "Access:%i"
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp+8]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C8772	; jumptable 004C8448 default case
; ---------------------------------------------------------------------------

loc_4C85BE:				; CODE XREF: .text:004C8599j
		mov	eax, [esi+8]
		and	eax, 0E00000h
		cmp	eax, 400000h
		jnz	short loc_4C85F0
		mov	edx, [esi+10h]
		push	edx
		push	offset aWriteI_0 ; "Write:%i"
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp+8]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C8772	; jumptable 004C8448 default case
; ---------------------------------------------------------------------------

loc_4C85F0:				; CODE XREF: .text:004C85CBj
		push	$CTW0("???")	; "???"
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C8772	; jumptable 004C8448 default case
; ---------------------------------------------------------------------------

loc_4C860D:				; CODE XREF: .text:004C8448j
					; DATA XREF: .text:off_4C844Fo
		mov	eax, dword_57DE54 ; jumptable 004C8448 case 6
		cmp	eax, 1
		jnz	short loc_4C861E
		mov	eax, 2011h
		jmp	short loc_4C862F
; ---------------------------------------------------------------------------

loc_4C861E:				; CODE XREF: .text:004C8615j
		cmp	eax, 2
		jnz	short loc_4C862A
		mov	eax, 2012h
		jmp	short loc_4C862F
; ---------------------------------------------------------------------------

loc_4C862A:				; CODE XREF: .text:004C8621j
		mov	eax, 2010h

loc_4C862F:				; CODE XREF: .text:004C861Cj
					; .text:004C8628j
		cmp	dword_57DE58, 0
		jz	short loc_4C863B
		or	eax, 20h

loc_4C863B:				; CODE XREF: .text:004C8636j
		push	eax		; mode
		mov	edx, [ebp+10h]
		push	edx		; select
		mov	ecx, [ebp+0Ch]
		push	ecx		; mask
		push	0		; index
		push	0FFFFFFFFh	; relreg
		push	0		; reladdr
		mov	eax, [esi+0Ch]
		push	eax		; _addr
		mov	edx, [ebp+8]
		push	edx		; text
		call	Labeladdress
		add	esp, 20h
		mov	ebx, eax
		jmp	loc_4C8772	; jumptable 004C8448 default case
; ---------------------------------------------------------------------------

loc_4C8661:				; CODE XREF: .text:004C8448j
					; DATA XREF: .text:off_4C844Fo
		mov	eax, [esi+0Ch]	; jumptable 004C8448 case 7
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	loc_4C8772	; jumptable 004C8448 default case
		add	eax, 0Ch
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C8772	; jumptable 004C8448 default case
; ---------------------------------------------------------------------------

loc_4C868F:				; CODE XREF: .text:004C8448j
					; DATA XREF: .text:off_4C844Fo
		test	byte ptr [esi+0Ah], 2 ;	jumptable 004C8448 case	8
		jz	short loc_4C86B9
		push	offset aDisabled_2 ; "Disabled"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C8772	; jumptable 004C8448 default case
; ---------------------------------------------------------------------------

loc_4C86B9:				; CODE XREF: .text:004C8693j
		test	byte ptr [esi+0Ah], 4
		jz	short loc_4C86E3
		push	offset aCond_1	; "Cond"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C8772	; jumptable 004C8448 default case
; ---------------------------------------------------------------------------

loc_4C86E3:				; CODE XREF: .text:004C86BDj
		push	offset aActive_1 ; "Active"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_4C8772 ; jumptable 004C8448 default case
; ---------------------------------------------------------------------------

loc_4C8704:				; CODE XREF: .text:004C8448j
					; DATA XREF: .text:off_4C844Fo
		cmp	dword ptr [edi+18D0h], 0 ; jumptable 004C8448 case 9
		jbe	short loc_4C8772 ; jumptable 004C8448 default case
		add	edi, 13CCh
		push	edi		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_4C8772 ; jumptable 004C8448 default case
; ---------------------------------------------------------------------------

loc_4C8729:				; CODE XREF: .text:004C8448j
					; DATA XREF: .text:off_4C844Fo
		push	100h		; jumptable 004C8448 case 10
		mov	eax, [ebp+8]
		push	eax		; comment
		push	0FFFFFFFFh	; typelist
		mov	edx, [esi+0Ch]
		push	edx		; _addr
		call	Commentaddress
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4C8769
		cmp	dword ptr [edi+18D0h], 0
		jz	short loc_4C8769
		add	edi, 16D0h
		push	edi		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_4C8769:				; CODE XREF: .text:004C8744j
					; .text:004C874Dj
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 200h

loc_4C8772:				; CODE XREF: .text:004C8442j
					; .text:004C84FEj ...
		mov	eax, ebx	; jumptable 004C8448 default case

loc_4C8774:				; CODE XREF: .text:004C8480j
					; .text:004C8487j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C877C:				; DATA XREF: .text:004C8952o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	eax, [ebp+10h]
		sub	eax, 471h
		jz	short loc_4C8794
		sub	eax, 1Bh
		jz	short loc_4C87CA
		jmp	short loc_4C87D9
; ---------------------------------------------------------------------------

loc_4C8794:				; CODE XREF: .text:004C878Bj
		push	0		; index
		push	offset loc_4C7BA0 ; menufunc
		mov	edx, [ebx+218h]
		push	edx		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h
		push	1		; index
		push	offset loc_4C7BA0 ; menufunc
		mov	ecx, [ebx+218h]
		push	ecx		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C87CA:				; CODE XREF: .text:004C8790j
		or	dword_57FE7C, 80h
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C87D9:				; CODE XREF: .text:004C8792j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4C87E0:				; CODE XREF: .text:0040B065p
					; .text:00410064p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, offset word_55FA34
		cmp	bphard.bar.nbar, 0
		jnz	loc_4C8990
		lea	eax, [ebx+3B0h]
		push	eax		; src
		push	offset bphard	; dst
		call	_wcscpy
		mov	bphard.mode, 0F0000h
		lea	edx, [ebx+3DAh]
		mov	bphard.bar.visible, 1
		mov	bphard.bar._name, edx
		lea	ecx, [ebx+3E4h]
		lea	eax, [ebx+42Eh]
		mov	bphard.bar.expl, ecx
		mov	bphard.bar.mode, 2
		mov	bphard.bar.defdx, 5
		mov	bphard.bar._name+4, eax
		lea	edx, [ebx+438h]
		lea	ecx, [ebx+470h]
		mov	bphard.bar.expl+4, edx
		mov	bphard.bar.mode+4, 2
		mov	bphard.bar.defdx+4, 9
		mov	bphard.bar._name+8, ecx
		lea	eax, [ebx+480h]
		lea	edx, [ebx+4EAh]
		mov	bphard.bar.expl+8, eax
		mov	bphard.bar.mode+8, 2
		mov	bphard.bar.defdx+8, 9
		mov	bphard.bar._name+0Ch, edx
		lea	ecx, [ebx+4F8h]
		lea	eax, [ebx+554h]
		mov	bphard.bar.expl+0Ch, ecx
		mov	bphard.bar.mode+0Ch, 2
		mov	bphard.bar.defdx+0Ch, 9
		lea	edx, [ebx+562h]
		mov	bphard.bar._name+10h, eax
		mov	bphard.bar.expl+10h, edx
		mov	bphard.bar.mode+10h, 2
		lea	ecx, [ebx+5A6h]
		mov	bphard.bar.defdx+10h, 0Ch
		mov	bphard.bar._name+14h, ecx
		lea	eax, [ebx+5BEh]
		xor	edx, edx
		mov	bphard.bar.expl+14h, eax
		mov	bphard.bar.mode+14h, edx
		lea	ecx, [ebx+612h]
		mov	bphard.bar.defdx+14h, 28h
		lea	eax, [ebx+612h]
		mov	bphard.bar._name+18h, ecx
		xor	edx, edx
		mov	bphard.bar.expl+18h, eax
		mov	bphard.bar.mode+18h, edx
		mov	bphard.bar.defdx+18h, 100h
		mov	bphard.bar.nbar, 7
		xor	ecx, ecx
		mov	bphard.tabfunc,	offset loc_4C877C
		xor	eax, eax
		mov	bphard.custommode, ecx
		xor	edx, edx
		mov	bphard.customdata, eax
		mov	bphard.updatefunc, edx
		add	esp, 8
		xor	ecx, ecx
		mov	bphard.drawfunc, offset	loc_4C8428
		mov	bphard.tableselfunc, ecx
		mov	bphard.menu, offset stru_55F92C

loc_4C8990:				; CODE XREF: .text:004C87F0j
		cmp	bphard.hw, 0
		jnz	short loc_4C89CC
		lea	eax, [ebx+3B0h]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; _title
		lea	edx, [ebx+622h]
		push	edx		; icon
		mov	ecx, g_hInstance
		push	ecx		; hi
		mov	eax, bphard.bar.nbar
		push	eax		; ncolumn
		push	0		; nrow
		push	offset bphard	; pt
		call	Createtablewindow
		add	esp, 18h
		jmp	short loc_4C89DC
; ---------------------------------------------------------------------------

loc_4C89CC:				; CODE XREF: .text:004C8997j
		push	0		; bErase
		push	0		; lpRect
		mov	edx, bphard.hw
		push	edx		; hWnd
		call	InvalidateRect

loc_4C89DC:				; CODE XREF: .text:004C89CAj
		cmp	bphard.hparent,	0
		jz	short loc_4C8A31
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4C8A31
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4C8A08
		push	0		; lParam
		mov	edx, bphard.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4C8A08:				; CODE XREF: .text:004C89F2j
		mov	ecx, bphard.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_4C8A25
		push	9		; nCmdShow
		mov	eax, bphard.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_4C8A25:				; CODE XREF: .text:004C8A16j
		mov	edx, bphard.hw
		push	edx		; hWnd
		call	SetFocus

loc_4C8A31:				; CODE XREF: .text:004C89E3j
					; .text:004C89E9j
		mov	eax, bphard.hw
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C8A3C:				; DATA XREF: .text:004C9C05o
		push	ebp
		mov	ebp, esp
		mov	ecx, [ebp+8]
		mov	eax, [ecx+8]
		push	eax
		mov	eax, [ecx]
		push	eax
		call	loc_4CA998
		add	esp, 8
		mov	eax, 1
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------
		align 4

loc_4C8A5C:				; CODE XREF: .text:004C9049p
					; .text:004C9339p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+8]
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4C8A75
		test	esi, esi
		jnz	short loc_4C8A7C

loc_4C8A75:				; CODE XREF: .text:004C8A6Fj
		xor	eax, eax
		jmp	loc_4C8F4C
; ---------------------------------------------------------------------------

loc_4C8A7C:				; CODE XREF: .text:004C8A73j
		xor	edx, edx
		lea	ecx, [ebp-8]
		mov	[ebp-4], edx
		push	ecx
		push	0
		xor	edx, edx
		mov	eax, [ebp+0Ch]
		mov	ecx, process
		push	eax
		mov	eax, ebx
		push	edx
		push	eax
		push	ecx
		call	_imp__SymGetTypeInfo
		test	eax, eax
		jnz	short loc_4C8AA7
		xor	eax, eax
		mov	[ebp-8], eax

loc_4C8AA7:				; CODE XREF: .text:004C8AA0j
		cmp	dword ptr [ebp-8], 0Eh
		jz	short loc_4C8AB3
		cmp	dword ptr [ebp-8], 0Fh
		jnz	short loc_4C8B0D

loc_4C8AB3:				; CODE XREF: .text:004C8AABj
		lea	edx, [ebp+0Ch]
		mov	eax, ebx
		push	edx
		push	3
		mov	ecx, [ebp+0Ch]
		xor	edx, edx
		push	ecx
		push	edx
		push	eax
		mov	ecx, process
		push	ecx
		call	_imp__SymGetTypeInfo
		test	eax, eax
		jnz	short loc_4C8AD9
		xor	eax, eax
		mov	[ebp+0Ch], eax

loc_4C8AD9:				; CODE XREF: .text:004C8AD2j
		lea	edx, [ebp-8]
		mov	eax, ebx
		push	edx
		push	0
		mov	ecx, [ebp+0Ch]
		xor	edx, edx
		push	ecx
		push	edx
		push	eax
		mov	ecx, process
		push	ecx
		call	_imp__SymGetTypeInfo
		test	eax, eax
		jnz	short loc_4C8AFF
		xor	eax, eax
		mov	[ebp-8], eax

loc_4C8AFF:				; CODE XREF: .text:004C8AF8j
		mov	dword ptr [ebp-4], 1
		mov	edi, 1
		jmp	short loc_4C8B0F
; ---------------------------------------------------------------------------

loc_4C8B0D:				; CODE XREF: .text:004C8AB1j
		xor	edi, edi

loc_4C8B0F:				; CODE XREF: .text:004C8B0Bj
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4C8B36
		lea	eax, [ebp-14h]
		mov	ecx, process
		push	eax
		push	2
		mov	edx, [ebp+0Ch]
		mov	eax, ebx
		push	edx
		xor	edx, edx
		push	edx
		push	eax
		push	ecx
		call	_imp__SymGetTypeInfo
		test	eax, eax
		jnz	short loc_4C8B3D

loc_4C8B36:				; CODE XREF: .text:004C8B13j
		xor	eax, eax
		jmp	loc_4C8F4C
; ---------------------------------------------------------------------------

loc_4C8B3D:				; CODE XREF: .text:004C8B34j
		lea	edx, [ebp-0Ch]
		mov	eax, ebx
		push	edx
		push	5
		mov	ecx, [ebp+0Ch]
		xor	edx, edx
		push	ecx
		push	edx
		push	eax
		mov	ecx, process
		push	ecx
		call	_imp__SymGetTypeInfo
		test	eax, eax
		jnz	loc_4C8C55
		test	edi, edi
		jnz	short loc_4C8B6D
		xor	eax, eax
		mov	[ebp-18h], eax
		jmp	short loc_4C8B93
; ---------------------------------------------------------------------------

loc_4C8B6D:				; CODE XREF: .text:004C8B64j
		lea	edx, [ebp-18h]
		mov	eax, ebx
		push	edx
		push	1
		mov	ecx, [ebp+0Ch]
		xor	edx, edx
		push	ecx
		push	edx
		push	eax
		mov	ecx, process
		push	ecx
		call	_imp__SymGetTypeInfo
		test	eax, eax
		jnz	short loc_4C8B93
		xor	eax, eax
		mov	[ebp-18h], eax

loc_4C8B93:				; CODE XREF: .text:004C8B6Bj
					; .text:004C8B8Cj
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4C8B9D
		xor	ebx, ebx
		jmp	short loc_4C8BDE
; ---------------------------------------------------------------------------

loc_4C8B9D:				; CODE XREF: .text:004C8B97j
		mov	ebx, offset dword_560070
		jmp	short loc_4C8BB8
; ---------------------------------------------------------------------------

loc_4C8BA4:				; CODE XREF: .text:004C8BBDj
		push	eax		; s2
		mov	eax, [ebp-18h]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4C8BBF
		add	ebx, 10h

loc_4C8BB8:				; CODE XREF: .text:004C8BA2j
		mov	eax, [ebx+4]
		test	eax, eax
		jnz	short loc_4C8BA4

loc_4C8BBF:				; CODE XREF: .text:004C8BB3j
		cmp	dword ptr [ebx+4], 0
		jz	short loc_4C8BD3
		mov	eax, [ebx]
		xor	edx, edx
		cmp	edx, [ebp-10h]
		jnz	short loc_4C8BD1
		cmp	eax, [ebp-14h]

loc_4C8BD1:				; CODE XREF: .text:004C8BCCj
		jz	short loc_4C8BD5

loc_4C8BD3:				; CODE XREF: .text:004C8BC3j
		xor	ebx, ebx

loc_4C8BD5:				; CODE XREF: .text:loc_4C8BD1j
		mov	eax, [ebp-18h]
		push	eax		; hMem
		call	LocalFree

loc_4C8BDE:				; CODE XREF: .text:004C8B9Bj
		test	ebx, ebx
		jz	short loc_4C8BF9
		mov	edx, [ebx+0Ch]
		push	edx		; src
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, [ebx+8]
		mov	[ebp-4], ecx
		jmp	short loc_4C8C4B
; ---------------------------------------------------------------------------

loc_4C8BF9:				; CODE XREF: .text:004C8BE0j
		mov	eax, [ebp-14h]
		cmp	eax, 8
		jnz	short loc_4C8C13
		push	offset aQuad_1	; "QUAD"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4C8C4B
; ---------------------------------------------------------------------------

loc_4C8C13:				; CODE XREF: .text:004C8BFFj
		test	edi, edi
		jz	short loc_4C8C3B
		and	dword ptr [ebp-4], 0FFFFFFFEh
		mov	dword ptr [ebp-14h], 4
		mov	dword ptr [ebp-10h], 0
		push	offset aVoidptr	; "VOIDPTR"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4C8C4B
; ---------------------------------------------------------------------------

loc_4C8C3B:				; CODE XREF: .text:004C8C15j
		push	offset aHex_0	; "HEX"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4C8C4B:				; CODE XREF: .text:004C8BF7j
					; .text:004C8C11j ...
		xor	edx, edx
		mov	[ebp-0Ch], edx
		jmp	loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8C55:				; CODE XREF: .text:004C8B5Cj
		cmp	dword ptr [ebp-0Ch], 1
		jnz	short loc_4C8C7C
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4C8C7C
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_4C8C7C
		push	offset aVoid_2	; "VOID"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8C7C:				; CODE XREF: .text:004C8C59j
					; .text:004C8C5Fj ...
		cmp	dword ptr [ebp-0Ch], 2
		jnz	short loc_4C8CAD
		test	edi, edi
		jz	short loc_4C8CAD
		and	dword ptr [ebp-4], 0FFFFFFFEh
		mov	dword ptr [ebp-14h], 4
		mov	dword ptr [ebp-10h], 0
		push	offset aAscii_6	; "ASCII"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8CAD:				; CODE XREF: .text:004C8C80j
					; .text:004C8C84j
		cmp	dword ptr [ebp-0Ch], 2
		jnz	short loc_4C8CC8
		push	offset aChar_0	; "CHAR"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8CC8:				; CODE XREF: .text:004C8CB1j
		cmp	dword ptr [ebp-0Ch], 3
		jnz	short loc_4C8CF9
		test	edi, edi
		jz	short loc_4C8CF9
		and	dword ptr [ebp-4], 0FFFFFFFEh
		mov	dword ptr [ebp-14h], 4
		mov	dword ptr [ebp-10h], 0
		push	offset aUnicode_9 ; "UNICODE"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8CF9:				; CODE XREF: .text:004C8CCCj
					; .text:004C8CD0j
		cmp	dword ptr [ebp-0Ch], 3
		jnz	short loc_4C8D14
		push	offset aWchar_0	; "WCHAR"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8D14:				; CODE XREF: .text:004C8CFDj
		cmp	dword ptr [ebp-0Ch], 6
		jnz	short loc_4C8D3B
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4C8D3B
		cmp	dword ptr [ebp-14h], 4
		jnz	short loc_4C8D3B
		push	offset aInt_2	; "INT"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8D3B:				; CODE XREF: .text:004C8D18j
					; .text:004C8D1Ej ...
		cmp	dword ptr [ebp-0Ch], 6
		jnz	short loc_4C8D62
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4C8D62
		cmp	dword ptr [ebp-14h], 8
		jnz	short loc_4C8D62
		push	offset aQuad_1	; "QUAD"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8D62:				; CODE XREF: .text:004C8D3Fj
					; .text:004C8D45j ...
		cmp	dword ptr [ebp-0Ch], 7
		jnz	short loc_4C8D89
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4C8D89
		cmp	dword ptr [ebp-14h], 4
		jnz	short loc_4C8D89
		push	offset aUint_2	; "UINT"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8D89:				; CODE XREF: .text:004C8D66j
					; .text:004C8D6Cj ...
		cmp	dword ptr [ebp-0Ch], 7
		jnz	short loc_4C8DB0
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4C8DB0
		cmp	dword ptr [ebp-14h], 8
		jnz	short loc_4C8DB0
		push	offset aQuad_1	; "QUAD"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8DB0:				; CODE XREF: .text:004C8D8Dj
					; .text:004C8D93j ...
		cmp	dword ptr [ebp-0Ch], 8
		jnz	short loc_4C8DD7
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4C8DD7
		cmp	dword ptr [ebp-14h], 4
		jnz	short loc_4C8DD7
		push	offset aFloat_2	; "FLOAT"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8DD7:				; CODE XREF: .text:004C8DB4j
					; .text:004C8DBAj ...
		cmp	dword ptr [ebp-0Ch], 8
		jnz	short loc_4C8DFE
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4C8DFE
		cmp	dword ptr [ebp-14h], 8
		jnz	short loc_4C8DFE
		push	offset aDouble	; "DOUBLE"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8DFE:				; CODE XREF: .text:004C8DDBj
					; .text:004C8DE1j ...
		cmp	dword ptr [ebp-0Ch], 8
		jnz	short loc_4C8E31
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4C8E0E
		cmp	dword ptr [ebp-14h], 0Ah

loc_4C8E0E:				; CODE XREF: .text:004C8E08j
		jz	short loc_4C8E1C
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4C8E31
		cmp	dword ptr [ebp-14h], 0Ch
		jnz	short loc_4C8E31

loc_4C8E1C:				; CODE XREF: .text:loc_4C8E0Ej
		push	offset aLdouble_0 ; "LDOUBLE"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8E31:				; CODE XREF: .text:004C8E02j
					; .text:004C8E14j ...
		cmp	dword ptr [ebp-0Ch], 0Ah
		jnz	short loc_4C8E4C
		push	offset aBool_1	; "BOOL"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8E4C:				; CODE XREF: .text:004C8E35j
		cmp	dword ptr [ebp-0Ch], 0Dh
		jnz	short loc_4C8E73
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4C8E73
		cmp	dword ptr [ebp-14h], 4
		jnz	short loc_4C8E73
		push	offset aInt_2	; "INT"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8E73:				; CODE XREF: .text:004C8E50j
					; .text:004C8E56j ...
		cmp	dword ptr [ebp-0Ch], 0Dh
		jnz	short loc_4C8E9A
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4C8E9A
		cmp	dword ptr [ebp-14h], 8
		jnz	short loc_4C8E9A
		push	offset aQuad_1	; "QUAD"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8E9A:				; CODE XREF: .text:004C8E77j
					; .text:004C8E7Dj ...
		cmp	dword ptr [ebp-0Ch], 0Eh
		jnz	short loc_4C8EBE
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4C8EBE
		cmp	dword ptr [ebp-14h], 4
		jnz	short loc_4C8EBE
		push	offset aUint_2	; "UINT"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8EBE:				; CODE XREF: .text:004C8E9Ej
					; .text:004C8EA4j ...
		cmp	dword ptr [ebp-0Ch], 0Eh
		jnz	short loc_4C8EE2
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4C8EE2
		cmp	dword ptr [ebp-14h], 8
		jnz	short loc_4C8EE2
		push	offset aQuad_1	; "QUAD"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8EE2:				; CODE XREF: .text:004C8EC2j
					; .text:004C8EC8j ...
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4C8F00
		cmp	dword ptr [ebp-14h], 8
		jnz	short loc_4C8F00
		push	offset aQuad_1	; "QUAD"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8F00:				; CODE XREF: .text:004C8EE6j
					; .text:004C8EECj
		test	edi, edi
		jz	short loc_4C8F28
		and	dword ptr [ebp-4], 0FFFFFFFEh
		mov	dword ptr [ebp-14h], 4
		mov	dword ptr [ebp-10h], 0
		push	offset aVoidptr	; "VOIDPTR"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4C8F38
; ---------------------------------------------------------------------------

loc_4C8F28:				; CODE XREF: .text:004C8F02j
		push	offset aHex_0	; "HEX"
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4C8F38:				; CODE XREF: .text:004C8C50j
					; .text:004C8C77j ...
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4C8F46
		mov	eax, [ebp-14h]
		mov	edx, [ebp+14h]
		mov	[edx], eax

loc_4C8F46:				; CODE XREF: .text:004C8F3Cj
		mov	eax, [ebp-4]
		or	eax, 40h

loc_4C8F4C:				; CODE XREF: .text:004C8A77j
					; .text:004C8B38j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C8F54:				; DATA XREF: .text:004C93BAo
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+10h]
		mov	ebx, [ebp+8]
		test	eax, eax
		jnz	short loc_4C8F6C
		xor	eax, eax
		jmp	loc_4C90B3
; ---------------------------------------------------------------------------

loc_4C8F6C:				; CODE XREF: .text:004C8F63j
		mov	esi, eax
		mov	eax, [ebx+28h]
		cmp	eax, 0C8h
		jz	short loc_4C8F7F
		cmp	eax, 88h
		jnz	short loc_4C8F9F

loc_4C8F7F:				; CODE XREF: .text:004C8F76j
		cmp	dword ptr [ebx+40h], 11h
		jb	short loc_4C8F9F
		cmp	dword ptr [ebx+40h], 18h
		ja	short loc_4C8F9F
		mov	ecx, [ebx+40h]
		sub	ecx, 11h
		mov	edx, 10000h
		shl	edx, cl
		or	[esi], edx
		jmp	loc_4C90AE
; ---------------------------------------------------------------------------

loc_4C8F9F:				; CODE XREF: .text:004C8F7Dj
					; .text:004C8F83j ...
		cmp	dword ptr [ebx+28h], 0D0h
		jnz	loc_4C90A7
		mov	eax, [ebx+40h]
		cmp	eax, 15h
		jz	short loc_4C8FC3
		cmp	eax, 16h
		jz	short loc_4C8FC3
		mov	eax, 1
		jmp	loc_4C90B3
; ---------------------------------------------------------------------------

loc_4C8FC3:				; CODE XREF: .text:004C8FB2j
					; .text:004C8FB7j
		cmp	dword ptr [ebx+3Ch], 0
		jnz	short loc_4C8FCD
		cmp	dword ptr [ebx+38h], 4

loc_4C8FCD:				; CODE XREF: .text:004C8FC7j
		jnb	short loc_4C8FDE
		xor	edx, edx
		mov	eax, 1
		mov	[esi+4Ch], edx
		jmp	loc_4C90B3
; ---------------------------------------------------------------------------

loc_4C8FDE:				; CODE XREF: .text:loc_4C8FCDj
		mov	eax, [ebx+38h]
		mov	ecx, eax
		mov	edi, ecx
		test	edi, edi
		jns	short loc_4C8FEC
		add	edi, 3

loc_4C8FEC:				; CODE XREF: .text:004C8FE7j
		sar	edi, 2
		dec	edi
		mov	eax, edi
		shl	eax, 2
		add	eax, 4
		cmp	ecx, eax
		jz	short loc_4C900B
		xor	edx, edx
		mov	eax, 1
		mov	[esi+4Ch], edx
		jmp	loc_4C90B3
; ---------------------------------------------------------------------------

loc_4C900B:				; CODE XREF: .text:004C8FFAj
		cmp	edi, 18h
		jl	short loc_4C901F
		xor	edx, edx
		mov	eax, 1
		mov	[esi+4Ch], edx
		jmp	loc_4C90B3
; ---------------------------------------------------------------------------

loc_4C901F:				; CODE XREF: .text:004C900Ej
		lea	edx, [edi+edi*8]
		xor	ecx, ecx
		lea	eax, [ebp-4]
		lea	edx, [edi+edx*8]
		mov	[esi+edx*8+50h], ecx
		lea	edx, [edi+edi*8]
		push	eax
		lea	edx, [edi+edx*8]
		shl	edx, 3
		add	edx, esi
		add	edx, 258h
		push	edx
		mov	ecx, [ebx+4]
		push	ecx
		mov	eax, [ebx+20h]
		push	eax
		call	loc_4C8A5C
		lea	edx, [edi+edi*8]
		lea	ecx, [edi+edi*8]
		add	esp, 10h
		lea	edx, [edi+edx*8]
		lea	ecx, [edi+ecx*8]
		mov	[esi+edx*8+50h], eax
		test	byte ptr [esi+ecx*8+50h], 1
		jz	short loc_4C9078
		lea	eax, [edi+edi*8]
		lea	eax, [edi+eax*8]
		mov	dword ptr [esi+eax*8+54h], 4
		jmp	short loc_4C9085
; ---------------------------------------------------------------------------

loc_4C9078:				; CODE XREF: .text:004C9066j
		lea	edx, [edi+edi*8]
		lea	edx, [edi+edx*8]
		mov	ecx, [ebp-4]
		mov	[esi+edx*8+54h], ecx

loc_4C9085:				; CODE XREF: .text:004C9076j
		lea	eax, [edi+edi*8]
		add	ebx, 54h
		push	ebx		; src
		push	100h		; n
		lea	eax, [edi+eax*8]
		shl	eax, 3
		add	esi, eax
		add	esi, 58h
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4C90AE
; ---------------------------------------------------------------------------

loc_4C90A7:				; CODE XREF: .text:004C8FA6j
		cmp	dword ptr [ebx+28h], 90h

loc_4C90AE:				; CODE XREF: .text:004C8F9Aj
					; .text:004C90A5j
		mov	eax, 1

loc_4C90B3:				; CODE XREF: .text:004C8F67j
					; .text:004C8FBEj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 4

loc_4C90BC:				; DATA XREF: .text:004C9D1Ao
					; .text:004C9D47o
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 3

loc_4C90C5:				; CODE XREF: .text:004C90CDj
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4C90C5
		mov	eax, [ebp-4]
		add	esp, 0FFFFF668h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+8]
		cmp	dword ptr [ebx+4Ch], 100h
		jb	short loc_4C90F4
		mov	eax, 1
		jmp	loc_4C93F0
; ---------------------------------------------------------------------------

loc_4C90F4:				; CODE XREF: .text:004C90E8j
		cmp	dword_5D40C4, 0
		jz	loc_4C918A
		push	6		; maxlen
		push	$CTW0("??_C@_")	; "??_C@_"
		lea	edx, [ebx+54h]
		push	edx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4C9122
		mov	eax, 1
		jmp	loc_4C93F0
; ---------------------------------------------------------------------------

loc_4C9122:				; CODE XREF: .text:004C9116j
		push	6		; maxlen
		push	offset a_imp__	; "_imp__"
		lea	edi, [ebx+54h]
		push	edi		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4C914D
		push	7		; maxlen
		push	offset a__imp__	; s2
		push	edi		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4C9157

loc_4C914D:				; CODE XREF: .text:004C9137j
		mov	eax, 1
		jmp	loc_4C93F0
; ---------------------------------------------------------------------------

loc_4C9157:				; CODE XREF: .text:004C914Bj
		push	7		; maxlen
		push	offset a__real@	; s2
		lea	edi, [ebx+54h]
		push	edi		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4C9180
		push	offset a_real	; "_real"
		push	edi		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4C918A

loc_4C9180:				; CODE XREF: .text:004C916Cj
		mov	eax, 1
		jmp	loc_4C93F0
; ---------------------------------------------------------------------------

loc_4C918A:				; CODE XREF: .text:004C90FBj
					; .text:004C917Ej
		push	100h		; nname
		lea	edx, [ebp-20Ch]
		push	edx		; _name
		push	22h		; type
		mov	eax, [ebx+38h]
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jz	short loc_4C91BF
		lea	edx, [ebp-20Ch]
		push	edx		; s2
		lea	ecx, [ebx+54h]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4C923D

loc_4C91BF:				; CODE XREF: .text:004C91A6j
		push	100h		; nname
		lea	eax, [ebp-20Ch]
		push	eax		; _name
		push	23h		; type
		mov	eax, [ebx+38h]
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jz	short loc_4C91F4
		lea	edx, [ebp-20Ch]
		push	edx		; s2
		lea	ecx, [ebx+54h]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4C923D

loc_4C91F4:				; CODE XREF: .text:004C91DBj
		push	100h		; nname
		lea	eax, [ebp-20Ch]
		push	eax		; _name
		push	25h		; type
		mov	eax, [ebx+38h]
		push	eax		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jz	short loc_4C9229
		lea	edx, [ebp-20Ch]
		push	edx		; s2
		lea	ecx, [ebx+54h]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4C923D

loc_4C9229:				; CODE XREF: .text:004C9210j
		lea	eax, [ebx+54h]
		push	eax		; s
		mov	edx, [esi+4]
		push	edx		; type
		mov	eax, [ebx+38h]
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_4C923D:				; CODE XREF: .text:004C91BDj
					; .text:004C91F2j ...
		push	offset aWinmain	; "WinMain"
		lea	edx, [ebx+54h]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4C925D
		mov	eax, [ebx+38h]
		mov	edx, [esi]
		mov	[edx+468h], eax

loc_4C925D:				; CODE XREF: .text:004C9250j
		cmp	dword ptr [ebx+48h], 5
		jnz	loc_4C93EB
		cmp	dword ptr [esi+4], 29h
		jnz	loc_4C93EB
		push	3710h		; n
		push	0		; c
		lea	ecx, [ebp-391Ch]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		lea	eax, [ebp-4]
		push	eax
		push	1Ah
		mov	edx, [ebx+4]
		mov	eax, process
		push	edx
		push	dword ptr [ebx+24h]
		push	dword ptr [ebx+20h]
		push	eax
		call	_imp__SymGetTypeInfo
		test	eax, eax
		jnz	short loc_4C92B1
		xor	edx, edx
		mov	[ebp-391Ch], edx
		jmp	short loc_4C9301
; ---------------------------------------------------------------------------

loc_4C92B1:				; CODE XREF: .text:004C92A5j
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4C92C3
		mov	dword ptr [ebp-391Ch], 0E801h
		jmp	short loc_4C9301
; ---------------------------------------------------------------------------

loc_4C92C3:				; CODE XREF: .text:004C92B5j
		cmp	dword ptr [ebp-4], 4
		jnz	short loc_4C92D5
		mov	dword ptr [ebp-391Ch], 0E802h
		jmp	short loc_4C9301
; ---------------------------------------------------------------------------

loc_4C92D5:				; CODE XREF: .text:004C92C7j
		cmp	dword ptr [ebp-4], 7
		jnz	short loc_4C92E7
		mov	dword ptr [ebp-391Ch], 0E802h
		jmp	short loc_4C9301
; ---------------------------------------------------------------------------

loc_4C92E7:				; CODE XREF: .text:004C92D9j
		cmp	dword ptr [ebp-4], 0Bh
		jnz	short loc_4C92F9
		mov	dword ptr [ebp-391Ch], 0E802h
		jmp	short loc_4C9301
; ---------------------------------------------------------------------------

loc_4C92F9:				; CODE XREF: .text:004C92EBj
		xor	ecx, ecx
		mov	[ebp-391Ch], ecx

loc_4C9301:				; CODE XREF: .text:004C92AFj
					; .text:004C92C1j ...
		lea	eax, [ebp-8]
		push	eax
		push	3
		mov	edx, [ebx+4]
		mov	eax, process
		push	edx
		push	dword ptr [ebx+24h]
		push	dword ptr [ebx+20h]
		push	eax
		call	_imp__SymGetTypeInfo
		test	eax, eax
		jnz	short loc_4C9326
		xor	edx, edx
		mov	[ebp-8], edx

loc_4C9326:				; CODE XREF: .text:004C931Fj
		lea	ecx, [ebp-0Ch]
		lea	eax, [ebp-3910h]
		push	ecx
		push	eax
		mov	edx, [ebp-8]
		push	edx
		mov	eax, [ebx+20h]
		push	eax
		call	loc_4C8A5C
		mov	esi, eax
		add	esp, 10h
		test	esi, 1
		mov	[ebp-3918h], esi
		jz	short loc_4C935D
		mov	dword ptr [ebp-3914h], 4
		jmp	short loc_4C9366
; ---------------------------------------------------------------------------

loc_4C935D:				; CODE XREF: .text:004C934Fj
		mov	eax, [ebp-0Ch]
		mov	[ebp-3914h], eax

loc_4C9366:				; CODE XREF: .text:004C935Bj
		push	80h		; n
		push	0		; c
		lea	edx, [ebp-399Ch]
		push	edx		; s
		call	_memset
		mov	ecx, [ebx+38h]
		add	esp, 0Ch
		mov	[ebp-399Ch], ecx
		lea	eax, [ebp-399Ch]
		mov	ecx, [ebx+3Ch]
		mov	edx, process
		mov	[ebp-3998h], ecx
		push	0
		push	eax
		push	edx
		call	_imp__SymSetContext
		mov	dword ptr [ebp-38D0h], 1
		lea	ecx, [ebp-391Ch]
		mov	eax, process
		push	ecx
		push	offset loc_4C8F54
		push	0
		push	0
		push	0
		push	eax
		call	_imp__SymEnumSymbolsW
		cmp	dword ptr [ebp-38D0h], 0
		jz	short loc_4C93EB
		lea	edx, [ebp-391Ch]
		push	edx
		mov	eax, [ebp-399Ch]
		push	eax
		call	loc_4823CC
		add	esp, 8

loc_4C93EB:				; CODE XREF: .text:004C9261j
					; .text:004C926Bj ...
		mov	eax, 1

loc_4C93F0:				; CODE XREF: .text:004C90EFj
					; .text:004C911Dj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 4

loc_4C93FC:				; CODE XREF: .text:loc_410906p
					; .text:004C95E4p
		push	ebp
		mov	ebp, esp
		mov	eax, g_DBGHELP
		test	eax, eax
		jz	short loc_4C9416
		push	eax		; hLibModule
		call	FreeLibrary
		xor	edx, edx
		mov	g_DBGHELP, edx

loc_4C9416:				; CODE XREF: .text:004C9406j
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C9418:				; CODE XREF: .text:loc_40FD7Cp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBF8h
		cmp	g_IsUseDbghelp,	0
		push	ebx
		push	esi
		push	edi		; arglist
		mov	esi, offset g_DBGHELP
		mov	ebx, offset aHdc__ ; "HDC__"
;__DebugBreak
		jz	loc_4C96EE
		cmp	dword ptr [esi], 0
		jnz	loc_4C96EE
		invoke LoadLibraryW,$CTW0("DBGHELP.DLL")
		mov	edi, eax
		mov	[esi], edi
		test	edi, edi
		jz	loc_4C96EE
		invoke GetProcAddress,edi,$CTA0("SymSetOptions")
		mov	_imp__SymSetOptions, eax
		invoke GetProcAddress,edi,$CTA0("SymInitializeW")
		mov	_imp__SymInitializeW, eax
		invoke GetProcAddress,edi,$CTA0("SymCleanup")
		mov	_imp__SymCleanup, eax
		invoke GetProcAddress,edi,$CTA0("SymLoadModule64")
		mov	_imp__SymLoadModule64, eax
		invoke GetProcAddress,edi,$CTA0("SymGetModuleInfoW64")
		mov	_imp__SymGetModuleInfoW64, eax
		invoke GetProcAddress,edi,$CTA0("SymEnumSourceFilesW")
		mov	_imp__SymEnumSourceFilesW, eax
		invoke GetProcAddress,edi,$CTA0("SymUnloadModule64")
		mov	_imp__SymUnloadModule64, eax
		invoke GetProcAddress,edi,$CTA0("SymFromAddrW")
		mov	_imp__SymFromAddrW, eax
		invoke GetProcAddress,edi,$CTA0("SymEnumSymbolsW")
		mov	_imp__SymEnumSymbolsW, eax
		invoke GetProcAddress,edi,$CTA0("SymGetTypeInfo")
		mov	_imp__SymGetTypeInfo, eax
		invoke GetProcAddress,edi,$CTA0("SymSetContext")
		mov	_imp__SymSetContext, eax
		invoke GetProcAddress,edi,$CTA0("SymGetLineFromAddrW64")
		mov	_imp__SymGetLineFromAddrW64, eax
		invoke GetProcAddress,edi,$CTA0("SymEnumSourceLinesW")
		mov	_imp__SymEnumSourceLinesW, eax
		cmp	_imp__SymSetOptions, 0
		jz	short loc_4C95CA
		cmp	_imp__SymInitializeW, 0
		jz	short loc_4C95CA
		cmp	_imp__SymCleanup, 0
		jz	short loc_4C95CA
		cmp	_imp__SymLoadModule64, 0
		jz	short loc_4C95CA
		cmp	_imp__SymGetModuleInfoW64, 0
		jz	short loc_4C95CA
		cmp	_imp__SymEnumSourceFilesW, 0
		jz	short loc_4C95CA
		cmp	_imp__SymUnloadModule64, 0
		jz	short loc_4C95CA
		cmp	_imp__SymFromAddrW, 0
		jz	short loc_4C95CA
		cmp	_imp__SymEnumSymbolsW, 0
		jz	short loc_4C95CA
		cmp	_imp__SymGetTypeInfo, 0
		jz	short loc_4C95CA
		cmp	_imp__SymGetLineFromAddrW64, 0
		jz	short loc_4C95CA
		cmp	_imp__SymEnumSourceLinesW, 0
		jnz	short loc_4C95E9

loc_4C95CA:				; CODE XREF: .text:004C9565j
					; .text:004C956Ej ...
		lea	edx, aDbghelp_dllIsT;[ebx+180h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		call	loc_4C93FC

loc_4C95E9:				; CODE XREF: .text:004C95C8j
		invoke GetProcAddress,edi,$CTA0("StackWalk64")
		mov	_imp__StackWalk64, eax
		invoke GetProcAddress,edi,$CTA0("SymFunctionTableAccess64")
		mov	_imp__SymFunctionTableAccess64,	eax
		invoke GetProcAddress,edi,$CTA0("SymGetModuleBase64")
		mov	_imp__SymGetModuleBase64, eax
		cmp	dword_5D3A60, 0
		jnz	short loc_4C963B
		xor	ecx, ecx
		mov	dword_5FCB3C, ecx
		jmp	loc_4C96EE
; ---------------------------------------------------------------------------

loc_4C963B:				; CODE XREF: .text:004C962Cj
		push	offset ollydir	; src
		push	104h		; n
		lea	eax, [ebp-208h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, aSymsrv_dll;[ebx+226h]
		mov	ecx, 104h
		sub	ecx, eax
		push	edx		; src
		lea	edx, [ebp-208h]
		add	eax, eax
		add	eax, edx
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-408h]
		push	eax		; version
		lea	ecx, [ebp-208h]
		push	ecx		; path
		call	Getexeversion
		add	esp, 8
		test	eax, eax
		jnz	short loc_4C96B4
		lea	eax, aMissingSymsrv_;[ebx+23Eh]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		xor	edx, edx
		mov	dword_5FCB3C, edx
		jmp	short loc_4C96EE
; ---------------------------------------------------------------------------

loc_4C96B4:				; CODE XREF: .text:004C968Ej
		cmp	word ptr [ebp-408h], 36h
		jnb	short loc_4C96E4
		lea	ecx, aOldSymsrv_dllM;[ebx+2B4h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		mov	dword_5FCB3C, 1
		jmp	short loc_4C96EE
; ---------------------------------------------------------------------------

loc_4C96E4:				; CODE XREF: .text:004C96BCj
		mov	dword_5FCB3C, 1

loc_4C96EE:				; CODE XREF: .text:004C9435j
					; .text:004C943Ej ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C96F8:				; CODE XREF: .text:004C974Dp
					; .text:004C9D09p ...
		push	ebp
		mov	ebp, esp
		cmp	g_DBGHELP, 0
		jz	short loc_4C9722
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4C9717
		push	212h
		call	_imp__SymSetOptions
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C9717:				; CODE XREF: .text:004C9708j
		push	210h
		call	_imp__SymSetOptions

loc_4C9722:				; CODE XREF: .text:004C9702j
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4C9724(int, wchar_t *s)
loc_4C9724:				; CODE XREF: .text:004567D2p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF9A8h
		cmp	g_DBGHELP, 0
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		jz	loc_4C9A3F
		mov	eax, dword_57FE94
		push	eax
		call	loc_4C96F8
		pop	ecx
		xor	ebx, ebx
		test	esi, esi
		jz	loc_4C986B
		cmp	word ptr [esi],	0
		jz	loc_4C986B
		push	0		; dst
		push	0		; void *
		push	0		; void *
		lea	eax, [ebp-1658h]
		push	eax		; dest
		lea	edx, [ebp-8]
		push	edx		; int
		push	esi		; s
		call	_wFnsplit
		add	esp, 18h
		lea	ecx, [ebp-1658h]
		mov	edx, ebx
		lea	eax, [ebp-8]
		push	0		; a6
		push	0		; ext
		push	0		; _name
		push	ecx		; dir
		lea	ecx, [ebp-1458h]
		add	edx, edx
		add	edx, ecx
		push	eax		; drive
		push	edx		; path
		call	_wFnmerge
		add	esp, 18h
		add	ebx, eax
		mov	edx, ebx
		mov	eax, 0A28h
		sub	eax, ebx
		lea	ecx, [ebp-1458h]
		add	edx, edx
		push	offset asc_56040A ; ";"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	eax, [ebp-1658h]
		mov	ecx, ebx
		push	0		; a6
		push	0		; ext
		push	offset aDebug_1	; "debug"
		push	eax		; dir
		lea	eax, [ebp-1458h]
		lea	edx, [ebp-8]
		add	ecx, ecx
		push	edx		; drive
		add	ecx, eax
		push	ecx		; path
		call	_wFnmerge
		add	esp, 18h
		add	ebx, eax
		mov	ecx, ebx
		mov	edx, 0A28h
		sub	edx, ebx
		lea	eax, [ebp-1458h]
		add	ecx, ecx
		push	offset asc_56040A ; ";"
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	edx, [ebp-1658h]
		mov	eax, ebx
		push	0		; a6
		push	0		; ext
		push	offset aRelease	; "release"
		push	edx		; dir
		lea	edx, [ebp-1458h]
		lea	ecx, [ebp-8]
		add	eax, eax
		push	ecx		; drive
		add	eax, edx
		push	eax		; path
		call	_wFnmerge
		add	esp, 18h
		add	ebx, eax
		mov	eax, ebx
		mov	ecx, 0A28h
		sub	ecx, ebx
		lea	edx, [ebp-1458h]
		add	eax, eax
		push	offset asc_56040A ; ";"
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4C986B:				; CODE XREF: .text:004C9757j
					; .text:004C9761j
		xor	esi, esi
		mov	edi, offset word_5D3A64

loc_4C9872:				; CODE XREF: .text:004C98D6j
		cmp	word ptr [edi],	0
		jz	short loc_4C98CC
		mov	eax, esi
		mov	ecx, ebx
		shl	eax, 6
		mov	edx, 0A28h
		add	eax, esi
		sub	edx, ebx
		shl	eax, 3
		add	ecx, ecx
		add	eax, offset word_5D3A64
		push	eax		; src
		lea	eax, [ebp-1458h]
		add	ecx, eax
		push	edx		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	ecx, ebx
		mov	edx, 0A28h
		sub	edx, ebx
		lea	eax, [ebp-1458h]
		add	ecx, ecx
		push	offset asc_56040A ; ";"
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4C98CC:				; CODE XREF: .text:004C9876j
		inc	esi
		add	edi, 208h
		cmp	esi, 3
		jl	short loc_4C9872
		mov	ecx, ebx
		mov	edx, 0A28h
		sub	edx, ebx
		lea	eax, [ebp-1458h]
		add	ecx, ecx
		push	offset ollydir	; src
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		push	offset a_nt_symbol_pat ; _name
		call	__wgetenv
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jz	short loc_4C9957
		cmp	word ptr [esi],	0
		jz	short loc_4C9957
		mov	edx, ebx
		mov	eax, 0A28h
		sub	eax, ebx
		lea	ecx, [ebp-1458h]
		add	edx, edx
		push	offset asc_56040A ; ";"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	edx, ebx
		mov	eax, 0A28h
		sub	eax, ebx
		push	esi		; src
		lea	ecx, [ebp-1458h]
		add	edx, edx
		add	edx, ecx
		push	eax		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4C9957:				; CODE XREF: .text:004C990Bj
					; .text:004C9911j
		push	offset a_nt_alternate_ ; _name
		call	__wgetenv
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jz	short loc_4C99B2
		cmp	word ptr [esi],	0
		jz	short loc_4C99B2
		mov	edx, ebx
		mov	eax, 0A28h
		sub	eax, ebx
		lea	ecx, [ebp-1458h]
		add	edx, edx
		push	offset asc_56040A ; ";"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	edx, ebx
		mov	eax, 0A28h
		sub	eax, ebx
		push	esi		; src
		lea	ecx, [ebp-1458h]
		add	edx, edx
		add	edx, ecx
		push	eax		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4C99B2:				; CODE XREF: .text:004C9966j
					; .text:004C996Cj
		cmp	dword_5D3A60, 0
		jz	short loc_4C9A2C
		cmp	dword_5FCB3C, 0
		jz	short loc_4C9A2C
		mov	edx, ebx
		mov	eax, 0A28h
		sub	eax, ebx
		lea	ecx, [ebp-1458h]
		add	edx, edx
		push	offset aSrv	; ";SRV*"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	edx, ebx
		mov	eax, 0A28h
		sub	eax, ebx
		lea	ecx, [ebp-1458h]
		add	edx, edx
		push	offset ollydir	; src
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	ebx, eax
		add	esp, 0Ch
		mov	eax, 0A28h
		lea	edx, [ebp-1458h]
		sub	eax, ebx
		add	ebx, ebx
		push	offset aSymbolsHttpMsd ; "\\symbols*http://msdl.microsoft.com/dow"...
		push	eax		; n
		add	ebx, edx
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4C9A2C:				; CODE XREF: .text:004C99B9j
					; .text:004C99C2j
		push	0
		lea	ecx, [ebp-1458h]
		push	ecx
		mov	eax, [ebp+8]
		push	eax
		call	_imp__SymInitializeW

loc_4C9A3F:				; CODE XREF: .text:004C9741j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C9A48:				; CODE XREF: .text:00449FD2p
		push	ebp
		mov	ebp, esp
		cmp	g_DBGHELP, 0
		jz	short loc_4C9A5E
		mov	eax, [ebp+8]
		push	eax
		call	_imp__SymCleanup

loc_4C9A5E:				; CODE XREF: .text:004C9A52j
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __usercall loc_4C9A60@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, char arglist)
loc_4C9A60:				; CODE XREF: .text:0041418Ap
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF224h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, [ebp+14h]
		mov	ebx, [ebp+8]
		cmp	g_DBGHELP, 0
		jnz	short loc_4C9A82
		xor	eax, eax
		jmp	loc_4C9C24
; ---------------------------------------------------------------------------

loc_4C9A82:				; CODE XREF: .text:004C9A79j
		push	104h		; ns
		lea	edx, [ebp-104h]
		push	edx		; s
		push	104h		; nw
		mov	ecx, [ebp+10h]
		push	ecx		; w
		call	Unicodetoascii
		add	esp, 10h
		push	104h		; ns
		lea	eax, [ebp-124h]
		push	eax		; s
		push	104h		; nw
		push	edi		; w
		call	Unicodetoascii
		add	esp, 10h
		mov	edx, g_hCursor
		push	edx		; hCursor
		call	SetCursor
		mov	esi, eax
		cmp	dword_5D3A60, 0
		jz	short loc_4C9AF3
		cmp	dword_5FCB3C, 0
		jz	short loc_4C9AF3
		push	edi		; arglist
		push	offset aAccessingMicro ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Tempinfo
		add	esp, 8
		call	loc_409AAC

loc_4C9AF3:				; CODE XREF: .text:004C9ACEj
					; .text:004C9AD7j
		mov	eax, [ebp+0Ch]
		xor	edx, edx
		push	eax
		mov	eax, ebx
		push	edx
		push	eax
		lea	ecx, [ebp-124h]
		lea	eax, [ebp-104h]
		push	ecx
		push	eax
		mov	edx, process
		push	0
		push	edx
		call	_imp__SymLoadModule64
		cmp	dword_5D3A60, 0
		jz	short loc_4C9B34
		cmp	dword_5FCB3C, 0
		jz	short loc_4C9B34
		push	0		; format
		call	Tempinfo
		pop	ecx

loc_4C9B34:				; CODE XREF: .text:004C9B21j
					; .text:004C9B2Aj
		push	esi		; hCursor
		call	SetCursor
		push	0CB8h		; n
		push	0		; c
		lea	ecx, [ebp-0DDCh]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		lea	eax, [ebp-0DDCh]
		mov	dword ptr [ebp-0DDCh], 0CB8h
		push	eax
		xor	edx, edx
		push	edx
		mov	eax, ebx
		push	eax
		mov	ecx, process
		push	ecx
		call	_imp__SymGetModuleInfoW64
		test	eax, eax
		jnz	short loc_4C9B7F
		xor	eax, eax
		jmp	loc_4C9C24
; ---------------------------------------------------------------------------

loc_4C9B7F:				; CODE XREF: .text:004C9B76j
		cmp	dword ptr [ebp-0DBCh], 3
		jnz	short loc_4C9BB3
		cmp	word ptr [ebp-978h], 0
		jz	short loc_4C9BB3
		lea	edx, [ebp-978h]
		push	edx		; arglist
		push	offset aPdbFileS ; src
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	short loc_4C9C04
; ---------------------------------------------------------------------------

loc_4C9BB3:				; CODE XREF: .text:004C9B86j
					; .text:004C9B90j
		mov	ecx, [ebp-0DBCh]
		dec	ecx
		jz	short loc_4C9BC9
		dec	ecx
		jz	short loc_4C9BD0
		dec	ecx
		jz	short loc_4C9BD7
		sub	ecx, 3
		jz	short loc_4C9BDE
		jmp	short loc_4C9BE5
; ---------------------------------------------------------------------------

loc_4C9BC9:				; CODE XREF: .text:004C9BBAj
		mov	esi, offset aCoff ; "COFF"
		jmp	short loc_4C9BE7
; ---------------------------------------------------------------------------

loc_4C9BD0:				; CODE XREF: .text:004C9BBDj
		mov	esi, offset aCodeview ;	"CodeView"
		jmp	short loc_4C9BE7
; ---------------------------------------------------------------------------

loc_4C9BD7:				; CODE XREF: .text:004C9BC0j
		mov	esi, offset aPdb ; "PDB"
		jmp	short loc_4C9BE7
; ---------------------------------------------------------------------------

loc_4C9BDE:				; CODE XREF: .text:004C9BC5j
		mov	esi, offset aSym ; "SYM"
		jmp	short loc_4C9BE7
; ---------------------------------------------------------------------------

loc_4C9BE5:				; CODE XREF: .text:004C9BC7j
		xor	esi, esi

loc_4C9BE7:				; CODE XREF: .text:004C9BCEj
					; .text:004C9BD5j ...
		test	esi, esi
		jz	short loc_4C9C04
		push	esi		; arglist
		push	offset aDebuggingInfor ; "  Debugging information in %s	format is"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_4C9C04:				; CODE XREF: .text:004C9BB1j
					; .text:004C9BE9j
		push	ebx
		push	offset loc_4C8A3C
		xor	edx, edx
		push	0
		push	edx
		mov	eax, ebx
		push	eax
		mov	ecx, process
		push	ecx
		call	_imp__SymEnumSourceFilesW
		mov	eax, 1

loc_4C9C24:				; CODE XREF: .text:004C9A7Dj
					; .text:004C9B7Aj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C9C2C:				; CODE XREF: .text:0041333Dp
		push	ebp
		mov	ebp, esp
		cmp	g_DBGHELP, 0
		jz	short loc_4C9C49
		mov	eax, [ebp+0Ch]
		xor	edx, edx
		push	edx
		push	eax
		mov	ecx, [ebp+8]
		push	ecx
		call	_imp__SymUnloadModule64

loc_4C9C49:				; CODE XREF: .text:004C9C36j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C9C4C:				; CODE XREF: .text:004617BCp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDA0h
		cmp	g_DBGHELP, 0
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		jnz	short loc_4C9C6E
		xor	eax, eax
		jmp	short loc_4C9CDF
; ---------------------------------------------------------------------------

loc_4C9C6E:				; CODE XREF: .text:004C9C68j
		mov	dword ptr [ebp-260h], 58h
		mov	dword ptr [ebp-210h], 100h
		lea	edx, [ebp-260h]
		lea	ecx, [ebp-8]
		push	edx
		push	ecx
		mov	eax, [ebp+8]
		xor	edx, edx
		push	edx
		push	eax
		mov	ecx, process
		push	ecx
		call	_imp__SymFromAddrW
		test	eax, eax
		jnz	short loc_4C9CA9
		xor	eax, eax
		jmp	short loc_4C9CDF
; ---------------------------------------------------------------------------

loc_4C9CA9:				; CODE XREF: .text:004C9CA3j
		test	esi, esi
		jz	short loc_4C9CB2
		mov	eax, [ebp-8]
		mov	[esi], eax

loc_4C9CB2:				; CODE XREF: .text:004C9CABj
		test	edi, edi
		jz	short loc_4C9CBE
		mov	edx, [ebp-218h]
		mov	[edi], edx

loc_4C9CBE:				; CODE XREF: .text:004C9CB4j
		test	ebx, ebx
		jz	short loc_4C9CD9
		lea	ecx, [ebp-20Ch]
		push	ecx		; src
		push	100h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4C9CDF
; ---------------------------------------------------------------------------

loc_4C9CD9:				; CODE XREF: .text:004C9CC0j
		mov	eax, [ebp-214h]

loc_4C9CDF:				; CODE XREF: .text:004C9C6Cj
					; .text:004C9CA7j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C9CE8:				; CODE XREF: .text:004164DDp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		cmp	g_DBGHELP, 0
		push	ebx
		mov	ebx, [ebp+8]
		jz	short loc_4C9D6D
		test	ebx, ebx
		jz	short loc_4C9D6D
		call	Mergequickdata
		mov	[ebp-8], ebx
		push	0
		call	loc_4C96F8
		pop	ecx
		lea	eax, [ebp-8]
		mov	dword ptr [ebp-4], 29h
		push	eax
		push	offset loc_4C90BC
		push	0
		xor	edx, edx
		mov	eax, [ebx]
		push	edx
		push	eax
		mov	ecx, process
		push	ecx
		call	_imp__SymEnumSymbolsW
		push	1
		call	loc_4C96F8
		pop	ecx
		lea	eax, [ebp-8]
		mov	dword ptr [ebp-4], 2Ah
		push	eax
		push	offset loc_4C90BC
		push	0
		xor	edx, edx
		mov	eax, [ebx]
		push	edx
		push	eax
		mov	ecx, process
		push	ecx
		call	_imp__SymEnumSymbolsW
		mov	eax, dword_57FE94
		push	eax
		call	loc_4C96F8
		pop	ecx

loc_4C9D6D:				; CODE XREF: .text:004C9CF9j
					; .text:004C9CFDj
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C9D74:				; CODE XREF: .text:00476109p
					; .text:00477071p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE4h
		push	ebx
		push	esi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		cmp	g_DBGHELP, 0
		jnz	short loc_4C9D8F
		xor	eax, eax
		jmp	short loc_4C9DDD
; ---------------------------------------------------------------------------

loc_4C9D8F:				; CODE XREF: .text:004C9D89j
		mov	dword ptr [ebp-1Ch], 18h
		lea	edx, [ebp-1Ch]
		lea	ecx, [ebp-4]
		push	edx
		push	ecx
		mov	eax, [ebp+8]
		xor	edx, edx
		push	edx
		push	eax
		mov	ecx, process
		push	ecx
		call	_imp__SymGetLineFromAddrW64
		test	eax, eax
		jnz	short loc_4C9DBA
		xor	eax, eax
		jmp	short loc_4C9DDD
; ---------------------------------------------------------------------------

loc_4C9DBA:				; CODE XREF: .text:004C9DB4j
		test	esi, esi
		jz	short loc_4C9DC4
		mov	edx, [ebp-14h]
		dec	edx
		mov	[esi], edx

loc_4C9DC4:				; CODE XREF: .text:004C9DBCj
		test	ebx, ebx
		jz	short loc_4C9DDA
		mov	ecx, [ebp-10h]
		push	ecx		; src
		push	104h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4C9DDA:				; CODE XREF: .text:004C9DC6j
		mov	eax, [ebp-0Ch]

loc_4C9DDD:				; CODE XREF: .text:004C9D8Dj
					; .text:004C9DB8j
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C9DE4:				; DATA XREF: .text:004C9E5Do
		push	ebp
		mov	ebp, esp
		mov	ecx, [ebp+0Ch]
		mov	eax, [ecx+8]
		cmp	eax, [ecx+4]
		jl	short loc_4C9DF6
		xor	eax, eax
		jmp	short loc_4C9E0F
; ---------------------------------------------------------------------------

loc_4C9DF6:				; CODE XREF: .text:004C9DF0j
		mov	edx, [ebp+8]
		mov	eax, [edx+428h]
		mov	edx, [ecx+8]
		inc	dword ptr [ecx+8]
		mov	ecx, [ecx]
		mov	[ecx+edx*4], eax
		mov	eax, 1

loc_4C9E0F:				; CODE XREF: .text:004C9DF4j
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------
		align 4

loc_4C9E14:				; CODE XREF: .text:004CABD4p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		mov	edx, [ebp+18h]
		mov	eax, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	ecx, [ebp+0Ch]
		test	ecx, ecx
		jz	short loc_4C9E3D
		cmp	word ptr [ecx],	0
		jz	short loc_4C9E3D
		test	ebx, ebx
		jl	short loc_4C9E3D
		test	eax, eax
		jz	short loc_4C9E3D
		test	edx, edx
		jg	short loc_4C9E41

loc_4C9E3D:				; CODE XREF: .text:004C9E29j
					; .text:004C9E2Fj ...
		xor	eax, eax
		jmp	short loc_4C9E88
; ---------------------------------------------------------------------------

loc_4C9E41:				; CODE XREF: .text:004C9E3Bj
		cmp	g_DBGHELP, 0
		jnz	short loc_4C9E4E
		xor	eax, eax
		jmp	short loc_4C9E88
; ---------------------------------------------------------------------------

loc_4C9E4E:				; CODE XREF: .text:004C9E48j
		mov	[ebp-0Ch], eax
		mov	[ebp-8], edx
		xor	edx, edx
		lea	eax, [ebp-0Ch]
		mov	[ebp-4], edx
		push	eax
		push	offset loc_4C9DE4
		inc	ebx
		push	1
		push	ebx
		push	ecx
		push	0
		mov	eax, [ebp+8]
		xor	edx, edx
		push	edx
		push	eax
		mov	ecx, process
		push	ecx
		call	_imp__SymEnumSourceLinesW
		test	eax, eax
		jnz	short loc_4C9E85
		xor	eax, eax
		jmp	short loc_4C9E88
; ---------------------------------------------------------------------------

loc_4C9E85:				; CODE XREF: .text:004C9E7Fj
		mov	eax, [ebp-4]

loc_4C9E88:				; CODE XREF: .text:004C9E3Fj
					; .text:004C9E4Cj ...
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __stdcall	loc_4C9E90(int,	char arglist, int, int,	size_t n, int)
loc_4C9E90:				; DATA XREF: .text:004C9F8Bo
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+1Ch]
		push	5		; mode
		mov	eax, [ebp+18h]
		push	eax		; size
		mov	eax, [ebp+0Ch]
		push	eax		; _addr
		mov	edx, [ebp+14h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		test	ebx, ebx
		jz	short loc_4C9EB3
		mov	[ebx], eax

loc_4C9EB3:				; CODE XREF: .text:004C9EAFj
		test	eax, eax
		setnz	cl
		and	ecx, 1
		mov	eax, ecx
		pop	ebx
		pop	ebp
		retn	18h
; ---------------------------------------------------------------------------
		align 4

loc_4C9EC4:				; CODE XREF: .text:004AD907p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4C9ED4
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C9ED4:				; CODE XREF: .text:004C9ECDj
		cmp	g_DBGHELP, 0
		jz	short loc_4C9EF8
		cmp	_imp__StackWalk64, 0
		jz	short loc_4C9EF8
		cmp	_imp__SymFunctionTableAccess64,	0
		jz	short loc_4C9EF8
		cmp	_imp__SymGetModuleBase64, 0
		jnz	short loc_4C9EFD

loc_4C9EF8:				; CODE XREF: .text:004C9EDBj
					; .text:004C9EE4j ...
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C9EFD:				; CODE XREF: .text:004C9EF6j
		cmp	dword ptr [ebx+2E0h], 0
		jnz	short loc_4C9F0B
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C9F0B:				; CODE XREF: .text:004C9F04j
		cmp	dword ptr [ebx+0Ch], 0
		jz	short loc_4C9F7C
		push	108h		; n
		push	0		; c
		lea	edx, [ebx+2FCh]
		push	edx		; s
		call	_memset
		mov	eax, [ebx]
		xor	edx, edx
		mov	[ebx+2FCh], eax
		mov	[ebx+300h], edx
		mov	dword ptr [ebx+308h], 3
		mov	eax, [ebx+8]
		xor	edx, edx
		mov	[ebx+31Ch], eax
		mov	[ebx+320h], edx
		mov	dword ptr [ebx+328h], 3
		mov	eax, [ebx+4]
		xor	edx, edx
		mov	[ebx+32Ch], eax
		mov	[ebx+330h], edx
		mov	dword ptr [ebx+338h], 3
		add	esp, 0Ch
		xor	ecx, ecx
		mov	[ebx+0Ch], ecx

loc_4C9F7C:				; CODE XREF: .text:004C9F0Fj
		push	0
		mov	eax, _imp__SymGetModuleBase64
		push	eax
		mov	edx, _imp__SymFunctionTableAccess64
		push	edx
		push	offset loc_4C9E90
		lea	ecx, [ebx+14h]
		push	ecx
		lea	eax, [ebx+2FCh]
		push	eax
		mov	edx, [ebx+10h]
		push	edx
		mov	ecx, process
		push	ecx
		push	14Ch
		call	_imp__StackWalk64
		test	eax, eax
		jnz	short loc_4C9FC2
		xor	eax, eax
		mov	[ebx+2E0h], eax
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C9FC2:				; CODE XREF: .text:004C9FB3j
		cmp	dword ptr [ebx+378h], 0
		jnz	short loc_4C9FD8
		xor	edx, edx
		xor	eax, eax
		mov	[ebx+2E0h], edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C9FD8:				; CODE XREF: .text:004C9FC9j
		mov	dword ptr [ebx+2E4h], 4
		mov	eax, [ebx+31Ch]
		add	eax, 4
		mov	[ebx+2F4h], eax
		mov	eax, [ebx+30Ch]
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C9FFC:				; CODE XREF: .text:004CAB27p
					; .text:004CB3C1p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4CA014
		or	eax, 0FFFFFFFFh
		jmp	loc_4CA288
; ---------------------------------------------------------------------------

loc_4CA014:				; CODE XREF: .text:004CA00Aj
		cmp	dword ptr [ebx+218h], 0
		jnz	short loc_4CA023
		test	byte ptr [ebx+0Ah], 1
		jz	short loc_4CA02A

loc_4CA023:				; CODE XREF: .text:004CA01Bj
		xor	eax, eax
		jmp	loc_4CA288
; ---------------------------------------------------------------------------

loc_4CA02A:				; CODE XREF: .text:004CA021j
		lea	edx, [ebp-10h]
		push	edx		; int
		push	0		; psize
		push	0		; fixsize
		lea	ecx, [ebx+0Ch]
		push	ecx		; path
		call	Readfile
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4CA053
		or	dword ptr [ebx+8], 10000h
		or	eax, 0FFFFFFFFh
		jmp	loc_4CA288
; ---------------------------------------------------------------------------

loc_4CA053:				; CODE XREF: .text:004CA042j
		cmp	dword ptr [ebp-10h], 2
		jbe	short loc_4CA07A
		cmp	byte ptr [esi],	0FEh
		jnz	short loc_4CA07A
		cmp	byte ptr [esi+1], 0FFh
		jnz	short loc_4CA07A
		push	esi		; data
		call	Memfree
		pop	ecx
		or	dword ptr [ebx+8], 10000h
		or	eax, 0FFFFFFFFh
		jmp	loc_4CA288
; ---------------------------------------------------------------------------

loc_4CA07A:				; CODE XREF: .text:004CA057j
					; .text:004CA05Cj ...
		cmp	dword ptr [ebp-10h], 2
		jbe	short loc_4CA0FD
		cmp	byte ptr [esi],	0FFh
		jnz	short loc_4CA0FD
		cmp	byte ptr [esi+1], 0FEh
		jnz	short loc_4CA0FD
		mov	edx, [ebp-10h]
		lea	edx, [edx+edx*2]
		inc	edx
		shr	edx, 1		; int
		mov	[ebp-14h], edx
		push	1		; flags
		mov	ecx, [ebp-14h]	; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4CA0C1
		push	esi		; data
		call	Memfree
		pop	ecx
		or	dword ptr [ebx+8], 10000h
		or	eax, 0FFFFFFFFh
		jmp	loc_4CA288
; ---------------------------------------------------------------------------

loc_4CA0C1:				; CODE XREF: .text:004CA0A9j
		mov	edx, [ebp-14h]
		push	edx		; ns
		push	edi		; s
		mov	ecx, [ebp-10h]
		push	ecx		; nw
		lea	eax, [esi+2]
		push	eax		; w
		call	Unicodetoascii
		add	esp, 10h
		mov	[ebp-14h], eax
		lea	edx, [ebp-4]	; int
		push	edx		; newcount
		push	1		; itemsize
		mov	ecx, [ebp-14h]	; int
		push	ecx		; count
		push	edi		; data
		call	Mempurge
		add	esp, 10h
		mov	edi, eax
		push	esi		; data
		call	Memfree
		pop	ecx
		mov	eax, [ebp-4]
		mov	[ebp-10h], eax
		mov	esi, edi

loc_4CA0FD:				; CODE XREF: .text:004CA07Ej
					; .text:004CA083j ...
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		mov	eax, esi
		cmp	edx, [ebp-10h]
		jnb	short loc_4CA14A

loc_4CA10B:				; CODE XREF: .text:004CA148j
		mov	cl, [eax]
		test	cl, cl
		jz	short loc_4CA14A
		cmp	cl, 0Ah
		jnz	short loc_4CA12B
		mov	ecx, [ebp-10h]
		dec	ecx
		cmp	edx, ecx
		jnb	short loc_4CA126
		cmp	byte ptr [eax+1], 0Dh
		jnz	short loc_4CA126
		inc	edx
		inc	eax

loc_4CA126:				; CODE XREF: .text:004CA11Cj
					; .text:004CA122j
		inc	dword ptr [ebp-0Ch]
		jmp	short loc_4CA143
; ---------------------------------------------------------------------------

loc_4CA12B:				; CODE XREF: .text:004CA114j
		cmp	byte ptr [eax],	0Dh
		jnz	short loc_4CA143
		mov	ecx, [ebp-10h]
		dec	ecx		; int
		cmp	edx, ecx
		jnb	short loc_4CA140
		cmp	byte ptr [eax+1], 0Ah
		jnz	short loc_4CA140
		inc	edx
		inc	eax

loc_4CA140:				; CODE XREF: .text:004CA136j
					; .text:004CA13Cj
		inc	dword ptr [ebp-0Ch]

loc_4CA143:				; CODE XREF: .text:004CA129j
					; .text:004CA12Ej
		inc	edx		; int
		inc	eax
		cmp	edx, [ebp-10h]
		jb	short loc_4CA10B

loc_4CA14A:				; CODE XREF: .text:004CA109j
					; .text:004CA10Fj
		push	3		; flags
		mov	edi, [ebp-0Ch]
		inc	edi
		mov	eax, edi
		shl	eax, 2
		lea	eax, [eax+eax*2] ; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebx+21Ch], eax
		shl	edi, 3
		push	3		; flags
		push	edi		; size
		call	Memalloc
		add	esp, 8
		mov	[ebx+224h], eax
		cmp	dword ptr [ebx+21Ch], 0
		jz	short loc_4CA18D
		cmp	dword ptr [ebx+224h], 0
		jnz	short loc_4CA1D5

loc_4CA18D:				; CODE XREF: .text:004CA182j
		push	esi		; data
		call	Memfree
		pop	ecx
		mov	eax, [ebx+21Ch]
		test	eax, eax
		jz	short loc_4CA1AD
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+21Ch], edx

loc_4CA1AD:				; CODE XREF: .text:004CA19Cj
		mov	eax, [ebx+224h]
		test	eax, eax
		jz	short loc_4CA1C6
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+224h], edx

loc_4CA1C6:				; CODE XREF: .text:004CA1B5j
		or	dword ptr [ebx+8], 10000h
		or	eax, 0FFFFFFFFh
		jmp	loc_4CA288
; ---------------------------------------------------------------------------

loc_4CA1D5:				; CODE XREF: .text:004CA18Bj
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-8], ecx
		jmp	short loc_4CA23B
; ---------------------------------------------------------------------------

loc_4CA1DE:				; CODE XREF: .text:004CA244j
		mov	eax, [ebp-8]
		lea	eax, [eax+eax*2]
		mov	ecx, [ebx+21Ch]
		mov	[ecx+eax*4], edx
		mov	ecx, [ebx+21Ch]
		mov	dword ptr [ecx+eax*4+4], 0FFFFFFFFh
		lea	eax, [esi+edx]
		cmp	edx, [ebp-10h]
		jnb	short loc_4CA238

loc_4CA203:				; CODE XREF: .text:004CA236j
		mov	cl, [eax]
		test	cl, cl
		jz	short loc_4CA238
		cmp	cl, 0Ah
		jnz	short loc_4CA21D
		inc	edx
		inc	eax
		cmp	edx, [ebp-10h]
		jnb	short loc_4CA238
		cmp	byte ptr [eax],	0Dh
		jnz	short loc_4CA238
		inc	edx
		jmp	short loc_4CA238
; ---------------------------------------------------------------------------

loc_4CA21D:				; CODE XREF: .text:004CA20Cj
		cmp	byte ptr [eax],	0Dh
		jnz	short loc_4CA231
		inc	edx
		inc	eax
		cmp	edx, [ebp-10h]
		jnb	short loc_4CA238
		cmp	byte ptr [eax],	0Ah
		jnz	short loc_4CA238
		inc	edx
		jmp	short loc_4CA238
; ---------------------------------------------------------------------------

loc_4CA231:				; CODE XREF: .text:004CA220j
		inc	edx
		inc	eax
		cmp	edx, [ebp-10h]
		jb	short loc_4CA203

loc_4CA238:				; CODE XREF: .text:004CA201j
					; .text:004CA207j ...
		inc	dword ptr [ebp-8]

loc_4CA23B:				; CODE XREF: .text:004CA1DCj
		cmp	edx, [ebp-10h]
		jnb	short loc_4CA246
		cmp	byte ptr [esi+edx], 0
		jnz	short loc_4CA1DE

loc_4CA246:				; CODE XREF: .text:004CA23Ej
		mov	eax, [ebp-8]
		mov	ecx, [ebx+21Ch]
		lea	eax, [eax+eax*2]
		mov	[ecx+eax*4], edx
		mov	[ebx+218h], esi
		mov	eax, [ebp-8]
		xor	ecx, ecx
		mov	[ebx+220h], eax
		xor	eax, eax
		mov	edx, [ebp-0Ch]
		inc	edx
		mov	[ebx+228h], edx
		xor	edx, edx
		mov	[ebx+22Ch], eax
		mov	[ebx+230h], edx
		mov	[ebx+234h], ecx
		xor	eax, eax

loc_4CA288:				; CODE XREF: .text:004CA00Fj
					; .text:004CA025j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4CA290:				; DATA XREF: .data:stru_560730o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset extent
		mov	g_line, 0FFFFFFFFh
		xor	eax, eax
		mov	[edi], eax
		xor	edx, edx
		mov	nextent, edx
		xor	ecx, ecx
		mov	dword_5FCDAC, ecx
		mov	dword_5FCDA8, ecx
		mov	dword_5FCDA4, ecx
		mov	dword_5FCDA0, ecx
		push	offset g_src_path ; path
		mov	eax, g_src_base
		push	eax		; base
		call	Findsource
		add	esp, 8
		mov	dword_5FCD90, eax
		mov	eax, dword_5FCD90
		test	eax, eax
		jz	short loc_4CA306
		mov	edx, [eax+220h]
		cmp	edx, srccode.sorted.selected
		jle	short loc_4CA306
		mov	ecx, srccode.sorted.selected
		mov	g_line, ecx

loc_4CA306:				; CODE XREF: .text:004CA2EAj
					; .text:004CA2F8j
		mov	edx, g_line
		test	edx, edx
		jl	short loc_4CA332
		push	offset nextent	; nextent
		push	edi		; extent
		push	0		; fname
		push	0		; text
		push	0		; skipspaces
		push	edx		; line
		push	offset g_src_path ; path
		mov	eax, [eax]
		and	eax, 0FFFF0000h
		push	eax		; base
		call	Getsourceline
		add	esp, 20h

loc_4CA332:				; CODE XREF: .text:004CA30Ej
		cmp	nextent, 0
		jle	loc_4CA3FA
		xor	esi, esi
		jmp	loc_4CA3EE
; ---------------------------------------------------------------------------

loc_4CA346:				; CODE XREF: .text:004CA3F4j
		mov	dword_5FCDA0, 1
		push	0		; subaddr
		mov	eax, [edi]
		mov	edx, [eax+esi*8]
		push	edx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4CA37A
		mov	ecx, [eax+8]
		and	ecx, 41000h
		cmp	ecx, 1000h
		jz	short loc_4CA381

loc_4CA37A:				; CODE XREF: .text:004CA367j
		xor	eax, eax
		mov	dword_5FCDA0, eax

loc_4CA381:				; CODE XREF: .text:004CA378j
		mov	edx, [edi]
		mov	ecx, [edx+esi*8+4]
		inc	ecx
		push	ecx		; addr1
		mov	eax, [edi]
		mov	edx, [eax+esi*8]
		push	edx		; addr0
		push	offset stru_5D6528.sorted ; sd
		call	Findsortedindexrange
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jl	short loc_4CA3ED

loc_4CA3A2:				; CODE XREF: .text:004CA3EBj
		push	ebx		; index
		push	offset stru_5D6528.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4CA3ED
		mov	edx, [edi]
		mov	ecx, [edx+esi*8+4]
		cmp	ecx, [eax]
		jb	short loc_4CA3ED
		mov	edx, [eax+8]
		test	dh, 10h
		jz	short loc_4CA3EA
		test	edx, 20000h
		jz	short loc_4CA3DA
		mov	dword_5FCDAC, 1
		jmp	short loc_4CA3E4
; ---------------------------------------------------------------------------

loc_4CA3DA:				; CODE XREF: .text:004CA3CCj
		mov	dword_5FCDA8, 1

loc_4CA3E4:				; CODE XREF: .text:004CA3D8j
		inc	dword_5FCDA4

loc_4CA3EA:				; CODE XREF: .text:004CA3C4j
		inc	ebx
		jmp	short loc_4CA3A2
; ---------------------------------------------------------------------------

loc_4CA3ED:				; CODE XREF: .text:004CA3A0j
					; .text:004CA3B2j ...
		inc	esi

loc_4CA3EE:				; CODE XREF: .text:004CA341j
		cmp	esi, nextent
		jl	loc_4CA346

loc_4CA3FA:				; CODE XREF: .text:004CA339j
		mov	eax, 1
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; MENUFUNC loc_4CA404
loc_4CA404:				; DATA XREF: .text:004CADCFo
					; .data:stru_560730o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		cmp	dword_5FCD90, 0
		jz	short loc_4CA41C
		cmp	nextent, 0
		jg	short loc_4CA420

loc_4CA41C:				; CODE XREF: .text:004CA411j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CA420:				; CODE XREF: .text:004CA41Aj
		test	eax, eax
		jnz	short loc_4CA42B
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CA42B:				; CODE XREF: .text:004CA422j
		dec	eax
		jnz	short loc_4CA457
		mov	eax, extent
		mov	edx, extent
		push	0Dh		; mode
		push	0		; stackaddr
		mov	edx, [edx]
		mov	ecx, [eax+4]
		sub	ecx, edx
		inc	ecx
		push	ecx		; selsize
		push	0		; dumpaddr
		push	edx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CA457:				; CODE XREF: .text:004CA42Cj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4CA45C:				; DATA XREF: .data:stru_560730o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF8h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+14h]
		mov	esi, [ebp+10h]
		cmp	nextent, 0
		jnz	short loc_4CA47E
		xor	eax, eax
		jmp	loc_4CA67A
; ---------------------------------------------------------------------------

loc_4CA47E:				; CODE XREF: .text:004CA475j
		test	eax, eax
		jnz	short loc_4CA4B5
		test	esi, esi
		jnz	short loc_4CA496
		cmp	dword_5FCDA0, 0
		jz	short loc_4CA496
		xor	eax, eax
		jmp	loc_4CA67A
; ---------------------------------------------------------------------------

loc_4CA496:				; CODE XREF: .text:004CA484j
					; .text:004CA48Dj
		cmp	esi, 3
		jnz	short loc_4CA4AB
		cmp	dword_5FCDA4, 0
		jnz	short loc_4CA4AB
		xor	eax, eax
		jmp	loc_4CA67A
; ---------------------------------------------------------------------------

loc_4CA4AB:				; CODE XREF: .text:004CA499j
					; .text:004CA4A2j
		mov	eax, 1
		jmp	loc_4CA67A
; ---------------------------------------------------------------------------

loc_4CA4B5:				; CODE XREF: .text:004CA480j
		dec	eax
		jnz	loc_4CA678
		cmp	esi, 3
		jz	short loc_4CA4E8
		xor	ebx, ebx
		jmp	short loc_4CA4E0
; ---------------------------------------------------------------------------

loc_4CA4C5:				; CODE XREF: .text:004CA4E6j
		mov	eax, extent
		mov	edx, [eax+ebx*8]
		push	edx		; _addr
		call	Confirmint3breakpoint
		pop	ecx
		test	eax, eax
		jz	short loc_4CA4DF
		xor	eax, eax
		jmp	loc_4CA67A
; ---------------------------------------------------------------------------

loc_4CA4DF:				; CODE XREF: .text:004CA4D6j
		inc	ebx

loc_4CA4E0:				; CODE XREF: .text:004CA4C3j
		cmp	ebx, nextent
		jl	short loc_4CA4C5

loc_4CA4E8:				; CODE XREF: .text:004CA4BFj
		test	esi, esi
		jnz	short loc_4CA543
		xor	ebx, ebx
		jmp	short loc_4CA536
; ---------------------------------------------------------------------------

loc_4CA4F0:				; CODE XREF: .text:004CA53Cj
		push	offset word_560868 ; exprtype
		push	offset word_560868 ; expression
		push	offset word_560868 ; condition
		push	0		; actions
		push	0		; count
		mov	eax, extent
		push	0		; limit
		push	0		; fnindex
		push	3001000h	; type
		mov	edx, [eax+ebx*8]
		push	edx		; _addr
		call	Setint3breakpoint
		add	esp, 24h
		mov	esi, eax
		test	esi, esi
		jz	short loc_4CA535
		push	offset aUnableToSetB_5 ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4CA535:				; CODE XREF: .text:004CA521j
		inc	ebx

loc_4CA536:				; CODE XREF: .text:004CA4EEj
		cmp	ebx, nextent
		jl	short loc_4CA4F0
		jmp	loc_4CA671
; ---------------------------------------------------------------------------

loc_4CA543:				; CODE XREF: .text:004CA4EAj
		cmp	esi, 3
		jnz	short loc_4CA5A0
		xor	ebx, ebx
		jmp	short loc_4CA593
; ---------------------------------------------------------------------------

loc_4CA54C:				; CODE XREF: .text:004CA599j
		mov	eax, extent
		mov	esi, [eax+ebx*8]
		mov	eax, extent
		mov	edi, [eax+ebx*8+4]
		inc	edi
		cmp	edi, esi
		jbe	short loc_4CA592

loc_4CA562:				; CODE XREF: .text:004CA590j
		push	edi		; addr1
		push	esi		; addr0
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddatarange
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4CA592
		mov	edx, [eax]
		mov	esi, edx
		inc	esi
		test	byte ptr [eax+9], 10h
		jz	short loc_4CA58E
		push	1000h		; type
		push	edx		; _addr
		call	Removeint3breakpoint
		add	esp, 8

loc_4CA58E:				; CODE XREF: .text:004CA57Ej
		cmp	edi, esi
		ja	short loc_4CA562

loc_4CA592:				; CODE XREF: .text:004CA560j
					; .text:004CA573j
		inc	ebx

loc_4CA593:				; CODE XREF: .text:004CA54Aj
		cmp	ebx, nextent
		jl	short loc_4CA54C
		jmp	loc_4CA671
; ---------------------------------------------------------------------------

loc_4CA5A0:				; CODE XREF: .text:004CA546j
		lea	eax, [ebp-8]
		push	eax		; coord
		push	2		; column
		push	offset srccode	; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4CA5C0
		or	edx, 0FFFFFFFFh
		mov	[ebp-4], edx
		mov	[ebp-8], edx

loc_4CA5C0:				; CODE XREF: .text:004CA5B5j
		xor	ebx, ebx
		lea	edx, [ebp-208h]
		mov	eax, extent
		jmp	short loc_4CA5DA
; ---------------------------------------------------------------------------

loc_4CA5CF:				; CODE XREF: .text:004CA5E8j
		mov	ecx, [eax]
		inc	ebx
		mov	[edx], ecx
		add	edx, 4
		add	eax, 8

loc_4CA5DA:				; CODE XREF: .text:004CA5CDj
		cmp	ebx, nextent
		jge	short loc_4CA5EA
		cmp	ebx, 80h
		jl	short loc_4CA5CF

loc_4CA5EA:				; CODE XREF: .text:004CA5E0j
		cmp	esi, 1
		jnz	short loc_4CA621
		mov	edx, [ebp+8]
		mov	eax, [edx+234h]
		push	eax		; fi
		lea	eax, [ebp-208h]	; int
		mov	edx, [ebp-4]
		push	edx		; y
		mov	ecx, [ebp-8]
		push	ecx		; x
		push	0		; _title
		push	ebx		; naddr
		push	eax		; _addr
		mov	edx, [ebp+8]	; int
		mov	ecx, [edx+22Ch]	; int
		push	ecx		; hparent
		call	Condbreakpoint
		add	esp, 1Ch
		mov	esi, eax
		jmp	short loc_4CA653
; ---------------------------------------------------------------------------

loc_4CA621:				; CODE XREF: .text:004CA5EDj
		mov	eax, [ebp+8]
		mov	edx, [eax+234h]
		push	edx		; fi
		lea	edx, [ebp-208h]	; int
		mov	ecx, [ebp-4]
		push	ecx		; y
		mov	eax, [ebp-8]
		push	eax		; x
		push	0		; _title
		push	0		; fnindex
		push	ebx		; naddr
		push	edx		; _addr
		mov	ecx, [ebp+8]	; int
		mov	eax, [ecx+22Ch]	; int
		push	eax		; hparent
		call	Condlogbreakpoint
		add	esp, 20h
		mov	esi, eax

loc_4CA653:				; CODE XREF: .text:004CA61Fj
		test	esi, esi
		jge	short loc_4CA669
		push	offset aUnableToSetB_5 ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4CA669:				; CODE XREF: .text:004CA655j
		test	esi, esi
		jg	short loc_4CA671
		xor	eax, eax
		jmp	short loc_4CA67A
; ---------------------------------------------------------------------------

loc_4CA671:				; CODE XREF: .text:004CA53Ej
					; .text:004CA59Bj ...
		mov	eax, 1
		jmp	short loc_4CA67A
; ---------------------------------------------------------------------------

loc_4CA678:				; CODE XREF: .text:004CA4B6j
		xor	eax, eax

loc_4CA67A:				; CODE XREF: .text:004CA479j
					; .text:004CA491j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4CA684:				; DATA XREF: .data:stru_560730o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+14h]
		mov	edi, [ebp+10h]
		cmp	dword_5FCDA4, 0
		jnz	short loc_4CA6A0
		xor	eax, eax
		jmp	loc_4CA747
; ---------------------------------------------------------------------------

loc_4CA6A0:				; CODE XREF: .text:004CA697j
		test	eax, eax
		jnz	short loc_4CA6D1
		test	edi, edi
		jnz	short loc_4CA6B8
		cmp	dword_5FCDA8, 0
		jnz	short loc_4CA6B8
		xor	eax, eax
		jmp	loc_4CA747
; ---------------------------------------------------------------------------

loc_4CA6B8:				; CODE XREF: .text:004CA6A6j
					; .text:004CA6AFj
		cmp	edi, 1
		jnz	short loc_4CA6CA
		cmp	dword_5FCDAC, 0
		jnz	short loc_4CA6CA
		xor	eax, eax
		jmp	short loc_4CA747
; ---------------------------------------------------------------------------

loc_4CA6CA:				; CODE XREF: .text:004CA6BBj
					; .text:004CA6C4j
		mov	eax, 1
		jmp	short loc_4CA747
; ---------------------------------------------------------------------------

loc_4CA6D1:				; CODE XREF: .text:004CA6A2j
		dec	eax
		jnz	short loc_4CA745
		xor	esi, esi
		jmp	short loc_4CA736
; ---------------------------------------------------------------------------

loc_4CA6D8:				; CODE XREF: .text:004CA73Cj
		mov	eax, extent
		mov	ecx, extent
		mov	edx, [eax+esi*8+4]
		inc	edx
		push	edx		; addr1
		mov	eax, [ecx+esi*8]
		push	eax		; addr0
		push	offset stru_5D6528.sorted ; sd
		call	Findsortedindexrange
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jl	short loc_4CA735

loc_4CA700:				; CODE XREF: .text:004CA733j
		push	ebx		; index
		push	offset stru_5D6528.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4CA735
		mov	edx, extent
		mov	ecx, [edx+esi*8+4]
		cmp	ecx, [eax]
		jb	short loc_4CA735
		test	byte ptr [eax+9], 10h
		jz	short loc_4CA732
		push	edi		; enable
		mov	eax, [eax]
		push	eax		; _addr
		call	Enableint3breakpoint
		add	esp, 8

loc_4CA732:				; CODE XREF: .text:004CA724j
		inc	ebx
		jmp	short loc_4CA700
; ---------------------------------------------------------------------------

loc_4CA735:				; CODE XREF: .text:004CA6FEj
					; .text:004CA710j ...
		inc	esi

loc_4CA736:				; CODE XREF: .text:004CA6D6j
		cmp	esi, nextent
		jl	short loc_4CA6D8
		mov	eax, 1
		jmp	short loc_4CA747
; ---------------------------------------------------------------------------

loc_4CA745:				; CODE XREF: .text:004CA6D2j
		xor	eax, eax

loc_4CA747:				; CODE XREF: .text:004CA69Bj
					; .text:004CA6B3j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; MENUFUNC loc_4CA74C
loc_4CA74C:				; DATA XREF: .text:004CB52Fo
					; .data:stru_560730o
		push	ebp
		mov	ebp, esp
		push	ebx		; arglist
		mov	ebx, [ebp+14h]
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_4CA75F
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CA75F:				; CODE XREF: .text:004CA758j
		mov	edx, [eax+68h]
		push	edx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jz	short loc_4CA779
		test	byte ptr [eax+0Ah], 1
		jz	short loc_4CA77E

loc_4CA779:				; CODE XREF: .text:004CA771j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CA77E:				; CODE XREF: .text:004CA777j
		test	ebx, ebx
		jnz	short loc_4CA78A
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CA78A:				; CODE XREF: .text:004CA780j
		dec	ebx
		jnz	short loc_4CA7C9
		push	0FFFFFFFFh	; line
		lea	edx, [eax+0Ch]
		push	edx		; path
		mov	ecx, [eax]
		and	ecx, 0FFFF0000h
		push	ecx		; base
		call	Showsourcecode
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4CA7B2
		push	1
		call	loc_4CB1B8
		pop	ecx
		jmp	short loc_4CA7C4
; ---------------------------------------------------------------------------

loc_4CA7B2:				; CODE XREF: .text:004CA7A6j
		push	offset aUnableToShow_0 ; "Unable to show source"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4CA7C4:				; CODE XREF: .text:004CA7B0j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4CA7C9:				; CODE XREF: .text:004CA78Bj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
		