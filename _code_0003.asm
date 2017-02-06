.code

; int __cdecl loc_4012C0(HWND hWnd, HGDIOBJ, int X, int, int, int)
loc_4012C0:				; CODE XREF: .text:00401EEBp
					; .text:00402296p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFD94h
		push	ebx
		push	esi
		push	edi
		lea	edi, [ebp-10h]
		cmp	dword ptr [ebp+8], 0
		mov	esi, offset dword_57D960
		jz	loc_40155A
		cmp	dword ptr [ebp+18h], 0
		jz	loc_40155A
		cmp	dword ptr [ebp+1Ch], 0
		jz	loc_40155A
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	GetDC
		mov	[ebp-1Ch], eax
		mov	edx, [ebp+0Ch]
		push	edx		; HGDIOBJ
		mov	ecx, [ebp-1Ch]
		push	ecx		; HDC
		call	SelectObject
		lea	eax, [ebp-230h]
		push	eax		; lpRect
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	GetWindowRect
		lea	ecx, [ebp-230h]
		push	ecx		; rc
		mov	eax, [ebp-22Ch]
		add	eax, [ebp-224h]
		sar	eax, 1
		jns	short loc_401335
		adc	eax, 0

loc_401335:				; CODE XREF: .text:00401330j
		push	eax		; y
		mov	edx, [ebp-230h]
		add	edx, [ebp-228h]
		sar	edx, 1
		jns	short loc_401349
		adc	edx, 0

loc_401349:				; CODE XREF: .text:00401344j
		push	edx		; x
		call	Getmonitorrect
		add	esp, 0Ch
		mov	eax, [ebp-228h]
		sub	eax, [ebp-230h]
		shl	eax, 2
		mov	ecx, 5
		cdq
		idiv	ecx
		add	eax, 0FFFFFFF6h
		mov	[ebp-8], eax
		mov	eax, [ebp-224h]
		sub	eax, [ebp-22Ch]
		shl	eax, 2
		mov	ecx, 5
		cdq
		idiv	ecx
		mov	[ebp-0Ch], eax
		lea	eax, [ebp-26Ch]
		push	eax		; LPTEXTMETRICW
		mov	edx, [ebp-1Ch]
		push	edx		; HDC
		call	GetTextMetricsW
		test	eax, eax
		jz	short loc_4013C4
		mov	ecx, [ebp-258h]
		shl	ecx, 3
		lea	ecx, [ecx+ecx*2]
		lea	ecx, [ecx+ecx*4]
		mov	[ebp-20h], ecx
		mov	eax, [ebp-8]
		cmp	eax, [ebp-20h]
		jge	short loc_4013BC
		lea	edx, [ebp-8]
		jmp	short loc_4013BF
; ---------------------------------------------------------------------------

loc_4013BC:				; CODE XREF: .text:004013B5j
		lea	edx, [ebp-20h]

loc_4013BF:				; CODE XREF: .text:004013BAj
		mov	eax, [edx]
		mov	[ebp-8], eax

loc_4013C4:				; CODE XREF: .text:0040139Bj
		mov	ecx, [esi]
		push	ecx		; s
		call	_wcslen
		pop	ecx
		mov	[ebp-4], eax
		xor	ebx, ebx
		jmp	loc_40153F
; ---------------------------------------------------------------------------

loc_4013D7:				; CODE XREF: .text:00401547j
		mov	eax, [esi]
		lea	eax, [eax+ebx*2]
		jmp	short loc_4013E2
; ---------------------------------------------------------------------------

loc_4013DE:				; CODE XREF: .text:004013E6j
		inc	ebx
		add	eax, 2

