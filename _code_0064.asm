.code

; ---------------------------------------------------------------------------
		align 10h
; Exported entry 249. _Redrawcpudisasm
; Exported entry 686. Redrawcpudisasm

; BOOL __cdecl Redrawcpudisasm()
		public Redrawcpudisasm
Redrawcpudisasm:			; CODE XREF: .text:0040A002p
					; .text:loc_477DE6p
		push	ebp		; _Redrawcpudisasm
		mov	ebp, esp
		cmp	dword_5E6184, 0
		jz	short loc_4775DB
		push	0		; bErase
		push	0		; lpRect
		mov	eax, g_disasmdump.table.hw
		push	eax		; hWnd
		call	InvalidateRect

loc_4775DB:				; CODE XREF: .text:004775CAj
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 250. _Redrawcpureg
; Exported entry 687. Redrawcpureg

; int __cdecl Redrawcpureg()
		public Redrawcpureg
Redrawcpureg:				; CODE XREF: .text:loc_40B536p
					; .text:004D130Ap
		push	ebp		; _Redrawcpureg
		mov	ebp, esp
		cmp	dword_5E6184, 0
		jz	short loc_4775F7
		push	offset stru_5E6D24
		call	loc_494D60
		pop	ecx

loc_4775F7:				; CODE XREF: .text:004775EAj
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 251. _Getcputhreadid
; Exported entry 562. Getcputhreadid

; ulong	__cdecl	Getcputhreadid()
		public Getcputhreadid
Getcputhreadid:				; CODE XREF: .text:00406B2Ep
					; .text:loc_40902Bp ...
		push	ebp		; _Getcputhreadid
		mov	ebp, esp
		mov	eax, g_disasmdump.threadid
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 252. _Getcpuruntracebackstep
; Exported entry 560. Getcpuruntracebackstep

; int __cdecl Getcpuruntracebackstep()
		public Getcpuruntracebackstep
Getcpuruntracebackstep:			; CODE XREF: .text:loc_410408p
		push	ebp		; _Getcpuruntracebackstep
		mov	ebp, esp
		mov	eax, g_disasmdump.table.rtback
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 253. _Getcpudisasmdump
; Exported entry 556. Getcpudisasmdump

; t_dump *__cdecl Getcpudisasmdump()
		public Getcpudisasmdump
Getcpudisasmdump:			; CODE XREF: .text:00495375p
		push	ebp		; _Getcpudisasmdump
		mov	ebp, esp
		mov	eax, offset g_disasmdump
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 254. _Getcpudisasmselection
; Exported entry 557. Getcpudisasmselection

; ulong	__cdecl	Getcpudisasmselection()
		public Getcpudisasmselection
Getcpudisasmselection:			; CODE XREF: .text:loc_40B202p
		push	ebp		; _Getcpudisasmselection
		mov	ebp, esp
		mov	eax, g_disasmdump.sel0
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 255. _Getcpudisasmtable
; Exported entry 558. Getcpudisasmtable

; t_table *__cdecl Getcpudisasmtable()
		public Getcpudisasmtable
Getcpudisasmtable:			; CODE XREF: .text:0041A16Dp
					; .text:loc_436AFCp ...
		push	ebp		; _Getcpudisasmtable
		mov	ebp, esp
		mov	eax, offset g_disasmdump.table
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 256. _Getcpudumpdump
; Exported entry 559. Getcpudumpdump

; t_dump *__cdecl Getcpudumpdump()
		public Getcpudumpdump
Getcpudumpdump:				; _Getcpudumpdump
		push	ebp
		mov	ebp, esp
		mov	eax, offset g_dumpdump
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 257. _Getcpustackdump
; Exported entry 561. Getcpustackdump

; t_dump *__cdecl Getcpustackdump()
		public Getcpustackdump
Getcpustackdump:			; _Getcpustackdump
		push	ebp
		mov	ebp, esp
		mov	eax, offset g_stackdump
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_477650:				; CODE XREF: .text:loc_409F6Ap
		mov	edx, offset run
		push	ebp
		mov	ebp, esp
		mov	eax, [edx]
		cmp	eax, 9
		jz	short loc_477669
		cmp	eax, 0Ah
		jz	short loc_477669
		cmp	eax, 0Bh
		jnz	short loc_47767A

loc_477669:				; CODE XREF: .text:0047765Dj
					; .text:00477662j
		push	1		; autoupdate
		push	offset g_disasmdump.table ; pt
		call	Setautoupdate
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_47767A:				; CODE XREF: .text:00477667j
		cmp	dword_5CBB98, 1
		jnz	short loc_4776B4
		mov	eax, [edx]
		cmp	eax, 3
		jz	short loc_4776A3
		cmp	eax, 4
		jz	short loc_4776A3
		cmp	eax, 0Bh
		jz	short loc_4776A3
		cmp	eax, 0Ch
		jz	short loc_4776A3
		cmp	eax, 0Eh
		jz	short loc_4776A3
		cmp	eax, 10h
		jnz	short loc_4776B4

loc_4776A3:				; CODE XREF: .text:00477688j
					; .text:0047768Dj ...
		push	1		; autoupdate
		push	offset g_disasmdump.table ; pt
		call	Setautoupdate
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4776B4:				; CODE XREF: .text:00477681j
					; .text:004776A1j
		mov	eax, [edx]
		test	eax, eax
		jz	short loc_4776C4
		cmp	eax, 12h
		jz	short loc_4776C4
		cmp	eax, 13h
		jnz	short loc_4776D4

loc_4776C4:				; CODE XREF: .text:004776B8j
					; .text:004776BDj
		push	0		; autoupdate
		call	Getcpudisasmtable
		push	eax		; pt
		call	Setautoupdate
		add	esp, 8

loc_4776D4:				; CODE XREF: .text:004776C2j
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4776D8:				; CODE XREF: .text:0040B031p
					; .text:00410112p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		mov	ebx, offset word_5E6130
