.code

; int __cdecl loc_49A5F8(char arglist, char)
loc_49A5F8:				; CODE XREF: .text:00410648p
					; .text:004B71F9p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF100h
		push	ebx
		push	esi
		push	edi
		test	byte ptr [ebp+0Fh], 80h
		mov	esi, [ebp+8]
		jz	short loc_49A63B
		mov	eax, dword_5EC2C0
		test	eax, eax
		jz	short loc_49A62B
		push	eax		; hLibModule
		call	FreeLibrary
		xor	edx, edx
		mov	dword_5EC2C0, edx

loc_49A62B:				; CODE XREF: .text:0049A61Bj
		xor	ecx, ecx
		or	eax, 0FFFFFFFFh
		mov	dword_5EC2C4, ecx
		jmp	loc_49A9E3
; ---------------------------------------------------------------------------

loc_49A63B:				; CODE XREF: .text:0049A612j
		cmp	path, 0
		jnz	short loc_49A64D
		or	eax, 0FFFFFFFFh
		jmp	loc_49A9E3
; ---------------------------------------------------------------------------

loc_49A64D:				; CODE XREF: .text:0049A643j
		cmp	_imp__PathFileExistsW, 0
		jz	short loc_49A66D
		push	offset path
		call	_imp__PathFileExistsW
		test	eax, eax
		jnz	short loc_49A66D
		or	eax, 0FFFFFFFFh
		jmp	loc_49A9E3
; ---------------------------------------------------------------------------

loc_49A66D:				; CODE XREF: .text:0049A654j
					; .text:0049A663j
		push	100h		; nname
		lea	edx, [ebp-200h]
		push	edx		; _name
		push	22h		; type
		push	esi		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	loc_49A89F
		test	byte ptr [ebp+0Ch], 2
		jz	loc_49A89F
		push	5		; mode
		push	10h		; size
		push	esi		; _addr
		lea	eax, [ebp-610h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	edi, eax
		test	edi, edi
		jnz	short loc_49A6BA
		or	eax, 0FFFFFFFFh
		jmp	loc_49A9E3
; ---------------------------------------------------------------------------

loc_49A6BA:				; CODE XREF: .text:0049A6B0j
		push	0		; predict
		push	0		; reg
		push	10h		; mode
		lea	edx, [ebp-1EE0h]
		push	edx		; da
		push	0		; psize
		push	esi		; _addr
		call	Finddecode
		add	esp, 8
		push	eax		; dec
		push	esi		; ip
		push	edi		; cmdsize
		lea	ecx, [ebp-610h]
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		test	eax, eax
		jnz	short loc_49A6F0
		or	eax, 0FFFFFFFFh
		jmp	loc_49A9E3
; ---------------------------------------------------------------------------

loc_49A6F0:				; CODE XREF: .text:0049A6E6j
		mov	eax, [ebp-1EA0h]
		test	eax, eax
		jz	short loc_49A71C
		push	eax		; _addr
		call	Followcall
		pop	ecx
		mov	esi, eax
		push	100h		; nname
		lea	eax, [ebp-200h]
		push	eax		; _name
		push	22h		; type
		push	esi		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax

loc_49A71C:				; CODE XREF: .text:0049A6F8j
		test	ebx, ebx
		jnz	short loc_49A769
		push	esi		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jz	short loc_49A769
		push	esi		; _addr
		add	eax, 950h
		push	eax		; pdat
		call	Findsimpledata
		add	esp, 8
		test	eax, eax
		jz	short loc_49A769
		test	byte ptr [eax+4], 20h
		jz	short loc_49A769
		mov	edx, [eax+0Eh]
		push	edx		; _addr
		call	Followcall
		pop	ecx
		mov	esi, eax
		push	100h		; nname
		lea	eax, [ebp-200h]
		push	eax		; _name
		push	22h		; type
		push	esi		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax

loc_49A769:				; CODE XREF: .text:0049A71Ej
					; .text:0049A729j ...
		cmp	dword ptr [ebp-1EA0h], 0
		jz	loc_49A89F
		test	ebx, ebx
		jz	short loc_49A7CC
		push	3		; maxlen
		push	offset aRtl	; "Rtl"
		lea	eax, [ebp-200h]
		push	eax		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_49A7CC
		push	2		; maxlen
		push	offset aZw	; "Zw"
		lea	edx, [ebp-200h]
		push	edx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_49A7CC
		push	2		; maxlen
		push	offset aNt_0	; "Nt"
		lea	ecx, [ebp-200h]
		push	ecx		; s1
		call	_wcsncmp
		add	esp, 0Ch
		test	eax, eax
		jnz	loc_49A89F

loc_49A7CC:				; CODE XREF: .text:0049A778j
					; .text:0049A792j ...
		push	5		; mode
		push	10h		; size
		mov	eax, [ebp-1EA0h]
		push	eax		; _addr
		lea	edx, [ebp-610h]
		push	edx		; buf
		call	Readmemory
		add	esp, 10h
		mov	edi, eax
		cmp	edi, 6
		jb	short loc_49A807
		cmp	byte ptr [ebp-610h], 0FFh
		jnz	short loc_49A807
		cmp	byte ptr [ebp-60Fh], 25h
		jnz	short loc_49A807
		mov	esi, [ebp-60Eh]
		jmp	short loc_49A831
; ---------------------------------------------------------------------------

loc_49A807:				; CODE XREF: .text:0049A7EBj
					; .text:0049A7F4j ...
		cmp	edi, 7
		jb	short loc_49A82F
		cmp	byte ptr [ebp-610h], 0FFh
		jnz	short loc_49A82F
		cmp	byte ptr [ebp-60Fh], 24h
		jnz	short loc_49A82F
		cmp	byte ptr [ebp-60Eh], 25h
		jnz	short loc_49A82F
		mov	esi, [ebp-60Dh]
		jmp	short loc_49A831
; ---------------------------------------------------------------------------

loc_49A82F:				; CODE XREF: .text:0049A80Aj
					; .text:0049A813j ...
		xor	esi, esi

loc_49A831:				; CODE XREF: .text:0049A805j
					; .text:0049A82Dj
		test	esi, esi
		jz	short loc_49A89F
		push	100h		; nname
		lea	eax, [ebp-400h]
		push	eax		; _name
		push	26h		; type
		push	esi		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ecx, eax
		test	ecx, ecx
		jle	short loc_49A89F
		cmp	word ptr [ebp-400h], 26h
		jnz	short loc_49A89F
		mov	eax, 1
		lea	edx, [ebp-3FEh]
		cmp	ecx, eax
		jle	short loc_49A879

loc_49A86B:				; CODE XREF: .text:0049A877j
		cmp	word ptr [edx],	2Eh
		jz	short loc_49A879
		inc	eax
		add	edx, 2
		cmp	ecx, eax
		jg	short loc_49A86B

loc_49A879:				; CODE XREF: .text:0049A869j
					; .text:0049A86Fj
		dec	ecx
		cmp	eax, ecx
		jge	short loc_49A89F
		add	eax, eax
		lea	edx, [ebp-3FEh]
		add	eax, edx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-200h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_49A89F:				; CODE XREF: .text:0049A688j
					; .text:0049A692j ...
		test	ebx, ebx
		jnz	short loc_49A8AB
		or	eax, 0FFFFFFFFh
		jmp	loc_49A9E3
; ---------------------------------------------------------------------------

loc_49A8AB:				; CODE XREF: .text:0049A8A1j
		cmp	ebx, 2
		jle	short loc_49A8E1
		mov	dx, [ebp+ebx*2-204h]
		push	edx		; c
		call	_iswlower
		pop	ecx
		test	eax, eax
		jz	short loc_49A8E1
		mov	ax, [ebp+ebx*2-202h]
		cmp	ax, 41h
		jz	short loc_49A8D7
		cmp	ax, 57h
		jnz	short loc_49A8E1

loc_49A8D7:				; CODE XREF: .text:0049A8CFj
		mov	word ptr [ebp+ebx*2-202h], 0

loc_49A8E1:				; CODE XREF: .text:0049A8AEj
					; .text:0049A8C1j ...
		test	byte ptr [ebp+0Ch], 1
		jz	loc_49A9E1
		lea	edx, [ebp-600h]
		push	edx		; ext
		push	0		; _name
		push	0		; dir
		push	0		; drive
		push	offset path	; path
		call	__wfnsplit
		add	esp, 14h
		push	offset a_hlp	; ".hlp"
		lea	ecx, [ebp-600h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49A93F
		lea	eax, [ebp-200h]
		push	eax		; dwData
		push	105h		; uCommand
		push	offset path	; lpszHelp
		mov	edx, hwollymain
		push	edx		; hWndMain
		call	WinHelpW
		jmp	loc_49A9E1
; ---------------------------------------------------------------------------

loc_49A93F:				; CODE XREF: .text:0049A91Bj
		cmp	dword_5EC2C0, 0
		jnz	short loc_49A957
		push	offset aHhctrl_ocx ; "HHCTRL.OCX"
		call	LoadLibraryW
		mov	dword_5EC2C0, eax

loc_49A957:				; CODE XREF: .text:0049A946j
		mov	ebx, dword_5EC2C0
		test	ebx, ebx
		jz	short loc_49A97A
		cmp	dword_5EC2C4, 0
		jnz	short loc_49A97A
		push	offset aHtmlhelpw ; "HtmlHelpW"
		push	ebx		; hModule
		call	GetProcAddress
		mov	dword_5EC2C4, eax

loc_49A97A:				; CODE XREF: .text:0049A95Fj
					; .text:0049A968j
		cmp	dword_5EC2C4, 0
		jz	short loc_49A9E1
		mov	dword ptr [ebp-1F00h], 20h
		xor	eax, eax
		lea	edx, [ebp-200h]
		mov	[ebp-1EFCh], eax
		mov	[ebp-1EF8h], edx
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebp-1EF4h], ecx
		mov	[ebp-1EF0h], eax
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-1EECh], edx
		mov	[ebp-1EE8h], ecx
		mov	dword ptr [ebp-1EE4h], 1
		lea	eax, [ebp-1F00h]
		push	eax
		push	0Dh
		push	offset path
		push	0
		call	dword_5EC2C4

loc_49A9E1:				; CODE XREF: .text:0049A8E5j
					; .text:0049A93Aj ...
		xor	eax, eax

loc_49A9E3:				; CODE XREF: .text:0049A636j
					; .text:0049A648j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_49A9EC(int, HWND hWnd, int, int, int)
loc_49A9EC:				; DATA XREF: .text:0049A5B6o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+10h]
		cmp	eax, 46Bh
		jg	short loc_49AA26
		jz	loc_49AB7B
		sub	eax, 5
		jz	short loc_49AA42
		sub	eax, 0FDh
		jz	short loc_49AA70
		sub	eax, 366h
		jz	loc_49AA99
		dec	eax
		sub	eax, 2
		jb	loc_49AACF
		jmp	loc_49AB76
; ---------------------------------------------------------------------------

loc_49AA26:				; CODE XREF: .text:0049A9F8j
		sub	eax, 46Dh
		jz	short loc_49AA94
		dec	eax
		jz	loc_49AB07
		sub	eax, 16h
		jz	loc_49AB64
		jmp	loc_49AB76
; ---------------------------------------------------------------------------

loc_49AA42:				; CODE XREF: .text:0049AA03j
		call	loc_498664
		mov	edx, stru_5EF470._offset
		add	edx, [ebp+18h]
		mov	eax, stru_5EF470.sorted.n
		cmp	edx, eax
		jle	loc_49AB7B
		sub	eax, [ebp+18h]
		test	eax, eax
		jge	short loc_49AA66
		xor	eax, eax

loc_49AA66:				; CODE XREF: .text:0049AA62j
		mov	stru_5EF470._offset, eax
		jmp	loc_49AB7B
; ---------------------------------------------------------------------------

loc_49AA70:				; CODE XREF: .text:0049AA0Aj
		cmp	dword ptr [ebp+14h], 1Bh
		jnz	loc_49AB7B
		push	0		; lParam
		push	0		; wParam
		push	10h		; Msg
		mov	edx, [ebp+8]
		mov	ecx, [edx+224h]
		push	ecx		; hWnd
		call	SendMessageW
		jmp	loc_49AB7B
; ---------------------------------------------------------------------------

loc_49AA94:				; CODE XREF: .text:0049AA2Bj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49AA99:				; CODE XREF: .text:0049AA11j
		mov	ecx, stru_5EF470._offset
		mov	edx, [ebp+14h]
		mov	eax, ecx
		mov	ebx, stru_5EF470.sorted.n
		add	eax, [ebp+18h]
		sub	ebx, edx
		cmp	eax, ebx
		jle	short loc_49AAB5
		mov	eax, ebx

loc_49AAB5:				; CODE XREF: .text:0049AAB1j
		test	eax, eax
		jge	short loc_49AABB
		xor	eax, eax

loc_49AABB:				; CODE XREF: .text:0049AAB7j
		cmp	ecx, eax
		jnz	short loc_49AAC5
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49AAC5:				; CODE XREF: .text:0049AABDj
		mov	stru_5EF470._offset, eax
		jmp	loc_49AB7B
; ---------------------------------------------------------------------------

