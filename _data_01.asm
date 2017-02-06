_data		segment	para public 'DATA' use32
		assume cs:_data
		;org 4F6000h
word_4F6000	dw 2000h		; DATA XREF: .data:off_4F6198o
		dd offset loc_409A8C
		dw 2000h
		dd offset loc_418FAC
		dw 2000h
		dd offset loc_48C46C
		dw 2000h
		dd offset loc_4944F0
		dw 2000h
		dd offset loc_4D3FBC
		dw 0
		dd offset loc_4E6DC4
		dw 2000h
		dd offset loc_4E6DD0
		dw 1C00h
		dd offset __InitVCL
		dw 2000h
		dd offset loc_4E72B4
		dw 2000h
		dd offset unknown_libname_4 ; BCC v4.x/5.x \A BCB v1.0/v7.0 BDS2006 win32 runtime
		dw 0
		dd offset loc_4E8668
		dw 0
		dd offset __init_except
		dw 500h
		dd offset loc_4EB09C
		dw 400h
		dd offset __init_handles
		dw 0A00h
		dd offset __cvt_init
		dw 0A00h
		dd offset __scan_init
		dw 0A00h
		dd offset __cvt_initw
		dw 0A00h
		dd offset __scan_initw
		dw 100h
		dd offset __initMBCSTable
		dw 100h
		dd offset unknown_libname_18 ; BCC v4.x/5.x \A BCB v1.0/v7.0 BDS2006 win32 runtime
		dw 300h
		dd offset __setargv
		dw 200h
		dd offset unknown_libname_19 ; BCC v4.x/5.x \A BCB v1.0/v7.0 BDS2006 win32 runtime
		dw 300h
		dd offset loc_4F07E0
		dw 300h
		dd offset loc_4F09CC
		dw 600h
		dd offset loc_4F0F04
		dw 100h
		dd offset __init_tls
		dw 100h
		dd offset loc_4F12B4
		dw 0
		dd offset loc_4F1438
		dw 0
		dd offset loc_4F1450
		dw 2000h
		dd offset loc_4F39D5
		dw 1F00h
		dd offset __LateVCLInit
		dw 1E00h
		dd offset @System@initialization$qqrv ;	System::initialization\{void\}
		dw 1E00h
		dd offset loc_4012B8
		dw 1E00h
		dd offset loc_4DEFF4
		dw 1E00h
		dd offset loc_4DF2DC
		dw 1E00h
		dd offset loc_4DF02C
		dw 1E00h
		dd offset @Sysutils@initialization$qqrv	; Sysutils::initialization\{void\}
		dw 1E00h
		dd offset loc_4DEFBC
word_4F60E4	dw 2000h		; DATA XREF: .data:004F619Co
					; .data:004F61A0o
		dd offset loc_4E6E10
		dw 0
		dd offset loc_4E7158
		dw 1F00h
		dd offset loc_4F537C
		dw 2000h
		dd offset loc_4E72F0
		dw 2000h
		dd offset loc_4E741C
		dw 100h
		dd offset loc_4E7CF3
		dw 0
		dd offset __exit_except
		dw 0
		dd offset loc_4EB160
		dw 300h
		dd offset __exitargv
		dw 200h
		dd offset loc_4F0630
		dw 300h
		dd offset loc_4F0660
		dw 300h
		dd offset loc_4F0834
		dw 200h
		dd offset loc_4F12C8
		dw 1E00h
		dd offset @System@Finalization$qqrv ; System::Finalization\{void\}
		dw 1E00h
		dd offset loc_401288
		dw 1E00h
		dd offset loc_4DEFC4
		dw 1E00h
		dd offset loc_4DF2AC
		dw 1E00h
		dd offset loc_4DEFFC
		dw 1E00h
		dd offset @Sysutils@Finalization$qqrv ;	Sysutils::Finalization\{void\}
		dw 1E00h
		dd offset loc_4DEF6C
byte_4F615C	db 0FFh			; DATA XREF: .data:004F61A4o
		db 59h
		db 89h
		db 45h
		db 0FCh
		db 83h
		db 7Dh
		db 0FCh
aBorlandCCopyri	db 'Borland C++ - Copyright 1999 Inprise Corporation',0
		db    0
		db    0
		db    0
off_4F6198	dd offset word_4F6000	; DATA XREF: .text:00401041o
		dd offset word_4F60E4
		dd offset word_4F60E4
		dd offset byte_4F615C
