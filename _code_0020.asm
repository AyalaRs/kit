.code

; ---------------------------------------------------------------------------
; Exported entry  68. _Decoderange
; Exported entry 456. Decoderange

; int __cdecl Decoderange(wchar_t *s, ulong _addr, ulong	size)
		public Decoderange
Decoderange:				; CODE XREF: .text:004288B3p
					; .text:00432C16p ...
		push	ebp		; _Decoderange
		mov	ebp, esp
		add	esp, 0FFFFFDF4h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	esi, [ebp+0Ch]
		jnz	short loc_412A60
		xor	eax, eax
		jmp	loc_412E69
; ---------------------------------------------------------------------------

loc_412A60:				; CODE XREF: .text:00412A57j
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_412A88
		push	offset aEmptyRange ; "empty range"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_412E69
; ---------------------------------------------------------------------------

loc_412A88:				; CODE XREF: .text:00412A64j
		test	esi, esi
		jnz	short loc_412AB4
		cmp	dword ptr [ebp+10h], 0FFFFFFFFh
		jnz	short loc_412AB4
		push	offset aTheWholeMemory ; "the whole memory"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_412E69
; ---------------------------------------------------------------------------

loc_412AB4:				; CODE XREF: .text:00412A8Aj
					; .text:00412A90j
		xor	ebx, ebx
		push	esi		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_412B93
		mov	eax, [ebp-0Ch]
		mov	ecx, [ebp-0Ch]
		mov	edx, [eax]
		mov	eax, [ebp+10h]
		add	edx, [ecx+4]
		add	eax, esi
		cmp	edx, eax
		jb	loc_412B93
		mov	edx, [ebp-0Ch]
		add	edx, 0Ch
		push	edx		; src
		push	100h		; n
		mov	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	eax, [ebp-0Ch]
		cmp	esi, [eax]
		jnz	short loc_412B15
		mov	edx, [ebp-0Ch]
		mov	ecx, [edx+4]
		cmp	ecx, [ebp+10h]
		jnz	short loc_412B15
		mov	eax, ebx
		jmp	loc_412E69
; ---------------------------------------------------------------------------

loc_412B15:				; CODE XREF: .text:00412B01j
					; .text:00412B0Cj
		mov	edx, [ebp+8]
		mov	word ptr [edx+ebx*2], 3Ah
		inc	ebx
		mov	ecx, [ebp-0Ch]
		xor	eax, eax
		mov	edi, [ecx+8E8h]
		jmp	short loc_412B44
; ---------------------------------------------------------------------------

loc_412B2C:				; CODE XREF: .text:00412B4Dj
		cmp	esi, [edi+18h]
		jb	short loc_412B40
		mov	edx, [edi+18h]
		mov	ecx, [ebp+10h]
		add	edx, [edi+1Ch]
		add	ecx, esi
		cmp	edx, ecx
		jnb	short loc_412B4F

loc_412B40:				; CODE XREF: .text:00412B2Fj
		inc	eax
		add	edi, 30h

loc_412B44:				; CODE XREF: .text:00412B2Aj
		mov	edx, [ebp-0Ch]
		cmp	eax, [edx+8E4h]
		jl	short loc_412B2C

loc_412B4F:				; CODE XREF: .text:00412B3Ej
		mov	ecx, [ebp-0Ch]
		cmp	eax, [ecx+8E4h]
		jge	short loc_412B93
		push	edi		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		mov	eax, ebx
		add	eax, eax
		add	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		cmp	esi, [edi+18h]
		jnz	short loc_412B89
		mov	edx, [edi+1Ch]
		cmp	edx, [ebp+10h]
		jnz	short loc_412B89
		mov	eax, ebx
		jmp	loc_412E69
; ---------------------------------------------------------------------------

loc_412B89:				; CODE XREF: .text:00412B78j
					; .text:00412B80j
		mov	edx, [ebp+8]
		mov	word ptr [edx+ebx*2], 3Ah
		inc	ebx