loc_4013E2:				; CODE XREF: .text:004013DCj
		cmp	word ptr [eax],	20h
		jz	short loc_4013DE
		cmp	ebx, [ebp-4]
		jge	loc_40154D
		xor	edx, edx
		lea	ecx, [ebp-18h]
		mov	[edi], edx
		push	ecx		; LPSIZE
		push	0		; LPINT
		push	edi		; LPINT
		mov	eax, [ebp-8]
		mov	ecx, ebx
		push	eax		; int
		add	ecx, ecx
		mov	edx, [ebp-4]
		sub	edx, ebx
		push	edx		; int
		add	ecx, [esi]
		push	ecx		; LPCWSTR
		mov	eax, [ebp-1Ch]
		push	eax		; HDC
		call	GetTextExtentExPointW
		cmp	dword ptr [edi], 0
		jz	loc_40154D
		cmp	dword ptr [edi], 100h
		jl	short loc_40142D
		mov	dword ptr [edi], 0FFh

loc_40142D:				; CODE XREF: .text:00401425j
		mov	edx, [ebp-4]
		sub	edx, ebx
		cmp	edx, [edi]
		jle	short loc_401454
		mov	eax, [edi]
		dec	eax
		test	eax, eax
		jle	short loc_40144E

loc_40143D:				; CODE XREF: .text:0040144Cj
		lea	edx, [eax+ebx]
		mov	ecx, [esi]
		cmp	word ptr [ecx+edx*2], 20h
		jz	short loc_40144E
		dec	eax
		test	eax, eax
		jg	short loc_40143D

loc_40144E:				; CODE XREF: .text:0040143Bj
					; .text:00401447j
		test	eax, eax
		jle	short loc_401454
		mov	[edi], eax

loc_401454:				; CODE XREF: .text:00401434j
					; .text:00401450j
		xor	eax, eax
		cmp	eax, [edi]
		jge	short loc_40146B

loc_40145A:				; CODE XREF: .text:00401469j
		lea	edx, [eax+ebx]
		mov	ecx, [esi]
		cmp	word ptr [ecx+edx*2], 0Ah
		jz	short loc_40146B
		inc	eax
		cmp	eax, [edi]
		jl	short loc_40145A

loc_40146B:				; CODE XREF: .text:00401458j
					; .text:00401464j
		cmp	eax, [edi]
		jge	short loc_40147B
		mov	[edi], eax
		add	eax, ebx
		mov	edx, [esi]
		mov	word ptr [edx+eax*2], 20h

loc_40147B:				; CODE XREF: .text:0040146Dj
		cmp	dword ptr [edi], 0
		jnz	short loc_401499
		lea	ecx, [ebp-18h]
		push	ecx		; LPSIZE
		push	1		; int
		push	offset asc_4F65DE ; " "
		mov	eax, [ebp-1Ch]
		push	eax		; HDC
		call	GetTextExtentPoint32W
		jmp	loc_401535
; ---------------------------------------------------------------------------

loc_401499:				; CODE XREF: .text:0040147Ej
		mov	edx, [edi]
		mov	ecx, ebx
		add	edx, edx
		add	ecx, ecx
		push	edx		; n
		lea	eax, [ebp-220h]
		add	ecx, [esi]
		push	ecx		; src
		push	eax		; dest
		call	_memcpy
		mov	edx, [edi]
		add	esp, 0Ch
		lea	ecx, [ebp-18h]
		mov	word ptr [ebp+edx*2-220h], 0
		push	ecx		; LPSIZE
		lea	edx, [ebp-220h]
		mov	eax, [edi]
		push	eax		; int
		push	edx		; LPCWSTR
		mov	ecx, [ebp-1Ch]
		push	ecx		; HDC
		call	GetTextExtentPoint32W
		add	dword ptr [ebp-18h], 0Ah
		mov	eax, g_hInstance
		push	0		; lpParam
		push	eax		; hInstance
		push	0FFFFFFFFh	; hMenu
		mov	edx, [ebp+8]
		push	edx		; hWndParent
		mov	ecx, [ebp-14h]
		push	ecx		; nHeight
		mov	eax, [ebp-18h]
		push	eax		; nWidth
		mov	edx, [ebp+1Ch]
		mov	ecx, [edx]
		lea	edx, [ebp-220h]
		add	ecx, [ebp+14h]
		push	ecx		; Y
		mov	eax, [ebp+10h]
		push	eax		; X
		push	50000000h	; dwStyle
		push	edx		; lpWindowName
		push	offset aStatic	; lpClassName
		push	0		; dwExStyle
		call	CreateWindowExW
		push	0		; lParam
		mov	ecx, [ebp+0Ch]
		push	ecx		; wParam
		push	30h		; Msg
		push	eax		; hWnd
		call	SendMessageW
		mov	edx, [ebp+18h]
		mov	ecx, [edx]
		mov	eax, [ebp-18h]
		cmp	ecx, eax
		jge	short loc_401535
		mov	edx, [ebp+18h]
		mov	[edx], eax

