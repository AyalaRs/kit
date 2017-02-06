
; Segment permissions: Read/Write
_data		segment	para public 'DATA' use32
		assume cs:_data

TlsIndex	dd 0			; DATA XREF: .rdata:TlsIndex_ptro
		dd 0
; HMODULE hModule
hModule		dd 0			; DATA XREF: .text:00401161r
		dd 0
dword_57D954	dd 0			; DATA XREF: .text:00401299w
		dd 0
; LPCWSTR lpString
lpString	dd 0			; DATA XREF: .text:loc_401E25r
dword_57D960	dd 0			; DATA XREF: .text:004012D3o
; HGLOBAL dword_57D964
dword_57D964	dd 0			; DATA XREF: .text:004041A8r
dword_57D968	dd 0			; DATA XREF: .text:004041B5r
; t_sorted sd
sd		t_sorted <0>		; DATA XREF: .text:00401727o
dword_57D9B0	dd 0			; DATA XREF: .text:00401714r
dword_57D9B4	dd 0			; DATA XREF: .text:0040173Ar
; UINT Msg
Msg		dd 0			; DATA XREF: .text:004018DAr
; WPARAM wParam
wParam		dd 0			; DATA XREF: .text:004018D3r
; LPARAM lParam
lParam		dd 0			; DATA XREF: .text:loc_4018CCr
dword_57D9C4	dd 0			; DATA XREF: .text:004018E8w
dword_57D9C8	dd 0			; DATA XREF: .text:loc_404D8Er
; LPCWSTR arglist
arglist		dd 0			; DATA XREF: .text:00404E59r
; LPCWSTR dir
dir		dd 0			; DATA XREF: .text:00404E6Br
; wchar_t a6
a6		dw 22 dup(0),234 dup(?)	; 0 ; DATA XREF: .text:00401A0Eo
g_timer		LARGE_INTEGER 18h dup(<>) ; DATA XREF:	.text:00407562w
; struct _OSVERSIONINFOA VersionInformation
VersionInformation _OSVERSIONINFOA <>	; DATA XREF: .text:0040D643w
; Exported entry 820. _cpufeatures
; Exported entry 821. cpufeatures
		public cpufeatures
cpufeatures	dd ?			; DATA XREF: .text:0040DAFBw
					; _cpufeatures
dword_57DD2C	dd ?			; DATA XREF: .text:0040D8E8w
dword_57DD30	dd ?			; DATA XREF: .text:004029C6r
dword_57DD34	dd ?			; DATA XREF: .text:loc_461A07r
dword_57DD38	dd ?			; DATA XREF: .text:loc_462F74r
dword_57DD3C	dd ?			; DATA XREF: .text:004871BAr
; _DWORD ProcessAffinityMask
_ProcessAffinityMask dd	?		; DATA XREF: .text:004074C8r
_SystemAffinityMask dd ?		; DATA XREF: .text:loc_409113r
dword_57DD48	dd ?			; DATA XREF: .text:loc_40CC65r
byte_57DD4C	db 100h	dup(?)		; 0 ; DATA XREF: .text:00402A4Co
; int dword_57DE4C
dword_57DE4C	dd ?			; DATA XREF: .text:004219AFr
dword_57DE50	dd ?			; DATA XREF: .text:00419C81r
dword_57DE54	dd ?			; DATA XREF: .text:00406EECr
dword_57DE58	dd ?			; DATA XREF: .text:loc_406F0Er
		dd ?
; __int16 word_57DE60[]
word_57DE60	dw ?			; DATA XREF: .text:0040B8BCr
; __int16 word_57DE62[]
word_57DE62	dw ?			; DATA XREF: .text:0040B8C9r
		dd ?
word_57DE68	dw 100h	dup(?)		; 0 ; DATA XREF: .text:00408B08o
		dw 100h	dup(?)		; 0
		dw 100h	dup(?)		; 0
word_57E468	dw 0FEh	dup(?)		; 0
; int g_GuiLuguage
g_GuiLuguage	dd ?			; DATA XREF: .text:loc_40B8D5r
dword_57E668	dd ?			; DATA XREF: .text:0040FD86r
; int dword_57E66C
dword_57E66C	dd ?			; DATA XREF: .text:00403D66o
; int dword_57E670
dword_57E670	dd ?			; DATA XREF: .text:0044A0D9w
; int dword_57E674
dword_57E674	dd ?			; DATA XREF: .text:0045D1CAo
; int dword_57E678
dword_57E678	dd ?			; DATA XREF: .text:00497359o
; int dword_57E67C
dword_57E67C	dd ?			; DATA XREF: .text:004974DEo
; int g_Cond
g_Cond		dd ?			; DATA XREF: .text:00497B1Fo
; int dword_57E684
dword_57E684	dd ?			; DATA XREF: .text:004B416Eo
; int dword_57E688
dword_57E688	dd ?			; DATA XREF: .text:00458733o
; int dword_57E68C
dword_57E68C	dd ?			; DATA XREF: .text:00458CD2o
; int dword_57E690
dword_57E690	dd ?			; DATA XREF: .text:004B1104r
; int dword_57E694
dword_57E694	dd ?			; DATA XREF: .text:loc_4BE141r
; int dword_57E698
dword_57E698	dd ?			; DATA XREF: .text:00450481o
; int dword_57E69C
dword_57E69C	dd ?			; DATA XREF: .text:00451B9Do
; int dword_57E6A0
dword_57E6A0	dd ?			; DATA XREF: .text:0044FD97o
; int dword_57E6A4
dword_57E6A4	dd ?			; DATA XREF: .text:0040C5B4o
; int dword_57E6A8
dword_57E6A8	dd ?			; DATA XREF: .text:0044FD5Fo
; int dword_57E6AC
dword_57E6AC	dd ?			; DATA XREF: .text:004AB689o
; int dword_57E6B0
dword_57E6B0	dd ?			; DATA XREF: .text:004ACDD7o
; int dword_57E6B4
dword_57E6B4	dd ?			; DATA XREF: .text:004B2B9Bo
; int dword_57E6B8
dword_57E6B8	dd ?			; DATA XREF: .text:004B2A3Fo
; int dword_57E6BC
dword_57E6BC	dd ?			; DATA XREF: .text:004B2D32r
; int dword_57E6C0
dword_57E6C0	dd ?			; DATA XREF: .text:004B2BD4o
; int dword_57E6C4
dword_57E6C4	dd ?			; DATA XREF: .text:004C71DCo
; int dword_57E6C8
dword_57E6C8	dd ?			; DATA XREF: .text:00451A48o
; int dword_57E6CC
dword_57E6CC	dd ?			; DATA XREF: .text:0044A955o
; int dword_57E6D0
dword_57E6D0	dd ?			; DATA XREF: .text:004CFA99w
; HMODULE g_NTDLL
g_NTDLL		dd ?			; DATA XREF: .text:0040DB31w
_imp__NtQuerySystemInformation dd ?	; DATA XREF: .text:0040DB41w
; int \{__stdcall *imp__NtQueryInformationProcess\}\{_DWORD, _DWORD, _DWORD, _DWORD, _DWORD\}
_imp__NtQueryInformationProcess	dd ?	; DATA XREF: .text:0040DB49w
; int \{__stdcall *imp__NtQueryInformationFile\}\{_DWORD, _DWORD, _DWORD, _DWORD, _DWORD\}
_imp__NtQueryInformationFile dd	?	; DATA XREF: .text:00404A75r
; int \{__stdcall *imp__NtQueryKey\}\{_DWORD, _DWORD, _DWORD, _DWORD, _DWORD\}
_imp__NtQueryKey dd ?			; DATA XREF: .text:0040DB58w
_imp__NtQueryObject dd ?		; DATA XREF: .text:0040DB60w
_imp__NtDuplicateObject	dd ?		; DATA XREF: .text:0040DB67w
_imp__NtSystemDebugControl dd ?		; DATA XREF: .text:0040DB77w
_imp__NtQuerySemaphore dd ?		; DATA XREF: .text:0040DB6Fw
; HMODULE g_KERNEL32
g_KERNEL32	dd ?			; DATA XREF: .text:0040DC4Bw
_imp__GetThreadTimes dd	?		; DATA XREF: .text:0040DC92w
; int \{__stdcall *imp__CreateToolhelp32Snapshot\}\{_DWORD, _DWORD\}
_imp__CreateToolhelp32Snapshot dd ?	; DATA XREF: .text:0040DCAAw
; int \{__stdcall *imp__Module32First\}\{_DWORD, _DWORD\}
_imp__Module32First dd ?		; DATA XREF: .text:0040DCC1w
; int \{__stdcall *imp__Module32Next\}\{_DWORD, _DWORD\}
_imp__Module32Next dd ?			; DATA XREF: .text:0040DCD9w
_imp__Process32First dd	?		; DATA XREF: .text:0040DCF1w
_imp__Process32Next dd ?		; DATA XREF: .text:0040DD08w
_imp__Thread32First dd ?		; DATA XREF: .text:0040DD20w
_imp__Thread32Next dd ?			; DATA XREF: .text:0040DD38w
_imp__QueryDosDeviceW dd ?		; DATA XREF: .text:0040DD4Fw
; int \{__stdcall *imp__DebugBreakProcess\}\{_DWORD\}
_imp__DebugBreakProcess	dd ?		; DATA XREF: .text:0040DD67w
; int \{__stdcall *imp__DebugActiveProcessStop\}\{_DWORD\}
_imp__DebugActiveProcessStop dd	?	; DATA XREF: .text:00408B8Ar
; int \{__stdcall *imp__GetProcessAffinityMask\}\{_DWORD, _DWORD, _DWORD\}
_imp__GetProcessAffinityMask dd	?	; DATA XREF: .text:loc_40B253r
; int \{__stdcall *imp__SetProcessAffinityMask\}\{_DWORD, _DWORD\}
_imp__SetProcessAffinityMask dd	?	; DATA XREF: .text:004074D4r
; int \{__stdcall *imp__GetCPInfoExW\}\{_DWORD, _DWORD, _DWORD\}
_imp__GetCPInfoExW dd ?			; DATA XREF: .text:0040DDC6w
; int \{__stdcall *imp__BackupRead\}\{_DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD\}
_imp__BackupRead dd ?			; DATA XREF: .text:00404BA7r
; int \{__stdcall *imp__BackupSeek\}\{_DWORD, _DWORD, _DWORD, _DWORD, _DWORD, _DWORD\}
_imp__BackupSeek dd ?			; DATA XREF: .text:00404BB4r
_imp__GetDiskFreeSpaceExW dd ?		; DATA XREF: .text:00408EB0r
; int \{__fastcall *imp__GetEnabledXStateFeatures\}\{_DWORD\}
_imp__GetEnabledXStateFeatures dd ?	; DATA XREF: .text:0040DE24w
; HMODULE g_USER32
g_USER32	dd ?			; DATA XREF: .text:0040DE35w
; int \{__stdcall *imp__GetComboBoxInfo\}\{_DWORD,	_DWORD\}
_imp__GetComboBoxInfo dd ?		; DATA XREF: .text:0040DE45w
_imp__MonitorFromWindow	dd ?		; DATA XREF: .text:0040DE4Dw
; int \{__stdcall *imp__MonitorFromPoint\}\{_DWORD, _DWORD, _DWORD\}
_imp__MonitorFromPoint dd ?		; DATA XREF: .text:0040DE54w
; int \{__stdcall *imp__GetMonitorInfoW\}\{_DWORD,	_DWORD\}
_imp__GetMonitorInfoW dd ?		; DATA XREF: .text:0040DE5Cw
; HMODULE g_COMCTL32
g_COMCTL32	dd ?			; DATA XREF: .text:0040DECFw
; int \{__stdcall *imp__InitCommonControlsEx\}\{_DWORD\}
_imp__InitCommonControlsEx dd ?		; DATA XREF: .text:0040DEDFw
; HMODULE g_ADVAPI32
g_ADVAPI32	dd ?			; DATA XREF: .text:00404324o
; int \{__stdcall *imp__IsTextUnicode\}\{_DWORD, _DWORD, _DWORD\}
_imp__IsTextUnicode dd ?		; DATA XREF: .text:0040DF1Aw
; HMODULE g_HELL32
g_SHELL32	dd ?			; DATA XREF: .text:0040DF45w
; int \{__stdcall *imp__SHGetMalloc\}\{_DWORD\}
_imp__SHGetMalloc dd ?			; DATA XREF: .text:loc_406837r
; int \{__stdcall *imp__SHBrowseForFolderW\}\{_DWORD\}
_imp__SHBrowseForFolderW dd ?		; DATA XREF: .text:loc_4067F1r
; int \{__stdcall *imp__SHGetPathFromIDListW\}\{_DWORD, _DWORD\}
_imp__SHGetPathFromIDListW dd ?		; DATA XREF: .text:004067FAr
; HMODULE g_SHLWAPI
g_SHLWAPI	dd ?			; DATA XREF: .text:0040DFBFw
; int \{__stdcall *imp__PathCanonicalizeW\}\{_DWORD, _DWORD\}
_imp__PathCanonicalizeW	dd ?		; DATA XREF: .text:loc_40697Ar
; int \{__stdcall *imp__PathIsDirectoryW\}\{_DWORD\}
_imp__PathIsDirectoryW dd ?		; DATA XREF: .text:00406810r
_imp__PathFileExistsW dd ?		; DATA XREF: .text:0040D302r
; int \{__stdcall *imp__PathRelativePathToW\}\{_DWORD, _DWORD, _DWORD, _DWORD, _DWORD\}
_imp__PathRelativePathToW dd ?		; DATA XREF: .text:004068E6r
; int \{__fastcall *imp__PathRemoveArgsW\}\{_DWORD, _DWORD\}
_imp__PathRemoveArgsW dd ?		; DATA XREF: .text:0040DFEDw
; int \{__stdcall *imp__PathGetArgsW\}\{_DWORD\}
_imp__PathGetArgsW dd ?			; DATA XREF: .text:0040DFF5w
_imp__PathUnquoteSpacesW dd ?		; DATA XREF: .text:0040DFFDw
_imp__PathFindFileNameW	dd ?		; DATA XREF: .text:0040E004w
_imp__PathCompactPathExW dd ?		; DATA XREF: .text:00408CCAr
; HMODULE g_PSAPI
g_PSAPI		dd ?			; DATA XREF: .text:0040E101w
_imp__EnumProcesses dd ?		; DATA XREF: .text:0040E151w
; int \{__stdcall *imp__EnumProcessModules\}\{_DWORD, _DWORD, _DWORD, _DWORD\}
_imp__EnumProcessModules dd ?		; DATA XREF: .text:00409601r
; int \{__stdcall *imp__GetModuleFileNameExW\}\{_DWORD, _DWORD, _DWORD, _DWORD\}
_imp__GetModuleFileNameExW dd ?		; DATA XREF: .text:00409613r
; int \{__stdcall *imp__GetModuleInformation\}\{_DWORD, _DWORD, _DWORD, _DWORD\}
_imp__GetModuleInformation dd ?		; DATA XREF: .text:0040960Ar
; int \{__stdcall *imp__GetMappedFileNameW\}\{_DWORD, _DWORD, _DWORD, _DWORD\}
_imp__GetMappedFileNameW dd ?		; DATA XREF: .text:loc_407431r
; HMODULE g_IMAGEHLP
g_IMAGEHLP	dd ?			; DATA XREF: .text:0040E1FAw
; int \{__stdcall *imp__UnDecorateSymbolName\}\{_DWORD, _DWORD, _DWORD, _DWORD\}
_imp__UnDecorateSymbolName dd ?		; DATA XREF: .text:0040E20Aw
; HMODULE g_RICHED20
g_RICHED20	dd ?			; DATA XREF: .text:0040E235w
; HMODULE g_MSCOREE
g_MSCOREE	dd ?			; DATA XREF: .text:0040E246w
_imp__CreateDebuggingInterfaceFromVersion dd ? ; DATA XREF: .text:0040E256w
_imp__GetRequestedRuntimeVersion dd ?	; DATA XREF: .text:0040E25Ew
_imp__GetVersionFromProcess dd ?	; DATA XREF: .text:0040E265w
dword_57E7D4	dd ?			; DATA XREF: .text:0040F969w
dword_57E7D8	dd ?			; DATA XREF: .text:loc_408C7Ar
					; .data:stru_50E0F4o
