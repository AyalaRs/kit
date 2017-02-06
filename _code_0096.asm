.code

; Exported entry 349. _Findfiledump
; Exported entry 509. Findfiledump

; t_dump *__cdecl Findfiledump(wchar_t *path)
		public Findfiledump
Findfiledump:				; CODE XREF: .text:00412590p
					; .text:004B29C3p ...
		push	ebp		; _Findfiledump
		mov	ebp, esp
		add	esp, 0FFFFFDF4h
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4C047E
		cmp	word ptr [eax],	0
		jnz	short loc_4C0482

loc_4C047E:				; CODE XREF: .text:004C0476j
		xor	eax, eax
		jmp	short loc_4C04CD
; ---------------------------------------------------------------------------

loc_4C0482:				; CODE XREF: .text:004C047Cj
		xor	edx, edx
		cmp	_imp__PathCanonicalizeW, 0
		mov	[ebp-4], edx
		jz	short loc_4C04B8
		push	eax		; _DWORD
		lea	ecx, [ebp-20Ch]
		push	ecx		; _DWORD
		call	_imp__PathCanonicalizeW
		lea	eax, [ebp-4]
		lea	edx, [ebp-20Ch]
		push	eax		; lp
		push	edx		; wp
		push	488h		; msg
		call	Broadcast
		add	esp, 0Ch
		jmp	short loc_4C04CA
; ---------------------------------------------------------------------------

loc_4C04B8:				; CODE XREF: .text:004C048Ej
		lea	ecx, [ebp-4]
		push	ecx		; lp
		push	eax		; wp
		push	488h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_4C04CA:				; CODE XREF: .text:004C04B6j
		mov	eax, [ebp-4]

loc_4C04CD:				; CODE XREF: .text:004C0480j
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 350. _Createdumpwindow
; Exported entry 440. Createdumpwindow

; int __usercall Createdumpwindow@<eax>(wchar_t	*_title,	ulong base, ulong size,	wchar_t	*path, ulong dumptype, ulong sel0, ulong sel1, wchar_t *strname)
		public Createdumpwindow
Createdumpwindow:			; CODE XREF: .text:0040A97Bp
					; .text:0040B118p ...
		push	ebp		; _Createdumpwindow
		mov	ebp, esp
		add	esp, 0FFFFFBF4h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+14h], 0
		mov	esi, [ebp+10h]
		jnz	short loc_4C04F4
		test	esi, esi
		jnz	short loc_4C04F4
		xor	eax, eax
		jmp	loc_4C0980
; ---------------------------------------------------------------------------

loc_4C04F4:				; CODE XREF: .text:004C04E7j
					; .text:004C04EBj
		cmp	dword ptr [ebp+14h], 0
		jz	loc_4C05C6
		mov	edx, [ebp+14h]
		push	edx		; path
		call	Findfiledump
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jz	loc_4C05C6
		mov	eax, [ebp+20h]
		cmp	eax, [ebp+1Ch]
		jbe	short loc_4C0574
		mov	edx, [ebp+1Ch]
		cmp	edx, [ebx]
		jb	short loc_4C0574
		mov	ecx, [ebx]
		add	ecx, [ebx+4]
		cmp	ecx, [ebp+20h]
		jb	short loc_4C0574
		push	1		; mode
		mov	eax, [ebp+1Ch]
		push	eax		; _addr
		push	ebx		; pd
		call	Scrolldumpwindow
		add	esp, 0Ch
		mov	edx, [ebp+1Ch]
		mov	[ebx+288h], edx
		mov	ecx, [ebp+20h]
		mov	[ebx+28Ch], ecx
		mov	eax, [ebx+288h]
		mov	[ebx+290h], eax
		mov	edx, [ebx+28Ch]
		mov	[ebx+294h], edx
		push	0		; bErase
		push	0		; lpRect
		mov	ecx, [ebx+244h]
		push	ecx		; hWnd
		call	InvalidateRect

loc_4C0574:				; CODE XREF: .text:004C0518j
					; .text:004C051Fj ...
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4C0591
		push	0		; lParam
		mov	edx, [ebx+23Ch]
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4C0591:				; CODE XREF: .text:004C057Bj
		mov	ecx, [ebx+23Ch]	; int
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_4C05AF
		push	9		; nCmdShow
		mov	eax, [ebx+23Ch]
		push	eax		; hWnd
		call	ShowWindow

loc_4C05AF:				; CODE XREF: .text:004C059Fj
		mov	edx, [ebx+244h]	; int
		push	edx		; hWnd
		call	SetFocus
		mov	eax, [ebx+244h]	; int
		jmp	loc_4C0980
; ---------------------------------------------------------------------------

loc_4C05C6:				; CODE XREF: .text:004C04F8j
					; .text:004C050Cj
		push	2		; flags
		push	70Ch		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4C05E2
		xor	eax, eax
		jmp	loc_4C0980
; ---------------------------------------------------------------------------

loc_4C05E2:				; CODE XREF: .text:004C05D9j
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebp-4], edx
		mov	[ebx+0Ch], ecx
		cmp	dword ptr [ebp+14h], 0
		jz	loc_4C0759
		push	offset aRb_0	; "rb"
		mov	eax, [ebp+14h]
		push	eax		; path
		call	__wfopen
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jnz	short loc_4C062A
		mov	eax, [ebp+14h]
		push	eax		; arglist
		push	offset aUnableToOpenFi ; "Unable to open file '%s' for dump"
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		jmp	loc_4C094A
; ---------------------------------------------------------------------------

loc_4C062A:				; CODE XREF: .text:004C060Bj
		xor	edx, edx
		mov	[ebp+0Ch], edx
		push	2		; whence
		push	0		; offset
		push	edi		; stream
		call	_fseek
		add	esp, 0Ch
		push	edi		; stream
		call	_ftell
		pop	ecx		; int
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4C0666
		mov	eax, [ebp+14h]
		push	eax		; arglist
		push	offset aUnableToDumpFi ; "Unable to dump file '%s'. It has zero l"...
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		jmp	loc_4C094A
; ---------------------------------------------------------------------------

loc_4C0666:				; CODE XREF: .text:004C0647j
		push	0		; flags
		push	esi		; size
		call	Memalloc
		add	esp, 8
		mov	[ebx+298h], eax
		cmp	dword ptr [ebx+298h], 0
		jz	loc_4C094A
		push	0		; whence
		push	0		; offset
		push	edi		; stream
		call	_fseek
		add	esp, 0Ch
		push	edi		; stream
		push	esi		; n
		push	1		; size
		mov	edx, [ebx+298h]
		push	edx		; ptr
		call	_fread
		add	esp, 10h
		cmp	esi, eax
		jz	short loc_4C06C5
		mov	ecx, [ebp+14h]
		push	ecx		; arglist
		push	offset aUnableToRead_1 ; "Unable to read file '%s'"
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		add	esp, 8
		jmp	loc_4C094A
; ---------------------------------------------------------------------------

loc_4C06C5:				; CODE XREF: .text:004C06A6j
		push	offset aFiledump ; "Filedump"
		push	20h		; n
		lea	eax, [ebx+18h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, [ebx+18h]
		push	edx		; s
		call	addTabWindows
		cmp	dword ptr [ebp+8], 0
		pop	ecx
		jz	short loc_4C06F1
		mov	ecx, [ebp+8]
		cmp	word ptr [ecx],	0
		jnz	short loc_4C0719

loc_4C06F1:				; CODE XREF: .text:004C06E6j
		mov	eax, [ebp+14h]
		push	eax
		push	offset aFileS	; "File	%s"
		call	_T
		pop	ecx
		push	eax		; format
		lea	edx, [ebp-40Ch]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-40Ch]
		mov	[ebp+8], ecx

loc_4C0719:				; CODE XREF: .text:004C06EFj
		cmp	_imp__PathCanonicalizeW, 0
		jz	short loc_4C0735
		mov	eax, [ebp+14h]
		lea	edx, [ebx+29Ch]
		push	eax		; _DWORD
		push	edx		; _DWORD
		call	_imp__PathCanonicalizeW
		jmp	short loc_4C074D
; ---------------------------------------------------------------------------

loc_4C0735:				; CODE XREF: .text:004C0720j
		mov	ecx, [ebp+14h]
		lea	eax, [ebx+29Ch]
		push	ecx		; src
		push	104h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4C074D:				; CODE XREF: .text:004C0733j
		push	edi		; stream
		call	_fclose
		pop	ecx
		jmp	loc_4C0817
; ---------------------------------------------------------------------------

loc_4C0759:				; CODE XREF: .text:004C05F0j
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4C0768
		mov	edx, [ebp+8]
		cmp	word ptr [edx],	0
		jnz	short loc_4C07A9

loc_4C0768:				; CODE XREF: .text:004C075Dj
		push	offset aDump	; "Dump	- "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-40Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebp-40Ch]
		add	eax, eax
		add	eax, ecx
		push	esi		; size
		mov	edx, [ebp+0Ch]
		push	edx		; _addr
		push	eax		; s
		call	Decoderange
		add	esp, 0Ch
		lea	eax, [ebp-40Ch]
		mov	[ebp+8], eax

loc_4C07A9:				; CODE XREF: .text:004C0766j
		cmp	dword ptr [ebp+24h], 0
		jz	short loc_4C07DB
		mov	eax, [ebp+24h]
		cmp	word ptr [eax],	0
		jz	short loc_4C07DB
		mov	[ebx+4], esi
		push	1		; mode
		mov	edx, [ebp+24h]
		push	edx		; s1
		push	ebx		; pd
		call	loc_4B0028
		add	esp, 0Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	loc_4C094A
		or	dword ptr [ebx+0Ch], 3

loc_4C07DB:				; CODE XREF: .text:004C07ADj
					; .text:004C07B6j
		cmp	word ptr [ebx+4A8h], 0
		jnz	short loc_4C07FA
		push	offset aDump_0	; "Dump"
		push	20h		; n
		lea	ecx, [ebx+18h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4C080D
; ---------------------------------------------------------------------------

loc_4C07FA:				; CODE XREF: .text:004C07E3j
		push	offset aStructure_1 ; "Structure"
		push	20h		; n
		lea	eax, [ebx+18h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4C080D:				; CODE XREF: .text:004C07F8j
		lea	edx, [ebx+18h]
		push	edx		; s
		call	addTabWindows
		pop	ecx

loc_4C0817:				; CODE XREF: .text:004C0754j
		mov	ecx, [ebp+0Ch]
		xor	eax, eax
		mov	[ebx], ecx
		mov	[ebx+5Ch], esi
		mov	[ebx+4], esi
		mov	[ebx+14h], eax
		mov	dword ptr [ebx+58h], 2038021h
		cmp	dword ptr [ebx+298h], 0
		jnz	short loc_4C083E
		or	dword ptr [ebx+58h], 1000000h

loc_4C083E:				; CODE XREF: .text:004C0835j
		mov	dword ptr [ebx+0A8h], 1
		mov	edx, [ebp+18h]
		push	edx		; dumptype
		push	ebx		; pd
		call	Setdumptype
		mov	dword ptr [ebx+220h], offset tabfunc
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebx+234h], ecx
		mov	[ebx+238h], ebx
		mov	[ebx+224h], eax
		xor	edx, edx
		mov	dword ptr [ebx+228h], offset _tabddraw
		mov	[ebx+22Ch], edx
		add	esp, 8
		mov	dword ptr [ebx+230h], offset stru_5532C8
		mov	ecx, [ebp+1Ch]
		cmp	ecx, [ebp+0Ch]
		jb	short loc_4C08BB
		mov	eax, [ebp+0Ch]
		add	eax, esi
		cmp	eax, [ebp+1Ch]
		jb	short loc_4C08BB
		mov	edx, [ebp+20h]
		cmp	edx, [ebp+0Ch]
		jb	short loc_4C08BB
		add	esi, [ebp+0Ch]
		cmp	esi, [ebp+20h]
		jb	short loc_4C08BB
		mov	ecx, [ebp+1Ch]
		cmp	ecx, [ebp+20h]
		jbe	short loc_4C08CC

loc_4C08BB:				; CODE XREF: .text:004C0897j
					; .text:004C08A1j ...
		mov	eax, [ebp+0Ch]
		mov	[ebx+28Ch], eax
		mov	[ebx+288h], eax
		jmp	short loc_4C08DE
; ---------------------------------------------------------------------------

loc_4C08CC:				; CODE XREF: .text:004C08B9j
		mov	edx, [ebp+1Ch]
		mov	[ebx+288h], edx
		mov	ecx, [ebp+20h]
		mov	[ebx+28Ch], ecx

loc_4C08DE:				; CODE XREF: .text:004C08CAj
		mov	eax, [ebx+288h]
		mov	[ebx+284h], eax
		xor	eax, eax
		mov	edx, [ebx+288h]
		mov	[ebx+290h], edx
		xor	edx, edx
		mov	ecx, [ebx+28Ch]
		mov	[ebx+294h], ecx
		mov	dword ptr [ebx+6F4h], 0FFFFFFFFh
		mov	[ebx+704h], eax
		mov	[ebx+708h], edx
		mov	ecx, [ebp+8]
		mov	eax, g_hInstance
		push	ecx		; _title
		push	offset aIco_d	; "ICO_D"
		push	eax		; hi
		lea	eax, [ebx+18h]
		mov	edx, [ebx+0A4h]
		push	edx		; ncolumn
		mov	ecx, [ebp-4]
		push	ecx		; nrow
		push	eax		; pt
		call	Createtablewindow
		add	esp, 18h
		mov	eax, [ebx+244h]
		jmp	short loc_4C0980
; ---------------------------------------------------------------------------

loc_4C094A:				; CODE XREF: .text:004C0625j
					; .text:004C0661j ...
		test	edi, edi
		jz	short loc_4C0955
		push	edi		; stream
		call	_fclose
		pop	ecx

loc_4C0955:				; CODE XREF: .text:004C094Cj
		mov	eax, [ebx+298h]
		test	eax, eax
		jz	short loc_4C0966
		push	eax		; data
		call	Memfree
		pop	ecx

loc_4C0966:				; CODE XREF: .text:004C095Dj
		mov	eax, [ebx+4E8h]
		test	eax, eax
		jz	short loc_4C0977
		push	eax		; data
		call	Memfree
		pop	ecx

loc_4C0977:				; CODE XREF: .text:004C096Ej
		push	ebx		; data
		call	Memfree
		pop	ecx
		xor	eax, eax

loc_4C0980:				; CODE XREF: .text:004C04EFj
					; .text:004C05C1j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 351. _Createdatadumpwindow
; Exported entry 439. Createdatadumpwindow

		public Createdatadumpwindow
Createdatadumpwindow:			; CODE XREF: .text:0042DA8Fp
		push	ebp		; _Createdatadumpwindow
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	edi, [ebp+8]
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4C099E
		test	esi, esi
		jnz	short loc_4C09A5

loc_4C099E:				; CODE XREF: .text:004C0998j
		xor	eax, eax	; int
		jmp	loc_4C0B08
; ---------------------------------------------------------------------------

loc_4C09A5:				; CODE XREF: .text:004C099Cj
		push	2		; flags
		push	70Ch		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4C09C1
		xor	eax, eax
		jmp	loc_4C0B08
; ---------------------------------------------------------------------------

loc_4C09C1:				; CODE XREF: .text:004C09B8j
		mov	dword ptr [ebx+0Ch], 8
		mov	edx, [ebp+0Ch]
		mov	[ebx+298h], edx
		push	offset aDatadump ; "Datadump"
		push	20h		; n
		lea	ecx, [ebx+18h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebx+18h]
		push	eax		; s
		call	addTabWindows
		pop	ecx
		test	edi, edi
		jz	short loc_4C09F8
		cmp	word ptr [edi],	0
		jnz	short loc_4C0A05

loc_4C09F8:				; CODE XREF: .text:004C09F0j
		push	offset aDataDump ; src
		call	_T
		pop	ecx
		mov	edi, eax

loc_4C0A05:				; CODE XREF: .text:004C09F6j
		xor	eax, eax
		xor	edx, edx
		mov	[ebx], eax
		mov	[ebx+5Ch], esi
		mov	[ebx+4], esi
		mov	[ebx+14h], edx
		mov	dword ptr [ebx+58h], 2038021h
		mov	dword ptr [ebx+0A8h], 1
		mov	ecx, [ebp+14h]
		push	ecx		; dumptype
		push	ebx		; pd
		call	Setdumptype
		mov	dword ptr [ebx+220h], offset tabfunc
		xor	eax, eax
		xor	edx, edx
		mov	[ebx+234h], eax
		mov	[ebx+238h], ebx
		mov	[ebx+224h], edx
		xor	ecx, ecx
		mov	dword ptr [ebx+228h], offset _tabddraw
		mov	[ebx+22Ch], ecx
		add	esp, 8
		mov	dword ptr [ebx+230h], offset stru_5532C8
		cmp	esi, [ebp+18h]
		jb	short loc_4C0A80
		cmp	esi, [ebp+1Ch]
		jb	short loc_4C0A80
		mov	eax, [ebp+18h]
		cmp	eax, [ebp+1Ch]
		jbe	short loc_4C0A90

loc_4C0A80:				; CODE XREF: .text:004C0A71j
					; .text:004C0A76j
		xor	edx, edx
		mov	[ebx+28Ch], edx
		mov	[ebx+288h], edx
		jmp	short loc_4C0AA2
; ---------------------------------------------------------------------------

loc_4C0A90:				; CODE XREF: .text:004C0A7Ej
		mov	eax, [ebp+18h]
		mov	[ebx+288h], eax
		mov	ecx, [ebp+1Ch]
		mov	[ebx+28Ch], ecx

loc_4C0AA2:				; CODE XREF: .text:004C0A8Ej
		mov	eax, [ebx+288h]
		mov	[ebx+284h], eax
		xor	eax, eax
		mov	edx, [ebx+288h]
		mov	[ebx+290h], edx
		xor	edx, edx
		mov	ecx, [ebx+28Ch]
		mov	[ebx+294h], ecx
		mov	dword ptr [ebx+6F4h], 0FFFFFFFFh
		mov	[ebx+704h], eax
		mov	[ebx+708h], edx
		push	edi		; _title
		mov	ecx, g_hInstance
		push	offset aIco_d	; "ICO_D"
		push	ecx		; hi
		mov	eax, [ebx+0A4h]
		lea	edx, [ebx+18h]
		push	eax		; ncolumn
		push	0		; nrow
		push	edx		; pt
		call	Createtablewindow
		add	esp, 18h
		mov	eax, [ebx+244h]

loc_4C0B08:				; CODE XREF: .text:004C09A0j
					; .text:004C09BCj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 352. _Embeddumpwindow
; Exported entry 484. Embeddumpwindow

; HWND __cdecl Embeddumpwindow(HWND hw,	t_dump *pd, ulong dumptype)
		public Embeddumpwindow
Embeddumpwindow:			; CODE XREF: .text:004CC97Dp
		push	ebp		; _Embeddumpwindow
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_4C0B23
		test	ebx, ebx
		jnz	short loc_4C0B2A

loc_4C0B23:				; CODE XREF: .text:004C0B1Dj
		xor	eax, eax
		jmp	loc_4C0C28
; ---------------------------------------------------------------------------

loc_4C0B2A:				; CODE XREF: .text:004C0B21j
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebx+0Ch], edx
		mov	dword ptr [ebx+58h], 13008021h
		mov	[ebx+8], ecx
		mov	eax, [ebp+10h]
		push	eax		; dumptype
		push	ebx		; pd
		call	Setdumptype
		mov	dword ptr [ebx+220h], offset tabfunc
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebx+234h], edx
		mov	[ebx+238h], ebx
		mov	[ebx+224h], ecx
		xor	eax, eax
		mov	dword ptr [ebx+228h], offset _tabddraw
		mov	[ebx+22Ch], eax
		add	esp, 8
		mov	dword ptr [ebx+230h], offset stru_5532C8
		mov	edx, dword_58610C
		mov	[ebx+258h], edx
		mov	edx, [ebx+288h]
		mov	eax, [ebx]
		cmp	eax, edx
		ja	short loc_4C0BC2
		mov	ecx, eax
		add	ecx, [ebx+4]
		cmp	edx, ecx
		ja	short loc_4C0BC2
		cmp	eax, [ebx+28Ch]
		ja	short loc_4C0BC2
		mov	ecx, eax
		add	ecx, [ebx+4]
		cmp	ecx, [ebx+28Ch]
		jb	short loc_4C0BC2
		cmp	edx, [ebx+28Ch]
		jbe	short loc_4C0BCE