loc_49AACF:				; CODE XREF: .text:0049AA1Bj
		mov	dx, [ebp+14h]
		mov	ecx, stru_5EF470.sorted.n
		and	dx, 0FFFFh
		movzx	edx, dx
		sub	ecx, edx
		mov	eax, [ebp+18h]
		cmp	eax, ecx
		jle	short loc_49AAEC
		mov	eax, ecx

loc_49AAEC:				; CODE XREF: .text:0049AAE8j
		test	eax, eax
		jge	short loc_49AAF2
		xor	eax, eax

loc_49AAF2:				; CODE XREF: .text:0049AAEEj
		cmp	eax, stru_5EF470._offset
		jnz	short loc_49AB00
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49AB00:				; CODE XREF: .text:0049AAF8j
		mov	stru_5EF470._offset, eax
		jmp	short loc_49AB7B
; ---------------------------------------------------------------------------

loc_49AB07:				; CODE XREF: .text:0049AA2Ej
		mov	dx, [ebp+14h]
		and	dx, 0FFFFh
		movzx	edx, dx
		movsx	ecx, word ptr [ebp+18h]
		mov	eax, stru_5EF470._offset
		cmp	ecx, 0FFFF8000h
		jnz	short loc_49AB28
		xor	eax, eax
		jmp	short loc_49AB3B
; ---------------------------------------------------------------------------

loc_49AB28:				; CODE XREF: .text:0049AB22j
		cmp	ecx, 7FFFh
		jnz	short loc_49AB39
		mov	eax, stru_5EF470.sorted.n
		sub	eax, edx
		jmp	short loc_49AB3B
; ---------------------------------------------------------------------------

loc_49AB39:				; CODE XREF: .text:0049AB2Ej
		add	eax, ecx

loc_49AB3B:				; CODE XREF: .text:0049AB26j
					; .text:0049AB37j
		mov	ecx, stru_5EF470.sorted.n
		sub	ecx, edx
		cmp	eax, ecx
		jle	short loc_49AB49
		mov	eax, ecx

loc_49AB49:				; CODE XREF: .text:0049AB45j
		test	eax, eax
		jge	short loc_49AB4F
		xor	eax, eax

loc_49AB4F:				; CODE XREF: .text:0049AB4Bj
		cmp	eax, stru_5EF470._offset
		jnz	short loc_49AB5D
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49AB5D:				; CODE XREF: .text:0049AB55j
		mov	stru_5EF470._offset, eax
		jmp	short loc_49AB7B
; ---------------------------------------------------------------------------

loc_49AB64:				; CODE XREF: .text:0049AA37j
		push	0		; bErase
		push	0		; lpRect
		mov	edx, [ebp+0Ch]
		push	edx		; hWnd
		call	InvalidateRect
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49AB76:				; CODE XREF: .text:0049AA21j
					; .text:0049AA3Dj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49AB7B:				; CODE XREF: .text:0049A9FAj
					; .text:0049AA57j ...
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_49AB84:				; DATA XREF: .text:0049A5DAo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		xor	ecx, ecx
		mov	eax, [ebp+1Ch]
		add	eax, 4		; switch 5 cases
		cmp	eax, 4
		ja	loc_49AC57	; jumptable 0049AB9E default case
		jmp	ds:off_49ABA5[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_49ABA5	dd offset loc_49ABB9	; DATA XREF: .text:0049AB9Er
		dd offset loc_49ABC0	; jump table for switch	statement
		dd offset loc_49ABC7
		dd offset loc_49ABCE
		dd offset loc_49ABD5
; ---------------------------------------------------------------------------

loc_49ABB9:				; CODE XREF: .text:0049AB9Ej
					; DATA XREF: .text:off_49ABA5o
		xor	eax, eax	; jumptable 0049AB9E case -4
		jmp	loc_49AC59
; ---------------------------------------------------------------------------

loc_49ABC0:				; CODE XREF: .text:0049AB9Ej
					; DATA XREF: .text:off_49ABA5o
		xor	eax, eax	; jumptable 0049AB9E case -3
		jmp	loc_49AC59
; ---------------------------------------------------------------------------

loc_49ABC7:				; CODE XREF: .text:0049AB9Ej
					; DATA XREF: .text:off_49ABA5o
		xor	eax, eax	; jumptable 0049AB9E case -2
		jmp	loc_49AC59
; ---------------------------------------------------------------------------

loc_49ABCE:				; CODE XREF: .text:0049AB9Ej
					; DATA XREF: .text:off_49ABA5o
		xor	eax, eax	; jumptable 0049AB9E case -1
		jmp	loc_49AC59
; ---------------------------------------------------------------------------

loc_49ABD5:				; CODE XREF: .text:0049AB9Ej
					; DATA XREF: .text:off_49ABA5o
		xor	eax, eax	; jumptable 0049AB9E case 0
		xor	ebx, ebx
		mov	edx, offset word_5EF6E0
		jmp	short loc_49ABFA
; ---------------------------------------------------------------------------

loc_49ABE0:				; CODE XREF: .text:0049AC00j
		mov	esi, [ebp+18h]
		mov	esi, [esi]
		add	esi, stru_5EF470._offset
		cmp	ebx, esi
		jz	short loc_49AC02
		cmp	word ptr [edx],	0
		jnz	short loc_49ABF6
		inc	ebx

loc_49ABF6:				; CODE XREF: .text:0049ABF3j
		inc	eax
		add	edx, 2

loc_49ABFA:				; CODE XREF: .text:0049ABDEj
		cmp	eax, dword_5F26E0
		jl	short loc_49ABE0

loc_49AC02:				; CODE XREF: .text:0049ABEDj
		mov	edx, [ebp+0Ch]
		add	edx, ecx
		mov	[ebp-8], edx
		lea	edx, byte_5F16E0[eax]
		mov	[ebp-4], edx
		mov	edx, [ebp+8]
		lea	esi, [edx+ecx*2]
		lea	edx, word_5EF6E0[eax*2]
		jmp	short loc_49AC40
; ---------------------------------------------------------------------------

loc_49AC22:				; CODE XREF: .text:0049AC4Cj
		mov	bx, [edx]
		inc	ecx
		mov	[esi], bx
		add	esi, 2
		mov	ebx, [ebp-4]
		mov	edi, [ebp-8]
		inc	eax
		mov	bl, [ebx]
		mov	[edi], bl
		inc	dword ptr [ebp-8]
		inc	dword ptr [ebp-4]
		add	edx, 2

loc_49AC40:				; CODE XREF: .text:0049AC20j
		cmp	eax, dword_5F26E0
		jge	short loc_49AC4E
		cmp	word ptr [edx],	0
		jnz	short loc_49AC22

loc_49AC4E:				; CODE XREF: .text:0049AC46j
		mov	eax, [ebp+10h]
		mov	dword ptr [eax], 100h

loc_49AC57:				; CODE XREF: .text:0049AB98j
		mov	eax, ecx	; jumptable 0049AB9E default case

loc_49AC59:				; CODE XREF: .text:0049ABBBj
					; .text:0049ABC2j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_49AC60(void *src, char arglist, int, int, int)
loc_49AC60:				; CODE XREF: .text:004B7192p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDE8h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	edi, [ebp+0Ch]
		jnz	short loc_49AC91
		push	5		; mode
		push	10h		; size
		push	edi		; _addr
		lea	eax, [ebp-18h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp+10h], eax
		lea	edx, [ebp-18h]
		mov	[ebp+8], edx
		jmp	short loc_49AC9E
; ---------------------------------------------------------------------------

loc_49AC91:				; CODE XREF: .text:0049AC73j
		cmp	dword ptr [ebp+10h], 10h
		jbe	short loc_49AC9E
		mov	dword ptr [ebp+10h], 10h

loc_49AC9E:				; CODE XREF: .text:0049AC8Fj
					; .text:0049AC95j
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_49ACAC
		or	eax, 0FFFFFFFFh
		jmp	loc_49B058
; ---------------------------------------------------------------------------

loc_49ACAC:				; CODE XREF: .text:0049ACA2j
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_49ACCD
		lea	edx, [ebp-8]
		push	edx		; psize
		push	edi		; _addr
		call	Finddecode
		add	esp, 8
		mov	ebx, eax
		mov	eax, [ebp-8]
		cmp	eax, [ebp+10h]
		jnb	short loc_49ACCF
		xor	ebx, ebx
		jmp	short loc_49ACCF
; ---------------------------------------------------------------------------

loc_49ACCD:				; CODE XREF: .text:0049ACB0j
		xor	ebx, ebx

loc_49ACCF:				; CODE XREF: .text:0049ACC7j
					; .text:0049ACCBj
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_49ACDC
		mov	esi, 11h
		jmp	short loc_49ACE1
; ---------------------------------------------------------------------------

loc_49ACDC:				; CODE XREF: .text:0049ACD3j
		mov	esi, 1

loc_49ACE1:				; CODE XREF: .text:0049ACDAj
		mov	eax, esi
		push	0		; predict
		or	eax, 8
		push	0		; reg
		push	eax		; mode
		push	offset da	; da
		push	ebx		; dec
		push	edi		; ip
		mov	edx, [ebp+10h]
		push	edx		; cmdsize
		mov	ecx, [ebp+8]
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		mov	eax, dword_5BDCCC
		mov	[ebp-4], eax
		xor	edx, edx
		mov	dword_5BDCCC, edx
		push	0		; predict
		push	0		; reg
		or	esi, 800h
		push	esi		; mode
		push	offset stru_5EDB9C ; da
		push	ebx		; dec
		push	edi		; ip
		mov	ecx, [ebp+10h]
		push	ecx		; cmdsize
		mov	eax, [ebp+8]
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		mov	edx, [ebp-4]
		lea	ecx, [ebp-218h]
		mov	dword_5BDCCC, edx
		push	offset aHelp_0	; "HELP	"
		push	100h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		xor	ebx, ebx
		mov	esi, offset stru_5EDB9C.result

loc_49AD5F:				; CODE XREF: .text:0049AD83j
					; .text:0049ADA9j ...
		mov	eax, ebx
		push	5		; maxlen
		add	eax, eax
		push	offset aLock_3	; s2
		add	eax, offset stru_5EDB9C.result
		push	eax		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_49AD85
		add	ebx, 5
		add	esi, 0Ah
		jmp	short loc_49AD5F
; ---------------------------------------------------------------------------

loc_49AD85:				; CODE XREF: .text:0049AD7Bj
		mov	edx, ebx
		push	4		; maxlen
		add	edx, edx
		push	offset aBht_2	; s2
		add	edx, offset stru_5EDB9C.result
		push	edx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_49ADAB
		add	ebx, 4
		add	esi, 8
		jmp	short loc_49AD5F
; ---------------------------------------------------------------------------

loc_49ADAB:				; CODE XREF: .text:0049ADA1j
		mov	ecx, ebx
		push	4		; maxlen
		add	ecx, ecx
		push	offset aBhnt_2	; "BHNT	"
		add	ecx, offset stru_5EDB9C.result
		push	ecx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_49ADD1
		add	ebx, 5
		add	esi, 0Ah
		jmp	short loc_49AD5F
; ---------------------------------------------------------------------------

loc_49ADD1:				; CODE XREF: .text:0049ADC7j
		cmp	word ptr [esi],	2Bh
		jnz	short loc_49ADDD
		inc	ebx
		add	esi, 2
		jmp	short loc_49AD5F
; ---------------------------------------------------------------------------

loc_49ADDD:				; CODE XREF: .text:0049ADD5j
		cmp	word ptr [esi],	2Dh
		jnz	short loc_49ADEC
		inc	ebx
		add	esi, 2
		jmp	loc_49AD5F
; ---------------------------------------------------------------------------

loc_49ADEC:				; CODE XREF: .text:0049ADE1j
		mov	eax, ebx
		push	4		; maxlen
		add	eax, eax
		push	offset aRep_2	; "REP "
		add	eax, offset stru_5EDB9C.result
		push	eax		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_49AE15
		add	ebx, 4
		add	esi, 8
		jmp	loc_49AD5F
; ---------------------------------------------------------------------------

loc_49AE15:				; CODE XREF: .text:0049AE08j
		mov	edx, ebx
		push	5		; maxlen
		add	edx, edx
		push	offset aRepe_0	; "REPE	"
		add	edx, offset stru_5EDB9C.result
		push	edx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_49AE3E
		add	ebx, 5
		add	esi, 0Ah
		jmp	loc_49AD5F
; ---------------------------------------------------------------------------

loc_49AE3E:				; CODE XREF: .text:0049AE31j
		mov	ecx, ebx
		push	6		; maxlen
		add	ecx, ecx
		push	offset aRepne_2	; s2
		add	ecx, offset stru_5EDB9C.result
		push	ecx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_49AE67
		add	ebx, 6
		add	esi, 0Ch
		jmp	loc_49AD5F
; ---------------------------------------------------------------------------

loc_49AE67:				; CODE XREF: .text:0049AE5Aj
		mov	eax, ebx
		lea	edx, [ebp+edi*2-218h]
		add	eax, eax
		add	eax, offset stru_5EDB9C.result
		jmp	short loc_49AE87
; ---------------------------------------------------------------------------

loc_49AE7A:				; CODE XREF: .text:0049AE9Fj
		mov	cx, [eax]
		inc	edi
		mov	[edx], cx
		add	edx, 2
		add	eax, 2

loc_49AE87:				; CODE XREF: .text:0049AE78j
		cmp	edi, 0FFh
		jge	short loc_49AEA1
		cmp	word ptr [eax],	20h
		jz	short loc_49AEA1
		cmp	word ptr [eax],	28h
		jz	short loc_49AEA1
		cmp	word ptr [eax],	0
		jnz	short loc_49AE7A

loc_49AEA1:				; CODE XREF: .text:0049AE8Dj
					; .text:0049AE93j ...
		mov	word ptr [ebp+edi*2-218h], 0
		lea	eax, [ebp-218h]
		push	eax		; _name
		call	Getrawdata
		pop	ecx
		mov	dword_5EF46C, eax
		cmp	dword_5EF46C, 0
		jnz	loc_49AF64
		mov	edx, da.nprefix
		cmp	edx, [ebp+10h]
		jnb	loc_49AF64
		mov	ecx, [ebp+8]
		mov	eax, da.nprefix
		xor	edx, edx
		mov	dl, [ecx+eax]
		mov	ecx, edi
		lea	eax, [ebp-218h]
		push	edx
		add	ecx, ecx
		push	offset a_02x	; "_%02X"
		add	ecx, eax
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	edi, eax
		lea	edx, [ebp-218h]
		push	edx		; _name
		call	Getrawdata
		pop	ecx
		mov	dword_5EF46C, eax
		cmp	dword_5EF46C, 0
		jnz	short loc_49AF64
		mov	ecx, da.nprefix
		inc	ecx
		cmp	ecx, [ebp+10h]
		jnb	short loc_49AF64
		mov	eax, [ebp+8]
		mov	edx, da.nprefix
		xor	ecx, ecx
		add	edi, edi
		mov	cl, [eax+edx+1]
		lea	eax, [ebp-218h]
		push	ecx
		add	edi, eax
		push	(offset	a_02x+2) ; format
		push	edi		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-218h]
		push	edx		; _name
		call	Getrawdata
		pop	ecx
		mov	dword_5EF46C, eax

