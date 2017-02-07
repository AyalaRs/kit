.code

; int __stdcall	WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nShowCmd)
public WinMain
WinMain:				; DATA XREF: .data:004F61B0o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFF304h
		xor	eax, eax
		mov	VersionInformation.dwOSVersionInfoSize,	94h
		mov	VersionInformation.dwPlatformId, eax
		push	ebx
		push	esi
		push	edi
		push	offset VersionInformation ; lpVersionInformation
		lea	edi, [ebp-0D0h]
		mov	esi, offset color
		mov	ebx, offset aS____________ ; "%s"
		call	GetVersionExA
		cmp	VersionInformation.dwPlatformId, 2
		jz	short loc_40D68A
		cmp	VersionInformation.dwMajorVersion, 4
		jb	short loc_40D696
		cmp	VersionInformation.dwMinorVersion, 5Ah
		jb	short loc_40D696

loc_40D68A:				; CODE XREF: .text:0040D676j
		mov	g_IsWinxp, 1
		jmp	short loc_40D69E
; ---------------------------------------------------------------------------

loc_40D696:				; CODE XREF: .text:0040D67Fj
					; .text:0040D688j
		xor	edx, edx
		mov	g_IsWinxp, edx

loc_40D69E:				; CODE XREF: .text:0040D694j
		cmp	VersionInformation.dwPlatformId, 1
		jnz	short loc_40D6B7
		call	loc_409760
		test	eax, eax
		jz	short loc_40D6B7
		xor	eax, eax
		jmp	loc_410911
; ---------------------------------------------------------------------------

loc_40D6B7:				; CODE XREF: .text:0040D6A5j
					; .text:0040D6AEj
		push	104h		; nSize
		push	offset ollyfile	; lpFilename
		push	0		; hModule
		call	GetModuleFileNameW
		push	0		; ext
		lea	edx, [ebp-8D0h]
		push	edx		; _name
		lea	ecx, [ebp-6D0h]
		push	ecx		; dir
		lea	eax, [ebp-34h]
		push	eax		; drive
		push	offset ollyfile	; path
		call	__wfnsplit
		add	esp, 14h
		lea	edx, [ebp-6D0h]
		lea	ecx, [ebp-34h]
		push	0		; ext
		push	0		; _name
		push	edx		; dir
		push	ecx		; drive
		push	offset ollydir	; path
		call	__wfnmerge
		add	esp, 14h
		push	offset ollydir	; s
		call	_wcslen
		pop	ecx
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jle	short loc_40D734
		mov	eax, [ebp-8]
		cmp	(ollyfile+206h)[eax*2],	5Ch
		jnz	short loc_40D734
		mov	edx, [ebp-8]
		mov	(ollyfile+206h)[edx*2],	0

loc_40D734:				; CODE XREF: .text:0040D717j
					; .text:0040D725j
		lea	ecx, a_ini
		lea	eax, [ebp-8D0h]
		push	ecx		; ext
		push	eax		; _name
		lea	edx, [ebp-6D0h]
		lea	ecx, [ebp-34h]
		push	edx		; dir
		push	ecx		; drive
		push	offset FileName	; path
		call	__wfnmerge
		add	esp, 14h
		lea	eax, aSelectLanguageUsedByOllydb
		push	eax		; s2
		lea	edx, [ebp-8D0h]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_40D78C
		lea	ecx, aSelectLanguageUsedByOllydb
		push	ecx		; src
		push	18h		; n
		push	offset ClassName ; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	short loc_40D7A2
; ---------------------------------------------------------------------------

loc_40D78C:				; CODE XREF: .text:0040D772j
		lea	eax, [ebp-8D0h]
		push	eax		; src
		push	18h		; n
		push	offset ClassName ; dest
		call	StrcopyW
		add	esp, 0Ch

loc_40D7A2:				; CODE XREF: .text:0040D78Aj
		push	offset ClassName ; src
		push	18h		; n
		push	offset ottable	; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-8], eax
		lea	edx, a_odwin
		push	edx		; src
		mov	ecx, 20h
		sub	ecx, [ebp-8]
		push	ecx		; n
		mov	eax, [ebp-8]
		add	eax, eax
		add	eax, offset ottable
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset ClassName ; src
		push	18h		; n
		push	offset word_5D5448 ; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-8], eax
		lea	edx, a_odmdi
		push	edx		; src
		mov	ecx, 20h
		sub	ecx, [ebp-8]
		push	ecx		; n
		mov	eax, [ebp-8]
		add	eax, eax
		add	eax, offset word_5D5448
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset ClassName ; src
		push	18h		; n
		push	offset word_5D5488 ; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-8], eax
		lea	edx, a_odtab
		push	edx		; src
		mov	ecx, 20h
		sub	ecx, [ebp-8]
		push	ecx		; n
		mov	eax, [ebp-8]
		add	eax, eax
		add	eax, offset word_5D5488
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		push	offset ClassName ; src
		push	18h		; n
		push	offset word_5D54C8 ; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-8], eax
		lea	edx, a_odfrm
		push	edx		; src
		mov	ecx, 20h
		sub	ecx, [ebp-8]
		push	ecx		; n
		mov	eax, [ebp-8]
		add	eax, eax
		add	eax, offset word_5D54C8
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		call	GetCurrentProcessId
		shl	eax, 10h
		push	eax
		call	GetTickCount
		pop	edx
		xor	edx, eax
		mov	g_cookie, edx
		call	GetCommandLineW
		mov	[ebp-38h], eax
		xor	ecx, ecx
		mov	[ebp-0Ch], ecx
		lea	eax, [ebp-0Ch]
		push	eax		; pNumArgs
		mov	edx, [ebp-38h]
		push	edx		; lpCmdLine
		call	CommandLineToArgvW
		mov	[ebp-3Ch], eax
		cmp	dword ptr [ebp-3Ch], 0
		jz	short loc_40D90E
		cmp	dword ptr [ebp-0Ch], 1
		jle	short loc_40D90E
		lea	ecx, aService
		push	ecx		; s2
		mov	eax, [ebp-3Ch]
		mov	edx, [eax+4]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_40D90E
		mov	dword_57DD2C, 1
		xor	ecx, ecx
		mov	dwProcessId, ecx
		xor	eax, eax
		mov	hEvent,	eax
		xor	edx, edx
		mov	ischild, edx
		jmp	loc_40DA90
; ---------------------------------------------------------------------------

loc_40D90E:				; CODE XREF: .text:0040D8C6j
					; .text:0040D8CCj ...
		cmp	dword ptr [ebp-3Ch], 0
		jz	short loc_40D962
		cmp	dword ptr [ebp-0Ch], 2
		jle	short loc_40D962
		lea	ecx, aP_10
		push	ecx		; s2
		mov	eax, [ebp-3Ch]
		mov	edx, [eax+4]
		push	edx		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_40D962
		mov	eax, [ebp-3Ch]
		xor	ecx, ecx
		mov	dword_57DD2C, ecx
		mov	edx, [eax+8]
		push	edx		; s
		call	__wtol
		pop	ecx
		mov	dwProcessId, eax
		xor	ecx, ecx
		mov	hEvent,	ecx
		xor	eax, eax
		mov	ischild, eax
		jmp	loc_40DA90
; ---------------------------------------------------------------------------

loc_40D962:				; CODE XREF: .text:0040D912j
					; .text:0040D918j ...
		cmp	dword ptr [ebp-3Ch], 0
		jz	loc_40DA1C
		cmp	dword ptr [ebp-0Ch], 2
		jle	loc_40DA1C
		lea	edx, aAttach_0
		push	edx		; s2
		mov	ecx, [ebp-3Ch]
		mov	eax, [ecx+4]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	loc_40DA1C
		mov	ecx, [ebp-3Ch]
		xor	edx, edx
		mov	dword_57DD2C, edx
		mov	eax, [ecx+8]
		push	eax		; s
		call	__wtol
		pop	ecx
		mov	dwProcessId, eax
		mov	ecx, [ebp-3Ch]
		xor	edx, edx
		mov	hEvent,	edx
		mov	eax, [ecx+0Ch]
		push	eax		; s
		call	__wtol
		pop	ecx
		mov	ischild, eax
		cmp	ischild, 0
		jg	short loc_40D9DB
		mov	ischild, 1

loc_40D9DB:				; CODE XREF: .text:0040D9CFj
		cmp	ischild, 1
		jnz	short loc_40D9FF
		lea	edx, aChild
		push	edx		; src
		push	20h		; n
		push	offset ClassName ; dest
		call	StrcopyW
		add	esp, 0Ch
		jmp	loc_40DA90
; ---------------------------------------------------------------------------

loc_40D9FF:				; CODE XREF: .text:0040D9E2j
		mov	ecx, ischild
		lea	eax, aChild_I
		push	ecx
		push	eax		; format
		push	offset ClassName ; buffer
		call	_swprintf
		add	esp, 0Ch
		jmp	short loc_40DA90
; ---------------------------------------------------------------------------

loc_40DA1C:				; CODE XREF: .text:0040D966j
					; .text:0040D970j ...
		cmp	dword ptr [ebp-0Ch], 3
		jle	short loc_40DA71
		lea	edx, aAedebug
		push	edx		; s2
		mov	ecx, [ebp-3Ch]
		mov	eax, [ecx+4]
		push	eax		; s1
		call	__wcsicmp
		add	esp, 8
		test	eax, eax
		jnz	short loc_40DA71
		mov	ecx, [ebp-3Ch]
		xor	edx, edx
		mov	dword_57DD2C, edx
		mov	eax, [ecx+8]
		push	eax		; s
		call	__wtol
		mov	edx, [ebp-3Ch]
		pop	ecx
		mov	dwProcessId, eax
		mov	ecx, [edx+0Ch]
		push	ecx		; s
		call	__wtol
		pop	ecx
		mov	hEvent,	eax
		xor	eax, eax
		mov	ischild, eax
		jmp	short loc_40DA90
; ---------------------------------------------------------------------------

loc_40DA71:				; CODE XREF: .text:0040DA20j
					; .text:0040DA3Aj
		xor	edx, edx
		mov	dword_57DD2C, edx
		xor	ecx, ecx
		mov	dwProcessId, ecx
		xor	eax, eax
		mov	hEvent,	eax
		xor	edx, edx
		mov	ischild, edx

loc_40DA90:				; CODE XREF: .text:0040D909j
					; .text:0040D95Dj ...
		mov	ecx, [ebp+8]
		mov	g_hInstance, ecx
		call	GetCurrentProcess
		mov	hTargetProcessHandle, eax
		push	104h		; uSize
		push	offset systemdir ; lpBuffer
		call	GetSystemDirectoryW
		mov	dword_57FE30, eax
		cmp	dword_57FE30, 0
		jle	short loc_40DAF6
		mov	eax, dword_57FE30
		cmp	(FileName+206h)[eax*2],	5Ch
		jz	short loc_40DAF6
		mov	edx, dword_57FE30
		mov	systemdir[edx*2], 5Ch
		inc	dword_57FE30
		mov	ecx, dword_57FE30
		mov	systemdir[ecx*2], 0

loc_40DAF6:				; CODE XREF: .text:0040DABEj
					; .text:0040DACEj
		call	loc_410FE3
		mov	cpufeatures, eax
		test	byte ptr cpufeatures+3,	6
		jz	short loc_40DB1E
		cmp	VersionInformation.dwPlatformId, 2
		jnz	short loc_40DB1E
		mov	dword_5CBBC4, 1
		jmp	short loc_40DB25
; ---------------------------------------------------------------------------

loc_40DB1E:				; CODE XREF: .text:0040DB07j
					; .text:0040DB10j
		xor	eax, eax
		mov	dword_5CBBC4, eax

loc_40DB25:				; CODE XREF: .text:0040DB1Cj
		invoke LoadLibraryW,$CTW0("NTDLL.dll")
		mov	g_NTDLL, eax
		cmp	g_NTDLL, 0
		jnz	short loc_40DB81
		xor	ecx, ecx
		mov	_imp__NtQuerySystemInformation,	ecx
		xor	eax, eax
		mov	_imp__NtQueryInformationProcess, eax
		xor	edx, edx
		mov	_imp__NtQueryInformationFile, edx
		xor	ecx, ecx
		mov	_imp__NtQueryKey, ecx
		xor	eax, eax
		mov	_imp__NtQueryObject, eax
		xor	edx, edx
		mov	_imp__NtDuplicateObject, edx
		xor	ecx, ecx
		mov	_imp__NtQuerySemaphore,	ecx
		xor	eax, eax
		mov	_imp__NtSystemDebugControl, eax
		jmp	loc_40DC3F
; ---------------------------------------------------------------------------

loc_40DB81:				; CODE XREF: .text:0040DB3Dj
		invoke GetProcAddress,g_NTDLL,$CTA0("NtQuerySystemInformation")
		mov	_imp__NtQuerySystemInformation,	eax
		invoke GetProcAddress,g_NTDLL,$CTA0("NtQueryInformationProcess")
		mov	_imp__NtQueryInformationProcess, eax
		invoke GetProcAddress,g_NTDLL,$CTA0("NtQueryInformationFile")
		mov	_imp__NtQueryInformationFile, eax
		invoke GetProcAddress,g_NTDLL,$CTA0("NtQueryKey")
		mov	_imp__NtQueryKey, eax
		invoke GetProcAddress,g_NTDLL,$CTA0("NtQueryObject")
		mov	_imp__NtQueryObject, eax
		invoke GetProcAddress,g_NTDLL,$CTA0("NtDuplicateObject")
		mov	_imp__NtDuplicateObject, eax
		invoke GetProcAddress,g_NTDLL,$CTA0("NtQuerySemaphore")
		mov	_imp__NtQuerySemaphore,	eax
		invoke GetProcAddress,g_NTDLL,$CTA0("NtSystemDebugControl")
		mov	_imp__NtSystemDebugControl, eax

loc_40DC3F:				; CODE XREF: .text:0040DB7Cj
		invoke LoadLibraryW,$CTW0("KERNEL32.dll")
		mov	g_KERNEL32, eax
		cmp	g_KERNEL32, 0
		jnz	short loc_40DC7F
		push	2010h		; uType
		push	offset ClassName ; lpCaption
		lea	eax, $CTW0("Unable to load KERNEL32.DLL")
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; lpText
		push	0		; hWnd
		call	MessageBoxW
		xor	eax, eax
		jmp	loc_410911
; ---------------------------------------------------------------------------