dword_57E7DC	dd ?			; DATA XREF: .text:00410384w
; Exported entry 804. _ollyfile
; Exported entry 805. ollyfile
		public ollyfile
; WCHAR	ollyfile
ollyfile	dw 260 dup(?)		; 0 ; DATA XREF: .text:0040933Fo
					; _ollyfile
; Exported entry 806. _ollydir
; Exported entry 807. ollydir
		public ollydir
; wchar_t ollydir
ollydir		dw 260 dup(?)		; 0 ; DATA XREF: .text:loc_406824o
					; _ollydir
; wchar_t word_57EBF0
word_57EBF0	dw 260 dup(?)		; 0 ; DATA XREF: .text:004A98F2o
; wchar_t word_57EDF8
word_57EDF8	dw 260 dup(?)		; 0 ; DATA XREF: .text:loc_465342o
; wchar_t word_57F000
word_57F000	dw 260 dup(?)		; 0 ; DATA XREF: .text:loc_40B4ADo
; const	WCHAR FileName
FileName	dw 260 dup(?)		; 0 ; DATA XREF: .text:loc_40263Ao
; Exported entry 808. _systemdir
; Exported entry 809. systemdir
		public systemdir
; WCHAR	systemdir
systemdir	dw 260 dup(?)		; 0 ; DATA XREF: .text:00409422o
					; _systemdir
; wchar_t word_57F618
word_57F618	dw 260 dup(?)		; 0 ; DATA XREF: .text:0040B0E8o
; const	WCHAR dest
dest		dw 260 dup(?)		; 0 ; DATA XREF: .text:00424F39o
; BYTE word_57FA28
word_57FA28	dw 256 dup(?)		; 0 ; DATA XREF: .text:0040D026o
		dd ?
		dd ?
; __int16 word_57FC30[256]
word_57FC30	dw 256 dup(?)		; 0
dword_57FE30	dd ?			; DATA XREF: .text:0040DAB2w
; Exported entry 812. _hollyinst
; Exported entry 813. hollyinst
; HINSTANCE g_hInstance
g_hInstance	dd ?			; DATA XREF: .text:004014DBr
					; _hollyinst
; Exported entry 814. _hwollymain
; Exported entry 815. hwollymain
		public hwollymain
; HWND hwollymain
hwollymain	dd ?			; DATA XREF: .text:00401CB5r
					; _hwollymain
; HWND dword_57FE3C
dword_57FE3C	dd ?			; DATA XREF: .text:0040FA27w
; Exported entry 816. _hwclient
; Exported entry 817. hwclient
		public hwclient
; HWND hwclient
hwclient	dd ?			; DATA XREF: .text:00401845r
					; _hwclient
dword_57FE44	dd ?			; DATA XREF: .text:00408E28r
dword_57FE48	dd ?			; DATA XREF: .text:0042451Br
					; .data:stru_50E0F4o
dword_57FE4C	dd ?			; DATA XREF: .text:00423F66r
					; .data:stru_50E0F4o
g_IsShowtoolbar	dd ?			; DATA XREF: .text:00408823r
g_ToolbarStatus	dd ?			; DATA XREF: .text:0040888Fr
dword_57FE58	dd ?			; DATA XREF: .text:0040E2FDw
dword_57FE5C	dd ?			; DATA XREF: .text:0040A98Fr
dword_57FE60	dd ?			; DATA XREF: .text:0041E3DDr
dword_57FE64	dd ?			; DATA XREF: .text:0040A738r
dword_57FE68	dd ?			; DATA XREF: .text:0040E308w
; HWND dword_57FE6C
dword_57FE6C	dd ?			; DATA XREF: .text:0040FCA6w
; HCURSOR g_hCursor
g_hCursor	dd ?			; DATA XREF: .text:0040F645w
; HCURSOR hCursor
hCursor		dd ?			; DATA XREF: .text:0040F65Dw
; HANDLE hTargetProcessHandle
hTargetProcessHandle dd	?		; DATA XREF: .text:00409634r
dword_57FE7C	dd ?			; DATA XREF: .text:0040C652w
dword_57FE80	dd ?			; DATA XREF: .text:0040A2B2r
; WPARAM g_cookie
g_cookie	dd ?			; DATA XREF: .text:0040A361r
dword_57FE88	dd ?			; DATA XREF: .text:00401CFAr
dword_57FE8C	dd ?			; DATA XREF: .text:004D23B3r
					; .data:stru_50E0F4o ...
dword_57FE90	dd ?			; DATA XREF: .text:004D2BCAr
					; .data:stru_50E0F4o ...
dword_57FE94	dd ?			; DATA XREF: .text:0043A2E4r
dword_57FE98	dd ?			; DATA XREF: .text:loc_409EF2r
					; .data:stru_50E0F4o ...
; Exported entry 926. _restorewinpos
; Exported entry 927. restorewinpos
		public restorewinpos
restorewinpos	dd ?			; DATA XREF: .text:loc_40FFE6r
					; _restorewinpos
dword_57FEA0	dd ?			; DATA XREF: .text:00420D8Br
					; .data:stru_50E0F4o ...
dword_57FEA4	dd ?			; DATA XREF: .text:loc_420E7Cr
					; .data:stru_50E0F4o ...
dword_57FEA8	dd ?			; DATA XREF: .text:loc_419A62r
					; .data:stru_50E0F4o ...
dword_57FEAC	dd ?			; DATA XREF: .text:loc_41F525r
					; .data:stru_50E0F4o
dword_57FEB0	dd ?			; DATA XREF: .text:0041AEBCr
					; .data:stru_50E0F4o ...
dword_57FEB4	dd ?			; DATA XREF: .text:loc_4953A9r
					; .data:stru_50E0F4o ...
; Exported entry 830. _font
; Exported entry 831. font
		public font
; #251 font[]
font		t_font 8 dup(<>)	; DATA XREF: .text:0040D156o
					; _font
; t_font tmpfont[]
tmpfont		t_font 8 dup(<>)	; DATA XREF: .text:0040E686o
; Exported entry 832. _sysfont
; Exported entry 833. sysfont
		public sysfont
; LOGFONTW sysfont
sysfont		t_font <>		; DATA XREF: .text:0040EA1Eo
					; _sysfont
; Exported entry 834. _titlefont
; Exported entry 835. titlefont
		public titlefont
; LOGFONTW titlefont
titlefont	t_font <>		; DATA XREF: .text:0040EA92o
					; _titlefont
; Exported entry 836. _fixfont
; Exported entry 837. fixfont
		public fixfont
; LOGFONTW fixfont
fixfont		t_font <>		; DATA XREF: .text:0040EB04o
					; _fixfont
; int fi
fi		dd ?			; DATA XREF: .text:loc_409A8Cr
dword_582DF0	dd ?			; DATA XREF: .text:loc_40D451r
; Exported entry 838. _color
; Exported entry 839. color
		public color
; COLORREF color[36]
color		dd 36 dup(?)		; 0 ; DATA XREF: .text:0040D660o
					; _color
; Exported entry 840. _scheme
; Exported entry 841. scheme
		public scheme
scheme		t_scheme 8 dup(<>)	; DATA XREF: .text:0040D0E3o
					; _scheme
; t_scheme tmpscheme[]
tmpscheme	t_scheme 8 dup(<>)	; DATA XREF: .text:0040D0DCo
g_Color_index	dd ?			; DATA XREF: .text:00409A9Cr
dword_586108	dd ?			; DATA XREF: .text:loc_420C6Dr
dword_58610C	dd ?			; DATA XREF: .text:00420D32r
dword_586110	dd ?			; DATA XREF: .text:0041AA3Dr
g_IsUseSysColor	dd ?			; DATA XREF: .text:00411404r
					; .data:stru_50E0F4o ...
; COLORREF g_Color[]
g_Color		dd 0Ah dup(?)		; 0 ; DATA XREF: .text:0040BB89r
; HBRUSH g_Brush[]
g_Brush		dd 5 dup(?)		; 0 ; DATA XREF: .text:004114D1w
; HPEN g_Pen[]
g_Pen		dd 6 dup(?)		; 0 ; DATA XREF: .text:00411544w
dword_58616C	dd ?			; DATA XREF: .text:0044A3AAw
dword_586170	dd ?			; DATA XREF: .text:0044A3B2w
dword_586174	dd ?			; DATA XREF: .text:0044A3B7w
dword_586178	dd ?			; DATA XREF: .text:00416C4Aw
dword_58617C	dd ?			; DATA XREF: .text:00458263r
; t_menu g_menu_sel_mod[]
g_menu_sel_mod	t_menu 2 dup(<>)	; DATA XREF: .text:00417090o
g_IsOrigHandle	dd ?			; DATA XREF: .text:004DCE6Br
g_ResLuguage	dd ?			; DATA XREF: .text:004AD109r
					; .data:stru_50E0F4o ...
dword_5861B8	dd ?			; DATA XREF: .text:004AAFA0w
gggggggggggggg	dw 20h dup(?)		; 0 ; DATA XREF: .text:004B5492o
dword_5861FC	dd ?			; DATA XREF: .text:0040B17Ao
		dw ?
dword_586202	dd ?			; DATA XREF: .text:0040B175o
		dd ?
dword_58620A	dd ?			; DATA XREF: .text:0040B170o
; int dword_58620E
dword_58620E	dd ?			; DATA XREF: .text:0042BB65r
; int dword_586212
dword_586212	dd ?			; DATA XREF: .text:0042BB77r
dword_586216	dd ?			; DATA XREF: .text:0045BABBo
		dd ?
		dd ?
		dd ?
dword_586226	dd ?			; DATA XREF: .text:0045BAD2w
		dd ?
dword_58622E	dd ?			; DATA XREF: .text:0045BAD2o
		dd ?
		dd ?
		dd ?
		dd ?
		dd ?
; Exported entry 842. _hilite
; Exported entry 843. hilite
; t_scheme hilite[8]
hilite		t_scheme 8 dup(<>)	; DATA XREF: .text:0040D131o
					; _hilite
; t_scheme tmphilite[]
tmphilite	t_scheme 8 dup(<>)	; DATA XREF: .text:0040D12Ao
; t_cmdinfo tmpcmdinfo[]
tmpcmdinfo	label t_cmdinfo
			db sizeof t_cmdinfo * 100h dup(?)	; DATA XREF: .text:0043BE49o
stru_593CC6	label t_cmdinfo
			db sizeof t_cmdinfo * 100h dup(?)	; DATA XREF: .text:0043BE5Eo
stru_59E4C6	label t_cmdinfo
			db sizeof t_cmdinfo * 100h dup(?)	; DATA XREF: .text:0043F6FFo
stru_5A8CC6	label t_cmdinfo
			db sizeof t_cmdinfo * 100h dup(?)	; DATA XREF: .text:0043F70Do
stru_5B34C6	label t_cmdinfo
			db sizeof t_cmdinfo * 100h dup(?)	; DATA XREF: .text:loc_43F716o
		db    ?	;
		db    ?	;
dword_5BDCC8	dd ?			; DATA XREF: .text:0042BE21r
dword_5BDCCC	dd ?			; DATA XREF: .text:00410958r
dword_5BDCD0	dd ?			; DATA XREF: .text:0043B282r
dword_5BDCD4	dd ?			; DATA XREF: .text:0044622Ar
dword_5BDCD8	dd ?			; DATA XREF: .text:loc_43B401r
dword_5BDCDC	dd ?			; DATA XREF: .text:0043B63Br
					; .data:stru_50E0F4o ...
dword_5BDCE0	dd ?			; DATA XREF: .text:loc_43B5ABr
					; .data:stru_50E0F4o ...
dword_5BDCE4	dd ?			; DATA XREF: .text:00443112r
					; .data:stru_50E0F4o ...
dword_5BDCE8	dd ?			; DATA XREF: .text:00443396r
dword_5BDCEC	dd ?			; DATA XREF: .text:0044318Er
					; .data:stru_50E0F4o ...
dword_5BDCF0	dd ?			; DATA XREF: .text:0043B1EBr
dword_5BDCF4	dd ?			; DATA XREF: .text:00445CEAr
					; .data:stru_50E0F4o ...
dword_5BDCF8	dd ?			; DATA XREF: .text:00445E30r
dword_5BDCFC	dd ?			; DATA XREF: .text:0043CDB4r
dword_5BDD00	dd ?			; DATA XREF: .text:loc_43B4F0r
dword_5BDD04	dd ?			; DATA XREF: .text:0043B4BDr
dword_5BDD08	dd ?			; DATA XREF: .text:loc_4400F0r
; HGLOBAL dword_5BDD0C
dword_5BDD0C	dd ?			; DATA XREF: .text:0043F27Aw
dword_5BDD10	dd ?			; DATA XREF: .text:0046FC3Fr
dword_5BDD14	dd ?			; DATA XREF: .text:0046F6B7r
					; .data:stru_50E0F4o ...
dword_5BDD18	dd ?			; DATA XREF: .text:0045D09Cr
dword_5BDD1C	dd ?			; DATA XREF: .text:loc_469DA5r
dword_5BDD20	dd ?			; DATA XREF: .text:00461FCCr
dword_5BDD24	dd ?			; DATA XREF: .text:loc_464BCAr
dword_5BDD28	dd ?			; DATA XREF: .text:00468562r
dword_5BDD2C	dd ?			; DATA XREF: .text:loc_46CCA4r
					; .data:stru_50E0F4o ...
dword_5BDD30	dd ?			; DATA XREF: .text:loc_40867Br
					; .data:stru_50E0F4o ...
