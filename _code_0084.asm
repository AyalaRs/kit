.code

; int __usercall loc_4A3620@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int)
loc_4A3620:				; CODE XREF: .text:004B6666p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF2B4h
		push	ebx
		push	esi
		push	edi		; arglist
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4A3640
		xor	eax, eax
		jmp	loc_4A3CB1
; ---------------------------------------------------------------------------

loc_4A3640:				; CODE XREF: .text:004A3637j
		mov	edx, g_hCursor
		push	edx		; hCursor
		call	SetCursor
		mov	[ebp-40h], eax
		call	loc_4A0E20
		cmp	dword_586178, 0
		jz	short loc_4A3662
		call	Listmemory

loc_4A3662:				; CODE XREF: .text:004A365Bj
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-2Ch], ecx
		mov	[ebp-28h], ecx
		mov	[ebp-8], eax
		jmp	short loc_4A36CA
; ---------------------------------------------------------------------------

loc_4A3671:				; CODE XREF: .text:004A36D3j
		mov	edx, [ebp-8]
		push	edx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-34h], eax
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_4A36C7
		mov	eax, [ebp-34h]
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_4A36C7
		mov	edx, [ebp+8]
		mov	eax, [ebp-34h]
		mov	ecx, [edx]
		cmp	ecx, [eax]
		ja	short loc_4A36C7
		mov	edx, [ebp+8]
		mov	eax, [ebp+8]
		mov	ecx, [edx]
		mov	edx, [ebp-34h]
		add	ecx, [eax+4]
		cmp	ecx, [edx]
		jbe	short loc_4A36C7
		mov	ecx, [ebp-34h]
		test	dword ptr [ecx+8], 2005000h
		jz	short loc_4A36C7
		mov	eax, [ebp-34h]
		mov	edx, [eax+4]
		add	[ebp-28h], edx

loc_4A36C7:				; CODE XREF: .text:004A3689j
					; .text:004A3692j ...
		inc	dword ptr [ebp-8]

loc_4A36CA:				; CODE XREF: .text:004A366Fj
		mov	ecx, [ebp-8]
		cmp	ecx, memory.sorted.n
		jl	short loc_4A3671
		xor	eax, eax
		mov	[ebp-10h], eax
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	loc_4A3B67
; ---------------------------------------------------------------------------

loc_4A36E4:				; CODE XREF: .text:004A3B76j
		mov	ecx, [ebp-8]
		push	ecx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-34h], eax
		cmp	dword ptr [ebp-34h], 0
		jz	loc_4A3B64
		mov	eax, [ebp-34h]
		test	byte ptr [eax+0Bh], 8
		jnz	loc_4A3B64
		mov	edx, [ebp+8]
		mov	eax, [ebp-34h]
		mov	eax, [eax]
		mov	edx, [edx]
		cmp	edx, eax
		ja	loc_4A3B64
		mov	ecx, [ebp+8]	; int
		add	edx, [ecx+4]
		cmp	eax, edx
		jnb	loc_4A3B64
		mov	edx, [ebp-34h]
		test	dword ptr [edx+8], 2005000h
		jz	loc_4A3B64
		mov	edx, [ebp-34h]
		mov	edx, [edx+4]	; int
		add	[ebp-2Ch], edx
		mov	esi, eax
		mov	[ebp-1Ch], edx
		push	0		; flags
		mov	eax, [ebp-1Ch]	; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-30h], eax
		cmp	dword ptr [ebp-30h], 0
		jz	loc_4A3B64
		call	Suspendallthreads
		push	0		; mode
		mov	edx, [ebp-1Ch]
		push	edx		; size
		push	esi		; _addr
		mov	ecx, [ebp-30h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		call	Resumeallthreads
		cmp	ebx, [ebp-1Ch]
		jz	short loc_4A379B
		mov	eax, [ebp-30h]
		push	eax		; data
		call	Memfree
		pop	ecx
		jmp	loc_4A3B64
; ---------------------------------------------------------------------------

loc_4A379B:				; CODE XREF: .text:004A378Aj
		mov	edx, [ebp-34h]
		mov	edi, [edx+64h]
		mov	[ebp-20h], esi
		mov	ebx, esi
		mov	eax, [ebp-34h]
		mov	eax, [eax+4]
		mov	ecx, 1F4h
		xor	edx, edx
		div	ecx
		mov	[ebp-44h], eax
		mov	dword ptr [ebp-48h], 2000h
		mov	eax, [ebp-48h]
		cmp	eax, [ebp-44h]
		jbe	short loc_4A37CC
		lea	edx, [ebp-48h]
		jmp	short loc_4A37CF
; ---------------------------------------------------------------------------

loc_4A37CC:				; CODE XREF: .text:004A37C5j
		lea	edx, [ebp-44h]

loc_4A37CF:				; CODE XREF: .text:004A37CAj
		mov	eax, [edx]
		mov	[ebp-24h], eax
		jmp	loc_4A3B4D
; ---------------------------------------------------------------------------

loc_4A37D9:				; CODE XREF: .text:004A3B54j
		cmp	ebx, [ebp-20h]
		jb	loc_4A386A
		push	offset aSearching ; "Searching - "
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp-28h]
		push	ecx		; nDenominator
		push	3E8h		; nNumerator
		mov	eax, [ebp-2Ch]
		add	eax, ebx
		sub	eax, esi
		sub	eax, [ebp-1Ch]
		push	eax		; nNumber
		call	MulDiv
		push	eax		; promille
		call	Progress
		mov	edx, [ebp-24h]
		add	esp, 8
		add	edx, ebx
		mov	ecx, hwollymain
		mov	[ebp-20h], edx
		push	1		; wRemoveMsg
		push	100h		; wMsgFilterMax
		push	100h		; wMsgFilterMin
		push	ecx		; hWnd
		lea	eax, [ebp-1D4Ch]
		push	eax		; lpMsg
		call	PeekMessageW
		test	eax, eax
		jz	short loc_4A386A
		mov	eax, [ebp-1D44h]
		cmp	eax, 20h
		jz	short loc_4A384B
		cmp	eax, 1Bh
		jnz	short loc_4A386A

loc_4A384B:				; CODE XREF: .text:004A3844j
		push	offset aSearchInterrup ; "Search interrupted"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		mov	dword ptr [ebp-10h], 1
		jmp	loc_4A3B5A
; ---------------------------------------------------------------------------

loc_4A3869:				; CODE XREF: .text:004A393Dj
		inc	ebx

loc_4A386A:				; CODE XREF: .text:004A37DCj
					; .text:004A3839j ...
		test	edi, edi
		jz	loc_4A3943
		mov	edx, [ebp-1Ch]
		add	edx, esi
		cmp	ebx, edx
		jnb	loc_4A3943
		mov	ecx, ebx
		sub	ecx, esi
		test	byte ptr [edi+ecx], 1Fh
		jz	loc_4A3943
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 4
		jz	loc_4A3943
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 7
		jz	loc_4A3943
		mov	edx, ebx
		sub	edx, esi
		xor	ecx, ecx
		mov	cl, [edi+edx]
		and	ecx, 1Fh
		cmp	ecx, 8
		jz	short loc_4A3943
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 10h
		jz	short loc_4A3943
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 18h
		jz	short loc_4A3943
		mov	edx, ebx
		sub	edx, esi
		xor	ecx, ecx
		mov	cl, [edi+edx]
		and	ecx, 1Fh
		cmp	ecx, 19h
		jz	short loc_4A3943
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 1Ah
		jz	short loc_4A3943
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 1Ch
		jz	short loc_4A3943
		mov	edx, ebx
		sub	edx, esi
		xor	ecx, ecx
		mov	cl, [edi+edx]
		and	ecx, 1Fh
		cmp	ecx, 1Dh
		jz	short loc_4A3943
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 1Eh
		jnz	loc_4A3869

loc_4A3943:				; CODE XREF: .text:004A386Cj
					; .text:004A3879j ...
		mov	ecx, [ebp-1Ch]
		add	ecx, esi
		cmp	ebx, ecx
		jnb	loc_4A3B5A
		mov	[ebp-18h], ebx
		test	edi, edi
		jz	short loc_4A3979
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 10h
		jnz	short loc_4A3979
		mov	eax, 1080000h
		mov	edx, [ebp-18h]
		mov	[ebp-14h], edx
		inc	ebx
		jmp	loc_4A3AED
; ---------------------------------------------------------------------------

loc_4A3979:				; CODE XREF: .text:004A3955j
					; .text:004A3966j
		push	0		; predict
		push	0		; reg
		push	0		; mode
		lea	ecx, [ebp-1D30h]
		push	ecx		; da
		test	edi, edi
		jnz	short loc_4A398E
		xor	eax, eax
		jmp	short loc_4A3994
; ---------------------------------------------------------------------------

loc_4A398E:				; CODE XREF: .text:004A3988j
		mov	eax, ebx
		add	eax, edi
		sub	eax, esi