;		mov	esi, offset aModifyS ; "Modify %s"
;__DebugBreak
		cmp	word ptr [ebx],	0
		jnz	loc_477A2B
		lea	eax, aCpu_0;[esi+864h]
		push	eax		; src
		push	ebx		; dst
		call	_wcscpy
		mov	dword ptr [ebx+40h], 1
		mov	dword ptr [ebx+44h], 220000h
		mov	dword ptr [ebx+48h], offset stru_53C890
		add	esp, 8
		mov	edx, g_Color_index
		mov	[ebx+50h], edx
		lea	ecx, aCpuDisasm;[esi+86Ch]
		push	ecx		; src
		push	offset g_disasmdump.table ; dst
		call	_wcscpy
		xor	eax, eax
		mov	g_disasmdump.table.mode, 3058121h
		mov	g_disasmdump.table.bar.visible,	eax
		mov	g_disasmdump.menutype, 10001h
		xor	edx, edx
		mov	g_disasmdump.table.tabfunc, offset tabfunc
		mov	g_disasmdump.table.custommode, edx
		xor	ecx, ecx
		mov	g_disasmdump.table.customdata, offset g_disasmdump
		mov	g_disasmdump.table.updatefunc, ecx
		xor	eax, eax
		mov	g_disasmdump.table.drawfunc, offset _tabddraw
		mov	g_disasmdump.table.tableselfunc, eax
		add	esp, 8
		mov	g_disasmdump.table.menu, offset	stru_5532C8
		xor	edx, edx
		mov	g_disasmdump.relreg, 0FFFFFFFFh
		mov	g_disasmdump.reladdr, edx
		xor	ecx, ecx
		push	40C0110h	; dumptype
		mov	g_disasmdump.graylimit,	ecx
		mov	g_disasmdump.dumpselfunc, offset tabdumpsel
		push	offset g_disasmdump ; pd
		call	Setdumptype
		add	esp, 8
		lea	eax, aCpuInfo;[esi+882h]
		push	eax		; src
		push	offset stru_5E6AB8 ; dst
		call	_wcscpy
		mov	stru_5E6AB8.mode, 0C10B03h
		mov	stru_5E6AB8.bar.nbar, 1
		xor	edx, edx
		mov	stru_5E6AB8.bar.visible, 1
		xor	ecx, ecx
		mov	stru_5E6AB8.bar._name, edx
		mov	stru_5E6AB8.bar.expl, ecx
		mov	stru_5E6AB8.bar.mode, 8
		mov	stru_5E6AB8.bar.defdx, 100h
		xor	eax, eax
		mov	stru_5E6AB8.tabfunc, offset loc_4773CC
		mov	stru_5E6AB8.custommode,	eax
		xor	edx, edx
		xor	ecx, ecx
		mov	stru_5E6AB8.customdata,	edx
		mov	stru_5E6AB8.updatefunc,	ecx
		add	esp, 8
		xor	eax, eax
		mov	stru_5E6AB8.drawfunc, offset loc_477178
		mov	stru_5E6AB8.tableselfunc, eax
		lea	edx, aCpuRegisters;[esi+894h]
		mov	stru_5E6AB8.menu, offset stru_53F05C
		push	edx		; int
		mov	stru_5E6AB8.sorted.n, 5
		mov	stru_5E6AB8.sorted.selected, 0FFFFFFFFh
		push	offset stru_5E6D24 ; lpAppName
		call	loc_496D54
		add	esp, 8
		lea	ecx, $CTW0("CPU Dump");[esi+3CAh]
		push	ecx		; src
		push	offset g_dumpdump.table	; dst
		call	_wcscpy
		add	esp, 8
		lea	eax, [ebp-4]
		mov	dword ptr [ebp-4], 4011001h
		push	eax		; arglist
		lea	edx, $CTW0("%08X");[esi+230h]
		push	edx		; format
		lea	ecx, aLocal_2;[esi+8B0h]
		push	ecx		; key
		push	offset g_dumpdump.table	; section
		mov	g_dumpdump.table.mode, 3158121h
		mov	g_dumpdump.table.bar.visible, 1
		push	0		; file
		call	Getfromini
		mov	g_dumpdump.menutype, 20000h
		xor	eax, eax
		mov	g_dumpdump.table.tabfunc, offset tabfunc
		mov	g_dumpdump.table.custommode, eax
		xor	edx, edx
		mov	g_dumpdump.table.customdata, offset g_dumpdump
		mov	g_dumpdump.table.updatefunc, edx
		xor	ecx, ecx
		mov	g_dumpdump.table.drawfunc, offset _tabddraw
		mov	g_dumpdump.table.tableselfunc, ecx
		mov	g_dumpdump.table.menu, offset stru_5532C8
		xor	eax, eax
		add	esp, 14h
		mov	g_dumpdump.relreg, 0FFFFFFFFh
		mov	g_dumpdump.reladdr, eax
		xor	edx, edx
		mov	eax, [ebp-4]
		mov	g_dumpdump.graylimit, edx
		push	eax		; dumptype
		xor	ecx, ecx
		mov	g_dumpdump.dumpselfunc,	ecx
		push	offset g_dumpdump ; pd
		call	Setdumptype
		add	esp, 8
		lea	edx, $CTW0("CPU Stack");[esi+420h]
		push	edx		; src
		push	offset g_stackdump.table ; dst
		call	_wcscpy
		add	esp, 8
		xor	ecx, ecx
		mov	dword ptr [ebp-4], 0A0104h
		lea	eax, [ebp-4]
		mov	g_stackdump.table.mode,	1158121h
		mov	g_stackdump.table.bar.visible, ecx
		push	eax		; arglist
		lea	edx, $CTW0("%08X");[esi+230h]
		lea	ecx, aLocal_2;[esi+8B0h]
		push	edx		; format
		push	ecx		; key
		push	offset g_stackdump.table ; section
		push	0		; file
		call	Getfromini
		add	esp, 14h
		cmp	dword ptr [ebp-4], 90104h
		jz	short loc_4779B0
		cmp	dword ptr [ebp-4], 0B0104h
		jz	short loc_4779B0
		mov	dword ptr [ebp-4], 0A0104h

loc_4779B0:				; CODE XREF: .text:0047799Ej
					; .text:004779A7j
		mov	g_stackdump.menutype, 40000h
		xor	eax, eax
		mov	g_stackdump.table.tabfunc, offset tabfunc
		mov	g_stackdump.table.custommode, eax
		xor	edx, edx
		mov	g_stackdump.table.customdata, offset g_stackdump
		mov	g_stackdump.table.updatefunc, edx
		xor	ecx, ecx
		mov	g_stackdump.table.drawfunc, offset _tabddraw
		mov	g_stackdump.table.tableselfunc,	ecx
		mov	g_stackdump.table.menu,	offset stru_5532C8
		xor	eax, eax
		mov	g_stackdump.relreg, 0FFFFFFFFh
		mov	g_stackdump.reladdr, eax
		xor	edx, edx
		mov	eax, [ebp-4]
		push	eax		; dumptype
		mov	g_stackdump.graylimit, edx
		xor	ecx, ecx
		push	offset g_stackdump ; pd
		mov	g_stackdump.dumpselfunc, ecx
		call	Setdumptype
		add	esp, 8

loc_477A2B:				; CODE XREF: .text:004776ECj
		cmp	dword ptr [ebx+54h], 0
		jnz	short loc_477A51
		lea	edx, aCpu_0;[esi+864h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; _title
		lea	ecx, aCpuDisasm;[esi+8BCh]
		push	ecx		; icon
		push	ebx		; pf
		call	Createframewindow
		add	esp, 0Ch
		jmp	short loc_477A5E
; ---------------------------------------------------------------------------

loc_477A51:				; CODE XREF: .text:00477A2Fj
		push	0		; bErase
		push	0		; lpRect
		mov	eax, [ebx+54h]
		push	eax		; hWnd
		call	InvalidateRect

loc_477A5E:				; CODE XREF: .text:00477A4Fj
		cmp	dword ptr [ebx+54h], 0
		jz	short loc_477AA5
		cmp	dword ptr [ebp+8], 0
		jz	short loc_477AA5
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_477A84
		push	0		; lParam
		mov	edx, [ebx+54h]
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_477A84:				; CODE XREF: .text:00477A71j
		mov	ecx, [ebx+54h]
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_477A9C
		push	9		; nCmdShow
		mov	eax, [ebx+54h]
		push	eax		; hWnd
		call	ShowWindow

loc_477A9C:				; CODE XREF: .text:00477A8Fj
		mov	edx, [ebx+54h]
		push	edx		; hWnd
		call	SetFocus

loc_477AA5:				; CODE XREF: .text:00477A62j
					; .text:00477A68j
		mov	eax, [ebx+54h]
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_477AB0:				; CODE XREF: .text:004106D0p
		push	ebp
		mov	ebp, esp
		mov	eax, stru_5E6D24.customdata
		test	eax, eax
		jz	short loc_477ACB
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	stru_5E6D24.customdata,	edx

loc_477ACB:				; CODE XREF: .text:00477ABAj
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_477AD0:				; CODE XREF: .text:0044AD4Cp
					; .text:0044B322p ...
		xor	eax, eax
		xor	edx, edx
		mov	ph.hcurr, eax
		mov	ph.hnext, eax
		mov	ph.holdest, eax
		mov	stru_5C3710.hcurr, edx
		mov	stru_5C3710.hnext, edx
		push	ebp
		mov	ebp, esp
		mov	stru_5C3710.holdest, edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 258. _Addtohistory
; Exported entry 398. Addtohistory

; int __cdecl Addtohistory(t_history *ph, ulong	threadid, ulong	dumptype, ulong	_addr, ulong sel0, ulong	sel1)
		public Addtohistory
Addtohistory:				; CODE XREF: .text:004780AFp
					; .text:004780E0p ...
		push	ebp		; _Addtohistory
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+14h]
		mov	esi, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	loc_477BD4
		test	ebx, ebx
		jz	loc_477BD4
		mov	edx, [eax+5008h]
		cmp	edx, [eax+5000h]
		jz	short loc_477B6B
		add	edx, 3FFh
		and	edx, 800003FFh
		jns	short loc_477B3E
		dec	edx
		or	edx, 0FFFFFC00h
		inc	edx

loc_477B3E:				; CODE XREF: .text:00477B34j
		mov	ecx, edx
		shl	ecx, 2
		lea	ecx, [ecx+ecx*4]
		add	ecx, eax
		mov	edx, ecx
		cmp	esi, [edx]
		jnz	short loc_477B6B
		mov	ecx, [edx+4]
		cmp	ecx, [ebp+10h]
		jnz	short loc_477B6B
		cmp	ebx, [edx+8]
		jnz	short loc_477B6B
		mov	ecx, [edx+0Ch]
		cmp	ecx, [ebp+18h]
		jnz	short loc_477B6B
		mov	edx, [edx+10h]
		cmp	edx, [ebp+1Ch]
		jz	short loc_477BD4

