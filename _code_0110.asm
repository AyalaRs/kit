.code

; SORTFUNC loc_4DDB24
loc_4DDB24:				; DATA XREF: .text:0044A20Co
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	edx, [ebp+10h]
		xor	eax, eax
		mov	ebx, [ebp+8]
		mov	esi, [ebp+0Ch]
		cmp	edx, 1
		jnz	short loc_4DDB4B
		lea	eax, [esi+0Ch]
		push	eax		; s2
		lea	edx, [ebx+0Ch]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		jmp	short loc_4DDB68
; ---------------------------------------------------------------------------

loc_4DDB4B:				; CODE XREF: .text:004DDB37j
		cmp	edx, 2
		jnz	short loc_4DDB68
		mov	ecx, [esi+50h]
		mov	edx, [ebx+50h]
		cmp	ecx, edx
		jge	short loc_4DDB5F
		or	eax, 0FFFFFFFFh
		jmp	short loc_4DDB68
; ---------------------------------------------------------------------------

loc_4DDB5F:				; CODE XREF: .text:004DDB58j
		cmp	ecx, edx
		jle	short loc_4DDB68
		mov	eax, 1

loc_4DDB68:				; CODE XREF: .text:004DDB49j
					; .text:004DDB4Ej ...
		test	eax, eax
		jnz	short loc_4DDB82
		mov	ecx, [esi]
		mov	edx, [ebx]
		cmp	ecx, edx
		jbe	short loc_4DDB79
		or	eax, 0FFFFFFFFh
		jmp	short loc_4DDB82
; ---------------------------------------------------------------------------

loc_4DDB79:				; CODE XREF: .text:004DDB72j
		cmp	ecx, edx
		jnb	short loc_4DDB82
		mov	eax, 1

loc_4DDB82:				; CODE XREF: .text:004DDB6Aj
					; .text:004DDB77j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4DDB88(wchar_t *buffer, void *s, int,	int, int, int)
loc_4DDB88:				; DATA XREF: .text:004DE1F6o
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+1Ch]
		xor	ebx, ebx
		add	eax, 4
		mov	esi, [ebp+18h]
		cmp	eax, 0Ah	; switch 11 cases
		ja	loc_4DE004	; jumptable 004DDBA3 default case
		jmp	ds:off_4DDBAA[eax*4] ; switch jump
; ---------------------------------------------------------------------------
off_4DDBAA	dd offset loc_4DDBD6	; DATA XREF: .text:004DDBA3r
		dd offset loc_4DDBDD	; jump table for switch	statement
		dd offset loc_4DDBE4
		dd offset loc_4DDBEB
		dd offset loc_4DDBF2
		dd offset loc_4DDC08
		dd offset loc_4DDC24
		dd offset loc_4DDC52
		dd offset loc_4DDF0F
		dd offset loc_4DDF36
		dd offset loc_4DDFBE
; ---------------------------------------------------------------------------

loc_4DDBD6:				; CODE XREF: .text:004DDBA3j
					; DATA XREF: .text:off_4DDBAAo
		xor	eax, eax	; jumptable 004DDBA3 case 0
		jmp	loc_4DE006
; ---------------------------------------------------------------------------

loc_4DDBDD:				; CODE XREF: .text:004DDBA3j
					; DATA XREF: .text:off_4DDBAAo
		xor	eax, eax	; jumptable 004DDBA3 case 1
		jmp	loc_4DE006
; ---------------------------------------------------------------------------

loc_4DDBE4:				; CODE XREF: .text:004DDBA3j
					; DATA XREF: .text:off_4DDBAAo
		xor	eax, eax	; jumptable 004DDBA3 case 2
		jmp	loc_4DE006
; ---------------------------------------------------------------------------

loc_4DDBEB:				; CODE XREF: .text:004DDBA3j
					; DATA XREF: .text:off_4DDBAAo
		xor	eax, eax	; jumptable 004DDBA3 case 3
		jmp	loc_4DE006
; ---------------------------------------------------------------------------

loc_4DDBF2:				; CODE XREF: .text:004DDBA3j
					; DATA XREF: .text:off_4DDBAAo
		mov	edx, [esi]	; jumptable 004DDBA3 case 4
		push	edx		; u
		mov	ecx, [ebp+8]
		push	ecx		; s
		call	Hexprint8W
		add	esp, 8
		mov	ebx, eax
		jmp	loc_4DE004	; jumptable 004DDBA3 default case
; ---------------------------------------------------------------------------

loc_4DDC08:				; CODE XREF: .text:004DDBA3j
					; DATA XREF: .text:off_4DDBAAo
		add	esi, 0Ch	; jumptable 004DDBA3 case 5
		push	esi		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4DE004	; jumptable 004DDBA3 default case
; ---------------------------------------------------------------------------

loc_4DDC24:				; CODE XREF: .text:004DDBA3j
					; DATA XREF: .text:off_4DDBAAo
		mov	eax, [esi+50h]	; jumptable 004DDBA3 case 6
		push	eax
		push	offset a4i__0	; format
		mov	edx, [ebp+8]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		mov	eax, [esi+50h]
		cmp	eax, [esi+54h]
		jz	loc_4DE004	; jumptable 004DDBA3 default case
		mov	edx, [ebp+10h]
		or	dword ptr [edx], 1
		jmp	loc_4DE004	; jumptable 004DDBA3 default case
; ---------------------------------------------------------------------------

