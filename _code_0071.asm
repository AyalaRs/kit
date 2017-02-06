.code

; Exported entry 289. _Stringtotext
; Exported entry 730. Stringtotext

; int __cdecl Stringtotext(wchar_t *data, int ndata, wchar_t *text, int	ntext, int stopatzero)
		public Stringtotext
Stringtotext:				; CODE XREF: .text:0047E6BFp
					; .text:0047E769p ...
		push	ebp		; _Stringtotext
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		xor	edx, edx
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+8]
		mov	edi, [ebp+10h]
		mov	[ebp-8], edx
		test	eax, eax
		jz	short loc_487198
		test	edi, edi
		jz	short loc_487198
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_487198
		cmp	dword ptr [ebp+14h], 0Ch
		jge	short loc_48719F

loc_487198:				; CODE XREF: .text:00487186j
					; .text:0048718Aj ...
		xor	eax, eax
		jmp	loc_487478
; ---------------------------------------------------------------------------

loc_48719F:				; CODE XREF: .text:00487196j
		xor	ecx, ecx
		mov	ebx, ecx
		mov	[ebp-4], ecx
		mov	edx, [ebp-4]
		lea	eax, [eax+edx*2]
		mov	[ebp-0Ch], eax
		jmp	loc_487430
; ---------------------------------------------------------------------------

loc_4871B4:				; CODE XREF: .text:00487440j
		mov	eax, [ebp-0Ch]
		mov	si, [eax]
		cmp	dword_57DD3C, 1
		jnz	loc_487278
		test	si, si
		jnz	short loc_4871D2
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4871E8

loc_4871D2:				; CODE XREF: .text:004871CAj
		cmp	si, 9
		jz	short loc_4871E8
		cmp	si, 0Ah
		jz	short loc_4871E8
		cmp	si, 0Dh
		jnz	loc_487278

loc_4871E8:				; CODE XREF: .text:004871D0j
					; .text:004871D6j ...
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4871FA
		mov	word ptr [edi+ebx*2], 22h
		inc	ebx
		xor	eax, eax
		mov	[ebp-8], eax

loc_4871FA:				; CODE XREF: .text:004871ECj
		cmp	dword ptr [ebp-4], 0
		jle	short loc_487207
		mov	word ptr [edi+ebx*2], 2Ch
		inc	ebx

loc_487207:				; CODE XREF: .text:004871FEj
		test	si, si
		jnz	short loc_487224
		push	offset a0	; format
		lea	edx, [edi+ebx*2]
		push	edx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax
		jmp	loc_487429
; ---------------------------------------------------------------------------

loc_487224:				; CODE XREF: .text:0048720Aj
		cmp	si, 9
		jnz	short loc_487242
		push	offset aTab	; "TAB"
		lea	ecx, [edi+ebx*2]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax
		jmp	loc_487429
; ---------------------------------------------------------------------------

loc_487242:				; CODE XREF: .text:00487228j
		cmp	si, 0Ah
		jnz	short loc_487260
		push	offset aLf	; "LF"
		lea	eax, [edi+ebx*2]
		push	eax		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax
		jmp	loc_487429
; ---------------------------------------------------------------------------

loc_487260:				; CODE XREF: .text:00487246j
		push	offset aCr	; format
		lea	edx, [edi+ebx*2]
		push	edx		; buffer
		call	_swprintf
		add	esp, 8
		add	ebx, eax
		jmp	loc_487429
; ---------------------------------------------------------------------------

loc_487278:				; CODE XREF: .text:004871C1j
					; .text:004871E2j
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_487299
		cmp	dword ptr [ebp-4], 0
		jle	short loc_48728B
		mov	word ptr [edi+ebx*2], 2Ch
		inc	ebx

loc_48728B:				; CODE XREF: .text:00487282j
		mov	word ptr [edi+ebx*2], 22h
		inc	ebx
		mov	dword ptr [ebp-8], 1

loc_487299:				; CODE XREF: .text:0048727Cj
		test	si, si
		jnz	short loc_4872D7
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4872AF
		mov	ecx, [ebp-4]
		mov	[ebp+0Ch], ecx
		jmp	loc_487429
; ---------------------------------------------------------------------------

loc_4872AF:				; CODE XREF: .text:004872A2j
		cmp	dword_57DD3C, 2
		jnz	short loc_4872CB
		mov	word ptr [edi+ebx*2], 5Ch
		inc	ebx
		mov	word ptr [edi+ebx*2], 30h
		inc	ebx
		jmp	loc_487429
; ---------------------------------------------------------------------------

loc_4872CB:				; CODE XREF: .text:004872B6j
		mov	word ptr [edi+ebx*2], 20h
		inc	ebx
		jmp	loc_487429
; ---------------------------------------------------------------------------

loc_4872D7:				; CODE XREF: .text:0048729Cj
		cmp	si, 9
		jnz	short loc_4872F9
		cmp	dword_57DD3C, 2
		jnz	short loc_4872F9
		mov	word ptr [edi+ebx*2], 5Ch
		inc	ebx
		mov	word ptr [edi+ebx*2], 74h
		inc	ebx
		jmp	loc_487429
; ---------------------------------------------------------------------------

loc_4872F9:				; CODE XREF: .text:004872DBj
					; .text:004872E4j
		cmp	si, 0Ah
		jnz	short loc_48731B
		cmp	dword_57DD3C, 2
		jnz	short loc_48731B
		mov	word ptr [edi+ebx*2], 5Ch
		inc	ebx
		mov	word ptr [edi+ebx*2], 6Eh
		inc	ebx
		jmp	loc_487429
; ---------------------------------------------------------------------------

loc_48731B:				; CODE XREF: .text:004872FDj
					; .text:00487306j
		cmp	si, 0Dh
		jnz	short loc_48733D
		cmp	dword_57DD3C, 2
		jnz	short loc_48733D
		mov	word ptr [edi+ebx*2], 5Ch
		inc	ebx
		mov	word ptr [edi+ebx*2], 72h
		inc	ebx
		jmp	loc_487429
; ---------------------------------------------------------------------------

loc_48733D:				; CODE XREF: .text:0048731Fj
					; .text:00487328j
		cmp	si, 5Ch
		jnz	short loc_48735D
		cmp	dword_57DD3C, 2
		jnz	short loc_48735D
		mov	word ptr [edi+ebx*2], 5Ch
		inc	ebx
		mov	[edi+ebx*2], si
		inc	ebx
		jmp	loc_487429
; ---------------------------------------------------------------------------

loc_48735D:				; CODE XREF: .text:00487341j
					; .text:0048734Aj
		cmp	si, 22h
		jnz	short loc_48737D
		cmp	dword_57DD3C, 1
		jnz	short loc_48737D
		mov	word ptr [edi+ebx*2], 22h
		inc	ebx
		mov	[edi+ebx*2], si
		inc	ebx
		jmp	loc_487429
; ---------------------------------------------------------------------------

loc_48737D:				; CODE XREF: .text:00487361j
					; .text:0048736Aj
		cmp	si, 22h
		jnz	short loc_48739D
		cmp	dword_57DD3C, 2
		jnz	short loc_48739D
		mov	word ptr [edi+ebx*2], 5Ch
		inc	ebx
		mov	[edi+ebx*2], si
		inc	ebx
		jmp	loc_487429
; ---------------------------------------------------------------------------

loc_48739D:				; CODE XREF: .text:00487381j
					; .text:0048738Aj
		push	esi		; a1
		call	IstextW
		pop	ecx
		test	eax, eax
		jz	short loc_4873AF
		mov	[edi+ebx*2], si
		inc	ebx
		jmp	short loc_487429
; ---------------------------------------------------------------------------

loc_4873AF:				; CODE XREF: .text:004873A6j
		cmp	dword_5BE698, 0
		jz	short loc_4873C1
		mov	word ptr [edi+ebx*2], 2Eh
		inc	ebx
		jmp	short loc_487429
; ---------------------------------------------------------------------------

loc_4873C1:				; CODE XREF: .text:004873B6j
		cmp	dword_57DD3C, 1
		jnz	short loc_487402
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4873DC
		mov	word ptr [edi+ebx*2], 22h
		inc	ebx
		xor	eax, eax
		mov	[ebp-8], eax

loc_4873DC:				; CODE XREF: .text:004873CEj
		cmp	dword ptr [ebp-4], 0
		jle	short loc_4873E9
		mov	word ptr [edi+ebx*2], 2Ch
		inc	ebx

loc_4873E9:				; CODE XREF: .text:004873E0j
		movzx	edx, si
		push	edx
		push	offset a02x_2	; "%02X"
		lea	ecx, [edi+ebx*2]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_487429
; ---------------------------------------------------------------------------

loc_487402:				; CODE XREF: .text:004873C8j
		cmp	dword_57DD3C, 2
		jnz	short loc_487424
		movzx	eax, si
		push	eax
		push	offset aX02x_1	; "\\x%02X"
		lea	edx, [edi+ebx*2]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_487429
; ---------------------------------------------------------------------------

loc_487424:				; CODE XREF: .text:00487409j
		mov	[edi+ebx*2], si
		inc	ebx

loc_487429:				; CODE XREF: .text:0048721Fj
					; .text:0048723Dj ...
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-0Ch], 2

loc_487430:				; CODE XREF: .text:004871AFj
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp+0Ch]
		jge	short loc_487446
		mov	eax, [ebp+14h]
		add	eax, 0FFFFFFF4h
		cmp	ebx, eax
		jl	loc_4871B4

