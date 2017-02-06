
; enum t_status, copyof_231
STAT_IDLE	 	EQU 0
STAT_LOADING	 EQU 1
STAT_ATTACHING	 EQU 2
STAT_RUNNING	 EQU 3
STAT_RUNTHR	 EQU 4
STAT_STEPIN	 EQU 5
STAT_STEPOVER	 EQU 6
STAT_ANIMIN	 EQU 7
STAT_ANIMOVER	 EQU 8
STAT_TRACEIN	 EQU 9
STAT_TRACEOVER	 EQU 0Ah
STAT_SFXRUN	 EQU 0Bh
STAT_SFXHIT	 EQU 0Ch
STAT_SFXKNOWN	 EQU 0Dh
STAT_TILLRET	 EQU 0Eh
STAT_OVERRET	 EQU 0Fh
STAT_TILLUSER	 EQU 10h
STAT_PAUSING	 EQU 11h
STAT_PAUSED	 		EQU 12h
STAT_FINISHED	 EQU 13h
STAT_CLOSING	 EQU 14h

; ---------------------------------------------------------------------------
 IMAGE_TLS_DIRECTORY struc ; (sizeof=0x18, align=0x4, mappedto_409)                            
	 StartAddressOfRawData dd ?             
	 EndAddressOfRawData dd ?               
	 AddressOfIndex  dd ?                   
	 AddressOfCallBacks dd ?                 
	 SizeOfZeroFill  dd ?                   
	 Characteristics dd ?
 IMAGE_TLS_DIRECTORY ends
; ---------------------------------------------------------------------------

t_range		struc ;	(sizeof=0x8, copyof_259) ; XREF: .data:set/r t_rtprot/r
rmin		dd ?
rmax		dd ?
t_range		ends

T_Tbyte         struc ; (sizeof=0xA, mappedto_408) ;
	_low             dd ?
	hi              dd ?
	gi              dw ?
T_Tbyte         ends
; ---------------------------------------------------------------------------

tagRECT		struc ;	(sizeof=0x10, align=0x4, copyof_1) ; XREF: .data:Rect/r
left		dd ?			; XREF:	.text:0040F865/r
					; .text:loc_40F8DB/r ...
top		dd ?			; XREF:	.text:0040F871/r
					; .text:loc_40F8EF/r ...
right		dd ?			; XREF:	.text:0040F85F/r
					; .text:0040F8AD/r ...
bottom		dd ?			; XREF:	.text:0040F86B/r
					; .text:0040F8C7/r ...
tagRECT		ends

; ---------------------------------------------------------------------------

tagTEXTMETRICW	struc ;	(sizeof=0x3C, align=0x4, copyof_3)
tmHeight	dd ?
tmAscent	dd ?
tmDescent	dd ?
tmInternalLeading dd ?
tmExternalLeading dd ?
tmAveCharWidth	dd ?
tmMaxCharWidth	dd ?
tmWeight	dd ?
tmOverhang	dd ?
tmDigitizedAspectX dd ?
tmDigitizedAspectY dd ?
tmFirstChar	dw ?
tmLastChar	dw ?
tmDefaultChar	dw ?
tmBreakChar	dw ?
tmItalic	db ?
tmUnderlined	db ?
tmStruckOut	db ?
tmPitchAndFamily db ?
tmCharSet	db ?
		db ? ; undefined
		db ? ; undefined
		db ? ; undefined
tagTEXTMETRICW	ends

; ---------------------------------------------------------------------------

tagSIZE		struc ;	(sizeof=0x8, align=0x4,	copyof_7)
_cx		dd ?
cy		dd ?
tagSIZE		ends

; ---------------------------------------------------------------------------

tagPOINT	struc ;	(sizeof=0x8, align=0x4,	copyof_8)
x		dd ?
y		dd ?
tagPOINT	ends

; ---------------------------------------------------------------------------

_MEMORYSTATUS	struc ;	(sizeof=0x20, align=0x4, copyof_9)
dwLength	dd ?
dwMemoryLoad	dd ?
dwTotalPhys	dd ?
dwAvailPhys	dd ?
dwTotalPageFile	dd ?
dwAvailPageFile	dd ?
dwTotalVirtual	dd ?			; XREF:	.text:0040F6EA/r
					; .text:loc_40F702/r
dwAvailVirtual	dd ?
_MEMORYSTATUS	ends

; ---------------------------------------------------------------------------

tagOFNW		struc ;	(sizeof=0x58, copyof_13)
lStructSize	dd ?
hwndOwner	dd ?			; offset
hInstance	dd ?			; offset
lpstrFilter	dd ?			; offset
lpstrCustomFilter dd ?			; offset
nMaxCustFilter	dd ?
nFilterIndex	dd ?
lpstrFile	dd ?			; offset
nMaxFile	dd ?
lpstrFileTitle	dd ?			; offset
nMaxFileTitle	dd ?
lpstrInitialDir	dd ?			; offset
lpstrTitle	dd ?			; offset
Flags		dd ?
nFileOffset	dw ?
nFileExtension	dw ?
lpstrDefExt	dd ?			; offset
lCustData	dd ?
lpfnHook	dd ?			; offset
lpTemplateName	dd ?			; offset
pvReserved	dd ?			; offset
dwReserved	dd ?
FlagsEx		dd ?
tagOFNW		ends



; ---------------------------------------------------------------------------

tagPAINTSTRUCT	struc ;	(sizeof=0x40, align=0x4, copyof_35)
hdc		dd ?			; offset
fErase		dd ?
rcPaint		RECT <>
fRestore	dd ?
fIncUpdate	dd ?
rgbReserved	db 32 dup(?)
tagPAINTSTRUCT	ends

; ---------------------------------------------------------------------------

_cpinfo		struc ;	(sizeof=0x14, align=0x4, copyof_39)
MaxCharSize	dd ?			; XREF:	.text:00436EC9/r
DefaultChar	db 2 dup(?)
LeadByte	db 12 dup(?)
		db ? ; undefined
		db ? ; undefined
_cpinfo		ends

; ---------------------------------------------------------------------------

_OSVERSIONINFOA	struc ;	(sizeof=0x94, align=0x4, copyof_40)
					; XREF:	.data:VersionInformation/r
dwOSVersionInfoSize dd ?		; XREF:	.text:0040D643/w
dwMajorVersion	dd ?			; XREF:	.text:0040D678/r
					; .text:0044E8F4/r ...
dwMinorVersion	dd ?			; XREF:	.text:0040D681/r
					; .text:004520AE/r
dwBuildNumber	dd ?
dwPlatformId	dd ?			; XREF:	.text:00408EA7/r
					; .text:0040D64D/w ...
szCSDVersion	db 128 dup(?)
_OSVERSIONINFOA	ends

; ---------------------------------------------------------------------------

WNDCLASSW	struc ;	(sizeof=0x28, align=0x4, copyof_42)
style		dd ?			; XREF:	.text:loc_40F70E/w
lpfnWndProc	dd ?			; XREF:	.text:0040F718/w ; offset
cbClsExtra	dd ?			; XREF:	.text:0040F730/w
cbWndExtra	dd ?			; XREF:	.text:0040F72A/w
hInstance	dd ?			; XREF:	.text:0040F736/w ; offset
hIcon		dd ?			; XREF:	.text:0040F74E/w ; offset
hCursor		dd ?			; XREF:	.text:0040F760/w ; offset
hbrBackground	dd ?			; XREF:	.text:0040F768/w ; offset
lpszMenuName	dd ?			; XREF:	.text:0040F770/w ; offset
lpszClassName	dd ?			; XREF:	.text:0040F77C/w ; offset
WNDCLASSW	ends

; ---------------------------------------------------------------------------

tagMSG		struc ;	(sizeof=0x1C, align=0x4, copyof_51)
hwnd		dd ?			; XREF:	.text:0041046E/r
					; .text:00410490/r ; offset
message		dd ?			; XREF:	.text:0041032C/r
					; .text:loc_410376/r ...
wParam		dd ?			; XREF:	.text:0041039A/r
					; .text:loc_410496/r ...
lParam		dd ?			; XREF:	.text:0041043C/r
					; .text:00410446/r ...
time		dd ?
pt		POINT <>
tagMSG		ends

; ---------------------------------------------------------------------------

tagSCROLLINFO	struc ;	(sizeof=0x1C, align=0x4, copyof_52)
cbSize		dd ?
fMask		dd ?
nMin		dd ?
nMax		dd ?
nPage		dd ?
nPos		dd ?
nTrackPos	dd ?
tagSCROLLINFO	ends

; ---------------------------------------------------------------------------


_SCROLLINFO	struc ;	(sizeof=0x1C, align=0x4, copyof_53)
cbSize		dd ?			; XREF:	.text:loc_4BEFE9/w
fMask		dd ?			; XREF:	.text:004BEFF0/w
nMin		dd ?			; XREF:	.text:004BEFFF/w
nMax		dd ?			; XREF:	.text:loc_4BF02A/w
					; .text:004BF05E/w
nPage		dd ?			; XREF:	.text:004BF019/w
					; .text:004BF064/w
nPos		dd ?			; XREF:	.text:004BF016/w
					; .text:004BF044/w
nTrackPos	dd ?
_SCROLLINFO	ends

; ---------------------------------------------------------------------------