loc_477B6B:				; CODE XREF: .text:00477B26j
					; .text:00477B4Cj ...
		mov	ecx, [eax+5008h]
		inc	ecx
		and	ecx, 800003FFh
		jns	short loc_477B82
		dec	ecx
		or	ecx, 0FFFFFC00h
		inc	ecx

loc_477B82:				; CODE XREF: .text:00477B78j
		mov	edx, [eax+5000h]
		cmp	ecx, edx
		jnz	short loc_477BA3
		inc	edx
		and	edx, 800003FFh
		jns	short loc_477B9D
		dec	edx
		or	edx, 0FFFFFC00h
		inc	edx

loc_477B9D:				; CODE XREF: .text:00477B93j
		mov	[eax+5000h], edx

loc_477BA3:				; CODE XREF: .text:00477B8Aj
		mov	edx, [eax+5008h]
		shl	edx, 2
		lea	edx, [edx+edx*4]
		add	edx, eax
		mov	[edx], esi
		mov	esi, [ebp+10h]
		mov	[edx+4], esi
		mov	[edx+8], ebx
		mov	ebx, [ebp+18h]
		mov	[edx+0Ch], ebx
		mov	ebx, [ebp+1Ch]
		mov	[edx+10h], ebx
		mov	[eax+5008h], ecx
		mov	[eax+5004h], ecx

loc_477BD4:				; CODE XREF: .text:00477B0Cj
					; .text:00477B14j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 259. _Walkhistory
; Exported entry 748. Walkhistory

; signed int __cdecl Walkhistory(t_history *ph,	int dir, ulong *threadid, ulong	*dumptype, ulong *_addr,	ulong *sel0, ulong *sel1)
		public Walkhistory
Walkhistory:				; CODE XREF: .text:004B4CFEp
		push	ebp		; _Walkhistory
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+10h]
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_477BF2
		or	eax, 0FFFFFFFFh
		jmp	loc_477CCA
; ---------------------------------------------------------------------------

loc_477BF2:				; CODE XREF: .text:00477BE8j
		test	edx, edx
		jge	short loc_477C24
		mov	edx, [eax+5008h]
		cmp	edx, [eax+5000h]
		jnz	short loc_477C0C
		or	eax, 0FFFFFFFFh
		jmp	loc_477CCA
; ---------------------------------------------------------------------------

loc_477C0C:				; CODE XREF: .text:00477C02j
		add	edx, 3FFh
		and	edx, 800003FFh
		jns	short loc_477C57
		dec	edx
		or	edx, 0FFFFFC00h
		inc	edx
		jmp	short loc_477C57
; ---------------------------------------------------------------------------

loc_477C24:				; CODE XREF: .text:00477BF4j
		test	edx, edx
		jle	short loc_477C51
		mov	edx, [eax+5008h]
		cmp	edx, [eax+5004h]
		jnz	short loc_477C3E
		or	eax, 0FFFFFFFFh
		jmp	loc_477CCA
; ---------------------------------------------------------------------------

loc_477C3E:				; CODE XREF: .text:00477C34j
		inc	edx
		and	edx, 800003FFh
		jns	short loc_477C57
		dec	edx
		or	edx, 0FFFFFC00h
		inc	edx
		jmp	short loc_477C57
; ---------------------------------------------------------------------------

loc_477C51:				; CODE XREF: .text:00477C26j
		mov	edx, [eax+5008h]

loc_477C57:				; CODE XREF: .text:00477C18j
					; .text:00477C22j ...
		cmp	edx, [eax+5000h]
		jnz	short loc_477C64
		or	eax, 0FFFFFFFFh
		jmp	short loc_477CCA
; ---------------------------------------------------------------------------

loc_477C64:				; CODE XREF: .text:00477C5Dj
		lea	ecx, [edx+3FFh]
		and	ecx, 800003FFh
		jns	short loc_477C7A
		dec	ecx
		or	ecx, 0FFFFFC00h
		inc	ecx

loc_477C7A:				; CODE XREF: .text:00477C70j
		shl	ecx, 2
		lea	ecx, [ecx+ecx*4]
		add	ecx, eax
		test	ebx, ebx
		jz	short loc_477C8A
		mov	esi, [ecx]
		mov	[ebx], esi

loc_477C8A:				; CODE XREF: .text:00477C84j
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_477C98
		mov	ebx, [ecx+4]
		mov	esi, [ebp+14h]
		mov	[esi], ebx

loc_477C98:				; CODE XREF: .text:00477C8Ej
		cmp	dword ptr [ebp+18h], 0
		jz	short loc_477CA6
		mov	ebx, [ecx+8]
		mov	esi, [ebp+18h]
		mov	[esi], ebx

loc_477CA6:				; CODE XREF: .text:00477C9Cj
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_477CB4
		mov	ebx, [ecx+0Ch]
		mov	esi, [ebp+1Ch]
		mov	[esi], ebx

loc_477CB4:				; CODE XREF: .text:00477CAAj
		cmp	dword ptr [ebp+20h], 0
		jz	short loc_477CC2
		mov	ecx, [ecx+10h]
		mov	ebx, [ebp+20h]
		mov	[ebx], ecx

loc_477CC2:				; CODE XREF: .text:00477CB8j
		mov	[eax+5008h], edx
		xor	eax, eax

loc_477CCA:				; CODE XREF: .text:00477BEDj
					; .text:00477C07j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 260. _Checkhistory
; Exported entry 418. Checkhistory

; signed int __cdecl Checkhistory(t_history *ph, int dir, int *isnewest)
		public Checkhistory
Checkhistory:				; CODE XREF: .text:004B4C3Ap
		push	ebp		; _Checkhistory
		mov	ebp, esp
		push	ebx
		push	esi
		mov	edx, [ebp+10h]
		mov	ecx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_477CF2
		test	edx, edx
		jz	short loc_477CEA
		xor	eax, eax
		mov	[edx], eax

loc_477CEA:				; CODE XREF: .text:00477CE4j
		or	eax, 0FFFFFFFFh
		jmp	loc_477D85
; ---------------------------------------------------------------------------

loc_477CF2:				; CODE XREF: .text:00477CE0j
		test	edx, edx
		jz	short loc_477D17
		mov	esi, [eax+5004h]
		cmp	esi, [eax+5000h]
		jz	short loc_477D0C
		cmp	esi, [eax+5008h]
		jz	short loc_477D10

loc_477D0C:				; CODE XREF: .text:00477D02j
		xor	ebx, ebx
		jmp	short loc_477D15
; ---------------------------------------------------------------------------

loc_477D10:				; CODE XREF: .text:00477D0Aj
		mov	ebx, 1

loc_477D15:				; CODE XREF: .text:00477D0Ej
		mov	[edx], ebx

loc_477D17:				; CODE XREF: .text:00477CF4j
		test	ecx, ecx
		jge	short loc_477D46
		mov	edx, [eax+5008h]
		cmp	edx, [eax+5000h]
		jnz	short loc_477D2E
		or	eax, 0FFFFFFFFh
		jmp	short loc_477D85
; ---------------------------------------------------------------------------

loc_477D2E:				; CODE XREF: .text:00477D27j
		add	edx, 3FFh
		and	edx, 800003FFh
		jns	short loc_477D76
		dec	edx
		or	edx, 0FFFFFC00h
		inc	edx
		jmp	short loc_477D76
; ---------------------------------------------------------------------------

loc_477D46:				; CODE XREF: .text:00477D19j
		test	ecx, ecx
		jle	short loc_477D70
		mov	edx, [eax+5008h]
		cmp	edx, [eax+5004h]
		jnz	short loc_477D5D
		or	eax, 0FFFFFFFFh
		jmp	short loc_477D85
; ---------------------------------------------------------------------------

loc_477D5D:				; CODE XREF: .text:00477D56j
		inc	edx
		and	edx, 800003FFh
		jns	short loc_477D76
		dec	edx
		or	edx, 0FFFFFC00h
		inc	edx
		jmp	short loc_477D76
; ---------------------------------------------------------------------------

loc_477D70:				; CODE XREF: .text:00477D48j
		mov	edx, [eax+5008h]

loc_477D76:				; CODE XREF: .text:00477D3Aj
					; .text:00477D44j ...
		cmp	edx, [eax+5000h]
		jnz	short loc_477D83
		or	eax, 0FFFFFFFFh
		jmp	short loc_477D85