loc_412B93:				; CODE XREF: .text:00412AC4j
					; .text:00412ADCj ...
		lea	ecx, [ebp-8]
		lea	eax, [ebp-4]
		push	ecx		; amax
		push	eax		; amin
		push	esi		; _addr
		call	Getextproclimits
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_412BF2
		cmp	esi, [ebp-4]
		jnz	short loc_412BF2
		mov	edx, [ebp+10h]
		add	edx, esi
		cmp	edx, [ebp-8]
		jnz	short loc_412BF2
		push	21h		; firsttype
		lea	ecx, [ebp-20Ch]
		push	ecx		; _name
		push	esi		; _addr
		call	Findlabel
		add	esp, 0Ch
		test	eax, eax
		jle	short loc_412BF2
		lea	eax, [ebp-20Ch]
		mov	edx, ebx
		push	eax		; src
		push	100h		; n
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, ebx
		jmp	loc_412E69
; ---------------------------------------------------------------------------

loc_412BF2:				; CODE XREF: .text:00412BA6j
					; .text:00412BABj ...
		push	esi		; _addr
		call	Findmemory
		pop	ecx
		mov	edi, eax
		test	edi, edi
		jz	loc_412DF2
		cmp	esi, [edi]
		jnz	loc_412DF2
		mov	eax, [edi+4]
		cmp	eax, [ebp+10h]
		jnz	loc_412DF2
		test	byte ptr [edi+0Ah], 8
		jz	short loc_412C6B
		cmp	dword ptr [edi+1Ch], 0
		jz	short loc_412C6B
		push	offset aStackOf	; "Stack of "
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		mov	ecx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	edx, ebx
		add	edx, edx
		push	8400h		; mode
		mov	eax, [edi+1Ch]
		push	eax		; threadid
		add	edx, [ebp+8]
		push	edx		; s
		call	Decodethreadname
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, ebx
		jmp	loc_412E69
; ---------------------------------------------------------------------------

loc_412C6B:				; CODE XREF: .text:00412C1Bj
					; .text:00412C21j
		test	byte ptr [edi+0Ah], 20h
		jz	short loc_412CBF
		cmp	dword ptr [edi+1Ch], 0
		jz	short loc_412CBF
		push	offset aDataBlockOf ; src
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		mov	ecx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	edx, ebx
		add	edx, edx
		push	8400h		; mode
		mov	eax, [edi+1Ch]
		push	eax		; threadid
		add	edx, [ebp+8]
		push	edx		; s
		call	Decodethreadname
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, ebx
		jmp	loc_412E69
; ---------------------------------------------------------------------------

loc_412CBF:				; CODE XREF: .text:00412C6Fj
					; .text:00412C75j
		cmp	dword ptr [edi+0Ch], 1
		jnz	short loc_412CF2
		push	offset aProcessEnviron ; "Process Environment Block"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		mov	ecx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, ebx
		jmp	loc_412E69
; ---------------------------------------------------------------------------

loc_412CF2:				; CODE XREF: .text:00412CC3j
		cmp	dword ptr [edi+0Ch], 2
		jnz	short loc_412D25
		push	offset aUserSharedData ; "User Shared Data"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		mov	ecx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, ebx
		jmp	loc_412E69
; ---------------------------------------------------------------------------

loc_412D25:				; CODE XREF: .text:00412CF6j
		cmp	dword ptr [edi+0Ch], 3
		jnz	short loc_412D58
		push	offset aProcessParam_0 ; "Process Parameters Block"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		mov	ecx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, ebx
		jmp	loc_412E69
; ---------------------------------------------------------------------------

loc_412D58:				; CODE XREF: .text:00412D29j
		cmp	dword ptr [edi+0Ch], 4
		jnz	short loc_412D8B
		push	offset aEnvironment ; "Environment"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		mov	ecx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, ebx
		jmp	loc_412E69
; ---------------------------------------------------------------------------

loc_412D8B:				; CODE XREF: .text:00412D5Cj
		cmp	dword ptr [edi+0Ch], 5
		jnz	short loc_412DBE
		push	offset aGdiHandles ; "GDI handles"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		mov	ecx, ebx
		push	eax		; src
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, ebx
		jmp	loc_412E69
; ---------------------------------------------------------------------------

loc_412DBE:				; CODE XREF: .text:00412D8Fj
		mov	edx, [edi]
		cmp	edx, userspacelimit
		jnz	short loc_412DF2
		push	offset aKernelMemory ; "Kernel memory"
		call	_T
		pop	ecx
		push	eax		; src
		mov	ecx, 100h
		mov	eax, ebx
		sub	ecx, ebx
		add	eax, eax
		push	ecx		; n
		add	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, ebx
		jmp	short loc_412E69
