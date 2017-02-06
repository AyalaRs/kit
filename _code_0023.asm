.code

loc_416C70:				; CODE XREF: .text:0044F9FDp
					; .text:0044FABBp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF044h
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+8]	; int
		mov	edi, offset module
		test	eax, eax
		jnz	short loc_416C90
		or	eax, 0FFFFFFFFh
		jmp	loc_416DA6
; ---------------------------------------------------------------------------

loc_416C90:				; CODE XREF: .text:00416C86j
		lea	edx, [ebp-0FB0h] ; int
		push	edx		; s
		push	eax		; a4
		call	loc_413CF0
		add	esp, 8
		test	eax, eax
		jz	short loc_416CAC
		or	eax, 0FFFFFFFFh
		jmp	loc_416DA6
; ---------------------------------------------------------------------------

loc_416CAC:				; CODE XREF: .text:00416CA2j
		lea	edx, [ebp-0FB0h]
		push	edx		; item
		lea	ecx, [edi+44h]
		push	ecx		; sd
		call	Addsorteddata
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_416CCD
		or	eax, 0FFFFFFFFh
		jmp	loc_416DA6
; ---------------------------------------------------------------------------

loc_416CCD:				; CODE XREF: .text:00416CC3j
		call	Listmemory
		xor	ebx, ebx
		jmp	short loc_416CEF
; ---------------------------------------------------------------------------

loc_416CD6:				; CODE XREF: .text:00416CF2j
		push	ebx		; index
		lea	eax, [edi+44h]
		push	eax		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_416CEE
		push	eax
		call	loc_471A90
		pop	ecx

loc_416CEE:				; CODE XREF: .text:00416CE5j
		inc	ebx

loc_416CEF:				; CODE XREF: .text:00416CD4j
		cmp	ebx, [edi+44h]
		jl	short loc_416CD6
		cmp	dword_5BE6C4, 0
		jz	short loc_416D08
		push	0		; force
		push	esi		; pm
		call	Backupusercode
		add	esp, 8

loc_416D08:				; CODE XREF: .text:00416CFBj
		push	0
		push	esi
		call	loc_4AB264
		add	esp, 8
		cmp	eax, 2
		jnz	short loc_416D3D
		cmp	dword ptr [esi+460h], 0
		jz	short loc_416D3D
		push	0
		push	1
		push	0
		push	2000h
		mov	edx, [esi+460h]
		push	edx
		call	loc_44F6D0
		add	esp, 14h
		jmp	short loc_416D72
; ---------------------------------------------------------------------------

loc_416D3D:				; CODE XREF: .text:00416D16j
					; .text:00416D1Fj
		mov	eax, [esi+8]
		test	eax, 800000h
		jnz	short loc_416D72
		mov	edx, [esi]
		mov	[ebp-0FBCh], edx
		mov	ecx, [esi+4]
		mov	[ebp-0FB8h], ecx
		mov	[ebp-0FB4h], eax
		lea	eax, [ebp-0FBCh]
		push	eax		; item
		push	offset aqueue	; sd
		call	Addsorteddata
		add	esp, 8

loc_416D72:				; CODE XREF: .text:00416D3Bj
					; .text:00416D45j
		xor	ebx, ebx
		jmp	short loc_416D8B
; ---------------------------------------------------------------------------

loc_416D76:				; CODE XREF: .text:00416D91j
		push	0
		mov	eax, g_pPluginnotify
		push	0
		push	esi
		push	6
		mov	edx, [eax+ebx*4]
		call	edx
		add	esp, 10h
		inc	ebx

loc_416D8B:				; CODE XREF: .text:00416D74j
		cmp	ebx, g_nPluginnotify
		jl	short loc_416D76
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		xor	eax, eax

loc_416DA6:				; CODE XREF: .text:00416C8Bj
					; .text:00416CA7j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_416DB0:				; DATA XREF: .text:00416F9Ao
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		sub	eax, 471h
		jz	short loc_416DC4
		sub	eax, 1Bh
		jz	short loc_416DE8
		jmp	short loc_416DF3
; ---------------------------------------------------------------------------

loc_416DC4:				; CODE XREF: .text:00416DBBj
		push	0		; index
		push	offset menufunc	; menufunc
		mov	edx, [ebp+8]
		mov	ecx, [edx+218h]
		push	ecx		; pm
		mov	eax, [ebp+8]
		push	eax		; pt
		call	Callmenufunction
		add	esp, 10h
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_416DE8:				; CODE XREF: .text:00416DC0j
		or	dword_57FE7C, 4
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_416DF3:				; CODE XREF: .text:00416DC2j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_416DF8:				; CODE XREF: .text:0040AFFDp
					; .text:0041000Fp
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, offset aEmptyRange	; "empty range"
;__DebugBreak
		cmp	module.bar.nbar, 0
		jnz	loc_416FD8
		lea	eax, aModules_1;[ebx+1F6Ch]
		push	eax		; src
		push	offset module	; dst
		call	_wcscpy
		mov	module.mode, 0F0000h
		lea	edx, aBaseSystem;[ebx+1F7Ch]
		mov	module.bar.visible, 1
		mov	module.bar._name, edx
		lea	ecx, aBaseAddressAnd;[ebx+1FA0h]
		lea	eax, aSizeDecimal;[ebx+2002h]
		mov	module.bar.expl, ecx
		mov	module.bar.mode, 2
		mov	module.bar.defdx, 9
		mov	module.bar._name+4, eax
		lea	edx, aSizeOfMemoryOc;[ebx+2028h]
		lea	ecx, aEntry;[ebx+206Ch]
		mov	module.bar.expl+4, edx
		mov	module.bar.mode+4, 2
		mov	module.bar.defdx+4, 9
		mov	module.bar._name+8, ecx
		lea	eax, aModuleEntryPoi;[ebx+2078h]
		lea	edx, aName;[ebx+209Eh]
		mov	module.bar.expl+8, eax
		mov	module.bar.mode+8, 2
		mov	module.bar.defdx+8, 9
		mov	module.bar._name+0Ch, edx
		lea	ecx, aInternalShortM;[ebx+20A8h]
		lea	eax, aType_2;[ebx+20DEh]
		mov	module.bar.expl+0Ch, ecx
		mov	module.bar.mode+0Ch, 2
		mov	module.bar.defdx+0Ch, 10h
		mov	module.bar._name+10h, eax
		lea	edx, aTypeOfTheModul;[ebx+20E8h]
		lea	ecx, aFileVersion;[ebx+2130h]
		mov	module.bar.expl+10h, edx
		mov	module.bar.mode+10h, 2
		mov	module.bar.defdx+10h, 0Ch
		mov	module.bar._name+14h, ecx
		lea	eax, aVersionOfExecu;[ebx+214Ah]
		lea	edx, aStaticLinks;[ebx+2180h]
		mov	module.bar.expl+14h, eax
		mov	module.bar.mode+14h, 3000h
		mov	module.bar.defdx+14h, 10h
		lea	ecx, aModulesStatica;[ebx+219Ah]
		mov	module.bar._name+18h, edx
		mov	module.bar.expl+18h, ecx
		mov	module.bar.mode+18h, 3000h
		lea	eax, aPath_0;[ebx+21ECh]
		mov	module.bar.defdx+18h, 28h
		lea	edx, aFullNameOfExec;[ebx+21F6h]
		mov	module.bar._name+1Ch, eax
		mov	module.bar.expl+1Ch, edx
		mov	module.bar.mode+1Ch, 3002h
		mov	module.bar.defdx+1Ch, 100h
		mov	module.bar.nbar, 8
		xor	ecx, ecx
		mov	module.tabfunc,	offset loc_416DB0
		xor	eax, eax
		mov	module.custommode, ecx
		xor	edx, edx
		mov	module.customdata, eax
		mov	module.updatefunc, edx
		add	esp, 8
		xor	ecx, ecx
		mov	module.drawfunc, offset	loc_413368
		mov	module.tableselfunc, ecx
		mov	module.menu, offset stru_515C8C

loc_416FD8:				; CODE XREF: .text:00416E08j
		cmp	module.hw, 0
		jnz	short loc_417014
		lea	eax, aExecutableMo_2;[ebx+223Ch]
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; _title
		lea	edx, aIco_e;[ebx+2230h]
		push	edx		; icon
		mov	ecx, g_hInstance
		push	ecx		; hi
		mov	eax, module.bar.nbar
		push	eax		; ncolumn
		push	0		; nrow
		push	offset module	; pt
		call	Createtablewindow
		add	esp, 18h
		jmp	short loc_417024
; ---------------------------------------------------------------------------

loc_417014:				; CODE XREF: .text:00416FDFj
		push	0		; bErase
		push	0		; lpRect
		mov	edx, module.hw
		push	edx		; hWnd
		call	InvalidateRect

loc_417024:				; CODE XREF: .text:00417012j
		cmp	module.hparent,	0
		jz	short loc_417079
		cmp	dword ptr [ebp+8], 0
		jz	short loc_417079
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_417050
		push	0		; lParam
		mov	edx, module.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_417050:				; CODE XREF: .text:0041703Aj
		mov	ecx, module.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_41706D
		push	9		; nCmdShow
		mov	eax, module.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_41706D:				; CODE XREF: .text:0041705Ej
		mov	edx, module.hw
		push	edx		; hWnd
		call	SetFocus

loc_417079:				; CODE XREF: .text:0041702Bj
					; .text:00417031j
		mov	eax, module.hw
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_417084:				; CODE XREF: .text:0041078Ap
					; .text:004B065Bp ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	30h		; n
		push	0		; c
		push	offset g_menu_sel_mod ;	s
		call	_memset
		mov	g_menu_sel_mod._name, (offset aEmptyRange+15h) ;	""
		mov	g_menu_sel_mod.submenu,	(offset	g_menu_sel_mod._name+18h)
		mov	eax, dword_5D8F40
		add	esp, 0Ch
		test	eax, eax
		jz	short loc_4170DF
		mov	edx, module.sorted.n
		inc	edx
		cmp	edx, dword_5D8F44
		jle	short loc_4170DF
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	ecx, ecx
		xor	eax, eax
		mov	dword_5D8F40, ecx
		mov	dword_5D8F44, eax

loc_4170DF:				; CODE XREF: .text:004170B8j
					; .text:004170C7j
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4170EE
		cmp	module.sorted.n, 0
		jnz	short loc_4170F5

loc_4170EE:				; CODE XREF: .text:004170E3j
		xor	eax, eax
		jmp	loc_4171D6
; ---------------------------------------------------------------------------

loc_4170F5:				; CODE XREF: .text:004170ECj
		cmp	dword_5D8F40, 0
		jnz	short loc_41714F
		mov	edx, module.sorted.n
		add	edx, edx
		inc	edx		; int
		mov	[ebp-8], edx
		mov	dword ptr [ebp-0Ch], 20h
		mov	ecx, [ebp-0Ch]	; int
		cmp	ecx, [ebp-8]
		jle	short loc_41711E
		lea	eax, [ebp-0Ch]
		jmp	short loc_417121
; ---------------------------------------------------------------------------

loc_41711E:				; CODE XREF: .text:00417117j
		lea	eax, [ebp-8]

loc_417121:				; CODE XREF: .text:0041711Cj
		mov	ebx, [eax]
		push	3		; flags
		mov	eax, ebx
		shl	eax, 3
		lea	eax, [eax+eax*2] ; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	esi, eax
		mov	dword_5D8F40, esi
		test	esi, esi
		jnz	short loc_417149
		xor	eax, eax
		jmp	loc_4171D6
; ---------------------------------------------------------------------------

loc_417149:				; CODE XREF: .text:00417140j
		mov	dword_5D8F44, ebx

loc_41714F:				; CODE XREF: .text:004170FCj
		xor	esi, esi
		xor	ebx, ebx
		jmp	short loc_4171A2
; ---------------------------------------------------------------------------

loc_417155:				; CODE XREF: .text:004171A8j
		push	esi		; index
		push	offset module.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	short loc_4171A1
		lea	eax, [ebx+ebx*2]
		mov	edx, dword_5D8F40
		xor	ecx, ecx
		mov	dword ptr [edx+eax*8], offset aModule_0	; "Module"
		mov	dword ptr [edx+eax*8+4], offset	aSelectModule ;	"Select	module"
		mov	[edx+eax*8+8], ecx
		mov	ecx, [ebp+8]
		mov	[edx+eax*8+0Ch], ecx
		xor	ecx, ecx
		mov	[edx+eax*8+10h], ecx
		inc	ebx
		mov	ecx, [ebp-4]
		mov	ecx, [ecx]
		mov	[edx+eax*8+14h], ecx

loc_4171A1:				; CODE XREF: .text:0041716Aj
		inc	esi

loc_4171A2:				; CODE XREF: .text:00417153j
		cmp	esi, module.sorted.n
		jl	short loc_417155
		mov	eax, ebx
		push	18h		; n
		shl	eax, 3
		push	0		; c
		lea	eax, [eax+eax*2]
		add	eax, dword_5D8F40
		push	eax		; s
		call	_memset
		add	esp, 0Ch
		mov	edx, dword_5D8F40
		mov	g_menu_sel_mod.submenu,	edx
		mov	eax, offset g_menu_sel_mod

loc_4171D6:				; CODE XREF: .text:004170F0j
					; .text:00417144j
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4171DC:				; CODE XREF: .text:00417662p
					; .text:00417790p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		mov	ecx, [ebp+8]
		mov	eax, [ecx]
		test	eax, eax
		jnz	short loc_4171F4
		xor	eax, eax
		jmp	loc_41727D
; ---------------------------------------------------------------------------

loc_4171F4:				; CODE XREF: .text:004171EBj
		xor	ebx, ebx
		mov	[ebp-4], eax
		mov	eax, [ecx+8]
		mov	[ebp-8], eax

loc_4171FF:				; CODE XREF: .text:00417279j
		mov	eax, [ebp-4]
		add	eax, ebx
		sar	eax, 1
		jns	short loc_41720B
		adc	eax, 0

loc_41720B:				; CODE XREF: .text:00417206j
		mov	edx, [ecx+20h]
		test	edx, edx
		jz	short loc_417217
		mov	edx, [edx+eax*4]
		jmp	short loc_417222
; ---------------------------------------------------------------------------

loc_417217:				; CODE XREF: .text:00417210j
		mov	edx, [ecx+10h]
		mov	esi, [ebp-8]
		imul	esi, eax
		add	edx, esi