; ---------------------------------------------------------------------------

loc_477D83:				; CODE XREF: .text:00477D7Cj
		xor	eax, eax

loc_477D85:				; CODE XREF: .text:00477CEDj
					; .text:00477D2Cj ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_477D8C:				; CODE XREF: .text:004B4D51p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax		; dumptype
		push	offset g_dumpdump ; pd
		call	Setdumptype
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_477DA4:				; CODE XREF: .text:00496A48p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		cmp	g_disasmdump.hilitereg,	1
		jnz	short loc_477DC4
		cmp	eax, g_disasmdump.hiregindex
		jnz	short loc_477DC4
		xor	eax, eax
		mov	g_disasmdump.hilitereg,	eax
		jmp	short loc_477DE6
; ---------------------------------------------------------------------------

loc_477DC4:				; CODE XREF: .text:00477DB1j
					; .text:00477DB9j
		test	eax, eax
		jl	short loc_477DCD
		cmp	eax, 8
		jl	short loc_477DD7

loc_477DCD:				; CODE XREF: .text:00477DC6j
		xor	edx, edx
		mov	g_disasmdump.hilitereg,	edx
		jmp	short loc_477DE6
; ---------------------------------------------------------------------------

loc_477DD7:				; CODE XREF: .text:00477DCBj
		mov	g_disasmdump.hilitereg,	1
		mov	g_disasmdump.hiregindex, eax

loc_477DE6:				; CODE XREF: .text:00477DC2j
					; .text:00477DD5j
		call	Redrawcpudisasm
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 261. _Setcpu
; Exported entry 710. Setcpu

; _DWORD __cdecl Setcpu(ulong threadid,	ulong asmaddr, ulong dumpaddr, ulong selsize, ulong stackaddr, int mode)
		public Setcpu
Setcpu:					; CODE XREF: .text:00410420p
					; .text:004124A9p ...
		push	ebp		; _Setcpu
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFF524h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+1Ch]
		mov	edi, [ebp+0Ch]
		test	esi, 2000h
		mov	ebx, [ebp+8]
		jnz	short loc_477E27
		test	esi, 8000h
		setz	al
		and	eax, 1
		push	eax
		call	loc_4776D8
		pop	ecx

loc_477E27:				; CODE XREF: .text:00477E12j
		cmp	processid, 0
		jz	short loc_477E3D
		cmp	thread.sorted.n, 0
		jnz	loc_477FBA

loc_477E3D:				; CODE XREF: .text:00477E2Ej
		xor	edx, edx
		xor	ecx, ecx
		mov	g_disasmdump.threadid, edx
		mov	g_disasmdump._size, ecx
		xor	eax, eax
		mov	g_disasmdump.base, ecx
		xor	edx, edx
		mov	g_disasmdump._addr, eax
		mov	g_disasmdump.sel1, edx
		xor	eax, eax
		mov	g_disasmdump.sel0, edx
		mov	g_disasmdump.selend, eax
		mov	g_disasmdump.selstart, eax
		xor	edx, edx
		mov	g_disasmdump.relreg, 0FFFFFFFFh
		mov	g_disasmdump.reladdr, edx
		xor	ecx, ecx
		push	offset g_disasmdump
		mov	g_disasmdump.backup, ecx
		call	loc_4B7C2C
		pop	ecx
		push	3		; int
		push	offset g_disasmdump ; pd
		call	tabdumpsel
		xor	eax, eax
		xor	edx, edx
		mov	g_dumpdump.threadid, eax
		mov	g_dumpdump._size, edx
		xor	eax, eax
		mov	g_dumpdump.base, edx
		xor	ecx, ecx
		mov	g_dumpdump._addr, eax
		mov	g_dumpdump.sel1, ecx
		xor	eax, eax
		mov	g_dumpdump.sel0, ecx
		mov	g_dumpdump.selend, eax
		mov	g_dumpdump.selstart, eax
		add	esp, 8
		xor	edx, edx
		mov	g_dumpdump.relreg, 0FFFFFFFFh
		mov	g_dumpdump.reladdr, edx
		xor	ecx, ecx
		mov	g_dumpdump.backup, ecx
		push	offset g_dumpdump
		call	loc_4B7C2C
		xor	eax, eax
		xor	edx, edx
		mov	g_stackdump.threadid, eax
		mov	g_stackdump._size, edx
		xor	eax, eax
		mov	g_stackdump.base, edx
		pop	ecx
		mov	g_stackdump._addr, eax
		xor	ecx, ecx
		xor	eax, eax
		mov	g_stackdump.sel1, ecx
		mov	g_stackdump.sel0, ecx
		mov	g_stackdump.selend, eax
		mov	g_stackdump.selstart, eax
		xor	edx, edx
		mov	g_stackdump.relreg, 0FFFFFFFFh
		xor	ecx, ecx
		mov	g_stackdump.reladdr, edx
		xor	eax, eax
		mov	g_stackdump.backup, ecx
		mov	g_stackdump.graylimit, eax
		mov	edx, g_stackdump.dumptype
		and	edx, 0E7FFFFFFh
		push	edx		; dumptype
		push	offset g_stackdump ; pd
		call	Setdumptype
		add	esp, 8
		push	201Ch		; n
		push	0		; c
		push	offset stru_5E7DA8 ; s
		call	_memset
		add	esp, 0Ch
		push	0
		push	offset stru_5E6D24
		call	loc_494C8C
		add	esp, 8
		call	loc_477AD0
		call	loc_476154
		and	esi, 4000h
		push	esi		; redrawnow
		push	offset word_5E6130 ; pf
		call	Updateframe
		add	esp, 8
		jmp	loc_478B95
; ---------------------------------------------------------------------------

loc_477FBA:				; CODE XREF: .text:00477E37j
		mov	ecx, g_disasmdump.sel0
		mov	eax, g_disasmdump.sel1
		mov	[ebp-14h], ecx
		mov	[ebp-18h], eax
		mov	edx, g_dumpdump.sel0
		mov	ecx, g_dumpdump.sel1
		mov	[ebp-1Ch], edx
		mov	[ebp-20h], ecx
		mov	eax, g_stackdump.sel0
		mov	edx, g_stackdump.sel1
		mov	[ebp-24h], eax
		mov	[ebp-28h], edx
		test	esi, 10000h
		jz	short loc_478049
		push	0		; cmd
		lea	ecx, [ebp-1ADCh]
		push	ecx		; preg
		push	edi		; nback
		call	Getruntrace
		add	esp, 0Ch
		test	eax, eax
		jl	loc_478B95
		mov	eax, stru_5E6AB8.rtback
		mov	stru_5E6D24.rtback, edi
		xor	edx, edx
		mov	stru_5E6AB8.rtback, edi
		mov	g_disasmdump.table.rtback, edi
		mov	[ebp+10h], edx
		xor	ebx, ebx
		test	eax, eax
		mov	edi, [ebp-1AD4h]
		jnz	short loc_478081
		push	3		; int
		push	offset g_disasmdump ; pd
		call	tabdumpsel
		add	esp, 8
		jmp	short loc_478081
; ---------------------------------------------------------------------------

loc_478049:				; CODE XREF: .text:00477FF4j
		test	ebx, ebx
		jnz	short loc_478055
		test	esi, 20000h
		jz	short loc_478081

loc_478055:				; CODE XREF: .text:0047804Bj
		mov	eax, stru_5E6AB8.rtback
		xor	edx, edx
		mov	stru_5E6D24.rtback, edx
		mov	stru_5E6AB8.rtback, edx
		mov	g_disasmdump.table.rtback, edx
		test	eax, eax
		jz	short loc_478081
		push	3		; int
		push	offset g_disasmdump ; pd
		call	tabdumpsel
		add	esp, 8

loc_478081:				; CODE XREF: .text:00478036j
					; .text:00478047j ...
		test	esi, 1
		jz	short loc_4780B7
		mov	eax, g_disasmdump.sel1
		mov	ecx, g_disasmdump.sel0
		push	eax		; sel1
		mov	eax, g_disasmdump._addr
		push	ecx		; sel0
		push	eax		; _addr
		mov	edx, g_disasmdump.dumptype
		mov	ecx, g_disasmdump.threadid
		push	edx		; dumptype
		push	ecx		; threadid
		push	offset ph	; ph
		call	Addtohistory
		add	esp, 18h