loc_4DDC52:				; CODE XREF: .text:004DDBA3j
					; DATA XREF: .text:off_4DDBAAo
		mov	ecx, [esi+4Ch]	; jumptable 004DDBA3 case 7
		push	ecx		; u
		mov	eax, [ebp+8]
		push	eax		; s
		call	Hexprint8W
		mov	ebx, eax
		mov	eax, [esi+8]
		and	eax, 7F00000h
		add	esp, 8
		cmp	eax, 1B00000h
		jg	loc_4DDD47
		jz	loc_4DDE5E
		cmp	eax, 1300000h
		jg	short loc_4DDCEE
		jz	loc_4DDE16
		cmp	eax, offset stru_4FFFE8.postbyte
		jg	short loc_4DDCC8
		jz	loc_4DDDFB
		sub	eax, 100000h
		jz	loc_4DDDFB
		sub	eax, 100000h
		jz	loc_4DDE04
		sub	eax, 100000h
		jz	loc_4DDDFB
		sub	eax, 100000h
		jz	loc_4DDE0D
		jmp	loc_4DDE5E
; ---------------------------------------------------------------------------

loc_4DDCC8:				; CODE XREF: .text:004DDC8Fj
		sub	eax, 1000000h
		jz	loc_4DDE5E
		sub	eax, 100000h
		jz	loc_4DDE5E
		sub	eax, 100000h
		jz	loc_4DDE5E
		jmp	loc_4DDE5E
; ---------------------------------------------------------------------------

loc_4DDCEE:				; CODE XREF: .text:004DDC82j
		cmp	eax, 1700000h
		jg	short loc_4DDD21
		jz	loc_4DDE5E
		sub	eax, 1400000h
		jz	loc_4DDE1F
		sub	eax, 100000h
		jz	loc_4DDE28
		sub	eax, 100000h
		jz	loc_4DDE4C
		jmp	loc_4DDE5E
; ---------------------------------------------------------------------------

loc_4DDD21:				; CODE XREF: .text:004DDCF3j
		sub	eax, 1800000h
		jz	loc_4DDE5E
		sub	eax, 100000h
		jz	loc_4DDE5E
		sub	eax, 100000h
		jz	loc_4DDE5E
		jmp	loc_4DDE5E
; ---------------------------------------------------------------------------

loc_4DDD47:				; CODE XREF: .text:004DDC71j
		cmp	eax, 2400000h
		jg	short loc_4DDDB8
		jz	loc_4DDE5E
		cmp	eax, 2000000h
		jg	short loc_4DDD92
		jz	loc_4DDE5E
		sub	eax, 1C00000h
		jz	loc_4DDE31
		sub	eax, 100000h
		jz	loc_4DDE3A
		sub	eax, 100000h
		jz	loc_4DDE5E
		sub	eax, 100000h
		jz	loc_4DDE5E
		jmp	loc_4DDE5E
; ---------------------------------------------------------------------------

loc_4DDD92:				; CODE XREF: .text:004DDD59j
		sub	eax, 2100000h
		jz	loc_4DDE55
		sub	eax, 100000h
		jz	loc_4DDE5E
		sub	eax, 100000h
		jz	loc_4DDE43
		jmp	loc_4DDE5E
; ---------------------------------------------------------------------------

loc_4DDDB8:				; CODE XREF: .text:004DDD4Cj
		cmp	eax, 2800000h
		jg	short loc_4DDDE4
		jz	loc_4DDE5E
		sub	eax, 2500000h
		jz	loc_4DDE5E
		sub	eax, 100000h
		jz	loc_4DDE5E
		sub	eax, 100000h
		jz	short loc_4DDE5E
		jmp	short loc_4DDE5E
; ---------------------------------------------------------------------------

loc_4DDDE4:				; CODE XREF: .text:004DDDBDj
		sub	eax, 2900000h
		jz	short loc_4DDE5E
		sub	eax, 100000h
		jz	short loc_4DDE5E
		sub	eax, 200000h
		jz	short loc_4DDE5E
		jmp	short loc_4DDE5E
; ---------------------------------------------------------------------------

loc_4DDDFB:				; CODE XREF: .text:004DDC91j
					; .text:004DDC9Cj ...
		mov	dword ptr [ebp-4], offset aAccess_rights_ ; "ACCESS_RIGHTS_FILE"
		jmp	short loc_4DDE65
; ---------------------------------------------------------------------------

loc_4DDE04:				; CODE XREF: .text:004DDCA7j
		mov	dword ptr [ebp-4], offset aAccess_right_4 ; "ACCESS_RIGHTS_PIPE"
		jmp	short loc_4DDE65
; ---------------------------------------------------------------------------

loc_4DDE0D:				; CODE XREF: .text:004DDCBDj
		mov	dword ptr [ebp-4], offset aAccess_right_0 ; "ACCESS_RIGHTS_DIR"
		jmp	short loc_4DDE65
; ---------------------------------------------------------------------------

loc_4DDE16:				; CODE XREF: .text:004DDC84j
		mov	dword ptr [ebp-4], offset aAccess_right_1 ; "ACCESS_RIGHTS_TOKEN"
		jmp	short loc_4DDE65
; ---------------------------------------------------------------------------

loc_4DDE1F:				; CODE XREF: .text:004DDD00j
		mov	dword ptr [ebp-4], offset aAccess_right_2 ; "ACCESS_RIGHTS_PROCESS"
		jmp	short loc_4DDE65
; ---------------------------------------------------------------------------

loc_4DDE28:				; CODE XREF: .text:004DDD0Bj
		mov	dword ptr [ebp-4], offset aAccess_right_3 ; "ACCESS_RIGHTS_THREAD"
		jmp	short loc_4DDE65