byte_4F61A8	db 1			; DATA XREF: .text:004F533Fr
		db    0
		db    0
		db    0
		dd 0
		dd offset WinMain
		dd offset __matherr
		dd offset __matherrl
		dd 0
		dd offset dword_57A878
		dd offset off_57BB48
		dd offset off_57BB4C
		dd offset __handle_setargv
		dd offset __handle_exitargv
		dd offset __handle_wsetargv
		dd offset __handle_wexitargv
		dd offset dword_57A2F8
byte_4F61E0	db 0			; DATA XREF: .text:004E7212r
byte_4F61E1	db 0			; DATA XREF: .text:00401060r
		dd offset dword_57BAA8
off_4F61E6	dd offset dword_57BB70
		dd offset dword_57B8E4
		db    0
; DWORD	dwTlsIndex
dwTlsIndex	dd 0			; DATA XREF: .text:loc_401012r
dword_4F61F3	dd 0			; DATA XREF: .text:0040101Aw
dword_4F61F7	dd 0			; DATA XREF: .text:0040104Dw
; ---------------------------------------------------------------------------
		db 90h

; ---------------------------------------------------------------------------
; Exported entry 376. ___CPPdebugHook
		public ___CPPdebugHook
___CPPdebugHook	db 0Ch dup(0)	; 0 ; DATA XREF: .text:0040100Eo
dword_4F6208	dd 0			; DATA XREF: .text:0040122Co
dword_4F620C	dd 0			; DATA XREF: .text:loc_401189o
dword_4F6210	dd 0			; DATA XREF: .text:0040117Fr
dword_4F6214	dd 0			; DATA XREF: .text:004011FCw
dword_4F6218	dd 0			; DATA XREF: .text:00401203w
; HMODULE hLibModule
hLibModule	dd 0			; DATA XREF: .text:00401175w
		dd 0
g_rare		db    0,   0,	0,   0,	  0,   0,   0,	 0; 0 ;	DATA XREF: .text:004029DBr
		db    0, 13h, 13h,   0,	  0, 13h,   0,	 0; 8
		db    0,   0,	0,   0,	  0,   0,   0,	 0; 16
		db    0,   0,	0,   0,	  0,   0,   0,	 0; 24
		db    3, 13h, 13h, 13h,	13h, 13h, 13h, 13h; 32
		db  13h, 13h, 13h, 13h,	13h, 13h, 13h, 13h; 40
		db    3,   3,	3,   3,	  3,   3,   3,	 3; 48
		db    3,   3, 13h, 13h,	13h, 13h, 13h, 13h; 56
		db  13h,   3,	3,   3,	  3,   3,   3,	 3; 64
		db    3,   3,	3,   3,	  3,   3,   3,	 3; 72
		db    3,   3,	3,   3,	  3,   3,   3,	 3; 80
		db    3,   3,	3, 13h,	13h, 13h, 13h, 13h; 88
		db  13h,   3,	3,   3,	  3,   3,   3,	 3; 96
		db    3,   3,	3,   3,	  3,   3,   3,	 3; 104
		db    3,   3,	3,   3,	  3,   3,   3,	 3; 112
		db    3,   3,	3, 13h,	13h, 13h, 13h,	 0; 120
		db    0,   0,	0,   0,	  0,   0,   0,	 0; 128
		db    0,   0,	2,   0,	  2,   2,   2,	 2; 136
		db    0,   0,	0,   0,	  0,   0,   0,	 0; 144
		db    0,   0,	2,   0,	  2,   2,   2,	 2; 152
		db    0,   0,	0,   2,	  0,   2,   0,	 2; 160
		db    0,   3,	2,   0,	  0,   0,   3,	 2; 168
		db    0,   2,	0,   2,	  0,   2,   0,	 0; 176
		db    0,   2,	2,   0,	  2,   0,   2,	 2; 184
		db    2,   2,	2,   2,	  2,   2,   2,	 2; 192
		db    2,   2,	2,   2,	  2,   2,   2,	 2; 200
		db    2,   2,	2,   2,	  2,   2,   2,	 0; 208
		db    2,   2,	2,   2,	  2,   2,   2,	 2; 216
		db    2,   2,	2,   2,	  2,   2,   2,	 2; 224
		db    2,   2,	2,   2,	  2,   2,   2,	 2; 232
		db    2,   2,	2,   2,	  2,   2,   2,	 0; 240
		db    2,   2,	2,   2,	  2,   2,   2,	 0; 248