tagWNDCLASSW	struc ;	(sizeof=0x28, align=0x4)
style		dd ?
lpfnWndProc	dd ?			; offset
cbClsExtra	dd ?
cbWndExtra	dd ?
hInstance	dd ?			; offset
hIcon		dd ?			; offset
hCursor		dd ?			; offset
hbrBackground	dd ?			; offset
lpszMenuName	dd ?			; offset
lpszClassName	dd ?			; offset
tagWNDCLASSW	ends

; ---------------------------------------------------------------------------

MENUITEMINFOW	struc ;	(sizeof=0x30, align=0x4, copyof_54)
cbSize		dd ?
fMask		dd ?
fType		dd ?
fState		dd ?
wID		dd ?
hSubMenu	dd ?			; offset
hbmpChecked	dd ?			; offset
hbmpUnchecked	dd ?			; offset
dwItemData	dd ?
dwTypeData	dd ?			; offset
cch		dd ?
hbmpItem	dd ?			; offset
MENUITEMINFOW	ends

; ---------------------------------------------------------------------------

tagMENUITEMINFOW struc ; (sizeof=0x30, align=0x4)
cbSize		dd ?
fMask		dd ?
fType		dd ?
fState		dd ?
wID		dd ?
hSubMenu	dd ?			; offset
hbmpChecked	dd ?			; offset
hbmpUnchecked	dd ?			; offset
dwItemData	dd ?
dwTypeData	dd ?			; offset
cch		dd ?
hbmpItem	dd ?			; offset
tagMENUITEMINFOW ends

; ---------------------------------------------------------------------------

_STARTUPINFOW	struc ;	(sizeof=0x44, align=0x4, copyof_60)
cb		dd ?
lpReserved	dd ?			; offset
lpDesktop	dd ?			; offset
lpTitle		dd ?			; offset
dwX		dd ?
dwY		dd ?
dwXSize		dd ?
dwYSize		dd ?
dwXCountChars	dd ?
dwYCountChars	dd ?
dwFillAttribute	dd ?
dwFlags		dd ?
wShowWindow	dw ?
cbReserved2	dw ?
lpReserved2	dd ?			; offset
hStdInput	dd ?			; offset
hStdOutput	dd ?			; offset
hStdError	dd ?			; offset
_STARTUPINFOW	ends

; ---------------------------------------------------------------------------

_PROCESS_INFORMATION struc ; (sizeof=0x10, align=0x4, copyof_63)
hProcess	dd ?			; offset
hThread		dd ?			; offset
dwProcessId	dd ?
dwThreadId	dd ?
_PROCESS_INFORMATION ends

; ---------------------------------------------------------------------------

IID		struc ;	(sizeof=0x10, align=0x4, copyof_64) ; XREF: .data:riid/r
					; .data:rclsid/r ...
Data1		dd ?
Data2		dw ?
Data3		dw ?
Data4		db 8 dup(?)
IID		ends

; ---------------------------------------------------------------------------
_FLOATING_SAVE_AREA struc ; (sizeof=0x70, align=0x4, copyof_73) ; XREF: CONTEXT/r
ControlWord	dd ?
StatusWord	dd ?
TagWord		dd ?
ErrorOffset	dd ?
ErrorSelector	dd ?
DataOffset	dd ?
DataSelector	dd ?
RegisterArea	db 80 dup(?)
Cr0NpxState	dd ?
_FLOATING_SAVE_AREA ends

_CONTEXT		struc ;	(sizeof=0x2CC, align=0x4, copyof_71) ; XREF: t_thread/r
					; t_sframe/r
ContextFlags	dd ?			; XREF:	.text:0045167C/w
_Dr0		dd ?
_Dr1		dd ?
_Dr2		dd ?
_Dr3		dd ?
_Dr6		dd ?
_Dr7		dd ?
FloatSave	_FLOATING_SAVE_AREA <?>
SegGs		dd ?
SegFs		dd ?
SegEs		dd ?
SegDs		dd ?
_Edi		dd ?
_Esi		dd ?
_Ebx		dd ?
_Edx		dd ?
_Ecx		dd ?
_Eax		dd ?
_Ebp		dd ?
_Eip		dd ?			; XREF:	.text:0045169A/w
SegCs		dd ?
EFlags		dd ?
_Esp		dd ?
SegSs		dd ?
ExtendedRegisters db 512 dup(?)
_CONTEXT		ends

; ---------------------------------------------------------------------------


; ---------------------------------------------------------------------------

_MEMORY_BASIC_INFORMATION struc	; (sizeof=0x1C,	align=0x4, copyof_75)
BaseAddress	dd ?			; offset
AllocationBase	dd ?			; XREF:	.text:004E1A41/r ; offset
AllocationProtect dd ?
RegionSize	dd ?
State		dd ?
Protect		dd ?
_Type		dd ?
_MEMORY_BASIC_INFORMATION ends


; ---------------------------------------------------------------------------
IFNDEF FILETIME
FILETIME	struc ;	(sizeof=0x8, align=0x4,	copyof_78) ; XREF: _WIN32_FIND_DATAW/r
					; _WIN32_FIND_DATAW/r ...
dwLowDateTime	dd ?
dwHighDateTime	dd ?
FILETIME	ends
ENDIF

; ---------------------------------------------------------------------------
IFNDEF _WIN32_FIND_DATAW
_WIN32_FIND_DATAW struc	; (sizeof=0x250, align=0x4, copyof_77)
dwFileAttributes dd ?			; XREF:	.text:loc_4D8509/r
ftCreationTime	FILETIME <>
ftLastAccessTime FILETIME <>
ftLastWriteTime	FILETIME <>
nFileSizeHigh	dd ?
nFileSizeLow	dd ?
dwReserved0	dd ?
dwReserved1	dd ?
cFileName	dw 260 dup(?)		; XREF:	.text:0046ED5B/o
					; .text:0046EDDB/o ...
cAlternateFileName dw 14 dup(?)
_WIN32_FIND_DATAW ends
ENDIF

; ---------------------------------------------------------------------------

_BY_HANDLE_FILE_INFORMATION struc ; (sizeof=0x34, align=0x4, copyof_80)
dwFileAttributes dd ?
ftCreationTime	FILETIME <>
ftLastAccessTime FILETIME <>
ftLastWriteTime	FILETIME <>
dwVolumeSerialNumber dd	?
nFileSizeHigh	dd ?
nFileSizeLow	dd ?
nNumberOfLinks	dd ?
nFileIndexHigh	dd ?
nFileIndexLow	dd ?
_BY_HANDLE_FILE_INFORMATION ends

; ---------------------------------------------------------------------------

tagCHOOSECOLORW	struc ;	(sizeof=0x24, copyof_81)
lStructSize	dd ?
hwndOwner	dd ?			; offset
hInstance	dd ?			; offset
rgbResult	dd ?
lpCustColors	dd ?			; offset
Flags		dd ?
lCustData	dd ?
lpfnHook	dd ?			; offset
lpTemplateName	dd ?			; offset
tagCHOOSECOLORW	ends

; ---------------------------------------------------------------------------

tagCHOOSEFONTW	struc ;	(sizeof=0x3C, copyof_84)
lStructSize	dd ?
hwndOwner	dd ?			; offset
hDC		dd ?			; offset
lpLogFont	dd ?			; offset
iPointSize	dd ?
Flags		dd ?
rgbColors	dd ?
lCustData	dd ?
lpfnHook	dd ?			; offset
lpTemplateName	dd ?			; offset
hInstance	dd ?			; offset
lpszStyle	dd ?			; offset
nFontType	dw ?
___MISSING_ALIGNMENT__ dw ?
nSizeMin	dd ?
nSizeMax	dd ?
tagCHOOSEFONTW	ends

; ---------------------------------------------------------------------------

LOGFONTW_A2	struc ;	(sizeof=0x8, align=0x4,	mappedto_357) ;	XREF: t_font_A2/r
lfHeight	dd ?
lfWidth		dd ?
LOGFONTW_A2	ends

; ---------------------------------------------------------------------------

LOGFONTW_N8	struc ;	(sizeof=0x54, align=0x4, mappedto_356) ; XREF: t_font_A2/r
lfEscapement	dd ?
lfOrientation	dd ?
lfWeight	dd ?
lfItalic	db ?
lfUnderline	db ?
lfStrikeOut	db ?
lfCharSet	db ?
lfOutPrecision	db ?
lfClipPrecision	db ?
lfQuality	db ?
lfPitchAndFamily db ?
lfFaceName	dw 32 dup(?)
LOGFONTW_N8	ends

; ---------------------------------------------------------------------------

LOGFONTW	struc ;	(sizeof=0x5C, align=0x4, copyof_89) ; XREF: t_font/r
lfHeight	dd ?			; XREF:	.text:0040E51F/w
					; .text:0040E526/w ...
lfWidth		dd ?			; XREF:	.text:0040E52D/o
					; .text:0040E7A2/w ...
lfEscapement	dd ?			; XREF:	.text:0040E387/o
					; .text:0040E478/w
lfOrientation	dd ?			; XREF:	.text:0040E482/w
lfWeight	dd ?			; XREF:	.text:0040E489/w
					; .text:0040E490/w ...
lfItalic	db ?			; XREF:	.text:0040E49E/o
					; .text:0040E7F9/w
lfUnderline	db ?			; XREF:	.text:0040E810/w
lfStrikeOut	db ?			; XREF:	.text:0040E827/w
lfCharSet	db ?			; XREF:	.text:0040E83E/w
					; .text:0040EA49/w ...