dword_5BDD34	dd ?			; DATA XREF: .text:004A9771r
					; .data:stru_50E0F4o ...
dword_5BDD38	dd ?			; DATA XREF: .text:00469303r
dword_5BDD3C	dd ?			; DATA XREF: .data:stru_50E0F4o
					; .data:00565C2Co
dword_5BDD40	dd ?			; DATA XREF: .text:0046970Br
					; .data:stru_50E0F4o ...
dword_5BDD44	dd ?			; DATA XREF: .text:00469725r
dword_5BDD48	dd ?			; DATA XREF: .text:0046C1CBr
dword_5BDD4C	dd ?			; DATA XREF: .text:004AF59Ar
					; .data:stru_50E0F4o ...
dword_5BDD50	dd ?			; DATA XREF: .text:004BA0FFr
dword_5BDD54	dd ?			; DATA XREF: .text:0048890Cr
					; .data:stru_50E0F4o ...
dword_5BDD58	dd ?			; DATA XREF: .text:loc_4AF821r
					; .data:stru_50E0F4o ...
dword_5BDD5C	dd ?			; DATA XREF: .text:loc_4BC2D4r
					; .data:stru_50E0F4o
dword_5BDD60	dd ?			; DATA XREF: .text:004468CAr
dword_5BDD64	dd ?			; DATA XREF: .text:0044690Ar
dword_5BDD68	dd ?			; DATA XREF: .text:00446948r
dword_5BDD6C	dd ?			; DATA XREF: .text:00446987r
dword_5BDD70	dd ?			; DATA XREF: .text:loc_46146Er
					; .data:stru_50E0F4o ...
dword_5BDD74	dd ?			; DATA XREF: .text:004469C7r
dword_5BDD78	dd ?			; DATA XREF: .text:0044670Er
dword_5BDD7C	dd ?			; DATA XREF: .text:00446809r
dword_5BDD80	dd ?			; DATA XREF: .text:00446A05r
dword_5BDD84	dd ?			; DATA XREF: .text:00446A44r
dword_5BDD88	dd ?			; DATA XREF: .text:00446A81r
dword_5BDD8C	dd ?			; DATA XREF: .text:loc_4613F6r
					; .data:stru_50E0F4o ...
dword_5BDD90	dd ?			; DATA XREF: .text:00461067r
dword_5BDD94	dd ?			; DATA XREF: .text:loc_46141Er
					; .data:stru_50E0F4o ...
dword_5BDD98	dd ?			; DATA XREF: .text:0046ECB5r
; wchar_t word_5BDD9C
word_5BDD9C	dw 104h	dup(?)		; 0 ; DATA XREF: .text:loc_4DC5B8o
; wchar_t word_5BDFA4
word_5BDFA4	dw 104h	dup(?)		; 0 ; DATA XREF: .text:loc_4DC4ABo
; t_sorted stru_5BE1AC
stru_5BE1AC	t_sorted <>		; DATA XREF: .text:00465432o
byte_5BE1F0	db 20h dup(?)		; 0 ; DATA XREF: .text:004DB78Co
; size_t n
n		dd ?			; DATA XREF: .text:004DB787r
dword_5BE214	dd ?			; DATA XREF: .text:004ADE80r
dword_5BE218	dd ?			; DATA XREF: .text:00429115r
dword_5BE21C	dd ?			; DATA XREF: .text:004291A1r
dword_5BE220	dd ?			; DATA XREF: .text:loc_42A66Cr
					; .data:stru_50E0F4o
unk_5BE224	db    ?	;		; DATA XREF: .data:stru_50E0F4o
		db    ?	;
		db    ?	;
		db    ?	;
dword_5BE228	dd ?			; DATA XREF: .text:004A4A28r
dword_5BE22C	dd ?			; DATA XREF: .text:loc_4A4C75r
					; .data:stru_50E0F4o ...
dword_5BE230	dd ?			; DATA XREF: .text:004306BEw
unk_5BE234	db    ?	;		; DATA XREF: .data:stru_50E0F4o
		db    ?	;
		db    ?	;
		db    ?	;
dword_5BE238	dd ?			; DATA XREF: .text:00427AA2r
; int a3
a3		dd ?			; DATA XREF: .text:004260FBr
dword_5BE240	dd ?			; DATA XREF: .text:00475046r
dword_5BE244	dd ?			; DATA XREF: .text:00426A50r
dword_5BE248	dd ?			; DATA XREF: .text:004293AAr
					; .data:stru_50E0F4o
; int X
X		dd ?			; DATA XREF: .text:004CF2FDr
; int Y
Y		dd ?			; DATA XREF: .text:004CF320r
; WPARAM dword_5BE254
dword_5BE254	dd ?			; DATA XREF: .text:004CF3B6r
dword_5BE258	dd ?			; DATA XREF: .text:00429E3Cr
dword_5BE25C	dd ?			; DATA XREF: .text:004CE603r
dword_5BE260	dd ?			; DATA XREF: .text:004CE61Br
dword_5BE264	dd ?			; DATA XREF: .text:loc_4CE675r
dword_5BE268	dd ?			; DATA XREF: .text:loc_4CE425r
dword_5BE26C	dd ?			; DATA XREF: .text:004D13A8r
; const	WCHAR path
path		dw 104h	dup(?)		; 0 ; DATA XREF: .text:0040D30Bo
dword_5BE478	dd ?			; DATA XREF: .text:loc_40D497r
; wchar_t word_5BE47C
word_5BE47C	dw 260 dup(?)		; 0 ; DATA XREF: .text:00418E96o
; FILE *stream
stream		dd ?			; DATA XREF: .text:0040FDFDw
dword_5BE688	dd ?			; DATA XREF: .text:00419284r
					; .data:stru_50E0F4o
dword_5BE68C	dd ?			; DATA XREF: .text:loc_418EE7r
					; .data:stru_50E0F4o
; t_menu *g_Menu
g_Menu		dd ?			; DATA XREF: .text:0040FF06w
; t_menu *g_Menu_0
g_Menu_0	dd ?			; DATA XREF: .text:0040FF7Ew
dword_5BE698	dd ?			; DATA XREF: .text:loc_42FFD6r
; Exported entry 824. _asciicodepage
; Exported entry 825. asciicodepage
		public asciicodepage
; UINT asciicodepage
asciicodepage	dd ?			; DATA XREF: .text:00403338r
					; _asciicodepage
; Exported entry 826. _mbcscodepage
; Exported entry 827. mbcscodepage
		public mbcscodepage
; UINT mbcscodepage
mbcscodepage	dd ?			; DATA XREF: .text:loc_40D532r
					; _mbcscodepage
dword_5BE6A4	dd ?			; DATA XREF: .text:004B2AB9r
dword_5BE6A8	dd ?			; DATA XREF: .text:loc_4BBA12r
dword_5BE6AC	dd ?			; DATA XREF: .text:004B9433r
dword_5BE6B0	dd ?			; DATA XREF: .text:004BBEAEr
dword_5BE6B4	dd ?			; DATA XREF: .text:0042DEA8r
					; .data:stru_50E0F4o ...
dword_5BE6B8	dd ?			; DATA XREF: .text:004BEB9Br
dword_5BE6BC	dd ?			; DATA XREF: .text:0041A71Ar
dword_5BE6C0	dd ?			; DATA XREF: .text:0041B411r
dword_5BE6C4	dd ?			; DATA XREF: .text:00416CF4r
dword_5BE6C8	dd ?			; DATA XREF: .text:004BFDF2r
					; .data:00563A6Co ...
dword_5BE6CC	dd ?			; DATA XREF: .text:004BF74Br
dword_5BE6D0	dd ?			; DATA XREF: .text:004A2BC2r
dword_5BE6D4	dd ?			; DATA XREF: .text:004A2A9Fr
dword_5BE6D8	dd ?			; DATA XREF: .text:loc_4A2D54r
dword_5BE6DC	dd ?			; DATA XREF: .text:00430E2Br
dword_5BE6E0	dd ?			; DATA XREF: .text:004A598Fr
dword_5BE6E4	dd ?			; DATA XREF: .text:004A599Er
dword_5BE6E8	dd ?			; DATA XREF: .text:0040D420r
byte_5BE6EC	db    ?			; DATA XREF: .text:loc_49722Cw
		db    ?
		db    ?	;
		db    ?	;
dword_5BE6F0	dd ?			; DATA XREF: .text:004B8764r
					; .data:stru_50E0F4o
dword_5BE6F4	dd ?			; DATA XREF: .text:00476445r
dword_5BE6F8	dd ?			; DATA XREF: .text:00477334r
					; .data:stru_50E0F4o ...
dword_5BE6FC	dd ?			; DATA XREF: .text:00441658r
dword_5BE700	dd ?			; DATA XREF: .text:004764A1r
; t_history ph
ph		t_history <>		; DATA XREF: .text:004780AAo
; t_history stru_5C3710
stru_5C3710	t_history <>		; DATA XREF: .text:004780DBo
dword_5C871C	dd ?			; DATA XREF: .text:0040FE14w
dword_5C8720	dd ?			; DATA XREF: .text:0040FDD7w
; wchar_t word_5C8724
word_5C8724	dw 104h	dup(?)		; 0 ; DATA XREF: .text:004C3800o
; Exported entry 828. _tracefile
; Exported entry 829. tracefile
		public tracefile
; FILE *tracefile
tracefile	dd ?			; DATA XREF: .text:0040FE05w
					; _tracefile
dword_5C8930	dd ?			; DATA XREF: .text:004C3819r
g_IsWinxp	dd ?			; DATA XREF: .text:loc_40D68Aw
dword_5C8938	dd ?			; DATA XREF: .text:0044F759r
					; .data:stru_50E0F4o ...
dword_5C893C	dd ?			; DATA XREF: .text:loc_4DDA37r
					; .data:stru_50E0F4o ...
dword_5C8940	dd ?			; DATA XREF: .text:loc_415F72r
dword_5C8944	dd ?			; DATA XREF: .text:loc_44E1ACr
dword_5C8948	dd ?			; DATA XREF: .text:004521F2r
dword_5C894C	dd ?			; DATA XREF: .text:loc_44EF9Cr
dword_5C8950	dd ?			; DATA XREF: .text:loc_44C1C2r
dword_5C8954	dd ?			; DATA XREF: .text:004508B7r
dword_5C8958	dd ?			; DATA XREF: .text:0044FBD5r
					; .data:stru_50E0F4o ...
dword_5C895C	dd ?			; DATA XREF: .text:0044FDC7r
					; .data:stru_50E0F4o ...
dword_5C8960	dd ?			; DATA XREF: .text:00451344r
					; .data:stru_50E0F4o ...
dword_5C8964	dd ?			; DATA XREF: .text:loc_455E2Er
					; .data:stru_50E0F4o ...
dword_5C8968	dd ?			; DATA XREF: .text:004540AAr
					; .data:stru_50E0F4o ...
dword_5C896C	dd ?			; DATA XREF: .text:loc_452626r
					; .data:stru_50E0F4o ...
dword_5C8970	dd ?			; DATA XREF: .text:004526F4r
					; .data:stru_50E0F4o ...
dword_5C8974	dd ?			; DATA XREF: .text:00453934r
					; .data:stru_50E0F4o ...
dword_5C8978	dd ?			; DATA XREF: .text:loc_4541DDr
					; .data:stru_50E0F4o ...
dword_5C897C	dd ?			; DATA XREF: .text:00454D0Fr
					; .data:stru_50E0F4o ...
dword_5C8980	dd ?			; DATA XREF: .text:00454C43r
dword_5C8984	dd ?			; DATA XREF: .text:0045525Ar
					; .data:stru_50E0F4o ...
dword_5C8988	dd ?			; DATA XREF: .text:loc_4553EDr
dword_5C898C	dd ?			; DATA XREF: .text:loc_44DD9Cr
; t_range set[32]
set		t_range	20h dup(<>)	; DATA XREF: .text:0040CFD0o
dword_5C8A90	dd ?			; DATA XREF: .text:loc_44EAB0r
dword_5C8A94	dd ?			; DATA XREF: .text:0044DDD5r
dword_5C8A98	dd ?			; DATA XREF: .text:0044F13Ar
dword_5C8A9C	dd ?			; DATA XREF: .text:00457261r
					; .data:stru_50E0F4o ...
dword_5C8AA0	dd ?			; DATA XREF: .text:0044E68Ar
; wchar_t word_5C8AA4[24][260]
word_5C8AA4	dw 6240	dup(?)		; 0 ; DATA XREF: .text:0040CF5Ao
dword_5CBB64	dd ?			; DATA XREF: .text:00457810r
					; .data:stru_50E0F4o ...
dword_5CBB68	dd ?			; DATA XREF: .text:loc_4563CCr
					; .data:stru_50E0F4o ...
dword_5CBB6C	dd ?			; DATA XREF: .text:00456A76r
					; .data:stru_50E0F4o ...
dword_5CBB70	dd ?			; DATA XREF: .text:loc_40D47Fr
		dd ?
dword_5CBB78	dd ?			; DATA XREF: .text:0044D8E2r
dword_5CBB7C	dd ?			; DATA XREF: .text:0044E9ABr
dword_5CBB80	dd ?			; DATA XREF: .text:loc_44DD00r
dword_5CBB84	dd ?			; DATA XREF: .text:0044DC52r
dword_5CBB88	dd ?			; DATA XREF: .text:004C4359r
dword_5CBB8C	dd ?			; DATA XREF: .text:004C4D65r
					; .data:stru_50E0F4o ...
dword_5CBB90	dd ?			; DATA XREF: .text:loc_40D4AFr
dword_5CBB94	dd ?			; DATA XREF: .text:loc_40916Er
dword_5CBB98	dd ?			; DATA XREF: .text:loc_408FAAr
dword_5CBB9C	dd ?			; DATA XREF: .text:0040B355r
					; .data:stru_50E0F4o ...
dword_5CBBA0	dd ?			; DATA XREF: .text:0044D7CFr
dword_5CBBA4	dd ?			; DATA XREF: .text:loc_44D602r
					; .data:stru_50E0F4o ...
dword_5CBBA8	dd ?			; DATA XREF: .text:loc_44D62Fr
dword_5CBBAC	dd ?			; DATA XREF: .text:00408FDAr
dword_5CBBB0	dd ?			; DATA XREF: .text:loc_42886Cr
					; .data:stru_50E0F4o ...
dword_5CBBB4	dd ?			; DATA XREF: .text:0044EFF0r
dword_5CBBB8	dd ?			; DATA XREF: .text:loc_44F09Br
					; .data:stru_50E0F4o ...
dword_5CBBBC	dd ?			; DATA XREF: .text:0044F039r
					; .data:stru_50E0F4o ...
dword_5CBBC0	dd ?			; DATA XREF: .text:loc_44DD8Cr
					; .data:stru_50E0F4o ...
