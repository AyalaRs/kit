.code

; int __usercall loc_45C684@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int)
loc_45C684:				; CODE XREF: .text:00460EA8p
					; .text:0046163Bp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE4h
		push	ebx
		push	esi		; arglist
		lea	ebx, [ebp-1Ch]
		call	GetTickCount
		sub	eax, dword_5E5FAC
		cmp	eax, 14h
		jb	short loc_45C718
		mov	ecx, promille
		mov	eax, dword_5E5FA8
		push	offset word_5E5DA4 ; arglist
		sub	eax, ecx
		push	offset aS_10	; "%s"
		mov	esi, 3E8h
		imul	dword ptr [ebp+8]
		cdq
		idiv	esi
		add	eax, ecx
		push	eax		; promille
		call	Progress
		add	esp, 0Ch
		push	180h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	eax, hwollymain
		push	eax		; hWnd
		call	RedrawWindow
		call	GetTickCount
		mov	dword_5E5FAC, eax
		jmp	short loc_45C718
; ---------------------------------------------------------------------------

loc_45C6EC:				; CODE XREF: .text:0045C733j
		mov	eax, [ebx+8]
		cmp	eax, 20h
		jz	short loc_45C6F9
		cmp	eax, 1Bh
		jnz	short loc_45C718

loc_45C6F9:				; CODE XREF: .text:0045C6F2j
		push	offset aAnalysisInterr ; "  Analysis interrupted"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		mov	eax, 1
		jmp	short loc_45C737
; ---------------------------------------------------------------------------

loc_45C718:				; CODE XREF: .text:0045C69Dj
					; .text:0045C6EAj ...
		push	1		; wRemoveMsg
		push	100h		; wMsgFilterMax
		push	100h		; wMsgFilterMin
		mov	edx, hwollymain
		push	edx		; hWnd
		push	ebx		; lpMsg
		call	PeekMessageW
		test	eax, eax
		jnz	short loc_45C6EC
		xor	eax, eax

loc_45C737:				; CODE XREF: .text:0045C716j
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_45C740:				; CODE XREF: .text:0045C928p
					; .text:0045CADEp ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	ecx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	esi, offset s
		lea	eax, [ecx+edx]
		cmp	eax, _size
		jbe	short loc_45C765
		or	eax, 0FFFFFFFFh
		jmp	loc_45C8DB
; ---------------------------------------------------------------------------

loc_45C765:				; CODE XREF: .text:0045C75Bj
		xor	eax, eax
		mov	[ebp-4], eax
		xor	eax, eax
		cmp	ecx, eax
		jbe	short loc_45C79D

loc_45C770:				; CODE XREF: .text:0045C79Bj
		lea	ebx, [eax+edx]
		mov	edi, [esi]
		cmp	byte ptr [edi+ebx], 1Ch
		jz	short loc_45C79D
		lea	ebx, [eax+edx]
		mov	edi, [esi]
		cmp	byte ptr [edi+ebx], 1
		jz	short loc_45C79D
		lea	ebx, [eax+edx]
		mov	edi, [esi]
		cmp	byte ptr [edi+ebx], 10h
		jnz	short loc_45C798
		mov	dword ptr [ebp-4], 1

loc_45C798:				; CODE XREF: .text:0045C78Fj
		inc	eax
		cmp	ecx, eax
		ja	short loc_45C770

loc_45C79D:				; CODE XREF: .text:0045C76Ej
					; .text:0045C779j ...
		cmp	ecx, eax
		jbe	short loc_45C7AB
		mov	eax, 1
		jmp	loc_45C8DB
; ---------------------------------------------------------------------------

loc_45C7AB:				; CODE XREF: .text:0045C79Fj
		cmp	dword ptr [ebp+8], 1Ch
		jnz	short loc_45C81B
		mov	eax, [esi]
		cmp	byte ptr [eax+edx], 2
		jnz	short loc_45C7DC
		mov	eax, edx
		dec	eax
		mov	ebx, [esi]
		add	ebx, eax
		jmp	short loc_45C7C4
; ---------------------------------------------------------------------------

loc_45C7C2:				; CODE XREF: .text:0045C7CBj
		dec	eax
		dec	ebx

loc_45C7C4:				; CODE XREF: .text:0045C7C0j
		test	eax, eax
		jbe	short loc_45C7CD
		cmp	byte ptr [ebx],	2
		jz	short loc_45C7C2

loc_45C7CD:				; CODE XREF: .text:0045C7C6j
		cmp	edx, eax
		jbe	short loc_45C7DC

loc_45C7D1:				; CODE XREF: .text:0045C7DAj
		mov	ebx, [esi]
		mov	byte ptr [ebx+eax], 0
		inc	eax
		cmp	edx, eax
		ja	short loc_45C7D1

loc_45C7DC:				; CODE XREF: .text:0045C7B7j
					; .text:0045C7CFj
		mov	eax, [esi]
		mov	byte ptr [eax+edx], 1Ch
		mov	eax, 1
		cmp	ecx, eax
		jbe	short loc_45C801

loc_45C7EB:				; CODE XREF: .text:0045C7F7j
		lea	ebx, [eax+edx]
		mov	edi, [esi]
		mov	byte ptr [edi+ebx], 1
		inc	eax
		cmp	ecx, eax
		ja	short loc_45C7EB
		jmp	short loc_45C801
; ---------------------------------------------------------------------------

loc_45C7FB:				; CODE XREF: .text:0045C812j
		mov	ebx, [esi]
		mov	byte ptr [ebx+ecx], 0

loc_45C801:				; CODE XREF: .text:0045C7E9j
					; .text:0045C7F9j
		lea	ecx, [eax+edx]
		cmp	ecx, _size
		jnb	short loc_45C814
		mov	ebx, [esi]
		cmp	byte ptr [ebx+ecx], 2
		jz	short loc_45C7FB

loc_45C814:				; CODE XREF: .text:0045C80Aj
		xor	eax, eax
		jmp	loc_45C8DB
; ---------------------------------------------------------------------------

loc_45C81B:				; CODE XREF: .text:0045C7AFj
		mov	eax, [esi]
		cmp	byte ptr [eax+edx], 2
		jnz	short loc_45C82A
		xor	eax, eax
		jmp	loc_45C8DB
; ---------------------------------------------------------------------------

loc_45C82A:				; CODE XREF: .text:0045C821j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_45C837
		xor	eax, eax
		jmp	loc_45C8DB
; ---------------------------------------------------------------------------

loc_45C837:				; CODE XREF: .text:0045C82Ej
		mov	eax, 1
		cmp	ecx, eax
		jbe	short loc_45C850

loc_45C840:				; CODE XREF: .text:0045C84Ej
		lea	ebx, [eax+edx]
		mov	edi, [esi]
		cmp	byte ptr [edi+ebx], 2
		jnz	short loc_45C850
		inc	eax
		cmp	ecx, eax
		ja	short loc_45C840

loc_45C850:				; CODE XREF: .text:0045C83Ej
					; .text:0045C849j
		cmp	ecx, eax
		ja	short loc_45C866
		cmp	ecx, eax
		jnz	short loc_45C860
		mov	eax, [esi]
		cmp	byte ptr [eax+edx], 0
		jz	short loc_45C866

loc_45C860:				; CODE XREF: .text:0045C856j
		cmp	dword ptr [ebp+8], 0Dh
		jnz	short loc_45C8D9

loc_45C866:				; CODE XREF: .text:0045C852j
					; .text:0045C85Ej
		xor	eax, eax
		cmp	ecx, eax
		jbe	short loc_45C8C2

loc_45C86C:				; CODE XREF: .text:0045C8B7j
		test	al, 0Fh
		jz	short loc_45C87B
		lea	ebx, [eax+edx]
		mov	edi, [esi]
		mov	byte ptr [edi+ebx], 2
		jmp	short loc_45C8B4
; ---------------------------------------------------------------------------

loc_45C87B:				; CODE XREF: .text:0045C86Ej
		test	eax, eax
		jbe	short loc_45C890
		cmp	dword ptr [ebp+8], 9
		jnz	short loc_45C890
		lea	ebx, [eax+edx]
		mov	edi, [esi]
		mov	byte ptr [edi+ebx], 0Ah
		jmp	short loc_45C8B4
; ---------------------------------------------------------------------------

loc_45C890:				; CODE XREF: .text:0045C87Dj
					; .text:0045C883j
		test	eax, eax
		jbe	short loc_45C8A5
		cmp	dword ptr [ebp+8], 0Bh
		jnz	short loc_45C8A5
		lea	ebx, [eax+edx]
		mov	edi, [esi]
		mov	byte ptr [edi+ebx], 0Ch
		jmp	short loc_45C8B4
; ---------------------------------------------------------------------------

loc_45C8A5:				; CODE XREF: .text:0045C892j
					; .text:0045C898j
		lea	ebx, [eax+edx]
		mov	edi, [esi]
		lea	ebx, [edi+ebx]
		push	ebx
		mov	bl, [ebp+8]
		pop	edi
		mov	[edi], bl

loc_45C8B4:				; CODE XREF: .text:0045C879j
					; .text:0045C88Ej ...
		inc	eax
		cmp	ecx, eax
		ja	short loc_45C86C
		jmp	short loc_45C8C2
; ---------------------------------------------------------------------------

loc_45C8BB:				; CODE XREF: .text:0045C8D3j
		mov	ebx, [esi]
		inc	eax
		mov	byte ptr [ebx+ecx], 0

loc_45C8C2:				; CODE XREF: .text:0045C86Aj
					; .text:0045C8B9j
		lea	ecx, [eax+edx]
		cmp	ecx, _size
		jnb	short loc_45C8D5
		mov	ebx, [esi]
		cmp	byte ptr [ebx+ecx], 2
		jz	short loc_45C8BB

loc_45C8D5:				; CODE XREF: .text:0045C8CBj
		xor	eax, eax
		jmp	short loc_45C8DB
; ---------------------------------------------------------------------------

loc_45C8D9:				; CODE XREF: .text:0045C864j
		xor	eax, eax

loc_45C8DB:				; CODE XREF: .text:0045C760j
					; .text:0045C7A6j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_45C8E4:				; CODE XREF: .text:0045DD87p
					; .text:0045DE22p
		push	ebp
		mov	ebp, esp
		push	ebx
		xor	ebx, ebx
		mov	eax, [ebp+8]
		jmp	short loc_45C8FC
; ---------------------------------------------------------------------------

loc_45C8EF:				; CODE XREF: .text:0045C906j
		mov	ecx, copy
		cmp	byte ptr [ecx+edx], 0
		jz	short loc_45C908
		inc	ebx

loc_45C8FC:				; CODE XREF: .text:0045C8EDj
		mov	edx, ebx
		add	edx, eax
		cmp	edx, _size
		jb	short loc_45C8EF

loc_45C908:				; CODE XREF: .text:0045C8F9j
		mov	edx, ebx
		add	edx, eax
		cmp	edx, _size
		jnb	short loc_45C91C
		cmp	ebx, 104h
		jl	short loc_45C921

loc_45C91C:				; CODE XREF: .text:0045C912j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45C921:				; CODE XREF: .text:0045C91Aj
		lea	ecx, [ebx+1]
		push	ecx
		push	eax
		push	9
		call	loc_45C740
		add	esp, 0Ch
		mov	eax, ebx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_45C938(wchar_t *s1, int, int,	int, int)
loc_45C938:				; CODE XREF: .text:0045D8E0p
					; .text:0045DA81p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFCD4h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+0Ch]
		cmp	eax, addr1
		jb	short loc_45C956
		xor	eax, eax
		jmp	loc_45CBFE
; ---------------------------------------------------------------------------

loc_45C956:				; CODE XREF: .text:0045C94Dj
		push	0		; size
		mov	edx, [ebp+8]
		push	edx		; _name
		call	Getstructureitemcount
		add	esp, 8
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_45C974
		xor	eax, eax
		jmp	loc_45CBFE
; ---------------------------------------------------------------------------

loc_45C974:				; CODE XREF: .text:0045C96Bj
		push	3		; flags
		mov	edx, [ebp-8]
		mov	ecx, edx	; int
		shl	edx, 4
		add	edx, ecx
		lea	edx, [ecx+edx*4]
		shl	edx, 4		; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_45C99F
		xor	eax, eax
		jmp	loc_45CBFE
; ---------------------------------------------------------------------------

loc_45C99F:				; CODE XREF: .text:0045C996j
		mov	edx, [ebp-8]
		push	edx		; nstr
		mov	ecx, [ebp-0Ch]
		push	ecx		; str
		push	0		; item0
		push	0		; _addr
		mov	eax, [ebp+8]
		push	eax		; _name
		call	Decodestructure
		mov	[ebp-8], eax
		xor	edx, edx
		mov	[ebp-4], edx
		add	esp, 14h
		mov	eax, [ebp-4]
		mov	ebx, [ebp-0Ch]
		cmp	eax, [ebp-8]
		jge	loc_45CB2A

loc_45C9CE:				; CODE XREF: .text:0045CB24j
		mov	edx, [ebx+4]
		add	edx, [ebx]
		cmp	edx, [ebp+10h]
		ja	loc_45CB2A
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_45C9EB
		mov	ecx, [ebp+14h]
		cmp	word ptr [ecx],	0
		jnz	short loc_45C9EF

loc_45C9EB:				; CODE XREF: .text:0045C9E0j
		xor	esi, esi
		jmp	short loc_45CA29
; ---------------------------------------------------------------------------

loc_45C9EF:				; CODE XREF: .text:0045C9E9j
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_45CA16
		push	100h		; nt
		lea	eax, [ebp-12Ch]
		push	eax		; t
		push	100h		; nw
		mov	edx, [ebp+14h]
		push	edx		; w
		call	Unicodetoutf
		add	esp, 10h
		mov	esi, eax
		jmp	short loc_45CA29
; ---------------------------------------------------------------------------

loc_45CA16:				; CODE XREF: .text:0045C9F3j
		mov	al, 20h
		mov	esi, 2
		mov	[ebp-12Bh], al
		mov	[ebp-12Ch], al

loc_45CA29:				; CODE XREF: .text:0045C9EDj
					; .text:0045CA14j
		mov	eax, 100h
		lea	edx, [ebp-12Ch]
		sub	eax, esi
		add	edx, esi
		push	eax		; nt
		push	edx		; t
		lea	ecx, [ebx+50h]
		push	100h		; nw
		push	ecx		; w
		call	Unicodetoutf
		xor	ecx, ecx
		add	esp, 10h
		mov	cl, [ebx+0Eh]
		add	esi, eax
		cmp	ecx, [ebx]
		jnb	short loc_45CA89
		mov	eax, [ebx]
		xor	edx, edx
		div	ecx
		mov	edi, eax
		cmp	edi, 0Ah
		jge	short loc_45CA6A
		mov	eax, (offset aAnalysingSPres+1)	; "ݠ㸚Ѵ֪Q׵ݠخ_ɤˑ__"...
		jmp	short loc_45CA6F