loc_49AF64:				; CODE XREF: .text:0049AEC4j
					; .text:0049AED3j ...
		cmp	dword_5EF46C, 0
		jnz	short loc_49AF75
		or	eax, 0FFFFFFFFh
		jmp	loc_49B058
; ---------------------------------------------------------------------------

loc_49AF75:				; CODE XREF: .text:0049AF6Bj
		xor	edx, edx
		mov	dword_5EC2C8, edx
		cmp	stru_5EF470.bar.nbar, 0
		jnz	short loc_49AF8B
		call	loc_49A558

loc_49AF8B:				; CODE XREF: .text:0049AF84j
		cmp	stru_5EF470.hw,	0
		jnz	short loc_49AFCB
		push	(offset	aRtl+5)	; _title
		push	offset aIco_h	; "ICO_H"
		mov	ecx, g_hInstance
		push	ecx		; hi
		mov	eax, stru_5EF470.bar.nbar
		push	eax		; ncolumn
		push	0		; nrow
		push	offset stru_5EF470 ; pt
		call	Createtablewindow
		add	esp, 18h
		cmp	stru_5EF470.hw,	0
		jnz	short loc_49AFCB
		or	eax, 0FFFFFFFFh
		jmp	loc_49B058
; ---------------------------------------------------------------------------

loc_49AFCB:				; CODE XREF: .text:0049AF92j
					; .text:0049AFC1j
		call	loc_498664
		xor	edx, edx
		xor	ecx, ecx
		mov	stru_5EF470.xshift, edx
		mov	stru_5EF470._offset, ecx
		push	offset aHelpOnCommand ;	"Help on command"
		call	_T
		pop	ecx
		push	eax		; lpString
		mov	eax, stru_5EF470.hparent
		push	eax		; hWnd
		call	SetWindowTextW
		push	0		; bErase
		push	0		; lpRect
		mov	edx, stru_5EF470.hw
		push	edx		; hWnd
		call	InvalidateRect
		cmp	stru_5EF470.hparent, 0
		jz	short loc_49B056
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_49B02D
		push	0		; lParam
		mov	edx, stru_5EF470.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_49B02D:				; CODE XREF: .text:0049B017j
		mov	ecx, stru_5EF470.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_49B04A
		push	9		; nCmdShow
		mov	eax, stru_5EF470.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_49B04A:				; CODE XREF: .text:0049B03Bj
		mov	edx, stru_5EF470.hw
		push	edx		; hWnd
		call	SetFocus

loc_49B056:				; CODE XREF: .text:0049B00Ej
		xor	eax, eax

loc_49B058:				; CODE XREF: .text:0049ACA7j
					; .text:0049AF70j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_49B060:				; CODE XREF: .text:004943C5p
					; .text:0049B241p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_49B07C
		cmp	word ptr [esi],	0
		jnz	short loc_49B084

loc_49B07C:				; CODE XREF: .text:0049B074j
		or	eax, 0FFFFFFFFh
		jmp	loc_49B22D
; ---------------------------------------------------------------------------

loc_49B084:				; CODE XREF: .text:0049B07Aj
		push	offset aHelp_0	; "HELP	"
		push	100h		; n
		lea	edx, [ebp-200h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	edx, ebx
		mov	eax, 100h
		sub	eax, ebx
		push	esi		; src
		lea	ecx, [ebp-200h]
		add	edx, edx
		add	edx, ecx
		push	eax		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	eax, [ebp-200h]
		push	eax		; _name
		call	Getrawdata
		pop	ecx
		mov	dword_5EF46C, eax
		cmp	dword_5EF46C, 0
		jnz	short loc_49B136
		test	edi, edi
		jz	short loc_49B136
		cmp	word ptr [edi],	0
		jz	short loc_49B136
		mov	ecx, ebx
		mov	edx, 100h
		sub	edx, ebx
		lea	eax, [ebp-200h]
		add	ecx, ecx
		push	offset a__15	; "_"
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	edx, 100h
		lea	ecx, [ebp-200h]
		sub	edx, ebx
		push	edi		; src
		add	ebx, ebx
		push	edx		; n
		add	ebx, ecx
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-200h]
		push	eax		; _name
		call	Getrawdata
		pop	ecx
		mov	dword_5EF46C, eax

loc_49B136:				; CODE XREF: .text:0049B0D8j
					; .text:0049B0DCj ...
		cmp	dword_5EF46C, 0
		jnz	short loc_49B147
		or	eax, 0FFFFFFFFh
		jmp	loc_49B22D
; ---------------------------------------------------------------------------

loc_49B147:				; CODE XREF: .text:0049B13Dj
		mov	dword_5EC2C8, 1
		cmp	stru_5EF470.bar.nbar, 0
		jnz	short loc_49B15F
		call	loc_49A558

loc_49B15F:				; CODE XREF: .text:0049B158j
		cmp	stru_5EF470.hw,	0
		jnz	short loc_49B1A0
		push	(offset	aRtl+5)	; _title
		push	offset aIco_h	; "ICO_H"
		mov	edx, g_hInstance
		push	edx		; hi
		mov	ecx, stru_5EF470.bar.nbar
		push	ecx		; ncolumn
		push	0		; nrow
		push	offset stru_5EF470 ; pt
		call	Createtablewindow
		add	esp, 18h
		cmp	stru_5EF470.hw,	0
		jnz	short loc_49B1A0
		or	eax, 0FFFFFFFFh
		jmp	loc_49B22D
; ---------------------------------------------------------------------------

loc_49B1A0:				; CODE XREF: .text:0049B166j
					; .text:0049B196j
		call	loc_498664
		xor	edx, edx
		xor	ecx, ecx
		mov	stru_5EF470.xshift, edx
		mov	stru_5EF470._offset, ecx
		push	offset aHelpOnItem ; "Help on item"
		call	_T
		pop	ecx
		push	eax		; lpString
		mov	eax, stru_5EF470.hparent
		push	eax		; hWnd
		call	SetWindowTextW
		push	0		; bErase
		push	0		; lpRect
		mov	edx, stru_5EF470.hw
		push	edx		; hWnd
		call	InvalidateRect
		cmp	stru_5EF470.hparent, 0
		jz	short loc_49B22B
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_49B202
		push	0		; lParam
		mov	edx, stru_5EF470.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_49B202:				; CODE XREF: .text:0049B1ECj
		mov	ecx, stru_5EF470.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_49B21F
		push	9		; nCmdShow
		mov	eax, stru_5EF470.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_49B21F:				; CODE XREF: .text:0049B210j
		mov	edx, stru_5EF470.hw
		push	edx		; hWnd
		call	SetFocus

loc_49B22B:				; CODE XREF: .text:0049B1E3j
		xor	eax, eax

loc_49B22D:				; CODE XREF: .text:0049B07Fj
					; .text:0049B142j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49B234:				; CODE XREF: .text:loc_40B83Ep
		push	ebp
		mov	ebp, esp
		push	offset aAgreement ; "AGREEMENT"
		push	offset aLicense_0 ; "LICENSE"
		call	loc_49B060
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_49B24C:				; CODE XREF: .text:00449E72p
		xor	eax, eax
		xor	edx, edx
		mov	dword_5EF46C, eax
		xor	ecx, ecx
		mov	dword_5F26E0, edx
		mov	dword_5F26E4, ecx
		xor	eax, eax
		push	ebp
		mov	dword_5F26E8, eax
		mov	ebp, esp
		mov	eax, stru_5EF470.hw
		test	eax, eax
		jz	short loc_49B280
		push	0		; bErase
		push	0		; lpRect
		push	eax		; hWnd
		call	InvalidateRect

loc_49B280:				; CODE XREF: .text:0049B274j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_49B284:				; CODE XREF: .text:0049B58Bp
					; .text:0049B59Ep ...
		push	ebp
		mov	ebp, esp
		mov	eax, dword_5F2B34
		cmp	eax, dword_5F2B30
		jl	short loc_49B2C0
		push	offset aExpressionIsTo ; "Expression is	too complex"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5F2B24
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49B2C0:				; CODE XREF: .text:0049B292j
		mov	ecx, dword_5F2B2C
		mov	eax, dword_5F2B34
		mov	dl, [ebp+8]
		mov	[ecx+eax], dl
		inc	dword_5F2B34
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_49B2DC:				; CODE XREF: .text:0049BCAEp
					; .text:0049BCEFp ...
		mov	eax, dword_5F2B34
		push	ebp
		add	eax, 4
		mov	ebp, esp
		cmp	eax, dword_5F2B30
		jle	short loc_49B31B
		push	offset aExpressionIsTo ; "Expression is	too complex"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5F2B24
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49B31B:				; CODE XREF: .text:0049B2EDj
		mov	ecx, dword_5F2B2C
		mov	eax, dword_5F2B34
		mov	edx, [ebp+8]
		mov	[ecx+eax], edx
		mov	ecx, dword_5F2B34
		add	ecx, 4
		mov	dword_5F2B34, ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_49B340:				; CODE XREF: .text:0049C951p
					; .text:0049C9D8p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		cmp	eax, 7Ch
		jg	short loc_49B38A
		jz	loc_49B3F7
		cmp	eax, 2Dh
		jg	short loc_49B371
		jz	short loc_49B3CD
		sub	eax, 25h
		jz	short loc_49B3C6
		dec	eax
		jz	loc_49B3E9
		sub	eax, 4
		jz	short loc_49B3C6
		dec	eax
		jz	short loc_49B3CD
		jmp	loc_49B40C
; ---------------------------------------------------------------------------

loc_49B371:				; CODE XREF: .text:0049B354j
		sub	eax, 2Fh
		jz	short loc_49B3C6
		sub	eax, 0Dh
		jz	short loc_49B3DB
		sub	eax, 2
		jz	short loc_49B3DB
		sub	eax, 20h
		jz	short loc_49B3F0
		jmp	loc_49B40C
; ---------------------------------------------------------------------------

loc_49B38A:				; CODE XREF: .text:0049B349j
		cmp	eax, 3D3Dh
		jg	short loc_49B3AF
		jz	short loc_49B3E2
		sub	eax, 2626h
		jz	short loc_49B3FE
		sub	eax, 1616h
		jz	short loc_49B3D4
		sub	eax, 0E5h
		jz	short loc_49B3E2
		sub	eax, 1Bh
		jz	short loc_49B3DB
		jmp	short loc_49B40C
; ---------------------------------------------------------------------------

loc_49B3AF:				; CODE XREF: .text:0049B38Fj
		sub	eax, 3D3Eh
		jz	short loc_49B3DB
		sub	eax, 100h
		jz	short loc_49B3D4
		sub	eax, 3E3Eh
		jz	short loc_49B405
		jmp	short loc_49B40C
; ---------------------------------------------------------------------------

loc_49B3C6:				; CODE XREF: .text:0049B35Bj
					; .text:0049B367j ...
		mov	eax, 1
		jmp	short loc_49B40F
; ---------------------------------------------------------------------------

loc_49B3CD:				; CODE XREF: .text:0049B356j
					; .text:0049B36Aj
		mov	eax, 2
		jmp	short loc_49B40F
; ---------------------------------------------------------------------------

loc_49B3D4:				; CODE XREF: .text:0049B39Fj
					; .text:0049B3BBj
		mov	eax, 3
		jmp	short loc_49B40F
; ---------------------------------------------------------------------------