loc_417222:				; CODE XREF: .text:00417215j
		mov	esi, [edx]
		cmp	esi, [ebp+0Ch]
		jbe	short loc_41722E
		mov	[ebp-4], eax
		jmp	short loc_417276
; ---------------------------------------------------------------------------

loc_41722E:				; CODE XREF: .text:00417227j
		test	byte ptr [ecx+0Ch], 4
		jz	short loc_41723E
		cmp	esi, [ebp+0Ch]
		jnb	short loc_41727D
		lea	ebx, [eax+1]
		jmp	short loc_417276
; ---------------------------------------------------------------------------

loc_41723E:				; CODE XREF: .text:00417232j
		test	byte ptr [ecx+0Ch], 2
		jz	short loc_41726B
		cmp	esi, [ebp+0Ch]
		jnb	short loc_41724E
		lea	ebx, [eax+1]
		jmp	short loc_417276
; ---------------------------------------------------------------------------

loc_41724E:				; CODE XREF: .text:00417247j
		mov	esi, [edx+8]
		and	esi, 0FFh
		cmp	esi, [ebp+10h]
		jbe	short loc_417261
		mov	[ebp-4], eax
		jmp	short loc_417276
; ---------------------------------------------------------------------------

loc_417261:				; CODE XREF: .text:0041725Aj
		cmp	esi, [ebp+10h]
		jnb	short loc_41727D
		lea	ebx, [eax+1]
		jmp	short loc_417276
; ---------------------------------------------------------------------------

loc_41726B:				; CODE XREF: .text:00417242j
		add	esi, [edx+4]
		cmp	esi, [ebp+0Ch]
		ja	short loc_41727D
		lea	ebx, [eax+1]

loc_417276:				; CODE XREF: .text:0041722Cj
					; .text:0041723Cj ...
		cmp	ebx, [ebp-4]
		jl	short loc_4171FF
		mov	eax, ebx

loc_41727D:				; CODE XREF: .text:004171EFj
					; .text:00417237j ...
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_417284(const void *, const void *)
loc_417284:				; DATA XREF: .text:loc_417FDEo
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		mov	ebx, [edx]
		mov	ecx, [eax]
		cmp	ebx, ecx
		jbe	short loc_41729C
		or	eax, 0FFFFFFFFh
		jmp	short loc_4172E3
; ---------------------------------------------------------------------------

loc_41729C:				; CODE XREF: .text:00417295j
		cmp	ebx, ecx
		jnb	short loc_4172A7
		mov	eax, 1
		jmp	short loc_4172E3
; ---------------------------------------------------------------------------

loc_4172A7:				; CODE XREF: .text:0041729Ej
		mov	ecx, [eax+8]
		test	ch, 4
		jnz	short loc_4172B3
		xor	eax, eax
		jmp	short loc_4172E3
; ---------------------------------------------------------------------------

loc_4172B3:				; CODE XREF: .text:004172ADj
		mov	esi, [edx+8]
		mov	ebx, ecx
		and	ebx, 0FFh
		and	esi, 0FFh
		cmp	esi, ebx
		jbe	short loc_4172CD
		or	eax, 0FFFFFFFFh
		jmp	short loc_4172E3
; ---------------------------------------------------------------------------

loc_4172CD:				; CODE XREF: .text:004172C6j
		mov	edx, [edx+8]
		and	edx, 0FFh
		cmp	ebx, edx
		jbe	short loc_4172E1
		mov	eax, 1
		jmp	short loc_4172E3
; ---------------------------------------------------------------------------

loc_4172E1:				; CODE XREF: .text:004172D8j
		xor	eax, eax

loc_4172E3:				; CODE XREF: .text:0041729Aj
					; .text:004172A5j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4172E8(const void *, const void *)
loc_4172E8:				; DATA XREF: .text:00418A00o
		push	ebp
		mov	ebp, esp
		mov	ecx, offset dword_5D8F48
		push	ebx
		push	esi
		mov	eax, [ecx]
		mov	ebx, [ebp+8]
		mov	edx, [eax+30h]
		test	edx, edx
		jz	short loc_417303
		cmp	edx, 1
		jnz	short loc_417307

loc_417303:				; CODE XREF: .text:004172FCj
		xor	eax, eax
		jmp	short loc_41734C
; ---------------------------------------------------------------------------

loc_417307:				; CODE XREF: .text:00417301j
		mov	edx, [eax+20h]
		test	edx, edx
		jnz	short loc_41732C
		mov	ebx, [ebx]
		mov	edx, [eax+8]
		imul	ebx, edx
		add	ebx, [eax+10h]
		mov	eax, ebx
		mov	ebx, [ebp+0Ch]
		mov	ebx, [ebx]
		imul	ebx, edx
		mov	edx, [ecx]
		add	ebx, [edx+10h]
		mov	edx, ebx
		jmp	short loc_41733E
; ---------------------------------------------------------------------------

loc_41732C:				; CODE XREF: .text:0041730Cj
		mov	eax, [ebx]
		mov	ebx, [ecx]
		mov	eax, [edx+eax*4]
		mov	edx, [ebp+0Ch]
		mov	ebx, [ebx+20h]
		mov	edx, [edx]
		mov	edx, [ebx+edx*4]

loc_41733E:				; CODE XREF: .text:0041732Aj
		mov	esi, [ecx]
		mov	ebx, [esi+38h]
		push	ebx
		push	edx
		push	eax
		call	dword ptr [esi+30h]
		add	esp, 0Ch

loc_41734C:				; CODE XREF: .text:00417305j
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  71. _Destroysorteddata
; Exported entry 475. Destroysorteddata

; void __cdecl Destroysorteddata(t_sorted *sd)
		public Destroysorteddata
Destroysorteddata:			; CODE XREF: .text:00403C38p
					; .text:004107A1p ...
		push	ebp		; _Destroysorteddata
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	loc_417426
		inc	dword_518050
		mov	eax, dword_518050
		mov	[ebx+1Ch], eax
		cmp	dword ptr [ebx], 0
		jle	short loc_4173A3
		cmp	dword ptr [ebx+34h], 0
		jz	short loc_4173A3
		xor	esi, esi
		jmp	short loc_41739F
; ---------------------------------------------------------------------------

loc_41737E:				; CODE XREF: .text:004173A1j
		mov	eax, [ebx+20h]
		test	eax, eax
		jz	short loc_41738A
		mov	edi, [eax+esi*4]
		jmp	short loc_417399
; ---------------------------------------------------------------------------

loc_41738A:				; CODE XREF: .text:00417383j
		mov	eax, [ebx+10h]
		test	eax, eax
		jz	short loc_4173A3
		mov	edi, [ebx+8]
		imul	edi, esi
		add	edi, eax

loc_417399:				; CODE XREF: .text:00417388j
		push	edi
		call	dword ptr [ebx+34h]
		pop	ecx
		inc	esi

loc_41739F:				; CODE XREF: .text:0041737Cj
		cmp	esi, [ebx]
		jl	short loc_41737E

loc_4173A3:				; CODE XREF: .text:00417372j
					; .text:00417378j ...
		mov	eax, [ebx+10h]
		test	eax, eax
		jz	short loc_4173B6
		push	eax		; data
		call	Virtfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+10h], edx

loc_4173B6:				; CODE XREF: .text:004173A8j
		cmp	dword ptr [ebx+14h], 0
		jz	short loc_4173EF
		xor	esi, esi
		jmp	short loc_4173D6
; ---------------------------------------------------------------------------

loc_4173C0:				; CODE XREF: .text:004173D9j
		mov	eax, [ebx+14h]
		mov	edx, [eax+esi*4]
		push	edx		; data
		call	Virtfree
		pop	ecx
		mov	ecx, [ebx+14h]
		xor	eax, eax
		mov	[ecx+esi*4], eax
		inc	esi

loc_4173D6:				; CODE XREF: .text:004173BEj
		cmp	esi, [ebx+18h]
		jl	short loc_4173C0
		mov	edx, [ebx+14h]
		push	edx		; data
		call	Memfree
		pop	ecx
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebx+14h], ecx
		mov	[ebx+18h], eax

loc_4173EF:				; CODE XREF: .text:004173BAj
		mov	eax, [ebx+20h]
		test	eax, eax
		jz	short loc_417402
		push	eax		; data
		call	Virtfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+20h], edx

loc_417402:				; CODE XREF: .text:004173F4j
		mov	eax, [ebx+40h]
		test	eax, eax
		jz	short loc_417415
		push	eax		; data
		call	Virtfree
		pop	ecx
		xor	edx, edx
		mov	[ebx+40h], edx

loc_417415:				; CODE XREF: .text:00417407j
		xor	ecx, ecx
		xor	eax, eax
		mov	[ebx+4], ecx
		mov	[ebx], ecx
		mov	[ebx+30h], eax
		xor	edx, edx
		mov	[ebx+34h], edx

loc_417426:				; CODE XREF: .text:0041735Bj
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  72. _Createsorteddata
; Exported entry 445. Createsorteddata

; signed int __cdecl Createsorteddata(t_sorted *sd, ulong itemsize, int	nexp, SORTFUNC *sortfunc, DESTFUNC *destfunc, int mode)
		public Createsorteddata
Createsorteddata:			; CODE XREF: .text:00403A1Cp
					; .text:0040FEEFp ...
		push	ebp		; _Createsorteddata
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_417440
		cmp	dword ptr [ebp+10h], 0
		jg	short loc_417448

loc_417440:				; CODE XREF: .text:00417438j
		or	eax, 0FFFFFFFFh
		jmp	loc_417630
; ---------------------------------------------------------------------------

loc_417448:				; CODE XREF: .text:0041743Ej
		cmp	dword ptr [ebp+0Ch], 1
		jnz	short loc_41745C
		cmp	dword ptr [ebp+1Ch], 0
		jz	short loc_417484
		or	eax, 0FFFFFFFFh
		jmp	loc_417630
; ---------------------------------------------------------------------------

loc_41745C:				; CODE XREF: .text:0041744Cj
		test	byte ptr [ebp+1Ch], 4
		jz	short loc_417476
		cmp	dword ptr [ebp+0Ch], 4
		jb	short loc_41746E
		cmp	dword ptr [ebp+14h], 1
		jnz	short loc_417484

loc_41746E:				; CODE XREF: .text:00417466j
		or	eax, 0FFFFFFFFh
		jmp	loc_417630
; ---------------------------------------------------------------------------

loc_417476:				; CODE XREF: .text:00417460j
		cmp	dword ptr [ebp+0Ch], 0Ch
		jnb	short loc_417484
		or	eax, 0FFFFFFFFh
		jmp	loc_417630
; ---------------------------------------------------------------------------

loc_417484:				; CODE XREF: .text:00417452j
					; .text:0041746Cj ...
		test	byte ptr [ebp+1Ch], 4
		jz	short loc_417491
		mov	dword ptr [ebp+1Ch], 4

loc_417491:				; CODE XREF: .text:00417488j
		push	esi		; sd
		call	Destroysorteddata
		test	byte ptr [ebp+1Ch], 1
		pop	ecx		; int
		jnz	short loc_4174C5
		push	0		; flags
		mov	edx, [ebp+10h]
		imul	edx, [ebp+0Ch]	; int
		push	edx		; size
		call	Virtalloc
		add	esp, 8
		mov	ebx, eax
		mov	[esi+10h], ebx
		test	ebx, ebx
		jnz	loc_4175AF
		or	eax, 0FFFFFFFFh
		jmp	loc_417630
; ---------------------------------------------------------------------------

loc_4174C5:				; CODE XREF: .text:0041749Cj
		cmp	dword ptr [ebp+0Ch], 100000h
		jbe	short loc_4174D6
		or	eax, 0FFFFFFFFh
		jmp	loc_417630
; ---------------------------------------------------------------------------

loc_4174D6:				; CODE XREF: .text:004174CCj
		mov	eax, 100000h
		xor	edx, edx
		div	dword ptr [ebp+0Ch]
		mov	[ebp-4], eax
		mov	eax, [ebp+10h]
		add	eax, [ebp-4]
		dec	eax
		cdq
		idiv	dword ptr [ebp-4] ; int
		mov	edi, eax
		cmp	edi, 800h
		jle	short loc_417500
		or	eax, 0FFFFFFFFh
		jmp	loc_417630
; ---------------------------------------------------------------------------

loc_417500:				; CODE XREF: .text:004174F6j
		mov	edx, [ebp-4]
		imul	edx, edi	; int
		mov	[ebp+10h], edx
		push	1		; flags
		push	2000h		; size
		call	Memalloc
		add	esp, 8
		mov	ebx, eax
		mov	[esi+14h], ebx
		test	ebx, ebx
		jnz	short loc_417529
		or	eax, 0FFFFFFFFh
		jmp	loc_417630
; ---------------------------------------------------------------------------

loc_417529:				; CODE XREF: .text:0041751Fj
		xor	ebx, ebx
		cmp	edi, ebx
		jle	short loc_417552

loc_41752F:				; CODE XREF: .text:00417550j
		push	0		; flags
		push	100000h		; size
		call	Virtalloc
		add	esp, 8
		mov	edx, [esi+14h]	; int
		mov	[edx+ebx*4], eax
		mov	eax, [esi+14h]	; int
		cmp	dword ptr [eax+ebx*4], 0
		jz	short loc_417552
		inc	ebx
		cmp	edi, ebx
		jg	short loc_41752F

loc_417552:				; CODE XREF: .text:0041752Dj
					; .text:0041754Bj
		mov	[esi+18h], ebx
		push	0		; flags
		mov	ecx, [ebp+10h]
		shl	ecx, 2		; int
		push	ecx		; size
		call	Virtalloc
		add	esp, 8
		mov	[esi+20h], eax
		cmp	edi, ebx
		jg	short loc_417573
		cmp	dword ptr [esi+20h], 0
		jnz	short loc_417582

loc_417573:				; CODE XREF: .text:0041756Bj
		push	esi		; sd
		call	Destroysorteddata
		pop	ecx
		or	eax, 0FFFFFFFFh
		jmp	loc_417630
; ---------------------------------------------------------------------------

loc_417582:				; CODE XREF: .text:00417571j
		xor	ebx, ebx
		cmp	ebx, [ebp+10h]
		jge	short loc_4175AF

