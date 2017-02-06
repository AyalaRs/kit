.code

; ---------------------------------------------------------------------------

loc_46BCF4:				; CODE XREF: .text:0046F4FBp
					; .text:0046F52Cp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		mov	ecx, addr0
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+0Ch]
		mov	edx, [ebp+10h]
		cmp	eax, ecx
		jb	short loc_46BD15
		cmp	eax, addr1
		jb	short loc_46BD1C

loc_46BD15:				; CODE XREF: .text:0046BD0Bj
		xor	eax, eax
		jmp	loc_46BF6E
; ---------------------------------------------------------------------------

loc_46BD1C:				; CODE XREF: .text:0046BD13j
		lea	esi, [edx+eax]
		mov	ebx, addr1
		cmp	esi, ebx
		jbe	short loc_46BD2D
		mov	edx, ebx
		sub	edx, eax

loc_46BD2D:				; CODE XREF: .text:0046BD27j
		mov	ebx, eax
		sub	eax, addr0
		sub	ebx, ecx
		add	edx, ebx
		mov	[ebp-10h], edx
		mov	[ebp-0Ch], eax
		mov	eax, [ebp-0Ch]
		cmp	eax, [ebp-10h]
		jnb	loc_46BF6C

loc_46BD4B:				; CODE XREF: .text:0046BF66j
		mov	edx, s
		mov	ecx, [ebp-0Ch]
		xor	eax, eax
		mov	al, [edx+ecx]
		and	eax, 1Fh
		cmp	eax, 1Ch
		jnz	loc_46BF5D
		mov	edx, dword_5E5D74
		mov	ecx, [ebp-0Ch]
		movzx	eax, word ptr [edx+ecx*2]
		and	eax, 70h
		cmp	eax, 20h
		jnz	loc_46BF5D
		mov	eax, addr0
		add	eax, [ebp-0Ch]
		push	0		; subaddr
		push	eax		; _addr
		mov	edx, [ebp+14h]
		push	edx		; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_46BDA9
		mov	ecx, [eax+78h]
		and	ecx, 7Fh
		cmp	ecx, 20h
		jnz	short loc_46BDA9
		mov	ebx, [eax+7Ch]
		jmp	short loc_46BDAB
; ---------------------------------------------------------------------------

loc_46BDA9:				; CODE XREF: .text:0046BD97j
					; .text:0046BDA2j
		xor	ebx, ebx

loc_46BDAB:				; CODE XREF: .text:0046BDA7j
		test	ebx, ebx
		jz	loc_46BF5D
		push	0		; subaddr
		push	ebx		; _addr
		call	Followcall
		pop	ecx
		push	eax		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	loc_46BF5D
		mov	edx, [eax+8]
		test	edx, 7E00000h
		jnz	loc_46BF5D
		cmp	dword ptr [eax+18h], 0
		jnz	loc_46BF5D
		test	edx, 10000000h
		jz	loc_46BF5D
		test	edx, 10000h
		jz	loc_46BF5D
		test	edx, 20000000h
		jz	loc_46BEF2
		mov	esi, 0FFFFFFFFh
		mov	[ebp-8], esi
		mov	[ebp-4], esi
		mov	ecx, 1
		xor	ebx, ebx
		lea	edx, [eax+39h]
		jmp	short loc_46BE78
; ---------------------------------------------------------------------------

loc_46BE26:				; CODE XREF: .text:0046BE7Fj
		test	byte ptr [eax+0Bh], 0C0h
		jz	short loc_46BE31
		cmp	ebx, [eax+30h]
		jge	short loc_46BE81

loc_46BE31:				; CODE XREF: .text:0046BE2Aj
		movzx	edi, byte ptr [edx]
		and	edi, 13h
		cmp	edi, 3
		jnz	short loc_46BE49
		cmp	dword ptr [ebp-4], 0
		jge	short loc_46BE47
		mov	[ebp-4], ebx
		jmp	short loc_46BE49
; ---------------------------------------------------------------------------

loc_46BE47:				; CODE XREF: .text:0046BE40j
		xor	ecx, ecx

loc_46BE49:				; CODE XREF: .text:0046BE3Aj
					; .text:0046BE45j
		movzx	edi, byte ptr [edx]
		and	edi, 1Ch
		cmp	edi, 0Ch
		jnz	short loc_46BE61
		cmp	dword ptr [ebp-8], 0
		jge	short loc_46BE5F
		mov	[ebp-8], ebx
		jmp	short loc_46BE61
; ---------------------------------------------------------------------------

loc_46BE5F:				; CODE XREF: .text:0046BE58j
		xor	ecx, ecx

loc_46BE61:				; CODE XREF: .text:0046BE52j
					; .text:0046BE5Dj
		movzx	edi, byte ptr [edx]
		and	edi, 60h
		cmp	edi, 20h
		jnz	short loc_46BE76
		test	esi, esi
		jge	short loc_46BE74
		mov	esi, ebx
		jmp	short loc_46BE76
; ---------------------------------------------------------------------------

loc_46BE74:				; CODE XREF: .text:0046BE6Ej
		xor	ecx, ecx

loc_46BE76:				; CODE XREF: .text:0046BE6Aj
					; .text:0046BE72j
		inc	ebx
		inc	edx

loc_46BE78:				; CODE XREF: .text:0046BE24j
		cmp	ebx, 7
		jge	short loc_46BE81
		test	ecx, ecx
		jnz	short loc_46BE26

loc_46BE81:				; CODE XREF: .text:0046BE2Fj
					; .text:0046BE7Bj
		test	esi, esi
		jl	short loc_46BE8B
		cmp	dword ptr [ebp-4], 0
		jge	short loc_46BEA1

loc_46BE8B:				; CODE XREF: .text:0046BE83j
		test	esi, esi
		jl	short loc_46BE95
		cmp	dword ptr [ebp-8], 0
		jge	short loc_46BEA1

loc_46BE95:				; CODE XREF: .text:0046BE8Dj
		cmp	dword ptr [ebp-4], 0
		jl	short loc_46BEA3
		cmp	dword ptr [ebp-8], 0
		jl	short loc_46BEA3

loc_46BEA1:				; CODE XREF: .text:0046BE89j
					; .text:0046BE93j
		xor	ecx, ecx

loc_46BEA3:				; CODE XREF: .text:0046BE99j
					; .text:0046BE9Fj
		test	ecx, ecx
		jz	short loc_46BEBB
		test	esi, esi
		jl	short loc_46BEBB
		inc	esi
		mov	[eax+28h], esi
		mov	dword ptr [eax+8], 0C000000h
		jmp	loc_46BF5D
; ---------------------------------------------------------------------------

loc_46BEBB:				; CODE XREF: .text:0046BEA5j
					; .text:0046BEA9j
		test	ecx, ecx
		jz	short loc_46BED8
		cmp	dword ptr [ebp-4], 0
		jl	short loc_46BED8
		mov	edx, [ebp-4]
		inc	edx
		mov	[eax+28h], edx
		mov	dword ptr [eax+8], 8400000h
		jmp	loc_46BF5D
; ---------------------------------------------------------------------------

loc_46BED8:				; CODE XREF: .text:0046BEBDj
					; .text:0046BEC3j
		test	ecx, ecx
		jz	short loc_46BEF2
		cmp	dword ptr [ebp-8], 0
		jl	short loc_46BEF2
		mov	ecx, [ebp-8]
		inc	ecx
		mov	[eax+28h], ecx
		mov	dword ptr [eax+8], 8800000h
		jmp	short loc_46BF5D
; ---------------------------------------------------------------------------

loc_46BEF2:				; CODE XREF: .text:0046BE09j
					; .text:0046BEDAj ...
		mov	edx, [eax+2Ch]
		cmp	edx, [eax+34h]
		jl	short loc_46BF1C
		cmp	edx, [eax+30h]
		jnz	short loc_46BF1C
		mov	ecx, [eax+8]
		and	ecx, 0C0000000h
		cmp	ecx, 40000000h
		jnz	short loc_46BF1C
		mov	[eax+28h], edx
		or	dword ptr [eax+8], 8200000h
		jmp	short loc_46BF5D
; ---------------------------------------------------------------------------

loc_46BF1C:				; CODE XREF: .text:0046BEF8j
					; .text:0046BEFDj ...
		mov	edx, [eax+2Ch]
		cmp	edx, [eax+34h]
		jnz	short loc_46BF34
		test	edx, edx
		jle	short loc_46BF34
		mov	[eax+28h], edx
		or	dword ptr [eax+8], 8200000h
		jmp	short loc_46BF5D
; ---------------------------------------------------------------------------

loc_46BF34:				; CODE XREF: .text:0046BF22j
					; .text:0046BF26j
		test	byte ptr [eax+0Bh], 40h
		jz	short loc_46BF5D
		cmp	dword ptr [eax+30h], 0
		jle	short loc_46BF5D
		mov	ecx, [eax+30h]
		cmp	ecx, [eax+34h]
		jnz	short loc_46BF5D
		mov	edx, [eax+2Ch]
		cmp	edx, [eax+30h]
		jl	short loc_46BF5D
		mov	ecx, [eax+30h]
		mov	[eax+28h], ecx
		or	dword ptr [eax+8], 8200000h

loc_46BF5D:				; CODE XREF: .text:0046BD5Fj
					; .text:0046BD78j ...
		inc	dword ptr [ebp-0Ch]
		mov	eax, [ebp-0Ch]
		cmp	eax, [ebp-10h]
		jb	loc_46BD4B

loc_46BF6C:				; CODE XREF: .text:0046BD45j
		xor	eax, eax

loc_46BF6E:				; CODE XREF: .text:0046BD17j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_46BF78(int, char *format, char arglist)
loc_46BF78:				; CODE XREF: .text:0046C88Ap
					; .text:0046C945p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFF00h
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_46BFC6
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_46BFC6
		lea	eax, [ebp+10h]
		push	eax		; arglist
		mov	edx, [ebp+0Ch]
		push	edx		; format
		lea	ecx, [ebp-100h]
		push	ecx		; buffer
		call	_vsprintf
		add	esp, 0Ch
		cmp	eax, 0Ch
		jge	short loc_46BFC2
		inc	eax
		push	eax		; n
		lea	edx, [ebp-100h]
		push	edx		; src
		add	ebx, 1Ch
		push	ebx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_46BFC6
; ---------------------------------------------------------------------------

loc_46BFC2:				; CODE XREF: .text:0046BFA9j
		mov	byte ptr [ebx+1Ch], 0

loc_46BFC6:				; CODE XREF: .text:0046BF87j
					; .text:0046BF8Dj ...
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_46BFCC(int, int, int nDenominator, int)
loc_46BFCC:				; CODE XREF: .text:0046F568p
					; .text:0046F5A4p
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 8

loc_46BFD5:				; CODE XREF: .text:0046BFDDj
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_46BFD5
		mov	eax, [ebp-4]
		add	esp, 0FFFFF424h
		push	ebx
		push	esi
		push	edi
		mov	eax, addr0
		cmp	eax, [ebp+0Ch]
		ja	short loc_46C000
		mov	edx, [ebp+0Ch]
		cmp	edx, addr1
		jb	short loc_46C007

loc_46C000:				; CODE XREF: .text:0046BFF3j
		xor	eax, eax
		jmp	loc_46D534
; ---------------------------------------------------------------------------

loc_46C007:				; CODE XREF: .text:0046BFFEj
		mov	edx, [ebp+0Ch]
		add	edx, [ebp+10h]
		cmp	edx, addr1
		jbe	short loc_46C021
		mov	ecx, addr1
		sub	ecx, [ebp+0Ch]
		mov	[ebp+10h], ecx

loc_46C021:				; CODE XREF: .text:0046C013j
		mov	eax, [ebp+0Ch]
		xor	edx, edx
		sub	eax, addr0
		add	eax, [ebp+10h]
		mov	[ebp-2Ch], eax
		mov	[ebp-28h], edx
		mov	ecx, [ebp+8]
		test	byte ptr [ecx+0Ah], 1
		jnz	loc_46C0CB
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+460h], 0
		jz	short loc_46C0CB
		push	0		; subaddr
		mov	edx, [ebp+8]
		mov	ecx, [edx+460h]
		push	ecx		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-40h], eax
		cmp	dword ptr [ebp-40h], 0
		jnz	short loc_46C0B3
		push	40h		; n
		push	0		; c
		lea	eax, [ebp-8BE0h]
		push	eax		; s
		call	_memset
		mov	edx, [ebp+8]
		add	esp, 0Ch
		lea	eax, [ebp-8BE0h]
		mov	ecx, [edx+460h]
		mov	[ebp-8BE0h], ecx
		mov	dword ptr [ebp-8BDCh], 1
		push	eax		; item
		push	offset procdata	; sd
		call	Addsorteddata
		add	esp, 8
		mov	[ebp-40h], eax

loc_46C0B3:				; CODE XREF: .text:0046C06Ej
		cmp	dword ptr [ebp-40h], 0
		jz	short loc_46C0CB
		mov	edx, [ebp-40h]
		add	edx, 1Ch
		mov	edi, edx
		mov	esi, offset aDllentry ;	"DLLENTRY"
		mov	eax, edi
		movsd
		movsd
		movsb

loc_46C0CB:				; CODE XREF: .text:0046C03Cj
					; .text:0046C04Cj ...
		mov	edx, [ebp+0Ch]
		sub	edx, addr0
		mov	[ebp-24h], edx
		mov	ecx, [ebp-24h]
		cmp	ecx, [ebp-2Ch]
		jnb	loc_46D532

loc_46C0E3:				; CODE XREF: .text:0046D52Cj
		mov	eax, s
		mov	edx, [ebp-24h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		and	ecx, 1Fh
		cmp	ecx, 1Ch
		jnz	loc_46D523
		mov	eax, dword_5E5D74
		mov	edx, [ebp-24h]
		movzx	ecx, word ptr [eax+edx*2]
		and	ecx, 70h
		cmp	ecx, 20h
		jnz	loc_46D523
		mov	eax, [ebp-28h]
		add	eax, 800h
		cmp	eax, [ebp-24h]
		jnb	short loc_46C157
		mov	edx, [ebp+10h]
		push	edx		; nDenominator
		push	3E8h		; nNumerator
		mov	ecx, [ebp+0Ch]
		sub	ecx, addr0
		mov	eax, [ebp-24h]
		sub	eax, ecx
		push	eax		; nNumber
		call	MulDiv
		push	eax		; int
		call	loc_45C684
		pop	ecx
		test	eax, eax
		jz	short loc_46C151
		or	eax, 0FFFFFFFFh
		jmp	loc_46D534
; ---------------------------------------------------------------------------

loc_46C151:				; CODE XREF: .text:0046C147j
		mov	edx, [ebp-24h]
		mov	[ebp-28h], edx

loc_46C157:				; CODE XREF: .text:0046C11Fj
		mov	ecx, addr0
		add	ecx, [ebp-24h]
		mov	[ebp-20h], ecx
		xor	eax, eax
		mov	[ebp-10h], eax
		push	0		; subaddr
		mov	edx, [ebp-20h]
		push	edx		; _addr
		mov	ecx, [ebp+14h]
		push	ecx		; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-3Ch], eax
		cmp	dword ptr [ebp-3Ch], 0
		jz	loc_46C247
		mov	eax, [ebp-3Ch]
		cmp	dword ptr [eax+14h], 0
		jle	loc_46C247
		mov	edx, [ebp-3Ch]
		mov	ecx, [edx+78h]
		and	ecx, 7Fh
		cmp	ecx, 20h
		jnz	loc_46D523
		mov	eax, [ebp-3Ch]
		xor	ebx, ebx
		lea	edi, [ebp-72C0h]
		mov	edx, [eax+7Ch]
		mov	[ebp-34h], edx
		mov	ecx, [ebp-3Ch]
		mov	eax, [ecx+14h]
		mov	[ebp-4], eax
		mov	eax, [ebp-3Ch]
		lea	esi, [eax+18h]

loc_46C1C6:				; CODE XREF: .text:0046C240j
		mov	eax, 4
		cmp	dword_5BDD48, 0
		jnz	short loc_46C1D7
		add	eax, 0FFFFFFFCh

