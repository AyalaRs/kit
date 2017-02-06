.code
		
; Exported entry   2. _Error
; Exported entry 377. Error

; void Error(wchar_t *format, ...)
		public Error
Error:					; CODE XREF: .text:00406A56p
					; .text:004101C9p ...
		push	ebp		; _Error
		mov	ebp, esp
		add	esp, 0FFFFF800h
		cmp	dword ptr [ebp+8], 0
		jz	short loc_401D62
		lea	eax, [ebp+0Ch]
		push	eax		; arglist
		mov	edx, [ebp+8]
		push	edx		; format
		lea	ecx, [ebp-800h]
		push	ecx		; buffer
		call	_vswprintf
		add	esp, 0Ch
		cmp	dword_57FE88, 0
		jz	short loc_401D36
		push	3000h
		push	offset aError	; "Error"
		call	_T
		pop	ecx
		push	eax
		push	0
		call	loc_4D21C8
		add	esp, 0Ch
		lea	eax, [ebp-800h]
		push	0
		push	eax
		push	2
		call	loc_4D21C8
		add	esp, 0Ch
		call	loc_4D2FC8

loc_401D36:				; CODE XREF: .text:00401D01j
		push	2010h		; uType
		push	offset aError	; "Error"
		call	_T
		pop	ecx
		push	eax		; lpCaption
		lea	edx, [ebp-800h]
		push	edx		; lpText
		mov	ecx, hwollymain
		push	ecx		; hWnd
		call	MessageBoxW
		push	0
		call	loc_4D2FEC
		pop	ecx

loc_401D62:				; CODE XREF: .text:00401CE1j
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl loc_401D68(wchar_t *format, char arglist)
loc_401D68:				; CODE XREF: .text:0044E9FCp
					; .text:00450B60p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF800h
		cmp	dword ptr [ebp+8], 0
		jz	short loc_401DF6
		lea	eax, [ebp+0Ch]
		push	eax		; arglist
		mov	edx, [ebp+8]
		push	edx		; format
		lea	ecx, [ebp-800h]
		push	ecx		; buffer
		call	_vswprintf
		add	esp, 0Ch
		cmp	dword_57FE88, 0
		jz	short loc_401DCA
		push	3000h
		push	offset aInternalError ;	"Internal error"
		call	_T
		pop	ecx
		push	eax
		push	0
		call	loc_4D21C8
		add	esp, 0Ch
		lea	eax, [ebp-800h]
		push	0
		push	eax
		push	2
		call	loc_4D21C8
		add	esp, 0Ch
		call	loc_4D2FC8

loc_401DCA:				; CODE XREF: .text:00401D95j
		push	2010h		; uType
		push	offset aInternalError ;	"Internal error"
		call	_T
		pop	ecx
		push	eax		; lpCaption
		lea	edx, [ebp-800h]
		push	edx		; lpText
		mov	ecx, hwollymain
		push	ecx		; hWnd
		call	MessageBoxW
		push	0
		call	loc_4D2FEC
		pop	ecx

loc_401DF6:				; CODE XREF: .text:00401D75j
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; INT_PTR __stdcall loc_401DFC(HWND, UINT, WPARAM, LPARAM)
loc_401DFC:				; DATA XREF: .text:00402171o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFB8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		mov	eax, [ebp+0Ch]
		sub	eax, 110h
		jz	short loc_401E25
		dec	eax
		jz	loc_402056
		dec	eax
		jz	loc_402092
		jmp	loc_4020AF
; ---------------------------------------------------------------------------

loc_401E25:				; CODE XREF: .text:00401E10j
		cmp	lpString, 0
		jnz	short loc_401E3B
		push	offset aError	; "Error"
		call	_T
		pop	ecx
		jmp	short loc_401E40
; ---------------------------------------------------------------------------

loc_401E3B:				; CODE XREF: .text:00401E2Cj
		mov	eax, lpString