loc_4A3994:				; CODE XREF: .text:004A398Cj
		push	eax		; dec
		push	ebx		; ip
		mov	edx, ebx
		sub	edx, esi
		mov	ecx, [ebp-1Ch]
		sub	ecx, edx
		push	ecx		; cmdsize
		mov	eax, [ebp-30h]
		add	eax, ebx
		sub	eax, esi
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		inc	ebx
		cmp	dword ptr [ebp-1D04h], 0
		jnz	loc_4A3B4D
		mov	eax, [ebp-1D1Ch]
		and	eax, 1Fh
		cmp	eax, 6
		jz	loc_4A3B4D
		cmp	eax, 7
		jz	loc_4A3B4D
		cmp	eax, 8
		jz	loc_4A3B4D
		cmp	eax, 9
		jz	loc_4A3B4D
		cmp	eax, 0Ch
		jz	loc_4A3B4D
		cmp	eax, 0Dh
		jz	loc_4A3B4D
		xor	edx, edx
		lea	ecx, [ebp-1CE4h]
		mov	[ebp-4], edx
		mov	[ebp-38h], ecx

loc_4A3A0B:				; CODE XREF: .text:004A3A6Cj
		mov	eax, [ebp-38h]
		test	byte ptr [eax+1], 2
		jz	short loc_4A3A5E
		mov	edx, [ebp-38h]
		mov	eax, [edx+4]
		and	eax, 0F0000h
		cmp	eax, 30000h
		jz	short loc_4A3A5E
		cmp	eax, 70000h
		jz	short loc_4A3A5E
		mov	edx, [ebp-38h]
		mov	ecx, [edx+30h]
		mov	[ebp-14h], ecx
		cmp	dword ptr [ebp-14h], 10000h
		jb	short loc_4A3A5E
		cmp	dword ptr [ebp-14h], 0FFFF0000h
		jnb	short loc_4A3A5E
		push	0		; nname
		push	0		; _name
		mov	eax, [ebp-14h]
		push	eax		; _addr
		call	Isguid
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4A3A5E
		jmp	short loc_4A3A6E
; ---------------------------------------------------------------------------

loc_4A3A5E:				; CODE XREF: .text:004A3A12j
					; .text:004A3A24j ...
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-38h], 460h
		cmp	dword ptr [ebp-4], 4
		jl	short loc_4A3A0B

loc_4A3A6E:				; CODE XREF: .text:004A3A5Cj
		cmp	dword ptr [ebp-4], 4
		jl	short loc_4A3AE8
		cmp	dword_5BE6D0, 0
		jz	loc_4A3B4D
		mov	edx, [ebp-1D1Ch]
		and	edx, 1Fh
		cmp	edx, 0Ah
		jnz	loc_4A3B4D
		mov	ecx, [ebp-18h]
		push	ecx		; _addr
		mov	eax, [ebp+8]
		add	eax, 950h
		push	eax		; pdat
		call	Findsimpledata
		add	esp, 8
		mov	[ebp-3Ch], eax
		cmp	dword ptr [ebp-3Ch], 0
		jz	loc_4A3B4D
		mov	edx, [ebp-3Ch]
		movzx	ecx, word ptr [edx+4]
		and	ecx, 3Fh
		cmp	ecx, 20h
		jnz	loc_4A3B4D
		push	0		; nname
		push	0		; _name
		mov	eax, [ebp-3Ch]
		mov	edx, [eax+0Eh]
		push	edx		; _addr
		call	Isguid
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4A3B4D
		mov	ecx, [ebp-3Ch]
		mov	eax, [ecx+0Eh]
		mov	[ebp-14h], eax

loc_4A3AE8:				; CODE XREF: .text:004A3A72j
		mov	eax, 80000h

loc_4A3AED:				; CODE XREF: .text:004A3974j
		mov	edx, [ebp-18h]
		mov	[ebp-460h], edx
		mov	dword ptr [ebp-45Ch], 1
		mov	[ebp-458h], eax
		mov	ecx, [ebp-460h]
		cmp	ecx, [ebp+0Ch]
		jnz	short loc_4A3B20
		or	dword ptr [ebp-458h], 10000h
		xor	eax, eax
		mov	[ebp+0Ch], eax

loc_4A3B20:				; CODE XREF: .text:004A3B0Fj
		mov	edx, [ebp-14h]
		xor	ecx, ecx
		mov	[ebp-454h], edx
		mov	[ebp-450h], ecx
		xor	eax, eax
		lea	edx, [ebp-460h]
		mov	[ebp-44Ch], eax
		push	edx		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4A3B4D:				; CODE XREF: .text:004A37D4j
					; .text:004A39B8j ...
		mov	ecx, [ebp-1Ch]
		add	ecx, esi
		cmp	ebx, ecx
		jb	loc_4A37D9

loc_4A3B5A:				; CODE XREF: .text:004A3864j
					; .text:004A394Aj
		mov	eax, [ebp-30h]
		push	eax		; data
		call	Memfree
		pop	ecx

loc_4A3B64:				; CODE XREF: .text:004A36FCj
					; .text:004A3709j ...
		inc	dword ptr [ebp-8]

loc_4A3B67:				; CODE XREF: .text:004A36DFj
		mov	edx, [ebp-8]
		cmp	edx, memory.sorted.n
		jge	short loc_4A3B7C
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4A36E4

loc_4A3B7C:				; CODE XREF: .text:004A3B70j
		cmp	dword_5BE6D8, 0
		jz	short loc_4A3BD2
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4A3BD2
		mov	ecx, [ebp+0Ch]
		xor	eax, eax
		mov	[ebp-460h], ecx
		xor	edx, edx
		mov	dword ptr [ebp-45Ch], 1
		mov	dword ptr [ebp-458h], 10000h
		mov	[ebp-450h], eax
		mov	[ebp-454h], eax
		mov	[ebp-44Ch], edx
		lea	ecx, [ebp-460h]
		push	ecx		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4A3BD2:				; CODE XREF: .text:004A3B83j
					; .text:004A3B89j
		push	$CTW0("");(offset aAddress+0Dh) ;	format
		push	0		; promille
		call	Progress
		add	esp, 8
		mov	eax, [ebp-40h]
		push	eax		; hCursor
		call	SetCursor
		cmp	stru_5FA8D4.n, 1
		jnz	short loc_4A3C18
		push	offset aFound1Referenc ; "Found	1 reference"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-248h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		jmp	short loc_4A3C3D
; ---------------------------------------------------------------------------

loc_4A3C18:				; CODE XREF: .text:004A3BF1j
		mov	ecx, stru_5FA8D4.n
		push	ecx
		push	offset aFoundIReferenc ; "Found	%i references"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-248h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-0Ch], eax

loc_4A3C3D:				; CODE XREF: .text:004A3C16j
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4A3C6E
		push	offset aIncomplete ; " (incomplete)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-248h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4A3C6E:				; CODE XREF: .text:004A3C41j
		mov	edx, [ebp+8]
		add	edx, 0Ch
		push	edx
		push	offset aGuidsS	; src
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-448h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-248h]	; int
		push	eax		; int
		mov	edx, [ebp+10h]	; int
		push	edx		; int
		lea	ecx, [ebp-448h]	; int
		push	ecx		; int
		push	4		; int
		push	offset stru_5FA8D4 ; s
		call	loc_4A0E4C
		add	esp, 14h

loc_4A3CB1:				; CODE XREF: .text:004A363Bj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A3CB8:				; CODE XREF: .text:004B66C6p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDE4h
		mov	eax, g_hCursor
		push	ebx
		push	esi
		push	edi
		lea	esi, [ebp-21Ch]
		mov	ebx, [ebp+8]
		push	eax		; hCursor
		call	SetCursor
		mov	edi, eax
		call	loc_4A0E20
		push	30h		; type
		push	0FFFFFFFFh	; addr1
		push	0		; addr0
		call	Startnextdata
		add	esp, 0Ch

loc_4A3CED:				; CODE XREF: .text:004A3D3Dj
		push	0		; nname
		push	0		; _name
		lea	eax, [ebp-4]
		push	eax		; _addr
		call	FindnextnameW
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4A3D3F
		mov	edx, [ebp-4]
		mov	[esi], edx
		mov	dword ptr [esi+4], 1
		cmp	ebx, [ebp-4]
		jnz	short loc_4A3D1D
		mov	dword ptr [esi+8], 10000h
		xor	ebx, ebx
		jmp	short loc_4A3D22
; ---------------------------------------------------------------------------

loc_4A3D1D:				; CODE XREF: .text:004A3D10j
		xor	eax, eax
		mov	[esi+8], eax

loc_4A3D22:				; CODE XREF: .text:004A3D1Bj
		xor	edx, edx
		xor	eax, eax
		mov	[esi+10h], edx
		mov	[esi+0Ch], edx
		mov	[esi+14h], eax
		push	esi		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8
		jmp	short loc_4A3CED