loc_487446:				; CODE XREF: .text:00487436j
		cmp	dword ptr [ebp-8], 0
		jz	short loc_487453
		mov	word ptr [edi+ebx*2], 22h
		inc	ebx

loc_487453:				; CODE XREF: .text:0048744Aj
		mov	edx, [ebp-4]
		cmp	edx, [ebp+0Ch]
		jge	short loc_487470
		mov	word ptr [edi+ebx*2], 2Eh
		inc	ebx
		mov	word ptr [edi+ebx*2], 2Eh
		inc	ebx
		mov	word ptr [edi+ebx*2], 2Eh
		inc	ebx

loc_487470:				; CODE XREF: .text:00487459j
		mov	word ptr [edi+ebx*2], 0
		mov	eax, ebx

loc_487478:				; CODE XREF: .text:0048719Aj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 290. _Isstring
; Exported entry 637. Isstring

; int __cdecl Isstring(ulong _addr, int isstatic, wchar_t *symb,	int nsymb)
		public Isstring
Isstring:				; CODE XREF: .text:0044232Bp
					; .text:00442619p ...
		push	ebp		; _Isstring
		mov	ebp, esp
		add	esp, 0FFFFFCE0h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		cmp	ebx, 1000h
		jb	short loc_4874A3
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4874A3
		cmp	dword ptr [ebp+14h], 10h
		jge	short loc_4874AA

loc_4874A3:				; CODE XREF: .text:00487495j
					; .text:0048749Bj
		xor	eax, eax
		jmp	loc_487D6C
; ---------------------------------------------------------------------------

loc_4874AA:				; CODE XREF: .text:004874A1j
		test	byte ptr [ebp+0Ch], 1
		jz	short loc_4874CB
		push	ebx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_4874CB
		test	dword ptr [eax+8], 12407000h
		jnz	short loc_4874CB
		xor	eax, eax
		jmp	loc_487D6C
; ---------------------------------------------------------------------------

loc_4874CB:				; CODE XREF: .text:004874AEj
					; .text:004874B9j ...
		mov	edi, 100h
		lea	eax, [ebp-1Ch]
		push	eax		; psize
		push	ebx		; _addr
		call	Finddecode
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	loc_48757C
		xor	eax, eax
		mov	al, [esi]
		and	eax, 1Fh
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jz	short loc_487522
		cmp	dword ptr [ebp-8], 2
		jz	short loc_487522
		cmp	dword ptr [ebp-8], 3
		jz	short loc_487522
		cmp	dword ptr [ebp-8], 9
		jz	short loc_487522
		cmp	dword ptr [ebp-8], 0Ah
		jz	short loc_487522
		cmp	dword ptr [ebp-8], 0Bh
		jz	short loc_487522
		cmp	dword ptr [ebp-8], 0Ch
		jz	short loc_487522
		xor	eax, eax
		jmp	loc_487D6C
; ---------------------------------------------------------------------------

loc_487522:				; CODE XREF: .text:004874F5j
					; .text:004874FBj ...
		cmp	dword ptr [ebp-8], 9
		jz	short loc_48753A
		cmp	dword ptr [ebp-8], 0Ah
		jz	short loc_48753A
		cmp	dword ptr [ebp-8], 0Bh
		jz	short loc_48753A
		cmp	dword ptr [ebp-8], 0Ch
		jnz	short loc_48757C

loc_48753A:				; CODE XREF: .text:00487526j
					; .text:0048752Cj ...
		mov	eax, 1
		lea	edx, [esi+1]
		jmp	short loc_48756E
; ---------------------------------------------------------------------------

loc_487544:				; CODE XREF: .text:00487578j
		xor	ecx, ecx
		mov	cl, [edx]
		and	ecx, 1Fh
		mov	[ebp-8], ecx
		cmp	dword ptr [ebp-8], 2
		jz	short loc_48756C
		cmp	dword ptr [ebp-8], 9
		jz	short loc_48756C
		cmp	dword ptr [ebp-8], 0Ah
		jz	short loc_48756C
		cmp	dword ptr [ebp-8], 0Bh
		jz	short loc_48756C
		cmp	dword ptr [ebp-8], 0Ch
		jnz	short loc_48757A

loc_48756C:				; CODE XREF: .text:00487552j
					; .text:00487558j ...
		inc	eax
		inc	edx

loc_48756E:				; CODE XREF: .text:00487542j
		cmp	eax, 100h
		jnb	short loc_48757A
		cmp	eax, [ebp-1Ch]
		jb	short loc_487544

loc_48757A:				; CODE XREF: .text:0048756Aj
					; .text:00487573j
		mov	edi, eax