; ---------------------------------------------------------------------------

loc_4DDE31:				; CODE XREF: .text:004DDD66j
		mov	dword ptr [ebp-4], offset aAccess_right_5 ; "ACCESS_RIGHTS_SEMAPHORE"
		jmp	short loc_4DDE65
; ---------------------------------------------------------------------------

loc_4DDE3A:				; CODE XREF: .text:004DDD71j
		mov	dword ptr [ebp-4], offset aAccess_right_6 ; "ACCESS_RIGHTS_TIMER"
		jmp	short loc_4DDE65
; ---------------------------------------------------------------------------

loc_4DDE43:				; CODE XREF: .text:004DDDADj
		mov	dword ptr [ebp-4], offset aAccess_right_7 ; "ACCESS_RIGHTS_KEY"
		jmp	short loc_4DDE65
; ---------------------------------------------------------------------------

loc_4DDE4C:				; CODE XREF: .text:004DDD16j
		mov	dword ptr [ebp-4], offset aAccess_right_8 ; "ACCESS_RIGHTS_JOB"
		jmp	short loc_4DDE65
; ---------------------------------------------------------------------------

loc_4DDE55:				; CODE XREF: .text:004DDD97j
		mov	dword ptr [ebp-4], offset aAccess_right_9 ; "ACCESS_RIGHTS_DESKTOP"
		jmp	short loc_4DDE65
; ---------------------------------------------------------------------------

loc_4DDE5E:				; CODE XREF: .text:004DDC77j
					; .text:004DDCC3j ...
		mov	dword ptr [ebp-4], offset aAccess_rights ; "ACCESS_RIGHTS"

loc_4DDE65:				; CODE XREF: .text:004DDE02j
					; .text:004DDE0Bj ...
		cmp	dword ptr [ebp-4], 0
		jz	loc_4DE004	; jumptable 004DDBA3 default case
		push	ebx		; n
		push	0		; c
		mov	edx, [ebp+0Ch]
		push	edx		; s
		call	_memset
		add	esp, 0Ch
		mov	ecx, 100h
		sub	ecx, ebx
		mov	eax, ebx
		push	offset asc_57963E ; " ("
		push	ecx		; n
		add	eax, eax
		add	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		mov	edi, eax
		add	esp, 0Ch
		mov	eax, 100h
		mov	edx, ebx
		sub	eax, ebx
		add	edx, edx
		sub	eax, edi
		mov	ecx, edi
		push	eax		; ntext
		add	ecx, ecx
		add	edx, [ebp+8]
		add	edx, ecx
		push	edx		; text
		mov	eax, [ebp-4]
		push	eax		; type
		mov	edx, [esi+4Ch]
		push	edx		; data
		call	Decodetype
		add	esp, 10h
		mov	ecx, 100h
		add	edi, eax
		sub	ecx, ebx
		sub	ecx, edi
		mov	eax, ebx
		push	(offset	aFilePipe+14h) ; src
		push	ecx		; n
		add	eax, eax
		mov	edx, edi
		add	eax, [ebp+8]
		add	edx, edx
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		push	edi		; n
		push	2		; c
		mov	ecx, [ebp+0Ch]
		add	ecx, ebx
		push	ecx		; s
		call	_memset
		add	esp, 0Ch
		add	ebx, edi
		mov	eax, [ebp+10h]
		or	dword ptr [eax], 100h
		jmp	loc_4DE004	; jumptable 004DDBA3 default case
; ---------------------------------------------------------------------------

loc_4DDF0F:				; CODE XREF: .text:004DDBA3j
					; DATA XREF: .text:off_4DDBAAo
		test	byte ptr [esi+0Ah], 1 ;	jumptable 004DDBA3 case	8
		jz	loc_4DE004	; jumptable 004DDBA3 default case
		push	offset asc_579644 ; "*"
		push	100h		; n
		mov	edx, [ebp+8]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	loc_4DE004	; jumptable 004DDBA3 default case
; ---------------------------------------------------------------------------

loc_4DDF36:				; CODE XREF: .text:004DDBA3j
					; DATA XREF: .text:off_4DDBAAo
		mov	eax, [esi+8]	; jumptable 004DDBA3 case 9
		and	eax, 7F00000h
		cmp	eax, 100000h
		jnz	short loc_4DDF6F
		cmp	dword ptr [esi+58h], 0
		jz	short loc_4DDF6F
		mov	edx, [esi+5Ch]
		push	edx
		mov	ecx, [esi+58h]
		push	ecx
		push	offset aSizeI_PointerI ; "Size %i., pointer %i."
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp+8]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		mov	ebx, eax
		jmp	short loc_4DDFA6
; ---------------------------------------------------------------------------

loc_4DDF6F:				; CODE XREF: .text:004DDF43j
					; .text:004DDF49j
		mov	eax, [esi+8]
		and	eax, 7F00000h
		cmp	eax, 1C00000h
		jnz	short loc_4DDFA6
		cmp	dword ptr [esi+5Ch], 0
		jz	short loc_4DDFA6
		mov	edx, [esi+5Ch]
		push	edx
		mov	ecx, [esi+58h]
		push	ecx
		push	offset aCountI_OfI_ ; "Count %i. of %i."
		call	_T
		pop	ecx
		push	eax		; format
		mov	eax, [ebp+8]
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		mov	ebx, eax

loc_4DDFA6:				; CODE XREF: .text:004DDF6Dj
					; .text:004DDF7Cj ...
		mov	eax, [esi+60h]
		cmp	eax, [esi+58h]
		jnz	short loc_4DDFB6
		mov	edx, [esi+64h]
		cmp	edx, [esi+5Ch]
		jz	short loc_4DE004 ; jumptable 004DDBA3 default case