; ---------------------------------------------------------------------------

loc_45CA6A:				; CODE XREF: .text:0045CA61j
		mov	eax, offset unk_539FB3

loc_45CA6F:				; CODE XREF: .text:0045CA68j
		push	eax
		push	edi
		push	offset aIS_1	; "[%i%s]"
		lea	edx, [ebp-12Ch]
		add	edx, esi
		push	edx		; buffer
		call	_sprintf
		add	esp, 10h
		add	esi, eax

loc_45CA89:				; CODE XREF: .text:0045CA54j
		inc	esi
		lea	ecx, [ebp-12Ch]
		add	ecx, esi
		push	20h		; nt
		push	ecx		; t
		lea	eax, [ebx+10h]
		push	20h		; nw
		push	eax		; w
		call	Unicodetoutf
		add	esp, 10h
		inc	eax
		add	esi, eax
		push	esi		; datasize
		lea	edx, [ebp-12Ch]
		push	edx		; data
		push	34h		; type
		mov	ecx, [ebp+0Ch]
		add	ecx, [ebx+4]
		push	ecx		; _addr
		call	Quickinsertdata
		add	esp, 10h
		movzx	edi, byte ptr [ebx+0Dh]
		cmp	edi, 9
		jz	short loc_45CACD
		cmp	edi, 0Bh
		jnz	short loc_45CAE8

loc_45CACD:				; CODE XREF: .text:0045CAC6j
		mov	eax, [ebx]
		push	eax
		mov	edx, [ebp+0Ch]
		sub	edx, addr0
		add	edx, [ebx+4]
		push	edx
		push	edi
		call	loc_45C740
		add	esp, 0Ch
		jmp	short loc_45CB15
; ---------------------------------------------------------------------------

loc_45CAE8:				; CODE XREF: .text:0045CACBj
		xor	esi, esi
		jmp	short loc_45CB11
; ---------------------------------------------------------------------------

loc_45CAEC:				; CODE XREF: .text:0045CB13j
		xor	eax, eax
		mov	al, [ebx+0Eh]
		push	eax
		mov	edx, [ebp+0Ch]
		sub	edx, addr0
		add	edx, [ebx+4]
		add	edx, esi
		push	edx
		push	edi
		call	loc_45C740
		add	esp, 0Ch
		xor	ecx, ecx
		mov	cl, [ebx+0Eh]
		add	esi, ecx

loc_45CB11:				; CODE XREF: .text:0045CAEAj
		cmp	esi, [ebx]
		jb	short loc_45CAEC

loc_45CB15:				; CODE XREF: .text:0045CAE6j
		inc	dword ptr [ebp-4]
		add	ebx, 450h
		mov	eax, [ebp-4]
		cmp	eax, [ebp-8]
		jl	loc_45C9CE

loc_45CB2A:				; CODE XREF: .text:0045C9C8j
					; .text:0045C9D6j
		cmp	dword ptr [ebp-8], 1
		jle	short loc_45CB9C
		mov	edx, [ebp+0Ch]
		sub	edx, addr0
		mov	ecx, s
		or	byte ptr [ecx+edx], 20h
		mov	esi, 1
		mov	eax, [ebp-8]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*4]
		add	eax, eax
		mov	ecx, [ebp-0Ch]
		lea	eax, [ecx+eax*8-44Ch]
		jmp	short loc_45CB79
; ---------------------------------------------------------------------------

loc_45CB63:				; CODE XREF: .text:0045CB80j
		mov	edx, [ebp+0Ch]
		sub	edx, addr0
		add	edx, esi
		mov	ecx, s
		or	byte ptr [ecx+edx], 60h
		inc	esi

loc_45CB79:				; CODE XREF: .text:0045CB61j
		cmp	esi, [eax]
		jnb	short loc_45CB82
		cmp	esi, [ebp+10h]
		jb	short loc_45CB63

loc_45CB82:				; CODE XREF: .text:0045CB7Bj
		cmp	esi, [ebp+10h]
		jnb	short loc_45CB9C
		mov	eax, [ebp+0Ch]
		sub	eax, addr0
		add	esi, eax
		mov	edx, s
		or	byte ptr [edx+esi], 40h

loc_45CB9C:				; CODE XREF: .text:0045CB2Ej
					; .text:0045CB85j
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_45CBCF
		mov	ecx, [ebp+8]
		lea	eax, [ebp-32Ch]
		push	ecx
		push	offset aStructS	; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-32Ch]
		push	edx		; s
		push	2Bh		; type
		mov	ecx, [ebp+0Ch]
		push	ecx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_45CBCF:				; CODE XREF: .text:0045CBA0j
		mov	eax, [ebp-8]
		mov	ecx, [ebp-0Ch]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		lea	eax, [edx+eax*4]
		mov	edx, [ebp-0Ch]
		add	eax, eax
		mov	esi, [ecx+eax*8-44Ch]
		add	esi, [edx+eax*8-450h]
		mov	eax, [ebp-0Ch]
		push	eax		; data
		call	Memfree
		pop	ecx
		mov	eax, esi

loc_45CBFE:				; CODE XREF: .text:0045C951j
					; .text:0045C96Fj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_45CC08:				; CODE XREF: .text:0045E59Bp
					; .text:0045E760p ...
		push	ebp
		mov	ebp, esp
		mov	ecx, offset _size
		push	ebx
		mov	eax, [ebp+8]
		mov	edx, [ebp+0Ch]
		cmp	eax, [ecx]
		jnb	short loc_45CC4C
		cmp	edx, eax
		jbe	short loc_45CC4C
		mov	ebx, s
		or	byte ptr [ebx+eax], 20h
		inc	eax
		jmp	short loc_45CC37
; ---------------------------------------------------------------------------

loc_45CC2C:				; CODE XREF: .text:0045CC3Dj
		mov	ebx, s
		or	byte ptr [ebx+eax], 60h
		inc	eax

loc_45CC37:				; CODE XREF: .text:0045CC2Aj
		cmp	edx, eax
		jbe	short loc_45CC3F
		cmp	eax, [ecx]
		jb	short loc_45CC2C

loc_45CC3F:				; CODE XREF: .text:0045CC39j
		cmp	edx, [ecx]
		jnb	short loc_45CC4C
		mov	eax, s
		or	byte ptr [eax+edx], 40h

loc_45CC4C:				; CODE XREF: .text:0045CC19j
					; .text:0045CC1Dj ...
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_45CC50:				; CODE XREF: .text:0046148Dp
					; .text:004633ADp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ecx, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	edx, edx
		jz	short loc_45CC6E
		test	esi, esi
		jz	short loc_45CC6E
		cmp	esi, eax
		ja	short loc_45CC75

loc_45CC6E:				; CODE XREF: .text:0045CC64j
					; .text:0045CC68j
		xor	eax, eax
		jmp	loc_45CED8
; ---------------------------------------------------------------------------

loc_45CC75:				; CODE XREF: .text:0045CC6Cj
		mov	ebx, ecx
		sub	ebx, eax
		dec	ecx
		and	ebx, ecx
		mov	ecx, ebx
		test	ecx, ecx
		jnz	short loc_45CC89
		xor	eax, eax
		jmp	loc_45CED8
; ---------------------------------------------------------------------------

loc_45CC89:				; CODE XREF: .text:0045CC80j
		mov	bl, [edx+eax]
		cmp	bl, 90h
		jz	short loc_45CC96
		cmp	bl, 0CCh
		jnz	short loc_45CCA0

loc_45CC96:				; CODE XREF: .text:0045CC8Fj
		mov	eax, 1
		jmp	loc_45CED8
; ---------------------------------------------------------------------------

loc_45CCA0:				; CODE XREF: .text:0045CC94j
		lea	ebx, [eax+1]
		cmp	esi, ebx
		jbe	short loc_45CCBE
		cmp	byte ptr [edx+eax], 66h
		jnz	short loc_45CCBE
		cmp	byte ptr [edx+eax+1], 90h
		jnz	short loc_45CCBE
		mov	eax, 2
		jmp	loc_45CED8
; ---------------------------------------------------------------------------

loc_45CCBE:				; CODE XREF: .text:0045CCA5j
					; .text:0045CCABj ...
		lea	ebx, [eax+1]
		cmp	esi, ebx
		jbe	short loc_45CD1D
		cmp	ecx, 2
		jb	short loc_45CD1D
		xor	ebx, ebx
		mov	bl, [edx+eax]
		mov	edi, ebx
		and	edi, 0FEh
		cmp	edi, 86h
		jz	short loc_45CCED
		and	ebx, 0FCh
		cmp	ebx, 88h
		jnz	short loc_45CD1D

loc_45CCED:				; CODE XREF: .text:0045CCDDj
		xor	ebx, ebx
		mov	bl, [edx+eax+1]
		and	ebx, 0C0h
		cmp	ebx, 0C0h
		jnz	short loc_45CD1D
		xor	ebx, ebx
		mov	bl, [edx+eax+1]
		sar	ebx, 3
		xor	bl, [edx+eax+1]
		test	bl, 7
		jnz	short loc_45CD1D
		mov	eax, 2
		jmp	loc_45CED8
; ---------------------------------------------------------------------------

loc_45CD1D:				; CODE XREF: .text:0045CCC3j
					; .text:0045CCC8j ...
		cmp	byte ptr [edx+eax], 8Dh
		jnz	loc_45CEAA
		lea	ebx, [eax+1]
		cmp	esi, ebx
		jbe	short loc_45CD72
		cmp	ecx, 2
		jb	short loc_45CD72
		test	byte ptr [edx+eax+1], 0C0h
		jnz	short loc_45CD72
		xor	ebx, ebx
		mov	bl, [edx+eax+1]
		and	ebx, 7
		cmp	ebx, 4
		jz	short loc_45CD72
		xor	ebx, ebx
		mov	bl, [edx+eax+1]
		and	ebx, 7
		cmp	ebx, 5
		jz	short loc_45CD72
		xor	ebx, ebx
		mov	bl, [edx+eax+1]
		sar	ebx, 3
		xor	bl, [edx+eax+1]
		test	bl, 7
		jnz	short loc_45CD72
		mov	eax, 2
		jmp	loc_45CED8
; ---------------------------------------------------------------------------

loc_45CD72:				; CODE XREF: .text:0045CD2Cj
					; .text:0045CD31j ...
		lea	ebx, [eax+2]
		cmp	esi, ebx
		jbe	short loc_45CDC0
		cmp	ecx, 3
		jb	short loc_45CDC0
		xor	ebx, ebx
		mov	bl, [edx+eax+1]
		and	ebx, 0C0h
		cmp	ebx, 40h
		jnz	short loc_45CDC0
		cmp	byte ptr [edx+eax+2], 0
		jnz	short loc_45CDC0
		xor	ebx, ebx
		mov	bl, [edx+eax+1]
		and	ebx, 7
		cmp	ebx, 4
		jz	short loc_45CDC0
		xor	ebx, ebx
		mov	bl, [edx+eax+1]
		sar	ebx, 3
		xor	bl, [edx+eax+1]
		test	bl, 7
		jnz	short loc_45CDC0
		mov	eax, 3
		jmp	loc_45CED8
; ---------------------------------------------------------------------------

loc_45CDC0:				; CODE XREF: .text:0045CD77j
					; .text:0045CD7Cj ...
		lea	ebx, [eax+3]
		cmp	esi, ebx
		jbe	short loc_45CE0E
		cmp	ecx, 4
		jb	short loc_45CE0E
		cmp	byte ptr [edx+eax+3], 0
		jnz	short loc_45CE0E
		xor	ebx, ebx
		mov	bl, [edx+eax+1]
		and	ebx, 0C7h
		cmp	ebx, 44h
		jnz	short loc_45CE0E
		xor	ebx, ebx
		mov	bl, [edx+eax+2]
		and	ebx, 38h
		cmp	ebx, 20h
		jnz	short loc_45CE0E
		xor	ebx, ebx
		mov	bl, [edx+eax+1]
		sar	ebx, 3
		xor	bl, [edx+eax+2]
		test	bl, 7
		jnz	short loc_45CE0E
		mov	eax, 4
		jmp	loc_45CED8
; ---------------------------------------------------------------------------

loc_45CE0E:				; CODE XREF: .text:0045CDC5j
					; .text:0045CDCAj ...
		lea	ebx, [eax+5]
		cmp	esi, ebx
		jbe	short loc_45CE5C
		cmp	ecx, 6
		jb	short loc_45CE5C
		cmp	dword ptr [edx+eax+2], 0
		jnz	short loc_45CE5C
		xor	ebx, ebx
		mov	bl, [edx+eax+1]
		and	ebx, 0C0h
		cmp	ebx, 80h
		jnz	short loc_45CE5C
		xor	ebx, ebx
		mov	bl, [edx+eax+1]
		and	ebx, 7
		cmp	ebx, 4
		jz	short loc_45CE5C
		xor	ebx, ebx
		mov	bl, [edx+eax+1]
		sar	ebx, 3
		xor	bl, [edx+eax+1]
		test	bl, 7
		jnz	short loc_45CE5C
		mov	eax, 6
		jmp	short loc_45CED8
; ---------------------------------------------------------------------------

loc_45CE5C:				; CODE XREF: .text:0045CE13j
					; .text:0045CE18j ...
		lea	ebx, [eax+6]
		cmp	esi, ebx
		jbe	short loc_45CEAA
		cmp	ecx, 7
		jb	short loc_45CEAA
		cmp	dword ptr [edx+eax+3], 0
		jnz	short loc_45CEAA
		xor	ebx, ebx
		mov	bl, [edx+eax+1]
		and	ebx, 0C7h
		cmp	ebx, 84h
		jnz	short loc_45CEAA
		xor	ebx, ebx
		mov	bl, [edx+eax+2]
		and	ebx, 38h
		cmp	ebx, 20h
		jnz	short loc_45CEAA
		xor	ebx, ebx
		mov	bl, [edx+eax+1]
		sar	ebx, 3
		xor	bl, [edx+eax+2]
		test	bl, 7
		jnz	short loc_45CEAA
		mov	eax, 7
		jmp	short loc_45CED8
; ---------------------------------------------------------------------------

