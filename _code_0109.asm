.code

; int __cdecl loc_4DBBBC(HWND hDlg)
loc_4DBBBC:				; CODE XREF: .text:004DC3F6p
					; .text:004DC5ADp ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset stru_619CA4
		mov	ebx, [ebp+8]
		mov	esi, [edi+68h]
		test	esi, esi
		jl	short loc_4DBBD6
		cmp	esi, [edi+44h]
		jl	short loc_4DBBDA

loc_4DBBD6:				; CODE XREF: .text:004DBBCFj
		xor	eax, eax
		jmp	short loc_4DBBDF
; ---------------------------------------------------------------------------

loc_4DBBDA:				; CODE XREF: .text:004DBBD4j
		mov	eax, 1

loc_4DBBDF:				; CODE XREF: .text:004DBBD8j
		push	eax		; bEnable
		push	0C85h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		cmp	dword ptr [edi+44h], 0
		setnle	dl
		and	edx, 1
		push	edx		; bEnable
		push	0C86h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		cmp	dword ptr [edi+44h], 0
		setnle	cl
		and	ecx, 1
		push	ecx		; bEnable
		push	0C87h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		cmp	dword ptr [edi+44h], 0
		setnle	al
		and	eax, 1
		push	eax		; bEnable
		push	0C88h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		cmp	dword ptr [edi+44h], 0
		setnle	dl
		and	edx, 1
		push	edx		; bEnable
		push	0C89h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	EnableWindow
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4DBC68(HWND hDlg, int, wchar_t *format, char arglist)
loc_4DBC68:				; CODE XREF: .text:004DC54Bp
					; .text:004DC571p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBF8h
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4DBCC5
		cmp	dword ptr [ebp+10h], 0
		lea	eax, [ebp+14h]
		jz	short loc_4DBC8B
		mov	edx, [ebp+10h]
		cmp	word ptr [edx],	0
		jnz	short loc_4DBC96

loc_4DBC8B:				; CODE XREF: .text:004DBC80j
		mov	word ptr [ebp-408h], 0
		jmp	short loc_4DBCAA
; ---------------------------------------------------------------------------

loc_4DBC96:				; CODE XREF: .text:004DBC89j
		push	eax		; arglist
		mov	ecx, [ebp+10h]
		push	ecx		; format
		lea	eax, [ebp-408h]
		push	eax		; buffer
		call	_vswprintf
		add	esp, 0Ch

loc_4DBCAA:				; CODE XREF: .text:004DBC94j
		mov	edx, [ebp+0Ch]
		mov	dword_61A7A4, edx
		lea	ecx, [ebp-408h]
		push	ecx		; lpString
		push	0C82h		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW

loc_4DBCC5:				; CODE XREF: .text:004DBC77j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4DBCCC:				; CODE XREF: .text:004107B5p
					; .text:loc_4DBD7Dp ...
		push	ebp
		mov	ebp, esp
		push	offset stru_5BE1AC ; sd
		call	Destroysorteddata
		pop	ecx
		push	0		; type3
		push	0		; type2
		push	4Bh		; type1
		push	0FFFFFFFFh	; addr1
		push	0F0000000h	; addr0
		call	Deletedatarange
		add	esp, 14h
		push	offset byte_619F1C ; s
		call	loc_43B05C
		pop	ecx
		xor	eax, eax
		mov	dword_619F18, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; SORTFUNC loc_4DBD04
loc_4DBD04:				; DATA XREF: .text:004DBD8Eo
					; .text:004DC944o ...
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		mov	ebx, [edx+4]
		mov	ecx, [eax+4]
		cmp	ebx, ecx
		jbe	short loc_4DBD1E
		or	eax, 0FFFFFFFFh
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DBD1E:				; CODE XREF: .text:004DBD16j
		cmp	ebx, ecx
		jnb	short loc_4DBD2A
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DBD2A:				; CODE XREF: .text:004DBD20j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __cdecl loc_4DBD30(wchar_t *path,	int, int)
loc_4DBD30:				; CODE XREF: .text:004653CEp
					; .text:004DC514p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF374h
		push	ebx
		push	esi
		push	edi
		push	offset aImageLibraryFi ; "Image	library	file v2.01"
		mov	eax, [ebp+8]
		push	eax		; _name
		lea	edx, [ebp-638h]
		push	edx		; tf
		call	Opentaggedfile
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4DBD7D
		push	offset aNotAStandardFu ; "Not a	standard function library"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+10h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		or	eax, 0FFFFFFFFh
		jmp	loc_4DC2D2
; ---------------------------------------------------------------------------

loc_4DBD7D:				; CODE XREF: .text:004DBD56j
		call	loc_4DBCCC
		xor	edx, edx
		mov	n, edx
		push	0		; mode
		push	0		; destfunc
		push	offset loc_4DBD04 ; sortfunc
		push	100h		; nexp
		push	38h		; itemsize
		push	offset stru_5BE1AC ; sd
		call	Createsorteddata
		add	esp, 18h
		push	0FFFFFFFFh	; addr1
		push	0		; addr0
		push	offset stru_619CA4.sorted ; sd
		call	Deletesorteddatarange
		add	esp, 0Ch
		xor	edi, edi

loc_4DBDBA:				; CODE XREF: .text:004DBE13j
					; .text:004DBE20j ...
		lea	eax, [ebp-10h]
		push	eax		; size
		lea	edx, [ebp-0Ch]
		push	edx		; tag
		lea	ecx, [ebp-638h]
		push	ecx		; tf
		call	Gettaggedrecordsize
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4DBDDF
		mov	edi, 1
		jmp	loc_4DC255
; ---------------------------------------------------------------------------

loc_4DBDDF:				; CODE XREF: .text:004DBDD3j
		cmp	dword ptr [ebp-0Ch], 646E450Ah
		jz	loc_4DC255
		mov	eax, [ebp-0Ch]
		sub	eax, 0A676D49h
		jz	loc_4DBF99
		sub	eax, 6F906h
		jz	short loc_4DBE54
		sub	eax, 104h
		jz	short loc_4DBE15
		sub	eax, 69F2DCB7h
		jz	loc_4DC1ED
		jmp	short loc_4DBDBA
; ---------------------------------------------------------------------------

loc_4DBE15:				; CODE XREF: .text:004DBE06j
		cmp	dword ptr [ebp-10h], 20h
		jbe	short loc_4DBE22
		mov	edi, 1
		jmp	short loc_4DBDBA
; ---------------------------------------------------------------------------

loc_4DBE22:				; CODE XREF: .text:004DBE19j
		push	20h		; bufsize
		push	offset byte_5BE1F0 ; buf
		lea	eax, [ebp-638h]
		push	eax		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-10h]
		jz	short loc_4DBE47
		mov	edi, 1
		jmp	loc_4DBDBA
; ---------------------------------------------------------------------------

loc_4DBE47:				; CODE XREF: .text:004DBE3Bj
		mov	eax, [ebp-10h]
		mov	n, eax
		jmp	loc_4DBDBA
; ---------------------------------------------------------------------------

loc_4DBE54:				; CODE XREF: .text:004DBDFFj
		cmp	dword ptr [ebp-10h], 208h
		jbe	short loc_4DBE67
		mov	edi, 1
		jmp	loc_4DBDBA
; ---------------------------------------------------------------------------

loc_4DBE67:				; CODE XREF: .text:004DBE5Bj
		push	208h		; bufsize
		lea	eax, [ebp-224h]
		push	eax		; buf
		lea	edx, [ebp-638h]
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-10h]
		jz	short loc_4DBE91
		mov	edi, 1
		jmp	loc_4DBDBA
; ---------------------------------------------------------------------------

loc_4DBE91:				; CODE XREF: .text:004DBE85j
		push	61Ch		; n
		push	0		; c
		lea	eax, [ebp-0C54h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		push	104h		; nw
		lea	edx, [ebp-0C48h]
		push	edx		; w
		mov	ecx, [ebp-10h]
		push	ecx		; nt
		lea	eax, [ebp-224h]
		push	eax		; t
		call	Utftounicode
		add	esp, 10h
		xor	ebx, ebx
		jmp	short loc_4DBEF4
; ---------------------------------------------------------------------------

loc_4DBECA:				; CODE XREF: .text:004DBEFAj
		push	ebx		; index
		push	offset stru_619CA4.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4DBEF3
		lea	edx, [ebp-0C48h]
		push	edx		; s2
		add	eax, 0Ch
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4DBEFC

loc_4DBEF3:				; CODE XREF: .text:004DBEDAj
		inc	ebx

loc_4DBEF4:				; CODE XREF: .text:004DBEC8j
		cmp	ebx, stru_619CA4.sorted.n
		jl	short loc_4DBECA

loc_4DBEFC:				; CODE XREF: .text:004DBEF1j
		cmp	ebx, stru_619CA4.sorted.n
		jl	loc_4DBDBA
		push	0		; dst
		lea	ecx, [ebp-624h]
		push	ecx		; void *
		lea	eax, [ebp-424h]
		push	eax		; void *
		push	0		; dest
		push	0		; int
		lea	edx, [ebp-0C48h]
		push	edx		; s
		call	_wFnsplit
		add	esp, 18h
		lea	ecx, [ebp-624h]
		lea	eax, [ebp-424h]
		lea	edx, [ebp-0A40h]
		push	0		; a6
		push	ecx		; ext
		push	eax		; _name
		push	0		; dir
		push	0		; drive
		push	edx		; path
		call	_wFnmerge
		mov	ecx, stru_619CA4.sorted.n
		add	esp, 18h
		mov	[ebp-0C54h], ecx
		lea	eax, [ebp-0C54h]
		mov	dword ptr [ebp-0C50h], 1
		mov	dword ptr [ebp-0C4Ch], 100h
		push	eax		; item
		push	offset stru_619CA4.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		mov	dword_619F10, 1
		xor	edx, edx
		mov	dword_619F14, edx
		jmp	loc_4DBDBA
; ---------------------------------------------------------------------------

loc_4DBF99:				; CODE XREF: .text:004DBDF4j
		cmp	dword ptr [ebp+0Ch], 0
		jnz	loc_4DBDBA
		cmp	dword ptr [ebp-10h], 20h
		jnb	short loc_4DBFB3
		mov	edi, 1
		jmp	loc_4DBDBA
; ---------------------------------------------------------------------------

loc_4DBFB3:				; CODE XREF: .text:004DBFA7j
		mov	eax, [ebp-10h]
		push	eax		; dwBytes
		call	loc_4041A0
		pop	ecx
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4DBFD0
		mov	edi, 1
		jmp	loc_4DBDBA
; ---------------------------------------------------------------------------

loc_4DBFD0:				; CODE XREF: .text:004DBFC4j
		mov	eax, [ebp-10h]
		push	eax		; bufsize
		mov	edx, [ebp-18h]
		push	edx		; buf
		lea	ecx, [ebp-638h]
		push	ecx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-10h]
		jz	short loc_4DBFF6
		mov	edi, 1
		jmp	loc_4DBDBA