loc_4C0BC2:				; CODE XREF: .text:004C0B9Aj
					; .text:004C0BA3j ...
		mov	[ebx+28Ch], eax
		mov	[ebx+288h], eax

loc_4C0BCE:				; CODE XREF: .text:004C0BC0j
		mov	edx, [ebx+288h]
		xor	ecx, ecx
		mov	[ebx+290h], edx
		xor	edx, edx
		mov	eax, [ebx+28Ch]
		mov	[ebx+294h], eax
		mov	dword ptr [ebx+6F4h], 0FFFFFFFFh
		mov	[ebx+704h], edx
		mov	[ebx+708h], ecx
		mov	[ebx+244h], esi
		add	ebx, 18h
		push	ebx		; dwNewLong
		push	0		; nIndex
		push	esi		; hWnd
		call	SetWindowLongW
		push	1		; bShow
		push	1		; wBar
		push	esi		; hWnd
		call	ShowScrollBar
		push	0		; bErase
		push	0		; lpRect
		push	esi		; hWnd
		call	InvalidateRect
		mov	eax, esi

loc_4C0C28:				; CODE XREF: .text:004C0B25j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C0C2C:				; DATA XREF: .data:stru_55C628o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		xor	eax, eax
		mov	dword_5FC280, eax
		xor	edx, edx
		mov	dword_5FC284, edx
		test	ebx, ebx
		jz	short loc_4C0CAE
		call	loc_42521C
		test	eax, eax
		jnz	short loc_4C0C65
		push	0		; lParam
		push	1Bh		; wParam
		push	102h		; Msg
		mov	ecx, [ebx+22Ch]
		push	ecx		; hWnd
		call	SendMessageW

loc_4C0C65:				; CODE XREF: .text:004C0C4Ej
		mov	esi, [ebx+68h]
		test	esi, esi
		jl	short loc_4C0C7E
		push	esi		; index
		lea	eax, [ebx+44h]
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	dword_5FC280, eax

loc_4C0C7E:				; CODE XREF: .text:004C0C6Aj
		mov	esi, [ebx+21Ch]
		test	esi, esi
		jz	short loc_4C0C96
		push	esi		; _addr
		call	Findmodule
		pop	ecx
		mov	dword_5FC284, eax
		jmp	short loc_4C0CAE
; ---------------------------------------------------------------------------

loc_4C0C96:				; CODE XREF: .text:004C0C86j
		mov	ebx, dword_5FC280
		test	ebx, ebx
		jz	short loc_4C0CAE
		mov	eax, [ebx]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		mov	dword_5FC284, eax

loc_4C0CAE:				; CODE XREF: .text:004C0C45j
					; .text:004C0C94j ...
		mov	eax, 1
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C0CB8:				; DATA XREF: .data:stru_55C628o
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+14h]
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_4C0CC9
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C0CC9:				; CODE XREF: .text:004C0CC3j
		test	edx, edx
		jnz	short loc_4C0CD4
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C0CD4:				; CODE XREF: .text:004C0CCBj
		dec	edx
		jnz	short loc_4C0CF3
		push	0
		mov	edx, [eax+21Ch]
		push	edx
		add	eax, 44h
		push	eax
		call	loc_4C1570
		add	esp, 0Ch
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C0CF3:				; CODE XREF: .text:004C0CD5j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC loc_4C0CF8
loc_4C0CF8:				; DATA XREF: .text:004C1D7Fo
					; .data:stru_55C628o
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		mov	ebx, [ebp+14h]
		mov	eax, dword_5FC280
		test	eax, eax
		jnz	short loc_4C0D10
		xor	eax, eax
		jmp	loc_4C0DA5
; ---------------------------------------------------------------------------

loc_4C0D10:				; CODE XREF: .text:004C0D07j
		mov	edx, [eax+8]
		and	edx, 0FFh
		mov	eax, edx
		cmp	eax, 26h
		jz	short loc_4C0D2E
		cmp	eax, 27h
		jz	short loc_4C0D2E
		cmp	eax, 28h
		jz	short loc_4C0D2E
		xor	eax, eax
		jmp	short loc_4C0DA5
; ---------------------------------------------------------------------------

loc_4C0D2E:				; CODE XREF: .text:004C0D1Ej
					; .text:004C0D23j ...
		mov	edx, dword_5FC280
		push	1		; mode
		push	4		; size
		lea	eax, [ebp-4]
		mov	ecx, [edx]
		push	ecx		; _addr
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4C0D4F
		xor	eax, eax
		jmp	short loc_4C0DA5
; ---------------------------------------------------------------------------

loc_4C0D4F:				; CODE XREF: .text:004C0D49j
		test	ebx, ebx
		jnz	short loc_4C0D86
		mov	edx, [ebp-4]
		push	edx		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_4C0D65
		xor	eax, eax
		jmp	short loc_4C0DA5
; ---------------------------------------------------------------------------

loc_4C0D65:				; CODE XREF: .text:004C0D5Fj
		mov	edx, [eax+458h]
		cmp	edx, [ebp-4]
		ja	short loc_4C0D7B
		add	edx, [eax+45Ch]
		cmp	edx, [ebp-4]
		ja	short loc_4C0D7F

loc_4C0D7B:				; CODE XREF: .text:004C0D6Ej
		xor	eax, eax
		jmp	short loc_4C0DA5
; ---------------------------------------------------------------------------

loc_4C0D7F:				; CODE XREF: .text:004C0D79j
		mov	eax, 1
		jmp	short loc_4C0DA5
; ---------------------------------------------------------------------------

loc_4C0D86:				; CODE XREF: .text:004C0D51j
		dec	ebx
		jnz	short loc_4C0DA3
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	edx, [ebp-4]
		push	edx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		xor	eax, eax
		jmp	short loc_4C0DA5
; ---------------------------------------------------------------------------

loc_4C0DA3:				; CODE XREF: .text:004C0D87j
		xor	eax, eax

loc_4C0DA5:				; CODE XREF: .text:004C0D0Bj
					; .text:004C0D2Cj ...
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC loc_4C0DAC
loc_4C0DAC:				; DATA XREF: .text:004C1D9Ao
					; .data:stru_55C628o
		push	ebp
		mov	ebp, esp
		mov	edx, [ebp+14h]
		mov	eax, [ebp+10h]
		cmp	dword_5FC280, 0
		jnz	short loc_4C0DC2
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C0DC2:				; CODE XREF: .text:004C0DBCj
		test	edx, edx
		jnz	short loc_4C0E1A
		test	eax, eax
		jnz	short loc_4C0DFC
		mov	eax, dword_5FC284
		test	eax, eax
		jz	short loc_4C0DF8
		mov	edx, dword_5FC280
		mov	ecx, [edx]
		cmp	ecx, [eax+458h]
		jb	short loc_4C0DF8
		mov	edx, [eax+458h]
		add	edx, [eax+45Ch]
		mov	eax, dword_5FC280
		cmp	edx, [eax]
		ja	short loc_4C0E13

loc_4C0DF8:				; CODE XREF: .text:004C0DD1j
					; .text:004C0DE1j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C0DFC:				; CODE XREF: .text:004C0DC8j
		mov	edx, dword_5FC280
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Findmemory
		pop	ecx
		test	eax, eax
		jnz	short loc_4C0E13
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C0E13:				; CODE XREF: .text:004C0DF6j
					; .text:004C0E0Dj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C0E1A:				; CODE XREF: .text:004C0DC4j
		dec	edx
		jnz	short loc_4C0E5F
		test	eax, eax
		jnz	short loc_4C0E3E
		push	0Dh		; mode
		mov	edx, dword_5FC280
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		mov	ecx, [edx]
		push	ecx		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		jmp	short loc_4C0E5B
; ---------------------------------------------------------------------------

loc_4C0E3E:				; CODE XREF: .text:004C0E1Fj
		mov	eax, dword_5FC280
		push	90h		; mode
		push	0		; stackaddr
		push	0		; selsize
		mov	edx, [eax]
		push	edx		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_4C0E5B:				; CODE XREF: .text:004C0E3Cj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C0E5F:				; CODE XREF: .text:004C0E1Bj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __usercall loc_4C0E64@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_4C0E64:				; DATA XREF: .data:stru_55C628o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		mov	eax, dword_5FC280
		test	eax, eax
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+8]
		jnz	short loc_4C0E83
		xor	eax, eax
		jmp	loc_4C10D6
; ---------------------------------------------------------------------------

loc_4C0E83:				; CODE XREF: .text:004C0E7Aj
		push	0		; subaddr
		mov	edx, [eax]
		push	edx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebp+14h], 0
		jnz	loc_4C0F6D
		push	0		; psize
		mov	eax, dword_5FC280
		mov	edx, [eax]
		push	edx		; _addr
		call	Finddecode
		add	esp, 8
		test	eax, eax
		jz	short loc_4C0EE2
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 1Ch
		jz	short loc_4C0EE2
		xor	edx, edx
		mov	dl, [eax]
		and	edx, 1Fh
		cmp	edx, 1Dh
		jz	short loc_4C0EE2
		xor	ecx, ecx
		mov	cl, [eax]
		and	ecx, 1Fh
		cmp	ecx, 1Eh
		jz	short loc_4C0EE2
		xor	eax, eax
		jmp	loc_4C10D6
; ---------------------------------------------------------------------------

loc_4C0EE2:				; CODE XREF: .text:004C0EB5j
					; .text:004C0EC1j ...
		test	edi, edi
		jnz	short loc_4C0EF7
		test	esi, esi
		jz	short loc_4C0EF7
		test	byte ptr [esi+9], 10h
		jz	short loc_4C0EF7
		xor	eax, eax
		jmp	loc_4C10D6
; ---------------------------------------------------------------------------

loc_4C0EF7:				; CODE XREF: .text:004C0EE4j
					; .text:004C0EE8j ...
		cmp	edi, 3
		jnz	short loc_4C0F0D
		test	esi, esi
		jz	short loc_4C0F06
		test	byte ptr [esi+9], 10h
		jnz	short loc_4C0F0D

loc_4C0F06:				; CODE XREF: .text:004C0EFEj
		xor	eax, eax
		jmp	loc_4C10D6
; ---------------------------------------------------------------------------

loc_4C0F0D:				; CODE XREF: .text:004C0EFAj
					; .text:004C0F04j
		test	eax, eax
		jnz	short loc_4C0F63
		test	esi, esi
		jnz	short loc_4C0F63
		cmp	edi, 3
		jz	short loc_4C0F63
		mov	edx, dword_5FC280
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Findmodule
		pop	ecx
		mov	dword_5FC284, eax
		mov	eax, dword_5FC284
		test	eax, eax
		jz	short loc_4C0F5C
		mov	edx, dword_5FC280
		mov	ecx, [edx]
		cmp	ecx, [eax+458h]
		jb	short loc_4C0F5C
		mov	edx, [eax+458h]
		add	edx, [eax+45Ch]
		mov	eax, dword_5FC280
		cmp	edx, [eax]
		ja	short loc_4C0F63

loc_4C0F5C:				; CODE XREF: .text:004C0F35j
					; .text:004C0F45j
		xor	eax, eax
		jmp	loc_4C10D6
; ---------------------------------------------------------------------------

loc_4C0F63:				; CODE XREF: .text:004C0F0Fj
					; .text:004C0F13j ...
		mov	eax, 1
		jmp	loc_4C10D6
; ---------------------------------------------------------------------------

loc_4C0F6D:				; CODE XREF: .text:004C0E9Bj
		cmp	dword ptr [ebp+14h], 1
		jnz	loc_4C10D4
		test	esi, esi
		jnz	short loc_4C0F95
		mov	edx, dword_5FC280
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Confirmint3breakpoint
		pop	ecx
		test	eax, eax
		jz	short loc_4C0F95
		xor	eax, eax
		jmp	loc_4C10D6
; ---------------------------------------------------------------------------

loc_4C0F95:				; CODE XREF: .text:004C0F79j
					; .text:004C0F8Cj
		test	edi, edi
		jz	short loc_4C0FA2
		cmp	edi, 3
		jnz	loc_4C1035