loc_401E40:				; CODE XREF: .text:00401E39j
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
		push	offset aDonTDisplayThi ; "Don't display this message in the futur"...
		call	_T
		pop	ecx
		push	eax		; lpString
		push	0BBBh		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		push	offset aCancel	; src
		call	_T
		pop	ecx
		push	eax		; lpString
		push	2		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		push	0BBBh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		lea	eax, [ebp-28h]
		push	eax		; lpRect
		push	esi		; hWnd
		call	GetWindowRect
		mov	edx, [ebp-28h]
		lea	eax, [ebp-10h]
		mov	[ebp-10h], edx
		mov	ecx, [ebp-24h]
		mov	[ebp-0Ch], ecx
		push	eax		; lpPoint
		push	ebx		; hWnd
		call	ScreenToClient
		mov	edx, [ebp-20h]
		sub	edx, [ebp-28h]
		xor	ecx, ecx
		mov	[ebp-4], edx
		mov	[ebp-8], ecx
		push	0		; lParam
		push	0		; wParam
		push	31h		; Msg
		push	0BBBh		; nIDDlgItem
		push	ebx		; hDlg
		call	SendDlgItemMessageW
		lea	edx, [ebp-8]
		lea	ecx, [ebp-4]
		push	edx		; int
		push	ecx		; int
		mov	edx, [ebp-0Ch]
		sar	edx, 1
		jns	short loc_401EE4
		adc	edx, 0

loc_401EE4:				; CODE XREF: .text:00401EDFj
		push	edx		; int
		mov	ecx, [ebp-10h]
		push	ecx		; X
		push	eax		; HGDIOBJ
		push	ebx		; hWnd
		call	loc_4012C0
		add	esp, 18h
		lea	eax, [ebp-48h]
		push	eax		; lpRect
		push	ebx		; hWnd
		call	GetWindowRect
		mov	edx, [ebp-40h]
		mov	eax, [ebp-48h]
		mov	edi, edx
		mov	ecx, [ebp-20h]
		sub	edi, eax
		mov	esi, [ebp-3Ch]
		sub	esi, [ebp-44h]
		add	edi, [ebp-4]
		sub	ecx, [ebp-28h]
		add	esi, [ebp-8]
		sub	edi, ecx
		lea	ecx, [ebp-38h]
		push	ecx		; rc
		mov	ecx, [ebp-44h]
		add	ecx, [ebp-3Ch]
		sar	ecx, 1
		jns	short loc_401F2C
		adc	ecx, 0

loc_401F2C:				; CODE XREF: .text:00401F27j
		push	ecx		; y
		add	eax, edx
		sar	eax, 1
		jns	short loc_401F36
		adc	eax, 0

loc_401F36:				; CODE XREF: .text:00401F31j
		push	eax		; x
		call	Getmonitorrect
		add	esp, 0Ch
		push	4		; uFlags
		push	esi		; cy
		push	edi		; cx
		mov	eax, [ebp-34h]
		add	eax, [ebp-2Ch]
		sub	eax, esi
		sar	eax, 1
		jns	short loc_401F52
		adc	eax, 0

loc_401F52:				; CODE XREF: .text:00401F4Dj
		push	eax		; Y
		mov	edx, [ebp-30h]
		add	edx, [ebp-38h]
		sub	edx, edi
		sar	edx, 1
		jns	short loc_401F62
		adc	edx, 0

loc_401F62:				; CODE XREF: .text:00401F5Dj
		push	edx		; X
		push	0		; hWndInsertAfter
		push	ebx		; hWnd
		call	SetWindowPos
		push	5		; uFlags
		mov	eax, [ebp-1Ch]
		sub	eax, [ebp-24h]
		push	eax		; cy
		mov	edx, [ebp-20h]
		sub	edx, [ebp-28h]
		push	edx		; cx
		mov	ecx, [ebp-0Ch]
		add	ecx, [ebp-8]
		push	ecx		; Y
		mov	eax, [ebp-10h]
		push	eax		; X
		push	0		; hWndInsertAfter
		push	0BBBh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetWindowPos
		push	1		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		lea	eax, [ebp-48h]
		push	eax		; lpRect
		push	esi		; hWnd
		call	GetWindowRect
		mov	edx, [ebp-48h]
		lea	eax, [ebp-18h]
		mov	[ebp-18h], edx
		mov	ecx, [ebp-44h]
		mov	[ebp-14h], ecx
		push	eax		; lpPoint
		push	ebx		; hWnd
		call	ScreenToClient
		push	5		; uFlags
		mov	edx, [ebp-3Ch]
		sub	edx, [ebp-44h]
		push	edx		; cy
		mov	ecx, [ebp-40h]
		sub	ecx, [ebp-48h]
		push	ecx		; cx
		mov	eax, [ebp-14h]
		add	eax, [ebp-8]
		push	eax		; Y
		mov	edx, [ebp-20h]
		sub	edx, [ebp-28h]
		mov	ecx, [ebp-4]
		sub	ecx, edx
		sar	ecx, 1
		jns	short loc_401FEC
		adc	ecx, 0