loc_4780B7:				; CODE XREF: .text:00478087j
		test	esi, 10h
		jz	short loc_4780E8
		mov	eax, g_dumpdump.sel1
		push	eax		; sel1
		mov	edx, g_dumpdump.sel0
		push	edx		; sel0
		mov	ecx, g_dumpdump._addr
		push	ecx		; _addr
		mov	eax, g_dumpdump.dumptype
		push	eax		; dumptype
		push	0		; threadid
		push	offset stru_5C3710 ; ph
		call	Addtohistory
		add	esp, 18h

loc_4780E8:				; CODE XREF: .text:004780BDj
		test	ebx, ebx
		jz	short loc_478100
		push	ebx		; threadid
		call	Findthread
		pop	ecx
		test	eax, eax
		jnz	short loc_478100
		xor	ebx, ebx
		xor	eax, eax
		mov	[ebp+18h], eax
		mov	edi, eax

loc_478100:				; CODE XREF: .text:004780EAj
					; .text:004780F5j
		test	ebx, ebx
		jnz	short loc_478156
		mov	eax, g_disasmdump.threadid
		push	eax		; threadid
		call	Findthread
		pop	ecx
		test	eax, eax
		jnz	short loc_478156
		mov	dword ptr [ebp-8], 7FFFFFFFh
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	short loc_47814B
; ---------------------------------------------------------------------------

loc_478122:				; CODE XREF: .text:00478154j
		mov	ecx, [ebp-4]
		push	ecx		; index
		push	offset thread.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_478148
		mov	edx, [eax+0Ch]
		test	edx, edx
		jle	short loc_478148
		cmp	edx, [ebp-8]
		jge	short loc_478148
		mov	ebx, [eax]
		mov	[ebp-8], edx

loc_478148:				; CODE XREF: .text:00478135j
					; .text:0047813Cj ...
		inc	dword ptr [ebp-4]

loc_47814B:				; CODE XREF: .text:00478120j
		mov	eax, [ebp-4]
		cmp	eax, thread.sorted.n
		jl	short loc_478122

loc_478156:				; CODE XREF: .text:00478102j
					; .text:00478112j
		test	edi, edi
		jnz	short loc_47815E
		xor	edx, edx
		jmp	short loc_478161
; ---------------------------------------------------------------------------

loc_47815E:				; CODE XREF: .text:00478158j
		mov	edx, [ebp+14h]

loc_478161:				; CODE XREF: .text:0047815Cj
		mov	[ebp-0Ch], edx
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_47816E
		xor	eax, eax
		jmp	short loc_478171
; ---------------------------------------------------------------------------

loc_47816E:				; CODE XREF: .text:00478168j
		mov	eax, [ebp+14h]

loc_478171:				; CODE XREF: .text:0047816Cj
		mov	[ebp-10h], eax
		test	ebx, ebx
		jz	short loc_4781D0
		push	ebx		; threadid
		call	Threadregisters
		pop	ecx
		mov	[ebp-30h], eax
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_4781BF
		test	edi, edi
		jnz	short loc_478192
		mov	edx, [ebp-30h]
		mov	edi, [edx+8]

loc_478192:				; CODE XREF: .text:0047818Aj
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_4781B2
		cmp	ebx, g_disasmdump.threadid
		jnz	short loc_4781A9
		test	byte ptr g_stackdump.dumptype+3, 10h
		jnz	short loc_4781B2

loc_4781A9:				; CODE XREF: .text:0047819Ej
		mov	eax, [ebp-30h]
		mov	edx, [eax+1Ch]
		mov	[ebp+18h], edx

loc_4781B2:				; CODE XREF: .text:00478196j
					; .text:004781A7j
		mov	ecx, [ebp-30h]
		mov	eax, [ecx+1Ch]
		mov	g_stackdump.graylimit, eax
		jmp	short loc_47821C
; ---------------------------------------------------------------------------

loc_4781BF:				; CODE XREF: .text:00478186j
		xor	edi, edi
		xor	eax, eax
		mov	[ebp+18h], eax
		xor	edx, edx
		mov	g_stackdump.graylimit, edx
		jmp	short loc_47821C
; ---------------------------------------------------------------------------

loc_4781D0:				; CODE XREF: .text:00478176j
		mov	ecx, g_disasmdump.threadid
		push	ecx		; threadid
		call	Threadregisters
		pop	ecx
		mov	[ebp-30h], eax
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_478214
		cmp	g_stackdump._addr, 0
		jnz	short loc_478207
		cmp	dword ptr [ebp+18h], 0
		jnz	short loc_478207
		test	byte ptr g_stackdump.dumptype+3, 10h
		jnz	short loc_478207
		mov	eax, [ebp-30h]
		mov	edx, [eax+1Ch]
		mov	[ebp+18h], edx

loc_478207:				; CODE XREF: .text:004781EDj
					; .text:004781F3j ...
		mov	ecx, [ebp-30h]
		mov	eax, [ecx+1Ch]
		mov	g_stackdump.graylimit, eax
		jmp	short loc_47821C
; ---------------------------------------------------------------------------

loc_478214:				; CODE XREF: .text:004781E4j
		xor	edx, edx
		mov	g_stackdump.graylimit, edx

loc_47821C:				; CODE XREF: .text:004781BDj
					; .text:004781CEj ...
		test	ebx, ebx
		jz	short loc_478258
		cmp	ebx, g_disasmdump.threadid
		jz	short loc_478258
		mov	g_disasmdump.threadid, ebx
		mov	g_dumpdump.threadid, ebx
		mov	g_stackdump.threadid, ebx
		push	ebx
		push	offset stru_5E6D24
		call	loc_494C8C
		add	esp, 8
		push	ebx		; lp
		push	0		; wp
		push	485h		; msg
		call	Broadcast
		add	esp, 0Ch

loc_478258:				; CODE XREF: .text:0047821Ej
					; .text:00478226j
		test	edi, edi
		jz	loc_478436
		push	edi		; _addr
		call	Findmemory
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4782C6
		xor	eax, eax
		mov	g_disasmdump._size, eax
		mov	g_disasmdump.base, eax
		cmp	dword ptr [ebp-30h], 0
		jnz	short loc_478283
		xor	edx, edx
		jmp	short loc_478289
; ---------------------------------------------------------------------------

loc_478283:				; CODE XREF: .text:0047827Dj
		mov	ecx, [ebp-30h]
		mov	edx, [ecx+8]

loc_478289:				; CODE XREF: .text:00478281j
		mov	g_disasmdump.sel1, edx
		mov	g_disasmdump.sel0, edx
		mov	g_disasmdump._addr, edx
		xor	eax, eax
		mov	g_disasmdump.selend, eax
		mov	g_disasmdump.selstart, eax
		mov	g_disasmdump.relreg, 0FFFFFFFFh
		xor	edx, edx
		mov	g_disasmdump.reladdr, edx
		xor	ecx, ecx
		mov	g_disasmdump.backup, ecx
		jmp	loc_478427
; ---------------------------------------------------------------------------

loc_4782C6:				; CODE XREF: .text:0047826Bj
		mov	eax, [ebx]
		cmp	eax, g_disasmdump.base
		jnz	short loc_4782DF
		mov	edx, g_disasmdump._size
		cmp	edx, [ebx+4]
		jz	loc_4783A8

loc_4782DF:				; CODE XREF: .text:004782CEj
		mov	g_disasmdump.base, eax
		mov	ecx, [ebx+4]
		mov	g_disasmdump._size, ecx
		mov	edx, [ebx]
		mov	eax, g_disasmdump._addr
		cmp	edx, eax
		ja	short loc_4782FF
		add	edx, [ebx+4]
		cmp	eax, edx
		jbe	short loc_478313

loc_4782FF:				; CODE XREF: .text:004782F6j
		test	esi, 4
		jz	short loc_47830B
		mov	ecx, [ebx]
		jmp	short loc_47830D
; ---------------------------------------------------------------------------

loc_47830B:				; CODE XREF: .text:00478305j
		mov	ecx, edi

loc_47830D:				; CODE XREF: .text:00478309j
		mov	g_disasmdump._addr, ecx

loc_478313:				; CODE XREF: .text:004782FDj
		cmp	dword ptr [ebp-0Ch], 0
		mov	g_disasmdump.selend, edi
		mov	g_disasmdump.selstart, edi
		mov	g_disasmdump.sel0, edi
		jnz	short loc_478348
		push	1		; decode
		push	1		; n
		push	edi		; ip
		mov	eax, [ebx+4]
		push	eax		; size
		mov	edx, [ebx]
		push	edx		; base
		push	0		; copy
		call	Disassembleforward
		add	esp, 18h
		mov	g_disasmdump.sel1, eax
		jmp	short loc_47836A