loc_4C0FA2:				; CODE XREF: .text:004C0F97j
		test	esi, esi
		jz	short loc_4C0FC4
		test	byte ptr [esi+9], 10h
		jz	short loc_4C0FC4
		push	1000h		; type
		mov	edx, dword_5FC280
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Removeint3breakpoint
		add	esp, 8
		jmp	short loc_4C1008
; ---------------------------------------------------------------------------

loc_4C0FC4:				; CODE XREF: .text:004C0FA4j
					; .text:004C0FAAj
		push	(offset	a__2+1)	; exprtype
		push	(offset	a__2+1)	; expression
		push	(offset	a__2+1)	; condition
		push	0		; actions
		push	0		; count
		mov	eax, dword_5FC280
		push	0		; limit
		push	0		; fnindex
		push	3001000h	; type
		mov	edx, [eax]
		push	edx		; _addr
		call	Setint3breakpoint
		add	esp, 24h
		mov	esi, eax
		test	esi, esi
		jz	short loc_4C1008
		push	offset aUnableToSetB_4 ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4C1008:				; CODE XREF: .text:004C0FC2j
					; .text:004C0FF4j
		call	loc_42521C
		test	eax, eax
		jz	loc_4C10CD
		mov	eax, [ebx+44h]
		dec	eax
		cmp	eax, [ebx+68h]
		jle	loc_4C10CD
		mov	edx, [ebx+68h]
		inc	edx
		push	edx		; selected
		push	ebx		; pt
		call	Settableselection
		add	esp, 8
		jmp	loc_4C10CD
; ---------------------------------------------------------------------------

loc_4C1035:				; CODE XREF: .text:004C0F9Cj
		lea	ecx, [ebp-8]
		push	ecx		; coord
		push	2		; column
		push	ebx		; pt
		call	Gettableselectionxy
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4C1051
		or	eax, 0FFFFFFFFh
		mov	[ebp-4], eax
		mov	[ebp-8], eax

loc_4C1051:				; CODE XREF: .text:004C1046j
		cmp	edi, 1
		jnz	short loc_4C1083
		mov	edx, [ebx+234h]
		push	edx		; fi
		mov	edx, dword_5FC280 ; int
		mov	ecx, [ebp-4]
		push	ecx		; y
		mov	eax, [ebp-8]	; int
		push	eax		; x
		push	0		; _title
		push	1		; naddr
		push	edx		; _addr
		mov	ecx, [ebx+22Ch]	; int
		push	ecx		; hparent
		call	Condbreakpoint
		add	esp, 1Ch
		mov	esi, eax
		jmp	short loc_4C10AF
; ---------------------------------------------------------------------------

loc_4C1083:				; CODE XREF: .text:004C1054j
		mov	eax, [ebx+234h]
		push	eax		; fi
		mov	eax, dword_5FC280 ; int
		mov	edx, [ebp-4]
		push	edx		; y
		mov	ecx, [ebp-8]	; int
		push	ecx		; x
		push	0		; _title
		push	0		; fnindex
		push	1		; naddr
		push	eax		; _addr
		mov	edx, [ebx+22Ch]	; int
		push	edx		; hparent
		call	Condlogbreakpoint
		add	esp, 20h
		mov	esi, eax

loc_4C10AF:				; CODE XREF: .text:004C1081j
		test	esi, esi
		jge	short loc_4C10C5
		push	offset aUnableToSetB_4 ; "Unable to set	breakpoint"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4C10C5:				; CODE XREF: .text:004C10B1j
		test	esi, esi
		jg	short loc_4C10CD
		xor	eax, eax
		jmp	short loc_4C10D6
; ---------------------------------------------------------------------------

loc_4C10CD:				; CODE XREF: .text:004C100Fj
					; .text:004C101Cj ...
		mov	eax, 1
		jmp	short loc_4C10D6
; ---------------------------------------------------------------------------

loc_4C10D4:				; CODE XREF: .text:004C0F71j
		xor	eax, eax

loc_4C10D6:				; CODE XREF: .text:004C0E7Ej
					; .text:004C0EDDj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4C10E0:				; DATA XREF: .data:stru_55C628o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	eax, dword_5FC280
		test	eax, eax
		jnz	short loc_4C10F8
		xor	eax, eax
		jmp	short loc_4C115E
; ---------------------------------------------------------------------------

loc_4C10F8:				; CODE XREF: .text:004C10F2j
		push	0		; subaddr
		mov	edx, [eax]
		push	edx		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4C1114
		test	byte ptr [eax+9], 10h
		jnz	short loc_4C1118

loc_4C1114:				; CODE XREF: .text:004C110Cj
		xor	eax, eax
		jmp	short loc_4C115E
; ---------------------------------------------------------------------------

loc_4C1118:				; CODE XREF: .text:004C1112j
		test	ebx, ebx
		jnz	short loc_4C1140
		test	esi, esi
		jnz	short loc_4C112A
		test	byte ptr [eax+0Ah], 2
		jz	short loc_4C112A
		xor	eax, eax
		jmp	short loc_4C115E
; ---------------------------------------------------------------------------

loc_4C112A:				; CODE XREF: .text:004C111Ej
					; .text:004C1124j
		cmp	esi, 1
		jnz	short loc_4C1139
		test	byte ptr [eax+0Ah], 2
		jnz	short loc_4C1139
		xor	eax, eax
		jmp	short loc_4C115E
; ---------------------------------------------------------------------------

loc_4C1139:				; CODE XREF: .text:004C112Dj
					; .text:004C1133j
		mov	eax, 1
		jmp	short loc_4C115E
; ---------------------------------------------------------------------------

loc_4C1140:				; CODE XREF: .text:004C111Aj
		dec	ebx
		jnz	short loc_4C115C
		push	esi		; enable
		mov	edx, dword_5FC280
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Enableint3breakpoint
		add	esp, 8
		mov	eax, 1
		jmp	short loc_4C115E
; ---------------------------------------------------------------------------

loc_4C115C:				; CODE XREF: .text:004C1141j
		xor	eax, eax

loc_4C115E:				; CODE XREF: .text:004C10F6j
					; .text:004C1116j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C1164:				; DATA XREF: .data:stru_55C628o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		cmp	dword_5FC280, 0
		mov	eax, [ebp+14h]
		jz	short loc_4C1182
		cmp	dword_5FC284, 0
		jnz	short loc_4C1189

loc_4C1182:				; CODE XREF: .text:004C1177j
		xor	eax, eax
		jmp	loc_4C120C
; ---------------------------------------------------------------------------

loc_4C1189:				; CODE XREF: .text:004C1180j
		test	eax, eax
		jnz	short loc_4C1194
		mov	eax, 1
		jmp	short loc_4C120C
; ---------------------------------------------------------------------------

loc_4C1194:				; CODE XREF: .text:004C118Bj
		dec	eax
		jnz	short loc_4C120A
		push	offset aReferencesTo_0 ; "References to	"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-200h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, 100h
		sub	ecx, eax
		lea	edx, [ebp-200h]
		add	eax, eax
		push	0		; comment
		push	ecx		; nsymb
		add	eax, edx
		push	eax		; symb
		mov	eax, dword_5FC280
		push	20400h		; mode
		push	0		; amod
		mov	ecx, [eax]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		lea	edx, [ebp-200h]
		mov	eax, dword_5FC280
		push	edx		; int
		push	1		; int
		push	0		; int
		mov	eax, [eax]	; int
		mov	edx, dword_5FC284 ; int
		push	eax		; int
		push	eax		; int
		push	edx		; int
		call	loc_4A2620
		add	esp, 18h
		xor	eax, eax
		jmp	short loc_4C120C
; ---------------------------------------------------------------------------

loc_4C120A:				; CODE XREF: .text:004C1195j
		xor	eax, eax

loc_4C120C:				; CODE XREF: .text:004C1184j
					; .text:004C1192j ...
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C1210:				; DATA XREF: .data:stru_55C628o
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		mov	ebx, [ebp+14h]
		mov	eax, dword_5FC280
		test	eax, eax
		jnz	short loc_4C1228
		xor	eax, eax
		jmp	loc_4C12BC
; ---------------------------------------------------------------------------

loc_4C1228:				; CODE XREF: .text:004C121Fj
		mov	edx, [eax+8]
		and	edx, 0FFh
		mov	eax, edx
		cmp	eax, 22h
		jz	short loc_4C123D
		cmp	eax, 25h
		jnz	short loc_4C124A

loc_4C123D:				; CODE XREF: .text:004C1236j
		mov	ecx, dword_5FC280
		mov	eax, [ecx]
		mov	[ebp-4], eax
		jmp	short loc_4C1284
; ---------------------------------------------------------------------------

loc_4C124A:				; CODE XREF: .text:004C123Bj
		cmp	eax, 26h
		jnz	short loc_4C1280
		mov	edx, dword_5FC280
		push	1		; mode
		push	4		; size
		lea	eax, [ebp-4]
		mov	ecx, [edx]
		push	ecx		; _addr
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jz	short loc_4C1271
		xor	eax, eax
		jmp	short loc_4C12BC
; ---------------------------------------------------------------------------

loc_4C1271:				; CODE XREF: .text:004C126Bj
		mov	edx, [ebp-4]
		push	edx		; _addr
		call	Followcall
		pop	ecx
		mov	[ebp-4], eax
		jmp	short loc_4C1284
; ---------------------------------------------------------------------------

loc_4C1280:				; CODE XREF: .text:004C124Dj
		xor	eax, eax
		jmp	short loc_4C12BC
; ---------------------------------------------------------------------------

loc_4C1284:				; CODE XREF: .text:004C1248j
					; .text:004C127Ej
		test	ebx, ebx
		jnz	short loc_4C12A5
		push	0		; char
		mov	edx, [ebp-4]
		push	edx		; arglist
		call	loc_49A5F8
		add	esp, 8
		test	eax, eax
		jz	short loc_4C129E
		xor	eax, eax
		jmp	short loc_4C12BC
; ---------------------------------------------------------------------------

loc_4C129E:				; CODE XREF: .text:004C1298j
		mov	eax, 1
		jmp	short loc_4C12BC
; ---------------------------------------------------------------------------

loc_4C12A5:				; CODE XREF: .text:004C1286j
		dec	ebx
		jnz	short loc_4C12BA
		push	1		; char
		mov	edx, [ebp-4]
		push	edx		; arglist
		call	loc_49A5F8
		add	esp, 8
		xor	eax, eax
		jmp	short loc_4C12BC
; ---------------------------------------------------------------------------

loc_4C12BA:				; CODE XREF: .text:004C12A6j
		xor	eax, eax

loc_4C12BC:				; CODE XREF: .text:004C1223j
					; .text:004C126Fj ...
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4C12C0(int, void *dest)
loc_4C12C0:				; CODE XREF: .text:004C19DFp
					; .text:004C19F8p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFB8h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	edi, [ebp+0Ch]
		jz	short loc_4C12D6
		test	edi, edi
		jnz	short loc_4C12DD

loc_4C12D6:				; CODE XREF: .text:004C12D0j
		xor	eax, eax
		jmp	loc_4C1568
; ---------------------------------------------------------------------------

loc_4C12DD:				; CODE XREF: .text:004C12D4j
		mov	edx, [ebp+8]
		mov	esi, [edx+8]
		and	esi, 0FFh
		cmp	esi, 24h
		jz	short loc_4C12F3
		cmp	esi, 2Fh
		jnz	short loc_4C1341

loc_4C12F3:				; CODE XREF: .text:004C12ECj
		push	4		; datasize
		lea	eax, [ebp-4]
		push	eax		; data
		push	esi		; type
		mov	edx, [ebp+8]
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Finddata
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4C1328
		push	$CTW0("??? ")	; "???"
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C1566
; ---------------------------------------------------------------------------

loc_4C1328:				; CODE XREF: .text:004C130Cj
		mov	eax, [ebp-4]
		push	eax
		push	offset aU_1	; format
		push	edi		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C1566
; ---------------------------------------------------------------------------

loc_4C1341:				; CODE XREF: .text:004C12F1j
		cmp	esi, 28h
		jnz	short loc_4C1395
		push	44h		; datasize
		lea	eax, [ebp-48h]
		push	eax		; data
		push	28h		; type
		mov	edx, [ebp+8]
		mov	ecx, [edx]
		push	ecx		; _addr
		call	Finddata
		add	esp, 10h
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4C137C
		push	$CTW0("??? ")	; "???"
		push	100h		; n
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C1566
; ---------------------------------------------------------------------------

loc_4C137C:				; CODE XREF: .text:004C1360j
		mov	eax, [ebp-48h]
		push	eax
		push	offset aU_1	; format
		push	edi		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C1566
; ---------------------------------------------------------------------------

loc_4C1395:				; CODE XREF: .text:004C1344j
		cmp	esi, 22h
		jnz	short loc_4C13FB
		cmp	dword_57FE94, 0
		jnz	short loc_4C13BF
		push	100h		; nname
		push	edi		; _name
		push	esi		; type
		mov	eax, [ebp+8]
		mov	edx, [eax]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		jmp	loc_4C1566
; ---------------------------------------------------------------------------

loc_4C13BF:				; CODE XREF: .text:004C13A1j
		push	100h		; nname
		push	edi		; _name
		push	23h		; type
		mov	eax, [ebp+8]
		mov	edx, [eax]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	loc_4C1566
		push	100h		; nname
		push	edi		; _name
		push	esi		; type
		mov	eax, [ebp+8]
		mov	edx, [eax]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		jmp	loc_4C1566
; ---------------------------------------------------------------------------

loc_4C13FB:				; CODE XREF: .text:004C1398j
		cmp	esi, 26h
		jnz	loc_4C1490
		cmp	dword_57FE94, 0
		jnz	short loc_4C1426
		push	100h		; nname
		push	edi		; _name
		push	esi		; type
		mov	eax, [ebp+8]
		mov	edx, [eax]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		jmp	short loc_4C1459
; ---------------------------------------------------------------------------

loc_4C1426:				; CODE XREF: .text:004C140Bj
		push	100h		; nname
		push	edi		; _name
		push	27h		; type
		mov	eax, [ebp+8]
		mov	edx, [eax]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4C1459
		push	100h		; nname
		push	edi		; _name
		push	esi		; type
		mov	eax, [ebp+8]
		mov	edx, [eax]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax

loc_4C1459:				; CODE XREF: .text:004C1424j
					; .text:004C1440j
		xor	esi, esi
		mov	eax, edi
		cmp	ebx, esi
		jle	short loc_4C146F

loc_4C1461:				; CODE XREF: .text:004C146Dj
		cmp	word ptr [eax],	2Eh
		jz	short loc_4C146F
		inc	esi
		add	eax, 2
		cmp	ebx, esi
		jg	short loc_4C1461

loc_4C146F:				; CODE XREF: .text:004C145Fj
					; .text:004C1465j
		cmp	ebx, esi
		jle	short loc_4C1488
		mov	edx, ebx
		lea	ecx, [edi+esi*2+2]
		sub	edx, esi
		add	edx, edx
		push	edx		; n
		push	ecx		; src
		push	edi		; dest
		call	_memmove
		add	esp, 0Ch

loc_4C1488:				; CODE XREF: .text:004C1471j
		inc	esi
		sub	ebx, esi
		jmp	loc_4C1566
; ---------------------------------------------------------------------------

loc_4C1490:				; CODE XREF: .text:004C13FEj
		cmp	esi, 29h
		jnz	short loc_4C14F3
		cmp	dword_57FE94, 0
		jnz	short loc_4C14BA
		push	100h		; nname
		push	edi		; _name
		push	esi		; type
		mov	eax, [ebp+8]
		mov	edx, [eax]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		jmp	loc_4C1566
; ---------------------------------------------------------------------------

loc_4C14BA:				; CODE XREF: .text:004C149Cj
		push	100h		; nname
		push	edi		; _name
		push	2Ah		; type
		mov	eax, [ebp+8]
		mov	edx, [eax]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	loc_4C1566
		push	100h		; nname
		push	edi		; _name
		push	esi		; type
		mov	eax, [ebp+8]
		mov	edx, [eax]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		jmp	short loc_4C1566
; ---------------------------------------------------------------------------

loc_4C14F3:				; CODE XREF: .text:004C1493j
		cmp	esi, 2Bh
		jnz	short loc_4C154F
		cmp	dword_57FE94, 0
		jnz	short loc_4C151A
		push	100h		; nname
		push	edi		; _name
		push	esi		; type
		mov	eax, [ebp+8]
		mov	edx, [eax]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		jmp	short loc_4C1566