loc_401535:				; CODE XREF: .text:00401494j
					; .text:0040152Ej
		mov	eax, [ebp+1Ch]
		mov	ecx, [ebp-14h]
		add	[eax], ecx
		add	ebx, [edi]

loc_40153F:				; CODE XREF: .text:004013D2j
		mov	eax, [ebp+1Ch]
		mov	edx, [eax]
		cmp	edx, [ebp-0Ch]
		jl	loc_4013D7

loc_40154D:				; CODE XREF: .text:004013EBj
					; .text:00401419j
		mov	ecx, [ebp-1Ch]
		push	ecx		; hDC
		mov	eax, [ebp+8]
		push	eax		; hWnd
		call	ReleaseDC

loc_40155A:				; CODE XREF: .text:004012D8j
					; .text:004012E2j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_401564(LPCWSTR lpAppName, LPCWSTR lpKeyName, int, LPCWSTR lpFileName)
loc_401564:				; CODE XREF: .text:0040282Bp
					; .text:00402842p ...
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_40156D:				; CODE XREF: .text:00401575j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_40156D
		mov	eax, [ebp-4]
		add	esp, 4
		push	ebx
		push	esi
		push	edi
		xor	eax, eax
		mov	esi, eax
		mov	edx, [ebp+10h]
		lea	edi, [edx+eax*2]

loc_40158A:				; CODE XREF: .text:004015DBj
		movzx	ebx, word ptr [edi]
		test	ebx, ebx
		jz	short loc_4015DD
		cmp	ebx, 7Fh
		jg	short loc_4015B0
		cmp	ebx, 23h
		jz	short loc_4015B0
		lea	eax, [esi+1]
		cmp	eax, 1000h
		jge	short loc_4015DD
		mov	[ebp+esi*2-2000h], bx
		inc	esi
		jmp	short loc_4015D8
; ---------------------------------------------------------------------------

loc_4015B0:				; CODE XREF: .text:00401594j
					; .text:00401599j
		lea	edx, [esi+5]
		cmp	edx, 1000h
		jge	short loc_4015DD
		mov	ecx, esi
		push	ebx
		lea	eax, [ebp-2000h]
		add	ecx, ecx
		add	ecx, eax
		push	offset a04x_3	; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	esi, eax

loc_4015D8:				; CODE XREF: .text:004015AEj
		add	edi, 2
		jmp	short loc_40158A
; ---------------------------------------------------------------------------

loc_4015DD:				; CODE XREF: .text:0040158Fj
					; .text:004015A3j ...
		mov	word ptr [ebp+esi*2-2000h], 0
		mov	edx, [ebp+14h]
		lea	ecx, [ebp-2000h]
		push	edx		; lpFileName
		push	ecx		; lpString
		mov	eax, [ebp+0Ch]
		push	eax		; lpKeyName
		mov	edx, [ebp+8]
		push	edx		; lpAppName
		call	WritePrivateProfileStringW
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_401608(LPCWSTR lpAppName, LPCWSTR lpKeyName, LPCWSTR lpDefault, int, int, LPCWSTR lpFileName)
loc_401608:				; CODE XREF: .text:0040264Bp
					; .text:00402695p ...
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_401611:				; CODE XREF: .text:00401619j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_401611
		mov	eax, [ebp-4]
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		mov	eax, [ebp+1Ch]
		push	eax		; lpFileName
		push	1000h		; nSize
		lea	edx, [ebp-200Ch]
		push	edx		; lpReturnedString
		mov	ecx, [ebp+10h]
		push	ecx		; lpDefault
		mov	eax, [ebp+0Ch]
		push	eax		; lpKeyName
		mov	edx, [ebp+8]
		push	edx		; lpAppName
		call	GetPrivateProfileStringW
		mov	[ebp-8], eax
		xor	ecx, ecx
		mov	[ebp-4], ecx
		mov	ebx, ecx
		mov	eax, [ebp+14h]
		mov	edx, [ebp-4]
		lea	ecx, [eax+edx*2]
		mov	[ebp-0Ch], ecx
		jmp	loc_4016E1
