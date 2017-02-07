_data		segment	para public 'DATA' use32

stru_50D41C:
		t_menu <$CTW0(""), offset aSelectDefaultG, 0, offset loc_408AC4,0, <7D2h>>	; 0
			
		t_menu <$CTW0(""), offset aSelectLanguage, 0, offset loc_408AC4,\
   0, <7D3h>>	; 1
		t_menu <$CTW0(""), offset aSelectLanguage, 0, offset loc_408AC4,\
   0, <7D4h>>	; 2
		t_menu <$CTW0(""), offset aSelectLanguage, 0, offset loc_408AC4,\
   0, <7D5h>>	; 3
		t_menu <$CTW0(""), offset aSelectLanguage, 0, offset loc_408AC4,\
   0, <7D6h>>	; 4
		t_menu <$CTW0(""), offset aSelectLanguage, 0, offset loc_408AC4,\
   0, <7D7h>>	; 5
		t_menu <$CTW0(""), offset aSelectLanguage, 0, offset loc_408AC4,\
   0, <7D8h>>	; 6
		t_menu <$CTW0(""), offset aSelectLanguage, 0, offset loc_408AC4,\
   0, <7D9h>>	; 7
		t_menu <$CTW0(""), offset aSelectLanguage, 0, offset loc_408AC4,\
   0, <7DAh>>	; 8
		t_menu <$CTW0(""), offset aSelectLanguage, 0, offset loc_408AC4,\
   0, <7DBh>>	; 9
		t_menu <$CTW0(""), offset aSelectLanguage, 0, offset loc_408AC4,\
   0, <7DCh>>	; 10
		t_menu <$CTW0(""), offset aSelectLanguage, 0, offset loc_408AC4,\
   0, <7DDh>>	; 11
		t_menu <$CTW0(""), offset aSelectLanguage, 0, offset loc_408AC4,\
   0, <7DEh>>	; 12
		t_menu <$CTW0(""), offset aSelectLanguage, 0, offset loc_408AC4,\
   0, <7DFh>>	; 13
		t_menu <$CTW0(""), offset aSelectLanguage, 0, offset loc_408AC4,\
   0, <7E0h>>	; 14
		t_menu <$CTW0(""), offset aSelectLanguage, 0, offset loc_408AC4,\
   0, <7E1h>>	; 15
		t_menu <$CTW0(""), offset aSelectLanguage, 0, offset loc_408AC4,\
   0, <7E2h>>	; 16
		t_menu	<0>
	
stru_50D5CC	t_menu <offset aOpen___, offset aOpenExecutab_3, 64h, \
   offset loc_408B24, 0, <835h>>; 0 ; BCC v4.x/5.x	\A BCB v1.0/v7.0	BDS2006	win32 runtime
		t_menu <offset aSetNewArgument, offset aSetCommandLi_0, 65h, \
   offset loc_408B3C, 0, <836h>>; 1
		t_menu <offset aAttach___, offset aAttachToRunnin, 66h, \
   offset loc_408B24, 0, <837h>>; 2
		t_menu <offset aDetach, offset aDetachFromTheD, 67h, \
   offset loc_408B84, 0, <838h>>; 3
		t_menu <offset aDetachAndExit, offset aDetachFromTh_0, 67h, \
   offset loc_408B84, 0, <839h>>; 4
		t_menu <offset aEXit, offset aCloseOllydbg_1, 68h, \
   offset unknown_libname_1, 0, <83Ah>>; 5
		t_menu <offset aGuiLanguage, offset aSelectLanguage, 0, 0, \
   offset stru_50D41C, <7D1h>>; 6
		t_menu <offset asc_50F082, offset aReopenLastDebu, 0, \
   offset loc_408BE8, 0, <83Eh>>; 7
		t_menu <$CTW0(""), offset aOpenSelectedFi, 0, offset loc_408BE8,\
   0, <83Fh>>	; 8
		t_menu <$CTW0(""), offset aOpenSelectedFi, 0, offset loc_408BE8,\
   0, <840h>>	; 9
		t_menu <$CTW0(""), offset aOpenSelectedFi, 0, offset loc_408BE8,\
   0, <841h>>	; 10
		t_menu <$CTW0(""), offset aOpenSelectedFi, 0, offset loc_408BE8,\
   0, <842h>>	; 11
		t_menu <$CTW0(""), offset aOpenSelectedFi, 0, offset loc_408BE8,\
   0, <843h>>	; 12
		t_menu <$CTW0(""), offset aOpenSelectedFi, 0, offset loc_408BE8,\
   0, <844h>>	; 13
		t_menu <$CTW0(""), offset aOpenSelectedFi, 0, offset loc_408BE8,\
   0, <845h>>	; 14
		t_menu <$CTW0(""), offset aOpenSelectedFi, 0, offset loc_408BE8,\
   0, <846h>>	; 15
		t_menu <$CTW0(""), offset aOpenSelectedFi, 0, offset loc_408BE8,\
   0, <847h>>	; 16
		t_menu	<0>
stru_50D77C	t_menu <offset aLog, offset aOpenLogWindow, 6Eh, \
   offset unknown_libname_1, 0, <899h>>; 0	; BCC v4.x/5.x \A BCB v1.0/v7.0 BDS2006 win32 runtime
		t_menu <offset aExecutableMo_0, offset aOpenExecutable, 6Fh, \
   offset unknown_libname_1, 0, <89Ah>>; 1
		t_menu <offset aMemoryMap, offset aOpenMemoryMa_0, 70h, \
   offset unknown_libname_1, 0, <89Bh>>; 2
		t_menu <offset aListOfWindows, offset aOpenListOfWi_0, 71h, \
   offset unknown_libname_1, 0, <89Ch>>; 3
		t_menu <offset aThreads_0, offset aOpenThreadsW_0, 72h, \
   offset unknown_libname_1, 0, <89Dh>>; 4
		t_menu <offset aCpu, offset aOpenCpuWindow, 73h, \
   offset unknown_libname_1, 0, <89Eh>>; 5
		t_menu <offset aHandles_1, offset aOpenHandlesWin, 7Eh, \
   offset unknown_libname_1, 0, <89Fh>>; 6
		t_menu <offset aWatches, offset aOpenWatchesWin, 74h, \
   offset unknown_libname_1, 0, <8A0h>>; 7
		t_menu <offset aSearchResults, offset aOpenSearchRe_0, 75h, \
   offset unknown_libname_1, 0, <8A1h>>; 8
		t_menu <offset aRunTrace_1, offset aOpenRunTraceWi, 76h, \
   offset unknown_libname_1, 0, <8A2h>>; 9
		t_menu <offset aPatches, offset aOpenPatchesW_1, 77h, \
   offset unknown_libname_1, 0, <8A3h>>; 10
		t_menu <offset aInt3Breakpoint, offset aOpenInt3Breakp, 78h, \
   offset unknown_libname_1, 0, <8A4h>>; 11
		t_menu <offset aMemorYBreakpoi, offset aOpenMemoryBr_0, 79h, \
   offset unknown_libname_1, 0, <8A5h>>; 12
		t_menu <offset aHardwareBreakp, offset aOpenHardwareBr, 7Ah, \
   offset unknown_libname_1, 0, <8A6h>>; 13
		t_menu <offset aVehSehChain, offset aOpenListOfInst, 7Dh, \
   offset unknown_libname_1, 0, <8A7h>>; 14
		t_menu <offset aCallStack, offset aOpenCallsStack, 7Fh, \
   offset unknown_libname_1, 0, <8A8h>>; 15
		t_menu <offset aSourceFiles_1, offset aOpenListOfSour, 7Bh, \
   offset unknown_libname_1, 0, <8A9h>>; 16
		t_menu <offset aFile___, offset aViewFile, 7Ch, \
   offset unknown_libname_1, 0, <8AAh>>; 17
		t_menu <offset aDrive___, offset aViewPhysicalSe, 80h, \
   offset loc_408EA4, 0, <8ABh>>; 18
		t_menu	<0>
stru_50D95C	t_menu <offset aRun, offset aRunDebuggedA_0, 82h, offset loc_408EC4, \
   0, <8FDh>>	; 0 ; BCC v4.x/5.x \A BCB v1.0/v7.0 BDS2006 win32 runtime
		t_menu <offset aRunThread, offset aRunOnlyCurre_1, 83h, \
   offset loc_408EC4, 0, <8FFh>>; 1
		t_menu <offset aPause_2, offset aPauseDebugge_0, 84h, \
   offset loc_408EC4, 0, <8FEh>>; 2
		t_menu <offset aStepInto_1, offset aExecuteSingl_0, 85h, \
   offset loc_408EC4, 0, <900h>>; 3
		t_menu <offset aStepOver_1, offset aExecuteSingleC, 86h, \
   offset loc_408EC4, 0, <901h>>; 4
		t_menu <offset aExecuteTillR_1, offset aRunProgramTill, 87h, \
   offset loc_408EC4, 0, <902h>>; 5
		t_menu <offset aExecuteTillUse, offset aRunProgramTi_1, 88h, \
   offset loc_408EC4, 0, <903h>>; 6
		t_menu <offset aCallDllExport, offset aCallProcedureE, 89h, \
   offset loc_40913C, 0, <904h>>; 7
		t_menu <offset aReStart, offset aRestartLastDeb, 8Ah, \
   offset loc_408BE8, 0, <905h>>; 8
		t_menu <offset aClose_0, offset aCloseDebuggedA, 8Bh, \
   offset loc_408EC4, 0, <906h>>; 9
		t_menu <offset aSetAffinity, offset aSetListOfCpusF, 8Ch, \
   offset loc_408EC4, 0, <907h>>; 10
		t_menu <offset aCreateFunction, offset aCreateStandard, 8Dh, \
   offset unknown_libname_1, 0, <908h>>; 11
		t_menu	<0>
stru_50DA94	t_menu <$CTW0(""), offset aOpenOrReopenRu, 96h, \
   offset loc_40915C, 0, <961h>>; 0 ; \=\=
		t_menu <offset aCloseRunTrace, offset aCloseRunTraceP, 97h, \
   offset loc_40915C, 0, <962h>>; 1
		t_menu <offset aAnimateInto, offset aStartAnimation, 98h, \
   offset loc_408EC4, 0, <963h>>; 2
		t_menu <offset aAnimateOver, offset aStartAnimati_1, 99h, \
   offset loc_408EC4, 0, <964h>>; 3
		t_menu <offset aTraceInto_0, offset aTraceCodeEnter, 9Ah, \
   offset loc_408EC4, 0, <965h>>; 4
		t_menu <offset aTraceOver, offset aTraceCodeExecu, 9Bh, \
   offset loc_408EC4, 0, <966h>>; 5
		t_menu <offset aRunHitTrace_0, offset aMarkCommandsTh, 9Ch, \
   offset loc_408EC4, 0, <967h>>; 6
		t_menu <offset aStopHitTrace, offset aStopHitTraceAn, 9Dh, \
   offset loc_408EC4, 0, <968h>>; 7
		t_menu <offset aDiscardHitTrac, offset aDiscardGathere, 0A0h, \
   offset loc_408EC4, 0, <969h>>; 8
		t_menu <offset aSetCondition__, offset aSetTraceBreakC, 9Eh, \
   offset loc_408EC4, 0, <96Ah>>; 9
		t_menu <offset aSetProtocol___, offset aSetCommandsAnd, 9Fh, \
   offset loc_408EC4, 0, <96Bh>>; 10
		t_menu	<0>
stru_50DBB4	t_menu <offset aMain_2, offset aPluginMenu, 0, 0, 0, <0>>; 0
		t_menu	<0>		; \=*MAIN\=
stru_50DBE4	t_menu <offset aOptions___, offset aSetOllydbgOpti, 0AAh, \
   offset unknown_libname_1, 0, <9C5h>>; 0	; BCC v4.x/5.x \A BCB v1.0/v7.0 BDS2006 win32 runtime
		t_menu <offset aLoadOptions___, offset aLoadOllydbgOpt, 0, \
   offset unknown_libname_1, 0, <9C6h>>; 1
		t_menu <offset aSaveOptions___, offset aSaveOllydbgOpt, 0, \
   offset unknown_libname_1, 0, <9C7h>>; 2
		t_menu <offset aPluginOptions_, offset aSetPluginOptio, 0ABh, \
   offset loc_408E0C, 0, <9C8h>>; 3
		t_menu <offset aEditShortcuts_, offset aCustomizeKeybo, 0ACh, \
   offset unknown_libname_1, 0, <9C9h>>; 4
		t_menu	<0>
stru_50DC74	t_menu <offset aAlwaysOnTop, offset aToggleTopmostS, 0B4h, \
   offset loc_408E20, 0, <0A29h>>;	0 ; \=|\=
		t_menu <offset aCascade, offset aCascadeMdiWi_1, 0B5h, \
   offset loc_408E34, 0, <0A2Ah>>;	1
		t_menu <offset aTileHorizontal, offset aTileMdiWindo_3, 0B6h, \
   offset loc_408E34, 0, <0A2Bh>>;	2
		t_menu <offset aTileVertical, offset aTileMdiWindows, 0B7h, \
   offset loc_408E34, 0, <0A2Ch>>;	3
		t_menu <offset aArrangeIcons, offset aArrangeMinimiz, 0B8h, \
   offset loc_408E34, 0, <0A2Dh>>;	4
		t_menu <offset aCloseAll, offset aCloseAllDataWi, 0B9h, \
   offset loc_408E70, 0, <0A2Eh>>;	5
		t_menu <offset asc_50F082, offset aToggleBetweenM, 0BAh, \
   offset loc_4091C4, 0, <0A2Fh>>;	6
		t_menu <offset aPrevious, offset aActivatePrevio, 0BBh, \
   offset loc_4092A8, 0, <0A30h>>;	7
		t_menu <offset aNext, offset aActivateNextWi, 0BCh, offset loc_4092A8,\
   0, <0A31h>>	; 8
		t_menu	<0>
stru_50DD64	t_menu <offset aAbout___, offset aShowVersionAnd, 0BEh, \
   offset unknown_libname_1, 0, <0A8Dh>>; 0 ; BCC v4.x/5.x	\A BCB v1.0/v7.0	BDS2006	win32 runtime
		t_menu <offset aLicense, offset aShowLicenseAgr, 0, \
   offset unknown_libname_1, 0, <0A8Eh>>; 1
		t_menu <0, 0, 0, 0, 0, <0>>; 2
stru_50DDAC:
		t_menu <offset aFile_1, offset aSelectFileOrPr, 0, 0, \
   offset stru_50D5CC, <0>>; 3
		t_menu <offset aView, offset aDebugWindows, 0, 0, offset stru_50D77C, <0>>; 4
		t_menu <offset aDebug, offset aDebuggingFunct, 0, 0, \
   offset stru_50D95C, <0>>; 5
		t_menu <offset aTrace_2, offset aRunTraceFuncti, 0, 0, \
   offset stru_50DA94, <0>>; 6
		t_menu <offset aPlugins, offset aPluginFunction, 0, 0, \
   offset stru_50DBB4, <0>>; 7
		t_menu <offset aOptions, offset aSetOptions, 0, 0, offset stru_50DBE4,\
   <0>>		; 8
			
		t_menu <offset aWindows_1, offset aManipulateWind, 0, 0, \
   offset stru_50DC74, <0>>; 9
		t_menu <offset aHelp_1, offset aHelpFunctions, 0, 0, \
   offset stru_50DD64, <0>>; 10
		t_menu	<0>
stru_50DE84	t_menu <offset aOpen_0, offset aOpenExecutab_3, 64h, \
   offset unknown_libname_1, 0, <835h>>; 0	; BCC v4.x/5.x \A BCB v1.0/v7.0 BDS2006 win32 runtime
		t_menu <offset aRestart, offset aRestartLastDeb, 8Ah, \
   offset loc_408BE8, 0, <905h>>; 1
		t_menu <offset aClose, offset aCloseDebuggedA, 8Bh, offset loc_408EC4,\
   0, <906h>>	; 2
		t_menu <offset aRun_0, offset aRunDebuggedA_1, 82h, offset loc_408EC4,\
   0, <8FDh>>	; 3
		t_menu <offset aRunthread, offset aRunOnlyCurre_1, 83h, \
   offset loc_408EC4, 0, <8FFh>>; 4
		t_menu <offset aPause_0, offset aPauseDebugge_0, 84h, \
   offset loc_408EC4, 0, <8FEh>>; 5
		t_menu <offset aStepin, offset aStepInto, 85h, offset loc_408EC4, 0, <\
   900h>>		; 6
		t_menu <offset aStepover, offset aStepOver_0, 86h, offset loc_408EC4, \
   0, <901h>>	; 7
		t_menu <offset aTrin, offset aTraceInto_0, 9Ah, offset loc_408EC4, 0, <\
   965h>>		; 8
		t_menu <offset aTrover, offset aTraceOver, 9Bh, offset loc_408EC4, 0, <\
   966h>>		; 9
		t_menu <offset aTillret, offset aExecuteTillR_1, 87h, \
   offset loc_408EC4, 0, <902h>>; 10
		t_menu <offset aTilluser, offset aExecuteTillUse, 88h, \
   offset loc_408EC4, 0, <903h>>; 11
		t_menu <offset aLog_2, offset aOpenLogWindow, 6Eh, \
   offset unknown_libname_1, 0, <899h>>; 12
		t_menu <offset aModules, offset aOpenExecutable, 6Fh, \
   offset unknown_libname_1, 0, <89Ah>>; 13
		t_menu <offset aMemory_1, offset aOpenMemoryMa_0, 70h, \
   offset unknown_libname_1, 0, <89Bh>>; 14
		t_menu <offset aWindows_3, offset aOpenListOfWi_0, 71h, \
   offset unknown_libname_1, 0, <89Ch>>; 15
		t_menu <offset aThreads_2, offset aOpenThreadsW_0, 72h, \
   offset unknown_libname_1, 0, <89Dh>>; 16
		t_menu <offset aCpu+2, offset aOpenCpuWindow, 73h, \
   offset unknown_libname_1, 0, <89Eh>>; 17
		t_menu <offset aSearch_5, offset aOpenSearchRe_0, 75h, \
   offset unknown_libname_1, 0, <8A1h>>; 18
		t_menu <offset aTrace_3, offset aOpenRunTraceWi, 76h, \
   offset unknown_libname_1, 0, <8A2h>>; 19
		t_menu <offset aStack_2, offset aOpenCallStackW, 7Fh, \
   offset unknown_libname_1, 0, <8A8h>>; 20
		t_menu <offset aBpoints, offset aOpenInt3Breakp, 78h, \
   offset unknown_libname_1, 0, <8A4h>>; 21
		t_menu <offset aBpmem_1, offset aOpenMemoryBr_0, 79h, \
   offset unknown_libname_1, 0, <8A5h>>; 22
		t_menu <offset aBphard_1, offset aOpenHardwareBr, 7Ah, \
   offset unknown_libname_1, 0, <8A6h>>; 23
		t_menu <offset aOptions_1, offset aSetOllydbgOpti, 0AAh, \
   offset unknown_libname_1, 0, <9C5h>>; 24
		t_menu	<0>
stru_50E0F4	t_public <offset g_GuiLuguage, offset aGuiLanguage+2, 0>; 0
		t_public <offset dword_57FE44, offset aTopmostWindow, 0>; 1 ; \=GUI language\=
		t_public <offset dword_57FE48, offset aShowMainMenuIt, 0>; 2
		t_public <offset dword_57FE4C, offset aShowPopupItems, 0>; 3
		t_public <offset g_IsShowtoolbar, offset aShowToolbar, 1>; 4
		t_public <offset g_IsUseSysColor, offset aUseSystemColou, 0>; 5
		t_public <offset g_ToolbarStatus, offset aStatusInToolba, 0>; 6
		t_public <offset dword_57FE5C, offset aFlashDuration, 1>; 7
		t_public <offset dword_57FE60, offset aAutoupdateIn_1, 4>; 8
		t_public <offset dword_57FE64, offset aModeOfMainWind, 0>; 9
		t_public <offset dword_57FE7C, offset aRestoreWindows, 0>; 10
		t_public <offset dword_57FE98, offset aBringOllydbg_0, 1>; 11
		t_public <offset restorewinpos, offset aRestoreWindowP, 1>; 12
		t_public <offset dword_57FEA0, offset aRestoreWidthOf, 0>; 13
		t_public <offset dword_57FEA4, offset aRestoreSorti_0, 1>; 14
		t_public <offset dword_57FEA8, offset aHighlightSorte, 1>; 15
		t_public <offset dword_57FEAC, offset aRightClickSele, 1>; 16
		t_public <offset fi, offset aIndexOfDefault, 1>; 17
		t_public <offset dword_582DF0, offset aIndexOfDefau_0, 3>; 18
		t_public <offset g_Color_index, offset aIndexOfDefau_1, 0>; 19
		t_public <offset dword_586108, offset aCodeHighlighti, 0>; 20
		t_public <offset dword_58610C, offset aHorizontalScro, 0>; 21
		t_public <offset dword_586110, offset aSnowFreeDrawin, 1>; 22
		t_public <offset dword_57E7D8, offset aAppendArgument, 1>; 23
		t_public <offset dword_57DD30, offset aAllowDiacrit_0, 0>; 24
		t_public <offset dword_57DD34, offset aDecodePascal_0, 1>; 25
		t_public <offset dword_57DD38, offset aUseIstextuni_0, 0>; 26
		t_public <offset dword_57DD3C, offset aStringDecoding, 0>; 27
		t_public <offset dword_57DE4C, offset aFileGraphMode, 1>; 28
		t_public <offset dword_57DE50, offset aPutAsciiTextTo, 0>; 29
		t_public <offset dword_57DD48, offset aMonitorInterna, 0>; 30
		t_public <offset dword_5BE218, offset aDialogFontMode, 0>; 31
		t_public <offset dword_5BE21C, offset aFontInDialogs, 0>; 32
		t_public <offset dword_5BE220, offset aAlignDialogs, 1>; 33
		t_public <offset unk_5BE224, offset aGlobalSearch, 1>; 34
		t_public <offset dword_5BE228, offset aAlignedSearc_0, 1>; 35
		t_public <offset dword_5BE22C, offset aSearchAccuracy, 0>; 36
		t_public <offset dword_5BE230, offset aIgnoreCase, 0>; 37
		t_public <offset dword_5BE6DC, offset aSearchDirectio, 1>; 38
		t_public <offset unk_5BE234, offset aFloatingSearch, 0>; 39
		t_public <offset dword_5BE6E0, offset aAllowExtraComm, 1>; 40
		t_public <offset dword_5BE6E4, offset aAllowJumpsInto, 0>; 41
		t_public <offset dword_5BE238, offset aKeepSizeOfHexE, 1>; 42
		t_public <offset a3, offset aListSortingMod, 0>; 43
		t_public <offset dword_5BE240, offset aModifyFpuTag, 0>; 44
		t_public <offset dword_5BE244, offset aMmxDisplayMode, 0>; 45
		t_public <offset dword_5BE248, offset aShowTooltipsIn, 1>; 46
		t_public <offset X, offset aXOptionsCoordi, 0FFFFFFFFh>; 47
		t_public <offset Y, offset aYOptionsCoordi, 0FFFFFFFFh>; 48
		t_public <offset dword_5BE254, offset aLastSelectedOp, 0>; 49
		t_public <offset dword_5BE258, offset aLastEditedFont, 0>; 50
		t_public <offset dword_5BE25C, offset aLastEditedSche, 0>; 51
		t_public <offset dword_5BE260, offset aLastEditedColo, 0>; 52
		t_public <offset dword_5BE264, offset aLastEditedHigh, 1>; 53
		t_public <offset dword_5BE268, offset aLastEditedHi_0, 0>; 54
		t_public <offset dword_57E668, offset aWarnmodeWhenNo, 1>; 55
		t_public <offset dword_57E674, offset aWarnmodeForPac, 0>; 56
		t_public <offset dword_57E678, offset aWarnmodeWhenIn, 0>; 57
		t_public <offset g_Cond, offset aWarnmodeWhenBr, 0>; 58
		t_public <offset dword_57E684, offset aWarnmodeWhenEi, 0>; 59
		t_public <offset dword_57E694, offset aWarnmodeWhenCl, 0>; 60
		t_public <offset dword_57E698, offset aWarnmodeWhenAl, 0>; 61
		t_public <offset dword_57E69C, offset aWarnmodeWhenTh, 0>; 62
		t_public <offset dword_57E6A0, offset aWarnmodeWhenPr, 0>; 63
		t_public <offset dword_57E6A4, offset aWarnmodeWhenAc, 0>; 64
		t_public <offset dword_57E6A8, offset aWarnmodeWhenUn, 0>; 65
		t_public <offset dword_57E6AC, offset aWarnmodeWhenEx, 0>; 66
		t_public <offset dword_57E6B0, offset aWarnmodeWhen_0, 0>; 67
		t_public <offset dword_57E6B4, offset aWarnmodeWhenFi, 0>; 68
		t_public <offset dword_57E6B8, offset aWarnmodeWhenIa, 0>; 69
		t_public <offset dword_57E6BC, offset aWarnmodeWhen_1, 0>; 70
		t_public <offset dword_57E6C0, offset aWarnmodeWhenCo, 0>; 71
		t_public <offset dword_57E6C4, offset aWarnmodeWhenMe, 0>; 72
		t_public <offset dword_57E6C8, offset aWarnmodeWhenMo, 0>; 73
		t_public <offset dword_57E6CC, offset aWarnmodeWhenLa, 0>; 74
		t_public <offset dword_57E6D0, offset aWarnmodeWhen_2, 0>; 75
		t_public <offset dword_5BE698, offset aOnlyAsciiPrint, 0>; 76
		t_public <offset asciicodepage, offset aCodePageForAsc, 0>; 77
		t_public <offset mbcscodepage, offset aCodePageForMul, 0FDE9h>;	78
		t_public <offset dword_5BE6A4, offset aUnderlineFixup, 1>; 79
		t_public <offset dword_5BE6A8, offset aShowJumpDirect, 1>; 80
		t_public <offset dword_5BE6AC, offset aShowJumpPath, 1>; 81
		t_public <offset dword_5BE6B0, offset aShowGrayedPath, 1>; 82
		t_public <offset dword_5BE6B4, offset aFillRestOfComm, 1>; 83
		t_public <offset dword_5BE6B8, offset aActionOnLetter, 1>; 84
		t_public <offset dword_5BE6BC, offset aWideCharacters, 1>; 85
		t_public <offset dword_5BE6C0, offset aDisableGdiSc_0, 0>; 86
		t_public <offset dword_5BE6C4, offset aAutomaticallyB, 0>; 87
		t_public <offset dword_5BE6CC, offset aVisibleLinesWh, 1>; 88
		t_public <offset dword_5BDCC8, offset aIdealDisassemb, 0>; 89
		t_public <offset dword_5BDCCC, offset aDisassembleInL, 0>; 90
		t_public <offset dword_5BDCD0, offset aSeparateArgume, 0>; 91
		t_public <offset dword_5BDCD4, offset aExtraSpaceBetw, 0>; 92
		t_public <offset dword_5BDCD8, offset aShowDefaultSeg, 1>; 93
		t_public <offset dword_5BDCDC, offset aAlwaysShowMemo, 1>; 94
		t_public <offset dword_5BDCE0, offset aNearJumpModifi, 0>; 95
		t_public <offset dword_5BDCE4, offset aAlternativeFor, 1>; 96
		t_public <offset dword_5BDCE8, offset aUseShortFormOf, 0>; 97
		t_public <offset dword_5BDCEC, offset aUseRetInsteadO, 0>; 98
		t_public <offset dword_5BDCF0, offset aSseSizeDecodin, 0>; 99
		t_public <offset dword_5BDCF4, offset aJumpHintDecodi, 0>; 100
		t_public <offset dword_5BDCF8, offset aSizeSensitiveM, 1>; 101
		t_public <offset dword_5BDCFC, offset aTopOfFpuStack, 1>; 102
		t_public <offset dword_5BDD00, offset aShowSymbolicAd, 1>; 103
		t_public <offset dword_5BDD04, offset aShowLocalMod_0, 0>; 104
		t_public <offset dword_57FE94, offset aDemangleSymb_0, 0>; 105
		t_public <offset dword_5BE214, offset aShowCallArgume, 0>; 106
		t_public <offset dword_5BE6E8, offset aTypeOfBreakCom, 0>; 107
		t_public <offset dword_5C8938, offset aUseHardwareBre, 1>; 108
		t_public <offset dword_5C893C, offset aHideUnimport_0, 1>; 109
		t_public <offset g_IsOrigHandle, offset aShowOriginalHa, 0>; 110
		t_public <offset dword_5C8940, offset aPermanentBreak, 0>; 111
		t_public <offset dword_5C8944, offset aFirstPause, 3>; 112
		t_public <offset dword_5C8948, offset aPauseOnAttach, 1>; 113
		t_public <offset dword_5C894C, offset aPauseOnLoaddll, 1>; 114
		t_public <offset dword_5C8950, offset aAssumeFlatSe_0, 0>; 115
		t_public <offset dword_5C8968, offset aIgnoreAccess_0, 1>; 116
		t_public <offset dword_5C896C, offset aIgnoreInt3InMs, 1>; 117
		t_public <offset dword_5C8970, offset aIgnoreInt3, 0>; 118
		t_public <offset dword_5C8974, offset aIgnoreTrap, 0>; 119
		t_public <offset dword_5C8978, offset aIgnoreAccessVi, 0>; 120
		t_public <offset dword_5C897C, offset aIgnoreDivision, 0>; 121
		t_public <offset dword_5C8980, offset aIgnoreIllegalI, 0>; 122
		t_public <offset dword_5C8984, offset aIgnoreAllFpuEx, 0>; 123
		t_public <offset dword_5C8988, offset aIgnoreAllServi, 1>; 124
		t_public <offset dword_5C898C, offset aIgnoreCustomEx, 0>; 125
		t_public <offset dword_5C8A90, offset aCallUnhandlede, 0>; 126
		t_public <offset dword_5C8A94, offset aReportIgnoredE, 1>; 127
		t_public <offset dword_5C8954, offset aAutoreturn, 0>; 128
		t_public <offset dword_5C8958, offset aUseDebugbreakp, 0>; 129
		t_public <offset dword_5C895C, offset aUseExitprocess, 1>; 130
		t_public <offset dword_5C8960, offset aWarnWhenFreque, 1>; 131
		t_public <offset dword_5C8964, offset aAllowCommandEm, 1>; 132
		t_public <offset dword_5D4564, offset aDebugChildProc, 0>; 133
		t_public <offset dword_5CBB90, offset aAnimationDel_0, 0>; 134
		t_public <offset dword_5C8A98, offset aStopOnNewDll, 0>; 135
		t_public <offset dword_5C8A9C, offset aStopOnDllUnloa, 0>; 136
		t_public <offset dword_5C8AA0, offset aStopOnlyOnSele, 0>; 137
		t_public <offset dword_5CBB64, offset aStopOnDebugStr, 0>; 138
		t_public <offset dword_5CBB68, offset aStopOnNewThrea, 0>; 139
		t_public <offset dword_5CBB6C, offset aStopOnThreadEn, 0>; 140
		t_public <offset g_IsUseDbghelp, offset aEnableUseOfDeb, 1>; 141
		t_public <offset dword_5D3A5C, offset aUseDbghelpToWa, 0>; 142
		t_public <offset dword_5D3A60, offset aUseMicrosoftSy, 0>; 143
		t_public <offset dword_5D40C0, offset aHideMissingSou, 1>; 144
		t_public <offset dword_5D40C4, offset aHideInternalCo, 1>; 145
		t_public <offset skipspaces, offset aSkipLeadingSpa, 1>; 146
		t_public <offset dword_5D3A34, offset aHideCallDllWin, 0>; 147
		t_public <offset dword_5D3A38, offset aPauseAfterCall, 1>; 148
		t_public <offset dword_5D4080, offset aAllow_netDebug, 1>; 149
		t_public <offset dword_5D407C, offset aScanRegistryFo, 0>; 150
		t_public <offset dword_5C8930, offset aRunTraceProt_0, 0>; 151
		t_public <offset dword_5CBB70, offset aRunTraceBuffer, 2>; 152
		t_public <offset dword_5CBB78, offset aTraceOverSyste, 1>; 153
		t_public <offset dword_5CBB7C, offset aTraceOverStrin, 1>; 154
		t_public <offset dword_5CBB80, offset aSaveTracedComm, 0>; 155
		t_public <offset dword_5CBB84, offset aSaveAccessedMe, 0>; 156
		t_public <offset dword_5CBB88, offset aSaveFpuRegiste, 0>; 157
		t_public <offset dword_5CBB8C, offset aSynchronizeC_1, 1>; 158
		t_public <offset dword_5CBB9C, offset aSetBreakpoin_0, 0>; 159
		t_public <offset dword_5CBBA0, offset aHitTraceModeFo, 0>; 160
		t_public <offset dword_5CBBA4, offset aStopHitTraceIf, 0>; 161
		t_public <offset dword_5CBBA8, offset aHitTraceOutsid, 2>; 162
		t_public <offset dword_5CBBAC, offset aKeepHitTraceBe, 1>; 163
		t_public <offset dword_5CBBB0, offset aShowSymbolicNa, 0>; 164
		t_public <offset dword_5CBBB4, offset aAllowAutomatic, 1>; 165
		t_public <offset dword_5CBBB8, offset aSfxExtractionM, 0>; 166
		t_public <offset dword_5CBBBC, offset aUseRealSfxEntr, 1>; 167
		t_public <offset dword_5CBBC0, offset aIgnoreSfxExcep, 1>; 168
		t_public <offset dword_5BE6D0, offset aUsePredictio_0, 1>; 169
		t_public <offset dword_5BE6D4, offset aReferencesIncl, 1>; 170
		t_public <offset dword_5BE6D8, offset aAddOriginToSea, 0>; 171
		t_public <offset g_ResLuguage, offset aDefaultResourc, 9>; 172
		t_public <offset dword_57FEB0, offset aGrayInactiveWi, 1>; 173
		t_public <offset dword_57FEB4, offset aGrayRegisterNa, 0>; 174
		t_public <offset dword_5BE6F0, offset aCenterFollowed, 1>; 175
		t_public <offset dword_5BE6F4, offset aDecodeRegister, 1>; 176
		t_public <offset dword_5BE6F8, offset aHideCurrentReg, 0>; 177
		t_public <offset dword_5BE6FC, offset aRemoveCodeHili, 1>; 178
		t_public <offset dword_5BE700, offset aAutomaticallyS, 0>; 179
		t_public <offset dword_5CBBC8, offset aEnableSseRegis, 1>; 180
		t_public <offset dword_57DE54, offset aLabelDisplayMo, 0>; 181
		t_public <offset dword_57DE58, offset aHighlightSymbo, 0>; 182
		t_public <offset dword_5BE478, offset aLogBufferSizeI, 2>; 183
		t_public <offset dword_5BE688, offset aTabulateColumn, 0>; 184
		t_public <offset dword_5BE68C, offset aAppendDataToEx, 0>; 185
		t_public <offset dword_5BDD10, offset aAutoAnalysis, 3>; 186
		t_public <offset dword_5BDD14, offset aNoPredictedReg, 0>; 187
		t_public <offset dword_5BDD1C, offset aFuzzyAnalysis, 1>; 188
		t_public <offset dword_5BDD18, offset aReportProblems, 0>; 189
		t_public <offset dword_5BDD20, offset aDecodeTricks, 1>; 190
		t_public <offset dword_5BDD24, offset aMarkTricks, 0>; 191
		t_public <offset dword_5BDD98, offset aSearchForLibra, 1>; 192
		t_public <offset dword_5BDD28, offset aDecodeIfsAsSwi, 0>; 193
		t_public <offset dword_5BDD2C, offset aMarkOnlyImport, 0>; 194
		t_public <offset dword_5BDD30, offset aFunctionsPrese, 1>; 195
		t_public <offset dword_5BDD34, offset aIgnoreBraces_1, 1>; 196
		t_public <offset dword_5BDD38, offset aGuessNumberO_0, 1>; 197
		t_public <offset dword_5BDD3C, offset aGuessArguments, 0>; 198
		t_public <offset dword_5BDD40, offset aGuessMeaningOf, 1>; 199
		t_public <offset dword_5BDD44, offset aShowUncertainA, 1>; 200
		t_public <offset dword_5BDD48, offset aRenameValueDep, 0>; 201
		t_public <offset dword_5BDD4C, offset aShowPredictedV, 1>; 202
		t_public <offset dword_5BDD50, offset aShowArgAndLo_0, 1>; 203
		t_public <offset dword_5BDD54, offset aUseSymbolicNam, 0>; 204
		t_public <offset dword_5BDD58, offset aShowArgAndLoca, 1>; 205
		t_public <offset dword_5BDD5C, offset aShowLoops, 1>; 206
		t_public <offset dword_5BDD60, offset aAcceptFarCalls, 0>; 207
		t_public <offset dword_5BDD64, offset aAcceptDirectSe, 0>; 208
		t_public <offset dword_5BDD68, offset aAcceptPrivileg, 0>; 209
		t_public <offset dword_5BDD6C, offset aAcceptIOComman, 0>; 210
		t_public <offset dword_5BDD70, offset aAcceptNops, 1>; 211
		t_public <offset dword_5BDD74, offset aAcceptShiftsOu, 0>; 212
		t_public <offset dword_5BDD78, offset aAcceptSuperflu, 0>; 213
		t_public <offset dword_5BDD7C, offset aAcceptDefaultP, 1>; 214
		t_public <offset dword_5BDD80, offset aAcceptValidLoc, 1>; 215
		t_public <offset dword_5BDD84, offset aAcceptUnaligne, 1>; 216
		t_public <offset dword_5BDD88, offset aAcceptSuspicio, 0>; 217
		t_public <offset dword_5BDD8C, offset aAcceptNonStand, 1>; 218
		t_public <offset dword_5BDD90, offset aAcceptAccessTo, 0>; 219
		t_public <offset dword_5BDD94, offset aAcceptInterrup, 0>; 220
		t_public <offset dword_57FE80, offset aBlockExternalW, 1>; 221
		t_public <offset dword_57FE88, offset aActivateSpeech, 0>; 222
		t_public <offset dword_57FE8C, offset aTranslateCom_0, 1>; 223
		t_public <offset dword_57FE90, offset aSkipLeadingZer, 1>; 224
		t_public  <0>
stru_50EB8C	t_path <offset word_5BE47C, 1, offset aLogFile, \
   offset aErrorlog_txt+0Ah>; 0 ; \=\=
		t_path <offset word_5C8724, 1, offset aTraceSaveFile, \
   offset aTrace_txt>; 1
		t_path <offset word_57EBF0, 1, offset aDataDirectory, offset a_Udd>; 2
		t_path <offset word_57EDF8, 1, offset aStandardLibrar, offset a_Udl>; 3
		t_path <offset plugindir, 1, offset aPluginDirect_0, offset a_Plugins>;	4
		t_path <offset path, 1, offset aApiHelpFile, $CTW0("")>; 5
		t_path <offset word_57F000, 1, offset aAlternativeIni, \
   $CTW0("")>; 6
		t_path <offset word_57F618, 0, offset aLastViewedFile, \
   $CTW0("")>; 7
		t_path <offset dest, 0, offset aLastKeyboardSh, offset aShortcuts_ini>;	8
		t_path <offset word_5BDD9C, 0, offset aLastObjectOrLi, \
   $CTW0("")>; 9
		t_path <offset word_5BDFA4, 0, offset aLastImageLibra, \
   $CTW0("")>; 10
		t_path	<0>
		
; wchar_t format
aS____________:					; DATA XREF: .text:00409C60o
		unicode	0, <!%s>,0
aProcessPaused:				; DATA XREF: .text:00409EB7o
		unicode	0, <Process paused>,0
aProcessTermina:			; DATA XREF: .text:00409EDCo
		unicode	0, <Process terminated>,0
; wchar_t aEnglish
aEnglish:				; DATA XREF: .text:00408AEAo
		unicode	0, <English>,0
; const	WCHAR section
_section:				; DATA XREF: .text:00408B63o
		unicode	0, <History>,0
; const	WCHAR key
key:					; DATA XREF: .text:00408B5Eo
		unicode	0, <Executable[0]>,0
; wchar_t aExecutableI
aExecutableI:				; DATA XREF: .text:00408C40o
		unicode	0, <Executable[!%i]>,0
; wchar_t aArgumentsI
aArgumentsI:				; DATA XREF: .text:00408C84o
		unicode	0, <Arguments[!%i]>,0
; wchar_t a___
a___:					; DATA XREF: .text:loc_408D28o
		unicode	0, <...>,0
; wchar_t aIS
aIS:					; DATA XREF: .text:00408D8Eo
		unicode	0, <\A!%i !%s>,0
; wchar_t aIS_3
aIS_3:					; DATA XREF: .text:00408DACo
		unicode	0, <\A!%i \=!%s\=>,0
; wchar_t asc_50ED34
asc_50ED34:				; DATA XREF: .text:00408DCCo
		unicode	0, < >,0
aClearRunTrace:				; DATA XREF: .text:00409177o
		unicode	0, <Clear run trace>,0
aOpenRunTrace:				; DATA XREF: .text:loc_409191o
		unicode	0, <Open run trace>,0
aRestoreWindow:				; DATA XREF: .text:00409209o
		unicode	0, <Restore window>,0
aMaximizeWindow:			; DATA XREF: .text:loc_409225o
		unicode	0, <Maximize window>,0
aSelectDefaultG:			; DATA XREF: .data:stru_50D41Co
		unicode	0, <Select default GUI language \{English\}>,0
aSelectLanguageUsedByOllydb:
aSelectLanguage:			; DATA XREF: .data:stru_50D41Co
					; .data:stru_50D5CCo
		unicode	0, <Select language used by >
; const	WCHAR aOllydbg
aOllydbg:				; DATA XREF: .text:0040A326o
		unicode	0, <OllyDbg>,0
aOpen___:				; DATA XREF: .data:stru_50D5CCo
		unicode	0, <\AOpen...>,0
aOpenExecutab_3:			; DATA XREF: .data:stru_50D5CCo
					; .data:stru_50DE84o
		unicode	0, <Open executable file for debugging>,0
aSetNewArgument:			; DATA XREF: .data:stru_50D5CCo
		unicode	0, <Set new arguments...>,0
aSetCommandLi_0:			; DATA XREF: .data:stru_50D5CCo
		unicode	0, <Set command line arguments for the next run>,0
aAttach___:				; DATA XREF: .data:stru_50D5CCo
		unicode	0, <\AAttach...>,0
aAttachToRunnin:			; DATA XREF: .data:stru_50D5CCo
		unicode	0, <Attach to running process>,0
aDetach:				; DATA XREF: .data:stru_50D5CCo
		unicode	0, <\ADetach>,0
aDetachFromTheD:			; DATA XREF: .data:stru_50D5CCo
		unicode	0, <Detach from the debugged process>,0
aDetachAndExit:				; DATA XREF: .data:stru_50D5CCo
		unicode	0, <\ADetach and exit>,0
aDetachFromTh_0:			; DATA XREF: .data:stru_50D5CCo
		unicode	0, <Detach from the debugged process >
		unicode 0, <and close OllyDbg>,0
aEXit:					; DATA XREF: .data:stru_50D5CCo
		unicode	0, <E\Axit>,0
aCloseOllydbg_1:			; DATA XREF: .data:stru_50D5CCo
		unicode	0, <Close OllyDbg>,0
aGuiLanguage:				; DATA XREF: .data:stru_50D5CCo
					; .data:stru_50E0F4o
		unicode	0, <|GUI language>,0
asc_50F082:				; DATA XREF: .data:stru_50D5CCo
					; .data:stru_50DC74o
		unicode	0, <|>,0
aReopenLastDebu:			; DATA XREF: .data:stru_50D5CCo
		unicode	0, <Reopen last debugged application>,0
aOpenSelectedFi:			; DATA XREF: .data:stru_50D5CCo
		unicode	0, <Open selected file>,0
aLog:					; DATA XREF: .data:stru_50D77Co
		unicode	0, <\ALog>,0
aOpenLogWindow:				; DATA XREF: .data:stru_50D77Co
					; .data:stru_50DE84o
		unicode	0, <Open Log window>,0
aExecutableMo_0:			; DATA XREF: .data:stru_50D77Co
		unicode	0, <\AExecutable modules>,0
aOpenExecutable:			; DATA XREF: .data:stru_50D77Co
					; .data:stru_50DE84o
		unicode	0, <Open Executable modules window>,0
aMemoryMap:				; DATA XREF: .data:stru_50D77Co
		unicode	0, <\AMemory map>,0
aOpenMemoryMa_0:			; DATA XREF: .data:stru_50D77Co
					; .data:stru_50DE84o
		unicode	0, <Open Memory map window>,0
aListOfWindows:				; DATA XREF: .data:stru_50D77Co
		unicode	0, <List of \Awindows>,0
aOpenListOfWi_0:			; DATA XREF: .data:stru_50D77Co
					; .data:stru_50DE84o
		unicode	0, <Open list of windows>,0
aThreads_0:				; DATA XREF: .data:stru_50D77Co
		unicode	0, <\AThreads>,0
aOpenThreadsW_0:			; DATA XREF: .data:stru_50D77Co
					; .data:stru_50DE84o
		unicode	0, <Open Threads window>,0
aCpu:					; DATA XREF: .data:stru_50D77Co
					; .data:stru_50DE84o
		unicode	0, <\ACPU>,0
aOpenCpuWindow:				; DATA XREF: .data:stru_50D77Co
					; .data:stru_50DE84o
		unicode	0, <Open CPU window>,0
aHandles_1:				; DATA XREF: .data:stru_50D77Co
		unicode	0, <Handles>,0
aOpenHandlesWin:			; DATA XREF: .data:stru_50D77Co
		unicode	0, <Open Handles window>,0
aWatches:				; DATA XREF: .data:stru_50D77Co
		unicode	0, <Watches>,0
aOpenWatchesWin:			; DATA XREF: .data:stru_50D77Co
		unicode	0, <Open Watches window>,0
aSearchResults:				; DATA XREF: .data:stru_50D77Co
		unicode	0, <Search results>,0
aOpenSearchRe_0:			; DATA XREF: .data:stru_50D77Co
					; .data:stru_50DE84o
		unicode	0, <Open Search results window>,0
aRunTrace_1:				; DATA XREF: .data:stru_50D77Co
		unicode	0, <Run trace>,0
aOpenRunTraceWi:			; DATA XREF: .data:stru_50D77Co
					; .data:stru_50DE84o
		unicode	0, <Open Run trace window>,0
aPatches:				; DATA XREF: .data:stru_50D77Co
		unicode	0, <\APatches>,0
aOpenPatchesW_1:			; DATA XREF: .data:stru_50D77Co
		unicode	0, <Open Patches window>,0
aInt3Breakpoint:			; DATA XREF: .data:stru_50D77Co
		unicode	0, <|INT3 \Abreakpoints>,0
aOpenInt3Breakp:			; DATA XREF: .data:stru_50D77Co
					; .data:stru_50DE84o
		unicode	0, <Open INT3 breakpoints window>,0
aMemorYBreakpoi:			; DATA XREF: .data:stru_50D77Co
		unicode	0, <Memor\Ay breakpoints>,0
aOpenMemoryBr_0:			; DATA XREF: .data:stru_50D77Co
					; .data:stru_50DE84o
		unicode	0, <Open Memory breakpoints window>,0
aHardwareBreakp:			; DATA XREF: .data:stru_50D77Co
		unicode	0, <\AHardware breakpoints>,0
aOpenHardwareBr:			; DATA XREF: .data:stru_50D77Co
					; .data:stru_50DE84o
		unicode	0, <Open Hardware breakpoints window>,0
aVehSehChain:				; DATA XREF: .data:stru_50D77Co
		unicode	0, <VEH/SEH chain>,0
aOpenListOfInst:			; DATA XREF: .data:stru_50D77Co
		unicode	0, <Open list of installed exception handlers>,0
aCallStack:				; DATA XREF: .data:stru_50D77Co
		unicode	0, <Call stack>,0
aOpenCallsStack:			; DATA XREF: .data:stru_50D77Co
		unicode	0, <Open Calls stack window>,0
aSourceFiles_1:				; DATA XREF: .data:stru_50D77Co
		unicode	0, <\ASource files>,0
aOpenListOfSour:			; DATA XREF: .data:stru_50D77Co
		unicode	0, <Open list of source files>,0
aFile___:				; DATA XREF: .data:stru_50D77Co
		unicode	0, <|File...>,0
aViewFile:				; DATA XREF: .data:stru_50D77Co
		unicode	0, <View file>,0
aDrive___:				; DATA XREF: .data:stru_50D77Co
		unicode	0, <Drive...>,0
aViewPhysicalSe:			; DATA XREF: .data:stru_50D77Co
		unicode	0, <View physical sectors on the disk>,0
aRun:					; DATA XREF: .data:stru_50D95Co
		unicode	0, <\ARun>,0
aRunDebuggedA_0:			; DATA XREF: .data:stru_50D95Co
		unicode	0, <Run debugged application \{all threads\}>,0
aRunThread:				; DATA XREF: .data:stru_50D95Co
		unicode	0, <Run thread>,0
aRunOnlyCurre_1:			; DATA XREF: .data:stru_50D95Co
					; .data:stru_50DE84o
		unicode	0, <Run only current thread>,0
aPause_2:				; DATA XREF: .data:stru_50D95Co
		unicode	0, <\APause>,0
aPauseDebugge_0:			; DATA XREF: .data:stru_50D95Co
					; .data:stru_50DE84o
		unicode	0, <Pause debugged application>,0
aStepInto_1:				; DATA XREF: .data:stru_50D95Co
		unicode	0, <|Step \Ainto>,0
aExecuteSingl_0:			; DATA XREF: .data:stru_50D95Co
		unicode	0, <Execute single command entering subroutines>,0
aStepOver_1:				; DATA XREF: .data:stru_50D95Co
		unicode	0, <Step \Aover>,0
aExecuteSingleC:			; DATA XREF: .data:stru_50D95Co
		unicode	0, <Execute single command or call>,0
aExecuteTillR_1:			; DATA XREF: .data:stru_50D95Co
					; .data:stru_50DE84o
		unicode	0, <Execute till return>,0
aRunProgramTill:			; DATA XREF: .data:stru_50D95Co
		unicode	0, <Run program till next return>,0
aExecuteTillUse:			; DATA XREF: .data:stru_50D95Co
					; .data:stru_50DE84o
		unicode	0, <Execute till user code>,0
aRunProgramTi_1:			; DATA XREF: .data:stru_50D95Co
		unicode	0, <Run program till exit from system DLLs>,0
aCallDllExport:				; DATA XREF: .data:stru_50D95Co
		unicode	0, <|Call DLL export>,0
aCallProcedureE:			; DATA XREF: .data:stru_50D95Co
		unicode	0, <Call procedure exported by DLL>,0
aReStart:				; DATA XREF: .data:stru_50D95Co
		unicode	0, <|Re\Astart>,0
aRestartLastDeb:			; DATA XREF: .data:stru_50D95Co
					; .data:stru_50DE84o
		unicode	0, <Restart last debugged executable>,0
aClose_0:				; DATA XREF: .data:stru_50D95Co
		unicode	0, <\AClose>,0
aCloseDebuggedA:			; DATA XREF: .data:stru_50D95Co
					; .data:stru_50DE84o
		unicode	0, <Close debugged application>,0
aSetAffinity:				; DATA XREF: .data:stru_50D95Co
		unicode	0, <|Set affinity>,0
aSetListOfCpusF:			; DATA XREF: .data:stru_50D95Co
		unicode	0, <Set list of CPUs for debugged application>,0
aCreateFunction:			; DATA XREF: .data:stru_50D95Co
		unicode	0, <|Create function library>,0
aCreateStandard:			; DATA XREF: .data:stru_50D95Co
		unicode	0, <Create standard function library>,0
aOpenOrReopenRu:			; DATA XREF: .data:stru_50DA94o
		unicode	0, <Open or reopen run trace with new parameters>,0
aCloseRunTrace:				; DATA XREF: .data:stru_50DA94o
		unicode	0, <Close run trace>,0
aCloseRunTraceP:			; DATA XREF: .data:stru_50DA94o
		unicode	0, <Close run trace protocolling>,0
aAnimateInto:				; DATA XREF: .data:stru_50DA94o
		unicode	0, <|Animate into>,0
aStartAnimation:			; DATA XREF: .data:stru_50DA94o
		unicode	0, <Start animation entering subroutines>,0
aAnimateOver:				; DATA XREF: .data:stru_50DA94o
		unicode	0, <Animate over>,0
aStartAnimati_1:			; DATA XREF: .data:stru_50DA94o
		unicode	0, <Start animation executing subroutines at once>,0
aTraceInto_0:				; DATA XREF: .data:stru_50DA94o
					; .data:stru_50DE84o
		unicode	0, <Trace into>,0
aTraceCodeEnter:			; DATA XREF: .data:stru_50DA94o
		unicode	0, <Trace code entering subroutines>,0
aTraceOver:				; DATA XREF: .data:stru_50DA94o
					; .data:stru_50DE84o
		unicode	0, <Trace over>,0
aTraceCodeExecu:			; DATA XREF: .data:stru_50DA94o
		unicode	0, <Trace code executing subroutines at once>,0
aRunHitTrace_0:				; DATA XREF: .data:stru_50DA94o
		unicode	0, <|Run hit trace>,0
aMarkCommandsTh:			; DATA XREF: .data:stru_50DA94o
		unicode	0, <Mark commands that were executed at least once>,0
aStopHitTrace:				; DATA XREF: .data:stru_50DA94o
		unicode	0, <Stop hit trace>,0
aStopHitTraceAn:			; DATA XREF: .data:stru_50DA94o
		unicode	0, <Stop hit trace and discard gathered hit data>,0
aDiscardHitTrac:			; DATA XREF: .data:stru_50DA94o
		unicode	0, <Discard hit trace>,0
aDiscardGathere:			; DATA XREF: .data:stru_50DA94o
		unicode	0, <Discard gathered hit trace data>,0
aSetCondition__:			; DATA XREF: .data:stru_50DA94o
		unicode	0, <|Set condition...>,0
aSetTraceBreakC:			; DATA XREF: .data:stru_50DA94o
		unicode	0, <Set trace break conditions>,0
aSetProtocol___:			; DATA XREF: .data:stru_50DA94o
		unicode	0, <Set protocol...>,0
aSetCommandsAnd:			; DATA XREF: .data:stru_50DA94o
		unicode	0, <Set commands and address ranges to protocol>,0
aMain_2:				; DATA XREF: .data:stru_50DBB4o
		unicode	0, <*MAIN>,0
aPluginMenu:				; DATA XREF: .data:stru_50DBB4o
		unicode	0, <Plugin menu>,0
aOptions___:				; DATA XREF: .data:stru_50DBE4o
		unicode	0, <\AOptions...>,0
aSetOllydbgOpti:			; DATA XREF: .data:stru_50DBE4o
					; .data:stru_50DE84o
		unicode	0, <Set OllyDbg options>,0
aLoadOptions___:			; DATA XREF: .data:stru_50DBE4o
		unicode	0, <Load options...>,0
aLoadOllydbgOpt:			; DATA XREF: .data:stru_50DBE4o
		unicode	0, <Load OllyDbg options from >
		unicode 0, <different initialization file>,0
aSaveOptions___:			; DATA XREF: .data:stru_50DBE4o
		unicode	0, <Save options...>,0
aSaveOllydbgOpt:			; DATA XREF: .data:stru_50DBE4o
		unicode	0, <Save OllyDbg options to >
		unicode 0, <different initialization file>,0
aPluginOptions_:			; DATA XREF: .data:stru_50DBE4o
		unicode	0, <|\APlugin options...>,0
aSetPluginOptio:			; DATA XREF: .data:stru_50DBE4o
		unicode	0, <Set plugin options>,0
aEditShortcuts_:			; DATA XREF: .data:stru_50DBE4o
		unicode	0, <\AEdit shortcuts...>,0
aCustomizeKeybo:			; DATA XREF: .data:stru_50DBE4o
		unicode	0, <Customize keyboard shortcuts>,0
aAlwaysOnTop:				; DATA XREF: .data:stru_50DC74o
		unicode	0, <Always on \Atop>,0
aToggleTopmostS:			; DATA XREF: .data:stru_50DC74o
		unicode	0, <Toggle topmost status of main OllyDbg window>,0
aCascade:				; DATA XREF: .data:stru_50DC74o
		unicode	0, <|\ACascade>,0
aCascadeMdiWi_1:			; DATA XREF: .data:stru_50DC74o
		unicode	0, <Cascade MDI windows>,0
aTileHorizontal:			; DATA XREF: .data:stru_50DC74o
		unicode	0, <Tile \Ahorizontal>,0
aTileMdiWindo_3:			; DATA XREF: .data:stru_50DC74o
		unicode	0, <Tile MDI windows horizontally>,0
aTileVertical:				; DATA XREF: .data:stru_50DC74o
		unicode	0, <Tile \Avertical>,0
aTileMdiWindows:			; DATA XREF: .data:stru_50DC74o
		unicode	0, <Tile MDI windows vertically>,0
aArrangeIcons:				; DATA XREF: .data:stru_50DC74o
		unicode	0, <Arrange \Aicons>,0
aArrangeMinimiz:			; DATA XREF: .data:stru_50DC74o
		unicode	0, <Arrange minimized MDI windows>,0
aCloseAll:				; DATA XREF: .data:stru_50DC74o
		unicode	0, <Close all>,0
aCloseAllDataWi:			; DATA XREF: .data:stru_50DC74o
		unicode	0, <Close all data windows>,0
aToggleBetweenM:			; DATA XREF: .data:stru_50DC74o
		unicode	0, <Toggle between maximized > 
		unicode 0, <and restored window state>,0
aPrevious:				; DATA XREF: .data:stru_50DC74o
		unicode	0, <Previous>,0
aActivatePrevio:			; DATA XREF: .data:stru_50DC74o
		unicode	0, <Activate previous window>,0
aNext:					; DATA XREF: .data:stru_50DC74o
		unicode	0, <Next>,0
aActivateNextWi:			; DATA XREF: .data:stru_50DC74o
		unicode	0, <Activate next window>,0
aAbout___:				; DATA XREF: .data:stru_50DD64o
		unicode	0, <\AAbout...>,0
aShowVersionAnd:			; DATA XREF: .data:stru_50DD64o
		unicode	0, <Show version and copyright information>,0
aLicense:				; DATA XREF: .data:stru_50DD64o
		unicode	0, <|License>,0
aShowLicenseAgr:			; DATA XREF: .data:stru_50DD64o
		unicode	0, <Show License Agreement>,0
aFile_1:				; DATA XREF: .data:stru_50DD64o
		unicode	0, <\AFile>,0
aSelectFileOrPr:			; DATA XREF: .data:stru_50DD64o
		unicode	0, <Select file or process to debug>,0
aView:					; DATA XREF: .data:stru_50DD64o
		unicode	0, <\AView>,0
aDebugWindows:				; DATA XREF: .data:stru_50DD64o
		unicode	0, <Debug windows>,0
aDebug:					; DATA XREF: .data:stru_50DD64o
		unicode	0, <\ADebug>,0
aDebuggingFunct:			; DATA XREF: .data:stru_50DD64o
		unicode	0, <Debugging functions>,0
aTrace_2:				; DATA XREF: .data:stru_50DD64o
		unicode	0, <\ATrace>,0
aRunTraceFuncti:			; DATA XREF: .data:stru_50DD64o
		unicode	0, <Run trace functions>,0
aPlugins:				; DATA XREF: .data:stru_50DD64o
		unicode	0, <\APlugins>,0
aPluginFunction:			; DATA XREF: .data:stru_50DD64o
		unicode	0, <Plugin functions>,0
aOptions:				; DATA XREF: .data:stru_50DD64o
		unicode	0, <\AOptions>,0
aSetOptions:				; DATA XREF: .data:stru_50DD64o
		unicode	0, <Set options>,0
aWindows_1:				; DATA XREF: .data:stru_50DD64o
		unicode	0, <$\AWindows>,0
aManipulateWind:			; DATA XREF: .data:stru_50DD64o
		unicode	0, <Manipulate windows>,0
aHelp_1:				; DATA XREF: .data:stru_50DD64o
		unicode	0, <\AHelp>,0
aHelpFunctions:				; DATA XREF: .data:stru_50DD64o
		unicode	0, <Help functions>,0
aOpen_0:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <OPEN>,0
aRestart:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <RESTART>,0
aClose:					; DATA XREF: .data:stru_50DE84o
		unicode	0, <CLOSE>,0
aRun_0:					; DATA XREF: .data:stru_50DE84o
		unicode	0, <|RUN>,0
aRunDebuggedA_1:			; DATA XREF: .data:stru_50DE84o
		unicode	0, <Run debugged application>,0
aRunthread:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <RUNTHREAD>,0
aPause_0:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <PAUSE>,0
aStepin:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <|STEPIN>,0
aStepInto:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <Step into>,0
aStepover:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <STEPOVER>,0
aStepOver_0:				; DATA XREF: .text:0040BF60o
					; .data:stru_50DE84o
		unicode	0, <Step over>,0
aTrin:					; DATA XREF: .data:stru_50DE84o
		unicode	0, <TRIN>,0
aTrover:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <TROVER>,0
aTillret:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <|TILLRET>,0
aTilluser:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <TILLUSER>,0
aLog_2:					; DATA XREF: .data:stru_50DE84o
		unicode	0, <|LOG>,0
aModules:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <MODULES>,0
aMemory_1:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <MEMORY>,0
aWindows_3:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <WINDOWS>,0
aThreads_2:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <THREADS>,0
aSearch_5:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <SEARCH>,0
aTrace_3:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <TRACE>,0
aStack_2:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <STACK>,0
aOpenCallStackW:			; DATA XREF: .data:stru_50DE84o
		unicode	0, <Open Call stack window>,0
aBpoints:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <|BPOINTS>,0
aBpmem_1:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <BPMEM>,0
aBphard_1:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <BPHARD>,0
aOptions_1:				; DATA XREF: .data:stru_50DE84o
		unicode	0, <|OPTIONS>,0
aWm_destroyFrom:			; DATA XREF: .text:0040A2BBo
		unicode	0, <WM_DESTROY from different process ignored>,0
; const	WCHAR aPlacement
aPlacement:				; DATA XREF: .text:0040A321o
		unicode	0, <Placement>,0
; wchar_t aIIIII
aIIIII:					; DATA XREF: .text:0040A31Co
		unicode	0, <!%i,!%i,!%i,!%i,!%i>,0
aWm_closeFromDi:			; DATA XREF: .text:0040A388o
		unicode	0, <WM_CLOSE from different process ignored>,0
; wchar_t a_exe_1
a_exe_1:				; DATA XREF: .text:0040A8B3o
		unicode	0, <.exe>,0
; wchar_t a_dll
a_dll:					; DATA XREF: .text:0040931Co
		unicode	0, <.dll>,0
; wchar_t a_lnk
a_lnk:					; DATA XREF: .text:0040A8E3o
		unicode	0, <.lnk>,0
; wchar_t a_pif
a_pif:					; DATA XREF: .text:0040A8FBo
		unicode	0, <.pif>,0
; wchar_t a_txt_2
a_txt_2:				; DATA XREF: .text:loc_40A92Bo
		unicode	0, <.txt>,0
; wchar_t a_ini
a_ini:					; DATA XREF: .text:0040A943o
		unicode	0, <.ini>,0
; const	WCHAR aArguments0_0
aArguments0_0:				; DATA XREF: .text:0040ACFAo
		unicode	0, <Arguments[0]>,0
; const	WCHAR aCurrentDir0_0
aCurrentDir0_0:				; DATA XREF: .text:0040AD21o
		unicode	0, <Current dir[0]>,0
aSelect32BitExe:			; DATA XREF: .text:0040AD58o
		unicode	0, <Select 32-bit executable and specify arguments>,0
; wchar_t defext
defext:					; DATA XREF: .text:0040AD4Ao
		unicode	0, <*.exe;*.dll;*.lnk|*.exe|*.dll|*.lnk>,0
aEnterNewComman:			; DATA XREF: .text:0040ADB0o
		unicode	0, <Enter new command line arguments>,0
; wchar_t aCurrentDirI_1
aCurrentDirI_1:				; DATA XREF: .text:0040AE11o
		unicode	0, <Current dir[!%i]>,0
; wchar_t title
_title:					; DATA XREF: .text:0040B0EDo
		unicode	0, <Open file>,0
; wchar_t a_
a_:					; DATA XREF: .text:0040B0DFo
		unicode	0, <*.*>,0
aSetAffinityM_2:			; DATA XREF: .text:0040B29Eo
		unicode	0, <Set affinity mask for debugged process>,0
aSelectInitiali:			; DATA XREF: .text:0040B4DFo
		unicode	0, <Select initialization file>,0
; wchar_t a_ini_1
a_ini_1:				; DATA XREF: .text:0040B4D5o
		unicode	0, <*.ini>,0
; wchar_t aI_I
aI_I:					; DATA XREF: .text:0040BADCo
		unicode	0, <!%i.!%i>,0
aTop:					; DATA XREF: .text:loc_40BD61o
		unicode	0, <Top>,0
aReady:					; DATA XREF: .text:0040BE2Fo
		unicode	0, <Ready>,0
aLoading:				; DATA XREF: .text:0040BE5Ao
		unicode	0, <Loading>,0
aAttaching:				; DATA XREF: .text:0040BE85o
		unicode	0, <Attaching>,0
aCallingDll:				; DATA XREF: .text:0040BEC2o
		unicode	0, <Calling DLL>,0
aHitTrace_1:				; DATA XREF: .text:0040BEDDo
		unicode	0, <Hit trace>,0
aThread_2:				; DATA XREF: .text:0040BEF8o
		unicode	0, <Thread>,0
aRunning:				; DATA XREF: .text:loc_40BF0Ao
		unicode	0, <Running>,0
aStepIn:				; DATA XREF: .text:0040BF35o
		unicode	0, <Step in>,0
aAnimating:				; DATA XREF: .text:0040BF8Bo
		unicode	0, <Animating>,0
aTracing:				; DATA XREF: .text:0040BFB6o
		unicode	0, <Tracing>,0
aUnpacking:				; DATA XREF: .text:0040BFE1o
		unicode	0, <Unpacking>,0
aTillRet:				; DATA XREF: .text:0040C00Co
		unicode	0, <Till RET>,0
aTillUser:				; DATA XREF: .text:0040C037o
		unicode	0, <Till user>,0
aPausing:				; DATA XREF: .text:0040C062o
		unicode	0, <Pausing>,0
aPaused:				; DATA XREF: .text:0040C08Do
		unicode	0, <Paused>,0
aTerminated:				; DATA XREF: .text:0040C0B5o
		unicode	0, <Terminated>,0
aClosing:				; DATA XREF: .text:0040C0DDo
		unicode	0, <Closing>,0
aUnknown:				; DATA XREF: .text:0040C105o
		unicode	0, <Unknown>,0
aProcessIsStill:			; DATA XREF: .text:0040C5A8o
		unicode	0, <Process is still running>,0
aYouAreGoingToC:			; DATA XREF: .text:0040C59Co
		unicode	0, <You are going to close OllyDbg. >
		unicode 0, <The debugged process will terminate,which may lead to >
		unicode 0, <the loss of data. Do you still want to close OllyDbg!?>,0
aDynamicLinkL_2:			; DATA XREF: .text:004093AFo
		unicode	0, <Dynamic link library \-!%s!%s\- that resides in OllyDbg directory >
		unicode 0, <is intended for use on NT-based operating systems only. Delete it!?>,0
aWrongDll:				; DATA XREF: .text:004093CCo
		unicode	0, <Wrong DLL>,0
; wchar_t aI_I_I_I
aI_I_I_I:				; DATA XREF: .text:00409414o
		unicode	0, <!%i.!%i.!%i.!%i>,0
aDynamicLinkLib:			; DATA XREF: .text:0040959Do
		unicode	0, <Dynamic link library \-!%s!%s\- that resides in OllyDbg directory >
		unicode 0, <has lower file version \{!%s\} than corresponding DLL >
		unicode 0, <in system directory \{!%s\}. Delete old library from the OllyDbg directory!? >
		unicode 0, <\{If necessary, you can restore it later from the original .zip archive\}>,0
; const	WCHAR Caption
Caption:				; DATA XREF: .text:004095C6o
		unicode	0, <Old DLL>,0
; wchar_t aErrorlog_txt
aErrorlog_txt:				; DATA XREF: .text:0040C796o
					; .data:stru_50EB8Co
		unicode	0, <errorlog.txt>,0
; wchar_t aAt
aAt:					; DATA XREF: .text:0040C7A7o
		unicode	0, <at>,0
; char aOllydbgExcepti[]
aOllydbgExcepti	db 'OLLYDBG EXCEPTION PROTOCOL',0Ah ; DATA XREF: .text:loc_40C7C8o
		db 0Ah
		db 'This file is created by OllyDbg due to unrecoverable error. It',0Ah
		db 'contains data necessary to locate and remove this and previous',0Ah
		db 'errors. Please describe circumstances that preceded exception:',0Ah
		db 0Ah
		db '>',0Ah
		db '>',0Ah
		db '>',0Ah
		db '>',0Ah
		db 0Ah
		db 'and email protocol to:',0Ah
		db 0Ah
		db '   Ollydbg@t-online.de',0Ah
		db 0Ah
		db 'Feel free to remove any private data. Thank you for your help!',0Ah
		db 0Ah,0
; char aOperatingSyste[]
aOperatingSyste	db 'Operating system:   !%i.!%i.!%i, platform !%i \{!%s\}',0Ah,0
; char aOllydbgVersion[]
aOllydbgVersion	db 'OllyDbg version:    !%i.!%02i.!%02i',0 ; DATA XREF: .text:0040C80Ao
; char aExceptionCode0[]
aExceptionCode0	db 0Ah			; DATA XREF: .text:0040C81Co
		db 'Exception code:     !%08X',0Ah,0
; char aParameters[]
aParameters	db 'Parameters:        ',0 ; DATA XREF: .text:0040C830o
; char a08x[]
a08x		db ' !%08X',0            ; DATA XREF: .text:0040C84Eo
; char aExceptionAddre[]
aExceptionAddre	db 'Exception address:  !%08X',0Ah,0 ; DATA XREF: .text:0040C87Do
; char aExecutableModu[]
aExecutableModu	db 'Executable module:  !%S',0Ah ; DATA XREF: .text:0040C8BBo
		db 0Ah,0
; char aEax08xEbx08xEc[]
aEax08xEbx08xEc	db 'EAX=!%08X  EBX=!%08X  ECX=!%08X  EDX=!%08X',0Ah,0
; char aEsp08xEbp08xEs[]
aEsp08xEbp08xEs	db 'ESP=!%08X  EBP=!%08X  ESI=!%08X  EDI=!%08X',0Ah,0
; char aEip08xEfl08x[]
aEip08xEfl08x	db 'EIP=!%08X  EFL=!%08X',0Ah ; DATA XREF: .text:0040C96Eo
		db 0Ah,0
; char aCodeDump[]
aCodeDump	db 'Code dump:',0       ; DATA XREF: .text:0040C97Co
; char a08x_0[]
a08x_0		db 0Ah			; DATA XREF: .text:0040C99Fo
		db '!%08X',0
; char aC_1[]
aC_1		db '!%c',0               ; DATA XREF: .text:0040C9CCo
; char a02x[]
a02x		db ' !%02X',0            ; DATA XREF: .text:0040C9E2o
; char aStackDump[]
aStackDump	db 0Ah			; DATA XREF: .text:0040CA06o
		db 0Ah
		db 'Stack dump:',0
; char a08x_1[]
a08x_1		db 0Ah			; DATA XREF: .text:0040CA2Fo
		db '!%08X  ',0
; char a08x_2[]
a08x_2		db '!%08X ',0            ; DATA XREF: .text:0040CA4Ao
; char aStackWalk[]
aStackWalk	db 0Ah			; DATA XREF: .text:0040CAC1o
		db 0Ah
		db 'Stack walk:',0
; char asc_51142A[]
asc_51142A	db 0Ah			; DATA XREF: .text:0040CB26o
		db '          ',0
; char aS_2[]
aS_2		db 0Ah			; DATA XREF: .text:0040CB7Do
		db '          \{!%S\}',0
; char aSettings_0[]
aSettings_0	db 0Ah			; DATA XREF: .text:loc_40CBBDo
		db 0Ah
		db '[Settings]',0Ah,0
; const	WCHAR AppName
AppName:				; DATA XREF: .text:0040CBE3o
		unicode	0, <Settings>,0
; char aSS[]
aSS		db '!%S=!%S',0Ah,0        ; DATA XREF: .text:0040CC34o
; char aCorruptedMemor[]
aCorruptedMemor	db 0Ah			; DATA XREF: .text:0040CC6Eo
		db 'Corrupted memory blocks:',0Ah,0
; char aNone_[]
aNone_		db 'None.',0Ah,0        ; DATA XREF: .text:0040CC8Bo
; char asc_51148F[]
asc_51148F	db 0Ah			; DATA XREF: .text:loc_40CC99o
		db '---------------------------------------------------------------',0Ah
		db 0Ah,0
; wchar_t aOopsOllydbgWil
aOopsOllydbgWil:			; DATA XREF: .text:0040CCBCo
		unicode	0, <Oops! OllyDbg will terminate >
		unicode 0, <due to exception !%08X at add>
		unicode	0, <ress !%08X. >,0
; wchar_t aMostProbablyTh
aMostProbablyTh:			; DATA XREF: .text:0040CCE3o
		unicode	0, <Most probably, this error >
		unicode 0, <occured inside the plugin \->,0
; wchar_t a_TryToRemoveIt
a_TryToRemoveIt:			; DATA XREF: .text:0040CD2Do
		
		unicode	0, <\-. Try to remove it and restart OllyDbg.>
		dw 2 dup(0Ah), 0
; wchar_t aFile_0
aFile_0:				; DATA XREF: .text:0040CD51o
		unicode	0, <File \->,0
; wchar_t aContainsImport
aContainsImport:			; DATA XREF: .text:0040CD99o
		
		unicode	0, <\- contains important information that may help to locate and remove this bug.>
		unicode 0, < Please send this file to:\l\lollydbg@t-online.de>
		unicode	0, <\l\lThank you very much for your help\:>,0
; const	WCHAR aQuisCustodietI
aQuisCustodietI:			; DATA XREF: .text:0040CDB8o
		unicode	0, <Quis custodiet ipsos custodes!?>,0
aTopmostWindow:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Topmost window>,0
aShowMainMenuIt:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show main menu items>
		unicode 0, < that don\-t apply>,0
aShowPopupItems:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show popup items that don\-t apply>,0
aShowToolbar:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show toolbar>,0
aUseSystemColou:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Use system colours in toolbar>,0
aStatusInToolba:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Status in toolbar>,0
aFlashDuration:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Flash duration>,0
aAutoupdateIn_1:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Autoupdate interval>,0
aModeOfMainWind:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Mode of main window>,0
aRestoreWindows:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Restore windows>,0
aBringOllydbg_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Bring OllyDbg to top on pause>,0
aRestoreWindowP:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Restore window positions>,0
aRestoreWidthOf:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Restore width of columns>,0
aRestoreSorti_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Restore sorting criterium>,0
aHighlightSorte:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Highlight sorted column>,0
aRightClickSele:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Right click selects>,0
aIndexOfDefault:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Index of default font>,0
aIndexOfDefau_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Index of default UNICODE font>,0
aIndexOfDefau_1:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Index of default colours>,0
aCodeHighlighti:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Code highlighting>,0
aHorizontalScro:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Horizontal scroll>,0
aSnowFreeDrawin:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Snow-free drawing>,0
aAppendArgument:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Append arguments>,0
aAllowDiacrit_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Allow diacritical symbols>,0
aDecodePascal_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Decode pascal strings>,0
aUseIstextuni_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Use IsTextUnicode>,0
aStringDecoding:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <String decoding>,0
aFileGraphMode:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <File graph mode>,0
aPutAsciiTextTo:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Put ASCII text to clipboard>,0
aMonitorInterna:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Monitor internal memory allocation>,0
aDialogFontMode:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Dialog font mode>,0
aFontInDialogs:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Font in dialogs>,0
aAlignDialogs:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Align dialogs>,0
aGlobalSearch:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Global search>,0
aAlignedSearc_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Aligned search>,0
aSearchAccuracy:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Search accuracy>,0
aIgnoreCase:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Ignore case>,0
aSearchDirectio:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Search direction>,0
aFloatingSearch:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Floating search with margin>,0
aAllowExtraComm:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Allow extra commands in sequence>,0
aAllowJumpsInto:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Allow jumps into the sequence>,0
aKeepSizeOfHexE:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Keep size of hex edit selection>,0
aListSortingMod:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <List sorting mode>,0
aModifyFpuTag:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Modify FPU tag>,0
aMmxDisplayMode:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <MMX display mode>,0
aShowTooltipsIn:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show tooltips in dialog windows>,0
aXOptionsCoordi:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <X options coordinate>,0
aYOptionsCoordi:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Y options coordinate>,0
aLastSelectedOp:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Last selected options pane>,0
aLastEditedFont:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Last edited font in options>,0
aLastEditedSche:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Last edited scheme in options>,0
aLastEditedColo:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Last edited colour index in options>,0
aLastEditedHigh:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Last edited highlighting in options>,0
aLastEditedHi_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Last edited highlighting index in options>,0
aWarnmodeWhenNo:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when not administrator>,0
aWarnmodeForPac:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode for packed code in Analyzer>,0
aWarnmodeWhenIn:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when INT3 breakpoint is corrupt>,0
aWarnmodeWhenBr:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when breakpoint set on non-command>,0
aWarnmodeWhenEi:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when EIP set on non-command>,0
aWarnmodeWhenCl:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when clipboard size too large>,0
aWarnmodeWhenAl:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when all threads are suspended>,0
aWarnmodeWhenTh:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when thread is changed>,0
aWarnmodeWhenPr:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when process is still running>,0
aWarnmodeWhenAc:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when active when closing OllyDbg>,0
aWarnmodeWhenUn:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when unable to close process>,0
aWarnmodeWhenEx:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when executable differs from udd>,0
aWarnmodeWhen_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when INT3 in udd has different cmd>,0
aWarnmodeWhenFi:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when fixups are modified>,0
aWarnmodeWhenIa:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when IAT is copied back to exe>,0
aWarnmodeWhen_1:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when IAT is autocopied back to exe>,0
aWarnmodeWhenCo:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when copy of executable file changed>,0
aWarnmodeWhenMe:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when memory breakpoint on stack>,0
aWarnmodeWhenMo:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when modified debug registers>,0
aWarnmodeWhenLa:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when launching loaddll>,0
aWarnmodeWhen_2:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warnmode when EIP inside the patch>,0
aOnlyAsciiPrint:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Only ASCII printable in dump>,0
aCodePageForAsc:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Code page for ASCII dumps>,0
aCodePageForMul:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Code page for multibyte dumps>,0
aUnderlineFixup:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Underline fixups>,0
aShowJumpDirect:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show jump direction>,0
aShowJumpPath:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show jump path>,0
aShowGrayedPath:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show grayed path if jump is not taken>,0
aFillRestOfComm:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Fill rest of command with NOPs>,0
aActionOnLetter:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Action on letter key in Disassembler>,0
aWideCharacters:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Wide characters in UNICODE dumps>,0
aDisableGdiSc_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Disable GDI scripting support>,0
aAutomaticallyB:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Automatically backup user code>,0
aVisibleLinesWh:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Visible lines when scrolling disasm>,0
aIdealDisassemb:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <IDEAL disassembling mode>,0
aDisassembleInL:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Disassemble in lowercase>,0
aSeparateArgume:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Separate arguments with TAB>,0
aExtraSpaceBetw:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Extra space between arguments>,0
aShowDefaultSeg:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show default segments>,0
aAlwaysShowMemo:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Always show memory size>,0
aNearJumpModifi:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <NEAR jump modifiers>,0
aAlternativeFor:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Alternative forms of conditional commands>,0
aUseShortFormOf:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Use short form of string commands>,0
aUseRetInsteadO:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Use RET instead of RETN>,0
aSseSizeDecodin:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <SSE size decoding mode>,0
aJumpHintDecodi:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Jump hint decoding mode>,0
aSizeSensitiveM:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Size sensitive mnemonics>,0
aTopOfFpuStack:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Top of FPU stack>,0
aShowSymbolicAd:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show symbolic addresses>,0
aShowLocalMod_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show local module names>,0
aDemangleSymb_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Demangle symbolic names>,0
aShowCallArgume:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show call arguments>,0
aTypeOfBreakCom:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Type of break command>,0
aUseHardwareBre:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Use hardware breakpoints for stepping>,0
aHideUnimport_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Hide unimportant handles>,0
aShowOriginalHa:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show original handle names>,0
aPermanentBreak:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Permanent breakpoints on system code>,0
aFirstPause:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <First pause>,0
aPauseOnAttach:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Pause on attach>,0
aPauseOnLoaddll:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Pause on Loaddll>,0
aAssumeFlatSe_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Assume flat selectors>,0
aIgnoreAccess_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Ignore access violations in KERNEL32>,0
aIgnoreInt3InMs:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Ignore INT3 in MSCORWKS>,0
aIgnoreInt3:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Ignore INT3>,0
aIgnoreTrap:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Ignore TRAP>,0
aIgnoreAccessVi:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Ignore access violations>,0
aIgnoreDivision:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Ignore division by 0>,0
aIgnoreIllegalI:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Ignore illegal instructions>,0
aIgnoreAllFpuEx:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Ignore all FPU exceptions>,0
aIgnoreAllServi:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Ignore all service exceptions>,0
aIgnoreCustomEx:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Ignore custom exception ranges>,0
aCallUnhandlede:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Call UnhandledExceptionFilter>,0
aReportIgnoredE:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Report ignored exceptions to log>,0
aAutoreturn:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Autoreturn>,0
aUseDebugbreakp:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Use DebugBreakProcess>,0
aUseExitprocess:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Use ExitProcess>,0
aWarnWhenFreque:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Warn when frequent breaks>,0
aAllowCommandEm:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Allow command emulation>,0
aDebugChildProc:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Debug child processes>,0
aAnimationDel_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Animation delay index>,0
aStopOnNewDll:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Stop on new DLL>,0
aStopOnDllUnloa:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Stop on DLL unload>,0
aStopOnlyOnSele:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Stop only on selected modules>,0
aStopOnDebugStr:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Stop on debug string>,0
aStopOnNewThrea:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Stop on new thread>,0
aStopOnThreadEn:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Stop on thread end>,0
aEnableUseOfDeb:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Enable use of debugging data>,0
aUseDbghelpToWa:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Use dbghelp to walk stack>,0
aUseMicrosoftSy:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Use Microsoft Symbol Server>,0
aHideMissingSou:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Hide missing source files>,0
aHideInternalCo:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Hide internal compiler names>,0
aSkipLeadingSpa:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Skip leading spaces from source>,0
aHideCallDllWin:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Hide Call DLL window on call>,0
aPauseAfterCall:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Pause after call to DLL is finished>,0
aAllow_netDebug:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Allow .NET debugging>,0
aScanRegistryFo:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Scan registry for GUIDs on starup>,0
aRunTraceProt_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Run trace protocolling options>,0
aRunTraceBuffer:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Run trace buffer size index>,0
aTraceOverSyste:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Trace over system DLLs>,0
aTraceOverStrin:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Trace over string commands>,0
aSaveTracedComm:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Save traced commands>,0
aSaveAccessedMe:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Save accessed memory to trace>,0
aSaveFpuRegiste:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Save FPU registers to trace>,0
aSynchronizeC_1:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Synchronize CPU and Run trace>,0
aSetBreakpoin_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Set breakpoints on callbacks in hit trace>,0
aHitTraceModeFo:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Hit trace mode for indirect jumps>,0
aStopHitTraceIf:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Stop hit trace if not command>,0
aHitTraceOutsid:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Hit trace outside the code section>,0
aKeepHitTraceBe:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Keep hit trace between sessions>,0
aShowSymbolicNa:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show symbolic names in protocol range list>,0
aAllowAutomatic:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Allow automatic SFX extraction>,0
aSfxExtractionM:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <SFX extraction mode>,0
aUseRealSfxEntr:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Use real SFX entry from previous run>,0
aIgnoreSfxExcep:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Ignore SFX exceptions>,0
aUsePredictio_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Use predictions in search>,0
aReferencesIncl:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <References include indirect jumps>,0
aAddOriginToSea:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Add origin to search results>,0
aDefaultResourc:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Default resource language>,0
aGrayInactiveWi:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Gray inactive windows>,0
aGrayRegisterNa:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Gray register names>,0
aCenterFollowed:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Center FOLLOWed command>,0
aDecodeRegister:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Decode registers for any IP>,0
aHideCurrentReg:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Hide current registers warning>,0
aRemoveCodeHili:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Remove code hilite on register hilite>,0
aAutomaticallyS:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Automatically select register type>,0
aEnableSseRegis:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Enable SSE registers>,0
aLabelDisplayMo:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Label display mode>,0
aHighlightSymbo:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Highlight symbolic labels>,0
aLogBufferSizeI:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Log buffer size index>,0
aTabulateColumn:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Tabulate columns in log file>,0
aAppendDataToEx:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Append data to existing log file>,0
aAutoAnalysis:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Auto analysis>,0
aNoPredictedReg:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <No predicted registers in system DLLs>,0
aFuzzyAnalysis:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Fuzzy analysis>,0
aReportProblems:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Report problems during analysis>,0
aDecodeTricks:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Decode tricks>,0
aMarkTricks:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Mark tricks>,0
aSearchForLibra:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Search for library functions>,0
aDecodeIfsAsSwi:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Decode ifs as switches>,0
aMarkOnlyImport:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Mark only important operands>,0
aFunctionsPrese:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Functions preserve registers>,0
aIgnoreBraces_1:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Ignore braces in udd path>,0
aGuessNumberO_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Guess number of arguments>,0
aGuessArguments:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Guess arguments from mangled names>,0
aGuessMeaningOf:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Guess meaning of guessed arguments>,0
aShowUncertainA:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show uncertain arguments>,0
aRenameValueDep:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Rename value dependent arguments>,0
aShowPredictedV:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show predicted values>,0
aShowArgAndLo_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show ARG and LOCAL in disassembly>,0
aUseSymbolicNam:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Use symbolic names for ARG and LOCAL>,0
aShowArgAndLoca:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show ARG and LOCAL in comments>,0
aShowLoops:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Show loops>,0
aAcceptFarCalls:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Accept far calls and returns>,0
aAcceptDirectSe:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Accept direct segment modifications>,0
aAcceptPrivileg:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Accept privileged commands>,0
aAcceptIOComman:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Accept I/O commands>,0
aAcceptNops:				; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Accept NOPs>,0
aAcceptShiftsOu:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Accept shifts out of range>,0
aAcceptSuperflu:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Accept superfluous prefixes>,0
aAcceptDefaultP:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Accept default prefixes>,0
aAcceptValidLoc:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Accept valid LOCK prefixes>,0
aAcceptUnaligne:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Accept unaligned stack operations>,0
aAcceptSuspicio:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Accept suspicious ESP operations>,0
aAcceptNonStand:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Accept non-standard command forms>,0
aAcceptAccessTo:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Accept access to nonexisting memory>,0
aAcceptInterrup:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Accept interrupt commands>,0
aBlockExternalW:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Block external WM_CLOSE>,0
aActivateSpeech:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Activate speech>,0
aTranslateCom_0:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Translate commands and registers>,0
aSkipLeadingZer:			; DATA XREF: .data:stru_50E0F4o
		unicode	0, <Skip leading zeros in hex numbers>,0
aLogFile:				; DATA XREF: .data:stru_50EB8Co
		unicode	0, <Log file>,0
aTraceSaveFile:				; DATA XREF: .data:stru_50EB8Co
		unicode	0, <Trace save file>,0
aTrace_txt:				; DATA XREF: .data:stru_50EB8Co
		unicode	0, <trace.txt>,0
aDataDirectory:				; DATA XREF: .data:stru_50EB8Co
		unicode	0, <Data directory>,0
a_Udd:					; DATA XREF: .data:stru_50EB8Co
		unicode	0, <.\\udd>,0
aStandardLibrar:			; DATA XREF: .data:stru_50EB8Co
		unicode	0, <Standard library directory>,0
a_Udl:					; DATA XREF: .data:stru_50EB8Co
		unicode	0, <.\\udl>,0
aPluginDirect_0:			; DATA XREF: .data:stru_50EB8Co
		unicode	0, <Plugin directory>,0
a_Plugins:				; DATA XREF: .data:stru_50EB8Co
		unicode	0, <.\\plugins>,0
aApiHelpFile:				; DATA XREF: .data:stru_50EB8Co
		unicode	0, <API help file>,0
aAlternativeIni:			; DATA XREF: .data:stru_50EB8Co
		unicode	0, <Alternative initialization file>,0
aLastViewedFile:			; DATA XREF: .data:stru_50EB8Co
		unicode	0, <Last viewed file>,0
aLastKeyboardSh:			; DATA XREF: .data:stru_50EB8Co
		unicode	0, <Last keyboard shortcuts file>,0
aShortcuts_ini:				; DATA XREF: .data:stru_50EB8Co
		unicode	0, <shortcuts.ini>,0
aLastObjectOrLi:			; DATA XREF: .data:stru_50EB8Co
		unicode	0, <Last object or library file>,0
aLastImageLibra:			; DATA XREF: .data:stru_50EB8Co
		unicode	0, <Last image library file>,0
; wchar_t aDebugDataDirec
aDebugDataDirec:			; DATA XREF: .text:0040CE96o
		unicode	0, <Debug data directory[!%i]>,0
; const	WCHAR aPauseOnModule
aPauseOnModule:				; DATA XREF: .text:0040CF4Ao
		unicode	0, <Pause on module>,0
; wchar_t aModuleI
aModuleI:				; DATA XREF: .text:0040CF6Bo
		unicode	0, <Module[!%i]>,0
; const	WCHAR aIgnoredExcepti
aIgnoredExcepti:			; DATA XREF: .text:loc_40CFB7o
		unicode	0, <Ignored exceptions>,0
; wchar_t aRangeI
aRangeI:				; DATA XREF: .text:0040CFE2o
		unicode	0, <Range[!%i]>,0
; wchar_t aLxLx
aLxLx:					; DATA XREF: .text:0040D004o
		unicode	0, <!%lx !%lx>,0
; const	WCHAR aPreviousJit
aPreviousJit:				; DATA XREF: .text:0040D030o
		unicode	0, <Previous JIT>,0
; wchar_t aCustomColourI
aCustomColourI:				; DATA XREF: .text:0040D05Co
		unicode	0, <Custom colour[!%i]>,0
; const	WCHAR aCustomColours
aCustomColours:				; DATA XREF: .text:0040D096o
		unicode	0, <Custom colours>,0
; const	WCHAR aColourSchemes
aColourSchemes:				; DATA XREF: .text:0040D0ADo
		unicode	0, <Colour schemes>,0
; const	WCHAR aHighlightingSc
aHighlightingSc:			; DATA XREF: .text:0040D0F8o
		unicode	0, <Highlighting schemes>,0
; const	WCHAR aFonts_1
aFonts_1:				; DATA XREF: .text:0040D146o
		unicode	0, <Fonts>,0
; wchar_t aFontNameI
aFontNameI:				; DATA XREF: .text:0040D15Co
		unicode	0, <Font name[!%i]>,0
; wchar_t aFontDataI
aFontDataI:				; DATA XREF: .text:0040D1A3o
		unicode	0, <Font data[!%i]>,0
; wchar_t aIIIIIIIIIIII
aIIIIIIIIIIII:				; DATA XREF: .text:0040D1F2o
		unicode	0, <!%i,!%i,!%i,!%i,!%i,!%i,!%i,!%i,!%i,!%i,!%i,!%i>,0
; wchar_t aFaceNameI
aFaceNameI:				; DATA XREF: .text:0040D20Do
		unicode	0, <Face name[!%i]>,0
; CHAR LibFileName[]
LibFileName	db 'UNICOWS.DLL',0      ; DATA XREF: .text:loc_40977Co
; CHAR Text[]
Text		db 'OllyDbg 2 is a UNICODE application and will not work without UNIC'
		db 'OWS.DLL. Please install Microsoft Layer for UNICODE, or use OllyD'
		db 'bg 1.10.',0
; CHAR aWindows95Unico[]
aWindows95Unico	db 'Windows 95 UNICODE alert',0 ; DATA XREF: .text:00409791o
; CHAR aOllydbg2WasUna[]
aOllydbg2WasUna	db 'OllyDbg 2 was unable to attach to the Microsoft Layer for UNICODE'
		db ' \{UNICOWS.DLL\}. Try using OllyDbg 1.10 instead.',0
		db 0
a_odwin:
		unicode	0, <_ODWin>,0
a_odmdi:
		unicode	0, <_ODMDI>,0
a_odtab:
		unicode	0, <_ODTAB>,0
a_odfrm:
		unicode	0, <_ODFRM>,0
aService:
		unicode	0, <-SERVICE>,0
aP_10:
		unicode	0, <-p>,0
aAttach_0:
		unicode	0, <-ATTACH>,0
aChild:
		unicode	0, <Child>,0
aChild_I:
		unicode	0, <Child_!%i>,0
aAedebug:
		unicode	0, <-AEDEBUG>,0

aNtdll_dll:
		unicode	0, <NTDLL.DLL>,0
aNtquerysystemi	db 'NtQuerySystemInformation',0
aNtqueryinforma	db 'NtQueryInformationProcess',0
aNtqueryinfor_0	db 'NtQueryInformationFile',0
aNtquerykey	db 'NtQueryKey',0
aNtqueryobject	db 'NtQueryObject',0
aNtduplicateobj	db 'NtDuplicateObject',0
aNtquerysemapho	db 'NtQuerySemaphore',0
aNtsystemdebugc	db 'NtSystemDebugControl',0
		db 0
aKernel32_dll_1:
		unicode	0, <KERNEL32.DLL>,0
aUnableToLoadKe:
		unicode	0, <Unable to load KERNEL32.DLL>,0
aGetthreadtimes	db 'GetThreadTimes',0
aCreatetoolhelp	db 'CreateToolhelp32Snapshot',0
aModule32first	db 'Module32First',0
aModule32next	db 'Module32Next',0
aProcess32first	db 'Process32First',0
aProcess32next	db 'Process32Next',0
aThread32first	db 'Thread32First',0
aThread32next	db 'Thread32Next',0
aQuerydosdevice	db 'QueryDosDeviceW',0
aDebugbreakproc	db 'DebugBreakProcess',0
aDebugactivepro	db 'DebugActiveProcessStop',0
aGetprocessaffi	db 'GetProcessAffinityMask',0
aSetprocessaffi	db 'SetProcessAffinityMask',0
aGetcpinfoexw	db 'GetCPInfoExW',0
aBackupread	db 'BackupRead',0
aBackupseek	db 'BackupSeek',0
aGetdiskfrees_0	db 'GetDiskFreeSpaceExW',0
aGetenabledxsta	db 'GetEnabledXStateFeatures',0
aUser32_dll:
		unicode	0, <USER32.DLL>,0
aGetcomboboxinf	db 'GetComboBoxInfo',0
aMonitorfromwin	db 'MonitorFromWindow',0
aMonitorfrompoi	db 'MonitorFromPoint',0
aGetmonitorinfo	db 'GetMonitorInfoW',0
		db 0
aComctl32_dll:
		unicode	0, <COMCTL32.DLL>,0
aInitcommoncont	db 'InitCommonControlsEx',0
		db 0
aAdvapi32_dll:
		unicode	0, <ADVAPI32.DLL>,0
aIstextunicode	db 'IsTextUnicode',0
		db 'S',0
aHell32_dll:
		unicode	0, <HELL32.DLL>,0
aShgetmalloc	db 'SHGetMalloc',0
aShbrowseforfol	db 'SHBrowseForFolderW',0
aShgetpathfromi	db 'SHGetPathFromIDListW',0
aShlwapi_dll:
		unicode	0, <SHLWAPI.DLL>,0
aPathcanonicali	db 'PathCanonicalizeW',0
aPathisdirector	db 'PathIsDirectoryW',0
aPathfileexists	db 'PathFileExistsW',0
aPathrelativepa	db 'PathRelativePathToW',0
aPathremoveargs	db 'PathRemoveArgsW',0
aPathgetargsw	db 'PathGetArgsW',0
aPathunquotespa	db 'PathUnquoteSpacesW',0
aPathfindfilena	db 'PathFindFileNameW',0
aPathcompactpat	db 'PathCompactPathExW',0
aPsapi_dll:
		unicode	0, <PSAPI.DLL>,0
aPsapi_dllIsNot:
		unicode	0, <PSAPI.DLL is not found. >
		unicode 0, <This library contains important p>
		unicode	0, <rocess- and module-oriented functions>
		unicode 0, <for OSes based on N>
		unicode	0, <T technology. Normal debugging >
		unicode 0, <is hardly possible. Do you>
		unicode	0, < nevertheless want to continue!?>
		db    0
aEnumprocesses	db 'EnumProcesses',0
aEnumprocessmod	db 'EnumProcessModules',0
aGetmodulefilen	db 'GetModuleFileNameExW',0
aGetmoduleinfor	db 'GetModuleInformation',0
aGetmappedfilen	db 'GetMappedFileNameW',0
		db    0
aImagehlp_dll:
		unicode	0, <IMAGEHLP.DLL>,0
aUndecoratesymb	db 'UnDecorateSymbolName',0
		db    0
aRiched20_dll:
		unicode	0, <RICHED20.DLL>,0
aMscoree_dll:
		unicode	0, <MSCOREE.DLL>,0
aCreatedebuggin	db 'CreateDebuggingInterfaceFromVersion',0
aGetrequestedru	db 'GetRequestedRuntimeVersion',0
aGetversionfrom	db 'GetVersionFromProcess',0
		db    0
aDosapp_fon:
		unicode	0, <Dosapp.fon>,0
aLucidaConsole:
		unicode	0, <Lucida Console>,0
aMsSansSerif:
		unicode	0, <MS Sans Serif>,0
aOemFixedFont:
		unicode	0, <OEM fixed font>,0
aTerminal:
		unicode	0, <Terminal>,0
aTerminal6:
		unicode	0, <Terminal 6>,0
aSystemFixedFon:
		unicode	0, <System fixed font>,0
aCourierNew:
		unicode	0, <Courier New>,0
aCourierUnicode:
		unicode	0, <Courier \{UNICODE\}>,0
aLucidaUnicode:
		unicode	0, <Lucida \{UNICODE\}>,0
aFont4:
		unicode	0, <Font 4>,0
aFont5:
		unicode	0, <Font 5>,0
aFont6:
		unicode	0, <Font 6>,0
aFont7:
		unicode	0, <Font 7>,0
aArial:
		unicode	0, <Arial>,0
aBlackOnWhite:
		unicode	0, <Black on white>,0
aYellowOnBlue:
		unicode	0, <Yellow on blue>,0
aMarine:
		unicode	0, <Marine>,0
aMostlyBlack:
		unicode	0, <Mostly black>,0
aScheme4:
		unicode	0, <Scheme 4>,0
aScheme5:
		unicode	0, <Scheme 5>,0
aScheme6:
		unicode	0, <Scheme 6>,0
aScheme7:
		unicode	0, <Scheme 7>,0
aNoHighlighting:
		unicode	0, <No highlighting>,0
aChristmasTree:
		unicode	0, <Christmas tree>,0
aJumpsAndCalls:
		unicode	0, <Jumps and calls>,0
aMemoryAccess:
		unicode	0, <Memory access>,0
aHilite4:
		unicode	0, <Hilite 4>,0
aHilite5:
		unicode	0, <Hilite 5>,0
aHilite6:
		unicode	0, <Hilite 6>,0
aHilite7:
		unicode	0, <Hilite 7>,0
aCurs_size:
		unicode	0, <CURS_SIZE>,0
aIco_aaamain:
		unicode	0, <ICO_AAAMAIN>,0
aUnableToCrea_6:
		unicode	0, <Unable to create main OllyDbg window>,0
aTooltips_cla_1:
		unicode	0, <tooltips_class32>,0
aSVI_02iS:
		unicode	0, <!%s v!%i.!%02i!%s>,0
aUnableToInitia:
		unicode	0, <Unable to initialize COM library.> 
		unicode 0, <Some features will be d>
		unicode	0, <isabled.>,0
aCommandLine:
		unicode	0, <Command line: >,0
aMdiclient:
		unicode	0, <MDICLIENT>,0
aUnableToInit_0:
		unicode	0, <Unable to initialize OllyDbg>,0
aCheckDllVersio:
		unicode	0, <Check DLL versions>,0
aDbghelp_dll:
		unicode	0, <DBGHELP.DLL>,0
aYouDoNotHaveAd:
		unicode	0, <You do not have administrative>
		unicode 0, < rights on this computer. A>
		unicode	0, <s a result, some debugging >
		unicode 0, <features may fail. To enable >
		unicode	0, <all OllyDbg features, please log> 
		unicode 0, <in as administrator.>,0
aUnableToInit_1:
		unicode	0, <Unable to initialize Disassembler. >
		unicode 0, <Please contact author.>
aUnableToInit_2:
		unicode	0, <Unable to initialize .NET Disassembler. >
		unicode 0, <Please contact au>
		unicode	0, <thor.>,0
aNotEnoughMem_0:
		unicode	0, <Not enough memory to >
		unicode 0, <initialize internal structures>,0
aGuidlist:
		unicode	0, <guidlist>,0
aGuidlist_dat:
		unicode	0, <guidlist.dat>,0
aOllydbgIsUna_7:
		unicode	0, <OllyDbg is unable to attach to >
		unicode 0, <process !%08X as a \=just-in>
		unicode	0, <-time\= debugger.>
aEndOfSession_0:		
		db    0
aEndOfSession	db '--------  End of session',0Ah
		db 0Ah,0
; wchar_t aSchemeNameI
aSchemeNameI:				; DATA XREF: .text:004116E8o
		unicode	0, <Scheme name[!%i]>,0
; wchar_t aForeground_1I
aForeground_1I:				; DATA XREF: .text:00411728o
		unicode	0, <Foreground_1[!%i]>,0
; wchar_t aForeground_2I
aForeground_2I:				; DATA XREF: .text:00411772o
		unicode	0, <Foreground_2[!%i]>,0
; wchar_t aBackground_1I
aBackground_1I:				; DATA XREF: .text:00411878o
		unicode	0, <Background_1[!%i]>,0
; wchar_t aBackground_2I
aBackground_2I:				; DATA XREF: .text:004118C2o
		unicode	0, <Background_2[!%i]>,0
; wchar_t aOperandsI
aOperandsI:				; DATA XREF: .text:004119C5o
		unicode	0, <Operands[!%i]>,0
; wchar_t aI_33
aI_33:					; DATA XREF: .text:004119E2o
		unicode	0, <!%i>,0
; wchar_t aModifiedComman
aModifiedComman:			; DATA XREF: .text:004119FAo
		unicode	0, <Modified commands[!%i]>,0
; wchar_t aS_3
aS_3:					; DATA XREF: .text:00411A8Bo
		unicode	0, <!%s>,0
; wchar_t asc_515C6A
asc_515C6A:				; DATA XREF: .text:00411AE2o
		unicode	0, <*,>,0
; wchar_t asc_515C70
asc_515C70:				; DATA XREF: .text:00411B12o
		unicode	0, <!%X,>,0
; wchar_t aStock_x
aStock_x:				; DATA XREF: .text:004122FCo
		unicode	0, <STOCK_X>,0
dword_515C88	dd 0			; DATA XREF: .text:00412831w
stru_515C8C	t_menu <offset aUpdate_1, offset aUpdateConten_5, 0CAh, \
   offset loc_4123EC, 0, <0>>; 0 ;	\=\=
		t_menu <offset aViewCodeInCpu, offset aOpenCodeSectio, 21Ch, \
   offset menufunc, 0, <0>>; 1
		t_menu <offset aViewDataInCpuD, offset aViewDataSectio, 21Dh, \
   offset loc_4124BC, 0, <0>>; 2
		t_menu <offset aViewExecutable, offset aOpenExecutab_0, 21Eh, \
   offset loc_412520, 0, <0>>; 3
		t_menu <offset aShowNames, offset aListAllNames_0, 21Fh, \
   offset loc_4125B8, 0, <0>>; 4
		t_menu <offset aShowNamesInAll, offset aListNamesFromA, 220h, \
   offset loc_4125B8, 0, <1>>; 5
		t_menu <offset aFindAllInter_0, offset aFindAllCallsTo, 221h, \
   offset loc_412624, 0, <0>>; 6
		t_menu <offset asc_517B18, offset aAddModuleToThe, 0, \
   offset loc_41267C, 0, <0>>; 7
		t_menu <offset aAnalyseCode, offset aAnalyseExecu_0, 222h, \
   offset _AnalyseSel, 0, <0>>; 8
		t_menu <offset aSaveDataTo_udd, offset aSaveAnalysisAn, 223h, \
   offset loc_412778, 0, <0>>; 9
		t_menu <offset aLoadDataFrom_u, offset aLoadAnalysisAn, 224h, \
   offset loc_4127C0, 0, <0>>; 10
		t_menu <offset aModules_0, offset aEmptyRange+15h, 0, 0, 0, <0>>; 11
		t_menu <offset asc_517B18, offset aEmptyRange+15h, 0, 0, \ ; \=\=
   offset stru_518B94, <0>>
aEmptyRange:				; DATA XREF: .text:00412A66o
		unicode	0, <empty range>,0
aTheWholeMemory:			; DATA XREF: .text:00412A92o
		unicode	0, <the whole memory>,0
aStackOf:				; DATA XREF: .text:00412C23o
		unicode	0, <Stack of >,0
aDataBlockOf:				; DATA XREF: .text:00412C77o
		unicode	0, <Data block of >,0
aProcessEnviron:			; DATA XREF: .text:00412CC5o
		unicode	0, <Process Environment Block>,0
aUserSharedData:			; DATA XREF: .text:00412CF8o
		unicode	0, <User Shared Data>,0
aProcessParam_0:			; DATA XREF: .text:00412D2Bo
		unicode	0, <Process Parameters Block>,0
aEnvironment:				; DATA XREF: .text:00412D5Eo
		unicode	0, <Environment>,0
aGdiHandles:				; DATA XREF: .text:00412D91o
		unicode	0, <GDI handles>,0
aKernelMemory:				; DATA XREF: .text:00412DC8o
		unicode	0, <Kernel memory>,0
; wchar_t a__
a__:					; DATA XREF: .text:00412E3Co
		unicode	0, <..>,0
; WCHAR	aVarfileinfoTra
aVarfileinfoTra:			; DATA XREF: .text:00412EF3o
		unicode	0, <\\VarFileInfo\\Translation>,0
; wchar_t aStringfilein_2
aStringfilein_2:			; DATA XREF: .text:00412F22o
		unicode	0, <\\StringFileInfo\\!%04x!%04x\\FileVersion>,0
; WCHAR	aStringfilein_1
aStringfilein_1:			; DATA XREF: .text:00412F65o
		unicode	0, <\\StringFileInfo\\040904E4\\FileVersion>,0
; WCHAR	aStringfilein_0
aStringfilein_0:			; DATA XREF: .text:00412F83o
		unicode	0, <\\StringFileInfo\\040904B0\\FileVersion>,0
; WCHAR	aStringfileinfo
aStringfileinfo:			; DATA XREF: .text:00412FA1o
		unicode	0, <\\StringFileInfo\\00000000\\FileVersion>,0
; wchar_t aLoaddll
aLoaddll:				; DATA XREF: .text:loc_41305Ao
		unicode	0, <LOADDLL>,0
; wchar_t a_exe
a_exe:					; DATA XREF: .text:00413079o
		unicode	0, <.EXE>,0
; wchar_t a_dll_1
a_dll_1:				; DATA XREF: .text:loc_4130C0o
		unicode	0, <.DLL>,0
aUnableToSave_u:			; DATA XREF: .text:00413263o
		unicode	0, <Unable to save .udd data >
		unicode 0, <for \-!%s\->,0
aMain_0:				; DATA XREF: .text:004133F6o
		unicode	0, < \{main\}>,0
aLoader:				; DATA XREF: .text:00413435o
		unicode	0, < \{loader\}>,0
aDebuggedDll:				; DATA XREF: .text:0041346Bo
		unicode	0, < \{debugged DLL\}>,0
aSystem:				; DATA XREF: .text:004134A5o
		unicode	0, < \{system\}>,0
; wchar_t a___
a_unkown:;a???:					; DATA XREF: .text:004134D2o
		unicode	0, <!?!?!?>,0
; wchar_t a08xI_
a08xI_:					; DATA XREF: .text:004134FAo
		unicode	0, <!%08X \{!%i.\}>,0
; wchar_t a_net
a_net:					; DATA XREF: .text:00413558o
		unicode	0, <.NET>,0
aHidden:				; DATA XREF: .text:0041357Bo
		unicode	0, <Hidden>,0
aHidden_0:				; DATA XREF: .text:loc_41359Co
		unicode	0, <,hidden>,0
; wchar_t asc_51616A
asc_51616A:				; DATA XREF: .text:004135EAo
		unicode	0, <, >,0
; wchar_t a____0
a____0:					; DATA XREF: .text:00413640o
		unicode	0, <...>,0
aModuleSOllydbg:			; DATA XREF: .text:00413FB1o
		unicode	0, <Module \-!%s\- \{OllyDbg DLL loader\}>,0
aModuleS:				; DATA XREF: .text:00413FCEo
		unicode	0, <Module \-!%s\->,0
; wchar_t aNtdll
aNtdll:					; DATA XREF: .text:0041408Bo
		unicode	0, <NTDLL>,0
; wchar_t aKernel32_0
aKernel32_0:				; DATA XREF: .text:004140A3o
		unicode	0, <KERNEL32>,0
; wchar_t aUser32
aUser32:				; DATA XREF: .text:004140BBo
		unicode	0, <USER32>,0
; wchar_t aAdvapi32
aAdvapi32:				; DATA XREF: .text:004140D3o
		unicode	0, <ADVAPI32>,0
; wchar_t aShell32
aShell32:				; DATA XREF: .text:loc_4140EBo
		unicode	0, <SHELL32>,0
; wchar_t aGdi32
aGdi32:					; DATA XREF: .text:00414103o
		unicode	0, <GDI32>,0
; wchar_t aMod_04x
aMod_04x:				; DATA XREF: .text:0041414Do
		unicode	0, <Mod_!%04X>,0
aModuleSAnonymo:			; DATA XREF: .text:0041415Fo
		unicode	0, <Module >
		dw 3Ch
		unicode	0, <!%s>
		dw 3Eh
		unicode	0, < \{anonymous\}>,0
; wchar_t aRb_3
aRb_3:					; DATA XREF: .text:004141A4o
		unicode	0, <rb>,0
aUnableToOpenEx:			; DATA XREF: .text:004141C4o
		unicode	0, <  Unable to open executable file>,0
aInvalidDosSign:			; DATA XREF: .text:00414226o
		unicode	0, <  Invalid DOS signature>,0
aInvalidPeSigna:			; DATA XREF: .text:0041428Co
		unicode	0, <  Invalid PE signature>,0
aNotAn80x86Exec:			; DATA XREF: .text:004142D7o
		unicode	0, <  Not an 80x86 executable>,0
aTooShortOption:			; DATA XREF: .text:00414400o
		unicode	0, <  Too short Optional Header>,0
aSizeOfOptional:			; DATA XREF: .text:0041442Fo
		unicode	0, <  Size of Optional Header \{!%i. bytes\} >
		unicode 0, <differs from expect>
		unicode	0, <ed \{!%i.\}>,0
aInvalidOptiona:			; DATA XREF: .text:loc_4145CDo
		unicode	0, <  Invalid Optional Header>,0
aSectionalignme:			; DATA XREF: .text:00414602o
		unicode	0, <  SectionAlignment in Optional Header > 
		unicode 0, <is 0x!%X bytes inste>
		unicode	0, <ad of 0x!%X>,0
aDifferentPeHea:			; DATA XREF: .text:004146BCo
		unicode	0, <  Different PE headers in file >
		unicode 0, <and in memory!%s, memory da>
		unicode	0, <ta will be used>,0
aPendingSystemU:			; DATA XREF: .text:004146A9o
		unicode	0, < \{pending system update!?\}>,0
aExportTable:				; DATA XREF: .text:loc_41476Fo
		unicode	0, <Export table>,0
aImportTable:				; DATA XREF: .text:loc_414785o
		unicode	0, <Import table>,0
aResourceTable:				; DATA XREF: .text:loc_41479Bo
		unicode	0, <Resource table>,0
aExceptionTable:			; DATA XREF: .text:loc_4147B1o
		unicode	0, <Exception table>,0
aCertificateTab:			; DATA XREF: .text:loc_4147C4o
		unicode	0, <Certificate table>,0
aBaseRelocation:			; DATA XREF: .text:loc_4147D7o
		unicode	0, <Base relocation table>,0
aDebuggingInfoT:			; DATA XREF: .text:loc_4147EAo
		unicode	0, <Debugging info table>,0
aTlsTable:				; DATA XREF: .text:loc_4147FDo
		unicode	0, <TLS table>,0
aImportAddressT:			; DATA XREF: .text:loc_414810o
		unicode	0, <Import address table>,0
aDelayImportTab:			; DATA XREF: .text:loc_414823o
		unicode	0, <Delay import table>,0
aDifferentPeDat:			; DATA XREF: .text:0041483Ao
		unicode	0, <  Different PE Data Directory >
		unicode 0, <in file and in memory \{anti>
		unicode	0, <virus!?\}>,0
aSFile08x08xMem:			; DATA XREF: .text:00414873o
		unicode	0, <  !%s: file \{!%08X,!%08X\}, memory \{!%08X,!%08X\}>,0
aFileContainsIn:			; DATA XREF: .text:004148B5o
		unicode	0, <  File contains invalid number of sections \{!%i.\}>,0
aUnableToReadSe:			; DATA XREF: .text:00414914o
		unicode	0, <  Unable to read section headers>,0
; wchar_t aSect_X
aSect_X:				; DATA XREF: .text:00414A43o
		dw 3Ch
		unicode	0, <Sect_!%X>
		dw 3Eh,	0
aEntryPointInPe:			; DATA XREF: .text:00414CD3o
		unicode	0, <  Entry point in PE \{!%08X\} >
		unicode 0, <differs from reported by OS \{!%>
		unicode	0, <08X\}>,0
; wchar_t aModuleentryp_0
aModuleentryp_0:			; DATA XREF: .text:00414CF1o
		
		unicode	0, <\[ModuleEntryPoint\]>,0
		
aBaseofcodePoin:			; DATA XREF: .text:00414DF3o
		unicode	0, <  BaseOfCode points to end of code, corrected to section \-!%s\->,0
aCodeSizeInHead:			; DATA XREF: .text:00414F18o
		unicode	0, <  Code size in header is !%08X, extended to size of section \-!%s\- \{!%08X\}>,0
aCodeStartInHea:			; DATA XREF: .text:00414FEFo
		unicode	0, <  Code start in header is !%08X, extended to start of section \-!%s\->,0
aCodeSizeInHe_1:			; DATA XREF: .text:00415083o
		unicode	0, <  Code size in header is !%08X, extended to end of section \-!%s\->,0
aCodeSizeInHe_0:			; DATA XREF: .text:00415170o
		unicode	0, <  Code size in header is 0, assumed code in section !%s>,0
aCodeSizeIsExte:			; DATA XREF: .text:loc_4152DEo
		unicode	0, <  Code size is extended to include all sections marked as CODE>,0
aSizeOfCodeInHe:			; DATA XREF: .text:00415392o
		unicode	0, <  Size of code in header is too large>,0
aProbablySfxFil:			; DATA XREF: .text:0041548Do
		unicode	0, <  Probably SFX file, code area extended to cover SFX placeholder \-!%s\->,0
aProbablySfxF_0:			; DATA XREF: .text:loc_4154A7o
		unicode	0, <  Probably SFX file, code area extended to cover SFX placeholders>,0
; wchar_t a_data
a_data:					; DATA XREF: .text:0041556Eo
		unicode	0, <.DATA>,0
aUnableToReadEx:			; DATA XREF: .text:004156F7o
		unicode	0, <  Unable to read export data>,0
aInvalidExportD:			; DATA XREF: .text:loc_415785o
		unicode	0, <  Invalid export data>,0
aExportDirector:			; DATA XREF: .text:loc_4157FFo
		unicode	0, <  Export directory in memory is damaged>,0
aInvalidImageEx:			; DATA XREF: .text:004158D2o
		unicode	0, <  Invalid Image Export Directory, >
		unicode 0, <or system update is pending>,0
aInvalidOrCompr:			; DATA XREF: .text:loc_4158ECo
		unicode	0, <  Invalid or compressed Image Export Directory>,0
; wchar_t aS_S
aS_S:					; DATA XREF: .text:00415A70o
		unicode	0, <!%s.!%s>,0
; wchar_t aKernel32_debug
aKernel32_debug:			; DATA XREF: .text:00415AD7o
		unicode	0, <KERNEL32.DebugBreak>,0
; wchar_t aNtdll_dbgbreak
aNtdll_dbgbreak:			; DATA XREF: .text:loc_415B00o
		unicode	0, <NTDLL.DbgBreakPoint>,0
; wchar_t aNtdll_kiuserex
aNtdll_kiuserex:			; DATA XREF: .text:loc_415B29o
		unicode	0, <NTDLL.KiUserExceptionDispatcher>,0
; wchar_t aNtdll_rtlusere
aNtdll_rtlusere:			; DATA XREF: .text:00415B41o
		unicode	0, <NTDLL.RtlUserExceptionDispatcher>,0
; wchar_t aNtdll_zwcontin
aNtdll_zwcontin:			; DATA XREF: .text:loc_415B6Ao
		unicode	0, <NTDLL.ZwContinue>,0
; wchar_t aNtdll_rtlencod
aNtdll_rtlencod:			; DATA XREF: .text:loc_415B92o
		unicode	0, <NTDLL.RtlEncodePointer>,0
; wchar_t aNtdll_rtladdve
aNtdll_rtladdve:			; DATA XREF: .text:loc_415BC1o
		unicode	0, <NTDLL.RtlAddVectoredExceptionHandler>,0
; wchar_t aNtdll_rtlraise
aNtdll_rtlraise:			; DATA XREF: .text:loc_415BEAo
		unicode	0, <NTDLL.RtlRaiseException>,0
; wchar_t aKernel32_unhan
aKernel32_unhan:			; DATA XREF: .text:loc_415C12o
		unicode	0, <KERNEL32.UnhandledExceptionFilter>,0
; wchar_t aNtdll_ntqueryi
aNtdll_ntqueryi:			; DATA XREF: .text:loc_415C3Bo
		unicode	0, <NTDLL.NtQueryInformationProcess>,0
; wchar_t aNtdll_zwqueryi
aNtdll_zwqueryi:			; DATA XREF: .text:00415C53o
		unicode	0, <NTDLL.ZwQueryInformationProcess>,0
; wchar_t aKernel32_outpu
aKernel32_outpu:			; DATA XREF: .text:loc_415C79o
		unicode	0, <KERNEL32.OutputDebugStringA>,0
; wchar_t aKernel32_out_0
aKernel32_out_0:			; DATA XREF: .text:loc_415C9Fo
		unicode	0, <KERNEL32.OutputDebugStringW>,0
; wchar_t aMscoree__corex
aMscoree__corex:			; DATA XREF: .text:loc_415CC4o
		unicode	0, <MSCOREE._CorExeMain>,0
aExportSIsRedir:			; DATA XREF: .text:00415D5Fo
		unicode	0, <  Export \-!%s\- is redirected to !%08X>,0
aExportIIsRedir:			; DATA XREF: .text:00415DFCo
		unicode	0, <  Export #!%i is redirected to !%08X>,0
; wchar_t aS_I
aS_I:					; DATA XREF: .text:00415E35o
		unicode	0, <#s.#!%i>,0
aOriginal_S:				; DATA XREF: .text:00415E4Ao

		unicode	0, <\[Original_!%s\]>,0
aRedirectedToS:				; DATA XREF: .text:00415E90o
		unicode	0, <Redirected to !%s>,0
aRedirectedFrom:			; DATA XREF: .text:00415ED6o
		unicode	0, <Redirected from \[Original_!%s\]>,0

aUnableToReadIm:			; DATA XREF: .text:0041649Eo
		unicode	0, <  Unable to read import data>,0
aUnableToReadFi:			; DATA XREF: .text:00416728o
		unicode	0, <  Unable to read fixup data>,0
aModuleContains:			; DATA XREF: .text:00416748o
		unicode	0, <  Module contains unknown or non-32bit fixups>,0
aUnableToReadTl:			; DATA XREF: .text:004167EBo
		unicode	0, <  Unable to read TLS directory>,0
aUnableToRead_2:			; DATA XREF: .text:00416838o
		unicode	0, <  Unable to read TLS callback address>,0
aInvalidTlsCall:			; DATA XREF: .text:loc_41686Bo
		unicode	0, <  Invalid TLS callback address>,0
aModuleContai_0:			; DATA XREF: .text:00416899o
		unicode	0, <  Module contains TLS callback\{s\}>,0
; wchar_t aTls_callback_I
aTls_callback_I:			; DATA XREF: .text:004168BEo

		unicode	0, <\[TLS_Callback_!%i\]>,0

aEntryPointBelo:			; DATA XREF: .text:004169B6o
		unicode	0, <  Entry point belongs to no section>,0
aSectionSPointe:			; DATA XREF: .text:00416A40o
		unicode	0, <  Section \-!%s\-, pointed to by entry point, is assumed to contain code>,0
aCodeSectionsSA:			; DATA XREF: .text:00416B97o
		unicode	0, <  Code sections \-!%s\- and \-!%s\- will be merged to a single memory block>,0
aErrorReadingEx:			; DATA XREF: .text:00416BCDo
		unicode	0, <  Error reading executable file>,0
aErrorParsingMo:			; DATA XREF: .text:loc_416BE7o
		unicode	0, <  Error parsing module in memory>,0
aUnableToLocate:			; DATA XREF: .text:0041257Bo
		unicode	0, <Unable to locate executable file>,0
aLimitRunTraceP:			; DATA XREF: .text:004126B5o
		unicode	0, <Limit run trace protocol to selected module>,0
aAddModuleToRun:			; DATA XREF: .text:loc_4126CCo
		unicode	0, <Add module to run trace protocol>,0
aUpdate_1:				; DATA XREF: .data:stru_515C8Co
		unicode	0, <\AUpdate>,0
aUpdateConten_5:			; DATA XREF: .data:stru_515C8Co
		unicode	0, <Update contents of Modules window>,0
aViewCodeInCpu:				; DATA XREF: .data:stru_515C8Co
		unicode	0, <View \Acode in CPU>,0
aOpenCodeSectio:			; DATA XREF: .data:stru_515C8Co
		unicode	0, <Open code section in CPU window and follow entry>,0
aViewDataInCpuD:			; DATA XREF: .data:stru_515C8Co
		unicode	0, <View \Adata in CPU Dump>,0
aViewDataSectio:			; DATA XREF: .data:stru_515C8Co
		unicode	0, <View data section in CPU Dump pane>,0
aViewExecutable:			; DATA XREF: .data:stru_515C8Co
		unicode	0, <View \Aexecutable file>,0
aOpenExecutab_0:			; DATA XREF: .data:stru_515C8Co
		unicode	0, <Open executable file in standalone Dump window>,0
aShowNames:				; DATA XREF: .data:stru_515C8Co
		unicode	0, <|Show names>,0
aListAllNames_0:			; DATA XREF: .data:stru_515C8Co
		unicode	0, <List all names declared in the selected module>,0
aShowNamesInAll:			; DATA XREF: .data:stru_515C8Co
		unicode	0, <Show names in all modules>,0
aListNamesFromA:			; DATA XREF: .data:stru_515C8Co
		unicode	0, <List names from all loaded modules>,0
aFindAllInter_0:			; DATA XREF: .data:stru_515C8Co
		unicode	0, <Find all intermodular calls>,0
aFindAllCallsTo:			; DATA XREF: .data:stru_515C8Co
		unicode	0, <Find all calls to outside the module>,0
asc_517B18:				; DATA XREF: .data:stru_515C8Co
					; .data:00515DACo
		unicode	0, <|>,0
aAddModuleToThe:			; DATA XREF: .data:stru_515C8Co
		unicode	0, <Add module to the run trace protocol>,0
aAnalyseCode:				; DATA XREF: .data:stru_515C8Co
		unicode	0, <|Analyse code>,0
aAnalyseExecu_0:			; DATA XREF: .data:stru_515C8Co
		unicode	0, <Analyse executable code in the selected module>,0
aSaveDataTo_udd:			; DATA XREF: .data:stru_515C8Co
		unicode	0, <Save data to .udd file...>,0
aSaveAnalysisAn:			; DATA XREF: .data:stru_515C8Co
		unicode	0, <Save analysis and user-added data >
		unicode 0, <to the .udd file>,0
aLoadDataFrom_u:			; DATA XREF: .data:stru_515C8Co
		unicode	0, <Load data from .udd file...>,0
aLoadAnalysisAn:			; DATA XREF: .data:stru_515C8Co
		unicode	0, <Load analysis and user-added data >
		unicode 0, <from the .udd file>,0
aModules_0:				; DATA XREF: .data:stru_515C8Co
		unicode	0, <|*MODULES>,0
aModules_1:
		unicode	0, <Modules>,0
aBaseSystem:
		unicode	0, <Base$    \{System\}>,0
aBaseAddressAnd:
		unicode	0, <Base address and whether this is a system module>,0
aSizeDecimal:
		unicode	0, <Size$    \{Decimal\}>,0
aSizeOfMemoryOc:
		unicode	0, <Size of memory occupied by module>,0
aEntry:
		unicode	0, <Entry>,0
aModuleEntryPoi:
		unicode	0, <Module entry point>,0
aName:
		unicode	0, <Name>,0
aInternalShortM:
		unicode	0, <Internal short module name>,0
aType_2:
		unicode	0, <Type>,0
aTypeOfTheModul:
		unicode	0, <Type of the module \{.NET or native\}>,0
aFileVersion:
		unicode	0, <File version>,0
aVersionOfExecu:
		unicode	0, <Version of executable file>,0
aStaticLinks:
		unicode	0, <Static links>,0
aModulesStatica:
		unicode	0, <Modules statically linked to this module>,0
aPath_0:
		unicode	0, <Path>,0
aFullNameOfExec:
		unicode	0, <Full name of executable file>,0
aIco_e:
		unicode	0, <ICO_E>,0
aExecutableMo_2:
		unicode	0, <Executable modules>,0
aModule_0:				; DATA XREF: .text:00417177o
		unicode	0, <Module>,0
aSelectModule:				; DATA XREF: .text:0041717Eo
		unicode	0, <Select module>,0
dword_518050	dd 1			; DATA XREF: .text:00417361w
stru_518054	t_menu <offset asc_5181EC, 0, 0, offset loc_418D28, 0, <0>>; 0
		t_menu <0, 0, 212h, offset loc_418D64, 0, <0>>;	1 ; \=\=
		t_menu <0, 0, 213h, offset loc_418D64, 0, <1>>;	2
		t_menu <0, 0, 214h, offset loc_418D64, 0, <2>>;	3
		t_menu <0, 0, 215h, offset loc_418E30, 0, <0>>;	4
		t_menu <0, 0, 216h, offset loc_418E64, 0, <0>>;	5
		t_menu <0, 0, 217h, offset loc_418F5C, 0, <0>>;	6
		t_menu <offset aLog_1, offset a08lx+9, 0, 0, 0, <0>>; 7
		t_menu <offset asc_518454, offset a08lx+9, 0, 0, offset stru_518B94, <0>>; 8
; wchar_t a08lx
a08lx:					; DATA XREF: .text:00418FB0o
		unicode	0, <!%08lX>,0
; char a08lxS[]
a08lxS		db '!%08lX',9,'!%s',0Ah,0 ; DATA XREF: .text:0041929Eo
; char a08lxS_0[]
a08lxS_0	db '!%08lX  !%s',0Ah,0    ; DATA XREF: .text:004192E2o
; char aS_0[]
aS_0		db '          !%s',0Ah,0 ; DATA XREF: .text:004192FEo
		db 0
aSelectLogFile:				; DATA XREF: .text:00418ECBo
		unicode	0, <Select log file>,0
; wchar_t a_txt
a_txt:					; DATA XREF: .text:00418EC1o
		unicode	0, <*.txt>,0
; wchar_t aAT
aAT:					; DATA XREF: .text:00418EF0o
		unicode	0, <a+t>,0
aWt:					; DATA XREF: .text:loc_418EF7o
		unicode	0, <wt>,0
aUnableToOpenLo:			; DATA XREF: .text:00418F1Fo
		unicode	0, <Unable to open log file \-!%s\->,0
; char aLoggingStopped[]
aLoggingStopped	db '--------  Logging stopped',0Ah ; DATA XREF: .text:00418F7Eo
		db 0Ah,0
asc_5181EC:				; DATA XREF: .data:stru_518054o
		unicode	0, <\:>,0
aFollowInDisass:
		unicode	0, <Follow in Disassembler>,0
aShowAddressI_2:
		unicode	0, <Show address in CPU Disassembler pane>,0
aFollowInCpuD_0:
		unicode	0, <Follow in CPU Dump>,0
aShowAddressInC:
		unicode	0, <Show address in CPU Dump pane>,0
aFollowInCpuSta:
		unicode	0, <Follow in CPU Stack>,0
aShowAddressI_0:
		unicode	0, <Show address in CPU Stack pane>,0
aClearLog:
		unicode	0, <|Clear log>,0
aEmptyLogWindow:
		unicode	0, <Empty log window \{doesn\-t influence log file\}>,0
aLogToFile___:
		unicode	0, <Log to file...>,0
aStartWritingNe:
		unicode	0, <Start writing new log data to the file>,0
aStopLogging:
		unicode	0, <Stop logging>,0
aCloseLogFile:
		unicode	0, <Close log file>,0
aLog_1:					; DATA XREF: .data:stru_518054o
		unicode	0, <|*LOG>,0
asc_518454:				; DATA XREF: .data:stru_518054o
		unicode	0, <|>,0
; wchar_t aLogData
aLogData:				; DATA XREF: .text:loc_419554o
		unicode	0, <Log data>,0
aAddress_6:				; DATA XREF: .text:00419577o
		unicode	0, <Address>,0
aMemoryAddressA:			; DATA XREF: .text:00419583o
		unicode	0, <Memory address associated with message>,0
aMessage:				; DATA XREF: .text:0041959Co
		unicode	0, <Message>,0
; const	WCHAR icon
icon:					; DATA XREF: .text:0041966Co
		unicode	0, <ICO_L>,0

; UINT dword_5184E4
dword_5184E4	dd 50			; DATA XREF: .text:0041E413r
		dd 100
		dd 200
		dd 500
		dd 1000
		dd 2000
		dd 5000
		dd 10000
stru_518504	t_menu <offset aWholeLine, offset aCopySelectedLi, 0CBh, \
   offset loc_419BEC, 0, <0>>; 0 ;	\=Whole line\=
		t_menu <offset aWholeTable, offset aCopyWholeTable, 0CCh, \
   offset loc_419CAC, 0, <0>>; 1
		t_menu <offset asc_518ECC, offset aCopySelectedIt, 0, \
   offset loc_419D6C, 0, <0>>; 2
		t_menu <offset word_518C6C, offset aCopySelectedIt, 0, \
   offset loc_419D6C, 0, <1>>; 3
		t_menu <offset word_518C6C, offset aCopySelectedIt, 0, \
   offset loc_419D6C, 0, <2>>; 4
		t_menu <offset word_518C6C, offset aCopySelectedIt, 0, \
   offset loc_419D6C, 0, <3>>; 5
		t_menu <offset word_518C6C, offset aCopySelectedIt, 0, \
   offset loc_419D6C, 0, <4>>; 6
		t_menu <offset word_518C6C, offset aCopySelectedIt, 0, \
   offset loc_419D6C, 0, <5>>; 7
		t_menu <offset word_518C6C, offset aCopySelectedIt, 0, \
   offset loc_419D6C, 0, <6>>; 8
		t_menu <offset word_518C6C, offset aCopySelectedIt, 0, \
   offset loc_419D6C, 0, <7>>; 9
		t_menu <offset word_518C6C, offset aCopySelectedIt, 0, \
   offset loc_419D6C, 0, <8>>; 10
		t_menu <offset word_518C6C, offset aCopySelectedIt, 0, \
   offset loc_419D6C, 0, <9>>; 11
		t_menu <offset word_518C6C, offset aCopySelectedIt, 0, \
   offset loc_419D6C, 0, <0Ah>>; 12
		t_menu <offset word_518C6C, offset aCopySelectedIt, 0, \
   offset loc_419D6C, 0, <0Bh>>; 13
		t_menu <offset word_518C6C, offset aCopySelectedIt, 0, \
   offset loc_419D6C, 0, <0Ch>>; 14
		t_menu <offset word_518C6C, offset aCopySelectedIt, 0, \
   offset loc_419D6C, 0, <0Dh>>; 15
		t_menu <offset word_518C6C, offset aCopySelectedIt, 0, \
   offset loc_419D6C, 0, <0Eh>>; 16
		t_menu <offset word_518C6C, offset aCopySelectedIt, 0, \
   offset loc_419D6C, 0, <0Fh>>; 17
		t_menu <offset word_518C6C, offset aCopySelectedIt, 0, \
   offset loc_419D6C, 0, <10h>>; 18
		t_menu	<0>
stru_5186E4	t_menu <offset word_518C6C, offset aSelectSortingC, 0, \
   offset loc_419E74, 0, <0>>; 0 ;	\=Select	sorting	criterium\=
		t_menu <offset word_518C6C, offset aSelectSortingC, 0, \
   offset loc_419E74, 0, <1>>; 1
		t_menu <offset word_518C6C, offset aSelectSortingC, 0, \
   offset loc_419E74, 0, <2>>; 2
		t_menu <offset word_518C6C, offset aSelectSortingC, 0, \
   offset loc_419E74, 0, <3>>; 3
		t_menu <offset word_518C6C, offset aSelectSortingC, 0, \
   offset loc_419E74, 0, <4>>; 4
		t_menu <offset word_518C6C, offset aSelectSortingC, 0, \
   offset loc_419E74, 0, <5>>; 5
		t_menu <offset word_518C6C, offset aSelectSortingC, 0, \
   offset loc_419E74, 0, <6>>; 6
		t_menu <offset word_518C6C, offset aSelectSortingC, 0, \
   offset loc_419E74, 0, <7>>; 7
		t_menu <offset word_518C6C, offset aSelectSortingC, 0, \
   offset loc_419E74, 0, <8>>; 8
		t_menu <offset word_518C6C, offset aSelectSortingC, 0, \
   offset loc_419E74, 0, <9>>; 9
		t_menu	<0>
stru_5187EC	t_menu <offset word_518C6C, offset aSelectFont, 0, offset loc_419F48, \
   0, <0>>		; 0 ; \=Select font\=
		t_menu <offset word_518C6C, offset aSelectFont, 0, offset loc_419F48, \
   0, <1>>		; 1
		t_menu <offset word_518C6C, offset aSelectFont, 0, offset loc_419F48, \
   0, <2>>		; 2
		t_menu <offset word_518C6C, offset aSelectFont, 0, offset loc_419F48, \
   0, <3>>		; 3
		t_menu <offset word_518C6C, offset aSelectFont, 0, offset loc_419F48, \
   0, <4>>		; 4
		t_menu <offset word_518C6C, offset aSelectFont, 0, offset loc_419F48, \
   0, <5>>		; 5
		t_menu <offset word_518C6C, offset aSelectFont, 0, offset loc_419F48, \
   0, <6>>		; 6
		t_menu <offset word_518C6C, offset aSelectFont, 0, offset loc_419F48, \
   0, <7>>		; 7
		t_menu	<0>
stru_5188C4	t_menu <offset word_518C6C, offset aSelectColourSc, 0, \
   offset loc_419FC0, 0, <0>>; 0 ;	\=Select	colour scheme\=
		t_menu <offset word_518C6C, offset aSelectColourSc, 0, \
   offset loc_419FC0, 0, <1>>; 1
		t_menu <offset word_518C6C, offset aSelectColourSc, 0, \
   offset loc_419FC0, 0, <2>>; 2
		t_menu <offset word_518C6C, offset aSelectColourSc, 0, \
   offset loc_419FC0, 0, <3>>; 3
		t_menu <offset word_518C6C, offset aSelectColourSc, 0, \
   offset loc_419FC0, 0, <4>>; 4
		t_menu <offset word_518C6C, offset aSelectColourSc, 0, \
   offset loc_419FC0, 0, <5>>; 5
		t_menu <offset word_518C6C, offset aSelectColourSc, 0, \
   offset loc_419FC0, 0, <6>>; 6
		t_menu <offset word_518C6C, offset aSelectColourSc, 0, \
   offset loc_419FC0, 0, <7>>; 7
		t_menu	<0>
stru_51899C	t_menu <offset word_518C6C, offset aStopHighlighti, 0, \
   offset loc_41A034, 0, <0>>; 0 ;	\=Stop highlighting\=
		t_menu <offset word_518C6C, offset aSelectHighligh, 0, \
   offset loc_41A034, 0, <1>>; 1
		t_menu <offset word_518C6C, offset aSelectHighligh, 0, \
   offset loc_41A034, 0, <2>>; 2
		t_menu <offset word_518C6C, offset aSelectHighligh, 0, \
   offset loc_41A034, 0, <3>>; 3
		t_menu <offset word_518C6C, offset aSelectHighligh, 0, \
   offset loc_41A034, 0, <4>>; 4
		t_menu <offset word_518C6C, offset aSelectHighligh, 0, \
   offset loc_41A034, 0, <5>>; 5
		t_menu <offset word_518C6C, offset aSelectHighligh, 0, \
   offset loc_41A034, 0, <6>>; 6
		t_menu <offset word_518C6C, offset aSelectHighligh, 0, \
   offset loc_41A034, 0, <7>>; 7
		t_menu	<0>
stru_518A74	t_menu <offset aAlwaysOnTop_0, offset aMakeThisMdiWin, 0CFh, \
   offset loc_41A0AC, 0, <0>>; 0 ;	\=Select	font\=
		t_menu <offset aAlwaysOnTop_0, offset aMakeThisWindow, 0CFh, \
   offset loc_41A0AC, 0, <1>>; 1
		t_menu <offset aAutoupdate, offset aPeriodicallyUp, 0D0h, \
   offset loc_41A150, 0, <0>>; 2
		t_menu <offset aHideBar, offset aHideBarWithCol, 0D1h, \
   offset loc_41A1BC, 0, <0>>; 3
		t_menu <offset aShowBar, offset aDisplayBarWith, 0D1h, \
   offset loc_41A1BC, 0, <1>>; 4
		t_menu <offset aHideHorizont_0, offset aHideHorizontal, 0D2h, \
   offset loc_41A22C, 0, <0>>; 5
		t_menu <offset aShowHorizontal, offset aShowHorizont_1, 0D2h, \
   offset loc_41A22C, 0, <1>>; 6
		t_menu <offset aDefaultColumns, offset aResizeAllColum, 0D3h, \
   offset loc_41A290, 0, <0>>; 7
		t_menu <offset aFont_0, offset aSelectFont, 0, 0, offset stru_5187EC, <0>>; 8
		t_menu <offset aColours_0, offset aSelectColourSc, 0, 0, \
   offset stru_5188C4, <0>>; 9
		t_menu <offset aHighlighting, offset aSelectHighligh, 0, 0, \
   offset stru_51899C, <0>>; 10
stru_518B7C label t_menu		
		t_menu	<0>
stru_518B94 label t_menu		
		t_menu <offset aCopyToClipboar, offset aCopyToClipboar, 0, 0, \
   offset stru_518504, <0>>; 0 ; \=Appearance\=
		t_menu <offset aSortBy, offset aSelectSortingC, 0, 0, \
   offset stru_5186E4, <0>>; 1
		t_menu <offset aAppearance, offset aAppearanceFont, 0, 0, \
   offset stru_518A74, <0>>; 2
stru_518BDC label t_menu	
		t_menu	<0>
stru_518BF4 label t_menu	
		t_menu <offset aCopyToClipboar, offset aCopyTheWholeTa, 0CBh, \
   offset loc_419CAC, 0, <1>>; 0 ;	\=Appearance\=
		t_menu <offset aAppearance, offset aAppearanceFont, 0, 0, \
   offset stru_518A74, <0>>; 1
stru_518C24 label t_menu
		t_menu	<0>
stru_518C3C	t_menu <offset aAppearance, offset aAppearanceFont, 0, 0, \
   offset stru_518A74, <0>>; 0 ; \=Appearance\=
		t_menu	<0>
; const	WCHAR word_518C6C
word_518C6C	dw 0			; DATA XREF: .text:loc_41A4EAo
; wchar_t aU_7
aU_7:					; DATA XREF: .text:0041A506o
		unicode	0, < \{!%u\}>,0

; wchar_t asc_518C7A
asc_518C7A:				; DATA XREF: .text:loc_41A518o
		unicode	0, < >,0
; const	WCHAR asc_518C7E
asc_518C7E:				; DATA XREF: .text:00419B4Co
		dw 2 dup(3Ch), 0
aAttentionSnowF:			; DATA XREF: .text:0041AA7Eo
		unicode	0, <ATTENTION, snow-free drawing is not possible\:>,0
; wchar_t aAppearance
aAppearance:				; DATA XREF: .text:0041EA1Eo
		unicode	0, <Appearance>,0
; wchar_t aAppearanceI
aAppearanceI:				; DATA XREF: .text:0041EA43o
		unicode	0, <Appearance[!%i]>,0
; wchar_t aIIIII_0
aIIIII_0:				; DATA XREF: .text:0041EA7Ao
		unicode	0, <!%i,!%i,!%i,!%i,!%i>,0
; wchar_t aI
aI:					; DATA XREF: .text:0041EAB0o
		unicode	0, <!%i,>,0
; wchar_t aColumns_0
aColumns_0:				; DATA XREF: .text:0041EAFCo
		unicode	0, <Columns>,0
; wchar_t aColumnsI
aColumnsI:				; DATA XREF: .text:0041EB21o
		unicode	0, <Columns[!%i]>,0
; wchar_t aSort
aSort:					; DATA XREF: .text:0041EB5Do
		unicode	0, <Sort>,0
; wchar_t aSortI
aSortI:					; DATA XREF: .text:0041EB82o
		unicode	0, <Sort[!%i]>,0
; const	WCHAR aTooltips_cla_0
aTooltips_cla_0:			; DATA XREF: .text:0042104Co
		unicode	0, <tooltips_class32>,0
aUnnamedTable:				; DATA XREF: .text:00421161o
		unicode	0, <Unnamed table>,0
aItemI:					; DATA XREF: .text:00421181o
		unicode	0, <, item !%i>,0
aUnableToCopy:				; DATA XREF: .text:00419C37o
		unicode	0, <Unable to copy>,0
aWholeLine:				; DATA XREF: .data:stru_518504o
		unicode	0, <Whole line>,0
aCopySelectedLi:			; DATA XREF: .data:stru_518504o
		unicode	0, <Copy selected line to clipboard>,0
aWholeTable:				; DATA XREF: .data:stru_518504o
		unicode	0, <Whole table>,0
aCopyWholeTable:			; DATA XREF: .data:stru_518504o
		unicode	0, <Copy whole table to clipboard, >
		unicode 0, <preserving column widths>,0
asc_518ECC:				; DATA XREF: .data:stru_518504o
		unicode	0, <|>,0
aCopySelectedIt:			; DATA XREF: .data:stru_518504o
		unicode	0, <Copy selected item in  >
		unicode 0, <named column to clipboard>,0
aSelectSortingC:			; DATA XREF: .data:stru_5186E4o
					; .data:stru_518B94o
		unicode	0, <Select sorting criterium>,0
aSelectFont:				; DATA XREF: .data:stru_5187ECo
					; .data:stru_518A74o
		unicode	0, <Select font>,0
aSelectColourSc:			; DATA XREF: .data:stru_5188C4o
					; .data:stru_518A74o
		unicode	0, <Select colour scheme>,0
aStopHighlighti:			; DATA XREF: .data:stru_51899Co
		unicode	0, <Stop highlighting>,0
aSelectHighligh:			; DATA XREF: .data:stru_51899Co
					; .data:stru_518A74o
		unicode	0, <Select highlighting scheme>,0
aAlwaysOnTop_0:				; DATA XREF: .data:stru_518A74o
		unicode	0, <Always on top>,0
aMakeThisMdiWin:			; DATA XREF: .data:stru_518A74o
		unicode	0, <Make this MDI window topmost>,0
aMakeThisWindow:			; DATA XREF: .data:stru_518A74o
		unicode	0, <Make this window topmost>,0
aAutoupdate:				; DATA XREF: .data:stru_518A74o
		unicode	0, <Autoupdate>,0
aPeriodicallyUp:			; DATA XREF: .data:stru_518A74o
		unicode	0, <Periodically update the contents of the window>,0
aHideBar:				; DATA XREF: .data:stru_518A74o
		unicode	0, <Hide bar>,0
aHideBarWithCol:			; DATA XREF: .data:stru_518A74o
		unicode	0, <Hide bar with column names >
		unicode 0, <on the top of the table>,0
aShowBar:				; DATA XREF: .data:stru_518A74o
		unicode	0, <Show bar>,0
aDisplayBarWith:			; DATA XREF: .data:stru_518A74o
		unicode	0, <Display bar with column names >
		unicode 0, <on the top of the table>,0
aHideHorizont_0:			; DATA XREF: .data:stru_518A74o
		unicode	0, <Hide horizontal scroll>,0
aHideHorizontal:			; DATA XREF: .data:stru_518A74o
		unicode	0, <Hide horizontal scrollbar>,0
aShowHorizontal:			; DATA XREF: .data:stru_518A74o
		unicode	0, <Show horizontal scroll>,0
aShowHorizont_1:			; DATA XREF: .data:stru_518A74o
		unicode	0, <Show horizontal scrollbar>,0
aDefaultColumns:			; DATA XREF: .data:stru_518A74o
		unicode	0, <Default columns>,0
aResizeAllColum:			; DATA XREF: .data:stru_518A74o
		unicode	0, <Resize all columns to default width>,0
aFont_0:				; DATA XREF: .data:stru_518A74o
		unicode	0, <|Font>,0
aColours_0:				; DATA XREF: .data:stru_518A74o
		unicode	0, <Colours>,0
aHighlighting:				; DATA XREF: .data:stru_518A74o
		unicode	0, <Highlighting>,0
aCopyToClipboar:			; DATA XREF: .data:stru_518B94o
					; .data:stru_518BF4o
		unicode	0, <Copy to clipboard>,0
aSortBy:				; DATA XREF: .data:stru_518B94o
		unicode	0, <Sort by>,0
aAppearanceFont:			; DATA XREF: .data:stru_518B94o
					; .data:stru_518BF4o ...
		unicode	0, <Appearance, fonts, colours...>,0
aCopyTheWholeTa:			; DATA XREF: .data:stru_518BF4o
		unicode	0, <Copy the whole table to clipboard>,0
; const	WCHAR aPlacement_0
aPlacement_0:				; DATA XREF: .text:00421D5Fo
		unicode	0, <Placement>,0
; const	WCHAR IconName
IconName:				; DATA XREF: .text:0042285Eo
		unicode	0, <ICO_AAAMAIN>,0
; const	WCHAR aMsctls_statusb
aMsctls_statusb:			; DATA XREF: .text:004228C1o
		unicode	0, <msctls_statusbar32>,0
word_51945A	dw 0
; int dword_51945C[]
dword_51945C	dd 0			; DATA XREF: .text:0042374Dr
dword_519460	dd 0			; DATA XREF: .text:00424ECDr
dword_519464	dd 0			; DATA XREF: .text:00424EA6r
stru_519468	struct_5 <offset aMainMenuFile, 64h, 72h, 0FFFFFFFFh>; 0
					; \=Main	menu: File\=
		struct_5 <offset aOpenNewExecuta, 65h, 0, 0FFFFFFFFh>; 0 ; \=Open new executable\=
		struct_5 <offset aSetCommandLine, 66h, 0, 0FFFFFFFFh>; 0 ; \=Set	command	line arguments for next	run\=
		struct_5 <offset aAttachToRunn_0, 67h, 0, 0FFFFFFFFh>; 0 ; \=Attach to running process\=
		struct_5 <offset aDetachFromTh_1, 68h, 80058h, 0FFFFFFFFh>; 0 ;	\=Detach	from the debugged process\=
		struct_5 <offset aCloseOllydbg, 0, 0, 0>; 0 ; \=Close OllyDbg\=
		struct_5 <offset aMainMenuView, 6Eh, 8004Ch, 0FFFFFFFFh>; 0 ; \=Main menu: View\=
		struct_5 <offset aOpenLogWindo_0, 6Fh, 80045h, 0FFFFFFFFh>; 0 ;	\=Open Log window\=
		struct_5 <offset aOpenExecutab_4, 70h, 8004Dh, 0FFFFFFFFh>; 0 ;	\=Open Executable modules window\=
		struct_5 <offset aOpenMemoryMapW, 71h, 80057h, 0FFFFFFFFh>; 0 ;	\=Open Memory map window\=
		struct_5 <offset aOpenListOfWind, 72h, 80054h, 0FFFFFFFFh>; 0 ;	\=Open list of windows\=
		struct_5 <offset aOpenThreadsWin, 73h, 80043h, 0FFFFFFFFh>; 0 ;	\=Open Threads window\=
		struct_5 <offset aOpenCpuWindo_1, 74h, 80056h, 0FFFFFFFFh>; 0 ;	\=Open CPU window\=
		struct_5 <offset aOpenWatchesW_0, 75h, 80052h, 0FFFFFFFFh>; 0 ;	\=Open Watches window\=
		struct_5 <offset aOpenSearchResu, 76h, 0, 0FFFFFFFFh>; 0 ; \=Open Search	results	window\=
		struct_5 <offset aOpenRunTrace_2, 77h, 0, 0FFFFFFFFh>; 0 ; \=Open Run trace window\=
		struct_5 <offset aOpenPatchesWin, 78h, 80042h, 0FFFFFFFFh>; 0 ;	\=Open Patches window\=
		struct_5 <offset aOpenInt3Brea_0, 79h, 80059h, 0FFFFFFFFh>; 0 ;	\=Open INT3 breakpoints window\=
		struct_5 <offset aOpenMemoryBrea, 7Ah, 80048h, 0FFFFFFFFh>; 0 ;	\=Open Memory breakpoints window\=
		struct_5 <offset aOpenHardware_1, 7Bh, 0, 0FFFFFFFFh>; 0 ; \=Open Hardware breakpoints window\=
		struct_5 <offset aOpenListOfSo_0, 7Ch, 0, 0FFFFFFFFh>; 0 ; \=Open list of source	files\=
		struct_5 <offset aOpenFile, 7Dh, 80053h, 0FFFFFFFFh>; 0	; \=Open	file\=
		struct_5 <offset aOpenVehSehChai, 7Eh, 0, 0FFFFFFFFh>; 0 ; \=Open VEH/SEH chain window\=
		struct_5 <offset aOpenHandlesW_1, 7Fh, 8004Bh, 0FFFFFFFFh>; 0 ;	\=Open Handles window\=
		struct_5 <offset aOpenCallStac_1, 0, 0, 0>; 0 ;	\=Open Call stack window\=
		struct_5 <offset aMainMenuDebug, 82h, 200078h, 0FFFFFFFFh>; 0 ;	\=Main menu: Debug\=
		struct_5 <offset aRunDebuggedApp, 83h, 20007Ah, 0FFFFFFFFh>; 0 ; \=Run debugged application\=
		struct_5 <offset aRunOnlyCurrent, 84h, 7Bh, 0FFFFFFFFh>; 0 ; \=Run only current thread\=
		struct_5 <offset aPauseDebuggedA, 85h, 200076h, 0FFFFFFFFh>; 0 ; \=Pause	debugged application\=
		struct_5 <offset aStepInto_0, 86h, 200077h, 0FFFFFFFFh>; 0 ; \=Step into\=
		struct_5 <offset aStepOver, 87h, 240078h, 0FFFFFFFFh>; 0 ; \=Step over\=
		struct_5 <offset aExecuteTillRet, 88h, 280078h, 0FFFFFFFFh>; 0 ; \=Execute till return\=
		struct_5 <offset aExecuteTillU_0, 89h, 280075h, 0FFFFFFFFh>; 0 ; \=Execute till user code\=
		struct_5 <offset aCallDllExpor_0, 8Ah, 40071h, 0FFFFFFFFh>; 0 ;	\=Call DLL export\=
		struct_5 <offset aRestartLastD_0, 8Bh, 80071h, 0FFFFFFFFh>; 0 ;	\=Restart last debugged executable\=
		struct_5 <offset aCloseDebugge_0, 8Ch, 0, 0FFFFFFFFh>; 0 ; \=Close debugged application\=
		struct_5 <offset aSetAffinityM_0, 8Dh, 0, 0FFFFFFFFh>; 0 ; \=Set	affinity mask\=
		struct_5 <offset aCreateStanda_0, 0, 0, 0>; 0 ;	\=Create	standard function library\=
		struct_5 <offset aMainMenuTrace, 96h, 0, 0FFFFFFFFh>; 0	; \=Main	menu: Trace\=
		struct_5 <offset aOpenRunTrace_0, 97h, 0, 0FFFFFFFFh>; 0 ; \=Open Run trace\=
		struct_5 <offset aCloseRunTrac_1, 98h, 240076h, 0FFFFFFFFh>; 0 ; \=Close	Run trace\=
		struct_5 <offset aAnimateInto_1, 99h, 240077h, 0FFFFFFFFh>; 0 ;	\=Animate into\=
		struct_5 <offset aAnimateOver_0, 9Ah, 24007Ah, 0FFFFFFFFh>; 0 ;	\=Animate over\=
		struct_5 <offset aTraceInto, 9Bh, 24007Bh, 0FFFFFFFFh>;	0 ; \=Trace into\=
		struct_5 <offset aTraceOver_0, 9Ch, 0, 0FFFFFFFFh>; 0 ;	\=Trace over\=
		struct_5 <offset aRunHitTrace, 9Dh, 0, 0FFFFFFFFh>; 0 ;	\=Run hit trace\=
		struct_5 <offset aStopHitTrace_0, 9Eh, 40054h, 0FFFFFFFFh>; 0 ;	\=Stop hit trace\=
		struct_5 <offset aSetRunTraceBre, 9Fh, 40050h, 0FFFFFFFFh>; 0 ;	\=Set run trace break condition\=
		struct_5 <offset aSetRunTraceLog, 0, 0, 0>; 0 ;	\=Set run trace log condition\=
		struct_5 <offset aMainMenuOption, 0AAh, 8004Fh, 0FFFFFFFFh>; 0 ; \=Main menu: Options\=
		struct_5 <offset aOpenOptionsDia, 0ABh, 0, 0FFFFFFFFh>;	0 ; \=Open Options dialog\=
		struct_5 <offset aOpenPluginOpti, 0ACh, 0, 0FFFFFFFFh>;	0 ; \=Open Plugin options dialog\=
		struct_5 <offset aOpenShortcutEd, 0, 0, 0>; 0 ;	\=Open Shortcut editor\=
		struct_5 <offset aMainMenuWindow, 0B4h, 80074h, 0FFFFFFFFh>; 0 ; \=Main menu: Windows\=
		struct_5 <offset aTopmostStatusO, 0B5h, 0, 0FFFFFFFFh>;	0 ; \=Topmost status of main window\=
		struct_5 <offset aCascadeMdiWind, 0B6h, 0, 0FFFFFFFFh>;	0 ; \=Cascade MDI windows\=
		struct_5 <offset aTileMdiWindo_0, 0B7h, 0, 0FFFFFFFFh>;	0 ; \=Tile MDI windows horizontally\=
		struct_5 <offset aTileMdiWindo_2, 0B8h, 0, 0FFFFFFFFh>;	0 ; \=Tile MDI windows vertically\=
		struct_5 <offset aArrangeIcons_0, 0B9h, 0, 0FFFFFFFFh>;	0 ; \=Arrange icons\=
		struct_5 <offset aCloseAllMdiWin, 0BAh, 74h, 0FFFFFFFFh>; 0 ; \=Close all MDI windows\=
		struct_5 <offset aMaximizeOrRest, 0BBh, 75h, 0FFFFFFFFh>; 0 ; \=Maximize	or restore active MDI\=
		struct_5 <offset aGoToPreviousMd, 0BCh, 20075h, 0FFFFFFFFh>; 0 ; \=Go to	previous MDI window\=
		struct_5 <offset aGoToNextMdiWin, 0, 0, 0>; 0 ;	\=Go to next MDI	window\=
		struct_5 <offset aMainMenuHelp, 0BEh, 0, 0FFFFFFFFh>; 0	; \=Main	menu: Help\=
		struct_5 <offset aOpenAboutDialo, 0, 0, 0>; 0 ;	\=Open About dialog\=
		struct_5 <offset aGenericTableSh, 0C8h, 20009h, 1F0h>; 0 ; \=Generic table shortcuts\=
		struct_5 <offset aGoToPreviousCp, 0C9h, 9, 1F0h>; 0 ; \=Go to previous CPU pane\=
		struct_5 <offset aGoToNextCpuPan, 0CAh, 40052h, 627C000h>; 0 ; \=Go to next CPU pane\=
		struct_5 <offset aUpdate, 0CBh, 40043h, 0FFFFFFFFh>; 0 ; \=Update\=
		struct_5 <offset aCopy_0, 0CCh, 0, 0FFFFFFFFh>;	0 ; \=Copy\=
		struct_5 <offset aCopyAll, 0CDh, 0, 0FFFFFFFFh>; 0 ; \=Copy all\=
		struct_5 <offset aCut, 0CEh, 40056h, 0FFFFFFFFh>; 0 ; \=Cut\=
		struct_5 <offset aPaste_0, 0CFh, 0, 0FFFFFFFFh>; 0 ; \=Paste\=
		struct_5 <offset aMakeMdiWindowT, 0D0h, 0, 0FFFFFFFFh>;	0 ; \=Make MDI window topmost\=
		struct_5 <offset aPeriodically_0, 0D1h, 0, 0FFFFFFFFh>;	0 ; \=Periodically update contents of window\=
		struct_5 <offset aShowOrHideBar, 0D2h, 0, 0FFFFFFFFh>; 0 ; \=Show or hide bar\=
		struct_5 <offset aShowOrHideHori, 0D3h, 0, 0FFFFFFFFh>;	0 ; \=Show or hide horizontal scrollbar\=
		struct_5 <offset aResizeAllCol_0, 0, 0, 0>; 0 ;	\=Resize	all columns to default width\=
		struct_5 <offset aShortcutsUsedB, 0DCh, 4004Ch, 890B0h>; 0 ; \=Shortcuts	used by	different windows\=
		struct_5 <offset aRepeatLastSear, 0DDh, 6004Ch, 890B0h>; 0 ; \=Repeat last search\=
		struct_5 <offset aRepeatSearchIn, 0, 0, 0>; 0 ;	\=Repeat	search in inverse direction\=
		struct_5 <offset aDumpBackup, 0F0h, 0, 10B0h>; 0 ; \=Dump: Backup\=
		struct_5 <offset aCreateOrUpdate, 0F1h, 0, 10B0h>; 0 ; \=Create or update backup\=
		struct_5 <offset aToggleBackupDi, 0, 0, 0>; 0 ;	\=Toggle	backup display\=
		struct_5 <offset aDumpEdit, 0FAh, 80008h, 10B0h>; 0 ; \=Dump: Edit\=
		struct_5 <offset aUndoSelectio_0, 0FBh, 8002Dh, 10B0h>;	0 ; \=Undo selection\=
		struct_5 <offset aCopyAddress, 0FCh, 4002Dh, 10B0h>; 0 ; \=Copy address\=
		struct_5 <offset aCopyDataInHexa, 0FDh, 2002Dh, 10B0h>;	0 ; \=Copy data in hexadecimal format\=
		struct_5 <offset aPasteDataInHex, 0FEh, 0, 10B0h>; 0 ; \=Paste data in hexadecimal format\=
		struct_5 <offset aEditFirstSelec, 0FFh, 40045h, 10B0h>;	0 ; \=Edit first	selected item\=
		struct_5 <offset aEditDumpSelect, 100h, 0, 10B0h>; 0 ; \=Edit dump selection\=
		struct_5 <offset aFillSelectio_1, 101h, 0, 10B0h>; 0 ; \=Fill selection with zeros\=
		struct_5 <offset aFillSelectio_2, 102h, 0, 10B0h>; 0 ; \=Fill selection with NOPs\=
		struct_5 <offset aFillSelectionW, 103h, 0, 10B0h>; 0 ; \=Fill selection with 0xFF\=
		struct_5 <offset aSelectAll, 104h, 0, 10B0h>; 0	; \=Select all\=
		struct_5 <offset aSelectProcedur, 105h, 0, 10B0h>; 0 ; \=Select procedure or structure\=
		struct_5 <offset aCopySelectionT, 10Bh, 0, 10B0h>; 0 ; \=Copy selection to executable file\=
		struct_5 <offset aCopyAllModific, 106h, 0, 10B0h>; 0 ; \=Copy all modifications to executable fi\=...
		struct_5 <offset aZeroWholeDump, 107h, 1003Ah, 10B0h>; 0 ; \=Zero whole dump\=
		struct_5 <offset aAddOrEditCusto, 108h, 20h, 10B0h>; 0 ; \=Add or edit custom label\=
		struct_5 <offset aAssemble, 109h, 1003Bh, 10B0h>; 0 ; \=Assemble\=
		struct_5 <offset aAddOrEditComme, 10Ah, 0, 10B0h>; 0 ; \=Add or edit comment\=
		struct_5 <offset aSaveFileToDisk, 0, 0, 0>; 0 ;	\=Save file to disk\=
		struct_5 <offset aDumpBreakpoint, 118h, 71h, 11F910B0h>; 0 ; \=Dump: Breakpoints	\{shared	by other wind\=...
		struct_5 <offset aToggleInt3Brea, 119h, 20071h, 11F910B0h>; 0 ;	\=Toggle	INT3 breakpoint\=
		struct_5 <offset aSetOrEditCon_9, 11Ah, 20073h, 11F910B0h>; 0 ;	\=Set or	edit conditional INT3 breakpoint\=
		struct_5 <offset aSetOrEditCo_10, 11Bh, 73h, 10000010h>; 0 ; \=Set or edit conditional logging INT3 br\=...
		struct_5 <offset aRunToSelection, 11Ch, 0, 1F910B0h>; 0	; \=Run to selection\=
		struct_5 <offset aEnableOrDisabl, 11Dh, 20072h, 10B0h>;	0 ; \=Enable or disable INT3 breakpoint\=
		struct_5 <offset aSetOrEditMemor, 11Eh, 40072h, 10B0h>;	0 ; \=Set or edit memory	breakpoint\=
		struct_5 <offset aSetOrEditCondi, 11Fh, 0, 10B0h>; 0 ; \=Set or edit conditional	logging	memory \=...
		struct_5 <offset aEnableOrDisa_0, 120h, 0, 10B0h>; 0 ; \=Enable or disable memory breakpoint\=
		struct_5 <offset aDeleteMemoryBr, 121h, 20074h, 10B0h>;	0 ; \=Delete memory breakpoint\=
		struct_5 <offset aSetOrEditHardw, 122h, 40074h, 10B0h>;	0 ; \=Set or edit hardware breakpoint\=
		struct_5 <offset aSetOrEditCo_11, 123h, 0, 10B0h>; 0 ; \=Set or edit conditional	logging	hardwar\=...
		struct_5 <offset aEnableOrDisa_2, 124h, 0, 10B0h>; 0 ; \=Enable or disable hardware breakpoint\=
		struct_5 <offset aDeleteHardwa_0, 0, 0, 0>; 0 ;	\=Delete	hardware breakpoint\=
		struct_5 <offset aDumpJumpsToLoc, 12Ch, 4006Ah, 10B0h>;	0 ; \=Dump: Jumps to location\=
		struct_5 <offset aSetNewOrigin, 12Dh, 0Dh, 10h>; 0 ; \=Set new origin\=
		struct_5 <offset aFollowDestin_1, 12Eh, 6Ah, 10h>; 0 ; \=Follow destination in CPU Disassembler\=
		struct_5 <offset aGoToOriginEipO, 12Fh, 40047h, 10B0h>;	0 ; \=Go	to origin \{EIP\}	of current thread\=
		struct_5 <offset aGoToExpression, 130h, 0, 10B0h>; 0 ; \=Go to expression\=
		struct_5 <offset aFollowJumpOrCa, 131h, 0, 10B0h>; 0 ; \=Follow jump or call to selection\=
		struct_5 <offset aFollowOneOfK_1, 132h, 6Dh, 10B0h>; 0 ; \=Follow one of	known switch cases\=
		struct_5 <offset aGoToPreviousHi, 133h, 6Bh, 10B0h>; 0 ; \=Go to	previous history location\=
		struct_5 <offset aGoToNextHistor, 134h, 8006Dh, 10B0h>;	0 ; \=Go	to next	history	location\=
		struct_5 <offset aGoToPreviousRu, 135h, 8006Bh, 10B0h>;	0 ; \=Go	to previous run	trace record\=
		struct_5 <offset aGoToNextRunTra, 136h, 4006Dh, 10B0h>;	0 ; \=Go	to next	run trace record\=
		struct_5 <offset aGoToPreviousPr, 137h, 4006Bh, 10B0h>;	0 ; \=Go	to previous procedure, structure or \=...
		struct_5 <offset aGoToNextProced, 138h, 80076h, 10B0h>;	0 ; \=Go	to next	procedure, structure or	stac\=...
		struct_5 <offset aGoToPreviousFo, 139h, 80077h, 10B0h>;	0 ; \=Go	to previous found item\=
		struct_5 <offset aGoToNextFoundI, 13Ah, 0, 10B0h>; 0 ; \=Go to next found item\=
		struct_5 <offset aFollowSelectio, 0, 0, 0>; 0 ;	\=Follow	selection in executable	file\=
		struct_5 <offset aDumpStructures, 14Ah, 0, 10B0h>; 0 ; \=Dump: Structures\=
		struct_5 <offset aDecodeAsStru_0, 14Bh, 0, 10B0h>; 0 ; \=Decode as structure\=
		struct_5 <offset aDecodeAsPoin_0, 14Ch, 0, 10B0h>; 0 ; \=Decode as pointer to structure\=
		struct_5 <offset aOpenInASeparat, 0, 0, 0>; 0 ;	\=Open in a separate dump window\=
		struct_5 <offset aDumpSearch, 17Ch, 4004Eh, 10B0h>; 0 ;	\=Dump: Search\=
		struct_5 <offset aShowListOfName, 17Dh, 40046h, 10B0h>;	0 ; \=Show list of names\=
		struct_5 <offset aFindCommand, 17Eh, 0, 10B0h>;	0 ; \=Find command\=
		struct_5 <offset aFindSequenceOf, 17Fh, 0, 10B0h>; 0 ; \=Find sequence of commands\=
		struct_5 <offset aFindConstant, 18Dh, 0, 10B0h>; 0 ; \=Find constant\=
		struct_5 <offset aFindInteger, 18Eh, 0, 10B0h>;	0 ; \=Find integer\=
		struct_5 <offset aFindFloating_0, 180h, 40042h, 10B0h>;	0 ; \=Find floating-point number\=
		struct_5 <offset aFindBinaryStri, 181h, 0, 10B0h>; 0 ; \=Find binary string\=
		struct_5 <offset aFindModificati, 182h, 0, 10B0h>; 0 ; \=Find modification\=
		struct_5 <offset aSearchForAllIn, 183h, 0, 10B0h>; 0 ; \=Search for all intermodular calls\=
		struct_5 <offset aSearchForAll_2, 184h, 0, 10B0h>; 0 ; \=Search for all commands\=
		struct_5 <offset aSearchForAll_3, 185h, 0, 10B0h>; 0 ; \=Search for all command sequences\=
		struct_5 <offset aSearchForAllCo, 186h, 0, 10B0h>; 0 ; \=Search for all constants\=
		struct_5 <offset aSearchForAllMo, 187h, 0, 10B0h>; 0 ; \=Search for all modifications\=
		struct_5 <offset aSearchForAllRe, 188h, 0, 10B0h>; 0 ; \=Search for all referenced strings\=
		struct_5 <offset aSearchForAll_0, 189h, 0, 10B0h>; 0 ; \=Search for all referenced GUIDs\=
		struct_5 <offset aSearchForAllUs, 18Fh, 0, 10B0h>; 0 ; \=Search for all user-defined comments\=
		struct_5 <offset aSearchForAllPr, 18Ah, 0, 10B0h>; 0 ; \=Search for all procedures\=
		struct_5 <offset aSearchForAllSw, 18Bh, 0, 10B0h>; 0 ; \=Search for all switches	and cascaded IF\=...
		struct_5 <offset aSearchForAll_1, 18Ch, 0, 10B0h>; 0 ; \=Search for all referenced floating-poin\=...
		struct_5 <offset aFindLastReco_0, 0, 0, 0>; 0 ;	\=Find last record in run trace\=
		struct_5 <offset aDumpReferences, 19Ah, 40052h, 10B0h>;	0 ; \=Dump: References\=
		struct_5 <offset aFindAllReferen, 0, 0, 0>; 0 ;	\=Find all references\=
		struct_5 <offset aDumpAddressing, 1A4h, 0, 10B0h>; 0 ; \=Dump: Addressing\=
		struct_5 <offset aShowAbsolute_0, 1A5h, 0, 10B0h>; 0 ; \=Show absolute addresses\=
		struct_5 <offset aShowOffsetsF_1, 1A6h, 0, 10B0h>; 0 ; \=Show offsets from current selection\=
		struct_5 <offset aShowOffsetsR_2, 0, 0, 0>; 0 ;	\=Show offsets relative to module base\=
		struct_5 <offset aDumpComments, 1AEh, 0, 10B0h>; 0 ; \=Dump: Comments\=
		struct_5 <offset aToggleBetweenC, 1AFh, 0, 10B0h>; 0 ; \=Toggle between comments	and source code\=
		struct_5 <offset aShowOrHideRunT, 0, 0, 0>; 0 ;	\=Show or hide run trace	profile	in comme\=...
		struct_5 <offset aDumpAnalysis, 1B8h, 40041h, 10B0h>; 0	; \=Dump: Analysis\=
		struct_5 <offset aAnalyseModule, 1B9h, 40008h, 10B0h>; 0 ; \=Analyse module\=
		struct_5 <offset aRemoveAnalysis, 1BAh, 0, 10B0h>; 0 ; \=Remove analysis	from selection\=
		struct_5 <offset aRemoveAnalys_3, 0, 0, 0>; 0 ;	\=Remove	analysis from the module\=
		struct_5 <offset aDumpHelp, 1C2h, 20070h, 10B0h>; 0 ; \=Dump: Help\=
		struct_5 <offset aHelpOnComman_0, 1C3h, 40070h, 10B0h>;	0 ; \=Help on command\=
		struct_5 <offset aHelpOnApiFunct, 0, 0, 0>; 0 ;	\=Help on API function\=
		struct_5 <offset aDumpDataPresen, 1CCh, 0, 10B0h>; 0 ; \=Dump: Data presentation\=
		struct_5 <offset aDumpAs16HexB_0, 1CDh, 0, 10B0h>; 0 ; \=Dump as	16 hex bytes and ASCII text\=
		struct_5 <offset aDumpAs8HexBy_0, 1CEh, 0, 10B0h>; 0 ; \=Dump as	8 hex bytes and	ASCII text\=
		struct_5 <offset aDumpAs16HexByt, 1CFh, 0, 10B0h>; 0 ; \=Dump as	16 hex bytes and UNICODE text\=
		struct_5 <offset aDumpAs8HexByte, 1E3h, 0, 10B0h>; 0 ; \=Dump as	8 hex bytes and	UNICODE	text\=
		struct_5 <offset aDumpAsAtMost16, 1E4h, 0, 10B0h>; 0 ; \=Dump as	at most	16 hex bytes and multib\=...
		struct_5 <offset aDumpAsAtMost8H, 1D0h, 0, 10B0h>; 0 ; \=Dump as	at most	8 hex bytes and	multiby\=...
		struct_5 <offset aDumpAs64AsciiC, 1D1h, 0, 10B0h>; 0 ; \=Dump as	64 ASCII characters\=
		struct_5 <offset aDumpAs32AsciiC, 1D2h, 0, 10B0h>; 0 ; \=Dump as	32 ASCII characters\=
		struct_5 <offset aDumpAs64Unicod, 1D3h, 0, 10B0h>; 0 ; \=Dump as	64 UNICODE characters\=
		struct_5 <offset aDumpAs32Unicod, 1D4h, 0, 10B0h>; 0 ; \=Dump as	32 UNICODE characters\=
		struct_5 <offset aDumpAs16Unicod, 1D5h, 0, 10B0h>; 0 ; \=Dump as	16 UNICODE characters\=
		struct_5 <offset aDumpAs16BitSig, 1D6h, 0, 10B0h>; 0 ; \=Dump as	16-bit signed numbers\=
		struct_5 <offset aDumpAs16BitUns, 1D7h, 0, 10B0h>; 0 ; \=Dump as	16-bit unsigned	numbers\=
		struct_5 <offset aDumpAs16BitHex, 1D8h, 0, 10B0h>; 0 ; \=Dump as	16-bit hexadecimal numbers\=
		struct_5 <offset aDumpAs32BitSig, 1D9h, 0, 10B0h>; 0 ; \=Dump as	32-bit signed numbers\=
		struct_5 <offset aDumpAs32BitUns, 1DAh, 0, 10B0h>; 0 ; \=Dump as	32-bit unsigned	numbers\=
		struct_5 <offset aDumpAs32BitHex, 1DBh, 0, 10B0h>; 0 ; \=Dump as	32-bit hexadecimal numbers\=
		struct_5 <offset aDumpAsAddressW, 1DCh, 0, 10B0h>; 0 ; \=Dump as	address	with comments\=
		struct_5 <offset aDumpAsAddres_0, 1DDh, 0, 10B0h>; 0 ; \=Dump as	address	with ASCII dump	and com\=...
		struct_5 <offset aDumpAsAddres_1, 1DEh, 0, 10B0h>; 0 ; \=Dump as	address	with UNICODE dump and c\=...
		struct_5 <offset aDumpAs32BitFlo, 1DFh, 0, 10B0h>; 0 ; \=Dump as	32-bit floating-point numbers\=
		struct_5 <offset aDumpAs64BitFlo, 1E0h, 0, 10B0h>; 0 ; \=Dump as	64-bit floating-point numbers\=
		struct_5 <offset aDumpAs80BitFlo, 1E1h, 0, 10B0h>; 0 ; \=Dump as	80-bit floating-point numbers\=
		struct_5 <offset aDumpAsDisassem, 1E2h, 0, 10B0h>; 0 ; \=Dump as	disassembly\=
		struct_5 <offset aDumpAsKnownStr, 0, 0, 0>; 0 ;	\=Dump as known structure\=
		struct_5 <offset aStackSpecificS, 1EAh, 2Dh, 80h>; 0 ; \=Stack-specific shortcuts\=
		struct_5 <offset aLockOrUnlockSt, 1EBh, 0, 80h>; 0 ; \=Lock or unlock stack\=
		struct_5 <offset aPushDoubleword, 1ECh, 0, 80h>; 0 ; \=Push doubleword\=
		struct_5 <offset aPopDoubleword, 1EDh, 0Dh, 80h>; 0 ; \=Pop doubleword\=
		struct_5 <offset aFollowStackDou, 1EEh, 6Ah, 80h>; 0 ; \=Follow stack doubleword	in CPU Disassem\=...
		struct_5 <offset aGoToEsp, 1EFh, 0, 80h>; 0 ; \=Go to ESP\=
		struct_5 <offset aGoToEbp, 1F0h, 0, 80h>; 0 ; \=Go to EBP\=
		struct_5 <offset aShowOffsetsR_3, 1F1h, 0, 80h>; 0 ; \=Show offsets relative to ESP\=
		struct_5 <offset aShowOffsetsRel, 0, 0, 0>; 0 ;	\=Show offsets relative to EBP\=
		struct_5 <offset aShortcutsOfReg, 1F4h, 1002Bh, 40h>; 0	; \=Shortcuts of	Registers pane\=
		struct_5 <offset aIncrementReg_0, 1F5h, 1002Dh, 40h>; 0	; \=Increment register\=
		struct_5 <offset aDecrementRegis, 1F6h, 4005Ah, 40h>; 0	; \=Decrement register\=
		struct_5 <offset aZeroRegister, 1F7h, 0, 40h>; 0 ; \=Zero register\=
		struct_5 <offset aSetRegisterT_0, 1F8h, 0Dh, 40h>; 0 ; \=Set register to	1\=
		struct_5 <offset aModifyContents, 1F9h, 80008h, 40h>; 0	; \=Modify contents of register or toggle b\=...
		struct_5 <offset aUndoSelectedRe, 1FAh, 0, 40h>; 0 ; \=Undo selected register\=
		struct_5 <offset aPushFpuStack, 1FBh, 0, 40h>; 0 ; \=Push FPU stack\=
		struct_5 <offset aPopFpuStack_0, 1FCh, 2000Dh, 40h>; 0 ; \=Pop FPU stack\=
		struct_5 <offset aFollowConten_1, 1FDh, 0, 40h>; 0 ; \=Follow contents of register in CPU Disa\=...
		struct_5 <offset aFollowConten_2, 1FEh, 0, 40h>; 0 ; \=Follow contents of register in CPU Dump\=
		struct_5 <offset aFollowConten_3, 1FFh, 0, 40h>; 0 ; \=Follow contents of register in CPU Stac\=...
		struct_5 <offset aViewFloatingPo, 200h, 0, 40h>; 0 ; \=View floating-point registers and	flags\=
		struct_5 <offset aViewMmxRegiste, 201h, 0, 40h>; 0 ; \=View MMX registers\=
		struct_5 <offset aView3dnowRegis, 202h, 20070h, 40h>; 0	; \=View	3DNow! registers\=
		struct_5 <offset aHelpOnRegist_0, 0, 0, 0>; 0 ;	\=Help on register\=
		struct_5 <offset aShortcutsOfInf, 208h, 40045h, 100h>; 0 ; \=Shortcuts of Information pane\=
		struct_5 <offset aEditContentsOf, 209h, 0Dh, 100h>; 0 ;	\=Edit contents of selected operand\=
		struct_5 <offset aFollowContents, 20Ah, 0, 100h>; 0 ; \=Follow contents of operand in CPU Disas\=...
		struct_5 <offset aFollowConten_4, 20Bh, 0, 100h>; 0 ; \=Follow contents of operand in CPU Dump\=
		struct_5 <offset aFollowConten_0, 20Ch, 0, 100h>; 0 ; \=Follow contents of operand in CPU Stack\=
		struct_5 <offset aListJumpsAndCa, 20Dh, 0, 100h>; 0 ; \=List jumps and calls to command\=
		struct_5 <offset aListSwitchCase, 20Eh, 0, 100h>; 0 ; \=List switch cases\=
		struct_5 <offset aFollowAddressI, 0, 0, 0>; 0 ;	\=Follow	address	in Source code window\=
		struct_5 <offset aOpenLogWindo_0+0Ah, 212h, 0Dh, 2000h>; 0 ; \=Log window\=
		struct_5 <offset aFollowAddres_5, 213h, 0, 2000h>; 0 ; \=Follow address of log record in	CPU Dis\=...
		struct_5 <offset aFollowAddressO, 214h, 0, 2000h>; 0 ; \=Follow address of log record in	CPU Dum\=...
		struct_5 <offset aFollowAddres_6, 215h, 4005Ah, 2000h>;	0 ; \=Follow address of log record in CPU Sta\=...
		struct_5 <offset aClearLog_0, 216h, 0, 2000h>; 0 ; \=Clear log\=
		struct_5 <offset aStartProtocoll, 217h, 0, 2000h>; 0 ; \=Start protocolling to file\=
		struct_5 <offset aStopProtocolli, 0, 0, 0>; 0 ;	\=Stop protocolling to file\=
		struct_5 <offset aExecutableMo_1, 21Ch, 0Dh, 4000h>; 0 ; \=Executable modules\=
		struct_5 <offset aOpenCodeSect_0, 21Dh, 0, 4000h>; 0 ; \=Open code section in CPU Disassembler\=
		struct_5 <offset aViewModuleData, 21Eh, 0, 4000h>; 0 ; \=View module data section in CPU	Dump\=
		struct_5 <offset aOpenExecutab_1, 21Fh, 4004Eh, 4000h>;	0 ; \=Open executable file in standalone	Dump\=...
		struct_5 <offset aListNamesDecla, 220h, 0, 4000h>; 0 ; \=List names declared in the selected mod\=...
		struct_5 <offset aListAllNamesDe, 221h, 0, 4000h>; 0 ; \=List all names declared	in the debugged\=...
		struct_5 <offset aFindAllIntermo, 222h, 40041h, 4000h>;	0 ; \=Find all intermodular calls in the	sele\=...
		struct_5 <offset aAnalyseSelecte, 223h, 0, 4000h>; 0 ; \=Analyse	selected module\=
		struct_5 <offset aSaveModuleData, 224h, 0, 4000h>; 0 ; \=Save module data to .udd file\=
		struct_5 <offset aLoadModuleData, 0, 0, 0>; 0 ;	\=Load module data from .udd file\=
		struct_5 <offset aMemoryMap_0, 226h, 0, 8000h>;	0 ; \=Memory map\=
		struct_5 <offset aCreateBackupCo, 227h, 0, 8000h>; 0 ; \=Create backup copy of selected memory b\=...
		struct_5 <offset aOpenMemoryBloc, 228h, 0, 8000h>; 0 ; \=Open memory block in CPU Disassembler\=
		struct_5 <offset aViewMemoryBloc, 229h, 0Dh, 8000h>; 0 ; \=View memory block in CPU Dump\=
		struct_5 <offset aDumpMemoryBloc, 22Ah, 40042h, 8000h>;	0 ; \=Dump memory block in separate window\=
		struct_5 <offset aSearchMemoryBl, 22Bh, 71h, 8000h>; 0 ; \=Search memory	block for a sequence of	b\=...
		struct_5 <offset aToggleBreakOnA, 22Ch, 20h, 8000h>; 0 ; \=Toggle break on access to selected memo\=...
		struct_5 <offset aShowOrHideFree, 0, 0, 0>; 0 ;	\=Show or hide free memory\=
		struct_5 <offset aListOfWindow_0, 230h, 0Dh, 10000h>; 0	; \=List	of windows\=
		struct_5 <offset aFollowWinprocI, 231h, 0, 10000h>; 0 ;	\=Follow	WinProc	in CPU Disassembler\=
		struct_5 <offset aFollowClassp_1, 0, 0, 0>; 0 ;	\=Follow	ClassProc in CPU Disassembler\=
		struct_5 <offset aThreads, 23Ah, 0Dh, 20000h>; 0 ; \=Threads\=
		struct_5 <offset aOpenThreadInCp, 23Bh, 0, 20000h>; 0 ;	\=Open thread in	CPU window\=
		struct_5 <offset aDumpThreadInfo, 23Ch, 0, 20000h>; 0 ;	\=Dump Thread Information Block\=
		struct_5 <offset aViewThreadRegi, 240h, 0, 20000h>; 0 ;	\=View thread registers\=
		struct_5 <offset aSetSymbolicT_0, 23Dh, 1002Dh, 20000h>; 0 ; \=Set symbolic thread name\=
		struct_5 <offset aSuspendThread, 23Eh, 1002Bh, 20000h>;	0 ; \=Suspend thread\=
		struct_5 <offset aResumeThread, 23Fh, 0, 20000h>; 0 ; \=Resume thread\=
		struct_5 <offset aKillThread, 0, 0, 0>;	0 ; \=Kill thread\=
		struct_5 <offset aWatches_0, 244h, 2Dh, 40000h>; 0 ; \=Watches\=
		struct_5 <offset aInsertWatch, 245h, 0Dh, 40000h>; 0 ; \=Insert watch\=
		struct_5 <offset aEditWatch, 246h, 2Eh, 40000h>; 0 ; \=Edit watch\=
		struct_5 <offset aDeleteWatch, 247h, 4006Dh, 40000h>; 0	; \=Delete watch\=
		struct_5 <offset aMoveWatchOne_1, 248h, 4006Bh, 40000h>; 0 ; \=Move watch one line up\=
		struct_5 <offset aMoveWatchOneLi, 249h, 0, 40000h>; 0 ;	\=Move watch one	line down\=
		struct_5 <offset aEditContents_0, 24Ah, 0, 40000h>; 0 ;	\=Edit contents of displayed register or	\=...
		struct_5 <offset aFollowWatchV_0, 24Bh, 0, 40000h>; 0 ;	\=Follow	watch value in CPU Disassembler\=
		struct_5 <offset aFollowWatchVal, 24Ch, 0, 40000h>; 0 ;	\=Follow	watch value in CPU Dump\=
		struct_5 <offset aFollowWatchV_1, 0, 0, 0>; 0 ;	\=Follow	watch value in CPU Stack\=
		struct_5 <offset aSearchResult_0, 258h, 0Dh, 80000h>; 0	; \=Search results\=
		struct_5 <offset aFollowSelected, 259h, 80076h, 80000h>; 0 ; \=Follow selected found item in CPU	Disas\=...
		struct_5 <offset aFollowPrevio_3, 25Ah, 80077h, 80000h>; 0 ; \=Follow previous found item in Disassemb\=...
		struct_5 <offset aFollowNextFoun, 25Bh, 40046h, 80000h>; 0 ; \=Follow next found	item in	Disassembler\=
		struct_5 <offset aFindTextSubs_0, 25Ch, 0, 80000h>; 0 ;	\=Find text substring\=
		struct_5 <offset aSetUnconditi_4, 25Dh, 0, 80000h>; 0 ;	\=Set unconditional breakpoint on all fou\=...
		struct_5 <offset aSetConditional, 25Eh, 0, 80000h>; 0 ;	\=Set conditional breakpoint on all found\=...
		struct_5 <offset aSetLoggingBrea, 25Fh, 0, 80000h>; 0 ;	\=Set logging breakpoint	on all found com\=...
		struct_5 <offset aRemoveBreakpoi, 260h, 0, 80000h>; 0 ;	\=Remove	breakpoints from all found comma\=...
		struct_5 <offset aSetUnconditi_5, 261h, 0, 80000h>; 0 ;	\=Set unconditional break on calls to sel\=...
		struct_5 <offset aSetCondition_3, 262h, 0, 80000h>; 0 ;	\=Set conditional break on calls	to selec\=...
		struct_5 <offset aSetLoggingBr_0, 263h, 0, 80000h>; 0 ;	\=Set logging break on calls to selected	\=...
		struct_5 <offset aRemoveBreak_11, 0, 0, 0>; 0 ;	\=Remove	breakpoints from calls to select\=...
		struct_5 <offset aOpenRunTrace_0+0Ah, 26Ch, 8006Dh, 200000h>; 0	; \=Run trace\=
		struct_5 <offset aFollowPrevious, 26Dh, 8006Bh, 200000h>; 0 ; \=Follow previous run trace record	in Dis\=...
		struct_5 <offset aFollowNextRunT, 26Eh, 0Dh, 200000h>; 0 ; \=Follow next	run trace record in Disasse\=...
		struct_5 <offset aFollowSelect_0, 26Fh, 0, 200000h>; 0 ; \=Follow selected trace	record in CPU Dis\=...
		struct_5 <offset aClearRunTrac_0, 270h, 0, 200000h>; 0 ; \=Clear	run trace\=
		struct_5 <offset aToggleRunTrace, 271h, 20h, 200000h>; 0 ; \=Toggle run trace registers display mode\=
		struct_5 <offset aMarkAddressInR, 272h, 0, 200000h>; 0 ; \=Mark address in run trace\=
		struct_5 <offset aEnterAddressTo, 273h, 80076h, 200000h>; 0 ; \=Enter address to	find and mark in run t\=...
		struct_5 <offset aFindPrevious_0, 274h, 80077h, 200000h>; 0 ; \=Find previous marked address in run tra\=...
		struct_5 <offset aFindNextMark_1, 275h, 0, 600000h>; 0 ; \=Find next marked address in run trace\=
		struct_5 <offset aClearAddress_1, 276h, 0, 200000h>; 0 ; \=Clear	address	marks in run trace\=
		struct_5 <offset aProfileSelecte, 277h, 0, 200000h>; 0 ; \=Profile selected module\=
		struct_5 <offset aProfileWholeMe, 278h, 0, 200000h>; 0 ; \=Profile whole	memory\=
		struct_5 <offset aSaveRunTraceDa, 279h, 0, 200000h>; 0 ; \=Save run trace data to the file\=
		struct_5 <offset aCloseRunTraceL, 0, 0, 0>; 0 ;	\=Close run trace log file\=
		struct_5 <offset aProfile, 280h, 0Dh, 400000h>;	0 ; \=Profile\=
		struct_5 <offset aFollowSelec_12, 281h, 80076h, 400000h>; 0 ; \=Follow selected profile item in CPU Dis\=...
		struct_5 <offset aFollowPrevio_4, 282h, 80077h, 400000h>; 0 ; \=Follow previous profile item in Disasse\=...
		struct_5 <offset aFollowNextProf, 283h, 0, 400000h>; 0 ; \=Follow next profile item in Disassemble\=...
		struct_5 <offset aMarkSelectedAd, 0, 0, 0>; 0 ;	\=Mark selected address in run trace\=
		struct_5 <offset aPatches_1, 28Ah, 0Dh, 2000000h>; 0 ; \=Patches\=
		struct_5 <offset aFollowSelect_1, 28Bh, 80076h, 2000000h>; 0 ; \=Follow selected	patch in CPU Disassembl\=...
		struct_5 <offset aFollowPrevio_0, 28Ch, 80077h, 2000000h>; 0 ; \=Follow previous	patch in CPU Disassembl\=...
		struct_5 <offset aFollowNextPatc, 28Dh, 20h, 2000000h>;	0 ; \=Follow next patch in CPU Disassembler\=
		struct_5 <offset aApplyPatch, 28Eh, 20020h, 2000000h>; 0 ; \=Apply patch\=
		struct_5 <offset aRestoreOrigina, 28Fh, 2Eh, 2000000h>;	0 ; \=Restore original code\=
		struct_5 <offset aDeletePatchRec, 0, 0, 0>; 0 ;	\=Delete	patch record from the table\=
		struct_5 <offset aBreakpointList, 294h, 2Eh, 800h>; 0 ;	\=Breakpoint lists\=
		struct_5 <offset aDeleteBreakpoi, 295h, 20h, 800h>; 0 ;	\=Delete	breakpoint\=
		struct_5 <offset aEnableOrDisa_1, 296h, 0Dh, 800h>; 0 ;	\=Enable	or disable reakpoint\=
		struct_5 <offset aFollowBreakpoi, 297h, 0, 800h>; 0 ; \=Follow breakpoint in CPU	Disassembler\=
		struct_5 <offset aFollowBreakp_0, 298h, 0, 800h>; 0 ; \=Follow breakpoint in CPU	Dump\=
		struct_5 <offset aDisableAllBrea, 299h, 0, 800h>; 0 ; \=Disable all breakpoints\=
		struct_5 <offset aEnableAllBreak, 0, 0, 0>; 0 ;	\=Enable	all breakpoints\=
		struct_5 <offset aSource_3, 29Eh, 0Dh, 800000h>; 0 ; \=Source\=
		struct_5 <offset aFollowSelect_3, 0, 0, 0>; 0 ;	\=Follow	selected source	line in	CPU Disa\=...
		struct_5 <offset aListOfSourceFi, 2A8h, 0Dh, 1000000h>;	0 ; \=List of source files\=
		struct_5 <offset aViewSourceFile, 0, 0, 0>; 0 ;	\=View source file\=
		struct_5 <offset aNames, 2B2h, 0, 100000h>; 0 ;	\=Names\=
		struct_5 <offset aFollowImportIn, 2B3h, 0Dh, 100000h>; 0 ; \=Follow import in CPU Disassembler\=
		struct_5 <offset aFollowSelect_4, 2B4h, 0, 100000h>; 0 ; \=Follow selected label	in CPU Disassembl\=...
		struct_5 <offset aFollowSelect_5, 2B5h, 40052h, 100000h>; 0 ; \=Follow selected label in	CPU Dump\=
		struct_5 <offset aFindReferences, 2B6h, 40070h, 100000h>; 0 ; \=Find references to name\=
		struct_5 <offset aHelpOnSelected, 0, 0, 0>; 0 ;	\=Help on selected API function\=
		struct_5 <offset aHandles_2, 2C6h, 0, 8000000h>; 0 ; \=Handles\=
		struct_5 <offset aDumpFileAssoci, 0, 0, 0>; 0 ;	\=Dump file associated with the handle\=
		struct_5 <offset aCallStack_0, 2D0h, 0, 10000000h>; 0 ;	\=Call stack\=
		struct_5 <offset aFollowAddres_0, 2D1h, 0, 10000000h>; 0 ; \=Follow address in CPU Stack\=
		struct_5 <offset aFollowProcedur, 2D2h, 0, 10000000h>; 0 ; \=Follow procedure in	CPU Disassember\=
		struct_5 <offset aFollowCallerIn, 2D3h, 0, 10000000h>; 0 ; \=Follow caller in CPU Disassember\=
		struct_5 <offset aFollowStackF_0, 2D4h, 0, 10000000h>; 0 ; \=Follow stack frame in CPU Stack\=
		struct_5 <offset aFollowStackD_0, 2D5h, 0, 10000000h>; 0 ; \=Follow stack doubleword in CPU Dump\=
		struct_5 <offset aSetBreakpointO, 2D6h, 0, 10000000h>; 0 ; \=Set	breakpoint on call\=
		struct_5 <offset aSetCondition_4, 2D7h, 0, 10000000h>; 0 ; \=Set	conditional breakpoint on call\=
stru_51AA08	struct_5 <offset aSetCondition_0, 3F0h, 10030h, 0FFFFFFFFh>; 0
					; \=Set conditional logging breakpoint on c\=...
		struct_5 <0, 3F1h, 10031h, 0FFFFFFFFh>;	0
		struct_5 <0, 3F2h, 10032h, 0FFFFFFFFh>;	0
		struct_5 <0, 3F3h, 10033h, 0FFFFFFFFh>;	0
		struct_5 <0, 3F4h, 10034h, 0FFFFFFFFh>;	0
		struct_5 <0, 3F5h, 10035h, 0FFFFFFFFh>;	0
		struct_5 <0, 3F6h, 10036h, 0FFFFFFFFh>;	0
		struct_5 <0, 3F7h, 10037h, 0FFFFFFFFh>;	0
		struct_5 <0, 3F8h, 10038h, 0FFFFFFFFh>;	0
		struct_5 <0, 3F9h, 10039h, 0FFFFFFFFh>;	0
		struct_5 <0, 3FAh, 10041h, 0FFFFFFFFh>;	0
		struct_5 <0, 3FBh, 10042h, 0FFFFFFFFh>;	0
		struct_5 <0, 3FCh, 10043h, 0FFFFFFFFh>;	0
		struct_5 <0, 3FDh, 10044h, 0FFFFFFFFh>;	0
		struct_5 <0, 3FEh, 10045h, 0FFFFFFFFh>;	0
		struct_5 <0, 3FFh, 10046h, 0FFFFFFFFh>;	0
		dd 0
; t_control stru_51AB0C
stru_51AB0C	t_control <7Dh, 0C81h, 5, 5, 122h, 0B9h, 0, offset ottable, 0, 0>; 0
		t_control <5, 0FFFFFFFFh, 5, 0C4h, 39h, 9, 0, offset aShortcut, 0, 0>; 0 ; \=Shortcut:\=
		t_control <3Eh, 0C82h, 45h, 0C3h, 14h, 0Bh, 0, offset aCtrl_1, \ ; \=Ctrl +\=
      offset aShortcutInclud, 0>; 0
		t_control <3Eh, 0C83h, 60h, 0C3h, 14h, 0Bh, 0, offset aAlt_0, \ ; \=Alt +\=
      offset aShortcutIncl_0, 0>; 0
		t_control <3Eh, 0C84h, 7Bh, 0C3h, 14h, 0Bh, 0, offset aWin, \ ; \=Win +\=
      offset aShortcutIncl_1, 0>; 0
		t_control <3Eh, 0C85h, 96h, 0C3h, 14h, 0Bh, 0, offset aShift_1, \ ; \=Shift +\=
      offset aShortcutIncl_3, 0>; 0
		t_control <14h, 0C86h, 0B4h, 0C2h, 41h, 0C8h, 0, \ ; \=\=
      offset aMainMenuFile+1Dh, offset aSelectMainShor, 0>; 0
		t_control <11h, 0C87h, 0FFh, 0C1h, 28h, 0Dh, 0, offset aApply, \ ; \=Apply\=
      offset aPressToApplySh, 0>; 0
		t_control <7, 0C88h, 5, 0D2h, 122h, 1Eh, 0, offset aMainMenuFile+1Dh, \ ; \=\=
      offset aValidityOfTheS, 0>; 0
		t_control <11h, 0C89h, 5, 0F5h, 28h, 10h, 0, offset aLoad, \ ; \=Load\=
      offset aLoadShortcutsF, 0>; 0
		t_control <11h, 0C8Ah, 32h, 0F5h, 28h, 10h, 0, offset aSave, \ ; \=Save\=
      offset aSaveShortcutsT, 0>; 0
		t_control <11h, 0C8Bh, 78h, 0F5h, 3Ch, 10h, 0, offset aRestoreDefau_2,\ ; \=Restore defaults\=
      offset aRestoreDefault, 0>; 0
		t_control <11h, 1, 0D2h, 0F5h, 28h, 10h, 0, offset aOk, \ ; \=OK\=
      offset aAcceptShortcut, 0>; 0
		t_control <11h, 2, 0FFh, 0F5h, 28h, 10h, 0, offset aCancel_0, \ ; \=Cancel\=
      offset aDiscardModif_0, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 12Ch, 109h, 0, \ ; \=Shortcut editor\=
      offset aOpenShortcutEd+0Ah, 0, 0>; 0
dword_51AD64	dd 0			; 0 ; DATA XREF: .text:00423834o
dword_51AD68	dd 'A'                  ; 0 ; DATA XREF: .text:00424C69o
		dd 'B'                  ; 0
		dd 'C'                  ; 0
		dd 'D'                  ; 0
		dd 'E'                  ; 0
		dd 'F'                  ; 0
		dd 'G'                  ; 0
		dd 'H'                  ; 0
		dd 'I'                  ; 0
		dd 'J'                  ; 0
		dd 'K'                  ; 0
		dd 'L'                  ; 0
		dd 'M'                  ; 0
		dd 'N'                  ; 0
		dd 'O'                  ; 0
		dd 'P'                  ; 0
		dd 'Q'                  ; 0
		dd 'R'                  ; 0
		dd 'S'                  ; 0
		dd 'T'                  ; 0
		dd 'U'                  ; 0
		dd 'V'                  ; 0
		dd 'W'                  ; 0
		dd 'X'                  ; 0
		dd 'Y'                  ; 0
		dd 'Z'                  ; 0
		dd ' '                  ; 0
		dd 10030h		; 0
		dd 10031h		; 0
		dd 10032h		; 0
		dd 10033h		; 0
		dd 10034h		; 0
		dd 10035h		; 0
		dd 10036h		; 0
		dd 10037h		; 0
		dd 10038h		; 0
		dd 10039h		; 0
		dd 'p'                  ; 0
		dd 'q'                  ; 0
		dd 'r'                  ; 0
		dd 's'                  ; 0
		dd 't'                  ; 0
		dd 'u'                  ; 0
		dd 'v'                  ; 0
		dd 'w'                  ; 0
		dd 'x'                  ; 0
		dd 'y'                  ; 0
		dd 'z'                  ; 0
		dd '{'                  ; 0
		dd 10060h		; 0
		dd 1007Eh		; 0
		dd 10021h		; 0
		dd 10040h		; 0
		dd 10024h		; 0
		dd 10025h		; 0
		dd 1005Eh		; 0
		dd 10026h		; 0
		dd 1002Ah		; 0
		dd 10028h		; 0
		dd 10029h		; 0
		dd 1002Dh		; 0
		dd 1005Fh		; 0
		dd 1003Dh		; 0
		dd 1002Bh		; 0
		dd 1005Bh		; 0
		dd 1005Dh		; 0
		dd 1007Bh		; 0
		dd 1007Dh		; 0
		dd 1005Ch		; 0
		dd 1007Ch		; 0
		dd 1003Bh		; 0
		dd 1003Ah		; 0
		dd 10027h		; 0
		dd 10022h		; 0
		dd 1002Ch		; 0
		dd 1002Eh		; 0
		dd 1003Ch		; 0
		dd 1003Eh		; 0
		dd 1002Fh		; 0
		dd 1003Fh		; 0
		dd '\A'                  ; 0
		dd '\{'                  ; 0
		dd '!%'                  ; 0
		dd 27h			; 0
		dd '!'                  ; 0
		dd '\='                  ; 0
		dd '$'                  ; 0
		dd '#'                  ; 0
		dd 0Dh			; 0
		dd 8			; 0
		dd '.'                  ; 0
		dd '-'                  ; 0
		dd 9			; 0
		dd 'j'                  ; 0
		dd 'k'                  ; 0
		dd 'm'                  ; 0
		dd 'o'                  ; 0
		dd '`'                  ; 0
		dd 'a'                  ; 0
		dd 'b'                  ; 0
		dd 'c'                  ; 0
		dd 'd'                  ; 0
		dd 'e'                  ; 0
		dd 'f'                  ; 0
		dd 'g'                  ; 0
		dd 'h'                  ; 0
		dd 'i'                  ; 0
		dd 'n'                  ; 0
aMainMenuFile:				; DATA XREF: .data:stru_519468o
		unicode	0, <Main menu: File>,0
aOpenNewExecuta:			; DATA XREF: .data:00519478o
		unicode	0, <Open new executable>,0
aSetCommandLine:			; DATA XREF: .data:00519488o
		unicode	0, <Set command line arguments for next run>,0
aAttachToRunn_0:			; DATA XREF: .data:00519498o
		unicode	0, <Attach to running process>,0
aDetachFromTh_1:			; DATA XREF: .data:005194A8o
		unicode	0, <Detach from the debugged process>,0
aCloseOllydbg:				; DATA XREF: .text:loc_42554Co
					; .data:005194B8o
		unicode	0, <Close OllyDbg>,0
aMainMenuView:				; DATA XREF: .data:005194C8o
		unicode	0, <Main menu: View>,0
aOpenLogWindo_0:			; DATA XREF: .data:005194D8o
					; .data:0051A2F8o
		unicode	0, <Open Log window>,0
aOpenExecutab_4:			; DATA XREF: .data:005194E8o
		unicode	0, <Open Executable modules window>,0
aOpenMemoryMapW:			; DATA XREF: .data:005194F8o
		unicode	0, <Open Memory map window>,0
aOpenListOfWind:			; DATA XREF: .data:00519508o
		unicode	0, <Open list of windows>,0
aOpenThreadsWin:			; DATA XREF: .data:00519518o
		unicode	0, <Open Threads window>,0
aOpenCpuWindo_1:			; DATA XREF: .data:00519528o
		unicode	0, <Open CPU window>,0
aOpenWatchesW_0:			; DATA XREF: .data:00519538o
		unicode	0, <Open Watches window>,0
aOpenSearchResu:			; DATA XREF: .data:00519548o
		unicode	0, <Open Search results window>,0
aOpenRunTrace_2:			; DATA XREF: .data:00519558o
		unicode	0, <Open Run trace window>,0
aOpenPatchesWin:			; DATA XREF: .data:00519568o
		unicode	0, <Open Patches window>,0
aOpenInt3Brea_0:			; DATA XREF: .data:00519578o
		unicode	0, <Open INT3 breakpoints window>,0
aOpenMemoryBrea:			; DATA XREF: .data:00519588o
		unicode	0, <Open Memory breakpoints window>,0
aOpenHardware_1:			; DATA XREF: .data:00519598o
		unicode	0, <Open Hardware breakpoints window>,0
aOpenListOfSo_0:			; DATA XREF: .data:005195A8o
		unicode	0, <Open list of source files>,0
aOpenFile:				; DATA XREF: .data:005195B8o
		unicode	0, <Open file>,0
aOpenVehSehChai:			; DATA XREF: .data:005195C8o
		unicode	0, <Open VEH/SEH chain window>,0
aOpenHandlesW_1:			; DATA XREF: .data:005195D8o
		unicode	0, <Open Handles window>,0
aOpenCallStac_1:			; DATA XREF: .data:005195E8o
		unicode	0, <Open Call stack window>,0
aMainMenuDebug:				; DATA XREF: .data:005195F8o
		unicode	0, <Main menu: Debug>,0
aRunDebuggedApp:			; DATA XREF: .data:00519608o
		unicode	0, <Run debugged application>,0
aRunOnlyCurrent:			; DATA XREF: .data:00519618o
		unicode	0, <Run only current thread>,0
aPauseDebuggedA:			; DATA XREF: .data:00519628o
		unicode	0, <Pause debugged application>,0
aStepInto_0:				; DATA XREF: .data:00519638o
		unicode	0, <Step into>,0
aStepOver:				; DATA XREF: .data:00519648o
		unicode	0, <Step over>,0
aExecuteTillRet:			; DATA XREF: .data:00519658o
		unicode	0, <Execute till return>,0
aExecuteTillU_0:			; DATA XREF: .data:00519668o
		unicode	0, <Execute till user code>,0
aCallDllExpor_0:			; DATA XREF: .data:00519678o
		unicode	0, <Call DLL export>,0
aRestartLastD_0:			; DATA XREF: .data:00519688o
		unicode	0, <Restart last debugged executable>,0
aCloseDebugge_0:			; DATA XREF: .data:00519698o
		unicode	0, <Close debugged application>,0
aSetAffinityM_0:			; DATA XREF: .data:005196A8o
		unicode	0, <Set affinity mask>,0
aCreateStanda_0:			; DATA XREF: .data:005196B8o
		unicode	0, <Create standard function library>,0
aMainMenuTrace:				; DATA XREF: .data:005196C8o
		unicode	0, <Main menu: Trace>,0
aOpenRunTrace_0:			; DATA XREF: .data:005196D8o
					; .data:0051A6A8o
		unicode	0, <Open Run trace>,0
aCloseRunTrac_1:			; DATA XREF: .data:005196E8o
		unicode	0, <Close Run trace>,0
aAnimateInto_1:				; DATA XREF: .data:005196F8o
		unicode	0, <Animate into>,0
aAnimateOver_0:				; DATA XREF: .data:00519708o
		unicode	0, <Animate over>,0
aTraceInto:				; DATA XREF: .data:00519718o
		unicode	0, <Trace into>,0
aTraceOver_0:				; DATA XREF: .data:00519728o
		unicode	0, <Trace over>,0
aRunHitTrace:				; DATA XREF: .data:00519738o
		unicode	0, <Run hit trace>,0
aStopHitTrace_0:			; DATA XREF: .data:00519748o
		unicode	0, <Stop hit trace>,0
aSetRunTraceBre:			; DATA XREF: .data:00519758o
		unicode	0, <Set run trace break condition>,0
aSetRunTraceLog:			; DATA XREF: .data:00519768o
		unicode	0, <Set run trace log condition>,0
aMainMenuOption:			; DATA XREF: .data:00519778o
		unicode	0, <Main menu: Options>,0
aOpenOptionsDia:			; DATA XREF: .data:00519788o
		unicode	0, <Open Options dialog>,0
aOpenPluginOpti:			; DATA XREF: .data:00519798o
		unicode	0, <Open Plugin options dialog>,0
aOpenShortcutEd:			; DATA XREF: .data:005197A8o
		unicode	0, <Open Shortcut editor>,0
aMainMenuWindow:			; DATA XREF: .data:005197B8o
		unicode	0, <Main menu: Windows>,0
aTopmostStatusO:			; DATA XREF: .data:005197C8o
		unicode	0, <Topmost status of main window>,0
aCascadeMdiWind:			; DATA XREF: .data:005197D8o
		unicode	0, <Cascade MDI windows>,0
aTileMdiWindo_0:			; DATA XREF: .data:005197E8o
		unicode	0, <Tile MDI windows horizontally>,0
aTileMdiWindo_2:			; DATA XREF: .data:005197F8o
		unicode	0, <Tile MDI windows vertically>,0
aArrangeIcons_0:			; DATA XREF: .data:00519808o
		unicode	0, <Arrange icons>,0
aCloseAllMdiWin:			; DATA XREF: .data:00519818o
		unicode	0, <Close all MDI windows>,0
aMaximizeOrRest:			; DATA XREF: .data:00519828o
		unicode	0, <Maximize or restore active MDI>,0
aGoToPreviousMd:			; DATA XREF: .data:00519838o
		unicode	0, <Go to previous MDI window>,0
aGoToNextMdiWin:			; DATA XREF: .data:00519848o
		unicode	0, <Go to next MDI window>,0
aMainMenuHelp:				; DATA XREF: .data:00519858o
		unicode	0, <Main menu: Help>,0
aOpenAboutDialo:			; DATA XREF: .data:00519868o
		unicode	0, <Open About dialog>,0
aGenericTableSh:			; DATA XREF: .data:00519878o
		unicode	0, <Generic table shortcuts>,0
aGoToPreviousCp:			; DATA XREF: .data:00519888o
		unicode	0, <Go to previous CPU pane>,0
aGoToNextCpuPan:			; DATA XREF: .data:00519898o
		unicode	0, <Go to next CPU pane>,0
aUpdate:				; DATA XREF: .data:005198A8o
		unicode	0, <Update>,0
aCopy_0:				; DATA XREF: .data:005198B8o
		unicode	0, <Copy>,0
aCopyAll:				; DATA XREF: .data:005198C8o
		unicode	0, <Copy all>,0
aCut:					; DATA XREF: .data:005198D8o
		unicode	0, <Cut>,0
aPaste_0:				; DATA XREF: .data:005198E8o
		unicode	0, <Paste>,0
aMakeMdiWindowT:			; DATA XREF: .data:005198F8o
		unicode	0, <Make MDI window topmost>,0
aPeriodically_0:			; DATA XREF: .data:00519908o
		unicode	0, <Periodically update contents of window>,0
aShowOrHideBar:				; DATA XREF: .data:00519918o
		unicode	0, <Show or hide bar>,0
aShowOrHideHori:			; DATA XREF: .data:00519928o
		unicode	0, <Show or hide horizontal scrollbar>,0
aResizeAllCol_0:			; DATA XREF: .data:00519938o
		unicode	0, <Resize all columns to default width>,0
aShortcutsUsedB:			; DATA XREF: .data:00519948o
		unicode	0, <Shortcuts used by different windows>,0
aRepeatLastSear:			; DATA XREF: .data:00519958o
		unicode	0, <Repeat last search>,0
aRepeatSearchIn:			; DATA XREF: .data:00519968o
		unicode	0, <Repeat search in inverse direction>,0
aDumpBackup:				; DATA XREF: .data:00519978o
		unicode	0, <Dump: Backup>,0
aCreateOrUpdate:			; DATA XREF: .data:00519988o
		unicode	0, <Create or update backup>,0
aToggleBackupDi:			; DATA XREF: .data:00519998o
		unicode	0, <Toggle backup display>,0
aDumpEdit:				; DATA XREF: .data:005199A8o
		unicode	0, <Dump: Edit>,0
aUndoSelectio_0:			; DATA XREF: .data:005199B8o
		unicode	0, <Undo selection>,0
aCopyAddress:				; DATA XREF: .data:005199C8o
		unicode	0, <Copy address>,0
aCopyDataInHexa:			; DATA XREF: .data:005199D8o
		unicode	0, <Copy data in hexadecimal format>,0
aPasteDataInHex:			; DATA XREF: .data:005199E8o
		unicode	0, <Paste data in hexadecimal format>,0
aEditFirstSelec:			; DATA XREF: .data:005199F8o
		unicode	0, <Edit first selected item>,0
aEditDumpSelect:			; DATA XREF: .data:00519A08o
		unicode	0, <Edit dump selection>,0
aFillSelectio_1:			; DATA XREF: .data:00519A18o
		unicode	0, <Fill selection with zeros>,0
aFillSelectio_2:			; DATA XREF: .data:00519A28o
		unicode	0, <Fill selection with NOPs>,0
aFillSelectionW:			; DATA XREF: .data:00519A38o
		unicode	0, <Fill selection with 0xFF>,0
aSelectAll:				; DATA XREF: .data:00519A48o
		unicode	0, <Select all>,0
aSelectProcedur:			; DATA XREF: .data:00519A58o
		unicode	0, <Select procedure or structure>,0
aCopySelectionT:			; DATA XREF: .data:00519A68o
		unicode	0, <Copy selection to executable file>,0
aCopyAllModific:			; DATA XREF: .data:00519A78o
		unicode	0, <Copy all modifications to executable file>,0
aZeroWholeDump:				; DATA XREF: .data:00519A88o
		unicode	0, <Zero whole dump>,0
aAddOrEditCusto:			; DATA XREF: .data:00519A98o
		unicode	0, <Add or edit custom label>,0
aAssemble:				; DATA XREF: .data:00519AA8o
		unicode	0, <Assemble>,0
aAddOrEditComme:			; DATA XREF: .data:00519AB8o
		unicode	0, <Add or edit comment>,0
aSaveFileToDisk:			; DATA XREF: .data:00519AC8o
		unicode	0, <Save file to disk>,0
aDumpBreakpoint:			; DATA XREF: .data:00519AD8o
		unicode	0, <Dump: Breakpoints \{shared by other windows\}>,0
aToggleInt3Brea:			; DATA XREF: .data:00519AE8o
		unicode	0, <Toggle INT3 breakpoint>,0
aSetOrEditCon_9:			; DATA XREF: .data:00519AF8o
		unicode	0, <Set or edit conditional INT3 breakpoint>,0
aSetOrEditCo_10:			; DATA XREF: .data:00519B08o
		unicode	0, <Set or edit conditional logging INT3 breakpoint>,0
aRunToSelection:			; DATA XREF: .data:00519B18o
		unicode	0, <Run to selection>,0
aEnableOrDisabl:			; DATA XREF: .data:00519B28o
		unicode	0, <Enable or disable INT3 breakpoint>,0
aSetOrEditMemor:			; DATA XREF: .data:00519B38o
		unicode	0, <Set or edit memory breakpoint>,0
aSetOrEditCondi:			; DATA XREF: .data:00519B48o
		unicode	0, <Set or edit conditional >
		unicode 0, <logging memory breakpoint>,0
aEnableOrDisa_0:			; DATA XREF: .data:00519B58o
		unicode	0, <Enable or disable memory breakpoint>,0
aDeleteMemoryBr:			; DATA XREF: .data:00519B68o
		unicode	0, <Delete memory breakpoint>,0
aSetOrEditHardw:			; DATA XREF: .data:00519B78o
		unicode	0, <Set or edit hardware breakpoint>,0
aSetOrEditCo_11:			; DATA XREF: .data:00519B88o
		unicode	0, <Set or edit conditional >
		unicode 0, <logging hardware breakpoint>,0
aEnableOrDisa_2:			; DATA XREF: .data:00519B98o
		unicode	0, <Enable or disable hardware breakpoint>,0
aDeleteHardwa_0:			; DATA XREF: .data:00519BA8o
		unicode	0, <Delete hardware breakpoint>,0
aDumpJumpsToLoc:			; DATA XREF: .data:00519BB8o
		unicode	0, <Dump: Jumps to location>,0
aSetNewOrigin:				; DATA XREF: .data:00519BC8o
		unicode	0, <Set new origin>,0
aFollowDestin_1:			; DATA XREF: .data:00519BD8o
		unicode	0, <Follow destination in CPU Disassembler>,0
aGoToOriginEipO:			; DATA XREF: .data:00519BE8o
		unicode	0, <Go to origin \{EIP\} of current thread>,0
aGoToExpression:			; DATA XREF: .data:00519BF8o
		unicode	0, <Go to expression>,0
aFollowJumpOrCa:			; DATA XREF: .data:00519C08o
		unicode	0, <Follow jump or call to selection>,0
aFollowOneOfK_1:			; DATA XREF: .data:00519C18o
		unicode	0, <Follow one of known switch cases>,0
aGoToPreviousHi:			; DATA XREF: .data:00519C28o
		unicode	0, <Go to previous history location>,0
aGoToNextHistor:			; DATA XREF: .data:00519C38o
		unicode	0, <Go to next history location>,0
aGoToPreviousRu:			; DATA XREF: .data:00519C48o
		unicode	0, <Go to previous run trace record>,0
aGoToNextRunTra:			; DATA XREF: .data:00519C58o
		unicode	0, <Go to next run trace record>,0
aGoToPreviousPr:			; DATA XREF: .data:00519C68o
		unicode	0, <Go to previous procedure, >
		unicode 0, <structure or stack frame>,0
aGoToNextProced:			; DATA XREF: .data:00519C78o
		unicode	0, <Go to next procedure, structure or stack frame>,0
aGoToPreviousFo:			; DATA XREF: .data:00519C88o
		unicode	0, <Go to previous found item>,0
aGoToNextFoundI:			; DATA XREF: .data:00519C98o
		unicode	0, <Go to next found item>,0
aFollowSelectio:			; DATA XREF: .data:00519CA8o
		unicode	0, <Follow selection in executable file>,0
aDumpStructures:			; DATA XREF: .data:00519CB8o
		unicode	0, <Dump: Structures>,0
aDecodeAsStru_0:			; DATA XREF: .data:00519CC8o
		unicode	0, <Decode as structure>,0
aDecodeAsPoin_0:			; DATA XREF: .data:00519CD8o
		unicode	0, <Decode as pointer to structure>,0
aOpenInASeparat:			; DATA XREF: .data:00519CE8o
		unicode	0, <Open in a separate dump window>,0
aDumpSearch:				; DATA XREF: .data:00519CF8o
		unicode	0, <Dump: Search>,0
aShowListOfName:			; DATA XREF: .data:00519D08o
		unicode	0, <Show list of names>,0
aFindCommand:				; DATA XREF: .data:00519D18o
		unicode	0, <Find command>,0
aFindSequenceOf:			; DATA XREF: .data:00519D28o
		unicode	0, <Find sequence of commands>,0
aFindConstant:				; DATA XREF: .data:00519D38o
		unicode	0, <Find constant>,0
aFindInteger:				; DATA XREF: .data:00519D48o
		unicode	0, <Find integer>,0
aFindFloating_0:			; DATA XREF: .data:00519D58o
		unicode	0, <Find floating-point number>,0
aFindBinaryStri:			; DATA XREF: .data:00519D68o
		unicode	0, <Find binary string>,0
aFindModificati:			; DATA XREF: .data:00519D78o
		unicode	0, <Find modification>,0
aSearchForAllIn:			; DATA XREF: .data:00519D88o
		unicode	0, <Search for all intermodular calls>,0
aSearchForAll_2:			; DATA XREF: .data:00519D98o
		unicode	0, <Search for all commands>,0
aSearchForAll_3:			; DATA XREF: .data:00519DA8o
		unicode	0, <Search for all command sequences>,0
aSearchForAllCo:			; DATA XREF: .data:00519DB8o
		unicode	0, <Search for all constants>,0
aSearchForAllMo:			; DATA XREF: .data:00519DC8o
		unicode	0, <Search for all modifications>,0
aSearchForAllRe:			; DATA XREF: .data:00519DD8o
		unicode	0, <Search for all referenced strings>,0
aSearchForAll_0:			; DATA XREF: .data:00519DE8o
		unicode	0, <Search for all referenced GUIDs>,0
aSearchForAllUs:			; DATA XREF: .data:00519DF8o
		unicode	0, <Search for all user-defined comments>,0
aSearchForAllPr:			; DATA XREF: .data:00519E08o
		unicode	0, <Search for all procedures>,0
aSearchForAllSw:			; DATA XREF: .data:00519E18o
		unicode	0, <Search for all switches and cascaded IFs>,0
aSearchForAll_1:			; DATA XREF: .data:00519E28o
		unicode	0, <Search for all referenced >
		unicode 0, <floating-point constants>,0
aFindLastReco_0:			; DATA XREF: .data:00519E38o
		unicode	0, <Find last record in run trace>,0
aDumpReferences:			; DATA XREF: .data:00519E48o
		unicode	0, <Dump: References>,0
aFindAllReferen:			; DATA XREF: .data:00519E58o
		unicode	0, <Find all references>,0
aDumpAddressing:			; DATA XREF: .data:00519E68o
		unicode	0, <Dump: Addressing>,0
aShowAbsolute_0:			; DATA XREF: .data:00519E78o
		unicode	0, <Show absolute addresses>,0
aShowOffsetsF_1:			; DATA XREF: .data:00519E88o
		unicode	0, <Show offsets from current selection>,0
aShowOffsetsR_2:			; DATA XREF: .data:00519E98o
		unicode	0, <Show offsets relative to module base>,0
aDumpComments:				; DATA XREF: .data:00519EA8o
		unicode	0, <Dump: Comments>,0
aToggleBetweenC:			; DATA XREF: .data:00519EB8o
		unicode	0, <Toggle between comments and source code>,0
aShowOrHideRunT:			; DATA XREF: .data:00519EC8o
		unicode	0, <Show or hide run trace profile in comments>,0
aDumpAnalysis:				; DATA XREF: .data:00519ED8o
		unicode	0, <Dump: Analysis>,0
aAnalyseModule:				; DATA XREF: .data:00519EE8o
		unicode	0, <Analyse module>,0
aRemoveAnalysis:			; DATA XREF: .data:00519EF8o
		unicode	0, <Remove analysis from selection>,0
aRemoveAnalys_3:			; DATA XREF: .data:00519F08o
		unicode	0, <Remove analysis from the module>,0
aDumpHelp:				; DATA XREF: .data:00519F18o
		unicode	0, <Dump: Help>,0
aHelpOnComman_0:			; DATA XREF: .data:00519F28o
		unicode	0, <Help on command>,0
aHelpOnApiFunct:			; DATA XREF: .data:00519F38o
		unicode	0, <Help on API function>,0
aDumpDataPresen:			; DATA XREF: .data:00519F48o
		unicode	0, <Dump: Data presentation>,0
aDumpAs16HexB_0:			; DATA XREF: .data:00519F58o
		unicode	0, <Dump as 16 hex bytes and ASCII text>,0
aDumpAs8HexBy_0:			; DATA XREF: .data:00519F68o
		unicode	0, <Dump as 8 hex bytes and ASCII text>,0
aDumpAs16HexByt:			; DATA XREF: .data:00519F78o
		unicode	0, <Dump as 16 hex bytes and UNICODE text>,0
aDumpAs8HexByte:			; DATA XREF: .data:00519F88o
		unicode	0, <Dump as 8 hex bytes and UNICODE text>,0
aDumpAsAtMost16:			; DATA XREF: .data:00519F98o
		unicode	0, <Dump as at most 16 hex bytes and multibyte text>,0
aDumpAsAtMost8H:			; DATA XREF: .data:00519FA8o
		unicode	0, <Dump as at most 8 hex bytes and multibyte text>,0
aDumpAs64AsciiC:			; DATA XREF: .data:00519FB8o
		unicode	0, <Dump as 64 ASCII characters>,0
aDumpAs32AsciiC:			; DATA XREF: .data:00519FC8o
		unicode	0, <Dump as 32 ASCII characters>,0
aDumpAs64Unicod:			; DATA XREF: .data:00519FD8o
		unicode	0, <Dump as 64 UNICODE characters>,0
aDumpAs32Unicod:			; DATA XREF: .data:00519FE8o
		unicode	0, <Dump as 32 UNICODE characters>,0
aDumpAs16Unicod:			; DATA XREF: .data:00519FF8o
		unicode	0, <Dump as 16 UNICODE characters>,0
aDumpAs16BitSig:			; DATA XREF: .data:0051A008o
		unicode	0, <Dump as 16-bit signed numbers>,0
aDumpAs16BitUns:			; DATA XREF: .data:0051A018o
		unicode	0, <Dump as 16-bit unsigned numbers>,0
aDumpAs16BitHex:			; DATA XREF: .data:0051A028o
		unicode	0, <Dump as 16-bit hexadecimal numbers>,0
aDumpAs32BitSig:			; DATA XREF: .data:0051A038o
		unicode	0, <Dump as 32-bit signed numbers>,0
aDumpAs32BitUns:			; DATA XREF: .data:0051A048o
		unicode	0, <Dump as 32-bit unsigned numbers>,0
aDumpAs32BitHex:			; DATA XREF: .data:0051A058o
		unicode	0, <Dump as 32-bit hexadecimal numbers>,0
aDumpAsAddressW:			; DATA XREF: .data:0051A068o
		unicode	0, <Dump as address with comments>,0
aDumpAsAddres_0:			; DATA XREF: .data:0051A078o
		unicode	0, <Dump as address with ASCII dump and comments>,0
aDumpAsAddres_1:			; DATA XREF: .data:0051A088o
		unicode	0, <Dump as address with UNICODE dump and comments>,0
aDumpAs32BitFlo:			; DATA XREF: .data:0051A098o
		unicode	0, <Dump as 32-bit floating-point numbers>,0
aDumpAs64BitFlo:			; DATA XREF: .data:0051A0A8o
		unicode	0, <Dump as 64-bit floating-point numbers>,0
aDumpAs80BitFlo:			; DATA XREF: .data:0051A0B8o
		unicode	0, <Dump as 80-bit floating-point numbers>,0
aDumpAsDisassem:			; DATA XREF: .data:0051A0C8o
		unicode	0, <Dump as disassembly>,0
aDumpAsKnownStr:			; DATA XREF: .data:0051A0D8o
		unicode	0, <Dump as known structure>,0
aStackSpecificS:			; DATA XREF: .data:0051A0E8o
		unicode	0, <Stack-specific shortcuts>,0
aLockOrUnlockSt:			; DATA XREF: .data:0051A0F8o
		unicode	0, <Lock or unlock stack>,0
aPushDoubleword:			; DATA XREF: .data:0051A108o
		unicode	0, <Push doubleword>,0
aPopDoubleword:				; DATA XREF: .data:0051A118o
		unicode	0, <Pop doubleword>,0
aFollowStackDou:			; DATA XREF: .data:0051A128o
		unicode	0, <Follow stack doubleword in CPU Disassembler>,0
aGoToEsp:				; DATA XREF: .data:0051A138o
		unicode	0, <Go to ESP>,0
aGoToEbp:				; DATA XREF: .data:0051A148o
		unicode	0, <Go to EBP>,0
aShowOffsetsR_3:			; DATA XREF: .data:0051A158o
		unicode	0, <Show offsets relative to ESP>,0
aShowOffsetsRel:			; DATA XREF: .data:0051A168o
		unicode	0, <Show offsets relative to EBP>,0
aShortcutsOfReg:			; DATA XREF: .data:0051A178o
		unicode	0, <Shortcuts of Registers pane>,0
aIncrementReg_0:			; DATA XREF: .data:0051A188o
		unicode	0, <Increment register>,0
aDecrementRegis:			; DATA XREF: .data:0051A198o
		unicode	0, <Decrement register>,0
aZeroRegister:				; DATA XREF: .data:0051A1A8o
		unicode	0, <Zero register>,0
aSetRegisterT_0:			; DATA XREF: .data:0051A1B8o
		unicode	0, <Set register to 1>,0
aModifyContents:			; DATA XREF: .data:0051A1C8o
		unicode	0, <Modify contents of register or toggle bit>,0
aUndoSelectedRe:			; DATA XREF: .data:0051A1D8o
		unicode	0, <Undo selected register>,0
aPushFpuStack:				; DATA XREF: .data:0051A1E8o
		unicode	0, <Push FPU stack>,0
aPopFpuStack_0:				; DATA XREF: .data:0051A1F8o
		unicode	0, <Pop FPU stack>,0
aFollowConten_1:			; DATA XREF: .data:0051A208o
		unicode	0, <Follow contents of register in CPU Disassembler>,0
aFollowConten_2:			; DATA XREF: .data:0051A218o
		unicode	0, <Follow contents of register in CPU Dump>,0
aFollowConten_3:			; DATA XREF: .data:0051A228o
		unicode	0, <Follow contents of register in CPU Stack>,0
aViewFloatingPo:			; DATA XREF: .data:0051A238o
		unicode	0, <View floating-point registers and flags>,0
aViewMmxRegiste:			; DATA XREF: .data:0051A248o
		unicode	0, <View MMX registers>,0
aView3dnowRegis:			; DATA XREF: .data:0051A258o
		unicode	0, <View 3DNow! registers>,0
aHelpOnRegist_0:			; DATA XREF: .data:0051A268o
		unicode	0, <Help on register>,0
aShortcutsOfInf:			; DATA XREF: .data:0051A278o
		unicode	0, <Shortcuts of Information pane>,0
aEditContentsOf:			; DATA XREF: .data:0051A288o
		unicode	0, <Edit contents of selected operand>,0
aFollowContents:			; DATA XREF: .data:0051A298o
		unicode	0, <Follow contents of operand in CPU Disassembler>,0
aFollowConten_4:			; DATA XREF: .data:0051A2A8o
		unicode	0, <Follow contents of operand in CPU Dump>,0
aFollowConten_0:			; DATA XREF: .data:0051A2B8o
		unicode	0, <Follow contents of operand in CPU Stack>,0
aListJumpsAndCa:			; DATA XREF: .data:0051A2C8o
		unicode	0, <List jumps and calls to command>,0
aListSwitchCase:			; DATA XREF: .data:0051A2D8o
		unicode	0, <List switch cases>,0
aFollowAddressI:			; DATA XREF: .data:0051A2E8o
		unicode	0, <Follow address in Source code window>,0
aFollowAddres_5:			; DATA XREF: .data:0051A308o
		unicode	0, <Follow address of log record in CPU Disassembler>,0
aFollowAddressO:			; DATA XREF: .data:0051A318o
		unicode	0, <Follow address of log record in CPU Dump>,0
aFollowAddres_6:			; DATA XREF: .data:0051A328o
		unicode	0, <Follow address of log record in CPU Stack>,0
aClearLog_0:				; DATA XREF: .data:0051A338o
		unicode	0, <Clear log>,0
aStartProtocoll:			; DATA XREF: .data:0051A348o
		unicode	0, <Start protocolling to file>,0
aStopProtocolli:			; DATA XREF: .data:0051A358o
		unicode	0, <Stop protocolling to file>,0
aExecutableMo_1:			; DATA XREF: .data:0051A368o
		unicode	0, <Executable modules>,0
aOpenCodeSect_0:			; DATA XREF: .data:0051A378o
		unicode	0, <Open code section in CPU Disassembler>,0
aViewModuleData:			; DATA XREF: .data:0051A388o
		unicode	0, <View module data section in CPU Dump>,0
aOpenExecutab_1:			; DATA XREF: .data:0051A398o
		unicode	0, <Open executable file in standalone Dump window>,0
aListNamesDecla:			; DATA XREF: .data:0051A3A8o
		unicode	0, <List names declared in the selected module>,0
aListAllNamesDe:			; DATA XREF: .data:0051A3B8o
		unicode	0, <List all names declared >
		unicode 0, <in the debugged application>,0
aFindAllIntermo:			; DATA XREF: .data:0051A3C8o
		unicode	0, <Find all intermodular calls >
		unicode 0, <in the selected module>,0
aAnalyseSelecte:			; DATA XREF: .data:0051A3D8o
		unicode	0, <Analyse selected module>,0
aSaveModuleData:			; DATA XREF: .data:0051A3E8o
		unicode	0, <Save module data to .udd file>,0
aLoadModuleData:			; DATA XREF: .data:0051A3F8o
		unicode	0, <Load module data from .udd file>,0
aMemoryMap_0:				; DATA XREF: .data:0051A408o
		unicode	0, <Memory map>,0
aCreateBackupCo:			; DATA XREF: .data:0051A418o
		unicode	0, <Create backup copy of selected memory block>,0
aOpenMemoryBloc:			; DATA XREF: .data:0051A428o
		unicode	0, <Open memory block in CPU Disassembler>,0
aViewMemoryBloc:			; DATA XREF: .data:0051A438o
		unicode	0, <View memory block in CPU Dump>,0
aDumpMemoryBloc:			; DATA XREF: .data:0051A448o
		unicode	0, <Dump memory block in separate window>,0
aSearchMemoryBl:			; DATA XREF: .data:0051A458o
		unicode	0, <Search memory block for >
		unicode 0, <a sequence of bytes or string>,0
aToggleBreakOnA:			; DATA XREF: .data:0051A468o
		unicode	0, <Toggle break on access to selected memory block>,0
aShowOrHideFree:			; DATA XREF: .data:0051A478o
		unicode	0, <Show or hide free memory>,0
aListOfWindow_0:			; DATA XREF: .data:0051A488o
		unicode	0, <List of windows>,0
aFollowWinprocI:			; DATA XREF: .data:0051A498o
		unicode	0, <Follow WinProc in CPU Disassembler>,0
aFollowClassp_1:			; DATA XREF: .data:0051A4A8o
		unicode	0, <Follow ClassProc in CPU Disassembler>,0
aThreads:				; DATA XREF: .data:0051A4B8o
		unicode	0, <Threads>,0
aOpenThreadInCp:			; DATA XREF: .data:0051A4C8o
		unicode	0, <Open thread in CPU window>,0
aDumpThreadInfo:			; DATA XREF: .data:0051A4D8o
		unicode	0, <Dump Thread Information Block>,0
aViewThreadRegi:			; DATA XREF: .data:0051A4E8o
		unicode	0, <View thread registers>,0
aSetSymbolicT_0:			; DATA XREF: .data:0051A4F8o
		unicode	0, <Set symbolic thread name>,0
aSuspendThread:				; DATA XREF: .data:0051A508o
		unicode	0, <Suspend thread>,0
aResumeThread:				; DATA XREF: .data:0051A518o
		unicode	0, <Resume thread>,0
aKillThread:				; DATA XREF: .data:0051A528o
		unicode	0, <Kill thread>,0
aWatches_0:				; DATA XREF: .data:0051A538o
		unicode	0, <Watches>,0
aInsertWatch:				; DATA XREF: .data:0051A548o
		unicode	0, <Insert watch>,0
aEditWatch:				; DATA XREF: .data:0051A558o
		unicode	0, <Edit watch>,0
aDeleteWatch:				; DATA XREF: .data:0051A568o
		unicode	0, <Delete watch>,0
aMoveWatchOne_1:			; DATA XREF: .data:0051A578o
		unicode	0, <Move watch one line up>,0
aMoveWatchOneLi:			; DATA XREF: .data:0051A588o
		unicode	0, <Move watch one line down>,0
aEditContents_0:			; DATA XREF: .data:0051A598o
		unicode	0, <Edit contents of displayed register or memory>,0
aFollowWatchV_0:			; DATA XREF: .data:0051A5A8o
		unicode	0, <Follow watch value in CPU Disassembler>,0
aFollowWatchVal:			; DATA XREF: .data:0051A5B8o
		unicode	0, <Follow watch value in CPU Dump>,0
aFollowWatchV_1:			; DATA XREF: .data:0051A5C8o
		unicode	0, <Follow watch value in CPU Stack>,0
aSearchResult_0:			; DATA XREF: .data:0051A5D8o
		unicode	0, <Search results>,0
aFollowSelected:			; DATA XREF: .data:0051A5E8o
		unicode	0, <Follow selected found item in CPU Disassembler>,0
aFollowPrevio_3:			; DATA XREF: .data:0051A5F8o
		unicode	0, <Follow previous found item in Disassembler>,0
aFollowNextFoun:			; DATA XREF: .data:0051A608o
		unicode	0, <Follow next found item in Disassembler>,0
aFindTextSubs_0:			; DATA XREF: .data:0051A618o
		unicode	0, <Find text substring>,0
aSetUnconditi_4:			; DATA XREF: .data:0051A628o
		unicode	0, <Set unconditional breakpoint on all found commands>,0
aSetConditional:			; DATA XREF: .data:0051A638o
		unicode	0, <Set conditional breakpoint on all found commands>,0
aSetLoggingBrea:			; DATA XREF: .data:0051A648o
		unicode	0, <Set logging breakpoint on all found commands>,0
aRemoveBreakpoi:			; DATA XREF: .data:0051A658o
		unicode	0, <Remove breakpoints from all found commands>,0
aSetUnconditi_5:			; DATA XREF: .data:0051A668o
		unicode	0, <Set unconditional break on calls to selected function>,0
aSetCondition_3:			; DATA XREF: .data:0051A678o
		unicode	0, <Set conditional break on calls to selected function>,0
aSetLoggingBr_0:			; DATA XREF: .data:0051A688o
		unicode	0, <Set logging break on calls to selected function>,0
aRemoveBreak_11:			; DATA XREF: .data:0051A698o
		unicode	0, <Remove breakpoints from calls to selected function>,0
aFollowPrevious:			; DATA XREF: .data:0051A6B8o
		unicode	0, <Follow previous run trace record in Disassembler>,0
aFollowNextRunT:			; DATA XREF: .data:0051A6C8o
		unicode	0, <Follow next run trace record in Disassembler>,0
aFollowSelect_0:			; DATA XREF: .data:0051A6D8o
		unicode	0, <Follow selected trace record in CPU Disassembler>,0
aClearRunTrac_0:			; DATA XREF: .data:0051A6E8o
		unicode	0, <Clear run trace>,0
aToggleRunTrace:			; DATA XREF: .data:0051A6F8o
		unicode	0, <Toggle run trace registers display mode>,0
aMarkAddressInR:			; DATA XREF: .data:0051A708o
		unicode	0, <Mark address in run trace>,0
aEnterAddressTo:			; DATA XREF: .data:0051A718o
		unicode	0, <Enter address to find and mark in run trace>,0
aFindPrevious_0:			; DATA XREF: .data:0051A728o
		unicode	0, <Find previous marked address in run trace>,0
aFindNextMark_1:			; DATA XREF: .data:0051A738o
		unicode	0, <Find next marked address in run trace>,0
aClearAddress_1:			; DATA XREF: .data:0051A748o
		unicode	0, <Clear address marks in run trace>,0
aProfileSelecte:			; DATA XREF: .data:0051A758o
		unicode	0, <Profile selected module>,0
aProfileWholeMe:			; DATA XREF: .data:0051A768o
		unicode	0, <Profile whole memory>,0
aSaveRunTraceDa:			; DATA XREF: .data:0051A778o
		unicode	0, <Save run trace data to the file>,0
aCloseRunTraceL:			; DATA XREF: .data:0051A788o
		unicode	0, <Close run trace log file>,0
aProfile:				; DATA XREF: .data:0051A798o
		unicode	0, <Profile>,0
aFollowSelec_12:			; DATA XREF: .data:0051A7A8o
		unicode	0, <Follow selected profile item in CPU Disassembler>,0
aFollowPrevio_4:			; DATA XREF: .data:0051A7B8o
		unicode	0, <Follow previous profile item in Disassembler>,0
aFollowNextProf:			; DATA XREF: .data:0051A7C8o
		unicode	0, <Follow next profile item in Disassembler>,0
aMarkSelectedAd:			; DATA XREF: .data:0051A7D8o
		unicode	0, <Mark selected address in run trace>,0
aPatches_1:				; DATA XREF: .data:0051A7E8o
		unicode	0, <Patches>,0
aFollowSelect_1:			; DATA XREF: .data:0051A7F8o
		unicode	0, <Follow selected patch in CPU Disassembler>,0
aFollowPrevio_0:			; DATA XREF: .data:0051A808o
		unicode	0, <Follow previous patch in CPU Disassembler>,0
aFollowNextPatc:			; DATA XREF: .data:0051A818o
		unicode	0, <Follow next patch in CPU Disassembler>,0
aApplyPatch:				; DATA XREF: .data:0051A828o
		unicode	0, <Apply patch>,0
aRestoreOrigina:			; DATA XREF: .data:0051A838o
		unicode	0, <Restore original code>,0
aDeletePatchRec:			; DATA XREF: .data:0051A848o
		unicode	0, <Delete patch record from the table>,0
aBreakpointList:			; DATA XREF: .data:0051A858o
		unicode	0, <Breakpoint lists>,0
aDeleteBreakpoi:			; DATA XREF: .data:0051A868o
		unicode	0, <Delete breakpoint>,0
aEnableOrDisa_1:			; DATA XREF: .data:0051A878o
		unicode	0, <Enable or disable reakpoint>,0
aFollowBreakpoi:			; DATA XREF: .data:0051A888o
		unicode	0, <Follow breakpoint in CPU Disassembler>,0
aFollowBreakp_0:			; DATA XREF: .data:0051A898o
		unicode	0, <Follow breakpoint in CPU Dump>,0
aDisableAllBrea:			; DATA XREF: .data:0051A8A8o
		unicode	0, <Disable all breakpoints>,0
aEnableAllBreak:			; DATA XREF: .data:0051A8B8o
		unicode	0, <Enable all breakpoints>,0
aSource_3:				; DATA XREF: .data:0051A8C8o
		unicode	0, <Source>,0
aFollowSelect_3:			; DATA XREF: .data:0051A8D8o
		unicode	0, <Follow selected source line in CPU Disassembler>,0
aListOfSourceFi:			; DATA XREF: .data:0051A8E8o
		unicode	0, <List of source files>,0
aViewSourceFile:			; DATA XREF: .data:0051A8F8o
		unicode	0, <View source file>,0
aNames:					; DATA XREF: .data:0051A908o
		unicode	0, <Names>,0
aFollowImportIn:			; DATA XREF: .data:0051A918o
		unicode	0, <Follow import in CPU Disassembler>,0
aFollowSelect_4:			; DATA XREF: .data:0051A928o
		unicode	0, <Follow selected label in CPU Disassembler>,0
aFollowSelect_5:			; DATA XREF: .data:0051A938o
		unicode	0, <Follow selected label in CPU Dump>,0
aFindReferences:			; DATA XREF: .data:0051A948o
		unicode	0, <Find references to name>,0
aHelpOnSelected:			; DATA XREF: .data:0051A958o
		unicode	0, <Help on selected API function>,0
aHandles_2:				; DATA XREF: .data:0051A968o
		unicode	0, <Handles>,0
aDumpFileAssoci:			; DATA XREF: .data:0051A978o
		unicode	0, <Dump file associated with the handle>,0
aCallStack_0:				; DATA XREF: .data:0051A988o
		unicode	0, <Call stack>,0
aFollowAddres_0:			; DATA XREF: .data:0051A998o
		unicode	0, <Follow address in CPU Stack>,0
aFollowProcedur:			; DATA XREF: .data:0051A9A8o
		unicode	0, <Follow procedure in CPU Disassember>,0
aFollowCallerIn:			; DATA XREF: .data:0051A9B8o
		unicode	0, <Follow caller in CPU Disassember>,0
aFollowStackF_0:			; DATA XREF: .data:0051A9C8o
		unicode	0, <Follow stack frame in CPU Stack>,0
aFollowStackD_0:			; DATA XREF: .data:0051A9D8o
		unicode	0, <Follow stack doubleword in CPU Dump>,0
aSetBreakpointO:			; DATA XREF: .data:0051A9E8o
		unicode	0, <Set breakpoint on call>,0
aSetCondition_4:			; DATA XREF: .data:0051A9F8o
		unicode	0, <Set conditional breakpoint on call>,0
aSetCondition_0:			; DATA XREF: .data:stru_51AA08o
		unicode	0, <Set conditional logging breakpoint on call>,0
aCtrl:					; DATA XREF: .text:00422D96o
		unicode	0, <Ctrl+>,0
aAlt:					; DATA XREF: .text:00422DB6o
		unicode	0, <Alt+>,0
aWin_0:					; DATA XREF: .text:00422DD6o
		unicode	0, <Win+>,0
aShift:					; DATA XREF: .text:00422DFFo
		unicode	0, <Shift+>,0
aSpace:					; DATA XREF: .text:00422E8Eo
		unicode	0, <Space>,0
aPlus_0:				; DATA XREF: .text:00422EBAo
		unicode	0, <Plus \{+\}>,0
aMinus:					; DATA XREF: .text:00422EE6o
		unicode	0, <Minus \{-\}>,0
aColon:					; DATA XREF: .text:00422F12o
		unicode	0, <Colon \{:\}>,0
aSemicolon:				; DATA XREF: .text:00422F3Eo
		unicode	0, <Semicolon \{;\}>,0
aComma:					; DATA XREF: .text:00422F6Ao
		unicode	0, <Comma \{,\}>,0
aPoint_:				; DATA XREF: .text:00422F96o
		unicode	0, <Point \{.\}>,0
; wchar_t aC
aC:					; DATA XREF: .text:00422FBEo
		unicode	0, <\-!%c\->,0
; wchar_t aFI
aFI:					; DATA XREF: .text:0042301Bo
		unicode	0, <F!%i>,0
; wchar_t aNumericI
aNumericI:				; DATA XREF: .text:00423041o
		unicode	0, <Numeric !%i>,0
aNumpoint:				; DATA XREF: .text:0042305Bo
		unicode	0, <NumPoint>,0
aBkspc:					; DATA XREF: .text:004230B3o
		unicode	0, <BkSpc>,0
aEnter_1:				; DATA XREF: .text:004230DFo
		unicode	0, <Enter>,0
aInsert:				; DATA XREF: .text:0042310Bo
		unicode	0, <Insert>,0
aGray:					; DATA XREF: .text:00423137o
		unicode	0, <Gray *>,0
aGray_1:				; DATA XREF: .text:00423163o
		unicode	0, <Gray +>,0
aGray_0:				; DATA XREF: .text:0042318Fo
		unicode	0, <Gray ->,0
aGray_2:				; DATA XREF: .text:004231BBo
		unicode	0, <Gray />,0
aDel:					; DATA XREF: .text:004231E7o
		unicode	0, <Del>,0
aTab_1:					; DATA XREF: .text:00423213o
		unicode	0, <Tab>,0
aUparrow:				; DATA XREF: .text:0042323Fo
		unicode	0, <UpArrow>,0
aDownarrow:				; DATA XREF: .text:0042326Bo
		unicode	0, <DownArrow>,0
aLeftarrow:				; DATA XREF: .text:00423297o
		unicode	0, <LeftArrow>,0
aRightarrow:				; DATA XREF: .text:004232C3o
		unicode	0, <RightArrow>,0
aPgup:					; DATA XREF: .text:004232EFo
		unicode	0, <PgUp>,0
aPgdn:					; DATA XREF: .text:0042331Bo
		unicode	0, <PgDn>,0
aHome:					; DATA XREF: .text:00423344o
		unicode	0, <Home>,0
aEnd:					; DATA XREF: .text:0042336Do
		unicode	0, <End>,0
; wchar_t a0x02x
a0x02x:					; DATA XREF: .text:00423392o
		unicode	0, <0x!%02X>,0
; const	WCHAR aShortcuts
aShortcuts:				; DATA XREF: .text:0042473Eo
		unicode	0, <Shortcuts>,0
; wchar_t asc_51FBDE
asc_51FBDE:				; DATA XREF: .text:00424735o
		unicode	0, <!%X>,0
; wchar_t a0_10
a0_10:					; DATA XREF: .text:004247E4o
		unicode	0, <0>,0
; wchar_t a06xS
a06xS:					; DATA XREF: .text:00424822o
		unicode	0, <!%06X \{!%s\}>,0
; wchar_t aStandard
aStandard:				; DATA XREF: .text:004234E2o
		unicode	0, <STANDARD>,0
; wchar_t aFullcopy
aFullcopy:				; DATA XREF: .text:loc_4234FEo
		unicode	0, <FULLCOPY>,0
; wchar_t aAppearance_1
aAppearance_1:				; DATA XREF: .text:loc_42351Ao
		unicode	0, <APPEARANCE>,0
aShortcut:				; DATA XREF: .data:0051AB34o
		unicode	0, <Shortcut:>,0
aCtrl_1:				; DATA XREF: .data:0051AB5Co
		unicode	0, <Ctrl +>,0
aShortcutInclud:			; DATA XREF: .data:0051AB5Co
		unicode	0, <Shortcut includes Control key>,0
aAlt_0:					; DATA XREF: .data:0051AB84o
		unicode	0, <Alt +>,0
aShortcutIncl_0:			; DATA XREF: .data:0051AB84o
		unicode	0, <Shortcut includes Alt key>,0
aWin:					; DATA XREF: .data:0051ABACo
		unicode	0, <Win +>,0
aShortcutIncl_1:			; DATA XREF: .data:0051ABACo
		unicode	0, <Shortcut includes Flying Windows key>,0
aShift_1:				; DATA XREF: .data:0051ABD4o
		unicode	0, <Shift +>,0
aShortcutIncl_3:			; DATA XREF: .data:0051ABD4o
		unicode	0, <Shortcut includes Shift key>,0
aSelectMainShor:			; DATA XREF: .data:0051ABFCo
		unicode	0, <Select main shortcut key>,0
aApply:					; DATA XREF: .data:0051AC24o
		unicode	0, <Apply>,0
aPressToApplySh:			; DATA XREF: .data:0051AC24o
		unicode	0, <Press to apply shortcut>,0
aValidityOfTheS:			; DATA XREF: .data:0051AC4Co
		unicode	0, <Validity of the shortcut>,0
aLoad:					; DATA XREF: .data:0051AC74o
		unicode	0, <Load>,0
aLoadShortcutsF:			; DATA XREF: .data:0051AC74o
		unicode	0, <Load shortcuts from file>,0
aSave:					; DATA XREF: .data:0051AC9Co
		unicode	0, <Save>,0
aSaveShortcutsT:			; DATA XREF: .data:0051AC9Co
		unicode	0, <Save shortcuts to file>,0
aRestoreDefau_2:			; DATA XREF: .data:0051ACC4o
		unicode	0, <Restore defaults>,0
aRestoreDefault:			; DATA XREF: .data:0051ACC4o
		unicode	0, <Restore default OllyDbg shortcuts>,0
aOk:					; DATA XREF: .data:0051ACECo
		unicode	0, <OK>,0
aAcceptShortcut:			; DATA XREF: .data:0051ACECo
		unicode	0, <Accept shortcuts and close shortcut editor>,0
aCancel_0:				; DATA XREF: .data:0051AD14o
		unicode	0, <Cancel>,0
aDiscardModif_0:			; DATA XREF: .data:0051AD14o
		unicode	0, <Discard modifications and close shortcut editor>,0
; wchar_t asc_51FFB6
asc_51FFB6:				; DATA XREF: .text:loc_424AB7o
		unicode	0, <  >,0
aInternalErro_0:			; DATA XREF: .text:loc_423944o
		dw 0Ah
		unicode	0, < Internal error>,0
aShortcutIsRe_1:			; DATA XREF: .text:loc_4239B0o
		dw 0Ah
		unicode	0, < Shortcut is reserved by OS>,0
aShortcutIsRese:			; DATA XREF: .text:loc_4239DBo
		dw 0Ah
		unicode	0, < Shortcut is reserved by OllyDbg>,0
aShiftIsNotAllo:			; DATA XREF: .text:004239FDo
					; .data:off_53FD74o
		dw 0Ah
		unicode	0, < Shift is not allowed \{used as command modifier\}>,0
aShiftIsNotAl_2:			; DATA XREF: .text:00423A25o
		dw 0Ah
		unicode	0, < Shift is not allowed \{turns numeric pad keys into arrow >
		unicode	0, <mode\}>,0
aShiftIsNotAl_1:			; DATA XREF: .text:00423A46o
		dw 0Ah
		unicode	0, < Shift is not allowed \{key is processed as a character\}>,0
aThisKeyCanBeUs:			; DATA XREF: .text:00423A87o
		dw 0Ah
		unicode	0, < This key can be used only in combination with Alt>,0
aThisCombinatio:			; DATA XREF: .text:00423AECo
		unicode	0, < This combination is already used by:>
		dw 0Ah
		unicode	0, <  >,0
; wchar_t aS_1
aS_1:					; DATA XREF: .text:00423B0Eo
		unicode	0, <  !%s;>,0
aConflictingSho:			; DATA XREF: .text:00423B48o
		dw 0Ah
		unicode	0, < Conflicting shortcut\{s\} will be removed if you press \-Apply\->,0
aPressApplyToCh:			; DATA XREF: .text:00423B94o
		dw 0Ah
		unicode	0, < Press \-Apply\- to change shortcut>,0
aNone:					; DATA XREF: .text:loc_424C4Do

		unicode	0, <\[none\]>,0
aSelectFileWith:			; DATA XREF: .text:00424F3Eo
		unicode	0, <Select file with shortcuts>,0
; wchar_t a_ini_0
a_ini_0:				; DATA XREF: .text:00424F30o
		unicode	0, <.ini>,0
aNoFile:				; DATA XREF: .text:00424F64o
		unicode	0, <No file>,0
aDescription:				; DATA XREF: .text:004250CAo
		unicode	0, <Description>,0
aDescriptionOfT:			; DATA XREF: .text:004250D4o
		unicode	0, <Description of the function>,0
aShortcut_1:				; DATA XREF: .text:004250F2o
		unicode	0, <Shortcut>,0
aCurrentlySelec:			; DATA XREF: .text:004250FCo
		unicode	0, <Currently selected shortcut>,0
; const	WCHAR aDia_empty
aDia_empty:				; DATA XREF: .text:004251DBo
		unicode	0, <DIA_EMPTY>,0
aResizeMainWind:			; DATA XREF: .text:loc_42550Bo
		unicode	0, <Resize main window>,0
aMoveMainWindow:			; DATA XREF: .text:loc_425518o
		unicode	0, <Move main window>,0
aMinimizeMainWi:			; DATA XREF: .text:loc_425525o
		unicode	0, <Minimize main window>,0
aMaximizeMainWi:			; DATA XREF: .text:loc_425532o
		unicode	0, <Maximize main window>,0
aRestoreMainWin:			; DATA XREF: .text:loc_42553Fo
		unicode	0, <Restore main window to previous size>,0
aSwitchToWindow:			; DATA XREF: .text:0042557Ao
		unicode	0, <Switch to window>,0
; wchar_t a_S_S
a_S_S:					; DATA XREF: .text:00425C1Fo
		unicode	0, <!%.*s \{!%.*s\}>,0
		

		
stru_520568	t_control <4, 3E9h, 37h, 4, 32h, 9, 0, offset aOd_empty+0Fh, 0, 0>; 0
					; \=\=
		t_control <4, 3EAh, 6Dh, 4, 1Ch, 9, 0, offset aOd_empty+0Fh, 0, 0>; 0 ;	\=\=
		t_control <4, 3EBh, 8Dh, 4, 14h, 9, 0, offset aOd_empty+0Fh, 0, 0>; 0 ;	\=\=
		t_control <4, 3ECh, 0A5h, 4, 14h, 9, 0, offset aOd_empty+0Fh, 0, 0>; 0 ; \=\=
		t_control <5, 0FFFFFFFFh, 4, 11h, 2Dh, 9, 0, offset aHexadecimal, 0, \ ; \=Hexadecimal\=
      0>		; 0
		t_control <0Eh, 3F2h, 37h, 0Fh, 32h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aDoublewordRegi, 0>; 0
		t_control <0Eh, 3F3h, 6Dh, 0Fh, 1Ch, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aWordRegisterIn, 0>; 0
		t_control <0Eh, 3F4h, 8Dh, 0Fh, 14h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aHighByteRegist, 0>; 0
		t_control <0Eh, 3F5h, 0A5h, 0Fh, 14h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLowByteRegiste, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 21h, 2Dh, 9, 0, offset aSigned_1, 0, 0>; 0	; \=Signed\=
		t_control <0Ch, 3F6h, 37h, 1Fh, 32h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aDoublewordRe_0, 0>; 0
		t_control <0Ch, 3F7h, 6Dh, 1Fh, 1Ch, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aWordRegister_1, 0>; 0
		t_control <0Ch, 3F8h, 8Dh, 1Fh, 14h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aHighByteRegi_1, 0>; 0
		t_control <0Ch, 3F9h, 0A5h, 1Fh, 14h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLowByteRegis_1, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 31h, 2Dh, 9, 0, offset aUnsigned, 0, 0>; 0	; \=Unsigned\=
		t_control <0Ch, 3FAh, 37h, 2Fh, 32h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aDoublewordRe_1, 0>; 0
		t_control <0Ch, 3FBh, 6Dh, 2Fh, 1Ch, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aWordRegister_0, 0>; 0
		t_control <0Ch, 3FDh, 8Dh, 2Fh, 14h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aHighByteRegi_2, 0>; 0
		t_control <0Ch, 3FEh, 0A5h, 2Fh, 14h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLowByteRegis_0, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 41h, 2Dh, 9, 0, offset aCharacter, 0, 0>; 0 ; \=Character\=
		t_control <0Ch, 3FFh, 8Dh, 3Fh, 14h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aHighByteRegi_3, 0>; 0
		t_control <0Ch, 400h, 0A5h, 3Fh, 14h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLowByteRegis_3, 0>; 0
		t_control <12h, 1, 5Ah, 52h, 2Dh, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 8Ch, 52h, 2Dh, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0BDh, 65h, 0, offset aEditRegister, 0,\ ; \=Edit register\=
      0>		; 0
stru_520950	t_control <4, 3E9h, 37h, 4, 32h, 9, 0, offset aOd_empty+0Fh, 0, 0>; 0
					; \=\=
		t_control <4, 3EAh, 6Dh, 4, 1Ch, 9, 0, offset aOd_empty+0Fh, 0, 0>; 0 ;	\=\=
		t_control <5, 0FFFFFFFFh, 4, 11h, 2Dh, 9, 0, offset aHexadecimal, 0, \ ; \=Hexadecimal\=
      0>		; 0
		t_control <0Eh, 3F2h, 37h, 0Fh, 32h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aDoublewordRegi, 0>; 0
		t_control <0Eh, 3F3h, 6Dh, 0Fh, 1Ch, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aWordRegisterIn, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 21h, 2Dh, 9, 0, offset aSigned_1, 0, 0>; 0	; \=Signed\=
		t_control <0Ch, 3F6h, 37h, 1Fh, 32h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aDoublewordRe_0, 0>; 0
		t_control <0Ch, 3F7h, 6Dh, 1Fh, 1Ch, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aWordRegister_1, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 31h, 2Dh, 9, 0, offset aUnsigned, 0, 0>; 0	; \=Unsigned\=
		t_control <0Ch, 3FAh, 37h, 2Fh, 32h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aDoublewordRe_1, 0>; 0
		t_control <0Ch, 3FBh, 6Dh, 2Fh, 1Ch, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aWordRegister_0, 0>; 0
		t_control <12h, 1, 2Ah, 42h, 2Dh, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 5Ch, 42h, 2Dh, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 8Dh, 55h, 0, offset aEditRegister, 0, \ ; \=Edit register\=
      0>		; 0
stru_520B80	t_control <4, 3E9h, 37h, 4, 32h, 9, 0, offset aOd_empty+0Fh, 0, 0>; 0
					; \=\=
		t_control <5, 0FFFFFFFFh, 4, 11h, 2Dh, 9, 0, offset aHexadecimal, 0, \ ; \=Hexadecimal\=
      0>		; 0
		t_control <0Eh, 3F2h, 37h, 0Fh, 32h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aDoublewordRegi, 0>; 0
		t_control <12h, 1, 4, 22h, 30h, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 39h, 22h, 30h, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 6Dh, 34h, 0, offset aEditRegister, 0, \ ; \=Edit register\=
      0>		; 0
stru_520C70	t_control <5, 0FFFFFFFFh, 4, 7, 2Dh, 9, 0, offset aHexadecimal, 0, 0>; 0
					; \=Hexadecimal\=
		t_control <0Eh, 3F2h, 37h, 5, 32h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterDataInHex, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 17h, 2Dh, 9, 0, offset aSigned_1, 0, 0>; 0	; \=Signed\=
		t_control <0Ch, 3F6h, 37h, 15h, 32h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterDataInSig, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 27h, 2Dh, 9, 0, offset aUnsigned, 0, 0>; 0	; \=Unsigned\=
		t_control <0Ch, 3FAh, 37h, 25h, 32h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterDataInUns, 0>; 0
		t_control <12h, 1, 4, 38h, 30h, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 39h, 38h, 30h, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 6Dh, 4Ah, 0, offset aEditData, 0, 0>; 0	; \=Edit	data\=
stru_520DD8	t_control <5, 0FFFFFFFFh, 4, 7, 2Dh, 9, 0, offset aHexadecimal, 0, 0>; 0
					; \=Hexadecimal\=
		t_control <0Eh, 3F2h, 37h, 5, 32h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterDataInHex, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 17h, 2Dh, 9, 0, offset aSigned_1, 0, 0>; 0	; \=Signed\=
		t_control <0Ch, 3F6h, 37h, 15h, 32h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterDataInSig, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 27h, 2Dh, 9, 0, offset aUnsigned, 0, 0>; 0	; \=Unsigned\=
		t_control <0Ch, 3FAh, 37h, 25h, 32h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterDataInUns, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 37h, 2Dh, 9, 0, offset aFloat_3, 0, 0>; 0 ; \=Float\=
		t_control <0Ch, 3FCh, 37h, 35h, 32h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterDataInFlo, 0>; 0
		t_control <12h, 1, 4, 48h, 30h, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 39h, 48h, 30h, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 6Dh, 5Ah, 0, offset aEditData, 0, 0>; 0	; \=Edit	data\=
stru_520F90	t_control <5, 0FFFFFFFFh, 4, 7, 2Dh, 9, 0, offset aHexadecimal, 0, 0>; 0
					; \=Hexadecimal\=
		t_control <0Eh, 3F2h, 37h, 5, 32h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterDataInHex, 0>; 0
		t_control <12h, 1, 4, 18h, 30h, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 39h, 18h, 30h, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 6Dh, 2Ah, 0, offset aEditData, 0, 0>; 0	; \=Edit	data\=
stru_521058	t_control <5, 0FFFFFFFFh, 4, 7, 2Dh, 9, 0, offset aHexadecimal, 0, 0>; 0
					; \=Hexadecimal\=
		t_control <0Eh, 3F3h, 37h, 5, 28h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterWordInHex, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 17h, 2Dh, 9, 0, offset aSigned_1, 0, 0>; 0	; \=Signed\=
		t_control <0Ch, 3F7h, 37h, 15h, 28h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterWordInSig, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 27h, 2Dh, 9, 0, offset aUnsigned, 0, 0>; 0	; \=Unsigned\=
		t_control <0Ch, 3FBh, 37h, 25h, 28h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterWordInUns, 0>; 0
		t_control <12h, 1, 4, 38h, 2Bh, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 34h, 38h, 2Bh, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 63h, 4Ah, 0, offset aEditData, 0, 0>; 0	; \=Edit	data\=
stru_5211C0	t_control <5, 0FFFFFFFFh, 4, 7, 2Dh, 9, 0, offset aHexadecimal, 0, 0>; 0
					; \=Hexadecimal\=
		t_control <0Eh, 3F3h, 37h, 5, 28h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterWordInHex, 0>; 0
		t_control <12h, 1, 4, 18h, 2Bh, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 34h, 18h, 2Bh, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 63h, 2Ah, 0, offset aEditData, 0, 0>; 0	; \=Edit	data\=
stru_521288	t_control <5, 0FFFFFFFFh, 4, 7, 2Dh, 9, 0, offset aHexadecimal, 0, 0>; 0
					; \=Hexadecimal\=
		t_control <0Eh, 3F5h, 37h, 5, 28h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterByteInHex, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 17h, 2Dh, 9, 0, offset aSigned_1, 0, 0>; 0	; \=Signed\=
		t_control <0Ch, 3F9h, 37h, 15h, 28h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterByteInSig, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 27h, 2Dh, 9, 0, offset aUnsigned, 0, 0>; 0	; \=Unsigned\=
		t_control <0Ch, 3FEh, 37h, 25h, 28h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterByteInUns, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 37h, 2Dh, 9, 0, offset aCharacter, 0, 0>; 0 ; \=Character\=
		t_control <0Ch, 400h, 37h, 35h, 28h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterByteAsAsc, 0>; 0
		t_control <12h, 1, 4, 48h, 2Bh, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 34h, 48h, 2Bh, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 63h, 5Ah, 0, offset aEditData, 0, 0>; 0	; \=Edit	data\=
stru_521440	t_control <5, 0FFFFFFFFh, 4, 7, 2Dh, 9, 0, offset aHexadecimal, 0, 0>; 0
					; \=Hexadecimal\=
		t_control <0Eh, 3F5h, 37h, 5, 28h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterByteInHex, 0>; 0
		t_control <12h, 1, 4, 18h, 2Bh, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 34h, 18h, 2Bh, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 63h, 2Ah, 0, offset aEditData, 0, 0>; 0	; \=Edit	data\=
stru_521508	t_control <5, 0FFFFFFFFh, 4Ah, 7, 2Dh, 9, 0, offset aLastErrorHex, 0, \
      0>		; 0 ; \=Last error \{hex\}\=
		t_control <0Eh, 3F2h, 7Dh, 5, 32h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterLastThrea, 0>; 0
		t_control <13h, 401h, 5, 15h, 0AAh, 0F0h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aSelectNewLastT, 0>; 0
		t_control <3Fh, 402h, 7Dh, 25h, 32h, 0Ch, offset a3, \ ; \=Sort by name\=
      offset aSortByName, offset aCheckToSortErr, 0>; 0
		t_control <12h, 1, 4Ah, 38h, 30h, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 7Fh, 38h, 30h, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0B3h, 4Ah, 0, offset aChangeLastErro, \ ; \=Change last error\=
      0, 0>	; 0
stru_521620	t_control <2, 0FFFFFFFFh, 4, 7, 50h, 9, 0, offset aFirstAddressIn, 0, \
      0>		; 0 ; \=First address in	the range\=
		t_control <20h, 41Ah, 0Ch, 13h, 99h, 96h, 0, 0, \ ; \=Select or type in the first address in \=...
      offset aSelectOrTypeIn, 0>; 0
		t_control <2, 0FFFFFFFFh, 4, 27h, 50h, 9, 0, offset aLastAddressInT, \ ; \=Last address in the range \{included\}\=
      0, 0>	; 0
		t_control <21h, 41Bh, 0Ch, 33h, 99h, 96h, 0, 0, \ ; \=Select or type in the last address in t\=...
      offset aSelectOrType_0, 0>; 0
		t_control <2, 41Ch, 4, 43h, 0A0h, 0Ch, 0, offset aOd_empty+0Fh, 0, 0>; 0 ; \=\=
		t_control <12h, 1, 46h, 57h, 2Dh, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aSelectRange, 0>; 0
		t_control <11h, 2, 78h, 57h, 2Dh, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardAction, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0A9h, 6Ah, 0, offset aSelectAddressR, \ ; \=Select address range\=
      0, 0>	; 0
stru_521760	t_control <2, 0FFFFFFFFh, 4, 7, 50h, 9, 0, offset aFirstException, 0, \
      0>		; 0 ; \=First exception in the range\=
		t_control <15h, 424h, 0Ch, 13h, 99h, 96h, 0, 0, \ ; \=Select or type in the first exception i\=...
      offset aSelectOrType_2, 0>; 0
		t_control <2, 0FFFFFFFFh, 4, 27h, 50h, 9, 0, offset aLastExceptionI, \ ; \=Last exception in the range \{included\}\=
      0, 0>	; 0
		t_control <15h, 425h, 0Ch, 33h, 99h, 96h, 0, 0, \ ; \=Select or type in the last exception in\=...
      offset aSelectOrType_3, 0>; 0
		t_control <12h, 1, 46h, 47h, 2Dh, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aSelectRange, 0>; 0
		t_control <11h, 2, 78h, 47h, 2Dh, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardAction, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0A9h, 64h, 0, offset aSelectRangeOfE, \ ; \=Select range of exception codes\=
      0, 0>	; 0
stru_521878	t_control <2, 42Fh, 4, 7, 0A1h, 1Bh, 0, 0, 0, 0>; 0
		t_control <14h, 430h, 0Ch, 23h, 99h, 96h, 0, 0, \ ; \=Select type of the structure\=
      offset aSelectTypeOfTh, 0>; 0
		t_control <12h, 1, 46h, 3Dh, 2Dh, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aConfirmSelecti, 0>; 0
		t_control <11h, 2, 78h, 3Dh, 2Dh, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardAction, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0A9h, 50h, 0, offset aSelectStructur, \ ; \=Select structure\=
      0, 0>	; 0
stru_521940	t_control <2, 42Fh, 4, 7, 0A1h, 1Bh, 0, 0, 0, 0>; 0
		t_control <14h, 430h, 0Ch, 23h, 99h, 96h, 0, 0, \ ; \=Select type of the structure\=
      offset aSelectTypeOfTh, 0>; 0
		t_control <60h, 431h, 5, 39h, 3Ch, 9, offset dword_5DA5A8, \ ; \=Exactly one structure\=
      offset aExactlyOneStru, offset aSetDumpSizeToT, 0>; 0
		t_control <62h, 433h, 5, 47h, 3Ch, 9, offset dword_5DA5A8, \ ; \=Specify count:\=
      offset aSpecifyCount, offset aSpecifyHowMany, 0>; 0
		t_control <16h, 434h, 41h, 45h, 2Dh, 0C8h, 0, 0, \ ; \=Specify how many instances of the struc\=...
      offset aSpecifyHowMany, 0>; 0
		t_control <12h, 1, 46h, 5Dh, 2Dh, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aConfirmSelecti, 0>; 0
		t_control <11h, 2, 78h, 5Dh, 2Dh, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardAction, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0A9h, 70h, 0, offset aSelectStructur, \ ; \=Select structure\=
      0, 0>	; 0
stru_521A80	t_control <2, 42Fh, 4, 7, 0A1h, 1Bh, 0, 0, 0, 0>; 0
		t_control <14h, 430h, 0Ch, 23h, 99h, 96h, 0, 0, \ ; \=Select type of the structure\=
      offset aSelectTypeOfTh, 0>; 0
		t_control <60h, 431h, 5, 39h, 3Ch, 9, offset dword_5DA5A8, \ ; \=Exactly one structure\=
      offset aExactlyOneStru, offset aSetDumpSizeToT, 0>; 0
		t_control <61h, 432h, 5, 47h, 3Ch, 9, offset dword_5DA5A8, \ ; \=Fill selection\=
      offset aFillSelection, offset aFillSelectio_3, 0>; 0
		t_control <62h, 433h, 5, 55h, 3Ch, 9, offset dword_5DA5A8, \ ; \=Specify count:\=
      offset aSpecifyCount, offset aSpecifyHowMany, 0>; 0
		t_control <16h, 434h, 41h, 53h, 2Dh, 0C8h, 0, 0, \ ; \=Specify how many instances of the struc\=...
      offset aSpecifyHowMany, 0>; 0
		t_control <12h, 1, 46h, 6Bh, 2Dh, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aConfirmSelecti, 0>; 0
		t_control <11h, 2, 78h, 6Bh, 2Dh, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardAction, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0A9h, 7Eh, 0, offset aSelectStructur, \ ; \=Select structure\=
      0, 0>	; 0
dword_521BE8	dd 1			; DATA XREF: .text:0042B853o
		dd 2
		dd 3
		dd 4
		dd 5
		dd 8
		dd 0Ah
		dd 0Ch
		dd 10h
		dd 20h
		dd 40h
		dd 80h
		dd 100h
		dd 200h
		dd 400h
		dd 800h
		dd 1000h
; t_control stru_521C2C
stru_521C2C	t_control <5, 0FFFFFFFFh, 4, 7, 1Eh, 9, 0, offset aFloat_3, 0, 0>; 0
					; \=Float\=
		t_control <0Ch, 459h, 28h, 5, 7Dh, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aFloatingPointR, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 17h, 1Eh, 9, 0, offset aHex_4, 0, 0>; 0 ; \=Hex\=
		t_control <0Eh, 45Dh, 28h, 15h, 7Dh, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aFloatingPoin_0, 0>; 0
		t_control <3Eh, 44Dh, 5, 26h, 64h, 0Ah, offset dword_5BE240, \ ; \=Modify associated tag\=
      offset aModifyAssociat, offset aModifyTagAssoc, 0>; 0
		t_control <12h, 1, 46h, 34h, 2Dh, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 78h, 34h, 2Dh, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0A9h, 46h, 0, offset aEditRegister, 0,\ ; \=Edit register\=
      0>		; 0
; t_control stru_521D6C
stru_521D6C	t_control <4, 0FFFFFFFFh, 1Eh, 4, 42h, 9, 0, offset aHighPart, 0, 0>; 0
					; \=High	part\=
		t_control <4, 0FFFFFFFFh, 64h, 4, 42h, 9, 0, offset aLowPart, 0, 0>; 0 ; \=Low part\=
		t_control <5, 0FFFFFFFFh, 4, 11h, 14h, 9, 0, offset aFloat_3, 0, 0>; 0 ; \=Float\=
		t_control <0Ch, 456h, 1Eh, 0Fh, 42h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aHighPartOf3dno, 0>; 0
		t_control <0Ch, 457h, 64h, 0Fh, 42h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLowPartOf3dnow, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 21h, 14h, 9, 0, offset aHex_4, 0, 0>; 0 ; \=Hex\=
		t_control <0Eh, 45Ah, 1Eh, 1Fh, 42h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aHighPartOf3d_1, 0>; 0
		t_control <0Eh, 45Bh, 64h, 1Fh, 42h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLowPartOf3dn_0, 0>; 0
		t_control <12h, 1, 47h, 32h, 2Dh, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 79h, 32h, 2Dh, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0AAh, 44h, 0, offset aEdit3dnowOpera, \ ; \=Edit 3DNow! operand\=
      0, 0>	; 0
stru_521F24	t_control <5, 0FFFFFFFFh, 4, 7, 1Eh, 9, 0, offset aFloat_3, 0, 0>; 0
					; \=Float\=
		t_control <0Ch, 457h, 28h, 5, 5Fh, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset a32BitFloatin_0, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 17h, 1Eh, 9, 0, offset aHex_4, 0, 0>; 0 ; \=Hex\=
		t_control <0Eh, 45Bh, 28h, 15h, 5Fh, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset a32BitFloatin_2, 0>; 0
		t_control <12h, 1, 28h, 28h, 2Dh, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 5Ah, 28h, 2Dh, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 8Bh, 3Ah, 0, offset aEdit32BitFlo_2, \ ; \=Edit 32-bit float\=
      0, 0>	; 0
stru_52203C	t_control <5, 0FFFFFFFFh, 4, 7, 1Eh, 9, 0, offset aFloat_3, 0, 0>; 0
					; \=Float\=
		t_control <0Ch, 458h, 28h, 5, 73h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset a64BitFloatin_0, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 17h, 1Eh, 9, 0, offset aHex_4, 0, 0>; 0 ; \=Hex\=
		t_control <0Eh, 45Ch, 28h, 15h, 73h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset a64BitFloatin_1, 0>; 0
		t_control <12h, 1, 3Ch, 28h, 2Dh, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 6Eh, 28h, 2Dh, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 9Fh, 3Ah, 0, offset aEdit64BitFlo_0, \ ; \=Edit 64-bit float\=
      0, 0>	; 0
stru_522154	t_control <5, 0FFFFFFFFh, 4, 7, 1Eh, 9, 0, offset aFloat_3, 0, 0>; 0
					; \=Float\=
		t_control <0Ch, 459h, 28h, 5, 7Dh, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset a80BitFloatin_1, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 17h, 1Eh, 9, 0, offset aHex_4, 0, 0>; 0 ; \=Hex\=
		t_control <0Eh, 45Dh, 28h, 15h, 7Dh, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset a80BitFloatin_2, 0>; 0
		t_control <12h, 1, 46h, 28h, 2Dh, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 78h, 28h, 2Dh, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0A9h, 3Ah, 0, offset aEdit80BitFlo_0, \ ; \=Edit 80-bit float\=
      0, 0>	; 0
stru_52226C	t_control <5, 0FFFFFFFFh, 4, 7, 1Eh, 9, 0, offset aFloat_3, 0, 0>; 0
					; \=Float\=
		t_control <0Ch, 459h, 28h, 5, 7Dh, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aFloatingPointN, 0>; 0
		t_control <60h, 45Eh, 5, 19h, 46h, 9, offset dword_5BE6DC, \ ; \=Entire block\=
      offset aEntireBlock, offset aSearchForwar_0, 0>; 0
		t_control <61h, 45Fh, 5, 25h, 46h, 9, offset dword_5BE6DC, \ ; \=Forward\=
      offset aForward, offset aSearchForwardF, 0>;	0
		t_control <62h, 460h, 5, 31h, 46h, 9, offset dword_5BE6DC, \ ; \=Backward\=
      offset aBackward, offset aSearchBackward, 0>; 0
		t_control <3Eh, 464h, 5, 3Dh, 46h, 9, offset dword_5BE228, \ ; \=Aligned search\=
      offset aAlignedSearch, offset aSearchOnlyAtAddressesAlign, \
      0>		; 0
		t_control <2, 0FFFFFFFFh, 50h, 19h, 1Eh, 9, 0, offset aAccuracy, 0, 0>;	0 ; \=Accuracy:\=
		t_control <60h, 461h, 5Ah, 25h, 46h, 9, offset dword_5BE22C, \ ; \=High\=
      offset aHigh, offset aSearchWith1Flo, 0>; 0
		t_control <61h, 462h, 5Ah, 31h, 46h, 9, offset dword_5BE22C, \ ; \=0.01 !%\=
      offset a0_01, offset aSearchWith0_01, 0>; 0
		t_control <62h, 463h, 5Ah, 3Dh, 46h, 9, offset dword_5BE22C, \ ; \=1 !%\=
      offset a0_01+6, offset aSearchWith11_0, 0>; 0
		t_control <12h, 1, 46h, 4Eh, 2Dh, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aStartSearch, 0>; 0
		t_control <11h, 2, 78h, 4Eh, 2Dh, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aCancelSearch, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0A9h, 5Fh, 0, offset aEnterFloatingP, \ ; \=Enter floating-point number to search\=
      0, 0>	; 0
stru_522474	t_control <4, 0FFFFFFFFh, 2Ch, 4, 14h, 9, 0, offset a7, 0, 0>; 0
					; \=7\=
		t_control <4, 0FFFFFFFFh, 44h, 4, 14h, 9, 0, offset a6_1, 0, 0>; 0 ; \=6\=
		t_control <4, 0FFFFFFFFh, 5Ch, 4, 14h, 9, 0, offset a5, 0, 0>; 0 ; \=5\=
		t_control <4, 0FFFFFFFFh, 74h, 4, 14h, 9, 0, offset a4, 0, 0>; 0 ; \=4\=
		t_control <4, 0FFFFFFFFh, 8Ch, 4, 14h, 9, 0, offset a3_1, 0, 0>; 0 ; \=3\=
		t_control <4, 0FFFFFFFFh, 0A4h, 4, 14h, 9, 0, \ ; \=2\=
      offset aTooltips_class+1Eh, 0, 0>; 0
		t_control <4, 0FFFFFFFFh, 0BCh, 4, 14h, 9, 0, offset a1_4, 0, 0>; 0 ; \=1\=
		t_control <4, 0FFFFFFFFh, 0D4h, 4, 14h, 9, 0, offset a32770+0Ah, 0, 0>;	0 ; \=0\=
		t_control <5, 0FFFFFFFFh, 4, 11h, 23h, 9, 0, offset aByte_0, 0, 0>; 0 ;	\=Byte\=
		t_control <0Ch, 4BEh, 2Ch, 0Fh, 14h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aMostSignifican, 0>; 0
		t_control <0Ch, 4BDh, 44h, 0Fh, 14h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aByte6OfMmxOper, 0>; 0
		t_control <0Ch, 4BCh, 5Ch, 0Fh, 14h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aByte5OfMmxOper, 0>; 0
		t_control <0Ch, 4BBh, 74h, 0Fh, 14h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aByte4OfMmxOper, 0>; 0
		t_control <0Ch, 4BAh, 8Ch, 0Fh, 14h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aByte3OfMmxOper, 0>; 0
		t_control <0Ch, 4B9h, 0A4h, 0Fh, 14h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aByte2OfMmxOper, 0>; 0
		t_control <0Ch, 4B8h, 0BCh, 0Fh, 14h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aByte1OfMmxOper, 0>; 0
		t_control <0Ch, 4B7h, 0D4h, 0Fh, 14h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLeastSignifi_1, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 21h, 23h, 9, 0, offset aWord_3, 0, 0>; 0 ;	\=Word\=
		t_control <0Ch, 4B6h, 2Ch, 1Fh, 2Ch, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aMostSignific_0, 0>; 0
		t_control <0Ch, 4B5h, 5Ch, 1Fh, 2Ch, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aWord2OfMmxOper, 0>; 0
		t_control <0Ch, 4B4h, 8Ch, 1Fh, 2Ch, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aWord1OfMmxOper, 0>; 0
		t_control <0Ch, 4B3h, 0BCh, 1Fh, 2Ch, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLeastSignifi_2, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 31h, 23h, 9, 0, offset aDoubleword_0, 0, \ ; \=Doubleword\=
      0>		; 0
		t_control <0Ch, 4B2h, 2Ch, 2Fh, 5Ch, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aHighDoubleword, 0>; 0
		t_control <0Ch, 4B1h, 8Ch, 2Fh, 5Ch, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLowDoublewordO, 0>; 0
		t_control <60h, 4C5h, 2Dh, 40h, 32h, 9, offset dword_5BE244, \ ; \=Hexadecimal\=
      offset aHexadecimal, offset aDisplayDataInH, 0>; 0
		t_control <61h, 4C6h, 2Dh, 4Bh, 32h, 9, offset dword_5BE244, \ ; \=Signed\=
      offset aSigned_1, offset aDisplayDataInS, 0>; 0
		t_control <62h, 4C7h, 2Dh, 56h, 32h, 9, offset dword_5BE244, \ ; \=Unsigned\=
      offset aUnsigned, offset aDisplayDataInU, 0>; 0
		t_control <12h, 1, 89h, 52h, 2Dh, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 0BBh, 52h, 2Dh, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0ECh, 65h, 0, offset aEditMmxOperand, \ ; \=Edit MMX operand\=
      0, 0>	; 0
stru_52294C	t_control <4, 0FFFFFFFFh, 2Ch, 4, 1Ah, 9, 0, offset aFE, 0, 0>;	0
					; \=F - E\=
		t_control <4, 0FFFFFFFFh, 4Ah, 4, 1Ah, 9, 0, offset aD_C, 0, 0>;	0 ; \=D - C\=
		t_control <4, 0FFFFFFFFh, 68h, 4, 1Ah, 9, 0, offset aBA, 0, 0>;	0 ; \=B - A\=
		t_control <4, 0FFFFFFFFh, 86h, 4, 1Ah, 9, 0, offset a98, 0, 0>;	0 ; \=9 - 8\=
		t_control <4, 0FFFFFFFFh, 0A4h, 4, 1Ah, 9, 0, offset a76, 0, 0>; 0 ; \=7	- 6\=
		t_control <4, 0FFFFFFFFh, 0C2h, 4, 1Ah, 9, 0, offset a54, 0, 0>; 0 ; \=5	- 4\=
		t_control <4, 0FFFFFFFFh, 0E0h, 4, 1Ah, 9, 0, offset a32_0, 0, 0>; 0 ; \=3 - 2\=
		t_control <4, 0FFFFFFFFh, 0FEh, 4, 1Ah, 9, 0, offset a10, 0, 0>; 0 ; \=1	- 0\=
		t_control <5, 0FFFFFFFFh, 4, 11h, 23h, 9, 0, offset aWord_3, 0, 0>; 0 ;	\=Word\=
		t_control <0Ch, 526h, 2Ch, 0Fh, 1Ah, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aMostSignific_1, 0>; 0
		t_control <0Ch, 525h, 4Ah, 0Fh, 1Ah, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aWord6OfSseOper, 0>; 0
		t_control <0Ch, 524h, 68h, 0Fh, 1Ah, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aWord5OfSseOper, 0>; 0
		t_control <0Ch, 523h, 86h, 0Fh, 1Ah, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aWord4OfSseOper, 0>; 0
		t_control <0Ch, 522h, 0A4h, 0Fh, 1Ah, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aWord3OfSseOper, 0>; 0
		t_control <0Ch, 521h, 0C2h, 0Fh, 1Ah, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aWord2OfSseOper, 0>; 0
		t_control <0Ch, 520h, 0E0h, 0Fh, 1Ah, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aWord1OfSseOper, 0>; 0
		t_control <0Ch, 51Fh, 0FEh, 0Fh, 1Ah, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLeastSignifi_3, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 21h, 23h, 9, 0, offset aDoubleword_0, 0, \ ; \=Doubleword\=
      0>		; 0
		t_control <0Ch, 51Eh, 2Ch, 1Fh, 38h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aMostSignific_3, 0>; 0
		t_control <0Ch, 51Dh, 68h, 1Fh, 38h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aDoubleword2OfS, 0>; 0
		t_control <0Ch, 51Ch, 0A4h, 1Fh, 38h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aDoubleword1OfS, 0>; 0
		t_control <0Ch, 51Bh, 0E0h, 1Fh, 38h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLeastSignifica, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 31h, 23h, 9, 0, offset aFloat_3, 0, 0>; 0 ; \=Float\=
		t_control <0Ch, 51Ah, 2Ch, 2Fh, 38h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aMostSignific_2, 0>; 0
		t_control <0Ch, 519h, 68h, 2Fh, 38h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aFloat2OfSseOpe, 0>; 0
		t_control <0Ch, 518h, 0A4h, 2Fh, 38h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aFloat1OfSseOpe, 0>; 0
		t_control <0Ch, 517h, 0E0h, 2Fh, 38h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLeastSignifi_0, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 41h, 23h, 9, 0, offset aDouble_1, 0, 0>; 0	; \=Double\=
		t_control <0Ch, 516h, 2Ch, 3Fh, 74h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aHighQuadwordOf, 0>; 0
		t_control <0Ch, 515h, 0A4h, 3Fh, 74h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLowQuadwordOfS, 0>; 0
		t_control <60h, 529h, 2Dh, 50h, 32h, 9, offset dword_5BE244, \ ; \=Hexadecimal\=
      offset aHexadecimal, offset aDisplayInteg_1, 0>; 0
		t_control <61h, 52Ah, 2Dh, 5Bh, 32h, 9, offset dword_5BE244, \ ; \=Signed\=
      offset aSigned_1, offset aDisplayInteger, 0>; 0
		t_control <62h, 52Bh, 2Dh, 66h, 32h, 9, offset dword_5BE244, \ ; \=Unsigned\=
      offset aUnsigned, offset aDisplayInteg_0, 0>; 0
		t_control <12h, 1, 0BAh, 62h, 2Dh, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 0EBh, 62h, 2Dh, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 11Ch, 75h, 0, offset aEditSseOperand, \ ; \=Edit SSE operand\=
      0, 0>	; 0
stru_522EEC	t_control <20h, 57Ah, 4, 8, 0B4h, 96h, 0, offset aOd_empty+0Fh, \
      offset aTypeOrSelectSt, 0>; 0 ; \=\=
		t_control <12h, 1, 58h, 1Dh, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aConfirmSelecti, 0>; 0
		t_control <11h, 2, 8Ch, 1Dh, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aCloseDialog, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0BCh, 30h, 0, offset aEnterString, 0, \ ; \=Enter string\=
      0>		; 0
stru_522F8C	t_control <20h, 57Ah, 4, 8, 0B4h, 96h, 0, offset aOd_empty+0Fh, \
      offset aTypeOrSelectEx, 0>; 0 ; \=\=
		t_control <2, 57Eh, 4, 18h, 0B4h, 0Ch, 0, offset aOd_empty+0Fh, 0, 0>; 0 ; \=\=
		t_control <12h, 1, 58h, 27h, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aConfirmSelecti, 0>; 0
		t_control <11h, 2, 8Ch, 27h, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aCloseDialog, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0BCh, 3Ah, 0, offset aEnterString, 0, \ ; \=Enter string\=
      0>		; 0
stru_523054	t_control <20h, 57Ah, 5, 8, 0D7h, 96h, 0, offset aOd_empty+0Fh, \
      offset aTypeOrSelectSe, 0>; 0 ; \=\=
		t_control <2, 0FFFFFFFFh, 5, 19h, 50h, 9, 0, offset aSearchDirect_0, \ ; \=Search direction:\=
      0, 0>	; 0
		t_control <60h, 57Fh, 14h, 25h, 46h, 9, offset dword_5BE6DC, \ ; \=Entire block\=
      offset aEntireBlock, offset aSearchForwar_0, 0>; 0
		t_control <61h, 580h, 14h, 31h, 46h, 9, offset dword_5BE6DC, \ ; \=Forward\=
      offset aForward, offset aSearchForwardF, 0>;	0
		t_control <62h, 581h, 14h, 3Dh, 46h, 9, offset dword_5BE6DC, \ ; \=Backward\=
      offset aBackward, offset aSearchBackward, 0>; 0
		t_control <3Eh, 583h, 5, 4Bh, 46h, 9, offset dword_5BE230, \ ; \=Ignore case\=
      offset aIgnoreCase_0, offset aIgnoreCaseWhil, 0>; 0
		t_control <12h, 1, 80h, 46h, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aConfirmSelecti, 0>; 0
		t_control <11h, 2, 0B0h, 46h, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aCloseDialog, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0E0h, 59h, 0, offset aEnterSearchStr, \ ; \=Enter search string\=
      0, 0>	; 0
stru_5231BC	t_control <20h, 57Ah, 5, 8, 0D7h, 96h, 0, offset aOd_empty+0Fh, \
      offset aTypeOrSelectEx, 0>; 0 ; \=\=
		t_control <2, 57Eh, 2Ch, 19h, 0B0h, 9, 0, offset aOd_empty+0Fh, 0, 0>; 0 ; \=\=
		t_control <5, 0FFFFFFFFh, 5, 26h, 20h, 9, 0, offset aSearch_1, 0, 0>; 0	; \=Search:\=
		t_control <60h, 57Fh, 2Ah, 26h, 46h, 9, offset dword_5BE6DC, \ ; \=Entire block\=
      offset aEntireBlock, offset aSearchForwar_0, 0>; 0
		t_control <61h, 580h, 2Ah, 32h, 46h, 9, offset dword_5BE6DC, \ ; \=Forward\=
      offset aForward, offset aSearchForwardF, 0>;	0
		t_control <62h, 581h, 2Ah, 3Eh, 46h, 9, offset dword_5BE6DC, \ ; \=Backward\=
      offset aBackward, offset aSearchBackward, 0>; 0
		t_control <12h, 1, 80h, 39h, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aConfirmSelecti, 0>; 0
		t_control <11h, 2, 0B0h, 39h, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aCloseDialog, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0E0h, 4Ch, 0, offset aEnterString, 0, \ ; \=Enter string\=
      0>		; 0
stru_523324	t_control <20h, 57Ah, 5, 8, 0D7h, 96h, 0, offset aOd_empty+0Fh, \
      offset aTypeOrSelectEx, 0>; 0 ; \=\=
		t_control <2, 57Eh, 2Ch, 19h, 0B0h, 9, 0, offset aOd_empty+0Fh, 0, 0>; 0 ; \=\=
		t_control <60h, 57Fh, 5, 26h, 46h, 9, offset dword_5BE6DC, \ ; \=Entire block\=
      offset aEntireBlock, offset aSearchForwar_0, 0>; 0
		t_control <61h, 580h, 5, 32h, 46h, 9, offset dword_5BE6DC, \ ; \=Forward\=
      offset aForward, offset aSearchForwardF, 0>;	0
		t_control <62h, 581h, 5, 3Eh, 46h, 9, offset dword_5BE6DC, \ ; \=Backward\=
      offset aBackward, offset aSearchBackward, 0>; 0
		t_control <3Eh, 582h, 50h, 26h, 46h, 9, offset dword_5BE228, \ ; \=Aligned search\=
      offset aAlignedSearch, offset aSearchOnlyAtAddressesAlign, \
      0>		; 0
		t_control <12h, 1, 80h, 39h, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aConfirmSelecti, 0>; 0
		t_control <11h, 2, 0B0h, 39h, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aCloseDialog, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0E0h, 4Ch, 0, offset aEnterString, 0, \ ; \=Enter string\=
      0>		; 0
stru_52348C	t_control <2, 0FFFFFFFFh, 4, 5, 0BEh, 9, 0, offset aEnterAddressEx, 0,\
      0>		; 0 ; \=Enter address expression:\=
		t_control <20h, 57Ah, 0Eh, 10h, 0E6h, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aTypeOrSelectLa, 0>; 0
		t_control <2, 0FFFFFFFFh, 4, 21h, 0BEh, 9, 0, offset aMatchingLabels, \ ; \=Matching labels:\=
      0, 0>	; 0
		t_control <7Dh, 57Bh, 0Eh, 2Ch, 0E6h, 4Eh, 0, offset ottable, \ ; \=Labels in all modules that match entere\=...
      offset aLabelsInAllMod, 0>; 0
		t_control <2, 57Eh, 0Eh, 7Ch, 0E6h, 0Ch, 0, offset aOd_empty+0Fh, 0, \ ; \=\=
      0>		; 0
		t_control <12h, 1, 76h, 8Bh, 4Ah, 0Fh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aConfirmSelecti, 0>; 0
		t_control <11h, 2, 0C8h, 8Bh, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aCloseDialog, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0F8h, 9Eh, 0, offset aEnterString, 0, \ ; \=Enter string\=
      0>		; 0
stru_5235CC	t_control <2, 0FFFFFFFFh, 5, 0Ah, 78h, 9, 0, offset aExecutableFrom, \
      0, 0>	; 0 ; \=Executable from History:\=
		t_control <13h, 579h, 14h, 16h, 0C3h, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aNameOfTheRecen, 0>; 0
		t_control <2, 0FFFFFFFFh, 5, 29h, 78h, 9, 0, offset aNewArguments, 0, \ ; \=New arguments:\=
      0>		; 0
		t_control <20h, 57Ah, 14h, 35h, 0C3h, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aTypeOrSelect_0, 0>; 0
		t_control <2, 0FFFFFFFFh, 5, 48h, 78h, 9, 0, offset aNewCurrentDire, \ ; \=New current directory:\=
      0, 0>	; 0
		t_control <21h, 57Ch, 14h, 54h, 0B7h, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aTypeOrSelectNe, 0>; 0
		t_control <11h, 57Dh, 0CDh, 54h, 0Ah, 0Ch, 0, offset asc_52A338, \ ; \=!?
      offset aBrowseForCurre, 0>; 0
		t_control <12h, 1, 7Ah, 6Eh, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aConfirmSelecti, 0>; 0
		t_control <11h, 2, 0ABh, 6Eh, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aCloseDialog, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0DCh, 80h, 0, offset aEnterNewComm_0, \ ; \=Enter new command line arguments\=
      0, 0>	; 0
stru_52375C	t_control <5, 0FFFFFFFFh, 4, 9, 23h, 9, 0, offset aDrive, 0, 0>; 0
					; \=Drive\=
		t_control <13h, 641h, 2Ah, 7, 1Ch, 0C8h, 0, 0, offset aSelectLocalDri,\ ; \=Select local drive\=
      0>		; 0
		t_control <5, 0FFFFFFFFh, 4, 1Ah, 23h, 9, 0, offset aVolumeName, 0, 0>;	0 ; \=Volume name\=
		t_control <0Dh, 642h, 2Ah, 18h, 26h, 0Ch, 0, 0, \ ; \=Volume name of the selected disk\=
      offset aVolumeNameOfTh, 0>; 0
		t_control <5, 0FFFFFFFFh, 4, 2Bh, 23h, 9, 0, offset aFileSystem, 0, 0>;	0 ; \=File system\=
		t_control <0Dh, 643h, 2Ah, 29h, 26h, 0Ch, 0, 0, \ ; \=File system on the selected disk\=
      offset aFileSystemOnTh, 0>; 0
		t_control <5, 0FFFFFFFFh, 49h, 9, 14h, 9, 0, offset aOffset_1, 0, 0>; 0	; \=Offset\=
		t_control <0Ch, 644h, 60h, 7, 37h, 0Ch, 0, 0, offset aOffsetInBytes, \ ; \=Offset in bytes\=
      0>		; 0
		t_control <0Ch, 645h, 60h, 18h, 37h, 0Ch, 0, 0, \ ; \=Offset in sectors\=
      offset aOffsetInSector, 0>; 0
		t_control <0Ch, 646h, 60h, 29h, 37h, 0Ch, 0, 0, \ ; \=Offset in clusters\=
      offset aOffsetInCluste, 0>; 0
		t_control <5, 0FFFFFFFFh, 9Ah, 9, 14h, 9, 0, offset aSize, 0, 0>; 0 ; \=Size\=
		t_control <0Ch, 647h, 0B1h, 7, 23h, 0Ch, 0, 0, offset aSizeInBytes, 0>;	0 ; \=Size in bytes\=
		t_control <0Ch, 648h, 0B1h, 18h, 23h, 0Ch, 0, 0, \ ; \=Size in sectors\=
      offset aSizeInSectors, 0>; 0
		t_control <0Ch, 649h, 0B1h, 29h, 23h, 0Ch, 0, 0, \ ; \=Size in clusters\=
      offset aSizeInClusters, 0>; 0
		t_control <2, 0FFFFFFFFh, 0D7h, 9, 1Eh, 9, 0, \ ; \=bytes\=
      offset aOffsetInBytes+14h, 0, 0>; 0
		t_control <2, 0FFFFFFFFh, 0D7h, 1Ah, 1Eh, 9, 0, \ ; \=sectors\=
      offset aOffsetInSector+14h, 0, 0>; 0
		t_control <2, 0FFFFFFFFh, 0D7h, 2Bh, 1Eh, 9, 0, \ ; \=clusters\=
      offset aOffsetInCluste+14h, 0, 0>; 0
		t_control <12h, 1, 9Ah, 4Bh, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aDumpSpecifiedE, 0>; 0
		t_control <11h, 2, 0CAh, 4Bh, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aCloseDialog, 0>; 0
		t_control <2, 64Ah, 60h, 3Ah, 96h, 0Ch, 0, offset aOd_empty+0Fh, 0, 0>;	0 ; \=\=
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 5Eh, 0, offset aDriveExtent, 0, \ ; \=Drive extent\=
      0>		; 0
stru_523AA4	t_control <5, 6A5h, 4, 0Ah, 21h, 9, 0, offset aOd_empty+0Fh, 0, 0>; 0
					; \=\=
		t_control <20h, 6A6h, 2Ah, 8, 0B2h, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aTypeOrSelect_1, 0>; 0
		t_control <2, 6A7h, 44h, 18h, 98h, 9, 0, offset aOd_empty+0Fh, 0, 0>; 0	; \=\=
		t_control <3Eh, 6A8h, 5, 18h, 3Ch, 0Ch, offset dword_5BE238, \ ; \=Keep size\=
      offset aKeepSize, offset aDonTModifyCode, 0>; 0
		t_control <3Eh, 6A9h, 5, 26h, 3Ch, 0Ch, offset dword_5BE6B4, \ ; \=Fill rest with NOPs\=
      offset aFillRestWithNo, offset aIfNewCommandIs, 0>; 0
		t_control <12h, 1, 80h, 23h, 2Ch, 0Fh, 0, offset aAssemble_0, \ ; \=Assemble\=
      offset aAddTypedComman, 0>; 0
		t_control <11h, 2, 0B0h, 23h, 2Ch, 0Fh, 0, offset aClose_1, \ ; \=Close dialog\=
      offset aCloseDialog, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0E0h, 36h, 0, offset aAssemble_0, 0, \ ; \=Assemble\=
      0>		; 0
stru_523BE4	t_control <20h, 709h, 5, 8, 0D7h, 96h, 0, offset aOd_empty+0Fh, \
      offset aCommandSearchP, 0>; 0 ; \=\=
		t_control <2, 70Dh, 7, 18h, 0D5h, 9, 0, offset aOd_empty+0Fh, 0, 0>; 0 ; \=\=
		t_control <12h, 1, 80h, 24h, 2Ch, 0Fh, 0, offset aSearch_2, \ ; \=Start search\=
      offset aStartSearch, 0>; 0
		t_control <11h, 2, 0B0h, 24h, 2Ch, 0Fh, 0, offset aClose_1, \ ; \=Close dialog\=
      offset aCloseDialog, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0E0h, 37h, 0, offset aCommandSearch, \ ; \=Command search\=
      0, 0>	; 0
stru_523CAC	t_control <20h, 709h, 5, 8, 0D7h, 96h, 0, offset aOd_empty+0Fh, \
      offset aCommandSearchP, 0>; 0 ; \=\=
		t_control <2, 70Dh, 2Ch, 19h, 0B0h, 9, 0, offset aOd_empty+0Fh, 0, 0>; 0 ; \=\=
		t_control <5, 0FFFFFFFFh, 5, 26h, 20h, 9, 0, offset aSearch_1, 0, 0>; 0	; \=Search:\=
		t_control <60h, 70Ah, 2Ah, 26h, 46h, 9, offset dword_5BE6DC, \ ; \=Entire block\=
      offset aEntireBlock, offset aSearchForwar_0, 0>; 0
		t_control <61h, 70Bh, 2Ah, 32h, 46h, 9, offset dword_5BE6DC, \ ; \=Forward\=
      offset aForward, offset aSearchForwardF, 0>;	0
		t_control <62h, 70Ch, 2Ah, 3Eh, 46h, 9, offset dword_5BE6DC, \ ; \=Backward\=
      offset aBackward, offset aSearchBackward, 0>; 0
		t_control <12h, 1, 80h, 39h, 2Ch, 0Fh, 0, offset aSearch_2, \ ; \=Start search\=
      offset aStartSearch, 0>; 0
		t_control <11h, 2, 0B0h, 39h, 2Ch, 0Fh, 0, offset aClose_1, \ ; \=Close dialog\=
      offset aCloseDialog, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0E0h, 4Ch, 0, offset aCommandSearch, \ ; \=Command search\=
      0, 0>	; 0
stru_523E14	t_control <2, 0FFFFFFFFh, 5, 9, 28h, 8, 0, offset aCommands, 0, 0>; 0
					; \=Commands:\=
		t_control <0Fh, 76Dh, 28h, 8, 0CDh, 50h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterTheSequen, 0>; 0
		t_control <2, 76Eh, 28h, 5Eh, 0CDh, 9, 0, offset aOd_empty+0Fh, 0, 0>; 0 ; \=\=
		t_control <2, 0FFFFFFFFh, 5, 6Ah, 28h, 8, 0, offset aOptions_0, 0, 0>; 0 ; \=Options:\=
		t_control <3Eh, 76Fh, 28h, 6Ah, 50h, 0Ah, offset dword_5BE6E0, \ ; \=Allow intermediate commands\=
      offset aAllowIntermedi, offset aAllowCommandsT, 0>; 0
		t_control <3Eh, 770h, 28h, 76h, 50h, 0Ah, offset dword_5BE6E4, \ ; \=Allow jumps from outside\=
      offset aAllowJumpsFrom, offset aAllowJumpsAndC, 0>; 0
		t_control <11h, 774h, 0B0h, 6Ah, 20h, 0Eh, 0, offset aPrev, \ ; \=<< Prev\=
      offset aPreviousPatter, 0>; 0
		t_control <11h, 775h, 0D5h, 6Ah, 20h, 0Eh, 0, offset aNext_0, \ ; \=Next >>\=
			   offset aNextPattern,	0>; 0
		t_control <12h, 1, 97h, 7Eh, 2Ch, 0Fh, 0, offset aSearch_2, \ ; \=Start search\=
      offset aStartSearch, 0>; 0
		t_control <11h, 2, 0C9h, 7Eh, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aCloseDialog, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 92h, 0, offset aSearchForTheSe, \ ; \=Search for the sequence of commands\=
      0, 0>	; 0
stru_523FCC	t_control <2, 0FFFFFFFFh, 5, 9, 28h, 8, 0, offset aCommands, 0, 0>; 0
					; \=Commands:\=
		t_control <0Fh, 76Dh, 28h, 8, 0CDh, 50h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aEnterTheSequen, 0>; 0
		t_control <2, 76Eh, 28h, 5Eh, 0CDh, 9, 0, offset aOd_empty+0Fh, 0, 0>; 0 ; \=\=
		t_control <2, 0FFFFFFFFh, 5, 6Ah, 28h, 8, 0, offset aOptions_0, 0, 0>; 0 ; \=Options:\=
		t_control <3Eh, 76Fh, 28h, 6Ah, 50h, 0Ah, offset dword_5BE6E0, \ ; \=Allow intermediate commands\=
      offset aAllowIntermedi, offset aAllowCommandsT, 0>; 0
		t_control <3Eh, 770h, 28h, 76h, 50h, 0Ah, offset dword_5BE6E4, \ ; \=Allow jumps from outside\=
      offset aAllowJumpsFrom, offset aAllowJumpsAndC, 0>; 0
		t_control <2, 0FFFFFFFFh, 5, 86h, 23h, 8, 0, offset aSearch_1, 0, 0>; 0	; \=Search:\=
		t_control <60h, 771h, 28h, 86h, 46h, 9, offset dword_5BE6DC, \ ; \=Entire block\=
      offset aEntireBlock, offset aSearchForwar_0, 0>; 0
		t_control <61h, 772h, 28h, 92h, 46h, 9, offset dword_5BE6DC, \ ; \=Forward\=
      offset aForward, offset aSearchForwardF, 0>;	0
		t_control <62h, 773h, 28h, 9Eh, 46h, 9, offset dword_5BE6DC, \ ; \=Backward\=
      offset aBackward, offset aSearchBackward, 0>; 0
		t_control <11h, 774h, 0B0h, 6Ah, 20h, 0Eh, 0, offset aPrev, \ ; \=<< Prev\=
      offset aPreviousPatter, 0>; 0
		t_control <11h, 775h, 0D5h, 6Ah, 20h, 0Eh, 0, offset aNext_0, \ ; \=Next >>\=
			   offset aNextPattern,	0>; 0
		t_control <12h, 1, 97h, 99h, 2Ch, 0Fh, 0, offset aSearch_2, \ ; \=Start search\=
      offset aStartSearch, 0>; 0
		t_control <11h, 2, 0C9h, 99h, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aCloseDialog, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 0AEh, 0, offset aSearchForTheSe,\ ; \=Search for the sequence of commands\=
      0, 0>	; 0
stru_524224	t_control <2, 7D1h, 5, 0Ah, 24h, 8, 0, 0, 0, 0>; 0
		t_control <7Dh, 7D2h, 2Ah, 8, 0C6h, 0Ch, 0, offset aAstring, \ ; \=ASTRING\=
      offset aEnterSearchP_0, 0>; 0
		t_control <2, 7D3h, 5, 1Ch, 24h, 8, 0, 0, 0, 0>; 0
		t_control <7Dh, 7D4h, 2Ah, 18h, 0C6h, 0Eh, 0, offset aAstring, \ ; \=ASTRING\=
      offset aEnterSearchP_1, 0>; 0
		t_control <2, 0FFFFFFFFh, 5, 2Eh, 24h, 8, 0, offset aUnicode_5, 0, 0>; 0 ; \=UNICODE\=
		t_control <7Dh, 7D5h, 2Ah, 2Ah, 0C6h, 0Eh, 0, offset aAstring, \ ; \=ASTRING\=
      offset aEnterSearchP_2, 0>; 0
		t_control <2, 7D7h, 5, 3Eh, 24h, 8, 0, offset aHex_2, 0, 0>; 0 ; \=HEX\=
		t_control <7Dh, 7D6h, 2Ah, 3Ch, 0C6h, 31h, 0, offset aAstring, \ ; \=ASTRING\=
      offset aEnterSearchP_3, 0>; 0
		t_control <11h, 7D9h, 5, 5Ah, 16h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aTogglesDataEnt, 0>; 0
		t_control <5, 0FFFFFFFFh, 5, 72h, 20h, 8, 0, offset aSearch_1, 0, 0>; 0	; \=Search:\=
		t_control <60h, 7DBh, 2Ah, 72h, 3Ch, 9, offset dword_5BE6DC, \ ; \=Entire block\=
      offset aEntireBlock, offset aSearchForwar_0, 0>; 0
		t_control <61h, 7DCh, 2Ah, 7Eh, 3Ch, 9, offset dword_5BE6DC, \ ; \=Forward\=
      offset aForward, offset aSearchForwardF, 0>;	0
		t_control <62h, 7DDh, 2Ah, 8Ah, 3Ch, 9, offset dword_5BE6DC, \ ; \=Backward\=
      offset aBackward, offset aSearchBackward, 0>; 0
		t_control <3Eh, 7DEh, 6Eh, 72h, 46h, 9, offset dword_5BE230, \ ; \=Ignore case\=
      offset aIgnoreCase_0, offset aIgnoreCaseDoes, 0>; 0
		t_control <11h, 7DFh, 0ABh, 71h, 20h, 0Eh, 0, offset aPrev, \ ; \=<< Prev\=
      offset aPreviousPatter, 0>; 0
		t_control <11h, 7E0h, 0D0h, 71h, 20h, 0Eh, 0, offset aNext_0, \ ; \=Next >>\=
			   offset aNextPattern,	0>; 0
		t_control <12h, 1, 92h, 84h, 2Ch, 0Fh, 0, offset aSearch_2, \ ; \=Start search\=
      offset aStartSearch, 0>; 0
		t_control <11h, 2, 0C4h, 84h, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aCloseDialog, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0F4h, 97h, 0, offset aSearchForData, \ ; \=Search for data\=
      0, 0>	; 0
stru_52451C	t_control <2, 7D1h, 5, 0Ah, 24h, 8, 0, 0, 0, 0>; 0
		t_control <7Dh, 7D2h, 2Ah, 8, 0C6h, 0Ch, 0, offset aAstring, \ ; \=ASTRING\=
      offset aEnterSearchP_0, 0>; 0
		t_control <2, 7D3h, 5, 1Ch, 24h, 8, 0, 0, 0, 0>; 0
		t_control <7Dh, 7D4h, 2Ah, 18h, 0C6h, 0Eh, 0, offset aAstring, \ ; \=ASTRING\=
      offset aEnterSearchP_1, 0>; 0
		t_control <2, 0FFFFFFFFh, 5, 2Eh, 24h, 8, 0, offset aUnicode_5, 0, 0>; 0 ; \=UNICODE\=
		t_control <7Dh, 7D5h, 2Ah, 2Ah, 0C6h, 0Eh, 0, offset aAstring, \ ; \=ASTRING\=
      offset aEnterSearchP_2, 0>; 0
		t_control <2, 7D7h, 5, 3Eh, 24h, 8, 0, offset aHex_2, 0, 0>; 0 ; \=HEX\=
		t_control <7Dh, 7D6h, 2Ah, 3Ch, 0C6h, 31h, 0, offset aAstring, \ ; \=ASTRING\=
      offset aEnterSearchP_3, 0>; 0
		t_control <11h, 7D9h, 5, 5Ah, 16h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aTogglesDataEnt, 0>; 0
		t_control <3Eh, 7DEh, 2Ah, 72h, 46h, 9, offset dword_5BE230, \ ; \=Ignore case\=
      offset aIgnoreCase_0, offset aIgnoreCaseDoes, 0>; 0
		t_control <11h, 7DFh, 0ABh, 71h, 20h, 0Eh, 0, offset aPrev, \ ; \=<< Prev\=
      offset aPreviousPatter, 0>; 0
		t_control <11h, 7E0h, 0D0h, 71h, 20h, 0Eh, 0, offset aNext_0, \ ; \=Next >>\=
			   offset aNextPattern,	0>; 0
		t_control <12h, 1, 92h, 84h, 2Ch, 0Fh, 0, offset aSearch_2, \ ; \=Start search\=
      offset aStartSearch, 0>; 0
		t_control <11h, 2, 0C4h, 84h, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aCloseDialog, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0F4h, 97h, 0, offset aSearchForData, \ ; \=Search for data\=
      0, 0>	; 0
stru_524774	t_control <2, 7D1h, 5, 0Ah, 24h, 8, 0, 0, 0, 0>; 0
		t_control <7Dh, 7D2h, 2Ah, 8, 0C6h, 0Ch, 0, offset aAstring, \ ; \=ASTRING\=
      offset aEditDataAsAsci, 0>; 0
		t_control <2, 7D3h, 5, 1Ch, 24h, 8, 0, 0, 0, 0>; 0
		t_control <7Dh, 7D4h, 2Ah, 18h, 0C6h, 0Eh, 0, offset aAstring, \ ; \=ASTRING\=
      offset aEditDataAsMult, 0>; 0
		t_control <2, 0FFFFFFFFh, 5, 2Eh, 24h, 8, 0, offset aUnicode_5, 0, 0>; 0 ; \=UNICODE\=
		t_control <7Dh, 7D5h, 2Ah, 2Ah, 0C6h, 0Eh, 0, offset aAstring, \ ; \=ASTRING\=
      offset aEditDataAsUnic, 0>; 0
		t_control <2, 7D7h, 5, 3Eh, 24h, 8, 0, offset aHex_2, 0, 0>; 0 ; \=HEX\=
		t_control <7Dh, 7D6h, 2Ah, 3Ch, 0C6h, 31h, 0, offset aAstring, \ ; \=ASTRING\=
      offset aEditDataInHexa, 0>; 0
		t_control <11h, 7D9h, 5, 61h, 16h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aTogglesEditing, 0>; 0
		t_control <3Eh, 7DAh, 5, 75h, 50h, 0Ch, offset dword_5BE238, \ ; \=Keep size\=
      offset aKeepSize, offset aDoNotExtendSiz, 0>; 0
		t_control <12h, 1, 92h, 73h, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aApplyModificat, 0>; 0
		t_control <11h, 2, 0C4h, 73h, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardModific, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0F4h, 86h, 0, offset aEditData, 0, 0>; 0 ; \=Edit data\=
stru_52497C	t_menu <offset aUndo, offset aUndoModifica_1, 0FAh, offset loc_427D94,\
   0, <0>>		; 0 ; \=\AUndo\=
		t_menu <offset aCuT, offset aCutSelectionTo, 0CDh, offset loc_427EDC, \
   0, <0>>		; 1
		t_menu <offset aCopy, offset aCopySelectio_0, 0CBh, offset loc_427EDC,\
   0, <1>>		; 2
		t_menu <offset aPaste, offset aInsertContents, 0CEh, \
   offset loc_427F54, 0, <0>>; 3
		t_menu <offset aSelectAll_0, offset aSelectAllData, 103h, \
   offset loc_427FBC, 0, <0>>; 4
		t_menu <offset aZeroSelection, offset aSetSelectedByt, 1F6h, \
   offset loc_428014, 0, <0>>; 5
		t_menu	<0>
off_524A24	dd offset aOd_empty+0Fh	; DATA XREF: .text:004310A2o
					; \=\=
		dd offset aAssumedByExpre ; \=Assumed by	expression\=
		dd offset aBool_0	; \=BOOL\=
		dd offset aBooleanValueTr ; \=Boolean value \{TRUE/FALSE\}\=
		dd offset aHwnd		; \=HWND\=
		dd offset aWindowHandle	; \=Window handle\=
		dd offset aWm_xa	; \=WM_XA\=
		dd offset aMessageCodeWm_ ; \=Message code \{WM_xxx\}\=
; wchar_t *off_524A44
off_524A44	dd offset aOd_empty+0Fh	; DATA XREF: .text:loc_430FC3r
					; \=\=
off_524A48	dd offset aAutomatic	; DATA XREF: .text:0043112Ao
					; \=Automatic\=
		dd offset a_intern__win_1 ; \=_INTERN_.WINPROCA\=
		dd offset aWinprocaHwndMs ; \=WinProcA \{hWnd,Msg,wParam,lParam\}\=
		dd offset a_intern__win_2 ; \=_INTERN_.WINPROCW\=
		dd offset aWinprocwHwndMs ; \=WinProcW \{hWnd,Msg,wParam,lParam\}\=
		dd offset a_intern__fmt0a; 0 ; \=_INTERN_.Fmt0A\=
		dd offset aFormat1aFormat; 0 ; \=Format1A \{format,...\}\=
		dd offset a_intern__fmt0w; 0 ; \=_INTERN_.Fmt0W\=
		dd offset aFormat1wFormat; 0 ; \=Format1W \{format,...\}\=
		dd offset a_intern__fmt1a; 0 ; \=_INTERN_.Fmt1A\=
		dd offset aFormat2aArg1Fo; 0 ; \=Format2A \{Arg1,format,...\}\=
		dd offset a_intern__fmt1w; 0 ; \=_INTERN_.Fmt1W\=
		dd offset aFormat2wArg1Fo; 0 ; \=Format2W \{Arg1,format,...\}\=
		dd offset a_intern__fmt2a; 0 ; \=_INTERN_.Fmt2A\=
		dd offset aFormat3aArg1Ar; 0 ; \=Format3A \{Arg1,Arg2,format,...\}\=
		dd offset a_intern__fmt2w; 0 ; \=_INTERN_.Fmt2W\=
		dd offset aFormat3wArg1Ar; 0 ; \=Format3W \{Arg1,Arg2,format,...\}\=
		dd offset a_intern__fmt3a; 0 ; \=_INTERN_.Fmt3A\=
		dd offset aFormat4aArg1Ar; 0 ; \=Format4A \{Arg1,Arg2,Arg3,format,...\}\=
		dd offset a_intern__fmt3w; 0 ; \=_INTERN_.Fmt3W\=
		dd offset aFormat4wArg1Ar; 0 ; \=Format4W \{Arg1,Arg2,Arg3,format,...\}\=
		dd offset a_intern__fn1	; 0 ; \=_INTERN_.Fn1\=
		dd offset aGeneric1Arg1	; 0 ; \=Generic1	\{Arg1\}\=
		dd offset a_intern__fn2	; 0 ; \=_INTERN_.Fn2\=
		dd offset aGeneric2Arg1Ar; 0 ; \=Generic2 \{Arg1,Arg2\}\=
		dd offset a_intern__fn3	; 0 ; \=_INTERN_.Fn3\=
		dd offset aGeneric3Arg1Ar; 0 ; \=Generic3 \{Arg1,Arg2,Arg3\}\=
		dd offset a_intern__fn4	; 0 ; \=_INTERN_.Fn4\=
		dd offset aGeneric4Arg1Ar; 0 ; \=Generic4 \{Arg1,Arg2,Arg3,Arg4\}\=
		dd offset a_intern__fn5	; 0 ; \=_INTERN_.Fn5\=
		dd offset aGeneric5Arg1Ar; 0 ; \=Generic5 \{Arg1,Arg2,Arg3,Arg4,Arg5\}\=
		dd offset a_intern__fn6	; 0 ; \=_INTERN_.Fn6\=
		dd offset aGeneric6Arg1Ar; 0 ; \=Generic6 \{Arg1,Arg2,Arg3,Arg4,Arg5,Arg6\=...
		dd offset a_intern__fn7	; 0 ; \=_INTERN_.Fn7\=
		dd offset aGeneric7Arg1Ar; 0 ; \=Generic7 \{Arg1,Arg2,Arg3,Arg4,Arg5,Arg6\=...
		dd offset a_intern__fn8	; 0 ; \=_INTERN_.Fn8\=
		dd offset aGeneric8Arg1Ar; 0 ; \=Generic8 \{Arg1,Arg2,Arg3,Arg4,Arg5,Arg6\=...
		dd offset a_intern__seh	; 0 ; \=_INTERN_.SEH\=
		dd offset aStructuredExce; 0 ; \=Structured Exception Handler\=
		dd offset a_intern__veh_1; 0 ; \=_INTERN_.VEH\=
		dd offset aVectoredExcept; 0 ; \=Vectored Exception Handler\=
stru_524AEC	t_control <2, 0FFFFFFFFh, 5, 5, 32h, 8, 0, offset aCondition, 0, 0>; 0
					; \=Condition:\=
		t_control <20h, 834h, 5, 0Fh, 0C9h, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aSetCondition_1, 0>; 0
		t_control <3Eh, 847h, 6, 23h, 3Ch, 0Ah, 0, offset aDisabled_0, \ ; \=Disabled\=
      offset aDeactivateBrea, 0>; 0
		t_control <2, 848h, 46h, 23h, 86h, 0Ah, 0, offset aOd_empty+0Fh, 0, 0>;	0 ; \=\=
		t_control <12h, 1, 70h, 30h, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aSetBreakpoint, 0>; 0
		t_control <11h, 2, 0A2h, 30h, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDoNothing, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0D2h, 43h, 0, offset aSetBreakpoint, \ ; \=Set breakpoint\=
      0, 0>	; 0
stru_524C04	t_control <2, 0FFFFFFFFh, 5, 5, 32h, 8, 0, offset aCondition, 0, 0>; 0
					; \=Condition:\=
		t_control <20h, 834h, 5, 0Fh, 0F1h, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aSetCondition_1, 0>; 0
		t_control <2, 0FFFFFFFFh, 5, 1Fh, 96h, 8, 0, offset aExpressionsNam, \ ; \=Expressions \{name=expr, name=expr...\}:\=
      0, 0>	; 0
		t_control <21h, 835h, 5, 29h, 0F1h, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aExpressionsToP, 0>; 0
		t_control <5, 0FFFFFFFFh, 5, 3Fh, 55h, 8, 0, offset aDecodeExpressi, \ ; \=Decode expressions as:\=
      0, 0>	; 0
		t_control <13h, 836h, 5Fh, 3Dh, 97h, 0FAh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aSelectHowToDec, 0>; 0
		t_control <5, 0FFFFFFFFh, 5, 53h, 55h, 8, 0, offset aAssumeFunction, \ ; \=Assume function of type:\=
      0, 0>	; 0
		t_control <13h, 837h, 5Fh, 51h, 97h, 0FAh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aSelectPredefin, 0>; 0
		t_control <4, 0FFFFFFFFh, 50h, 6Dh, 20h, 8, 0, offset aNever, 0, 0>; 0 ; \=Never\=
		t_control <4, 0FFFFFFFFh, 71h, 6Dh, 20h, 8, 0, offset aOnCondition, 0,\ ; \=On condition\=
      0>		; 0
		t_control <4, 0FFFFFFFFh, 92h, 6Dh, 20h, 8, 0, offset aAlways, 0, 0>; 0	; \=Always\=
		t_control <5, 0FFFFFFFFh, 7, 7Ch, 46h, 8, 0, offset aPauseProgram, 0, \ ; \=Pause program:\=
      0>		; 0
		t_control <60h, 838h, 5Dh, 7Bh, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aNeverPauseOnTh, 0>; 0
		t_control <61h, 839h, 7Eh, 7Bh, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aPauseOnThisBre, 0>; 0
		t_control <62h, 83Ah, 9Fh, 7Bh, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aAlwaysPauseOnT, 0>; 0
		t_control <5, 0FFFFFFFFh, 7, 8Bh, 46h, 8, 0, offset aLogValueOfExpr, \ ; \=Log value of expressions:\=
      0, 0>	; 0
		t_control <60h, 83Bh, 5Dh, 8Ah, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aNeverLogValues, 0>; 0
		t_control <61h, 83Ch, 7Eh, 8Ah, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLogValuesOfE_0, 0>; 0
		t_control <62h, 83Dh, 9Fh, 8Ah, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aAlwaysLogValue, 0>; 0
		t_control <5, 0FFFFFFFFh, 7, 9Ah, 46h, 8, 0, offset aLogFunctionArg, \ ; \=Log function arguments:\=
      0, 0>	; 0
		t_control <60h, 83Eh, 5Dh, 99h, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aNeverLogFuncti, 0>; 0
		t_control <61h, 83Fh, 7Eh, 99h, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLogFunctionA_0, 0>; 0
		t_control <62h, 840h, 9Fh, 99h, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aAlwaysLogFunct, 0>; 0
		t_control <5, 0FFFFFFFFh, 7, 0A9h, 46h, 8, 0, offset aLogReturnedVal, \ ; \=Log returned value:\=
      0, 0>	; 0
		t_control <60h, 841h, 5Dh, 0A8h, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aNeverLogValueR, 0>; 0
		t_control <61h, 842h, 7Eh, 0A8h, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLogValueReturn, 0>; 0
		t_control <62h, 843h, 9Fh, 0A8h, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aAlwaysLogVal_0, 0>; 0
		t_control <9, 0FFFFFFFFh, 5, 64h, 0B3h, 58h, 0, offset aOd_empty+0Fh, \ ; \=\=
      0, 0>	; 0
		t_control <2, 0FFFFFFFFh, 0C3h, 6Ch, 31h, 8, 0, offset aPassCountDec_,\ ; \=Pass count \{dec.\}\=
      0, 0>	; 0
		t_control <0Ch, 844h, 0C3h, 76h, 2Dh, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aSkipSpecifiedN, 0>; 0
		t_control <2, 0FFFFFFFFh, 0C3h, 86h, 31h, 8, 0, offset aActualCount, \ ; \=Actual count\=
      0, 0>	; 0
		t_control <0Ch, 845h, 0C3h, 90h, 2Dh, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aNumberOfBreaks, 0>; 0
		t_control <3Eh, 846h, 0C3h, 0A3h, 32h, 0Bh, 0, offset aPeriodical, \ ; \=Periodical\=
      offset aCheckToBreakOn, 0>; 0
		t_control <9, 0FFFFFFFFh, 0BDh, 64h, 39h, 58h, 0, \ ; \=\=
      offset aOd_empty+0Fh, 0, 0>;	0
		t_control <3Eh, 847h, 6, 0C3h, 3Ch, 0Ah, 0, offset aDisabled_0, \ ; \=Disabled\=
      offset aDeactivateBrea, 0>; 0
		t_control <2, 848h, 46h, 0C3h, 86h, 0Ah, 0, offset aOd_empty+0Fh, 0, \ ; \=\=
      0>		; 0
		t_control <12h, 1, 98h, 0D1h, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aSetBreakpoint, 0>; 0
		t_control <11h, 2, 0CAh, 0D1h, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDoNothing, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 0E4h, 0, offset aSetBreakpoint, \ ; \=Set breakpoint\=
      0, 0>	; 0
stru_52521C	t_control <2, 0FFFFFFFFh, 5, 5, 32h, 8, 0, offset aBreakOn, 0, 0>; 0
					; \=Break on:\=
		t_control <3Eh, 834h, 0Ah, 14h, 32h, 0Bh, 0, offset aReadAccess, \ ; \=Read access\=
      offset aBreakWhenMemor, 0>; 0
		t_control <3Eh, 835h, 0Ah, 23h, 32h, 0Bh, 0, offset aWriteAccess, \ ; \=Write access\=
      offset aBreakWhenMem_0, 0>; 0
		t_control <3Eh, 836h, 0Ah, 32h, 32h, 0Bh, 0, offset aExecution, \ ; \=Execution\=
      offset aBreakWhenComma, 0>; 0
		t_control <9, 0FFFFFFFFh, 5, 0Fh, 0F1h, 32h, 0, offset aOd_empty+0Fh, \ ; \=\=
      0, 0>	; 0
		t_control <3Eh, 84Bh, 6, 44h, 32h, 0Ah, 0, offset aDisabled_0, \ ; \=Disabled\=
      offset aDeactivateBrea, 0>; 0
		t_control <2, 84Ch, 46h, 44h, 0A4h, 0Ah, 0, offset aOd_empty+0Fh, 0, \ ; \=\=
      0>		; 0
		t_control <12h, 1, 98h, 51h, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aSetBreakpoint, 0>; 0
		t_control <11h, 2, 0CAh, 51h, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDoNothing, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 64h, 0, offset aSetBreakpoint, \ ; \=Set breakpoint\=
      0, 0>	; 0
stru_5253AC	t_control <2, 0FFFFFFFFh, 5, 5, 32h, 8, 0, offset aBreakOn, 0, 0>; 0
					; \=Break on:\=
		t_control <3Eh, 834h, 0Ah, 14h, 32h, 0Bh, 0, offset aReadAccess, \ ; \=Read access\=
      offset aBreakWhenMemor, 0>; 0
		t_control <3Eh, 835h, 0Ah, 23h, 32h, 0Bh, 0, offset aWriteAccess, \ ; \=Write access\=
      offset aBreakWhenMem_0, 0>; 0
		t_control <3Eh, 836h, 0Ah, 32h, 32h, 0Bh, 0, offset aExecution, \ ; \=Execution\=
      offset aBreakWhenComma, 0>; 0
		t_control <9, 0FFFFFFFFh, 5, 0Fh, 0F1h, 32h, 0, offset aOd_empty+0Fh, \ ; \=\=
      0, 0>	; 0
		t_control <2, 0FFFFFFFFh, 5, 44h, 32h, 8, 0, offset aCondition, 0, 0>; 0 ; \=Condition:\=
		t_control <20h, 83Eh, 5, 4Eh, 0F1h, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aSetCondition_1, 0>; 0
		t_control <2, 0FFFFFFFFh, 5, 5Eh, 96h, 8, 0, offset aExpressionsNam, \ ; \=Expressions \{name=expr, name=expr...\}:\=
      0, 0>	; 0
		t_control <21h, 83Fh, 5, 68h, 0F1h, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aExpressionsToP, 0>; 0
		t_control <5, 0FFFFFFFFh, 5, 7Eh, 55h, 8, 0, offset aDecodeExpressi, \ ; \=Decode expressions as:\=
      0, 0>	; 0
		t_control <13h, 840h, 5Fh, 7Ch, 97h, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aSelectHowToDec, 0>; 0
		t_control <4, 0FFFFFFFFh, 50h, 98h, 20h, 8, 0, offset aNever, 0, 0>; 0 ; \=Never\=
		t_control <4, 0FFFFFFFFh, 71h, 98h, 20h, 8, 0, offset aOnCondition, 0,\ ; \=On condition\=
      0>		; 0
		t_control <4, 0FFFFFFFFh, 92h, 98h, 20h, 8, 0, offset aAlways, 0, 0>; 0	; \=Always\=
		t_control <5, 0FFFFFFFFh, 7, 0A7h, 46h, 8, 0, offset aPauseProgram, 0,\ ; \=Pause program:\=
      0>		; 0
		t_control <60h, 841h, 5Dh, 0A6h, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aNeverPauseOnTh, 0>; 0
		t_control <61h, 842h, 7Eh, 0A6h, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aPauseOnThisBre, 0>; 0
		t_control <62h, 843h, 9Fh, 0A6h, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aAlwaysPauseOnT, 0>; 0
		t_control <5, 0FFFFFFFFh, 7, 0B6h, 46h, 8, 0, offset aLogValueOfExpr, \ ; \=Log value of expressions:\=
      0, 0>	; 0
		t_control <60h, 844h, 5Dh, 0B5h, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aNeverLogValues, 0>; 0
		t_control <61h, 845h, 7Eh, 0B5h, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLogValuesOfE_0, 0>; 0
		t_control <62h, 846h, 9Fh, 0B5h, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aAlwaysLogValue, 0>; 0
		t_control <9, 0FFFFFFFFh, 5, 8Fh, 0B3h, 3Ah, 0, offset aOd_empty+0Fh, \ ; \=\=
      0, 0>	; 0
		t_control <2, 0FFFFFFFFh, 0C3h, 94h, 31h, 8, 0, offset aPassCountDec_,\ ; \=Pass count \{dec.\}\=
      0, 0>	; 0
		t_control <0Ch, 848h, 0C3h, 9Eh, 2Dh, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aSkipSpecifiedN, 0>; 0
		t_control <2, 0FFFFFFFFh, 0C3h, 0ACh, 31h, 8, 0, offset aActualCount, \ ; \=Actual count\=
      0, 0>	; 0
		t_control <0Ch, 849h, 0C3h, 0B6h, 2Dh, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aNumberOfBreaks, 0>; 0
		t_control <3Eh, 84Ah, 0C3h, 0C8h, 32h, 0Bh, 0, offset aPeriodical, \ ; \=Periodical\=
      offset aCheckToBreakOn, 0>; 0
		t_control <9, 0FFFFFFFFh, 0BDh, 8Fh, 39h, 49h, 0, \ ; \=\=
      offset aOd_empty+0Fh, 0, 0>;	0
		t_control <3Eh, 84Bh, 6, 0CFh, 32h, 0Ah, 0, offset aDisabled_0, \ ; \=Disabled\=
      offset aDeactivateBrea, 0>; 0
		t_control <2, 84Ch, 3Ch, 0CFh, 7Ch, 0Ah, 0, offset aOd_empty+0Fh, 0, \ ; \=\=
      0>		; 0
		t_control <12h, 1, 98h, 0DDh, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aSetBreakpoint, 0>; 0
		t_control <11h, 2, 0CAh, 0DDh, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDoNothing, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 0F0h, 0, offset aSetBreakpoint, \ ; \=Set breakpoint\=
      0, 0>	; 0
stru_5258FC	t_control <2, 0FFFFFFFFh, 5, 5, 32h, 8, 0, offset aBreakOn, 0, 0>; 0
					; \=Break on:\=
		t_control <60h, 8FCh, 9, 16h, 32h, 0Bh, 0, offset aExecution, \ ; \=Execution\=
      offset aBreakWhenCom_0, 0>; 0
		t_control <61h, 8FDh, 9, 26h, 32h, 0Bh, 0, offset aAccessRW, \ ; \=Access \{R/W\}\=
      offset aBreakWhenDataI, 0>; 0
		t_control <62h, 8FEh, 9, 36h, 32h, 0Bh, 0, offset aWrite, \ ; \=Write\=
      offset aBreakWhenDat_0, 0>; 0
		t_control <9, 0FFFFFFFFh, 5, 11h, 37h, 46h, 0, offset aOd_empty+0Fh, \ ; \=\=
      0, 0>	; 0
		t_control <2, 0FFFFFFFFh, 41h, 5, 23h, 8, 0, offset aDataSize, 0, 0>; 0	; \=Data	size:\=
		t_control <60h, 8FFh, 45h, 16h, 1Eh, 0Bh, 0, offset aByte_0, \ ; \=Byte\=
      offset aBreakOnlyOnThe, 0>; 0
		t_control <61h, 900h, 45h, 26h, 1Eh, 0Bh, 0, offset aWord_3, \ ; \=Word\=
      offset aBreakpointIs2B, 0>; 0
		t_control <62h, 901h, 45h, 36h, 1Eh, 0Bh, 0, offset aDword, \ ; \=Dword\=
      offset aBreakpointIs4B, 0>; 0
		t_control <9, 0FFFFFFFFh, 41h, 11h, 23h, 46h, 0, offset aOd_empty+0Fh,\ ; \=\=
      0, 0>	; 0
		t_control <2, 0FFFFFFFFh, 69h, 5, 195h, 8, 0, offset aHardwareSlot, 0,\ ; \=Hardware slot:\=
      0>		; 0
		t_control <60h, 906h, 6Dh, 16h, 0Fh, 0Bh, 0, offset a1_4, \ ; \=1\=
      offset aCheckToUseHard, 0>; 0
		t_control <0Dh, 90Ah, 7Eh, 16h, 19h, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCurrentTypeOfH, 0>; 0
		t_control <0Dh, 90Eh, 9Bh, 16h, 56h, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCurrentAddress, 0>; 0
		t_control <61h, 907h, 6Dh, 26h, 0Fh, 0Bh, 0, \ ; \=2\=
      offset aTooltips_class+1Eh, offset aCheckToUseHa_3, 0>; 0
		t_control <0Dh, 90Bh, 7Eh, 26h, 19h, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCurrentTypeO_0, 0>; 0
		t_control <0Dh, 90Fh, 9Bh, 26h, 56h, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCurrentAddre_0, 0>; 0
		t_control <62h, 908h, 6Dh, 36h, 0Fh, 0Bh, 0, offset a3_1, \ ; \=3\=
      offset aCheckToUseHa_0, 0>; 0
		t_control <0Dh, 90Ch, 7Eh, 36h, 19h, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCurrentTypeO_1, 0>; 0
		t_control <0Dh, 910h, 9Bh, 36h, 56h, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCurrentAddre_2, 0>; 0
		t_control <63h, 909h, 6Dh, 46h, 0Fh, 0Bh, 0, offset a4, \ ; \=4\=
      offset aCheckToUseHa_1, 0>; 0
		t_control <0Dh, 90Dh, 7Eh, 46h, 19h, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCurrentTypeO_2, 0>; 0
		t_control <0Dh, 911h, 9Bh, 46h, 56h, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCurrentAddre_3, 0>; 0
		t_control <9, 0FFFFFFFFh, 69h, 11h, 8Dh, 46h, 0, offset aOd_empty+0Fh,\ ; \=\=
      0, 0>	; 0
		t_control <3Eh, 92Dh, 6, 5Eh, 3Ch, 0Ah, 0, offset aDisabled_0, \ ; \=Disabled\=
      offset aDeactivateBrea, 0>; 0
		t_control <12h, 1, 98h, 5Eh, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aSetBreakpoint, 0>; 0
		t_control <11h, 2, 0CAh, 5Eh, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDoNothing, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 71h, 0, offset aSetBreakpoint, \ ; \=Set breakpoint\=
      0, 0>	; 0
stru_525D5C	t_control <2, 0FFFFFFFFh, 5, 5, 32h, 8, 0, offset aBreakOn, 0, 0>; 0
					; \=Break on:\=
		t_control <60h, 8FCh, 9, 16h, 32h, 0Bh, 0, offset aExecution, \ ; \=Execution\=
      offset aBreakWhenCom_0, 0>; 0
		t_control <61h, 8FDh, 9, 26h, 32h, 0Bh, 0, offset aAccessRW, \ ; \=Access \{R/W\}\=
      offset aBreakWhenDataI, 0>; 0
		t_control <62h, 8FEh, 9, 36h, 32h, 0Bh, 0, offset aWrite, \ ; \=Write\=
      offset aBreakWhenDat_0, 0>; 0
		t_control <9, 0FFFFFFFFh, 5, 11h, 37h, 46h, 0, offset aOd_empty+0Fh, \ ; \=\=
      0, 0>	; 0
		t_control <2, 0FFFFFFFFh, 41h, 5, 23h, 8, 0, offset aDataSize, 0, 0>; 0	; \=Data	size:\=
		t_control <60h, 8FFh, 45h, 16h, 1Eh, 0Bh, 0, offset aByte_0, \ ; \=Byte\=
      offset aBreakOnlyOnThe, 0>; 0
		t_control <61h, 900h, 45h, 26h, 1Eh, 0Bh, 0, offset aWord_3, \ ; \=Word\=
      offset aBreakpointIs2B, 0>; 0
		t_control <62h, 901h, 45h, 36h, 1Eh, 0Bh, 0, offset aDword, \ ; \=Dword\=
      offset aBreakpointIs4B, 0>; 0
		t_control <9, 0FFFFFFFFh, 41h, 11h, 23h, 46h, 0, offset aOd_empty+0Fh,\ ; \=\=
      0, 0>	; 0
		t_control <2, 0FFFFFFFFh, 69h, 5, 195h, 8, 0, offset aHardwareSlot, 0,\ ; \=Hardware slot:\=
      0>		; 0
		t_control <60h, 906h, 6Dh, 16h, 0Fh, 0Bh, 0, offset a1_4, \ ; \=1\=
      offset aCheckToUseHard, 0>; 0
		t_control <61h, 907h, 6Dh, 26h, 0Fh, 0Bh, 0, \ ; \=2\=
      offset aTooltips_class+1Eh, offset aCheckToUseHa_3, 0>; 0
		t_control <62h, 908h, 6Dh, 36h, 0Fh, 0Bh, 0, offset a3_1, \ ; \=3\=
      offset aCheckToUseHa_0, 0>; 0
		t_control <63h, 909h, 6Dh, 46h, 0Fh, 0Bh, 0, offset a4, \ ; \=4\=
      offset aCheckToUseHa_1, 0>; 0
		t_control <0Dh, 90Ah, 7Eh, 16h, 19h, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCurrentTypeOfH, 0>; 0
		t_control <0Dh, 90Bh, 7Eh, 26h, 19h, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCurrentTypeO_0, 0>; 0
		t_control <0Dh, 90Ch, 7Eh, 36h, 19h, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCurrentTypeO_1, 0>; 0
		t_control <0Dh, 90Dh, 7Eh, 46h, 19h, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCurrentTypeO_2, 0>; 0
		t_control <0Dh, 90Eh, 9Bh, 16h, 56h, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCurrentAddress, 0>; 0
		t_control <0Dh, 90Fh, 9Bh, 26h, 56h, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCurrentAddre_0, 0>; 0
		t_control <0Dh, 910h, 9Bh, 36h, 56h, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCurrentAddre_2, 0>; 0
		t_control <0Dh, 911h, 9Bh, 46h, 56h, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCurrentAddre_3, 0>; 0
		t_control <9, 0FFFFFFFFh, 69h, 11h, 8Dh, 46h, 0, offset aOd_empty+0Fh,\ ; \=\=
      0, 0>	; 0
		t_control <2, 0FFFFFFFFh, 5, 5Ah, 32h, 8, 0, offset aCondition, 0, 0>; 0 ; \=Condition:\=
		t_control <20h, 91Ah, 5, 64h, 0F1h, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aSetCondition_1, 0>; 0
		t_control <2, 0FFFFFFFFh, 5, 74h, 96h, 8, 0, offset aExpressionsNam, \ ; \=Expressions \{name=expr, name=expr...\}:\=
      0, 0>	; 0
		t_control <21h, 91Bh, 5, 7Eh, 0F1h, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aExpressionsToP, 0>; 0
		t_control <5, 0FFFFFFFFh, 5, 94h, 55h, 8, 0, offset aDecodeExpressi, \ ; \=Decode expressions as:\=
      0, 0>	; 0
		t_control <13h, 91Ch, 5Fh, 92h, 97h, 0FAh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aSelectHowToDec, 0>; 0
		t_control <5, 0FFFFFFFFh, 5, 0A8h, 55h, 8, 0, offset aAssumeFunction, \ ; \=Assume function of type:\=
      0, 0>	; 0
		t_control <13h, 91Dh, 5Fh, 0A6h, 97h, 0FAh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aSelectPredefin, 0>; 0
		t_control <4, 0FFFFFFFFh, 50h, 0C2h, 20h, 8, 0, offset aNever, 0, 0>; 0	; \=Never\=
		t_control <4, 0FFFFFFFFh, 71h, 0C2h, 20h, 8, 0, offset aOnCondition, \ ; \=On condition\=
      0, 0>	; 0
		t_control <4, 0FFFFFFFFh, 92h, 0C2h, 20h, 8, 0, offset aAlways, 0, 0>; 0 ; \=Always\=
		t_control <5, 0FFFFFFFFh, 7, 0D1h, 46h, 8, 0, offset aPauseProgram, 0,\ ; \=Pause program:\=
      0>		; 0
		t_control <60h, 91Eh, 5Dh, 0D0h, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aNeverPauseOnTh, 0>; 0
		t_control <61h, 91Fh, 7Eh, 0D0h, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aPauseOnThisBre, 0>; 0
		t_control <62h, 920h, 9Fh, 0D0h, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aAlwaysPauseOnT, 0>; 0
		t_control <5, 0FFFFFFFFh, 7, 0E0h, 46h, 8, 0, offset aLogValuesOfExp, \ ; \=Log values of expressions:\=
      0, 0>	; 0
		t_control <60h, 921h, 5Dh, 0DFh, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aNeverLogValues, 0>; 0
		t_control <61h, 922h, 7Eh, 0DFh, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLogValuesOfE_0, 0>; 0
		t_control <62h, 923h, 9Fh, 0DFh, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aAlwaysLogValue, 0>; 0
		t_control <5, 0FFFFFFFFh, 7, 0EFh, 46h, 8, 0, offset aLogFunctionArg, \ ; \=Log function arguments:\=
      0, 0>	; 0
		t_control <60h, 924h, 5Dh, 0EEh, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aNeverLogFuncti, 0>; 0
		t_control <61h, 925h, 7Eh, 0EEh, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLogFunctionA_0, 0>; 0
		t_control <62h, 926h, 9Fh, 0EEh, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aAlwaysLogFunct, 0>; 0
		t_control <5, 0FFFFFFFFh, 7, 0FEh, 46h, 8, 0, offset aLogReturnedVal, \ ; \=Log returned value:\=
      0, 0>	; 0
		t_control <60h, 927h, 5Dh, 0FDh, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aNeverLogValueR, 0>; 0
		t_control <61h, 928h, 7Eh, 0FDh, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLogValueReturn, 0>; 0
		t_control <62h, 929h, 9Fh, 0FDh, 0Ch, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aAlwaysLogVal_2, 0>; 0
		t_control <9, 0FFFFFFFFh, 5, 0B9h, 0B3h, 58h, 0, offset aOd_empty+0Fh,\ ; \=\=
      0, 0>	; 0
		t_control <2, 0FFFFFFFFh, 0C3h, 0C1h, 31h, 8, 0, \ ; \=Pass count \{dec.\}\=
      offset aPassCountDec_, 0, 0>; 0
		t_control <0Ch, 92Ah, 0C3h, 0CBh, 2Dh, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aSkipSpecifiedN, 0>; 0
		t_control <2, 0FFFFFFFFh, 0C3h, 0DBh, 31h, 8, 0, offset aCurrentCount,\ ; \=Current count\=
      0, 0>	; 0
		t_control <0Ch, 92Bh, 0C3h, 0E5h, 2Dh, 0Bh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aNumberOfBreaks, 0>; 0
		t_control <3Eh, 92Ch, 0C3h, 0F8h, 32h, 0Bh, 0, offset aPeriodical, \ ; \=Periodical\=
      offset aCheckToBreakOn, 0>; 0
		t_control <9, 0FFFFFFFFh, 0BDh, 0B9h, 39h, 58h, 0, \ ; \=\=
      offset aOd_empty+0Fh, 0, 0>;	0
		t_control <3Eh, 92Dh, 6, 118h, 3Ch, 0Ah, 0, offset aDisabled_0, \ ; \=Disabled\=
      offset aDeactivateBrea, 0>; 0
		t_control <2, 92Eh, 46h, 118h, 86h, 0Ah, 0, offset aOd_empty+0Fh, 0, \ ; \=\=
      0>		; 0
		t_control <12h, 1, 98h, 126h, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aSetBreakpoint, 0>; 0
		t_control <11h, 2, 0CAh, 126h, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDoNothing, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 139h, 0, offset aSetBreakpoint, \ ; \=Set breakpoint\=
      0, 0>	; 0
stru_526734	t_control <2, 0FFFFFFFFh, 5, 5, 0A0h, 8, 0, offset aPauseRunTraceW, 0,\
      0>		; 0 ; \=Pause run trace when any	checked	condit\=...
		t_control <48h, 961h, 10h, 17h, 4Eh, 0Ah, offset rtcond, \ ; \=EIP is in the range\=
      offset aEipIsInTheRa_0, offset aPauseRunTrac_0, 0>; 0
		t_control <0Eh, 962h, 60h, 16h, 2Ch, 0Dh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLowLimitOfInRa, 0>; 0
		t_control <4, 0FFFFFFFFh, 8Ch, 17h, 8, 0Ah, 0, offset a____1, 0, 0>; 0 ; \=...\=
		t_control <0Eh, 963h, 94h, 16h, 2Ch, 0Dh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aHighLimitOfInR, 0>; 0
		t_control <49h, 964h, 10h, 29h, 4Eh, 0Ah, offset rtcond, \ ; \=EIP is outside the range\=
      offset aEipIsOutside_0, offset aPauseRunTrac_2, 0>; 0
		t_control <0Eh, 965h, 60h, 28h, 2Ch, 0Dh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLowLimitOfOutR, 0>; 0
		t_control <4, 0FFFFFFFFh, 8Ch, 29h, 8, 0Ah, 0, offset a____1, 0, 0>; 0 ; \=...\=
		t_control <0Eh, 966h, 94h, 28h, 2Ch, 0Dh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aHighLimitOfOut, 0>; 0
		t_control <4Fh, 967h, 10h, 3Bh, 0BEh, 0Ah, offset rtcond, \ ; \=EIP points to modified command \{backup \=...
      offset aEipPointsToMod, offset aDonTForgetToCr, 0>; 0
		t_control <4Ch, 96Ah, 10h, 4Bh, 4Eh, 0Ah, offset rtcond, \ ; \=Memory range 1 accessed\=
      offset aMemoryRange1Ac, offset aPauseRunTrac_3, 0>; 0
		t_control <0Eh, 96Bh, 60h, 4Ah, 2Ch, 0Dh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLowLimitOfMemo, 0>; 0
		t_control <4, 0FFFFFFFFh, 8Ch, 4Bh, 8, 0Ah, 0, offset a____1, 0, 0>; 0 ; \=...\=
		t_control <0Eh, 96Ch, 94h, 4Ah, 2Ch, 0Dh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aHighLimitOfMem, 0>; 0
		t_control <4, 0FFFFFFFFh, 0C0h, 4Ch, 0Ah, 0Ah, 0, \ ; \=on\=
      offset aDiscardAction+18h, 0, 0>; 0
		t_control <13h, 96Dh, 0CBh, 4Ah, 21h, 40h, offset rtcond + 1ch, \ ; \=Read|Write|R/W\=
      offset aReadWriteRW, offset aTypeOfMemoryAc, 0>; 0
		t_control <4Dh, 96Eh, 10h, 5Dh, 4Eh, 0Ah, offset rtcond, \ ; \=Memory range 2 accessed\=
      offset aMemoryRange2Ac, offset aPauseRunTrac_4, 0>; 0
		t_control <0Eh, 96Fh, 60h, 5Ch, 2Ch, 0Dh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLowLimitOfMe_1, 0>; 0
		t_control <4, 0FFFFFFFFh, 8Ch, 5Dh, 8, 0Ah, 0, offset a____1, 0, 0>; 0 ; \=...\=
		t_control <0Eh, 970h, 94h, 5Ch, 2Ch, 0Dh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aHighLimitOfM_1, 0>; 0
		t_control <4, 0FFFFFFFFh, 0C0h, 5Eh, 0Ah, 0Ah, 0, \ ; \=on\=
      offset aDiscardAction+18h, 0, 0>; 0
		t_control <13h, 971h, 0CBh, 5Ch, 21h, 40h, offset rtcond +20h, \ ; \=Read|Write|R/W\=
      offset aReadWriteRW, offset aTypeOfMemory_0, 0>; 0
		t_control <40h, 97Eh, 10h, 72h, 4Eh, 0Ah, offset rtcond, \ ; \=Condition 1 is true\=
      offset aCondition1IsTr, offset aPauseRunTrac_5, 0>; 0
		t_control <20h, 97Fh, 60h, 72h, 8Ch, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCondition1, 0>; 0
		t_control <41h, 980h, 10h, 84h, 4Eh, 0Ah, offset rtcond, \ ; \=Condition 2 is true\=
      offset aCondition2IsTr, offset aPauseRunTrac_1, 0>; 0
		t_control <21h, 981h, 60h, 84h, 8Ch, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCondition2, 0>; 0
		t_control <42h, 982h, 10h, 96h, 4Eh, 0Ah, offset rtcond, \ ; \=Condition 3 is true\=
      offset aCondition3IsTr, offset aPauseRunTrac_7, 0>; 0
		t_control <22h, 983h, 60h, 96h, 8Ch, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCondition3, 0>; 0
		t_control <43h, 984h, 10h, 0A8h, 4Eh, 0Ah, offset rtcond, \ ; \=Condition 4 is true\=
      offset aCondition4IsTr, offset aPauseRunTrac_8, 0>; 0
		t_control <23h, 985h, 60h, 0A8h, 8Ch, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCondition4, 0>; 0
		t_control <4Ah, 988h, 10h, 0BEh, 4Eh, 0Ah, offset rtcond, \ ; \=Command count is\=
      offset aCommandCountIs, offset aPauseRunTraceA, 0>; 0
		t_control <0Ch, 989h, 60h, 0BDh, 24h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aNumberOfComman, 0>; 0
		t_control <5, 0FFFFFFFFh, 86h, 0BFh, 14h, 0Ah, 0, offset aCurrent, 0, \ ; \=\{Current\=
      0>		; 0
		t_control <0Dh, 98Ah, 9Ch, 0BDh, 24h, 0Ch, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCurrentNumberO, 0>; 0
		t_control <2, 0FFFFFFFFh, 0C2h, 0BFh, 8, 0Ah, 0, offset aSX+0Eh, 0, 0>;	0 ; \=\}\=
		t_control <11h, 98Bh, 0CBh, 0BDh, 20h, 0Ch, 0, offset aReset, \ ; \=Reset\=
      offset aResetNumberOfC, 0>; 0
		t_control <44h, 993h, 10h, 0D2h, 4Eh, 0Ah, offset rtcond, \ ; \=Command is \{1\}\=
      offset aCommandIs1, offset aPauseRunTrac_9, 0>; 0
		t_control <24h, 994h, 60h, 0D2h, 8Ch, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCommand1Pseudo, 0>; 0
		t_control <45h, 995h, 10h, 0E4h, 4Eh, 0Ah, offset rtcond, \ ; \=Pause run trace when command to be exec\=...
      offset aCommandIs2, offset aPauseRunTrac_9, 0>; 0
		t_control <25h, 996h, 60h, 0E4h, 8Ch, 96h, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aCommand2Pseudo, 0>; 0
		t_control <2, 99Ch, 60h, 0F6h, 8Ch, 0Ch, 0, offset aOd_empty+0Fh, 0, \ ; \=\=
      0>		; 0
		t_control <12h, 1, 90h, 104h, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aSetCondition, 0>; 0
		t_control <11h, 2, 0C0h, 104h, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDoNothing, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0F0h, 116h, 0, offset aConditionToPau,\ ; \=Condition to pause run or hit trace\=
      0, 0>	; 0
stru_526E14	t_control <2, 0FFFFFFFFh, 8, 5, 0A0h, 8, 0, offset aProtocolTheFol, 0,\
      0>		; 0 ; \=Protocol	the following commands:\=
		t_control <60h, 9C5h, 8, 14h, 82h, 9, offset rtprot, \ ; \=All commands\=
      offset aAllCommands, offset aProtocolAllCom, 0>; 0
		t_control <61h, 9C6h, 8, 21h, 82h, 9, offset rtprot, \ ; \=Taken jumps, calls, returns and their d\=...
      offset aTakenJumpsCall, offset aProtocolAllCon, 0>; 0
		t_control <62h, 9C7h, 8, 2Eh, 82h, 9, offset rtprot, \ ; \=Call destinations\=
      offset aCallDestinatio, offset aProtocolOnlyEn, 0>; 0
		t_control <63h, 9C8h, 8, 3Bh, 82h, 9, offset rtprot, \ ; \=Commands that access the following memo\=...
      offset aCommandsThatAc, offset aProtocolOnlyCo, 0>; 0
		t_control <40h, 9CEh, 10h, 4Ah, 20h, 0Ah, offset rtprot +4h, \ ; \=Range 1\=
      offset aRange1, offset aProtocolComm_0, 0>; 0
		t_control <0Eh, 9CFh, 33h, 49h, 2Ah, 0Dh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLowLimitOfMemo, 0>; 0
		t_control <4, 0FFFFFFFFh, 5Dh, 4Ah, 8, 0Ah, 0, offset a____1, 0, 0>; 0 ; \=...\=
		t_control <0Eh, 9D0h, 65h, 49h, 2Ah, 0Dh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aHighLimitOfMem, 0>; 0
		t_control <4, 0FFFFFFFFh, 8Fh, 4Bh, 0Ah, 0Ah, 0, \ ; \=on\=
      offset aDiscardAction+18h, 0, 0>; 0
		t_control <13h, 9D1h, 9Ah, 49h, 21h, 40h, offset rtprot +8h, \ ; \=Read|Write|R/W\=
      offset aReadWriteRW, offset aTypeOfMemoryAc, 0>; 0
		t_control <41h, 9D2h, 10h, 5Ch, 20h, 0Ah, offset rtprot.memranges, \ ; \=Range 2\=
      offset aRange2, offset aProtocolComman, 0>; 0
		t_control <0Eh, 9D3h, 33h, 5Bh, 2Ah, 0Dh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aLowLimitOfMe_1, 0>; 0
		t_control <4, 0FFFFFFFFh, 5Dh, 5Ch, 8, 0Ah, 0, offset a____1, 0, 0>; 0 ; \=...\=
		t_control <0Eh, 9D4h, 65h, 5Bh, 2Ah, 0Dh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aHighLimitOfM_1, 0>; 0
		t_control <4, 0FFFFFFFFh, 8Fh, 5Dh, 0Ah, 0Ah, 0, \ ; \=on\=
      offset aDiscardAction+18h, 0, 0>; 0
		t_control <13h, 9D5h, 9Ah, 5Bh, 21h, 40h, offset rtprot + 0ch, \ ; \=Read|Write|R/W\=
      offset aReadWriteRW, offset aTypeOfMemoryAc, 0>; 0
		t_control <3Eh, 9D8h, 8, 72h, 78h, 9, offset rtprot + 20h, \ ; \=Protocol only the following EIP ranges:\=
      offset aProtocolOnlyTh, offset aLimitProtocoll, 0>; 0
		t_control <30h, 9D9h, 12h, 80h, 78h, 4Eh, 0, offset aOd_empty+0Fh, \ ; \=\=
      offset aListOfEipRange, 0>; 0
		t_control <11h, 9DAh, 8Eh, 80h, 2Ch, 0Eh, 0, offset aAddRange_0, \ ; \=Add range\=
      offset aAddRangeOfAddr, 0>; 0
		t_control <11h, 9DBh, 8Eh, 90h, 2Ch, 0Eh, 0, offset aFollowInCpu, \ ; \=Follow in CPU\=
      offset aFollowSelect_6, 0>; 0
		t_control <11h, 9DCh, 8Eh, 0A0h, 2Ch, 0Eh, 0, offset aDeleteRange, \ ; \=Delete range\=
      offset aDeleteSelected, 0>; 0
		t_control <11h, 9DDh, 8Eh, 0B0h, 2Ch, 0Eh, 0, offset aClearList_0, \ ; \=Clear list\=
      offset aDeleteAllRange, 0>; 0
		t_control <3Eh, 9DEh, 8Fh, 0C6h, 2Bh, 0Ah, offset dword_5CBBB0, \ ; \=Symbolic\=
      offset aSymbolic, offset aShowSymbolic_0, 0>; 0
		t_control <2, 9DFh, 8, 0D4h, 8Ch, 0Ch, 0, offset aOd_empty+0Fh, 0, 0>; 0 ; \=\=
		t_control <12h, 1, 5Eh, 0E2h, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aSetProtocollin, 0>; 0
		t_control <11h, 2, 8Eh, 0E2h, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardAllModi, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0BEh, 0F4h, 0, offset aCommandsProtoc,\ ; \=Commands protocolled by run trace\=
      0, 0>	; 0
stru_527274	t_control <40h, 0BB8h, 6, 7, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC, \
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0 ; \=\=
		t_control <41h, 0BB9h, 6, 13h, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC, \ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <42h, 0BBAh, 6, 1Fh, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC, \ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <43h, 0BBBh, 6, 2Bh, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC, \ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <44h, 0BBCh, 6, 37h, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC, \ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <45h, 0BBDh, 6, 43h, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC, \ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <46h, 0BBEh, 6, 4Fh, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC, \ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <47h, 0BBFh, 6, 5Bh, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC, \ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <48h, 0BC0h, 2Eh, 7, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC, \ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <49h, 0BC1h, 2Eh, 13h, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <4Ah, 0BC2h, 2Eh, 1Fh, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <4Bh, 0BC3h, 2Eh, 2Bh, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <4Ch, 0BC4h, 2Eh, 37h, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <4Dh, 0BC5h, 2Eh, 43h, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <4Eh, 0BC6h, 2Eh, 4Fh, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <4Fh, 0BC7h, 2Eh, 5Bh, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <50h, 0BC8h, 56h, 7, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC, \ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <51h, 0BC9h, 56h, 13h, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <52h, 0BCAh, 56h, 1Fh, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <53h, 0BCBh, 56h, 2Bh, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <54h, 0BCCh, 56h, 37h, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <55h, 0BCDh, 56h, 43h, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <56h, 0BCEh, 56h, 4Fh, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <57h, 0BCFh, 56h, 5Bh, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <58h, 0BD0h, 7Eh, 7, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC, \ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <59h, 0BD1h, 7Eh, 13h, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <5Ah, 0BD2h, 7Eh, 1Fh, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <5Bh, 0BD3h, 7Eh, 2Bh, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <5Ch, 0BD4h, 7Eh, 37h, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <5Dh, 0BD5h, 7Eh, 43h, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <5Eh, 0BD6h, 7Eh, 4Fh, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <5Fh, 0BD7h, 7Eh, 5Bh, 0FFFFFFDDh, 0Ah, offset dword_5DC5BC,\ ; \=\=
      offset aOd_empty+0Fh, offset aCheckToAllowDe, 0>; 0
		t_control <12h, 1, 3Fh, 73h, 2Dh, 0Eh, 0, offset aOk_2, \ ; \=OK\=
      offset aAcceptAffinity, 0>; 0
		t_control <11h, 2, 71h, 73h, 2Dh, 0Eh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aDiscardAction, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0A3h, 86h, 0, offset aSelectAffinity, \ ; \=Select affinity mask\=
      0, 0>	; 0
stru_5277EC	t_control <31h, 0C1Dh, 4, 8, 0A4h, 0D4h, 0, offset aOd_empty+0Fh, \
      offset aListOfFoundIte, 0>; 0 ; \=\=
		t_control <12h, 1, 4Ch, 0E2h, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aGoToTheSpecifi, 0>; 0
		t_control <11h, 2, 7Ch, 0E2h, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aGoBackToTheOri, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0ACh, 0F4h, 0, offset aKnownJumpsAndC,\ ; \=Known jumps and calls\=
      0, 0>	; 0
stru_52788C	t_control <31h, 0C1Dh, 4, 8, 0A4h, 0D4h, 0, offset aOd_empty+0Fh, \
      offset aListOfCodeLoca, 0>; 0 ; \=\=
		t_control <12h, 1, 4Ch, 0E2h, 2Ch, 0Fh, 0, offset aOk_2, \ ; \=OK\=
      offset aGoToTheSpecifi, 0>; 0
		t_control <11h, 2, 7Ch, 0E2h, 2Ch, 0Fh, 0, offset aCancel_1, \ ; \=Cancel\=
      offset aCancelCodeBrow, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0ACh, 0F4h, 0, offset aBrowseCodeLoca,\ ; \=Browse code locations\=
      0, 0>	; 0
; const	WCHAR aOd_empty
aOd_empty:				; DATA XREF: .text:00428AF8o
		unicode	0, <OD_EMPTY>,0
; const	WCHAR a32770
a32770:					; DATA XREF: .text:00428B0Fo
					; .data:0052258Co
		unicode	0, <#32770>,0
; wchar_t aSX
aSX:					; DATA XREF: .text:00428E94o
					; .data:00526C84o
		unicode	0, <!%*s \{!%X\}>,0
; const	WCHAR aStatic_0
aStatic_0:				; DATA XREF: .text:00429574o
		unicode	0, <STATIC>,0
; const	WCHAR aButton
aButton:				; DATA XREF: .text:004296BCo
		unicode	0, <BUTTON>,0
; const	WCHAR aEdit_3
aEdit_3:				; DATA XREF: .text:00429759o
		unicode	0, <EDIT>,0
; const	WCHAR aRichedit20w
aRichedit20w:				; DATA XREF: .text:00429821o
		unicode	0, <RichEdit20W>,0
; const	WCHAR a____1
a____1:					; DATA XREF: .text:loc_4298DEo
					; .data:005267ACo ...
		unicode	0, <...>,0
; const	WCHAR aCombobox
aCombobox:				; DATA XREF: .text:0042995Do
		unicode	0, <COMBOBOX>,0
; wchar_t aLangname
aLangname:				; DATA XREF: .text:004299C0o
		unicode	0, <LANGNAME>,0
; const	WCHAR aListbox
aListbox:				; DATA XREF: .text:00429FBFo
		unicode	0, <LISTBOX>,0
; const	WCHAR aTooltips_class
aTooltips_class:			; DATA XREF: .text:0042A3BEo
		unicode	0, <tooltips_class32>,0
; const	WCHAR aDialogPlacemen
aDialogPlacemen:			; DATA XREF: .text:0042A803o
		unicode	0, <Dialog placement>,0
; wchar_t aII
aII:					; DATA XREF: .text:0042A7FAo
		unicode	0, <!%i,!%i>,0
aHexadecimal:				; DATA XREF: .data:00520608o
					; .data:005209A0o ...
		unicode	0, <Hexadecimal>,0
aDoublewordRegi:			; DATA XREF: .data:00520630o
					; .data:005209C8o ...
		unicode	0, <Doubleword register in hexadecimal form>,0
aWordRegisterIn:			; DATA XREF: .data:00520658o
					; .data:005209F0o
		unicode	0, <Word register in hexadecimal form>,0
aHighByteRegist:			; DATA XREF: .data:00520680o
		unicode	0, <High byte register in hexadecimal form>,0
aLowByteRegiste:			; DATA XREF: .data:005206A8o
		unicode	0, <Low byte register in hexadecimal form>,0
aSigned_1:				; DATA XREF: .data:005206D0o
					; .data:00520A18o ...
		unicode	0, <Signed>,0
aDoublewordRe_0:			; DATA XREF: .data:005206F8o
					; .data:00520A40o
		unicode	0, <Doubleword register in signed form>,0
aWordRegister_1:			; DATA XREF: .data:00520720o
					; .data:00520A68o
		unicode	0, <Word register in signed form>,0
aHighByteRegi_1:			; DATA XREF: .data:00520748o
		unicode	0, <High byte register in signed form>,0
aLowByteRegis_1:			; DATA XREF: .data:00520770o
		unicode	0, <Low byte register in signed form>,0
aUnsigned:				; DATA XREF: .data:00520798o
					; .data:00520A90o ...
		unicode	0, <Unsigned>,0
aDoublewordRe_1:			; DATA XREF: .data:005207C0o
					; .data:00520AB8o
		unicode	0, <Doubleword register in unsigned form>,0
aWordRegister_0:			; DATA XREF: .data:005207E8o
					; .data:00520AE0o
		unicode	0, <Word register in unsigned form>,0
aHighByteRegi_2:			; DATA XREF: .data:00520810o
		unicode	0, <High byte register in unsigned form>,0
aLowByteRegis_0:			; DATA XREF: .data:00520838o
		unicode	0, <Low byte register in unsigned form>,0
aCharacter:				; DATA XREF: .data:00520860o
					; .data:00521378o
		unicode	0, <Character>,0
aHighByteRegi_3:			; DATA XREF: .data:00520888o
		unicode	0, <High byte register in character form>,0
aLowByteRegis_3:			; DATA XREF: .data:005208B0o
		unicode	0, <Low byte register in character form>,0
aOk_2:					; DATA XREF: .data:005208D8o
					; .data:00520B08o ...
		unicode	0, <OK>,0
aApplyModificat:			; DATA XREF: .data:005208D8o
					; .data:00520B08o ...
		unicode	0, <Apply modifications>,0
aCancel_1:				; DATA XREF: .data:00520900o
					; .data:00520B30o ...
		unicode	0, <Cancel>,0
aDiscardModific:			; DATA XREF: .data:00520900o
					; .data:00520B30o ...
		unicode	0, <Discard modifications>,0
aEditRegister:				; DATA XREF: .data:00520928o
					; .data:00520B58o ...
		unicode	0, <Edit register>,0
aEnterDataInHex:			; DATA XREF: .data:00520C98o
					; .data:00520E00o ...
		unicode	0, <Enter data in hexadecimal form>,0
aEnterDataInSig:			; DATA XREF: .data:00520CE8o
					; .data:00520E50o
		unicode	0, <Enter data in signed decimal form>,0
aEnterDataInUns:			; DATA XREF: .data:00520D38o
					; .data:00520EA0o
		unicode	0, <Enter data in unsigned decimal form>,0
aEditData:				; DATA XREF: .data:00520DB0o
					; .data:00520F68o ...
		unicode	0, <Edit data>,0
aFloat_3:				; DATA XREF: .data:00520EC8o
					; .data:stru_521C2Co ...
		unicode	0, <Float>,0
aEnterDataInFlo:			; DATA XREF: .data:00520EF0o
		unicode	0, <Enter data in floating point form>,0
aEnterWordInHex:			; DATA XREF: .data:00521080o
					; .data:005211E8o
		unicode	0, <Enter word in hexadecimal form>,0
aEnterWordInSig:			; DATA XREF: .data:005210D0o
		unicode	0, <Enter word in signed decimal form>,0
aEnterWordInUns:			; DATA XREF: .data:00521120o
		unicode	0, <Enter word in unsigned decimal form>,0
aEnterByteInHex:			; DATA XREF: .data:005212B0o
					; .data:00521468o
		unicode	0, <Enter byte in hexadecimal form>,0
aEnterByteInSig:			; DATA XREF: .data:00521300o
		unicode	0, <Enter byte in signed decimal form>,0
aEnterByteInUns:			; DATA XREF: .data:00521350o
		unicode	0, <Enter byte in unsigned decimal form>,0
aEnterByteAsAsc:			; DATA XREF: .data:005213A0o
		unicode	0, <Enter byte as ASCII character>,0
aLastErrorHex:				; DATA XREF: .data:stru_521508o
		unicode	0, <Last error \{hex\}>,0
aEnterLastThrea:			; DATA XREF: .data:00521530o
		unicode	0, <Enter last threas\-s error in hexadecimal form>,0
aSelectNewLastT:			; DATA XREF: .data:00521558o
		unicode	0, <Select new last thread\-s error from the list>,0
aSortByName:				; DATA XREF: .data:00521580o
		unicode	0, <Sort by name>,0
aCheckToSortErr:			; DATA XREF: .data:00521580o
		unicode	0, <Check to sort error list by name>,0
aChangeLastErro:			; DATA XREF: .data:005215F8o
		unicode	0, <Change last error>,0
; wchar_t aLx
aLx:					; DATA XREF: .text:00425D70o
		unicode	0, <!%lX>,0
; wchar_t aLi_2
aLi_2:					; DATA XREF: .text:00425E52o
		unicode	0, <!%li>,0
; wchar_t aLu
aLu:					; DATA XREF: .text:00425F33o
		unicode	0, <!%lu>,0
; wchar_t aE
aE:					; DATA XREF: .text:00425F97o
		unicode	0, <!%e>,0
; wchar_t asc_528348
asc_528348:				; DATA XREF: .text:0042602Fo
		unicode	0, <\\X>,0
; wchar_t a04x_8
a04x_8:					; DATA XREF: .text:004261A9o
		unicode	0, <!%04X>,0
; wchar_t a02x_0
a02x_0:					; DATA XREF: .text:004261F1o
		unicode	0, <!%02X>,0
; wchar_t aX02x
aX02x:					; DATA XREF: .text:004264EEo
		unicode	0, <\\x!%02X>,0
; wchar_t aC_2
aC_2:					; DATA XREF: .text:00426508o
		unicode	0, <!%c>,0
; wchar_t groupname
groupname:				; DATA XREF: .text:004265DCo
		unicode	0, <ERRCODE>,0
aModifyS_0:				; DATA XREF: .text:0042ADBCo
		unicode	0, <Modify !%s>,0
; const	WCHAR aDia_empty_0
aDia_empty_0:				; DATA XREF: .text:0042AE4Co
		unicode	0, <DIA_EMPTY>,0
aFirstAddressIn:			; DATA XREF: .data:stru_521620o
		unicode	0, <First address in the range>,0
aSelectOrTypeIn:			; DATA XREF: .data:00521648o
		unicode	0, <Select or type in the first address in the range>,0
aLastAddressInT:			; DATA XREF: .data:00521670o
		unicode	0, <Last address in the range \{included\}>,0
aSelectOrType_0:			; DATA XREF: .data:00521698o
		unicode	0, <Select or type in the last address in the range>,0
aSelectRange:				; DATA XREF: .data:005216E8o
					; .data:00521800o
		unicode	0, <Select range>,0
aDiscardAction:				; DATA XREF: .data:00521710o
					; .data:00521828o ...
		unicode	0, <Discard action>,0
aSelectAddressR:			; DATA XREF: .data:00521738o
		unicode	0, <Select address range>,0
aFirstAddressS:				; DATA XREF: .text:0042B270o
		unicode	0, <First address: !%s>,0
aFirstAddress_1:			; DATA XREF: .text:0042B2C1o
		unicode	0, <First address: Integer expression expected>,0
aLastAddressS:				; DATA XREF: .text:0042B348o
		unicode	0, <Last address: !%s>,0
aLastAddressInt:			; DATA XREF: .text:0042B399o
		unicode	0, <Last address: Integer expression expected>,0
aFirstAddressEx:			; DATA XREF: .text:0042B3D9o
		unicode	0, <First address exceeds last address>,0
aFirstException:			; DATA XREF: .data:stru_521760o
		unicode	0, <First exception in the range>,0
aSelectOrType_2:			; DATA XREF: .data:00521788o
		unicode	0, <Select or type in the first exception in the range>,0
aLastExceptionI:			; DATA XREF: .data:005217B0o
		unicode	0, <Last exception in the range \{included\}>,0
aSelectOrType_3:			; DATA XREF: .data:005217D8o
		unicode	0, <Select or type in the last exception in the range>,0
aSelectRangeOfE:			; DATA XREF: .data:00521850o
		unicode	0, <Select range of exception codes>,0
; wchar_t aException_4
aException_4:				; DATA XREF: .text:0042B591o
		unicode	0, <EXCEPTION>,0
aSameAsAbove:				; DATA XREF: .text:0042B5C9o
		unicode	0, <Same as above>,0
; wchar_t asc_52884A
asc_52884A:				; DATA XREF: .text:0042B652o
		unicode	0, <!%X>,0
aSelectTypeOfTh:			; DATA XREF: .data:005218A0o
					; .data:00521968o ...
		unicode	0, <Select type of the structure>,0
aConfirmSelecti:			; DATA XREF: .data:005218C8o
					; .data:00521A08o ...
		unicode	0, <Confirm selection>,0
aSelectStructur:			; DATA XREF: .text:loc_42BA8Bo
		unicode	0, <Select structure>,0
aExactlyOneStru:			; DATA XREF: .data:00521990o
					; .data:00521AD0o
		unicode	0, <Exactly one structure>,0
aSetDumpSizeToT:			; DATA XREF: .data:00521990o
					; .data:00521AD0o
		unicode	0, <Set dump size to the size of the structure>,0
aSpecifyCount:				; DATA XREF: .data:005219B8o
					; .data:00521B20o
		unicode	0, <Specify count:>,0
aSpecifyHowMany:			; DATA XREF: .data:005219B8o
					; .data:005219E0o ...
		unicode	0, <Specify how many instances of the structure to decode>,0
aFillSelection:				; DATA XREF: .data:00521AF8o
		unicode	0, <Fill selection>,0
aFillSelectio_3:			; DATA XREF: .data:00521AF8o
		unicode	0, <Fill selection with the packed structures>,0
aFloatingPointR:			; DATA XREF: .data:00521C54o
		unicode	0, <Floating-point register in decimal form>,0
aHex_4:					; DATA XREF: .data:00521C7Co
					; .data:00521E34o ...
		unicode	0, <Hex>,0
aFloatingPoin_0:			; DATA XREF: .data:00521CA4o
		unicode	0, <Floating-point register in hexadecimal form>,0
aModifyAssociat:			; DATA XREF: .data:00521CCCo
		unicode	0, <Modify associated tag>,0
aModifyTagAssoc:			; DATA XREF: .data:00521CCCo
		unicode	0, <Modify tag associated with register according to new cont>
		unicode	0, <ents>,0
aHighPart:				; DATA XREF: .data:stru_521D6Co
		unicode	0, <High part>,0
aLowPart:				; DATA XREF: .data:00521D94o
		unicode	0, <Low part>,0
aHighPartOf3dno:			; DATA XREF: .data:00521DE4o
		unicode	0, <High part of 3DNow! operand in decimal form>,0
aLowPartOf3dnow:			; DATA XREF: .data:00521E0Co
		unicode	0, <Low part of 3DNow! operand in decimal form>,0
aHighPartOf3d_1:			; DATA XREF: .data:00521E5Co
		unicode	0, <High part of 3DNow! operand in hexadecimal form>,0
aLowPartOf3dn_0:			; DATA XREF: .data:00521E84o
		unicode	0, <Low part of 3DNow! operand in hexadecimal form>,0
aEdit3dnowOpera:			; DATA XREF: .data:00521EFCo
		unicode	0, <Edit 3DNow! operand>,0
a32BitFloatin_0:			; DATA XREF: .data:00521F4Co
		unicode	0, <32-bit floating-point number in decimal form>,0
a32BitFloatin_2:			; DATA XREF: .data:00521F9Co
		unicode	0, <32-bit floating-point number in hexadecimal form>,0
aEdit32BitFlo_2:			; DATA XREF: .data:00522014o
		unicode	0, <Edit 32-bit float>,0
a64BitFloatin_0:			; DATA XREF: .data:00522064o
		unicode	0, <64-bit floating-point number in decimal form>,0
a64BitFloatin_1:			; DATA XREF: .data:005220B4o
		unicode	0, <64-bit floating-point number in hexadecimal form>,0
aEdit64BitFlo_0:			; DATA XREF: .data:0052212Co
		unicode	0, <Edit 64-bit float>,0
a80BitFloatin_1:			; DATA XREF: .data:0052217Co
		unicode	0, <80-bit floating-point number in decimal form>,0
a80BitFloatin_2:			; DATA XREF: .data:005221CCo
		unicode	0, <80-bit floating-point number in hexadecimal form>,0
aEdit80BitFlo_0:			; DATA XREF: .data:00522244o
		unicode	0, <Edit 80-bit float>,0
aFloatingPointN:			; DATA XREF: .data:00522294o
		unicode	0, <Floating-point number in decimal form>,0
aEntireBlock:				; DATA XREF: .data:005222BCo
					; .data:005230A4o ...
		unicode	0, <Entire block>,0
aSearchForwar_0:			; DATA XREF: .data:005222BCo
					; .data:005230A4o ...
		unicode	0, <Search forward from the beginning of the block>,0
aForward:				; DATA XREF: .data:005222E4o
					; .data:005230CCo ...
		unicode	0, <Forward>,0
aSearchForwardF:			; DATA XREF: .data:005222E4o
					; .data:005230CCo ...
		unicode	0, <Search forward from the current selection>,0
aBackward:				; DATA XREF: .data:0052230Co
					; .data:005230F4o ...
		unicode	0, <Backward>,0
aSearchBackward:			; DATA XREF: .data:0052230Co
					; .data:005230F4o ...
		unicode	0, <Search backward from the current selection>,0
aAlignedSearch:				; DATA XREF: .data:00522334o
					; .data:005233ECo
		unicode	0, <Aligned search>,0
aSearchOnlyAtAddressesAlign:		; DATA XREF: .data:00522334o
					; .data:005233ECo
		unicode	0, <Search only at addresses aligned with dump>,0
aAccuracy:				; DATA XREF: .data:0052235Co
		unicode	0, <Accuracy:>,0
aHigh:					; DATA XREF: .data:00522384o
		unicode	0, <High>,0
aSearchWith1Flo:			; DATA XREF: .data:00522384o
		unicode	0, <Search with 1 \{float\} or >
		unicode 0, <2 \{double, long double\} least si>
		unicode	0, <gnificant digit accuracy>,0
a0_01:					; DATA XREF: .data:005223ACo
					; .data:005223D4o
		unicode	0, <0.01 !%>,0
aSearchWith0_01:			; DATA XREF: .data:005223ACo
		unicode	0, <Search with 0.01!% \{1.0e-4\} accuracy>,0
aSearchWith11_0:			; DATA XREF: .data:005223D4o
		unicode	0, <Search with 1!% \{1.0e-2\} accuracy>,0
aStartSearch:				; DATA XREF: .data:005223FCo
					; .data:00523C34o ...
		unicode	0, <Start search>,0
aCancelSearch:				; DATA XREF: .data:00522424o
		unicode	0, <Cancel search>,0
aEnterFloatingP:			; DATA XREF: .data:0052244Co
		unicode	0, <Enter floating-point number to search>,0
; wchar_t aLe
aLe:					; DATA XREF: .text:00426791o
		unicode	0, <!%le>,0
; wchar_t aLe_0
aLe_0:					; DATA XREF: .text:004267ACo
		unicode	0, <!%Le>,0
; wchar_t a08lx_0
a08lx_0:				; DATA XREF: .text:00426945o
		unicode	0, <!%08lX>,0
; wchar_t a08lx08lx
a08lx08lx:				; DATA XREF: .text:004269CCo
		unicode	0, <!%08lX !%08lX>,0
; wchar_t a04x08lx08lx
a04x08lx08lx:				; DATA XREF: .text:00426A1Bo
		unicode	0, <!%04X !%08lX !%08lX>,0
a7:					; DATA XREF: .data:stru_522474o
		unicode	0, <7>,0
a6_1:					; DATA XREF: .data:0052249Co
		unicode	0, <6>,0
a5:					; DATA XREF: .data:005224C4o
		unicode	0, <5>,0
a4:					; DATA XREF: .data:005224ECo
					; .data:00525C1Co ...
		unicode	0, <4>,0
a3_1:					; DATA XREF: .data:00522514o
					; .data:00525BA4o ...
		unicode	0, <3>,0
a1_4:					; DATA XREF: .data:00522564o
					; .data:00525AB4o ...
		unicode	0, <1>,0
aByte_0:				; DATA XREF: .data:005225B4o
					; .data:005259ECo ...
		unicode	0, <Byte>,0
aMostSignifican:			; DATA XREF: .data:005225DCo
		unicode	0, <Most significant byte of MMX operand>,0
aByte6OfMmxOper:			; DATA XREF: .data:00522604o
		unicode	0, <Byte 6 of MMX operand>,0
aByte5OfMmxOper:			; DATA XREF: .data:0052262Co
		unicode	0, <Byte 5 of MMX operand>,0
aByte4OfMmxOper:			; DATA XREF: .data:00522654o
		unicode	0, <Byte 4 of MMX operand>,0
aByte3OfMmxOper:			; DATA XREF: .data:0052267Co
		unicode	0, <Byte 3 of MMX operand>,0
aByte2OfMmxOper:			; DATA XREF: .data:005226A4o
		unicode	0, <Byte 2 of MMX operand>,0
aByte1OfMmxOper:			; DATA XREF: .data:005226CCo
		unicode	0, <Byte 1 of MMX operand>,0
aLeastSignifi_1:			; DATA XREF: .data:005226F4o
		unicode	0, <Least significant byte of MMX operand>,0
aWord_3:				; DATA XREF: .data:0052271Co
					; .data:00522A8Co ...
		unicode	0, <Word>,0
aMostSignific_0:			; DATA XREF: .data:00522744o
		unicode	0, <Most significant word of MMX operand>,0
aWord2OfMmxOper:			; DATA XREF: .data:0052276Co
		unicode	0, <Word 2 of MMX operand>,0
aWord1OfMmxOper:			; DATA XREF: .data:00522794o
		unicode	0, <Word 1 of MMX operand>,0
aLeastSignifi_2:			; DATA XREF: .data:005227BCo
		unicode	0, <Least significant word of MMX operand>,0
aDoubleword_0:				; DATA XREF: .data:005227E4o
					; .data:00522BF4o
		unicode	0, <Doubleword>,0
aHighDoubleword:			; DATA XREF: .data:0052280Co
		unicode	0, <High doubleword of MMX operand>,0
aLowDoublewordO:			; DATA XREF: .data:00522834o
		unicode	0, <Low doubleword of MMX operand>,0
aDisplayDataInH:			; DATA XREF: .data:0052285Co
		unicode	0, <Display data in hexadecimal format>,0
aDisplayDataInS:			; DATA XREF: .data:00522884o
		unicode	0, <Display data in signed decimal format>,0
aDisplayDataInU:			; DATA XREF: .data:005228ACo
		unicode	0, <Display data in unsigned decimal format>,0
aEditMmxOperand:			; DATA XREF: .data:00522924o
		unicode	0, <Edit MMX operand>,0
; wchar_t aLi__0
aLi__0:					; DATA XREF: .text:00426A5Ao
		unicode	0, <!%li.>,0
aLu_:					; DATA XREF: .text:00426A66o
		unicode	0, <!%lu.>,0
; wchar_t a08x_3
a08x_3:					; DATA XREF: .text:00426BFEo
		unicode	0, <!%08X>,0
aFE:					; DATA XREF: .data:stru_52294Co
		unicode	0, <F - E>,0
aD_C:					; DATA XREF: .data:00522974o
		unicode	0, <D - C>,0
aBA:					; DATA XREF: .data:0052299Co
		unicode	0, <B - A>,0
a98:					; DATA XREF: .data:005229C4o
		unicode	0, <9 - 8>,0
a76:					; DATA XREF: .data:005229ECo
		unicode	0, <7 - 6>,0
a54:					; DATA XREF: .data:00522A14o
		unicode	0, <5 - 4>,0
a32_0:					; DATA XREF: .data:00522A3Co
		unicode	0, <3 - 2>,0
a10:					; DATA XREF: .data:00522A64o
		unicode	0, <1 - 0>,0
aMostSignific_1:			; DATA XREF: .data:00522AB4o
		unicode	0, <Most significant word of SSE operand>,0
aWord6OfSseOper:			; DATA XREF: .data:00522ADCo
		unicode	0, <Word 6 of SSE operand>,0
aWord5OfSseOper:			; DATA XREF: .data:00522B04o
		unicode	0, <Word 5 of SSE operand>,0
aWord4OfSseOper:			; DATA XREF: .data:00522B2Co
		unicode	0, <Word 4 of SSE operand>,0
aWord3OfSseOper:			; DATA XREF: .data:00522B54o
		unicode	0, <Word 3 of SSE operand>,0
aWord2OfSseOper:			; DATA XREF: .data:00522B7Co
		unicode	0, <Word 2 of SSE operand>,0
aWord1OfSseOper:			; DATA XREF: .data:00522BA4o
		unicode	0, <Word 1 of SSE operand>,0
aLeastSignifi_3:			; DATA XREF: .data:00522BCCo
		unicode	0, <Least significant word of SSE operand>,0
aMostSignific_3:			; DATA XREF: .data:00522C1Co
		unicode	0, <Most significant doubleword of SSE operand>,0
aDoubleword2OfS:			; DATA XREF: .data:00522C44o
		unicode	0, <Doubleword 2 of SSE operand>,0
aDoubleword1OfS:			; DATA XREF: .data:00522C6Co
		unicode	0, <Doubleword 1 of SSE operand>,0
aLeastSignifica:			; DATA XREF: .data:00522C94o
		unicode	0, <Least significant doubleword of SSE operand>,0
aMostSignific_2:			; DATA XREF: .data:00522CE4o
		unicode	0, <Most significant float of SSE operand>,0
aFloat2OfSseOpe:			; DATA XREF: .data:00522D0Co
		unicode	0, <Float 2 of SSE operand>,0
aFloat1OfSseOpe:			; DATA XREF: .data:00522D34o
		unicode	0, <Float 1 of SSE operand>,0
aLeastSignifi_0:			; DATA XREF: .data:00522D5Co
		unicode	0, <Least significant float of SSE operand>,0
aDouble_1:				; DATA XREF: .data:00522D84o
		unicode	0, <Double>,0
aHighQuadwordOf:			; DATA XREF: .data:00522DACo
		unicode	0, <High quadword of SSE operand as floating-point number>,0
aLowQuadwordOfS:			; DATA XREF: .data:00522DD4o
		unicode	0, <Low quadword of SSE operand as floating-point number>,0
aDisplayInteg_1:			; DATA XREF: .data:00522DFCo
		unicode	0, <Display integer data in hexadecimal format>,0
aDisplayInteger:			; DATA XREF: .data:00522E24o
		unicode	0, <Display integer data in signed decimal format>,0
aDisplayInteg_0:			; DATA XREF: .data:00522E4Co
		unicode	0, <Display integer data in unsigned decimal format>,0
aEditSseOperand:			; DATA XREF: .data:00522EC4o
		unicode	0, <Edit SSE operand>,0
aTypeOrSelectSt:			; DATA XREF: .data:stru_522EECo
		unicode	0, <Type or select string here>,0
aCloseDialog:				; DATA XREF: .data:00522F3Co
					; .data:00523004o ...
		unicode	0, <Close dialog>,0
aEnterString:				; DATA XREF: .data:00522F64o
					; .data:0052302Co ...
		unicode	0, <Enter string>,0
aTypeOrSelectEx:			; DATA XREF: .data:stru_522F8Co
					; .data:stru_5231BCo ...
		unicode	0, <Type or select expression here>,0
aTypeOrSelectSe:			; DATA XREF: .data:stru_523054o
		unicode	0, <Type or select search string here>,0
aSearchDirect_0:			; DATA XREF: .data:0052307Co
		unicode	0, <Search direction:>,0
aIgnoreCase_0:				; DATA XREF: .data:0052311Co
					; .data:0052442Co ...
		unicode	0, <Ignore case>,0
aIgnoreCaseWhil:			; DATA XREF: .data:0052311Co
		unicode	0, <Ignore case while searching for text>,0
aEnterSearchStr:			; DATA XREF: .data:00523194o
		unicode	0, <Enter search string>,0
aSearch_1:				; DATA XREF: .data:0052320Co
					; .data:00523CFCo ...
		unicode	0, <Search:>,0
aEnterAddressEx:			; DATA XREF: .data:stru_52348Co
		unicode	0, <Enter address expression:>,0
aTypeOrSelectLa:			; DATA XREF: .data:005234B4o
		unicode	0, <Type or select label or expression here>,0
aMatchingLabels:			; DATA XREF: .data:005234DCo
		unicode	0, <Matching labels:>,0
aLabelsInAllMod:			; DATA XREF: .data:00523504o
		unicode	0, <Labels in all modules that match entered string, doublecl>
		unicode	0, <ick to select, Enter to follow>,0
aExecutableFrom:			; DATA XREF: .data:stru_5235CCo
		unicode	0, <Executable from History:>,0
aNameOfTheRecen:			; DATA XREF: .data:005235F4o
		unicode	0, <Name of the recently opened executable file>,0
aNewArguments:				; DATA XREF: .data:0052361Co
		unicode	0, <New arguments:>,0
aTypeOrSelect_0:			; DATA XREF: .data:00523644o
		unicode	0, <Type or select new arguments here>,0
aNewCurrentDire:			; DATA XREF: .data:0052366Co
		unicode	0, <New current directory:>,0
aTypeOrSelectNe:			; DATA XREF: .data:00523694o
		unicode	0, <Type or select new current directory here>,0
asc_52A338	dw 0b7h,0b7h,0b7h, 0
aBrowseForCurre:			; DATA XREF: .data:005236BCo
		unicode	0, <Browse for current directory>,0
aEnterNewComm_0:			; DATA XREF: .data:00523734o
		unicode	0, <Enter new command line arguments>,0
aFollowLabel:				; DATA XREF: .text:004272D8o
		unicode	0, <Follow label>,0
aFollowExpressi:			; DATA XREF: .text:loc_4272EFo
		unicode	0, <Follow expression>,0
; wchar_t aExecutableI_0
aExecutableI_0:				; DATA XREF: .text:0042C838o
		unicode	0, <Executable[!%i]>,0
; const	WCHAR aHistory
aHistory:				; DATA XREF: .text:0042C85Fo
		unicode	0, <History>,0
; const	WCHAR aArguments0
aArguments0:				; DATA XREF: .text:0042C8F5o
		unicode	0, <Arguments[0]>,0
; const	WCHAR aCurrentDir0_1
aCurrentDir0_1:				; DATA XREF: .text:0042C932o
		unicode	0, <Current dir[0]>,0
; wchar_t aArgumentsI_0
aArgumentsI_0:				; DATA XREF: .text:0042CBA0o
		unicode	0, <Arguments[!%i]>,0
; wchar_t aCurrentDirI
aCurrentDirI:				; DATA XREF: .text:0042CC07o
		unicode	0, <Current dir[!%i]>,0
aSelectCurrentD:			; DATA XREF: .text:0042CD3Do
		unicode	0, <Select current directory for executable>,0
aResultDoesnTFi:			; DATA XREF: .text:0042CE7Fo
		unicode	0, <Result doesn\-t fit into 16 bits>,0
; wchar_t aGoto
aGoto:					; DATA XREF: .text:0042D42Ao
		unicode	0, <Goto>,0
aName_0:				; DATA XREF: .text:0042D44Bo
		unicode	0, <Name>,0
; const	WCHAR aDia_empty_resi
aDia_empty_resi:			; DATA XREF: .text:0042D4EAo
		unicode	0, <DIA_EMPTY_RESIZE>,0
aDrive:					; DATA XREF: .data:stru_52375Co
		unicode	0, <Drive>,0
aSelectLocalDri:			; DATA XREF: .data:00523784o
		unicode	0, <Select local drive>,0
aVolumeName:				; DATA XREF: .data:005237ACo
		unicode	0, <Volume name>,0
aVolumeNameOfTh:			; DATA XREF: .data:005237D4o
		unicode	0, <Volume name of the selected disk>,0
aFileSystem:				; DATA XREF: .data:005237FCo
		unicode	0, <File system>,0
aFileSystemOnTh:			; DATA XREF: .data:00523824o
		unicode	0, <File system on the selected disk>,0
aOffset_1:				; DATA XREF: .data:0052384Co
		unicode	0, <Offset>,0
aOffsetInBytes:				; DATA XREF: .data:00523874o
		unicode	0, <Offset in bytes>,0
aOffsetInSector:			; DATA XREF: .data:0052389Co
		unicode	0, <Offset in sectors>,0
aOffsetInCluste:			; DATA XREF: .data:005238C4o
		unicode	0, <Offset in clusters>,0
aSize:					; DATA XREF: .data:005238ECo
		unicode	0, <Size>,0
aSizeInBytes:				; DATA XREF: .data:00523914o
		unicode	0, <Size in bytes>,0
aSizeInSectors:				; DATA XREF: .data:0052393Co
		unicode	0, <Size in sectors>,0
aSizeInClusters:			; DATA XREF: .data:00523964o
		unicode	0, <Size in clusters>,0
aDumpSpecifiedE:			; DATA XREF: .data:00523A04o
		unicode	0, <Dump specified extent>,0
aDriveExtent:				; DATA XREF: .data:00523A7Co
		unicode	0, <Drive extent>,0
; wchar_t aLi_1
aLi_1:					; DATA XREF: .text:004274D5o
		unicode	0, <!%Li>,0
; wchar_t a____8
a_unkown_8:					; DATA XREF: .text:00427670o
		unicode	0, <!?!?!?>,0
; wchar_t asc_52A77E
asc_52A77E:				; DATA XREF: .text:004276F8o
		unicode	0, <+>,0
aDataExtendsBey:			; DATA XREF: .text:004279A9o
		unicode	0, <Data extends beyond the disk size>,0
aDataOffsetExce:			; DATA XREF: .text:004279D2o
		unicode	0, <Data offset exceeds disk size>,0
aNegativeOffset:			; DATA XREF: .text:loc_4279F5o
		unicode	0, <Negative offsets are not allowed>,0
aNegativeSizeIs:			; DATA XREF: .text:00427A0Bo
		unicode	0, <Negative size is not allowed>,0
aZeroSizeIsNotA:			; DATA XREF: .text:00427A21o
		unicode	0, <Zero size is not allowed>,0
aDataSizeExceed:			; DATA XREF: .text:00427A3Ao
		unicode	0, <Data size exceeds 256 Mb>,0
; wchar_t a_S_0
a_S_0:					; DATA XREF: .text:0042D8BBo
		unicode	0, <\\\\.\\!%s>,0
aUnableToOpenSp:			; DATA XREF: .text:0042D8F3o
		unicode	0, <Unable to open specified drive>,0
aLowMemory_2:				; DATA XREF: .text:0042D932o
		unicode	0, <Low memory>,0
aUnableToReadDa:			; DATA XREF: .text:0042D995o
		unicode	0, <Unable to read data>,0
aDriveS08lx__08:			; DATA XREF: .text:0042DA59o
		unicode	0, <Drive !%s!%08LX..!%08X>,0
aUnableToCreate:			; DATA XREF: .text:0042DAAAo
		unicode	0, <Unable to create dump window>,0
aSpecifyPhysica:			; DATA XREF: .text:loc_42DB66o
		unicode	0, <Specify physical drive extent>,0
aTypeOrSelect_1:			; DATA XREF: .data:00523ACCo
		unicode	0, <Type or select next Assembler command>,0
aKeepSize:				; DATA XREF: .data:00523B1Co
					; .data:005248DCo
		unicode	0, <Keep size>,0
aDonTModifyCode:			; DATA XREF: .data:00523B1Co
		unicode	0, <Don\-t modify code outside the initial selection>,0
aFillRestWithNo:			; DATA XREF: .data:00523B44o
		unicode	0, <Fill rest with NOPs>,0
aIfNewCommandIs:			; DATA XREF: .data:00523B44o
		unicode	0, <If new command is shorter than old, fill rest with NOPs>,0
aAssemble_0:				; DATA XREF: .data:00523B6Co
					; .data:00523BBCo
		unicode	0, <Assemble>,0
aAddTypedComman:			; DATA XREF: .data:00523B6Co
		unicode	0, <Add typed command>,0
aClose_1:				; DATA XREF: .data:00523B94o
					; .data:00523C5Co ...
		unicode	0, <Close>,0
aNoRoomForThisC:			; DATA XREF: .text:loc_42DE5Ao
		unicode	0, <No room for this command>,0
aCommandSearchP:			; DATA XREF: .data:stru_523BE4o
					; .data:stru_523CACo
		unicode	0, <Command search pattern. To search for several patterns at>
		unicode	0, < once, separate them with semicolon>,0
aSearch_2:				; DATA XREF: .data:00523C34o
					; .data:00523D9Co ...
		unicode	0, <Search>,0
aCommandSearch:				; DATA XREF: .data:00523C84o
					; .data:00523DECo
		unicode	0, <Command search>,0
aCommands:				; DATA XREF: .data:stru_523E14o
					; .data:stru_523FCCo
		unicode	0, <Commands:>,0
aEnterTheSequen:			; DATA XREF: .data:00523E3Co
					; .data:00523FF4o
		unicode	0, <Enter the sequence of commands to search for>,0
aOptions_0:				; DATA XREF: .data:00523E8Co
					; .data:00524044o
		unicode	0, <Options:>,0
aAllowIntermedi:			; DATA XREF: .data:00523EB4o
					; .data:0052406Co
		unicode	0, <Allow intermediate commands>,0
aAllowCommandsT:			; DATA XREF: .data:00523EB4o
					; .data:0052406Co
		unicode	0, <Allow commands that do not influence the final result>,0
aAllowJumpsFrom:			; DATA XREF: .data:00523EDCo
					; .data:00524094o
		unicode	0, <Allow jumps from outside>,0
aAllowJumpsAndC:			; DATA XREF: .data:00523EDCo
					; .data:00524094o
		unicode	0, <Allow jumps and calls from outside into the specified seq>
		unicode	0, <uence>,0
aPrev:					; DATA XREF: .data:00523F04o
					; .data:0052415Co ...
		dw 2 dup(3Ch)
		unicode	0, < Prev>,0
aPreviousPatter:			; DATA XREF: .data:00523F04o
					; .data:0052415Co ...
		unicode	0, <Previous pattern>,0
aNext_0:				; DATA XREF: .data:00523F2Co
					; .data:00524184o ...
		unicode	0, <Next >
		dw 2 dup(3Eh), 0
aNextPattern:				; DATA XREF: .data:00523F2Co
					; .data:00524184o ...
		unicode	0, <Next pattern>,0
aSearchForTheSe:			; DATA XREF: .data:00523FA4o
					; .data:005241FCo
		unicode	0, <Search for the sequence of commands>,0
aNoCommands:				; DATA XREF: .text:0042E664o
		unicode	0, <No commands>,0
; const	WCHAR aAstring
aAstring:				; DATA XREF: .text:00430BDAo
		unicode	0, <ASTRING>,0
aEnterSearchP_0:			; DATA XREF: .data:0052424Co
					; .data:00524544o
		unicode	0, <Enter search pattern as ASCII text using specified codepa>
		unicode	0, <ge>,0
aEnterSearchP_1:			; DATA XREF: .data:0052429Co
					; .data:00524594o
		unicode	0, <Enter search pattern as multibyte text using specified co>
		unicode	0, <depage>,0
aUnicode_5:				; DATA XREF: .data:005242C4o
					; .data:005245BCo ...
		unicode	0, <UNICODE>,0
aEnterSearchP_2:			; DATA XREF: .data:005242ECo
					; .data:005245E4o
		unicode	0, <Enter search pattern as UNICODE text>,0
aHex_2:					; DATA XREF: .data:00524314o
					; .data:0052460Co ...
		unicode	0, <HEX>,0
aEnterSearchP_3:			; DATA XREF: .data:0052433Co
					; .data:00524634o
		unicode	0, <Enter search pattern in hexadecimal form, question mark m>
		unicode	0, <eans any 4-bit nibble>,0
aTogglesDataEnt:			; DATA XREF: .data:00524364o
					; .data:0052465Co
		unicode	0, <Toggles data entering mode \{INS - insert, OVR - overwrite>
		unicode	0, <\}>,0
aIgnoreCaseDoes:			; DATA XREF: .data:0052442Co
					; .data:00524684o
		unicode	0, <Ignore case, does not work with UNICODE\:>,0
aSearchForData:				; DATA XREF: .data:005244F4o
					; .data:0052474Co
		unicode	0, <Search for data>,0
aEditDataAsAsci:			; DATA XREF: .data:0052479Co
		unicode	0, <Edit data as ASCII text using specified codepage>,0
aEditDataAsMult:			; DATA XREF: .data:005247ECo
		unicode	0, <Edit data as multibyte text using specified codepage>,0
aEditDataAsUnic:			; DATA XREF: .data:0052483Co
		unicode	0, <Edit data as UNICODE text>,0
aEditDataInHexa:			; DATA XREF: .data:0052488Co
		unicode	0, <Edit data in hexadecimal form>,0
aTogglesEditing:			; DATA XREF: .data:005248B4o
		unicode	0, <Toggles editing mode \{INS - insert, OVR - overwrite\}>,0
aDoNotExtendSiz:			; DATA XREF: .data:005248DCo
		unicode	0, <Do not extend size of data over the initial selection>,0
aUndo:					; DATA XREF: .data:stru_52497Co
		unicode	0, <\AUndo>,0
aUndoModifica_1:			; DATA XREF: .data:stru_52497Co
		unicode	0, <Undo modifications in selected area>,0
aCuT:					; DATA XREF: .data:stru_52497Co
		unicode	0, <|Cu\At>,0
aCutSelectionTo:			; DATA XREF: .data:stru_52497Co
		unicode	0, <Cut selection to clipboard>,0
aCopy:					; DATA XREF: .data:stru_52497Co
		unicode	0, <\ACopy>,0
aCopySelectio_0:			; DATA XREF: .data:stru_52497Co
		unicode	0, <Copy selection to clipboard>,0
aPaste:					; DATA XREF: .data:stru_52497Co
		unicode	0, <\APaste>,0
aInsertContents:			; DATA XREF: .data:stru_52497Co
		unicode	0, <Insert contents of clipboard>,0
aSelectAll_0:				; DATA XREF: .data:stru_52497Co
		unicode	0, <|Select \Aall>,0
aSelectAllData:				; DATA XREF: .data:stru_52497Co
		unicode	0, <Select all data>,0
aZeroSelection:				; DATA XREF: .data:stru_52497Co
		unicode	0, <|\AZero selection>,0
aSetSelectedByt:			; DATA XREF: .data:stru_52497Co
		unicode	0, <Set selected bytes to zero>,0
aUnableToAllo_3:			; DATA XREF: .text:0042F7AAo
		unicode	0, <Unable to allocate !%li. bytes of memory>,0
aHex02x:				; DATA XREF: .text:00430621o
		unicode	0, <HEX +!%02X>,0
aIns_1:					; DATA XREF: .text:0043065Ao
		unicode	0, <INS>,0
aOvr:					; DATA XREF: .text:loc_430667o
		unicode	0, <OVR>,0
aAscii_1:				; DATA XREF: .text:00430729o
		unicode	0, <ASCII>,0
; wchar_t aI_34
aI_34:					; DATA XREF: .text:00430766o
		unicode	0, < \{!%i\}>,0
aUtf8_0:				; DATA XREF: .text:0043079Eo
		unicode	0, <UTF-8>,0
aMbcs:					; DATA XREF: .text:loc_4307C0o
		unicode	0, <MBCS>,0
aAssumedByExpre:			; DATA XREF: .data:00524A28o
		unicode	0, <Assumed by expression>,0
aBool_0:				; DATA XREF: .data:00524A2Co
		unicode	0, <BOOL>,0
aBooleanValueTr:			; DATA XREF: .data:00524A30o
		unicode	0, <Boolean value \{TRUE/FALSE\}>,0
aHwnd:					; DATA XREF: .data:00524A34o
		unicode	0, <HWND>,0
aWindowHandle:				; DATA XREF: .data:00524A38o
		unicode	0, <Window handle>,0
aWm_xa:					; DATA XREF: .data:00524A3Co
		unicode	0, <WM_XA>,0
aMessageCodeWm_:			; DATA XREF: .data:00524A40o
		unicode	0, <Message code \{WM_xxx\}>,0
aAutomatic:				; DATA XREF: .data:off_524A48o
		unicode	0, <Automatic>,0
a_intern__win_1:			; DATA XREF: .data:00524A4Co
		unicode	0, <_INTERN_.WINPROCA>,0
aWinprocaHwndMs:			; DATA XREF: .data:00524A50o
		unicode	0, <WinProcA \{hWnd,Msg,wParam,lParam\}>,0
a_intern__win_2:			; DATA XREF: .data:00524A54o
		unicode	0, <_INTERN_.WINPROCW>,0
aWinprocwHwndMs:			; DATA XREF: .data:00524A58o
		unicode	0, <WinProcW \{hWnd,Msg,wParam,lParam\}>,0
a_intern__fmt0a:			; DATA XREF: .data:00524A5Co
		unicode	0, <_INTERN_.Fmt0A>,0
aFormat1aFormat:			; DATA XREF: .data:00524A60o
		unicode	0, <Format1A \{format,...\}>,0
a_intern__fmt0w:			; DATA XREF: .data:00524A64o
		unicode	0, <_INTERN_.Fmt0W>,0
aFormat1wFormat:			; DATA XREF: .data:00524A68o
		unicode	0, <Format1W \{format,...\}>,0
a_intern__fmt1a:			; DATA XREF: .data:00524A6Co
		unicode	0, <_INTERN_.Fmt1A>,0
aFormat2aArg1Fo:			; DATA XREF: .data:00524A70o
		unicode	0, <Format2A \{Arg1,format,...\}>,0
a_intern__fmt1w:			; DATA XREF: .data:00524A74o
		unicode	0, <_INTERN_.Fmt1W>,0
aFormat2wArg1Fo:			; DATA XREF: .data:00524A78o
		unicode	0, <Format2W \{Arg1,format,...\}>,0
a_intern__fmt2a:			; DATA XREF: .data:00524A7Co
		unicode	0, <_INTERN_.Fmt2A>,0
aFormat3aArg1Ar:			; DATA XREF: .data:00524A80o
		unicode	0, <Format3A \{Arg1,Arg2,format,...\}>,0
a_intern__fmt2w:			; DATA XREF: .data:00524A84o
		unicode	0, <_INTERN_.Fmt2W>,0
aFormat3wArg1Ar:			; DATA XREF: .data:00524A88o
		unicode	0, <Format3W \{Arg1,Arg2,format,...\}>,0
a_intern__fmt3a:			; DATA XREF: .data:00524A8Co
		unicode	0, <_INTERN_.Fmt3A>,0
aFormat4aArg1Ar:			; DATA XREF: .data:00524A90o
		unicode	0, <Format4A \{Arg1,Arg2,Arg3,format,...\}>,0
a_intern__fmt3w:			; DATA XREF: .data:00524A94o
		unicode	0, <_INTERN_.Fmt3W>,0
aFormat4wArg1Ar:			; DATA XREF: .data:00524A98o
		unicode	0, <Format4W \{Arg1,Arg2,Arg3,format,...\}>,0
a_intern__fn1:				; DATA XREF: .data:00524A9Co
		unicode	0, <_INTERN_.Fn1>,0
aGeneric1Arg1:				; DATA XREF: .data:00524AA0o
		unicode	0, <Generic1 \{Arg1\}>,0
a_intern__fn2:				; DATA XREF: .data:00524AA4o
		unicode	0, <_INTERN_.Fn2>,0
aGeneric2Arg1Ar:			; DATA XREF: .data:00524AA8o
		unicode	0, <Generic2 \{Arg1,Arg2\}>,0
a_intern__fn3:				; DATA XREF: .data:00524AACo
		unicode	0, <_INTERN_.Fn3>,0
aGeneric3Arg1Ar:			; DATA XREF: .data:00524AB0o
		unicode	0, <Generic3 \{Arg1,Arg2,Arg3\}>,0
a_intern__fn4:				; DATA XREF: .data:00524AB4o
		unicode	0, <_INTERN_.Fn4>,0
aGeneric4Arg1Ar:			; DATA XREF: .data:00524AB8o
		unicode	0, <Generic4 \{Arg1,Arg2,Arg3,Arg4\}>,0
a_intern__fn5:				; DATA XREF: .data:00524ABCo
		unicode	0, <_INTERN_.Fn5>,0
aGeneric5Arg1Ar:			; DATA XREF: .data:00524AC0o
		unicode	0, <Generic5 \{Arg1,Arg2,Arg3,Arg4,Arg5\}>,0
a_intern__fn6:				; DATA XREF: .data:00524AC4o
		unicode	0, <_INTERN_.Fn6>,0
aGeneric6Arg1Ar:			; DATA XREF: .data:00524AC8o
		unicode	0, <Generic6 \{Arg1,Arg2,Arg3,Arg4,Arg5,Arg6\}>,0
a_intern__fn7:				; DATA XREF: .data:00524ACCo
		unicode	0, <_INTERN_.Fn7>,0
aGeneric7Arg1Ar:			; DATA XREF: .data:00524AD0o
		unicode	0, <Generic7 \{Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7\}>,0
a_intern__fn8:				; DATA XREF: .data:00524AD4o
		unicode	0, <_INTERN_.Fn8>,0
aGeneric8Arg1Ar:			; DATA XREF: .data:00524AD8o
		unicode	0, <Generic8 \{Arg1,Arg2,Arg3,Arg4,Arg5,Arg6,Arg7,Arg8\}>,0
a_intern__seh:				; DATA XREF: .data:00524ADCo
		unicode	0, <_INTERN_.SEH>,0
aStructuredExce:			; DATA XREF: .data:00524AE0o
		unicode	0, <Structured Exception Handler>,0
a_intern__veh_1:			; DATA XREF: .data:00524AE4o
		unicode	0, <_INTERN_.VEH>,0
aVectoredExcept:			; DATA XREF: .data:00524AE8o
		unicode	0, <Vectored Exception Handler>,0
aCondition:				; DATA XREF: .data:stru_524AECo
					; .data:stru_524C04o ...
		unicode	0, <Condition:>,0
aSetCondition_1:			; DATA XREF: .data:00524B14o
					; .data:00524C2Co ...
		unicode	0, <Set conditional expression>,0
aDisabled_0:				; DATA XREF: .data:00524B3Co
					; .data:00525154o ...
		unicode	0, <Disabled>,0
aDeactivateBrea:			; DATA XREF: .data:00524B3Co
					; .data:00525154o ...
		unicode	0, <Deactivate breakpoint but keep its data>,0
aSetBreakpoint:				; DATA XREF: .data:00524B8Co
					; .data:00524BDCo ...
		unicode	0, <Set breakpoint>,0
aDoNothing:				; DATA XREF: .data:00524BB4o
					; .data:005251CCo ...
		unicode	0, <Do nothing>,0
aExpressionsNam:			; DATA XREF: .data:00524C54o
					; .data:005254C4o ...
		unicode	0, <Expressions \{name=expr, name=expr...\}:>,0
aExpressionsToP:			; DATA XREF: .data:00524C7Co
					; .data:005254ECo ...
		unicode	0, <Expressions to protocol \{separate multiple expressions wi>
		unicode	0, <th comma\}>,0
aDecodeExpressi:			; DATA XREF: .data:00524CA4o
					; .data:00525514o ...
		unicode	0, <Decode expressions as:>,0
aSelectHowToDec:			; DATA XREF: .data:00524CCCo
					; .data:0052553Co ...
		unicode	0, <Select how to decode the values of expressions>,0
aAssumeFunction:			; DATA XREF: .data:00524CF4o
					; .data:0052620Co
		unicode	0, <Assume function of type:>,0
aSelectPredefin:			; DATA XREF: .data:00524D1Co
					; .data:00526234o
		unicode	0, <Select predefined decoding of call arguments>,0
aNever:					; DATA XREF: .data:00524D44o
					; .data:00525564o ...
		unicode	0, <Never>,0
aOnCondition:				; DATA XREF: .data:00524D6Co
					; .data:0052558Co ...
		unicode	0, <On condition>,0
aAlways:				; DATA XREF: .data:00524D94o
					; .data:005255B4o ...
		unicode	0, <Always>,0
aPauseProgram:				; DATA XREF: .data:00524DBCo
					; .data:005255DCo ...
		unicode	0, <Pause program:>,0
aNeverPauseOnTh:			; DATA XREF: .data:00524DE4o
					; .data:00525604o ...
		unicode	0, <Never pause on this breakpoint>,0
aPauseOnThisBre:			; DATA XREF: .data:00524E0Co
					; .data:0052562Co ...
		unicode	0, <Pause on this breakpoint if condition is TRUE>,0
aAlwaysPauseOnT:			; DATA XREF: .data:00524E34o
					; .data:00525654o ...
		unicode	0, <Always pause on this breakpoint>,0
aLogValueOfExpr:			; DATA XREF: .data:00524E5Co
					; .data:0052567Co
		unicode	0, <Log value of expressions:>,0
aNeverLogValues:			; DATA XREF: .data:00524E84o
					; .data:005256A4o ...
		unicode	0, <Never log values of expressions on this breakpoint>,0
aLogValuesOfE_0:			; DATA XREF: .data:00524EACo
					; .data:005256CCo ...
		unicode	0, <Log values of expressions if condition is TRUE>,0
aAlwaysLogValue:			; DATA XREF: .data:00524ED4o
					; .data:005256F4o ...
		unicode	0, <Always log values of expressions on this breakpoint>,0
aLogFunctionArg:			; DATA XREF: .data:00524EFCo
					; .data:00526414o
		unicode	0, <Log function arguments:>,0
aNeverLogFuncti:			; DATA XREF: .data:00524F24o
					; .data:0052643Co
		unicode	0, <Never log function arguments on this breakpoint>,0
aLogFunctionA_0:			; DATA XREF: .data:00524F4Co
					; .data:00526464o
		unicode	0, <Log function arguments if condition is TRUE>,0
aAlwaysLogFunct:			; DATA XREF: .data:00524F74o
					; .data:0052648Co
		unicode	0, <Always log function arguments on this breakpoint>,0
aLogReturnedVal:			; DATA XREF: .data:00524F9Co
					; .data:005264B4o
		unicode	0, <Log returned value:>,0
aNeverLogValueR:			; DATA XREF: .data:00524FC4o
					; .data:005264DCo
		unicode	0, <Never log value returned by function>,0
aLogValueReturn:			; DATA XREF: .data:00524FECo
					; .data:00526504o
		unicode	0, <Log value returned by function if condition is TRUE>,0
aAlwaysLogVal_0:			; DATA XREF: .data:00525014o
		unicode	0, <Always log value returned by functiont>,0
aPassCountDec_:				; DATA XREF: .data:00525064o
					; .data:00525744o ...
		unicode	0, <Pass count \{dec.\}>,0
aSkipSpecifiedN:			; DATA XREF: .data:0052508Co
					; .data:0052576Co ...
		unicode	0, <Skip specified number of breaks \{decimal notation\}>,0
aActualCount:				; DATA XREF: .data:005250B4o
					; .data:00525794o
		unicode	0, <Actual count>,0
aNumberOfBreaks:			; DATA XREF: .data:005250DCo
					; .data:005257BCo ...
		unicode	0, <Number of breaks skipped so far \{decimal notation\}>,0
aPeriodical:				; DATA XREF: .data:00525104o
					; .data:005257E4o ...
		unicode	0, <Periodical>,0
aCheckToBreakOn:			; DATA XREF: .data:00525104o
					; .data:005257E4o ...
		unicode	0, <Check to break on each passcount-th breakpoint>,0
; wchar_t aPointerTo
aPointerTo:				; DATA XREF: .text:00431109o
		unicode	0, <Pointer to >,0
; wchar_t aI_
aI_:					; DATA XREF: .text:004312B1o
		unicode	0, <!%i.>,0
aBreakpointSpec:			; DATA XREF: .text:004316ADo
		unicode	0, <Breakpoint specifies no action and will be removed\:>,0
aConditionS:				; DATA XREF: .text:00431744o
		unicode	0, <Condition: !%s>,0
aExpressionS:				; DATA XREF: .text:0043181Eo
		unicode	0, <Expression: !%s>,0
aSetBreakpointA:			; DATA XREF: .text:00431A80o
		unicode	0, <Set breakpoint at >,0
aEditBreakpoint:			; DATA XREF: .text:loc_431AA2o
		unicode	0, <Edit breakpoint at >,0
aSetBreakpoints:			; DATA XREF: .text:00431AFEo
		unicode	0, <Set breakpoints at >,0
aEditBreakpoi_1:			; DATA XREF: .text:loc_431B20o
		unicode	0, <Edit breakpoints at >,0
; wchar_t a08x__08x
a08x__08x:				; DATA XREF: .text:004288EEo
		unicode	0, <!%08X..!%08X>,0
aUnableToSetBre:			; DATA XREF: .text:loc_431CB3o
		unicode	0, <Unable to set breakpoint>,0
aBreakOn:				; DATA XREF: .data:stru_52521Co
					; .data:stru_5253ACo ...
		unicode	0, <Break on:>,0
aReadAccess:				; DATA XREF: .data:00525244o
					; .data:005253D4o
		unicode	0, <Read access>,0
aBreakWhenMemor:			; DATA XREF: .data:00525244o
					; .data:005253D4o
		unicode	0, <Break when memory range is accessed for read>,0
aWriteAccess:				; DATA XREF: .data:0052526Co
					; .data:005253FCo
		unicode	0, <Write access>,0
aBreakWhenMem_0:			; DATA XREF: .data:0052526Co
					; .data:005253FCo
		unicode	0, <Break when memory range is accessed for write>,0
aExecution:				; DATA XREF: .data:00525294o
					; .data:00525424o ...
		unicode	0, <Execution>,0
aBreakWhenComma:			; DATA XREF: .data:00525294o
					; .data:00525424o
		unicode	0, <Break when command from the memory range is executed>,0
aSetMemoryBreak:			; DATA XREF: .text:00432BC7o
		unicode	0, <Set memory breakpoint at >,0
aEditMemoryBrea:			; DATA XREF: .text:loc_432BE9o
		unicode	0, <Edit memory breakpoint at >,0
aBreakWhenCom_0:			; DATA XREF: .data:00525924o
					; .data:00525D84o
		unicode	0, <Break when command at the specified address is executed>,0
aAccessRW:				; DATA XREF: .data:0052594Co
					; .data:00525DACo
		unicode	0, <Access \{R/W\}>,0
aBreakWhenDataI:			; DATA XREF: .data:0052594Co
					; .data:00525DACo
		unicode	0, <Break when data is accessed \{but not executed\}>,0
aWrite:					; DATA XREF: .data:00525974o
					; .data:00525DD4o
		unicode	0, <Write>,0
aBreakWhenDat_0:			; DATA XREF: .data:00525974o
					; .data:00525DD4o
		unicode	0, <Break when data is written to the specified location>,0
aDataSize:				; DATA XREF: .data:005259C4o
					; .data:00525E24o
		unicode	0, <Data size:>,0
aBreakOnlyOnThe:			; DATA XREF: .data:005259ECo
					; .data:00525E4Co
		unicode	0, <Break only on the specified address>,0
aBreakpointIs2B:			; DATA XREF: .data:00525A14o
					; .data:00525E74o
		unicode	0, <Breakpoint is 2 bytes long>,0
aDword:					; DATA XREF: .data:00525A3Co
					; .data:00525E9Co
		unicode	0, <Dword>,0
aBreakpointIs4B:			; DATA XREF: .data:00525A3Co
					; .data:00525E9Co
		unicode	0, <Breakpoint is 4 bytes long>,0
aHardwareSlot:				; DATA XREF: .data:00525A8Co
					; .data:00525EECo
		unicode	0, <Hardware slot:>,0
aCheckToUseHard:			; DATA XREF: .data:00525AB4o
					; .data:00525F14o
		unicode	0, <Check to use hardware breakpoint 1>,0
aCurrentTypeOfH:			; DATA XREF: .data:00525ADCo
					; .data:00525FB4o
		unicode	0, <Current type of hardware breakpoint 1>,0
aCurrentAddress:			; DATA XREF: .data:00525B04o
					; .data:00526054o
		unicode	0, <Current address of hardware breakpoint 1>,0
aCheckToUseHa_3:			; DATA XREF: .data:00525B2Co
					; .data:00525F3Co
		unicode	0, <Check to use hardware breakpoint 2>,0
aCurrentTypeO_0:			; DATA XREF: .data:00525B54o
					; .data:00525FDCo
		unicode	0, <Current type of hardware breakpoint 2>,0
aCurrentAddre_0:			; DATA XREF: .data:00525B7Co
					; .data:0052607Co
		unicode	0, <Current address of hardware breakpoint 2>,0
aCheckToUseHa_0:			; DATA XREF: .data:00525BA4o
					; .data:00525F64o
		unicode	0, <Check to use hardware breakpoint 3>,0
aCurrentTypeO_1:			; DATA XREF: .data:00525BCCo
					; .data:00526004o
		unicode	0, <Current type of hardware breakpoint 3>,0
aCurrentAddre_2:			; DATA XREF: .data:00525BF4o
					; .data:005260A4o
		unicode	0, <Current address of hardware breakpoint 3>,0
aCheckToUseHa_1:			; DATA XREF: .data:00525C1Co
					; .data:00525F8Co
		unicode	0, <Check to use hardware breakpoint 4>,0
aCurrentTypeO_2:			; DATA XREF: .data:00525C44o
					; .data:0052602Co
		unicode	0, <Current type of hardware breakpoint 4>,0
aCurrentAddre_3:			; DATA XREF: .data:00525C6Co
					; .data:005260CCo
		unicode	0, <Current address of hardware breakpoint 4>,0
aLogValuesOfExp:			; DATA XREF: .data:00526374o
		unicode	0, <Log values of expressions:>,0
aAlwaysLogVal_2:			; DATA XREF: .data:0052652Co
		unicode	0, <Always log value returned by function>,0
aCurrentCount:				; DATA XREF: .data:005265CCo
		unicode	0, <Current count>,0
aInternal_0:				; DATA XREF: .text:00432FFFo
		unicode	0, <Internal>,0
aWriteI:				; DATA XREF: .text:00433038o
		unicode	0, <Write:!%i>,0
aRWI:					; DATA XREF: .text:00433060o
		unicode	0, <R/W:!%i>,0
aExec:					; DATA XREF: .text:00433084o
		unicode	0, <Exec>,0
aEmpty_1:				; DATA XREF: .text:loc_4330A6o
		unicode	0, <Empty>,0
aHardwareBrea_0:			; DATA XREF: .text:00433C58o
		unicode	0, <Hardware breakpoint !%i at >,0
aHardwareBrea_2:			; DATA XREF: .text:loc_433C75o
		unicode	0, <Hardware breakpoint at >,0
aPauseRunTraceW:			; DATA XREF: .data:stru_526734o
		unicode	0, <Pause run trace when any checked condition is met:>,0
aEipIsInTheRa_0:			; DATA XREF: .data:0052675Co
		unicode	0, <EIP is in the range>,0
aPauseRunTrac_0:			; DATA XREF: .data:0052675Co
		unicode	0, <Pause run trace when program enters specified range>,0
aLowLimitOfInRa:			; DATA XREF: .data:00526784o
		unicode	0, <Low limit of in range \{hexadecimal\}>,0
aHighLimitOfInR:			; DATA XREF: .data:005267D4o
		unicode	0, <High limit of in range \{hexadecimal, not included\}>,0
aEipIsOutside_0:			; DATA XREF: .data:005267FCo
		unicode	0, <EIP is outside the range>,0
aPauseRunTrac_2:			; DATA XREF: .data:005267FCo
		unicode	0, <Pause run trace when program leaves specified range>,0
aLowLimitOfOutR:			; DATA XREF: .data:00526824o
		unicode	0, <Low limit of out range \{hexadecimal\}>,0
aHighLimitOfOut:			; DATA XREF: .data:00526874o
		unicode	0, <High limit of out range \{hexadecimal, not included\}>,0
aEipPointsToMod:			; DATA XREF: .data:0052689Co
		unicode	0, <EIP points to modified command \{backup necessary!\}>,0
aDonTForgetToCr:			; DATA XREF: .data:0052689Co
		unicode	0, <Don\-t forget to create backup when tracing self-modified code\:>,0
aMemoryRange1Ac:			; DATA XREF: .data:005268C4o
		unicode	0, <Memory range 1 accessed>,0
aPauseRunTrac_3:			; DATA XREF: .data:005268C4o
		unicode	0, <Pause run trace when memory range 1 is accessed>,0
aLowLimitOfMemo:			; DATA XREF: .data:005268ECo
					; .data:00526F04o
		unicode	0, <Low limit of memory range >
		unicode 0, <1 \{hexadecimal\}>,0
aHighLimitOfMem:			; DATA XREF: .data:0052693Co
					; .data:00526F54o
		unicode	0, <High limit of memory range >
		unicode 0, <1 \{not included\}>,0
aReadWriteRW:				; DATA XREF: .data:0052698Co
					; .data:00526A7Co ...
		unicode	0, <Read|Write|R/W>,0
aTypeOfMemoryAc:			; DATA XREF: .data:0052698Co
					; .data:00526FA4o ...
		unicode	0, <Type of memory access to memory range 1>,0
aMemoryRange2Ac:			; DATA XREF: .data:005269B4o
		unicode	0, <Memory range 2 accessed>,0
aPauseRunTrac_4:			; DATA XREF: .data:005269B4o
		unicode	0, <Pause run trace when memory range 2 is accessed>,0
aLowLimitOfMe_1:			; DATA XREF: .data:005269DCo
					; .data:00526FF4o
		unicode	0, <Low limit of memory range >
		unicode 0, <2 \{hexadecimal\}>,0
aHighLimitOfM_1:			; DATA XREF: .data:00526A2Co
					; .data:00527044o
		unicode	0, <High limit of memory range >
		unicode 0, <2 \{not included\}>,0
aTypeOfMemory_0:			; DATA XREF: .data:00526A7Co
		unicode	0, <Type of memory access to memory range 2>,0
aCondition1IsTr:			; DATA XREF: .data:00526AA4o
		unicode	0, <Condition 1 is true>,0
aPauseRunTrac_5:			; DATA XREF: .data:00526AA4o
		unicode	0, <Pause run trace when condition 1 is true>,0
aCondition1:				; DATA XREF: .data:00526ACCo
		unicode	0, <Condition 1>,0
aCondition2IsTr:			; DATA XREF: .data:00526AF4o
		unicode	0, <Condition 2 is true>,0
aPauseRunTrac_1:			; DATA XREF: .data:00526AF4o
		unicode	0, <Pause run trace when condition 2 is true>,0
aCondition2:				; DATA XREF: .data:00526B1Co
		unicode	0, <Condition 2>,0
aCondition3IsTr:			; DATA XREF: .data:00526B44o
		unicode	0, <Condition 3 is true>,0
aPauseRunTrac_7:			; DATA XREF: .data:00526B44o
		unicode	0, <Pause run trace when condition 3 is true>,0
aCondition3:				; DATA XREF: .data:00526B6Co
		unicode	0, <Condition 3>,0
aCondition4IsTr:			; DATA XREF: .data:00526B94o
		unicode	0, <Condition 4 is true>,0
aPauseRunTrac_8:			; DATA XREF: .data:00526B94o
		unicode	0, <Pause run trace when condition 4 is true>,0
aCondition4:				; DATA XREF: .data:00526BBCo
		unicode	0, <Condition 4>,0
aCommandCountIs:			; DATA XREF: .data:00526BE4o
		unicode	0, <Command count is>,0
aPauseRunTraceA:			; DATA XREF: .data:00526BE4o
		unicode	0, <Pause run trace after specified \{decimal\} number of comma>
		unicode	0, <nds are traced>,0
aNumberOfComman:			; DATA XREF: .data:00526C0Co
		unicode	0, <Number of commands to trace \{decimal\}>,0
aCurrent:				; DATA XREF: .data:00526C34o
		unicode	0, <\{Current>,0
aCurrentNumberO:			; DATA XREF: .data:00526C5Co
		unicode	0, <Current number of traced commands \{decimal\}>,0
aReset:					; DATA XREF: .data:00526CACo
		unicode	0, <Reset>,0
aResetNumberOfC:			; DATA XREF: .data:00526CACo
		unicode	0, <Reset number of commands traced so far>,0
aCommandIs1:				; DATA XREF: .data:00526CD4o
		unicode	0, <Command is \{1\}>,0
aPauseRunTrac_9:			; DATA XREF: .data:00526CD4o
					; .data:00526D24o
		unicode	0, <Pause run trace when command to be executed is same as sp>
		unicode	0, <ecified>,0
aCommand1Pseudo:			; DATA XREF: .data:00526CFCo
		unicode	0, <Command 1 \{pseudooperands are allowed, use semicolon to s>
		unicode	0, <eparate multiple patterns\}>,0
aCommandIs2:				; DATA XREF: .data:00526D24o
		unicode	0, <Command is \{2\}>,0
aCommand2Pseudo:			; DATA XREF: .data:00526D4Co
		unicode	0, <Command 2 \{pseudooperands are allowed, use semicolon to s>
		unicode	0, <eparate multiple patterns\}>,0
aSetCondition:				; DATA XREF: .data:00526D9Co
		unicode	0, <Set condition>,0
aConditionToPau:			; DATA XREF: .text:004350D3o
					; .data:00526DECo
		unicode	0, <Condition to pause run or hit trace>,0
; wchar_t aU__0
aU__0:					; DATA XREF: .text:004343D0o
		unicode	0, <!%u.>,0
aInvalidLowInRa:			; DATA XREF: .text:004348F1o
		unicode	0, <Invalid low in range limit>,0
aInvalidHighInR:			; DATA XREF: .text:00434924o
		unicode	0, <Invalid high in range limit>,0
aEmptyInRange:				; DATA XREF: .text:0043495Fo
		unicode	0, <Empty in range>,0
aLowInLimitExce:			; DATA XREF: .text:loc_43497Bo
		unicode	0, <Low in limit exceeds high limit>,0
aInvalidLowOutR:			; DATA XREF: .text:00434A3Co
		unicode	0, <Invalid low out range limit>,0
aInvalidHighOut:			; DATA XREF: .text:00434A6Fo
		unicode	0, <Invalid high out range limit>,0
aEmptyOutRange:				; DATA XREF: .text:00434AA9o
		unicode	0, <Empty out range>,0
aLowOutLimitExc:			; DATA XREF: .text:loc_434AC5o
		unicode	0, <Low out limit exceeds high limit>,0
aMemoryRangeI:				; DATA XREF: .text:00434BA2o
		unicode	0, <Memory range !%i: >,0
aInvalidLowLimi:			; DATA XREF: .text:00434BC6o
		unicode	0, <Invalid low limit>,0
aInvalidHighLim:			; DATA XREF: .text:00434C09o
		unicode	0, <Invalid high limit>,0
aEmptyRange_0:				; DATA XREF: .text:00434C4Ao
		unicode	0, <Empty range>,0
aLowLimitExceed:			; DATA XREF: .text:loc_434C6Eo
		unicode	0, <Low limit exceeds high limit>,0
aConditionI:				; DATA XREF: .text:00434D3Eo
		unicode	0, <Condition !%i: >,0
aInvalidCount:				; DATA XREF: .text:00434E32o
		unicode	0, <Invalid count>,0
aCountIsZero:				; DATA XREF: .text:00434E68o
		unicode	0, <Count is zero>,0
aCountIsSameAsO:			; DATA XREF: .text:loc_434E95o
		unicode	0, <Count is same as or lower than actual count>,0
aCommandI:				; DATA XREF: .text:00434F5Eo
		unicode	0, <Command !%i: >,0
aProtocolTheFol:			; DATA XREF: .data:stru_526E14o
		unicode	0, <Protocol the following commands:>,0
aAllCommands:				; DATA XREF: .data:00526E3Co
		unicode	0, <All commands>,0
aProtocolAllCom:			; DATA XREF: .data:00526E3Co
		unicode	0, <Protocol all commands>,0
aTakenJumpsCall:			; DATA XREF: .data:00526E64o
		unicode	0, <Taken jumps, calls, returns and their destinations>,0
aProtocolAllCon:			; DATA XREF: .data:00526E64o
		unicode	0, <Protocol all control transfer commands and their destinat>
		unicode	0, <ions>,0
aCallDestinatio:			; DATA XREF: .data:00526E8Co
		unicode	0, <Call destinations>,0
aProtocolOnlyEn:			; DATA XREF: .data:00526E8Co
		unicode	0, <Protocol only entry points of called subroutines>,0
aCommandsThatAc:			; DATA XREF: .data:00526EB4o
		unicode	0, <Commands that access the following memory ranges:>,0
aProtocolOnlyCo:			; DATA XREF: .data:00526EB4o
		unicode	0, <Protocol only commands accessing specified memory>,0
aRange1:				; DATA XREF: .data:00526EDCo
		unicode	0, <Range 1>,0
aProtocolComm_0:			; DATA XREF: .data:00526EDCo
		unicode	0, <Protocol commands that access memory range 1>,0
aRange2:				; DATA XREF: .data:00526FCCo
		unicode	0, <Range 2>,0
aProtocolComman:			; DATA XREF: .data:00526FCCo
		unicode	0, <Protocol commands that access memory range 2>,0
aProtocolOnlyTh:			; DATA XREF: .data:005270BCo
		unicode	0, <Protocol only the following EIP ranges:>,0
aLimitProtocoll:			; DATA XREF: .data:005270BCo
		unicode	0, <Limit protocolling to the specified pieces of code>,0
aListOfEipRange:			; DATA XREF: .data:005270E4o
		unicode	0, <List of EIP ranges to protocol, second address is not inc>
		unicode	0, <luded>,0
aAddRange_0:				; DATA XREF: .data:0052710Co
		unicode	0, <Add range>,0
aAddRangeOfAddr:			; DATA XREF: .data:0052710Co
		unicode	0, <Add range of addresses>,0
aFollowInCpu:				; DATA XREF: .data:00527134o
		unicode	0, <Follow in CPU>,0
aFollowSelect_6:			; DATA XREF: .data:00527134o
		unicode	0, <Follow selected range in the CPU Disassembler pane>,0
aDeleteRange:				; DATA XREF: .data:0052715Co
		unicode	0, <Delete range>,0
aDeleteSelected:			; DATA XREF: .data:0052715Co
		unicode	0, <Delete selected range of addresses>,0
aClearList_0:				; DATA XREF: .data:00527184o
		unicode	0, <Clear list>,0
aDeleteAllRange:			; DATA XREF: .data:00527184o
		unicode	0, <Delete all ranges>,0
aSymbolic:				; DATA XREF: .data:005271ACo
		unicode	0, <Symbolic>,0
aShowSymbolic_0:			; DATA XREF: .data:005271ACo
		unicode	0, <Show symbolic names if available>,0
aSetProtocollin:			; DATA XREF: .data:005271FCo
		unicode	0, <Set protocolling mode>,0
aDiscardAllModi:			; DATA XREF: .data:00527224o
		unicode	0, <Discard all modifications>,0
aCommandsProtoc:			; DATA XREF: .text:00435A24o
					; .data:0052724Co
		unicode	0, <Commands protocolled by run trace>,0
aAddAddressRang:			; DATA XREF: .text:004354E1o
		unicode	0, <Add address range to protocol>,0
aEditAddressRan:			; DATA XREF: .text:004355C7o
		unicode	0, <Edit address range to protocol>,0
aAllMemoryRange:			; DATA XREF: .text:0043597Co
		unicode	0, <All memory ranges are disabled>,0
aCheckToAllowDe:			; DATA XREF: .data:stru_527274o
					; .data:0052729Co ...
		unicode	0, <Check to allow debuggee execution on this CPU>,0
aAcceptAffinity:			; DATA XREF: .data:00527774o
		unicode	0, <Accept affinity>,0
aSelectAffinity:			; DATA XREF: .data:005277C4o
		unicode	0, <Select affinity mask>,0
aCpuI:					; DATA XREF: .text:00435B00o
		unicode	0, <CPU !%i>,0
aSetAffinityMas:			; DATA XREF: .text:00435C04o
		unicode	0, <Set affinity mask>,0
aListOfFoundIte:			; DATA XREF: .data:stru_5277ECo
		unicode	0, <List of found items>,0
aGoToTheSpecifi:			; DATA XREF: .data:00527814o
					; .data:005278B4o
		unicode	0, <Go to the specified location>,0
aGoBackToTheOri:			; DATA XREF: .data:0052783Co
		unicode	0, <Go back to the original command>,0
aKnownJumpsAndC:			; DATA XREF: .data:00527864o
		unicode	0, <Known jumps and calls>,0
aListOfCodeLoca:			; DATA XREF: .data:stru_52788Co
		unicode	0, <List of code locations>,0
aCancelCodeBrow:			; DATA XREF: .data:005278DCo
		unicode	0, <Cancel code browsing>,0
aBrowseCodeLoca:			; DATA XREF: .text:loc_436AECo
					; .data:00527904o
		unicode	0, <Browse code locations>,0
aJumpTo_0:				; DATA XREF: .text:loc_435D86o
		unicode	0, <Jump to >,0
aCallTo:				; DATA XREF: .text:loc_435DAAo
		unicode	0, <Call to >,0
aJump:					; DATA XREF: .text:loc_435EFAo
		unicode	0, <Jump>,0
aTableJump:				; DATA XREF: .text:loc_435F21o
		unicode	0, <Table jump>,0
aRet_1:					; DATA XREF: .text:loc_435F48o
		unicode	0, <RET>,0
aCall_0:				; DATA XREF: .text:loc_435F6Co
		unicode	0, <Call>,0
aTableCall:				; DATA XREF: .text:loc_435F90o
		unicode	0, <Table call>,0
aFrom:					; DATA XREF: .text:loc_435FD6o
		unicode	0, < from >,0
aSwitchOrigin:				; DATA XREF: .text:00436115o
		unicode	0, <Switch origin>,0
; wchar_t asc_52EDF0
asc_52EDF0:				; DATA XREF: .text:00436185o
		unicode	0, <, >,0
aDefaultCase_1:				; DATA XREF: .text:004361A5o
		unicode	0, <Default case>,0
aDefaultCase:				; DATA XREF: .text:loc_4361B2o
		unicode	0, <default case>,0
aCase_0:				; DATA XREF: .text:004361EFo
		unicode	0, <Case >,0
aCase_1:				; DATA XREF: .text:loc_4361FCo
		unicode	0, <case >,0
aCases_0:				; DATA XREF: .text:0043622Do
		unicode	0, <Cases >,0
aCases_1:				; DATA XREF: .text:loc_43623Ao
		unicode	0, <cases >,0
; wchar_t asc_52EE5E
asc_52EE5E:				; DATA XREF: .text:004362D8o
		unicode	0, <-!%X>,0
; wchar_t aS_4
aS_4:					; DATA XREF: .text:00436323o
		unicode	0, < \{!%s\}>,0
; wchar_t aMessage_2
aMessage_2:				; DATA XREF: .text:0043634Do
		unicode	0, <MESSAGE>,0
; wchar_t aLi__1
aLi__1:					; DATA XREF: .text:004363EEo
		unicode	0, < \{!%li.\}>,0
aAndOthers:				; DATA XREF: .text:00436421o
		unicode	0, < and others>,0
aKnownCallsFrom:			; DATA XREF: .text:loc_4366C6o
		unicode	0, <Known calls from >,0
aKnownJumpsFrom:			; DATA XREF: .text:loc_4366EDo
		unicode	0, <Known jumps from >,0
aAllKnownJumpsA:			; DATA XREF: .text:00436793o
		unicode	0, <All known jumps and calls to >,0
aLocalJumpsAndC:			; DATA XREF: .text:loc_4367BAo
		unicode	0, <Local jumps and calls to >,0
aCasesOfSwitch:				; DATA XREF: .text:loc_4368DCo
		unicode	0, <Cases of switch >,0
; wchar_t aU_10
aU_10:					; DATA XREF: .text:00436D36o
		unicode	0, <!%u>,0
aCodePage_0:				; DATA XREF: .text:loc_436F1Ao
		unicode	0, <Code page>,0
aCodePage:				; DATA XREF: .text:loc_436F25o
		unicode	0, <|Code page>,0
; wchar_t asc_52EFB4
asc_52EFB4:				; DATA XREF: .text:loc_436F49o
		unicode	0, <|>,0
aSelectMultibyt:			; DATA XREF: .text:0043704Do
		unicode	0, <Select multibyte code page>,0
aSelectCodePa_0:			; DATA XREF: .text:loc_437056o
		unicode	0, <Select code page>,0
		
		
_data		ends
		