; ---------------------------------------------------------------------------

loc_4C151A:				; CODE XREF: .text:004C14FFj
		push	100h		; nname
		push	edi		; _name
		push	2Ch		; type
		mov	eax, [ebp+8]
		mov	edx, [eax]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4C1566
		push	100h		; nname
		push	edi		; _name
		push	esi		; type
		mov	eax, [ebp+8]
		mov	edx, [eax]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		jmp	short loc_4C1566
; ---------------------------------------------------------------------------

loc_4C154F:				; CODE XREF: .text:004C14F6j
		push	100h		; nname
		push	edi		; _name
		push	esi		; type
		mov	eax, [ebp+8]
		mov	edx, [eax]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax

loc_4C1566:				; CODE XREF: .text:004C1323j
					; .text:004C133Cj ...
		mov	eax, ebx

loc_4C1568:				; CODE XREF: .text:004C12D8j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4C1570:				; CODE XREF: .text:0042C7BDp
					; .text:0042CD0Ap ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFB58h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+8], 0
		mov	eax, [ebp+0Ch]
		jnz	short loc_4C158D
		or	eax, 0FFFFFFFFh
		jmp	loc_4C192E
; ---------------------------------------------------------------------------

loc_4C158D:				; CODE XREF: .text:004C1583j
		test	eax, eax
		jz	short loc_4C15B0
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_4C15A4
		or	eax, 0FFFFFFFFh
		jmp	loc_4C192E
; ---------------------------------------------------------------------------

loc_4C15A4:				; CODE XREF: .text:004C159Aj
		mov	edx, [eax]
		mov	ebx, edx
		add	edx, [eax+4]
		mov	[ebp-14h], edx
		jmp	short loc_4C15B9
; ---------------------------------------------------------------------------

loc_4C15B0:				; CODE XREF: .text:004C158Fj
		mov	dword ptr [ebp-14h], 0FFFFFFFFh
		xor	ebx, ebx

loc_4C15B9:				; CODE XREF: .text:004C15AEj
		push	0		; confirm
		mov	eax, [ebp+8]
		push	eax		; sd
		call	Confirmsorteddata
		add	esp, 8
		mov	dword ptr [ebp-98h], 21h
		mov	dword ptr [ebp-94h], 22h
		mov	dword ptr [ebp-90h], 23h
		mov	dword ptr [ebp-8Ch], 25h
		mov	dword ptr [ebp-88h], 29h
		mov	dword ptr [ebp-84h], 2Ah
		mov	dword ptr [ebp-80h], 2Bh
		mov	dword ptr [ebp-7Ch], 2Ch
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4C1638
		mov	esi, 8
		push	100h		; n
		mov	eax, [ebp+10h]
		push	eax		; src
		call	StrlenW
		add	esp, 8
		mov	[ebp-0Ch], eax
		lea	edi, [ebp-498h]
		jmp	short loc_4C1667
; ---------------------------------------------------------------------------

loc_4C1638:				; CODE XREF: .text:004C1615j
		mov	dword ptr [ebp-78h], 24h
		mov	dword ptr [ebp-74h], 2Fh
		mov	dword ptr [ebp-70h], 26h
		mov	dword ptr [ebp-6Ch], 27h
		mov	dword ptr [ebp-68h], 28h
		mov	esi, 0Dh
		xor	eax, eax
		mov	[ebp-0Ch], eax
		xor	edi, edi

loc_4C1667:				; CODE XREF: .text:004C1636j
		push	esi		; n
		lea	eax, [ebp-98h]
		push	eax		; list
		mov	edx, [ebp-14h]
		push	edx		; addr1
		push	ebx		; addr0
		call	Startnextnamelist
		add	esp, 10h
		or	esi, 0FFFFFFFFh
		xor	eax, eax
		mov	[ebp-8], eax

loc_4C1684:				; CODE XREF: .text:004C16AAj
					; .text:004C1742j ...
		push	100h		; nname
		push	edi		; _name
		lea	edx, [ebp-4]
		push	edx		; type
		lea	ecx, [ebp-10h]
		push	ecx		; _addr
		call	FindnextnamelistW
		add	esp, 10h
		test	eax, eax
		jz	loc_4C1922
		test	edi, edi
		jz	short loc_4C16AC
		cmp	word ptr [edi],	3Ch
		jz	short loc_4C1684

loc_4C16AC:				; CODE XREF: .text:004C16A4j
		cmp	dword ptr [ebp-0Ch], 0
		jle	loc_4C1748
		mov	eax, [ebp-10h]
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_4C16C8
		xor	ebx, ebx
		jmp	short loc_4C1706
; ---------------------------------------------------------------------------

loc_4C16C8:				; CODE XREF: .text:004C16C2j
		add	eax, 0Ch
		lea	edx, [ebp-298h]
		push	eax		; src
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		mov	edx, ebx
		mov	eax, 100h
		sub	eax, ebx
		lea	ecx, [ebp-298h]
		add	edx, edx
		push	offset a__2	; "."
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4C1706:				; CODE XREF: .text:004C16C6j
		mov	edx, ebx
		mov	eax, 100h
		sub	eax, ebx
		push	edi		; src
		lea	ecx, [ebp-298h]
		add	edx, edx
		add	edx, ecx
		push	eax		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		lea	ecx, [ebp-298h]
		push	1
		mov	eax, [ebp-0Ch]
		push	eax
		mov	edx, [ebp+10h]
		push	edx
		push	ebx
		push	ecx
		call	loc_410AEB
		add	esp, 14h
		test	eax, eax
		jl	loc_4C1684

loc_4C1748:				; CODE XREF: .text:004C16B0j
		cmp	dword ptr [ebp-4], 24h
		jnz	short loc_4C176D
		push	4		; datasize
		lea	eax, [ebp-18h]
		push	eax		; data
		push	24h		; type
		mov	edx, [ebp-10h]
		push	edx		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jz	short loc_4C176D
		mov	ebx, 1
		jmp	short loc_4C1799
; ---------------------------------------------------------------------------

loc_4C176D:				; CODE XREF: .text:004C174Cj
					; .text:004C1764j
		cmp	dword ptr [ebp-4], 2Fh
		jnz	short loc_4C1792
		push	4		; datasize
		lea	eax, [ebp-18h]
		push	eax		; data
		push	2Fh		; type
		mov	edx, [ebp-10h]
		push	edx		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jz	short loc_4C1792
		mov	ebx, 1
		jmp	short loc_4C1799
; ---------------------------------------------------------------------------

loc_4C1792:				; CODE XREF: .text:004C1771j
					; .text:004C1789j
		xor	eax, eax
		xor	ebx, ebx
		mov	[ebp-18h], eax

loc_4C1799:				; CODE XREF: .text:004C176Bj
					; .text:004C1790j
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4C17D1
		cmp	esi, [ebp-10h]
		jnz	loc_4C18D6
		cmp	dword ptr [ebp-4], 29h
		jz	short loc_4C17B8
		cmp	dword ptr [ebp-4], 2Ah
		jnz	loc_4C18D6

loc_4C17B8:				; CODE XREF: .text:004C17ACj
		cmp	dword ptr [ebp-8], 22h
		jz	loc_4C1684
		cmp	dword ptr [ebp-8], 23h
		jz	loc_4C1684
		jmp	loc_4C18D6
; ---------------------------------------------------------------------------

loc_4C17D1:				; CODE XREF: .text:004C179Dj
		cmp	dword ptr [ebp-4], 23h
		jnz	short loc_4C17E3
		mov	dword ptr [ebp-4], 22h
		jmp	loc_4C18D6
; ---------------------------------------------------------------------------

loc_4C17E3:				; CODE XREF: .text:004C17D5j
		cmp	dword ptr [ebp-4], 27h
		jnz	short loc_4C17F5
		mov	dword ptr [ebp-4], 26h
		jmp	loc_4C18D6
; ---------------------------------------------------------------------------

loc_4C17F5:				; CODE XREF: .text:004C17E7j
		cmp	dword ptr [ebp-4], 2Ah
		jnz	short loc_4C1807
		mov	dword ptr [ebp-4], 29h
		jmp	loc_4C18D6
; ---------------------------------------------------------------------------

loc_4C1807:				; CODE XREF: .text:004C17F9j
		cmp	dword ptr [ebp-4], 2Ch
		jnz	short loc_4C1819
		mov	dword ptr [ebp-4], 2Bh
		jmp	loc_4C18D6
; ---------------------------------------------------------------------------

loc_4C1819:				; CODE XREF: .text:004C180Bj
		cmp	dword ptr [ebp-4], 24h
		jnz	short loc_4C1861
		cmp	esi, [ebp-10h]
		jnz	short loc_4C183C
		test	ebx, ebx
		jz	short loc_4C183C
		push	22h		; subaddr
		mov	eax, [ebp-10h]
		push	eax		; _addr
		mov	edx, [ebp+8]
		push	edx		; sd
		call	Findsorteddata
		add	esp, 0Ch
		jmp	short loc_4C183E
; ---------------------------------------------------------------------------

loc_4C183C:				; CODE XREF: .text:004C1822j
					; .text:004C1826j
		xor	eax, eax

loc_4C183E:				; CODE XREF: .text:004C183Aj
		test	eax, eax
		jz	short loc_4C1854
		mov	edx, [ebp-18h]
		mov	[eax+0Ch], edx
		or	dword ptr [eax+8], 10000h
		jmp	loc_4C1684
; ---------------------------------------------------------------------------

loc_4C1854:				; CODE XREF: .text:004C1840j
		test	ebx, ebx
		jz	short loc_4C18D6
		or	dword ptr [ebp-4], 10000h
		jmp	short loc_4C18D6
; ---------------------------------------------------------------------------

loc_4C1861:				; CODE XREF: .text:004C181Dj
		cmp	dword ptr [ebp-4], 2Fh
		jnz	short loc_4C18A9
		cmp	esi, [ebp-10h]
		jnz	short loc_4C1884
		test	ebx, ebx
		jz	short loc_4C1884
		push	25h		; subaddr
		mov	ecx, [ebp-10h]
		push	ecx		; _addr
		mov	eax, [ebp+8]
		push	eax		; sd
		call	Findsorteddata
		add	esp, 0Ch
		jmp	short loc_4C1886
; ---------------------------------------------------------------------------

loc_4C1884:				; CODE XREF: .text:004C186Aj
					; .text:004C186Ej
		xor	eax, eax

loc_4C1886:				; CODE XREF: .text:004C1882j
		test	eax, eax
		jz	short loc_4C189C
		mov	edx, [ebp-18h]
		mov	[eax+0Ch], edx
		or	dword ptr [eax+8], 10000h
		jmp	loc_4C1684
; ---------------------------------------------------------------------------

loc_4C189C:				; CODE XREF: .text:004C1888j
		test	ebx, ebx
		jz	short loc_4C18D6
		or	dword ptr [ebp-4], 10000h
		jmp	short loc_4C18D6
; ---------------------------------------------------------------------------

loc_4C18A9:				; CODE XREF: .text:004C1865j
		cmp	dword ptr [ebp-4], 28h
		jnz	short loc_4C18D6
		cmp	esi, [ebp-10h]
		jnz	short loc_4C18D6
		push	26h		; subaddr
		mov	ecx, [ebp-10h]
		push	ecx		; _addr
		mov	eax, [ebp+8]
		push	eax		; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4C18D6
		or	dword ptr [eax+8], 20000h
		jmp	loc_4C1684
; ---------------------------------------------------------------------------

loc_4C18D6:				; CODE XREF: .text:004C17A2j
					; .text:004C17B2j ...
		mov	edx, [ebp-10h]
		mov	[ebp-4A8h], edx
		lea	edx, [ebp-4A8h]
		mov	dword ptr [ebp-4A4h], 1
		mov	ecx, [ebp-4]
		or	ecx, 200h
		mov	[ebp-4A0h], ecx
		mov	eax, [ebp-18h]
		mov	[ebp-49Ch], eax
		push	edx		; item
		mov	ecx, [ebp+8]
		push	ecx		; sd
		call	Addsorteddata
		add	esp, 8
		mov	esi, [ebp-10h]
		mov	eax, [ebp-4]
		mov	[ebp-8], eax
		jmp	loc_4C1684
; ---------------------------------------------------------------------------

loc_4C1922:				; CODE XREF: .text:004C169Cj
		mov	edx, [ebp+8]
		push	edx		; sd
		call	Deletenonconfirmedsorteddata
		pop	ecx
		xor	eax, eax

loc_4C192E:				; CODE XREF: .text:004C1588j
					; .text:004C159Fj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; SORTFUNC loc_4C1938
loc_4C1938:				; DATA XREF: .text:004C26E2o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFC00h
		push	ebx
		push	esi
		mov	edx, [ebp+10h]
		xor	eax, eax
		mov	esi, [ebp+8]
		mov	ebx, [ebp+0Ch]
		cmp	edx, 2
		jnz	short loc_4C198C
		mov	ecx, [ebx+8]
		mov	edx, [esi+8]
		and	edx, 0FFh
		and	ecx, 0FFh
		cmp	ecx, edx
		jbe	short loc_4C1971
		or	eax, 0FFFFFFFFh
		jmp	loc_4C1A16
; ---------------------------------------------------------------------------

loc_4C1971:				; CODE XREF: .text:004C1967j
		mov	ecx, [ebx+8]
		and	ecx, 0FFh
		cmp	edx, ecx
		jbe	loc_4C1A16
		mov	eax, 1
		jmp	loc_4C1A16
; ---------------------------------------------------------------------------

loc_4C198C:				; CODE XREF: .text:004C1951j
		cmp	edx, 3
		jnz	short loc_4C19C9
		test	byte ptr [esi+0Ah], 1
		jz	short loc_4C19BC
		test	byte ptr [ebx+0Ah], 1
		jnz	short loc_4C19A2
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C1A16
; ---------------------------------------------------------------------------

loc_4C19A2:				; CODE XREF: .text:004C199Bj
		mov	edx, [esi+0Ch]
		mov	ecx, [ebx+0Ch]
		cmp	edx, ecx
		jnb	short loc_4C19B1
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C1A16
; ---------------------------------------------------------------------------

loc_4C19B1:				; CODE XREF: .text:004C19AAj
		cmp	ecx, edx
		jnb	short loc_4C1A16
		mov	eax, 1
		jmp	short loc_4C1A16
; ---------------------------------------------------------------------------

loc_4C19BC:				; CODE XREF: .text:004C1995j
		test	byte ptr [ebx+0Ah], 1
		jz	short loc_4C1A16
		mov	eax, 1
		jmp	short loc_4C1A16
; ---------------------------------------------------------------------------