loc_4DDFB6:				; CODE XREF: .text:004DDFACj
		mov	ecx, [ebp+10h]
		or	dword ptr [ecx], 1
		jmp	short loc_4DE004 ; jumptable 004DDBA3 default case
; ---------------------------------------------------------------------------

loc_4DDFBE:				; CODE XREF: .text:004DDBA3j
					; DATA XREF: .text:off_4DDBAAo
		cmp	g_IsOrigHandle,	0 ; jumptable 004DDBA3 case 10
		jnz	short loc_4DDFD1
		cmp	word ptr [esi+268h], 0
		jnz	short loc_4DDFEA

loc_4DDFD1:				; CODE XREF: .text:004DDFC5j
		add	esi, 68h
		push	esi		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_4DE004 ; jumptable 004DDBA3 default case
; ---------------------------------------------------------------------------

loc_4DDFEA:				; CODE XREF: .text:004DDFCFj
		add	esi, 268h
		push	esi		; src
		push	100h		; n
		mov	eax, [ebp+8]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_4DE004:				; CODE XREF: .text:004DDB9Dj
					; .text:004DDC03j ...
		mov	eax, ebx	; jumptable 004DDBA3 default case

loc_4DE006:				; CODE XREF: .text:004DDBD8j
					; .text:004DDBDFj ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DE00C:				; DATA XREF: .text:004DE1D2o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+10h]
		sub	eax, 470h
		jz	short loc_4DE020
		sub	eax, 1Ch
		jz	short loc_4DE056
		jmp	short loc_4DE064
; ---------------------------------------------------------------------------

loc_4DE020:				; CODE XREF: .text:004DE017j
		cmp	dword ptr [ebp+14h], 6
		jnz	short loc_4DE04F
		cmp	g_IsOrigHandle,	0
		setz	dl
		and	edx, 1
		push	edx		; index
		push	offset loc_4DCFA0 ; menufunc
		mov	ecx, [ebp+8]
		mov	eax, [ecx+218h]
		push	eax		; pm
		mov	edx, [ebp+8]
		push	edx		; pt
		call	Callmenufunction
		add	esp, 10h

loc_4DE04F:				; CODE XREF: .text:004DE024j
		mov	eax, 1
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DE056:				; CODE XREF: .text:004DE01Cj
		or	dword_57FE7C, 8000h
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DE064:				; CODE XREF: .text:004DE01Ej
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DE068:				; CODE XREF: .text:0040B03Ep
					; .text:004100DFp
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, offset aI_11 ; "%i"
__DebugBreak
		cmp	handles.bar.nbar, 0
		jnz	loc_4DE20F
		lea	eax, [ebx+892h]
		push	eax		; src
		push	offset handles	; dst
		call	_wcscpy
		mov	handles.mode, 0F0000h
		lea	edx, [ebx+8A2h]
		mov	handles.bar.visible, 1
		mov	handles.bar._name, edx
		lea	ecx, [ebx+8B0h]
		lea	eax, [ebx+0D6h]
		mov	handles.bar.expl, ecx
		mov	handles.bar.mode, 2
		mov	handles.bar.defdx, 9
		mov	handles.bar._name+4, eax
		lea	edx, [ebx+90Ch]
		lea	ecx, [ebx+932h]
		mov	handles.bar.expl+4, edx
		mov	handles.bar.mode+4, 2
		mov	handles.bar.defdx+4, 0Fh
		lea	eax, [ebx+93Ch]
		mov	handles.bar._name+8, ecx
		mov	handles.bar.expl+8, eax
		mov	handles.bar.mode+8, 2
		lea	edx, [ebx+95Ch]
		mov	handles.bar.defdx+8, 6
		mov	handles.bar._name+0Ch, edx
		lea	ecx, [ebx+96Ah]
		xor	eax, eax
		mov	handles.bar.expl+0Ch, ecx
		mov	handles.bar.mode+0Ch, eax
		lea	edx, [ebx+986h]
		mov	handles.bar.defdx+0Ch, 9
		mov	handles.bar._name+10h, edx
		lea	ecx, [ebx+98Eh]
		xor	eax, eax
		mov	handles.bar.expl+10h, ecx
		mov	handles.bar.mode+10h, eax
		lea	edx, [ebx+9E4h]
		mov	handles.bar.defdx+10h, 4
		mov	handles.bar._name+14h, edx
		lea	ecx, [ebx+9EEh]
		xor	eax, eax
		mov	handles.bar.expl+14h, ecx
		mov	handles.bar.mode+14h, eax
		lea	edx, [ebx+3]
		mov	handles.bar.defdx+14h, 14h
		lea	ecx, [ebx+3]
		mov	handles.bar._name+18h, edx
		mov	handles.bar.expl+18h, ecx
		mov	handles.bar.mode+18h, 1
		mov	handles.bar.defdx+18h, 0FFh
		mov	handles.bar.nbar, 7
		xor	eax, eax
		mov	handles.tabfunc, offset	loc_4DE00C
		xor	edx, edx
		mov	handles.custommode, eax
		xor	ecx, ecx
		mov	handles.customdata, edx
		mov	handles.updatefunc, ecx
		add	esp, 8
		xor	eax, eax
		mov	handles.drawfunc, offset loc_4DDB88
		mov	handles.tableselfunc, eax
		mov	handles.menu, offset stru_578D44