; ---------------------------------------------------------------------------

loc_4A3D3F:				; CODE XREF: .text:004A3CFFj
		cmp	dword_5BE6D8, 0
		jz	short loc_4A3D77
		test	ebx, ebx
		jz	short loc_4A3D77
		mov	[esi], ebx
		xor	ecx, ecx
		mov	dword ptr [esi+4], 1
		mov	dword ptr [esi+8], 10000h
		mov	[esi+10h], ecx
		mov	[esi+0Ch], ecx
		xor	eax, eax
		mov	[esi+14h], eax
		push	esi		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4A3D77:				; CODE XREF: .text:004A3D46j
					; .text:004A3D4Aj
		push	edi		; hCursor
		call	SetCursor
		cmp	stru_5FA8D4.n, 1
		jnz	short loc_4A3DA8
		push	offset aFound1Comment ;	"Found 1 comment"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-204h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4A3DC9
; ---------------------------------------------------------------------------

loc_4A3DA8:				; CODE XREF: .text:004A3D84j
		mov	eax, stru_5FA8D4.n
		push	eax
		push	offset aFoundIComments ; "Found	%i comments"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-204h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_4A3DC9:				; CODE XREF: .text:004A3DA6j
		lea	ecx, [ebp-204h]
		push	ecx		; int
		mov	eax, [ebp+0Ch]
		push	eax		; int
		push	offset aComments ; "Comments"
		call	_T
		pop	ecx		; int
		push	eax		; int
		push	5		; int
		push	offset stru_5FA8D4 ; s
		call	loc_4A0E4C
		add	esp, 14h
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4A3DF8:				; CODE XREF: .text:004B6781p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBDCh
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4A3E11
		xor	eax, eax
		jmp	loc_4A4055
; ---------------------------------------------------------------------------

loc_4A3E11:				; CODE XREF: .text:004A3E08j
		mov	edx, [ebp+8]
		mov	eax, [edx]
		mov	[ebp-4], eax
		mov	edx, [ebp+8]
		add	eax, [edx+4]
		mov	[ebp-8], eax
		mov	ecx, g_hCursor
		push	ecx		; hCursor
		call	SetCursor
		mov	[ebp-0Ch], eax
		call	loc_4A0E20
		xor	edi, edi
		jmp	loc_4A3F5A
; ---------------------------------------------------------------------------

loc_4A3E3D:				; CODE XREF: .text:004A3F60j
		push	edi		; index
		push	offset module.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	loc_4A3F59
		mov	eax, [esi]
		push	eax		; from
		call	Findjumpfrom
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4A3F59
		jmp	loc_4A3F50
; ---------------------------------------------------------------------------

loc_4A3E6D:				; CODE XREF: .text:004A3F53j
		mov	al, [ebx+8]
		cmp	al, 5
		jz	short loc_4A3E7C
		cmp	al, 6
		jnz	loc_4A3F4D

loc_4A3E7C:				; CODE XREF: .text:004A3E72j
		mov	edx, [ebx+4]
		cmp	edx, [ebp-4]
		jb	loc_4A3F4D
		mov	ecx, [ebx+4]
		cmp	ecx, [ebp-8]
		jnb	loc_4A3F4D
		push	0		; subaddr
		mov	eax, [ebx+4]
		push	eax		; _addr
		push	offset stru_5FA8D4 ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4A3EC9
		mov	edx, [esi]
		cmp	edx, [ebp-4]
		jnz	short loc_4A3EBA
		inc	dword ptr [eax+0Ch]
		jmp	loc_4A3F4D
; ---------------------------------------------------------------------------

loc_4A3EBA:				; CODE XREF: .text:004A3EB0j
		or	dword ptr [eax+8], 2000000h
		inc	dword ptr [eax+10h]
		jmp	loc_4A3F4D
; ---------------------------------------------------------------------------

loc_4A3EC9:				; CODE XREF: .text:004A3EA9j
		mov	eax, [ebx+4]
		mov	[ebp-424h], eax
		mov	dword ptr [ebp-420h], 1
		cmp	eax, [ebp+0Ch]
		jnz	short loc_4A3EF2
		mov	dword ptr [ebp-41Ch], 10000h
		xor	edx, edx
		mov	[ebp+0Ch], edx
		jmp	short loc_4A3EFA
; ---------------------------------------------------------------------------

loc_4A3EF2:				; CODE XREF: .text:004A3EDFj
		xor	ecx, ecx
		mov	[ebp-41Ch], ecx

loc_4A3EFA:				; CODE XREF: .text:004A3EF0j
		mov	eax, [esi]
		cmp	eax, [ebp-4]
		jz	short loc_4A3F1F
		or	dword ptr [ebp-41Ch], 2000000h
		xor	edx, edx
		mov	[ebp-418h], edx
		mov	dword ptr [ebp-414h], 1
		jmp	short loc_4A3F31
; ---------------------------------------------------------------------------

loc_4A3F1F:				; CODE XREF: .text:004A3EFFj
		mov	dword ptr [ebp-418h], 1
		xor	ecx, ecx
		mov	[ebp-414h], ecx

loc_4A3F31:				; CODE XREF: .text:004A3F1Dj
		xor	eax, eax
		lea	edx, [ebp-424h]
		mov	[ebp-410h], eax
		push	edx		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4A3F4D:				; CODE XREF: .text:004A3E76j
					; .text:004A3E82j ...
		add	ebx, 9

loc_4A3F50:				; CODE XREF: .text:004A3E68j
		cmp	dword ptr [ebx], 0FFFFFFFFh
		jnz	loc_4A3E6D

loc_4A3F59:				; CODE XREF: .text:004A3E4Fj
					; .text:004A3E62j
		inc	edi

loc_4A3F5A:				; CODE XREF: .text:004A3E38j
		cmp	edi, module.sorted.n
		jl	loc_4A3E3D
		cmp	dword_5BE6D8, 0
		jz	short loc_4A3FBC
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4A3FBC
		mov	ecx, [ebp+0Ch]
		xor	eax, eax
		mov	[ebp-424h], ecx
		xor	edx, edx
		mov	dword ptr [ebp-420h], 1
		mov	dword ptr [ebp-41Ch], 10000h
		mov	[ebp-414h], eax
		mov	[ebp-418h], eax
		mov	[ebp-410h], edx
		lea	ecx, [ebp-424h]
		push	ecx		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4A3FBC:				; CODE XREF: .text:004A3F6Dj
					; .text:004A3F73j
		mov	eax, [ebp-0Ch]
		push	eax		; hCursor
		call	SetCursor
		cmp	stru_5FA8D4.n, 1
		jnz	short loc_4A3FF0
		push	offset aFound1KnownPro ; "Found	1 known	procedure"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-20Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4A4012
; ---------------------------------------------------------------------------

loc_4A3FF0:				; CODE XREF: .text:004A3FCCj
		mov	ecx, stru_5FA8D4.n
		push	ecx
		push	offset aFoundIProcedur ; "Found	%i procedures"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-20Ch]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_4A4012:				; CODE XREF: .text:004A3FEEj
		mov	edx, [ebp+8]
		add	edx, 0Ch
		push	edx
		push	offset aProceduresS ; "Procedures %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-40Ch]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-20Ch]	; int
		push	eax		; int
		mov	edx, [ebp+10h]	; int
		push	edx		; int
		lea	ecx, [ebp-40Ch]	; int
		push	ecx		; int
		push	0Ah		; int
		push	offset stru_5FA8D4 ; s
		call	loc_4A0E4C
		add	esp, 14h

loc_4A4055:				; CODE XREF: .text:004A3E0Cj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4A405C:				; CODE XREF: .text:004B6834p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBE0h
		push	ebx
		push	esi
		push	edi
		lea	esi, [ebp-420h]
		mov	edi, [ebp+8]
		mov	ebx, [ebp+0Ch]
		test	edi, edi
		jnz	short loc_4A407F
		xor	eax, eax
		jmp	loc_4A41C6
; ---------------------------------------------------------------------------

loc_4A407F:				; CODE XREF: .text:004A4076j
		mov	edx, g_hCursor
		push	edx		; hCursor
		call	SetCursor
		mov	[ebp-8], eax
		call	loc_4A0E20
		push	40h		; type
		mov	eax, [edi]
		mov	edx, eax
		add	edx, [edi+4]
		push	edx		; addr1
		push	eax		; addr0
		call	Startnextdata
		add	esp, 0Ch

loc_4A40A6:				; CODE XREF: .text:004A40F6j
		push	0		; datasize
		push	0		; data
		lea	ecx, [ebp-4]
		push	ecx		; _addr
		call	Findnextdata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4A40F8
		mov	eax, [ebp-4]
		mov	[esi], eax
		mov	dword ptr [esi+4], 1
		cmp	ebx, [ebp-4]
		jnz	short loc_4A40D6
		mov	dword ptr [esi+8], 10000h
		xor	ebx, ebx
		jmp	short loc_4A40DB