loc_417589:				; CODE XREF: .text:004175ADj
		mov	eax, ebx
		mov	ecx, [esi+14h]
		cdq
		idiv	dword ptr [ebp-4]
		mov	edx, [ecx+eax*4]
		mov	ecx, ebx
		imul	eax, [ebp-4]
		sub	ecx, eax
		mov	eax, [esi+20h]	; int
		imul	ecx, [ebp+0Ch]
		add	edx, ecx	; int
		mov	[eax+ebx*4], edx
		inc	ebx
		cmp	ebx, [ebp+10h]
		jl	short loc_417589

loc_4175AF:				; CODE XREF: .text:004174B7j
					; .text:00417587j
		cmp	dword ptr [ebp+0Ch], 1
		jnz	short loc_4175C1
		xor	eax, eax
		mov	[esi+30h], eax
		xor	edx, edx
		mov	[ebp+1Ch], edx
		jmp	short loc_4175F9
; ---------------------------------------------------------------------------

loc_4175C1:				; CODE XREF: .text:004175B3j
		cmp	dword ptr [ebp+14h], 1
		jnz	short loc_4175CD
		and	dword ptr [ebp+1Ch], 0FFFFFFFDh
		jmp	short loc_4175F9
; ---------------------------------------------------------------------------

loc_4175CD:				; CODE XREF: .text:004175C5j
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4175F9
		push	0		; flags
		mov	ecx, [ebp+10h]
		shl	ecx, 2		; int
		push	ecx		; size
		call	Virtalloc
		add	esp, 8
		mov	ebx, eax
		mov	[esi+40h], ebx
		test	ebx, ebx
		jnz	short loc_4175F9
		push	esi		; sd
		call	Destroysorteddata
		pop	ecx
		or	eax, 0FFFFFFFFh
		jmp	short loc_417630
; ---------------------------------------------------------------------------

loc_4175F9:				; CODE XREF: .text:004175BFj
					; .text:004175CBj ...
		mov	edx, [ebp+14h]
		xor	ecx, ecx
		mov	[esi+30h], edx
		mov	[esi], ecx
		mov	eax, [ebp+10h]
		mov	[esi+4], eax
		mov	edx, [ebp+0Ch]
		mov	[esi+8], edx
		xor	edx, edx
		mov	ecx, [ebp+1Ch]
		mov	[esi+0Ch], ecx
		mov	dword ptr [esi+24h], 0FFFFFFFFh
		mov	eax, [ebp+18h]
		mov	[esi+34h], eax
		mov	[esi+38h], edx
		mov	dword ptr [esi+3Ch], 1
		xor	eax, eax

loc_417630:				; CODE XREF: .text:00417443j
					; .text:00417457j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  73. _Deletesorteddata
; Exported entry 470. Deletesorteddata

; void __cdecl Deletesorteddata(t_sorted *sd, ulong _addr, ulong	subaddr)
		public Deletesorteddata
Deletesorteddata:			; CODE XREF: .text:00403DA9p
					; .text:00403E41p ...
		push	ebp		; _Deletesorteddata
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	loc_417756
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_417659
		cmp	dword ptr [ebx+20h], 0
		jz	loc_417756

loc_417659:				; CODE XREF: .text:0041764Dj
		mov	eax, [ebp+10h]
		push	eax
		mov	edx, [ebp+0Ch]
		push	edx
		push	ebx
		call	loc_4171DC
		add	esp, 0Ch
		mov	esi, eax
		mov	eax, [ebx+20h]
		test	eax, eax
		jz	short loc_417678
		mov	edi, [eax+esi*4]
		jmp	short loc_417681
; ---------------------------------------------------------------------------

loc_417678:				; CODE XREF: .text:00417671j
		mov	edi, [ebx+8]
		imul	edi, esi
		add	edi, [ebx+10h]

loc_417681:				; CODE XREF: .text:00417676j
		cmp	esi, [ebx]
		jge	loc_417756
		mov	eax, [edi]
		cmp	eax, [ebp+0Ch]
		jnz	loc_417756
		test	byte ptr [ebx+0Ch], 2
		jz	short loc_4176AC
		mov	edx, [edi+8]
		and	edx, 0FFh
		cmp	edx, [ebp+10h]
		jnz	loc_417756

loc_4176AC:				; CODE XREF: .text:00417698j
		mov	ecx, [ebx+28h]
		cmp	ecx, [ebp+0Ch]
		jnz	short loc_4176D4
		test	byte ptr [ebx+0Ch], 2
		jz	short loc_4176C2
		mov	eax, [ebx+2Ch]
		cmp	eax, [ebp+10h]
		jnz	short loc_4176D4

loc_4176C2:				; CODE XREF: .text:004176B8j
		cmp	dword ptr [ebx+30h], 1
		jnz	short loc_4176CD
		inc	dword ptr [ebx+24h]
		jmp	short loc_4176D4
; ---------------------------------------------------------------------------

loc_4176CD:				; CODE XREF: .text:004176C6j
		mov	dword ptr [ebx+24h], 0FFFFFFFFh

loc_4176D4:				; CODE XREF: .text:004176B2j
					; .text:004176C0j ...
		cmp	dword ptr [ebx+34h], 0
		jz	short loc_4176DF
		push	edi
		call	dword ptr [ebx+34h]
		pop	ecx

loc_4176DF:				; CODE XREF: .text:004176D8j
		dec	dword ptr [ebx]
		mov	eax, [ebx]
		cmp	esi, eax
		jge	short loc_417731
		cmp	dword ptr [ebx+20h], 0
		jnz	short loc_417704
		sub	eax, esi
		mov	edx, [ebx+8]
		imul	eax, edx
		push	eax		; n
		add	edx, edi
		push	edx		; src
		push	edi		; dest
		call	_memmove
		add	esp, 0Ch
		jmp	short loc_417731
; ---------------------------------------------------------------------------

loc_417704:				; CODE XREF: .text:004176EBj
		mov	eax, [ebx+20h]
		mov	ecx, [ebx]
		sub	ecx, esi
		mov	edx, esi
		shl	ecx, 2
		mov	edi, [eax+esi*4]
		shl	edx, 2
		push	ecx		; n
		add	edx, [ebx+20h]
		mov	ecx, edx
		add	ecx, 4
		push	ecx		; src
		push	edx		; dest
		call	_memmove
		mov	eax, [ebx+20h]
		mov	edx, [ebx]
		add	esp, 0Ch
		mov	[eax+edx*4], edi

loc_417731:				; CODE XREF: .text:004176E5j
					; .text:00417702j
		xor	eax, eax
		mov	[ebx+3Ch], eax
		cmp	dword ptr [ebx+30h], 1
		jnz	short loc_417747
		push	0		; sort
		push	ebx		; sd
		call	Sortsorteddata
		add	esp, 8

loc_417747:				; CODE XREF: .text:0041773Aj
		inc	dword_518050
		mov	edx, dword_518050
		mov	[ebx+1Ch], edx

loc_417756:				; CODE XREF: .text:00417643j
					; .text:00417653j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  74. _Deletesorteddatarange
; Exported entry 471. Deletesorteddatarange

; int __cdecl Deletesorteddatarange(t_sorted *sd, ulong	addr0, ulong addr1)
		public Deletesorteddatarange
Deletesorteddatarange:			; CODE XREF: .text:00417EDCp
					; .text:004180A9p ...
		push	ebp		; _Deletesorteddatarange
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_417780
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_41777B
		cmp	dword ptr [ebx+20h], 0
		jz	short loc_417780

loc_41777B:				; CODE XREF: .text:00417773j
		cmp	esi, [ebp+10h]
		jb	short loc_417787

loc_417780:				; CODE XREF: .text:0041776Dj
					; .text:00417779j
		xor	eax, eax
		jmp	loc_417976
; ---------------------------------------------------------------------------

loc_417787:				; CODE XREF: .text:0041777Ej
		xor	edx, edx
		mov	[ebp-8], edx
		push	0
		push	esi
		push	ebx
		call	loc_4171DC
		add	esp, 0Ch
		mov	[ebp-4], eax
		mov	esi, eax
		jmp	short loc_4177F4
; ---------------------------------------------------------------------------

loc_41779F:				; CODE XREF: .text:004177F6j
		mov	eax, [ebx+20h]
		test	eax, eax
		jz	short loc_4177AB
		mov	edi, [eax+esi*4]
		jmp	short loc_4177B4
; ---------------------------------------------------------------------------

loc_4177AB:				; CODE XREF: .text:004177A4j
		mov	edi, [ebx+8]
		imul	edi, esi
		add	edi, [ebx+10h]

loc_4177B4:				; CODE XREF: .text:004177A9j
		mov	eax, [edi]
		cmp	eax, [ebp+10h]
		jnb	short loc_4177F8
		mov	edx, [edi]
		cmp	edx, [ebx+28h]
		jnz	short loc_4177E5
		test	byte ptr [ebx+0Ch], 2
		jz	short loc_4177D3
		mov	ecx, [edi+8]
		and	ecx, 2
		cmp	ecx, [ebx+2Ch]
		jnz	short loc_4177E5

loc_4177D3:				; CODE XREF: .text:004177C6j
		cmp	dword ptr [ebx+30h], 1
		jnz	short loc_4177DE
		inc	dword ptr [ebx+24h]
		jmp	short loc_4177E5
; ---------------------------------------------------------------------------

loc_4177DE:				; CODE XREF: .text:004177D7j
		mov	dword ptr [ebx+24h], 0FFFFFFFFh

loc_4177E5:				; CODE XREF: .text:004177C0j
					; .text:004177D1j ...
		cmp	dword ptr [ebx+34h], 0
		jz	short loc_4177F0
		push	edi
		call	dword ptr [ebx+34h]
		pop	ecx		; int

loc_4177F0:				; CODE XREF: .text:004177E9j
		inc	dword ptr [ebp-8]
		inc	esi

loc_4177F4:				; CODE XREF: .text:0041779Dj
		cmp	esi, [ebx]
		jl	short loc_41779F

loc_4177F8:				; CODE XREF: .text:004177B9j
		cmp	esi, [ebp-4]
		jnz	short loc_417805
		mov	eax, [ebp-8]
		jmp	loc_417976
; ---------------------------------------------------------------------------

loc_417805:				; CODE XREF: .text:004177FBj
		mov	edx, [ebx]
		cmp	esi, edx
		jge	loc_417949
		cmp	dword ptr [ebx+20h], 0
		jnz	short loc_417835
		mov	eax, [ebx+8]
		imul	eax, [ebp-4]
		add	eax, [ebx+10h]
		sub	edx, esi
		imul	edx, [ebx+8]
		push	edx		; n
		push	edi		; src
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch
		jmp	loc_417949
; ---------------------------------------------------------------------------

loc_417835:				; CODE XREF: .text:00417813j
		push	1		; flags
		mov	edx, esi
		sub	edx, [ebp-4]
		shl	edx, 2		; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	edi, eax
		test	edi, edi
		jnz	loc_4178E2
		mov	edi, [ebp-4]
		shl	edi, 2
		add	edi, [ebx+20h]
		xor	eax, eax
		mov	edx, edi
		mov	[ebp-10h], edx
		jmp	short loc_41788F
; ---------------------------------------------------------------------------

loc_417864:				; CODE XREF: .text:0041789Dj
		mov	ecx, [ebp-10h]
		mov	edx, [ecx]
		mov	[ebp-0Ch], edx
		mov	ecx, [ebx]
		sub	ecx, [ebp-4]
		sub	ecx, eax
		mov	edx, [edi+ecx*4-4]
		mov	ecx, [ebp-10h]
		mov	[ecx], edx
		mov	edx, [ebx]
		sub	edx, [ebp-4]
		sub	edx, eax
		mov	ecx, [ebp-0Ch]
		mov	[edi+edx*4-4], ecx
		inc	eax
		add	dword ptr [ebp-10h], 4

loc_41788F:				; CODE XREF: .text:00417862j
		mov	edx, [ebx]
		sub	edx, [ebp-4]
		sar	edx, 1
		jns	short loc_41789B
		adc	edx, 0

loc_41789B:				; CODE XREF: .text:00417896j
		cmp	eax, edx
		jl	short loc_417864
		xor	eax, eax
		mov	ecx, edi
		mov	[ebp-14h], ecx
		jmp	short loc_4178D1
; ---------------------------------------------------------------------------

loc_4178A8:				; CODE XREF: .text:004178DEj
		mov	edx, [ebp-14h]
		mov	ecx, [edx]
		mov	[ebp-0Ch], ecx
		mov	edx, [ebx]
		sub	edx, esi
		sub	edx, eax
		mov	ecx, [edi+edx*4-4]
		mov	edx, [ebp-14h]
		mov	[edx], ecx
		mov	ecx, [ebx]
		sub	ecx, esi
		sub	ecx, eax
		mov	edx, [ebp-0Ch]
		mov	[edi+ecx*4-4], edx
		inc	eax
		add	dword ptr [ebp-14h], 4

loc_4178D1:				; CODE XREF: .text:004178A6j
		mov	ecx, [ebx]
		sub	ecx, esi
		sar	ecx, 1
		jns	short loc_4178DC
		adc	ecx, 0

loc_4178DC:				; CODE XREF: .text:004178D7j
		cmp	eax, ecx
		jl	short loc_4178A8
		jmp	short loc_417949
; ---------------------------------------------------------------------------