loc_401FEC:				; CODE XREF: .text:00401FE7j
		add	ecx, [ebp-18h]
		push	ecx		; X
		push	0		; hWndInsertAfter
		push	esi		; hWnd
		call	SetWindowPos
		push	0BB9h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		lea	eax, [ebp-48h]
		push	eax		; lpRect
		push	esi		; hWnd
		call	GetWindowRect
		mov	edx, [ebp-48h]
		lea	eax, [ebp-18h]
		mov	[ebp-18h], edx
		mov	ecx, [ebp-44h]
		mov	[ebp-14h], ecx
		push	eax		; lpPoint
		push	ebx		; hWnd
		call	ScreenToClient
		push	5		; uFlags
		mov	edx, [ebp-3Ch]
		sub	edx, [ebp-44h]
		push	edx		; cy
		mov	ecx, [ebp-40h]
		sub	ecx, [ebp-48h]
		push	ecx		; cx
		mov	eax, [ebp-8]
		sar	eax, 1
		jns	short loc_40203F
		adc	eax, 0

loc_40203F:				; CODE XREF: .text:0040203Aj
		add	eax, [ebp-14h]
		push	eax		; Y
		mov	edx, [ebp-18h]
		push	edx		; X
		push	0		; hWndInsertAfter
		push	esi		; hWnd
		call	SetWindowPos
		mov	eax, 1
		jmp	short loc_4020B8
; ---------------------------------------------------------------------------

loc_402056:				; CODE XREF: .text:00401E13j
		mov	dx, [ebp+10h]
		and	dx, 0FFFFh
		dec	dx
		jz	short loc_40206B
		dec	dx
		jz	short loc_402088
		jmp	short loc_4020B3
; ---------------------------------------------------------------------------

loc_40206B:				; CODE XREF: .text:00402062j
		push	0		; lParam
		push	0		; wParam
		push	0F0h		; Msg
		push	0BBBh		; nIDDlgItem
		push	ebx		; hDlg
		call	SendDlgItemMessageW
		push	eax		; nResult
		push	ebx		; hDlg
		call	EndDialog
		jmp	short loc_4020B3
; ---------------------------------------------------------------------------

loc_402088:				; CODE XREF: .text:00402067j
		push	0		; nResult
		push	ebx		; hDlg
		call	EndDialog
		jmp	short loc_4020B3
; ---------------------------------------------------------------------------

loc_402092:				; CODE XREF: .text:00401E1Aj
		mov	ecx, [ebp+10h]
		and	ecx, 0FFF0h
		cmp	ecx, 0F060h
		jnz	short loc_4020AB
		push	0		; nResult
		push	ebx		; hDlg
		call	EndDialog

loc_4020AB:				; CODE XREF: .text:004020A1j
		xor	eax, eax
		jmp	short loc_4020B8
; ---------------------------------------------------------------------------

loc_4020AF:				; CODE XREF: .text:00401E20j
		xor	eax, eax
		jmp	short loc_4020B8
; ---------------------------------------------------------------------------

loc_4020B3:				; CODE XREF: .text:00402069j
					; .text:00402086j ...
		mov	eax, 1

loc_4020B8:				; CODE XREF: .text:00402054j
					; .text:004020ADj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
; Exported entry   3. _Conderror
; Exported entry 378. Conderror

; void Conderror(int *cond, wchar_t *_title, wchar_t *format, ...)
		public Conderror
Conderror:				; CODE XREF: .text:00403D6Bp
					; .text:00403FA5p ...
		push	ebp		; _Conderror
		mov	ebp, esp
		add	esp, 0FFFFF800h
		push	ebx
		push	esi
		mov	esi, [ebp+0Ch]
		mov	ebx, [ebp+8]
		cmp	dword ptr [ebp+10h], 0
		jz	loc_4021B3
		test	ebx, ebx
		jz	short loc_4020EC
		cmp	dword ptr [ebx], 0
		jnz	loc_4021B3

