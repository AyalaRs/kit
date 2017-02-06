.code

; void *__cdecl	memchr(const void *s, int c, _size_t n)
_memchr:				; CODE XREF: .text:004E8DE4p
					; .text:004E8EEEp
		push	ebp
		mov	ebp, esp
		push	edi
		mov	edi, [ebp+8]
		mov	ecx, [ebp+10h]
		jecxz	short loc_4E74EE
		mov	al, [ebp+0Ch]
		cld
		repne scasb
		jnz	short loc_4E74EE
		lea	eax, [edi-1]

loc_4E74EB:				; CODE XREF: .text:004E74F0j
		pop	edi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E74EE:				; CODE XREF: .text:004E74DEj
					; .text:004E74E6j
		xor	eax, eax
		jmp	short loc_4E74EB
; ---------------------------------------------------------------------------
		align 4

; void *__cdecl	memcpy(void *dest, const void *src, _size_t n)
_memcpy:				; CODE XREF: .text:004014ACp
					; .text:00403FC6p ...
		push	ebp
		mov	ebp, esp
		push	esi
		push	edi
		mov	edi, [ebp+8]
		mov	eax, edi
		mov	esi, [ebp+0Ch]
		mov	ecx, [ebp+10h]
		mov	edx, ecx
		shr	ecx, 1
		shr	ecx, 1
		cld
		rep movsd
		mov	ecx, edx
		and	ecx, 3
		rep movsb
		pop	edi
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; void *__cdecl	_wmemcpy(void *dest, const void	*src, _size_t n)
__wmemcpy:				; CODE XREF: .text:004E7A43p
		push	ebp
		mov	ebp, esp
		push	esi
		push	edi
		mov	edi, [ebp+8]
		mov	eax, edi
		mov	esi, [ebp+0Ch]
		mov	ecx, [ebp+10h]
		mov	edx, ecx
		shr	ecx, 1
		cld
		rep movsd
		mov	ecx, edx
		shl	ecx, 1
		and	ecx, 3
		rep movsb
		pop	edi
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; void *__cdecl	memmove(void *dest, const void *src, _size_t n)
_memmove:				; CODE XREF: .text:00405530p
					; .text:004056ACp ...
		push	ebp
		mov	ebp, esp
		push	esi
		push	edi
		mov	edi, [ebp+8]
		mov	esi, [ebp+0Ch]
		mov	ecx, [ebp+10h]
		mov	edx, ecx
		cmp	edi, esi
		jb	short loc_4E7571
		jz	short loc_4E757F
		std
		lea	esi, [esi+ecx-1]
		lea	edi, [edi+ecx-1]
		and	ecx, 3
		rep movsb
		mov	ecx, edx
		shr	ecx, 1
		shr	ecx, 1
		sub	esi, 3
		sub	edi, 3
		rep movsd
		cld
		jmp	short loc_4E757F
; ---------------------------------------------------------------------------

loc_4E7571:				; CODE XREF: .text:004E754Ej
		cld
		shr	ecx, 1
		shr	ecx, 1
		rep movsd
		mov	ecx, edx
		and	ecx, 3
		rep movsb

loc_4E757F:				; CODE XREF: .text:004E7550j
					; .text:004E756Fj
		mov	eax, [ebp+8]
		pop	edi
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; void *__cdecl	memset(void *s,	int c, _size_t n)
_memset:				; CODE XREF: .text:00404658p
					; .text:00406CA5p ...
		push	ebp
		mov	ebp, esp
		push	edi
		mov	al, [ebp+0Ch]
		mov	edx, [ebp+10h]
		mov	edi, [ebp+8]
		mov	ah, al
		test	edx, 0FFFFFFFCh
		jz	short loc_4E75FC
		mov	[edi], ax
		lea	ecx, [edi+edx-4]
		mov	[edi+2], ax
		mov	eax, [edi]
		shr	edx, 3
		jz	short loc_4E75F4

loc_4E75B1:				; CODE XREF: .text:004E75E7j
		mov	[edi], eax
		mov	[edi+4], eax
		dec	edx
		jz	short loc_4E75E9
		mov	[edi+8], eax
		mov	[edi+0Ch], eax
		dec	edx
		jz	short loc_4E75E9
		mov	[edi+10h], eax
		mov	[edi+14h], eax
		dec	edx
		jz	short loc_4E75E9
		mov	[edi+18h], eax
		mov	[edi+1Ch], eax
		dec	edx
		jz	short loc_4E75E9
		mov	[edi+20h], eax
		mov	[edi+24h], eax
		dec	edx
		jz	short loc_4E75E9
		mov	[edi+28h], eax
		mov	[edi+2Ch], eax
		lea	edi, [edi+30h]
		dec	edx
		jnz	short loc_4E75B1

loc_4E75E9:				; CODE XREF: .text:004E75B7j
					; .text:004E75C0j ...
		mov	[ecx], eax
		mov	[ecx-4], eax
		mov	eax, [ebp+8]
		pop	edi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E75F4:				; CODE XREF: .text:004E75AFj
		mov	[ecx], eax
		mov	eax, [ebp+8]
		pop	edi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E75FC:				; CODE XREF: .text:004E759Dj
		and	edx, 3
		jz	short loc_4E760C
		mov	[edi], al
		dec	dl
		jz	short loc_4E760C
		mov	[edi+edx-1], ax

loc_4E760C:				; CODE XREF: .text:004E75FFj
					; .text:004E7605j
		mov	eax, [ebp+8]
		pop	edi
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; void *__cdecl	_wmemset(void *s, int c, _size_t	n)
__wmemset:				; CODE XREF: .text:0049501Dp
					; .text:004E7A18p ...
		push	ebp
		mov	ebp, esp
		push	edi
		mov	edi, [ebp+8]
		mov	ax, [ebp+0Ch]
		mov	ecx, [ebp+10h]
		cld
		rep stosw
		mov	eax, [ebp+8]
		pop	edi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; char *__cdecl	strcat(char *dest, const char *src)
_strcat:				; CODE XREF: .text:004EA38Ep
					; .text:004F141Ep
		push	ebp
		mov	ebp, esp
		push	esi
		push	edi
		mov	edi, [ebp+8]
		mov	ecx, 0FFFFFFFFh
		xor	al, al
		cld
		repne scasb
		lea	esi, [edi-1]
		mov	edi, [ebp+0Ch]
		mov	ecx, 0FFFFFFFFh
		repne scasb
		not	ecx
		sub	edi, ecx
		xchg	esi, edi
		mov	edx, ecx
		shr	ecx, 1
		shr	ecx, 1
		cld
		rep movsd
		mov	ecx, edx
		and	ecx, 3
		rep movsb
		mov	eax, [ebp+8]
		pop	edi
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; size_t __cdecl strlen(const char *s)
_strlen:				; CODE XREF: .text:0043A88Dp
					; .text:0043AAC2p ...
		mov	eax, [esp+4]
		test	al, 3
		jnz	short loc_4E769D

loc_4E7670:				; CODE XREF: .text:004E7683j
					; .text:004E7689j ...
		mov	edx, [eax]
		add	eax, 4
		mov	ecx, edx
		sub	edx, 1010101h
		and	edx, 80808080h
		jz	short loc_4E7670
		not	ecx
		and	edx, ecx
		jz	short loc_4E7670
		test	dl, dl
		jnz	short loc_4E76B7
		test	dh, dh
		jnz	short loc_4E76B8
		test	edx, 0FF0000h
		jnz	short loc_4E76B9
		jmp	short loc_4E76BA
; ---------------------------------------------------------------------------

loc_4E769D:				; CODE XREF: .text:004E766Ej
		add	eax, 4
		test	byte ptr [eax-4], 0FFh
		jz	short loc_4E76B7
		test	byte ptr [eax-3], 0FFh
		jz	short loc_4E76B8
		test	byte ptr [eax-2], 0FFh
		jz	short loc_4E76B9
		dec	eax
		and	al, 0FCh
		jmp	short loc_4E7670
; ---------------------------------------------------------------------------

loc_4E76B7:				; CODE XREF: .text:004E768Dj
					; .text:004E76A4j
		dec	eax

loc_4E76B8:				; CODE XREF: .text:004E7691j
					; .text:004E76AAj
		dec	eax

loc_4E76B9:				; CODE XREF: .text:004E7699j
					; .text:004E76B0j
		dec	eax

loc_4E76BA:				; CODE XREF: .text:004E769Bj
		mov	ecx, [esp+4]
		dec	eax
		sub	eax, ecx
		retn
; ---------------------------------------------------------------------------
		align 4

; char *__cdecl	strncat(char *dest, const char *src, _size_t maxlen)
_strncat:				; CODE XREF: .text:004EF835p
		push	ebp
		mov	ebp, esp
		push	edi
		push	ebx
		mov	edi, [ebp+8]
		mov	ecx, 0FFFFFFFFh
		xor	al, al
		cld
		repne scasb
		mov	ecx, [ebp+10h]
		lea	ebx, [edi-1]
		and	ecx, 3
		mov	edx, [ebp+0Ch]
		jecxz	short loc_4E76F1

loc_4E76E4:				; CODE XREF: .text:004E76EFj
		mov	al, [edx]
		mov	[ebx], al
		test	al, al
		jz	short loc_4E772B
		inc	edx
		inc	ebx
		dec	ecx
		jnz	short loc_4E76E4

loc_4E76F1:				; CODE XREF: .text:004E76E2j
		mov	ecx, [ebp+10h]
		shr	ecx, 2
		jecxz	short loc_4E7728

loc_4E76F9:				; CODE XREF: .text:004E7726j
		mov	al, [edx]
		mov	[ebx], al
		test	al, al
		jz	short loc_4E772B
		mov	al, [edx+1]
		mov	[ebx+1], al
		test	al, al
		jz	short loc_4E772B
		mov	al, [edx+2]
		mov	[ebx+2], al
		test	al, al
		jz	short loc_4E772B
		mov	al, [edx+3]
		add	edx, 4
		mov	[ebx+3], al
		add	ebx, 4
		test	al, al
		jz	short loc_4E772B
		dec	ecx
		jnz	short loc_4E76F9

loc_4E7728:				; CODE XREF: .text:004E76F7j
		mov	byte ptr [ebx],	0

loc_4E772B:				; CODE XREF: .text:004E76EAj
					; .text:004E76FFj ...
		mov	eax, [ebp+8]
		pop	ebx
		pop	edi
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl strncmp(const char *s1, const char *s2, _size_t maxlen)
_strncmp:				; CODE XREF: .text:0045EFDAp
					; .text:0045F005p ...
		push	ebp
		mov	ebp, esp
		push	esi
		push	edi
		cld
		mov	esi, [ebp+8]
		mov	edi, [ebp+0Ch]
		mov	ecx, [ebp+10h]

loc_4E7743:				; CODE XREF: .text:004E774Cj
		dec	ecx
		js	short loc_4E774E
		lodsb
		scasb
		jnz	short loc_4E7752
		test	al, al
		jnz	short loc_4E7743

loc_4E774E:				; CODE XREF: .text:004E7744j
		xor	eax, eax
		jmp	short loc_4E7757
; ---------------------------------------------------------------------------

loc_4E7752:				; CODE XREF: .text:004E7748j
		sbb	eax, eax
		or	eax, 1

loc_4E7757:				; CODE XREF: .text:004E7750j
		pop	edi
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl memcmp(const void	*s1, const void	*s2, _size_t n)
_memcmp:				; CODE XREF: .text:00403767p
					; .text:004037AAp ...
		push	ebp
		mov	ebp, esp
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	ecx, [ebp+8]
		mov	esi, [ebp+0Ch]

loc_4E776A:				; CODE XREF: .text:004E77A1j
		cmp	edi, 4
		jl	short loc_4E77A3
		mov	al, [ecx]
		mov	dl, [esi]
		cmp	dl, al
		jnz	short loc_4E77A3
		mov	al, [ecx+1]
		mov	dl, [esi+1]
		cmp	dl, al
		jnz	short loc_4E77A3
		mov	al, [ecx+2]
		mov	dl, [esi+2]
		cmp	dl, al
		jnz	short loc_4E77A3
		mov	al, [ecx+3]
		mov	dl, [esi+3]
		cmp	dl, al
		jnz	short loc_4E77A3
		sub	edi, 4
		add	ecx, 4
		add	esi, 4
		cmp	edi, 4
		jge	short loc_4E776A

loc_4E77A3:				; CODE XREF: .text:004E776Dj
					; .text:004E7775j ...
		test	edi, edi
		jnz	short loc_4E77AB
		xor	eax, eax
		jmp	short loc_4E77C4
; ---------------------------------------------------------------------------

loc_4E77AB:				; CODE XREF: .text:004E77A5j
					; .text:004E77B6j
		mov	al, [ecx]
		mov	dl, [esi]
		cmp	dl, al
		jnz	short loc_4E77B8
		inc	ecx
		inc	esi
		dec	edi
		jnz	short loc_4E77AB

loc_4E77B8:				; CODE XREF: .text:004E77B1j
		xor	ecx, ecx
		mov	cl, al
		xor	eax, eax
		mov	al, dl
		sub	ecx, eax
		mov	eax, ecx

loc_4E77C4:				; CODE XREF: .text:004E77A9j
		pop	edi
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl memicmp(const void *s1, const void *s2, _size_t n)
_memicmp:				; CODE XREF: .text:0043AB1Cp
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		mov	ebx, [ebp+0Ch]
		jmp	short loc_4E77FD
; ---------------------------------------------------------------------------

loc_4E77D7:				; CODE XREF: .text:004E7806j
		movzx	edi, byte ptr [esi]
		push	edi		; ch
		call	__ltoupper
		pop	ecx
		push	eax
		xor	eax, eax
		mov	al, [ebx]
		mov	[ebp-4], eax
		mov	edx, [ebp-4]
		push	edx		; ch
		call	__ltoupper
		pop	ecx
		pop	ecx
		xchg	eax, ecx
		sub	eax, ecx
		test	eax, eax
		jnz	short loc_4E780A
		inc	esi
		inc	ebx

loc_4E77FD:				; CODE XREF: .text:004E77D5j
		mov	edx, [ebp+10h]
		add	dword ptr [ebp+10h], 0FFFFFFFFh
		test	edx, edx
		ja	short loc_4E77D7
		xor	eax, eax

loc_4E780A:				; CODE XREF: .text:004E77F9j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; char *__cdecl	strdup(const char *s)
_strdup:				; CODE XREF: .text:004F00A1p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+8]
		push	edi		; s
		call	_strlen
		pop	ecx
		mov	esi, eax
		inc	esi
		push	esi		; size
		call	_malloc
		pop	ecx
		mov	ebx, eax
		test	eax, eax
		jz	short loc_4E783B
		push	esi		; n
		push	edi		; src
		push	ebx		; dest
		call	_memcpy
		add	esp, 0Ch

loc_4E783B:				; CODE XREF: .text:004E782Ej
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; char *__cdecl	strncpy(char *dest, const char *src, _size_t maxlen)
_strncpy:				; CODE XREF: .text:004F2D65p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		push	edi		; s
		call	_strlen
		pop	ecx
		mov	ebx, eax
		cmp	ebx, [ebp+10h]
		jbe	short loc_4E786E
		mov	eax, [ebp+10h]
		push	eax		; n
		push	edi		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_4E788C
; ---------------------------------------------------------------------------

loc_4E786E:				; CODE XREF: .text:004E785Cj
		push	ebx		; n
		push	edi		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [ebp+10h]
		sub	edx, ebx
		add	ebx, esi
		push	edx		; n
		push	0		; c
		push	ebx		; s
		call	_memset
		add	esp, 0Ch

loc_4E788C:				; CODE XREF: .text:004E786Cj
		mov	eax, esi
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; char *__cdecl	_stpcpy(char *dest, const char *src)
__stpcpy:				; CODE XREF: .text:004EA372p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		mov	edx, [ebp+0Ch]

loc_4E789D:				; CODE XREF: .text:004E78C7j
		mov	cl, [edx]
		mov	[eax], cl
		test	cl, cl
		jz	short loc_4E78C9
		inc	eax
		mov	cl, [edx+1]
		mov	[eax], cl
		test	cl, cl
		jz	short loc_4E78C9
		inc	eax
		mov	cl, [edx+2]
		mov	[eax], cl
		test	cl, cl
		jz	short loc_4E78C9
		inc	eax
		mov	cl, [edx+3]
		add	edx, 4
		mov	[eax], cl
		test	cl, cl
		jz	short loc_4E78C9
		inc	eax
		jmp	short loc_4E789D
; ---------------------------------------------------------------------------

loc_4E78C9:				; CODE XREF: .text:004E78A3j
					; .text:004E78ADj ...
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; size_t __cdecl wcslen(const wchar_t *s)
_wcslen:				; CODE XREF: .text:004013C7p
					; .text:00404730p ...
		push	ebp
		mov	ebp, esp
		xor	edx, edx
		mov	eax, [ebp+8]
		jmp	short loc_4E78DA
; ---------------------------------------------------------------------------

loc_4E78D6:				; CODE XREF: .text:004E78DEj
		inc	edx
		add	eax, 2

loc_4E78DA:				; CODE XREF: .text:004E78D4j
		cmp	word ptr [eax],	0
		jnz	short loc_4E78D6
		mov	eax, edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; wchar_t *__cdecl wcscpy(wchar_t *dst,	const wchar_t *src)
_wcscpy:				; CODE XREF: .text:00404809p
					; .text:00405B26p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		push	esi		; s
		call	_wcslen
		pop	ecx
		mov	ebx, eax
		xor	ecx, ecx
		mov	eax, [ebp+8]
		mov	edx, eax
		mov	eax, esi
		cmp	ebx, ecx
		jbe	short loc_4E7913

loc_4E7902:				; CODE XREF: .text:004E7911j
		mov	si, [eax]
		mov	[edx], si
		inc	ecx
		add	edx, 2
		add	eax, 2
		cmp	ebx, ecx
		ja	short loc_4E7902

loc_4E7913:				; CODE XREF: .text:004E7900j
		mov	eax, [ebp+8]
		mov	word ptr [eax+ebx*2], 0
		mov	eax, [ebp+8]
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; wchar_t *__cdecl wcscat(wchar_t *dest, const wchar_t *src)
_wcscat:				; CODE XREF: .text:004059BAp
					; .text:00409444p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		push	ebx		; s
		call	_wcslen
		pop	ecx
		mov	edx, [ebp+0Ch]
		push	edx		; src
		add	eax, eax
		add	eax, ebx
		push	eax		; dst
		call	_wcscpy
		add	esp, 8
		mov	eax, ebx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; wchar_t *__cdecl wcschr(const	wchar_t	*s, int	c)
_wcschr:				; CODE XREF: .text:00408D79p
		push	ebp
		mov	ebp, esp
		push	edi
		mov	edi, [ebp+8]
		mov	edx, edi
		mov	ecx, 0FFFFFFFFh
		xor	ax, ax
		cld
		repne scasw
		not	ecx
		mov	edi, edx
		mov	ax, [ebp+0Ch]
		repne scasw
		jnz	short loc_4E7970
		lea	eax, [edi-2]

loc_4E796D:				; CODE XREF: .text:004E7972j
		pop	edi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E7970:				; CODE XREF: .text:004E7968j
		xor	eax, eax
		jmp	short loc_4E796D
; ---------------------------------------------------------------------------

; int __cdecl wcscmp(const wchar_t *s1,	const wchar_t *s2)
_wcscmp:				; CODE XREF: .text:00401889p
					; .text:004018A1p ...
		push	ebp
		mov	ebp, esp
		push	esi
		push	edi
		cld
		xor	eax, eax
		mov	edx, eax
		mov	edi, [ebp+0Ch]
		mov	esi, edi
		mov	ecx, 0FFFFFFFFh
		repne scasw
		not	ecx
		mov	edi, esi
		mov	esi, [ebp+8]
		repe cmpsw
		mov	ax, [esi-2]
		mov	dx, [edi-2]
		sub	eax, edx
		pop	edi
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl wcsncmp(const wchar_t *s1, const wchar_t *s2, _size_t maxlen)
_wcsncmp:				; CODE XREF: .text:004375A0p
					; .text:00437FE5p ...
		push	ebp
		mov	ebp, esp
		push	esi
		push	edi
		cld
		mov	esi, [ebp+8]
		mov	edi, [ebp+0Ch]
		mov	ecx, [ebp+10h]