; ---------------------------------------------------------------------------

loc_412DF2:				; CODE XREF: .text:00412BFDj
					; .text:00412C05j ...
		cmp	dword ptr [ebp+10h], 1
		jnz	short loc_412E20
		mov	edx, 100h
		mov	ecx, ebx
		sub	edx, ebx
		push	0		; comment
		push	edx		; nsymb
		add	ecx, ecx
		add	ecx, [ebp+8]
		push	ecx		; symb
		push	400h		; mode
		push	0		; amod
		push	esi		; _addr
		call	Decodeaddress
		add	esp, 18h
		add	ebx, eax
		mov	eax, ebx
		jmp	short loc_412E69
; ---------------------------------------------------------------------------

loc_412E20:				; CODE XREF: .text:00412DF6j
		push	esi		; u
		mov	edx, ebx
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; s
		call	Hexprint8W
		add	esp, 8
		add	ebx, eax
		mov	ecx, 100h
		mov	eax, ebx
		sub	ecx, ebx
		push	offset a__	; ".."
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esi, [ebp+10h]
		add	esp, 0Ch
		add	ebx, eax
		dec	esi
		mov	edx, ebx
		push	esi		; u
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; s
		call	Hexprint8W
		add	esp, 8
		mov	eax, ebx

loc_412E69:				; CODE XREF: .text:00412A5Bj
					; .text:00412A83j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  69. _Getexeversion
; Exported entry 566. Getexeversion

; int __cdecl Getexeversion(wchar_t *path, wchar_t *version)
		public Getexeversion
Getexeversion:				; CODE XREF: .text:00409382p
					; .text:00409470p ...
		push	ebp		; _Getexeversion
		mov	ebp, esp
		add	esp, 0FFFFFDECh
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_412E8F
		cmp	word ptr [ebx],	0
		jz	short loc_412E8F
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_412E96

loc_412E8F:				; CODE XREF: .text:00412E81j
					; .text:00412E87j
		xor	eax, eax
		jmp	loc_412FEC
; ---------------------------------------------------------------------------

loc_412E96:				; CODE XREF: .text:00412E8Dj
		mov	edx, [ebp+0Ch]
		lea	ecx, [ebp-0Ch]
		mov	word ptr [edx],	0
		push	ecx		; lpdwHandle
		push	ebx		; lptstrFilename
		call	GetFileVersionInfoSizeW
		mov	esi, eax
		test	esi, esi
		jnz	short loc_412EB5
		xor	eax, eax
		jmp	loc_412FEC
; ---------------------------------------------------------------------------

loc_412EB5:				; CODE XREF: .text:00412EACj
		push	1		; flags
		push	esi		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jnz	short loc_412ECD
		xor	eax, eax
		jmp	loc_412FEC
; ---------------------------------------------------------------------------

loc_412ECD:				; CODE XREF: .text:00412EC4j
		push	edi		; lpData
		push	esi		; dwLen
		push	0		; dwHandle
		push	ebx		; lptstrFilename
		call	GetFileVersionInfoW
		test	eax, eax
		jnz	short loc_412EE9
		push	edi		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		jmp	loc_412FEC
; ---------------------------------------------------------------------------

loc_412EE9:				; CODE XREF: .text:00412ED9j
		xor	esi, esi
		lea	eax, [ebp-4]
		push	eax		; puLen
		lea	edx, [ebp-14h]
		push	edx		; lplpBuffer
		push	offset aVarfileinfoTra ; lpSubBlock
		push	edi		; pBlock
		call	VerQueryValueW
		test	eax, eax
		jnz	short loc_412F07
		xor	ecx, ecx
		mov	[ebp-4], ecx

loc_412F07:				; CODE XREF: .text:00412F00j
		xor	ebx, ebx
		jmp	short loc_412F4F
; ---------------------------------------------------------------------------