; ---------------------------------------------------------------------------

loc_478348:				; CODE XREF: .text:00478329j
		mov	edx, [ebx]
		mov	eax, [ebp-0Ch]
		add	edx, [ebx+4]
		add	eax, edi
		cmp	edx, eax
		jnb	short loc_478365
		mov	ecx, [ebx]
		add	ecx, [ebx+4]
		sub	ecx, edi
		mov	g_disasmdump.sel1, ecx
		jmp	short loc_47836A
; ---------------------------------------------------------------------------

loc_478365:				; CODE XREF: .text:00478354j
		mov	g_disasmdump.sel1, eax

loc_47836A:				; CODE XREF: .text:00478346j
					; .text:00478363j
		test	esi, 4
		jz	short loc_478382
		push	3		; mode
		push	edi		; _addr
		push	offset g_disasmdump ; pd
		call	Scrolldumpwindow
		add	esp, 0Ch

loc_478382:				; CODE XREF: .text:00478370j
		push	offset g_disasmdump
		call	loc_4B7C2C
		pop	ecx
		mov	g_disasmdump.relreg, 0FFFFFFFFh
		xor	eax, eax
		mov	g_disasmdump.reladdr, eax
		xor	edx, edx
		mov	g_disasmdump.backup, edx
		jmp	short loc_478427
; ---------------------------------------------------------------------------

loc_4783A8:				; CODE XREF: .text:004782D9j
		test	esi, 4
		mov	ecx, 2
		jnz	short loc_4783B8
		add	ecx, 0FFFFFFFEh

loc_4783B8:				; CODE XREF: .text:004783B3j
		or	ecx, 1
		push	ecx		; mode
		push	edi		; _addr
		push	offset g_disasmdump ; pd
		call	Scrolldumpwindow
		add	esp, 0Ch
		mov	g_disasmdump.selend, edi
		mov	g_disasmdump.selstart, edi
		mov	g_disasmdump.sel0, edi
		cmp	dword ptr [ebp-0Ch], 0
		jnz	short loc_478405
		push	1		; decode
		push	1		; n
		push	edi		; ip
		mov	eax, g_disasmdump._size
		push	eax		; size
		mov	edx, g_disasmdump.base
		push	edx		; base
		push	0		; copy
		call	Disassembleforward
		add	esp, 18h
		mov	g_disasmdump.sel1, eax
		jmp	short loc_478427
; ---------------------------------------------------------------------------

loc_478405:				; CODE XREF: .text:004783E0j
		mov	ecx, [ebx]
		mov	eax, [ebp-0Ch]
		add	ecx, [ebx+4]
		add	eax, edi
		cmp	ecx, eax
		jnb	short loc_478422
		mov	edx, [ebx]
		add	edx, [ebx+4]
		sub	edx, edi
		mov	g_disasmdump.sel1, edx
		jmp	short loc_478427
; ---------------------------------------------------------------------------

loc_478422:				; CODE XREF: .text:00478411j
		mov	g_disasmdump.sel1, eax

loc_478427:				; CODE XREF: .text:004782C1j
					; .text:004783A6j ...
		push	3		; int
		push	offset g_disasmdump ; pd
		call	tabdumpsel
		add	esp, 8

loc_478436:				; CODE XREF: .text:0047825Aj
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_47845F
		cmp	g_dumpdump.base, 0
		jnz	short loc_47845F
		call	Findmainmodule
		mov	[ebp-2Ch], eax
		cmp	dword ptr [ebp-2Ch], 0
		jz	short loc_47845F
		mov	ecx, [ebp-2Ch]
		mov	eax, [ecx+46Ch]
		mov	[ebp+10h], eax

loc_47845F:				; CODE XREF: .text:0047843Aj
					; .text:00478443j ...
		cmp	dword ptr [ebp+10h], 0
		jz	loc_478631
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4784A2
		mov	eax, g_dumpdump.dumptype
		and	eax, 3F0000h
		cmp	eax, 0C0000h
		jz	short loc_478487
		cmp	eax, 0D0000h
		jnz	short loc_4784A2

loc_478487:				; CODE XREF: .text:0047847Ej
		push	1		; n
		mov	edx, [ebp+10h]
		push	edx		; _addr
		push	offset g_dumpdump ; pd
		call	Dumpforward
		add	esp, 0Ch
		sub	eax, [ebp+10h]
		mov	[ebp-10h], eax
		jmp	short loc_4784E0
; ---------------------------------------------------------------------------

loc_4784A2:				; CODE XREF: .text:0047846Dj
					; .text:00478485j
		mov	eax, g_dumpdump.dumptype
		and	eax, 3F0000h
		cmp	eax, 0C0000h
		jz	short loc_4784E0
		cmp	eax, 0D0000h
		jz	short loc_4784E0
		mov	ebx, g_dumpdump.dumptype
		and	ebx, 0FFh
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_4784D1
		mov	[ebp-10h], ebx
		jmp	short loc_4784E0
; ---------------------------------------------------------------------------

loc_4784D1:				; CODE XREF: .text:004784CAj
		mov	eax, [ebp-10h]
		add	eax, ebx
		dec	eax
		xor	edx, edx
		div	ebx
		imul	ebx
		mov	[ebp-10h], eax

loc_4784E0:				; CODE XREF: .text:004784A0j
					; .text:004784B1j ...
		mov	ecx, [ebp+10h]
		push	ecx		; _addr
		call	Findmemory
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_47853D
		xor	eax, eax
		xor	edx, edx
		mov	g_dumpdump._size, eax
		mov	g_dumpdump.base, eax
		xor	ecx, ecx
		mov	g_dumpdump._addr, edx
		mov	g_dumpdump.sel1, ecx
		xor	eax, eax
		mov	g_dumpdump.sel0, ecx
		mov	g_dumpdump.selend, eax
		mov	g_dumpdump.selstart, eax
		xor	edx, edx
		mov	g_dumpdump.relreg, 0FFFFFFFFh
		mov	g_dumpdump.reladdr, edx
		xor	ecx, ecx
		mov	g_dumpdump.backup, ecx
		jmp	loc_478631
; ---------------------------------------------------------------------------

loc_47853D:				; CODE XREF: .text:004784EEj
		mov	eax, [ebx]
		cmp	eax, g_dumpdump.base
		jnz	short loc_478556
		mov	edx, g_dumpdump._size
		cmp	edx, [ebx+4]
		jz	loc_4785DA

loc_478556:				; CODE XREF: .text:00478545j
		mov	ecx, [ebx]
		mov	edx, [ebp+10h]
		mov	g_dumpdump.base, ecx
		mov	ecx, [ebp+10h]
		mov	eax, [ebx+4]
		mov	g_dumpdump._size, eax
		mov	g_dumpdump._addr, edx
		mov	g_dumpdump.selend, ecx
		mov	eax, [ebp+10h]
		add	eax, [ebp-10h]
		mov	g_dumpdump.selstart, ecx
		mov	g_dumpdump.sel0, ecx
		mov	g_dumpdump.sel1, eax
		mov	edx, g_dumpdump.base
		add	edx, g_dumpdump._size
		cmp	edx, g_dumpdump.sel1
		jnb	short loc_4785B3
		mov	eax, g_dumpdump.base
		add	eax, g_dumpdump._size
		mov	g_dumpdump.sel1, eax

loc_4785B3:				; CODE XREF: .text:004785A1j
		push	offset g_dumpdump
		call	loc_4B7C2C
		pop	ecx
		mov	g_dumpdump.relreg, 0FFFFFFFFh
		xor	edx, edx
		mov	g_dumpdump.reladdr, edx
		xor	ecx, ecx
		mov	g_dumpdump.backup, ecx
		jmp	short loc_478631
; ---------------------------------------------------------------------------

loc_4785DA:				; CODE XREF: .text:00478550j
		push	1		; mode
		mov	eax, [ebp+10h]
		push	eax		; _addr
		push	offset g_dumpdump ; pd
		call	Scrolldumpwindow
		mov	edx, [ebp+10h]
		mov	eax, [ebp+10h]
		mov	g_dumpdump.selend, edx
		mov	g_dumpdump.selstart, edx
		add	eax, [ebp-10h]
		mov	g_dumpdump.sel0, edx
		mov	g_dumpdump.sel1, eax
		add	esp, 0Ch
		mov	ecx, g_dumpdump.base
		add	ecx, g_dumpdump._size
		cmp	ecx, g_dumpdump.sel1
		jnb	short loc_478631
		mov	eax, g_dumpdump.base
		add	eax, g_dumpdump._size
		mov	g_dumpdump.sel1, eax