; ---------------------------------------------------------------------------

loc_40165F:				; CODE XREF: .text:004016EDj
		movzx	eax, word ptr [ebp+ebx*2-200Ch]
		inc	ebx
		cmp	eax, 23h
		jz	short loc_40167C
		mov	edx, [ebp-0Ch]
		mov	[edx], ax
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-0Ch], 2
		jmp	short loc_4016E1
; ---------------------------------------------------------------------------

loc_40167C:				; CODE XREF: .text:0040166Bj
		lea	ecx, [ebx+4]
		cmp	ecx, [ebp-8]
		jg	short loc_4016F3
		xor	edx, edx
		xor	esi, esi
		lea	ecx, [ebp+ebx*2-200Ch]

loc_40168F:				; CODE XREF: .text:004016D2j
		mov	eax, edx
		shl	eax, 4
		mov	edx, eax
		movzx	eax, word ptr [ecx]
		inc	ebx
		add	ecx, 2
		cmp	eax, 30h
		jl	short loc_4016AE
		cmp	eax, 39h
		jg	short loc_4016AE
		add	eax, 0FFFFFFD0h
		add	edx, eax
		jmp	short loc_4016CE
; ---------------------------------------------------------------------------

loc_4016AE:				; CODE XREF: .text:004016A0j
					; .text:004016A5j
		cmp	eax, 41h
		jl	short loc_4016BF
		cmp	eax, 46h
		jg	short loc_4016BF
		add	eax, 0FFFFFFC9h
		add	edx, eax
		jmp	short loc_4016CE
; ---------------------------------------------------------------------------

loc_4016BF:				; CODE XREF: .text:004016B1j
					; .text:004016B6j
		cmp	eax, 61h
		jl	short loc_4016D4
		cmp	eax, 66h
		jg	short loc_4016D4
		add	eax, 0FFFFFFA9h
		add	edx, eax

loc_4016CE:				; CODE XREF: .text:004016ACj
					; .text:004016BDj
		inc	esi
		cmp	esi, 4
		jl	short loc_40168F

loc_4016D4:				; CODE XREF: .text:004016C2j
					; .text:004016C7j
		mov	ecx, [ebp-0Ch]
		mov	[ecx], dx
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-0Ch], 2

loc_4016E1:				; CODE XREF: .text:0040165Aj
					; .text:0040167Aj
		cmp	ebx, [ebp-8]
		jge	short loc_4016F3
		mov	edx, [ebp-4]
		inc	edx
		cmp	edx, [ebp+18h]
		jl	loc_40165F

loc_4016F3:				; CODE XREF: .text:00401682j
					; .text:004016E4j
		mov	eax, [ebp+14h]
		mov	edx, [ebp-4]
		mov	word ptr [eax+edx*2], 0
		mov	eax, [ebp-4]
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl loc_401708(char arglist, int)
loc_401708:				; CODE XREF: .text:00403D99p
					; .text:00403DF0p ...
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		cmp	dword_57D9B0, 0
		jnz	short loc_401724
		xor	eax, eax
		jmp	loc_401837
; ---------------------------------------------------------------------------

loc_401724:				; CODE XREF: .text:0040171Bj
		push	0		; subaddr
		push	esi		; _addr
		push	offset sd	; sd
		call	Findsorteddata
		add	esp, 0Ch
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_40174A
		cmp	dword_57D9B4, 0
		jz	short loc_40174A
		xor	eax, eax
		jmp	loc_401837
; ---------------------------------------------------------------------------

loc_40174A:				; CODE XREF: .text:00401738j
					; .text:00401741j
		test	ebx, ebx
		jz	short loc_401752
		cmp	esi, [ebx]
		jz	short loc_401770