loc_4020EC:				; CODE XREF: .text:004020E1j
		lea	eax, [ebp+14h]
		push	eax		; arglist
		mov	edx, [ebp+10h]
		push	edx		; format
		lea	ecx, [ebp-800h]
		push	ecx		; buffer
		call	_vswprintf
		add	esp, 0Ch
		cmp	dword_57FE88, 0
		jz	short loc_40213F
		push	3000h
		push	offset aError	; "Error"
		call	_T
		pop	ecx
		push	eax
		push	0
		call	loc_4D21C8
		add	esp, 0Ch
		lea	eax, [ebp-800h]
		push	0
		push	eax
		push	2
		call	loc_4D21C8
		add	esp, 0Ch
		call	loc_4D2FC8

loc_40213F:				; CODE XREF: .text:0040210Aj
		test	ebx, ebx
		jnz	short loc_40215E
		push	2010h		; uType
		push	esi		; lpCaption
		lea	edx, [ebp-800h]
		push	edx		; lpText
		mov	ecx, hwollymain
		push	ecx		; hWnd
		call	MessageBoxW
		jmp	short loc_402197
; ---------------------------------------------------------------------------

loc_40215E:				; CODE XREF: .text:00402141j
		mov	lpString, esi
		lea	eax, [ebp-800h]
		mov	dword_57D960, eax
		push	0		; dwInitParam
		push	offset loc_401DFC ; lpDialogFunc
		mov	edx, hwollymain
		push	edx		; hWndParent
		push	offset aDia_conderr ; "DIA_CONDERR"
		mov	ecx, g_hInstance
		push	ecx		; hInstance
		call	DialogBoxParamW
		dec	eax
		jnz	short loc_402197
		mov	dword ptr [ebx], 1

loc_402197:				; CODE XREF: .text:0040215Cj
					; .text:0040218Fj
		push	0
		call	loc_4D2FEC
		pop	ecx
		push	180h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	eax, hwollymain
		push	eax		; hWnd
		call	RedrawWindow

loc_4021B3:				; CODE XREF: .text:004020D9j
					; .text:004020E6j
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; INT_PTR __stdcall loc_4021BC(HWND, UINT, WPARAM, LPARAM)
loc_4021BC:				; DATA XREF: .text:004025A1o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFB8h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+8]
		mov	eax, [ebp+0Ch]
		sub	eax, 110h
		jz	short loc_4021E5
		dec	eax
		jz	loc_402463
		dec	eax
		jz	loc_4024E1
		jmp	loc_4024FE
; ---------------------------------------------------------------------------

loc_4021E5:				; CODE XREF: .text:004021D0j
		mov	edx, lpString
		push	edx		; lpString
		push	ebx		; hWnd
		call	SetWindowTextW
		push	offset aNo	; "No"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	4		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		push	offset aYes	; "Yes"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	3		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		push	offset aDonTAskThisQue ; "Don't ask this question again"
		call	_T
		pop	ecx
		push	eax		; lpString
		push	0BBBh		; nIDDlgItem
		push	ebx		; hDlg
		call	SetDlgItemTextW
		push	0BBBh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		lea	eax, [ebp-28h]
		push	eax		; lpRect
		push	esi		; hWnd
		call	GetWindowRect
		mov	edx, [ebp-28h]
		lea	eax, [ebp-10h]
		mov	[ebp-10h], edx
		mov	ecx, [ebp-24h]
		mov	[ebp-0Ch], ecx
		push	eax		; lpPoint
		push	ebx		; hWnd
		call	ScreenToClient
		mov	edx, [ebp-20h]
		sub	edx, [ebp-28h]
		xor	ecx, ecx
		mov	[ebp-4], edx
		mov	[ebp-8], ecx
		push	0		; lParam
		push	0		; wParam
		push	31h		; Msg
		push	0BBBh		; nIDDlgItem
		push	ebx		; hDlg
		call	SendDlgItemMessageW
		lea	edx, [ebp-8]
		lea	ecx, [ebp-4]
		push	edx		; int
		push	ecx		; int
		mov	edx, [ebp-0Ch]
		sar	edx, 1
		jns	short loc_40228F
		adc	edx, 0