dword_4F6324	dd 0			; DATA XREF: .text:00404305r
word_4F6328	dw 500h			; DATA XREF: .text:0040431Dr
aAboutOllydbg:				; DATA XREF: .text:loc_401BB2o
		unicode	0, <About OllyDbg>,0
aOk_1:					; DATA XREF: .text:00401BC4o
		unicode	0, <OK>,0
aOllydbgVI_02iS:			; DATA XREF: .text:00401C06o
		dw 0Ah
		unicode	0, <OllyDbg v!%i.!%02i!%s!%s>
		dw 2 dup(0Ah)
		unicode	0, <32-bit Assembler-Level Debugger>
		dw 2 dup(0Ah)
		unicode	0, <Copyright >
		dw 0A9h
		db ' ',0
aSSAllRightsRes:
		unicode	0, <!%s !%s\lAll Rights Reserved\l\lThe product names mentioned in this>
		unicode	0, <\lsoftware may be trademarks or registered\l>
		unicode	0, <trademarks of their respective owners.\l>
		unicode	0, <\lFor the newest information, visit>,0
a20002013:				; DATA XREF: .text:00401BEFo
		unicode	0, <2000-2013>,0
aOlehYuschuk:				; DATA XREF: .text:00401BEAo
		unicode	0, <Oleh Yuschuk>,0
; const	WCHAR aHttpWww_ollydb
aHttpWww_ollydb:			; DATA XREF: .text:00401C33o
		unicode	0, <http://www.ollydbg.de>,0
; const	WCHAR aOpen
aOpen:					; DATA XREF: .text:00401C7Co
		unicode	0, <open>,0
; const	WCHAR a__23
a__23:					; DATA XREF: .text:00401C70o
		unicode	0, <.>,0
; const	WCHAR TemplateName
TemplateName:				; DATA XREF: .text:00401CC6o
		unicode	0, <DIA_ABOUT>,0
aError:					; DATA XREF: .text:00401D08o
		unicode	0, <Error>,0
aInternalError:				; DATA XREF: .text:00401D9Co
		unicode	0, <Internal error>,0
; const	WCHAR asc_4F65DE
asc_4F65DE:				; DATA XREF: .text:00401486o
		unicode	0, < >,0
; const	WCHAR aStatic
aStatic:				; DATA XREF: .text:0040150Ao
		unicode	0, <STATIC>,0
aDonTDisplayThi:			; DATA XREF: .text:00401E5Bo
		unicode	0, <Don\-t display this message in the future>,0
aCancel:				; DATA XREF: .text:00401E72o
		unicode	0, <Cancel>,0
; const	WCHAR aDia_conderr
aDia_conderr:				; DATA XREF: .text:0040217Do
		unicode	0, <DIA_CONDERR>,0
aNo:					; DATA XREF: .text:004021F2o
		unicode	0, <No>,0
aYes:					; DATA XREF: .text:00402206o
		unicode	0, <Yes>,0
aDonTAskThisQue:			; DATA XREF: .text:0040221Ao
		unicode	0, <Don\-t ask this question again>,0
; const	WCHAR word_4F66B2
word_4F66B2	dw 44h			; DATA XREF: .text:004025ACo
aIa_condyesno:
		unicode	0, <IA_CONDYESNO>,0
; wchar_t a04x_3
a04x_3:					; DATA XREF: .text:004015C8o
		unicode	0, <#!%04X>,0
; const	WCHAR aHistory_0
aHistory_0:				; DATA XREF: .text:004026C5o
		unicode	0, <History>,0
; wchar_t aS_32
aS_32:					; DATA XREF: .text:00401AE0o
		unicode	0, <!%s>,0
; wchar_t aSettings
aSettings:				; DATA XREF: .text:0040293Fo
		unicode	0, <Settings>,0
; wchar_t aI_32
aI_32:					; DATA XREF: .text:0040297Fo
		unicode	0, <!%i>,0
; wchar_t a02x02x02x02x02
a02x02x02x02x02:			; DATA XREF: .text:004039B7o
		unicode	0, <{!%02X!%02X!%02X!%02X-!%02X!%02X>
		unicode 0, <-!%02X!%02X-!%02X!%02X-!%02X!%02X!%02X>
		unicode	0, <!%02X!%02X!%02X}>,0
aMemmonUndeclar:			; DATA XREF: .text:00401753o
		unicode	0, <MEMMON: Undeclared memory block !%08X>,0
