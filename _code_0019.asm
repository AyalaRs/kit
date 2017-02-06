.code

; Exported entry  59. _Getmonitorrect
; Exported entry 586. Getmonitorrect

; signed int __cdecl Getmonitorrect(int	x, int y, RECT *rc)
		public Getmonitorrect
Getmonitorrect:				; CODE XREF: .text:0040134Ap
					; .text:00401F37p ...
		push	ebp		; _Getmonitorrect
		mov	ebp, esp
		add	esp, 0FFFFFFC0h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	ebx, ebx
		jnz	short loc_412096
		or	eax, 0FFFFFFFFh
		jmp	loc_412144
; ---------------------------------------------------------------------------

loc_412096:				; CODE XREF: .text:0041208Cj
		test	esi, esi
		jge	short loc_4120D5
		test	edi, edi
		jge	short loc_4120D5
		cmp	hwollymain, 0
		jz	short loc_4120D5
		lea	edx, [ebp-18h]
		push	edx		; lpRect
		mov	ecx, hwollymain
		push	ecx		; hWnd
		call	GetWindowRect
		test	eax, eax
		jz	short loc_4120D5
		mov	esi, [ebp-18h]
		add	esi, [ebp-10h]
		sar	esi, 1
		jns	short loc_4120C8
		adc	esi, 0

loc_4120C8:				; CODE XREF: .text:004120C3j
		mov	edi, [ebp-14h]
		add	edi, [ebp-0Ch]
		sar	edi, 1
		jns	short loc_4120D5
		adc	edi, 0

loc_4120D5:				; CODE XREF: .text:00412098j
					; .text:0041209Cj ...
		cmp	_imp__MonitorFromPoint,	0
		jz	short loc_412125
		cmp	_imp__GetMonitorInfoW, 0
		jz	short loc_412125
		mov	[ebp-8], esi
		mov	[ebp-4], edi
		push	1		; _DWORD
		push	dword ptr [ebp-4] ; _DWORD
		push	dword ptr [ebp-8] ; _DWORD
		call	_imp__MonitorFromPoint
		test	eax, eax
		jz	short loc_412125
		mov	dword ptr [ebp-40h], 28h
		lea	edx, [ebp-40h]
		push	edx		; _DWORD
		push	eax		; _DWORD
		call	_imp__GetMonitorInfoW
		test	eax, eax
		jz	short loc_412125
		lea	esi, [ebp-2Ch]
		mov	edi, ebx
		mov	ecx, 4
		rep movsd
		xor	eax, eax
		jmp	short loc_412144
; ---------------------------------------------------------------------------

loc_412125:				; CODE XREF: .text:004120DCj
					; .text:004120E5j ...
		xor	edx, edx
		xor	ecx, ecx
		mov	[ebx], edx
		mov	[ebx+4], ecx
		push	0		; nIndex
		call	GetSystemMetrics
		mov	[ebx+8], eax
		push	1		; nIndex
		call	GetSystemMetrics
		mov	[ebx+0Ch], eax
		xor	eax, eax

loc_412144:				; CODE XREF: .text:00412091j
					; .text:00412123j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  60. _Sunkenframe
; Exported entry 732. Sunkenframe

; LONG __cdecl Sunkenframe(HDC dc, RECT	*rc, int flags)
		public Sunkenframe
Sunkenframe:				; CODE XREF: .text:0040BA55p
					; .text:0040BD2Fp ...
		push	ebp		; _Sunkenframe
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	loc_4122C8
		test	ebx, ebx
		jz	loc_4122C8
		mov	eax, [ebx+8]
		sub	eax, [ebx]
		cmp	eax, 6
		jl	loc_4122C8
		mov	edx, [ebx+0Ch]
		sub	edx, [ebx+4]
		cmp	edx, 4
		jl	loc_4122C8
		mov	ecx, g_Pen+0Ch
		push	ecx		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject
		test	edi, 2
		jz	short loc_4121BD
		push	0		; LPPOINT
		mov	eax, [ebx+4]
		push	eax		; int
		mov	edx, [ebx]
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebx+4]
		push	ecx		; int
		mov	eax, [ebx+8]
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		inc	dword ptr [ebx+4]