loc_401752:				; CODE XREF: .text:0040174Cj
		push	esi		; arglist
		push	offset aMemmonUndeclar ; "MEMMON: Undeclared memory block %08X"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	loc_401834
; ---------------------------------------------------------------------------

loc_401770:				; CODE XREF: .text:00401750j
		cmp	edi, 10000h
		jnz	short loc_4017A7
		mov	edx, [ebx+8]
		and	edx, 30000h
		cmp	edx, 20000h
		jnz	short loc_4017A7
		push	esi		; arglist
		push	offset aMemmonMemfreeI ; "MEMMON: Memfree()'ing block %08X alloca"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	loc_401834
; ---------------------------------------------------------------------------

loc_4017A7:				; CODE XREF: .text:00401776j
					; .text:00401787j
		cmp	edi, 20000h
		jnz	short loc_4017DB
		mov	ecx, [ebx+8]
		and	ecx, 30000h
		cmp	ecx, 10000h
		jnz	short loc_4017DB
		push	esi		; arglist
		push	offset aMemmonVirtfree ; "MEMMON: Virtfree()'ing block %08X alloc"...
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	short loc_401834
; ---------------------------------------------------------------------------

loc_4017DB:				; CODE XREF: .text:004017ADj
					; .text:004017BEj
		push	4		; ucb
		mov	edi, esi
		mov	eax, edi
		add	eax, [ebx+4]
		push	eax		; lp
		call	IsBadReadPtr
		test	eax, eax
		jz	short loc_401809
		push	esi		; arglist
		push	offset aMemmonTooShort ; "MEMMON: Too short memory block %08X"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	short loc_401834
; ---------------------------------------------------------------------------

loc_401809:				; CODE XREF: .text:004017ECj
		mov	edx, [ebx+4]
		cmp	dword ptr [edi+edx], 0BAD0DA7Ah
		jz	short loc_401830
		push	esi		; arglist
		push	offset aMemmonCorrupte ; "MEMMON: Corrupted memory block %08X"
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h
		jmp	short loc_401834
; ---------------------------------------------------------------------------

loc_401830:				; CODE XREF: .text:00401813j
		xor	eax, eax
		jmp	short loc_401837
; ---------------------------------------------------------------------------

loc_401834:				; CODE XREF: .text:0040176Bj
					; .text:004017A2j ...
		or	eax, 0FFFFFFFFh

loc_401837:				; CODE XREF: .text:0040171Fj
					; .text:00401745j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; BOOL __stdcall fn(HWND, LPARAM)
fn:					; DATA XREF: .text:004042A7o
					; .text:004042B6o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFE00h
		cmp	hwclient, 0
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		jz	short loc_40186B
		push	ebx		; hWnd
		call	GetParent
		cmp	eax, hwclient
		jz	short loc_40186B
		mov	eax, 1
		jmp	loc_4018FF
; ---------------------------------------------------------------------------

loc_40186B:				; CODE XREF: .text:00401851j
					; .text:0040185Fj
		push	100h		; nMaxCount
		lea	edx, [ebp-200h]
		push	edx		; lpClassName
		push	ebx		; hWnd
		call	GetClassNameW
		push	offset word_5D5448 ; s2
		lea	ecx, [ebp-200h]
		push	ecx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4018CC
		push	offset word_5D54C8 ; s2
		lea	eax, [ebp-200h]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4018CC
		push	offset word_5D5488 ; s2
		lea	edx, [ebp-200h]
		push	edx		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jz	short loc_4018CC
		mov	eax, 1
		jmp	short loc_4018FF
; ---------------------------------------------------------------------------

loc_4018CC:				; CODE XREF: .text:00401893j
					; .text:004018ABj ...
		mov	edx, lParam
		push	edx		; lParam
		mov	ecx, wParam
		push	ecx		; wParam
		mov	eax, Msg
		push	eax		; Msg
		push	ebx		; hWnd
		call	SendMessageW
		mov	esi, eax
		mov	dword_57D9C4, esi
		cmp	esi, 1234h
		jnz	short loc_4018FA
		xor	eax, eax
		jmp	short loc_4018FF