loc_40DC7F:				; CODE XREF: .text:0040DC57j
		invoke GetProcAddress,g_KERNEL32,$CTA0("GetThreadTimes")
		mov	_imp__GetThreadTimes, eax
		invoke GetProcAddress,g_KERNEL32,$CTA0("CreateToolhelp32Snapshot")
		mov	_imp__CreateToolhelp32Snapshot,	eax
		invoke GetProcAddress,g_KERNEL32,$CTA0("Module32First")
		mov	_imp__Module32First, eax
		invoke GetProcAddress,g_KERNEL32,$CTA0("Module32Next")
		mov	_imp__Module32Next, eax
		invoke GetProcAddress,g_KERNEL32,$CTA0("Process32First")
		mov	_imp__Process32First, eax
		invoke GetProcAddress,g_KERNEL32,$CTA0("Process32Next")
		mov	_imp__Process32Next, eax
		invoke GetProcAddress,g_KERNEL32,$CTA0("Thread32First")
		mov	_imp__Thread32First, eax
		invoke GetProcAddress,g_KERNEL32,$CTA0("Thread32Next")
		mov	_imp__Thread32Next, eax
		invoke GetProcAddress,g_KERNEL32,$CTA0("QueryDosDeviceW")
		mov	_imp__QueryDosDeviceW, eax
		invoke GetProcAddress,g_KERNEL32,$CTA0("DebugBreakProcess")
		mov	_imp__DebugBreakProcess, eax
		invoke GetProcAddress,g_KERNEL32,$CTA0("DebugActiveProcessStop")
		mov	_imp__DebugActiveProcessStop, eax
		invoke GetProcAddress,g_KERNEL32,$CTA0("GetProcessAffinityMask")
		mov	_imp__GetProcessAffinityMask, eax
		invoke GetProcAddress,g_KERNEL32,$CTA0("SetProcessAffinityMask")
		mov	_imp__SetProcessAffinityMask, eax
		invoke GetProcAddress,g_KERNEL32,$CTA0("GetCPInfoExW")
		mov	_imp__GetCPInfoExW, eax
		invoke GetProcAddress,g_KERNEL32,$CTA0("BackupRead")
		mov	_imp__BackupRead, eax
		invoke GetProcAddress,g_KERNEL32,$CTA0("BackupSeek")
		mov	_imp__BackupSeek, eax
		invoke GetProcAddress,g_KERNEL32,$CTA0("GetDiskFreeSpaceExW")
		mov	_imp__GetDiskFreeSpaceExW, eax
		invoke GetProcAddress,g_KERNEL32,$CTA0("GetEnabledXStateFeatures")
		mov	_imp__GetEnabledXStateFeatures,	eax
		
		invoke LoadLibraryW,$CTW0("USER32.dll")
		mov	g_USER32, eax
		cmp	g_USER32, 0
		jnz	short loc_40DE64
		xor	ecx, ecx
		mov	_imp__GetComboBoxInfo, ecx
		xor	eax, eax
		mov	_imp__MonitorFromWindow, eax
		xor	edx, edx
		mov	_imp__MonitorFromPoint,	edx
		xor	ecx, ecx
		mov	_imp__GetMonitorInfoW, ecx
		jmp	short loc_40DEC3
; ---------------------------------------------------------------------------

loc_40DE64:				; CODE XREF: .text:0040DE41j
		invoke GetProcAddress,g_USER32,$CTA0("GetComboBoxInfo")
		mov	_imp__GetComboBoxInfo, eax
		invoke GetProcAddress,g_USER32,$CTA0("MonitorFromWindow")
		mov	_imp__MonitorFromWindow, eax
		invoke GetProcAddress,g_USER32,$CTA0("MonitorFromPoint")
		mov	_imp__MonitorFromPoint,	eax
		invoke GetProcAddress,g_USER32,$CTA0("GetMonitorInfoW")
		mov	_imp__GetMonitorInfoW, eax

loc_40DEC3:				; CODE XREF: .text:0040DE62j
		invoke LoadLibraryW,$CTW0("COMCTL32.dll")
		mov	g_COMCTL32, eax
		cmp	g_COMCTL32, 0
		jnz	short loc_40DEE6
		xor	eax, eax
		mov	_imp__InitCommonControlsEx, eax
		jmp	short loc_40DEFE
; ---------------------------------------------------------------------------

loc_40DEE6:				; CODE XREF: .text:0040DEDBj
		invoke GetProcAddress,g_COMCTL32,$CTA0("InitCommonControlsEx")
		mov	_imp__InitCommonControlsEx, eax

loc_40DEFE:				; CODE XREF: .text:0040DEE4j
		invoke LoadLibraryW,$CTW0("ADVAPI32.dll")
		mov	g_ADVAPI32, eax
		cmp	g_ADVAPI32, 0
		jnz	short loc_40DF22
		xor	edx, edx
		mov	_imp__IsTextUnicode, edx
		jmp	short loc_40DF39
; ---------------------------------------------------------------------------

loc_40DF22:				; CODE XREF: .text:0040DF16j
		invoke GetProcAddress,g_ADVAPI32,$CTA0("IsTextUnicode")
		mov	_imp__IsTextUnicode, eax

loc_40DF39:				; CODE XREF: .text:0040DF20j
		invoke LoadLibraryW,$CTW0("SHELL32.dll")
		mov	g_SHELL32, eax
		cmp	g_SHELL32, 0
		jnz	short loc_40DF6C
		xor	ecx, ecx
		mov	_imp__SHGetMalloc, ecx
		xor	eax, eax
		mov	_imp__SHBrowseForFolderW, eax
		xor	edx, edx
		mov	_imp__SHGetPathFromIDListW, edx
		jmp	short loc_40DFB3
; ---------------------------------------------------------------------------

loc_40DF6C:				; CODE XREF: .text:0040DF51j
		invoke GetProcAddress,g_SHELL32,$CTA0("SHGetMalloc")
		mov	_imp__SHGetMalloc, eax
		invoke GetProcAddress,g_SHELL32,$CTA0("SHBrowseForFolderW")
		mov	_imp__SHBrowseForFolderW, eax
		invoke GetProcAddress,g_SHELL32,$CTA0("SHGetPathFromIDListW")
		mov	_imp__SHGetPathFromIDListW, eax

loc_40DFB3:				; CODE XREF: .text:0040DF6Aj
		invoke LoadLibraryW,$CTW0("SHLWAPI.dll")
		mov	g_SHLWAPI, eax
		cmp	g_SHLWAPI, 0
		jnz	short loc_40E017
		xor	eax, eax
		mov	_imp__PathCanonicalizeW, eax
		xor	edx, edx
		mov	_imp__PathIsDirectoryW,	edx
		xor	ecx, ecx
		mov	_imp__PathFileExistsW, ecx
		xor	eax, eax
		mov	_imp__PathRelativePathToW, eax
		xor	edx, edx
		mov	_imp__PathRemoveArgsW, edx
		xor	ecx, ecx
		mov	_imp__PathGetArgsW, ecx
		xor	eax, eax
		mov	_imp__PathUnquoteSpacesW, eax
		xor	edx, edx
		mov	_imp__PathFindFileNameW, edx
		xor	ecx, ecx
		mov	_imp__PathCompactPathExW, ecx
		jmp	loc_40E0EC
; ---------------------------------------------------------------------------

loc_40E017:				; CODE XREF: .text:0040DFCBj
		invoke GetProcAddress,g_SHLWAPI,$CTA0("PathCanonicalizeW")
		mov	_imp__PathCanonicalizeW, eax
		invoke GetProcAddress,g_SHLWAPI,$CTA0("PathIsDirectoryW")
		mov	_imp__PathIsDirectoryW,	eax
		invoke GetProcAddress,g_SHLWAPI,$CTA0("PathFileExistsW")
		mov	_imp__PathFileExistsW, eax
		invoke GetProcAddress,g_SHLWAPI,$CTA0("PathRelativePathToW")
		mov	_imp__PathRelativePathToW, eax
		invoke GetProcAddress,g_SHLWAPI,$CTA0("PathRemoveArgsW")
		mov	_imp__PathRemoveArgsW, eax
		invoke GetProcAddress,g_SHLWAPI,$CTA0("PathGetArgsW")
		mov	_imp__PathGetArgsW, eax
		invoke GetProcAddress,g_SHLWAPI,$CTA0("PathUnquoteSpacesW")
		mov	_imp__PathUnquoteSpacesW, eax
		invoke GetProcAddress,g_SHLWAPI,$CTA0("PathFindFileNameW")
		mov	_imp__PathFindFileNameW, eax
		invoke GetProcAddress,g_SHLWAPI,$CTA0("PathCompactPathExW")
		mov	_imp__PathCompactPathExW, eax

loc_40E0EC:				; CODE XREF: .text:0040E012j
		cmp	VersionInformation.dwPlatformId, 2
		jnz	short loc_40E13E
		invoke LoadLibraryW,$CTW0("PSAPI.dll")
		mov	g_PSAPI, eax
		cmp	g_PSAPI, 0
		jnz	short loc_40E146
		push	2024h		; uType
		push	offset ClassName ; lpCaption
		lea	edx, offset aPsapi_dllIsNot
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; lpText
		push	0		; hWnd
		call	MessageBoxW
		mov	[ebp-4], eax
		cmp	dword ptr [ebp-4], 6
		jz	short loc_40E146
		xor	eax, eax
		jmp	loc_410911
; ---------------------------------------------------------------------------

loc_40E13E:				; CODE XREF: .text:0040E0F3j
		xor	edx, edx
		mov	g_PSAPI, edx

loc_40E146:				; CODE XREF: .text:0040E10Dj
					; .text:0040E135j
		cmp	g_PSAPI, 0
		jnz	short loc_40E177
		xor	ecx, ecx
		mov	_imp__EnumProcesses, ecx
		xor	eax, eax
		mov	_imp__EnumProcessModules, eax
		xor	edx, edx
		mov	_imp__GetModuleFileNameExW, edx
		xor	ecx, ecx
		mov	_imp__GetModuleInformation, ecx
		xor	eax, eax
		mov	_imp__GetMappedFileNameW, eax
		jmp	short loc_40E1EE
; ---------------------------------------------------------------------------

loc_40E177:				; CODE XREF: .text:0040E14Dj
		invoke GetProcAddress,g_PSAPI,$CTA0("EnumProcesses")
		mov	_imp__EnumProcesses, eax
		invoke GetProcAddress,g_PSAPI,$CTA0("EnumProcessModules")
		mov	_imp__EnumProcessModules, eax
		invoke GetProcAddress,g_PSAPI,$CTA0("GetModuleFileNameExW")
		mov	_imp__GetModuleFileNameExW, eax
		invoke GetProcAddress,g_PSAPI,$CTA0("GetModuleInformation")
		mov	_imp__GetModuleInformation, eax
		invoke GetProcAddress,g_PSAPI,$CTA0("GetMappedFileNameW")
		mov	_imp__GetMappedFileNameW, eax

loc_40E1EE:				; CODE XREF: .text:0040E175j
		invoke LoadLibraryW,$CTW0("IMAGEHLP.dll")
		mov	g_IMAGEHLP, eax
		cmp	g_IMAGEHLP, 0
		jnz	short loc_40E211
		xor	eax, eax
		mov	_imp__UnDecorateSymbolName, eax
		jmp	short loc_40E229
; ---------------------------------------------------------------------------

loc_40E211:				; CODE XREF: .text:0040E206j
		invoke GetProcAddress,g_IMAGEHLP,$CTA0("UnDecorateSymbolName")
		mov	_imp__UnDecorateSymbolName, eax

loc_40E229:				; CODE XREF: .text:0040E20Fj
		invoke LoadLibraryW,$CTW0("RICHED20.dll")
		mov	g_RICHED20, eax
		
		invoke LoadLibraryW,$CTW0("MSCOREE.dll")
		mov	g_MSCOREE, eax
		cmp	g_MSCOREE, 0
		jnz	short loc_40E26D
		xor	ecx, ecx
		mov	_imp__CreateDebuggingInterfaceFromVersion, ecx
		xor	eax, eax
		mov	_imp__GetRequestedRuntimeVersion, eax
		xor	edx, edx
		mov	_imp__GetVersionFromProcess, edx
		jmp	short loc_40E2B4
; ---------------------------------------------------------------------------

loc_40E26D:				; CODE XREF: .text:0040E252j
		invoke GetProcAddress,g_MSCOREE,$CTA0("CreateDebuggingInterfaceFromVersion")
		mov	_imp__CreateDebuggingInterfaceFromVersion, eax
		invoke GetProcAddress,g_MSCOREE,$CTA0("GetRequestedRuntimeVersion")
		mov	_imp__GetRequestedRuntimeVersion, eax
		invoke GetProcAddress,g_MSCOREE,$CTA0("GetVersionFromProcess")
		mov	_imp__GetVersionFromProcess, eax

loc_40E2B4:				; CODE XREF: .text:0040E26Bj
		call	loc_483A08
		cmp	_imp__GetProcessAffinityMask, 0
		jz	short loc_40E2DA
		push	offset _SystemAffinityMask ; _DWORD
		push	offset _ProcessAffinityMask ; _DWORD
		call	GetCurrentProcess
		push	eax		; _DWORD
		call	_imp__GetProcessAffinityMask
		jmp	short loc_40E2EB
; ---------------------------------------------------------------------------

loc_40E2DA:				; CODE XREF: .text:0040E2C0j
		mov	ecx, 1
		mov	_SystemAffinityMask, ecx
		mov	_ProcessAffinityMask, ecx
		

loc_40E2EB:				; CODE XREF: .text:0040E2D8j
		call	loc_4DEA64
		push	0
		call	loc_40D26C
		pop	ecx
		mov	eax, g_ToolbarStatus
		mov	dword_57FE58, eax
		mov	edx, dword_57FE64
		mov	dword_57FE68, edx
		xor	eax, eax
		mov	dword_5D85D8, eax
		xor	edx, edx
		mov	dword_5D85DC, edx
		xor	ecx, ecx
		mov	run.status, ecx
		call	loc_402A44
		lea	eax, aDosapp_fon
		push	eax		; LPCWSTR
		call	AddFontResourceW
		call	GetDesktopWindow
		push	eax		; hWnd
		call	GetDC
		mov	[ebp-48h], eax
		push	0		; LPARAM
		lea	ecx, aLucidaConsole
		push	offset FONTENUMPROCW ; FONTENUMPROCW
		push	ecx		; LPCWSTR
		xor	edx, edx
		mov	eax, [ebp-48h]
		mov	dword_5D7BC0, edx
		push	eax		; HDC
		call	EnumFontFamiliesW
		push	0		; LPARAM
		lea	ecx, aMsSansSerif
		push	offset FONTENUMPROCW_0 ; FONTENUMPROCW
		push	ecx		; LPCWSTR
		mov	eax, [ebp-48h]
		xor	edx, edx
		mov	dword_5D7BC4, edx
		push	eax		; HDC
		call	EnumFontFamiliesW
		xor	edx, edx
		mov	[ebp-4], edx
		mov	dword ptr [ebp-8Ch], offset tmpfont.logfont.lfEscapement