loc_4121BD:				; CODE XREF: .text:0041219Bj
		test	edi, 8
		jz	short loc_4121E5
		dec	dword ptr [ebx+0Ch]
		push	0		; LPPOINT
		mov	edx, [ebx+0Ch]
		push	edx		; int
		mov	ecx, [ebx]
		push	ecx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	eax, [ebx+0Ch]
		push	eax		; int
		mov	edx, [ebx+8]
		push	edx		; int
		push	esi		; HDC
		call	LineTo

loc_4121E5:				; CODE XREF: .text:004121C3j
		push	0		; LPPOINT
		mov	ecx, [ebx+0Ch]
		dec	ecx
		push	ecx		; int
		mov	eax, [ebx]
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebx+4]
		dec	edx
		push	edx		; int
		mov	ecx, [ebx]
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebx+0Ch]
		dec	eax
		push	eax		; int
		mov	edx, [ebx+8]
		dec	edx
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebx+4]
		dec	ecx
		push	ecx		; int
		mov	eax, [ebx+8]
		dec	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, g_Pen+14h
		push	edx		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject
		push	0		; LPPOINT
		mov	ecx, [ebx+0Ch]
		dec	ecx
		push	ecx		; int
		mov	eax, [ebx]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	MoveToEx
		mov	edx, [ebx+0Ch]
		dec	edx
		push	edx		; int
		mov	ecx, [ebx+8]
		add	ecx, 0FFFFFFFEh
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		mov	eax, [ebx+4]
		dec	eax
		push	eax		; int
		mov	edx, [ebx+8]
		add	edx, 0FFFFFFFEh
		push	edx		; int
		push	esi		; HDC
		call	LineTo
		mov	ecx, g_Pen+8
		push	ecx		; HGDIOBJ
		push	esi		; HDC
		call	SelectObject
		push	0		; LPPOINT
		mov	eax, [ebx+0Ch]
		add	eax, 0FFFFFFFEh
		push	eax		; int
		mov	edx, [ebx]
		inc	edx
		push	edx		; int
		push	esi		; HDC
		call	MoveToEx
		mov	ecx, [ebx+4]
		push	ecx		; int
		mov	eax, [ebx]
		inc	eax
		push	eax		; int
		push	esi		; HDC
		call	LineTo
		mov	edx, [ebx+4]
		push	edx		; int
		mov	ecx, [ebx+8]
		add	ecx, 0FFFFFFFEh
		push	ecx		; int
		push	esi		; HDC
		call	LineTo
		add	dword ptr [ebx], 2
		sub	dword ptr [ebx+8], 2
		inc	dword ptr [ebx+4]
		dec	dword ptr [ebx+0Ch]
		test	edi, 800h
		jz	short loc_4122C8
		mov	eax, g_Brush+4
		push	eax		; hbr
		push	ebx		; lprc
		push	esi		; hDC
		call	FillRect

loc_4122C8:				; CODE XREF: .text:0041215Dj
					; .text:00412165j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4122D0:				; CODE XREF: .text:loc_40FEDBp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFBCh
		push	ebx
		push	esi
		push	edi
		mov	edi, offset g_Stock_MAX
		push	550h		; n
		push	0		; c
		push	offset g_Stock	; s
		call	_memset
		add	esp, 0Ch
		xor	eax, eax
		mov	[edi], eax
		mov	word ptr [ebp-44h], 40h
		push	offset aStock_x	; src
		lea	edx, [ebp-42h]
		push	edx		; dst
		call	_wcscpy
		add	esp, 8
		xor	ebx, ebx