loc_4178E2:				; CODE XREF: .text:0041784Cj
		mov	eax, esi
		sub	eax, [ebp-4]
		shl	eax, 2
		push	eax		; n
		mov	eax, [ebp-4]
		shl	eax, 2
		add	eax, [ebx+20h]
		push	eax		; src
		push	edi		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [ebx]
		sub	edx, esi
		shl	edx, 2
		push	edx		; n
		mov	ecx, esi
		shl	ecx, 2
		mov	eax, [ebx+20h]
		add	ecx, eax
		push	ecx		; src
		mov	edx, [ebp-4]
		shl	edx, 2
		add	edx, eax
		push	edx		; dest
		call	_memmove
		add	esp, 0Ch
		mov	ecx, esi
		sub	ecx, [ebp-4]
		shl	ecx, 2
		push	ecx		; n
		push	edi		; src
		mov	eax, [ebp-4]
		add	eax, [ebx]
		sub	eax, esi
		shl	eax, 2
		add	eax, [ebx+20h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		push	edi		; data
		call	Memfree
		pop	ecx

loc_417949:				; CODE XREF: .text:00417809j
					; .text:00417830j ...
		sub	esi, [ebp-4]
		xor	edx, edx
		sub	[ebx], esi
		mov	[ebx+3Ch], edx
		cmp	dword ptr [ebx+30h], 1
		jnz	short loc_417964
		push	0		; sort
		push	ebx		; sd
		call	Sortsorteddata
		add	esp, 8

loc_417964:				; CODE XREF: .text:00417957j
		inc	dword_518050
		mov	ecx, dword_518050
		mov	[ebx+1Ch], ecx
		mov	eax, [ebp-8]

loc_417976:				; CODE XREF: .text:00417782j
					; .text:00417800j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  75. _Addsorteddata
; Exported entry 396. Addsorteddata

; int __cdecl Addsorteddata(t_sorted *sd, void *item)
		public Addsorteddata
Addsorteddata:				; CODE XREF: .text:00403D0Ap
					; .text:00403E76p ...
		push	ebp		; _Addsorteddata
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4179A2
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_41799C
		cmp	dword ptr [ebx+20h], 0
		jz	short loc_4179A2

loc_41799C:				; CODE XREF: .text:00417994j
		cmp	dword ptr [ebp+0Ch], 0
		jnz	short loc_4179A9

loc_4179A2:				; CODE XREF: .text:0041798Ej
					; .text:0041799Aj
		xor	eax, eax
		jmp	loc_417EF9
; ---------------------------------------------------------------------------

loc_4179A9:				; CODE XREF: .text:004179A0j
		mov	edx, [ebp+0Ch]
		mov	[ebp-1Ch], edx
		test	byte ptr [ebx+0Ch], 4
		jnz	short loc_4179F3
		cmp	dword ptr [ebx+30h], 1
		jnz	short loc_4179C7
		mov	ecx, [ebp-1Ch]
		mov	dword ptr [ecx+4], 1
		jmp	short loc_4179F3
; ---------------------------------------------------------------------------

loc_4179C7:				; CODE XREF: .text:004179B9j
		test	byte ptr [ebx+0Ch], 2
		jz	short loc_4179E3
		mov	eax, [ebp-1Ch]
		mov	dword ptr [eax+4], 1
		mov	edx, [ebp-1Ch]
		or	dword ptr [edx+8], 400h
		jmp	short loc_4179F3
; ---------------------------------------------------------------------------

loc_4179E3:				; CODE XREF: .text:004179CBj
		mov	ecx, [ebp-1Ch]
		cmp	dword ptr [ecx+4], 0
		jnz	short loc_4179F3
		xor	eax, eax
		jmp	loc_417EF9
; ---------------------------------------------------------------------------

loc_4179F3:				; CODE XREF: .text:004179B3j
					; .text:004179C5j ...
		inc	dword_518050
		mov	edx, dword_518050
		mov	[ebx+1Ch], edx
		mov	eax, [ebx+4]
		cmp	eax, [ebx]
		jg	loc_417C87
		mov	edx, eax
		imul	edx, [ebx+8]	; int
		cmp	edx, 40000000h
		jnb	loc_417C87
		test	byte ptr [ebx+0Ch], 8
		jnz	loc_417C87
		cmp	dword ptr [ebx+10h], 0
		jz	loc_417AF9
		add	eax, eax
		mov	[ebp-0Ch], eax
		push	1		; flags
		mov	edi, [ebp-0Ch]
		mov	eax, edi
		imul	dword ptr [ebx+8] ; int
		push	eax		; size
		call	Virtalloc
		add	esp, 8
		mov	esi, eax
		cmp	dword ptr [ebx+40h], 0
		jz	short loc_417A66
		shl	edi, 2
		push	0		; flags
		push	edi		; size
		call	Virtalloc
		add	esp, 8
		mov	[ebp-24h], eax
		jmp	short loc_417A6B
; ---------------------------------------------------------------------------

loc_417A66:				; CODE XREF: .text:00417A51j
		xor	eax, eax
		mov	[ebp-24h], eax

loc_417A6B:				; CODE XREF: .text:00417A64j
		test	esi, esi
		jz	short loc_417A7B
		cmp	dword ptr [ebx+40h], 0
		jz	short loc_417A9F
		cmp	dword ptr [ebp-24h], 0
		jnz	short loc_417A9F

loc_417A7B:				; CODE XREF: .text:00417A6Dj
		test	esi, esi
		jz	short loc_417A86
		push	esi		; data
		call	Virtfree
		pop	ecx

loc_417A86:				; CODE XREF: .text:00417A7Dj
		cmp	dword ptr [ebp-24h], 0
		jz	loc_417C87
		mov	edx, [ebp-24h]
		push	edx		; data
		call	Virtfree
		pop	ecx
		jmp	loc_417C87
; ---------------------------------------------------------------------------

loc_417A9F:				; CODE XREF: .text:00417A73j
					; .text:00417A79j
		mov	ecx, [ebx+4]
		imul	ecx, [ebx+8]
		push	ecx		; n
		mov	eax, [ebx+10h]
		push	eax		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [ebx+10h]
		push	edx		; data
		call	Virtfree
		pop	ecx
		mov	[ebx+10h], esi
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_417AEE
		mov	ecx, [ebx+4]
		shl	ecx, 2
		push	ecx		; n
		mov	eax, [ebx+40h]
		push	eax		; src
		mov	edx, [ebp-24h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, [ebx+40h]
		push	ecx		; data
		call	Virtfree
		pop	ecx
		mov	eax, [ebp-24h]
		mov	[ebx+40h], eax

loc_417AEE:				; CODE XREF: .text:00417AC5j
		mov	edx, [ebp-0Ch]
		mov	[ebx+4], edx
		jmp	loc_417C87
; ---------------------------------------------------------------------------

loc_417AF9:				; CODE XREF: .text:00417A2Dj
		mov	ecx, [ebx+4]
		mov	eax, 100000h
		mov	[ebp-0Ch], ecx
		xor	edx, edx
		div	dword ptr [ebx+8]
		mov	[ebp-8], eax
		mov	edi, [ebx+18h]
		jmp	short loc_417B36
; ---------------------------------------------------------------------------

loc_417B11:				; CODE XREF: .text:00417B4Ej
		push	1		; flags
		push	100000h		; size
		call	Virtalloc
		mov	esi, eax
		mov	eax, [ebx+14h]
		add	esp, 8
		test	esi, esi
		mov	[eax+edi*4], esi
		mov	edx, [ebx+14h]	; int
		jz	short loc_417B50
		mov	ecx, [ebp-8]	; int
		add	[ebp-0Ch], ecx
		inc	edi

loc_417B36:				; CODE XREF: .text:00417B0Fj
		cmp	edi, 800h
		jge	short loc_417B50
		mov	eax, [ebx+4]
		lea	eax, [eax+eax*2]
		sar	eax, 1
		jns	short loc_417B4B
		adc	eax, 0		; int

loc_417B4B:				; CODE XREF: .text:00417B46j
		cmp	eax, [ebp-0Ch]
		jg	short loc_417B11

loc_417B50:				; CODE XREF: .text:00417B2Dj
					; .text:00417B3Cj
		mov	edx, [ebp-0Ch]	; int
		cmp	edx, [ebx+4]
		jle	loc_417C87
		push	0		; flags
		mov	esi, [ebp-0Ch]
		shl	esi, 2
		push	esi		; size
		call	Virtalloc
		add	esp, 8
		mov	[ebp-20h], eax
		cmp	dword ptr [ebx+40h], 0
		jz	short loc_417B86
		push	0		; flags
		push	esi		; size
		call	Virtalloc
		add	esp, 8
		mov	[ebp-24h], eax
		jmp	short loc_417B8B
; ---------------------------------------------------------------------------

loc_417B86:				; CODE XREF: .text:00417B74j
		xor	eax, eax
		mov	[ebp-24h], eax

loc_417B8B:				; CODE XREF: .text:00417B84j
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_417B9D
		cmp	dword ptr [ebx+40h], 0
		jz	short loc_417BE7
		cmp	dword ptr [ebp-24h], 0
		jnz	short loc_417BE7

loc_417B9D:				; CODE XREF: .text:00417B8Fj
		mov	esi, [ebx+18h]
		cmp	edi, esi
		jle	short loc_417BBE

loc_417BA4:				; CODE XREF: .text:00417BBCj
		mov	eax, [ebx+14h]
		mov	edx, [eax+esi*4]
		push	edx		; data
		call	Virtfree
		pop	ecx
		mov	ecx, [ebx+14h]
		xor	eax, eax
		mov	[ecx+esi*4], eax
		inc	esi
		cmp	edi, esi
		jg	short loc_417BA4

loc_417BBE:				; CODE XREF: .text:00417BA2j
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_417BCE
		mov	edx, [ebp-20h]
		push	edx		; data
		call	Virtfree
		pop	ecx

loc_417BCE:				; CODE XREF: .text:00417BC2j
		cmp	dword ptr [ebp-24h], 0
		jz	loc_417C87
		mov	ecx, [ebp-24h]
		push	ecx		; data
		call	Virtfree
		pop	ecx
		jmp	loc_417C87
; ---------------------------------------------------------------------------

loc_417BE7:				; CODE XREF: .text:00417B95j
					; .text:00417B9Bj
		mov	eax, [ebx+4]
		shl	eax, 2
		push	eax		; n
		mov	edx, [ebx+20h]
		push	edx		; src
		mov	ecx, [ebp-20h]
		push	ecx		; dest
		call	_memcpy
		mov	esi, [ebx+4]
		mov	eax, [ebp-20h]
		add	esp, 0Ch
		lea	edx, [eax+esi*4]
		mov	[ebp-28h], edx
		cmp	esi, [ebp-0Ch]
		jge	short loc_417C41

loc_417C0F:				; CODE XREF: .text:00417C3Fj
		mov	eax, esi
		cdq
		idiv	dword ptr [ebp-8]
		mov	[ebp-4], eax
		mov	eax, [ebp-4]
		mov	ecx, [ebx+14h]
		mov	edx, [ecx+eax*4]
		mov	ecx, [ebp-4]
		imul	ecx, [ebp-8]
		mov	eax, esi
		inc	esi
		sub	eax, ecx
		mov	ecx, [ebp-28h]
		imul	eax, [ebx+8]
		add	edx, eax
		mov	[ecx], edx
		add	dword ptr [ebp-28h], 4
		cmp	esi, [ebp-0Ch]
		jl	short loc_417C0F

loc_417C41:				; CODE XREF: .text:00417C0Dj
		mov	edx, [ebx+20h]
		push	edx		; data
		call	Virtfree
		pop	ecx
		mov	eax, [ebp-20h]
		mov	[ebx+20h], eax
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_417C7E
		mov	edx, [ebx+4]
		shl	edx, 2
		push	edx		; n
		mov	ecx, [ebx+40h]
		push	ecx		; src
		mov	eax, [ebp-24h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [ebx+40h]
		push	edx		; data
		call	Virtfree
		pop	ecx
		mov	ecx, [ebp-24h]
		mov	[ebx+40h], ecx

loc_417C7E:				; CODE XREF: .text:00417C55j
		mov	[ebx+18h], edi
		mov	eax, [ebp-0Ch]
		mov	[ebx+4], eax

loc_417C87:				; CODE XREF: .text:00417A07j
					; .text:00417A19j ...
		mov	edx, [ebx]
		cmp	edx, [ebx+4]
		jl	short loc_417C95
		xor	eax, eax
		jmp	loc_417EF9
; ---------------------------------------------------------------------------

loc_417C95:				; CODE XREF: .text:00417C8Cj
		mov	edx, [ebp-1Ch]
		mov	ecx, [edx]
		mov	[ebp-10h], ecx
		test	byte ptr [ebx+0Ch], 4
		jz	short loc_417CB1
		mov	eax, [ebp-10h]
		inc	eax
		mov	[ebp-14h], eax
		xor	edx, edx
		mov	[ebp-18h], edx
		jmp	short loc_417CCC
; ---------------------------------------------------------------------------

loc_417CB1:				; CODE XREF: .text:00417CA1j
		mov	ecx, [ebp-1Ch]
		mov	eax, [ecx+4]
		add	eax, [ebp-10h]
		mov	[ebp-14h], eax
		mov	edx, [ebp-1Ch]
		mov	ecx, [edx+8]
		and	ecx, 0FFh
		mov	[ebp-18h], ecx

loc_417CCC:				; CODE XREF: .text:00417CAFj
		mov	eax, [ebp-18h]
		push	eax
		mov	edx, [ebp-10h]
		push	edx
		push	ebx
		call	loc_4171DC
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebx+30h], 1
		jnz	short loc_417D1F
		mov	[ebp-4], esi
		jmp	short loc_417D08
; ---------------------------------------------------------------------------

loc_417CEA:				; CODE XREF: .text:00417D0Dj
		mov	eax, [ebx+20h]
		test	eax, eax
		jz	short loc_417CF9
		mov	edx, [ebp-4]
		mov	edi, [eax+edx*4]
		jmp	short loc_417D03
; ---------------------------------------------------------------------------

loc_417CF9:				; CODE XREF: .text:00417CEFj
		mov	edi, [ebx+8]
		imul	edi, [ebp-4]
		add	edi, [ebx+10h]

loc_417D03:				; CODE XREF: .text:00417CF7j
		inc	dword ptr [edi]
		inc	dword ptr [ebp-4]

loc_417D08:				; CODE XREF: .text:00417CE8j
		mov	eax, [ebp-4]
		cmp	eax, [ebx]
		jl	short loc_417CEA
		cmp	esi, [ebx+24h]
		jg	short loc_417D1A
		inc	dword ptr [ebx+24h]
		inc	dword ptr [ebx+28h]

loc_417D1A:				; CODE XREF: .text:00417D12j
		mov	edx, [ebp-1Ch]
		mov	[edx], esi

loc_417D1F:				; CODE XREF: .text:00417CE3j
		mov	eax, [ebx+20h]
		test	eax, eax
		jz	short loc_417D2B
		mov	edi, [eax+esi*4]
		jmp	short loc_417D34
; ---------------------------------------------------------------------------

loc_417D2B:				; CODE XREF: .text:00417D24j
		mov	edi, [ebx+8]
		imul	edi, esi
		add	edi, [ebx+10h]

loc_417D34:				; CODE XREF: .text:00417D29j
		cmp	esi, [ebx]
		jge	short loc_417D6A
		test	byte ptr [ebx+0Ch], 2
		jnz	short loc_417D45
		mov	eax, [edi]
		cmp	eax, [ebp-14h]
		jnb	short loc_417D6A

loc_417D45:				; CODE XREF: .text:00417D3Cj
		test	byte ptr [ebx+0Ch], 2
		jz	loc_417DD7
		mov	edx, [edi]
		cmp	edx, [ebp-14h]
		ja	short loc_417D6A
		mov	ecx, [edi]
		cmp	ecx, [ebp-10h]
		jnz	short loc_417DD7
		mov	eax, [edi+8]
		and	eax, 0FFh
		cmp	eax, [ebp-18h]
		jbe	short loc_417DD7

loc_417D6A:				; CODE XREF: .text:00417D36j
					; .text:00417D43j ...
		mov	eax, [ebx]
		cmp	esi, eax
		jge	short loc_417DB8
		cmp	dword ptr [ebx+20h], 0
		jnz	short loc_417D8D
		sub	eax, esi
		mov	edx, [ebx+8]
		imul	eax, edx
		push	eax		; n
		push	edi		; src
		add	edx, edi
		push	edx		; dest
		call	_memmove
		add	esp, 0Ch
		jmp	short loc_417DB8
; ---------------------------------------------------------------------------

loc_417D8D:				; CODE XREF: .text:00417D74j
		mov	eax, [ebx+20h]
		mov	edx, [ebx]
		mov	ecx, [ebx]
		sub	ecx, esi
		mov	edi, [eax+edx*4]
		shl	ecx, 2
		mov	edx, esi
		shl	edx, 2
		push	ecx		; n
		add	edx, [ebx+20h]
		push	edx		; src
		add	edx, 4
		push	edx		; dest
		call	_memmove
		add	esp, 0Ch
		mov	eax, [ebx+20h]
		mov	[eax+esi*4], edi

loc_417DB8:				; CODE XREF: .text:00417D6Ej
					; .text:00417D8Bj
		mov	eax, [ebx+8]
		push	eax		; n
		mov	edx, [ebp+0Ch]
		push	edx		; src
		push	edi		; dest
		call	_memcpy
		inc	dword ptr [ebx]
		add	esp, 0Ch
		xor	ecx, ecx
		mov	eax, edi
		mov	[ebx+3Ch], ecx
		jmp	loc_417EF9
; ---------------------------------------------------------------------------

loc_417DD7:				; CODE XREF: .text:00417D49j
					; .text:00417D5Bj ...
		mov	edx, [edi]
		cmp	edx, [ebp-10h]
		ja	short loc_417E59
		test	byte ptr [ebx+0Ch], 4
		mov	ecx, [edi]
		jz	short loc_417DED
		mov	eax, 1
		jmp	short loc_417DF0
; ---------------------------------------------------------------------------

loc_417DED:				; CODE XREF: .text:00417DE4j
		mov	eax, [edi+4]

loc_417DF0:				; CODE XREF: .text:00417DEBj
		add	ecx, eax
		cmp	ecx, [ebp-14h]
		jb	short loc_417E59
		test	byte ptr [ebx+0Ch], 2
		jz	short loc_417E0B
		mov	edx, [edi+8]
		and	edx, 0FFh
		cmp	edx, [ebp-18h]
		jnz	short loc_417E59

loc_417E0B:				; CODE XREF: .text:00417DFBj
		cmp	dword ptr [ebx+34h], 0
		jz	short loc_417E16
		push	edi
		call	dword ptr [ebx+34h]
		pop	ecx

loc_417E16:				; CODE XREF: .text:00417E0Fj
		mov	ecx, [edi]
		cmp	ecx, [ebx+28h]
		jnz	short loc_417E3C
		test	byte ptr [ebx+0Ch], 2
		jz	short loc_417E30
		mov	eax, [edi+8]
		and	eax, 0FFh
		cmp	eax, [ebx+2Ch]
		jnz	short loc_417E3C

loc_417E30:				; CODE XREF: .text:00417E21j
		mov	edx, [ebp-10h]
		mov	[ebx+28h], edx
		mov	ecx, [ebp-18h]
		mov	[ebx+2Ch], ecx

loc_417E3C:				; CODE XREF: .text:00417E1Bj
					; .text:00417E2Ej
		mov	eax, [ebx+8]
		push	eax		; n
		mov	edx, [ebp+0Ch]
		push	edx		; src
		push	edi		; dest
		call	_memcpy
		add	esp, 0Ch
		xor	ecx, ecx
		mov	[ebx+3Ch], ecx
		mov	eax, edi
		jmp	loc_417EF9
; ---------------------------------------------------------------------------

loc_417E59:				; CODE XREF: .text:00417DDCj
					; .text:00417DF5j ...
		mov	edx, [ebx]
		dec	edx
		cmp	esi, edx
		jl	short loc_417E64
		xor	eax, eax
		jmp	short loc_417E76
; ---------------------------------------------------------------------------

loc_417E64:				; CODE XREF: .text:00417E5Ej
		mov	eax, [ebx+20h]
		test	eax, eax
		jz	short loc_417E71
		mov	eax, [eax+esi*4+4]
		jmp	short loc_417E76
; ---------------------------------------------------------------------------

loc_417E71:				; CODE XREF: .text:00417E69j
		mov	eax, [ebx+8]
		add	eax, edi

loc_417E76:				; CODE XREF: .text:00417E62j
					; .text:00417E6Fj
		mov	edx, [edi]
		cmp	edx, [ebp-10h]
		jb	short loc_417ED3
		test	byte ptr [ebx+0Ch], 4
		mov	ecx, [edi]
		jz	short loc_417E8C
		mov	edx, 1
		jmp	short loc_417E8F
; ---------------------------------------------------------------------------

loc_417E8C:				; CODE XREF: .text:00417E83j
		mov	edx, [edi+4]

loc_417E8F:				; CODE XREF: .text:00417E8Aj
		add	ecx, edx
		cmp	ecx, [ebp-14h]
		ja	short loc_417ED3
		test	eax, eax
		jz	short loc_417EA1
		mov	eax, [eax]
		cmp	eax, [ebp-14h]
		jb	short loc_417ED3

loc_417EA1:				; CODE XREF: .text:00417E98j
		cmp	dword ptr [ebx+34h], 0
		jz	short loc_417EAC
		push	edi
		call	dword ptr [ebx+34h]
		pop	ecx

loc_417EAC:				; CODE XREF: .text:00417EA5j
		mov	ecx, [edi]
		cmp	ecx, [ebx+28h]
		jnz	short loc_417EB9
		mov	eax, [ebp-10h]
		mov	[ebx+28h], eax

loc_417EB9:				; CODE XREF: .text:00417EB1j
		mov	edx, [ebx+8]
		push	edx		; n
		mov	ecx, [ebp+0Ch]
		push	ecx		; src
		push	edi		; dest
		call	_memcpy
		add	esp, 0Ch
		xor	eax, eax
		mov	[ebx+3Ch], eax
		mov	eax, edi
		jmp	short loc_417EF9
; ---------------------------------------------------------------------------

loc_417ED3:				; CODE XREF: .text:00417E7Bj
					; .text:00417E94j ...
		mov	edx, [ebp-14h]
		push	edx		; addr1
		mov	ecx, [ebp-10h]
		push	ecx		; addr0
		push	ebx		; sd
		call	Deletesorteddatarange
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_417EEC
		xor	eax, eax
		jmp	short loc_417EF9
; ---------------------------------------------------------------------------

loc_417EEC:				; CODE XREF: .text:00417EE6j
		mov	edx, [ebp+0Ch]
		push	edx		; item
		push	ebx		; sd
		call	Addsorteddata
		add	esp, 8

loc_417EF9:				; CODE XREF: .text:004179A4j
					; .text:004179EEj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  76. _Replacesorteddatarange
; Exported entry 699. Replacesorteddatarange

; int __cdecl Replacesorteddatarange(t_sorted *sd, void	*data, int n, ulong addr0, ulong addr1)
		public Replacesorteddatarange
Replacesorteddatarange:			; CODE XREF: .text:004ABA21p
		push	ebp		; _Replacesorteddatarange
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_417F30
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_417F1C
		cmp	dword ptr [ebx+20h], 0
		jz	short loc_417F30

loc_417F1C:				; CODE XREF: .text:00417F14j
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_417F30
		cmp	dword ptr [ebp+10h], 0
		jle	short loc_417F30
		mov	eax, [ebp+14h]	; int
		cmp	eax, [ebp+18h]
		jb	short loc_417F38

loc_417F30:				; CODE XREF: .text:00417F0Ej
					; .text:00417F1Aj ...
		or	eax, 0FFFFFFFFh
		jmp	loc_4184C7
; ---------------------------------------------------------------------------

loc_417F38:				; CODE XREF: .text:00417F2Ej
		cmp	dword ptr [ebx+30h], 1
		jnz	short loc_417F46
		or	eax, 0FFFFFFFFh
		jmp	loc_4184C7
; ---------------------------------------------------------------------------

loc_417F46:				; CODE XREF: .text:00417F3Cj
		test	byte ptr [ebx+0Ch], 4
		jz	short loc_417F54
		or	eax, 0FFFFFFFFh
		jmp	loc_4184C7
; ---------------------------------------------------------------------------

loc_417F54:				; CODE XREF: .text:00417F4Aj
		xor	edx, edx	; int
		mov	[ebp-10h], edx
		push	1		; flags
		mov	ecx, [ebp+10h]
		shl	ecx, 2		; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-20h], eax
		cmp	dword ptr [ebx+20h], 0
		jz	short loc_417F89
		push	1		; flags
		mov	eax, [ebp+10h]
		shl	eax, 2		; int
		push	eax		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-14h], eax
		jmp	short loc_417F8E