; ---------------------------------------------------------------------------

loc_4018FA:				; CODE XREF: .text:004018F4j
		mov	eax, 1

loc_4018FF:				; CODE XREF: .text:00401866j
					; .text:004018CAj ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	8
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_401908(HWND hWnd, int)
loc_401908:				; CODE XREF: .text:00405466p
		push	ebp
		mov	ebp, esp
		push	eax
		mov	eax, 2

loc_401911:				; CODE XREF: .text:00401919j
		add	esp, 0FFFFF004h
		push	eax
		dec	eax
		jnz	short loc_401911
		mov	eax, [ebp-4]
		add	esp, 0FFFFFF38h
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+0Ch]
		mov	edi, [ebp+8]
		test	edi, edi
		jz	loc_401A7B
		push	0		; lParam
		push	0		; wParam
		push	14Bh		; Msg
		push	edi		; hWnd
		call	SendMessageW
		xor	ebx, ebx
		xor	eax, eax
		mov	[ebp-4], eax
		xor	edx, edx
		mov	[ebp-8], edx
		test	esi, esi
		jz	loc_401A3B
		cmp	word ptr [esi],	0
		jz	loc_401A3B
		push	10h		; int
		lea	ecx, [ebp-20CCh]
		push	ecx		; int
		push	esi		; lpFileName
		call	Listalternatedatastreams
		add	esp, 0Ch
		mov	ebx, eax
		cmp	ebx, 10h
		jg	short loc_401986
		lea	eax, [ebp-20CCh]
		mov	[ebp-0Ch], eax
		jmp	short loc_4019CD
; ---------------------------------------------------------------------------

loc_401986:				; CODE XREF: .text:00401979j
		push	2		; flags
		mov	edx, ebx
		shl	edx, 6
		add	edx, ebx
		lea	edx, [ebx+edx*2]
		shl	edx, 2		; int
		push	edx		; size
		call	Memalloc
		add	esp, 8
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4019B7
		lea	ecx, [ebp-20CCh]
		mov	ebx, 10h
		mov	[ebp-0Ch], ecx
		jmp	short loc_4019CD
; ---------------------------------------------------------------------------

loc_4019B7:				; CODE XREF: .text:004019A5j
		push	ebx		; int
		mov	eax, [ebp-8]
		push	eax		; int
		push	esi		; lpFileName
		call	Listalternatedatastreams
		mov	edx, [ebp-8]
		add	esp, 0Ch
		mov	[ebp-0Ch], edx
		mov	ebx, eax

loc_4019CD:				; CODE XREF: .text:00401984j
					; .text:004019B5j
		test	ebx, ebx
		jle	short loc_401A3B
		push	offset aMain	; "<main>"
		call	_T
		pop	ecx
		push	eax		; lParam
		push	0		; wParam
		push	143h		; Msg
		push	edi		; hWnd
		call	SendMessageW
		xor	esi, esi
		cmp	ebx, esi
		jle	short loc_401A3B

loc_4019F0:				; CODE XREF: .text:00401A39j
		mov	eax, esi
		shl	eax, 6
		add	eax, esi
		lea	eax, [esi+eax*2]
		shl	eax, 2
		add	eax, [ebp-0Ch]
		push	eax		; lParam
		push	0		; wParam
		push	143h		; Msg
		push	edi		; hWnd
		call	SendMessageW
		push	offset a6	; s2
		mov	edx, esi
		shl	edx, 6
		add	edx, esi
		lea	edx, [esi+edx*2]
		shl	edx, 2
		add	edx, [ebp-0Ch]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_401A36
		lea	ecx, [esi+1]
		mov	[ebp-4], ecx

loc_401A36:				; CODE XREF: .text:00401A2Ej
		inc	esi
		cmp	ebx, esi
		jg	short loc_4019F0

