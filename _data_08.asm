_data		segment	para public 'DATA' use32
aLowMemorySomeE:
		unicode	0, <Low memory, some exports will be missed>,0
aU_2:
		unicode	0, <#!%u>,0
a08xS_0:
		unicode	0, <!%08X  !%s>,0
aArgI:
		unicode	0, <Arg!%i>,0
aAttentionIArgu:
		unicode	0, < ATTENTION! !%i ARGUMENTS\:>,0
aCallback_0:
		unicode	0, < Callback,>,0
aIArguments:
		unicode	0, < !%i arguments>,0
aDebugData:
		unicode	0, < \{debug data\}\l>,0
aGuessed_0:
		unicode	0, < \{guessed\}\l>,0
a_32sSS:
		unicode	0, < !%.32s: !%s!%s\l>,0
asc_562AC6:
		unicode	0, <*>,0
a___FormatArgum:
		unicode	0, < ... \{Format arguments may follow\}\l>,0
a___CountedItem:
		unicode	0, < ... \{Counted items may follow\}\l>,0
aReturnsSS:
		unicode	0, < Returns !%s!%s\l>,0
aMayTerminatePr:
		unicode	0, < May terminate process/thread\l>,0
aTampersWithRet:
		unicode	0, < Tampers with return address\l>,0
aPreserves:
		unicode	0, < Preserves>,0
aS_16:
		unicode	0, < !%s,>,0
aInternalErro_1:
		unicode	0, <Internal error>,0
aHwnd_1:
		unicode	0, <\[HWND\]>,0
aUnableToCommun:
		unicode	0, <Unable to communicate with LOADDLL.EXE>,0
aHinst:
		unicode	0, <\[HINST\]>,0
aExpressionMust:
		unicode	0, <Expression must be of integer type>,0
aDumpI:
		unicode	0, <Dump!%i>,0
aCallDll:
		unicode	0, <Call DLL>,0
aPlacement_2:
		unicode	0, <Placement>,0
aII_1:					; DATA XREF: .text:004CCCFBo
		unicode	0, <!%i,!%i>,0
; wchar_t a08x_6
a08x_6:					; DATA XREF: .text:004CD01Eo
		unicode	0, <!%08X>,0
aCanTCallDllExp:			; DATA XREF: .text:loc_4CD0E9o
		unicode	0, <Can>
		dw 27h
		unicode	0, <t call DLL export now>,0
aPleaseRunLoadd:			; DATA XREF: .text:004CD16Do
		unicode	0, <Please run LOADDLL.EXE first\:>,0
aErrorInArgumen:			; DATA XREF: .text:004CD224o
		unicode	0, <Error in argument !%i: >,0
aErrorInRegiste:			; DATA XREF: .text:004CD2D8o
		unicode	0, <Error in register !%s: >,0
aCallingExport_:			; DATA XREF: .text:loc_4CD3A2o
		unicode	0, <Calling export...>,0
; const	WCHAR aDia_empty_2
aDia_empty_2:				; DATA XREF: .text:004CD599o
		unicode	0, <DIA_EMPTY>,0
aUnableToGetDat:
		unicode	0, <Unable to get data from LOADDLL.EXE>,0
aCallFinished:
		unicode	0, < Call finished>,0
aDuration_6fS:
		unicode	0, <, duration !%.6f s>
		dw 0Ah,	0
aDuration_6fMs:
		unicode	0, <, duration !%.6f ms>
		dw 0Ah,	0
aDuration_3fUs:
		unicode	0, <, duration !%.3f us>
		dw 0Ah,	0
aEaxS:
		unicode	0, < EAX = !%s>
		dw 0Ah,	0
aSubroutineRemo:
		unicode	0, < Subroutine removed !%i doublewords from stack>
		dw 0Ah,	0
aSubroutineRe_0:
		unicode	0, < Subroutine removed !%i bytes of data from stack>
		dw 0Ah,	0
aErrcode_2:
		unicode	0, <ERRCODE>,0
aLastError08x:
		unicode	0, < Last error = !%08X>
		dw 0Ah,	0
aLastErrorS:
		unicode	0, < Last error = !%s>
		dw 0Ah,	0