loc_4C19C9:				; CODE XREF: .text:004C198Fj
		cmp	edx, 4
		jnz	short loc_4C1A16
		mov	word ptr [ebp-200h], 0
		lea	edx, [ebp-200h]
		push	edx		; dest
		push	esi		; int
		call	loc_4C12C0
		add	esp, 8
		mov	word ptr [ebp-400h], 0
		lea	ecx, [ebp-400h]
		push	ecx		; dest
		push	ebx		; int
		call	loc_4C12C0
		add	esp, 8
		lea	eax, [ebp-400h]
		push	eax		; s2
		lea	edx, [ebp-200h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8

loc_4C1A16:				; CODE XREF: .text:004C196Cj
					; .text:004C197Cj ...
		test	eax, eax
		jnz	short loc_4C1A30
		mov	edx, [esi]
		mov	ecx, [ebx]
		cmp	edx, ecx
		jnb	short loc_4C1A27
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C1A30
; ---------------------------------------------------------------------------

loc_4C1A27:				; CODE XREF: .text:004C1A20j
		cmp	ecx, edx
		jnb	short loc_4C1A30
		mov	eax, 1

loc_4C1A30:				; CODE XREF: .text:004C1A18j
					; .text:004C1A25j ...
		test	eax, eax
		jnz	short loc_4C1A61
		mov	ecx, [ebx+8]
		mov	edx, [esi+8]
		and	edx, 0FFh
		and	ecx, 0FFh
		cmp	ecx, edx
		jbe	short loc_4C1A4F
		or	eax, 0FFFFFFFFh
		jmp	short loc_4C1A61
; ---------------------------------------------------------------------------

loc_4C1A4F:				; CODE XREF: .text:004C1A48j
		mov	ecx, [ebx+8]
		and	ecx, 0FFh
		cmp	edx, ecx
		jbe	short loc_4C1A61
		mov	eax, 1

loc_4C1A61:				; CODE XREF: .text:004C1A32j
					; .text:004C1A4Dj ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C1A68:				; DATA XREF: .text:004C288Ao
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		cmp	eax, 1
		jz	short loc_4C1A78
		cmp	eax, 2
		jnz	short loc_4C1A90

loc_4C1A78:				; CODE XREF: .text:004C1A71j
		push	0		; lParam
		push	1Bh		; wParam
		push	102h		; Msg
		mov	eax, [ebp+8]
		mov	edx, [eax+22Ch]
		push	edx		; hWnd
		call	SendMessageW

loc_4C1A90:				; CODE XREF: .text:004C1A76j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4C1A94(HGLOBAL hMem, HWND hWnd, int, int, int)
loc_4C1A94:				; DATA XREF: .text:004C2853o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF4h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4C1AB1
		xor	eax, eax
		jmp	loc_4C1DB8
; ---------------------------------------------------------------------------

loc_4C1AB1:				; CODE XREF: .text:004C1AA8j
		mov	edx, [ebp+10h]
		cmp	edx, 102h
		jg	short loc_4C1ACD
		jz	short loc_4C1B37
		sub	edx, 2
		jz	short loc_4C1AE7
		sub	edx, 6
		jz	short loc_4C1B20
		jmp	loc_4C1DB6
; ---------------------------------------------------------------------------

loc_4C1ACD:				; CODE XREF: .text:004C1ABAj
		sub	edx, 471h
		jz	loc_4C1D7D
		sub	edx, 18h
		jz	loc_4C1D01
		jmp	loc_4C1DB6
; ---------------------------------------------------------------------------

loc_4C1AE7:				; CODE XREF: .text:004C1AC1j
		mov	eax, [ebx+220h]
		test	eax, eax
		jz	short loc_4C1B00
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+220h], edx

loc_4C1B00:				; CODE XREF: .text:004C1AEFj
		lea	ecx, [ebx+44h]
		push	ecx		; sd
		call	Destroysorteddata
		test	byte ptr [ebx+43h], 10h
		pop	ecx
		jnz	loc_4C1DB6
		push	ebx		; data
		call	Memfree
		pop	ecx
		jmp	loc_4C1DB6
; ---------------------------------------------------------------------------

loc_4C1B20:				; CODE XREF: .text:004C1AC6j
		push	0		; lParam
		push	1Bh		; wParam
		push	102h		; Msg
		mov	eax, [ebp+0Ch]
		push	eax		; hWnd
		call	SendMessageW
		jmp	loc_4C1DB6
; ---------------------------------------------------------------------------

loc_4C1B37:				; CODE XREF: .text:004C1ABCj
		mov	edx, [ebx+220h]
		mov	[ebp-8], edx
		cmp	dword ptr [ebp-8], 0
		jz	loc_4C1DB6
		push	100h		; n
		mov	ecx, [ebp-8]
		push	ecx		; src
		call	StrlenW
		add	esp, 8
		mov	edi, eax
		cmp	si, 1Bh
		jnz	short loc_4C1B72
		xor	eax, eax
		mov	edx, [ebp-8]
		mov	edi, eax
		mov	word ptr [edx+eax*2], 0
		jmp	short loc_4C1BDE
; ---------------------------------------------------------------------------

loc_4C1B72:				; CODE XREF: .text:004C1B61j
		cmp	si, 8
		jnz	short loc_4C1B88
		test	edi, edi
		jle	short loc_4C1B88
		dec	edi
		mov	ecx, [ebp-8]
		mov	word ptr [ecx+edi*2], 0
		jmp	short loc_4C1BDE
; ---------------------------------------------------------------------------

loc_4C1B88:				; CODE XREF: .text:004C1B76j
					; .text:004C1B7Aj
		cmp	esi, 9
		jz	loc_4C1DB6
		cmp	esi, 0Ah
		jz	loc_4C1DB6
		cmp	esi, 0Dh
		jz	loc_4C1DB6
		push	esi		; a1
		call	IstextW
		pop	ecx
		test	eax, eax
		jz	loc_4C1DB6
		cmp	edi, 0FFh
		jge	loc_4C1DB6
		mov	[ebp-0Ah], si
		mov	ax, [ebp-0Ah]
		push	eax		; ch
		call	__ltowupper
		pop	ecx
		mov	edx, [ebp-8]
		mov	[edx+edi*2], ax
		inc	edi
		mov	ecx, [ebp-8]
		mov	word ptr [ecx+edi*2], 0

loc_4C1BDE:				; CODE XREF: .text:004C1B70j
					; .text:004C1B86j
		xor	eax, eax
		test	edi, edi
		mov	[ebp-4], eax
		jle	short loc_4C1C50
		xor	esi, esi
		jmp	short loc_4C1C29
; ---------------------------------------------------------------------------

loc_4C1BEB:				; CODE XREF: .text:004C1C2Cj
		push	esi		; index
		lea	eax, [ebx+44h]
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jz	short loc_4C1C2E
		lea	edx, [ebp-20Ch]
		push	edx		; dest
		push	eax		; int
		call	loc_4C12C0
		add	esp, 8
		cmp	edi, eax
		jg	short loc_4C1C28
		push	edi		; maxlen
		mov	ecx, [ebp-8]
		push	ecx		; s2
		lea	eax, [ebp-20Ch]
		push	eax		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4C1C2E

loc_4C1C28:				; CODE XREF: .text:004C1C0Ej
		inc	esi

loc_4C1C29:				; CODE XREF: .text:004C1BE9j
		cmp	esi, [ebx+44h]
		jl	short loc_4C1BEB

loc_4C1C2E:				; CODE XREF: .text:004C1BFAj
					; .text:004C1C26j
		cmp	esi, [ebx+44h]
		jge	short loc_4C1C3F
		push	esi		; selected
		push	ebx		; pt
		call	Settableselection
		add	esp, 8
		jmp	short loc_4C1C50
; ---------------------------------------------------------------------------

loc_4C1C3F:				; CODE XREF: .text:004C1C31j
		dec	edi
		mov	edx, [ebp-8]
		mov	word ptr [edx+edi*2], 0
		mov	dword ptr [ebp-4], 1

loc_4C1C50:				; CODE XREF: .text:004C1BE5j
					; .text:004C1C3Dj
		cmp	dword ptr [ebx+228h], 0
		jz	loc_4C1CF7
		test	edi, edi
		jnz	short loc_4C1C72
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4C1C72
		mov	word ptr [ebp-20Ch], 0
		jmp	short loc_4C1CE4
; ---------------------------------------------------------------------------

loc_4C1C72:				; CODE XREF: .text:004C1C5Fj
					; .text:004C1C65j
		push	offset aSearch_6 ; "Search - "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-20Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, eax
		mov	eax, [ebp-8]
		mov	ecx, esi
		push	eax		; src
		mov	edx, 100h
		sub	edx, esi
		lea	eax, [ebp-20Ch]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	esi, eax
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4C1CE4
		push	offset aNoMatch_1 ; " -	No match"
		call	_T
		mov	edx, 100h
		pop	ecx
		sub	edx, esi
		lea	ecx, [ebp-20Ch]
		push	eax		; src
		add	esi, esi
		add	esi, ecx
		push	edx		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4C1CE4:				; CODE XREF: .text:004C1C70j
					; .text:004C1CBBj
		lea	eax, [ebp-20Ch]
		push	eax		; lpString
		mov	edx, [ebx+228h]
		push	edx		; hWnd
		call	SetWindowTextW

loc_4C1CF7:				; CODE XREF: .text:004C1C57j
		mov	eax, 1
		jmp	loc_4C1DB8
; ---------------------------------------------------------------------------

loc_4C1D01:				; CODE XREF: .text:004C1ADCj
		cmp	dword ptr [ebp+18h], 0
		jz	loc_4C1DB6
		mov	eax, [ebp+18h]
		test	esi, esi
		jnz	short loc_4C1D29
		mov	edx, [eax]
		cmp	edx, [ebx+21Ch]
		jnz	short loc_4C1D29
		mov	[eax+4], ebx
		mov	eax, 1234h
		jmp	loc_4C1DB8
; ---------------------------------------------------------------------------

loc_4C1D29:				; CODE XREF: .text:004C1D10j
					; .text:004C1D1Aj
		cmp	esi, 1
		jnz	short loc_4C1D53
		mov	edx, [eax]
		cmp	edx, [ebx+21Ch]
		jz	short loc_4C1D3C
		test	edx, edx
		jnz	short loc_4C1D53

loc_4C1D3C:				; CODE XREF: .text:004C1D36j
		push	0
		mov	ecx, [ebx+21Ch]
		push	ecx
		add	ebx, 44h
		push	ebx
		call	loc_4C1570
		add	esp, 0Ch
		jmp	short loc_4C1D79
; ---------------------------------------------------------------------------

loc_4C1D53:				; CODE XREF: .text:004C1D2Cj
					; .text:004C1D3Aj
		test	byte ptr [ebx+43h], 10h
		jnz	short loc_4C1D79
		cmp	esi, 2
		jnz	short loc_4C1D68
		mov	eax, [eax]
		cmp	eax, [ebx+21Ch]
		jz	short loc_4C1D6D

loc_4C1D68:				; CODE XREF: .text:004C1D5Cj
		cmp	esi, 3
		jnz	short loc_4C1D79

loc_4C1D6D:				; CODE XREF: .text:004C1D66j
		mov	edx, [ebx+224h]
		push	edx		; hWnd
		call	DestroyWindow

loc_4C1D79:				; CODE XREF: .text:004C1D51j
					; .text:004C1D57j ...
		xor	eax, eax
		jmp	short loc_4C1DB8
; ---------------------------------------------------------------------------

loc_4C1D7D:				; CODE XREF: .text:004C1AD3j
		push	0		; index
		push	offset loc_4C0CF8 ; menufunc
		mov	edx, [ebx+218h]
		push	edx		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h
		test	eax, eax
		jge	short loc_4C1DAF
		push	0		; index
		push	offset loc_4C0DAC ; menufunc
		mov	ecx, [ebx+218h]
		push	ecx		; pm
		push	ebx		; pt
		call	Callmenufunction
		add	esp, 10h

loc_4C1DAF:				; CODE XREF: .text:004C1D96j
		mov	eax, 1
		jmp	short loc_4C1DB8
; ---------------------------------------------------------------------------

loc_4C1DB6:				; CODE XREF: .text:004C1AC8j
					; .text:004C1AE2j ...
		xor	eax, eax

loc_4C1DB8:				; CODE XREF: .text:004C1AACj
					; .text:004C1CFCj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_4C1DC0(wchar_t *buffer, void *s, int,	int, int, int)
loc_4C1DC0:				; DATA XREF: .text:004C2880o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDB0h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+18h]
		mov	esi, eax
		test	eax, eax
		jnz	short loc_4C1DDC
		xor	eax, eax
		jmp	loc_4C25B6
; ---------------------------------------------------------------------------