loc_41230F:				; CODE XREF: .text:00412363j
		push	ebx		; int
		call	GetStockObject
		mov	esi, eax
		test	esi, esi
		jz	short loc_41235F
		mov	[ebp-4], ebx
		push	0		; nontriv
		push	20h		; ntext
		lea	ecx, [ebp-4]
		mov	eax, [edi]
		mov	edx, eax
		shl	eax, 4
		add	eax, edx
		shl	eax, 2
		add	eax, offset g_Stock._name
		push	eax		; text
		push	4		; ndata
		push	ecx		; data
		lea	eax, [ebp-44h]
		push	eax		; prtype
		push	0		; pmod
		call	Decodeargument
		add	esp, 1Ch
		test	eax, eax
		jz	short loc_41235F
		mov	edx, [edi]
		mov	ecx, edx
		shl	edx, 4
		add	edx, ecx
		mov	dword ptr g_Stock.hgdi[edx*4], esi
		inc	dword ptr [edi]

loc_41235F:				; CODE XREF: .text:00412319j
					; .text:0041234Bj
		inc	ebx
		cmp	ebx, 14h
		jl	short loc_41230F
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  61. _Findstockobject
; Exported entry 536. Findstockobject

; unsigned int __cdecl Findstockobject(ulong gdihandle,	wchar_t	*_name, int nname)
		public Findstockobject
Findstockobject:			; CODE XREF: .text:0047F8E4p
		push	ebp		; _Findstockobject
		mov	ebp, esp
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ecx, [ebp+8]
		test	esi, esi
		jz	short loc_412380
		cmp	dword ptr [ebp+10h], 0
		jg	short loc_412385

loc_412380:				; CODE XREF: .text:00412378j
		xor	eax, eax
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_412385:				; CODE XREF: .text:0041237Ej
		cmp	dword_5C871C, 0
		jz	short loc_412393
		xor	eax, eax
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_412393:				; CODE XREF: .text:0041238Cj
		xor	eax, eax
		mov	edx, offset g_Stock
		jmp	short loc_4123C5
; ---------------------------------------------------------------------------

loc_41239C:				; CODE XREF: .text:004123CBj
		cmp	ecx, [edx]
		jnz	short loc_4123C1
		mov	ecx, eax
		shl	ecx, 4
		add	ecx, eax
		shl	ecx, 2
		add	ecx, offset g_Stock._name
		push	ecx		; src
		mov	eax, [ebp+10h]
		push	eax		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4123C1:				; CODE XREF: .text:0041239Ej
		inc	eax
		add	edx, 44h

loc_4123C5:				; CODE XREF: .text:0041239Aj
		cmp	eax, g_Stock_MAX
		jl	short loc_41239C
		xor	eax, eax
		pop	esi
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _wcsicoll(const wchar_t *s1, const wchar_t *s2)
__wcsicoll:				; DATA XREF: .text:004164BFo
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+0Ch]
		push	eax		; s2
		mov	edx, [ebp+8]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4123EC:				; DATA XREF: .data:stru_515C8Co
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+14h]
		test	eax, eax
		jnz	short loc_412410
		cmp	dword ptr [ebp+8], 0
		jz	short loc_412405
		cmp	process, 0
		jnz	short loc_412409

loc_412405:				; CODE XREF: .text:004123FAj
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_412409:				; CODE XREF: .text:00412403j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_412410:				; CODE XREF: .text:004123F4j
		dec	eax
		jnz	short loc_412431
		push	offset module.sorted ; sd
		call	Unmarknewsorteddata
		pop	ecx
		mov	edx, module.sorted.version
		mov	module.version,	edx
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_412431:				; CODE XREF: .text:00412411j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC menufunc
menufunc:				; DATA XREF: .text:00416DC6o
					; .data:stru_515C8Co
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+14h]
		mov	eax, [ebp+8]
		mov	edx, [eax+68h]
		push	edx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jz	short loc_412468
		cmp	dword ptr [eax+458h], 0
		jz	short loc_412468
		cmp	dword ptr [eax+45Ch], 0
		jnz	short loc_41246D

loc_412468:				; CODE XREF: .text:00412454j
					; .text:0041245Dj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41246D:				; CODE XREF: .text:00412466j
		test	ebx, ebx
		jnz	short loc_412479
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_412479:				; CODE XREF: .text:0041246Fj
		dec	ebx
		jnz	short loc_4124B6
		mov	edx, [eax+458h]
		mov	ecx, [eax+460h]
		cmp	edx, ecx
		ja	short loc_41249C
		mov	ebx, edx
		add	ebx, [eax+45Ch]
		cmp	ecx, ebx
		jnb	short loc_41249C
		mov	eax, ecx
		jmp	short loc_41249E