loc_49B3DB:				; CODE XREF: .text:0049B379j
					; .text:0049B37Ej ...
		mov	eax, 4
		jmp	short loc_49B40F
; ---------------------------------------------------------------------------

loc_49B3E2:				; CODE XREF: .text:0049B391j
					; .text:0049B3A6j
		mov	eax, 5
		jmp	short loc_49B40F
; ---------------------------------------------------------------------------

loc_49B3E9:				; CODE XREF: .text:0049B35Ej
		mov	eax, 6
		jmp	short loc_49B40F
; ---------------------------------------------------------------------------

loc_49B3F0:				; CODE XREF: .text:0049B383j
		mov	eax, 7
		jmp	short loc_49B40F
; ---------------------------------------------------------------------------

loc_49B3F7:				; CODE XREF: .text:0049B34Bj
		mov	eax, 8
		jmp	short loc_49B40F
; ---------------------------------------------------------------------------

loc_49B3FE:				; CODE XREF: .text:0049B398j
		mov	eax, 9
		jmp	short loc_49B40F
; ---------------------------------------------------------------------------

loc_49B405:				; CODE XREF: .text:0049B3C2j
		mov	eax, 0Ah
		jmp	short loc_49B40F
; ---------------------------------------------------------------------------

loc_49B40C:				; CODE XREF: .text:0049B36Cj
					; .text:0049B385j ...
		or	eax, 0FFFFFFFFh

loc_49B40F:				; CODE XREF: .text:0049B3CBj
					; .text:0049B3D2j ...
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_49B414:				; CODE XREF: .text:0049C46Ep
					; .text:0049C5B6p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFCF4h
		cmp	dword_5F2B28, 0
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		jnz	loc_49BFE1
		cmp	dword_5F2B1E, 6
		jnz	loc_49B4C0
		cmp	stru_5F26F0._mask, 28h
		jnz	short loc_49B4C0
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		push	0
		push	esi
		call	loc_49BFE8
		add	esp, 8
		push	63h
		push	esi
		call	loc_49C90C
		add	esp, 8
		cmp	dword_5F2B28, 0
		jnz	short loc_49B4B0
		cmp	dword_5F2B1E, 6
		jnz	short loc_49B482
		cmp	stru_5F26F0._mask, 29h
		jz	short loc_49B4B0

loc_49B482:				; CODE XREF: .text:0049B477j
		push	offset aClosingParenth ; "Closing parenthesis expected"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5F2B24
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49B4B0:				; CODE XREF: .text:0049B46Ej
					; .text:0049B480j
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49B4C0:				; CODE XREF: .text:0049B437j
					; .text:0049B444j
		cmp	dword_5F2B1E, 6
		jnz	short loc_49B53F
		cmp	stru_5F26F0._mask, 2Bh
		jnz	short loc_49B53F
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		push	0
		push	esi
		call	loc_49BFE8
		add	esp, 8
		cmp	dword ptr [esi+8], 3
		jnz	short loc_49B4FA
		mov	dword ptr [esi+8], 23h
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49B4FA:				; CODE XREF: .text:0049B4ECj
		mov	eax, [esi+8]
		cmp	eax, 8
		jz	short loc_49B510
		cmp	eax, 9
		jz	short loc_49B510
		cmp	eax, 0Ah
		jnz	loc_49BFA5

loc_49B510:				; CODE XREF: .text:0049B500j
					; .text:0049B505j
		push	offset aUnaryPlusIsNot ; "Unary	plus is	not defined for	strings"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5F2B24
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49B53F:				; CODE XREF: .text:0049B4C7j
					; .text:0049B4D0j
		cmp	dword_5F2B1E, 6
		jnz	loc_49B5EB
		cmp	stru_5F26F0._mask, 2Dh
		jnz	loc_49B5EB
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		push	0
		push	esi
		call	loc_49BFE8
		add	esp, 8
		cmp	dword_5F2B28, 0
		jnz	loc_49BFE1
		cmp	dword ptr [esi+8], 3
		jnz	short loc_49B596
		mov	dword ptr [esi+8], 23h
		push	15h
		call	loc_49B284
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49B596:				; CODE XREF: .text:0049B580j
		cmp	dword ptr [esi+8], 23h
		jnz	short loc_49B5A9
		push	15h
		call	loc_49B284
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49B5A9:				; CODE XREF: .text:0049B59Aj
		cmp	dword ptr [esi+8], 6
		jnz	short loc_49B5BC
		push	18h
		call	loc_49B284
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49B5BC:				; CODE XREF: .text:0049B5ADj
		push	offset aNegationIsNotD ; "Negation is not defined for strings"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5F2B24
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49B5EB:				; CODE XREF: .text:0049B546j
					; .text:0049B553j
		cmp	dword_5F2B1E, 6
		jnz	loc_49B68D
		cmp	stru_5F26F0._mask, 21h
		jnz	loc_49B68D
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		push	0
		push	esi
		call	loc_49BFE8
		add	esp, 8
		cmp	dword_5F2B28, 0
		jnz	loc_49BFE1
		cmp	dword ptr [esi+8], 3
		jnz	short loc_49B638
		push	16h
		call	loc_49B284
		pop	ecx
		jmp	short loc_49B681
; ---------------------------------------------------------------------------

loc_49B638:				; CODE XREF: .text:0049B62Cj
		cmp	dword ptr [esi+8], 23h
		jnz	short loc_49B648
		push	16h
		call	loc_49B284
		pop	ecx
		jmp	short loc_49B681
; ---------------------------------------------------------------------------

loc_49B648:				; CODE XREF: .text:0049B63Cj
		cmp	dword ptr [esi+8], 6
		jnz	short loc_49B658
		push	19h
		call	loc_49B284
		pop	ecx
		jmp	short loc_49B681
; ---------------------------------------------------------------------------

loc_49B658:				; CODE XREF: .text:0049B64Cj
		push	offset aLogicalNegatio ; "Logical negation is not defined for str"...
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5F2B24
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1

loc_49B681:				; CODE XREF: .text:0049B636j
					; .text:0049B646j ...
		mov	dword ptr [esi+8], 3
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49B68D:				; CODE XREF: .text:0049B5F2j
					; .text:0049B5FFj
		cmp	dword_5F2B1E, 6
		jnz	loc_49B752
		cmp	stru_5F26F0._mask, 7Eh
		jnz	loc_49B752
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		push	0
		push	esi
		call	loc_49BFE8
		add	esp, 8
		cmp	dword_5F2B28, 0
		jnz	loc_49BFE1
		cmp	dword ptr [esi+8], 3
		jnz	short loc_49B6DA
		push	17h
		call	loc_49B284
		pop	ecx
		jmp	short loc_49B746
; ---------------------------------------------------------------------------

loc_49B6DA:				; CODE XREF: .text:0049B6CEj
		cmp	dword ptr [esi+8], 23h
		jnz	short loc_49B6EA
		push	17h
		call	loc_49B284
		pop	ecx
		jmp	short loc_49B746
; ---------------------------------------------------------------------------

loc_49B6EA:				; CODE XREF: .text:0049B6DEj
		cmp	dword ptr [esi+8], 6
		jnz	short loc_49B71C
		push	offset aBitwiseInver_0 ; "Bitwise inversion is not defined for fl"...
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5F2B24
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	short loc_49B746
; ---------------------------------------------------------------------------

loc_49B71C:				; CODE XREF: .text:0049B6EEj
		push	offset aBitwiseInversi ; "Bitwise inversion is not defined for st"...
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5F2B24
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1

loc_49B746:				; CODE XREF: .text:0049B6D8j
					; .text:0049B6E8j ...
		mov	dword ptr [esi+8], 3
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49B752:				; CODE XREF: .text:0049B694j
					; .text:0049B6A1j
		cmp	dword_5F2B1E, 6
		jnz	loc_49B8E1
		cmp	stru_5F26F0._mask, 25h
		jnz	loc_49B8E1
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		cmp	dword_5F2B1E, 2
		jnz	short loc_49B7BB
		push	offset aA_0	; s2
		push	(offset	stru_5F26F0.text+4) ; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49B7BB
		mov	dword ptr [esi+8], 3
		push	1
		call	loc_49B284
		pop	ecx
		inc	dword_5F2B38
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49B7BB:				; CODE XREF: .text:0049B77Ej
					; .text:0049B794j
		cmp	dword_5F2B1E, 2
		jnz	short loc_49B7FF
		push	offset aB	; s2
		push	(offset	stru_5F26F0.text+4) ; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49B7FF
		mov	dword ptr [esi+8], 3
		push	2
		call	loc_49B284
		pop	ecx
		inc	dword_5F2B38
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49B7FF:				; CODE XREF: .text:0049B7C2j
					; .text:0049B7D8j
		cmp	dword_5F2B1E, 2
		jnz	short loc_49B859
		push	offset aThr	; "THR"
		push	(offset	stru_5F26F0.text+4) ; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_49B834
		push	offset aThread_0 ; "THREAD"
		push	(offset	stru_5F26F0.text+4) ; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49B859

loc_49B834:				; CODE XREF: .text:0049B81Cj
		mov	dword ptr [esi+8], 3
		push	3
		call	loc_49B284
		pop	ecx
		inc	dword_5F2B38
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49B859:				; CODE XREF: .text:0049B806j
					; .text:0049B832j
		cmp	dword_5F2B1E, 2
		jnz	short loc_49B8B3
		push	offset aOrd_0	; s2
		push	(offset	stru_5F26F0.text+4) ; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_49B88E
		push	offset aOrdinal_0 ; s2
		push	(offset	stru_5F26F0.text+4) ; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49B8B3

loc_49B88E:				; CODE XREF: .text:0049B876j
		mov	dword ptr [esi+8], 23h
		push	4
		call	loc_49B284
		pop	ecx
		inc	dword_5F2B38
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49B8B3:				; CODE XREF: .text:0049B860j
					; .text:0049B88Cj
		push	offset aSyntaxError_0 ;	src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5F2B24
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49BFE1
; ---------------------------------------------------------------------------

loc_49B8E1:				; CODE XREF: .text:0049B759j
					; .text:0049B766j
		cmp	dword_5F2B1E, 2
		jnz	loc_49BE20
		mov	dword ptr [ebp-8], offset regname
		xor	edi, edi

loc_49B8F7:				; CODE XREF: .text:0049B971j
		xor	ebx, ebx
		mov	eax, [ebp-8]
		mov	edx, eax
		mov	[ebp-4], edx

loc_49B901:				; CODE XREF: .text:0049B967j
		push	(offset	stru_5F26F0.text+4) ; s2
		mov	ecx, [ebp-4]
		mov	eax, [ecx]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49B95F
		test	edi, edi
		jnz	short loc_49B926
		push	5
		call	loc_49B284
		pop	ecx
		jmp	short loc_49B93B
; ---------------------------------------------------------------------------

loc_49B926:				; CODE XREF: .text:0049B91Aj
		dec	edi
		jnz	short loc_49B933
		push	6
		call	loc_49B284
		pop	ecx
		jmp	short loc_49B93B
; ---------------------------------------------------------------------------

loc_49B933:				; CODE XREF: .text:0049B927j
		push	7
		call	loc_49B284
		pop	ecx

loc_49B93B:				; CODE XREF: .text:0049B924j
					; .text:0049B931j
		push	ebx
		call	loc_49B284
		pop	ecx
		inc	dword_5F2B38
		mov	dword ptr [esi+8], 3
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49B95F:				; CODE XREF: .text:0049B916j
		inc	ebx
		add	dword ptr [ebp-4], 4
		cmp	ebx, 8
		jl	short loc_49B901
		inc	edi
		add	dword ptr [ebp-8], 20h
		cmp	edi, 3
		jl	short loc_49B8F7
		xor	ebx, ebx
		mov	edi, offset segname

loc_49B97A:				; CODE XREF: .text:0049B9C1j
		push	(offset	stru_5F26F0.text+4) ; s2
		mov	eax, [edi]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49B9BA
		push	8
		call	loc_49B284
		pop	ecx
		push	ebx
		call	loc_49B284
		pop	ecx
		inc	dword_5F2B38
		mov	dword ptr [esi+8], 3
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49B9BA:				; CODE XREF: .text:0049B98Cj
		inc	ebx
		add	edi, 4
		cmp	ebx, 6
		jl	short loc_49B97A
		xor	ebx, ebx
		mov	edi, offset off_52FDE4

loc_49B9CA:				; CODE XREF: .text:0049B9E5j
		push	(offset	stru_5F26F0.text+4) ; s2
		mov	eax, [edi]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_49B9E7
		inc	ebx
		add	edi, 4
		cmp	ebx, 8
		jl	short loc_49B9CA

loc_49B9E7:				; CODE XREF: .text:0049B9DCj
		cmp	ebx, 8
		jge	short loc_49B9FC
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BB10
; ---------------------------------------------------------------------------

loc_49B9FC:				; CODE XREF: .text:0049B9EAj
		push	(offset	stru_5F26F0.text+4) ; s2
		push	offset aSt_1	; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_49BB10
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		cmp	dword_5F2B1E, 6
		jnz	short loc_49BA33
		cmp	stru_5F26F0._mask, 28h
		jz	short loc_49BA3A

loc_49BA33:				; CODE XREF: .text:0049BA28j
		xor	ebx, ebx
		jmp	loc_49BB10