lfOutPrecision	db ?			; XREF:	.text:0040EA50/w
					; .text:0040EAC2/w ...
lfClipPrecision	db ?			; XREF:	.text:0040EA57/w
					; .text:0040EACF/w ...
lfQuality	db ?			; XREF:	.text:0040E855/w
					; .text:0040EA5E/w ...
lfPitchAndFamily db ?			; XREF:	.text:0040E86C/w
					; .text:0040EA65/w ...
lfFaceName	dw 32 dup(?)		; XREF:	.text:0040E46E/w
					; .text:0040E4F7/w ...
LOGFONTW	ends

; ---------------------------------------------------------------------------

_RTL_CRITICAL_SECTION struc ; (sizeof=0x18, align=0x4, copyof_90)
					; XREF:	.data:CriticalSection/r
					; .data:stru_61B5D8/r ...
DebugInfo	dd ?			; offset
LockCount	dd ?
RecursionCount	dd ?
OwningThread	dd ?			; offset
LockSemaphore	dd ?			; offset
SpinCount	dd ?
_RTL_CRITICAL_SECTION ends

; ---------------------------------------------------------------------------

_EXCEPTION_POINTERS struc ; (sizeof=0x8, align=0x4, copyof_95)
ExceptionRecord	dd ?			; XREF:	.text:System::__linkproc__ HandleAnyException(void)/r
					; .text:004E54CD/r ... ; offset
ContextRecord	dd ?			; XREF:	.text:004E5551/r
					; .text:004E889A/w ; offset
_EXCEPTION_POINTERS ends

; ---------------------------------------------------------------------------

DECIMAL		struc 
wReserved	dw ?
 union	
struc 
scale		db ?
sign		db ?
 ends

signscale	dw ?
 ends

Hi32		dd ?
 union	
 struc 
				
Lo32		dd ?
Mid32		dd ?
ends

Lo64		dq ?
ends

DECIMAL		ends

VARIANTARG	struc ;	(sizeof=0x10, align=0x8, copyof_100)

 union ; 

 struc 
	vt		dw ?
	wReserved1	dw ?
	wReserved2	dw ?
	wReserved3	dw ?

	union 
		ullVal		dq ?
		llVal		dq ?
		lVal		dd ?
		bVal		db ?
		iVal		dw ?
		fltVal		dd ?
		dblVal		dq ?
		boolVal		dw ?
		scode		dd ?
		cyVal		CY <>
		date		dq ?
		bstrVal		dd ?			; offset
		punkVal		dd ?			; offset
		pdispVal	dd ?			; offset
		parray		dd ?			; offset
		pbVal		dd ?			; offset
		piVal		dd ?			; offset
		plVal		dd ?			; offset
		pllVal		dd ?			; offset
		pfltVal		dd ?			; offset
		pdblVal		dd ?			; offset
		pboolVal	dd ?			; offset
		pscode		dd ?			; offset
		pcyVal		dd ?			; offset
		pdate		dd ?			; offset
		pbstrVal	dd ?			; offset
		ppunkVal	dd ?			; offset
		ppdispVal	dd ?			; offset
		pparray		dd ?			; offset
		pvarVal		dd ?			; offset
		byref		dd ?			; offset
		cVal		db ?
		uiVal		dw ?
		ulVal		dd ?
		intVal		dd ?
		uintVal		dd ?
		pdecVal		dd ?			; offset
		pcVal		dd ?			; offset
		puiVal		dd ?			; offset
		pulVal		dd ?			; offset
		pullVal		dd ?			; offset
		pintVal		dd ?			; offset
		puintVal	dd ?			; offset
			
		struc brecVal
		pvRecord	dd ?			; offset
		pRecInfo	dd ?			; offset
		ends
	ends

ends

	decVal		DECIMAL	<>
ends

VARIANTARG	ends

; ---------------------------------------------------------------------------

; ---------------------------------------------------------------------------

; ---------------------------------------------------------------------------

; ---------------------------------------------------------------------------
IFNDEF CY
CY		union ;	(sizeof=0x8, align=0x8,	copyof_113)
struc
Lo		dd ?
Hi		dd ?
ends
					int64		dq ?
CY		ends
ENDIF

; ---------------------------------------------------------------------------


; ---------------------------------------------------------------------------

; ---------------------------------------------------------------------------


; ---------------------------------------------------------------------------


; ---------------------------------------------------------------------------


; ---------------------------------------------------------------------------


; ---------------------------------------------------------------------------

t_simple	struc ;	(sizeof=0x14, copyof_236) ; XREF: .data:dword_57A1F8/o
					; .data:stru_5D4088/r ...
heap		dd ?			; offset
itemsize	dd ?
maxitem		dd ?
nitem		dd ?
sorted		dd ?
t_simple	ends

; ---------------------------------------------------------------------------

_WIN32_FIND_DATAA struc	; (sizeof=0x140, align=0x4, copyof_192)
dwFileAttributes dd ?
ftCreationTime	FILETIME <>
ftLastAccessTime FILETIME <>
ftLastWriteTime	FILETIME <>
nFileSizeHigh	dd ?
nFileSizeLow	dd ?
dwReserved0	dd ?
dwReserved1	dd ?
cFileName	db 260 dup(?)
cAlternateFileName db 14 dup(?)
		db ? ; undefined
		db ? ; undefined
_WIN32_FIND_DATAA ends

; ---------------------------------------------------------------------------

_SECURITY_ATTRIBUTES struc ; (sizeof=0xC, align=0x4, copyof_193) ; XREF: .data:g_REG/o
nLength		dd ?
lpSecurityDescriptor dd	?		; offset
bInheritHandle	dd ?
_SECURITY_ATTRIBUTES ends

; ---------------------------------------------------------------------------
IFNDEF ACCEL
ACCEL		struc ;	(sizeof=0x6, align=0x2,	copyof_329)
fVirt		db ?
		db ? ; undefined
key		dw ?
cmd		dw ?
ACCEL		ends
ENDIF
; ---------------------------------------------------------------------------

_tpidc		struc ;	(sizeof=0x30, mappedto_195, variable size)
					; XREF:	.text:`__tpdsc__'[std::bad_alloc]/r
					; .text:`__tpdsc__'[std::exception]/r ...
tpDtt		dd ?			; base 16
tpMask		dw ?			; base 16
tpName		dw ?			; base 16
bParent		dd ?			; offset
tpcFlags	dd ?			; base 16
_Size		dw ?			; base 16
ExpDim		dw ?			; base 16
mfnDel		dd ?			; offset
mfnMask		dw ?			; base 16
mfnMaskArr	dw ?			; base 16
mfnDelArr	dd ?			; offset
DtorCount	dd ?			; base 10
DtorAltCount	dd ?			; base 10
DtorAddr	dd ?			; offset
DtorMask	dw ?			; base 16
DtorMemberOff	dw ?			; base 16
_name		db 0 dup(?)		; string(C)
_tpidc		ends

; ---------------------------------------------------------------------------

_tpidp		struc ;	(sizeof=0xC, mappedto_196, variable size)
					; XREF:	.text:`__tpdsc__'[std::bad_alloc *]/r
					; .text:`__tpdsc__'[Sysutils::EExternal *]/r ...
tpDtt		dd ?			; base 16
tpMask		dw ?			; base 16
tpName		dw ?			; base 16
BaseType	dd ?			; offset
_name		db 0 dup(?)		; string(C)
_tpidp		ends

; ---------------------------------------------------------------------------

_tpida		struc ;	(sizeof=0x10, mappedto_197, variable size)
					; XREF:	.text:`__tpdsc__'[std::bad_cast]/r
					; .text:`__tpdsc__'[std::bad_typeid]/r ...
tpDtt		dd ?			; base 16
tpMask		dw ?			; base 16
tpName		dw ?			; base 16
BaseType	dd ?			; offset
Elements	dd ?			; base 10
_name		db 0 dup(?)		; string(C)
_tpida		ends

; ---------------------------------------------------------------------------

FILE		struc ;	(sizeof=0x18, copyof_198) ; XREF: .data:_streams/r
curp		dd ?			; offset
buffer		dd ?			; offset
level		dd ?
bsize		dd ?
istemp		dw ?
flags		dw ?
hold		dw ?
fd		db ?
token		db ?
FILE		ends

; ---------------------------------------------------------------------------

_tpc_ext	struc ;	(sizeof=0x8, mappedto_200) ; XREF: .text:004F5210/r
_Type		dd ?			; offset
Flags		dd ?			; base 16
_tpc_ext	ends

; ---------------------------------------------------------------------------

_strings	struc ;	(sizeof=0x8, mappedto_201, variable size)
					; XREF:	.text:_str_False/r
					; .text:_str_True/r ...
_top		dd ?			; base 16
Len		dd ?			; base 10
Text		db 0 dup(?)		; XREF:	.data:0057985C/o ; string(C)
_strings	ends

; ---------------------------------------------------------------------------

_STARTUPINFOA	struc ;	(sizeof=0x44, align=0x4, copyof_202)
cb		dd ?
lpReserved	dd ?			; offset
lpDesktop	dd ?			; offset
lpTitle		dd ?			; offset
dwX		dd ?
dwY		dd ?
dwXSize		dd ?
dwYSize		dd ?
dwXCountChars	dd ?
dwYCountChars	dd ?
dwFillAttribute	dd ?
dwFlags		dd ?
wShowWindow	dw ?
cbReserved2	dw ?
lpReserved2	dd ?			; offset
hStdInput	dd ?			; offset
hStdOutput	dd ?			; offset
hStdError	dd ?			; offset
_STARTUPINFOA	ends