loc_40E391:				; CODE XREF: .text:0040E440j
		mov	ecx, [ebp-8Ch]
		xor	eax, eax
		mov	[ecx], eax
		mov	edx, [ebp-8Ch]
		xor	ecx, ecx
		mov	[edx+4], ecx
		mov	eax, [ebp-8Ch]
		mov	byte ptr [eax+0Ch], 0
		mov	edx, [ebp-8Ch]
		mov	byte ptr [edx+0Dh], 0
		mov	ecx, [ebp-8Ch]
		mov	byte ptr [ecx+0Eh], 0
		mov	eax, [ebp-8Ch]
		mov	byte ptr [eax+10h], 6
		mov	edx, [ebp-8Ch]
		mov	byte ptr [edx+11h], 0
		mov	ecx, [ebp-8Ch]
		xor	eax, eax
		mov	[ecx+54h], eax
		mov	edx, [ebp-8Ch]
		xor	ecx, ecx
		mov	[edx+5Ch], ecx
		mov	eax, [ebp-8Ch]
		mov	[eax+58h], ecx
		mov	edx, [ebp-8Ch]
		xor	eax, eax
		mov	[edx+260h], eax
		mov	edx, [ebp-8Ch]
		xor	ecx, ecx
		mov	[edx+264h], ecx
		mov	eax, [ebp-8Ch]
		xor	edx, edx
		mov	[eax+26Ch], edx
		mov	ecx, [ebp-8Ch]
		xor	eax, eax
		mov	[ecx+270h], eax
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-8Ch], 27Ch
		cmp	dword ptr [ebp-4], 8
		jl	loc_40E391
		mov	tmpfont.stockindex, 0Ah
		lea	edx, aOemFixedFont
		push	edx		; src
		push	offset tmpfont._name ; dst
		call	_wcscpy
		add	esp, 8
		mov	dword ptr tmpfont.logfont.lfFaceName+260h, 9
		mov	dword ptr tmpfont.logfont.lfFaceName+264h, 6
		mov	tmpfont.logfont.lfEscapement+284h, 2BCh
		mov	byte ptr tmpfont.logfont.lfOrientation+287h, 0FFh
		mov	byte ptr tmpfont.logfont.lfWeight+286h,	0
		mov	byte ptr tmpfont.logfont.lfWeight+287h,	1
		lea	ecx, aTerminal
		push	ecx		; src
		push	(offset	tmpfont.logfont.lfItalic+284h) ; dst
		call	_wcscpy
		add	esp, 8
		mov	tmpfont.hadjtop+27Ch, 1
		lea	eax, aTerminal6
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmpfont._name+27Ch) ; dst
		call	_wcscpy
		add	esp, 8
		mov	tmpfont.stockindex+4F8h, 10h
		lea	edx, aSystemFixedFon
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmpfont._name+4F8h) ; dst
		call	_wcscpy
		add	esp, 8
		xor	ecx, ecx
		mov	dword ptr tmpfont.logfont.lfFaceName+758h, 0Eh
		mov	dword ptr tmpfont.logfont.lfFaceName+75Ch, ecx
		mov	dword ptr tmpfont.logfont.lfFaceName+768h, 190h
		lea	eax, aCourierNew
		mov	byte ptr tmpfont.logfont.lfFaceName+76Fh, 1
		push	eax		; src
		mov	byte ptr tmpfont.logfont.lfHeight+78Eh,	2
		mov	byte ptr tmpfont.logfont.lfHeight+78Fh,	5
		push	(offset	tmpfont.logfont.lfWidth+78Ch) ;	dst
		call	_wcscpy
		add	esp, 8
		mov	tmpfont.hadjtop+774h, 0FFFFFFFEh
		lea	edx, aCourierUnicode
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmpfont._name+774h) ; dst
		call	_wcscpy
		add	esp, 8
		cmp	dword_5D7BC0, 0
		jz	short loc_40E5CC
		mov	dword ptr tmpfont.logfont.lfFaceName+9D4h, 0Ah
		mov	dword ptr tmpfont.logfont.lfFaceName+9D8h, 6
		mov	dword ptr tmpfont.logfont.lfFaceName+9E4h, 190h
		lea	ecx, aLucidaConsole
		mov	byte ptr tmpfont.logfont.lfFaceName+9EBh, 1
		push	ecx		; src
		mov	byte ptr tmpfont.logfont.lfFaceName+9EEh, 2
		mov	byte ptr tmpfont.logfont.lfFaceName+9EFh, 5
		push	(offset	tmpfont.logfont.lfFaceName+9F0h) ; dst
		call	_wcscpy
		add	esp, 8
		lea	eax, aLucidaUnicode
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmpfont._name+9F0h) ; dst
		call	_wcscpy
		add	esp, 8
		jmp	short loc_40E5F1
; ---------------------------------------------------------------------------

loc_40E5CC:				; CODE XREF: .text:0040E566j
		mov	tmpfont.stockindex+9F0h, 0Ah
		lea	edx, aFont4
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmpfont._name+9F0h) ; dst
		call	_wcscpy
		add	esp, 8

loc_40E5F1:				; CODE XREF: .text:0040E5CAj
		push	esi
		push	edi
		mov	edi, (offset tmpfont.logfont.lfFaceName+0C50h)
		mov	esi, (offset tmpfont.logfont.lfFaceName+260h)
		mov	ecx, 9Fh
		lea	eax, aFont5
		rep movsd
		pop	edi
		pop	esi
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmpfont._name+0C6Ch) ; dst
		call	_wcscpy
		add	esp, 8
		mov	ecx, 9Fh
		lea	eax, aFont6
		push	esi
		push	edi
		mov	edi, (offset tmpfont.logfont.lfFaceName+0ECCh)
		mov	esi, (offset tmpfont.logfont.lfFaceName+4DCh)
		rep movsd
		pop	edi
		pop	esi
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmpfont._name+0EE8h) ; dst
		call	_wcscpy
		add	esp, 8
		mov	ecx, 9Fh
		lea	eax, aFont7
		push	esi
		push	edi
		mov	edi, (offset tmpfont.logfont.lfFaceName+1148h)
		mov	esi, (offset tmpfont.logfont.lfFaceName+758h)
		rep movsd
		pop	edi
		pop	esi
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmpfont._name+1164h) ; dst
		call	_wcscpy
		add	esp, 8
		push	13E0h		; n
		push	offset tmpfont	; src
		push	offset font	; dest
		call	_memcpy
		add	esp, 0Ch
		xor	edx, edx
		mov	[ebp-4], edx

loc_40E69D:				; CODE XREF: .text:0040E9E6j
		mov	ecx, [ebp-4]
		push	ecx
		lea	eax, aFontDataI
		push	eax		; format
		lea	edx, [ebp-950h]
		push	edx		; buffer
		call	_swprintf
		add	esp, 0Ch
		xor	ecx, ecx
		mov	[edi+28h], ecx
		lea	eax, [edi+2Ch]
		push	eax
		lea	edx, [edi+28h]
		push	edx
		lea	ecx, [edi+24h]
		push	ecx
		lea	eax, [edi+20h]
		push	eax
		lea	edx, [edi+1Ch]
		push	edx
		lea	ecx, [edi+18h]
		push	ecx
		lea	eax, [edi+14h]
		push	eax
		lea	edx, [edi+10h]
		push	edx
		lea	ecx, [edi+0Ch]
		push	ecx
		lea	eax, [edi+8]
		push	eax
		lea	edx, [edi+4]
		push	edx
		push	edi		; arglist
		lea	ecx, aIIIIIIIIIIII	;"%i,%i,%i,%i,%i,%i,%i,%i,%i,%i,%i,%i"
		push	ecx		; format
		lea	eax, [ebp-950h]
		push	eax		; key
		lea	edx, aFonts_1
		push	edx		; section
		push	0		; file
		call	Getfromini
		add	esp, 40h
		cmp	eax, 0Ch
		jl	loc_40E9DF
		cmp	dword ptr [edi+2Ch], 0
		jz	short loc_40E727
		cmp	dword ptr [edi+2Ch], 0Ah
		jz	short loc_40E727
		cmp	dword ptr [edi+2Ch], 10h
		jnz	loc_40E9DF

loc_40E727:				; CODE XREF: .text:0040E715j
					; .text:0040E71Bj
		mov	dword ptr [ebp-5Ch], 0FFFFFFE0h
		mov	ecx, [ebp-5Ch]
		cmp	ecx, [edi]
		jle	short loc_40E73A
		lea	eax, [ebp-5Ch]
		jmp	short loc_40E73C
; ---------------------------------------------------------------------------

loc_40E73A:				; CODE XREF: .text:0040E733j
		mov	eax, edi

loc_40E73C:				; CODE XREF: .text:0040E738j
		mov	dword ptr [ebp-60h], 20h
		mov	edx, [eax]
		cmp	edx, [ebp-60h]
		jle	short loc_40E74F
		lea	ecx, [ebp-60h]
		jmp	short loc_40E751
; ---------------------------------------------------------------------------

loc_40E74F:				; CODE XREF: .text:0040E748j
		mov	ecx, eax

loc_40E751:				; CODE XREF: .text:0040E74Dj
		mov	eax, [ecx]
		mov	edx, [ebp-4]
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		mov	dword ptr font.logfont.lfHeight[edx*4],	eax
		mov	dword ptr [ebp-64h], 0FFFFFFE0h
		mov	eax, [ebp-64h]
		cmp	eax, [edi+4]
		jle	short loc_40E77B
		lea	eax, [ebp-64h]
		jmp	short loc_40E77E
; ---------------------------------------------------------------------------

loc_40E77B:				; CODE XREF: .text:0040E774j
		lea	eax, [edi+4]

loc_40E77E:				; CODE XREF: .text:0040E779j
		mov	dword ptr [ebp-68h], 20h
		mov	edx, [eax]
		cmp	edx, [ebp-68h]
		jle	short loc_40E791
		lea	ecx, [ebp-68h]
		jmp	short loc_40E793
; ---------------------------------------------------------------------------

loc_40E791:				; CODE XREF: .text:0040E78Aj
		mov	ecx, eax

loc_40E793:				; CODE XREF: .text:0040E78Fj
		mov	eax, [ecx]
		mov	edx, [ebp-4]
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		mov	font.logfont.lfWidth[edx*4], eax
		xor	edx, edx
		mov	[ebp-6Ch], edx
		mov	eax, [ebp-6Ch]
		cmp	eax, [edi+8]
		jle	short loc_40E7BB
		lea	eax, [ebp-6Ch]
		jmp	short loc_40E7BE
; ---------------------------------------------------------------------------

loc_40E7BB:				; CODE XREF: .text:0040E7B4j
		lea	eax, [edi+8]

loc_40E7BE:				; CODE XREF: .text:0040E7B9j
		mov	dword ptr [ebp-70h], 384h
		mov	edx, [eax]
		cmp	edx, [ebp-70h]
		jle	short loc_40E7D1
		lea	ecx, [ebp-70h]
		jmp	short loc_40E7D3
; ---------------------------------------------------------------------------

loc_40E7D1:				; CODE XREF: .text:0040E7CAj
		mov	ecx, eax

loc_40E7D3:				; CODE XREF: .text:0040E7CFj
		mov	eax, [ecx]
		mov	edx, [ebp-4]
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		mov	font.logfont.lfWeight[edx*4], eax
		mov	eax, [ebp-4]
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	dl, [edi+0Ch]
		mov	font.logfont.lfItalic[eax*4], dl
		mov	eax, [ebp-4]
		mov	ecx, eax
		lea	eax, [ecx+eax*4]
		shl	eax, 5
		sub	eax, ecx
		mov	dl, [edi+10h]
		mov	font.logfont.lfUnderline[eax*4], dl
		mov	eax, [ebp-4]
		mov	ecx, eax
		lea	eax, [ecx+eax*4]
		shl	eax, 5
		sub	eax, ecx
		mov	dl, [edi+14h]
		mov	font.logfont.lfStrikeOut[eax*4], dl
		mov	eax, [ebp-4]
		mov	ecx, eax
		lea	eax, [ecx+eax*4]
		shl	eax, 5
		sub	eax, ecx
		mov	dl, [edi+18h]
		mov	font.logfont.lfCharSet[eax*4], dl
		mov	eax, [ebp-4]
		mov	ecx, eax
		lea	eax, [ecx+eax*4]
		shl	eax, 5
		sub	eax, ecx
		mov	dl, [edi+1Ch]
		mov	font.logfont.lfQuality[eax*4], dl
		mov	eax, [ebp-4]
		mov	ecx, eax
		lea	eax, [ecx+eax*4]
		shl	eax, 5
		sub	eax, ecx
		mov	dl, [edi+20h]
		mov	font.logfont.lfPitchAndFamily[eax*4], dl
		mov	dword ptr [ebp-74h], 0FFFFFFFBh
		mov	eax, [ebp-74h]
		cmp	eax, [edi+24h]
		jle	short loc_40E887
		lea	eax, [ebp-74h]
		jmp	short loc_40E88A
; ---------------------------------------------------------------------------

loc_40E887:				; CODE XREF: .text:0040E880j
		lea	eax, [edi+24h]

loc_40E88A:				; CODE XREF: .text:0040E885j
		mov	dword ptr [ebp-78h], 5
		mov	edx, [eax]
		cmp	edx, [ebp-78h]
		jle	short loc_40E89D
		lea	ecx, [ebp-78h]
		jmp	short loc_40E89F
; ---------------------------------------------------------------------------

loc_40E89D:				; CODE XREF: .text:0040E896j
		mov	ecx, eax

loc_40E89F:				; CODE XREF: .text:0040E89Bj
		mov	eax, [ecx]
		mov	edx, [ebp-4]
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		mov	font.hadjtop[edx*4], eax
		mov	dword ptr [ebp-7Ch], 0FFFFFFFBh
		mov	eax, [ebp-7Ch]
		cmp	eax, [edi+28h]
		jle	short loc_40E8C9
		lea	eax, [ebp-7Ch]
		jmp	short loc_40E8CC
; ---------------------------------------------------------------------------

loc_40E8C9:				; CODE XREF: .text:0040E8C2j
		lea	eax, [edi+28h]

loc_40E8CC:				; CODE XREF: .text:0040E8C7j
		mov	dword ptr [ebp-80h], 5
		mov	edx, [eax]
		cmp	edx, [ebp-80h]
		jle	short loc_40E8DF
		lea	ecx, [ebp-80h]
		jmp	short loc_40E8E1
; ---------------------------------------------------------------------------

loc_40E8DF:				; CODE XREF: .text:0040E8D8j
		mov	ecx, eax

loc_40E8E1:				; CODE XREF: .text:0040E8DDj
		mov	eax, [ecx]
		mov	edx, [ebp-4]
		mov	ecx, edx
		lea	edx, [ecx+edx*4]
		shl	edx, 5
		sub	edx, ecx
		mov	font.hadjbot[edx*4], eax
		mov	eax, [ebp-4]
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		mov	edx, [edi+2Ch]
		mov	font.stockindex[eax*4],	edx
		mov	eax, [ebp-4]
		push	eax
		lea	ecx, aFaceNameI
		push	ecx		; format
		lea	eax, [ebp-950h]
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-4D0h]
		lea	ecx, [ebp-950h]
		lea	eax, aFonts_1
		push	100h		; length
		push	edx		; s
		push	ecx		; key
		push	eax		; section
		call	Stringfromini
		add	esp, 10h
		mov	word ptr [ebp-492h], 0
		lea	edx, [ebp-4D0h]
		push	edx		; src
		mov	ecx, [ebp-4]
		mov	eax, ecx
		lea	ecx, [eax+ecx*4]
		shl	ecx, 5
		sub	ecx, eax
		shl	ecx, 2
		add	ecx, offset font.logfont.lfFaceName
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8
		mov	edx, [ebp-4]
		lea	ecx, aFontNameI
		lea	eax, [ebp-950h]
		push	edx
		push	ecx		; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [ebp-4D0h]
		lea	ecx, [ebp-950h]
		lea	eax, aFonts_1
		push	100h		; length
		push	edx		; s
		push	ecx		; key
		push	eax		; section
		call	Stringfromini
		add	esp, 10h
		test	eax, eax
		jz	short loc_40E9DF
		lea	edx, [ebp-4D0h]
		push	edx		; src
		mov	ecx, [ebp-4]
		mov	eax, ecx
		lea	ecx, [eax+ecx*4]
		shl	ecx, 5
		sub	ecx, eax
		shl	ecx, 2
		add	ecx, offset font._name
		push	ecx		; dst
		call	_wcscpy
		add	esp, 8

loc_40E9DF:				; CODE XREF: .text:0040E70Bj
					; .text:0040E721j ...
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 8
		jl	loc_40E69D
		xor	edx, edx
		mov	[ebp-4], edx