dword_5CBBC4	dd ?			; DATA XREF: .text:0040B526r
dword_5CBBC8	dd ?			; DATA XREF: .text:0040B531w
; Exported entry 882. _rtcond
; Exported entry 883. rtcond
		public rtcond
rtcond		t_rtcond <>		; DATA XREF: .text:00434535w
					; _rtcond
; Exported entry 884. _rtprot
; Exported entry 885. rtprot
		public rtprot
rtprot		t_rtprot <>		; DATA XREF: .text:00435358w
					; _rtprot
; Exported entry 850. _rundll
; Exported entry 851. rundll
		public rundll
rundll		dd ?			; DATA XREF: .text:0040913Fr
					; _rundll
dword_5D3A34	dd ?			; DATA XREF: .text:004CD3C6r
					; .data:stru_50E0F4o ...
dword_5D3A38	dd ?			; DATA XREF: .text:loc_4CD916r
					; .data:stru_50E0F4o ...
dword_5D3A3C	dd ?			; DATA XREF: .text:0040BEB9r
; ulong	dword_5D3A40
dword_5D3A40	dd ?			; DATA XREF: .text:004CC654w
; ulong	dword_5D3A44
dword_5D3A44	dd ?			; DATA XREF: .text:004CC65Cw
; ulong	dword_5D3A48
dword_5D3A48	dd ?			; DATA XREF: .text:0044A9BCw
; ulong	dword_5D3A4C
dword_5D3A4C	dd ?			; DATA XREF: .text:0044EF3Cr
; ulong	dword_5D3A50
dword_5D3A50	dd ?			; DATA XREF: .text:00452411r
; HWND hDlg
hDlg		dd ?			; DATA XREF: .text:004042D2r
g_IsUseDbghelp	dd ?			; DATA XREF: .text:loc_4AD8F4r
dword_5D3A5C	dd ?			; DATA XREF: .text:004AD8FDr
dword_5D3A60	dd ?			; DATA XREF: .text:004C9625r
word_5D3A64	dw 104h	dup(?)		; 0 ; DATA XREF: .text:0040CE7Fo
word_5D3C6C	dw 104h	dup(?)		; 0 ; DATA XREF: .data:005642DCo
					; .data:00564304o
word_5D3E74	dw 104h	dup(?)		; 0 ; DATA XREF: .data:0056432Co
					; .data:00564354o
dword_5D407C	dd ?			; DATA XREF: .text:loc_41016Er
					; .data:stru_50E0F4o ...
dword_5D4080	dd ?			; DATA XREF: .text:0044AAA8w
; Exported entry 848. _netdbg
; Exported entry 849. netdbg
		public netdbg
netdbg		dd ?			; DATA XREF: .text:loc_408B97r
					; _netdbg
; t_simple stru_5D4088
stru_5D4088	t_simple <>		; DATA XREF: .text:00449F49o
; t_simple pdat
pdat		t_simple <>		; DATA XREF: .text:00449F54o
dword_5D40B0	dd ?			; DATA XREF: .text:004D4045w
dword_5D40B4	dd ?			; DATA XREF: .text:004D4182r
dword_5D40B8	dd ?			; DATA XREF: .text:0044BFDCr
dword_5D40BC	dd ?			; DATA XREF: .text:00497488r
dword_5D40C0	dd ?			; DATA XREF: .text:004CA9D4r
					; .data:stru_50E0F4o ...
dword_5D40C4	dd ?			; DATA XREF: .text:loc_4C90F4r
					; .data:stru_50E0F4o ...
; int skipspaces
skipspaces	dd ?			; DATA XREF: .text:004BC5D3r
					; .data:stru_50E0F4o ...
; Exported entry 810. _plugindir
; Exported entry 811. plugindir
		public plugindir
; wchar_t plugindir
plugindir	dw 104h	dup(?)		; DATA XREF: .text:004096DFo
					; _plugindir
; t_table pluginlist
pluginlist	t_table	<>		; DATA XREF: .text:00449E6Ao
g_nPluginoptions dd ?			; DATA XREF: .text:00408E11r
; HGLOBAL dword_5D4544
dword_5D4544	dd ?			; DATA XREF: .text:004514D7r
g_nPluginmainloop dd ?			; DATA XREF: .text:loc_4514E3r
; HGLOBAL dword_5D454C
dword_5D454C	dd ?			; DATA XREF: .text:00451AFCr
g_nPluginexception dd ?			; DATA XREF: .text:00451ABDr
; HGLOBAL dword_5D4554
dword_5D4554	dd ?			; DATA XREF: .text:00452898r
g_nPlugintempbreakpoint	dd ?		; DATA XREF: .text:0045285Br
; Pluginnotify *g_pPluginnotify
g_pPluginnotify	dd ?			; DATA XREF: .text:004105C8r
g_nPluginnotify	dd ?			; DATA XREF: .text:004105DFr
dword_5D4564	dd ?			; DATA XREF: .text:0044AC21r
dword_5D4568	dd ?			; DATA XREF: .text:00449DA9w
; t_sorted stru_5D456C
stru_5D456C	t_sorted <>		; DATA XREF: .text:0040FEEAo
; Exported entry 844. _executable
; Exported entry 845. executable
		public executable
; wchar_t executable
executable	dw 104h	dup(?)		; 0 ; DATA XREF: .text:00408C0Fr
					; _executable
; Exported entry 846. _arguments
; Exported entry 847. arguments
		public arguments
; wchar_t arguments
arguments	dw 400h	dup(?)		; 0 ; DATA XREF: .text:0040ADABo
					; _arguments
; wchar_t word_5D4FB8
word_5D4FB8	dw 104h	dup(?)		; 0 ; DATA XREF: .text:0040ADA6o
; wchar_t name
_name		dw 104h	dup(?)		; 0 ; DATA XREF: .text:0041304Bo
; const	WCHAR ClassName
ClassName	dw 20h dup(?)		; 0 ; DATA XREF: .text:0040D77Do
; Exported entry 818. _ottable
; Exported entry 819. ottable
		public ottable
; wchar_t ottable
ottable		dw 20h dup(?)		; 0 ; DATA XREF: .text:0040D7A9o
					; _ottable
; wchar_t word_5D5448
word_5D5448	dw 20h dup(?)		; 0 ; DATA XREF: .text:0040187Do
; wchar_t word_5D5488
word_5D5488	dw 20h dup(?)		; 0 ; DATA XREF: .text:004018ADo
; wchar_t word_5D54C8
word_5D54C8	dw 20h dup(?)		; 0 ; DATA XREF: .text:00401895o
; HANDLE hObject
hObject		dd ?			; DATA XREF: .text:00449FDDr
; HANDLE dword_5D550C
dword_5D550C	dd ?			; DATA XREF: .text:loc_449FF9r
; Exported entry 852. _process
; Exported entry 854. process
		public process
; HANDLE process
process		dd ?			; DATA XREF: .text:0040B26Dr
					; _process
; Exported entry 853. _processid
; Exported entry 855. processid
		public processid
; char processid[]
processid	dd ?			; DATA XREF: .text:00413EA5r
					; _processid
; Exported entry 856. _mainthreadid
; Exported entry 857. mainthreadid
		public mainthreadid
mainthreadid	dd ?			; DATA XREF: .text:0044A05Cw
					; _mainthreadid
dword_5D551C	dd ?			; DATA XREF: .text:0044A0E1w
; Exported entry 862. _debugbreak
; Exported entry 863. debugbreak
		public debugbreak
debugbreak	dd ?			; DATA XREF: .text:00415AF5w
					; _debugbreak
; Exported entry 864. _dbgbreakpoint
; Exported entry 865. dbgbreakpoint
		public dbgbreakpoint
dbgbreakpoint	dd ?			; DATA XREF: .text:00415B1Ew
					; _dbgbreakpoint
; Exported entry 866. _kiuserexcept
; Exported entry 867. kiuserexcept
		public kiuserexcept
; ulong	kiuserexcept
kiuserexcept	dd ?			; DATA XREF: .text:00415B5Fw
					; _kiuserexcept
; Exported entry 868. _zwcontinue
; Exported entry 869. zwcontinue
		public zwcontinue
; ulong	zwcontinue
zwcontinue	dd ?			; DATA XREF: .text:00415B88w
					; _zwcontinue
; ulong	dword_5D5530
dword_5D5530	dd ?			; DATA XREF: .text:00415BB7w
; ulong	dword_5D5534
dword_5D5534	dd ?			; DATA XREF: .text:00416C34w
; Exported entry 870. _uefilter
; Exported entry 871. uefilter
		public uefilter
; ulong	uefilter
uefilter	dd ?			; DATA XREF: .text:00415C30w
					; _uefilter
dword_5D553C	dd ?			; DATA XREF: .text:00415C08w
; Exported entry 872. _ntqueryinfo
; Exported entry 873. ntqueryinfo
		public ntqueryinfo
; ulong	ntqueryinfo
ntqueryinfo	dd ?			; DATA XREF: .text:00415C71w
					; _ntqueryinfo
dword_5D5544	dd ?			; DATA XREF: .text:00415C97w
dword_5D5548	dd ?			; DATA XREF: .text:00415CBDw
; Exported entry 874. _corexemain
; Exported entry 875. corexemain
		public corexemain
corexemain	dd ?			; DATA XREF: .text:00415CE2w
					; _corexemain
; Exported entry 876. _peblock
; Exported entry 877. peblock
		public peblock
; ulong	peblock
peblock		dd ?			; DATA XREF: .text:0044A13Dw
					; _peblock
; Exported entry 878. _kusershareddata
; Exported entry 879. kusershareddata
		public kusershareddata
kusershareddata	dd ?			; DATA XREF: .text:0044A144w
					; _kusershareddata
; Exported entry 880. _userspacelimit
; Exported entry 881. userspacelimit
		public userspacelimit
userspacelimit	dd ?			; DATA XREF: .text:0040F6D2w
					; _userspacelimit
; DWORD	dwProcessId
dwProcessId	dd ?			; DATA XREF: .text:0040D8F4w
; HANDLE hEvent
hEvent		dd ?			; DATA XREF: .text:0040D8FCw
; Exported entry 822. _ischild
; Exported entry 823. ischild
		public ischild
ischild		dd ?			; DATA XREF: .text:loc_4027C3r
					; _ischild
; Exported entry 858. _run
; Exported entry 859. run
		public run
run		t_run <>		; DATA XREF: .text:loc_408BCCr
					; _run
; Exported entry 860. _skipsystembp
; Exported entry 861. skipsystembp
		public skipsystembp
skipsystembp	dd ?			; DATA XREF: .text:loc_413D35r
					; _skipsystembp
dword_5D5610	dd ?			; DATA XREF: .text:0044AF93w
dword_5D5614	dd ?			; DATA XREF: .text:00428440w
; Exported entry 886. _list
; Exported entry 887. list
		public list
; t_table list
list		t_table	<>		; DATA XREF: .text:00419559o
					; _list
; Exported entry 888. _premod
; Exported entry 889. premod
		public premod
; t_sorted premod
premod		t_sorted <>		; DATA XREF: .text:00449E7Co
					; _premod
; Exported entry 890. _module
; Exported entry 891. module
		public module
; t_table module
module		t_table	<>		; DATA XREF: .text:004128D1o
					; _module
; Exported entry 892. _aqueue
; Exported entry 893. aqueue
		public aqueue
; t_sorted aqueue
aqueue		t_sorted <>		; DATA XREF: .text:00416D65o
					; _aqueue
; Exported entry 895. _thread
; Exported entry 896. thread
		public thread
; t_table thread
thread		t_table	<>		; DATA XREF: .text:0044F3CAo
					; _thread
; Exported entry 897. _memory
; Exported entry 898. memory
		public memory
; t_table memory
memory		t_table	<>		; DATA XREF: .text:0045AD07o
					; _memory
; Exported entry 894. _win
; Exported entry 899. win
		public win
; t_table win
win		t_table	<>		; DATA XREF: .text:004D65E3o
					; _win
; Exported entry 900. _handles
; Exported entry 901. handles
		public handles
; t_table handles
handles		t_table	<>		; DATA XREF: .text:loc_4DCE9Eo
					; _handles
; Exported entry 902. _bpoint
; Exported entry 903. bpoint
; t_table stru_5D6528
stru_5D6528	t_table	<>		; DATA XREF: .text:00497C25o
					; _bpoint
; Exported entry 904. _bpmem
; Exported entry 905. bpmem
		public bpmem
; t_table bpmem
bpmem		t_table	<>		; DATA XREF: .text:004C77C5o
					; _bpmem
; Exported entry 906. _bppage
; Exported entry 907. bppage
		public bppage
; t_sorted bppage
bppage		t_sorted <>		; DATA XREF: .text:00449EDFo
					; _bppage
; Exported entry 908. _bphard
; Exported entry 909. bphard
		public bphard
; t_table bphard
bphard		t_table	<>		; DATA XREF: .text:004C8271o
					; _bphard
; Exported entry 910. _watch
; Exported entry 911. watch
		public watch
; t_table watch
watch		t_table	<>		; DATA XREF: .text:0049FBCBo
					; _watch
; Exported entry 912. _patch
; Exported entry 913. patch
		public patch
; t_table patch
patch		t_table	<>		; DATA XREF: .text:004D7337o
					; _patch
; Exported entry 914. _procdata
; Exported entry 915. procdata
		public procdata
; t_sorted procdata
procdata	t_sorted <>		; DATA XREF: .text:00408586o
					; _procdata
; Exported entry 916. _encaddr
; Exported entry 917. encaddr
		public encaddr
; t_sorted encaddr
encaddr		t_sorted <>		; DATA XREF: .text:00449F00o
					; _encaddr
; Exported entry 920. _source
; Exported entry 923. source
		public source
; t_table source
source		t_table	<>		; DATA XREF: .text:004CB649o
					; _source
; Exported entry 924. _srccode
; Exported entry 925. srccode
		public srccode
; t_table srccode
srccode		t_table	<>		; DATA XREF: .text:004CA5A6o
					; _srccode
; Exported entry 918. _sehchain
; Exported entry 919. sehchain
		public sehchain
; t_table sehchain
sehchain	t_table	<>		; DATA XREF: .text:004D7EEFo
					; _sehchain
; Exported entry 921. callstk
; Exported entry 922. _callstk
		public _callstk
; t_table callstk
_callstk	t_table	<>		; DATA XREF: .text:004AE7D7o
					; callstk