; ---------------------------------------------------------------------------

loc_41249C:				; CODE XREF: .text:0041248Aj
					; .text:00412496j
		mov	eax, edx

loc_41249E:				; CODE XREF: .text:0041249Aj
		push	0Dh		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	eax		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4124B6:				; CODE XREF: .text:0041247Aj
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4124BC:				; DATA XREF: .data:stru_515C8Co
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+14h]
		mov	eax, [ebp+8]
		mov	edx, [eax+68h]
		push	edx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jz	short loc_4124E3
		cmp	dword ptr [eax+46Ch], 0
		jnz	short loc_4124E8

loc_4124E3:				; CODE XREF: .text:004124D8j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4124E8:				; CODE XREF: .text:004124E1j
		test	ebx, ebx
		jnz	short loc_4124F4
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4124F4:				; CODE XREF: .text:004124EAj
		dec	ebx
		jnz	short loc_412518
		push	90h		; mode
		push	0		; stackaddr
		push	0		; selsize
		mov	edx, [eax+46Ch]
		push	edx		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_412518:				; CODE XREF: .text:004124F5j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __usercall loc_412520@<eax>(int@<eax>, int@<edx>,	int@<ecx>, int,	int, int, int)
loc_412520:				; DATA XREF: .data:stru_515C8Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi		; arglist
		mov	esi, [ebp+14h]
		mov	eax, [ebp+8]
		mov	edx, [eax+68h]
		push	edx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_412548
		cmp	word ptr [ebx+4Ch], 0
		jnz	short loc_41254C

loc_412548:				; CODE XREF: .text:0041253Fj
		xor	eax, eax
		jmp	short loc_4125B2
; ---------------------------------------------------------------------------

loc_41254C:				; CODE XREF: .text:00412546j
		test	esi, esi
		jnz	short loc_412557
		mov	eax, 1
		jmp	short loc_4125B2
; ---------------------------------------------------------------------------

loc_412557:				; CODE XREF: .text:0041254Ej
		dec	esi
		jnz	short loc_4125B0
		push	0		; strname
		push	0		; sel1
		push	0		; sel0
		lea	esi, [ebx+4Ch]
		push	0C0110h		; dumptype
		push	esi		; path
		push	0		; size
		push	0		; base
		push	0		; _title
		call	Createdumpwindow
		add	esp, 20h
		test	eax, eax
		jnz	short loc_41258F
		push	offset aUnableToLocate ; "Unable to locate executable file"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	short loc_4125AC
; ---------------------------------------------------------------------------

loc_41258F:				; CODE XREF: .text:00412579j
		push	esi		; path
		call	Findfiledump
		pop	ecx
		test	eax, eax
		jnz	short loc_4125AC
		push	offset aUnableToLocate ; "Unable to locate executable file"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx

loc_4125AC:				; CODE XREF: .text:0041258Dj
					; .text:00412598j
		xor	eax, eax
		jmp	short loc_4125B2
; ---------------------------------------------------------------------------

loc_4125B0:				; CODE XREF: .text:00412558j
		xor	eax, eax

loc_4125B2:				; CODE XREF: .text:0041254Aj
					; .text:00412555j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4125B8:				; DATA XREF: .data:stru_515C8Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+14h]
		mov	esi, [ebp+10h]
		mov	edi, [ebp+8]
		mov	eax, run.status
		test	eax, eax
		jz	short loc_4125D5
		cmp	eax, 14h
		jnz	short loc_4125D9

loc_4125D5:				; CODE XREF: .text:004125CEj
		xor	eax, eax
		jmp	short loc_41261C
; ---------------------------------------------------------------------------

loc_4125D9:				; CODE XREF: .text:004125D3j
		test	esi, esi
		jnz	short loc_4125F7
		mov	edx, [edi+68h]
		push	edx		; index
		add	edi, 44h
		push	edi		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	edx, eax
		test	edx, edx
		jnz	short loc_4125F7
		xor	eax, eax
		jmp	short loc_41261C