; ---------------------------------------------------------------------------

loc_4A40D6:				; CODE XREF: .text:004A40C9j
		xor	eax, eax
		mov	[esi+8], eax

loc_4A40DB:				; CODE XREF: .text:004A40D4j
		xor	edx, edx
		xor	eax, eax
		mov	[esi+10h], edx
		mov	[esi+0Ch], edx
		mov	[esi+14h], eax
		push	esi		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8
		jmp	short loc_4A40A6
; ---------------------------------------------------------------------------

loc_4A40F8:				; CODE XREF: .text:004A40B8j
		cmp	dword_5BE6D8, 0
		jz	short loc_4A4130
		test	ebx, ebx
		jz	short loc_4A4130
		mov	[esi], ebx
		xor	ecx, ecx
		mov	dword ptr [esi+4], 1
		mov	dword ptr [esi+8], 10000h
		mov	[esi+10h], ecx
		mov	[esi+0Ch], ecx
		xor	eax, eax
		mov	[esi+14h], eax
		push	esi		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4A4130:				; CODE XREF: .text:004A40FFj
					; .text:004A4103j
		mov	edx, [ebp-8]
		push	edx		; hCursor
		call	SetCursor
		cmp	stru_5FA8D4.n, 1
		jnz	short loc_4A4164
		push	offset aFound1Switch ; "Found 1	switch"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-208h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4A4186
; ---------------------------------------------------------------------------

loc_4A4164:				; CODE XREF: .text:004A4140j
		mov	edx, stru_5FA8D4.n
		push	edx
		push	offset aFoundISwitches ; "Found	%i switches"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-208h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch

loc_4A4186:				; CODE XREF: .text:004A4162j
		add	edi, 0Ch
		push	edi
		push	offset aSwitchesS ; "Switches %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-408h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-208h]	; int
		push	edx		; int
		mov	ecx, [ebp+10h]	; int
		push	ecx		; int
		lea	eax, [ebp-408h]	; int
		push	eax		; int
		push	6		; int
		push	offset stru_5FA8D4 ; s
		call	loc_4A0E4C
		add	esp, 14h

loc_4A41C6:				; CODE XREF: .text:004A407Aj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __usercall loc_4A41D0@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int)
loc_4A41D0:				; CODE XREF: .text:004B68FEp
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_4A41D9:				; CODE XREF: .text:004A41E1j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4A41D9
		mov	eax, [ebp-4]
		add	esp, 0FFFFFA8Ch
		push	ebx
		push	esi
		push	edi		; arglist
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4A41FC
		xor	eax, eax
		jmp	loc_4A48A5
; ---------------------------------------------------------------------------

loc_4A41FC:				; CODE XREF: .text:004A41F3j
		mov	edx, g_hCursor
		push	edx		; hCursor
		call	SetCursor
		mov	[ebp-40h], eax
		call	loc_4A0E20
		cmp	dword_586178, 0
		jz	short loc_4A421E
		call	Listmemory

loc_4A421E:				; CODE XREF: .text:004A4217j
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-2Ch], ecx
		mov	[ebp-28h], ecx
		mov	[ebp-8], eax
		jmp	short loc_4A4286
; ---------------------------------------------------------------------------

loc_4A422D:				; CODE XREF: .text:004A428Fj
		mov	edx, [ebp-8]
		push	edx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-34h], eax
		cmp	dword ptr [ebp-34h], 0
		jz	short loc_4A4283
		mov	eax, [ebp-34h]
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_4A4283
		mov	edx, [ebp+8]
		mov	eax, [ebp-34h]
		mov	ecx, [edx]
		cmp	ecx, [eax]
		ja	short loc_4A4283
		mov	edx, [ebp+8]
		mov	eax, [ebp+8]
		mov	ecx, [edx]
		mov	edx, [ebp-34h]
		add	ecx, [eax+4]
		cmp	ecx, [edx]
		jbe	short loc_4A4283
		mov	ecx, [ebp-34h]
		test	dword ptr [ecx+8], 2005000h
		jz	short loc_4A4283
		mov	eax, [ebp-34h]
		mov	edx, [eax+4]
		add	[ebp-28h], edx

loc_4A4283:				; CODE XREF: .text:004A4245j
					; .text:004A424Ej ...
		inc	dword ptr [ebp-8]

loc_4A4286:				; CODE XREF: .text:004A422Bj
		mov	ecx, [ebp-8]
		cmp	ecx, memory.sorted.n
		jl	short loc_4A422D
		xor	eax, eax
		mov	[ebp-10h], eax
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	loc_4A475B
; ---------------------------------------------------------------------------