dword_5D7BC0	dd ?			; DATA XREF: .text:0040972Fw
dword_5D7BC4	dd ?			; DATA XREF: .text:0040974Dw
dword_5D7BC8	dd ?			; DATA XREF: .text:0040FE0Ew
; WNDPROC lpPrevWndFunc
lpPrevWndFunc	dd ?			; DATA XREF: .text:0040C6C4r
; const	WCHAR dst
dst		dw 100h	dup(?)		; 0 ; DATA XREF: .text:loc_409B02r
; const	WCHAR word_5D7DD0
word_5D7DD0	dw 100h	dup(?)		; 0 ; DATA XREF: .text:00409B6Er
; const	WCHAR word_5D7FD0
word_5D7FD0	dw 100h	dup(?)		; 0 ; DATA XREF: .text:00409B78r
dword_5D81D0	dd ?			; DATA XREF: .text:00409DAEw
; wchar_t word_5D81D4
word_5D81D4	dw 100h	dup(?)		; 0 ; DATA XREF: .text:00409B82r
dword_5D83D4	dd ?			; DATA XREF: .text:00409DECw
; wchar_t word_5D83D8
word_5D83D8	dw 100h	dup(?)		; 0 ; DATA XREF: .text:0040A56Fr
; char dword_5D85D8[]
dword_5D85D8	dd ?			; DATA XREF: .text:0040A3C2w
dword_5D85DC	dd ?			; DATA XREF: .text:0040A40Aw
dword_5D85E0	dd 102h	dup(?)		; 0 ; DATA XREF: .text:loc_410F9Aw
; t_Stock g_Stock[]
g_Stock		t_Stock	14h dup(<>)	; DATA XREF: .text:004122E5o
g_Stock_MAX	dd ?			; DATA XREF: .text:004122D9o
dword_5D8F3C	dd ?			; DATA XREF: .text:00412820o
; HGLOBAL dword_5D8F40
dword_5D8F40	dd ?			; DATA XREF: .text:004170AEr
dword_5D8F44	dd ?			; DATA XREF: .text:004170C1r
dword_5D8F48	dd ?			; DATA XREF: .text:004172EBo
dword_5D8F4C	dd ?			; DATA XREF: .text:00419196w
dword_5D8F50	dd ?			; DATA XREF: .text:loc_418B81r
dword_5D8F54	dd ?			; DATA XREF: .text:00418B2Fr
dword_5D8F58	dd ?			; DATA XREF: .text:00418B2Ao
dword_5D8F5C	dd ?			; DATA XREF: .text:00418D7Er
; ulong	word_5D8F60
word_5D8F60	dw 104h	dup(?)		; 0 ; DATA XREF: .text:00418D2Bo
		dd ?
dword_5D916C	dd ?			; DATA XREF: .text:00418D78r
; int dword_5D9170[10]
dword_5D9170	dd 0Ah dup(?)		; 0 ; DATA XREF: .text:0041A37Ew
; wchar_t *dword_5D9198
dword_5D9198	dd ?			; DATA XREF: .text:loc_41A344r
; _DWORD dword_5D919C[1024]
dword_5D919C	dd 400h	dup(?)		; 0 ; DATA XREF: .text:loc_422D62r
dword_5DA19C	dd ?			; DATA XREF: .text:0042488Dw
; t_dialog pdlg
pdlg		t_dialog <>		; DATA XREF: .text:00424C20o
; t_table stru_5DA21C
stru_5DA21C	t_table	<>		; DATA XREF: .text:00424C3Fo
dword_5DA488	dd ?			; DATA XREF: .text:00423BADw
; t_sorted stru_5DA48C
stru_5DA48C	t_sorted <>		; DATA XREF: .text:00423F1Do
dword_5DA4D0	dd ?			; DATA XREF: .text:00423F2Aw
; t_sorted stru_5DA4D4
stru_5DA4D4	t_sorted <>		; DATA XREF: .text:004244DAo
dword_5DA518	dd ?			; DATA XREF: .text:00424476r
; t_dialog g_dialog
g_dialog	t_dialog <>		; DATA XREF: .text:004272C4r
; WNDPROC dword_5DA598
dword_5DA598	dd ?			; DATA XREF: .text:00428F15r
; WNDPROC dword_5DA59C
dword_5DA59C	dd ?			; DATA XREF: .text:004290C4r
; wchar_t *dword_5DA5A0
dword_5DA5A0	dd ?			; DATA XREF: .text:0042B807r
; LPCWSTR dword_5DA5A4
dword_5DA5A4	dd ?			; DATA XREF: .text:0042B7D9r
dword_5DA5A8	dd ?			; DATA XREF: .text:0042B95Ew
dword_5DA5AC	dd ?			; DATA XREF: .text:0042B88Cr
; LPCWSTR s1
s1		dd ?			; DATA XREF: .text:loc_42C99Fr
; struct_3 stru_5DA5B4
stru_5DA5B4	struct_3 <>		; DATA XREF: .text:0042C7D2r
; t_table stru_5DA5CC
stru_5DA5CC	t_table	<>		; DATA XREF: .text:0042C780o
dword_5DA838	dd ?			; DATA XREF: .text:0042C742w
dword_5DA83C	dd ?			; DATA XREF: .text:0042C74Ew
; struct tagRECT Rect
Rect		tagRECT	<>		; DATA XREF: .text:loc_42CA51o
; wchar_t word_5DA850
word_5DA850	dw ?			; DATA XREF: .text:0042D671o
		db    ?
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
		db    ?	;
; LONG lDistanceToMove
lDistanceToMove	dd ?			; DATA XREF: .text:loc_4274BCw
dword_5DA85C	dd ?			; DATA XREF: .text:004274C6w
; SIZE_T dwBytes
dwBytes		dd ?			; DATA XREF: .text:00427581w
dword_5DA864	dd ?			; DATA XREF: .text:004273E4w
dword_5DA868	dd ?			; DATA XREF: .text:004273EAw
dword_5DA86C	dd ?			; DATA XREF: .text:004273C1w
dword_5DA870	dd ?			; DATA XREF: .text:004273C6w
; WCHAR	VolumeNameBuffer
VolumeNameBuffer dw 20h	dup(?)		 ; 0 ; DATA XREF: .text:00427342w
; WCHAR	FileSystemNameBuffer
FileSystemNameBuffer dw	20h dup(?)	     ; 0 ; DATA	XREF: .text:0042734Bw
dword_5DA8F4	dd ?			; DATA XREF: .text:00427A86o
; INT_PTR result
result		dd ?			; DATA XREF: .text:0042E004w
; HGLOBAL model
model		dd ?			; DATA XREF: .text:0042E23Er
; int maxmodel
maxmodel	dd ?			; DATA XREF: .text:0042E234r
; HGLOBAL dword_5DA904
dword_5DA904	dd ?			; DATA XREF: .text:0042E608r
dword_5DA908	dd ?			; DATA XREF: .text:0042E5E9r
dword_5DA90C	dd ?			; DATA XREF: .text:00427CCEw
dword_5DA910	dd ?			; DATA XREF: .text:loc_427DD6r
dword_5DA914	dd ?			; DATA XREF: .text:00428099o
dword_5DA918	dd ?			; DATA XREF: .text:0042F4F7r
; char sel0[]
sel0		dw 200h	dup(?)		; 0 ; DATA XREF: .text:00427D79o
byte_5DAD1C	db 400h	dup(?)		; 0 ; DATA XREF: .text:00427DE3r
; char sel1[1024]
sel1		db 400h	dup(?)		; DATA XREF: .text:00427D62o
byte_5DB51C	db 800h	dup(?)		; 0 ; DATA XREF: .text:00427D5Do
dword_5DBD1C	dd ?			; DATA XREF: .text:00427D8Dw
; int dword_5DBD20
dword_5DBD20	dd ?			; DATA XREF: .text:0042EBCBw
dword_5DBD24	dd ?			; DATA XREF: .text:0042EA74r
dword_5DBD28	dd ?			; DATA XREF: .text:00427FECw
dword_5DBD2C	dd ?			; DATA XREF: .text:00427DA4r
dword_5DBD30	dd ?			; DATA XREF: .text:00427DA9r
dword_5DBD34	dd ?			; DATA XREF: .text:00427FF2w
dword_5DBD38	dd ?			; DATA XREF: .text:00427D6Cr
dword_5DBD3C	dd ?			; DATA XREF: .text:00427F01r
dword_5DBD40	dd ?			; DATA XREF: .text:loc_430825r
dword_5DBD44	dd ?			; DATA XREF: .text:00430A69r
dword_5DBD48	dd ?			; DATA XREF: .text:00427EA8w
; const	WCHAR condition
condition	dw 100h	dup(?)		; 0 ; DATA XREF: .text:0043105Eo
; const	WCHAR expression
expression	dw 100h	dup(?)		; 0 ; DATA XREF: .text:0043107Bo
; wchar_t exprtype
exprtype	dw ?			; DATA XREF: .text:004310AAo
; wchar_t word_5DC14E
word_5DC14E	dw 0FFh	dup(?)		; 0 ; DATA XREF: .text:004310FFo
dword_5DC34C	dd ?			; DATA XREF: .text:00428669r
dword_5DC350	dd ?			; DATA XREF: .text:00428731r
; int enable
enable		dd ?			; DATA XREF: .text:00431968w
dword_5DC358	dd ?			; DATA XREF: .text:00431A07o
		dd ?
; ulong	dword_5DC360
dword_5DC360	dd ?			; DATA XREF: .text:00431163r
word_5DC364	dw ?			; DATA XREF: .text:0043114Dr
		dw ?
; int dword_5DC368
dword_5DC368	dd ?			; DATA XREF: .text:004312A5r
; int dword_5DC36C
dword_5DC36C	dd ?			; DATA XREF: .text:004312D1r
		dd ?
dword_5DC374	dd ?			; DATA XREF: .text:loc_431281r
dword_5DC378	dd ?			; DATA XREF: .text:00432B31o
dword_5DC37C	dd ?			; DATA XREF: .text:00432B44w
; ulong	dword_5DC380
dword_5DC380	dd ?			; DATA XREF: .text:004324A7r
; int dword_5DC384
dword_5DC384	dd ?			; DATA XREF: .text:loc_432535r
; int dword_5DC388
dword_5DC388	dd ?			; DATA XREF: .text:00432562r
; ulong	index
index		dd ?			; DATA XREF: .text:0042845Ao
dword_5DC390	dd ?			; DATA XREF: .text:loc_433F10w
; ulong	dword_5DC394
dword_5DC394	dd ?			; DATA XREF: .text:0043322Cr
; ulong	addr
_addr		dd ?			; DATA XREF: .text:00433712r
; ulong	dword_5DC39C
dword_5DC39C	dd ?			; DATA XREF: .text:loc_4336E8w
; WPARAM fnindex
fnindex		dd ?			; DATA XREF: .text:00433217r
; int limit
limit		dd ?			; DATA XREF: .text:loc_4332BEr
; int g_DlgItemInt_92b
g_DlgItemInt_92b dd 85h	dup(?)		 ; 0 ; DATA XREF: .text:004332EAr
dword_5DC5BC	dd ?			; DATA XREF: .text:00435C2Bw
; HGLOBAL dword_5DC5C0
dword_5DC5C0	dd ?			; DATA XREF: .text:loc_435CE4r
; int pcount
pcount		dd ?			; DATA XREF: .text:004365FAw
dword_5DC5C8	dd ?			; DATA XREF: .text:0043647Ar
dword_5DC5CC	dd ?			; DATA XREF: .text:00435CEFr
; HGLOBAL base
base		dd ?			; DATA XREF: .text:00436C2Cr
dword_5DC5D4	dd ?			; DATA XREF: .text:00436C10r
; size_t nelem
nelem		dd ?			; DATA XREF: .text:00436C0Br
dword_5DC5DC	dd ?			; DATA XREF: .text:00428A9Cr
; void *dword_5DC5E0
dword_5DC5E0	dd ?			; DATA XREF: .text:loc_4370E0r
dword_5DC5E4	dd ?			; DATA XREF: .text:00438A49w
dword_5DC5E8	dd ?			; DATA XREF: .text:004370C5r
; int dword_5DC5EC[]
dword_5DC5EC	dd 1000h dup(?)		; 0 ; DATA XREF: .text:00438CB0o
; size_t dword_5E05EC
dword_5E05EC	dd ?			; DATA XREF: .text:00438A3Dw
; LPVOID dword_5E05F0
dword_5E05F0	dd ?			; DATA XREF: .text:004370E9r
dword_5E05F4	dd ?			; DATA XREF: .text:00438A70w
dword_5E05F8	dd ?			; DATA XREF: .text:00438A6Bw
dword_5E05FC	dd ?			; DATA XREF: .text:00438A75w
dword_5E0600	dd ?			; DATA XREF: .text:00438B68w
dword_5E0604	dd ?			; DATA XREF: .text:00438A7Fw
dword_5E0608	dd ?			; DATA XREF: .text:00438A87w
dword_5E060C	dd ?			; DATA XREF: .text:00438A8Cw
byte_5E0610	db 100h	dup(?)		; 0 ; DATA XREF: .text:004391E1o
dword_5E0710	dd ?			; DATA XREF: .text:00438A94w
dword_5E0714	dd ?			; DATA XREF: .text:0043B2F5r
; int mode
mode		dd ?			; DATA XREF: .text:0043B0A5r
dword_5E071C	dd ?			; DATA XREF: .text:0043B0B2r
dword_5E0720	dd ?			; DATA XREF: .text:0043B2B3r
dword_5E0724	dd ?			; DATA XREF: .text:0043BF63r
dword_5E0728	dd ?			; DATA XREF: .text:0043BE36w
; int dword_5E072C
dword_5E072C	dd ?			; DATA XREF: .text:0043BF11w
; int dword_5E0730
dword_5E0730	dd ?			; DATA XREF: .text:0043D20Ew
; int dword_5E0734
dword_5E0734	dd ?			; DATA XREF: .text:0043D3DDw
dword_5E0738	dd ?			; DATA XREF: .text:00442FB1w
dword_5E073C	dd ?			; DATA XREF: .text:loc_43D04Cr
dword_5E0740	dd ?			; DATA XREF: .text:0043D262w
dword_5E0744	dd ?			; DATA XREF: .text:0043BED4w
dword_5E0748	dd ?			; DATA XREF: .text:0043BEDEw
; t_table stru_5E074C
stru_5E074C	t_table	<>		; DATA XREF: .text:0044B74Fo
word_5E09B8	dw 0FEh	dup(?)		; 0 ; DATA XREF: .text:loc_44B659o
dword_5E0BB4	dd ?			; DATA XREF: .text:00457A64o
g_Ticks		dd ?			; DATA XREF: .text:00451337r
; char dword_5E0BBC[]
dword_5E0BBC	dd ?			; DATA XREF: .text:0045134Dr
dword_5E0BC0	dd ?			; DATA XREF: .text:00457A85o
		dd ?
