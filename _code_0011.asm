.code

; Exported entry  37. _Browsefilename
; Exported entry 412. Browsefilename

; int __cdecl Browsefilename(wchar_t *_title, wchar_t *_name, wchar_t *args, wchar_t *currdir, wchar_t *defext, HWND hwnd, int mode)
		public Browsefilename
Browsefilename:				; CODE XREF: .text:0040AD64p
					; .text:0040B0F2p ...
		push	ebp		; _Browsefilename
		mov	ebp, esp
		push	eax
		mov	eax, 7

loc_405905:				; CODE XREF: .text:0040590Dj
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_405905
		mov	eax, [ebp-4]
		add	esp, 0FFFFF988h
		push	ebx
		push	esi
		push	edi
		mov	esi, offset aAboutOllydbg ; "About OllyDbg"
;__DebugBreak
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_40592C
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_405933

loc_40592C:				; CODE XREF: .text:00405924j
		xor	eax, eax
		jmp	loc_4067CF
; ---------------------------------------------------------------------------

loc_405933:				; CODE XREF: .text:0040592Aj
		mov	edx, [ebp+20h]
		and	edx, 0F0000000h
		cmp	edx, 10000000h
		jnz	short loc_405962
		cmp	_imp__BackupRead, 0
		jz	short loc_405956
		cmp	_imp__BackupSeek, 0
		jnz	short loc_405962

loc_405956:				; CODE XREF: .text:0040594Bj
		mov	ecx, [ebp+20h]
		and	ecx, 0FFFFFFFh
		mov	[ebp+20h], ecx

loc_405962:				; CODE XREF: .text:00405942j
					; .text:00405954j
		push	offset a6	; dst
		lea	eax, [ebp-441Ah]
		push	eax		; void *
		lea	edx, [ebp-4218h]
		push	edx		; void *
		lea	ecx, [ebp-218h]
		push	ecx		; dest
		lea	eax, [ebp-14h]
		push	eax		; int
		mov	edx, [ebp+0Ch]
		push	edx		; s
		call	_wFnsplit
		add	esp, 18h
		lea	ecx, [ebp-218h]
		lea	eax, [ebp-14h]
		lea	edx, [ebp-4624h]
		push	0		; a6
		push	0		; ext
		push	0		; _name
		push	ecx		; dir
		push	eax		; drive
		push	edx		; path
		call	_wFnmerge
		add	esp, 18h
		lea	ecx, [ebp-441Ah]
		push	ecx		; src
		lea	eax, [ebp-4218h]
		push	eax		; dest
		call	_wcscat
		add	esp, 8
		mov	word ptr [ebp-441Ch], 2Ah
		lea	edx, a__21;[esi+0C58h]
		push	edx		; s2
		mov	ecx, [ebp+18h]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4059EB
		lea	eax, a_c_cpp_h_hpp_a;[esi+0C60h]
		mov	[ebp+18h], eax

loc_4059EB:				; CODE XREF: .text:004059E0j
		lea	edx, [ebp-441Ch]
		push	edx		; s
		call	_wcslen
		mov	edi, eax
		xor	eax, eax
		pop	ecx
		mov	[ebp-4], eax
		mov	edx, [ebp+18h]
		mov	ebx, edx
		jmp	short loc_405A5E
; ---------------------------------------------------------------------------

loc_405A06:				; CODE XREF: .text:00405A64j
		cmp	ax, 2Ah
		jnz	short loc_405A58
		push	edi		; maxlen
		lea	eax, [ebp-441Ch]
		push	eax		; s2
		mov	edx, [ebp-4]
		add	edx, edx
		add	edx, [ebp+18h]
		push	edx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_405A58
		mov	ecx, [ebp-4]
		add	ecx, edi
		mov	eax, [ebp+18h]
		mov	ax, [eax+ecx*2]
		cmp	ax, 3Bh
		jz	short loc_405A66
		mov	edx, [ebp-4]
		add	edx, edi
		mov	ecx, [ebp+18h]
		cmp	ax, 7Ch
		jz	short loc_405A66
		mov	eax, [ebp-4]
		add	eax, edi
		mov	edx, [ebp+18h]
		cmp	word ptr [edx+eax*2], 0
		jz	short loc_405A66

loc_405A58:				; CODE XREF: .text:00405A0Aj
					; .text:00405A27j
		inc	dword ptr [ebp-4]
		add	ebx, 2

loc_405A5E:				; CODE XREF: .text:00405A04j
		mov	ax, [ebx]
		test	ax, ax
		jnz	short loc_405A06

loc_405A66:				; CODE XREF: .text:00405A39j
					; .text:00405A47j ...
		mov	edx, [ebp+18h]
		mov	ecx, [ebp-4]
		cmp	word ptr [edx+ecx*2], 0
		jz	short loc_405A7C
		mov	dword ptr [ebp-8], 1
		jmp	short loc_405A81
; ---------------------------------------------------------------------------