loc_4E79B3:				; CODE XREF: .text:004E79BFj
		dec	ecx
		js	short loc_4E79C1
		lodsw
		scasw
		jnz	short loc_4E79C5
		test	ax, ax
		jnz	short loc_4E79B3

loc_4E79C1:				; CODE XREF: .text:004E79B4j
		xor	eax, eax
		jmp	short loc_4E79CA
; ---------------------------------------------------------------------------

loc_4E79C5:				; CODE XREF: .text:004E79BAj
		sbb	eax, eax
		or	eax, 1

loc_4E79CA:				; CODE XREF: .text:004E79C3j
		pop	edi
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; wchar_t *__cdecl wcsncpy(wchar_t *dest, const	wchar_t	*src, _size_t maxlen)
_wcsncpy:				; CODE XREF: .text:004D5088p
					; .text:004EC9EDp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		push	edi		; s
		call	_wcslen
		pop	ecx
		mov	ebx, eax
		cmp	ebx, [ebp+10h]
		jbe	short loc_4E79FC
		mov	eax, [ebp+10h]
		add	eax, eax
		push	eax		; n
		push	edi		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	short loc_4E7A20
; ---------------------------------------------------------------------------

loc_4E79FC:				; CODE XREF: .text:004E79E8j
		mov	edx, ebx
		add	edx, edx
		push	edx		; n
		push	edi		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, [ebp+10h]
		sub	ecx, ebx
		add	ebx, ebx
		push	ecx		; n
		add	ebx, esi
		push	0		; c
		push	ebx		; s
		call	__wmemset
		add	esp, 0Ch

loc_4E7A20:				; CODE XREF: .text:004E79FAj
		mov	eax, esi
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; wchar_t *__cdecl _wcspcpy(wchar_t *dest, const wchar_t *src)
__wcspcpy:				; CODE XREF: .text:004EC970p
					; .text:004EC996p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		push	edi		; s
		call	_wcslen
		pop	ecx
		mov	ebx, eax
		lea	eax, [ebx+1]
		push	eax		; n
		push	edi		; src
		push	esi		; dest
		call	__wmemcpy
		add	esp, 0Ch
		mov	eax, ebx
		add	eax, eax
		add	eax, esi
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _wcsicmp(const wchar_t *s1, const	wchar_t	*s2)
__wcsicmp:				; CODE XREF: .text:00401A24p
					; .text:00402945p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		jmp	short loc_4E7A69
; ---------------------------------------------------------------------------

loc_4E7A61:				; CODE XREF: .text:004E7A91j
		add	dword ptr [ebp+8], 2
		add	dword ptr [ebp+0Ch], 2

loc_4E7A69:				; CODE XREF: .text:004E7A5Fj
		mov	eax, [ebp+8]
		mov	si, [eax]
		push	esi		; ch
		call	__ltowupper
		mov	ebx, eax
		mov	eax, [ebp+0Ch]
		pop	ecx
		mov	di, [eax]
		push	edi		; ch
		call	__ltowupper
		pop	ecx
		mov	[ebp-2], ax
		cmp	bx, ax
		jnz	short loc_4E7A93
		test	bx, bx
		jnz	short loc_4E7A61

loc_4E7A93:				; CODE XREF: .text:004E7A8Cj
		movzx	eax, bx
		movzx	edx, word ptr [ebp-2]
		sub	eax, edx
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _wcsnicmp(const wchar_t *s1, const wchar_t *s2, _size_t maxlen)
__wcsnicmp:				; CODE XREF: .text:00405A1Dp
					; .text:004073BDp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		jmp	short loc_4E7ABF
; ---------------------------------------------------------------------------

loc_4E7AB8:				; CODE XREF: .text:004E7AF2j
		dec	esi
		add	ebx, 2
		add	edi, 2

loc_4E7ABF:				; CODE XREF: .text:004E7AB6j
		test	esi, esi
		jz	short loc_4E7AF4
		cmp	word ptr [ebx],	0
		jz	short loc_4E7AF4
		mov	ax, [ebx]
		mov	[ebp-2], ax
		mov	dx, [ebp-2]
		push	edx		; ch
		call	__ltowupper
		pop	ecx
		push	eax
		mov	cx, [edi]
		mov	[ebp-4], cx
		mov	ax, [ebp-4]
		push	eax		; ch
		call	__ltowupper
		pop	ecx
		pop	edx
		cmp	dx, ax
		jz	short loc_4E7AB8

loc_4E7AF4:				; CODE XREF: .text:004E7AC1j
					; .text:004E7AC7j
		test	esi, esi
		jnz	short loc_4E7AFC
		xor	eax, eax
		jmp	short loc_4E7B22
; ---------------------------------------------------------------------------

loc_4E7AFC:				; CODE XREF: .text:004E7AF6j
		mov	si, [ebx]
		push	esi		; ch
		call	__ltowupper
		movzx	edx, ax
		pop	ecx
		push	edx
		mov	cx, [edi]
		mov	[ebp-6], cx
		mov	ax, [ebp-6]
		push	eax		; ch
		call	__ltowupper
		movzx	edx, ax
		pop	ecx
		pop	eax
		sub	eax, edx

loc_4E7B22:				; CODE XREF: .text:004E7AFAj
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

@__InitExceptBlockLDTC:			; CODE XREF: .text:004E6BD4p
					; .text:004E6CB3p ...
		push	ebx
		mov	ebx, ebp
		add	ebx, [eax+4]
		mov	[ebx+8], eax
		lea	eax, [esp+8]
		mov	[ebx+0Ch], eax
		mov	dword ptr [ebx+4], (offset aBccxh1l+8) ; "̄"
		mov	word ptr [ebx+10h], 0
		mov	word ptr [ebx+12h], 0
		mov	dword ptr [ebx+1Ch], 0
		mov	eax, fs:0
		mov	[ebx], eax
		mov	fs:0, ebx
		pop	ebx
		retn
; ---------------------------------------------------------------------------

@__ExitExceptBlock:
		mov	fs:0, eax
		retn
; ---------------------------------------------------------------------------
aBccxh1l	db '**BCCxh1̄'         ; DATA XREF: .text:004E7B3Co
; ---------------------------------------------------------------------------

loc_4E7B75:
		push	dword_579E78
		push	ebx
		push	edi
		push	esi
		push	ebp
		push	eax
		push	dword ptr [ebp+14h]
		push	dword ptr [ebp+10h]
		push	dword ptr [ebp+0Ch]
		push	dword ptr [ebp+8]
		call	loc_4F2A24
		add	esp, 14h
		pop	ebp
		pop	esi
		pop	edi
		pop	ebx
		add	esp, 4
		retn
; ---------------------------------------------------------------------------

unknown_libname_7:			; CODE XREF: .text:004E7C64p
					; .text:004E7CD2p ...
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		test	byte ptr [edi+4], 1
		jnz	short loc_4E7BC5
		push	13Bh		; line
		push	offset file	; "xxtype.cpp"
		push	offset cond	; "IS_STRUC(base->tpMask)"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E7BC5:				; CODE XREF: .text:004E7BACj
		mov	eax, [ebp+8]
		test	byte ptr [eax+4], 1
		jnz	short loc_4E7BE5
		push	13Ch		; line
		push	offset aXxtype_cpp_0 ; "xxtype.cpp"

loc_4E7BD8:				; "IS_STRUC(derv->tpMask)"
		push	offset aIs_strucDervTp
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E7BE5:				; CODE XREF: .text:004E7BCCj
		mov	edx, [ebp+8]
		test	byte ptr [edx+0Ch], 4
		jnz	short loc_4E7C05
		push	13Eh		; line
		push	offset aXxtype_cpp_1 ; "xxtype.cpp"
		push	offset aDervTpclass_tp ; "derv->tpClass.tpcFlags & CF_HAS_BASES"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E7C05:				; CODE XREF: .text:004E7BECj
		mov	ecx, [ebp+8]
		movzx	ebx, word ptr [ecx+12h]
		add	ebx, [ebp+8]

loc_4E7C0F:				; CODE XREF: .text:004E7C7Aj
		mov	esi, [ebx]
		test	esi, esi
		jz	short loc_4E7C7C
		test	byte ptr [ebx+8], 8
		jnz	short loc_4E7C77
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4E7C2C
		mov	eax, [ebx+8]
		and	eax, 3
		cmp	eax, 3
		jz	short loc_4E7C30

loc_4E7C2C:				; CODE XREF: .text:004E7C1Fj
		xor	edx, edx
		jmp	short loc_4E7C35
; ---------------------------------------------------------------------------

loc_4E7C30:				; CODE XREF: .text:004E7C2Aj
		mov	edx, 1

loc_4E7C35:				; CODE XREF: .text:004E7C2Ej
		mov	[ebp-4], edx
		push	esi
		push	edi
		call	loc_4E8088
		add	esp, 8
		test	eax, eax
		jz	short loc_4E7C56
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4E7C56
		mov	eax, 1
		jmp	loc_4E7CEC
; ---------------------------------------------------------------------------

loc_4E7C56:				; CODE XREF: .text:004E7C44j
					; .text:004E7C4Aj
		test	byte ptr [esi+0Ch], 4
		jz	short loc_4E7C77
		push	dword ptr [ebp-4]
		push	dword ptr [ebp+10h]
		push	edi
		push	esi
		call	unknown_libname_7 ; BCC	v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		add	esp, 10h
		test	eax, eax
		jz	short loc_4E7C77
		mov	eax, 1
		jmp	short loc_4E7CEC
; ---------------------------------------------------------------------------

loc_4E7C77:				; CODE XREF: .text:004E7C19j
					; .text:004E7C5Aj ...
		add	ebx, 0Ch
		jmp	short loc_4E7C0F
; ---------------------------------------------------------------------------

loc_4E7C7C:				; CODE XREF: .text:004E7C13j
		mov	edx, [ebp+8]
		movzx	ebx, word ptr [edx+10h]
		add	ebx, [ebp+8]

loc_4E7C86:				; CODE XREF: .text:004E7CE8j
		mov	esi, [ebx]
		test	esi, esi
		jz	short loc_4E7CEA
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4E7C9D
		mov	eax, [ebx+8]
		and	eax, 3
		cmp	eax, 3
		jz	short loc_4E7CA1

loc_4E7C9D:				; CODE XREF: .text:004E7C90j
		xor	edx, edx
		jmp	short loc_4E7CA6
; ---------------------------------------------------------------------------

loc_4E7CA1:				; CODE XREF: .text:004E7C9Bj
		mov	edx, 1

loc_4E7CA6:				; CODE XREF: .text:004E7C9Fj
		mov	[ebp-8], edx
		push	esi
		push	edi
		call	loc_4E8088
		add	esp, 8
		test	eax, eax
		jz	short loc_4E7CC4
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4E7CC4
		mov	eax, 1
		jmp	short loc_4E7CEC
; ---------------------------------------------------------------------------

loc_4E7CC4:				; CODE XREF: .text:004E7CB5j
					; .text:004E7CBBj
		test	byte ptr [esi+0Ch], 4
		jz	short loc_4E7CE5
		push	dword ptr [ebp-8]
		push	dword ptr [ebp+10h]
		push	edi
		push	esi
		call	unknown_libname_7 ; BCC	v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		add	esp, 10h
		test	eax, eax
		jz	short loc_4E7CE5
		mov	eax, 1
		jmp	short loc_4E7CEC
; ---------------------------------------------------------------------------

loc_4E7CE5:				; CODE XREF: .text:004E7CC8j
					; .text:004E7CDCj
		add	ebx, 0Ch
		jmp	short loc_4E7C86
; ---------------------------------------------------------------------------

loc_4E7CEA:				; CODE XREF: .text:004E7C8Aj
		xor	eax, eax

loc_4E7CEC:				; CODE XREF: .text:004E7C51j
					; .text:004E7C75j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E7CF3:				; DATA XREF: .data:004F6104o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		push	ebx
		push	esi
		mov	eax, offset stru_579E7C
		call	@__InitExceptBlockLDTC
		xor	esi, esi

loc_4E7D07:				; CODE XREF: .text:004E7D34j
		mov	eax, dword_61B628[esi*4]
		test	eax, eax
		jz	short loc_4E7D2D
		test	eax, eax
		jz	short loc_4E7D2D

loc_4E7D16:				; CODE XREF: .text:004E7D2Bj
		mov	ebx, [eax+0Ch]
		test	eax, eax
		jz	short loc_4E7D27
		push	3
		push	eax
		mov	eax, [eax]
		call	dword ptr [eax]
		add	esp, 8

loc_4E7D27:				; CODE XREF: .text:004E7D1Bj
		mov	eax, ebx
		test	eax, eax
		jnz	short loc_4E7D16

loc_4E7D2D:				; CODE XREF: .text:004E7D10j
					; .text:004E7D14j
		inc	esi
		cmp	esi, 100h
		jl	short loc_4E7D07
		mov	edx, [ebp-24h]
		mov	fs:0, edx
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E7D46:				; CODE XREF: .text:004E7EDFp
					; .text:004E7F45p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE8h
		xor	eax, eax
		xor	edx, edx
		xor	ecx, ecx
		push	ebx
		push	esi
		push	edi
		mov	[ebp-8], eax
		mov	[ebp-0Ch], edx
		mov	[ebp-10h], ecx
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4E7D6D
		mov	eax, [ebp+0Ch]
		test	byte ptr [eax+4], 1
		jnz	short loc_4E7D84

loc_4E7D6D:				; CODE XREF: .text:004E7D62j
		push	34Fh		; line
		push	offset aXxtype_cpp_2 ; "xxtype.cpp"
		push	offset aToptypptr0Is_s ; "topTypPtr != 0 && IS_STRUC(topTypPtr->t"...
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E7D84:				; CODE XREF: .text:004E7D6Bj
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4E7D93
		mov	edx, [ebp+14h]
		test	byte ptr [edx+4], 1
		jnz	short loc_4E7DAA

loc_4E7D93:				; CODE XREF: .text:004E7D88j
		push	350h		; line
		push	offset aXxtype_cpp_3 ; "xxtype.cpp"
		push	offset aTgttypptr0Is_s ; "tgtTypPtr != 0 && IS_STRUC(tgtTypPtr->t"...
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E7DAA:				; CODE XREF: .text:004E7D91j
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_4E7DD0
		mov	ecx, [ebp+1Ch]
		test	byte ptr [ecx+4], 1
		jnz	short loc_4E7DD0
		push	351h		; line
		push	offset aXxtype_cpp_4 ; "xxtype.cpp"
		push	offset aSrctypptr0Is_s ; "srcTypPtr == 0 || IS_STRUC(srcTypPtr->t"...
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E7DD0:				; CODE XREF: .text:004E7DAEj
					; .text:004E7DB7j
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_4E7E18
		push	dword ptr [ebp+14h]
		push	dword ptr [ebp+1Ch]
		call	loc_4E8088
		add	esp, 8
		test	eax, eax
		jz	short loc_4E7DFF
		push	355h		; line
		push	offset aXxtype_cpp_5 ; "xxtype.cpp"
		push	offset a__issametypeid ; "__isSameTypeID(srcTypPtr, tgtTypPtr) =="...
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E7DFF:				; CODE XREF: .text:004E7DE6j
		push	dword ptr [ebp+0Ch]
		push	dword ptr [ebp+1Ch]
		call	loc_4E8088
		add	esp, 8
		test	eax, eax
		jz	short loc_4E7E18
		xor	eax, eax
		jmp	loc_4E7FA6
; ---------------------------------------------------------------------------

loc_4E7E18:				; CODE XREF: .text:004E7DD4j
					; .text:004E7E0Fj
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4E7E30
		push	dword ptr [ebp+14h]
		push	dword ptr [ebp+0Ch]
		call	loc_4E8088
		add	esp, 8
		test	eax, eax
		jz	short loc_4E7E47

loc_4E7E30:				; CODE XREF: .text:004E7E1Cj
		push	35Bh		; line
		push	offset aXxtype_cpp_6 ; "xxtype.cpp"
		push	offset aTgttypptr0__is ; "tgtTypPtr != 0 && __isSameTypeID(topTyp"...
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E7E47:				; CODE XREF: .text:004E7E2Ej
		mov	edx, [ebp+0Ch]
		test	byte ptr [edx+0Ch], 4
		jnz	short loc_4E7E57
		xor	eax, eax
		jmp	loc_4E7FA6
; ---------------------------------------------------------------------------

loc_4E7E57:				; CODE XREF: .text:004E7E4Ej
		xor	edx, edx
		mov	[ebp-4], edx
		mov	ecx, [ebp+0Ch]
		movzx	ebx, word ptr [ecx+12h]
		add	ebx, [ebp+0Ch]

loc_4E7E66:				; CODE XREF: .text:004E7F73j
					; .text:004E7F8Bj
		mov	edi, [ebx]
		test	edi, edi
		jz	loc_4E7F78
		test	byte ptr [ebx+8], 8
		jnz	loc_4E7F70
		cmp	dword ptr [ebp+24h], 0
		jz	short loc_4E7E8B
		mov	eax, [ebx+8]
		and	eax, 3
		cmp	eax, 3
		jz	short loc_4E7E8F

loc_4E7E8B:				; CODE XREF: .text:004E7E7Ej
		xor	edx, edx
		jmp	short loc_4E7E94
; ---------------------------------------------------------------------------

loc_4E7E8F:				; CODE XREF: .text:004E7E89j
		mov	edx, 1

loc_4E7E94:				; CODE XREF: .text:004E7E8Dj
		mov	[ebp-14h], edx
		mov	esi, [ebp+8]
		mov	eax, [ebp+28h]
		add	esi, [ebx+4]
		mov	[ebp-18h], eax
		test	byte ptr [ebx+8], 4
		jz	short loc_4E7EAE
		mov	esi, [esi]
		mov	[ebp-18h], edi

loc_4E7EAE:				; CODE XREF: .text:004E7EA7j
		push	edi
		push	dword ptr [ebp+14h]
		call	loc_4E8088
		add	esp, 8
		test	eax, eax
		jnz	short loc_4E7EFD
		test	byte ptr [edi+0Ch], 4
		jz	loc_4E7F70
		push	dword ptr [ebp-18h]
		push	dword ptr [ebp-14h]
		push	dword ptr [ebp+20h]
		push	dword ptr [ebp+1Ch]
		push	dword ptr [ebp+18h]
		push	dword ptr [ebp+14h]
		push	dword ptr [ebp+10h]
		push	edi
		push	esi
		call	loc_4E7D46
		add	esp, 24h
		test	eax, eax
		jz	loc_4E7F70
		mov	esi, eax
		mov	eax, [ebp+20h]
		mov	edx, [eax]
		mov	[ebp-14h], edx
		jmp	short loc_4E7F51
; ---------------------------------------------------------------------------
		jmp	short loc_4E7F70
; ---------------------------------------------------------------------------

loc_4E7EFD:				; CODE XREF: .text:004E7EBCj
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4E7F0F
		cmp	esi, [ebp+10h]
		jnz	short loc_4E7F70
		mov	eax, esi
		jmp	loc_4E7FA6
; ---------------------------------------------------------------------------

loc_4E7F0F:				; CODE XREF: .text:004E7F01j
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_4E7F51
		cmp	dword ptr [ebp+1Ch], 0
		jnz	short loc_4E7F32
		push	3D0h		; line
		push	offset aXxtype_cpp_7 ; "xxtype.cpp"
		push	offset aSrctypptr ; "srcTypPtr"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E7F32:				; CODE XREF: .text:004E7F19j
		push	0
		push	0
		push	dword ptr [ebp+20h]
		push	0
		push	0
		push	dword ptr [ebp+1Ch]
		push	dword ptr [ebp+18h]
		push	edi
		push	esi
		call	loc_4E7D46
		add	esp, 24h
		test	eax, eax
		jz	short loc_4E7F70