loc_4DE20F:				; CODE XREF: .text:004DE078j
		call	loc_4DCE68
		cmp	process, 0
		jz	short loc_4DE222
		call	loc_4DD068

loc_4DE222:				; CODE XREF: .text:004DE21Bj
		cmp	handles.hw, 0
		jnz	short loc_4DE25E
		lea	edx, [ebx+892h]
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; _title
		lea	ecx, [ebx+0A24h]
		push	ecx		; icon
		mov	eax, g_hInstance
		push	eax		; hi
		mov	edx, handles.bar.nbar
		push	edx		; ncolumn
		push	0		; nrow
		push	offset handles	; pt
		call	Createtablewindow
		add	esp, 18h
		jmp	short loc_4DE26E
; ---------------------------------------------------------------------------

loc_4DE25E:				; CODE XREF: .text:004DE229j
		push	0		; bErase
		push	0		; lpRect
		mov	ecx, handles.hw
		push	ecx		; hWnd
		call	InvalidateRect

loc_4DE26E:				; CODE XREF: .text:004DE25Cj
		cmp	handles.hparent, 0
		jz	short loc_4DE2C3
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4DE2C3
		mov	eax, hwclient
		test	eax, eax
		jz	short loc_4DE29A
		push	0		; lParam
		mov	edx, handles.hparent
		push	edx		; wParam
		push	222h		; Msg
		push	eax		; hWnd
		call	SendMessageW

loc_4DE29A:				; CODE XREF: .text:004DE284j
		mov	ecx, handles.hparent
		push	ecx		; hWnd
		call	IsZoomed
		test	eax, eax
		jnz	short loc_4DE2B7
		push	9		; nCmdShow
		mov	eax, handles.hparent
		push	eax		; hWnd
		call	ShowWindow

loc_4DE2B7:				; CODE XREF: .text:004DE2A8j
		mov	edx, handles.hw
		push	edx		; hWnd
		call	SetFocus

loc_4DE2C3:				; CODE XREF: .text:004DE275j
					; .text:004DE27Bj
		mov	eax, handles.hw
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4DE2CC:				; CODE XREF: .text:004DEBA0p
					; .text:004DEBD3p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		jmp	short loc_4DE2DB
; ---------------------------------------------------------------------------

loc_4DE2D8:				; CODE XREF: .text:004DE2E2j
					; .text:004DE2E8j
		add	ebx, 2

loc_4DE2DB:				; CODE XREF: .text:004DE2D6j
		mov	ax, [ebx]
		cmp	ax, 20h
		jz	short loc_4DE2D8
		cmp	ax, 9
		jz	short loc_4DE2D8
		mov	di, [ebx]
		xor	esi, esi
		test	di, di
		jz	short loc_4DE31A
		cmp	di, 0Dh
		jz	short loc_4DE31A
		cmp	di, 0Ah
		jz	short loc_4DE31A
		mov	[ebp-2], di
		add	ebx, 2
		mov	ax, [ebp-2]
		push	eax		; ch
		call	__ltowupper
		pop	ecx
		mov	edx, [ebp+0Ch]
		mov	[edx+esi*2], ax
		inc	esi

loc_4DE31A:				; CODE XREF: .text:004DE2F2j
					; .text:004DE2F8j ...
		mov	di, [ebx]
		test	di, di
		jz	short loc_4DE354
		cmp	di, 0Dh
		jz	short loc_4DE354
		cmp	di, 0Ah
		jz	short loc_4DE354
		cmp	di, 20h
		jz	short loc_4DE354
		cmp	di, 9
		jz	short loc_4DE354
		mov	[ebp-4], di
		add	ebx, 2
		mov	ax, [ebp-4]
		push	eax		; ch
		call	__ltowupper
		pop	ecx
		mov	edx, [ebp+0Ch]
		mov	[edx+esi*2], ax
		inc	esi

loc_4DE354:				; CODE XREF: .text:004DE320j
					; .text:004DE326j ...
		test	esi, esi
		jnz	short loc_4DE368
		cmp	word ptr [ebx],	0
		jz	short loc_4DE368
		mov	ecx, [ebp+0Ch]
		mov	word ptr [ecx+esi*2], 20h
		inc	esi

loc_4DE368:				; CODE XREF: .text:004DE356j
					; .text:004DE35Cj
		mov	eax, [ebp+0Ch]
		mov	word ptr [eax+esi*2], 0
		jmp	short loc_4DE376
; ---------------------------------------------------------------------------

loc_4DE373:				; CODE XREF: .text:004DE37Dj
					; .text:004DE383j
		add	ebx, 2

loc_4DE376:				; CODE XREF: .text:004DE371j
		mov	ax, [ebx]
		cmp	ax, 20h
		jz	short loc_4DE373
		cmp	ax, 9
		jz	short loc_4DE373
		xor	esi, esi
		mov	eax, [ebp+10h]

loc_4DE38A:				; CODE XREF: .text:004DE401j
		mov	dx, [ebx]
		test	dx, dx
		jz	short loc_4DE403
		cmp	dx, 0Dh
		jz	short loc_4DE403
		cmp	dx, 0Ah
		jz	short loc_4DE403
		cmp	dx, 5Ch
		jnz	short loc_4DE3EE
		add	ebx, 2
		cmp	word ptr [ebx],	6Eh
		jnz	short loc_4DE3B7
		mov	word ptr [eax],	0Ah
		add	ebx, 2
		jmp	short loc_4DE3F7
; ---------------------------------------------------------------------------

