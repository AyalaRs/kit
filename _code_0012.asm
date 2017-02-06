.code

; Exported entry  42. _Labeladdress
; Exported entry 642. Labeladdress

; int __cdecl Labeladdress(wchar_t *text, ulong	_addr, ulong reladdr, int relreg, int index, uchar *mask, int *select, ulong mode)
		public Labeladdress
Labeladdress:				; CODE XREF: .text:00406F71p
					; .text:0041352Ap ...
		push	ebp		; _Labeladdress
		mov	ebp, esp
		add	esp, 0FFFFFDE8h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	edi, [ebp+20h]
		mov	esi, [ebp+24h]
		mov	ebx, [ebp+18h]
		jnz	short loc_406AD6
		xor	eax, eax
		jmp	loc_406EDA
; ---------------------------------------------------------------------------

loc_406AD6:				; CODE XREF: .text:00406ACDj
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_406AF6
		push	0		; firsttype
		lea	edx, [ebp-218h]
		push	edx		; _name
		mov	ecx, [ebp+0Ch]
		push	ecx		; _addr
		call	Findlabel
		add	esp, 0Ch
		mov	[ebp-8], eax
		jmp	short loc_406AFB
; ---------------------------------------------------------------------------

loc_406AF6:				; CODE XREF: .text:00406ADAj
		xor	eax, eax
		mov	[ebp-8], eax

loc_406AFB:				; CODE XREF: .text:00406AF4j
		cmp	dword ptr [ebp-8], 22h
		jnz	short loc_406B26
		test	esi, 100h
		jz	short loc_406B26
		push	offset aModuleentrypoi ; "<ModuleEntryPoint>"
		lea	edx, [ebp-218h]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_406B26
		xor	ecx, ecx
		mov	[ebp-8], ecx

loc_406B26:				; CODE XREF: .text:00406AFFj
					; .text:00406B07j ...
		test	esi, 2000h
		jz	short loc_406B58
		call	Getcputhreadid
		push	eax		; threadid
		call	Findthread
		pop	ecx
		test	eax, eax
		jz	short loc_406B58
		cmp	dword ptr [eax+4ECh], 0
		jz	short loc_406B58
		mov	eax, [eax+330h]
		cmp	eax, [ebp+0Ch]
		jnz	short loc_406B58
		or	esi, 1000h

loc_406B58:				; CODE XREF: .text:00406B2Cj
					; .text:00406B3Cj ...
		mov	eax, esi
		and	eax, 1000h
		test	eax, eax
		jz	short loc_406B7B
		test	esi, 600h
		jz	short loc_406B7B
		mov	edx, 7
		mov	[ebp-10h], edx
		mov	[ebp-0Ch], edx
		jmp	loc_406C02
; ---------------------------------------------------------------------------

loc_406B7B:				; CODE XREF: .text:00406B61j
					; .text:00406B69j
		test	eax, eax
		jz	short loc_406B8C
		mov	eax, 3
		mov	[ebp-10h], eax
		mov	[ebp-0Ch], eax
		jmp	short loc_406C02
; ---------------------------------------------------------------------------

loc_406B8C:				; CODE XREF: .text:00406B7Dj
		test	esi, 200h
		jz	short loc_406BA1
		mov	edx, 4
		mov	[ebp-10h], edx
		mov	[ebp-0Ch], edx
		jmp	short loc_406C02
; ---------------------------------------------------------------------------

loc_406BA1:				; CODE XREF: .text:00406B92j
		test	esi, 400h
		jz	short loc_406BB6
		mov	eax, 5
		mov	[ebp-10h], eax
		mov	[ebp-0Ch], eax
		jmp	short loc_406C02
; ---------------------------------------------------------------------------

loc_406BB6:				; CODE XREF: .text:00406BA7j
		test	esi, 800h
		jz	short loc_406BCB
		mov	edx, 6
		mov	[ebp-10h], edx
		mov	[ebp-0Ch], edx
		jmp	short loc_406C02
; ---------------------------------------------------------------------------

loc_406BCB:				; CODE XREF: .text:00406BBCj
		test	esi, 10h
		jz	short loc_406BDC
		mov	dword ptr [ebp-0Ch], 2
		jmp	short loc_406BE1
; ---------------------------------------------------------------------------

loc_406BDC:				; CODE XREF: .text:00406BD1j
		xor	eax, eax
		mov	[ebp-0Ch], eax

