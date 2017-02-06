.code

; Exported entry  34. _Fnsplit
; Exported entry 542. Fnsplit

; int __cdecl wFnsplit(wchar_t *s, int,	void *dest, void *, void *, wchar_t *dst)
		public _wFnsplit
_wFnsplit:				; CODE XREF: .text:00405984p
					; .text:0040671Bp ...
		push	ebp		; _Fnsplit
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+0Ch]
		test	ebx, ebx
		jz	short loc_4046E7
		mov	word ptr [ebx],	0

loc_4046E7:				; CODE XREF: .text:004046E0j
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4046F5
		mov	eax, [ebp+10h]
		mov	word ptr [eax],	0

loc_4046F5:				; CODE XREF: .text:004046EBj
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_404703
		mov	edx, [ebp+14h]
		mov	word ptr [edx],	0

loc_404703:				; CODE XREF: .text:004046F9j
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_404711
		mov	ecx, [ebp+18h]
		mov	word ptr [ecx],	0

loc_404711:				; CODE XREF: .text:00404707j
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_40471F
		mov	eax, [ebp+1Ch]
		mov	word ptr [eax],	0

loc_40471F:				; CODE XREF: .text:00404715j
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_40472C
		xor	eax, eax
		jmp	loc_40489B
; ---------------------------------------------------------------------------

loc_40472C:				; CODE XREF: .text:00404723j
		mov	edx, [ebp+8]
		push	edx		; s
		call	_wcslen
		mov	edi, eax
		xor	eax, eax
		pop	ecx
		mov	[ebp-4], eax
		mov	edx, [ebp+8]
		movzx	eax, word ptr [edx]
		cmp	eax, 41h
		jl	short loc_40474D
		cmp	eax, 5Ah
		jle	short loc_404757

loc_40474D:				; CODE XREF: .text:00404746j
		cmp	eax, 61h
		jl	short loc_40477F
		cmp	eax, 7Ah
		jg	short loc_40477F

loc_404757:				; CODE XREF: .text:0040474Bj
		mov	edx, [ebp+8]
		cmp	word ptr [edx+2], 3Ah
		jnz	short loc_40477F
		or	dword ptr [ebp-4], 10h
		test	ebx, ebx
		jz	short loc_404778
		mov	[ebx], ax
		mov	word ptr [ebx+2], 3Ah
		mov	word ptr [ebx+4], 0

loc_404778:				; CODE XREF: .text:00404767j
		mov	esi, 2
		jmp	short loc_404781
; ---------------------------------------------------------------------------

loc_40477F:				; CODE XREF: .text:00404750j
					; .text:00404755j ...
		xor	esi, esi

loc_404781:				; CODE XREF: .text:0040477Dj
		lea	ebx, [edi-1]
		mov	eax, [ebp+8]
		lea	eax, [eax+ebx*2]
		cmp	esi, ebx
		jg	short loc_40479C

loc_40478E:				; CODE XREF: .text:0040479Aj
		cmp	word ptr [eax],	5Ch
		jz	short loc_40479C
		dec	ebx
		add	eax, 0FFFFFFFEh
		cmp	esi, ebx
		jle	short loc_40478E