loc_4DE3B7:				; CODE XREF: .text:004DE3ABj
		cmp	word ptr [ebx],	72h
		jnz	short loc_4DE3C7
		mov	word ptr [eax],	0Dh
		add	ebx, 2
		jmp	short loc_4DE3F7
; ---------------------------------------------------------------------------

loc_4DE3C7:				; CODE XREF: .text:004DE3BBj
		cmp	word ptr [ebx],	74h
		jnz	short loc_4DE3D7
		mov	word ptr [eax],	9
		add	ebx, 2
		jmp	short loc_4DE3F7
; ---------------------------------------------------------------------------

loc_4DE3D7:				; CODE XREF: .text:004DE3CBj
		cmp	word ptr [ebx],	5Ch
		jnz	short loc_4DE3E7
		mov	word ptr [eax],	5Ch
		add	ebx, 2
		jmp	short loc_4DE3F7
; ---------------------------------------------------------------------------

loc_4DE3E7:				; CODE XREF: .text:004DE3DBj
		mov	word ptr [eax],	5Ch
		jmp	short loc_4DE3F7
; ---------------------------------------------------------------------------

loc_4DE3EE:				; CODE XREF: .text:004DE3A2j
		mov	cx, [ebx]
		add	ebx, 2
		mov	[eax], cx

loc_4DE3F7:				; CODE XREF: .text:004DE3B5j
					; .text:004DE3C5j ...
		inc	esi
		add	eax, 2
		cmp	esi, 3FFh
		jl	short loc_4DE38A

loc_4DE403:				; CODE XREF: .text:004DE390j
					; .text:004DE396j ...
		mov	eax, [ebp+10h]
		lea	eax, [eax+esi*2-2]
		jmp	short loc_4DE410
; ---------------------------------------------------------------------------

loc_4DE40C:				; CODE XREF: .text:004DE418j
		dec	esi
		add	eax, 0FFFFFFFEh

loc_4DE410:				; CODE XREF: .text:004DE40Aj
		test	esi, esi
		jle	short loc_4DE41A
		cmp	word ptr [eax],	20h
		jz	short loc_4DE40C

loc_4DE41A:				; CODE XREF: .text:004DE412j
		mov	edx, [ebp+10h]
		mov	word ptr [edx+esi*2], 0

loc_4DE423:				; CODE XREF: .text:004DE456j
		mov	ax, [ebx]
		test	ax, ax
		jz	short loc_4DE458
		cmp	ax, 0Dh
		jnz	short loc_4DE43F
		add	ebx, 2
		cmp	word ptr [ebx],	0Ah
		jnz	short loc_4DE458
		add	ebx, 2
		jmp	short loc_4DE458
; ---------------------------------------------------------------------------

loc_4DE43F:				; CODE XREF: .text:004DE42Fj
		cmp	word ptr [ebx],	0Ah
		jnz	short loc_4DE453
		add	ebx, 2
		cmp	word ptr [ebx],	0Dh
		jnz	short loc_4DE458
		add	ebx, 2
		jmp	short loc_4DE458
; ---------------------------------------------------------------------------

loc_4DE453:				; CODE XREF: .text:004DE443j
		add	ebx, 2
		jmp	short loc_4DE423
; ---------------------------------------------------------------------------

loc_4DE458:				; CODE XREF: .text:004DE429j
					; .text:004DE438j ...
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DE460:				; CODE XREF: .text:004DE552p
					; .text:004DE749p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_4DE470
		xor	eax, eax
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DE470:				; CODE XREF: .text:004DE469j
		mov	edx, 811C9DC5h
		xor	ecx, ecx
		jmp	short loc_4DE488
; ---------------------------------------------------------------------------

loc_4DE479:				; CODE XREF: .text:004DE491j
		imul	edx, 1000193h
		movzx	ebx, word ptr [eax]
		xor	edx, ebx
		add	eax, 2
		inc	ecx

loc_4DE488:				; CODE XREF: .text:004DE477j
		cmp	ecx, 14h
		jge	short loc_4DE493
		cmp	word ptr [eax],	0
		jnz	short loc_4DE479

loc_4DE493:				; CODE XREF: .text:004DE48Bj
		mov	eax, edx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4DE498:				; CODE XREF: .text:004DEDD0p
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4DE4C8
		mov	eax, [ebx]
		test	eax, eax
		jz	short loc_4DE4B4
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	[ebx], edx

loc_4DE4B4:				; CODE XREF: .text:004DE4A7j
		xor	ecx, ecx
		mov	[ebx+4], ecx
		xor	eax, eax
		mov	[ebx+8], eax
		add	ebx, 0Ch
		push	ebx		; s
		call	loc_43B05C
		pop	ecx

loc_4DE4C8:				; CODE XREF: .text:004DE4A1j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_4DE4CC(int, void *src, int, void *, _size_t n)
loc_4DE4CC:				; CODE XREF: .text:004DE89Dp
					; .text:004DE937p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE4h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	edi, [ebp+8]
		test	edi, edi
		jz	short loc_4DE4FA
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4DE4FA
		mov	eax, [ebp+0Ch]	; int
		cmp	word ptr [eax],	0
		jz	short loc_4DE4FA
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_4DE501
		cmp	dword ptr [ebp+18h], 0
		jle	short loc_4DE501

loc_4DE4FA:				; CODE XREF: .text:004DE4DDj
					; .text:004DE4E3j ...
		xor	eax, eax
		jmp	loc_4DE6ED
; ---------------------------------------------------------------------------