loc_45CEAA:				; CODE XREF: .text:0045CD21j
					; .text:0045CE61j ...
		lea	ebx, [eax+4]
		cmp	esi, ebx
		jbe	short loc_45CED6
		cmp	ecx, 5
		jb	short loc_45CED6
		mov	cl, [edx+eax]
		cmp	cl, 5
		jz	short loc_45CEC8
		cmp	cl, 0Dh
		jz	short loc_45CEC8
		cmp	cl, 2Dh
		jnz	short loc_45CED6

loc_45CEC8:				; CODE XREF: .text:0045CEBCj
					; .text:0045CEC1j
		cmp	dword ptr [edx+eax+1], 0
		jnz	short loc_45CED6
		mov	eax, 5
		jmp	short loc_45CED8
; ---------------------------------------------------------------------------

loc_45CED6:				; CODE XREF: .text:0045CEAFj
					; .text:0045CEB4j ...
		xor	eax, eax

loc_45CED8:				; CODE XREF: .text:0045CC70j
					; .text:0045CC84j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_45CEE0:				; CODE XREF: .text:0046EC08p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBFCh
		push	ebx
		push	esi
		push	edi
		mov	edi, offset addr0
		mov	esi, [ebp+8]
		mov	eax, [esi]
		mov	[edi], eax
		mov	edx, [esi+4]
		mov	ecx, [ebp+10h]
		add	eax, edx
		mov	_size, edx
		mov	addr1, eax
		mov	word ptr [ecx],	0
		mov	eax, dword_5CBB98
		mov	edx, _size
		or	eax, dword_5CBBAC
		push	eax		; keephittrace
		push	edx		; size
		mov	ecx, [edi]
		push	ecx		; base
		call	Removeanalysis
		add	esp, 0Ch
		push	0
		mov	eax, [esi+4]
		push	eax
		mov	edx, [esi]
		push	edx
		lea	ecx, [esi+8F4h]
		push	ecx
		call	loc_471028
		add	esp, 10h
		push	0		; destfunc
		push	100h		; nexp
		push	38h		; itemsize
		lea	eax, [esi+920h]
		push	eax		; nd
		call	Createnesteddata
		add	esp, 10h
		push	0		; destfunc
		push	100h		; nexp
		push	10h		; itemsize
		lea	edx, [esi+938h]
		push	edx		; nd
		call	Createnesteddata
		add	esp, 10h
		push	12h		; itemsize
		lea	ecx, [esi+950h]
		push	ecx		; pdat
		call	Createsimpledata
		add	esp, 8
		push	2		; flags
		mov	eax, _size	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	copy, eax
		push	2		; flags
		mov	edx, _size	; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	s, eax
		push	2		; flags
		mov	ecx, _size	; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	dword_5E5D70, eax
		mov	eax, _size
		add	eax, eax	; int
		push	2		; flags
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	dword_5E5D74, eax
		mov	ebx, 8000h
		mov	dword_5E5D8C, ebx
		push	0		; flags
		shl	ebx, 2
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	dword_5E5D88, eax
		cmp	copy, 0
		jz	short loc_45D02A
		cmp	s, 0
		jz	short loc_45D02A
		cmp	dword_5E5D70, 0
		jz	short loc_45D02A
		cmp	dword_5E5D74, 0
		jz	short loc_45D02A
		cmp	dword_5E5D88, 0
		jnz	short loc_45D04F

loc_45D02A:				; CODE XREF: .text:0045D004j
					; .text:0045D00Dj ...
		push	offset aLowMemoryAnaly ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+10h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		or	eax, 0FFFFFFFFh
		jmp	loc_45D2EF
; ---------------------------------------------------------------------------

loc_45D04F:				; CODE XREF: .text:0045D028j
		xor	ebx, ebx
		jmp	short loc_45D080
; ---------------------------------------------------------------------------

loc_45D053:				; CODE XREF: .text:0045D087j
		sub	eax, ebx
		cmp	eax, 1000h
		jbe	short loc_45D061
		mov	eax, 1000h

loc_45D061:				; CODE XREF: .text:0045D05Aj
		push	5		; mode
		push	eax		; size
		mov	edx, [edi]
		mov	ecx, copy
		add	edx, ebx
		add	ecx, ebx
		push	edx		; _addr
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		add	ebx, 1000h

loc_45D080:				; CODE XREF: .text:0045D051j
		mov	eax, _size
		cmp	ebx, eax
		jb	short loc_45D053
		test	byte ptr [esi+0Bh], 4
		jnz	loc_45D216
		cmp	dword ptr [esi+45Ch], 0
		jnz	short loc_45D0D1
		cmp	dword_5BDD18, 0
		jz	short loc_45D0C2
		push	offset aModuleHasEmpty ; "  Module has empty code section"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_45D0C2:				; CODE XREF: .text:0045D0A3j
		mov	dword_5E5D78, 1
		jmp	loc_45D216
; ---------------------------------------------------------------------------

loc_45D0D1:				; CODE XREF: .text:0045D09Aj
		test	byte ptr [esi+0Ah], 4
		jnz	loc_45D216
		push	400h		; n
		push	0		; c
		lea	ecx, [ebp-404h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	ebx, [esi+458h]
		sub	ebx, [edi]
		mov	edx, [esi+45Ch]
		add	edx, ebx
		mov	eax, _size
		cmp	edx, eax
		jbe	short loc_45D10C
		mov	edx, eax

loc_45D10C:				; CODE XREF: .text:0045D108j
		mov	eax, copy
		add	eax, ebx
		cmp	edx, ebx
		jbe	short loc_45D128

loc_45D117:				; CODE XREF: .text:0045D126j
		xor	ecx, ecx
		inc	ebx
		mov	cl, [eax]
		inc	eax
		inc	dword ptr [ebp+ecx*4-404h]
		cmp	edx, ebx
		ja	short loc_45D117

loc_45D128:				; CODE XREF: .text:0045D115j
		mov	edx, [ebp-3C8h]
		mov	eax, [esi+45Ch]
		add	edx, [ebp-26Ch]
		sub	eax, [ebp-404h]
		add	edx, [ebp-1F8h]
		sub	eax, [ebp-1C4h]
		add	edx, [ebp-1E0h]
		sub	eax, [ebp-0D4h]
		add	edx, [ebp-1D8h]
		add	edx, [ebp-64h]
		add	edx, [ebp-8]
		cmp	eax, 2000h
		jl	loc_45D216
		push	eax		; nDenominator
		push	edx		; nNumerator
		push	3E8h		; nNumber
		call	MulDiv
		cmp	eax, 4Bh
		jge	loc_45D216
		cmp	dword_5CBBB4, 0
		jz	short loc_45D1AE
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_45D1AE
		or	dword ptr [esi+8], 20000h
		mov	dword_5E5D78, 1
		mov	eax, 1
		jmp	loc_45D2EF
; ---------------------------------------------------------------------------

loc_45D1AE:				; CODE XREF: .text:0045D18Bj
					; .text:0045D191j
		lea	edx, [esi+0Ch]
		push	edx		; arglist
		push	offset aQuickStatistic ; "Quick	statistical test of module '%s' r"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aCompressedCode ; "Compressed code?"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E674 ; cond
		call	Condyesno
		add	esp, 10h
		cmp	eax, 7
		jnz	short loc_45D216
		cmp	dword_5BDD18, 0
		jz	short loc_45D202
		push	offset aPackedOrEncryp ; "  Packed or encrypted	code, code is not"...
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+10h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_45D202:				; CODE XREF: .text:0045D1E3j
		mov	dword_5E5D78, 1
		mov	eax, 1
		jmp	loc_45D2EF
; ---------------------------------------------------------------------------

loc_45D216:				; CODE XREF: .text:0045D08Dj
					; .text:0045D0CCj ...
		mov	edx, [edi]
		push	edx		; _addr
		push	esi		; pmod
		call	Findfixup
		add	esp, 8
		test	eax, eax
		jz	short loc_45D28D
		jmp	short loc_45D27A
; ---------------------------------------------------------------------------

loc_45D228:				; CODE XREF: .text:0045D28Bj
		mov	ecx, [edi]
		cmp	edx, ecx
		jb	short loc_45D26D
		mov	ebx, edx
		sub	ebx, ecx
		mov	edx, dword_5E5D74
		or	word ptr [edx+ebx*2], 0Ch
		mov	ecx, dword_5E5D74
		or	word ptr [ecx+ebx*2+2],	4
		mov	edx, dword_5E5D74
		or	word ptr [edx+ebx*2+4],	4
		mov	ecx, dword_5E5D74
		or	word ptr [ecx+ebx*2+6],	4
		mov	edx, copy
		mov	ecx, [edx+ebx]
		mov	[ebp-4], ecx

loc_45D26D:				; CODE XREF: .text:0045D22Cj
		add	eax, 4
		mov	dword_5E5D7C, 1

loc_45D27A:				; CODE XREF: .text:0045D226j
		mov	edx, [eax]
		test	edx, edx
		jz	short loc_45D28D
		mov	ecx, edx
		add	ecx, 4
		cmp	ecx, addr1
		jbe	short loc_45D228

loc_45D28D:				; CODE XREF: .text:0045D224j
					; .text:0045D27Ej
		call	Mergequickdata
		mov	edx, [edi]
		mov	eax, [esi+460h]
		cmp	edx, eax
		ja	short loc_45D2B4
		cmp	eax, addr1
		jnb	short loc_45D2B4
		sub	eax, edx
		mov	ecx, dword_5E5D74
		or	word ptr [ecx+eax*2], 80h

loc_45D2B4:				; CODE XREF: .text:0045D29Cj
					; .text:0045D2A4j
		push	24h		; type
		mov	eax, addr1
		push	eax		; addr1
		mov	edx, [edi]
		push	edx		; addr0
		call	Startnextdata
		add	esp, 0Ch
		jmp	short loc_45D2D9
; ---------------------------------------------------------------------------

loc_45D2C9:				; CODE XREF: .text:0045D2EBj
		mov	ecx, [ebp-4]
		sub	ecx, [edi]
		mov	eax, dword_5E5D74
		or	word ptr [eax+ecx*2], 80h

loc_45D2D9:				; CODE XREF: .text:0045D2C7j
		push	1		; datasize
		push	0		; data
		lea	edx, [ebp-4]
		push	edx		; _addr
		call	Findnextdata
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_45D2C9
		xor	eax, eax

loc_45D2EF:				; CODE XREF: .text:0045D04Aj
					; .text:0045D1A9j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_45D2F8:				; CODE XREF: .text:0046F07Ap
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF8h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+8]
		mov	edx, [eax+478h]
		mov	ecx, addr0
		cmp	edx, ecx
		jb	loc_45D5A5
		cmp	edx, addr1
		jnb	loc_45D5A5
		sub	edx, ecx
		mov	[ebp-4], edx
		jmp	loc_45D593
; ---------------------------------------------------------------------------

loc_45D331:				; CODE XREF: .text:0045D59Fj
		mov	eax, copy
		add	eax, [ebp-4]
		mov	[ebp-8], eax
		push	offset aStructImage_im ; "Struct 'IMAGE_IMPORT_DESCRIPTOR'"
		call	_T
		pop	ecx
		push	eax		; s
		push	31h		; type
		mov	eax, addr0
		add	eax, [ebp-4]
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		xor	ebx, ebx

loc_45D35D:				; CODE XREF: .text:0045D375j
		push	4
		mov	eax, [ebp-4]
		add	eax, ebx
		push	eax
		push	6
		call	loc_45C740
		add	esp, 0Ch
		add	ebx, 4
		cmp	ebx, 14h
		jb	short loc_45D35D
		mov	edx, [ebp-8]
		mov	esi, [edx+0Ch]
		test	esi, esi
		jz	loc_45D5A5
		cmp	esi, _size
		jnb	loc_45D5A5
		xor	ebx, ebx
		jmp	short loc_45D3A2
; ---------------------------------------------------------------------------

loc_45D395:				; CODE XREF: .text:0045D3ABj
		mov	edx, copy
		cmp	byte ptr [edx+eax], 0
		jz	short loc_45D3AD
		inc	ebx

loc_45D3A2:				; CODE XREF: .text:0045D393j
		lea	eax, [ebx+esi]
		cmp	eax, _size
		jb	short loc_45D395

loc_45D3AD:				; CODE XREF: .text:0045D39Fj
		lea	ecx, [ebx+esi]
		cmp	ecx, _size
		jnb	short loc_45D3C0
		cmp	ebx, 104h
		jbe	short loc_45D3F3

loc_45D3C0:				; CODE XREF: .text:0045D3B6j
		cmp	dword_5BDD18, 0
		jz	loc_45D58F
		mov	eax, addr0
		add	eax, [ebp-4]
		push	eax		; arglist
		push	offset aInvalidDllName ; "  Invalid DLL	_name in	Import Directory "...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	loc_45D58F
; ---------------------------------------------------------------------------

loc_45D3F3:				; CODE XREF: .text:0045D3BEj
		inc	ebx
		push	ebx
		push	esi
		push	9
		call	loc_45C740
		add	esp, 0Ch
		mov	eax, [ebp-8]
		mov	edi, [eax]
		test	edi, edi
		jz	loc_45D555
		cmp	edi, _size
		jnb	loc_45D555
		mov	eax, copy
		add	eax, esi
		push	eax
		push	offset aImportLookupTa ; "Import lookup	table for '%.200S'"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-208h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-208h]
		mov	eax, addr0
		add	eax, edi
		push	ecx		; s
		push	31h		; type
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		jmp	loc_45D546
; ---------------------------------------------------------------------------

loc_45D45A:				; CODE XREF: .text:0045D54Fj
		push	4
		push	edi
		push	6
		call	loc_45C740
		add	esp, 0Ch
		mov	edx, copy
		mov	esi, [edx+edi]
		test	esi, esi
		jz	loc_45D555
		test	esi, 80000000h
		jnz	loc_45D543
		lea	eax, [esi+4]
		cmp	eax, _size
		jnb	loc_45D555
		push	2
		push	esi
		push	6
		call	loc_45C740
		add	esp, 0Ch
		add	esi, 2
		xor	ebx, ebx
		jmp	short loc_45D4B7
; ---------------------------------------------------------------------------

loc_45D4A7:				; CODE XREF: .text:0045D4C8j
		lea	eax, [ebx+esi]
		mov	edx, copy
		cmp	byte ptr [edx+eax], 0
		jz	short loc_45D4CA
		inc	ebx

loc_45D4B7:				; CODE XREF: .text:0045D4A5j
		cmp	ebx, 100h
		jnb	short loc_45D4CA
		lea	ecx, [ebx+esi]
		cmp	ecx, _size
		jb	short loc_45D4A7

