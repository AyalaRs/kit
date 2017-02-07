_data		segment	para public 'DATA' use32

stru_54E5D0	t_menu <offset asc_54E936, 0, 0, offset loc_49FAC0, 0, <0>>; 0
		t_menu <offset aUpdate_3, offset aUpdateContents, 0CAh, \ ; \=\=
   offset loc_49FB44, 0, <0>>; 1
		t_menu <offset aInsertWatch___, offset aInsertNewWatch, 244h, \
   offset loc_49FB74, 0, <0>>; 2
		t_menu <offset aAddWatch___, offset aAddNewWatchExp, 245h, \
   offset loc_49FB74, 0, <1>>; 3
		t_menu <offset aEditWatch___, offset aEditWatchExpre, 245h, \
   offset loc_49FB74, 0, <2>>; 4
		t_menu <offset aDeleteWatch_0, offset aDeleteWatchExp, 246h, \
   offset loc_49FD08, 0, <0>>; 5
		t_menu <offset aMoveUp, offset aMoveWatchOne_0, 247h, \
   offset loc_49FD4C, 0, <0>>; 6
		t_menu <offset aMoveDown, offset aMoveWatchOne_2, 248h, \
   offset loc_49FD4C, 0, <1>>; 7
		t_menu <offset aEditValue___, offset aEditContents_1, 249h, \
   offset loc_49FE10, 0, <0>>; 8
		t_menu <offset aFollowInDisa_5, offset aFollowValueInC, 24Ah, \
   offset loc_4A0574, 0, <0>>; 9
		t_menu <offset aFollowInDump_1, offset aFollowValueI_0, 24Bh, \
   offset loc_4A0574, 0, <1>>; 10
		t_menu <offset aFollowInStac_2, offset aFollowValueI_1, 24Ch, \
   offset loc_4A0574, 0, <2>>; 11
		t_menu <offset aWatch, offset asc_54E720+3, 0, 0, 0, <0>>; 12
		t_menu <offset asc_54ECFC, offset asc_54E720+3, 0, 0, \
   offset stru_518B94, <0>>; 13
; wchar_t asc_54E720
asc_54E720:				; DATA XREF: .text:0049F915o
					; .data:stru_54E5D0o
		unicode	0, <; >,0
; wchar_t asc_54E726
asc_54E726:				; DATA XREF: .text:0049F9ADo
		unicode	0, < = >,0
; wchar_t a____2
;a!?!?!?_2:					; DATA XREF: .text:0049F9F7o
		unicode	0, <!?!?!? >,0
aEditWatchExpre:			; DATA XREF: .text:loc_49FC46o
					; .data:stru_54E5D0o
		unicode	0, <Edit watch expression>,0
aEnterNewWatchE:			; DATA XREF: .text:loc_49FC53o
		unicode	0, <Enter new watch expression>,0
aModifyS_2:				; DATA XREF: .text:004A0086o
		unicode	0, <Modify !%s>,0
aEditByteAt:				; DATA XREF: .text:004A014Bo
		unicode	0, <Edit byte at >,0
aEditWordAt:				; DATA XREF: .text:004A017Fo
		unicode	0, <Edit word at >,0
aEditDwordAt:				; DATA XREF: .text:004A01B3o
		unicode	0, <Edit dword at >,0
aEdit32BitFloat:			; DATA XREF: .text:004A01E7o
		unicode	0, <Edit 32-bit float at >,0
aEdit64BitFloat:			; DATA XREF: .text:004A021Bo
		unicode	0, <Edit 64-bit float at >,0
aEdit80BitFloat:			; DATA XREF: .text:004A024Fo
		unicode	0, <Edit 80-bit float at >,0
aEditSelectorAt:			; DATA XREF: .text:004A0283o
		unicode	0, <Edit selector at >,0
aEditAsciiStrin:			; DATA XREF: .text:004A02B4o
		unicode	0, <Edit ASCII string at >,0
aEditUnicodeStr:			; DATA XREF: .text:004A02E5o
		unicode	0, <Edit UNICODE string at >,0
aMemoryIsNotR_0:			; DATA XREF: .text:loc_4A0366o
		unicode	0, <Memory is not readable>,0
asc_54E936:				; DATA XREF: .data:stru_54E5D0o
		unicode	0, <\:>,0
aUpdate_3:				; DATA XREF: .data:stru_54E5D0o
		unicode	0, <Update>,0
aUpdateContents:			; DATA XREF: .data:stru_54E5D0o
		unicode	0, <Update contents of Watch window>,0
aInsertWatch___:			; DATA XREF: .data:stru_54E5D0o
		unicode	0, <\AInsert watch...>,0
aInsertNewWatch:			; DATA XREF: .data:stru_54E5D0o
		unicode	0, <Insert new watch expression before selected>,0
aAddWatch___:				; DATA XREF: .data:stru_54E5D0o
		unicode	0, <\AAdd watch...>,0
aAddNewWatchExp:			; DATA XREF: .data:stru_54E5D0o
		unicode	0, <Add new watch expression>,0
aEditWatch___:				; DATA XREF: .data:stru_54E5D0o
		unicode	0, <\AEdit watch...>,0
aDeleteWatch_0:				; DATA XREF: .data:stru_54E5D0o
		unicode	0, <\ADelete watch>,0
aDeleteWatchExp:			; DATA XREF: .data:stru_54E5D0o
		unicode	0, <Delete watch expression>,0
aMoveUp:				; DATA XREF: .data:stru_54E5D0o
		unicode	0, <|Move up>,0
aMoveWatchOne_0:			; DATA XREF: .data:stru_54E5D0o
		unicode	0, <Move watch one line up>,0
aMoveDown:				; DATA XREF: .data:stru_54E5D0o
		unicode	0, <Move down>,0
aMoveWatchOne_2:			; DATA XREF: .data:stru_54E5D0o
		unicode	0, <Move watch one line down>,0
aEditValue___:				; DATA XREF: .data:stru_54E5D0o
		unicode	0, <|Edit value...>,0
aEditContents_1:			; DATA XREF: .data:stru_54E5D0o
		unicode	0, <Edit contents of displayed register or memory>,0
aFollowInDisa_5:			; DATA XREF: .data:stru_54E5D0o
		unicode	0, <Follow in Disassembler>,0
aFollowValueInC:			; DATA XREF: .data:stru_54E5D0o
		unicode	0, <Follow value in CPU Disassembler pane>,0
aFollowInDump_1:			; DATA XREF: .data:stru_54E5D0o
		unicode	0, <Follow in Dump>,0
aFollowValueI_0:			; DATA XREF: .data:stru_54E5D0o
		unicode	0, <Follow value in CPU Dump pane>,0
aFollowInStac_2:			; DATA XREF: .data:stru_54E5D0o
		unicode	0, <Follow in Stack>,0
aFollowValueI_1:			; DATA XREF: .data:stru_54E5D0o
		unicode	0, <Follow value in CPU Stack pane>,0
aWatch:					; DATA XREF: .data:stru_54E5D0o
		unicode	0, <|*WATCH>,0
asc_54ECFC:				; DATA XREF: .data:stru_54E5D0o
		unicode	0, <|>,0
; wchar_t aWatches_1
aWatches_1:				; DATA XREF: .text:004A07E4o
		unicode	0, <Watches>,0
aExpression:				; DATA XREF: .text:004A0807o
		unicode	0, <Expression>,0
aExpressionToEv:			; DATA XREF: .text:004A0811o
		unicode	0, <Expression to evaluate>,0
aValue_1:				; DATA XREF: .text:004A082Fo
		unicode	0, <Value>,0
aValueOfExpress:			; DATA XREF: .text:004A083Bo
		unicode	0, <Value of expression>,0
; const	WCHAR aIco_quest
aIco_quest:				; DATA XREF: .text:004A08B3o
		unicode	0, <ICO_QUEST>,0
		
stru_54ED9C	t_menu <offset asc_54FCC8, 0, 0, offset loc_4A16FC, 0, <0>>; 0
		t_menu <offset aFollowInDisa_0, offset aFollowSelec_13, 258h, \ ; \=\=
   offset loc_4A1738, 0, <0>>; 1
		t_menu <offset aFollowPrevio_5, offset aFollowPrevio_7, 259h, \
   offset loc_4A1738, 0, <1>>; 2
		t_menu <offset aFollowNext_1, offset aFollowNextItem, 25Ah, \
   offset loc_4A1738, 0, <2>>; 3
		t_menu <offset aSearchForText, offset aFindTextSubstr, 25Bh, \
   offset loc_4A17EC, 0, <0>>; 4
		t_menu <offset aSearchAgain, offset aRepeatSearch_3, 0DCh, \
   offset loc_4A17EC, 0, <1>>; 5
		t_menu <offset aSearchReverse, offset aRepeatSearch_4, 0DDh, \
   offset loc_4A17EC, 0, <2>>; 6
		t_menu <offset aBreakpoint_0, offset aSetUncondition, 118h, \
   offset loc_4A1AB4, 0, <0>>; 7
		t_menu <offset aConditionalB_8, offset aSetOrEditCo_13, 119h, \
   offset loc_4A1AB4, 0, <1>>; 8
		t_menu <offset aConditionalLog, offset aSetOrEditCo_14, 11Ah, \
   offset loc_4A1AB4, 0, <2>>; 9
		t_menu <offset aRemoveBreakp_0, offset aRemoveBreakp_1, 118h, \
   offset loc_4A1AB4, 0, <3>>; 10
		t_menu <offset aDisableBreakpo, offset aTemporarilyD_3, 11Ch, \
   offset loc_4A24DC, 0, <0>>; 11
		t_menu <offset aEnableBreakpoi, offset aReEnableBreakp, 11Ch, \
   offset loc_4A24DC, 0, <1>>; 12
		t_menu <offset aBreakpointOnAl, offset aSetUnconditi_7, 25Ch, \
   offset loc_4A1CD4, 0, <0>>; 13
		t_menu <offset aConditionalB_2, offset aSetOrEditCo_15, 25Dh, \
   offset loc_4A1CD4, 0, <1>>; 14
		t_menu <offset aConditionalL_0, offset aSetOrEditCo_12, 25Eh, \
   offset loc_4A1CD4, 0, <2>>; 15
		t_menu <offset aRemoveBreak_13, offset aRemoveBreak_14, 25Fh, \
   offset loc_4A1CD4, 0, <3>>; 16
		t_menu <offset aBreakpointOn_1, offset aSetUnconditi_6, 260h, \
   offset loc_4A20A0, 0, <0>>; 17
		t_menu <offset aConditionalB_3, offset aSetOrEditCon_0, 261h, \
   offset loc_4A20A0, 0, <1>>; 18
		t_menu <offset aConditionalL_6, offset aSetOrEditCon_1, 262h, \
   offset loc_4A20A0, 0, <2>>; 19
		t_menu <offset aRemoveBreak_12, offset aRemoveBreak_15, 263h, \
   offset loc_4A20A0, 0, <3>>; 20
		t_menu <offset aSearch_7, $CTW0(""), 0, 0, 0, <0>>; 21
		t_menu <offset asc_5508B0, $CTW0(""), 0, 0, \
   offset stru_518B94, <0>>; 22
		t_menu <offset aDeleteTab, offset aDeleteTabFromT, 0, \
   offset loc_4A2560, 0, <0>>; 23
		t_menu <offset aMoveTabToFront, offset aMoveTabIntoThe, 0, \
   offset loc_4A25C0, 0, <0>>; 24
		t_menu	<0>
aAddress:				; DATA XREF: .text:004A094Fo
		unicode	0, <Address>,0
aAddressOfFound:
		unicode	0, <Address of found item>,0
aCommand:
		unicode	0, <Command>,0
aDisassembledCo:
		unicode	0, <Disassembled command>,0
aComments:				; DATA XREF: .text:004A3DD4o
		unicode	0, <Comments>,0
aAddressOfFou_0:
		unicode	0, <Address of found sequence>,0
aFirstCommand:
		unicode	0, <First command>,0
aDisassembledFi:
		unicode	0, <Disassembled first command in the sequence>,0
aAddressOfSwitc:
		unicode	0, <Address of switch>,0
aType_0:
		unicode	0, <Type>,0
aSuggestedTypeO:
		unicode	0, <Suggested type of switch>,0
aBranches:
		unicode	0, <Branches>,0
aNumberOfBranch:
		unicode	0, <Number of branches>,0
aCases_2:
		unicode	0, <Cases>,0
aListOfCases:
		unicode	0, <List of cases>,0
aDest_0:
		unicode	0, <Dest>,0
aAddressOfCallD:
		unicode	0, <Address of call destination>,0
aDestName:
		unicode	0, <Dest name>,0
aCallDestinat_0:
		unicode	0, <Call destination>,0
aCommentsAndImp:
		unicode	0, <Comments and important call arguments>,0
aAddressOfFou_1:
		unicode	0, <Address of found modification>,0
aModifiedComm_0:
		unicode	0, <Modified command>,0
aFirstModifiedC:
		unicode	0, <First modified command>,0
aOriginalComman:
		unicode	0, <Original command>,0
aFirstOriginalC:
		unicode	0, <First original command>,0
aAddressOfFou_2:
		unicode	0, <Address of found procedure \{entry point\}>,0
aLocal_1:
		unicode	0, <Local>,0
aNumberOfLocalC:
		unicode	0, <Number of local calls \{from the same module\}>,0
aGlobal:
		unicode	0, <Global>,0
aNumberOfInterm:
		unicode	0, <Number of intermodular calls>,0
aNoItemsFound:				; DATA XREF: .text:004A0E73o
		unicode	0, <No items found>,0
aNoSearchResult:			; DATA XREF: .text:004A1103o
		unicode	0, <No search results>,0
aSearching:				; DATA XREF: .text:004A282Co
		unicode	0, <Searching - >,0
aSearchInterrup:			; DATA XREF: .text:loc_4A2895o
		unicode	0, <Search interrupted>,0
aFound1Referenc:			; DATA XREF: .text:004A2DCBo
		unicode	0, <Found 1 reference>,0
aFoundIReferenc:			; DATA XREF: .text:004A2DF7o
		unicode	0, <Found !%i references>,0
aIncomplete:				; DATA XREF: .text:004A2E1Bo
		unicode	0, < \{incomplete\}>,0
aRefsS:					; DATA XREF: .text:004A2E4Do
		unicode	0, <Refs !%s>,0
aFound1String:				; DATA XREF: .text:004A355Ao
		unicode	0, <Found 1 string>,0
aFoundIStringsA:			; DATA XREF: .text:004A3586o
		unicode	0, <Found !%i strings and references>,0
aStringsS:				; DATA XREF: .text:004A35DCo
		unicode	0, <Strings !%s>,0
aGuidsS:				; DATA XREF: .text:004A3C75o
		unicode	0, <GUIDs !%s>,0
aFound1Comment:				; DATA XREF: .text:004A3D86o
		unicode	0, <Found 1 comment>,0
aFoundIComments:			; DATA XREF: .text:004A3DAEo
		unicode	0, <Found !%i comments>,0
aFound1KnownPro:			; DATA XREF: .text:004A3FCEo
		unicode	0, <Found 1 known procedure>,0
aFoundIProcedur:			; DATA XREF: .text:004A3FF7o
		unicode	0, <Found !%i procedures>,0
aProceduresS:				; DATA XREF: .text:004A4019o
		unicode	0, <Procedures !%s>,0
aFound1Switch:				; DATA XREF: .text:004A4142o
		unicode	0, <Found 1 switch>,0
aFoundISwitches:			; DATA XREF: .text:004A416Bo
		unicode	0, <Found !%i switches>,0
aSwitchesS:				; DATA XREF: .text:004A418Ao
		unicode	0, <Switches !%s>,0
aFloatsS:				; DATA XREF: .text:004A4869o
		unicode	0, <Floats !%s>,0
aEnterConstantO:			; DATA XREF: .text:004A4993o
		unicode	0, <Enter constant or expression to search for>,0
aUnableToRead_4:			; DATA XREF: .text:004A4AC4o
		unicode	0, <Unable to read memory of debugged process>,0
aEnterFloatin_1:			; DATA XREF: .text:004A4BF7o
		unicode	0, <Enter floating-point constant to search for>,0
aSpecifyAssembl:			; DATA XREF: .text:004A5643o
		unicode	0, <Specify assembler search model>,0
aSpecifySequenc:			; DATA XREF: .text:004A5677o
		unicode	0, <Specify sequence of assembler search models>,0
aFound1Command:				; DATA XREF: .text:004A5B02o
		unicode	0, <Found 1 command>,0
aFoundICommands:			; DATA XREF: .text:004A5B2Co
		unicode	0, <Found !%i commands>,0
aFound1Sequence:			; DATA XREF: .text:004A5B54o
		unicode	0, <Found 1 sequence>,0
aFoundISequence:			; DATA XREF: .text:004A5B7Eo
		unicode	0, <Found !%i sequencess>,0
aCommandsS:				; DATA XREF: .text:004A5BD5o
		unicode	0, <Commands !%s>,0
aSequencesS:				; DATA XREF: .text:004A5C1Ao
		unicode	0, <Sequences !%s>,0
aModuleIsNotBac:			; DATA XREF: .text:004A64D2o
		unicode	0, <Module is not backuped>,0
aFound1Modifica:			; DATA XREF: .text:004A6836o
		unicode	0, <Found 1 modification>,0
aFoundIModifica:			; DATA XREF: .text:004A6862o
		unicode	0, <Found !%i modifications>,0
aModsS:					; DATA XREF: .text:004A68B8o
		unicode	0, <Mods !%s>,0
aNoBackup:				; DATA XREF: .text:004A697Ao
		unicode	0, <No backup>,0
; wchar_t src
src:					; DATA XREF: .text:004A6C18o
		unicode	0, <CALL ANY>,0
aIntermodularCa:			; DATA XREF: .text:004A70E3o
		unicode	0, <Intermodular calls in !%s>,0
aFound1Intermod:			; DATA XREF: .text:004A7107o
		unicode	0, <Found 1 intermodular call>,0
aFoundIIntermod:			; DATA XREF: .text:004A7133o
		unicode	0, <Found !%i intermodular calls>,0
aCallsS:				; DATA XREF: .text:004A7189o
		unicode	0, <Calls !%s>,0
aEnterSearchPat:			; DATA XREF: .text:004A7306o
		unicode	0, <Enter search pattern>,0
aSearchingPress:			; DATA XREF: .text:004A74A8o
		unicode	0, <Searching - $ - press SPACE to interrupt>,0
; wchar_t asc_54FB80
asc_54FB80:				; DATA XREF: .text:004A7837o
		unicode	0, <,>,0
; wchar_t aException_0
aException_0:				; DATA XREF: .text:004A7860o
		unicode	0, <EXCEPTION>,0
; wchar_t aMessage_0
aMessage_0:				; DATA XREF: .text:004A7882o
		unicode	0, <MESSAGE>,0
; wchar_t asc_54FBA8
asc_54FBA8:				; DATA XREF: .text:004A78CDo
		unicode	0, <!%X>,0
; wchar_t asc_54FBAE
asc_54FBAE:				; DATA XREF: .text:004A78E8o
		unicode	0, <-!%X>,0
aEnterSearchS_1:			; DATA XREF: .text:004A18FBo
		unicode	0, <Enter search string>,0
aItemNotFound_2:			; DATA XREF: .text:loc_4A1A92o
		unicode	0, <Item not found>,0
aUnableToSetB_3:			; DATA XREF: .text:004A1BEBo
		unicode	0, <Unable to set breakpoint>,0
aLowMemory_5:				; DATA XREF: .text:004A1E0Eo
		unicode	0, <Low memory>,0
aUnableToSetAll:			; DATA XREF: .text:004A1F22o
		unicode	0, <Unable to set all breakpoints>,0
aUnableToRemo_5:			; DATA XREF: .text:004A2067o
		unicode	0, <Unable to remove all breakpoints>,0
; wchar_t asc_54FCC2
asc_54FCC2:				; DATA XREF: .text:004A220Co
		unicode	0, <\{\}>,0
asc_54FCC8:				; DATA XREF: .data:stru_54ED9Co
		unicode	0, <\:>,0
aFollowInDisa_0:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Follow in Disassembler>,0
aFollowSelec_13:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Follow selected item in CPU Disassembler pane>,0
aFollowPrevio_5:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Follow previous>,0
aFollowPrevio_7:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Follow previous item in CPU Disassembler pane>,0
aFollowNext_1:				; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Follow next>,0
aFollowNextItem:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Follow next item in CPU Disassembler pane>,0
aSearchForText:				; DATA XREF: .data:stru_54ED9Co
		unicode	0, <|Search for text>,0
aFindTextSubstr:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Find text substring in the referenced strings>,0
aSearchAgain:				; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Search again>,0
aRepeatSearch_3:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Repeat search in the specified direction>,0
aSearchReverse:				; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Search reverse>,0
aRepeatSearch_4:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Repeat search in the direction opposite to specified>,0
aBreakpoint_0:				; DATA XREF: .data:stru_54ED9Co
		unicode	0, <|Breakpoint>,0
aSetUncondition:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Set unconditional breakpoint on selected command>,0
aConditionalB_8:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Conditional breakpoint...>,0
aSetOrEditCo_13:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Set or edit conditional breakpoint>,0
aConditionalLog:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Conditional log...>,0
aSetOrEditCo_14:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Set or edit conditional logging breakpoint>,0
aRemoveBreakp_0:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Remove breakpoint>,0
aRemoveBreakp_1:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Remove breakpoint from selected command>,0
aDisableBreakpo:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Disable breakpoint>,0
aTemporarilyD_3:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Temporarily disable breakpoint on selected command>,0
aEnableBreakpoi:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Enable breakpoint>,0
aReEnableBreakp:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Re-enable breakpoint on selected command>,0
aBreakpointOnAl:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <|Breakpoint on all commands>,0
aSetUnconditi_7:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Set unconditional breakpoint on all found commands>,0
aConditionalB_2:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Conditional breakpoint on all commands>,0
aSetOrEditCo_15:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Set or edit conditional breakpoint on all found commands>,0
aConditionalL_0:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Conditional log on all commands>,0
aSetOrEditCo_12:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Set or edit conditional logging breakpoint on all found c>
		unicode	0, <ommands>,0
aRemoveBreak_13:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Remove breakpoint from all commands>,0
aRemoveBreak_14:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Remove breakpoint from all found commands>,0
aBreakpointOn_1:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <|Breakpoint on all calls to>,0
aSetUnconditi_6:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Set unconditional breakpoint on all found calls to select>
		unicode	0, <ed function>,0
aConditionalB_3:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Conditional breakpoint on all calls to>,0
aSetOrEditCon_0:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Set or edit conditional breakpoint on all found calls to >
		unicode	0, <selected function>,0
aConditionalL_6:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Conditional log on all calls to>,0
aSetOrEditCon_1:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Set or edit conditional logging breakpoint on all found c>
		unicode	0, <alls to selected function>,0
aRemoveBreak_12:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Remove breakpoint from all calls to>,0
aRemoveBreak_15:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Remove breakpoint from all found calls to selected functi>
		unicode	0, <on>,0
aSearch_7:				; DATA XREF: .data:stru_54ED9Co
		unicode	0, <|*SEARCH>,0
asc_5508B0:				; DATA XREF: .data:stru_54ED9Co
		unicode	0, <|>,0
aDeleteTab:				; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Delete tab>,0
aDeleteTabFromT:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Delete tab from the search window>,0
aMoveTabToFront:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Move tab to front>,0
aMoveTabIntoThe:			; DATA XREF: .data:stru_54ED9Co
		unicode	0, <Move tab into the first position>,0
aSearch:				; DATA XREF: .text:loc_4A7F09o
		unicode	0, <Search - >,0
aNoMatch:				; DATA XREF: .text:004A7F54o
		unicode	0, < - No match>,0
aExceptions:				; DATA XREF: .text:004A821Co
		unicode	0, <Exceptions>,0
aMessages:				; DATA XREF: .text:004A824Co
		unicode	0, <Messages>,0
aAscii_5:				; DATA XREF: .text:004A8280o
		unicode	0, <ASCII>,0
; wchar_t aI__2
aI__2:					; DATA XREF: .text:004A833Do
		unicode	0, <!%i.>,0
; wchar_t aI__3
aI__3:					; DATA XREF: .text:004A8384o
		dw 3Eh
		unicode	0, <!%i.>,0
; wchar_t aI_7
aI_7:					; DATA XREF: .text:004A83ABo
		unicode	0, <!%i>,0
aOriginalSelect:			; DATA XREF: .text:004A8596o
		unicode	0, <Original selection>,0
aSearchTab:
		unicode	0, <Search tab>,0
; wchar_t aSearch_0
aSearch_0:				; DATA XREF: .text:004A893Fo
		unicode	0, <Search>,0
; const	WCHAR aIco_r_0
aIco_r_0:				; DATA XREF: .text:004A8974o
		unicode	0, <ICO_R>,0
		db 0
		db    0
; wchar_t a_udd
a_udd:					; DATA XREF: .text:004A91A6o
		unicode	0, <.udd>,0
; wchar_t aSSS_0
aSSS_0:					; DATA XREF: .text:004A91DCo
		unicode	0, <!%s\\!%s!%s>,0
; wchar_t aSSSS
aSSSS:					; DATA XREF: .text:004A9211o
		unicode	0, <!%s!%s!%s!%s>,0
; wchar_t aWb
aWb:					; DATA XREF: .text:loc_4A921Fo
		unicode	0, <wb>,0
; const	WCHAR aKnownrestype
aKnownrestype:				; DATA XREF: .text:loc_4A944Ao
		unicode	0, <KNOWNRESTYPE>,0
; wchar_t aRb
aRb:					; DATA XREF: .text:loc_4A96A6o
		unicode	0, <rb>,0
		db 0
		db    0
; wchar_t asc_550A98
asc_550A98:				; DATA XREF: .text:004A9944o
		unicode	0, <\\>,0
; wchar_t asc_550A9C
asc_550A9C:				; DATA XREF: .text:004A998Eo
		unicode	0, <*>,0
; wchar_t a_udd_2
a_udd_2:				; DATA XREF: .text:004A99B0o
		unicode	0, <.udd>,0
; char aModuleInfoFile[]
aModuleInfoFile	db 'Module info file v2.01g',0 ; DATA XREF: .text:004A9B17o
; wchar_t a_03i
a_03i:					; DATA XREF: .text:004A9CCBo
		unicode	0, <_!%03i>,0
aSelect_uddFile:			; DATA XREF: .text:004A9D99o
		unicode	0, <Select .udd file>,0
; wchar_t a_udd_1
a_udd_1:				; DATA XREF: .text:004A9D89o
		unicode	0, <*.udd>,0
aSaving_uddData:			; DATA XREF: .text:004A9E37o
		unicode	0, <Saving .udd data for >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
aInvalidOrMissi:			; DATA XREF: .text:004AB33Fo
		unicode	0, <Invalid or missing file >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
aModuleSLoading:			; DATA XREF: .text:004AB365o
		unicode	0, <Module >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, < - loading .udd data>,0
aModuleSReloadi:			; DATA XREF: .text:004AB390o
		unicode	0, <Module >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, < - reloading .udd data>,0
aModifiedExecut:			; DATA XREF: .text:004AB67Do
		unicode	0, <Modified executable>,0
aLengthOfFileSD:			; DATA XREF: .text:004AB671o
		unicode	0, <Length of file >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, < differs from that specified in .udd file. Old breakpoint>
		unicode	0, <s, labels and comments are probably no longer valid. Do y>
		unicode	0, <ou want to use old data from the .udd file!?>,0
aFileSWasModifi:			; DATA XREF: .text:004AB7BEo
		unicode	0, <File >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, < was modified since last debugging session. It may happen>
		unicode	0, < that analysis data, breakpoints, labels and comments no >
		unicode	0, <longer apply. Do you want to use old data saved in the .u>
		unicode	0, <dd file!?>,0