aMemmonMemfreeI:			; DATA XREF: .text:0040178Ao
		unicode	0, <MEMMON: Memfree\{\}\-ing block !%08X allocated with Virtalloc\{\}>,0
aMemmonVirtfree:			; DATA XREF: .text:004017C1o
		unicode	0, <MEMMON: Virtfree\{\}\-ing block !%08X allocated with Memalloc\{\}>,0
aMemmonTooShort:			; DATA XREF: .text:004017EFo
		unicode	0, <MEMMON: Too short memory block !%08X>,0
aMemmonCorrupte:			; DATA XREF: .text:00401816o
		unicode	0, <MEMMON: Corrupted memory block !%08X>,0
aMemmonOllydbgM:			; DATA XREF: .text:00403A2Ao
		unicode	0, <MEMMON: OllyDbg memory monitoring active>,0
aMemmonUnableTo:			; DATA XREF: .text:loc_403A4Eo
		unicode	0, <MEMMON: Unable to start memory monitoring>,0
aAbsent		db ' absent',0
aAbsent_0:
		unicode	0, < absent>,0
aCorrupted	db ' corrupted',0
		db    0
aCorrupted_0:
		unicode	0, < corrupted>,0
aGlob		db 'GLOB',0
aVirt		db 'VIRT',0
aGenr		db 'GENR',0
aSMemoryAddr08x	db '!%s memory addr=!%08X size=!%08X from !%08X, !%08X!%s',0Ah,0
aGlob_0:
		unicode	0, <GLOB>,0
aVirt_0:
		unicode	0, <VIRT>,0
aGenr_0:
		unicode	0, <GENR>,0
aMemmonSMemoryA:
		unicode	0, <MEMMON: !%s memory addr=!%08X size=!%08X from !%08X, !%08X!%s>,0
aMemmonTooManyM:			; DATA XREF: .text:00403D1Fo
		unicode	0, <MEMMON: Too many memory blocks, monitoring is unreliable>,0
aLowMemory:				; DATA XREF: .text:00403D5Ao
		unicode	0, <Low memory\:>,0
aUnableToAlloca:			; DATA XREF: .text:00403D4Eo
		unicode	0, <Unable to allocate !%li. bytes of memory>,0
aImpersonatesel	db 'ImpersonateSelf',0
aOpenthreadtoke	db 'OpenThreadToken',0
aAllocateandini	db 'AllocateAndInitializeSid',0
aFreesid	db 'FreeSid',0
aInitializesecu	db 'InitializeSecurityDescriptor',0
aGetlengthsid	db 'GetLengthSid',0
aInitializeacl	db 'InitializeAcl',0
aAddaccessallow	db 'AddAccessAllowedAce',0
aSetsecuritydes	db 'SetSecurityDescriptorDacl',0
aSetsecurityd_0	db 'SetSecurityDescriptorGroup',0
aSetsecurityd_1	db 'SetSecurityDescriptorOwner',0
aIsvalidsecurit	db 'IsValidSecurityDescriptor',0
aAccesscheck	db 'AccessCheck',0
aReverttoself	db 'RevertToSelf',0
; CHAR ProcName[]
ProcName	db 'OpenProcessToken',0 ; DATA XREF: .text:loc_40460Eo
; CHAR aLookupprivileg[]
aLookupprivileg	db 'LookupPrivilegeValueW',0 ; DATA XREF: .text:0040461Bo
; CHAR aAdjusttokenpri[]
aAdjusttokenpri	db 'AdjustTokenPrivileges',0 ; DATA XREF: .text:0040462Do
		db 0
aSedebugprivile:			; DATA XREF: .text:0040467Bo
		unicode	0, <SeDebugPrivilege>,0
; wchar_t asc_4F6D58
asc_4F6D58:				; DATA XREF: .text:004048F0o
		unicode	0, <:>,0
; wchar_t asc_4F6D5C
asc_4F6D5C:				; DATA XREF: .text:00404946o
		unicode	0, <\\>,0
; wchar_t aData
aData:					; DATA XREF: .text:00404B50o
		unicode	0, <::$DATA>,0
aMain:					; DATA XREF: .text:004019D1o
		dw 3Ch
		unicode	0, <main>
		dw 3Eh,	0
aArguments:				; DATA XREF: .text:00404DA6o
		unicode	0, <Arguments:>,0
aCurrentDir:				; DATA XREF: .text:00404DBDo
		unicode	0, <Current dir:>,0