loc_4A42A0:				; CODE XREF: .text:004A476Aj
		mov	ecx, [ebp-8]
		push	ecx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-34h], eax
		cmp	dword ptr [ebp-34h], 0
		jz	loc_4A4758
		mov	eax, [ebp-34h]
		test	byte ptr [eax+0Bh], 8
		jnz	loc_4A4758
		mov	edx, [ebp+8]
		mov	eax, [ebp-34h]
		mov	eax, [eax]
		mov	edx, [edx]
		cmp	edx, eax
		ja	loc_4A4758
		mov	ecx, [ebp+8]
		add	edx, [ecx+4]
		cmp	eax, edx
		jnb	loc_4A4758
		mov	edx, [ebp-34h]
		test	dword ptr [edx+8], 2005000h
		jz	loc_4A4758
		mov	edx, [ebp-34h]
		mov	ecx, [edx+4]
		add	[ebp-2Ch], ecx
		mov	esi, eax
		mov	eax, [ebp-34h]	; int
		mov	edx, [eax+4]	; int
		mov	[ebp-1Ch], edx
		push	0		; flags
		mov	ecx, [ebp-1Ch]	; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-30h], eax
		cmp	dword ptr [ebp-30h], 0
		jz	loc_4A4758
		call	Suspendallthreads
		push	0		; mode
		mov	eax, [ebp-1Ch]
		push	eax		; size
		push	esi		; _addr
		mov	edx, [ebp-30h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	ebx, eax
		call	Resumeallthreads
		cmp	ebx, [ebp-1Ch]
		jz	short loc_4A435D
		mov	eax, [ebp-30h]
		push	eax		; data
		call	Memfree
		pop	ecx
		jmp	loc_4A4758
; ---------------------------------------------------------------------------

loc_4A435D:				; CODE XREF: .text:004A434Cj
		mov	edx, [ebp-34h]
		mov	edi, [edx+64h]
		mov	[ebp-20h], esi
		mov	ebx, esi
		mov	eax, [ebp-34h]
		mov	eax, [eax+4]
		mov	ecx, 1F4h
		xor	edx, edx
		div	ecx
		mov	[ebp-44h], eax
		mov	dword ptr [ebp-48h], 2000h
		mov	eax, [ebp-48h]
		cmp	eax, [ebp-44h]
		jbe	short loc_4A438E
		lea	edx, [ebp-48h]
		jmp	short loc_4A4391
; ---------------------------------------------------------------------------

loc_4A438E:				; CODE XREF: .text:004A4387j
		lea	edx, [ebp-44h]

loc_4A4391:				; CODE XREF: .text:004A438Cj
		mov	eax, [edx]
		mov	[ebp-24h], eax
		jmp	loc_4A4741
; ---------------------------------------------------------------------------

loc_4A439B:				; CODE XREF: .text:004A4748j
		cmp	ebx, [ebp-20h]
		jb	loc_4A442C
		push	offset aSearching ; "Searching - "
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, [ebp-28h]
		push	ecx		; nDenominator
		push	3E8h		; nNumerator
		mov	eax, [ebp-2Ch]
		add	eax, ebx
		sub	eax, esi
		sub	eax, [ebp-1Ch]
		push	eax		; nNumber
		call	MulDiv
		push	eax		; promille
		call	Progress
		mov	edx, [ebp-24h]
		add	esp, 8
		add	edx, ebx
		mov	ecx, hwollymain
		mov	[ebp-20h], edx
		push	1		; wRemoveMsg
		push	100h		; wMsgFilterMax
		push	100h		; wMsgFilterMin
		push	ecx		; hWnd
		lea	eax, [ebp-2578h]
		push	eax		; lpMsg
		call	PeekMessageW
		test	eax, eax
		jz	short loc_4A442C
		mov	eax, [ebp-2570h]
		cmp	eax, 20h
		jz	short loc_4A440D
		cmp	eax, 1Bh
		jnz	short loc_4A442C

loc_4A440D:				; CODE XREF: .text:004A4406j
		push	offset aSearchInterrup ; "Search interrupted"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		mov	dword ptr [ebp-10h], 1
		jmp	loc_4A474E
; ---------------------------------------------------------------------------

loc_4A442B:				; CODE XREF: .text:004A44C0j
		inc	ebx

loc_4A442C:				; CODE XREF: .text:004A439Ej
					; .text:004A43FBj ...
		test	edi, edi
		jz	loc_4A44C6
		mov	edx, [ebp-1Ch]
		add	edx, esi
		cmp	ebx, edx
		jnb	loc_4A44C6
		mov	ecx, ebx
		sub	ecx, esi
		test	byte ptr [edi+ecx], 1Fh
		jz	short loc_4A44C6
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 0Dh
		jz	short loc_4A44C6
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 18h
		jz	short loc_4A44C6
		mov	edx, ebx
		sub	edx, esi
		xor	ecx, ecx
		mov	cl, [edi+edx]
		and	ecx, 1Fh
		cmp	ecx, 19h
		jz	short loc_4A44C6
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 1Ah
		jz	short loc_4A44C6
		mov	ecx, ebx
		sub	ecx, esi
		xor	eax, eax
		mov	al, [edi+ecx]
		and	eax, 1Fh
		cmp	eax, 1Ch
		jz	short loc_4A44C6
		mov	edx, ebx
		sub	edx, esi
		xor	ecx, ecx
		mov	cl, [edi+edx]
		and	ecx, 1Fh
		cmp	ecx, 1Dh
		jz	short loc_4A44C6
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 1Eh
		jnz	loc_4A442B

loc_4A44C6:				; CODE XREF: .text:004A442Ej
					; .text:004A443Bj ...
		mov	ecx, [ebp-1Ch]
		add	ecx, esi
		cmp	ebx, ecx
		jnb	loc_4A474E
		mov	[ebp-18h], ebx
		test	edi, edi
		jz	short loc_4A44F7
		mov	eax, ebx
		sub	eax, esi
		xor	edx, edx
		mov	dl, [edi+eax]
		and	edx, 1Fh
		cmp	edx, 0Dh
		jnz	short loc_4A44F7
		mov	ecx, [ebp-18h]
		inc	ebx
		mov	[ebp-14h], ecx
		jmp	loc_4A46DB
; ---------------------------------------------------------------------------

loc_4A44F7:				; CODE XREF: .text:004A44D8j
					; .text:004A44E9j
		test	edi, edi
		jz	short loc_4A4577
		mov	eax, ebx
		sub	eax, esi
		movzx	eax, byte ptr [edi+eax]
		and	eax, 1Fh
		cmp	eax, 18h
		jz	short loc_4A451D
		mov	edx, ebx
		sub	edx, esi
		cmp	eax, 19h
		jz	short loc_4A451D
		mov	ecx, ebx
		sub	ecx, esi
		cmp	eax, 1Ah
		jnz	short loc_4A4577

loc_4A451D:				; CODE XREF: .text:004A4509j
					; .text:004A4512j
		mov	eax, [ebp+8]
		lea	edx, [ebp-255Ch]
		push	eax		; pmod
		push	0		; mode
		push	edx		; da
		push	ebx		; ip
		mov	ecx, ebx
		mov	eax, [ebp-1Ch]
		sub	ecx, esi
		sub	eax, ecx
		push	eax		; size
		mov	edx, [ebp-30h]
		add	edx, ebx
		sub	edx, esi
		push	edx		; cmd
		call	Ndisasm
		add	esp, 18h
		inc	ebx
		cmp	dword ptr [ebp-2538h], 0
		jnz	loc_4A4741
		mov	eax, [ebp-2534h]
		and	eax, 0FFh
		cmp	eax, 0Fh
		jz	short loc_4A456C
		cmp	eax, 10h
		jnz	loc_4A4741

loc_4A456C:				; CODE XREF: .text:004A4561j
		mov	edx, [ebp-18h]
		mov	[ebp-14h], edx
		jmp	loc_4A46DB
; ---------------------------------------------------------------------------

loc_4A4577:				; CODE XREF: .text:004A44F9j
					; .text:004A451Bj
		push	0		; predict
		push	0		; reg
		push	0		; mode
		lea	ecx, [ebp-1D30h]
		push	ecx		; da
		test	edi, edi
		jnz	short loc_4A458C
		xor	eax, eax
		jmp	short loc_4A4592
; ---------------------------------------------------------------------------

loc_4A458C:				; CODE XREF: .text:004A4586j
		mov	eax, ebx
		add	eax, edi
		sub	eax, esi

loc_4A4592:				; CODE XREF: .text:004A458Aj
		push	eax		; dec
		push	ebx		; ip
		mov	edx, ebx
		sub	edx, esi
		mov	ecx, [ebp-1Ch]
		sub	ecx, edx
		push	ecx		; cmdsize
		mov	eax, [ebp-30h]
		add	eax, ebx
		sub	eax, esi
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		inc	ebx
		cmp	dword ptr [ebp-1D04h], 0
		jnz	loc_4A4741
		xor	edx, edx
		lea	ecx, [ebp-1CE4h]
		mov	[ebp-4], edx
		mov	[ebp-38h], ecx

loc_4A45CA:				; CODE XREF: .text:004A4651j
		mov	eax, [ebp-38h]
		test	byte ptr [eax+1], 1
		jz	short loc_4A4643
		mov	edx, [ebp-38h]
		cmp	dword ptr [edx+2Ch], 0
		jnz	short loc_4A4643
		mov	ecx, [ebp+8]
		mov	eax, [ebp-38h]
		mov	eax, [eax+30h]
		mov	edx, [ecx]
		cmp	edx, eax
		ja	short loc_4A4643
		mov	edx, [ebp+8]
		mov	ecx, [edx]
		mov	edx, [ebp+8]
		add	ecx, [edx+4]
		cmp	eax, ecx
		jnb	short loc_4A4643
		push	eax		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jz	short loc_4A4643
		test	dword ptr [eax+8], 2005000h
		jz	short loc_4A4643
		mov	eax, [ebp-38h]
		cmp	dword ptr [eax+8], 0Dh
		jz	short loc_4A4638
		push	0		; psize
		mov	ecx, [ebp-38h]
		mov	eax, [ecx+30h]
		push	eax		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_4A4643
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 0Dh
		jnz	short loc_4A4643

loc_4A4638:				; CODE XREF: .text:004A4615j
		mov	ecx, [ebp-38h]
		mov	eax, [ecx+30h]
		mov	[ebp-14h], eax
		jmp	short loc_4A4657
; ---------------------------------------------------------------------------

loc_4A4643:				; CODE XREF: .text:004A45D1j
					; .text:004A45DAj ...
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-38h], 460h
		cmp	dword ptr [ebp-4], 4
		jl	loc_4A45CA

loc_4A4657:				; CODE XREF: .text:004A4641j
		cmp	dword ptr [ebp-4], 4
		jl	short loc_4A46DB
		cmp	dword_5BE6D0, 0
		jz	loc_4A4741
		mov	edx, [ebp-1D1Ch]
		and	edx, 1Fh
		cmp	edx, 0Ah
		jnz	loc_4A4741
		mov	ecx, [ebp-18h]
		push	ecx		; _addr
		mov	eax, [ebp+8]
		add	eax, 950h
		push	eax		; pdat
		call	Findsimpledata
		add	esp, 8
		mov	[ebp-3Ch], eax
		cmp	dword ptr [ebp-3Ch], 0
		jz	loc_4A4741
		mov	edx, [ebp-3Ch]
		movzx	ecx, word ptr [edx+4]
		and	ecx, 3Fh
		cmp	ecx, 20h
		jnz	loc_4A4741
		push	0		; psize
		mov	eax, [ebp-3Ch]
		mov	edx, [eax+0Eh]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_4A4741
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 0Dh
		jnz	short loc_4A4741
		mov	eax, [ebp-3Ch]
		mov	edx, [eax+0Eh]
		mov	[ebp-14h], edx

loc_4A46DB:				; CODE XREF: .text:004A44F2j
					; .text:004A4572j ...
		mov	ecx, [ebp-18h]
		mov	[ebp-460h], ecx
		mov	dword ptr [ebp-45Ch], 1
		mov	eax, [ebp-460h]
		cmp	eax, [ebp+0Ch]
		jnz	short loc_4A470A
		mov	dword ptr [ebp-458h], 50000h
		xor	edx, edx
		mov	[ebp+0Ch], edx
		jmp	short loc_4A4714
; ---------------------------------------------------------------------------

loc_4A470A:				; CODE XREF: .text:004A46F7j
		mov	dword ptr [ebp-458h], 40000h

loc_4A4714:				; CODE XREF: .text:004A4708j
		mov	ecx, [ebp-14h]
		xor	eax, eax
		mov	[ebp-454h], ecx
		mov	[ebp-450h], eax
		xor	edx, edx
		lea	ecx, [ebp-460h]
		mov	[ebp-44Ch], edx
		push	ecx		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4A4741:				; CODE XREF: .text:004A4396j
					; .text:004A454Dj ...
		mov	eax, [ebp-1Ch]
		add	eax, esi
		cmp	ebx, eax
		jb	loc_4A439B

loc_4A474E:				; CODE XREF: .text:004A4426j
					; .text:004A44CDj
		mov	edx, [ebp-30h]
		push	edx		; data
		call	Memfree
		pop	ecx