loc_40228F:				; CODE XREF: .text:0040228Aj
		push	edx		; int
		mov	ecx, [ebp-10h]
		push	ecx		; X
		push	eax		; HGDIOBJ
		push	ebx		; hWnd
		call	loc_4012C0
		add	esp, 18h
		lea	eax, [ebp-48h]
		push	eax		; lpRect
		push	ebx		; hWnd
		call	GetWindowRect
		mov	edx, [ebp-40h]
		mov	eax, [ebp-48h]
		mov	edi, edx
		mov	ecx, [ebp-20h]
		sub	edi, eax
		mov	esi, [ebp-3Ch]
		sub	esi, [ebp-44h]
		add	edi, [ebp-4]
		sub	ecx, [ebp-28h]
		add	esi, [ebp-8]
		sub	edi, ecx
		lea	ecx, [ebp-38h]
		push	ecx		; rc
		mov	ecx, [ebp-44h]
		add	ecx, [ebp-3Ch]
		sar	ecx, 1
		jns	short loc_4022D7
		adc	ecx, 0

loc_4022D7:				; CODE XREF: .text:004022D2j
		push	ecx		; y
		add	eax, edx
		sar	eax, 1
		jns	short loc_4022E1
		adc	eax, 0

loc_4022E1:				; CODE XREF: .text:004022DCj
		push	eax		; x
		call	Getmonitorrect
		add	esp, 0Ch
		push	4		; uFlags
		push	esi		; cy
		push	edi		; cx
		mov	eax, [ebp-34h]
		add	eax, [ebp-2Ch]
		sub	eax, esi
		sar	eax, 1
		jns	short loc_4022FD
		adc	eax, 0

loc_4022FD:				; CODE XREF: .text:004022F8j
		push	eax		; Y
		mov	edx, [ebp-30h]
		add	edx, [ebp-38h]
		sub	edx, edi
		sar	edx, 1
		jns	short loc_40230D
		adc	edx, 0

loc_40230D:				; CODE XREF: .text:00402308j
		push	edx		; X
		push	0		; hWndInsertAfter
		push	ebx		; hWnd
		call	SetWindowPos
		push	5		; uFlags
		mov	eax, [ebp-1Ch]
		sub	eax, [ebp-24h]
		push	eax		; cy
		mov	edx, [ebp-20h]
		sub	edx, [ebp-28h]
		push	edx		; cx
		mov	ecx, [ebp-0Ch]
		add	ecx, [ebp-8]
		push	ecx		; Y
		mov	eax, [ebp-10h]
		push	eax		; X
		push	0		; hWndInsertAfter
		push	0BBBh		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		push	eax		; hWnd
		call	SetWindowPos
		push	3		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		lea	eax, [ebp-48h]
		push	eax		; lpRect
		push	esi		; hWnd
		call	GetWindowRect
		mov	edx, [ebp-48h]
		lea	eax, [ebp-18h]
		mov	[ebp-18h], edx
		mov	ecx, [ebp-44h]
		mov	[ebp-14h], ecx
		push	eax		; lpPoint
		push	ebx		; hWnd
		call	ScreenToClient
		push	5		; uFlags
		mov	edx, [ebp-3Ch]
		sub	edx, [ebp-44h]
		push	edx		; cy
		mov	ecx, [ebp-40h]
		sub	ecx, [ebp-48h]
		push	ecx		; cx
		mov	eax, [ebp-14h]
		add	eax, [ebp-8]
		push	eax		; Y
		mov	edx, [ebp-20h]
		sub	edx, [ebp-28h]
		mov	ecx, [ebp-4]
		sub	ecx, edx
		sar	ecx, 1
		jns	short loc_402397
		adc	ecx, 0