loc_46C1D7:				; CODE XREF: .text:0046C1D2j
		mov	[edi], eax
		xor	edx, edx
		mov	[edi+8], edx
		cmp	ebx, [ebp-4]
		jge	short loc_46C233
		mov	ecx, [esi]
		mov	[ebp-30h], ecx
		mov	eax, [ebp-30h]
		cmp	eax, addr0
		jb	short loc_46C233
		mov	edx, [ebp-30h]
		cmp	edx, addr1
		jnb	short loc_46C233
		mov	ecx, [ebp-30h]
		mov	[edi+8], ecx
		mov	eax, [ebp-30h]
		push	eax		; _addr
		mov	edx, [ebp+8]
		add	edx, 950h
		push	edx		; pdat
		call	Findsimpledata
		add	esp, 8
		test	eax, eax
		jz	short loc_46C233
		movzx	ecx, word ptr [eax+4]
		and	ecx, 38h
		cmp	ecx, 20h
		jnz	short loc_46C233
		or	dword ptr [edi], 3
		mov	eax, [eax+0Eh]
		mov	[edi+4], eax

loc_46C233:				; CODE XREF: .text:0046C1E1j
					; .text:0046C1F1j ...
		inc	ebx
		add	esi, 4
		add	edi, 44Ch
		cmp	ebx, 18h
		jl	short loc_46C1C6
		jmp	loc_46C46C
; ---------------------------------------------------------------------------

loc_46C247:				; CODE XREF: .text:0046C181j
					; .text:0046C18Ej
		push	6720h		; n
		push	0		; c
		lea	edx, [ebp-72C0h]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		mov	ecx, [ebp-24h]
		dec	ecx
		mov	[ebp-30h], ecx
		xor	ebx, ebx
		lea	esi, [ebp-72C0h]
		jmp	loc_46C3ED
; ---------------------------------------------------------------------------

loc_46C271:				; CODE XREF: .text:0046C3FEj
		mov	eax, s
		mov	edx, [ebp-30h]
		movzx	eax, byte ptr [eax+edx]
		mov	edx, eax
		and	edx, 60h
		cmp	edx, 40h
		jz	loc_46C404
		mov	ecx, s
		mov	edx, [ebp-30h]
		and	eax, 1Fh
		dec	eax
		jz	loc_46C3EA
		mov	eax, s
		mov	ecx, [ebp-30h]
		movzx	eax, byte ptr [eax+ecx]
		and	eax, 1Fh
		cmp	eax, 1Ch
		jnz	loc_46C404
		mov	edx, dword_5E5D74
		mov	ecx, [ebp-30h]
		movzx	eax, word ptr [edx+ecx*2]
		and	eax, 70h
		cmp	eax, 20h
		jz	loc_46C404
		mov	edx, dword_5E5D74
		mov	ecx, [ebp-30h]
		cmp	eax, 30h
		jz	loc_46C404
		mov	edx, dword_5E5D74
		mov	ecx, [ebp-30h]
		cmp	eax, 60h
		jz	loc_46C404
		mov	edx, dword_5E5D74
		mov	ecx, [ebp-30h]
		cmp	eax, 70h
		jz	loc_46C404
		mov	edx, dword_5E5D74
		mov	ecx, [ebp-30h]
		cmp	eax, 50h
		jz	short loc_46C342
		mov	eax, dword_5E5D74
		mov	edx, [ebp-30h]
		test	byte ptr [eax+edx*2], 3
		jnz	loc_46C404
		mov	eax, s
		mov	ecx, [ebp-30h]
		movzx	eax, byte ptr [eax+ecx]
		and	eax, 60h
		cmp	eax, 20h
		jz	loc_46C404
		jmp	loc_46C3EA
; ---------------------------------------------------------------------------

loc_46C342:				; CODE XREF: .text:0046C311j
		mov	edx, 4
		cmp	dword_5BDD48, 0
		jnz	short loc_46C353
		add	edx, 0FFFFFFFCh

loc_46C353:				; CODE XREF: .text:0046C34Ej
		mov	[esi], edx
		lea	eax, [ebp-8BA0h]
		mov	ecx, addr0
		add	ecx, [ebp-30h]
		mov	[esi+8], ecx
		push	0		; predict
		push	0		; reg
		push	0		; mode
		push	eax		; da
		push	0		; dec
		mov	edx, addr0
		mov	eax, copy
		add	edx, [ebp-30h]
		push	edx		; ip
		mov	ecx, [ebp-2Ch]
		sub	ecx, [ebp-30h]
		push	ecx		; cmdsize
		add	eax, [ebp-30h]
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		test	eax, eax
		jz	short loc_46C404
		cmp	dword ptr [ebp-8B74h], 0
		jnz	short loc_46C404
		mov	edx, [ebp-8B54h]
		and	edx, 2000200h
		cmp	edx, 2000200h
		jnz	short loc_46C3BF
		or	dword ptr [esi], 1
		mov	ecx, [ebp-8B14h]
		mov	[esi+4], ecx

loc_46C3BF:				; CODE XREF: .text:0046C3B1j
		mov	eax, dword_5E5D74
		mov	edx, [ebp-30h]
		inc	ebx
		add	esi, 44Ch
		test	byte ptr [eax+edx*2], 3
		jnz	short loc_46C404
		mov	ecx, s
		mov	eax, [ebp-30h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 60h
		cmp	edx, 20h
		jz	short loc_46C404

loc_46C3EA:				; CODE XREF: .text:0046C298j
					; .text:0046C33Dj
		dec	dword ptr [ebp-30h]

loc_46C3ED:				; CODE XREF: .text:0046C26Cj
		mov	ecx, addr0
		add	ecx, [ebp-30h]
		cmp	ecx, [ebp+0Ch]
		jb	short loc_46C404
		cmp	ebx, 18h
		jl	loc_46C271

loc_46C404:				; CODE XREF: .text:0046C285j
					; .text:0046C2B0j ...
		push	0		; predict
		push	0		; reg
		push	10h		; mode
		lea	eax, [ebp-8BA0h]
		push	eax		; da
		push	0		; dec
		mov	edx, [ebp-20h]
		push	edx		; ip
		mov	ecx, [ebp-2Ch]
		sub	ecx, [ebp-24h]
		push	ecx		; cmdsize
		mov	eax, copy
		add	eax, [ebp-24h]
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		test	eax, eax
		jz	loc_46D523
		cmp	dword ptr [ebp-8B74h], 0
		jnz	loc_46D523
		mov	edx, [ebp-8B8Ch]
		and	edx, 1Fh
		cmp	edx, 0Ch
		jnz	loc_46D523
		cmp	dword ptr [ebp-8B60h], 0
		jz	loc_46D523
		mov	ecx, [ebp-8B60h]
		mov	[ebp-34h], ecx

loc_46C46C:				; CODE XREF: .text:0046C242j
		mov	word ptr [ebp-9A0h], 0
		push	4		; datasize
		lea	eax, [ebp-0Ch]
		push	eax		; data
		push	35h		; type
		mov	edx, [ebp-20h]
		push	edx		; _addr
		call	Finddata
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_46C495
		mov	dword ptr [ebp-0Ch], 0FFFFFFFFh

loc_46C495:				; CODE XREF: .text:0046C48Cj
		push	1		; follow
		lea	eax, [ebp-0BA0h]
		mov	ecx, [ebp-0Ch]
		lea	edx, [ebp-9A0h]
		push	ecx		; nexp
		push	eax		; _name
		push	edx		; rettype
		lea	ecx, [ebp-72C0h]
		push	ecx		; adec
		push	0		; pd
		mov	eax, [ebp-34h]
		push	eax		; _addr
		call	Decodeknownbyaddr
		add	esp, 1Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	loc_46C6BF
		xor	ebx, ebx
		lea	esi, [ebp-72C0h]
		cmp	ebx, [ebp-8]
		jge	loc_46C661

loc_46C4DC:				; CODE XREF: .text:0046C65Bj
		test	byte ptr [esi],	1
		jz	loc_46C651
		cmp	word ptr [esi+0Ch], 40h
		jnz	loc_46C651
		push	offset aCallback ; "CALLBACK"
		mov	eax, ebx
		shl	eax, 4
		add	eax, ebx
		lea	eax, [ebx+eax*8]
		lea	eax, [ebx+eax*2]
		shl	eax, 2
		lea	edx, [ebp-72B2h]
		add	eax, edx
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_46C521
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		jmp	short loc_46C589
; ---------------------------------------------------------------------------

loc_46C521:				; CODE XREF: .text:0046C518j
		push	offset aWinproca_1 ; "WINPROCA"
		mov	eax, ebx
		shl	eax, 4
		add	eax, ebx
		lea	eax, [ebx+eax*8]
		lea	eax, [ebx+eax*2]
		shl	eax, 2
		lea	edx, [ebp-72B2h]
		add	eax, edx
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_46C554
		mov	dword ptr [ebp-14h], 1
		jmp	short loc_46C589
; ---------------------------------------------------------------------------

loc_46C554:				; CODE XREF: .text:0046C549j
		push	offset aWinprocw ; "WINPROCW"
		mov	ecx, ebx
		shl	ecx, 4
		add	ecx, ebx
		lea	ecx, [ebx+ecx*8]
		lea	ecx, [ebx+ecx*2]
		shl	ecx, 2
		lea	eax, [ebp-72B2h]
		add	ecx, eax
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	loc_46C651
		mov	dword ptr [ebp-14h], 2

loc_46C589:				; CODE XREF: .text:0046C51Fj
					; .text:0046C552j
		mov	edx, [esi+4]
		push	edx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	loc_46C651
		test	dword ptr [eax+8], 2005000h
		jz	loc_46C651
		test	byte ptr [eax+0Bh], 10h
		jz	loc_46C651
		push	0		; subaddr
		mov	ecx, [esi+4]
		push	ecx		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-40h], eax
		cmp	dword ptr [ebp-40h], 0
		jnz	short loc_46C60B
		push	40h		; n
		push	0		; c
		lea	eax, [ebp-8BE0h]
		push	eax		; s
		call	_memset
		mov	edx, [esi+4]
		add	esp, 0Ch
		mov	[ebp-8BE0h], edx
		lea	ecx, [ebp-8BE0h]
		mov	dword ptr [ebp-8BDCh], 1
		push	ecx		; item
		push	offset procdata	; sd
		call	Addsorteddata
		add	esp, 8
		mov	[ebp-40h], eax

loc_46C60B:				; CODE XREF: .text:0046C5CCj
		cmp	dword ptr [ebp-40h], 0
		jz	short loc_46C651
		cmp	dword ptr [ebp-14h], 1
		jnz	short loc_46C62D
		mov	eax, [ebp-40h]
		add	eax, 1Ch
		push	esi
		mov	edi, eax
		mov	esi, offset aWinproca ;	"WINPROCA"
		mov	eax, edi
		movsd
		movsd
		movsb
		pop	esi
		jmp	short loc_46C647
; ---------------------------------------------------------------------------

loc_46C62D:				; CODE XREF: .text:0046C615j
		cmp	dword ptr [ebp-14h], 2
		jnz	short loc_46C647
		mov	edx, [ebp-40h]
		add	edx, 1Ch
		push	esi
		mov	edi, edx
		mov	esi, offset aWinprocw_0	; "WINPROCW"
		mov	eax, edi
		movsd
		movsd
		movsb
		pop	esi

loc_46C647:				; CODE XREF: .text:0046C62Bj
					; .text:0046C631j
		mov	edx, [ebp-40h]
		or	dword ptr [edx+8], 1000h

loc_46C651:				; CODE XREF: .text:0046C4DFj
					; .text:0046C4EAj ...
		inc	ebx
		add	esi, 44Ch
		cmp	ebx, [ebp-8]
		jl	loc_46C4DC

loc_46C661:				; CODE XREF: .text:0046C4D6j
		mov	dword ptr [ebp-10h], 1
		push	9		; maxlen
		push	offset a_intern___0 ; "_INTERN_."
		lea	ecx, [ebp-0BA0h]
		push	ecx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_46C68D
		inc	dword_5E5D98
		jmp	loc_46CC95
; ---------------------------------------------------------------------------

loc_46C68D:				; CODE XREF: .text:0046C680j
		inc	dword_5E5D94
		cmp	word ptr [ebp-0BA0h], 2Eh
		jnz	short loc_46C6A5
		lea	eax, [ebp-0B9Eh]
		jmp	short loc_46C6AB
; ---------------------------------------------------------------------------

loc_46C6A5:				; CODE XREF: .text:0046C69Bj
		lea	eax, [ebp-0BA0h]

loc_46C6AB:				; CODE XREF: .text:0046C6A3j
		push	eax		; s
		push	33h		; type
		mov	edx, [ebp-20h]
		push	edx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		jmp	loc_46CC95
; ---------------------------------------------------------------------------

loc_46C6BF:				; CODE XREF: .text:0046C4C5j
		mov	ecx, [ebp-34h]
		push	ecx		; _addr
		call	Followcall
		pop	ecx
		mov	[ebp-38h], eax
		mov	eax, _size
		dec	eax
		cmp	eax, [ebp-24h]
		jbe	short loc_46C724
		mov	edx, copy
		mov	ecx, [ebp-24h]
		cmp	byte ptr [edx+ecx], 0E8h
		jz	short loc_46C724
		mov	eax, copy
		mov	edx, [ebp-24h]
		cmp	word ptr [eax+edx], 15FFh
		jz	short loc_46C724
		push	22h		; firsttype
		lea	ecx, [ebp-0BA0h]
		push	ecx		; _name
		mov	eax, [ebp-38h]
		push	eax		; _addr
		call	Findlabel
		add	esp, 0Ch
		test	eax, eax
		jle	short loc_46C724
		lea	edx, [ebp-0BA0h]
		push	edx		; s
		push	33h		; type
		mov	ecx, [ebp-20h]
		push	ecx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_46C724:				; CODE XREF: .text:0046C6D5j
					; .text:0046C6E4j ...
		push	0		; subaddr
		mov	eax, [ebp-38h]
		push	eax		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-40h], eax
		cmp	dword ptr [ebp-40h], 0
		jz	short loc_46C7BF
		mov	edx, [ebp-40h]
		cmp	dword ptr [edx+18h], 10000h
		jnz	short loc_46C7BF
		cmp	dword ptr [ebp-3Ch], 0
		jz	short loc_46C75B
		mov	ecx, [ebp-3Ch]
		cmp	dword ptr [ecx+0Ch], 20h
		jz	short loc_46C777

loc_46C75B:				; CODE XREF: .text:0046C750j
		push	offset aAllocatesEaxBy ; "Allocates EAX	bytes on stack"
		call	_T
		pop	ecx
		push	eax		; s
		push	31h		; type
		mov	eax, [ebp-20h]
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		jmp	short loc_46C7AE
; ---------------------------------------------------------------------------

loc_46C777:				; CODE XREF: .text:0046C759j
		mov	edx, [ebp-3Ch]
		mov	ecx, [edx+10h]
		push	ecx
		push	offset aAllocatesI_Byt ; "Allocates %i.	bytes on stack"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-0BA0h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-0BA0h]
		push	edx		; s
		push	31h		; type
		mov	ecx, [ebp-20h]
		push	ecx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_46C7AE:				; CODE XREF: .text:0046C775j
		xor	eax, eax
		mov	[ebp-8], eax
		mov	dword ptr [ebp-10h], 1
		jmp	loc_46C874
; ---------------------------------------------------------------------------

loc_46C7BF:				; CODE XREF: .text:0046C73Ej
					; .text:0046C74Aj
		cmp	dword ptr [ebp-40h], 0
		jz	short loc_46C841
		mov	edx, [ebp-40h]
		cmp	dword ptr [edx+18h], 20000h
		jnz	short loc_46C841
		cmp	dword ptr [ebp-3Ch], 0
		jz	short loc_46C7E0
		mov	ecx, [ebp-3Ch]
		cmp	dword ptr [ecx+0Ch], 20h
		jz	short loc_46C7FC