loc_40E9F1:				; CODE XREF: .text:0040EA15j
		mov	ecx, [ebp-4]
		mov	eax, ecx
		lea	ecx, [eax+ecx*4]
		shl	ecx, 5
		sub	ecx, eax
		shl	ecx, 2
		add	ecx, offset font
		push	ecx		; LOGFONTW *
		call	loc_411254
		pop	ecx
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 8
		jl	short loc_40E9F1
		push	27Ch		; n
		push	0		; c
		push	offset sysfont	; s
		call	_memset
		add	esp, 0Ch
		mov	sysfont.logfont.lfHeight, 0Dh
		mov	sysfont.logfont.lfWidth, 5
		mov	sysfont.logfont.lfWeight, 190h
		mov	sysfont.logfont.lfCharSet, 1
		mov	sysfont.logfont.lfOutPrecision,	6
		mov	sysfont.logfont.lfClipPrecision, 0
		mov	sysfont.logfont.lfQuality, 2
		mov	sysfont.logfont.lfPitchAndFamily, 0
		lea	edx, aMsSansSerif
		push	edx		; src
		push	offset sysfont.logfont.lfFaceName ; dst
		call	_wcscpy
		add	esp, 8
		push	offset sysfont	; LOGFONTW *
		call	loc_411254
		pop	ecx
		push	27Ch		; n
		push	0		; c
		push	offset titlefont ; s
		call	_memset
		add	esp, 0Ch
		xor	ecx, ecx
		mov	titlefont.logfont.lfHeight, 16h
		mov	titlefont.logfont.lfWidth, ecx
		mov	titlefont.logfont.lfWeight, 1F4h
		mov	titlefont.logfont.lfCharSet, 1
		mov	titlefont.logfont.lfOutPrecision, 6
		lea	eax, aArial
		mov	titlefont.logfont.lfClipPrecision, 0
		push	eax		; src
		mov	titlefont.logfont.lfQuality, 2
		mov	titlefont.logfont.lfPitchAndFamily, 0
		push	offset titlefont.logfont.lfFaceName ; dst
		call	_wcscpy
		add	esp, 8
		push	offset titlefont ; LOGFONTW *
		call	loc_411254
		pop	ecx
		push	27Ch		; n
		push	0		; c
		push	offset fixfont	; s
		call	_memset
		add	esp, 0Ch
		mov	fixfont.logfont.lfHeight, 0Fh
		mov	fixfont.logfont.lfWidth, 8
		mov	fixfont.logfont.lfWeight, 190h
		mov	fixfont.logfont.lfCharSet, 0FFh
		mov	fixfont.logfont.lfOutPrecision,	6
		mov	fixfont.logfont.lfClipPrecision, 0
		mov	fixfont.logfont.lfQuality, 0
		mov	fixfont.logfont.lfPitchAndFamily, 31h
		lea	edx, aTerminal
		push	edx		; src
		push	offset fixfont.logfont.lfFaceName ; dst
		call	_wcscpy
		add	esp, 8
		push	offset fixfont	; LOGFONTW *
		call	loc_411254
		pop	ecx
		push	0		; COLORREF
		mov	ecx, [ebp-48h]
		push	ecx		; HDC
		call	GetNearestColor
		mov	[esi], eax
		push	800000h		; COLORREF
		mov	eax, [ebp-48h]
		push	eax		; HDC
		call	GetNearestColor
		mov	[esi+4], eax
		push	8000h		; COLORREF
		mov	edx, [ebp-48h]
		push	edx		; HDC
		call	GetNearestColor
		mov	[esi+8], eax
		push	808000h		; COLORREF
		mov	ecx, [ebp-48h]
		push	ecx		; HDC
		call	GetNearestColor
		mov	[esi+0Ch], eax
		push	80h		; COLORREF
		mov	eax, [ebp-48h]
		push	eax		; HDC
		call	GetNearestColor
		mov	[esi+10h], eax
		push	800080h		; COLORREF
		mov	edx, [ebp-48h]
		push	edx		; HDC
		call	GetNearestColor
		mov	[esi+14h], eax
		push	8080h		; COLORREF
		mov	ecx, [ebp-48h]
		push	ecx		; HDC
		call	GetNearestColor
		mov	[esi+18h], eax
		push	0C0C0C0h	; COLORREF
		mov	eax, [ebp-48h]
		push	eax		; HDC
		call	GetNearestColor
		mov	[esi+1Ch], eax
		push	808080h		; COLORREF
		mov	edx, [ebp-48h]
		push	edx		; HDC
		call	GetNearestColor
		mov	[esi+20h], eax
		push	0FF0000h	; COLORREF
		mov	ecx, [ebp-48h]
		push	ecx		; HDC
		call	GetNearestColor
		mov	[esi+24h], eax
		push	0FF00h		; COLORREF
		mov	eax, [ebp-48h]
		push	eax		; HDC
		call	GetNearestColor
		mov	[esi+28h], eax
		push	0FFFF00h	; COLORREF
		mov	edx, [ebp-48h]
		push	edx		; HDC
		call	GetNearestColor
		mov	[esi+2Ch], eax
		push	0FFh		; COLORREF
		mov	ecx, [ebp-48h]
		push	ecx		; HDC
		call	GetNearestColor
		mov	[esi+30h], eax
		push	0FF00FFh	; COLORREF
		mov	eax, [ebp-48h]
		push	eax		; HDC
		call	GetNearestColor
		mov	[esi+34h], eax
		push	0FFFFh		; COLORREF
		mov	edx, [ebp-48h]
		push	edx		; HDC
		call	GetNearestColor
		mov	[esi+38h], eax
		push	0FFFFFFh	; COLORREF
		mov	ecx, [ebp-48h]
		push	ecx		; HDC
		call	GetNearestColor
		mov	[esi+3Ch], eax
		push	0C0DCC0h	; COLORREF
		mov	eax, [ebp-48h]
		push	eax		; HDC
		call	GetNearestColor
		mov	[esi+40h], eax
		push	0F0C8A4h	; COLORREF
		mov	edx, [ebp-48h]
		push	edx		; HDC
		call	GetNearestColor
		mov	[esi+44h], eax
		push	0F0FBFFh	; COLORREF
		mov	ecx, [ebp-48h]
		push	ecx		; HDC
		call	GetNearestColor
		mov	[esi+48h], eax
		push	0A4A0A0h	; COLORREF
		mov	eax, [ebp-48h]
		push	eax		; HDC
		call	GetNearestColor
		mov	[esi+4Ch], eax
		mov	dword ptr [ebp-4], 14h

loc_40ECC8:				; CODE XREF: .text:0040ED65j
		mov	edx, [ebp-4]
		lea	ecx, aCustomColourI
		add	edx, 0FFFFFFECh
		lea	eax, [ebp-950h]
		push	edx
		push	ecx		; format
		push	eax		; buffer
		call	_swprintf
		add	esp, 0Ch
		lea	edx, [edi+8]
		lea	ecx, [edi+4]
		lea	eax, $CTW0("%i,%i,%i")
		push	edx
		push	ecx
		push	edi		; arglist
		push	eax		; format
		lea	edx, [ebp-950h]
		lea	ecx, aCustomColours
		push	edx		; key
		push	ecx		; section
		push	0		; file
		call	Getfromini
		add	esp, 1Ch
		cmp	eax, 3
		jl	short loc_40ED5E
		cmp	dword ptr [edi], 0
		jl	short loc_40ED5E
		cmp	dword ptr [edi], 0FFh
		jg	short loc_40ED5E
		cmp	dword ptr [edi+4], 0
		jl	short loc_40ED5E
		cmp	dword ptr [edi+4], 0FFh
		jg	short loc_40ED5E
		cmp	dword ptr [edi+8], 0
		jl	short loc_40ED5E
		cmp	dword ptr [edi+8], 0FFh
		jg	short loc_40ED5E
		xor	edx, edx
		xor	eax, eax
		mov	dl, [edi+4]
		mov	al, [edi]
		movzx	ecx, dx
		shl	ecx, 8
		xor	edx, edx
		mov	dl, [edi+8]
		or	eax, ecx
		mov	ecx, [ebp-4]
		shl	edx, 10h
		or	eax, edx
		mov	[esi+ecx*4], eax

		public loc_40ED5E
loc_40ED5E:				; CODE XREF: .text:0040ED10j
					; .text:0040ED15j ...
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 24h
		jl	loc_40ECC8
		push	1940h		; n
		push	0		; c
		push	offset tmpscheme ; s
		call	_memset
		add	esp, 0Ch
		lea	eax, aBlackOnWhite
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	offset tmpscheme ; dst
		call	_wcscpy
		mov	eax, [esi]
		add	esp, 8
		mov	tmpscheme.textcolor, eax
		mov	edx, [esi+3Ch]
		mov	tmpscheme.bkcolor, edx
		mov	ecx, [esi+20h]
		mov	tmpscheme.textcolor+8, ecx
		mov	eax, [esi+3Ch]
		mov	tmpscheme.bkcolor+8, eax
		mov	edx, [esi+30h]
		mov	tmpscheme.textcolor+4, edx
		mov	ecx, [esi+3Ch]
		mov	tmpscheme.bkcolor+4, ecx
		mov	eax, [esi+1Ch]
		mov	tmpscheme.textcolor+20h, eax
		mov	edx, [esi+3Ch]
		mov	tmpscheme.bkcolor+20h, edx
		mov	ecx, [esi+3Ch]
		mov	tmpscheme.textcolor+0Ch, ecx
		mov	eax, [esi]
		mov	tmpscheme.bkcolor+0Ch, eax
		mov	edx, [esi]
		mov	tmpscheme.textcolor+10h, edx
		mov	ecx, [esi+30h]
		mov	tmpscheme.bkcolor+10h, ecx
		mov	eax, [esi]
		mov	tmpscheme.textcolor+14h, eax
		mov	edx, [esi+34h]
		mov	tmpscheme.bkcolor+14h, edx
		mov	ecx, [esi]
		mov	tmpscheme.textcolor+18h, ecx
		mov	eax, [esi+38h]
		mov	tmpscheme.bkcolor+18h, eax
		mov	edx, [esi+30h]
		mov	tmpscheme.textcolor+1Ch, edx
		mov	ecx, [esi]
		mov	tmpscheme.bkcolor+1Ch, ecx
		lea	ecx, aYellowOnBlue
		mov	eax, [esi]
		mov	tmpscheme.textcolor+24h, eax
		mov	edx, [esi+1Ch]
		push	ecx		; src
		mov	tmpscheme.bkcolor+24h, edx
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmpscheme._name+328h) ; dst
		call	_wcscpy
		mov	eax, [esi+38h]
		add	esp, 8
		mov	tmpscheme.textcolor+328h, eax
		mov	edx, [esi+4]
		mov	tmpscheme.bkcolor+328h,	edx
		mov	ecx, [esi+1Ch]
		mov	tmpscheme.textcolor+330h, ecx
		mov	eax, [esi+4]
		mov	tmpscheme.bkcolor+330h,	eax
		mov	edx, [esi+30h]
		mov	tmpscheme.textcolor+32Ch, edx
		mov	ecx, [esi+4]
		mov	tmpscheme.bkcolor+32Ch,	ecx
		mov	eax, [esi+0Ch]
		mov	tmpscheme.textcolor+348h, eax
		mov	edx, [esi+4]
		mov	tmpscheme.bkcolor+348h,	edx
		mov	ecx, [esi+4]
		mov	tmpscheme.textcolor+334h, ecx
		mov	eax, [esi+38h]
		mov	tmpscheme.bkcolor+334h,	eax
		mov	edx, [esi+38h]
		mov	tmpscheme.textcolor+338h, edx
		mov	ecx, [esi+30h]
		mov	tmpscheme.bkcolor+338h,	ecx
		mov	eax, [esi]
		mov	tmpscheme.textcolor+33Ch, eax
		mov	edx, [esi+34h]
		mov	tmpscheme.bkcolor+33Ch,	edx
		mov	ecx, [esi]
		mov	tmpscheme.textcolor+340h, ecx
		mov	eax, [esi+38h]
		mov	tmpscheme.bkcolor+340h,	eax
		mov	edx, [esi+30h]
		mov	tmpscheme.textcolor+344h, edx
		mov	ecx, [esi+38h]
		mov	tmpscheme.bkcolor+344h,	ecx
		lea	ecx, aMarine
		mov	eax, [esi+38h]
		mov	tmpscheme.textcolor+34Ch, eax
		mov	edx, [esi+24h]
		push	ecx		; src
		mov	tmpscheme.bkcolor+34Ch,	edx
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmpscheme._name+650h) ; dst
		call	_wcscpy
		mov	eax, [esi+4]
		add	esp, 8
		mov	tmpscheme.textcolor+650h, eax
		mov	edx, [esi+2Ch]
		mov	tmpscheme.bkcolor+650h,	edx
		mov	ecx, [esi+0Ch]
		mov	tmpscheme.textcolor+658h, ecx
		mov	eax, [esi+2Ch]
		mov	tmpscheme.bkcolor+658h,	eax
		mov	edx, [esi+30h]
		mov	tmpscheme.textcolor+654h, edx
		mov	ecx, [esi+2Ch]
		mov	tmpscheme.bkcolor+654h,	ecx
		mov	eax, [esi+1Ch]
		mov	tmpscheme.textcolor+670h, eax
		mov	edx, [esi+2Ch]
		mov	tmpscheme.bkcolor+670h,	edx
		mov	ecx, [esi+2Ch]
		mov	tmpscheme.textcolor+65Ch, ecx
		mov	eax, [esi+4]
		mov	tmpscheme.bkcolor+65Ch,	eax
		mov	edx, [esi+2Ch]
		mov	tmpscheme.textcolor+660h, edx
		mov	ecx, [esi+30h]
		mov	tmpscheme.bkcolor+660h,	ecx
		mov	eax, [esi+2Ch]
		mov	tmpscheme.textcolor+664h, eax
		mov	edx, [esi+34h]
		mov	tmpscheme.bkcolor+664h,	edx
		mov	ecx, [esi+2Ch]
		mov	tmpscheme.textcolor+668h, ecx
		mov	eax, [esi+38h]
		mov	tmpscheme.bkcolor+668h,	eax
		mov	edx, [esi+30h]
		mov	tmpscheme.textcolor+66Ch, edx
		mov	ecx, [esi+4]
		mov	tmpscheme.bkcolor+66Ch,	ecx
		lea	ecx, aMostlyBlack
		mov	eax, [esi+2Ch]
		mov	tmpscheme.textcolor+674h, eax
		mov	edx, [esi+38h]
		push	ecx		; src
		mov	tmpscheme.bkcolor+674h,	edx
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmpscheme._name+978h) ; dst
		call	_wcscpy
		mov	eax, [esi+3Ch]
		add	esp, 8
		mov	tmpscheme.textcolor+978h, eax
	echo ???	
		mov	edi, (offset tmpscheme._name+0CA0h)
		mov	edx, [esi]
		mov	tmpscheme.bkcolor+978h,	edx
		mov	ecx, [esi+1Ch]
		mov	tmpscheme.textcolor+980h, ecx
		mov	eax, [esi]
		mov	tmpscheme.bkcolor+980h,	eax
		mov	edx, [esi+30h]
		mov	tmpscheme.textcolor+97Ch, edx
		mov	ecx, [esi]
		mov	tmpscheme.bkcolor+97Ch,	ecx
		mov	eax, [esi+1Ch]
		mov	tmpscheme.textcolor+998h, eax
		mov	edx, [esi]
		mov	tmpscheme.bkcolor+998h,	edx
		mov	ecx, [esi]
		mov	tmpscheme.textcolor+984h, ecx
		mov	eax, [esi+3Ch]
		mov	tmpscheme.bkcolor+984h,	eax
		mov	edx, [esi+3Ch]
		mov	tmpscheme.textcolor+988h, edx
		mov	ecx, [esi+30h]
		mov	tmpscheme.bkcolor+988h,	ecx
		mov	eax, [esi+3Ch]
		mov	tmpscheme.textcolor+98Ch, eax
		mov	edx, [esi+34h]
		mov	tmpscheme.bkcolor+98Ch,	edx
		mov	ecx, [esi+3Ch]
		mov	tmpscheme.textcolor+990h, ecx
		mov	eax, [esi+38h]
		mov	tmpscheme.bkcolor+990h,	eax
		mov	edx, [esi]
		mov	tmpscheme.textcolor+994h, edx
		mov	ecx, [esi+30h]
		mov	tmpscheme.bkcolor+994h,	ecx
		mov	ecx, 0CAh
		mov	eax, [esi+38h]
		mov	tmpscheme.textcolor+99Ch, eax
		lea	eax, aScheme4
		mov	edx, [esi+20h]
		push	esi
		mov	tmpscheme.bkcolor+99Ch,	edx
		mov	esi, offset tmpscheme
		rep movsd
		pop	esi
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmpscheme._name+0CA0h) ;	dst
		call	_wcscpy
		add	esp, 8
		mov	edi, (offset tmpscheme._name+0FC8h)
		mov	ecx, 0CAh
		lea	eax, aScheme5
		push	esi
		mov	esi, (offset tmpscheme._name+328h)
		rep movsd
		pop	esi
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmpscheme._name+0FC8h) ;	dst
		call	_wcscpy
		add	esp, 8
		mov	edi, (offset tmpscheme._name+12F0h)
		mov	ecx, 0CAh
		lea	eax, aScheme6
		push	esi
		mov	esi, (offset tmpscheme._name+650h)
		rep movsd
		pop	esi
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmpscheme._name+12F0h) ;	dst
		call	_wcscpy
		add	esp, 8
		mov	edi, (offset tmpscheme._name+1618h)
		mov	ecx, 0CAh
		lea	eax, aScheme7
		push	esi
		mov	esi, (offset tmpscheme._name+978h)
		rep movsd
		pop	esi
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmpscheme._name+1618h) ;	dst
		call	_wcscpy
		add	esp, 8
		push	1940h		; n
		push	offset tmpscheme ; src
		push	offset scheme	; dest
		call	_memcpy
		add	esp, 0Ch
		xor	edx, edx
		mov	[ebp-4], edx