; ---------------------------------------------------------------------------

loc_417F89:				; CODE XREF: .text:00417F71j
		xor	edx, edx
		mov	[ebp-14h], edx

loc_417F8E:				; CODE XREF: .text:00417F87j
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_417FA0
		cmp	dword ptr [ebx+20h], 0
		jz	short loc_417FAC
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_417FAC

loc_417FA0:				; CODE XREF: .text:00417F92j
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	loc_4184A4
; ---------------------------------------------------------------------------

loc_417FAC:				; CODE XREF: .text:00417F98j
					; .text:00417F9Ej
		xor	esi, esi
		mov	eax, [ebp-20h]
		cmp	esi, [ebp+10h]
		jge	short loc_417FDE

loc_417FB6:				; CODE XREF: .text:00417FDCj
		mov	edx, esi
		imul	edx, [ebx+8]
		add	edx, [ebp+0Ch]
		mov	[eax], edx
		test	byte ptr [ebx+0Ch], 2
		jz	short loc_417FD5
		mov	dword ptr [edx+4], 1
		or	dword ptr [edx+8], 400h

loc_417FD5:				; CODE XREF: .text:00417FC5j
		inc	esi
		add	eax, 4
		cmp	esi, [ebp+10h]
		jl	short loc_417FB6

loc_417FDE:				; CODE XREF: .text:00417FB4j
		push	offset loc_417284 ; fcmp
		push	4		; width
		mov	ecx, [ebp+10h]
		push	ecx		; nelem
		mov	eax, [ebp-20h]
		push	eax		; base
		call	_qsort
		add	esp, 10h
		xor	esi, esi
		mov	eax, [ebp-20h]
		jmp	short loc_418042
; ---------------------------------------------------------------------------

loc_417FFC:				; CODE XREF: .text:00418048j
		test	byte ptr [ebx+0Ch], 2
		jz	short loc_418028
		mov	edx, [eax]
		mov	edi, [eax+4]
		mov	ecx, [edx]
		cmp	ecx, [edi]
		jnz	short loc_41803E
		mov	ecx, [eax+4]
		mov	edx, [edx+8]
		and	edx, 0FFh
		mov	ecx, [ecx+8]
		and	ecx, 0FFh
		cmp	edx, ecx
		jz	short loc_41804A
		jmp	short loc_41803E
; ---------------------------------------------------------------------------

loc_418028:				; CODE XREF: .text:00418000j
		mov	edx, [eax]
		cmp	dword ptr [edx+4], 0
		jz	short loc_41804A
		mov	edx, [edx]
		mov	ecx, [eax]
		add	edx, [ecx+4]
		mov	ecx, [eax+4]
		cmp	edx, [ecx]
		ja	short loc_41804A

loc_41803E:				; CODE XREF: .text:0041800Bj
					; .text:00418026j
		inc	esi
		add	eax, 4

loc_418042:				; CODE XREF: .text:00417FFAj
		mov	edx, [ebp+10h]
		dec	edx
		cmp	esi, edx
		jl	short loc_417FFC

loc_41804A:				; CODE XREF: .text:00418024j
					; .text:0041802Ej ...
		mov	eax, [ebp+10h]
		dec	eax
		cmp	esi, eax
		jl	short loc_418062
		mov	eax, [ebp-20h]
		mov	edx, [ebp+10h]
		mov	ecx, [eax+edx*4-4]
		cmp	dword ptr [ecx+4], 0
		jnz	short loc_41806E

loc_418062:				; CODE XREF: .text:00418050j
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	loc_4184A4
; ---------------------------------------------------------------------------

loc_41806E:				; CODE XREF: .text:00418060j
		mov	eax, [ebp-20h]
		mov	edx, [eax]
		mov	ecx, [edx]
		cmp	ecx, [ebp+14h]
		jb	short loc_418094
		mov	eax, [ebp-20h]
		mov	edx, [ebp+10h]
		mov	eax, [eax+edx*4-4]
		mov	edx, [eax]
		mov	ecx, [ebp-20h]
		mov	esi, [ebp+10h]
		add	edx, [eax+4]
		cmp	edx, [ebp+18h]
		jbe	short loc_4180A0

loc_418094:				; CODE XREF: .text:00418078j
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	loc_4184A4
; ---------------------------------------------------------------------------

loc_4180A0:				; CODE XREF: .text:00418092j
		mov	eax, [ebp+18h]
		push	eax		; addr1
		mov	edx, [ebp+14h]
		push	edx		; addr0
		push	ebx		; sd
		call	Deletesorteddatarange
		add	esp, 0Ch
		inc	dword_518050
		mov	ecx, dword_518050
		mov	[ebx+1Ch], ecx
		mov	edx, [ebx]
		add	edx, [ebp+10h]
		mov	eax, [ebx+4]
		cmp	edx, eax
		jle	loc_41836A
		mov	ecx, eax
		imul	ecx, [ebx+8]
		cmp	ecx, 40000000h
		jnb	loc_41836A
		test	byte ptr [ebx+0Ch], 8
		jnz	loc_41836A
		cmp	dword ptr [ebx+10h], 0
		jz	loc_4181CA
		mov	edx, eax
		add	edx, edx	; int
		mov	[ebp-4], edx
		cmp	eax, [ebp+10h]
		jge	short loc_418108
		mov	eax, [ebp+10h]	; int
		add	[ebp-4], eax