loc_402397:				; CODE XREF: .text:00402392j
		add	ecx, [ebp-18h]
		push	ecx		; X
		push	0		; hWndInsertAfter
		push	esi		; hWnd
		call	SetWindowPos
		push	4		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		lea	eax, [ebp-48h]
		push	eax		; lpRect
		push	esi		; hWnd
		call	GetWindowRect
		mov	edx, [ebp-48h]
		lea	eax, [ebp-18h]
		mov	[ebp-18h], edx
		mov	ecx, [ebp-44h]
		mov	[ebp-14h], ecx
		push	eax		; lpPoint
		push	ebx		; hWnd
		call	ScreenToClient
		push	5		; uFlags
		mov	edx, [ebp-3Ch]
		sub	edx, [ebp-44h]
		push	edx		; cy
		mov	ecx, [ebp-40h]
		sub	ecx, [ebp-48h]
		push	ecx		; cx
		mov	eax, [ebp-14h]
		add	eax, [ebp-8]
		push	eax		; Y
		mov	edx, [ebp-20h]
		sub	edx, [ebp-28h]
		mov	ecx, [ebp-4]
		sub	ecx, edx
		sar	ecx, 1
		jns	short loc_4023F6
		adc	ecx, 0

loc_4023F6:				; CODE XREF: .text:004023F1j
		add	ecx, [ebp-18h]
		push	ecx		; X
		push	0		; hWndInsertAfter
		push	esi		; hWnd
		call	SetWindowPos
		push	0BB9h		; nIDDlgItem
		push	ebx		; hDlg
		call	GetDlgItem
		mov	esi, eax
		lea	eax, [ebp-48h]
		push	eax		; lpRect
		push	esi		; hWnd
		call	GetWindowRect
		mov	edx, [ebp-48h]
		lea	eax, [ebp-18h]
		mov	[ebp-18h], edx
		mov	ecx, [ebp-44h]
		mov	[ebp-14h], ecx
		push	eax		; lpPoint
		push	ebx		; hWnd
		call	ScreenToClient
		push	5		; uFlags
		mov	edx, [ebp-3Ch]
		sub	edx, [ebp-44h]
		push	edx		; cy
		mov	ecx, [ebp-40h]
		sub	ecx, [ebp-48h]
		push	ecx		; cx
		mov	eax, [ebp-8]
		sar	eax, 1
		jns	short loc_402449
		adc	eax, 0

loc_402449:				; CODE XREF: .text:00402444j
		add	eax, [ebp-14h]
		push	eax		; Y
		mov	edx, [ebp-18h]
		push	edx		; X
		push	0		; hWndInsertAfter
		push	esi		; hWnd
		call	SetWindowPos
		mov	eax, 1
		jmp	loc_402507
; ---------------------------------------------------------------------------

loc_402463:				; CODE XREF: .text:004021D3j
		mov	dx, [ebp+10h]
		and	dx, 0FFFFh
		sub	dx, 2
		jz	short loc_4024D7
		dec	dx
		jz	short loc_402481
		dec	dx
		jz	short loc_4024AC
		jmp	loc_402502
; ---------------------------------------------------------------------------

loc_402481:				; CODE XREF: .text:00402475j
		push	0		; lParam
		push	0		; wParam
		push	0F0h		; Msg
		push	0BBBh		; nIDDlgItem
		push	ebx		; hDlg
		call	SendDlgItemMessageW
		dec	eax
		jnz	short loc_4024A2
		push	6		; nResult
		push	ebx		; hDlg
		call	EndDialog
		jmp	short loc_402502
; ---------------------------------------------------------------------------

loc_4024A2:				; CODE XREF: .text:00402496j
		push	0FFFFFFFAh	; nResult
		push	ebx		; hDlg
		call	EndDialog
		jmp	short loc_402502
; ---------------------------------------------------------------------------

loc_4024AC:				; CODE XREF: .text:0040247Aj
		push	0		; lParam
		push	0		; wParam
		push	0F0h		; Msg
		push	0BBBh		; nIDDlgItem
		push	ebx		; hDlg
		call	SendDlgItemMessageW
		dec	eax
		jnz	short loc_4024CD
		push	7		; nResult
		push	ebx		; hDlg
		call	EndDialog
		jmp	short loc_402502
; ---------------------------------------------------------------------------

loc_4024CD:				; CODE XREF: .text:004024C1j
		push	0FFFFFFF9h	; nResult
		push	ebx		; hDlg
		call	EndDialog
		jmp	short loc_402502
; ---------------------------------------------------------------------------

loc_4024D7:				; CODE XREF: .text:00402470j
		push	0		; nResult
		push	ebx		; hDlg
		call	EndDialog
		jmp	short loc_402502