loc_4E7F51:				; CODE XREF: .text:004E7EF9j
					; .text:004E7F13j
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4E7F64
		cmp	esi, [ebp-0Ch]
		jnz	short loc_4E7F64
		mov	edx, [ebp-14h]
		or	[ebp-8], edx
		jmp	short loc_4E7F70
; ---------------------------------------------------------------------------

loc_4E7F64:				; CODE XREF: .text:004E7F55j
					; .text:004E7F5Aj
		inc	dword ptr [ebp-10h]
		mov	[ebp-0Ch], esi
		mov	ecx, [ebp-14h]
		mov	[ebp-8], ecx

loc_4E7F70:				; CODE XREF: .text:004E7E74j
					; .text:004E7EC2j ...
		add	ebx, 0Ch
		jmp	loc_4E7E66
; ---------------------------------------------------------------------------

loc_4E7F78:				; CODE XREF: .text:004E7E6Aj
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4E7F90
		inc	dword ptr [ebp-4]
		mov	eax, [ebp+0Ch]
		movzx	ebx, word ptr [eax+10h]
		add	ebx, [ebp+0Ch]
		jmp	loc_4E7E66
; ---------------------------------------------------------------------------

loc_4E7F90:				; CODE XREF: .text:004E7F7Cj
		mov	eax, [ebp+20h]
		mov	edx, [ebp-8]
		mov	[eax], edx
		cmp	dword ptr [ebp-10h], 1
		jz	short loc_4E7FA3
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx

loc_4E7FA3:				; CODE XREF: .text:004E7F9Cj
		mov	eax, [ebp-0Ch]

loc_4E7FA6:				; CODE XREF: .text:004E7E13j
					; .text:004E7E52j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E7FAD:				; CODE XREF: .text:004E802Cp
					; .text:004E84A4p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+14h]
		mov	esi, [ebp+8]
		cmp	dword ptr [edi], 0
		jnz	short loc_4E7FD6
		push	515h		; line
		push	offset aXxtype_cpp_8 ; "xxtype.cpp"
		push	offset aAddr	; "_addr"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E7FD6:				; CODE XREF: .text:004E7FBDj
					; .text:004E8047j
		mov	ebx, [esi]
		test	ebx, ebx
		jnz	short loc_4E7FE0
		xor	eax, eax
		jmp	short loc_4E8049
; ---------------------------------------------------------------------------

loc_4E7FE0:				; CODE XREF: .text:004E7FDAj
		mov	edx, [edi]
		add	edx, [esi+4]
		mov	[ebp-4], edx
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4E7FF6
		mov	ecx, [ebp-4]
		mov	eax, [ecx]
		mov	[ebp-4], eax

loc_4E7FF6:				; CODE XREF: .text:004E7FECj
		push	dword ptr [ebp+10h]
		push	ebx
		call	loc_4E8088
		add	esp, 8
		test	eax, eax
		jz	short loc_4E8012
		mov	edx, [ebp-4]
		mov	eax, 1
		mov	[edi], edx
		jmp	short loc_4E8049
; ---------------------------------------------------------------------------

loc_4E8012:				; CODE XREF: .text:004E8004j
		test	byte ptr [ebx+4], 2
		jz	short loc_4E8044
		movzx	eax, word ptr [ebx+10h]
		add	eax, ebx
		test	eax, eax
		jz	short loc_4E8044
		lea	edx, [ebp-4]
		push	edx
		push	dword ptr [ebp+10h]
		push	0
		push	eax
		call	loc_4E7FAD
		add	esp, 10h
		test	eax, eax
		jz	short loc_4E8044
		mov	ecx, [ebp-4]
		mov	eax, 1
		mov	[edi], ecx
		jmp	short loc_4E8049
; ---------------------------------------------------------------------------

loc_4E8044:				; CODE XREF: .text:004E8016j
					; .text:004E8020j ...
		add	esi, 0Ch
		jmp	short loc_4E7FD6
; ---------------------------------------------------------------------------

loc_4E8049:				; CODE XREF: .text:004E7FDEj
					; .text:004E8010j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4E8050:				; CODE XREF: .text:004E8474p
					; .text:004F1C06p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4E8063
		mov	eax, offset aNotype ; "<notype>"
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E8063:				; CODE XREF: .text:004E8059j
		cmp	word ptr [ebx+6], 0
		jnz	short loc_4E807E
		push	22h		; line
		push	offset aXxtype_cpp_9 ; "xxtype.cpp"
		push	offset aIdTpname ; "id->tpName"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E807E:				; CODE XREF: .text:004E8068j
		movzx	eax, word ptr [ebx+6]
		add	eax, ebx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E8088:				; CODE XREF: .text:004E7C3Ap
					; .text:004E7CABp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4E80AF
		push	105h		; line
		push	offset aXxtype_cpp_10 ;	"xxtype.cpp"
		push	offset aTp1	; "tp1"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E80AF:				; CODE XREF: .text:004E8096j
		test	esi, esi
		jnz	short loc_4E80CA
		push	106h		; line
		push	offset aXxtype_cpp_11 ;	"xxtype.cpp"
		push	offset aTp2	; "tp2"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E80CA:				; CODE XREF: .text:004E80B1j
		cmp	esi, ebx
		jnz	short loc_4E80D8
		mov	eax, 1
		jmp	loc_4E815E
; ---------------------------------------------------------------------------

loc_4E80D8:				; CODE XREF: .text:004E80CCj
		mov	dx, [ebx+4]
		cmp	dx, [esi+4]
		jnz	short loc_4E80E8
		mov	ecx, [ebx]
		cmp	ecx, [esi]
		jz	short loc_4E80EC

loc_4E80E8:				; CODE XREF: .text:004E80E0j
		xor	eax, eax
		jmp	short loc_4E815E
; ---------------------------------------------------------------------------

loc_4E80EC:				; CODE XREF: .text:004E80E6j
		mov	dx, [ebx+4]
		or	dx, [esi+4]
		test	dl, 80h
		jz	short loc_4E80FD
		xor	eax, eax
		jmp	short loc_4E815E
; ---------------------------------------------------------------------------

loc_4E80FD:				; CODE XREF: .text:004E80F7j
		movzx	edi, word ptr [ebx+6]
		add	edi, ebx
		cmp	word ptr [ebx+6], 0
		jnz	short loc_4E8121
		push	11Eh		; line
		push	offset aXxtype_cpp_12 ;	"xxtype.cpp"
		push	offset aTp1Tpname ; "tp1->tpName"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E8121:				; CODE XREF: .text:004E8108j
		movzx	ebx, word ptr [esi+6]
		add	ebx, esi
		cmp	word ptr [esi+6], 0
		jnz	short loc_4E8145
		push	11Fh		; line
		push	offset aXxtype_cpp_13 ;	"xxtype.cpp"
		push	offset aTp2Tpname ; "tp2->tpName"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E8145:				; CODE XREF: .text:004E812Cj
					; .text:004E8157j
		movsx	eax, byte ptr [edi]
		movsx	edx, byte ptr [ebx]
		inc	ebx
		inc	edi
		cmp	edx, eax
		jz	short loc_4E8155
		xor	eax, eax
		jmp	short loc_4E815E
; ---------------------------------------------------------------------------

loc_4E8155:				; CODE XREF: .text:004E814Fj
		test	eax, eax
		jnz	short loc_4E8145
		mov	eax, 1

loc_4E815E:				; CODE XREF: .text:004E80D3j
					; .text:004E80EAj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; __isCompatTypeID(tpid	*, tpid	*, int,	tpid **)
@__isCompatTypeID$qp4tpidt1ipp4tpid:	; CODE XREF: .text:004F1998p
					; .text:004F19ECp ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]

loc_4E8174:				; CODE XREF: .text:004E81FAj
					; .text:004E822Cj
		cmp	esi, ebx
		jnz	short loc_4E8182
		mov	eax, 1
		jmp	loc_4E826D
; ---------------------------------------------------------------------------

loc_4E8182:				; CODE XREF: .text:004E8176j
		movzx	edi, word ptr [ebx+4]
		movzx	edx, word ptr [esi+4]
		mov	[ebp-4], edx
		mov	ecx, [ebp-4]
		and	ecx, edi
		test	cl, 10h
		jz	short loc_4E81FF
		and	edi, 300h
		and	dword ptr [ebp-4], 300h
		cmp	edi, [ebp-4]
		jz	short loc_4E81EF
		test	eax, eax
		jnz	short loc_4E81EB
		mov	eax, edi
		mov	edx, [ebp-4]
		and	edx, 300h
		and	eax, 300h
		cmp	eax, edx
		jz	short loc_4E81EB
		mov	eax, [ebp-4]
		and	eax, 300h
		not	eax
		and	eax, edi
		test	ah, 3
		jz	short loc_4E81D9
		xor	eax, eax
		jmp	loc_4E826D
; ---------------------------------------------------------------------------

loc_4E81D9:				; CODE XREF: .text:004E81D0j
		or	edi, 300h
		or	dword ptr [ebp-4], 300h
		cmp	edi, [ebp-4]
		jz	short loc_4E81EF

loc_4E81EB:				; CODE XREF: .text:004E81ABj
					; .text:004E81BFj
		xor	eax, eax
		jmp	short loc_4E826D
; ---------------------------------------------------------------------------

loc_4E81EF:				; CODE XREF: .text:004E81A7j
					; .text:004E81E9j
		mov	eax, 1
		mov	ebx, [ebx+8]
		mov	esi, [esi+8]
		jmp	loc_4E8174
; ---------------------------------------------------------------------------

loc_4E81FF:				; CODE XREF: .text:004E8195j
		mov	edx, [ebp-4]
		and	edx, edi
		test	dh, 4
		jz	short loc_4E8231
		mov	ecx, [ebx+0Ch]
		cmp	ecx, [esi+0Ch]
		jz	short loc_4E8221
		test	eax, eax
		jnz	short loc_4E821D
		mov	eax, [ebx+0Ch]
		or	eax, [esi+0Ch]
		jz	short loc_4E8221

loc_4E821D:				; CODE XREF: .text:004E8213j
		xor	eax, eax
		jmp	short loc_4E826D
; ---------------------------------------------------------------------------

loc_4E8221:				; CODE XREF: .text:004E820Fj
					; .text:004E821Bj
		mov	eax, 1
		mov	ebx, [ebx+8]
		mov	esi, [esi+8]
		jmp	loc_4E8174
; ---------------------------------------------------------------------------

loc_4E8231:				; CODE XREF: .text:004E8207j
		push	esi
		push	ebx
		call	loc_4E8088
		add	esp, 8
		test	eax, eax
		jz	short loc_4E8246
		mov	eax, 1
		jmp	short loc_4E826D
; ---------------------------------------------------------------------------

loc_4E8246:				; CODE XREF: .text:004E823Dj
		test	edi, 2
		jz	short loc_4E826B
		test	byte ptr [ebp-4], 1
		jz	short loc_4E826B
		test	byte ptr [ebx+0Ch], 4
		jz	short loc_4E826B
		push	1
		push	dword ptr [ebp+14h]
		push	esi
		push	ebx
		call	unknown_libname_7 ; BCC	v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		add	esp, 10h
		jmp	short loc_4E826D
; ---------------------------------------------------------------------------

loc_4E826B:				; CODE XREF: .text:004E824Cj
					; .text:004E8252j ...
		xor	eax, eax

loc_4E826D:				; CODE XREF: .text:004E817Dj
					; .text:004E81D4j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl unknown_libname_8(int handle, char)
unknown_libname_8:			; CODE XREF: .text:004E85AEp
					; DATA XREF: .text:`__tpdsc__'[std::type_info]o ...
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4E8291
		mov	dword ptr [eax], offset	off_57A1B8
		test	byte ptr [ebp+0Ch], 1
		jz	short loc_4E8291
		push	eax		; handle
		call	__rtl_close
		pop	ecx

loc_4E8291:				; CODE XREF: .text:004E827Cj
					; .text:004E8288j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; std::type_info::operator==(std::type_info const &)const
@std@type_info@$beql$xqrx13std@type_info: ; CODE XREF: .text:004E72A8p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		mov	eax, [ebx+4]
		cmp	eax, [esi+4]
		jnz	short loc_4E82AB
		mov	al, 1
		jmp	short loc_4E8301
; ---------------------------------------------------------------------------

loc_4E82AB:				; CODE XREF: .text:004E82A5j
		cmp	dword ptr [ebx+4], 0
		jz	short loc_4E82BA
		mov	edx, [ebx+4]
		test	byte ptr [edx+4], 80h
		jnz	short loc_4E82C9

loc_4E82BA:				; CODE XREF: .text:004E82AFj
		cmp	dword ptr [esi+4], 0
		jz	short loc_4E82CD
		mov	ecx, [esi+4]
		test	byte ptr [ecx+4], 80h
		jz	short loc_4E82CD

loc_4E82C9:				; CODE XREF: .text:004E82B8j
		xor	eax, eax
		jmp	short loc_4E8301
; ---------------------------------------------------------------------------

loc_4E82CD:				; CODE XREF: .text:004E82BEj
					; .text:004E82C7j
		push	ebx
		call	unknown_libname_9 ; BCC	v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		pop	ecx
		push	eax
		push	esi
		call	unknown_libname_9 ; BCC	v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		pop	ecx
		mov	edx, eax
		pop	eax

loc_4E82DF:				; CODE XREF: .text:004E82F9j
		mov	cl, [eax]
		cmp	cl, [edx]
		jnz	short loc_4E82FB
		test	cl, cl
		jz	short loc_4E82FB
		mov	cl, [eax+1]
		cmp	cl, [edx+1]
		jnz	short loc_4E82FB
		add	eax, 2
		add	edx, 2
		test	cl, cl
		jnz	short loc_4E82DF

loc_4E82FB:				; CODE XREF: .text:004E82E3j
					; .text:004E82E7j ...
		setz	al
		and	eax, 1

loc_4E8301:				; CODE XREF: .text:004E82A9j
					; .text:004E82CBj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __cdecl __GetTypeInfo(void *, void *, void *)
@__GetTypeInfo$qpvt1t1:			; CODE XREF: .text:004E728Dp
					; .text:004E729Fp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+10h]
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4E833D
		push	0
		push	0
		push	0
		push	0
		push	0
		push	0
		push	0
		push	offset byte_61B620
		push	offset @$xt$14std@bad_typeid ; `__tpdsc__'[std::bad_typeid]
		call	loc_4F1FF4
		add	esp, 24h

loc_4E833D:				; CODE XREF: .text:004E831Bj
		test	esi, esi
		jz	short loc_4E8370
		test	byte ptr [ebx+0Ch], 80h
		jz	short loc_4E834B
		xor	edi, edi
		jmp	short loc_4E8372
; ---------------------------------------------------------------------------

loc_4E834B:				; CODE XREF: .text:004E8345j
		sub	esi, [esi-4]
		cmp	dword ptr [esi-4], 0
		jz	short loc_4E836B
		push	29Eh		; line
		push	offset aXxtype_cpp_14 ;	"xxtype.cpp"
		push	offset aUnsigned__farV ; "((unsigned __far *)vtablePtr)[-1] == 0"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E836B:				; CODE XREF: .text:004E8352j
		mov	edi, [esi-0Ch]
		jmp	short loc_4E8372
; ---------------------------------------------------------------------------

loc_4E8370:				; CODE XREF: .text:004E833Fj
		mov	edi, ebx

loc_4E8372:				; CODE XREF: .text:004E8349j
					; .text:004E836Ej
		mov	eax, esi
		add	eax, edi
		sar	eax, 4
		and	eax, 0FFh
		mov	[ebp-4], eax
		mov	edx, [ebp-4]
		mov	ebx, dword_61B628[edx*4]
		test	ebx, ebx
		jz	short loc_4E83A0

loc_4E838F:				; CODE XREF: .text:004E839Ej
		cmp	edi, [ebx+4]
		jnz	short loc_4E8399
		cmp	esi, [ebx+8]
		jz	short loc_4E83A0

loc_4E8399:				; CODE XREF: .text:004E8392j
		mov	ebx, [ebx+0Ch]
		test	ebx, ebx
		jnz	short loc_4E838F

loc_4E83A0:				; CODE XREF: .text:004E838Dj
					; .text:004E8397j
		test	ebx, ebx
		jnz	short loc_4E840D
		push	14h		; size
		call	@$bnew$qui	; operator new(uint)
		pop	ecx
		mov	[ebp-8], eax
		test	eax, eax
		jz	short loc_4E8400
		mov	edx, [ebp-4]
		mov	ecx, dword_61B628[edx*4]
		mov	[ebp-0Ch], ecx
		mov	[ebp-10h], esi
		mov	[ebp-14h], edi
		mov	eax, [ebp-8]
		mov	dword ptr [eax], offset	off_57A1B8
		mov	edx, [ebp-8]
		mov	ecx, [ebp-14h]
		mov	[edx+4], ecx
		mov	eax, [ebp-8]
		mov	dword ptr [eax], offset	off_57A1A8
		mov	edx, [ebp-8]
		mov	ecx, [ebp-10h]
		mov	[edx+8], ecx
		mov	eax, [ebp-8]
		mov	edx, [ebp-0Ch]
		mov	[eax+0Ch], edx
		mov	ecx, [ebp-8]
		xor	eax, eax
		mov	[ecx+10h], eax
		mov	ebx, [ebp-8]
		jmp	short loc_4E8403
; ---------------------------------------------------------------------------

loc_4E8400:				; CODE XREF: .text:004E83B1j
		mov	ebx, [ebp-8]

loc_4E8403:				; CODE XREF: .text:004E83FEj
		mov	eax, [ebp-4]
		mov	dword_61B628[eax*4], ebx

loc_4E840D:				; CODE XREF: .text:004E83A2j
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_9:			; CODE XREF: .text:004E82CEp
					; .text:004E82D6p
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+8]
		mov	ebx, eax
		cmp	dword ptr [ebx+4], 0
		jnz	short loc_4E8471
		cmp	dword ptr [ebx+10h], 0
		jz	short loc_4E8434
		mov	eax, [ebx+10h]
		jmp	short loc_4E847A
; ---------------------------------------------------------------------------

loc_4E8434:				; CODE XREF: .text:004E842Dj
		cmp	dword ptr [ebx+8], 0
		jnz	short loc_4E8441
		mov	eax, offset aNotype_0 ;	"<notype>"
		jmp	short loc_4E847A
; ---------------------------------------------------------------------------

loc_4E8441:				; CODE XREF: .text:004E8438j
		mov	edx, [ebx+8]
		mov	edi, [edx-2Ch]
		movzx	esi, byte ptr [edi]
		lea	eax, [esi+1]
		push	eax		; size
		call	@$bnwa$qui	; operator new[](uint)
		pop	ecx
		mov	[ebx+10h], eax
		push	esi		; n
		inc	edi
		push	edi		; src
		push	dword ptr [ebx+10h] ; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebx+10h]
		mov	byte ptr [eax+esi], 0
		mov	eax, [ebx+10h]
		jmp	short loc_4E847A
; ---------------------------------------------------------------------------

loc_4E8471:				; CODE XREF: .text:004E8427j
		push	dword ptr [eax+4]
		call	loc_4E8050
		pop	ecx

loc_4E847A:				; CODE XREF: .text:004E8432j
					; .text:004E843Fj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; __adjustClassAdr(void	*, tpid	*, tpid	*)
@__adjustClassAdr$qpvp4tpidt2:		; CODE XREF: .text:004F25F3p
					; .text:004F2662p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4E8496
		mov	eax, [ebp+8]
		jmp	short loc_4E84F6
; ---------------------------------------------------------------------------

loc_4E8496:				; CODE XREF: .text:004E848Fj
		movzx	eax, word ptr [ebx+10h]
		add	eax, ebx
		lea	edx, [ebp+8]
		push	edx
		push	esi
		push	0
		push	eax
		call	loc_4E7FAD
		add	esp, 10h
		test	eax, eax
		jz	short loc_4E84B5
		mov	eax, [ebp+8]
		jmp	short loc_4E84F6