loc_406BE1:				; CODE XREF: .text:00406BDAj
		test	esi, 20h
		jz	short loc_406BF3
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_406BFB
		test	ebx, ebx
		jg	short loc_406BFB

loc_406BF3:				; CODE XREF: .text:00406BE7j
		mov	ecx, [ebp-0Ch]
		mov	[ebp-10h], ecx
		jmp	short loc_406C02
; ---------------------------------------------------------------------------

loc_406BFB:				; CODE XREF: .text:00406BEDj
					; .text:00406BF1j
		mov	dword ptr [ebp-10h], 1

loc_406C02:				; CODE XREF: .text:00406B76j
					; .text:00406B8Aj ...
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_406C14
		test	edi, edi
		jz	short loc_406C14
		mov	eax, [ebp-0Ch]
		cmp	eax, [ebp-10h]
		jnz	short loc_406C27

loc_406C14:				; CODE XREF: .text:00406C06j
					; .text:00406C0Aj
		test	edi, edi
		jz	short loc_406C23
		mov	edx, [ebp-0Ch]
		or	edx, 800h
		mov	[edi], edx

loc_406C23:				; CODE XREF: .text:00406C16j
		xor	edi, edi
		jmp	short loc_406C32
; ---------------------------------------------------------------------------

loc_406C27:				; CODE XREF: .text:00406C12j
		mov	dword ptr [edi], 900h
		mov	edi, 1

loc_406C32:				; CODE XREF: .text:00406C25j
		cmp	dword ptr [ebp-8], 0
		jz	short loc_406C40
		test	esi, 0Ch
		jnz	short loc_406C4A

loc_406C40:				; CODE XREF: .text:00406C36j
		mov	eax, esi
		and	eax, 0Bh
		cmp	eax, 0Ah
		jnz	short loc_406C59

loc_406C4A:				; CODE XREF: .text:00406C3Ej
		mov	edx, [ebp+0Ch]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-14h], eax
		jmp	short loc_406C5E
; ---------------------------------------------------------------------------

loc_406C59:				; CODE XREF: .text:00406C48j
		xor	ecx, ecx
		mov	[ebp-14h], ecx

loc_406C5E:				; CODE XREF: .text:00406C57j
		test	ebx, ebx
		jg	short loc_406C69
		xor	ebx, ebx
		jmp	loc_406CE9
; ---------------------------------------------------------------------------

loc_406C69:				; CODE XREF: .text:00406C60j
		cmp	ebx, 0Ah
		jge	short loc_406C84
		push	ebx
		push	(offset	aArgumentsI_1+12h) ; "[%i]"
		mov	eax, [ebp+8]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_406C98
; ---------------------------------------------------------------------------

loc_406C84:				; CODE XREF: .text:00406C6Cj
		push	ebx
		push	offset aI__6	; "[%i.]"
		mov	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax

loc_406C98:				; CODE XREF: .text:00406C82j
		test	edi, edi
		jz	short loc_406CAD
		push	ebx		; n
		mov	ecx, [ebp-10h]
		push	ecx		; c
		mov	eax, [ebp+1Ch]
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_406CAD:				; CODE XREF: .text:00406C9Aj
		mov	edx, [ebp+1Ch]
		cmp	ebx, 0F6h
		lea	ecx, [edx+ebx]
		mov	[ebp-18h], ecx
		mov	eax, [ebp+8]
		lea	eax, [eax+ebx*2]
		jge	short loc_406CE9

loc_406CC4:				; CODE XREF: .text:00406CE7j
		mov	word ptr [eax],	20h
		test	edi, edi
		jz	short loc_406CD5
		mov	dl, [ebp-0Ch]
		mov	ecx, [ebp-18h]
		mov	[ecx], dl

loc_406CD5:				; CODE XREF: .text:00406CCBj
		inc	ebx
		inc	dword ptr [ebp-18h]
		add	eax, 2
		cmp	ebx, 9
		jge	short loc_406CE9
		cmp	ebx, 0F6h
		jl	short loc_406CC4

loc_406CE9:				; CODE XREF: .text:00406C64j
					; .text:00406CC2j ...
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_406D11
		test	esi, 4000h
		jnz	short loc_406D11
		mov	eax, esi
		and	eax, 3
		cmp	eax, 3
		jz	short loc_406D11
		mov	edx, [ebp+8]
		mov	eax, ebx
		mov	word ptr [edx+ebx*2], 0
		jmp	loc_406EDA
; ---------------------------------------------------------------------------