loc_4C1DDC:				; CODE XREF: .text:004C1DD3j
		xor	ebx, ebx
		mov	eax, [ebp+1Ch]
		add	eax, 4		; switch 10 cases
		cmp	eax, 9
		ja	loc_4C25B4	; jumptable 004C1DED default case
		jmp	ds:off_4C1DF4[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4C1DF4	dd offset loc_4C1E1C	; DATA XREF: .text:004C1DEDr
		dd offset loc_4C1E23	; jump table for switch	statement
		dd offset loc_4C1E2A
		dd offset loc_4C1E31
		dd offset loc_4C1E38
		dd offset loc_4C1EA7
		dd offset loc_4C1F3D
		dd offset loc_4C203F
		dd offset loc_4C2069
		dd offset loc_4C238C
; ---------------------------------------------------------------------------

loc_4C1E1C:				; CODE XREF: .text:004C1DEDj
					; DATA XREF: .text:off_4C1DF4o
		xor	eax, eax	; jumptable 004C1DED case -4
		jmp	loc_4C25B6
; ---------------------------------------------------------------------------

loc_4C1E23:				; CODE XREF: .text:004C1DEDj
					; DATA XREF: .text:off_4C1DF4o
		xor	eax, eax	; jumptable 004C1DED case -3
		jmp	loc_4C25B6
; ---------------------------------------------------------------------------

loc_4C1E2A:				; CODE XREF: .text:004C1DEDj
					; DATA XREF: .text:off_4C1DF4o
		xor	eax, eax	; jumptable 004C1DED case -2
		jmp	loc_4C25B6
; ---------------------------------------------------------------------------

loc_4C1E31:				; CODE XREF: .text:004C1DEDj
					; DATA XREF: .text:off_4C1DF4o
		xor	eax, eax	; jumptable 004C1DED case -1
		jmp	loc_4C25B6
; ---------------------------------------------------------------------------

loc_4C1E38:				; CODE XREF: .text:004C1DEDj
					; DATA XREF: .text:off_4C1DF4o
		mov	ebx, 2003h	; jumptable 004C1DED case 0
		push	0		; subaddr
		mov	eax, [esi]
		push	eax		; _addr
		push	offset stru_5D6528.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4C1E82
		test	byte ptr [eax+9], 10h
		jz	short loc_4C1E82
		mov	edx, [eax+8]
		test	edx, 20000h
		jz	short loc_4C1E6C
		or	ebx, 800h
		jmp	short loc_4C1E82
; ---------------------------------------------------------------------------

loc_4C1E6C:				; CODE XREF: .text:004C1E62j
		test	edx, 40000h
		jz	short loc_4C1E7C
		or	ebx, 400h
		jmp	short loc_4C1E82
; ---------------------------------------------------------------------------

loc_4C1E7C:				; CODE XREF: .text:004C1E72j
		or	ebx, 200h

loc_4C1E82:				; CODE XREF: .text:004C1E51j
					; .text:004C1E57j ...
		push	ebx		; mode
		mov	ecx, [ebp+10h]
		push	ecx		; select
		mov	eax, [ebp+0Ch]
		push	eax		; mask
		push	0		; index
		push	0FFFFFFFFh	; relreg
		push	0		; reladdr
		mov	edx, [esi]
		push	edx		; _addr
		mov	ecx, [ebp+8]
		push	ecx		; text
		call	Labeladdress
		add	esp, 20h
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C1EA7:				; CODE XREF: .text:004C1DEDj
					; DATA XREF: .text:off_4C1DF4o
		mov	eax, [esi]	; jumptable 004C1DED case 1
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_4C25B4	; jumptable 004C1DED default case
		mov	edx, [ebp+14h]
		cmp	dword ptr [edx+21Ch], 0
		jnz	short loc_4C1EE8
		mov	ecx, [ebp-0Ch]
		add	ecx, 0Ch
		push	ecx		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C1EE8:				; CODE XREF: .text:004C1EC7j
		xor	edx, edx
		mov	eax, [ebp-0Ch]
		mov	eax, [eax+8E8h]
		jmp	short loc_4C1F0A
; ---------------------------------------------------------------------------

loc_4C1EF5:				; CODE XREF: .text:004C1F13j
		mov	ecx, [eax+18h]
		cmp	ecx, [esi]
		ja	short loc_4C1F06
		mov	ecx, [eax+18h]
		add	ecx, [eax+1Ch]
		cmp	ecx, [esi]
		ja	short loc_4C1F15

loc_4C1F06:				; CODE XREF: .text:004C1EFAj
		inc	edx
		add	eax, 30h

loc_4C1F0A:				; CODE XREF: .text:004C1EF3j
		mov	ecx, [ebp-0Ch]
		cmp	edx, [ecx+8E4h]
		jl	short loc_4C1EF5

loc_4C1F15:				; CODE XREF: .text:004C1F04j
		mov	ecx, [ebp-0Ch]
		cmp	edx, [ecx+8E4h]
		jge	loc_4C25B4	; jumptable 004C1DED default case
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C1F3D:				; CODE XREF: .text:004C1DEDj
					; DATA XREF: .text:off_4C1DF4o
		mov	edi, [esi+8]	; jumptable 004C1DED case 2
		and	edi, 0FFh
		cmp	edi, 21h
		jnz	short loc_4C1F6F
		push	offset aLabel	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C1F6F:				; CODE XREF: .text:004C1F49j
		cmp	edi, 22h
		jz	short loc_4C1F88
		cmp	edi, 23h
		jz	short loc_4C1F88
		cmp	edi, 24h
		jz	short loc_4C1F88
		cmp	edi, 25h
		jz	short loc_4C1F88
		cmp	edi, 2Fh
		jnz	short loc_4C1FAC

loc_4C1F88:				; CODE XREF: .text:004C1F72j
					; .text:004C1F77j ...
		push	offset aExport	; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C1FAC:				; CODE XREF: .text:004C1F86j
		cmp	edi, 26h
		jz	short loc_4C1FBB
		cmp	edi, 27h
		jz	short loc_4C1FBB
		cmp	edi, 28h
		jnz	short loc_4C1FDF

loc_4C1FBB:				; CODE XREF: .text:004C1FAFj
					; .text:004C1FB4j
		push	offset aImport	; "Import"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C1FDF:				; CODE XREF: .text:004C1FB9j
		cmp	edi, 29h
		jz	short loc_4C1FE9
		cmp	edi, 2Ah
		jnz	short loc_4C200D

loc_4C1FE9:				; CODE XREF: .text:004C1FE2j
		push	offset aDebugData_0 ; "Debug data"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C200D:				; CODE XREF: .text:004C1FE7j
		cmp	edi, 2Bh
		jz	short loc_4C201B
		cmp	edi, 2Ch
		jnz	loc_4C25B4	; jumptable 004C1DED default case

loc_4C201B:				; CODE XREF: .text:004C2010j
		push	offset aAnalyser ; "Analyser"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C203F:				; CODE XREF: .text:004C1DEDj
					; DATA XREF: .text:off_4C1DF4o
		test	byte ptr [esi+0Ah], 1 ;	jumptable 004C1DED case	3
		jz	loc_4C25B4	; jumptable 004C1DED default case
		mov	eax, [esi+0Ch]
		mov	edx, ebx
		push	eax
		push	offset aU_1	; format
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C2069:				; CODE XREF: .text:004C1DEDj
					; DATA XREF: .text:off_4C1DF4o
		mov	edi, [esi+8]	; jumptable 004C1DED case 4
		and	edi, 0FFh
		cmp	edi, 24h
		jz	short loc_4C207C
		cmp	edi, 2Fh
		jnz	short loc_4C20CB

loc_4C207C:				; CODE XREF: .text:004C2075j
		push	4		; datasize
		lea	eax, [ebp-8]
		push	eax		; data
		push	edi		; type
		mov	edx, [esi]
		push	edx		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4C20AF
		push	$CTW0("??? ")	; "???"
		push	100h		; n
		mov	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C20AF:				; CODE XREF: .text:004C2090j
		mov	eax, [ebp-8]
		push	eax
		push	offset aU_1	; format
		mov	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C20CB:				; CODE XREF: .text:004C207Aj
		cmp	edi, 28h
		jnz	loc_4C217C
		push	44h		; datasize
		lea	eax, [ebp-250h]
		push	eax		; data
		push	28h		; type
		mov	edx, [esi]
		push	edx		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jnz	short loc_4C210B
		push	$CTW0("??? ")	; "???"
		push	100h		; n
		mov	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C210B:				; CODE XREF: .text:004C20ECj
		lea	eax, [ebp-24Ch]
		push	eax
		push	offset aS__1	; "&%s."
		mov	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		mov	eax, [ebp-250h]
		mov	edx, ebx
		push	eax
		push	offset aU_1	; format
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		mov	edi, eax
		mov	eax, [ebp+14h]
		add	esp, 0Ch
		cmp	dword ptr [eax+7Ch], 3
		jnz	short loc_4C2175
		push	ebx		; n
		push	2		; c
		mov	edx, [ebp+0Ch]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		push	edi		; n
		push	0		; c
		mov	ecx, [ebp+0Ch]
		add	ecx, ebx
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 100h

loc_4C2175:				; CODE XREF: .text:004C214Aj
		add	ebx, edi
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C217C:				; CODE XREF: .text:004C20CEj
		cmp	edi, 22h
		jnz	short loc_4C21E2
		cmp	dword_57FE94, 0
		jnz	short loc_4C21A6
		push	100h		; nname
		mov	edx, [ebp+8]
		push	edx		; _name
		push	edi		; type
		mov	ecx, [esi]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C21A6:				; CODE XREF: .text:004C2188j
		push	100h		; nname
		mov	eax, [ebp+8]
		push	eax		; _name
		push	23h		; type
		mov	edx, [esi]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	loc_4C25B4	; jumptable 004C1DED default case
		push	100h		; nname
		mov	eax, [ebp+8]
		push	eax		; _name
		push	edi		; type
		mov	edx, [esi]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C21E2:				; CODE XREF: .text:004C217Fj
		cmp	edi, 26h
		jnz	loc_4C22A4
		cmp	dword_57FE94, 0
		jnz	short loc_4C220D
		push	100h		; nname
		mov	eax, [ebp+8]
		push	eax		; _name
		push	edi		; type
		mov	edx, [esi]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		jmp	short loc_4C2240
; ---------------------------------------------------------------------------

loc_4C220D:				; CODE XREF: .text:004C21F2j
		push	100h		; nname
		mov	eax, [ebp+8]
		push	eax		; _name
		push	27h		; type
		mov	edx, [esi]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4C2240
		push	100h		; nname
		mov	eax, [ebp+8]
		push	eax		; _name
		push	edi		; type
		mov	edx, [esi]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax

loc_4C2240:				; CODE XREF: .text:004C220Bj
					; .text:004C2227j
		mov	eax, [ebp+14h]
		cmp	dword ptr [eax+7Ch], 4
		jnz	loc_4C25B4	; jumptable 004C1DED default case
		xor	edi, edi
		mov	eax, [ebp+8]
		cmp	ebx, edi
		jle	short loc_4C2264

loc_4C2256:				; CODE XREF: .text:004C2262j
		cmp	word ptr [eax],	2Eh
		jz	short loc_4C2264
		inc	edi
		add	eax, 2
		cmp	ebx, edi
		jg	short loc_4C2256

loc_4C2264:				; CODE XREF: .text:004C2254j
					; .text:004C225Aj
		lea	edx, [ebx-1]
		cmp	edi, edx
		jge	loc_4C25B4	; jumptable 004C1DED default case
		lea	ecx, [edi+1]
		push	ecx		; n
		push	2		; c
		mov	eax, [ebp+0Ch]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, ebx
		sub	edx, edi
		dec	edx
		push	edx		; n
		push	0		; c
		add	edi, [ebp+0Ch]
		inc	edi
		push	edi		; s
		call	_memset
		add	esp, 0Ch
		mov	ecx, [ebp+10h]
		or	dword ptr [ecx], 100h
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C22A4:				; CODE XREF: .text:004C21E5j
		cmp	edi, 29h
		jnz	short loc_4C230A
		cmp	dword_57FE94, 0
		jnz	short loc_4C22CE
		push	100h		; nname
		mov	eax, [ebp+8]
		push	eax		; _name
		push	edi		; type
		mov	edx, [esi]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C22CE:				; CODE XREF: .text:004C22B0j
		push	100h		; nname
		mov	eax, [ebp+8]
		push	eax		; _name
		push	2Ah		; type
		mov	edx, [esi]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	loc_4C25B4	; jumptable 004C1DED default case
		push	100h		; nname
		mov	eax, [ebp+8]
		push	eax		; _name
		push	edi		; type
		mov	edx, [esi]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C230A:				; CODE XREF: .text:004C22A7j
		cmp	edi, 2Bh
		jnz	short loc_4C2370
		cmp	dword_57FE94, 0
		jnz	short loc_4C2334
		push	100h		; nname
		mov	eax, [ebp+8]
		push	eax		; _name
		push	edi		; type
		mov	edx, [esi]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C2334:				; CODE XREF: .text:004C2316j
		push	100h		; nname
		mov	eax, [ebp+8]
		push	eax		; _name
		push	2Ch		; type
		mov	edx, [esi]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		test	ebx, ebx
		jnz	loc_4C25B4	; jumptable 004C1DED default case
		push	100h		; nname
		mov	eax, [ebp+8]
		push	eax		; _name
		push	edi		; type
		mov	edx, [esi]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C2370:				; CODE XREF: .text:004C230Dj
		push	100h		; nname
		mov	eax, [ebp+8]
		push	eax		; _name
		push	edi		; type
		mov	edx, [esi]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		mov	ebx, eax
		jmp	loc_4C25B4	; jumptable 004C1DED default case
; ---------------------------------------------------------------------------

loc_4C238C:				; CODE XREF: .text:004C1DEDj
					; DATA XREF: .text:off_4C1DF4o
		mov	eax, [esi+8]	; jumptable 004C1DED case 5
		and	eax, 0FFh
		cmp	eax, 28h
		jnz	short loc_4C23F6
		push	1		; mode
		push	4		; size
		mov	edx, [esi]
		push	edx		; _addr
		lea	ecx, [ebp-4]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		cmp	eax, 4
		jnz	loc_4C2480
		mov	eax, [ebp-4]
		push	eax		; _addr
		call	Followcall
		pop	ecx
		mov	[ebp-4], eax
		push	0		; comment
		push	100h		; nsymb
		mov	edx, [ebp+8]
		push	edx		; symb
		push	20009h		; mode
		push	0		; amod
		mov	ecx, [ebp-4]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		mov	ebx, eax
		push	ebx		; n
		push	0		; c
		mov	eax, [ebp+0Ch]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		jmp	loc_4C2480
; ---------------------------------------------------------------------------

loc_4C23F6:				; CODE XREF: .text:004C2397j
		test	byte ptr [esi+0Ah], 2
		jz	loc_4C2480
		push	44h		; datasize
		lea	edx, [ebp-250h]
		push	edx		; data
		push	28h		; type
		mov	ecx, [esi]
		push	ecx		; _addr
		call	Finddata
		add	esp, 10h
		test	eax, eax
		jle	short loc_4C2480
		push	offset aOrdinal	; "Ordinal = "
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		push	ebx		; n
		push	2		; c
		mov	eax, [ebp+0Ch]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, [ebp-250h]
		lea	ecx, [ebp-24Ch]
		mov	eax, ebx
		push	edx
		push	ecx
		push	offset aS_U_0	; "%s.#%u"
		add	eax, eax
		add	eax, [ebp+8]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		mov	edi, eax
		push	edi		; n
		push	0		; c
		mov	eax, [ebp+0Ch]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		add	ebx, edi

loc_4C2480:				; CODE XREF: .text:004C23AFj
					; .text:004C23F1j ...
		push	100h		; nname
		lea	edx, [ebp-20Ch]
		push	edx		; _name
		push	37h		; type
		mov	ecx, [esi]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jle	short loc_4C251C
		test	ebx, ebx
		jle	short loc_4C24E4
		lea	eax, [ebp-20Ch]
		push	eax		; s
		call	Uncapitalize
		pop	ecx
		mov	edx, 100h
		sub	edx, ebx
		mov	ecx, ebx
		push	offset asc_55CE5C ; ", "
		push	edx		; n
		add	ecx, ecx
		add	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		test	edi, edi
		jle	short loc_4C24E2
		push	edi		; n
		push	0		; c
		mov	eax, [ebp+0Ch]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4C24E2:				; CODE XREF: .text:004C24CFj
		add	ebx, edi

loc_4C24E4:				; CODE XREF: .text:004C249Fj
		lea	edx, [ebp-20Ch]
		mov	ecx, 100h
		sub	ecx, ebx
		push	edx		; src
		mov	eax, ebx
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		test	edi, edi
		jle	short loc_4C251A
		push	edi		; n
		push	0		; c
		mov	eax, [ebp+0Ch]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4C251A:				; CODE XREF: .text:004C2507j
		add	ebx, edi

loc_4C251C:				; CODE XREF: .text:004C249Bj
		push	100h		; nname
		lea	edx, [ebp-20Ch]
		push	edx		; _name
		push	30h		; type
		mov	ecx, [esi]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jle	short loc_4C25AB
		test	ebx, ebx
		jle	short loc_4C2573
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		push	offset asc_55CE62 ; "; "
		push	eax		; n
		add	edx, edx
		add	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		test	edi, edi
		jle	short loc_4C2571
		push	edi		; n
		push	0		; c
		mov	eax, [ebp+0Ch]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4C2571:				; CODE XREF: .text:004C255Ej
		add	ebx, edi

loc_4C2573:				; CODE XREF: .text:004C253Bj
		lea	edx, [ebp-20Ch]
		mov	ecx, 100h
		sub	ecx, ebx
		push	edx		; src
		mov	eax, ebx
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		test	edi, edi
		jle	short loc_4C25A9
		push	edi		; n
		push	0		; c
		mov	eax, [ebp+0Ch]
		add	eax, ebx
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4C25A9:				; CODE XREF: .text:004C2596j
		add	ebx, edi

loc_4C25AB:				; CODE XREF: .text:004C2537j
		mov	edx, [ebp+10h]
		or	dword ptr [edx], 300h

loc_4C25B4:				; CODE XREF: .text:004C1DE7j
					; .text:004C1EA2j ...
		mov	eax, ebx	; jumptable 004C1DED default case

loc_4C25B6:				; CODE XREF: .text:004C1DD7j
					; .text:004C1E1Ej ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4C25C0:				; CODE XREF: .text:00412610p
					; .text:004B55B4p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDF4h
		mov	eax, run.status
		test	eax, eax
		push	ebx
		push	esi
		push	edi
		mov	edi, offset a__2 ; "."
;__DebugBreak
		mov	esi, [ebp+8]
		jz	short loc_4C25E2
		cmp	eax, 14h
		jnz	short loc_4C25E9

loc_4C25E2:				; CODE XREF: .text:004C25DBj
		xor	eax, eax
		jmp	loc_4C2960
; ---------------------------------------------------------------------------

loc_4C25E9:				; CODE XREF: .text:004C25E0j
		test	esi, esi
		jnz	short loc_4C25F4
		xor	edx, edx
		mov	[ebp-0Ch], edx
		jmp	short loc_4C2610
; ---------------------------------------------------------------------------

loc_4C25F4:				; CODE XREF: .text:004C25EBj
		push	esi		; _addr
		call	Findmodule
		pop	ecx
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4C260B
		xor	eax, eax
		jmp	loc_4C2960
; ---------------------------------------------------------------------------

loc_4C260B:				; CODE XREF: .text:004C2602j
		mov	edx, [ebp-0Ch]
		mov	esi, [edx]

loc_4C2610:				; CODE XREF: .text:004C25F2j
		mov	[ebp-8], esi
		xor	eax, eax
		mov	[ebp-4], eax
		lea	edx, [ebp-8]
		push	edx		; lp
		push	0		; wp
		push	489h		; msg
		call	Broadcast
		add	esp, 0Ch
		cmp	eax, 1234h
		jnz	short loc_4C26A2
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4C26A2
		mov	edx, [ebp-4]
		cmp	dword ptr [edx+224h], 0
		jz	short loc_4C2694
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4C2661
		push	0		; lParam
		mov	ecx, [edx+224h]
		push	ecx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4C2661:				; CODE XREF: .text:004C264Bj
		mov	eax, [ebp-4]
		mov	edx, [eax+224h]
		push	edx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_4C2685
		push	9		; nCmdShow
		mov	ecx, [ebp-4]
		mov	eax, [ecx+224h]
		push	eax		; hWnd
		call	ShowWindow

loc_4C2685:				; CODE XREF: .text:004C2672j
		mov	edx, [ebp-4]
		mov	ecx, [edx+22Ch]
		push	ecx		; hWnd
		call	SetFocus

loc_4C2694:				; CODE XREF: .text:004C2642j
		mov	eax, [ebp-4]
		mov	eax, [eax+22Ch]
		jmp	loc_4C2960
; ---------------------------------------------------------------------------

loc_4C26A2:				; CODE XREF: .text:004C2630j
					; .text:004C2636j
		push	2		; flags
		push	26Ch		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4C26BE
		xor	eax, eax
		jmp	loc_4C2960
; ---------------------------------------------------------------------------

loc_4C26BE:				; CODE XREF: .text:004C26B5j
		lea	edx, aNamelist_1;[edi+6D8h]
		push	edx		; src
		push	20h		; n
		push	ebx		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	ebx		; s
		call	addTabWindows
		pop	ecx
		mov	dword ptr [ebx+40h], 0F9000h
		push	2		; mode
		push	0		; destfunc
		push	offset loc_4C1938 ; sortfunc
		push	100h		; nexp
		push	10h		; itemsize
		lea	ecx, [ebx+44h]
		push	ecx		; sd
		call	Createsorteddata
		add	esp, 18h
		test	eax, eax
		jz	short loc_4C270C
		push	ebx		; data
		call	Memfree
		pop	ecx
		xor	eax, eax
		jmp	loc_4C2960
; ---------------------------------------------------------------------------

loc_4C270C:				; CODE XREF: .text:004C26FCj
		push	0
		push	esi
		lea	edx, [ebx+44h]
		push	edx
		call	loc_4C1570
		mov	dword ptr [ebx+90h], 1
		lea	ecx, aAddress_10;[edi+6EAh]
		lea	eax, aAddressOfTheNa;[edi+6FAh]
		mov	[ebx+94h], ecx
		mov	[ebx+0D8h], eax
		mov	dword ptr [ebx+11Ch], 2
		add	esp, 0Ch
		test	esi, esi
		mov	dword ptr [ebx+160h], 9
		jnz	short loc_4C276F
		lea	edx, aModule_4;[edi+722h]
		mov	[ebx+98h], edx
		lea	ecx, aNameOfTheMod_0;[edi+730h]
		mov	[ebx+0DCh], ecx
		jmp	short loc_4C2787
; ---------------------------------------------------------------------------

loc_4C276F:				; CODE XREF: .text:004C2753j
		lea	eax, aSection_0;[edi+78Ah]
		lea	edx, aNameOfTheSecti;[edi+79Ah]
		mov	[ebx+98h], eax
		mov	[ebx+0DCh], edx

loc_4C2787:				; CODE XREF: .text:004C276Dj
		mov	dword ptr [ebx+120h], 2
		mov	dword ptr [ebx+164h], 9
		lea	ecx, aType_5;[edi+7F6h]
		lea	eax, aTypeOfTheName;[edi+800h]
		mov	[ebx+9Ch], ecx
		mov	[ebx+0E0h], eax
		mov	dword ptr [ebx+124h], 2
		mov	dword ptr [ebx+168h], 0Bh
		lea	edx, aOrdinal_1;[edi+822h]
		lea	ecx, aOrdinalAssocia;[edi+832h]
		mov	[ebx+0A0h], edx
		mov	[ebx+0E4h], ecx
		mov	dword ptr [ebx+128h], 2
		mov	dword ptr [ebx+16Ch], 8
		lea	eax, aName_2;[edi+892h]
		lea	edx, aName_2;[edi+892h]
		mov	[ebx+0A4h], eax
		mov	[ebx+0E8h], edx
		mov	dword ptr [ebx+12Ch], 2
		mov	dword ptr [ebx+170h], 28h
		lea	ecx, aComments_0;[edi+89Ch]	; int
		lea	eax, aNameRelatedCom;[edi+8AEh]	; int
		mov	[ebx+0A8h], ecx
		mov	[ebx+0ECh], eax
		xor	edx, edx	; int
		mov	[ebx+130h], edx
		mov	dword ptr [ebx+174h], 100h
		mov	dword ptr [ebx+8Ch], 6
		mov	dword ptr [ebx+208h], offset loc_4C1A94
		mov	[ebx+21Ch], esi
		push	3		; flags
		push	200h		; size
		call	Memalloc
		xor	ecx, ecx
		mov	[ebx+220h], eax
		mov	[ebx+20Ch], ecx
		add	esp, 8
		mov	dword ptr [ebx+210h], offset loc_4C1DC0
		mov	dword ptr [ebx+214h], offset loc_4C1A68
		mov	dword ptr [ebx+218h], offset stru_55C628
		test	esi, esi
		jnz	short loc_4C28C6
		lea	eax, aAllNames;[edi+8DAh]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-20Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4C2934
; ---------------------------------------------------------------------------

loc_4C28C6:				; CODE XREF: .text:004C28A0j
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4C28F0
		lea	ecx, aNames_1;[edi+8EEh]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	eax, [ebp-20Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4C2934
; ---------------------------------------------------------------------------

loc_4C28F0:				; CODE XREF: .text:004C28CAj
		lea	edx, aNamesIn;[edi+8FAh]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	ecx, [ebp-20Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edx, [ebp-0Ch]
		add	edx, 0Ch
		mov	ecx, 100h
		sub	ecx, eax
		push	edx		; src
		lea	edx, [ebp-20Ch]
		add	eax, eax
		add	eax, edx
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4C2934:				; CODE XREF: .text:004C28C4j
					; .text:004C28EEj
		lea	eax, [ebp-20Ch]
		lea	ecx, aIco_n;[edi+90Eh]
		push	eax		; _title
		mov	eax, g_hInstance
		push	ecx		; icon
		push	eax		; hi
		mov	edx, [ebx+8Ch]
		push	edx		; ncolumn
		push	0		; nrow
		push	ebx		; pt
		call	Createtablewindow
		add	esp, 18h
		mov	eax, [ebx+22Ch]

loc_4C2960:				; CODE XREF: .text:004C25E4j
					; .text:004C2606j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C2968:				; CODE XREF: .text:00416C5Ep
					; .text:0046FACBp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		xor	edx, edx
		mov	eax, [ebp+8]
		lea	ecx, [ebp-8]
		mov	[ebp-8], eax
		mov	[ebp-4], edx
		push	ecx		; lp
		push	1		; wp
		push	489h		; msg
		call	Broadcast
		add	esp, 0Ch
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; void __cdecl loc_4C2990(t_reg	*, int,	int, int)
loc_4C2990:				; CODE XREF: .text:004C39B6p
					; .text:004C454Ap
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 3

loc_4C2999:				; CODE XREF: .text:004C29A1j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4C2999
		mov	eax, [ebp-4]
		add	esp, 0FFFFFF04h
		push	ebx
		push	esi
		push	edi
		cmp	tracefile, 0
		jz	loc_4C3119
		cmp	dword ptr [ebp+8], 0
		jz	loc_4C3119
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4C29D2
		cmp	dword ptr [ebp+14h], 0
		jg	short loc_4C29F5

loc_4C29D2:				; CODE XREF: .text:004C29CAj
		lea	eax, [ebp-1830h]
		mov	[ebp+10h], eax
		push	5		; mode
		push	10h		; size
		mov	edx, [ebp+8]
		mov	ecx, [edx+8]
		push	ecx		; _addr
		mov	eax, [ebp+10h]
		push	eax		; buf
		call	Readmemory
		add	esp, 10h
		mov	[ebp+14h], eax

loc_4C29F5:				; CODE XREF: .text:004C29D0j
		push	8001h		; mode
		mov	edx, [ebp+8]
		mov	ecx, [edx+4]
		push	ecx		; threadid
		lea	eax, [ebp-1820h]
		push	eax		; s
		call	Decodethreadname
		add	esp, 0Ch
		mov	ebx, eax
		test	byte ptr dword_5C8930+2, 2
		jz	short loc_4C2A28
		mov	word ptr [ebp+ebx*2-1820h], 9
		inc	ebx
		jmp	short loc_4C2A59
; ---------------------------------------------------------------------------

loc_4C2A28:				; CODE XREF: .text:004C2A19j
		lea	eax, [ebp+ebx*2-1820h]
		cmp	ebx, 5
		mov	[ebp-14h], eax
		jge	short loc_4C2A49

loc_4C2A37:				; CODE XREF: .text:004C2A47j
		mov	edx, [ebp-14h]
		mov	word ptr [edx],	20h
		inc	ebx
		add	dword ptr [ebp-14h], 2
		cmp	ebx, 5
		jl	short loc_4C2A37

loc_4C2A49:				; CODE XREF: .text:004C2A35j
		mov	ebx, 5
		mov	word ptr [ebp+ebx*2-1820h], 20h
		inc	ebx

loc_4C2A59:				; CODE XREF: .text:004C2A26j
		mov	eax, ebx
		lea	edx, [ebp-1820h]
		add	eax, eax
		xor	ecx, ecx
		add	eax, edx
		push	0		; comment
		push	100h		; nsymb
		push	eax		; symb
		cmp	dword_5BDD00, 0
		jnz	short loc_4C2A7E
		add	ecx, 100h

loc_4C2A7E:				; CODE XREF: .text:004C2A76j
		mov	eax, 20000h
		cmp	dword_5BDD04, 0
		jnz	short loc_4C2A91
		add	eax, 0FFFE0000h

loc_4C2A91:				; CODE XREF: .text:004C2A8Aj
		or	ecx, eax
		or	ecx, 400h
		push	ecx		; mode
		push	0		; amod
		mov	edx, [ebp+8]
		mov	ecx, [edx+8]
		push	ecx		; _addr
		call	Decodeaddress
		add	esp, 18h
		add	ebx, eax
		test	byte ptr dword_5C8930+2, 2
		jz	short loc_4C2AC3
		mov	word ptr [ebp+ebx*2-1820h], 9
		inc	ebx
		jmp	short loc_4C2B09
; ---------------------------------------------------------------------------

loc_4C2AC3:				; CODE XREF: .text:004C2AB4j
		mov	esi, 0Fh
		cmp	dword_5BDD00, 0
		jnz	short loc_4C2ADA
		cmp	dword_5BDD04, 0
		jz	short loc_4C2ADD

loc_4C2ADA:				; CODE XREF: .text:004C2ACFj
		add	esi, 12h

loc_4C2ADD:				; CODE XREF: .text:004C2AD8j
		lea	edi, [ebp+ebx*2-1820h]
		cmp	esi, ebx
		jle	short loc_4C2AF5

loc_4C2AE8:				; CODE XREF: .text:004C2AF3j
		mov	word ptr [edi],	20h
		inc	ebx
		add	edi, 2
		cmp	esi, ebx
		jg	short loc_4C2AE8

loc_4C2AF5:				; CODE XREF: .text:004C2AE6j
		mov	ax, 20h
		cmp	esi, ebx
		jz	short loc_4C2B00
		add	eax, 1Bh

loc_4C2B00:				; CODE XREF: .text:004C2AFBj
		mov	[ebp+ebx*2-1820h], ax
		inc	ebx

loc_4C2B09:				; CODE XREF: .text:004C2AC1j
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_4C2B15
		cmp	dword ptr [ebp+14h], 0
		jg	short loc_4C2B40

loc_4C2B15:				; CODE XREF: .text:004C2B0Dj
		mov	edx, ebx
		lea	ecx, [ebp-1820h]
		add	edx, edx
		push	$CTW0("??? ")	; "???"
		add	edx, ecx
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		xor	eax, eax
		mov	[ebp-30F0h], eax
		jmp	short loc_4C2BB6
; ---------------------------------------------------------------------------

loc_4C2B40:				; CODE XREF: .text:004C2B13j
		cmp	dword_5BDD50, 0
		jz	short loc_4C2B50
		mov	eax, 211h
		jmp	short loc_4C2B55
; ---------------------------------------------------------------------------

loc_4C2B50:				; CODE XREF: .text:004C2B47j
		mov	eax, 11h

loc_4C2B55:				; CODE XREF: .text:004C2B4Ej
		mov	edx, dword_5FC6E8
		test	edx, edx
		jnz	short loc_4C2B64
		or	eax, 0C4h

loc_4C2B64:				; CODE XREF: .text:004C2B5Dj
		push	0		; predict
		test	edx, edx
		jnz	short loc_4C2B6F
		mov	ecx, [ebp+8]
		jmp	short loc_4C2B71
; ---------------------------------------------------------------------------

loc_4C2B6F:				; CODE XREF: .text:004C2B68j
		xor	ecx, ecx

loc_4C2B71:				; CODE XREF: .text:004C2B6Dj
		push	ecx		; reg
		push	eax		; mode
		lea	eax, [ebp-3100h]
		push	eax		; da
		push	0		; dec
		mov	edx, [ebp+8]
		mov	eax, [edx+8]
		push	eax		; ip
		mov	edx, [ebp+14h]
		push	edx		; cmdsize
		mov	ecx, [ebp+10h]
		push	ecx		; cmd
		call	Disasm
		add	esp, 20h
		lea	eax, [ebp-1D34h]
		mov	edx, ebx
		lea	ecx, [ebp-1820h]
		push	eax		; src
		add	edx, edx
		add	edx, ecx
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4C2BB6:				; CODE XREF: .text:004C2B3Ej
		add	esi, 28h
		xor	eax, eax
		mov	[ebp-8], eax
		cmp	dword_5CBB84, 0
		jz	loc_4C2E43
		xor	edx, edx
		mov	[ebp-4], edx
		mov	ecx, [ebp+8]
		lea	eax, [ecx+198h]
		mov	[ebp-18h], eax
		jmp	loc_4C2E2B
; ---------------------------------------------------------------------------

loc_4C2BE1:				; CODE XREF: .text:004C2E37j
		mov	edx, [ebp-18h]
		cmp	dword ptr [edx], 0
		jz	loc_4C2E24
		cmp	dword ptr [ebp-8], 0
		jnz	loc_4C2E24
		test	byte ptr dword_5C8930+2, 2
		jz	short loc_4C2C0D
		mov	word ptr [ebp+ebx*2-1820h], 9
		inc	ebx
		jmp	short loc_4C2C39
; ---------------------------------------------------------------------------

loc_4C2C0D:				; CODE XREF: .text:004C2BFEj
		lea	eax, [ebp+ebx*2-1820h]
		cmp	esi, ebx
		jle	short loc_4C2C25

loc_4C2C18:				; CODE XREF: .text:004C2C23j
		mov	word ptr [eax],	20h
		inc	ebx
		add	eax, 2
		cmp	esi, ebx
		jg	short loc_4C2C18

loc_4C2C25:				; CODE XREF: .text:004C2C16j
		mov	dx, 20h
		cmp	esi, ebx
		jz	short loc_4C2C30
		add	edx, 1Bh

loc_4C2C30:				; CODE XREF: .text:004C2C2Bj
		mov	[ebp+ebx*2-1820h], dx
		inc	ebx

loc_4C2C39:				; CODE XREF: .text:004C2C0Bj
		cmp	dword ptr [ebp-8], 0
		jle	short loc_4C2C68
		push	offset asc_55D6DA ; ", "
		push	100h		; n
		mov	eax, [ebp-8]
		mov	ecx, ebx
		add	eax, eax
		add	ecx, ecx
		add	ecx, eax
		lea	edx, [ebp-1820h]
		add	ecx, edx
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-8], eax

loc_4C2C68:				; CODE XREF: .text:004C2C3Dj
		cmp	dword ptr [ebp-30F0h], 0
		jnz	short loc_4C2C78
		xor	ecx, ecx
		mov	[ebp-10h], ecx
		jmp	short loc_4C2CBD
; ---------------------------------------------------------------------------

loc_4C2C78:				; CODE XREF: .text:004C2C6Fj
		xor	edi, edi
		lea	eax, [ebp-30B4h]
		mov	[ebp-10h], eax
		mov	edx, [ebp-18h]
		lea	eax, [edx-4]

loc_4C2C89:				; CODE XREF: .text:004C2CB1j
		mov	edx, [ebp-10h]
		mov	ecx, [edx]
		and	ecx, 1000100h
		cmp	ecx, 1000100h
		jnz	short loc_4C2CA6
		mov	edx, [ebp-10h]
		mov	ecx, [edx+3Ch]
		cmp	ecx, [eax]
		jz	short loc_4C2CB3

loc_4C2CA6:				; CODE XREF: .text:004C2C9Aj
		inc	edi
		add	dword ptr [ebp-10h], 460h
		cmp	edi, 4
		jl	short loc_4C2C89

loc_4C2CB3:				; CODE XREF: .text:004C2CA4j
		cmp	edi, 4
		jl	short loc_4C2CBD
		xor	eax, eax
		mov	[ebp-10h], eax

loc_4C2CBD:				; CODE XREF: .text:004C2C76j
					; .text:004C2CB6j
		cmp	dword_5FC6E8, 0
		jnz	short loc_4C2D0C
		cmp	dword ptr [ebp-10h], 0
		jz	short loc_4C2D0C
		mov	eax, [ebp-10h]
		cmp	word ptr [eax+260h], 0
		jz	short loc_4C2D0C
		mov	edx, [ebp-10h]
		mov	ecx, ebx
		add	edx, 260h
		add	ecx, ecx
		push	edx		; src
		push	100h		; n
		mov	eax, [ebp-8]
		lea	edx, [ebp-1820h]
		add	eax, eax
		add	ecx, eax
		add	ecx, edx
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_4C2E24
; ---------------------------------------------------------------------------

loc_4C2D0C:				; CODE XREF: .text:004C2CC4j
					; .text:004C2CCAj ...
		mov	ecx, [ebp-18h]
		mov	edx, ebx
		add	edx, edx
		mov	eax, [ecx-4]
		push	eax
		push	offset a08x_5	; "[%08X]="
		mov	ecx, [ebp-8]
		lea	eax, [ebp-1820h]
		add	ecx, ecx
		add	edx, ecx
		add	edx, eax
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-8], eax
		mov	edx, [ebp-18h]
		mov	ecx, [edx]
		sub	ecx, 2
		jz	short loc_4C2D48
		sub	ecx, 2
		jz	short loc_4C2D79
		jmp	short loc_4C2DA6
; ---------------------------------------------------------------------------

loc_4C2D48:				; CODE XREF: .text:004C2D3Fj
		mov	eax, [ebp-18h]
		mov	ecx, ebx
		add	ecx, ecx
		movzx	edx, word ptr [eax+4]
		push	edx
		push	offset a04x_2	; "%04X"
		mov	eax, [ebp-8]
		lea	edx, [ebp-1820h]
		add	eax, eax
		add	ecx, eax
		add	ecx, edx
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	loc_4C2E24
; ---------------------------------------------------------------------------

loc_4C2D79:				; CODE XREF: .text:004C2D44j
		mov	ecx, [ebp-18h]
		mov	edx, ebx
		add	edx, edx
		mov	eax, [ecx+4]
		push	eax
		push	offset a08x_8	; "%08X"
		mov	ecx, [ebp-8]
		lea	eax, [ebp-1820h]
		add	ecx, ecx
		add	edx, ecx
		add	edx, eax
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-8], eax
		jmp	short loc_4C2E24