aCorruptedBreak:			; DATA XREF: .text:004ACDCBo
		unicode	0, <Corrupted breakpoints>,0
aModuleSContain:			; DATA XREF: .text:004ACDBFo
		unicode	0, <Module >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, < contains corrupted breakpoints, where the first byte of >
		unicode	0, <the current command differs from that in the previous deb>
		unicode	0, <ugging session. This happens when program was recompiled,>
		unicode	0, < the code is self-modifiable >
		unicode 0, <\{for example, self-extractin>
		unicode	0, <g\} or when breakpoint was set on the patched code.>
		dw 2 dup(0Ah)
		unicode	0, <For security reasons, OllyDbg will disable suspicious INT>
		unicode	0, <3 breakpoints. You can re-enable them in the Breakpoints >
		unicode	0, <window.>,0
aErrorInSAnalys:			; DATA XREF: .text:004ACDF9o
		unicode	0, <Error in >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, <, analysis data for module !%s is incomplete \{record !%08X\}>
		db 0
		db    0
aStructureSAt:				; DATA XREF: .text:004ACE95o
		unicode	0, <Structure !%s at >,0
		db 0
		db    0
stru_55130C	t_menu <offset asc_55154C, 0, 0, offset loc_4AD390, 0, <0>>; 0
		t_menu <offset aUpdate_4, offset aUpdateConten_0, 0CAh, \ ; \=\=
   offset loc_4AD404, 0, <0>>; 1
		t_menu <offset aSelectThread_3, offset aSelectThread_4, 0, 0, \
   offset dword_586216, <0>>; 2
		t_menu <offset aFollowInCpuS_0, offset aFollowItemInTh, 2D0h, \
   offset loc_4AD440, 0, <0>>; 3
		t_menu <offset aFollowProced_0, offset aFollowProced_1, 2D1h, \
   offset loc_4AD4A8, 0, <0>>; 4
		t_menu <offset aFollowCaller, offset aGoToTheCallIns, 2D2h, \
   offset loc_4AD4A8, 0, <1>>; 5
		t_menu <offset aFollowStackF_1, offset aFollowStackFra, 2D3h, \
   offset loc_4AD440, 0, <1>>; 6
		t_menu <offset aFollowDouble_2, offset aFollowStackD_1, 2D4h, \
   offset loc_4AD510, 0, <0>>; 7
		t_menu <offset aExecuteTillR_0, offset aRunApplicati_0, 11Bh, \
   offset loc_4AD57C, 0, <0>>; 8
		t_menu <offset aBreakpointOnPr, offset aSetUnconditi_0, 118h, \
   offset loc_4AD638, 0, <0>>; 9
		t_menu <offset aConditionalB_7, offset aSetOrEditCo_16, 119h, \
   offset loc_4AD638, 0, <1>>; 10
		t_menu <offset aConditionalL_2, offset aSetOrEditLog_0, 11Ah, \
   offset loc_4AD638, 0, <2>>; 11
		t_menu <offset aRemoveBreakp_2, offset aRemoveBreakp_3, 118h, \
   offset loc_4AD638, 0, <3>>; 12
		t_menu <offset aBreakpointOnCa, offset aSetUnconditi_1, 2D5h, \
   offset loc_4AD638, 0, <4>>; 13
		t_menu <offset aConditionalB_4, offset aSetOrEditCon_2, 2D6h, \
   offset loc_4AD638, 0, <5>>; 14
		t_menu <offset aConditionalL_2, offset aSetOrEditLoggi, 2D7h, \
   offset loc_4AD638, 0, <6>>; 15
		t_menu <offset aRemoveBreakp_4, offset aRemoveBreakp_5, 2D5h, \
   offset loc_4AD638, 0, <7>>; 16
		t_menu <offset aCallstack, $CTW0(""), 0, 0, 0, <0>>; 17
		t_menu <offset asc_551E22, $CTW0(""), 0, 0, \
   offset stru_518B94, <0>>; 18
aUnableToSetTem:			; DATA XREF: .text:004AD5EBo
		unicode	0, <Unable to set temporary breakpoint>,0
aUnableToSetB_8:			; DATA XREF: .text:004AD741o
		unicode	0, <Unable to set breakpoint>,0
asc_55154C:				; DATA XREF: .data:stru_55130Co
		unicode	0, <\:>,0
aUpdate_4:				; DATA XREF: .data:stru_55130Co
		unicode	0, <\AUpdate>,0
aUpdateConten_0:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Update contents of the Call stack window>,0
aSelectThread_3:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Select thread>,0
aSelectThread_4:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Select thread to display>,0
aFollowInCpuS_0:			; DATA XREF: .data:stru_55130Co
		unicode	0, <|Follow in CPU stack>,0
aFollowItemInTh:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Follow item in the CPU Stack>,0
aFollowProced_0:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Follow procedure>,0
aFollowProced_1:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Follow procedure in the CPU Disassembler>,0
aFollowCaller:				; DATA XREF: .data:stru_55130Co
		unicode	0, <Follow caller>,0
aGoToTheCallIns:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Go to the call instruction>,0
aFollowStackF_1:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Follow stack frame>,0
aFollowStackFra:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Follow stack frame \{EBP register\} in the CPU Stack>,0
aFollowDouble_2:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Follow doubleword in CPU Dump>,0
aFollowStackD_1:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Follow stack doubleword in the CPU Dump>,0
aExecuteTillR_0:			; DATA XREF: .data:stru_55130Co
		unicode	0, <|Execute till \Areturn>,0
aRunApplicati_0:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Run application till return from the selected call is rea>
		unicode	0, <ched>,0
aBreakpointOnPr:			; DATA XREF: .data:stru_55130Co
		unicode	0, <|Breakpoint on procedure>,0
aSetUnconditi_0:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Set unconditional breakpoint on the entry point of the pr>
		unicode	0, <ocedure>,0
aConditionalB_7:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Conditional breakpoint...>,0
aSetOrEditCo_16:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Set or edit conditional breakpoint on entry point of the >
		unicode	0, <procedure>,0
aConditionalL_2:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Conditional log...>,0
aSetOrEditLog_0:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Set or edit logging breakpoint on the entry point of the >
		unicode	0, <procedure>,0
aRemoveBreakp_2:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Remove breakpoint>,0
aRemoveBreakp_3:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Remove breakpoint from the entry point of the procedure>,0
aBreakpointOnCa:			; DATA XREF: .data:stru_55130Co
		unicode	0, <|Breakpoint on call>,0
aSetUnconditi_1:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Set unconditional breakpoint on the call to the procedure>
aConditionalB_4:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Conditional breakpoint on call...>,0
aSetOrEditCon_2:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Set or edit conditional breakpoint on the call to the pro>
		unicode	0, <cedure>,0
aSetOrEditLoggi:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Set or edit logging breakpoint on the call to the procedu>
		unicode	0, <re>,0
aRemoveBreakp_4:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Remove breakpoint from call>,0
aRemoveBreakp_5:			; DATA XREF: .data:stru_55130Co
		unicode	0, <Remove breakpoint from the call to the procedure>,0
aCallstack:				; DATA XREF: .data:stru_55130Co
		unicode	0, <|*CALLSTACK>,0
asc_551E22:				; DATA XREF: .data:stru_55130Co
		unicode	0, <|>,0
; wchar_t asc_551E26
asc_551E26:				; DATA XREF: .text:004AE1FCo
		unicode	0, < = >,0
aCallStack_2:				; DATA XREF: .text:loc_4AE2B0o
		unicode	0, <Call stack>,0
aOf:					; DATA XREF: .text:004AE2F2o
		unicode	0, < of >,0
; wchar_t a____12
;a!?!?!?_12:				; DATA XREF: .text:004AE489o
		unicode	0, <!?!?!?>,0
; wchar_t asc_551E56
asc_551E56:				; DATA XREF: .text:loc_4AE54Ao
		unicode	0, <  >,0
aAddressOfItemOnTheStack:
		unicode	0, <Address of item on the stack>,0
aData_0:
		unicode	0, <Data>,0
aDataOnTheSpecifiedAddress:
		unicode	0, <Data on the specified address>,0
aProcedure:
		unicode	0, <Procedure>,0
aProcedureNameOrArgumentDec:
		unicode	0, <Procedure name or argument decoding>,0
aCalledFrom:
		unicode	0, <Called from>,0
aAddressOfCalle:
		unicode	0, <Address of caller>,0
aFrame:
		unicode	0, <Frame>,0
aStackFrame:
		unicode	0, <Stack frame>,0
aIco_k:
		unicode	0, <ICO_K>,0
dword_551FA4	dd 10801h		; 0 ; DATA XREF: .text:004BEE9Ao
		dd 32001h		; 1
		dd 20801h		; 2
		dd 11001h		; 3
		dd 34001h		; 4
		dd 21001h		; 5
		dd 20801h		; 6
		dd 32001h		; 7
		dd 0E0801h		; 8
		dd 21001h		; 9
		dd 34001h		; 10
		dd 0E1001h		; 11
		dd 0E0801h		; 12
		dd 32001h		; 13
		dd 10801h		; 14
		dd 0E1001h		; 15
		dd 34001h		; 16
		dd 11001h		; 17
		dd 32001h		; 18
		dd 42002h		; 19
		dd 32001h		; 20
		dd 34001h		; 21
		dd 44002h		; 22
		dd 34001h		; 23
		dd 42002h		; 24
		dd 10801h		; 25
		dd 42002h		; 26
		dd 44002h		; 27
		dd 11001h		; 28
		dd 44002h		; 29
		dd 50802h		; 30
		dd 60802h		; 31
		dd 60802h		; 32
		dd 60802h		; 33
		dd 70802h		; 34
		dd 70802h		; 35
		dd 70802h		; 36
		dd 50802h		; 37
		dd 50802h		; 38
		dd 50404h		; 39
		dd 60404h		; 40
		dd 60404h		; 41
		dd 60404h		; 42
		dd 70404h		; 43
		dd 70404h		; 44
		dd 70404h		; 45
		dd 50404h		; 46
		dd 50404h		; 47
		dd 80404h		; 48
		dd 80208h		; 49
		dd 80208h		; 50
		dd 80208h		; 51
		dd 8010Ah		; 52
		dd 8010Ah		; 53
		dd 8010Ah		; 54
		dd 80404h		; 55
		dd 80404h		; 56
		dd 90104h		; 57
		dd 0A0104h		; 58
		dd 0A0104h		; 59
		dd 0A0104h		; 60
		dd 0B0104h		; 61
		dd 0B0104h		; 62
		dd 0B0104h		; 63
		dd 90104h		; 64
		dd 0A0104h		; 65
dword_5520AC	dd 10801h		; 0 ; DATA XREF: .text:004BEE8Co
		dd 32001h		; 1
		dd 20801h		; 2
		dd 20801h		; 3
		dd 32001h		; 4
		dd 10801h		; 5
		dd 32001h		; 6
		dd 41002h		; 7
		dd 32001h		; 8
		dd 42002h		; 9
		dd 10801h		; 10
		dd 42002h		; 11
		dd 50402h		; 12
		dd 60402h		; 13
		dd 60402h		; 14
		dd 60402h		; 15
		dd 70402h		; 16
		dd 70402h		; 17
		dd 70402h		; 18
		dd 50402h		; 19
		dd 50402h		; 20
		dd 50204h		; 21
		dd 60204h		; 22
		dd 60204h		; 23
		dd 60204h		; 24
		dd 70204h		; 25
		dd 70204h		; 26
		dd 70204h		; 27
		dd 50204h		; 28
		dd 50204h		; 29
		dd 80104h		; 30
		dd 80108h		; 31
		dd 80108h		; 32
		dd 80108h		; 33
		dd 8010Ah		; 34
		dd 8010Ah		; 35
		dd 8010Ah		; 36
		dd 80104h		; 37
		dd 80104h		; 38
		dd 90104h		; 39
		dd 0A0104h		; 40
		dd 0A0104h		; 41
		dd 0A0104h		; 42
		dd 0B0104h		; 43
		dd 0B0104h		; 44
		dd 0B0104h		; 45
		dd 90104h		; 46
		dd 0A0104h		; 47
dword_55216C	dd 1			; DATA XREF: .text:loc_4B3D5Dw
off_552170	dd offset aSource+0Bh	; DATA XREF: .data:stru_5532C8o
					; \=\=
		dd offset aSource+0Bh	; \=\=
		dd 0
		dd 0
dword_552180	dd 0			; DATA XREF: .text:004B0A58w
		dd 0
off_552188	dd offset aSource+0Bh	; DATA XREF: .data:00553748o
					; \=\=
		dd offset aSource+0Bh	; \=\=
		dd 0
		dd 0
dword_552198	dd 0			; DATA XREF: .text:004B0A64w
		dd 0
stru_5521A0	t_menu <offset aCreateBackup_1, offset aCreateBackup_2, 0F0h, \
   offset loc_4B0B00, 0, <0>>; 0 ;	\=Create	backup\=
		t_menu <offset aReadExecutable, offset aCreateBackupFr, 0, \
   offset loc_4B0C7C, 0, <0>>; 1
		t_menu <offset aViewBackup, offset aViewBackupCopy, 0F1h, \
   offset loc_4B0D6C, 0, <1>>; 2
		t_menu <offset aViewCurrentDat, offset aFinishBackupVi, 0F1h, \
   offset loc_4B0D6C, 0, <0>>; 3
		t_menu <offset aUpdateBackup, offset aUpdateBackupCo, 0F0h, \
   offset loc_4B0B00, 0, <1>>; 4
		t_menu <offset aDeleteBackup, offset aDeleteBackupCo, 0, \
   offset loc_4B0DEC, 0, <0>>; 5
		t_menu <offset aLoadBackupFrom, offset aReadOldBackupF, 0, \
   offset loc_4B0E7C, 0, <0>>; 6
		t_menu <offset aSaveBackupTo_0, offset aSaveBackupTo_1, 0, \
   offset loc_4B0E7C, 0, <1>>; 7
		t_menu <offset aSaveDataToFile, offset aSaveCurrentD_0, 0, \
   offset loc_4B0E7C, 0, <2>>; 8
		t_menu	<0>
stru_552290	t_menu <offset aUndoSelection, offset aUndoModifica_2, 0FAh, \
   offset loc_4B1454, 0, <0>>; 0 ;	\=Undo selection\=
		t_menu <offset aCopyAsTable, offset aCopySelectio_1, 0CBh, \
   offset loc_4B15C0, 0, <0>>; 1
		t_menu <offset aCopyBackupAsTa, offset aCopySelectio_1, 0CBh, \
   offset loc_4B15C0, 0, <1>>; 2
		t_menu <offset aCopyAddress_0, offset aCopyAddressOfS, 0FBh, \
   offset loc_4B16BC, 0, <0>>; 3
		t_menu <offset aBinaryCopy, offset aCopySelectedDa, 0FCh, \
   offset loc_4B15C0, 0, <2>>; 4
		t_menu <offset aBinaryCopyOfBa, offset aCopySelectedDa, 0FCh, \
   offset loc_4B15C0, 0, <3>>; 5
		t_menu <offset aBinaryPaste, offset aPasteDataFromC, 0FDh, \
   offset loc_4B17B8, 0, <0>>; 6
		t_menu <offset aEditWord___, offset aEditFirstSel_0, 0FEh, \
   offset loc_4B1E48, 0, <70802h>>; 7
		t_menu <offset aEditDoubleword, offset aEditFirstSel_1, 0FEh, \
   offset loc_4B1E48, 0, <70404h>>; 8
		t_menu <offset aEdit32BitFlo_1, offset aEditSelected32, 0FEh, \
   offset loc_4B1E48, 0, <80404h>>; 9
		t_menu <offset aEdit64BitFlo_1, offset aEditSelected64, 0FEh, \
   offset loc_4B1E48, 0, <80208h>>; 10
		t_menu <offset aEdit80BitFlo_1, offset aEdit80BitLongD, 0FEh, \
   offset loc_4B1E48, 0, <8010Ah>>; 11
		t_menu <offset aBinaryEdit___, offset aEditSelectionI, 0FFh, \
   offset loc_4B1A74, 0, <0>>; 12
		t_menu <offset aFillWithZeros, offset aFillSelectio_4, 100h, \
   offset loc_4B2424, 0, <0>>; 13
		t_menu <offset aFillWithNops, offset aFillSelectio_5, 101h, \
   offset loc_4B2424, 0, <90h>>; 14
		t_menu <offset aFillWithFfS, offset aFillSelectio_0, 102h, \
   offset loc_4B2424, 0, <0FFh>>; 15
		t_menu <offset aSelectAll_1, offset aSelectWholeDat, 103h, \
   offset loc_4B2600, 0, <0>>; 16
		t_menu <offset aSelectProced_0, offset aSelectCurrentP, 104h, \
   offset loc_4B2790, 0, <0>>; 17
		t_menu <offset aSelectStruct_1, offset aSelectCurrentS, 104h, \
   offset loc_4B2790, 0, <1>>; 18
		t_menu <offset aCopyToExecutab, offset aCopySelectio_2, 105h, \
   offset loc_4B28DC, 0, <1>>; 19
		t_menu <offset aCopyAllModif_0, offset aCopyAllModif_1, 10Bh, \
   offset loc_4B2BF0, 0, <0>>; 20
		t_menu	<0>
stru_5524A0	t_menu <offset aToggle_0, offset aToggleInt3Br_0, 118h, \
   offset loc_4B331C, 0, <0>>; 0 ;	\=\=
		t_menu <offset aConditional___, offset aSetOrEditCon_3, 119h, \
   offset loc_4B331C, 0, <1>>; 1
		t_menu <offset aConditionalL_3, offset aSetOrEditCo_18, 11Ah, \
   offset loc_4B331C, 0, <2>>; 2
		t_menu <offset aRunToSelecti_0, offset aRunApplication, 11Bh, \
   offset loc_4B34F4, 0, <0>>; 3
		t_menu <offset aDisable_0, offset aTemporarilyD_2, 11Ch, \
   offset loc_4B359C, 0, <0>>; 4
		t_menu <offset aEnable_0, offset aReEnableSelect, 11Ch, \
   offset loc_4B359C, 0, <1>>; 5
		t_menu <offset aMemory___, offset aSetSimpleMemor, 11Dh, \
   offset loc_4B3654, 0, <0>>; 6
		t_menu <offset aMemoryLog___, offset aSetOrEditCon_4, 11Eh, \
   offset loc_4B3654, 0, <1>>; 7
		t_menu <offset aMemoryDisable, offset aTemporarilyD_4, 11Fh, \
   offset loc_4B37F0, 0, <0>>; 8
		t_menu <offset aMemoryEnable, offset aReEnableTheSel, 11Fh, \
   offset loc_4B37F0, 0, <1>>; 9
		t_menu <offset aMemoryDelete, offset aRemoveSelect_2, 120h, \
   offset loc_4B37F0, 0, <2>>; 10
		t_menu <offset aHardware___, offset aSetSimpleHardw, 121h, \
   offset loc_4B389C, 0, <0>>; 11
		t_menu <offset aHardwareLog___, offset aSetOrEditCo_17, 122h, \
   offset loc_4B389C, 0, <1>>; 12
		t_menu <offset aHardwareDisabl, offset aTemporarilyDis, 123h, \
   offset loc_4B3A14, 0, <0>>; 13
		t_menu <offset aHardwareEnable, offset aReEnableTheS_0, 123h, \
   offset loc_4B3A14, 0, <1>>; 14
		t_menu <offset aHardwareDelete, offset aRemoveSelected, 124h, \
   offset loc_4B3A14, 0, <2>>; 15
		t_menu <offset asc_557F78, offset aAddSelectionTo, 0, \
   offset loc_4B3ADC, 0, <0>>; 16
		t_menu <offset aSource+0Bh, offset aAddProcedureTh, 0, \
   offset loc_4B3ADC, 0, <1>>; 17
		t_menu	<0>
stru_552668	t_menu <offset aMemoryAddress, offset aFollowAddres_2, 0, \
   offset loc_4B4318, 0, <0>>; 0 ;	\=Memory	\Aaddress\=
		t_menu <offset aStringSource, offset aFollowRegister, 0, \
   offset loc_4B4318, 0, <1>>; 1
		t_menu <offset aStringDestinat, offset aFollowRegist_0, 0, \
   offset loc_4B4318, 0, <2>>; 2
		t_menu <offset aAddressConstan, offset aFollowAddressC, 0, \
   offset loc_4B4318, 0, <3>>; 3
		t_menu <offset aImmediateCon_0, offset aFollowImmediat, 0, \
   offset loc_4B4318, 0, <4>>; 4
		t_menu <offset aAddress_2, offset aFollowAddres_9, 0, \
   offset loc_4B4318, 0, <5>>; 5
		t_menu <offset aSelection, offset aRepeatSelectio, 0, \
   offset loc_4B44A4, 0, <0>>; 6
		t_menu	<0>
stru_552728	t_menu <offset aOrigin, offset aFollowEipOfCur, 12Eh, \
   offset loc_4B47E4, 0, <0>>; 0 ;	\=Origin\=
		t_menu <offset aExpression___, offset aSpecifyLocatio, 12Fh, \
   offset loc_4B485C, 0, <0>>; 1
		t_menu <offset aJumpOrCallToSe, offset aFollowOneOfKno, 130h, \
   offset loc_4B4A30, 0, <0>>; 2
		t_menu <offset aTableJumpDesti, offset aFollowOneOfK_2, 0, \
   offset loc_4B4A30, 0, <1>>; 3
		t_menu <offset aSwitchCase___, offset aFollowOneOfK_0, 131h, \
   offset loc_4B4A30, 0, <2>>; 4
		t_menu <offset aPreviousLocati, offset aGoToThePrevi_0, 132h, \
   offset loc_4B4BE4, 0, <0>>; 5
		t_menu <offset aNextLocation, offset aGoToTheNextL_0, 133h, \
   offset loc_4B4BE4, 0, <1>>; 6
		t_menu <offset aPreviousRunT_0, offset aGoToThePrevi_1, 134h, \
   offset loc_4B4D84, 0, <0>>; 7
		t_menu <offset aNextRunTraceRe, offset aGoToTheNextLoc, 135h, \
   offset loc_4B4D84, 0, <1>>; 8
		t_menu <offset aMsilCode, offset aGoToTheMsilCod, 0, \
   offset loc_4B4DF0, 0, <0>>; 9
		t_menu <offset aNativeCode_0, offset aGoToTheNativeC, 0, \
   offset loc_4B4E7C, 0, <0>>; 10
		t_menu <offset aPreviousProced, offset aGoToTheBegin_2, 136h, \
   offset loc_4B4F08, 0, <0>>; 11
		t_menu <offset aNextProcedure, offset aGoToTheBeginni, 137h, \
   offset loc_4B4F08, 0, <1>>; 12
		t_menu <offset aPreviousStruct, offset aGoToTheBegin_3, 136h, \
   offset loc_4B4F08, 0, <2>>; 13
		t_menu <offset aNextStructure, offset aGoToTheBegin_0, 137h, \
   offset loc_4B4F08, 0, <3>>; 14
		t_menu <offset aPreviousFrame, offset aGoToTheBegin_4, 136h, \
   offset loc_4B4FEC, 0, <0>>; 15
		t_menu <offset aNextFrame, offset aGoToTheBegin_1, 137h, \
   offset loc_4B4FEC, 0, <1>>; 16
		t_menu <offset aPreviousFoundI, offset aGoToThePrevi_2, 138h, \
   offset loc_4B51E4, 0, <0>>; 17
		t_menu <offset aNextFoundItem, offset aGoToTheNextFou, 139h, \
   offset loc_4B51E4, 0, <1>>; 18
		t_menu <offset aEsp_0, offset aGoToTheCurre_0, 1EEh, \
   offset loc_4B52C0, 0, <4>>; 19
		t_menu <offset aEbp, offset aGoToTheCurrent, 1EFh, offset loc_4B52C0, \
   0, <5>>		; 20
		t_menu <offset aExecutableFi_0, offset aFollowSelect_7, 13Ah, \
   offset loc_4B28DC, 0, <0>>; 21
		t_menu <0, 0, 0, 0, 0, <0>>; 22
stru_552950:		
		t_menu <offset aNames_0, offset aShowAllNamesDe, 17Ch, \
   offset loc_4B5580, 0, <0>>; 23
		t_menu <offset aCommand___, offset aFindCommandTha, 17Dh, \
   offset loc_4B55C4, 0, <0>>; 24
		t_menu <offset aSequenceOfComm, offset aFindSequence_0, 17Eh, \
   offset loc_4B55C4, 0, <1>>; 25
		t_menu <offset aConstant___, offset aFindCommandT_0, 17Fh, \
   offset loc_4B56D8, 0, <0>>; 26
		t_menu <offset aInteger___, offset aFindIntegerNum, 18Dh, \
   offset loc_4B57E8, 0, <0>>; 27
		t_menu <offset aFloatingPoin_2, offset aFindFloatingPo, 18Eh, \
   offset loc_4B5914, 0, <0>>; 28
		t_menu <offset aBinaryString__, offset aFindBinaryData, 180h, \
   offset loc_4B5A20, 0, <0>>; 29
		t_menu <offset aModification, offset aFindModifiedDa, 181h, \
   offset loc_4B5B20, 0, <0>>; 30
		t_menu <offset aSearchAgain_0, offset aRepeatSearch_0, 0DCh, \
   offset loc_4B5BFC, 0, <0>>; 31
		t_menu <offset aSearchRevers_0, offset aRepeatSearch_1, 0DDh, \
   offset loc_4B5BFC, 0, <1>>; 32
		t_menu <offset aAllIntermodula, offset aFindAllCalls_0, 182h, \
   offset loc_4B5D00, 0, <0>>; 33
		t_menu <offset aAllCommands___, offset aFindAllCommand, 183h, \
   offset loc_4B5D64, 0, <0>>; 34
		t_menu <offset aAllCommandSequ, offset aFindAllSequenc, 184h, \
   offset loc_4B5D64, 0, <1>>; 35
		t_menu <offset aAllConstants__, offset aFindAllComma_4, 185h, \
   offset loc_4B61D8, 0, <0>>; 36
		t_menu <offset aAllModificatio, offset aFindAllModific, 186h, \
   offset loc_4B631C, 0, <0>>; 37
		t_menu <offset aAllReferencedS, offset aFindAllRefer_0, 187h, \
   offset loc_4B64EC, 0, <0>>; 38
		t_menu <offset aAllReferencedG, offset aFindAllRefer_1, 188h, \
   offset loc_4B65B4, 0, <0>>; 39
		t_menu <offset aAllUserComment, offset aListAllUserDef, 189h, \
   offset loc_4B6678, 0, <0>>; 40
		t_menu <offset aAllFoundProced, offset aListCallDestin, 18Fh, \
   offset loc_4B66D8, 0, <0>>; 41
		t_menu <offset aAllFoundSwitch, offset aListAllSwitche, 18Ah, \
   offset loc_4B6794, 0, <0>>; 42
		t_menu <offset aAllFloatingCon, offset aFindAllRefer_2, 18Bh, \
   offset loc_4B6848, 0, <0>>; 43
		t_menu <offset aLastRecordInRu, offset aFindLastReco_1, 18Ch, \
   offset loc_4B6910, 0, <0>>; 44
		t_menu <offset aLastRecordInRu+2, offset aFindLastRecord, 18Ch, \
   offset loc_4B6910, 0, <1>>; 45
		t_menu	<0>
stru_552B90	t_menu <offset aSelectedComman, offset aFindAllComma_0, 19Ah, \
   offset loc_4B5E94, 0, <0>>; 0 ;	\=Immediate constant\=
		t_menu <offset aSelectedBlock, offset aFindAllComma_1, 19Ah, \
   offset loc_4B5E94, 0, <1>>; 1
		t_menu <offset aImmediateCon_0+2, offset aFindAllComma_5, 0, \
   offset loc_4B6018, 0, <0>>; 2
		t_menu <offset aJumpDestinatio, offset aFindAllComma_2, 0, \
   offset loc_4B6018, 0, <1>>; 3
		t_menu <offset aCallDestinat_1, offset aFindAllComma_6, 0, \
   offset loc_4B6018, 0, <2>>; 4
		t_menu <offset aAddressConst_0, offset aFindAllComma_3, 0, \
   offset loc_4B63F4, 0, <0>>; 5
		t_menu	<0>