; ---------------------------------------------------------------------------

loc_49BA3A:				; CODE XREF: .text:0049BA31j
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		cmp	dword_5F2B1E, 4
		jz	short loc_49BA7C
		push	offset aExpectingIndex ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5F2B24
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49BFE1
; ---------------------------------------------------------------------------

loc_49BA7C:				; CODE XREF: .text:0049BA4Cj
		cmp	stru_5F26F0._mask, 8
		jb	short loc_49BAB4
		push	offset aFpuRegisterIsO ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5F2B24
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49BFE1
; ---------------------------------------------------------------------------

loc_49BAB4:				; CODE XREF: .text:0049BA83j
		mov	ebx, stru_5F26F0._mask
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		cmp	dword_5F2B1E, 6
		jnz	short loc_49BAD7
		cmp	stru_5F26F0._mask, 29h
		jz	short loc_49BB05

loc_49BAD7:				; CODE XREF: .text:0049BACCj
		push	offset aExpectingRight ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5F2B24
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49BFE1
; ---------------------------------------------------------------------------

loc_49BB05:				; CODE XREF: .text:0049BAD5j
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx

loc_49BB10:				; CODE XREF: .text:0049B9F7j
					; .text:0049BA10j ...
		cmp	ebx, 8
		jge	short loc_49BB36
		push	9
		call	loc_49B284
		pop	ecx
		push	ebx
		call	loc_49B284
		pop	ecx
		inc	dword_5F2B38
		mov	dword ptr [esi+8], 6
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49BB36:				; CODE XREF: .text:0049BB13j
		push	(offset	stru_5F26F0.text+4) ; s2
		push	offset aEip	; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_49BB62
		push	(offset	stru_5F26F0.text+4) ; s2
		push	(offset	aEip+2)	; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49BB87

loc_49BB62:				; CODE XREF: .text:0049BB4Aj
		push	0Ah
		call	loc_49B284
		pop	ecx
		inc	dword_5F2B38
		mov	dword ptr [esi+8], 3
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49BB87:				; CODE XREF: .text:0049BB60j
		push	(offset	stru_5F26F0.text+4) ; s2
		push	offset aEfl_0	; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_49BBB3
		push	(offset	stru_5F26F0.text+4) ; s2
		push	offset aFlags_0	; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49BBD8