; ---------------------------------------------------------------------------

_excHdr		struc ;	(sizeof=0x8, mappedto_212) ; XREF: .data:stru_579B20/r
					; .data:stru_579B44/r ...
_unk		dd ?			; base 16
spoff		dd ?			; base 10
_excHdr		ends

; ---------------------------------------------------------------------------

_excInfo	struc ;	(sizeof=0xC, mappedto_213) ; XREF: .data:stru_579B10/r
					; .data:stru_579B34/r ...
RttiPtr		dd ?			; offset
Flags		dd ?			; base 16
spoff		dd ?			; base 10
_excInfo	ends

; ---------------------------------------------------------------------------

_excData	struc ;	(sizeof=0xC, mappedto_214) ; XREF: .data:00579B28/r
					; .data:00579B4C/r ...
Flags		dd ?			; base 16
_unk		dd ?			; base 16
InfoPtr		dd ?			; offset
_excData	ends

; ---------------------------------------------------------------------------

_excInfo2	struc ;	(sizeof=0x20, mappedto_215) ; XREF: .data:stru_57A1C4/r
					; .data:stru_57BEB0/r ...
spoff		dd ?			; base 10
_unk		dd ?			; base 16
finEntry	dd ?			; offset
RttiInfo	dd ?			; offset
zArg		dd 4 dup(?)
_excInfo2	ends

; ---------------------------------------------------------------------------

_excData2	struc ;	(sizeof=0xC, mappedto_216) ; XREF: .data:0057A1EC/r
					; .data:0057BED8/r ...
Flags		dd ?			; base 16
InitPtr		dd ?			; offset
Flags2		dd ?			; base 16
_excData2	ends

; ---------------------------------------------------------------------------

; ---------------------------------------------------------------------------

t_sorted	struc ;	(sizeof=0x44, copyof_242) ; XREF: .data:sd/r
					; .data:stru_5BE1AC/r ...
n		dd ?			; XREF:	.text:loc_44C83C/r
					; .text:loc_44EB46/r ...
nmax		dd ?
itemsize	dd ?
mode		dd ?
data		dd ?			; offset
block		dd ?			; XREF:	.text:004A0F28/o ; offset
nblock		dd ?
version		dd ?
dataptr		dd ?			; offset
selected	dd ?
seladdr		dd ?
selsubaddr	dd ?
sortfunc	dd ?			; offset
destfunc	dd ?			; offset
sort		dd ?
sorted		dd ?
sortindex	dd ?			; offset
t_sorted	ends

; ---------------------------------------------------------------------------

t_bar		struc ;	(sizeof=0x174, copyof_243) ; XREF: t_table/r
nbar		dd ?
visible		dd ?
_name		dd 17 dup(?)		; offset
expl		dd 17 dup(?)		; offset
mode		dd 17 dup(?)
defdx		dd 17 dup(?)
_dx		dd 17 dup(?)
captured	dd ?
active		dd ?
scrollvx	dd ?
scrollvy	dd ?
prevx		dd ?
prevy		dd ?
t_bar		ends

t_table		struc ;	(sizeof=0x26C, copyof_221) ; XREF: .data:pluginlist/r
					; .data:list/r ...
_name		dw 32 dup(?)
mode		dd ?
sorted		t_sorted <>		; XREF:	.text:00449E87/o
					; .text:00449E9D/o ...
subtype		dd ?
bar		t_bar <>
bottomspace	dd ?
minwidth	dd ?
tabfunc		dd ?			; offset
updatefunc	dd ?			; offset
drawfunc	dd ?			; offset
tableselfunc	dd ?			; offset
menu		dd ?			; offset
custommode	dd ?			; XREF:	.text:00449F39/w
customdata	dd ?			; offset
hparent		dd ?			; offset
hstatus		dd ?			; offset
hw		dd ?			; XREF:	.text:00454347/r
					; .text:00454354/r ... ; offset
htooltip	dd ?			; offset
font		dd ?
scheme		dd ?
hilite		dd ?
hscroll		dd ?
xshift		dd ?
_offset		dd ?
colsel		dd ?
version		dd ?
timerdraw	dd ?
rcprev		RECT <>
rtback		dd ?			; XREF:	.text:004763EE/r
					; .text:0047641C/r ...
t_table		ends

t_dump		struc ;	(sizeof=0x70C, copyof_223) ; XREF: .data:g_disasmdump/r
					; .data:g_dumpdump/r ...
base		dd ?
_size		dd ?
dumptype	dd ?
menutype	dd ?
itemwidth	dd ?
threadid	dd ?			; XREF:	.text:loc_4763DF/r
table		t_table	<>		; XREF:	.data:stru_53DA40/o
					; .data:stru_53E784/o ...
_addr		dd ?
sel0		dd ?			; XREF:	.text:004763A4/r
					; .text:004763C7/r ...
sel1		dd ?
selstart	dd ?
selend		dd ?
filecopy	dd ?			; offset
path		dw 260 dup(?)
backup		dd ?			; offset
strname		dw 32 dup(?)
decode		dd ?			; offset
bkpath		dw 260 dup(?)
relreg		dd ?
reladdr		dd ?
hilitereg	dd ?
hiregindex	dd ?
graylimit	dd ?
dumpselfunc	dd ?			; offset
t_dump		ends

; ---------------------------------------------------------------------------

; ---------------------------------------------------------------------------

t_strdec	struc ;	(sizeof=0x450, copyof_300) ; XREF: t_dumpcache/r
_size		dd ?
_addr		dd ?
value		dd ?
valuevalid	db ?
_dec		db ?
decsize		db ?
reserved	db ?
prtype		dw 32 dup(?)
_name		dw 256 dup(?)
text		dw 256 dup(?)
t_strdec	ends
; ---------------------------------------------------------------------------

t_operand	struc ;	(sizeof=0x460, copyof_281) ; XREF: t_disasm/r
features	dd ?
arg		dd ?
optype		dd ?
opsize		dd ?
granularity	dd ?
reg		dd ?
_uses		dd ?
modifies	dd ?
_seg		dd ?
scale		db 8 dup(?)
aregs		dd ?
opconst		dd ?
_offset		dd ?
selector	dd ?
_addr		dd ?
	union
		u		dd ?
		s		dd ?
		value		db 16 dup(?)
	ends
actual		db 16 dup(?)
text		dw 256 dup(?)
comment		dw 256 dup(?)
t_operand	ends


; ---------------------------------------------------------------------------

t_disasm	struc ;	(sizeof=0x18D0,	copyof_283) ; XREF: .data:da/r
					; .data:stru_5EDB9C/r ...
hilitereg	dd ?
hiregindex	dd ?
hiliteindex	dd ?
_ip		dd ?
_size		dd ?			; XREF:	.text:00451893/w
					; .text:004528BF/w ...
cmdtype		dd ?			; XREF:	.text:00455A05/r
exttype		dd ?			; XREF:	.text:00455A1A/r
prefixes	dd ?
nprefix		dd ?
memfixup	dd ?
immfixup	dd ?
errors		dd ?			; XREF:	.text:00453A37/r
					; .text:loc_455B40/r
warnings	dd ?
_uses		dd ?
modifies	dd ?
condition	dd ?
jmpaddr		dd ?			; XREF:	.text:00455B6F/r
					; .text:00455CF6/r
memconst	dd ?
stackinc	dd ?
op		t_operand 4 dup(<>)	; XREF:	.text:00453A05/o
dump		dw 256 dup(?)
result		dw 256 dup(?)
_mask		db 256 dup(?)
maskvalid	dd ?
comment		dw 256 dup(?)
t_disasm	ends

; ---------------------------------------------------------------------------

t_asmlist	struc ;	(sizeof=0x208, copyof_292)
pasm		dd ?			; offset
_length		dd ?
comment		dw 256 dup(?)
t_asmlist	ends

; ---------------------------------------------------------------------------

t_menu		struc ;	(sizeof=0x18, copyof_229) ; XREF: .data:stru_50D41C/r
					; .data:stru_50D5CC/r ...
_name		dd ?			; XREF:	.text:0040F964/o
					; .text:00410139/o ... ; offset
help		dd ?			; offset
shortcutid	dd ?
menufunc	dd ?			; offset
submenu		dd ?			; offset
	union 
		_index		dd ?
		_hsubmenu	dd ?			; offset
	ends
t_menu		ends

; ---------------------------------------------------------------------------


; ---------------------------------------------------------------------------

struct_0	struc ;	(sizeof=0x50, mappedto_331)
_base		dd ?
nmax		dd ?
n		dd ?
_i		dd ?
_name		dw 32 dup(?)
struct_0	ends


; ---------------------------------------------------------------------------

t_frame		struc ;	(sizeof=0x27C, copyof_250) ; XREF: .data:stru_5FA658/r
_name		dw 32 dup(?)
herebit		dd ?
mode		dd ?
block		dd ?			; offset
menu		dd ?			; offset
scheme		dd ?
hw		dd ?			; offset
htab		dd ?			; offset
htabwndproc	dd ?			; offset
capturedtab	dd ?
hstatus		dd ?			; offset
active		dd ?			; offset
captured	dd ?			; offset
captureoffset	dd ?
capturex	dd ?
capturey	dd ?
title		dw 256 dup(?)
t_frame		ends