dword_5E0BC8	dd ?			; DATA XREF: .text:00457B5Ar
byte_5E0BCC	db 0BF4h dup(?)		; 0 ; DATA XREF: .text:00457B65o
dword_5E17C0	dd ?			; DATA XREF: .text:00457A51o
; HGLOBAL dword_5E17C4
dword_5E17C4	dd ?			; DATA XREF: .text:0045855Br
; _DWORD *dword_5E17C8
dword_5E17C8	dd ?			; DATA XREF: .text:00458DECo
dword_5E17CC	dd ?			; DATA XREF: .text:0045B6FBw
; HGLOBAL data
data		dd ?			; DATA XREF: .text:0045BAE0r
dword_5E17D4	dd ?			; DATA XREF: .text:0045BAEFr
word_5E17D8	dw 104h	dup(?)		; 0 ; DATA XREF: .text:00465398o
byte_5E19E0	db 20h dup(?)		; 0 ; DATA XREF: .text:0046ED8Do
; int dword_5E1A00[]
dword_5E1A00	dd 10D6h dup(?)		; 0 ; DATA XREF: .text:00465299o
dword_5E5D58	dd ?			; DATA XREF: .text:0046551Cr
; HGLOBAL copy
copy		dd ?			; DATA XREF: .text:loc_45C8EFr
; ulong	addr0
addr0		dd ?			; DATA XREF: .text:0045CAD3r
; size_t size
_size		dd ?			; DATA XREF: .text:0045C755r
; ulong	addr1
addr1		dd ?			; DATA XREF: .text:0045C947r
; HGLOBAL s
s		dd ?			; DATA XREF: .text:0045C74Do
; HGLOBAL dword_5E5D70
dword_5E5D70	dd ?			; DATA XREF: .text:0045CFC3w
; HGLOBAL dword_5E5D74
dword_5E5D74	dd ?			; DATA XREF: .text:0045CFDAw
dword_5E5D78	dd ?			; DATA XREF: .text:loc_45D0C2w
dword_5E5D7C	dd ?			; DATA XREF: .text:0045D270w
; ulong	dword_5E5D80
dword_5E5D80	dd ?			; DATA XREF: .text:0045D951w
dword_5E5D84	dd ?			; DATA XREF: .text:loc_464495r
; HGLOBAL dword_5E5D88
dword_5E5D88	dd ?			; DATA XREF: .text:0045CFF8w
; int dword_5E5D8C
dword_5E5D8C	dd ?			; DATA XREF: .text:0045CFE4w
dword_5E5D90	dd ?			; DATA XREF: .text:0046BA85w
dword_5E5D94	dd ?			; DATA XREF: .text:loc_46C68Dw
dword_5E5D98	dd ?			; DATA XREF: .text:0046C682w
dword_5E5D9C	dd ?			; DATA XREF: .text:00468C72w
dword_5E5DA0	dd ?			; DATA XREF: .text:0046E5A4w
; wchar_t word_5E5DA4
word_5E5DA4	dw 100h	dup(?)		; 0 ; DATA XREF: .text:0045C622o
; int promille
promille	dd ?			; DATA XREF: .text:0045C63Aw
dword_5E5FA8	dd ?			; DATA XREF: .text:0045C647w
dword_5E5FAC	dd ?			; DATA XREF: .text:0045C633r
dword_5E5FB0	dd ?			; DATA XREF: .text:0045C640r
dword_5E5FB4	dd ?			; DATA XREF: .text:0046EE51w
dword_5E5FB8	dd ?			; DATA XREF: .text:0046EE65w
dword_5E5FBC	dd ?			; DATA XREF: .text:0046EE79w
dword_5E5FC0	dd ?			; DATA XREF: .text:loc_46EE83w
dword_5E5FC4	dd ?			; DATA XREF: .text:0046EE91w
dword_5E5FC8	dd ?			; DATA XREF: .text:0046EE9Fw
dword_5E5FCC	dd ?			; DATA XREF: .text:0046EEADw
dword_5E5FD0	dd ?			; DATA XREF: .text:0046EEBBw
dword_5E5FD4	dd ?			; DATA XREF: .text:0046EED7w
dword_5E5FD8	dd ?			; DATA XREF: .text:0046EEF3w
dword_5E5FDC	dd ?			; DATA XREF: .text:0046EF1Fw
dword_5E5FE0	dd ?			; DATA XREF: .text:0046EF46w
dword_5E5FE4	dd ?			; DATA XREF: .text:0046EF56w
dword_5E5FE8	dd ?			; DATA XREF: .text:0046EF6Aw
dword_5E5FEC	dd ?			; DATA XREF: .text:0046EF78w
dword_5E5FF0	dd ?			; DATA XREF: .text:0046EF90w
dword_5E5FF4	dd ?			; DATA XREF: .text:0046EF82w
dword_5E5FF8	dd ?			; DATA XREF: .text:0046EF9Aw
dword_5E5FFC	dd ?			; DATA XREF: .text:0046EFA8w
dword_5E6000	dd ?			; DATA XREF: .text:0046EFB6w
dword_5E6004	dd ?			; DATA XREF: .text:loc_46EFD5w
dword_5E6008	dd ?			; DATA XREF: .text:loc_46EFF7w
dword_5E600C	dd ?			; DATA XREF: .text:0046F005w
dword_5E6010	dd ?			; DATA XREF: .text:0046F018w
dword_5E6014	dd ?			; DATA XREF: .text:0045DF9Br
dword_5E6018	dd ?			; DATA XREF: .text:loc_45F3EFw
dword_5E601C	dd ?			; DATA XREF: .text:loc_45F40Dw
; int dword_5E6020[]
dword_5E6020	dd 40h dup(?)		; 0 ; DATA XREF: .text:loc_45E20Br
dword_5E6120	dd ?			; DATA XREF: .text:loc_45E0EDr
dword_5E6124	dd ?			; DATA XREF: .text:0045E137r
; HGLOBAL dword_5E6128
dword_5E6128	dd ?			; DATA XREF: .text:004706DDw
dword_5E612C	dd ?			; DATA XREF: .text:00470C07r
; wchar_t word_5E6130
word_5E6130	dw 2Ah dup(?)		; 0 ; DATA XREF: .text:00477396o
; HWND dword_5E6184
dword_5E6184	dd 8Ah dup(?)		; 0 ; DATA XREF: .text:0047615Dr
; t_dump g_disasmdump
g_disasmdump	t_dump <>		; DATA XREF: .text:loc_47628Br
; t_table stru_5E6AB8
stru_5E6AB8	t_table	<>		; DATA XREF: .text:00474E80o
; t_table stru_5E6D24
stru_5E6D24	t_table	<>		; DATA XREF: .text:004764BBo
; t_dump g_dumpdump
g_dumpdump	t_dump <>		; DATA XREF: .text:0047763Bo
; t_dump g_stackdump
g_stackdump	t_dump <>		; DATA XREF: .text:00477647o
; t_comment stru_5E7DA8[]
stru_5E7DA8	t_comment 5 dup(<>)	; DATA XREF: .text:00474D07r
; t_jmpcall stru_5E9DC4
stru_5E9DC4	t_jmpcall <>		; DATA XREF: .text:00474D3Bo
		db 50h dup(?)		; 0
dword_5E9E1C	dd ?			; DATA XREF: .text:00474D32w
; _DWORD dword_5E9E20
dword_5E9E20	dd ?			; DATA XREF: .text:00478B9Fr
; SIZE_T dword_5E9E24
dword_5E9E24	dd ?			; DATA XREF: .text:00478C77r
; ulong	dword_5E9E28
dword_5E9E28	dd ?			; DATA XREF: .text:00478C6Ar
; HGLOBAL dword_5E9E2C
dword_5E9E2C	dd ?			; DATA XREF: .text:0047AB29r
; SIZE_T dword_5E9E30
dword_5E9E30	dd ?			; DATA XREF: .text:0047AB13r
; ulong	dword_5E9E34
dword_5E9E34	dd ?			; DATA XREF: .text:loc_47AB0Cr
; HGLOBAL dword_5E9E38
dword_5E9E38	dd ?			; DATA XREF: .text:0047AADAr
; int dword_5E9E3C
dword_5E9E3C	dd ?			; DATA XREF: .text:0047AAC4r
; int dword_5E9E40
dword_5E9E40	dd ?			; DATA XREF: .text:loc_47AABFr
dword_5E9E44	dd ?			; DATA XREF: .text:0047ABE1w
; HGLOBAL dword_5E9E48
dword_5E9E48	dd ?			; DATA XREF: .text:0047BBF2r
; int dword_5E9E4C
dword_5E9E4C	dd ?			; DATA XREF: .text:0047BBDCr
; int dword_5E9E50
dword_5E9E50	dd ?			; DATA XREF: .text:loc_47BBD6r
dword_5E9E54	dd ?			; DATA XREF: .text:0047BCEDw
; _DWORD dword_5E9E58
dword_5E9E58	dd ?			; DATA XREF: .text:0047AD62r
; int dword_5E9E5C
dword_5E9E5C	dd ?			; DATA XREF: .text:0047AD49r
; int dword_5E9E60
dword_5E9E60	dd ?			; DATA XREF: .text:0047AD37r
dword_5E9E64	dd ?			; DATA XREF: .text:0047AE63w
; HGLOBAL dword_5E9E68
dword_5E9E68	dd ?			; DATA XREF: .text:00478DC5o
; int dword_5E9E6C
dword_5E9E6C	dd ?			; DATA XREF: .text:00481B0Ew
; int dword_5E9E70
dword_5E9E70	dd ?			; DATA XREF: .text:00481786r
dword_5E9E74	dd ?			; DATA XREF: .text:loc_482025w
; HGLOBAL dword_5E9E78
dword_5E9E78	dd ?			; DATA XREF: .text:0047C3ADr
; int dword_5E9E7C
dword_5E9E7C	dd ?			; DATA XREF: .text:0047C397r
; int dword_5E9E80
dword_5E9E80	dd ?			; DATA XREF: .text:loc_47C391r
dword_5E9E84	dd ?			; DATA XREF: .text:0047C4A8w
; t_table word_5E9E88
word_5E9E88	dw 20h dup(?)		; 0 ; DATA XREF: .text:00478EFBo
dword_5E9EC8	dd ?			; DATA XREF: .text:00481A5Ao
dword_5E9ECC	dd ?			; DATA XREF: .text:0048237Co
dword_5E9ED0	dd 89h dup(?)		; 0 ; DATA XREF: .text:004817E4o
		db 514h	dup(?)		; 0
; wchar_t word_5EA608
word_5EA608	dw 20h dup(?)		; 0 ; DATA XREF: .text:0047921Eo
dword_5EA648	dd 80h dup(?)		; 0 ; DATA XREF: .text:00481A8Bo
; wchar_t word_5EA848[256]
word_5EA848	dw 100h	dup(?)		; 0 ; DATA XREF: .text:0047DF7Ao
; wchar_t word_5EAA48[256]
word_5EAA48	dw 100h	dup(?)		; 0 ; DATA XREF: .text:0047E05Fo
; wchar_t word_5EAC48[2048]
word_5EAC48	dw 800h	dup(?)		; 0 ; DATA XREF: .text:0047E0A8o
; _WORD	word_5EBC48[16]
word_5EBC48	dw 10h dup(?)		; 0 ; DATA XREF: .text:0047E005w
dword_5EBC68	dd ?			; DATA XREF: .text:0047DF9Ar
dword_5EBC6C	dd ?			; DATA XREF: .text:0047DE80w
; int failed
failed		dd ?			; DATA XREF: .text:00478C81o
dword_5EBC74	dd ?			; DATA XREF: .text:00478E89w
dword_5EBC78	dd ?			; DATA XREF: .text:00478F41r
dword_5EBC7C	dd ?			; DATA XREF: .text:loc_479258r
dword_5EBC80	dd ?			; DATA XREF: .text:loc_47AE6Dw
dword_5EBC84	dd ?			; DATA XREF: .text:0047AC08w
dword_5EBC88	dd ?			; DATA XREF: .text:0047BCFDw
dword_5EBC8C	dd ?			; DATA XREF: .text:0047C4BAw
; t_scan ps
ps		t_scan <>		; DATA XREF: .text:00489AA0o
dword_5EC0BE	dd ?			; DATA XREF: .text:0048C019r
		db    ?
		db    ?	;
dword_5EC0C4	dd ?			; DATA XREF: .text:0048A6F1r
dword_5EC0C8	dd ?			; DATA XREF: .text:00489AD3w
; ulong	value
value		dd ?			; DATA XREF: .text:00489A98w
dword_5EC0D0	dd ?			; DATA XREF: .text:00489A93w
dword_5EC0D4	dd ?			; DATA XREF: .text:004929F7w
dword_5EC0D8	dd ?			; DATA XREF: .text:00492A00w
; t_thread *pthr
pthr		dd ?			; DATA XREF: .text:00492A08w
dword_5EC0E0	dd ?			; DATA XREF: .text:00492A14w
; int row
row		dd ?			; DATA XREF: .text:00492A5Cw
dword_5EC0E8	dd ?			; DATA XREF: .text:00492B0Dw
dword_5EC0EC	dd ?			; DATA XREF: .text:00492AC2w
; ulong	dumpaddr
dumpaddr	dd ?			; DATA XREF: .text:00492B1Dw
; t_reg	preg
preg		t_reg <>		; DATA XREF: .text:00492AB4o
dword_5EC2B8	dd ?			; DATA XREF: .text:00492A19w
; ulong	*dword_5EC2BC
dword_5EC2BC	dd ?			; DATA XREF: .text:00496F1Bw
; HMODULE dword_5EC2C0
dword_5EC2C0	dd ?			; DATA XREF: .text:0049A614r
dword_5EC2C4	dd ?			; DATA XREF: .text:0049A630w
dword_5EC2C8	dd ?			; DATA XREF: .text:004986A0r
; t_disasm da
da		t_disasm <>		; DATA XREF: .text:0049ACEBo
; t_disasm stru_5EDB9C
stru_5EDB9C	t_disasm <>		; DATA XREF: .text:0049AD1Do
dword_5EF46C	dd ?			; DATA XREF: .text:00498684r
; t_table stru_5EF470
stru_5EF470	t_table	<>		; DATA XREF: .text:0049A567o
dword_5EF6DC	dd ?			; DATA XREF: .text:004985A3r
; wchar_t word_5EF6E0
word_5EF6E0	dw 1000h dup(?)		; 0 ; DATA XREF: .text:004984B7w
; char byte_5F16E0[]
byte_5F16E0	db 1000h dup(?)		; 0 ; DATA XREF: .text:00498550w
dword_5F26E0	dd ?			; DATA XREF: .text:00498495o
dword_5F26E4	dd ?			; DATA XREF: .text:004984C3w
dword_5F26E8	dd ?			; DATA XREF: .text:004984ACr
dword_5F26EC	dd ?			; DATA XREF: .text:004984D3w
; t_scan stru_5F26F0
stru_5F26F0	t_scan <>		; DATA XREF: .text:0049B446o
dword_5F2B1E	dd ?			; DATA XREF: .text:0049B430r
		db    ?
		db    ?	;