loc_418108:				; CODE XREF: .text:00418100j
		push	0		; flags
		mov	ecx, [ebp-4]
		imul	ecx, [ebx+8]	; int
		push	ecx		; size
		call	Virtalloc
		add	esp, 8
		mov	esi, eax
		cmp	dword ptr [ebx+40h], 0
		jz	short loc_418138
		push	0		; flags
		mov	eax, [ebp-4]
		shl	eax, 2		; int
		push	eax		; size
		call	Virtalloc
		add	esp, 8
		mov	[ebp-1Ch], eax
		jmp	short loc_41813D
; ---------------------------------------------------------------------------

loc_418138:				; CODE XREF: .text:00418120j
		xor	edx, edx
		mov	[ebp-1Ch], edx

loc_41813D:				; CODE XREF: .text:00418136j
		test	esi, esi
		jz	short loc_41814D
		cmp	dword ptr [ebx+40h], 0
		jz	short loc_418171
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_418171

loc_41814D:				; CODE XREF: .text:0041813Fj
		test	esi, esi
		jz	short loc_418158
		push	esi		; data
		call	Virtfree
		pop	ecx

loc_418158:				; CODE XREF: .text:0041814Fj
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_41836A
		mov	ecx, [ebp-1Ch]
		push	ecx		; data
		call	Virtfree
		pop	ecx
		jmp	loc_41836A
; ---------------------------------------------------------------------------

loc_418171:				; CODE XREF: .text:00418145j
					; .text:0041814Bj
		mov	eax, [ebx+4]
		imul	dword ptr [ebx+8]
		push	eax		; n
		mov	edx, [ebx+10h]
		push	edx		; src
		push	esi		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, [ebx+10h]
		push	ecx		; data
		call	Virtfree
		pop	ecx
		mov	[ebx+10h], esi
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_4181BF
		mov	eax, [ebx+4]
		shl	eax, 2
		push	eax		; n
		mov	edx, [ebx+40h]
		push	edx		; src
		mov	ecx, [ebp-1Ch]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebx+40h]
		push	eax		; data
		call	Virtfree
		pop	ecx
		mov	edx, [ebp-1Ch]
		mov	[ebx+40h], edx

loc_4181BF:				; CODE XREF: .text:00418196j
		mov	ecx, [ebp-4]
		mov	[ebx+4], ecx
		jmp	loc_41836A
; ---------------------------------------------------------------------------

loc_4181CA:				; CODE XREF: .text:004180F0j
		mov	eax, [ebx+4]
		xor	edx, edx
		mov	[ebp-4], eax
		mov	eax, 100000h
		div	dword ptr [ebx+8]
		mov	[ebp-8], eax
		mov	ecx, [ebx+18h]
		mov	[ebp-0Ch], ecx
		jmp	short loc_418212
; ---------------------------------------------------------------------------

loc_4181E5:				; CODE XREF: .text:00418225j
					; .text:0041822Dj
		push	1		; flags
		push	100000h		; size
		call	Virtalloc
		add	esp, 8
		mov	esi, eax
		mov	eax, [ebx+14h]
		mov	edx, [ebp-0Ch]
		mov	[eax+edx*4], esi
		mov	ecx, [ebx+14h]	; int
		mov	eax, [ebp-0Ch]
		test	esi, esi
		jz	short loc_41822F
		mov	edx, [ebp-8]
		add	[ebp-4], edx
		inc	dword ptr [ebp-0Ch]

loc_418212:				; CODE XREF: .text:004181E3j
		cmp	dword ptr [ebp-0Ch], 800h
		jge	short loc_41822F
		mov	eax, [ebx+4]	; int
		mov	edx, eax
		add	edx, edx	; int
		cmp	edx, [ebp-4]
		jg	short loc_4181E5
		add	eax, [ebp+10h]
		cmp	eax, [ebp-4]
		jg	short loc_4181E5

loc_41822F:				; CODE XREF: .text:00418207j
					; .text:00418219j
		mov	ecx, [ebp-4]	; int
		cmp	ecx, [ebx+4]
		jle	loc_41836A
		push	0		; flags
		mov	eax, [ebp-4]
		shl	eax, 2		; int
		push	eax		; size
		call	Virtalloc
		add	esp, 8
		mov	[ebp-18h], eax
		cmp	dword ptr [ebx+40h], 0
		jz	short loc_41826B
		push	0		; flags
		mov	edx, [ebp-4]
		shl	edx, 2		; int
		push	edx		; size
		call	Virtalloc
		add	esp, 8
		mov	[ebp-1Ch], eax
		jmp	short loc_418270
; ---------------------------------------------------------------------------

loc_41826B:				; CODE XREF: .text:00418253j
		xor	ecx, ecx
		mov	[ebp-1Ch], ecx

loc_418270:				; CODE XREF: .text:00418269j
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_418282
		cmp	dword ptr [ebx+40h], 0
		jz	short loc_4182CE
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_4182CE

loc_418282:				; CODE XREF: .text:00418274j
		mov	esi, [ebx+18h]
		cmp	esi, [ebp-0Ch]
		jge	short loc_4182A5

loc_41828A:				; CODE XREF: .text:004182A3j
		mov	eax, [ebx+14h]
		mov	edx, [eax+esi*4]
		push	edx		; data
		call	Virtfree
		pop	ecx
		mov	ecx, [ebx+14h]
		xor	eax, eax
		mov	[ecx+esi*4], eax
		inc	esi
		cmp	esi, [ebp-0Ch]
		jl	short loc_41828A

loc_4182A5:				; CODE XREF: .text:00418288j
		cmp	dword ptr [ebp-18h], 0
		jz	short loc_4182B5
		mov	edx, [ebp-18h]
		push	edx		; data
		call	Virtfree
		pop	ecx

loc_4182B5:				; CODE XREF: .text:004182A9j
		cmp	dword ptr [ebp-1Ch], 0
		jz	loc_41836A
		mov	ecx, [ebp-1Ch]
		push	ecx		; data
		call	Virtfree
		pop	ecx
		jmp	loc_41836A
; ---------------------------------------------------------------------------

loc_4182CE:				; CODE XREF: .text:0041827Aj
					; .text:00418280j
		mov	eax, [ebx+4]
		shl	eax, 2
		push	eax		; n
		mov	edx, [ebx+20h]
		push	edx		; src
		mov	ecx, [ebp-18h]
		push	ecx		; dest
		call	_memcpy
		mov	esi, [ebx+4]
		mov	eax, [ebp-18h]
		add	esp, 0Ch
		lea	edx, [eax+esi*4]
		mov	[ebp-24h], edx
		cmp	esi, [ebp-4]
		jge	short loc_418321

loc_4182F6:				; CODE XREF: .text:0041831Fj
		mov	eax, esi
		mov	ecx, esi
		cdq
		idiv	dword ptr [ebp-8]
		mov	edi, eax
		mov	eax, [ebx+14h]
		inc	esi
		mov	edx, [eax+edi*4]
		imul	edi, [ebp-8]
		sub	ecx, edi
		mov	eax, [ebp-24h]
		imul	ecx, [ebx+8]
		add	edx, ecx
		mov	[eax], edx
		add	dword ptr [ebp-24h], 4
		cmp	esi, [ebp-4]
		jl	short loc_4182F6

loc_418321:				; CODE XREF: .text:004182F4j
		mov	edx, [ebx+20h]
		push	edx		; data
		call	Virtfree
		pop	ecx
		mov	ecx, [ebp-18h]
		mov	[ebx+20h], ecx
		cmp	dword ptr [ebp-1Ch], 0
		jz	short loc_41835E
		mov	eax, [ebx+4]
		shl	eax, 2
		push	eax		; n
		mov	edx, [ebx+40h]
		push	edx		; src
		mov	ecx, [ebp-1Ch]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, [ebx+40h]
		push	eax		; data
		call	Virtfree
		pop	ecx
		mov	edx, [ebp-1Ch]
		mov	[ebx+40h], edx

loc_41835E:				; CODE XREF: .text:00418335j
		mov	ecx, [ebp-0Ch]
		mov	[ebx+18h], ecx
		mov	eax, [ebp-4]
		mov	[ebx+4], eax

loc_41836A:				; CODE XREF: .text:004180CAj
					; .text:004180DCj ...
		mov	edx, [ebx]
		add	edx, [ebp+10h]
		cmp	edx, [ebx+4]
		jle	short loc_418380
		mov	dword ptr [ebp-10h], 0FFFFFFFFh
		jmp	loc_4184A4
; ---------------------------------------------------------------------------

loc_418380:				; CODE XREF: .text:00418372j
		push	0
		mov	ecx, [ebp+14h]
		push	ecx
		push	ebx
		call	loc_4171DC
		add	esp, 0Ch
		mov	esi, eax
		cmp	dword ptr [ebx+20h], 0
		jnz	short loc_418400
		cmp	esi, [ebx]
		jge	short loc_4183C2
		mov	eax, [ebx]
		sub	eax, esi
		imul	dword ptr [ebx+8]
		push	eax		; n
		mov	edx, esi
		imul	edx, [ebx+8]
		add	edx, [ebx+10h]
		push	edx		; src
		mov	ecx, [ebp+10h]
		add	ecx, esi
		imul	ecx, [ebx+8]
		add	ecx, [ebx+10h]
		push	ecx		; dest
		call	_memmove
		add	esp, 0Ch

loc_4183C2:				; CODE XREF: .text:00418399j
		xor	edi, edi
		mov	eax, [ebp-20h]
		mov	edx, eax
		mov	[ebp-24h], edx
		cmp	edi, [ebp+10h]
		jge	loc_41848F

loc_4183D5:				; CODE XREF: .text:004183F9j
		mov	eax, [ebx+8]
		push	eax		; n
		mov	edx, [ebp-24h]
		mov	ecx, [edx]
		push	ecx		; src
		lea	edx, [edi+esi]
		imul	edx, eax
		add	edx, [ebx+10h]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		inc	edi
		add	dword ptr [ebp-24h], 4
		cmp	edi, [ebp+10h]
		jl	short loc_4183D5
		jmp	loc_41848F
; ---------------------------------------------------------------------------

loc_418400:				; CODE XREF: .text:00418395j
		mov	eax, [ebp+10h]
		shl	eax, 2
		push	eax		; n
		mov	ecx, [ebx]
		shl	ecx, 2
		add	ecx, [ebx+20h]
		push	ecx		; src
		mov	eax, [ebp-14h]
		push	eax		; dest
		call	_memcpy
		mov	edx, [ebx]
		add	esp, 0Ch
		sub	edx, esi
		mov	eax, esi
		shl	edx, 2
		mov	edi, esi
		shl	eax, 2
		push	edx		; n
		add	eax, [ebx+20h]
		push	eax		; src
		mov	edx, [ebp+10h]
		shl	edx, 2
		shl	edi, 2
		add	eax, edx
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch
		mov	eax, [ebp+10h]
		shl	eax, 2
		push	eax		; n
		mov	ecx, [ebp-14h]
		push	ecx		; src
		add	edi, [ebx+20h]
		push	edi		; dest
		call	_memcpy
		mov	eax, [ebp-20h]
		add	esp, 0Ch
		mov	edx, eax
		xor	edi, edi
		mov	[ebp-24h], edx
		cmp	edi, [ebp+10h]
		jge	short loc_41848F

loc_418469:				; CODE XREF: .text:0041848Dj
		mov	ecx, [ebx+8]
		push	ecx		; n
		mov	eax, [ebp-24h]
		mov	edx, [eax]
		push	edx		; src
		lea	ecx, [edi+esi]
		mov	eax, [ebx+20h]
		mov	edx, [eax+ecx*4]
		push	edx		; dest
		call	_memcpy
		add	esp, 0Ch
		inc	edi
		add	dword ptr [ebp-24h], 4
		cmp	edi, [ebp+10h]
		jl	short loc_418469

loc_41848F:				; CODE XREF: .text:004183CFj
					; .text:004183FBj ...
		mov	ecx, [ebp+10h]
		add	[ebx], ecx
		cmp	esi, [ebx+24h]
		jg	short loc_41849F
		mov	eax, [ebp+10h]
		add	[ebx+24h], eax

loc_41849F:				; CODE XREF: .text:00418497j
		xor	edx, edx
		mov	[ebx+3Ch], edx

loc_4184A4:				; CODE XREF: .text:00417FA7j
					; .text:00418069j ...
		cmp	dword ptr [ebp-20h], 0
		jz	short loc_4184B4
		mov	ecx, [ebp-20h]
		push	ecx		; data
		call	Memfree
		pop	ecx

loc_4184B4:				; CODE XREF: .text:004184A8j
		cmp	dword ptr [ebp-14h], 0
		jz	short loc_4184C4
		mov	eax, [ebp-14h]
		push	eax		; data
		call	Memfree
		pop	ecx

loc_4184C4:				; CODE XREF: .text:004184B8j
		mov	eax, [ebp-10h]

loc_4184C7:				; CODE XREF: .text:00417F33j
					; .text:00417F41j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  77. _Renumeratesorteddata
; Exported entry 697. Renumeratesorteddata

; int __cdecl Renumeratesorteddata(t_sorted *sd)
		public Renumeratesorteddata
Renumeratesorteddata:			; CODE XREF: .text:0049FDD9p
		push	ebp		; _Renumeratesorteddata
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_41851B
		cmp	dword ptr [eax+10h], 0
		jnz	short loc_4184E6
		cmp	dword ptr [eax+20h], 0
		jz	short loc_41851B

loc_4184E6:				; CODE XREF: .text:004184DEj
		cmp	dword ptr [eax+30h], 1
		jnz	short loc_41851B
		xor	edx, edx
		jmp	short loc_418508
; ---------------------------------------------------------------------------

loc_4184F0:				; CODE XREF: .text:0041850Aj
		mov	ecx, [eax+20h]
		test	ecx, ecx
		jz	short loc_4184FC
		mov	ecx, [ecx+edx*4]
		jmp	short loc_418505
; ---------------------------------------------------------------------------

loc_4184FC:				; CODE XREF: .text:004184F5j
		mov	ecx, [eax+8]
		imul	ecx, edx
		add	ecx, [eax+10h]

loc_418505:				; CODE XREF: .text:004184FAj
		mov	[ecx], edx
		inc	edx