loc_412F0B:				; CODE XREF: .text:00412F57j
		mov	eax, [ebp-14h]
		movzx	edx, word ptr [eax+ebx*4+2]
		push	edx
		lea	edx, [ebp-214h]
		mov	ecx, [ebp-14h]
		movzx	eax, word ptr [ecx+ebx*4]
		push	eax
		push	offset aStringfilein_2 ; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 10h
		lea	ecx, [ebp-8]
		lea	eax, [ebp-10h]
		lea	edx, [ebp-214h]
		push	ecx		; puLen
		push	eax		; lplpBuffer
		push	edx		; lpSubBlock
		push	edi		; pBlock
		call	VerQueryValueW
		test	eax, eax
		jz	short loc_412F4E
		mov	esi, [ebp-8]
		jmp	short loc_412F59
; ---------------------------------------------------------------------------

loc_412F4E:				; CODE XREF: .text:00412F47j
		inc	ebx

loc_412F4F:				; CODE XREF: .text:00412F09j
		mov	eax, [ebp-4]
		shr	eax, 2
		cmp	ebx, eax
		jb	short loc_412F0B

loc_412F59:				; CODE XREF: .text:00412F4Cj
		test	esi, esi
		jnz	short loc_412F77
		lea	edx, [ebp-8]
		push	edx		; puLen
		lea	ecx, [ebp-10h]
		push	ecx		; lplpBuffer
		push	offset aStringfilein_1 ; lpSubBlock
		push	edi		; pBlock
		call	VerQueryValueW
		test	eax, eax
		jz	short loc_412F77
		mov	esi, [ebp-8]

loc_412F77:				; CODE XREF: .text:00412F5Bj
					; .text:00412F72j
		test	esi, esi
		jnz	short loc_412F95
		lea	eax, [ebp-8]
		push	eax		; puLen
		lea	edx, [ebp-10h]
		push	edx		; lplpBuffer
		push	offset aStringfilein_0 ; lpSubBlock
		push	edi		; pBlock
		call	VerQueryValueW
		test	eax, eax
		jz	short loc_412F95
		mov	esi, [ebp-8]

loc_412F95:				; CODE XREF: .text:00412F79j
					; .text:00412F90j
		test	esi, esi
		jnz	short loc_412FB3
		lea	eax, [ebp-8]
		push	eax		; puLen
		lea	edx, [ebp-10h]
		push	edx		; lplpBuffer
		push	offset aStringfileinfo ; lpSubBlock
		push	edi		; pBlock
		call	VerQueryValueW
		test	eax, eax
		jz	short loc_412FB3
		mov	esi, [ebp-8]

loc_412FB3:				; CODE XREF: .text:00412F97j
					; .text:00412FAEj
		cmp	esi, 0FFh
		jle	short loc_412FC0
		mov	esi, 0FFh

loc_412FC0:				; CODE XREF: .text:00412FB9j
		test	esi, esi
		jle	short loc_412FDA
		mov	eax, [ebp-10h]
		lea	edx, [esi+1]
		push	eax		; src
		push	edx		; n
		mov	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_412FE3
; ---------------------------------------------------------------------------

loc_412FDA:				; CODE XREF: .text:00412FC2j
		mov	eax, [ebp+0Ch]
		mov	word ptr [eax+esi*2], 0

loc_412FE3:				; CODE XREF: .text:00412FD8j
		push	edi		; data
		call	Memfree
		pop	ecx
		mov	eax, esi

loc_412FEC:				; CODE XREF: .text:00412E91j
					; .text:00412EB0j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_412FF4(int, wchar_t *path)
loc_412FF4:				; CODE XREF: .text:0041412Ap
					; .text:00416104p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF800h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_41300E
		test	eax, eax
		jnz	short loc_413015

loc_41300E:				; CODE XREF: .text:00413008j
		xor	eax, eax
		jmp	loc_41315A
; ---------------------------------------------------------------------------

loc_413015:				; CODE XREF: .text:0041300Cj
		lea	edx, [ebp-400h]
		lea	ecx, [ebp-200h]
		push	edx		; ext
		push	ecx		; _name
		push	0		; dir
		push	0		; drive
		push	eax		; path
		call	__wfnsplit
		add	esp, 14h
		cmp	rundll,	0
		jnz	short loc_41305A
		lea	eax, [ebp-800h]
		lea	edx, [ebp-600h]
		push	eax		; ext
		push	edx		; _name
		push	0		; dir
		push	0		; drive
		push	offset _name	; path
		call	__wfnsplit
		add	esp, 14h
		jmp	short loc_41308C
