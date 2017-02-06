.code

; ---------------------------------------------------------------------------
; Exported entry  58. _Setstatus
; Exported entry 717. Setstatus

; t_status __cdecl Setstatus(t_status newstatus)
		public Setstatus
Setstatus:				; CODE XREF: .text:004101B3p
					; .text:0044A06Cp ...
		push	ebp		; _Setstatus
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		cmp	dword_57FE88, 0
		push	ebx
		push	esi
		push	edi
		mov	esi, offset run
		mov	ebx, [ebp+8]
		jz	short loc_409EF2
		cmp	ebx, [esi]
		jz	short loc_409EF2
		mov	eax, ebx
		sub	eax, 12h
		jz	short loc_409E9E
		dec	eax
		jz	short loc_409ECF
		jmp	short loc_409EF2
; ---------------------------------------------------------------------------

loc_409E9E:				; CODE XREF: .text:00409E97j
		mov	eax, [esi]
		cmp	eax, 5
		jz	short loc_409EF2
		cmp	eax, 6
		jz	short loc_409EF2
		push	2
		call	loc_4D2FEC
		pop	ecx
		push	3000h
		push	offset aProcessPaused ;	"Process paused"
		call	_T
		pop	ecx
		push	eax
		push	2
		call	loc_4D21C8
		add	esp, 0Ch
		jmp	short loc_409EF2
; ---------------------------------------------------------------------------

loc_409ECF:				; CODE XREF: .text:00409E9Aj
		push	2
		call	loc_4D2FEC
		pop	ecx
		push	3000h
		push	offset aProcessTermina ; "Process terminated"
		call	_T
		pop	ecx
		push	eax
		push	2
		call	loc_4D21C8
		add	esp, 0Ch

loc_409EF2:				; CODE XREF: .text:00409E8Cj
					; .text:00409E90j ...
		cmp	dword_57FE98, 0
		jz	short loc_409F11
		cmp	ebx, 12h
		jz	short loc_409F05
		cmp	ebx, 13h
		jnz	short loc_409F11

loc_409F05:				; CODE XREF: .text:00409EFEj
		mov	edx, hwollymain
		push	edx		; hWnd
		call	BringWindowToTop

loc_409F11:				; CODE XREF: .text:00409EF9j
					; .text:00409F03j
		mov	eax, [esi]
		cmp	ebx, eax
		jnz	short loc_409F1F
		test	ebx, ebx
		jnz	loc_40A009

loc_409F1F:				; CODE XREF: .text:00409F15j
		mov	edi, eax
		mov	[esi], ebx
		cmp	ebx, 9
		jz	short loc_409F32
		cmp	ebx, 0Ah
		jz	short loc_409F32
		cmp	ebx, 11h
		jnz	short loc_409F41

loc_409F32:				; CODE XREF: .text:00409F26j
					; .text:00409F2Bj
		call	GetTickCount
		mov	[esi+8], eax
		xor	eax, eax
		mov	[esi+0Ch], eax
		jmp	short loc_409F6A
; ---------------------------------------------------------------------------

loc_409F41:				; CODE XREF: .text:00409F30j
		cmp	ebx, 12h
		jnz	short loc_409F6A
		call	loc_44F8E8
		push	1
		call	loc_44FA44
		pop	ecx		; int
		push	1		; int
		call	loc_46FADC
		pop	ecx
		call	Listmemory
		call	loc_4D56BC
		call	loc_4DD068

loc_409F6A:				; CODE XREF: .text:00409F3Fj
					; .text:00409F44j
		call	loc_477650
		cmp	ebx, 12h
		jz	short loc_409F79
		cmp	ebx, 13h
		jnz	short loc_409FD3

loc_409F79:				; CODE XREF: .text:00409F72j
		call	loc_497C70
		mov	edx, hwollymain
		push	edx		; hWnd
		call	IsIconic
		test	eax, eax
		jz	short loc_409F9A
		mov	ecx, hwollymain
		push	ecx		; hWnd
		call	OpenIcon

loc_409F9A:				; CODE XREF: .text:00409F8Cj
		mov	eax, hwollymain
		push	eax		; hWnd
		call	SetForegroundWindow
		mov	edx, [esi+2Ch]
		push	edx		; threadid
		call	Findthread
		pop	ecx
		test	eax, eax
		jz	short loc_409FB9
		cmp	dword ptr [eax+0Ch], 0
		jnz	short loc_409FC2

loc_409FB9:				; CODE XREF: .text:00409FB1j
		call	Getcputhreadid
		mov	esi, eax
		jmp	short loc_409FC5
; ---------------------------------------------------------------------------

loc_409FC2:				; CODE XREF: .text:00409FB7j
		mov	esi, [esi+2Ch]

loc_409FC5:				; CODE XREF: .text:00409FC0j
		push	esi
		call	loc_4D7BF0
		pop	ecx
		push	esi
		call	loc_4ADE1C
		pop	ecx

loc_409FD3:				; CODE XREF: .text:00409F77j
		cmp	rundll,	0
		jz	short loc_409FFD
		cmp	ebx, 13h
		jz	short loc_409FE6
		cmp	ebx, 14h
		jnz	short loc_409FFD

loc_409FE6:				; CODE XREF: .text:00409FDFj
		mov	eax, hDlg
		test	eax, eax
		jz	short loc_409FFD
		push	eax		; hWnd
		call	DestroyWindow
		xor	edx, edx
		mov	hDlg, edx

loc_409FFD:				; CODE XREF: .text:00409FDAj
					; .text:00409FE4j ...
		cmp	edi, 12h
		jnz	short loc_40A012
		call	Redrawcpudisasm
		jmp	short loc_40A012
; ---------------------------------------------------------------------------

loc_40A009:				; CODE XREF: .text:00409F19j
		cmp	rundll,	0
		jz	short loc_40A038

loc_40A012:				; CODE XREF: .text:0040A000j
					; .text:0040A007j
		push	0
		lea	ecx, [ebp-10h]
		push	ecx
		push	0
		push	0
		push	0
		call	loc_4087E8
		add	esp, 14h
		push	0		; bErase
		lea	eax, [ebp-10h]
		push	eax		; lpRect
		mov	edx, hwollymain
		push	edx		; hWnd
		call	InvalidateRect

loc_40A038:				; CODE XREF: .text:0040A010j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_40A040:				; CODE XREF: .text:0040A3B8p
					; .text:0040A66Ep
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFE0h
		cmp	g_IsShowtoolbar, 0
		push	ebx
		push	esi
		push	edi
		lea	esi, [ebp-20h]
		lea	ebx, [ebp-10h]
		jnz	short loc_40A05F
		xor	eax, eax
		jmp	loc_40A169
; ---------------------------------------------------------------------------

loc_40A05F:				; CODE XREF: .text:0040A056j
		push	esi
		push	0
		push	0
		push	0
		push	0
		call	loc_4087E8
		add	esp, 14h
		cmp	g_IsShowtoolbar, 1
		jnz	short loc_40A08A
		add	dword ptr [esi], 2
		sub	dword ptr [esi+8], 2
		add	dword ptr [esi+4], 2
		sub	dword ptr [esi+0Ch], 2
		jmp	short loc_40A099
; ---------------------------------------------------------------------------

loc_40A08A:				; CODE XREF: .text:0040A077j
		add	dword ptr [esi], 3
		sub	dword ptr [esi+8], 3
		add	dword ptr [esi+4], 2
		sub	dword ptr [esi+0Ch], 2

loc_40A099:				; CODE XREF: .text:0040A088j
		mov	edx, [ebp+8]
		cmp	edx, [esi]
		jl	short loc_40A0B8
		mov	ecx, [ebp+8]
		cmp	ecx, [esi+8]
		jge	short loc_40A0B8
		mov	eax, [ebp+0Ch]
		cmp	eax, [esi+4]
		jl	short loc_40A0B8
		mov	edx, [ebp+0Ch]
		cmp	edx, [esi+0Ch]
		jl	short loc_40A0BF

loc_40A0B8:				; CODE XREF: .text:0040A09Ej
					; .text:0040A0A6j ...
		xor	eax, eax
		jmp	loc_40A169
; ---------------------------------------------------------------------------

loc_40A0BF:				; CODE XREF: .text:0040A0B6j
		push	esi
		mov	edi, ebx
		mov	ecx, 4
		mov	edx, offset stru_50DE84
		rep movsd
		pop	esi
		jmp	loc_40A15D
; ---------------------------------------------------------------------------

loc_40A0D4:				; CODE XREF: .text:0040A161j
		cmp	g_IsShowtoolbar, 1
		jnz	short loc_40A0FF
		mov	ecx, [ebx]
		add	ecx, 2
		mov	[ebx+8], ecx
		jmp	short loc_40A0EE
; ---------------------------------------------------------------------------

loc_40A0E7:				; CODE XREF: .text:0040A0F2j
		add	dword ptr [ebx+8], 8
		add	eax, 2

loc_40A0EE:				; CODE XREF: .text:0040A0E5j
		cmp	word ptr [eax],	7Ch
		jz	short loc_40A0E7
		mov	eax, [ebx+8]
		mov	[ebx], eax
		add	dword ptr [ebx+8], 12h
		jmp	short loc_40A121
; ---------------------------------------------------------------------------

loc_40A0FF:				; CODE XREF: .text:0040A0DBj
		mov	ecx, [ebx+4]
		add	ecx, 2
		mov	[ebx+0Ch], ecx
		jmp	short loc_40A111
; ---------------------------------------------------------------------------

loc_40A10A:				; CODE XREF: .text:0040A115j
		add	dword ptr [ebx+0Ch], 8
		add	eax, 2

loc_40A111:				; CODE XREF: .text:0040A108j
		cmp	word ptr [eax],	7Ch
		jz	short loc_40A10A
		mov	eax, [ebx+0Ch]
		mov	[ebx+4], eax
		add	dword ptr [ebx+0Ch], 12h

loc_40A121:				; CODE XREF: .text:0040A0FDj
		mov	eax, [ebp+8]
		cmp	eax, [ebx]
		jl	short loc_40A144
		mov	ecx, [ebp+8]
		cmp	ecx, [ebx+8]
		jge	short loc_40A144
		mov	eax, [ebp+0Ch]
		cmp	eax, [ebx+4]
		jl	short loc_40A144
		mov	ecx, [ebp+0Ch]
		cmp	ecx, [ebx+0Ch]
		jge	short loc_40A144
		mov	eax, edx
		jmp	short loc_40A169
; ---------------------------------------------------------------------------

loc_40A144:				; CODE XREF: .text:0040A126j
					; .text:0040A12Ej ...
		cmp	g_IsShowtoolbar, 1
		jnz	short loc_40A154
		mov	ecx, [ebx+8]
		mov	[ebx], ecx
		jmp	short loc_40A15A
; ---------------------------------------------------------------------------

loc_40A154:				; CODE XREF: .text:0040A14Bj
		mov	eax, [ebx+0Ch]
		mov	[ebx+4], eax

loc_40A15A:				; CODE XREF: .text:0040A152j
		add	edx, 18h

loc_40A15D:				; CODE XREF: .text:0040A0CFj
		mov	eax, [edx]
		test	eax, eax
		jnz	loc_40A0D4
		xor	eax, eax

loc_40A169:				; CODE XREF: .text:0040A05Aj
					; .text:0040A0BAj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_40A170:				; CODE XREF: .text:0044A07Ap
					; .text:0044AFB6p ...
		push	ebp
		mov	ebp, esp
		push	offset stru_50DDAC
		call	loc_4257CC
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_40A180:				; CODE XREF: .text:0040B8F4p
					; .text:004251F6p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		lea	eax, [ebp-10h]
		push	eax
		push	0
		push	0
		push	0
		push	0
		call	loc_4087E8
		add	esp, 14h
		lea	edx, [ebp-10h]
		push	edx
		push	offset stru_50DE84
		call	loc_425A0C
		add	esp, 8
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __stdcall	loc_40A1B0(HWND	hWnd, UINT uMsg, WPARAM	wParam,	LPARAM lParam)
loc_40A1B0:				; CODE XREF: .text:0040A644p
					; DATA XREF: .text:0040F718o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF004h
		push	eax
		add	esp, 0FFFFFCA4h
		push	ebx
		push	esi
		push	edi		; arglist
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+0Ch]
		mov	eax, ebx
		cmp	eax, 112h
		jg	short loc_40A231
		jz	loc_40AA01
		cmp	eax, 10h
		jg	short loc_40A208
		jz	loc_40A356
		dec	eax
		jz	loc_40A296
		dec	eax
		jz	loc_40A2A9
		sub	eax, 3
		jz	loc_40A750
		sub	eax, 0Ah
		jz	loc_40B950
		jmp	loc_40C673
; ---------------------------------------------------------------------------

loc_40A208:				; CODE XREF: .text:0040A1DBj
		sub	eax, 14h
		jz	loc_40B946
		dec	eax
		jz	loc_40A827
		sub	eax, 0Fh
		jz	loc_40A6E2
		sub	eax, 0EDh
		jz	loc_40AA3A
		jmp	loc_40C673
; ---------------------------------------------------------------------------

loc_40A231:				; CODE XREF: .text:0040A1D0j
		cmp	eax, 201h
		jg	short loc_40A26B
		jz	loc_40A3A5
		sub	eax, 113h
		jz	loc_40A988
		sub	eax, 3
		jz	loc_40A84B
		sub	eax, 9		; int
		jz	loc_40A85B
		sub	eax, 0E1h
		jz	loc_40A64E
		jmp	loc_40C673
; ---------------------------------------------------------------------------

loc_40A26B:				; CODE XREF: .text:0040A236j
		sub	eax, 202h
		jz	loc_40A5B7
		dec	eax
		jz	loc_40A3A5
		sub	eax, 30h
		jz	loc_40A86D
		sub	eax, 25Ah
		jz	loc_40C572
		jmp	loc_40C673
; ---------------------------------------------------------------------------

loc_40A296:				; CODE XREF: .text:0040A1E4j
		push	1		; BOOL
		mov	edx, hwollymain
		push	edx		; HWND
		call	DragAcceptFiles
		jmp	loc_40C6A5
; ---------------------------------------------------------------------------

loc_40A2A9:				; CODE XREF: .text:0040A1EBj
		call	InSendMessage
		test	eax, eax
		jz	short loc_40A2D8
		cmp	dword_57FE80, 0
		jz	short loc_40A2D8
		push	offset aWm_destroyFrom ; "WM_DESTROY from different process ignor"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_40C6A5
; ---------------------------------------------------------------------------

loc_40A2D8:				; CODE XREF: .text:0040A2B0j
					; .text:0040A2B9j
		mov	dword ptr [ebp-131Ch], 2Ch
		lea	ecx, [ebp-131Ch]
		push	ecx		; lpwndpl
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	GetWindowPlacement
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	IsZoomed
		push	eax
		mov	ecx, [ebp-12F4h]
		mov	esi, [ebp-12FCh]
		sub	ecx, esi
		push	ecx
		mov	eax, [ebp-12F8h]
		mov	ebx, [ebp-1300h]
		sub	eax, ebx
		push	eax
		push	esi
		push	ebx		; arglist
		push	offset aIIIII	; "%i,%i,%i,%i,%i"
		push	offset aPlacement ; "Placement"
		push	offset aOllydbg	; "OllyDbg"
		push	0		; file
		call	Writetoini
		add	esp, 24h
		push	0		; BOOL
		mov	eax, hwollymain
		push	eax		; HWND
		call	DragAcceptFiles
		xor	edx, edx
		push	0		; nExitCode
		mov	hwollymain, edx
		call	PostQuitMessage
		jmp	loc_40C6A5
; ---------------------------------------------------------------------------

loc_40A356:				; CODE XREF: .text:0040A1DDj
		cmp	dword_57FE80, 0
		jnz	short loc_40A37B
		push	0		; lParam
		mov	ecx, g_cookie
		push	ecx		; wParam
		push	48Dh		; Msg
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	PostMessageW
		jmp	loc_40C6A5
; ---------------------------------------------------------------------------

loc_40A37B:				; CODE XREF: .text:0040A35Dj
		call	InSendMessage
		test	eax, eax
		jz	loc_40C6A5
		push	offset aWm_closeFromDi ; "WM_CLOSE from	different process ignored"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch
		jmp	loc_40C6A5
; ---------------------------------------------------------------------------

loc_40A3A5:				; CODE XREF: .text:0040A238j
					; .text:0040A277j
		mov	edx, esi
		shr	edx, 10h
		movzx	ecx, dx
		push	ecx
		mov	eax, esi
		and	ax, 0FFFFh
		movzx	edx, ax
		push	edx
		call	loc_40A040
		add	esp, 8
		mov	edi, eax
		mov	dword_5D85D8, edi
		test	edi, edi
		jz	short loc_40A442
		cmp	dword ptr [edi+0Ch], 0
		jnz	short loc_40A3D9
		mov	eax, 1
		jmp	short loc_40A3E9
; ---------------------------------------------------------------------------

loc_40A3D9:				; CODE XREF: .text:0040A3D0j
		push	0
		mov	edx, [edi+14h]
		push	edx
		push	0
		push	0
		call	dword ptr [edi+0Ch]
		add	esp, 10h

loc_40A3E9:				; CODE XREF: .text:0040A3D7j
		cmp	eax, 1
		jz	short loc_40A401
		cmp	eax, 2
		jz	short loc_40A401
		cmp	eax, 3
		jz	short loc_40A401
		cmp	eax, 5
		jnz	loc_40A595

loc_40A401:				; CODE XREF: .text:0040A3ECj
					; .text:0040A3F1j ...
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	SetCapture
		mov	dword_5D85DC, 1
		lea	eax, [ebp-12F0h]
		push	eax
		push	0
		push	0
		push	0
		push	0
		call	loc_4087E8
		add	esp, 14h
		lea	edx, [ebp-12F0h]
		push	0		; bErase
		push	edx		; lpRect
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	InvalidateRect
		jmp	loc_40A595
; ---------------------------------------------------------------------------

loc_40A442:				; CODE XREF: .text:0040A3CAj
		cmp	dword_57FE88, 0
		jz	loc_40A595
		lea	eax, [ebp-12E0h]
		push	0
		push	eax
		lea	edx, [ebp-12C0h]
		push	0
		push	edx
		push	0
		call	loc_4087E8
		add	esp, 14h
		mov	eax, esi
		and	ax, 0FFFFh
		movzx	eax, ax
		cmp	eax, [ebp-12C0h]
		jl	loc_40A536
		cmp	eax, [ebp-12B8h]
		jge	loc_40A536
		mov	edx, esi
		shr	edx, 10h
		movzx	ecx, dx
		cmp	ecx, [ebp-12BCh]
		jl	loc_40A536
		mov	eax, esi
		shr	eax, 10h
		movzx	edx, ax
		cmp	edx, [ebp-12B4h]
		jge	loc_40A536
		push	0
		call	loc_4D2FEC
		pop	ecx
		cmp	word_5D81D4, 0
		jz	short loc_40A4DC
		push	0
		push	offset word_5D81D4
		push	2
		call	loc_4D21C8
		add	esp, 0Ch
		jmp	loc_40A595