loc_40479C:				; CODE XREF: .text:0040478Cj
					; .text:00404792j
		inc	ebx
		cmp	esi, ebx
		jge	short loc_4047D5
		or	dword ptr [ebp-4], 8
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4047D3
		mov	edx, ebx
		mov	ecx, esi
		sub	edx, esi
		add	ecx, ecx
		add	edx, edx
		push	edx		; n
		add	ecx, [ebp+8]
		push	ecx		; src
		mov	eax, [ebp+10h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, ebx
		sub	edx, esi
		mov	ecx, [ebp+10h]
		mov	word ptr [ecx+edx*2], 0

loc_4047D3:				; CODE XREF: .text:004047A9j
		mov	esi, ebx

loc_4047D5:				; CODE XREF: .text:0040479Fj
		mov	ebx, esi
		mov	eax, [ebp+8]
		lea	eax, [eax+ebx*2]
		cmp	edi, ebx
		jle	short loc_4047EF

loc_4047E1:				; CODE XREF: .text:004047EDj
		cmp	word ptr [eax],	3Ah
		jz	short loc_4047EF
		inc	ebx
		add	eax, 2
		cmp	edi, ebx
		jg	short loc_4047E1

loc_4047EF:				; CODE XREF: .text:004047DFj
					; .text:004047E5j
		cmp	edi, ebx
		jle	short loc_404813
		or	dword ptr [ebp-4], 20h
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_404811
		mov	edx, ebx
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; src
		mov	ecx, [ebp+1Ch]
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_404811:				; CODE XREF: .text:004047FBj
		mov	edi, ebx

loc_404813:				; CODE XREF: .text:004047F1j
		lea	ebx, [edi-1]
		mov	eax, [ebp+8]
		lea	eax, [eax+ebx*2]
		cmp	esi, ebx
		jg	short loc_40482E

loc_404820:				; CODE XREF: .text:0040482Cj
		cmp	word ptr [eax],	2Eh
		jz	short loc_40482E
		dec	ebx
		add	eax, 0FFFFFFFEh
		cmp	esi, ebx
		jle	short loc_404820

loc_40482E:				; CODE XREF: .text:0040481Ej
					; .text:00404824j
		cmp	esi, ebx
		jg	short loc_404864
		or	dword ptr [ebp-4], 2
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_404862
		mov	edx, edi
		mov	ecx, ebx
		sub	edx, ebx
		add	ecx, ecx
		add	edx, edx
		push	edx		; n
		add	ecx, [ebp+8]
		push	ecx		; src
		mov	eax, [ebp+18h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		sub	edi, ebx
		mov	edx, [ebp+18h]
		mov	word ptr [edx+edi*2], 0

loc_404862:				; CODE XREF: .text:0040483Aj
		mov	edi, ebx

loc_404864:				; CODE XREF: .text:00404830j
		cmp	esi, edi
		jge	short loc_404898
		or	dword ptr [ebp-4], 4
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_404898
		mov	ebx, edi
		mov	edx, esi
		sub	ebx, esi
		add	edx, edx
		mov	eax, ebx
		add	eax, eax
		push	eax		; n
		add	edx, [ebp+8]
		push	edx		; src
		mov	ecx, [ebp+14h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebp+14h]
		mov	word ptr [eax+ebx*2], 0

loc_404898:				; CODE XREF: .text:00404866j
					; .text:00404870j
		mov	eax, [ebp-4]

loc_40489B:				; CODE XREF: .text:00404727j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  35. _Fnmerge
; Exported entry 541. Fnmerge

; unsigned int __cdecl wFnmerge(char *path, wchar_t *drive, wchar_t *dir, wchar_t *_name, wchar_t *ext)
		public _wFnmerge
_wFnmerge:				; CODE XREF: .text:004059A4p
					; .text:00406793p ...
		push	ebp		; _Fnmerge
		mov	ebp, esp
		add	esp, 0FFFFFDF4h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+1Ch]
		mov	esi, [ebp+18h]
		mov	eax, [ebp+0Ch]
		push	eax		; src
		push	105h		; n
		lea	edx, [ebp-20Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jle	short loc_404903
		cmp	word ptr [ebp+ebx*2-20Eh], 3Ah
		jz	short loc_404903
		mov	edx, ebx
		mov	eax, 105h
		sub	eax, ebx
		lea	ecx, [ebp-20Ch]
		add	edx, edx
		push	offset asc_4F6D58 ; ":"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_404903:				; CODE XREF: .text:004048D2j
					; .text:004048DDj
		mov	eax, [ebp+10h]
		mov	ecx, ebx
		push	eax		; src
		mov	edx, 105h
		sub	edx, ebx
		lea	eax, [ebp-20Ch]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		test	eax, eax
		jle	short loc_404959
		add	ebx, eax
		cmp	word ptr [ebp+ebx*2-20Eh], 5Ch
		jz	short loc_404959
		mov	ecx, ebx
		mov	edx, 105h
		sub	edx, ebx
		lea	eax, [ebp-20Ch]
		add	ecx, ecx
		push	offset asc_4F6D5C ; "\\"
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_404959:				; CODE XREF: .text:00404926j
					; .text:00404933j
		mov	edx, [ebp+14h]
		mov	eax, ebx
		push	edx		; src
		mov	ecx, 105h
		sub	ecx, ebx
		lea	edx, [ebp-20Ch]
		add	eax, eax
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		test	esi, esi
		jz	short loc_4049D2
		mov	ax, [esi]
		test	ax, ax
		jz	short loc_4049B2
		cmp	ax, 2Eh
		jz	short loc_4049B2
		mov	ecx, ebx
		mov	edx, 105h
		sub	edx, ebx
		lea	eax, [ebp-20Ch]
		add	ecx, ecx
		push	offset a__23	; "."
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4049B2:				; CODE XREF: .text:00404986j
					; .text:0040498Cj
		mov	ecx, ebx
		mov	edx, 105h
		sub	edx, ebx
		push	esi		; src
		lea	eax, [ebp-20Ch]
		add	ecx, ecx
		add	ecx, eax
		push	edx		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4049D2:				; CODE XREF: .text:0040497Ej
		test	edi, edi
		jz	short loc_404A28
		mov	ax, [edi]
		test	ax, ax
		jz	short loc_404A08
		cmp	ax, 3Ah
		jz	short loc_404A08
		mov	ecx, ebx
		mov	edx, 105h
		sub	edx, ebx
		lea	eax, [ebp-20Ch]
		add	ecx, ecx
		push	offset asc_4F6D58 ; ":"
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_404A08:				; CODE XREF: .text:004049DCj
					; .text:004049E2j
		mov	ecx, ebx
		mov	edx, 105h
		sub	edx, ebx
		push	edi		; src
		lea	eax, [ebp-20Ch]
		add	ecx, ecx
		add	ecx, eax
		push	edx		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_404A28:				; CODE XREF: .text:004049D4j
		lea	edx, [ebp-20Ch]
		push	edx		; src
		push	104h		; n
		mov	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  36. _Listalternatedatastreams
; Exported entry 644. Listalternatedatastreams

; int __cdecl Listalternatedatastreams(LPCWSTR lpFileName, int,	int)
		public Listalternatedatastreams
Listalternatedatastreams:		; CODE XREF: .text:0040196Cp
					; .text:004019BDp
		push	ebp		; _Listalternatedatastreams
		mov	ebp, esp
		add	esp, 0FFFFFDB4h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		jz	short loc_404A67
		mov	eax, [ebp+8]	; int
		cmp	word ptr [eax],	0
		jnz	short loc_404A6E

loc_404A67:				; CODE XREF: .text:00404A5Cj
		xor	eax, eax
		jmp	loc_404D29
; ---------------------------------------------------------------------------

loc_404A6E:				; CODE XREF: .text:00404A65j
		xor	edx, edx	; int
		mov	[ebp-4], edx
		xor	esi, esi
		cmp	_imp__NtQueryInformationFile, 0
		jz	loc_404B9D
		mov	ebx, 4000h
		push	3		; flags
		push	ebx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 0
		jz	loc_404B9D
		push	0		; hTemplateFile
		push	0		; dwFlagsAndAttributes
		push	3		; dwCreationDisposition
		push	0		; lpSecurityAttributes
		push	1		; dwShareMode
		push	0		; dwDesiredAccess
		mov	eax, [ebp+8]
		push	eax		; lpFileName
		call	CreateFileW
		mov	edi, eax
		cmp	edi, 0FFFFFFFFh
		jz	loc_404B93
		push	16h		; _DWORD
		push	ebx		; _DWORD
		mov	eax, [ebp-18h]
		push	eax		; _DWORD
		lea	edx, [ebp-24h]
		push	edx		; _DWORD
		push	edi		; _DWORD
		call	_imp__NtQueryInformationFile
		test	eax, eax
		jnz	loc_404B8D
		mov	ebx, [ebp-18h]
		mov	eax, esi
		shl	eax, 6
		add	eax, esi
		lea	eax, [esi+eax*2]
		mov	edx, [ebp+0Ch]
		lea	ecx, [edx+eax*4]
		mov	[ebp-2Ch], ecx
		jmp	loc_404B7B
; ---------------------------------------------------------------------------

loc_404AF4:				; CODE XREF: .text:00404B80j
		cmp	esi, [ebp+10h]
		jge	short loc_404B73
		shr	eax, 1
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 104h
		jb	short loc_404B0E
		mov	dword ptr [ebp-8], 103h

loc_404B0E:				; CODE XREF: .text:00404B05j
		mov	ecx, esi
		mov	eax, [ebp-8]
		shl	ecx, 6
		add	eax, eax
		add	ecx, esi
		push	eax		; n
		lea	edx, [ebx+18h]
		push	edx		; src
		lea	ecx, [esi+ecx*2]
		shl	ecx, 2
		add	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	_memcpy
		mov	eax, [ebp-2Ch]
		mov	edx, [ebp-8]
		add	esp, 0Ch
		mov	word ptr [eax+edx*2], 0
		mov	edx, esi
		shl	edx, 6
		mov	ecx, [ebp-2Ch]
		add	edx, esi
		mov	eax, [ebx+8]
		mov	[ecx+208h], eax
		push	offset aData	; "::$DATA"
		lea	edx, [esi+edx*2]
		shl	edx, 2
		add	edx, [ebp+0Ch]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_404B73
		inc	esi
		add	dword ptr [ebp-2Ch], 20Ch

loc_404B73:				; CODE XREF: .text:00404AF7j
					; .text:00404B69j
		mov	eax, [ebx]
		test	eax, eax
		jz	short loc_404B86
		add	ebx, eax

loc_404B7B:				; CODE XREF: .text:00404AEFj
		mov	eax, [ebx+4]
		test	eax, eax
		jnz	loc_404AF4

loc_404B86:				; CODE XREF: .text:00404B77j
		mov	dword ptr [ebp-4], 1

loc_404B8D:				; CODE XREF: .text:00404AD3j
		push	edi		; hObject
		call	CloseHandle

loc_404B93:				; CODE XREF: .text:00404AB9j
		mov	edx, [ebp-18h]
		push	edx		; data
		call	Memfree
		pop	ecx

loc_404B9D:				; CODE XREF: .text:00404A7Cj
					; .text:00404A99j
		cmp	dword ptr [ebp-4], 0
		jnz	loc_404D27
		cmp	_imp__BackupRead, 0
		jz	loc_404D27
		cmp	_imp__BackupSeek, 0
		jz	loc_404D27
		push	0		; hTemplateFile
		push	2000000h	; dwFlagsAndAttributes
		push	3		; dwCreationDisposition
		push	0		; lpSecurityAttributes
		push	1		; dwShareMode
		push	80000000h	; dwDesiredAccess
		mov	ecx, [ebp+8]
		push	ecx		; lpFileName
		call	CreateFileW
		mov	edi, eax
		cmp	edi, 0FFFFFFFFh
		jnz	short loc_404BEA
		xor	eax, eax
		jmp	loc_404D29
; ---------------------------------------------------------------------------

loc_404BEA:				; CODE XREF: .text:00404BE1j
		mov	ecx, esi
		xor	edx, edx
		shl	ecx, 6
		mov	[ebp-1Ch], edx
		add	ecx, esi
		mov	eax, [ebp+0Ch]
		cmp	esi, [ebp+10h]
		lea	ecx, [esi+ecx*2]
		lea	ebx, [eax+ecx*4]
		jge	loc_404D04

loc_404C08:				; CODE XREF: .text:00404CFEj
		lea	eax, [ebp-1Ch]
		lea	edx, [ebp-0Ch]
		push	eax		; _DWORD
		push	0		; _DWORD
		push	0		; _DWORD
		push	edx		; _DWORD
		lea	ecx, [ebp-24Ch]
		push	14h		; _DWORD
		push	ecx		; _DWORD
		push	edi		; _DWORD
		call	_imp__BackupRead
		test	eax, eax
		jz	loc_404D04
		cmp	dword ptr [ebp-0Ch], 14h
		jnz	loc_404D04
		cmp	dword ptr [ebp-24Ch], 4
		jnz	loc_404CE1
		cmp	dword ptr [ebp-23Ch], 0
		jbe	loc_404CE1
		mov	dword ptr [ebp-28h], 206h
		mov	eax, [ebp-28h]
		cmp	eax, [ebp-23Ch]
		jnb	short loc_404C67
		lea	edx, [ebp-28h]
		jmp	short loc_404C6D
; ---------------------------------------------------------------------------

loc_404C67:				; CODE XREF: .text:00404C60j
		lea	edx, [ebp-23Ch]

loc_404C6D:				; CODE XREF: .text:00404C65j
		mov	eax, [edx]
		lea	ecx, [ebp-1Ch]
		mov	[ebp-8], eax
		push	ecx		; _DWORD
		push	0		; _DWORD
		lea	eax, [ebp-0Ch]
		push	0		; _DWORD
		push	eax		; _DWORD
		mov	edx, [ebp-8]
		lea	ecx, [ebp-234h]
		push	edx		; _DWORD
		push	ecx		; _DWORD
		push	edi		; _DWORD
		call	_imp__BackupRead
		test	eax, eax
		jz	short loc_404CE1
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_404CDA
		cmp	esi, [ebp+10h]
		jge	short loc_404CDA
		mov	ecx, esi
		mov	eax, [ebp-8]
		shl	ecx, 6
		push	eax		; n
		add	ecx, esi
		lea	edx, [ebp-234h]
		push	edx		; src
		lea	ecx, [esi+ecx*2]
		shl	ecx, 2
		add	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebp-8]
		shr	eax, 1
		mov	word ptr [ebx+eax*2], 0
		mov	edx, [ebp-244h]
		mov	[ebx+208h], edx

loc_404CDA:				; CODE XREF: .text:00404C98j
					; .text:00404C9Dj
		inc	esi
		add	ebx, 20Ch

loc_404CE1:				; CODE XREF: .text:00404C3Dj
					; .text:00404C4Aj ...
		lea	ecx, [ebp-1Ch]
		push	ecx		; _DWORD
		lea	eax, [ebp-14h]
		push	eax		; _DWORD
		lea	edx, [ebp-10h]
		push	edx		; _DWORD
		push	7FFFFFFFh	; _DWORD
		push	0FFFFFFFFh	; _DWORD
		push	edi		; _DWORD
		call	_imp__BackupSeek
		cmp	esi, [ebp+10h]
		jl	loc_404C08

loc_404D04:				; CODE XREF: .text:00404C02j
					; .text:00404C26j ...
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_404D21
		lea	ecx, [ebp-1Ch]
		push	ecx		; _DWORD
		push	0		; _DWORD
		push	1		; _DWORD
		lea	eax, [ebp-0Ch]
		push	eax		; _DWORD
		push	0		; _DWORD
		push	0		; _DWORD
		push	edi		; _DWORD
		call	_imp__BackupRead

loc_404D21:				; CODE XREF: .text:00404D08j
		push	edi		; hObject
		call	CloseHandle

loc_404D27:				; CODE XREF: .text:00404BA1j
					; .text:00404BAEj ...
		mov	eax, esi

loc_404D29:				; CODE XREF: .text:00404A69j
					; .text:00404BE5j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
		