; ---------------------------------------------------------------------------

loc_4C2DA6:				; CODE XREF: .text:004C2D46j
		xor	edi, edi
		mov	eax, [ebp-18h]
		lea	edx, [eax+4]
		mov	[ebp-20h], edx
		mov	ecx, [ebp-18h]
		mov	eax, ecx
		mov	[ebp-1Ch], eax
		jmp	short loc_4C2E18
; ---------------------------------------------------------------------------

loc_4C2DBB:				; CODE XREF: .text:004C2E22j
		test	edi, edi
		jle	short loc_4C2DE8
		push	(offset	asc_55D6DA+2) ;	src
		push	100h		; n
		mov	ecx, [ebp-8]
		mov	edx, ebx
		add	ecx, ecx
		add	edx, edx
		add	edx, ecx
		lea	eax, [ebp-1820h]
		add	edx, eax
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-8], eax

loc_4C2DE8:				; CODE XREF: .text:004C2DBDj
		mov	edx, [ebp-20h]
		xor	ecx, ecx
		mov	eax, ebx
		add	eax, eax
		mov	cl, [edx]
		push	ecx
		push	offset a02x_3	; "%02X"
		mov	edx, [ebp-8]
		lea	ecx, [ebp-1820h]
		add	edx, edx
		add	eax, edx
		add	eax, ecx
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	[ebp-8], eax
		inc	edi
		inc	dword ptr [ebp-20h]