; ---------------------------------------------------------------------------

loc_40A4DC:				; CODE XREF: .text:0040A4C4j
		cmp	word_5D7FD0, 0
		jz	short loc_40A4FC
		push	0
		push	offset word_5D7FD0
		push	2
		call	loc_4D21C8
		add	esp, 0Ch
		jmp	loc_40A595
; ---------------------------------------------------------------------------

loc_40A4FC:				; CODE XREF: .text:0040A4E4j
		cmp	word_5D7DD0, 0
		jz	short loc_40A519
		push	0
		push	offset word_5D7DD0
		push	2
		call	loc_4D21C8
		add	esp, 0Ch
		jmp	short loc_40A595
; ---------------------------------------------------------------------------

loc_40A519:				; CODE XREF: .text:0040A504j
		cmp	dst, 0
		jz	short loc_40A595
		push	0
		push	offset dst
		push	2
		call	loc_4D21C8
		add	esp, 0Ch
		jmp	short loc_40A595
; ---------------------------------------------------------------------------

loc_40A536:				; CODE XREF: .text:0040A47Aj
					; .text:0040A486j ...
		mov	eax, esi
		and	ax, 0FFFFh
		movzx	eax, ax
		cmp	eax, [ebp-12E0h]
		jl	short loc_40A595
		cmp	eax, [ebp-12D8h]
		jge	short loc_40A595
		mov	edx, esi
		shr	edx, 10h
		movzx	ecx, dx
		cmp	ecx, [ebp-12DCh]
		jl	short loc_40A595
		mov	eax, esi
		shr	eax, 10h
		movzx	edx, ax
		cmp	edx, [ebp-12D4h]
		jge	short loc_40A595
		cmp	word_5D83D8, 0
		jz	short loc_40A595
		push	0
		call	loc_4D2FEC
		pop	ecx
		push	3000h
		push	offset word_5D83D8
		push	2
		call	loc_4D21C8
		add	esp, 0Ch

loc_40A595:				; CODE XREF: .text:0040A3FBj
					; .text:0040A43Dj ...
		mov	eax, hwclient
		test	eax, eax
		jz	loc_40C6A5
		push	esi		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	ebx		; uMsg
		push	eax		; hWndMDIClient
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	DefFrameProcW
		jmp	loc_40C6A7
; ---------------------------------------------------------------------------

loc_40A5B7:				; CODE XREF: .text:0040A270j
		call	GetCapture
		cmp	eax, [ebp+8]
		jnz	loc_40C6A5
		call	ReleaseCapture
		cmp	dword_5D85DC, 0
		jz	short loc_40A5DB
		mov	edi, dword_5D85D8
		jmp	short loc_40A5DD
; ---------------------------------------------------------------------------

loc_40A5DB:				; CODE XREF: .text:0040A5D1j
		xor	edi, edi

loc_40A5DD:				; CODE XREF: .text:0040A5D9j
		xor	eax, eax
		mov	dword_5D85D8, eax
		xor	edx, edx
		mov	dword_5D85DC, edx
		lea	ecx, [ebp-12F0h]
		push	ecx
		push	0
		push	0
		push	0
		push	0
		call	loc_4087E8
		add	esp, 14h
		lea	eax, [ebp-12F0h]
		push	0		; bErase
		push	eax		; lpRect
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	InvalidateRect
		push	101h		; flags
		lea	ecx, [ebp-12F0h]
		push	0		; hrgnUpdate
		push	ecx		; lprcUpdate
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	RedrawWindow
		test	edi, edi
		jz	loc_40C6A5
		push	0		; lParam
		movzx	edx, word ptr [edi+14h]
		push	edx		; wParam
		push	111h		; uMsg
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	loc_40A1B0
		jmp	loc_40C6A5
; ---------------------------------------------------------------------------

loc_40A64E:				; CODE XREF: .text:0040A260j
		call	GetCapture
		cmp	eax, [ebp+8]
		jnz	loc_40C6A5
		mov	eax, esi
		shr	eax, 10h
		movzx	edx, ax
		push	edx
		and	si, 0FFFFh
		movzx	ecx, si
		push	ecx
		call	loc_40A040
		add	esp, 8
		mov	edi, eax
		cmp	edi, dword_5D85D8
		jnz	short loc_40A689
		cmp	dword_5D85DC, 0
		jz	short loc_40A6A2

loc_40A689:				; CODE XREF: .text:0040A67Ej
		cmp	edi, dword_5D85D8
		jz	loc_40C6A5
		cmp	dword_5D85DC, 0
		jz	loc_40C6A5

loc_40A6A2:				; CODE XREF: .text:0040A687j
		cmp	dword_5D85DC, 0
		lea	edx, [ebp-12F0h]
		setz	al
		push	edx
		push	0
		push	0
		and	eax, 1
		push	0
		push	0
		mov	dword_5D85DC, eax
		call	loc_4087E8
		add	esp, 14h
		lea	ecx, [ebp-12F0h]
		push	0		; bErase
		push	ecx		; lpRect
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	InvalidateRect
		jmp	loc_40C6A5
; ---------------------------------------------------------------------------

loc_40A6E2:				; CODE XREF: .text:0040A21Bj
		mov	ebx, esi
		lea	eax, [ebp-12A0h]
		push	eax		; lpRect
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	GetWindowRect
		mov	ecx, [ebp-1294h]
		sub	ecx, [ebp-129Ch]
		jz	loc_40C6A5
		push	0
		push	0
		push	0
		push	0
		lea	eax, [ebp-12B0h]
		push	eax
		call	loc_4087E8
		add	esp, 14h
		mov	edx, [ebp-1294h]
		sub	edx, [ebp-129Ch]
		sub	edx, [ebp-12A4h]
		add	edx, [ebp-12ACh]
		mov	[ebx+1Ch], edx
		cmp	dword_57FE64, 2
		jnz	loc_40C6A5
		mov	ecx, [ebx+1Ch]
		mov	[ebx+24h], ecx
		jmp	loc_40C6A5
; ---------------------------------------------------------------------------

loc_40A750:				; CODE XREF: .text:0040A1F4j
		lea	eax, [ebp-12F0h]
		lea	edx, [ebp-12B0h]
		push	eax
		push	0
		push	0
		push	0
		push	edx
		call	loc_4087E8
		add	esp, 14h
		mov	ecx, [ebp-12A4h]
		cmp	ecx, [ebp-12ACh]
		jge	short loc_40A7C9
		lea	eax, [ebp-12A0h]
		push	eax		; lpRect
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	GetWindowRect
		push	1		; bRepaint
		mov	ecx, [ebp-1294h]
		sub	ecx, [ebp-129Ch]
		add	ecx, [ebp-12ACh]
		sub	ecx, [ebp-12A4h]
		push	ecx		; nHeight
		mov	eax, [ebp-1298h]
		sub	eax, [ebp-12A0h]
		push	eax		; nWidth
		mov	edx, [ebp-129Ch]
		push	edx		; Y
		mov	ecx, [ebp-12A0h]
		push	ecx		; X
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	MoveWindow

loc_40A7C9:				; CODE XREF: .text:0040A778j
		cmp	hwclient, 0
		jz	short loc_40A80C
		push	1		; bRepaint
		mov	edx, [ebp-12A4h]
		sub	edx, [ebp-12ACh]
		add	edx, 0FFFFFFFDh
		push	edx		; nHeight
		mov	ecx, [ebp-12A8h]
		sub	ecx, [ebp-12B0h]
		push	ecx		; nWidth
		mov	eax, [ebp-12ACh]
		inc	eax
		push	eax		; Y
		mov	edx, [ebp-12B0h]
		push	edx		; X
		mov	ecx, hwclient
		push	ecx		; hWnd
		call	MoveWindow

loc_40A80C:				; CODE XREF: .text:0040A7D0j
		lea	eax, [ebp-12F0h]
		push	eax
		push	offset stru_50DE84
		call	loc_425A0C
		add	esp, 8
		xor	eax, eax
		jmp	loc_40C6A7
; ---------------------------------------------------------------------------

loc_40A827:				; CODE XREF: .text:0040A212j
		call	loc_4115B4
		call	loc_411400
		push	81h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	edx, hwollymain
		push	edx		; hWnd
		call	RedrawWindow
		jmp	loc_40C6A5
; ---------------------------------------------------------------------------

loc_40A84B:				; CODE XREF: .text:0040A24Cj
		push	offset stru_50DDAC
		call	loc_4257CC
		pop	ecx
		jmp	loc_40C6A5
; ---------------------------------------------------------------------------

loc_40A85B:				; CODE XREF: .text:0040A255j
		push	esi		; HMENU
		mov	ecx, [ebp+10h]	; int
		push	ecx		; int
		call	loc_4254A8
		add	esp, 8
		jmp	loc_40C6A5
; ---------------------------------------------------------------------------