loc_46C7E0:				; CODE XREF: .text:0046C7D5j
		push	offset aProbesEaxBytes ; "Probes EAX bytes on stack"
		call	_T
		pop	ecx
		push	eax		; s
		push	31h		; type
		mov	eax, [ebp-20h]
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		jmp	short loc_46C833
; ---------------------------------------------------------------------------

loc_46C7FC:				; CODE XREF: .text:0046C7DEj
		mov	edx, [ebp-3Ch]
		mov	ecx, [edx+10h]
		push	ecx
		push	offset aProbesI_BytesO ; "Probes %i. bytes on stack"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-0BA0h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-0BA0h]
		push	edx		; s
		push	31h		; type
		mov	ecx, [ebp-20h]
		push	ecx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_46C833:				; CODE XREF: .text:0046C7FAj
		xor	eax, eax
		mov	[ebp-8], eax
		mov	dword ptr [ebp-10h], 1
		jmp	short loc_46C874
; ---------------------------------------------------------------------------

loc_46C841:				; CODE XREF: .text:0046C7C3j
					; .text:0046C7CFj
		cmp	dword ptr [ebp-40h], 0
		jz	loc_46D523
		mov	edx, [ebp-40h]
		test	dword ptr [edx+8], 7E00000h
		jz	loc_46D523
		mov	ecx, [ebp-40h]
		mov	eax, [ecx+28h]
		mov	[ebp-8], eax
		mov	edx, [ebp-40h]
		test	byte ptr [edx+0Bh], 8
		jnz	short loc_46C874
		mov	dword ptr [ebp-10h], 1

