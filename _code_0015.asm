.code

; Exported entry  52. _Info
; Exported entry 382. Info

; void *Info(wchar_t *format, ...)
		public Info
Info:					; CODE XREF: .text:0044F112p
					; .text:004500F1p ...
		push	ebp		; _Info
		mov	ebp, esp
		add	esp, 0FFFFFBF8h
		push	ebx
		lea	eax, [ebp+0Ch]
		xor	ebx, ebx
		cmp	dword ptr [ebp+8], 0
		jz	short loc_409B02
		mov	edx, [ebp+8]
		cmp	word ptr [edx],	0
		jnz	short loc_409B1C

loc_409B02:				; CODE XREF: .text:00409AF7j
		cmp	dst, 0
		jz	short loc_409B6A
		mov	dst, 0
		mov	ebx, 1
		jmp	short loc_409B6A
; ---------------------------------------------------------------------------

loc_409B1C:				; CODE XREF: .text:00409B00j
		push	eax		; arglist
		mov	eax, [ebp+8]
		push	eax		; format
		lea	edx, [ebp-408h]
		push	edx		; buffer
		call	_vswprintf
		add	esp, 0Ch
		mov	word ptr [ebp-20Ah], 0
		push	offset dst	; s2
		lea	ecx, [ebp-408h]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_409B6A
		lea	eax, [ebp-408h]
		push	eax		; src
		push	offset dst	; dst
		call	_wcscpy
		add	esp, 8
		mov	ebx, 1

loc_409B6A:				; CODE XREF: .text:00409B0Aj
					; .text:00409B1Aj ...
		test	ebx, ebx
		jz	short loc_409B91
		cmp	word_5D7DD0, 0
		jnz	short loc_409B91
		cmp	word_5D7FD0, 0
		jnz	short loc_409B91
		cmp	word_5D81D4, 0
		jnz	short loc_409B91
		call	loc_409AAC

loc_409B91:				; CODE XREF: .text:00409B6Cj
					; .text:00409B76j ...
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  53. _Message
; Exported entry 383. Message

; void Message(ulong _addr, wchar_t *format, ...)
		public Message
Message:				; CODE XREF: .text:0040FA7Ap
					; .text:00413FC0p ...
		push	ebp		; _Message
		mov	ebp, esp
		add	esp, 0FFFFFBF8h
		push	ebx
		push	esi
		lea	eax, [ebp+10h]
		xor	esi, esi
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_409BB7
		mov	edx, [ebp+0Ch]
		cmp	word ptr [edx],	0
		jnz	short loc_409BD8

loc_409BB7:				; CODE XREF: .text:00409BACj
		cmp	dst, 0
		jz	loc_409C73
		mov	dst, 0
		mov	esi, 1
		jmp	loc_409C73
; ---------------------------------------------------------------------------

loc_409BD8:				; CODE XREF: .text:00409BB5j
		push	eax		; arglist
		mov	eax, [ebp+0Ch]
		push	eax		; format
		lea	edx, [ebp-408h]
		push	edx		; buffer
		call	_vswprintf
		add	esp, 0Ch
		mov	word ptr [ebp-20Ah], 0
		lea	ebx, [ebp-408h]
		jmp	short loc_409C00
; ---------------------------------------------------------------------------

loc_409BFD:				; CODE XREF: .text:00409C0Cj
		add	ebx, 2

loc_409C00:				; CODE XREF: .text:00409BFBj
		mov	ax, [ebx]
		test	ax, ax
		jz	short loc_409C0E
		cmp	ax, 24h
		jnz	short loc_409BFD

loc_409C0E:				; CODE XREF: .text:00409C06j
		cmp	word ptr [ebx],	24h
		jnz	short loc_409C19
		mov	word ptr [ebx],	20h

loc_409C19:				; CODE XREF: .text:00409C12j
		push	offset dst	; s2
		lea	edx, [ebp-408h]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_409C4A
		lea	ecx, [ebp-408h]
		push	ecx		; src
		push	offset dst	; dst
		call	_wcscpy
		add	esp, 8
		mov	esi, 1

loc_409C4A:				; CODE XREF: .text:00409C2Fj
		mov	word ptr [ebx],	0
		cmp	word ptr [ebp-408h], 0
		jz	short loc_409C73
		lea	eax, [ebp-408h]
		push	eax		; arglist
		push	$CTW0("%s")	; "%s"
		push	0		; color
		mov	edx, [ebp+8]
		push	edx		; _addr
		call	Addtolist
		add	esp, 10h

loc_409C73:				; CODE XREF: .text:00409BBFj
					; .text:00409BD3j ...
		test	esi, esi
		jz	short loc_409C9A
		cmp	word_5D7DD0, 0
		jnz	short loc_409C9A
		cmp	word_5D7FD0, 0
		jnz	short loc_409C9A
		cmp	word_5D81D4, 0
		jnz	short loc_409C9A
		call	loc_409AAC

loc_409C9A:				; CODE XREF: .text:00409C75j
					; .text:00409C7Fj ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  54. _Tempinfo
; Exported entry 384. Tempinfo

; void *Tempinfo(wchar_t *format, ...)
		public Tempinfo