loc_478631:				; CODE XREF: .text:00478463j
					; .text:00478538j ...
		cmp	g_stackdump.reladdr, 0
		jz	short loc_478688
		cmp	g_stackdump.relreg, 0
		jl	short loc_478688
		cmp	g_stackdump.relreg, 8
		jge	short loc_478688
		mov	edx, g_disasmdump.threadid
		push	edx		; threadid
		call	Threadregisters
		pop	ecx
		mov	[ebp-30h], eax
		cmp	dword ptr [ebp-30h], 0
		jz	short loc_478676
		mov	ecx, [ebp-30h]
		mov	eax, g_stackdump.relreg
		mov	edx, [ecx+eax*4+0Ch]
		mov	g_stackdump.reladdr, edx
		jmp	short loc_478688
; ---------------------------------------------------------------------------

loc_478676:				; CODE XREF: .text:00478660j
		mov	g_stackdump.relreg, 0FFFFFFFFh
		xor	ecx, ecx
		mov	g_stackdump.reladdr, ecx

loc_478688:				; CODE XREF: .text:00478638j
					; .text:00478641j ...
		cmp	dword ptr [ebp+18h], 0
		jz	loc_4787FA
		mov	eax, [ebp+18h]
		push	eax		; _addr
		call	Findmemory
		pop	ecx
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4786EF
		xor	eax, eax
		xor	edx, edx
		mov	g_stackdump._size, eax
		mov	g_stackdump.base, eax
		xor	ecx, ecx
		mov	g_stackdump._addr, edx
		mov	g_stackdump.sel1, ecx
		xor	eax, eax
		mov	g_stackdump.sel0, ecx
		mov	g_stackdump.selend, eax
		mov	g_stackdump.selstart, eax
		xor	edx, edx
		mov	g_stackdump.relreg, 0FFFFFFFFh
		mov	g_stackdump.reladdr, edx
		xor	ecx, ecx
		mov	g_stackdump.backup, ecx
		jmp	loc_4787FA
; ---------------------------------------------------------------------------

loc_4786EF:				; CODE XREF: .text:004786A0j
		mov	eax, [ebx]
		mov	g_stackdump.base, eax
		mov	edx, [ebx+4]
		test	esi, 200h
		mov	g_stackdump._size, edx
		jnz	short loc_478715
		mov	ecx, [ebp+18h]
		mov	g_stackdump._addr, ecx
		jmp	loc_4787A7
; ---------------------------------------------------------------------------

loc_478715:				; CODE XREF: .text:00478705j
		mov	ebx, g_stackdump.dumptype
		push	offset g_stackdump.table ; pt
		and	ebx, 0FFh
		call	Linecount
		pop	ecx
		mov	edx, g_stackdump._addr
		cmp	edx, [ebp+18h]
		ja	short loc_478757
		mov	ecx, eax
		imul	ecx, ebx
		add	ecx, g_stackdump._addr
		cmp	ecx, [ebp+18h]
		jbe	short loc_478757
		mov	edx, g_stackdump._addr
		mov	ecx, ebx
		sub	edx, [ebp+18h]
		dec	ecx
		and	edx, ecx
		jz	short loc_4787A7

loc_478757:				; CODE XREF: .text:00478735j
					; .text:00478745j
		mov	edx, eax
		sar	edx, 1
		jns	short loc_478760
		adc	edx, 0

loc_478760:				; CODE XREF: .text:0047875Bj
		imul	edx, ebx
		add	edx, g_stackdump.base
		cmp	edx, [ebp+18h]
		jnb	short loc_478784
		sar	eax, 1
		jns	short loc_478775
		adc	eax, 0

loc_478775:				; CODE XREF: .text:00478770j
		imul	ebx
		mov	ecx, [ebp+18h]
		sub	ecx, eax
		mov	g_stackdump._addr, ecx
		jmp	short loc_4787A7
; ---------------------------------------------------------------------------

loc_478784:				; CODE XREF: .text:0047876Cj
		mov	eax, g_stackdump.base
		sub	eax, [ebp+18h]
		dec	ebx
		and	eax, ebx
		jz	short loc_47879B
		mov	eax, [ebp+18h]
		mov	g_stackdump._addr, eax
		jmp	short loc_4787A7
; ---------------------------------------------------------------------------

loc_47879B:				; CODE XREF: .text:0047878Fj
		mov	edx, g_stackdump.base
		mov	g_stackdump._addr, edx

loc_4787A7:				; CODE XREF: .text:00478710j
					; .text:00478755j ...
		mov	ecx, [ebp+18h]
		mov	g_stackdump.selend, ecx
		mov	g_stackdump.selstart, ecx
		mov	g_stackdump.sel0, ecx
		mov	eax, g_stackdump.dumptype
		mov	edx, g_stackdump.base
		and	eax, 0FFh
		add	eax, [ebp+18h]
		add	edx, g_stackdump._size
		mov	[ebp-34h], eax
		mov	[ebp-38h], edx
		mov	eax, [ebp-38h]
		cmp	eax, [ebp-34h]
		jnb	short loc_4787E8
		lea	edx, [ebp-38h]
		jmp	short loc_4787EB
; ---------------------------------------------------------------------------

loc_4787E8:				; CODE XREF: .text:004787E1j
		lea	edx, [ebp-34h]

loc_4787EB:				; CODE XREF: .text:004787E6j
		mov	eax, [edx]
		xor	ecx, ecx
		mov	g_stackdump.sel1, eax
		mov	g_stackdump.backup, ecx

loc_4787FA:				; CODE XREF: .text:0047868Cj
					; .text:004786EAj
		test	esi, 1
		jz	short loc_478830
		mov	eax, g_disasmdump.sel1
		push	eax		; sel1
		mov	edx, g_disasmdump.sel0
		push	edx		; sel0
		mov	ecx, g_disasmdump._addr
		push	ecx		; _addr
		mov	eax, g_disasmdump.dumptype
		push	eax		; dumptype
		mov	edx, g_disasmdump.threadid
		push	edx		; threadid
		push	offset ph	; ph
		call	Addtohistory
		add	esp, 18h

loc_478830:				; CODE XREF: .text:00478800j
		test	esi, 10h
		jz	short loc_478862
		mov	ecx, g_dumpdump.sel1
		push	ecx		; sel1
		mov	eax, g_dumpdump.sel0
		push	eax		; sel0
		mov	edx, g_dumpdump._addr
		push	edx		; _addr
		mov	ecx, g_dumpdump.dumptype
		push	ecx		; dumptype
		push	0		; threadid
		push	offset stru_5C3710 ; ph
		call	Addtohistory
		add	esp, 18h

loc_478862:				; CODE XREF: .text:00478836j
		call	loc_476154
		cmp	dword_5E6184, 0
		jz	short loc_4788D8
		test	esi, 8
		jz	short loc_478893
		mov	eax, g_disasmdump.table.hw
		push	eax		; lParam
		push	0		; wParam
		push	473h		; Msg
		mov	edx, dword_5E6184
		push	edx		; hWnd
		call	SendMessageW
		jmp	short loc_4788D8
; ---------------------------------------------------------------------------

loc_478893:				; CODE XREF: .text:00478876j
		test	esi, 80h
		jz	short loc_4788B6
		mov	ecx, g_dumpdump.table.hw
		push	ecx		; lParam
		push	0		; wParam
		push	473h		; Msg
		mov	eax, dword_5E6184
		push	eax		; hWnd
		call	SendMessageW
		jmp	short loc_4788D8
; ---------------------------------------------------------------------------

loc_4788B6:				; CODE XREF: .text:00478899j
		test	esi, 100h
		jz	short loc_4788D8
		mov	edx, g_stackdump.table.hw
		push	edx		; lParam
		push	0		; wParam
		push	473h		; Msg
		mov	ecx, dword_5E6184
		push	ecx		; hWnd
		call	SendMessageW