; ---------------------------------------------------------------------------

loc_4DBFF6:				; CODE XREF: .text:004DBFEAj
		mov	esi, [ebp-18h]
		mov	eax, [esi]
		mov	edx, [esi+10h]
		mov	ecx, [esi+14h]
		add	eax, [esi+4]
		shl	edx, 3
		add	eax, edx
		lea	ecx, [ecx+ecx*8]
		add	eax, ecx
		add	eax, 20h
		cmp	eax, [ebp-10h]
		jz	short loc_4DC020
		mov	edi, 1
		jmp	loc_4DBDBA
; ---------------------------------------------------------------------------

loc_4DC020:				; CODE XREF: .text:004DC014j
		push	38h		; n
		push	0		; c
		lea	eax, [ebp-0C8Ch]
		push	eax		; s
		call	_memset
		mov	edx, dword_619F18
		add	esp, 0Ch
		mov	[ebp-0C8Ch], edx
		xor	eax, eax
		mov	ebx, [esi]
		mov	[ebp-0C88h], ebx
		mov	[ebp-0C84h], eax
		mov	edx, [esi+8]
		mov	[ebp-0C80h], edx
		push	ebx
		push	offset byte_619F1C
		call	loc_43AFE0
		add	esp, 8
		mov	[ebp-0C7Ch], eax
		mov	ecx, [esi]
		push	ecx
		push	offset byte_619F1C
		call	loc_43AFE0
		add	esp, 8
		mov	[ebp-0C78h], eax
		mov	eax, [ebp-0C7Ch]
		test	eax, eax
		jz	short loc_4DC095
		cmp	dword ptr [ebp-0C78h], 0
		jnz	short loc_4DC09F

loc_4DC095:				; CODE XREF: .text:004DC08Aj
		mov	edi, 2
		jmp	loc_4DBDBA
; ---------------------------------------------------------------------------

loc_4DC09F:				; CODE XREF: .text:004DC093j
		mov	dword ptr [ebp-14h], 20h
		mov	edx, [esi]
		push	edx		; n
		mov	ecx, [ebp-18h]
		add	ecx, [ebp-14h]
		push	ecx		; src
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [esi]
		add	[ebp-14h], eax
		xor	eax, eax
		mov	[ebp-8], eax
		mov	[ebp-4], eax
		mov	edx, [ebp-18h]
		mov	ecx, [ebp-14h]
		lea	eax, [edx+ecx]
		mov	[ebp-1Ch], eax
		jmp	short loc_4DC11E
; ---------------------------------------------------------------------------

loc_4DC0D4:				; CODE XREF: .text:004DC124j
		mov	edx, [ebp-1Ch]
		xor	ebx, ebx
		mov	bl, [edx]
		inc	dword ptr [ebp-14h]
		inc	dword ptr [ebp-1Ch]
		mov	eax, 0FFh
		test	bl, 80h
		jnz	short loc_4DC0F0
		add	eax, 0FFFFFF01h

loc_4DC0F0:				; CODE XREF: .text:004DC0E9j
		and	ebx, 7Fh
		inc	ebx
		mov	edx, [ebp-8]
		add	edx, ebx
		cmp	edx, [esi]
		jbe	short loc_4DC104
		mov	edi, 1
		jmp	short loc_4DC126
; ---------------------------------------------------------------------------

loc_4DC104:				; CODE XREF: .text:004DC0FBj
		push	ebx		; n
		push	eax		; c
		mov	eax, [ebp-0C78h]
		add	eax, [ebp-8]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		add	[ebp-8], ebx
		inc	dword ptr [ebp-4]

loc_4DC11E:				; CODE XREF: .text:004DC0D2j
		mov	edx, [ebp-4]
		cmp	edx, [esi+4]
		jb	short loc_4DC0D4

loc_4DC126:				; CODE XREF: .text:004DC102j
		cmp	dword ptr [esi+10h], 0
		jle	short loc_4DC17C
		mov	ecx, [esi+10h]
		shl	ecx, 3
		push	ecx
		push	offset byte_619F1C
		call	loc_43AFE0
		add	esp, 8
		mov	ebx, eax
		mov	[ebp-0C74h], ebx
		test	ebx, ebx
		jnz	short loc_4DC156
		mov	edi, 2
		jmp	loc_4DBDBA
; ---------------------------------------------------------------------------

loc_4DC156:				; CODE XREF: .text:004DC14Aj
		mov	eax, [esi+10h]
		shl	eax, 3
		push	eax		; n
		mov	edx, [ebp-18h]
		add	edx, [ebp-14h]
		push	edx		; src
		push	ebx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [esi+10h]
		mov	[ebp-0C70h], eax
		shl	eax, 3
		add	[ebp-14h], eax

loc_4DC17C:				; CODE XREF: .text:004DC12Aj
		cmp	dword ptr [esi+14h], 0
		jle	short loc_4DC1CC
		mov	edx, [esi+14h]
		lea	edx, [edx+edx*8]
		push	edx
		push	offset byte_619F1C
		call	loc_43AFE0
		add	esp, 8
		mov	ebx, eax
		mov	[ebp-0C6Ch], ebx
		test	ebx, ebx
		jnz	short loc_4DC1AC
		mov	edi, 2
		jmp	loc_4DBDBA
; ---------------------------------------------------------------------------

loc_4DC1AC:				; CODE XREF: .text:004DC1A0j
		mov	eax, [esi+14h]
		lea	eax, [eax+eax*8]
		push	eax		; n
		mov	edx, [ebp-18h]
		add	edx, [ebp-14h]
		push	edx		; src
		push	ebx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [esi+14h]
		mov	[ebp-0C68h], eax

loc_4DC1CC:				; CODE XREF: .text:004DC180j
		lea	edx, [ebp-0C8Ch]
		push	edx		; item
		push	offset stru_5BE1AC ; sd
		call	Addsorteddata
		add	esp, 8
		mov	ecx, [esi]
		add	dword_619F18, ecx
		jmp	loc_4DBDBA
; ---------------------------------------------------------------------------

loc_4DC1ED:				; CODE XREF: .text:004DBE0Dj
		cmp	dword ptr [ebp+0Ch], 0
		jnz	loc_4DBDBA
		push	208h		; bufsize
		lea	eax, [ebp-224h]
		push	eax		; buf
		lea	edx, [ebp-638h]
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 5
		ja	short loc_4DC225
		mov	edi, 1
		jmp	loc_4DBDBA
; ---------------------------------------------------------------------------

loc_4DC225:				; CODE XREF: .text:004DC219j
		mov	eax, [ebp-14h]
		lea	edx, [ebp-21Fh]
		sub	eax, 5
		xor	ecx, ecx
		push	eax		; datasize
		push	edx		; data
		mov	cl, [ebp-220h]
		push	ecx		; type
		mov	eax, [ebp-224h]
		add	eax, 0F0000000h
		push	eax		; _addr
		call	Quickinsertdata
		add	esp, 10h
		jmp	loc_4DBDBA
; ---------------------------------------------------------------------------