loc_4A4758:				; CODE XREF: .text:004A42B8j
					; .text:004A42C5j ...
		inc	dword ptr [ebp-8]

loc_4A475B:				; CODE XREF: .text:004A429Bj
		mov	ecx, [ebp-8]
		cmp	ecx, memory.sorted.n
		jge	short loc_4A4770
		cmp	dword ptr [ebp-10h], 0
		jz	loc_4A42A0

loc_4A4770:				; CODE XREF: .text:004A4764j
		cmp	dword_5BE6D8, 0
		jz	short loc_4A47C6
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4A47C6
		mov	eax, [ebp+0Ch]
		xor	edx, edx
		mov	[ebp-460h], eax
		xor	eax, eax
		mov	dword ptr [ebp-45Ch], 1
		mov	dword ptr [ebp-458h], 10000h
		mov	[ebp-450h], edx
		mov	[ebp-454h], edx
		mov	[ebp-44Ch], eax
		lea	ecx, [ebp-460h]
		push	ecx		; item
		push	offset stru_5FA8D4 ; sd
		call	Addsorteddata
		add	esp, 8

loc_4A47C6:				; CODE XREF: .text:004A4777j
					; .text:004A477Dj
		push	$CTW0("");(offset aAddress+0Dh) ;	format
		push	0		; promille
		call	Progress
		add	esp, 8
		mov	eax, [ebp-40h]
		push	eax		; hCursor
		call	SetCursor
		cmp	stru_5FA8D4.n, 1
		jnz	short loc_4A480C
		push	offset aFound1Referenc ; "Found	1 reference"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-248h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-0Ch], eax
		jmp	short loc_4A4831
; ---------------------------------------------------------------------------

loc_4A480C:				; CODE XREF: .text:004A47E5j
		mov	ecx, stru_5FA8D4.n
		push	ecx
		push	offset aFoundIReferenc ; "Found	%i references"
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-248h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	[ebp-0Ch], eax