loc_46C874:				; CODE XREF: .text:0046C7BAj
					; .text:0046C83Fj ...
		mov	ecx, [ebp-40h]
		test	byte ptr [ecx+0Ah], 20h
		jz	short loc_46C8D5
		mov	eax, [ebp-8]
		push	eax		; arglist
		push	offset aFnI	; "Fn%i"
		mov	edx, [ebp-40h]
		push	edx		; int
		call	loc_46BF78
		add	esp, 0Ch
		mov	ecx, [ebp-8]
		push	ecx
		push	offset a_intern__fnI ; "_INTERN_.Fn%i"
		lea	eax, [ebp-0BA0h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	edx, [ebp-0Ch]
		lea	ecx, [ebp-9A0h]
		lea	eax, [ebp-72C0h]
		push	edx		; nexp
		push	ecx		; rettype
		push	eax		; adec
		lea	edx, [ebp-0BA0h]
		push	0		; pd
		push	edx		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	[ebp-8], eax
		jmp	loc_46CC85
; ---------------------------------------------------------------------------

loc_46C8D5:				; CODE XREF: .text:0046C87Bj
		mov	ecx, [ebp-40h]
		test	byte ptr [ecx+0Bh], 4
		jz	loc_46C9ED
		cmp	dword ptr [ebp-8], 1
		jl	loc_46D523
		cmp	dword ptr [ebp-8], 18h
		jge	loc_46D523
		mov	ebx, [ebp-8]
		dec	ebx
		mov	eax, ebx
		shl	eax, 4
		add	eax, ebx
		lea	eax, [ebx+eax*8]
		lea	eax, [ebx+eax*2]
		test	byte ptr [ebp+eax*4-72C0h], 1
		jz	loc_46D523
		mov	edx, ebx
		shl	edx, 4
		add	edx, ebx
		lea	edx, [ebx+edx*8]
		lea	edx, [ebx+edx*2]
		mov	edi, [ebp+edx*4-72BCh]
		test	edi, edi
		jl	loc_46D523
		cmp	edi, 18h
		jg	loc_46D523
		push	edi
		push	ebx		; arglist
		push	offset aSInvI	; "S%iNV%i"
		mov	eax, [ebp-40h]
		push	eax		; int
		call	loc_46BF78
		add	esp, 10h
		push	edi
		push	ebx
		push	offset a_intern__sInvI ; "_INTERN_.S%iNV%i"
		lea	edx, [ebp-0BA0h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		mov	ecx, [ebp-0Ch]
		lea	eax, [ebp-9A0h]
		lea	edx, [ebp-72C0h]
		push	ecx		; nexp
		push	eax		; rettype
		push	edx		; adec
		lea	ecx, [ebp-0BA0h]
		push	0		; pd
		push	ecx		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jge	loc_46CC85
		lea	eax, [ebx+edi+1]
		push	eax		; arglist
		push	offset aFnI	; "Fn%i"
		mov	edx, [ebp-40h]
		push	edx		; int
		call	loc_46BF78
		add	esp, 0Ch
		lea	ebx, [ebx+edi+1]
		push	ebx
		push	offset a_intern__fnI ; "_INTERN_.Fn%i"
		lea	eax, [ebp-0BA0h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	edx, [ebp-0Ch]
		lea	ecx, [ebp-9A0h]
		lea	eax, [ebp-72C0h]
		push	edx		; nexp
		push	ecx		; rettype
		push	eax		; adec
		lea	edx, [ebp-0BA0h]
		push	0		; pd
		push	edx		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	[ebp-8], eax
		jmp	loc_46CC85
; ---------------------------------------------------------------------------

loc_46C9ED:				; CODE XREF: .text:0046C8DCj
		mov	ecx, [ebp-40h]
		test	byte ptr [ecx+0Ah], 40h
		jz	loc_46CB3D
		mov	ebx, [ebp-8]
		dec	ebx
		push	ebx		; arglist
		push	offset aFmtIa	; "Fmt%iA"
		mov	eax, [ebp-40h]
		push	eax		; int
		call	loc_46BF78
		add	esp, 0Ch
		lea	edx, [ebp-0BA0h]
		push	ebx
		push	offset a_intern__fmtIa ; "_INTERN_.Fmt%iA"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ecx, [ebp-0Ch]
		lea	eax, [ebp-9A0h]
		lea	edx, [ebp-72C0h]
		push	ecx		; nexp
		push	eax		; rettype
		push	edx		; adec
		lea	ecx, [ebp-0BA0h]
		push	0		; pd
		push	ecx		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	edi, eax
		cmp	dword ptr [ebp-8], 0
		jge	short loc_46CA58
		mov	[ebp-8], edi
		jmp	loc_46CC85
; ---------------------------------------------------------------------------

loc_46CA58:				; CODE XREF: .text:0046CA4Ej
		test	edi, edi
		jle	short loc_46CA7B
		mov	eax, edi
		shl	eax, 4
		add	eax, edi
		lea	eax, [edi+eax*8]
		lea	eax, [edi+eax*2]
		test	byte ptr [ebp+eax*4-7700h], 20h
		jnz	short loc_46CA7B
		mov	[ebp-8], edi
		jmp	loc_46CC85
; ---------------------------------------------------------------------------

loc_46CA7B:				; CODE XREF: .text:0046CA5Aj
					; .text:0046CA71j
		cmp	ebx, 4
		jge	short loc_46CAE5
		cmp	ebx, [ebp-8]
		jge	short loc_46CAE5
		mov	edx, [ebp-8]
		sub	edx, ebx
		dec	edx
		push	edx
		push	ebx		; arglist
		push	offset aFmtIpIa	; "Fmt%ip%iA"
		mov	ecx, [ebp-40h]
		push	ecx		; int
		call	loc_46BF78
		add	esp, 10h
		mov	eax, [ebp-8]
		sub	eax, ebx
		dec	eax
		push	eax
		push	ebx
		push	offset a_intern__fmtIp ; "_INTERN_.Fmt%ip%iA"
		lea	edx, [ebp-0BA0h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		mov	ecx, [ebp-0Ch]
		lea	eax, [ebp-9A0h]
		lea	edx, [ebp-72C0h]
		push	ecx		; nexp
		push	eax		; rettype
		push	edx		; adec
		lea	ecx, [ebp-0BA0h]
		push	0		; pd
		push	ecx		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	[ebp-8], eax
		jmp	loc_46CC85
; ---------------------------------------------------------------------------

loc_46CAE5:				; CODE XREF: .text:0046CA7Ej
					; .text:0046CA83j
		mov	eax, [ebp-8]
		push	eax		; arglist
		push	offset aFnI	; "Fn%i"
		mov	edx, [ebp-40h]
		push	edx		; int
		call	loc_46BF78
		add	esp, 0Ch
		mov	ecx, [ebp-8]
		push	ecx
		push	offset a_intern__fnI ; "_INTERN_.Fn%i"
		lea	eax, [ebp-0BA0h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	edx, [ebp-0Ch]
		lea	ecx, [ebp-9A0h]
		lea	eax, [ebp-72C0h]
		push	edx		; nexp
		push	ecx		; rettype
		push	eax		; adec
		lea	edx, [ebp-0BA0h]
		push	0		; pd
		push	edx		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	[ebp-8], eax
		jmp	loc_46CC85
; ---------------------------------------------------------------------------

loc_46CB3D:				; CODE XREF: .text:0046C9F4j
		mov	ecx, [ebp-40h]
		test	byte ptr [ecx+0Ah], 80h
		jz	loc_46D523
		mov	ebx, [ebp-8]
		dec	ebx
		push	ebx		; arglist
		push	offset aFmtIw	; "Fmt%iW"
		mov	eax, [ebp-40h]
		push	eax		; int
		call	loc_46BF78
		add	esp, 0Ch
		lea	edx, [ebp-0BA0h]
		push	ebx
		push	offset a_intern__fmtIw ; "_INTERN_.Fmt%iW"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ecx, [ebp-0Ch]
		lea	eax, [ebp-9A0h]
		lea	edx, [ebp-72C0h]
		push	ecx		; nexp
		push	eax		; rettype
		push	edx		; adec
		lea	ecx, [ebp-0BA0h]
		push	0		; pd
		push	ecx		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	edi, eax
		cmp	dword ptr [ebp-8], 0
		jge	short loc_46CBA8
		mov	[ebp-8], edi
		jmp	loc_46CC85
; ---------------------------------------------------------------------------

loc_46CBA8:				; CODE XREF: .text:0046CB9Ej
		test	edi, edi
		jle	short loc_46CBCB
		mov	eax, edi
		shl	eax, 4
		add	eax, edi
		lea	eax, [edi+eax*8]
		lea	eax, [edi+eax*2]
		test	byte ptr [ebp+eax*4-7700h], 20h
		jnz	short loc_46CBCB
		mov	[ebp-8], edi
		jmp	loc_46CC85
; ---------------------------------------------------------------------------

loc_46CBCB:				; CODE XREF: .text:0046CBAAj
					; .text:0046CBC1j
		cmp	ebx, 4
		jge	short loc_46CC32
		cmp	ebx, [ebp-8]
		jge	short loc_46CC32
		mov	edx, [ebp-8]
		sub	edx, ebx
		dec	edx
		push	edx
		push	ebx		; arglist
		push	offset aFmtIpIw	; "Fmt%ip%iW"
		mov	ecx, [ebp-40h]
		push	ecx		; int
		call	loc_46BF78
		add	esp, 10h
		mov	eax, [ebp-8]
		sub	eax, ebx
		dec	eax
		push	eax
		push	ebx
		push	offset a_intern__fmt_0 ; "_INTERN_.Fmt%ip%iW"
		lea	edx, [ebp-0BA0h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		mov	ecx, [ebp-0Ch]
		lea	eax, [ebp-9A0h]
		lea	edx, [ebp-72C0h]
		push	ecx		; nexp
		push	eax		; rettype
		push	edx		; adec
		lea	ecx, [ebp-0BA0h]
		push	0		; pd
		push	ecx		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	[ebp-8], eax
		jmp	short loc_46CC85
; ---------------------------------------------------------------------------

loc_46CC32:				; CODE XREF: .text:0046CBCEj
					; .text:0046CBD3j
		mov	eax, [ebp-8]
		push	eax		; arglist
		push	offset aFnI	; "Fn%i"
		mov	edx, [ebp-40h]
		push	edx		; int
		call	loc_46BF78
		add	esp, 0Ch
		mov	ecx, [ebp-8]
		push	ecx
		push	offset a_intern__fnI ; "_INTERN_.Fn%i"
		lea	eax, [ebp-0BA0h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	edx, [ebp-0Ch]
		lea	ecx, [ebp-9A0h]
		lea	eax, [ebp-72C0h]
		push	edx		; nexp
		push	ecx		; rettype
		push	eax		; adec
		lea	edx, [ebp-0BA0h]
		push	0		; pd
		push	edx		; _name
		call	Decodeknownbyname
		add	esp, 14h
		mov	[ebp-8], eax

loc_46CC85:				; CODE XREF: .text:0046C8D0j
					; .text:0046C98Dj ...
		cmp	dword ptr [ebp-8], 0
		jl	loc_46D523
		inc	dword_5E5D98

loc_46CC95:				; CODE XREF: .text:0046C688j
					; .text:0046C6BAj
		xor	edi, edi
		xor	ebx, ebx
		lea	esi, [ebp-72C0h]
		jmp	loc_46CDC3
; ---------------------------------------------------------------------------

loc_46CCA4:				; CODE XREF: .text:0046CDCBj
		cmp	dword_5BDD2C, 0
		jz	short loc_46CCB6
		test	byte ptr [esi],	8
		jz	loc_46CDBC

loc_46CCB6:				; CODE XREF: .text:0046CCABj
		cmp	word ptr [esi+24Ch], 0
		jz	loc_46CDBC
		push	$CTW0("???")	; "???"
		mov	eax, ebx
		shl	eax, 4
		add	eax, ebx
		lea	eax, [ebx+eax*8]
		lea	eax, [ebx+eax*2]
		shl	eax, 2
		lea	edx, [ebp-7074h]
		add	eax, edx
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	loc_46CDBC
		test	edi, edi
		jle	short loc_46CD1A
		mov	eax, edi
		mov	ecx, 100h
		sub	ecx, edi
		lea	edx, [ebp-0BA0h]
		add	eax, eax
		push	offset asc_53C0BC ; ", "
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax

loc_46CD1A:				; CODE XREF: .text:0046CCF4j
		cmp	word ptr [esi+4Ch], 0
		jz	short loc_46CD84
		cmp	word ptr [esi+4Ch], 3Dh
		jz	short loc_46CD84
		mov	ecx, ebx
		lea	eax, [ebp-7274h]
		shl	ecx, 4
		mov	edx, 100h
		add	ecx, ebx
		sub	edx, edi
		lea	ecx, [ebx+ecx*8]
		lea	ecx, [ebx+ecx*2]
		shl	ecx, 2
		add	ecx, eax
		lea	eax, [ebp-0BA0h]
		push	ecx		; src
		mov	ecx, edi
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		mov	ecx, edi
		mov	edx, 100h
		sub	edx, edi
		lea	eax, [ebp-0BA0h]
		add	ecx, ecx
		push	offset asc_53C0C2 ; " =	"
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax

loc_46CD84:				; CODE XREF: .text:0046CD1Fj
					; .text:0046CD26j
		mov	edx, ebx
		lea	ecx, [ebp-7074h]
		shl	edx, 4
		mov	eax, 100h
		add	edx, ebx
		sub	eax, edi
		lea	edx, [ebx+edx*8]
		lea	edx, [ebx+edx*2]
		shl	edx, 2
		add	edx, ecx
		lea	ecx, [ebp-0BA0h]
		push	edx		; src
		mov	edx, edi
		add	edx, edx
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax

loc_46CDBC:				; CODE XREF: .text:0046CCB0j
					; .text:0046CCBEj ...
		inc	ebx
		add	esi, 44Ch

loc_46CDC3:				; CODE XREF: .text:0046CC9Fj
		cmp	ebx, [ebp-8]
		jge	short loc_46CDD1
		cmp	ebx, 18h
		jl	loc_46CCA4

loc_46CDD1:				; CODE XREF: .text:0046CDC6j
		test	edi, edi
		jle	short loc_46CE06
		cmp	edi, 0FFh
		jl	short loc_46CDF1
		push	offset word_53C0CA ; src
		lea	eax, [ebp-9A8h]
		push	eax		; dst
		call	_wcscpy
		add	esp, 8

loc_46CDF1:				; CODE XREF: .text:0046CDDBj
		lea	edx, [ebp-0BA0h]
		push	edx		; s
		push	32h		; type
		mov	ecx, [ebp-20h]
		push	ecx		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_46CE06:				; CODE XREF: .text:0046CDD3j
		mov	eax, [ebp-20h]
		xor	edx, edx
		mov	[ebp-72CCh], eax
		mov	[ebp-72D0h], eax
		cmp	dword ptr [ebp-8], 0
		jz	short loc_46CE23
		add	edx, 100h

loc_46CE23:				; CODE XREF: .text:0046CE1Bj
		xor	ecx, ecx
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_46CE31
		add	ecx, 800h

loc_46CE31:				; CODE XREF: .text:0046CE29j
		or	edx, ecx
		mov	[ebp-72C8h], edx
		xor	ebx, ebx
		lea	esi, [ebp-72B8h]
		jmp	loc_46CF7F
; ---------------------------------------------------------------------------

loc_46CE46:				; CODE XREF: .text:0046CF87j
		mov	eax, [esi]
		mov	[ebp-30h], eax
		mov	edx, [ebp-30h]
		cmp	edx, [ebp+0Ch]
		jb	loc_46CF78
		mov	ecx, [ebp-30h]
		cmp	ecx, [ebp-20h]
		jnb	loc_46CF78
		mov	eax, [ebp-72D0h]
		cmp	eax, [ebp-30h]
		jnb	short loc_46CE76
		lea	edx, [ebp-72D0h]
		jmp	short loc_46CE79
; ---------------------------------------------------------------------------

loc_46CE76:				; CODE XREF: .text:0046CE6Cj
		lea	edx, [ebp-30h]

loc_46CE79:				; CODE XREF: .text:0046CE74j
		mov	eax, [edx]
		mov	[ebp-72D0h], eax
		mov	ecx, [ebp-8]
		dec	ecx
		cmp	ebx, ecx
		jnz	short loc_46CE99
		test	byte ptr [esi+4], 20h
		jnz	short loc_46CE99
		and	dword ptr [ebp-72C8h], 0FFFFFEFFh

loc_46CE99:				; CODE XREF: .text:0046CE87j
					; .text:0046CE8Dj
		test	byte ptr [esi-8], 3
		jz	loc_46CF78
		mov	eax, [esi-4]
		cmp	eax, addr0
		jb	loc_46CF78
		mov	edx, [esi-4]
		cmp	edx, addr1
		jnb	loc_46CF78
		cmp	word ptr [esi+4], 40h
		jnz	loc_46CF78
		push	offset aCallback ; "CALLBACK"
		mov	ecx, ebx
		shl	ecx, 4
		add	ecx, ebx
		lea	ecx, [ebx+ecx*8]
		lea	ecx, [ebx+ecx*2]
		shl	ecx, 2
		lea	eax, [ebp-72B2h]
		add	ecx, eax
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_46CF4A
		push	offset aWinproca_1 ; "WINPROCA"
		mov	edx, ebx
		shl	edx, 4
		add	edx, ebx
		lea	edx, [ebx+edx*8]
		lea	edx, [ebx+edx*2]
		shl	edx, 2
		lea	ecx, [ebp-72B2h]
		add	edx, ecx
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_46CF4A
		push	offset aWinprocw ; "WINPROCW"
		mov	eax, ebx
		shl	eax, 4
		add	eax, ebx
		lea	eax, [ebx+eax*8]
		lea	eax, [ebx+eax*2]
		shl	eax, 2
		lea	edx, [ebp-72B2h]
		add	eax, edx
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_46CF78

loc_46CF4A:				; CODE XREF: .text:0046CEF4j
					; .text:0046CF1Ej
		mov	ecx, [esi-4]
		sub	ecx, addr0
		mov	eax, s
		xor	edx, edx
		mov	dl, [eax+ecx]
		and	edx, 1Fh
		cmp	edx, 1Ch
		jnz	short loc_46CF78
		mov	ecx, [esi-4]
		sub	ecx, addr0
		mov	eax, dword_5E5D74
		or	word ptr [eax+ecx*2], 2

loc_46CF78:				; CODE XREF: .text:0046CE51j
					; .text:0046CE5Dj ...
		inc	ebx
		add	esi, 44Ch

loc_46CF7F:				; CODE XREF: .text:0046CE41j
		cmp	ebx, [ebp-8]
		jge	short loc_46CF8D
		cmp	ebx, 18h
		jl	loc_46CE46

loc_46CF8D:				; CODE XREF: .text:0046CF82j
		test	byte ptr [ebp-72C7h], 1
		jz	short loc_46CFE8
		cmp	dword ptr [ebp-0Ch], 0
		jle	short loc_46CFE8
		push	0		; subaddr
		mov	edx, [ebp-34h]
		push	edx		; _addr
		call	Followcall
		pop	ecx
		push	eax		; _addr
		push	offset procdata	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-40h], eax
		cmp	dword ptr [ebp-40h], 0
		jz	short loc_46CFE8
		mov	ecx, [ebp-40h]
		mov	eax, [ecx+28h]
		cmp	eax, [ebp-0Ch]
		jnz	short loc_46CFE8
		mov	edx, [ebp-0Ch]
		cmp	edx, [ebp-8]
		jnz	short loc_46CFE8
		mov	ecx, [ebp-40h]
		test	dword ptr [ecx+8], 3C00000h
		jz	short loc_46CFE8
		and	dword ptr [ebp-72C8h], 0FFFFFEFFh

loc_46CFE8:				; CODE XREF: .text:0046CF94j
					; .text:0046CF9Aj ...
		mov	eax, [ebp-72D0h]
		inc	eax
		mov	[ebp-34h], eax
		mov	edx, [ebp-34h]
		cmp	edx, [ebp-20h]
		ja	loc_46D0A1

loc_46CFFE:				; CODE XREF: .text:0046D09Bj
		mov	eax, [ebp-34h]
		sub	eax, addr0
		mov	edx, s
		test	byte ptr [edx+eax], 1Fh
		jz	short loc_46D01F
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+eax*2], 2
		jz	short loc_46D034

loc_46D01F:				; CODE XREF: .text:0046D011j
		mov	eax, [ebp-34h]
		mov	[ebp-72D0h], eax
		or	dword ptr [ebp-72C8h], 100h
		jmp	short loc_46D092
; ---------------------------------------------------------------------------

loc_46D034:				; CODE XREF: .text:0046D01Dj
		mov	edx, dword_5E5D74
		test	byte ptr [edx+eax*2], 1
		jz	short loc_46D092
		push	200h		; nbuf
		lea	ecx, [ebp-840h]
		push	ecx		; buf
		mov	eax, [ebp-34h]
		push	eax		; dest
		call	Findlocaljumpsto
		add	esp, 0Ch
		mov	edi, eax
		xor	ebx, ebx
		lea	eax, [ebp-840h]
		cmp	edi, ebx
		jle	short loc_46D092

loc_46D066:				; CODE XREF: .text:0046D090j
		mov	edx, [eax]
		cmp	edx, [ebp-72D0h]
		jb	short loc_46D075
		cmp	edx, [ebp-20h]
		jbe	short loc_46D08A

loc_46D075:				; CODE XREF: .text:0046D06Ej
		mov	ecx, [ebp-34h]
		mov	[ebp-72D0h], ecx
		or	dword ptr [ebp-72C8h], 100h
		jmp	short loc_46D092
; ---------------------------------------------------------------------------

loc_46D08A:				; CODE XREF: .text:0046D073j
		inc	ebx
		add	eax, 4
		cmp	edi, ebx
		jg	short loc_46D066

loc_46D092:				; CODE XREF: .text:0046D032j
					; .text:0046D03Ej ...
		inc	dword ptr [ebp-34h]
		mov	eax, [ebp-34h]
		cmp	eax, [ebp-20h]
		jbe	loc_46CFFE

loc_46D0A1:				; CODE XREF: .text:0046CFF8j
		xor	edx, edx
		lea	ecx, [ebp-72D0h]
		mov	[ebp-72C4h], edx
		push	ecx		; item
		mov	eax, [ebp+8]
		add	eax, 938h
		push	eax		; nd
		call	Addnesteddata
		add	esp, 8
		test	eax, eax
		jz	loc_46D186
		xor	ebx, ebx
		lea	esi, [ebp-72B8h]
		jmp	loc_46D178
; ---------------------------------------------------------------------------

loc_46D0D6:				; CODE XREF: .text:0046D180j
		mov	eax, [esi]
		mov	[ebp-30h], eax
		mov	edx, [ebp-30h]
		cmp	edx, [ebp-72D0h]
		jb	loc_46D171
		mov	ecx, [ebp-30h]
		cmp	ecx, [ebp-20h]
		jnb	short loc_46D171
		mov	edx, ebx
		lea	eax, [ebp-960h]
		shl	edx, 4
		push	100h		; nt
		add	edx, ebx
		push	eax		; t
		lea	ecx, [ebp-7274h]
		push	100h		; nw
		lea	edx, [ebx+edx*8]
		lea	edx, [ebx+edx*2]
		shl	edx, 2
		add	edx, ecx
		push	edx		; w
		call	Unicodetoutf
		mov	edx, ebx
		add	esp, 10h
		shl	edx, 4
		mov	edi, eax
		add	edx, ebx
		inc	edi
		lea	eax, [ebp-960h]
		push	20h		; nt
		lea	edx, [ebx+edx*8]
		add	eax, edi
		push	eax		; t
		lea	ecx, [ebp-72B4h]
		lea	edx, [ebx+edx*2]
		push	100h		; nw
		shl	edx, 2
		add	edx, ecx
		push	edx		; w
		call	Unicodetoutf
		add	esp, 10h
		inc	eax
		add	edi, eax
		push	edi		; datasize
		lea	eax, [ebp-960h]
		push	eax		; data
		push	34h		; type
		mov	edx, [ebp-30h]
		push	edx		; _addr
		call	Quickinsertdata
		add	esp, 10h

loc_46D171:				; CODE XREF: .text:0046D0E4j
					; .text:0046D0F0j
		inc	ebx
		add	esi, 44Ch

loc_46D178:				; CODE XREF: .text:0046D0D1j
		cmp	ebx, [ebp-8]
		jge	short loc_46D186
		cmp	ebx, 18h
		jl	loc_46D0D6

loc_46D186:				; CODE XREF: .text:0046D0C3j
					; .text:0046D17Bj
		cmp	word ptr [ebp-9A0h], 0
		jz	loc_46D514
		mov	ecx, dword_5E5D70
		mov	eax, [ebp-24h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		add	edx, [ebp-24h]
		cmp	edx, addr1
		jnb	loc_46D514
		mov	ecx, dword_5E5D70
		mov	eax, [ebp-24h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		add	edx, [ebp-24h]
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+edx*2], 3
		jnz	loc_46D514
		lea	eax, [ebp-9A0h]
		push	eax		; s
		push	36h		; type
		mov	edx, dword_5E5D70
		mov	ecx, [ebp-24h]
		xor	eax, eax
		mov	al, [edx+ecx]
		add	eax, [ebp-20h]
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch
		test	byte ptr [ebp-9A0h], 40h
		jz	loc_46D514
		mov	edx, dword_5E5D70
		mov	ecx, [ebp-24h]
		xor	eax, eax
		mov	al, [edx+ecx]
		add	eax, [ebp-24h]
		cmp	eax, [ebp-2Ch]
		jnb	loc_46D514
		test	byte ptr [ebp-9A0h], 7
		jnz	loc_46D3C8
		push	0		; predict
		push	0		; reg
		push	0		; mode
		lea	edx, [ebp-8BA0h]
		push	edx		; da
		push	0		; dec
		mov	ecx, dword_5E5D70
		mov	eax, [ebp-24h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		add	edx, [ebp-20h]
		push	edx		; ip
		mov	ecx, dword_5E5D70
		mov	eax, [ebp-24h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		mov	ecx, [ebp-2Ch]
		sub	ecx, [ebp-24h]
		sub	ecx, edx
		push	ecx		; cmdsize
		mov	eax, dword_5E5D70
		mov	edx, [ebp-24h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		mov	eax, copy
		add	eax, [ebp-24h]
		add	ecx, eax
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		cmp	dword ptr [ebp-8B74h], 0
		jnz	loc_46D3C8
		mov	edx, [ebp-8B8Ch]
		and	edx, 1Fh
		cmp	edx, 4
		jnz	loc_46D3C8
		test	byte ptr [ebp-8B54h], 1
		jz	loc_46D3C8
		cmp	dword ptr [ebp-8B48h], 4
		jnz	loc_46D3C8
		cmp	dword ptr [ebp-8B40h], 0
		jnz	loc_46D3C8
		test	byte ptr [ebp-86F3h], 2
		jz	loc_46D3C8
		mov	ecx, dword_5E5D70
		mov	eax, [ebp-24h]
		xor	edx, edx
		mov	dl, [ecx+eax]
		add	edx, [ebp-24h]
		add	edx, [ebp-8B80h]
		mov	ecx, copy
		xor	eax, eax
		mov	al, [ecx+edx]
		and	eax, 0FEh
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-86E8h], 4
		jnz	short loc_46D346
		cmp	dword ptr [ebp-86B4h], 0FFFFFFFFh
		jz	short loc_46D346
		mov	edx, [ebp-86B4h]
		push	edx		; u
		call	Bitcount
		pop	ecx
		cmp	eax, 18h
		jl	short loc_46D346
		cmp	dword ptr [ebp-1Ch], 24h
		jz	loc_46D3C8
		cmp	dword ptr [ebp-1Ch], 80h
		jz	loc_46D3C8
		cmp	dword ptr [ebp-1Ch], 82h
		jz	loc_46D3C8

loc_46D346:				; CODE XREF: .text:0046D305j
					; .text:0046D30Ej ...
		mov	ecx, [ebp-86B4h]
		lea	eax, [ebp-0BA0h]
		push	ecx
		push	offset aConstX	; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	edi, eax
		mov	edx, 100h
		lea	eax, [ebp-18h]
		sub	edx, edi
		push	eax		; nontriv
		lea	ecx, [ebp-0BA0h]
		add	edi, edi
		add	edi, ecx
		push	edx		; ntext
		push	edi		; text
		lea	edx, [ebp-86B4h]
		mov	eax, [ebp-86E8h]
		lea	ecx, [ebp-9A0h]
		push	eax		; ndata
		push	edx		; data
		push	ecx		; prtype
		push	0		; pmod
		call	Decodeargument
		add	esp, 1Ch
		mov	ebx, eax
		test	ebx, ebx
		jle	short loc_46D3C8
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_46D3C8
		lea	eax, [ebp-0BA0h]
		push	eax		; s
		push	31h		; type
		mov	edx, dword_5E5D70
		mov	ecx, [ebp-24h]
		xor	eax, eax
		mov	al, [edx+ecx]
		add	eax, [ebp-20h]
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_46D3C8:				; CODE XREF: .text:0046D223j
					; .text:0046D288j ...
		movzx	edx, word ptr [ebp-9A0h]
		and	edx, 7
		dec	edx
		jnz	loc_46D514
		push	0		; predict
		push	0		; reg
		push	0		; mode
		lea	ecx, [ebp-8BA0h]
		push	ecx		; da
		push	0		; dec
		mov	eax, dword_5E5D70
		mov	edx, [ebp-24h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		add	ecx, [ebp-20h]
		push	ecx		; ip
		mov	eax, dword_5E5D70
		mov	edx, [ebp-24h]
		xor	ecx, ecx
		mov	cl, [eax+edx]
		mov	eax, [ebp-2Ch]
		sub	eax, [ebp-24h]
		sub	eax, ecx
		push	eax		; cmdsize
		mov	edx, dword_5E5D70
		mov	ecx, [ebp-24h]
		xor	eax, eax
		mov	al, [edx+ecx]
		mov	edx, copy
		add	edx, [ebp-24h]
		add	eax, edx
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		cmp	dword ptr [ebp-8B74h], 0
		jnz	loc_46D514
		mov	ecx, [ebp-8B8Ch]
		and	ecx, 1Fh
		cmp	ecx, 1
		jnz	loc_46D514
		test	byte ptr [ebp-8B53h], 1
		jz	loc_46D514
		cmp	dword ptr [ebp-8B48h], 4
		jnz	loc_46D514
		cmp	dword ptr [ebp-8B28h], 1
		jnz	loc_46D514
		cmp	byte ptr [ebp-8B30h], 1
		jnz	loc_46D514
		test	byte ptr [ebp-86F3h], 2
		jz	loc_46D514
		and	word ptr [ebp-9A0h], 0FFFEh
		mov	eax, [ebp-86B4h]
		lea	edx, [ebp-0BA0h]
		push	eax
		push	offset aConstX	; format
		push	edx		; buffer
		call	_swprintf
		mov	edi, eax
		add	esp, 0Ch
		mov	eax, 100h
		lea	edx, [ebp-0BA0h]
		sub	eax, edi
		add	edi, edi
		push	0		; nontriv
		add	edi, edx
		push	eax		; ntext
		push	edi		; text
		mov	ecx, [ebp-86E8h]
		lea	eax, [ebp-86B4h]
		push	ecx		; ndata
		push	eax		; data
		lea	edx, [ebp-9A0h]
		push	edx		; prtype
		push	0		; pmod
		call	Decodeargument
		add	esp, 1Ch
		mov	ebx, eax
		test	ebx, ebx
		jle	short loc_46D514
		lea	eax, [ebp-0BA0h]
		push	eax		; s
		push	31h		; type
		mov	edx, dword_5E5D70
		mov	ecx, [ebp-24h]
		xor	eax, eax
		mov	al, [edx+ecx]
		add	eax, [ebp-20h]
		push	eax		; _addr
		call	QuickinsertnameW
		add	esp, 0Ch

loc_46D514:				; CODE XREF: .text:0046D18Ej
					; .text:0046D1ABj ...
		mov	edx, dword_5E5D74
		mov	ecx, [ebp-24h]
		or	word ptr [edx+ecx*2], 8000h

loc_46D523:				; CODE XREF: .text:0046C0F6j
					; .text:0046C10Ej ...
		inc	dword ptr [ebp-24h]
		mov	eax, [ebp-24h]
		cmp	eax, [ebp-2Ch]
		jb	loc_46C0E3

loc_46D532:				; CODE XREF: .text:0046C0DDj
		xor	eax, eax

loc_46D534:				; CODE XREF: .text:0046C002j
					; .text:0046C14Cj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_46D53C@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int nDenominator)
loc_46D53C:				; CODE XREF: .text:0046F5E6p
					; .text:0046F61Bp
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 4

loc_46D545:				; CODE XREF: .text:0046D54Dj
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_46D545
		mov	eax, [ebp-4]
		add	esp, 0FFFFFE18h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	eax, addr0
		cmp	eax, [ebp+0Ch]
		ja	short loc_46D570
		mov	edx, [ebp+0Ch]
		cmp	edx, addr1
		jb	short loc_46D577

loc_46D570:				; CODE XREF: .text:0046D563j
		xor	eax, eax
		jmp	loc_46E5D9
; ---------------------------------------------------------------------------

loc_46D577:				; CODE XREF: .text:0046D56Ej
		mov	edx, [ebp+0Ch]
		add	edx, [ebp+10h]
		cmp	edx, addr1
		jbe	short loc_46D591
		mov	ecx, addr1
		sub	ecx, [ebp+0Ch]
		mov	[ebp+10h], ecx

loc_46D591:				; CODE XREF: .text:0046D583j
		mov	eax, [ebp+0Ch]
		xor	edx, edx
		sub	eax, addr0
		xor	ecx, ecx
		add	eax, [ebp+10h]
		mov	[ebp-34h], eax
		mov	[ebp-30h], edx
		mov	[ebp-14h], ecx
		xor	eax, eax
		mov	[ebp-28h], eax
		push	44h		; n
		lea	edx, [ebp-24B4h]
		push	0		; c
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		push	1		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	1000h		; nexp
		push	176h		; itemsize
		lea	ecx, [ebp-24B4h]
		push	ecx		; sd
		call	Createsorteddata
		add	esp, 18h
		mov	dword ptr [ebp-1Ch], 200h
		push	1		; flags
		mov	eax, [ebp-1Ch]
		mov	edx, eax	; int
		lea	eax, [edx+eax*2]
		shl	eax, 4
		sub	eax, edx
		shl	eax, 2
		sub	eax, edx
		add	eax, eax	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-48h], eax
		lea	ecx, [ebp-24B4h]
		push	ecx		; sd
		call	Issortedinit
		pop	ecx
		test	eax, eax
		jz	short loc_46D621
		cmp	dword ptr [ebp-48h], 0
		jnz	short loc_46D639

loc_46D621:				; CODE XREF: .text:0046D619j
		push	offset aLowMemoryUnabl ; "  Low	memory,	unable to recognize loop "...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_46D639:				; CODE XREF: .text:0046D61Fj
		mov	eax, [ebp+0Ch]
		sub	eax, addr0
		mov	[ebp-2Ch], eax
		mov	edx, [ebp-2Ch]
		cmp	edx, [ebp-34h]
		jnb	loc_46E5B9

loc_46D651:				; CODE XREF: .text:0046E5B3j
		cmp	dword ptr [ebp-14h], 0
		jle	short loc_46D6B7
		mov	ecx, [ebp-2Ch]
		cmp	ecx, [ebp-246Ch]
		jbe	short loc_46D6B7
		xor	ebx, ebx
		lea	esi, [ebp-2470h]
		cmp	ebx, [ebp-14h]
		jge	short loc_46D6B2

loc_46D66F:				; CODE XREF: .text:0046D6B0j
		mov	eax, addr0
		xor	ecx, ecx
		add	[esi], eax
		mov	eax, ebx
		shl	eax, 3
		mov	edx, addr0
		add	[esi+4], edx
		sub	eax, ebx
		shl	eax, 3
		lea	edx, [ebp-2470h]
		add	eax, edx
		mov	[esi+0Ch], ecx
		push	eax		; item
		mov	ecx, [ebp+8]
		add	ecx, 920h
		push	ecx		; nd
		call	Addnesteddata
		add	esp, 8
		inc	ebx
		add	esi, 38h
		cmp	ebx, [ebp-14h]
		jl	short loc_46D66F

loc_46D6B2:				; CODE XREF: .text:0046D66Dj
		xor	eax, eax
		mov	[ebp-14h], eax

loc_46D6B7:				; CODE XREF: .text:0046D655j
					; .text:0046D660j
		mov	edx, s
		mov	ecx, [ebp-2Ch]
		test	byte ptr [edx+ecx], 60h
		jz	loc_46E5AA
		mov	eax, dword_5E5D74
		mov	edx, [ebp-2Ch]
		test	byte ptr [eax+edx*2], 1
		jz	loc_46E5AA
		mov	ecx, s
		mov	eax, [ebp-2Ch]
		xor	edx, edx
		mov	dl, [ecx+eax]
		and	edx, 1Fh
		cmp	edx, 1Ch
		jnz	loc_46E5AA
		mov	ecx, [ebp-30h]
		add	ecx, 2000h
		cmp	ecx, [ebp-2Ch]
		jnb	short loc_46D73E
		mov	eax, [ebp+10h]
		push	eax		; nDenominator
		push	3E8h		; nNumerator
		mov	edx, [ebp+0Ch]
		sub	edx, addr0
		mov	ecx, [ebp-2Ch]
		sub	ecx, edx
		push	ecx		; nNumber
		call	MulDiv
		push	eax		; int
		call	loc_45C684
		pop	ecx
		test	eax, eax
		jz	short loc_46D738
		mov	dword ptr [ebp-28h], 0FFFFFFFFh
		jmp	loc_46E5B9
; ---------------------------------------------------------------------------

loc_46D738:				; CODE XREF: .text:0046D72Aj
		mov	eax, [ebp-2Ch]
		mov	[ebp-30h], eax

loc_46D73E:				; CODE XREF: .text:0046D702j
		push	200h		; nbuf
		lea	edx, [ebp-870h]
		push	edx		; buf
		mov	ecx, addr0
		add	ecx, [ebp-2Ch]
		push	ecx		; dest
		call	Findlocaljumpsto
		add	esp, 0Ch
		mov	[ebp-8], eax
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	loc_46E5AA
		cmp	dword ptr [ebp-4], 200h
		jge	loc_46E5AA
		mov	esi, [ebp-2Ch]
		inc	esi
		cmp	esi, [ebp-34h]
		jnb	short loc_46D79A

loc_46D782:				; CODE XREF: .text:0046D798j
		mov	eax, s
		xor	edx, edx
		mov	dl, [eax+esi]
		and	edx, 60h
		cmp	edx, 60h
		jnz	short loc_46D79A
		inc	esi
		cmp	esi, [ebp-34h]
		jb	short loc_46D782

loc_46D79A:				; CODE XREF: .text:0046D780j
					; .text:0046D792j
		add	esi, addr0
		mov	[ebp-40h], esi
		mov	ecx, [ebp-4]
		lea	esi, [ebp+ecx*4-874h]
		jmp	short loc_46D7B5
; ---------------------------------------------------------------------------

loc_46D7AF:				; CODE XREF: .text:0046D7C0j
		dec	dword ptr [ebp-4]
		add	esi, 0FFFFFFFCh

loc_46D7B5:				; CODE XREF: .text:0046D7ADj
		cmp	dword ptr [ebp-4], 0
		jle	short loc_46D7C2
		mov	eax, [esi]
		cmp	eax, [ebp-40h]
		ja	short loc_46D7AF

loc_46D7C2:				; CODE XREF: .text:0046D7B9j
		cmp	dword ptr [ebp-4], 0
		jz	loc_46E5AA
		mov	edx, [ebp-4]
		mov	ecx, [ebp+edx*4-874h]
		sub	ecx, addr0
		mov	[ebp-3Ch], ecx
		mov	eax, [ebp-3Ch]
		cmp	eax, [ebp-2Ch]
		jbe	loc_46E5AA
		mov	edx, [ebp-3Ch]
		cmp	edx, [ebp-34h]
		jnb	loc_46E5AA
		mov	ecx, addr0
		add	ecx, [ebp-2Ch]
		cmp	ecx, [ebp-870h]
		ja	short loc_46D810
		mov	eax, [ebp-4]
		cmp	eax, [ebp-8]
		jz	short loc_46D81B

loc_46D810:				; CODE XREF: .text:0046D806j
		mov	edx, [ebp-2Ch]
		mov	[ebp-38h], edx
		jmp	loc_46D89D
; ---------------------------------------------------------------------------

loc_46D81B:				; CODE XREF: .text:0046D80Ej
		mov	esi, [ebp-2Ch]
		dec	esi
		jmp	short loc_46D832
; ---------------------------------------------------------------------------

loc_46D821:				; CODE XREF: .text:0046D83Dj
		mov	eax, s
		xor	edx, edx
		mov	dl, [eax+esi]
		and	edx, 1Fh
		dec	edx
		jnz	short loc_46D83F
		dec	esi

loc_46D832:				; CODE XREF: .text:0046D81Fj
		mov	ecx, addr0
		add	ecx, esi
		cmp	ecx, [ebp+0Ch]
		jnb	short loc_46D821

loc_46D83F:				; CODE XREF: .text:0046D82Fj
		mov	eax, addr0
		add	eax, esi
		cmp	eax, [ebp+0Ch]
		jnb	short loc_46D852
		xor	edx, edx
		mov	[ebp-38h], edx
		jmp	short loc_46D89D
; ---------------------------------------------------------------------------

loc_46D852:				; CODE XREF: .text:0046D849j
		mov	ecx, s
		xor	eax, eax
		mov	al, [ecx+esi]
		and	eax, 1Fh
		cmp	eax, 1Ch
		jz	short loc_46D86C
		xor	edx, edx
		mov	[ebp-38h], edx
		jmp	short loc_46D89D
; ---------------------------------------------------------------------------

loc_46D86C:				; CODE XREF: .text:0046D863j
		mov	ecx, dword_5E5D74
		movzx	eax, word ptr [ecx+esi*2]
		and	eax, 70h
		cmp	eax, 30h
		jz	short loc_46D890
		mov	edx, dword_5E5D74
		movzx	ecx, word ptr [edx+esi*2]
		and	ecx, 70h
		cmp	ecx, 70h
		jnz	short loc_46D897

loc_46D890:				; CODE XREF: .text:0046D87Cj
		xor	eax, eax
		mov	[ebp-38h], eax
		jmp	short loc_46D89D
; ---------------------------------------------------------------------------

loc_46D897:				; CODE XREF: .text:0046D88Ej
		mov	edx, [ebp-2Ch]
		mov	[ebp-38h], edx

loc_46D89D:				; CODE XREF: .text:0046D816j
					; .text:0046D850j ...
		xor	ecx, ecx
		mov	[ebp-18h], ecx
		mov	esi, [ebp-2Ch]
		cmp	esi, [ebp-3Ch]
		jnb	loc_46D9FE

loc_46D8AE:				; CODE XREF: .text:0046D9F8j
		mov	eax, s
		test	byte ptr [eax+esi], 60h
		jz	loc_46D9FE
		mov	edx, s
		xor	ecx, ecx
		mov	cl, [edx+esi]
		and	ecx, 60h
		cmp	ecx, 20h
		jnz	short loc_46D8D9
		cmp	esi, [ebp-2Ch]
		jnz	loc_46D9FE

loc_46D8D9:				; CODE XREF: .text:0046D8CEj
		mov	eax, s
		xor	edx, edx
		mov	dl, [eax+esi]
		and	edx, 1Fh
		cmp	edx, 1Ch
		jnz	loc_46D9F4
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+esi*2], 2
		jnz	loc_46D9FE
		cmp	esi, [ebp-2Ch]
		jz	short loc_46D90F
		mov	eax, dword_5E5D74
		test	byte ptr [eax+esi*2], 1
		jnz	short loc_46D919

loc_46D90F:				; CODE XREF: .text:0046D902j
		cmp	dword ptr [ebp-18h], 0
		jz	loc_46D9C3

loc_46D919:				; CODE XREF: .text:0046D90Dj
		push	200h		; nbuf
		lea	edx, [ebp-870h]
		push	edx		; buf
		mov	ecx, addr0
		add	ecx, esi
		push	ecx		; dest
		call	Findlocaljumpsto
		add	esp, 0Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	loc_46D9FE
		cmp	dword ptr [ebp-4], 200h
		jge	loc_46D9FE
		mov	eax, [ebp-4]
		mov	ecx, addr0
		add	ecx, [ebp-3Ch]
		mov	edx, [ebp+eax*4-874h]
		cmp	edx, ecx
		ja	loc_46D9FE
		mov	eax, addr0
		add	eax, [ebp-2Ch]
		cmp	eax, [ebp-870h]
		jbe	short loc_46D984
		cmp	dword ptr [ebp-38h], 0
		jnz	short loc_46D9FE
		mov	[ebp-38h], esi

loc_46D984:				; CODE XREF: .text:0046D979j
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_46D9C3
		xor	ebx, ebx
		lea	eax, [ebp-870h]
		cmp	ebx, [ebp-4]
		jge	short loc_46D9C3

loc_46D997:				; CODE XREF: .text:0046D9C1j
		mov	edx, [eax]
		mov	ecx, addr0
		add	ecx, [ebp-2Ch]
		cmp	edx, ecx
		jb	short loc_46D9BA
		mov	ecx, addr0
		add	ecx, [ebp-3Ch]
		cmp	edx, ecx
		ja	short loc_46D9BA
		xor	eax, eax
		mov	[ebp-18h], eax
		jmp	short loc_46D9C3
; ---------------------------------------------------------------------------

loc_46D9BA:				; CODE XREF: .text:0046D9A4j
					; .text:0046D9B1j
		inc	ebx
		add	eax, 4
		cmp	ebx, [ebp-4]
		jl	short loc_46D997

loc_46D9C3:				; CODE XREF: .text:0046D913j
					; .text:0046D988j ...
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_46D9FE
		mov	edx, dword_5E5D74
		movzx	eax, word ptr [edx+esi*2]
		and	eax, 70h
		cmp	eax, 30h
		jz	short loc_46D9ED
		mov	edx, dword_5E5D74
		movzx	ecx, word ptr [edx+esi*2]
		and	ecx, 70h
		cmp	ecx, 70h
		jnz	short loc_46D9F4

loc_46D9ED:				; CODE XREF: .text:0046D9D9j
		mov	dword ptr [ebp-18h], 1

loc_46D9F4:				; CODE XREF: .text:0046D8E9j
					; .text:0046D9EBj
		inc	esi
		cmp	esi, [ebp-3Ch]
		jb	loc_46D8AE

loc_46D9FE:				; CODE XREF: .text:0046D8A8j
					; .text:0046D8B7j ...
		cmp	esi, [ebp-3Ch]
		jb	loc_46E5AA
		xor	ebx, ebx
		lea	esi, [ebp-246Ch]
		cmp	ebx, [ebp-14h]
		jge	short loc_46DA2B

loc_46DA14:				; CODE XREF: .text:0046DA29j
		mov	eax, [esi]
		cmp	eax, [ebp-2Ch]
		jb	short loc_46DA22
		mov	edx, [esi]
		cmp	edx, [ebp-3Ch]
		jb	short loc_46DA2B

loc_46DA22:				; CODE XREF: .text:0046DA19j
		inc	ebx
		add	esi, 38h
		cmp	ebx, [ebp-14h]
		jl	short loc_46DA14

loc_46DA2B:				; CODE XREF: .text:0046DA12j
					; .text:0046DA20j
		cmp	ebx, [ebp-14h]
		jl	loc_46E5AA
		cmp	dword ptr [ebp-14h], 80h
		jge	loc_46E5AA
		push	38h		; n
		push	0		; c
		mov	ecx, [ebp-14h]
		mov	eax, ecx
		shl	ecx, 3
		sub	ecx, eax
		shl	ecx, 3
		lea	edx, [ebp-2470h]
		add	ecx, edx
		push	ecx		; s
		call	_memset
		mov	ecx, [ebp-14h]
		mov	edx, [ebp-2Ch]
		mov	eax, ecx
		add	esp, 0Ch
		shl	ecx, 3
		sub	ecx, eax
		mov	[ebp+ecx*8-2470h], edx
		mov	ecx, [ebp-14h]
		mov	edx, [ebp-3Ch]
		mov	eax, ecx
		shl	ecx, 3
		sub	ecx, eax
		mov	[ebp+ecx*8-246Ch], edx
		xor	edx, edx
		mov	ecx, [ebp-14h]
		mov	eax, ecx
		shl	ecx, 3
		sub	ecx, eax
		mov	[ebp+ecx*8-2468h], edx
		mov	eax, [ebp-14h]
		mov	ecx, [ebp-38h]
		mov	edx, eax
		sub	ecx, [ebp-2Ch]
		shl	eax, 3
		sub	eax, edx
		mov	[ebp+eax*8-2460h], ecx
		lea	ecx, [ebp-24B4h]
		push	ecx		; sd
		call	Issortedinit
		pop	ecx
		test	eax, eax
		jz	loc_46E5A1
		cmp	dword ptr [ebp-48h], 0
		jz	loc_46E5A1
		push	0FFFFFFFFh	; addr1
		push	0		; addr0
		lea	eax, [ebp-24B4h]
		push	eax		; sd
		call	Deletesorteddatarange
		mov	edx, addr0
		xor	ecx, ecx
		add	edx, [ebp-38h]
		add	esp, 0Ch
		mov	[ebp-3EFCh], edx
		mov	dword ptr [ebp-3EF8h], 1
		mov	[ebp-3EF4h], ecx
		mov	eax, [ebp-3EFCh]
		push	eax		; _addr
		mov	edx, [ebp+8]
		add	edx, 950h
		push	edx		; pdat
		call	Findsimpledata
		add	esp, 8
		xor	ebx, ebx
		lea	esi, [ebp-3ECEh]

loc_46DB29:				; CODE XREF: .text:0046DB8Dj
		cmp	ebx, 4
		jnz	short loc_46DB4F
		test	eax, eax
		jz	short loc_46DB38
		test	byte ptr [eax+5], 6
		jnz	short loc_46DB41

loc_46DB38:				; CODE XREF: .text:0046DB30j
		xor	edx, edx
		mov	[esi], edx
		mov	[esi-20h], edx
		jmp	short loc_46DB86
; ---------------------------------------------------------------------------

loc_46DB41:				; CODE XREF: .text:0046DB36j
		mov	dword ptr [esi-20h], 2Ch
		mov	ecx, [eax+6]
		mov	[esi], ecx
		jmp	short loc_46DB86
; ---------------------------------------------------------------------------

loc_46DB4F:				; CODE XREF: .text:0046DB2Cj
		cmp	ebx, 5
		jnz	short loc_46DB7A
		test	eax, eax
		jz	short loc_46DB5E
		test	byte ptr [eax+5], 1
		jnz	short loc_46DB6C

loc_46DB5E:				; CODE XREF: .text:0046DB56j
		mov	edx, ebx
		or	edx, 28h
		mov	[esi-20h], edx
		xor	ecx, ecx
		mov	[esi], ecx
		jmp	short loc_46DB86
; ---------------------------------------------------------------------------

loc_46DB6C:				; CODE XREF: .text:0046DB5Cj
		mov	dword ptr [esi-20h], 2Ch
		mov	edx, [eax+0Ah]
		mov	[esi], edx
		jmp	short loc_46DB86
; ---------------------------------------------------------------------------

loc_46DB7A:				; CODE XREF: .text:0046DB52j
		mov	ecx, ebx
		or	ecx, 28h
		xor	edx, edx
		mov	[esi-20h], ecx
		mov	[esi], edx

loc_46DB86:				; CODE XREF: .text:0046DB3Fj
					; .text:0046DB4Dj ...
		inc	ebx
		add	esi, 4
		cmp	ebx, 8
		jl	short loc_46DB29
		xor	eax, eax
		xor	ecx, ecx
		mov	[ebp-3EA2h], eax
		mov	[ebp-3DAAh], ecx
		mov	esi, [ebp-2Ch]
		cmp	esi, [ebp-3Ch]
		ja	loc_46DDBE

loc_46DBAB:				; CODE XREF: .text:0046DDB8j
		mov	eax, s
		xor	edx, edx
		mov	dl, [eax+esi]
		and	edx, 1Fh
		cmp	edx, 1Ch
		jnz	loc_46DDB4
		mov	ecx, dword_5E5D74
		test	byte ptr [ecx+esi*2], 70h
		jz	short loc_46DBE2
		mov	eax, dword_5E5D74
		movzx	edx, word ptr [eax+esi*2]
		and	edx, 70h
		cmp	edx, 10h
		jnz	loc_46DDB4

loc_46DBE2:				; CODE XREF: .text:0046DBCBj
		push	0		; predict
		push	0		; reg
		lea	ecx, [ebp-3D84h]
		push	0		; mode
		push	ecx		; da
		mov	eax, addr0
		add	eax, esi
		push	0		; dec
		push	eax		; ip
		mov	ecx, copy
		mov	edx, [ebp-34h]
		sub	edx, esi
		add	ecx, esi
		push	edx		; cmdsize
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		test	eax, eax
		jz	loc_46DDB4
		mov	eax, [ebp-3D38h]
		and	eax, 4100h
		cmp	eax, 4100h
		jnz	loc_46DDB4
		cmp	dword ptr [ebp-3D2Ch], 4
		jnz	loc_46DDB4
		test	byte ptr [ebp-3D35h], 1
		jz	loc_46DCCC
		cmp	dword ptr [ebp-3DAAh], 2
		jge	loc_46DDB4
		xor	ebx, ebx
		lea	edx, [ebp-3DA6h]
		jmp	short loc_46DC6D
; ---------------------------------------------------------------------------

loc_46DC5F:				; CODE XREF: .text:0046DC73j
		mov	eax, [edx]
		cmp	eax, [ebp-3CFCh]
		jz	short loc_46DC75
		inc	ebx
		add	edx, 0Ch

loc_46DC6D:				; CODE XREF: .text:0046DC5Dj
		cmp	ebx, [ebp-3DAAh]
		jl	short loc_46DC5F

loc_46DC75:				; CODE XREF: .text:0046DC67j
		cmp	ebx, [ebp-3DAAh]
		jl	loc_46DDB4
		mov	ecx, [ebp-3DAAh]
		lea	ecx, [ecx+ecx*2]
		mov	eax, [ebp-3CFCh]
		mov	[ebp+ecx*4-3DA6h], eax
		call	loc_4400F0
		or	eax, 2Ch
		mov	edx, [ebp-3DAAh]
		lea	edx, [edx+edx*2]
		mov	[ebp+edx*4-3DA2h], eax
		mov	ecx, [ebp-3DAAh]
		lea	ecx, [ecx+ecx*2]
		xor	eax, eax
		mov	[ebp+ecx*4-3D9Eh], eax
		inc	dword ptr [ebp-3DAAh]
		jmp	loc_46DDB4
; ---------------------------------------------------------------------------

loc_46DCCC:				; CODE XREF: .text:0046DC42j
		cmp	dword ptr [ebp-3EA2h], 0Ch
		jge	loc_46DDB4
		mov	edx, addr0
		add	edx, esi
		push	edx		; _addr
		mov	ecx, [ebp+8]
		add	ecx, 950h
		push	ecx		; pdat
		call	Findsimpledata
		add	esp, 8
		test	eax, eax
		jz	loc_46DDB4
		cmp	dword ptr [ebp-3D0Ch], 10h
		jnz	short loc_46DD27
		cmp	byte ptr [ebp-3D10h], 1
		jnz	loc_46DDB4
		test	byte ptr [eax+5], 6
		jz	loc_46DDB4
		mov	eax, [eax+6]
		add	eax, [ebp-3D08h]
		jmp	short loc_46DD4E
; ---------------------------------------------------------------------------

loc_46DD27:				; CODE XREF: .text:0046DD03j
		cmp	dword ptr [ebp-3D0Ch], 20h
		jnz	loc_46DDB4
		cmp	byte ptr [ebp-3D0Fh], 1
		jnz	short loc_46DDB4
		test	byte ptr [eax+5], 1
		jz	short loc_46DDB4
		mov	edx, [eax+0Ah]
		add	edx, [ebp-3D08h]
		mov	eax, edx

loc_46DD4E:				; CODE XREF: .text:0046DD25j
		test	al, 3
		jnz	short loc_46DDB4
		xor	ebx, ebx
		lea	edx, [ebp-3E9Eh]
		jmp	short loc_46DD64
; ---------------------------------------------------------------------------

loc_46DD5C:				; CODE XREF: .text:0046DD6Aj
		cmp	eax, [edx]
		jz	short loc_46DD6C
		inc	ebx
		add	edx, 0Ch

loc_46DD64:				; CODE XREF: .text:0046DD5Aj
		cmp	ebx, [ebp-3EA2h]
		jl	short loc_46DD5C

loc_46DD6C:				; CODE XREF: .text:0046DD5Ej
		cmp	ebx, [ebp-3EA2h]
		jl	short loc_46DDB4
		mov	ecx, [ebp-3EA2h]
		lea	ecx, [ecx+ecx*2]
		mov	[ebp+ecx*4-3E9Eh], eax
		call	loc_4400F0
		or	eax, 2Ch
		mov	edx, [ebp-3EA2h]
		lea	edx, [edx+edx*2]
		mov	[ebp+edx*4-3E9Ah], eax
		mov	eax, [ebp-3EA2h]
		lea	eax, [eax+eax*2]
		xor	ecx, ecx
		mov	[ebp+eax*4-3E96h], ecx
		inc	dword ptr [ebp-3EA2h]

loc_46DDB4:				; CODE XREF: .text:0046DBBBj
					; .text:0046DBDCj ...
		inc	esi
		cmp	esi, [ebp-3Ch]
		jbe	loc_46DBAB

loc_46DDBE:				; CODE XREF: .text:0046DBA5j
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-3E0Eh], eax
		mov	[ebp-24h], edx
		xor	ecx, ecx
		lea	esi, [ebp-3EFCh]
		mov	[ebp-0Ch], ecx
		mov	ecx, 5Dh
		mov	eax, [ebp-48h]
		mov	edi, eax
		rep movsd
		movsw
		lea	esi, [ebp-3EFCh]
		lea	edi, [ebp-4074h]
		mov	ecx, 5Dh
		rep movsd
		movsw
		jmp	loc_46E3AA
; ---------------------------------------------------------------------------

loc_46DDFE:				; CODE XREF: .text:0046E3B4j
		mov	eax, [ebp-0Ch]
		mov	edx, eax
		lea	eax, [edx+eax*2]
		shl	eax, 4
		sub	eax, edx
		shl	eax, 2
		sub	eax, edx
		add	eax, eax
		add	eax, [ebp-48h]
		mov	[ebp-4Ch], eax
		mov	ecx, [ebp-4Ch]
		mov	esi, [ecx]
		sub	esi, addr0
		cmp	esi, [ebp-2Ch]
		jb	short loc_46DE2D
		cmp	esi, [ebp-3Ch]
		jbe	short loc_46DE35

loc_46DE2D:				; CODE XREF: .text:0046DE26j
		dec	dword ptr [ebp-0Ch]
		jmp	loc_46E3AA
; ---------------------------------------------------------------------------

loc_46DE35:				; CODE XREF: .text:0046DE2Bj
		mov	eax, s
		xor	edx, edx
		mov	dl, [eax+esi]
		and	edx, 1Fh
		cmp	edx, 1Ch
		jz	short loc_46DE53
		mov	dword ptr [ebp-24h], 1
		jmp	loc_46E3BA
; ---------------------------------------------------------------------------

loc_46DE53:				; CODE XREF: .text:0046DE45j
		push	0		; subaddr
		mov	ecx, [ebp-4Ch]
		mov	eax, [ecx]
		push	eax		; _addr
		lea	edx, [ebp-24B4h]
		push	edx		; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_46E081
		mov	eax, [ebp-4Ch]
		mov	ecx, addr0
		add	ecx, [ebp-38h]
		mov	edx, [eax]
		cmp	edx, ecx
		jnz	loc_46E054
		xor	ebx, ebx
		lea	edx, [ebp-4066h]
		lea	eax, [ebp-3EEEh]
		mov	ecx, [ebp-4Ch]
		add	ecx, 0Eh

loc_46DE9E:				; CODE XREF: .text:0046DEE1j
		mov	esi, [ecx]
		cmp	esi, [eax]
		jz	short loc_46DEAA
		xor	esi, esi
		mov	[edx], esi
		jmp	short loc_46DED4
; ---------------------------------------------------------------------------

loc_46DEAA:				; CODE XREF: .text:0046DEA2j
		mov	esi, [ecx+20h]
		cmp	esi, [eax+20h]
		jnz	short loc_46DEB8
		xor	esi, esi
		mov	[edx], esi
		jmp	short loc_46DED4
; ---------------------------------------------------------------------------

loc_46DEB8:				; CODE XREF: .text:0046DEB0j
		mov	esi, [edx+20h]
		cmp	esi, [ecx+20h]
		jz	short loc_46DED4
		mov	esi, [edx+20h]
		cmp	esi, [eax+20h]
		jnz	short loc_46DED0
		mov	esi, [ecx+20h]
		mov	[edx+20h], esi
		jmp	short loc_46DED4
; ---------------------------------------------------------------------------

loc_46DED0:				; CODE XREF: .text:0046DEC6j
		xor	esi, esi
		mov	[edx], esi

loc_46DED4:				; CODE XREF: .text:0046DEA8j
					; .text:0046DEB6j ...
		inc	ebx
		add	edx, 4
		add	eax, 4
		add	ecx, 4
		cmp	ebx, 8
		jl	short loc_46DE9E
		xor	ebx, ebx
		lea	eax, [ebp-3E96h]
		lea	edx, [ebp-4012h]
		jmp	loc_46DF81
; ---------------------------------------------------------------------------

loc_46DEF6:				; CODE XREF: .text:0046DF87j
		xor	ecx, ecx
		mov	esi, [ebp-4Ch]
		add	esi, 62h
		mov	[ebp-58h], esi
		mov	esi, edx
		mov	[ebp-54h], esi
		jmp	short loc_46DF27
; ---------------------------------------------------------------------------

loc_46DF08:				; CODE XREF: .text:0046DF2Dj
		mov	esi, [ebp-54h]
		mov	edi, [ebp-58h]
		mov	esi, [esi]
		cmp	esi, [edi]
		jnz	short loc_46DF22
		mov	esi, [ebp-54h]
		mov	edi, [ebp-58h]
		mov	esi, [esi-4]
		cmp	esi, [edi-4]
		jz	short loc_46DF2F

loc_46DF22:				; CODE XREF: .text:0046DF12j
		inc	ecx
		add	dword ptr [ebp-58h], 0Ch

loc_46DF27:				; CODE XREF: .text:0046DF06j
		mov	esi, [ebp-4Ch]
		cmp	ecx, [esi+5Ah]
		jl	short loc_46DF08

loc_46DF2F:				; CODE XREF: .text:0046DF20j
		mov	esi, [ebp-4Ch]
		cmp	ecx, [esi+5Ah]
		jl	short loc_46DF3D
		xor	ecx, ecx
		mov	[edx], ecx
		jmp	short loc_46DF7A
; ---------------------------------------------------------------------------

loc_46DF3D:				; CODE XREF: .text:0046DF35j
		lea	esi, [ecx+ecx*2]
		mov	edi, [ebp-4Ch]
		mov	esi, [edi+esi*4+66h]
		cmp	esi, [eax]
		jnz	short loc_46DF51
		xor	ecx, ecx
		mov	[edx], ecx
		jmp	short loc_46DF7A
; ---------------------------------------------------------------------------

loc_46DF51:				; CODE XREF: .text:0046DF49j
		mov	esi, [edx+4]
		cmp	esi, [eax]
		jnz	short loc_46DF67
		lea	ecx, [ecx+ecx*2]
		mov	esi, [ebp-4Ch]
		mov	ecx, [esi+ecx*4+66h]
		mov	[edx+4], ecx
		jmp	short loc_46DF7A
; ---------------------------------------------------------------------------

loc_46DF67:				; CODE XREF: .text:0046DF56j
		lea	ecx, [ecx+ecx*2]
		mov	esi, [ebp-4Ch]
		mov	ecx, [esi+ecx*4+66h]
		cmp	ecx, [edx+4]
		jz	short loc_46DF7A
		xor	ecx, ecx
		mov	[edx], ecx

loc_46DF7A:				; CODE XREF: .text:0046DF3Bj
					; .text:0046DF4Fj ...
		inc	ebx
		add	eax, 0Ch
		add	edx, 0Ch

loc_46DF81:				; CODE XREF: .text:0046DEF1j
		cmp	ebx, [ebp-3EA2h]
		jl	loc_46DEF6
		xor	ebx, ebx
		lea	edx, [ebp-3D9Eh]
		lea	eax, [ebp-3F1Eh]
		jmp	loc_46E040
; ---------------------------------------------------------------------------

loc_46DFA0:				; CODE XREF: .text:0046E046j
		xor	ecx, ecx
		mov	esi, [ebp-4Ch]
		add	esi, 156h
		mov	[ebp-60h], esi
		mov	esi, eax
		mov	[ebp-5Ch], esi
		jmp	short loc_46DFD4
; ---------------------------------------------------------------------------

loc_46DFB5:				; CODE XREF: .text:0046DFDDj
		mov	esi, [ebp-5Ch]
		mov	edi, [ebp-60h]
		mov	esi, [esi]
		cmp	esi, [edi]
		jnz	short loc_46DFCF
		mov	esi, [ebp-5Ch]
		mov	edi, [ebp-60h]
		mov	esi, [esi+4]
		cmp	esi, [edi+4]
		jz	short loc_46DFDF

loc_46DFCF:				; CODE XREF: .text:0046DFBFj
		inc	ecx
		add	dword ptr [ebp-60h], 0Ch

loc_46DFD4:				; CODE XREF: .text:0046DFB3j
		mov	esi, [ebp-4Ch]
		cmp	ecx, [esi+152h]
		jl	short loc_46DFB5

loc_46DFDF:				; CODE XREF: .text:0046DFCDj
		mov	esi, [ebp-4Ch]
		cmp	ecx, [esi+152h]
		jl	short loc_46DFF1
		xor	ecx, ecx
		mov	[eax+4], ecx
		jmp	short loc_46E039
; ---------------------------------------------------------------------------

loc_46DFF1:				; CODE XREF: .text:0046DFE8j
		lea	esi, [ecx+ecx*2]
		mov	edi, [ebp-4Ch]
		mov	esi, [edi+esi*4+15Eh]
		cmp	esi, [edx]
		jnz	short loc_46E009
		xor	ecx, ecx
		mov	[eax+4], ecx
		jmp	short loc_46E039
; ---------------------------------------------------------------------------

loc_46E009:				; CODE XREF: .text:0046E000j
		mov	esi, [edx]
		cmp	esi, [eax+8]
		jnz	short loc_46E022
		lea	ecx, [ecx+ecx*2]
		mov	esi, [ebp-4Ch]
		mov	ecx, [esi+ecx*4+15Eh]
		mov	[eax+8], ecx
		jmp	short loc_46E039
; ---------------------------------------------------------------------------

loc_46E022:				; CODE XREF: .text:0046E00Ej
		lea	ecx, [ecx+ecx*2]
		mov	esi, [ebp-4Ch]
		mov	ecx, [esi+ecx*4+15Eh]
		cmp	ecx, [eax+8]
		jz	short loc_46E039
		xor	ecx, ecx
		mov	[eax+4], ecx

loc_46E039:				; CODE XREF: .text:0046DFEFj
					; .text:0046E007j ...
		inc	ebx
		add	edx, 0Ch
		add	eax, 0Ch

loc_46E040:				; CODE XREF: .text:0046DF9Bj
		cmp	ebx, [ebp-3DAAh]
		jl	loc_46DFA0
		dec	dword ptr [ebp-0Ch]
		jmp	loc_46E3AA
; ---------------------------------------------------------------------------

loc_46E054:				; CODE XREF: .text:0046DE84j
		mov	eax, [ebp-4Ch]
		push	eax
		push	ebx
		call	loc_44011C
		add	esp, 8
		test	eax, eax
		jnz	short loc_46E06D
		dec	dword ptr [ebp-0Ch]
		jmp	loc_46E3AA
; ---------------------------------------------------------------------------

loc_46E06D:				; CODE XREF: .text:0046E063j
		mov	edx, [ebp-4Ch]
		push	esi
		mov	esi, ebx
		mov	edi, edx
		mov	ecx, 5Dh
		rep movsd
		movsw
		pop	esi
		jmp	short loc_46E0A6
; ---------------------------------------------------------------------------

loc_46E081:				; CODE XREF: .text:0046DE6Ej
		mov	eax, [ebp-4Ch]
		push	eax		; item
		lea	edx, [ebp-24B4h]
		push	edx		; sd
		call	Addsorteddata
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_46E0A6
		mov	dword ptr [ebp-24h], 1
		jmp	loc_46E3BA
; ---------------------------------------------------------------------------

loc_46E0A6:				; CODE XREF: .text:0046E07Fj
					; .text:0046E098j
		mov	eax, [ebp-4Ch]
		mov	ecx, dword_5E5D74
		push	eax		; predict
		push	0		; reg
		movzx	eax, word ptr [ecx+esi*2]
		and	eax, 70h
		mov	edx, 100h
		cmp	eax, 30h
		jz	short loc_46E0C9
		add	edx, 0FFFFFF00h

loc_46E0C9:				; CODE XREF: .text:0046E0C1j
		push	edx		; mode
		lea	edx, [ebp-3D84h]
		push	edx		; da
		mov	ecx, addr0
		add	ecx, esi
		push	0		; dec
		push	ecx		; ip
		mov	edx, copy
		mov	eax, [ebp-34h]
		sub	eax, esi
		add	edx, esi
		push	eax		; cmdsize
		push	edx		; cmd
		call	Disasm
		add	esp, 20h
		mov	[ebp-20h], eax
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_46E105
		cmp	dword ptr [ebp-3D58h], 0
		jz	short loc_46E111

loc_46E105:				; CODE XREF: .text:0046E0FAj
		mov	dword ptr [ebp-24h], 1
		jmp	loc_46E3BA
; ---------------------------------------------------------------------------

loc_46E111:				; CODE XREF: .text:0046E103j
		mov	ecx, dword_5E5D74
		movzx	eax, word ptr [ecx+esi*2]
		and	eax, 70h
		cmp	eax, 40h
		jg	short loc_46E142
		jz	loc_46E26C
		sub	eax, 1
		jb	short loc_46E15A
		sub	eax, 0Fh
		jz	short loc_46E15A
		sub	eax, 10h
		jz	short loc_46E15A
		sub	eax, 10h
		jz	short loc_46E16D
		jmp	loc_46E3A3
; ---------------------------------------------------------------------------

loc_46E142:				; CODE XREF: .text:0046E121j
		sub	eax, 50h
		jz	short loc_46E15A
		sub	eax, 10h
		jz	short loc_46E15A
		sub	eax, 10h
		jz	loc_46E36C
		jmp	loc_46E3A3
; ---------------------------------------------------------------------------

loc_46E15A:				; CODE XREF: .text:0046E12Cj
					; .text:0046E131j ...
		add	esi, addr0
		mov	edx, [ebp-4Ch]
		add	esi, [ebp-20h]
		mov	[edx], esi
		jmp	loc_46E3AA
; ---------------------------------------------------------------------------

loc_46E16D:				; CODE XREF: .text:0046E13Bj
		mov	ecx, addr0
		add	ecx, esi
		push	ecx		; from
		call	Findjumpfrom
		pop	ecx
		mov	[ebp-50h], eax
		cmp	dword ptr [ebp-50h], 0
		jz	short loc_46E196
		mov	eax, [ebp-50h]
		mov	ecx, addr0
		add	ecx, esi
		mov	edx, [eax]
		cmp	edx, ecx
		jz	short loc_46E1A2

loc_46E196:				; CODE XREF: .text:0046E183j
		mov	dword ptr [ebp-24h], 1
		jmp	loc_46E3AA
; ---------------------------------------------------------------------------

loc_46E1A2:				; CODE XREF: .text:0046E194j
		mov	eax, [ebp-4Ch]
		push	esi
		mov	esi, eax
		lea	edi, [ebp-41ECh]
		mov	ecx, 5Dh
		rep movsd
		movsw
		pop	esi
		dec	dword ptr [ebp-0Ch]
		jmp	loc_46E253
; ---------------------------------------------------------------------------

loc_46E1C0:				; CODE XREF: .text:0046E261j
		mov	eax, [ebp-1Ch]
		dec	eax		; int
		cmp	eax, [ebp-0Ch]
		jg	short loc_46E1E5
		push	1		; flags
		push	0		; failed
		push	176h		; itemsize
		lea	edx, [ebp-1Ch]	; int
		push	edx		; pcount
		mov	ecx, [ebp-48h]	; int
		push	ecx		; data
		call	Memdouble
		add	esp, 14h
		mov	[ebp-48h], eax

loc_46E1E5:				; CODE XREF: .text:0046E1C7j
		mov	eax, [ebp-50h]
		cmp	dword ptr [eax+4], 0
		jz	short loc_46E243
		mov	edx, [ebp-1Ch]
		dec	edx
		cmp	edx, [ebp-0Ch]
		jle	short loc_46E243
		inc	dword ptr [ebp-0Ch]
		mov	ecx, [ebp-0Ch]
		mov	edx, [ebp-48h]
		mov	eax, ecx
		push	esi
		lea	esi, [ebp-41ECh]
		lea	ecx, [eax+ecx*2]
		shl	ecx, 4
		sub	ecx, eax
		shl	ecx, 2
		sub	ecx, eax
		lea	edi, [edx+ecx*2]
		mov	ecx, 5Dh
		rep movsd
		movsw
		mov	eax, [ebp-0Ch]
		mov	ecx, [ebp-48h]
		mov	edx, eax
		pop	esi
		lea	eax, [edx+eax*2]
		shl	eax, 4
		sub	eax, edx
		shl	eax, 2
		sub	eax, edx
		mov	edx, [ebp-50h]
		mov	edx, [edx+4]
		mov	[ecx+eax*2], edx
		jmp	short loc_46E24F
; ---------------------------------------------------------------------------

loc_46E243:				; CODE XREF: .text:0046E1ECj
					; .text:0046E1F5j
		mov	dword ptr [ebp-24h], 1
		jmp	loc_46E3AA
; ---------------------------------------------------------------------------

loc_46E24F:				; CODE XREF: .text:0046E241j
		add	dword ptr [ebp-50h], 9

loc_46E253:				; CODE XREF: .text:0046E1BBj
		mov	eax, [ebp-50h]
		mov	ecx, [eax]
		mov	eax, addr0
		add	eax, esi
		cmp	ecx, eax
		jz	loc_46E1C0
		jmp	loc_46E3AA
; ---------------------------------------------------------------------------

loc_46E26C:				; CODE XREF: .text:0046E123j
		mov	edx, addr0
		add	edx, esi
		push	edx		; from
		call	Findjumpfrom
		pop	ecx
		mov	[ebp-50h], eax
		cmp	dword ptr [ebp-50h], 0
		jz	short loc_46E295
		mov	ecx, [ebp-50h]
		mov	edx, addr0
		add	edx, esi
		mov	eax, [ecx]
		cmp	eax, edx
		jz	short loc_46E2A1

loc_46E295:				; CODE XREF: .text:0046E282j
		mov	dword ptr [ebp-24h], 1
		jmp	loc_46E3AA
; ---------------------------------------------------------------------------

loc_46E2A1:				; CODE XREF: .text:0046E293j
		add	esi, addr0
		mov	ecx, [ebp-4Ch]
		add	esi, [ebp-20h]
		mov	[ecx], esi
		mov	eax, [ebp-1Ch]
		dec	eax		; int
		cmp	eax, [ebp-0Ch]
		jg	short loc_46E2EE
		push	1		; flags
		push	0		; failed
		push	176h		; itemsize
		lea	edx, [ebp-1Ch]	; int
		push	edx		; pcount
		mov	ecx, [ebp-48h]	; int
		push	ecx		; data
		call	Memdouble
		add	esp, 14h
		mov	[ebp-48h], eax
		mov	eax, [ebp-0Ch]
		mov	edx, eax
		lea	eax, [edx+eax*2]
		shl	eax, 4
		sub	eax, edx
		shl	eax, 2
		sub	eax, edx
		add	eax, eax
		add	eax, [ebp-48h]
		mov	[ebp-4Ch], eax

loc_46E2EE:				; CODE XREF: .text:0046E2B6j
		mov	ecx, [ebp-50h]
		cmp	dword ptr [ecx+4], 0
		jz	short loc_46E363
		mov	eax, [ebp-1Ch]
		dec	eax
		cmp	eax, [ebp-0Ch]
		jle	short loc_46E363
		inc	dword ptr [ebp-0Ch]
		mov	edx, [ebp-0Ch]
		mov	eax, [ebp-48h]
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		shl	edx, 4
		sub	edx, ecx
		shl	edx, 2
		sub	edx, ecx
		mov	ecx, [ebp-4Ch]
		mov	esi, ecx
		mov	ecx, 5Dh
		lea	edi, [eax+edx*2]
		rep movsd
		movsw
		mov	eax, [ebp-50h]
		mov	ecx, [ebp-4Ch]
		mov	edx, [eax+4]
		cmp	edx, [ecx]
		jbe	short loc_46E343
		mov	eax, [ebp-50h]
		mov	ecx, [ebp-4Ch]
		mov	edx, [eax+4]
		mov	[ecx], edx
		jmp	short loc_46E3AA
; ---------------------------------------------------------------------------

loc_46E343:				; CODE XREF: .text:0046E334j
		mov	eax, [ebp-0Ch]
		mov	ecx, [ebp-48h]
		mov	edx, eax
		lea	eax, [edx+eax*2]
		shl	eax, 4
		sub	eax, edx
		shl	eax, 2
		sub	eax, edx
		mov	edx, [ebp-50h]
		mov	edx, [edx+4]
		mov	[ecx+eax*2], edx
		jmp	short loc_46E3AA
; ---------------------------------------------------------------------------

loc_46E363:				; CODE XREF: .text:0046E2F5j
					; .text:0046E2FEj
		mov	dword ptr [ebp-24h], 1
		jmp	short loc_46E3AA
; ---------------------------------------------------------------------------

loc_46E36C:				; CODE XREF: .text:0046E14Fj
		mov	eax, [ebp-3D70h]
		and	eax, 1Fh
		cmp	eax, 0Ch
		jnz	short loc_46E37F
		dec	dword ptr [ebp-0Ch]
		jmp	short loc_46E3AA
; ---------------------------------------------------------------------------

loc_46E37F:				; CODE XREF: .text:0046E378j
		mov	ecx, [ebp-3D70h]
		and	ecx, 1Fh
		cmp	ecx, 0Fh
		jz	short loc_46E396
		mov	dword ptr [ebp-24h], 1
		jmp	short loc_46E3AA
; ---------------------------------------------------------------------------

loc_46E396:				; CODE XREF: .text:0046E38Bj
		mov	eax, [ebp-4Ch]
		cmp	dword ptr [eax], 0
		jnz	short loc_46E3AA
		dec	dword ptr [ebp-0Ch]
		jmp	short loc_46E3AA
; ---------------------------------------------------------------------------

loc_46E3A3:				; CODE XREF: .text:0046E13Dj
					; .text:0046E155j
		mov	dword ptr [ebp-24h], 1

loc_46E3AA:				; CODE XREF: .text:0046DDF9j
					; .text:0046DE30j ...
		cmp	dword ptr [ebp-24h], 0
		jnz	short loc_46E3BA
		cmp	dword ptr [ebp-0Ch], 0
		jge	loc_46DDFE

loc_46E3BA:				; CODE XREF: .text:0046DE4Ej
					; .text:0046E0A1j ...
		cmp	dword ptr [ebp-24h], 0
		jnz	loc_46E5A1
		xor	edx, edx
		xor	ebx, ebx
		mov	[ebp-4], edx
		lea	edx, [ebp-2470h]
		mov	ecx, [ebp-14h]
		lea	esi, [ebp-4066h]
		mov	eax, ecx
		shl	ecx, 3
		sub	ecx, eax
		shl	ecx, 3
		add	ecx, edx
		lea	edx, [ebp-3EEEh]
		mov	[ebp-44h], ecx
		mov	eax, [ebp-44h]
		add	eax, 14h

loc_46E3F5:				; CODE XREF: .text:0046E437j
		cmp	ebx, 4
		jz	short loc_46E42D
		mov	ecx, [esi]
		cmp	ecx, [edx]
		jnz	short loc_46E42D
		cmp	dword ptr [ebp-4], 4
		jl	short loc_46E412
		mov	eax, [ebp-44h]
		or	dword ptr [eax+8], 10000h
		jmp	short loc_46E439
; ---------------------------------------------------------------------------

loc_46E412:				; CODE XREF: .text:0046E404j
		mov	ecx, ebx
		or	cl, 28h
		mov	[eax], cl
		xor	ecx, ecx
		mov	[eax+1], ecx
		mov	ecx, [esi+20h]
		sub	ecx, [edx+20h]
		mov	[eax+5], ecx
		inc	dword ptr [ebp-4]
		add	eax, 9

loc_46E42D:				; CODE XREF: .text:0046E3F8j
					; .text:0046E3FEj
		inc	ebx
		add	edx, 4
		add	esi, 4
		cmp	ebx, 8
		jl	short loc_46E3F5

loc_46E439:				; CODE XREF: .text:0046E410j
		mov	eax, [ebp-4]
		mov	[ebp-10h], eax
		xor	ebx, ebx
		lea	eax, [ebp-4012h]
		jmp	loc_46E4E1
; ---------------------------------------------------------------------------

loc_46E44C:				; CODE XREF: .text:0046E4E7j
		cmp	dword ptr [eax], 0
		jz	loc_46E4DD
		cmp	dword ptr [ebp-4], 4
		jl	short loc_46E46A
		mov	edx, [ebp-44h]
		or	dword ptr [edx+8], 10000h
		jmp	loc_46E4ED
; ---------------------------------------------------------------------------

loc_46E46A:				; CODE XREF: .text:0046E459j
		mov	edx, [ebp-4]
		lea	ecx, [eax-4]
		mov	[ebp-68h], ecx
		mov	esi, [ebp-44h]
		lea	ecx, [edx+edx*8]
		lea	ecx, [esi+ecx+0Ch]
		mov	[ebp-64h], ecx
		cmp	edx, [ebp-10h]
		jle	short loc_46E4B5

loc_46E485:				; CODE XREF: .text:0046E4B3j
		mov	ecx, [ebp-64h]
		mov	esi, [ebp-68h]
		mov	ecx, [ecx]
		cmp	ecx, [esi]
		jg	short loc_46E4B5
		mov	esi, [ebp-64h]
		mov	ecx, [ebp-64h]
		mov	edi, ecx
		dec	edx
		mov	ecx, [esi-1]
		mov	[edi+8], ecx
		mov	ecx, [esi+3]
		mov	[edi+0Ch], ecx
		mov	cl, [esi+7]
		mov	[edi+10h], cl
		add	dword ptr [ebp-64h], 0FFFFFFF7h
		cmp	edx, [ebp-10h]
		jg	short loc_46E485

loc_46E4B5:				; CODE XREF: .text:0046E483j
					; .text:0046E48Fj
		lea	ecx, [edx+edx*8]
		mov	esi, [ebp-44h]
		mov	byte ptr [esi+ecx+14h],	3Ch
		lea	ecx, [edx+edx*8]
		mov	esi, [ebp-44h]
		mov	edi, [eax-4]
		mov	[esi+ecx+15h], edi
		lea	edx, [edx+edx*8]
		mov	ecx, [ebp-44h]
		mov	esi, [eax+4]
		mov	[ecx+edx+19h], esi
		inc	dword ptr [ebp-4]

loc_46E4DD:				; CODE XREF: .text:0046E44Fj
		inc	ebx
		add	eax, 0Ch

loc_46E4E1:				; CODE XREF: .text:0046E447j
		cmp	ebx, [ebp-401Ah]
		jl	loc_46E44C

loc_46E4ED:				; CODE XREF: .text:0046E465j
		mov	eax, [ebp-4]
		mov	[ebp-10h], eax
		xor	ebx, ebx
		lea	eax, [ebp-3F1Ah]
		jmp	loc_46E595
; ---------------------------------------------------------------------------

loc_46E500:				; CODE XREF: .text:0046E59Bj
		cmp	dword ptr [eax], 0
		jz	loc_46E591
		cmp	dword ptr [ebp-4], 4
		jl	short loc_46E51E
		mov	edx, [ebp-44h]
		or	dword ptr [edx+8], 10000h
		jmp	loc_46E5A1
; ---------------------------------------------------------------------------

loc_46E51E:				; CODE XREF: .text:0046E50Dj
		mov	edx, [ebp-4]
		lea	ecx, [eax-4]
		mov	[ebp-70h], ecx
		mov	esi, [ebp-44h]
		lea	ecx, [edx+edx*8]
		lea	ecx, [esi+ecx+0Ch]
		mov	[ebp-6Ch], ecx
		cmp	edx, [ebp-10h]
		jle	short loc_46E569

loc_46E539:				; CODE XREF: .text:0046E567j
		mov	ecx, [ebp-6Ch]
		mov	esi, [ebp-70h]
		mov	ecx, [ecx]
		cmp	ecx, [esi]
		jb	short loc_46E569
		mov	esi, [ebp-6Ch]
		mov	ecx, [ebp-6Ch]
		mov	edi, ecx
		dec	edx
		mov	ecx, [esi-1]
		mov	[edi+8], ecx
		mov	ecx, [esi+3]
		mov	[edi+0Ch], ecx
		mov	cl, [esi+7]
		mov	[edi+10h], cl
		add	dword ptr [ebp-6Ch], 0FFFFFFF7h
		cmp	edx, [ebp-10h]
		jg	short loc_46E539

loc_46E569:				; CODE XREF: .text:0046E537j
					; .text:0046E543j
		lea	ecx, [edx+edx*8]
		mov	esi, [ebp-44h]
		mov	byte ptr [esi+ecx+14h],	30h
		lea	ecx, [edx+edx*8]
		mov	esi, [ebp-44h]
		mov	edi, [eax-4]
		mov	[esi+ecx+15h], edi
		lea	edx, [edx+edx*8]
		mov	ecx, [ebp-44h]
		mov	esi, [eax+4]
		mov	[ecx+edx+19h], esi
		inc	dword ptr [ebp-4]

loc_46E591:				; CODE XREF: .text:0046E503j
		inc	ebx
		add	eax, 0Ch

loc_46E595:				; CODE XREF: .text:0046E4FBj
		cmp	ebx, [ebp-3DAAh]
		jl	loc_46E500

loc_46E5A1:				; CODE XREF: .text:0046DAC4j
					; .text:0046DACEj ...
		inc	dword ptr [ebp-14h]
		inc	dword_5E5DA0

loc_46E5AA:				; CODE XREF: .text:0046D6C4j
					; .text:0046D6D6j ...
		inc	dword ptr [ebp-2Ch]
		mov	eax, [ebp-2Ch]
		cmp	eax, [ebp-34h]
		jb	loc_46D651

loc_46E5B9:				; CODE XREF: .text:0046D64Bj
					; .text:0046D733j
		lea	edx, [ebp-24B4h]
		push	edx		; sd
		call	Destroysorteddata
		cmp	dword ptr [ebp-48h], 0
		pop	ecx
		jz	short loc_46E5D6
		mov	ecx, [ebp-48h]
		push	ecx		; data
		call	Memfree
		pop	ecx

loc_46E5D6:				; CODE XREF: .text:0046E5CAj
		mov	eax, [ebp-28h]

loc_46E5D9:				; CODE XREF: .text:0046D572j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_46E5E0:				; CODE XREF: .text:0046F6A3p
					; .text:0046FE87p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		xor	ecx, ecx
		mov	eax, s
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	edx, [esi]
		sub	edx, addr0
		add	eax, edx
		jmp	short loc_46E607
; ---------------------------------------------------------------------------

loc_46E5FF:				; CODE XREF: .text:0046E60Aj
		cmp	byte ptr [eax],	0
		jnz	short loc_46E60C
		inc	ecx		; int
		inc	eax
		inc	edx

loc_46E607:				; CODE XREF: .text:0046E5FDj
		cmp	ecx, [esi+4]
		jb	short loc_46E5FF

loc_46E60C:				; CODE XREF: .text:0046E602j
		mov	eax, [esi+4]	; int
		cmp	ecx, eax
		jnb	loc_46E6E5
		mov	edx, [esi+64h]	; int
		test	edx, edx
		jz	short loc_46E623
		mov	[ebp-4], edx
		jmp	short loc_46E654
; ---------------------------------------------------------------------------

loc_46E623:				; CODE XREF: .text:0046E61Cj
		push	3		; flags
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_46E654
		push	offset aLowMemoryUna_0 ; "  Low	memory,	unable to save analysis	d"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_46E6E5
; ---------------------------------------------------------------------------

loc_46E654:				; CODE XREF: .text:0046E621j
					; .text:0046E635j
		mov	edx, [esi]
		mov	eax, [ebp-4]
		sub	edx, addr0
		xor	ecx, ecx
		mov	[ebp-8], eax
		jmp	short loc_46E6DA
; ---------------------------------------------------------------------------

loc_46E666:				; CODE XREF: .text:0046E6DDj
		mov	eax, s
		mov	al, [eax+edx]
		xor	ebx, ebx
		mov	bl, al
		and	ebx, 1Fh
		cmp	ebx, 1Ch
		jnz	short loc_46E6CA
		cmp	dword_5E5D74, 0
		jz	short loc_46E6D0
		mov	ebx, dword_5E5D74
		mov	bx, [ebx+edx*2]
		test	bl, 80h
		jz	short loc_46E6A8
		mov	edi, eax
		and	edi, 0FFh
		and	edi, 60h
		cmp	edi, 20h
		jnz	short loc_46E6A8
		and	al, 0E0h
		or	al, 1Eh
		jmp	short loc_46E6D0
; ---------------------------------------------------------------------------

loc_46E6A8:				; CODE XREF: .text:0046E690j
					; .text:0046E6A0j
		test	bl, 2
		mov	edi, dword_5E5D74
		jz	short loc_46E6B9
		and	al, 0E0h
		or	al, 1Eh
		jmp	short loc_46E6D0
; ---------------------------------------------------------------------------

loc_46E6B9:				; CODE XREF: .text:0046E6B1j
		test	bl, 1
		mov	edi, dword_5E5D74
		jz	short loc_46E6D0
		and	al, 0E0h
		or	al, 1Dh
		jmp	short loc_46E6D0
; ---------------------------------------------------------------------------

loc_46E6CA:				; CODE XREF: .text:0046E678j
		test	al, 1Fh
		jnz	short loc_46E6D0
		mov	al, 3

loc_46E6D0:				; CODE XREF: .text:0046E681j
					; .text:0046E6A6j ...
		mov	ebx, [ebp-8]
		inc	ecx
		or	[ebx], al
		inc	dword ptr [ebp-8]
		inc	edx

loc_46E6DA:				; CODE XREF: .text:0046E664j
		cmp	ecx, [esi+4]
		jb	short loc_46E666
		mov	eax, [ebp-4]
		mov	[esi+64h], eax

loc_46E6E5:				; CODE XREF: .text:0046E611j
					; .text:0046E64Fj
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_46E6EC:				; CODE XREF: .text:0046FBE4p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_46E700
		test	edi, edi
		jnz	short loc_46E704

loc_46E700:				; CODE XREF: .text:0046E6FAj
		xor	eax, eax
		jmp	short loc_46E73A
; ---------------------------------------------------------------------------

loc_46E704:				; CODE XREF: .text:0046E6FEj
		xor	ebx, ebx
		jmp	short loc_46E730
; ---------------------------------------------------------------------------

loc_46E708:				; CODE XREF: .text:0046E736j
		mov	edx, ebx
		lea	eax, [edi+0Ch]
		shl	edx, 6
		push	20h		; maxlen
		add	edx, esi
		push	eax		; s2
		add	edx, 9B0h
		push	edx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_46E72F
		mov	eax, 1
		jmp	short loc_46E73A
; ---------------------------------------------------------------------------

loc_46E72F:				; CODE XREF: .text:0046E726j
		inc	ebx

loc_46E730:				; CODE XREF: .text:0046E706j
		cmp	ebx, [esi+9ACh]
		jl	short loc_46E708
		xor	eax, eax

loc_46E73A:				; CODE XREF: .text:0046E702j
					; .text:0046E72Dj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_46E740:				; CODE XREF: .text:00470869p
					; .text:00470885p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		lea	edi, [ebp-4]
		mov	[edi], esi
		xor	ebx, ebx

loc_46E751:				; CODE XREF: .text:0046E778j
		push	1		; mode
		push	4		; size
		mov	eax, [edi]
		push	eax		; _addr
		push	edi		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	short loc_46E77A
		cmp	esi, [edi]
		jnz	short loc_46E771
		mov	eax, 1
		jmp	short loc_46E77C
; ---------------------------------------------------------------------------

loc_46E771:				; CODE XREF: .text:0046E768j
		inc	ebx
		cmp	ebx, 400h
		jl	short loc_46E751

loc_46E77A:				; CODE XREF: .text:0046E764j
		xor	eax, eax

loc_46E77C:				; CODE XREF: .text:0046E76Fj
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		