; wchar_t aArgumentsI_1
aArgumentsI_1:				; DATA XREF: .text:00404E02o
		unicode	0, <Arguments[!%i]>,0
; const	WCHAR aArguments_0
aArguments_0:				; DATA XREF: .text:00404E29o
		unicode	0, <Arguments>,0
; wchar_t aCurrentDirI_0
aCurrentDirI_0:				; DATA XREF: .text:00404ECDo
		unicode	0, <Current dir[!%i]>,0
aAppendToExisti:			; DATA XREF: .text:00404F53o
		unicode	0, <Append to existing file>,0
aAddAvailableCo:			; DATA XREF: .text:00404F6Ao
		unicode	0, <Add available contents>,0
aSeparateColumn:			; DATA XREF: .text:00404F81o
		unicode	0, <Separate columns with tabs>,0
aAddTo:					; DATA XREF: .text:00405012o
		unicode	0, <Add to:>,0
aGroup1:				; DATA XREF: .text:00405029o
		unicode	0, <Group 1>,0
aGroup2:				; DATA XREF: .text:00405040o
		unicode	0, <Group 2>,0
aGroup3:				; DATA XREF: .text:00405057o
		unicode	0, <Group 3>,0
aGroup4:				; DATA XREF: .text:0040506Eo
		unicode	0, <Group 4>,0
aAdd_3:					; DATA XREF: .text:loc_4050FDo
		unicode	0, <Add>,0
aStream:				; DATA XREF: .text:00405134o
		unicode	0, <Stream:>,0
aSelectCurren_1:			; DATA XREF: .text:004053D6o
		unicode	0, <Select current directory for executable>,0
; const	WCHAR aArguments0_1
aArguments0_1:				; DATA XREF: .text:004055D9o
		unicode	0, <Arguments[0]>,0
; const	WCHAR aCurrentDir0
aCurrentDir0:				; DATA XREF: .text:0040575Fo
		unicode	0, <Current dir[0]>,0
a__21:
		unicode	0, <*.*>,0
a_c_cpp_h_hpp_a:
		unicode	0, <*.c;*.cpp;*.h;*.hpp;*.asm;>
		unicode 0, <*.pas|*.txt|*.exe;*.dll|*.obj;*>
		unicode	0, <.lib;*.o;*.a>,0
aAnyFile_:
		unicode	0, <Any file \{*.*\}>,0
a_exe_dll:
		unicode	0, <*.exe;*.dll>,0
aExecutableFile:
		unicode	0, <Executable file or DLL \{*.exe,*.dll\}>,0
a_exe_dll_lnk:
		unicode	0, <*.exe;*.dll;*.lnk>,0
aExecutableDllO:
		unicode	0, <Executable, DLL or link \{*.exe,*.dll,*.lnk\}>,0
a_exe_0:
		unicode	0, <*.exe>,0
aExecutableFi_3:
		unicode	0, <Executable file \{*.exe\}>,0
aDynamicLinkL_1:
		unicode	0, <Dynamic-link library \{*.dll\}>,0
aDesktopLink_ln:
		unicode	0, <Desktop link \{*.lnk\}>,0
aObjectFileOrLi:
		unicode	0, <Object file or library \{*.obj,*.lib,*.o,*.a\}>,0
a_obj:
		unicode	0, <*.obj>,0
aObjectFile_obj:
		unicode	0, <Object file \{*.obj\}>,0
a_lib:
		unicode	0, <*.lib>,0
aImportOrObject:
		unicode	0, <Import or object library \{*.lib\}>,0
a_c_cpp_h_hpp_0:
		unicode	0, <*.c;*.cpp;*.h;*.hpp;*.asm;*.pas>,0
aSource_c_cpp_h:
		unicode	0, <Source \{*.c,*.cpp,*.h,*.hpp,*.asm,*.pas\}>,0
a_c_cpp:
		unicode	0, <*.c;*.cpp>,0
aCCSource_c_cpp:
		unicode	0, <C/C++ source \{*.c,*.cpp\}>,0
a_c:
		unicode	0, <*.c>,0
aCSource_c:
		unicode	0, <C source \{*.c\}>,0
aCSource_cpp:
		unicode	0, <C++ source \{*.cpp\}>,0
a_h_hpp:
		unicode	0, <*.h;*.hpp>,0
aHeaderFile_h_h:
		unicode	0, <Header file \{*.h,*.hpp\}>,0