loc_406D11:				; CODE XREF: .text:00406CEDj
					; .text:00406CF5j ...
		mov	edx, esi
		and	edx, 0Bh
		cmp	edx, 0Ah
		jnz	short loc_406D52
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_406D52
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_406D52
		test	edi, edi
		jnz	short loc_406D52
		mov	ecx, [ebp+0Ch]
		mov	edx, ebx
		push	ecx
		add	edx, edx
		mov	eax, [ebp-14h]
		add	eax, 0Ch
		push	eax
		push	offset aS_08x	; format
		add	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		add	eax, ebx
		jmp	loc_406EDA
; ---------------------------------------------------------------------------

loc_406D52:				; CODE XREF: .text:00406D19j
					; .text:00406D1Fj ...
		mov	eax, esi
		and	eax, 3
		test	eax, eax
		jz	short loc_406D66
		cmp	eax, 3
		jz	short loc_406D66
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_406DCD

loc_406D66:				; CODE XREF: .text:00406D59j
					; .text:00406D5Ej
		mov	edx, [ebp+14h]
		push	edx		; int
		mov	edx, ebx
		mov	ecx, [ebp+10h]
		add	edx, edx
		push	ecx		; int
		mov	eax, [ebp+0Ch]
		push	eax		; int
		add	edx, [ebp+8]
		push	edx		; buffer
		call	loc_401AA8
		add	esp, 10h
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-8], 0
		jz	short loc_406DB0
		mov	ecx, esi
		and	ecx, 3
		cmp	ecx, 2
		jz	short loc_406DB0
		mov	eax, esi
		and	eax, 3
		cmp	eax, 3
		jz	short loc_406DB0
		mov	edx, [ebp-4]
		add	edx, ebx
		mov	ecx, [ebp+8]
		mov	word ptr [ecx+edx*2], 20h
		inc	dword ptr [ebp-4]

loc_406DB0:				; CODE XREF: .text:00406D89j
					; .text:00406D93j ...
		test	edi, edi
		jz	short loc_406DCA
		mov	eax, [ebp-4]
		push	eax		; n
		mov	edx, [ebp-0Ch]
		push	edx		; c
		mov	ecx, [ebp+1Ch]
		add	ecx, ebx
		push	ecx		; s
		call	_memset
		add	esp, 0Ch

loc_406DCA:				; CODE XREF: .text:00406DB2j
		add	ebx, [ebp-4]

loc_406DCD:				; CODE XREF: .text:00406D64j
		cmp	dword ptr [ebp-8], 0
		jz	loc_406ED8
		mov	eax, esi
		and	eax, 3
		cmp	eax, 3
		jz	loc_406ED8
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_406E0C
		mov	edx, [ebp-14h]
		mov	ecx, ebx
		add	edx, 0Ch
		add	ecx, ecx
		push	edx
		push	offset aS__2	; format
		add	ecx, [ebp+8]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-4], eax
		jmp	short loc_406E11
; ---------------------------------------------------------------------------

loc_406E0C:				; CODE XREF: .text:00406DE9j
		xor	eax, eax
		mov	[ebp-4], eax

loc_406E11:				; CODE XREF: .text:00406E0Aj
		mov	ecx, 100h
		lea	edx, [ebp-218h]
		sub	ecx, ebx
		push	edx		; src
		dec	ecx
		mov	eax, ebx
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+8]
		mov	edx, [ebp-4]
		add	edx, edx
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-4], eax
		test	edi, edi
		jz	short loc_406E55
		mov	ecx, [ebp-4]
		push	ecx		; n
		mov	eax, [ebp-10h]
		push	eax		; c
		mov	edx, [ebp+1Ch]
		add	edx, ebx
		push	edx		; s
		call	_memset
		add	esp, 0Ch

loc_406E55:				; CODE XREF: .text:00406E3Dj
		add	ebx, [ebp-4]
		and	esi, 3
		cmp	esi, 1
		jnz	short loc_406ED8
		mov	ecx, [ebp+1Ch]
		mov	eax, [ebp+8]
		cmp	ebx, 0F6h
		lea	eax, [eax+ebx*2]
		lea	edx, [ecx+ebx]
		jge	short loc_406E94

loc_406E74:				; CODE XREF: .text:00406E92j
		mov	word ptr [eax],	20h
		test	edi, edi
		jz	short loc_406E82
		mov	cl, [ebp-0Ch]
		mov	[edx], cl