; wchar_t *dword_5F2B24
dword_5F2B24	dd ?			; DATA XREF: .text:0049B2A5r
dword_5F2B28	dd ?			; DATA XREF: .text:0049B2B4w
dword_5F2B2C	dd ?			; DATA XREF: .text:loc_49B2C0r
dword_5F2B30	dd ?			; DATA XREF: .text:0049B28Cr
dword_5F2B34	dd ?			; DATA XREF: .text:0049B287r
dword_5F2B38	dd ?			; DATA XREF: .text:0049B7A5w
dword_5F2B3C	dd ?			; DATA XREF: .text:0049FAF0w
dword_5F2B40	dd ?			; DATA XREF: .text:0049FACBw
; ulong	reg
reg		dd ?			; DATA XREF: .text:0049FEDCr
dword_5F2B48	dd ?			; DATA XREF: .text:0049FAD0w
		dd ?
; ulong	g_addr[]
g_addr		dd 83h dup(?)		; 0 ; DATA XREF: .text:004A0597r
; t_thread *dword_5F2D5C
dword_5F2D5C	dd ?			; DATA XREF: .text:0049FB34w
; int dword_5F2D60
dword_5F2D60	dd ?			; DATA XREF: .text:004A2670w
dword_5F2D64	dd ?			; DATA XREF: .text:loc_4A4955r
dword_5F2D68	dd ?			; DATA XREF: .text:004A4943r
g_dumptype	dd ?			; DATA XREF: .text:004A48B5o
tbyte_5F2D70	dt ?			; DATA XREF: .text:004A4BCCo
		dw ?
dword_5F2D7C	dd ?			; DATA XREF: .text:004A4BBDr
; t_asmmod stru_5F2D80
stru_5F2D80	label t_asmmod
			db sizeof t_asmmod * 80h dup(?)	; DATA XREF: .text:004A563Eo
; int nmodel
nmodel		dd ?			; DATA XREF: .text:loc_4A569Cw
; t_hexstr hstr
hstr		t_hexstr <>		; DATA XREF: .text:004A7287r
dword_5F6B8C	dd ?			; DATA XREF: .text:004A265Aw
dword_5F6B90	dd ?			; DATA XREF: .text:004A2660w
dword_5F6B94	dd ?			; DATA XREF: .text:004A2666w
; wchar_t word_5F6B98
word_5F6B98	dw 100h	dup(?)		; 0 ; DATA XREF: .text:loc_4A1839r
; const	WCHAR word_5F6D98
word_5F6D98	dw 100h	dup(?)		; 0 ; DATA XREF: .text:004A0E40w
; t_table stru_5F6F98[8]
stru_5F6F98	t_table	8 dup(<>)	; DATA XREF: .text:004A87ACo
; t_block stru_5F82F8[8]
stru_5F82F8	t_block	8 dup(<>)	; DATA XREF: .text:004A0E9Do
; t_frame stru_5FA658
stru_5FA658	t_frame	<>		; DATA XREF: .text:004A0E8Eo
; t_sorted stru_5FA8D4
stru_5FA8D4	t_sorted <>		; DATA XREF: .text:004A0E33o
; ulong	*dword_5FA918
dword_5FA918	dd ?			; DATA XREF: .text:004A1711w
; HGLOBAL dword_5FA91C
dword_5FA91C	dd ?			; DATA XREF: .text:004A8C01w
; HGLOBAL dword_5FA920
dword_5FA920	dd ?			; DATA XREF: .text:004A8B0Cr
dword_5FA924	dd ?			; DATA XREF: .text:004A8AFBr
dword_5FA928	dd ?			; DATA XREF: .text:004A8A5Fr
dword_5FA92C	dd ?			; DATA XREF: .text:004A8A4Fr
dword_5FA930	dd ?			; DATA XREF: .text:004A8A3Bo
dword_5FA934	dd ?			; DATA XREF: .text:loc_4A8B7Ar
dword_5FA938	dd ?			; DATA XREF: .text:004A8BA0r
dword_5FA93C	dd ?			; DATA XREF: .text:004A8B69o
dword_5FA940	dd ?			; DATA XREF: .text:004A8A20o
dword_5FA944	dd ?			; DATA XREF: .text:004A8B73o
dword_5FA948	dd ?			; DATA XREF: .text:004A8A34o
dword_5FA94C	dd ?			; DATA XREF: .text:004A8B6Eo
dword_5FA950	dd ?			; DATA XREF: .text:004A8A29r
dword_5FA954	dd ?			; DATA XREF: .text:004AD39Aw
; ulong	dword_5FA958
dword_5FA958	dd ?			; DATA XREF: .text:004AD3A1w
; t_dump *pd
pd		dd ?			; DATA XREF: .text:004B044Br
dword_5FA960	dd ?			; DATA XREF: .text:004B063Fw
; int dword_5FA964
dword_5FA964	dd ?			; DATA XREF: .text:004B05C0w
dword_5FA968	dd ?			; DATA XREF: .text:004B0628w
; HGLOBAL dword_5FA96C
dword_5FA96C	dd ?			; DATA XREF: .text:004B062Fw
; uchar	*decode
decode		dd ?			; DATA XREF: .text:004B05C9w
; ulong	amin
amin		dd ?			; DATA XREF: .text:004B05DFw
; ulong	dword_5FA978
dword_5FA978	dd ?			; DATA XREF: .text:004B05D7w
; ulong	amax
amax		dd ?			; DATA XREF: .text:004B05CFw
; ulong	dword_5FA980
dword_5FA980	dd ?			; DATA XREF: .text:004B05F2w
dword_5FA984	dd ?			; DATA XREF: .text:004B05E8w
; int dword_5FA988
dword_5FA988	dd ?			; DATA XREF: .text:004B0600w
dword_5FA98C	dd ?			; DATA XREF: .text:004B0635w
; LPCWSTR letter
letter		dd ?			; DATA XREF: .text:004B1CEDr
; uchar	cmd
cmd		db 10h dup(?)		; 0 ; DATA XREF: .text:004B08FBo
; size_t cmdsize
cmdsize		dd ?			; DATA XREF: .text:004B0646w
; t_disasm stru_5FA9A8
stru_5FA9A8	t_disasm <>		; DATA XREF: .text:004B05FBo
; t_thread *dword_5FC278
dword_5FC278	dd ?			; DATA XREF: .text:loc_4B04C1r
dword_5FC27C	dd ?			; DATA XREF: .text:004B0656w
; ulong	*dword_5FC280
dword_5FC280	dd ?			; DATA XREF: .text:004C0C36w
; int dword_5FC284
dword_5FC284	dd ?			; DATA XREF: .text:004C0C3Dw
; HGLOBAL dword_5FC288
dword_5FC288	dd ?			; DATA XREF: .text:004C3124o
dword_5FC28C	dd ?			; DATA XREF: .text:004C4293r
; t_reg	stru_5FC290
stru_5FC290	t_reg <>		; DATA XREF: .text:004C42C8o
dword_5FC454	dd ?			; DATA XREF: .text:004C42DDw
; t_table stru_5FC458
stru_5FC458	t_table	<>		; DATA XREF: .text:004C32C8o
dword_5FC6C4	dd ?			; DATA XREF: .text:004C3161r
; SIZE_T dword_5FC6C8
dword_5FC6C8	dd ?			; DATA XREF: .text:004C42AFw
dword_5FC6CC	dd ?			; DATA XREF: .text:004C3133r
dword_5FC6D0	dd ?			; DATA XREF: .text:004C3138r
dword_5FC6D4	dd ?			; DATA XREF: .text:004C42CDw
dword_5FC6D8	dd ?			; DATA XREF: .text:004C4469w
dword_5FC6DC	dd ?			; DATA XREF: .text:004C42E5w
dword_5FC6E0	dd ?			; DATA XREF: .text:004C42ECw
dword_5FC6E4	dd ?			; DATA XREF: .text:loc_4C350Er
dword_5FC6E8	dd ?			; DATA XREF: .text:loc_4C2B55r
dword_5FC6EC	dd ?			; DATA XREF: .text:loc_4C2E43r
; t_reg	stru_5FC6F0
stru_5FC6F0	t_reg <>		; DATA XREF: .text:004C3236o
dword_5FC8B4	dd ?			; DATA XREF: .text:004C322Cw
; t_table stru_5FC8B8
stru_5FC8B8	t_table	<>		; DATA XREF: .text:004C3EAFo
; int dword_5FCB24
dword_5FCB24	dd ?			; DATA XREF: .text:004C3C6Br
dword_5FCB28	dd ?			; DATA XREF: .text:004C3D9Cr
dword_5FCB2C	dd ?			; DATA XREF: .text:004C6AD3w
; int dword_5FCB30
dword_5FCB30	dd ?			; DATA XREF: .text:004C79EFw
dword_5FCB34	dd ?			; DATA XREF: .text:loc_4C7A03w
; HMODULE g_DBGHELP
g_DBGHELP	dd ?			; DATA XREF: .text:004C93FFr
dword_5FCB3C	dd ?			; DATA XREF: .text:004C9630w
_imp__SymSetOptions dd ?		; DATA XREF: .text:004C9469w
_imp__SymInitializeW dd	?		; DATA XREF: .text:004C947Dw
_imp__SymCleanup dd ?			; DATA XREF: .text:004C9491w
_imp__SymLoadModule64 dd ?		; DATA XREF: .text:004C94A5w
_imp__SymGetModuleInfoW64 dd ?		; DATA XREF: .text:004C94B9w
_imp__SymEnumSourceFilesW dd ?		; DATA XREF: .text:004C94CDw
_imp__SymUnloadModule64	dd ?		; DATA XREF: .text:004C94E1w
_imp__SymFromAddrW dd ?			; DATA XREF: .text:004C94F5w
_imp__SymEnumSymbolsW dd ?		; DATA XREF: .text:004C93C6r
_imp__SymGetTypeInfo dd	?		; DATA XREF: .text:004C8A98r
_imp__SymSetContext dd ?		; DATA XREF: .text:004C939Er
_imp__SymGetLineFromAddrW64 dd ?	; DATA XREF: .text:004C9545w
_imp__SymEnumSourceLinesW dd ?		; DATA XREF: .text:004C9559w
_imp__StackWalk64 dd ?			; DATA XREF: .text:004C95F8w
_imp__SymFunctionTableAccess64 dd ?	; DATA XREF: .text:004C960Cw
_imp__SymGetModuleBase64 dd ?		; DATA XREF: .text:004C9620w
; t_source *dword_5FCB80
dword_5FCB80	dd ?			; DATA XREF: .text:004CA7E1w
; ulong	g_src_base
g_src_base	dd ?			; DATA XREF: .text:004CA2D0r
; wchar_t g_src_path
g_src_path	dw 104h	dup(?)		; 0 ; DATA XREF: .text:004CA2CBo
dword_5FCD90	dd ?			; DATA XREF: .text:004CA2DEw
; int line
line		dd ?			; DATA XREF: .text:004CA29Bw
; t_srcext *extent
extent		dd ?			; DATA XREF: .text:004CA296o
; int nextent
nextent		dd ?			; DATA XREF: .text:004CA2ABw
dword_5FCDA0	dd ?			; DATA XREF: .text:004CA2C5w
dword_5FCDA4	dd ?			; DATA XREF: .text:004CA2BFw
dword_5FCDA8	dd ?			; DATA XREF: .text:004CA2B9w
dword_5FCDAC	dd ?			; DATA XREF: .text:004CA2B3w
; t_dialog stru_5FCDB0
stru_5FCDB0	t_dialog <>		; DATA XREF: .text:004CC870o
; t_dump stru_5FCE2C
stru_5FCE2C	t_dump 5 dup(<>)	; DATA XREF: .text:004CC915o
; wchar_t prtype
prtype		dw 20h dup(?)		; 0 ; DATA XREF: .text:004CBB2Fw
; t_dialog stru_5FF1A8
stru_5FF1A8	t_dialog <>		; DATA XREF: .text:loc_4CF2CFo
dword_5FF224	dd ?			; DATA XREF: .text:loc_4CDE86w
; HGLOBAL dword_5FF228
dword_5FF228	dd ?			; DATA XREF: .text:004CD94Er
dword_5FF22C	dd ?			; DATA XREF: .text:loc_4CD96Fr
dword_5FF230	dd ?			; DATA XREF: .text:004CF85Ar
; HGLOBAL dword_5FF234
dword_5FF234	dd ?			; DATA XREF: .text:004D16FDo
; LPVOID ppv
ppv		dd ?			; DATA XREF: .text:004D213Fr
; struct_8 stru_5FF23C[64]
stru_5FF23C	struct_8 40h dup(<>)	; DATA XREF: .text:004D22DCw
dword_60743C	dd ?			; DATA XREF: .text:004D21A7w
dword_607440	dd ?			; DATA XREF: .text:004D228Dw
dword_607444	dd ?			; DATA XREF: .text:004D21ACw
; wchar_t word_607448
word_607448	dw 100h	dup(?)		; 0 ; DATA XREF: .text:004D21B2w
; wchar_t word_607648
word_607648	dw 100h	dup(?)		; 0 ; DATA XREF: .text:004D21BDw
; HGLOBAL dword_607848
dword_607848	dd ?			; DATA XREF: .text:004D30AEo
; int dword_60784C
dword_60784C	dd ?			; DATA XREF: .text:004D31AEo
; char dword_607850[]
dword_607850	dd ?			; DATA XREF: .text:004D30B3r
; HGLOBAL dword_607854
dword_607854	dd ?			; DATA XREF: .text:004D30D0r
; int dword_607858
dword_607858	dd ?			; DATA XREF: .text:004D31CFo
; int dword_60785C
dword_60785C	dd ?			; DATA XREF: .text:004D31C3r
; HANDLE hThread
hThread		dd ?			; DATA XREF: .text:004D405Ar
dword_607864	dd ?			; DATA XREF: .text:004D4014o
dword_607868	dd ?			; DATA XREF: .text:004D400Fo
; struct_9 stru_60786C
stru_60786C	struct_9 <>		; DATA XREF: .text:004D3F31w
dword_618474	dd ?			; DATA XREF: .text:004D3FBFo
		dd ?
dword_61847C	dd ?			; DATA XREF: .text:loc_4D41F0o
		dd ?