; ---------------------------------------------------------------------------

loc_4E84B5:				; CODE XREF: .text:004E84AEj
		movzx	eax, word ptr [ebx+12h]
		add	eax, ebx
		lea	edx, [ebp+8]
		push	edx
		push	esi
		push	1
		push	eax
		call	loc_4E7FAD
		add	esp, 10h
		test	eax, eax
		jz	short loc_4E84D4
		mov	eax, [ebp+8]
		jmp	short loc_4E84F6
; ---------------------------------------------------------------------------

loc_4E84D4:				; CODE XREF: .text:004E84CDj
		mov	edx, offset aCanTAdjustClas ; "Can't adjust class address (no base cla"...
		test	edx, edx
		jz	short loc_4E84F4
		push	57Eh		; line
		push	offset aXxtype_cpp_15 ;	"xxtype.cpp"
		push	offset aCanTAdjustCl_0 ; "!\"Can't adjust class address (no base "...
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E84F4:				; CODE XREF: .text:004E84DBj
		xor	eax, eax

loc_4E84F6:				; CODE XREF: .text:004E8494j
					; .text:004E84B3j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; `__tpdsc__'[std::type_info]
@$xt$13std@type_info dd	8		     ; tpDtt ; DATA XREF: .text:004E8588o
					; .data:0057A1ACo
		dw 3			; tpMask ; BCC v4.x/5.x	& BCB v1.0/v7.0	BDS2006	win32 runtime
		dw 30h			; tpName
		dd 0			; bParent
		dd 73h			; tpcFlags
		dw 40h			; Size
		dw 44h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 1			; DtorCount
		dd 1			; DtorAltCount
		dd offset unknown_libname_8; DtorAddr
		dw 1			; DtorMask
		dw 48h			; DtorMemberOff
		db 'std::type_info',0   ; Name
		align 4
		dd 0
		dd 0
		dd 0			; end of tpid
; `__tpdsc__'[type_info_hash]
@$xt$14type_info_hash dd 14h		      ;	tpDtt ;	DATA XREF: .data:0057A19Co
		dw 3			; tpMask ; std::bad_typeid::~bad_typeid(void)
		dw 30h			; tpName
		dd 0			; bParent
		dd 77h			; tpcFlags
		dw 40h			; Size
		dw 50h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 2			; DtorCount
		dd 2			; DtorAltCount
		dd offset @std@bad_typeid@$bdtr$qv; DtorAddr
		dw 1			; DtorMask
		dw 54h			; DtorMemberOff
		db 'type_info_hash',0   ; Name
		align 4
		dd offset @$xt$13std@type_info ; Parent
		dd 0, 3, 0
		dd 0
		dd 0			; end of tpid
; ---------------------------------------------------------------------------