; ---------------------------------------------------------------------------

loc_4125F7:				; CODE XREF: .text:004125DBj
					; .text:004125F1j
		test	ebx, ebx
		jnz	short loc_412602
		mov	eax, 1
		jmp	short loc_41261C
; ---------------------------------------------------------------------------

loc_412602:				; CODE XREF: .text:004125F9j
		dec	ebx
		jnz	short loc_41261A
		test	esi, esi
		jnz	short loc_41260D
		mov	edx, [edx]
		jmp	short loc_41260F
; ---------------------------------------------------------------------------

loc_41260D:				; CODE XREF: .text:00412607j
		xor	edx, edx

loc_41260F:				; CODE XREF: .text:0041260Bj
		push	edx
		call	loc_4C25C0
		pop	ecx
		xor	eax, eax
		jmp	short loc_41261C
; ---------------------------------------------------------------------------

loc_41261A:				; CODE XREF: .text:00412603j
		xor	eax, eax

loc_41261C:				; CODE XREF: .text:004125D7j
					; .text:004125F5j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_412624:				; DATA XREF: .data:stru_515C8Co
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+14h]
		mov	eax, [ebp+8]
		mov	edx, [eax+68h]
		push	edx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jnz	short loc_412647
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_412647:				; CODE XREF: .text:00412640j
		test	ebx, ebx
		jnz	short loc_412653
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_412653:				; CODE XREF: .text:00412649j
		dec	ebx
		jnz	short loc_412677
		push	0		; int
		push	eax		; int
		call	loc_4A6BCC
		add	esp, 8
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_412677:				; CODE XREF: .text:00412654j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_41267C(int, wchar_t *dst, int, int)
loc_41267C:				; DATA XREF: .data:stru_515C8Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	eax, [ebp+8]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+14h]
		mov	edx, [eax+68h]
		add	eax, 44h
		push	edx		; index
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jnz	short loc_4126A2
		xor	eax, eax
		jmp	short loc_412705
; ---------------------------------------------------------------------------

loc_4126A2:				; CODE XREF: .text:0041269Cj
		test	ebx, ebx
		jnz	short loc_4126E8
		push	offset rtprot.range ; set
		call	Getrangecount
		pop	ecx
		test	eax, eax
		jnz	short loc_4126CC
		push	offset aLimitRunTraceP ; "Limit	run trace protocol to selected mo"...
		call	_T
		pop	ecx
		push	eax		; src
		push	esi		; dst
		call	_wcscpy
		add	esp, 8
		jmp	short loc_4126E1
; ---------------------------------------------------------------------------

loc_4126CC:				; CODE XREF: .text:004126B3j
		push	offset aAddModuleToRun ; "Add module to	run trace protocol"
		call	_T
		pop	ecx
		push	eax		; src
		push	esi		; dst
		call	_wcscpy
		add	esp, 8

loc_4126E1:				; CODE XREF: .text:004126CAj
		mov	eax, 1
		jmp	short loc_412705
; ---------------------------------------------------------------------------

loc_4126E8:				; CODE XREF: .text:004126A4j
		dec	ebx
		jnz	short loc_412703
		mov	edx, [eax]	; int
		mov	ecx, edx
		add	ecx, [eax+4]	; int
		push	ecx		; addr1
		push	edx		; addr0
		call	Addprotocolrange
		add	esp, 8
		mov	eax, 1
		jmp	short loc_412705
; ---------------------------------------------------------------------------

loc_412703:				; CODE XREF: .text:004126E9j
		xor	eax, eax

loc_412705:				; CODE XREF: .text:004126A0j
					; .text:004126E6j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; MENUFUNC AnalyseSel
_AnalyseSel:				; DATA XREF: .data:stru_515C8Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+14h]
		mov	eax, [ebp+8]
		mov	edx, [eax+68h]
		push	edx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_412731
		xor	eax, eax
		jmp	short loc_412774
; ---------------------------------------------------------------------------

loc_412731:				; CODE XREF: .text:0041272Bj
		test	esi, esi
		jnz	short loc_41273C
		mov	eax, 1
		jmp	short loc_412774