loc_418508:				; CODE XREF: .text:004184EEj
		cmp	edx, [eax]
		jl	short loc_4184F0
		inc	dword_518050
		mov	edx, dword_518050
		mov	[eax+1Ch], edx

loc_41851B:				; CODE XREF: .text:004184D8j
					; .text:004184E4j ...
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  78. _Confirmsorteddata
; Exported entry 434. Confirmsorteddata

; signed int __cdecl Confirmsorteddata(t_sorted	*sd, int confirm)
		public Confirmsorteddata
Confirmsorteddata:			; CODE XREF: .text:0046564Ap
					; .text:004C15BFp ...
		push	ebp		; _Confirmsorteddata
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_41853F
		cmp	dword ptr [esi+10h], 0
		jnz	short loc_418539
		cmp	dword ptr [esi+20h], 0
		jz	short loc_41853F

loc_418539:				; CODE XREF: .text:00418531j
		test	byte ptr [esi+0Ch], 4
		jz	short loc_418544

loc_41853F:				; CODE XREF: .text:0041852Bj
					; .text:00418537j
		or	eax, 0FFFFFFFFh
		jmp	short loc_41857A
; ---------------------------------------------------------------------------

loc_418544:				; CODE XREF: .text:0041853Dj
		xor	edi, edi
		xor	ebx, ebx
		jmp	short loc_418574
; ---------------------------------------------------------------------------

loc_41854A:				; CODE XREF: .text:00418576j
		push	ebx		; index
		push	esi		; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jnz	short loc_41855D
		or	edi, 0FFFFFFFFh
		jmp	short loc_418573
; ---------------------------------------------------------------------------

loc_41855D:				; CODE XREF: .text:00418556j
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_41856C
		or	dword ptr [eax+8], 200h
		jmp	short loc_418573
; ---------------------------------------------------------------------------

loc_41856C:				; CODE XREF: .text:00418561j
		and	dword ptr [eax+8], 0FFFFFDFFh

loc_418573:				; CODE XREF: .text:0041855Bj
					; .text:0041856Aj
		inc	ebx

loc_418574:				; CODE XREF: .text:00418548j
		cmp	ebx, [esi]
		jl	short loc_41854A
		mov	eax, edi

loc_41857A:				; CODE XREF: .text:00418542j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  79. _Deletenonconfirmedsorteddata
; Exported entry 468. Deletenonconfirmedsorteddata

; int __cdecl Deletenonconfirmedsorteddata(t_sorted *sd)
		public Deletenonconfirmedsorteddata
Deletenonconfirmedsorteddata:		; CODE XREF: .text:00449A6Fp
					; .text:0044FAEDp ...
		push	ebp		; _Deletenonconfirmedsorteddata
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4185A2
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_41859C
		cmp	dword ptr [ebx+20h], 0
		jz	short loc_4185A2

loc_41859C:				; CODE XREF: .text:00418594j
		test	byte ptr [ebx+0Ch], 4
		jz	short loc_4185A9

loc_4185A2:				; CODE XREF: .text:0041858Ej
					; .text:0041859Aj
		xor	eax, eax
		jmp	loc_4186D1
; ---------------------------------------------------------------------------

loc_4185A9:				; CODE XREF: .text:004185A0j
		cmp	dword ptr [ebx+20h], 0
		jz	short loc_41861C
		xor	edx, edx
		xor	esi, esi
		mov	[ebp-4], edx
		jmp	short loc_418616
; ---------------------------------------------------------------------------

loc_4185B8:				; CODE XREF: .text:00418618j
		mov	eax, [ebx+20h]
		mov	edi, [eax+esi*4]
		test	byte ptr [edi+9], 2
		jnz	short loc_4185F3
		mov	eax, [edi]
		cmp	eax, [ebx+28h]
		jnz	short loc_4185E6
		test	byte ptr [ebx+0Ch], 2
		jz	short loc_4185DF
		mov	edx, [edi+8]
		and	edx, 0FFh
		cmp	edx, [ebx+2Ch]
		jnz	short loc_4185E6

loc_4185DF:				; CODE XREF: .text:004185CFj
		mov	dword ptr [ebx+24h], 0FFFFFFFFh

loc_4185E6:				; CODE XREF: .text:004185C9j
					; .text:004185DDj
		cmp	dword ptr [ebx+34h], 0
		jz	short loc_418615
		push	edi
		call	dword ptr [ebx+34h]
		pop	ecx
		jmp	short loc_418615
; ---------------------------------------------------------------------------

loc_4185F3:				; CODE XREF: .text:004185C2j
		and	dword ptr [edi+8], 0FFFFFDFFh
		mov	eax, [ebx+20h]
		mov	edi, [ebx+20h]
		mov	edx, [ebp-4]
		mov	ecx, [ebp-4]
		mov	edi, [edi+esi*4]
		mov	edx, [eax+edx*4]
		mov	[eax+ecx*4], edi
		mov	[eax+esi*4], edx
		inc	dword ptr [ebp-4]

loc_418615:				; CODE XREF: .text:004185EAj
					; .text:004185F1j
		inc	esi

loc_418616:				; CODE XREF: .text:004185B6j
		cmp	esi, [ebx]
		jl	short loc_4185B8
		jmp	short loc_418693
; ---------------------------------------------------------------------------

loc_41861C:				; CODE XREF: .text:004185ADj
		xor	eax, eax
		mov	[ebp-4], eax
		mov	esi, eax
		mov	eax, [ebx+10h]
		mov	[ebp-8], eax
		mov	edi, eax
		jmp	short loc_41868F
; ---------------------------------------------------------------------------

loc_41862D:				; CODE XREF: .text:00418691j
		test	byte ptr [edi+9], 2
		jnz	short loc_418662
		mov	eax, [edi]
		cmp	eax, [ebx+28h]
		jnz	short loc_418655
		test	byte ptr [ebx+0Ch], 2
		jz	short loc_41864E
		mov	edx, [edi+8]
		and	edx, 0FFh
		cmp	edx, [ebx+2Ch]
		jnz	short loc_418655

loc_41864E:				; CODE XREF: .text:0041863Ej
		mov	dword ptr [ebx+24h], 0FFFFFFFFh

loc_418655:				; CODE XREF: .text:00418638j
					; .text:0041864Cj
		cmp	dword ptr [ebx+34h], 0
		jz	short loc_41868B
		push	edi
		call	dword ptr [ebx+34h]
		pop	ecx
		jmp	short loc_41868B
; ---------------------------------------------------------------------------

loc_418662:				; CODE XREF: .text:00418631j
		cmp	esi, [ebp-4]
		jz	short loc_418678
		mov	ecx, [ebx+8]
		push	ecx		; n
		push	edi		; src
		mov	eax, [ebp-8]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch

loc_418678:				; CODE XREF: .text:00418665j
		mov	edx, [ebp-8]
		and	dword ptr [edx+8], 0FFFFFDFFh
		mov	ecx, [ebx+8]
		add	[ebp-8], ecx
		inc	dword ptr [ebp-4]

loc_41868B:				; CODE XREF: .text:00418659j
					; .text:00418660j
		add	edi, [ebx+8]
		inc	esi

loc_41868F:				; CODE XREF: .text:0041862Bj
		cmp	esi, [ebx]
		jl	short loc_41862D

loc_418693:				; CODE XREF: .text:0041861Aj
		mov	eax, [ebp-4]
		cmp	eax, [ebx]
		jge	short loc_4186CC
		inc	dword_518050
		mov	edx, dword_518050
		mov	[ebx+1Ch], edx
		mov	ecx, [ebp-4]
		mov	[ebx], ecx
		cmp	dword ptr [ebx+30h], 1
		jnz	short loc_4186C7
		mov	edi, [ebx+10h]
		xor	esi, esi
		jmp	short loc_4186C1
; ---------------------------------------------------------------------------

loc_4186BB:				; CODE XREF: .text:004186C3j
		mov	[edi], esi
		add	edi, [ebx+8]
		inc	esi

loc_4186C1:				; CODE XREF: .text:004186B9j
		cmp	esi, [ebx]
		jl	short loc_4186BB
		jmp	short loc_4186CC
; ---------------------------------------------------------------------------

loc_4186C7:				; CODE XREF: .text:004186B2j
		xor	eax, eax
		mov	[ebx+3Ch], eax

loc_4186CC:				; CODE XREF: .text:00418698j
					; .text:004186C5j
		mov	eax, esi
		sub	eax, [ebp-4]

loc_4186D1:				; CODE XREF: .text:004185A4j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  80. _Unmarknewsorteddata
; Exported entry 741. Unmarknewsorteddata

; int __cdecl Unmarknewsorteddata(t_sorted *sd)
		public Unmarknewsorteddata
Unmarknewsorteddata:			; CODE XREF: .text:00412418p
					; .text:00420C0Fp ...
		push	ebp		; _Unmarknewsorteddata
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_418735
		cmp	dword ptr [eax+10h], 0
		jnz	short loc_4186EE
		cmp	dword ptr [eax+20h], 0
		jz	short loc_418735

loc_4186EE:				; CODE XREF: .text:004186E6j
		test	byte ptr [eax+0Ch], 4
		jnz	short loc_418735
		mov	edx, [eax+8]
		cmp	edx, 1
		jz	short loc_418701
		cmp	edx, 0Ch
		jb	short loc_418735

loc_418701:				; CODE XREF: .text:004186FAj
		xor	edx, edx
		jmp	short loc_418722
; ---------------------------------------------------------------------------

loc_418705:				; CODE XREF: .text:00418724j
		mov	ecx, [eax+20h]
		test	ecx, ecx
		jz	short loc_418711
		mov	ecx, [ecx+edx*4]
		jmp	short loc_41871A
; ---------------------------------------------------------------------------

loc_418711:				; CODE XREF: .text:0041870Aj
		mov	ecx, [eax+8]
		imul	ecx, edx
		add	ecx, [eax+10h]

loc_41871A:				; CODE XREF: .text:0041870Fj
		and	dword ptr [ecx+8], 0FFFFFEFFh
		inc	edx

loc_418722:				; CODE XREF: .text:00418703j
		cmp	edx, [eax]
		jl	short loc_418705
		inc	dword_518050
		mov	edx, dword_518050
		mov	[eax+1Ch], edx

loc_418735:				; CODE XREF: .text:004186E0j
					; .text:004186ECj ...
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  81. _Findsorteddata
; Exported entry 532. Findsorteddata

; _DWORD __cdecl Findsorteddata(t_sorted *sd, ulong _addr, ulong	subaddr)
		public Findsorteddata
Findsorteddata:				; CODE XREF: .text:0040172Cp
					; .text:00406F22p ...
		push	ebp		; _Findsorteddata
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_418757
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_41875B
		cmp	dword ptr [ebx+20h], 0
		jnz	short loc_41875B

loc_418757:				; CODE XREF: .text:00418749j
		xor	eax, eax
		jmp	short loc_4187BA
; ---------------------------------------------------------------------------

loc_41875B:				; CODE XREF: .text:0041874Fj
					; .text:00418755j
		push	edi
		push	esi
		push	ebx
		call	loc_4171DC
		add	esp, 0Ch
		cmp	eax, [ebx]
		jl	short loc_41876E
		xor	eax, eax
		jmp	short loc_4187BA
; ---------------------------------------------------------------------------

loc_41876E:				; CODE XREF: .text:00418768j
		cmp	dword ptr [ebx+20h], 0
		jz	short loc_41877C
		mov	edx, [ebx+20h]
		mov	eax, [edx+eax*4]
		jmp	short loc_418787
; ---------------------------------------------------------------------------

loc_41877C:				; CODE XREF: .text:00418772j
		mov	ecx, [ebx+8]
		imul	ecx, eax
		add	ecx, [ebx+10h]
		mov	eax, ecx

loc_418787:				; CODE XREF: .text:0041877Aj
		cmp	esi, [eax]
		jb	short loc_4187A1
		test	byte ptr [ebx+0Ch], 4
		jz	short loc_418798
		mov	edx, 1
		jmp	short loc_41879B
; ---------------------------------------------------------------------------

loc_418798:				; CODE XREF: .text:0041878Fj
		mov	edx, [eax+4]

loc_41879B:				; CODE XREF: .text:00418796j
		add	edx, [eax]
		cmp	esi, edx
		jb	short loc_4187A5

loc_4187A1:				; CODE XREF: .text:00418789j
		xor	eax, eax
		jmp	short loc_4187BA
; ---------------------------------------------------------------------------

loc_4187A5:				; CODE XREF: .text:0041879Fj
		test	byte ptr [ebx+0Ch], 2
		jz	short loc_4187BA
		mov	ecx, [eax+8]
		and	ecx, 0FFh
		cmp	edi, ecx
		jz	short loc_4187BA
		xor	eax, eax

loc_4187BA:				; CODE XREF: .text:00418759j
					; .text:0041876Cj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry  82. _Findsorteddatarange
; Exported entry 533. Findsorteddatarange

; int __cdecl Findsorteddatarange(t_sorted *sd,	ulong addr0, ulong addr1)
		public Findsorteddatarange
Findsorteddatarange:			; CODE XREF: .text:00450C8Ap
					; .text:00453AFBp ...
		push	ebp		; _Findsorteddatarange
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4187E8
		cmp	dword ptr [ebx], 0
		jz	short loc_4187E8
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_4187E4
		cmp	dword ptr [ebx+20h], 0
		jz	short loc_4187E8

loc_4187E4:				; CODE XREF: .text:004187DCj
		cmp	edi, esi
		ja	short loc_4187EC

loc_4187E8:				; CODE XREF: .text:004187D1j
					; .text:004187D6j ...
		xor	eax, eax
		jmp	short loc_418835
; ---------------------------------------------------------------------------

loc_4187EC:				; CODE XREF: .text:004187E6j
		push	0
		push	esi
		push	ebx
		call	loc_4171DC
		add	esp, 0Ch
		cmp	eax, [ebx]
		jl	short loc_418800
		xor	eax, eax
		jmp	short loc_418835
; ---------------------------------------------------------------------------

loc_418800:				; CODE XREF: .text:004187FAj
		cmp	dword ptr [ebx+20h], 0
		jz	short loc_41880E
		mov	edx, [ebx+20h]
		mov	eax, [edx+eax*4]
		jmp	short loc_418819
; ---------------------------------------------------------------------------

loc_41880E:				; CODE XREF: .text:00418804j
		mov	ecx, [ebx+8]
		imul	ecx, eax
		add	ecx, [ebx+10h]
		mov	eax, ecx