a_h:
		unicode	0, <*.h>,0
aCHeaderFile_h:
		unicode	0, <C Header file \{*.h\}>,0
aCHeaderFile_hp:
		unicode	0, <C++ Header file \{*.hpp\}>,0
a_asm:
		unicode	0, <*.asm>,0
aAssemblerSourc:
		unicode	0, <Assembler source \{*.asm\}>,0
aDelphiPascalSo:
		unicode	0, <Delphi/Pascal source \{*.pas\}>,0
a_txt_1:
		unicode	0, <*.txt>,0
aTextFile_txt:
		unicode	0, <Text file \{*.txt\}>,0
a_bak:
		unicode	0, <*.bak>,0
aBackupFile_bak:
		unicode	0, <Backup file \{*.bak\}>,0
a_arg:
		unicode	0, <*.arg>,0
aArgumentDescri:
		unicode	0, <Argument descriptions \{*.arg\}>,0
a_hlp_chm_0:
		unicode	0, <*.hlp;*.chm>,0
aHelpFile_hlp_c:
		unicode	0, <Help file \{*.hlp,*.chm\}>,0
a_bin_1:
		unicode	0, <*.bin>,0
aBinaryFile_bin:
		unicode	0, <Binary file \{*.bin\}>,0
a_udd_3:
		unicode	0, <*.udd>,0
aUserDataFile_u:
		unicode	0, <User data file \{*.udd\}>,0
a_udl_2:
		unicode	0, <*.udl>,0
aUserImageLibra:
		unicode	0, <User image library \{*.udl\}>,0
a_ini_3:
		unicode	0, <*.ini>,0
aInitialization:
		unicode	0, <Initialization file \{*.ini\}>,0
a_64sFile_64s:
		unicode	0, <!%.64s file \{!%.64s\}>,0
aDia_ofnhook_st:
		unicode	0, <DIA_OFNHOOK_STREAM>,0
aDia_ofnhook_ex:
		unicode	0, <DIA_OFNHOOK_EXE>,0
aDia_ofnhook_te:
		unicode	0, <DIA_OFNHOOK_TEXT>,0
aDia_ofnhook_gr:
		unicode	0, <DIA_OFNHOOK_GROUP>,0
a__50:					; DATA XREF: .text:00406950o
		unicode	0, <.\\>,0
a___5:					; DATA XREF: .text:00406964o
		unicode	0, <..\\>,0
aFileSIsSystemO:			; DATA XREF: .text:00406A4Ao
		unicode	0, <File \-!%s\- is system or read-only. Please try another name.>,0
aFileSAlreadyEx:			; DATA XREF: .text:00406A63o
		unicode	0, <File \-!%s\- already exists. Do you want to overwrite it!?>,0
aFileExists:				; DATA XREF: .text:00406A83o
		unicode	0, <File exists>,0
; wchar_t asc_4F7872
asc_4F7872:				; DATA XREF: .text:loc_401AF2o
		unicode	0, <$>,0
; wchar_t asc_4F7876
asc_4F7876:				; DATA XREF: .text:00401B13o
		unicode	0, <-!%X>,0
; wchar_t asc_4F787E
asc_4F787E:				; DATA XREF: .text:00401B33o
		unicode	0, <+!%X>,0
; wchar_t asc_4F7886
asc_4F7886:				; DATA XREF: .text:loc_401B45o
		unicode	0, < ==>
		dw 3Eh,	0
; wchar_t aModuleentrypoi
aModuleentrypoi:			; DATA XREF: .text:00406B09o
		dw 3Ch
		unicode	0, <ModuleEntryPoint>
		dw 3Eh,	0
; wchar_t aI__6
aI__6:					; DATA XREF: .text:00406C85o
		unicode	0, <[!%i.]>,0
; wchar_t aS_08x
aS_08x:					; DATA XREF: .text:00406D3Ao
		unicode	0, <!%s.!%08X>,0
; wchar_t aS__2
aS__2:					; DATA XREF: .text:00406DF6o
		unicode	0, <!%s.>,0
; wchar_t aRb_2
aRb_2:					; DATA XREF: .text:loc_407222o
		unicode	0, <rb>,0
aTimerI_3lfS7iC:			; DATA XREF: .text:0040764Eo
		unicode	0, <Timer !%i: !%.3lf s, !%7i calls \{!%.3lf us/call\}>,0
		db 0
		db    0
_data		ends
		