loc_40F164:				; CODE XREF: .text:0040F1D1j
		mov	ecx, [ebp-4]
		push	esi
		mov	eax, ecx
		lea	edi, [ebp-0C78h]
		lea	edx, aColourSchemes
		lea	ecx, [eax+ecx*2]
		lea	ecx, [eax+ecx*8]
		lea	ecx, [eax+ecx*4]
		lea	esi, tmpscheme._name[ecx*8]
		mov	ecx, 0CAh
		rep movsd
		pop	esi
		mov	eax, [ebp-4]
		push	eax		; int
		push	edx		; lpAppName
		lea	ecx, [ebp-0C78h]
		push	ecx		; int
		call	loc_4116B8
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_40F1CA
		mov	eax, [ebp-4]
		push	esi
		mov	edx, eax
		lea	esi, [ebp-0C78h]
		mov	ecx, 0CAh
		lea	eax, [edx+eax*2]
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*4]
		lea	edi, scheme._name[eax*8]
		rep movsd
		pop	esi

loc_40F1CA:				; CODE XREF: .text:0040F1A4j
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 8
		jl	short loc_40F164
		xor	eax, eax
		mov	[ebp-4], eax

loc_40F1D8:				; CODE XREF: .text:0040F1FDj
		mov	edx, [ebp-4]
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*4]
		shl	edx, 3
		add	edx, offset scheme
		push	edx
		call	loc_411E1C
		pop	ecx
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 8
		jl	short loc_40F1D8
		push	1940h		; n
		push	0		; c
		push	offset tmphilite ; s
		call	_memset
		add	esp, 0Ch
		xor	eax, eax
		mov	[ebp-4], eax
		mov	dword ptr [ebp-8Ch], offset tmphilite.textcolor

loc_40F222:				; CODE XREF: .text:0040F26Cj
		xor	eax, eax
		mov	edx, [ebp-8Ch]
		mov	ecx, edx
		mov	[ebp-90h], ecx

loc_40F232:				; CODE XREF: .text:0040F259j
		mov	edx, [ebp-90h]
		inc	eax
		mov	dword ptr [edx], 0FFFFFFFFh
		mov	ecx, [ebp-90h]
		mov	dword ptr [ecx+80h], 0FFFFFFFFh
		add	dword ptr [ebp-90h], 4
		cmp	eax, 20h
		jl	short loc_40F232
		inc	dword ptr [ebp-4]
		add	dword ptr [ebp-8Ch], 328h
		cmp	dword ptr [ebp-4], 8
		jl	short loc_40F222
		lea	eax, aNoHighlighting
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	offset tmphilite ; dst
		call	_wcscpy
		add	esp, 8
		lea	eax, aChristmasTree
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmphilite._name+328h) ; dst
		call	_wcscpy
		mov	tmphilite.textcolor+358h, 0FFFFFFFFh
		mov	tmphilite.bkcolor+358h,	0FFFFFFFFh
		mov	tmphilite.textcolor+35Ch, 0FFFFFFFFh
		add	esp, 8
		mov	edx, [esi+38h]
		mov	tmphilite.bkcolor+35Ch,	edx
		mov	ecx, [esi+30h]
		mov	tmphilite.textcolor+360h, ecx
		mov	eax, [esi+38h]
		mov	tmphilite.bkcolor+360h,	eax
		mov	edx, [esi+24h]
		mov	tmphilite.textcolor+364h, edx
		mov	tmphilite.bkcolor+364h,	0FFFFFFFFh
		mov	tmphilite.textcolor+368h, 0FFFFFFFFh
		mov	ecx, [esi+0Ch]
		mov	tmphilite.bkcolor+368h,	ecx
		mov	tmphilite.textcolor+36Ch, 0FFFFFFFFh
		mov	eax, [esi+0Ch]
		mov	tmphilite.bkcolor+36Ch,	eax
		mov	edx, [esi+10h]
		mov	tmphilite.textcolor+370h, edx
		mov	tmphilite.bkcolor+370h,	0FFFFFFFFh
		mov	ecx, [esi+3Ch]
		mov	tmphilite.textcolor+374h, ecx
		mov	eax, [esi+10h]
		mov	tmphilite.bkcolor+374h,	eax
		mov	edx, [esi+20h]
		mov	tmphilite.textcolor+378h, edx
		mov	tmphilite.bkcolor+378h,	0FFFFFFFFh
		mov	ecx, [esi]
		mov	tmphilite.textcolor+37Ch, ecx
		mov	eax, [esi+30h]
		mov	tmphilite.bkcolor+37Ch,	eax
		mov	tmphilite.hiliteoperands+328h, 1
		mov	tmphilite.textcolor+388h, 0FFFFFFFFh
		mov	tmphilite.bkcolor+388h,	0FFFFFFFFh
		mov	edx, [esi+10h]
		mov	tmphilite.textcolor+38Ch, edx
		mov	tmphilite.bkcolor+38Ch,	0FFFFFFFFh
		mov	ecx, [esi+34h]
		mov	tmphilite.textcolor+390h, ecx
		mov	tmphilite.bkcolor+390h,	0FFFFFFFFh
		mov	eax, [esi]
		mov	tmphilite.textcolor+394h, eax
		mov	edx, [esi+2Ch]
		mov	tmphilite.bkcolor+394h,	edx
		mov	ecx, [esi]
		mov	tmphilite.textcolor+398h, ecx
		mov	eax, [esi+28h]
		mov	tmphilite.bkcolor+398h,	eax
		mov	edx, [esi]
		mov	tmphilite.textcolor+39Ch, edx
		mov	ecx, [esi+38h]
		mov	tmphilite.bkcolor+39Ch,	ecx
		lea	ecx, aJumpsAndCalls
		mov	eax, [esi]
		mov	tmphilite.textcolor+3A0h, eax
		mov	edx, [esi+34h]
		push	ecx		; src
		mov	tmphilite.bkcolor+3A0h,	edx
		mov	tmphilite.hilitemodified+328h, 1
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmphilite._name+650h) ; dst
		call	_wcscpy
		mov	tmphilite.textcolor+680h, 0FFFFFFFFh
		mov	tmphilite.bkcolor+680h,	0FFFFFFFFh
		mov	eax, [esi]
		add	esp, 8
		mov	tmphilite.textcolor+684h, eax
		mov	edx, [esi+38h]
		mov	tmphilite.bkcolor+684h,	edx
		mov	ecx, [esi+30h]
		mov	tmphilite.textcolor+688h, ecx
		mov	eax, [esi+38h]
		mov	tmphilite.bkcolor+688h,	eax
		mov	edx, [esi]
		mov	tmphilite.textcolor+690h, edx
		mov	ecx, [esi+2Ch]
		mov	tmphilite.bkcolor+690h,	ecx
		mov	eax, [esi]
		mov	tmphilite.textcolor+694h, eax
		mov	edx, [esi+2Ch]
		mov	tmphilite.bkcolor+694h,	edx
		xor	edx, edx
		mov	ecx, [esi]
		mov	tmphilite.textcolor+6A4h, ecx
		xor	ecx, ecx
		mov	eax, [esi+30h]
		mov	tmphilite.bkcolor+6A4h,	eax
		lea	eax, aMemoryAccess
		mov	tmphilite.hiliteoperands+650h, edx
		mov	tmphilite.hilitemodified+650h, ecx
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmphilite._name+978h) ; dst
		call	_wcscpy
		mov	tmphilite.hiliteoperands+978h, 1
		add	esp, 8
		mov	edx, [esi]
		mov	edi, (offset tmphilite._name+0CA0h)
		mov	tmphilite.textcolor+9E4h, edx
		mov	ecx, [esi+2Ch]
		mov	tmphilite.bkcolor+9E4h,	ecx
		mov	eax, [esi]
		mov	tmphilite.textcolor+9E8h, eax
		mov	edx, [esi+28h]
		mov	tmphilite.bkcolor+9E8h,	edx
		mov	ecx, [esi]
		mov	tmphilite.textcolor+9ECh, ecx
		mov	eax, [esi+38h]
		mov	tmphilite.bkcolor+9ECh,	eax
		lea	eax, aHilite4
		mov	edx, [esi]
		mov	tmphilite.textcolor+9CCh, edx
		mov	ecx, [esi+30h]
		mov	esi, offset tmphilite
		mov	tmphilite.bkcolor+9CCh,	ecx
		mov	ecx, 0CAh
		mov	tmphilite.hilitemodified+978h, 1
		rep movsd
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmphilite._name+0CA0h) ;	dst
		call	_wcscpy
		add	esp, 8
		mov	esi, offset tmphilite
		mov	edi, (offset tmphilite._name+0FC8h)
		mov	ecx, 0CAh
		rep movsd
		lea	eax, aHilite5
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmphilite._name+0FC8h) ;	dst
		call	_wcscpy
		add	esp, 8
		mov	esi, offset tmphilite
		mov	edi, (offset tmphilite._name+12F0h)
		mov	ecx, 0CAh
		rep movsd
		lea	eax, aHilite6
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmphilite._name+12F0h) ;	dst
		call	_wcscpy
		add	esp, 8
		mov	esi, offset tmphilite
		mov	edi, (offset tmphilite._name+1618h)
		mov	ecx, 0CAh
		rep movsd
		lea	eax, aHilite7
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	(offset	tmphilite._name+1618h) ;	dst
		call	_wcscpy
		add	esp, 8
		push	1940h		; n
		push	offset tmphilite ; src
		push	offset hilite	; dest
		call	_memcpy
		add	esp, 0Ch
		mov	dword ptr [ebp-4], 1

loc_40F5BA:				; CODE XREF: .text:0040F623j
		mov	edx, [ebp-4]
		lea	edi, [ebp-0C78h]
		mov	ecx, edx
		lea	edx, [ecx+edx*2]
		lea	edx, [ecx+edx*8]
		lea	edx, [ecx+edx*4]
		mov	ecx, 0CAh
		lea	esi, tmphilite._name[edx*8]
		lea	edx, aHighlightingSc
		rep movsd
		mov	eax, [ebp-4]
		lea	ecx, [ebp-0C78h]
		push	eax		; int
		push	edx		; lpAppName
		push	ecx		; int
		call	loc_4116B8
		add	esp, 0Ch
		test	eax, eax
		jnz	short loc_40F61C
		mov	eax, [ebp-4]
		lea	esi, [ebp-0C78h]
		mov	edx, eax
		mov	ecx, 0CAh
		lea	eax, [edx+eax*2]
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*4]
		lea	edi, hilite._name[eax*8]
		rep movsd

loc_40F61C:				; CODE XREF: .text:0040F5F8j
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 8
		jl	short loc_40F5BA
		call	loc_411400
		mov	eax, [ebp-48h]
		push	eax		; hDC
		call	GetDesktopWindow
		push	eax		; hWnd
		call	ReleaseDC
		push	7F02h		; lpCursorName
		push	0		; hInstance
		call	LoadCursorW
		mov	g_hCursor, eax
		lea	edx, aCurs_size
		push	edx		; lpCursorName
		mov	ecx, g_hInstance
		push	ecx		; hInstance
		call	LoadCursorW
		mov	hCursor, eax
		cmp	hCursor, 0
		jnz	short loc_40F67C
		push	7F80h		; lpCursorName
		push	0		; hInstance
		call	LoadCursorW
		mov	hCursor, eax

loc_40F67C:				; CODE XREF: .text:0040F669j
		cmp	hCursor, 0
		jnz	short loc_40F696
		push	7F00h		; lpCursorName
		push	0		; hInstance
		call	LoadCursorW
		mov	hCursor, eax

loc_40F696:				; CODE XREF: .text:0040F683j
		cmp	_imp__InitCommonControlsEx, 0
		jz	short loc_40F6B9
		mov	dword ptr [ebp-58h], 8
		mov	dword ptr [ebp-54h], 0FFh
		lea	eax, [ebp-58h]
		push	eax		; _DWORD
		call	_imp__InitCommonControlsEx
		jmp	short loc_40F6BE
; ---------------------------------------------------------------------------

loc_40F6B9:				; CODE XREF: .text:0040F69Dj
		call	InitCommonControls

loc_40F6BE:				; CODE XREF: .text:0040F6B7j
		push	offset FileName	; lpFileName
		call	loc_4246D0
		pop	ecx
		cmp	VersionInformation.dwPlatformId, 2
		jz	short loc_40F6DE
		mov	userspacelimit,	0FFFFFFFFh
		jmp	short loc_40F70E
; ---------------------------------------------------------------------------

loc_40F6DE:				; CODE XREF: .text:0040F6D0j
		lea	edx, [ebp-0CFCh]
		push	edx		; lpBuffer
		call	GlobalMemoryStatus
		cmp	dword ptr [ebp-0CE4h], 80000000h
		ja	short loc_40F702
		mov	userspacelimit,	80000000h
		jmp	short loc_40F70E
; ---------------------------------------------------------------------------

loc_40F702:				; CODE XREF: .text:0040F6F4j
		mov	ecx, [ebp-0CE4h]
		mov	userspacelimit,	ecx

loc_40F70E:				; CODE XREF: .text:0040F6DCj
					; .text:0040F700j
		mov	dword ptr [ebp-0CDCh], 3
		mov	dword ptr [ebp-0CD8h], offset loc_40A1B0
		xor	eax, eax
		mov	edx, g_hInstance
		mov	[ebp-0CD0h], eax
		mov	[ebp-0CD4h], eax
		mov	[ebp-0CCCh], edx
		lea	ecx, aIco_aaamain
		push	ecx		; lpIconName
		mov	eax, g_hInstance
		push	eax		; hInstance
		call	LoadIconW
		mov	[ebp-0CC8h], eax
		push	7F00h		; lpCursorName
		push	0		; hInstance
		call	LoadCursorW
		mov	[ebp-0CC4h], eax
		xor	edx, edx
		mov	[ebp-0CC0h], edx
		xor	ecx, ecx
		mov	[ebp-0CBCh], ecx
		lea	eax, [ebp-0CDCh]
		mov	dword ptr [ebp-0CB8h], offset ClassName
		push	eax		; lpWndClass
		call	RegisterClassW
		test	ax, ax
		jnz	short loc_40F7B7
		push	2010h		; uType
		push	offset ClassName ; lpCaption
		lea	edx, aUnableToCrea_6
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; lpText
		push	0		; hWnd
		call	MessageBoxW
		xor	eax, eax
		jmp	loc_410911
; ---------------------------------------------------------------------------

loc_40F7B7:				; CODE XREF: .text:0040F78Fj
		push	0		; nIndex
		call	GetSystemMetrics
		mov	esi, eax
		push	1		; nIndex
		call	GetSystemMetrics
		mov	dword ptr [ebp-1Ch], 280h
		mov	dword ptr [ebp-20h], 1E0h
		sub	esi, [ebp-1Ch]
		sar	esi, 1
		jns	short loc_40F7DF
		adc	esi, 0