loc_49BBB3:				; CODE XREF: .text:0049BB9Bj
		push	0Bh
		call	loc_49B284
		pop	ecx
		inc	dword_5F2B38
		mov	dword ptr [esi+8], 3
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49BBD8:				; CODE XREF: .text:0049BBB1j
		push	(offset	stru_5F26F0.text+4) ; s2
		push	offset aFst_0	; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49BC13
		push	0Ch
		call	loc_49B284
		pop	ecx
		inc	dword_5F2B38
		mov	dword ptr [esi+8], 3
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49BC13:				; CODE XREF: .text:0049BBECj
		push	(offset	stru_5F26F0.text+4) ; s2
		push	offset aFcw_0	; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49BC4E
		push	0Dh
		call	loc_49B284
		pop	ecx
		inc	dword_5F2B38
		mov	dword ptr [esi+8], 3
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49BC4E:				; CODE XREF: .text:0049BC27j
		push	(offset	stru_5F26F0.text+4) ; s2
		push	offset aMxcsr_0	; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49BC89
		push	0Eh
		call	loc_49B284
		pop	ecx
		inc	dword_5F2B38
		mov	dword ptr [esi+8], 3
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49BC89:				; CODE XREF: .text:0049BC62j
		push	0		; errtxt
		lea	ebx, [esi+10h]
		push	ebx		; _addr
		push	0		; pmod
		push	(offset	stru_5F26F0.text+4) ; _name
		call	FindaddressW
		add	esp, 10h
		test	eax, eax
		jnz	short loc_49BCD1
		push	0Fh
		call	loc_49B284
		pop	ecx
		mov	eax, [esi+10h]
		push	eax
		call	loc_49B2DC
		pop	ecx
		inc	dword_5F2B38
		mov	dword ptr [esi+8], 3
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49BCD1:				; CODE XREF: .text:0049BCA0j
		push	ebx		; value
		push	(offset	stru_5F26F0.text+4) ; _name
		call	Getconstantbyname
		add	esp, 8
		test	eax, eax
		jnz	short loc_49BD12
		push	0Fh
		call	loc_49B284
		pop	ecx
		mov	edx, [esi+10h]
		push	edx
		call	loc_49B2DC
		pop	ecx
		inc	dword_5F2B38
		mov	dword ptr [esi+8], 3
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49BD12:				; CODE XREF: .text:0049BCE1j
		push	(offset	stru_5F26F0.text+4) ; src
		push	20h		; n
		lea	ecx, [ebp-30Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		cmp	dword_5F2B1E, 6
		jnz	loc_49BDF1
		cmp	stru_5F26F0._mask, 2Eh
		jnz	loc_49BDF1
		mov	edx, edi
		mov	eax, 100h
		sub	eax, edi
		lea	ecx, [ebp-30Ch]
		add	edx, edx
		push	offset a__0	; "."
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		cmp	dword_5F2B1E, 2
		jnz	short loc_49BDF1
		mov	eax, 100h
		lea	edx, [ebp-30Ch]
		sub	eax, edi
		add	edi, edi
		push	(offset	stru_5F26F0.text+4) ; src
		push	eax		; n
		add	edi, edx
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [esi+10h]
		lea	eax, [ebp-30Ch]
		push	0		; errtxt
		push	ecx		; _addr
		push	0		; pmod
		push	eax		; _name
		call	FindaddressW
		add	esp, 10h
		test	eax, eax
		jnz	short loc_49BDF1
		push	0Fh
		call	loc_49B284
		pop	ecx
		mov	edx, [esi+10h]
		push	edx
		call	loc_49B2DC
		pop	ecx
		inc	dword_5F2B38
		mov	dword ptr [esi+8], 3
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49BDF1:				; CODE XREF: .text:0049BD3Cj
					; .text:0049BD49j ...
		push	offset aUnrecognizedId ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5F2B24
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49BFE1
; ---------------------------------------------------------------------------

loc_49BE20:				; CODE XREF: .text:0049B8E8j
		cmp	dword_5F2B1E, 4
		jnz	short loc_49BE5A
		push	0Fh
		call	loc_49B284
		pop	ecx
		mov	eax, stru_5F26F0._mask
		push	eax
		call	loc_49B2DC
		pop	ecx
		inc	dword_5F2B38
		mov	dword ptr [esi+8], 3
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49BE5A:				; CODE XREF: .text:0049BE27j
		cmp	dword_5F2B1E, 5
		jnz	short loc_49BEA1
		push	10h
		call	loc_49B284
		pop	ecx
		xor	ebx, ebx
		mov	edi, (offset stru_5F26F0.fval+4)

loc_49BE72:				; CODE XREF: .text:0049BE82j
		xor	eax, eax
		mov	al, [edi]
		push	eax
		call	loc_49B284
		pop	ecx
		inc	ebx
		inc	edi
		cmp	ebx, 0Ah
		jl	short loc_49BE72
		inc	dword_5F2B38
		mov	dword ptr [esi+8], 6
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49BEA1:				; CODE XREF: .text:0049BE61j
		cmp	dword_5F2B1E, 3
		jnz	short loc_49BF16
		push	11h
		call	loc_49B284
		pop	ecx
		push	100h		; nt
		lea	edx, [ebp-10Ch]
		push	edx		; t
		mov	ecx, dword ptr stru_5F26F0.errmsg
		push	ecx		; nw
		push	(offset	stru_5F26F0.text+4) ; w
		call	Unicodetoutf
		add	esp, 10h
		mov	edi, eax
		xor	ebx, ebx
		lea	eax, [ebp-10Ch]
		mov	[ebp-0Ch], eax
		cmp	edi, ebx
		jl	short loc_49BEF9

loc_49BEE3:				; CODE XREF: .text:0049BEF7j
		mov	edx, [ebp-0Ch]
		xor	ecx, ecx
		mov	cl, [edx]
		push	ecx
		call	loc_49B284
		pop	ecx
		inc	ebx
		inc	dword ptr [ebp-0Ch]
		cmp	edi, ebx
		jge	short loc_49BEE3

loc_49BEF9:				; CODE XREF: .text:0049BEE1j
		inc	dword_5F2B38
		mov	dword ptr [esi+8], 0Ah
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		jmp	loc_49BFA5
; ---------------------------------------------------------------------------

loc_49BF16:				; CODE XREF: .text:0049BEA8j
		mov	eax, dword_5F2B1E
		test	eax, eax
		jz	short loc_49BF22
		dec	eax
		jnz	short loc_49BF4E

loc_49BF22:				; CODE XREF: .text:0049BF1Dj
		push	offset aUnexpectedEndO ; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5F2B24
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	short loc_49BFA5
; ---------------------------------------------------------------------------

loc_49BF4E:				; CODE XREF: .text:0049BF20j
		cmp	dword_5F2B1E, 8
		jnz	short loc_49BF7C
		push	(offset	stru_5F26F0.errmsg+4) ;	src
		push	100h		; n
		mov	ecx, dword_5F2B24
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	short loc_49BFA5
; ---------------------------------------------------------------------------

loc_49BF7C:				; CODE XREF: .text:0049BF55j
		push	offset aSyntaxError_0 ;	src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5F2B24
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1

loc_49BFA5:				; CODE XREF: .text:0049B4ABj
					; .text:0049B4BBj ...
		cmp	dword_5F2B28, 0
		jnz	short loc_49BFE1
		cmp	dword_5F2B38, 0Ch
		jle	short loc_49BFE1
		push	offset aExpressionIsTo ; "Expression is	too complex"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5F2B24
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1

loc_49BFE1:				; CODE XREF: .text:0049B42Aj
					; .text:0049B576j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_49BFE8:				; CODE XREF: .text:0049B454p
					; .text:0049B4E0p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi
		push	edi
		mov	esi, offset stru_5F26F0
		cmp	dword_5F2B28, 0
		jnz	loc_49C904
		xor	eax, eax
		xor	edx, edx
		mov	[ebp-4], eax
		xor	ebx, ebx
		mov	dword ptr [ebp-0Ch], 0FFFFFFFFh
		xor	edi, edi
		xor	eax, eax
		mov	[ebp-8], edx
		mov	[ebp-10h], eax

loc_49C01D:				; CODE XREF: .text:0049C046j
					; .text:0049C153j ...
		cmp	dword ptr [esi+42Eh], 6
		jnz	short loc_49C048
		cmp	dword ptr [esi+18h], 5Bh
		jnz	short loc_49C048
		cmp	dword ptr [ebp-4], 0
		jnz	loc_49C6E8
		mov	dword ptr [ebp-4], 1
		xor	edi, edi
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	short loc_49C01D
; ---------------------------------------------------------------------------

loc_49C048:				; CODE XREF: .text:0049C024j
					; .text:0049C02Aj
		cmp	dword ptr [esi+42Eh], 6
		jnz	loc_49C158
		cmp	dword ptr [esi+18h], 2Ah
		jnz	loc_49C158
		push	esi		; ps
		call	Scan
		pop	ecx
		test	edi, edi
		jz	short loc_49C070
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_49C09E

loc_49C070:				; CODE XREF: .text:0049C068j
		push	offset aRepeatCountIsN ; "Repeat count is not allowed here"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5F2B24
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49C904
; ---------------------------------------------------------------------------

loc_49C09E:				; CODE XREF: .text:0049C06Ej
		cmp	dword ptr [esi+42Eh], 4
		jz	short loc_49C0D6
		push	offset aConstantRepeat ; "Constant repeat count	expected"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5F2B24
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49C904
; ---------------------------------------------------------------------------

loc_49C0D6:				; CODE XREF: .text:0049C0A5j
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_49C10B
		push	offset aDuplicatedRepe ; "Duplicated repeat count"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5F2B24
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49C904
; ---------------------------------------------------------------------------

loc_49C10B:				; CODE XREF: .text:0049C0DAj
		mov	eax, [esi+18h]
		cmp	eax, 1
		jl	short loc_49C118
		cmp	eax, 20h
		jle	short loc_49C144

loc_49C118:				; CODE XREF: .text:0049C111j
		push	20h
		push	offset aRepeatCountO_1 ; "Repeat count outside of range	1..%i"
		call	_T
		pop	ecx
		push	eax		; format
		mov	edx, dword_5F2B24
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49C904
; ---------------------------------------------------------------------------

loc_49C144:				; CODE XREF: .text:0049C116j
		mov	ecx, [esi+18h]
		mov	[ebp-10h], ecx
		xor	edi, edi
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	loc_49C01D
; ---------------------------------------------------------------------------

loc_49C158:				; CODE XREF: .text:0049C04Fj
					; .text:0049C059j
		cmp	dword ptr [esi+42Eh], 2
		jnz	loc_49C5A8
		push	offset aSigned	; "SIGNED"
		lea	eax, [esi+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49C1A4
		cmp	dword ptr [ebp-8], 0
		jnz	loc_49C6E8
		test	ebx, ebx
		jnz	loc_49C6E8
		mov	dword ptr [ebp-8], 1
		mov	edi, 1
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	loc_49C01D
; ---------------------------------------------------------------------------

loc_49C1A4:				; CODE XREF: .text:0049C178j
		push	offset aUnsigned_0 ; "UNSIGNED"
		lea	eax, [esi+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49C1E3
		cmp	dword ptr [ebp-8], 0
		jnz	loc_49C6E8
		test	ebx, ebx
		jnz	loc_49C6E8
		mov	dword ptr [ebp-8], 0FFFFFFFFh
		mov	edi, 1
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	loc_49C01D
; ---------------------------------------------------------------------------

loc_49C1E3:				; CODE XREF: .text:0049C1B7j
		push	offset aByte_3	; s2
		lea	eax, [esi+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49C216
		test	ebx, ebx
		jnz	loc_49C6E8
		mov	ebx, 1
		mov	edi, 1
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	loc_49C01D
; ---------------------------------------------------------------------------

loc_49C216:				; CODE XREF: .text:0049C1F6j
		push	offset aChar_1	; s2
		lea	eax, [esi+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49C249
		test	ebx, ebx
		jnz	loc_49C6E8
		mov	ebx, 21h
		mov	edi, 1
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	loc_49C01D
; ---------------------------------------------------------------------------

loc_49C249:				; CODE XREF: .text:0049C229j
		push	offset aWord_5	; "WORD"
		lea	eax, [esi+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49C27C
		test	ebx, ebx
		jnz	loc_49C6E8
		mov	ebx, 2
		mov	edi, 1
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	loc_49C01D
; ---------------------------------------------------------------------------

loc_49C27C:				; CODE XREF: .text:0049C25Cj
		push	offset aShort_0	; "SHORT"
		lea	eax, [esi+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49C2AF
		test	ebx, ebx
		jnz	loc_49C6E8
		mov	ebx, 22h
		mov	edi, 1
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	loc_49C01D
; ---------------------------------------------------------------------------

loc_49C2AF:				; CODE XREF: .text:0049C28Fj
		push	offset aDword_1	; s2
		lea	eax, [esi+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49C2E2
		test	ebx, ebx
		jnz	loc_49C6E8
		mov	ebx, 3
		mov	edi, 1
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	loc_49C01D
; ---------------------------------------------------------------------------

loc_49C2E2:				; CODE XREF: .text:0049C2C2j
		push	offset aInt_1	; s2
		lea	eax, [esi+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49C315
		test	ebx, ebx
		jnz	loc_49C6E8
		mov	ebx, 23h
		mov	edi, 1
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	loc_49C01D
; ---------------------------------------------------------------------------

loc_49C315:				; CODE XREF: .text:0049C2F5j
		push	offset aFloat_6	; s2
		lea	eax, [esi+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49C348
		test	ebx, ebx
		jnz	loc_49C6E8
		mov	ebx, 4
		mov	edi, 1
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	loc_49C01D
; ---------------------------------------------------------------------------

loc_49C348:				; CODE XREF: .text:0049C328j
		push	offset aDouble_4 ; s2
		lea	eax, [esi+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49C37B
		test	ebx, ebx
		jnz	loc_49C6E8
		mov	ebx, 5
		mov	edi, 1
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	loc_49C01D
; ---------------------------------------------------------------------------

loc_49C37B:				; CODE XREF: .text:0049C35Bj
		push	offset aLong	; "LONG"
		lea	eax, [esi+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49C3DA
		test	ebx, ebx
		jnz	loc_49C6E8
		push	esi		; ps
		call	Scan
		cmp	dword ptr [esi+42Eh], 2
		pop	ecx
		jnz	short loc_49C3CB
		push	offset aDouble_4 ; s2
		lea	edx, [esi+2Ah]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49C3CB
		mov	ebx, 6
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	short loc_49C3D0
; ---------------------------------------------------------------------------

loc_49C3CB:				; CODE XREF: .text:0049C3A6j
					; .text:0049C3BBj
		mov	ebx, 23h

loc_49C3D0:				; CODE XREF: .text:0049C3C9j
		mov	edi, 1
		jmp	loc_49C01D
; ---------------------------------------------------------------------------

loc_49C3DA:				; CODE XREF: .text:0049C38Ej
		push	offset aAscii_3	; s2
		lea	eax, [esi+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49C40A
		test	ebx, ebx
		jnz	loc_49C6E8
		mov	ebx, 8
		xor	edi, edi
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	loc_49C01D
; ---------------------------------------------------------------------------

loc_49C40A:				; CODE XREF: .text:0049C3EDj
		push	offset aString	; s2
		lea	eax, [esi+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49C43A
		test	ebx, ebx
		jnz	loc_49C6E8
		mov	ebx, 8
		xor	edi, edi
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	loc_49C01D
; ---------------------------------------------------------------------------

loc_49C43A:				; CODE XREF: .text:0049C41Dj
		push	offset aUnicode_1 ; "UNICODE"
		lea	eax, [esi+2Ah]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_49C46A
		test	ebx, ebx
		jnz	loc_49C6E8
		mov	ebx, 9
		xor	edi, edi
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	loc_49C01D
; ---------------------------------------------------------------------------

loc_49C46A:				; CODE XREF: .text:0049C44Dj
		mov	eax, [ebp+8]
		push	eax
		call	loc_49B414
		cmp	dword ptr [ebp-4], 0
		pop	ecx
		jz	short loc_49C488
		push	63h
		mov	edx, [ebp+8]
		push	edx
		call	loc_49C90C
		add	esp, 8

loc_49C488:				; CODE XREF: .text:0049C478j
		cmp	dword_5F2B28, 0
		jnz	loc_49C904
		cmp	dword ptr [esi+42Eh], 6
		jnz	loc_49C531
		cmp	dword ptr [esi+18h], 3Ah
		jnz	loc_49C531
		cmp	dword ptr [ebp-0Ch], 0FFFFFFFFh
		jz	short loc_49C4E1
		push	offset aDuplicatedSele ; "Duplicated selector"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5F2B24
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49C904
; ---------------------------------------------------------------------------

loc_49C4E1:				; CODE XREF: .text:0049C4B0j
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+8], 3
		jz	short loc_49C519
		push	offset aInvalidTypeOfS ; "Invalid type of selector"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5F2B24
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49C904
; ---------------------------------------------------------------------------

loc_49C519:				; CODE XREF: .text:0049C4E8j
		mov	dword ptr [ebp-0Ch], 1
		mov	ecx, [ebp+8]
		xor	eax, eax
		mov	[ecx+8], eax
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	short loc_49C5A1
; ---------------------------------------------------------------------------

loc_49C531:				; CODE XREF: .text:0049C49Cj
					; .text:0049C4A6j
		cmp	dword ptr [ebp-4], 0
		jnz	loc_49C6E8
		test	ebx, ebx
		jnz	loc_49C6E8
		cmp	dword ptr [ebp-8], 0
		jge	short loc_49C552
		mov	edx, [ebp+8]
		and	dword ptr [edx+8], 0FFFFFFDFh
		jmp	short loc_49C568
; ---------------------------------------------------------------------------

loc_49C552:				; CODE XREF: .text:0049C547j
		cmp	dword ptr [ebp-8], 0
		jle	short loc_49C568
		mov	ecx, [ebp+8]
		cmp	dword ptr [ecx+8], 3
		jnz	short loc_49C568
		mov	eax, [ebp+8]
		or	dword ptr [eax+8], 20h

loc_49C568:				; CODE XREF: .text:0049C550j
					; .text:0049C556j ...
		cmp	dword ptr [ebp-10h], 0
		jz	loc_49C904
		push	offset aRepeatCountIsN ; "Repeat count is not allowed here"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5F2B24
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49C904
; ---------------------------------------------------------------------------

loc_49C5A1:				; CODE XREF: .text:0049C52Fj
		xor	edi, edi
		jmp	loc_49C01D
; ---------------------------------------------------------------------------

loc_49C5A8:				; CODE XREF: .text:0049C15Fj
		cmp	dword ptr [ebp-0Ch], 0FFFFFFFFh
		jnz	loc_49C6E8
		mov	eax, [ebp+8]
		push	eax
		call	loc_49B414
		cmp	dword ptr [ebp-4], 0
		pop	ecx
		jz	short loc_49C5D0
		push	63h
		mov	edx, [ebp+8]
		push	edx
		call	loc_49C90C
		add	esp, 8

loc_49C5D0:				; CODE XREF: .text:0049C5C0j
		cmp	dword_5F2B28, 0
		jnz	loc_49C904
		cmp	dword ptr [esi+42Eh], 6
		jnz	loc_49C679
		cmp	dword ptr [esi+18h], 3Ah
		jnz	loc_49C679
		cmp	dword ptr [ebp-0Ch], 0FFFFFFFFh
		jz	short loc_49C629
		push	offset aDuplicatedSele ; "Duplicated selector"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5F2B24
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49C904
; ---------------------------------------------------------------------------

loc_49C629:				; CODE XREF: .text:0049C5F8j
		mov	eax, [ebp+8]
		cmp	dword ptr [eax+8], 3
		jz	short loc_49C661
		push	offset aInvalidTypeOfS ; "Invalid type of selector"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5F2B24
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49C904
; ---------------------------------------------------------------------------

loc_49C661:				; CODE XREF: .text:0049C630j
		mov	dword ptr [ebp-0Ch], 1
		mov	ecx, [ebp+8]
		xor	eax, eax
		mov	[ecx+8], eax
		push	esi		; ps
		call	Scan
		pop	ecx
		jmp	short loc_49C6E1
; ---------------------------------------------------------------------------

loc_49C679:				; CODE XREF: .text:0049C5E4j
					; .text:0049C5EEj
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_49C6E8
		test	ebx, ebx
		jnz	short loc_49C6E8
		cmp	dword ptr [ebp-8], 0
		jge	short loc_49C692
		mov	edx, [ebp+8]
		and	dword ptr [edx+8], 0FFFFFFDFh
		jmp	short loc_49C6A8
; ---------------------------------------------------------------------------

loc_49C692:				; CODE XREF: .text:0049C687j
		cmp	dword ptr [ebp-8], 0
		jle	short loc_49C6A8
		mov	ecx, [ebp+8]
		cmp	dword ptr [ecx+8], 3
		jnz	short loc_49C6A8
		mov	eax, [ebp+8]
		or	dword ptr [eax+8], 20h

loc_49C6A8:				; CODE XREF: .text:0049C690j
					; .text:0049C696j ...
		cmp	dword ptr [ebp-10h], 0
		jz	loc_49C904
		push	offset aRepeatCountIsN ; "Repeat count is not allowed here"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5F2B24
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49C904
; ---------------------------------------------------------------------------

loc_49C6E1:				; CODE XREF: .text:0049C677j
		xor	edi, edi
		jmp	loc_49C01D
; ---------------------------------------------------------------------------

loc_49C6E8:				; CODE XREF: .text:0049C030j
					; .text:0049C17Ej ...
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_49C71C
		push	offset aSyntaxError_0 ;	src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5F2B24
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49C904
; ---------------------------------------------------------------------------

loc_49C71C:				; CODE XREF: .text:0049C6ECj
		mov	edx, [ebp+8]
		cmp	dword ptr [edx+8], 0
		jnz	short loc_49C74E
		push	0
		mov	ecx, [ebp+8]
		push	ecx
		call	loc_49BFE8
		add	esp, 8
		push	63h
		mov	eax, [ebp+8]
		push	eax
		call	loc_49C90C
		add	esp, 8
		cmp	dword_5F2B28, 0
		jnz	loc_49C904

loc_49C74E:				; CODE XREF: .text:0049C723j
		mov	edx, [ebp+8]
		mov	eax, [edx+8]
		cmp	eax, 3
		jz	short loc_49C78D
		cmp	eax, 23h
		jz	short loc_49C78D
		push	offset aInvalidTypeOfM ; "Invalid type of memory address"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5F2B24
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49C904
; ---------------------------------------------------------------------------

loc_49C78D:				; CODE XREF: .text:0049C757j
					; .text:0049C75Cj
		cmp	dword ptr [esi+42Eh], 6
		jnz	short loc_49C79C
		cmp	dword ptr [esi+18h], 5Dh
		jz	short loc_49C7CB

loc_49C79C:				; CODE XREF: .text:0049C794j
		push	offset aClosingBracket ; "Closing bracket expected"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5F2B24
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49C904
; ---------------------------------------------------------------------------

loc_49C7CB:				; CODE XREF: .text:0049C79Aj
		push	esi		; ps
		call	Scan
		cmp	dword ptr [ebp-0Ch], 0
		pop	ecx
		jl	short loc_49C7E6
		push	29h
		call	loc_49B284
		pop	ecx
		dec	dword_5F2B38

loc_49C7E6:				; CODE XREF: .text:0049C7D6j
		test	ebx, ebx
		jnz	short loc_49C7EF
		mov	ebx, 3

loc_49C7EF:				; CODE XREF: .text:0049C7E8j
		cmp	dword ptr [ebp-8], 0
		jge	short loc_49C7FA
		and	ebx, 0FFFFFFDFh
		jmp	short loc_49C812
; ---------------------------------------------------------------------------

loc_49C7FA:				; CODE XREF: .text:0049C7F3j
		cmp	dword ptr [ebp-8], 0
		jle	short loc_49C812
		cmp	ebx, 1
		jz	short loc_49C80F
		cmp	ebx, 2
		jz	short loc_49C80F
		cmp	ebx, 3
		jnz	short loc_49C812

loc_49C80F:				; CODE XREF: .text:0049C803j
					; .text:0049C808j
		or	ebx, 20h

loc_49C812:				; CODE XREF: .text:0049C7F8j
					; .text:0049C7FEj ...
		mov	eax, ebx
		cmp	eax, 8
		jge	short loc_49C826
		dec	eax
		sub	eax, 3
		jb	short loc_49C83A
		sub	eax, 3
		jb	short loc_49C852
		jmp	short loc_49C895
; ---------------------------------------------------------------------------

loc_49C826:				; CODE XREF: .text:0049C817j
		add	eax, 0FFFFFFF8h
		sub	eax, 2
		jb	short loc_49C85E
		jz	short loc_49C869
		add	eax, 0FFFFFFE9h
		sub	eax, 3
		jb	short loc_49C846
		jmp	short loc_49C895
; ---------------------------------------------------------------------------

loc_49C83A:				; CODE XREF: .text:0049C81Dj
		mov	edx, [ebp+8]
		mov	dword ptr [edx+8], 3
		jmp	short loc_49C8C0
; ---------------------------------------------------------------------------

loc_49C846:				; CODE XREF: .text:0049C836j
		mov	ecx, [ebp+8]
		mov	dword ptr [ecx+8], 23h
		jmp	short loc_49C8C0
; ---------------------------------------------------------------------------

loc_49C852:				; CODE XREF: .text:0049C822j
		mov	eax, [ebp+8]
		mov	dword ptr [eax+8], 6
		jmp	short loc_49C8C0
; ---------------------------------------------------------------------------

loc_49C85E:				; CODE XREF: .text:0049C82Cj
		mov	edx, [ebp+8]
		mov	[edx+8], ebx
		jmp	loc_49C904
; ---------------------------------------------------------------------------

loc_49C869:				; CODE XREF: .text:0049C82Ej
		push	offset aSyntaxError_0 ;	src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5F2B24
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	short loc_49C904
; ---------------------------------------------------------------------------

loc_49C895:				; CODE XREF: .text:0049C824j
					; .text:0049C838j
		push	offset aInternalErro_3 ; "Internal error"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5F2B24
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	short loc_49C904
; ---------------------------------------------------------------------------

loc_49C8C0:				; CODE XREF: .text:0049C844j
					; .text:0049C850j ...
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_49C8CC
		cmp	dword ptr [ebp-10h], 1
		jnz	short loc_49C8E0

loc_49C8CC:				; CODE XREF: .text:0049C8C4j
		mov	edx, [ebp+8]
		mov	dword ptr [edx+0Ch], 1
		push	1Ah
		call	loc_49B284
		pop	ecx
		jmp	short loc_49C8FD
; ---------------------------------------------------------------------------

loc_49C8E0:				; CODE XREF: .text:0049C8CAj
		mov	ecx, [ebp+8]
		mov	eax, [ebp-10h]
		mov	[ecx+0Ch], eax
		push	1Bh
		call	loc_49B284
		pop	ecx
		xor	edx, edx
		mov	dl, [ebp-10h]
		push	edx
		call	loc_49B284
		pop	ecx

loc_49C8FD:				; CODE XREF: .text:0049C8DEj
		push	ebx
		call	loc_49B284
		pop	ecx

loc_49C904:				; CODE XREF: .text:0049BFFDj
					; .text:0049C099j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_49C90C:				; CODE XREF: .text:0049B45Fp
					; .text:0049C480p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDE0h
		cmp	dword_5F2B28, 0
		push	ebx
		push	esi
		push	edi
		lea	edi, [ebp-220h]
		mov	ebx, [ebp+8]
		jnz	loc_49D21E
		push	21Ah		; n
		push	0		; c
		push	edi		; s
		call	_memset
		add	esp, 0Ch

loc_49C93E:				; CODE XREF: .text:0049D219j
		cmp	dword_5F2B1E, 6
		jnz	loc_49D21E
		mov	eax, stru_5F26F0._mask
		push	eax
		call	loc_49B340
		pop	ecx
		test	eax, eax
		jl	loc_49D21E
		cmp	eax, [ebp+0Ch]
		jg	loc_49D21E
		cmp	dword ptr [ebx+0Ch], 1
		jle	short loc_49C99D
		push	offset aRepeatCountIsA ; "Repeat count is allowed only in pure me"...
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5F2B24
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword_5F2B28, 1
		jmp	loc_49D21E
; ---------------------------------------------------------------------------

loc_49C99D:				; CODE XREF: .text:0049C96Cj
		mov	[ebp-4], eax
		mov	esi, stru_5F26F0._mask
		push	offset stru_5F26F0 ; ps
		call	Scan
		pop	ecx
		push	0
		push	edi
		call	loc_49BFE8
		add	esp, 8
		cmp	dword_5F2B28, 0
		jnz	loc_49D21E
		cmp	dword_5F2B1E, 6
		jnz	short loc_49CA02
		mov	eax, stru_5F26F0._mask
		push	eax
		call	loc_49B340
		pop	ecx
		test	eax, eax
		jle	short loc_49CA02
		cmp	eax, [ebp-4]
		jge	short loc_49CA02
		mov	edx, [ebp-4]
		dec	edx
		push	edx
		push	edi
		call	loc_49C90C
		add	esp, 8
		cmp	dword_5F2B28, 0
		jnz	loc_49D21E

loc_49CA02:				; CODE XREF: .text:0049C9D0j
					; .text:0049C9E0j ...
		cmp	dword ptr [ebx+8], 8
		jnz	short loc_49CA36
		cmp	esi, 2Bh
		jz	short loc_49CA12
		cmp	esi, 2Dh
		jnz	short loc_49CA36

loc_49CA12:				; CODE XREF: .text:0049CA0Bj
		mov	eax, [edi+8]
		cmp	eax, 3
		jz	short loc_49CA1F
		cmp	eax, 23h
		jnz	short loc_49CA36

loc_49CA1F:				; CODE XREF: .text:0049CA18j
		mov	edx, 2Ah
		cmp	esi, 2Bh
		jz	short loc_49CA2A
		inc	edx

loc_49CA2A:				; CODE XREF: .text:0049CA27j
		push	edx
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CA36:				; CODE XREF: .text:0049CA06j
					; .text:0049CA10j ...
		cmp	dword ptr [edi+8], 8
		jnz	short loc_49CA62
		cmp	esi, 2Bh
		jnz	short loc_49CA62
		mov	eax, [ebx+8]
		cmp	eax, 3
		jz	short loc_49CA4E
		cmp	eax, 23h
		jnz	short loc_49CA62

loc_49CA4E:				; CODE XREF: .text:0049CA47j
		push	2Ah
		call	loc_49B284
		pop	ecx
		mov	dword ptr [ebx+8], 8
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CA62:				; CODE XREF: .text:0049CA3Aj
					; .text:0049CA3Fj ...
		cmp	dword ptr [ebx+8], 9
		jnz	short loc_49CA98
		cmp	esi, 2Bh
		jz	short loc_49CA72
		cmp	esi, 2Dh
		jnz	short loc_49CA98

loc_49CA72:				; CODE XREF: .text:0049CA6Bj
		mov	eax, [edi+8]
		cmp	eax, 3
		jz	short loc_49CA7F
		cmp	eax, 23h
		jnz	short loc_49CA98

loc_49CA7F:				; CODE XREF: .text:0049CA78j
		mov	edx, 2Ch
		cmp	esi, 2Bh
		jz	short loc_49CA8C
		add	edx, 2

loc_49CA8C:				; CODE XREF: .text:0049CA87j
		push	edx
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CA98:				; CODE XREF: .text:0049CA66j
					; .text:0049CA70j ...
		cmp	dword ptr [edi+8], 9
		jnz	short loc_49CAC4
		cmp	esi, 2Bh
		jnz	short loc_49CAC4
		mov	eax, [ebx+8]
		cmp	eax, 3
		jz	short loc_49CAB0
		cmp	eax, 23h
		jnz	short loc_49CAC4

loc_49CAB0:				; CODE XREF: .text:0049CAA9j
		push	2Dh
		call	loc_49B284
		pop	ecx
		mov	dword ptr [ebx+8], 9
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CAC4:				; CODE XREF: .text:0049CA9Cj
					; .text:0049CAA1j ...
		cmp	dword ptr [ebx+8], 3
		jnz	short loc_49CB04
		cmp	esi, 3D3Dh
		jz	short loc_49CADA
		cmp	esi, 3D21h
		jnz	short loc_49CB04

loc_49CADA:				; CODE XREF: .text:0049CAD0j
		cmp	dword ptr [edi+8], 0Ah
		jnz	short loc_49CB04
		push	2Fh
		call	loc_49B284
		pop	ecx
		cmp	esi, 3D21h
		jnz	short loc_49CAF8
		push	16h
		call	loc_49B284
		pop	ecx

loc_49CAF8:				; CODE XREF: .text:0049CAEEj
		mov	dword ptr [ebx+8], 3
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CB04:				; CODE XREF: .text:0049CAC8j
					; .text:0049CAD8j ...
		cmp	dword ptr [ebx+8], 8
		jnz	short loc_49CB44
		cmp	esi, 3D3Dh
		jz	short loc_49CB1A
		cmp	esi, 3D21h
		jnz	short loc_49CB44

loc_49CB1A:				; CODE XREF: .text:0049CB10j
		cmp	dword ptr [edi+8], 0Ah
		jnz	short loc_49CB44
		push	30h
		call	loc_49B284
		pop	ecx
		cmp	esi, 3D21h
		jnz	short loc_49CB38
		push	16h
		call	loc_49B284
		pop	ecx

loc_49CB38:				; CODE XREF: .text:0049CB2Ej
		mov	dword ptr [ebx+8], 3
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CB44:				; CODE XREF: .text:0049CB08j
					; .text:0049CB18j ...
		cmp	dword ptr [ebx+8], 9
		jnz	short loc_49CB84
		cmp	esi, 3D3Dh
		jz	short loc_49CB5A
		cmp	esi, 3D21h
		jnz	short loc_49CB84

loc_49CB5A:				; CODE XREF: .text:0049CB50j
		cmp	dword ptr [edi+8], 0Ah
		jnz	short loc_49CB84
		push	31h
		call	loc_49B284
		pop	ecx
		cmp	esi, 3D21h
		jnz	short loc_49CB78
		push	16h
		call	loc_49B284
		pop	ecx

loc_49CB78:				; CODE XREF: .text:0049CB6Ej
		mov	dword ptr [ebx+8], 3
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CB84:				; CODE XREF: .text:0049CB48j
					; .text:0049CB58j ...
		mov	eax, [ebx+8]
		cmp	eax, 3
		jz	short loc_49CB9A
		cmp	eax, 23h
		jz	short loc_49CB9A
		cmp	eax, 6
		jnz	loc_49D1D5

loc_49CB9A:				; CODE XREF: .text:0049CB8Aj
					; .text:0049CB8Fj
		mov	eax, [edi+8]
		cmp	eax, 3
		jz	short loc_49CBB0
		cmp	eax, 23h
		jz	short loc_49CBB0
		cmp	eax, 6
		jnz	loc_49D1D5

loc_49CBB0:				; CODE XREF: .text:0049CBA0j
					; .text:0049CBA5j
		cmp	dword ptr [ebx+8], 6
		jnz	short loc_49CBDD
		cmp	dword ptr [edi+8], 3
		jnz	short loc_49CBC6
		push	1Ch
		call	loc_49B284
		pop	ecx
		jmp	short loc_49CBD4
; ---------------------------------------------------------------------------

loc_49CBC6:				; CODE XREF: .text:0049CBBAj
		cmp	dword ptr [edi+8], 23h
		jnz	short loc_49CBD4
		push	1Dh
		call	loc_49B284
		pop	ecx

loc_49CBD4:				; CODE XREF: .text:0049CBC4j
					; .text:0049CBCAj
		mov	dword ptr [edi+8], 6
		jmp	short loc_49CC42
; ---------------------------------------------------------------------------

loc_49CBDD:				; CODE XREF: .text:0049CBB4j
		cmp	dword ptr [edi+8], 6
		jnz	short loc_49CC0A
		cmp	dword ptr [ebx+8], 3
		jnz	short loc_49CBF3
		push	1Eh
		call	loc_49B284
		pop	ecx
		jmp	short loc_49CC01
; ---------------------------------------------------------------------------

loc_49CBF3:				; CODE XREF: .text:0049CBE7j
		cmp	dword ptr [ebx+8], 23h
		jnz	short loc_49CC01
		push	1Fh
		call	loc_49B284
		pop	ecx

loc_49CC01:				; CODE XREF: .text:0049CBF1j
					; .text:0049CBF7j
		mov	dword ptr [ebx+8], 6
		jmp	short loc_49CC42
; ---------------------------------------------------------------------------

loc_49CC0A:				; CODE XREF: .text:0049CBE1j
		cmp	dword ptr [ebx+8], 3
		jnz	short loc_49CC1F
		cmp	dword ptr [edi+8], 23h
		jnz	short loc_49CC1F
		mov	dword ptr [edi+8], 3
		jmp	short loc_49CC42
; ---------------------------------------------------------------------------

loc_49CC1F:				; CODE XREF: .text:0049CC0Ej
					; .text:0049CC14j
		cmp	dword ptr [edi+8], 3
		jnz	short loc_49CC42
		cmp	dword ptr [ebx+8], 23h
		jnz	short loc_49CC42
		cmp	esi, 3C3Ch
		jz	short loc_49CC42
		cmp	esi, 3E3Eh
		jz	short loc_49CC42
		mov	dword ptr [ebx+8], 3

loc_49CC42:				; CODE XREF: .text:0049CBDBj
					; .text:0049CC08j ...
		cmp	dword ptr [ebx+8], 6
		jnz	loc_49CDC5
		mov	edx, esi
		cmp	edx, 3Eh
		jg	short loc_49CCB8
		jz	loc_49CD48
		add	edx, 0FFFFFFD6h	; switch 19 cases
		cmp	edx, 12h
		ja	loc_49CD84	; jumptable 0049CC65 default case
		jmp	ds:off_49CC6C[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_49CC6C	dd offset loc_49CCD8	; DATA XREF: .text:0049CC65r
		dd offset loc_49CCF2	; jump table for switch	statement
		dd offset loc_49CD84
		dd offset loc_49CCFF
		dd offset loc_49CD84
		dd offset loc_49CCE5
		dd offset loc_49CD84
		dd offset loc_49CD84
		dd offset loc_49CD84
		dd offset loc_49CD84
		dd offset loc_49CD84
		dd offset loc_49CD84
		dd offset loc_49CD84
		dd offset loc_49CD84
		dd offset loc_49CD84
		dd offset loc_49CD84
		dd offset loc_49CD84
		dd offset loc_49CD84
		dd offset loc_49CD34
; ---------------------------------------------------------------------------

loc_49CCB8:				; CODE XREF: .text:0049CC51j
		sub	edx, 3D21h
		jz	loc_49CD70
		sub	edx, 1Bh
		jz	short loc_49CD0C
		dec	edx
		jz	loc_49CD5C
		dec	edx
		jz	short loc_49CD20
		jmp	loc_49CD84	; jumptable 0049CC65 default case
; ---------------------------------------------------------------------------

loc_49CCD8:				; CODE XREF: .text:0049CC65j
					; DATA XREF: .text:off_49CC6Co
		push	32h		; jumptable 0049CC65 case 42
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CCE5:				; CODE XREF: .text:0049CC65j
					; DATA XREF: .text:off_49CC6Co
		push	33h		; jumptable 0049CC65 case 47
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CCF2:				; CODE XREF: .text:0049CC65j
					; DATA XREF: .text:off_49CC6Co
		push	34h		; jumptable 0049CC65 case 43
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CCFF:				; CODE XREF: .text:0049CC65j
					; DATA XREF: .text:off_49CC6Co
		push	35h		; jumptable 0049CC65 case 45
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CD0C:				; CODE XREF: .text:0049CCC7j
		push	36h
		call	loc_49B284
		pop	ecx
		mov	dword ptr [ebx+8], 3
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CD20:				; CODE XREF: .text:0049CCD1j
		push	37h
		call	loc_49B284
		pop	ecx
		mov	dword ptr [ebx+8], 3
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CD34:				; CODE XREF: .text:0049CC65j
					; DATA XREF: .text:off_49CC6Co
		push	38h		; jumptable 0049CC65 case 60
		call	loc_49B284
		pop	ecx
		mov	dword ptr [ebx+8], 3
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CD48:				; CODE XREF: .text:0049CC53j
		push	39h
		call	loc_49B284
		pop	ecx
		mov	dword ptr [ebx+8], 3
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CD5C:				; CODE XREF: .text:0049CCCAj
		push	3Ah
		call	loc_49B284
		pop	ecx
		mov	dword ptr [ebx+8], 3
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CD70:				; CODE XREF: .text:0049CCBEj
		push	3Bh
		call	loc_49B284
		pop	ecx
		mov	dword ptr [ebx+8], 3
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CD84:				; CODE XREF: .text:0049CC5Fj
					; .text:0049CC65j ...
		push	offset aInvalidFloat_1 ; jumptable 0049CC65 default case
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, dword_5F2B24
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	eax, eax
		add	eax, dword_5F2B24
		push	esi		; op
		push	eax		; s
		call	Optostring
		add	esp, 8
		mov	dword_5F2B28, 1
		jmp	loc_49D21E
; ---------------------------------------------------------------------------

loc_49CDC5:				; CODE XREF: .text:0049CC46j
		cmp	dword ptr [ebx+8], 3
		jnz	loc_49CFAE
		mov	eax, esi
		cmp	eax, 7Ch
		jg	short loc_49CE31
		jz	loc_49CF46
		cmp	eax, 2Dh
		jg	short loc_49CE0C
		jz	loc_49CEB7
		sub	eax, 25h
		jz	loc_49CE9D
		dec	eax
		jz	loc_49CF2C
		sub	eax, 4
		jz	loc_49CE83
		dec	eax
		jz	loc_49CEAA
		jmp	loc_49CF6D
; ---------------------------------------------------------------------------

loc_49CE0C:				; CODE XREF: .text:0049CDDFj
		sub	eax, 2Fh
		jz	short loc_49CE90
		sub	eax, 0Dh
		jz	loc_49CEF8
		sub	eax, 2
		jz	loc_49CF05
		sub	eax, 20h
		jz	loc_49CF39
		jmp	loc_49CF6D
; ---------------------------------------------------------------------------

loc_49CE31:				; CODE XREF: .text:0049CDD4j
		cmp	eax, 3D3Dh
		jg	short loc_49CE65
		jz	loc_49CF12
		sub	eax, 2626h
		jz	loc_49CF53
		sub	eax, 1616h
		jz	short loc_49CEC4
		sub	eax, 0E5h
		jz	loc_49CF1F
		sub	eax, 1Bh
		jz	short loc_49CEDE
		jmp	loc_49CF6D
; ---------------------------------------------------------------------------

loc_49CE65:				; CODE XREF: .text:0049CE36j
		sub	eax, 3D3Eh
		jz	short loc_49CEEB
		sub	eax, 100h
		jz	short loc_49CED1
		sub	eax, 3E3Eh
		jz	loc_49CF60
		jmp	loc_49CF6D
; ---------------------------------------------------------------------------

loc_49CE83:				; CODE XREF: .text:0049CDFAj
		push	3Ch
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CE90:				; CODE XREF: .text:0049CE0Fj
		push	3Dh
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CE9D:				; CODE XREF: .text:0049CDEAj
		push	3Eh
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CEAA:				; CODE XREF: .text:0049CE01j
		push	4Ch
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CEB7:				; CODE XREF: .text:0049CDE1j
		push	4Dh
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CEC4:				; CODE XREF: .text:0049CE4Ej
		push	4Eh
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CED1:				; CODE XREF: .text:0049CE71j
		push	3Fh
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CEDE:				; CODE XREF: .text:0049CE5Ej
		push	40h
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CEEB:				; CODE XREF: .text:0049CE6Aj
		push	41h
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CEF8:				; CODE XREF: .text:0049CE14j
		push	42h
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CF05:				; CODE XREF: .text:0049CE1Dj
		push	43h
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CF12:				; CODE XREF: .text:0049CE38j
		push	4Fh
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CF1F:				; CODE XREF: .text:0049CE55j
		push	50h
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CF2C:				; CODE XREF: .text:0049CDF1j
		push	51h
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CF39:				; CODE XREF: .text:0049CE26j
		push	52h
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CF46:				; CODE XREF: .text:0049CDD6j
		push	53h
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CF53:				; CODE XREF: .text:0049CE43j
		push	54h
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CF60:				; CODE XREF: .text:0049CE78j
		push	55h
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49CF6D:				; CODE XREF: .text:0049CE07j
					; .text:0049CE2Cj ...
		push	offset aInvalidOperati ; "Invalid operation "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5F2B24
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	eax, eax
		add	eax, dword_5F2B24
		push	esi		; op
		push	eax		; s
		call	Optostring
		add	esp, 8
		mov	dword_5F2B28, 1
		jmp	loc_49D21E
; ---------------------------------------------------------------------------

loc_49CFAE:				; CODE XREF: .text:0049CDC9j
		mov	ecx, esi
		cmp	ecx, 7Ch
		jg	short loc_49D014
		jz	loc_49D166
		cmp	ecx, 2Dh
		jg	short loc_49CFEB
		jz	loc_49D0AD
		sub	ecx, 25h
		jz	loc_49D093
		dec	ecx
		jz	loc_49D14C
		sub	ecx, 4
		jz	loc_49D079
		dec	ecx
		jz	loc_49D0A0
		jmp	loc_49D198
; ---------------------------------------------------------------------------

loc_49CFEB:				; CODE XREF: .text:0049CFBEj
		sub	ecx, 2Fh
		jz	loc_49D086
		sub	ecx, 0Dh
		jz	loc_49D0FC
		sub	ecx, 2
		jz	loc_49D110
		sub	ecx, 20h
		jz	loc_49D159
		jmp	loc_49D198
; ---------------------------------------------------------------------------

loc_49D014:				; CODE XREF: .text:0049CFB3j
		cmp	ecx, 3D3Dh
		jg	short loc_49D054
		jz	loc_49D124
		sub	ecx, 2626h
		jz	loc_49D173
		sub	ecx, 1616h
		jz	loc_49D0BA
		sub	ecx, 0E5h
		jz	loc_49D138
		sub	ecx, 1Bh
		jz	loc_49D0D4
		jmp	loc_49D198
; ---------------------------------------------------------------------------

loc_49D054:				; CODE XREF: .text:0049D01Aj
		sub	ecx, 3D3Eh
		jz	loc_49D0E8
		sub	ecx, 100h
		jz	short loc_49D0C7
		sub	ecx, 3E3Eh
		jz	loc_49D187
		jmp	loc_49D198
; ---------------------------------------------------------------------------

loc_49D079:				; CODE XREF: .text:0049CFD9j
		push	44h
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49D086:				; CODE XREF: .text:0049CFEEj
		push	45h
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49D093:				; CODE XREF: .text:0049CFC9j
		push	46h
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49D0A0:				; CODE XREF: .text:0049CFE0j
		push	4Ch
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49D0AD:				; CODE XREF: .text:0049CFC0j
		push	4Dh
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49D0BA:				; CODE XREF: .text:0049D034j
		push	4Eh
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49D0C7:				; CODE XREF: .text:0049D066j
		push	47h
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49D0D4:				; CODE XREF: .text:0049D049j
		push	48h
		call	loc_49B284
		pop	ecx
		mov	dword ptr [ebx+8], 3
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49D0E8:				; CODE XREF: .text:0049D05Aj
		push	49h
		call	loc_49B284
		pop	ecx
		mov	dword ptr [ebx+8], 3
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49D0FC:				; CODE XREF: .text:0049CFF7j
		push	4Ah
		call	loc_49B284
		pop	ecx
		mov	dword ptr [ebx+8], 3
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49D110:				; CODE XREF: .text:0049D000j
		push	4Bh
		call	loc_49B284
		pop	ecx
		mov	dword ptr [ebx+8], 3
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49D124:				; CODE XREF: .text:0049D01Cj
		push	4Fh
		call	loc_49B284
		pop	ecx
		mov	dword ptr [ebx+8], 3
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49D138:				; CODE XREF: .text:0049D040j
		push	50h
		call	loc_49B284
		pop	ecx
		mov	dword ptr [ebx+8], 3
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49D14C:				; CODE XREF: .text:0049CFD0j
		push	51h
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49D159:				; CODE XREF: .text:0049D009j
		push	52h
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49D166:				; CODE XREF: .text:0049CFB5j
		push	53h
		call	loc_49B284
		pop	ecx
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49D173:				; CODE XREF: .text:0049D028j
		push	54h
		call	loc_49B284
		pop	ecx
		mov	dword ptr [ebx+8], 3
		jmp	loc_49D213
; ---------------------------------------------------------------------------

loc_49D187:				; CODE XREF: .text:0049D06Ej
		push	55h
		call	loc_49B284
		pop	ecx
		mov	dword ptr [ebx+8], 3
		jmp	short loc_49D213
; ---------------------------------------------------------------------------

loc_49D198:				; CODE XREF: .text:0049CFE6j
					; .text:0049D00Fj ...
		push	offset aInvalidOperati ; "Invalid operation "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, dword_5F2B24
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	eax, eax
		add	eax, dword_5F2B24
		push	esi		; op
		push	eax		; s
		call	Optostring
		add	esp, 8
		mov	dword_5F2B28, 1
		jmp	short loc_49D21E
; ---------------------------------------------------------------------------

loc_49D1D5:				; CODE XREF: .text:0049CB94j
					; .text:0049CBAAj
		push	offset aInvalidOperati ; "Invalid operation "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, dword_5F2B24
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	eax, eax
		add	eax, dword_5F2B24
		push	esi		; op
		push	eax		; s
		call	Optostring
		add	esp, 8
		mov	dword_5F2B28, 1
		jmp	short loc_49D21E
; ---------------------------------------------------------------------------

loc_49D213:				; CODE XREF: .text:0049CA31j
					; .text:0049CA5Dj ...
		dec	dword_5F2B38
		jmp	loc_49C93E
; ---------------------------------------------------------------------------

loc_49D21E:				; CODE XREF: .text:0049C928j
					; .text:0049C945j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		