loc_4DE501:				; CODE XREF: .text:004DE4F2j
					; .text:004DE4F8j
		cmp	dword ptr [edi], 0
		jnz	short loc_4DE53E
		mov	dword ptr [ebp-8], 2000h
		push	3		; flags
		mov	edx, [ebp-8]
		shl	edx, 4		; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_4DE52E
		xor	eax, eax
		jmp	loc_4DE6ED
; ---------------------------------------------------------------------------

loc_4DE52E:				; CODE XREF: .text:004DE525j
		mov	edx, [ebp-1Ch]
		xor	eax, eax
		mov	[edi], edx
		mov	ecx, [ebp-8]
		mov	[edi+4], ecx
		mov	[edi+8], eax

loc_4DE53E:				; CODE XREF: .text:004DE504j
		test	ebx, ebx
		jz	short loc_4DE54E
		cmp	dword ptr [ebx], 0
		jz	short loc_4DE54E
		mov	edx, [ebx]
		mov	[ebp-0Ch], edx
		jmp	short loc_4DE564
; ---------------------------------------------------------------------------

loc_4DE54E:				; CODE XREF: .text:004DE540j
					; .text:004DE545j
		mov	ecx, [ebp+0Ch]
		push	ecx
		call	loc_4DE460
		pop	ecx
		mov	[ebp-0Ch], eax
		test	ebx, ebx
		jz	short loc_4DE564
		mov	eax, [ebp-0Ch]
		mov	[ebx], eax

loc_4DE564:				; CODE XREF: .text:004DE54Cj
					; .text:004DE55Dj
		mov	eax, [edi+4]
		mov	edx, eax
		sub	edx, [edi+8]
		shl	edx, 2		; int
		cmp	edx, eax
		jge	loc_4DE609
		add	eax, eax	; int
		mov	[ebp-8], eax
		push	3		; flags
		mov	ecx, [ebp-8]
		shl	ecx, 4		; int
		push	ecx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-1Ch], eax
		cmp	dword ptr [ebp-1Ch], 0
		jnz	short loc_4DE59D
		xor	eax, eax
		jmp	loc_4DE6ED
; ---------------------------------------------------------------------------

loc_4DE59D:				; CODE XREF: .text:004DE594j
		mov	edx, [ebp-8]
		dec	edx
		xor	ecx, ecx
		mov	[ebp-10h], edx
		mov	[ebp-4], ecx
		mov	ebx, [edi]
		jmp	short loc_4DE5ED
; ---------------------------------------------------------------------------

loc_4DE5AD:				; CODE XREF: .text:004DE5F3j
		cmp	dword ptr [ebx+4], 0
		jz	short loc_4DE5E7
		mov	esi, [ebx]
		and	esi, [ebp-10h]
		jmp	short loc_4DE5C2
; ---------------------------------------------------------------------------

loc_4DE5BA:				; CODE XREF: .text:004DE5CFj
		inc	esi
		cmp	esi, [ebp-8]
		jl	short loc_4DE5C2
		xor	esi, esi

loc_4DE5C2:				; CODE XREF: .text:004DE5B8j
					; .text:004DE5BEj
		mov	eax, esi
		shl	eax, 4
		mov	edx, [ebp-1Ch]
		cmp	dword ptr [edx+eax+4], 0
		jnz	short loc_4DE5BA
		shl	esi, 4
		mov	ecx, [ebp-1Ch]
		push	esi
		push	edi
		lea	edi, [ecx+esi]
		mov	esi, ebx
		mov	ecx, 4
		rep movsd
		pop	edi
		pop	esi

loc_4DE5E7:				; CODE XREF: .text:004DE5B1j
		inc	dword ptr [ebp-4]
		add	ebx, 10h

loc_4DE5ED:				; CODE XREF: .text:004DE5ABj
		mov	eax, [edi+4]
		cmp	eax, [ebp-4]
		jg	short loc_4DE5AD
		mov	edx, [edi]
		push	edx		; data
		call	Memfree
		pop	ecx
		mov	ecx, [ebp-1Ch]
		mov	[edi], ecx
		mov	eax, [ebp-8]
		mov	[edi+4], eax

loc_4DE609:				; CODE XREF: .text:004DE571j
		mov	edx, [ebp+0Ch]
		push	edx		; s
		call	_wcslen
		pop	ecx
		mov	ebx, eax
		lea	esi, [ebx+1]
		mov	eax, esi
		add	eax, eax
		push	eax
		lea	edx, [edi+0Ch]
		push	edx
		call	loc_43AFE0
		add	esp, 8
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jnz	short loc_4DE639
		xor	eax, eax
		jmp	loc_4DE6ED
; ---------------------------------------------------------------------------