loc_40F7DF:				; CODE XREF: .text:0040F7DAj
		mov	[ebp-14h], esi
		sub	eax, [ebp-20h]
		sar	eax, 1
		jns	short loc_40F7EC
		adc	eax, 0

loc_40F7EC:				; CODE XREF: .text:0040F7E7j
		mov	[ebp-18h], eax
		cmp	dword ptr [ebp-18h], 20h
		jle	short loc_40F7FC
		mov	dword ptr [ebp-18h], 20h

loc_40F7FC:				; CODE XREF: .text:0040F7F3j
		xor	eax, eax
		mov	[ebp-24h], eax
		lea	edx, [ebp-24h]
		push	edx
		lea	ecx, [ebp-20h]
		push	ecx
		lea	eax, [ebp-1Ch]
		push	eax
		lea	edx, [ebp-18h]
		push	edx
		lea	ecx, [ebp-14h]
		push	ecx		; arglist
		lea	eax, aIIIII
		push	eax		; format
		lea	edx, aPlacement
		push	edx		; key
		lea	ecx, aSelectLanguageUsedByOllydb
		push	ecx		; section
		push	0		; file
		call	Getfromini
		add	esp, 24h
		lea	eax, [ebp-0C88h]
		push	eax		; rc
		mov	edx, [ebp-20h]
		sar	edx, 1
		jns	short loc_40F845
		adc	edx, 0

loc_40F845:				; CODE XREF: .text:0040F840j
		add	edx, [ebp-18h]
		push	edx		; y
		mov	ecx, [ebp-1Ch]
		sar	ecx, 1
		jns	short loc_40F853
		adc	ecx, 0

loc_40F853:				; CODE XREF: .text:0040F84Ej
		add	ecx, [ebp-14h]
		push	ecx		; x
		call	Getmonitorrect
		add	esp, 0Ch
		mov	esi, [ebp-0C80h]
		sub	esi, [ebp-0C88h]
		mov	eax, [ebp-0C7Ch]
		sub	eax, [ebp-0C84h]
		cmp	esi, [ebp-1Ch]
		jge	short loc_40F87F
		mov	[ebp-1Ch], esi

loc_40F87F:				; CODE XREF: .text:0040F87Aj
		cmp	dword ptr [ebp-1Ch], 140h
		jge	short loc_40F88F
		mov	dword ptr [ebp-1Ch], 140h

loc_40F88F:				; CODE XREF: .text:0040F886j
		cmp	eax, [ebp-20h]
		jge	short loc_40F897
		mov	[ebp-20h], eax

loc_40F897:				; CODE XREF: .text:0040F892j
		cmp	dword ptr [ebp-20h], 0C8h
		jge	short loc_40F8A7
		mov	dword ptr [ebp-20h], 0C8h

loc_40F8A7:				; CODE XREF: .text:0040F89Ej
		mov	edx, [ebp-14h]
		add	edx, [ebp-1Ch]
		cmp	edx, [ebp-0C80h]
		jle	short loc_40F8C1
		mov	ecx, [ebp-0C80h]
		sub	ecx, [ebp-1Ch]
		mov	[ebp-14h], ecx

loc_40F8C1:				; CODE XREF: .text:0040F8B3j
		mov	eax, [ebp-18h]
		add	eax, [ebp-20h]
		cmp	eax, [ebp-0C7Ch]
		jle	short loc_40F8DB
		mov	edx, [ebp-0C7Ch]
		sub	edx, [ebp-20h]
		mov	[ebp-18h], edx

loc_40F8DB:				; CODE XREF: .text:0040F8CDj
		mov	ecx, [ebp-0C88h]
		cmp	ecx, [ebp-14h]
		jle	short loc_40F8EF
		mov	eax, [ebp-0C88h]
		mov	[ebp-14h], eax

loc_40F8EF:				; CODE XREF: .text:0040F8E4j
		mov	edx, [ebp-0C84h]
		cmp	edx, [ebp-18h]
		jle	short loc_40F903
		mov	ecx, [ebp-0C84h]
		mov	[ebp-18h], ecx

loc_40F903:				; CODE XREF: .text:0040F8F8j
		push	0		; lpParam
		mov	eax, g_hInstance
		push	eax		; hInstance
		push	0		; hMenu
		push	0		; hWndParent
		mov	edx, [ebp-20h]
		push	edx		; nHeight
		mov	ecx, [ebp-1Ch]
		push	ecx		; nWidth
		mov	eax, [ebp-18h]
		push	eax		; Y
		mov	edx, [ebp-14h]
		push	edx		; X
		push	2CF0000h	; dwStyle
		push	offset ClassName ; lpWindowName
		push	offset ClassName ; lpClassName
		push	10h		; dwExStyle
		call	CreateWindowExW
		mov	hwollymain, eax
		cmp	hwollymain, 0
		jnz	short loc_40F962
		push	2010h		; uType
		lea	ecx, aUnableToCrea_6
		push	offset ClassName ; lpCaption
		push	ecx		; lpText
		push	0		; hWnd
		call	MessageBoxW
		xor	eax, eax
		jmp	loc_410911
; ---------------------------------------------------------------------------

loc_40F962:				; CODE XREF: .text:0040F941j
		xor	edx, edx
		push	offset stru_50DDAC
		mov	dword_57E7D4, edx
		call	loc_425644
		pop	ecx
		cmp	dword_57FE64, 2
		jnz	short loc_40F9F0
		push	0
		push	0
		push	0
		push	0
		lea	ecx, [ebp-0C98h]
		push	ecx
		call	loc_4087E8
		add	esp, 14h
		mov	eax, [ebp-0C8Ch]
		cmp	eax, [ebp-0C94h]
		jle	short loc_40F9F0
		lea	edx, [ebp-0C88h]
		push	edx		; lpRect
		mov	ecx, hwollymain
		push	ecx		; hWnd
		call	GetWindowRect
		push	16h		; uFlags
		mov	ecx, hwollymain
		mov	eax, [ebp-0C7Ch]
		sub	eax, [ebp-0C84h]
		sub	eax, [ebp-0C8Ch]
		add	eax, [ebp-0C94h]
		push	eax		; cy
		mov	edx, [ebp-0C80h]
		sub	edx, [ebp-0C88h]
		push	edx		; cx
		push	0		; Y
		push	0		; X
		push	0		; hWndInsertAfter
		push	ecx		; hWnd
		call	SetWindowPos

loc_40F9F0:				; CODE XREF: .text:0040F97Cj
					; .text:0040F9A1j
		mov	eax, g_hInstance
		push	0		; lpParam
		push	eax		; hInstance
		mov	edx, hwollymain
		push	0		; hMenu
		push	edx		; hWndParent
		push	80000000h	; nHeight
		push	80000000h	; nWidth
		push	80000000h	; Y
		push	80000000h	; X
		push	3		; dwStyle
		lea	ecx, aTooltips_cla_1
		push	0		; lpWindowName
		push	ecx		; lpClassName
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	dword_57FE3C, eax
		xor	eax, eax
		mov	[ebp-4], eax
		mov	eax, 1
		jmp	short loc_40FA41
; ---------------------------------------------------------------------------

loc_40FA38:				; CODE XREF: .text:0040FA4Aj
		mov	edx, eax
		add	edx, edx
		inc	dword ptr [ebp-4]
		mov	eax, edx

loc_40FA41:				; CODE XREF: .text:0040FA36j
		mov	ecx, [ebp-4]
		cmp	ecx, dword_5BE478
		jl	short loc_40FA38
		shl	eax, 10h
		push	eax
		call	loc_41952C
		pop	ecx
		lea	eax, [ebp-4D0h]
		mov	word ptr [ebp-4D0h], 0
		push	eax
		push	1
		lea	edx, aSelectLanguageUsedByOllydb
		push	2
		push	edx		; arglist
		lea	ecx, aSVI_02iS
		push	ecx		; format
		push	0		; _addr
		call	Message
		add	esp, 18h
		cmp	dword_57DD48, 0
		jz	short loc_40FA90
		call	loc_4039F0

loc_40FA90:				; CODE XREF: .text:0040FA89j
		call	loc_4191C0
		push	0		; pvReserved
		call	CoInitialize
		test	eax, eax
		jz	short loc_40FABA
		lea	eax, aUnableToInitia
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; format
		push	1		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 0Ch

loc_40FABA:				; CODE XREF: .text:0040FA9Ej
		cmp	dword ptr [ebp-38h], 0
		jz	short loc_40FACF
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_40FACF
		cmp	_imp__PathGetArgsW, 0
		jnz	short loc_40FAD3

loc_40FACF:				; CODE XREF: .text:0040FABEj
					; .text:0040FAC4j
		xor	edi, edi
		jmp	short loc_40FAEA
; ---------------------------------------------------------------------------

loc_40FAD3:				; CODE XREF: .text:0040FACDj
		mov	eax, [ebp-38h]
		push	eax		; _DWORD
		call	_imp__PathGetArgsW
		mov	edi, eax
		jmp	short loc_40FAE4
; ---------------------------------------------------------------------------

loc_40FAE1:				; CODE XREF: .text:0040FAE8j
		add	edi, 2

loc_40FAE4:				; CODE XREF: .text:0040FADFj
		cmp	word ptr [edi],	20h
		jz	short loc_40FAE1

loc_40FAEA:				; CODE XREF: .text:0040FAD1j
		test	edi, edi
		jz	short loc_40FB4D
		cmp	word ptr [edi],	0
		jz	short loc_40FB4D
		lea	eax, aCommandLine
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; src
		push	100h		; n
		lea	edx, [ebp-4D0h]
		push	edx		; dest
		call	StrcopyW
		add	esp, 0Ch
		mov	[ebp-8], eax
		push	edi		; src
		mov	ecx, 100h
		sub	ecx, [ebp-8]
		push	ecx		; n
		mov	eax, [ebp-8]
		add	eax, eax
		lea	edx, [ebp-4D0h]
		add	eax, edx
		push	eax		; dest
		call	StrcopyW
		add	esp, 0Ch
		lea	ecx, [ebp-4D0h]
		push	ecx		; arglist
		push	ebx		; format
		push	0		; color
		push	0		; _addr
		call	Addtolist
		add	esp, 10h

loc_40FB4D:				; CODE XREF: .text:0040FAECj
					; .text:0040FAF2j
		cmp	dword ptr [ebp-24h], 0
		jz	short loc_40FB62
		push	3		; nCmdShow
		mov	eax, hwollymain
		push	eax		; hWnd
		call	ShowWindow
		jmp	short loc_40FB70
; ---------------------------------------------------------------------------

loc_40FB62:				; CODE XREF: .text:0040FB51j
		push	9		; nCmdShow
		mov	edx, hwollymain
		push	edx		; hWnd
		call	ShowWindow

loc_40FB70:				; CODE XREF: .text:0040FB60j
		push	3		; uFlags
		push	0		; cy
		push	0		; cx
		push	0		; Y
		push	0		; X
		or	ecx, 0FFFFFFFFh
		cmp	dword_57FE44, 0
		jnz	short loc_40FB87
		dec	ecx

loc_40FB87:				; CODE XREF: .text:0040FB84j
		push	ecx		; hWndInsertAfter
		mov	eax, hwollymain
		push	eax		; hWnd
		call	SetWindowPos
		cmp	dword_57FE64, 2
		jnz	short loc_40FBA9
		xor	edx, edx
		mov	hwclient, edx
		jmp	loc_40FC9F
; ---------------------------------------------------------------------------

loc_40FBA9:				; CODE XREF: .text:0040FB9Aj
		mov	ecx, dword_57E7D4
		mov	[ebp-50h], ecx
		mov	dword ptr [ebp-4Ch], 7530h
		mov	dword ptr [ebp-2Ch], 52000001h
		cmp	dword_57FE64, 1
		jnz	short loc_40FBD0
		or	dword ptr [ebp-2Ch], 300000h

loc_40FBD0:				; CODE XREF: .text:0040FBC7j
		push	0
		push	0
		push	0
		push	0
		lea	eax, [ebp-0C98h]
		push	eax
		call	loc_4087E8
		add	esp, 14h
		lea	edx, [ebp-50h]
		mov	ecx, g_hInstance
		mov	eax, hwollymain
		push	edx		; lpParam
		push	ecx		; hInstance
		push	0		; hMenu
		push	eax		; hWndParent
		mov	edx, [ebp-0C8Ch]
		sub	edx, [ebp-0C94h]
		add	edx, 0FFFFFFFDh
		push	edx		; nHeight
		mov	ecx, [ebp-0C90h]
		sub	ecx, [ebp-0C98h]
		push	ecx		; nWidth
		mov	eax, [ebp-0C94h]
		inc	eax
		push	eax		; Y
		lea	eax, aMdiclient
		mov	edx, [ebp-0C98h]
		push	edx		; X
		mov	ecx, [ebp-2Ch]
		push	ecx		; dwStyle
		push	0		; lpWindowName
		push	eax		; lpClassName
		push	0		; dwExStyle
		call	CreateWindowExW
		mov	hwclient, eax
		cmp	hwclient, 0
		jnz	short loc_40FC6E
		push	2010h		; uType
		push	offset ClassName ; lpCaption
		lea	edx, aUnableToCrea_6
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; lpText
		push	0		; hWnd
		call	MessageBoxW
		xor	eax, eax
		jmp	loc_410911
; ---------------------------------------------------------------------------

loc_40FC6E:				; CODE XREF: .text:0040FC46j
		cmp	ischild, 0
		jz	short loc_40FC9F
		push	offset loc_40C6B0 ; dwNewLong
		push	0FFFFFFFCh	; nIndex
		mov	edx, hwclient
		push	edx		; hWnd
		call	SetWindowLongW
		mov	lpPrevWndFunc, eax
		push	1		; bErase
		push	0		; lpRect
		mov	ecx, hwclient
		push	ecx		; hWnd
		call	InvalidateRect

loc_40FC9F:				; CODE XREF: .text:0040FBA4j
					; .text:0040FC75j
		xor	eax, eax
		push	180h		; flags
		mov	dword_57FE6C, eax
		push	0		; hrgnUpdate
		mov	edx, hwollymain
		push	0		; lprcUpdate
		push	edx		; hWnd
		call	RedrawWindow
		call	loc_420AFC
		test	eax, eax
		jnz	short loc_40FCDF
		call	loc_4737F0
		test	eax, eax
		jnz	short loc_40FCDF
		call	loc_474608
		test	eax, eax
		jnz	short loc_40FCDF
		call	loc_42235C
		test	eax, eax
		jz	short loc_40FD05

loc_40FCDF:				; CODE XREF: .text:0040FCC2j
					; .text:0040FCCBj ...
		push	2010h		; uType
		push	offset ClassName ; lpCaption
		lea	ecx, aUnableToInit_0
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; lpText
		push	0		; hWnd
		call	MessageBoxW
		xor	eax, eax
		jmp	loc_410911
; ---------------------------------------------------------------------------

loc_40FD05:				; CODE XREF: .text:0040FCDDj
		call	loc_428AE8
		test	eax, eax
		jz	short loc_40FD34
		push	2010h		; uType
		push	offset ClassName ; lpCaption
		lea	edx, aUnableToInit_0
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; lpText
		push	0		; hWnd
		call	MessageBoxW
		xor	eax, eax
		jmp	loc_410911
; ---------------------------------------------------------------------------