loc_405A7C:				; CODE XREF: .text:00405A71j
		xor	eax, eax
		mov	[ebp-8], eax

loc_405A81:				; CODE XREF: .text:00405A7Aj
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-4], edx
		mov	[ebp-0Ch], ecx
		xor	ebx, ebx
		jmp	loc_406391
; ---------------------------------------------------------------------------

loc_405A92:				; CODE XREF: .text:0040639Bj
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_405AA4
		mov	dword ptr [ebp-8], 1
		jmp	loc_405B35
; ---------------------------------------------------------------------------

loc_405AA4:				; CODE XREF: .text:00405A96j
		cmp	dword ptr [ebp-8], 1
		jnz	short loc_405B18
		xor	edi, edi
		lea	eax, [ebp-441Ch]
		mov	[ebp-18h], eax
		mov	edx, [ebp+18h]
		mov	ecx, [ebp-4]
		lea	eax, [edx+ecx*2]
		jmp	short loc_405AD4
; ---------------------------------------------------------------------------

loc_405AC0:				; CODE XREF: .text:00405AE6j
		mov	dx, [eax]
		mov	ecx, [ebp-18h]
		add	eax, 2
		inc	edi
		mov	[ecx], dx
		add	dword ptr [ebp-18h], 2
		inc	dword ptr [ebp-4]

loc_405AD4:				; CODE XREF: .text:00405ABEj
		cmp	edi, 0FFh
		jge	short loc_405AE8
		cmp	word ptr [eax],	7Ch
		jz	short loc_405AE8
		cmp	word ptr [eax],	0
		jnz	short loc_405AC0

loc_405AE8:				; CODE XREF: .text:00405ADAj
					; .text:00405AE0j
		mov	word ptr [ebp+edi*2-441Ch], 0
		mov	eax, [ebp+18h]
		mov	edx, [ebp-4]
		cmp	word ptr [eax+edx*2], 7Ch
		jnz	short loc_405B02
		inc	dword ptr [ebp-4]

loc_405B02:				; CODE XREF: .text:00405AFDj
		mov	ecx, [ebp+18h]
		mov	eax, [ebp-4]
		cmp	word ptr [ecx+eax*2], 0
		jnz	short loc_405B35
		mov	dword ptr [ebp-8], 2
		jmp	short loc_405B35
; ---------------------------------------------------------------------------

loc_405B18:				; CODE XREF: .text:00405AA8j
		lea	edx, a__21;[esi+0C58h] "*.*"
		push	edx		; src
		lea	ecx, [ebp-441Ch]
		push	ecx		; dst
		call	_wcscpy
		mov	dword ptr [ebp-8], 3
		add	esp, 8

loc_405B35:				; CODE XREF: .text:00405A9Fj
					; .text:00405B0Dj ...
		cmp	word ptr [ebp-441Ch], 2Ah
		jnz	loc_406391
		cmp	word ptr [ebp-441Ah], 2Eh
		jnz	loc_406391
		cmp	word ptr [ebp-4418h], 0
		jz	loc_406391
		lea	eax, [ebp-441Ch]
		push	eax		; s
		call	__lwcslwr
		pop	ecx
		xor	edi, edi
		cmp	edi, [ebp-0Ch]
		jge	short loc_405B9A

loc_405B73:				; CODE XREF: .text:00405B98j
		mov	edx, edi
		lea	eax, [ebp-441Ch]
		shl	edx, 9
		lea	ecx, [ebp-7624h]
		add	edx, ecx
		push	eax		; s2
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_405B9A
		inc	edi
		cmp	edi, [ebp-0Ch]
		jl	short loc_405B73