loc_45D4CA:				; CODE XREF: .text:0045D4B4j
					; .text:0045D4BDj
		lea	eax, [ebx+esi]
		cmp	eax, _size
		jnb	short loc_45D4E1
		mov	edx, copy
		cmp	byte ptr [edx+eax], 0
		jz	short loc_45D50D

loc_45D4E1:				; CODE XREF: .text:0045D4D3j
		cmp	dword_5BDD18, 0
		jz	short loc_45D543
		mov	ecx, addr0
		add	ecx, edi
		push	ecx		; arglist
		push	offset aInvalidImpor_0 ; "  Invalid import _name	in ILT at %08X"
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	short loc_45D543
; ---------------------------------------------------------------------------

loc_45D50D:				; CODE XREF: .text:0045D4DFj
		inc	ebx
		push	ebx
		push	esi
		push	9
		call	loc_45C740
		add	esp, 0Ch
		lea	eax, [ebx+esi]
		cmp	eax, _size
		jnb	short loc_45D543
		test	bl, 1
		jz	short loc_45D543
		mov	edx, copy
		cmp	byte ptr [edx+eax], 0
		jnz	short loc_45D543
		push	1
		push	eax
		push	4
		call	loc_45C740
		add	esp, 0Ch

loc_45D543:				; CODE XREF: .text:0045D47Ej
					; .text:0045D4E8j ...
		add	edi, 4

loc_45D546:				; CODE XREF: .text:0045D455j
		lea	ecx, [edi+4]
		cmp	ecx, _size
		jbe	loc_45D45A

loc_45D555:				; CODE XREF: .text:0045D407j
					; .text:0045D413j ...
		mov	eax, [ebp-8]
		mov	edi, [eax+10h]
		test	edi, edi
		jz	short loc_45D58F
		cmp	edi, _size
		jnb	short loc_45D58F
		jmp	short loc_45D584
; ---------------------------------------------------------------------------

loc_45D569:				; CODE XREF: .text:0045D58Dj
		push	4
		push	edi
		push	6
		call	loc_45C740
		add	esp, 0Ch
		mov	eax, copy
		cmp	dword ptr [eax+edi], 0
		jz	short loc_45D58F
		add	edi, 4

loc_45D584:				; CODE XREF: .text:0045D567j
		lea	edx, [edi+4]
		cmp	edx, _size
		jbe	short loc_45D569

loc_45D58F:				; CODE XREF: .text:0045D3C7j
					; .text:0045D3EEj ...
		add	dword ptr [ebp-4], 14h

loc_45D593:				; CODE XREF: .text:0045D32Cj
		mov	ecx, _size
		sub	ecx, 14h
		cmp	ecx, [ebp-4]
		jnb	loc_45D331

loc_45D5A5:				; CODE XREF: .text:0045D315j
					; .text:0045D321j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_45D5AC:				; CODE XREF: .text:0046F081p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+8]
		mov	edx, [eax+470h]
		mov	ebx, addr0
		cmp	edx, ebx
		jb	loc_45D892
		mov	ecx, edx
		add	ecx, 28h
		cmp	ecx, addr1
		ja	loc_45D892
		sub	edx, ebx
		mov	[ebp-4], edx
		mov	eax, copy
		add	eax, [ebp-4]
		mov	[ebp-8], eax
		push	offset aStructImage_ex ; "Struct 'IMAGE_EXPORT_DIRECTORY'"
		call	_T
		pop	ecx
		push	eax		; s
		push	31h		; type
		add	ebx, [ebp-4]
		push	ebx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		xor	edi, edi

loc_45D609:				; CODE XREF: .text:0045D642j
		cmp	edi, 8
		jz	short loc_45D613
		cmp	edi, 0Ah
		jnz	short loc_45D62A

loc_45D613:				; CODE XREF: .text:0045D60Cj
		push	2
		mov	eax, [ebp-4]
		add	eax, edi
		push	eax
		push	6
		call	loc_45C740
		add	esp, 0Ch
		add	edi, 2
		jmp	short loc_45D63F
; ---------------------------------------------------------------------------

loc_45D62A:				; CODE XREF: .text:0045D611j
		push	4
		mov	edx, [ebp-4]
		add	edx, edi
		push	edx
		push	6
		call	loc_45C740
		add	esp, 0Ch
		add	edi, 4

loc_45D63F:				; CODE XREF: .text:0045D628j
		cmp	edi, 28h
		jb	short loc_45D609
		mov	ecx, [ebp-8]
		mov	esi, [ecx+0Ch]
		test	esi, esi
		jz	loc_45D6E5
		cmp	esi, _size
		jnb	loc_45D6E5
		xor	ebx, ebx
		jmp	short loc_45D66F
; ---------------------------------------------------------------------------

loc_45D662:				; CODE XREF: .text:0045D678j
		mov	edx, copy
		cmp	byte ptr [edx+eax], 0
		jz	short loc_45D67A
		inc	ebx

loc_45D66F:				; CODE XREF: .text:0045D660j
		lea	eax, [ebx+esi]
		cmp	eax, _size
		jb	short loc_45D662

loc_45D67A:				; CODE XREF: .text:0045D66Cj
		lea	ecx, [ebx+esi]
		cmp	ecx, _size
		jnb	short loc_45D6BB
		cmp	ebx, 104h
		jnb	short loc_45D6BB
		push	offset aOriginalModule ; "Original module _name"
		call	_T
		pop	ecx
		push	eax		; s
		push	31h		; type
		mov	eax, addr0
		add	eax, [ebp-4]
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		inc	ebx
		push	ebx
		push	esi
		push	9
		call	loc_45C740
		add	esp, 0Ch
		jmp	short loc_45D6E5
; ---------------------------------------------------------------------------

loc_45D6BB:				; CODE XREF: .text:0045D683j
					; .text:0045D68Bj
		cmp	dword_5BDD18, 0
		jz	short loc_45D6E5
		mov	eax, addr0
		add	eax, [ebp-4]
		push	eax		; arglist
		push	offset aInvalidNameOfE ; "  Invalid _name of executable in Export "...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_45D6E5:				; CODE XREF: .text:0045D64Cj
					; .text:0045D658j ...
		mov	edx, [ebp-8]
		mov	esi, [edx+1Ch]
		test	esi, esi
		jz	short loc_45D73D
		cmp	esi, _size
		jnb	short loc_45D73D
		push	offset aExportAddressT ; "Export Address Table"
		call	_T
		pop	ecx
		push	eax		; s
		push	31h		; type
		mov	eax, addr0
		add	eax, esi
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		xor	edi, edi
		jmp	short loc_45D735
; ---------------------------------------------------------------------------

loc_45D719:				; CODE XREF: .text:0045D73Bj
		lea	eax, [esi+4]
		cmp	eax, _size
		ja	short loc_45D73D
		push	4
		push	esi
		push	6
		call	loc_45C740
		add	esp, 0Ch
		add	esi, 4
		inc	edi

loc_45D735:				; CODE XREF: .text:0045D717j
		mov	edx, [ebp-8]
		cmp	edi, [edx+14h]
		jb	short loc_45D719

loc_45D73D:				; CODE XREF: .text:0045D6EDj
					; .text:0045D6F5j ...
		mov	ecx, [ebp-8]
		mov	esi, [ecx+20h]
		test	esi, esi
		jz	loc_45D83A
		cmp	esi, _size
		jnb	loc_45D83A
		push	offset aExportNamePoin ; "Export Name Pointer Table"
		call	_T
		pop	ecx
		push	eax		; s
		push	31h		; type
		mov	eax, addr0
		add	eax, esi
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		xor	edi, edi
		jmp	loc_45D82E
; ---------------------------------------------------------------------------

loc_45D77C:				; CODE XREF: .text:0045D834j
		lea	eax, [esi+4]
		cmp	eax, _size
		ja	loc_45D83A
		push	4
		push	esi
		push	6
		call	loc_45C740
		add	esp, 0Ch
		mov	edx, copy
		mov	eax, [edx+esi]
		test	eax, eax
		jz	loc_45D82A
		cmp	eax, _size
		jnb	short loc_45D82A
		xor	ebx, ebx
		jmp	short loc_45D7C5
; ---------------------------------------------------------------------------

loc_45D7B5:				; CODE XREF: .text:0045D7D6j
		lea	edx, [ebx+eax]
		mov	ecx, copy
		cmp	byte ptr [ecx+edx], 0
		jz	short loc_45D7D8
		inc	ebx

loc_45D7C5:				; CODE XREF: .text:0045D7B3j
		cmp	ebx, 100h
		jnb	short loc_45D7D8
		lea	edx, [ebx+eax]
		cmp	edx, _size
		jb	short loc_45D7B5

loc_45D7D8:				; CODE XREF: .text:0045D7C2j
					; .text:0045D7CBj
		lea	ecx, [ebx+eax]
		cmp	ecx, _size
		jnb	short loc_45D7F2
		lea	edx, [ebx+eax]
		mov	ecx, copy
		cmp	byte ptr [ecx+edx], 0
		jz	short loc_45D81D

loc_45D7F2:				; CODE XREF: .text:0045D7E1j
		cmp	dword_5BDD18, 0
		jz	short loc_45D82A
		mov	eax, addr0
		add	eax, esi
		push	eax		; arglist
		push	offset aInvalidExportN ; "  Invalid export _name	in Export Name Ta"...
		call	_T
		pop	ecx
		push	eax		; format
		push	2		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	short loc_45D82A
; ---------------------------------------------------------------------------

loc_45D81D:				; CODE XREF: .text:0045D7F0j
		inc	ebx
		push	ebx
		push	eax
		push	9
		call	loc_45C740
		add	esp, 0Ch

loc_45D82A:				; CODE XREF: .text:0045D7A3j
					; .text:0045D7AFj ...
		inc	edi
		add	esi, 4

loc_45D82E:				; CODE XREF: .text:0045D777j
		mov	eax, [ebp-8]
		cmp	edi, [eax+18h]
		jb	loc_45D77C

loc_45D83A:				; CODE XREF: .text:0045D745j
					; .text:0045D751j ...
		mov	edx, [ebp-8]
		mov	esi, [edx+24h]
		test	esi, esi
		jz	short loc_45D892
		cmp	esi, _size
		jnb	short loc_45D892
		push	offset aExportOrdinalT ; "Export Ordinal Table"
		call	_T
		pop	ecx
		push	eax		; s
		push	31h		; type
		mov	eax, addr0
		add	eax, esi
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		xor	edi, edi
		jmp	short loc_45D88A
; ---------------------------------------------------------------------------

loc_45D86E:				; CODE XREF: .text:0045D890j
		lea	eax, [esi+2]
		cmp	eax, _size
		ja	short loc_45D892
		push	2
		push	esi
		push	6
		call	loc_45C740
		add	esp, 0Ch
		add	esi, 2
		inc	edi

loc_45D88A:				; CODE XREF: .text:0045D86Cj
		mov	edx, [ebp-8]
		cmp	edi, [edx+18h]
		jb	short loc_45D86E

loc_45D892:				; CODE XREF: .text:0045D5C6j
					; .text:0045D5D7j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_45D89C:				; CODE XREF: .text:0046F088p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE0h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		mov	esi, offset addr0
		mov	eax, [ebx+494h]
		cmp	eax, [esi]
		jb	loc_45D9F0
		mov	edx, eax
		add	edx, [ebx+498h]
		cmp	edx, addr1
		ja	loc_45D9F0
		push	1		; int
		push	0		; int
		mov	ecx, [ebx+498h]
		push	ecx		; int
		push	eax		; int
		push	offset aImage_tls_dire ; "IMAGE_TLS_DIRECTORY"
		call	loc_45C938
		add	esp, 14h
		lea	eax, [ebp-20h]
		push	18h		; n
		push	0		; c
		push	eax		; s
		call	_memset
		lea	eax, [ebx+498h]
		add	esp, 0Ch
		mov	dword ptr [ebp-8], 18h
		mov	edx, [eax]
		cmp	edx, [ebp-8]
		jb	short loc_45D90F
		lea	eax, [ebp-8]