; ---------------------------------------------------------------------------

loc_41273C:				; CODE XREF: .text:00412733j
		dec	esi
		jnz	short loc_412772
		mov	esi, 1
		mov	eax, [ebx]
		push	eax
		call	loc_413A9C
		pop	ecx		; int
		dec	eax		; int
		jz	short loc_412751
		dec	esi

loc_412751:				; CODE XREF: .text:0041274Ej
		push	esi		; int
		push	1		; int
		push	ebx		; int
		call	loc_46EB44
		add	esp, 0Ch
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		xor	eax, eax
		jmp	short loc_412774
; ---------------------------------------------------------------------------

loc_412772:				; CODE XREF: .text:0041273Dj
		xor	eax, eax

loc_412774:				; CODE XREF: .text:0041272Fj
					; .text:0041273Aj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_412778:				; DATA XREF: .data:stru_515C8Co
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+14h]
		mov	eax, [ebp+8]
		mov	edx, [eax+68h]
		push	edx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jnz	short loc_41279B
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41279B:				; CODE XREF: .text:00412794j
		test	ebx, ebx
		jnz	short loc_4127A7
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4127A7:				; CODE XREF: .text:0041279Dj
		dec	ebx
		jnz	short loc_4127BA
		push	1
		push	eax
		call	loc_4A9D04
		add	esp, 8
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4127BA:				; CODE XREF: .text:004127A8j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4127C0:				; DATA XREF: .data:stru_515C8Co
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+14h]
		mov	eax, [ebp+8]
		mov	edx, [eax+68h]
		push	edx		; index
		add	eax, 44h
		push	eax		; sd
		call	Getsortedbyselection
		add	esp, 8
		test	eax, eax
		jnz	short loc_4127E3
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4127E3:				; CODE XREF: .text:004127DCj
		test	ebx, ebx
		jnz	short loc_4127EF
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4127EF:				; CODE XREF: .text:004127E5j
		dec	ebx
		jnz	short loc_412813
		push	1
		push	eax
		call	loc_4AB264
		add	esp, 8
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_412813:				; CODE XREF: .text:004127F0j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  62. _Findmodule
; Exported entry 521. Findmodule

; t_module *__cdecl Findmodule(ulong _addr)
		public Findmodule
Findmodule:				; CODE XREF: .text:00406C4Ep
					; .text:00409046p ...
		push	ebp		; _Findmodule
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		mov	esi, offset dword_5D8F3C
		test	ebx, ebx
		jnz	short loc_412839
		xor	eax, eax
		xor	edx, edx
		mov	[esi], eax
		xor	eax, eax
		mov	dword_515C88, edx
		jmp	short loc_41287D
; ---------------------------------------------------------------------------

loc_412839:				; CODE XREF: .text:00412827j
		mov	edx, module.sorted.version
		cmp	edx, dword_515C88
		jnz	short loc_41285D
		cmp	dword ptr [esi], 0
		jz	short loc_41285D
		mov	ecx, [esi]
		cmp	ebx, [ecx]
		jb	short loc_41285D
		mov	eax, [esi]
		mov	edx, [eax]
		add	edx, [eax+4]
		cmp	ebx, edx
		jb	short loc_41287B

loc_41285D:				; CODE XREF: .text:00412845j
					; .text:0041284Aj ...
		push	0		; subaddr
		push	ebx		; _addr
		push	offset module.sorted ; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	[esi], eax
		mov	ecx, module.sorted.version
		mov	dword_515C88, ecx

loc_41287B:				; CODE XREF: .text:0041285Bj
		mov	eax, [esi]

loc_41287D:				; CODE XREF: .text:00412837j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  63. _Findmodulebyname
; Exported entry 522. Findmodulebyname

; t_module *__cdecl Findmodulebyname(wchar_t *shortname)
		public Findmodulebyname
Findmodulebyname:			; _Findmodulebyname
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		xor	ebx, ebx
		mov	edi, [ebp+8]
		jmp	short loc_4128BD
; ---------------------------------------------------------------------------