; ---------------------------------------------------------------------------

t_sorthdr	struc ;	(sizeof=0xC, copyof_238)
_addr		dd ?
_size		dd ?
_type		dd ?
t_sorthdr	ends

; ---------------------------------------------------------------------------

t_memory	struc ;	(sizeof=0x68, copyof_253)
base		dd ?
_size		dd ?
_type		dd ?
special		dd ?
owner		dd ?
initaccess	dd ?
access		dd ?
threadid	dd ?
sectname	dw 32 dup(?)
copy		dd ?			; offset
decode		dd ?			; offset
t_memory	ends



; ---------------------------------------------------------------------------

t_block		struc ;	(sizeof=0x46C, copyof_249) ; XREF: .data:stru_53C890/r
					; .data:stru_53CCFC/r ...
index		dd ?
_type		dd ?
percent		dd ?
_offset		dd ?
blk1		dd ?			; offset
minp1		dd ?
maxc1		dd ?
blk2		dd ?			; offset
minp2		dd ?
maxc2		dd ?
table		dd ?			; offset
tabname		dw 32 dup(?)		; char
_title		dw 256 dup(?)		; char
status		dw 256 dup(?)		; char
t_block		ends

; ---------------------------------------------------------------------------

t_srcext	struc ;	(sizeof=0x8, copyof_324)
amin		dd ?
amax		dd ?
t_srcext	ends
; ---------------------------------------------------------------------------

t_stack struc ; (sizeof=0xC, copyof_278)
					; XREF:	t_predict/r
soffset		dd ?
sstate		dd ?
sconst		dd ?
t_stack ends

; ---------------------------------------------------------------------------

t_mem struc ; (sizeof=0xC, copyof_279)
					; XREF:	t_predict/r
maddr		dd ?
mstate		dd ?
mconst		dd ?
t_mem ends

; ---------------------------------------------------------------------------

t_predict	struc ;	(sizeof=0x176, copyof_277)
_addr		dd ?
one		dd ?
_type		dd ?
flagsmeaning	dw ?
rstate		dd 8 dup(?)
rconst		dd 8 dup(?)
jmpstate	dd ?
jmpconst	dd ?
espatpushbp	dd ?
nstack		dd ?
stack		t_stack 12	dup(<>)
nstkmod		dd ?
stkmod		dd 24 dup(?)
nmem		dd ?
mem		t_mem 2 dup(<>)
resstate	dd ?
resconst	dd ?
t_predict	ends

; ---------------------------------------------------------------------------

t_memfield	struc ;	(sizeof=0x18, copyof_273) ; XREF: t_reg/r
_addr		dd ?
_size		dd ?
data		db 16 dup(?)
t_memfield	ends

; ---------------------------------------------------------------------------

t_reg		struc ;	(sizeof=0x1C4, copyof_274) ; XREF: .data:preg/r
					; .data:stru_5FC290/r ...
status		dd ?
threadid	dd ?
_ip		dd ?
r		dd 8 dup(?)
flags		dd ?
s		dd 6 dup(?)
base		dd 6 dup(?)
limit		dd 6 dup(?)
big		db 6 dup(?)
dummy		db 2 dup(?)
top		dd ?
f		dt 8 dup(?)
tag		db 8 dup(?)
_fst		dd ?
fcw		dd ?
ferrseg		dd ?
feroffs		dd ?
dr		dd 8 dup(?)
lasterror	dd ?
ssereg		db 128 dup(?)
_mxcsr		dd ?
mem		t_memfield 2 dup(<>)
t_reg		ends


; ---------------------------------------------------------------------------

t_thread	struc ;	(sizeof=0x714, copyof_275)
threadid	dd ?
dummy		dd ?
_type		dd ?
ordinal		dd ?
_name		dw 32 dup(?)
thread		dd ?			; offset
tib		dd ?
entry		dd ?
context		CONTEXT	<>
reg		t_reg <>
regvalid	dd ?
oldreg		t_reg <>
oldregvalid	dd ?
suspendrun	dd ?
suspendcount	dd ?
suspenduser	dd ?
trapset		dd ?
trapincontext	dd ?
rtprotocoladdr	dd ?
ignoreonce	dd ?
drvalid		dd ?
dr		dd 8 dup(?)
hwmasked	dd ?
hwreported	dd ?
hw		dd ?			; offset
usertime	dd ?
systime		dd ?
stacktop	dd ?
stackbottom	dd ?
t_thread	ends

; ---------------------------------------------------------------------------

t_argdec	struc ;	(sizeof=0x44C, copyof_299) ; XREF: t_dumpcache/r
mode		dd ?
value		dd ?
pushaddr	dd ?
prtype		dw 32 dup(?)
_name		dw 256 dup(?)
text		dw 256 dup(?)
t_argdec	ends

; ---------------------------------------------------------------------------

t_sframe	struc ;	(sizeof=0x404, copyof_298) ; XREF: t_dumpcache/r
_eip		dd ?			; XREF:	.text:0044DE7B/w
					; .text:004572D4/w ...
_esp		dd ?			; XREF:	.text:0044DE84/w
					; .text:004572E3/w ...
_ebp		dd ?			; XREF:	.text:0044DE8F/w
					; .text:004572F2/w ...
firstcall	dd ?			; XREF:	.text:0044DE97/w
					; .text:004572F8/w
thread		dd ?			; XREF:	.text:0044DEA1/w
					; .text:00457305/w ; offset
context		CONTEXT	<>		; XREF:	.text:00457310/o
contextvalid	dd ?			; XREF:	.text:0044DEA7/w
					; .text:0045731F/w
status		dd ?
oldeip		dd ?			; XREF:	.text:0044DEC7/r
					; .text:loc_457381/r ...
oldesp		dd ?			; XREF:	.text:00457396/r
oldebp		dd ?			; XREF:	.text:004573A2/r
retpos		dd ?
procaddr	dd ?			; XREF:	.text:00457355/r
dummy		db 264 dup(?)
t_sframe	ends

; ---------------------------------------------------------------------------

t_netstream	struc ;	(sizeof=0x8, copyof_265) ; XREF: t_module/r
base		dd ?
_size		dd ?
t_netstream	ends

; ---------------------------------------------------------------------------

t_metadata	struc ;	(sizeof=0x10, copyof_266) ; XREF: t_module/r
base		dd ?
rowcount	dd ?
rowsize		dd ?
nameoffs	dw ?
namesize	dw ?
t_metadata	ends

; ---------------------------------------------------------------------------

t_jmpdata	struc ;	(sizeof=0x2C, copyof_256) ; XREF: t_dumpcache/r
					; t_module/r
modbase		dd ?
modsize		dd ?
jmpdata		dd ?			; offset
jmpindex	dd ?			; offset
maxjmp		dd ?
njmp		dd ?
nsorted		dd ?
dontsort	dd ?
exe		dd ?			; offset
maxexe		dd ?
nexe		dd ?
t_jmpdata	ends

; ---------------------------------------------------------------------------

t_nested	struc ;	(sizeof=0x18, copyof_262) ; XREF: t_module/r t_module/r
n		dd ?
nmax		dd ?
itemsize	dd ?
data		dd ?			; offset
version		dd ?
destfunc	dd ?			; offset
t_nested	ends

; ---------------------------------------------------------------------------

t_jmp		struc ;	(sizeof=0x9, copyof_254)
from		dd ?
dest		dd ?
_type		db ?
t_jmp		ends

; ---------------------------------------------------------------------------

t_module	struc ;	(sizeof=0xFB0, copyof_222)
base		dd ?
_size		dd ?
_type		dd ?
modname		dw 32 dup(?)
path		dw 260 dup(?)
version		dw 256 dup(?)
fixupbase	dd ?
codebase	dd ?
codesize	dd ?
entry		dd ?
sfxentry	dd ?
winmain		dd ?
database	dd ?
edatabase	dd ?
edatasize	dd ?
idatatable	dd ?
iatbase		dd ?
iatsize		dd ?
relocbase	dd ?
relocsize	dd ?
resbase		dd ?
ressize		dd ?
tlsbase		dd ?
tlssize		dd ?
tlscallback	dd ?
netentry	dd ?
clibase		dd ?
clisize		dd ?
netstr		t_netstream 5 dup(<>)
metadata	t_metadata 64 dup(<>)
sfxbase		dd ?
sfxsize		dd ?
rawhdrsize	dd ?
memhdrsize	dd ?
nsect		dd ?
sect		dd ?			; offset
nfixup		dd ?
fixup		dd ?			; offset
jumps		t_jmpdata <>
loopnest	t_nested <>
argnest		t_nested <>
predict		t_simple <>
strings		t_sorted <>
saveudd		dd ?
ncallmod	dd ?
callmod		dw 768 dup(?)
t_module	ends

; ---------------------------------------------------------------------------

struct_1	struc ;	(sizeof=0x5, mappedto_335) ; XREF: .text:stru_4DF6A2/r
anonymous_0	db ?
field_1		db ?
field_2		db ?
field_3		db ?
field_4		db ?
struct_1	ends

; ---------------------------------------------------------------------------

t_bincmd	struc ;	(sizeof=0x34, copyof_289) ; XREF: .data:bincmd/r
					; .data:004F7970/r ...