loc_406E82:				; CODE XREF: .text:00406E7Bj
		inc	ebx
		inc	edx
		add	eax, 2
		cmp	ebx, 9
		jge	short loc_406E94
		cmp	ebx, 0F6h
		jl	short loc_406E74

loc_406E94:				; CODE XREF: .text:00406E72j
					; .text:00406E8Aj
		cmp	ebx, 0F6h
		jge	short loc_406ED8
		mov	edx, [ebp+14h]
		mov	ecx, ebx
		push	edx		; int
		add	ecx, ecx
		mov	eax, [ebp+10h]
		push	eax		; int
		mov	edx, [ebp+0Ch]
		push	edx		; int
		add	ecx, [ebp+8]
		push	ecx		; buffer
		call	loc_401AA8
		add	esp, 10h
		mov	[ebp-4], eax
		test	edi, edi
		jz	short loc_406ED5
		mov	eax, [ebp-4]
		push	eax		; n
		mov	edx, [ebp-0Ch]
		push	edx		; c
		mov	ecx, [ebp+1Ch]
		add	ecx, ebx
		push	ecx		; s
		call	_memset
		add	esp, 0Ch

loc_406ED5:				; CODE XREF: .text:00406EBDj
		add	ebx, [ebp-4]

loc_406ED8:				; CODE XREF: .text:00406DD1j
					; .text:00406DDFj ...
		mov	eax, ebx

loc_406EDA:				; CODE XREF: .text:00406AD1j
					; .text:00406D0Cj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  43. _Simpleaddress
; Exported entry 720. Simpleaddress

; int __cdecl Simpleaddress(wchar_t *text, ulong _addr, uchar *mask, int	*select)
		public Simpleaddress
Simpleaddress:				; _Simpleaddress
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	eax, dword_57DE54
		cmp	eax, 1
		jnz	short loc_406EFD
		mov	ebx, 4011h
		jmp	short loc_406F0E
; ---------------------------------------------------------------------------

loc_406EFD:				; CODE XREF: .text:00406EF4j
		cmp	eax, 2
		jnz	short loc_406F09
		mov	ebx, 4012h
		jmp	short loc_406F0E
; ---------------------------------------------------------------------------

loc_406F09:				; CODE XREF: .text:00406F00j
		mov	ebx, 4010h

loc_406F0E:				; CODE XREF: .text:00406EFBj
					; .text:00406F07j
		cmp	dword_57DE58, 0
		jz	short loc_406F1A
		or	ebx, 20h

loc_406F1A:				; CODE XREF: .text:00406F15j
		push	0		; subaddr
		push	esi		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_406F5D
		test	byte ptr [eax+9], 10h
		jz	short loc_406F5D
		mov	edx, [eax+8]
		test	edx, 20000h
		jz	short loc_406F47
		or	ebx, 800h
		jmp	short loc_406F5D
; ---------------------------------------------------------------------------

loc_406F47:				; CODE XREF: .text:00406F3Dj
		test	edx, 40000h
		jz	short loc_406F57
		or	ebx, 400h
		jmp	short loc_406F5D
; ---------------------------------------------------------------------------

loc_406F57:				; CODE XREF: .text:00406F4Dj
		or	ebx, 200h

loc_406F5D:				; CODE XREF: .text:00406F2Cj
					; .text:00406F32j ...
		push	ebx		; mode
		mov	eax, [ebp+14h]
		push	eax		; select
		mov	ecx, [ebp+10h]
		push	ecx		; mask
		push	0		; index
		push	0FFFFFFFFh	; relreg
		push	0		; reladdr
		push	esi		; _addr
		mov	eax, [ebp+8]
		push	eax		; text
		call	Labeladdress
		add	esp, 20h
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  44. _Heapsort
; Exported entry 624. Heapsort

; _DWORD __cdecl Heapsort(void *data, const int	count, const int size, _DWORD)
		public Heapsort
Heapsort:				; CODE XREF: .text:004164D4p
					; .text:0043ADD2p ...
		push	ebp		; _Heapsort
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+0Ch]
		mov	edi, [ebp+8]
		cmp	eax, 2
		jl	loc_4070A7
		dec	eax
		mov	[ebp-8], eax
		mov	edx, [ebp-8]
		sar	edx, 1
		jns	short loc_406FA6
		adc	edx, 0

loc_406FA6:				; CODE XREF: .text:00406FA1j
		mov	[ebp-4], edx
		cmp	dword ptr [ebp-4], 0
		jl	short loc_40701D