loc_4788D8:				; CODE XREF: .text:0047886Ej
					; .text:00478891j ...
		cmp	dword_5BE700, 1
		jnz	loc_478A7B	; jumptable 004789B3 default case
		test	esi, 1000h
		jz	loc_478A7B	; jumptable 004789B3 default case
		mov	eax, g_disasmdump.sel0
		cmp	eax, g_disasmdump.base
		jb	loc_478A7B	; jumptable 004789B3 default case
		test	edi, edi
		jz	loc_478A7B	; jumptable 004789B3 default case
		mov	edx, g_disasmdump.base
		add	edx, g_disasmdump._size
		cmp	edx, g_disasmdump.sel0
		jbe	loc_478A7B	; jumptable 004789B3 default case
		mov	eax, g_disasmdump.base
		add	eax, g_disasmdump._size
		sub	eax, g_disasmdump.sel0
		cmp	eax, 10h
		jbe	short loc_47893D
		mov	eax, 10h

loc_47893D:				; CODE XREF: .text:00478936j
		push	5		; mode
		push	eax		; size
		mov	edx, g_disasmdump.sel0
		push	edx		; _addr
		lea	ecx, [ebp-48h]
		push	ecx		; buf
		call	Readmemory
		add	esp, 10h
		test	eax, eax
		jbe	loc_478A7B	; jumptable 004789B3 default case
		push	0		; predict
		push	0		; reg
		lea	edx, [ebp-1918h]
		push	0		; mode
		push	edx		; da
		mov	ecx, g_disasmdump.sel0
		push	0		; dec
		push	ecx		; ip
		push	eax		; cmdsize
		lea	eax, [ebp-48h]
		push	eax		; cmd
		call	Disasm
		add	esp, 20h
		test	eax, eax
		jbe	loc_478A7B	; jumptable 004789B3 default case
		cmp	dword ptr [ebp-18ECh], 0
		jnz	loc_478A7B	; jumptable 004789B3 default case
		push	offset stru_5E6D24
		call	loc_494B88
		pop	ecx
		mov	edx, [ebp-1904h]
		and	edx, 1Fh
		add	edx, 0FFFFFFEFh	; switch 8 cases
		cmp	edx, 7
		ja	loc_478A7B	; jumptable 004789B3 default case
		jmp	ds:off_4789BA[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_4789BA	dd offset loc_4789DA	; DATA XREF: .text:004789B3r
		dd offset loc_4789F8	; jump table for switch	statement
		dd offset loc_478A18
		dd offset loc_478A38
		dd offset loc_478A7B
		dd offset loc_478A7B
		dd offset loc_478A7B
		dd offset loc_478A38
; ---------------------------------------------------------------------------

loc_4789DA:				; CODE XREF: .text:004789B3j
					; DATA XREF: .text:off_4789BAo
		test	al, 0Fh		; jumptable 004789B3 case 17
		jz	loc_478A7B	; jumptable 004789B3 default case
		and	eax, 0FFFFFFF0h
		push	eax
		push	offset stru_5E6D24
		call	loc_494BB4
		add	esp, 8
		jmp	loc_478A7B	; jumptable 004789B3 default case
; ---------------------------------------------------------------------------

loc_4789F8:				; CODE XREF: .text:004789B3j
					; DATA XREF: .text:off_4789BAo
		mov	ecx, eax	; jumptable 004789B3 case 18
		and	ecx, 0Fh
		cmp	ecx, 1
		jz	short loc_478A7B ; jumptable 004789B3 default case
		and	eax, 0FFFFFFF0h
		or	eax, 1
		push	eax
		push	offset stru_5E6D24
		call	loc_494BB4
		add	esp, 8
		jmp	short loc_478A7B ; jumptable 004789B3 default case
; ---------------------------------------------------------------------------

loc_478A18:				; CODE XREF: .text:004789B3j
					; DATA XREF: .text:off_4789BAo
		mov	edx, eax	; jumptable 004789B3 case 19
		and	edx, 0Fh
		cmp	edx, 2
		jz	short loc_478A7B ; jumptable 004789B3 default case
		and	eax, 0FFFFFFF0h
		or	eax, 2
		push	eax
		push	offset stru_5E6D24
		call	loc_494BB4
		add	esp, 8
		jmp	short loc_478A7B ; jumptable 004789B3 default case
; ---------------------------------------------------------------------------

loc_478A38:				; CODE XREF: .text:004789B3j
					; DATA XREF: .text:off_4789BAo
		xor	ecx, ecx	; jumptable 004789B3 cases 20,24
		lea	edx, [ebp-18CCh]
		mov	[ebp-4], ecx

loc_478A43:				; CODE XREF: .text:00478A55j
		test	byte ptr [edx],	8
		jnz	short loc_478A57
		inc	dword ptr [ebp-4]
		add	edx, 460h
		cmp	dword ptr [ebp-4], 4
		jl	short loc_478A43

loc_478A57:				; CODE XREF: .text:00478A46j
		cmp	dword ptr [ebp-4], 4
		jge	short loc_478A7B ; jumptable 004789B3 default case
		mov	ecx, eax
		and	ecx, 0Fh
		cmp	ecx, 1
		jz	short loc_478A7B ; jumptable 004789B3 default case
		and	eax, 0FFFFFFF0h
		or	eax, 1
		push	eax
		push	offset stru_5E6D24
		call	loc_494BB4
		add	esp, 8

loc_478A7B:				; CODE XREF: .text:004788DFj
					; .text:004788EBj ...
		cmp	dword_5E6184, 0	; jumptable 004789B3 default case
		jz	short loc_478A99
		mov	eax, esi
		and	eax, 4000h
		push	eax		; redrawnow
		push	offset word_5E6130 ; pf
		call	Updateframe
		add	esp, 8

loc_478A99:				; CODE XREF: .text:00478A82j
		cmp	dword_57FE88, 0
		jz	loc_478B95
		test	esi, 8000h
		jnz	loc_478B95
		test	esi, 8
		jz	short loc_478B03
		mov	eax, 1
		mov	edx, [ebp-14h]
		cmp	edx, g_disasmdump.sel0
		jnz	short loc_478ACB
		dec	eax

loc_478ACB:				; CODE XREF: .text:00478AC8j
		mov	ecx, 2
		mov	edx, [ebp-18h]
		cmp	edx, g_disasmdump.sel1
		jnz	short loc_478ADE
		add	ecx, 0FFFFFFFEh

loc_478ADE:				; CODE XREF: .text:00478AD9j
		or	eax, ecx
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jz	loc_478B95
		mov	eax, [ebp-8]
		push	eax
		push	offset g_disasmdump
		call	loc_4B8860
		add	esp, 8
		jmp	loc_478B95
; ---------------------------------------------------------------------------

loc_478B03:				; CODE XREF: .text:00478AB8j
		test	esi, 80h
		jz	short loc_478B4D
		mov	ecx, 1
		mov	eax, [ebp-1Ch]
		cmp	eax, g_dumpdump.sel0
		jnz	short loc_478B1C
		dec	ecx

loc_478B1C:				; CODE XREF: .text:00478B19j
		mov	edx, 2
		mov	eax, [ebp-20h]
		cmp	eax, g_dumpdump.sel1
		jnz	short loc_478B2F
		add	edx, 0FFFFFFFEh

loc_478B2F:				; CODE XREF: .text:00478B2Aj
		or	ecx, edx
		mov	[ebp-8], ecx
		cmp	dword ptr [ebp-8], 0
		jz	short loc_478B95
		mov	edx, [ebp-8]
		push	edx
		push	offset g_dumpdump
		call	loc_4B8860
		add	esp, 8
		jmp	short loc_478B95
; ---------------------------------------------------------------------------

loc_478B4D:				; CODE XREF: .text:00478B09j
		test	esi, 100h
		jz	short loc_478B95
		mov	ecx, 1
		mov	eax, [ebp-24h]
		cmp	eax, g_stackdump.sel0
		jnz	short loc_478B66
		dec	ecx

loc_478B66:				; CODE XREF: .text:00478B63j
		mov	edx, 2
		mov	eax, [ebp-28h]
		cmp	eax, g_stackdump.sel1
		jnz	short loc_478B79
		add	edx, 0FFFFFFFEh

loc_478B79:				; CODE XREF: .text:00478B74j
		or	ecx, edx
		mov	[ebp-8], ecx
		cmp	dword ptr [ebp-8], 0
		jz	short loc_478B95
		mov	edx, [ebp-8]
		push	edx
		push	offset g_stackdump
		call	loc_4B8860
		add	esp, 8

loc_478B95:				; CODE XREF: .text:00477FB5j
					; .text:0047800Aj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