Tempinfo:				; CODE XREF: .text:0042524Ap
					; .text:0042525Ep ...
		push	ebp		; _Tempinfo
		mov	ebp, esp
		add	esp, 0FFFFFBF8h
		push	ebx
		lea	eax, [ebp+0Ch]
		xor	ebx, ebx
		cmp	dword ptr [ebp+8], 0
		jz	short loc_409CBE
		mov	edx, [ebp+8]
		cmp	word ptr [edx],	0
		jnz	short loc_409CD8

loc_409CBE:				; CODE XREF: .text:00409CB3j
		cmp	word_5D7DD0, 0
		jz	short loc_409D26
		mov	word_5D7DD0, 0
		mov	ebx, 1
		jmp	short loc_409D26
; ---------------------------------------------------------------------------

loc_409CD8:				; CODE XREF: .text:00409CBCj
		push	eax		; arglist
		mov	eax, [ebp+8]
		push	eax		; format
		lea	edx, [ebp-408h]
		push	edx		; buffer
		call	_vswprintf
		add	esp, 0Ch
		mov	word ptr [ebp-20Ah], 0
		push	offset word_5D7DD0 ; s2
		lea	ecx, [ebp-408h]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_409D26
		lea	eax, [ebp-408h]
		push	eax		; src
		push	offset word_5D7DD0 ; dst
		call	_wcscpy
		add	esp, 8
		mov	ebx, 1

loc_409D26:				; CODE XREF: .text:00409CC6j
					; .text:00409CD6j ...
		test	ebx, ebx
		jz	short loc_409D43
		cmp	word_5D7FD0, 0
		jnz	short loc_409D43
		cmp	word_5D81D4, 0
		jnz	short loc_409D43
		call	loc_409AAC

loc_409D43:				; CODE XREF: .text:00409D28j
					; .text:00409D32j ...
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  55. _Flash
; Exported entry 385. Flash

; int Flash(wchar_t *format, ...)
		public Flash
Flash:					; CODE XREF: .text:0040C5D6p
					; .text:00412587p ...
		push	ebp		; _Flash
		mov	ebp, esp
		add	esp, 0FFFFFBF8h
		cmp	dword ptr [ebp+8], 0
		lea	eax, [ebp+0Ch]
		jz	short loc_409D6D
		mov	edx, [ebp+8]
		cmp	word ptr [edx],	0
		jz	short loc_409D6D
		cmp	word_5D81D4, 0
		jz	short loc_409D78

loc_409D6D:				; CODE XREF: .text:00409D58j
					; .text:00409D61j
		mov	word_5D7FD0, 0
		jmp	short loc_409DB3
; ---------------------------------------------------------------------------

loc_409D78:				; CODE XREF: .text:00409D6Bj
		push	eax		; arglist
		mov	ecx, [ebp+8]
		push	ecx		; format
		lea	eax, [ebp-408h]
		push	eax		; buffer
		call	_vswprintf
		add	esp, 0Ch
		mov	word ptr [ebp-20Ah], 0
		lea	edx, [ebp-408h]
		push	edx		; src
		push	offset word_5D7FD0 ; dst
		call	_wcscpy
		add	esp, 8
		call	GetTickCount
		mov	dword_5D81D0, eax

loc_409DB3:				; CODE XREF: .text:00409D76j
		call	loc_409AAC
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  56. _Progress
; Exported entry 386. Progress

; char *Progress(int promille, wchar_t *format,	...)
		public Progress
Progress:				; CODE XREF: .text:0045C66Cp
					; .text:0045C6C4p ...
		push	ebp		; _Progress
		mov	ebp, esp
		add	esp, 0FFFFFBF8h
		cmp	dword ptr [ebp+0Ch], 0
		lea	eax, [ebp+10h]
		jz	short loc_409DD7
		mov	edx, [ebp+0Ch]
		cmp	word ptr [edx],	0
		jnz	short loc_409DF9

loc_409DD7:				; CODE XREF: .text:00409DCCj
		cmp	word_5D81D4, 0
		jz	short loc_409E49
		mov	word_5D81D4, 0
		xor	ecx, ecx
		mov	dword_5D83D4, ecx
		call	loc_409AAC
		jmp	short loc_409E49
; ---------------------------------------------------------------------------

loc_409DF9:				; CODE XREF: .text:00409DD5j
		mov	word_5D7FD0, 0
		xor	edx, edx
		mov	dword_5D81D0, edx
		push	eax		; arglist
		mov	eax, [ebp+0Ch]
		push	eax		; format
		lea	ecx, [ebp-408h]
		push	ecx		; buffer
		call	_vswprintf
		add	esp, 0Ch
		mov	word ptr [ebp-20Ah], 0
		lea	eax, [ebp-408h]
		push	eax		; src
		push	offset word_5D81D4 ; dst
		call	_wcscpy
		add	esp, 8
		mov	edx, [ebp+8]
		mov	dword_5D83D4, edx
		call	loc_409AAC

loc_409E49:				; CODE XREF: .text:00409DDFj
					; .text:00409DF7j
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  57. _Moveprogress
; Exported entry 656. Moveprogress

; int __cdecl Moveprogress(int promille)
		public Moveprogress
Moveprogress:				; _Moveprogress
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		cmp	eax, dword_5D83D4
		jz	short loc_409E72
		cmp	word_5D81D4, 0
		jz	short loc_409E72
		mov	dword_5D83D4, eax
		call	loc_409AAC

loc_409E72:				; CODE XREF: .text:00409E5Cj
					; .text:00409E66j
		pop	ebp
		retn
		