loc_4DC255:				; CODE XREF: .text:004DBDDAj
					; .text:004DBDE6j
		lea	edx, [ebp-638h]
		push	edx		; tf
		call	Closetaggedfile
		pop	ecx
		test	edi, edi
		jz	short loc_4DC2CB
		cmp	edi, 1
		jnz	short loc_4DC28A
		push	offset aUnreadableOrCo ; "Unreadable or	corrupted library"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	ecx, [ebp+10h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DC2CB
; ---------------------------------------------------------------------------

loc_4DC28A:				; CODE XREF: .text:004DC269j
		cmp	edi, 2
		jnz	short loc_4DC2AE
		push	offset aLowMemory_4 ; "Low memory"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	eax, [ebp+10h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DC2CB
; ---------------------------------------------------------------------------

loc_4DC2AE:				; CODE XREF: .text:004DC28Dj
		push	offset aUnableToReadLi ; "Unable to read library"
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		mov	edx, [ebp+10h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4DC2CB:				; CODE XREF: .text:004DC264j
					; .text:004DC288j ...
		xor	eax, eax
		test	edi, edi
		jz	short loc_4DC2D2
		dec	eax

loc_4DC2D2:				; CODE XREF: .text:004DBD78j
					; .text:004DC2CFj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4DC2DC(wchar_t *path,	void *ptr)
loc_4DC2DC:				; CODE XREF: .text:0046ED9Bp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE4h
		push	ebx
		push	offset aImageLibraryFi ; "Image	library	file v2.01"
		mov	eax, [ebp+8]
		push	eax		; _name
		lea	edx, [ebp-1Ch]
		push	edx		; tf
		call	Opentaggedfile
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4DC301
		or	eax, 0FFFFFFFFh
		jmp	short loc_4DC356
; ---------------------------------------------------------------------------

loc_4DC301:				; CODE XREF: .text:004DC2FAj
		lea	edx, [ebp-8]
		push	edx		; size
		lea	ecx, [ebp-4]
		push	ecx		; tag
		lea	eax, [ebp-1Ch]
		push	eax		; tf
		call	Gettaggedrecordsize
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4DC31E
		or	ebx, 0FFFFFFFFh
		jmp	short loc_4DC34A
; ---------------------------------------------------------------------------

loc_4DC31E:				; CODE XREF: .text:004DC317j
		cmp	dword ptr [ebp-4], 0A6E6753h
		jz	short loc_4DC32B
		xor	ebx, ebx
		jmp	short loc_4DC34A
; ---------------------------------------------------------------------------

loc_4DC32B:				; CODE XREF: .text:004DC325j
		push	20h		; bufsize
		mov	eax, [ebp+0Ch]
		push	eax		; buf
		lea	edx, [ebp-1Ch]
		push	edx		; tf
		call	Gettaggedfiledata
		add	esp, 0Ch
		cmp	eax, [ebp-8]
		jz	short loc_4DC347
		or	ebx, 0FFFFFFFFh
		jmp	short loc_4DC34A
; ---------------------------------------------------------------------------

loc_4DC347:				; CODE XREF: .text:004DC340j
		mov	ebx, [ebp-8]

loc_4DC34A:				; CODE XREF: .text:004DC31Cj
					; .text:004DC329j ...
		lea	eax, [ebp-1Ch]
		push	eax		; tf
		call	Closetaggedfile
		pop	ecx
		mov	eax, ebx

loc_4DC356:				; CODE XREF: .text:004DC2FFj
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; INT_PTR __stdcall loc_4DC35C(HWND, UINT, WPARAM, LPARAM)
loc_4DC35C:				; DATA XREF: .text:004DCE3Bo
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 5

loc_4DC365:				; CODE XREF: .text:004DC36Dj
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_4DC365
		mov	eax, [ebp-4]
		add	esp, 0FFFFF960h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	eax, [ebp+0Ch]
		cmp	eax, 112h
		jg	short loc_4DC39E
		jz	loc_4DCC1D
		sub	eax, 110h
		jz	short loc_4DC3B1
		dec	eax
		jz	loc_4DC46A
		jmp	loc_4DCC3C	; jumptable 004DC484 default case
; ---------------------------------------------------------------------------

loc_4DC39E:				; CODE XREF: .text:004DC383j
		sub	eax, 133h
		jz	short loc_4DC419
		sub	eax, 0D7h
		jz	short loc_4DC401
		jmp	loc_4DCC3C	; jumptable 004DC484 default case
; ---------------------------------------------------------------------------

loc_4DC3B1:				; CODE XREF: .text:004DC390j
		push	offset stru_61A728 ; pdlg
		mov	edx, [ebp+8]
		push	edx		; hw
		call	Preparedialog
		add	esp, 8
		lea	ecx, [ebp-5454h]
		push	ecx		; lpRect
		push	0C81h		; nIDDlgItem
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	Getcontrolpos
		add	esp, 0Ch
		lea	edx, [ebp-5454h]
		push	edx		; rpos
		push	offset stru_619CA4 ; pt
		mov	ecx, [ebp+8]
		push	ecx		; hparent
		call	Createottablewindow
		add	esp, 0Ch
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	loc_4DBBBC
		pop	ecx
		jmp	loc_4DCC3C	; jumptable 004DC484 default case
; ---------------------------------------------------------------------------

loc_4DC401:				; CODE XREF: .text:004DC3AAj
		mov	edx, [ebp+10h]
		push	edx		; wp
		mov	ecx, stru_619CA4.hw
		push	ecx		; hw
		call	Processwmmousewheel
		add	esp, 8
		jmp	loc_4DCC3C	; jumptable 004DC484 default case
; ---------------------------------------------------------------------------

loc_4DC419:				; CODE XREF: .text:004DC3A3j
		mov	eax, [ebp+14h]
		push	eax		; hWnd
		call	GetDlgCtrlID
		cmp	eax, 0C82h
		jz	short loc_4DC430
		xor	eax, eax
		jmp	loc_4DCC3E
; ---------------------------------------------------------------------------

loc_4DC430:				; CODE XREF: .text:004DC427j
		cmp	dword_61A7A4, 0
		jnz	short loc_4DC440
		xor	eax, eax
		jmp	loc_4DCC3E
; ---------------------------------------------------------------------------

loc_4DC440:				; CODE XREF: .text:004DC437j
		mov	edx, color+30h
		push	edx		; COLORREF
		mov	ebx, [ebp+10h]
		push	ebx		; HDC
		call	SetTextColor
		push	0Fh		; nIndex
		call	GetSysColor
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	0Fh		; nIndex
		call	GetSysColorBrush
		jmp	loc_4DCC3E
; ---------------------------------------------------------------------------

loc_4DC46A:				; CODE XREF: .text:004DC393j
		mov	ax, [ebp+10h]
		and	ax, 0FFFFh
		movzx	edx, ax
		add	edx, 0FFFFF37Dh	; switch 8 cases
		cmp	edx, 7
		ja	loc_4DCC3C	; jumptable 004DC484 default case
		jmp	ds:off_4DC48B[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4DC48B	dd offset loc_4DC4AB	; DATA XREF: .text:004DC484r
		dd offset loc_4DC5B8	; jump table for switch	statement
		dd offset loc_4DC85C
		dd offset loc_4DC8DC
		dd offset loc_4DC927
		dd offset loc_4DC9D7
		dd offset loc_4DCA9C
		dd offset loc_4DCC0D
; ---------------------------------------------------------------------------

loc_4DC4AB:				; CODE XREF: .text:004DC484j
					; DATA XREF: .text:off_4DC48Bo
		push	offset word_5BDFA4 ; jumptable 004DC484	case 3203
		push	104h		; n
		lea	ecx, [ebp-4220h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, [ebp-4220h]
		push	0		; mode
		mov	eax, [ebp+8]
		push	eax		; hwnd
		push	offset a_udl_0	; "*.udl"
		push	0		; currdir
		push	0		; args
		push	edx		; _name
		push	offset aSelectNameOfIm ; "Select _name of image library file"
		call	_T
		pop	ecx
		push	eax		; _title
		call	Browsefilename
		add	esp, 1Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jz	loc_4DCC3C	; jumptable 004DC484 default case
		mov	ecx, stru_619CA4.sorted.n
		lea	eax, [ebp-4620h]
		mov	[ebp-4], ecx
		push	eax		; int
		lea	edx, [ebp-4220h]
		push	1		; int
		push	edx		; path
		call	loc_4DBD30
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4DC564
		lea	ecx, [ebp-4220h]
		push	ecx		; src
		push	104h		; n
		push	offset word_5BDFA4 ; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset aLibraryLoaded ;	"Library loaded"
		call	_T
		pop	ecx
		push	eax		; format
		push	0		; int
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	loc_4DBC68
		add	esp, 0Ch
		xor	edx, edx
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4DC55C
		inc	edx

loc_4DC55C:				; CODE XREF: .text:004DC559j
		mov	dword_619F10, edx
		jmp	short loc_4DC579
; ---------------------------------------------------------------------------

loc_4DC564:				; CODE XREF: .text:004DC51Ej
		lea	ecx, [ebp-4620h]
		push	ecx		; format
		push	1		; int
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	loc_4DBC68
		add	esp, 0Ch

loc_4DC579:				; CODE XREF: .text:004DC562j
		cmp	stru_619CA4.sorted.n, 0
		jle	short loc_4DC59A
		cmp	stru_619CA4.sorted.selected, 0
		jge	short loc_4DC59A
		push	0		; selected
		push	offset stru_619CA4 ; pt
		call	Settableselection
		add	esp, 8

loc_4DC59A:				; CODE XREF: .text:004DC580j
					; .text:004DC589j
		push	0		; force
		push	offset stru_619CA4 ; pt
		call	Updatetable
		add	esp, 8
		mov	edx, [ebp+8]
		push	edx		; hDlg
		call	loc_4DBBBC
		pop	ecx
		jmp	loc_4DCC3C	; jumptable 004DC484 default case
; ---------------------------------------------------------------------------

loc_4DC5B8:				; CODE XREF: .text:004DC484j
					; DATA XREF: .text:off_4DC48Bo
		push	offset word_5BDD9C ; jumptable 004DC484	case 3204
		push	2000h		; n
		lea	ecx, [ebp-4018h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, [ebp-4018h]
		push	50000000h	; mode
		mov	eax, [ebp+8]
		push	eax		; hwnd
		push	offset a_obj_lib_o_a ; "*.obj;*.lib;*.o;*.a"
		push	0		; currdir
		push	0		; args
		push	edx		; _name
		push	offset aSelectObjectFi ; "Select object	files and libraries"
		call	_T
		pop	ecx
		push	eax		; _title
		call	Browsefilename
		add	esp, 1Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jz	loc_4DCC3C	; jumptable 004DC484 default case
		lea	ecx, [ebp-4018h]
		lea	eax, [ebp-4220h]
		push	ecx		; src
		push	104h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4], eax
		mov	edx, [ebp-4]
		add	edx, edx
		lea	ecx, [ebp-4016h]
		add	edx, ecx
		mov	[ebp-10h], edx
		test	byte ptr [ebp-6], 40h
		jz	short loc_4DC666
		push	offset asc_578C26 ; "\\"
		mov	eax, 104h
		sub	eax, [ebp-4]
		push	eax		; n
		mov	edx, [ebp-4]
		add	edx, edx
		lea	ecx, [ebp-4220h]
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	[ebp-4], eax

loc_4DC666:				; CODE XREF: .text:004DC63Dj
		xor	eax, eax
		mov	[ebp-0Ch], eax

loc_4DC66B:				; CODE XREF: .text:004DC820j
		test	byte ptr [ebp-6], 40h
		jz	short loc_4DC6A4
		mov	edx, [ebp-10h]
		push	edx		; src
		mov	ecx, 104h
		sub	ecx, [ebp-4]
		push	ecx		; n
		mov	eax, [ebp-4]
		add	eax, eax
		lea	edx, [ebp-4220h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		test	eax, eax
		jz	loc_4DC826
		add	eax, eax
		add	eax, 2
		add	[ebp-10h], eax

loc_4DC6A4:				; CODE XREF: .text:004DC66Fj
		push	0		; dst
		push	0		; void *
		push	0		; void *
		lea	ecx, [ebp-4420h]
		push	ecx		; dest
		lea	eax, [ebp-18h]
		push	eax		; int
		lea	edx, [ebp-4220h]
		push	edx		; s
		call	_wFnsplit
		add	esp, 18h
		lea	ecx, [ebp-56A4h]
		push	ecx		; lpFindFileData
		lea	eax, [ebp-4220h]
		push	eax		; lpFileName
		call	FindFirstFileW
		mov	edi, eax
		cmp	edi, 0FFFFFFFFh
		jz	loc_4DC81C

loc_4DC6E2:				; CODE XREF: .text:004DC816j
		push	61Ch		; n
		push	0		; c
		lea	eax, [ebp-4C3Ch]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		lea	edx, [ebp-4420h]
		lea	ecx, [ebp-18h]
		lea	eax, [ebp-4C30h]
		push	0		; a6
		push	0		; ext
		push	0		; _name
		push	edx		; dir
		push	ecx		; drive
		push	eax		; path
		call	_wFnmerge
		add	esp, 18h
		lea	edx, [ebp-5678h]
		mov	ecx, 104h
		sub	ecx, eax
		push	edx		; src
		lea	edx, [ebp-4C30h]
		add	eax, eax
		add	eax, edx
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_4DC760
		lea	eax, [ebp-4C30h]
		push	eax		; src
		push	104h		; n
		push	offset word_5BDD9C ; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword ptr [ebp-0Ch], 1

loc_4DC760:				; CODE XREF: .text:004DC73Ej
		xor	ebx, ebx
		jmp	short loc_4DC790
; ---------------------------------------------------------------------------

loc_4DC764:				; CODE XREF: .text:004DC796j
		push	ebx		; index
		push	offset stru_619CA4.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_4DC78F
		lea	eax, [ebp-4C30h]
		push	eax		; s2
		add	esi, 0Ch
		push	esi		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4DC798

loc_4DC78F:				; CODE XREF: .text:004DC776j
		inc	ebx

loc_4DC790:				; CODE XREF: .text:004DC762j
		cmp	ebx, stru_619CA4.sorted.n
		jl	short loc_4DC764

loc_4DC798:				; CODE XREF: .text:004DC78Dj
		cmp	ebx, stru_619CA4.sorted.n
		jl	short loc_4DC7FA
		lea	eax, [ebp-5678h]
		lea	edx, [ebp-4A28h]
		push	eax		; src
		push	104h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-4C3Ch], ebx
		mov	dword ptr [ebp-4C38h], 1
		mov	dword ptr [ebp-4C34h], 100h
		lea	ecx, [ebp-4C3Ch]
		push	ecx		; item
		push	offset stru_619CA4.sorted ; sd
		call	Addsorteddata
		add	esp, 8
		xor	eax, eax
		mov	dword_619F10, 1
		mov	dword_619F14, eax

loc_4DC7FA:				; CODE XREF: .text:004DC79Ej
		lea	edx, [ebp-56A4h]
		push	edx		; lpFindFileData
		push	edi		; hFindFile
		call	FindNextFileW
		test	eax, eax
		jnz	short loc_4DC813
		push	edi		; hFindFile
		call	FindClose
		jmp	short loc_4DC81C
; ---------------------------------------------------------------------------

loc_4DC813:				; CODE XREF: .text:004DC809j
		cmp	edi, 0FFFFFFFFh
		jnz	loc_4DC6E2

loc_4DC81C:				; CODE XREF: .text:004DC6DCj
					; .text:004DC811j
		test	byte ptr [ebp-6], 40h
		jnz	loc_4DC66B

loc_4DC826:				; CODE XREF: .text:004DC696j
		cmp	stru_619CA4.sorted.selected, 0
		jge	short loc_4DC83E
		push	0		; selected
		push	offset stru_619CA4 ; pt
		call	Settableselection
		add	esp, 8

loc_4DC83E:				; CODE XREF: .text:004DC82Dj
		push	0		; force
		push	offset stru_619CA4 ; pt
		call	Updatetable
		add	esp, 8
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	loc_4DBBBC
		pop	ecx
		jmp	loc_4DCC3C	; jumptable 004DC484 default case
; ---------------------------------------------------------------------------

loc_4DC85C:				; CODE XREF: .text:004DC484j
					; DATA XREF: .text:off_4DC48Bo
		mov	eax, stru_619CA4.sorted.selected ; jumptable 004DC484 case 3205
		test	eax, eax
		jl	loc_4DCC3C	; jumptable 004DC484 default case
		mov	ebx, eax
		push	ebx		; index
		push	offset stru_619CA4.sorted ; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	loc_4DCC3C	; jumptable 004DC484 default case
		push	0		; subaddr
		mov	eax, [esi]
		push	eax		; _addr
		push	offset stru_619CA4.sorted ; sd
		call	Deletesorteddata
		xor	edx, edx
		mov	dword_619F10, 1
		mov	dword_619F14, edx
		add	esp, 0Ch
		cmp	ebx, stru_619CA4.sorted.n
		jl	short loc_4DC8B0
		dec	ebx

loc_4DC8B0:				; CODE XREF: .text:004DC8ADj
		push	ebx		; selected
		push	offset stru_619CA4 ; pt
		call	Settableselection
		add	esp, 8
		push	0		; force
		push	offset stru_619CA4 ; pt
		call	Updatetable
		add	esp, 8
		mov	ecx, [ebp+8]
		push	ecx		; hDlg
		call	loc_4DBBBC
		pop	ecx
		jmp	loc_4DCC3C	; jumptable 004DC484 default case
; ---------------------------------------------------------------------------

loc_4DC8DC:				; CODE XREF: .text:004DC484j
					; DATA XREF: .text:off_4DC48Bo
		push	0FFFFFFFFh	; jumptable 004DC484 case 3206
		push	0		; addr0
		push	offset stru_619CA4.sorted ; sd
		call	Deletesorteddatarange
		add	esp, 0Ch
		call	loc_4DBCCC
		xor	eax, eax
		mov	n, eax
		xor	edx, edx
		mov	dword_619F10, edx
		xor	ecx, ecx
		mov	dword_619F14, ecx
		push	0		; force
		push	offset stru_619CA4 ; pt
		call	Updatetable
		add	esp, 8
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	loc_4DBBBC
		pop	ecx
		jmp	loc_4DCC3C	; jumptable 004DC484 default case
; ---------------------------------------------------------------------------

loc_4DC927:				; CODE XREF: .text:004DC484j
					; DATA XREF: .text:off_4DC48Bo
		call	loc_4DBCCC	; jumptable 004DC484 case 3207
		mov	dword_61A720, 0F0000000h
		mov	dword_61A724, 0F1000000h
		push	0		; mode
		push	0		; destfunc
		push	offset loc_4DBD04 ; sortfunc
		push	100h		; nexp
		push	38h		; itemsize
		push	offset stru_5BE1AC ; sd
		call	Createsorteddata
		add	esp, 18h
		xor	ebx, ebx
		jmp	short loc_4DC9B6
; ---------------------------------------------------------------------------

loc_4DC961:				; CODE XREF: .text:004DC9BCj
		push	ebx		; index
		push	offset stru_619CA4.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_4DC9B5
		push	ebx		; selected
		push	offset stru_619CA4 ; pt
		call	Settableselection
		add	esp, 8
		push	1		; force
		push	offset stru_619CA4 ; pt
		call	Updatetable
		add	esp, 8
		lea	eax, [esi+41Ch]
		push	eax		; buffer
		lea	edx, [esi+0Ch]
		push	edx		; path
		call	loc_4DB384
		add	esp, 8
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	short loc_4DC9B5
		and	dword ptr [esi+8], 0FFFFFEFFh

loc_4DC9B5:				; CODE XREF: .text:004DC973j
					; .text:004DC9ACj
		inc	ebx

loc_4DC9B6:				; CODE XREF: .text:004DC95Fj
		cmp	ebx, stru_619CA4.sorted.n
		jl	short loc_4DC961
		call	loc_4DB494
		push	0		; force
		push	offset stru_619CA4 ; pt
		call	Updatetable
		add	esp, 8
		jmp	loc_4DCC3C	; jumptable 004DC484 default case
; ---------------------------------------------------------------------------

loc_4DC9D7:				; CODE XREF: .text:004DC484j
					; DATA XREF: .text:off_4DC48Bo
		push	808h		; jumptable 004DC484 case 3208
		push	0		; c
		lea	ecx, [ebp-5444h]
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		mov	eax, n
		mov	[ebp-5444h], eax
		mov	dword ptr [ebp-5440h], 20h
		test	eax, eax
		jle	short loc_4DCA36
		push	eax		; n
		push	offset byte_5BE1F0 ; src
		lea	edx, [ebp-543Ch]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, n
		push	ecx		; n
		push	0FFh		; c
		lea	eax, [ebp-503Ch]
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_4DCA36:				; CODE XREF: .text:004DCA04j
		mov	edx, fi
		push	1000000h	; mode
		push	edx		; fi
		push	0FFFFFFFFh	; y
		push	0FFFFFFFFh	; x
		lea	ecx, [ebp-5444h]
		push	0		; letter
		push	ecx		; hstr
		push	offset aEnterLibrarySi ; "Enter	library	signature"
		call	_T
		pop	ecx
		push	eax		; _title
		mov	eax, [ebp+8]
		push	eax		; hparent
		call	Binaryedit
		add	esp, 20h
		test	eax, eax
		jle	loc_4DCC3C	; jumptable 004DC484 default case
		mov	eax, [ebp-5444h]
		mov	n, eax
		test	eax, eax
		jle	loc_4DCC3C	; jumptable 004DC484 default case
		push	eax		; n
		lea	edx, [ebp-543Ch]
		push	edx		; src
		push	offset byte_5BE1F0 ; dest
		call	_memcpy
		add	esp, 0Ch
		jmp	loc_4DCC3C	; jumptable 004DC484 default case
; ---------------------------------------------------------------------------

loc_4DCA9C:				; CODE XREF: .text:004DC484j
					; DATA XREF: .text:off_4DC48Bo
		call	loc_4DBCCC	; jumptable 004DC484 case 3209
		mov	dword_61A720, 0F0000000h
		mov	dword_61A724, 0F1000000h
		push	0		; mode
		push	0		; destfunc
		push	offset loc_4DBD04 ; sortfunc
		push	100h		; nexp
		push	38h		; itemsize
		push	offset stru_5BE1AC ; sd
		call	Createsorteddata
		add	esp, 18h
		xor	ebx, ebx
		jmp	short loc_4DCB2B
; ---------------------------------------------------------------------------

loc_4DCAD6:				; CODE XREF: .text:004DCB31j
		push	ebx		; index
		push	offset stru_619CA4.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_4DCB2A
		push	ebx		; selected
		push	offset stru_619CA4 ; pt
		call	Settableselection
		add	esp, 8
		push	1		; force
		push	offset stru_619CA4 ; pt
		call	Updatetable
		add	esp, 8
		lea	eax, [esi+41Ch]
		push	eax		; buffer
		lea	edx, [esi+0Ch]
		push	edx		; path
		call	loc_4DB384
		add	esp, 8
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jl	short loc_4DCB2A
		and	dword ptr [esi+8], 0FFFFFEFFh

loc_4DCB2A:				; CODE XREF: .text:004DCAE8j
					; .text:004DCB21j
		inc	ebx

loc_4DCB2B:				; CODE XREF: .text:004DCAD4j
		cmp	ebx, stru_619CA4.sorted.n
		jl	short loc_4DCAD6
		call	loc_4DB494
		push	0		; force
		push	offset stru_619CA4 ; pt
		call	Updatetable
		add	esp, 8
		mov	dword_619F14, 1
		push	offset word_5BDFA4 ; src
		push	104h		; n
		lea	ecx, [ebp-4220h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, [ebp-4220h]
		push	8000000h	; mode
		mov	eax, [ebp+8]
		push	eax		; hwnd
		push	offset a_udl_0	; "*.udl"
		push	0		; currdir
		push	0		; args
		push	edx		; _name
		push	offset aSelectNameOfIm ; "Select _name of image library file"
		call	_T
		pop	ecx
		push	eax		; _title
		call	Browsefilename
		add	esp, 1Ch
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jz	loc_4DCC3C	; jumptable 004DC484 default case
		lea	ecx, [ebp-4620h]
		push	ecx		; buffer
		lea	eax, [ebp-4220h]
		push	eax		; path
		call	loc_4DB6F8
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DCBF6
		lea	edx, [ebp-4220h]
		push	edx		; src
		push	104h		; n
		push	offset word_5BDFA4 ; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebp-4620h]
		push	ecx		; format
		push	0		; int
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	loc_4DBC68
		add	esp, 0Ch
		xor	edx, edx
		mov	dword_619F10, edx
		jmp	short loc_4DCC3C ; jumptable 004DC484 default case
; ---------------------------------------------------------------------------

loc_4DCBF6:				; CODE XREF: .text:004DCBBCj
		lea	ecx, [ebp-4620h]
		push	ecx		; format
		push	1		; int
		mov	eax, [ebp+8]
		push	eax		; hDlg
		call	loc_4DBC68
		add	esp, 0Ch
		jmp	short loc_4DCC3C ; jumptable 004DC484 default case
; ---------------------------------------------------------------------------

loc_4DCC0D:				; CODE XREF: .text:004DC484j
					; DATA XREF: .text:off_4DC48Bo
		push	0		; jumptable 004DC484 case 3210
		mov	edx, [ebp+8]
		push	edx		; hw
		call	Endotdialog
		add	esp, 8
		jmp	short loc_4DCC3C ; jumptable 004DC484 default case
; ---------------------------------------------------------------------------

loc_4DCC1D:				; CODE XREF: .text:004DC385j
		mov	ecx, [ebp+10h]
		and	ecx, 0FFF0h
		cmp	ecx, 0F060h
		jnz	short loc_4DCC3C ; jumptable 004DC484 default case
		push	0		; result
		mov	eax, [ebp+8]
		push	eax		; hw
		call	Endotdialog
		add	esp, 8

loc_4DCC3C:				; CODE XREF: .text:004DC399j
					; .text:004DC3ACj ...
		xor	eax, eax	; jumptable 004DC484 default case

loc_4DCC3E:				; CODE XREF: .text:004DC42Bj
					; .text:004DC43Bj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

loc_4DCC48:				; DATA XREF: .text:004DCDBCo
		push	ebp
		mov	ebp, esp
		xor	eax, eax
		mov	edx, [ebp+1Ch]
		add	edx, 4		; switch 6 cases
		cmp	edx, 5
		ja	short loc_4DCCB1 ; jumptable 004DCC58 default case
		jmp	ds:off_4DCC5F[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4DCC5F	dd offset loc_4DCCB1	; DATA XREF: .text:004DCC58r
		dd offset loc_4DCCB1	; jump table for switch	statement
		dd offset loc_4DCCB1
		dd offset loc_4DCCB1
		dd offset loc_4DCC79
		dd offset loc_4DCC96
; ---------------------------------------------------------------------------
		jmp	short loc_4DCCB1 ; jumptable 004DCC58 default case
; ---------------------------------------------------------------------------

loc_4DCC79:				; CODE XREF: .text:004DCC58j
					; DATA XREF: .text:off_4DCC5Fo
		mov	ecx, [ebp+18h]	; jumptable 004DCC58 case 0
		add	ecx, 214h
		push	ecx		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DCCB1 ; jumptable 004DCC58 default case
; ---------------------------------------------------------------------------

loc_4DCC96:				; CODE XREF: .text:004DCC58j
					; DATA XREF: .text:off_4DCC5Fo
		mov	edx, [ebp+18h]	; jumptable 004DCC58 case 1
		add	edx, 41Ch
		push	edx		; src
		push	100h		; n
		mov	ecx, [ebp+8]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4DCCB1:				; CODE XREF: .text:004DCC56j
					; .text:004DCC58j ...
		pop	ebp		; jumptable 004DCC58 default case
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4DCCB4:				; DATA XREF: .text:004DCDC6o
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		mov	eax, [ebp+0Ch]
		push	eax		; index
		lea	edx, [ebx+44h]
		push	edx		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_4DCD05
		mov	eax, [ebx+22Ch]
		push	eax		; hWnd
		call	GetParent
		push	eax		; hDlg
		call	loc_4DBBBC
		pop	ecx
		add	esi, 0Ch
		push	esi		; arglist
		push	offset aS_17	; "%s"
		push	0		; int
		mov	eax, [ebx+22Ch]
		push	eax		; hWnd
		call	GetParent
		push	eax		; hDlg
		call	loc_4DBC68
		add	esp, 10h

loc_4DCD05:				; CODE XREF: .text:004DCCD0j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4DCD0C:				; CODE XREF: .text:loc_40B2E8p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, offset stru_61A728
		cmp	stru_619CA4.bar.nbar, 0
		jnz	loc_4DCDDA
		push	offset aListOfLibrarie ; "List of libraries"
		push	offset stru_619CA4 ; dst
		call	_wcscpy
		mov	stru_619CA4.mode, 300F0080h
		mov	stru_619CA4.bar.visible, 1
		mov	stru_619CA4.bar._name, offset aObjectAndLibra ; "Object and library files"
		xor	eax, eax
		mov	stru_619CA4.bar.expl, offset aListOfObjectAn ; "List of	object and library files"
		mov	stru_619CA4.bar.mode, eax
		mov	stru_619CA4.bar.defdx, 32h
		mov	stru_619CA4.bar._name+4,	offset aMessage_1 ; "Message"
		xor	edx, edx
		mov	stru_619CA4.bar.expl+4,	offset aResultOfScanni ; "Result of scanning"
		mov	stru_619CA4.bar.mode+4,	edx
		mov	stru_619CA4.bar.defdx+4, 100h
		xor	ecx, ecx
		mov	stru_619CA4.bar.nbar, 2
		xor	eax, eax
		mov	stru_619CA4.tabfunc, ecx
		xor	edx, edx
		mov	stru_619CA4.custommode,	eax
		add	esp, 8
		xor	ecx, ecx
		mov	stru_619CA4.customdata,	edx
		mov	stru_619CA4.updatefunc,	ecx
		mov	stru_619CA4.drawfunc, offset loc_4DCC48
		mov	stru_619CA4.tableselfunc, offset loc_4DCCB4
		mov	stru_619CA4.menu, offset stru_5782F0

loc_4DCDDA:				; CODE XREF: .text:004DCD1Cj
		push	7Ch		; n
		push	0		; c
		push	ebx		; s
		call	_memset
		add	esp, 0Ch
		mov	dword ptr [ebx], offset	stru_578110
		mov	dword ptr [ebx+8], 0C81h
		mov	dword ptr [ebx+30h], 0FFFFFFFFh
		mov	dword ptr [ebx+34h], 0FFFFFFFFh
		mov	dword ptr [ebx+38h], 0FFFFFFFFh
		mov	dword ptr [ebx+3Ch], 20000000h
		push	0		; mode
		push	0		; destfunc
		push	1		; sortfunc
		push	40h		; nexp
		push	61Ch		; itemsize
		push	offset stru_619CA4.sorted ; sd
		call	Createsorteddata
		add	esp, 18h
		xor	eax, eax
		mov	dword_619F10, eax
		xor	edx, edx
		mov	dword_619F14, edx
		push	0		; dwInitParam
		push	offset loc_4DC35C ; lpDialogFunc
		mov	ecx, hwollymain
		push	ecx		; hWndParent
		push	offset aDia_empty_3 ; "DIA_EMPTY"
		mov	eax, g_hInstance
		push	eax		; hInstance
		call	DialogBoxParamW
		push	offset stru_619CA4.sorted ; sd
		call	Destroysorteddata
		pop	ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4DCE68:				; CODE XREF: .text:004DCFE0p
					; .text:loc_4DE20Fp
		push	ebp
		mov	ebp, esp
		cmp	g_IsOrigHandle,	0
		jz	short loc_4DCE8A
		mov	handles.bar._name+18h, offset aOriginalName ; "Original _name"
		mov	handles.bar.expl+18h, offset aOriginalNameAs ; "Original _name associated with the handl"...
		jmp	short loc_4DCE9E
; ---------------------------------------------------------------------------

loc_4DCE8A:				; CODE XREF: .text:004DCE72j
		mov	handles.bar._name+18h, offset aTranslatedName ; "Translated _name"
		mov	handles.bar.expl+18h, offset aHandleNameConv ; "Handle Name converted to user-friendly "...

loc_4DCE9E:				; CODE XREF: .text:004DCE88j
		push	offset handles
		call	loc_41A554
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4DCEAC:				; DATA XREF: .data:stru_578D44o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		test	eax, eax
		jnz	short loc_4DCED0
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4DCEC5
		cmp	process, 0
		jnz	short loc_4DCEC9

loc_4DCEC5:				; CODE XREF: .text:004DCEBAj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DCEC9:				; CODE XREF: .text:004DCEC3j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DCED0:				; CODE XREF: .text:004DCEB4j
		dec	eax
		jnz	short loc_4DCEDF
		call	loc_4DD068
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DCEDF:				; CODE XREF: .text:004DCED1j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4DCEE4:				; DATA XREF: .data:stru_578D44o
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+14h]
		mov	edi, [ebp+10h]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_4DCF07
		cmp	process, 0
		jz	short loc_4DCF07
		cmp	dword ptr [esi+44h], 0
		jnz	short loc_4DCF0E

loc_4DCF07:				; CODE XREF: .text:004DCEF6j
					; .text:004DCEFFj
		xor	eax, eax
		jmp	loc_4DCF9A
; ---------------------------------------------------------------------------

loc_4DCF0E:				; CODE XREF: .text:004DCF05j
		test	eax, eax
		jnz	short loc_4DCF5E
		xor	edx, edx
		xor	ebx, ebx
		mov	[ebp-4], edx
		jmp	short loc_4DCF37
; ---------------------------------------------------------------------------

loc_4DCF1B:				; CODE XREF: .text:004DCF3Aj
		push	ebx		; index
		push	offset handles.sorted ;	sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4DCF36
		test	byte ptr [eax+0Ah], 1
		jz	short loc_4DCF36
		inc	dword ptr [ebp-4]

loc_4DCF36:				; CODE XREF: .text:004DCF2Bj
					; .text:004DCF31j
		inc	ebx

loc_4DCF37:				; CODE XREF: .text:004DCF19j
		cmp	ebx, [esi+44h]
		jl	short loc_4DCF1B
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_4DCF46
		test	edi, edi
		jz	short loc_4DCF53

loc_4DCF46:				; CODE XREF: .text:004DCF40j
		mov	eax, [esi+44h]
		cmp	eax, [ebp-4]
		jnz	short loc_4DCF57
		cmp	edi, 1
		jnz	short loc_4DCF57

loc_4DCF53:				; CODE XREF: .text:004DCF44j
		xor	eax, eax
		jmp	short loc_4DCF9A
; ---------------------------------------------------------------------------

loc_4DCF57:				; CODE XREF: .text:004DCF4Cj
					; .text:004DCF51j
		mov	eax, 1
		jmp	short loc_4DCF9A
; ---------------------------------------------------------------------------

loc_4DCF5E:				; CODE XREF: .text:004DCF10j
		dec	eax
		jnz	short loc_4DCF98
		xor	ebx, ebx
		jmp	short loc_4DCF8C
; ---------------------------------------------------------------------------

loc_4DCF65:				; CODE XREF: .text:004DCF8Fj
		push	ebx		; index
		push	offset handles.sorted ;	sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4DCF8B
		test	edi, edi
		jnz	short loc_4DCF84
		and	dword ptr [eax+8], 0FFFEFFFFh
		jmp	short loc_4DCF8B
; ---------------------------------------------------------------------------

loc_4DCF84:				; CODE XREF: .text:004DCF79j
		or	dword ptr [eax+8], 10000h

loc_4DCF8B:				; CODE XREF: .text:004DCF75j
					; .text:004DCF82j
		inc	ebx

loc_4DCF8C:				; CODE XREF: .text:004DCF63j
		cmp	ebx, [esi+44h]
		jl	short loc_4DCF65
		mov	eax, 1
		jmp	short loc_4DCF9A
; ---------------------------------------------------------------------------

loc_4DCF98:				; CODE XREF: .text:004DCF5Fj
		xor	eax, eax

loc_4DCF9A:				; CODE XREF: .text:004DCF09j
					; .text:004DCF55j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; MENUFUNC loc_4DCFA0
loc_4DCFA0:				; DATA XREF: .text:004DE034o
					; .data:stru_578D44o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		test	eax, eax
		jnz	short loc_4DCFCA
		cmp	dword ptr [ebp+8], 0
		jnz	short loc_4DCFB4
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DCFB4:				; CODE XREF: .text:004DCFAEj
		mov	edx, [ebp+10h]
		cmp	edx, g_IsOrigHandle
		jnz	short loc_4DCFC3
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DCFC3:				; CODE XREF: .text:004DCFBDj
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DCFCA:				; CODE XREF: .text:004DCFA8j
		dec	eax
		jnz	short loc_4DCFEC
		cmp	g_IsOrigHandle,	0
		setz	dl
		and	edx, 1
		mov	g_IsOrigHandle,	edx
		call	loc_4DCE68
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DCFEC:				; CODE XREF: .text:004DCFCBj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DCFF0:				; DATA XREF: .data:stru_578D44o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, handles.sorted.selected
		mov	ebx, [ebp+14h]
		push	eax		; index
		push	offset handles.sorted ;	sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jz	short loc_4DD029
		mov	edx, [eax+8]
		and	edx, 7F00000h
		cmp	edx, 100000h
		jnz	short loc_4DD029
		cmp	word ptr [eax+268h], 0
		jnz	short loc_4DD02E

loc_4DD029:				; CODE XREF: .text:004DD00Cj
					; .text:004DD01Dj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DD02E:				; CODE XREF: .text:004DD027j
		test	ebx, ebx
		jnz	short loc_4DD03A
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DD03A:				; CODE XREF: .text:004DD030j
		dec	ebx
		jnz	short loc_4DD062
		push	0		; strname
		mov	edx, [eax+5Ch]
		add	eax, 268h
		push	edx		; sel1
		push	edx		; sel0
		push	11001h		; dumptype
		push	eax		; path
		push	0		; size
		push	0		; base
		push	0		; _title
		call	Createdumpwindow
		add	esp, 20h
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DD062:				; CODE XREF: .text:004DD03Bj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4DD068:				; CODE XREF: .text:00409F65p
					; .text:004DCED3p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFFE80h
		push	ebx
		push	esi
		push	edi
		lea	ebx, [ebp-6E0h]
		mov	edi, offset aI_11 ; "%i"
__DebugBreak
		cmp	_imp__NtQuerySystemInformation,	0
		jz	short loc_4DD0A1
		cmp	_imp__NtDuplicateObject, 0
		jz	short loc_4DD0A1
		cmp	_imp__NtQueryObject, 0
		jnz	short loc_4DD0A8

loc_4DD0A1:				; CODE XREF: .text:004DD08Dj
					; .text:004DD096j
		xor	eax, eax
		jmp	loc_4DDB1B
; ---------------------------------------------------------------------------

loc_4DD0A8:				; CODE XREF: .text:004DD09Fj
		mov	esi, 4000h
		xor	eax, eax	; int
		mov	[ebp-4], eax

loc_4DD0B2:				; CODE XREF: .text:004DD107j
		push	1		; flags
		push	esi		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_4DD109
		xor	edx, edx
		mov	[ebp-18h], edx
		lea	ecx, [ebp-18h]
		push	ecx
		push	esi
		mov	eax, [ebp-1Ch]
		push	eax
		push	10h
		call	_imp__NtQuerySystemInformation
		test	eax, eax
		jz	short loc_4DD109
		mov	edx, [ebp-1Ch]
		push	edx		; data
		call	Memfree
		pop	ecx
		xor	ecx, ecx
		mov	[ebp-1Ch], ecx
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4DD0FD
		mov	eax, esi
		add	eax, eax
		mov	esi, eax
		jmp	short loc_4DD100
; ---------------------------------------------------------------------------

loc_4DD0FD:				; CODE XREF: .text:004DD0F3j
		mov	esi, [ebp-18h]

loc_4DD100:				; CODE XREF: .text:004DD0FBj
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 8
		jl	short loc_4DD0B2

loc_4DD109:				; CODE XREF: .text:004DD0C4j
					; .text:004DD0DEj
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_4DD116
		xor	eax, eax
		jmp	loc_4DDB1B
; ---------------------------------------------------------------------------

loc_4DD116:				; CODE XREF: .text:004DD10Dj
		push	0		; confirm
		push	offset handles.sorted ;	sd
		call	Confirmsorteddata
		add	esp, 8
		cmp	handles.sorted.n, 0
		setz	dl
		and	edx, 1
		mov	[ebp-14h], edx
		mov	ecx, [ebp-1Ch]
		mov	eax, [ecx]
		mov	[ebp-10h], eax
		mov	eax, esi
		sub	eax, 4
		shr	eax, 4
		cmp	eax, [ebp-10h]
		jge	short loc_4DD14D
		mov	[ebp-10h], eax

loc_4DD14D:				; CODE XREF: .text:004DD148j
		mov	edx, [ebp-1Ch]
		add	edx, 4
		mov	[ebp-28h], edx
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	loc_4DDAEC
; ---------------------------------------------------------------------------

loc_4DD160:				; CODE XREF: .text:004DDAFBj
		mov	eax, [ebp-28h]
		mov	edx, [eax]
		cmp	edx, processid
		jnz	loc_4DDAE5
		xor	ecx, ecx
		lea	eax, [ebp-24h]
		mov	[ebp-24h], ecx
		push	2
		push	0
		push	0
		push	eax
		push	0FFFFFFFFh
		mov	edx, [ebp-28h]
		mov	eax, process
		movzx	ecx, word ptr [edx+6]
		push	ecx
		push	eax
		call	_imp__NtDuplicateObject
		cmp	dword ptr [ebp-24h], 0
		jz	loc_4DDAE5
		push	0		; subaddr
		mov	edx, [ebp-28h]
		movzx	ecx, word ptr [edx+6]
		push	ecx		; _addr
		push	offset handles.sorted ;	sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[ebp-20h], eax
		mov	eax, [ebp-28h]
		movzx	edx, word ptr [eax+6]
		mov	[ebx], edx
		mov	dword ptr [ebx+4], 1
		mov	dword ptr [ebx+8], 200h
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_4DD1E7
		mov	ecx, [ebp-20h]
		mov	eax, [ecx+8]
		and	eax, 10000h
		or	[ebx+8], eax
		jmp	short loc_4DD1F4
; ---------------------------------------------------------------------------

loc_4DD1E7:				; CODE XREF: .text:004DD1D5j
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_4DD1F4
		or	dword ptr [ebx+8], 100h

loc_4DD1F4:				; CODE XREF: .text:004DD1E5j
					; .text:004DD1EBj
		lea	edx, [ebp-18h]
		lea	ecx, [ebp-718h]
		push	edx
		push	38h
		push	ecx
		push	0
		mov	eax, [ebp-24h]
		push	eax
		call	_imp__NtQueryObject
		mov	word ptr [ebp-978h], 0
		mov	word ptr [ebp-976h], 200h
		lea	edx, [ebp-918h]
		lea	ecx, [ebp-18h]
		mov	[ebp-974h], edx
		push	ecx
		lea	eax, [ebp-978h]
		push	260h
		push	eax
		push	2
		mov	edx, [ebp-24h]
		push	edx
		call	_imp__NtQueryObject
		cmp	word ptr [ebp-978h], 0
		jnz	short loc_4DD269
		mov	ecx, [ebp-28h]
		xor	eax, eax
		lea	edx, [ebx+0Ch]
		mov	al, [ecx+4]
		push	eax
		push	edi		; format
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_4DD27E
; ---------------------------------------------------------------------------

loc_4DD269:				; CODE XREF: .text:004DD24Fj
		mov	ecx, [ebp-974h]
		lea	eax, [ebx+0Ch]
		push	ecx		; src
		push	20h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4DD27E:				; CODE XREF: .text:004DD267j
		mov	edx, [ebp-28h]
		mov	ecx, [edx+0Ch]
		lea	edx, [ebp-1178h]
		mov	[ebx+4Ch], ecx
		lea	ecx, [ebp-18h]
		mov	eax, [ebp-70Ch]
		dec	eax
		mov	[ebx+50h], eax
		lea	eax, [ebp-1180h]
		mov	word ptr [ebp-1180h], 0
		mov	word ptr [ebp-117Eh], 400h
		mov	[ebp-117Ch], edx
		push	ecx
		push	808h
		push	eax
		push	1
		mov	edx, [ebp-24h]
		push	edx
		call	_imp__NtQueryObject
		cmp	word ptr [ebp-1180h], 0
		jnz	short loc_4DD2DD
		mov	word ptr [ebx+68h], 0
		jmp	short loc_4DD2F5
; ---------------------------------------------------------------------------

loc_4DD2DD:				; CODE XREF: .text:004DD2D3j
		mov	ecx, [ebp-117Ch]
		lea	eax, [ebx+68h]
		push	ecx		; src
		push	100h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_4DD2F5:				; CODE XREF: .text:004DD2DBj
		xor	edx, edx
		lea	eax, [edi+6]
		mov	[ebx+5Ch], edx
		mov	[ebx+58h], edx
		mov	word ptr [ebx+268h], 0
		push	eax		; s2
		lea	ecx, [ebx+0Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD34B
		or	dword ptr [ebx+8], 2300000h
		lea	eax, [ebx+68h]
		lea	edx, [ebx+268h]
		push	eax		; src
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebx+268h]
		push	ecx		; key
		call	Substitutehkeyprefix
		pop	ecx
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD34B:				; CODE XREF: .text:004DD318j
		lea	eax, [edi+0Eh]
		push	eax		; s2
		lea	edx, [ebx+0Ch]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_4DD627
		mov	ecx, [ebp-24h]
		push	ecx		; hFile
		call	GetFileType
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 3
		jnz	short loc_4DD39A
		or	dword ptr [ebx+8], 200000h
		lea	eax, [edi+18h]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	20h		; n
		lea	edx, [ebx+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD39A:				; CODE XREF: .text:004DD373j
		cmp	dword ptr [ebp-8], 2
		jnz	loc_4DD454
		or	dword ptr [ebx+8], 300000h
		lea	ecx, [edi+30h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	20h		; n
		lea	eax, [ebx+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	_imp__QueryDosDeviceW, 0
		jz	loc_4DDA02
		lea	edx, [edi+48h]
		lea	ecx, [ebp-70h]
		push	edx		; src
		push	20h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, 30h

loc_4DD3E8:				; CODE XREF: .text:004DD44Dj
		mov	[ebp-6Ah], si
		push	104h
		lea	eax, [ebp-278h]
		push	eax
		lea	edx, [ebp-70h]
		push	edx
		call	_imp__QueryDosDeviceW
		test	eax, eax
		jz	short loc_4DD449
		lea	ecx, [ebp-278h]
		push	ecx		; s2
		lea	eax, [ebx+68h]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD449
		lea	edx, [edi+52h]
		lea	ecx, [ebp-68h]
		push	edx		; src
		push	1Ch		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	eax, [ebp-70h]
		push	eax		; src
		push	20h		; n
		lea	edx, [ebx+268h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD449:				; CODE XREF: .text:004DD404j
					; .text:004DD41Bj
		inc	esi
		cmp	esi, 39h
		jle	short loc_4DD3E8
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD454:				; CODE XREF: .text:004DD39Ej
		cmp	dword ptr [ebp-8], 1
		jz	short loc_4DD47F
		or	dword ptr [ebx+8], offset stru_4FFFE8.postbyte
		lea	ecx, [edi+56h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	20h		; n
		lea	eax, [ebx+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD47F:				; CODE XREF: .text:004DD458j
		cmp	_imp__QueryDosDeviceW, 0
		jz	loc_4DD53C
		lea	edx, [edi+6Ch]
		lea	ecx, [ebp-70h]
		push	edx		; src
		push	20h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	esi, 61h

loc_4DD4A3:				; CODE XREF: .text:004DD536j
		mov	[ebp-70h], si
		push	104h
		lea	eax, [ebp-278h]
		push	eax
		lea	edx, [ebp-70h]
		push	edx
		call	_imp__QueryDosDeviceW
		test	eax, eax
		jz	short loc_4DD532
		lea	ecx, [ebp-278h]
		push	ecx		; s
		call	_wcslen
		pop	ecx
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 2
		jl	short loc_4DD532
		mov	eax, [ebp-0Ch]
		push	eax		; maxlen
		lea	edx, [ebp-278h]
		push	edx		; s2
		lea	ecx, [ebx+68h]
		push	ecx		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4DD532
		lea	eax, [ebp-70h]
		lea	edx, [ebx+268h]
		push	eax		; src
		push	100h		; n
		push	edx		; dest
		call	StrcopyW
		mov	ecx, [ebp-0Ch]
		add	esp, 0Ch
		add	ecx, ecx
		lea	edx, [ebx+68h]
		add	ecx, edx
		lea	edx, [ebx+268h]
		push	ecx		; src
		mov	ecx, 100h
		sub	ecx, eax
		add	eax, eax
		add	eax, edx
		push	ecx		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DD53C
; ---------------------------------------------------------------------------

loc_4DD532:				; CODE XREF: .text:004DD4BFj
					; .text:004DD4D5j ...
		inc	esi
		cmp	esi, 7Ah
		jle	loc_4DD4A3

loc_4DD53C:				; CODE XREF: .text:004DD486j
					; .text:004DD530j
		lea	eax, [ebx+268h]
		push	eax		; lpFileName
		call	GetFileAttributesW
		mov	esi, eax
		cmp	esi, 0FFFFFFFFh
		jz	loc_4DDA02
		test	esi, 10h
		jz	short loc_4DD57D
		or	dword ptr [ebx+8], 400000h
		lea	eax, [edi+72h]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	20h		; n
		lea	edx, [ebx+0Ch]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DD5DA
; ---------------------------------------------------------------------------

loc_4DD57D:				; CODE XREF: .text:004DD559j
		test	byte ptr [ebp-8], 4
		jz	short loc_4DD5A8
		or	dword ptr [ebx+8], 100000h
		lea	ecx, [edi+88h]
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	20h		; n
		lea	eax, [ebx+0Ch]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DD5DA
; ---------------------------------------------------------------------------

loc_4DD5A8:				; CODE XREF: .text:004DD581j
		test	byte ptr [ebp-7], 1
		jz	short loc_4DD5D3
		or	dword ptr [ebx+8], 100000h
		lea	edx, [edi+9Eh]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	20h		; n
		lea	ecx, [ebx+0Ch]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_4DD5DA
; ---------------------------------------------------------------------------

loc_4DD5D3:				; CODE XREF: .text:004DD5ACj
		or	dword ptr [ebx+8], 100000h

loc_4DD5DA:				; CODE XREF: .text:004DD57Bj
					; .text:004DD5A6j ...
		test	esi, 10h
		jnz	loc_4DDA02
		push	0		; lpFileSizeHigh
		mov	eax, [ebp-24h]
		push	eax		; hFile
		call	GetFileSize
		mov	esi, eax
		mov	[ebx+58h], esi
		cmp	esi, 0FFFFFFFFh
		jnz	short loc_4DD600
		xor	eax, eax
		mov	[ebx+58h], eax

loc_4DD600:				; CODE XREF: .text:004DD5F9j
		push	1		; dwMoveMethod
		push	0		; lpDistanceToMoveHigh
		push	0		; lDistanceToMove
		mov	edx, [ebp-24h]
		push	edx		; hFile
		call	SetFilePointer
		mov	esi, eax
		mov	[ebx+5Ch], esi
		cmp	esi, 0FFFFFFFFh
		jnz	loc_4DDA02
		xor	eax, eax
		mov	[ebx+5Ch], eax
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD627:				; CODE XREF: .text:004DD35Dj
		lea	edx, [edi+0B6h]
		push	edx		; s2
		lea	ecx, [ebx+0Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD685
		cmp	_imp__NtQuerySemaphore,	0
		jz	short loc_4DD685
		or	dword ptr [ebx+8], 1C00000h
		push	8		; n
		push	0		; c
		lea	eax, [ebp-30h]
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		lea	edx, [ebp-18h]
		push	edx
		push	8
		lea	ecx, [ebp-30h]
		push	ecx
		push	0
		mov	eax, [ebp-24h]
		push	eax
		call	_imp__NtQuerySemaphore
		mov	edx, [ebp-30h]
		mov	[ebx+58h], edx
		mov	ecx, [ebp-2Ch]
		mov	[ebx+5Ch], ecx
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD685:				; CODE XREF: .text:004DD63Cj
					; .text:004DD645j
		lea	eax, [edi+0CAh]
		push	eax		; s2
		lea	edx, [ebx+0Ch]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD6A8
		or	dword ptr [ebx+8], 1300000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD6A8:				; CODE XREF: .text:004DD69Aj
		lea	ecx, [edi+0D6h]
		push	ecx		; s2
		lea	eax, [ebx+0Ch]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD6CB
		or	dword ptr [ebx+8], 1000000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD6CB:				; CODE XREF: .text:004DD6BDj
		lea	edx, [edi+0E0h]
		push	edx		; s2
		lea	ecx, [ebx+0Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD6EE
		or	dword ptr [ebx+8], 1100000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD6EE:				; CODE XREF: .text:004DD6E0j
		lea	eax, [edi+0F4h]
		push	eax		; s2
		lea	edx, [ebx+0Ch]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD711
		or	dword ptr [ebx+8], 1200000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD711:				; CODE XREF: .text:004DD703j
		lea	ecx, [edi+10Eh]
		push	ecx		; s2
		lea	eax, [ebx+0Ch]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD734
		or	dword ptr [ebx+8], 1400000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD734:				; CODE XREF: .text:004DD726j
		lea	edx, [edi+11Eh]
		push	edx		; s2
		lea	ecx, [ebx+0Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD757
		or	dword ptr [ebx+8], 1500000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD757:				; CODE XREF: .text:004DD749j
		lea	eax, [edi+12Ch]
		push	eax		; s2
		lea	edx, [ebx+0Ch]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD77A
		or	dword ptr [ebx+8], 1600000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD77A:				; CODE XREF: .text:004DD76Cj
		lea	ecx, [edi+134h]
		push	ecx		; s2
		lea	eax, [ebx+0Ch]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD79D
		or	dword ptr [ebx+8], 1700000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD79D:				; CODE XREF: .text:004DD78Fj
		lea	edx, [edi+14Ch]
		push	edx		; s2
		lea	ecx, [ebx+0Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD7C0
		or	dword ptr [ebx+8], 1800000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD7C0:				; CODE XREF: .text:004DD7B2j
		lea	eax, [edi+158h]
		push	eax		; s2
		lea	edx, [ebx+0Ch]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD7E3
		or	dword ptr [ebx+8], 1900000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD7E3:				; CODE XREF: .text:004DD7D5j
		lea	ecx, [edi+16Ch]
		push	ecx		; s2
		lea	eax, [ebx+0Ch]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD806
		or	dword ptr [ebx+8], 1A00000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD806:				; CODE XREF: .text:004DD7F8j
		lea	edx, [edi+17Ah]
		push	edx		; s2
		lea	ecx, [ebx+0Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD829
		or	dword ptr [ebx+8], 1B00000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD829:				; CODE XREF: .text:004DD81Bj
		lea	eax, [edi+18Ch]
		push	eax		; s2
		lea	edx, [ebx+0Ch]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD84C
		or	dword ptr [ebx+8], 1D00000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD84C:				; CODE XREF: .text:004DD83Ej
		lea	ecx, [edi+198h]
		push	ecx		; s2
		lea	eax, [ebx+0Ch]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD86F
		or	dword ptr [ebx+8], 1E00000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD86F:				; CODE XREF: .text:004DD861j
		lea	edx, [edi+1A8h]
		push	edx		; s2
		lea	ecx, [ebx+0Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD892
		or	dword ptr [ebx+8], 1F00000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD892:				; CODE XREF: .text:004DD884j
		lea	eax, [edi+1BEh]
		push	eax		; s2
		lea	edx, [ebx+0Ch]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD8B5
		or	dword ptr [ebx+8], 2000000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD8B5:				; CODE XREF: .text:004DD8A7j
		lea	ecx, [edi+1DAh]
		push	ecx		; s2
		lea	eax, [ebx+0Ch]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD8D8
		or	dword ptr [ebx+8], 2100000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD8D8:				; CODE XREF: .text:004DD8CAj
		lea	edx, [edi+1EAh]
		push	edx		; s2
		lea	ecx, [ebx+0Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD8FB
		or	dword ptr [ebx+8], 2200000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD8FB:				; CODE XREF: .text:004DD8EDj
		lea	eax, [edi+1FAh]
		push	eax		; s2
		lea	edx, [ebx+0Ch]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD91E
		or	dword ptr [ebx+8], 2400000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD91E:				; CODE XREF: .text:004DD910j
		lea	ecx, [edi+204h]
		push	ecx		; s2
		lea	eax, [ebx+0Ch]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD941
		or	dword ptr [ebx+8], 2500000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD941:				; CODE XREF: .text:004DD933j
		lea	edx, [edi+21Eh]
		push	edx		; s2
		lea	ecx, [ebx+0Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD964
		or	dword ptr [ebx+8], 2600000h
		jmp	loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD964:				; CODE XREF: .text:004DD956j
		lea	eax, [edi+22Eh]
		push	eax		; s2
		lea	edx, [ebx+0Ch]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD984
		or	dword ptr [ebx+8], 2700000h
		jmp	short loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD984:				; CODE XREF: .text:004DD979j
		lea	ecx, [edi+244h]
		push	ecx		; s2
		lea	eax, [ebx+0Ch]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD9A4
		or	dword ptr [ebx+8], 2800000h
		jmp	short loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD9A4:				; CODE XREF: .text:004DD999j
		lea	edx, [edi+252h]
		push	edx		; s2
		lea	ecx, [ebx+0Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD9C4
		or	dword ptr [ebx+8], 2900000h
		jmp	short loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD9C4:				; CODE XREF: .text:004DD9B9j
		lea	eax, [edi+260h]
		push	eax		; s2
		lea	edx, [ebx+0Ch]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DD9E4
		or	dword ptr [ebx+8], 2A00000h
		jmp	short loc_4DDA02
; ---------------------------------------------------------------------------

loc_4DD9E4:				; CODE XREF: .text:004DD9D9j
		lea	ecx, [edi+27Ah]
		push	ecx		; s2
		lea	eax, [ebx+0Ch]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DDA02
		or	dword ptr [ebx+8], 2C00000h

loc_4DDA02:				; CODE XREF: .text:004DD346j
					; .text:004DD395j ...
		cmp	dword ptr [ebp-20h], 0
		jnz	short loc_4DDA1C
		mov	edx, [ebx+50h]
		mov	[ebx+54h], edx
		mov	ecx, [ebx+58h]
		mov	[ebx+60h], ecx
		mov	eax, [ebx+5Ch]
		mov	[ebx+64h], eax
		jmp	short loc_4DDA37
; ---------------------------------------------------------------------------

loc_4DDA1C:				; CODE XREF: .text:004DDA06j
		mov	edx, [ebp-20h]
		mov	ecx, [edx+50h]
		mov	[ebx+54h], ecx
		mov	eax, [ebp-20h]
		mov	edx, [eax+58h]
		mov	[ebx+60h], edx
		mov	ecx, [ebp-20h]
		mov	eax, [ecx+5Ch]
		mov	[ebx+64h], eax

loc_4DDA37:				; CODE XREF: .text:004DDA1Aj
		cmp	dword_5C893C, 0
		jnz	short loc_4DDA47
		xor	eax, eax
		jmp	loc_4DDACA
; ---------------------------------------------------------------------------

loc_4DDA47:				; CODE XREF: .text:004DDA3Ej
		cmp	word ptr [ebx+68h], 0
		jz	short loc_4DDAC1
		lea	edx, [edi+1BEh]
		push	edx		; s2
		lea	ecx, [ebx+0Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4DDAC1
		lea	eax, [edi+1DAh]
		push	eax		; s2
		lea	edx, [ebx+0Ch]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4DDAC1
		lea	ecx, [edi+0E0h]
		push	ecx		; s2
		lea	eax, [ebx+0Ch]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4DDAC1
		lea	edx, [edi+16Ch]
		push	edx		; s2
		lea	ecx, [ebx+0Ch]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DDAC8
		lea	eax, [edi+28Ah]
		push	eax		; s2
		lea	edx, [ebx+68h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DDAC8

loc_4DDAC1:				; CODE XREF: .text:004DDA4Cj
					; .text:004DDA63j ...
		mov	eax, 1
		jmp	short loc_4DDACA
; ---------------------------------------------------------------------------

loc_4DDAC8:				; CODE XREF: .text:004DDAA8j
					; .text:004DDABFj
		xor	eax, eax

loc_4DDACA:				; CODE XREF: .text:004DDA42j
					; .text:004DDAC6j
		test	eax, eax
		jnz	short loc_4DDADC
		push	ebx		; item
		push	offset handles.sorted ;	sd
		call	Addsorteddata
		add	esp, 8

loc_4DDADC:				; CODE XREF: .text:004DDACCj
		mov	edx, [ebp-24h]
		push	edx		; hObject
		call	CloseHandle

loc_4DDAE5:				; CODE XREF: .text:004DD16Bj
					; .text:004DD19Aj
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-28h], 10h

loc_4DDAEC:				; CODE XREF: .text:004DD15Bj
		mov	ecx, [ebp-4]
		cmp	ecx, [ebp-10h]
		jge	short loc_4DDB01
		cmp	processid, 0
		jnz	loc_4DD160

loc_4DDB01:				; CODE XREF: .text:004DDAF2j
		push	offset handles.sorted ;	sd
		call	Deletenonconfirmedsorteddata
		pop	ecx
		mov	eax, [ebp-1Ch]
		push	eax		; data
		call	Memfree
		pop	ecx
		mov	eax, handles.sorted.n

loc_4DDB1B:				; CODE XREF: .text:004DD0A3j
					; .text:004DD111j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