loc_45D90F:				; CODE XREF: .text:0045D90Aj
		mov	edi, [eax]
		push	1		; mode
		push	edi		; size
		mov	eax, [ebx+494h]
		push	eax		; _addr
		lea	edx, [ebp-20h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	edi, eax
		jnz	loc_45D9F0
		mov	eax, [ebp-18h]
		cmp	eax, [esi]
		jb	short loc_45D94E
		cmp	eax, addr1
		jnb	short loc_45D94E
		push	offset aTlsindex ; "<TLSindex>"
		push	2Bh		; type
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_45D94E:				; CODE XREF: .text:0045D934j
					; .text:0045D93Cj
		mov	ebx, [ebp-14h]
		mov	dword_5E5D80, ebx
		jmp	short loc_45D9C0
; ---------------------------------------------------------------------------

loc_45D959:				; CODE XREF: .text:0045D9CDj
		push	1		; mode
		push	4		; size
		push	ebx		; _addr
		lea	edx, [ebp-4]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	short loc_45D9CF
		push	4
		mov	ecx, ebx
		sub	ecx, [esi]
		push	ecx
		push	4
		call	loc_45C740
		add	esp, 0Ch
		mov	eax, [ebp-4]
		cmp	eax, [esi]
		jb	short loc_45D9CF
		mov	edx, [ebp-4]
		cmp	edx, addr1
		jnb	short loc_45D9CF
		push	offset aTlsCallbackFun ; "TLS callback function"
		call	_T
		pop	ecx
		push	eax		; s
		push	31h		; type
		mov	ecx, [ebp-4]
		push	ecx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		mov	eax, [ebp-4]
		sub	eax, [esi]
		mov	edx, dword_5E5D74
		or	word ptr [edx+eax*2], 400h
		add	ebx, 4

loc_45D9C0:				; CODE XREF: .text:0045D957j
		cmp	ebx, [esi]
		jb	short loc_45D9CF
		lea	ecx, [ebx+4]
		cmp	ecx, addr1
		jbe	short loc_45D959

loc_45D9CF:				; CODE XREF: .text:0045D96Dj
					; .text:0045D985j ...
		mov	esi, dword_5E5D80
		cmp	ebx, esi
		jz	short loc_45D9F0
		push	offset aTlscallbacks ; src
		call	_T
		pop	ecx
		push	eax		; s
		push	2Bh		; type
		push	esi		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_45D9F0:				; CODE XREF: .text:0045D8B5j
					; .text:0045D8C9j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_45D9F8:				; CODE XREF: .text:0046F638p
					; .text:0046FE79p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD4h
		mov	eax, addr0
		push	ebx
		push	esi
		push	edi
		mov	edi, offset aAnalysingSPres ; "Analysing %s - $	- press	SPACE to inter"...
;__DebugBreak
		cmp	eax, [ebp+0Ch]
		ja	loc_45DE4B
		mov	edx, [ebp+0Ch]
		cmp	edx, addr1
		jnb	loc_45DE4B
		mov	ecx, [ebp+0Ch]
		add	ecx, [ebp+10h]
		mov	edx, addr1
		cmp	ecx, edx
		jbe	short loc_45DA39
		sub	edx, [ebp+0Ch]
		mov	[ebp+10h], edx

loc_45DA39:				; CODE XREF: .text:0045DA31j
		mov	ecx, copy
		add	ecx, [ebp+0Ch]
		sub	ecx, eax
		mov	[ebp-24h], ecx
		cmp	dword ptr [ebp+10h], 2
		jb	loc_45DE4B
		push	2		; n
		lea	eax, aMz;[edi+6A2h]
		push	eax		; s2
		mov	eax, [ebp-24h]
		push	eax		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_45DE4B
		push	1		; int
		push	0		; int
		mov	edx, [ebp+10h]
		push	edx		; int
		mov	ecx, [ebp+0Ch]
		push	ecx		; int
		lea	eax, aImage_dos_head;[edi+6A6h]
		push	eax		; s1
		call	loc_45C938
		add	esp, 14h
		lea	edx, [ebp-8]
		lea	ecx, aDos_peoffset;[edi+6C8h]
		lea	eax, aImage_dos_head;[edi+6A6h]
		push	4		; nvalue
		push	edx		; value
		push	ecx		; itemname
		push	eax		; _name
		mov	edx, [ebp+10h]
		push	edx		; ncode
		mov	ecx, [ebp-24h]
		push	ecx		; code
		call	Getstructureitemvalue
		add	esp, 18h
		test	eax, eax
		jz	loc_45DE4B
		mov	eax, [ebp-8]
		add	eax, 4
		cmp	eax, [ebp+10h]
		jnb	loc_45DE4B
		mov	edx, [ebp-24h]
		mov	ecx, [ebp-8]
		cmp	dword ptr [edx+ecx], 4550h
		jnz	loc_45DE4B
		push	1		; int
		push	0		; int
		mov	eax, [ebp+10h]
		sub	eax, [ebp-8]
		push	eax		; int
		mov	edx, [ebp+0Ch]
		add	edx, [ebp-8]
		push	edx		; int
		lea	ecx, aImage_nt_signa;[edi+6E2h]
		push	ecx		; s1
		call	loc_45C938
		add	esp, 14h
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_45DE4B
		add	[ebp-8], ebx
		lea	eax, [ebp-4]
		push	4		; nvalue
		push	eax		; value
		lea	edx, aMachine;[edi+72Ch]
		lea	ecx, aImage_file_hea;[edi+708h]
		push	edx		; itemname
		push	ecx		; _name
		mov	eax, [ebp+10h]
		sub	eax, [ebp-8]
		push	eax		; ncode
		mov	edx, [ebp-24h]
		add	edx, [ebp-8]
		push	edx		; code
		call	Getstructureitemvalue
		add	esp, 18h
		test	eax, eax
		jz	loc_45DE4B
		cmp	dword ptr [ebp-4], 14Ch
		jnz	loc_45DE4B
		push	1		; int
		push	0		; int
		mov	ecx, [ebp+10h]
		sub	ecx, [ebp-8]
		push	ecx		; int
		mov	eax, [ebp+0Ch]
		add	eax, [ebp-8]
		push	eax		; int
		lea	edx, aImage_file_hea;[edi+708h]
		push	edx		; s1
		call	loc_45C938
		add	esp, 14h
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_45DE4B
		push	4		; nvalue
		lea	eax, [ebp-0Ch]
		push	eax		; value
		lea	edx, aSizeofoptional;[edi+73Ch]
		push	edx		; itemname
		lea	ecx, aImage_file_hea;[edi+708h]
		push	ecx		; _name
		mov	eax, [ebp+10h]
		sub	eax, [ebp-8]
		push	eax		; ncode
		mov	edx, [ebp-24h]
		add	edx, [ebp-8]
		push	edx		; code
		call	Getstructureitemvalue
		add	esp, 18h
		test	eax, eax
		jz	loc_45DE4B
		push	4		; nvalue
		lea	ecx, [ebp-14h]
		push	ecx		; value
		lea	eax, aNumberofsectio;[edi+766h]
		push	eax		; itemname
		lea	edx, aImage_file_hea;[edi+708h]
		push	edx		; _name
		mov	ecx, [ebp+10h]
		sub	ecx, [ebp-8]
		push	ecx		; ncode
		mov	eax, [ebp-24h]
		add	eax, [ebp-8]
		push	eax		; code
		call	Getstructureitemvalue
		add	esp, 18h
		test	eax, eax
		jz	loc_45DE4B
		add	[ebp-8], ebx
		mov	edx, [ebp-8]
		add	edx, [ebp-0Ch]
		mov	[ebp-10h], edx
		push	1		; int
		push	0		; int
		mov	ecx, [ebp+10h]
		sub	ecx, [ebp-8]
		push	ecx		; int
		mov	eax, [ebp+0Ch]
		add	eax, [ebp-8]
		push	eax		; int
		lea	edx, aImage_optional;[edi+788h]
		push	edx		; s1
		call	loc_45C938
		add	esp, 14h
		mov	ebx, eax
		lea	eax, [ebp-18h]
		lea	edx, aNumberofrvaand;[edi+7B4h]
		push	4		; nvalue
		push	eax		; value
		push	edx		; itemname
		lea	ecx, aImage_optional;[edi+788h]
		push	ecx		; _name
		mov	eax, [ebp+10h]
		sub	eax, [ebp-8]
		push	eax		; ncode
		mov	edx, [ebp-24h]
		add	edx, [ebp-8]
		push	edx		; code
		call	Getstructureitemvalue
		add	esp, 18h
		test	eax, eax
		jz	loc_45DE4B
		add	[ebp-8], ebx
		push	1		; int
		push	0		; int
		mov	ecx, [ebp-18h]
		shl	ecx, 3
		mov	[ebp-28h], ecx
		mov	eax, [ebp+10h]
		sub	eax, [ebp-8]
		mov	[ebp-2Ch], eax
		mov	edx, [ebp-2Ch]
		cmp	edx, [ebp-28h]
		jnb	short loc_45DC5A
		lea	ecx, [ebp-2Ch]
		jmp	short loc_45DC5D
; ---------------------------------------------------------------------------

loc_45DC5A:				; CODE XREF: .text:0045DC53j
		lea	ecx, [ebp-28h]

loc_45DC5D:				; CODE XREF: .text:0045DC58j
		mov	eax, [ecx]
		push	eax		; int
		mov	edx, [ebp+0Ch]
		add	edx, [ebp-8]
		push	edx		; int
		lea	eax, aImage_data_dir;[edi+7DCh]
		push	eax		; s1
		call	loc_45C938
		add	esp, 14h
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_45DE4B
		xor	eax, eax
		mov	[ebp-1Ch], eax
		xor	esi, esi
		cmp	dword ptr [ebp-18h], 0Bh
		jbe	short loc_45DCA9
		mov	eax, [ebp-8]
		add	eax, 60h
		cmp	eax, [ebp+10h]
		ja	short loc_45DCA9
		mov	eax, [ebp-24h]
		add	eax, [ebp-8]
		add	eax, 58h
		mov	edx, [eax]
		mov	[ebp-1Ch], edx
		mov	esi, [eax+4]

loc_45DCA9:				; CODE XREF: .text:0045DC8Bj
					; .text:0045DC96j
		mov	eax, [ebp-10h]
		xor	edx, edx
		mov	[ebp-8], eax
		mov	[ebp-4], edx
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-14h]
		jnb	short loc_45DCF5

loc_45DCBC:				; CODE XREF: .text:0045DCF3j
		push	1		; int
		push	0		; int
		mov	eax, [ebp+10h]
		sub	eax, [ebp-8]
		push	eax		; int
		mov	edx, [ebp+0Ch]
		add	edx, [ebp-8]
		push	edx		; int
		lea	ecx, aImage_section_;[edi+806h]
		push	ecx		; s1
		call	loc_45C938
		add	esp, 14h
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_45DE4B
		add	[ebp-8], ebx
		inc	dword ptr [ebp-4]
		mov	eax, [ebp-4]
		cmp	eax, [ebp-14h]
		jb	short loc_45DCBC

loc_45DCF5:				; CODE XREF: .text:0045DCBAj
		test	esi, esi
		jbe	loc_45DE4B
		mov	edx, [ebp-1Ch]
		add	edx, esi
		cmp	edx, _size
		ja	loc_45DE4B
		mov	ecx, [ebp-1Ch]
		mov	[ebp-8], ecx
		jmp	loc_45DE3D
; ---------------------------------------------------------------------------

loc_45DD19:				; CODE XREF: .text:0045DE45j
		mov	eax, [ebp-24h]
		mov	edx, [ebp-8]
		cmp	dword ptr [eax+edx], 0
		jz	loc_45DE4B
		push	1		; int
		push	0		; int
		mov	ecx, esi
		sub	ecx, [ebp-8]
		push	ecx		; int
		mov	eax, [ebp+0Ch]
		add	eax, [ebp-8]
		push	eax		; int
		lea	edx, aImage_bound_im;[edi+830h]
		push	edx		; s1
		call	loc_45C938
		add	esp, 14h
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_45DE4B
		push	4		; nvalue
		lea	eax, [ebp-4]
		push	eax		; value
		lea	edx, aOffsetmodulena;[edi+86Ch]
		push	edx		; itemname
		lea	ecx, aImage_bound_im;[edi+830h]
		push	ecx		; _name
		mov	eax, esi
		sub	eax, [ebp-8]
		push	eax		; ncode
		mov	edx, [ebp-24h]
		add	edx, [ebp-8]
		push	edx		; code
		call	Getstructureitemvalue
		add	esp, 18h
		test	eax, eax
		jz	short loc_45DD8D
		mov	ecx, [ebp-1Ch]
		add	ecx, [ebp-4]
		push	ecx
		call	loc_45C8E4
		pop	ecx

loc_45DD8D:				; CODE XREF: .text:0045DD7Ej
		push	2		; nvalue
		lea	eax, [ebp-1Eh]
		push	eax		; value
		lea	edx, aNumberofmodule;[edi+88Eh]
		push	edx		; itemname
		lea	ecx, aImage_bound_im;[edi+830h]
		push	ecx		; _name
		mov	eax, esi
		sub	eax, [ebp-8]
		push	eax		; ncode
		mov	edx, [ebp-24h]
		add	edx, [ebp-8]
		push	edx		; code
		call	Getstructureitemvalue
		add	esp, 18h
		test	eax, eax
		jz	loc_45DE4B
		add	[ebp-8], ebx
		cmp	word ptr [ebp-1Eh], 0
		jbe	short loc_45DE36

loc_45DDC8:				; CODE XREF: .text:0045DE34j
		push	1		; int
		push	0		; int
		mov	ecx, esi
		sub	ecx, [ebp-8]
		push	ecx		; int
		mov	eax, [ebp+0Ch]
		add	eax, [ebp-8]
		push	eax		; int
		lea	edx, aImage_bound_fo;[edi+8C6h]
		push	edx		; s1
		call	loc_45C938
		add	esp, 14h
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_45DE36
		push	4		; nvalue
		lea	eax, [ebp-4]
		push	eax		; value
		lea	edx, aOffsetmodulena;[edi+86Ch]
		push	edx		; itemname
		lea	ecx, aImage_bound_fo;[edi+8C6h]
		push	ecx		; _name
		mov	eax, esi
		sub	eax, [ebp-8]
		push	eax		; ncode
		mov	edx, [ebp-24h]
		add	edx, [ebp-8]
		push	edx		; code
		call	Getstructureitemvalue
		add	esp, 18h
		test	eax, eax
		jz	short loc_45DE28
		mov	ecx, [ebp-1Ch]
		add	ecx, [ebp-4]
		push	ecx
		call	loc_45C8E4
		pop	ecx

loc_45DE28:				; CODE XREF: .text:0045DE19j
		add	[ebp-8], ebx
		dec	word ptr [ebp-1Eh]
		cmp	word ptr [ebp-1Eh], 0
		ja	short loc_45DDC8

loc_45DE36:				; CODE XREF: .text:0045DDC6j
					; .text:0045DDECj
		cmp	word ptr [ebp-1Eh], 0
		ja	short loc_45DE4B

loc_45DE3D:				; CODE XREF: .text:0045DD14j
		mov	eax, [ebp-1Ch]
		add	eax, esi
		cmp	eax, [ebp-8]
		ja	loc_45DD19

loc_45DE4B:				; CODE XREF: .text:0045DA0Ej
					; .text:0045DA1Dj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_45DE54(int, int, int,	size_t n, int, char, int, void *dest)
loc_45DE54:				; CODE XREF: .text:0045E46Ap
					; .text:0045E508p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFEE0h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+18h]
		mov	edi, [ebp+14h]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_45DE7B
		test	edi, edi
		jz	short loc_45DE7B
		test	ebx, ebx
		jnz	short loc_45DE83
		cmp	dword ptr [ebp+20h], 0
		jnz	short loc_45DE83

loc_45DE7B:				; CODE XREF: .text:0045DE6Bj
					; .text:0045DE6Fj
		or	eax, 0FFFFFFFFh
		jmp	loc_45DF64
; ---------------------------------------------------------------------------

loc_45DE83:				; CODE XREF: .text:0045DE73j
					; .text:0045DE79j
		mov	eax, [esi]
		mov	edx, eax
		add	edx, edi
		cmp	edx, [ebp+0Ch]
		jbe	short loc_45DE96
		or	eax, 0FFFFFFFFh
		jmp	loc_45DF64
; ---------------------------------------------------------------------------

loc_45DE96:				; CODE XREF: .text:0045DE8Cj
		push	edi
		push	eax
		mov	edx, [ebp+10h]
		push	edx
		call	loc_45C740
		add	esp, 0Ch
		cmp	dword ptr [ebp+20h], 0
		jnz	short loc_45DEC3
		push	ebx		; s
		push	31h		; type
		mov	ecx, addr0
		add	ecx, [esi]
		push	ecx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		jmp	loc_45DF60
; ---------------------------------------------------------------------------