dword_618484	dd ?			; DATA XREF: .text:004D5173w
dword_618488	dd ?			; DATA XREF: .text:004D6900w
dword_61848C	dd ?			; DATA XREF: .text:004D690Dw
dword_618490	dd ?			; DATA XREF: .text:004D6908w
dword_618494	dd ?			; DATA XREF: .text:004D75CAw
; ulong	dword_618498
dword_618498	dd ?			; DATA XREF: .text:004D75D1w
; ulong	dword_61849C
dword_61849C	dd ?			; DATA XREF: .text:004D7644w
; t_menu g_Plugin_menu[256]
g_Plugin_menu	t_menu 100h dup(<>)	; DATA XREF: .text:004D80E9o
dword_619CA0	dd ?			; DATA XREF: .text:004D81FDw
; t_table stru_619CA4
stru_619CA4	t_table	<>		; DATA XREF: .text:004DBBC2o
dword_619F10	dd ?			; DATA XREF: .text:004DBF82w
dword_619F14	dd ?			; DATA XREF: .text:004DBF8Ew
dword_619F18	dd ?			; DATA XREF: .text:loc_4DA2A3r
byte_619F1C	db 804h	dup(?)		; 0 ; DATA XREF: .text:004D9682o
; ulong	dword_61A720
dword_61A720	dd ?			; DATA XREF: .text:004D9150r
; ulong	dword_61A724
dword_61A724	dd ?			; DATA XREF: .text:004D9C4Cr
; t_dialog stru_61A728
stru_61A728	t_dialog <>		; DATA XREF: .text:loc_4DC3B1o
dword_61A7A4	dd ?			; DATA XREF: .text:004DBCADw
byte_61A7A8	db 810h	dup(?)		; 0 ; DATA XREF: .text:004DE7F2o
dword_61AFB8	dd ?			; DATA XREF: .text:004DEF7Dw
dword_61AFBC	dd ?			; DATA XREF: .text:004DEFD5w
dword_61AFC0	dd ?			; DATA XREF: .text:004DF00Dw
dword_61AFC4	dd ?			; DATA XREF: .text:004DF2BDw
dword_61AFC8	dd ?			; DATA XREF: .text:004DF691r
byte_61AFCC	db    ?			; DATA XREF: .text:004DF63Br
byte_61AFCD	db    ?			; DATA XREF: .text:004DF64Cr
byte_61AFCE	db    ?			; DATA XREF: .text:004DF610r
byte_61AFCF	db    ?			; DATA XREF: .text:004DF51Fr
byte_61AFD0	db    ?			; DATA XREF: .text:004E0D20r
byte_61AFD1	db    ?			; DATA XREF: .text:004E20F0w
		db    ?	;
		db    ?	;
dword_61AFD4	dd ?			; DATA XREF: .text:004E2118o
dword_61AFD8	dd ?			; DATA XREF: .text:004E2145o
dword_61AFDC	dd ?			; DATA XREF: .text:004E215Dw
dword_61AFE0	dd ?			; DATA XREF: .text:004E217Ao
dword_61AFE4	dd ?			; DATA XREF: .text:004E219Co
dword_61AFE8	dd ?			; DATA XREF: .text:004E2265o
dword_61AFEC	dd ?			; DATA XREF: .text:004E2282o
byte_61AFF0	db 30h dup(?)		; 0 ; DATA XREF: .text:004E0F55o
byte_61B020	db 30h dup(?)		; 0 ; DATA XREF: .text:004E0F5Ao
byte_61B050	db 1Ch dup(?)		; 0 ; DATA XREF: .text:004E0FB6o
byte_61B06C	db 1Ch dup(?)		; 0 ; DATA XREF: .text:004E0FBBo
byte_61B088	db 4 dup(?)		; 0 ; DATA XREF: .text:004E1F4Co
dword_61B08C	dd ?			; DATA XREF: .text:004E120Fr
dword_61B090	dd ?			; DATA XREF: .text:loc_4E1064r
byte_61B094	db 18h dup(?)		; 0 ; DATA XREF: .text:004E272Do
dword_61B0AC	dd ?			; DATA XREF: .text:loc_4E10B0r
byte_61B0B0	db 1Ch dup(?)		; 0 ; DATA XREF: .text:004E1161o
dword_61B0CC	dd ?			; DATA XREF: .text:004E229Fw
dword_61B0D0	dd ?			; DATA XREF: .text:004E26D9w
dword_61B0D4	dd ?			; DATA XREF: .text:loc_4E17EFr
; System::TObject *dword_61B0D8
dword_61B0D8	dd ?			; DATA XREF: .text:loc_4E17F6r
dword_61B0DC	dd ? 
dword_61B0E0	dd ?			; DATA XREF: .text:004E26E5o
dword_61B0E4		dd ?
dword_61B0E8	dd ?			; DATA XREF: .text:004E4E57r
dword_61B0EC		dd ?
dword_61B0F0	dd 7 dup(?)		; 0 ; DATA XREF: .text:004E54B1r
dword_61B10C	dd ?			; DATA XREF: .text:004E6B3Dw
dword_61B110		dd ?
dword_61B114	dd ?			; DATA XREF: .text:004E6B33w
dword_61B118	dd ?			; DATA XREF: .text:004E6B29w
dword_61B11C		dd ?
dword_61B120	dd ?			; DATA XREF: .text:004E576Dr
dword_61B124	dd ?			; DATA XREF: .text:004E57FEo
; LPCVOID lpAddress
lpAddress	dd ?			; DATA XREF: .text:004E578Br
dword_61B12C	dd ?			; DATA XREF: .text:004E6A96w
byte_61B130	db    ?			; DATA XREF: .text:004E582Dr
byte_61B131	db    ?			; DATA XREF: .text:004E40F3r
byte_61B132	db    ?			; DATA XREF: .text:004E2E8Cr
byte_61B133	db    ?			; DATA XREF: .text:004E6AA2w
byte_61B134	db    ?			; DATA XREF: .text:004E6AA9w
byte_61B135	db    ?			; DATA XREF: .text:loc_4E2C2Cw
		db    ?
		db    ?	;
byte_61B138	db 1CCh	dup(?)		; 0 ; DATA XREF: .text:loc_4E2DCAo
byte_61B304	db 1CCh	dup(?)		; 0 ; DATA XREF: .text:loc_4E2FB3o
dword_61B4D0	dd ?			; DATA XREF: .text:004E5F86r
dword_61B4D4	dd ?			; DATA XREF: .text:004E6078r
dword_61B4D8	dd ?			; DATA XREF: .text:004E600Cr
word_61B4DC	dw 8 dup(?)		; 0 ; DATA XREF: .text:004E6A46o
word_61B4EC	dw 8 dup(?)		; 0 ; DATA XREF: .text:004E6A3Co
word_61B4FC	dw 4 dup(?)		; 0 ; DATA XREF: .text:004E6A32o
dword_61B504	dd ?			; DATA XREF: .text:004E6ACBw
		dd ?
dword_61B50C	dd ?			; DATA XREF: .text:loc_4E4340w
dword_61B510	dd ?			; DATA XREF: .text:004E4356w
dword_61B514	dd ?			; DATA XREF: .text:004E6A11w
byte_61B518	db    ?			; DATA XREF: .text:004E4166w
		db    ?
		db    ?	;
		db    ?	;
dword_61B51C	dd ?			; DATA XREF: .text:004E3D39w
; struct _RTL_CRITICAL_SECTION CriticalSection
CriticalSection	_RTL_CRITICAL_SECTION <> ; DATA XREF: .text:004E40E9o
; HLOCAL dword_61B538
dword_61B538	dd ?			; DATA XREF: .text:loc_4E3A6Fr
dword_61B53C	dd ?			; DATA XREF: .text:004E3A4Eo
dword_61B540	dd ?			; DATA XREF: .text:004E3C2Eo
		dd ?
		dd ?
		dd ?
byte_61B550	db 10h dup(?)		; 0 ; DATA XREF: .text:004E3EA3o
dword_61B560	dd ?			; DATA XREF: .text:004E4157o
dword_61B564	dd ?			; DATA XREF: .text:loc_4E46C8r
		dd ?
dword_61B56C	dd ?			; DATA XREF: .text:004E4161w
dword_61B570	dd ?			; DATA XREF: .text:unknown_libname_54r
dword_61B574	dd ?			; DATA XREF: .text:004E457Ar
; HLOCAL hMem
hMem		dd ?			; DATA XREF: .text:004E4130w
dword_61B57C	dd ?			; DATA XREF: .text:004E411Ao
		dd ?
		dd ?
		dd ?
dword_61B58C	dd ?			; DATA XREF: .text:004E56D6o
dword_61B590	dd ?			; DATA XREF: .text:004E56AAr
		dd ?
		dd ?
		dd ?
dword_61B5A0	dd ?			; DATA XREF: .text:004E57C7r
dword_61B5A4	dd ?			; DATA XREF: .text:004E57C1r
		dd ?
		dd ?
		dd ?
		dd ?
dword_61B5B8	dd ?			; DATA XREF: .text:004E6BAFr
dword_61B5BC	dd ?			; DATA XREF: .text:004E6DE6w
dword_61B5C0	dd ?			; DATA XREF: .text:004E6F0Co
dword_61B5C4	dd ?			; DATA XREF: .text:004E6F11o
dword_61B5C8	dd ?			; DATA XREF: .text:004E6F07o
dword_61B5CC	dd ?			; DATA XREF: .text:004E6F2Fw
dword_61B5D0	dd ?			; DATA XREF: .text:004E6F45w
; HMODULE dword_61B5D4
dword_61B5D4	dd ?			; DATA XREF: .text:004E6E4Er
; struct _RTL_CRITICAL_SECTION stru_61B5D8
stru_61B5D8	_RTL_CRITICAL_SECTION <> ; DATA XREF: .text:004E72CAo
dword_61B5F0	dd ?			; DATA XREF: .text:004E72D4w
		db 10h dup(?)		; 0
; struct _RTL_CRITICAL_SECTION stru_61B604
stru_61B604	_RTL_CRITICAL_SECTION <> ; DATA XREF: .text:004E73F6o
dword_61B61C	dd ?			; DATA XREF: .text:004E7400w
byte_61B620	db 8 dup(?)		; 0 ; DATA XREF: .text:004E832Bo
dword_61B628	dd 103h	dup(?)		; 0 ; DATA XREF: .text:loc_4E7D07r
dword_61BA34	dd ?			; DATA XREF: .text:004E867Aw
dword_61BA38	dd ?			; DATA XREF: .text:loc_4E883Cr
dword_61BA3C	dd 33h dup(?)		; 0 ; DATA XREF: .text:loc_4E881Br
; HANDLE hFile
hFile		dd ?			; DATA XREF: .text:004E8A1Er
dword_61BB0C	dd ?			; DATA XREF: .text:004E9FAEw
dword_61BB10	dd 30h dup(?)		; 0 ; DATA XREF: .text:004E9FBAw
; LPCRITICAL_SECTION lpCriticalSection
lpCriticalSection dd ?			; DATA XREF: .text:__lock_all_handlesr
; void *block
block		dd ?			; DATA XREF: .text:__cleanup_handle_locksr
byte_61BBD8	db    ?			; DATA XREF: .text:004EA172w
		db    ?
		db    ?	;
		db    ?	;
; LPCRITICAL_SECTION dword_61BBDC
dword_61BBDC	dd ?			; DATA XREF: .text:004EB0A7o
; void *dword_61BBE0
dword_61BBE0	dd ?			; DATA XREF: .text:004EB1F0r
unk_61BBE4	db    ?	;		; DATA XREF: .text:004EF6B6o
byte_61BBE5	db    ?			; DATA XREF: .text:004EB424r
byte_61BBE6	db 102h	dup(?)		; 0 ; DATA XREF: .text:004EF70Do
dword_61BCE8	dd ?			; DATA XREF: .text:loc_4EF766w
; char byte_61BCEC[256]
byte_61BCEC	db 100h	dup(?)		; DATA XREF: .text:004EF875o
; CHAR byte_61BDEC[28]
byte_61BDEC	db 1Ch dup(?)		; DATA XREF: .text:004EF8ECo
dword_61BE08	dd ?			; DATA XREF: .text:004EFB52w
; void *dword_61BE0C
dword_61BE0C	dd ?			; DATA XREF: .text:004F0094w
dword_61BE10	dd ?			; DATA XREF: .text:004F008Aw
; void *dword_61BE14
dword_61BE14	dd ?			; DATA XREF: .text:004F00A9w
; void *dword_61BE18
dword_61BE18	dd ?			; DATA XREF: .text:004F0261w
; void *dword_61BE1C
dword_61BE1C	dd ?			; DATA XREF: .text:004F0463w
; void *dword_61BE20
dword_61BE20	dd ?			; DATA XREF: .text:loc_4F0670r
; char *dword_61BE24
dword_61BE24	dd ?			; DATA XREF: .text:loc_4F0660r
dword_61BE28	dd ?			; DATA XREF: .text:004F073Aw
dword_61BE2C	dd ?			; DATA XREF: .text:__lock_envr
; void *dword_61BE30
dword_61BE30	dd ?			; DATA XREF: .text:004EFFC0r
; wchar_t *dword_61BE34
dword_61BE34	dd ?			; DATA XREF: .text:004F083Dr
dword_61BE38	dd ?			; DATA XREF: .text:004F0921w
; LPCRITICAL_SECTION dword_61BE3C
dword_61BE3C	dd ?			; DATA XREF: .text:__wlock_envr
dword_61BE40	dd ?			; DATA XREF: .text:004F00F1w
dword_61BE44	dd ?			; DATA XREF: .text:004F00FCw
dword_61BE48	dd ?			; DATA XREF: .text:004F07FAw
dword_61BE4C	dd ?			; DATA XREF: .text:004F007Dr
; char *dword_61BE50
dword_61BE50	dd ?			; DATA XREF: .text:004F06A2r
dword_61BE54	dd ?			; DATA XREF: .text:004F008Fw
dword_61BE58	dd ?			; DATA XREF: .text:004F0E9Fo
		dd ?
dword_61BE60	dd ?			; DATA XREF: .text:__exit_exceptr
; wchar_t *dword_61BE64
dword_61BE64	dd ?			; DATA XREF: .text:004F087Er
		dd ?
; LPCRITICAL_SECTION dword_61BE6C
dword_61BE6C	dd ?			; DATA XREF: .text:__lock_exitr
		dd ?
dword_61BE74	dd ?			; DATA XREF: .text:004F09EFw
dword_61BE78	dd ?			; DATA XREF: .text:004F0E90o
dword_61BE7C	dd ?			; DATA XREF: .text:004F0F62w
		dd ?
; void *dword_61BE84
dword_61BE84	dd ?			; DATA XREF: .text:004F11E5r
; LPCRITICAL_SECTION dword_61BE88
dword_61BE88	dd ?			; DATA XREF: .text:004F11D9r
; struct _RTL_CRITICAL_SECTION stru_61BE8C
stru_61BE8C	_RTL_CRITICAL_SECTION 200h dup(<>) ; DATA XREF: .text:004F137Bo
dword_61EE8C	dd ?			; DATA XREF: .text:004F1385r
dword_61EE90	dd ?			; DATA XREF: .text:loc_4F1F71r
dword_61EE94	dd ?			; DATA XREF: .text:loc_4E885Dr
dword_61EE98	dd ?			; DATA XREF: .text:004F27B8w
dword_61EE9C	dd 59h dup(?)		; 0 ; DATA XREF: .text:004F2E19w
_data		ends

OPTION DOTNAME
.tls		segment	para public 'DATA' use32
	TLS_Start	label byte 
				db 0B4h	dup(0)		
	TLS_End		label byte
align 4
	TlsCallBack     dd 0
public _tls_used
_tls_used IMAGE_TLS_DIRECTORY <offset TLS_Start, offset TLS_End, TlsIndex, offset TlsCallBack, 0, 0>


.tls		ends
OPTION NODOTNAME