loc_401A3B:				; CODE XREF: .text:00401952j
					; .text:0040195Cj ...
		test	ebx, ebx
		jnz	short loc_401A52
		test	byte ptr dword_57D9C8+3, 8
		jnz	short loc_401A52
		push	0		; bEnable
		push	edi		; hWnd
		call	EnableWindow
		jmp	short loc_401A6B
; ---------------------------------------------------------------------------

loc_401A52:				; CODE XREF: .text:00401A3Dj
					; .text:00401A46j
		push	1		; bEnable
		push	edi		; hWnd
		call	EnableWindow
		push	0		; lParam
		mov	eax, [ebp-4]
		push	eax		; wParam
		push	14Eh		; Msg
		push	edi		; hWnd
		call	SendMessageW

loc_401A6B:				; CODE XREF: .text:00401A50j
		cmp	dword ptr [ebp-8], 0
		jz	short loc_401A7B
		mov	edx, [ebp-8]
		push	edx		; data
		call	Memfree
		pop	ecx

loc_401A7B:				; CODE XREF: .text:0040192Fj
					; .text:00401A6Fj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __stdcall	loc_401A84(HWND	hWnd, int, int,	LPARAM lParam)
loc_401A84:				; DATA XREF: .text:0040687Do
		push	ebp
		mov	ebp, esp
		cmp	dword ptr [ebp+0Ch], 1
		jnz	short loc_401AA1
		mov	eax, [ebp+14h]
		push	eax		; lParam
		push	1		; wParam
		push	467h		; Msg
		mov	edx, [ebp+8]
		push	edx		; hWnd
		call	SendMessageW

loc_401AA1:				; CODE XREF: .text:00401A8Bj
		xor	eax, eax
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_401AA8(wchar_t *buffer, int, int, int)
loc_401AA8:				; CODE XREF: .text:00406D7Ap
					; .text:00406EB0p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	eax, [ebp+14h]
		mov	edi, [ebp+10h]
		mov	esi, [ebp+8]
		test	edi, edi
		jnz	short loc_401ACF
		mov	eax, [ebp+0Ch]
		push	eax		; u
		push	esi		; s
		call	Hexprint8W
		add	esp, 8
		mov	ebx, eax
		jmp	loc_401B7C
; ---------------------------------------------------------------------------

loc_401ACF:				; CODE XREF: .text:00401AB9j
		test	eax, eax
		jl	short loc_401AF2
		cmp	eax, 8
		jge	short loc_401AF2
		mov	eax, off_52FC84[eax*4]
		push	eax
		push	offset aS_32	; format
		push	esi		; buffer
		call	_swprintf
		add	esp, 0Ch
		mov	ebx, eax
		jmp	short loc_401B07
; ---------------------------------------------------------------------------

loc_401AF2:				; CODE XREF: .text:00401AD1j
					; .text:00401AD6j
		push	offset asc_4F7872 ; "$"
		push	100h		; n
		push	esi		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	ebx, eax

loc_401B07:				; CODE XREF: .text:00401AF0j
		cmp	edi, [ebp+0Ch]
		jbe	short loc_401B25
		sub	edi, [ebp+0Ch]
		lea	eax, [esi+ebx*2]
		push	edi
		push	offset asc_4F7876 ; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_401B60
; ---------------------------------------------------------------------------

loc_401B25:				; CODE XREF: .text:00401B0Aj
		cmp	edi, [ebp+0Ch]
		jnb	short loc_401B45
		mov	edx, [ebp+0Ch]
		lea	ecx, [esi+ebx*2]
		sub	edx, edi
		push	edx
		push	offset asc_4F787E ; format
		push	ecx		; buffer
		call	_swprintf
		add	esp, 0Ch
		add	ebx, eax
		jmp	short loc_401B60
; ---------------------------------------------------------------------------

loc_401B45:				; CODE XREF: .text:00401B28j
		push	offset asc_4F7886 ; " ==>"
		mov	eax, 100h
		sub	eax, ebx
		push	eax		; n
		lea	edx, [esi+ebx*2]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		add	ebx, eax

loc_401B60:				; CODE XREF: .text:00401B23j
					; .text:00401B43j
		lea	eax, [esi+ebx*2]
		cmp	ebx, 8
		jge	short loc_401B76