; ---------------------------------------------------------------------------

loc_41305A:				; CODE XREF: .text:00413037j
		push	offset aLoaddll	; "LOADDLL"
		push	100h		; n
		lea	ecx, [ebp-600h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-800h]
		push	offset a_exe	; ".EXE"
		push	100h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_41308C:				; CODE XREF: .text:00413058j
		lea	edx, [ebp-600h]
		push	edx		; s2
		lea	ecx, [ebp-200h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4130C0
		lea	eax, [ebp-800h]
		push	eax		; s2
		lea	edx, [ebp-400h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		mov	edi, eax
		jmp	short loc_4130E1
; ---------------------------------------------------------------------------

loc_4130C0:				; CODE XREF: .text:004130A4j
		push	offset a_dll_1	; ".DLL"
		lea	eax, [ebp-400h]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4130DF
		mov	edi, 1
		jmp	short loc_4130E1
; ---------------------------------------------------------------------------

loc_4130DF:				; CODE XREF: .text:004130D6j
		xor	edi, edi

loc_4130E1:				; CODE XREF: .text:004130BEj
					; .text:004130DDj
		lea	eax, [ebp-200h]
		push	eax		; src
		push	20h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		test	edi, edi
		jz	short loc_41311B
		cmp	ebx, 1Eh
		jge	short loc_41311B
		lea	eax, [ebp-400h]
		mov	edx, 20h
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		lea	ecx, [esi+ebx*2]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_41311B:				; CODE XREF: .text:004130F7j
					; .text:004130FCj
		xor	edx, edx
		mov	eax, esi
		cmp	ebx, edx
		jle	short loc_41313F

loc_413123:				; CODE XREF: .text:0041313Dj
		mov	cx, [eax]
		cmp	cx, 2Eh
		jz	short loc_413132
		cmp	cx, 20h
		jnz	short loc_413137

loc_413132:				; CODE XREF: .text:0041312Aj
		mov	word ptr [eax],	5Fh

loc_413137:				; CODE XREF: .text:00413130j
		inc	edx
		add	eax, 2
		cmp	ebx, edx
		jg	short loc_413123

loc_41313F:				; CODE XREF: .text:00413121j
		lea	edx, [ebx+1]
		lea	eax, [esi+edx*2]
		cmp	edx, 20h
		jge	short loc_413158

loc_41314A:				; CODE XREF: .text:00413156j
		mov	word ptr [eax],	0
		inc	edx
		add	eax, 2
		cmp	edx, 20h
		jl	short loc_41314A

loc_413158:				; CODE XREF: .text:00413148j
		mov	eax, ebx

loc_41315A:				; CODE XREF: .text:00413010j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; SORTFUNC sortfunc
sortfunc:				; DATA XREF: .text:0044A178o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	edx, [ebp+10h]
		xor	eax, eax
		mov	ebx, [ebp+8]
		mov	esi, [ebp+0Ch]
		cmp	edx, 1
		jnz	short loc_41319A
		mov	ecx, [esi+4]
		mov	edx, [ebx+4]
		cmp	ecx, edx
		jnb	short loc_41318B
		or	eax, 0FFFFFFFFh
		jmp	loc_413216
; ---------------------------------------------------------------------------

loc_41318B:				; CODE XREF: .text:00413181j
		cmp	ecx, edx
		jbe	loc_413216
		mov	eax, 1
		jmp	short loc_413216
; ---------------------------------------------------------------------------

loc_41319A:				; CODE XREF: .text:00413177j
		cmp	edx, 2
		jnz	short loc_4131BF
		mov	ecx, [esi+460h]
		mov	edx, [ebx+460h]
		cmp	ecx, edx
		jbe	short loc_4131B4
		or	eax, 0FFFFFFFFh
		jmp	short loc_413216
; ---------------------------------------------------------------------------

loc_4131B4:				; CODE XREF: .text:004131ADj
		cmp	ecx, edx
		jnb	short loc_413216
		mov	eax, 1
		jmp	short loc_413216
; ---------------------------------------------------------------------------

loc_4131BF:				; CODE XREF: .text:0041319Dj
		cmp	edx, 3
		jnz	short loc_4131D6
		lea	edx, [esi+0Ch]
		push	edx		; s2
		lea	ecx, [ebx+0Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		jmp	short loc_413216
; ---------------------------------------------------------------------------

loc_4131D6:				; CODE XREF: .text:004131C2j
		cmp	edx, 4
		jnz	short loc_413201
		mov	edx, [ebx+8]
		mov	ecx, [esi+8]
		and	ecx, 6000000h
		and	edx, 6000000h
		cmp	ecx, edx
		jnb	short loc_4131F6
		or	eax, 0FFFFFFFFh
		jmp	short loc_413216
; ---------------------------------------------------------------------------

loc_4131F6:				; CODE XREF: .text:004131EFj
		cmp	ecx, edx
		jbe	short loc_413216
		mov	eax, 1
		jmp	short loc_413216
; ---------------------------------------------------------------------------

loc_413201:				; CODE XREF: .text:004131D9j
		cmp	edx, 7
		jnz	short loc_413216
		lea	edx, [esi+4Ch]
		push	edx		; s2
		lea	ecx, [ebx+4Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8

loc_413216:				; CODE XREF: .text:00413186j
					; .text:0041318Dj ...
		test	eax, eax
		jnz	short loc_413230
		mov	ecx, [esi]
		mov	edx, [ebx]
		cmp	ecx, edx
		jbe	short loc_413227
		or	eax, 0FFFFFFFFh
		jmp	short loc_413230
; ---------------------------------------------------------------------------

loc_413227:				; CODE XREF: .text:00413220j
		cmp	ecx, edx
		jnb	short loc_413230
		mov	eax, 1

loc_413230:				; CODE XREF: .text:00413218j
					; .text:00413225j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; DESTFUNC destfunc
destfunc:				; DATA XREF: .text:0044A173o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		mov	eax, [ebp+8]
		test	eax, eax
		jz	loc_413362
		mov	ebx, eax
		cmp	word ptr [ebx+4Ch], 0
		jz	short loc_413290
		push	0
		push	ebx
		call	loc_4A9D04
		add	esp, 8
		test	eax, eax
		jz	short loc_413290
		lea	esi, [ebx+4Ch]
		push	esi		; arglist
		push	offset aUnableToSave_u ; "Unable to save .udd data for '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		push	esi		; arglist
		push	offset aUnableToSave_u ; "Unable to save .udd data for '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		add	esp, 8

loc_413290:				; CODE XREF: .text:0041324Ej
					; .text:0041325Dj
		xor	esi, esi
		jmp	short loc_4132A9
; ---------------------------------------------------------------------------

loc_413294:				; CODE XREF: .text:004132AFj
		push	0
		mov	eax, g_pPluginnotify
		push	0
		push	ebx
		push	7
		mov	edx, [eax+esi*4]
		call	edx
		add	esp, 10h
		inc	esi

loc_4132A9:				; CODE XREF: .text:00413292j
		cmp	esi, g_nPluginnotify
		jl	short loc_413294
		mov	eax, [ebx+8E8h]
		test	eax, eax
		jz	short loc_4132D2
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+8E8h], edx
		xor	ecx, ecx
		mov	[ebx+8E4h], ecx

loc_4132D2:				; CODE XREF: .text:004132B9j
		mov	eax, [ebx+8F0h]
		test	eax, eax
		jz	short loc_4132F3
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+8F0h], edx
		xor	ecx, ecx
		mov	[ebx+8ECh], ecx

loc_4132F3:				; CODE XREF: .text:004132DAj
		lea	eax, [ebx+8F4h]
		push	eax
		call	loc_470FCC
		pop	ecx
		lea	edx, [ebx+920h]
		push	edx		; nd
		call	Destroynesteddata
		pop	ecx
		lea	ecx, [ebx+938h]
		push	ecx		; nd
		call	Destroynesteddata
		pop	ecx
		lea	eax, [ebx+950h]
		push	eax		; pdat
		call	Destroysimpledata
		pop	ecx
		lea	edx, [ebx+964h]
		push	edx		; sd
		call	Destroysorteddata
		pop	ecx
		mov	ecx, [ebx]
		push	ecx
		mov	eax, process
		push	eax
		call	loc_4C9C2C
		add	esp, 8
		mov	edx, [ebx]
		mov	[ebp-8], edx
		xor	ecx, ecx
		mov	[ebp-4], ecx
		lea	eax, [ebp-8]
		push	eax		; lp
		push	2		; wp
		push	489h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_413362:				; CODE XREF: .text:00413241j
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_413368(wchar_t *buffer, void *s, int,	int, int, int)
loc_413368:				; DATA XREF: .text:00416FBEo
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		mov	esi, [ebp+18h]
		xor	ebx, ebx
		mov	eax, [ebp+1Ch]
		add	eax, 4		; switch 12 cases
		cmp	eax, 0Bh
		ja	loc_413671	; jumptable 00413386 default case
		jmp	ds:off_41338D[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_41338D	dd offset loc_4133BD	; DATA XREF: .text:00413386r
		dd offset loc_4133C4	; jump table for switch	statement
		dd offset loc_4133CB
		dd offset loc_4133D2
		dd offset loc_4133D9
		dd offset loc_4134CC
		dd offset loc_41350F
		dd offset loc_413539
		dd offset loc_413552
		dd offset loc_4135C3
		dd offset loc_4135DF
		dd offset loc_41365D
; ---------------------------------------------------------------------------

loc_4133BD:				; CODE XREF: .text:00413386j
					; DATA XREF: .text:off_41338Do
		xor	eax, eax	; jumptable 00413386 case -4
		jmp	loc_413673
; ---------------------------------------------------------------------------

loc_4133C4:				; CODE XREF: .text:00413386j
					; DATA XREF: .text:off_41338Do
		xor	eax, eax	; jumptable 00413386 case -3
		jmp	loc_413673
; ---------------------------------------------------------------------------

loc_4133CB:				; CODE XREF: .text:00413386j
					; DATA XREF: .text:off_41338Do
		xor	eax, eax	; jumptable 00413386 case -2
		jmp	loc_413673
; ---------------------------------------------------------------------------

loc_4133D2:				; CODE XREF: .text:00413386j
					; DATA XREF: .text:off_41338Do
		xor	eax, eax	; jumptable 00413386 case -1
		jmp	loc_413673
; ---------------------------------------------------------------------------

loc_4133D9:				; CODE XREF: .text:00413386j
					; DATA XREF: .text:off_41338Do
		mov	edx, [esi]	; jumptable 00413386 case 0
		push	edx		; u
		push	edi		; s
		call	Hexprint8W
		add	esp, 8
		mov	ebx, eax
		cmp	rundll,	0
		jnz	short loc_413426
		test	byte ptr [esi+0Ah], 1
		jz	short loc_413426
		push	offset aMain_0	; " (main)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 1
		jmp	loc_413671	; jumptable 00413386 default case
; ---------------------------------------------------------------------------

loc_413426:				; CODE XREF: .text:004133EEj
					; .text:004133F4j
		cmp	rundll,	0
		jz	short loc_41345C
		test	byte ptr [esi+0Ah], 1
		jz	short loc_41345C
		push	offset aLoader	; " (loader)"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_413671	; jumptable 00413386 default case
; ---------------------------------------------------------------------------

loc_41345C:				; CODE XREF: .text:0041342Dj
					; .text:00413433j
		cmp	rundll,	0
		jz	short loc_41349B
		test	byte ptr [esi+0Ah], 8
		jz	short loc_41349B
		push	offset aDebuggedDll ; "	(debugged DLL)"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 1
		jmp	loc_413671	; jumptable 00413386 default case
; ---------------------------------------------------------------------------

loc_41349B:				; CODE XREF: .text:00413463j
					; .text:00413469j
		test	byte ptr [esi+0Ah], 10h
		jz	loc_413671	; jumptable 00413386 default case
		push	offset aSystem	; " (system)"
		call	_T
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_413671	; jumptable 00413386 default case
; ---------------------------------------------------------------------------

loc_4134CC:				; CODE XREF: .text:00413386j
					; DATA XREF: .text:off_41338Do
		cmp	dword ptr [esi+4], 1 ; jumptable 00413386 case 1
		jnz	short loc_4134F5
		push	$CTW0("???")
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 2
		jmp	loc_413671	; jumptable 00413386 default case
; ---------------------------------------------------------------------------

loc_4134F5:				; CODE XREF: .text:004134D0j
		mov	eax, [esi+4]
		push	eax
		push	eax
		push	offset a08xI_	; "%08X	(%i.)"
		push	edi		; buffer
		call	_swprintf
		add	esp, 10h
		mov	ebx, eax
		jmp	loc_413671	; jumptable 00413386 default case
; ---------------------------------------------------------------------------

loc_41350F:				; CODE XREF: .text:00413386j
					; DATA XREF: .text:off_41338Do
		push	121h		; jumptable 00413386 case 2
		mov	eax, [ebp+10h]
		push	eax		; select
		mov	edx, [ebp+0Ch]
		push	edx		; mask
		push	0		; index
		push	0FFFFFFFFh	; relreg
		push	0		; reladdr
		mov	ecx, [esi+460h]
		push	ecx		; _addr
		push	edi		; text
		call	Labeladdress
		add	esp, 20h
		mov	ebx, eax
		jmp	loc_413671	; jumptable 00413386 default case
; ---------------------------------------------------------------------------

loc_413539:				; CODE XREF: .text:00413386j
					; DATA XREF: .text:off_41338Do
		add	esi, 0Ch	; jumptable 00413386 case 3
		push	esi		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_413671	; jumptable 00413386 default case
; ---------------------------------------------------------------------------

loc_413552:				; CODE XREF: .text:00413386j
					; DATA XREF: .text:off_41338Do
		test	byte ptr [esi+0Bh], 4 ;	jumptable 00413386 case	4
		jz	short loc_41356D
		push	offset a_net	; ".NET"
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_41356D:				; CODE XREF: .text:00413556j
		test	byte ptr [esi+0Bh], 2
		jz	loc_413671	; jumptable 00413386 default case
		test	ebx, ebx
		jnz	short loc_41359C
		push	offset aHidden	; "Hidden"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_413671	; jumptable 00413386 default case
; ---------------------------------------------------------------------------

loc_41359C:				; CODE XREF: .text:00413579j
		push	offset aHidden_0 ; ",hidden"
		call	_T
		pop	ecx
		push	eax		; src
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_413671	; jumptable 00413386 default case
; ---------------------------------------------------------------------------

loc_4135C3:				; CODE XREF: .text:00413386j
					; DATA XREF: .text:off_41338Do
		add	esi, 254h	; jumptable 00413386 case 5
		push	esi		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_413671	; jumptable 00413386 default case
; ---------------------------------------------------------------------------

loc_4135DF:				; CODE XREF: .text:00413386j
					; DATA XREF: .text:off_41338Do
		xor	eax, eax	; jumptable 00413386 case 6
		mov	[ebp-4], eax
		jmp	short loc_41362C
; ---------------------------------------------------------------------------

loc_4135E6:				; CODE XREF: .text:00413635j
		test	ebx, ebx
		jle	short loc_413605
		push	offset asc_51616A ; ", "
		mov	edx, 100h
		sub	edx, ebx
		push	edx		; n
		lea	ecx, [edi+ebx*2]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_413605:				; CODE XREF: .text:004135E8j
		mov	eax, [ebp-4]
		mov	edx, 100h
		shl	eax, 6
		lea	ecx, [edi+ebx*2]
		add	eax, esi
		add	eax, 9B0h
		sub	edx, ebx
		push	eax		; src
		push	edx		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		inc	dword ptr [ebp-4]

loc_41362C:				; CODE XREF: .text:004135E4j
		mov	eax, [ebp-4]
		cmp	eax, [esi+9ACh]
		jl	short loc_4135E6
		cmp	dword ptr [esi+9ACh], 18h
		jl	short loc_413671 ; jumptable 00413386 default case
		push	offset a____0	; "..."
		mov	edx, 100h
		sub	edx, ebx
		push	edx		; n
		lea	edi, [edi+ebx*2]
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_413671 ; jumptable 00413386 default case
; ---------------------------------------------------------------------------

loc_41365D:				; CODE XREF: .text:00413386j
					; DATA XREF: .text:off_41338Do
		add	esi, 4Ch	; jumptable 00413386 case 7
		push	esi		; src
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_413671:				; CODE XREF: .text:00413380j
					; .text:00413421j ...
		mov	eax, ebx	; jumptable 00413386 default case

loc_413673:				; CODE XREF: .text:004133BFj
					; .text:004133C6j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