loc_406FAF:				; CODE XREF: .text:0040701Bj
		mov	esi, [ebp-4]
		jmp	short loc_407006
; ---------------------------------------------------------------------------

loc_406FB4:				; CODE XREF: .text:00407012j
		mov	ebx, esi
		add	ebx, ebx
		cmp	ebx, [ebp-8]
		jge	short loc_406FDA
		lea	eax, [ebx+1]
		imul	dword ptr [ebp+10h]
		add	eax, edi
		push	eax
		mov	edx, [ebp+10h]
		imul	edx, ebx
		add	edx, edi
		push	edx
		call	dword ptr [ebp+14h]
		add	esp, 8
		test	eax, eax
		jge	short loc_406FDA
		inc	ebx

loc_406FDA:				; CODE XREF: .text:00406FBBj
					; .text:00406FD7j
		mov	ecx, [ebp+10h]
		imul	ecx, ebx
		add	ecx, edi
		push	ecx
		mov	eax, [ebp+10h]
		imul	esi
		add	eax, edi
		push	eax
		call	dword ptr [ebp+14h]
		add	esp, 8
		test	eax, eax
		jge	short loc_407014
		push	esi		; i2
		push	ebx		; i1
		mov	edx, [ebp+10h]
		push	edx		; size
		push	edi		; base
		call	Swapmem
		add	esp, 10h
		mov	esi, ebx

loc_407006:				; CODE XREF: .text:00406FB2j
		mov	eax, [ebp-8]
		sar	eax, 1
		jns	short loc_407010
		adc	eax, 0

loc_407010:				; CODE XREF: .text:0040700Bj
		cmp	esi, eax
		jle	short loc_406FB4

loc_407014:				; CODE XREF: .text:00406FF3j
		dec	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 0
		jge	short loc_406FAF

loc_40701D:				; CODE XREF: .text:00406FADj
		cmp	dword ptr [ebp-8], 0
		jle	loc_4070A7

loc_407027:				; CODE XREF: .text:004070A5j
		mov	edx, [ebp-8]
		push	edx		; i2
		push	0		; i1
		mov	ecx, [ebp+10h]
		push	ecx		; size
		push	edi		; base
		call	Swapmem
		add	esp, 10h
		dec	dword ptr [ebp-8]
		xor	esi, esi
		jmp	short loc_407093
; ---------------------------------------------------------------------------

loc_407041:				; CODE XREF: .text:0040709Fj
		mov	ebx, esi
		add	ebx, ebx
		cmp	ebx, [ebp-8]
		jge	short loc_407067
		lea	eax, [ebx+1]
		imul	dword ptr [ebp+10h]
		add	eax, edi
		push	eax
		mov	edx, [ebp+10h]
		imul	edx, ebx
		add	edx, edi
		push	edx
		call	dword ptr [ebp+14h]
		add	esp, 8
		test	eax, eax
		jge	short loc_407067
		inc	ebx

loc_407067:				; CODE XREF: .text:00407048j
					; .text:00407064j
		mov	ecx, [ebp+10h]
		imul	ecx, ebx
		add	ecx, edi
		push	ecx
		mov	eax, [ebp+10h]
		imul	esi
		add	eax, edi
		push	eax
		call	dword ptr [ebp+14h]
		add	esp, 8
		test	eax, eax
		jge	short loc_4070A1
		push	esi		; i2
		push	ebx		; i1
		mov	edx, [ebp+10h]
		push	edx		; size
		push	edi		; base
		call	Swapmem
		add	esp, 10h
		mov	esi, ebx

loc_407093:				; CODE XREF: .text:0040703Fj
		mov	eax, [ebp-8]
		sar	eax, 1
		jns	short loc_40709D
		adc	eax, 0

loc_40709D:				; CODE XREF: .text:00407098j
		cmp	esi, eax
		jle	short loc_407041

loc_4070A1:				; CODE XREF: .text:00407080j
		cmp	dword ptr [ebp-8], 0
		jg	short loc_407027

loc_4070A7:				; CODE XREF: .text:00406F92j
					; .text:00407021j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  45. _Heapsortex
; Exported entry 625. Heapsortex

; int __cdecl Heapsortex(void *data, const int count, const int	size, int *(__cdecl *compareex)(const void *, const void *, ulong), ulong lp)
		public Heapsortex
Heapsortex:				; CODE XREF: .text:004A7810p
		push	ebp		; _Heapsortex
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+0Ch]
		mov	edi, [ebp+8]
		cmp	eax, 2
		jl	loc_4071EF
		dec	eax
		mov	[ebp-8], eax
		mov	edx, [ebp-8]
		sar	edx, 1
		jns	short loc_4070D6
		adc	edx, 0