loc_4C2E18:				; CODE XREF: .text:004C2DB9j
		mov	eax, [ebp-1Ch]
		cmp	edi, [eax]
		jge	short loc_4C2E24
		cmp	edi, 10h
		jl	short loc_4C2DBB

loc_4C2E24:				; CODE XREF: .text:004C2BE7j
					; .text:004C2BF1j ...
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-18h], 18h

loc_4C2E2B:				; CODE XREF: .text:004C2BDCj
		cmp	dword ptr [ebp-4], 2
		jge	short loc_4C2E3D
		mov	edx, [ebp+8]
		test	byte ptr [edx],	40h
		jnz	loc_4C2BE1

loc_4C2E3D:				; CODE XREF: .text:004C2E2Fj
		add	ebx, [ebp-8]
		add	esi, 1Ch

loc_4C2E43:				; CODE XREF: .text:004C2BC5j
		cmp	dword_5FC6EC, 0
		jnz	loc_4C2FB1
		cmp	dword ptr [ebp+0Ch], 0
		jz	loc_4C30D7
		mov	ecx, [ebp+8]
		mov	edx, [ebp+0Ch]
		mov	eax, [ecx+4]
		cmp	eax, [edx+4]
		jnz	loc_4C30D7
		mov	dword ptr [ebp-0Ch], 1
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	dword ptr [ebp-14h], offset off_52FC84
		mov	eax, [ebp+0Ch]
		lea	edi, [eax+0Ch]
		mov	eax, [ebp+8]
		lea	edx, [eax+0Ch]
		mov	[ebp-18h], edx

loc_4C2E8E:				; CODE XREF: .text:004C2FA6j
		mov	ecx, [ebp-18h]
		mov	eax, [ecx]
		cmp	eax, [edi]
		jz	loc_4C2F94
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4C2F04
		test	byte ptr dword_5C8930+2, 2
		jz	short loc_4C2ED1
		mov	word ptr [ebp+ebx*2-1820h], 9
		inc	ebx
		cmp	dword_5CBB84, 0
		jz	short loc_4C2EFD
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4C2EFD
		mov	word ptr [ebp+ebx*2-1820h], 9
		inc	ebx
		jmp	short loc_4C2EFD
; ---------------------------------------------------------------------------

loc_4C2ED1:				; CODE XREF: .text:004C2EA8j
		lea	eax, [ebp+ebx*2-1820h]
		cmp	esi, ebx
		jle	short loc_4C2EE9

loc_4C2EDC:				; CODE XREF: .text:004C2EE7j
		mov	word ptr [eax],	20h
		inc	ebx
		add	eax, 2
		cmp	esi, ebx
		jg	short loc_4C2EDC

loc_4C2EE9:				; CODE XREF: .text:004C2EDAj
		mov	dx, 20h
		cmp	esi, ebx
		jz	short loc_4C2EF4
		add	edx, 1Bh

loc_4C2EF4:				; CODE XREF: .text:004C2EEFj
		mov	[ebp+ebx*2-1820h], dx
		inc	ebx

loc_4C2EFD:				; CODE XREF: .text:004C2EBCj
					; .text:004C2EC2j ...
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		jmp	short loc_4C2F2B
; ---------------------------------------------------------------------------

loc_4C2F04:				; CODE XREF: .text:004C2E9Fj
		mov	eax, 600h
		mov	edx, ebx
		sub	eax, ebx
		lea	ecx, [ebp-1820h]
		sub	eax, 0Ah
		add	edx, edx
		push	offset asc_55D6DA ; ", "
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4C2F2B:				; CODE XREF: .text:004C2F02j
		mov	eax, [ebp-14h]
		mov	ecx, 600h
		sub	ecx, ebx
		sub	ecx, 0Ah
		mov	edx, [eax]
		mov	eax, ebx
		push	edx		; src
		lea	edx, [ebp-1820h]
		add	eax, eax
		add	eax, edx
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	ecx, 600h
		mov	eax, ebx
		sub	ecx, ebx
		lea	edx, [ebp-1820h]
		sub	ecx, 0Ah
		add	eax, eax
		push	(offset	a08x_5+0Ch) ; src
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	ebx, eax
		add	esp, 0Ch
		mov	eax, ebx
		mov	ecx, [edi]
		lea	edx, [ebp-1820h]
		add	eax, eax
		add	eax, edx
		push	ecx		; u
		push	eax		; s
		call	Hexprint8W
		add	esp, 8
		add	ebx, eax

loc_4C2F94:				; CODE XREF: .text:004C2E95j
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-14h], 4
		add	edi, 4
		add	dword ptr [ebp-18h], 4
		cmp	dword ptr [ebp-4], 8
		jl	loc_4C2E8E
		jmp	loc_4C30D7
; ---------------------------------------------------------------------------

loc_4C2FB1:				; CODE XREF: .text:004C2E4Aj
		mov	dword ptr [ebp-0Ch], 1
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	eax, [ebp+8]
		mov	dword ptr [ebp-14h], offset off_52FC84
		lea	edi, [eax+0Ch]

loc_4C2FCA:				; CODE XREF: .text:004C30D1j
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4C3033
		test	byte ptr dword_5C8930+2, 2
		jz	short loc_4C3000
		mov	word ptr [ebp+ebx*2-1820h], 9
		inc	ebx
		cmp	dword_5CBB84, 0
		jz	short loc_4C302C
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4C302C
		mov	word ptr [ebp+ebx*2-1820h], 9
		inc	ebx
		jmp	short loc_4C302C
; ---------------------------------------------------------------------------

loc_4C3000:				; CODE XREF: .text:004C2FD7j
		lea	eax, [ebp+ebx*2-1820h]
		cmp	esi, ebx
		jle	short loc_4C3018

loc_4C300B:				; CODE XREF: .text:004C3016j
		mov	word ptr [eax],	20h
		inc	ebx
		add	eax, 2
		cmp	esi, ebx
		jg	short loc_4C300B

loc_4C3018:				; CODE XREF: .text:004C3009j
		mov	dx, 20h
		cmp	esi, ebx
		jz	short loc_4C3023
		add	edx, 1Bh

loc_4C3023:				; CODE XREF: .text:004C301Ej
		mov	[ebp+ebx*2-1820h], dx
		inc	ebx

loc_4C302C:				; CODE XREF: .text:004C2FEBj
					; .text:004C2FF1j ...
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		jmp	short loc_4C305A
; ---------------------------------------------------------------------------

loc_4C3033:				; CODE XREF: .text:004C2FCEj
		mov	eax, 0C00h
		mov	edx, ebx
		sub	eax, ebx
		lea	ecx, [ebp-1820h]
		sub	eax, 0Ah
		add	edx, edx
		push	offset asc_55D6DA ; ", "
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_4C305A:				; CODE XREF: .text:004C3031j
		mov	eax, [ebp-14h]
		mov	ecx, 0C00h
		sub	ecx, ebx
		sub	ecx, 0Ah
		mov	edx, [eax]
		mov	eax, ebx
		push	edx		; src
		lea	edx, [ebp-1820h]
		add	eax, eax
		add	eax, edx
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax
		mov	ecx, 0C00h
		mov	eax, ebx
		sub	ecx, ebx
		lea	edx, [ebp-1820h]
		sub	ecx, 0Ah
		add	eax, eax
		push	(offset	a08x_5+0Ch) ; src
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	ebx, eax
		add	esp, 0Ch
		mov	eax, ebx
		mov	ecx, [edi]
		lea	edx, [ebp-1820h]
		add	eax, eax
		add	eax, edx
		push	ecx		; u
		push	eax		; s
		call	Hexprint8W
		add	esp, 8
		add	ebx, eax
		inc	dword ptr [ebp-4]
		add	edi, 4
		add	dword ptr [ebp-14h], 4
		cmp	dword ptr [ebp-4], 8
		jl	loc_4C2FCA

loc_4C30D7:				; CODE XREF: .text:004C2E54j
					; .text:004C2E66j ...
		mov	word ptr [ebp+ebx*2-1820h], 0Ah
		lea	ecx, [ebp-0C20h]
		push	0C00h		; nt
		push	ecx		; t
		inc	ebx
		push	ebx		; nw
		lea	eax, [ebp-1820h]
		push	eax		; w
		call	Unicodetoutf
		add	esp, 10h
		mov	ebx, eax
		mov	edx, tracefile
		push	edx		; stream
		push	ebx		; n
		push	1		; size
		lea	ecx, [ebp-0C20h]
		push	ecx		; ptr
		call	_fwrite
		add	esp, 10h

loc_4C3119:				; CODE XREF: .text:004C29B6j
					; .text:004C29C0j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4C3120:				; CODE XREF: .text:004C3C90p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, offset dword_5FC288
		push	esi
		mov	edx, [ebx]
		mov	ecx, [ebp+8]
		test	edx, edx
		jz	short loc_4C317A
		mov	eax, dword_5FC6CC
		cmp	eax, dword_5FC6D0
		jz	short loc_4C317A
		test	ecx, ecx
		jz	short loc_4C317A
		mov	eax, dword_5FC6D0
		mov	esi, eax
		shl	esi, 2
		lea	esi, [esi+esi*2]
		add	esi, edx
		mov	edx, esi
		jmp	short loc_4C3172
; ---------------------------------------------------------------------------

loc_4C3157:				; CODE XREF: .text:004C3178j
		mov	esi, [edx]
		shr	esi, 15h
		mov	byte ptr [ecx+esi], 1
		inc	eax
		cmp	eax, dword_5FC6C4
		jge	short loc_4C316E
		add	edx, 0Ch
		jmp	short loc_4C3172
; ---------------------------------------------------------------------------

loc_4C316E:				; CODE XREF: .text:004C3167j
		xor	eax, eax
		mov	edx, [ebx]

loc_4C3172:				; CODE XREF: .text:004C3155j
					; .text:004C316Cj
		cmp	eax, dword_5FC6CC
		jnz	short loc_4C3157

loc_4C317A:				; CODE XREF: .text:004C3131j
					; .text:004C313Ej ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4C3180:				; CODE XREF: .text:004C3415p
					; .text:004C3469p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ecx, offset aUnableToAllo_2 ; "Unable to allocate memory for run trace"...
		mov	eax, [ebp+8]
		mov	edx, [ebp+0Ch]
		test	eax, eax
		jnz	short loc_4C31AD
		lea	ebx, [ecx+0D2h]
		mov	stru_5FC458.bar._name+14h, ebx
		lea	ebx, [ecx+10Ah]
		mov	stru_5FC458.bar.expl+14h, ebx
		jmp	short loc_4C31C5
; ---------------------------------------------------------------------------

loc_4C31AD:				; CODE XREF: .text:004C3191j
		lea	ebx, [ecx+168h]
		mov	stru_5FC458.bar._name+14h, ebx
		lea	ebx, [ecx+10Ah]
		mov	stru_5FC458.bar.expl+14h, ebx

loc_4C31C5:				; CODE XREF: .text:004C31ABj
		mov	dword_5FC6E8, eax
		test	edx, edx
		jnz	short loc_4C31E7
		lea	eax, [ecx+198h]
		mov	stru_5FC458.bar._name+18h, eax
		add	ecx, 1D4h
		mov	stru_5FC458.bar.expl+18h, ecx
		jmp	short loc_4C31FE
; ---------------------------------------------------------------------------

loc_4C31E7:				; CODE XREF: .text:004C31CCj
		lea	eax, [ecx+228h]
		add	ecx, 274h
		mov	stru_5FC458.bar._name+18h, eax
		mov	stru_5FC458.bar.expl+18h, ecx

loc_4C31FE:				; CODE XREF: .text:004C31E5j
		mov	dword_5FC6EC, edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4C3208:				; DATA XREF: .data:stru_55D35Co
		push	ebp
		mov	ebp, esp
		cmp	dword_5FC288, 0
		jz	short loc_4C322A
		mov	eax, dword_5FC6CC
		cmp	eax, dword_5FC6D0
		jz	short loc_4C322A
		cmp	stru_5FC458.sorted.selected, 0
		jge	short loc_4C3234

loc_4C322A:				; CODE XREF: .text:004C3212j
					; .text:004C321Fj
		xor	edx, edx
		mov	dword_5FC8B4, edx
		jmp	short loc_4C3261
; ---------------------------------------------------------------------------

loc_4C3234:				; CODE XREF: .text:004C3228j
		push	0		; cmd
		push	offset stru_5FC6F0 ; preg
		mov	ecx, stru_5FC458.sorted.selected
		push	ecx		; nback
		call	Getruntrace
		add	esp, 0Ch
		test	eax, eax
		jge	short loc_4C3257
		xor	eax, eax
		mov	dword_5FC8B4, eax
		jmp	short loc_4C3261
; ---------------------------------------------------------------------------

loc_4C3257:				; CODE XREF: .text:004C324Cj
		mov	dword_5FC8B4, 1

loc_4C3261:				; CODE XREF: .text:004C3232j
					; .text:004C3255j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------