loc_418819:				; CODE XREF: .text:0041880Cj
		cmp	edi, [eax]
		jbe	short loc_418833
		test	byte ptr [ebx+0Ch], 4
		jz	short loc_41882A
		mov	edx, 1
		jmp	short loc_41882D
; ---------------------------------------------------------------------------

loc_41882A:				; CODE XREF: .text:00418821j
		mov	edx, [eax+4]

loc_41882D:				; CODE XREF: .text:00418828j
		add	edx, [eax]
		cmp	esi, edx
		jb	short loc_418835

loc_418833:				; CODE XREF: .text:0041881Bj
		xor	eax, eax

loc_418835:				; CODE XREF: .text:004187EAj
					; .text:004187FEj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  83. _Findsortedindexrange
; Exported entry 534. Findsortedindexrange

; signed int __cdecl Findsortedindexrange(t_sorted *sd,	ulong addr0, ulong addr1)
		public Findsortedindexrange
Findsortedindexrange:			; CODE XREF: .text:004972B6p
					; .text:004973B4p ...
		push	ebp		; _Findsortedindexrange
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_41885C
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_418857
		cmp	dword ptr [ebx+20h], 0
		jz	short loc_41885C

loc_418857:				; CODE XREF: .text:0041884Fj
		cmp	esi, [ebp+10h]
		jb	short loc_418861

loc_41885C:				; CODE XREF: .text:00418849j
					; .text:00418855j
		or	eax, 0FFFFFFFFh
		jmp	short loc_4188B1
; ---------------------------------------------------------------------------

loc_418861:				; CODE XREF: .text:0041885Aj
		push	0
		push	esi
		push	ebx
		call	loc_4171DC
		add	esp, 0Ch
		mov	edx, eax
		cmp	edx, [ebx]
		jl	short loc_418878
		or	eax, 0FFFFFFFFh
		jmp	short loc_4188B1
; ---------------------------------------------------------------------------

loc_418878:				; CODE XREF: .text:00418871j
		mov	eax, [ebx+20h]
		test	eax, eax
		jz	short loc_418884
		mov	eax, [eax+edx*4]
		jmp	short loc_41888D
; ---------------------------------------------------------------------------

loc_418884:				; CODE XREF: .text:0041887Dj
		mov	eax, [ebx+8]
		imul	eax, edx
		add	eax, [ebx+10h]

loc_41888D:				; CODE XREF: .text:00418882j
		mov	ecx, [eax]
		cmp	ecx, [ebp+10h]
		jnb	short loc_4188AE
		test	byte ptr [ebx+0Ch], 4
		jz	short loc_4188A1
		mov	ecx, 1
		jmp	short loc_4188A4
; ---------------------------------------------------------------------------

loc_4188A1:				; CODE XREF: .text:00418898j
		mov	ecx, [eax+4]

loc_4188A4:				; CODE XREF: .text:0041889Fj
		add	ecx, [eax]
		cmp	esi, ecx
		jnb	short loc_4188AE
		mov	eax, edx
		jmp	short loc_4188B1
; ---------------------------------------------------------------------------

loc_4188AE:				; CODE XREF: .text:00418892j
					; .text:004188A8j
		or	eax, 0FFFFFFFFh

loc_4188B1:				; CODE XREF: .text:0041885Fj
					; .text:00418876j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  84. _Getsortedbyindex
; Exported entry 606. Getsortedbyindex

; _DWORD __cdecl Getsortedbyindex(t_sorted *sd,	int index)
		public Getsortedbyindex
Getsortedbyindex:			; CODE XREF: .text:00403AA2p
					; .text:0040B391p ...
		push	ebp		; _Getsortedbyindex
		mov	ebp, esp
		mov	edx, [ebp+0Ch]
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4188D9
		cmp	dword ptr [eax+10h], 0
		jnz	short loc_4188D1
		cmp	dword ptr [eax+20h], 0
		jz	short loc_4188D9

loc_4188D1:				; CODE XREF: .text:004188C9j
		test	edx, edx
		jl	short loc_4188D9
		cmp	edx, [eax]
		jl	short loc_4188DD

loc_4188D9:				; CODE XREF: .text:004188C3j
					; .text:004188CFj ...
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4188DD:				; CODE XREF: .text:004188D7j
		mov	ecx, [eax+20h]
		test	ecx, ecx
		jz	short loc_4188E9
		mov	eax, [ecx+edx*4]
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4188E9:				; CODE XREF: .text:004188E2j
		mov	ecx, [eax+8]
		imul	ecx, edx
		add	ecx, [eax+10h]
		mov	eax, ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  85. _Sortsorteddata
; Exported entry 724. Sortsorteddata

; signed int __cdecl Sortsorteddata(t_sorted *sd, int sort)
		public Sortsorteddata
Sortsorteddata:				; CODE XREF: .text:0041773Fp
					; .text:0041795Cp ...
		push	ebp		; _Sortsorteddata
		mov	ebp, esp
		push	ebx
		mov	edx, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_418912
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_418917
		cmp	dword ptr [ebx+20h], 0
		jnz	short loc_418917

loc_418912:				; CODE XREF: .text:00418904j
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_418917:				; CODE XREF: .text:0041890Aj
					; .text:00418910j
		cmp	dword ptr [ebx+3Ch], 0
		jz	short loc_418927
		cmp	edx, [ebx+38h]
		jnz	short loc_418927
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_418927:				; CODE XREF: .text:0041891Bj
					; .text:00418920j
		cmp	dword ptr [ebx+30h], 1
		jnz	short loc_41897C
		inc	dword_518050
		xor	eax, eax
		mov	edx, dword_518050
		mov	[ebx+1Ch], edx
		jmp	short loc_41896C
; ---------------------------------------------------------------------------

loc_418940:				; CODE XREF: .text:0041896Ej
		mov	edx, [ebx+20h]
		test	edx, edx
		jz	short loc_41894C
		mov	edx, [edx+eax*4]
		jmp	short loc_418955
; ---------------------------------------------------------------------------

loc_41894C:				; CODE XREF: .text:00418945j
		mov	edx, [ebx+8]
		imul	edx, eax
		add	edx, [ebx+10h]

loc_418955:				; CODE XREF: .text:0041894Aj
		mov	ecx, [edx]
		cmp	ecx, [ebx+24h]
		jnz	short loc_418962
		mov	[ebx+24h], eax
		mov	[ebx+28h], eax

loc_418962:				; CODE XREF: .text:0041895Aj
		mov	[edx], eax
		inc	eax
		mov	dword ptr [edx+4], 1

loc_41896C:				; CODE XREF: .text:0041893Ej
		cmp	eax, [ebx]
		jl	short loc_418940
		mov	dword ptr [ebx+3Ch], 1
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_41897C:				; CODE XREF: .text:0041892Bj
		cmp	dword ptr [ebx+40h], 0
		jz	short loc_418988
		cmp	dword ptr [ebx+30h], 0
		jnz	short loc_4189D9

loc_418988:				; CODE XREF: .text:00418980j
		mov	dword ptr [ebx+24h], 0FFFFFFFFh
		xor	eax, eax
		jmp	short loc_4189C9
; ---------------------------------------------------------------------------

loc_418993:				; CODE XREF: .text:004189CBj
		mov	edx, [ebx+20h]
		test	edx, edx
		jz	short loc_41899F
		mov	edx, [edx+eax*4]
		jmp	short loc_4189A8
; ---------------------------------------------------------------------------

loc_41899F:				; CODE XREF: .text:00418998j
		mov	edx, [ebx+8]
		imul	edx, eax
		add	edx, [ebx+10h]

loc_4189A8:				; CODE XREF: .text:0041899Dj
		mov	ecx, [edx]
		cmp	ecx, [ebx+28h]
		jnz	short loc_4189C8
		test	byte ptr [ebx+0Ch], 2
		jz	short loc_4189C3
		mov	edx, [edx+8]
		and	edx, 0FFh
		cmp	edx, [ebx+2Ch]
		jnz	short loc_4189C8

loc_4189C3:				; CODE XREF: .text:004189B3j
		mov	[ebx+24h], eax
		jmp	short loc_4189CD
; ---------------------------------------------------------------------------

loc_4189C8:				; CODE XREF: .text:004189ADj
					; .text:004189C1j
		inc	eax

loc_4189C9:				; CODE XREF: .text:00418991j
		cmp	eax, [ebx]
		jl	short loc_418993

loc_4189CD:				; CODE XREF: .text:004189C6j
		mov	dword ptr [ebx+3Ch], 1
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4189D9:				; CODE XREF: .text:00418986j
		inc	dword_518050
		xor	eax, eax
		mov	ecx, dword_518050
		mov	[ebx+1Ch], ecx
		jmp	short loc_4189F3
; ---------------------------------------------------------------------------

loc_4189EC:				; CODE XREF: .text:004189F5j
		mov	ecx, [ebx+40h]
		mov	[ecx+eax*4], eax
		inc	eax

loc_4189F3:				; CODE XREF: .text:004189EAj
		cmp	eax, [ebx]
		jl	short loc_4189EC
		mov	[ebx+38h], edx
		mov	dword_5D8F48, ebx
		push	offset loc_4172E8 ; fcmp
		push	4		; width
		mov	edx, [ebx]
		push	edx		; nelem
		mov	eax, [ebx+40h]
		push	eax		; base
		call	_qsort
		mov	dword ptr [ebx+3Ch], 1
		mov	eax, [ebx+24h]
		add	esp, 10h
		test	eax, eax
		jl	short loc_418A28
		cmp	eax, [ebx]
		jl	short loc_418A31

loc_418A28:				; CODE XREF: .text:00418A22j
		mov	dword ptr [ebx+24h], 0FFFFFFFFh
		jmp	short loc_418A80
; ---------------------------------------------------------------------------

loc_418A31:				; CODE XREF: .text:00418A26j
		mov	dword ptr [ebx+24h], 0FFFFFFFFh
		xor	eax, eax
		jmp	short loc_418A7C
; ---------------------------------------------------------------------------

loc_418A3C:				; CODE XREF: .text:00418A7Ej
		mov	edx, [ebx+20h]
		test	edx, edx
		jz	short loc_418A4E
		mov	ecx, [ebx+40h]
		mov	ecx, [ecx+eax*4]
		mov	edx, [edx+ecx*4]
		jmp	short loc_418A5B
; ---------------------------------------------------------------------------

loc_418A4E:				; CODE XREF: .text:00418A41j
		mov	edx, [ebx+40h]
		mov	edx, [edx+eax*4]
		imul	edx, [ebx+8]
		add	edx, [ebx+10h]

loc_418A5B:				; CODE XREF: .text:00418A4Cj
		mov	ecx, [edx]
		cmp	ecx, [ebx+28h]
		jnz	short loc_418A7B
		test	byte ptr [ebx+0Ch], 2
		jz	short loc_418A76
		mov	edx, [edx+8]
		and	edx, 0FFh
		cmp	edx, [ebx+2Ch]
		jnz	short loc_418A7B

loc_418A76:				; CODE XREF: .text:00418A66j
		mov	[ebx+24h], eax
		jmp	short loc_418A80
; ---------------------------------------------------------------------------

loc_418A7B:				; CODE XREF: .text:00418A60j
					; .text:00418A74j
		inc	eax

loc_418A7C:				; CODE XREF: .text:00418A3Aj
		cmp	eax, [ebx]
		jl	short loc_418A3C

loc_418A80:				; CODE XREF: .text:00418A2Fj
					; .text:00418A79j
		mov	eax, 1
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry  86. _Getsortedbyselection
; Exported entry 607. Getsortedbyselection

; void *__cdecl	Getsortedbyselection(t_sorted *sd, int index)
		public Getsortedbyselection
Getsortedbyselection:			; CODE XREF: .text:0041244Ap
					; .text:004124CEp ...
		push	ebp		; _Getsortedbyselection
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_418AAB
		cmp	dword ptr [ebx+10h], 0
		jnz	short loc_418AA3
		cmp	dword ptr [ebx+20h], 0
		jz	short loc_418AAB

loc_418AA3:				; CODE XREF: .text:00418A9Bj
		test	esi, esi
		jl	short loc_418AAB
		cmp	esi, [ebx]
		jl	short loc_418AAF

loc_418AAB:				; CODE XREF: .text:00418A95j
					; .text:00418AA1j ...
		xor	eax, eax
		jmp	short loc_418AF6
; ---------------------------------------------------------------------------

loc_418AAF:				; CODE XREF: .text:00418AA9j
		cmp	dword ptr [ebx+40h], 0
		jz	short loc_418AE2
		mov	edx, [ebx+38h]
		push	edx		; sort
		push	ebx		; sd
		call	Sortsorteddata
		add	esp, 8
		mov	eax, [ebx+20h]
		test	eax, eax
		jz	short loc_418AD4
		mov	edx, [ebx+40h]
		mov	ecx, [edx+esi*4]
		mov	eax, [eax+ecx*4]
		jmp	short loc_418AF6
; ---------------------------------------------------------------------------

loc_418AD4:				; CODE XREF: .text:00418AC7j
		mov	eax, [ebx+40h]
		mov	eax, [eax+esi*4]
		imul	dword ptr [ebx+8]
		add	eax, [ebx+10h]
		jmp	short loc_418AF6
; ---------------------------------------------------------------------------

loc_418AE2:				; CODE XREF: .text:00418AB3j
		mov	eax, [ebx+20h]
		test	eax, eax
		jz	short loc_418AEE
		mov	eax, [eax+esi*4]
		jmp	short loc_418AF6
; ---------------------------------------------------------------------------

loc_418AEE:				; CODE XREF: .text:00418AE7j
		mov	eax, esi
		imul	dword ptr [ebx+8]
		add	eax, [ebx+10h]

loc_418AF6:				; CODE XREF: .text:00418AADj
					; .text:00418AD2j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry  87. _Issortedinit
; Exported entry 636. Issortedinit

; bool __cdecl Issortedinit(t_sorted *sd)
		public Issortedinit
Issortedinit:				; CODE XREF: .text:00419223p
					; .text:0042035Fp ...
		push	ebp		; _Issortedinit
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_418B12
		cmp	dword ptr [eax+10h], 0
		jnz	short loc_418B16
		cmp	dword ptr [eax+20h], 0
		jnz	short loc_418B16

loc_418B12:				; CODE XREF: .text:00418B04j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_418B16:				; CODE XREF: .text:00418B0Aj
					; .text:00418B10j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