_name		dd ?			; offset
_cmdtype		dd ?
_exttype		dd ?
_length		dd ?
_mask		dd ?
_code		dd ?
postbyte	dd ?
_arg0		    dd ?
_arg1 dd ?
_arg2 dd ?
_arg3  dd ?
_trace		dd ?			; offset
_emu		dd ?			; offset
t_bincmd	ends

; ---------------------------------------------------------------------------

t_public	struc ;	(sizeof=0xC, mappedto_339) ; XREF: .data:stru_50E0F4/r
p		dd ?			; offset
h		dd ?			; offset (00000000)
visable		dd ?
t_public	ends

; ---------------------------------------------------------------------------

t_path		struc ;	(sizeof=0x10, mappedto_340) ; XREF: .data:stru_50EB8C/r
p		dd ?			; offset (00000000)
visable		dd ?
h		dd ?			; offset (00000000)
_name		dd ?			; offset (00000000)
t_path		ends

; ---------------------------------------------------------------------------

struct_2	struc ;	(sizeof=0x28, mappedto_341)
anonymous_0	dd ?
anonymous_1	dd ?
anonymous_2	dd ?
anonymous_3	dd ?
anonymous_4	dd ?
anonymous_5	dd ?
anonymous_6	dd ?
anonymous_7	dd ?			; offset
anonymous_8	dd ?
anonymous_9	dd ?
struct_2	ends

; ---------------------------------------------------------------------------

t_control	struc ;	(sizeof=0x28, copyof_307) ; XREF: .data:stru_51AB0C/r
					; .data:0051AB34/r ...
_type		dd ?			; XREF:	.data:00527224/o
					; .data:0052779C/o ...
id		dd ?
x		dd ?
y		dd ?			; XREF:	.data:00526F04/o
					; .data:00526F54/o ...
_dx		dd ?
dy		dd ?
_var		dd ?			; XREF:	.data:0051ABFC/o
					; .data:0051AC4C/o ; offset
text		dd ?			; offset
help		dd ?			; XREF:	.data:00526F2C/o
					; .data:0052701C/o ; offset
oldvar		dd ?			; XREF:	.data:005271FC/o
					; .data:00527774/o ...
t_control	ends

; ---------------------------------------------------------------------------

struct_4	struc ;	(sizeof=0xC, mappedto_343) ; XREF: .data:stru_530110/r
					; .data:0053011C/r ...
anonymous_0	dd ?			; XREF:	.data:00530548/o
					; .data:0053057E/o
anonymous_1	dd ?			; XREF:	.data:00530158/o
					; .data:00530536/o ...
anonymous_2	dd ?			; XREF:	.data:0053011C/o
					; .data:00530218/o ... ; offset	(00000000)
struct_4	ends

; ---------------------------------------------------------------------------

t_float		struc ;	(sizeof=0x12, mappedto_345) ; XREF: .data:tfloat/r
					; .data:005303CE/r ...
data		dt ?			; base 10
_type		dd ?
_name		dd ?			; offset (00000000)
t_float		ends

; ---------------------------------------------------------------------------

GUID		struc ;	(sizeof=0x10, align=0x4, mappedto_65)
					; XREF:	.data:stru_575E8C/r
					; .data:stru_575E9C/r ...
Data1		dd ?
Data2		dw ?
Data3		dw ?
Data4		db 8 dup(?)
GUID		ends

; ---------------------------------------------------------------------------

t_font_A2	struc ;	(sizeof=0x27C, mappedto_358)
logfont_N8	LOGFONTW_N8 <>
stockindex	dd ?
hadjtop		dd ?
hadjbot		dd ?
_name		dw 256 dup(?)
hfont		dd ?
isstock		dd ?
isfullunicode	dd ?
_width		dd ?
height		dd ?
logfont_A2	LOGFONTW_A2 <>
t_font_A2	ends

; ---------------------------------------------------------------------------

t_font		struc ;	(sizeof=0x27C, mappedto_354) ; XREF: .text:0040E464/w
					; .text:0040E5F8/o ...
logfont		LOGFONTW <>		; XREF:	.text:0040E387/o
					; .text:0040E46E/w ...
stockindex	dd ?			; XREF:	.text:0040E446/w
					; .text:0040E4D0/w ...
hadjtop		dd ?			; XREF:	.text:0040E4AB/w
					; .text:0040E53A/w ...
hadjbot		dd ?			; XREF:	.text:0040E8F0/w
_name		dw 256 dup(?)		; XREF:	.text:0040E457/o
					; .text:0040E4C3/o ...
hfont		dd ?			; offset
isstock		dd ?
isfullunicode	dd ?
_width		dd ?
height		dd ?
t_font		ends

; ---------------------------------------------------------------------------

t_scheme	struc ;	(sizeof=0x328, copyof_252) ; XREF: .text:0040EE4E/o
					; .text:0040F0CF/o ...
_name		dw 256 dup(?)		; XREF:	.text:0040EF14/o
					; .text:0040EFDC/o ...
textcolor	dd 32 dup(?)		; XREF:	.text:0040ED9C/w
					; .text:0040EDAD/w ...
bkcolor		dd 32 dup(?)		; XREF:	.text:0040EDA4/w
					; .text:0040EDB6/w ...
hiliteoperands	dd ?			; XREF:	.text:0040F35B/w
					; .text:0040F475/w ...
hilitemodified	dd ?			; XREF:	.text:0040F3E7/w
					; .text:0040F47B/w ...
bkbrush		dd ?			; offset
selbkbrush	dd ?			; offset
auxbrush	dd ?			; offset
graphpen	dd ?			; offset
lopen		dd ?			; offset
hipen		dd ?			; offset
auxpen		dd ?			; offset
ulpen		dd ?			; offset
t_scheme	ends

; ---------------------------------------------------------------------------

t_run		struc ;	(sizeof=0xA4, copyof_326) ; XREF: .data:run/r
status		dd ?			; XREF:	.text:0040E31F/w
					; .text:004103A7/r ... ; enum t_status
threadid	dd ?
tpausing	dd ?
wakestep	dd ?
_eip		dd ?
_ecx		dd ?
restoreint3addr	dd ?
stepoverdest	dd ?
updatebppage	dd ?
de		DEBUG_EVENT <>		; XREF:	.text:0044C3AA/r
					; .text:0044C3B3/r
indebugevent	dd ?			; XREF:	.text:0044C3A1/r
netevent	dd ?
isappexception	dd ?
lastexception	dd ?
suspended	dd ?
suspendonpause	dd ?
updatedebugreg	dd ?
dregmodified	dd ?			; XREF:	.text:0044C42A/w
					; .text:0044C80C/w
t_run		ends
; ---------------------------------------------------------------------------

t_modop		struc ;	(sizeof=0x11, copyof_290) ; XREF: t_asmmod/r
features	db ?
reg		db ?
scale		db 11 dup(?)
opconst		dd ?
t_modop		ends

; ---------------------------------------------------------------------------

t_asmmod	struc ;	(sizeof=0x6C, copyof_291) ; XREF: .data:stru_5F2D80/r
					; t_rtcond/r
code		db 16 dup(?)
_mask		db 16 dup(?)
prefixes	dd ?
ncode		db ?
features	db ?
postbyte	db ?
noperand	db ?
op		t_modop	4 dup(<>)
t_asmmod	ends


; ---------------------------------------------------------------------------

t_rtcond	struc ;	(sizeof=0x7C40,	copyof_321) ; XREF: .data:rtcond/r
options		dd ?			; XREF:	.text:00451A8A/r
					; .text:0045593A/r
inrange0	dd ?
inrange1	dd ?
outrange0	dd ?
outrange1	dd ?
count		dd ?
currcount	dd ?			; XREF:	.text:loc_451AA9/w
memaccess	dd 2 dup(?)		; XREF:	.data:0052698C/o
					; .data:00526A7C/o
memrange0	dd 2 dup(?)
memrange1	dd 2 dup(?)
cond		dw 1024	dup(?)
cmd		dw 512 dup(?)
ccomp		db 1024	dup(?)
validmodels	dd ?
_model		t_asmmod 256 dup(<>)
nmodel		dd 2 dup(?)
t_rtcond	ends

; ---------------------------------------------------------------------------

t_rtprot	struc ;	(sizeof=0x224, copyof_322) ; XREF: .data:rtprot/r
tracelogtype	dd ?
memranges	dd ?
memaccess	dd 2 dup(?)
memrange0	dd 2 dup(?)
memrange1	dd 2 dup(?)
rangeactive	dd ?
range		t_range	64 dup(<>)	; XREF:	.text:00449F9D/o
t_rtprot	ends


; ---------------------------------------------------------------------------

IFNDEF EXCEPTION_RECORD
EXCEPTION_RECORD struc ; (sizeof=0x50, align=0x4, copyof_97)
					; XREF:	EXCEPTION_DEBUG_INFO/r
ExceptionCode	dd ?
ExceptionFlags	dd ?
ExceptionRecord	dd ?			; offset
ExceptionAddress dd ?			; offset
NumberParameters dd ?
ExceptionInformation dd	15 dup(?)
EXCEPTION_RECORD ends
ENDIF

; ---------------------------------------------------------------------------
IFNDEF EXCEPTION_DEBUG_INFO
EXCEPTION_DEBUG_INFO struc ; (sizeof=0x54, align=0x4, copyof_365)
					; XREF:	_DEBUG_EVENT::$E8D2578A27A7ED17B9C3B01BD68B5178/r