loc_45DEC3:				; CODE XREF: .text:0045DEA8j
		test	ebx, ebx
		jnz	short loc_45DED5
		xor	eax, eax
		mov	ebx, eax
		mov	byte ptr [ebp+eax-120h], 0
		jmp	short loc_45DEF1
; ---------------------------------------------------------------------------

loc_45DED5:				; CODE XREF: .text:0045DEC5j
		push	100h		; nt
		lea	edx, [ebp-120h]
		push	edx		; t
		push	100h		; nw
		push	ebx		; w
		call	Unicodetoutf
		add	esp, 10h
		mov	ebx, eax

loc_45DEF1:				; CODE XREF: .text:0045DED3j
		inc	ebx
		mov	cl, [ebp+1Ch]
		and	cl, 7
		lea	eax, [ebp-120h]
		or	cl, 40h
		mov	[ebp+ebx-120h],	cl
		inc	ebx
		add	eax, ebx
		push	1Fh		; nt
		push	eax		; t
		push	1Fh		; nw
		mov	edx, [ebp+20h]
		push	edx		; w
		call	Unicodetoutf
		add	esp, 10h
		inc	eax
		add	ebx, eax
		lea	ecx, [ebp-120h]
		push	ebx		; datasize
		push	ecx		; data
		push	34h		; type
		mov	eax, addr0
		add	eax, [esi]
		push	eax		; _addr
		call	Quickinsertdata
		add	esp, 10h
		cmp	dword ptr [ebp+24h], 0
		jz	short loc_45DF60
		cmp	edi, 4
		ja	short loc_45DF60
		mov	edx, [ebp+24h]
		xor	ecx, ecx
		mov	[edx], ecx
		push	edi		; n
		mov	eax, copy
		add	eax, [esi]
		push	eax		; src
		mov	edx, [ebp+24h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch

loc_45DF60:				; CODE XREF: .text:0045DEBEj
					; .text:0045DF3Dj ...
		add	[esi], edi
		xor	eax, eax

loc_45DF64:				; CODE XREF: .text:0045DE7Ej
					; .text:0045DE91j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_45DF6C:				; CODE XREF: .text:0045F942p
					; .text:0045F962p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFED4h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+18h]
		mov	edi, [ebp+8]
		test	edi, edi
		jz	short loc_45DF8E
		cmp	dword ptr [ebp+10h], 0
		jl	short loc_45DF8E
		cmp	dword ptr [ebp+10h], 2
		jle	short loc_45DF96

loc_45DF8E:				; CODE XREF: .text:0045DF80j
					; .text:0045DF86j
		or	eax, 0FFFFFFFFh
		jmp	loc_45E1C7
; ---------------------------------------------------------------------------

loc_45DF96:				; CODE XREF: .text:0045DF8Cj
		mov	edx, [ebp+10h]
		mov	eax, [edi]
		mov	esi, dword_5E6014[edx*4]
		mov	edx, eax
		add	edx, esi
		cmp	edx, [ebp+0Ch]
		jbe	short loc_45DFB3
		or	eax, 0FFFFFFFFh
		jmp	loc_45E1C7
; ---------------------------------------------------------------------------

loc_45DFB3:				; CODE XREF: .text:0045DFA9j
		push	esi
		push	eax
		push	7
		call	loc_45C740
		add	esp, 0Ch
		test	ebx, ebx
		jnz	short loc_45DFD1
		xor	edx, edx
		mov	ebx, edx
		mov	byte ptr [ebp+edx-12Ch], 0
		jmp	short loc_45DFED
; ---------------------------------------------------------------------------

loc_45DFD1:				; CODE XREF: .text:0045DFC1j
		push	100h		; nt
		lea	eax, [ebp-12Ch]
		push	eax		; t
		push	100h		; nw
		push	ebx		; w
		call	Unicodetoutf
		add	esp, 10h
		mov	ebx, eax

loc_45DFED:				; CODE XREF: .text:0045DFCFj
		inc	ebx
		mov	byte ptr [ebp+ebx-12Ch], 40h
		inc	ebx
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_45E02F
		cmp	esi, 2
		jnz	short loc_45E009
		mov	ecx, offset aNetsw ; "NETSW"
		jmp	short loc_45E00E
; ---------------------------------------------------------------------------

loc_45E009:				; CODE XREF: .text:0045E000j
		mov	ecx, offset aNetsd ; "NETSD"

loc_45E00E:				; CODE XREF: .text:0045E007j
		mov	eax, 120h
		push	ecx		; src
		sub	eax, ebx
		lea	edx, [ebp-12Ch]
		add	edx, ebx
		push	eax		; n
		push	edx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_45E1A7
; ---------------------------------------------------------------------------

loc_45E02F:				; CODE XREF: .text:0045DFFBj
		cmp	dword ptr [ebp+10h], 1
		jnz	short loc_45E067
		cmp	esi, 2
		jnz	short loc_45E041
		mov	eax, offset aNetgw ; "NETGW"
		jmp	short loc_45E046
; ---------------------------------------------------------------------------

loc_45E041:				; CODE XREF: .text:0045E038j
		mov	eax, offset aNetgd ; "NETGD"

loc_45E046:				; CODE XREF: .text:0045E03Fj
		mov	edx, 120h
		push	eax		; src
		sub	edx, ebx
		lea	ecx, [ebp-12Ch]
		add	ecx, ebx
		push	edx		; n
		push	ecx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_45E1A7
; ---------------------------------------------------------------------------

loc_45E067:				; CODE XREF: .text:0045E033j
		cmp	esi, 2
		jnz	short loc_45E073
		mov	eax, offset aNetbw ; "NETBW"
		jmp	short loc_45E078
; ---------------------------------------------------------------------------

loc_45E073:				; CODE XREF: .text:0045E06Aj
		mov	eax, offset aNetbd ; "NETBD"

loc_45E078:				; CODE XREF: .text:0045E071j
		mov	edx, 120h
		push	eax		; src
		sub	edx, ebx
		lea	ecx, [ebp-12Ch]
		add	ecx, ebx
		push	edx		; n
		push	ecx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	ebx, eax
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_45E0ED
		mov	eax, [ebp+14h]
		cmp	word ptr [eax],	0
		jz	short loc_45E0ED
		mov	edx, 120h
		lea	ecx, [ebp-12Ch]
		sub	edx, ebx
		push	offset asc_53AC66 ; "|"
		push	edx		; n
		add	ecx, ebx
		push	ecx		; dest
		call	StrcopyA
		add	ebx, eax
		add	esp, 0Ch
		mov	eax, 120h
		lea	edx, [ebp-12Ch]
		mov	byte ptr [ebp+ebx-12Ch], 40h
		inc	ebx
		sub	eax, ebx
		add	edx, ebx
		push	eax		; nt
		push	edx		; t
		push	20h		; nw
		mov	ecx, [ebp+14h]
		push	ecx		; w
		call	Unicodetoutf
		add	esp, 10h
		add	ebx, eax

loc_45E0ED:				; CODE XREF: .text:0045E098j
					; .text:0045E0A1j
		mov	eax, dword_5E6120
		test	eax, eax
		jz	loc_45E1A7
		cmp	esi, 2
		jnz	short loc_45E118
		mov	edx, [edi]
		mov	ecx, copy
		sub	eax, addr0
		movzx	edx, word ptr [ecx+edx]
		add	edx, eax
		mov	[ebp-8], edx
		jmp	short loc_45E12E
; ---------------------------------------------------------------------------

loc_45E118:				; CODE XREF: .text:0045E0FDj
		mov	ecx, [edi]
		mov	edx, copy
		mov	ecx, [edx+ecx]
		sub	eax, addr0
		add	ecx, eax
		mov	[ebp-8], ecx

loc_45E12E:				; CODE XREF: .text:0045E116j
		lea	eax, [ebp-4]
		push	eax		; value
		mov	eax, dword_5E6120
		add	eax, dword_5E6124
		sub	eax, addr0
		sub	eax, [ebp-8]
		push	eax		; size
		mov	edx, copy
		add	edx, [ebp-8]
		push	edx		; code
		call	Getpackednetint
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jbe	short loc_45E1A7
		mov	ecx, [ebp-8]
		mov	eax, dword_5E6120
		sub	eax, addr0
		add	ecx, [ebp-0Ch]
		add	ecx, [ebp-4]
		add	eax, dword_5E6124
		cmp	ecx, eax
		ja	short loc_45E1A7
		mov	edx, [ebp-0Ch]
		push	edx
		mov	ecx, [ebp-8]
		push	ecx
		push	7
		call	loc_45C740
		add	esp, 0Ch
		mov	eax, [ebp-4]
		push	eax
		mov	edx, [ebp-8]
		add	edx, [ebp-0Ch]
		push	edx
		push	7
		call	loc_45C740
		add	esp, 0Ch

loc_45E1A7:				; CODE XREF: .text:0045E02Aj
					; .text:0045E062j ...
		inc	ebx
		push	ebx		; datasize
		lea	eax, [ebp-12Ch]
		push	eax		; data
		push	34h		; type
		mov	edx, [edi]
		add	edx, addr0
		push	edx		; _addr
		call	Quickinsertdata
		add	esp, 10h
		add	[edi], esi
		xor	eax, eax

loc_45E1C7:				; CODE XREF: .text:0045DF91j
					; .text:0045DFAEj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_45E1D0:				; CODE XREF: .text:0045F9CBp
					; .text:0045FA9Fp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFED8h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+10h]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_45E1EF
		test	eax, eax
		jl	short loc_45E1EF
		cmp	eax, 4Dh
		jl	short loc_45E1F7

loc_45E1EF:				; CODE XREF: .text:0045E1E4j
					; .text:0045E1E8j
		or	eax, 0FFFFFFFFh
		jmp	loc_45E38E
; ---------------------------------------------------------------------------

loc_45E1F7:				; CODE XREF: .text:0045E1EDj
		cmp	eax, 40h
		jl	short loc_45E20B
		lea	edx, [eax+eax*4]
		lea	edx, [eax+edx*2]
		mov	edi, dword ptr aAboutToAssignT[edx*4] ;	"About to assign time-critical priority	"...
		jmp	short loc_45E224
; ---------------------------------------------------------------------------

loc_45E20B:				; CODE XREF: .text:0045E1FAj
		test	dword_5E6020[eax*4], 0FFFF0000h
		jz	short loc_45E21F
		mov	edi, 4
		jmp	short loc_45E224
; ---------------------------------------------------------------------------

loc_45E21F:				; CODE XREF: .text:0045E216j
		mov	edi, 2

loc_45E224:				; CODE XREF: .text:0045E209j
					; .text:0045E21Dj
		mov	edx, [esi]
		mov	ecx, edx
		add	ecx, edi
		cmp	ecx, [ebp+0Ch]
		jbe	short loc_45E237
		or	eax, 0FFFFFFFFh
		jmp	loc_45E38E
; ---------------------------------------------------------------------------

loc_45E237:				; CODE XREF: .text:0045E22Dj
		cmp	edi, 2
		jnz	short loc_45E24B
		mov	ecx, copy
		movzx	edx, word ptr [ecx+edx]
		mov	[ebp-8], edx
		jmp	short loc_45E257
; ---------------------------------------------------------------------------

loc_45E24B:				; CODE XREF: .text:0045E23Aj
		mov	ecx, copy
		mov	edx, [ecx+edx]
		mov	[ebp-8], edx

loc_45E257:				; CODE XREF: .text:0045E249j
		cmp	eax, 40h
		jl	short loc_45E29C
		lea	edx, [eax+eax*4]
		lea	edx, [eax+edx*2]
		mov	ecx, dword ptr (a_InSomeCasesTh+0CCh)[edx*4] ; "?"
		mov	ebx, 1
		shl	ebx, cl
		dec	ebx
		and	ebx, [ebp-8]
		mov	[ebp-4], ebx
		lea	edx, (aAboutToAssignT+8)[edx*4]	; "t to	assign time-critical priority to t"...
		mov	ecx, [ebp-4]
		movzx	edx, byte ptr [edx+ecx]
		mov	[ebp-4], edx
		mov	ecx, eax
		lea	eax, [ecx+eax*4]
		lea	eax, [ecx+eax*2]
		mov	ecx, dword ptr (a_InSomeCasesTh+0CCh)[eax*4] ; "?"
		shr	dword ptr [ebp-8], cl
		jmp	short loc_45E29F
; ---------------------------------------------------------------------------

loc_45E29C:				; CODE XREF: .text:0045E25Aj
		mov	[ebp-4], eax

loc_45E29F:				; CODE XREF: .text:0045E29Aj
		push	edi
		mov	eax, [esi]
		push	eax
		push	6
		call	loc_45C740
		add	esp, 0Ch
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_45E2C1
		xor	edx, edx
		mov	ebx, edx
		mov	byte ptr [ebp+edx-128h], 0
		jmp	short loc_45E2E0
; ---------------------------------------------------------------------------

loc_45E2C1:				; CODE XREF: .text:0045E2B1j
		push	100h		; nt
		lea	eax, [ebp-128h]
		push	eax		; t
		push	100h		; nw
		mov	ecx, [ebp+14h]
		push	ecx		; w
		call	Unicodetoutf
		add	esp, 10h
		mov	ebx, eax

loc_45E2E0:				; CODE XREF: .text:0045E2BFj
		inc	ebx
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_45E312
		mov	byte ptr [ebp+ebx-128h], 40h
		inc	ebx
		mov	eax, 120h
		sub	eax, ebx
		lea	edx, [ebp-128h]
		push	offset aUint	; "UINT"
		push	eax		; n
		add	edx, ebx
		push	edx		; dest
		call	StrcopyA
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_45E36E
; ---------------------------------------------------------------------------

loc_45E312:				; CODE XREF: .text:0045E2E5j
		mov	byte ptr [ebp+ebx-128h], 44h
		inc	ebx
		mov	ecx, 120h
		lea	eax, [ebp-128h]
		mov	byte ptr [ebp+ebx-128h], 23h
		inc	ebx
		sub	ecx, ebx
		sub	ecx, 10h
		add	eax, ebx
		push	ecx		; nt
		push	eax		; t
		push	100h		; nw
		mov	edx, [ebp-4]
		mov	ecx, w[edx*4]
		push	ecx		; w
		call	Unicodetoutf
		add	esp, 10h
		add	ebx, eax
		mov	eax, [ebp-8]
		lea	edx, [ebp-128h]
		push	eax
		add	edx, ebx
		push	offset a_I	; "_%i"
		push	edx		; buffer
		call	_sprintf
		add	esp, 0Ch
		add	ebx, eax