loc_40A86D:				; CODE XREF: .text:0040A280j
		push	104h		; UINT
		lea	eax, [ebp-238h]
		push	eax		; LPWSTR
		push	0		; UINT
		mov	ebx, [ebp+10h]
		push	ebx		; HDROP
		call	DragQueryFileW
		mov	[ebp-4], eax
		push	ebx		; HDROP
		call	DragFinish
		cmp	dword ptr [ebp-4], 0
		jz	loc_40C6A5
		lea	eax, [ebp-438h]
		lea	edx, [ebp-238h]
		push	eax		; ext
		push	0		; _name
		push	0		; dir
		push	0		; drive
		push	edx		; path
		call	__wfnsplit
		add	esp, 14h
		push	offset a_exe_1	; s2
		lea	ecx, [ebp-438h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_40A913
		push	offset a_dll	; ".dll"
		lea	eax, [ebp-438h]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_40A913
		push	offset a_lnk	; ".lnk"
		lea	edx, [ebp-438h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_40A913
		push	offset a_pif	; ".pif"
		lea	ecx, [ebp-438h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_40A92B

loc_40A913:				; CODE XREF: .text:0040A8C9j
					; .text:0040A8E1j ...
		push	0		; int
		push	0		; int
		lea	eax, [ebp-238h]	; int
		push	eax		; arglist
		call	loc_44A400
		add	esp, 0Ch
		jmp	loc_40C6A5
; ---------------------------------------------------------------------------

loc_40A92B:				; CODE XREF: .text:0040A911j
		push	offset a_txt_2	; ".txt"
		lea	edx, [ebp-438h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_40A95B
		push	offset a_ini	; ".ini"
		lea	ecx, [ebp-438h]
		push	ecx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_40A962

loc_40A95B:				; CODE XREF: .text:0040A941j
		mov	eax, 34001h
		jmp	short loc_40A967
; ---------------------------------------------------------------------------

loc_40A962:				; CODE XREF: .text:0040A959j
		mov	eax, 11001h

loc_40A967:				; CODE XREF: .text:0040A960j
		push	0		; strname
		push	0		; sel1
		push	0		; sel0
		push	eax		; dumptype
		lea	edx, [ebp-238h]
		push	edx		; path
		push	0		; size
		push	0		; base
		push	0		; _title
		call	Createdumpwindow
		add	esp, 20h
		jmp	loc_40C6A5
; ---------------------------------------------------------------------------

loc_40A988:				; CODE XREF: .text:0040A243j
		mov	dword ptr [ebp-2Ch], 8
		mov	ecx, dword_57FE5C
		cmp	ecx, [ebp-2Ch]
		jge	short loc_40A9A1
		mov	eax, offset dword_57FE5C
		jmp	short loc_40A9A4
; ---------------------------------------------------------------------------

loc_40A9A1:				; CODE XREF: .text:0040A998j
		lea	eax, [ebp-2Ch]

loc_40A9A4:				; CODE XREF: .text:0040A99Fj
		xor	edx, edx
		mov	[ebp-30h], edx
		mov	ecx, [eax]
		cmp	ecx, [ebp-30h]
		jge	short loc_40A9B5
		lea	edx, [ebp-30h]
		jmp	short loc_40A9B7
; ---------------------------------------------------------------------------

loc_40A9B5:				; CODE XREF: .text:0040A9AEj
		mov	edx, eax

loc_40A9B7:				; CODE XREF: .text:0040A9B3j
		mov	eax, [edx]
		mov	dword_57FE5C, eax
		call	GetTickCount
		sub	eax, dword_5D81D0
		mov	ecx, dword_57FE5C
		add	ecx, 2
		mov	edx, ecx
		add	edx, edx
		lea	edx, [edx+edx*4]
		lea	edx, [edx+edx*4]
		lea	edx, [edx+edx*4]
		cmp	eax, edx
		jb	loc_40C6A5
		mov	word_5D7FD0, 0
		xor	eax, eax
		mov	dword_5D81D0, eax
		call	loc_409AAC
		jmp	loc_40C6A5
; ---------------------------------------------------------------------------

loc_40AA01:				; CODE XREF: .text:0040A1D2j
		cmp	dword ptr [ebp+10h], 0F060h
		jnz	short loc_40AA26
		push	0		; lParam
		mov	ecx, g_cookie
		push	ecx		; wParam
		push	48Dh		; Msg
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	PostMessageW
		jmp	loc_40C6A5
; ---------------------------------------------------------------------------

loc_40AA26:				; CODE XREF: .text:0040AA08j
		push	esi		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	ebx		; Msg
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	DefWindowProcW
		jmp	loc_40C6A7
; ---------------------------------------------------------------------------

loc_40AA3A:				; CODE XREF: .text:0040A226j
		mov	eax, [ebp+10h]
		shr	eax, 10h	; int
		test	ax, ax
		jnz	loc_40B91E
		mov	dx, [ebp+10h]
		and	dx, 0FFFFh	; int
		movzx	ecx, dx
		cmp	ecx, 904h
		jg	loc_40AB86
		jz	loc_40B202
		cmp	ecx, 8A3h
		jg	loc_40AB14
		jz	loc_40B0C6
		cmp	ecx, 89Bh
		jg	short loc_40AAE2
		jz	loc_40B008
		cmp	ecx, 83Ah
		jg	short loc_40AABE
		jz	loc_40AE5E
		sub	ecx, 835h
		jz	loc_40ACCC
		dec	ecx
		jz	loc_40AD9B
		dec	ecx
		jz	loc_40AE4A
		dec	ecx
		sub	ecx, 2
		jb	loc_40AE54
		jmp	loc_40B848	; jumptable 0040AAF1 default case
; ---------------------------------------------------------------------------

loc_40AABE:				; CODE XREF: .text:0040AA8Dj
		add	ecx, 0FFFFF7C2h
		sub	ecx, 0Ah
		jb	loc_40AE7C
		sub	ecx, 51h
		jz	loc_40AFEE
		dec	ecx
		jz	loc_40AFFB
		jmp	loc_40B848	; jumptable 0040AAF1 default case
; ---------------------------------------------------------------------------

loc_40AAE2:				; CODE XREF: .text:0040AA7Fj
		add	ecx, 0FFFFF764h	; switch 7 cases
		cmp	ecx, 6
		ja	loc_40B848	; jumptable 0040AAF1 default case
		jmp	ds:off_40AAF8[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
off_40AAF8	dd offset loc_40B015	; DATA XREF: .text:0040AAF1r
		dd offset loc_40B022	; jump table for switch	statement
		dd offset loc_40B02F
		dd offset loc_40B03C
		dd offset loc_40B09F
		dd offset loc_40B0AC
		dd offset loc_40B0B9
; ---------------------------------------------------------------------------

loc_40AB14:				; CODE XREF: .text:0040AA6Dj
		cmp	ecx, 8ABh
		jg	short loc_40AB54
		jz	loc_40B166
		add	ecx, 0FFFFF75Ch	; switch 7 cases
		cmp	ecx, 6
		ja	loc_40B848	; jumptable 0040AAF1 default case
		jmp	ds:off_40AB38[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
off_40AB38	dd offset loc_40B049	; DATA XREF: .text:0040AB31r
		dd offset loc_40B056	; jump table for switch	statement
		dd offset loc_40B063
		dd offset loc_40B070
		dd offset loc_40B07D
		dd offset loc_40B092
		dd offset loc_40B0D3
; ---------------------------------------------------------------------------

loc_40AB54:				; CODE XREF: .text:0040AB1Aj
		add	ecx, 0FFFFF703h	; switch 7 cases
		cmp	ecx, 6
		ja	loc_40B848	; jumptable 0040AAF1 default case
		jmp	ds:off_40AB6A[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
off_40AB6A	dd offset loc_40B192	; DATA XREF: .text:0040AB63r
		dd offset loc_40B1A3	; jump table for switch	statement
		dd offset loc_40B1AD
		dd offset loc_40B1BE
		dd offset loc_40B1CF
		dd offset loc_40B1E0
		dd offset loc_40B1F1
; ---------------------------------------------------------------------------

loc_40AB86:				; CODE XREF: .text:0040AA5Bj
		cmp	ecx, 9C5h
		jg	loc_40AC24
		jz	loc_40B4A3
		cmp	ecx, 964h
		jg	short loc_40ABF2
		jz	loc_40B318
		cmp	ecx, 908h
		jg	short loc_40ABD3
		jz	loc_40B2E8
		sub	ecx, 905h
		jz	loc_40AE7C
		dec	ecx		; int
		jz	loc_40B213
		dec	ecx
		jz	loc_40B253
		jmp	loc_40B848	; jumptable 0040AAF1 default case
; ---------------------------------------------------------------------------

loc_40ABD3:				; CODE XREF: .text:0040ABACj
		sub	ecx, 961h
		jz	loc_40B2F2
		dec	ecx
		jz	loc_40B494
		dec	ecx
		jz	loc_40B307
		jmp	loc_40B848	; jumptable 0040AAF1 default case
; ---------------------------------------------------------------------------

loc_40ABF2:				; CODE XREF: .text:0040AB9Ej
		add	ecx, 0FFFFF69Bh	; switch 7 cases
		cmp	ecx, 6
		ja	loc_40B848	; jumptable 0040AAF1 default case
		jmp	ds:off_40AC08[ecx*4] ; switch jump
; ---------------------------------------------------------------------------
off_40AC08	dd offset loc_40B329	; DATA XREF: .text:0040AC01r
		dd offset loc_40B33A	; jump table for switch	statement
		dd offset loc_40B34B
		dd offset loc_40B374
		dd offset loc_40B3F1
		dd offset loc_40B45D
		dd offset loc_40B478
; ---------------------------------------------------------------------------

loc_40AC24:				; CODE XREF: .text:0040AB8Cj
		cmp	ecx, 0A2Ch
		jg	short loc_40AC7E
		jz	loc_40B69B
		cmp	ecx, 9C9h
		jg	short loc_40AC5F
		jz	loc_40B5FE
		sub	ecx, 9C6h
		jz	loc_40B4AD
		dec	ecx
		jz	loc_40B555
		dec	ecx
		jz	loc_40B5F1
		jmp	loc_40B848	; jumptable 0040AAF1 default case
; ---------------------------------------------------------------------------

loc_40AC5F:				; CODE XREF: .text:0040AC38j
		sub	ecx, 0A29h
		jz	loc_40B608
		dec	ecx
		jz	loc_40B64E
		dec	ecx
		jz	loc_40B674
		jmp	loc_40B848	; jumptable 0040AAF1 default case
; ---------------------------------------------------------------------------

loc_40AC7E:				; CODE XREF: .text:0040AC2Aj
		cmp	ecx, 0A30h
		jg	short loc_40ACAB
		jz	loc_40B7E7
		sub	ecx, 0A2Dh
		jz	loc_40B6C2
		dec	ecx
		jz	loc_40B6E8
		dec	ecx
		jz	loc_40B720
		jmp	loc_40B848	; jumptable 0040AAF1 default case
; ---------------------------------------------------------------------------

loc_40ACAB:				; CODE XREF: .text:0040AC84j
		sub	ecx, 0A31h
		jz	loc_40B80D
		sub	ecx, 5Ch
		jz	loc_40B834
		dec	ecx
		jz	loc_40B83E
		jmp	loc_40B848	; jumptable 0040AAF1 default case
; ---------------------------------------------------------------------------

loc_40ACCC:				; CODE XREF: .text:0040AA9Bj
		push	$CTW0("") ; defname
		lea	eax, [ebp-238h]
		push	eax		; _name
		push	offset key	; "Executable[0]"
		call	Filefromini
		add	esp, 0Ch
		mov	word ptr [ebp-0C78h], 0
		push	400h		; length
		lea	edx, [ebp-0C78h]
		push	edx		; s
		push	offset aArguments0_0 ; "Arguments[0]"
		push	offset _section	; "History"
		call	Stringfromini
		add	esp, 10h
		mov	word ptr [ebp-0E80h], 0
		push	104h		; length
		lea	ecx, [ebp-0E80h]
		push	ecx		; s
		push	offset aCurrentDir0_0 ;	"Current dir[0]"
		push	offset _section	; "History"
		call	Stringfromini
		add	esp, 10h
		mov	eax, hwollymain
		lea	edx, [ebp-0E80h]
		lea	ecx, [ebp-0C78h]
		push	20000000h	; mode
		push	eax		; hwnd
		push	offset defext	; "*.exe;*.dll;*.lnk|*.exe|*.dll|*.lnk"
		push	edx		; currdir
		push	ecx		; args
		lea	eax, [ebp-238h]
		push	eax		; _name
		push	offset aSelect32BitExe ; "Select 32-bit	executable and specify ar"...
		call	_T
		pop	ecx
		push	eax		; _title
		call	Browsefilename
		add	esp, 1Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	loc_40B91E
		lea	edx, [ebp-0E80h] ; int
		push	edx		; int
		lea	ecx, [ebp-0C78h] ; int
		push	ecx		; int
		lea	eax, [ebp-238h]	; int
		push	eax		; arglist
		call	loc_44A400
		add	esp, 0Ch
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40AD9B:				; CODE XREF: .text:0040AAA2j
		mov	edx, fi
		push	edx		; int
		push	0FFFFFFFFh	; int
		push	0FFFFFFFFh	; int
		push	offset word_5D4FB8 ; int
		push	offset arguments ; int
		push	offset aEnterNewComman ; "Enter	new command line arguments"
		call	_T
		pop	ecx
		push	eax		; int
		mov	ecx, [ebp+8]
		push	ecx		; hWndParent
		call	loc_42D50C
		add	esp, 1Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jl	loc_40B91E
		mov	eax, [ebp-4]
		lea	edx, [ebp-478h]
		push	eax
		push	offset aArgumentsI ; "Arguments[%i]"
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-478h]
		push	offset arguments ; arglist
		push	$CTW0("%s")	; "%s"
		push	ecx		; key
		push	offset _section	; "History"
		push	0		; file
		call	Writetoini
		add	esp, 14h
		mov	eax, [ebp-4]
		push	eax
		push	offset aCurrentDirI_1 ;	"Current dir[%i]"
		lea	edx, [ebp-478h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-478h]
		push	offset word_5D4FB8 ; arglist
		push	$CTW0("%s")	; "%s"
		push	ecx		; key
		push	offset _section	; "History"
		push	0		; file
		call	Writetoini
		add	esp, 14h
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40AE4A:				; CODE XREF: .text:0040AAA9j
		call	loc_44BC1C
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40AE54:				; CODE XREF: .text:0040AAB3j
		call	Detachprocess
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40AE5E:				; CODE XREF: .text:0040AA8Fj
		push	0		; lParam
		mov	eax, g_cookie
		push	eax		; wParam
		push	48Dh		; Msg
		mov	edx, hwollymain
		push	edx		; hWnd
		call	SendMessageW
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40AE7C:				; CODE XREF: .text:0040AAC7j
					; .text:0040ABBAj
		mov	cx, [ebp+10h]
		and	cx, 0FFFFh
		cmp	cx, 905h
		jnz	short loc_40AEE6
		cmp	executable, 0
		jz	short loc_40AEE6
		push	offset executable ; src
		push	104h		; n
		lea	eax, [ebp-238h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, [ebp-0C78h]
		push	offset arguments ; src
		push	400h		; n
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebp-0E80h]
		push	offset word_5D4FB8 ; src
		push	104h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_40AFCC
; ---------------------------------------------------------------------------

loc_40AEE6:				; CODE XREF: .text:0040AE8Aj
					; .text:0040AE94j
		mov	ax, [ebp+10h]
		and	ax, 0FFFFh
		cmp	ax, 905h
		jnz	short loc_40AEFB
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	short loc_40AF0F
; ---------------------------------------------------------------------------

loc_40AEFB:				; CODE XREF: .text:0040AEF2j
		mov	cx, [ebp+10h]
		and	cx, 0FFFFh
		movzx	eax, cx
		add	eax, 0FFFFF7C2h
		mov	[ebp-4], eax

loc_40AF0F:				; CODE XREF: .text:0040AEF9j
		mov	edx, [ebp-4]
		lea	ecx, [ebp-478h]
		push	edx
		push	offset aExecutableI ; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		push	$CTW0("") ; defname
		lea	eax, [ebp-238h]
		push	eax		; _name
		lea	edx, [ebp-478h]
		push	edx		; key
		call	Filefromini
		add	esp, 0Ch
		test	eax, eax
		jz	loc_40B91E
		mov	ecx, [ebp-4]
		lea	eax, [ebp-478h]
		push	ecx
		push	offset aArgumentsI ; "Arguments[%i]"
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	word ptr [ebp-0C78h], 0
		push	400h		; length
		lea	edx, [ebp-0C78h]
		push	edx		; s
		lea	ecx, [ebp-478h]
		push	ecx		; key
		push	offset _section	; "History"
		call	Stringfromini
		add	esp, 10h
		mov	eax, [ebp-4]
		push	eax
		push	offset aCurrentDirI_1 ;	"Current dir[%i]"
		lea	edx, [ebp-478h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	word ptr [ebp-0E80h], 0
		push	104h		; length
		lea	ecx, [ebp-0E80h]
		push	ecx		; s
		lea	eax, [ebp-478h]
		push	eax		; key
		push	offset _section	; "History"
		call	Stringfromini
		add	esp, 10h

loc_40AFCC:				; CODE XREF: .text:0040AEE1j
		lea	edx, [ebp-0E80h] ; int
		push	edx		; int
		lea	ecx, [ebp-0C78h] ; int
		push	ecx		; int
		lea	eax, [ebp-238h]	; int
		push	eax		; arglist
		call	loc_44A400
		add	esp, 0Ch
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40AFEE:				; CODE XREF: .text:0040AAD0j
		push	1
		call	loc_419654
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40AFFB:				; CODE XREF: .text:0040AAD7j
		push	1
		call	loc_416DF8
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B008:				; CODE XREF: .text:0040AA81j
		push	1
		call	loc_45ACE8
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B015:				; CODE XREF: .text:0040AAF1j
					; DATA XREF: .text:off_40AAF8o
		push	1		; jumptable 0040AAF1 case 2204
		call	loc_4D65C4
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B022:				; CODE XREF: .text:0040AAF1j
					; DATA XREF: .text:off_40AAF8o
		push	1		; jumptable 0040AAF1 case 2205
		call	loc_45C330
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B02F:				; CODE XREF: .text:0040AAF1j
					; DATA XREF: .text:off_40AAF8o
		push	1		; jumptable 0040AAF1 case 2206
		call	loc_4776D8
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B03C:				; CODE XREF: .text:0040AAF1j
					; DATA XREF: .text:off_40AAF8o
		push	1		; jumptable 0040AAF1 case 2207
		call	loc_4DE068
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B049:				; CODE XREF: .text:0040AB31j
					; DATA XREF: .text:off_40AB38o
		push	1		; jumptable 0040AB31 case 2212
		call	loc_498288
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B056:				; CODE XREF: .text:0040AB31j
					; DATA XREF: .text:off_40AB38o
		push	1		; jumptable 0040AB31 case 2213
		call	loc_4C77A8
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B063:				; CODE XREF: .text:0040AB31j
					; DATA XREF: .text:off_40AB38o
		push	1		; jumptable 0040AB31 case 2214
		call	loc_4C87E0
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B070:				; CODE XREF: .text:0040AB31j
					; DATA XREF: .text:off_40AB38o
		push	1		; jumptable 0040AB31 case 2215
		call	loc_4D7ED8
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B07D:				; CODE XREF: .text:0040AB31j
					; DATA XREF: .text:off_40AB38o
		push	1		; jumptable 0040AB31 case 2216
		call	Getcputhreadid
		push	eax
		call	loc_4AE7B8
		add	esp, 8
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B092:				; CODE XREF: .text:0040AB31j
					; DATA XREF: .text:off_40AB38o
		push	1		; jumptable 0040AB31 case 2217
		call	loc_4CB634
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B09F:				; CODE XREF: .text:0040AAF1j
					; DATA XREF: .text:off_40AAF8o
		push	1		; jumptable 0040AAF1 case 2208
		call	loc_4A07D4
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B0AC:				; CODE XREF: .text:0040AAF1j
					; DATA XREF: .text:off_40AAF8o
		push	1		; jumptable 0040AAF1 case 2209
		call	loc_4A8930
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B0B9:				; CODE XREF: .text:0040AAF1j
					; DATA XREF: .text:off_40AAF8o
		push	1		; jumptable 0040AAF1 case 2210
		call	loc_4C5A28
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B0C6:				; CODE XREF: .text:0040AA73j
		push	1
		call	loc_4D7318
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B0D3:				; CODE XREF: .text:0040AB31j
					; DATA XREF: .text:off_40AB38o
		push	10000000h	; jumptable 0040AB31 case 2218
		mov	edx, hwollymain
		push	edx		; hwnd
		push	offset a_	; "*.*"
		push	0		; currdir
		push	0		; args
		push	offset word_57F618 ; _name
		push	$CTW0("Open	file")	; "Open	file"
		call	Browsefilename
		add	esp, 1Ch
		test	eax, eax
		jz	loc_40B91E
		push	0		; strname
		push	0		; sel1
		push	0		; sel0
		push	11001h		; dumptype
		push	offset word_57F618 ; path
		push	0		; size
		push	0		; base
		push	0		; _title
		call	Createdumpwindow
		add	esp, 20h
		mov	[ebp-28h], eax
		cmp	dword ptr [ebp-28h], 0
		jz	loc_40B91E
		mov	ecx, [ebp-28h]
		push	ecx		; hWnd
		call	_Gettablebywindow
		pop	ecx
		mov	[ebp-14h], eax
		cmp	dword ptr [ebp-14h], 0
		jz	loc_40B91E
		mov	eax, [ebp-14h]
		mov	edx, [eax+220h]
		mov	[ebp-18h], edx
		cmp	dword ptr [ebp-18h], 0
		jz	loc_40B91E
		mov	ecx, [ebp-18h]
		or	dword ptr [ecx+0Ch], 4
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B166:				; CODE XREF: .text:0040AB1Cj
		mov	eax, fi
		push	eax		; int
		push	0FFFFFFFFh	; int
		push	0FFFFFFFFh	; int
		push	offset dword_58620A ; int
		push	offset dword_586202 ; int
		push	offset dword_5861FC ; int
		push	0		; int
		mov	edx, [ebp+8]
		push	edx		; hWndParent
		call	loc_42DB0C
		add	esp, 20h
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B192:				; CODE XREF: .text:0040AB63j
					; DATA XREF: .text:off_40AB6Ao
		push	0		; jumptable 0040AB63 case 2301
		push	3		; status
		call	Run
		add	esp, 8
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B1A3:				; CODE XREF: .text:0040AB63j
					; DATA XREF: .text:off_40AB6Ao
		call	Pauseprocess	; jumptable 0040AB63 case 2302
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B1AD:				; CODE XREF: .text:0040AB63j
					; DATA XREF: .text:off_40AB6Ao
		push	0		; jumptable 0040AB63 case 2303
		push	4		; status
		call	Run
		add	esp, 8
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B1BE:				; CODE XREF: .text:0040AB63j
					; DATA XREF: .text:off_40AB6Ao
		push	0		; jumptable 0040AB63 case 2304
		push	5		; status
		call	Run
		add	esp, 8
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B1CF:				; CODE XREF: .text:0040AB63j
					; DATA XREF: .text:off_40AB6Ao
		push	0		; jumptable 0040AB63 case 2305
		push	6		; status
		call	Run
		add	esp, 8
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B1E0:				; CODE XREF: .text:0040AB63j
					; DATA XREF: .text:off_40AB6Ao
		push	0		; jumptable 0040AB63 case 2306
		push	0Eh		; status
		call	Run
		add	esp, 8
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B1F1:				; CODE XREF: .text:0040AB63j
					; DATA XREF: .text:off_40AB6Ao
		push	0		; jumptable 0040AB63 case 2307
		push	10h		; status
		call	Run
		add	esp, 8
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B202:				; CODE XREF: .text:0040AA61j
		call	Getcpudisasmselection
		push	eax
		call	loc_4CD470
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B213:				; CODE XREF: .text:0040ABC1j
		push	0		; confirm
		call	Closeprocess
		pop	ecx
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jnz	loc_40B91E
		cmp	ischild, 0
		jz	loc_40B91E
		push	0		; lParam
		mov	ecx, g_cookie
		push	ecx		; wParam
		push	48Dh		; Msg
		mov	eax, hwollymain
		push	eax		; hWnd
		call	SendMessageW
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B253:				; CODE XREF: .text:0040ABC8j
		cmp	_imp__GetProcessAffinityMask, 0
		jz	loc_40B91E
		cmp	_imp__SetProcessAffinityMask, 0
		jz	loc_40B91E
		cmp	process, 0
		jz	loc_40B91E
		push	offset _SystemAffinityMask ; _DWORD
		lea	edx, [ebp-0Ch]
		push	edx		; _DWORD
		mov	ecx, process
		push	ecx		; _DWORD
		call	_imp__GetProcessAffinityMask
		mov	eax, fi
		push	eax		; int
		push	0FFFFFFFFh	; int
		push	0FFFFFFFFh	; int
		mov	edx, [ebp-0Ch]
		push	edx		; int
		push	offset aSetAffinityM_2 ; "Set affinity mask for	debugged process"
		call	_T
		pop	ecx
		push	eax		; int
		mov	ecx, [ebp+8]
		push	ecx		; hWndParent
		call	loc_435BF0
		add	esp, 18h
		mov	[ebp-10h], eax
		cmp	dword ptr [ebp-10h], 0
		jnz	short loc_40B2C7
		mov	eax, _SystemAffinityMask
		mov	[ebp-10h], eax

loc_40B2C7:				; CODE XREF: .text:0040B2BDj
		mov	edx, [ebp-10h]
		cmp	edx, [ebp-0Ch]
		jz	loc_40B91E
		mov	ecx, [ebp-10h]
		mov	eax, process
		push	ecx		; _DWORD
		push	eax		; _DWORD
		call	_imp__SetProcessAffinityMask
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B2E8:				; CODE XREF: .text:0040ABAEj
		call	loc_4DCD0C
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B2F2:				; CODE XREF: .text:0040ABD9j
		push	1
		call	loc_4C4318
		pop	ecx
		push	1
		call	loc_4C5A28
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B307:				; CODE XREF: .text:0040ABE7j
		push	0		; pass
		push	7		; status
		call	Run
		add	esp, 8
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B318:				; CODE XREF: .text:0040ABA0j
		push	0		; pass
		push	8		; status
		call	Run
		add	esp, 8
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B329:				; CODE XREF: .text:0040AC01j
					; DATA XREF: .text:off_40AC08o
		push	0		; jumptable 0040AC01 case 2405
		push	9		; status
		call	Run
		add	esp, 8
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B33A:				; CODE XREF: .text:0040AC01j
					; DATA XREF: .text:off_40AC08o
		push	0		; jumptable 0040AC01 case 2406
		push	0Ah		; status
		call	Run
		add	esp, 8
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B34B:				; CODE XREF: .text:0040AC01j
					; DATA XREF: .text:off_40AC08o
		mov	dword_5CBB98, 1	; jumptable 0040AC01 case 2407
		cmp	dword_5CBB9C, 0
		jz	short loc_40B363
		call	loc_4504F8

loc_40B363:				; CODE XREF: .text:0040B35Cj
		push	0		; pass
		push	3		; status
		call	Run
		add	esp, 8
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B374:				; CODE XREF: .text:0040AC01j
					; DATA XREF: .text:off_40AC08o
		xor	edx, edx	; jumptable 0040AC01 case 2408
		mov	dword_5CBB98, edx
		call	Suspendallthreads
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	short loc_40B3C6
; ---------------------------------------------------------------------------

loc_40B388:				; CODE XREF: .text:0040B3CFj
		mov	eax, [ebp-4]
		push	eax		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_40B3C3
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_40B3C3
		cmp	dword ptr [eax+64h], 0
		jz	short loc_40B3C3
		cmp	dword_5CBBAC, 0
		jnz	short loc_40B3C3
		xor	edx, edx
		jmp	short loc_40B3BE
; ---------------------------------------------------------------------------

loc_40B3B6:				; CODE XREF: .text:0040B3C1j
		mov	ecx, [eax+64h]
		and	byte ptr [ecx+edx], 7Fh
		inc	edx

loc_40B3BE:				; CODE XREF: .text:0040B3B4j
		cmp	edx, [eax+4]
		jb	short loc_40B3B6

loc_40B3C3:				; CODE XREF: .text:0040B39Bj
					; .text:0040B3A1j ...
		inc	dword ptr [ebp-4]

loc_40B3C6:				; CODE XREF: .text:0040B386j
		mov	eax, [ebp-4]
		cmp	eax, memory.sorted.n
		jl	short loc_40B388
		call	loc_497C20
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		call	Resumeallthreads
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B3F1:				; CODE XREF: .text:0040AC01j
					; DATA XREF: .text:off_40AC08o
		call	Suspendallthreads ; jumptable 0040AC01 case 2409
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	short loc_40B432
; ---------------------------------------------------------------------------

loc_40B3FD:				; CODE XREF: .text:0040B43Bj
		mov	ecx, [ebp-4]
		push	ecx		; index
		push	offset memory.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		test	eax, eax
		jz	short loc_40B42F
		test	byte ptr [eax+0Bh], 8
		jnz	short loc_40B42F
		cmp	dword ptr [eax+64h], 0
		jz	short loc_40B42F
		xor	edx, edx
		jmp	short loc_40B42A
; ---------------------------------------------------------------------------

loc_40B422:				; CODE XREF: .text:0040B42Dj
		mov	ecx, [eax+64h]
		and	byte ptr [ecx+edx], 7Fh
		inc	edx

loc_40B42A:				; CODE XREF: .text:0040B420j
		cmp	edx, [eax+4]
		jb	short loc_40B422

loc_40B42F:				; CODE XREF: .text:0040B410j
					; .text:0040B416j ...
		inc	dword ptr [ebp-4]

loc_40B432:				; CODE XREF: .text:0040B3FBj
		mov	eax, [ebp-4]
		cmp	eax, memory.sorted.n
		jl	short loc_40B3FD
		call	loc_497C20
		push	0		; lp
		push	0		; wp
		push	484h		; msg
		call	Broadcast
		add	esp, 0Ch
		call	Resumeallthreads
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B45D:				; CODE XREF: .text:0040AC01j
					; DATA XREF: .text:off_40AC08o
		mov	eax, fi		; jumptable 0040AC01 case 2410
		push	eax		; fi
		push	0FFFFFFFFh	; y
		push	0FFFFFFFFh	; x
		mov	edx, [ebp+8]
		push	edx		; hparent
		call	Setrtcond
		add	esp, 10h
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B478:				; CODE XREF: .text:0040AC01j
					; DATA XREF: .text:off_40AC08o
		mov	ecx, fi		; jumptable 0040AC01 case 2411
		push	ecx		; fi
		push	0FFFFFFFFh	; y
		push	0FFFFFFFFh	; x
		mov	eax, [ebp+8]
		push	eax		; hparent
		call	Setrtprot
		add	esp, 10h
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B494:				; CODE XREF: .text:0040ABE0j
		call	loc_4C4270
		call	loc_4C5B0C
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B4A3:				; CODE XREF: .text:0040AB92j
		call	loc_4D0D88
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B4AD:				; CODE XREF: .text:0040AC46j
		push	offset word_57F000 ; src
		push	104h		; n
		lea	edx, [ebp-238h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ecx, hwollymain
		lea	eax, [ebp-238h]
		push	0		; mode
		push	ecx		; hwnd
		push	offset a_ini_1	; "*.ini"
		push	0		; currdir
		push	0		; args
		push	eax		; _name
		push	offset aSelectInitiali ; "Select initialization	file"
		call	_T
		pop	ecx
		push	eax		; _title
		call	Browsefilename
		add	esp, 1Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	loc_40B91E
		lea	edx, [ebp-238h]
		push	edx
		call	loc_40D26C
		pop	ecx
		lea	ecx, [ebp-238h]
		push	ecx		; src
		push	104h		; n
		push	offset word_57F000 ; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	dword_5CBBC4, 0
		jnz	short loc_40B536
		xor	eax, eax
		mov	dword_5CBBC8, eax

loc_40B536:				; CODE XREF: .text:0040B52Dj
		call	Redrawcpureg
		push	81h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	edx, hwollymain
		push	edx		; hWnd
		call	RedrawWindow
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B555:				; CODE XREF: .text:0040AC4Dj
		push	offset word_57F000 ; src
		push	104h		; n
		lea	ecx, [ebp-238h]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	eax, hwollymain
		lea	edx, [ebp-238h]
		push	8000000h	; mode
		push	eax		; hwnd
		push	offset a_ini_1	; "*.ini"
		push	0		; currdir
		push	0		; args
		push	edx		; _name
		push	offset aSelectInitiali ; "Select initialization	file"
		call	_T
		pop	ecx
		push	eax		; _title
		call	Browsefilename
		add	esp, 1Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 0
		jz	loc_40B91E
		lea	ecx, [ebp-238h]
		push	ecx		; s2
		push	offset FileName	; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jz	short loc_40B5DB
		lea	eax, [ebp-238h]
		push	eax		; src
		push	104h		; n
		push	offset word_57F000 ; dest
		call	StrcopyW
		add	esp, 0Ch

loc_40B5DB:				; CODE XREF: .text:0040B5C0j
		push	0		; int
		lea	edx, [ebp-238h]
		push	edx		; lpFileName
		call	loc_40CDD8
		add	esp, 8
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B5F1:				; CODE XREF: .text:0040AC54j
		push	0
		call	loc_4D132C
		pop	ecx
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B5FE:				; CODE XREF: .text:0040AC3Aj
		call	loc_425090
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B608:				; CODE XREF: .text:0040AC65j
		cmp	dword_57FE44, 0
		push	3		; uFlags
		setz	cl
		and	ecx, 1
		push	0		; cy
		mov	dword_57FE44, ecx
		or	eax, 0FFFFFFFFh
		push	0		; cx
		push	0		; Y
		cmp	dword_57FE44, 0
		push	0		; X
		jnz	short loc_40B632
		dec	eax

loc_40B632:				; CODE XREF: .text:0040B62Fj
		push	eax		; hWndInsertAfter
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	SetWindowPos
		push	0		; bErase
		push	0		; lpRect
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	InvalidateRect
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B64E:				; CODE XREF: .text:0040AC6Cj
		cmp	hwclient, 0
		jz	loc_40B91E
		push	0		; lParam
		push	2		; wParam
		push	227h		; Msg
		mov	eax, hwclient
		push	eax		; hWnd
		call	SendMessageW
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B674:				; CODE XREF: .text:0040AC73j
		cmp	hwclient, 0
		jz	loc_40B91E
		push	0		; lParam
		push	3		; wParam
		push	226h		; Msg
		mov	edx, hwclient
		push	edx		; hWnd
		call	SendMessageW
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B69B:				; CODE XREF: .text:0040AC2Cj
		cmp	hwclient, 0
		jz	loc_40B91E
		push	0		; lParam
		push	2		; wParam
		push	226h		; Msg
		mov	ecx, hwclient
		push	ecx		; hWnd
		call	SendMessageW
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B6C2:				; CODE XREF: .text:0040AC92j
		cmp	hwclient, 0
		jz	loc_40B91E
		push	0		; lParam
		push	0		; wParam
		push	228h		; Msg
		mov	eax, hwclient
		push	eax		; hWnd
		call	SendMessageW
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B6E8:				; CODE XREF: .text:0040AC99j
		cmp	hwclient, 0
		jz	short loc_40B709
		push	0		; lParam
		push	offset EnumFunc	; lpEnumFunc
		mov	edx, hwclient
		push	edx		; hWndParent
		call	EnumChildWindows
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B709:				; CODE XREF: .text:0040B6EFj
		push	0		; lParam
		push	offset EnumFunc	; lpfn
		call	GetCurrentThreadId
		push	eax		; dwThreadId
		call	EnumThreadWindows
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B720:				; CODE XREF: .text:0040ACA0j
		cmp	hwclient, 0
		jnz	short loc_40B786
		call	GetActiveWindow
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0
		jz	loc_40B91E
		mov	dword ptr [ebp-131Ch], 2Ch
		lea	ecx, [ebp-131Ch]
		push	ecx		; lpwndpl
		mov	eax, [ebp-24h]
		push	eax		; hWnd
		call	GetWindowPlacement
		test	eax, eax
		jz	loc_40B91E
		cmp	dword ptr [ebp-1314h], 3
		jnz	short loc_40B776
		push	9		; nCmdShow
		mov	edx, [ebp-24h]
		push	edx		; hWnd
		call	ShowWindow
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B776:				; CODE XREF: .text:0040B764j
		push	3		; nCmdShow
		mov	ecx, [ebp-24h]
		push	ecx		; hWnd
		call	ShowWindow
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B786:				; CODE XREF: .text:0040B727j
		lea	eax, [ebp-4]
		push	eax		; lParam
		push	0		; wParam
		push	229h		; Msg
		mov	edx, hwclient
		push	edx		; hWnd
		call	SendMessageW
		mov	[ebp-24h], eax
		cmp	dword ptr [ebp-24h], 0
		jz	loc_40B91E
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_40B7CB
		push	0		; lParam
		mov	eax, hwclient
		mov	ecx, [ebp-24h]
		push	ecx		; wParam
		push	225h		; Msg
		push	eax		; hWnd
		call	SendMessageW
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B7CB:				; CODE XREF: .text:0040B7AEj
		push	0		; lParam
		mov	ecx, hwclient
		mov	edx, [ebp-24h]
		push	edx		; wParam
		push	223h		; Msg
		push	ecx		; hWnd
		call	SendMessageW
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B7E7:				; CODE XREF: .text:0040AC86j
		cmp	hwclient, 0
		jz	loc_40B91E
		push	0		; lParam
		push	0		; wParam
		push	224h		; Msg
		mov	eax, hwclient
		push	eax		; hWnd
		call	SendMessageW
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B80D:				; CODE XREF: .text:0040ACB1j
		cmp	hwclient, 0
		jz	loc_40B91E
		push	1		; lParam
		push	0		; wParam
		push	224h		; Msg
		mov	edx, hwclient
		push	edx		; hWnd
		call	SendMessageW
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B834:				; CODE XREF: .text:0040ACBAj
		call	loc_401CB0
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B83E:				; CODE XREF: .text:0040ACC1j
		call	loc_49B234
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B848:				; CODE XREF: .text:0040AAB9j
					; .text:0040AADDj ...
		mov	cx, [ebp+10h]	; jumptable 0040AAF1 default case
		and	cx, 0FFFFh
		movzx	eax, cx
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 4E20h
		jl	short loc_40B887
		cmp	dword ptr [ebp-4], 7530h
		jge	short loc_40B887
		mov	dx, [ebp+10h]
		and	dx, 0FFFFh
		movzx	ecx, dx
		push	ecx
		mov	eax, [ebp+8]
		push	eax
		call	loc_425994
		add	esp, 8
		jmp	loc_40B91E
; ---------------------------------------------------------------------------

loc_40B887:				; CODE XREF: .text:0040B85Ej
					; .text:0040B867j
		cmp	dword ptr [ebp-4], 7D2h
		jl	loc_40B91E
		mov	edx, dword ptr word_57E468+1F8h
		add	edx, 7D2h
		cmp	edx, [ebp-4]
		jl	short loc_40B91E
		sub	dword ptr [ebp-4], 7D3h
		cmp	dword ptr [ebp-4], 0
		jge	short loc_40B8B6
		xor	eax, eax
		jmp	short loc_40B8D5
; ---------------------------------------------------------------------------

loc_40B8B6:				; CODE XREF: .text:0040B8B0j
		mov	edx, [ebp-4]
		shl	edx, 7
		movzx	eax, word_57DE60[edx]
		mov	edx, [ebp-4]
		shl	edx, 7
		movzx	ecx, word_57DE62[edx]
		shl	ecx, 8
		add	eax, ecx

loc_40B8D5:				; CODE XREF: .text:0040B8B4j
		cmp	eax, g_GuiLuguage
		jz	short loc_40B91E
		mov	g_GuiLuguage, eax
		push	eax
		call	loc_4DEDBC
		pop	ecx
		push	offset stru_50DDAC
		call	loc_425904
		pop	ecx
		call	loc_40A180
		push	481h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	eax, hwollymain
		push	eax		; hWnd
		call	RedrawWindow
		push	0		; lp
		push	0		; wp
		push	48Eh		; msg
		call	Broadcast
		add	esp, 0Ch

loc_40B91E:				; CODE XREF: .text:0040AA43j
					; .text:0040AD73j ...
		cmp	hwclient, 0
		jz	loc_40C6A5
		push	esi		; lParam
		mov	ecx, hwclient
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	ebx		; uMsg
		push	ecx		; hWndMDIClient
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	DefFrameProcW
		jmp	loc_40C6A7
; ---------------------------------------------------------------------------

loc_40B946:				; CODE XREF: .text:0040A20Bj
		mov	eax, 1
		jmp	loc_40C6A7
; ---------------------------------------------------------------------------

loc_40B950:				; CODE XREF: .text:0040A1FDj
		lea	edx, [ebp-135Ch]
		push	edx		; lpPaint
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	BeginPaint
		mov	ebx, eax
		lea	eax, [ebp-12F0h]
		push	eax
		lea	edx, [ebp-12E0h]
		push	edx
		lea	ecx, [ebp-12D0h]
		push	ecx
		lea	eax, [ebp-12C0h]
		push	eax
		lea	edx, [ebp-12B0h]
		push	edx
		call	loc_4087E8
		add	esp, 14h
		test	eax, eax
		jnz	short loc_40B998
		xor	ecx, ecx
		mov	[ebp-8], ecx
		jmp	short loc_40B99F
; ---------------------------------------------------------------------------

loc_40B998:				; CODE XREF: .text:0040B98Fj
		mov	dword ptr [ebp-8], 2

loc_40B99F:				; CODE XREF: .text:0040B996j
		mov	eax, sysfont.hfont
		push	eax		; HGDIOBJ
		push	ebx		; HDC
		call	SelectObject
		mov	edx, g_Pen+0Ch
		push	edx		; HGDIOBJ
		push	ebx		; HDC
		call	SelectObject
		push	0		; LPPOINT
		mov	ecx, [ebp-12ACh]
		push	ecx		; int
		mov	eax, [ebp-12B0h]
		push	eax		; int
		push	ebx		; HDC
		call	MoveToEx
		mov	edx, [ebp-12ACh]
		push	edx		; int
		mov	ecx, [ebp-12A8h]
		push	ecx		; int
		push	ebx		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	eax, [ebp-12A4h]
		dec	eax
		push	eax		; int
		mov	edx, [ebp-12B0h]
		push	edx		; int
		push	ebx		; HDC
		call	MoveToEx
		mov	ecx, [ebp-12A4h]
		dec	ecx
		push	ecx		; int
		mov	eax, [ebp-12A8h]
		push	eax		; int
		push	ebx		; HDC
		call	LineTo
		mov	edx, g_Pen+14h
		push	edx		; HGDIOBJ
		push	ebx		; HDC
		call	SelectObject
		push	0		; LPPOINT
		mov	ecx, [ebp-12A4h]
		add	ecx, 0FFFFFFFEh
		push	ecx		; int
		mov	eax, [ebp-12B0h]
		push	eax		; int
		push	ebx		; HDC
		call	MoveToEx
		mov	edx, [ebp-12A4h]
		add	edx, 0FFFFFFFEh
		push	edx		; int
		mov	ecx, [ebp-12A8h]
		push	ecx		; int
		push	ebx		; HDC
		call	LineTo
		push	0		; flags
		lea	eax, [ebp-12C0h]
		push	eax		; rc
		push	ebx		; dc
		call	Sunkenframe
		add	esp, 0Ch
		cmp	word_5D81D4, 0
		jz	loc_40BC22
		cmp	dword_5D83D4, 0
		jg	short loc_40BA7E
		xor	edx, edx
		mov	dword_5D83D4, edx
		jmp	short loc_40BA94
; ---------------------------------------------------------------------------

loc_40BA7E:				; CODE XREF: .text:0040BA72j
		cmp	dword_5D83D4, 3E8h
		jl	short loc_40BA94
		mov	dword_5D83D4, 3E8h

loc_40BA94:				; CODE XREF: .text:0040BA7Cj
					; .text:0040BA88j
		xor	ecx, ecx
		mov	[ebp-4], ecx
		lea	edx, [ebp-1280h]
		mov	eax, offset word_5D81D4
		jmp	short loc_40BAB2
; ---------------------------------------------------------------------------

loc_40BAA6:				; CODE XREF: .text:0040BABEj
		mov	[edx], cx
		add	edx, 2
		inc	dword ptr [ebp-4]
		add	eax, 2

loc_40BAB2:				; CODE XREF: .text:0040BAA4j
		mov	cx, [eax]
		test	cx, cx
		jz	short loc_40BAC0
		cmp	cx, 24h
		jnz	short loc_40BAA6

loc_40BAC0:				; CODE XREF: .text:0040BAB8j
		mov	eax, dword_5D83D4
		mov	ecx, 0Ah
		cdq
		idiv	ecx
		push	edx
		mov	eax, dword_5D83D4
		mov	ecx, 0Ah
		cdq
		idiv	ecx
		push	eax
		push	offset aI_I	; format
		mov	eax, [ebp-4]
		add	eax, eax
		lea	edx, [ebp-1280h]
		add	eax, edx
		push	eax		; buffer
		call	_swprintf
		mov	esi, eax
		mov	eax, [ebp-4]
		add	esi, [ebp-4]
		add	esp, 10h
		cmp	word_5D81D4[eax*2], 24h
		jnz	short loc_40BB0D
		inc	dword ptr [ebp-4]

loc_40BB0D:				; CODE XREF: .text:0040BB08j
		lea	eax, [ebp+esi*2-1280h]
		mov	edx, [ebp-4]
		lea	edx, word_5D81D4[edx*2]
		jmp	short loc_40BB30
; ---------------------------------------------------------------------------

loc_40BB20:				; CODE XREF: .text:0040BB34j
		mov	cx, [edx]
		add	edx, 2
		mov	[eax], cx
		inc	esi
		inc	dword ptr [ebp-4]
		add	eax, 2

loc_40BB30:				; CODE XREF: .text:0040BB1Ej
		cmp	word ptr [edx],	0
		jnz	short loc_40BB20
		mov	eax, [ebp-12B8h]
		mov	ecx, 3E8h
		sub	eax, [ebp-12C0h]
		imul	dword_5D83D4
		add	eax, 3E7h
		lea	edi, [ebp-12A0h]
		cdq
		idiv	ecx
		mov	[ebp-4], eax
		push	esi
		lea	esi, [ebp-12C0h]
		mov	ecx, 4
		rep movsd
		mov	eax, [ebp-12C0h]
		pop	esi
		add	eax, [ebp-4]
		mov	edx, g_Color+18h
		mov	[ebp-1298h], eax
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	ecx, g_Color
		push	ecx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	0		; INT *
		push	esi		; UINT
		lea	eax, [ebp-1280h]
		push	eax		; LPCWSTR
		lea	edx, [ebp-12A0h]
		push	edx		; RECT *
		push	6		; UINT
		mov	ecx, [ebp-12BCh]
		inc	ecx
		push	ecx		; int
		mov	eax, [ebp-12C0h]
		add	eax, 2
		push	eax		; int
		push	ebx		; HDC
		call	ExtTextOutW
		mov	edx, [ebp-1298h]
		mov	eax, g_Color
		mov	[ebp-12A0h], edx
		mov	ecx, [ebp-12B8h]
		mov	[ebp-1298h], ecx
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+18h
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	0		; INT *
		push	esi		; UINT
		lea	ecx, [ebp-1280h]
		push	ecx		; LPCWSTR
		lea	eax, [ebp-12A0h]
		push	eax		; RECT *
		push	6		; UINT
		mov	edx, [ebp-12BCh]
		inc	edx
		push	edx		; int
		mov	ecx, [ebp-12C0h]
		add	ecx, 2
		push	ecx		; int
		push	ebx		; HDC
		call	ExtTextOutW
		jmp	loc_40BD25
; ---------------------------------------------------------------------------

loc_40BC22:				; CODE XREF: .text:0040BA65j
		cmp	word_5D7FD0, 0
		jz	short loc_40BC7E
		mov	eax, g_Color+20h
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+1Ch
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	0		; INT *
		push	offset word_5D7FD0 ; s
		call	_wcslen
		pop	ecx
		push	eax		; UINT
		push	offset word_5D7FD0 ; LPCWSTR
		lea	ecx, [ebp-12C0h]
		push	ecx		; RECT *
		push	6		; UINT
		mov	eax, [ebp-12BCh]
		inc	eax
		push	eax		; int
		mov	edx, [ebp-12C0h]
		add	edx, 2
		push	edx		; int
		push	ebx		; HDC
		call	ExtTextOutW
		jmp	loc_40BD25
; ---------------------------------------------------------------------------

loc_40BC7E:				; CODE XREF: .text:0040BC2Aj
		cmp	word_5D7DD0, 0
		jz	short loc_40BCD7
		mov	ecx, g_Color
		push	ecx		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	eax, g_Color+0Ch
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	0		; INT *
		push	offset word_5D7DD0 ; s
		call	_wcslen
		pop	ecx
		push	eax		; UINT
		push	offset word_5D7DD0 ; LPCWSTR
		lea	edx, [ebp-12C0h]
		push	edx		; RECT *
		push	6		; UINT
		mov	ecx, [ebp-12BCh]
		inc	ecx
		push	ecx		; int
		mov	eax, [ebp-12C0h]
		add	eax, 2
		push	eax		; int
		push	ebx		; HDC
		call	ExtTextOutW
		jmp	short loc_40BD25
; ---------------------------------------------------------------------------

loc_40BCD7:				; CODE XREF: .text:0040BC86j
		mov	edx, g_Color
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	ecx, g_Color+0Ch
		push	ecx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	0		; INT *
		push	offset dst	; s
		call	_wcslen
		pop	ecx
		push	eax		; UINT
		push	offset dst	; LPCWSTR
		lea	eax, [ebp-12C0h]
		push	eax		; RECT *
		push	6		; UINT
		mov	edx, [ebp-12BCh]
		inc	edx
		push	edx		; int
		mov	ecx, [ebp-12C0h]
		add	ecx, 2
		push	ecx		; int
		push	ebx		; HDC
		call	ExtTextOutW

loc_40BD25:				; CODE XREF: .text:0040BC1Dj
					; .text:0040BC79j ...
		push	0		; flags
		lea	eax, [ebp-12D0h]
		push	eax		; rc
		push	ebx		; dc
		call	Sunkenframe
		add	esp, 0Ch
		mov	edx, g_Color+20h
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	ecx, g_Color+0Ch
		push	ecx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		cmp	dword_57FE44, 0
		jnz	short loc_40BD61
		mov	esi, $CTW0("") ; ""
		jmp	short loc_40BD6E
; ---------------------------------------------------------------------------

loc_40BD61:				; CODE XREF: .text:0040BD58j
		push	offset aTop	; "Top"
		call	_T
		pop	ecx
		mov	esi, eax

loc_40BD6E:				; CODE XREF: .text:0040BD5Fj
		push	0		; INT *
		push	esi		; s
		call	_wcslen
		pop	ecx
		push	eax		; UINT
		push	esi		; LPCWSTR
		lea	eax, [ebp-12D0h]
		push	eax		; RECT *
		push	6		; UINT
		mov	edx, [ebp-12CCh]
		inc	edx
		push	edx		; int
		mov	ecx, [ebp-12D0h]
		add	ecx, 2
		push	ecx		; int
		push	ebx		; HDC
		call	ExtTextOutW
		push	0		; flags
		lea	eax, [ebp-12E0h]
		push	eax		; rc
		push	ebx		; dc
		call	Sunkenframe
		add	esp, 0Ch
		mov	edx, run.status
		cmp	edx, 14h	; switch 21 cases
		ja	loc_40C0EC	; jumptable 0040BDBB default case
		jmp	ds:off_40BDC2[edx*4] ; switch jump
; ---------------------------------------------------------------------------
off_40BDC2	dd offset loc_40BE16	; DATA XREF: .text:0040BDBBr
		dd offset loc_40BE41	; jump table for switch	statement
		dd offset loc_40BE6C
		dd offset loc_40BE97
		dd offset loc_40BE97
		dd offset loc_40BF1C
		dd offset loc_40BF47
		dd offset loc_40BF72
		dd offset loc_40BF72
		dd offset loc_40BF9D
		dd offset loc_40BF9D
		dd offset loc_40BFC8
		dd offset loc_40BFC8
		dd offset loc_40BFC8
		dd offset loc_40BFF3
		dd offset loc_40BFF3
		dd offset loc_40C01E
		dd offset loc_40C049
		dd offset loc_40C074
		dd offset loc_40C09C
		dd offset loc_40C0C4
; ---------------------------------------------------------------------------

loc_40BE16:				; CODE XREF: .text:0040BDBBj
					; DATA XREF: .text:off_40BDC2o
		mov	ecx, g_Color	; jumptable 0040BDBB case 0
		push	ecx		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	eax, g_Color+0Ch
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	offset aReady	; "Ready"
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	loc_40C112
; ---------------------------------------------------------------------------

loc_40BE41:				; CODE XREF: .text:0040BDBBj
					; DATA XREF: .text:off_40BDC2o
		mov	eax, g_Color	; jumptable 0040BDBB case 1
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+0Ch
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	offset aLoading	; "Loading"
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	loc_40C112
; ---------------------------------------------------------------------------

loc_40BE6C:				; CODE XREF: .text:0040BDBBj
					; DATA XREF: .text:off_40BDC2o
		mov	eax, g_Color	; jumptable 0040BDBB case 2
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+0Ch
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	offset aAttaching ; "Attaching"
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	loc_40C112
; ---------------------------------------------------------------------------

loc_40BE97:				; CODE XREF: .text:0040BDBBj
					; DATA XREF: .text:off_40BDC2o
		mov	eax, g_Color	; jumptable 0040BDBB cases 3,4
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+0Ch
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		cmp	rundll,	0
		jz	short loc_40BED4
		cmp	dword_5D3A3C, 0
		jz	short loc_40BED4
		push	offset aCallingDll ; src
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	loc_40C112
; ---------------------------------------------------------------------------

loc_40BED4:				; CODE XREF: .text:0040BEB7j
					; .text:0040BEC0j
		cmp	dword_5CBB98, 0
		jz	short loc_40BEEF
		push	offset aHitTrace_1 ; src
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	loc_40C112
; ---------------------------------------------------------------------------

loc_40BEEF:				; CODE XREF: .text:0040BEDBj
		cmp	run.status, 4
		jnz	short loc_40BF0A
		push	offset aThread_2 ; src
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	loc_40C112
; ---------------------------------------------------------------------------

loc_40BF0A:				; CODE XREF: .text:0040BEF6j
		push	offset aRunning	; "Running"
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	loc_40C112
; ---------------------------------------------------------------------------

loc_40BF1C:				; CODE XREF: .text:0040BDBBj
					; DATA XREF: .text:off_40BDC2o
		mov	eax, g_Color	; jumptable 0040BDBB case 5
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+0Ch
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	offset aStepIn	; "Step	in"
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	loc_40C112
; ---------------------------------------------------------------------------

loc_40BF47:				; CODE XREF: .text:0040BDBBj
					; DATA XREF: .text:off_40BDC2o
		mov	eax, g_Color	; jumptable 0040BDBB case 6
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+0Ch
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	offset aStepOver_0 ; src
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	loc_40C112
; ---------------------------------------------------------------------------

loc_40BF72:				; CODE XREF: .text:0040BDBBj
					; DATA XREF: .text:off_40BDC2o
		mov	eax, g_Color	; jumptable 0040BDBB cases 7,8
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+0Ch
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	offset aAnimating ; "Animating"
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	loc_40C112
; ---------------------------------------------------------------------------

loc_40BF9D:				; CODE XREF: .text:0040BDBBj
					; DATA XREF: .text:off_40BDC2o
		mov	eax, g_Color	; jumptable 0040BDBB cases 9,10
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+0Ch
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	offset aTracing	; "Tracing"
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	loc_40C112
; ---------------------------------------------------------------------------

loc_40BFC8:				; CODE XREF: .text:0040BDBBj
					; DATA XREF: .text:off_40BDC2o
		mov	eax, g_Color	; jumptable 0040BDBB cases 11-13
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+0Ch
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	offset aUnpacking ; "Unpacking"
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	loc_40C112
; ---------------------------------------------------------------------------

loc_40BFF3:				; CODE XREF: .text:0040BDBBj
					; DATA XREF: .text:off_40BDC2o
		mov	eax, g_Color	; jumptable 0040BDBB cases 14,15
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+0Ch
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	offset aTillRet	; "Till	RET"
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	loc_40C112
; ---------------------------------------------------------------------------

loc_40C01E:				; CODE XREF: .text:0040BDBBj
					; DATA XREF: .text:off_40BDC2o
		mov	eax, g_Color	; jumptable 0040BDBB case 16
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+0Ch
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	offset aTillUser ; "Till user"
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	loc_40C112
; ---------------------------------------------------------------------------

loc_40C049:				; CODE XREF: .text:0040BDBBj
					; DATA XREF: .text:off_40BDC2o
		mov	eax, g_Color	; jumptable 0040BDBB case 17
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+0Ch
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	offset aPausing	; src
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	loc_40C112
; ---------------------------------------------------------------------------

loc_40C074:				; CODE XREF: .text:0040BDBBj
					; DATA XREF: .text:off_40BDC2o
		mov	eax, g_Color+20h ; jumptable 0040BDBB case 18
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+1Ch
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	offset aPaused	; src
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	short loc_40C112
; ---------------------------------------------------------------------------

loc_40C09C:				; CODE XREF: .text:0040BDBBj
					; DATA XREF: .text:off_40BDC2o
		mov	eax, g_Color+20h ; jumptable 0040BDBB case 19
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+0Ch
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	offset aTerminated ; "Terminated"
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	short loc_40C112
; ---------------------------------------------------------------------------

loc_40C0C4:				; CODE XREF: .text:0040BDBBj
					; DATA XREF: .text:off_40BDC2o
		mov	eax, g_Color	; jumptable 0040BDBB case 20
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+0Ch
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	offset aClosing	; "Closing"
		call	_T
		pop	ecx
		mov	esi, eax
		jmp	short loc_40C112
; ---------------------------------------------------------------------------

loc_40C0EC:				; CODE XREF: .text:0040BDB5j
		mov	eax, g_Color	; jumptable 0040BDBB default case
		push	eax		; COLORREF
		push	ebx		; HDC
		call	SetTextColor
		mov	edx, g_Color+0Ch
		push	edx		; COLORREF
		push	ebx		; HDC
		call	SetBkColor
		push	offset aUnknown	; "Unknown"
		call	_T
		pop	ecx
		mov	esi, eax

loc_40C112:				; CODE XREF: .text:0040BE3Cj
					; .text:0040BE67j ...
		push	esi		; src
		push	100h		; n
		push	offset word_5D83D8 ; dest
		call	StrcopyW
		add	esp, 0Ch
		push	0		; INT *
		push	esi		; s
		call	_wcslen
		pop	ecx
		push	eax		; UINT
		push	esi		; LPCWSTR
		lea	eax, [ebp-12E0h]
		push	eax		; RECT *
		push	6		; UINT
		mov	edx, [ebp-12DCh]
		add	edx, [ebp-8]
		inc	edx
		push	edx		; int
		mov	ecx, [ebp-12E0h]
		add	ecx, 2
		push	ecx		; int
		push	ebx		; HDC
		call	ExtTextOutW
		cmp	g_IsShowtoolbar, 0
		jz	loc_40C55D
		push	ebx		; HDC
		call	CreateCompatibleDC
		mov	[ebp-1Ch], eax
		xor	eax, eax
		cmp	g_IsShowtoolbar, 1
		jz	short loc_40C178
		add	eax, 0Ah

loc_40C178:				; CODE XREF: .text:0040C173j
		push	eax		; flags
		lea	edx, [ebp-12F0h]
		push	edx		; rc
		push	ebx		; dc
		call	Sunkenframe
		add	esp, 0Ch
		mov	ecx, [ebp-12E4h]
		push	ecx		; int
		mov	eax, [ebp-12E8h]
		push	eax		; int
		mov	edx, [ebp-12ECh]
		push	edx		; int
		mov	ecx, [ebp-12F0h]
		push	ecx		; int
		call	CreateRectRgn
		mov	esi, eax
		push	esi		; HRGN
		push	ebx		; HDC
		call	SelectClipRgn
		push	esi		; HGDIOBJ
		call	DeleteObject
		lea	esi, [ebp-12F0h]
		lea	edi, [ebp-1290h]
		mov	ecx, 4
		rep movsd
		mov	eax, g_Pen+0Ch
		push	eax		; HGDIOBJ
		push	ebx		; HDC
		call	SelectObject
		cmp	g_IsShowtoolbar, 1
		jnz	short loc_40C245
		push	0		; LPPOINT
		mov	edx, [ebp-128Ch]
		push	edx		; int
		mov	ecx, [ebp-1290h]
		push	ecx		; int
		push	ebx		; HDC
		call	MoveToEx
		mov	eax, [ebp-128Ch]
		push	eax		; int
		mov	edx, [ebp-1288h]
		push	edx		; int
		push	ebx		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	ecx, [ebp-1284h]
		dec	ecx
		push	ecx		; int
		mov	eax, [ebp-1290h]
		push	eax		; int
		push	ebx		; HDC
		call	MoveToEx
		mov	edx, [ebp-1284h]
		dec	edx
		push	edx		; int
		mov	ecx, [ebp-1288h]
		push	ecx		; int
		push	ebx		; HDC
		call	LineTo
		inc	dword ptr [ebp-128Ch]
		dec	dword ptr [ebp-1284h]
		jmp	short loc_40C2A7
; ---------------------------------------------------------------------------

loc_40C245:				; CODE XREF: .text:0040C1DFj
		push	0		; LPPOINT
		mov	eax, [ebp-128Ch]
		push	eax		; int
		mov	edx, [ebp-1290h]
		push	edx		; int
		push	ebx		; HDC
		call	MoveToEx
		mov	ecx, [ebp-1284h]
		push	ecx		; int
		mov	eax, [ebp-1290h]
		push	eax		; int
		push	ebx		; HDC
		call	LineTo
		push	0		; LPPOINT
		mov	edx, [ebp-128Ch]
		push	edx		; int
		mov	ecx, [ebp-1288h]
		dec	ecx
		push	ecx		; int
		push	ebx		; HDC
		call	MoveToEx
		mov	eax, [ebp-1284h]
		push	eax		; int
		mov	edx, [ebp-1288h]
		dec	edx
		push	edx		; int
		push	ebx		; HDC
		call	LineTo
		inc	dword ptr [ebp-1290h]
		dec	dword ptr [ebp-1288h]

loc_40C2A7:				; CODE XREF: .text:0040C243j
		mov	edi, offset stru_50DE84
		jmp	loc_40C4D4
; ---------------------------------------------------------------------------

loc_40C2B1:				; CODE XREF: .text:0040C4D7j
		mov	esi, [edi]
		cmp	g_IsShowtoolbar, 1
		jnz	short loc_40C306
		mov	eax, [ebp-1290h]
		add	eax, 2
		mov	[ebp-1288h], eax
		jmp	short loc_40C2D7
; ---------------------------------------------------------------------------

loc_40C2CD:				; CODE XREF: .text:0040C2DBj
		add	dword ptr [ebp-1288h], 8
		add	esi, 2

loc_40C2D7:				; CODE XREF: .text:0040C2CBj
		cmp	word ptr [esi],	7Ch
		jz	short loc_40C2CD
		mov	edx, g_Brush+0Ch
		lea	ecx, [ebp-1290h]
		push	edx		; hbr
		push	ecx		; lprc
		push	ebx		; hDC
		call	FillRect
		mov	eax, [ebp-1288h]
		mov	[ebp-1290h], eax
		add	dword ptr [ebp-1288h], 12h
		jmp	short loc_40C34E
; ---------------------------------------------------------------------------

loc_40C306:				; CODE XREF: .text:0040C2BAj
		mov	edx, [ebp-128Ch]
		add	edx, 2
		mov	[ebp-1284h], edx
		jmp	short loc_40C321
; ---------------------------------------------------------------------------

loc_40C317:				; CODE XREF: .text:0040C325j
		add	dword ptr [ebp-1284h], 8
		add	esi, 2

loc_40C321:				; CODE XREF: .text:0040C315j
		cmp	word ptr [esi],	7Ch
		jz	short loc_40C317
		mov	ecx, g_Brush+0Ch
		lea	eax, [ebp-1290h]
		push	ecx		; hbr
		push	eax		; lprc
		push	ebx		; hDC
		call	FillRect
		mov	edx, [ebp-1284h]
		mov	[ebp-128Ch], edx
		add	dword ptr [ebp-1284h], 12h

loc_40C34E:				; CODE XREF: .text:0040C304j
		cmp	edi, dword_5D85D8
		jnz	short loc_40C367
		cmp	dword_5D85DC, 0
		jz	short loc_40C367
		mov	ecx, g_Pen+4
		jmp	short loc_40C36D
; ---------------------------------------------------------------------------

loc_40C367:				; CODE XREF: .text:0040C354j
					; .text:0040C35Dj
		mov	ecx, g_Pen+14h

loc_40C36D:				; CODE XREF: .text:0040C365j
		push	ecx		; HGDIOBJ
		push	ebx		; HDC
		call	SelectObject
		push	0		; LPPOINT
		mov	eax, [ebp-1284h]
		add	eax, 0FFFFFFFEh
		push	eax		; int
		mov	edx, [ebp-1290h]
		push	edx		; int
		push	ebx		; HDC
		call	MoveToEx
		mov	eax, [ebp-128Ch]
		push	eax		; int
		mov	edx, [ebp-1290h]
		push	edx		; int
		push	ebx		; HDC
		call	LineTo
		mov	ecx, [ebp-128Ch]
		push	ecx		; int
		mov	eax, [ebp-1288h]
		push	eax		; int
		push	ebx		; HDC
		call	LineTo
		cmp	edi, dword_5D85D8
		jnz	short loc_40C3CE
		cmp	dword_5D85DC, 0
		jz	short loc_40C3CE
		mov	edx, g_Pen+14h
		jmp	short loc_40C3D4
; ---------------------------------------------------------------------------

loc_40C3CE:				; CODE XREF: .text:0040C3BBj
					; .text:0040C3C4j
		mov	edx, g_Pen+4

loc_40C3D4:				; CODE XREF: .text:0040C3CCj
		push	edx		; HGDIOBJ
		push	ebx		; HDC
		call	SelectObject
		push	0		; LPPOINT
		mov	eax, [ebp-1284h]
		dec	eax
		push	eax		; int
		mov	ecx, [ebp-1290h]
		push	ecx		; int
		push	ebx		; HDC
		call	MoveToEx
		mov	eax, [ebp-1284h]
		dec	eax
		push	eax		; int
		mov	edx, [ebp-1288h]
		dec	edx
		push	edx		; int
		push	ebx		; HDC
		call	LineTo
		mov	ecx, [ebp-128Ch]
		dec	ecx
		push	ecx		; int
		mov	eax, [ebp-1288h]
		dec	eax
		push	eax		; int
		push	ebx		; HDC
		call	LineTo
		push	esi		; lpBitmapName
		mov	edx, g_hInstance
		push	edx		; hInstance
		call	LoadBitmapW
		mov	esi, eax
		push	esi		; HGDIOBJ
		mov	ecx, [ebp-1Ch]
		push	ecx		; HDC
		call	SelectObject
		mov	[ebp-20h], eax
		cmp	edi, dword_5D85D8
		jnz	short loc_40C474
		cmp	dword_5D85DC, 0
		jz	short loc_40C474
		push	0CC0020h	; DWORD
		push	0		; int
		push	0		; int
		mov	eax, [ebp-1Ch]
		push	eax		; HDC
		push	10h		; int
		push	10h		; int
		mov	edx, [ebp-128Ch]
		inc	edx
		push	edx		; int
		mov	ecx, [ebp-1290h]
		inc	ecx
		push	ecx		; int
		push	ebx		; HDC
		call	BitBlt
		jmp	short loc_40C49B
; ---------------------------------------------------------------------------

loc_40C474:				; CODE XREF: .text:0040C440j
					; .text:0040C449j
		push	0CC0020h	; DWORD
		push	1		; int
		push	1		; int
		mov	eax, [ebp-1Ch]
		push	eax		; HDC
		push	10h		; int
		push	10h		; int
		mov	edx, [ebp-128Ch]
		inc	edx
		push	edx		; int
		mov	ecx, [ebp-1290h]
		inc	ecx
		push	ecx		; int
		push	ebx		; HDC
		call	BitBlt

loc_40C49B:				; CODE XREF: .text:0040C472j
		mov	eax, [ebp-20h]
		push	eax		; HGDIOBJ
		mov	edx, [ebp-1Ch]
		push	edx		; HDC
		call	SelectObject
		push	esi		; HGDIOBJ
		call	DeleteObject
		cmp	g_IsShowtoolbar, 1
		jnz	short loc_40C4C5
		mov	ecx, [ebp-1288h]
		mov	[ebp-1290h], ecx
		jmp	short loc_40C4D1
; ---------------------------------------------------------------------------

loc_40C4C5:				; CODE XREF: .text:0040C4B5j
		mov	eax, [ebp-1284h]
		mov	[ebp-128Ch], eax

loc_40C4D1:				; CODE XREF: .text:0040C4C3j
		add	edi, 18h

loc_40C4D4:				; CODE XREF: .text:0040C2ACj
		cmp	dword ptr [edi], 0
		jnz	loc_40C2B1
		cmp	g_IsShowtoolbar, 1
		jnz	short loc_40C515
		mov	edx, [ebp-1290h]
		cmp	edx, [ebp-12E8h]
		jge	short loc_40C515
		mov	ecx, [ebp-12E8h]
		mov	[ebp-1288h], ecx
		mov	eax, g_Brush+0Ch
		push	eax		; hbr
		lea	edx, [ebp-1290h]
		push	edx		; lprc
		push	ebx		; hDC
		call	FillRect
		jmp	short loc_40C54C
; ---------------------------------------------------------------------------

loc_40C515:				; CODE XREF: .text:0040C4E4j
					; .text:0040C4F2j
		cmp	g_IsShowtoolbar, 2
		jnz	short loc_40C54C
		mov	ecx, [ebp-128Ch]
		cmp	ecx, [ebp-12E4h]
		jge	short loc_40C54C
		mov	eax, [ebp-12E4h]
		mov	[ebp-1284h], eax
		mov	edx, g_Brush+0Ch
		push	edx		; hbr
		lea	ecx, [ebp-1290h]
		push	ecx		; lprc
		push	ebx		; hDC
		call	FillRect

loc_40C54C:				; CODE XREF: .text:0040C513j
					; .text:0040C51Cj ...
		push	0		; HRGN
		push	ebx		; HDC
		call	SelectClipRgn
		mov	eax, [ebp-1Ch]
		push	eax		; HDC
		call	DeleteDC

loc_40C55D:				; CODE XREF: .text:0040C15Bj
		lea	edx, [ebp-135Ch]
		push	edx		; lpPaint
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	EndPaint
		jmp	loc_40C6A5
; ---------------------------------------------------------------------------

loc_40C572:				; CODE XREF: .text:0040A28Bj
		mov	eax, [ebp+10h]
		cmp	eax, g_cookie
		jnz	loc_40C6A5
		cmp	run.status, 0
		jz	short loc_40C5E1
		cmp	run.status, 13h
		jz	short loc_40C5E1
		cmp	run.status, 14h
		jz	short loc_40C5E1
		push	offset aYouAreGoingToC ; "You are going	to close OllyDbg. The deb"...
		call	_T
		pop	ecx
		push	eax		; format
		push	offset aProcessIsStill ; "Process is still running"
		call	_T
		pop	ecx
		push	eax		; _title
		push	offset dword_57E6A4 ; cond
		call	Condyesno
		add	esp, 0Ch
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 6
		jz	short loc_40C5E1
		push	offset aProcessIsStill ; "Process is still running"
		call	_T
		pop	ecx
		push	eax		; format
		call	Flash
		pop	ecx
		jmp	loc_40C6A5
; ---------------------------------------------------------------------------

loc_40C5E1:				; CODE XREF: .text:0040C588j
					; .text:0040C591j ...
		push	0		; lp
		push	0		; wp
		push	48Ah		; msg
		call	Broadcast
		add	esp, 0Ch
		cmp	eax, 1234h
		jz	loc_40C6A5
		xor	edx, edx
		mov	[ebp-4], edx
		jmp	short loc_40C631
; ---------------------------------------------------------------------------

loc_40C604:				; CODE XREF: .text:0040C63Aj
		mov	ecx, [ebp-4]
		push	ecx		; index
		push	offset pluginlist.sorted ; sd
		call	Getsortedbyindex
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_40C62E
		cmp	dword ptr [ebx+2CCh], 0
		jz	short loc_40C62E
		call	dword ptr [ebx+2CCh]
		test	eax, eax
		jnz	short loc_40C63C

loc_40C62E:				; CODE XREF: .text:0040C619j
					; .text:0040C622j
		inc	dword ptr [ebp-4]

loc_40C631:				; CODE XREF: .text:0040C602j
		mov	eax, [ebp-4]
		cmp	eax, pluginlist.sorted.n
		jl	short loc_40C604

loc_40C63C:				; CODE XREF: .text:0040C62Cj
		mov	edx, [ebp-4]
		cmp	edx, pluginlist.sorted.n
		jl	short loc_40C6A5
		push	0		; lp
		xor	ecx, ecx
		push	0		; wp
		push	48Ch		; msg
		mov	dword_57FE7C, ecx
		call	Broadcast
		add	esp, 0Ch
		push	0
		call	olly_reset
		pop	ecx
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	DestroyWindow
		jmp	short loc_40C6A5
; ---------------------------------------------------------------------------

loc_40C673:				; CODE XREF: .text:0040A203j
					; .text:0040A22Cj ...
		cmp	hwclient, 0
		jnz	short loc_40C68D
		push	esi		; lParam
		mov	edx, [ebp+10h]
		push	edx		; wParam
		push	ebx		; Msg
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	DefWindowProcW
		jmp	short loc_40C6A7
; ---------------------------------------------------------------------------

loc_40C68D:				; CODE XREF: .text:0040C67Aj
		push	esi		; lParam
		mov	edx, hwclient
		mov	eax, [ebp+10h]
		push	eax		; wParam
		push	ebx		; uMsg
		push	edx		; hWndMDIClient
		mov	ecx, [ebp+8]
		push	ecx		; hWnd
		call	DefFrameProcW
		jmp	short loc_40C6A7
; ---------------------------------------------------------------------------

loc_40C6A5:				; CODE XREF: .text:0040A2A4j
					; .text:0040A2D3j ...
		xor	eax, eax

loc_40C6A7:				; CODE XREF: .text:0040A5B2j
					; .text:0040A822j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------

; int __stdcall	loc_40C6B0(HWND	hWnd, UINT Msg,	WPARAM wParam, LPARAM lParam)
loc_40C6B0:				; DATA XREF: .text:0040FC77o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi
		mov	esi, [ebp+14h]
		mov	ebx, [ebp+10h]
		mov	eax, [ebp+0Ch]
		mov	edx, [ebp+8]
		cmp	lpPrevWndFunc, 0
		jnz	short loc_40C6D8
		push	esi		; lParam
		push	ebx		; wParam
		push	eax		; Msg
		push	edx		; hWnd
		call	DefWindowProcW
		jmp	short loc_40C70F
; ---------------------------------------------------------------------------

loc_40C6D8:				; CODE XREF: .text:0040C6CBj
		cmp	eax, 14h
		jnz	short loc_40C6FF
		lea	eax, [ebp-10h]
		push	eax		; lpRect
		push	edx		; hWnd
		call	GetClientRect
		mov	edx, g_Brush+10h
		lea	ecx, [ebp-10h]
		push	edx		; hbr
		push	ecx		; lprc
		push	ebx		; hDC
		call	FillRect
		mov	eax, 1
		jmp	short loc_40C70F
; ---------------------------------------------------------------------------

loc_40C6FF:				; CODE XREF: .text:0040C6DBj
		push	esi		; lParam
		push	ebx		; wParam
		push	eax		; Msg
		push	edx		; hWnd
		mov	edx, lpPrevWndFunc
		push	edx		; lpPrevWndFunc
		call	CallWindowProcW

loc_40C70F:				; CODE XREF: .text:0040C6D6j
					; .text:0040C6FDj
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

; LONG __stdcall TopLevelExceptionFilter(struct	_EXCEPTION_POINTERS *ExceptionInfo)
TopLevelExceptionFilter:		; DATA XREF: .text:loc_410126o
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 4

loc_40C721:				; CODE XREF: .text:0040C729j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_40C721
		mov	eax, [ebp-4]
		add	esp, 0FFFFF9CCh
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+8]
		test	eax, eax
		jnz	short loc_40C745
		xor	eax, eax
		jmp	loc_40CDCE
; ---------------------------------------------------------------------------

loc_40C745:				; CODE XREF: .text:0040C73Cj
		xor	edx, edx
		mov	[ebp-4], edx
		mov	ebx, [eax]
		mov	eax, [eax+4]
		mov	[ebp-10h], eax
		mov	edx, [ebx+0Ch]
		mov	[ebp-8], edx
		mov	ecx, [ebx]
		mov	[ebp-0Ch], ecx
		push	offset ollydir	; src
		push	103h		; n
		lea	eax, [ebp-4430h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	edi, eax
		test	edi, edi
		jle	short loc_40C787
		mov	word ptr [ebp+edi*2-4430h], 5Ch
		inc	edi

loc_40C787:				; CODE XREF: .text:0040C77Aj
		mov	eax, 104h
		lea	edx, [ebp-4430h]
		sub	eax, edi
		add	edi, edi
		push	offset aErrorlog_txt ; "errorlog.txt"
		push	eax		; n
		add	edi, edx
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset aAt	; "at"
		lea	ecx, [ebp-4430h]
		push	ecx		; path
		call	__wfopen
		add	esp, 8
		mov	esi, eax
		test	esi, esi
		jnz	short loc_40C7C8
		xor	eax, eax
		jmp	loc_40CDCE
; ---------------------------------------------------------------------------

loc_40C7C8:				; CODE XREF: .text:0040C7BFj
		push	offset aOllydbgExcepti ; "OLLYDBG EXCEPTION PROTOCOL\n\nThis file"...
		push	esi		; stream
		call	_fprintf
		add	esp, 8
		mov	edx, VersionInformation.dwPlatformId
		mov	ecx, VersionInformation.dwBuildNumber
		mov	eax, VersionInformation.dwMinorVersion
		push	offset VersionInformation.szCSDVersion
		push	edx
		push	ecx
		push	eax
		mov	edx, VersionInformation.dwMajorVersion
		push	edx
		push	offset aOperatingSyste ; "Operating system:   %i.%i.%i,	platform "...
		push	esi		; stream
		call	_fprintf
		add	esp, 1Ch
		push	0
		push	1
		push	2
		push	offset aOllydbgVersion ; "OllyDbg version:    %i.%02i.%02i"
		push	esi		; stream
		call	_fprintf
		add	esp, 14h
		mov	ecx, [ebp-0Ch]
		push	ecx
		push	offset aExceptionCode0 ; "\nException code:	%08X\n"
		push	esi		; stream
		call	_fprintf
		add	esp, 0Ch
		cmp	dword ptr [ebx+10h], 0
		jbe	short loc_40C879
		push	offset aParameters ; "Parameters:	 "
		push	esi		; stream
		call	_fprintf
		add	esp, 8
		xor	edi, edi
		lea	eax, [ebx+14h]
		mov	[ebp-14h], eax
		jmp	short loc_40C861
; ---------------------------------------------------------------------------

loc_40C848:				; CODE XREF: .text:0040C869j
		mov	edx, [ebp-14h]
		mov	ecx, [edx]
		push	ecx
		push	offset a08x	; " %08X"
		push	esi		; stream
		call	_fprintf
		add	esp, 0Ch
		inc	edi
		add	dword ptr [ebp-14h], 4

loc_40C861:				; CODE XREF: .text:0040C846j
		cmp	edi, [ebx+10h]
		jnb	short loc_40C86B
		cmp	edi, 0Fh
		jb	short loc_40C848

loc_40C86B:				; CODE XREF: .text:0040C864j
		push	(offset	aOllydbgExcepti+152h) ;	format
		push	esi		; stream
		call	_fprintf
		add	esp, 8

loc_40C879:				; CODE XREF: .text:0040C82Ej
		mov	eax, [ebp-8]
		push	eax
		push	offset aExceptionAddre ; "Exception address:  %08X\n"
		push	esi		; stream
		call	_fprintf
		add	esp, 0Ch
		lea	edx, [ebp-4028h]
		push	edx		; s1
		mov	ecx, [ebp-8]
		push	ecx		; int
		call	loc_4095EC
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jge	short loc_40C8B4
		push	(offset	aOllydbgExcepti+152h) ;	format
		push	esi		; stream
		call	_fprintf
		add	esp, 8
		jmp	short loc_40C8EE
; ---------------------------------------------------------------------------

loc_40C8B4:				; CODE XREF: .text:0040C8A2j
		lea	eax, [ebp-4028h]
		push	eax
		push	offset aExecutableModu ; "Executable module:  %S\n\n"
		push	esi		; stream
		call	_fprintf
		add	esp, 0Ch
		dec	ebx
		jnz	short loc_40C8EE
		lea	edx, [ebp-4028h]
		lea	ecx, [ebp-4638h]
		push	edx		; src
		push	104h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword ptr [ebp-4], 1

loc_40C8EE:				; CODE XREF: .text:0040C8B2j
					; .text:0040C8CAj
		mov	eax, [ebp-10h]
		mov	edx, [eax+0A8h]
		push	edx
		mov	ecx, [ebp-10h]
		mov	eax, [ecx+0ACh]
		push	eax
		mov	edx, [ebp-10h]
		mov	ecx, [edx+0A4h]
		push	ecx
		mov	eax, [ebp-10h]
		mov	edx, [eax+0B0h]
		push	edx
		push	offset aEax08xEbx08xEc ; "EAX=%08X  EBX=%08X  ECX=%08X	EDX=%08X\"...
		push	esi		; stream
		call	_fprintf
		add	esp, 18h
		mov	ecx, [ebp-10h]
		mov	eax, [ecx+9Ch]
		push	eax
		mov	edx, [ebp-10h]
		mov	ecx, [edx+0A0h]
		push	ecx
		mov	eax, [ebp-10h]
		mov	edx, [eax+0B4h]
		push	edx
		mov	ecx, [ebp-10h]
		mov	eax, [ecx+0C4h]
		push	eax
		push	offset aEsp08xEbp08xEs ; "ESP=%08X  EBP=%08X  ESI=%08X	EDI=%08X\"...
		push	esi		; stream
		call	_fprintf
		add	esp, 18h
		mov	edx, [ebp-10h]
		mov	ecx, [edx+0C0h]
		push	ecx
		mov	eax, [ebp-10h]
		mov	edx, [eax+0B8h]
		push	edx
		push	offset aEip08xEfl08x ; "EIP=%08X  EFL=%08X\n\n"
		push	esi		; stream
		call	_fprintf
		add	esp, 10h
		push	offset aCodeDump ; "Code dump:"
		push	esi		; stream
		call	_fprintf
		add	esp, 8
		mov	edi, [ebp-8]
		sub	edi, 40h
		jmp	short loc_40C9FC
; ---------------------------------------------------------------------------

loc_40C992:				; CODE XREF: .text:0040CA04j
		push	10h		; ucb
		push	edi		; lp
		call	IsBadReadPtr
		test	eax, eax
		jnz	short loc_40C9F9
		push	edi
		push	offset a08x_0	; "\n%08X"
		push	esi		; stream
		call	_fprintf
		add	esp, 0Ch
		mov	eax, edi
		mov	[ebp-18h], eax
		xor	ebx, ebx

loc_40C9B4:				; CODE XREF: .text:0040C9F7j
		test	bl, 3
		jnz	short loc_40C9DA
		mov	dl, 3Eh
		mov	ecx, ebx
		add	ecx, edi
		cmp	ecx, [ebp-8]
		jz	short loc_40C9C7
		add	edx, 0FFFFFFE2h

loc_40C9C7:				; CODE XREF: .text:0040C9C2j
		xor	eax, eax
		mov	al, dl
		push	eax
		push	offset aC_1	; "%c"
		push	esi		; stream
		call	_fprintf
		add	esp, 0Ch

loc_40C9DA:				; CODE XREF: .text:0040C9B7j
		mov	edx, [ebp-18h]
		xor	ecx, ecx
		mov	cl, [edx]
		push	ecx
		push	offset a02x	; " %02X"
		push	esi		; stream
		call	_fprintf
		add	esp, 0Ch
		inc	ebx
		inc	dword ptr [ebp-18h]
		cmp	ebx, 10h
		jl	short loc_40C9B4

loc_40C9F9:				; CODE XREF: .text:0040C99Cj
		add	edi, 10h

loc_40C9FC:				; CODE XREF: .text:0040C990j
		mov	eax, [ebp-8]
		add	eax, 60h
		cmp	edi, eax
		jb	short loc_40C992
		push	offset aStackDump ; "\n\nStack dump:"
		push	esi		; stream
		call	_fprintf
		add	esp, 8
		mov	edx, [ebp-10h]
		mov	edi, [edx+0C4h]
		jmp	loc_40CAAA
; ---------------------------------------------------------------------------

loc_40CA22:				; CODE XREF: .text:0040CABBj
		push	10h		; ucb
		push	edi		; lp
		call	IsBadReadPtr
		test	eax, eax
		jnz	short loc_40CAA7
		push	edi
		push	offset a08x_1	; "\n%08X  "
		push	esi		; stream
		call	_fprintf
		add	esp, 0Ch
		mov	eax, edi
		mov	[ebp-1Ch], eax
		xor	ebx, ebx

loc_40CA44:				; CODE XREF: .text:0040CA60j
		mov	edx, [ebp-1Ch]
		mov	ecx, [edx]
		push	ecx
		push	offset a08x_2	; "%08X	"
		push	esi		; stream
		call	_fprintf
		add	esp, 0Ch
		inc	ebx
		add	dword ptr [ebp-1Ch], 4
		cmp	ebx, 4
		jl	short loc_40CA44
		push	(offset	aProcessPaused+0Eh) ; "	paused"
		push	esi		; stream
		call	_fprintf
		add	esp, 8
		mov	eax, edi
		mov	[ebp-20h], eax
		xor	ebx, ebx

loc_40CA77:				; CODE XREF: .text:0040CAA5j
		mov	edx, [ebp-20h]
		xor	eax, eax
		mov	al, [edx]
		cmp	eax, 20h
		jl	short loc_40CA8A
		cmp	eax, 0FFh
		jl	short loc_40CA8F

loc_40CA8A:				; CODE XREF: .text:0040CA81j
		mov	eax, 2Eh

loc_40CA8F:				; CODE XREF: .text:0040CA88j
		push	eax
		push	offset aC_1	; "%c"
		push	esi		; stream
		call	_fprintf
		add	esp, 0Ch
		inc	ebx
		inc	dword ptr [ebp-20h]
		cmp	ebx, 10h
		jl	short loc_40CA77

loc_40CAA7:				; CODE XREF: .text:0040CA2Cj
		add	edi, 10h

loc_40CAAA:				; CODE XREF: .text:0040CA1Dj
		mov	edx, [ebp-10h]
		mov	ecx, [edx+0C4h]
		add	ecx, 200h
		cmp	edi, ecx
		jb	loc_40CA22
		push	offset aStackWalk ; "\n\nStack walk:"
		push	esi		; stream
		call	_fprintf
		add	esp, 8
		mov	eax, [ebp-10h]
		mov	edi, [eax+0B4h]

loc_40CAD8:				; CODE XREF: .text:0040CBB8j
		push	30h		; ucb
		mov	ebx, edi
		push	ebx		; lp
		call	IsBadReadPtr
		test	eax, eax
		jnz	loc_40CBBD
		cmp	edi, [ebx]
		jnb	loc_40CBBD
		push	edi
		push	offset a08x_1	; "\n%08X  "
		push	esi		; stream
		call	_fprintf
		add	esp, 0Ch
		mov	eax, edi
		mov	[ebp-24h], eax
		xor	ebx, ebx

loc_40CB08:				; CODE XREF: .text:0040CB24j
		mov	edx, [ebp-24h]
		mov	ecx, [edx]
		push	ecx
		push	offset a08x_2	; "%08X	"
		push	esi		; stream
		call	_fprintf
		add	esp, 0Ch
		inc	ebx
		add	dword ptr [ebp-24h], 4
		cmp	ebx, 6
		jl	short loc_40CB08
		push	offset asc_51142A ; "\n		 "
		push	esi		; stream
		call	_fprintf
		lea	eax, [edi+18h]
		add	esp, 8
		mov	[ebp-28h], eax
		mov	ebx, 6

loc_40CB3F:				; CODE XREF: .text:0040CB5Bj
		mov	edx, [ebp-28h]
		mov	ecx, [edx]
		push	ecx
		push	offset a08x_2	; "%08X	"
		push	esi		; stream
		call	_fprintf
		add	esp, 0Ch
		inc	ebx
		add	dword ptr [ebp-28h], 4
		cmp	ebx, 0Ch
		jl	short loc_40CB3F
		lea	eax, [ebp-4028h]
		push	eax		; s1
		mov	edx, [edi+4]
		push	edx		; int
		call	loc_4095EC
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jl	short loc_40CBB6
		lea	eax, [ebp-4028h]
		push	eax
		push	offset aS_2	; "\n	       (%S)"
		push	esi		; stream
		call	_fprintf
		add	esp, 0Ch
		dec	ebx
		jnz	short loc_40CBB6
		cmp	dword ptr [ebp-4], 0
		jnz	short loc_40CBB6
		lea	edx, [ebp-4028h]
		lea	ecx, [ebp-4638h]
		push	edx		; src
		push	104h		; n
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	dword ptr [ebp-4], 1

loc_40CBB6:				; CODE XREF: .text:0040CB74j
					; .text:0040CB8Cj ...
		mov	edi, [edi]
		jmp	loc_40CAD8
; ---------------------------------------------------------------------------

loc_40CBBD:				; CODE XREF: .text:0040CAE4j
					; .text:0040CAECj
		push	offset aSettings_0 ; "\n\n[Settings]\n"
		push	esi		; stream
		call	_fprintf
		add	esp, 8
		lea	eax, [ebp-4028h]
		push	offset FileName	; lpFileName
		push	2000h		; nSize
		push	eax		; lpReturnedString
		push	$CTW0("") ; lpDefault
		push	0		; lpKeyName
		push	offset AppName	; "Settings"
		call	GetPrivateProfileStringW
		mov	edi, eax
		xor	ebx, ebx
		jmp	short loc_40CC56
; ---------------------------------------------------------------------------

loc_40CBF3:				; CODE XREF: .text:0040CC63j
		push	offset FileName	; lpFileName
		lea	eax, [ebp-4228h]
		mov	edx, ebx
		push	100h		; nSize
		push	eax		; lpReturnedString
		lea	ecx, [ebp-4028h]
		add	edx, edx
		push	(offset	aYouAreGoingToC+116h) ;	lpDefault
		add	edx, ecx
		push	edx		; lpKeyName
		push	offset AppName	; "Settings"
		call	GetPrivateProfileStringW
		mov	edx, ebx
		lea	eax, [ebp-4228h]
		lea	ecx, [ebp-4028h]
		add	edx, edx
		add	edx, ecx
		push	eax
		push	edx
		push	offset aSS	; "%S=%S\n"
		push	esi		; stream
		call	_fprintf
		add	esp, 10h
		lea	eax, [ebp+ebx*2-4028h]
		jmp	short loc_40CC4F
; ---------------------------------------------------------------------------

loc_40CC4B:				; CODE XREF: .text:0040CC53j
		inc	ebx
		add	eax, 2

loc_40CC4F:				; CODE XREF: .text:0040CC49j
		cmp	word ptr [eax],	0
		jnz	short loc_40CC4B
		inc	ebx

loc_40CC56:				; CODE XREF: .text:0040CBF1j
		cmp	edi, ebx
		jle	short loc_40CC65
		cmp	word ptr [ebp+ebx*2-4028h], 0
		jnz	short loc_40CBF3

loc_40CC65:				; CODE XREF: .text:0040CC58j
		cmp	dword_57DD48, 0
		jz	short loc_40CC99
		push	offset aCorruptedMemor ; "\nCorrupted memory blocks:\n"
		push	esi		; stream
		call	_fprintf
		add	esp, 8
		push	0		; int
		push	esi		; stream
		call	loc_403A6C
		add	esp, 8
		test	eax, eax
		jnz	short loc_40CC99
		push	offset aNone_	; "None.\n"
		push	esi		; stream
		call	_fprintf
		add	esp, 8

loc_40CC99:				; CODE XREF: .text:0040CC6Cj
					; .text:0040CC89j
		push	offset asc_51148F ; "\n-------------------------------------"...
		push	esi		; stream
		call	_fprintf
		add	esp, 8
		push	esi		; stream
		call	_fclose
		pop	ecx
		mov	edx, [ebp-8]
		push	edx
		lea	eax, [ebp-4028h]
		mov	ecx, [ebp-0Ch]
		push	ecx
		push	offset aOopsOllydbgWil ; "Oops!	OllyDbg	will terminate due to exc"...
		push	eax		; buffer
		call	_swprintf
		add	esp, 10h
		mov	edi, eax
		cmp	dword ptr [ebp-4], 0
		jz	short loc_40CD40
		mov	edx, edi
		mov	eax, 1FF6h
		sub	eax, edi
		lea	ecx, [ebp-4028h]
		add	edx, edx
		push	offset aMostProbablyTh ; "Most probably, this error occured insid"...
		push	eax		; n
		add	edx, ecx
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		lea	eax, [ebp-4638h]
		mov	ecx, edi
		push	eax		; src
		mov	edx, 1FF6h
		sub	edx, edi
		lea	eax, [ebp-4028h]
		add	ecx, ecx
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		mov	ecx, edi
		mov	edx, 1FF6h
		sub	edx, edi
		lea	eax, [ebp-4028h]
		add	ecx, ecx
		push	offset a_TryToRemoveIt ; "'. Try to remove it and restart OllyDbg"...
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax

loc_40CD40:				; CODE XREF: .text:0040CCD0j
		mov	ecx, edi
		mov	edx, 1FF6h
		sub	edx, edi
		lea	eax, [ebp-4028h]
		add	ecx, ecx
		push	offset aFile_0	; "File	'"
		push	edx		; n
		add	ecx, eax
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		lea	edx, [ebp-4430h]
		mov	eax, edi
		push	edx		; src
		mov	ecx, 1FF6h
		sub	ecx, edi
		lea	edx, [ebp-4028h]
		add	eax, eax
		push	ecx		; n
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	edi, eax
		mov	ecx, 1FF6h
		lea	eax, [ebp-4028h]
		sub	ecx, edi
		add	edi, edi
		push	offset aContainsImport ; "' contains important information that m"...
		push	ecx		; n
		add	edi, eax
		push	edi		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, [ebp-4028h]
		mov	ecx, hwollymain
		push	10h		; uType
		push	offset aQuisCustodietI ; "Quis custodiet ipsos custodes?"
		push	edx		; lpText
		push	ecx		; hWnd
		call	MessageBoxW
		push	0		; status
		call	_exit
; ---------------------------------------------------------------------------
		pop	ecx
		xor	eax, eax

loc_40CDCE:				; CODE XREF: .text:0040C740j
					; .text:0040C7C3j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_40CDD8(LPCWSTR lpFileName, int)
loc_40CDD8:				; CODE XREF: .text:0040B5E4p
					; .text:00410671p ...
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFD68h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		test	edi, edi
		jz	short loc_40CDF4
		cmp	word ptr [edi],	0
		jnz	short loc_40CDF9

loc_40CDF4:				; CODE XREF: .text:0040CDECj
		mov	edi, offset FileName

loc_40CDF9:				; CODE XREF: .text:0040CDF2j
		cmp	ischild, 0
		jz	short loc_40CE0A
		test	esi, esi
		jnz	loc_40D262

loc_40CE0A:				; CODE XREF: .text:0040CE00j
		test	esi, esi
		jnz	short loc_40CE1C
		push	offset _section	; "History"
		push	edi		; file
		call	Deleteinisection
		add	esp, 8

loc_40CE1C:				; CODE XREF: .text:0040CE0Cj
		mov	ebx, offset stru_50EB8C
		jmp	short loc_40CE79
; ---------------------------------------------------------------------------

loc_40CE23:				; CODE XREF: .text:0040CE7Dj
		push	eax		; src
		push	104h		; n
		lea	eax, [ebp-298h]
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		cmp	dword ptr [ebx+4], 0
		jz	short loc_40CE4B
		lea	edx, [ebp-298h]
		push	edx		; path
		call	Relativizepath
		pop	ecx

loc_40CE4B:				; CODE XREF: .text:0040CE3Cj
		test	esi, esi
		jnz	short loc_40CE66
		mov	ecx, [ebx+0Ch]
		push	ecx		; s2
		lea	eax, [ebp-298h]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_40CE76

loc_40CE66:				; CODE XREF: .text:0040CE4Dj
		mov	edx, [ebx]
		push	edx		; arglist
		mov	ecx, [ebx+8]
		push	ecx		; lpKeyName
		push	edi		; lpFileName
		call	loc_4028C0
		add	esp, 0Ch

loc_40CE76:				; CODE XREF: .text:0040CE64j
		add	ebx, 10h

loc_40CE79:				; CODE XREF: .text:0040CE21j
		mov	eax, [ebx]
		test	eax, eax
		jnz	short loc_40CE23
		mov	dword ptr [ebp-0Ch], offset word_5D3A64
		xor	ebx, ebx

loc_40CE88:				; CODE XREF: .text:0040CEFEj
		test	esi, esi
		jnz	short loc_40CE95
		mov	eax, [ebp-0Ch]
		cmp	word ptr [eax],	0
		jz	short loc_40CEF3

loc_40CE95:				; CODE XREF: .text:0040CE8Aj
		push	ebx
		push	offset aDebugDataDirec ; "Debug	data directory[%i]"
		lea	edx, [ebp-90h]
		push	edx		; buffer
		call	_swprintf
		mov	ecx, ebx
		add	esp, 0Ch
		shl	ecx, 6
		lea	eax, [ebp-298h]
		add	ecx, ebx
		shl	ecx, 3
		add	ecx, offset word_5D3A64
		push	ecx		; src
		push	104h		; n
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	edx, [ebp-298h]
		push	edx		; path
		call	Relativizepath
		pop	ecx
		lea	eax, [ebp-90h]
		lea	ecx, [ebp-298h]
		push	ecx		; arglist
		push	eax		; lpKeyName
		push	edi		; lpFileName
		call	loc_4028C0
		add	esp, 0Ch

loc_40CEF3:				; CODE XREF: .text:0040CE93j
		inc	ebx
		add	dword ptr [ebp-0Ch], 208h
		cmp	ebx, 3
		jl	short loc_40CE88
		test	esi, esi
		jnz	short loc_40CF12
		push	offset AppName	; "Settings"
		push	edi		; file
		call	Deleteinisection
		add	esp, 8

loc_40CF12:				; CODE XREF: .text:0040CF02j
		mov	ebx, offset stru_50E0F4
		jmp	short loc_40CF45
; ---------------------------------------------------------------------------

loc_40CF19:				; CODE XREF: .text:0040CF48j
		test	esi, esi
		jnz	short loc_40CF26
		mov	eax, [ebx]
		mov	edx, [eax]
		cmp	edx, [ebx+8]
		jz	short loc_40CF42

loc_40CF26:				; CODE XREF: .text:0040CF1Bj
		mov	ecx, [ebx]
		mov	eax, [ecx]
		push	eax		; arglist
		push	(offset	aIIIII+18h) ; format
		mov	edx, [ebx+4]
		push	edx		; key
		push	offset AppName	; "Settings"
		push	edi		; file
		call	Writetoini
		add	esp, 14h

loc_40CF42:				; CODE XREF: .text:0040CF24j
		add	ebx, 0Ch

loc_40CF45:				; CODE XREF: .text:0040CF17j
		cmp	dword ptr [ebx], 0
		jnz	short loc_40CF19
		push	offset aPauseOnModule ;	_section
		push	edi		; file
		call	Deleteinisection
		add	esp, 8
		xor	ebx, ebx
		mov	dword ptr [ebp-10h], offset word_5C8AA4

loc_40CF61:				; CODE XREF: .text:0040CFB5j
		mov	eax, [ebp-10h]
		cmp	word ptr [eax],	0
		jz	short loc_40CFB7
		push	ebx
		push	offset aModuleI	; format
		lea	edx, [ebp-90h]
		push	edx		; buffer
		call	_swprintf
		mov	ecx, ebx
		add	esp, 0Ch
		shl	ecx, 6
		lea	eax, [ebp-90h]
		add	ecx, ebx
		shl	ecx, 3
		add	ecx, offset word_5C8AA4
		push	ecx		; arglist
		push	$CTW0("%s")	; "%s"
		push	eax		; key
		push	offset aPauseOnModule ;	_section
		push	edi		; file
		call	Writetoini
		add	esp, 14h
		inc	ebx
		add	dword ptr [ebp-10h], 208h
		cmp	ebx, 18h
		jl	short loc_40CF61

loc_40CFB7:				; CODE XREF: .text:0040CF68j
		push	offset aIgnoredExcepti ; "Ignored exceptions"
		push	edi		; file
		call	Deleteinisection
		add	esp, 8
		xor	ebx, ebx

loc_40CFC7:				; CODE XREF: .text:0040D01Cj
		lea	eax, [ebp-8]
		push	eax		; rmax
		lea	edx, [ebp-4]
		push	edx		; rmin
		push	ebx		; index
		push	offset set	; set
		call	Getrangebyindex
		add	esp, 10h
		test	eax, eax
		jz	short loc_40D01E
		push	ebx
		push	offset aRangeI	; format
		lea	ecx, [ebp-90h]
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	eax, [ebp-8]
		lea	ecx, [ebp-90h]
		push	eax
		mov	edx, [ebp-4]
		push	edx		; arglist
		push	offset aLxLx	; format
		push	ecx		; key
		push	offset aIgnoredExcepti ; "Ignored exceptions"
		push	edi		; file
		call	Writetoini
		add	esp, 18h
		inc	ebx
		cmp	ebx, 1Fh
		jl	short loc_40CFC7

loc_40D01E:				; CODE XREF: .text:0040CFDFj
		test	esi, esi
		jz	loc_40D262
		push	offset word_57FA28 ; arglist
		push	$CTW0("%s"); "%s"
		push	offset aPreviousJit ; key
		push	offset _section	; "History"
		push	edi		; file
		call	Writetoini
		add	esp, 14h
		mov	ebx, 14h
		mov	esi, (offset color+50h)

loc_40D04D:				; CODE XREF: .text:0040D0ABj
		cmp	dword ptr [esi], 0
		jz	short loc_40D0A4
		lea	eax, [ebx-14h]
		lea	edx, [ebp-90h]
		push	eax
		push	offset aCustomColourI ;	"Custom	colour[%i]"
		push	edx		; buffer
		call	_swprintf
		mov	eax, [esi]
		add	esp, 0Ch
		mov	edx, eax
		mov	ecx, eax
		shr	edx, 10h
		shr	ecx, 8
		and	edx, 0FFh
		and	ecx, 0FFh
		push	edx
		push	ecx
		and	eax, 0FFh
		push	eax		; arglist
		lea	eax, [ebp-90h]
		push	(offset	aIIIII+0Ch) ; format
		push	eax		; key
		push	offset aCustomColours ;	"Custom	colours"
		push	edi		; file
		call	Writetoini
		add	esp, 1Ch

loc_40D0A4:				; CODE XREF: .text:0040D050j
		inc	ebx
		add	esi, 4
		cmp	ebx, 24h
		jl	short loc_40D04D
		push	offset aColourSchemes ;	"Colour	schemes"
		push	edi		; file
		call	Deleteinisection
		add	esp, 8
		xor	ebx, ebx

loc_40D0BD:				; CODE XREF: .text:0040D0F6j
		lea	eax, [ebx+ebx*2]
		lea	edx, [ebx+ebx*2]
		push	ebx		; int
		push	offset aColourSchemes ;	"Colour	schemes"
		lea	eax, [ebx+eax*8]
		lea	edx, [ebx+edx*8]
		push	edi		; lpFileName
		lea	eax, [ebx+eax*4]
		shl	eax, 3
		lea	edx, [ebx+edx*4]
		shl	edx, 3
		add	eax, offset tmpscheme ;	int
		push	eax		; int
		add	edx, offset scheme ; int
		push	edx		; arglist
		call	loc_411A3C
		add	esp, 14h
		inc	ebx
		cmp	ebx, 8
		jl	short loc_40D0BD
		push	offset aHighlightingSc ; "Highlighting schemes"
		push	edi		; file
		call	Deleteinisection
		add	esp, 8
		mov	ebx, 1

loc_40D10B:				; CODE XREF: .text:0040D144j
		lea	eax, [ebx+ebx*2]
		lea	edx, [ebx+ebx*2]
		push	ebx		; int
		push	offset aHighlightingSc ; "Highlighting schemes"
		lea	eax, [ebx+eax*8]
		lea	edx, [ebx+edx*8]
		push	edi		; lpFileName
		lea	eax, [ebx+eax*4]
		shl	eax, 3
		lea	edx, [ebx+edx*4]
		shl	edx, 3
		add	eax, offset tmphilite ;	int
		push	eax		; int
		add	edx, offset hilite ; int
		push	edx		; arglist
		call	loc_411A3C
		add	esp, 14h
		inc	ebx
		cmp	ebx, 8
		jl	short loc_40D10B
		push	offset aFonts_1	; "Fonts"
		push	edi		; file
		call	Deleteinisection
		add	esp, 8
		xor	ebx, ebx
		mov	esi, offset font

loc_40D15B:				; CODE XREF: .text:0040D251j
		push	ebx
		push	offset aFontNameI ; format
		lea	eax, [ebp-90h]
		push	eax		; buffer
		call	_swprintf
		lea	edx, [ebx+ebx*4]
		add	esp, 0Ch
		shl	edx, 5
		lea	ecx, [ebp-90h]
		sub	edx, ebx
		shl	edx, 2
		add	edx, offset font._name
		push	edx		; arglist
		push	$CTW0("%s")	; "%s"
		push	ecx		; key
		push	offset aFonts_1	; "Fonts"
		push	edi		; file
		call	Writetoini
		add	esp, 14h
		lea	eax, [ebp-90h]
		push	ebx
		push	offset aFontDataI ; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	edx, [esi+5Ch]
		push	edx
		xor	edx, edx
		mov	ecx, [esi+64h]
		push	ecx
		xor	ecx, ecx
		mov	eax, [esi+60h]
		push	eax
		xor	eax, eax
		mov	dl, [esi+1Bh]
		push	edx
		xor	edx, edx
		mov	cl, [esi+1Ah]
		push	ecx
		xor	ecx, ecx
		mov	al, [esi+17h]
		push	eax
		xor	eax, eax
		mov	dl, [esi+16h]
		push	edx
		mov	cl, [esi+15h]
		push	ecx
		mov	al, [esi+14h]
		push	eax
		mov	edx, [esi+10h]
		push	edx
		lea	edx, [ebp-90h]
		mov	ecx, [esi+4]
		push	ecx
		mov	eax, [esi]
		push	eax		; arglist
		push	offset aIIIIIIIIIIII ; "%i,%i,%i,%i,%i,%i,%i,%i,%i,%i,%i,%i"
		push	edx		; key
		push	offset aFonts_1	; "Fonts"
		push	edi		; file
		call	Writetoini
		add	esp, 40h
		lea	ecx, [ebp-90h]
		push	ebx
		push	offset aFaceNameI ; format
		push	ecx		; buffer
		call	_swprintf
		lea	eax, [ebx+ebx*4]
		add	esp, 0Ch
		shl	eax, 5
		lea	edx, [ebp-90h]
		sub	eax, ebx
		shl	eax, 2
		add	eax, offset font.logfont.lfFaceName
		push	eax		; arglist
		push	$CTW0("%s")	; "%s"
		push	edx		; key
		push	offset aFonts_1	; "Fonts"
		push	edi		; file
		call	Writetoini
		add	esp, 14h
		inc	ebx
		add	esi, 27Ch
		cmp	ebx, 8
		jl	loc_40D15B
		push	0		; int
		push	edi		; lpFileName
		call	loc_424780
		add	esp, 8

loc_40D262:				; CODE XREF: .text:0040CE04j
					; .text:0040D020j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_40D26C:				; CODE XREF: .text:0040B507p
					; .text:0040E2F2p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFF54h
		push	ebx
		push	esi
		mov	esi, [ebp+8]	
		test	esi, esi
		jz	short loc_40D28A
		cmp	word ptr [esi],	0
		jnz	short loc_40D298

loc_40D28A:				; CODE XREF: .text:0040D282j
		mov	dword ptr [ebp-8], 1
		mov	esi, offset FileName
		jmp	short loc_40D29D
; ---------------------------------------------------------------------------

loc_40D298:				; CODE XREF: .text:0040D288j
		xor	eax, eax
		mov	[ebp-8], eax

loc_40D29D:				; CODE XREF: .text:0040D296j
		mov	ebx, offset stru_50EB8C
		jmp	short loc_40D2FC
; ---------------------------------------------------------------------------

loc_40D2A4:				; CODE XREF: .text:0040D300j
		mov	edx, [ebx+0Ch]
		push	edx		; lpDefault
		push	eax		; int
		mov	eax, [ebx+8]
		push	eax		; lpKeyName
		push	esi		; lpFileName
		call	loc_4026D4
		add	esp, 10h
		cmp	dword ptr [ebx+4], 0
		jz	short loc_40D2C5
		mov	ecx, [ebx]
		push	ecx		; path
		call	Absolutizepath
		pop	ecx

loc_40D2C5:				; CODE XREF: .text:0040D2BAj
		mov	eax, [ebx+0Ch]
		cmp	word ptr [eax],	2Eh
		jnz	short loc_40D2F9
		cmp	_imp__PathIsDirectoryW,	0
		jz	short loc_40D2F9
		mov	edx, [ebx]
		push	edx		; _DWORD
		call	_imp__PathIsDirectoryW
		test	eax, eax
		jnz	short loc_40D2F9
		push	offset ollydir	; src
		push	104h		; n
		mov	ecx, [ebx]
		push	ecx		; dest
		call	StrcopyW
		add	esp, 0Ch

loc_40D2F9:				; CODE XREF: .text:0040D2CCj
					; .text:0040D2D5j ...
		add	ebx, 10h

loc_40D2FC:				; CODE XREF: .text:0040D2A2j
		mov	eax, [ebx]
		test	eax, eax
		jnz	short loc_40D2A4
		cmp	_imp__PathFileExistsW, 0
		jz	short loc_40D323
		push	offset path
		call	_imp__PathFileExistsW
		test	eax, eax
		jnz	short loc_40D323
		mov	path, 0

loc_40D323:				; CODE XREF: .text:0040D309j
					; .text:0040D318j
		cmp	dword ptr [ebp-8], 0
		jz	short loc_40D346
		push	204h		; length
		push	offset word_57FA28 ; s
		lea	edx, aPreviousJit
		push	edx		; key
		lea	ecx, _section
		push	ecx		; _section
		call	Stringfromini
		add	esp, 10h

loc_40D346:				; CODE XREF: .text:0040D327j
		mov	dword ptr [ebp-18h], offset word_5D3A64
		xor	ebx, ebx

loc_40D34F:				; CODE XREF: .text:0040D3D9j
		push	ebx
		lea	eax, aDebugDataDirec
		push	eax		; format
		lea	edx, [ebp-98h]
		push	edx		; buffer
		call	_swprintf
		mov	eax, ebx
		add	esp, 0Ch
		shl	eax, 6
		lea	ecx, $CTW0("")
		add	eax, ebx
		push	ecx		; lpDefault
		shl	eax, 3
		lea	edx, [ebp-98h]
		add	eax, offset word_5D3A64
		push	eax		; int
		push	edx		; lpKeyName
		push	esi		; lpFileName
		call	loc_4026D4
		add	esp, 10h
		mov	ecx, ebx
		shl	ecx, 6
		add	ecx, ebx
		shl	ecx, 3
		add	ecx, offset word_5D3A64
		push	ecx		; path
		call	Absolutizepath
		pop	ecx
		cmp	_imp__PathIsDirectoryW,	0
		jz	short loc_40D3CE
		mov	eax, ebx
		shl	eax, 6
		add	eax, ebx
		shl	eax, 3
		add	eax, offset word_5D3A64
		push	eax		; _DWORD
		call	_imp__PathIsDirectoryW
		test	eax, eax
		jnz	short loc_40D3CE
		mov	edx, [ebp-18h]
		mov	word ptr [edx],	0

loc_40D3CE:				; CODE XREF: .text:0040D3A9j
					; .text:0040D3C4j
		inc	ebx
		add	dword ptr [ebp-18h], 208h
		cmp	ebx, 3
		jl	loc_40D34F
		mov	ebx, offset stru_50E0F4
		jmp	short loc_40D41B
; ---------------------------------------------------------------------------

loc_40D3E6:				; CODE XREF: .text:0040D41Ej
		lea	eax, [ebp-0Ch]
		lea	edx, $CTW0("%i")
		push	eax		; arglist
		push	edx		; format
		mov	ecx, [ebx+4]
		lea	eax, $CTW0("Settings")
		push	ecx		; key
		push	eax		; _section
		push	esi		; file
		call	Getfromini
		add	esp, 14h
		dec	eax
		jz	short loc_40D411
		mov	edx, [ebx+8]
		mov	ecx, [ebx]
		mov	[ecx], edx
		jmp	short loc_40D418
; ---------------------------------------------------------------------------

loc_40D411:				; CODE XREF: .text:0040D406j
		mov	eax, [ebx]
		mov	edx, [ebp-0Ch]
		mov	[eax], edx

loc_40D418:				; CODE XREF: .text:0040D40Fj
		add	ebx, 0Ch

loc_40D41B:				; CODE XREF: .text:0040D3E4j
		cmp	dword ptr [ebx], 0
		jnz	short loc_40D3E6
		mov	ecx, dword_5BE6E8
		push	ecx
		call	loc_4971F4
		pop	ecx
		mov	eax, g_GuiLuguage
		push	eax
		call	loc_4DEDBC
		pop	ecx
		mov	eax, fi
		test	eax, eax
		jl	short loc_40D447
		cmp	eax, 8
		jl	short loc_40D451

loc_40D447:				; CODE XREF: .text:0040D440j
		mov	fi, 1

loc_40D451:				; CODE XREF: .text:0040D445j
		mov	eax, dword_582DF0
		test	eax, eax
		jl	short loc_40D45F
		cmp	eax, 8
		jl	short loc_40D469

loc_40D45F:				; CODE XREF: .text:0040D458j
		mov	dword_582DF0, 3

loc_40D469:				; CODE XREF: .text:0040D45Dj
		mov	eax, g_Color_index
		test	eax, eax
		jl	short loc_40D477
		cmp	eax, 8
		jl	short loc_40D47F

loc_40D477:				; CODE XREF: .text:0040D470j
		xor	edx, edx
		mov	g_Color_index, edx

loc_40D47F:				; CODE XREF: .text:0040D475j
		mov	eax, dword_5CBB70
		test	eax, eax
		jl	short loc_40D48D
		cmp	eax, 8
		jle	short loc_40D497

loc_40D48D:				; CODE XREF: .text:0040D486j
		mov	dword_5CBB70, 2

loc_40D497:				; CODE XREF: .text:0040D48Bj
		mov	eax, dword_5BE478
		test	eax, eax
		jl	short loc_40D4A5
		cmp	eax, 8
		jle	short loc_40D4AF

loc_40D4A5:				; CODE XREF: .text:0040D49Ej
		mov	dword_5BE478, 2

loc_40D4AF:				; CODE XREF: .text:0040D4A3j
		mov	eax, dword_5CBB90
		test	eax, eax
		jl	short loc_40D4BD
		cmp	eax, 6
		jle	short loc_40D4C5

loc_40D4BD:				; CODE XREF: .text:0040D4B6j
		xor	edx, edx
		mov	dword_5CBB90, edx

loc_40D4C5:				; CODE XREF: .text:0040D4BBj
		cmp	dword_57FE64, 2
		jnz	short loc_40D4E1
		cmp	g_IsShowtoolbar, 2
		jnz	short loc_40D4E1
		mov	g_IsShowtoolbar, 1

loc_40D4E1:				; CODE XREF: .text:0040D4CCj
					; .text:0040D4D5j
		cmp	dword_5CBBC4, 0
		jnz	short loc_40D4F2
		xor	ecx, ecx
		mov	dword_5CBBC8, ecx

loc_40D4F2:				; CODE XREF: .text:0040D4E8j
		cmp	asciicodepage, 0
		jnz	short loc_40D532
		call	GetACP
		mov	asciicodepage, eax
		mov	eax, asciicodepage
		test	eax, eax
		jz	short loc_40D528
		lea	edx, [ebp-0ACh]
		push	edx		; lpCPInfo
		push	eax		; CodePage
		call	GetCPInfo
		test	eax, eax
		jz	short loc_40D528
		cmp	dword ptr [ebp-0ACh], 1
		jz	short loc_40D532

loc_40D528:				; CODE XREF: .text:0040D50Cj
					; .text:0040D51Dj
		mov	asciicodepage, 4E4h

loc_40D532:				; CODE XREF: .text:0040D4F9j
					; .text:0040D526j
		cmp	mbcscodepage, 0
		jnz	short loc_40D545
		mov	mbcscodepage, 0FDE9h

loc_40D545:				; CODE XREF: .text:0040D539j
		push	30C0h		; n
		push	0		; c
		push	offset word_5C8AA4 ; s
		call	_memset
		add	esp, 0Ch
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	ebx, ecx
		cmp	ebx, 18h
		jge	short loc_40D5B9

loc_40D565:				; CODE XREF: .text:0040D5B7j
		push	ebx
		lea	eax, aModuleI
		push	eax		; format
		lea	edx, [ebp-98h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-98h]
		push	104h		; int
		mov	ecx, [ebp-4]
		mov	eax, ecx
		shl	ecx, 6
		add	ecx, eax
		shl	ecx, 3
		add	ecx, offset word_5C8AA4
		push	ecx		; int
		lea	ecx, aPauseOnModule
		push	edx		; lpKeyName
		push	ecx		; lpAppName
		push	esi		; lpFileName
		call	loc_402658
		add	esp, 14h
		test	eax, eax
		jz	short loc_40D5B3
		inc	dword ptr [ebp-4]

loc_40D5B3:				; CODE XREF: .text:0040D5AEj
		inc	ebx
		cmp	ebx, 18h
		jl	short loc_40D565

loc_40D5B9:				; CODE XREF: .text:0040D563j
		push	20h		; nmax
		push	offset set	; set
		call	Initset
		add	esp, 8
		xor	ebx, ebx

loc_40D5CA:				; CODE XREF: .text:0040D62Dj
		push	ebx
		lea	eax, aRangeI
		push	eax		; format
		lea	edx, [ebp-98h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	ecx, [ebp-14h]
		lea	eax, [ebp-10h]
		lea	edx, aLxLx
		push	ecx
		push	eax		; arglist
		push	edx		; format
		lea	ecx, [ebp-98h]
		push	ecx		; key
		lea	eax, aIgnoredExcepti
		push	eax		; _section
		push	esi		; file
		call	Getfromini
		add	esp, 18h
		cmp	eax, 2
		jnz	short loc_40D629
		mov	edx, [ebp-10h]
		cmp	edx, [ebp-14h]
		ja	short loc_40D629
		mov	ecx, [ebp-14h]
		push	ecx		; rmax
		mov	eax, [ebp-10h]
		push	eax		; rmin
		push	offset set	; set
		call	Addrange
		add	esp, 0Ch

loc_40D629:				; CODE XREF: .text:0040D60Aj
					; .text:0040D612j
		inc	ebx
		cmp	ebx, 1Fh
		jl	short loc_40D5CA
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