loc_401B68:				; CODE XREF: .text:00401B74j
		mov	word ptr [eax],	20h
		inc	ebx
		add	eax, 2
		cmp	ebx, 8
		jl	short loc_401B68

loc_401B76:				; CODE XREF: .text:00401B66j
		mov	word ptr [esi+ebx*2], 0

loc_401B7C:				; CODE XREF: .text:00401ACAj
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; INT_PTR __stdcall DialogFunc(HWND, UINT, WPARAM, LPARAM)
DialogFunc:				; DATA XREF: .text:00401CBAo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF700h
		push	ebx
		mov	eax, [ebp+10h]
		mov	ebx, [ebp+8]
		mov	edx, [ebp+0Ch]
		sub	edx, 110h
		jz	short loc_401BB2
		dec	edx
		jz	loc_401C4A
		dec	edx
		jz	loc_401C91
		jmp	loc_401CA5
; ---------------------------------------------------------------------------

loc_401BB2:				; CODE XREF: .text:00401B9Dj
		push	offset aAboutOllydbg ; src
		call	_T
		pop	ecx
		push	eax		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW
		push	offset aOk_1	; src
		call	_T
		pop	ecx
		push	eax		; lpString
		push	1		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		mov	word ptr [ebp-900h], 0
		mov	word ptr [ebp-880h], 0
		push	offset aOlehYuschuk ; "Oleh Yuschuk"
		push	offset a20002013 ; "2000-2013"
		lea	eax, [ebp-880h]
		push	eax
		lea	ecx, [ebp-900h]
		push	ecx
		push	1
		push	2
		push	offset aOllydbgVI_02iS ; "\nOllyDbg v%i.%02i%s%s\n\n32-bit Assemb"...
		call	_T
		pop	ecx
		push	eax		; format
		lea	eax, [ebp-800h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 20h
		lea	edx, [ebp-800h]
		push	edx		; lpString
		push	0C1Dh		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		push	offset aHttpWww_ollydb ; "http://www.ollydbg.de"
		push	0C1Eh		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		mov	eax, 1
		jmp	short loc_401CA7
; ---------------------------------------------------------------------------

loc_401C4A:				; CODE XREF: .text:00401BA0j
		mov	edx, eax
		and	dx, 0FFFFh
		cmp	dx, 1
		jz	short loc_401C5D
		cmp	dx, 2
		jnz	short loc_401C67

loc_401C5D:				; CODE XREF: .text:00401C55j
		push	0		; nResult
		push	ebx		; hDlg
		call	EndDialog
		jmp	short loc_401CA5
; ---------------------------------------------------------------------------

loc_401C67:				; CODE XREF: .text:00401C5Bj
		cmp	dx, 0C1Eh
		jnz	short loc_401CA5
		push	0		; nShowCmd
		push	offset a__23	; lpDirectory
		push	0		; lpParameters
		push	offset aHttpWww_ollydb ; "http://www.ollydbg.de"
		push	offset aOpen	; lpOperation
		push	ebx		; hwnd
		call	ShellExecuteW
		push	0		; nResult
		push	ebx		; hDlg
		call	EndDialog
		jmp	short loc_401CA5
; ---------------------------------------------------------------------------

loc_401C91:				; CODE XREF: .text:00401BA7j
		and	eax, 0FFF0h
		cmp	eax, 0F060h
		jnz	short loc_401CA5
		push	0		; nResult
		push	ebx		; hDlg
		call	EndDialog

loc_401CA5:				; CODE XREF: .text:00401BADj
					; .text:00401C65j ...
		xor	eax, eax

loc_401CA7:				; CODE XREF: .text:00401C48j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 10h

loc_401CB0:				; CODE XREF: .text:loc_40B834p
		push	ebp
		mov	ebp, esp
		push	0		; dwInitParam
		mov	eax, hwollymain
		push	offset DialogFunc ; lpDialogFunc
		push	eax		; hWndParent
		mov	edx, g_hInstance
		push	offset TemplateName ; "DIA_ABOUT"
		push	edx		; hInstance
		call	DialogBoxParamW
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