loc_45E36E:				; CODE XREF: .text:0045E310j
		inc	ebx
		push	ebx		; datasize
		lea	eax, [ebp-128h]
		push	eax		; data
		push	34h		; type
		mov	edx, [esi]
		add	edx, addr0
		push	edx		; _addr
		call	Quickinsertdata
		add	esp, 10h
		add	[esi], edi
		xor	eax, eax

loc_45E38E:				; CODE XREF: .text:0045E1F2j
					; .text:0045E232j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_45E398:				; CODE XREF: .text:0045FBF4p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF5B4h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jz	short loc_45E3BB
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_45E3BB
		mov	eax, [ebp+0Ch]
		cmp	eax, _size
		jb	short loc_45E3C3

loc_45E3BB:				; CODE XREF: .text:0045E3A8j
					; .text:0045E3AEj
		or	eax, 0FFFFFFFFh
		jmp	loc_45EA60
; ---------------------------------------------------------------------------

loc_45E3C3:				; CODE XREF: .text:0045E3B9j
		mov	edx, [ebp+10h]
		lea	ecx, [ebp-220h]
		inc	edx
		push	edx
		push	offset aMethodbody_I ; "MethodBody_%i"
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-220h]
		push	eax		; s
		push	2Bh		; type
		mov	edx, addr0
		add	edx, [ebp+0Ch]
		push	edx		; _addr
		call	QuickinsertnameW
		mov	ecx, copy
		mov	eax, [ebp+0Ch]
		add	esp, 0Ch
		mov	al, [ecx+eax]
		test	al, 3
		jz	short loc_45E41A
		mov	edx, copy
		mov	ecx, [ebp+0Ch]
		xor	edx, edx
		mov	dl, al
		and	edx, 3
		dec	edx
		jnz	short loc_45E422

loc_45E41A:				; CODE XREF: .text:0045E405j
		or	eax, 0FFFFFFFFh
		jmp	loc_45EA60
; ---------------------------------------------------------------------------

loc_45E422:				; CODE XREF: .text:0045E418j
		mov	ecx, copy
		mov	edx, [ebp+0Ch]
		xor	edx, edx
		mov	dl, al
		mov	eax, edx
		and	eax, 3
		cmp	eax, 2
		jnz	short loc_45E477
		xor	ecx, ecx
		mov	eax, copy
		mov	[ebp-4], ecx
		mov	ebx, edx
		mov	ecx, [ebp+0Ch]
		push	0		; dest
		push	offset aCor_mtiny ; "COR_MTINY"
		push	0		; char
		push	offset aFlags_codesize ; "Flags_CodeSize"
		push	1		; n
		mov	eax, _size
		push	6		; int
		sar	ebx, 2
		push	eax		; int
		lea	edx, [ebp+0Ch]
		and	ebx, 3Fh
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		jmp	loc_45E5A3
; ---------------------------------------------------------------------------

loc_45E477:				; CODE XREF: .text:0045E437j
		test	byte ptr [ebp+0Ch], 3
		jz	short loc_45E485
		or	eax, 0FFFFFFFFh
		jmp	loc_45EA60
; ---------------------------------------------------------------------------

loc_45E485:				; CODE XREF: .text:0045E47Bj
		mov	edx, [ebp+0Ch]
		add	edx, 0Ch
		cmp	edx, _size
		jb	short loc_45E49B
		or	eax, 0FFFFFFFFh
		jmp	loc_45EA60
; ---------------------------------------------------------------------------

loc_45E49B:				; CODE XREF: .text:0045E491j
		mov	ecx, [ebp+0Ch]
		mov	edx, copy
		xor	eax, eax
		mov	al, [edx+ecx]
		mov	edx, copy
		and	eax, 8
		mov	[ebp-4], eax
		mov	eax, copy
		mov	ecx, [ebp+0Ch]
		mov	esi, [edx+ecx]
		mov	edx, [ebp+0Ch]
		shr	esi, 0Ah
		and	esi, 3Ch
		mov	ebx, [eax+edx+4]
		cmp	esi, 0Ch
		jb	short loc_45E4E1
		mov	eax, [ebp+0Ch]
		add	eax, esi
		add	eax, ebx
		cmp	eax, _size
		jbe	short loc_45E4E9

loc_45E4E1:				; CODE XREF: .text:0045E4D0j
		or	eax, 0FFFFFFFFh
		jmp	loc_45EA60
; ---------------------------------------------------------------------------

loc_45E4E9:				; CODE XREF: .text:0045E4DFj
		mov	edi, [ebp+0Ch]
		push	0		; dest
		push	offset aCor_mfat ; "COR_MFAT"
		push	0		; char
		push	offset aFlags	; "Flags"
		push	4		; n
		push	6		; int
		mov	eax, _size
		push	eax		; int
		lea	edx, [ebp+0Ch]
		push	edx		; int
		call	loc_45DE54
		add	esp, 20h
		mov	ecx, _size
		lea	eax, [ebp+0Ch]
		push	0		; dest
		push	offset aUint_0	; "UINT"
		push	0		; char
		push	(offset	aFlags_codesize+0Ch) ; int
		push	4		; n
		push	6		; int
		push	ecx		; int
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		mov	edx, [ebp+0Ch]
		mov	[ebp-8], edx
		mov	ecx, _size
		push	0		; dest
		push	offset aHexdata_0 ; "HEXDATA"
		push	0		; char
		push	offset aLocalvarsigtok ; "LocalVarSigTok"
		push	4		; n
		push	6		; int
		push	ecx		; int
		lea	eax, [ebp+0Ch]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		sub	esi, 0Ch
		test	esi, esi
		jbe	short loc_45E596

loc_45E567:				; CODE XREF: .text:0045E594j
		mov	edx, [ebp+0Ch]
		mov	[ebp-8], edx
		push	0		; dest
		push	offset aHexdata_0 ; "HEXDATA"
		push	0		; char
		push	0		; int
		push	4		; n
		push	6		; int
		mov	ecx, _size
		push	ecx		; int
		lea	eax, [ebp+0Ch]
		push	eax		; int
		call	loc_45DE54
		add	esp, 20h
		sub	esi, 4
		test	esi, esi
		ja	short loc_45E567

loc_45E596:				; CODE XREF: .text:0045E565j
		mov	edx, [ebp-8]
		push	edx
		push	edi
		call	loc_45CC08
		add	esp, 8

loc_45E5A3:				; CODE XREF: .text:0045E472j
		mov	edi, [ebp+0Ch]
		mov	eax, [ebp+0Ch]
		mov	[ebp-0Ch], eax
		jmp	loc_45E742
; ---------------------------------------------------------------------------

loc_45E5B1:				; CODE XREF: .text:0045E755j
		mov	edx, [ebp-0Ch]
		mov	[ebp-8], edx
		push	0		; pmod
		push	0		; mode
		lea	ecx, [ebp-0A4Ch]
		push	ecx		; da
		mov	edx, addr0
		add	edx, [ebp-0Ch]
		push	edx		; ip
		sub	eax, [ebp-0Ch]
		push	eax		; size
		mov	eax, copy
		add	eax, [ebp-0Ch]
		push	eax		; cmd
		call	Ndisasm
		add	esp, 18h
		mov	[ebp-14h], eax
		mov	ecx, [ebp-14h]
		push	ecx
		mov	eax, [ebp-0Ch]
		push	eax
		mov	edx, 1Ah
		mov	ecx, [ebp-0Ch]
		cmp	ecx, [ebp+0Ch]
		jz	short loc_45E5FC
		add	edx, 0FFFFFFFEh

loc_45E5FC:				; CODE XREF: .text:0045E5F7j
		push	edx
		call	loc_45C740
		add	esp, 0Ch
		mov	eax, [ebp-0Ch]
		mov	[ebp-10h], eax
		mov	edx, [ebp-14h]
		add	[ebp-0Ch], edx
		mov	ecx, [ebp-0A44h]
		and	ecx, 1Fh
		cmp	ecx, 1
		jnz	short loc_45E649
		push	8		; type
		mov	eax, [ebp-0A34h] ; int
		push	eax		; dest
		mov	edx, addr0
		add	edx, [ebp-10h]	; int
		push	edx		; from
		mov	ecx, [ebp+8]
		add	ecx, 8F4h	; int
		push	ecx		; pdat
		call	Addjump
		add	esp, 10h
		jmp	loc_45E742
; ---------------------------------------------------------------------------

loc_45E649:				; CODE XREF: .text:0045E61Dj
		mov	eax, [ebp-0A44h]
		and	eax, 1Fh
		cmp	eax, 2
		jnz	short loc_45E680
		push	9		; type
		mov	edx, [ebp-0A34h] ; int
		push	edx		; dest
		mov	ecx, addr0
		add	ecx, [ebp-10h]	; int
		push	ecx		; from
		mov	eax, [ebp+8]
		add	eax, 8F4h	; int
		push	eax		; pdat
		call	Addjump
		add	esp, 10h
		jmp	loc_45E742
; ---------------------------------------------------------------------------

loc_45E680:				; CODE XREF: .text:0045E655j
		mov	edx, [ebp-0A44h]
		and	edx, 1Fh
		cmp	edx, 5
		jnz	loc_45E742
		mov	ecx, [ebp-0A38h]
		shl	ecx, 2
		add	ecx, [ebp-0Ch]
		xor	esi, esi
		mov	[ebp-18h], ecx
		jmp	loc_45E72C
; ---------------------------------------------------------------------------

loc_45E6A8:				; CODE XREF: .text:0045E73Cj
		mov	eax, [ebp-0Ch]
		mov	[ebp-8], eax
		mov	dword ptr [ebp-1Ch], 4
		mov	edx, [ebp+0Ch]
		add	edx, ebx
		sub	edx, [ebp-0Ch]
		mov	[ebp-20h], edx
		mov	ecx, [ebp-20h]
		cmp	ecx, [ebp-1Ch]
		jnb	short loc_45E6CD
		lea	eax, [ebp-20h]
		jmp	short loc_45E6D0
; ---------------------------------------------------------------------------

loc_45E6CD:				; CODE XREF: .text:0045E6C6j
		lea	eax, [ebp-1Ch]

loc_45E6D0:				; CODE XREF: .text:0045E6CBj
		mov	edx, [eax]
		mov	[ebp-14h], edx
		mov	ecx, [ebp-14h]
		push	ecx
		mov	eax, [ebp-0Ch]
		push	eax
		push	6
		call	loc_45C740
		add	esp, 0Ch
		cmp	dword ptr [ebp-14h], 4
		jnz	short loc_45E725
		mov	edx, copy
		mov	ecx, [ebp-0Ch]	; int
		mov	eax, [edx+ecx]
		mov	edx, [ebp+0Ch]
		add	eax, [ebp-18h]
		add	edx, ebx
		cmp	eax, edx
		jnb	short loc_45E725
		push	0Ah		; type
		mov	edx, addr0
		add	eax, edx
		push	eax		; dest
		add	edx, [ebp-10h]	; int
		push	edx		; from
		mov	eax, [ebp+8]
		add	eax, 8F4h	; int
		push	eax		; pdat
		call	Addjump
		add	esp, 10h

loc_45E725:				; CODE XREF: .text:0045E6EBj
					; .text:0045E703j
		mov	ecx, [ebp-14h]
		add	[ebp-0Ch], ecx
		inc	esi

loc_45E72C:				; CODE XREF: .text:0045E6A3j
		cmp	esi, [ebp-0A38h]
		jnb	short loc_45E742
		mov	eax, [ebp+0Ch]
		add	eax, ebx
		cmp	eax, [ebp-0Ch]
		ja	loc_45E6A8

loc_45E742:				; CODE XREF: .text:0045E5ACj
					; .text:0045E644j ...
		mov	eax, [ebp+0Ch]
		add	eax, ebx
		cmp	eax, [ebp-0Ch]
		jbe	short loc_45E75B
		mov	edx, [ebp-0Ch]
		cmp	edx, _size
		jb	loc_45E5B1

loc_45E75B:				; CODE XREF: .text:0045E74Aj
		mov	ecx, [ebp-8]
		push	ecx
		push	edi
		call	loc_45CC08
		add	esp, 8
		add	[ebp+0Ch], ebx
		cmp	dword ptr [ebp-4], 0
		jz	loc_45EA5E
		jmp	short loc_45E78A
; ---------------------------------------------------------------------------

loc_45E777:				; CODE XREF: .text:0045E799j
		push	1
		mov	eax, [ebp+0Ch]
		push	eax
		push	3
		call	loc_45C740
		add	esp, 0Ch
		inc	dword ptr [ebp+0Ch]

loc_45E78A:				; CODE XREF: .text:0045E775j
					; .text:0045EA58j
		test	byte ptr [ebp+0Ch], 3
		jz	short loc_45E79B
		mov	edx, [ebp+0Ch]
		cmp	edx, _size
		jbe	short loc_45E777

loc_45E79B:				; CODE XREF: .text:0045E78Ej
		mov	ecx, [ebp+0Ch]
		add	ecx, 4
		mov	eax, _size
		cmp	ecx, eax
		jb	short loc_45E7B2
		or	eax, 0FFFFFFFFh
		jmp	loc_45EA60
; ---------------------------------------------------------------------------

loc_45E7B2:				; CODE XREF: .text:0045E7A8j
		mov	edx, copy
		mov	ecx, [ebp+0Ch]
		mov	dl, [edx+ecx]
		test	dl, 1
		jnz	short loc_45E7CB
		or	eax, 0FFFFFFFFh
		jmp	loc_45EA60
; ---------------------------------------------------------------------------

loc_45E7CB:				; CODE XREF: .text:0045E7C1j
		mov	ecx, copy
		mov	ebx, [ebp+0Ch]
		xor	ecx, ecx
		mov	cl, dl
		and	ecx, 80h
		mov	[ebp-4], ecx
		mov	ecx, copy
		test	dl, 40h
		mov	ebx, [ebp+0Ch]
		jz	loc_45E938
		mov	edx, copy
		mov	ecx, [ebp+0Ch]
		xor	ebx, ebx
		mov	bl, [edx+ecx+1]
		mov	ecx, [ebp+0Ch]
		mov	edx, copy
		movzx	edx, byte ptr [edx+ecx+2]
		shl	edx, 8
		mov	ecx, copy
		add	ebx, edx
		mov	edx, [ebp+0Ch]
		movzx	ecx, byte ptr [ecx+edx+3]
		shl	ecx, 10h
		mov	edx, [ebp+0Ch]
		add	ebx, ecx
		add	edx, ebx
		cmp	eax, edx
		jnb	short loc_45E839
		or	eax, 0FFFFFFFFh
		jmp	loc_45EA60
; ---------------------------------------------------------------------------