loc_4070D6:				; CODE XREF: .text:004070D1j
		mov	[ebp-4], edx
		cmp	dword ptr [ebp-4], 0
		jl	short loc_407157

loc_4070DF:				; CODE XREF: .text:00407155j
		mov	esi, [ebp-4]
		jmp	short loc_407140
; ---------------------------------------------------------------------------

loc_4070E4:				; CODE XREF: .text:0040714Cj
		mov	ebx, esi
		add	ebx, ebx
		cmp	ebx, [ebp-8]
		jge	short loc_40710F
		mov	eax, [ebp+18h]
		push	eax
		lea	edx, [ebx+1]
		imul	edx, [ebp+10h]
		add	edx, edi
		push	edx
		mov	ecx, [ebp+10h]
		imul	ecx, ebx
		add	ecx, edi
		push	ecx
		call	dword ptr [ebp+14h]
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_40710F
		inc	ebx

loc_40710F:				; CODE XREF: .text:004070EBj
					; .text:0040710Cj
		mov	eax, [ebp+18h]
		push	eax
		mov	edx, [ebp+10h]
		imul	edx, ebx
		add	edx, edi
		push	edx
		mov	ecx, [ebp+10h]
		imul	ecx, esi
		add	ecx, edi
		push	ecx
		call	dword ptr [ebp+14h]
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_40714E
		push	esi		; i2
		push	ebx		; i1
		mov	eax, [ebp+10h]
		push	eax		; size
		push	edi		; base
		call	Swapmem
		add	esp, 10h
		mov	esi, ebx

loc_407140:				; CODE XREF: .text:004070E2j
		mov	eax, [ebp-8]
		sar	eax, 1
		jns	short loc_40714A
		adc	eax, 0

loc_40714A:				; CODE XREF: .text:00407145j
		cmp	esi, eax
		jle	short loc_4070E4

loc_40714E:				; CODE XREF: .text:0040712Dj
		dec	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 0
		jge	short loc_4070DF

loc_407157:				; CODE XREF: .text:004070DDj
		cmp	dword ptr [ebp-8], 0
		jle	loc_4071EF

loc_407161:				; CODE XREF: .text:004071E9j
		mov	edx, [ebp-8]
		push	edx		; i2
		push	0		; i1
		mov	ecx, [ebp+10h]
		push	ecx		; size
		push	edi		; base
		call	Swapmem
		add	esp, 10h
		dec	dword ptr [ebp-8]
		xor	esi, esi
		jmp	short loc_4071D7
; ---------------------------------------------------------------------------

loc_40717B:				; CODE XREF: .text:004071E3j
		mov	ebx, esi
		add	ebx, ebx
		cmp	ebx, [ebp-8]
		jge	short loc_4071A6
		mov	eax, [ebp+18h]
		push	eax
		lea	edx, [ebx+1]
		imul	edx, [ebp+10h]
		add	edx, edi
		push	edx
		mov	ecx, [ebp+10h]
		imul	ecx, ebx
		add	ecx, edi
		push	ecx
		call	dword ptr [ebp+14h]
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4071A6
		inc	ebx

loc_4071A6:				; CODE XREF: .text:00407182j
					; .text:004071A3j
		mov	eax, [ebp+18h]
		push	eax
		mov	edx, [ebp+10h]
		imul	edx, ebx
		add	edx, edi
		push	edx
		mov	ecx, [ebp+10h]
		imul	ecx, esi
		add	ecx, edi
		push	ecx
		call	dword ptr [ebp+14h]
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4071E5
		push	esi		; i2
		push	ebx		; i1
		mov	eax, [ebp+10h]
		push	eax		; size
		push	edi		; base
		call	Swapmem
		add	esp, 10h
		mov	esi, ebx

loc_4071D7:				; CODE XREF: .text:00407179j
		mov	eax, [ebp-8]
		sar	eax, 1
		jns	short loc_4071E1
		adc	eax, 0

loc_4071E1:				; CODE XREF: .text:004071DCj
		cmp	esi, eax
		jle	short loc_40717B

loc_4071E5:				; CODE XREF: .text:004071C4j
		cmp	dword ptr [ebp-8], 0
		jg	loc_407161

loc_4071EF:				; CODE XREF: .text:004070C2j
					; .text:0040715Bj
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		