loc_412891:				; CODE XREF: .text:004128C3j
		push	ebx		; index
		push	offset module.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jz	short loc_4128BC
		push	20h		; maxlen
		push	edi		; s2
		lea	eax, [esi+0Ch]
		push	eax		; s1
		call	__wcsnicmp
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_4128BC
		mov	eax, esi
		jmp	short loc_4128C7
; ---------------------------------------------------------------------------

loc_4128BC:				; CODE XREF: .text:004128A3j
					; .text:004128B6j
		inc	ebx

loc_4128BD:				; CODE XREF: .text:0041288Fj
		cmp	ebx, module.sorted.n
		jl	short loc_412891
		xor	eax, eax

loc_4128C7:				; CODE XREF: .text:004128BAj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  64. _Findmainmodule
; Exported entry 519. Findmainmodule

; t_module *Findmainmodule(void)
		public Findmainmodule
Findmainmodule:				; CODE XREF: .text:loc_44F374p
					; .text:loc_452146p ...
		push	ebp		; _Findmainmodule
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, offset module
		xor	ebx, ebx
		jmp	short loc_4128F2
; ---------------------------------------------------------------------------

loc_4128DA:				; CODE XREF: .text:004128F5j
		push	ebx		; index
		lea	eax, [esi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_4128F1
		test	byte ptr [eax+0Ah], 1
		jnz	short loc_4128F9

loc_4128F1:				; CODE XREF: .text:004128E9j
		inc	ebx

loc_4128F2:				; CODE XREF: .text:004128D8j
		cmp	ebx, [esi+44h]
		jl	short loc_4128DA
		xor	eax, eax

loc_4128F9:				; CODE XREF: .text:004128EFj
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
		
; Exported entry  65. _Issystem
; Exported entry 638. Issystem

; bool __cdecl Issystem(ulong _addr)
		public Issystem
Issystem:				; CODE XREF: .text:0044D8F6p
					; .text:0044D9E4p ...
		push	ebp		; _Issystem
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_41290E
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41290E:				; CODE XREF: .text:00412908j
		push	eax		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_41291D
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41291D:				; CODE XREF: .text:00412917j
		test	byte ptr [eax+0Ah], 30h
		jnz	short loc_412927
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_412927:				; CODE XREF: .text:00412921j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  66. _Findfixup
; Exported entry 511. Findfixup

; ulong	*__cdecl Findfixup(t_module *pmod, ulong _addr)
		public Findfixup
Findfixup:				; CODE XREF: .text:004169E6p
					; .text:0043BF8Fp ...
		push	ebp		; _Findfixup
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_41294E
		push	esi		; _addr
		call	Findmodule
		pop	ecx
		test	eax, eax
		jnz	short loc_41294E
		xor	eax, eax
		jmp	short loc_4129AA
; ---------------------------------------------------------------------------

loc_41294E:				; CODE XREF: .text:0041293Dj
					; .text:00412948j
		mov	edx, [eax+8F0h]
		test	edx, edx
		jz	short loc_412961
		cmp	dword ptr [eax+8ECh], 0
		jnz	short loc_412965

loc_412961:				; CODE XREF: .text:00412956j
		xor	eax, eax
		jmp	short loc_4129AA
; ---------------------------------------------------------------------------

loc_412965:				; CODE XREF: .text:0041295Fj
		xor	ecx, ecx
		mov	ebx, [eax+8ECh]

loc_41296D:				; CODE XREF: .text:00412998j
		lea	eax, [ebx+ecx]
		sar	eax, 1
		jns	short loc_412977
		adc	eax, 0

loc_412977:				; CODE XREF: .text:00412972j
		cmp	esi, [edx+eax*4]
		jnb	short loc_412980
		mov	ebx, eax
		jmp	short loc_412996
; ---------------------------------------------------------------------------

loc_412980:				; CODE XREF: .text:0041297Aj
		mov	ecx, [edx+eax*4]
		add	ecx, 4
		cmp	esi, ecx
		jb	short loc_41298F
		lea	ecx, [eax+1]
		jmp	short loc_412996
; ---------------------------------------------------------------------------

loc_41298F:				; CODE XREF: .text:00412988j
		shl	eax, 2
		add	edx, eax
		jmp	short loc_41299F
; ---------------------------------------------------------------------------

loc_412996:				; CODE XREF: .text:0041297Ej
					; .text:0041298Dj
		cmp	ebx, ecx
		jg	short loc_41296D
		shl	ecx, 2
		add	edx, ecx

loc_41299F:				; CODE XREF: .text:00412994j
		cmp	dword ptr [edx], 0
		jnz	short loc_4129A8
		xor	eax, eax
		jmp	short loc_4129AA
; ---------------------------------------------------------------------------

loc_4129A8:				; CODE XREF: .text:004129A2j
		mov	eax, edx

loc_4129AA:				; CODE XREF: .text:0041294Cj
					; .text:00412963j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  67. _Findfileoffset
; Exported entry 510. Findfileoffset

; char *__cdecl	Findfileoffset(t_module	*pmod, ulong _addr)
		public Findfileoffset
Findfileoffset:				; CODE XREF: .text:00415635p
					; .text:00415FE4p ...
		push	ebp		; _Findfileoffset
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+0Ch]
		mov	edx, [ebp+8]
		test	ebx, ebx
		jnz	short loc_4129C4
		xor	eax, eax
		jmp	short loc_412A3F