loc_4A4831:				; CODE XREF: .text:004A480Aj
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4A4862
		push	offset aIncomplete ; " (incomplete)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	edx, 100h
		sub	edx, [ebp-0Ch]
		push	edx		; n
		mov	ecx, [ebp-0Ch]
		add	ecx, ecx
		lea	eax, [ebp-248h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4A4862:				; CODE XREF: .text:004A4835j
		mov	edx, [ebp+8]
		add	edx, 0Ch
		push	edx
		push	offset aFloatsS	; "Floats %s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	ecx, [ebp-448h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	eax, [ebp-248h]	; int
		push	eax		; int
		mov	edx, [ebp+10h]	; int
		push	edx		; int
		lea	ecx, [ebp-448h]	; int
		push	ecx		; int
		push	7		; int
		push	offset stru_5FA8D4 ; s
		call	loc_4A0E4C
		add	esp, 14h

loc_4A48A5:				; CODE XREF: .text:004A41F7j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4A48AC(t_dump	*a1, int a2, int x, int	y, ulong _addr)
loc_4A48AC:				; CODE XREF: .text:004A7AC8p
					; .text:004B58A9p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi
		push	edi
		mov	edi, offset g_dumptype
		mov	ebx, [ebp+8]
		mov	edx, [ebp+0Ch]
		test	ebx, ebx
		jz	short loc_4A48CA
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_4A48D2

loc_4A48CA:				; CODE XREF: .text:004A48C2j
		or	eax, 0FFFFFFFFh
		jmp	loc_4A4B1A
; ---------------------------------------------------------------------------

loc_4A48D2:				; CODE XREF: .text:004A48C8j
		mov	eax, [ebx+8]
		and	eax, 0FFh
		cmp	eax, 2
		jz	short loc_4A48EC
		cmp	eax, 4
		jz	short loc_4A48EC
		or	eax, 0FFFFFFFFh
		jmp	loc_4A4B1A
; ---------------------------------------------------------------------------

loc_4A48EC:				; CODE XREF: .text:004A48DDj
					; .text:004A48E2j
		mov	ecx, [ebx+4]
		mov	[ebp-10h], ecx
		mov	eax, [ebx+288h]
		cmp	eax, [ebx+28Ch]
		jnb	short loc_4A490D
		cmp	eax, [ebx]
		jb	short loc_4A490D
		mov	ecx, [ebx]
		add	ecx, [ebp-10h]
		cmp	eax, ecx
		jb	short loc_4A4911

loc_4A490D:				; CODE XREF: .text:004A48FEj
					; .text:004A4902j
		xor	esi, esi
		jmp	short loc_4A4915
; ---------------------------------------------------------------------------

loc_4A4911:				; CODE XREF: .text:004A490Bj
		mov	esi, eax
		sub	esi, [ebx]

loc_4A4915:				; CODE XREF: .text:004A490Fj
		mov	eax, dword_5BE6DC
		test	eax, eax
		jz	short loc_4A4921
		dec	eax
		jnz	short loc_4A4931

loc_4A4921:				; CODE XREF: .text:004A491Cj
		mov	ecx, 2
		cmp	edx, 3
		jz	short loc_4A492C
		dec	ecx

loc_4A492C:				; CODE XREF: .text:004A4929j
		mov	[ebp-4], ecx
		jmp	short loc_4A493F
; ---------------------------------------------------------------------------

loc_4A4931:				; CODE XREF: .text:004A491Fj
		mov	eax, 1
		cmp	edx, 3
		jz	short loc_4A493C
		inc	eax

loc_4A493C:				; CODE XREF: .text:004A4939j
		mov	[ebp-4], eax

loc_4A493F:				; CODE XREF: .text:004A492Fj
		test	edx, edx
		jz	short loc_4A4955
		cmp	dword_5F2D68, 0
		jz	short loc_4A4955
		cmp	dword ptr [edi], 0
		jnz	loc_4A49FE

loc_4A4955:				; CODE XREF: .text:004A4941j
					; .text:004A494Aj
		mov	edx, dword_5F2D64
		mov	[ebp-0Ch], edx
		mov	ecx, 2
		mov	eax, [ebx+8]
		and	eax, 0FFh
		cmp	eax, 2
		jz	short loc_4A4973
		add	ecx, 2

loc_4A4973:				; CODE XREF: .text:004A496Ej
		or	ecx, 1000h
		push	ecx		; mode
		mov	edx, [ebx+24Ch]
		push	edx		; fi
		mov	ecx, [ebp+14h]
		push	ecx		; y
		lea	ecx, [ebp-0Ch]
		mov	eax, [ebp+10h]
		push	eax		; x
		push	67h		; cesav
		mov	edx, [ebx+14h]
		push	edx		; a4
		push	ecx		; a3
		push	offset aEnterConstantO ; "Enter	constant or expression to search "...
		call	_T
		pop	ecx
		push	eax		; a2
		mov	eax, [ebx+244h]
		push	eax		; hWndParent
		call	Getintexpression
		add	esp, 24h
		test	eax, eax
		jz	short loc_4A49BA
		or	eax, 0FFFFFFFFh
		jmp	loc_4A4B1A
; ---------------------------------------------------------------------------

loc_4A49BA:				; CODE XREF: .text:004A49B0j
		mov	eax, dword_5BE6DC
		test	eax, eax
		jnz	short loc_4A49CF
		mov	dword ptr [ebp-4], 1
		or	esi, 0FFFFFFFFh
		jmp	short loc_4A49D2
; ---------------------------------------------------------------------------

loc_4A49CF:				; CODE XREF: .text:004A49C1j
		mov	[ebp-4], eax

loc_4A49D2:				; CODE XREF: .text:004A49CDj
		mov	eax, [ebx+8]
		and	eax, 0FFh
		mov	[edi], eax
		cmp	eax, 2
		mov	edx, [ebp-0Ch]
		mov	dword_5F2D64, edx
		jnz	short loc_4A49F4
		and	dword_5F2D64, 0FFFFh

loc_4A49F4:				; CODE XREF: .text:004A49E8j
		mov	dword_5F2D68, 1

loc_4A49FE:				; CODE XREF: .text:004A494Fj
		mov	dword_5F2D60, 6
		xor	ecx, ecx
		mov	[ebp-8], ecx
		cmp	dword ptr [ebx+298h], 0
		jnz	short loc_4A4A1B
		call	Suspendallthreads

loc_4A4A1B:				; CODE XREF: .text:004A4A14j
					; .text:004A4AEDj
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4A4A27
		cmp	dword ptr [ebp-4], 1
		jnz	short loc_4A4A56

loc_4A4A27:				; CODE XREF: .text:004A4A1Fj
		inc	esi
		cmp	dword_5BE228, 0
		jz	short loc_4A4A47
		jmp	short loc_4A4A34
; ---------------------------------------------------------------------------

loc_4A4A33:				; CODE XREF: .text:004A4A45j
		inc	esi

loc_4A4A34:				; CODE XREF: .text:004A4A31j
		mov	eax, [ebx+284h]
		mov	edx, esi
		sub	eax, [ebx]
		mov	ecx, [edi]
		dec	ecx
		sub	edx, eax
		and	edx, ecx
		jnz	short loc_4A4A33

loc_4A4A47:				; CODE XREF: .text:004A4A2Fj
		mov	eax, [edi]
		add	eax, esi
		cmp	eax, [ebp-10h]
		ja	loc_4A4B09
		jmp	short loc_4A4A84
; ---------------------------------------------------------------------------

loc_4A4A56:				; CODE XREF: .text:004A4A25j
		dec	esi
		cmp	dword_5BE228, 0
		jz	short loc_4A4A76
		jmp	short loc_4A4A63
; ---------------------------------------------------------------------------

loc_4A4A62:				; CODE XREF: .text:004A4A74j
		dec	esi

loc_4A4A63:				; CODE XREF: .text:004A4A60j
		mov	edx, [ebx+284h]
		mov	ecx, esi
		sub	edx, [ebx]
		mov	eax, [edi]
		dec	eax
		sub	ecx, edx
		and	ecx, eax
		jnz	short loc_4A4A62

loc_4A4A76:				; CODE XREF: .text:004A4A5Ej
		mov	edx, esi
		and	edx, 0FFFFFFF0h
		cmp	edx, 0FFFFFFF0h
		jz	loc_4A4B09

loc_4A4A84:				; CODE XREF: .text:004A4A54j
		mov	eax, [ebx+298h]
		test	eax, eax
		jz	short loc_4A4AAA
		cmp	dword ptr [edi], 2
		jnz	short loc_4A4A9C
		movzx	edx, word ptr [eax+esi]
		mov	[ebp-0Ch], edx
		jmp	short loc_4A4AE4
; ---------------------------------------------------------------------------

loc_4A4A9C:				; CODE XREF: .text:004A4A91j
		mov	ecx, [ebx+298h]
		mov	eax, [ecx+esi]
		mov	[ebp-0Ch], eax
		jmp	short loc_4A4AE4
; ---------------------------------------------------------------------------

loc_4A4AAA:				; CODE XREF: .text:004A4A8Cj
		push	1		; mode
		mov	edx, [edi]
		push	edx		; size
		mov	ecx, [ebx]
		add	ecx, esi
		push	ecx		; _addr
		lea	eax, [ebp-0Ch]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, [edi]
		jz	short loc_4A4AD8
		push	offset aUnableToRead_4 ; "Unable to read memory	of debugged proce"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_4A4B09
; ---------------------------------------------------------------------------

loc_4A4AD8:				; CODE XREF: .text:004A4AC2j
		cmp	dword ptr [edi], 2
		jnz	short loc_4A4AE4
		and	dword ptr [ebp-0Ch], 0FFFFh

loc_4A4AE4:				; CODE XREF: .text:004A4A9Aj
					; .text:004A4AA8j ...
		mov	edx, [ebp-0Ch]
		cmp	edx, dword_5F2D64
		jnz	loc_4A4A1B
		add	esi, [ebx]
		mov	ecx, [ebp+18h]
		mov	[ecx], esi
		mov	eax, [ebp+18h]
		mov	edx, [edi]
		mov	[eax+4], edx
		mov	dword ptr [ebp-8], 1

loc_4A4B09:				; CODE XREF: .text:004A4A4Ej
					; .text:004A4A7Ej ...
		cmp	dword ptr [ebx+298h], 0
		jnz	short loc_4A4B17
		call	Resumeallthreads

loc_4A4B17:				; CODE XREF: .text:004A4B10j
		mov	eax, [ebp-8]

loc_4A4B1A:				; CODE XREF: .text:004A48CDj
					; .text:004A48E7j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4A4B24:				; CODE XREF: .text:004A7AE0p
					; .text:004B59B5p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFBCh
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		test	edi, edi
		jz	short loc_4A4B3A
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_4A4B42

loc_4A4B3A:				; CODE XREF: .text:004A4B32j
		or	eax, 0FFFFFFFFh
		jmp	loc_4A4EAD
; ---------------------------------------------------------------------------

loc_4A4B42:				; CODE XREF: .text:004A4B38j
		mov	esi, [edi+8]
		and	esi, 0FFh
		cmp	esi, 4
		jz	short loc_4A4B62
		cmp	esi, 8
		jz	short loc_4A4B62
		cmp	esi, 0Ah
		jz	short loc_4A4B62
		or	eax, 0FFFFFFFFh
		jmp	loc_4A4EAD
; ---------------------------------------------------------------------------

loc_4A4B62:				; CODE XREF: .text:004A4B4Ej
					; .text:004A4B53j ...
		mov	edx, [edi+4]
		mov	[ebp-0Ch], edx
		mov	eax, [edi+288h]
		cmp	eax, [edi+28Ch]
		jnb	short loc_4A4B83
		cmp	eax, [edi]
		jb	short loc_4A4B83
		mov	edx, [edi]
		add	edx, [ebp-0Ch]
		cmp	eax, edx
		jb	short loc_4A4B87

loc_4A4B83:				; CODE XREF: .text:004A4B74j
					; .text:004A4B78j
		xor	ebx, ebx
		jmp	short loc_4A4B8B
; ---------------------------------------------------------------------------

loc_4A4B87:				; CODE XREF: .text:004A4B81j
		mov	ebx, eax
		sub	ebx, [edi]

loc_4A4B8B:				; CODE XREF: .text:004A4B85j
		mov	eax, dword_5BE6DC
		test	eax, eax
		jz	short loc_4A4B97
		dec	eax
		jnz	short loc_4A4BA8

loc_4A4B97:				; CODE XREF: .text:004A4B92j
		cmp	dword ptr [ebp+0Ch], 3
		mov	edx, 2
		jz	short loc_4A4BA3
		dec	edx

loc_4A4BA3:				; CODE XREF: .text:004A4BA0j
		mov	[ebp-4], edx
		jmp	short loc_4A4BB7
; ---------------------------------------------------------------------------

loc_4A4BA8:				; CODE XREF: .text:004A4B95j
		cmp	dword ptr [ebp+0Ch], 3
		mov	ecx, 1
		jz	short loc_4A4BB4
		inc	ecx

loc_4A4BB4:				; CODE XREF: .text:004A4BB1j
		mov	[ebp-4], ecx

loc_4A4BB7:				; CODE XREF: .text:004A4BA6j
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4A4BCA
		cmp	dword_5F2D7C, 0
		jnz	loc_4A4C53

loc_4A4BCA:				; CODE XREF: .text:004A4BBBj
		push	0Ah		; n
		push	offset tbyte_5F2D70 ; src
		lea	eax, [ebp-1Ch]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		push	100Ah		; mode
		mov	edx, [edi+24Ch]
		push	edx		; fi
		lea	edx, [ebp-1Ch]
		mov	ecx, [ebp+14h]
		push	ecx		; y
		mov	eax, [ebp+10h]
		push	eax		; x
		push	0		; letter
		push	edx		; data
		push	offset aEnterFloatin_1 ; "Enter	floating-point constant	to search"...
		call	_T
		pop	ecx
		push	eax		; _title
		mov	ecx, [edi+244h]
		push	ecx		; hparent
		call	Getfloat
		add	esp, 20h
		test	eax, eax
		jge	short loc_4A4C1E
		or	eax, 0FFFFFFFFh
		jmp	loc_4A4EAD
; ---------------------------------------------------------------------------

loc_4A4C1E:				; CODE XREF: .text:004A4C14j
		mov	eax, dword_5BE6DC
		test	eax, eax
		jnz	short loc_4A4C33
		mov	dword ptr [ebp-4], 1
		or	ebx, 0FFFFFFFFh
		jmp	short loc_4A4C36
; ---------------------------------------------------------------------------

loc_4A4C33:				; CODE XREF: .text:004A4C25j
		mov	[ebp-4], eax

loc_4A4C36:				; CODE XREF: .text:004A4C31j
		push	0Ah		; n
		lea	eax, [ebp-1Ch]
		push	eax		; src
		push	offset tbyte_5F2D70 ; dest
		call	_memcpy
		add	esp, 0Ch
		mov	dword_5F2D7C, 1

loc_4A4C53:				; CODE XREF: .text:004A4BC4j
		mov	dword_5F2D60, 7
		xor	edx, edx
		mov	[ebp-8], edx
		call	loc_41100B
		cmp	dword ptr [edi+298h], 0
		jnz	short loc_4A4C75
		call	Suspendallthreads

loc_4A4C75:				; CODE XREF: .text:004A4C6Ej
		mov	eax, dword_5BE22C
		cmp	eax, 1
		jnz	short loc_4A4CA6
		fld	tbyte_5F2D70
		fld	ds:tbyte_4A4EB4
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-28h]
		fld	tbyte_5F2D70
		fld	ds:tbyte_4A4EC0
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-34h]
		jmp	loc_4A4D43