loc_45E839:				; CODE XREF: .text:0045E82Fj
		push	0		; int
		push	0		; int
		push	ebx		; int
		mov	ecx, addr0
		add	ecx, [ebp+0Ch]
		push	ecx		; int
		push	offset aNet_fathdr ; "NET_FATHDR"
		call	loc_45C938
		add	esp, 14h
		mov	esi, eax
		test	esi, esi
		jz	loc_45EA5E
		add	[ebp+0Ch], esi
		sub	ebx, esi
		test	ebx, ebx
		jbe	loc_45E930

loc_45E86C:				; CODE XREF: .text:0045E92Aj
		push	0		; int
		push	0		; int
		push	ebx		; int
		mov	eax, addr0
		add	eax, [ebp+0Ch]
		push	eax		; int
		push	offset aNet_fatclause ;	"NET_FATCLAUSE"
		call	loc_45C938
		add	esp, 14h
		mov	esi, eax
		test	esi, esi
		jz	loc_45E930
		cmp	ebx, esi
		jb	loc_45E930
		push	4		; nvalue
		lea	eax, [ebp-0Ch]
		push	eax		; value
		push	offset aHandleroffset ;	itemname
		push	offset aNet_fatclause ;	"NET_FATCLAUSE"
		push	ebx		; ncode
		mov	edx, copy
		add	edx, [ebp+0Ch]
		push	edx		; code
		call	Getstructureitemvalue
		add	esp, 18h
		cmp	eax, 4
		jnz	short loc_45E923
		mov	ecx, [ebp-8]
		sub	ecx, edi
		cmp	ecx, [ebp-0Ch]
		jb	short loc_45E923
		mov	eax, [ebp-0Ch]
		add	eax, edi
		mov	edx, s
		xor	ecx, ecx
		mov	cl, [edx+eax]
		and	ecx, 1Fh
		cmp	ecx, 18h
		jnz	short loc_45E923
		push	offset aExceptionHandl ; "Exception handler"
		call	_T
		pop	ecx
		push	eax		; s
		push	31h		; type
		mov	eax, addr0
		add	eax, edi
		add	eax, [ebp-0Ch]
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		mov	eax, [ebp-0Ch]
		add	eax, edi
		mov	edx, s
		mov	cl, [edx+eax]
		and	cl, 0E0h
		or	cl, 1Ah
		push	ecx
		mov	edx, s
		pop	ecx
		mov	[edx+eax], cl

loc_45E923:				; CODE XREF: .text:0045E8BFj
					; .text:0045E8C9j ...
		add	[ebp+0Ch], esi
		sub	ebx, esi
		test	ebx, ebx
		ja	loc_45E86C

loc_45E930:				; CODE XREF: .text:0045E866j
					; .text:0045E88Bj ...
		add	[ebp+0Ch], ebx
		jmp	loc_45EA54
; ---------------------------------------------------------------------------

loc_45E938:				; CODE XREF: .text:0045E7EDj
		mov	eax, copy
		mov	edx, [ebp+0Ch]
		xor	ebx, ebx
		mov	bl, [eax+edx+1]
		mov	eax, [ebp+0Ch]
		add	eax, ebx
		cmp	eax, _size
		jbe	short loc_45E95B
		or	eax, 0FFFFFFFFh
		jmp	loc_45EA60
; ---------------------------------------------------------------------------

loc_45E95B:				; CODE XREF: .text:0045E951j
		push	0		; int
		push	0		; int
		push	ebx		; int
		mov	edx, addr0
		add	edx, [ebp+0Ch]
		push	edx		; int
		push	offset aNet_smallhdr ; "NET_SMALLHDR"
		call	loc_45C938
		add	esp, 14h
		mov	esi, eax
		test	esi, esi
		jz	loc_45EA5E
		add	[ebp+0Ch], esi
		sub	ebx, esi
		test	ebx, ebx
		jbe	loc_45EA51

loc_45E98E:				; CODE XREF: .text:0045EA4Bj
		push	0		; int
		push	0		; int
		push	ebx		; int
		mov	eax, addr0
		add	eax, [ebp+0Ch]
		push	eax		; int
		push	offset aNet_smallclaus ; "NET_SMALLCLAUSE"
		call	loc_45C938
		add	esp, 14h
		mov	esi, eax
		test	esi, esi
		jz	loc_45EA51
		cmp	ebx, esi
		jb	loc_45EA51
		push	4		; nvalue
		lea	eax, [ebp-0Ch]
		push	eax		; value
		push	offset aHandleroffset ;	itemname
		push	offset aNet_smallclaus ; "NET_SMALLCLAUSE"
		push	ebx		; ncode
		mov	edx, copy
		add	edx, [ebp+0Ch]
		push	edx		; code
		call	Getstructureitemvalue
		add	esp, 18h
		test	eax, eax
		jz	short loc_45EA44
		mov	ecx, [ebp-8]
		sub	ecx, edi
		cmp	ecx, [ebp-0Ch]
		jb	short loc_45EA44
		mov	eax, [ebp-0Ch]
		add	eax, edi
		mov	edx, s
		xor	ecx, ecx
		mov	cl, [edx+eax]
		and	ecx, 1Fh
		cmp	ecx, 18h
		jnz	short loc_45EA44
		push	offset aExceptionHandl ; "Exception handler"
		call	_T
		pop	ecx
		push	eax		; s
		push	31h		; type
		mov	eax, addr0
		add	eax, edi
		add	eax, [ebp-0Ch]
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		mov	eax, [ebp-0Ch]
		add	eax, edi
		mov	edx, s
		mov	cl, [edx+eax]
		and	cl, 0E0h
		or	cl, 1Ah
		push	ecx
		mov	edx, s
		pop	ecx
		mov	[edx+eax], cl

loc_45EA44:				; CODE XREF: .text:0045E9E0j
					; .text:0045E9EAj ...
		add	[ebp+0Ch], esi
		sub	ebx, esi
		test	ebx, ebx
		ja	loc_45E98E

loc_45EA51:				; CODE XREF: .text:0045E988j
					; .text:0045E9ADj ...
		add	[ebp+0Ch], ebx

loc_45EA54:				; CODE XREF: .text:0045E933j
		cmp	dword ptr [ebp-4], 0
		jnz	loc_45E78A

loc_45EA5E:				; CODE XREF: .text:0045E76Fj
					; .text:0045E859j ...
		xor	eax, eax

loc_45EA60:				; CODE XREF: .text:0045E3BEj
					; .text:0045E41Dj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_45EA68:				; CODE XREF: .text:00460B4Ap
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+0Ch]
		cmp	dword ptr [ebp+8], 0
		jz	short loc_45EA85
		lea	eax, [ebx+4]
		cmp	eax, [ebp+18h]
		jb	short loc_45EA8D

loc_45EA85:				; CODE XREF: .text:0045EA7Bj
		or	eax, 0FFFFFFFFh
		jmp	loc_45EC78
; ---------------------------------------------------------------------------

loc_45EA8D:				; CODE XREF: .text:0045EA83j
		push	4
		lea	edi, [ebx+esi]
		push	edi
		push	6
		call	loc_45C740
		mov	eax, copy
		add	edi, 4
		add	esp, 0Ch
		lea	edx, [eax+esi]
		mov	ecx, [edx+ebx]
		mov	[ebp-0Ch], ecx
		add	esi, [ebp+18h]
		mov	eax, [ebp-0Ch]
		add	eax, edi
		cmp	eax, esi
		ja	short loc_45EAC2
		cmp	eax, _size
		jbe	short loc_45EACA

loc_45EAC2:				; CODE XREF: .text:0045EAB8j
		or	eax, 0FFFFFFFFh
		jmp	loc_45EC78
; ---------------------------------------------------------------------------

loc_45EACA:				; CODE XREF: .text:0045EAC0j
		mov	ebx, edi
		jmp	loc_45EBFF
; ---------------------------------------------------------------------------

loc_45EAD1:				; CODE XREF: .text:0045EC06j
		mov	eax, copy
		mov	al, [eax+ebx]
		xor	edx, edx
		mov	dl, al
		mov	[ebp-8], edx
		mov	ecx, copy
		push	eax		; a1
		call	IstextA
		pop	ecx
		mov	[ebp-4], eax
		test	byte ptr [ebp-4], 2
		mov	eax, 1
		jnz	short loc_45EAFC
		dec	eax

loc_45EAFC:				; CODE XREF: .text:0045EAF9j
		mov	[ebp-10h], eax
		mov	edx, 1
		test	byte ptr [ebp-4], 10h
		jnz	short loc_45EB0B
		dec	edx

loc_45EB0B:				; CODE XREF: .text:0045EB08j
		mov	[ebp-14h], edx
		mov	esi, 1
		jmp	short loc_45EB38
; ---------------------------------------------------------------------------

loc_45EB15:				; CODE XREF: .text:0045EB42j
		mov	edx, copy
		mov	al, [edx+eax]
		push	eax		; a1
		call	IstextA
		pop	ecx
		test	eax, eax
		jz	short loc_45EB44
		test	al, 2
		jz	short loc_45EB30
		inc	dword ptr [ebp-10h]

loc_45EB30:				; CODE XREF: .text:0045EB2Bj
		test	al, 10h
		jz	short loc_45EB37
		inc	dword ptr [ebp-14h]

loc_45EB37:				; CODE XREF: .text:0045EB32j
		inc	esi

loc_45EB38:				; CODE XREF: .text:0045EB13j
		lea	eax, [esi+ebx]
		mov	edx, [ebp-0Ch]
		add	edx, edi
		cmp	eax, edx
		jb	short loc_45EB15

loc_45EB44:				; CODE XREF: .text:0045EB27j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_45EBB2
		cmp	esi, 3
		jb	short loc_45EBB2
		lea	ecx, [esi+ebx]
		mov	eax, [ebp-0Ch]
		add	eax, edi
		cmp	ecx, eax
		jnb	short loc_45EBB2
		lea	edx, [esi+ebx]
		mov	ecx, copy
		cmp	byte ptr [ecx+edx], 0
		jz	short loc_45EB72
		cmp	esi, 80h
		jb	short loc_45EBB2

loc_45EB72:				; CODE XREF: .text:0045EB68j
		mov	eax, esi
		shr	eax, 2
		cmp	eax, [ebp-14h]
		jb	short loc_45EBB2
		cmp	dword_57DD30, 0
		jnz	short loc_45EB8B
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_45EBB2

loc_45EB8B:				; CODE XREF: .text:0045EB83j
		lea	edx, [esi+ebx]
		mov	ecx, copy
		cmp	byte ptr [ecx+edx], 0
		jnz	short loc_45EB9F
		lea	eax, [esi+1]
		jmp	short loc_45EBA1
; ---------------------------------------------------------------------------

loc_45EB9F:				; CODE XREF: .text:0045EB98j
		mov	eax, esi

loc_45EBA1:				; CODE XREF: .text:0045EB9Dj
		push	eax
		push	ebx
		push	9
		call	loc_45C740
		add	esp, 0Ch
		inc	esi
		add	ebx, esi
		jmp	short loc_45EBFF
; ---------------------------------------------------------------------------

loc_45EBB2:				; CODE XREF: .text:0045EB48j
					; .text:0045EB4Dj ...
		cmp	dword ptr [ebp-8], 3
		jb	short loc_45EBFE
		cmp	esi, [ebp-8]
		jbe	short loc_45EBFE
		mov	eax, [ebp-8]
		shr	eax, 2
		cmp	eax, [ebp-14h]
		jb	short loc_45EBFE
		cmp	dword_57DD30, 0
		jnz	short loc_45EBD7
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_45EBFE

loc_45EBD7:				; CODE XREF: .text:0045EBCFj
		push	1
		push	ebx
		push	4
		call	loc_45C740
		add	esp, 0Ch
		mov	edx, [ebp-8]
		push	edx
		lea	ecx, [ebx+1]
		push	ecx
		push	9
		call	loc_45C740
		add	esp, 0Ch
		mov	eax, [ebp-8]
		inc	eax
		add	ebx, eax
		jmp	short loc_45EBFF
; ---------------------------------------------------------------------------

loc_45EBFE:				; CODE XREF: .text:0045EBB6j
					; .text:0045EBBBj ...
		inc	ebx

loc_45EBFF:				; CODE XREF: .text:0045EACCj
					; .text:0045EBB0j ...
		mov	edx, [ebp-0Ch]
		add	edx, edi
		cmp	ebx, edx
		jb	loc_45EAD1
		mov	ebx, edi
		jmp	short loc_45EC4B
; ---------------------------------------------------------------------------

loc_45EC10:				; CODE XREF: .text:0045EC52j
		mov	eax, s
		cmp	byte ptr [eax+ebx], 0
		jz	short loc_45EC1E
		inc	ebx
		jmp	short loc_45EC4B
; ---------------------------------------------------------------------------

loc_45EC1E:				; CODE XREF: .text:0045EC19j
		mov	edx, ebx
		mov	ecx, s
		lea	eax, [ecx+ebx]
		jmp	short loc_45EC2D
; ---------------------------------------------------------------------------

loc_45EC2B:				; CODE XREF: .text:0045EC39j
		inc	ebx
		inc	eax

loc_45EC2D:				; CODE XREF: .text:0045EC29j
		mov	ecx, [ebp-0Ch]
		add	ecx, edi
		cmp	ebx, ecx
		jnb	short loc_45EC3B
		cmp	byte ptr [eax],	0
		jz	short loc_45EC2B

loc_45EC3B:				; CODE XREF: .text:0045EC34j
		mov	eax, ebx
		sub	eax, edx
		push	eax
		push	edx
		push	8
		call	loc_45C740
		add	esp, 0Ch

loc_45EC4B:				; CODE XREF: .text:0045EC0Ej
					; .text:0045EC1Cj
		mov	edx, [ebp-0Ch]
		add	edx, edi
		cmp	ebx, edx
		jb	short loc_45EC10
		mov	ecx, s
		cmp	edi, ebx
		lea	eax, [ecx+ebx]
		jnb	short loc_45EC6C

loc_45EC61:				; CODE XREF: .text:0045EC6Aj
		dec	ebx
		dec	eax
		cmp	byte ptr [eax],	2
		jnz	short loc_45EC6C
		cmp	edi, ebx
		jb	short loc_45EC61

loc_45EC6C:				; CODE XREF: .text:0045EC5Fj
					; .text:0045EC66j
		push	ebx
		push	edi
		call	loc_45CC08
		add	esp, 8
		xor	eax, eax

loc_45EC78:				; CODE XREF: .text:0045EA88j
					; .text:0045EAC5j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