ExceptionRecord	EXCEPTION_RECORD <>
dwFirstChance	dd ?
EXCEPTION_DEBUG_INFO ends
ENDIF
; ---------------------------------------------------------------------------

; ---------------------------------------------------------------------------
IFNDEF CREATE_THREAD_DEBUG_INFO
CREATE_THREAD_DEBUG_INFO struc ; (sizeof=0xC, align=0x4, copyof_367)
					; XREF:	_DEBUG_EVENT::$E8D2578A27A7ED17B9C3B01BD68B5178/r
hThread		dd ?			; offset
lpThreadLocalBase dd ?			; offset
lpStartAddress	dd ?			; offset
CREATE_THREAD_DEBUG_INFO ends
ENDIF
; ---------------------------------------------------------------------------

IFNDEF CREATE_PROCESS_DEBUG_INFO
CREATE_PROCESS_DEBUG_INFO struc	; (sizeof=0x28,	align=0x4, copyof_371)
					; XREF:	_DEBUG_EVENT::$E8D2578A27A7ED17B9C3B01BD68B5178/r
hFile		dd ?			; offset
hProcess	dd ?			; offset
hThread		dd ?			; offset
lpBaseOfImage	dd ?			; offset
dwDebugInfoFileOffset dd ?
nDebugInfoSize	dd ?
lpThreadLocalBase dd ?			; offset
lpStartAddress	dd ?			; offset
lpImageName	dd ?			; offset
fUnicode	dw ?
		db ? ; undefined
		db ? ; undefined
CREATE_PROCESS_DEBUG_INFO ends
ENDIF
; ---------------------------------------------------------------------------
IFNDEF EXIT_THREAD_DEBUG_INFO
EXIT_THREAD_DEBUG_INFO struc ; (sizeof=0x4, align=0x4, copyof_373)
					; XREF:	_DEBUG_EVENT::$E8D2578A27A7ED17B9C3B01BD68B5178/r
dwExitCode	dd ?
EXIT_THREAD_DEBUG_INFO ends
ENDIF
; ---------------------------------------------------------------------------
IFNDEF EXIT_PROCESS_DEBUG_INFO
EXIT_PROCESS_DEBUG_INFO	struc ;	(sizeof=0x4, align=0x4,	copyof_375)
					; XREF:	_DEBUG_EVENT::$E8D2578A27A7ED17B9C3B01BD68B5178/r
dwExitCode	dd ?
EXIT_PROCESS_DEBUG_INFO	ends
ENDIF
; ---------------------------------------------------------------------------
IFNDEF LOAD_DLL_DEBUG_INFO
LOAD_DLL_DEBUG_INFO struc ; (sizeof=0x18, align=0x4, copyof_377)
					; XREF:	_DEBUG_EVENT::$E8D2578A27A7ED17B9C3B01BD68B5178/r
hFile		dd ?			; offset
lpBaseOfDll	dd ?			; offset
dwDebugInfoFileOffset dd ?
nDebugInfoSize	dd ?
lpImageName	dd ?			; offset
fUnicode	dw ?
		db ? ; undefined
		db ? ; undefined
LOAD_DLL_DEBUG_INFO ends
ENDIF
; ---------------------------------------------------------------------------
IFNDEF UNLOAD_DLL_DEBUG_INFO
UNLOAD_DLL_DEBUG_INFO struc ; (sizeof=0x4, align=0x4, copyof_379)
					; XREF:	_DEBUG_EVENT::$E8D2578A27A7ED17B9C3B01BD68B5178/r
lpBaseOfDll	dd ?			; offset
UNLOAD_DLL_DEBUG_INFO ends
ENDIF
; ---------------------------------------------------------------------------
IFNDEF OUTPUT_DEBUG_STRING_INFO
OUTPUT_DEBUG_STRING_INFO struc ; (sizeof=0x8, align=0x4, copyof_381)
					; XREF:	_DEBUG_EVENT::$E8D2578A27A7ED17B9C3B01BD68B5178/r
lpDebugStringData dd ?			; offset
fUnicode	dw ?
nDebugStringLength dw ?
OUTPUT_DEBUG_STRING_INFO ends
ENDIF
; ---------------------------------------------------------------------------
IFNDEF RIP_INFO
RIP_INFO	struc ;	(sizeof=0x8, align=0x4,	copyof_383)
					; XREF:	_DEBUG_EVENT::$E8D2578A27A7ED17B9C3B01BD68B5178/r
dwError		dd ?
dwType		dd ?
RIP_INFO	ends
ENDIF
; ---------------------------------------------------------------------------
IFNDEF DEBUG_EVENT
DEBUG_EVENT	struc ;	(sizeof=0x60, align=0x4, copyof_362) ; XREF: t_run/r
dwDebugEventCode dd ?			; XREF:	.text:0044C3AA/r
dwProcessId	dd ?
dwThreadId	dd ?
union u
	Exception	EXCEPTION_DEBUG_INFO ?
	CreateThread	CREATE_THREAD_DEBUG_INFO ?
	CreateProcessInfo CREATE_PROCESS_DEBUG_INFO ?
	ExitThread	EXIT_THREAD_DEBUG_INFO ?
	ExitProcess	EXIT_PROCESS_DEBUG_INFO	?
	LoadDll		LOAD_DLL_DEBUG_INFO ?
	UnloadDll	UNLOAD_DLL_DEBUG_INFO ?
	DebugString	OUTPUT_DEBUG_STRING_INFO ?
	RipInfo		RIP_INFO ?
ends 
DEBUG_EVENT	ends
ENDIF

; ---------------------------------------------------------------------------


; ---------------------------------------------------------------------------

t_histrec	struc ;	(sizeof=0x14, copyof_319) ; XREF: t_history/r
threadid	dd ?
dumptype	dd ?
_addr		dd ?
sel0		dd ?
sel1		dd ?
t_histrec	ends

t_history	struc ;	(sizeof=0x500C,	copyof_320) ; XREF: .data:ph/r
					; .data:stru_5C3710/r
h		t_histrec 1024 dup(<>)
holdest		dd ?
hnext		dd ?
hcurr		dd ?
t_history	ends

; ---------------------------------------------------------------------------

t_hexstr	struc ;	(sizeof=0x808, copyof_309) ; XREF: .data:hstr/r
n		dd ?			; XREF:	.text:loc_4A797D/r
nmax		dd ?
data		db 1024	dup(?)
_mask		db 1024	dup(?)
t_hexstr	ends

; ---------------------------------------------------------------------------

t_tagfile	struc ;	(sizeof=0x14, align=0x4, copyof_389)
f		dd ?			; offset
filesize	dd ?
_offset		dd ?
tag		dd ?
recsize		dd ?
t_tagfile	ends

; ---------------------------------------------------------------------------

t_result        struc 
	lvaltype        dd ?
	lvaladdr        dd ?
	datatype        dd ?
	repcount        dd ?
	union
		_data            db 10 dup(?)
		w				dw ?
		u               dd ?
		l               dd ?
		f               tbyte ?
	ends
	value           dw 256 dup(?)
t_result        ends

; ---------------------------------------------------------------------------

t_jmpcall	struc ;	(sizeof=0x8, copyof_257) ; XREF: .data:stru_5E9DC4/r
	_addr		dd ?
	union
	_type		dd ?
	swcase		dd ?
	ends
t_jmpcall	ends

; ---------------------------------------------------------------------------


; ---------------------------------------------------------------------------

t_Stock		struc ;	(sizeof=0x44, mappedto_392) ; XREF: .data:g_Stock/r
hgdi		dd ?			; offset
_name		dw 32 dup(?)
t_Stock		ends

; ---------------------------------------------------------------------------

t_dialog	struc ;	(sizeof=0x7C, copyof_308) ; XREF: .data:pdlg/r
					; .data:g_dialog/r ...
controls	dd ?			; offset
_title		dd ?			; offset
focus		dd ?
item		dd ?
u		dd ?
data		db 16 dup(?)
addr0		dd ?
addr1		dd ?
letter		dd ?
x		dd ?
y		dd ?
fi		dd ?
mode		dd ?
cesav		dd 8 dup(?)
fixfont		dd ?			; offset
isfullunicode	dd ?
fixdx		dd ?
fixdy		dd ?
htooltip	dd ?			; offset
hwwarn		dd ?			; offset
initdone	dd ?
t_dialog	ends

; ---------------------------------------------------------------------------

struct_3	struc ;	(sizeof=0x18, mappedto_394) ; XREF: .data:stru_5DA5B4/r
anonymous_0	dd ?
anonymous_1	dd ?
mode		dd ?
threadid	dd ?
anonymous_4	dd ?			; offset
anonymous_5	dd ?
struct_3	ends

; ---------------------------------------------------------------------------

t_netasm	struc ;	(sizeof=0x82C, copyof_293)
_ip		dd ?
_size		dd ?
cmdtype		dd ?
cmdsize		dd ?
opsize		dd ?
nswitch		dd ?
jmpaddr		dd ?
descriptor	dd ?
dataaddr	dd ?
errors		dd ?
optype		dd ?
optext		dw 256 dup(?)
dump		dw 256 dup(?)
result		dw 256 dup(?)
comment		dw 256 dup(?)
t_netasm	ends