; ---------------------------------------------------------------------------

loc_4A4CA6:				; CODE XREF: .text:004A4C7Dj
		cmp	eax, 2
		jnz	short loc_4A4CCF
		fld	tbyte_5F2D70
		fld	ds:tbyte_4A4ECC
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-28h]
		fld	tbyte_5F2D70
		fld	ds:tbyte_4A4ED8
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-34h]
		jmp	short loc_4A4D43
; ---------------------------------------------------------------------------

loc_4A4CCF:				; CODE XREF: .text:004A4CA9j
		cmp	esi, 8
		jnz	short loc_4A4CF8
		fld	tbyte_5F2D70
		fld	ds:tbyte_4A4EE4
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-28h]
		fld	tbyte_5F2D70
		fld	ds:tbyte_4A4EF0
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-34h]
		jmp	short loc_4A4D43
; ---------------------------------------------------------------------------

loc_4A4CF8:				; CODE XREF: .text:004A4CD2j
		cmp	esi, 0Ah
		jnz	short loc_4A4D21
		fld	tbyte_5F2D70
		fld	ds:tbyte_4A4EFC
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-28h]
		fld	tbyte_5F2D70
		fld	ds:tbyte_4A4F08
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-34h]
		jmp	short loc_4A4D43
; ---------------------------------------------------------------------------

loc_4A4D21:				; CODE XREF: .text:004A4CFBj
		fld	tbyte_5F2D70
		fld	ds:tbyte_4A4F14
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-28h]
		fld	tbyte_5F2D70
		fld	ds:tbyte_4A4F20
		fmulp	st(1), st
		fstp	tbyte ptr [ebp-34h]

loc_4A4D43:				; CODE XREF: .text:004A4CA1j
					; .text:004A4CCDj ...
		mov	edx, [edi+284h]
		sub	edx, [edi]
		mov	[ebp-10h], edx

loc_4A4D4E:				; CODE XREF: .text:004A4E6Cj
					; .text:004A4E7Dj
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4A4D5A
		cmp	dword ptr [ebp-4], 1
		jnz	short loc_4A4D8D

loc_4A4D5A:				; CODE XREF: .text:004A4D52j
		inc	ebx
		cmp	dword_5BE228, 0
		jz	short loc_4A4D7B
		jmp	short loc_4A4D67
; ---------------------------------------------------------------------------

loc_4A4D66:				; CODE XREF: .text:004A4D79j
		inc	ebx

loc_4A4D67:				; CODE XREF: .text:004A4D64j
		mov	ecx, ebx
		sub	ecx, [ebp-10h]
		push	ecx		; x
		call	_labs
		pop	ecx
		xor	edx, edx
		div	esi
		test	edx, edx
		jnz	short loc_4A4D66

loc_4A4D7B:				; CODE XREF: .text:004A4D62j
		mov	eax, g_dumptype
		add	eax, ebx
		cmp	eax, [ebp-0Ch]
		ja	loc_4A4E97
		jmp	short loc_4A4DBC
; ---------------------------------------------------------------------------

loc_4A4D8D:				; CODE XREF: .text:004A4D58j
		dec	ebx
		cmp	dword_5BE228, 0
		jz	short loc_4A4DAE
		jmp	short loc_4A4D9A
; ---------------------------------------------------------------------------

loc_4A4D99:				; CODE XREF: .text:004A4DACj
		dec	ebx

loc_4A4D9A:				; CODE XREF: .text:004A4D97j
		mov	ecx, ebx
		sub	ecx, [ebp-10h]
		push	ecx		; x
		call	_labs
		pop	ecx
		xor	edx, edx
		div	esi
		test	edx, edx
		jnz	short loc_4A4D99

loc_4A4DAE:				; CODE XREF: .text:004A4D95j
		mov	eax, ebx
		and	eax, 0FFFFFFF0h
		cmp	eax, 0FFFFFFF0h
		jz	loc_4A4E97

loc_4A4DBC:				; CODE XREF: .text:004A4D8Bj
		mov	eax, [edi+298h]
		test	eax, eax
		jz	short loc_4A4E07
		cmp	esi, 8
		jnz	short loc_4A4DD6
		fld	qword ptr [eax+ebx]
		fstp	tbyte ptr [ebp-1Ch]
		jmp	loc_4A4E61
; ---------------------------------------------------------------------------

loc_4A4DD6:				; CODE XREF: .text:004A4DC9j
		cmp	esi, 0Ah
		jnz	short loc_4A4DF9
		mov	edx, [edi+298h]
		mov	ecx, [edx+ebx]
		mov	[ebp-1Ch], ecx
		mov	ecx, [edx+ebx+4]
		mov	[ebp-18h], ecx
		mov	cx, [edx+ebx+8]
		mov	[ebp-14h], cx
		jmp	short loc_4A4E61
; ---------------------------------------------------------------------------

loc_4A4DF9:				; CODE XREF: .text:004A4DD9j
		mov	eax, [edi+298h]
		fld	dword ptr [eax+ebx]
		fstp	tbyte ptr [ebp-1Ch]
		jmp	short loc_4A4E61
; ---------------------------------------------------------------------------

loc_4A4E07:				; CODE XREF: .text:004A4DC4j
		push	1		; mode
		push	esi		; size
		mov	edx, [edi]
		add	edx, ebx
		push	edx		; _addr
		lea	ecx, [ebp-44h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	esi, eax
		jz	short loc_4A4E33
		push	offset aUnableToRead_4 ; "Unable to read memory	of debugged proce"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_4A4E97
; ---------------------------------------------------------------------------

loc_4A4E33:				; CODE XREF: .text:004A4E1Dj
		cmp	esi, 8
		jnz	short loc_4A4E40
		fld	qword ptr [ebp-44h]
		fstp	tbyte ptr [ebp-1Ch]
		jmp	short loc_4A4E61
; ---------------------------------------------------------------------------

loc_4A4E40:				; CODE XREF: .text:004A4E36j
		cmp	esi, 0Ah
		jnz	short loc_4A4E5B
		mov	eax, [ebp-44h]
		mov	[ebp-1Ch], eax
		mov	eax, [ebp-40h]
		mov	[ebp-18h], eax
		mov	ax, [ebp-3Ch]
		mov	[ebp-14h], ax
		jmp	short loc_4A4E61
; ---------------------------------------------------------------------------

loc_4A4E5B:				; CODE XREF: .text:004A4E43j
		fld	dword ptr [ebp-44h]
		fstp	tbyte ptr [ebp-1Ch]

loc_4A4E61:				; CODE XREF: .text:004A4DD1j
					; .text:004A4DF7j ...
		fld	tbyte ptr [ebp-1Ch]
		fld	tbyte ptr [ebp-28h]
		fcompp
		fnstsw	ax
		sahf
		ja	loc_4A4D4E
		fld	tbyte ptr [ebp-1Ch]
		fld	tbyte ptr [ebp-34h]
		fcompp
		fnstsw	ax
		sahf
		jb	loc_4A4D4E
		add	ebx, [edi]
		mov	edx, [ebp+18h]
		mov	[edx], ebx
		mov	ecx, [ebp+18h]
		mov	[ecx+4], esi
		mov	dword ptr [ebp-8], 1

loc_4A4E97:				; CODE XREF: .text:004A4D85j
					; .text:004A4DB6j ...
		cmp	dword ptr [edi+298h], 0
		jnz	short loc_4A4EA5
		call	Resumeallthreads

loc_4A4EA5:				; CODE XREF: .text:004A4E9Ej
		call	loc_411014
		mov	eax, [ebp-8]

loc_4A4EAD:				; CODE XREF: .text:004A4B3Dj
					; .text:004A4B5Dj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
tbyte_4A4EB4	dt 0.99990000000000001101 ; DATA XREF: .text:004A4C85r
		align 10h
tbyte_4A4EC0	dt 1.000099999999999989	; DATA XREF: .text:004A4C96r
		align 4
tbyte_4A4ECC	dt 0.98999999999999999112 ; DATA XREF: .text:004A4CB1r
		align 4
tbyte_4A4ED8	dt 1.0100000000000000089 ; DATA	XREF: .text:004A4CC2r
		align 4
tbyte_4A4EE4	dt 0.99999999999997200005 ; DATA XREF: .text:004A4CDAr
		align 10h
tbyte_4A4EF0	dt 1.000000000000028	; DATA XREF: .text:004A4CEBr
		align 4
tbyte_4A4EFC	dt 0.99999999999999998699 ; DATA XREF: .text:004A4D03r
		align 4
tbyte_4A4F08	dt 1.000000000000000013	; DATA XREF: .text:004A4D14r
		align 4
tbyte_4A4F14	dt 0.99999850000224999665 ; DATA XREF: .text:004A4D27r
		align 10h
tbyte_4A4F20	dt 1.0000015		; DATA XREF: .text:004A4D38r
		align 4
		