; ---------------------------------------------------------------------------

loc_4129C4:				; CODE XREF: .text:004129BEj
		test	edx, edx
		jnz	short loc_4129D1
		push	ebx		; _addr
		call	Findmodule
		pop	ecx
		mov	edx, eax

loc_4129D1:				; CODE XREF: .text:004129C6j
		test	edx, edx
		jnz	short loc_4129D9
		xor	eax, eax
		jmp	short loc_412A3F
; ---------------------------------------------------------------------------

loc_4129D9:				; CODE XREF: .text:004129D3j
		mov	eax, [edx]
		cmp	ebx, eax
		jb	short loc_4129E8
		mov	ecx, eax
		add	ecx, [edx+4]
		cmp	ebx, ecx
		jb	short loc_4129EC

loc_4129E8:				; CODE XREF: .text:004129DDj
		xor	eax, eax
		jmp	short loc_412A3F
; ---------------------------------------------------------------------------

loc_4129EC:				; CODE XREF: .text:004129E6j
		mov	ecx, ebx
		sub	ecx, eax
		cmp	ecx, [edx+8DCh]
		jnb	short loc_4129FE
		mov	eax, ebx
		sub	eax, [edx]
		jmp	short loc_412A3F
; ---------------------------------------------------------------------------

loc_4129FE:				; CODE XREF: .text:004129F6j
		mov	eax, [edx+8E8h]
		test	eax, eax
		jnz	short loc_412A0C
		xor	eax, eax
		jmp	short loc_412A3F
; ---------------------------------------------------------------------------

loc_412A0C:				; CODE XREF: .text:00412A06j
		test	eax, eax
		jnz	short loc_412A14
		xor	eax, eax
		jmp	short loc_412A3F
; ---------------------------------------------------------------------------

loc_412A14:				; CODE XREF: .text:00412A0Ej
		xor	esi, esi
		jmp	short loc_412A35
; ---------------------------------------------------------------------------

loc_412A18:				; CODE XREF: .text:00412A3Bj
		mov	ecx, [eax+18h]
		cmp	ebx, ecx
		jb	short loc_412A31
		mov	edi, ecx
		add	edi, [eax+28h]
		cmp	ebx, edi
		jnb	short loc_412A31
		sub	ebx, ecx
		add	ebx, [eax+24h]
		mov	eax, ebx
		jmp	short loc_412A3F
; ---------------------------------------------------------------------------

loc_412A31:				; CODE XREF: .text:00412A1Dj
					; .text:00412A26j
		inc	esi
		add	eax, 30h

loc_412A35:				; CODE XREF: .text:00412A16j
		cmp	esi, [edx+8E4h]
		jl	short loc_412A18
		xor	eax, eax

loc_412A3F:				; CODE XREF: .text:004129C2j
					; .text:004129D7j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
		