loc_40FD34:				; CODE XREF: .text:0040FD0Cj
		push	1		; defvalue
		lea	edx, aCheckDllVersio
		push	edx		; key
		call	Getfromsettings
		add	esp, 8
		test	eax, eax
		jz	short loc_40FD7C
		push	1		; int
		lea	ecx, aPsapi_dll
		push	ecx		; path
		call	loc_4092DC
		add	esp, 8
		push	0		; int
		lea	eax, aDbghelp_dll
		push	eax		; path
		call	loc_4092DC
		add	esp, 8
		push	0		; value
		lea	edx, aCheckDllVersio
		push	edx		; key
		call	Addtosettings
		add	esp, 8

loc_40FD7C:				; CODE XREF: .text:0040FD47j
		call	loc_4C9418
		call	loc_4045F4
		cmp	dword_57E668, 0
		jz	short loc_40FDCC
		call	loc_4042FC
		test	eax, eax
		jnz	short loc_40FDCC
		xor	ecx, ecx
		mov	[ebp-4], ecx
		lea	eax, aYouDoNotHaveAd
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; format
		push	offset ClassName ; _title
		lea	edx, [ebp-4]
		push	edx		; cond
		call	Conderror
		add	esp, 0Ch
		cmp	dword ptr [ebp-4], 0
		setz	cl
		and	ecx, 1
		mov	dword_57E668, ecx

loc_40FDCC:				; CODE XREF: .text:0040FD8Dj
					; .text:0040FD96j
		cmp	_imp__GetEnabledXStateFeatures,	0
		jnz	short loc_40FDDE
		xor	eax, eax
		mov	dword_5C8720, eax
		jmp	short loc_40FDF9
; ---------------------------------------------------------------------------

loc_40FDDE:				; CODE XREF: .text:0040FDD3j
		call	_imp__GetEnabledXStateFeatures
		mov	[ebp-28h], eax
		mov	edx, 1
		test	byte ptr [ebp-28h], 4
		jnz	short loc_40FDF3
		dec	edx

loc_40FDF3:				; CODE XREF: .text:0040FDF0j
		mov	dword_5C8720, edx

loc_40FDF9:				; CODE XREF: .text:0040FDDCj
		xor	ecx, ecx
		xor	eax, eax
		mov	stream,	ecx
		xor	edx, edx
		mov	tracefile, eax
		xor	eax, eax
		xor	ecx, ecx
		mov	dword_5D7BC8, edx
		mov	dword_5C871C, eax
		mov	[ebp-10h], ecx
		xor	esi, esi
		call	loc_410F5A
		call	loc_43F260
		test	eax, eax
		jz	short loc_40FE52
		push	2010h		; uType
		push	offset ClassName ; lpCaption
		lea	eax, aUnableToInit_1
		push	eax		; src
		call	_T
		pop	ecx
		push	eax		; lpText
		push	0		; hWnd
		call	MessageBoxW
		xor	eax, eax
		jmp	loc_410911
; ---------------------------------------------------------------------------

loc_40FE52:				; CODE XREF: .text:0040FE2Aj
		call	loc_4D16F8
		test	eax, eax
		jz	short loc_40FE7A
		push	2010h		; uType
		push	offset ClassName ; lpCaption
		lea	edx, aUnableToInit_2
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; lpText
		push	0		; hWnd
		call	MessageBoxW

loc_40FE7A:				; CODE XREF: .text:0040FE59j
		call	loc_458580
		test	eax, eax
		jz	short loc_40FEA9
		push	2010h		; uType
		push	offset ClassName ; lpCaption
		lea	ecx, aNotEnoughMem_0
		push	ecx		; src
		call	_T
		pop	ecx
		push	eax		; lpText
		push	0		; hWnd
		call	MessageBoxW
		xor	eax, eax
		jmp	loc_410911
; ---------------------------------------------------------------------------

loc_40FEA9:				; CODE XREF: .text:0040FE81j
		push	0
		call	loc_44A0BC
		pop	ecx
		test	eax, eax
		jz	short loc_40FEDB
		push	2010h		; uType
		push	offset ClassName ; lpCaption
		lea	edx, aNotEnoughMem_0
		push	edx		; src
		call	_T
		pop	ecx
		push	eax		; lpText
		push	0		; hWnd
		call	MessageBoxW
		xor	eax, eax
		jmp	loc_410911
; ---------------------------------------------------------------------------

loc_40FEDB:				; CODE XREF: .text:0040FEB3j
		call	loc_4122D0
		push	0		; mode
		push	0		; destfunc
		push	0		; sortfunc
		push	10h		; nexp
		push	14h		; itemsize
		push	offset stru_5D456C ; sd
		call	Createsorteddata
		add	esp, 18h
		push	1		; flags
		push	5DC0h		; size
		call	Memalloc
		add	esp, 8
		mov	g_Menu,	eax
		cmp	g_Menu,	0
		jz	short loc_40FF6F
		push	0		; a6
		push	offset loc_4BE778 ; a5
		push	0		; a4
		push	0		; a3
		push	3E8h		; a2
		mov	edx, g_Menu
		push	edx		; s
		call	Fillmenuwithcplist
		add	esp, 18h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jle	short loc_40FF5A
		push	0		; newcount
		push	18h		; itemsize
		mov	ecx, [ebp-8]
		inc	ecx		; int
		push	ecx		; count
		mov	eax, g_Menu	; int
		push	eax		; data
		call	Mempurge
		add	esp, 10h
		mov	g_Menu,	eax
		jmp	short loc_40FF6F
; ---------------------------------------------------------------------------

loc_40FF5A:				; CODE XREF: .text:0040FF3Aj
		mov	edx, g_Menu
		push	edx		; data
		call	Memfree
		pop	ecx
		xor	ecx, ecx	; int
		mov	g_Menu,	ecx

loc_40FF6F:				; CODE XREF: .text:0040FF12j
					; .text:0040FF58j
		push	1		; flags
		push	5DC0h		; size
		call	Memalloc
		add	esp, 8
		mov	g_Menu_0, eax
		cmp	g_Menu_0, 0
		jz	short loc_40FFE6
		push	1		; a6
		push	offset loc_4BE850 ; a5
		push	0		; a4
		push	0		; a3
		push	3E8h		; a2
		mov	eax, g_Menu_0
		push	eax		; s
		call	Fillmenuwithcplist
		add	esp, 18h
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jle	short loc_40FFD2
		push	0		; newcount
		push	18h		; itemsize
		mov	edx, [ebp-8]
		inc	edx		; int
		push	edx		; count
		mov	ecx, g_Menu_0	; int
		push	ecx		; data
		call	Mempurge
		add	esp, 10h
		mov	g_Menu_0, eax
		jmp	short loc_40FFE6
; ---------------------------------------------------------------------------

loc_40FFD2:				; CODE XREF: .text:0040FFB1j
		mov	eax, g_Menu_0
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	g_Menu_0, edx

loc_40FFE6:				; CODE XREF: .text:0040FF8Aj
					; .text:0040FFD0j
		cmp	restorewinpos, 0
		jz	loc_410118
		test	byte ptr dword_57FE7C, 2
		jz	short loc_410004
		push	0

loc_40FFFE:
		call	loc_419654
		pop	ecx

loc_410004:				; CODE XREF: .text:0040FFFAj
		test	byte ptr dword_57FE7C, 4
		jz	short loc_410015
		push	0
		call	loc_416DF8
		pop	ecx

loc_410015:				; CODE XREF: .text:0041000Bj
		test	byte ptr dword_57FE7C, 8
		jz	short loc_410026
		push	0
		call	loc_45ACE8
		pop	ecx

loc_410026:				; CODE XREF: .text:0041001Cj
		test	byte ptr dword_57FE7C, 10h
		jz	short loc_410037
		push	0
		call	loc_45C330
		pop	ecx

loc_410037:				; CODE XREF: .text:0041002Dj
		test	byte ptr dword_57FE7C, 20h
		jz	short loc_410048

loc_410040:
		push	0
		call	loc_498288
		pop	ecx

loc_410048:				; CODE XREF: .text:0041003Ej
		test	byte ptr dword_57FE7C, 40h

loc_41004F:
		jz	short loc_410059
		push	0

loc_410053:
		call	loc_4C77A8
		pop	ecx

loc_410059:				; CODE XREF: .text:loc_41004Fj
		test	byte ptr dword_57FE7C, 80h
		jz	short loc_41006A
		push	0
		call	loc_4C87E0
		pop	ecx

loc_41006A:				; CODE XREF: .text:00410060j
		test	byte ptr dword_57FE7C+1, 20h
		jz	short loc_41007B
		push	0
		call	loc_4A07D4
		pop	ecx

loc_41007B:				; CODE XREF: .text:00410071j
		test	byte ptr dword_57FE7C+1, 1
		jz	short loc_41008C
		push	0
		call	loc_4CB1B8
		pop	ecx

loc_41008C:				; CODE XREF: .text:00410082j
		test	byte ptr dword_57FE7C+1, 2
		jz	short loc_41009D
		push	0
		call	loc_4CB634
		pop	ecx

loc_41009D:				; CODE XREF: .text:00410093j
		test	byte ptr dword_57FE7C+1, 4
		jz	short loc_4100AE
		push	0
		call	loc_4C5A28
		pop	ecx

loc_4100AE:				; CODE XREF: .text:004100A4j
		test	byte ptr dword_57FE7C+1, 8
		jz	short loc_4100BF
		push	0
		call	loc_4D65C4
		pop	ecx

loc_4100BF:				; CODE XREF: .text:004100B5j
		test	byte ptr dword_57FE7C+1, 10h
		jz	short loc_4100D4
		push	0
		push	0
		call	loc_4AE7B8
		add	esp, 8

loc_4100D4:				; CODE XREF: .text:004100C6j
		test	byte ptr dword_57FE7C+1, 80h
		jz	short loc_4100E5
		push	0
		call	loc_4DE068
		pop	ecx

loc_4100E5:				; CODE XREF: .text:004100DBj
		test	byte ptr dword_57FE7C+2, 1
		jz	short loc_4100F6
		push	0
		call	loc_4D7318
		pop	ecx

loc_4100F6:				; CODE XREF: .text:004100ECj
		test	byte ptr dword_57FE7C+2, 2
		jz	short loc_410107
		push	0
		call	loc_4D7ED8
		pop	ecx

loc_410107:				; CODE XREF: .text:004100FDj
		test	byte ptr dword_57FE7C, 1
		jz	short loc_410118
		push	0
		call	loc_4776D8
		pop	ecx

loc_410118:				; CODE XREF: .text:0040FFEDj
					; .text:0041010Ej
		cmp	dword_57FE88, 0
		jz	short loc_410126
		call	loc_4D213C

loc_410126:				; CODE XREF: .text:0041011Fj
		push	offset TopLevelExceptionFilter ; lpTopLevelExceptionFilter
		call	SetUnhandledExceptionFilter
		call	loc_4D81E0
		test	eax, eax
		jle	short loc_410144
		push	offset stru_50DDAC
		call	loc_4257CC
		pop	ecx

loc_410144:				; CODE XREF: .text:00410137j
		cmp	dword_57DD2C, 0
		jz	short loc_41016E
		lea	ecx, aGuidlist
		push	ecx		; arglist
		call	loc_4D377C
		pop	ecx
		call	loc_4D323C
		lea	eax, aGuidlist_dat
		push	eax		; arglist
		call	loc_4D3CB0
		pop	ecx
		jmp	short loc_41017C
; ---------------------------------------------------------------------------

loc_41016E:				; CODE XREF: .text:0041014Bj
		cmp	dword_5D407C, 0
		jz	short loc_41017C
		call	loc_4D323C

loc_41017C:				; CODE XREF: .text:0041016Cj
					; .text:00410175j
		cmp	dwProcessId, 0
		jz	short loc_4101D3
		mov	executable, 0
		mov	arguments, 0
		mov	word_5D4FB8, 0
		mov	edx, dwProcessId
		push	edx		; dwProcessId
		call	loc_44B108
		pop	ecx
		test	eax, eax
		jnz	short loc_4101BB
		push	2		; newstatus
		call	Setstatus
		pop	ecx
		jmp	short loc_410238
; ---------------------------------------------------------------------------

loc_4101BB:				; CODE XREF: .text:004101AFj
		mov	ecx, dwProcessId
		push	ecx		; arglist
		lea	eax, aForeground_2I
		push	eax		; format
		call	Error
		add	esp, 8
		jmp	short loc_410238
; ---------------------------------------------------------------------------

loc_4101D3:				; CODE XREF: .text:00410183j
		cmp	dword_57DD2C, 0
		jnz	short loc_410238
		test	edi, edi
		jz	short loc_410238
		cmp	word ptr [edi],	0
		jz	short loc_410238
		cmp	_imp__PathGetArgsW, 0
		jz	short loc_4101F8
		cmp	_imp__PathRemoveArgsW, 0
		jnz	short loc_410207

loc_4101F8:				; CODE XREF: .text:004101EDj
		push	0		; int
		push	0		; int
		push	edi		; arglist
		call	loc_44A400
		add	esp, 0Ch
		jmp	short loc_410238
; ---------------------------------------------------------------------------

loc_410207:				; CODE XREF: .text:004101F6j
		push	edi		; _DWORD
		call	_imp__PathGetArgsW
		push	eax		; src
		push	400h		; n
		push	offset arguments ; dest
		call	StrcopyW
		add	esp, 0Ch
		push	edi
		call	_imp__PathRemoveArgsW
		push	0		; int
		push	offset arguments ; int
		push	edi		; arglist
		call	loc_44A400
		add	esp, 0Ch

loc_410238:				; CODE XREF: .text:004101B9j
					; .text:004101D1j ...
		call	GetTickCount
		mov	edi, eax
		mov	eax, edi
		sub	eax, dword_5D7BC8
		cmp	eax, 7530h
		jb	short loc_410280
		cmp	stream,	0
		jz	short loc_410264
		mov	edx, stream
		push	edx		; stream
		call	_fflush
		pop	ecx

loc_410264:				; CODE XREF: .text:00410255j
		cmp	tracefile, 0
		jz	short loc_41027A
		mov	ecx, tracefile
		push	ecx		; stream
		call	_fflush
		pop	ecx

loc_41027A:				; CODE XREF: .text:0041026Bj
		mov	dword_5D7BC8, edi

loc_410280:				; CODE XREF: .text:0041024Cj
		cmp	word_5D7FD0, 0
		jz	short loc_410307
		mov	dword ptr [ebp-84h], 8
		mov	eax, dword_57FE5C
		cmp	eax, [ebp-84h]
		jge	short loc_4102A8
		mov	eax, offset dword_57FE5C
		jmp	short loc_4102AE
; ---------------------------------------------------------------------------

loc_4102A8:				; CODE XREF: .text:0041029Fj
		lea	eax, [ebp-84h]

loc_4102AE:				; CODE XREF: .text:004102A6j
		xor	edx, edx
		mov	[ebp-88h], edx
		mov	ecx, [eax]
		cmp	ecx, [ebp-88h]
		jge	short loc_4102C8
		lea	edx, [ebp-88h]
		jmp	short loc_4102CA
; ---------------------------------------------------------------------------

loc_4102C8:				; CODE XREF: .text:004102BEj
		mov	edx, eax

loc_4102CA:				; CODE XREF: .text:004102C6j
		mov	eax, [edx]
		mov	dword_57FE5C, eax
		sub	edi, dword_5D81D0
		mov	ecx, dword_57FE5C
		add	ecx, 2
		mov	eax, ecx
		add	eax, eax
		lea	eax, [eax+eax*4]
		lea	eax, [eax+eax*4]
		lea	eax, [eax+eax*4]
		cmp	edi, eax
		jb	short loc_410307
		mov	word_5D7FD0, 0
		xor	edx, edx
		mov	dword_5D81D0, edx
		call	loc_409AAC