; ---------------------------------------------------------------------------

loc_4024E1:				; CODE XREF: .text:004021DAj
		mov	ecx, [ebp+10h]
		and	ecx, 0FFF0h
		cmp	ecx, 0F060h
		jnz	short loc_4024FA
		push	0		; nResult
		push	ebx		; hDlg
		call	EndDialog

loc_4024FA:				; CODE XREF: .text:004024F0j
		xor	eax, eax
		jmp	short loc_402507
; ---------------------------------------------------------------------------

loc_4024FE:				; CODE XREF: .text:004021E0j
		xor	eax, eax
		jmp	short loc_402507
; ---------------------------------------------------------------------------

loc_402502:				; CODE XREF: .text:0040247Cj
					; .text:004024A0j ...
		mov	eax, 1

loc_402507:				; CODE XREF: .text:0040245Ej
					; .text:004024FCj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
; Exported entry   4. _Condyesno
; Exported entry 379. Condyesno

; int Condyesno(int *cond, wchar_t *_title, wchar_t *format, ...)
		public Condyesno
Condyesno:				; CODE XREF: .text:0040C5B9p
					; .text:0044A95Ap ...
		push	ebp		; _Condyesno
		mov	ebp, esp
		add	esp, 0FFFFF800h
		push	ebx
		push	esi
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_40252F
		test	ebx, ebx
		jz	short loc_40252F
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_402536

loc_40252F:				; CODE XREF: .text:00402523j
					; .text:00402527j
		xor	eax, eax
		jmp	loc_402613
; ---------------------------------------------------------------------------

loc_402536:				; CODE XREF: .text:0040252Dj
		mov	eax, [esi]
		test	eax, eax
		jnz	loc_402613
		lea	eax, [ebp+14h]
		push	eax		; arglist
		mov	edx, [ebp+10h]
		push	edx		; format
		lea	ecx, [ebp-800h]
		push	ecx		; buffer
		call	_vswprintf
		mov	lpString, ebx
		lea	eax, [ebp-800h]
		mov	dword_57D960, eax
		add	esp, 0Ch
		cmp	dword_57FE88, 0
		jz	short loc_402599
		push	3000h
		push	ebx
		push	0
		call	loc_4D21C8
		add	esp, 0Ch
		lea	edx, [ebp-800h]
		push	0
		push	edx
		push	2
		call	loc_4D21C8
		add	esp, 0Ch
		call	loc_4D2FC8

loc_402599:				; CODE XREF: .text:0040256Fj
		push	0		; dwInitParam
		mov	ecx, hwollymain
		push	offset loc_4021BC ; lpDialogFunc
		push	ecx		; hWndParent
		mov	eax, g_hInstance
		push	offset word_4F66B2 ; lpTemplateName
		push	eax		; hInstance
		call	DialogBoxParamW
		mov	ebx, eax
		push	180h		; flags
		push	0		; hrgnUpdate
		push	0		; lprcUpdate
		mov	eax, hwollymain
		push	eax		; hWnd
		call	RedrawWindow
		push	0
		call	loc_4D2FEC
		pop	ecx
		cmp	ebx, 0FFFFFFFAh
		jnz	short loc_4025E1
		mov	eax, 6
		jmp	short loc_402613
; ---------------------------------------------------------------------------

loc_4025E1:				; CODE XREF: .text:004025D8j
		cmp	ebx, 0FFFFFFF9h
		jnz	short loc_4025ED
		mov	eax, 7
		jmp	short loc_402613
; ---------------------------------------------------------------------------

loc_4025ED:				; CODE XREF: .text:004025E4j
		cmp	ebx, 6
		jnz	short loc_4025FF
		mov	dword ptr [esi], 6
		mov	eax, 6
		jmp	short loc_402613
; ---------------------------------------------------------------------------

loc_4025FF:				; CODE XREF: .text:004025F0j
		cmp	ebx, 7
		jnz	short loc_402611
		mov	dword ptr [esi], 7
		mov	eax, 7
		jmp	short loc_402613
; ---------------------------------------------------------------------------

loc_402611:				; CODE XREF: .text:00402602j
		xor	eax, eax

loc_402613:				; CODE XREF: .text:00402531j
					; .text:0040253Aj ...
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
		