stru_563044	t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aCode_3, 0, 0>;	0
					; \=Code\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aCodeOptions, 0, 0>; 0 ; \=Code options\=
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 1Ah, 64h, 0Ah, 0, \ ; \=Disassembling syntax:\=
      offset aDisassemblingS, 0, 0>; 0
		t_control <60h, 2333h, 69h, 26h, 64h, 0Ah, offset dword_5BDCC8, \ ; \=MASM \{Microsoft\}\=
      offset aMasmMicrosoft, offset aDisassembleInM, 0>; 0
		t_control <61h, 2334h, 69h, 32h, 64h, 0Ah, offset dword_5BDCC8, \ ; \=IDEAL \{Borland\}\=
      offset aIdealBorland, offset aDisassembleInB, 0>; 0
		t_control <62h, 2335h, 69h, 3Eh, 64h, 0Ah, offset dword_5BDCC8, \ ; \=HLA \{Randall Hyde\}\=
      offset aHlaRandallHyde, offset aDisassembleInH, 0>; 0
		t_control <63h, 2336h, 69h, 4Ah, 64h, 0Ah, offset dword_5BDCC8, \ ; \=Linux \{AT\A\AT\} - only disassembly!\=
      offset aLinuxAtTOnlyDi, offset aDisassembleInA, 0>; 0
		t_control <3Eh, 2337h, 5Ah, 5Ah, 78h, 0Ah, offset dword_5BDCCC, \ ; \=Disassemble in lowercase\=
      offset aDisassembleI_0, offset aDisplayMnemoni, 0>; 0
		t_control <3Eh, 2338h, 5Ah, 66h, 78h, 0Ah, offset dword_5BDCD0, \ ; \=Tab between mnemonics and arguments\=
      offset aTabBetweenMnem, offset aStartOperandsF, 0>; 0
		t_control <3Eh, 2339h, 5Ah, 72h, 78h, 0Ah, offset dword_5BDCD4, \ ; \=Extra space between arguments\=
      offset aExtraSpaceBe_0, offset aInsertAddition, 0>; 0
		t_control <3Eh, 233Ah, 5Ah, 7Eh, 78h, 0Ah, offset dword_5BDCD8, \ ; \=Show default segments\=
      offset aShowDefaultS_0, offset aShowImplicitSe, 0>; 0
		t_control <3Eh, 233Bh, 5Ah, 8Ah, 78h, 0Ah, offset dword_5BDCDC, \ ; \=Always show size of memory operands\=
      offset aAlwaysShowSize, offset aShowSizeOfMemo, 0>; 0
		t_control <3Eh, 233Ch, 5Ah, 96h, 78h, 0Ah, offset dword_5BDCE0, \ ; \=Show NEAR jump modifiers\=
      offset aShowNearJumpMo, offset aMarkIndirectIn, 0>; 0
		t_control <3Eh, 233Dh, 5Ah, 0A6h, 78h, 0Ah, offset dword_5BDD04, \ ; \=Show local module name\=
      offset aShowLocalModul, offset aPrecedeLocalAd, 0>; 0
		t_control <3Eh, 233Eh, 5Ah, 0B2h, 78h, 0Ah, offset dword_5BDD00, \ ; \=Show symbolic addresses\=
      offset aShowSymbolic_2, offset aShowKnownSymbo, 0>; 0
		t_control <3Eh, 233Fh, 5Ah, 0BEh, 78h, 0Ah, offset dword_57FE94, \ ; \=Demangle symbolic names\=
      offset aDemangleSymbol, offset aConvertEncoded, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aMnemonics, 0, 0>; 0 ; \=\tMnemonics\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aMnemonics+2, 0, 0>; 0 ; \=Mnemonics\=
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <3Eh, 2333h, 5Ah, 1Ah, 96h, 0Ah, offset dword_5BDCE4, \ ; \=Guess alternative forms of conditional \=...
      offset aGuessAlternati, offset aLikeJzJcInstea, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 2Ah, 96h, 0Ah, 0, \ ; \=Form of string commands:\=
      offset aFormOfStringCo, 0, 0>; 0
		t_control <60h, 2334h, 69h, 36h, 78h, 0Ah, offset dword_5BDCE8, \ ; \=Long \{MOVS [DWORD EDI],[DWORD ESI]...\}\=
      offset aLongMovsDwordE, offset aStateAssumedSt, 0>; 0
		t_control <61h, 2335h, 69h, 42h, 78h, 0Ah, offset dword_5BDCE8, \ ; \=Short \{MOVSB...\}\=
      offset aShortMovsb___, offset aDoNotSpecifyAs, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 52h, 96h, 0Ah, 0, \ ; \=Decode near returns as:\=
      offset aDecodeNearRetu, 0, 0>; 0
		t_control <60h, 2336h, 69h, 5Eh, 78h, 0Ah, offset dword_5BDCEC, \ ; \=RETN\=
      offset aRetn_1, offset aEmphasizeThatR, 0>; 0
		t_control <61h, 2337h, 69h, 6Ah, 78h, 0Ah, offset dword_5BDCEC, \ ; \=RET\=
      offset aRet_0, offset aAlmostAllRetur, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 7Ah, 96h, 0Ah, 0, \ ; \=Decode size-sensitive 16/32-bit mnemoni\=...
      offset aDecodeSizeSens, 0, 0>; 0
		t_control <60h, 2338h, 69h, 86h, 78h, 0Ah, offset dword_5BDCF8, \ ; \=PUSHA/PUSHAD, MOVS/MOVSD...\=
      offset aPushaPushadMov, offset aNoSuffixFor16B, 0>; 0
		t_control <61h, 2339h, 69h, 92h, 78h, 0Ah, offset dword_5BDCF8, \ ; \=PUSHAW/PUSHAD, MOVSW/MOVSD...\=
      offset aPushawPushadMo, offset aSuffixWFor16Bi, 0>; 0
		t_control <62h, 233Ah, 69h, 9Eh, 78h, 0Ah, offset dword_5BDCF8, \ ; \=PUSHAW/PUSHA, MOVSW/MOVS...\=
      offset aPushawPushaMov, offset aSuffixWFor16_1, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 0AEh, 96h, 0Ah, 0, \ ; \=Decode jump hints as:\=
      offset aDecodeJumpHint, 0, 0>; 0
		t_control <60h, 233Bh, 69h, 0BAh, 78h, 0Ah, offset dword_5BDCF4, \ ; \=+JNZ, -JGE...\=
      offset aJnzJge___, offset aPlusIfJumpIsMa, 0>; 0
		t_control <61h, 233Ch, 69h, 0C6h, 78h, 0Ah, offset dword_5BDCF4, \ ; \=BHT JNZ, BHNT JGE...\=
      offset aBhtJnzBhntJge_, offset aPrefixesBranch, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aOperands, 0, 0>; 0 ; \=\tOperands\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aOperands+2, 0, 0>; 0	; \=Operands\=
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 1Ah, 96h, 0Ah, 0, \ ; \=Decode top of FPU stack as:\=
      offset aDecodeTopOfFpu, 0, 0>; 0
		t_control <60h, 2333h, 69h, 26h, 64h, 0Ah, offset dword_5BDCFC, \ ; \=ST\{0\}\=
      offset aSt0_0, offset aDecodeTopOfF_0, 0>; 0
		t_control <61h, 2334h, 69h, 32h, 64h, 0Ah, offset dword_5BDCFC, \ ; \=ST\=
      offset aSt_3, offset aDecodeTopOfF_1, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 42h, 96h, 0Ah, 0, \ ; \=Decode size of 16/32-byte SSE operands \=...
      offset aDecodeSizeOf16, 0, 0>; 0
		t_control <60h, 2335h, 69h, 4Eh, 78h, 0Ah, offset dword_5BDCF0, \ ; \=DQWORD/QQWORD \{Double/Quad Quadword\}\=
      offset aDqwordQqwordDo, offset aDecodeSseMemor, 0>; 0
		t_control <61h, 2336h, 69h, 5Ah, 78h, 0Ah, offset dword_5BDCF0, \ ; \=XMMWORD/YMMWORD \{as XMM/YMM registers\}\=
      offset aXmmwordYmmword, offset aDecodeSseMem_0, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aDump_5, 0, 0>;	0 ; \=\tDump\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aDump_5+2, 0, 0>; 0 ;	\=Dump\=
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <3Eh, 2333h, 5Ah, 1Ah, 78h, 0Ah, offset dword_5BE6A4, \ ; \=Underline fixups\=
      offset aUnderlineFix_1, offset aUnderlineFix_0, 0>; 0
		t_control <3Eh, 2334h, 5Ah, 26h, 0A0h, 0Ah, offset dword_5BE6BC, \ ; \=Use wide characters in UNICODE \A\A multi\=...
      offset aUseWideCharact, offset aSoThatKanjiSym, 0>; 0
		t_control <3Eh, 2335h, 5Ah, 32h, 0A0h, 0Ah, offset dword_5BE6C0, \ ; \=Disable GDI scripting support\=
      offset aDisableGdiScri, offset aGetsRidOfDumpA, 0>; 0
		t_control <3Eh, 2336h, 5Ah, 3Eh, 0A0h, 0Ah, offset dword_5BE698, \ ; \=Replace non-printable ASCII characters \=...
      offset aReplaceNonPrin, offset aDoNotDisplayNo, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 4Eh, 64h, 0Ah, 0, \ ; \=Display addresses in address column as:\=
      offset aDisplayAddress, 0, 0>; 0
		t_control <60h, 2337h, 69h, 5Ah, 64h, 0Ah, offset dword_57DE54, \ ; \=Hex, Symbol\=
      offset aHexSymbol, offset aHexAddressFoll, 0>; 0
		t_control <61h, 2338h, 69h, 66h, 64h, 0Ah, offset dword_57DE54, \ ; \=Symbol, Hex\=
      offset aSymbolHex, offset aIfSymbolicName, 0>; 0
		t_control <62h, 2339h, 69h, 72h, 64h, 0Ah, offset dword_57DE54, \ ; \=Symbol or Hex\=
      offset aSymbolOrHex, offset aIfSymbolicNa_0, 0>; 0
		t_control <3Eh, 233Ah, 5Ah, 82h, 78h, 0Ah, offset dword_57DE58, \ ; \=Highlight symbolic names in address col\=...
      offset aHighlightSym_1, offset aHighlightSym_1, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 92h, 78h, 0Ah, 0, \ ; \=Doubleclick on address:\=
      offset aDoubleclickO_2, 0, 0>; 0
		t_control <60h, 233Bh, 69h, 9Eh, 64h, 0Ah, offset dword_5BE6C8, \ ; \=Sets relative addressing\=
      offset aSetsRelativeAd, offset aDoubleclickOnA, 0>; 0
		t_control <61h, 233Ch, 69h, 0AAh, 64h, 0Ah, offset dword_5BE6C8, \ ; \=Labels address\=
      offset aLabelsAddress, offset aDoubleclickO_0, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 0BCh, 3Ch, 0Ah, 0, \ ; \=ASCII code page\=
      offset aAsciiCodePage, 0, 0>; 0
		t_control <13h, 23F0h, 96h, 0BAh, 5Ah, 0F0h, 0, \ ; \=\=
      offset aAcolorpick+13h, offset aCodePageUsed_0, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 0D0h, 3Ch, 0Ah, 0, \ ; \=Multibyte code page\=
      offset aMultibyteCodeP, 0, 0>; 0
		t_control <13h, 23F1h, 96h, 0CEh, 5Ah, 0F0h, 0, \ ; \=\=
      offset aAcolorpick+13h, offset aCodePageUsedIn, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aStrings_0, 0, 0>; 0 ; \=\tStrings\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aStrings_0+2, 0, 0>; 0 ; \=Strings\=
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <3Eh, 2333h, 5Ah, 1Ah, 78h, 0Ah, offset dword_57DD34, \ ; \=Decode Pascal-style string constants\=
      offset aDecodePascalSt, offset aPascalStringsA, 0>; 0
		t_control <3Eh, 2334h, 5Ah, 26h, 78h, 0Ah, offset dword_57DD30, \ ; \=Allow diacritical symbols \{à\=
      offset aAllowDiacritic, offset aIncreasesNumbe, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 36h, 78h, 0Ah, 0, \ ; \=To recognize UNICODE strings:\=
      offset aToRecognizeUni, 0, 0>; 0
		t_control <60h, 2335h, 69h, 42h, 64h, 0Ah, offset dword_57DD38, \ ; \=Use internal heuristics \{ASCII subset\}\=
      offset aUseInternalHeu, offset aSearchIsLimite, 0>; 0
		t_control <61h, 2336h, 69h, 4Eh, 64h, 0Ah, offset dword_57DD38, \ ; \=Use IsTextUnicode\{\}\=
      offset aUseIstextunico, offset aLetWindowsDete, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 5Eh, 78h, 0Ah, 0, \ ; \=Mode of string decoding:\=
      offset aModeOfStringDe, 0, 0>; 0
		t_control <60h, 2337h, 69h, 6Ah, 64h, 0Ah, offset dword_57DD3C, \ ; \=Plain \{\\=abc\=
      offset aPlainAbc, offset aDisplayTextStr, 0>; 0
		t_control <61h, 2338h, 69h, 76h, 64h, 0Ah, offset dword_57DD3C, \ ; \=Assembler \{\\=abc\\=,LF,\\=def\\=\}\=
      offset aAssemblerAbcLf, offset aConvertStrings, 0>; 0
		t_control <62h, 2339h, 69h, 82h, 64h, 0Ah, offset dword_57DD3C, \ ; \=C \{\\=abc\\ndef\\=\}\=
      offset aCAbcNdef, offset aConvertRecogni, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aDebugging, 0, 0>; 0 ; \=Debugging\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aDebuggingOptio, 0, \ ; \=Debugging options\=
      0>		; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <3Eh, 2333h, 5Ah, 1Ah, 78h, 0Ah, offset dword_5C8950, \ ; \=Assume flat selectors\=
      offset aAssumeFlatSele, offset aAssumeThatCsDs, 0>; 0
		t_control <3Eh, 2334h, 5Ah, 26h, 78h, 0Ah, offset dword_5C8954, \ ; \=After Execute till return, step over RE\=...
      offset aAfterExecuteTi, offset aWhenReturnIsRe, 0>; 0
		t_control <3Eh, 2335h, 5Ah, 32h, 78h, 0Ah, offset dword_5C8964, \ ; \=Allow fast command emulation\=
      offset aAllowFastComma, offset aEmulateExecuti, 0>; 0
		t_control <3Eh, 2336h, 5Ah, 3Eh, 78h, 0Ah, offset dword_5BE6C4, \ ; \=Auto backup user code\=
      offset aAutoBackupUser, offset aCreateBackupsO, 0>; 0
		t_control <3Eh, 2337h, 5Ah, 4Ah, 78h, 0Ah, offset dword_5C8938, \ ; \=Use HW breakpoints for stepping\=
      offset aUseHwBreakpoin, offset aUseLessInvasiv, 0>; 0
		t_control <3Eh, 2338h, 5Ah, 56h, 78h, 0Ah, offset dword_5C893C, \ ; \=Hide unimportant handles\=
      offset aHideUnimportan, offset aDonTListUnimpo, 0>; 0
		t_control <3Eh, 2339h, 5Ah, 62h, 78h, 0Ah, offset dword_5C8940, \ ; \=Set permanent breakpoints on system cal\=...
      offset aSetPermanentBr, offset aSetInt3OnZwcon, 0>; 0
		t_control <2, 23F3h, 5Ah, 72h, 78h, 0Ah, 0, offset aToPauseRunning, 0,\ ; \=To pause running application:\=
      0>		; 0
		t_control <60h, 23F4h, 69h, 7Eh, 78h, 0Ah, offset dword_5C8958, \ ; \=Set breakpoint in every thread\=
      offset aSetBreakpointI, offset aSetMemoryTraps, 0>; 0
		t_control <61h, 23F5h, 69h, 8Ah, 78h, 0Ah, offset dword_5C8958, \ ; \=Call DebugBreakProcess\{\}\=
      offset aCallDebugbreak, offset aUseThisSpecial, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 9Ah, 78h, 0Ah, 0, \ ; \=When terminating the running applicatio\=...
      offset aWhenTerminatin, 0, 0>; 0
		t_control <60h, 233Ah, 69h, 0A6h, 78h, 0Ah, offset dword_5C895C, \ ; \=Immediately call TerminateProcess\{\}\=
      offset aImmediatelyCal, offset aWorksFastButOp, 0>; 0
		t_control <61h, 233Bh, 69h, 0B2h, 78h, 0Ah, offset dword_5C895C, \ ; \=Try to use ExitProcess\{\} first\=
      offset aTryToUseExitpr, offset aTrickyButABitS, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 0C2h, 78h, 0Ah, 0, \ ; \=Command used as a soft breakpoint \{expe\=...
      offset aCommandUsedAsA, 0, 0>; 0
		t_control <13h, 233Ch, 69h, 0CEh, 32h, 0C8h, offset dword_5BE6E8, \ ; \=INT3|INT1 \{ICEBP\}|HLT|CLI|STI|INSB|INSD\=...
      offset aInt3Int1IcebpH, offset aSelectCommandU, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aDebuggingData, 0, 0>; 0 ; \=\tDebugging	data\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aDebuggingData+2, 0,\ ; \=Debugging data\=
      0>		; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <3Eh, 238Dh, 5Ah, 1Ah, 78h, 0Ah, offset g_IsUseDbghelp, \ ; \=Use debugging data\=
      offset aUseDebuggingDa, offset aAllowDbghelp_d, 0>; 0
		t_control <3Eh, 2334h, 69h, 26h, 78h, 0Ah, offset dword_5D3A5C, \ ; \=Use dbghelp.dll for stack walk\=
      offset aUseDbghelp_dll, offset aUseDbghelp_sta, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 36h, 96h, 0Ah, 0, \ ; \=Directories containing debugging data \{\=...
      offset aDirectoriesCon, 0, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 40h, 96h, 0Ah, 0, \ ; \=Dbghelp.dll will also recurse into subd\=...
      offset aDbghelp_dllWil, 0, 0>; 0
		t_control <81h, 238Fh, 5Ah, 4Ch, 8Eh, 0Ch, 0, offset word_5D3A64, \ ; \=Directory containing debugging data \{.p\=...
      offset aDirectoryConta, 0>; 0
		t_control <83h, 2336h, 0E9h, 4Ch, 0Ah, 0Ch, 0, offset word_5D3A64, \ ; \=Select directory where debugging data i\=...
      offset aSelectDirect_1, 0>; 0
		t_control <81h, 2391h, 5Ah, 5Fh, 8Eh, 0Ch, 0, offset word_5D3C6C, \ ; \=Directory containing debugging data \{.p\=...
      offset aDirectoryConta, 0>; 0
		t_control <83h, 2338h, 0E9h, 5Fh, 0Ah, 0Ch, 0, offset word_5D3C6C, \ ; \=Select directory where debugging data i\=...
      offset aSelectDirect_1, 0>; 0
		t_control <81h, 2393h, 5Ah, 72h, 8Eh, 0Ch, 0, offset word_5D3E74, \ ; \=Directory containing debugging data \{.p\=...
      offset aDirectoryConta, 0>; 0
		t_control <83h, 233Ah, 0E9h, 72h, 0Ah, 0Ch, 0, offset word_5D3E74, \ ; \=Select directory where debugging data i\=...
      offset aSelectDirect_1, 0>; 0
		t_control <3Eh, 2395h, 5Ah, 85h, 78h, 0Ah, offset dword_5D3A60, \ ; \=Allow access to Microsoft Symbol Server\=
      offset aAllowAccessToM, offset aDownloadDebugg, 0>; 0
		t_control <3Eh, 2396h, 5Ah, 98h, 78h, 0Ah, offset dword_5D40C0, \ ; \=Don't list missing source files\=
      offset aDonTListMissin, offset aForExampleThos, 0>; 0
		t_control <3Eh, 2397h, 5Ah, 0A4h, 78h, 0Ah, offset dword_5D40C4, \ ; \=Don't list internal compiler labels\=
      offset aDonTListIntern, offset aConstantString, 0>; 0
		t_control <3Eh, 233Eh, 5Ah, 0B0h, 78h, 0Ah, offset skipspaces, \ ; \=Skip leading spaces from source lines i\=...
      offset aSkipLeadingS_1, offset aOnlyAffectsDis, 0>; 0
		t_control <6, 0FFFFFFFFh, 5Ah, 0C6h, 8Ch, 20h, 0, \ ; \=WARNING: Microsoft Symbol Server sends \=...
      offset aWarningMicroso, 0, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aStart, 0, 0>; 0 ; \=\tStart\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aStart+2, 0, 0>; 0 ; \=Start\=
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 1Ah, 78h, 0Ah, 0, \ ; \=When starting application, make first p\=...
      offset aWhenStartingAp, 0, 0>; 0
		t_control <60h, 2333h, 69h, 26h, 64h, 0Ah, offset dword_5C8944, \ ; \=System breakpoint\=
      offset aSystemBreakp_0, offset aMakeFirstPause, 0>; 0
		t_control <61h, 2334h, 69h, 32h, 64h, 0Ah, offset dword_5C8944, \ ; \=TLS callback \{if defined\}\=
      offset aTlsCallbackIfD, offset aMakeFirstPau_0, 0>; 0
		t_control <62h, 2335h, 69h, 3Eh, 64h, 0Ah, offset dword_5C8944, \ ; \=Entry point of main module\=
      offset aEntryPointOfMa, offset aMakeFirstPau_3, 0>; 0
		t_control <63h, 2336h, 69h, 4Ah, 64h, 0Ah, offset dword_5C8944, \ ; \=WinMain \{if location is known\}\=
      offset aWinmainIfLocat, offset aMakeFirstPau_1, 0>; 0
		t_control <64h, 2337h, 69h, 56h, 64h, 0Ah, offset dword_5C8944, \ ; \=No pause\=
      offset aNoPause, offset aMakeNoPauseImm, 0>;	0
		t_control <2, 0FFFFFFFFh, 5Ah, 66h, 78h, 0Ah, 0, \ ; \=When attaching to application, make fir\=...
      offset aWhenAttachingT, 0, 0>; 0
		t_control <60h, 2338h, 69h, 72h, 64h, 0Ah, offset dword_5C8948, \ ; \=System breakpoint\=
      offset aSystemBreakp_0, offset aWhenAttachingP, 0>; 0
		t_control <61h, 2339h, 69h, 7Eh, 64h, 0Ah, offset dword_5C8948, \ ; \=Application code\=
      offset aApplicationCod, offset aWhenAttachin_0, 0>; 0
		t_control <62h, 233Ah, 69h, 8Ah, 64h, 0Ah, offset dword_5C8948, \ ; \=No pause\=
      offset aNoPause, offset aWhenAttachingR, 0>;	0
		t_control <2, 0FFFFFFFFh, 5Ah, 9Ah, 78h, 0Ah, 0, \ ; \=When loading DLL, make first pause at:\=
      offset aWhenLoadingD_4, 0, 0>; 0
		t_control <60h, 233Bh, 69h, 0A6h, 64h, 0Ah, offset dword_5C894C, \ ; \=Entry point of LOADDLL.EXE\=
      offset aEntryPointOfLo, offset aWhenLoadingD_1, 0>; 0
		t_control <61h, 233Ch, 69h, 0B2h, 64h, 0Ah, offset dword_5C894C, \ ; \=DLL entry point \{if defined\}\=
      offset aDllEntryPointI, offset aWhenLoadingD_2, 0>; 0
		t_control <62h, 233Dh, 69h, 0BEh, 64h, 0Ah, offset dword_5C894C, \ ; \=After call to LoadLibrary\{\}\=
      offset aAfterCallToLoa, offset aWhenLoadingD_0, 0>; 0
		t_control <63h, 233Eh, 69h, 0CAh, 64h, 0Ah, offset dword_5C894C, \ ; \=No pause\=
      offset aNoPause, offset aWhenLoadingDll, 0>;	0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aEvents, 0, 0>;	0 ; \=\tEvents\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aDebuggingEvent, 0, \ ; \=Debugging events\=
      0>		; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <3Eh, 2333h, 5Ah, 1Ah, 78h, 0Ah, offset dword_5C8960, \ ; \=Warn on frequent events\=
      offset aWarnOnFrequent, offset aFlashWarningIf, 0>; 0
		t_control <3Eh, 2334h, 5Ah, 2Ah, 96h, 0Ah, offset dword_5C8A98, \ ; \=Pause on new module \{DLL\}\=
      offset aPauseOnNewModu, offset aWhenNewDllLoad, 0>; 0
		t_control <3Eh, 2335h, 5Ah, 36h, 96h, 0Ah, offset dword_5C8A9C, \ ; \=Pause on module \{DLL\} unloading\=
      offset aPauseOnModuleD, offset aPauseWhenDllIs, 0>; 0
		t_control <3Eh, 23F6h, 69h, 42h, 87h, 0Ah, offset dword_5C8AA0, \ ; \=Only on the following modules:\=
      offset aOnlyOnTheFollo, offset aPauseOnlyOnLis, 0>; 0
		t_control <30h, 23F7h, 69h, 50h, 5Ah, 22h, 0, 0, \ ; \=Full path, file.ext, file or internal m\=...
      offset aFullPathFile_e, 0>; 0
		t_control <11h, 23F8h, 0C9h, 50h, 2Dh, 0Dh, 0, offset aAdd_0, \ ; \=Add\=
      offset aAddModuleToT_0, 0>; 0
		t_control <11h, 23F9h, 0C9h, 65h, 2Dh, 0Dh, 0, offset aRemove, \ ; \=Remove\=
      offset aRemoveSelect_0, 0>; 0
		t_control <3Eh, 2336h, 5Ah, 7Bh, 96h, 0Ah, offset dword_5CBB68, \ ; \=Pause on new thread\=
      offset aPauseOnNewThre, offset aWhenNewThreadS, 0>; 0
		t_control <3Eh, 2337h, 5Ah, 87h, 96h, 0Ah, offset dword_5CBB6C, \ ; \=Pause on thread end\=
      offset aPauseOnThreadE, offset aPauseWhenThrea, 0>; 0
		t_control <3Eh, 2338h, 5Ah, 93h, 96h, 0Ah, offset dword_5CBB64, \ ; \=Pause on debug string\=
      offset aPauseOnDebugSt, offset aPauseWhenAppli, 0>; 0
		t_control <3Eh, 23FAh, 5Ah, 0A3h, 78h, 0Ah, offset dword_5D4564, \ ; \=Debug child processes\=
      offset aDebugChildPr_0, offset aStartNewOllydb, 0>; 0
		t_control <6, 23FBh, 5Ah, 0C8h, 8Ch, 18h, 0, offset aWarningDebuggi, \ ; \=WARNING: debugging of child processes i\=...
      0, 0>	; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset asc_56C14A, 0, 0>; 0 ; \=\t\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aIgnoredExcep_0, 0, \ ; \=Ignored exceptions\=
      0>		; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <3Eh, 2333h, 5Ah, 1Ah, 78h, 0Ah, offset dword_5C8968, \ ; \=Ignore memory access violations in KERN\=...
      offset aIgnoreMemoryAc, offset aMayOccurInKern, 0>; 0
		t_control <3Eh, 2334h, 5Ah, 26h, 78h, 0Ah, offset dword_5C896C, \ ; \=Step over INT3 breaks in MSCORWKS\=
      offset aStepOverInt3Br, offset aInThisWay_netE, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 34h, 0A0h, 0Ah, 0, \ ; \=Ignore \{pass to debugged program\} follo\=...
      offset aIgnorePassToDe, 0, 0>; 0
		t_control <3Eh, 2335h, 69h, 40h, 64h, 0Ah, offset dword_5C8970, \ ; \=INT3 breaks\=
      offset aInt3Breaks, offset aLetProgramProc, 0>; 0
		t_control <3Eh, 2336h, 69h, 4Bh, 64h, 0Ah, offset dword_5C8974, \ ; \=Single-step breaks\=
      offset aSingleStepBrea, offset aLetProgramPr_3, 0>; 0
		t_control <3Eh, 2337h, 69h, 56h, 64h, 0Ah, offset dword_5C8978, \ ; \=Memory access violations\=
      offset aMemoryAccessVi, offset aLetProgramPr_0, 0>; 0
		t_control <3Eh, 2338h, 69h, 61h, 64h, 0Ah, offset dword_5C897C, \ ; \=Integer division by 0\=
      offset aIntegerDivis_0, offset aLetProgramPr_1, 0>; 0
		t_control <3Eh, 2339h, 69h, 6Ch, 64h, 0Ah, offset dword_5C8980, \ ; \=Invalid or privileged instructions\=
      offset aInvalidOrPrivi, offset aLetProgramPr_2, 0>; 0
		t_control <3Eh, 233Ah, 69h, 77h, 64h, 0Ah, offset dword_5C8984, \ ; \=All FPU exceptions\=
      offset aAllFpuExceptio, offset aLetProgramPr_4, 0>; 0
		t_control <3Eh, 233Bh, 69h, 82h, 64h, 0Ah, offset dword_5C8988, \ ; \=All service exceptions\=
      offset aAllServiceExce, offset aProcessExcepti, 0>; 0
		t_control <3Eh, 23FCh, 5Ah, 91h, 9Bh, 0Ah, offset dword_5C898C, \ ; \=Ignore also the following custom except\=...
      offset aIgnoreAlsoTheF, offset aActivateListOf, 0>; 0
		t_control <30h, 23FDh, 69h, 9Eh, 5Ah, 2Dh, 0, 0, \ ; \=List of custom exceptions to be passed \=...
      offset aListOfCustomEx, 0>; 0
		t_control <11h, 23FEh, 0C9h, 9Eh, 2Dh, 0Dh, 0, offset aAddCurrent, \ ; \=Add current\=
      offset aAddExceptionTh, 0>; 0
		t_control <11h, 23FFh, 0C9h, 0AEh, 2Dh, 0Dh, 0, offset aAddRange, \ ; \=Add range\=
      offset aAddRangeOfExce, 0>; 0
		t_control <11h, 2400h, 0C9h, 0BEh, 2Dh, 0Dh, 0, offset aDelete_0, \ ; \=Delete\=
      offset aRemoveSelect_1, 0>; 0
		t_control <3Eh, 2401h, 5Ah, 0D0h, 96h, 0Ah, offset dword_5C8A90, \ ; \=Pass unprocessed exceptions to Unhandle\=...
      offset aPassUnprocesse, offset aNoteProgramMay, 0>; 0
		t_control <3Eh, 233Ch, 5Ah, 0DCh, 64h, 0Ah, offset dword_5C8A94, \ ; \=Report ignored exceptions to log\=
      offset aReportIgnore_0, offset aReportIgnoredP, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aRunTrace_0, 0, 0>; 0 ;	\=\tRun trace\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aRunTrace_0+2, 0, 0>;	0 ; \=Run trace\=
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 1Bh, 3Ch, 0Ah, 0, \ ; \=Size of run trace buffer\=
      offset aSizeOfRunTrace, 0, 0>; 0
		t_control <13h, 238Dh, 96h, 19h, 23h, 0C8h, offset dword_5CBB70, \ ; \=1 M|2 M|4 M|8 M|16 M|32 M|64 M|128 M|25\=...
      offset a1M2M4M8M16M32M, offset aApproximateSiz, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 2Eh, 96h, 0Ah, 0, \ ; \=When tracing or animating into:\=
      offset aWhenTracingOrA, 0, 0>; 0
		t_control <3Eh, 2334h, 69h, 3Ah, 78h, 0Ah, offset dword_5CBB78, \ ; \=Don't enter system DLLs\=
      offset aDonTEnterSyste, offset aInAutomaticM_0, 0>; 0
		t_control <3Eh, 2335h, 69h, 46h, 78h, 0Ah, offset dword_5CBB7C, \ ; \=Always trace over string commands\=
      offset aAlwaysTraceOve, offset aInAutomaticMod, 0>; 0
		t_control <3Eh, 2390h, 5Ah, 56h, 78h, 0Ah, offset dword_5CBB80, \ ; \=Remember commands\=
      offset aRememberComman, offset aFacilitatesDeb, 0>; 0
		t_control <3Eh, 2337h, 5Ah, 62h, 78h, 0Ah, offset dword_5CBB84, \ ; \=Remember memory\=
      offset aRememberMemory, offset aSaveAccessed_0, 0>; 0
		t_control <3Eh, 2392h, 5Ah, 6Eh, 78h, 0Ah, offset dword_5CBB88, \ ; \=Remember FPU registers\=
      offset aRememberFpuReg, offset aSaveFpuRegis_0, 0>; 0
		t_control <3Eh, 2339h, 5Ah, 7Eh, 78h, 0Ah, offset dword_5CBB8C, \ ; \=Synchronize CPU and run trace\=
      offset aSynchronizeCpu, offset aSynchronizeC_0, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 90h, 32h, 0Ah, 0, \ ; \=Animation delay\=
      offset aAnimationDelay, 0, 0>; 0
		t_control <13h, 233Ah, 96h, 8Eh, 23h, 0C8h, offset dword_5CBB90, \ ; \=0 ms|20 ms|50 ms|100 ms|200 ms|500 ms|1\=...
      offset a0Ms20Ms50Ms100, offset aDurationOfStep, 0>; 0
		t_control <6, 0FFFFFFFFh, 5Ah, 0D0h, 8Ch, 10h, 0, \ ; \=WARNING: some run trace options will ta\=...
      offset aWarningSomeRun, 0, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aHitTrace, 0, 0>; 0 ; \=\tHit trace\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aHitTrace+2, 0, 0>; 0	; \=Hit trace\=
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 1Ah, 96h, 0Ah, 0, \ ; \=When starting hit test:\=
      offset aWhenStartingHi, 0, 0>; 0
		t_control <3Eh, 2333h, 69h, 26h, 64h, 0Ah, offset dword_5CBB9C, \ ; \=Set breakpoints on known callbacks\=
      offset aSetBreakpoin_1, offset aAccordingToThe, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 36h, 96h, 0Ah, 0, \ ; \=When indirect or table-based jump or ca\=...
      offset aWhenIndirectOr, 0, 0>; 0
		t_control <60h, 2334h, 69h, 42h, 64h, 0Ah, offset dword_5CBBA0, \ ; \=Check destination each time\=
      offset aCheckDestinati, offset aKeepTraceBreak, 0>; 0
		t_control <61h, 2335h, 69h, 4Eh, 78h, 0Ah, offset dword_5CBBA0, \ ; \=Use analysis data to guess destinations\=
      offset aUseAnalysisDat, offset aUseDestination, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 5Eh, 96h, 0Ah, 0, \ ; \=When next destination is analysed as da\=...
      offset aWhenNextDest_0, 0, 0>; 0
		t_control <60h, 2336h, 69h, 6Ah, 78h, 0Ah, offset dword_5CBBA4, \ ; \=Continue hit trace\=
      offset aContinueHitTra, offset aIgnoreAnalysis, 0>; 0
		t_control <61h, 2337h, 69h, 76h, 78h, 0Ah, offset dword_5CBBA4, \ ; \=Pause hit trace\=
      offset aPauseHitTrace, offset aPauseHitTraceI, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 86h, 96h, 0Ah, 0, \ ; \=When next destination is outside the co\=...
      offset aWhenNextDestin, 0, 0>; 0
		t_control <60h, 2338h, 69h, 92h, 78h, 0Ah, offset dword_5CBBA8, \ ; \=Continue hit trace\=
      offset aContinueHitTra, offset aContinueHitT_0, 0>; 0
		t_control <61h, 2339h, 69h, 9Eh, 78h, 0Ah, offset dword_5CBBA8, \ ; \=Pause hit trace\=
      offset aPauseHitTrace, offset aPauseHitTrac_0, 0>; 0
		t_control <62h, 233Ah, 69h, 0AAh, 78h, 0Ah, offset dword_5CBBA8, \ ; \=Trace code command by command\=
      offset aTraceCodeComma, offset aRunTraceComman, 0>; 0
		t_control <3Eh, 23A9h, 5Ah, 0BAh, 64h, 0Ah, offset dword_5CBBAC, \ ; \=Keep hit trace between sessions\=
      offset aKeepHitTrace_0, offset aDangerousIfCod, 0>; 0
		t_control <6, 0FFFFFFFFh, 5Ah, 0D0h, 8Ch, 18h, 0, \ ; \=WARNING: keeping hit trace between sess\=...
      offset aWarningKeeping, 0, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aSfx_0, 0, 0>; 0 ; \=\tSFX\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aSelfExtractabl, 0, \ ; \=Self-extractable modules\=
      0>		; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <3Eh, 2333h, 5Ah, 1Ah, 78h, 0Ah, offset dword_5CBBB4, \ ; \=Unpack SFX modules automatically\=
      offset aUnpackSfxModul, offset aWhenModuleIsRe, 0>; 0
		t_control <61h, 2334h, 69h, 28h, 78h, 0Ah, offset dword_5CBBB8, \ ; \=Use hit trace \{fast!\}\=
      offset aUseHitTraceFas, offset aMuchFasterButC, 0>; 0
		t_control <60h, 2335h, 69h, 34h, 78h, 0Ah, offset dword_5CBBB8, \ ; \=Use run trace \{reliable\}\=
      offset aUseRunTraceRel, offset aSlowButMoreRel, 0>; 0
		t_control <3Eh, 2336h, 5Ah, 44h, 78h, 0Ah, offset dword_5CBBBC, \ ; \=Use real entry from previous run\=
      offset aUseRealEntryFr, offset aAccelerateSfxE, 0>; 0
		t_control <3Eh, 2337h, 5Ah, 50h, 78h, 0Ah, offset dword_5CBBC0, \ ; \=Pass exceptions to SFX extractor\=
      offset aPassExceptions, offset aIgnorePassToEx, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aJustInTime, 0, 0>; 0 ;	\=\tJust-in-time\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aJustInTimeDebu, 0, \ ; \=Just-in-time debugging\=
      0>		; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 1Ah, 96h, 0Ah, 0, \ ; \=Current just-in-time debugger:\=
      offset aCurrentJustInT, 0, 0>; 0
		t_control <0Dh, 2402h, 5Ah, 26h, 69h, 0Ch, 0, offset aAcolorpick+13h, \ ; \=\=
      offset aNameOfCurrentJ, 0>; 0
		t_control <11h, 2404h, 0C8h, 26h, 23h, 0Ch, 0, offset aSetOllydbg, \ ; \=Set OllyDbg\=
      offset aPressToSetOlly, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 36h, 96h, 0Ah, 0, \ ; \=Previous just-in-time debugger:\=
      offset aPreviousJustIn, 0, 0>; 0
		t_control <0Dh, 2403h, 5Ah, 42h, 69h, 0Ch, 0, offset aAcolorpick+13h, \ ; \=\=
      offset aNameOfPrevious, 0>; 0
		t_control <11h, 2405h, 0C8h, 42h, 23h, 0Ch, 0, offset aRestore, \ ; \=Restore\=
      offset aPressToRestore, 0>; 0
		t_control <3Eh, 2406h, 5Ah, 5Eh, 5Ah, 0Ah, 0, offset aConfirmBeforeA, \ ; \=Confirm before attaching\=
      offset aWhetherOsShoul, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aAnalysis_0, 0, 0>; 0 ;	\=Analysis\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aAnalysisOption, 0, \ ; \=Analysis options\=
      0>		; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 1Ah, 64h, 0Ah, 0, \ ; \=Recognition of procedures:\=
      offset aRecognitionOfP, 0, 0>; 0
		t_control <60h, 2333h, 69h, 26h, 64h, 0Ah, offset dword_5BDD1C, \ ; \=Strict\=
      offset aStrict_0, offset aAllowOnlySureP, 0>; 0
		t_control <61h, 2334h, 69h, 32h, 64h, 0Ah, offset dword_5BDD1C, \ ; \=Fuzzy\=
      offset aFuzzy_0, offset aRecognizeAnyLi, 0>;	0
		t_control <2, 0FFFFFFFFh, 5Ah, 42h, 64h, 0Ah, 0, \ ; \=Automatical module analysis:\=
      offset aAutomaticalMod, 0, 0>; 0
		t_control <60h, 2335h, 69h, 4Eh, 64h, 0Ah, offset dword_5BDD10, \ ; \=Off\=
      offset aOff, offset aNoAutomaticalA, 0>; 0
		t_control <61h, 2336h, 69h, 5Ah, 64h, 0Ah, offset dword_5BDD10, \ ; \=Main module\=
      offset aMainModule, offset aOnlyMainModule, 0>; 0
		t_control <62h, 2337h, 69h, 66h, 64h, 0Ah, offset dword_5BDD10, \ ; \=Non-system modules\=
      offset aNonSystemModul, offset aAllModulesOuts, 0>; 0
		t_control <63h, 2338h, 69h, 72h, 64h, 0Ah, offset dword_5BDD10, \ ; \=All modules\=
      offset aAllModules, offset aAnalyseAllModu, 0>; 0
		t_control <3Eh, 2339h, 5Ah, 82h, 78h, 0Ah, offset dword_5BDD4C, \ ; \=Show predicted register values\=
      offset aShowPredictedR, offset aShowContentsOf, 0>; 0
		t_control <3Eh, 233Ah, 5Ah, 8Eh, 78h, 0Ah, offset dword_5BDD14, \ ; \=Don't predict register contents for sys\=...
      offset aDonTPredictReg, offset aSparesMemoryBu, 0>; 0
		t_control <3Eh, 233Bh, 5Ah, 9Eh, 96h, 0Ah, offset dword_5BDD50, \ ; \=Show recognized ARGs and LOCALs in disa\=...
      offset aShowRecognized, offset aDisplayArgumen, 0>; 0
		t_control <3Eh, 233Ch, 5Ah, 0AAh, 96h, 0Ah, offset dword_5BDD58, \ ; \=Show recognized ARGs and LOCALs in comm\=...
      offset aShowRecogniz_0, offset aDisplayArgum_1, 0>; 0
		t_control <3Eh, 233Dh, 5Ah, 0B6h, 96h, 0Ah, offset dword_5BDD54, \ ; \=Use symbolic names for ARGs, if known\=
      offset aUseSymbolicN_0, offset aLikeArg_hcurri, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aAdvanced, 0, 0>; 0 ; \=\tAdvanced\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aAdvancedAnalys, 0, \ ; \=Advanced analysis\=
      0>		; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <3Eh, 2333h, 5Ah, 1Ah, 78h, 0Ah, offset dword_5BDD20, \ ; \=Decode tricky code sequences\=
      offset aDecodeTrickyCo, offset aDecodeTrickyMo, 0>; 0
		t_control <3Eh, 2334h, 5Ah, 26h, 78h, 0Ah, offset dword_5BDD28, \ ; \=Decode cascaded IFs as switches\=
      offset aDecodeCascaded, offset aTreatIfI1___El, 0>; 0
		t_control <3Eh, 2335h, 5Ah, 32h, 96h, 0Ah, offset dword_5BDD48, \ ; \=Allow arguments renaming for known func\=...
      offset aAllowArguments, offset aRenameArgument, 0>; 0
		t_control <3Eh, 2336h, 5Ah, 3Eh, 96h, 0Ah, offset dword_5BDD38, \ ; \=Guess number of arguments of unknown fu\=...
      offset aGuessNumberO_2, offset aGuessNumberOfA, 0>; 0
		t_control <3Eh, 2337h, 69h, 4Ah, 87h, 0Ah, offset dword_5BDD3C, \ ; \=Extract arguments from mangled names\=
      offset aExtractArgumen, offset aUseInformation, 0>; 0
		t_control <3Eh, 2338h, 69h, 56h, 87h, 0Ah, offset dword_5BDD40, \ ; \=Guess meaning of unknown arguments\=
      offset aGuessMeaning_1, offset aTryToRecognize, 0>; 0
		t_control <3Eh, 2339h, 69h, 62h, 87h, 0Ah, offset dword_5BDD44, \ ; \=Show arguments even if their number var\=...
      offset aShowArgumentsE, offset aI_e_NumberOfRe, 0>; 0
		t_control <3Eh, 233Ah, 5Ah, 6Eh, 96h, 0Ah, offset dword_5BDD98, \ ; \=Detect standard library functions \{*.ud\=...
      offset aDetectStandard, offset aPrepare_udlFil, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 7Eh, 0B4h, 0Ah, 0, \ ; \=Comment constant operands of known func\=...
      offset aCommentConstan, 0, 0>; 0
		t_control <60h, 233Bh, 69h, 8Ah, 64h, 0Ah, offset dword_5BDD2C, \ ; \=All known\=
      offset aAllKnown, offset aCommentAllKnow, 0>; 0
		t_control <61h, 233Ch, 69h, 96h, 64h, 0Ah, offset dword_5BDD2C, \ ; \=Only those marked as important\=
      offset aOnlyThoseMarke, offset aCommentOnlyOpe, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 0A6h, 0B4h, 0Ah, 0, \ ; \=Unknown functions preserve registers:\=
      offset aUnknownFunctio, 0, 0>; 0
		t_control <60h, 233Dh, 69h, 0B2h, 64h, 0Ah, offset dword_5BDD30, \ ; \=None\=
      offset aNone_0, offset aUnknownFunct_2, 0>; 0
		t_control <61h, 233Eh, 69h, 0BEh, 64h, 0Ah, offset dword_5BDD30, \ ; \=EBP\=
      offset aEbp_2, offset aUnknownFunct_1, 0>; 0
		t_control <62h, 233Fh, 69h, 0CAh, 64h, 0Ah, offset dword_5BDD30, \ ; \=EBX, EBP, ESI and EDI\=
      offset aEbxEbpEsiAndEd, offset aUnknownFunct_0, 0>; 0
		t_control <3Eh, 2340h, 5Ah, 0DAh, 78h, 0Ah, offset dword_5BDD34, \ ; \=Ignore braces in .udd path\=
      offset aIgnoreBracesIn, offset aIgnorePartsOfP, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aInvalidComma_2, 0, 0>;	0 ; \=\tInvalid commands\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aInvalidComma_2+2, \ ; \=Invalid commands\=
      0, 0>	; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 1Ah, 78h, 0Ah, 0, \ ; \=Accept following potentially invalid co\=...
      offset aAcceptFollowin, 0, 0>; 0
		t_control <3Eh, 2333h, 69h, 26h, 64h, 0Ah, offset dword_5BDD60, \ ; \=Far calls and returns\=
      offset aFarCallsAndRet, offset aFarCallsAndR_0, 0>; 0
		t_control <3Eh, 2334h, 69h, 32h, 64h, 0Ah, offset dword_5BDD64, \ ; \=Modifications of segment registers\=
      offset aModificationsO, offset aSegmentRegis_0, 0>; 0
		t_control <3Eh, 2335h, 69h, 3Eh, 64h, 0Ah, offset dword_5BDD68, \ ; \=Privileged commands\=
      offset aPrivilegedComm, offset aPrivilegedCo_0, 0>; 0
		t_control <3Eh, 2336h, 69h, 4Ah, 64h, 0Ah, offset dword_5BDD6C, \ ; \=I/O commands\=
      offset aIOCommands, offset aDirectAccessTo, 0>; 0
		t_control <3Eh, 2337h, 69h, 56h, 64h, 0Ah, offset dword_5BDD70, \ ; \=Commands equivalent to NOP\=
      offset aCommandsEquiva, offset aOptimizingComp, 0>; 0
		t_control <3Eh, 2338h, 69h, 62h, 64h, 0Ah, offset dword_5BDD74, \ ; \=Shifts out of range 1..3\=
      offset aShiftsOutOfRan, offset aShiftCountOutO, 0>; 0
		t_control <3Eh, 2339h, 69h, 6Eh, 64h, 0Ah, offset dword_5BDD78, \ ; \=Superfluous prefixes\=
      offset aSuperfluousPre, offset aCompilersNever, 0>; 0
		t_control <3Eh, 233Ah, 69h, 7Ah, 64h, 0Ah, offset dword_5BDD80, \ ; \=LOCK prefixes\=
      offset aLockPrefixes, offset aLockIsUsedMain, 0>; 0
		t_control <3Eh, 233Bh, 69h, 86h, 64h, 0Ah, offset dword_5BDD7C, \ ; \=Default selectors\=
      offset aDefaultSelecto, offset aExplicitlyUsed, 0>; 0
		t_control <3Eh, 233Ch, 69h, 92h, 64h, 0Ah, offset dword_5BDD84, \ ; \=Unaligned stack operations\=
      offset aUnalignedSta_0, offset aWin32ProgramsU, 0>; 0
		t_control <3Eh, 233Dh, 69h, 9Eh, 64h, 0Ah, offset dword_5BDD88, \ ; \=Suspicious ESP modifications\=
      offset aSuspiciousEspM, offset aInvalidEspMayL, 0>; 0
		t_control <3Eh, 233Eh, 69h, 0AAh, 64h, 0Ah, offset dword_5BDD8C, \ ; \=Undocumented commands\=
      offset aUndocumentedCo, offset aSaneCompilersN, 0>; 0
		t_control <3Eh, 233Fh, 69h, 0B6h, 64h, 0Ah, offset dword_5BDD90, \ ; \=Access to nonexisting memory\=
      offset aAccessToNone_0, offset aAccessToNonexi, 0>; 0
		t_control <3Eh, 2340h, 69h, 0C2h, 64h, 0Ah, offset dword_5BDD94, \ ; \=Interrupt commands\=
      offset aInterruptComma, offset aIntCommandsInU, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aSearch_3, 0, 0>; 0 ; \=Search\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aSearchOptions, 0, \ ; \=Search options\=
      0>		; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <3Eh, 2333h, 5Ah, 1Ah, 87h, 0Ah, offset dword_5BE6D0, \ ; \=Use predictions in search\=
      offset aUsePredictions, offset aUsePredictedCo, 0>; 0
		t_control <3Eh, 2334h, 5Ah, 26h, 87h, 0Ah, offset dword_5BE6D4, \ ; \=Include indirect call/jump destinations\=...
      offset aIncludeIndirec, offset aForExampleCall, 0>; 0
		t_control <3Eh, 2335h, 5Ah, 32h, 87h, 0Ah, offset dword_5BE6D8, \ ; \=Add origin to the list of found command\=...
      offset aAddOriginToThe, offset aAddItEvenIfCom, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 42h, 78h, 0Ah, 0, \ ; \=Preferable language of resource data:\=
      offset aPreferableLang, 0, 0>; 0
		t_control <84h, 2336h, 69h, 4Eh, 5Fh, 96h, offset g_ResLuguage, \ ; \=\=
      offset aAcolorpick+13h, offset aIfResourceExis, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aCpu_1, 0, 0>; 0 ; \=CPU\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aCpuWindowOptio, 0, \ ; \=CPU window options\=
      0>		; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <3Eh, 2333h, 5Ah, 1Ah, 78h, 0Ah, offset dword_57FEB0, \ ; \=Gray inactive panes\=
      offset aGrayInactivePa, offset aGrayTextInCpuP, 0>; 0
		t_control <3Eh, 2334h, 5Ah, 26h, 78h, 0Ah, offset dword_57FEB4, \ ; \=Gray register names\=
      offset aGrayRegister_0, offset aGrayNamesOfReg, 0>; 0
		t_control <3Eh, 2335h, 5Ah, 32h, 78h, 0Ah, offset dword_5BE6A8, \ ; \=Show direction of jumps\=
      offset aShowDirectionO, offset aDrawSmallArrow, 0>; 0
		t_control <3Eh, 2336h, 5Ah, 3Eh, 78h, 0Ah, offset dword_5BE6AC, \ ; \=Show jump path\=
      offset aShowJumpPath_0, offset aDrawArrowsShow, 0>; 0
		t_control <3Eh, 2337h, 69h, 4Ah, 78h, 0Ah, offset dword_5BE6B0, \ ; \=Show grayed path if jump is not taken\=
      offset aShowGrayedPa_0, offset aDrawArrowShowi, 0>; 0
		t_control <3Eh, 2338h, 5Ah, 56h, 78h, 0Ah, offset dword_5CBBC8, \ ; \=Enable SSE registers\=
      offset aEnableSseReg_0, offset aUseAndDisplayS, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 66h, 0A0h, 0Ah, 0, \ ; \=Decode contents of registers:\=
      offset aDecodeContents, 0, 0>; 0
		t_control <60h, 2339h, 69h, 72h, 78h, 0Ah, offset dword_5BE6F4, \ ; \=Only for current EIP\=
      offset aOnlyForCurrent, offset aRegistersAreVo, 0>; 0
		t_control <61h, 233Ah, 69h, 7Eh, 78h, 0Ah, offset dword_5BE6F4, \ ; \=For EIP and sele\=
      offset aForEipAndSele, offset aAlthoughRegist, 0>; 0
		t_control <62h, 233Bh, 69h, 8Ah, 78h, 0Ah, offset dword_5BE6F4, \ ; \=For any command\=
      offset aForAnyCommand, offset aUseCurrentRegi, 0>; 0
		t_control <3Eh, 233Ch, 69h, 96h, 78h, 0Ah, offset dword_5BE6F8, \ ; \=Hide 'current registers' warning\=
      offset aHideCurrentR_0, offset aIAmExperienced, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 0A6h, 0A0h, 0Ah, 0, \ ; \=Automatic FPU/MMX/3DNow! registers:\=
      offset aAutomaticFpuMm, 0, 0>; 0
		t_control <60h, 233Dh, 69h, 0B2h, 64h, 0Ah, offset dword_5BE700, \ ; \=Never\=
      offset aNever_0, offset aLetUserDecideH, 0>;	0
		t_control <61h, 233Eh, 69h, 0BEh, 64h, 0Ah, offset dword_5BE700, \ ; \=On events\=
      offset aOnEvents, offset aSetModeAccordi, 0>; 0
		t_control <62h, 233Fh, 69h, 0CAh, 64h, 0Ah, offset dword_5BE700, \ ; \=Always\=
      offset aAlways_0, offset aSetModeDependi, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset asc_57045E, 0, 0>; 0 ; \=\t\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aMoreCpuWindowO, 0, \ ; \=More CPU window options\=
      0>		; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 1Ah, 0A0h, 0Ah, 0, \ ; \=When letter key is pressed in Disassemb\=...
      offset aWhenLetterKe_1, 0, 0>; 0
		t_control <60h, 2333h, 69h, 26h, 64h, 0Ah, offset dword_5BE6B8, \ ; \=Add label\=
      offset aAddLabel, offset aWhenLetterKe_2, 0>; 0
		t_control <61h, 2334h, 69h, 32h, 64h, 0Ah, offset dword_5BE6B8, \ ; \=Assemble command\=
      offset aAssembleComman, offset aWhenLetterKe_3, 0>; 0
		t_control <62h, 2335h, 69h, 3Eh, 64h, 0Ah, offset dword_5BE6B8, \ ; \=Add comment\=
      offset aAddComment, offset aWhenLetterKeyI, 0>; 0
		t_control <63h, 2336h, 69h, 4Ah, 64h, 0Ah, offset dword_5BE6B8, \ ; \=Repeat last action\=
      offset aRepeatLastActi, offset aWhenLetterKe_0, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aDirectories, 0, 0>; 0 ; \=Directories\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aDirectories, 0, 0>; 0 ; \=Directories\=
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 1Ah, 64h, 0Ah, 0, \ ; \=Directory for .udd files:\=
      offset aDirectoryFor_u, 0, 0>; 0
		t_control <81h, 2333h, 5Ah, 26h, 8Eh, 0Ch, 0, offset word_57EBF0, \ ; \=Directory where .udd files are kept\=
      offset aDirectoryWhere, 0>; 0
		t_control <83h, 2334h, 0E9h, 26h, 0Ah, 0Ch, 0, offset word_57EBF0, \ ; \=Select directory where user data files \=...
      offset aSelectDirector, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 38h, 64h, 0Ah, 0, \ ; \=Directory for standard function librari\=...
      offset aDirectoryForSt, 0, 0>; 0
		t_control <81h, 2335h, 5Ah, 44h, 8Eh, 0Ch, 0, offset word_57EDF8, \ ; \=Directory where .udl files are kept\=
      offset aDirectoryWhe_0, 0>; 0
		t_control <83h, 2336h, 0E9h, 44h, 0Ah, 0Ch, 0, offset word_57EDF8, \ ; \=Select directory where standard functio\=...
      offset aSelectDirect_0, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 56h, 64h, 0Ah, 0, \ ; \=Plugin directory:\=
      offset aPluginDirector, 0, 0>; 0
		t_control <81h, 2337h, 5Ah, 62h, 8Eh, 0Ch, 0, offset plugindir, \ ; \=Directory where plugins are kept\=
      offset aDirectoryWhe_1, 0>; 0
		t_control <83h, 2338h, 0E9h, 62h, 0Ah, 0Ch, 0, offset plugindir, \ ; \=Select directory where plugins files ar\=...
      offset aSelectDirect_2, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 74h, 64h, 0Ah, 0, \ ; \=Location of API help file \{.hlp or .chm\=...
      offset aLocationOfApiH, 0, 0>; 0
		t_control <81h, 2339h, 5Ah, 80h, 8Eh, 0Ch, 0, offset path, \ ; \=Location of file with help on Windows A\=...
      offset aLocationOfFile, 0>; 0
		t_control <82h, 233Ah, 0E9h, 80h, 0Ah, 0Ch, offset aWin32_hlp, \ ; \=Win32.hlp\=
      offset path, offset aSelectFileWi_0, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aErrorsAndWarni, 0, 0>;	0 ; \=Errors and	warnings\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aErrorsAndWarni, 0, \ ; \=Errors and warnings\=
      0>		; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <3Eh, 2333h, 5Ah, 1Ah, 78h, 0Ah, offset dword_57E668, \ ; \=Warn if not administrator\=
      offset aWarnIfNotAdmin, offset aSomeDebuggingO, 0>; 0
		t_control <11h, 23C8h, 5Ah, 2Ch, 76h, 0Eh, 0, offset aRestoreAllErro, \ ; \=Restore all errors and warnings\=
      offset aReEnableAllMes, 0>; 0
		t_control <11h, 23C9h, 5Ah, 40h, 76h, 0Eh, 0, offset aRestoreAllActi, \ ; \=Restore all actions\=
      offset aReEnableAllQue, 0>; 0
		t_control <6, 0FFFFFFFFh, 5Ah, 0D0h, 8Ch, 10h, 0, \ ; \=WARNING: You can't undo errors, warning\=...
      offset aWarningYouCanT, 0, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aAppearance_0, 0, 0>; 0	; \=Appearance\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aAppearanceOpti, 0, \ ; \=Appearance options\=
      0>		; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <3Eh, 2333h, 5Ah, 1Ah, 64h, 0Ah, offset dword_57FE98, \ ; \=Bring OllyDbg to top on pause\=
      offset aBringOllydbgTo, offset aWhenDebuggeePa, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 2Ah, 8Ch, 0Ah, 0, \ ; \=Keep between sessions:\=
      offset aKeepBetweenSes, 0, 0>; 0
		t_control <3Eh, 2334h, 69h, 36h, 64h, 0Ah, offset restorewinpos, \ ; \=Position and appearance of tables\=
      offset aPositionAndApp, offset aRestorePositio, 0>; 0
		t_control <3Eh, 2335h, 69h, 42h, 64h, 0Ah, offset dword_57FEA0, \ ; \=Width of columns\=
      offset aWidthOfColumns, offset aRestoreWidth_0, 0>; 0
		t_control <3Eh, 2336h, 69h, 4Eh, 64h, 0Ah, offset dword_57FEA4, \ ; \=Sorting column\=
      offset aSortingColumn, offset aRestoreSorting, 0>; 0
		t_control <3Eh, 2337h, 5Ah, 5Eh, 78h, 0Ah, offset dword_586110, \ ; \=Snow-free drawing \{slow on very old sys\=...
      offset aSnowFreeDraw_1, offset aActivateIfTabl, 0>; 0
		t_control <3Eh, 2338h, 5Ah, 6Ah, 78h, 0Ah, offset dword_57FEA8, \ ; \=Highlight bar in sorted column\=
      offset aHighlightBarIn, offset aHighlightBarBu, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 7Eh, 3Ch, 0Ah, 0, \ ; \=UNICODE edit font\=
      offset aUnicodeEditFon, 0, 0>; 0
		t_control <85h, 2339h, 96h, 7Ch, 5Ah, 0F0h, offset dword_582DF0, \ ; \=\=
      offset aAcolorpick+13h, offset aFontUsedInUnic, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 92h, 3Ch, 0Ah, 0, \ ; \=Duration of flash\=
      offset aDurationOfFlas, 0, 0>; 0
		t_control <13h, 233Ah, 96h, 90h, 37h, 0C8h, offset dword_57FE5C, \ ; \=0.5 s|0.75 s|1 s|1.25 s|1.5 s|1.75 s|2 \=...
      offset a0_5S0_75S1S1_2, offset aDurationOfFl_0, 0>; 0
		t_control <11h, 23F2h, 0D2h, 90h, 1Dh, 0Dh, 0, offset aTest_0, \ ; \=Test\=
      offset aTestDurationOf, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 0A6h, 3Ch, 0Ah, 0, \ ; \=Autoupdate interval\=
      offset aAutoupdateInte, 0, 0>; 0
		t_control <13h, 233Bh, 96h, 0A4h, 37h, 0C8h, offset dword_57FE60, \ ; \=50 ms|100 ms|200 ms|500 ms|1 s|2 s|5 s|\=...
      offset a50Ms100Ms200Ms, offset aRefreshInterva, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 0BAh, 3Ch, 0Ah, 0, \ ; \=Visible lines\=
      offset aVisibleLines, 0, 0>;	0
		t_control <13h, 233Ch, 96h, 0B8h, 37h, 0C8h, offset dword_5BE6CC, \ ; \=0|1|2|3|4|5\=
      offset a012345, offset aNumberOfVisibl, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aDefaults, 0, 0>; 0 ; \=\tDefaults\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aDefaultSetting, 0, \ ; \=Default settings\=
      0>		; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 1Ch, 3Ch, 0Ah, 0, offset aDefaultFont, \ ; \=Default font\=
      0, 0>	; 0
		t_control <85h, 238Dh, 96h, 1Ah, 46h, 0F0h, offset fi, \ ; \=\=
      offset aAcolorpick+13h, offset aDefaultFontFor, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 30h, 3Ch, 0Ah, 0, \ ; \=Default colour scheme\=
      offset aDefaultColourS, 0, 0>; 0
		t_control <88h, 238Eh, 96h, 2Eh, 46h, 0F0h, offset g_Color_index, \ ; \=\=
      offset aAcolorpick+13h, offset aDefaultColou_1, 0>; 0
		t_control <3Eh, 238Fh, 5Ah, 42h, 78h, 0Ah, offset dword_58610C, \ ; \=Horizontal scroll by default\=
      offset aHorizontalSc_0, offset aShowHorizont_0, 0>; 0
		t_control <6, 0FFFFFFFFh, 5Ah, 0C8h, 8Ch, 18h, 0, \ ; \=WARNING: Default settings apply only to\=...
      offset aWarningDefault, 0, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aStartup, 0, 0>; 0 ; \=\tStartup\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aStartupOptions, 0, \ ; \=Startup options\=
      0>		; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <3Eh, 2407h, 5Ah, 1Ah, 5Ah, 0Ah, offset g_IsUseSysColor, \ ; \=Use system colours\=
      offset aUseSystemCol_1, offset aInfluencesMain, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 29h, 64h, 0Ah, 0, \ ; \=Layout of main window:\=
      offset aLayoutOfMainWi, 0, 0>; 0
		t_control <60h, 238Eh, 69h, 35h, 64h, 0Ah, offset dword_57FE68, \ ; \=Non-scrollable MDI\=
      offset aNonScrollableM, offset aDataWindowsAre, 0>; 0
		t_control <61h, 238Fh, 69h, 41h, 64h, 0Ah, offset dword_57FE68, \ ; \=Scrollable MDI\=
      offset aScrollableMdi, offset aDataWindowsA_0, 0>; 0
		t_control <62h, 2390h, 69h, 4Dh, 64h, 0Ah, offset dword_57FE68, \ ; \=Independent windows\=
      offset aIndependentWin, offset aDataWindowsA_1, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 59h, 64h, 0Ah, 0, offset aToolbar, 0, \ ; \=Toolbar:\=
      0>		; 0
		t_control <60h, 2391h, 69h, 65h, 64h, 0Ah, offset g_IsShowtoolbar, \ ; \=Hidden\=
      offset aHidden_1, offset aDoNotShowToolb, 0>; 0
		t_control <61h, 2392h, 69h, 71h, 64h, 0Ah, offset g_IsShowtoolbar, \ ; \=Horizontal\=
      offset aHorizontal, offset aShowToolbarOnT, 0>; 0
		t_control <62h, 2393h, 69h, 7Dh, 64h, 0Ah, offset g_IsShowtoolbar, \ ; \=Vertical\=
      offset aVertical, offset aShowToolbarO_0, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 89h, 64h, 0Ah, 0, \ ; \=Display run status of the application i\=...
      offset aDisplayRunStat, 0, 0>; 0
		t_control <60h, 2394h, 69h, 95h, 64h, 0Ah, offset dword_57FE58, \ ; \=Info bar\=
      offset aInfoBar, offset aDisplayStatusI, 0>;	0
		t_control <61h, 2395h, 69h, 0A1h, 64h, 0Ah, offset dword_57FE58, \ ; \=Horizontal toolbar\=
      offset aHorizontalTool, offset aDisplayStatu_0, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 0B2h, 32h, 0Ah, 0, \ ; \=Size of log buffer\=
      offset aSizeOfLogBuffe, 0, 0>; 0
		t_control <13h, 2396h, 8Ch, 0B0h, 1Eh, 0C8h, offset dword_5BE478, \ ; \=64 k|128 k|256 k|512 k|1 M|2 M|4 M|8 M|\=...
      offset a64K128K256K512, offset aSizeOfMessageB, 0>; 0
		t_control <3Eh, 2397h, 5Ah, 0C2h, 64h, 0Ah, offset dword_5D407C, \ ; \=Scan registry for GUIDs\=
      offset aScanRegistry_0, offset aAddsRegistered, 0>; 0
		t_control <6, 0FFFFFFFFh, 5Ah, 0D3h, 8Ch, 10h, 0, \ ; \=WARNING: modifications made on this pag\=...
      offset aWarningModific, 0, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aFonts, 0, 0>; 0 ; \=\tFonts\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aFonts+2, 0, 0>; 0 ; \=Fonts\=
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 1Ch, 1Eh, 0Ah, 0, offset aFont_2, 0, 0>;	0 ; \=Font:\=
		t_control <85h, 2408h, 79h, 1Ah, 55h, 0F0h, offset dword_5BE258, \ ; \=\=
      offset aAcolorpick+13h, offset aFontSelectedFo, 0>; 0
		t_control <11h, 2409h, 0D2h, 1Ah, 24h, 0Dh, 0, offset aRename, \ ; \=Rename\=
      offset aPressToRenameA, 0>; 0
		t_control <11h, 240Ah, 0D2h, 39h, 24h, 0Dh, 0, offset aChange, \ ; \=Change\=
      offset aPressToEditFon, 0>; 0
		t_control <7Ch, 240Bh, 5Ah, 30h, 74h, 3Ah, 0, offset aAfontinfo, \ ; \=AFONTINFO\=
      offset aInformationAbo, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 73h, 32h, 0Ah, 0, \ ; \=Height adjust: top\=
      offset aHeightAdjustTo, 0, 0>; 0
		t_control <86h, 240Ch, 8Ch, 71h, 25h, 78h, 0, offset a5Pixels4Pixels, \ ; \=-5 pixels|-4 pixels|-3 pixels|-2 pixels\=...
      offset aAdjustsSpaceOn, 0>; 0
		t_control <2, 0FFFFFFFFh, 0B2h, 73h, 1Eh, 0Ah, 0, offset aBottom, 0, \ ; \=, bottom\=
      0>		; 0
		t_control <87h, 240Dh, 0D0h, 71h, 25h, 78h, 0, offset a5Pixels4Pixels,\ ; \=-5 pixels|-4 pixels|-3 pixels|-2 pixels\=...
      offset aAdjustsSpace_0, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 84h, 59h, 0Ah, 0, offset aExample, 0, \ ; \=Example:\=
      0>		; 0
		t_control <7Ch, 240Eh, 5Ah, 8Eh, 9Ch, 52h, 0, offset aAcolorsample, \ ; \=ACOLORSAMPLE\=
      offset aSampleColourin, 0>; 0
		t_control <11h, 240Fh, 5Ah, 0EDh, 3Ah, 0Fh, 0, offset aRestoreDefau_3,\ ; \=Restore defaults\=
      offset aRestoreDefau_0, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aColours, 0, 0>; 0 ; \=\tColours\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aColours+2, 0, 0>; 0 ; \=Colours\=
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 1Ch, 1Eh, 0Ah, 0, offset aScheme, 0, 0>;	0 ; \=Scheme:\=
		t_control <88h, 2410h, 79h, 1Ah, 55h, 0F0h, offset dword_5BE25C, \ ; \=\=
      offset aAcolorpick+13h, offset aColourSchemeSe, 0>; 0
		t_control <11h, 2411h, 0D2h, 1Ah, 24h, 0Dh, 0, offset aRename, \ ; \=Rename\=
      offset aPressToRenam_1, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 30h, 59h, 0Ah, 0, \ ; \=Elements of selected scheme:\=
      offset aElementsOfSele, 0, 0>; 0
		t_control <30h, 2412h, 5Ah, 39h, 58h, 54h, offset dword_5BE260, \ ; \=Normal text|Highlighted text|Grayed tex\=...
      offset aNormalTextHigh, offset aSelectElementO, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 90h, 59h, 0Ah, 0, offset aExample, 0, \ ; \=Example:\=
      0>		; 0
		t_control <7Ch, 2413h, 5Ah, 99h, 58h, 3Fh, 0, offset aAcolorsample, \ ; \=ACOLORSAMPLE\=
      offset aSampleColourin, 0>; 0
		t_control <7Ch, 2414h, 0BAh, 30h, 3Ch, 0AAh, 0, offset aAcolorpick, \ ; \=ACOLORPICK\=
      offset aLeftClickSelec, 0>; 0
		t_control <11h, 2415h, 5Ah, 0EDh, 3Ah, 0Fh, 0, offset aRestoreDefau_3,\ ; \=Restore defaults\=
      offset aRestoreColours, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aCodeHighligh_0, 0, 0>;	0 ; \=\tCode highlighting\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aCodeHighligh_0+2, \ ; \=Code highlighting\=
      0, 0>	; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 1Ch, 1Eh, 0Ah, 0, offset aScheme, 0, 0>;	0 ; \=Scheme:\=
		t_control <8Ah, 2419h, 79h, 1Ah, 55h, 0F0h, offset dword_5BE264, \ ; \=\=
      offset aAcolorpick+13h, offset aCodeHighligh_2, 0>; 0
		t_control <11h, 241Ah, 0D2h, 1Ah, 24h, 0Dh, 0, offset aRename, \ ; \=Rename\=
      offset aPressToRenam_0, 0>; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 30h, 59h, 0Ah, 0, \ ; \=Elements of selected scheme:\=
      offset aElementsOfSele, 0, 0>; 0
		t_control <30h, 241Bh, 5Ah, 39h, 58h, 8Ch, offset dword_5BE268, \ ; \=Plain commands|Unconditional jumps|Cond\=...
      offset aPlainCommandsU, offset aSelectElemen_0, 0>; 0
		t_control <3Eh, 241Ch, 5Ah, 0CBh, 58h, 0Ah, 0, offset aHighlightOp_17,\ ; \=Highlight operands\=
      offset aCheckToAllowSe, 0>; 0
		t_control <3Eh, 241Dh, 5Ah, 0D6h, 58h, 0Ah, 0, offset aHighlightModif,\ ; \=Highlight modified\=
      offset aCheckToAllowHi, 0>; 0
		t_control <7Ch, 241Eh, 0BAh, 30h, 3Ch, 0AAh, 0, offset aAhilitepick, \ ; \=AHILITEPICK\=
      offset aLeftClickSel_0, 0>; 0
		t_control <11h, 241Fh, 5Ah, 0EDh, 3Ah, 0Fh, 0, offset aRestoreDefau_3,\ ; \=Restore defaults\=
      offset aRestoreDefau_1, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aTextToSpeech, 0, 0>; 0	; \=\tText-to-speech\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aTextToSpeech+2, 0, \ ; \=Text-to-speech\=
      0>		; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <3Eh, 23A1h, 5Ah, 1Ah, 78h, 0Ah, offset dword_57FE88, \ ; \=Activate text-to-speech\=
      offset aActivateTextTo, offset aRequiresSapi5_, 0>; 0
		t_control <3Eh, 2334h, 69h, 26h, 78h, 0Ah, offset dword_57FE8C, \ ; \=Translate commands and registers\=
      offset aTranslateComma, offset aForExampleJump, 0>; 0
		t_control <3Eh, 2335h, 69h, 32h, 78h, 0Ah, offset dword_57FE90, \ ; \=Skip leading zeros in hex numbers\=
      offset aSkipLeadingZ_0, offset aMakesReadingAB, 0>; 0
		t_control <6, 0FFFFFFFFh, 5Ah, 0D0h, 8Ch, 10h, 0, \ ; \=WARNING: Text-to-speech expects that Mi\=...
      offset aWarningTextToS, 0, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplySelectedO, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
		t_control <1, 0FFFFFFFFh, 0, 0, 0, 0, 0, offset aMiscellaneous, 0, 0>; 0 ; \=Miscellaneous\=
		t_control <8, 2329h, 50h, 4, 0A0h, 0Fh, 0, offset aMiscellaneousO, 0, \ ; \=Miscellaneous options\=
      0>		; 0
		t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \ ; \=\=
      0>		; 0
		t_control <2, 0FFFFFFFFh, 5Ah, 1Ah, 96h, 0Ah, 0, \ ; \=Replace graphical symbols in text/clipb\=...
      offset aReplaceGraphic, 0, 0>; 0
		t_control <60h, 2333h, 69h, 26h, 64h, 0Ah, offset dword_57DE4C, \ ; \=Spaces\=
      offset aSpaces, offset aReplaceGraph_2, 0>; 0
		t_control <61h, 2334h, 69h, 32h, 64h, 0Ah, offset dword_57DE4C, \ ; \=Similarly looking ASCII characters\=
      offset aSimilarlyLooki, offset aReplaceGraph_0, 0>; 0
		t_control <62h, 2335h, 69h, 3Eh, 64h, 0Ah, offset dword_57DE4C, \ ; \=DOS box characters\=
      offset aDosBoxCharacte, offset aReplaceGraph_3, 0>; 0
		t_control <63h, 2336h, 69h, 4Ah, 64h, 0Ah, offset dword_57DE4C, \ ; \=UNICODE box characters\=
      offset aUnicodeBoxChar, offset aReplaceGraph_1, 0>; 0
		t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \ ; \=OK\=
      offset aApplyOptions, 0>; 0
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aOptions_3, 0, \ ; \=Options\=
      0>		; 0
stru_56806C	t_control <30h, 232Ah, 4, 4, 46h, 0F8h, 0, offset aAcolorpick+13h, 0, \
      0>		; 0 ; \=\=
stru_568094	t_control <11h, 1, 98h, 0EDh, 2Dh, 0Fh, 0, offset aOk_0, \
      offset aApplyOptionsTo, 0>; 0 ; \=OK\=
		t_control <11h, 2, 0C9h, 0EDh, 2Dh, 0Fh, 0, offset aCancel_4, \ ; \=Cancel\=
      offset aUndoModifica_3, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 0FAh, 100h, 0, offset aPluginOptions, \ ; \=Plugin options\=
      0, 0>	; 0
; const	WCHAR aAcolorpick
aAcolorpick:				; DATA XREF: .text:004CDFB5o
		unicode	0, <ACOLORPICK>,0
asc_568122:				; DATA XREF: .text:004CE6CDo
		unicode	0, <F>,0
aB_4:					; DATA XREF: .text:004CE6DCo
		unicode	0, <B>,0
aFb:					; DATA XREF: .text:loc_4CE6E5o
		unicode	0, <FB>,0
aSystemColours:				; DATA XREF: .text:004CE813o
		unicode	0, <System colours:>,0
aCustomizableCo:			; DATA XREF: .text:004CE843o
		unicode	0, <Customizable colours:>,0
aHighlightedTex:			; DATA XREF: .text:004CE97Bo
		unicode	0, <Highlighted text>,0
aSelectedLine:				; DATA XREF: .text:004CE9AFo
		unicode	0, <Selected line>,0
aCurrentEip_1:				; DATA XREF: .text:004CE9E0o
		unicode	0, <Current EIP>,0
aBreakpoint_5:				; DATA XREF: .text:004CEA14o
		unicode	0, <Breakpoint>,0
aConditional_11:			; DATA XREF: .text:004CEA48o
		unicode	0, <Conditional breakpoint>,0
aDisabledBrea_1:			; DATA XREF: .text:004CEA79o
		unicode	0, <Disabled breakpoint>,0
aEipAtBreakpoin:			; DATA XREF: .text:004CEAAAo
		unicode	0, <EIP at breakpoint>,0
aGrayedText:				; DATA XREF: .text:004CEAD8o
		unicode	0, <Grayed text>,0
aNormalText:				; DATA XREF: .text:004CEB04o
		unicode	0, <Normal text>,0
aFontParameters:			; DATA XREF: .text:004CED1Ao
		unicode	0, <Font parameters:>,0
aHeight:				; DATA XREF: .text:loc_4CEE1Eo
		unicode	0, <Height:>,0
aIPixels:				; DATA XREF: .text:004CEE42o
		unicode	0, <!%i pixels>,0
aWidth:					; DATA XREF: .text:loc_4CEE64o
		unicode	0, <Width:>,0
aStyle_0:				; DATA XREF: .text:loc_4CEEAAo
		unicode	0, <Style:>,0
aNormal:				; DATA XREF: .text:004CEEC3o
		unicode	0, <Normal>,0
aBold:					; DATA XREF: .text:004CEEF3o
		unicode	0, <Bold>,0
aWeightI:				; DATA XREF: .text:004CEF1Eo
		unicode	0, <Weight=!%i>,0
aItalic:				; DATA XREF: .text:004CEF44o
		unicode	0, <, Italic>,0
aUnderline:				; DATA XREF: .text:004CEF78o
		unicode	0, <, Underline>,0
aStrikeout:				; DATA XREF: .text:004CEFB0o
		unicode	0, <, Strikeout>,0
aCharset:				; DATA XREF: .text:loc_4CEFE0o
		unicode	0, <Charset:>,0
aAnsi:					; DATA XREF: .text:004CEFF6o
		unicode	0, <ANSI>,0
aDefault:				; DATA XREF: .text:004CF026o
		unicode	0, <Default>,0
aSymbol:				; DATA XREF: .text:004CF056o
		unicode	0, <Symbol>,0
aOem:					; DATA XREF: .text:004CF083o
		unicode	0, <OEM>,0
aOther:					; DATA XREF: .text:loc_4CF0A7o
		unicode	0, <Other>,0
aFace:					; DATA XREF: .text:loc_4CF0CBo
		unicode	0, <Face:>,0
aCode_3:				; DATA XREF: .data:stru_563044o
		unicode	0, <Code>,0
aCodeOptions:				; DATA XREF: .data:0056306Co
		unicode	0, <Code options>,0
aDisassemblingS:			; DATA XREF: .data:005630BCo
		unicode	0, <Disassembling syntax:>,0
aMasmMicrosoft:				; DATA XREF: .data:005630E4o
		unicode	0, <MASM \{Microsoft\}>,0
aDisassembleInM:			; DATA XREF: .data:005630E4o
		unicode	0, <Disassemble in MASM format>,0
aIdealBorland:				; DATA XREF: .data:0056310Co
		unicode	0, <IDEAL \{Borland\}>,0
aDisassembleInB:			; DATA XREF: .data:0056310Co
		unicode	0, <Disassemble in Borland>
		dw 27h			; 22
		unicode	0, <s IDEAL format>,0
aHlaRandallHyde:			; DATA XREF: .data:00563134o
		unicode	0, <HLA \{Randall Hyde\}>,0
aDisassembleInH:			; DATA XREF: .data:00563134o
		unicode	0, <Disassemble in High Level Assembly format>,0
aLinuxAtTOnlyDi:			; DATA XREF: .data:0056315Co
		unicode	0, <Linux \{AT\A\AT\} - only disassembly\:>,0
aDisassembleInA:			; DATA XREF: .data:0056315Co
		unicode	0, <Disassemble in AT\AT format, unsupported by Assembler\:>,0
aDisassembleI_0:			; DATA XREF: .data:00563184o
		unicode	0, <Disassemble in lowercase>,0
aDisplayMnemoni:			; DATA XREF: .data:00563184o
		unicode	0, <Display mnemonics, registers and keywords in lowercase>,0
aTabBetweenMnem:			; DATA XREF: .data:005631ACo
		unicode	0, <Tab between mnemonics and arguments>,0
aStartOperandsF:			; DATA XREF: .data:005631ACo
		unicode	0, <Start operands from the 9th character position>,0
aExtraSpaceBe_0:			; DATA XREF: .data:005631D4o
		unicode	0, <Extra space between arguments>,0
aInsertAddition:			; DATA XREF: .data:005631D4o
		unicode	0, <Insert additional space character between arguments>,0
aShowDefaultS_0:			; DATA XREF: .data:005631FCo
		unicode	0, <Show default segments>,0
aShowImplicitSe:			; DATA XREF: .data:005631FCo
		unicode	0, <Show implicit segment registers in memory addresses>,0
aAlwaysShowSize:			; DATA XREF: .data:00563224o
		unicode	0, <Always show size of memory operands>,0
aShowSizeOfMemo:			; DATA XREF: .data:00563224o
		unicode	0, <Show size of memory operand even if it is unambiguous>,0
aShowNearJumpMo:			; DATA XREF: .data:0056324Co
		unicode	0, <Show NEAR jump modifiers>,0
aMarkIndirectIn:			; DATA XREF: .data:0056324Co
		unicode	0, <Mark indirect intrasegment jumps as NEAR>,0
aShowLocalModul:			; DATA XREF: .data:00563274o
		unicode	0, <Show local module name>,0
aPrecedeLocalAd:			; DATA XREF: .data:00563274o
		unicode	0, <Precede local addresses with the name of the module>,0
aShowSymbolic_2:			; DATA XREF: .data:0056329Co
		unicode	0, <Show symbolic addresses>,0
aShowKnownSymbo:			; DATA XREF: .data:0056329Co
		unicode	0, <Show known symbolic addresses instead of constants>,0
aDemangleSymbol:			; DATA XREF: .data:005632C4o
		unicode	0, <Demangle symbolic names>,0
aConvertEncoded:			; DATA XREF: .data:005632C4o
		unicode	0, <Convert encoded C++ names into the readable form>,0
aOk_0:					; DATA XREF: .data:005632ECo
					; .data:0056360Co ...
		unicode	0, <OK>,0
aApplySelectedO:			; DATA XREF: .data:005632ECo
					; .data:0056360Co ...
		unicode	0, <Apply selected options>,0
aCancel_4:				; DATA XREF: .data:00563314o
					; .data:00563634o ...
		unicode	0, <Cancel>,0
aUndoModifica_3:			; DATA XREF: .data:00563314o
					; .data:00563634o ...
		unicode	0, <Undo modifications>,0
aOptions_3:				; DATA XREF: .data:0056333Co
					; .data:0056365Co ...
		unicode	0, <Options>,0
aMnemonics:				; DATA XREF: .data:00563364o
					; .data:0056338Co
		dw 9
		unicode	0, <Mnemonics>,0
aGuessAlternati:			; DATA XREF: .data:005633DCo
		unicode	0, <Guess alternative forms of conditional commands>,0
aLikeJzJcInstea:			; DATA XREF: .data:005633DCo
		unicode	0, <Like JZ, JC instead of JE, JAE. Analysis necessary\:>,0
aFormOfStringCo:			; DATA XREF: .data:00563404o
		unicode	0, <Form of string commands:>,0
aLongMovsDwordE:			; DATA XREF: .data:0056342Co
		unicode	0, <Long \{MOVS [DWORD EDI],[DWORD ESI]...\}>,0
aStateAssumedSt:			; DATA XREF: .data:0056342Co
		unicode	0, <State assumed string operands explicitly>,0
aShortMovsb___:				; DATA XREF: .data:00563454o
		unicode	0, <Short \{MOVSB...\}>,0
aDoNotSpecifyAs:			; DATA XREF: .data:00563454o
		unicode	0, <Do not specify assumed string operands>,0
aDecodeNearRetu:			; DATA XREF: .data:0056347Co
		unicode	0, <Decode near returns as:>,0
aRetn_1:				; DATA XREF: .data:005634A4o
		unicode	0, <RETN>,0
aEmphasizeThatR:			; DATA XREF: .data:005634A4o
		unicode	0, <Emphasize that return is near>,0
aRet_0:					; DATA XREF: .data:005634CCo
		unicode	0, <RET>,0
aAlmostAllRetur:			; DATA XREF: .data:005634CCo
		unicode	0, <Almost all returns are near in flat mode applications>,0
aDecodeSizeSens:			; DATA XREF: .data:005634F4o
		unicode	0, <Decode size-sensitive 16/32-bit mnemonics like:>,0
aPushaPushadMov:			; DATA XREF: .data:0056351Co
		unicode	0, <PUSHA/PUSHAD, MOVS/MOVSD...>,0
aNoSuffixFor16B:			; DATA XREF: .data:0056351Co
		unicode	0, <No suffix for 16-bit, suffix D for 32-bit mnemonics>,0
aPushawPushadMo:			; DATA XREF: .data:00563544o
		unicode	0, <PUSHAW/PUSHAD, MOVSW/MOVSD...>,0
aSuffixWFor16Bi:			; DATA XREF: .data:00563544o
		unicode	0, <Suffix W for 16-bit, suffix D for 32-bit mnemonics>,0
aPushawPushaMov:			; DATA XREF: .data:0056356Co
		unicode	0, <PUSHAW/PUSHA, MOVSW/MOVS...>,0
aSuffixWFor16_1:			; DATA XREF: .data:0056356Co
		unicode	0, <Suffix W for 16-bit, no suffix for 32-bit mnemonics>,0
aDecodeJumpHint:			; DATA XREF: .data:00563594o
		unicode	0, <Decode jump hints as:>,0
aJnzJge___:				; DATA XREF: .data:005635BCo
		unicode	0, <+JNZ, -JGE...>,0
aPlusIfJumpIsMa:			; DATA XREF: .data:005635BCo
		unicode	0, <Plus if jump is mainly taken, minus if not>,0
aBhtJnzBhntJge_:			; DATA XREF: .data:005635E4o
		unicode	0, <BHT JNZ, BHNT JGE...>,0
aPrefixesBranch:			; DATA XREF: .data:005635E4o
		unicode	0, <Prefixes >
		dw 27h
		unicode	0, <Branch Hint Taken>
		dw 27h
		unicode	0, <, >
		dw 27h
		unicode	0, <Branch Hint Not Taken>
		dw 27h,	0
aOperands:				; DATA XREF: .data:00563684o
					; .data:005636ACo
		dw 9
		unicode	0, <Operands>,0
aDecodeTopOfFpu:			; DATA XREF: .data:005636FCo
		unicode	0, <Decode top of FPU stack as:>,0
aSt0_0:					; DATA XREF: .data:00563724o
		unicode	0, <ST\{0\}>,0
aDecodeTopOfF_0:			; DATA XREF: .data:00563724o
		unicode	0, <Decode top of FPU stack >
		unicode 0, <as ST\{0\} \{full form\}>,0
aSt_3:					; DATA XREF: .data:0056374Co
		unicode	0, <ST>,0
aDecodeTopOfF_1:			; DATA XREF: .data:0056374Co
		unicode	0, <Decode top of FPU stack as ST \{simplified form\}>,0
aDecodeSizeOf16:			; DATA XREF: .data:00563774o
		unicode	0, <Decode size of 16/32-byte SSE operands as:>,0
aDqwordQqwordDo:			; DATA XREF: .data:0056379Co
		unicode	0, <DQWORD/QQWORD \{Double/Quad Quadword\}>,0
aDecodeSseMemor:			; DATA XREF: .data:0056379Co
		unicode	0, <Decode SSE memory operands like [DQWORD EDX]>,0
aXmmwordYmmword:			; DATA XREF: .data:005637C4o
		unicode	0, <XMMWORD/YMMWORD \{as XMM/YMM registers\}>,0
aDecodeSseMem_0:			; DATA XREF: .data:005637C4o
		unicode	0, <Decode SSE memory operands like [XMMWORD EDX]>,0
aDump_5:				; DATA XREF: .data:00563864o
					; .data:0056388Co
		dw 9
		unicode	0, <Dump>,0
aUnderlineFix_1:			; DATA XREF: .data:005638DCo
		unicode	0, <Underline fixups>,0
aUnderlineFix_0:			; DATA XREF: .data:005638DCo
		unicode	0, <Underline fixups in dump columns or windows>,0
aUseWideCharact:			; DATA XREF: .data:00563904o
		unicode	0, <Use wide characters in UNICODE \A\A multibyte dumps>,0
aSoThatKanjiSym:			; DATA XREF: .data:00563904o
		unicode	0, <So that Kanji symbols are not clipped>,0
aDisableGdiScri:			; DATA XREF: .data:0056392Co
		unicode	0, <Disable GDI scripting support>,0
aGetsRidOfDumpA:			; DATA XREF: .data:0056392Co
		unicode	0, <Gets rid of dump artefacts, but some UNICODE characters m>
		unicode	0, <ay be replaced by spaceholders>,0
aReplaceNonPrin:			; DATA XREF: .data:00563954o
		unicode	0, <Replace non-printable ASCII characters with dots>,0
aDoNotDisplayNo:			; DATA XREF: .data:00563954o
		unicode	0, <Do not display non-printable ASCII characters in dump>,0
aDisplayAddress:			; DATA XREF: .data:0056397Co
		unicode	0, <Display addresses in address column as:>,0
aHexSymbol:				; DATA XREF: .data:005639A4o
		unicode	0, <Hex, Symbol>,0
aHexAddressFoll:			; DATA XREF: .data:005639A4o
		unicode	0, <Hex address, followed by symbolic name, if available>,0
aSymbolHex:				; DATA XREF: .data:005639CCo
		unicode	0, <Symbol, Hex>,0
aIfSymbolicName:			; DATA XREF: .data:005639CCo
		unicode	0, <If symbolic name is available, put it first>,0
aSymbolOrHex:				; DATA XREF: .data:005639F4o
		unicode	0, <Symbol or Hex>,0
aIfSymbolicNa_0:			; DATA XREF: .data:005639F4o
		unicode	0, <If symbolic name is available, show name, otherwise hexad>
		unicode	0, <ecimal address>,0
aHighlightSym_1:			; DATA XREF: .data:00563A1Co
		unicode	0, <Highlight symbolic names in address column>,0
aDoubleclickO_2:			; DATA XREF: .data:00563A44o
		unicode	0, <Doubleclick on address:>,0
aSetsRelativeAd:			; DATA XREF: .data:00563A6Co
		unicode	0, <Sets relative addressing>,0
aDoubleclickOnA:			; DATA XREF: .data:00563A6Co
		unicode	0, <Doubleclick on address to toggle relative addressing>,0
aLabelsAddress:				; DATA XREF: .data:00563A94o
		unicode	0, <Labels address>,0
aDoubleclickO_0:			; DATA XREF: .data:00563A94o
		unicode	0, <Doubleclick on address to place user-defined label>,0
aAsciiCodePage:				; DATA XREF: .data:00563ABCo
		unicode	0, <ASCII code page>,0
aCodePageUsed_0:			; DATA XREF: .data:00563AE4o
		unicode	0, <Code page used in ASCII dumps and data input dialogs>,0
aMultibyteCodeP:			; DATA XREF: .data:00563B0Co
		unicode	0, <Multibyte code page>,0
aCodePageUsedIn:			; DATA XREF: .data:00563B34o
		unicode	0, <Code page used in multibyte character dumps and data inpu>
		unicode	0, <t dialogs>,0
aStrings_0:				; DATA XREF: .data:00563BD4o
					; .data:00563BFCo
		dw 9
		unicode	0, <Strings>,0
aDecodePascalSt:			; DATA XREF: .data:00563C4Co
		unicode	0, <Decode Pascal-style string constants>,0
aPascalStringsA:			; DATA XREF: .data:00563C4Co
		unicode	0, <Pascal strings are preceded with the character count>,0
aAllowDiacritic:			; DATA XREF: .data:00563C74o
		unicode	0, <Allow diacritical symbols \{>
		dw 0E0h
		unicode	0, <,>
		dw 0F1h
		unicode	0, <,>
		dw 0F8h
a____5:
		unicode	0, <...\}>,0
aIncreasesNumbe:			; DATA XREF: .data:00563C74o
		unicode	0, <Increases number of improperly recognized strings>,0
aToRecognizeUni:			; DATA XREF: .data:00563C9Co
		unicode	0, <To recognize UNICODE strings:>,0
aUseInternalHeu:			; DATA XREF: .data:00563CC4o
		unicode	0, <Use internal heuristics \{ASCII subset\}>,0
aSearchIsLimite:			; DATA XREF: .data:00563CC4o
		unicode	0, <Search is limited to extended ASCII subset only>,0
aUseIstextunico:			; DATA XREF: .data:00563CECo
		unicode	0, <Use IsTextUnicode\{\}>,0
aLetWindowsDete:			; DATA XREF: .data:00563CECo
		unicode	0, <Let Windows determine if valid UNICODE string. ATTENTION,>
		unicode	0, < danger of misinterpretations\:>,0
aModeOfStringDe:			; DATA XREF: .data:00563D14o
		unicode	0, <Mode of string decoding:>,0
aPlainAbc:				; DATA XREF: .data:00563D3Co
		unicode	0, <Plain \{\=abc>
		db  7Fh	; 
		db    0
aDef:
		unicode	0, <def\=\}>,0
aDisplayTextStr:			; DATA XREF: .data:00563D3Co
		unicode	0, <Display text strings without conversion>,0
aAssemblerAbcLf:			; DATA XREF: .data:00563D64o
		unicode	0, <Assembler \{\=abc\=,LF,\=def\=\}>,0
aConvertStrings:			; DATA XREF: .data:00563D64o
		unicode	0, <Convert strings to more or less MASM-compatible form>,0
aCAbcNdef:				; DATA XREF: .data:00563D8Co
		unicode	0, <C \{\=abc\ndef\=\}>,0
aConvertRecogni:			; DATA XREF: .data:00563D8Co
		unicode	0, <Convert recognized strings to C-compatible form>,0
aDebugging:				; DATA XREF: .data:00563E2Co
		unicode	0, <Debugging>,0
aDebuggingOptio:			; DATA XREF: .data:00563E54o
		unicode	0, <Debugging options>,0
aAssumeFlatSele:			; DATA XREF: .data:00563EA4o
		unicode	0, <Assume flat selectors>,0
aAssumeThatCsDs:			; DATA XREF: .data:00563EA4o
		unicode	0, <Assume that CS, DS, SS and ES always have zero offset>,0
aAfterExecuteTi:			; DATA XREF: .data:00563ECCo
		unicode	0, <After Execute till return, step over RET>,0
aWhenReturnIsRe:			; DATA XREF: .data:00563ECCo
		unicode	0, <When return is reached, execute it>,0
aAllowFastComma:			; DATA XREF: .data:00563EF4o
		unicode	0, <Allow fast command emulation>,0
aEmulateExecuti:			; DATA XREF: .data:00563EF4o
		unicode	0, <Emulate execution of commands in OllyDbg>,0
aAutoBackupUser:			; DATA XREF: .data:00563F1Co
		unicode	0, <Auto backup user code>,0
aCreateBackupsO:			; DATA XREF: .data:00563F1Co
		unicode	0, <Create backups of non-system code sections>,0
aUseHwBreakpoin:			; DATA XREF: .data:00563F44o
		unicode	0, <Use HW breakpoints for stepping>,0
aUseLessInvasiv:			; DATA XREF: .data:00563F44o
		unicode	0, <Use less invasive hardware breakpoints instead of INT3>,0
aHideUnimportan:			; DATA XREF: .data:00563F6Co
		unicode	0, <Hide unimportant handles>,0
aDonTListUnimpo:			; DATA XREF: .data:00563F6Co
		unicode	0, <Don>
		dw 27h
		unicode	0, <t list unimportant standard handles in the Handles window>
aSetPermanentBr:			; DATA XREF: .data:00563F94o
		unicode	0, <Set permanent breakpoints on system calls>,0
aSetInt3OnZwcon:			; DATA XREF: .data:00563F94o
		unicode	0, <Set INT3 on ZwContinue\{\}, UnhandledExceptionFilter\{\}, KiU>
		unicode	0, <serExceptionDispatcher\{\} etc.>,0
aToPauseRunning:			; DATA XREF: .data:00563FBCo
		unicode	0, <To pause running application:>,0
aSetBreakpointI:			; DATA XREF: .data:00563FE4o
		unicode	0, <Set breakpoint in every thread>,0
aSetMemoryTraps:			; DATA XREF: .data:00563FE4o
		unicode	0, <Set memory traps or single-step breaks in every thread>,0
aCallDebugbreak:			; DATA XREF: .data:0056400Co
		unicode	0, <Call DebugBreakProcess\{\}>,0
aUseThisSpecial:			; DATA XREF: .data:0056400Co
		unicode	0, <Use this special system >
		unicode 0, <call \{if supported by OS\}>,0
aWhenTerminatin:			; DATA XREF: .data:00564034o
		unicode	0, <When terminating the running application:>,0
aImmediatelyCal:			; DATA XREF: .data:0056405Co
		unicode	0, <Immediately call TerminateProcess\{\}>,0
aWorksFastButOp:			; DATA XREF: .data:0056405Co
		unicode	0, <Works fast, but open files may get corrupted>,0
aTryToUseExitpr:			; DATA XREF: .data:00564084o
		unicode	0, <Try to use ExitProcess\{\} first>,0
aTrickyButABitS:			; DATA XREF: .data:00564084o
		unicode	0, <Tricky, but a bit safer>,0
aCommandUsedAsA:			; DATA XREF: .data:005640ACo
		unicode	0, <Command used as a soft breakpoint \{experimental\}:>,0
aInt3Int1IcebpH:			; DATA XREF: .data:005640D4o
		unicode	0, <INT3|INT1 \{ICEBP\}|HLT|CLI|STI|INSB|INSD|OUTSB|OUTSD>,0
aSelectCommandU:			; DATA XREF: .data:005640D4o
		unicode	0, <Select command used as a soft breakpoint. Use INT3 if in >
		unicode	0, <doubt\:>,0
aDebuggingData:				; DATA XREF: .data:00564174o
					; .data:0056419Co
		dw 9
		unicode	0, <Debugging data>,0
aUseDebuggingDa:			; DATA XREF: .data:005641ECo
		unicode	0, <Use debugging data>,0
aAllowDbghelp_d:			; DATA XREF: .data:005641ECo
		unicode	0, <Allow DBGHELP.DLL>,0
aUseDbghelp_dll:			; DATA XREF: .data:00564214o
		unicode	0, <Use dbghelp.dll for stack walk>,0
aUseDbghelp_sta:			; DATA XREF: .data:00564214o
		unicode	0, <Use DBGHELP.StackWalk64\{\} to walk CPU stack>,0
aDirectoriesCon:			; DATA XREF: .data:0056423Co
		unicode	0, <Directories containing debugging data \{.pdb,.dbg...\}.>,0
aDbghelp_dllWil:			; DATA XREF: .data:00564264o
		unicode	0, <Dbghelp.dll will also recurse into subdirectories:>,0
aDirectoryConta:			; DATA XREF: .data:0056428Co
					; .data:005642DCo ...
		unicode	0, <Directory containing debugging data \{.pdb,.dbg...\}>,0
aSelectDirect_1:			; DATA XREF: .data:005642B4o
					; .data:00564304o ...
		unicode	0, <Select directory where debugging data is kept>,0
aAllowAccessToM:			; DATA XREF: .data:0056437Co
		unicode	0, <Allow access to Microsoft Symbol Server>,0
aDownloadDebugg:			; DATA XREF: .data:0056437Co
		unicode	0, <Download debugging data for system DLLs from Internet \{ht>
		unicode	0, <tp://msdl.microsoft.com/download/symbols\}>,0
aDonTListMissin:			; DATA XREF: .data:005643A4o
		unicode	0, <Don>
		dw 27h
		unicode	0, <t list missing source files>,0
aForExampleThos:			; DATA XREF: .data:005643A4o
		unicode	0, <For example, those used to build system libraries>,0
aDonTListIntern:			; DATA XREF: .data:005643CCo
		unicode	0, <Don>
		dw 27h
		unicode	0, <t list internal compiler labels>,0
aConstantString:			; DATA XREF: .data:005643CCo
		unicode	0, <Constant strings, floating constants, imports etc.>,0
aSkipLeadingS_1:			; DATA XREF: .data:005643F4o
		unicode	0, <Skip leading spaces from source lines in comments>,0
aOnlyAffectsDis:			; DATA XREF: .data:005643F4o
		unicode	0, <Only affects Disassembler comments>,0
aWarningMicroso:			; DATA XREF: .data:0056441Co
		unicode	0, <WARNING: Microsoft Symbol Server sends and receives data >
		unicode	0, <over the Internet\:>
		dw 0Ah
		unicode	0, <Modifications made on this page will take full effect onl>
		unicode	0, <y after restart.>,0
aStart:					; DATA XREF: .data:005644BCo
					; .data:005644E4o
		dw 9
		unicode	0, <Start>,0
aWhenStartingAp:			; DATA XREF: .data:00564534o
		unicode	0, <When starting application, make first pause at:>,0
aSystemBreakp_0:			; DATA XREF: .data:0056455Co
					; .data:0056464Co
		unicode	0, <System breakpoint>,0
aMakeFirstPause:			; DATA XREF: .data:0056455Co
		unicode	0, <Make first pause when OS executes DbgBreakPoint\{\}>,0
aTlsCallbackIfD:			; DATA XREF: .data:00564584o
		unicode	0, <TLS callback \{if defined\}>,0
aMakeFirstPau_0:			; DATA XREF: .data:00564584o
		unicode	0, <Make first pause at TLS callback, or at entry point of ma>
		unicode	0, <in module if callbacks are absent>,0
aEntryPointOfMa:			; DATA XREF: .data:005645ACo
		unicode	0, <Entry point of main module>,0
aMakeFirstPau_3:			; DATA XREF: .data:005645ACo
		unicode	0, <Make first pause at entry point of main module>,0
aWinmainIfLocat:			; DATA XREF: .data:005645D4o
		unicode	0, <WinMain \{if location is known\}>,0
aMakeFirstPau_1:			; DATA XREF: .data:005645D4o
		unicode	0, <Make first pause at WinMain, or at entry point of main mo>
		unicode	0, <dule if WinMain is unknown>,0
aNoPause:				; DATA XREF: .data:005645FCo
					; .data:0056469Co ...
		unicode	0, <No pause>,0
aMakeNoPauseImm:			; DATA XREF: .data:005645FCo
		unicode	0, <Make no pause, immediately run application>,0
aWhenAttachingT:			; DATA XREF: .data:00564624o
		unicode	0, <When attaching to application, make first pause at:>,0
aWhenAttachingP:			; DATA XREF: .data:0056464Co
		unicode	0, <When attaching, pause application on system breakpoint in>
		unicode	0, < the temporary thread>,0
aApplicationCod:			; DATA XREF: .data:00564674o
		unicode	0, <Application code>,0
aWhenAttachin_0:			; DATA XREF: .data:00564674o
		unicode	0, <When attaching, pause on application code>,0
aWhenAttachingR:			; DATA XREF: .data:0056469Co
		unicode	0, <When attaching, run application without pause>,0
aWhenLoadingD_4:			; DATA XREF: .data:005646C4o
		unicode	0, <When loading DLL, make first pause at:>,0
aEntryPointOfLo:			; DATA XREF: .data:005646ECo
		unicode	0, <Entry point of LOADDLL.EXE>,0
aWhenLoadingD_1:			; DATA XREF: .data:005646ECo
		unicode	0, <When loading DLL, pause application on the entry point of>
		unicode	0, < DLL loader>,0
aDllEntryPointI:			; DATA XREF: .data:00564714o
		unicode	0, <DLL entry point \{if defined\}>,0
aWhenLoadingD_2:			; DATA XREF: .data:00564714o
		unicode	0, <When loading DLL, pause application on the DLL entry poin>
		unicode	0, <t \{also known as DllMain\{\} or DllEntryPoint\{\}\}>,0
aAfterCallToLoa:			; DATA XREF: .data:0056473Co
		unicode	0, <After call to LoadLibrary\{\}>,0
aWhenLoadingD_0:			; DATA XREF: .data:0056473Co
		unicode	0, <When loading DLL, pause after return from call to LoadLib>
		unicode	0, <rary\{\} in LOADDLL.EXE>,0
aWhenLoadingDll:			; DATA XREF: .data:00564764o
		unicode	0, <When loading DLL, run LOADDLL.EXE without pause>,0
aEvents:				; DATA XREF: .data:00564804o
		dw 9
		unicode	0, <Events>,0
aDebuggingEvent:			; DATA XREF: .data:0056482Co
		unicode	0, <Debugging events>,0
aWarnOnFrequent:			; DATA XREF: .data:0056487Co
		unicode	0, <Warn on frequent events>,0
aFlashWarningIf:			; DATA XREF: .data:0056487Co
		unicode	0, <Flash warning if debugging events are frequent>,0
aPauseOnNewModu:			; DATA XREF: .data:005648A4o
		unicode	0, <Pause on new module \{DLL\}>,0
aWhenNewDllLoad:			; DATA XREF: .data:005648A4o
		unicode	0, <When new DLL loads, pause on entry point \{if available\}>,0
aPauseOnModuleD:			; DATA XREF: .data:005648CCo
		unicode	0, <Pause on module \{DLL\} unloading>,0
aPauseWhenDllIs:			; DATA XREF: .data:005648CCo
		unicode	0, <Pause when DLL is removed from the memory>,0
aOnlyOnTheFollo:			; DATA XREF: .data:005648F4o
		unicode	0, <Only on the following modules:>,0
aPauseOnlyOnLis:			; DATA XREF: .data:005648F4o
		unicode	0, <Pause only on listed new/unloading modules>,0
aFullPathFile_e:			; DATA XREF: .data:0056491Co
		unicode	0, <Full path, file.ext, file or internal module name>,0
aAdd_0:					; DATA XREF: .data:00564944o
		unicode	0, <Add>,0
aAddModuleToT_0:			; DATA XREF: .data:00564944o
		unicode	0, <Add module to the list>,0
aRemove:				; DATA XREF: .data:0056496Co
		unicode	0, <Remove>,0
aRemoveSelect_0:			; DATA XREF: .data:0056496Co
		unicode	0, <Remove selected module from the list>,0
aPauseOnNewThre:			; DATA XREF: .data:00564994o
		unicode	0, <Pause on new thread>,0
aWhenNewThreadS:			; DATA XREF: .data:00564994o
		unicode	0, <When new thread starts, pause on its entry point>,0
aPauseOnThreadE:			; DATA XREF: .data:005649BCo
		unicode	0, <Pause on thread end>,0
aPauseWhenThrea:			; DATA XREF: .data:005649BCo
		unicode	0, <Pause when thread terminates>,0
aPauseOnDebugSt:			; DATA XREF: .data:005649E4o
		unicode	0, <Pause on debug string>,0
aPauseWhenAppli:			; DATA XREF: .data:005649E4o
		unicode	0, <Pause when application emits debug string>,0
aDebugChildPr_0:			; DATA XREF: .data:00564A0Co
		unicode	0, <Debug child processes>,0
aStartNewOllydb:			; DATA XREF: .data:00564A0Co
		unicode	0, <Start new OllyDbg instance for processes spawned by Debug>
		unicode	0, <gee>,0
aWarningDebuggi:			; DATA XREF: .data:00564A34o
		unicode	0, <WARNING: debugging of child processes is possible only wh>
		unicode	0, <en Debuggee was created by OllyDbg and only if option >
		dw 27h
		unicode	0, <Debug child processes>
		dw 27h
		unicode	0, < was active.>,0
asc_56C14A	db 9,0			; DATA XREF: .data:00564AD4o
aExceptions_0:
		unicode	0, <Exceptions>,0
aIgnoredExcep_0:			; DATA XREF: .data:00564AFCo
		unicode	0, <Ignored exceptions>,0
aIgnoreMemoryAc:			; DATA XREF: .data:00564B4Co
		unicode	0, <Ignore memory access violations in KERNEL32>,0
aMayOccurInKern:			; DATA XREF: .data:00564B4Co
		unicode	0, <May occur in KERNEL32.IsBadReadPtr\{\} and similar APIs>,0
aStepOverInt3Br:			; DATA XREF: .data:00564B74o
		unicode	0, <Step over INT3 breaks in MSCORWKS>,0
aInThisWay_netE:			; DATA XREF: .data:00564B74o
		unicode	0, <In this way .NET engine alerts Debugger to events>,0
aIgnorePassToDe:			; DATA XREF: .data:00564B9Co
		unicode	0, <Ignore \{pass to debugged program\} following exceptions:>,0
aInt3Breaks:				; DATA XREF: .data:00564BC4o
		unicode	0, <INT3 breaks>,0
aLetProgramProc:			; DATA XREF: .data:00564BC4o
		unicode	0, <Let program process breaks on INT3 set by program>,0
aSingleStepBrea:			; DATA XREF: .data:00564BECo
		unicode	0, <Single-step breaks>,0
aLetProgramPr_3:			; DATA XREF: .data:00564BECo
		unicode	0, <Let program process breaks on TRAP bit set by program>,0
aMemoryAccessVi:			; DATA XREF: .data:00564C14o
		unicode	0, <Memory access violations>,0
aLetProgramPr_0:			; DATA XREF: .data:00564C14o
		unicode	0, <Let program process breaks on invalid memory access>,0
aIntegerDivis_0:			; DATA XREF: .data:00564C3Co
		unicode	0, <Integer division by 0>,0
aLetProgramPr_1:			; DATA XREF: .data:00564C3Co
		unicode	0, <Let program process breaks on integer division by zero>,0
aInvalidOrPrivi:			; DATA XREF: .data:00564C64o
		unicode	0, <Invalid or privileged instructions>,0
aLetProgramPr_2:			; DATA XREF: .data:00564C64o
		unicode	0, <Let program process breaks on invalid instruction>,0
aAllFpuExceptio:			; DATA XREF: .data:00564C8Co
		unicode	0, <All FPU exceptions>,0
aLetProgramPr_4:			; DATA XREF: .data:00564C8Co
		unicode	0, <Let program process breaks on all FPU exceptions>,0
aAllServiceExce:			; DATA XREF: .data:00564CB4o
		unicode	0, <All service exceptions>,0
aProcessExcepti:			; DATA XREF: .data:00564CB4o
		unicode	0, <Process exceptions \{mis\}used by OS>,0
aIgnoreAlsoTheF:			; DATA XREF: .data:00564CDCo
		unicode	0, <Ignore also the following custom exceptions or ranges:>,0
aActivateListOf:			; DATA XREF: .data:00564CDCo
		unicode	0, <Activate list of custom exceptions>,0
aListOfCustomEx:			; DATA XREF: .data:00564D04o
		unicode	0, <List of custom exceptions to be passed to debuggee>,0
aAddCurrent:				; DATA XREF: .data:00564D2Co
		unicode	0, <Add current>,0
aAddExceptionTh:			; DATA XREF: .data:00564D2Co
		unicode	0, <Add exception that paused the debugged application>,0
aAddRange:				; DATA XREF: .data:00564D54o
		unicode	0, <Add range>,0
aAddRangeOfExce:			; DATA XREF: .data:00564D54o
		unicode	0, <Add range of exceptions>,0
aDelete_0:				; DATA XREF: .data:00564D7Co
		unicode	0, <Delete>,0
aRemoveSelect_1:			; DATA XREF: .data:00564D7Co
		unicode	0, <Remove selected exception or range from the list>,0
aPassUnprocesse:			; DATA XREF: .data:00564DA4o
		unicode	0, <Pass unprocessed exceptions to Unhandled Exception Filter>
aNoteProgramMay:			; DATA XREF: .data:00564DA4o
		unicode	0, <Note: program may terminate if custom filter is not insta>
		unicode	0, <lled\:>,0
aReportIgnore_0:			; DATA XREF: .data:00564DCCo
		unicode	0, <Report ignored exceptions to log>,0
aReportIgnoredP:			; DATA XREF: .data:00564DCCo
		unicode	0, <Report ignored \{passed to debuggee\} exceptions to log>,0
aRunTrace_0:				; DATA XREF: .data:00564E6Co
					; .data:00564E94o
		dw 9
		unicode	0, <Run trace>,0
aSizeOfRunTrace:			; DATA XREF: .data:00564EE4o
		unicode	0, <Size of run trace buffer>,0
a1M2M4M8M16M32M:			; DATA XREF: .data:00564F0Co
		unicode	0, <1 M|2 M|4 M|8 M|16 M|32 M|64 M|128 M|256 M>,0
aApproximateSiz:			; DATA XREF: .data:00564F0Co
		unicode	0, <Approximate size of run trace buffer, bytes>,0
aWhenTracingOrA:			; DATA XREF: .data:00564F34o
		unicode	0, <When tracing or animating into:>,0
aDonTEnterSyste:			; DATA XREF: .data:00564F5Co
		unicode	0, <Don\-t enter system DLLs>,0
aInAutomaticM_0:			; DATA XREF: .data:00564F5Co
		unicode	0, <In automatic mode, always trace over API calls>,0
aAlwaysTraceOve:			; DATA XREF: .data:00564F84o
		unicode	0, <Always trace over string commands>,0
aInAutomaticMod:			; DATA XREF: .data:00564F84o
		unicode	0, <In automatic mode, execute string commands at once>,0
aRememberComman:			; DATA XREF: .data:00564FACo
		unicode	0, <Remember commands>,0
aFacilitatesDeb:			; DATA XREF: .data:00564FACo
		unicode	0, <Facilitates debugging of self-modifiable code>,0
aRememberMemory:			; DATA XREF: .data:00564FD4o
		unicode	0, <Remember memory>,0
aSaveAccessed_0:			; DATA XREF: .data:00564FD4o
		unicode	0, <Save accessed memory to run trace>,0
aRememberFpuReg:			; DATA XREF: .data:00564FFCo
		unicode	0, <Remember FPU registers>,0
aSaveFpuRegis_0:			; DATA XREF: .data:00564FFCo
		unicode	0, <Save FPU registers to run trace>,0
aSynchronizeCpu:			; DATA XREF: .data:00565024o
		unicode	0, <Synchronize CPU and run trace>,0
aSynchronizeC_0:			; DATA XREF: .data:00565024o
		unicode	0, <Synchronize CPU display and run trace selection>,0
aAnimationDelay:			; DATA XREF: .data:0056504Co
		unicode	0, <Animation delay>,0
a0Ms20Ms50Ms100:			; DATA XREF: .data:00565074o
		unicode	0, <0 ms|20 ms|50 ms|100 ms|200 ms|500 ms|1000 ms>,0
aDurationOfStep:			; DATA XREF: .data:00565074o
		unicode	0, <Duration of step in >
		dw 27h
		unicode	0, <Animate into>
		dw 27h
		unicode	0, < and >
		dw 27h
		unicode	0, <Animate over>
		dw 27h
		unicode	0, < modi>,0
aWarningSomeRun:			; DATA XREF: .data:0056509Co
		unicode	0, <WARNING: some run trace options will take effect only aft>
		unicode	0, <er clearing the trace buffer.>,0
aHitTrace:				; DATA XREF: .data:0056513Co
					; .data:00565164o
		dw 9
		unicode	0, <Hit trace>,0
aWhenStartingHi:			; DATA XREF: .data:005651B4o
		unicode	0, <When starting hit test:>,0
aSetBreakpoin_1:			; DATA XREF: .data:005651DCo
		unicode	0, <Set breakpoints on known callbacks>,0
aAccordingToThe:			; DATA XREF: .data:005651DCo
		unicode	0, <According to the system DLL entering mode>,0
aWhenIndirectOr:			; DATA XREF: .data:00565204o
		unicode	0, <When indirect or table-based jump or call is hit:>,0
aCheckDestinati:			; DATA XREF: .data:0056522Co
		unicode	0, <Check destination each time>,0
aKeepTraceBreak:			; DATA XREF: .data:0056522Co
		unicode	0, <Keep trace breakpoint set \{slow but reliable method\}>,0
aUseAnalysisDat:			; DATA XREF: .data:00565254o
		unicode	0, <Use analysis data to guess destinations>,0
aUseDestination:			; DATA XREF: .data:00565254o
		unicode	0, <Use destinations found by Analyzer \{fast but may be unrel>
		unicode	0, <iable\}>,0
aWhenNextDest_0:			; DATA XREF: .data:0056527Co
		unicode	0, <When next destination is analysed as data:>,0
aContinueHitTra:			; DATA XREF: .data:005652A4o
					; .data:0056531Co
		unicode	0, <Continue hit trace>,0
aIgnoreAnalysis:			; DATA XREF: .data:005652A4o
		unicode	0, <Ignore analysis and continue hit trace in standard way>,0
aPauseHitTrace:				; DATA XREF: .data:005652CCo
					; .data:00565344o
		unicode	0, <Pause hit trace>,0
aPauseHitTraceI:			; DATA XREF: .data:005652CCo
		unicode	0, <Pause hit trace if next destination is data>,0
aWhenNextDestin:			; DATA XREF: .data:005652F4o
		unicode	0, <When next destination is outside the code section:>,0
aContinueHitT_0:			; DATA XREF: .data:0056531Co
		unicode	0, <Continue hit trace outside the code in a standard way>,0
aPauseHitTrac_0:			; DATA XREF: .data:00565344o
		unicode	0, <Pause hit trace if command is outside the code section>,0
aTraceCodeComma:			; DATA XREF: .data:0056536Co
		unicode	0, <Trace code command by command>,0
aRunTraceComman:			; DATA XREF: .data:0056536Co
		unicode	0, <Run trace commands outside the code section>,0
aKeepHitTrace_0:			; DATA XREF: .data:00565394o
		unicode	0, <Keep hit trace between sessions>,0
aDangerousIfCod:			; DATA XREF: .data:00565394o
		unicode	0, <Dangerous if code is self-modifiable>,0
aWarningKeeping:			; DATA XREF: .data:005653BCo
		unicode	0, <WARNING: keeping hit trace between sessions may lead to c>
		unicode	0, <rash if debugged application is self-modifiable.>,0
aSfx_0:					; DATA XREF: .data:0056545Co
		dw 9
		unicode	0, <SFX>,0
aSelfExtractabl:			; DATA XREF: .data:00565484o
		unicode	0, <Self-extractable modules>,0
aUnpackSfxModul:			; DATA XREF: .data:005654D4o
		unicode	0, <Unpack SFX modules automatically>,0
aWhenModuleIsRe:			; DATA XREF: .data:005654D4o
		unicode	0, <When module is recognized as SFX, unpack it automatically>
aUseHitTraceFas:			; DATA XREF: .data:005654FCo
		unicode	0, <Use hit trace \{fast!\}>,0
aMuchFasterButC:			; DATA XREF: .data:005654FCo
		unicode	0, <Much faster but can be easily fooled>,0
aUseRunTraceRel:			; DATA XREF: .data:00565524o
		unicode	0, <Use run trace \{reliable\}>,0
aSlowButMoreRel:			; DATA XREF: .data:00565524o
		unicode	0, <Slow but more reliable than hit trace>,0
aUseRealEntryFr:			; DATA XREF: .data:0056554Co
		unicode	0, <Use real entry from previous run>,0
aAccelerateSfxE:			; DATA XREF: .data:0056554Co
		unicode	0, <Accelerate SFX extraction if real entry point is already >
		unicode	0, <known>,0
aPassExceptions:			; DATA XREF: .data:00565574o
		unicode	0, <Pass exceptions to SFX extractor>,0
aIgnorePassToEx:			; DATA XREF: .data:00565574o
		unicode	0, <Ignore \{pass to extractor\} all exceptions during extracti>
		unicode	0, <on>,0
aJustInTime:				; DATA XREF: .data:00565614o
		dw 9
		unicode	0, <Just-in-time>,0
aJustInTimeDebu:			; DATA XREF: .data:0056563Co
		unicode	0, <Just-in-time debugging>,0
aCurrentJustInT:			; DATA XREF: .data:0056568Co
		unicode	0, <Current just-in-time debugger:>,0
aNameOfCurrentJ:			; DATA XREF: .data:005656B4o
		unicode	0, <Name of current just-in-time debugger>,0
aSetOllydbg:				; DATA XREF: .data:005656DCo
		unicode	0, <Set OllyDbg>,0
aPressToSetOlly:			; DATA XREF: .data:005656DCo
		unicode	0, <Press to set OllyDbg as active just-in-time debugger>,0
aPreviousJustIn:			; DATA XREF: .data:00565704o
		unicode	0, <Previous just-in-time debugger:>,0
aNameOfPrevious:			; DATA XREF: .data:0056572Co
		unicode	0, <Name of previous just-in-time debugger>,0
aRestore:				; DATA XREF: .data:00565754o
		unicode	0, <Restore>,0
aPressToRestore:			; DATA XREF: .data:00565754o
		unicode	0, <Press to restore previous just-in-time debugger>,0
aConfirmBeforeA:			; DATA XREF: .data:0056577Co
		unicode	0, <Confirm before attaching>,0
aWhetherOsShoul:			; DATA XREF: .data:0056577Co
		unicode	0, <Whether OS should ask before calling JIT debugger>,0
aAnalysis_0:				; DATA XREF: .data:0056581Co
		unicode	0, <Analysis>,0
aAnalysisOption:			; DATA XREF: .data:00565844o
		unicode	0, <Analysis options>,0
aRecognitionOfP:			; DATA XREF: .data:00565894o
		unicode	0, <Recognition of procedures:>,0
aStrict_0:				; DATA XREF: .data:005658BCo
		unicode	0, <Strict>,0
aAllowOnlySureP:			; DATA XREF: .data:005658BCo
		unicode	0, <Allow only sure procedures to be recognized as such>,0
aFuzzy_0:				; DATA XREF: .data:005658E4o
		unicode	0, <Fuzzy>,0
aRecognizeAnyLi:			; DATA XREF: .data:005658E4o
		unicode	0, <Recognize any linked piece of code as procedure>,0
aAutomaticalMod:			; DATA XREF: .data:0056590Co
		unicode	0, <Automatical module analysis:>,0
aOff:					; DATA XREF: .data:00565934o
		unicode	0, <Off>,0
aNoAutomaticalA:			; DATA XREF: .data:00565934o
		unicode	0, <No automatical analysis>,0
aMainModule:				; DATA XREF: .data:0056595Co
		unicode	0, <Main module>,0
aOnlyMainModule:			; DATA XREF: .data:0056595Co
		unicode	0, <Only main module is analysed automatically>,0
aNonSystemModul:			; DATA XREF: .data:00565984o
		unicode	0, <Non-system modules>,0
aAllModulesOuts:			; DATA XREF: .data:00565984o
		unicode	0, <All modules outside the system directory will be analysed>
aAllModules:				; DATA XREF: .data:005659ACo
		unicode	0, <All modules>,0
aAnalyseAllModu:			; DATA XREF: .data:005659ACo
		unicode	0, <Analyse all modules as they are loaded>,0
aShowPredictedR:			; DATA XREF: .data:005659D4o
		unicode	0, <Show predicted register values>,0
aShowContentsOf:			; DATA XREF: .data:005659D4o
		unicode	0, <Show contents of registers predicted by Analyser>,0
aDonTPredictReg:			; DATA XREF: .data:005659FCo
		unicode	0, <Don>
		dw 27h
		unicode	0, <t predict register contents for system DLLs>,0
aSparesMemoryBu:			; DATA XREF: .data:005659FCo
		unicode	0, <Spares memory, but no ARGs, LOCALs and unreliable stack w>
		unicode	0, <alk>,0
aShowRecognized:			; DATA XREF: .data:00565A24o
		unicode	0, <Show recognized ARGs and LOCALs in disassembly>,0
aDisplayArgumen:			; DATA XREF: .data:00565A24o
		unicode	0, <Display arguments and local variables in disassembled cod>
		unicode	0, <e>,0
aShowRecogniz_0:			; DATA XREF: .data:00565A4Co
		unicode	0, <Show recognized ARGs and LOCALs in comments>,0
aDisplayArgum_1:			; DATA XREF: .data:00565A4Co
		unicode	0, <Display arguments and local variables in comments>,0
aUseSymbolicN_0:			; DATA XREF: .data:00565A74o
		unicode	0, <Use symbolic names for ARGs, if known>,0
aLikeArg_hcurri:			; DATA XREF: .data:00565A74o
		unicode	0, <Like ARG.hCurrInstance instead of ARG.1 in WinMain>,0
aAdvanced:				; DATA XREF: .data:00565B14o
		dw 9
		unicode	0, <Advanced>,0
aAdvancedAnalys:			; DATA XREF: .data:00565B3Co
		unicode	0, <Advanced analysis>,0
aDecodeTrickyCo:			; DATA XREF: .data:00565B8Co
		unicode	0, <Decode tricky code sequences>,0
aDecodeTrickyMo:			; DATA XREF: .data:00565B8Co
		unicode	0, <Decode tricky \{mostly hand-written\} code sequences>,0
aDecodeCascaded:			; DATA XREF: .data:00565BB4o
		unicode	0, <Decode cascaded IFs as switches>,0
aTreatIfI1___El:			; DATA XREF: .data:00565BB4o
		unicode	0, <Treat >
		dw 27h
		unicode	0, <IF i==1 ... ELSEIF i==2 ... ELSE ...>
		dw 27h
		unicode	0, < as a switch>,0
aAllowArguments:			; DATA XREF: .data:00565BDCo
		unicode	0, <Allow arguments renaming for known functions>,0
aRenameArgument:			; DATA XREF: .data:00565BDCo
		unicode	0, <Rename arguments which meaning depends on other argument>,0
aGuessNumberO_2:			; DATA XREF: .data:00565C04o
		unicode	0, <Guess number of arguments of unknown functions>,0
aGuessNumberOfA:			; DATA XREF: .data:00565C04o
		unicode	0, <Guess number of argument directly from machine code>,0
aExtractArgumen:			; DATA XREF: .data:00565C2Co
		unicode	0, <Extract arguments from mangled names>,0
aUseInformation:			; DATA XREF: .data:00565C2Co
		unicode	0, <Use information hidden in mangled names to guess argument>
		unicode	0, <s>,0
aGuessMeaning_1:			; DATA XREF: .data:00565C54o
		unicode	0, <Guess meaning of unknown arguments>,0
aTryToRecognize:			; DATA XREF: .data:00565C54o
		unicode	0, <Try to recognize format strings, windows functions etc.>,0
aShowArgumentsE:			; DATA XREF: .data:00565C7Co
		unicode	0, <Show arguments even if their number varies>,0
aI_e_NumberOfRe:			; DATA XREF: .data:00565C7Co
		unicode	0, <I.e. number of recognized arguments in different calls is>
		unicode	0, < different>,0
aDetectStandard:			; DATA XREF: .data:00565CA4o
		unicode	0, <Detect standard library functions \{*.udl\}>,0
aPrepare_udlFil:			; DATA XREF: .data:00565CA4o
		unicode	0, <Prepare .udl files via main menu, Debug ->
		dw 3Eh
		unicode	0, < Create function library>,0
aCommentConstan:			; DATA XREF: .data:00565CCCo
		unicode	0, <Comment constant operands of known functions:>,0
aAllKnown:				; DATA XREF: .data:00565CF4o
		unicode	0, <All known>,0
aCommentAllKnow:			; DATA XREF: .data:00565CF4o
		unicode	0, <Comment all known constant operands>,0
aOnlyThoseMarke:			; DATA XREF: .data:00565D1Co
		unicode	0, <Only those marked as important>,0
aCommentOnlyOpe:			; DATA XREF: .data:00565D1Co
		unicode	0, <Comment only operands marked as important>,0
aUnknownFunctio:			; DATA XREF: .data:00565D44o
		unicode	0, <Unknown functions preserve registers:>,0
aNone_0:				; DATA XREF: .data:00565D6Co
		unicode	0, <None>,0
aUnknownFunct_2:			; DATA XREF: .data:00565D6Co
		unicode	0, <Unknown functions may modify any register>,0
aEbp_2:					; DATA XREF: .data:00565D94o
		unicode	0, <EBP>,0
aUnknownFunct_1:			; DATA XREF: .data:00565D94o
		unicode	0, <Unknown functions preserve EBP \{frame pointer\}>,0
aEbxEbpEsiAndEd:			; DATA XREF: .data:00565DBCo
		unicode	0, <EBX, EBP, ESI and EDI>,0
aUnknownFunct_0:			; DATA XREF: .data:00565DBCo
		unicode	0, <Unknown functions follow stdcall convention>,0
aIgnoreBracesIn:			; DATA XREF: .data:00565DE4o
		unicode	0, <Ignore braces in .udd path>,0
aIgnorePartsOfP:			; DATA XREF: .data:00565DE4o
		unicode	0, <Ignore parts of path enclosed into braces when opening .u>
		unicode	0, <dd file>,0
aInvalidComma_2:			; DATA XREF: .data:00565E84o
					; .data:00565EACo
		dw 9
		unicode	0, <Invalid commands>,0
aAcceptFollowin:			; DATA XREF: .data:00565EFCo
		unicode	0, <Accept following potentially invalid commands:>,0
aFarCallsAndRet:			; DATA XREF: .data:00565F24o
		unicode	0, <Far calls and returns>,0
aFarCallsAndR_0:			; DATA XREF: .data:00565F24o
		unicode	0, <Far calls and returns are unnecessary in flat Win32 model>
aModificationsO:			; DATA XREF: .data:00565F4Co
		unicode	0, <Modifications of segment registers>,0
aSegmentRegis_0:			; DATA XREF: .data:00565F4Co
		unicode	0, <Segment registers are fixed in flat Win32 model>,0
aPrivilegedComm:			; DATA XREF: .data:00565F74o
		unicode	0, <Privileged commands>,0
aPrivilegedCo_0:			; DATA XREF: .data:00565F74o
		unicode	0, <Privileged commands are not allowed in user mode>,0
aIOCommands:				; DATA XREF: .data:00565F9Co
		unicode	0, <I/O commands>,0
aDirectAccessTo:			; DATA XREF: .data:00565F9Co
		unicode	0, <Direct access to hardware under Windows is deprecated>,0
aCommandsEquiva:			; DATA XREF: .data:00565FC4o
		unicode	0, <Commands equivalent to NOP>,0
aOptimizingComp:			; DATA XREF: .data:00565FC4o
		unicode	0, <Optimizing compilers do not emit executable NOPs>,0
aShiftsOutOfRan:			; DATA XREF: .data:00565FECo
		unicode	0, <Shifts out of range 1..3>
; BYTE a1_0
a1_0:					; DATA XREF: .text:004CDE9Ao
		unicode	0, <1>,0
aShiftCountOutO:			; DATA XREF: .data:00565FECo
		unicode	0, <Shift count out of the main range is allowed but unusual>,0
aSuperfluousPre:			; DATA XREF: .data:00566014o
		unicode	0, <Superfluous prefixes>,0
aCompilersNever:			; DATA XREF: .data:00566014o
		unicode	0, <Compilers never emit unnecessary prefixes>,0
aLockPrefixes:				; DATA XREF: .data:0056603Co
		unicode	0, <LOCK prefixes>,0
aLockIsUsedMain:			; DATA XREF: .data:0056603Co
		unicode	0, <LOCK is used mainly in system routines>,0
aDefaultSelecto:			; DATA XREF: .data:00566064o
		unicode	0, <Default selectors>,0
aExplicitlyUsed:			; DATA XREF: .data:00566064o
		unicode	0, <Explicitly used default selectors slow down the execution>
aUnalignedSta_0:			; DATA XREF: .data:0056608Co
		unicode	0, <Unaligned stack operations>,0
aWin32ProgramsU:			; DATA XREF: .data:0056608Co
		unicode	0, <Win32 programs usually keep stack doubleword-aligned>,0
aSuspiciousEspM:			; DATA XREF: .data:005660B4o
		unicode	0, <Suspicious ESP modifications>,0
aInvalidEspMayL:			; DATA XREF: .data:005660B4o
		unicode	0, <Invalid ESP may lead to crash>,0
aUndocumentedCo:			; DATA XREF: .data:005660DCo
		unicode	0, <Undocumented commands>,0
aSaneCompilersN:			; DATA XREF: .data:005660DCo
		unicode	0, <Sane compilers never use undocumented commands>,0
aAccessToNone_0:			; DATA XREF: .data:00566104o
		unicode	0, <Access to nonexisting memory>,0
aAccessToNonexi:			; DATA XREF: .data:00566104o
		unicode	0, <Access to nonexisting memory will throw exception>,0
aInterruptComma:			; DATA XREF: .data:0056612Co
		unicode	0, <Interrupt commands>,0
aIntCommandsInU:			; DATA XREF: .data:0056612Co
		unicode	0, <INT commands in user mode are seldom>,0
aSearch_3:				; DATA XREF: .data:005661CCo
		unicode	0, <Search>,0
aSearchOptions:				; DATA XREF: .data:005661F4o
		unicode	0, <Search options>,0
aUsePredictions:			; DATA XREF: .data:00566244o
		unicode	0, <Use predictions in search>,0
aUsePredictedCo:			; DATA XREF: .data:00566244o
		unicode	0, <Use predicted contents of registers in search operations>,0
aIncludeIndirec:			; DATA XREF: .data:0056626Co
		unicode	0, <Include indirect call/jump destinations in references>,0
aForExampleCall:			; DATA XREF: .data:0056626Co
		unicode	0, <For example, call to jump to import will be listed as a r>
		unicode	0, <eference to the import>,0
aAddOriginToThe:			; DATA XREF: .data:00566294o
		unicode	0, <Add origin to the list of found commands>,0
aAddItEvenIfCom:			; DATA XREF: .data:00566294o
		unicode	0, <Add it, even if command >
		unicode 0, <doesn\-t meet the search criterium>,0
aPreferableLang:			; DATA XREF: .data:005662BCo
		unicode	0, <Preferable language of resource data:>,0
aIfResourceExis:			; DATA XREF: .data:005662E4o
		unicode	0, <If resource exists in several languages, show this langua>
		unicode	0, <ge first>,0
aCpu_1:					; DATA XREF: .data:00566384o
		unicode	0, <CPU>,0
aCpuWindowOptio:			; DATA XREF: .data:005663ACo
		unicode	0, <CPU window options>,0
aGrayInactivePa:			; DATA XREF: .data:005663FCo
		unicode	0, <Gray inactive panes>,0
aGrayTextInCpuP:			; DATA XREF: .data:005663FCo
		unicode	0, <Gray text in CPU panes without focus>,0
aGrayRegister_0:			; DATA XREF: .data:00566424o
		unicode	0, <Gray register names>,0
aGrayNamesOfReg:			; DATA XREF: .data:00566424o
		unicode	0, <Gray names of registers in the Registers pane>,0
aShowDirectionO:			; DATA XREF: .data:0056644Co
		unicode	0, <Show direction of jumps>,0
aDrawSmallArrow:			; DATA XREF: .data:0056644Co
		unicode	0, <Draw small arrows indicating direction of jump>,0
aShowJumpPath_0:			; DATA XREF: .data:00566474o
		unicode	0, <Show jump path>,0
aDrawArrowsShow:			; DATA XREF: .data:00566474o
		unicode	0, <Draw arrows showing jumps to or from selected location>,0
aShowGrayedPa_0:			; DATA XREF: .data:0056649Co
		unicode	0, <Show grayed path if jump is not taken>,0
aDrawArrowShowi:			; DATA XREF: .data:0056649Co
		unicode	0, <Draw arrow showing jump from selected location in gray if>
		unicode	0, < jump is not taken>,0
aEnableSseReg_0:			; DATA XREF: .data:005664C4o
		unicode	0, <Enable SSE registers>,0
aUseAndDisplayS:			; DATA XREF: .data:005664C4o
		unicode	0, <Use and display SSE registers \{if supported by CPU and OS\}>,0
aDecodeContents:			; DATA XREF: .data:005664ECo
		unicode	0, <Decode contents of registers:>,0
aOnlyForCurrent:			; DATA XREF: .data:00566514o
		unicode	0, <Only for current EIP>,0
aRegistersAreVo:			; DATA XREF: .data:00566514o
		unicode	0, <Registers are volatile, use them only to decode currently>
		unicode	0, < executed command \{pointed by EIP\}>,0
aForEipAndSele:				; DATA XREF: .data:0056653Co
		unicode	0, <For EIP and sele>
aCtedCommand:
		unicode	0, <cted command>,0
aAlthoughRegist:			; DATA XREF: .data:0056653Co
		unicode	0, <Although registers are volatile, use them as a hint to de>
		unicode	0, <code operands of the selected command>,0
aForAnyCommand:				; DATA XREF: .data:00566564o
		unicode	0, <For any command>,0
aUseCurrentRegi:			; DATA XREF: .data:00566564o
		unicode	0, <Use current registers to decode all commands, not only po>
		unicode	0, <inted by EIP. Note that this may be highly misleading\:>,0
aHideCurrentR_0:			; DATA XREF: .data:0056658Co
		unicode	0, <Hide \-current registers\- warning>,0
aIAmExperienced:			; DATA XREF: .data:0056658Co
		unicode	0, <I am experienced, don\-t annoy me>,0
aAutomaticFpuMm:			; DATA XREF: .data:005665B4o
		unicode	0, <Automatic FPU/MMX/3DNow! registers:>,0
aNever_0:				; DATA XREF: .data:005665DCo
		unicode	0, <Never>,0
aLetUserDecideH:			; DATA XREF: .data:005665DCo
		unicode	0, <Let user decide how to decode FPU registers>,0
aOnEvents:				; DATA XREF: .data:00566604o
		unicode	0, <On events>,0
aSetModeAccordi:			; DATA XREF: .data:00566604o
		unicode	0, <Set mode according to command at EIP when execution pauses>,0
aAlways_0:				; DATA XREF: .data:0056662Co
		unicode	0, <Always>,0
aSetModeDependi:			; DATA XREF: .data:0056662Co
		unicode	0, <Set mode depending on the command selected in Disassembler>,0
asc_57045E:			; DATA XREF: .data:005666CCo
aMoreCpu:
		unicode	0, <\tMore CPU>,0
aMoreCpuWindowO:			; DATA XREF: .data:005666F4o
		unicode	0, <More CPU window options>,0
aWhenLetterKe_1:			; DATA XREF: .data:00566744o
		unicode	0, <When letter key is pressed in Disassembler:>,0
aAddLabel:				; DATA XREF: .data:0056676Co
		unicode	0, <Add label>,0
aWhenLetterKe_2:			; DATA XREF: .data:0056676Co
		unicode	0, <When letter key is pressed, add user-defined label>,0
aAssembleComman:			; DATA XREF: .data:00566794o
		unicode	0, <Assemble command>,0
aWhenLetterKe_3:			; DATA XREF: .data:00566794o
		unicode	0, <When letter key is pressed, assemble command>,0
aAddComment:				; DATA XREF: .data:005667BCo
		unicode	0, <Add comment>,0
aWhenLetterKeyI:			; DATA XREF: .data:005667BCo
		unicode	0, <When letter key is pressed, add user-defined comment>,0
aRepeatLastActi:			; DATA XREF: .data:005667E4o
		unicode	0, <Repeat last action>,0
aWhenLetterKe_0:			; DATA XREF: .data:005667E4o
		unicode	0, <When letter key is pressed, repeat the most recent action>
aDirectories:				; DATA XREF: .data:00566884o
					; .data:005668ACo
		unicode	0, <Directories>,0
aDirectoryFor_u:			; DATA XREF: .data:005668FCo
		unicode	0, <Directory for .udd files:>,0
aDirectoryWhere:			; DATA XREF: .data:00566924o
		unicode	0, <Directory where .udd files are kept>,0
aSelectDirector:			; DATA XREF: .data:0056694Co
		unicode	0, <Select directory where user data files are kept>,0
aDirectoryForSt:			; DATA XREF: .data:00566974o
		unicode	0, <Directory for standard function libraries \{.udl\}:>,0
aDirectoryWhe_0:			; DATA XREF: .data:0056699Co
		unicode	0, <Directory where .udl files are kept>,0
aSelectDirect_0:			; DATA XREF: .data:005669C4o
		unicode	0, <Select directory where standard function libraries are ke>
		unicode	0, <pt>,0
aPluginDirector:			; DATA XREF: .data:005669ECo
		unicode	0, <Plugin directory:>,0
aDirectoryWhe_1:			; DATA XREF: .data:00566A14o
		unicode	0, <Directory where plugins are kept>,0
aSelectDirect_2:			; DATA XREF: .data:00566A3Co
		unicode	0, <Select directory where plugins files are kept>,0
aLocationOfApiH:			; DATA XREF: .data:00566A64o
		unicode	0, <Location of API help file \{.hlp or .chm\}:>,0
aLocationOfFile:			; DATA XREF: .data:00566A8Co
		unicode	0, <Location of file with help on Windows API \{either in .hlp>
		unicode	0, < or .chm format\}>,0
aWin32_hlp:				; DATA XREF: .data:00566AB4o
		unicode	0, <Win32.hlp>,0
aSelectFileWi_0:			; DATA XREF: .data:00566AB4o
		unicode	0, <Select file with help on Windows API>,0
aErrorsAndWarni:			; DATA XREF: .data:00566B54o
					; .data:00566B7Co
		unicode	0, <Errors and warnings>,0
aWarnIfNotAdmin:			; DATA XREF: .data:00566BCCo
		unicode	0, <Warn if not administrator>,0
aSomeDebuggingO:			; DATA XREF: .data:00566BCCo
		unicode	0, <Some debugging operations require administrator rights>,0
aRestoreAllErro:			; DATA XREF: .data:00566BF4o
		unicode	0, <Restore all errors and warnings>,0
aReEnableAllMes:			; DATA XREF: .data:00566BF4o
		unicode	0, <Re-enable all messages that were hidden on your request>,0
aRestoreAllActi:			; DATA XREF: .data:00566C1Co
		unicode	0, <Restore all actions>,0
aReEnableAllQue:			; DATA XREF: .data:00566C1Co
		unicode	0, <Re-enable all questions that were hidden on your request>,0
aWarningYouCanT:			; DATA XREF: .data:00566C44o
		unicode	0, <WARNING: You can\-t undo errors, warnings and actions.>,0
aAppearance_0:				; DATA XREF: .data:00566CE4o
		unicode	0, <Appearance>,0
aAppearanceOpti:			; DATA XREF: .data:00566D0Co
		unicode	0, <Appearance options>,0
aBringOllydbgTo:			; DATA XREF: .data:00566D5Co
		unicode	0, <Bring OllyDbg to top on pause>,0
aWhenDebuggeePa:			; DATA XREF: .data:00566D5Co
		unicode	0, <When Debuggee pauses, bring OllyDbg window to top>,0
aKeepBetweenSes:			; DATA XREF: .data:00566D84o
		unicode	0, <Keep between sessions:>,0
aPositionAndApp:			; DATA XREF: .data:00566DACo
		unicode	0, <Position and appearance of tables>,0
aRestorePositio:			; DATA XREF: .data:00566DACo
		unicode	0, <Restore position and appearance of table windows>,0
aWidthOfColumns:			; DATA XREF: .data:00566DD4o
		unicode	0, <Width of columns>,0
aRestoreWidth_0:			; DATA XREF: .data:00566DD4o
		unicode	0, <Restore width of columns in table windows>,0
aSortingColumn:				; DATA XREF: .data:00566DFCo
		unicode	0, <Sorting column>,0
aRestoreSorting:			; DATA XREF: .data:00566DFCo
		unicode	0, <Restore sorting column in table windows>,0
aSnowFreeDraw_1:			; DATA XREF: .data:00566E24o
		unicode	0, <Snow-free drawing \{slow on very old systems\}>,0
aActivateIfTabl:			; DATA XREF: .data:00566E24o
		unicode	0, <Activate if tables are snowy when scrolling or redrawing>,0
aHighlightBarIn:			; DATA XREF: .data:00566E4Co
		unicode	0, <Highlight bar in sorted column>,0
aHighlightBarBu:			; DATA XREF: .data:00566E4Co
		unicode	0, <Highlight bar button in column used to sort table data>,0
aUnicodeEditFon:			; DATA XREF: .data:00566E74o
		unicode	0, <UNICODE edit font>,0
aFontUsedInUnic:			; DATA XREF: .data:00566E9Co
		unicode	0, <Font used in UNICODE edit controls>,0
aDurationOfFlas:			; DATA XREF: .data:00566EC4o
		unicode	0, <Duration of flash>,0
a0_5S0_75S1S1_2:			; DATA XREF: .data:00566EECo
		unicode	0, <0.5 s|0.75 s|1 s|1.25 s|1.5 s|1.75 s|2 s|2.25 s|2.5 s>,0
aDurationOfFl_0:			; DATA XREF: .data:00566EECo
		unicode	0, <Duration of flash in the status bar of main window>,0
aTest_0:				; DATA XREF: .data:00566F14o
		unicode	0, <Test>,0
aTestDurationOf:			; DATA XREF: .data:00566F14o
		unicode	0, <Test duration of flash warning>,0
aAutoupdateInte:			; DATA XREF: .data:00566F3Co
		unicode	0, <Autoupdate interval>,0
a50Ms100Ms200Ms:			; DATA XREF: .data:00566F64o
		unicode	0, <50 ms|100 ms|200 ms|500 ms|1 s|2 s|5 s|10 s>,0
aRefreshInterva:			; DATA XREF: .data:00566F64o
		unicode	0, <Refresh interval for automatically updated windows>,0
aVisibleLines:				; DATA XREF: .data:00566F8Co
		unicode	0, <Visible lines>,0
a012345:				; DATA XREF: .data:00566FB4o
		unicode	0, <0|1|2|3|4|5>,0
aNumberOfVisibl:			; DATA XREF: .data:00566FB4o
		unicode	0, <Number of visible lines before and after cursor in Disass>
		unicode	0, <embler when scrolling by keyboard>,0
aDefaults:				; DATA XREF: .data:00567054o
		unicode	0, <\tDefaults>,0
aDefaultSetting:			; DATA XREF: .data:0056707Co
		unicode	0, <Default settings>,0
aDefaultFont:				; DATA XREF: .data:005670CCo
		unicode	0, <Default font>,0
aDefaultFontFor:			; DATA XREF: .data:005670F4o
		unicode	0, <Default font for new OllyDbg windows>,0
aDefaultColourS:			; DATA XREF: .data:0056711Co
		unicode	0, <Default colour scheme>,0
aDefaultColou_1:			; DATA XREF: .data:00567144o
		unicode	0, <Default colour scheme for new OllyDbg windows>,0
aHorizontalSc_0:			; DATA XREF: .data:0056716Co
		unicode	0, <Horizontal scroll by default>,0
aShowHorizont_0:			; DATA XREF: .data:0056716Co
		unicode	0, <Show horizontal scroll in new OllyDbg windows>,0
aWarningDefault:			; DATA XREF: .data:00567194o
		unicode	0, <WARNING: Default settings apply only to the newly created>
		unicode	0, < windows, and only if their appearance is not restored fr>
		unicode	0, <om the initialization file.>,0
aStartup:				; DATA XREF: .data:00567234o
		dw 9
		unicode	0, <Startup>,0
aStartupOptions:			; DATA XREF: .data:0056725Co
		unicode	0, <Startup options>,0
aUseSystemCol_1:			; DATA XREF: .data:005672ACo
		unicode	0, <Use system colours>,0
aInfluencesMain:			; DATA XREF: .data:005672ACo
		unicode	0, <Influences main window, toolbar and table bars>,0
aLayoutOfMainWi:			; DATA XREF: .data:005672D4o
		unicode	0, <Layout of main window:>,0
aNonScrollableM:			; DATA XREF: .data:005672FCo
		unicode	0, <Non-scrollable MDI>,0
aDataWindowsAre:			; DATA XREF: .data:005672FCo
		unicode	0, <Data windows are placed inside the fixed main window>,0
aScrollableMdi:				; DATA XREF: .data:00567324o
		unicode	0, <Scrollable MDI>,0
aDataWindowsA_0:			; DATA XREF: .data:00567324o
		unicode	0, <Data windows are placed inside the scrollable main window>
aIndependentWin:			; DATA XREF: .data:0056734Co
		unicode	0, <Independent windows>,0
aDataWindowsA_1:			; DATA XREF: .data:0056734Co
		unicode	0, <Data windows are placed directly on the desktop>,0
aToolbar:				; DATA XREF: .data:00567374o
		unicode	0, <Toolbar:>,0
aHidden_1:				; DATA XREF: .data:0056739Co
		unicode	0, <Hidden>,0
aDoNotShowToolb:			; DATA XREF: .data:0056739Co
		unicode	0, <Do not show toolbar at all>,0
aHorizontal:				; DATA XREF: .data:005673C4o
		unicode	0, <Horizontal>,0
aShowToolbarOnT:			; DATA XREF: .data:005673C4o
		unicode	0, <Show toolbar on the top of the main window>,0
aVertical:				; DATA XREF: .data:005673ECo
		unicode	0, <Vertical>,0
aShowToolbarO_0:			; DATA XREF: .data:005673ECo
		unicode	0, <Show toolbar on the left side of the main window>,0
aDisplayRunStat:			; DATA XREF: .data:00567414o
		unicode	0, <Display run status of the application in the:>,0
aInfoBar:				; DATA XREF: .data:0056743Co
		unicode	0, <Info bar>,0
aDisplayStatusI:			; DATA XREF: .data:0056743Co
		unicode	0, <Display status in the status bar \{bottom right corner\}>,0
aHorizontalTool:			; DATA XREF: .data:00567464o
		unicode	0, <Horizontal toolbar>,0
aDisplayStatu_0:			; DATA XREF: .data:00567464o
		unicode	0, <Display status in the toolbar \{top left corner\}>,0
aSizeOfLogBuffe:			; DATA XREF: .data:0056748Co
		unicode	0, <Size of log buffer>,0
a64K128K256K512:			; DATA XREF: .data:005674B4o
		unicode	0, <64 k|128 k|256 k|512 k|1 M|2 M|4 M|8 M|16 M>,0
aSizeOfMessageB:			; DATA XREF: .data:005674B4o
		unicode	0, <Size of message buffer in the Log window>,0
aScanRegistry_0:			; DATA XREF: .data:005674DCo
		unicode	0, <Scan registry for GUIDs>,0
aAddsRegistered:			; DATA XREF: .data:005674DCo
		unicode	0, <Adds registered GUIDs to the list of known GUIDs. If acti>
		unicode	0, <vated, makes startup significantly slower\:>,0
aWarningModific:			; DATA XREF: .data:00567504o
		unicode	0, <WARNING: modifications made on this page will take effect>
		unicode	0, < only after restart.>,0
aFonts:					; DATA XREF: .data:005675A4o
					; .data:005675CCo
		dw 9
		unicode	0, <Fonts>,0
aFont_2:				; DATA XREF: .data:0056761Co
		unicode	0, <Font:>,0
aFontSelectedFo:			; DATA XREF: .data:00567644o
		unicode	0, <Font selected for edit>,0
aRename:				; DATA XREF: .data:0056766Co
					; .data:0056793Co ...
		unicode	0, <Rename>,0
aPressToRenameA:			; DATA XREF: .data:0056766Co
		unicode	0, <Press to rename actually selected font>,0
aChange:				; DATA XREF: .data:00567694o
		unicode	0, <Change>,0
aPressToEditFon:			; DATA XREF: .data:00567694o
		unicode	0, <Press to edit font properties>,0
aAfontinfo:				; DATA XREF: .data:005676BCo
		unicode	0, <AFONTINFO>,0
aInformationAbo:			; DATA XREF: .data:005676BCo
		unicode	0, <Information about currently selected font>,0
aHeightAdjustTo:			; DATA XREF: .data:005676E4o
		unicode	0, <Height adjust: top>,0
a5Pixels4Pixels:			; DATA XREF: .data:0056770Co
					; .data:0056775Co
		unicode	0, <-5 pixels|-4 pixels|-3 pixels|-2 pixels|-1 pixel|None|+1 >
		unicode	0, <pixel|+2 pixels|+3 pixels|+4 pixels|+5 pixels>,0
aAdjustsSpaceOn:			; DATA XREF: .data:0056770Co
		unicode	0, <Adjusts space on the top of the lines in the table>,0
aBottom:				; DATA XREF: .data:00567734o
		unicode	0, <, bottom>,0
aAdjustsSpace_0:			; DATA XREF: .data:0056775Co
		unicode	0, <Adjusts space on the bottom of the lines in the table>,0
aExample:				; DATA XREF: .data:00567784o
					; .data:005679B4o
		unicode	0, <Example:>,0
aAcolorsample:				; DATA XREF: .data:005677ACo
					; .data:005679DCo
		unicode	0, <ACOLORSAMPLE>,0
aSampleColourin:			; DATA XREF: .data:005677ACo
					; .data:005679DCo
		unicode	0, <Sample colouring>,0
aRestoreDefau_3:			; DATA XREF: .data:005677D4o
					; .data:00567A2Co ...
		unicode	0, <Restore defaults>,0
aRestoreDefau_0:			; DATA XREF: .data:005677D4o
		unicode	0, <Restore default font>,0
aColours:				; DATA XREF: .data:00567874o
					; .data:0056789Co
		dw 9
		unicode	0, <Colours>,0
aScheme:				; DATA XREF: .data:005678ECo
					; .data:00567B44o
		unicode	0, <Scheme:>,0
aColourSchemeSe:			; DATA XREF: .data:00567914o
		unicode	0, <Colour scheme selected for edit>,0
aPressToRenam_1:			; DATA XREF: .data:0056793Co
		unicode	0, <Press to rename actually selected colour scheme>,0
aElementsOfSele:			; DATA XREF: .data:00567964o
					; .data:00567BBCo
		unicode	0, <Elements of selected scheme:>,0
aNormalTextHigh:			; DATA XREF: .data:0056798Co
		unicode	0, <Normal text|Highlighted text|Grayed text|Current EIP|Unco>
		unicode	0, <nditional breakpoint|Conditional breakpoint|Disabled brea>
		unicode	0, <kpoint|Breakpoint at EIP|Auxiliary elements|Underline \A s>
		unicode	0, <elect>,0
aSelectElementO:			; DATA XREF: .data:0056798Co
		unicode	0, <Select element of colour scheme to edit>,0
aLeftClickSelec:			; DATA XREF: .data:00567A04o
		unicode	0, <Left click selects text colour, right - background. To ed>
		unicode	0, <it custom colour, doubleclick it.>,0
aRestoreColours:			; DATA XREF: .data:00567A2Co
		unicode	0, <Restore colours default for selected scheme>,0
aCodeHighligh_0:			; DATA XREF: .data:00567ACCo
					; .data:00567AF4o
		dw 9
		unicode	0, <Code highlighting>,0
aCodeHighligh_2:			; DATA XREF: .data:00567B6Co
		unicode	0, <Code highlighting scheme selected for edit>,0
aPressToRenam_0:			; DATA XREF: .data:00567B94o
		unicode	0, <Press to rename actually selected highlighting scheme>,0
aPlainCommandsU:			; DATA XREF: .data:00567BE4o
		unicode	0, <Plain commands|Unconditional jumps|Conditional jumps|PUSH>
		unicode	0, </POP commands|Calls|Returns|FPU/MMX/SSE commands|Bad/syst>
		unicode	0, <em/privileged commands|Fillings|Modified commands|General>
		unicode	0, < registers|FPU/MMX/SSE registers|Selectors and system reg>
		unicode	0, <isters|Stack memory|Other memory|Constants pointing to me>
		unicode	0, <mory|Other constants>,0
aSelectElemen_0:			; DATA XREF: .data:00567BE4o
		unicode	0, <Select element of highlighting scheme to edit>,0
aHighlightOp_17:			; DATA XREF: .data:00567C0Co
		unicode	0, <Highlight operands>,0
aCheckToAllowSe:			; DATA XREF: .data:00567C0Co
		unicode	0, <Check to allow separate highlighting of operands>,0
aHighlightModif:			; DATA XREF: .data:00567C34o
		unicode	0, <Highlight modified>,0
aCheckToAllowHi:			; DATA XREF: .data:00567C34o
		unicode	0, <Check to allow highlighting of modified commands>,0
aAhilitepick:				; DATA XREF: .data:00567C5Co
		unicode	0, <AHILITEPICK>,0
aLeftClickSel_0:			; DATA XREF: .data:00567C5Co
		unicode	0, <Left click selects text colour, right - background, last >
		unicode	0, <custom colour is transparent. To edit custom colour, doub>
		unicode	0, <leclick it.>,0
aRestoreDefau_1:			; DATA XREF: .data:00567C84o
		unicode	0, <Restore default colours for selected highlighting scheme>,0
aTextToSpeech:				; DATA XREF: .data:00567D24o
					; .data:00567D4Co
		dw 9
		unicode	0, <Text-to-speech>,0
aActivateTextTo:			; DATA XREF: .data:00567D9Co
		unicode	0, <Activate text-to-speech>,0
aRequiresSapi5_:			; DATA XREF: .data:00567D9Co
		unicode	0, <Requires SAPI 5.0 or higher>,0
aTranslateComma:			; DATA XREF: .data:00567DC4o
		unicode	0, <Translate commands and registers>,0
aForExampleJump:			; DATA XREF: .data:00567DC4o
		unicode	0, <For example, >
		dw 27h
		unicode	0, <jump if not equal>
		dw 27h
		unicode	0, < instead of JNE>,0
aSkipLeadingZ_0:			; DATA XREF: .data:00567DECo
		unicode	0, <Skip leading zeros in hex numbers>,0
aMakesReadingAB:			; DATA XREF: .data:00567DECo
		unicode	0, <Makes reading a bit faster>,0
aWarningTextToS:			; DATA XREF: .data:00567E14o
		unicode	0, <WARNING: Text-to-speech expects that Microsoft Speech API>
		unicode	0, < 5.0 or higher is installed.>,0
aMiscellaneous:				; DATA XREF: .data:00567EB4o
		unicode	0, <Miscellaneous>,0
aMiscellaneousO:			; DATA XREF: .data:00567EDCo
		unicode	0, <Miscellaneous options>,0
aReplaceGraphic:			; DATA XREF: .data:00567F2Co
		unicode	0, <Replace graphical symbols in text/clipboard by:>,0
aSpaces:				; DATA XREF: .data:00567F54o
		unicode	0, <Spaces>,0
aReplaceGraph_2:			; DATA XREF: .data:00567F54o
		unicode	0, <Replace graphical symbols with spaces>,0
aSimilarlyLooki:			; DATA XREF: .data:00567F7Co
		unicode	0, <Similarly looking ASCII characters>,0
aReplaceGraph_0:			; DATA XREF: .data:00567F7Co
		unicode	0, <Replace graphical symbols with ASCII characters>,0
aDosBoxCharacte:			; DATA XREF: .data:00567FA4o
		unicode	0, <DOS box characters>,0
aReplaceGraph_3:			; DATA XREF: .data:00567FA4o
		unicode	0, <Replace graphical symbols with DOS box characters>,0
aUnicodeBoxChar:			; DATA XREF: .data:00567FCCo
		unicode	0, <UNICODE box characters>,0
aReplaceGraph_1:			; DATA XREF: .data:00567FCCo
		unicode	0, <Replace graphical symbols with UNICODE box characters>,0
aApplyOptions:				; DATA XREF: .data:00567FF4o
		unicode	0, <Apply options>,0
aApplyOptionsTo:			; DATA XREF: .data:stru_568094o
		unicode	0, <Apply options to plugins>,0
aPluginOptions:				; DATA XREF: .data:005680E4o
		unicode	0, <Plugin options>,0
; wchar_t aException_6
aException_6:				; DATA XREF: .text:004CDAF7o
		unicode	0, <EXCEPTION>,0
; wchar_t aS_20
aS_20:					; DATA XREF: .text:004CDB19o
		unicode	0, < \{!%s\}>,0
; const	WCHAR aSoftwareMicros
aSoftwareMicros:			; DATA XREF: .text:004CDCA3o
		unicode	0, <SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\AeDebug>,0
; const	WCHAR aDebugger
aDebugger:				; DATA XREF: .text:004CDCD4o
		unicode	0, <Debugger>,0
; const	WCHAR aAuto
aAuto:					; DATA XREF: .text:004CDD09o
		unicode	0, <Auto>,0
; wchar_t aSS_4
aSS_4:					; DATA XREF: .text:004CDD69o
		unicode	0, <\=!%s\= !%s>,0
aAedebugLdLd:				; DATA XREF: .text:loc_4CDD5Fo
		unicode	0, <-AEDEBUG !%ld !%ld>,0
aThisCopyOfOlly:			; DATA XREF: .text:004CDD97o
		dw 3Ch
		unicode	0, <This copy of OllyDbg>
		dw 3Eh,	0
aNone_1:				; DATA XREF: .text:004CDF03o
		dw 3Ch
		unicode	0, <none>
		dw 3Eh,	0
; wchar_t a_hlp_chm
a_hlp_chm:				; DATA XREF: .text:004CF976o
		unicode	0, <*.hlp;*.chm>,0
aFlashTest:				; DATA XREF: .text:004CFB92o
		unicode	0, <Flash test>,0
aSpecifyModuleN:			; DATA XREF: .text:004CFC06o
		unicode	0, <Specify module name>,0
aSelectRangeO_0:			; DATA XREF: .text:004CFDE1o
		unicode	0, <Select range of exceptions>,0
aEnterNewNameFo:			; DATA XREF: .text:004D0116o
		unicode	0, <Enter new name for font !%i>,0
aUnableToCrea_7:			; DATA XREF: .text:004D0285o
		unicode	0, <Unable to create specified font>,0
aEnterNewName_0:			; DATA XREF: .text:004D050Co
		unicode	0, <Enter new name for colour scheme !%i>,0
aEnterNewName_1:			; DATA XREF: .text:004D0754o
		unicode	0, <Enter new name for highlighting scheme !%i>,0
; const	WCHAR aDia_empty_1
aDia_empty_1:				; DATA XREF: .text:004D106Co
		unicode	0, <DIA_EMPTY>,0
		db 0
		db    0
stru_5735A0	t_dotnet <offset aNop, 0, 1, 0, 0>; 0 ;	DATA XREF: .text:004D1723o
					; \=nop\=
		t_dotnet <offset aAdd_1, 1200h, 1, 58h, 0>; 0 ;	\=add\=
		t_dotnet <offset aAdd_ovf, 1200h, 1, 0D6h, 0>; 0 ; \=add.ovf\=
		t_dotnet <offset aAdd_ovf_un, 1200h, 1, 0D7h, 0>; 0 ; \=add.ovf.un\=
		t_dotnet <offset aAnd_0, 1200h, 1, 5Fh, 0>; 0 ;	\=and\=
		t_dotnet <offset aArglist, 1000h, 2, 0FEh, 0>; 0 ; \=arglist\=
		t_dotnet <offset aBeq, 202h, 40001h, 3Bh, 1>; 0	; \=beq\=
		t_dotnet <offset aBeq_s, 202h, 10001h, 2Eh, 2>;	0 ; \=beq.s\=
		t_dotnet <offset aBge, 202h, 40001h, 3Ch, 1>; 0	; \=bge\=
		t_dotnet <offset aBge_s, 202h, 10001h, 2Fh, 2>;	0 ; \=bge.s\=
		t_dotnet <offset aBge_un, 202h, 40001h, 41h, 1>; 0 ; \=bge.un\=
		t_dotnet <offset aBge_un_s, 202h, 10001h, 34h, 2>; 0 ; \=bge.un.s\=
		t_dotnet <offset aBgt, 202h, 40001h, 3Dh, 1>; 0	; \=bgt\=
		t_dotnet <offset aBgt_s, 202h, 10001h, 30h, 2>;	0 ; \=bgt.s\=
		t_dotnet <offset aBgt_un, 202h, 40001h, 42h, 1>; 0 ; \=bgt.un\=
		t_dotnet <offset aBgt_un_s, 202h, 10001h, 35h, 2>; 0 ; \=bgt.un.s\=
		t_dotnet <offset aBle, 202h, 40001h, 3Eh, 1>; 0	; \=ble\=
		t_dotnet <offset aBle_s, 202h, 10001h, 31h, 2>;	0 ; \=ble.s\=
		t_dotnet <offset aBle_un, 202h, 40001h, 43h, 1>; 0 ; \=ble.un\=
		t_dotnet <offset aBle_un_s, 202h, 10001h, 36h, 2>; 0 ; \=ble.un.s\=
		t_dotnet <offset aBlt, 202h, 40001h, 3Fh, 1>; 0	; \=blt\=
		t_dotnet <offset aBlt_s, 202h, 10001h, 32h, 2>;	0 ; \=blt.s\=
		t_dotnet <offset aBlt_un, 202h, 40001h, 44h, 1>; 0 ; \=blt.un\=
		t_dotnet <offset aBlt_un_s, 202h, 10001h, 37h, 2>; 0 ; \=blt.un.s\=
		t_dotnet <offset aBne, 202h, 40001h, 40h, 1>; 0	; \=bne\=
		t_dotnet <offset aBne_s, 202h, 10001h, 33h, 2>;	0 ; \=bne.s\=
		t_dotnet <offset aBr, 1, 40001h, 38h, 1>; 0 ; \=br\=
		t_dotnet <offset aBr_s, 1, 10001h, 2Bh, 2>; 0 ;	\=br.s\=
		t_dotnet <offset aBreak, 0, 1, 1, 0>; 0	; \=break\=
		t_dotnet <offset aBrfalse, 102h, 40001h, 39h, 1>; 0 ; \=brfalse\=
		t_dotnet <offset aBrfalse_s, 102h, 10001h, 2Ch, 2>; 0 ;	\=brfalse.s\=
		t_dotnet <offset aBrnull, 102h, 40001h, 39h, 1>; 0 ; \=brnull\=
		t_dotnet <offset aBrnull_s, 102h, 10001h, 2Ch, 2>; 0 ; \=brnull.s\=
		t_dotnet <offset aBrzero, 102h, 40001h, 39h, 1>; 0 ; \=brzero\=
		t_dotnet <offset aBrzero_s, 102h, 10001h, 2Ch, 2>; 0 ; \=brzero.s\=
		t_dotnet <offset aBrtrue, 102h, 40001h, 3Ah, 1>; 0 ; \=brtrue\=
		t_dotnet <offset aBrtrue_s, 102h, 10001h, 2Dh, 2>; 0 ; \=brtrue.s\=
		t_dotnet <offset aBrinst, 102h, 40001h, 3Ah, 1>; 0 ; \=brinst\=
		t_dotnet <offset aBrinst_s, 102h, 10001h, 2Dh, 2>; 0 ; \=brinst.s\=
		t_dotnet <offset aCall_3, 0FF03h, 40001h, 28h, 3>; 0 ; \=call\=
		t_dotnet <offset aCalli, 0FF03h, 40001h, 29h, 4>; 0 ; \=calli\=
		t_dotnet <offset aCeq, 1200h, 2, 1FEh, 0>; 0 ; \=ceq\=
		t_dotnet <offset aCgt, 1200h, 2, 2FEh, 0>; 0 ; \=cgt\=
		t_dotnet <offset aCgt_un, 1200h, 2, 3FEh, 0>; 0	; \=cgt.un\=
		t_dotnet <offset aCkfinite, 1100h, 1, 0C3h, 0>;	0 ; \=ckfinite\=
		t_dotnet <offset aClt, 1200h, 2, 4FEh, 0>; 0 ; \=clt\=
		t_dotnet <offset aClt_un, 1200h, 2, 5FEh, 0>; 0	; \=clt.un\=
		t_dotnet <offset aConv_i1, 1100h, 1, 67h, 0>; 0	; \=conv.i1\=
		t_dotnet <offset aConv_i2, 1100h, 1, 68h, 0>; 0	; \=conv.i2\=
		t_dotnet <offset aConv_i4, 1100h, 1, 69h, 0>; 0	; \=conv.i4\=
		t_dotnet <offset aConv_i8, 1100h, 1, 6Ah, 0>; 0	; \=conv.i8\=
		t_dotnet <offset aConv_r4, 1100h, 1, 6Bh, 0>; 0	; \=conv.r4\=
		t_dotnet <offset aConv_r8, 1100h, 1, 6Ch, 0>; 0	; \=conv.r8\=
		t_dotnet <offset aConv_u1, 1100h, 1, 0D2h, 0>; 0 ; \=conv.u1\=
		t_dotnet <offset aConv_u2, 1100h, 1, 0D1h, 0>; 0 ; \=conv.u2\=
		t_dotnet <offset aConv_u4, 1100h, 1, 6Dh, 0>; 0	; \=conv.u4\=
		t_dotnet <offset aConv_u8, 1100h, 1, 6Eh, 0>; 0	; \=conv.u8\=
		t_dotnet <offset aConv_i, 1100h, 1, 0D3h, 0>; 0	; \=conv.i\=
		t_dotnet <offset aConv_u, 1100h, 1, 0E0h, 0>; 0	; \=conv.u\=
		t_dotnet <offset aConv_r_un, 1100h, 1, 76h, 0>;	0 ; \=conv.r.un\=
		t_dotnet <offset aConv_ovf_i1, 1100h, 1, 0B3h, 0>; 0 ; \=conv.ovf.i1\=
		t_dotnet <offset aConv_ovf_i2, 1100h, 1, 0B5h, 0>; 0 ; \=conv.ovf.i2\=
		t_dotnet <offset aConv_ovf_i4, 1100h, 1, 0B7h, 0>; 0 ; \=conv.ovf.i4\=
		t_dotnet <offset aConv_ovf_i8, 1100h, 1, 0B9h, 0>; 0 ; \=conv.ovf.i8\=
		t_dotnet <offset aConv_ovf_u1, 1100h, 1, 0B4h, 0>; 0 ; \=conv.ovf.u1\=
		t_dotnet <offset aConv_ovf_u2, 1100h, 1, 0B6h, 0>; 0 ; \=conv.ovf.u2\=
		t_dotnet <offset aConv_ovf_u4, 1100h, 1, 0B8h, 0>; 0 ; \=conv.ovf.u4\=
		t_dotnet <offset aConv_ovf_u8, 1100h, 1, 0BAh, 0>; 0 ; \=conv.ovf.u8\=
		t_dotnet <offset aConv_ovf_i, 1100h, 1, 0D4h, 0>; 0 ; \=conv.ovf.i\=
		t_dotnet <offset aConv_ovf_u, 1100h, 1, 0D5h, 0>; 0 ; \=conv.ovf.u\=
		t_dotnet <offset aConv_ovf_i1_un, 1100h, 1, 82h, 0>; 0 ; \=conv.ovf.i1.un\=
		t_dotnet <offset aConv_ovf_i2_un, 1100h, 1, 83h, 0>; 0 ; \=conv.ovf.i2.un\=
		t_dotnet <offset aConv_ovf_i4_un, 1100h, 1, 84h, 0>; 0 ; \=conv.ovf.i4.un\=
		t_dotnet <offset aConv_ovf_i8_un, 1100h, 1, 85h, 0>; 0 ; \=conv.ovf.i8.un\=
		t_dotnet <offset aConv_ovf_u1_un, 1100h, 1, 86h, 0>; 0 ; \=conv.ovf.u1.un\=
		t_dotnet <offset aConv_ovf_u2_un, 1100h, 1, 87h, 0>; 0 ; \=conv.ovf.u2.un\=
		t_dotnet <offset aConv_ovf_u4_un, 1100h, 1, 88h, 0>; 0 ; \=conv.ovf.u4.un\=
		t_dotnet <offset aConv_ovf_u8_un, 1100h, 1, 89h, 0>; 0 ; \=conv.ovf.u8.un\=
		t_dotnet <offset aConv_ovf_i_un, 1100h, 1, 8Ah, 0>; 0 ;	\=conv.ovf.i.un\=
		t_dotnet <offset aConv_ovf_u_un, 1100h, 1, 8Bh, 0>; 0 ;	\=conv.ovf.u.un\=
		t_dotnet <offset aCpblk, 300h, 2, 17FEh, 0>; 0 ; \=cpblk\=
		t_dotnet <offset aDiv_1, 1200h, 1, 5Bh, 0>; 0 ;	\=div\=
		t_dotnet <offset aDiv_un, 1200h, 1, 5Ch, 0>; 0 ; \=div.un\=
		t_dotnet <offset aDup, 2100h, 1, 25h, 0>; 0 ; \=dup\=
		t_dotnet <offset aEndfilter, 104h, 2, 11FEh, 0>; 0 ; \=endfilter\=
		t_dotnet <offset aEndfinally, 4, 1, 0DCh, 0>; 0	; \=endfinally\=
		t_dotnet <offset aEndfault, 4, 1, 0DCh, 0>; 0 ;	\=endfault\=
		t_dotnet <offset aInitblk, 300h, 2, 18FEh, 0>; 0 ; \=initblk\=
		t_dotnet <offset aImp, 1, 40001h, 27h, 3>; 0 ; \=imp\=
		t_dotnet <offset aLdarg, 1000h, 20002h, 9FEh, 0Ah>; 0 ;	\=ldarg\=
		t_dotnet <offset aLdarg_s, 1000h, 10001h, 0Eh, 9>; 0 ; \=ldarg.s\=
		t_dotnet <offset aLdarg_0, 1000h, 1, 2, 0>; 0 ;	\=ldarg.0\=
		t_dotnet <offset aLdarg_1, 1000h, 1, 3, 0>; 0 ;	\=ldarg.1\=
		t_dotnet <offset aLdarg_2, 1000h, 1, 4, 0>; 0 ;	\=ldarg.2\=
		t_dotnet <offset aLdarg_3, 1000h, 1, 5, 0>; 0 ;	\=ldarg.3\=
		t_dotnet <offset aLdarga, 1000h, 20002h, 0AFEh, 0Ah>; 0	; \=ldarga\=
		t_dotnet <offset aLdarga_s, 1000h, 10001h, 0Fh, 9>; 0 ;	\=ldarga.s\=
		t_dotnet <offset aLdc_i4, 1000h, 40001h, 20h, 0Dh>; 0 ;	\=ldc.i4\=
		t_dotnet <offset aLdc_i8, 1000h, 80001h, 21h, 0Eh>; 0 ;	\=ldc.i8\=
		t_dotnet <offset aLdc_r4, 1000h, 40001h, 22h, 0Fh>; 0 ;	\=ldc.r4\=
		t_dotnet <offset aLdc_r8, 1000h, 80001h, 23h, 10h>; 0 ;	\=ldc.r8\=
		t_dotnet <offset aLdc_i4_0, 1000h, 1, 16h, 0>; 0 ; \=ldc.i4.0\=
		t_dotnet <offset aLdc_i4_1, 1000h, 1, 17h, 0>; 0 ; \=ldc.i4.1\=
		t_dotnet <offset aLdc_i4_2, 1000h, 1, 18h, 0>; 0 ; \=ldc.i4.2\=
		t_dotnet <offset aLdc_i4_3, 1000h, 1, 19h, 0>; 0 ; \=ldc.i4.3\=
		t_dotnet <offset aLdc_i4_4, 1000h, 1, 1Ah, 0>; 0 ; \=ldc.i4.4\=
		t_dotnet <offset aLdc_i4_5, 1000h, 1, 1Bh, 0>; 0 ; \=ldc.i4.5\=
		t_dotnet <offset aLdc_i4_6, 1000h, 1, 1Ch, 0>; 0 ; \=ldc.i4.6\=
		t_dotnet <offset aLdc_i4_7, 1000h, 1, 1Dh, 0>; 0 ; \=ldc.i4.7\=
		t_dotnet <offset aLdc_i4_8, 1000h, 1, 1Eh, 0>; 0 ; \=ldc.i4.8\=
		t_dotnet <offset aLdc_i4_m1, 1000h, 1, 15h, 0>;	0 ; \=ldc.i4.m1\=
		t_dotnet <offset aLdc_i4_s, 1000h, 10001h, 1Fh, 0Ch>; 0	; \=ldc.i4.s\=
		t_dotnet <offset aLdftn, 1000h, 40002h, 6FEh, 3>; 0 ; \=ldftn\=
		t_dotnet <offset aLdind_i1, 1100h, 1, 46h, 0>; 0 ; \=ldind.i1\=
		t_dotnet <offset aLdind_i2, 1100h, 1, 48h, 0>; 0 ; \=ldind.i2\=
		t_dotnet <offset aLdind_i4, 1100h, 1, 4Ah, 0>; 0 ; \=ldind.i4\=
		t_dotnet <offset aLdind_i8, 1100h, 1, 4Ch, 0>; 0 ; \=ldind.i8\=
		t_dotnet <offset aLdind_u1, 1100h, 1, 47h, 0>; 0 ; \=ldind.u1\=
		t_dotnet <offset aLdind_u2, 1100h, 1, 49h, 0>; 0 ; \=ldind.u2\=
		t_dotnet <offset aLdind_u4, 1100h, 1, 4Bh, 0>; 0 ; \=ldind.u4\=
		t_dotnet <offset aLdind_r4, 1100h, 1, 4Eh, 0>; 0 ; \=ldind.r4\=
		t_dotnet <offset aLdind_u8, 1100h, 1, 4Ch, 0>; 0 ; \=ldind.u8\=
		t_dotnet <offset aLdind_r8, 1100h, 1, 4Fh, 0>; 0 ; \=ldind.r8\=
		t_dotnet <offset aLdind_i, 1100h, 1, 4Dh, 0>; 0	; \=ldind.i\=
		t_dotnet <offset aLdind_ref, 1100h, 1, 50h, 0>;	0 ; \=ldind.ref\=
		t_dotnet <offset aLdloc, 1000h, 20002h, 0CFEh, 0Ah>; 0 ; \=ldloc\=
		t_dotnet <offset aLdloc_s, 1000h, 10001h, 11h, 9>; 0 ; \=ldloc.s\=
		t_dotnet <offset aLdloc_0, 1000h, 1, 6, 0>; 0 ;	\=ldloc.0\=
		t_dotnet <offset aLdloc_1, 1000h, 1, 7, 0>; 0 ;	\=ldloc.1\=
		t_dotnet <offset aLdloc_2, 1000h, 1, 8, 0>; 0 ;	\=ldloc.2\=
		t_dotnet <offset aLdloc_3, 1000h, 1, 9, 0>; 0 ;	\=ldloc.3\=
		t_dotnet <offset aLdloca, 1000h, 20002h, 0DFEh, 0Ah>; 0	; \=ldloca\=
		t_dotnet <offset aLdloca_s, 1000h, 10001h, 12h, 9>; 0 ;	\=ldloca.s\=
		t_dotnet <offset aLdnull, 1000h, 1, 14h, 0>; 0 ; \=ldnull\=
		t_dotnet <offset aLeave_1, 1, 40001h, 0DDh, 1>;	0 ; \=leave\=
		t_dotnet <offset aLeave_s, 1, 10001h, 0DEh, 2>;	0 ; \=leave.s\=
		t_dotnet <offset aLocalloc, 1100h, 2, 0FFEh, 0>; 0 ; \=localloc\=
		t_dotnet <offset aMul_1, 1200h, 1, 5Ah, 0>; 0 ;	\=mul\=
		t_dotnet <offset aMul_ovf, 1200h, 1, 0D8h, 0>; 0 ; \=mul.ovf\=
		t_dotnet <offset aMul_ovf_un, 1200h, 1, 0D9h, 0>; 0 ; \=mul.ovf.un\=
		t_dotnet <offset aNeg_1, 1100h, 1, 65h, 0>; 0 ;	\=neg\=
		t_dotnet <offset aNot_2, 1100h, 1, 66h, 0>; 0 ;	\=not\=
		t_dotnet <offset aOr_1, 1200h, 1, 60h, 0>; 0 ; \=or\=
		t_dotnet <offset aPop, 100h, 1, 26h, 0>; 0 ; \=pop\=
		t_dotnet <offset aRem, 1200h, 1, 5Dh, 0>; 0 ; \=rem\=
		t_dotnet <offset aRem_un, 1200h, 1, 5Eh, 0>; 0 ; \=rem.un\=
		t_dotnet <offset aRet_3, 0FF04h, 1, 2Ah, 0>; 0 ; \=ret\=
		t_dotnet <offset aShl_1, 1200h, 1, 62h, 0>; 0 ;	\=shl\=
		t_dotnet <offset aShr_1, 1200h, 1, 63h, 0>; 0 ;	\=shr\=
		t_dotnet <offset aShr_un, 1200h, 1, 64h, 0>; 0 ; \=shr.un\=
		t_dotnet <offset aStarg, 100h, 20002h, 0BFEh, 0Ah>; 0 ;	\=starg\=
		t_dotnet <offset aStarg_s, 100h, 10001h, 10h, 9>; 0 ; \=starg.s\=
		t_dotnet <offset aStind_i1, 200h, 1, 52h, 0>; 0	; \=stind.i1\=
		t_dotnet <offset aStind_i2, 200h, 1, 53h, 0>; 0	; \=stind.i2\=
		t_dotnet <offset aStind_i4, 200h, 1, 54h, 0>; 0	; \=stind.i4\=
		t_dotnet <offset aStind_i8, 200h, 1, 55h, 0>; 0	; \=stind.i8\=
		t_dotnet <offset aStind_r4, 200h, 1, 56h, 0>; 0	; \=stind.r4\=
		t_dotnet <offset aStind_r8, 200h, 1, 57h, 0>; 0	; \=stind.r8\=
		t_dotnet <offset aStind_i, 200h, 1, 0DFh, 0>; 0	; \=stind.i\=
		t_dotnet <offset aStind_ref, 200h, 1, 51h, 0>; 0 ; \=stind.ref\=
		t_dotnet <offset aStloc, 100h, 20002h, 0EFEh, 0Ah>; 0 ;	\=stloc\=
		t_dotnet <offset aStloc_s, 100h, 10001h, 13h, 9>; 0 ; \=stloc.s\=
		t_dotnet <offset aStloc_0, 100h, 1, 0Ah, 0>; 0 ; \=stloc.0\=
		t_dotnet <offset aStloc_1, 100h, 1, 0Bh, 0>; 0 ; \=stloc.1\=
		t_dotnet <offset aStloc_2, 100h, 1, 0Ch, 0>; 0 ; \=stloc.2\=
		t_dotnet <offset aStloc_3, 100h, 1, 0Dh, 0>; 0 ; \=stloc.3\=
		t_dotnet <offset aSub, 1200h, 1, 59h, 0>; 0 ; \=sub\=
		t_dotnet <offset aSub_ovf, 1200h, 1, 0DAh, 0>; 0 ; \=sub.ovf\=
		t_dotnet <offset aSub_ovf_un, 1200h, 1, 0DBh, 0>; 0 ; \=sub.ovf.un\=
		t_dotnet <offset aSwitch_2, 105h, 40001h, 45h, 0Bh>; 0 ; \=switch\=
		t_dotnet <offset aXor_1, 1200h, 1, 61h, 0>; 0 ;	\=xor\=
		t_dotnet <offset aBox, 1100h, 40001h, 8Ch, 5>; 0 ; \=box\=
		t_dotnet <offset aCallvirt, 0FF03h, 40001h, 6Fh, 3>; 0 ; \=callvirt\=
		t_dotnet <offset aCastclass, 1100h, 40001h, 74h, 5>; 0 ; \=castclass\=
		t_dotnet <offset aCpobj, 200h, 40001h, 70h, 5>;	0 ; \=cpobj\=
		t_dotnet <offset aInitobj, 100h, 40002h, 15FEh, 5>; 0 ;	\=initobj\=
		t_dotnet <offset aIsinst, 1100h, 40001h, 75h, 5>; 0 ; \=isinst\=
		t_dotnet <offset aLdelem, 1200h, 40001h, 0A3h, 5>; 0 ; \=ldelem\=
		t_dotnet <offset aLdelem_i1, 1200h, 1, 90h, 0>;	0 ; \=ldelem.i1\=
		t_dotnet <offset aLdelem_i2, 1200h, 1, 92h, 0>;	0 ; \=ldelem.i2\=
		t_dotnet <offset aLdelem_i4, 1200h, 1, 94h, 0>;	0 ; \=ldelem.i4\=
		t_dotnet <offset aLdelem_i8, 1200h, 1, 96h, 0>;	0 ; \=ldelem.i8\=
		t_dotnet <offset aLdelem_u1, 1200h, 1, 91h, 0>;	0 ; \=ldelem.u1\=
		t_dotnet <offset aLdelem_u2, 1200h, 1, 93h, 0>;	0 ; \=ldelem.u2\=
		t_dotnet <offset aLdelem_u4, 1200h, 1, 95h, 0>;	0 ; \=ldelem.u4\=
		t_dotnet <offset aLdelem_u8, 1200h, 1, 96h, 0>;	0 ; \=ldelem.u8\=
		t_dotnet <offset aLdelem_r4, 1200h, 1, 98h, 0>;	0 ; \=ldelem.r4\=
		t_dotnet <offset aLdelem_r8, 1200h, 1, 99h, 0>;	0 ; \=ldelem.r8\=
		t_dotnet <offset aLdelem_i, 1200h, 1, 97h, 0>; 0 ; \=ldelem.i\=
		t_dotnet <offset aLdelem_ref, 1200h, 1, 9Ah, 0>; 0 ; \=ldelem.ref\=
		t_dotnet <offset aLdelema, 1200h, 40001h, 8Fh, 5>; 0 ; \=ldelema\=
		t_dotnet <offset aLdfld, 1100h, 40001h, 7Bh, 6>; 0 ; \=ldfld\=
		t_dotnet <offset aLdflda, 1100h, 40001h, 7Ch, 6>; 0 ; \=ldflda\=
		t_dotnet <offset aLdlen, 1100h, 1, 8Eh, 0>; 0 ;	\=ldlen\=
		t_dotnet <offset aLdobj, 1100h, 40001h, 71h, 5>; 0 ; \=ldobj\=
		t_dotnet <offset aLdsfld, 1000h, 40001h, 7Eh, 6>; 0 ; \=ldsfld\=
		t_dotnet <offset aLdsflda, 1000h, 40001h, 7Fh, 6>; 0 ; \=ldsflda\=
		t_dotnet <offset aLdstr, 1000h, 40001h, 72h, 7>; 0 ; \=ldstr\=
		t_dotnet <offset aLdtoken, 1000h, 40001h, 0D0h, 8>; 0 ;	\=ldtoken\=
		t_dotnet <offset aLdvirtftn, 1100h, 40002h, 7FEh, 3>; 0	; \=ldvirtftn\=
		t_dotnet <offset aMkrefany, 1100h, 40001h, 0C6h, 5>; 0 ; \=mkrefany\=
		t_dotnet <offset aNewarr, 1100h, 40001h, 8Dh, 5>; 0 ; \=newarr\=
		t_dotnet <offset aNewobj, 1F00h, 40001h, 73h, 3>; 0 ; \=newobj\=
		t_dotnet <offset aRefanytype, 1100h, 2, 1DFEh, 0>; 0 ; \=refanytype\=
		t_dotnet <offset aRefanyval, 1100h, 40001h, 0C2h, 5>; 0	; \=refanyval\=
		t_dotnet <offset aRethrow, 0, 2, 1AFEh, 0>; 0 ;	\=rethrow\=
		t_dotnet <offset aSizeof, 1000h, 40002h, 1CFEh, 5>; 0 ;	\=sizeof\=
		t_dotnet <offset aStelem, 0F00h, 40001h, 0A4h, 5>; 0 ; \=stelem\=
		t_dotnet <offset aStelem_i1, 0F00h, 1, 9Ch, 0>;	0 ; \=stelem.i1\=
		t_dotnet <offset aStelem_i2, 0F00h, 1, 9Dh, 0>;	0 ; \=stelem.i2\=
		t_dotnet <offset aStelem_i4, 0F00h, 1, 9Eh, 0>;	0 ; \=stelem.i4\=
		t_dotnet <offset aStelem_i8, 0F00h, 1, 9Fh, 0>;	0 ; \=stelem.i8\=
		t_dotnet <offset aStelem_r4, 0F00h, 1, 0A0h, 0>; 0 ; \=stelem.r4\=
		t_dotnet <offset aStelem_r8, 0F00h, 1, 0A1h, 0>; 0 ; \=stelem.r8\=
		t_dotnet <offset aStelem_i, 0F00h, 1, 9Bh, 0>; 0 ; \=stelem.i\=
		t_dotnet <offset aStelem_ref, 0F00h, 1, 0A2h, 0>; 0 ; \=stelem.ref\=
		t_dotnet <offset aStfld, 200h, 40001h, 7Dh, 6>;	0 ; \=stfld\=
		t_dotnet <offset aStobj, 200h, 40001h, 81h, 5>;	0 ; \=stobj\=
		t_dotnet <offset aStsfld, 100h, 40001h, 80h, 6>; 0 ; \=stsfld\=
		t_dotnet <offset aRethrow+4, 100h, 1, 7Ah, 0>; 0 ; \=throw\=
		t_dotnet <offset aUnbox, 1100h, 40001h, 79h, 5>; 0 ; \=unbox\=
		t_dotnet <offset aUnbox_any, 1100h, 40001h, 0A5h, 5>; 0	; \=unbox.any\=
		t_dotnet <offset aConstrained_, 0FF06h, 40002h, 16FEh, 5>; 0 ; \=constrained.\=
		t_dotnet <offset aNo_, 6, 10002h, 19FEh, 11h>; 0 ; \=no.\=
		t_dotnet <offset aReadonly_, 6, 2, 1EFEh, 0>; 0	; \=readonly.\=
		t_dotnet <offset aTail_, 6, 2, 14FEh, 0>; 0 ; \=tail.\=
		t_dotnet <offset aUnaligned_, 1106h, 10002h, 12FEh, 12h>; 0 ; \=unaligned.\=
		t_dotnet <offset aVolatile_, 1106h, 2, 13FEh, 0>; 0 ; \=volatile.\=
		t_dotnet <0>
aNop:					; DATA XREF: .data:stru_5735A0o
		unicode	0, <nop>,0
aAdd_1:					; DATA XREF: .data:005735B4o
		unicode	0, <add>,0
aAdd_ovf:				; DATA XREF: .data:005735C8o
		unicode	0, <add.ovf>,0
aAdd_ovf_un:				; DATA XREF: .data:005735DCo
		unicode	0, <add.ovf.un>,0
aAnd_0:					; DATA XREF: .data:005735F0o
		unicode	0, <and>,0
aArglist:				; DATA XREF: .data:00573604o
		unicode	0, <arglist>,0
aBeq:					; DATA XREF: .data:00573618o
		unicode	0, <beq>,0
aBeq_s:					; DATA XREF: .data:0057362Co
		unicode	0, <beq.s>,0
aBge:					; DATA XREF: .data:00573640o
		unicode	0, <bge>,0
aBge_s:					; DATA XREF: .data:00573654o
		unicode	0, <bge.s>,0
aBge_un:				; DATA XREF: .data:00573668o
		unicode	0, <bge.un>,0
aBge_un_s:				; DATA XREF: .data:0057367Co
		unicode	0, <bge.un.s>,0
aBgt:					; DATA XREF: .data:00573690o
		unicode	0, <bgt>,0
aBgt_s:					; DATA XREF: .data:005736A4o
		unicode	0, <bgt.s>,0
aBgt_un:				; DATA XREF: .data:005736B8o
		unicode	0, <bgt.un>,0
aBgt_un_s:				; DATA XREF: .data:005736CCo
		unicode	0, <bgt.un.s>,0
aBle:					; DATA XREF: .data:005736E0o
		unicode	0, <ble>,0
aBle_s:					; DATA XREF: .data:005736F4o
		unicode	0, <ble.s>,0
aBle_un:				; DATA XREF: .data:00573708o
		unicode	0, <ble.un>,0
aBle_un_s:				; DATA XREF: .data:0057371Co
		unicode	0, <ble.un.s>,0
aBlt:					; DATA XREF: .data:00573730o
		unicode	0, <blt>,0
aBlt_s:					; DATA XREF: .data:00573744o
		unicode	0, <blt.s>,0
aBlt_un:				; DATA XREF: .data:00573758o
		unicode	0, <blt.un>,0
aBlt_un_s:				; DATA XREF: .data:0057376Co
		unicode	0, <blt.un.s>,0
aBne:					; DATA XREF: .data:00573780o
		unicode	0, <bne>,0
aBne_s:					; DATA XREF: .data:00573794o
		unicode	0, <bne.s>,0
aBr:					; DATA XREF: .data:005737A8o
		unicode	0, <br>,0
aBr_s:					; DATA XREF: .data:005737BCo
		unicode	0, <br.s>,0
aBreak:					; DATA XREF: .data:005737D0o
		unicode	0, <break>,0
aBrfalse:				; DATA XREF: .data:005737E4o
		unicode	0, <brfalse>,0
aBrfalse_s:				; DATA XREF: .data:005737F8o
		unicode	0, <brfalse.s>,0
aBrnull:				; DATA XREF: .data:0057380Co
		unicode	0, <brnull>,0
aBrnull_s:				; DATA XREF: .data:00573820o
		unicode	0, <brnull.s>,0
aBrzero:				; DATA XREF: .data:00573834o
		unicode	0, <brzero>,0
aBrzero_s:				; DATA XREF: .data:00573848o
		unicode	0, <brzero.s>,0
aBrtrue:				; DATA XREF: .data:0057385Co
		unicode	0, <brtrue>,0
aBrtrue_s:				; DATA XREF: .data:00573870o
		unicode	0, <brtrue.s>,0
aBrinst:				; DATA XREF: .data:00573884o
		unicode	0, <brinst>,0
aBrinst_s:				; DATA XREF: .data:00573898o
		unicode	0, <brinst.s>,0
aCall_3:				; DATA XREF: .data:005738ACo
		unicode	0, <call>,0
aCalli:					; DATA XREF: .data:005738C0o
		unicode	0, <calli>,0
aCeq:					; DATA XREF: .data:005738D4o
		unicode	0, <ceq>,0
aCgt:					; DATA XREF: .data:005738E8o
		unicode	0, <cgt>,0
aCgt_un:				; DATA XREF: .data:005738FCo
		unicode	0, <cgt.un>,0
aCkfinite:				; DATA XREF: .data:00573910o
		unicode	0, <ckfinite>,0
aClt:					; DATA XREF: .data:00573924o
		unicode	0, <clt>,0
aClt_un:				; DATA XREF: .data:00573938o
		unicode	0, <clt.un>,0
aConv_i1:				; DATA XREF: .data:0057394Co
		unicode	0, <conv.i1>,0
aConv_i2:				; DATA XREF: .data:00573960o
		unicode	0, <conv.i2>,0
aConv_i4:				; DATA XREF: .data:00573974o
		unicode	0, <conv.i4>,0
aConv_i8:				; DATA XREF: .data:00573988o
		unicode	0, <conv.i8>,0
aConv_r4:				; DATA XREF: .data:0057399Co
		unicode	0, <conv.r4>,0
aConv_r8:				; DATA XREF: .data:005739B0o
		unicode	0, <conv.r8>,0
aConv_u1:				; DATA XREF: .data:005739C4o
		unicode	0, <conv.u1>,0
aConv_u2:				; DATA XREF: .data:005739D8o
		unicode	0, <conv.u2>,0
aConv_u4:				; DATA XREF: .data:005739ECo
		unicode	0, <conv.u4>,0
aConv_u8:				; DATA XREF: .data:00573A00o
		unicode	0, <conv.u8>,0
aConv_i:				; DATA XREF: .data:00573A14o
		unicode	0, <conv.i>,0
aConv_u:				; DATA XREF: .data:00573A28o
		unicode	0, <conv.u>,0
aConv_r_un:				; DATA XREF: .data:00573A3Co
		unicode	0, <conv.r.un>,0
aConv_ovf_i1:				; DATA XREF: .data:00573A50o
		unicode	0, <conv.ovf.i1>,0
aConv_ovf_i2:				; DATA XREF: .data:00573A64o
		unicode	0, <conv.ovf.i2>,0
aConv_ovf_i4:				; DATA XREF: .data:00573A78o
		unicode	0, <conv.ovf.i4>,0
aConv_ovf_i8:				; DATA XREF: .data:00573A8Co
		unicode	0, <conv.ovf.i8>,0
aConv_ovf_u1:				; DATA XREF: .data:00573AA0o
		unicode	0, <conv.ovf.u1>,0
aConv_ovf_u2:				; DATA XREF: .data:00573AB4o
		unicode	0, <conv.ovf.u2>,0
aConv_ovf_u4:				; DATA XREF: .data:00573AC8o
		unicode	0, <conv.ovf.u4>,0
aConv_ovf_u8:				; DATA XREF: .data:00573ADCo
		unicode	0, <conv.ovf.u8>,0
aConv_ovf_i:				; DATA XREF: .data:00573AF0o
		unicode	0, <conv.ovf.i>,0
aConv_ovf_u:				; DATA XREF: .data:00573B04o
		unicode	0, <conv.ovf.u>,0
aConv_ovf_i1_un:			; DATA XREF: .data:00573B18o
		unicode	0, <conv.ovf.i1.un>,0
aConv_ovf_i2_un:			; DATA XREF: .data:00573B2Co
		unicode	0, <conv.ovf.i2.un>,0
aConv_ovf_i4_un:			; DATA XREF: .data:00573B40o
		unicode	0, <conv.ovf.i4.un>,0
aConv_ovf_i8_un:			; DATA XREF: .data:00573B54o
		unicode	0, <conv.ovf.i8.un>,0
aConv_ovf_u1_un:			; DATA XREF: .data:00573B68o
		unicode	0, <conv.ovf.u1.un>,0
aConv_ovf_u2_un:			; DATA XREF: .data:00573B7Co
		unicode	0, <conv.ovf.u2.un>,0
aConv_ovf_u4_un:			; DATA XREF: .data:00573B90o
		unicode	0, <conv.ovf.u4.un>,0
aConv_ovf_u8_un:			; DATA XREF: .data:00573BA4o
		unicode	0, <conv.ovf.u8.un>,0
aConv_ovf_i_un:				; DATA XREF: .data:00573BB8o
		unicode	0, <conv.ovf.i.un>,0
aConv_ovf_u_un:				; DATA XREF: .data:00573BCCo
		unicode	0, <conv.ovf.u.un>,0
aCpblk:					; DATA XREF: .data:00573BE0o
		unicode	0, <cpblk>,0
aDiv_1:					; DATA XREF: .data:00573BF4o
		unicode	0, <div>,0
aDiv_un:				; DATA XREF: .data:00573C08o
		unicode	0, <div.un>,0
aDup:					; DATA XREF: .data:00573C1Co
		unicode	0, <dup>,0
aEndfilter:				; DATA XREF: .data:00573C30o
		unicode	0, <endfilter>,0
aEndfinally:				; DATA XREF: .data:00573C44o
		unicode	0, <endfinally>,0
aEndfault:				; DATA XREF: .data:00573C58o
		unicode	0, <endfault>,0
aInitblk:				; DATA XREF: .data:00573C6Co
		unicode	0, <initblk>,0
aImp:					; DATA XREF: .data:00573C80o
		unicode	0, <imp>,0
aLdarg:					; DATA XREF: .data:00573C94o
		unicode	0, <ldarg>,0
aLdarg_s:				; DATA XREF: .data:00573CA8o
		unicode	0, <ldarg.s>,0
aLdarg_0:				; DATA XREF: .data:00573CBCo
		unicode	0, <ldarg.0>,0
aLdarg_1:				; DATA XREF: .data:00573CD0o
		unicode	0, <ldarg.1>,0
aLdarg_2:				; DATA XREF: .data:00573CE4o
		unicode	0, <ldarg.2>,0
aLdarg_3:				; DATA XREF: .data:00573CF8o
		unicode	0, <ldarg.3>,0
aLdarga:				; DATA XREF: .data:00573D0Co
		unicode	0, <ldarga>,0
aLdarga_s:				; DATA XREF: .data:00573D20o
		unicode	0, <ldarga.s>,0
aLdc_i4:				; DATA XREF: .data:00573D34o
		unicode	0, <ldc.i4>,0
aLdc_i8:				; DATA XREF: .data:00573D48o
		unicode	0, <ldc.i8>,0
aLdc_r4:				; DATA XREF: .data:00573D5Co
		unicode	0, <ldc.r4>,0
aLdc_r8:				; DATA XREF: .data:00573D70o
		unicode	0, <ldc.r8>,0
aLdc_i4_0:				; DATA XREF: .data:00573D84o
		unicode	0, <ldc.i4.0>,0
aLdc_i4_1:				; DATA XREF: .data:00573D98o
		unicode	0, <ldc.i4.1>,0
aLdc_i4_2:				; DATA XREF: .data:00573DACo
		unicode	0, <ldc.i4.2>,0
aLdc_i4_3:				; DATA XREF: .data:00573DC0o
		unicode	0, <ldc.i4.3>,0
aLdc_i4_4:				; DATA XREF: .data:00573DD4o
		unicode	0, <ldc.i4.4>,0
aLdc_i4_5:				; DATA XREF: .data:00573DE8o
		unicode	0, <ldc.i4.5>,0
aLdc_i4_6:				; DATA XREF: .data:00573DFCo
		unicode	0, <ldc.i4.6>,0
aLdc_i4_7:				; DATA XREF: .data:00573E10o
		unicode	0, <ldc.i4.7>,0
aLdc_i4_8:				; DATA XREF: .data:00573E24o
		unicode	0, <ldc.i4.8>,0
aLdc_i4_m1:				; DATA XREF: .data:00573E38o
		unicode	0, <ldc.i4.m1>,0
aLdc_i4_s:				; DATA XREF: .data:00573E4Co
		unicode	0, <ldc.i4.s>,0
aLdftn:					; DATA XREF: .data:00573E60o
		unicode	0, <ldftn>,0
aLdind_i1:				; DATA XREF: .data:00573E74o
		unicode	0, <ldind.i1>,0
aLdind_i2:				; DATA XREF: .data:00573E88o
		unicode	0, <ldind.i2>,0
aLdind_i4:				; DATA XREF: .data:00573E9Co
		unicode	0, <ldind.i4>,0
aLdind_i8:				; DATA XREF: .data:00573EB0o
		unicode	0, <ldind.i8>,0
aLdind_u1:				; DATA XREF: .data:00573EC4o
		unicode	0, <ldind.u1>,0
aLdind_u2:				; DATA XREF: .data:00573ED8o
		unicode	0, <ldind.u2>,0
aLdind_u4:				; DATA XREF: .data:00573EECo
		unicode	0, <ldind.u4>,0
aLdind_r4:				; DATA XREF: .data:00573F00o
		unicode	0, <ldind.r4>,0
aLdind_u8:				; DATA XREF: .data:00573F14o
		unicode	0, <ldind.u8>,0
aLdind_r8:				; DATA XREF: .data:00573F28o
		unicode	0, <ldind.r8>,0
aLdind_i:				; DATA XREF: .data:00573F3Co
		unicode	0, <ldind.i>,0
aLdind_ref:				; DATA XREF: .data:00573F50o
		unicode	0, <ldind.ref>,0
aLdloc:					; DATA XREF: .data:00573F64o
		unicode	0, <ldloc>,0
aLdloc_s:				; DATA XREF: .data:00573F78o
		unicode	0, <ldloc.s>,0
aLdloc_0:				; DATA XREF: .data:00573F8Co
		unicode	0, <ldloc.0>,0
aLdloc_1:				; DATA XREF: .data:00573FA0o
		unicode	0, <ldloc.1>,0
aLdloc_2:				; DATA XREF: .data:00573FB4o
		unicode	0, <ldloc.2>,0
aLdloc_3:				; DATA XREF: .data:00573FC8o
		unicode	0, <ldloc.3>,0
aLdloca:				; DATA XREF: .data:00573FDCo
		unicode	0, <ldloca>,0
aLdloca_s:				; DATA XREF: .data:00573FF0o
		unicode	0, <ldloca.s>,0
aLdnull:				; DATA XREF: .data:00574004o
		unicode	0, <ldnull>,0
aLeave_1:				; DATA XREF: .data:00574018o
		unicode	0, <leave>,0
aLeave_s:				; DATA XREF: .data:0057402Co
		unicode	0, <leave.s>,0
aLocalloc:				; DATA XREF: .data:00574040o
		unicode	0, <localloc>,0
aMul_1:					; DATA XREF: .data:00574054o
		unicode	0, <mul>,0
aMul_ovf:				; DATA XREF: .data:00574068o
		unicode	0, <mul.ovf>,0
aMul_ovf_un:				; DATA XREF: .data:0057407Co
		unicode	0, <mul.ovf.un>,0
aNeg_1:					; DATA XREF: .data:00574090o
		unicode	0, <neg>,0
aNot_2:					; DATA XREF: .data:005740A4o
		unicode	0, <not>,0
aOr_1:					; DATA XREF: .data:005740B8o
		unicode	0, <or>,0
aPop:					; DATA XREF: .data:005740CCo
		unicode	0, <pop>,0
aRem:					; DATA XREF: .data:005740E0o
		unicode	0, <rem>,0
aRem_un:				; DATA XREF: .data:005740F4o
		unicode	0, <rem.un>,0
aRet_3:					; DATA XREF: .data:00574108o
		unicode	0, <ret>,0
aShl_1:					; DATA XREF: .data:0057411Co
		unicode	0, <shl>,0
aShr_1:					; DATA XREF: .data:00574130o
		unicode	0, <shr>,0
aShr_un:				; DATA XREF: .data:00574144o
		unicode	0, <shr.un>,0
aStarg:					; DATA XREF: .data:00574158o
		unicode	0, <starg>,0
aStarg_s:				; DATA XREF: .data:0057416Co
		unicode	0, <starg.s>,0
aStind_i1:				; DATA XREF: .data:00574180o
		unicode	0, <stind.i1>,0
aStind_i2:				; DATA XREF: .data:00574194o
		unicode	0, <stind.i2>,0
aStind_i4:				; DATA XREF: .data:005741A8o
		unicode	0, <stind.i4>,0
aStind_i8:				; DATA XREF: .data:005741BCo
		unicode	0, <stind.i8>,0
aStind_r4:				; DATA XREF: .data:005741D0o
		unicode	0, <stind.r4>,0
aStind_r8:				; DATA XREF: .data:005741E4o
		unicode	0, <stind.r8>,0
aStind_i:				; DATA XREF: .data:005741F8o
		unicode	0, <stind.i>,0
aStind_ref:				; DATA XREF: .data:0057420Co
		unicode	0, <stind.ref>,0
aStloc:					; DATA XREF: .data:00574220o
		unicode	0, <stloc>,0
aStloc_s:				; DATA XREF: .data:00574234o
		unicode	0, <stloc.s>,0
aStloc_0:				; DATA XREF: .data:00574248o
		unicode	0, <stloc.0>,0
aStloc_1:				; DATA XREF: .data:0057425Co
		unicode	0, <stloc.1>,0
aStloc_2:				; DATA XREF: .data:00574270o
		unicode	0, <stloc.2>,0
aStloc_3:				; DATA XREF: .data:00574284o
		unicode	0, <stloc.3>,0
aSub:					; DATA XREF: .data:00574298o
		unicode	0, <sub>,0
aSub_ovf:				; DATA XREF: .data:005742ACo
		unicode	0, <sub.ovf>,0
aSub_ovf_un:				; DATA XREF: .data:005742C0o
		unicode	0, <sub.ovf.un>,0
aSwitch_2:				; DATA XREF: .data:005742D4o
		unicode	0, <switch>,0
aXor_1:					; DATA XREF: .data:005742E8o
		unicode	0, <xor>,0
aBox:					; DATA XREF: .data:005742FCo
		unicode	0, <box>,0
aCallvirt:				; DATA XREF: .data:00574310o
		unicode	0, <callvirt>,0
aCastclass:				; DATA XREF: .data:00574324o
		unicode	0, <castclass>,0
aCpobj:					; DATA XREF: .data:00574338o
		unicode	0, <cpobj>,0
aInitobj:				; DATA XREF: .data:0057434Co
		unicode	0, <initobj>,0
aIsinst:				; DATA XREF: .data:00574360o
		unicode	0, <isinst>,0
aLdelem:				; DATA XREF: .data:00574374o
		unicode	0, <ldelem>,0
aLdelem_i1:				; DATA XREF: .data:00574388o
		unicode	0, <ldelem.i1>,0
aLdelem_i2:				; DATA XREF: .data:0057439Co
		unicode	0, <ldelem.i2>,0
aLdelem_i4:				; DATA XREF: .data:005743B0o
		unicode	0, <ldelem.i4>,0
aLdelem_i8:				; DATA XREF: .data:005743C4o
		unicode	0, <ldelem.i8>,0
aLdelem_u1:				; DATA XREF: .data:005743D8o
		unicode	0, <ldelem.u1>,0
aLdelem_u2:				; DATA XREF: .data:005743ECo
		unicode	0, <ldelem.u2>,0
aLdelem_u4:				; DATA XREF: .data:00574400o
		unicode	0, <ldelem.u4>,0
aLdelem_u8:				; DATA XREF: .data:00574414o
		unicode	0, <ldelem.u8>,0
aLdelem_r4:				; DATA XREF: .data:00574428o
		unicode	0, <ldelem.r4>,0
aLdelem_r8:				; DATA XREF: .data:0057443Co
		unicode	0, <ldelem.r8>,0
aLdelem_i:				; DATA XREF: .data:00574450o
		unicode	0, <ldelem.i>,0
aLdelem_ref:				; DATA XREF: .data:00574464o
		unicode	0, <ldelem.ref>,0
aLdelema:				; DATA XREF: .data:00574478o
		unicode	0, <ldelema>,0
aLdfld:					; DATA XREF: .data:0057448Co
		unicode	0, <ldfld>,0
aLdflda:				; DATA XREF: .data:005744A0o
		unicode	0, <ldflda>,0
aLdlen:					; DATA XREF: .data:005744B4o
		unicode	0, <ldlen>,0
aLdobj:					; DATA XREF: .data:005744C8o
		unicode	0, <ldobj>,0
aLdsfld:				; DATA XREF: .data:005744DCo
		unicode	0, <ldsfld>,0
aLdsflda:				; DATA XREF: .data:005744F0o
		unicode	0, <ldsflda>,0
aLdstr:					; DATA XREF: .data:00574504o
		unicode	0, <ldstr>,0
aLdtoken:				; DATA XREF: .data:00574518o
		unicode	0, <ldtoken>,0
aLdvirtftn:				; DATA XREF: .data:0057452Co
		unicode	0, <ldvirtftn>,0
aMkrefany:				; DATA XREF: .data:00574540o
		unicode	0, <mkrefany>,0
aNewarr:				; DATA XREF: .data:00574554o
		unicode	0, <newarr>,0
aNewobj:				; DATA XREF: .data:00574568o
		unicode	0, <newobj>,0
aRefanytype:				; DATA XREF: .data:0057457Co
		unicode	0, <refanytype>,0
aRefanyval:				; DATA XREF: .data:00574590o
		unicode	0, <refanyval>,0
aRethrow:				; DATA XREF: .data:005745A4o
					; .data:005746BCo
		unicode	0, <rethrow>,0
aSizeof:				; DATA XREF: .data:005745B8o
		unicode	0, <sizeof>,0
aStelem:				; DATA XREF: .data:005745CCo
		unicode	0, <stelem>,0
aStelem_i1:				; DATA XREF: .data:005745E0o
		unicode	0, <stelem.i1>,0
aStelem_i2:				; DATA XREF: .data:005745F4o
		unicode	0, <stelem.i2>,0
aStelem_i4:				; DATA XREF: .data:00574608o
		unicode	0, <stelem.i4>,0
aStelem_i8:				; DATA XREF: .data:0057461Co
		unicode	0, <stelem.i8>,0
aStelem_r4:				; DATA XREF: .data:00574630o
		unicode	0, <stelem.r4>,0
aStelem_r8:				; DATA XREF: .data:00574644o
		unicode	0, <stelem.r8>,0
aStelem_i:				; DATA XREF: .data:00574658o
		unicode	0, <stelem.i>,0
aStelem_ref:				; DATA XREF: .data:0057466Co
		unicode	0, <stelem.ref>,0
aStfld:					; DATA XREF: .data:00574680o
		unicode	0, <stfld>,0
aStobj:					; DATA XREF: .data:00574694o
		unicode	0, <stobj>,0
aStsfld:				; DATA XREF: .data:005746A8o
		unicode	0, <stsfld>,0
aUnbox:					; DATA XREF: .data:005746D0o
		unicode	0, <unbox>,0
aUnbox_any:				; DATA XREF: .data:005746E4o
		unicode	0, <unbox.any>,0
aConstrained_:				; DATA XREF: .data:005746F8o
		unicode	0, <constrained.>,0
aNo_:					; DATA XREF: .data:0057470Co
		unicode	0, <no.>,0
aReadonly_:				; DATA XREF: .data:00574720o
		unicode	0, <readonly.>,0
aTail_:					; DATA XREF: .data:00574734o
		unicode	0, <tail.>,0
aUnaligned_:				; DATA XREF: .data:00574748o
		unicode	0, <unaligned.>,0
aVolatile_:				; DATA XREF: .data:0057475Co
		unicode	0, <volatile.>,0
; wchar_t asc_5755F0
asc_5755F0:				; DATA XREF: .text:004D197Do
		unicode	0, <\=\=>,0
; wchar_t asc_5755F6
asc_5755F6:				; DATA XREF: .text:loc_4D1B72o
		unicode	0, < >,0
aCommandCross_0:			; DATA XREF: .text:004D1BB8o
		unicode	0, <Command crosses end of code block>,0
aUnknownComma_1:			; DATA XREF: .text:004D1BF4o
		unicode	0, <Unknown command>,0
; wchar_t a02x06x
a02x06x:				; DATA XREF: .text:004D1DA5o
		unicode	0, <\{!%02X\}!%06X>,0
aUnicode_3:				; DATA XREF: .text:004D1DC7o
		unicode	0, <UNICODE >,0
; wchar_t aI__8
aI__8:					; DATA XREF: .text:004D1E1Do
		unicode	0, <!%i.>,0
; wchar_t asc_57568E
asc_57568E:				; DATA XREF: .text:004D1EC0o
		unicode	0, <-!%X>,0
; wchar_t a08x08x_0
a08x08x_0:				; DATA XREF: .text:004D1F4Do
		unicode	0, <!%08X !%08X>,0
; wchar_t a____16
;a!?!?!?_16:				; DATA XREF: .text:004D2056o
		unicode	0, <!?!?!?>,0
aInternalOlly_0:			; DATA XREF: .text:004D2110o
		unicode	0, <Internal OllyDbg error>,0
		dd 3F800000h
word_5756E4	dw 0			; DATA XREF: .text:004D21F7o
		unicode	0, < >,0
aHello_SpeechIn:			; DATA XREF: .text:004D218Bo
		unicode	0, <Hello. Speech interface is on.>,0
aPlus:					; DATA XREF: .text:004D241Co
		unicode	0, <plus >,0
aFollows:				; DATA XREF: .text:004D2459o
		unicode	0, <follows >,0
aMinus_0:				; DATA XREF: .text:004D2492o
		unicode	0, <minus >,0
aTimes:					; DATA XREF: .text:004D24CBo
		unicode	0, <times >,0
aSlash:					; DATA XREF: .text:004D2504o
		unicode	0, <slash >,0
aPercent:				; DATA XREF: .text:004D253Do
		unicode	0, <percent >,0
aBackslash:				; DATA XREF: .text:004D2576o
		unicode	0, <backslash >,0
aPredictedAs:				; DATA XREF: .text:004D25B6o
		unicode	0, <predicted as >,0
aEqualTo:				; DATA XREF: .text:004D25F6o
		unicode	0, <equal to >,0
aNotEqualTo:				; DATA XREF: .text:004D2636o
		unicode	0, <not equal to >,0
aEquals:				; DATA XREF: .text:004D266Fo
		unicode	0, <equals >,0
aMemory_0:				; DATA XREF: .text:004D26A8o
		unicode	0, <memory >,0
aLogicalAnd:				; DATA XREF: .text:004D26F6o
		unicode	0, <logical and >,0
aLogicalOr:				; DATA XREF: .text:004D276Fo
		unicode	0, <logical or >,0
aExclusiveOr:				; DATA XREF: .text:004D27F8o
		unicode	0, <exclusive or >,0
aEllipsis:				; DATA XREF: .text:004D283Fo
		unicode	0, <ellipsis >,0
aShiftLeft:				; DATA XREF: .text:004D287Fo
		unicode	0, <shift left >,0
aLessThanOrEqua:			; DATA XREF: .text:004D28BFo
		unicode	0, <less than or equal >,0
aLessThan:				; DATA XREF: .text:004D2901o
		unicode	0, <less than >,0
aShiftRight:				; DATA XREF: .text:004D294Fo
		unicode	0, <shift right >,0
aGreaterThanOrE:			; DATA XREF: .text:004D298Fo
		unicode	0, <greater than or equal >,0
aGreaterThan:				; DATA XREF: .text:004D29D1o
		unicode	0, <greater than >,0
; wchar_t aSilenceMsec150
aSilenceMsec150:			; DATA XREF: .text:004D2A32o
		dw 3Ch
		unicode	0, <silence msec=\=150\=/>
		dw 3Eh,	0
; wchar_t aContextIdNumbe
aContextIdNumbe:			; DATA XREF: .text:004D2C83o
		dw 3Ch
		unicode	0, <context ID = \=number_cardinal\=>
		dw 3Eh,	0
; wchar_t aContext
aContext:				; DATA XREF: .text:004D2CCDo
		dw 3Ch
		unicode	0, </context>
		dw 3Eh,	0
; wchar_t aContextIdNum_0
aContextIdNum_0:			; DATA XREF: .text:004D2D00o
		dw 3Ch
		unicode	0, <context ID = \=number_decimal\=>
		dw 3Eh,	0
aTimesTenToThe:				; DATA XREF: .text:004D2D67o
		unicode	0, <times ten to the >,0
aPower:					; DATA XREF: .text:004D2E2Bo
		unicode	0, <power >,0
; wchar_t aAsm
aAsm:					; DATA XREF: .text:004D2E6Bo
		unicode	0, <ASM>,0
aGoodBye:				; DATA XREF: .text:004D305Fo
		unicode	0, <Good-bye\:>,0
		db    0
		db    0
; const	WCHAR aRes_guids
aRes_guids:				; DATA XREF: .text:004D3255o
		unicode	0, <RES_GUIDS>,0
; char aGuids[]
aGuids		db 'GUIDS',0            ; DATA XREF: .text:004D3250o
; const	WCHAR aInterface_0
aInterface_0:				; DATA XREF: .text:004D34A2o
		unicode	0, <Interface>,0
; const	WCHAR aClsid
aClsid:					; DATA XREF: .text:004D34C3o
		unicode	0, <CLSID>,0
; const	WCHAR aTypelib
aTypelib:				; DATA XREF: .text:004D34DFo
		unicode	0, <TypeLib>,0
; wchar_t aI_I_0
aI_I_0:					; DATA XREF: .text:004D35ABo
		unicode	0, <!%i.!%i>,0
; wchar_t a08x04x04x02x02
a08x04x04x02x02:			; DATA XREF: .text:004D3612o
		unicode	0, <{!%08X-!%04X-!%04X-!%02X!%02X-!%02X!%02X!%02X!%02X!%02X!%02X}>,0
; wchar_t asc_575AF0
asc_575AF0:				; DATA XREF: .text:004D3839o
		unicode	0, <\\>,0
; wchar_t a_arg_0
a_arg_0:				; DATA XREF: .text:004D387Eo
		unicode	0, <.arg>,0
aOutOfMemoryU_0:			; DATA XREF: .text:004D38B9o
		unicode	0, <Out of memory - unable to process GUIDs in >
		dw 27h
		unicode	0, <!%s.arg>
		dw 27h,	0
aFileS_argHas_0:			; DATA XREF: .text:004D3903o
		unicode	0, <File >
		dw 27h
		unicode	0, <!%s.arg>
		dw 27h
		unicode	0, < has unsupported UNICODE big endian format>,0
aLoadingGuidsFr:			; DATA XREF: .text:004D39E6o
		unicode	0, <Loading GUIDs from >
		dw 27h
		unicode	0, <!%s.arg>
		dw 27h,	0
aGuidExpected:				; DATA XREF: .text:004D3A47o
		unicode	0, <GUID expected>,0
; wchar_t a08x04x04x02x_0
a08x04x04x02x_0:			; DATA XREF: .text:004D3A82o
		unicode	0, <!%08X-!%04X-!%04X-!%02X!%02X-!%02X!%02X!%02X!%02X!%02X!%02X>,0
aInvalidGuid:				; DATA XREF: .text:004D3A9Bo
		unicode	0, <Invalid GUID>,0
aGuidNameExpect:			; DATA XREF: .text:004D3ACAo
		unicode	0, <GUID name expected>,0
aLowMemoryPro_0:			; DATA XREF: .text:004D3B16o
		unicode	0, <Low memory, processing interrupted>,0
aExtraCharact_3:			; DATA XREF: .text:004D3C2Ao
		unicode	0, <Extra characters on line>,0
aLineI_SS:				; DATA XREF: .text:004D3C5Do
		unicode	0, <  Line !%i. !%s \{!%s\}>,0
aLineI_S:				; DATA XREF: .text:004D3C7Fo
		unicode	0, <  Line !%i. !%s>,0
aUnableToCrea_8:			; DATA XREF: .text:004D3CD3o
		unicode	0, <  Unable to create file >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
aErrorSavingDat:			; DATA XREF: .text:004D3D50o
		unicode	0, <  Error saving data to file >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
aFileSCreated_0:			; DATA XREF: .text:004D3D6Bo
		unicode	0, <  File >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, < created successfully>,0
aTotalNumberOfG:			; DATA XREF: .text:004D3D8Ao
		unicode	0, <  Total number of GUIDs is !%i>,0
; wchar_t aGuid_1
aGuid_1:				; DATA XREF: .text:004D3EB8o
		unicode	0, <GUID >,0
stru_575E8C	dd 3D6F5F60h		; Data1	; DATA XREF: .text:004D4779o
		dw 7538h		; Data2
		dw 11D3h		; Data3
		db  8Dh, 5Bh,	0, 10h,	4Bh, 35h,0E7h,0EFh; Data4
stru_575E9C	dd 250E5EEAh		; Data1	; DATA XREF: .text:004D4797o
		dw 0DB5Ch		; Data2
		dw 4C76h		; Data3
		db 0B6h,0F3h, 8Ch, 46h,0F1h, 2Eh, 32h,	 3; Data4
stru_575EAC	dd 5263E909h		; Data1	; DATA XREF: .text:004D47B8o
		dw 8CB5h		; Data2
		dw 11D3h		; Data3
		db 0BDh, 2Fh,	0,   0,0F8h,   8, 49h,0BDh; Data4
stru_575EBC	dd 0AD1B3588h		; Data1	; DATA XREF: .text:004D427Co
		dw 0EF0h		; Data2
		dw 4744h		; Data3
		db 0A4h, 96h,0AAh,   9,0A9h,0F8h,   3, 71h; Data4
aUnableToGet_ne:			; DATA XREF: .text:004D428Ao
		unicode	0, <Unable to get .NET debugging interface ICorDebugProcess2.>
		unicode	0, < This makes debugging practically impossible. For example>
		unicode	0, <, any breakpoint \{also temporary\} may lead to deadlock. Y>
		unicode	0, <ou may try to continue, but I recommend to restart in nat>
		unicode	0, <ive debugging mode.>,0
; wchar_t aS_40
aS_40:					; DATA XREF: .text:004D4368o
		unicode	0, <!%s>,0
		db 0
		db    0
off_5760C4	dd offset __pure_error_	; DATA XREF: .text:004D3FE5o
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
off_5760D4	dd offset __pure_error_	; DATA XREF: .text:004D3FD7o
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
off_576100	dd offset __pure_error_	; DATA XREF: .text:004D3FC4o
		dd offset __pure_error_
		dd offset __pure_error_
off_57610C	dd offset __pure_error_	; DATA XREF: .text:004D3FCAo
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
		dd offset __pure_error_
off_576180	dd offset loc_4D4744	; DATA XREF: .text:004D3FECo
		dd offset loc_4D47F0
		dd offset loc_4D4808
		dd offset loc_4D4820
		dd offset loc_4D4838
		dd offset loc_4D4854
		dd offset loc_4D486C
		dd offset loc_4D4888
		dd offset loc_4D48A4
		dd offset loc_4D48C0
		dd offset loc_4D48D8
		dd offset loc_4D48F0
		dd offset loc_4D4934
		dd offset loc_4D4950
		dd offset loc_4D4C74
		dd offset loc_4D4C90
		dd offset loc_4D4CAC
		dd offset loc_4D4CC8
		dd offset loc_4D4CE4
		dd offset loc_4D4D00
		dd offset loc_4D4D1C
		dd offset loc_4D4D3C
		dd offset loc_4D4D58
		dd offset loc_4D4D70
		dd offset loc_4D4D8C
		dd offset loc_4D4DA8
		dd offset loc_4D4DC0
		dd offset loc_4D4DDC
		dd offset loc_4D4DF8
		dd offset loc_4D4E14
		dd offset loc_4D4E30
		dd offset loc_4D4E4C
		dd offset loc_4D4E68
		dd offset loc_4D4E84
		dd offset loc_4D4EA0
		dd offset loc_4D4EBC
		dd offset loc_4D4ED8
		dd offset loc_4D4EF0
off_576218	dd offset loc_4D5004	; DATA XREF: .text:004D3FF2o
		dd offset loc_4D4FFA
		dd offset loc_4D4FF0
		dd offset loc_4D4FE6
		dd offset loc_4D4FDC
		dd offset loc_4D4FD2
		dd offset loc_4D4FC8
		dd offset loc_4D4FBE
		dd offset loc_4D4FB4
		dd offset loc_4D4FAA
		dd offset loc_4D4FA0
off_576244	dd offset loc_4D4F96	; DATA XREF: .text:004D3FF9o
		dd offset loc_4D4F8C
		dd offset loc_4D4F82
		dd offset loc_4D4F78
stru_576254	t_menu <offset asc_576420, 0, 0, offset loc_4D515C, 0, <0>>; 0
		t_menu <offset aUpdate_6, offset aUpdateConten_2, 0CAh, \ ; \=!\=
   offset loc_4D519C, 0, <0>>; 1
		t_menu <offset aFollowWinproc, offset aFollowWinpro_0, 230h, \
   offset loc_4D51EC, 0, <0>>; 2
		t_menu <offset aBreakpointOnWi, offset aSetUnconditi_3, 118h, \
   offset loc_4D5258, 0, <0>>; 3
		t_menu <offset aConditio, offset aSetOrEditCon_7, 119h, \
   offset loc_4D5258, 0, <1>>; 4
		t_menu <offset aConditionalL_8, offset aSetOrEditCo_19, 11Ah, \
   offset loc_4D5258, 0, <2>>; 5
		t_menu <offset aRemoveBreak_18, offset aRemoveBreak_19, 118h, \
   offset loc_4D5258, 0, <3>>; 6
		t_menu <offset aFollowClasspro, offset aFollowClassp_0, 231h, \
   offset loc_4D51EC, 0, <10h>>; 7
		t_menu <offset aBreakpointOnCl, offset aSetUncondit_10, 0, \
   offset loc_4D5258, 0, <10h>>; 8
		t_menu <offset aConditio, offset aSetOrEditCo_22, 0, \
   offset loc_4D5258, 0, <11h>>; 9
		t_menu <offset aConditionalL_8, offset aSetOrEditCo_23, 0, \
   offset loc_4D5258, 0, <12h>>; 10
		t_menu <offset aRemoveBreak_18, offset aRemoveBreak_20, 0, \
   offset loc_4D5258, 0, <13h>>; 11
		t_menu <offset aWindows, offset word_5763A4, 0, 0, 0, <0>>; 12
		t_menu <offset asc_5768F0, offset word_5763A4, 0, 0, \
   offset stru_518B94, <0>>; 13
; wchar_t word_5763A4
word_5763A4	dw 0			; DATA XREF: .text:loc_4D534Co
aUnableToSet_11:			; DATA XREF: .text:004D537Eo
		unicode	0, <Unable to set breakpoint>,0
; wchar_t a_intern__winpr
a_intern__winpr:			; DATA XREF: .text:004D53EBo
		unicode	0, <_INTERN_.WINPROCW>,0
; wchar_t a_intern__win_0
a_intern__win_0:			; DATA XREF: .text:loc_4D53F8o
		unicode	0, <_INTERN_.WINPROCA>,0
asc_576420:				; DATA XREF: .data:stru_576254o
		unicode	0, <\:>,0
aUpdate_6:				; DATA XREF: .data:stru_576254o
		unicode	0, <\AUpdate>,0
aUpdateConten_2:			; DATA XREF: .data:stru_576254o
		unicode	0, <Update contents of the list of windows>,0
aFollowWinproc:				; DATA XREF: .data:stru_576254o
		unicode	0, <|Follow WinProc>,0
aFollowWinpro_0:			; DATA XREF: .data:stru_576254o
		unicode	0, <Follow WinProc in Disassembler>,0
aBreakpointOnWi:			; DATA XREF: .data:stru_576254o
		unicode	0, <Breakpoint on WinProc>,0
aSetUnconditi_3:			; DATA XREF: .data:stru_576254o
		unicode	0, <Set unconditional breakpoint on WinProc>,0
aConditio:				; DATA XREF: .data:stru_576254o
		unicode	0, <Conditio>
aNalBreakpoint_:
		unicode	0, <nal breakpoint...>,0
aSetOrEditCon_7:			; DATA XREF: .data:stru_576254o
		unicode	0, <Set or edit conditional breakpoint on WinProc>,0
aConditionalL_8:			; DATA XREF: .data:stru_576254o
		unicode	0, <Conditional log...>,0
aSetOrEditCo_19:			; DATA XREF: .data:stru_576254o
		unicode	0, <Set or edit conditional logging breakpoint on WinProc>,0
aRemoveBreak_18:			; DATA XREF: .data:stru_576254o
		unicode	0, <Remove breakpoint>,0
aRemoveBreak_19:			; DATA XREF: .data:stru_576254o
		unicode	0, <Remove breakpoint from WinProc>,0
aFollowClasspro:			; DATA XREF: .data:stru_576254o
		unicode	0, <|Follow ClassProc>,0
aFollowClassp_0:			; DATA XREF: .data:stru_576254o
		unicode	0, <Follow ClassProc in Disassembler>,0
aBreakpointOnCl:			; DATA XREF: .data:stru_576254o
		unicode	0, <Breakpoint on ClassProc>,0
aSetUncondit_10:			; DATA XREF: .data:stru_576254o
		unicode	0, <Set unconditional breakpoint on ClassProc>,0
aSetOrEditCo_22:			; DATA XREF: .data:stru_576254o
		unicode	0, <Set or edit conditional breakpoint on ClassProc>,0
aSetOrEditCo_23:			; DATA XREF: .data:stru_576254o
		unicode	0, <Set or edit conditional logging breakpoint on ClassProc>,0
aRemoveBreak_20:			; DATA XREF: .data:stru_576254o
		unicode	0, <Remove breakpoint from ClassProc>,0
aWindows:				; DATA XREF: .data:stru_576254o
		unicode	0, <|*WINDOWS>,0
asc_5768F0:				; DATA XREF: .data:stru_576254o
		unicode	0, <|>,0
aTopmost:				; DATA XREF: .text:004D5DBBo
		unicode	0, <Topmost>,0
aDesktop:				; DATA XREF: .text:004D5DECo
		unicode	0, <Desktop>,0
a08xMenu:				; DATA XREF: .text:004D5EDBo
		unicode	0, <!%08X \{menu\}>,0
; wchar_t aI__5
aI__5:					; DATA XREF: .text:004D5EFBo
		unicode	0, <!%i. >,0
; wchar_t a08x_10
a08x_10:				; DATA XREF: .text:004D5F28o
		unicode	0, <\{!%08X\}>,0
; wchar_t aUnicode_4
aUnicode_4:				; DATA XREF: .text:004D5F43o
		unicode	0, <UNICODE>,0
; wchar_t aAscii_7
aAscii_7:				; DATA XREF: .text:loc_4D5F5Do
		unicode	0, <ASCII>,0
; wchar_t aButton_0
aButton_0:				; DATA XREF: .text:004D5FB4o
		unicode	0, <BUTTON>,0
; wchar_t type
atype:					; DATA XREF: .text:004D5FD8o
		unicode	0, <BS_X>,0
; wchar_t aStatic_1
aStatic_1:				; DATA XREF: .text:loc_4D5FF1o
		unicode	0, <STATIC>,0
; wchar_t aSs_x
aSs_x:					; DATA XREF: .text:004D6015o
		unicode	0, <SS_X>,0
; wchar_t aEdit_1
aEdit_1:				; DATA XREF: .text:loc_4D602Eo
		unicode	0, <EDIT>,0
; wchar_t aEs_x
aEs_x:					; DATA XREF: .text:004D6052o
		unicode	0, <ES_X>,0
; wchar_t aRichedit
aRichedit:				; DATA XREF: .text:loc_4D606Bo
		unicode	0, <RICHEDIT>,0
; wchar_t aRichedit_class
aRichedit_class:			; DATA XREF: .text:loc_4D60A8o
		unicode	0, <RICHEDIT_CLASS>,0
; wchar_t aScrollbar
aScrollbar:				; DATA XREF: .text:loc_4D60E5o
		unicode	0, <SCROLLBAR>,0
; wchar_t aSbs_x
aSbs_x:					; DATA XREF: .text:004D6109o
		unicode	0, <SBS_X>,0
; wchar_t aCombobox_0
aCombobox_0:				; DATA XREF: .text:loc_4D6122o
		unicode	0, <COMBOBOX>,0
; wchar_t aCbs_x
aCbs_x:					; DATA XREF: .text:004D6146o
		unicode	0, <CBS_X>,0
; wchar_t a32770_0
a32770_0:				; DATA XREF: .text:loc_4D615Fo
		unicode	0, <#32770>,0
; wchar_t aDs_x
aDs_x:					; DATA XREF: .text:004D6183o
		unicode	0, <DS_X>,0
; wchar_t aDialog
aDialog:				; DATA XREF: .text:loc_4D619Co
		unicode	0, <DIALOG>,0
; wchar_t aListbox_0
aListbox_0:				; DATA XREF: .text:loc_4D61D6o
		unicode	0, <LISTBOX>,0
; wchar_t aLbs_x
aLbs_x:					; DATA XREF: .text:004D61FAo
		unicode	0, <LBS_X>,0
; wchar_t aCombolbox
aCombolbox:				; DATA XREF: .text:loc_4D6210o
		unicode	0, <COMBOLBOX>,0
; wchar_t aWs_x
aWs_x:					; DATA XREF: .text:004D627Co
		unicode	0, <WS_X>,0
; wchar_t aWs_ex_x
aWs_ex_x:				; DATA XREF: .text:004D631Ao
		unicode	0, <WS_EX_X>,0
; wchar_t a32768
a32768:					; DATA XREF: .text:004D6435o
		unicode	0, <#32768>,0
; wchar_t a32769
a32769:					; DATA XREF: .text:loc_4D6474o
		unicode	0, <#32769>,0
aDesktopWindow:				; DATA XREF: .text:004D648Co
		unicode	0, < \{desktop window\}>,0
aDialogBox:				; DATA XREF: .text:004D64C8o
		unicode	0, < \{dialog box\}>,0
; wchar_t a32771
a32771:					; DATA XREF: .text:loc_4D64ECo
		unicode	0, <#32771>,0
aTaskSwitchWind:			; DATA XREF: .text:004D6504o
		unicode	0, < \{task switch window\}>,0
aWindows_0:
		unicode	0, <Windows>,0
aHandle_0:
		unicode	0, <Handle>,0
aWindowSHandle:
		unicode	0, <Window>
		dw 27h
		unicode	0, <s handle>,0
aText_2:
		unicode	0, <Text>,0
aWindowSTitleOr:
		unicode	0, <Window>
		dw 27h			; 6
		unicode	0, <s title or text>,0
aParent_0:
		unicode	0, <Parent>,0
aHandleOfParent:
		unicode	0, <Handle of parent window>,0
aAddressOfWindo:
		unicode	0, <Address of window callback function>,0
aIdMenu:
		unicode	0, <ID/menu>,0
aIdentifierOfCh:
		unicode	0, <Identifier of child window or menu handle>,0
aType_4:
		unicode	0, <Type>,0
aWindowTypeAsci:
		unicode	0, <Window type \{ASCII or UNICODE\}>,0
aStyle:
		unicode	0, <Style>,0
aWindowStyleSet:
		unicode	0, <Window style, set of WS_xxx>,0
aExtstyle:
		unicode	0, <ExtStyle>,0
aExtendedStyleS:
		unicode	0, <Extended style, set of WS_EX_xxx>,0
aThread_3:
		unicode	0, <Thread>,0
aIdOfThreadThat:
		unicode	0, <ID of thread that owns the window>,0
aClsproc:
		unicode	0, <ClsProc>,0
aAddressOfDefau:
		unicode	0, <Address of default \{class\} window function>,0
aClsname:
		unicode	0, <ClsName>,0
aClassName:
		unicode	0, <Class name>,0
aIco_w:
		unicode	0, <ICO_W>,0
aListOfWindow_1:
		unicode	0, <List of windows>,0
		db    0
		db    0
stru_576E64	t_menu <offset asc_57711A, 0, 0, offset loc_4D68E0, 0, <0>>; 0
		t_menu <offset aUpdate_8, offset aScanCodeOfAllM, 0CAh, \ ; \=\=
   offset loc_4D6994, 0, <0>>; 1
		t_menu <offset aFollowInDis_10, offset aFollowSelec_11, 28Ah, \
   offset loc_4D69F4, 0, <0>>; 2
		t_menu <offset aFollowPrevio_1, offset aFollowPrevio_2, 28Bh, \
   offset loc_4D69F4, 0, <1>>; 3
		t_menu <offset aFollowNext, offset aFollowNextPa_0, 28Ch, \
   offset loc_4D69F4, 0, <2>>; 4
		t_menu <offset aApplyPatch_0, offset aApplyPatchToMe, 28Dh, \
   offset loc_4D6AE8, 0, <0>>; 5
		t_menu <offset aRestoreOrigi_0, offset aRestoreOrigi_0, 28Eh, \
   offset loc_4D6AE8, 0, <1>>; 6
		t_menu <offset aDeleteRecord, offset aDeleteOldPatch, 28Fh, \
   offset loc_4D6CB8, 0, <0>>; 7
		t_menu <offset aPatches_0, offset aEipInsideThePa+27h, 0, 0, 0, <0>>; 8
		t_menu <offset asc_5773D2, offset aEipInsideThePa+27h, 0, 0, \
   offset stru_518B94, <0>>; 9
aEipInsideThePa:			; DATA XREF: .text:004D6BC8o
		unicode	0, <EIP inside the patch>,0
aThereIsAtLeast:			; DATA XREF: .text:004D6BBCo
		unicode	0, <There is at least one thread with EIP pointing to the pat>
		unicode	0, <ch location. Modification of code may lead to invalid fun>
		unicode	0, <ctioning or crash of the debugged application. Do you sti>
		unicode	0, <ll want to apply or restore patch!?>,0
asc_57711A:				; DATA XREF: .data:stru_576E64o
		unicode	0, <\:>,0
aUpdate_8:				; DATA XREF: .data:stru_576E64o
		unicode	0, <\AUpdate>,0
aScanCodeOfAllM:			; DATA XREF: .data:stru_576E64o
		unicode	0, <Scan code of all modules for possible m>
aOdifications:
		unicode	0, <odifications>,0
aFollowInDis_10:			; DATA XREF: .data:stru_576E64o
		unicode	0, <Follow in Disassembler>,0
aFollowSelec_11:			; DATA XREF: .data:stru_576E64o
		unicode	0, <Follow selected patch in CPU Disassembler>,0
aFollowPrevio_1:			; DATA XREF: .data:stru_576E64o
		unicode	0, <Follow previous>,0
aFollowPrevio_2:			; DATA XREF: .data:stru_576E64o
		unicode	0, <Follow previous patch in CPU Disassembler>,0
aFollowNext:				; DATA XREF: .data:stru_576E64o
		unicode	0, <Follow next>,0
aFollowNextPa_0:			; DATA XREF: .data:stru_576E64o
		unicode	0, <Follow next patch in CPU Disassembler>,0
aApplyPatch_0:				; DATA XREF: .data:stru_576E64o
		unicode	0, <|Apply patch>,0
aApplyPatchToMe:			; DATA XREF: .data:stru_576E64o
		unicode	0, <Apply patch to memory>,0
aRestoreOrigi_0:			; DATA XREF: .data:stru_576E64o
		unicode	0, <Restore original code>,0
aDeleteRecord:				; DATA XREF: .data:stru_576E64o
		unicode	0, <Delete record>,0
aDeleteOldPatch:			; DATA XREF: .data:stru_576E64o
		unicode	0, <Delete old patch from the table>,0
aPatches_0:				; DATA XREF: .data:stru_576E64o
		unicode	0, <|*PATCHES>,0
asc_5773D2:				; DATA XREF: .data:stru_576E64o
		unicode	0, <|>,0
; wchar_t a3i_
a3i_:					; DATA XREF: .text:004D7137o
		unicode	0, <!%3i.>,0
aInvalid:				; DATA XREF: .text:004D716Do
		unicode	0, <Invalid>,0
aApplied:				; DATA XREF: .text:004D71AFo
		unicode	0, <Applied>,0
aModified:				; DATA XREF: .text:004D71F8o
		unicode	0, <Modified>,0
aPatches_2:
		unicode	0, <Patches>,0
aAddress_9:
		unicode	0, <Address>,0
aPatchAddress:
		unicode	0, <Patch address>,0
aModule_8:
		unicode	0, <Module>,0
aNameOfTheMod_3:
		unicode	0, <Name of the module to which this patch belongs>,0
aSize_1:
		unicode	0, <Size>,0
aSizeOfThePatch:
		unicode	0, <Size of the patch, bytes \{decimal\}>,0
aStatus_2:
		unicode	0, <Status>,0
aStatusOfThePat:
		unicode	0, <Status of the patch>,0
aModifiedComm_2:
		unicode	0, <Modified command>,0
aFirstModifie_1:
		unicode	0, <First modified command>,0
aOriginalComm_1:
		unicode	0, <Original command>,0
aFirstOrigina_1:
		unicode	0, <First original command>,0
aComments_3:
		unicode	0, <Comments>,0
aIco_p_0:
		unicode	0, <ICO_P>,0
		db    0
		db    0
stru_577600	t_menu <offset asc_577788, 0, 0, offset loc_4D75C0, 0, <0>>; 0
		t_menu <offset aUpdate_9, offset aUpdateConten_3, 0CAh, \ ; \=!\=
   offset loc_4D7664, 0, <0>>; 1
		t_menu <offset aSelectThread_1, offset aSelectThread_2, 0, 0, \
   offset dword_586216, <0>>; 2
		t_menu <offset aFollowLinkInCp, offset aFollowLinkToEx, 0, \
   offset loc_4D76A0, 0, <0>>; 3
		t_menu <offset aFollowLinkIn_0, offset aFollowLinkToHa, 0, \
   offset loc_4D76A0, 0, <1>>; 4
		t_menu <offset aFollowHandler, offset aFollowExceptio, 12Dh, \
   offset loc_4D7758, 0, <0>>; 5
		t_menu <offset aBreakpointOnHa, offset aSetUncondit_11, 118h, \
   offset loc_4D779C, 0, <0>>; 6
		t_menu <offset aConditionalB_1, offset aSetOrEditCo_24, 119h, \
   offset loc_4D779C, 0, <1>>; 7
		t_menu <offset aConditionalL_5, offset aSetOrEditCon_8, 11Ah, \
   offset loc_4D779C, 0, <2>>; 8
		t_menu <offset aRemoveBreakp_9, offset aRemoveBreak_10, 118h, \
   offset loc_4D779C, 0, <3>>; 9
		t_menu <offset aSeh, offset word_577720, 0, 0, 0, <0>>;	10
		t_menu <offset asc_577C62, offset word_577720, 0, 0, \
   offset stru_518B94, <0>>; 11
; wchar_t word_577720
word_577720	dw 0			; DATA XREF: .text:loc_4D7869o
aUnableToSet_12:			; DATA XREF: .text:004D789Eo
		unicode	0, <Unable to set breakpoint>,0
; wchar_t a_intern__veh
a_intern__veh:				; DATA XREF: .text:004D790Co
		unicode	0, <_INTERN_.VEH>,0
; wchar_t a_intern__seh_0
a_intern__seh_0:			; DATA XREF: .text:loc_4D7919o
		unicode	0, <_INTERN_.SEH>,0
asc_577788:				; DATA XREF: .data:stru_577600o
		unicode	0, <\:>,0
aUpdate_9:				; DATA XREF: .data:stru_577600o
		unicode	0, <\AUpdate>,0
aUpdateConten_3:			; DATA XREF: .data:stru_577600o
		unicode	0, <Update contents of the VEH/SEH chain window>,0
aSelectThread_1:			; DATA XREF: .data:stru_577600o
		unicode	0, <Select thread>,0
aSelectThread_2:			; DATA XREF: .data:stru_577600o
		unicode	0, <Select thread to display>,0
aFollowLinkInCp:			; DATA XREF: .data:stru_577600o
		unicode	0, <|Follow link in CPU Dump>,0
aFollowLinkToEx:			; DATA XREF: .data:stru_577600o
		unicode	0, <Follow link to exception handler \{LIST_ENTRY\} in CPU Dump>
aFollowLinkIn_0:			; DATA XREF: .data:stru_577600o
		unicode	0, <Follow link in CPU Stack>,0
aFollowLinkToHa:			; DATA XREF: .data:stru_577600o
		unicode	0, <Follow link to handler \{EXCEPTION_REGISTRATION\} in CPU St>
		unicode	0, <ack>,0
aFollowHandler:				; DATA XREF: .data:stru_577600o
		unicode	0, <Follow handler>,0
aFollowExceptio:			; DATA XREF: .data:stru_577600o
		unicode	0, <Follow exception handler in Disassembler>,0
aBreakpointOnHa:			; DATA XREF: .data:stru_577600o
		unicode	0, <|Breakpoint on handler>,0
aSetUncondit_11:			; DATA XREF: .data:stru_577600o
		unicode	0, <Set unconditional breakpoint on exception handler>,0
aConditionalB_1:			; DATA XREF: .data:stru_577600o
		unicode	0, <Conditional breakpoint...>,0
aSetOrEditCo_24:			; DATA XREF: .data:stru_577600o
		unicode	0, <Set or edit conditional breakpoint on exception handler>,0
aConditionalL_5:			; DATA XREF: .data:stru_577600o
		unicode	0, <Conditional log...>,0
aSetOrEditCon_8:			; DATA XREF: .data:stru_577600o
		unicode	0, <Set or edit conditional logging breakpoint on exception h>
		unicode	0, <andler>,0
aRemoveBreakp_9:			; DATA XREF: .data:stru_577600o
		unicode	0, <Remove breakpoint>,0
aRemoveBreak_10:			; DATA XREF: .data:stru_577600o
		unicode	0, <Remove breakpoint from exception handler>,0
aSeh:					; DATA XREF: .data:stru_577600o
		unicode	0, <|*SEH>,0
asc_577C62:				; DATA XREF: .data:stru_577600o
		unicode	0, <|>,0
; wchar_t aI_10
aI_10:					; DATA XREF: .text:004D79DCo
		unicode	0, <!%i>,0
aVectored:				; DATA XREF: .text:004D79F8o
		unicode	0, <Vectored>,0
aInvalid_1:				; DATA XREF: .text:004D7A57o
		unicode	0, <Invalid>,0
; wchar_t aSehChain
aSehChain:				; DATA XREF: .text:004D7DFDo
		unicode	0, <SEH chain>,0
aVehSehChain_0:				; DATA XREF: .text:loc_4D7E21o
		unicode	0, <VEH/SEH chain>,0
aOf_1:					; DATA XREF: .text:004D7E61o
		unicode	0, < of >,0
aIndex:					; DATA XREF: .text:004D7F0Do
		unicode	0, <Index>,0
aIndexOfTheHand:			; DATA XREF: .text:004D7F19o
		unicode	0, <Index of the handler, in the order of execution>,0
aType:					; DATA XREF: .text:004D7F32o
		unicode	0, <Type>,0
aTypeOfTheHandl:			; DATA XREF: .text:004D7F3Eo
		unicode	0, <Type of the handler>,0
aLink:					; DATA XREF: .text:004D7F58o
		unicode	0, <Link>,0
aAddressOfTheLi:			; DATA XREF: .text:004D7F64o
		unicode	0, <Address of the link>,0
aHandler:				; DATA XREF: .text:004D7F7Eo
		unicode	0, <Handler>,0
aAddressOfExcep:			; DATA XREF: .text:004D7F8Ao
		unicode	0, <Address of exception handler>,0
; const	WCHAR aIco_seh
aIco_seh:				; DATA XREF: .text:004D7FF3o
		unicode	0, <ICO_SEH>,0
		db 0
		db    0
aPluginSpecific:			; DATA XREF: .text:004D8172o
		unicode	0, <Plugin-specific functions>,0
; wchar_t a_dll_0
a_dll_0:				; DATA XREF: .text:004D824Bo
		unicode	0, <\*.dll>,0
; wchar_t aOllydbg_exe
aOllydbg_exe:				; DATA XREF: .text:004D82FDo
		unicode	0, <ollydbg.exe>,0
; wchar_t aOllydbg_2
aOllydbg_2:				; DATA XREF: .text:004D845Eo
		unicode	0, <ollydbg>,0
; wchar_t aPsapi
aPsapi:					; DATA XREF: .text:004D8532o
		unicode	0, <PSAPI>,0
; wchar_t aDbghelp
aDbghelp:				; DATA XREF: .text:004D854Eo
		unicode	0, <DBGHELP>,0
; wchar_t asc_577E7A
asc_577E7A:				; DATA XREF: .text:004D85ACo
		unicode	0, <\\>,0
; CHAR ODBG2_Pluginquery[]
_ODBG2_Pluginquery db '_ODBG2_Pluginquery',0 ; DATA XREF: .text:004D8606o
; CHAR ODBG2_Plugininit[]
_ODBG2_Plugininit db '_ODBG2_Plugininit',0 ; DATA XREF: .text:loc_4D8625o
; CHAR ODBG2_Pluginanalyse[]
_ODBG2_Pluginanalyse db	'_ODBG2_Pluginanalyse',0 ; DATA XREF: .text:004D8636o
; CHAR ODBG2_Pluginmainloop[]
_ODBG2_Pluginmainloop db '_ODBG2_Pluginmainloop',0 ; DATA XREF: .text:004D864Ao
; CHAR ODBG2_Pluginexception[]
_ODBG2_Pluginexception db '_ODBG2_Pluginexception',0 ; DATA XREF: .text:004D865Eo
; CHAR ODBG2_Plugintempbreakpoint[]
_ODBG2_Plugintempbreakpoint db '_ODBG2_Plugintempbreakpoint',0 ; DATA XREF: .text:004D8672o
; CHAR ODBG2_Pluginnotify[]
_ODBG2_Pluginnotify db '_ODBG2_Pluginnotify',0 ; DATA XREF: .text:004D8686o
; CHAR ODBG2_Pluginmenu[]
_ODBG2_Pluginmenu db '_ODBG2_Pluginmenu',0 ; DATA XREF: .text:004D869Ao
; CHAR ODBG2_Pluginoptions[]
_ODBG2_Pluginoptions db	'_ODBG2_Pluginoptions',0 ; DATA XREF: .text:004D86AEo
; CHAR ODBG2_Plugindump[]
_ODBG2_Plugindump db '_ODBG2_Plugindump',0 ; DATA XREF: .text:004D86C2o
; CHAR ODBG2_Pluginsaveudd[]
_ODBG2_Pluginsaveudd db	'_ODBG2_Pluginsaveudd',0 ; DATA XREF: .text:004D86D6o
; CHAR ODBG2_Pluginuddrecord[]
_ODBG2_Pluginuddrecord db '_ODBG2_Pluginuddrecord',0 ; DATA XREF: .text:004D86EAo
; CHAR ODBG2_Pluginreset[]
_ODBG2_Pluginreset db '_ODBG2_Pluginreset',0 ; DATA XREF: .text:004D86FEo
; CHAR ODBG2_Plugindetach[]
_ODBG2_Plugindetach db '_ODBG2_Plugindetach',0 ; DATA XREF: .text:004D8712o
; CHAR ODBG2_Pluginclose[]
_ODBG2_Pluginclose db '_ODBG2_Pluginclose',0 ; DATA XREF: .text:004D8726o
; CHAR ODBG2_Plugindestroy[]
_ODBG2_Plugindestroy db	'_ODBG2_Plugindestroy',0 ; DATA XREF: .text:004D873Ao
		db 0
aPluginSHasInco:			; DATA XREF: .text:004D87BCo
		unicode	0, <Plugin >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, < has incompatible version \{!%i.!%02i.!%04i\}>,0
; wchar_t ext
ext:					; DATA XREF: .text:004D8833o
		unicode	0, <.lng>,0
aPluginSFileSFa:			; DATA XREF: .text:004D8880o
		unicode	0, <Plugin >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, < \{file >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, <\} failed to initialize>,0
aInstalledPlugi:			; DATA XREF: .text:004D8B5Eo
		unicode	0, <Installed plugins:>,0
aSVersionSFileS:			; DATA XREF: .text:004D8B9Do
		unicode	0, <  !%s \{version !%s, file >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, <\}>,0
		db 0
		db    0
off_5780F8	dd offset aText_3	; DATA XREF: .text:004D93E1o
					; \=TEXT\=
		dd offset aCode_0	; \=CODE\=
		dd offset a_text	; \=_TEXT\=
		dd offset a_code	; \=_CODE\=
		dd offset a__text	; \=__TEXT\=
		dd offset a__code	; \=__CODE\=
stru_578110	t_control <2, 0FFFFFFFFh, 4, 5, 32h, 9, 0, offset aObjectAndLib_0, 0, \
      0>		; 0 ; \=Object and library files:\=
		t_control <9, 0C81h, 4, 12h, 0F1h, 0C7h, 0, 0, 0, 0>; 0
		t_control <0Dh, 0C82h, 4, 0DCh, 0F1h, 0Ch, 0, \ ; \=\=
      offset aImageLibraryFi+18h, offset aInformationOrE, 0>; 0
		t_control <11h, 0C83h, 0F9h, 12h, 25h, 0Fh, 0, offset aLoadList, \ ; \=Load list\=
      offset aLoadFileListFr, 0>; 0
		t_control <11h, 0C84h, 0F9h, 26h, 25h, 0Fh, 0, offset aAddFiles, \ ; \=Add files\=
      offset aAddObjectFiles, 0>; 0
		t_control <11h, 0C85h, 0F9h, 3Ah, 25h, 0Fh, 0, offset aDeleteFile, \ ; \=Delete file\=
      offset aRemoveSelect_3, 0>; 0
		t_control <11h, 0C86h, 0F9h, 4Eh, 25h, 0Fh, 0, offset aClearList, \ ; \=Clear list\=
      offset aClearList, 0>; 0
		t_control <11h, 0C87h, 0F9h, 7Eh, 25h, 0Fh, 0, offset aTest_1, \ ; \=Test\=
      offset aScanObjectFile, 0>; 0
		t_control <11h, 0C88h, 0F9h, 92h, 25h, 0Fh, 0, offset aSignature, \ ; \=Signature\=
      offset aIfSignatureIsS, 0>; 0
		t_control <11h, 0C89h, 0F9h, 0A6h, 25h, 0Fh, 0, offset aSave_0, \ ; \=Save\=
      offset aScanFilesAndSa, 0>; 0
		t_control <11h, 0C8Ah, 0F9h, 0DAh, 25h, 0Fh, 0, offset aClose_3, \ ; \=Close\=
      offset aCloseDialog_1, 0>; 0
		t_control <0, 0FFFFFFFFh, 0, 0, 121h, 0EDh, 0, offset aCreateStanda_1,\ ; \=Create standard function library\=
      0, 0>	; 0
stru_5782F0	t_menu <offset asc_578A64, offset aImageLibraryFi+18h, 0, 0, \
   offset stru_518B94, <0>>; 0 ; \=\=
; char aImageLibraryFi[]
aImageLibraryFi	db 'Image library file v2.01',0 ; DATA XREF: .text:004DB709o
		db    0
aNotAStandardFu:			; DATA XREF: .text:004DBD58o
		unicode	0, <Not a standard function library>,0
aUnreadableOrCo:			; DATA XREF: .text:004DC26Bo
		unicode	0, <Unreadable or corrupted library>,0
aLowMemory_4:				; DATA XREF: .text:loc_4DA7D5o
		unicode	0, <Low memory>,0
aUnableToReadLi:			; DATA XREF: .text:loc_4DC2AEo
		unicode	0, <Unable to read library>,0
aText_3:				; DATA XREF: .data:off_5780F8o
		unicode	0, <TEXT>,0
aCode_0:				; DATA XREF: .data:005780FCo
		unicode	0, <CODE>,0
a_text:					; DATA XREF: .data:00578100o
		unicode	0, <_TEXT>,0
a_code:					; DATA XREF: .data:00578104o
		unicode	0, <_CODE>,0
a__text:				; DATA XREF: .data:00578108o
		unicode	0, <__TEXT>,0
a__code:				; DATA XREF: .data:0057810Co
		unicode	0, <__CODE>,0
aInternalErro_4:			; DATA XREF: .text:loc_4D8FA2o
		unicode	0, <Internal error>,0
aUnknownRecordT:			; DATA XREF: .text:004DA620o
		unicode	0, <Unknown record type 0x!%02X>,0
aInvalidOmfPage:			; DATA XREF: .text:loc_4DA6CEo
		unicode	0, <Invalid OMF page size>,0
aInvalidOmfDict:			; DATA XREF: .text:loc_4DA6F0o
		unicode	0, <Invalid OMF dictionary size>,0
aUnexpectedEn_0:			; DATA XREF: .text:loc_4DA712o
		unicode	0, <Unexpected end of OMF file>,0
aOmfSyntaxError:			; DATA XREF: .text:loc_4DA734o
		unicode	0, <OMF syntax error>,0
a16BitOmfFile:				; DATA XREF: .text:loc_4DA756o
		unicode	0, <16-bit OMF file>,0
aImportLibrary:				; DATA XREF: .text:loc_4DA778o
		unicode	0, <Import library>,0
aContainsAbsolu:			; DATA XREF: .text:loc_4DA797o
		unicode	0, <Contains absolute segments>,0
aContainsUnsupp:			; DATA XREF: .text:loc_4DA7B6o
		unicode	0, <Contains unsupported fixups>,0
aFileIsNotFor80:			; DATA XREF: .text:loc_4DB0EAo
		unicode	0, <File is not for 80x86 CPU>,0
aCoffSectionIsT:			; DATA XREF: .text:loc_4DB10Co
		unicode	0, <COFF section is too big>,0
aCoffSyntaxErro:			; DATA XREF: .text:loc_4DB12Bo
		unicode	0, <COFF syntax error>,0
aArch		db '!<arch>',0Ah,0      ; DATA XREF: .text:004DB210o
		db    0
aUnableToReadOb:			; DATA XREF: .text:004DB3B7o
		unicode	0, <Unable to read object file>,0
aUnrecognizedOb:			; DATA XREF: .text:loc_4DB429o
		unicode	0, <Unrecognized object file format>,0
a1Image:				; DATA XREF: .text:004DB44Bo
		unicode	0, <1 image>,0
aIImages:				; DATA XREF: .text:004DB46Co
		unicode	0, <!%i images>,0
aObjectAndLib_0:			; DATA XREF: .data:stru_578110o
		unicode	0, <Object and library files:>,0
aInformationOrE:			; DATA XREF: .data:00578160o
		unicode	0, <Information or error message>,0
aLoadList:				; DATA XREF: .data:00578188o
		unicode	0, <Load list>,0
aLoadFileListFr:			; DATA XREF: .data:00578188o
		unicode	0, <Load file list from existing library>,0
aAddFiles:				; DATA XREF: .data:005781B0o
		unicode	0, <Add files>,0
aAddObjectFiles:			; DATA XREF: .data:005781B0o
		unicode	0, <Add object files or libraries to the list>,0
aDeleteFile:				; DATA XREF: .data:005781D8o
		unicode	0, <Delete file>,0
aRemoveSelect_3:			; DATA XREF: .data:005781D8o
		unicode	0, <Remove selected file from the list>,0
aClearList:				; DATA XREF: .data:00578200o
		unicode	0, <Clear list>,0
aTest_1:				; DATA XREF: .data:00578228o
		unicode	0, <Test>,0
aScanObjectFile:			; DATA XREF: .data:00578228o
		unicode	0, <Scan object files>,0
aSignature:				; DATA XREF: .data:00578250o
		unicode	0, <Signature>,0
aIfSignatureIsS:			; DATA XREF: .data:00578250o
		unicode	0, <If signature is set, it must appear in the code, or funct>
		unicode	0, <ion library will be ignored>,0
aSave_0:				; DATA XREF: .data:00578278o
		unicode	0, <Save>,0
aScanFilesAndSa:			; DATA XREF: .data:00578278o
		unicode	0, <Scan files and save library to disc>,0
aClose_3:				; DATA XREF: .data:005782A0o
		unicode	0, <Close>,0
aCloseDialog_1:				; DATA XREF: .data:005782A0o
		unicode	0, <Close dialog>,0
aCreateStanda_1:			; DATA XREF: .data:005782C8o
		unicode	0, <Create standard function library>,0
asc_578A64:				; DATA XREF: .data:stru_5782F0o
		unicode	0, <|>,0
aUnableToCrea_9:			; DATA XREF: .text:004DB720o
		unicode	0, <Unable to create >
		dw 27h,	0
aLibraryContain:			; DATA XREF: .text:004DBB29o
		unicode	0, <Library contains !%i functions>,0
aUnableToSaveOb:			; DATA XREF: .text:004DBB49o
		unicode	0, <Unable to save object library>,0
aErrorWhenCreat:			; DATA XREF: .text:loc_4DBB8Do
		unicode	0, <Error when creating object library>,0
aSelectNameOfIm:			; DATA XREF: .text:004DC4DAo
		unicode	0, <Select name of image library file>,0
; wchar_t a_udl_0
a_udl_0:				; DATA XREF: .text:004DC4D0o
		unicode	0, <*.udl>,0
aLibraryLoaded:				; DATA XREF: .text:004DC539o
		unicode	0, <Library loaded>,0
aSelectObjectFi:			; DATA XREF: .text:004DC5EAo
		unicode	0, <Select object files and libraries>,0
; wchar_t a_obj_lib_o_a
a_obj_lib_o_a:				; DATA XREF: .text:004DC5E0o
		unicode	0, <*.obj;*.lib;*.o;*.a>,0
; wchar_t asc_578C26
asc_578C26:				; DATA XREF: .text:004DC63Fo
		unicode	0, <\\>,0
aEnterLibrarySi:			; DATA XREF: .text:004DCA4Fo
		unicode	0, <Enter library signature>,0
; wchar_t aS_17
aS_17:					; DATA XREF: .text:004DCCE9o
		unicode	0, <!%s>,0
; wchar_t aListOfLibrarie
aListOfLibrarie:			; DATA XREF: .text:004DCD22o
		unicode	0, <List of libraries>,0
aObjectAndLibra:			; DATA XREF: .text:004DCD45o
		unicode	0, <Object and library files>,0
aListOfObjectAn:			; DATA XREF: .text:004DCD51o
		unicode	0, <List of object and library files>,0
aMessage_1:				; DATA XREF: .text:004DCD6Ao
		unicode	0, <Message>,0
aResultOfScanni:			; DATA XREF: .text:004DCD76o
		unicode	0, <Result of scanning>,0
; const	WCHAR aDia_empty_3
aDia_empty_3:				; DATA XREF: .text:004DCE47o
		unicode	0, <DIA_EMPTY>,0
		db 0
		db    0
stru_578D44	t_menu <offset aUpdate_10, offset aUpdateConten_4, 0CAh, \
   offset loc_4DCEAC, 0, <0>>; 0 ;	\=\=
		t_menu <offset aTagAllHandles, offset aUserDefinedTag, 0, \
   offset loc_4DCEE4, 0, <1>>; 1
		t_menu <offset aUntagAllHandle, offset aUserDefinedTag, 0, \
   offset loc_4DCEE4, 0, <0>>; 2
		t_menu <offset aShowOriginalNa, offset aShowHandleName, 0, \
   offset loc_4DCFA0, 0, <1>>; 3
		t_menu <offset aShowTranslated, offset aShowHandleNa_0, 0, \
   offset loc_4DCFA0, 0, <0>>; 4
		t_menu <offset aDumpFile, offset aOpenFileAssoci, 2C6h, \
   offset loc_4DCFF0, 0, <0>>; 5
		t_menu <offset aHandles, offset aI_11+3, 0, 0, 0, <0>>;	6
		t_menu <offset asc_57945A, offset aI_11+3, 0, 0, offset stru_518B94, <0>>; 7
; wchar_t aI_11
aI_11:					; DATA XREF: .text:004DD081o
		unicode	0, <!%i>,0
aKey:
		unicode	0, <Key>,0
aFile_3:
		unicode	0, <File>,0
aFilePipe:
		unicode	0, <File \{pipe\}>,0
aFileChar:
		unicode	0, <File \{char\}>,0
aCom0:
		unicode	0, <COM0>,0
		unicode	0, <:>,0
aFileDev:
		unicode	0, <File \{dev\}>,0
aA_2:
		unicode	0, <a:>,0
aFileDir:
		unicode	0, <File \{dir\}>,0
aFileSys:
		unicode	0, <File \{sys\}>,0
aFileTemp:
		unicode	0, <File \{temp\}>,0
aSemaphore:
		unicode	0, <Semaphore>,0
aToken:
		unicode	0, <Token>,0
aType_9:
		unicode	0, <Type>,0
aDirectory:
		unicode	0, <Directory>,0
aSymboliclink:
		unicode	0, <SymbolicLink>,0
aProcess:
		unicode	0, <Process>,0
aThread_5:
		unicode	0, <Thread>,0
aJob:
		unicode	0, <Job>,0
aDebugobject:
		unicode	0, <DebugObject>,0
aEvent_0:
		unicode	0, <Event>,0
aEventpair:
		unicode	0, <EventPair>,0
aMutant:
		unicode	0, <Mutant>,0
aCallback_3:
		unicode	0, <Callback>,0
aTimer:
		unicode	0, <Timer>,0
aProfile_3:
		unicode	0, <Profile>,0
aKeyedevent:
		unicode	0, <KeyedEvent>,0
aWindowstation:
		unicode	0, <WindowStation>,0
aDesktop_0:
		unicode	0, <Desktop>,0
aSection_1:
		unicode	0, <Section>,0
aPort:
		unicode	0, <Port>,0
aWaitableport:
		unicode	0, <WaitablePort>,0
aAdapter:
		unicode	0, <Adapter>,0
aController:
		unicode	0, <Controller>,0
aDevice:
		unicode	0, <Device>,0
aDriver:
		unicode	0, <Driver>,0
aIocompletion:
		unicode	0, <IoCompletion>,0
aWmiguid:
		unicode	0, <WmiGuid>,0
aNlscachemutant:
		unicode	0, <\\NlsCacheMutant>,0
aOriginalName:				; DATA XREF: .text:004DCE74o
		unicode	0, <Original name>,0
aOriginalNameAs:			; DATA XREF: .text:004DCE7Eo
		unicode	0, <Original name associated with the handle>,0
aTranslatedName:			; DATA XREF: .text:loc_4DCE8Ao
		unicode	0, <Translated name>,0
aHandleNameConv:			; DATA XREF: .text:004DCE94o
		unicode	0, <Handle Name converted to user-friendly form>,0
aUpdate_10:				; DATA XREF: .data:stru_578D44o
		unicode	0, <\AUpdate>,0
aUpdateConten_4:			; DATA XREF: .data:stru_578D44o
		unicode	0, <Update contents of Handles window>,0
aTagAllHandles:				; DATA XREF: .data:stru_578D44o
		unicode	0, <Tag all handles>,0
aUserDefinedTag:			; DATA XREF: .data:stru_578D44o
		unicode	0, <User-defined tag allows to distinguish new handles from o>
		unicode	0, <ld>,0
aUntagAllHandle:			; DATA XREF: .data:stru_578D44o
		unicode	0, <Untag all handles>,0
aShowOriginalNa:			; DATA XREF: .data:stru_578D44o
		unicode	0, <Show original names>,0
aShowHandleName:			; DATA XREF: .data:stru_578D44o
		unicode	0, <Show handle names as reported by Windows>,0
aShowTranslated:			; DATA XREF: .data:stru_578D44o
		unicode	0, <Show translated names>,0
aShowHandleNa_0:			; DATA XREF: .data:stru_578D44o
		unicode	0, <Show handle names converted to user-friendlier form>,0
aDumpFile:				; DATA XREF: .data:stru_578D44o
		unicode	0, <|Dump file>,0
aOpenFileAssoci:			; DATA XREF: .data:stru_578D44o
		unicode	0, <Open file associated with the handle in a separate Dump w>
		unicode	0, <indow>,0
aHandles:				; DATA XREF: .data:stru_578D44o
		unicode	0, <|*HANDLES>,0
asc_57945A:				; DATA XREF: .data:stru_578D44o
		unicode	0, <|>,0
	
_data		ends
		