loc_410307:				; CODE XREF: .text:00410288j
					; .text:004102EFj
		push	1		; wRemoveMsg
		push	0		; wMsgFilterMax
		push	0		; wMsgFilterMin
		push	0		; hWnd
		lea	ecx, [ebp-0CB4h]
		push	ecx		; lpMsg
		call	PeekMessageW
		test	eax, eax
		jz	loc_41059F
		cmp	hDlg, 0
		jz	short loc_410353
		cmp	dword ptr [ebp-0CB0h], 20Ah
		jz	short loc_410353
		lea	eax, [ebp-0CB4h]
		push	eax		; lpMsg
		mov	edx, hDlg
		push	edx		; hDlg
		call	IsDialogMessageW
		test	eax, eax
		jnz	loc_410238

loc_410353:				; CODE XREF: .text:0041032Aj
					; .text:00410336j
		cmp	hwclient, 0
		jz	short loc_410376
		lea	ecx, [ebp-0CB4h]
		push	ecx		; lpMsg
		mov	eax, hwclient
		push	eax		; hWndClient
		call	TranslateMDISysAccel
		test	eax, eax
		jnz	loc_41058D

loc_410376:				; CODE XREF: .text:0041035Aj
		cmp	dword ptr [ebp-0CB0h], 104h
		jnz	short loc_41038A
		xor	edx, edx
		mov	dword_57E7DC, edx

loc_41038A:				; CODE XREF: .text:00410380j
		cmp	dword ptr [ebp-0CB0h], 100h
		jnz	loc_410430
		cmp	dword ptr [ebp-0CACh], 1Bh
		jnz	loc_410430
		cmp	run.status, 7
		jz	short loc_410401
		cmp	run.status, 8
		jz	short loc_410401
		cmp	run.status, 9
		jz	short loc_410401
		cmp	run.status, 0Ah
		jz	short loc_410401
		cmp	run.status, 0Eh
		jz	short loc_410401
		cmp	run.status, 10h
		jz	short loc_410401
		cmp	run.status, 6
		jz	short loc_410401
		cmp	run.status, 0Bh
		jz	short loc_410401
		cmp	run.status, 0Ch
		jz	short loc_410401
		cmp	run.status, 0Dh
		jnz	short loc_410408

loc_410401:				; CODE XREF: .text:004103AEj
					; .text:004103B7j ...
		call	Pauseprocess
		jmp	short loc_410428
; ---------------------------------------------------------------------------

loc_410408:				; CODE XREF: .text:004103FFj
		call	Getcpuruntracebackstep
		test	eax, eax
		jle	short loc_410428
		push	2A004h		; mode
		push	0		; stackaddr
		push	0		; selsize
		push	0		; dumpaddr
		push	0		; asmaddr
		push	0		; threadid
		call	Setcpu
		add	esp, 18h

loc_410428:				; CODE XREF: .text:00410406j
					; .text:0041040Fj
		push	0
		call	loc_4D2FEC
		pop	ecx

loc_410430:				; CODE XREF: .text:00410394j
					; .text:004103A1j
		cmp	dword ptr [ebp-0CB0h], 20Ah
		jnz	short loc_4104AB
		movsx	ecx, word ptr [ebp-0CA8h]
		mov	[ebp-44h], ecx
		mov	eax, [ebp-0CA8h]
		shr	eax, 10h
		and	ax, 0FFFFh
		movsx	edx, ax
		mov	[ebp-40h], edx
		push	dword ptr [ebp-40h]
		push	dword ptr [ebp-44h] ; Point
		call	WindowFromPoint
		mov	edi, eax
		cmp	edi, hwclient
		jnz	short loc_410476
		mov	edi, [ebp-0CB4h]
		jmp	short loc_410496
; ---------------------------------------------------------------------------

loc_410476:				; CODE XREF: .text:0041046Cj
		mov	eax, edi
		jmp	short loc_410480
; ---------------------------------------------------------------------------

loc_41047A:				; CODE XREF: .text:0041048Aj
		push	eax		; hWnd
		call	GetParent

loc_410480:				; CODE XREF: .text:00410478j
		cmp	eax, hwollymain
		jz	short loc_41048C
		test	eax, eax
		jnz	short loc_41047A

loc_41048C:				; CODE XREF: .text:00410486j
		test	eax, eax
		jnz	short loc_410496
		mov	edi, [ebp-0CB4h]

loc_410496:				; CODE XREF: .text:00410474j
					; .text:0041048Ej
		mov	eax, [ebp-0CACh]
		push	eax		; wp
		push	edi		; hw
		call	Processwmmousewheel
		add	esp, 8
		jmp	loc_410238
; ---------------------------------------------------------------------------

loc_4104AB:				; CODE XREF: .text:0041043Aj
		cmp	dword ptr [ebp-0CB0h], 104h
		jz	short loc_4104C3
		cmp	dword ptr [ebp-0CB0h], 100h
		jnz	short loc_4104ED

loc_4104C3:				; CODE XREF: .text:004104B5j
		mov	edx, [ebp-0CA8h]
		push	edx		; __int16
		mov	ecx, [ebp-0CACh]
		push	ecx		; uVirtKey
		mov	eax, [ebp-0CB0h]
		push	eax		; int
		push	offset stru_50DDAC ;	int
		call	loc_425400
		add	esp, 10h
		test	eax, eax
		jnz	loc_410238

loc_4104ED:				; CODE XREF: .text:004104C1j
		cmp	dword ptr [ebp-0CB0h], 105h
		jnz	short loc_410521
		xor	edx, edx
		cmp	dword ptr [ebp-10h], 0
		mov	dword_57E7DC, edx
		jz	short loc_41051A
		cmp	dword ptr [ebp-0CACh], 12h
		jnz	short loc_41051A
		xor	ecx, ecx
		mov	[ebp-10h], ecx
		jmp	loc_410238
; ---------------------------------------------------------------------------

loc_41051A:				; CODE XREF: .text:00410505j
					; .text:0041050Ej
		xor	eax, eax
		mov	[ebp-10h], eax
		jmp	short loc_410557
; ---------------------------------------------------------------------------

loc_410521:				; CODE XREF: .text:004104F7j
		cmp	dword ptr [ebp-0CB0h], 112h
		jnz	short loc_410557
		cmp	dword_57E7DC, 0
		jz	short loc_410557
		mov	edx, [ebp-0CACh]
		and	edx, 0FFF0h
		cmp	edx, 0F100h
		jnz	short loc_410557
		xor	ecx, ecx
		mov	dword_57E7DC, ecx
		jmp	loc_410238
; ---------------------------------------------------------------------------

loc_410557:				; CODE XREF: .text:0041051Fj
					; .text:0041052Bj ...
		lea	eax, [ebp-0CB4h]
		push	eax		; lpMsg
		call	TranslateMessage
		cmp	hwclient, 0
		jz	short loc_410581
		cmp	dword ptr [ebp-0CB0h], 106h
		jnz	short loc_410581
		cmp	dword ptr [ebp-0CACh], 2Dh
		jz	short loc_41058D

loc_410581:				; CODE XREF: .text:0041056Aj
					; .text:00410576j
		lea	edx, [ebp-0CB4h]
		push	edx		; lpMsg
		call	DispatchMessageW

loc_41058D:				; CODE XREF: .text:00410370j
					; .text:0041057Fj
		cmp	dword ptr [ebp-0CB0h], 12h
		jz	loc_41063C
		jmp	loc_410238
; ---------------------------------------------------------------------------

loc_41059F:				; CODE XREF: .text:0041031Dj
		cmp	dword_57FE88, 0
		jz	short loc_4105AD
		call	loc_4D231C

loc_4105AD:				; CODE XREF: .text:004105A6j
		cmp	esi, run.status
		jz	short loc_4105ED
		xor	ecx, ecx
		mov	[ebp-4], ecx
		jmp	short loc_4105DC
; ---------------------------------------------------------------------------

loc_4105BC:				; CODE XREF: .text:004105E5j
		push	0
		mov	eax, run.status
		push	eax
		push	0
		push	8
		mov	edx, g_pPluginnotify
		mov	ecx, [ebp-4]
		mov	eax, [edx+ecx*4]
		call	eax
		add	esp, 10h
		inc	dword ptr [ebp-4]

loc_4105DC:				; CODE XREF: .text:004105BAj
		mov	edx, [ebp-4]
		cmp	edx, g_nPluginnotify
		jl	short loc_4105BC
		mov	esi, run.status

loc_4105ED:				; CODE XREF: .text:004105B3j
		call	Checkfordebugevent
		cmp	esi, run.status
		jz	loc_410238
		xor	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_410626
; ---------------------------------------------------------------------------

loc_410605:				; CODE XREF: .text:0041062Fj
		push	0
		mov	edx, run.status
		push	edx
		push	0
		push	8
		mov	ecx, g_pPluginnotify
		mov	eax, [ebp-4]
		mov	edx, [ecx+eax*4]
		call	edx
		add	esp, 10h
		inc	dword ptr [ebp-4]

loc_410626:				; CODE XREF: .text:00410603j
		mov	ecx, [ebp-4]
		cmp	ecx, g_nPluginnotify
		jl	short loc_410605
		mov	esi, run.status
		jmp	loc_410238
; ---------------------------------------------------------------------------

loc_41063C:				; CODE XREF: .text:00410594j
		call	olly_destroy
		push	80000000h	; char
		push	0		; arglist
		call	loc_49A5F8
		add	esp, 8
		push	0		; lpTopLevelExceptionFilter
		call	SetUnhandledExceptionFilter
		mov	eax, dword_57FE58
		push	1		; int
		mov	g_ToolbarStatus, eax
		push	0		; lpFileName
		mov	edx, dword_57FE68
		mov	dword_57FE64, edx
		call	loc_40CDD8
		add	esp, 8
		xor	ecx, ecx
		mov	[ebp-4], ecx

loc_41067E:				; CODE XREF: .text:004106A3j
		mov	eax, [ebp-4]
		mov	edx, eax
		lea	eax, [edx+eax*2]
		lea	eax, [edx+eax*8]
		lea	eax, [edx+eax*4]
		shl	eax, 3
		add	eax, offset scheme
		push	eax
		call	loc_411F74
		pop	ecx
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 8
		jl	short loc_41067E
		xor	ecx, ecx
		mov	[ebp-4], ecx

loc_4106AA:				; CODE XREF: .text:004106CEj
		mov	eax, [ebp-4]
		mov	edx, eax
		lea	eax, [edx+eax*4]
		shl	eax, 5
		sub	eax, edx
		shl	eax, 2
		add	eax, offset font
		push	eax
		call	loc_411390
		pop	ecx
		inc	dword ptr [ebp-4]
		cmp	dword ptr [ebp-4], 8
		jl	short loc_4106AA
		call	loc_477AB0
		push	0
		call	olly_reset
		pop	ecx
		cmp	stream,	0
		jz	short loc_410710
		lea	ecx, aEndOfSession_0
		push	ecx		; format
		mov	eax, stream
		push	eax		; stream
		call	_fprintf
		add	esp, 8
		mov	edx, stream
		push	edx		; stream
		call	_fclose
		pop	ecx
		xor	ecx, ecx
		mov	stream,	ecx

loc_410710:				; CODE XREF: .text:004106E4j
		cmp	tracefile, 0
		jz	short loc_410743
		lea	eax, aEndOfSession_0
		push	eax		; format
		mov	edx, tracefile
		push	edx		; stream
		call	_fprintf
		add	esp, 8
		mov	ecx, tracefile
		push	ecx		; stream
		call	_fclose
		pop	ecx
		xor	eax, eax
		mov	tracefile, eax

loc_410743:				; CODE XREF: .text:00410717j
		call	loc_4D177C
		call	loc_43FD14
		cmp	g_Menu_0, 0
		jz	short loc_41076B
		mov	edx, g_Menu_0
		push	edx		; data
		call	Memfree
		pop	ecx
		xor	ecx, ecx
		mov	g_Menu_0, ecx

loc_41076B:				; CODE XREF: .text:00410754j
		cmp	g_Menu,	0
		jz	short loc_410788
		mov	eax, g_Menu
		push	eax		; data
		call	Memfree
		pop	ecx
		xor	edx, edx
		mov	g_Menu,	edx

loc_410788:				; CODE XREF: .text:00410772j
		push	0
		call	loc_417084
		pop	ecx
		push	0FFFFFFFFh
		push	0
		call	loc_45BAAC
		add	esp, 8
		push	offset stru_5D456C ; sd
		call	Destroysorteddata
		pop	ecx
		call	loc_458558
		mov	ecx, [ebp-3Ch]
		push	ecx		; hMem
		call	GlobalFree
		call	loc_4DBCCC
		call	loc_4D31EC
		call	loc_4D3044
		call	CoUninitialize
		push	offset fixfont
		call	loc_411390
		pop	ecx
		push	offset titlefont
		call	loc_411390
		pop	ecx
		push	offset sysfont
		call	loc_411390
		pop	ecx
		lea	eax, aDosapp_fon
		push	eax		; LPCWSTR
		call	RemoveFontResourceW
		mov	edx, g_hInstance
		push	edx		; hInstance
		push	offset ClassName ; lpClassName
		call	UnregisterClassW
		call	loc_4115B4
		call	loc_4C60A4
		call	loc_403C0C
		call	loc_419504
		push	0
		call	loc_4DEDBC
		pop	ecx
		cmp	g_NTDLL, 0
		jz	short loc_410838
		mov	ecx, g_NTDLL
		push	ecx		; hLibModule
		call	FreeLibrary

loc_410838:				; CODE XREF: .text:0041082Aj
		cmp	g_KERNEL32, 0
		jz	short loc_41084C
		mov	eax, g_KERNEL32
		push	eax		; hLibModule
		call	FreeLibrary

loc_41084C:				; CODE XREF: .text:0041083Fj
		cmp	g_USER32, 0
		jz	short loc_410861
		mov	edx, g_USER32
		push	edx		; hLibModule
		call	FreeLibrary

loc_410861:				; CODE XREF: .text:00410853j
		cmp	g_COMCTL32, 0
		jz	short loc_410876
		mov	ecx, g_COMCTL32
		push	ecx		; hLibModule
		call	FreeLibrary

loc_410876:				; CODE XREF: .text:00410868j
		cmp	g_SHLWAPI, 0
		jz	short loc_41088A
		mov	eax, g_SHLWAPI
		push	eax		; hLibModule
		call	FreeLibrary

loc_41088A:				; CODE XREF: .text:0041087Dj
		cmp	g_ADVAPI32, 0
		jz	short loc_41089F
		mov	edx, g_ADVAPI32
		push	edx		; hLibModule
		call	FreeLibrary

loc_41089F:				; CODE XREF: .text:00410891j
		cmp	g_SHELL32, 0
		jz	short loc_4108B4
		mov	ecx, g_SHELL32
		push	ecx		; hLibModule
		call	FreeLibrary

loc_4108B4:				; CODE XREF: .text:004108A6j
		cmp	g_PSAPI, 0
		jz	short loc_4108C8
		mov	eax, g_PSAPI
		push	eax		; hLibModule
		call	FreeLibrary

loc_4108C8:				; CODE XREF: .text:004108BBj
		cmp	g_IMAGEHLP, 0
		jz	short loc_4108DD
		mov	edx, g_IMAGEHLP
		push	edx		; hLibModule
		call	FreeLibrary

loc_4108DD:				; CODE XREF: .text:004108CFj
		cmp	g_RICHED20, 0
		jz	short loc_4108F2
		mov	ecx, g_RICHED20
		push	ecx		; hLibModule
		call	FreeLibrary

loc_4108F2:				; CODE XREF: .text:004108E4j
		cmp	g_MSCOREE, 0
		jz	short loc_410906
		mov	eax, g_MSCOREE
		push	eax		; hLibModule
		call	FreeLibrary

loc_410906:				; CODE XREF: .text:004108F9j
		call	loc_4C93FC
		mov	eax, [ebp-0CACh]

loc_410911:				; CODE XREF: .text:0040D6B2j
					; .text:0040DC7Aj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn	10h
; ---------------------------------------------------------------------------
		align 4
		