stru_552C38	t_menu <offset aStopHighligh_0, offset aStopRegisterHi, 0, \
   offset loc_4B6A20, 0, <0FFFFFFFFh>>; 0 ; \=ESP\=
		t_menu <offset aEax, offset aHighlightOpe_7, 0, offset loc_4B6A20, 0, <0>>; 1
		t_menu <offset aEcx_1, offset aHighlightOpe_0, 0, offset loc_4B6A20, \
   0, <1>>		; 2
		t_menu <offset aEdx_1, offset aHighlightOpe_1, 0, offset loc_4B6A20, \
   0, <2>>		; 3
		t_menu <offset aEbx_0, offset aHighlightOpe_2, 0, offset loc_4B6A20, \
   0, <3>>		; 4
		t_menu <offset aEsp_0, offset aHighlightOpe_3, 0, offset loc_4B6A20, \
   0, <4>>		; 5
		t_menu <offset aEbp, offset aHighlightOpe_4, 0, offset loc_4B6A20, 0, <\
   5>>		; 6
		t_menu <offset aEsi_0, offset aHighlightOpe_5, 0, offset loc_4B6A20, \
   0, <6>>		; 7
		t_menu <offset aEdi_1, offset aHighlightOpe_6, 0, offset loc_4B6A20, \
   0, <7>>		; 8
		t_menu	<0>
stru_552D28	t_menu <offset aAbsolute, offset aShowAbsoluteAd, 1A4h, \
   offset loc_4B6AD4, 0, <0>>; 0 ;	\=Absolute\=
		t_menu <offset aRelativeToSele, offset aShowOffsetsFro, 1A5h, \
   offset loc_4B6AD4, 0, <1>>; 1
		t_menu <offset aRelativeToEsp, offset aShowOffsetsR_0, 1F0h, \
   offset loc_4B6AD4, 0, <2>>; 2
		t_menu <offset aRelativeToEbp, offset aShowOffsetsR_1, 1F1h, \
   offset loc_4B6AD4, 0, <3>>; 3
		t_menu <offset aRelativeToModu, offset aShowOffsetsF_0, 1A6h, \
   offset loc_4B6AD4, 0, <4>>; 4
		t_menu	<0>
stru_552DB8	t_menu <offset aShowComments, offset aShowStandardCo, 1AEh, \
   offset loc_4B6C58, 0, <0>>; 0 ;	\=Show comments\=
		t_menu <offset aShowSource, offset aShowSourceCode, 1AEh, \
   offset loc_4B6C58, 0, <1>>; 1
		t_menu <offset aHideProfile, offset aHideRunTracePr, 1AFh, \
   offset loc_4B6D04, 0, <0>>; 2
		t_menu <offset aShowProfile, offset aShowRunTracePr, 1AFh, \
   offset loc_4B6D04, 0, <1>>; 3
		t_menu	<0>
stru_552E30	t_menu <offset aAnalyseCode_0, offset aAnalyseExecuta, 1B8h, \
   offset loc_4B6DAC, 0, <0>>; 0 ;	\=Analyse code\=
		t_menu <offset aAnalysePeHeade, offset aAnalysePeHeade, 1B8h, \
   offset loc_4B6E08, 0, <0>>; 1
		t_menu <offset aAnalyseTib, offset aAnalyseThreadI, 1B8h, \
   offset loc_4B6E08, 0, <1>>; 2
		t_menu <offset aAnalyseProce_0, offset aAnalyseProce_0, 1B8h, \
   offset loc_4B6E08, 0, <2>>; 3
		t_menu <offset aAnalysePeb, offset aAnalyseProcess, 1B8h, \
   offset loc_4B6E08, 0, <3>>; 4
		t_menu <offset aAnalyseUserSha, offset aAnalyseUserS_0, 1B8h, \
   offset loc_4B6E08, 0, <4>>; 5
		t_menu <offset aAnalyseGdiHand, offset aAnalyseSharedT, 1B8h, \
   offset loc_4B6E08, 0, <5>>; 6
		t_menu <offset aRemoveAnalys_4, offset aRemoveAnalys_0, 1B9h, \
   offset loc_4B6FBC, 0, <0>>; 7
		t_menu <offset aRemoveAnalys_1, offset aRemoveAnalys_2, 1BAh, \
   offset loc_4B7030, 0, <1>>; 8
		t_menu	<0>
stru_552F20	t_menu <offset aHexAscii16Byte, offset aHexBytes16PerL, 1CCh, \
   offset loc_4B7234, 0, <40011001h>>; 0 ;	\=Hex/ASCII \{16 bytes\}\=
		t_menu <offset aHexAscii8Bytes, offset aHexBytes8PerLi, 1CDh, \
   offset loc_4B7234, 0, <10801h>>; 1
		t_menu <offset aHexUnicode16By, offset aHexBytes16Pe_0, 1CEh, \
   offset loc_4B7234, 0, <40021001h>>; 2
		t_menu <offset aHexUnicode8Byt, offset aHexBytes8Per_0, 1CFh, \
   offset loc_4B7234, 0, <20801h>>; 3
		t_menu <offset aHexMultibyte16, offset aHexBytesAtMost, 0, \
   offset loc_4B7234, 0, <400E1001h>>; 4
		t_menu <offset aHexMultibyte8B, offset aHexBytesAtMo_0, 0, \
   offset loc_4B7234, 0, <0E0801h>>; 5
		t_menu	<0>
stru_552FC8	t_menu <offset aAscii64Chars, offset aAsciiCharacter, 1D0h, \
   offset loc_4B7234, 0, <40034001h>>; 0 ;	\=ASCII \{64 chars\}\=
		t_menu <offset aAscii32Chars, offset aAsciiCharact_0, 1D1h, \
   offset loc_4B7234, 0, <32001h>>; 1
		t_menu <offset aUnicode64Chars, offset aUnicodeCharact, 1D2h, \
   offset loc_4B7234, 0, <40044002h>>; 2
		t_menu <offset aUnicode32Chars, offset aUnicodeChara_0, 1D3h, \
   offset loc_4B7234, 0, <42002h>>; 3
		t_menu <offset aUnicode16Chars, offset aUnicodeChara_1, 1D4h, \
   offset loc_4B7234, 0, <41002h>>; 4
		t_menu	<0>
stru_553058	t_menu <offset aShortSigned, offset a16BitSignedD_0, 1D5h, \
   offset loc_4B7234, 0, <40050802h>>; 0 ;	\=Short signed\=
		t_menu <offset aShortSigned, offset a16BitSignedD_0, 1D5h, \
   offset loc_4B7234, 0, <20050402h>>; 1
		t_menu <offset aShortUnsigned, offset a16BitUnsigne_1, 1D6h, \
   offset loc_4B7234, 0, <40060802h>>; 2
		t_menu <offset aShortUnsigned, offset a16BitUnsigne_1, 1D6h, \
   offset loc_4B7234, 0, <20060402h>>; 3
		t_menu <offset aShortHex, offset a16BitHexadec_0, 1D7h, \
   offset loc_4B7234, 0, <40070802h>>; 4
		t_menu <offset aShortHex, offset a16BitHexadec_0, 1D7h, \
   offset loc_4B7234, 0, <20070402h>>; 5
		t_menu <offset aLongSigned, offset a32BitSignedD_1, 1D8h, \
   offset loc_4B7234, 0, <40050404h>>; 6
		t_menu <offset aLongSigned+2, offset a32BitSignedD_1, 1D8h, \
   offset loc_4B7234, 0, <20050204h>>; 7
		t_menu <offset aLongUnsigned, offset a32BitUnsigne_1, 1D9h, \
   offset loc_4B7234, 0, <40060404h>>; 8
		t_menu <offset aLongUnsigned, offset a32BitUnsigne_1, 1D9h, \
   offset loc_4B7234, 0, <20060204h>>; 9
		t_menu <offset aLongHex, offset a32BitHexadecim, 1DAh, \
   offset loc_4B7234, 0, <40070404h>>; 10
		t_menu <offset aLongHex, offset a32BitHexadecim, 1DAh, \
   offset loc_4B7234, 0, <20070204h>>; 11
		t_menu <offset aAddress_3, offset a32BitHexadec_1, 1DBh, \
   offset loc_4B7234, 0, <90104h>>; 12
		t_menu <offset aAddressWithAsc, offset aAddressWithA_0, 1DCh, \
   offset loc_4B7234, 0, <0A0104h>>; 13
		t_menu <offset aAddressWithUni, offset aAddressWithU_0, 1DDh, \
   offset loc_4B7234, 0, <0B0104h>>; 14
		t_menu	<0>
stru_5531D8	t_menu <offset a32BitFloat_1, offset a32BitFloatin_4, 1DEh, \
   offset loc_4B7234, 0, <40080404h>>; 0 ;	\=32-bit	float\=
		t_menu <offset a32BitFloat_1, offset a32BitFloatin_4, 1DEh, \
   offset loc_4B7234, 0, <20080104h>>; 1
		t_menu <offset a64BitFloat, offset a64BitFloatin_3, 1DFh, \
   offset loc_4B7234, 0, <40080208h>>; 2
		t_menu <offset a64BitFloat, offset a64BitFloatin_3, 1DFh, \
   offset loc_4B7234, 0, <20080108h>>; 3
		t_menu <offset a80BitFloat, offset a80BitFloatin_4, 1E0h, \
   offset loc_4B7234, 0, <8010Ah>>; 4
		t_menu	<0>
stru_553268	t_menu <offset aAddress_0, offset a32BitHexadec_1, 1DBh, \
   offset loc_4B7234, 0, <80090104h>>; 0 ;	\=Address\=
		t_menu <offset aAddressWithAsc, offset aAddressWithA_0, 1DCh, \
   offset loc_4B7234, 0, <800A0104h>>; 1
		t_menu <offset aAddressWithUni, offset aAddressWithU_0, 1DDh, \
   offset loc_4B7234, 0, <800B0104h>>; 2
		t_menu	<0>
; t_menu stru_5532C8
stru_5532C8	t_menu <offset asc_55B1CA, 0, 0, offset loc_4B05B8, 0, <0>>; 0
		t_menu <offset aLockAddress, offset aStopScrollingS, 1EAh, \ ; \=Comments\=
   offset loc_4B0A70, 0, <0>>; 1
		t_menu <offset aUnlockAddress, offset aAllowAutomat_0, 1EAh, \
   offset loc_4B0A70, 0, <1>>; 2
		t_menu <offset aBackup, offset aBackupFunction, 0, 0, \
   offset stru_5521A0, <0>>; 3
		t_menu <offset aEdit_0, offset aSelectCopyAndE, 0, 0, \
   offset stru_552290, <0>>; 4
		t_menu <offset aZeroWholeDum_0, offset aFillWholeDumpW, 106h, \
   offset loc_4B2424, 0, <80000000h>>; 5
		t_menu <offset aPushDword___, offset aPushDoublewo_0, 1EBh, \
   offset loc_4B3144, 0, <0>>; 6
		t_menu <offset aPopDword, offset aPopDoublewordF, 1ECh, \
   offset loc_4B3144, 0, <1>>; 7
		t_menu <offset aAddLabel___, offset aAddCustomLabel, 107h, \
   offset loc_4B3C2C, 0, <0>>; 8
		t_menu <offset aEditLabel___, offset aEditCustomLabe, 107h, \
   offset loc_4B3C2C, 0, <1>>; 9
		t_menu <offset aAssemble___, offset aInsertOneOrMor, 108h, \
   offset loc_4B3F1C, 0, <0>>; 10
		t_menu <offset aAddComment___, offset aAddCustomComme, 109h, \
   offset loc_4B3C2C, 0, <3>>; 11
		t_menu <offset aEditComment___, offset aEditCustomComm, 109h, \
   offset loc_4B3C2C, 0, <4>>; 12
		t_menu <offset aSaveFile___, offset aSaveFileToTheD, 10Ah, \
   offset loc_4B4028, 0, <0>>; 13
		t_menu <offset aBreakpoint_4, offset aSetResetOrEdit, 0, 0, \
   offset stru_5524A0, <0>>; 14
		t_menu <offset aNewOriginHere, offset aSetEipOfCurren, 12Ch, \
   offset loc_4B4078, 0, <0>>; 15
		t_menu <offset aNewOriginHere+2, offset aSetEipOfCurr_0, 0, \
   offset loc_4B4078, 0, <1>>; 16
		t_menu <offset aFollow, offset aFollowDestinat, 12Dh, \
   offset loc_4B41B4, 0, <0>>; 17
		t_menu <offset aFollowInDisa_2, offset aFollowDestinat, 12Dh, \
   offset loc_4B41B4, 0, <1>>; 18
		t_menu <offset aFollowInDump_2, offset aFollowInCpuDum, 0, 0, \
   offset stru_552668, <0>>; 19
		t_menu <offset aFollowDwordI_0, offset aFollowDoublewo, 0, \
   offset loc_4B4518, 0, <0>>; 20
		t_menu <offset aFollowDwordInD, offset aFollowDouble_0, 0, \
   offset loc_4B4518, 0, <1>>; 21
		t_menu <offset aFollowDwordInS, offset aFollowDouble_1, 0, \
   offset loc_4B4518, 0, <2>>; 22
		t_menu <offset aFollowInDisa_2, offset aFollowAddres_3, 1EDh, \
   offset loc_4B46B4, 0, <0>>; 23
		t_menu <offset aFollowInDump_2, offset aFollowAddres_9, 0, \
   offset loc_4B46B4, 0, <1>>; 24
		t_menu <offset aFollowInStac_0, offset aFollowAddres_4, 0, \
   offset loc_4B46B4, 0, <2>>; 25
		t_menu <offset aGoTo_0, offset aGoToDifferentP, 0, 0, \
   offset stru_552728, <0>>; 26
		t_menu <offset aSelectModule_0, offset aSelectModuleTo, 0, 0, \
   offset g_menu_sel_mod, <0>>; 27
		t_menu <offset aSelectThread_0, offset aSelectThreadTo, 0, 0, \
   offset dword_586216, <0>>; 28
		t_menu <offset aDecodeAsStruct, offset aDecodeSelect_0, 14Ah, \
   offset loc_4B5358, 0, <0>>; 29
		t_menu <offset aDecodeAsPointe, offset aDecodeSelectio, 14Bh, \
   offset loc_4B5358, 0, <1>>; 30
		t_menu <offset aOpenInASepar_0, offset aOpenSelectedPi, 14Ch, \
   offset loc_4B5508, 0, <0>>; 31
		t_menu <offset aSearchFor, offset aSearchForObjec, 0, 0, \
   offset stru_552950, <0>>; 32
		t_menu <offset aFindReferenc_0, offset aSearchForComma, 0, 0, \
   offset stru_552B90, <0>>; 33
		t_menu <offset aHighlightRegis, offset aHighlightOpera, 0, 0, \
   offset stru_552C38, <0>>; 34
		t_menu <offset aAddressing, offset aSetAbsoluteOrR, 0, 0, \
   offset stru_552D28, <0>>; 35
		t_menu <offset aProfileComment+12h, offset aSetContentsOfT, 0, 0, \
   offset stru_552DB8, <0>>; 36
		t_menu <offset aAnalysis, offset aCodeAnalysis, 0, 0, \
   offset stru_552E30, <0>>; 37
		t_menu <offset aHelpOnComman_1, offset aGetExplanation, 1C2h, \
   offset loc_4B70E4, 0, <0>>; 38
		t_menu <offset aHelpOnApiFun_2, offset aSearchForSym_0, 1C3h, \
   offset loc_4B71B8, 0, <0>>; 39
		t_menu <offset aHex_1, offset aDisplayDataAsA, 0, 0, \
   offset stru_552F20, <0>>; 40
		t_menu <offset aText_1, offset aDisplayDataA_0, 0, 0, \
   offset stru_552FC8, <0>>; 41
		t_menu <offset aInteger, offset aDisplayDataAsI, 0, 0, \
   offset stru_553058, <0>>; 42
		t_menu <offset aFloat_4, offset aDisplayDataAsF, 0, 0, \
   offset stru_5531D8, <0>>; 43
		t_menu <offset aDisassemble, offset aDecodeDataAs80, 1E1h, \
   offset loc_4B7234, 0, <0C0110h>>; 44
		t_menu <offset aStructure___, offset aDecodeDataAsKn, 1E2h, \
   offset loc_4B7368, 0, <0>>; 45
		t_menu <offset aColumns, offset aSelectColumnsT, 0, 0, \
   offset stru_553268, <0>>; 46
		t_menu <offset aSelectAsciiCod, offset aSelectCodePa_1, 0, 0, \
   offset off_552170, <0>>; 47
		t_menu <offset aSelectMultib_0, offset aSelectCodePage, 0, 0, \ ; \=Select multibyte code page\=
   offset off_552188, <0>>
		t_menu <offset aDump_1, offset aSource+0Bh, 0, offset loc_4B74A8, 0, <0>> ; \=\=
		t_menu <offset asc_557F78, offset aSource+0Bh, 0, 0, \ ; \=\=
   offset stru_518B94, <0>>
aSource:				; DATA XREF: .text:loc_4AE9D2o
		unicode	0, <Source>,0
aSourceCode:				; DATA XREF: .text:004AE9D9o
		unicode	0, <Source code>,0
aProfileComment:			; DATA XREF: .text:loc_4AE9E2o
		unicode	0, <Profile  Comments>,0
aProfileAndComm:			; DATA XREF: .text:004AE9E9o
		unicode	0, <Profile and comments>,0
aProfileSource:				; DATA XREF: .text:loc_4AE9F2o
		unicode	0, <Profile  Source>,0
aProfileAndSour:			; DATA XREF: .text:004AE9F9o
		unicode	0, <Profile and source code>,0
aLocked:				; DATA XREF: .text:004B7576o
		unicode	0, <Locked>,0
aPressToAllowAu:			; DATA XREF: .text:004B757Do
		unicode	0, <Press to allow automatic repositioning>,0
aBackup_0:				; DATA XREF: .text:004B758Eo
		unicode	0, <Backup>,0
aPressToViewCur:			; DATA XREF: .text:004B7595o
		unicode	0, <Press to view current data>,0
aAddress_0:				; DATA XREF: .text:loc_4B759Eo
					; .data:stru_553268o
		unicode	0, <Address>,0
aAddressOfFirst:			; DATA XREF: .text:004B75A5o
		unicode	0, <Address of first displayed byte in a row>,0
aHexDump_0:				; DATA XREF: .text:004B76FCo
		unicode	0, <Hex dump>,0
aHexadecimalDum:			; DATA XREF: .text:004B7703o
		unicode	0, <Hexadecimal dump, press to change dump type>,0
aAscii:					; DATA XREF: .text:004B771Bo
		unicode	0, <ASCII>,0
aAsciiDumpPress:			; DATA XREF: .text:004B7722o
		unicode	0, <ASCII dump, press to toggle between UNICODE and ASCII>,0
aUnicode_2:				; DATA XREF: .text:004B776Co
		unicode	0, <UNICODE>,0
aUnicodeDumpPre:			; DATA XREF: .text:004B7773o
		unicode	0, <UNICODE dump, press to toggle between UNICODE and ASCII>,0
aMultibyte:				; DATA XREF: .text:004B77C1o
		unicode	0, <Multibyte>,0
aMultibyteTextP:			; DATA XREF: .text:004B77C8o
		unicode	0, <Multibyte text, press to change to UNICODE or ASCII>,0
aAsciiDump:				; DATA XREF: .text:004B77F2o
		unicode	0, <ASCII dump>,0
aAsciiDumpPre_0:			; DATA XREF: .text:004B77F9o
		unicode	0, <ASCII dump, press to change dump type>,0
aUnicodeDump:				; DATA XREF: .text:004B7823o
		unicode	0, <UNICODE dump>,0
aUnicodeDumpP_0:			; DATA XREF: .text:004B782Ao
		unicode	0, <UNICODE dump, press to change dump type>,0
a16BitSignedDec:			; DATA XREF: .text:004B7851o
		unicode	0, <16-bit signed decimal dump>,0
a16BitSignedD_1:			; DATA XREF: .text:004B7858o
		unicode	0, <16-bit signed decimal dump, press to change dump type>,0
a32BitSignedD_0:			; DATA XREF: .text:loc_4B7868o
		unicode	0, <32-bit signed decimal dump>,0
a32BitSignedDec:			; DATA XREF: .text:004B786Fo
		unicode	0, <32-bit signed decimal dump, press to change dump type>,0
a16BitUnsignedD:			; DATA XREF: .text:004B78A1o
		unicode	0, <16-bit unsigned decimal dump>,0
a16BitUnsigne_0:			; DATA XREF: .text:004B78A8o
		unicode	0, <16-bit unsigned decimal dump, press to change dump type>,0
a32BitUnsigne_0:			; DATA XREF: .text:loc_4B78B8o
		unicode	0, <32-bit unsigned decimal dump>,0
a32BitUnsignedD:			; DATA XREF: .text:004B78BFo
		unicode	0, <32-bit unsigned decimal dump, press to change dump type>,0
a16BitHexDump:				; DATA XREF: .text:004B78F1o
		unicode	0, <16-bit hex dump>,0
a16BitHexadecim:			; DATA XREF: .text:004B78F8o
		unicode	0, <16-bit hexadecimal dump, press to change dump type>,0
a32BitHexDump:				; DATA XREF: .text:004B7911o
		unicode	0, <32-bit hex dump>,0
a32BitHexadec_2:			; DATA XREF: .text:004B7918o
		unicode	0, <32-bit hexadecimal dump, press to change dump type>,0
a32BitFloatingP:			; DATA XREF: .text:004B794Ao
		unicode	0, <32-bit floating-point dump>,0
a32BitFloatin_3:			; DATA XREF: .text:004B7951o
		unicode	0, <32-bit floating-point numbers, press to change dump type>,0
a64BitFloatingP:			; DATA XREF: .text:004B7966o
		unicode	0, <64-bit floating-point dump>,0
a64BitFloatin_2:			; DATA XREF: .text:004B796Do
		unicode	0, <64-bit floating-point numbers, press to change dump type>,0
a80BitFloatin_0:			; DATA XREF: .text:004B7986o
		unicode	0, <80-bit floating-point dump>,0
a80BitFloatin_3:			; DATA XREF: .text:004B798Do
		unicode	0, <80-bit floating-point numbers, press to change dump type>,0
aValue:					; DATA XREF: .text:004B79C6o
		unicode	0, <Value>,0
a32BitAddressPr:			; DATA XREF: .text:004B79CDo
		unicode	0, <32-bit address, press to change dump type>,0
aAddressRelated:			; DATA XREF: .text:004B79F4o
		unicode	0, <Address-related comments>,0
aHexadecimalD_0:			; DATA XREF: .text:004B7B20o
		unicode	0, <Hexadecimal dump of disassembled commands>,0
aCommand_1:				; DATA XREF: .text:004B7B3Bo
		unicode	0, <Command>,0
aDisassembled_1:			; DATA XREF: .text:004B7B42o
		unicode	0, <Disassembled commands>,0
aHexadecimalD_1:			; DATA XREF: .text:004B7BA9o
		unicode	0, <Hexadecimal dump of decoded data>,0
aDecodedData:				; DATA XREF: .text:004B7BD0o
		unicode	0, <Decoded data>,0
aSelection08x_0:			; DATA XREF: .text:004B88C3o
		unicode	0, <Selection !%08X..!%08X \{1. byte\}>,0
aSelection08x__:			; DATA XREF: .text:004B88F8o
		unicode	0, <Selection !%08X..!%08X \{!%i. bytes\}>,0
aCurrentEip:				; DATA XREF: .text:004B89E0o
		unicode	0, <Current EIP >,0
aCurrentEsp:				; DATA XREF: .text:004B8A28o
		unicode	0, <Current ESP >,0
aDisabledBreakp:			; DATA XREF: .text:004B8A78o
		unicode	0, <Disabled breakpoint >,0
aConditionalB_0:			; DATA XREF: .text:004B8AABo
		unicode	0, <Conditional breakpoint >,0
aBreakpoint:				; DATA XREF: .text:loc_4B8AD8o
		unicode	0, <Breakpoint >,0
aDump:					; DATA XREF: .text:004B8F82o
		unicode	0, <Dump - >,0
; wchar_t aAtext
aAtext:					; DATA XREF: .text:004AF3EDo
		unicode	0, <ATEXT>,0
; wchar_t aWtext
aWtext:					; DATA XREF: .text:loc_4AF406o
		unicode	0, <WTEXT>,0
; wchar_t asc_554468
asc_554468:				; DATA XREF: .text:004AF50Fo
		unicode	0, < = >,0
; wchar_t asc_554470
asc_554470:				; DATA XREF: .text:004AF618o
		unicode	0, < =>
		dw 3Eh
		unicode	0, < >,0
; wchar_t asc_55447A
asc_55447A:				; DATA XREF: .text:loc_4AF6D6o
		unicode	0, <[>,0
; wchar_t asc_55447E
asc_55447E:				; DATA XREF: .text:004AF733o
		unicode	0, <]>,0
; wchar_t aArg_I
aArg_I:					; DATA XREF: .text:004AF8B5o
		unicode	0, <ARG.!%i>,0
; wchar_t aArg_retaddr
aArg_retaddr:				; DATA XREF: .text:004AF8CFo
		unicode	0, <ARG.RETADDR>,0
; wchar_t aLocal_I_0
aLocal_I_0:				; DATA XREF: .text:004AF8EEo
		unicode	0, <LOCAL.!%i>,0
aOffset_2:				; DATA XREF: .text:loc_4AFA53o
		unicode	0, <OFFSET >,0
; wchar_t aArg_S_0
aArg_S_0:				; DATA XREF: .text:004AFB1Fo
		unicode	0, <ARG.!%s>,0