loc_4DE639:				; CODE XREF: .text:004DE630j
		add	esi, esi
		push	esi		; n
		mov	edx, [ebp+0Ch]
		push	edx		; src
		mov	ecx, [ebp-14h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch
		cmp	dword ptr [ebp+18h], 0
		jg	short loc_4DE65E
		xor	eax, eax
		mov	[ebp-18h], eax
		xor	edx, edx
		mov	[ebp+18h], edx
		jmp	short loc_4DE68C
; ---------------------------------------------------------------------------

loc_4DE65E:				; CODE XREF: .text:004DE650j
		mov	ebx, [ebp+18h]
		push	ebx
		lea	eax, [edi+0Ch]
		push	eax
		call	loc_43AFE0
		add	esp, 8
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 0
		jnz	short loc_4DE67B
		xor	eax, eax
		jmp	short loc_4DE6ED
; ---------------------------------------------------------------------------

loc_4DE67B:				; CODE XREF: .text:004DE675j
		push	ebx		; n
		mov	edx, [ebp+14h]
		push	edx		; src
		mov	ecx, [ebp-18h]
		push	ecx		; dest
		call	_memcpy
		add	esp, 0Ch

loc_4DE68C:				; CODE XREF: .text:004DE65Cj
		mov	esi, [edi+4]
		dec	esi
		and	esi, [ebp-0Ch]
		mov	ebx, [edi]
		mov	eax, esi
		shl	eax, 4
		add	ebx, eax
		jmp	short loc_4DE6CA
; ---------------------------------------------------------------------------

loc_4DE69E:				; CODE XREF: .text:004DE6CEj
		mov	edx, [ebx]
		cmp	edx, [ebp-0Ch]
		jnz	short loc_4DE6BD
		mov	ecx, [ebp+0Ch]
		push	ecx		; s2
		mov	eax, [ebx+4]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DE6BD
		xor	eax, eax
		jmp	short loc_4DE6ED
; ---------------------------------------------------------------------------

loc_4DE6BD:				; CODE XREF: .text:004DE6A3j
					; .text:004DE6B7j
		inc	esi
		add	ebx, 10h
		cmp	esi, [edi+4]
		jl	short loc_4DE6CA
		xor	esi, esi
		mov	ebx, [edi]

loc_4DE6CA:				; CODE XREF: .text:004DE69Cj
					; .text:004DE6C4j
		cmp	dword ptr [ebx+4], 0
		jnz	short loc_4DE69E
		mov	eax, [ebp-0Ch]
		mov	[ebx], eax
		mov	edx, [ebp-14h]
		mov	[ebx+4], edx
		mov	ecx, [ebp-18h]
		mov	[ebx+8], ecx
		mov	eax, [ebp+18h]
		mov	[ebx+0Ch], eax
		inc	dword ptr [edi+8]
		mov	eax, [ebp-18h]

loc_4DE6ED:				; CODE XREF: .text:004DE4FCj
					; .text:004DE529j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_4DE6F4(int, wchar_t *s2, int,	int)
loc_4DE6F4:				; CODE XREF: .text:004DE7F7p
					; .text:004DE8D1p ...
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+10h]
		mov	edi, [ebp+8]
		test	edi, edi
		jz	short loc_4DE719
		cmp	dword ptr [edi], 0
		jz	short loc_4DE719
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_4DE719
		mov	eax, [ebp+0Ch]
		cmp	word ptr [eax],	0
		jnz	short loc_4DE735

loc_4DE719:				; CODE XREF: .text:004DE703j
					; .text:004DE708j ...
		test	ebx, ebx
		jz	short loc_4DE721
		xor	edx, edx
		mov	[ebx], edx

loc_4DE721:				; CODE XREF: .text:004DE71Bj
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4DE72E
		mov	ecx, [ebp+14h]
		xor	eax, eax
		mov	[ecx], eax

loc_4DE72E:				; CODE XREF: .text:004DE725j
		xor	eax, eax
		jmp	loc_4DE7BD
; ---------------------------------------------------------------------------

loc_4DE735:				; CODE XREF: .text:004DE717j
		test	ebx, ebx
		jz	short loc_4DE745
		cmp	dword ptr [ebx], 0
		jz	short loc_4DE745
		mov	edx, [ebx]
		mov	[ebp-4], edx
		jmp	short loc_4DE75B
; ---------------------------------------------------------------------------

loc_4DE745:				; CODE XREF: .text:004DE737j
					; .text:004DE73Cj
		mov	ecx, [ebp+0Ch]
		push	ecx
		call	loc_4DE460
		pop	ecx
		mov	[ebp-4], eax
		test	ebx, ebx
		jz	short loc_4DE75B
		mov	eax, [ebp-4]
		mov	[ebx], eax

loc_4DE75B:				; CODE XREF: .text:004DE743j
					; .text:004DE754j
		mov	esi, [edi+4]
		dec	esi
		and	esi, [ebp-4]
		mov	ebx, [edi]
		mov	eax, esi
		shl	eax, 4
		add	ebx, eax
		jmp	short loc_4DE7A8
; ---------------------------------------------------------------------------

loc_4DE76D:				; CODE XREF: .text:004DE7ACj
		mov	edx, [ebx]
		cmp	edx, [ebp-4]
		jnz	short loc_4DE79B
		mov	ecx, [ebp+0Ch]
		push	ecx		; s2
		mov	eax, [ebx+4]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_4DE79B
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4DE796
		mov	edx, [ebp+14h]
		mov	ecx, [ebx+0Ch]
		mov	[edx], ecx

loc_4DE796:				; CODE XREF: .text:004DE78Cj
		mov	eax, [ebx+8]
		jmp	short loc_4DE7BD
; ---------------------------------------------------------------------------

loc_4DE79B:				; CODE XREF: .text:004DE772j
					; .text:004DE786j
		inc	esi
		add	ebx, 10h
		cmp	esi, [edi+4]
		jl	short loc_4DE7A8
		xor	esi, esi
		mov	ebx, [edi]

loc_4DE7A8:				; CODE XREF: .text:004DE76Bj
					; .text:004DE7A2j
		cmp	dword ptr [ebx+4], 0
		jnz	short loc_4DE76D
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_4DE7BB
		mov	eax, [ebp+14h]
		xor	edx, edx
		mov	[eax], edx

loc_4DE7BB:				; CODE XREF: .text:004DE7B2j
		xor	eax, eax

loc_4DE7BD:				; CODE XREF: .text:004DE730j
					; .text:004DE799j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		