loc_405B9A:				; CODE XREF: .text:00405B71j
					; .text:00405B92j
		cmp	edi, [ebp-0Ch]
		jl	loc_406391
		lea	eax, [ebp-441Ch]
		push	eax		; src
		mov	edx, [ebp-0Ch]
		shl	edx, 9
		lea	ecx, [ebp-7624h]
		add	edx, ecx
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		lea	eax, [ebx+200h]
		cmp	eax, 800h
		jge	loc_40638E
		lea	edx, a__21;[esi+0C58h] "*.*"
		push	edx		; s2
		lea	ecx, [ebp-441Ch]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_405C1B
		lea	eax, aAnyFile_;[esi+0CECh]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, ebx
		add	edx, edx
		lea	ecx, [ebp-5624h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_405C1B:				; CODE XREF: .text:00405BEAj
		lea	eax, a_exe_dll;[esi+0D0Ah]
		push	eax		; s2
		lea	edx, [ebp-441Ch]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_405C64
		lea	ecx, aExecutableFile;[esi+0D22h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-5624h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_405C64:				; CODE XREF: .text:00405C33j
		lea	ecx, a_exe_dll_lnk;[esi+0D6Ch]
		push	ecx		; s2
		lea	eax, [ebp-441Ch]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_405CAD
		lea	edx, aExecutableDllO;[esi+0D90h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-5624h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_405CAD:				; CODE XREF: .text:00405C7Cj
		lea	edx, a_exe_0;[esi+0DE8h]
		push	edx		; s2
		lea	ecx, [ebp-441Ch]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_405CF6
		lea	eax, aExecutableFi_3;[esi+0DF4h]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, ebx
		add	edx, edx
		lea	ecx, [ebp-5624h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_405CF6:				; CODE XREF: .text:00405CC5j
		lea	eax, $CTW0("*.dll");[esi+0D16h]
		push	eax		; s2
		lea	edx, [ebp-441Ch]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_405D3F
		lea	ecx, aDynamicLinkL_1;[esi+0E24h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-5624h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_405D3F:				; CODE XREF: .text:00405D0Ej
		lea	ecx, $CTW0("*.lnk");[esi+0D84h]
		push	ecx		; s2
		lea	eax, [ebp-441Ch]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_405D88
		lea	edx, aDesktopLink_ln;[esi+0E5Eh]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-5624h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_405D88:				; CODE XREF: .text:00405D57j
		lea	edx, $CTW0("*.obj;*.lib;*.o;*.a");[esi+0CC4h]
		push	edx		; s2
		lea	ecx, [ebp-441Ch]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_405DD1
		lea	eax, aObjectFileOrLi;[esi+0E88h]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, ebx
		add	edx, edx
		lea	ecx, [ebp-5624h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_405DD1:				; CODE XREF: .text:00405DA0j
		lea	eax, a_obj;[esi+0EE2h]
		push	eax		; s2
		lea	edx, [ebp-441Ch]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_405E1A
		lea	ecx, aObjectFile_obj;[esi+0EEEh]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-5624h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_405E1A:				; CODE XREF: .text:00405DE9j
		lea	ecx, a_lib;[esi+0F16h]
		push	ecx		; s2
		lea	eax, [ebp-441Ch]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_405E63
		lea	edx, aImportOrObject;[esi+0F22h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-5624h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_405E63:				; CODE XREF: .text:00405E32j
		lea	edx, a_c_cpp_h_hpp_a;[esi+0F64h]
		push	edx		; s2
		lea	ecx, [ebp-441Ch]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_405EAC
		lea	eax, aSource_c_cpp_h;[esi+0FA4h]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, ebx
		add	edx, edx
		lea	ecx, [ebp-5624h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_405EAC:				; CODE XREF: .text:00405E7Bj
		lea	eax, a_c_cpp;[esi+0FF6h]
		push	eax		; s2
		lea	edx, [ebp-441Ch]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_405EF5
		lea	ecx, aCCSource_c_cpp;[esi+100Ah]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-5624h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_405EF5:				; CODE XREF: .text:00405EC4j
		lea	ecx, a_c;[esi+103Ch]
		push	ecx		; s2
		lea	eax, [ebp-441Ch]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_405F3E
		lea	edx, aCSource_c;[esi+1044h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-5624h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_405F3E:				; CODE XREF: .text:00405F0Dj
		lea	edx, $CTW0("*.cpp");[esi+0FFEh]
		push	edx		; s2
		lea	ecx, [ebp-441Ch]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_405F87
		lea	eax, aCSource_cpp;[esi+1062h]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, ebx
		add	edx, edx
		lea	ecx, [ebp-5624h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_405F87:				; CODE XREF: .text:00405F56j
		lea	eax, a_h_hpp;[esi+1088h]
		push	eax		; s2
		lea	edx, [ebp-441Ch]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_405FD0
		lea	ecx, aHeaderFile_h_h;[esi+109Ch]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-5624h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_405FD0:				; CODE XREF: .text:00405F9Fj
		lea	ecx, a_h;[esi+10CCh]
		push	ecx		; s2
		lea	eax, [ebp-441Ch]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_406019
		lea	edx, aCHeaderFile_h;[esi+10D4h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-5624h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_406019:				; CODE XREF: .text:00405FE8j
		lea	edx, $CTW0("*.hpp");[esi+1090h]
		push	edx		; s2
		lea	ecx, [ebp-441Ch]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_406062
		lea	eax, aCHeaderFile_hp;[esi+10FCh]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, ebx
		add	edx, edx
		lea	ecx, [ebp-5624h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_406062:				; CODE XREF: .text:00406031j
		lea	eax, a_asm;[esi+112Ch]
		push	eax		; s2
		lea	edx, [ebp-441Ch]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4060AB
		lea	ecx, aAssemblerSourc;[esi+1138h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-5624h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_4060AB:				; CODE XREF: .text:0040607Aj
		lea	ecx, $CTW0("*.pas");[esi+0F98h]
		push	ecx		; s2
		lea	eax, [ebp-441Ch]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4060F4
		lea	edx, aDelphiPascalSo;[esi+116Ah]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-5624h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_4060F4:				; CODE XREF: .text:004060C3j
		lea	edx, a_txt_1;[esi+11A4h]
		push	edx		; s2
		lea	ecx, [ebp-441Ch]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_40613D
		lea	eax, aTextFile_txt;[esi+11B0h]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, ebx
		add	edx, edx
		lea	ecx, [ebp-5624h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_40613D:				; CODE XREF: .text:0040610Cj
		lea	eax, a_bak;[esi+11D4h]
		push	eax		; s2
		lea	edx, [ebp-441Ch]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_406186
		lea	ecx, aBackupFile_bak;[esi+11E0h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-5624h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_406186:				; CODE XREF: .text:00406155j
		lea	ecx, a_arg;[esi+1208h]
		push	ecx		; s2
		lea	eax, [ebp-441Ch]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4061CF
		lea	edx, aArgumentDescri;[esi+1214h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-5624h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_4061CF:				; CODE XREF: .text:0040619Ej
		lea	edx, a_hlp_chm_0;[esi+1250h]
		push	edx		; s2
		lea	ecx, [ebp-441Ch]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_406218
		lea	eax, aHelpFile_hlp_c;[esi+1268h]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, ebx
		add	edx, edx
		lea	ecx, [ebp-5624h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_406218:				; CODE XREF: .text:004061E7j
		lea	eax, a_bin_1;[esi+1298h]
		push	eax		; s2
		lea	edx, [ebp-441Ch]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_406261
		lea	ecx, aBinaryFile_bin;[esi+12A4h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-5624h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_406261:				; CODE XREF: .text:00406230j
		lea	ecx, a_udd_3;[esi+12CCh]
		push	ecx		; s2
		lea	eax, [ebp-441Ch]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4062AA
		lea	edx, aUserDataFile_u;[esi+12D8h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-5624h]
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_406369
; ---------------------------------------------------------------------------

loc_4062AA:				; CODE XREF: .text:00406279j
		lea	edx, a_udl_2;[esi+1306h]
		push	edx		; s2
		lea	ecx, [ebp-441Ch]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4062F0
		lea	eax, aUserImageLibra;[esi+1312h]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, ebx
		add	edx, edx
		lea	ecx, [ebp-5624h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_406369
; ---------------------------------------------------------------------------

loc_4062F0:				; CODE XREF: .text:004062C2j
		lea	eax, a_ini_3;[esi+1348h]
		push	eax		; s2
		lea	edx, [ebp-441Ch]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_406336
		lea	ecx, aInitialization;[esi+1354h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, ebx
		add	eax, eax
		lea	edx, [ebp-5624h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_406369
; ---------------------------------------------------------------------------

loc_406336:				; CODE XREF: .text:00406308j
		lea	ecx, [ebp-441Ch]
		push	ecx
		lea	eax, [ebp-441Ch]
		push	eax
		lea	edx, a_64sFile_64s;[esi+138Ch]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; format
		mov	ecx, ebx
		add	ecx, ecx
		lea	eax, [ebp-5624h]
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 10h
		add	ebx, eax

loc_406369:				; CODE XREF: .text:00405C16j
					; .text:00405C5Fj ...
		inc	ebx
		lea	edx, [ebp-441Ch]
		mov	ecx, ebx
		push	edx		; src
		lea	eax, [ebp-5624h]
		add	ecx, ecx
		add	ecx, eax
		push	100h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		inc	ebx

loc_40638E:				; CODE XREF: .text:00405BCCj
		inc	dword ptr [ebp-0Ch]

loc_406391:				; CODE XREF: .text:00405A8Dj
					; .text:00405B3Dj ...
		cmp	dword ptr [ebp-0Ch], 10h
		jge	short loc_4063A1
		cmp	dword ptr [ebp-8], 3
		jl	loc_405A92

loc_4063A1:				; CODE XREF: .text:00406395j
		mov	word ptr [ebp+ebx*2-5624h], 0
		mov	dword ptr [ebp-767Ch], 4Ch
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_4063C0
		mov	edx, [ebp+1Ch]
		jmp	short loc_4063C6
; ---------------------------------------------------------------------------

loc_4063C0:				; CODE XREF: .text:004063B9j
		mov	edx, hwollymain

loc_4063C6:				; CODE XREF: .text:004063BEj
		mov	[ebp-7678h], edx
		mov	eax, g_hInstance
		mov	[ebp-7674h], eax
		lea	ecx, [ebp-5624h]
		mov	[ebp-7670h], ecx
		xor	eax, eax
		mov	[ebp-766Ch], eax
		xor	edx, edx
		mov	[ebp-7668h], edx
		lea	ecx, [ebp-4218h]
		mov	dword ptr [ebp-7664h], 1
		xor	eax, eax
		mov	[ebp-7660h], ecx
		xor	edx, edx
		mov	[ebp-7658h], eax
		mov	[ebp-7654h], edx
		cmp	word ptr [ebp-4624h], 0
		jnz	short loc_406427
		xor	ecx, ecx
		jmp	short loc_40642D
; ---------------------------------------------------------------------------

loc_406427:				; CODE XREF: .text:00406421j
		lea	ecx, [ebp-4624h]

loc_40642D:				; CODE XREF: .text:00406425j
		mov	[ebp-7650h], ecx
		mov	eax, [ebp+8]
		mov	[ebp-764Ch], eax
		mov	edx, [ebp+18h]
		cmp	word ptr [edx],	2Ah
		jnz	short loc_40645D
		mov	eax, [ebp+18h]
		cmp	word ptr [eax+2], 2Eh
		jnz	short loc_40645D
		mov	edx, [ebp+18h]
		add	edx, 4
		mov	[ebp-7640h], edx
		jmp	short loc_406465
; ---------------------------------------------------------------------------

loc_40645D:				; CODE XREF: .text:00406443j
					; .text:0040644Dj
		xor	ecx, ecx
		mov	[ebp-7640h], ecx

loc_406465:				; CODE XREF: .text:0040645Bj
		xor	eax, eax
		mov	[ebp-763Ch], eax
		mov	dword ptr [ebp-7638h], offset loc_404D30
		mov	word ptr [ebp-7644h], 0
		mov	dword ptr [ebp-7648h], 0A9080Ch
		mov	edx, [ebp+20h]
		and	edx, 0F0000000h
		cmp	edx, 30000000h
		jg	short loc_4064B6
		jz	loc_40653B
		sub	edx, 10000000h
		jz	short loc_4064D3
		sub	edx, 10000000h
		jz	short loc_4064F5
		jmp	loc_40659A
; ---------------------------------------------------------------------------

loc_4064B6:				; CODE XREF: .text:00406499j
		sub	edx, 40000000h
		jz	loc_40655A
		sub	edx, 10000000h
		jz	loc_40657C
		jmp	loc_40659A
; ---------------------------------------------------------------------------

loc_4064D3:				; CODE XREF: .text:004064A7j
		mov	dword ptr [ebp-765Ch], 104h
		or	dword ptr [ebp-7648h], 60h
		lea	ecx, aDia_ofnhook_st;[esi+13B2h]
		mov	[ebp-7634h], ecx
		jmp	loc_4065AC
; ---------------------------------------------------------------------------

loc_4064F5:				; CODE XREF: .text:004064AFj
		mov	dword ptr [ebp-765Ch], 104h
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_406512
		mov	eax, [ebp+20h]
		and	eax, 0FFFFFFFh
		mov	[ebp+20h], eax
		jmp	short loc_406531
; ---------------------------------------------------------------------------

loc_406512:				; CODE XREF: .text:00406503j
		or	dword ptr [ebp-7648h], 1060h
		lea	edx, aDia_ofnhook_ex;[esi+13D8h]
		mov	[ebp-7634h], edx
		mov	ecx, [ebp+10h]
		mov	arglist, ecx

loc_406531:				; CODE XREF: .text:00406510j
		mov	eax, [ebp+14h]
		mov	dir, eax
		jmp	short loc_4065AC
; ---------------------------------------------------------------------------

loc_40653B:				; CODE XREF: .text:0040649Bj
		mov	dword ptr [ebp-765Ch], 104h
		or	dword ptr [ebp-7648h], 60h
		lea	edx, aDia_ofnhook_te;[esi+13F8h]
		mov	[ebp-7634h], edx
		jmp	short loc_4065AC
; ---------------------------------------------------------------------------

loc_40655A:				; CODE XREF: .text:004064BCj
		mov	dword ptr [ebp-765Ch], 2000h
		or	dword ptr [ebp-7648h], 1260h
		lea	ecx, aDia_ofnhook_gr;[esi+141Ah]
		mov	[ebp-7634h], ecx
		jmp	short loc_4065AC
; ---------------------------------------------------------------------------

loc_40657C:				; CODE XREF: .text:004064C8j
		mov	dword ptr [ebp-765Ch], 2000h
		or	dword ptr [ebp-7648h], 1200h
		xor	eax, eax
		mov	[ebp-7634h], eax
		jmp	short loc_4065AC
; ---------------------------------------------------------------------------

loc_40659A:				; CODE XREF: .text:004064B1j
					; .text:004064CEj
		mov	dword ptr [ebp-765Ch], 104h
		xor	edx, edx
		mov	[ebp-7634h], edx

loc_4065AC:				; CODE XREF: .text:004064F0j
					; .text:00406539j ...
		test	byte ptr [ebp+23h], 8
		mov	ecx, [ebp+20h]
		mov	dword_57D9C8, ecx
		jz	short loc_4065CB
		lea	eax, [ebp-767Ch]
		push	eax		; LPOPENFILENAMEW
		call	GetSaveFileNameW
		mov	edi, eax
		jmp	short loc_4065D9
; ---------------------------------------------------------------------------

loc_4065CB:				; CODE XREF: .text:004065B9j
		lea	eax, [ebp-767Ch]
		push	eax		; LPOPENFILENAMEW
		call	GetOpenFileNameW
		mov	edi, eax

loc_4065D9:				; CODE XREF: .text:004065C9j
		test	edi, edi
		jnz	short loc_406624
		call	CommDlgExtendedError
		test	eax, eax
		jz	short loc_406624
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-7638h], eax
		mov	dword ptr [ebp-7648h], 21080Ch
		mov	[ebp-7634h], edx
		test	byte ptr [ebp+23h], 8
		jz	short loc_406616
		lea	ecx, [ebp-767Ch]
		push	ecx		; LPOPENFILENAMEW
		call	GetSaveFileNameW
		mov	edi, eax
		jmp	short loc_406624
; ---------------------------------------------------------------------------

loc_406616:				; CODE XREF: .text:00406604j
		lea	eax, [ebp-767Ch]
		push	eax		; LPOPENFILENAMEW
		call	GetOpenFileNameW
		mov	edi, eax

loc_406624:				; CODE XREF: .text:004065DBj
					; .text:004065E4j ...
		test	edi, edi
		jnz	short loc_40662F
		xor	eax, eax
		jmp	loc_4067CF
; ---------------------------------------------------------------------------

loc_40662F:				; CODE XREF: .text:00406626j
		mov	edx, [ebp+20h]
		and	edx, 0F0000000h
		cmp	edx, 40000000h
		jnz	short loc_406695
		and	dword_57D9C8, 0F00000FFh
		lea	ecx, [ebp-4218h]
		push	ecx		; s
		call	_wcslen
		pop	ecx
		movzx	edx, word ptr [ebp-7644h]
		cmp	eax, edx
		jnb	short loc_40666E
		or	dword_57D9C8, 400000h
		jmp	short loc_406678
; ---------------------------------------------------------------------------

loc_40666E:				; CODE XREF: .text:00406660j
		or	dword_57D9C8, 800000h

loc_406678:				; CODE XREF: .text:0040666Cj
		push	2000h		; n
		lea	eax, [ebp-4218h]
		push	eax		; src
		mov	ecx, [ebp+0Ch]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_4067CA
; ---------------------------------------------------------------------------

loc_406695:				; CODE XREF: .text:0040663Ej
		mov	eax, [ebp+20h]
		and	eax, 0F0000000h
		cmp	eax, 50000000h
		jnz	short loc_4066F9
		and	dword_57D9C8, 0F0000000h
		lea	edx, [ebp-4218h]
		push	edx		; s
		call	_wcslen
		pop	ecx
		movzx	ecx, word ptr [ebp-7644h]
		cmp	eax, ecx
		jnb	short loc_4066D2
		or	dword_57D9C8, 400000h
		jmp	short loc_4066DC
; ---------------------------------------------------------------------------

loc_4066D2:				; CODE XREF: .text:004066C4j
		or	dword_57D9C8, 800000h

loc_4066DC:				; CODE XREF: .text:004066D0j
		push	2000h		; n
		lea	eax, [ebp-4218h]
		push	eax		; src
		mov	edx, [ebp+0Ch]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_4067CA
; ---------------------------------------------------------------------------

loc_4066F9:				; CODE XREF: .text:004066A2j
		push	0		; dst
		lea	ecx, [ebp-441Ch]
		push	ecx		; void *
		lea	eax, [ebp-4624h]
		push	eax		; void *
		lea	edx, [ebp-218h]
		push	edx		; dest
		lea	ecx, [ebp-14h]
		push	ecx		; int
		lea	eax, [ebp-4218h]
		push	eax		; s
		call	_wFnsplit
		add	esp, 18h
		cmp	word ptr [ebp-14h], 0
		jnz	short loc_406751
		cmp	word ptr [ebp-218h], 0
		jnz	short loc_406751
		push	0		; dst
		push	0		; void *
		push	0		; void *
		lea	edx, [ebp-218h]
		push	edx		; dest
		lea	ecx, [ebp-14h]
		push	ecx		; int
		mov	eax, [ebp+0Ch]
		push	eax		; s
		call	_wFnsplit
		add	esp, 18h

loc_406751:				; CODE XREF: .text:00406728j
					; .text:00406732j
		mov	edx, [ebp+20h]
		and	edx, 0F0000000h
		cmp	edx, 10000000h
		jnz	short loc_406773
		cmp	a6, 3Ch
		jz	short loc_406773
		mov	ecx, offset a6
		jmp	short loc_406775
; ---------------------------------------------------------------------------

loc_406773:				; CODE XREF: .text:00406760j
					; .text:0040676Aj
		xor	ecx, ecx

loc_406775:				; CODE XREF: .text:00406771j
		push	ecx		; a6
		lea	eax, [ebp-441Ch]
		push	eax		; ext
		lea	edx, [ebp-4624h]
		push	edx		; _name
		lea	eax, [ebp-218h]
		push	eax		; dir
		lea	edx, [ebp-14h]
		push	edx		; drive
		mov	ecx, [ebp+0Ch]
		push	ecx		; path
		call	_wFnmerge
		add	esp, 18h
		mov	eax, [ebp+20h]
		and	eax, 0F0000000h
		cmp	eax, 30000000h
		jnz	short loc_4067B6
		and	dword_57D9C8, 0F00E0000h
		jmp	short loc_4067C0
; ---------------------------------------------------------------------------

loc_4067B6:				; CODE XREF: .text:004067A8j
		and	dword_57D9C8, 0F0000000h

loc_4067C0:				; CODE XREF: .text:004067B4j
		or	dword_57D9C8, 800000h

loc_4067CA:				; CODE XREF: .text:00406690j
					; .text:004066F4j
		mov	eax, dword_57D9C8

loc_4067CF:				; CODE XREF: .text:0040592Ej
					; .text:0040662Aj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  38. _Browsedirectory
; Exported entry 411. Browsedirectory

; bool __cdecl Browsedirectory(HWND hw,	wchar_t	*comment, wchar_t *dir)
		public Browsedirectory
Browsedirectory:			; CODE XREF: .text:004053E3p
					; .text:0042CD4Ap ...
		push	ebp		; _Browsedirectory
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		push	ebx
		push	esi
		mov	ebx, [ebp+10h]
		mov	esi, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4067F1
		xor	eax, eax
		jmp	loc_4068C6
; ---------------------------------------------------------------------------

loc_4067F1:				; CODE XREF: .text:004067E8j
		cmp	_imp__SHBrowseForFolderW, 0
		jz	short loc_406803
		cmp	_imp__SHGetPathFromIDListW, 0
		jnz	short loc_40680A

loc_406803:				; CODE XREF: .text:004067F8j
		xor	eax, eax
		jmp	loc_4068C6
; ---------------------------------------------------------------------------

loc_40680A:				; CODE XREF: .text:00406801j
		cmp	word ptr [ebx],	0
		jz	short loc_406824
		cmp	_imp__PathIsDirectoryW,	0
		jz	short loc_406837
		push	ebx		; _DWORD
		call	_imp__PathIsDirectoryW
		test	eax, eax
		jnz	short loc_406837

loc_406824:				; CODE XREF: .text:0040680Ej
		push	offset ollydir	; src
		push	104h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_406837:				; CODE XREF: .text:00406817j
					; .text:00406822j
		cmp	_imp__SHGetMalloc, 0
		jz	short loc_40684E
		lea	edx, [ebp-4]
		push	edx		; _DWORD
		call	_imp__SHGetMalloc
		test	eax, eax
		jz	short loc_406853

loc_40684E:				; CODE XREF: .text:0040683Ej
		xor	ecx, ecx
		mov	[ebp-4], ecx

loc_406853:				; CODE XREF: .text:0040684Cj
		test	esi, esi
		jnz	short loc_40685E
		mov	eax, hwollymain
		jmp	short loc_406860
; ---------------------------------------------------------------------------

loc_40685E:				; CODE XREF: .text:00406855j
		mov	eax, esi

loc_406860:				; CODE XREF: .text:0040685Cj
		mov	[ebp-24h], eax
		xor	edx, edx
		mov	[ebp-20h], edx
		mov	[ebp-1Ch], ebx
		mov	ecx, [ebp+0Ch]
		xor	eax, eax
		mov	[ebp-18h], ecx
		lea	edx, [ebp-24h]
		mov	dword ptr [ebp-14h], 34h
		mov	dword ptr [ebp-10h], offset loc_401A84
		mov	[ebp-0Ch], ebx
		mov	[ebp-8], eax
		push	edx		; _DWORD
		call	_imp__SHBrowseForFolderW
		mov	esi, eax
		test	esi, esi
		jnz	short loc_40689B
		xor	ebx, ebx
		jmp	short loc_4068B0
; ---------------------------------------------------------------------------

loc_40689B:				; CODE XREF: .text:00406895j
		push	ebx		; _DWORD
		push	esi		; _DWORD
		call	_imp__SHGetPathFromIDListW
		test	eax, eax
		jnz	short loc_4068AB
		xor	ebx, ebx
		jmp	short loc_4068B0
; ---------------------------------------------------------------------------

loc_4068AB:				; CODE XREF: .text:004068A5j
		mov	ebx, 1

loc_4068B0:				; CODE XREF: .text:00406899j
					; .text:004068A9j
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4068C4
		test	esi, esi
		jz	short loc_4068C4
		push	esi
		mov	eax, [ebp-4]
		push	eax
		mov	edx, [eax]
		call	dword ptr [edx+14h]

loc_4068C4:				; CODE XREF: .text:004068B4j
					; .text:004068B8j
		mov	eax, ebx

loc_4068C6:				; CODE XREF: .text:004067ECj
					; .text:00406805j
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  39. _Relativizepath
; Exported entry 690. Relativizepath

; void __cdecl Relativizepath(wchar_t *path)
		public Relativizepath
Relativizepath:				; CODE XREF: .text:0040CE45p
					; .text:0040CED6p
		push	ebp		; _Relativizepath
		mov	ebp, esp
		add	esp, 0FFFFFDF8h
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_406931
		cmp	_imp__PathIsDirectoryW,	0
		jz	short loc_406931
		cmp	_imp__PathRelativePathToW, 0
		jz	short loc_406931
		push	ebx		; _DWORD
		call	_imp__PathIsDirectoryW
		mov	edx, 10h
		test	eax, eax
		jnz	short loc_406902
		add	edx, 0FFFFFFF0h

loc_406902:				; CODE XREF: .text:004068FDj
		push	edx		; _DWORD
		push	ebx		; _DWORD
		push	10h		; _DWORD
		lea	eax, [ebp-208h]
		push	offset ollydir	; _DWORD
		push	eax		; _DWORD
		call	_imp__PathRelativePathToW
		test	eax, eax
		jz	short loc_406931
		lea	ecx, [ebp-208h]
		push	ecx		; src
		push	104h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_406931:				; CODE XREF: .text:004068DBj
					; .text:004068E4j ...
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  40. _Absolutizepath
; Exported entry 389. Absolutizepath

; void __cdecl Absolutizepath(wchar_t *path)
		public Absolutizepath
Absolutizepath:				; CODE XREF: .text:0040D2BFp
					; .text:0040D39Cp
		push	ebp		; _Absolutizepath
		mov	ebp, esp
		add	esp, 0FFFFF7E0h
		push	ebx
		push	esi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	loc_406A0F
		push	4		; n
		push	offset a__50	; s2
		push	esi		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_40697A
		push	6		; n
		push	offset a___5	; s2
		push	esi		; s1
		call	_memcmp
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_406A0F

loc_40697A:				; CODE XREF: .text:00406960j
		cmp	_imp__PathCanonicalizeW, 0
		jz	loc_406A0F
		push	offset ollydir	; src
		push	208h		; n
		lea	eax, [ebp-410h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	edx, ebx
		mov	eax, 208h
		sub	eax, ebx
		lea	ecx, [ebp-410h]
		add	edx, edx
		push	offset asc_4F6D5C ; "\\"
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	ebx, eax
		add	esp, 0Ch
		mov	eax, 208h
		lea	edx, [ebp-410h]
		sub	eax, ebx
		push	esi		; src
		add	ebx, ebx
		push	eax		; n
		add	ebx, edx
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebp-410h]
		push	ecx		; _DWORD
		lea	eax, [ebp-820h]
		push	eax		; _DWORD
		call	_imp__PathCanonicalizeW
		test	eax, eax
		jz	short loc_406A0F
		lea	edx, [ebp-820h]
		push	edx		; src
		push	104h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_406A0F:				; CODE XREF: .text:00406948j
					; .text:00406974j ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  41. _Confirmoverwrite
; Exported entry 433. Confirmoverwrite

; int __cdecl Confirmoverwrite(wchar_t *path)
		public Confirmoverwrite
Confirmoverwrite:			; CODE XREF: .text:004A9DC5p
					; .text:004BDB0Ap
		push	ebp		; _Confirmoverwrite
		mov	ebp, esp
		add	esp, 0FFFFFBF8h
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_406A2F
		cmp	word ptr [ebx],	0
		jnz	short loc_406A33

loc_406A2F:				; CODE XREF: .text:00406A27j
		xor	eax, eax
		jmp	short loc_406AAF
; ---------------------------------------------------------------------------

loc_406A33:				; CODE XREF: .text:00406A2Dj
		push	ebx		; lpFileName
		call	GetFileAttributesW
		cmp	eax, 0FFFFFFFFh
		jnz	short loc_406A45
		mov	eax, 1
		jmp	short loc_406AAF
; ---------------------------------------------------------------------------

loc_406A45:				; CODE XREF: .text:00406A3Cj
		test	al, 5
		jz	short loc_406A62
		push	ebx		; arglist
		push	offset aFileSIsSystemO ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		xor	eax, eax
		jmp	short loc_406AAF
; ---------------------------------------------------------------------------

loc_406A62:				; CODE XREF: .text:00406A47j
		push	ebx
		push	offset aFileSAlreadyEx ; "File '%s' already exists. Do you want t"...
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-408h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		push	10124h		; uType
		push	offset aFileExists ; "File exists"
		call	_T
		pop	ecx
		push	eax		; lpCaption
		lea	ecx, [ebp-408h]
		push	ecx		; lpText
		mov	eax, hwollymain
		push	eax		; hWnd
		call	MessageBoxW
		cmp	eax, 6
		jz	short loc_406AAA
		xor	eax, eax
		jmp	short loc_406AAF
; ---------------------------------------------------------------------------

loc_406AAA:				; CODE XREF: .text:00406AA4j
		mov	eax, 2

loc_406AAF:				; CODE XREF: .text:00406A31j
					; .text:00406A43j ...
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