; wchar_t aArg_S
aArg_S:					; DATA XREF: .text:004AFC36o
		unicode	0, <[ARG.!%s>,0
; wchar_t a_S
a_S:					; DATA XREF: .text:004BABC0o
		unicode	0, <!%*.*s >,0
;a!?!?!?!?!?!?!?!?!?!?!?!?_1:			; DATA XREF: .text:004BABA3o
		unicode	0, <!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?!?>,0
; wchar_t aS_33
aS_33:					; DATA XREF: .text:004BAC81o
		unicode	0, <!%*s >,0
; wchar_t aI__1
aI__1:					; DATA XREF: .text:004BACECo
		unicode	0, <!%*i.>,0
; wchar_t aU__2
aU__2:					; DATA XREF: .text:004BAD18o
		unicode	0, <!%*u.>,0
; wchar_t a04x_9
a04x_9:					; DATA XREF: .text:004BAD3Ao
		unicode	0, <   !%04X >,0
; wchar_t a08x_4
a08x_4:					; DATA XREF: .text:004BAD58o
		unicode	0, <	 !%08X >,0
; wchar_t aS_29
aS_29:					; DATA XREF: .text:004BADF8o
		unicode	0, <!%*s>,0
;a!?!?!?_5:					; DATA XREF: .text:loc_4BADEBo
		unicode	0, <!?!?!? >,0
aEndOfSehChain:				; DATA XREF: .text:004BB2EEo
		unicode	0, <End of SEH chain>,0
aPointerToNextS:			; DATA XREF: .text:loc_4BB30Fo
		unicode	0, <Pointer to next SEH record>,0
aSeHandler:				; DATA XREF: .text:004BB341o
		unicode	0, <SE handler>,0
aReturnFrom:				; DATA XREF: .text:004BB736o
		unicode	0, <RETURN from >,0
aTo:					; DATA XREF: .text:004BB796o
		unicode	0, < to >,0
aReturnTo:				; DATA XREF: .text:loc_4BB7C9o
		unicode	0, <RETURN to >,0
; wchar_t a8u_
a8u_:					; DATA XREF: .text:004BC515o
		unicode	0, <!%8u. >,0
; wchar_t asc_554644
asc_554644:				; DATA XREF: .text:004BC54Ao
		unicode	0, <	      >,0
; wchar_t aIS_6
aIS_6:					; DATA XREF: .text:004BCCBBo
		unicode	0, <[!%i!%s]>,0
; wchar_t aRb_0
aRb_0:					; DATA XREF: .text:loc_4BD54Bo
		unicode	0, <rb>,0
aThisDumpIsRead:
		unicode	0, <This dump is read only>,0
aReadOnlyDump:
		unicode	0, <Read only dump>,0
aInternalCopy_0:
		unicode	0, <Internal copy of file >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, < is not modified. Do you really want to save unchanged du>
		unicode	0, <mp to disk!?>,0
aFileUnchanged:
		unicode	0, <File unchanged>,0
aFileSOnTheDisk:
		unicode	0, <File >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, < on the disk is lost or unreadable. Do you want to save t>
		unicode	0, <he internal copy back to disk!? >,0
aOriginalFileLo:
		unicode	0, <Original file lost>,0
aInternalCopyOf:
		unicode	0, <Internal copy of file >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, < differs from original. Do you want to save modified file>
		unicode	0, < back to disk!? >,0
aFileChanged:
		unicode	0, <File changed>,0
aSizeOfFileSOnT:
		unicode	0, <Size of file >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, < on the disk differs from the size of its internal copy. >
		unicode	0, <Probably disk file was modified. Do you want to save the >
		unicode	0, <internal copy!? >,0
aIfYouAnswerYes:
		unicode	0, <If you answer >
		dw 27h
		unicode	0, <Yes>
		dw 27h
		unicode	0, <, you will be asked for the filename. If you answer >
		dw 27h
		unicode	0, <No>
		dw 27h
		unicode	0, <, you will lose any changes you have made. Press >
		dw 27h
		unicode	0, <Cancel>
		dw 27h
		unicode	0, < to keep >,0
aDumpWindowOpen:
		unicode	0, <dump window open.>,0
aOllydbgRunning:
		unicode	0, <OllyDbg running.>,0
aSaveFileAs:
		unicode	0, <Save file as>,0
a__49:
		unicode	0, <*.*>,0
a_bak_0:
		unicode	0, <.bak>,0
aUnableToBackup:
		unicode	0, <Unable to backup file >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, <. Please try another name>,0
; wchar_t aWb_0
aWb_0:					; DATA XREF: .text:loc_4B126Co
		unicode	0, <wb>,0
aUnableToCrea_5:
		unicode	0, <Unable to create file >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, <. Please try another name>,0
aFileS:					; DATA XREF: .text:004C06F5o
		unicode	0, <File !%s>,0
aErrorSavingFil:
		unicode	0, <Error saving file >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, <. Please try another name>,0
aHugeClipboardD:			; DATA XREF: .text:004BE17Ao
		unicode	0, <Huge clipboard data size>,0
aEstimatedSizeO:			; DATA XREF: .text:004BE16Eo
		unicode	0, <Estimated size of clipboard buffer is !%i. MB. Data at the>
		unicode	0, < end of the selection may get lost. Do you want to contin>
		unicode	0, <ue!?>
		dw 2 dup(0Ah)
		unicode	0, <Tip: If you need all the selected data, try to reduce wid>
		unicode	0, <th of some columns, or save data directly to file.>,0
aLowMemory_1:				; DATA XREF: .text:004AFE7Fo
		unicode	0, <Low memory>,0
aUnableToAllo_1:			; DATA XREF: .text:004AFE73o
		unicode	0, <Unable to allocate !%li. bytes of memory>,0
aUnableToCopyTh:			; DATA XREF: .text:004BE460o
		unicode	0, <Unable to copy the whole selection to the clipboard>,0
aMemoryListHasC:			; DATA XREF: .text:004B0B7Eo
		unicode	0, <Memory list has changed, dump no longer corresponds to me>
		unicode	0, <mory block>,0
aUnableToCrea_1:			; DATA XREF: .text:004B0CE6o
		unicode	0, <Unable to create backup>,0
; wchar_t asc_5550D8
asc_5550D8:				; DATA XREF: .text:004B0F61o
		unicode	0, <\\>,0
; wchar_t aUnknown_file
aUnknown_file:				; DATA XREF: .text:004B0FA8o
		unicode	0, <unknown_file>,0
; wchar_t aS_08x_0
aS_08x_0:				; DATA XREF: .text:004B0FDBo
		unicode	0, <!%s_!%08X>,0
; wchar_t aBackup_08x_bin
aBackup_08x_bin:			; DATA XREF: .text:004B0FF6o
		unicode	0, <backup_!%08X.bin>,0
aLoadBackupFr_0:			; DATA XREF: .text:004B104Eo
		unicode	0, <Load backup from file>,0
aSaveBackupToFi:			; DATA XREF: .text:004B1060o
		unicode	0, <Save backup to file>,0
aSaveCurrentDat:			; DATA XREF: .text:loc_4B106Do
		unicode	0, <Save current data to file>,0
; wchar_t a_bin
a_bin:					; DATA XREF: .text:004B1084o
		unicode	0, <*.bin>,0
aUnableToOpenOr:			; DATA XREF: .text:004B10DBo
		unicode	0, <Unable to open or read file >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, <.>,0
aFileSizeDoesNo:			; DATA XREF: .text:004B114Fo
		unicode	0, <File size does not match>,0
aSizeOfBackupFi:			; DATA XREF: .text:004B1143o
		unicode	0, <Size of backup file >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, < \{!%i. bytes\} differs from the size of dump \{!%i. bytes\}. L>
		unicode	0, <oad anyway and !%s!?>,0
aFillTheRestOfB:			; DATA XREF: .text:004B111Eo
		unicode	0, <fill the rest of backup with current data>,0
aTruncateTheFil:			; DATA XREF: .text:loc_4B112Bo
		unicode	0, <truncate the file>,0
aUnableToCrea_2:			; DATA XREF: .text:004B128Do
		unicode	0, <Unable to create file >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
aE_19		db 'E',0                ; DATA XREF: .text:004B12D5o
aRrorWritingBac:
		unicode	0, <rror writing backup to file >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
aErrorWritingDa:			; DATA XREF: .text:004B1412o
		unicode	0, <Error writing data to file >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
aUnableToCopy_1:			; DATA XREF: .text:004B1644o
		unicode	0, <Unable to copy>,0
aEditFileAtOffs:			; DATA XREF: .text:004B1B17o
		unicode	0, <Edit file at offset !%08X>,0
aEditCodeAtAddr:			; DATA XREF: .text:004B1B70o
		unicode	0, <Edit code at address >,0
aEditDataAtAd_0:			; DATA XREF: .text:loc_4B1B92o
		unicode	0, <Edit data at address >,0
aEdit_2:				; DATA XREF: .text:loc_4B20D7o
		unicode	0, <Edit >,0
a64BitFloat_0:				; DATA XREF: .text:004B210Bo
		unicode	0, <64-bit float >,0
a80BitFloat_0:				; DATA XREF: .text:004B2140o
		unicode	0, <80-bit float >,0
a32BitFloat:				; DATA XREF: .text:loc_4B2170o
		unicode	0, <32-bit float >,0
aWord_2:				; DATA XREF: .text:004B21A2o
		unicode	0, <word >,0
aDoubleword_1:				; DATA XREF: .text:loc_4B21CFo
		unicode	0, <doubleword >,0
aUnableToLoca_2:			; DATA XREF: .text:004B29A0o
		unicode	0, <Unable to locate executable file>,0
aCopyToImportAd:			; DATA XREF: .text:004B2A33o
		unicode	0, <Copy to Import Address Table>,0
aYouAreGoingT_8:			; DATA XREF: .text:004B2A27o
		unicode	0, <You are going to copy modifications back to the Import Ad>
		unicode	0, <dress Table. This is usually bad idea because IAT in memo>
		unicode	0, <ry is updated by the Process Loader and differs from that>
		unicode	0, < in the executable file. Do you still want to copy select>
		unicode	0, <ion to the executable file!?>,0
aUnableToCopySe:			; DATA XREF: .text:loc_4B2A9Bo
		unicode	0, <Unable to copy selection>,0
aSomeFixupsAreO:			; DATA XREF: .text:004B2AD5o
		unicode	0, <Some fixups are only partially selected. OllyDbg is unabl>
		unicode	0, <e to copy them to the executable file. File dump was not >
		unicode	0, <modified.!%s>,0
aToVisualizeFix:			; DATA XREF: .text:004B2AC2o
		unicode	0, < To visualize fixups, please check >
		dw 27h
		unicode	0, <Underline fixups>
		dw 27h
		unicode	0, < in Code dump options.>,0
aSelectionConta:			; DATA XREF: .text:004B2AF9o
		unicode	0, <Selection contains modified fixups. >,0
aItIsHardlyPoss:			; DATA XREF: .text:004B2B21o
		unicode	0, <It is hardly possible that main program will be loaded on>
		unicode	0, < different base addres. However, should it happen, >,0
aPleaseKeepInMi:			; DATA XREF: .text:loc_4B2B46o
		unicode	0, <Please keep in mind that in the case that this DLL will b>
		unicode	0, <e loaded on different base address, >,0
aOsWillAdjustFi:			; DATA XREF: .text:loc_4B2B69o
		unicode	0, <OS will adjust fixups, thus modifying your code. Were you>
		unicode	0, < not carefull enough, this may have disastrous effects on>
		unicode	0, < the debugged application.>,0
aModifiedFixups:			; DATA XREF: .text:004B2B8Fo
		unicode	0, <Modified fixups>,0
aModifiedFile:				; DATA XREF: .text:004B2BC8o
		unicode	0, <Modified file>,0
aInternalCopy_1:			; DATA XREF: .text:004B2BBCo
		unicode	0, <Internal copy of file >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, < was modified. Choose >
		dw 27h
		unicode	0, <Save file>
		dw 27h
		unicode	0, < from popup menu if you want to save modifications to dis>
		unicode	0, <k.>,0
aUnableToRead_0:			; DATA XREF: .text:004B2CAAo
		unicode	0, <Unable to read memory of debugged process>,0
aYouAreGoingT_1:			; DATA XREF: .text:loc_4B2D74o
		unicode	0, <You are going to copy modifications back to the Import Ad>
		unicode	0, <dress Table. This is usually bad idea because IAT in memo>
		unicode	0, <ry is updated by the Process Loader and differs from that>
		unicode	0, < in the executable file. IAT will be excluded from Copy a>
		unicode	0, <ll modifications.>,0
aSomeFixupsAr_0:			; DATA XREF: .text:004B2FDCo
		unicode	0, <Some fixups are only partially available. OllyDbg is unab>
		unicode	0, <le to copy them to the executable file. File dump was not>
		unicode	0, < modified. Remaining modifications, if any, will not be s>
		unicode	0, <aved.!%s>,0
aUnableToCopy_2:			; DATA XREF: .text:loc_4B2FF2o
		unicode	0, <Unable to copy selection to the executable file. Search s>
		unicode	0, <topped. Remaining modifications, if any, will not be save>
		unicode	0, <d.>,0
aMemoryBlockAnd:			; DATA XREF: .text:004B3025o
		unicode	0, <Memory block and its backup copy are identical>,0
aMemoryBlockCon:			; DATA XREF: .text:004B3048o
		unicode	0, <Memory block contains modified fixups. >,0
aUnableToAccess:			; DATA XREF: .text:004B3225o
		unicode	0, <Unable to access stack memory>,0
aEnterValueToPu:			; DATA XREF: .text:004B325Ao
		unicode	0, <Enter value to push>,0
aUnableToSetB_9:			; DATA XREF: .text:004B3420o
		unicode	0, <Unable to set breakpoint>,0
aUnableToSetT_0:			; DATA XREF: .text:004B356Do
		unicode	0, <Unable to set temporary breakpoint>,0
aLimitRunTrac_1:			; DATA XREF: .text:004B3B6Ao
		unicode	0, <Limit run trace protocol to selection>,0
aLimitRunTrac_2:			; DATA XREF: .text:loc_4B3B86o
		unicode	0, <Limit run trace protocol to current procedure>,0
aAddSelection_0:			; DATA XREF: .text:004B3BA6o
		unicode	0, <Add selection to run trace protocol>,0
aAddProcedureTo:			; DATA XREF: .text:loc_4B3BC2o
		unicode	0, <Add procedure to run trace protocol>,0
aAddLabelAt:				; DATA XREF: .text:004B3DB6o
		unicode	0, <Add label at >,0
aAddCommentAt:				; DATA XREF: .text:004B3DE1o
		unicode	0, <Add comment at >,0
aEditLabelAt:				; DATA XREF: .text:004B3E0Co
		unicode	0, <Edit label at >,0
aEditCommentAt:				; DATA XREF: .text:loc_4B3E2Eo
		unicode	0, <Edit comment at >,0
aAssemble_1:				; DATA XREF: .text:004B3FFAo
		unicode	0, <Assemble>,0
aSuspiciousLoca:			; DATA XREF: .text:004B4162o
		unicode	0, <Suspicious location>,0
aYouAreGoingT_2:			; DATA XREF: .text:004B4156o
		unicode	0, <You are going to set execution point at the location !%08X>
		unicode	0, < which is probably not the first byte of the command. Are>
		unicode	0, < you sure!?>,0
aEnterExpressio:			; DATA XREF: .text:004B48F3o
		unicode	0, <Enter expression to follow>,0
aOffsetBeyondTh:			; DATA XREF: .text:004B4968o
		unicode	0, <Offset beyond the end of file>,0
aNoMemoryAtTheS:			; DATA XREF: .text:004B499Ao
		unicode	0, <No memory at the specified address>,0
aDecodeMemoryAr:			; DATA XREF: .text:004B544Bo
		unicode	0, <Decode memory area starting at address !%08X as a structur>
		unicode	0, <e of the following type:>,0
aSelectStruct_0:			; DATA XREF: .text:004B5498o
		unicode	0, <Select structure>,0
aItemNotFound_0:			; DATA XREF: .text:004B565Bo
		unicode	0, <Item not found>,0
aCommandsFoundI:			; DATA XREF: .text:004B5DEEo
		unicode	0, <Commands found in >,0
aCommandSequenc:			; DATA XREF: .text:loc_4B5E10o
		unicode	0, <Command sequences found in >,0
aReferencesTo:				; DATA XREF: .text:004B5F3Do
		unicode	0, <References to >,0
aReferencesToCo:			; DATA XREF: .text:loc_4B615Eo
		unicode	0, <References to constant >,0
aEnterConstan_0:			; DATA XREF: .text:004B6279o
		unicode	0, <Enter constant or expression to search for>,0
aModificationsI:			; DATA XREF: .text:004B6375o
		unicode	0, <Modifications in module >,0
aTextStringsRef:			; DATA XREF: .text:004B6539o
		unicode	0, <Text strings referenced in >,0
aGuidsReference:			; DATA XREF: .text:004B6600o
		unicode	0, <GUIDs referenced in >,0
aAllUserDefined:			; DATA XREF: .text:004B66A0o
		unicode	0, <All user-defined comments>,0
aProceduresIn:				; DATA XREF: .text:004B671Bo
		unicode	0, <Procedures in >,0
aSwitchesIn:				; DATA XREF: .text:004B67CEo
		unicode	0, <Switches in >,0
aFloatingPointC:			; DATA XREF: .text:004B6898o
		unicode	0, <Floating-point constants referenced in >,0
aNoRecordFound:				; DATA XREF: .text:004B69E1o
		unicode	0, <No record found>,0
aNoHelpOnSele_0:			; DATA XREF: .text:004B719Eo
		unicode	0, <No help on selected command>,0
aDecodeAsAStruc:			; DATA XREF: .text:004B742Bo
		unicode	0, <Decode as a structure of the following type:>,0
; wchar_t aDisasm
aDisasm:				; DATA XREF: .text:004B74BAo
		unicode	0, <DISASM>,0
; wchar_t aStack_1
aStack_1:				; DATA XREF: .text:004B74D8o
		unicode	0, <STACK>,0
; wchar_t aDump_2
aDump_2:				; DATA XREF: .text:loc_4B74EAo
		unicode	0, <DUMP>,0
; wchar_t aU_0
aU_0:					; DATA XREF: .text:004BE800o
		unicode	0, <!%u>,0
aCreateBackup_1:			; DATA XREF: .data:stru_5521A0o
		unicode	0, <Create backup>,0
aCreateBackup_2:			; DATA XREF: .data:stru_5521A0o
		unicode	0, <Create backup copy of data displayed in dump window>,0
aReadExecutable:			; DATA XREF: .data:stru_5521A0o
		unicode	0, <Read executable file>,0
aCreateBackupFr:			; DATA XREF: .data:stru_5521A0o
		unicode	0, <Create backup from the section images in executable file>,0
aViewBackup:				; DATA XREF: .data:stru_5521A0o
		unicode	0, <View backup>,0
aViewBackupCopy:			; DATA XREF: .data:stru_5521A0o
		unicode	0, <View backup copy of data displayed in dump window>,0
aViewCurrentDat:			; DATA XREF: .data:stru_5521A0o
		unicode	0, <View current data>,0
aFinishBackupVi:			; DATA XREF: .data:stru_5521A0o
		unicode	0, <Finish backup view and display current data>,0
aUpdateBackup:				; DATA XREF: .data:stru_5521A0o
		unicode	0, <Update backup>,0
aUpdateBackupCo:			; DATA XREF: .data:stru_5521A0o
		unicode	0, <Update backup copy of data displayed in dump window>,0
aDeleteBackup:				; DATA XREF: .data:stru_5521A0o
		unicode	0, <Delete backup>,0
aDeleteBackupCo:			; DATA XREF: .data:stru_5521A0o
		unicode	0, <Delete backup copy of data displayed in dump window>,0
aLoadBackupFrom:			; DATA XREF: .data:stru_5521A0o
		unicode	0, <|Load backup from file...>,0
aReadOldBackupF:			; DATA XREF: .data:stru_5521A0o
		unicode	0, <Read old backup from the disk>,0
aSaveBackupTo_0:			; DATA XREF: .data:stru_5521A0o
		unicode	0, <Save backup to file...>,0
aSaveBackupTo_1:			; DATA XREF: .data:stru_5521A0o
		unicode	0, <Save backup to file in binary format>,0
aSaveDataToFile:			; DATA XREF: .data:stru_5521A0o
		unicode	0, <Save data to file...>,0
aSaveCurrentD_0:			; DATA XREF: .data:stru_5521A0o
		unicode	0, <Save current data to file in binary format>,0
aUndoSelection:				; DATA XREF: .data:stru_552290o
		unicode	0, <Undo selection>,0
aUndoModifica_2:			; DATA XREF: .data:stru_552290o
		unicode	0, <Undo modifications within selected block>,0
aCopyAsTable:				; DATA XREF: .data:stru_552290o
		unicode	0, <|\ACopy as table>,0
aCopySelectio_1:			; DATA XREF: .data:stru_552290o
		unicode	0, <Copy selection to clipboard as seen on the screen>,0
aCopyBackupAsTa:			; DATA XREF: .data:stru_552290o
		unicode	0, <\ACopy backup as table>,0
aCopyAddress_0:				; DATA XREF: .data:stru_552290o
		unicode	0, <Copy address>,0
aCopyAddressOfS:			; DATA XREF: .data:stru_552290o
		unicode	0, <Copy address of selection to clipboard>,0
aBinaryCopy:				; DATA XREF: .data:stru_552290o
		unicode	0, <|\ABinary copy>,0
aCopySelectedDa:			; DATA XREF: .data:stru_552290o
		unicode	0, <Copy selected data to clipboard in hexadecimal format>,0
aBinaryCopyOfBa:			; DATA XREF: .data:stru_552290o
		unicode	0, <\ABinary copy of backup>,0
aBinaryPaste:				; DATA XREF: .data:stru_552290o
		unicode	0, <Binary \Apaste>,0
aPasteDataFromC:			; DATA XREF: .data:stru_552290o
		unicode	0, <Paste data from clipboard in hexadecimal format>,0
aEditWord___:				; DATA XREF: .data:stru_552290o
		unicode	0, <|Edit word...>,0
aEditFirstSel_0:			; DATA XREF: .data:stru_552290o
		unicode	0, <Edit first selected word>,0
aEditDoubleword:			; DATA XREF: .data:stru_552290o
		unicode	0, <Edit doubleword...>,0
aEditFirstSel_1:			; DATA XREF: .data:stru_552290o
		unicode	0, <Edit first selected doubleword>,0
aEdit32BitFlo_1:			; DATA XREF: .data:stru_552290o
		unicode	0, <Edit 32-bit float...>,0
aEditSelected32:			; DATA XREF: .data:stru_552290o
		unicode	0, <Edit selected 32-bit floating-point number>,0
aEdit64BitFlo_1:			; DATA XREF: .data:stru_552290o
		unicode	0, <Edit 64-bit float...>,0
aEditSelected64:			; DATA XREF: .data:stru_552290o
		unicode	0, <Edit selected 64-bit floating-point number>,0
aEdit80BitFlo_1:			; DATA XREF: .data:stru_552290o
		unicode	0, <Edit 80-bit float...>,0
aEdit80BitLongD:			; DATA XREF: .data:stru_552290o
		unicode	0, <Edit 80-bit \{long double\} floating-point number>,0
aBinaryEdit___:				; DATA XREF: .data:stru_552290o
		unicode	0, <Binary \Aedit...>,0
aEditSelectionI:			; DATA XREF: .data:stru_552290o
		unicode	0, <Edit selection in text and binary forms>,0
aFillWithZeros:				; DATA XREF: .data:stru_552290o
		unicode	0, <|Fill with \Azeros>,0
aFillSelectio_4:			; DATA XREF: .data:stru_552290o
		unicode	0, <Fill selection with zeros>,0
aFillWithNops:				; DATA XREF: .data:stru_552290o
		unicode	0, <Fill with \ANOPs>,0
aFillSelectio_5:			; DATA XREF: .data:stru_552290o
		unicode	0, <Fill selection with NOPs>,0
aFillWithFfS:				; DATA XREF: .data:stru_552290o
		unicode	0, <Fill with \AFF>
		dw 27h
		unicode	0, <s>,0
aFillSelectio_0:			; DATA XREF: .data:stru_552290o
		unicode	0, <Fill selection with codes 0xFF>,0
aSelectAll_1:				; DATA XREF: .data:stru_552290o
		unicode	0, <|Select \Aall>,0
aSelectWholeDat:			; DATA XREF: .data:stru_552290o
		unicode	0, <Select whole data>,0
aSelectProced_0:			; DATA XREF: .data:stru_552290o
		unicode	0, <Select \Aprocedure>,0
aSelectCurrentP:			; DATA XREF: .data:stru_552290o
		unicode	0, <Select current procedure>,0
aSelectStruct_1:			; DATA XREF: .data:stru_552290o
		unicode	0, <Select \Astructure>,0
aSelectCurrentS:			; DATA XREF: .data:stru_552290o
		unicode	0, <Select current structure>,0
aCopyToExecutab:			; DATA XREF: .data:stru_552290o
		unicode	0, <|Copy to executable>,0
aCopySelectio_2:			; DATA XREF: .data:stru_552290o
		unicode	0, <Copy selection to executable file>,0
aCopyAllModif_0:			; DATA XREF: .data:stru_552290o
		unicode	0, <Copy all modifications to executable>,0
aCopyAllModif_1:			; DATA XREF: .data:stru_552290o
		unicode	0, <Copy all modifications from memory block to executable fi>
		unicode	0, <le>,0
aToggle_0:				; DATA XREF: .data:stru_5524A0o
		unicode	0, <Toggle>,0
aToggleInt3Br_0:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Toggle INT3 breakpoint>,0
aConditional___:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Conditional...>,0
aSetOrEditCon_3:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Set or edit conditional INT3 breakpoint>,0
aConditionalL_3:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Conditional log...>,0
aSetOrEditCo_18:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Set or edit conditional logging INT3 breakpoint>,0
aRunToSelecti_0:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Run to selection>,0
aRunApplication:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Run application till the first selected command is hit>,0
aDisable_0:				; DATA XREF: .data:stru_5524A0o
		unicode	0, <Disable>,0
aTemporarilyD_2:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Temporarily disable selected INT3 breakpoint>,0
aEnable_0:				; DATA XREF: .data:stru_5524A0o
		unicode	0, <Enable>,0
aReEnableSelect:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Re-enable selected INT3 breakpoint>,0
aMemory___:				; DATA XREF: .data:stru_5524A0o
		unicode	0, <|Memory...>,0
aSetSimpleMemor:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Set simple memory breakpoint>,0
aMemoryLog___:				; DATA XREF: .data:stru_5524A0o
		unicode	0, <Memory log...>,0
aSetOrEditCon_4:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Set or edit conditional logging memory breakpoint>,0
aMemoryDisable:				; DATA XREF: .data:stru_5524A0o
		unicode	0, <Memory disable>,0
aTemporarilyD_4:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Temporarily disable the selected memory breakpoint>,0
aMemoryEnable:				; DATA XREF: .data:stru_5524A0o
		unicode	0, <Memory enable>,0
aReEnableTheSel:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Re-enable the selected memory breakpoint>,0
aMemoryDelete:				; DATA XREF: .data:stru_5524A0o
		unicode	0, <Memory delete>,0
aRemoveSelect_2:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Remove selected memory breakpoint>,0
aHardware___:				; DATA XREF: .data:stru_5524A0o
		unicode	0, <|Hardware...>,0
aSetSimpleHardw:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Set simple hardware breakpoint>,0
aHardwareLog___:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Hardware log...>,0
aSetOrEditCo_17:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Set or edit conditional logging hardware breakpoint>,0
aHardwareDisabl:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Hardware disable>,0
aTemporarilyDis:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Temporarily disable selected hardware breakpoint>,0
aHardwareEnable:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Hardware enable>,0
aReEnableTheS_0:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Re-enable the selected hardware breakpoint>,0
aHardwareDelete:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Hardware delete>,0
aRemoveSelected:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Remove selected hardware breakpoint>,0
asc_557F78:				; DATA XREF: .data:stru_5524A0o
					; .data:00553778o
		unicode	0, <|>,0
aAddSelectionTo:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Add selection to the run trace protocol>,0
aAddProcedureTh:			; DATA XREF: .data:stru_5524A0o
		unicode	0, <Add procedure that contains selection to the run trace pr>
		unicode	0, <otocol>,0
aMemoryAddress:				; DATA XREF: .data:stru_552668o
		unicode	0, <Memory \Aaddress>,0
aFollowAddres_2:			; DATA XREF: .data:stru_552668o
		unicode	0, <Follow address of memory operand in CPU >
; wchar_t aDump_0
aDump_0:				; DATA XREF: .text:004C07E5o
		unicode	0, <Dump>,0
aStringSource:				; DATA XREF: .data:stru_552668o
		unicode	0, <String \Asource>,0
aFollowRegister:			; DATA XREF: .data:stru_552668o
		unicode	0, <Follow register ESI \{string source\} in CPU Dump>,0
aStringDestinat:			; DATA XREF: .data:stru_552668o
		unicode	0, <String destination>,0
aFollowRegist_0:			; DATA XREF: .data:stru_552668o
		unicode	0, <Follow register EDI \{string destination\} in CPU Dump>,0
aAddressConstan:			; DATA XREF: .data:stru_552668o
		unicode	0, <Address \Aconstant>,0
aFollowAddressC:			; DATA XREF: .data:stru_552668o
		unicode	0, <Follow address constant in CPU Dump>,0
aImmediateCon_0:			; DATA XREF: .data:stru_552668o
					; .data:stru_552B90o
		unicode	0, <\AImmediate constant>,0
aFollowImmediat:			; DATA XREF: .data:stru_552668o
		unicode	0, <Follow immediate constant in CPU Dump>,0
aAddress_2:				; DATA XREF: .data:stru_552668o
		unicode	0, <\AAddress>,0
aFollowAddres_9:			; DATA XREF: .data:stru_552668o
					; .data:stru_5532C8o
		unicode	0, <Follow address in CPU Dump>,0
aSelection:				; DATA XREF: .data:stru_552668o
		unicode	0, <|Selection>,0
aRepeatSelectio:			; DATA XREF: .data:stru_552668o
		unicode	0, <Repeat selection in CPU Dump>,0
aOrigin:				; DATA XREF: .data:stru_552728o
		unicode	0, <Origin>,0
aFollowEipOfCur:			; DATA XREF: .data:stru_552728o
		unicode	0, <Follow EIP of current thread>,0
aExpression___:				; DATA XREF: .data:stru_552728o
		unicode	0, <Expression...>,0
aSpecifyLocatio:			; DATA XREF: .data:stru_552728o
		unicode	0, <Specify location to follow>,0
aJumpOrCallToSe:			; DATA XREF: .data:stru_552728o
		unicode	0, <Jump or call to selection...>,0
aFollowOneOfKno:			; DATA XREF: .data:stru_552728o
		unicode	0, <Follow one of known jumps or calls to the selected comman>
		unicode	0, <d>,0
aTableJumpDesti:			; DATA XREF: .data:stru_552728o
		unicode	0, <Table jump destination...>,0
aFollowOneOfK_2:			; DATA XREF: .data:stru_552728o
		unicode	0, <Follow one of known table jump destinations>,0
aSwitchCase___:				; DATA XREF: .data:stru_552728o
		unicode	0, <Switch case...>,0
aFollowOneOfK_0:			; DATA XREF: .data:stru_552728o
		unicode	0, <Follow one of known switch cases>,0
aPreviousLocati:			; DATA XREF: .data:stru_552728o
		unicode	0, <Previous location>,0
aGoToThePrevi_0:			; DATA XREF: .data:stru_552728o
		unicode	0, <Go to the previous location in the history list>,0
aNextLocation:				; DATA XREF: .data:stru_552728o
		unicode	0, <Next location>,0
aGoToTheNextL_0:			; DATA XREF: .data:stru_552728o
		unicode	0, <Go to the next location in the history list>,0
aPreviousRunT_0:			; DATA XREF: .data:stru_552728o
		unicode	0, <Previous run trace record>,0
aGoToThePrevi_1:			; DATA XREF: .data:stru_552728o
		unicode	0, <Go to the previous location in the run trace>,0
aNextRunTraceRe:			; DATA XREF: .data:stru_552728o
		unicode	0, <Next run trace record>,0
aGoToTheNextLoc:			; DATA XREF: .data:stru_552728o
		unicode	0, <Go to the next location in the run trace>,0
aMsilCode:				; DATA XREF: .data:stru_552728o
		unicode	0, <|MSIL code>,0
aGoToTheMsilCod:			; DATA XREF: .data:stru_552728o
		unicode	0, <Go to the MSIL code from which selection was JIT-compiled>
aNativeCode_0:				; DATA XREF: .data:stru_552728o
		unicode	0, <Native code>,0
aGoToTheNativeC:			; DATA XREF: .data:stru_552728o
		unicode	0, <Go to the native code that was JIT-compiled from the sele>
		unicode	0, <ction>,0
aPreviousProced:			; DATA XREF: .data:stru_552728o
		unicode	0, <|Previous procedure>,0
aGoToTheBegin_2:			; DATA XREF: .data:stru_552728o
		unicode	0, <Go to the beginning of the previous procedure>,0
aNextProcedure:				; DATA XREF: .data:stru_552728o
		unicode	0, <Next procedure>,0
aGoToTheBeginni:			; DATA XREF: .data:stru_552728o
		unicode	0, <Go to the beginning of the next procedure>,0
aPreviousStruct:			; DATA XREF: .data:stru_552728o
		unicode	0, <Previous structure>,0
aGoToTheBegin_3:			; DATA XREF: .data:stru_552728o
		unicode	0, <Go to the beginning of the previous structure>,0
aNextStructure:				; DATA XREF: .data:stru_552728o
		unicode	0, <Next structure>,0
aGoToTheBegin_0:			; DATA XREF: .data:stru_552728o
		unicode	0, <Go to the beginning of the next structure>,0
aPreviousFrame:				; DATA XREF: .data:stru_552728o
		unicode	0, <Previous frame>,0
aGoToTheBegin_4:			; DATA XREF: .data:stru_552728o
		unicode	0, <Go to the beginning of the previous stack frame>,0
aNextFrame:				; DATA XREF: .data:stru_552728o
		unicode	0, <Next frame>,0
aGoToTheBegin_1:			; DATA XREF: .data:stru_552728o
		unicode	0, <Go to the beginning of the next stack frame>,0
aPreviousFoundI:			; DATA XREF: .data:stru_552728o
		unicode	0, <|Previous found item>,0
aGoToThePrevi_2:			; DATA XREF: .data:stru_552728o
		unicode	0, <Go to the previous found item>,0
aNextFoundItem:				; DATA XREF: .data:stru_552728o
		unicode	0, <Next found item>,0
aGoToTheNextFou:			; DATA XREF: .data:stru_552728o
		unicode	0, <Go to the next found item>,0
aEsp_0:					; DATA XREF: .data:stru_552728o
					; .data:stru_552C38o
		unicode	0, <ESP>,0
aGoToTheCurre_0:			; DATA XREF: .data:stru_552728o
		unicode	0, <Go to the current stack pointer location>,0
aEbp:					; DATA XREF: .data:stru_552728o
					; .data:stru_552C38o
		unicode	0, <EBP>,0
aGoToTheCurrent:			; DATA XREF: .data:stru_552728o
		unicode	0, <Go to the current stack frame location>,0
aExecutableFi_0:			; DATA XREF: .data:stru_552728o
		unicode	0, <|Executable file>,0
aFollowSelect_7:			; DATA XREF: .data:stru_552728o
		unicode	0, <Follow selection in the executable file>,0
aNames_0:				; DATA XREF: .data:stru_552728o
		unicode	0, <Names>,0
aShowAllNamesDe:			; DATA XREF: .data:stru_552728o
		unicode	0, <Show all names declared in the current module>,0
aCommand___:				; DATA XREF: .data:stru_552728o
		unicode	0, <|Command...>,0
aFindCommandTha:			; DATA XREF: .data:stru_552728o
		unicode	0, <Find command that matches specified pattern>,0
aSequenceOfComm:			; DATA XREF: .data:stru_552728o
		unicode	0, <Sequence of commands...>,0
aFindSequence_0:			; DATA XREF: .data:stru_552728o
		unicode	0, <Find sequence of commands that matches specified pattern>,0
aConstant___:				; DATA XREF: .data:stru_552728o
		unicode	0, <Constant...>,0
aFindCommandT_0:			; DATA XREF: .data:stru_552728o
		unicode	0, <Find command that references supplied constant or express>
		unicode	0, <ion>,0
aInteger___:				; DATA XREF: .data:stru_552728o
		unicode	0, <Integer...>,0
aFindIntegerNum:			; DATA XREF: .data:stru_552728o
		unicode	0, <Find integer number>,0
aFloatingPoin_2:			; DATA XREF: .data:stru_552728o
		unicode	0, <Floating-point number...>,0
aFindFloatingPo:			; DATA XREF: .data:stru_552728o
		unicode	0, <Find floating-point number>,0
aBinaryString__:			; DATA XREF: .data:stru_552728o
		unicode	0, <Binary string...>,0
aFindBinaryData:			; DATA XREF: .data:stru_552728o
		unicode	0, <Find binary data that matches specified pattern>,0
aModification:				; DATA XREF: .data:stru_552728o
		unicode	0, <Modification>,0
aFindModifiedDa:			; DATA XREF: .data:stru_552728o
		unicode	0, <Find modified data>,0
aSearchAgain_0:				; DATA XREF: .data:stru_552728o
		unicode	0, <|Search again>,0
aRepeatSearch_0:			; DATA XREF: .data:stru_552728o
		unicode	0, <Repeat search in the specified direction>,0
aSearchRevers_0:			; DATA XREF: .data:stru_552728o
		unicode	0, <Search reverse>,0
aRepeatSearch_1:			; DATA XREF: .data:stru_552728o
		unicode	0, <Repeat search in the direction opposite to specified>,0
aAllIntermodula:			; DATA XREF: .data:stru_552728o
		unicode	0, <|All intermodular calls>,0
aFindAllCalls_0:			; DATA XREF: .data:stru_552728o
		unicode	0, <Find all calls to outside the module>,0
aAllCommands___:			; DATA XREF: .data:stru_552728o
		unicode	0, <All commands...>,0
aFindAllCommand:			; DATA XREF: .data:stru_552728o
		unicode	0, <Find all commands that match specified pattern>,0
aAllCommandSequ:			; DATA XREF: .data:stru_552728o
		unicode	0, <All command sequences...>,0
aFindAllSequenc:			; DATA XREF: .data:stru_552728o
		unicode	0, <Find all sequences of commands that match specified patte>
		unicode	0, <rn>,0
aAllConstants__:			; DATA XREF: .data:stru_552728o
		unicode	0, <All constants...>,0
aFindAllComma_4:			; DATA XREF: .data:stru_552728o
		unicode	0, <Find all commands that refer to the supplied constant or >
		unicode	0, <expression>,0
aAllModificatio:			; DATA XREF: .data:stru_552728o
		unicode	0, <All modifications>,0
aFindAllModific:			; DATA XREF: .data:stru_552728o
		unicode	0, <Find all modifications within the code sections of curren>
		unicode	0, <t module>,0
aAllReferencedS:			; DATA XREF: .data:stru_552728o
		unicode	0, <All referenced strings>,0
aFindAllRefer_0:			; DATA XREF: .data:stru_552728o
		unicode	0, <Find all referenced ASCII and UNICODE strings>,0
aAllReferencedG:			; DATA XREF: .data:stru_552728o
		unicode	0, <All referenced GUIDs>,0
aFindAllRefer_1:			; DATA XREF: .data:stru_552728o
		unicode	0, <Find all referenced GUIDs>,0
aAllUserComment:			; DATA XREF: .data:stru_552728o
		unicode	0, <All user comments>,0
aListAllUserDef:			; DATA XREF: .data:stru_552728o
		unicode	0, <List all user-defined comments>,0
aAllFoundProced:			; DATA XREF: .data:stru_552728o
		unicode	0, <All found procedures>,0
aListCallDestin:			; DATA XREF: .data:stru_552728o
		unicode	0, <List call destinations found by Analyser>,0
aAllFoundSwitch:			; DATA XREF: .data:stru_552728o
		unicode	0, <All found switches>,0
aListAllSwitche:			; DATA XREF: .data:stru_552728o
		unicode	0, <List all switches and cascaded ifs found by Analyser>,0
aAllFloatingCon:			; DATA XREF: .data:stru_552728o
		unicode	0, <All floating constants>,0
aFindAllRefer_2:			; DATA XREF: .data:stru_552728o
		unicode	0, <Find all referenced floating-point constants that reside >
		unicode	0, <directly in the code section>,0
aLastRecordInRu:			; DATA XREF: .data:stru_552728o
					; .data:stru_552728o
		unicode	0, <|Last record in run trace>,0
aFindLastReco_1:			; DATA XREF: .data:stru_552728o
		unicode	0, <Find last record in the run trace for the selected comman>
		unicode	0, <d>,0
aFindLastRecord:			; DATA XREF: .data:stru_552728o
		unicode	0, <Find last record in the run trace for the selected comman>
		unicode	0, <d range>,0
aSelectedComman:			; DATA XREF: .data:stru_552B90o
		unicode	0, <Selected command>,0
aFindAllComma_0:			; DATA XREF: .data:stru_552B90o
		unicode	0, <Find all commands that refer to the selected command>,0
aSelectedBlock:				; DATA XREF: .data:stru_552B90o
		unicode	0, <Selected block>,0
aFindAllComma_1:			; DATA XREF: .data:stru_552B90o
		unicode	0, <Find all commands that refer to the selected range>,0
aFindAllComma_5:			; DATA XREF: .data:stru_552B90o
		unicode	0, <Find all commands that refer to the same immediate consta>
		unicode	0, <nt>,0
aJumpDestinatio:			; DATA XREF: .data:stru_552B90o
		unicode	0, <Jump destination>,0
aFindAllComma_2:			; DATA XREF: .data:stru_552B90o
		unicode	0, <Find all commands that refer to the address of the jump d>
		unicode	0, <estination>,0
aCallDestinat_1:			; DATA XREF: .data:stru_552B90o
		unicode	0, <Call destination>,0
aFindAllComma_6:			; DATA XREF: .data:stru_552B90o
		unicode	0, <Find all commands that refer to the address of the call d>
		unicode	0, <estination>,0
aAddressConst_0:			; DATA XREF: .data:stru_552B90o
		unicode	0, <Address constant>,0
aFindAllComma_3:			; DATA XREF: .data:stru_552B90o
		unicode	0, <Find all commands that refer to the constant part of addr>
		unicode	0, <ess>,0
aStopHighligh_0:			; DATA XREF: .data:stru_552C38o
		unicode	0, <Stop highlighting>,0
aStopRegisterHi:			; DATA XREF: .data:stru_552C38o
		unicode	0, <Stop register highlighting>,0
aEax:					; DATA XREF: .data:stru_552C38o
		unicode	0, <|EAX>,0
aHighlightOpe_7:			; DATA XREF: .data:stru_552C38o
		unicode	0, <Highlight operands that use EAX, AX, AH or AL>,0
aEcx_1:					; DATA XREF: .data:stru_552C38o
		unicode	0, <ECX>,0
aHighlightOpe_0:			; DATA XREF: .data:stru_552C38o
		unicode	0, <Highlight operands that use ECX, CX, CH or CL>,0
aEdx_1:					; DATA XREF: .data:stru_552C38o
		unicode	0, <EDX>,0
aHighlightOpe_1:			; DATA XREF: .data:stru_552C38o
		unicode	0, <Highlight operands that use EDX, DX, DH or DL>,0
aEbx_0:					; DATA XREF: .data:stru_552C38o
		unicode	0, <EBX>,0
aHighlightOpe_2:			; DATA XREF: .data:stru_552C38o
		unicode	0, <Highlight operands that use EBX, BX, BH or BL>,0
aHighlightOpe_3:			; DATA XREF: .data:stru_552C38o
		unicode	0, <Highlight operands that use ESP \{stack pointer\}>,0
aHighlightOpe_4:			; DATA XREF: .data:stru_552C38o
		unicode	0, <Highlight operands that use EBP \{frame pointer\}>,0
aEsi_0:					; DATA XREF: .data:stru_552C38o
		unicode	0, <ESI>,0
aHighlightOpe_5:			; DATA XREF: .data:stru_552C38o
		unicode	0, <Highlight operands that use ESI or SI>,0
aEdi_1:					; DATA XREF: .data:stru_552C38o
		unicode	0, <EDI>,0
aHighlightOpe_6:			; DATA XREF: .data:stru_552C38o
		unicode	0, <Highlight operands that use EDI or DI>,0
aAbsolute:				; DATA XREF: .data:stru_552D28o
		unicode	0, <Absolute>,0
aShowAbsoluteAd:			; DATA XREF: .data:stru_552D28o
		unicode	0, <Show absolute addresses>,0
aRelativeToSele:			; DATA XREF: .data:stru_552D28o
		unicode	0, <Relative to selection>,0
aShowOffsetsFro:			; DATA XREF: .data:stru_552D28o
		unicode	0, <Show offsets from current selection>,0
aRelativeToEsp:				; DATA XREF: .data:stru_552D28o
		unicode	0, <Relative to ESP>,0
aShowOffsetsR_0:			; DATA XREF: .data:stru_552D28o
		unicode	0, <Show offsets relative to current value of ESP>,0
aRelativeToEbp:				; DATA XREF: .data:stru_552D28o
		unicode	0, <Relative to EBP>,0
aShowOffsetsR_1:			; DATA XREF: .data:stru_552D28o
		unicode	0, <Show offsets relative to current value of EBP>,0
aRelativeToModu:			; DATA XREF: .data:stru_552D28o
		unicode	0, <Relative to module base>,0
aShowOffsetsF_0:			; DATA XREF: .data:stru_552D28o
		unicode	0, <Show offsets from the beginning of the module>,0
aShowComments:				; DATA XREF: .data:stru_552DB8o
		unicode	0, <Show comments>,0
aShowStandardCo:			; DATA XREF: .data:stru_552DB8o
		unicode	0, <Show standard comments in the comments column>,0
aShowSource:				; DATA XREF: .data:stru_552DB8o
		unicode	0, <Show source>,0
aShowSourceCode:			; DATA XREF: .data:stru_552DB8o
		unicode	0, <Show source code \{if available\} in the comments column>,0
aHideProfile:				; DATA XREF: .data:stru_552DB8o
		unicode	0, <Hide profile>,0
aHideRunTracePr:			; DATA XREF: .data:stru_552DB8o
		unicode	0, <Hide run trace profile counts in the comments column>,0
aShowProfile:				; DATA XREF: .data:stru_552DB8o
		unicode	0, <Show profile>,0
aShowRunTracePr:			; DATA XREF: .data:stru_552DB8o
		unicode	0, <Show run trace profile counts in the comments column>,0
aAnalyseCode_0:				; DATA XREF: .data:stru_552E30o
		unicode	0, <Analyse code>,0
aAnalyseExecuta:			; DATA XREF: .data:stru_552E30o
		unicode	0, <Analyse executable code and SFX in the current module>,0
aAnalysePeHeade:			; DATA XREF: .data:stru_552E30o
		unicode	0, <Analyse PE header>,0
aAnalyseTib:				; DATA XREF: .data:stru_552E30o
		unicode	0, <Analyse TIB>,0
aAnalyseThreadI:			; DATA XREF: .data:stru_552E30o
		unicode	0, <Analyse Thread Information Block>,0
aAnalyseProce_0:			; DATA XREF: .data:stru_552E30o
		unicode	0, <Analyse Process Parameters Block>,0
aAnalysePeb:				; DATA XREF: .data:stru_552E30o
		unicode	0, <Analyse PEB>,0
aAnalyseProcess:			; DATA XREF: .data:stru_552E30o
		unicode	0, <Analyse Process Environment Block>,0
aAnalyseUserSha:			; DATA XREF: .data:stru_552E30o
		unicode	0, <Analyse User Shared Data>,0
aAnalyseUserS_0:			; DATA XREF: .data:stru_552E30o
		unicode	0, <Analyse User Shared Data structure>,0
aAnalyseGdiHand:			; DATA XREF: .data:stru_552E30o
		unicode	0, <Analyse GDI Handle Table>,0
aAnalyseSharedT:			; DATA XREF: .data:stru_552E30o
		unicode	0, <Analyse shared table of GDI handles>,0
aRemoveAnalys_4:			; DATA XREF: .data:stru_552E30o
		unicode	0, <Remove analysis from selection>,0
aRemoveAnalys_0:			; DATA XREF: .data:stru_552E30o
		unicode	0, <Remove analysis data from the selection>,0
aRemoveAnalys_1:			; DATA XREF: .data:stru_552E30o
		unicode	0, <Remove analysis from module>,0
aRemoveAnalys_2:			; DATA XREF: .data:stru_552E30o
		unicode	0, <Remove analysis from the currently selected module>,0
aHexAscii16Byte:			; DATA XREF: .data:stru_552F20o
		unicode	0, <Hex/ASCII \{16 bytes\}>,0
aHexBytes16PerL:			; DATA XREF: .data:stru_552F20o
		unicode	0, <Hex bytes \{16 per line\} and ASCII characters>,0
aHexAscii8Bytes:			; DATA XREF: .data:stru_552F20o
		unicode	0, <Hex/ASCII \{8 bytes\}>,0
aHexBytes8PerLi:			; DATA XREF: .data:stru_552F20o
		unicode	0, <Hex bytes \{8 per line\} and ASCII characters>,0
aHexUnicode16By:			; DATA XREF: .data:stru_552F20o
		unicode	0, <Hex/UNICODE \{16 bytes\}>,0
aHexBytes16Pe_0:			; DATA XREF: .data:stru_552F20o
		unicode	0, <Hex bytes \{16 per line\} and UNICODE characters>,0
aHexUnicode8Byt:			; DATA XREF: .data:stru_552F20o
		unicode	0, <Hex/UNICODE \{8 bytes\}>,0
aHexBytes8Per_0:			; DATA XREF: .data:stru_552F20o
		unicode	0, <Hex bytes \{8 per line\} and UNICODE characters>,0
aHexMultibyte16:			; DATA XREF: .data:stru_552F20o
		unicode	0, <Hex/multibyte \{16 bytes\}>,0
aHexBytesAtMost:			; DATA XREF: .data:stru_552F20o
		unicode	0, <Hex bytes \{at most 16 per line\} and multibyte characters>,0
aHexMultibyte8B:			; DATA XREF: .data:stru_552F20o
		unicode	0, <Hex/multibyte \{8 bytes\}>,0
aHexBytesAtMo_0:			; DATA XREF: .data:stru_552F20o
		unicode	0, <Hex bytes \{at most 8 per line\} and multibyte characters>,0
aAscii64Chars:				; DATA XREF: .data:stru_552FC8o
		unicode	0, <ASCII \{64 chars\}>,0
aAsciiCharacter:			; DATA XREF: .data:stru_552FC8o
		unicode	0, <ASCII characters \{64 per line\}>,0
aAscii32Chars:				; DATA XREF: .data:stru_552FC8o
		unicode	0, <ASCII \{32 chars\}>,0
aAsciiCharact_0:			; DATA XREF: .data:stru_552FC8o
		unicode	0, <ASCII characters \{32 per line\}>,0
aUnicode64Chars:			; DATA XREF: .data:stru_552FC8o
		unicode	0, <UNICODE \{64 chars\}>,0
aUnicodeCharact:			; DATA XREF: .data:stru_552FC8o
		unicode	0, <UNICODE characters \{64 per line\}>,0
aUnicode32Chars:			; DATA XREF: .data:stru_552FC8o
		unicode	0, <UNICODE \{32 chars\}>,0
aUnicodeChara_0:			; DATA XREF: .data:stru_552FC8o
		unicode	0, <UNICODE characters \{32 per line\}>,0
aUnicode16Chars:			; DATA XREF: .data:stru_552FC8o
		unicode	0, <UNICODE \{16 chars\}>,0
aUnicodeChara_1:			; DATA XREF: .data:stru_552FC8o
		unicode	0, <UNICODE characters \{16 per line\}>,0
aShortSigned:				; DATA XREF: .data:stru_553058o
		unicode	0, <Short signed>,0
a16BitSignedD_0:			; DATA XREF: .data:stru_553058o
		unicode	0, <16-bit signed decimal numbers>,0
aShortUnsigned:				; DATA XREF: .data:stru_553058o
		unicode	0, <Short unsigned>,0
a16BitUnsigne_1:			; DATA XREF: .data:stru_553058o
		unicode	0, <16-bit unsigned decimal numbers>,0
aShortHex:				; DATA XREF: .data:stru_553058o
		unicode	0, <Short hex>,0
a16BitHexadec_0:			; DATA XREF: .data:stru_553058o
		unicode	0, <16-bit hexadecimal numbers>,0
aLongSigned:				; DATA XREF: .data:stru_553058o
					; .data:stru_553058o
		unicode	0, <|Long signed>,0
a32BitSignedD_1:			; DATA XREF: .data:stru_553058o
		unicode	0, <32-bit signed decimal numbers>,0
aLongUnsigned:				; DATA XREF: .data:stru_553058o
		unicode	0, <Long unsigned>,0
a32BitUnsigne_1:			; DATA XREF: .data:stru_553058o
		unicode	0, <32-bit unsigned decimal numbers>,0
aLongHex:				; DATA XREF: .data:stru_553058o
		unicode	0, <Long hex>,0
a32BitHexadecim:			; DATA XREF: .data:stru_553058o
		unicode	0, <32-bit hexadecimal numbers>,0
aAddress_3:				; DATA XREF: .data:stru_553058o
		unicode	0, <|Address>,0
a32BitHexadec_1:			; DATA XREF: .data:stru_553058o
					; .data:stru_553268o
		unicode	0, <32-bit hexadecimal address with comments>,0
aAddressWithAsc:			; DATA XREF: .data:stru_553058o
					; .data:stru_553268o
		unicode	0, <Address with ASCII dump>,0
aAddressWithA_0:			; DATA XREF: .data:stru_553058o
					; .data:stru_553268o
		unicode	0, <Address with ASCII dump and comments>,0
aAddressWithUni:			; DATA XREF: .data:stru_553058o
					; .data:stru_553268o
		unicode	0, <Address with UNICODE dump>,0
aAddressWithU_0:			; DATA XREF: .data:stru_553058o
					; .data:stru_553268o
		unicode	0, <Address with UNICODE dump and comments>,0
a32BitFloat_1:				; DATA XREF: .data:stru_5531D8o
		unicode	0, <32-bit float>,0
a32BitFloatin_4:			; DATA XREF: .data:stru_5531D8o
		unicode	0, <32-bit floating-point numbers \{float\}>,0
a64BitFloat:				; DATA XREF: .data:stru_5531D8o
		unicode	0, <64-bit float>,0
a64BitFloatin_3:			; DATA XREF: .data:stru_5531D8o
		unicode	0, <64-bit floating-point numbers \{double\}>,0
a80BitFloat:				; DATA XREF: .data:stru_5531D8o
		unicode	0, <80-bit float>,0
a80BitFloatin_4:			; DATA XREF: .data:stru_5531D8o
		unicode	0, <80-bit floating-point numbers \{long double\}>,0
asc_55B1CA:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <\:>,0
aLockAddress:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Lock address>,0
aStopScrollingS:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Stop scrolling stack as ESP changes>,0
aUnlockAddress:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Unlock address>,0
aAllowAutomat_0:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Allow automatic stack scrolling according to ESP>,0
aBackup:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <|Backup>,0
aBackupFunction:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Backup functions>,0
aEdit_0:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <\AEdit>,0
aSelectCopyAndE:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Select, copy and edit functions>,0
aZeroWholeDum_0:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Zero whole dump>,0
aFillWholeDumpW:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Fill whole dump with zeros and update backup>,0
aPushDword___:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Push DWORD...>,0
aPushDoublewo_0:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Push doubleword into the stack>,0
aPopDword:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Pop DWORD>,0
aPopDoublewordF:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Pop doubleword from the stack \{increments ESP by 4\}>,0
aAddLabel___:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Add \Alabel...>,0
aAddCustomLabel:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Add custom label at the start of selection>,0
aEditLabel___:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Edit \Alabel...>,0
aEditCustomLabe:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Edit custom label at the start of selection>,0
aAssemble___:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <\AAssemble...>,0
aInsertOneOrMor:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Insert one or more Assembler commands>,0
aAddComment___:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Add \Acomment...>,0
aAddCustomComme:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Add custom comment at the start of selection>,0
aEditComment___:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Edit \Acomment...>,0
aEditCustomComm:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Edit custom comment at the start of selection>,0
aSaveFile___:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Save file...>,0
aSaveFileToTheD:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Save file to the disk>,0
aBreakpoint_4:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <\ABreakpoint>,0
aSetResetOrEdit:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Set, reset or edit all kinds of breakpoints>,0
aNewOriginHere:				; DATA XREF: .data:stru_5532C8o
					; .data:stru_5532C8o
		unicode	0, <|New origin here>,0
aSetEipOfCurren:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Set EIP of current thread to selected command>,0
aSetEipOfCurr_0:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Set EIP of current thread to selected memory address>,0
aFollow:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Follow>,0
aFollowDestinat:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Follow destination in CPU Disassembler>,0
aFollowInDisa_2:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Follow in Disassembler>,0
aFollowInDump_2:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Follow in Dump>,0
aFollowInCpuDum:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Follow in CPU Dump pane>,0
aFollowDwordI_0:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Follow DWORD in Disassembler>,0
aFollowDoublewo:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Follow doubleword in CPU Disassembler>,0
aFollowDwordInD:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Follow DWORD in Dump>,0
aFollowDouble_0:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Follow doubleword in CPU Dump>,0
aFollowDwordInS:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Follow DWORD in Stack>,0
aFollowDouble_1:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Follow doubleword in CPU Stack>,0
aFollowAddres_3:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Follow address in CPU Disassembler>,0
aFollowInStac_0:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Follow in Stack>,0
aFollowAddres_4:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Follow address in CPU Stack>,0
aGoTo_0:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Go to>,0
aGoToDifferentP:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Go to different point>,0
aSelectModule_0:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Select module>,0
aSelectModuleTo:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Select module to display>,0
aSelectThread_0:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Select thread>,0
aSelectThreadTo:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Select thread to display>,0
aDecodeAsStruct:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <|Decode as structure...>,0
aDecodeSelect_0:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Decode selection as a known structure in a separate windo>
		unicode	0, <w>,0
aDecodeAsPointe:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Decode as pointer to structure...>,0
aDecodeSelectio:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Decode selection as a pointer to known structure in a sep>
		unicode	0, <arate window>,0
aOpenInASepar_0:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Open in a separate dump window>,0
aOpenSelectedPi:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Open selected piece in a standalone dump window>,0
aSearchFor:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <|Search for>,0
aSearchForObjec:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Search for objects that match search pattern>,0
aFindReferenc_0:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Find references to>,0
aSearchForComma:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Search for commands referring to range or constant>,0
aHighlightRegis:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Highlight register>,0
aHighlightOpera:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Highlight operands containing specified register>,0
aAddressing:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Addressing>,0
aSetAbsoluteOrR:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Set absolute or relative addressing>,0
aSetContentsOfT:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Set contents of the comments column>,0
aAnalysis:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <|Analysis>,0
aCodeAnalysis:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Code analysis>,0
aHelpOnComman_1:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <|Help on command>,0
aGetExplanation:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Get explanation on the first selected command>,0
aHelpOnApiFun_2:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Help on API function>,0
aSearchForSym_0:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Search for symbolic name in API Help file>,0
aHex_1:					; DATA XREF: .data:stru_5532C8o
		unicode	0, <|Hex>,0
aDisplayDataAsA:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Display data as a sequence of hexadecimal bytes>,0
aText_1:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Text>,0
aDisplayDataA_0:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Display data as a text>,0
aInteger:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Integer>,0
aDisplayDataAsI:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Display data as integers>,0
aFloat_4:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Float>,0
aDisplayDataAsF:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Display data as floating-point numbers>,0
aDisassemble:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Disassemble>,0
aDecodeDataAs80:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Decode data as 80x86 commands>,0
aStructure___:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Structure...>,0
aDecodeDataAsKn:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Decode data as known structure>,0
aColumns:				; DATA XREF: .data:stru_5532C8o
		unicode	0, <Columns>,0
aSelectColumnsT:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Select columns to display>,0
aSelectAsciiCod:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Select ASCII code page>,0
aSelectCodePa_1:			; DATA XREF: .data:stru_5532C8o
		unicode	0, <Select code page used to display ASCII character dumps>,0
aSelectMultib_0:			; DATA XREF: .data:00553748o
		unicode	0, <Select multibyte code page>,0
aSelectCodePage:			; DATA XREF: .data:00553748o
		unicode	0, <Select code page used to display multibyte character dump>
		unicode	0, <s>,0
aDump_1:				; DATA XREF: .data:00553760o
		unicode	0, <|*DUMP>,0
; const	WCHAR aLocal_0
aLocal_0:				; DATA XREF: .text:004BEAC5o
		unicode	0, <Local>,0
aUnableToOpenFi:			; DATA XREF: .text:004C0611o
		unicode	0, <Unable to open file >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, < for dump>,0
aUnableToDumpFi:			; DATA XREF: .text:004C064Do
		unicode	0, <Unable to dump file >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, <. It has zero length.>,0
aUnableToRead_1:			; DATA XREF: .text:004C06ACo
		unicode	0, <Unable to read file >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
; wchar_t aFiledump
aFiledump:				; DATA XREF: .text:loc_4C06C5o
		unicode	0, <Filedump>,0
; wchar_t aStructure_1
aStructure_1:				; DATA XREF: .text:loc_4C07FAo
		unicode	0, <Structure>,0
; const	WCHAR aIco_d
aIco_d:					; DATA XREF: .text:004C0925o
		unicode	0, <ICO_D>,0
; wchar_t aDatadump
aDatadump:				; DATA XREF: .text:004C09D1o
		unicode	0, <Datadump>,0
aDataDump:				; DATA XREF: .text:loc_4C09F8o
		unicode	0, <Data dump>,0
stru_55C628	t_menu <offset asc_55C7E4, 0, 0, offset loc_4C0C2C, 0, <0>>; 0
		t_menu <offset aUpdate_5, offset aUpdateConten_1, 0, \ ; \=\=
   offset loc_4C0CB8, 0, <0>>; 1
		t_menu <offset aFollowImport, offset aFollowImport_0, 2B2h, \
   offset loc_4C0CF8, 0, <0>>; 2
		t_menu <offset aFollowInDisa_6, offset aFollowSelect_2, 2B3h, \
   offset loc_4C0DAC, 0, <0>>; 3
		t_menu <offset aFollowInDump_5, offset aFollowSelect_8, 2B4h, \
   offset loc_4C0DAC, 0, <1>>; 4
		t_menu <offset aBreakpoint_1, offset aSetUnconditi_8, 118h, \
   offset loc_4C0E64, 0, <0>>; 5
		t_menu <offset aConditionalB_5, offset aSetOrEditCon_5, 119h, \
   offset loc_4C0E64, 0, <1>>; 6
		t_menu <offset aConditionalL_1, offset aSetOrEditCon_6, 11Ah, \
   offset loc_4C0E64, 0, <2>>; 7
		t_menu <offset aRemoveBreak_16, offset aRemoveBreak_17, 118h, \
   offset loc_4C0E64, 0, <3>>; 8
		t_menu <offset aDisableBreak_1, offset aTemporarilyD_0, 11Ch, \
   offset loc_4C10E0, 0, <0>>; 9
		t_menu <offset aEnableBreakp_2, offset aReEnableBrea_2, 11Ch, \
   offset loc_4C10E0, 0, <1>>; 10
		t_menu <offset aFindReferenc_1, offset aFindReferenc_2, 2B5h, \
   offset loc_4C1164, 0, <0>>; 11
		t_menu <offset aHelpOnApiFun_0, offset aSearchForSymbo, 2B6h, \
   offset loc_4C1210, 0, <0>>; 12
		t_menu <offset aNamelist, offset a__2+1, 0, 0, 0, <0>>;	13
		t_menu <offset asc_55CD9E, offset a__2+1, 0, 0, offset stru_518B94, <0>>; 14
; wchar_t a__2
a__2:					; DATA XREF: .text:004C16F3o
		unicode	0, <.>,0
aUnableToSetB_4:			; DATA XREF: .text:004C0FF6o
		unicode	0, <Unable to set breakpoint>,0
aReferencesTo_0:			; DATA XREF: .text:004C1197o
		unicode	0, <References to >,0
asc_55C7E4:				; DATA XREF: .data:stru_55C628o
		unicode	0, <\:>,0
aUpdate_5:				; DATA XREF: .data:stru_55C628o
		unicode	0, <\AUpdate>,0
aUpdateConten_1:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Update contents of Names window>,0
aFollowImport:				; DATA XREF: .data:stru_55C628o
		unicode	0, <Follow import>,0
aFollowImport_0:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Follow import in CPU Disassembler pane>,0
aFollowInDisa_6:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Follow in Disassembler>,0
aFollowSelect_2:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Follow selected label in CPU Disassembler pane>,0
aFollowInDump_5:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Follow in Dump>,0
aFollowSelect_8:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Follow selected label in CPU Dump pane>,0
aBreakpoint_1:				; DATA XREF: .data:stru_55C628o
		unicode	0, <|Breakpoint>,0
aSetUnconditi_8:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Set unconditional breakpoint on selected address>,0
aConditionalB_5:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Conditional breakpoint...>,0
aSetOrEditCon_5:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Set or edit conditional breakpoint>,0
aConditionalL_1:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Conditional log...>,0
aSetOrEditCon_6:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Set or edit conditional logging breakpoint>,0
aRemoveBreak_16:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Remove breakpoint>,0
aRemoveBreak_17:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Remove breakpoint from selected address>,0
aDisableBreak_1:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Disable breakpoint>,0
aTemporarilyD_0:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Temporarily disable breakpoint on selected address>,0
aEnableBreakp_2:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Enable breakpoint>,0
aReEnableBrea_2:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Re-enable breakpoint on selected address>,0
aFindReferenc_1:			; DATA XREF: .data:stru_55C628o
		unicode	0, <|Find references>,0
aFindReferenc_2:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Find references to address in the module of origin>,0
aHelpOnApiFun_0:			; DATA XREF: .data:stru_55C628o
		unicode	0, <|Help on API function>,0
aSearchForSymbo:			; DATA XREF: .data:stru_55C628o
		unicode	0, <Search for symbolic name in API Help file>,0
aNamelist:				; DATA XREF: .data:stru_55C628o
		unicode	0, <|*NAMELIST>,0
asc_55CD9E:				; DATA XREF: .data:stru_55C628o
		unicode	0, <|>,0
; wchar_t a____13
;a!?!?!?_13:				; DATA XREF: .text:004C130Eo
		unicode	0, <!?!?!?>,0
; wchar_t aU_1
aU_1:					; DATA XREF: .text:004C132Co
		unicode	0, <#!%u>,0
aSearch_6:				; DATA XREF: .text:loc_4C1C72o
		unicode	0, <Search - >,0
aNoMatch_1:				; DATA XREF: .text:004C1CBDo
		unicode	0, < - No match>,0
aLabel:					; DATA XREF: .text:004C1F4Bo
		unicode	0, <Label>,0
aExport:				; DATA XREF: .text:loc_4C1F88o
		unicode	0, <Export>,0
aImport:				; DATA XREF: .text:loc_4C1FBBo
		unicode	0, <Import>,0
aDebugData_0:				; DATA XREF: .text:loc_4C1FE9o
		unicode	0, <Debug data>,0
aAnalyser:				; DATA XREF: .text:loc_4C201Bo
		unicode	0, <Analyser>,0
; wchar_t aS__1
aS__1:					; DATA XREF: .text:004C2112o
		unicode	0, <\A!%s.>,0
aOrdinal:				; DATA XREF: .text:004C241Ao
		unicode	0, <Ordinal = >,0
; wchar_t aS_U_0
aS_U_0:					; DATA XREF: .text:004C2458o
		unicode	0, <!%s.#!%u>,0
; wchar_t asc_55CE5C
asc_55CE5C:				; DATA XREF: .text:004C24B7o
		unicode	0, <, >,0
; wchar_t asc_55CE62
asc_55CE62:				; DATA XREF: .text:004C2546o
		unicode	0, <; >,0
aNamelist_1:
		unicode	0, <Namelist>,0
aAddress_10:
		unicode	0, <Address>,0
aAddressOfTheNa:
		unicode	0, <Address of the name>,0
aModule_4:
		unicode	0, <Module>,0
aNameOfTheMod_0:
		unicode	0, <Name of the module to which the name belongs>,0
aSection_0:
		unicode	0, <Section>,0
aNameOfTheSecti:
		unicode	0, <Name of the section to which the name belongs>,0
aType_5:
		unicode	0, <Type>,0
aTypeOfTheName:
		unicode	0, <Type of the name>,0
aOrdinal_1:
		unicode	0, <Ordinal>,0
aOrdinalAssocia:
		unicode	0, <Ordinal associated with export \{decimal number\}>,0
aName_2:
		unicode	0, <Name>,0
aComments_0:
		unicode	0, <Comments>,0
aNameRelatedCom:
		unicode	0, <Name-related comments>,0
aAllNames:
		unicode	0, <All names>,0
aNames_1:
		unicode	0, <Names>,0
aNamesIn:
		unicode	0, <Names in >,0
aIco_n:
		unicode	0, <ICO_N>,0
		db    0
		db    0
dword_55D0AC	dd 0FFFFFFFFh		; 0 ; DATA XREF: .text:loc_4C3492r
dword_55D0B0	dd 4			; 0 ; DATA XREF: .text:004C46F1o
		dd 4			; 0
dword_55D0B8	dd 0			; 0 ; DATA XREF: .text:004C444Bo
		dd 0Ch			; 0
		dd 4			; 0
		dd 0			; 0
		dd 10h			; 0
		dd 4			; 0
		dd 0			; 0
		dd 14h			; 0
		dd 4			; 0
		dd 0			; 0
		dd 18h			; 0
		dd 4			; 0
		dd 0			; 0
		dd 1Ch			; 0
		dd 4			; 0
		dd 0			; 0
		dd 20h			; 0
		dd 4			; 0
		dd 0			; 0
		dd 24h			; 0
		dd 4			; 0
		dd 0			; 0
		dd 28h			; 0
		dd 4			; 0
		dd 0			; 0
		dd 2Ch			; 0
		dd 2			; 0
		dd 0			; 0
		dd 2Eh			; 0
		dd 2			; 0
		dd 0			; 0
		dd 10Ch			; 0
		dd 4			; 0
		dd 0			; 0
		dd 80h			; 0
		dd 1			; 0
		dd 0			; 0
		dd 84h			; 0
		dd 0Ah			; 0
		dd 0			; 0
		dd 8Eh			; 0
		dd 0Ah			; 0
		dd 0			; 0
		dd 98h			; 0
		dd 0Ah			; 0
		dd 0			; 0
		dd 0A2h			; 0
		dd 0Ah			; 0
		dd 0			; 0
		dd 0ACh			; 0
		dd 0Ah			; 0
		dd 0			; 0
		dd 0B6h			; 0
		dd 0Ah			; 0
		dd 0			; 0
		dd 0C0h			; 0
		dd 0Ah			; 0
		dd 0			; 0
		dd 0CAh			; 0
		dd 0Ah			; 0
		dd 0			; 0
		dd 0D4h			; 0
		dd 8			; 0
		dd 0			; 0
		dd 0DCh
		dd 2
		dd 0
		dd 0E0h
		dd 2
		dd 0
		dd 0E8h
		dd 4
		dd 0
stru_55D1DC	t_menu <offset aStopHighligh_1, offset aStopRegister_0, 0, \
   offset loc_4C347C, 0, <0FFFFFFFFh>>; 0 ; \=Stop highlighting\=
		t_menu <offset aEax_0, offset aHighlightOp_15, 0, offset loc_4C347C, \
   0, <0>>		; 1
		t_menu <offset aEcx_2, offset aHighlightOpe_8, 0, offset loc_4C347C, \
   0, <1>>		; 2
		t_menu <offset aEdx_2, offset aHighlightOpe_9, 0, offset loc_4C347C, \
   0, <2>>		; 3
		t_menu <offset aEbx_2, offset aHighlightOp_10, 0, offset loc_4C347C, \
   0, <3>>		; 4
		t_menu <offset aEsp_1, offset aHighlightOp_11, 0, offset loc_4C347C, \
   0, <4>>		; 5
		t_menu <offset aEbp_1, offset aHighlightOp_12, 0, offset loc_4C347C, \
   0, <5>>		; 6
		t_menu <offset aEsi_1, offset aHighlightOp_13, 0, offset loc_4C347C, \
   0, <6>>		; 7
		t_menu <offset aEdi_2, offset aHighlightOp_14, 0, offset loc_4C347C, \
   0, <7>>		; 8
		t_menu	<0>
stru_55D2CC	t_menu <offset aDecoded, offset aDecodeMemoryCo, 0, offset loc_4C33D4,\
   0, <0>>		; 0 ; \=Decoded\=
		t_menu <offset aRaw, offset aDisplayRawMemo, 0, offset loc_4C33D4, 0, <\
   1>>		; 1
		t_menu	<0>
stru_55D314	t_menu <offset aModified_0, offset aShowRegistersM, 270h, \
   offset loc_4C3428, 0, <0>>; 0 ;	\=Modified\=
		t_menu <offset aAll, offset aShowRegistersA, 270h, offset loc_4C3428, \
   0, <1>>		; 1
		t_menu	<0>
stru_55D35C	t_menu <offset asc_55DF74, 0, 0, offset loc_4C3208, 0, <0>>; 0
		t_menu <offset aPreviousRunTra, offset aGoToThePreviou, 26Ch, \ ; \=\=
   offset loc_4C3268, 0, <0>>; 1
		t_menu <offset aNextRunTrace_0, offset aGoToTheNextL_1, 26Dh, \
   offset loc_4C3268, 0, <1>>; 2
		t_menu <offset aFollowInCpu_0, offset aFollowDestin_0, 26Eh, \
   offset loc_4C3324, 0, <0>>; 3
		t_menu <offset aClearRunTrac_1, offset aDeleteAllRunTr, 26Fh, \
   offset loc_4C3390, 0, <0>>; 4
		t_menu <offset aShowMemory, offset aDecodingModeFo, 0, 0, \
   offset stru_55D2CC, <0>>; 5
		t_menu <offset aShowRegister_0, offset aShowAllRegiste, 0, 0, \
   offset stru_55D314, <0>>; 6
		t_menu <offset aHighlightReg_0, offset aHighlightOp_16, 0, 0, \
   offset stru_55D1DC, <0>>; 7
		t_menu <offset aMarkSelected_0, offset aMarkAllAppeara, 271h, \
   offset loc_4C34E0, 0, <0>>; 8
		t_menu <offset aFindAddress___, offset aEnterAddress_0, 272h, \
   offset loc_4C34E0, 0, <1>>; 9
		t_menu <offset aFindPreviousMa, offset aFindPrevious_1, 273h, \
   offset loc_4C3628, 0, <0>>; 10
		t_menu <offset aFindNextMark, offset aFindNextMarked, 274h, \
   offset loc_4C3628, 0, <1>>; 11
		t_menu <offset aClearMarks, offset aClearAddressMa, 275h, \
   offset loc_4C34E0, 0, <2>>; 12
		t_menu <offset aProfileSelec_0, offset aShowProfileF_0, 276h, \
   offset loc_4C3754, 0, <0>>; 13
		t_menu <offset aGlobalProfile, offset aShowProfileFor, 277h, \
   offset loc_4C3754, 0, <1>>; 14
		t_menu <offset aLogToFile____0, offset aSaveRunTrace_0, 278h, \
   offset loc_4C37CC, 0, <0>>; 15
		t_menu <offset aStopLogging_0, offset aCloseRunTrac_0, 279h, \
   offset loc_4C3A24, 0, <0>>; 16
		t_menu <offset aTrace_0, offset aUnableToAllo_2+5Bh, 0, 0, 0, <0>>; 17
		t_menu <offset asc_55E688, offset aUnableToAllo_2+5Bh, 0, 0, \
   offset stru_518B94, <0>>; 18
		t_menu <offset aUpdate_7, offset aUpdateConten_8, 0CAh, \
   offset loc_4C3E14, 0, <0>>; 19
		t_menu <offset aFollowInDisa_7, offset aFollowSelect_9, 280h, \
   offset loc_4C3E4C, 0, <0>>; 20
		t_menu <offset aFollowPrevio_6, offset aFollowPrevio_8, 281h, \
   offset loc_4C3E4C, 0, <1>>; 21
		t_menu <offset aFollowNext_0, offset aFollowNextIt_0, 282h, \
   offset loc_4C3E4C, 0, <2>>; 22
		t_menu <offset aMarkSelected_0, offset aMarkAllAppea_0, 283h, \
   offset loc_4C3F14, 0, <0>>; 23
		t_menu <offset aClearMarks, offset aClearAddress_0, 275h, \
   offset loc_4C3F14, 0, <2>>; 24
		t_menu <offset aBreakpoint_2, offset aSetUnconditi_2, 118h, \
   offset loc_4C3FB4, 0, <0>>; 25
		t_menu <offset aConditional_10, offset aSetOrEditCo_20, 119h, \
   offset loc_4C3FB4, 0, <1>>; 26
		t_menu <offset aConditionalL_4, offset aSetOrEditCo_21, 11Ah, \
   offset loc_4C3FB4, 0, <2>>; 27
		t_menu <offset aRemoveBreakp_6, offset aRemoveBreakp_7, 118h, \
   offset loc_4C3FB4, 0, <3>>; 28
		t_menu <offset aDisableBreak_0, offset aTemporarilyD_6, 11Ch, \
   offset loc_4C41D8, 0, <0>>; 29
		t_menu <offset aEnableBreakp_0, offset aReEnableBrea_0, 11Ch, \
   offset loc_4C41D8, 0, <1>>; 30
		t_menu <offset aProfile_1, offset aUnableToAllo_2+5Bh, 0, 0, 0, <0>>; 31
		t_menu <offset asc_55E688, offset aUnableToAllo_2+5Bh, 0, 0, \
   offset stru_518B94, <0>>; 32
aUnableToAllo_2:			; DATA XREF: .text:004C3184o
		unicode	0, <Unable to allocate memory for run trace buffer>,0
; wchar_t a____14
;a!?!?!?_14:				; DATA XREF: .text:004C2B1Fo
		unicode	0, <!?!?!?>,0
; wchar_t asc_55D6DA
asc_55D6DA:				; DATA XREF: .text:004C2C3Fo
		unicode	0, <, >,0
; wchar_t a08x_5
a08x_5:					; DATA XREF: .text:004C2D17o
		unicode	0, <[!%08X]=>,0
; wchar_t a04x_2
a04x_2:					; DATA XREF: .text:004C2D54o
		unicode	0, <!%04X>,0
; wchar_t a08x_8
a08x_8:					; DATA XREF: .text:004C2D84o
		unicode	0, <!%08X>,0
; wchar_t a02x_3
a02x_3:					; DATA XREF: .text:004C2DF4o
		unicode	0, <!%02X>,0
aTooManyRangesT:			; DATA XREF: .text:004C4988o
		unicode	0, <Too many ranges to protocol>,0
aReferencedMe_0:
		unicode	0, <Referenced memory \{decoded\}>,0
aContentsOfMemo:
		unicode	0, <Contents of memory preceding command execution>,0
aReferencedMemo:
		unicode	0, <Referenced memory \{raw\}>,0
aRegistersModif:
		unicode	0, <Registers modified by command>,0
aListOfRegister:
		unicode	0, <List of registers modified by the command>,0
aRegistersPrece:
		unicode	0, <Registers preceding command execution>,0
aListOfRegist_0:
		unicode	0, <List of registers at the moment of execution>,0
aEnterExpress_0:			; DATA XREF: .text:004C35A3o
		unicode	0, <Enter expression to mark>,0
aNoRecordFoun_0:			; DATA XREF: .text:004C35DBo
		unicode	0, <No record found>,0
aMarkNotFound:				; DATA XREF: .text:004C36C8o
		unicode	0, <Mark not found>,0
aSelectFileForT:			; DATA XREF: .text:004C3842o
		unicode	0, <Select file for the run trace data>,0
; wchar_t a_txt_0
a_txt_0:				; DATA XREF: .text:004C3838o
		unicode	0, <*.txt>,0
; wchar_t aAT_0
aAT_0:					; DATA XREF: .text:004C3877o
		unicode	0, <a+t>,0
aWt_0:					; DATA XREF: .text:loc_4C387Eo
		unicode	0, <wt>,0
aUnableToOpenRu:			; DATA XREF: .text:004C38A6o
		unicode	0, <Unable to open run trace log file >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
aSavingExisting:			; DATA XREF: .text:004C3953o
		unicode	0, <Saving existing run trace data - $!%!%>,0
; char aLoggingStopp_0[]
aLoggingStopp_0	db '--------  Logging stopped',0Ah ; DATA XREF: .text:004C3A46o
		db 0Ah,0
aStopHighligh_1:			; DATA XREF: .data:stru_55D1DCo
		unicode	0, <Stop highlighting>,0
aStopRegister_0:			; DATA XREF: .data:stru_55D1DCo
		unicode	0, <Stop register highlighting>,0
aEax_0:					; DATA XREF: .data:stru_55D1DCo
		unicode	0, <|EAX>,0
aHighlightOp_15:			; DATA XREF: .data:stru_55D1DCo
		unicode	0, <Highlight operands that use EAX, AX, AH or AL>,0
aEcx_2:					; DATA XREF: .data:stru_55D1DCo
		unicode	0, <ECX>,0
aHighlightOpe_8:			; DATA XREF: .data:stru_55D1DCo
		unicode	0, <Highlight operands that use ECX, CX, CH or CL>,0
aEdx_2:					; DATA XREF: .data:stru_55D1DCo
		unicode	0, <EDX>,0
aHighlightOpe_9:			; DATA XREF: .data:stru_55D1DCo
		unicode	0, <Highlight operands that use EDX, DX, DH or DL>,0
aEbx_2:					; DATA XREF: .data:stru_55D1DCo
		unicode	0, <EBX>,0
aHighlightOp_10:			; DATA XREF: .data:stru_55D1DCo
		unicode	0, <Highlight operands that use EBX, BX, BH or BL>,0
aEsp_1:					; DATA XREF: .data:stru_55D1DCo
		unicode	0, <ESP>,0
aHighlightOp_11:			; DATA XREF: .data:stru_55D1DCo
		unicode	0, <Highlight operands that use ESP \{stack pointer\} or SP>,0
aEbp_1:					; DATA XREF: .data:stru_55D1DCo
		unicode	0, <EBP>,0
aHighlightOp_12:			; DATA XREF: .data:stru_55D1DCo
		unicode	0, <Highlight operands that use EBP \{frame pointer\} or BP>,0
aEsi_1:					; DATA XREF: .data:stru_55D1DCo
		unicode	0, <ESI>,0
aHighlightOp_13:			; DATA XREF: .data:stru_55D1DCo
		unicode	0, <Highlight operands that use ESI or SI>,0
aEdi_2:					; DATA XREF: .data:stru_55D1DCo
		unicode	0, <EDI>,0
aHighlightOp_14:			; DATA XREF: .data:stru_55D1DCo
		unicode	0, <Highlight operands that use EDI or DI>,0
aDecoded:				; DATA XREF: .data:stru_55D2CCo
		unicode	0, <Decoded>,0
aDecodeMemoryCo:			; DATA XREF: .data:stru_55D2CCo
		unicode	0, <Decode memory contents>,0
aRaw:					; DATA XREF: .data:stru_55D2CCo
		unicode	0, <Raw>,0
aDisplayRawMemo:			; DATA XREF: .data:stru_55D2CCo
		unicode	0, <Display raw memory contents>,0
aModified_0:				; DATA XREF: .data:stru_55D314o
		unicode	0, <Modified>,0
aShowRegistersM:			; DATA XREF: .data:stru_55D314o
		unicode	0, <Show registers modified by command>,0
aAll:					; DATA XREF: .data:stru_55D314o
		unicode	0, <All>,0
aShowRegistersA:			; DATA XREF: .data:stru_55D314o
		unicode	0, <Show registers at the moment of execution>,0
asc_55DF74:				; DATA XREF: .data:stru_55D35Co
		unicode	0, <\:>,0
aPreviousRunTra:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Previous run trace record>,0
aGoToThePreviou:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Go to the previous location in the run trace>,0
aNextRunTrace_0:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Next run trace record>,0
aGoToTheNextL_1:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Go to the next location in the run trace>,0
aFollowInCpu_0:				; DATA XREF: .data:stru_55D35Co
		unicode	0, <Follow in CPU>,0
aFollowDestin_0:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Follow destination in CPU window>,0
aClearRunTrac_1:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Clear run trace>,0
aDeleteAllRunTr:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Delete all run trace records>,0
aShowMemory:				; DATA XREF: .data:stru_55D35Co
		unicode	0, <|Show memory>,0
aDecodingModeFo:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Decoding mode for the protocolled memory contents>,0
aShowRegister_0:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Show registers>,0
aShowAllRegiste:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Show all registers or only modified>,0
aHighlightReg_0:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Highlight register>,0
aHighlightOp_16:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Highlight operands containing specified register>,0
aMarkSelected_0:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Mark selected address>,0
aMarkAllAppeara:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Mark all appearances of the selected address>,0
aFindAddress___:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Find address...>,0
aEnterAddress_0:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Enter address to find and mark>,0
aFindPreviousMa:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Find previous mark>,0
aFindPrevious_1:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Find previous marked address in the run trace>,0
aFindNextMark:				; DATA XREF: .data:stru_55D35Co
		unicode	0, <Find next mark>,0
aFindNextMarked:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Find next marked address in the run trace>,0
aClearMarks:				; DATA XREF: .data:stru_55D35Co
		unicode	0, <Clear marks>,0
aClearAddressMa:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Clear address marks>,0
aProfileSelec_0:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <|Profile selected module>,0
aShowProfileF_0:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Show profile for the module the selected command belongs >
		unicode	0, <to>,0
aGlobalProfile:				; DATA XREF: .data:stru_55D35Co
		unicode	0, <Global profile>,0
aShowProfileFor:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Show profile for the whole memory>,0
aLogToFile____0:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <|Log to file...>,0
aSaveRunTrace_0:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Save run trace data to the file>,0
aStopLogging_0:				; DATA XREF: .data:stru_55D35Co
		unicode	0, <Stop logging>,0
aCloseRunTrac_0:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Close run trace log file>,0
aTrace_0:				; DATA XREF: .data:stru_55D35Co
		unicode	0, <|*TRACE>,0
asc_55E688:				; DATA XREF: .data:stru_55D35Co
		unicode	0, <|>,0
; wchar_t aI__4
aI__4:					; DATA XREF: .text:004C50A0o
		unicode	0, <!%i.>,0
; wchar_t a_________0
;a!?!?!?!?!?!?!?!?_0:				; DATA XREF: .text:004C5161o
		unicode	0, <!?!?!?!?!?!?!?!?>,0
aTurnedOff:				; DATA XREF: .text:004C529Fo
		unicode	0, <Turned off>,0
aRunTraceData:
		unicode	0, <Run trace data>,0
aBack:
		unicode	0, <Back>,0
aBackwardIndexO:
		unicode	0, <Backward index of the command in the run trace>,0
aThread_4:
		unicode	0, <Thread>,0
aThreadInWhichT:
		unicode	0, <Thread in which the command was executed>,0
aModule_5:
		unicode	0, <Module>,0
aModuleToWhichT:
		unicode	0, <Module to which the command belongs>,0
aAddress_11:
		unicode	0, <Address>,0
aAddressOfTheCo:
		unicode	0, <Address of the command>,0
aCommand_3:
		unicode	0, <Command>,0
aDisassembled_3:
		unicode	0, <Disassembled command>,0
aRunTraceProtoc:			; DATA XREF: .text:loc_4C59BAo
		unicode	0, <Run trace \{protocolling filter is active\}>,0
aRunTrace:				; DATA XREF: .text:loc_4C59E4o
		unicode	0, <Run trace>,0
; const	WCHAR aIco_rtrace
aIco_rtrace:				; DATA XREF: .text:004C5A45o
		unicode	0, <ICO_RTRACE>,0
aProfiling:				; DATA XREF: .text:004C3CFBo
		unicode	0, <Profiling - $!%!%>,0
aIncompleteProf:			; DATA XREF: .text:004C3DF3o
		unicode	0, <Incomplete profile>,0
aUnableToSet_10:			; DATA XREF: .text:004C40F3o
		unicode	0, <Unable to set breakpoint>,0
aUpdate_7:				; DATA XREF: .data:stru_55D35Co
		unicode	0, <\AUpdate>,0
aUpdateConten_8:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Update contents of Profile window>,0
aFollowInDisa_7:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <|Follow in Disassembler>,0
aFollowSelect_9:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Follow selected item in CPU Disassembler pane>,0
aFollowPrevio_6:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Follow previous>,0
aFollowPrevio_8:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Follow previous item in CPU Disassembler pane>,0
aFollowNext_0:				; DATA XREF: .data:stru_55D35Co
		unicode	0, <Follow next>,0
aFollowNextIt_0:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Follow next item in CPU Disassembler pane>,0
aMarkAllAppea_0:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Mark all appearances of the selected address in the run t>
		unicode	0, <race>,0
aClearAddress_0:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Clear address marks in the run trace>,0
aBreakpoint_2:				; DATA XREF: .data:stru_55D35Co
		unicode	0, <|Breakpoint>,0
aSetUnconditi_2:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Set unconditional breakpoint on selected command>,0
aConditional_10:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Conditional breakpoint...>,0
aSetOrEditCo_20:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Set or edit conditional breakpoint>,0
aConditionalL_4:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Conditional log...>,0
aSetOrEditCo_21:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Set or edit conditional logging breakpoint>,0
aRemoveBreakp_6:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Remove breakpoint>,0
aRemoveBreakp_7:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Remove breakpoint from selected command>,0
aDisableBreak_0:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Disable breakpoint>,0
aTemporarilyD_6:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Temporarily disable breakpoint on selected command>,0
aEnableBreakp_0:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Enable breakpoint>,0
aReEnableBrea_0:			; DATA XREF: .data:stru_55D35Co
		unicode	0, <Re-enable breakpoint on selected command>,0
aProfile_1:				; DATA XREF: .data:stru_55D35Co
		unicode	0, <|*PROFILE>,0
aProfile_2:
		unicode	0, <Profile>,0
aCount:
		unicode	0, <Count>,0
aNumberOfRegist:
		unicode	0, <Number of registered hits>,0
aComments_2:
		unicode	0, <Comments>,0
aIco_p:
		unicode	0, <ICO_P>,0
aProfileOf:
		unicode	0, <Profile of >,0
stru_55EF74	t_menu <offset asc_55F34A, 0, 0, offset loc_4C6ABC, 0, <0>>; 0
		t_menu <offset aDelete_3, offset aDeleteMemory_0, 294h, \ ; \=\=
   offset loc_4C6AE0, 0, <0>>; 1
		t_menu <offset aDisable_1, offset aDisableBreak_3, 295h, \
   offset loc_4C6B30, 0, <0>>; 2
		t_menu <offset aEnable_1, offset aReEnableMemory, 295h, \
   offset loc_4C6B30, 0, <1>>; 3
		t_menu <offset aEditProperti_0, offset aEditProperti_3, 122h, \
   offset loc_4C6BC0, 0, <0>>; 4
		t_menu <offset aFollowInDisa_8, offset aFollowBreakp_2, 296h, \
   offset loc_4C6C44, 0, <0>>; 5
		t_menu <offset aFollowInDump_6, offset aFollowBreakp_4, 297h, \
   offset loc_4C6C44, 0, <1>>; 6
		t_menu <offset aDisableAll_0, offset aDisableAllMemo, 298h, \
   offset loc_4C6CD8, 0, <0>>; 7
		t_menu <offset aEnableAll_0, offset aReEnableAllMem, 299h, \
   offset loc_4C6CD8, 0, <1>>; 8
		t_menu <offset aBpmem, offset aMemoryProtecti+79h, 0, 0, 0, <0>>; 9
		t_menu <offset asc_55F678, offset aMemoryProtecti+79h, 0, 0, \
   offset stru_518B94, <0>>; 10
aMemoryProtecti:			; DATA XREF: .text:004C6DA9o
		unicode	0, <Memory protection attributes in memory breakpoint are cha>
		unicode	0, <nged>,0
; wchar_t aPage_x
aPage_x:				; DATA XREF: .text:004C6DCBo
		unicode	0, <PAGE_X>,0
asc_55F106:				; DATA XREF: .text:004C6E11o
		unicode	0, < >
aOldProtection0:
		unicode	0, < Old protection: !%08X !%s>,0
aNewProtection0:			; DATA XREF: .text:004C6E59o
		unicode	0, <  New protection: !%08X !%s>,0
aMemoryBreakp_0:			; DATA XREF: .text:004C71D0o
		unicode	0, <Memory breakpoint on stack>,0
aYouAreGoingT_3:			; DATA XREF: .text:004C71C4o
		unicode	0, <You are going to set memory breakpoint on stack. As long >
		unicode	0, <as this breakpoint is active, some system calls may fail,>
		unicode	0, < terminating the applicatin or changing its behaviour. Do>
		unicode	0, < you still want to set this breakpoint!?>,0
asc_55F34A:				; DATA XREF: .data:stru_55EF74o
		unicode	0, <\:>,0
aDelete_3:				; DATA XREF: .data:stru_55EF74o
		unicode	0, <Delete>,0
aDeleteMemory_0:			; DATA XREF: .data:stru_55EF74o
		unicode	0, <Delete memory breakpoint>,0
aDisable_1:				; DATA XREF: .data:stru_55EF74o
		unicode	0, <Disable>,0
aDisableBreak_3:			; DATA XREF: .data:stru_55EF74o
		unicode	0, <Disable breakpoint but don>
		dw 27h
		unicode	0, <t remove it from the list>,0
aEnable_1:				; DATA XREF: .data:stru_55EF74o
		unicode	0, <Enable>,0
aReEnableMemory:			; DATA XREF: .data:stru_55EF74o
		unicode	0, <Re-enable memory breakpoint>,0
aEditProperti_0:			; DATA XREF: .data:stru_55EF74o
		unicode	0, <Edit properties...>,0
aEditProperti_3:			; DATA XREF: .data:stru_55EF74o
		unicode	0, <Edit properties of the selected breakpoint>,0
aFollowInDisa_8:			; DATA XREF: .data:stru_55EF74o
		unicode	0, <Follow in Disassembler>,0
aFollowBreakp_2:			; DATA XREF: .data:stru_55EF74o
		unicode	0, <Follow breakpoint in the CPU Disassembler>,0
aFollowInDump_6:			; DATA XREF: .data:stru_55EF74o
		unicode	0, <Follow in Dump>,0
aFollowBreakp_4:			; DATA XREF: .data:stru_55EF74o
		unicode	0, <Follow breakpoint in the CPU Dump pane>,0
aDisableAll_0:				; DATA XREF: .data:stru_55EF74o
		unicode	0, <|Disable all>,0
aDisableAllMemo:			; DATA XREF: .data:stru_55EF74o
		unicode	0, <Disable all memory breakpoints>,0
aEnableAll_0:				; DATA XREF: .data:stru_55EF74o
		unicode	0, <Enable all>,0
aReEnableAllMem:			; DATA XREF: .data:stru_55EF74o
		unicode	0, <Re-enable all memory breakpoints>,0
aBpmem:					; DATA XREF: .data:stru_55EF74o
		unicode	0, <|*BPMEM>,0
asc_55F678:				; DATA XREF: .data:stru_55EF74o
		unicode	0, <|>,0
; wchar_t a08xU_
a08xU_:					; DATA XREF: .text:004C7611o
		unicode	0, <!%08X \{!%u.\}>,0
aNoneNotKeptBet:			; DATA XREF: .text:004C7634o
		dw 3Ch
		unicode	0, <none - not kept between sessions>
		dw 3Eh,	0
aDisabled:				; DATA XREF: .text:004C76C3o
		unicode	0, <Disabled>,0
aCond_3:				; DATA XREF: .text:004C76E8o
		unicode	0, <Cond>,0
aActive:				; DATA XREF: .text:loc_4C7707o
		unicode	0, <Active>,0
aMemoryBreakp_1:
		unicode	0, <Memory breakpoints>,0
aAddress_4:
		unicode	0, <Address>,0
aAddressOfTheMe:
		unicode	0, <Address of the memory breakpoint>,0
aSizeDecimal_1:
		unicode	0, <Size$    \{Decimal\}>,0
aSizeOfTheMemor:
		unicode	0, <Size of the memory area covered by the breakpoint>,0
aModule:
		unicode	0, <Module>,0
aNameOfTheMod_1:
		unicode	0, <Name of the module this breakpoint belongs to>,0
aType_7:
		unicode	0, <Type>,0
aTypeOfTheMemor:
		unicode	0, <Type of the memory breakpoint>,0
aStatus_1:
		unicode	0, <Status>,0
aStatusOfTheMem:
		unicode	0, <Status of the memory breakpoint>,0
aComment_0:
		unicode	0, <Comment>,0
aIco_m_yellow:
		unicode	0, <ICO_M_YELLOW>,0
stru_55F92C	t_menu <offset asc_55FA36, 0, 0, offset loc_4C79D8, 0, <0>>; 0
		t_menu <offset aDelete_4, offset aDeleteHardware, 294h, \ ; \=!\=
   offset loc_4C7A20, 0, <0>>; 1
		t_menu <offset aDisable_2, offset aDisableBreak_5, 295h, \
   offset loc_4C7A7C, 0, <0>>; 2
		t_menu <offset aEnable_2, offset aReEnableHardwa, 295h, \
   offset loc_4C7A7C, 0, <1>>; 3
		t_menu <offset aEditProperti_1, offset aEditProperti_4, 122h, \
   offset loc_4C7B14, 0, <0>>; 4
		t_menu <offset aFollowInDisa_9, offset aFollowBreakp_3, 296h, \
   offset loc_4C7BA0, 0, <0>>; 5
		t_menu <offset aFollowInDump_3, offset aFollowBreakp_5, 297h, \
   offset loc_4C7BA0, 0, <1>>; 6
		t_menu <offset aDisableAll_1, offset aDisableAllHard, 298h, \
   offset loc_4C7C60, 0, <0>>; 7
		t_menu <offset aEnableAll_1, offset aReEnableAllHar, 299h, \
   offset loc_4C7C60, 0, <1>>; 8
		t_menu <offset aBphard, offset word_55FA34, 0, 0, 0, <0>>; 9
		t_menu <offset asc_55FD66, offset word_55FA34, 0, 0, \
   offset stru_518B94, <0>>; 10
word_55FA34	dw 0			; DATA XREF: .text:004C8015o
asc_55FA36:				; DATA XREF: .data:stru_55F92Co
		unicode	0, <\:>,0
aDelete_4:				; DATA XREF: .data:stru_55F92Co
		unicode	0, <Delete>,0
aDeleteHardware:			; DATA XREF: .data:stru_55F92Co
		unicode	0, <Delete hardware breakpoint>,0
aDisable_2:				; DATA XREF: .data:stru_55F92Co
		unicode	0, <Disable>,0
aDisableBreak_5:			; DATA XREF: .data:stru_55F92Co
		unicode	0, <Disable breakpoint but don>
		dw 27h
		unicode	0, <t remove it from the list>,0
aEnable_2:				; DATA XREF: .data:stru_55F92Co
		unicode	0, <Enable>,0
aReEnableHardwa:			; DATA XREF: .data:stru_55F92Co
		unicode	0, <Re-enable hardware breakpoint>,0
aEditProperti_1:			; DATA XREF: .data:stru_55F92Co
		unicode	0, <Edit properties...>,0
aEditProperti_4:			; DATA XREF: .data:stru_55F92Co
		unicode	0, <Edit properties of the selected breakpoint>,0
aFollowInDisa_9:			; DATA XREF: .data:stru_55F92Co
		unicode	0, <Follow in Disassembler>,0
aFollowBreakp_3:			; DATA XREF: .data:stru_55F92Co
		unicode	0, <Follow breakpoint in CPU Disassembler>,0
aFollowInDump_3:			; DATA XREF: .data:stru_55F92Co
		unicode	0, <Follow in Dump>,0
aFollowBreakp_5:			; DATA XREF: .data:stru_55F92Co
		unicode	0, <Follow breakpoint in CPU Dump pane>,0
aDisableAll_1:				; DATA XREF: .data:stru_55F92Co
		unicode	0, <|Disable all>,0
aDisableAllHard:			; DATA XREF: .data:stru_55F92Co
		unicode	0, <Disable all hardware breakpoints>,0
aEnableAll_1:				; DATA XREF: .data:stru_55F92Co
		unicode	0, <Enable all>,0
aReEnableAllHar:			; DATA XREF: .data:stru_55F92Co
		unicode	0, <Re-enable all hardware breakpoints>,0
aBphard:				; DATA XREF: .data:stru_55F92Co
		unicode	0, <|*BPHARD>,0
asc_55FD66:				; DATA XREF: .data:stru_55F92Co
		unicode	0, <|>,0
; wchar_t aI_8
aI_8:					; DATA XREF: .text:004C8507o
		unicode	0, <!%i>,0
aInternal:				; DATA XREF: .text:loc_4C8535o
		unicode	0, <Internal>,0
aExec_0:				; DATA XREF: .text:004C8568o
		unicode	0, <Exec>,0
aAccessI:				; DATA XREF: .text:004C859Fo
		unicode	0, <Access:!%i>,0
aWriteI_0:				; DATA XREF: .text:004C85D1o
		unicode	0, <Write:!%i>,0
; wchar_t a____15
;a!?!?!?_15:				; DATA XREF: .text:loc_4C85F0o
		unicode	0, <!?!?!?>,0
aDisabled_2:				; DATA XREF: .text:004C8695o
		unicode	0, <Disabled>,0
aCond_1:				; DATA XREF: .text:004C86BFo
		unicode	0, <Cond>,0
aActive_1:				; DATA XREF: .text:loc_4C86E3o
		unicode	0, <Active>,0
aHardwareBrea_3:
		unicode	0, <Hardware breakpoints>,0
aSlot:
		unicode	0, <Slot>,0
a1BasedIndexOfH:
		unicode	0, <1-based index of hardware breakpoint>,0
aType_8:
		unicode	0, <Type>,0
aTypeOfHardware:
		unicode	0, <Type of hardware breakpoint>,0
aAddress_5:
		unicode	0, <Address>,0
aAddressOfMemor:
		unicode	0, <Address of memory guarded by the hardware breakpoint>,0
aModule_6:
		unicode	0, <Module>,0
aNameOfTheMod_2:
		unicode	0, <Name of the module this breakpoint belongs to>,0
aStatus_0:
		unicode	0, <Status>,0
aStatusOfTheHar:
		unicode	0, <Status of the hardware breakpoint>,0
aDisassembly_0:
		unicode	0, <Disassembly>,0
aDisassembled_4:
		unicode	0, <Disassembled command for code breakpoints>,0
aComment_1:
		unicode	0, <Comment>,0
aIco_h_yellow:
		unicode	0, <ICO_H_YELLOW>,0
dword_560070	dd 4			; DATA XREF: .text:loc_4C8B9Do
		dd offset aHdc__	; \=HDC__\=
		dd 0
		dd offset aHdc_0	; \=HDC\=
		dd 4
		dd offset aHwnd__	; \=HWND__\=
		dd 0
		dd offset aHwnd_2	; \=HWND\=
		dd 4
		dd offset aHinstance__	; \=HINSTANCE__\=
		dd 0
		dd offset aHex_0	; \=HEX\=
		dd 10h
		dd offset aTagrect	; \=tagRECT\=
		dd 3
		dd offset aTagrect+6	; \=RECT\=
		dd 50h
		dd offset a_exception_rec ; \=_EXCEPTION_RECORD\=
		dd 3
		dd offset a_exception_rec+2 ; \=EXCEPTION_RECORD\=
		dd 2CCh
		dd offset a_context	; \=_CONTEXT\=
		dd 3
		dd offset a_context+2	; \=CONTEXT\=
		dd 0
		dd 0
		dd 0
		dd 0
aHdc__:					; DATA XREF: .text:004C9430o
					; .data:00560074o
		unicode	0, <HDC__>,0
aHdc_0:					; DATA XREF: .data:0056007Co
		unicode	0, <HDC>,0
aHwnd__:				; DATA XREF: .data:00560084o
		unicode	0, <HWND__>,0
aHwnd_2:				; DATA XREF: .data:0056008Co
		unicode	0, <HWND>,0
aHinstance__:				; DATA XREF: .data:00560094o
		unicode	0, <HINSTANCE__>,0
; wchar_t aHex_0
aHex_0:					; DATA XREF: .text:loc_4C8C3Bo
		unicode	0, <HEX>,0
aTagrect:				; DATA XREF: .data:005600A4o
					; .data:005600ACo
		unicode	0, <tagRECT>,0
a_exception_rec:			; DATA XREF: .data:005600B4o
					; .data:005600BCo
		unicode	0, <_EXCEPTION_RECORD>,0
a_context:				; DATA XREF: .data:005600C4o
					; .data:005600CCo
		unicode	0, <_CONTEXT>,0
aDbghelp_dll_0:
		unicode	0, <DBGHELP.DLL>,0
aSymsetoptions	db 'SymSetOptions',0
aSyminitializew	db 'SymInitializeW',0
aSymcleanup	db 'SymCleanup',0
aSymloadmodule6	db 'SymLoadModule64',0
aSymgetmodulein	db 'SymGetModuleInfoW64',0
aSymenumsourcef	db 'SymEnumSourceFilesW',0
aSymunloadmodul	db 'SymUnloadModule64',0
aSymfromaddrw	db 'SymFromAddrW',0
aSymenumsymbols	db 'SymEnumSymbolsW',0
aSymgettypeinfo	db 'SymGetTypeInfo',0
aSymsetcontext	db 'SymSetContext',0
aSymgetlinefrom	db 'SymGetLineFromAddrW64',0
aSymenumsourcel	db 'SymEnumSourceLinesW',0
aDbghelp_dllIsT:
		unicode	0, <DBGHELP.DLL is too old, debugging data will be ignored>,0
aStackwalk64	db 'StackWalk64',0
aSymfunctiontab	db 'SymFunctionTableAccess64',0
aSymgetmoduleba	db 'SymGetModuleBase64',0

aSymsrv_dll:
		unicode	0, <\\symsrv.dll>,0
aMissingSymsrv_:
		unicode	0, <Missing SYMSRV.DLL, Microsoft Symbol Server is deactivated>,0
aOldSymsrv_dllM:
		unicode	0, <Old SYMSRV.DLL, Microsoft Symbol Server may be unreachable>,0
; wchar_t asc_56040A
asc_56040A:				; DATA XREF: .text:004C97BAo
		unicode	0, <;>,0
; wchar_t aDebug_1
aDebug_1:				; DATA XREF: .text:004C97D9o
		unicode	0, <debug>,0
; wchar_t aRelease
aRelease:				; DATA XREF: .text:004C9828o
		unicode	0, <release>,0
; wchar_t a_nt_symbol_pat
a_nt_symbol_pat:			; DATA XREF: .text:004C98FCo
		unicode	0, <_NT_SYMBOL_PATH>,0
; wchar_t a_nt_alternate_
a_nt_alternate_:			; DATA XREF: .text:loc_4C9957o
		unicode	0, <_NT_ALTERNATE_SYMBOL_PATH>,0
; wchar_t aSrv
aSrv:					; DATA XREF: .text:004C99D5o
		unicode	0, <;SRV*>,0
; wchar_t aSymbolsHttpMsd
aSymbolsHttpMsd:			; DATA XREF: .text:004C9A1Bo
		unicode	0, <\\symbols*http://msdl.microsoft.com/download/symbols>,0
aAccessingMicro:			; DATA XREF: .text:004C9ADAo
		unicode	0, <Accessing Microsoft Symbol Server \{module \-!%s\-\}, >
		unicode 0, <this may take a while...>,0
aPdbFileS:				; DATA XREF: .text:004C9B99o
		unicode	0, <  PDB file: \-!%s\->,0
aCoff:					; DATA XREF: .text:loc_4C9BC9o
		unicode	0, <COFF>,0
aCodeview:				; DATA XREF: .text:loc_4C9BD0o
		unicode	0, <CodeView>,0
aPdb:					; DATA XREF: .text:loc_4C9BD7o
		unicode	0, <PDB>,0
aSym:					; DATA XREF: .text:loc_4C9BDEo
		unicode	0, <SYM>,0
aDebuggingInfor:			; DATA XREF: .text:004C9BECo
		unicode	0, <  Debugging information in !%s format is available>,0
; wchar_t aQuad_1
aQuad_1:				; DATA XREF: .text:004C8C01o
		unicode	0, <QUAD>,0
; wchar_t aVoidptr
aVoidptr:				; DATA XREF: .text:004C8C29o
		unicode	0, <VOIDPTR>,0
; wchar_t aVoid_2
aVoid_2:				; DATA XREF: .text:004C8C67o
		unicode	0, <VOID>,0
; wchar_t aAscii_6
aAscii_6:				; DATA XREF: .text:004C8C98o
		unicode	0, <ASCII>,0
; wchar_t aChar_0
aChar_0:				; DATA XREF: .text:004C8CB3o
		unicode	0, <CHAR>,0
; wchar_t aUnicode_9
aUnicode_9:				; DATA XREF: .text:004C8CE4o
		unicode	0, <UNICODE>,0
; wchar_t aWchar_0
aWchar_0:				; DATA XREF: .text:004C8CFFo
		unicode	0, <WCHAR>,0
; wchar_t aInt_2
aInt_2:					; DATA XREF: .text:004C8D26o
		unicode	0, <INT>,0
; wchar_t aUint_2
aUint_2:				; DATA XREF: .text:004C8D74o
		unicode	0, <UINT>,0
; wchar_t aFloat_2
aFloat_2:				; DATA XREF: .text:004C8DC2o
		unicode	0, <FLOAT>,0
; wchar_t aDouble
aDouble:				; DATA XREF: .text:004C8DE9o
		unicode	0, <DOUBLE>,0
; wchar_t aLdouble_0
aLdouble_0:				; DATA XREF: .text:loc_4C8E1Co
		unicode	0, <LDOUBLE>,0
; wchar_t aBool_1
aBool_1:				; DATA XREF: .text:004C8E37o
		unicode	0, <BOOL>,0
; wchar_t a___c__
a_unknown_c@_:				; DATA XREF: .text:004C9103o
		unicode	0, <!?!?_C@_>,0
; wchar_t a_imp__
a_imp__:				; DATA XREF: .text:004C9124o
		unicode	0, <_imp__>,0
; wchar_t a__imp__
a__imp__:				; DATA XREF: .text:004C913Bo
		unicode	0, <__imp__>,0
; wchar_t a__real_
a__real@:				; DATA XREF: .text:004C9159o
		unicode	0, <__real@>,0
; wchar_t a_real
a_real:					; DATA XREF: .text:004C916Eo
		unicode	0, <_real>,0
; wchar_t aWinmain
aWinmain:				; DATA XREF: .text:loc_4C923Do
		unicode	0, <WinMain>,0
dword_56072C	dd 0			; DATA XREF: .text:004CA7E8w
stru_560730	t_menu <offset asc_56089C, 0, 0, offset loc_4CA290, 0, <0>>; 0
		t_menu <offset aFollowInDisa_1, offset aFollowSelec_10, 29Eh, \ ; \=!\=
   offset loc_4CA404, 0, <0>>; 1
		t_menu <offset aBreakpoint_3, offset aSetUnconditi_9, 118h, \
   offset loc_4CA45C, 0, <0>>; 2
		t_menu <offset aConditionalB_9, offset aSetCondition_2, 119h, \
   offset loc_4CA45C, 0, <1>>; 3
		t_menu <offset aConditionalL_7, offset aSetCondition_6, 11Ah, \
   offset loc_4CA45C, 0, <2>>; 4
		t_menu <offset aRemoveBreakp_8, offset aRemoveAllBreak, 118h, \
   offset loc_4CA45C, 0, <3>>; 5
		t_menu <offset aDisableBreak_4, offset aTemporarilyD_1, 11Ch, \
   offset loc_4CA684, 0, <0>>; 6
		t_menu <offset aEnableBreakp_1, offset aReEnableBrea_1, 11Ch, \
   offset loc_4CA684, 0, <1>>; 7
		t_menu <offset aSource_1, offset word_560868, 0, 0, 0, <0>>; 8
		t_menu <offset asc_560CE6, offset word_560868, 0, 0, \
   offset stru_518B94, <0>>; 9
		t_menu <offset aView_0, offset aViewSourceFi_0, 2A8h, \
   offset loc_4CA74C, 0, <0>>; 10
		t_menu <offset aSrclist, offset word_560868, 0, 0, 0, <0>>; 11
		t_menu <offset asc_560CE6, offset word_560868, 0, 0, \
   offset stru_518B94, <0>>; 12
; wchar_t word_560868
word_560868	dw 0			; DATA XREF: .text:loc_4CA4F0o
aUnableToSetB_5:			; DATA XREF: .text:004CA523o
		unicode	0, <Unable to set breakpoint>,0
asc_56089C:				; DATA XREF: .data:stru_560730o
		unicode	0, <\:>,0
aFollowInDisa_1:			; DATA XREF: .data:stru_560730o
		unicode	0, <\AFollow in Disassembler>,0
aFollowSelec_10:			; DATA XREF: .data:stru_560730o
		unicode	0, <Follow selected line in CPU Disassembler>,0
aBreakpoint_3:				; DATA XREF: .data:stru_560730o
		unicode	0, <|Breakpoint>,0
aSetUnconditi_9:			; DATA XREF: .data:stru_560730o
		unicode	0, <Set unconditional breakpoint on every extent of the selec>
		unicode	0, <ted line>,0
aConditionalB_9:			; DATA XREF: .data:stru_560730o
		unicode	0, <Conditional breakpoint...>,0
aSetCondition_2:			; DATA XREF: .data:stru_560730o
		unicode	0, <Set conditional breakpoint on every extent of the selecte>
		unicode	0, <d line>,0
aConditionalL_7:			; DATA XREF: .data:stru_560730o
		unicode	0, <Conditional log...>,0
aSetCondition_6:			; DATA XREF: .data:stru_560730o
		unicode	0, <Set conditional logging breakpoint on every extent of the>
		unicode	0, < selected line>,0
aRemoveBreakp_8:			; DATA XREF: .data:stru_560730o
		unicode	0, <Remove breakpoint>,0
aRemoveAllBreak:			; DATA XREF: .data:stru_560730o
		unicode	0, <Remove all breakpoints from the selected source line>,0
aDisableBreak_4:			; DATA XREF: .data:stru_560730o
		unicode	0, <Disable breakpoint>,0
aTemporarilyD_1:			; DATA XREF: .data:stru_560730o
		unicode	0, <Temporarily disable all breakpoints on selected source li>
		unicode	0, <ne>,0
aEnableBreakp_1:			; DATA XREF: .data:stru_560730o
		unicode	0, <Enable breakpoint>,0
aReEnableBrea_1:			; DATA XREF: .data:stru_560730o
		unicode	0, <Re-enable breakpoints on selected source line>,0
aSource_1:				; DATA XREF: .data:stru_560730o
		unicode	0, <|*SOURCE>,0
asc_560CE6:				; DATA XREF: .data:stru_560730o
		unicode	0, <|>,0
; wchar_t asc_560CEA
asc_560CEA:				; DATA XREF: .text:004CAF78o
		unicode	0, <  >,0
; wchar_t asc_560CF0
asc_560CF0:				; DATA XREF: .text:004CAF9Co
		dw 3Eh
		unicode	0, < >,0
; wchar_t asc_560CF6
asc_560CF6:				; DATA XREF: .text:loc_4CAFB7o
		dw 2 dup(3Eh), 0
; wchar_t a5i_
a5i_:					; DATA XREF: .text:004CAFD5o
		unicode	0, <!%5i.>,0
; wchar_t aSourceCode_0
aSourceCode_0:				; DATA XREF: .text:004CB1C8o
		unicode	0, <Source code>,0
aLine_0:				; DATA XREF: .text:004CB1E8o
		unicode	0, <Line>,0
aLineNumber:				; DATA XREF: .text:004CB1F4o
		unicode	0, <Line number>,0
aSource_0:				; DATA XREF: .text:004CB20Eo
		unicode	0, <Source>,0
; const	WCHAR aIco_s
aIco_s:					; DATA XREF: .text:004CB295o
		unicode	0, <ICO_S>,0
aUnableToShow_0:			; DATA XREF: .text:loc_4CA7B2o
		unicode	0, <Unable to show source>,0
aView_0:				; DATA XREF: .data:stru_560730o
		unicode	0, <\AView>,0
aViewSourceFi_0:			; DATA XREF: .data:stru_560730o
		unicode	0, <View source file>,0
aSrclist:				; DATA XREF: .data:stru_560730o
		unicode	0, <|*SRCLIST>,0
; wchar_t aSourceFiles
aSourceFiles:				; DATA XREF: .text:004CB644o
		unicode	0, <Source files>,0
aModule_7:				; DATA XREF: .text:004CB667o
		unicode	0, <Module>,0
aModuleContaini:			; DATA XREF: .text:004CB671o
		unicode	0, <Module containing source file>,0
aNameOfTheSourc:			; DATA XREF: .text:004CB699o
		unicode	0, <Name of the source file>,0
aPath_2:				; DATA XREF: .text:004CB6B7o
		unicode	0, <Path>,0
aFullNameOfSour:			; DATA XREF: .text:004CB6C1o
		unicode	0, <Full name of source file, including path>,0
stru_560EB8	t_control <2, 0FFFFFFFFh, 5, 6, 19h, 9, 0, offset aExport_0, 0, 0>; 0
					; \=Export:\=
		t_control <14h, 3E8h, 1Eh, 4, 0D9h, 118h, 0, 0, \ ; \=Select export to call\=
      offset aSelectExportTo, 0>; 0
		t_control <3Eh, 3E9h, 8Ch, 13h, 1Eh, 0Ch, offset a3, \ ; \=Sort by name\=
      offset aSortByName_0, offset aSortListOfExpo, 0>; 0
		t_control <11h, 3EAh, 0BEh, 13h, 39h, 0Ch, 0, offset aFollowInCpu_1, \ ; \=Follow in CPU\=
      offset aPressToFollowS, 0>; 0
		t_control <10h, 3EBh, 0FFh, 4, 82h, 53h, 0, 0, offset aInformationOnS,\ ; \=Information on selected export\=
      0>		; 0
		t_control <60h, 410h, 5, 15h, 1Eh, 0Bh, 0, offset aNoArguments, \ ; \=No arguments\=
      offset aFunctionHasNoA, 0>; 0
		t_control <61h, 411h, 5, 26h, 0FFFFFFBCh, 0Bh, 0, offset aArg1, \ ; \=Arg1\=
      offset aFunctionHas1Ar, 0>; 0
		t_control <62h, 412h, 5, 44h, 0FFFFFFBCh, 0Bh, 0, offset aArg2_0, \ ; \=Arg2\=
      offset aFunctionHas2Ar, 0>; 0
		t_control <63h, 413h, 5, 62h, 0FFFFFFBCh, 0Bh, 0, offset aArg3_0, \ ; \=Arg3\=
      offset aFunctionHas3Ar, 0>; 0
		t_control <64h, 414h, 5, 80h, 0FFFFFFBCh, 0Bh, 0, offset aArg4_0, \ ; \=Arg4\=
      offset aFunctionHas4Ar, 0>; 0
		t_control <65h, 415h, 5, 9Eh, 0FFFFFFBCh, 0Bh, 0, offset aArg5_0, \ ; \=Arg5\=
      offset aFunctionHas5Ar, 0>; 0
		t_control <66h, 416h, 5, 0BCh, 0FFFFFFBCh, 0Bh, 0, offset aArg6_0, \ ; \=Arg6\=
      offset aFunctionHas6Ar, 0>; 0
		t_control <67h, 417h, 5, 0DAh, 0FFFFFFBCh, 0Bh, 0, offset aArg7_0, \ ; \=Arg7\=
      offset aFunctionHas7Ar, 0>; 0
		t_control <68h, 418h, 5, 0F8h, 0FFFFFFBCh, 0Bh, 0, offset aArg8_0, \ ; \=Arg8\=
      offset aFunctionHas8Ar, 0>; 0
		t_control <69h, 419h, 5, 116h, 0FFFFFFBCh, 0Bh, 0, offset aArg9_0, \ ; \=Arg9\=
      offset aFunctionHas9Ar, 0>; 0
		t_control <6Ah, 41Ah, 5, 134h, 0FFFFFFBCh, 0Bh, 0, offset aArg10_0, \ ; \=Arg10\=
      offset aFunctionHas10A, 0>; 0
		t_control <16h, 424h, 0Dh, 32h, 3Ch, 0C8h, 0, 0, \ ; \=First call argument\=
      offset aFirstCallArgum, 0>; 0
		t_control <16h, 425h, 0Dh, 50h, 3Ch, 0C8h, 0, 0, \ ; \=Second call argument\=
      offset aSecondCallArgu, 0>; 0
		t_control <16h, 426h, 0Dh, 6Eh, 3Ch, 0C8h, 0, 0, \ ; \=Third call argument\=
      offset aThirdCallArgum, 0>; 0
		t_control <16h, 427h, 0Dh, 8Ch, 3Ch, 0C8h, 0, 0, \ ; \=Fourth call argument\=
      offset aFourthCallArgu, 0>; 0
		t_control <16h, 428h, 0Dh, 0AAh, 3Ch, 0C8h, 0, 0, \ ; \=Fifth call argument\=
      offset aFifthCallArgum, 0>; 0
		t_control <16h, 429h, 0Dh, 0C8h, 3Ch, 0C8h, 0, 0, \ ; \=Sixth call argument\=
      offset aSixthCallArgum, 0>; 0
		t_control <16h, 42Ah, 0Dh, 0E6h, 3Ch, 0C8h, 0, 0, \ ; \=Seventh call argument\=
      offset aSeventhCallArg, 0>; 0
		t_control <16h, 42Bh, 0Dh, 104h, 3Ch, 0C8h, 0, 0, \ ; \=Eighth call argument\=
      offset aEighthCallArgu, 0>; 0
		t_control <16h, 42Ch, 0Dh, 122h, 3Ch, 0C8h, 0, 0, \ ; \=Ninth call argument\=
      offset aNinthCallArgum, 0>; 0
		t_control <16h, 42Dh, 0Dh, 140h, 3Ch, 0C8h, 0, 0, \ ; \=Tenth call argument\=
      offset aTenthCallArgum, 0>; 0
		t_control <7Dh, 438h, 4Dh, 28h, 0AAh, 35h, 0, offset ottable, \ ; \=First data buffer\=
      offset aFirstDataBuffe, 0>; 0
		t_control <7Dh, 439h, 4Dh, 64h, 0AAh, 35h, 0, offset ottable, \ ; \=Second data buffer\=
      offset aSecondDataBuff, 0>; 0
		t_control <7Dh, 43Ah, 4Dh, 0A0h, 0AAh, 35h, 0, offset ottable, \ ; \=Third data buffer\=
      offset aThirdDataBuffe, 0>; 0
		t_control <7Dh, 43Bh, 4Dh, 0DCh, 0AAh, 35h, 0, offset ottable, \ ; \=Fourth data buffer\=
      offset aFourthDataBuff, 0>; 0
		t_control <7Dh, 43Ch, 4Dh, 118h, 0AAh, 35h, 0, offset ottable, \ ; \=Fifth data buffer\=
      offset aFifthDataBuffe, 0>; 0
		t_control <2, 0FFFFFFFFh, 10Eh, 5Eh, 64h, 9, 0, \ ; \=Contents of registers:\=
      offset aContentsOfRegi, 0, 0>; 0
		t_control <2, 0FFFFFFFFh, 10Eh, 68h, 3Ch, 9, 0, offset aBeforeCall, 0,\ ; \=Before call\=
      0>		; 0
		t_control <2, 0FFFFFFFFh, 14Fh, 68h, 46h, 9, 0, offset aAfterCall, 0, \ ; \=After call\=
      0>		; 0
		t_control <2, 0FFFFFFFFh, 0FFh, 76h, 0Fh, 9, 0, offset aEax_1, 0, 0>; 0	; \=EAX\=
		t_control <2, 0FFFFFFFFh, 0FFh, 88h, 0Fh, 9, 0, offset aEcx, 0, 0>; 0 ;	\=ECX\=
		t_control <2, 0FFFFFFFFh, 0FFh, 9Ah, 0Fh, 9, 0, offset aEdx, 0, 0>; 0 ;	\=EDX\=
		t_control <2, 0FFFFFFFFh, 0FFh, 0ACh, 0Fh, 9, 0, offset aEbx, 0, 0>; 0 ; \=EBX\=
		t_control <2, 0FFFFFFFFh, 0FFh, 0BEh, 0Fh, 9, 0, offset aEsi_2, 0, 0>; 0 ; \=ESI\=
		t_control <2, 0FFFFFFFFh, 0FFh, 0D0h, 0Fh, 9, 0, offset aEdi, 0, 0>; 0 ; \=EDI\=
		t_control <16h, 44Ch, 10Eh, 74h, 3Ch, 0C8h, 0, 0, \ ; \=Contents of register EAX before call\=
      offset aContentsOfRe_0, 0>; 0
		t_control <16h, 44Dh, 10Eh, 86h, 3Ch, 0C8h, 0, 0, \ ; \=Contents of register ECX before call\=
      offset aContentsOfRe_9, 0>; 0
		t_control <16h, 44Eh, 10Eh, 98h, 3Ch, 0C8h, 0, 0, \ ; \=Contents of register EDX before call\=
      offset aContentsOfRe_1, 0>; 0
		t_control <16h, 44Fh, 10Eh, 0AAh, 3Ch, 0C8h, 0, 0, \ ; \=Contents of register EBX before call\=
      offset aContentsOfR_10, 0>; 0
		t_control <16h, 452h, 10Eh, 0BCh, 3Ch, 0C8h, 0, 0, \ ; \=Contents of register ESI before call\=
      offset aContentsOfRe_2, 0>; 0
		t_control <16h, 453h, 10Eh, 0CEh, 3Ch, 0C8h, 0, 0, \ ; \=Contents of register EDI before call\=
      offset aContentsOfR_11, 0>; 0
		t_control <0Dh, 460h, 14Fh, 74h, 32h, 0Dh, 0, 0, \ ; \=Contents of register EAX after call\=
      offset aContentsOfRe_3, 0>; 0
		t_control <0Dh, 461h, 14Fh, 86h, 32h, 0Dh, 0, 0, \ ; \=Contents of register ECX after call\=
      offset aContentsOfRe_4, 0>; 0
		t_control <0Dh, 462h, 14Fh, 98h, 32h, 0Dh, 0, 0, \ ; \=Contents of register EDX after call\=
      offset aContentsOfRe_5, 0>; 0
		t_control <0Dh, 463h, 14Fh, 0AAh, 32h, 0Dh, 0, 0, \ ; \=Contents of register EBX after call\=
      offset aContentsOfRe_6, 0>; 0
		t_control <0Dh, 466h, 14Fh, 0BCh, 32h, 0Dh, 0, 0, \ ; \=Contents of register ESI after call\=
      offset aContentsOfRe_7, 0>; 0
		t_control <0Dh, 467h, 14Fh, 0CEh, 32h, 0Dh, 0, 0, \ ; \=Contents of register EDI after call\=
      offset aContentsOfRe_8, 0>; 0
		t_control <3Eh, 3ECh, 10Eh, 0E1h, 32h, 0Bh, offset dword_5D3A34, \ ; \=Hide on call\=
      offset aHideOnCall, offset aHideThisDialog, 0>; 0
		t_control <3Eh, 3EDh, 10Eh, 0ECh, 32h, 0Bh, offset dword_5D3A38, \ ; \=Pause after call\=
      offset aPauseAfterCa_0, offset aPauseDebuggeeA, 0>; 0
		t_control <11h, 3EEh, 14Fh, 0E4h, 32h, 0Fh, 0, offset aCallExport, \ ; \=Call export\=
      offset aCallSelectedEx, 0>; 0
		t_control <10h, 3EFh, 0FFh, 0FEh, 82h, 3Ch, 0, 0, \ ; \=Results of call\=
      offset aResultsOfCall, 0>; 0
		t_control <11h, 3F0h, 14Fh, 13Fh, 32h, 0Fh, 0, offset aClose_2, \ ; \=Close\=
      offset aCloseDialog_0, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 186h, 154h, 0, offset aCallDllExpor_1,\ ; \=Call DLL export\=
      0, 0>	; 0
; wchar_t aLoaddllLoaddll
aLoaddllLoaddll:			; DATA XREF: .text:004CC268o
		unicode	0, <\\loaddll\\loaddll.exe>,0
aProcessingLoad:			; DATA XREF: .text:004CC279o
		unicode	0, <Processing loaddll.exe>,0
aUnableToLoadS:				; DATA XREF: .text:004CC2B5o
		unicode	0, <  Unable to load \-!%s\->,0
; wchar_t aLoaddll_dat
aLoaddll_dat:				; DATA XREF: .text:004CC2FDo
		unicode	0, <\\loaddll.dat>,0
; wchar_t aWb_1
aWb_1:					; DATA XREF: .text:004CC30Eo
		unicode	0, <wb>,0
aUnableToCrea_3:			; DATA XREF: .text:004CC32Fo
		unicode	0, <  Unable to create file \-!%s\->,0
aErrorSavingD_1:			; DATA XREF: .text:004CC381o
		unicode	0, <  Error saving data to file \-!%s\->,
aFileLoaddll_da:			; DATA XREF: .text:loc_4CC39Bo
		unicode	0, <  File \-loaddll.dat\- created successfully>,0
; const	WCHAR aRes_loaddll
aRes_loaddll:				; DATA XREF: .text:004CC41Do
		unicode	0, <RES_LOADDLL>,0
; const	WCHAR aLoaddlltype
aLoaddlltype:				; DATA XREF: .text:004CC418o
		unicode	0, <LOADDLLTYPE>,0
; char aOllydbgV2_01Dl[]
aOllydbgV2_01Dl	db '*OllyDbg v2.01 DLL Loader*',0 ; DATA XREF: .text:004CC57Co
		db    0
aUnableToExtrac:			; DATA XREF: .text:004CC5C7o
		unicode	0, <Unable to extract LOADDLL.EXE. This is an internal error.>
		unicode	0, < Probably OllyDbg is incompatible with your OS. Please in>
		unicode	0, <form author.>,0
aUnableToExtr_2:			; DATA XREF: .text:004CC5E0o
		unicode	0, <Unable to extract LOADDLL.EXE due to low memory condition>
		unicode	0, <.>,0
aUnableToExtr_0:			; DATA XREF: .text:004CC5F9o
		unicode	0, <Unable to extract LOADDLL.EXE. If OllyDbg directory is wr>
		unicode	0, <ite-protected, please enable writing or move OllyDbg to a>
		unicode	0, <nother directory.>,0
aInvalidVersion:			; DATA XREF: .text:004CC619o
		unicode	0, <Invalid version of LOADDLL.EXE. Please delete file >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, < in order to allow OllyDbg to extract valid copy of DLL l>
		unicode	0, <oader.>,0
; wchar_t aLinkarea
aLinkarea:				; DATA XREF: .text:004CC68Co
		unicode	0, <Linkarea>,0
; wchar_t aDump1
aDump1:					; DATA XREF: .text:004CC6ADo
		unicode	0, <Dump1>,0
; wchar_t aLoadret
aLoadret:				; DATA XREF: .text:004CC6CEo
		unicode	0, <Loadret>,0
; wchar_t aCalldone
aCalldone:				; DATA XREF: .text:004CC6ECo
		unicode	0, <Calldone>,0
aExport_0:				; DATA XREF: .data:stru_560EB8o
		unicode	0, <Export:>,0
aSelectExportTo:			; DATA XREF: .data:00560EE0o
		unicode	0, <Select export to call>,0
aSortByName_0:				; DATA XREF: .data:00560F08o
		unicode	0, <Sort by name>,0
aSortListOfExpo:			; DATA XREF: .data:00560F08o
		unicode	0, <Sort list of exported functions by name \{unchecked: by ad>
		unicode	0, <dress\}>,0
aFollowInCpu_1:				; DATA XREF: .data:00560F30o
		unicode	0, <Follow in CPU>,0
aPressToFollowS:			; DATA XREF: .data:00560F30o
		unicode	0, <Press to follow selected export in CPU Disassembler>,0
aInformationOnS:			; DATA XREF: .data:00560F58o
		unicode	0, <Information on selected export>,0
aNoArguments:				; DATA XREF: .data:00560F80o
		unicode	0, <No arguments>,0
aFunctionHasNoA:			; DATA XREF: .data:00560F80o
		unicode	0, <Function has no arguments>,0
aArg1:					; DATA XREF: .data:00560FA8o
		unicode	0, <Arg1>,0
aFunctionHas1Ar:			; DATA XREF: .data:00560FA8o
		unicode	0, <Function has 1 argument>,0
aArg2_0:				; DATA XREF: .data:00560FD0o
		unicode	0, <Arg2>,0
aFunctionHas2Ar:			; DATA XREF: .data:00560FD0o
		unicode	0, <Function has 2 arguments>,0
aArg3_0:				; DATA XREF: .data:00560FF8o
		unicode	0, <Arg3>,0
aFunctionHas3Ar:			; DATA XREF: .data:00560FF8o
		unicode	0, <Function has 3 arguments>,0
aArg4_0:				; DATA XREF: .data:00561020o
		unicode	0, <Arg4>,0
aFunctionHas4Ar:			; DATA XREF: .data:00561020o
		unicode	0, <Function has 4 arguments>,0
aArg5_0:				; DATA XREF: .data:00561048o
		unicode	0, <Arg5>,0
aFunctionHas5Ar:			; DATA XREF: .data:00561048o
		unicode	0, <Function has 5 arguments>,0
aArg6_0:				; DATA XREF: .data:00561070o
		unicode	0, <Arg6>,0
aFunctionHas6Ar:			; DATA XREF: .data:00561070o
		unicode	0, <Function has 6 arguments>,0
aArg7_0:				; DATA XREF: .data:00561098o
		unicode	0, <Arg7>,0
aFunctionHas7Ar:			; DATA XREF: .data:00561098o
		unicode	0, <Function has 7 arguments>,0
aArg8_0:				; DATA XREF: .data:005610C0o
		unicode	0, <Arg8>,0
aFunctionHas8Ar:			; DATA XREF: .data:005610C0o
		unicode	0, <Function has 8 arguments>,0
aArg9_0:				; DATA XREF: .data:005610E8o
		unicode	0, <Arg9>,0
aFunctionHas9Ar:			; DATA XREF: .data:005610E8o
		unicode	0, <Function has 9 arguments>,0
aArg10_0:				; DATA XREF: .data:00561110o
		unicode	0, <Arg10>,0
aFunctionHas10A:			; DATA XREF: .data:00561110o
		unicode	0, <Function has 10 arguments>,0
aFirstCallArgum:			; DATA XREF: .data:00561138o
		unicode	0, <First call argument>,0
aSecondCallArgu:			; DATA XREF: .data:00561160o
		unicode	0, <Second call argument>,0
aThirdCallArgum:			; DATA XREF: .data:00561188o
		unicode	0, <Third call argument>,0
aFourthCallArgu:			; DATA XREF: .data:005611B0o
		unicode	0, <Fourth call argument>,0
aFifthCallArgum:			; DATA XREF: .data:005611D8o
		unicode	0, <Fifth call argument>,0
aSixthCallArgum:			; DATA XREF: .data:00561200o
		unicode	0, <Sixth call argument>,0
aSeventhCallArg:			; DATA XREF: .data:00561228o
		unicode	0, <Seventh call argument>,0
aEighthCallArgu:			; DATA XREF: .data:00561250o
		unicode	0, <Eighth call argument>,0
aNinthCallArgum:			; DATA XREF: .data:00561278o
		unicode	0, <Ninth call argument>,0
aTenthCallArgum:			; DATA XREF: .data:005612A0o
		unicode	0, <Tenth call argument>,0
aFirstDataBuffe:			; DATA XREF: .data:005612C8o
		unicode	0, <First data buffer>,0
aSecondDataBuff:			; DATA XREF: .data:005612F0o
		unicode	0, <Second data buffer>,0
aThirdDataBuffe:			; DATA XREF: .data:00561318o
		unicode	0, <Third data buffer>,0
aFourthDataBuff:			; DATA XREF: .data:00561340o
		unicode	0, <Fourth data buffer>,0
aFifthDataBuffe:			; DATA XREF: .data:00561368o
		unicode	0, <Fifth data buffer>,0
aContentsOfRegi:			; DATA XREF: .data:00561390o
		unicode	0, <Contents of registers:>,0
aBeforeCall:				; DATA XREF: .data:005613B8o
		unicode	0, <Before call>,0
aAfterCall:				; DATA XREF: .data:005613E0o
		unicode	0, <After call>,0
aEax_1:					; DATA XREF: .data:00561408o
		unicode	0, <EAX>,0
aEcx:					; DATA XREF: .data:00561430o
		unicode	0, <ECX>,0
aEdx:					; DATA XREF: .data:00561458o
		unicode	0, <EDX>,0
aEbx:					; DATA XREF: .data:00561480o
		unicode	0, <EBX>,0
aEsi_2:					; DATA XREF: .data:005614A8o
		unicode	0, <ESI>,0
aEdi:					; DATA XREF: .data:005614D0o
		unicode	0, <EDI>,0
aContentsOfRe_0:			; DATA XREF: .data:005614F8o
		unicode	0, <Contents of register EAX before call>,0
aContentsOfRe_9:			; DATA XREF: .data:00561520o
		unicode	0, <Contents of register ECX before call>,0
aContentsOfRe_1:			; DATA XREF: .data:00561548o
		unicode	0, <Contents of register EDX before call>,0
aContentsOfR_10:			; DATA XREF: .data:00561570o
		unicode	0, <Contents of register EBX before call>,0
aContentsOfRe_2:			; DATA XREF: .data:00561598o
		unicode	0, <Contents of register ESI before call>,0
aContentsOfR_11:			; DATA XREF: .data:005615C0o
		unicode	0, <Contents of register EDI before call>,0
aContentsOfRe_3:			; DATA XREF: .data:005615E8o
		unicode	0, <Contents of register EAX after call>,0
aContentsOfRe_4:			; DATA XREF: .data:00561610o
		unicode	0, <Contents of register ECX after call>,0
aContentsOfRe_5:			; DATA XREF: .data:00561638o
		unicode	0, <Contents of register EDX after call>,0
aContentsOfRe_6:			; DATA XREF: .data:00561660o
		unicode	0, <Contents of register EBX after call>,0
aContentsOfRe_7:			; DATA XREF: .data:00561688o
		unicode	0, <Contents of register ESI after call>,0
aContentsOfRe_8:			; DATA XREF: .data:005616B0o
		unicode	0, <Contents of register EDI after call>,0
aHideOnCall:				; DATA XREF: .data:005616D8o
		unicode	0, <Hide on call>,0
aHideThisDialog:			; DATA XREF: .data:005616D8o
		unicode	0, <Hide this dialog on call and restore it afterwards>,0
aPauseAfterCa_0:			; DATA XREF: .data:00561700o
		unicode	0, <Pause after call>,0
aPauseDebuggeeA:			; DATA XREF: .data:00561700o
		unicode	0, <Pause Debuggee after call to DLL is finished>,0
aCallExport:				; DATA XREF: .data:00561728o
		unicode	0, <Call export>,0
aCallSelectedEx:			; DATA XREF: .data:00561728o
		unicode	0, <Call selected export with specified arguments>,0
aResultsOfCall:				; DATA XREF: .data:00561750o
		unicode	0, <Results of call>,0
aClose_2:				; DATA XREF: .data:00561778o
		unicode	0, <Close>,0
aCloseDialog_0:				; DATA XREF: .data:00561778o
		unicode	0, <Close dialog>,0
aCallDllExpor_1:			; DATA XREF: .data:005617A0o
		unicode	0, <Call DLL export>,0

		
_data		ends
		