loc_48757C:				; CODE XREF: .text:004874E1j
					; .text:00487538j
		push	5		; mode
		push	edi		; size
		push	ebx		; _addr
		lea	eax, [ebp-120h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	edi, eax
		cmp	edi, 3
		jl	short loc_4875A1
		test	byte ptr [ebp+0Ch], 2
		jz	short loc_4875A8
		cmp	edi, 10h
		jg	short loc_4875A8

loc_4875A1:				; CODE XREF: .text:00487594j
		xor	eax, eax
		jmp	loc_487D6C
; ---------------------------------------------------------------------------

loc_4875A8:				; CODE XREF: .text:0048759Aj
					; .text:0048759Fj
		test	esi, esi
		jz	loc_4876A2
		xor	edx, edx
		mov	dl, [esi]
		and	edx, 1Fh
		mov	[ebp-8], edx
		cmp	dword ptr [ebp-8], 9
		jnz	short loc_487630
		push	offset aAscii_0	; "ASCII "
		mov	ecx, [ebp+14h]
		push	ecx		; n
		mov	eax, [ebp+10h]
		push	eax		; dest
		call	StrcopyW
		mov	ebx, eax
		mov	eax, [ebp+14h]
		sub	eax, ebx
		add	esp, 0Ch
		dec	eax
		cmp	edi, eax
		jle	short loc_4875E3
		mov	edi, eax

loc_4875E3:				; CODE XREF: .text:004875DFj
		test	edi, edi
		jge	short loc_4875E9
		xor	edi, edi

loc_4875E9:				; CODE XREF: .text:004875E5j
		push	100h		; nw
		lea	eax, [ebp-320h]
		push	eax		; w
		push	edi		; ns
		lea	edx, [ebp-120h]
		push	edx		; s
		call	Asciitounicode
		add	esp, 10h
		mov	esi, eax
		mov	edx, ebx
		lea	ecx, [ebp-320h]
		push	1		; stopatzero
		add	edx, edx
		mov	eax, [ebp+14h]
		sub	eax, ebx
		push	eax		; ntext
		add	edx, [ebp+10h]
		push	edx		; text
		push	esi		; ndata
		push	ecx		; data
		call	Stringtotext
		add	esp, 14h
		add	ebx, eax
		mov	eax, ebx
		jmp	loc_487D6C
; ---------------------------------------------------------------------------

loc_487630:				; CODE XREF: .text:004875BEj
		cmp	dword ptr [ebp-8], 0Bh
		jnz	short loc_4876A2
		push	offset aUnicode_6 ; "UNICODE \""
		mov	edx, [ebp+14h]
		dec	edx
		push	edx		; n
		mov	ecx, [ebp+10h]
		push	ecx		; dest
		call	StrcopyW
		mov	ebx, eax
		mov	eax, [ebp+14h]
		sub	eax, ebx
		add	esp, 0Ch
		shr	edi, 1
		dec	eax
		cmp	edi, eax
		jle	short loc_48765C
		mov	edi, eax

loc_48765C:				; CODE XREF: .text:00487658j
		test	edi, edi
		jge	short loc_487662
		xor	edi, edi

loc_487662:				; CODE XREF: .text:0048765Ej
		lea	eax, [ebp-120h]
		inc	edi
		push	eax		; src
		mov	eax, ebx
		push	edi		; n
		add	eax, eax
		add	eax, [ebp+10h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	ecx, ebx
		add	ecx, ecx
		push	(offset	aUnicode_6+10h)	; src
		mov	edx, [ebp+14h]
		sub	edx, ebx
		dec	edx
		push	edx		; n
		add	ecx, [ebp+10h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, ebx
		jmp	loc_487D6C
; ---------------------------------------------------------------------------

loc_4876A2:				; CODE XREF: .text:004875AAj
					; .text:00487634j
		push	ebx		; _addr
		call	Findmodule
		pop	ecx
		mov	esi, eax
		test	esi, esi
		jz	short loc_4876E2
		push	ebx		; _addr
		push	esi		; pmod
		call	Findfixup
		add	esp, 8
		test	eax, eax
		jz	short loc_4876E2
		cmp	ebx, [eax]
		jb	short loc_4876C8
		xor	eax, eax
		jmp	loc_487D6C
; ---------------------------------------------------------------------------

loc_4876C8:				; CODE XREF: .text:004876BFj
		mov	edx, [eax]
		mov	ecx, edi
		add	ecx, ebx
		cmp	edx, ecx
		jnb	short loc_4876E2
		mov	edi, [eax]
		sub	edi, ebx
		cmp	edi, 3
		jge	short loc_4876E2
		xor	eax, eax
		jmp	loc_487D6C
; ---------------------------------------------------------------------------

loc_4876E2:				; CODE XREF: .text:004876ADj
					; .text:004876BBj ...
		mov	al, [ebp-120h]
		cmp	al, 0C3h
		jz	short loc_4876FC
		cmp	al, 0CCh
		jz	short loc_4876FC
		cmp	al, 0E8h
		jz	short loc_4876FC
		cmp	al, 0E9h
		jz	short loc_4876FC
		cmp	al, 0EBh
		jnz	short loc_487720

loc_4876FC:				; CODE XREF: .text:004876EAj
					; .text:004876EEj ...
		test	esi, esi
		jz	short loc_487714
		mov	eax, [esi+458h]
		cmp	ebx, eax
		jb	short loc_487720
		add	eax, [esi+45Ch]
		cmp	ebx, eax
		jnb	short loc_487720

loc_487714:				; CODE XREF: .text:004876FEj
		xor	edx, edx
		mov	[ebp-10h], edx
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		jmp	short loc_48773F
; ---------------------------------------------------------------------------

loc_487720:				; CODE XREF: .text:004876FAj
					; .text:00487708j ...
		mov	al, [ebp-120h]
		push	eax		; a1
		call	IstextA
		pop	ecx
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 2
		mov	edx, 1
		jz	short loc_48773C
		dec	edx

loc_48773C:				; CODE XREF: .text:00487739j
		mov	[ebp-14h], edx

loc_48773F:				; CODE XREF: .text:0048771Ej
		xor	ecx, ecx
		mov	esi, 1
		mov	cl, [ebp-120h]
		cmp	edi, esi
		mov	[ebp-4], ecx
		lea	ebx, [ebp-11Fh]
		jle	short loc_48777A

loc_487759:				; CODE XREF: .text:00487778j
		mov	al, [ebx]
		push	eax		; a1
		call	IstextA
		pop	ecx
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jz	short loc_48777A
		cmp	dword ptr [ebp-8], 2
		jnz	short loc_487774
		inc	dword ptr [ebp-14h]

loc_487774:				; CODE XREF: .text:0048776Fj
		inc	esi
		inc	ebx
		cmp	edi, esi
		jg	short loc_487759

loc_48777A:				; CODE XREF: .text:00487757j
					; .text:00487769j
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4878AC
		cmp	esi, 2
		jl	loc_4878AC
		cmp	edi, esi
		jz	short loc_48779F
		cmp	byte ptr [ebp+esi-120h], 0
		jnz	loc_4878AC

loc_48779F:				; CODE XREF: .text:0048778Fj
		cmp	dword_57DD34, 0
		jz	loc_487838
		cmp	dword ptr [ebp-4], 20h
		jge	loc_487838
		cmp	esi, [ebp-4]
		jle	short loc_487838
		xor	edx, edx
		mov	dl, [ebp-11Fh]
		cmp	esi, edx
		jg	short loc_487838
		test	byte ptr [ebp+0Ch], 2
		jz	short loc_4877D3
		cmp	dword ptr [ebp-4], 10h
		jle	short loc_487838

loc_4877D3:				; CODE XREF: .text:004877CBj
		mov	ecx, [ebp-4]
		push	ecx
		push	offset aAscii02x ; format
		mov	eax, [ebp+10h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		lea	eax, [ebp-320h]
		lea	ecx, [ebp-11Fh]
		push	100h		; nw
		push	eax		; w
		mov	edx, [ebp-4]
		push	edx		; ns
		push	ecx		; s
		call	Asciitounicode
		add	esp, 10h
		mov	[ebp-4], eax
		mov	edx, ebx
		add	edx, edx
		push	1		; stopatzero
		mov	eax, [ebp+14h]
		sub	eax, ebx
		push	eax		; ntext
		lea	eax, [ebp-320h]
		add	edx, [ebp+10h]
		push	edx		; text
		mov	ecx, [ebp-4]
		push	ecx		; ndata
		push	eax		; data
		call	Stringtotext
		add	esp, 14h
		add	ebx, eax
		mov	eax, ebx
		jmp	loc_487D6C
; ---------------------------------------------------------------------------

loc_487838:				; CODE XREF: .text:004877A6j
					; .text:004877B0j ...
		cmp	esi, 2
		jg	short loc_487843
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_4878AC

loc_487843:				; CODE XREF: .text:0048783Bj
		test	byte ptr [ebp+0Ch], 2
		jz	short loc_48784E
		cmp	esi, 10h
		jle	short loc_4878AC

loc_48784E:				; CODE XREF: .text:00487847j
		push	offset aAscii_0	; "ASCII "
		mov	edx, [ebp+14h]
		push	edx		; n
		mov	ecx, [ebp+10h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		lea	eax, [ebp-320h]
		lea	edx, [ebp-120h]
		push	100h		; nw
		push	eax		; w
		push	esi		; ns
		push	edx		; s
		call	Asciitounicode
		add	esp, 10h
		mov	esi, eax
		mov	eax, ebx
		lea	edx, [ebp-320h]
		push	1		; stopatzero
		add	eax, eax
		mov	ecx, [ebp+14h]
		sub	ecx, ebx
		push	ecx		; ntext
		add	eax, [ebp+10h]
		push	eax		; text
		push	esi		; ndata
		push	edx		; data
		call	Stringtotext
		add	esp, 14h
		add	ebx, eax
		mov	eax, ebx
		jmp	loc_487D6C
; ---------------------------------------------------------------------------

loc_4878AC:				; CODE XREF: .text:0048777Ej
					; .text:00487787j ...
		cmp	dword_57DD34, 0
		jz	loc_4879E7
		cmp	dword ptr [ebp-4], 2
		jl	loc_4879E7
		cmp	esi, [ebp-4]
		jle	loc_4879E7
		test	byte ptr [ebp+0Ch], 2
		jz	short loc_4878DC
		cmp	dword ptr [ebp-4], 10h
		jle	loc_4879E7

loc_4878DC:				; CODE XREF: .text:004878D0j
		mov	dl, [ebp-11Fh]
		push	edx
		call	IsrareA
		pop	ecx
		test	eax, eax
		jz	short loc_4878FD
		xor	ecx, ecx
		mov	cl, [ebp-11Fh]
		cmp	esi, ecx
		jg	loc_4879E7

loc_4878FD:				; CODE XREF: .text:004878EBj
		cmp	dword ptr [ebp-4], 3
		jg	short loc_487982
		mov	al, [ebp-11Fh]
		push	eax
		call	IsrareA
		pop	ecx
		test	eax, eax
		jnz	loc_4879E7
		mov	dl, [ebp-11Fh]
		push	edx		; a1
		call	IstextA
		pop	ecx
		cmp	eax, 2
		jz	loc_4879E7
		mov	cl, [ebp-11Eh]
		push	ecx
		call	IsrareA
		pop	ecx
		test	eax, eax
		jnz	loc_4879E7
		mov	al, [ebp-11Eh]
		push	eax		; a1
		call	IstextA
		pop	ecx
		cmp	eax, 2
		jz	loc_4879E7
		cmp	dword ptr [ebp-4], 3
		jl	short loc_487982
		mov	dl, [ebp-11Dh]
		push	edx
		call	IsrareA
		pop	ecx
		test	eax, eax
		jnz	short loc_4879E7
		mov	cl, [ebp-11Dh]
		push	ecx		; a1
		call	IstextA
		pop	ecx
		cmp	eax, 2
		jz	short loc_4879E7

loc_487982:				; CODE XREF: .text:00487901j
					; .text:0048795Dj
		mov	eax, [ebp-4]
		push	eax
		push	offset aAscii02x ; format
		mov	edx, [ebp+10h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		lea	eax, [ebp-320h]
		lea	ecx, [ebp-11Fh]
		push	100h		; nw
		push	eax		; w
		mov	edx, [ebp-4]
		push	edx		; ns
		push	ecx		; s
		call	Asciitounicode
		add	esp, 10h
		mov	[ebp-4], eax
		mov	edx, ebx
		add	edx, edx
		push	1		; stopatzero
		mov	eax, [ebp+14h]
		sub	eax, ebx
		push	eax		; ntext
		lea	eax, [ebp-320h]
		add	edx, [ebp+10h]
		push	edx		; text
		mov	ecx, [ebp-4]
		push	ecx		; ndata
		push	eax		; data
		call	Stringtotext
		add	esp, 14h
		add	ebx, eax
		mov	eax, ebx
		jmp	loc_487D6C
; ---------------------------------------------------------------------------

loc_4879E7:				; CODE XREF: .text:004878B3j
					; .text:004878BDj ...
		mov	dword ptr [ebp-0Ch], 1
		xor	edx, edx
		mov	[ebp-18h], edx
		xor	esi, esi
		lea	ebx, [ebp-120h]
		jmp	loc_487B3C
; ---------------------------------------------------------------------------

loc_487A00:				; CODE XREF: .text:00487B44j
		mov	al, [ebx]
		test	al, al
		jz	loc_487B4A
		test	al, 80h
		jnz	short loc_487A27
		push	eax		; a1
		call	IstextA
		pop	ecx
		test	eax, eax
		jnz	loc_487B3A
		xor	edx, edx
		mov	[ebp-0Ch], edx
		jmp	loc_487B3A
; ---------------------------------------------------------------------------

loc_487A27:				; CODE XREF: .text:00487A0Cj
		xor	ecx, ecx
		mov	cl, [ebx]
		and	ecx, 0E0h
		cmp	ecx, 0C0h
		jnz	short loc_487A71
		lea	eax, [esi+1]
		cmp	edi, eax
		jg	short loc_487A4A
		xor	edx, edx
		mov	[ebp-0Ch], edx
		jmp	loc_487B3A
; ---------------------------------------------------------------------------

loc_487A4A:				; CODE XREF: .text:00487A3Ej
		xor	ecx, ecx
		mov	cl, [ebx+1]
		and	ecx, 0C0h
		cmp	ecx, 80h
		jz	short loc_487A67
		xor	eax, eax
		mov	[ebp-0Ch], eax
		jmp	loc_487B3A
; ---------------------------------------------------------------------------

loc_487A67:				; CODE XREF: .text:00487A5Bj
		inc	dword ptr [ebp-18h]
		inc	esi
		inc	ebx
		jmp	loc_487B3A
; ---------------------------------------------------------------------------

loc_487A71:				; CODE XREF: .text:00487A37j
		xor	edx, edx
		mov	dl, [ebx]
		and	edx, 0F0h
		cmp	edx, 0E0h
		jnz	short loc_487ACC
		lea	ecx, [esi+2]
		cmp	edi, ecx
		jg	short loc_487A94
		xor	eax, eax
		mov	[ebp-0Ch], eax
		jmp	loc_487B3A
; ---------------------------------------------------------------------------

loc_487A94:				; CODE XREF: .text:00487A88j
		xor	edx, edx
		mov	dl, [ebx+1]
		and	edx, 0C0h
		cmp	edx, 80h
		jnz	short loc_487ABA
		xor	ecx, ecx
		mov	cl, [ebx+2]
		and	ecx, 0C0h
		cmp	ecx, 80h
		jz	short loc_487AC1

loc_487ABA:				; CODE XREF: .text:00487AA5j
		xor	eax, eax
		mov	[ebp-0Ch], eax
		jmp	short loc_487B3A
; ---------------------------------------------------------------------------

loc_487AC1:				; CODE XREF: .text:00487AB8j
		inc	dword ptr [ebp-18h]
		add	esi, 2
		add	ebx, 2
		jmp	short loc_487B3A
; ---------------------------------------------------------------------------

loc_487ACC:				; CODE XREF: .text:00487A81j
		xor	edx, edx
		mov	dl, [ebx]
		and	edx, 0F8h
		cmp	edx, 0F0h
		jnz	short loc_487B35
		lea	ecx, [esi+3]
		cmp	edi, ecx
		jg	short loc_487AEC
		xor	eax, eax
		mov	[ebp-0Ch], eax
		jmp	short loc_487B3A
; ---------------------------------------------------------------------------

loc_487AEC:				; CODE XREF: .text:00487AE3j
		xor	edx, edx
		mov	dl, [ebx+1]
		and	edx, 0C0h
		cmp	edx, 80h
		jnz	short loc_487B23
		xor	ecx, ecx
		mov	cl, [ebx+2]
		and	ecx, 0C0h
		cmp	ecx, 80h
		jnz	short loc_487B23
		xor	eax, eax
		mov	al, [ebx+3]
		and	eax, 0C0h
		cmp	eax, 80h
		jz	short loc_487B2A

loc_487B23:				; CODE XREF: .text:00487AFDj
					; .text:00487B10j
		xor	edx, edx
		mov	[ebp-0Ch], edx
		jmp	short loc_487B3A
; ---------------------------------------------------------------------------

loc_487B2A:				; CODE XREF: .text:00487B21j
		inc	dword ptr [ebp-18h]
		add	esi, 3
		add	ebx, 3
		jmp	short loc_487B3A
; ---------------------------------------------------------------------------

loc_487B35:				; CODE XREF: .text:00487ADCj
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx

loc_487B3A:				; CODE XREF: .text:00487A17j
					; .text:00487A22j ...
		inc	esi
		inc	ebx

loc_487B3C:				; CODE XREF: .text:004879FBj
		cmp	edi, esi
		jle	short loc_487B4A
		cmp	dword ptr [ebp-0Ch], 0
		jnz	loc_487A00

loc_487B4A:				; CODE XREF: .text:00487A04j
					; .text:00487B3Ej
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_487BE1
		cmp	dword ptr [ebp-18h], 2
		jl	loc_487BE1
		test	byte ptr [ebp+0Ch], 2
		jz	short loc_487B6A
		cmp	dword ptr [ebp-18h], 10h
		jle	short loc_487BE1

loc_487B6A:				; CODE XREF: .text:00487B62j
		push	offset aUtf8	; "UTF-8 \""
		mov	eax, [ebp+14h]
		push	eax		; n
		mov	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		lea	eax, [ebp-320h]
		lea	edx, [ebp-120h]
		push	100h		; nw
		push	eax		; w
		push	esi		; nt
		push	edx		; t
		call	Utftounicode
		add	esp, 10h
		lea	ecx, [ebp-320h]
		mov	edx, ebx
		add	edx, edx
		push	ecx		; src
		mov	eax, [ebp+14h]
		sub	eax, ebx
		dec	eax
		push	eax		; n
		add	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, ebx
		add	eax, eax
		push	(offset	aUnicode_6+10h)	; src
		mov	ecx, [ebp+14h]
		sub	ecx, ebx
		push	ecx		; n
		add	eax, [ebp+10h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, ebx
		jmp	loc_487D6C
; ---------------------------------------------------------------------------

loc_487BE1:				; CODE XREF: .text:00487B4Ej
					; .text:00487B58j ...
		cmp	dword ptr [ebp-10h], 0
		jz	loc_487C74
		xor	esi, esi
		jmp	short loc_487C05
; ---------------------------------------------------------------------------

loc_487BEF:				; CODE XREF: .text:00487C0Aj
		mov	ax, [ebp+esi-120h]
		push	eax		; a1
		call	IstextW
		pop	ecx
		test	eax, eax
		jz	short loc_487C0C
		add	esi, 2

loc_487C05:				; CODE XREF: .text:00487BEDj
		lea	edx, [esi+2]
		cmp	edi, edx
		jge	short loc_487BEF

loc_487C0C:				; CODE XREF: .text:00487C00j
		lea	ecx, [esi+2]
		cmp	edi, ecx
		jl	short loc_487C74
		cmp	esi, 4
		jl	short loc_487C74
		cmp	edi, esi
		jz	short loc_487C27
		cmp	word ptr [ebp+esi-120h], 0
		jnz	short loc_487C74

loc_487C27:				; CODE XREF: .text:00487C1Aj
		test	byte ptr [ebp+0Ch], 2
		jz	short loc_487C32
		cmp	esi, 10h
		jle	short loc_487C74

loc_487C32:				; CODE XREF: .text:00487C2Bj
		push	offset aUnicode_8 ; "UNICODE "
		mov	eax, [ebp+14h]
		push	eax		; n
		mov	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	edx, ebx
		lea	ecx, [ebp-120h]
		push	1		; stopatzero
		add	edx, edx
		mov	eax, [ebp+14h]
		sub	eax, ebx
		push	eax		; ntext
		add	edx, [ebp+10h]
		shr	esi, 1
		push	edx		; text
		push	esi		; ndata
		push	ecx		; data
		call	Stringtotext
		add	esp, 14h
		add	ebx, eax
		mov	eax, ebx
		jmp	loc_487D6C
; ---------------------------------------------------------------------------

loc_487C74:				; CODE XREF: .text:00487BE5j
					; .text:00487C11j ...
		cmp	dword_57DD38, 0
		jz	loc_487D6A
		cmp	_imp__IsTextUnicode, 0
		jz	loc_487D6A
		and	edi, 0FFFFFFFEh
		lea	edx, [ebp-120h]
		mov	byte ptr [ebp+edi-120h], 0
		mov	byte ptr [ebp+edi-11Fh], 0
		push	edx		; s
		call	_wcslen
		pop	ecx
		mov	esi, eax
		cmp	esi, 2
		jl	loc_487D6A
		test	byte ptr [ebp+0Ch], 2
		jz	short loc_487CC8
		cmp	esi, 10h
		jle	loc_487D6A

loc_487CC8:				; CODE XREF: .text:00487CBDj
		xor	eax, eax
		lea	ebx, [ebp-120h]
		cmp	esi, eax
		jle	short loc_487CED

loc_487CD4:				; CODE XREF: .text:00487CEBj
		mov	dx, [ebx]
		cmp	dx, 0FFFEh
		jz	short loc_487CED
		cmp	dx, 0FFFFh
		jz	short loc_487CED
		inc	eax
		add	ebx, 2
		cmp	esi, eax
		jg	short loc_487CD4

loc_487CED:				; CODE XREF: .text:00487CD2j
					; .text:00487CDCj ...
		cmp	esi, eax
		jg	short loc_487D6A
		mov	dword ptr [ebp-8], 0Fh
		lea	eax, [ebp-8]
		push	eax		; _DWORD
		add	esi, esi
		push	esi		; _DWORD
		lea	ecx, [ebp-120h]
		push	ecx		; _DWORD
		call	_imp__IsTextUnicode
		test	eax, eax
		jz	short loc_487D6A
		push	offset aUnicode_6 ; "UNICODE \""
		mov	eax, [ebp+14h]
		dec	eax
		push	eax		; n
		mov	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		lea	eax, [ebp-120h]
		mov	ecx, ebx
		push	eax		; src
		add	ecx, ecx
		mov	edx, [ebp+14h]
		sub	edx, ebx
		dec	edx
		push	edx		; n
		add	ecx, [ebp+10h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	edx, ebx
		add	edx, edx
		push	(offset	aUnicode_6+10h)	; src
		mov	eax, [ebp+14h]
		sub	eax, ebx
		dec	eax
		push	eax		; n
		add	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, ebx
		jmp	short loc_487D6C
; ---------------------------------------------------------------------------

loc_487D6A:				; CODE XREF: .text:00487C7Bj
					; .text:00487C88j ...
		xor	eax, eax

loc_487D6C:				; CODE XREF: .text:004874A5j
					; .text:004874C6j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 291. _Squeezename
; Exported entry 725. Squeezename

; int __cdecl Squeezename(wchar_t *dest, int ndest, wchar_t *src, int nsrc)
		public Squeezename
Squeezename:				; CODE XREF: .text:00408DF8p
					; .text:0044AE32p ...
		push	ebp		; _Squeezename
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		mov	eax, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		mov	edi, [ebp+8]
		test	edi, edi
		jz	short loc_487D8E
		test	ebx, ebx
		jg	short loc_487D92

loc_487D8E:				; CODE XREF: .text:00487D88j
		xor	eax, eax
		jmp	short loc_487DF5
; ---------------------------------------------------------------------------

loc_487D92:				; CODE XREF: .text:00487D8Cj
		test	eax, eax
		jz	short loc_487D9A
		test	esi, esi
		jnz	short loc_487DA3

loc_487D9A:				; CODE XREF: .text:00487D94j
		mov	word ptr [edi],	0
		xor	eax, eax
		jmp	short loc_487DF5
; ---------------------------------------------------------------------------

loc_487DA3:				; CODE XREF: .text:00487D98j
		cmp	ebx, esi
		jle	short loc_487DB9
		lea	edx, [esi+1]
		add	edx, edx
		push	edx		; n
		push	eax		; src
		push	edi		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_487DF3
; ---------------------------------------------------------------------------

loc_487DB9:				; CODE XREF: .text:00487DA5j
		cmp	ebx, 4
		jge	short loc_487DC7
		mov	word ptr [edi],	0
		xor	esi, esi
		jmp	short loc_487DF3
; ---------------------------------------------------------------------------

loc_487DC7:				; CODE XREF: .text:00487DBCj
		cmp	ebx, 4
		jle	short loc_487DDC
		lea	edx, [ebx-4]
		add	edx, edx
		push	edx		; n
		push	eax		; src
		push	edi		; dest
		call	_memcpy
		add	esp, 0Ch

loc_487DDC:				; CODE XREF: .text:00487DCAj
		push	8		; n
		push	offset a____3	; "..."
		lea	edi, [edi+ebx*2-8]
		push	edi		; dest
		call	_memcpy
		add	esp, 0Ch
		lea	esi, [ebx-1]

loc_487DF3:				; CODE XREF: .text:00487DB7j
					; .text:00487DC5j
		mov	eax, esi

loc_487DF5:				; CODE XREF: .text:00487D90j
					; .text:00487DA1j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 292. _Uncapitalize
; Exported entry 737. Uncapitalize

; void __cdecl Uncapitalize(wchar_t *s)
		public Uncapitalize
Uncapitalize:				; CODE XREF: .text:00489A53p
					; .text:004BCA66p ...
		push	ebp		; _Uncapitalize
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_487E39
		test	word ptr [ebx],	0FF80h
		jnz	short loc_487E39
		mov	ax, [ebx]
		push	eax		; c
		call	_iswupper
		pop	ecx
		test	eax, eax
		jz	short loc_487E39
		mov	dx, [ebx+2]
		push	edx		; c
		call	_iswupper
		pop	ecx
		test	eax, eax
		jnz	short loc_487E39
		mov	si, [ebx]
		push	esi		; ch
		call	__ltowlower
		pop	ecx
		mov	[ebx], ax

loc_487E39:				; CODE XREF: .text:00487E06j
					; .text:00487E0Dj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 293. _Decoderelativeoffset
; Exported entry 457. Decoderelativeoffset

; int __cdecl Decoderelativeoffset(ulong _addr, int addrmode, wchar_t *symb, int	nsymb)
		public Decoderelativeoffset
Decoderelativeoffset:			; CODE XREF: .text:0043609Ap
					; .text:0043691Cp ...
		push	ebp		; _Decoderelativeoffset
		mov	ebp, esp
		add	esp, 0FFFFFC00h
		push	ebx
		push	esi
		cmp	dword ptr [ebp+8], 0
		jz	short loc_487E5D
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_487E5D
		cmp	dword ptr [ebp+14h], 18h
		jge	short loc_487E64

loc_487E5D:				; CODE XREF: .text:00487E4Fj
					; .text:00487E55j
		xor	eax, eax
		jmp	loc_487FC8
; ---------------------------------------------------------------------------

loc_487E64:				; CODE XREF: .text:00487E5Bj
		mov	edx, [ebp+10h]
		mov	word ptr [edx],	0
		push	0		; subaddr
		mov	ecx, [ebp+8]
		push	ecx		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_487E87
		mov	ebx, [eax]
		jmp	short loc_487ED9
; ---------------------------------------------------------------------------

loc_487E87:				; CODE XREF: .text:00487E81j
		mov	eax, [ebp+8]
		push	eax		; _addr
		call	Findmemory
		pop	ecx
		mov	edx, eax
		test	edx, edx
		jz	short loc_487E9D
		cmp	dword ptr [edx+64h], 0
		jnz	short loc_487EA4

loc_487E9D:				; CODE XREF: .text:00487E95j
		xor	eax, eax
		jmp	loc_487FC8
; ---------------------------------------------------------------------------

loc_487EA4:				; CODE XREF: .text:00487E9Bj
		mov	ecx, [edx+64h]
		mov	ebx, [ebp+8]
		add	ecx, [ebp+8]
		sub	ecx, [edx]
		jmp	short loc_487ECA
; ---------------------------------------------------------------------------

loc_487EB1:				; CODE XREF: .text:00487ECCj
		xor	eax, eax
		mov	al, [ecx]
		and	eax, 60h
		test	eax, eax
		jnz	short loc_487EC3
		xor	eax, eax
		jmp	loc_487FC8
; ---------------------------------------------------------------------------

loc_487EC3:				; CODE XREF: .text:00487EBAj
		cmp	eax, 20h
		jz	short loc_487ECE
		dec	ebx
		dec	ecx

loc_487ECA:				; CODE XREF: .text:00487EAFj
		cmp	ebx, [edx]
		jnb	short loc_487EB1

loc_487ECE:				; CODE XREF: .text:00487EC6j
		cmp	ebx, [edx]
		jnb	short loc_487ED9
		xor	eax, eax
		jmp	loc_487FC8
; ---------------------------------------------------------------------------

loc_487ED9:				; CODE XREF: .text:00487E85j
					; .text:00487ED0j
		test	byte ptr [ebp+0Ch], 10h
		jz	short loc_487EEB
		cmp	ebx, [ebp+8]
		jnz	short loc_487EEB
		xor	eax, eax
		jmp	loc_487FC8
; ---------------------------------------------------------------------------

loc_487EEB:				; CODE XREF: .text:00487EDDj
					; .text:00487EE2j
		test	byte ptr [ebp+0Eh], 2
		jz	short loc_487F2A
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_487F03
		xor	esi, esi
		jmp	short loc_487F2C
; ---------------------------------------------------------------------------

loc_487F03:				; CODE XREF: .text:00487EFDj
		add	eax, 0Ch
		lea	edx, [ebp-400h]
		push	eax		; src
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		mov	word ptr [ebp+esi*2-400h], 2Eh
		inc	esi
		jmp	short loc_487F2C
; ---------------------------------------------------------------------------

loc_487F2A:				; CODE XREF: .text:00487EEFj
		xor	esi, esi

loc_487F2C:				; CODE XREF: .text:00487F01j
					; .text:00487F28j
		push	0		; firsttype
		mov	eax, esi
		add	eax, eax
		lea	edx, [ebp-400h]
		add	eax, edx
		push	eax		; _name
		push	ebx		; _addr
		call	Findlabel
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_487F61
		mov	ecx, esi
		add	ecx, ecx
		lea	eax, [ebp-400h]
		add	ecx, eax
		push	ecx		; s
		call	_wcslen
		pop	ecx
		add	eax, esi
		mov	esi, eax
		jmp	short loc_487F83
; ---------------------------------------------------------------------------

loc_487F61:				; CODE XREF: .text:00487F46j
		test	byte ptr [ebp+0Ch], 8
		jz	short loc_487F6B
		xor	eax, eax
		jmp	short loc_487FC8
; ---------------------------------------------------------------------------

loc_487F6B:				; CODE XREF: .text:00487F65j
		push	ebx		; u
		mov	edx, esi
		add	edx, edx
		lea	ecx, [ebp-400h]
		add	edx, ecx
		push	edx		; s
		call	Hexprint8W
		add	esp, 8
		add	esi, eax

loc_487F83:				; CODE XREF: .text:00487F5Fj
		cmp	ebx, [ebp+8]
		jnb	short loc_487FB0
		mov	word ptr [ebp+esi*2-400h], 2Bh
		inc	esi
		mov	eax, [ebp+8]
		mov	edx, esi
		sub	eax, ebx
		lea	ecx, [ebp-400h]
		add	edx, edx
		add	edx, ecx
		push	eax		; u
		push	edx		; s
		call	HexprintW
		add	esp, 8
		add	esi, eax

loc_487FB0:				; CODE XREF: .text:00487F86j
		push	esi		; nsrc
		lea	eax, [ebp-400h]
		push	eax		; src
		mov	edx, [ebp+14h]
		push	edx		; ndest
		mov	ecx, [ebp+10h]
		push	ecx		; dest
		call	Squeezename
		add	esp, 10h

loc_487FC8:				; CODE XREF: .text:00487E5Fj
					; .text:00487E9Fj ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 294. _Decodeaddress
; Exported entry 450. Decodeaddress

; int __usercall Decodeaddress@<eax>(ulong _addr, ulong amod, int mode, wchar_t *symb, int nsymb, wchar_t *comment)
		public Decodeaddress
Decodeaddress:				; CODE XREF: .text:00412E12p
					; .text:00428896p ...
		push	ebp		; _Decodeaddress
		mov	ebp, esp
		add	esp, 0FFFFF9D0h
		xor	eax, eax
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	[ebp-4], eax
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_487FFD
		cmp	dword ptr [ebp+18h], 8
		jge	short loc_488007

loc_487FFD:				; CODE XREF: .text:00487FF5j
		xor	ecx, ecx
		mov	[ebp+14h], ecx
		jmp	loc_4883AE
; ---------------------------------------------------------------------------

loc_488007:				; CODE XREF: .text:00487FFBj
		test	edi, 30006h
		jnz	short loc_488015
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_488033

loc_488015:				; CODE XREF: .text:0048800Dj
		mov	eax, [ebp+8]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		mov	esi, eax
		test	edi, 2
		jz	short loc_488035
		test	esi, esi
		jz	loc_4883AE
		jmp	short loc_488035
; ---------------------------------------------------------------------------

loc_488033:				; CODE XREF: .text:00488013j
		xor	esi, esi

loc_488035:				; CODE XREF: .text:00488027j
					; .text:00488031j
		test	esi, esi
		jz	short loc_48804A
		mov	eax, [ebp+0Ch]
		cmp	eax, [esi]
		jb	short loc_48804A
		mov	edx, [esi]
		add	edx, [esi+4]
		cmp	edx, [ebp+0Ch]
		ja	short loc_488064

loc_48804A:				; CODE XREF: .text:00488037j
					; .text:0048803Ej
		test	edi, 4
		jnz	loc_4883AE
		test	edi, 200h
		jz	short loc_488064
		or	edi, 100h

loc_488064:				; CODE XREF: .text:00488048j
					; .text:0048805Cj
		test	edi, 4000001h
		jz	short loc_48807E
		test	edi, 1
		jz	short loc_48807E
		cmp	dword ptr [ebp-20h], 0
		jz	loc_4883AE

loc_48807E:				; CODE XREF: .text:0048806Aj
					; .text:00488072j
		push	0		; firsttype
		lea	ecx, [ebp-220h]
		push	ecx		; _name
		mov	eax, [ebp+8]
		push	eax		; _addr
		call	Findlabel
		add	esp, 0Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4880A8
		test	edi, 8
		jnz	loc_4883AE

loc_4880A8:				; CODE XREF: .text:0048809Aj
		cmp	dword ptr [ebp-8], 0
		jnz	loc_48824D
		test	edi, 100h
		jnz	loc_48824D
		test	edi, 6000h
		jz	loc_48824D
		push	1		; mode
		push	6		; size
		mov	edx, [ebp+8]
		push	edx		; _addr
		lea	ecx, [ebp-630h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 6
		jnz	loc_48824D
		cmp	word ptr [ebp-630h], 25FFh
		jnz	loc_48824D
		mov	eax, [ebp-62Eh]
		test	edi, 2000h
		mov	[ebp-0Ch], eax
		jz	loc_488199
		push	26h		; firsttype
		lea	edx, [ebp-220h]
		push	edx		; _name
		mov	ecx, [ebp-0Ch]
		push	ecx		; _addr
		call	Findlabel
		add	esp, 0Ch
		cmp	eax, 26h
		jnz	short loc_488199
		push	offset aJmp_	; "<JMP."
		push	100h
		lea	eax, [ebp-620h]
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		mov	[ebp-4], eax
		lea	edx, [ebp-220h]
		push	edx		; src
		mov	ecx, 100h
		sub	ecx, [ebp-4]
		push	ecx		; n
		mov	eax, [ebp-4]
		add	eax, eax
		lea	edx, [ebp-620h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-4], eax
		push	offset asc_545264 ; ">"
		mov	ecx, 100h
		sub	ecx, [ebp-4]
		push	ecx		; n
		mov	eax, [ebp-4]
		add	eax, eax
		lea	edx, [ebp-620h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-4], eax
		jmp	loc_4883AE
; ---------------------------------------------------------------------------

loc_488199:				; CODE XREF: .text:00488108j
					; .text:00488126j
		test	edi, 4000h
		jz	loc_48824D
		push	1		; mode
		push	4		; size
		mov	ecx, [ebp-0Ch]
		push	ecx		; _addr
		lea	eax, [ebp-10h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	loc_48824D
		push	22h		; firsttype
		lea	edx, [ebp-220h]
		push	edx		; _name
		mov	ecx, [ebp-10h]
		push	ecx		; _addr
		call	Findlabel
		add	esp, 0Ch
		cmp	eax, 22h
		jnz	short loc_48824D
		push	offset aJmp_	; "<JMP."
		push	100h
		lea	eax, [ebp-620h]
		push	eax
		call	loc_410A49
		add	esp, 0Ch
		mov	[ebp-4], eax
		lea	edx, [ebp-220h]
		push	edx		; src
		mov	ecx, 100h
		sub	ecx, [ebp-4]
		push	ecx		; n
		mov	eax, [ebp-4]
		add	eax, eax
		lea	edx, [ebp-620h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-4], eax
		push	offset asc_545264 ; ">"
		mov	ecx, 100h
		sub	ecx, [ebp-4]
		push	ecx		; n
		mov	eax, [ebp-4]
		add	eax, eax
		lea	edx, [ebp-620h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-4], eax
		jmp	loc_4883AE
; ---------------------------------------------------------------------------

loc_48824D:				; CODE XREF: .text:004880ACj
					; .text:004880B8j ...
		mov	ecx, edi
		and	ecx, 1100h
		cmp	ecx, 1000h
		jnz	short loc_4882A9
		test	esi, esi
		jz	short loc_4882A9
		mov	eax, [esi+458h]
		cmp	eax, [ebp+8]
		ja	short loc_488277
		add	eax, [esi+45Ch]
		cmp	eax, [ebp+8]
		ja	short loc_4882A9

loc_488277:				; CODE XREF: .text:0048826Aj
		mov	eax, [esi+8D4h]
		cmp	eax, [ebp+8]
		ja	short loc_48828D
		add	eax, [esi+8D8h]
		cmp	eax, [ebp+8]
		ja	short loc_4882A9

loc_48828D:				; CODE XREF: .text:00488280j
		push	offset aOffset	; "OFFSET "
		push	100h
		lea	edx, [ebp-620h]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		mov	[ebp-4], eax

loc_4882A9:				; CODE XREF: .text:0048825Bj
					; .text:0048825Fj ...
		test	esi, esi
		jz	short loc_4882F4
		cmp	dword ptr [ebp-8], 26h
		jz	short loc_4882F4
		test	edi, 20000h
		jnz	short loc_4882D2
		test	edi, 10000h
		jz	short loc_4882F4
		mov	eax, [esi]
		cmp	eax, [ebp+0Ch]
		ja	short loc_4882D2
		add	eax, [esi+4]
		cmp	eax, [ebp+0Ch]
		ja	short loc_4882F4

loc_4882D2:				; CODE XREF: .text:004882B9j
					; .text:004882C8j
		lea	edx, [esi+0Ch]
		push	edx
		push	offset aS_	; "%s."
		mov	ecx, [ebp-4]
		add	ecx, ecx
		lea	eax, [ebp-620h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-4], eax

loc_4882F4:				; CODE XREF: .text:004882ABj
					; .text:004882B1j ...
		cmp	dword ptr [ebp-8], 0
		jz	short loc_488302
		test	edi, 100h
		jz	short loc_48834B

loc_488302:				; CODE XREF: .text:004882F8j
		test	edi, 400h
		jz	short loc_48832C
		mov	edx, [ebp+8]
		push	edx		; u
		mov	ecx, [ebp-4]
		add	ecx, ecx
		lea	eax, [ebp-620h]
		add	ecx, eax
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		add	[ebp-4], eax
		jmp	loc_4883AE
; ---------------------------------------------------------------------------

loc_48832C:				; CODE XREF: .text:00488308j
		mov	edx, [ebp+8]
		push	edx		; u
		mov	ecx, [ebp-4]
		add	ecx, ecx
		lea	eax, [ebp-620h]
		add	ecx, eax
		push	ecx		; s
		call	HexprintW
		add	esp, 8
		add	[ebp-4], eax
		jmp	short loc_4883AE
; ---------------------------------------------------------------------------

loc_48834B:				; CODE XREF: .text:00488300j
		cmp	dword ptr [ebp-8], 26h
		jnz	short loc_488361
		mov	edx, [ebp-4]
		mov	word ptr [ebp+edx*2-620h], 3Ch
		inc	dword ptr [ebp-4]

loc_488361:				; CODE XREF: .text:0048834Fj
		lea	ecx, [ebp-220h]
		push	ecx		; src
		mov	eax, 100h
		sub	eax, [ebp-4]
		dec	eax
		push	eax		; n
		mov	edx, [ebp-4]
		add	edx, edx
		lea	ecx, [ebp-620h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-4], eax
		cmp	dword ptr [ebp-8], 26h
		jnz	short loc_4883AE
		mov	eax, [ebp-4]
		mov	word ptr [ebp+eax*2-620h], 3Eh
		inc	dword ptr [ebp-4]
		mov	edx, [ebp-4]
		mov	word ptr [ebp+edx*2-620h], 0

loc_4883AE:				; CODE XREF: .text:00488002j
					; .text:0048802Bj ...
		cmp	dword ptr [ebp+1Ch], 0
		jz	loc_48886D
		xor	ebx, ebx
		xor	eax, eax
		mov	[ebp-18h], eax
		test	ebx, ebx
		jnz	short loc_4883E4
		test	edi, 100000h
		jz	short loc_4883E4
		push	100h		; nsymb
		mov	edx, [ebp+1Ch]
		push	edx		; symb
		push	0		; isstatic
		mov	ecx, [ebp+8]
		push	ecx		; _addr
		call	Isstring
		add	esp, 10h
		mov	ebx, eax

loc_4883E4:				; CODE XREF: .text:004883C1j
					; .text:004883C9j
		test	ebx, ebx
		jnz	short loc_488407
		test	edi, 100000h
		jz	short loc_488407
		push	100h		; nname
		mov	eax, [ebp+1Ch]
		push	eax		; _name
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Isguid
		add	esp, 0Ch
		mov	ebx, eax

loc_488407:				; CODE XREF: .text:004883E6j
					; .text:004883EEj
		test	ebx, ebx
		jnz	loc_4884DF
		test	edi, 400000h
		jz	loc_4884DF
		mov	eax, [ebp+8]
		push	eax		; _addr
		call	Followcall
		pop	ecx
		mov	[ebp-0Ch], eax
		mov	edx, [ebp-0Ch]
		cmp	edx, [ebp+8]
		jz	loc_4884DF
		push	22h		; firsttype
		lea	ecx, [ebp-220h]
		push	ecx		; _name
		mov	eax, [ebp-0Ch]
		push	eax		; _addr
		call	Findlabel
		add	esp, 0Ch
		cmp	eax, 22h
		jnz	loc_4884DF
		mov	edx, [ebp-0Ch]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_4884DF
		push	offset aJumpTo_1 ; "Jump to "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		mov	ebx, eax
		add	esp, 0Ch
		mov	eax, [ebp-1Ch]
		mov	edx, 100h
		sub	edx, ebx
		add	eax, 0Ch
		dec	edx
		push	eax		; src
		mov	ecx, ebx
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	ebx, eax
		mov	eax, [ebp+1Ch]
		add	esp, 0Ch
		lea	edx, [ebp-220h]
		mov	word ptr [eax+ebx*2], 2Eh
		inc	ebx
		push	edx		; s
		call	_wcslen
		pop	ecx
		push	eax		; nsrc
		lea	ecx, [ebp-220h]
		mov	eax, 100h
		sub	eax, ebx
		push	ecx		; src
		mov	edx, ebx
		push	eax		; ndest
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	Squeezename
		add	esp, 10h
		add	ebx, eax

loc_4884DF:				; CODE XREF: .text:00488409j
					; .text:00488415j ...
		test	ebx, ebx
		jnz	short loc_4884F6
		lea	ecx, [ebp-14h]
		push	ecx		; psize
		mov	eax, [ebp+8]
		push	eax		; _addr
		call	Finddecode
		add	esp, 8
		mov	[ebp-18h], eax

loc_4884F6:				; CODE XREF: .text:004884E1j
		test	ebx, ebx
		jnz	short loc_488560
		cmp	dword ptr [ebp+8], 0
		jz	short loc_488560
		test	edi, 800000h
		jz	short loc_48850E
		cmp	dword ptr [ebp-8], 0
		jz	short loc_488516

loc_48850E:				; CODE XREF: .text:00488506j
		test	edi, 1000000h
		jz	short loc_488560

loc_488516:				; CODE XREF: .text:0048850Cj
		push	1		; nbuf
		lea	edx, [ebp-0Ch]
		push	edx		; buf
		mov	ecx, [ebp+8]
		push	ecx		; dest
		call	Findglobalcallsto
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_488541
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_488560
		mov	eax, [ebp-18h]
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 60h
		cmp	edx, 20h
		jnz	short loc_488560

loc_488541:				; CODE XREF: .text:0048852Aj
		push	offset aEntryPoint ; "Entry point"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_488560:				; CODE XREF: .text:004884F8j
					; .text:004884FEj ...
		test	ebx, ebx
		jnz	short loc_4885A3
		test	edi, 4000000h
		jz	short loc_4885A3
		mov	eax, 18h
		test	esi, esi
		jz	short loc_488586
		mov	edx, [ebp+0Ch]
		cmp	edx, [esi]
		jb	short loc_488586
		mov	ecx, [esi]
		add	ecx, [esi+4]
		cmp	ecx, [ebp+0Ch]
		ja	short loc_48858B

loc_488586:				; CODE XREF: .text:00488573j
					; .text:0048857Aj
		or	eax, 20000h

loc_48858B:				; CODE XREF: .text:00488584j
		push	100h		; nsymb
		mov	edx, [ebp+1Ch]
		push	edx		; symb
		push	eax		; addrmode
		mov	eax, [ebp+8]
		push	eax		; _addr
		call	Decoderelativeoffset
		add	esp, 10h
		mov	ebx, eax

loc_4885A3:				; CODE XREF: .text:00488562j
					; .text:0048856Aj
		test	ebx, ebx
		jnz	loc_48862F
		test	edi, 200000h
		jz	short loc_48862F
		push	1		; mode
		push	4		; size
		mov	eax, [ebp+8]
		push	eax		; _addr
		lea	edx, [ebp-0Ch]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	short loc_48862F
		mov	ecx, [ebp-0Ch]
		push	ecx		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_48862F
		push	offset aPtrTo	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		mov	ebx, eax
		add	esp, 0Ch
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		add	edx, edx
		push	eax		; nsymb
		add	edx, [ebp+1Ch]
		push	edx		; symb
		push	0		; isstatic
		mov	ecx, [ebp-0Ch]
		push	ecx		; _addr
		call	Isstring
		add	esp, 10h
		test	eax, eax
		jnz	short loc_48862D
		xor	ebx, ebx
		mov	eax, [ebp+1Ch]
		mov	word ptr [eax+ebx*2], 0
		jmp	short loc_48862F
; ---------------------------------------------------------------------------

loc_48862D:				; CODE XREF: .text:0048861Ej
		add	ebx, eax

loc_48862F:				; CODE XREF: .text:004885A5j
					; .text:004885B1j ...
		test	ebx, ebx
		jnz	loc_4886CF
		test	edi, 2000000h
		jz	loc_4886CF
		test	esi, esi
		jz	loc_4886CF
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_4886CF
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4886CF
		mov	eax, [esi]
		cmp	eax, [ebp+0Ch]
		ja	short loc_488666
		add	eax, [esi+4]
		cmp	eax, [ebp+0Ch]
		jnb	short loc_4886CF

loc_488666:				; CODE XREF: .text:0048865Cj
		lea	edx, [esi+0Ch]
		push	edx		; src
		push	20h		; n
		mov	ecx, [ebp+1Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		push	(offset	a____3+4) ; src
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		test	edi, 400h
		jz	short loc_4886B9
		mov	ecx, [ebp+8]
		mov	eax, ebx
		push	ecx		; u
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; s
		call	Hexprint8W
		add	esp, 8
		add	ebx, eax
		jmp	short loc_4886CF
; ---------------------------------------------------------------------------

loc_4886B9:				; CODE XREF: .text:0048869Fj
		mov	edx, [ebp+8]
		mov	ecx, ebx
		push	edx		; u
		add	ecx, ecx
		add	ecx, [ebp+1Ch]
		push	ecx		; s
		call	HexprintW
		add	esp, 8
		add	ebx, eax

loc_4886CF:				; CODE XREF: .text:00488631j
					; .text:0048863Dj ...
		test	ebx, ebx
		jnz	loc_4887FA
		test	edi, 8000000h
		jz	loc_4887FA
		cmp	dword ptr [ebp-18h], 0
		jz	loc_4887FA
		mov	eax, [ebp-18h]
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 0Dh
		jnz	loc_4887FA
		cmp	dword ptr [ebp-14h], 4
		jb	loc_4887FA
		mov	dword ptr [ebp-0Ch], 1
		mov	ecx, [ebp-18h]
		lea	eax, [ecx+1]
		mov	edx, [ebp-0Ch]
		cmp	edx, [ebp-14h]
		jnb	short loc_488737

loc_48871F:				; CODE XREF: .text:00488735j
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 2
		jnz	short loc_488737
		inc	dword ptr [ebp-0Ch]
		inc	eax
		mov	edx, [ebp-0Ch]
		cmp	edx, [ebp-14h]
		jb	short loc_48871F

loc_488737:				; CODE XREF: .text:0048871Dj
					; .text:00488729j
		cmp	dword ptr [ebp-0Ch], 4
		jz	short loc_48874D
		cmp	dword ptr [ebp-0Ch], 8
		jz	short loc_48874D
		cmp	dword ptr [ebp-0Ch], 0Ah
		jnz	loc_4887FA

loc_48874D:				; CODE XREF: .text:0048873Bj
					; .text:00488741j
		push	1		; mode
		mov	eax, [ebp-0Ch]
		push	eax		; size
		mov	ecx, [ebp+8]
		push	ecx		; _addr
		lea	eax, [ebp-630h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [ebp-0Ch]
		jnz	loc_4887FA
		push	offset aFloat_5	; src
		call	_T
		pop	ecx
		push	eax
		push	100h
		mov	edx, [ebp+1Ch]
		push	edx
		call	loc_410A49
		add	esp, 0Ch
		mov	ebx, eax
		cmp	dword ptr [ebp-0Ch], 4
		jnz	short loc_4887AE
		push	dword ptr [ebp-630h] ; f
		mov	edx, ebx
		add	edx, edx
		add	edx, [ebp+1Ch]
		push	edx		; s
		call	Printfloat4
		add	esp, 8
		add	ebx, eax
		jmp	short loc_4887FA
; ---------------------------------------------------------------------------

loc_4887AE:				; CODE XREF: .text:00488792j
		cmp	dword ptr [ebp-0Ch], 8
		jnz	short loc_4887D4
		push	dword ptr [ebp-62Ch]
		push	dword ptr [ebp-630h] ; d
		mov	eax, ebx
		add	eax, eax
		add	eax, [ebp+1Ch]
		push	eax		; s
		call	Printfloat8
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_4887FA
; ---------------------------------------------------------------------------

loc_4887D4:				; CODE XREF: .text:004887B2j
		mov	dx, [ebp-628h]
		mov	ecx, ebx
		push	edx
		add	ecx, ecx
		push	dword ptr [ebp-62Ch]
		push	dword ptr [ebp-630h] ; ext
		add	ecx, [ebp+1Ch]
		push	ecx		; s
		call	Printfloat10
		add	esp, 10h
		add	ebx, eax

loc_4887FA:				; CODE XREF: .text:004886D1j
					; .text:004886DDj ...
		test	ebx, ebx
		jnz	short loc_48886D
		cmp	dword ptr [ebp-8], 21h
		jnz	short loc_48886D
		push	22h		; firsttype
		lea	eax, [ebp-220h]
		push	eax		; _name
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Findlabel
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_48886D
		test	esi, esi
		jz	short loc_488842
		add	esi, 0Ch
		push	esi		; src
		push	0FFh		; n
		mov	eax, [ebp+1Ch]
		push	eax		; dest
		call	StrcopyW
		mov	ebx, eax
		mov	eax, [ebp+1Ch]
		add	esp, 0Ch
		mov	word ptr [eax+ebx*2], 2Eh
		inc	ebx

loc_488842:				; CODE XREF: .text:0048881Fj
		lea	edx, [ebp-220h]
		push	edx		; s
		call	_wcslen
		pop	ecx
		push	eax		; nsrc
		lea	ecx, [ebp-220h]
		mov	eax, 100h
		sub	eax, ebx
		push	ecx		; src
		push	eax		; ndest
		add	ebx, ebx
		add	ebx, [ebp+1Ch]
		push	ebx		; dest
		call	Squeezename
		add	esp, 10h

loc_48886D:				; CODE XREF: .text:004883B2j
					; .text:004887FCj ...
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_488890
		mov	edx, [ebp-4]
		lea	ecx, [ebp-620h]
		push	edx		; nsrc
		push	ecx		; src
		mov	eax, [ebp+18h]
		push	eax		; ndest
		mov	edx, [ebp+14h]
		push	edx		; dest
		call	Squeezename
		add	esp, 10h
		jmp	short loc_488892
; ---------------------------------------------------------------------------

loc_488890:				; CODE XREF: .text:00488871j
		xor	eax, eax

loc_488892:				; CODE XREF: .text:0048888Ej
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 295. _Decodearglocal
; Exported entry 451. Decodearglocal

; int __cdecl Decodearglocal(ulong ip, ulong offs, ulong datasize, wchar_t *_name, int len)
		public Decodearglocal
Decodearglocal:				; CODE XREF: .text:0043C21Bp
					; .text:0048950Ep ...
		push	ebp		; _Decodearglocal
		mov	ebp, esp
		push	eax
		mov	eax, 6

loc_4888A5:				; CODE XREF: .text:004888ADj
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4888A5
		mov	eax, [ebp-4]
		add	esp, 0FFFFF6E4h
		push	ebx
		push	esi
		push	edi
		mov	edx, [ebp+10h]
		mov	eax, [ebp+0Ch]
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4888CD
		cmp	dword ptr [ebp+18h], 0
		jg	short loc_4888D4

loc_4888CD:				; CODE XREF: .text:004888C5j
		xor	eax, eax
		jmp	loc_488A7F
; ---------------------------------------------------------------------------

loc_4888D4:				; CODE XREF: .text:004888CBj
		mov	ebx, eax
		mov	edi, eax
		and	edi, 0FFFFFFFCh
		and	ebx, 3
		test	edi, edi
		jns	short loc_4888E5
		add	edi, 3

loc_4888E5:				; CODE XREF: .text:004888E0j
		sar	edi, 2
		cmp	edx, 4
		jb	short loc_4888F1
		test	ebx, ebx
		jnz	short loc_4888FB

loc_4888F1:				; CODE XREF: .text:004888EBj
		cmp	edx, 2
		jnz	short loc_488902
		test	bl, 1
		jz	short loc_488902

loc_4888FB:				; CODE XREF: .text:004888EFj
		xor	eax, eax
		jmp	loc_488A7F
; ---------------------------------------------------------------------------

loc_488902:				; CODE XREF: .text:004888F4j
					; .text:004888F9j
		xor	esi, esi
		test	edi, edi
		jle	loc_488A0C
		cmp	dword_5BDD54, 0
		jz	loc_4889B9
		cmp	dword ptr [ebp+8], 0
		jz	loc_4889B9
		push	0		; amax
		lea	eax, [ebp+8]
		push	eax		; amin
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Getproclimits
		add	esp, 0Ch
		xor	edx, edx
		lea	eax, [ebp-6920h]

loc_48893D:				; CODE XREF: .text:0048894Fj
		xor	ecx, ecx
		inc	edx
		mov	[eax], ecx
		xor	ecx, ecx
		mov	[eax+8], ecx
		add	eax, 44Ch
		cmp	edx, 18h
		jl	short loc_48893D
		push	1		; follow
		push	0FFFFFFFFh	; nexp
		push	0		; _name
		push	0		; rettype
		lea	eax, [ebp-6920h]
		push	eax		; adec
		push	0		; pd
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Decodeknownbyaddr
		add	esp, 1Ch
		cmp	eax, edi
		jl	short loc_4889B9
		mov	eax, edi
		shl	eax, 4
		add	eax, edi
		lea	eax, [edi+eax*8]
		lea	eax, [edi+eax*2]
		cmp	word ptr [ebp+eax*4-6D20h], 0
		jz	short loc_4889B9
		mov	edx, edi
		lea	ecx, [ebp-6D20h]
		shl	edx, 4
		lea	eax, [ebp-200h]
		add	edx, edi
		lea	edx, [edi+edx*8]
		lea	edx, [edi+edx*2]
		shl	edx, 2
		add	edx, ecx
		push	edx		; src
		push	100h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax

loc_4889B9:				; CODE XREF: .text:00488913j
					; .text:0048891Dj ...
		test	esi, esi
		jnz	short loc_4889D4
		push	edi
		push	offset aArg_I_1	; format
		lea	eax, [ebp-200h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	esi, eax

loc_4889D4:				; CODE XREF: .text:004889BBj
		test	ebx, ebx
		jz	short loc_4889F1
		push	ebx
		push	offset aI_4	; format
		add	esi, esi
		lea	eax, [ebp-200h]
		add	esi, eax
		push	esi		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_4889F1:				; CODE XREF: .text:004889D6j
		lea	edx, [ebp-200h]
		push	edx		; src
		mov	ecx, [ebp+18h]
		push	ecx		; n
		mov	eax, [ebp+14h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_488A7D
; ---------------------------------------------------------------------------

loc_488A0C:				; CODE XREF: .text:00488906j
		test	edi, edi
		jge	short loc_488A62
		neg	edi
		dec	edi
		lea	eax, [ebp-200h]
		push	edi
		push	offset aLocal_I_2 ; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	esi, eax
		test	ebx, ebx
		jz	short loc_488A47
		push	ebx
		push	offset aI_4	; format
		add	esi, esi
		lea	eax, [ebp-200h]
		add	esi, eax
		push	esi		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_488A47:				; CODE XREF: .text:00488A2Cj
		lea	edx, [ebp-200h]
		push	edx		; src
		mov	ecx, [ebp+18h]
		push	ecx		; n
		mov	eax, [ebp+14h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		jmp	short loc_488A7D
; ---------------------------------------------------------------------------

loc_488A62:				; CODE XREF: .text:00488A0Ej
		test	ebx, ebx
		jnz	short loc_488A7D
		push	offset aArg_retaddr_1 ;	"ARG.RETADDR"
		mov	eax, [ebp+18h]
		push	eax		; n
		mov	edx, [ebp+14h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax

loc_488A7D:				; CODE XREF: .text:00488A0Aj
					; .text:00488A60j ...
		mov	eax, esi

loc_488A7F:				; CODE XREF: .text:004888CFj
					; .text:004888FDj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