; _DWORD __cdecl std::bad_typeid::~bad_typeid(std::bad_typeid *this)
@std@bad_typeid@$bdtr$qv:		; DATA XREF: .text:`__tpdsc__'[type_info_hash]o
					; .data:off_57A1A8o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4E85C3
		push	0		; char
		push	ebx		; handle
		call	unknown_libname_8 ; BCC	v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		add	esp, 8
		test	byte ptr [ebp+0Ch], 1
		jz	short loc_4E85C3
		push	ebx		; handle
		call	__rtl_close
		pop	ecx

loc_4E85C3:				; CODE XREF: .text:004E85A9j
					; .text:004E85BAj
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD _InitTermAndUnexPtrs(void)
@_InitTermAndUnexPtrs$qv:		; CODE XREF: .text:004E8781p
		cmp	dword_57A1BC, 0
		jnz	short loc_4E85DB
		mov	dword_57A1BC, offset @std@terminate$qv ; std::terminate(void)

loc_4E85DB:				; CODE XREF: .text:004E85CFj
		cmp	dword_57A1C0, 0
		jnz	short locret_4E85EE
		mov	dword_57A1C0, offset @std@unexpected$qv	; std::unexpected(void)

locret_4E85EE:				; CODE XREF: .text:004E85E2j
		retn
; ---------------------------------------------------------------------------
		align 10h

; _DWORD std::terminate(void)
@std@terminate$qv:			; DATA XREF: .text:004E85D1o
					; .text:004E8603o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		mov	eax, offset stru_57A1E4
		push	ebx
		push	esi
		push	edi
		call	@__InitExceptBlockLDTC
		mov	edx, offset @std@terminate$qv ;	std::terminate(void)
		cmp	edx, dword_57A1BC
		jz	short loc_4E8629
		mov	word ptr [ebp-14h], 8
		call	dword_57A1BC
		mov	word ptr [ebp-14h], 0
		jmp	short loc_4E8629
; ---------------------------------------------------------------------------

loc_4E8624:				; DATA XREF: .data:stru_57A1C4o
		call	loc_4F2215

loc_4E8629:				; CODE XREF: .text:004E860Ej
					; .text:004E8622j
		call	_abort
; ---------------------------------------------------------------------------

loc_4E862E:
		mov	ecx, [ebp-24h]
		mov	fs:0, ecx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; _DWORD std::unexpected(void)
@std@unexpected$qv:			; DATA XREF: .text:004E85E4o
					; .text:004E864Co
		call	qqrv
		and	dword ptr [eax+0Ch], 0FFFFFFFDh
		mov	eax, offset @std@unexpected$qv ; std::unexpected(void)
		cmp	eax, dword_57A1C0
		jz	short loc_4E865F
		call	dword_57A1C0

loc_4E865F:				; CODE XREF: .text:004E8657j
		call	___call_terminate
; ---------------------------------------------------------------------------

nullsub_11:
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E8668:				; DATA XREF: .data:004F603Eo
		push	offset a___cppdebughoo ; "___CPPdebugHook"
		push	0		; lpModuleName
		call	GetModuleHandleA
		push	eax		; hModule
		call	GetProcAddress
		mov	dword_61BA34, eax
		cmp	dword_61BA34, 0
		jnz	short locret_4E8692
		mov	dword_61BA34, offset ___CPPdebugHook

locret_4E8692:				; CODE XREF: .text:004E8686j
		retn
; ---------------------------------------------------------------------------
		align 4

___call_terminate:			; CODE XREF: .text:loc_4E865Fp
					; .text:004E87FAp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		mov	eax, offset dword_57A2C8
		push	ebx
		push	esi
		push	edi
		call	@__InitExceptBlockLDTC
		call	qqrv
		and	dword ptr [eax+0Ch], 0FFFFFFFDh
		mov	edx, dword_61BA34
		cmp	dword ptr [edx], 2
		jnz	short loc_4E86D0
		push	dword_57A1BC
		push	1		; int
		push	4		; Arguments
		call	loc_4F1BB9
		add	esp, 0Ch

loc_4E86D0:				; CODE XREF: .text:004E86BCj
		call	__flushall
		mov	eax, dword_57A1BC
		mov	word ptr [ebp-14h], 8
		call	eax ; dword_57A1BC
		mov	word ptr [ebp-14h], 0
		jmp	short loc_4E86EF
; ---------------------------------------------------------------------------

loc_4E86EA:				; DATA XREF: .data:0057A2B0o
		call	loc_4F2215

loc_4E86EF:				; CODE XREF: .text:004E86E8j
		call	_abort
; ---------------------------------------------------------------------------

loc_4E86F4:
		mov	edx, [ebp-24h]
		mov	fs:0, edx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

___call_unexpected:			; CODE XREF: .text:004F2ADFp
		call	qqrv
		and	dword ptr [eax+0Ch], 0FFFFFFFDh
		mov	eax, dword_61BA34
		cmp	dword ptr [eax], 2
		jnz	short loc_4E8730
		push	dword_57A1C0
		push	1		; int
		push	5		; Arguments
		call	loc_4F1BB9
		add	esp, 0Ch

loc_4E8730:				; CODE XREF: .text:004E871Cj
		mov	eax, dword_57A1C0
		call	eax ; dword_57A1C0
		call	_abort
; ---------------------------------------------------------------------------

nullsub_10:
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl _ExceptInit(void *src)
__ExceptInit:				; CODE XREF: .text:0040103Bp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		setnz	al
		and	eax, 1
		test	ebx, ebx
		jnz	short loc_4E8767
		test	ebx, ebx
		jnz	short loc_4E8767
		lea	edx, [ebp-8]
		push	edx
		call	__GetExceptDLLinfo_0
		pop	ecx
		mov	ebx, [ebp-4]

loc_4E8767:				; CODE XREF: .text:004E8754j
					; .text:004E8758j
		push	9Ch		; n
		push	ebx		; src
		call	qqrv
		add	eax, 8
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		call	@_InitTermAndUnexPtrs$qv ; _InitTermAndUnexPtrs(void)
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__GetExceptDLLinfo_0:			; CODE XREF: .text:__GetExceptDLLinfoj
					; .text:004E875Ep
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		call	qqrv
		add	eax, 24h
		mov	dword_57A20C, eax
		mov	dword ptr [ebx], 82727349h
		mov	dword ptr [ebx+4], offset dword_57A1F8
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_10:			; DATA XREF: .text:__unsetuserhandlero
					; .text:__init_excepto	...
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4E87C0:				; DATA XREF: .text:004E88BAo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		cmp	dword ptr [ebx], 0EEDFAE6h
		jnz	short loc_4E87E1
		xor	eax, eax
		jmp	loc_4E88A6
; ---------------------------------------------------------------------------

loc_4E87E1:				; CODE XREF: .text:004E87D8j
		mov	eax, [ebx]
		cmp	eax, 0EEFFACEh
		jz	short loc_4E87F1
		cmp	eax, 0EEDFACEh
		jnz	short loc_4E87FF

loc_4E87F1:				; CODE XREF: .text:004E87E8j
		mov	eax, edi
		mov	edx, ebx
		call	___doGlobalUnwind
		call	___call_terminate
; ---------------------------------------------------------------------------

loc_4E87FF:				; CODE XREF: .text:004E87EFj
		cmp	dword ptr [ebx], 0C00000FDh
		jnz	short loc_4E881B
		cmp	dword_57A2DC, 0
		jz	short loc_4E881B
		push	offset aStackOverflow ;	"Stack Overflow!"
		call	__ErrorExit
; ---------------------------------------------------------------------------
		pop	ecx

loc_4E881B:				; CODE XREF: .text:004E8805j
					; .text:004E880Ej
		cmp	dword_61BA3C, 0
		jz	short loc_4E883C
		mov	edx, [ebp+14h]
		push	edx
		push	esi
		push	edi
		push	ebx
		call	dword_61BA3C
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4E883C
		xor	eax, eax
		jmp	short loc_4E88A6
; ---------------------------------------------------------------------------

loc_4E883C:				; CODE XREF: .text:004E8822j
					; .text:004E8836j
		cmp	dword_61BA38, 0
		jz	short loc_4E885D
		mov	edx, [ebp+14h]
		push	edx
		push	esi
		push	edi
		push	ebx
		call	dword_61BA38
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4E885D
		xor	eax, eax
		jmp	short loc_4E88A6
; ---------------------------------------------------------------------------

loc_4E885D:				; CODE XREF: .text:004E8843j
					; .text:004E8857j
		cmp	dword_61EE94, 0
		jz	short loc_4E8897
		mov	edx, dword_61EE94
		mov	eax, [edx]
		cmp	eax, 1
		jz	short loc_4E8878
		cmp	eax, 2
		jnz	short loc_4E8897

loc_4E8878:				; CODE XREF: .text:004E8871j
		mov	eax, [ebx]
		cmp	eax, 0EEDFACEh
		jb	short loc_4E8888
		cmp	eax, 0EEFFACEh
		jbe	short loc_4E8897

loc_4E8888:				; CODE XREF: .text:004E887Fj
		push	esi
		push	ebx
		push	edi
		push	3		; int
		push	2		; Arguments
		call	loc_4F1BB9
		add	esp, 14h

loc_4E8897:				; CODE XREF: .text:004E8864j
					; .text:004E8876j ...
		mov	[ebp-8], ebx
		mov	[ebp-4], esi
		lea	edx, [ebp-8]
		push	edx		; ExceptionInfo
		call	UnhandledExceptionFilter

loc_4E88A6:				; CODE XREF: .text:004E87DCj
					; .text:004E883Aj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

__setexc:				; CODE XREF: .text:004E8932p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		xor	edx, edx
		mov	[eax], edx
		mov	dword ptr [eax+4], offset loc_4E87C0
		push	eax
		call	__SetExceptionHandler
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__unsetexc:				; CODE XREF: .text:004E891Ep
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax
		call	__UnsetExceptionHandler
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__SetUserHandler:
		push	ebp
		mov	ebp, esp
		mov	eax, dword_61BA3C
		mov	edx, [ebp+8]
		mov	dword_61BA3C, edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

__unsetuserhandler:			; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	dword_61BA3C, offset unknown_libname_10
		retn
; ---------------------------------------------------------------------------
		align 4

__init_except:				; DATA XREF: .data:004F6044o
		mov	dword_61BA38, offset unknown_libname_10	; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	dword_61BA3C, offset unknown_libname_10	; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		retn
; ---------------------------------------------------------------------------
		align 4

__exit_except:				; DATA XREF: .data:004F610Ao
		mov	eax, dword_61BE60
		test	eax, eax
		jz	short locret_4E8924
		push	eax
		call	__unsetexc
		pop	ecx

locret_4E8924:				; CODE XREF: .text:004E891Bj
		retn
; ---------------------------------------------------------------------------
		align 4

__InitDefaultHander:			; CODE XREF: .text:004F0F71p
		mov	eax, dword_61BE60
		test	eax, eax
		jz	short locret_4E8938
		push	eax
		call	__setexc
		pop	ecx

locret_4E8938:				; CODE XREF: .text:004E892Fj
		retn
; ---------------------------------------------------------------------------
		align 4

__SetExceptionHandler:			; CODE XREF: .text:004E88C2p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		mov	ecx, fs:0
		mov	[eax], ecx
		mov	fs:0, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

__UnsetExceptionHandler:		; CODE XREF: .text:004E88D3p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		mov	ecx, fs:0
		cmp	eax, ecx
		jnz	short loc_4E896A
		mov	eax, [eax]
		mov	fs:0, eax

loc_4E8968:				; CODE XREF: .text:004E896Dj
					; .text:004E897Bj
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E896A:				; CODE XREF: .text:004E895Fj
					; .text:004E8975j
		cmp	ecx, 0FFFFFFFFh
		jz	short loc_4E8968
		cmp	[ecx], eax
		jz	short loc_4E8977
		mov	ecx, [ecx]
		jmp	short loc_4E896A
; ---------------------------------------------------------------------------

loc_4E8977:				; CODE XREF: .text:004E8971j
		mov	eax, [eax]
		mov	[ecx], eax
		jmp	short loc_4E8968
; ---------------------------------------------------------------------------

; int __cdecl _UnwindException()
__UnwindException:
		jmp	RtlUnwind
; ---------------------------------------------------------------------------
		align 4

; _DWORD jump(void)
@jump$qv:
		mov	esp, ebx
		mov	ebp, ecx
		jmp	eax
; ---------------------------------------------------------------------------

___doGlobalUnwind:			; CODE XREF: .text:004E87F5p
					; .text:004F20F7p
		push	ebx
		push	esi
		push	edi
		push	0
		push	edx
		push	offset loc_4E899B
		push	eax
		call	RtlUnwind

loc_4E899B:				; DATA XREF: .text:004E8990o
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

; _DWORD invokeHnd(void)
@invokeHnd$qv:				; CODE XREF: .text:004F27D9p
					; .text:004F2E35p
		push	ebp
		mov	ebp, ecx
		call	dword ptr [ebx]
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl __access(LPCSTR lpFileName, char)
___access:				; CODE XREF: .text:j____accessj
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		push	eax		; lpFileName
		call	GetFileAttributesA
		mov	ebx, eax
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_4E89C4
		call	___NTerror
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E89C4:				; CODE XREF: .text:004E89BAj
		test	byte ptr [ebp+0Ch], 2
		jz	short loc_4E89E0
		test	bl, 1
		jz	short loc_4E89E0
		call	___errno
		mov	dword ptr [eax], 5
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E89E0:				; CODE XREF: .text:004E89C8j
					; .text:004E89CDj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

___close:				; CODE XREF: .text:004E94A6p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		xor	esi, esi
		cmp	ebx, _nfile
		jb	short loc_4E8A04
		push	6
		call	___IOerror
		pop	ecx
		jmp	short loc_4E8A59
; ---------------------------------------------------------------------------

loc_4E8A04:				; CODE XREF: .text:004E89F8j
		push	ebx
		call	__lock_handle
		test	byte ptr (_openfd+2)[ebx*4], 1
		pop	ecx
		jz	short loc_4E8A1A
		mov	esi, 1

loc_4E8A1A:				; CODE XREF: .text:004E8A13j
		test	esi, esi
		jnz	short loc_4E8A2E
		mov	eax, hFile[ebx*4]
		push	eax		; hObject
		call	CloseHandle
		dec	eax
		jnz	short loc_4E8A4D

loc_4E8A2E:				; CODE XREF: .text:004E8A1Cj
		xor	edx, edx
		mov	_openfd[ebx*4],	edx
		mov	hFile[ebx*4], 0FFFFFFFFh
		push	ebx
		call	__unlock_handle
		pop	ecx
		xor	eax, eax
		jmp	short loc_4E8A59
; ---------------------------------------------------------------------------

loc_4E8A4D:				; CODE XREF: .text:004E8A2Cj
		push	ebx
		call	__unlock_handle
		pop	ecx
		call	___NTerror

loc_4E8A59:				; CODE XREF: .text:004E8A02j
					; .text:004E8A4Bj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

___eof:					; CODE XREF: .text:004EA1FBp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		cmp	ebx, _nfile
		jb	short loc_4E8A7B
		push	0FFFFFFFAh
		call	___IOerror
		pop	ecx
		jmp	short loc_4E8AF3
; ---------------------------------------------------------------------------

loc_4E8A7B:				; CODE XREF: .text:004E8A6Fj
		push	ebx
		call	__lock_handle
		pop	ecx
		mov	eax, _openfd[ebx*4]
		test	ah, 2
		jz	short loc_4E8A95
		mov	esi, 1
		jmp	short loc_4E8AEA
; ---------------------------------------------------------------------------

loc_4E8A95:				; CODE XREF: .text:004E8A8Cj
		test	ah, 20h
		jz	short loc_4E8A9E
		xor	esi, esi
		jmp	short loc_4E8AEA
; ---------------------------------------------------------------------------

loc_4E8A9E:				; CODE XREF: .text:004E8A98j
		push	1		; int
		push	0		; lDistanceToMove
		push	ebx		; int
		call	___lseek
		add	esp, 0Ch
		mov	esi, eax
		inc	eax
		jnz	short loc_4E8AB5
		or	esi, 0FFFFFFFFh
		jmp	short loc_4E8AEA
; ---------------------------------------------------------------------------

loc_4E8AB5:				; CODE XREF: .text:004E8AAEj
		push	2		; int
		push	0		; lDistanceToMove
		push	ebx		; int
		call	___lseek
		add	esp, 0Ch
		mov	edi, eax
		inc	eax
		jnz	short loc_4E8ACC
		or	esi, 0FFFFFFFFh
		jmp	short loc_4E8AEA
; ---------------------------------------------------------------------------

loc_4E8ACC:				; CODE XREF: .text:004E8AC5j
		push	0		; int
		push	esi		; lDistanceToMove
		push	ebx		; int
		call	___lseek
		add	esp, 0Ch
		inc	eax
		jnz	short loc_4E8AE0
		or	esi, 0FFFFFFFFh
		jmp	short loc_4E8AEA
; ---------------------------------------------------------------------------

loc_4E8AE0:				; CODE XREF: .text:004E8AD9j
		cmp	edi, esi
		setle	al
		and	eax, 1
		mov	esi, eax

loc_4E8AEA:				; CODE XREF: .text:004E8A93j
					; .text:004E8A9Cj ...
		push	ebx
		call	__unlock_handle
		pop	ecx
		mov	eax, esi

loc_4E8AF3:				; CODE XREF: .text:004E8A79j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

___isatty:				; CODE XREF: .text:004E9FC7p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		cmp	ebx, _nfile
		jb	short loc_4E8B0C
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E8B0C:				; CODE XREF: .text:004E8B05j
		mov	edx, hFile[ebx*4]
		push	edx		; hFile
		call	GetFileType
		cmp	eax, 2
		setz	al
		and	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl __isatty_osfhandle(HANDLE	hFile)
___isatty_osfhandle:			; CODE XREF: .text:004E8D72p
					; .text:004E9126p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax		; hFile
		call	GetFileType
		cmp	eax, 2
		setz	al
		and	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl __lseek(int, LONG	lDistanceToMove, int)
___lseek:				; CODE XREF: .text:004E8AA3p
					; .text:004E8ABAp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		cmp	ebx, _nfile
		jb	short loc_4E8B5B
		push	6
		call	___IOerror
		pop	ecx
		jmp	short loc_4E8BBF
; ---------------------------------------------------------------------------

loc_4E8B5B:				; CODE XREF: .text:004E8B4Fj
		mov	eax, [ebp+10h]
		sub	eax, 1
		jb	short loc_4E8B6A
		jz	short loc_4E8B6E
		dec	eax
		jz	short loc_4E8B75
		jmp	short loc_4E8B7C
; ---------------------------------------------------------------------------

loc_4E8B6A:				; CODE XREF: .text:004E8B61j
		xor	edi, edi
		jmp	short loc_4E8B86
; ---------------------------------------------------------------------------

loc_4E8B6E:				; CODE XREF: .text:004E8B63j
		mov	edi, 1
		jmp	short loc_4E8B86
; ---------------------------------------------------------------------------

loc_4E8B75:				; CODE XREF: .text:004E8B66j
		mov	edi, 2
		jmp	short loc_4E8B86
; ---------------------------------------------------------------------------

loc_4E8B7C:				; CODE XREF: .text:004E8B68j
		push	1
		call	___IOerror
		pop	ecx
		jmp	short loc_4E8BBF
; ---------------------------------------------------------------------------

loc_4E8B86:				; CODE XREF: .text:004E8B6Cj
					; .text:004E8B73j ...
		push	ebx
		call	__lock_handle
		pop	ecx
		and	_openfd[ebx*4],	0FFFFFDFFh
		push	edi		; dwMoveMethod
		push	0		; lpDistanceToMoveHigh
		mov	eax, [ebp+0Ch]
		push	eax		; lDistanceToMove
		mov	edx, hFile[ebx*4]
		push	edx		; hFile
		call	SetFilePointer
		mov	esi, eax
		inc	eax
		jnz	short loc_4E8BB6
		call	___NTerror

loc_4E8BB6:				; CODE XREF: .text:004E8BAFj
		push	ebx
		call	__unlock_handle
		pop	ecx
		mov	eax, esi

loc_4E8BBF:				; CODE XREF: .text:004E8B59j
					; .text:004E8B84j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl __open(LPCSTR lpFileName,	char, char)
___open:				; CODE XREF: .text:004E9724p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		call	__lock_all_handles
		test	byte ptr [ebp+0Dh], 0C0h
		jnz	short loc_4E8BE8
		mov	eax, off_57A87C
		mov	edx, [eax]
		and	edx, 0C000h
		or	[ebp+0Ch], edx

loc_4E8BE8:				; CODE XREF: .text:004E8BD6j
		test	byte ptr [ebp+0Dh], 80h
		jnz	short loc_4E8BF5
		or	dword ptr [ebp+0Ch], 4000h

loc_4E8BF5:				; CODE XREF: .text:004E8BECj
		mov	ecx, [ebp+0Ch]
		and	ecx, 700h
		cmp	ecx, 500h
		jg	short loc_4E8C22
		jz	short loc_4E8C34
		sub	ecx, 100h
		jz	short loc_4E8C42
		sub	ecx, 100h
		jz	short loc_4E8C49
		sub	ecx, 100h
		jz	short loc_4E8C3B
		jmp	short loc_4E8C50
; ---------------------------------------------------------------------------

loc_4E8C22:				; CODE XREF: .text:004E8C04j
		sub	ecx, 600h
		jz	short loc_4E8C49
		sub	ecx, 100h
		jz	short loc_4E8C34
		jmp	short loc_4E8C50
; ---------------------------------------------------------------------------

loc_4E8C34:				; CODE XREF: .text:004E8C06j
					; .text:004E8C30j
		mov	edi, 1
		jmp	short loc_4E8C55
; ---------------------------------------------------------------------------

loc_4E8C3B:				; CODE XREF: .text:004E8C1Ej
		mov	edi, 2
		jmp	short loc_4E8C55
; ---------------------------------------------------------------------------

loc_4E8C42:				; CODE XREF: .text:004E8C0Ej
		mov	edi, 4
		jmp	short loc_4E8C55
; ---------------------------------------------------------------------------

loc_4E8C49:				; CODE XREF: .text:004E8C16j
					; .text:004E8C28j
		mov	edi, 5
		jmp	short loc_4E8C55
; ---------------------------------------------------------------------------

loc_4E8C50:				; CODE XREF: .text:004E8C20j
					; .text:004E8C32j
		mov	edi, 3

loc_4E8C55:				; CODE XREF: .text:004E8C39j
					; .text:004E8C40j ...
		test	byte ptr [ebp+0Dh], 1
		jz	short loc_4E8C7C
		lea	eax, [ebp+10h]
		add	eax, 4
		mov	eax, [eax-4]
		and	eax, dword_57A2F4
		test	al, 80h
		jz	short loc_4E8C75
		mov	ebx, 80h
		jmp	short loc_4E8C8E
; ---------------------------------------------------------------------------

loc_4E8C75:				; CODE XREF: .text:004E8C6Cj
		mov	ebx, 1
		jmp	short loc_4E8C8E
; ---------------------------------------------------------------------------

loc_4E8C7C:				; CODE XREF: .text:004E8C59j
		mov	eax, [ebp+8]
		push	eax		; lpFileName
		call	GetFileAttributesA
		mov	ebx, eax
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_4E8C8E
		xor	ebx, ebx

loc_4E8C8E:				; CODE XREF: .text:004E8C73j
					; .text:004E8C7Aj ...
		mov	eax, [ebp+0Ch]
		and	eax, 3
		sub	eax, 1
		jb	short loc_4E8CA0
		jz	short loc_4E8CA9
		dec	eax
		jz	short loc_4E8CB2
		jmp	short loc_4E8CBB
; ---------------------------------------------------------------------------

loc_4E8CA0:				; CODE XREF: .text:004E8C97j
		mov	dword ptr [ebp-4], 80000000h
		jmp	short loc_4E8CCA
; ---------------------------------------------------------------------------

loc_4E8CA9:				; CODE XREF: .text:004E8C99j
		mov	dword ptr [ebp-4], 40000000h
		jmp	short loc_4E8CCA
; ---------------------------------------------------------------------------

loc_4E8CB2:				; CODE XREF: .text:004E8C9Cj
		mov	dword ptr [ebp-4], 0C0000000h
		jmp	short loc_4E8CCA
; ---------------------------------------------------------------------------

loc_4E8CBB:				; CODE XREF: .text:004E8C9Ej
		push	1
		call	___IOerror
		pop	ecx
		mov	ebx, eax
		jmp	loc_4E8DB6
; ---------------------------------------------------------------------------

loc_4E8CCA:				; CODE XREF: .text:004E8CA7j
					; .text:004E8CB0j ...
		mov	eax, [ebp+0Ch]
		and	eax, 70h
		sub	eax, 10h
		jz	short loc_4E8CE6
		sub	eax, 10h
		jz	short loc_4E8CED
		sub	eax, 10h
		jz	short loc_4E8CF6
		sub	eax, 10h
		jz	short loc_4E8CFF
		jmp	short loc_4E8CFF
; ---------------------------------------------------------------------------

loc_4E8CE6:				; CODE XREF: .text:004E8CD3j
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	short loc_4E8D06
; ---------------------------------------------------------------------------

loc_4E8CED:				; CODE XREF: .text:004E8CD8j
		mov	dword ptr [ebp-8], 1
		jmp	short loc_4E8D06
; ---------------------------------------------------------------------------

loc_4E8CF6:				; CODE XREF: .text:004E8CDDj
		mov	dword ptr [ebp-8], 2
		jmp	short loc_4E8D06
; ---------------------------------------------------------------------------

loc_4E8CFF:				; CODE XREF: .text:004E8CE2j
					; .text:004E8CE4j
		mov	dword ptr [ebp-8], 3

loc_4E8D06:				; CODE XREF: .text:004E8CEBj
					; .text:004E8CF4j ...
		mov	dword ptr [ebp-14h], 0Ch
		xor	ecx, ecx
		mov	[ebp-10h], ecx
		lea	ecx, [ebp-14h]
		mov	eax, [ebp+0Ch]
		and	eax, 80h
		cmp	eax, 1
		sbb	edx, edx
		neg	edx
		mov	[ebp-0Ch], edx
		push	0		; hTemplateFile
		push	ebx		; dwFlagsAndAttributes
		push	edi		; dwCreationDisposition
		push	ecx		; lpSecurityAttributes
		mov	eax, [ebp-8]
		push	eax		; dwShareMode
		mov	edx, [ebp-4]
		push	edx		; dwDesiredAccess
		mov	ecx, [ebp+8]
		push	ecx		; lpFileName
		call	CreateFileA
		mov	esi, eax
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_4E8D6F
		call	GetLastError
		mov	ebx, eax
		and	ebx, 0FFFFh
		cmp	ebx, 6Eh
		jnz	short loc_4E8D64
		test	byte ptr [ebp+0Dh], 1
		mov	ebx, 50h
		jnz	short loc_4E8D64
		add	ebx, 0FFFFFFB2h

loc_4E8D64:				; CODE XREF: .text:004E8D54j
					; .text:004E8D5Fj
		push	ebx
		call	___IOerror
		pop	ecx
		mov	ebx, eax
		jmp	short loc_4E8DB6
; ---------------------------------------------------------------------------

loc_4E8D6F:				; CODE XREF: .text:004E8D42j
		mov	edi, esi
		push	edi		; hFile
		call	___isatty_osfhandle
		pop	ecx
		test	eax, eax
		jz	short loc_4E8D83
		or	dword ptr [ebp+0Ch], 2000h

loc_4E8D83:				; CODE XREF: .text:004E8D7Aj
		test	bl, 1
		jnz	short loc_4E8D8F
		or	dword ptr [ebp+0Ch], 100h

loc_4E8D8F:				; CODE XREF: .text:004E8D86j
		and	dword ptr [ebp+0Ch], 0FFFFF8FFh
		mov	eax, [ebp+0Ch]
		push	eax
		push	edi
		call	__get_handle
		add	esp, 8
		mov	ebx, eax
		inc	eax
		jnz	short loc_4E8DB6
		push	4
		call	___IOerror
		pop	ecx
		push	esi		; hObject
		call	CloseHandle

loc_4E8DB6:				; CODE XREF: .text:004E8CC5j
					; .text:004E8D6Dj ...
		call	__unlock_all_handles
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4E8DC4(void *s, int)
loc_4E8DC4:				; CODE XREF: .text:004E8F34p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+8]
		add	eax, [ebp+0Ch]
		mov	[ebp-4], eax
		mov	edi, [ebp+8]
		mov	ebx, edi

loc_4E8DDB:				; CODE XREF: .text:004E8E26j
		mov	eax, [ebp-4]
		sub	eax, ebx
		push	eax		; n
		push	0Dh		; c
		push	ebx		; s
		call	_memchr
		add	esp, 0Ch
		mov	esi, eax
		test	eax, eax
		jnz	short loc_4E8DF5
		mov	esi, [ebp-4]

loc_4E8DF5:				; CODE XREF: .text:004E8DF0j
		mov	eax, esi
		sub	eax, ebx
		cmp	edi, ebx
		mov	[ebp-8], eax
		jz	short loc_4E8E0E
		mov	edx, [ebp-8]
		push	edx		; n
		push	ebx		; src
		push	edi		; dest
		call	_memcpy
		add	esp, 0Ch

loc_4E8E0E:				; CODE XREF: .text:004E8DFEj
		mov	ecx, [ebp-4]
		dec	ecx
		cmp	esi, ecx
		jb	short loc_4E8E20
		mov	eax, edi
		sub	eax, [ebp+8]
		add	eax, [ebp-8]
		jmp	short loc_4E8E28
; ---------------------------------------------------------------------------

loc_4E8E20:				; CODE XREF: .text:004E8E14j
		lea	ebx, [esi+1]
		add	edi, [ebp-8]
		jmp	short loc_4E8DDB
; ---------------------------------------------------------------------------

loc_4E8E28:				; CODE XREF: .text:004E8E1Ej
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl __read(int handle, void *s, unsigned int len)
___read:				; CODE XREF: .text:004E935Bp
					; .text:004E997Cp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+0Ch]
		mov	eax, [ebp+8]
		cmp	eax, _nfile
		jb	short loc_4E8E54
		push	0FFFFFFFAh
		call	___IOerror
		pop	ecx
		jmp	loc_4E8F6F
; ---------------------------------------------------------------------------

loc_4E8E54:				; CODE XREF: .text:004E8E45j
		mov	edx, [ebp+10h]
		inc	edx
		cmp	edx, 2
		jnb	short loc_4E8E64
		xor	eax, eax
		jmp	loc_4E8F6F
; ---------------------------------------------------------------------------

loc_4E8E64:				; CODE XREF: .text:004E8E5Bj
		mov	edx, [ebp+8]
		push	edx
		call	__lock_handle
		pop	ecx
		mov	ecx, [ebp+8]
		test	byte ptr (_openfd+1)[ecx*4], 40h
		jnz	short loc_4E8E93
		mov	eax, [ebp+10h]
		push	eax		; len
		push	ebx		; buf
		mov	edx, [ebp+8]
		push	edx		; handle
		call	__rtl_read
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4E8F63
; ---------------------------------------------------------------------------

loc_4E8E93:				; CODE XREF: .text:004E8E79j
		mov	ecx, [ebp+8]
		test	byte ptr (_openfd+1)[ecx*4], 2
		jz	short loc_4E8EA7
		xor	ebx, ebx
		jmp	loc_4E8F63
; ---------------------------------------------------------------------------

loc_4E8EA7:				; CODE XREF: .text:004E8E9Ej
		mov	eax, [ebp+8]
		xor	edi, edi
		mov	esi, ebx
		lea	edx, _openfd[eax*4]
		mov	[ebp-0Ch], edx
		cmp	edi, [ebp+10h]
		jnb	loc_4E8F61

loc_4E8EC1:				; CODE XREF: .text:004E8F5Bj
		mov	ecx, [ebp+10h]
		sub	ecx, edi
		mov	[ebp-4], ecx
		mov	eax, [ebp-4]
		push	eax		; len
		push	esi		; buf
		mov	edx, [ebp+8]
		push	edx		; handle
		call	__rtl_read
		add	esp, 0Ch
		mov	ebx, eax
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_4E8EE6
		or	ebx, 0FFFFFFFFh
		jmp	short loc_4E8F63
; ---------------------------------------------------------------------------

loc_4E8EE6:				; CODE XREF: .text:004E8EDFj
		test	ebx, ebx
		jz	short loc_4E8F61
		push	ebx		; n
		push	1Ah		; c
		push	esi		; s
		call	_memchr
		add	esp, 0Ch
		mov	[ebp-8], eax
		test	eax, eax
		jz	short loc_4E8F0F
		mov	edx, [ebp-0Ch]
		or	dword ptr [edx], 200h
		mov	ebx, [ebp-8]
		sub	ebx, esi
		test	ebx, ebx
		jz	short loc_4E8F61

loc_4E8F0F:				; CODE XREF: .text:004E8EFBj
		cmp	byte ptr [esi+ebx-1], 0Dh
		jnz	short loc_4E8F32
		push	1		; len
		mov	eax, ebx
		dec	eax
		add	eax, esi
		push	eax		; buf
		mov	edx, [ebp+8]
		push	edx		; handle
		call	__rtl_read
		add	esp, 0Ch
		inc	eax
		jnz	short loc_4E8F32
		or	ebx, 0FFFFFFFFh
		jmp	short loc_4E8F63
; ---------------------------------------------------------------------------

loc_4E8F32:				; CODE XREF: .text:004E8F14j
					; .text:004E8F2Bj
		push	ebx		; int
		push	esi		; s
		call	loc_4E8DC4
		add	esp, 8
		add	edi, eax
		cmp	ebx, [ebp-4]
		jnb	short loc_4E8F4C
		mov	edx, [ebp-0Ch]
		test	byte ptr [edx+1], 20h
		jnz	short loc_4E8F61

loc_4E8F4C:				; CODE XREF: .text:004E8F41j
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4E8F61
		test	eax, eax
		jnz	short loc_4E8F61
		add	esi, eax
		cmp	edi, [ebp+10h]
		jb	loc_4E8EC1

loc_4E8F61:				; CODE XREF: .text:004E8EBBj
					; .text:004E8EE8j ...
		mov	ebx, edi

loc_4E8F63:				; CODE XREF: .text:004E8E8Ej
					; .text:004E8EA2j ...
		mov	eax, [ebp+8]
		push	eax
		call	__unlock_handle
		pop	ecx
		mov	eax, ebx

loc_4E8F6F:				; CODE XREF: .text:004E8E4Fj
					; .text:004E8E5Fj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl __wopen(LPCWSTR lpFileName, char,	char)
___wopen:				; CODE XREF: .text:004EC894p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		call	__lock_all_handles
		test	byte ptr [ebp+0Dh], 0C0h
		jnz	short loc_4E8F9C
		mov	eax, off_57A87C
		mov	edx, [eax]
		and	edx, 0C000h
		or	[ebp+0Ch], edx

loc_4E8F9C:				; CODE XREF: .text:004E8F8Aj
		test	byte ptr [ebp+0Dh], 80h
		jnz	short loc_4E8FA9
		or	dword ptr [ebp+0Ch], 4000h

loc_4E8FA9:				; CODE XREF: .text:004E8FA0j
		mov	ecx, [ebp+0Ch]
		and	ecx, 700h
		cmp	ecx, 500h
		jg	short loc_4E8FD6
		jz	short loc_4E8FE8
		sub	ecx, 100h
		jz	short loc_4E8FF6
		sub	ecx, 100h
		jz	short loc_4E8FFD
		sub	ecx, 100h
		jz	short loc_4E8FEF
		jmp	short loc_4E9004
; ---------------------------------------------------------------------------

loc_4E8FD6:				; CODE XREF: .text:004E8FB8j
		sub	ecx, 600h
		jz	short loc_4E8FFD
		sub	ecx, 100h
		jz	short loc_4E8FE8
		jmp	short loc_4E9004
; ---------------------------------------------------------------------------

loc_4E8FE8:				; CODE XREF: .text:004E8FBAj
					; .text:004E8FE4j
		mov	edi, 1
		jmp	short loc_4E9009
; ---------------------------------------------------------------------------

loc_4E8FEF:				; CODE XREF: .text:004E8FD2j
		mov	edi, 2
		jmp	short loc_4E9009
; ---------------------------------------------------------------------------

loc_4E8FF6:				; CODE XREF: .text:004E8FC2j
		mov	edi, 4
		jmp	short loc_4E9009
; ---------------------------------------------------------------------------

loc_4E8FFD:				; CODE XREF: .text:004E8FCAj
					; .text:004E8FDCj
		mov	edi, 5
		jmp	short loc_4E9009
; ---------------------------------------------------------------------------

loc_4E9004:				; CODE XREF: .text:004E8FD4j
					; .text:004E8FE6j
		mov	edi, 3

loc_4E9009:				; CODE XREF: .text:004E8FEDj
					; .text:004E8FF4j ...
		test	byte ptr [ebp+0Dh], 1
		jz	short loc_4E9030
		lea	eax, [ebp+10h]
		add	eax, 4
		mov	eax, [eax-4]
		and	eax, dword_57A2F4
		test	al, 80h
		jz	short loc_4E9029
		mov	ebx, 80h
		jmp	short loc_4E9042
; ---------------------------------------------------------------------------

loc_4E9029:				; CODE XREF: .text:004E9020j
		mov	ebx, 1
		jmp	short loc_4E9042
; ---------------------------------------------------------------------------

loc_4E9030:				; CODE XREF: .text:004E900Dj
		mov	eax, [ebp+8]
		push	eax		; lpFileName
		call	GetFileAttributesW
		mov	ebx, eax
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_4E9042
		xor	ebx, ebx

loc_4E9042:				; CODE XREF: .text:004E9027j
					; .text:004E902Ej ...
		mov	eax, [ebp+0Ch]
		and	eax, 3
		sub	eax, 1
		jb	short loc_4E9054
		jz	short loc_4E905D
		dec	eax
		jz	short loc_4E9066
		jmp	short loc_4E906F
; ---------------------------------------------------------------------------

loc_4E9054:				; CODE XREF: .text:004E904Bj
		mov	dword ptr [ebp-4], 80000000h
		jmp	short loc_4E907E
; ---------------------------------------------------------------------------

loc_4E905D:				; CODE XREF: .text:004E904Dj
		mov	dword ptr [ebp-4], 40000000h
		jmp	short loc_4E907E
; ---------------------------------------------------------------------------

loc_4E9066:				; CODE XREF: .text:004E9050j
		mov	dword ptr [ebp-4], 0C0000000h
		jmp	short loc_4E907E
; ---------------------------------------------------------------------------

loc_4E906F:				; CODE XREF: .text:004E9052j
		push	1
		call	___IOerror
		pop	ecx
		mov	ebx, eax
		jmp	loc_4E916A
; ---------------------------------------------------------------------------

loc_4E907E:				; CODE XREF: .text:004E905Bj
					; .text:004E9064j ...
		mov	eax, [ebp+0Ch]
		and	eax, 70h
		sub	eax, 10h
		jz	short loc_4E909A
		sub	eax, 10h
		jz	short loc_4E90A1
		sub	eax, 10h
		jz	short loc_4E90AA
		sub	eax, 10h
		jz	short loc_4E90B3
		jmp	short loc_4E90B3
; ---------------------------------------------------------------------------

loc_4E909A:				; CODE XREF: .text:004E9087j
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	short loc_4E90BA
; ---------------------------------------------------------------------------

loc_4E90A1:				; CODE XREF: .text:004E908Cj
		mov	dword ptr [ebp-8], 1
		jmp	short loc_4E90BA
; ---------------------------------------------------------------------------

loc_4E90AA:				; CODE XREF: .text:004E9091j
		mov	dword ptr [ebp-8], 2
		jmp	short loc_4E90BA
; ---------------------------------------------------------------------------

loc_4E90B3:				; CODE XREF: .text:004E9096j
					; .text:004E9098j
		mov	dword ptr [ebp-8], 3

loc_4E90BA:				; CODE XREF: .text:004E909Fj
					; .text:004E90A8j ...
		mov	dword ptr [ebp-14h], 0Ch
		xor	ecx, ecx
		mov	[ebp-10h], ecx
		lea	ecx, [ebp-14h]
		mov	eax, [ebp+0Ch]
		and	eax, 80h
		cmp	eax, 1
		sbb	edx, edx
		neg	edx
		mov	[ebp-0Ch], edx
		push	0		; hTemplateFile
		push	ebx		; dwFlagsAndAttributes
		push	edi		; dwCreationDisposition
		push	ecx		; lpSecurityAttributes
		mov	eax, [ebp-8]
		push	eax		; dwShareMode
		mov	edx, [ebp-4]
		push	edx		; dwDesiredAccess
		mov	ecx, [ebp+8]
		push	ecx		; lpFileName
		call	CreateFileW
		mov	esi, eax
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_4E9123
		call	GetLastError
		mov	ebx, eax
		and	ebx, 0FFFFh
		cmp	ebx, 6Eh
		jnz	short loc_4E9118
		test	byte ptr [ebp+0Dh], 1
		mov	ebx, 50h
		jnz	short loc_4E9118
		add	ebx, 0FFFFFFB2h

loc_4E9118:				; CODE XREF: .text:004E9108j
					; .text:004E9113j
		push	ebx
		call	___IOerror
		pop	ecx
		mov	ebx, eax
		jmp	short loc_4E916A
; ---------------------------------------------------------------------------

loc_4E9123:				; CODE XREF: .text:004E90F6j
		mov	edi, esi
		push	edi		; hFile
		call	___isatty_osfhandle
		pop	ecx
		test	eax, eax
		jz	short loc_4E9137
		or	dword ptr [ebp+0Ch], 2000h

loc_4E9137:				; CODE XREF: .text:004E912Ej
		test	bl, 1
		jnz	short loc_4E9143
		or	dword ptr [ebp+0Ch], 100h

loc_4E9143:				; CODE XREF: .text:004E913Aj
		and	dword ptr [ebp+0Ch], 0FFFFF8FFh
		mov	eax, [ebp+0Ch]
		push	eax
		push	edi
		call	__get_handle
		add	esp, 8
		mov	ebx, eax
		inc	eax
		jnz	short loc_4E916A
		push	4
		call	___IOerror
		pop	ecx
		push	esi		; hObject
		call	CloseHandle

loc_4E916A:				; CODE XREF: .text:004E9079j
					; .text:004E9121j ...
		call	__unlock_all_handles
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl __write(int handle, void *buf, unsigned int len)
___write:				; CODE XREF: .text:004E93BFp
					; .text:004E9558p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF8h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	eax, [ebp+8]
		cmp	eax, _nfile
		jb	short loc_4E919F
		push	0FFFFFFFAh
		call	___IOerror
		pop	ecx
		jmp	loc_4E92A3
; ---------------------------------------------------------------------------

loc_4E919F:				; CODE XREF: .text:004E9190j
		mov	edx, [ebp+10h]
		inc	edx
		cmp	edx, 2
		jnb	short loc_4E91AF
		xor	eax, eax
		jmp	loc_4E92A3
; ---------------------------------------------------------------------------

loc_4E91AF:				; CODE XREF: .text:004E91A6j
		mov	edx, [ebp+8]
		push	edx
		call	__lock_handle
		pop	ecx
		mov	ecx, [ebp+8]
		test	byte ptr (_openfd+1)[ecx*4], 8
		jz	short loc_4E91D6
		push	2		; int
		push	0		; lDistanceToMove
		mov	eax, [ebp+8]
		push	eax		; int
		call	___lseek
		add	esp, 0Ch

loc_4E91D6:				; CODE XREF: .text:004E91C4j
		mov	edx, [ebp+8]
		test	byte ptr (_openfd+1)[edx*4], 40h
		jnz	short loc_4E91FB
		mov	ecx, [ebp+10h]
		push	ecx		; len
		push	edi		; buf
		mov	eax, [ebp+8]
		push	eax		; handle
		call	__rtl_write
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4E9297
; ---------------------------------------------------------------------------

loc_4E91FB:				; CODE XREF: .text:004E91E1j
		mov	esi, edi
		xor	eax, eax
		mov	[ebp-4], eax
		xor	edx, edx
		mov	[ebp-8], edx
		jmp	short loc_4E9284
; ---------------------------------------------------------------------------

loc_4E9209:				; CODE XREF: .text:004E928Bj
		lea	ebx, [ebp-208h]
		jmp	short loc_4E9228
; ---------------------------------------------------------------------------

loc_4E9211:				; CODE XREF: .text:004E9241j
		mov	al, [esi]
		inc	esi
		cmp	al, 0Ah
		jnz	short loc_4E9225
		inc	dword ptr [ebp-4]
		mov	byte ptr [ebx],	0Dh
		inc	ebx
		mov	byte ptr [ebx],	0Ah
		inc	ebx
		jmp	short loc_4E9228
; ---------------------------------------------------------------------------

loc_4E9225:				; CODE XREF: .text:004E9216j
		mov	[ebx], al
		inc	ebx

loc_4E9228:				; CODE XREF: .text:004E920Fj
					; .text:004E9223j
		lea	edx, [ebp-208h]
		mov	ecx, ebx
		sub	ecx, edx
		cmp	ecx, 1FFh
		jge	short loc_4E9243
		mov	eax, esi
		sub	eax, edi
		cmp	eax, [ebp+10h]
		jb	short loc_4E9211

loc_4E9243:				; CODE XREF: .text:004E9238j
		lea	edx, [ebp-208h]
		mov	ecx, ebx
		sub	ecx, edx
		lea	eax, [ebp-208h]
		push	ecx		; len
		push	eax		; buf
		mov	edx, [ebp+8]
		push	edx		; handle
		call	__rtl_write
		add	esp, 0Ch
		lea	ecx, [ebp-208h]
		sub	ebx, ecx
		cmp	eax, ebx
		jz	short loc_4E9281
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_4E9277
		or	ebx, 0FFFFFFFFh
		jmp	short loc_4E9297
; ---------------------------------------------------------------------------

loc_4E9277:				; CODE XREF: .text:004E9270j
		mov	ebx, [ebp-8]
		sub	ebx, [ebp-4]
		add	ebx, eax
		jmp	short loc_4E9297
; ---------------------------------------------------------------------------

loc_4E9281:				; CODE XREF: .text:004E926Bj
		add	[ebp-8], eax

loc_4E9284:				; CODE XREF: .text:004E9207j
		mov	eax, esi
		sub	eax, edi
		cmp	eax, [ebp+10h]
		jb	loc_4E9209
		mov	ebx, [ebp-8]
		sub	ebx, [ebp-4]

loc_4E9297:				; CODE XREF: .text:004E91F6j
					; .text:004E9275j ...
		mov	eax, [ebp+8]
		push	eax
		call	__unlock_handle
		pop	ecx
		mov	eax, ebx

loc_4E92A3:				; CODE XREF: .text:004E919Aj
					; .text:004E91AAj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_11:			; DATA XREF: .data:off_57A2F0o
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4E92B9
		mov	byte ptr [eax],	0

loc_4E92B9:				; CODE XREF: .text:004E92B4j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int _flushall(void)
__flushall:				; CODE XREF: .text:loc_4E86D0p
		push	ebx
		push	esi
		push	edi
		call	_lock_all_streams
		xor	edi, edi
		mov	esi, _nfile
		mov	ebx, offset _streams
		jmp	short loc_4E92EE
; ---------------------------------------------------------------------------

loc_4E92D7:				; CODE XREF: .text:004E92F5j
		test	byte ptr [ebx+12h], 3
		jz	short loc_4E92EB
		cmp	dword ptr [ebx+8], 0
		jz	short loc_4E92EB
		push	ebx		; stream
		call	_fflush
		pop	ecx
		inc	edi

loc_4E92EB:				; CODE XREF: .text:004E92DBj
					; .text:004E92E1j
		add	ebx, 18h

loc_4E92EE:				; CODE XREF: .text:004E92D5j
		mov	eax, esi
		add	esi, 0FFFFFFFFh
		test	eax, eax
		jnz	short loc_4E92D7
		call	_unlock_all_streams
		mov	eax, edi
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _rtl_read(int handle, void *buf, unsigned	int len)
__rtl_read:				; CODE XREF: .text:004E8E84p
					; .text:004E8ED2p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		mov	eax, [ebp+8]
		cmp	eax, _nfile
		jb	short loc_4E931E
		push	6
		call	___IOerror
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E931E:				; CODE XREF: .text:004E9311j
		push	0		; lpOverlapped
		lea	edx, [ebp-4]
		push	edx		; lpNumberOfBytesRead
		mov	ecx, [ebp+10h]
		push	ecx		; nNumberOfBytesToRead
		mov	edx, [ebp+0Ch]
		push	edx		; lpBuffer
		mov	eax, hFile[eax*4]
		push	eax		; hFile
		call	ReadFile
		dec	eax
		jz	short loc_4E9344
		call	___NTerror
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E9344:				; CODE XREF: .text:004E933Aj
		mov	eax, [ebp-4]
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _read(int	handle,	void *buf, unsigned int	len)
__read:
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		push	eax		; len
		mov	edx, [ebp+0Ch]
		push	edx		; s
		mov	ecx, [ebp+8]
		push	ecx		; handle
		call	___read
		add	esp, 0Ch
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _rtl_write(int handle, const void	*buf, unsigned int len)
__rtl_write:				; CODE XREF: .text:004E91ECp
					; .text:004E9259p
		push	ebp
		mov	ebp, esp
		push	ecx
		mov	eax, [ebp+8]
		cmp	eax, _nfile
		jb	short loc_4E9382
		push	6
		call	___IOerror
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E9382:				; CODE XREF: .text:004E9375j
		push	0		; lpOverlapped
		lea	edx, [ebp-4]
		push	edx		; lpNumberOfBytesWritten
		mov	ecx, [ebp+10h]
		push	ecx		; nNumberOfBytesToWrite
		mov	edx, [ebp+0Ch]
		push	edx		; lpBuffer
		mov	eax, hFile[eax*4]
		push	eax		; hFile
		call	WriteFile
		dec	eax
		jz	short loc_4E93A8
		call	___NTerror
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E93A8:				; CODE XREF: .text:004E939Ej
		mov	eax, [ebp-4]
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl _write(int handle, const void *buf, unsigned int len)
__write:
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		push	eax		; len
		mov	edx, [ebp+0Ch]
		push	edx		; buf
		mov	ecx, [ebp+8]
		push	ecx		; handle
		call	___write
		add	esp, 0Ch
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl j____access(LPCSTR lpFileName, char)
j____access:				; CODE XREF: .text:004EA3CBp
		jmp	___access
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _allocbuf(int, int, int, _size_t size)
__allocbuf:				; CODE XREF: .text:004EAF0Bp
					; .text:004EB11Dp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		mov	edi, [ebp+14h]
		mov	esi, [ebp+0Ch]
		test	byte ptr [ebx+12h], 4
		jz	short loc_4E93F3
		mov	eax, [ebx+4]
		push	eax		; block
		call	_free
		pop	ecx

loc_4E93F3:				; CODE XREF: .text:004E93E7j
		and	word ptr [ebx+12h], 0FFF3h
		xor	edx, edx
		mov	[ebx+0Ch], edx
		lea	ecx, [ebx+14h]
		mov	[ebx+4], ecx
		mov	[ebx], ecx
		cmp	dword ptr [ebp+10h], 2
		jz	short loc_4E944A
		test	edi, edi
		jbe	short loc_4E944A
		mov	off_57BA8C, offset __xfflush
		test	esi, esi
		jnz	short loc_4E9437
		push	edi		; size
		call	_malloc
		pop	ecx
		mov	esi, eax
		test	eax, eax
		jz	short loc_4E9432
		or	word ptr [ebx+12h], 4
		jmp	short loc_4E9437
; ---------------------------------------------------------------------------

loc_4E9432:				; CODE XREF: .text:004E9429j
		or	eax, 0FFFFFFFFh
		jmp	short loc_4E944C
; ---------------------------------------------------------------------------

loc_4E9437:				; CODE XREF: .text:004E941Cj
					; .text:004E9430j
		mov	[ebx], esi
		mov	[ebx+4], esi
		mov	[ebx+0Ch], edi
		cmp	dword ptr [ebp+10h], 1
		jnz	short loc_4E944A
		or	word ptr [ebx+12h], 8

loc_4E944A:				; CODE XREF: .text:004E940Aj
					; .text:004E940Ej ...
		xor	eax, eax

loc_4E944C:				; CODE XREF: .text:004E9435j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl fclose(FILE *stream)
_fclose:				; CODE XREF: .text:00407261p
					; .text:004072A0p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4E9466
		cmp	bl, [ebx+17h]
		jz	short loc_4E946E

loc_4E9466:				; CODE XREF: .text:004E945Fj
		or	eax, 0FFFFFFFFh
		jmp	loc_4E94EE
; ---------------------------------------------------------------------------

loc_4E946E:				; CODE XREF: .text:004E9464j
		push	ebx
		call	loc_4EB1D8
		cmp	dword ptr [ebx+0Ch], 0
		pop	ecx
		jz	short loc_4E94A1
		cmp	dword ptr [ebx+8], 0
		jge	short loc_4E9491
		push	ebx		; stream
		call	_fflush
		pop	ecx
		test	eax, eax
		jz	short loc_4E9491
		or	esi, 0FFFFFFFFh
		jmp	short loc_4E94E5
; ---------------------------------------------------------------------------

loc_4E9491:				; CODE XREF: .text:004E947Fj
					; .text:004E948Aj
		test	byte ptr [ebx+12h], 4
		jz	short loc_4E94A1
		mov	eax, [ebx+4]
		push	eax		; block
		call	_free
		pop	ecx

loc_4E94A1:				; CODE XREF: .text:004E9479j
					; .text:004E9495j
		movsx	edx, byte ptr [ebx+16h]
		push	edx
		call	___close
		pop	ecx
		mov	esi, eax
		mov	word ptr [ebx+12h], 0
		xor	eax, eax
		xor	edx, edx
		mov	[ebx+0Ch], eax
		mov	[ebx+8], edx
		mov	byte ptr [ebx+16h], 0FFh
		mov	di, [ebx+10h]
		test	di, di
		jz	short loc_4E94E5
		push	edi		; __int16
		push	0		; int
		push	0		; dest
		call	___mkname
		add	esp, 0Ch
		push	eax		; lpFileName
		call	unknown_libname_14 ; BCC v4.x/5.x & BCB	v1.0/v7.0 BDS2006 win32	runtime
		pop	ecx
		mov	word ptr [ebx+10h], 0

loc_4E94E5:				; CODE XREF: .text:004E948Fj
					; .text:004E94C9j
		push	ebx
		call	loc_4EB2A0
		pop	ecx
		mov	eax, esi

loc_4E94EE:				; CODE XREF: .text:004E9469j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl fflush(FILE *stream)
_fflush:				; CODE XREF: .text:0041025Ep
					; .text:00410274p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4E9509
		call	__flushout
		xor	eax, eax
		jmp	short loc_4E957F
; ---------------------------------------------------------------------------

loc_4E9509:				; CODE XREF: .text:004E94FEj
		cmp	bl, [ebx+17h]
		jz	short loc_4E9513
		or	eax, 0FFFFFFFFh
		jmp	short loc_4E957F
; ---------------------------------------------------------------------------

loc_4E9513:				; CODE XREF: .text:004E950Cj
		push	ebx
		call	loc_4EB1D8
		cmp	dword ptr [ebx+8], 0
		pop	ecx
		jl	short loc_4E9542
		test	byte ptr [ebx+12h], 8
		jnz	short loc_4E952D
		lea	edx, [ebx+14h]
		cmp	edx, [ebx]
		jnz	short loc_4E953E

loc_4E952D:				; CODE XREF: .text:004E9524j
		xor	ecx, ecx
		mov	[ebx+8], ecx
		lea	eax, [ebx+14h]
		cmp	eax, [ebx]
		jnz	short loc_4E953E
		mov	edx, [ebx+4]
		mov	[ebx], edx

loc_4E953E:				; CODE XREF: .text:004E952Bj
					; .text:004E9537j
		xor	esi, esi
		jmp	short loc_4E9576
; ---------------------------------------------------------------------------

loc_4E9542:				; CODE XREF: .text:004E951Ej
		mov	esi, [ebx+0Ch]
		add	esi, [ebx+8]
		inc	esi
		sub	[ebx+8], esi
		push	esi		; len
		mov	eax, [ebx+4]
		mov	[ebx], eax
		push	eax		; buf
		movsx	edx, byte ptr [ebx+16h]
		push	edx		; handle
		call	___write
		add	esp, 0Ch
		cmp	esi, eax
		jz	short loc_4E9574
		test	byte ptr [ebx+13h], 2
		jnz	short loc_4E9574
		or	word ptr [ebx+12h], 10h
		or	esi, 0FFFFFFFFh
		jmp	short loc_4E9576
; ---------------------------------------------------------------------------

loc_4E9574:				; CODE XREF: .text:004E9562j
					; .text:004E9568j
		xor	esi, esi

loc_4E9576:				; CODE XREF: .text:004E9540j
					; .text:004E9572j
		push	ebx
		call	loc_4EB2A0
		pop	ecx
		mov	eax, esi

loc_4E957F:				; CODE XREF: .text:004E9507j
					; .text:004E9511j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__flushout:				; CODE XREF: .text:004E9500p
		push	ebx
		push	esi
		push	edi
		push	ebp
		call	_lock_all_streams
		xor	ebp, ebp
		mov	edi, _nfile
		mov	ebx, offset _streams
		jmp	short loc_4E95D3
; ---------------------------------------------------------------------------

loc_4E959C:				; CODE XREF: .text:004E95DAj
		mov	eax, [ebx+8]
		test	eax, eax
		jge	short loc_4E95D0
		mov	esi, [ebx+0Ch]
		add	esi, eax
		inc	esi
		sub	[ebx+8], esi
		push	esi		; len
		mov	eax, [ebx+4]
		mov	[ebx], eax
		push	eax		; buf
		movsx	edx, byte ptr [ebx+16h]
		push	edx		; handle
		call	___write
		add	esp, 0Ch
		cmp	esi, eax
		jz	short loc_4E95CF
		test	byte ptr [ebx+13h], 2
		jnz	short loc_4E95CF
		or	word ptr [ebx+12h], 10h

loc_4E95CF:				; CODE XREF: .text:004E95C2j
					; .text:004E95C8j
		inc	ebp

loc_4E95D0:				; CODE XREF: .text:004E95A1j
		add	ebx, 18h

loc_4E95D3:				; CODE XREF: .text:004E959Aj
		mov	ecx, edi
		add	edi, 0FFFFFFFFh
		test	ecx, ecx
		jnz	short loc_4E959C
		call	_unlock_all_streams
		mov	eax, ebp
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

__initfmode:				; CODE XREF: .text:004F0F48p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		mov	off_57A87C, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__initfileinfo:				; CODE XREF: .text:004F0F52p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4E9609
		mov	eax, [eax]
		mov	dword_57A2F8, eax

loc_4E9609:				; CODE XREF: .text:004E9600j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E960C:				; CODE XREF: .text:004E96FEp
		push	ebp
		mov	ebp, esp
		push	ecx
		push	esi
		mov	ecx, [ebp+8]
		xor	eax, eax
		mov	[ebp-4], eax
		mov	al, [ecx]
		inc	ecx
		cmp	al, 72h
		jnz	short loc_4E9629
		xor	edx, edx
		mov	esi, 1
		jmp	short loc_4E965E
; ---------------------------------------------------------------------------

loc_4E9629:				; CODE XREF: .text:004E961Ej
		cmp	al, 77h
		jnz	short loc_4E9640
		mov	edx, 301h
		mov	dword ptr [ebp-4], 80h
		mov	esi, 2
		jmp	short loc_4E965E
; ---------------------------------------------------------------------------

loc_4E9640:				; CODE XREF: .text:004E962Bj
		cmp	al, 61h
		jnz	short loc_4E9657
		mov	edx, 901h
		mov	dword ptr [ebp-4], 80h
		mov	esi, 2
		jmp	short loc_4E965E
; ---------------------------------------------------------------------------

loc_4E9657:				; CODE XREF: .text:004E9642j
		xor	eax, eax
		jmp	loc_4E96E1
; ---------------------------------------------------------------------------

loc_4E965E:				; CODE XREF: .text:004E9627j
					; .text:004E963Ej ...
		mov	al, [ecx]
		inc	ecx
		cmp	al, 2Bh
		jz	short loc_4E9672
		cmp	byte ptr [ecx],	2Bh
		jnz	short loc_4E968A
		cmp	al, 74h
		jz	short loc_4E9672
		cmp	al, 62h
		jnz	short loc_4E968A

loc_4E9672:				; CODE XREF: .text:004E9663j
					; .text:004E966Cj
		cmp	al, 2Bh
		jnz	short loc_4E9678
		mov	al, [ecx]

loc_4E9678:				; CODE XREF: .text:004E9674j
		and	edx, 0FFFFFFFEh
		mov	esi, 3
		mov	dword ptr [ebp-4], 180h
		or	edx, 2

loc_4E968A:				; CODE XREF: .text:004E9668j
					; .text:004E9670j
		cmp	al, 74h
		jnz	short loc_4E9696
		or	edx, 4000h
		jmp	short loc_4E96C8
; ---------------------------------------------------------------------------

loc_4E9696:				; CODE XREF: .text:004E968Cj
		cmp	al, 62h
		jnz	short loc_4E96A5
		or	edx, 8000h
		or	esi, 40h
		jmp	short loc_4E96C8
; ---------------------------------------------------------------------------

loc_4E96A5:				; CODE XREF: .text:004E9698j
		cmp	al, 2Bh
		jz	short loc_4E96B1
		test	al, al
		jz	short loc_4E96B1
		xor	eax, eax
		jmp	short loc_4E96E1
; ---------------------------------------------------------------------------

loc_4E96B1:				; CODE XREF: .text:004E96A7j
					; .text:004E96ABj
		mov	ecx, off_57A87C
		mov	eax, [ecx]
		and	eax, 0C000h
		or	edx, eax
		test	dh, 80h
		jz	short loc_4E96C8
		or	esi, 40h

loc_4E96C8:				; CODE XREF: .text:004E9694j
					; .text:004E96A3j ...
		mov	off_57BA90, offset __xfclose
		mov	ecx, [ebp+0Ch]
		mov	[ecx], edx
		mov	edx, [ebp+10h]
		mov	eax, [ebp-4]
		mov	[edx], eax
		mov	eax, esi

loc_4E96E1:				; CODE XREF: .text:004E9659j
					; .text:004E96AFj
		pop	esi
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl __openfp(FILE *stream, LPCSTR lpFileName,	int, int)
___openfp:				; CODE XREF: .text:004E97DBp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		mov	ebx, [ebp+8]
		lea	eax, [ebp-8]
		push	eax
		lea	edx, [ebp-4]
		push	edx
		mov	ecx, [ebp+10h]
		push	ecx
		call	loc_4E960C
		add	esp, 0Ch
		mov	[ebx+12h], ax
		test	ax, ax
		jz	short loc_4E9733
		cmp	byte ptr [ebx+16h], 0
		jge	short loc_4E9741
		mov	edx, [ebp-8]
		push	edx		; char
		mov	ecx, [ebp-4]
		or	ecx, [ebp+14h]
		push	ecx		; char
		mov	eax, [ebp+0Ch]
		push	eax		; lpFileName
		call	___open
		add	esp, 0Ch
		mov	[ebx+16h], al
		test	al, al
		jge	short loc_4E9741

loc_4E9733:				; CODE XREF: .text:004E970Dj
		mov	byte ptr [ebx+16h], 0FFh
		mov	word ptr [ebx+12h], 0
		xor	eax, eax
		jmp	short loc_4E9789
; ---------------------------------------------------------------------------

loc_4E9741:				; CODE XREF: .text:004E9713j
					; .text:004E9731j
		movsx	edx, byte ptr [ebx+16h]
		test	byte ptr (_openfd+1)[edx*4], 20h
		jz	short loc_4E9755
		or	word ptr [ebx+12h], 200h

loc_4E9755:				; CODE XREF: .text:004E974Dj
		push	200h		; size
		mov	ecx, 1
		test	byte ptr [ebx+13h], 2
		jnz	short loc_4E9766
		dec	ecx

loc_4E9766:				; CODE XREF: .text:004E9763j
		push	ecx		; type
		push	0		; buf
		push	ebx		; stream
		call	_setvbuf
		add	esp, 10h
		test	eax, eax
		jz	short loc_4E9781
		push	ebx		; stream
		call	_fclose
		pop	ecx
		xor	eax, eax
		jmp	short loc_4E9789
; ---------------------------------------------------------------------------

loc_4E9781:				; CODE XREF: .text:004E9774j
		mov	word ptr [ebx+10h], 0
		mov	eax, ebx

loc_4E9789:				; CODE XREF: .text:004E973Fj
					; .text:004E977Fj
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

___getfp:				; CODE XREF: .text:004E97C5p
					; .text:004EC909p
		mov	eax, offset _streams
		jmp	short loc_4E97B3
; ---------------------------------------------------------------------------

loc_4E9797:				; CODE XREF: .text:004E97B7j
		mov	edx, _nfile
		shl	edx, 3
		lea	edx, [edx+edx*2]
		add	edx, offset _streams
		cmp	eax, edx
		jb	short loc_4E97B0
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------

loc_4E97B0:				; CODE XREF: .text:004E97ABj
		add	eax, 18h

loc_4E97B3:				; CODE XREF: .text:004E9795j
		cmp	byte ptr [eax+16h], 0
		jge	short loc_4E9797
		retn
; ---------------------------------------------------------------------------
		align 4

; FILE *__cdecl	fopen(const char *path,	const char *mode)
_fopen:
		push	ebp
		mov	ebp, esp
		push	ebx
		call	_lock_all_streams
		call	___getfp
		mov	ebx, eax
		test	eax, eax
		jz	short loc_4E97E5
		push	0		; int
		mov	edx, [ebp+0Ch]
		push	edx		; int
		mov	ecx, [ebp+8]
		push	ecx		; lpFileName
		push	ebx		; stream
		call	___openfp
		add	esp, 10h
		mov	ebx, eax

loc_4E97E5:				; CODE XREF: .text:004E97CEj
		call	_unlock_all_streams
		mov	eax, ebx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int fprintf(FILE *stream, const char *format,	...)
_fprintf:				; CODE XREF: .text:00403B77p
					; .text:0040C7CEp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		lea	esi, [ebp+10h]
		push	ebx
		call	loc_4EB1D8
		pop	ecx
		push	esi
		push	0
		push	0
		mov	eax, [ebp+0Ch]
		push	eax
		push	ebx
		push	offset ___fputn
		call	___vprinter
		add	esp, 18h
		mov	esi, eax
		push	ebx
		call	loc_4EB2A0
		pop	ecx
		mov	eax, esi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl __fputn(void *src, _size_t	n, FILE	*stream)
___fputn:				; CODE XREF: .text:004E9BFDp
					; DATA XREF: .text:004E980Co
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		test	byte ptr [ebx+12h], 8
		jz	short loc_4E9874
		mov	[ebp-4], esi
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4E9868

loc_4E9847:				; CODE XREF: .text:004E9866j
		push	ebx		; stream
		movsx	eax, byte ptr [edi]
		push	eax		; c
		call	_fputc
		add	esp, 8
		inc	eax
		jnz	short loc_4E985E
		xor	eax, eax
		jmp	loc_4E98FB
; ---------------------------------------------------------------------------

loc_4E985E:				; CODE XREF: .text:004E9855j
		dec	dword ptr [ebp-4]
		inc	edi
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4E9847

loc_4E9868:				; CODE XREF: .text:004E9845j
		mov	eax, esi
		jmp	loc_4E98FB
; ---------------------------------------------------------------------------
		jmp	loc_4E98FB
; ---------------------------------------------------------------------------

loc_4E9874:				; CODE XREF: .text:004E983Cj
		mov	eax, [ebx+0Ch]
		test	eax, eax
		jz	short loc_4E98C2
		cmp	eax, esi
		jb	short loc_4E98C2
		mov	edx, [ebx+8]
		mov	ecx, edx
		add	ecx, esi
		test	ecx, ecx
		jl	short loc_4E98A7
		test	edx, edx
		jnz	short loc_4E9898
		or	edx, 0FFFFFFFFh
		sub	edx, eax
		mov	[ebx+8], edx
		jmp	short loc_4E98A7
; ---------------------------------------------------------------------------

loc_4E9898:				; CODE XREF: .text:004E988Cj
		push	ebx		; stream
		call	_fflush
		pop	ecx
		test	eax, eax
		jz	short loc_4E98A7
		xor	eax, eax
		jmp	short loc_4E98FB
; ---------------------------------------------------------------------------

loc_4E98A7:				; CODE XREF: .text:004E9888j
					; .text:004E9896j ...
		push	esi		; n
		push	edi		; src
		mov	ecx, [ebx]
		push	ecx		; dest
		call	_memcpy
		mov	eax, [ebx+8]
		add	esp, 0Ch
		add	eax, esi
		mov	[ebx+8], eax
		mov	eax, esi
		add	[ebx], esi
		jmp	short loc_4E98FB
; ---------------------------------------------------------------------------

loc_4E98C2:				; CODE XREF: .text:004E9879j
					; .text:004E987Dj
		cmp	dword ptr [ebx+0Ch], 0
		jz	short loc_4E98DD
		cmp	dword ptr [ebx+8], 0
		jz	short loc_4E98DD
		push	ebx		; stream
		call	_fflush
		pop	ecx
		test	eax, eax
		jz	short loc_4E98DD
		xor	eax, eax
		jmp	short loc_4E98FB
; ---------------------------------------------------------------------------

loc_4E98DD:				; CODE XREF: .text:004E98C6j
					; .text:004E98CCj ...
		push	esi		; len
		push	edi		; buf
		movsx	edx, byte ptr [ebx+16h]
		push	edx		; handle
		call	___write
		add	esp, 0Ch
		cmp	eax, 0FFFFFFFFh
		jz	short loc_4E98F5
		cmp	esi, eax
		jbe	short loc_4E98F9

loc_4E98F5:				; CODE XREF: .text:004E98EFj
		xor	eax, eax
		jmp	short loc_4E98FB
; ---------------------------------------------------------------------------

loc_4E98F9:				; CODE XREF: .text:004E98F3j
		mov	eax, esi

loc_4E98FB:				; CODE XREF: .text:004E9859j
					; .text:004E986Aj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E9904:				; CODE XREF: .text:004E9A5Bp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	eax, [ebp+8]
		mov	[ebp-8], eax
		cmp	dword ptr [ebx+0Ch], 0
		jz	loc_4E99FF

loc_4E9923:				; CODE XREF: .text:004E99BAj
		test	esi, esi
		jz	loc_4E9A2A

loc_4E992B:				; CODE XREF: .text:004E99EBj
		mov	eax, [ebx+8]
		test	eax, eax
		jz	short loc_4E9961
		cmp	eax, esi
		jnb	short loc_4E993A
		mov	edi, eax
		jmp	short loc_4E993C
; ---------------------------------------------------------------------------

loc_4E993A:				; CODE XREF: .text:004E9934j
		mov	edi, esi

loc_4E993C:				; CODE XREF: .text:004E9938j
		push	edi		; n
		mov	eax, [ebx]
		push	eax		; src
		mov	edx, [ebp-8]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		add	[ebx], edi
		sub	[ebx+8], edi
		cmp	esi, edi
		jnz	short loc_4E995C
		xor	eax, eax
		jmp	loc_4E9A2C
; ---------------------------------------------------------------------------

loc_4E995C:				; CODE XREF: .text:004E9953j
		add	[ebp-8], edi
		sub	esi, edi

loc_4E9961:				; CODE XREF: .text:004E9930j
		mov	ecx, [ebx+0Ch]
		cmp	esi, ecx
		jb	short loc_4E99C7
		mov	eax, esi
		xor	edx, edx
		div	ecx
		mov	edi, esi
		sub	edi, edx
		push	edi		; len
		mov	eax, [ebp-8]
		push	eax		; s
		movsx	edx, byte ptr [ebx+16h]
		push	edx		; handle
		call	___read
		add	esp, 0Ch
		mov	[ebp-4], eax
		cmp	esi, eax
		jnz	short loc_4E9992
		xor	eax, eax
		jmp	loc_4E9A2C
; ---------------------------------------------------------------------------

loc_4E9992:				; CODE XREF: .text:004E9989j
		cmp	dword ptr [ebp-4], 0FFFFFFFFh
		jnz	short loc_4E99A2
		or	word ptr [ebx+12h], 10h
		jmp	loc_4E9A2A
; ---------------------------------------------------------------------------

loc_4E99A2:				; CODE XREF: .text:004E9996j
		mov	edx, [ebp-4]
		add	[ebp-8], edx
		sub	esi, [ebp-4]
		cmp	edi, [ebp-4]
		jz	short loc_4E99C7
		test	byte ptr [ebx+12h], 40h
		jnz	short loc_4E99C0
		cmp	dword ptr [ebp-4], 0
		jnz	loc_4E9923

loc_4E99C0:				; CODE XREF: .text:004E99B4j
		or	word ptr [ebx+12h], 20h
		jmp	short loc_4E9A2A
; ---------------------------------------------------------------------------

loc_4E99C7:				; CODE XREF: .text:004E9966j
					; .text:004E99AEj
		push	ebx
		call	unknown_libname_13 ; BCC v4.x/5.x & BCB	v1.0/v7.0 BDS2006 win32	runtime
		pop	ecx
		mov	[ebp-4], eax
		inc	eax
		jz	short loc_4E99E2
		mov	dl, [ebp-4]
		mov	ecx, [ebp-8]
		mov	[ecx], dl
		inc	dword ptr [ebp-8]
		dec	esi
		jmp	short loc_4E99E9
; ---------------------------------------------------------------------------

loc_4E99E2:				; CODE XREF: .text:004E99D2j
		or	word ptr [ebx+12h], 20h
		jmp	short loc_4E9A2A
; ---------------------------------------------------------------------------

loc_4E99E9:				; CODE XREF: .text:004E99E0j
		test	esi, esi
		jnz	loc_4E992B
		jmp	short loc_4E9A2A
; ---------------------------------------------------------------------------

loc_4E99F3:				; CODE XREF: .text:004E9A1Dj
		mov	al, [ebp-4]
		mov	edx, [ebp-8]
		mov	[edx], al
		inc	dword ptr [ebp-8]
		dec	esi

loc_4E99FF:				; CODE XREF: .text:004E991Dj
		test	esi, esi
		jz	short loc_4E9A1F
		dec	dword ptr [ebx+8]
		js	short loc_4E9A12
		mov	ecx, [ebx]
		inc	dword ptr [ebx]
		xor	eax, eax
		mov	al, [ecx]
		jmp	short loc_4E9A19
; ---------------------------------------------------------------------------

loc_4E9A12:				; CODE XREF: .text:004E9A06j
		push	ebx
		call	unknown_libname_12 ; BCC v4.x/5.x & BCB	v1.0/v7.0 BDS2006 win32	runtime
		pop	ecx

loc_4E9A19:				; CODE XREF: .text:004E9A10j
		mov	[ebp-4], eax
		inc	eax
		jnz	short loc_4E99F3

loc_4E9A1F:				; CODE XREF: .text:004E9A01j
		cmp	dword ptr [ebp-4], 0FFFFFFFFh
		jnz	short loc_4E9A2A
		or	word ptr [ebx+12h], 20h

loc_4E9A2A:				; CODE XREF: .text:004E9925j
					; .text:004E999Dj ...
		mov	eax, esi

loc_4E9A2C:				; CODE XREF: .text:004E9957j
					; .text:004E998Dj
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; size_t __cdecl fread(void *ptr, _size_t size, _size_t n, FILE *stream)
_fread:					; CODE XREF: .text:004072D1p
					; .text:0041420Ap ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+14h]
		mov	esi, [ebp+0Ch]
		test	esi, esi
		jnz	short loc_4E9A48
		xor	eax, eax
		jmp	short loc_4E9A72
; ---------------------------------------------------------------------------

loc_4E9A48:				; CODE XREF: .text:004E9A42j
		mov	ebx, esi
		imul	ebx, [ebp+10h]
		push	edi
		call	loc_4EB1D8
		pop	ecx
		push	edi
		push	ebx
		mov	eax, [ebp+8]
		push	eax
		call	loc_4E9904
		add	esp, 0Ch
		sub	ebx, eax
		push	edi
		call	loc_4EB2A0
		mov	eax, ebx
		xor	edx, edx
		div	esi
		pop	ecx

loc_4E9A72:				; CODE XREF: .text:004E9A46j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E9A78:				; CODE XREF: .text:004E9B06p
					; .text:004E9BB3p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	edx, [ebx+8]
		test	edx, edx
		jge	short loc_4E9A90
		mov	eax, [ebx+0Ch]
		add	eax, edx
		inc	eax
		mov	ecx, eax
		jmp	short loc_4E9A94
; ---------------------------------------------------------------------------

loc_4E9A90:				; CODE XREF: .text:004E9A84j
		mov	eax, edx
		mov	ecx, edx

loc_4E9A94:				; CODE XREF: .text:004E9A8Ej
		test	byte ptr [ebx+12h], 40h
		jz	short loc_4E9A9F
		mov	eax, ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E9A9F:				; CODE XREF: .text:004E9A98j
		cmp	dword ptr [ebx+8], 0
		mov	edx, [ebx]
		jge	short loc_4E9AC4
		jmp	short loc_4E9AB0
; ---------------------------------------------------------------------------

loc_4E9AA9:				; CODE XREF: .text:004E9AB7j
		dec	edx
		cmp	byte ptr [edx],	0Ah
		jnz	short loc_4E9AB0
		inc	ecx

loc_4E9AB0:				; CODE XREF: .text:004E9AA7j
					; .text:004E9AADj
		mov	ebx, eax
		add	eax, 0FFFFFFFFh
		test	ebx, ebx
		jnz	short loc_4E9AA9
		jmp	short loc_4E9ACD
; ---------------------------------------------------------------------------

loc_4E9ABB:				; CODE XREF: .text:004E9ACBj
		mov	bl, [edx]
		inc	edx
		cmp	bl, 0Ah
		jnz	short loc_4E9AC4
		inc	ecx

loc_4E9AC4:				; CODE XREF: .text:004E9AA5j
					; .text:004E9AC1j
		mov	ebx, eax
		add	eax, 0FFFFFFFFh
		test	ebx, ebx
		jnz	short loc_4E9ABB

loc_4E9ACD:				; CODE XREF: .text:004E9AB9j
		mov	eax, ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl fseek(FILE *stream, __int32 offset, int whence)
_fseek:					; CODE XREF: .text:00407242p
					; .text:004072B2p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	edi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		push	ebx		; stream
		call	_fflush
		pop	ecx
		test	eax, eax
		jz	short loc_4E9AF3
		or	eax, 0FFFFFFFFh
		jmp	short loc_4E9B42
; ---------------------------------------------------------------------------

loc_4E9AF3:				; CODE XREF: .text:004E9AECj
		push	ebx
		call	loc_4EB1D8
		pop	ecx
		cmp	esi, 1
		jnz	short loc_4E9B0E
		cmp	dword ptr [ebx+8], 0
		jle	short loc_4E9B0E
		push	ebx
		call	loc_4E9A78
		pop	ecx
		sub	edi, eax

loc_4E9B0E:				; CODE XREF: .text:004E9AFDj
					; .text:004E9B03j
		and	word ptr [ebx+12h], 0FE5Fh
		xor	edx, edx
		mov	[ebx+8], edx
		mov	ecx, [ebx+4]
		mov	[ebx], ecx
		push	esi		; int
		push	edi		; lDistanceToMove
		movsx	eax, byte ptr [ebx+16h]
		push	eax		; int
		call	___lseek
		add	esp, 0Ch
		inc	eax
		jnz	short loc_4E9B35
		or	edx, 0FFFFFFFFh
		jmp	short loc_4E9B37
; ---------------------------------------------------------------------------

loc_4E9B35:				; CODE XREF: .text:004E9B2Ej
		xor	edx, edx

loc_4E9B37:				; CODE XREF: .text:004E9B33j
		mov	esi, edx
		push	ebx
		call	loc_4EB2A0
		pop	ecx
		mov	eax, esi

loc_4E9B42:				; CODE XREF: .text:004E9AF1j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; __int32 __cdecl ftell(FILE *stream)
_ftell:					; CODE XREF: .text:0040724Bp
					; .text:004142FBp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		push	ebx
		call	loc_4EB1D8
		pop	ecx
		push	1		; int
		push	0		; lDistanceToMove
		movsx	eax, byte ptr [ebx+16h]
		push	eax		; int
		call	___lseek
		add	esp, 0Ch
		mov	esi, eax
		inc	eax
		jz	short loc_4E9BC6
		cmp	dword ptr [ebx+8], 0
		jge	short loc_4E9BBD
		movsx	edx, byte ptr [ebx+16h]
		test	byte ptr (_openfd+1)[edx*4], 8
		jz	short loc_4E9BB2
		mov	edi, esi
		push	2		; int
		push	0		; lDistanceToMove
		movsx	eax, byte ptr [ebx+16h]
		push	eax		; int
		call	___lseek
		add	esp, 0Ch
		mov	esi, eax
		inc	eax
		jz	short loc_4E9BC6
		push	0		; int
		push	edi		; lDistanceToMove
		movsx	edx, byte ptr [ebx+16h]
		push	edx		; int
		call	___lseek
		add	esp, 0Ch
		inc	eax
		jnz	short loc_4E9BB2
		or	esi, 0FFFFFFFFh
		jmp	short loc_4E9BC6
; ---------------------------------------------------------------------------

loc_4E9BB2:				; CODE XREF: .text:004E9B80j
					; .text:004E9BABj
		push	ebx
		call	loc_4E9A78
		pop	ecx
		add	esi, eax
		jmp	short loc_4E9BC6
; ---------------------------------------------------------------------------

loc_4E9BBD:				; CODE XREF: .text:004E9B72j
		push	ebx
		call	loc_4E9A78
		pop	ecx
		sub	esi, eax

loc_4E9BC6:				; CODE XREF: .text:004E9B6Cj
					; .text:004E9B98j ...
		push	ebx
		call	loc_4EB2A0
		pop	ecx
		mov	eax, esi
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; size_t __cdecl fwrite(const void *ptr, _size_t	size, _size_t n,	FILE *stream)
_fwrite:				; CODE XREF: .text:004A9084p
					; .text:004A909Fp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		test	ebx, ebx
		jnz	short loc_4E9BEB
		mov	eax, edi
		jmp	short loc_4E9C14
; ---------------------------------------------------------------------------

loc_4E9BEB:				; CODE XREF: .text:004E9BE5j
		push	esi
		call	loc_4EB1D8
		mov	edx, ebx
		pop	ecx
		imul	edx, edi
		push	esi		; stream
		push	edx		; n
		mov	ecx, [ebp+8]
		push	ecx		; src
		call	___fputn
		add	esp, 0Ch
		xor	edx, edx
		div	ebx
		mov	ebx, eax
		push	esi
		call	loc_4EB2A0
		pop	ecx
		mov	eax, ebx

loc_4E9C14:				; CODE XREF: .text:004E9BE9j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__lock_all_handles:			; CODE XREF: .text:004E8BCDp
					; .text:004E8F81p ...
		mov	eax, lpCriticalSection
		push	eax		; lpCriticalSection
		call	__lock_nt
		pop	ecx
		retn
; ---------------------------------------------------------------------------
		align 4

__cleanup_handle_locks:			; CODE XREF: .text:004E9D32p
					; .text:004EFF2Ap
		mov	eax, block
		test	eax, eax
		jz	short loc_4E9C44
		push	eax		; block
		call	_free
		pop	ecx
		xor	edx, edx
		mov	block, edx

loc_4E9C44:				; CODE XREF: .text:004E9C33j
		mov	dword_57A880, 1
		retn
; ---------------------------------------------------------------------------
		align 10h

__unlock_all_handles:			; CODE XREF: .text:loc_4E8DB6p
					; .text:loc_4E916Ap ...
		mov	eax, lpCriticalSection
		push	eax		; lpCriticalSection
		call	__unlock_nt
		pop	ecx
		retn
; ---------------------------------------------------------------------------
		align 10h

__lock_handle:				; CODE XREF: .text:004E8A05p
					; .text:004E8A7Cp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		mov	eax, block
		test	eax, eax
		jz	short loc_4E9C77
		cmp	dword ptr [eax+ebx*4], 0
		jnz	short loc_4E9CE0

loc_4E9C77:				; CODE XREF: .text:004E9C6Fj
		call	__lock_all_handles
		cmp	block, 0
		jnz	short loc_4E9CBB
		mov	esi, _nfile
		shl	esi, 2
		push	esi		; size
		call	_malloc
		pop	ecx
		mov	block, eax
		test	eax, eax
		jnz	short loc_4E9CA9
		push	offset aAllocatingHand ; "allocating handle lock table"
		call	__lock_error
; ---------------------------------------------------------------------------
		pop	ecx

loc_4E9CA9:				; CODE XREF: .text:004E9C9Cj
		push	esi		; n
		push	0		; c
		mov	edx, block
		push	edx		; s
		call	_memset
		add	esp, 0Ch

loc_4E9CBB:				; CODE XREF: .text:004E9C83j
		mov	eax, block
		cmp	dword ptr [eax+ebx*4], 0
		jnz	short loc_4E9CDB
		push	offset aCreatingHandle ; "creating handle lock"
		mov	edx, ebx
		shl	edx, 2
		add	edx, eax
		push	edx		; int
		call	__create_lock
		add	esp, 8

loc_4E9CDB:				; CODE XREF: .text:004E9CC4j
		call	__unlock_all_handles

loc_4E9CE0:				; CODE XREF: .text:004E9C75j
		mov	ecx, block
		mov	eax, [ecx+ebx*4]
		push	eax		; lpCriticalSection
		call	__lock_nt
		pop	ecx
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

__unlock_handle:			; CODE XREF: .text:004E8A43p
					; .text:004E8A4Ep ...
		push	ebp
		mov	ebp, esp
		cmp	block, 0
		jnz	short loc_4E9D17
		push	0DCh		; line
		push	offset aHandles_c ; "handles.c"
		push	offset aHlocks	; "hlocks"
		call	__assert
; ---------------------------------------------------------------------------
		add	esp, 0Ch

loc_4E9D17:				; CODE XREF: .text:004E9CFEj
		mov	eax, block
		mov	edx, [ebp+8]
		mov	ecx, [eax+edx*4]
		push	ecx		; lpCriticalSection
		call	__unlock_nt
		pop	ecx
		cmp	dword_57A880, 0
		jz	short loc_4E9D37
		call	__cleanup_handle_locks

loc_4E9D37:				; CODE XREF: .text:004E9D30j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__get_handle:				; CODE XREF: .text:004E8D9Bp
					; .text:004E914Fp
		push	ebp
		mov	ebp, esp
		xor	eax, eax
		mov	edx, offset _openfd
		jmp	short loc_4E9D51
; ---------------------------------------------------------------------------

loc_4E9D48:				; CODE XREF: .text:004E9D57j
		cmp	dword ptr [edx], 0
		jz	short loc_4E9D59
		inc	eax
		add	edx, 4

loc_4E9D51:				; CODE XREF: .text:004E9D46j
		cmp	eax, _nfile
		jl	short loc_4E9D48

loc_4E9D59:				; CODE XREF: .text:004E9D4Bj
		cmp	eax, _nfile
		jnz	short loc_4E9D66
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E9D66:				; CODE XREF: .text:004E9D5Fj
		mov	edx, [ebp+0Ch]
		mov	_openfd[eax*4],	edx
		mov	ecx, [ebp+8]
		mov	hFile[eax*4], ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

__dup_handle:
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+0Ch]
		mov	ecx, [ebp+8]
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_4E9DA4
		xor	eax, eax
		mov	edx, offset _openfd
		jmp	short loc_4E9D97
; ---------------------------------------------------------------------------

loc_4E9D93:				; CODE XREF: .text:004E9DA2j
		inc	eax
		add	edx, 4

loc_4E9D97:				; CODE XREF: .text:004E9D91j
		cmp	eax, _nfile
		jge	short loc_4E9DA4
		cmp	dword ptr [edx], 0
		jnz	short loc_4E9D93

loc_4E9DA4:				; CODE XREF: .text:004E9D88j
					; .text:004E9D9Dj
		mov	edx, _nfile
		cmp	edx, ecx
		jbe	short loc_4E9DB2
		cmp	edx, eax
		ja	short loc_4E9DB7

loc_4E9DB2:				; CODE XREF: .text:004E9DACj
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E9DB7:				; CODE XREF: .text:004E9DB0j
		mov	edx, _openfd[ecx*4]
		test	edx, edx
		jz	short loc_4E9DCC
		cmp	_openfd[eax*4],	0
		jz	short loc_4E9DD1

loc_4E9DCC:				; CODE XREF: .text:004E9DC0j
		or	eax, 0FFFFFFFFh
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E9DD1:				; CODE XREF: .text:004E9DCAj
		mov	_openfd[eax*4],	edx
		mov	ecx, [ebp+10h]
		mov	hFile[eax*4], ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

__free_handle:
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		cmp	eax, _nfile
		jnb	short loc_4E9DFB
		xor	edx, edx
		mov	_openfd[eax*4],	edx

loc_4E9DFB:				; CODE XREF: .text:004E9DF0j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4E9E00:				; DATA XREF: .text:loc_4E9ECFo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		mov	eax, _nfile
		test	eax, eax
		push	esi
		mov	esi, [ebp+8]
		lea	edx, _nfile[eax*4]
		jz	short loc_4E9E27

loc_4E9E1A:				; CODE XREF: .text:004E9E25j
		cmp	dword ptr [edx], 0
		jnz	short loc_4E9E27
		dec	eax
		add	edx, 0FFFFFFFCh
		test	eax, eax
		jnz	short loc_4E9E1A

loc_4E9E27:				; CODE XREF: .text:004E9E18j
					; .text:004E9E1Dj
		test	esi, esi
		jnz	short loc_4E9E3D
		test	eax, eax
		jnz	short loc_4E9E33
		xor	eax, eax
		jmp	short loc_4E9E95
; ---------------------------------------------------------------------------

loc_4E9E33:				; CODE XREF: .text:004E9E2Dj
		lea	edx, [eax+eax*4]
		add	edx, 4
		mov	eax, edx
		jmp	short loc_4E9E95
; ---------------------------------------------------------------------------

loc_4E9E3D:				; CODE XREF: .text:004E9E29j
		mov	[esi], eax
		xor	ecx, ecx
		mov	[ebp-4], ecx
		add	esi, 4
		mov	dword ptr [ebp-8], offset _openfd
		cmp	eax, [ebp-4]
		jle	short loc_4E9E81

loc_4E9E53:				; CODE XREF: .text:004E9E7Fj
		mov	cl, 1
		mov	edx, [ebp-8]
		mov	edx, [edx]
		test	dh, 8
		jz	short loc_4E9E62
		or	cl, 20h

loc_4E9E62:				; CODE XREF: .text:004E9E5Dj
		test	dh, 80h
		jnz	short loc_4E9E6A
		or	cl, 80h

loc_4E9E6A:				; CODE XREF: .text:004E9E65j
		test	dh, 20h
		jz	short loc_4E9E72
		or	cl, 40h

loc_4E9E72:				; CODE XREF: .text:004E9E6Dj
		mov	[esi], cl
		inc	esi
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-8], 4
		cmp	eax, [ebp-4]
		jg	short loc_4E9E53

loc_4E9E81:				; CODE XREF: .text:004E9E51j
		shl	eax, 2
		push	eax		; n
		push	offset hFile	; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		xor	eax, eax

loc_4E9E95:				; CODE XREF: .text:004E9E31j
					; .text:004E9E3Bj
		pop	esi
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__init_handles:				; DATA XREF: .data:004F6050o
		push	ebx
		push	esi
		push	edi
		add	esp, 0FFFFFFB4h
		push	offset aCreatingGlobal ; "creating global handle lock"
		push	offset lpCriticalSection ; int
		call	__create_lock
		add	esp, 8
		mov	eax, _nfile
		push	eax		; uNumber
		call	SetHandleCount
		mov	ebx, eax
		cmp	eax, _nfile
		jnb	short loc_4E9ECF
		mov	_nfile,	ebx

loc_4E9ECF:				; CODE XREF: .text:004E9EC7j
		mov	off_57A2F0, offset loc_4E9E00
		xor	edx, edx
		mov	[esp+4], edx
		lea	ecx, [esp+8]
		push	ecx		; lpStartupInfo
		call	GetStartupInfoA
		movzx	eax, word ptr [esp+3Ah]
		mov	esi, [esp+3Ch]
		test	eax, eax
		jz	loc_4E9F94
		mov	edx, [esi]
		mov	[esp], edx
		add	esi, 4
		mov	ecx, [esp]
		lea	ecx, [ecx+ecx*4]
		add	ecx, 4
		cmp	ecx, eax
		jnz	loc_4E9F94
		mov	dword ptr [esp+4], 1
		xor	ebx, ebx
		mov	edi, offset _openfd
		cmp	ebx, [esp]
		jge	short loc_4E9F63

loc_4E9F27:				; CODE XREF: .text:004E9F61j
		mov	dl, [esi]
		inc	esi
		xor	eax, eax
		test	dl, 20h
		jz	short loc_4E9F36
		or	eax, 800h

loc_4E9F36:				; CODE XREF: .text:004E9F2Fj
		test	dl, 40h
		jz	short loc_4E9F40
		or	eax, 2000h

loc_4E9F40:				; CODE XREF: .text:004E9F39j
		test	dl, 80h
		jz	short loc_4E9F4C
		or	eax, 4000h
		jmp	short loc_4E9F51
; ---------------------------------------------------------------------------

loc_4E9F4C:				; CODE XREF: .text:004E9F43j
		or	eax, 8000h

loc_4E9F51:				; CODE XREF: .text:004E9F4Aj
		mov	ecx, [edi]
		inc	ebx
		and	ecx, 3
		or	ecx, eax
		mov	[edi], ecx
		add	edi, 4
		cmp	ebx, [esp]
		jl	short loc_4E9F27

loc_4E9F63:				; CODE XREF: .text:004E9F25j
		mov	ebx, [esp]
		lea	eax, _openfd[ebx*4]
		jmp	short loc_4E9F77
; ---------------------------------------------------------------------------

loc_4E9F6F:				; CODE XREF: .text:004E9F7Dj
		xor	edx, edx
		inc	ebx
		mov	[eax], edx
		add	eax, 4

loc_4E9F77:				; CODE XREF: .text:004E9F6Dj
		cmp	ebx, _nfile
		jb	short loc_4E9F6F
		mov	ecx, [esp]
		shl	ecx, 2
		push	ecx		; n
		push	esi		; src
		push	offset hFile	; dest
		call	_memmove
		add	esp, 0Ch

loc_4E9F94:				; CODE XREF: .text:004E9EF4j
					; .text:004E9F0Dj
		cmp	dword ptr [esp+4], 0
		jnz	short loc_4EA000
		push	0FFFFFFF6h	; nStdHandle
		call	GetStdHandle
		mov	hFile, eax
		push	0FFFFFFF5h	; nStdHandle
		call	GetStdHandle
		mov	dword_61BB0C, eax
		push	0FFFFFFF4h	; nStdHandle
		call	GetStdHandle
		mov	dword_61BB10, eax
		xor	ebx, ebx
		mov	esi, offset _openfd

loc_4E9FC6:				; CODE XREF: .text:004E9FFEj
		push	ebx
		call	___isatty
		pop	ecx
		test	eax, eax
		jnz	short loc_4E9FDA
		cmp	dword_57BCA8, 0
		jz	short loc_4E9FF1

loc_4E9FDA:				; CODE XREF: .text:004E9FCFj
		or	dword ptr [esi], 2000h
		cmp	dword_57BCA8, 0
		jz	short loc_4E9FF7
		or	dword ptr [esi], 10000h
		jmp	short loc_4E9FF7
; ---------------------------------------------------------------------------

loc_4E9FF1:				; CODE XREF: .text:004E9FD8j
		and	dword ptr [esi], 0FFFFDFFFh

loc_4E9FF7:				; CODE XREF: .text:004E9FE7j
					; .text:004E9FEFj
		inc	ebx
		add	esi, 4
		cmp	ebx, 2
		jle	short loc_4E9FC6

loc_4EA000:				; CODE XREF: .text:004E9F99j
		add	esp, 4Ch
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4