; ---------------------------------------------------------------------------

t_scan		struc ;	(sizeof=0x42E, copyof_226) ; XREF: .data:ps/r
					; .data:stru_5F26F0/r
mode		dd ?
src		dd ?			; offset
_length		dd ?
caret		dd ?
line		dd ?
	union
		ival		dd ?
		uval		dd ?
	ends
_mask		dd ?
fval		dt ?
text		dw 256 dup(?)
ntext		dd ?
errmsg		dw 256 dup(?)
_type		dd ?
t_scan		ends

; ---------------------------------------------------------------------------


; ---------------------------------------------------------------------------

struct_5	struc ;	(sizeof=0x10, mappedto_395) ; XREF: .data:stru_519468/r
					; .data:00519478/r ...
anonymous_0	dd ?			; offset (00000000)
anonymous_1	dd ?
anonymous_2	dd ?
anonymous_3	dd ?
struct_5	ends

; ---------------------------------------------------------------------------

struct_6	struc ;	(sizeof=0x20, mappedto_396)
anonymous_0	dd ?
anonymous_1	dd ?
anonymous_2	dd ?
anonymous_3	dd ?
anonymous_4	dd ?
anonymous_5	dd ?
anonymous_6	dd ?
anonymous_7	dd ?
struct_6	ends

; ---------------------------------------------------------------------------

t_dotnet	struc ;	(sizeof=0x14, mappedto_397) ; XREF: .data:stru_5735A0/r
					; .data:005735B4/r ...
_name		dd ?			; offset (00000000)
anonymous_1	dd ?			; offset (00000000)
anonymous_2	dd ?			; offset (00000000)
anonymous_3	dd ?			; offset (00000000)
anonymous_4	dd ?			; offset (00000000)
t_dotnet	ends

; ---------------------------------------------------------------------------

t_procdata	struc ;	(sizeof=0x40, copyof_294)
_addr		dd ?
_size		dd ?
_type		dd ?
retsize		dd ?
localsize	dd ?
savedebp	dd ?
features	dd ?
generic		db 12 dup(?)
narg		dd ?
nguess		dd ?
npush		dd ?
usedarg		dd ?
preserved	db ?
argopt		db 7 dup(?)
t_procdata	ends

; ---------------------------------------------------------------------------
t_opinfo	struc ;	(sizeof=0x20, copyof_284) ; XREF: t_cmdinfo/r
features	dd ?
arg		dd ?
opsize		dd ?
reg		dd ?
_seg		dd ?
scale		db 8 dup(?)
opconst		dd ?
t_opinfo	ends

t_cmdinfo	struc ;	(sizeof=0xA8, copyof_285) ; XREF: .data:tmpcmdinfo/r
					; .data:stru_593CC6/r ...
_ip		dd ?
_size		dd ?
cmdtype		dd ?
prefixes	dd ?
nprefix		dd ?
memfixup	dd ?
immfixup	dd ?
errors		dd ?
jmpaddr		dd ?
stackinc	dd ?
op		t_opinfo 4 dup(<>)
t_cmdinfo	ends

; ---------------------------------------------------------------------------


; ---------------------------------------------------------------------------

struct_7	struc ;	(sizeof=0x24, mappedto_399) ; XREF: .data:stru_5475D4/r
					; .data:stru_5475F8/r ...
index		dd ?			; offset (00000000)
_type		dd ?
anonymous_2	dd ?
anonymous_3	dd ?
anonymous_4	dd ?
anonymous_5	dd ?
anonymous_6	dd ?
anonymous_7	dd ?
_name		dd ?			; offset (00000000)
struct_7	ends

; ---------------------------------------------------------------------------

t_plugin	struc ;	(sizeof=0x2D4, mappedto_400)
handle		dd ?			; XREF:	.text:loc_4D88FD/w ; offset
visable		dd ?			; XREF:	.text:004D8909/w
field_8		dd ?
pluginname	dw 32 dup(?)		; XREF:	.text:004D875B/w
					; .text:004D8776/o ...
pluginversion	dw 32 dup(?)		; XREF:	.text:004D8764/w
					; .text:004D8770/o
pluginpath	dw 260 dup(?)		; XREF:	.text:004D8914/o
index		LARGE_INTEGER <>		; XREF:	.text:004D893F/w
					; .text:004D8945/w
ODBG2_Pluginmenu dd ?			; XREF:	.text:004D86A8/w
ODBG2_Pluginoptions dd ?		; XREF:	.text:004D86BC/w
					; .text:loc_4D88A3/r
ODBG2_Pluginanalyse dd ?		; XREF:	.text:004D8644/w
ODBG2_Pluginmainloop dd	?		; XREF:	.text:004D8658/w
					; .text:loc_4D88B2/r
ODBG2_Pluginexception dd ?		; XREF:	.text:004D866C/w
					; .text:loc_4D88C1/r
ODBG2_Plugintempbreakpoint dd ?		; XREF:	.text:004D8680/w
					; .text:loc_4D88D0/r
ODBG2_Pluginnotify dd ?			; XREF:	.text:004D8694/w
					; .text:loc_4D88DF/r
ODBG2_Plugindump dd ?			; XREF:	.text:004D86D0/w
ODBG2_Pluginsaveudd dd ?		; XREF:	.text:004D86E4/w
ODBG2_Pluginuddrecord dd ?		; XREF:	.text:004D86F8/w
ODBG2_Pluginreset dd ?			; XREF:	.text:004D870C/w
					; .text:loc_4D88EE/r ...
ODBG2_Plugindetach dd ?			; XREF:	.text:004D8720/w
ODBG2_Pluginclose dd ?			; XREF:	.text:004D8734/w
ODBG2_Plugindestroy dd ?		; XREF:	.text:004D8748/w
t_plugin	ends

; ---------------------------------------------------------------------------

struct_8	struc ;	(sizeof=0x208, mappedto_402) ; XREF: .data:stru_5FF23C/r
n		dd ?
text		dw 256 dup(?)
field_204	dd ?
struct_8	ends

; ---------------------------------------------------------------------------

struc_43	struc ;	(sizeof=0x218, mappedto_403) ; XREF: struct_9/r
_type		dd ?
_addr		dd ?
color		dd ?
simple		dd ?			; offset
text		dw 260 dup(?)
struc_43	ends

; ---------------------------------------------------------------------------

struct_9	struc ;	(sizeof=0x10C08, mappedto_406) ; XREF: .data:stru_60786C/r
data		struc_43 128 dup(<>)
_ne		dd ?
_nc		dd ?
struct_9	ends

; ---------------------------------------------------------------------------

; ---------------------------------------------------------------------------

; enum MACRO_WILDCARDS,	copyof_407
WILDCARDS	 = 1
EXTENSION	 = 2
FILENAME	 = 4
DIRECTORY	 = 8
DRIVE		 = 10h
MAXPATH		 = 104h

; ---------------------------------------------------------------------------

t_comment	struc ;	(sizeof=0x66C, mappedto_401) ; XREF: .data:stru_5E7DA8/r
block		t_block	<>
text		dw 256 dup(?)
t_comment	ends
; ---------------------------------------------------------------------------

t_dumpcache	struc ;	(sizeof=0x59E0C, mappedto_333, variable	size)
base		dd ?
D_type		dd ?
D_count		dd ?
D_size		dd ?
field_10	dd ?
field_14	dd ?
field_18	dd ?
field_1C	dd ?
_offset		dd ?
field_24	dd ?
field_28	db 6352	dup(?)
select		dd ?
M_size		dd ?
M_sizecpy	dd ?
field_1904	dd ?
pbase		dd ?
module		dd ?			; offset
field_1910	dd ?
reg		dd ?			; offset
field_1918	dd 512 dup(?)
j		t_jmpdata <>
field_2144	dd ?
field_2148	dd ?
field_214C	dd ?
field_2150	dd ?
field_2154	dd ?
field_2158	dd ?
field_215C	dd ?
field_2160	dd ?
field_2164	dd ?
field_2168	dd ?
field_216C	dd ?
field_2170	dd ?
field_2174	dd ?
field_2178	dd ?
psframe		t_sframe <>
field_2580	dd ?
field_2584	dd ?
adec		t_argdec 24 dup(<>)
narg		dd ?
field_8CAC	dd ?
strdec		t_strdec 300 dup(<>)
field_59A70	dd ?
nstra		dd ?
nrelstra	dd ?
hmem		dd ?			; offset
field_59A80	dd 64 dup(?)
field_59B80	dd ?
field_59B84	dw 256 dup(?)
field_59D84	dd ?
field_59D88	dd 32 dup(?)
field_59E08	dd ?
pdata		dd 0 dup(?)
t_dumpcache	ends


unicode macro t:REQ,text:REQ,E

TW_ "&text"
IFNB <E>
dw 0
ENDIF
ENDM

__DebugBreak macro
	IFDEF DEBUG 
		IF DEBUG EQ 1
			echo for DEBUG
			call __DbgAsk
		ENDIF
	ENDIF
endm

IFDEF DEBUG
IF DEBUG EQ 1
echo for DEBUG
.code
__DbgAsk proc
	pushad
	pushfd
	invoke MessageBoxW,NULL,$CTW0("Break"),$CTW0(""),MB_YESNO
	.if eax==IDYES
	int 3
	.endif
	popfd
	popad
	ret
__DbgAsk endp
ENDIF
ENDIF

