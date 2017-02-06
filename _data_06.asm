_data		segment	para public 'DATA' use32
		
 stru_53C890    dd 0                    ; DATA XREF: .text:0047770Do
                 dd 1
                 dd 3Ch
                 dd 0
                 dd offset stru_53CCFC
                 dd 6
                 dd 0
                 dd offset stru_53D5D4
                 dd 3
                 dd 0
                 dd 0
                 dw 20h dup(0)           ; 0
                 dw 100h dup(0)          ; 0
                 dw 100h dup(0)          ; 0
 stru_53CCFC    dd 1                    ; DATA XREF: .data:0053C8A0o
                 dd 2
                 dd 41h
                 dd 0
                 dd offset stru_53D168
                 dd 3
                 dd 0
                 dd offset stru_53E318
                 dd 3
                 dd 0
                 dd 0
                 dw 20h dup(0)           ; 0
                 dw 100h dup(0)          ; 0
                 dw 100h dup(0)          ; 0
 stru_53D168    dd 2                    ; DATA XREF: .data:0053CD0Co
                 dd 1
                 dd 32h
                 dd 0
                 dd offset stru_53DA40
                 dd 3
                 dd 0
                 dd offset stru_53DEAC
                 dd 3
                 dd 5
                 dd 0
                 dw 20h dup(0)           ; 0
                 dw 100h dup(0)          ; 0
                 dw 100h dup(0)          ; 0
 stru_53D5D4    dd 3                    ; DATA XREF: .data:0053C8ACo
                 dd 2
                 dd 32h
                 dd 0
                 dd offset stru_53E784
                 dd 3
                 dd 0
                 dd offset stru_53EBF0
                 dd 3
                 dd 0
                 dd 0
                 dw 20h dup(0)           ; 0
                 dw 100h dup(0)          ; 0
                 dw 100h dup(0)          ; 0
stru_53DA40	dd 4			; index	; DATA XREF: .data:stru_53D168o
		dd 3			; type
		dd 0			; percent
		dd 0			; offset
		dd 0			; blk1
		dd 0			; minp1
		dd 0			; maxc1
		dd 0			; blk2
		dd 0			; minp2
		dd 0			; maxc2
		dd offset g_disasmdump.table; table
		dw 20h dup(0)		; tabname
		dw 'D', 'i', 's', 'a', 's','s', 'e', 'm', 'b', 'l'; title
		dw 'e', 'r', 0F4h dup(0); title
		dw 100h	dup(0)		; status
stru_53DEAC	dd 5			; [0].index ; DATA XREF: .data:stru_53D168o
		dd 3			; [0].type
		dd 0			; [0].percent
		dd 0			; [0].offset
		dd 0			; [0].blk1
		dd 0			; [0].minp1
		dd 0			; [0].maxc1
		dd 0			; [0].blk2
		dd 0			; [0].minp2
		dd 0			; [0].maxc2
		dd offset stru_5E6AB8	; [0].table
		dw 20h dup(0)		; [0].tabname
		dw 'I','n','f','o',0FCh dup(0); [0].title
		dw 100h	dup(0)		; [0].status
stru_53E318	dd 6			; [0].index ; DATA XREF: .data:stru_53CCFCo
		dd 3			; [0].type
		dd 0			; [0].percent
		dd 0			; [0].offset
		dd 0			; [0].blk1
		dd 0			; [0].minp1
		dd 0			; [0].maxc1
		dd 0			; [0].blk2
		dd 0			; [0].minp2
		dd 0			; [0].maxc2
		dd offset stru_5E6D24	; [0].table
		dw 20h dup(0)		; [0].tabname
		dw 'R','e','g','i','s','t','e','r','s',0F7h dup(0); [0].title
		dw 100h	dup(0)		; [0].status
stru_53E784	dd 7			; [0].index ; DATA XREF: .data:stru_53D5D4o
		dd 3			; [0].type
		dd 0			; [0].percent
		dd 0			; [0].offset
		dd 0			; [0].blk1
		dd 0			; [0].minp1
		dd 0			; [0].maxc1
		dd 0			; [0].blk2
		dd 0			; [0].minp2
		dd 0			; [0].maxc2
		dd offset g_dumpdump.table; [0].table
		dw 20h dup(0)		; [0].tabname
		dw 'D','u','m','p',0FCh dup(0); [0].title
		dw 100h	dup(0)		; [0].status
stru_53EBF0	dd 8			; index	; DATA XREF: .data:stru_53D5D4o
		dd 3			; type ; Method
		dd 0			; percent
		dd 0			; offset
		dd 0			; blk1
		dd 0			; minp1
		dd 0			; maxc1
		dd 0			; blk2
		dd 0			; minp2
		dd 0			; maxc2
		dd offset g_stackdump.table; table
		dw 20h dup(0)		; tabname
		dw 'S', 't', 'a', 'c', 'k', 0FBh dup(0); title
		dw 100h	dup(0)		; status
stru_53F05C	t_menu <offset asc_53F4C2, 0, 0, offset loc_474CE0, 0, <0>>; 0
		t_menu <offset aModify____0, offset aEditContents_2, 208h, \ ; \=\=
   offset loc_474D5C, 0, <0>>; 1
		t_menu <offset aFollow_0, offset aFollowJumpOr_0, 209h, \
   offset loc_475B10, 0, <0>>; 2
		t_menu <offset aFollowLoop, offset aFollowLoopInDi, 209h, \
   offset loc_475BB0, 0, <0>>; 3
		t_menu <offset aFollowInDump, offset aFollowAddres_7, 20Ah, \
   offset loc_475C4C, 0, <0>>; 4
		t_menu <offset aFollowInStack, offset aFollowAddres_1, 20Bh, \
   offset loc_475C4C, 0, <1>>; 5
		t_menu <offset aModifyS+11h, offset aGoToJumpOrCall, 0, \
   offset loc_475D5C, 0, <0>>; 6
		t_menu <offset aModifyS+11h, offset aGoToJumpOrCall, 0, \
   offset loc_475D5C, 0, <1>>; 7
		t_menu <offset aModifyS+11h, offset aGoToJumpOrCall, 0, \
   offset loc_475D5C, 0, <2>>; 8
		t_menu <offset aModifyS+11h, offset aGoToJumpOrCall, 0, \
   offset loc_475D5C, 0, <3>>; 9
		t_menu <offset aModifyS+11h, offset aGoToJumpOrCall, 0, \
   offset loc_475D5C, 0, <4>>; 10
		t_menu <offset aModifyS+11h, offset aGoToJumpOrCall, 0, \
   offset loc_475D5C, 0, <5>>; 11
		t_menu <offset aModifyS+11h, offset aGoToJumpOrCall, 0, \
   offset loc_475D5C, 0, <6>>; 12
		t_menu <offset aModifyS+11h, offset aGoToJumpOrCall, 0, \
   offset loc_475D5C, 0, <7>>; 13
		t_menu <offset aModifyS+11h, offset aGoToJumpOrCall, 0, \
   offset loc_475D5C, 0, <8>>; 14
		t_menu <offset aModifyS+11h, offset aGoToJumpOrCall, 0, \
   offset loc_475D5C, 0, <9>>; 15
		t_menu <offset aListJumpsAnd_0, offset aListAllKnownJu, 20Ch, \
   offset loc_475F4C, 0, <0>>; 16
		t_menu <offset aListDestinatio, offset aListAllKnownDe, 20Dh, \
   offset loc_475F4C, 0, <1>>; 17
		t_menu <offset aFollowInSource, offset aFollowAddres_8, 20Eh, \
   offset loc_47608C, 0, <0>>; 18
		t_menu <offset aInfo, offset aModifyS+11h, 0, 0, 0, <0>>; 19
		t_menu <offset asc_53F8BE, offset aModifyS+11h, 0, 0, \
   offset stru_518B94, <0>>; 20
aModifyS:				; DATA XREF: .text:00474F35o
		unicode	0, <Modify !%s>,0
aModify3dnowReg:			; DATA XREF: .text:00475195o
		unicode	0, <Modify 3DNow! register !%s>,0
aEdit:					; DATA XREF: .text:00475322o
		unicode	0, <Edit >,0
aByteAt:				; DATA XREF: .text:004753DDo
		unicode	0, <byte at >,0
aWordAt:				; DATA XREF: .text:00475417o
		unicode	0, <word at >,0
aDwordAt:				; DATA XREF: .text:00475451o
		unicode	0, <dword at >,0
aMemoryIsNotRea:			; DATA XREF: .text:004754CAo
		unicode	0, <Memory is not readable>,0
a32BitFloat_0:				; DATA XREF: .text:00475564o
		unicode	0, <32-bit float >,0
a64BitFloat_1:				; DATA XREF: .text:0047559Eo
		unicode	0, <64-bit float >,0
a80BitFloat_1:				; DATA XREF: .text:004755D8o
		unicode	0, <80-bit float >,0
aMmxOperandAt:				; DATA XREF: .text:loc_4756CCo
		unicode	0, <MMX operand at >,0
a3dnowOperandAt:			; DATA XREF: .text:loc_475788o
		unicode	0, <3DNow! operand at >,0
aSseOperandAt:				; DATA XREF: .text:loc_475885o
		unicode	0, <SSE operand at >,0
aModifyFpuStatu:			; DATA XREF: .text:004759F2o
		unicode	0, <Modify FPU status register>,0
aModifyFpuContr:			; DATA XREF: .text:00475A58o
		unicode	0, <Modify FPU control register>,0
aModifyMxcsr:				; DATA XREF: .text:00475ABCo
		unicode	0, <Modify MXCSR>,0
aGoTo:					; DATA XREF: .text:00475D9Eo
		unicode	0, <Go to >,0
aJump_0:				; DATA XREF: .text:loc_475E58o
		unicode	0, <jump>,0
aCall_1:				; DATA XREF: .text:loc_475E80o
		unicode	0, <call>,0
; wchar_t asc_53F472
asc_53F472:				; DATA XREF: .text:00475EBCo
		unicode	0, <[]>,0
aFrom08x:				; DATA XREF: .text:00475ED5o
		unicode	0, < from !%08X>,0
; wchar_t a____8
a____8:					; DATA XREF: .text:00475F02o
		unicode	0, <...>,0
aUnableToShowSo:			; DATA XREF: .text:loc_476135o
		unicode	0, <Unable to show source>,0
asc_53F4C2:				; DATA XREF: .data:stru_53F05Co
		unicode	0, <\:>,0
aModify____0:				; DATA XREF: .data:stru_53F05Co
		unicode	0, <Modify...>,0
aEditContents_2:			; DATA XREF: .data:stru_53F05Co
		unicode	0, <Edit contents of selected operand>,0
aFollow_0:				; DATA XREF: .data:stru_53F05Co
		unicode	0, <Follow>,0
aFollowJumpOr_0:			; DATA XREF: .data:stru_53F05Co
		unicode	0, <Follow jump or call destination in Disassembler>,0
aFollowLoop:				; DATA XREF: .data:stru_53F05Co
		unicode	0, <Follow loop>,0
aFollowLoopInDi:			; DATA XREF: .data:stru_53F05Co
		unicode	0, <Follow loop in Disassembler>,0
aFollowInDump:				; DATA XREF: .data:stru_53F05Co
		unicode	0, <Follow in Dump>,0
aFollowAddres_7:			; DATA XREF: .data:stru_53F05Co
		unicode	0, <Follow address in CPU Dump>,0
aFollowInStack:				; DATA XREF: .data:stru_53F05Co
		unicode	0, <Follow in Stack>,0
aFollowAddres_1:			; DATA XREF: .data:stru_53F05Co
		unicode	0, <Follow address in CPU Stack>,0
aGoToJumpOrCall:			; DATA XREF: .data:stru_53F05Co
		unicode	0, <Go to jump or call to the first selected command>,0
aListJumpsAnd_0:			; DATA XREF: .data:stru_53F05Co
		unicode	0, <List jumps and calls to command...>,0
aListAllKnownJu:			; DATA XREF: .data:stru_53F05Co
		unicode	0, <List all known jumps and calls to the first selected comm>
		unicode	0, <and>,0
aListDestinatio:			; DATA XREF: .data:stru_53F05Co
		unicode	0, <List destinations...>,0
aListAllKnownDe:			; DATA XREF: .data:stru_53F05Co
		unicode	0, <List all known destinations of the selected switch>,0
aFollowInSource:			; DATA XREF: .data:stru_53F05Co
		unicode	0, <Follow in Source code>,0
aFollowAddres_8:			; DATA XREF: .data:stru_53F05Co
		unicode	0, <Follow address in Source code window>,0
aInfo:					; DATA XREF: .data:stru_53F05Co
		unicode	0, <|*INFO>,0
asc_53F8BE:				; DATA XREF: .data:stru_53F05Co
		unicode	0, <|>,0
aJumpIsTaken:				; DATA XREF: .text:004765FDo
		unicode	0, <Jump is taken>,0
aJumpIsNotTaken:			; DATA XREF: .text:loc_476625o
		unicode	0, <Jump is not taken>,0
aConditionIsMet:			; DATA XREF: .text:00476672o
		unicode	0, <Condition is met>,0
aConditionIsNot:			; DATA XREF: .text:loc_47669Ao
		unicode	0, <Condition is not met>,0
aReturnedEax_0:				; DATA XREF: .text:00476760o
		unicode	0, < returned EAX = >,0
aReturnedEax:				; DATA XREF: .text:loc_476796o
		unicode	0, <Returned EAX = >,0
aJumpFrom:				; DATA XREF: .text:004769F2o
		unicode	0, <Jump from >,0
aJumpsFrom:				; DATA XREF: .text:loc_4769FFo
		unicode	0, <Jumps from >,0
; wchar_t asc_53F9BE
asc_53F9BE:				; DATA XREF: .text:00476A63o
		unicode	0, <,>,0
aLocalCallFrom:				; DATA XREF: .text:00476B48o
		unicode	0, <Local call from >,0
aLocalCallsFrom:			; DATA XREF: .text:loc_476B55o
		unicode	0, <Local calls from >,0
aJumpTo:				; DATA XREF: .text:00476CEAo
		unicode	0, <Jump to >,0
aJumpsTo_0:				; DATA XREF: .text:loc_476CF7o
		unicode	0, <Jumps to >,0
aCallTo_0:				; DATA XREF: .text:00476E23o
		unicode	0, <Call to >,0
aCallsTo:				; DATA XREF: .text:loc_476E30o
		unicode	0, <Calls to >,0
; wchar_t aI_9
aI_9:					; DATA XREF: .text:004770CDo
		unicode	0, <:!%i >,0
aCurrentMemoryS:			; DATA XREF: .text:004772B8o
		unicode	0, < \{current memory state\}>,0
aCurrentRegiste:			; DATA XREF: .text:00477355o
		unicode	0, < \{current registers\}>,0
aCpu_0:					; DATA XREF: .text:0047616Do
		unicode	0, <CPU>,0
aCpuDisasm:
		unicode	0, <CPU Disasm>,0
aCpuInfo:
		unicode	0, <CPU Info>,0
aCpuRegisters:
		unicode	0, <CPU registers>,0
aLocal_2:
		unicode	0, <Local>,0
aIco_c:
		unicode	0, <ICO_C>,0
; wchar_t asc_53FB1C
asc_53FB1C:				; DATA XREF: .text:0047618Fo
		unicode	0, < - >,0
aRunTraceI_Step:			; DATA XREF: .text:004761BAo
		unicode	0, <Run trace !%i. step!%s back>,0
; wchar_t asc_53FB58
asc_53FB58:				; DATA XREF: .text:0047621Bo
		unicode	0, <, >,0
aModule_3:				; DATA XREF: .text:004762BDo
		unicode	0, <module >,0
		db 0
		db 0
		dd 80000000h
aHkey_classes_r:			; DATA XREF: .text:00483A28o
		unicode	0, <HKEY_CLASSES_ROOT>,0
		dw 238 dup(0)
off_53FD74	dd offset aShiftIsNotAllo ; DATA XREF: .text:00483A44o
					; \=\n Shift is not allowed \{used as comman\=...
aEgistryMachine:
		unicode	0, <EGISTRY\\MACHINE\\SOFTWARE\\CLASSES>,0
		dw 221 dup(0)
dword_53FF74	dd 0			; DATA XREF: .text:00483A16o
dword_53FF78	dd 0			; DATA XREF: .text:00483B77o
		dd 80000001h
aHkey_current_0:
		unicode	0, <HKEY_CURRENT_USER>,0
word_53FFA4	dw 498 dup(0)		; 0
		dd 80000002h
aHkey_local_m_0:
		unicode	0, <HKEY_LOCAL_MACHINE>,0
		dw 237 dup(0)		; 0
aRegistryMachin:
		unicode	0, <\\REGISTRY\\MACHINE>,0
		dw 242 dup(0)		; 0
		dd 80000003h
aHkey_users_0:
		unicode	0, <HKEY_USERS>,0
		dw 245 dup(0)		; 0
aRegistryUser:
		unicode	0, <\\REGISTRY\\USER>,0
		dw 245 dup(0)		; 0
		dd 80000004h
aHkey_perform_0:
		unicode	0, <HKEY_PERFORMANCE_DATA>,0
		dw 494 dup(0)		; 0
		dd 80000005h
aHkey_current_1:
		unicode	0, <HKEY_CURRENT_CONFIG>,0
		dw 496 dup(0)		; 0
		dd 80000006h
aHkey_dyn_dat_0:
		unicode	0, <HKEY_DYN_DATA>,0
		dw 502 dup(0)		; 0
; wchar_t *off_5417C4
off_5417C4	dd offset aFmt1		; DATA XREF: .text:0047D8BBr
					; \=Fmt1\=
		dd offset aFmt2		; \=Fmt2\=
		dd offset aFmt3		; \=Fmt3\=
		dd offset aFmt4		; \=Fmt4\=
		dd offset aFmt5		; \=Fmt5\=
		dd offset aFmt6		; \=Fmt6\=
		dd offset aFmt7		; \=Fmt7\=
		dd offset aFmt8		; \=Fmt8\=
		dd offset aFmt9		; \=Fmt9\=
		dd offset aFmt10	; \=Fmt10\=
		dd offset aFmt11	; \=Fmt11\=
		dd offset aFmt12	; \=Fmt12\=
		dd offset aFmt13	; \=Fmt13\=
		dd offset aFmt14	; \=Fmt14\=
		dd offset aFmt15	; \=Fmt15\=
		dd offset aFmt16	; \=Fmt16\=
		dd offset aFmt17	; \=Fmt17\=
		dd offset aFmt18	; \=Fmt18\=
		dd offset aFmt19	; \=Fmt19\=
		dd offset aFmt20	; \=Fmt20\=
		dd offset aFmt21	; \=Fmt21\=
		dd offset aFmt22	; \=Fmt22\=
		dd offset aFmt23	; \=Fmt23\=
		dd offset aFmt24	; \=Fmt24\=
off_541824	dd offset aArg1_1	; DATA XREF: .text:00480F8Eo
					; \=Arg1\=
		dd offset aArg1_2	; \=Arg1_2\=
		dd offset aArg1_3	; \=Arg1_3\=
		dd offset aArg1_4	; \=Arg1_4\=
		dd offset aArg2		; \=Arg2\=
		dd offset aArg2_3	; \=Arg2_3\=
		dd offset aArg2_4	; \=Arg2_4\=
		dd offset aArg2_5	; \=Arg2_5\=
		dd offset aArg3		; \=Arg3\=
		dd offset aArg3_4	; \=Arg3_4\=
		dd offset aArg3_5	; \=Arg3_5\=
		dd offset aArg3_6	; \=Arg3_6\=
		dd offset aArg4		; \=Arg4\=
		dd offset aArg4_5	; \=Arg4_5\=
		dd offset aArg4_6	; \=Arg4_6\=
		dd offset aArg4_7	; \=Arg4_7\=
		dd offset aArg5		; \=Arg5\=
		dd offset aArg5_6	; \=Arg5_6\=
		dd offset aArg5_7	; \=Arg5_7\=
		dd offset aArg5_8	; \=Arg5_8\=
		dd offset aArg6		; \=Arg6\=
		dd offset aArg6_7	; \=Arg6_7\=
		dd offset aArg6_8	; \=Arg6_8\=
		dd offset aArg6_9	; \=Arg6_9\=
		dd offset aArg7		; \=Arg7\=
		dd offset aArg7_8	; \=Arg7_8\=
		dd offset aArg7_9	; \=Arg7_9\=
		dd offset aArg7_10	; \=Arg7_10\=
		dd offset aArg8		; \=Arg8\=
		dd offset aArg8_9	; \=Arg8_9\=
		dd offset aArg8_10	; \=Arg8_10\=
		dd offset aArg8_11	; \=Arg8_11\=
		dd offset aArg9		; \=Arg9\=
		dd offset aArg9_10	; \=Arg9_10\=
		dd offset aArg9_11	; \=Arg9_11\=
		dd offset aArg9_12	; \=Arg9_12\=
		dd offset aArg10	; \=Arg10\=
		dd offset aArg10_11	; \=Arg10_11\=
		dd offset aArg10_12	; \=Arg10_12\=
		dd offset aArg10_13	; \=Arg10_13\=
		dd offset aArg11	; \=Arg11\=
		dd offset aArg11_12	; \=Arg11_12\=
		dd offset aArg11_13	; \=Arg11_13\=
		dd offset aArg11_14	; \=Arg11_14\=
		dd offset aArg12	; \=Arg12\=
		dd offset aArg12_13	; \=Arg12_13\=
		dd offset aArg12_14	; \=Arg12_14\=
		dd offset aArg12_15	; \=Arg12_15\=
		dd offset aArg13	; \=Arg13\=
		dd offset aArg13_14	; \=Arg13_14\=
		dd offset aArg13_15	; \=Arg13_15\=
		dd offset aArg13_16	; \=Arg13_16\=
		dd offset aArg14	; \=Arg14\=
		dd offset aArg14_15	; \=Arg14_15\=
		dd offset aArg14_16	; \=Arg14_16\=
		dd offset aArg14_17	; \=Arg14_17\=
		dd offset aArg15	; \=Arg15\=
		dd offset aArg15_16	; \=Arg15_16\=
		dd offset aArg15_17	; \=Arg15_17\=
		dd offset aArg15_18	; \=Arg15_18\=
		dd offset aArg16	; \=Arg16\=
		dd offset aArg16_17	; \=Arg16_17\=
		dd offset aArg16_18	; \=Arg16_18\=
		dd offset aArg16_19	; \=Arg16_19\=
		dd offset aArg17	; \=Arg17\=
		dd offset aArg17_18	; \=Arg17_18\=
		dd offset aArg17_19	; \=Arg17_19\=
		dd offset aArg17_20	; \=Arg17_20\=
		dd offset aArg18	; \=Arg18\=
		dd offset aArg18_19	; \=Arg18_19\=
		dd offset aArg18_20	; \=Arg18_20\=
		dd offset aArg18_21	; \=Arg18_21\=
		dd offset aArg19	; \=Arg19\=
		dd offset aArg19_20	; \=Arg19_20\=
		dd offset aArg19_21	; \=Arg19_21\=
		dd offset aArg19_22	; \=Arg19_22\=
		dd offset aArg20	; \=Arg20\=
		dd offset aArg20_21	; \=Arg20_21\=
		dd offset aArg20_22	; \=Arg20_22\=
		dd offset aArg20_23	; \=Arg20_23\=
		dd offset aArg21	; \=Arg21\=
		dd offset aArg21_22	; \=Arg21_22\=
		dd offset aArg21_23	; \=Arg21_23\=
		dd offset aArg21_24	; \=Arg21_24\=
		dd offset aArg22	; \=Arg22\=
		dd offset aArg22_23	; \=Arg22_23\=
		dd offset aArg22_24	; \=Arg22_24\=
		dd 0
		dd offset aArg23	; \=Arg23\=
		dd offset aArg23_24	; \=Arg23_24\=
		dd 0
		dd 0
		dd offset aVararg1	; \=Vararg1\=
		dd offset aVararg1_2	; \=Vararg1_2\=
		dd offset aVararg1_3	; \=Vararg1_3\=
		dd offset aVararg1_4	; \=Vararg1_4\=
		dd offset aVararg2	; \=Vararg2\=
		dd offset aVararg2_3	; \=Vararg2_3\=
		dd offset aVararg2_4	; \=Vararg2_4\=
		dd offset aVararg2_5	; \=Vararg2_5\=
		dd offset aVararg3	; \=Vararg3\=
		dd offset aVararg3_4	; \=Vararg3_4\=
		dd offset aVararg3_5	; \=Vararg3_5\=
		dd offset aVararg3_6	; \=Vararg3_6\=
		dd offset aVararg4	; \=Vararg4\=
		dd offset aVararg4_5	; \=Vararg4_5\=
		dd offset aVararg4_6	; \=Vararg4_6\=
		dd offset aVararg4_7	; \=Vararg4_7\=
		dd offset aVararg5	; \=Vararg5\=
		dd offset aVararg5_6	; \=Vararg5_6\=
		dd offset aVararg5_7	; \=Vararg5_7\=
		dd offset aVararg5_8	; \=Vararg5_8\=
		dd offset aVararg6	; \=Vararg6\=
		dd offset aVararg6_7	; \=Vararg6_7\=
		dd offset aVararg6_8	; \=Vararg6_8\=
		dd 0
		dd offset aVararg7	; \=Vararg7\=
		dd offset aVararg7_8	; \=Vararg7_8\=
		dd 0
		dd 0
		dd offset aFmt1		; \=Fmt1\=
		dd offset aFmt1_2	; \=Fmt1_2\=
		dd offset aFmt1_3	; \=Fmt1_3\=
		dd offset aFmt1_4	; \=Fmt1_4\=
		dd offset aFmt2		; \=Fmt2\=
		dd offset aFmt2_3	; \=Fmt2_3\=
		dd offset aFmt2_4	; \=Fmt2_4\=
		dd offset aFmt2_5	; \=Fmt2_5\=
		dd offset aFmt3		; \=Fmt3\=
		dd offset aFmt3_4	; \=Fmt3_4\=
		dd offset aFmt3_5	; \=Fmt3_5\=
		dd offset aFmt3_6	; \=Fmt3_6\=
		dd offset aFmt4		; \=Fmt4\=
		dd offset aFmt4_5	; \=Fmt4_5\=
		dd offset aFmt4_6	; \=Fmt4_6\=
		dd offset aFmt4_7	; \=Fmt4_7\=
		dd offset aFmt5		; \=Fmt5\=
		dd offset aFmt5_6	; \=Fmt5_6\=
		dd offset aFmt5_7	; \=Fmt5_7\=
		dd offset aFmt5_8	; \=Fmt5_8\=
		dd offset aFmt6		; \=Fmt6\=
		dd offset aFmt6_7	; \=Fmt6_7\=
		dd offset aFmt6_8	; \=Fmt6_8\=
		dd offset aFmt6_9	; \=Fmt6_9\=
		dd offset aFmt7		; \=Fmt7\=
		dd offset aFmt7_8	; \=Fmt7_8\=
		dd offset aFmt7_9	; \=Fmt7_9\=
		dd offset aFmt7_10	; \=Fmt7_10\=
		dd offset aFmt8		; \=Fmt8\=
		dd offset aFmt8_9	; \=Fmt8_9\=
		dd offset aFmt8_10	; \=Fmt8_10\=
		dd offset aFmt8_11	; \=Fmt8_11\=
		dd offset aFmt9		; \=Fmt9\=
		dd offset aFmt9_10	; \=Fmt9_10\=
		dd offset aFmt9_11	; \=Fmt9_11\=
		dd offset aFmt9_12	; \=Fmt9_12\=
		dd offset aFmt10	; \=Fmt10\=
		dd offset aFmt10_11	; \=Fmt10_11\=
		dd offset aFmt10_12	; \=Fmt10_12\=
		dd offset aFmt10_13	; \=Fmt10_13\=
		dd offset aFmt11	; \=Fmt11\=
		dd offset aFmt11_12	; \=Fmt11_12\=
		dd offset aFmt11_13	; \=Fmt11_13\=
		dd offset aFmt11_14	; \=Fmt11_14\=
		dd offset aFmt12	; \=Fmt12\=
		dd offset aFmt12_13	; \=Fmt12_13\=
		dd offset aFmt12_14	; \=Fmt12_14\=
		dd offset aFmt12_15	; \=Fmt12_15\=
		dd offset aFmt13	; \=Fmt13\=
		dd offset aFmt13_14	; \=Fmt13_14\=
		dd offset aFmt13_15	; \=Fmt13_15\=
		dd offset aFmt13_16	; \=Fmt13_16\=
		dd offset aFmt14	; \=Fmt14\=
		dd offset aFmt14_15	; \=Fmt14_15\=
		dd offset aFmt14_16	; \=Fmt14_16\=
		dd offset aFmt14_17	; \=Fmt14_17\=
		dd offset aFmt15	; \=Fmt15\=
		dd offset aFmt15_16	; \=Fmt15_16\=
		dd offset aFmt15_17	; \=Fmt15_17\=
		dd offset aFmt15_18	; \=Fmt15_18\=
		dd offset aFmt16	; \=Fmt16\=
		dd offset aFmt16_17	; \=Fmt16_17\=
		dd offset aFmt16_18	; \=Fmt16_18\=
		dd offset aFmt16_19	; \=Fmt16_19\=
		dd offset aFmt17	; \=Fmt17\=
		dd offset aFmt17_18	; \=Fmt17_18\=
		dd offset aFmt17_19	; \=Fmt17_19\=
		dd offset aFmt17_20	; \=Fmt17_20\=
		dd offset aFmt18	; \=Fmt18\=
		dd offset aFmt18_19	; \=Fmt18_19\=
		dd offset aFmt18_20	; \=Fmt18_20\=
		dd offset aFmt18_21	; \=Fmt18_21\=
		dd offset aFmt19	; \=Fmt19\=
		dd offset aFmt19_20	; \=Fmt19_20\=
		dd offset aFmt19_21	; \=Fmt19_21\=
		dd offset aFmt19_22	; \=Fmt19_22\=
		dd offset aFmt20	; \=Fmt20\=
		dd offset aFmt20_21	; \=Fmt20_21\=
		dd offset aFmt20_22	; \=Fmt20_22\=
		dd offset aFmt20_23	; \=Fmt20_23\=
		dd offset aFmt21	; \=Fmt21\=
		dd offset aFmt21_22	; \=Fmt21_22\=
		dd offset aFmt21_23	; \=Fmt21_23\=
		dd offset aFmt21_24	; \=Fmt21_24\=
		dd offset aFmt22	; \=Fmt22\=
		dd offset aFmt22_23	; \=Fmt22_23\=
		dd offset aFmt22_24	; \=Fmt22_24\=
		dd 0
		dd offset aFmt23	; \=Fmt23\=
		dd offset aFmt23_24	; \=Fmt23_24\=
		dd 0
		dd 0
aSavingKnownDat:			; DATA XREF: .text:0048163Do
		unicode	0, <Saving known data to file>,0
; char signature[]
signature	db 'PRECOMPILED',0      ; DATA XREF: .text:0048165Bo
aUnableToCrea_0:			; DATA XREF: .text:00481679o
		unicode	0, <  Unable to create file >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
aErrorSavingD_0:			; DATA XREF: .text:0048191Ao
		unicode	0, <  Error saving data to file >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
aFileSCreatedSu:			; DATA XREF: .text:00481938o
		unicode	0, <  File >
		dw 27h
		unicode	0, <!%s>
		dw 27h
		unicode	0, < created successfully>,0
aDecodingOfKnow:			; DATA XREF: .text:loc_481C02o
		unicode	0, <Decoding of known functions is not possible due to lack o>
		unicode	0, <f memory>,0
aOllydbg_1:				; DATA XREF: .text:00481C57o
		unicode	0, <ollydbg>,0
aOllydbg_dat:				; DATA XREF: .text:loc_481C73o
		unicode	0, <ollydbg.dat>,0
; const	WCHAR aRes_known
aRes_known:				; DATA XREF: .text:00481C95o
		unicode	0, <RES_KNOWN>,0
aCorruptApiData:			; DATA XREF: .text:00482252o
		unicode	0, <Corrupt API data, known functions and constants are unava>
		unicode	0, <ilable>,0
aIntegerConst_0:			; DATA XREF: .text:00478DDAo
		unicode	0, <Integer constant expected>,0
aBadConstantNam:			; DATA XREF: .text:00478E04o
		unicode	0, <Bad constant name>,0
aConstantEndsWi:			; DATA XREF: .text:00478E26o
		unicode	0, <Constant ends with vertical line>,0
aLowMemoryProce:			; DATA XREF: .text:00478E5Do
		unicode	0, <Low memory, processing interrupted>,0
aBadGroupName:				; DATA XREF: .text:00478EC8o
		unicode	0, <Bad group name>,0
aLengthOfGroupN:			; DATA XREF: .text:00478EE1o
		unicode	0, <Length of group name is limited to 31 character>,0
aTooManyGroups:				; DATA XREF: .text:00478F2Eo
		unicode	0, <Too many groups>,0
aRedefinedGroup:			; DATA XREF: .text:00478F4Do
		unicode	0, <  Redefined group >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
aExtraCharact_1:			; DATA XREF: .text:00478FC5o
		unicode	0, <Extra characters on line>,0
aExpectingConst:			; DATA XREF: .text:00478FECo
		unicode	0, <Expecting CONST or END>,0
; wchar_t aConst_0
aConst_0:				; DATA XREF: .text:00479015o
		unicode	0, <CONST>,0
aBadNameOfTrans:			; DATA XREF: .text:004791E9o
		unicode	0, <Bad name of translator>,0
aLengthOfTransl:			; DATA XREF: .text:00479202o
		unicode	0, <Length of translator name is limited to 30 characters>,0
aTooManyTransla:			; DATA XREF: .text:00479248o
		unicode	0, <Too many translators>,0
aRedefinedTrans:			; DATA XREF: .text:00479264o
		unicode	0, <  Redefined translator >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
aExpectingTrans:			; DATA XREF: .text:0047930Bo
		unicode	0, <Expecting translation record or END>,0
aTooManyTrans_0:			; DATA XREF: .text:00479346o
		unicode	0, <Too many translation records>,0
aMissingEqualSi:			; DATA XREF: .text:loc_479394o
		unicode	0, <Missing equal sign between names>,0
aExpectingOutpu:			; DATA XREF: .text:004793BBo
		unicode	0, <Expecting output name>,0
aEmptyTranslato:			; DATA XREF: .text:0047941Co
		unicode	0, <Empty translator>,0
aRepeatingInput:			; DATA XREF: .text:0047947Do
		unicode	0, <  Repeating input name >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
aBadTypeName:				; DATA XREF: .text:004794EFo
		unicode	0, <Bad type name>,0
aLengthOfTypeNa:			; DATA XREF: .text:00479508o
		unicode	0, <Length of type name is limited to 30 characters>,0
aTypeDescriptio:			; DATA XREF: .text:0047959Fo
		unicode	0, <Type description is too long>,0
aKeywordExpecte:			; DATA XREF: .text:004795E6o
		unicode	0, <Keyword expected>,0
aEndselExpected:			; DATA XREF: .text:00479623o
		unicode	0, <ENDSEL expected>,0
aEndifExpected:				; DATA XREF: .text:00479641o
		unicode	0, <ENDIF expected>,0
; wchar_t aSelect
aSelect:				; DATA XREF: .text:loc_47968Bo
		unicode	0, <SELECT>,0
aNestingOfSelec:			; DATA XREF: .text:004796AAo
		unicode	0, <Nesting of SELECT blocks is not allowed>,0
aTooDeepBlockNe:			; DATA XREF: .text:004796C0o
		unicode	0, <Too deep block nesting>,0
; wchar_t aMask
aMask:					; DATA XREF: .text:004796FDo
		unicode	0, <MASK>,0
; wchar_t aField
aField:					; DATA XREF: .text:00479721o
		unicode	0, <FIELD>,0
; wchar_t aSigfield
aSigfield:				; DATA XREF: .text:00479745o
		unicode	0, <SIGFIELD>,0
aExpectingMaskF:			; DATA XREF: .text:loc_479760o
		unicode	0, <Expecting MASK, FIELD or SIGFIELD>,0
aConstantExpect:			; DATA XREF: .text:00479782o
		unicode	0, <Constant expected>,0
; wchar_t aEndsel
aEndsel:				; DATA XREF: .text:loc_4797B6o
		unicode	0, <ENDSEL>,0
aEndselWithoutC:			; DATA XREF: .text:loc_4797D7o
		unicode	0, <ENDSEL without corresponding SELECT>,0
aEndselWhereEnd:			; DATA XREF: .text:004797F7o
		unicode	0, <ENDSEL where ENDIF is expected>,0
; wchar_t aIf
aIf:					; DATA XREF: .text:loc_479816o
		unicode	0, <IF>,0
; wchar_t aElseif
aElseif:				; DATA XREF: .text:0047982Bo
		unicode	0, <ELSEIF>,0
; wchar_t aElif
aElif:					; DATA XREF: .text:00479840o
		unicode	0, <ELIF>,0
aTooDeepNesting:			; DATA XREF: .text:0047986Eo
		unicode	0, <Too deep nesting>,0
aElseifWithoutC:			; DATA XREF: .text:004798A3o
		unicode	0, <ELSEIF without corresponding IF>,0
aElseifWhereEnd:			; DATA XREF: .text:004798BBo
		unicode	0, <ELSEIF where ENDSEL is expected>,0
aElseifAfterEls:			; DATA XREF: .text:004798D3o
		unicode	0, <ELSEIF after ELSE>,0
aTooManyElseifS:			; DATA XREF: .text:0047990Bo
		unicode	0, <Too many ELSEIF statements>,0
; wchar_t aEq_1
aEq_1:					; DATA XREF: .text:00479967o
		unicode	0, <EQ>,0
; wchar_t aNe_0
aNe_0:					; DATA XREF: .text:004799AFo
		unicode	0, <NE>,0
; wchar_t aSet
aSet:					; DATA XREF: .text:004799F7o
		unicode	0, <SET>,0
; wchar_t aBit
aBit:					; DATA XREF: .text:00479A0Co
		unicode	0, <BIT>,0
; wchar_t aZero
aZero:					; DATA XREF: .text:00479A54o
		unicode	0, <ZERO>,0
; wchar_t aClr
aClr:					; DATA XREF: .text:00479A69o
		unicode	0, <CLR>,0
; wchar_t aLe_1
aLe_1:					; DATA XREF: .text:00479AB1o
		unicode	0, <LE>,0
; wchar_t aGe
aGe:					; DATA XREF: .text:00479AF9o
		unicode	0, <GE>,0
asc_54262A	db 27h,0		; DATA XREF: .text:loc_479BCFo
aEqOrNeExpected:
		unicode	0, <EQ>
		dw 27h
		unicode	0, < or >
		dw 27h
		unicode	0, <NE>
		dw 27h
		unicode	0, < expected>,0
aOperationOrCon:			; DATA XREF: .text:loc_479D12o
		unicode	0, <Operation or constant expected>,0
aElseWithoutCor:			; DATA XREF: .text:00479D59o
		unicode	0, <ELSE without corresponding IF>,0
aElseWhereEndse:			; DATA XREF: .text:00479D71o
		unicode	0, <ELSE where ENDSEL is expected>,0
aElseAfterElse:				; DATA XREF: .text:00479D89o
		unicode	0, <ELSE after ELSE>,0
; wchar_t aEndif
aEndif:					; DATA XREF: .text:loc_479E01o
		unicode	0, <ENDIF>,0
aEndifWithoutCo:			; DATA XREF: .text:00479E1Co
		unicode	0, <ENDIF without corresponding IF>,0
aEndifWhereEnds:			; DATA XREF: .text:00479E3Co
		unicode	0, <ENDIF where ENDSEL is expected>,0
aTextExpected:				; DATA XREF: .text:00479F03o
		unicode	0, <Text expected>,0
; wchar_t aHexbits
aHexbits:				; DATA XREF: .text:loc_479F82o
		unicode	0, <HEXBITS>,0
; wchar_t aText
aText:					; DATA XREF: .text:loc_479FDFo
		unicode	0, <TEXT>,0
; wchar_t aPurge
aPurge:					; DATA XREF: .text:loc_47A072o
		unicode	0, <PURGE>,0
aNameExpected:				; DATA XREF: .text:0047A0C1o
		unicode	0, <Name expected>,0
; wchar_t aOut_0
aOut_0:					; DATA XREF: .text:0047A13Eo
		unicode	0, <OUT>,0
; wchar_t aAscii_2
aAscii_2:				; DATA XREF: .text:0047A161o
		unicode	0, <ASCII>,0
; wchar_t aUnicode_7
aUnicode_7:				; DATA XREF: .text:0047A176o
		unicode	0, <UNICODE>,0
aOutAppliesOnly:			; DATA XREF: .text:0047A23Do
		unicode	0, <OUT applies only to pointers>,0
; wchar_t aHex
aHex:					; DATA XREF: .text:loc_47A2D9o
		unicode	0, <HEX>,0
; wchar_t aHexdata
aHexdata:				; DATA XREF: .text:loc_47A2F8o
		unicode	0, <HEXDATA>,0
; wchar_t aHex8
aHex8:					; DATA XREF: .text:loc_47A317o
		unicode	0, <HEX8>,0
; wchar_t aQuad_lo
aQuad_lo:				; DATA XREF: .text:loc_47A336o
		unicode	0, <QUAD_LO>,0
; wchar_t aQuad_hi
aQuad_hi:				; DATA XREF: .text:loc_47A355o
		unicode	0, <QUAD_HI>,0
; wchar_t aInt_0
aInt_0:					; DATA XREF: .text:loc_47A374o
		unicode	0, <INT>,0
; wchar_t aUint_1
aUint_1:				; DATA XREF: .text:loc_47A393o
		unicode	0, <UINT>,0
; wchar_t aBool
aBool:					; DATA XREF: .text:loc_47A3B2o
		unicode	0, <BOOL>,0
; wchar_t aByte_2
aByte_2:				; DATA XREF: .text:loc_47A3D1o
		unicode	0, <BYTE>,0
; wchar_t aChar
aChar:					; DATA XREF: .text:loc_47A3F0o
		unicode	0, <CHAR>,0
; wchar_t aWchar
aWchar:					; DATA XREF: .text:loc_47A40Fo
		unicode	0, <WCHAR>,0
; wchar_t aWord_1
aWord_1:				; DATA XREF: .text:loc_47A42Eo
		unicode	0, <WORD>,0
; wchar_t aMascii
aMascii:				; DATA XREF: .text:loc_47A48Bo
		unicode	0, <MASCII>,0
; wchar_t aMunicode
aMunicode:				; DATA XREF: .text:loc_47A4AAo
		unicode	0, <MUNICODE>,0
; wchar_t aFormat
aFormat:				; DATA XREF: .text:loc_47A4C9o
		unicode	0, <FORMAT>,0
; wchar_t aWformat
aWformat:				; DATA XREF: .text:loc_47A4E8o
		unicode	0, <WFORMAT>,0
; wchar_t aScan
aScan:					; DATA XREF: .text:loc_47A507o
		unicode	0, <SCAN>,0
; wchar_t off_542940
off_542940	dd offset off_530054+3	; DATA XREF: .text:loc_47A526o
aCan_0:
		unicode	0, <CAN>,0
; wchar_t aFloat_0
aFloat_0:				; DATA XREF: .text:loc_47A545o
		unicode	0, <FLOAT>,0
; wchar_t aDouble_lo
aDouble_lo:				; DATA XREF: .text:loc_47A564o
		unicode	0, <DOUBLE_LO>,0
; wchar_t aDouble_hi
aDouble_hi:				; DATA XREF: .text:loc_47A583o
		unicode	0, <DOUBLE_HI>,0
; wchar_t aLdouble_lo
aLdouble_lo:				; DATA XREF: .text:loc_47A5A2o
		unicode	0, <LDOUBLE_LO>,0
; wchar_t asc_542996
asc_542996	db 'L',0                ; DATA XREF: .text:loc_47A5C1o
aDouble_mi:
		unicode	0, <DOUBLE_MI>,0
; wchar_t aLdouble_hi
aLdouble_hi:				; DATA XREF: .text:loc_47A5E0o
		unicode	0, <LDOUBLE_HI>,0
; wchar_t aRsrc_string
aRsrc_string:				; DATA XREF: .text:loc_47A5FFo
		unicode	0, <RSRC_STRING>,0
; wchar_t word_5429DA
word_5429DA	dw 56h			; DATA XREF: .text:loc_47A61Eo
aOidptr:
		unicode	0, <OIDPTR>,0
; wchar_t aGroup_0
aGroup_0:				; DATA XREF: .text:loc_47A63Do
		unicode	0, <GROUP>,0
; wchar_t aStruct
aStruct:				; DATA XREF: .text:loc_47A6D6o
		unicode	0, <STRUCT>,0
; wchar_t aHandle
aHandle:				; DATA XREF: .text:loc_47A76Ao
		unicode	0, <HANDLE>,0
; wchar_t aHwnd_0
aHwnd_0:				; DATA XREF: .text:loc_47A789o
		unicode	0, <HWND>,0
; wchar_t aHmodule
aHmodule:				; DATA XREF: .text:loc_47A7A8o
		unicode	0, <HMODULE>,0
; wchar_t aHdc
aHdc:					; DATA XREF: .text:loc_47A7C7o
		unicode	0, <HDC>,0
; wchar_t aHgdi
aHgdi:					; DATA XREF: .text:loc_47A7E6o
		unicode	0, <HGDI>,0
; wchar_t aHmem
aHmem:					; DATA XREF: .text:loc_47A805o
		unicode	0, <HMEM>,0
; wchar_t aHkey
aHkey:					; DATA XREF: .text:loc_47A824o
		unicode	0, <HKEY>,0
; wchar_t aCallback_1
aCallback_1:				; DATA XREF: .text:loc_47A843o
		unicode	0, <CALLBACK>,0
; wchar_t aWinproca_0
aWinproca_0:				; DATA XREF: .text:loc_47A862o
		unicode	0, <WINPROCA>,0
; wchar_t aWinprocw_1
aWinprocw_1:				; DATA XREF: .text:loc_47A881o
		unicode	0, <WINPROCW>,0
; wchar_t aProcid
aProcid:				; DATA XREF: .text:loc_47A8A0o
		unicode	0, <PROCID>,0
; wchar_t aVoid_1
aVoid_1:				; DATA XREF: .text:loc_47A8BFo
		unicode	0, <VOID>,0
; wchar_t aQuad_0
aQuad_0:				; DATA XREF: .text:loc_47A8DEo
		unicode	0, <QUAD>,0
; wchar_t aAtext_1
aAtext_1:				; DATA XREF: .text:loc_47A8FDo
		unicode	0, <ATEXT>,0
; wchar_t aWtext_0
aWtext_0:				; DATA XREF: .text:loc_47A91Co
		unicode	0, <WTEXT>,0
; wchar_t aDouble_3
aDouble_3:				; DATA XREF: .text:loc_47A93Bo
		unicode	0, <DOUBLE>,0
; wchar_t aLdouble
aLdouble:				; DATA XREF: .text:loc_47A95Ao
		unicode	0, <LDOUBLE>,0
; wchar_t aNetsw_0
aNetsw_0:				; DATA XREF: .text:loc_47A979o
		unicode	0, <NETSW>,0
; wchar_t aNetsd_0
aNetsd_0:				; DATA XREF: .text:loc_47A998o
		unicode	0, <NETSD>,0
; wchar_t aNetgw_0
aNetgw_0:				; DATA XREF: .text:loc_47A9B7o
		unicode	0, <NETGW>,0
; wchar_t aNetgd_0
aNetgd_0:				; DATA XREF: .text:loc_47A9D6o
		unicode	0, <NETGD>,0
; wchar_t aNetbw_0
aNetbw_0:				; DATA XREF: .text:loc_47A9F5o
		unicode	0, <NETBW>,0
; wchar_t aNetbd_0
aNetbd_0:				; DATA XREF: .text:loc_47AA14o
		unicode	0, <NETBD>,0
; wchar_t aNetci
aNetci:					; DATA XREF: .text:loc_47AA33o
		unicode	0, <NETCI>,0
; wchar_t aNetch
aNetch:					; DATA XREF: .text:loc_47AA52o
		unicode	0, <NETCH>,0
; wchar_t aNetcf
aNetcf:					; DATA XREF: .text:loc_47AA71o
		unicode	0, <NETCF>,0
; wchar_t aNetcu
aNetcu:					; DATA XREF: .text:loc_47AA90o
		unicode	0, <NETCU>,0
aInvalidOrUnexp:			; DATA XREF: .text:loc_47AAAFo
		unicode	0, <Invalid or unexpected keyword>,0
aRedefinedTypeS:			; DATA XREF: .text:0047AB81o
		unicode	0, <  Redefined type >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
aBadStructureNa:			; DATA XREF: .text:0047AC59o
		unicode	0, <Bad structure name>,0
aLengthOfStruct:			; DATA XREF: .text:0047AC75o
		unicode	0, <Length of structure name is limited to 30 characters>,0
aExpectingField:			; DATA XREF: .text:0047ACF2o
		unicode	0, <Expecting field size or END>,0
aEmptyStructure:			; DATA XREF: .text:0047AD24o
		unicode	0, <Empty structures are not allowed>,0
aRedefinedStruc:			; DATA XREF: .text:0047AE0Bo
		unicode	0, <  Redefined structure >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
aTooManyItems:				; DATA XREF: .text:0047AF60o
		unicode	0, <Too many items>,0
; wchar_t aThree
aThree:					; DATA XREF: .text:loc_47AFB8o
		unicode	0, <THREE>,0
; wchar_t aDword_2
aDword_2:				; DATA XREF: .text:loc_47AFD9o
		unicode	0, <DWORD>,0
; wchar_t aQword_0
aQword_0:				; DATA XREF: .text:loc_47AFFAo
		unicode	0, <QWORD>,0
; wchar_t aTbyte_0
aTbyte_0:				; DATA XREF: .text:loc_47B01Bo
		unicode	0, <TBYTE>,0
aFieldSizeExpec:			; DATA XREF: .text:loc_47B03Co
		unicode	0, <Field size expected>,0
aInvalidRepeatC:			; DATA XREF: .text:0047B07Fo
		unicode	0, <Invalid repeat count>,0
aRepeatCountOut:			; DATA XREF: .text:loc_47B0A5o
		unicode	0, <Repeat count outside of allowed limits>,0
aTypeNameExpect:			; DATA XREF: .text:0047B0E0o
		unicode	0, <Type name expected>,0
aInvalidSizeOfF:			; DATA XREF: .text:0047B1A3o
		unicode	0, <Invalid size of FLOAT>,0
aInvalidSizeOfD:			; DATA XREF: .text:0047B1DAo
		unicode	0, <Invalid size of DOUBLE>,0
aInvalidSizeOfL:			; DATA XREF: .text:0047B211o
		unicode	0, <Invalid size of LDOUBLE>,0
aInvalidPointer:			; DATA XREF: .text:0047B330o
		unicode	0, <Invalid pointer size>,0
aPointerToUndef:			; DATA XREF: .text:0047B401o
		unicode	0, <Pointer to undefined type or structure>,0
aBadItemName:				; DATA XREF: .text:0047B49Ao
		unicode	0, <Bad item name>,0
aUndefinedType:				; DATA XREF: .text:0047B4FCo
		unicode	0, <Undefined type>,0
aChildStructure:			; DATA XREF: .text:loc_47B5FDo
		unicode	0, <Child structure is too comlex>,0
aSizeOfFieldIsN:			; DATA XREF: .text:loc_47B622o
		unicode	0, <Size of field is not multiple of child structure>,0
aUnableToGetDes:			; DATA XREF: .text:0047B655o
		unicode	0, <Unable to get description of child structure>,0
aResultingNameO:			; DATA XREF: .text:0047B726o
		unicode	0, <Resulting name of child structure member is too long>,0
; wchar_t a__1
a__1:					; DATA XREF: .text:0047B73Co
		unicode	0, <.>,0
; wchar_t aI__
aI__:					; DATA XREF: .text:0047B764o
		unicode	0, <[!%i.].>,0
aUndefinedChild:			; DATA XREF: .text:0047B853o
		unicode	0, <Undefined child member type>,0
aBadModuleName:				; DATA XREF: .text:0047B905o
		unicode	0, <Bad module name>,0
aLengthOfModule:			; DATA XREF: .text:0047B91Eo
		unicode	0, <Length of module name is limited to 31 character>,0
; wchar_t a_intern_
a_intern_:				; DATA XREF: .text:0047B938o
		unicode	0, <_INTERN_>,0
aPointAfterModu:			; DATA XREF: .text:loc_47B985o
		unicode	0, <Point after module name expected>,0
aBadFunctionNam:			; DATA XREF: .text:0047B9BEo
		unicode	0, <Bad function name>,0
aTooLongFunctio:			; DATA XREF: .text:0047B9DFo
		unicode	0, <Too long function name>,0
aVariableNumber:			; DATA XREF: .text:0047BA73o
		unicode	0, <Variable number of arguments is not allowed for PASCAL or>
		unicode	0, < STDFUNC>,0
aEllipsis___AsF:			; DATA XREF: .text:0047BA89o
		unicode	0, <Ellipsis \{...\} as first and only argument is not allowed>,0
aDuplicatedElli:			; DATA XREF: .text:0047BA9Fo
		unicode	0, <Duplicated ellipsis>,0
aKeywordOrNameO:			; DATA XREF: .text:0047BAC8o
		unicode	0, <Keyword or name of type expected>,0
aFunctionContai:			; DATA XREF: .text:0047BAF7o
		unicode	0, <Function contains too many formats>,0
aRedefinedProce:			; DATA XREF: .text:0047BC95o
		unicode	0, <  Redefined procedure >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
; wchar_t aReturns
aReturns:				; DATA XREF: .text:loc_47BD29o
		unicode	0, <RETURNS>,0
aDuplicatedRetu:			; DATA XREF: .text:0047BD48o
		unicode	0, <Duplicated RETURNS>,0
aReturnTypeExpe:			; DATA XREF: .text:0047BD8Eo
		unicode	0, <Return type expected>,0
aUndefinedRetur:			; DATA XREF: .text:0047BDD2o
		unicode	0, <Undefined return type or structure>,0
aCanTReturnStru:			; DATA XREF: .text:0047BDE6o
		unicode	0, <Can>
		dw 27h
		unicode	0, <t return structure, only pointer to structure>,0
; wchar_t aPreserves_1
aPreserves_1:				; DATA XREF: .text:loc_47BE1Fo
		unicode	0, <PRESERVES>,0
aDuplicatedPres:			; DATA XREF: .text:0047BE3Eo
		unicode	0, <Duplicated PRESERVES>,0
aRegisterNameEx:			; DATA XREF: .text:0047BE5Eo
		unicode	0, <Register name expected>,0
aCommaBetweenRe:			; DATA XREF: .text:loc_47BEE3o
		unicode	0, <Comma between register names expected>,0
aEllipsis___Mus:			; DATA XREF: .text:0047BF05o
		unicode	0, <Ellipsis \{...\} must be last in the list of arguments>,0
aTooManyArgumen:			; DATA XREF: .text:0047BF1Bo
		unicode	0, <Too many arguments>,0
; wchar_t aMark
aMark:					; DATA XREF: .text:0047BF35o
		unicode	0, <MARK>,0
aStructureIsNot:			; DATA XREF: .text:0047C0B0o
		unicode	0, <Structure is not allowed, only pointer to structure>,0
aBadParameterNa:			; DATA XREF: .text:0047C144o
		unicode	0, <Bad parameter name>,0
; wchar_t a_lo
a_lo:					; DATA XREF: .text:0048249Ao
		unicode	0, <_lo>,0
; wchar_t a_hi
a_hi:					; DATA XREF: .text:004824F0o
		unicode	0, <_hi>,0
; wchar_t a_mi
a_mi:					; DATA XREF: .text:004827ABo
		unicode	0, <_mi>,0
; wchar_t a______________
a______________:			; DATA XREF: .text:0048289Co
		unicode	0, <.................offset !%i>,0
aBadNameOfDataB:			; DATA XREF: .text:0047C1D9o
		unicode	0, <Bad name of data block>,0
aLengthOfDataNa:			; DATA XREF: .text:0047C1F2o
		unicode	0, <Length of data name is limited to 30 characters>,0
aDataExpected:				; DATA XREF: .text:0047C293o
		unicode	0, <Data expected>,0
aSizeOfRawDataE:			; DATA XREF: .text:0047C2B7o
		unicode	0, <Size of raw data exceeds allowed limit>,0
aEmptyRawDataBl:			; DATA XREF: .text:0047C381o
		unicode	0, <Empty raw data block>,0
aRedefinedDataB:			; DATA XREF: .text:0047C453o
		unicode	0, <  Redefined data block >
		dw 27h
		unicode	0, <!%s>
		dw 27h,	0
; wchar_t aFeatures
aFeatures:				; DATA XREF: .text:0047C546o
		unicode	0, <FEATURES>,0
aDuplicatedFeat:			; DATA XREF: .text:0047C581o
		unicode	0, <Duplicated FEATURES>,0
aUnrecognizedCo:			; DATA XREF: .text:0047C69Eo
		unicode	0, <Unrecognized constant or keyword>,0
aByteDataExpect:			; DATA XREF: .text:0047C6E1o
		unicode	0, <Byte data expected>,0
aSyntaxErrorInR:			; DATA XREF: .text:0047C7B0o
		unicode	0, <Syntax error in raw data description>,0
		unicode	0, <\\>,0
a_arg_1:
		unicode	0, <.arg>,0
aOutOfMemoryUna:
		unicode	0, <Out of memory - unable to process descriptions in \-!%s.arg\->,0
aFileS_argHasUn:
		unicode	0, <File \-!%s.arg\- has unsupported UNICODE big endian format>,0
aLoadingFunctio:
		unicode	0, <Loading function descriptions from \-!%s.arg\->,0
aNoreturn:
		unicode	0, <NORETURN>,0
aInfo_1:
		unicode	0, <INFO>,0
aInvalidTypeMod:
		unicode	0, <Invalid type modifier\{s\}>,0
aS_13:
		unicode	0, <  !%s>,0
aTranslator_1:
		unicode	0, <TRANSLATOR>,0
aType_6:
		unicode	0, <TYPE>,0
aFunction_1:
		unicode	0, <FUNCTION>,0
aPascal:
		unicode	0, <PASCAL>,0
aCfunc:
		unicode	0, <CFUNC>,0
aStdc:
		unicode	0, <STDC>,0
aRawdata:
		unicode	0, <RAWDATA>,0
aUnexpectedKeyw:
		unicode	0, <Unexpected keyword>,0
aLineI_SS_1:
		unicode	0, <  Line !%i. !%s \{!%s\}>,0
aLineI_S_1:
		unicode	0, <  Line !%i. !%s>,0
		unicode	0, <$>,0
aRedefinedConst:
		unicode	0, <  Redefined constant \-!%s\->,0
a1Constant:
		unicode	0, <1 constant>,0
aIConstants:
		unicode	0, <!%i constants>,0
; wchar_t asc_543C58
asc_543C58:				; DATA XREF: .text:0047E1A5o
		unicode	0, <, >,0
a1Group:
		unicode	0, <1 group>,0
aIGroups:
		unicode	0, <!%i groups>,0
a1Translator:
		unicode	0, <1 translator>,0
aITranslators:
		unicode	0, <!%i translators>,0
a1Structure:
		unicode	0, <1 structure>,0
aIStructures:
		unicode	0, <!%i structures>,0
a1Type:
		unicode	0, <1 type>,0
aITypes:
		unicode	0, <!%i types>,0
a1Function:
		unicode	0, <1 function>,0
aIFunctions:
		unicode	0, <!%i functions>,0
a1DataBlock:
		unicode	0, <1 data block>,0
aIDataBlocks:
		unicode	0, <!%i data blocks>,0
aTotalSizeOfKno:
		unicode	0, <  Total size of known data is !%i bytes>,0
; wchar_t a_S08x
a_S08x:					; DATA XREF: .text:00483850o
		unicode	0, <!%.*s \{!%08X\}>,0
; wchar_t a08x_S
a08x_S:					; DATA XREF: .text:00483878o
		unicode	0, <!%08X  !%.*s>,0
aI32		db 'I32',0              ; DATA XREF: .text:00483D90o
aI64		db 'I64',0              ; DATA XREF: .text:00483DA4o
aI_13		db 'I',0                ; DATA XREF: .text:00483F8Fo
a32_1:
		unicode	0, <32>,0
aI64_1:					; DATA XREF: .text:00483FA3o
		unicode	0, <I64>,0
aFmt1:					; DATA XREF: .data:off_5417C4o
					; .data:00541A04o
		unicode	0, <Fmt1>,0
aFmt2:					; DATA XREF: .data:005417C8o
					; .data:00541A14o
		unicode	0, <Fmt2>,0
aFmt3:					; DATA XREF: .data:005417CCo
					; .data:00541A24o
		unicode	0, <Fmt3>,0
aFmt4:					; DATA XREF: .data:005417D0o
					; .data:00541A34o
		unicode	0, <Fmt4>,0
aFmt5:					; DATA XREF: .data:005417D4o
					; .data:00541A44o
		unicode	0, <Fmt5>,0
aFmt6:					; DATA XREF: .data:005417D8o
					; .data:00541A54o
		unicode	0, <Fmt6>,0
aFmt7:					; DATA XREF: .data:005417DCo
					; .data:00541A64o
		unicode	0, <Fmt7>,0
aFmt8:					; DATA XREF: .data:005417E0o
					; .data:00541A74o
		unicode	0, <Fmt8>,0
aFmt9:					; DATA XREF: .data:005417E4o
					; .data:00541A84o
		unicode	0, <Fmt9>,0
aFmt10:					; DATA XREF: .data:005417E8o
					; .data:00541A94o
		unicode	0, <Fmt10>,0
aFmt11:					; DATA XREF: .data:005417ECo
					; .data:00541AA4o
		unicode	0, <Fmt11>,0
aFmt12:					; DATA XREF: .data:005417F0o
					; .data:00541AB4o
		unicode	0, <Fmt12>,0
aFmt13:					; DATA XREF: .data:005417F4o
					; .data:00541AC4o
		unicode	0, <Fmt13>,0
aFmt14:					; DATA XREF: .data:005417F8o
					; .data:00541AD4o
		unicode	0, <Fmt14>,0
aFmt15:					; DATA XREF: .data:005417FCo
					; .data:00541AE4o
		unicode	0, <Fmt15>,0
aFmt16:					; DATA XREF: .data:00541800o
					; .data:00541AF4o
		unicode	0, <Fmt16>,0
aFmt17:					; DATA XREF: .data:00541804o
					; .data:00541B04o
		unicode	0, <Fmt17>,0
aFmt18:					; DATA XREF: .data:00541808o
					; .data:00541B14o
		unicode	0, <Fmt18>,0
aFmt19:					; DATA XREF: .data:0054180Co
					; .data:00541B24o
		unicode	0, <Fmt19>,0
aFmt20:					; DATA XREF: .data:00541810o
					; .data:00541B34o
		unicode	0, <Fmt20>,0
aFmt21:					; DATA XREF: .data:00541814o
					; .data:00541B44o
		unicode	0, <Fmt21>,0
aFmt22:					; DATA XREF: .data:00541818o
					; .data:00541B54o
		unicode	0, <Fmt22>,0
aFmt23:					; DATA XREF: .data:0054181Co
					; .data:00541B64o
		unicode	0, <Fmt23>,0
aFmt24:					; DATA XREF: .data:00541820o
		unicode	0, <Fmt24>,0
; wchar_t asc_543F18
asc_543F18:				; DATA XREF: .text:loc_47C873o
		dw 3Ch
		unicode	0, <!%>,0
; wchar_t asc_543F1E
asc_543F1E:				; DATA XREF: .text:0047C96Co
		dw 3Ch
		unicode	0, <*>
		dw 3Eh,	0
; wchar_t a__3
a__3:					; DATA XREF: .text:0047CAB9o
		dw 3Ch
		unicode	0, <.*>
		dw 3Eh,	0
; wchar_t a____9
a____9:					; DATA XREF: .text:0047CD62o
		unicode	0, <...>,0
; wchar_t a____11
;a!?!?!?_11:				; DATA XREF: .text:0047DA5Bo
		unicode	0, <!?!?!?>,0
aLow08x:				; DATA XREF: .text:0047E284o
		unicode	0, <Low: !%08X>,0
; wchar_t asc_543F54
asc_543F54:				; DATA XREF: .text:0047E2CDo
		unicode	0, < =>
		dw 3Eh
		unicode	0, < >,0
; wchar_t aLd
aLd:					; DATA XREF: .text:0047E2EBo
		unicode	0, <!%Ld>,0
aHigh08x:				; DATA XREF: .text:0047E326o
		unicode	0, <High: !%08X>,0
; wchar_t aLi
aLi:					; DATA XREF: .text:0047E37Ao
		unicode	0, <!%li>,0
; wchar_t aLi_
aLi_:					; DATA XREF: .text:0047E394o
		unicode	0, <!%li.>,0
; wchar_t aLu_0
aLu_0:					; DATA XREF: .text:0047E3D5o
		unicode	0, <!%lu>,0
; wchar_t aLu__1
aLu__1:					; DATA XREF: .text:0047E3EFo
		unicode	0, <!%lu.>,0
; wchar_t aFalse
aFalse:					; DATA XREF: .text:0047E42Co
		unicode	0, <FALSE>,0
; wchar_t aTrue_3
aTrue_3:				; DATA XREF: .text:0047E44Ao
		unicode	0, <TRUE>,0
; wchar_t a02x_7
a02x_7:					; DATA XREF: .text:0047E47Fo
		unicode	0, <!%02X>,0
; wchar_t aC_4
aC_4:					; DATA XREF: .text:0047E4CEo
		dw 27h
		unicode	0, <!%c>
		dw 27h,	0
; wchar_t a04x_5
a04x_5:					; DATA XREF: .text:0047E5DDo
		unicode	0, <!%04X>,0
; wchar_t aNull_4
aNull_4:				; DATA XREF: .text:0047E61Ao
		unicode	0, <NULL>,0
aMiddle08x:				; DATA XREF: .text:0047EE71o
		unicode	0, <Middle: !%08X>,0
; wchar_t asc_543FF8
asc_543FF8:				; DATA XREF: .text:0047EF56o
		unicode	0, < =>
		dw 3Eh
		unicode	0, < >
		dw 27h,	0
; wchar_t aS_11
aS_11:					; DATA XREF: .text:0047F137o
		unicode	0, < ->
		dw 3Eh
		unicode	0, < !%s {>,0
; wchar_t asc_544016
asc_544016:				; DATA XREF: .text:0047F1C5o
		unicode	0, <=>,0
; wchar_t asc_54401A
asc_54401A:				; DATA XREF: .text:0047F224o
		unicode	0, <}>,0
; wchar_t aInvalid_handle
aInvalid_handle:			; DATA XREF: .text:0047F298o
		unicode	0, <INVALID_HANDLE_VALUE>,0
; wchar_t aHwnd_message
aHwnd_message:				; DATA XREF: .text:0047F330o
		unicode	0, <HWND_MESSAGE>,0
aClass:					; DATA XREF: .text:0047F39Fo
		unicode	0, <, class = >,0
aText_0:				; DATA XREF: .text:0047F407o
		unicode	0, <, text = >,0
; wchar_t asc_54408C
asc_54408C:				; DATA XREF: .text:0047F4E4o
		unicode	0, < \{>
		dw 27h,	0
; wchar_t asc_544094
asc_544094:				; DATA XREF: .text:0047F51Eo
		dw 27h
		unicode	0, <\}>,0
asc_54409A	db ' ',0                ; DATA XREF: .text:loc_47F6D0o
aDcOrMemoryDc:
		unicode	0, <\{DC or Memory DC\}>,0
aMetafile:				; DATA XREF: .text:loc_47F6F5o
		unicode	0, < \{Metafile\}>,0
aMemoryDc:				; DATA XREF: .text:loc_47F71Ao
		unicode	0, < \{Memory DC\}>,0
aDcOfWindow08x:				; DATA XREF: .text:0047F750o
		unicode	0, < \{DC of window !%08X>,0
; wchar_t asc_54411A
asc_54411A:				; DATA XREF: .text:0047F8F6o
		unicode	0, < \{>,0
a___Dc:					; DATA XREF: .text:loc_47FACFo
		unicode	0, < \{DC\}>,0
aRegion:				; DATA XREF: .text:loc_47FAF7o
		unicode	0, < \{Region>,0
; wchar_t aRect
aRect:					; DATA XREF: .text:0047FB3Co
		unicode	0, <RECT>,0
aBitmap:				; DATA XREF: .text:loc_47FC2Co
		unicode	0, < \{Bitmap\}>,0
aPath:					; DATA XREF: .text:loc_47FC54o
		unicode	0, < \{Path\}>,0
aPalette:				; DATA XREF: .text:loc_47FC7Co
		unicode	0, < \{Palette\}>,0
aColorSpace:				; DATA XREF: .text:loc_47FCA4o
		unicode	0, < \{Color space\}>,0
aFont:					; DATA XREF: .text:loc_47FCCCo
		unicode	0, < \{Font\}>,0
aBrush:					; DATA XREF: .text:loc_47FCF4o
		unicode	0, < \{Brush>,0
; wchar_t aLogsolidbrush
aLogsolidbrush:				; DATA XREF: .text:0047FD36o
		unicode	0, <LOGSOLIDBRUSH>,0
aPen:					; DATA XREF: .text:loc_47FE48o
		unicode	0, < \{Pen\}>,0
; wchar_t aHkey_classes_1
aHkey_classes_1:			; DATA XREF: .text:0047FF32o
		unicode	0, <HKEY_CLASSES_ROOT>,0
; wchar_t aHkey_current_u
aHkey_current_u:			; DATA XREF: .text:0047FF5Co
		unicode	0, <HKEY_CURRENT_USER>,0
; wchar_t aHkey_local_mac
aHkey_local_mac:			; DATA XREF: .text:0047FF86o
		unicode	0, <HKEY_LOCAL_MACHINE>,0
; wchar_t aHkey_users
aHkey_users:				; DATA XREF: .text:0047FFB0o
		unicode	0, <HKEY_USERS>,0
; wchar_t aHkey_performan
aHkey_performan:			; DATA XREF: .text:0047FFDAo
		unicode	0, <HKEY_PERFORMANCE_DATA>,0
; wchar_t aHkey_current_c
aHkey_current_c:			; DATA XREF: .text:00480004o
		unicode	0, <HKEY_CURRENT_CONFIG>,0
; wchar_t aHkey_dyn_data
aHkey_dyn_data:				; DATA XREF: .text:0048002Eo
		unicode	0, <HKEY_DYN_DATA>,0
; wchar_t asc_5442DE
asc_5442DE:				; DATA XREF: .text:00480191o
		unicode	0, <[>,0
; wchar_t asc_5442E2
asc_5442E2:				; DATA XREF: .text:004801CBo
		unicode	0, <]>,0
; wchar_t aXU_
aXU_:					; DATA XREF: .text:004802A8o
		unicode	0, <!%X \{!%u.\}>,0
aDebuggee_0:				; DATA XREF: .text:004802E3o
		unicode	0, <, Debuggee>,0
; wchar_t asc_54430E
asc_54430E:				; DATA XREF: .text:00480714o
		unicode	0, < ->
		dw 3Eh
		unicode	0, < >,0
; wchar_t aI__7
aI__7:					; DATA XREF: .text:00480A97o
		unicode	0, <!%i.>,0
; wchar_t aConst_1
aConst_1:				; DATA XREF: .text:00480AABo
		unicode	0, <CONST >,0
; wchar_t aFloat_8
aFloat_8:				; DATA XREF: .text:00480C10o
		unicode	0, <FLOAT >,0
; wchar_t aUnicode
aUnicode:				; DATA XREF: .text:00480CABo
		unicode	0, <UNICODE >,0
aArg1_1:				; DATA XREF: .data:off_541824o
		unicode	0, <Arg1>,0
aArg1_2:				; DATA XREF: .data:00541828o
		unicode	0, <Arg1_2>,0
aArg1_3:				; DATA XREF: .data:0054182Co
		unicode	0, <Arg1_3>,0
aArg1_4:				; DATA XREF: .data:00541830o
		unicode	0, <Arg1_4>,0
aArg2:					; DATA XREF: .data:00541834o
		unicode	0, <Arg2>,0
aArg2_3:				; DATA XREF: .data:00541838o
		unicode	0, <Arg2_3>,0
aArg2_4:				; DATA XREF: .data:0054183Co
		unicode	0, <Arg2_4>,0
aArg2_5:				; DATA XREF: .data:00541840o
		unicode	0, <Arg2_5>,0
aArg3:					; DATA XREF: .data:00541844o
		unicode	0, <Arg3>,0
aArg3_4:				; DATA XREF: .data:00541848o
		unicode	0, <Arg3_4>,0
aArg3_5:				; DATA XREF: .data:0054184Co
		unicode	0, <Arg3_5>,0
aArg3_6:				; DATA XREF: .data:00541850o
		unicode	0, <Arg3_6>,0
aArg4:					; DATA XREF: .data:00541854o
		unicode	0, <Arg4>,0
aArg4_5:				; DATA XREF: .data:00541858o
		unicode	0, <Arg4_5>,0
aArg4_6:				; DATA XREF: .data:0054185Co
		unicode	0, <Arg4_6>,0
aArg4_7:				; DATA XREF: .data:00541860o
		unicode	0, <Arg4_7>,0
aArg5:					; DATA XREF: .data:00541864o
		unicode	0, <Arg5>,0
aArg5_6:				; DATA XREF: .data:00541868o
		unicode	0, <Arg5_6>,0
aArg5_7:				; DATA XREF: .data:0054186Co
		unicode	0, <Arg5_7>,0
aArg5_8:				; DATA XREF: .data:00541870o
		unicode	0, <Arg5_8>,0
aArg6:					; DATA XREF: .data:00541874o
		unicode	0, <Arg6>,0
aArg6_7:				; DATA XREF: .data:00541878o
		unicode	0, <Arg6_7>,0
aArg6_8:				; DATA XREF: .data:0054187Co
		unicode	0, <Arg6_8>,0
aArg6_9:				; DATA XREF: .data:00541880o
		unicode	0, <Arg6_9>,0
aArg7:					; DATA XREF: .data:00541884o
		unicode	0, <Arg7>,0
aArg7_8:				; DATA XREF: .data:00541888o
		unicode	0, <Arg7_8>,0
aArg7_9:				; DATA XREF: .data:0054188Co
		unicode	0, <Arg7_9>,0
aArg7_10:				; DATA XREF: .data:00541890o
		unicode	0, <Arg7_10>,0
aArg8:					; DATA XREF: .data:00541894o
		unicode	0, <Arg8>,0
aArg8_9:				; DATA XREF: .data:00541898o
		unicode	0, <Arg8_9>,0
aArg8_10:				; DATA XREF: .data:0054189Co
		unicode	0, <Arg8_10>,0
aArg8_11:				; DATA XREF: .data:005418A0o
		unicode	0, <Arg8_11>,0
aArg9:					; DATA XREF: .data:005418A4o
		unicode	0, <Arg9>,0
aArg9_10:				; DATA XREF: .data:005418A8o
		unicode	0, <Arg9_10>,0
aArg9_11:				; DATA XREF: .data:005418ACo
		unicode	0, <Arg9_11>,0
aArg9_12:				; DATA XREF: .data:005418B0o
		unicode	0, <Arg9_12>,0
aArg10:					; DATA XREF: .data:005418B4o
		unicode	0, <Arg10>,0
aArg10_11:				; DATA XREF: .data:005418B8o
		unicode	0, <Arg10_11>,0
aArg10_12:				; DATA XREF: .data:005418BCo
		unicode	0, <Arg10_12>,0
aArg10_13:				; DATA XREF: .data:005418C0o
		unicode	0, <Arg10_13>,0
aArg11:					; DATA XREF: .data:005418C4o
		unicode	0, <Arg11>,0
aArg11_12:				; DATA XREF: .data:005418C8o
		unicode	0, <Arg11_12>,0
aArg11_13:				; DATA XREF: .data:005418CCo
		unicode	0, <Arg11_13>,0
aArg11_14:				; DATA XREF: .data:005418D0o
		unicode	0, <Arg11_14>,0
aArg12:					; DATA XREF: .data:005418D4o
		unicode	0, <Arg12>,0
aArg12_13:				; DATA XREF: .data:005418D8o
		unicode	0, <Arg12_13>,0
aArg12_14:				; DATA XREF: .data:005418DCo
		unicode	0, <Arg12_14>,0
aArg12_15:				; DATA XREF: .data:005418E0o
		unicode	0, <Arg12_15>,0
aArg13:					; DATA XREF: .data:005418E4o
		unicode	0, <Arg13>,0
aArg13_14:				; DATA XREF: .data:005418E8o
		unicode	0, <Arg13_14>,0
aArg13_15:				; DATA XREF: .data:005418ECo
		unicode	0, <Arg13_15>,0
aArg13_16:				; DATA XREF: .data:005418F0o
		unicode	0, <Arg13_16>,0
aArg14:					; DATA XREF: .data:005418F4o
		unicode	0, <Arg14>,0
aArg14_15:				; DATA XREF: .data:005418F8o
		unicode	0, <Arg14_15>,0
aArg14_16:				; DATA XREF: .data:005418FCo
		unicode	0, <Arg14_16>,0
aArg14_17:				; DATA XREF: .data:00541900o
		unicode	0, <Arg14_17>,0
aArg15:					; DATA XREF: .data:00541904o
		unicode	0, <Arg15>,0
aArg15_16:				; DATA XREF: .data:00541908o
		unicode	0, <Arg15_16>,0
aArg15_17:				; DATA XREF: .data:0054190Co
		unicode	0, <Arg15_17>,0
aArg15_18:				; DATA XREF: .data:00541910o
		unicode	0, <Arg15_18>,0
aArg16:					; DATA XREF: .data:00541914o
		unicode	0, <Arg16>,0
aArg16_17:				; DATA XREF: .data:00541918o
		unicode	0, <Arg16_17>,0
aArg16_18:				; DATA XREF: .data:0054191Co
		unicode	0, <Arg16_18>,0
aArg16_19:				; DATA XREF: .data:00541920o
		unicode	0, <Arg16_19>,0
aArg17:					; DATA XREF: .data:00541924o
		unicode	0, <Arg17>,0
aArg17_18:				; DATA XREF: .data:00541928o
		unicode	0, <Arg17_18>,0
aArg17_19:				; DATA XREF: .data:0054192Co
		unicode	0, <Arg17_19>,0
aArg17_20:				; DATA XREF: .data:00541930o
		unicode	0, <Arg17_20>,0
aArg18:					; DATA XREF: .data:00541934o
		unicode	0, <Arg18>,0
aArg18_19:				; DATA XREF: .data:00541938o
		unicode	0, <Arg18_19>,0
aArg18_20:				; DATA XREF: .data:0054193Co
		unicode	0, <Arg18_20>,0
aArg18_21:				; DATA XREF: .data:00541940o
		unicode	0, <Arg18_21>,0
aArg19:					; DATA XREF: .data:00541944o
		unicode	0, <Arg19>,0
aArg19_20:				; DATA XREF: .data:00541948o
		unicode	0, <Arg19_20>,0
aArg19_21:				; DATA XREF: .data:0054194Co
		unicode	0, <Arg19_21>,0
aArg19_22:				; DATA XREF: .data:00541950o
		unicode	0, <Arg19_22>,0
aArg20:					; DATA XREF: .data:00541954o
		unicode	0, <Arg20>,0
aArg20_21:				; DATA XREF: .data:00541958o
		unicode	0, <Arg20_21>,0
aArg20_22:				; DATA XREF: .data:0054195Co
		unicode	0, <Arg20_22>,0
aArg20_23:				; DATA XREF: .data:00541960o
		unicode	0, <Arg20_23>,0
aArg21:					; DATA XREF: .data:00541964o
		unicode	0, <Arg21>,0
aArg21_22:				; DATA XREF: .data:00541968o
		unicode	0, <Arg21_22>,0
aArg21_23:				; DATA XREF: .data:0054196Co
		unicode	0, <Arg21_23>,0
aArg21_24:				; DATA XREF: .data:00541970o
		unicode	0, <Arg21_24>,0
aArg22:					; DATA XREF: .data:00541974o
		unicode	0, <Arg22>,0
aArg22_23:				; DATA XREF: .data:00541978o
		unicode	0, <Arg22_23>,0
aArg22_24:				; DATA XREF: .data:0054197Co
		unicode	0, <Arg22_24>,0
aArg23:					; DATA XREF: .data:00541984o
		unicode	0, <Arg23>,0
aArg23_24:				; DATA XREF: .data:00541988o
		unicode	0, <Arg23_24>,0
aVararg1:				; DATA XREF: .data:00541994o
		unicode	0, <Vararg1>,0
aVararg1_2:				; DATA XREF: .data:00541998o
		unicode	0, <Vararg1_2>,0
aVararg1_3:				; DATA XREF: .data:0054199Co
		unicode	0, <Vararg1_3>,0
aVararg1_4:				; DATA XREF: .data:005419A0o
		unicode	0, <Vararg1_4>,0
aVararg2:				; DATA XREF: .data:005419A4o
		unicode	0, <Vararg2>,0
aVararg2_3:				; DATA XREF: .data:005419A8o
		unicode	0, <Vararg2_3>,0
aVararg2_4:				; DATA XREF: .data:005419ACo
		unicode	0, <Vararg2_4>,0
aVararg2_5:				; DATA XREF: .data:005419B0o
		unicode	0, <Vararg2_5>,0
aVararg3:				; DATA XREF: .data:005419B4o
		unicode	0, <Vararg3>,0
aVararg3_4:				; DATA XREF: .data:005419B8o
		unicode	0, <Vararg3_4>,0
aVararg3_5:				; DATA XREF: .data:005419BCo
		unicode	0, <Vararg3_5>,0
aVararg3_6:				; DATA XREF: .data:005419C0o
		unicode	0, <Vararg3_6>,0
aVararg4:				; DATA XREF: .data:005419C4o
		unicode	0, <Vararg4>,0
aVararg4_5:				; DATA XREF: .data:005419C8o
		unicode	0, <Vararg4_5>,0
aVararg4_6:				; DATA XREF: .data:005419CCo
		unicode	0, <Vararg4_6>,0
aVararg4_7:				; DATA XREF: .data:005419D0o
		unicode	0, <Vararg4_7>,0
aVararg5:				; DATA XREF: .data:005419D4o
		unicode	0, <Vararg5>,0
aVararg5_6:				; DATA XREF: .data:005419D8o
		unicode	0, <Vararg5_6>,0
aVararg5_7:				; DATA XREF: .data:005419DCo
		unicode	0, <Vararg5_7>,0
aVararg5_8:				; DATA XREF: .data:005419E0o
		unicode	0, <Vararg5_8>,0
aVararg6:				; DATA XREF: .data:005419E4o
		unicode	0, <Vararg6>,0
aVararg6_7:				; DATA XREF: .data:005419E8o
		unicode	0, <Vararg6_7>,0
aVararg6_8:				; DATA XREF: .data:005419ECo
		unicode	0, <Vararg6_8>,0
aVararg7:				; DATA XREF: .data:005419F4o
		unicode	0, <Vararg7>,0
aVararg7_8:				; DATA XREF: .data:005419F8o
		unicode	0, <Vararg7_8>,0
aFmt1_2:				; DATA XREF: .data:00541A08o
		unicode	0, <Fmt1_2>,0
aFmt1_3:				; DATA XREF: .data:00541A0Co
		unicode	0, <Fmt1_3>,0
aFmt1_4:				; DATA XREF: .data:00541A10o
		unicode	0, <Fmt1_4>,0
aFmt2_3:				; DATA XREF: .data:00541A18o
		unicode	0, <Fmt2_3>,0
aFmt2_4:				; DATA XREF: .data:00541A1Co
		unicode	0, <Fmt2_4>,0
aFmt2_5:				; DATA XREF: .data:00541A20o
		unicode	0, <Fmt2_5>,0
aFmt3_4:				; DATA XREF: .data:00541A28o
		unicode	0, <Fmt3_4>,0
aFmt3_5:				; DATA XREF: .data:00541A2Co
		unicode	0, <Fmt3_5>,0
aFmt3_6:				; DATA XREF: .data:00541A30o
		unicode	0, <Fmt3_6>,0
aFmt4_5:				; DATA XREF: .data:00541A38o
		unicode	0, <Fmt4_5>,0
aFmt4_6:				; DATA XREF: .data:00541A3Co
		unicode	0, <Fmt4_6>,0
aFmt4_7:				; DATA XREF: .data:00541A40o
		unicode	0, <Fmt4_7>,0
aFmt5_6:				; DATA XREF: .data:00541A48o
		unicode	0, <Fmt5_6>,0
aFmt5_7:				; DATA XREF: .data:00541A4Co
		unicode	0, <Fmt5_7>,0
aFmt5_8:				; DATA XREF: .data:00541A50o
		unicode	0, <Fmt5_8>,0
aFmt6_7:				; DATA XREF: .data:00541A58o
		unicode	0, <Fmt6_7>,0
aFmt6_8:				; DATA XREF: .data:00541A5Co
		unicode	0, <Fmt6_8>,0
aFmt6_9:				; DATA XREF: .data:00541A60o
		unicode	0, <Fmt6_9>,0
aFmt7_8:				; DATA XREF: .data:00541A68o
		unicode	0, <Fmt7_8>,0
aFmt7_9:				; DATA XREF: .data:00541A6Co
		unicode	0, <Fmt7_9>,0
aFmt7_10:				; DATA XREF: .data:00541A70o
		unicode	0, <Fmt7_10>,0
aFmt8_9:				; DATA XREF: .data:00541A78o
		unicode	0, <Fmt8_9>,0
aFmt8_10:				; DATA XREF: .data:00541A7Co
		unicode	0, <Fmt8_10>,0
aFmt8_11:				; DATA XREF: .data:00541A80o
		unicode	0, <Fmt8_11>,0
aFmt9_10:				; DATA XREF: .data:00541A88o
		unicode	0, <Fmt9_10>,0
aFmt9_11:				; DATA XREF: .data:00541A8Co
		unicode	0, <Fmt9_11>,0
aFmt9_12:				; DATA XREF: .data:00541A90o
		unicode	0, <Fmt9_12>,0
aFmt10_11:				; DATA XREF: .data:00541A98o
		unicode	0, <Fmt10_11>,0
aFmt10_12:				; DATA XREF: .data:00541A9Co
		unicode	0, <Fmt10_12>,0
aFmt10_13:				; DATA XREF: .data:00541AA0o
		unicode	0, <Fmt10_13>,0
aFmt11_12:				; DATA XREF: .data:00541AA8o
		unicode	0, <Fmt11_12>,0
aFmt11_13:				; DATA XREF: .data:00541AACo
		unicode	0, <Fmt11_13>,0
aFmt11_14:				; DATA XREF: .data:00541AB0o
		unicode	0, <Fmt11_14>,0
aFmt12_13:				; DATA XREF: .data:00541AB8o
		unicode	0, <Fmt12_13>,0
aFmt12_14:				; DATA XREF: .data:00541ABCo
		unicode	0, <Fmt12_14>,0
aFmt12_15:				; DATA XREF: .data:00541AC0o
		unicode	0, <Fmt12_15>,0
aFmt13_14:				; DATA XREF: .data:00541AC8o
		unicode	0, <Fmt13_14>,0
aFmt13_15:				; DATA XREF: .data:00541ACCo
		unicode	0, <Fmt13_15>,0
aFmt13_16:				; DATA XREF: .data:00541AD0o
		unicode	0, <Fmt13_16>,0
aFmt14_15:				; DATA XREF: .data:00541AD8o
		unicode	0, <Fmt14_15>,0
aFmt14_16:				; DATA XREF: .data:00541ADCo
		unicode	0, <Fmt14_16>,0
aFmt14_17:				; DATA XREF: .data:00541AE0o
		unicode	0, <Fmt14_17>,0
aFmt15_16:				; DATA XREF: .data:00541AE8o
		unicode	0, <Fmt15_16>,0
aFmt15_17:				; DATA XREF: .data:00541AECo
		unicode	0, <Fmt15_17>,0
aFmt15_18:				; DATA XREF: .data:00541AF0o
		unicode	0, <Fmt15_18>,0
aFmt16_17:				; DATA XREF: .data:00541AF8o
		unicode	0, <Fmt16_17>,0
aFmt16_18:				; DATA XREF: .data:00541AFCo
		unicode	0, <Fmt16_18>,0
aFmt16_19:				; DATA XREF: .data:00541B00o
		unicode	0, <Fmt16_19>,0
aFmt17_18:				; DATA XREF: .data:00541B08o
		unicode	0, <Fmt17_18>,0
aFmt17_19:				; DATA XREF: .data:00541B0Co
		unicode	0, <Fmt17_19>,0
aFmt17_20:				; DATA XREF: .data:00541B10o
		unicode	0, <Fmt17_20>,0
aFmt18_19:				; DATA XREF: .data:00541B18o
		unicode	0, <Fmt18_19>,0
aFmt18_20:				; DATA XREF: .data:00541B1Co
		unicode	0, <Fmt18_20>,0
aFmt18_21:				; DATA XREF: .data:00541B20o
		unicode	0, <Fmt18_21>,0
aFmt19_20:				; DATA XREF: .data:00541B28o
		unicode	0, <Fmt19_20>,0
aFmt19_21:				; DATA XREF: .data:00541B2Co
		unicode	0, <Fmt19_21>,0
aFmt19_22:				; DATA XREF: .data:00541B30o
		unicode	0, <Fmt19_22>,0
aFmt20_21:				; DATA XREF: .data:00541B38o
		unicode	0, <Fmt20_21>,0
aFmt20_22:				; DATA XREF: .data:00541B3Co
		unicode	0, <Fmt20_22>,0
aFmt20_23:				; DATA XREF: .data:00541B40o
		unicode	0, <Fmt20_23>,0
aFmt21_22:				; DATA XREF: .data:00541B48o
		unicode	0, <Fmt21_22>,0
aFmt21_23:				; DATA XREF: .data:00541B4Co
		unicode	0, <Fmt21_23>,0
aFmt21_24:				; DATA XREF: .data:00541B50o
		unicode	0, <Fmt21_24>,0
aFmt22_23:				; DATA XREF: .data:00541B58o
		unicode	0, <Fmt22_23>,0
aFmt22_24:				; DATA XREF: .data:00541B5Co
		unicode	0, <Fmt22_24>,0
aFmt23_24:				; DATA XREF: .data:00541B68o
		unicode	0, <Fmt23_24>,0
; wchar_t aDll
aDll:					; DATA XREF: .text:00484114o
		unicode	0, <DLL>,0
; wchar_t a_intern___1
a_intern___1:				; DATA XREF: .text:00484190o
		unicode	0, <_INTERN_.>,0
; wchar_t aU_17
aU_17:					; DATA XREF: .text:004842F0o
		unicode	0, <#!%u>,0
; wchar_t aMsvcrt_
aMsvcrt_:				; DATA XREF: .text:00484582o
		unicode	0, <MSVCRT.>,0
; wchar_t asc_544EE4
asc_544EE4:				; DATA XREF: .text:00484D3Ao
		unicode	0, < ->
		dw 3Eh
		unicode	0, < {>,0
; wchar_t asc_544EF0
asc_544EF0:				; DATA XREF: .text:00484D69o
		unicode	0, <,>,0
aUnterminatedSt:			; DATA XREF: .text:00485883o
		unicode	0, <Unterminated string>,0
aStringIsTooLon:			; DATA XREF: .text:004858EEo
		unicode	0, <String is too long>,0
aHexEscapeMustH:			; DATA XREF: .text:loc_485A16o
		unicode	0, <Hex escape must have two digits>,0
aUnsupportedEsc:			; DATA XREF: .text:loc_485A97o
		unicode	0, <Unsupported escape sequence>,0
aUnterminatedCh:			; DATA XREF: .text:00485AE1o
		unicode	0, <Unterminated character constant>,0
aUnicodeChara_3:			; DATA XREF: .text:00485B1Do
		unicode	0, <UNICODE character constants are not allowed>,0
aEndOfCommentOu:			; DATA XREF: .text:00485D32o
		unicode	0, <End of comment outside the comment>,0
aMaskedDecimalN:			; DATA XREF: .text:00486361o
		unicode	0, <Masked decimal numbers are not allowed>,0
aInvalidFloat_0:			; DATA XREF: .text:00486446o
		unicode	0, <Invalid floating-point exponent>,0
aPrefix0xAndSuf:			; DATA XREF: .text:004865A0o
		unicode	0, <Prefix 0x and suffix h are mutually exclusive>,0
aInvalidOrOutOf:			; DATA XREF: .text:loc_486651o
		unicode	0, <Invalid or out-of-range number>,0
dword_5451C0	dd 1			; DATA XREF: .text:004868C5w
; wchar_t a0
a0:					; DATA XREF: .text:0048720Co
		unicode	0, <0>,0
; wchar_t aTab
aTab:					; DATA XREF: .text:0048722Ao
		unicode	0, <TAB>,0
; wchar_t aLf
aLf:					; DATA XREF: .text:00487248o
		unicode	0, <LF>,0
; wchar_t aCr
aCr:					; DATA XREF: .text:loc_487260o
		unicode	0, <CR>,0
; wchar_t a02x_2
a02x_2:					; DATA XREF: .text:004873EDo
		unicode	0, <!%02X>,0
; wchar_t aX02x_1
aX02x_1:				; DATA XREF: .text:0048740Fo
		unicode	0, <\\x!%02X>,0
; wchar_t aAscii_0
aAscii_0:				; DATA XREF: .text:004875C0o
		unicode	0, <ASCII >,0
; wchar_t aUnicode_6
aUnicode_6:				; DATA XREF: .text:00487636o
		unicode	0, <UNICODE \=>,0
; wchar_t aAscii02x
aAscii02x:				; DATA XREF: .text:004877D7o
		unicode	0, <ASCII !%02X,>,0
; wchar_t aUtf8
aUtf8:					; DATA XREF: .text:loc_487B6Ao
		unicode	0, <UTF-8 \=>,0
; wchar_t aUnicode_8
aUnicode_8:				; DATA XREF: .text:loc_487C32o
		unicode	0, <UNICODE >,0
; wchar_t a____3
a____3:					; DATA XREF: .text:00487DDEo
		unicode	0, <...>,0
aJmp_:					; DATA XREF: .text:00488128o
		dw 3Ch
		unicode	0, <JMP.>,0
; wchar_t asc_545264
asc_545264:				; DATA XREF: .text:0048816Do
		dw 3Eh,	0
aOffset:				; DATA XREF: .text:loc_48828Do
		unicode	0, <OFFSET >,0
; wchar_t aS_
aS_:					; DATA XREF: .text:004882D6o
		unicode	0, <!%s.>,0
aJumpTo_1:				; DATA XREF: .text:00488465o
		unicode	0, <Jump to >,0
aEntryPoint:				; DATA XREF: .text:loc_488541o
		unicode	0, <Entry point>,0
aPtrTo:					; DATA XREF: .text:004885DFo
		unicode	0, <PTR to >,0
aFloat_5:				; DATA XREF: .text:0048876Fo
		unicode	0, <FLOAT >,0
; wchar_t aArg_I_1
aArg_I_1:				; DATA XREF: .text:004889BEo
		unicode	0, <ARG.!%i>,0
; wchar_t aI_4
aI_4:					; DATA XREF: .text:004889D9o
		unicode	0, <+!%i>,0
; wchar_t aLocal_I_2
aLocal_I_2:				; DATA XREF: .text:00488A1Ao
		unicode	0, <LOCAL.!%i>,0
; wchar_t aArg_retaddr_1
aArg_retaddr_1:				; DATA XREF: .text:00488A66o
		unicode	0, <ARG.RETADDR>,0
; wchar_t asc_545308
asc_545308:				; DATA XREF: .text:00488B36o
		dw 3Ch,	0
aXmmword16_Byte:			; DATA XREF: .text:00488C03o
		unicode	0, <XMMWORD \{16.-byte\}>,0
aYmmword32_Byte:			; DATA XREF: .text:00488C3Bo
		unicode	0, <YMMWORD \{32.-byte\}>,0
aIByte:					; DATA XREF: .text:00488C97o
		unicode	0, < \{!%i-byte\}>,0
aI_Byte:				; DATA XREF: .text:00488CBEo
		unicode	0, < \{!%i.-byte\}>,0
aI_Byte_1:				; DATA XREF: .text:00488CECo
		unicode	0, <!%i.-byte>,0
; wchar_t a____3
;a!?!?!?_3:					; DATA XREF: .text:loc_488D0Co
		dw 3Ch
		unicode	0, <!?!?!?>
		dw 3Eh,	0
aCascadedIf:				; DATA XREF: .text:00488E16o
		unicode	0, <Cascaded IF \{>,0
aSwitch:				; DATA XREF: .text:loc_488E3Ao
		unicode	0, <Switch \{>,0
aCasesX__X:				; DATA XREF: .text:00488E6Bo
		unicode	0, <cases -!%X..!%X>,0
aExceptionsX__X:			; DATA XREF: .text:00488EA0o
		unicode	0, <exceptions !%X..!%X>,0
aMessagesX__X:				; DATA XREF: .text:00488ED2o
		unicode	0, <messages !%X..!%X>,0
aCasesX__X_1:				; DATA XREF: .text:00488EFEo
		unicode	0, <cases !%X..!%X>,0
aIExits:				; DATA XREF: .text:00488F2Bo
		unicode	0, <, !%i exits\}>,0
aI_Exits:				; DATA XREF: .text:00488F54o
		unicode	0, <, !%i. exits\}>,0
aSomeCasesLostD:			; DATA XREF: .text:00488F7Do
		unicode	0, <, some cases lost due to high complexity>,0
aDefaultCase_0:				; DATA XREF: .text:00489005o
		unicode	0, <Default case>,0
aCase:					; DATA XREF: .text:00489035o
		unicode	0, <Case >,0
aCases:					; DATA XREF: .text:loc_489059o
		unicode	0, <Cases >,0
; wchar_t asc_545504
asc_545504:				; DATA XREF: .text:0048909Do
		unicode	0, <, >,0
; wchar_t asc_54550A
asc_54550A:				; DATA XREF: .text:004890EEo
		unicode	0, <-!%X>,0
; wchar_t aException_1
aException_1:				; DATA XREF: .text:00489113o
		unicode	0, <EXCEPTION>,0
; wchar_t aS_19
aS_19:					; DATA XREF: .text:00489139o
		unicode	0, < \{!%s\}>,0
; wchar_t aMessage_3
aMessage_3:				; DATA XREF: .text:00489163o
		unicode	0, <MESSAGE>,0
aAndOther:				; DATA XREF: .text:004891FEo
		unicode	0, < and other>,0
aOfCascadedIf:				; DATA XREF: .text:00489232o
		unicode	0, < of cascaded IF >,0
aOfSwitch:				; DATA XREF: .text:loc_48925Fo
		unicode	0, < of switch >,0
aLoop_2:				; DATA XREF: .text:loc_489346o
		unicode	0, <Loop >,0
aLoopVariable:				; DATA XREF: .text:004893A1o
		unicode	0, <: loop variable >,0
aLoopVariables:				; DATA XREF: .text:loc_4893CEo
		unicode	0, <: loop variables >,0
; wchar_t asc_5455E4
asc_5455E4:				; DATA XREF: .text:0048948Fo
		unicode	0, <[>,0
; wchar_t asc_5455E8
asc_5455E8:				; DATA XREF: .text:004894DEo
		unicode	0, <]>,0
; wchar_t aS_24
aS_24:					; DATA XREF: .text:0048952Bo
		unicode	0, <[!%s]>,0
; wchar_t aArg_I_0
aArg_I_0:				; DATA XREF: .text:0048955Do
		unicode	0, <[ARG.!%i]>,0
; wchar_t aLocal_I
aLocal_I:				; DATA XREF: .text:0048957Do
		unicode	0, <[LOCAL.!%i]>,0
; wchar_t asc_54561E
asc_54561E:				; DATA XREF: .text:004895A7o
		unicode	0, <\{+>,0
; wchar_t asc_545624
asc_545624:				; DATA XREF: .text:004895E5o
		unicode	0, <\{->,0
; wchar_t a____6
a____6:					; DATA XREF: .text:00489668o
		unicode	0, <, ...>,0
aCallback_2:				; DATA XREF: .text:loc_4897B6o
		unicode	0, <Callback>,0
aGuessed:				; DATA XREF: .text:00489877o
		unicode	0, <guessed >,0
aVoid_0:				; DATA XREF: .text:004898F4o
		unicode	0, <void>,0
g_REG		dd    0,   0,	2,   0,	  1,   2,   0,	 2; 0 ;	DATA XREF: .text:00489AB4o
		dd    2,   0,	3,   2,	  0,   4,   2,	 0; 8
		dd    5,   2,	0,   6,	  2,   0,   7,	 2; 16
		dd    0,   0,	8,   0,	  1,   8,   0,	 2; 24
		dd    8,   0,	3,   8,	  0,   4,   8,	 0; 32
		dd    5,   8,	0,   6,	  8,   0,   7,	 8; 40
		dd    0,   0, 10h,   0,	  1, 10h,   0,	 2; 48
		dd  10h,   0,	3, 10h,	  0,   4, 10h,	 0; 56
		dd    5, 10h,	0,   0,	  4,   0,   1,	 4; 64
		dd    0,   2,	4,   0,	  3,   4,   0,	 4; 72
		dd    4,   0,	5,   4,	  0,   6,   4,	 0; 80
		dd    7,   4,	0,   0,	40h,   0,   1, 40h; 88
		dd    0,   2, 40h,   0,	  3, 40h,   0,	 4; 96
		dd  40h,   0,	5, 40h,	  0,   6, 40h,	 0; 104
		dd    7, 40h,	0,   0,	80h,   0,   1, 80h; 112
		dd    0,   2, 80h,   0,	  3, 80h,   0,	 4; 120
		dd  80h,   0,	5, 80h,	  0,   6, 80h,	 0; 128
		dd    7, 80h,	0,   0,100h,   0,   1,100h; 136
		dd    0,   2,100h,   0,	  3,100h,   0,	 4; 144
		dd 100h,   0,	5,100h,	  0,   6,100h,	 0; 152
		dd    7,100h,	0,   0,200h,   0,   1,200h; 160
		dd    0,   2,200h,   0,	  3,200h,   0,	 4; 168
		dd 200h,   0,	5,200h,	  0,   6,200h,	 0; 176
		dd    7,200h,	0,   0,400h,   0,   1,400h; 184
		dd    0,   2,400h,   0,	  3,400h,   0,	 4; 192
		dd 400h,   0,	5,400h,	  0,   6,400h,	 0; 200
		dd    7,400h,	0,   0,800h,   0,   1,800h; 208
		dd    0,   2,800h,   0,	  3,800h,   0,	 4; 216
		dd 800h,   0,	5,800h,	  0,   6,800h,	 0; 224
		dd    7,800h		; 232
		dd offset aR32		; \=R32\=
		dd 8			; Method
		dd 2
		dd offset aR8		; \=R8\=
		dd 8			; Method
		dd 8
		dd offset aR16		; \=R16\=
		dd 8			; Method
		dd 4
		dd offset aRa		; \=RA\=
		dd 9
		dd 2
		dd offset aRb_1		; \=RB\=
		dd 0Ah
		dd 2
		dd offset aR8a		; \=R8A\=
		dd 9
		dd 8
		dd offset aR8b		; \=R8B\=
		dd 0Ah
		dd 8
		dd offset aR16a		; \=R16A\=
		dd 9
		dd 4
		dd offset aR16b		; \=R16B\=
		dd 0Ah
		dd 4
		dd offset aR32a		; \=R32A\=
		dd 9
		dd 2
		dd offset aR32b		; \=R32B\=
		dd 0Ah
		dd 2
		dd offset aSeg		; \=SEG\=
		dd 8			; Method
		dd 10h
		dd offset aFpureg	; \=FPUREG\=
		dd 8			; Method
		dd 40h
		dd offset aMmxreg	; \=MMXREG\=
		dd 8			; Method
		dd 80h
		dd offset aSsereg	; \=SSEREG\=
		dd 8			; Method
		dd 100h
		dd offset aXmmreg	; \=XMMREG\=
		dd 8			; Method
		dd 100h
		dd offset aYmmreg	; \=YMMREG\=
		dd 8			; Method
		dd 200h
		dd offset aCrreg	; \=CRREG\=
		dd 8			; Method
		dd 400h
		dd offset aDrreg	; \=DRREG\=
		dd 8			; Method
		dd 800h
aR32:					; DATA XREF: .data:00545A0Co
		unicode	0, <R32>,0
aR8:					; DATA XREF: .data:00545A18o
		unicode	0, <R8>,0
aR16:					; DATA XREF: .data:00545A24o
		unicode	0, <R16>,0
aRa:					; DATA XREF: .data:00545A30o
		unicode	0, <RA>,0
aRb_1:					; DATA XREF: .data:00545A3Co
		unicode	0, <RB>,0
aR8a:					; DATA XREF: .data:00545A48o
		unicode	0, <R8A>,0
aR8b:					; DATA XREF: .data:00545A54o
		unicode	0, <R8B>,0
aR16a:					; DATA XREF: .data:00545A60o
		unicode	0, <R16A>,0
aR16b:					; DATA XREF: .data:00545A6Co
		unicode	0, <R16B>,0
aR32a:					; DATA XREF: .data:00545A78o
		unicode	0, <R32A>,0
aR32b:					; DATA XREF: .data:00545A84o
		unicode	0, <R32B>,0
aSeg:					; DATA XREF: .data:00545A90o
		unicode	0, <SEG>,0
aFpureg:				; DATA XREF: .data:00545A9Co
		unicode	0, <FPUREG>,0
aMmxreg:				; DATA XREF: .data:00545AA8o
		unicode	0, <MMXREG>,0
aSsereg:				; DATA XREF: .data:00545AB4o
		unicode	0, <SSEREG>,0
aXmmreg:				; DATA XREF: .data:00545AC0o
		unicode	0, <XMMREG>,0
aYmmreg:				; DATA XREF: .data:00545ACCo
		unicode	0, <YMMREG>,0
aCrreg:					; DATA XREF: .data:00545AD8o
		unicode	0, <CRREG>,0
aDrreg:					; DATA XREF: .data:00545AE4o
		unicode	0, <DRREG>,0
aOnly32BitRegis:			; DATA XREF: .text:00489B3Fo
		unicode	0, <Only 32-bit registers can be scaled>,0
aExpectingInteg:			; DATA XREF: .text:00489B72o
		unicode	0, <Expecting integer scale>,0
aZeroScaleIsNot:			; DATA XREF: .text:00489BA2o
		unicode	0, <Zero scale is not allowed>,0
aInvalidScale:				; DATA XREF: .text:00489BD2o
		unicode	0, <Invalid scale>,0
; wchar_t aSt_2
aSt_2:					; DATA XREF: .text:00489C20o
		unicode	0, <ST>,0
aUseRoundParent:			; DATA XREF: .text:00489C59o
		unicode	0, <Use round parentheses, like ST\{0\}>,0
aExpectingInd_0:			; DATA XREF: .text:00489CB2o
		unicode	0, <Expecting index of FPU register>,0
aFpuRegisterI_0:			; DATA XREF: .text:loc_489CF0o
		unicode	0, <FPU register is out of range 0..7>,0
aExpectingRig_0:			; DATA XREF: .text:loc_489D41o
		unicode	0, <Expecting right parenthesis>,0
; wchar_t aXmmword_0
aXmmword_0:				; DATA XREF: .text:00489DACo
		unicode	0, <XMMWORD>,0
; wchar_t aYmmword_0
aYmmword_0:				; DATA XREF: .text:00489DCDo
		unicode	0, <YMMWORD>,0
; wchar_t aPtr_0
aPtr_0:					; DATA XREF: .text:00489E02o
		unicode	0, <PTR>,0
; wchar_t aSmall_0
aSmall_0:				; DATA XREF: .text:loc_489E3Bo
		unicode	0, <SMALL>,0
; wchar_t aLarge
aLarge:					; DATA XREF: .text:loc_489E72o
		unicode	0, <LARGE>,0
; wchar_t aShort_2
aShort_2:				; DATA XREF: .text:loc_489EA9o
		unicode	0, <SHORT>,0
; wchar_t aLong_0
aLong_0:				; DATA XREF: .text:00489EBEo
		unicode	0, <LONG>,0
; wchar_t aNear_0
aNear_0:				; DATA XREF: .text:00489ED3o
		unicode	0, <NEAR>,0
; wchar_t aFar_0
aFar_0:					; DATA XREF: .text:00489EE8o
		unicode	0, <FAR>,0
aDuplicateShort:			; DATA XREF: .text:00489F2Co
		unicode	0, <Duplicate SHORT specifier>,0
aDuplicateLongS:			; DATA XREF: .text:00489F7Co
		unicode	0, <Duplicate LONG specifier>,0
aDuplicateNearS:			; DATA XREF: .text:00489FCCo
		unicode	0, <Duplicate NEAR specifier>,0
aDuplicateFarSp:			; DATA XREF: .text:0048A019o
		unicode	0, <Duplicate FAR specifier>,0
aConflictingS_0:			; DATA XREF: .text:0048A085o
		unicode	0, <Conflicting SHORT and LONG specifiers>,0
aConflictingNea:			; DATA XREF: .text:0048A0BDo
		unicode	0, <Conflicting NEAR and FAR specifiers>,0
aConflictingS_1:			; DATA XREF: .text:0048A0F5o
		unicode	0, <Conflicting SHORT and FAR specifiers>,0
; wchar_t aOffset_0
aOffset_0:				; DATA XREF: .text:loc_48A130o
		unicode	0, <OFFSET>,0
; wchar_t aConst_2
aConst_2:				; DATA XREF: .text:loc_48A15Do
		unicode	0, <CONST>,0
; wchar_t aAny
aAny:					; DATA XREF: .text:loc_48A18Ao
		unicode	0, <ANY>,0
aImmediateSelec:			; DATA XREF: .text:0048A2CAo
		unicode	0, <Immediate selector out of range>,0
aUnrecognized_0:			; DATA XREF: .text:loc_48A325o
		unicode	0, <Unrecognized identifier>,0
aUnrecognizedLa:			; DATA XREF: .text:0048A37Do
		unicode	0, <Unrecognized label>,0
aExpectingRegis:			; DATA XREF: .text:0048A40Bo
		unicode	0, <Expecting register name>,0
aInvalidIndexRe:			; DATA XREF: .text:0048A499o
		unicode	0, <Invalid index register>,0
aExpecting32Bit:			; DATA XREF: .text:0048A579o
		unicode	0, <Expecting 32-bit register>,0
aFloatingPoin_1:			; DATA XREF: .text:0048A723o
		unicode	0, <Floating-point numbers are not allowed>,0
aInvalidCharact:			; DATA XREF: .text:0048A759o
		unicode	0, <Invalid character>,0
aSyntaxError:				; DATA XREF: .text:loc_48A786o
		unicode	0, <Syntax error>,0
aExpectingRig_1:			; DATA XREF: .text:0048A9A0o
		unicode	0, <Expecting right bracket>,0
aMissingOrIncom:			; DATA XREF: .text:0048A9D0o
		unicode	0, <Missing or incomplete operand>,0
aIncompleteOper:			; DATA XREF: .text:0048A9FEo
		unicode	0, <Incomplete operand>,0
aPtrAppliesOnly:			; DATA XREF: .text:0048AA34o
		unicode	0, <PTR applies only to memory>,0
aCanTDeclareSiz:			; DATA XREF: .text:0048AA77o
		unicode	0, <Can\-t declare size of ANY operand>,0
aInvalidSizeOfC:			; DATA XREF: .text:0048AACAo
		unicode	0, <Invalid size of constant>,0
aCanTIndexAnyAd:			; DATA XREF: .text:loc_48AB3Bo
		unicode	0, <Can\-t index ANY address>,0
aOffsetOutOfAll:			; DATA XREF: .text:0048ABFFo
		unicode	0, <Offset out of allowed range>,0
aCanTScale16Bit:			; DATA XREF: .text:0048AC3Do
		unicode	0, <Can\-t scale 16-bit registers>,0
aInvalidIndexin:			; DATA XREF: .text:0048ADA0o
		unicode	0, <Invalid indexing mode>,0
aImpreciseFormI:			; DATA XREF: .text:0048ADE0o
		unicode	0, <Imprecise form is not allowed>,0
aCanTGetOffsetO:			; DATA XREF: .text:0048AE50o
		unicode	0, <Can\-t get offset of register>,0
aDonTDeclareSiz:			; DATA XREF: .text:0048AE89o
		unicode	0, <Don\-t declare size of register>,0
aPlaceIndexRegi:			; DATA XREF: .text:loc_48AEADo
		unicode	0, <Place index registers into brackets>,0
aMixed16And32Bi:			; DATA XREF: .text:loc_48AF21o
		unicode	0, <Mixed 16 and 32-bit registers>,0
aCanTSubtractOr:			; DATA XREF: .text:0048AF5Bo
		unicode	0, <Can\-t subtract or negate register>,0
aCanTOrRegister:			; DATA XREF: .text:0048AF95o
		unicode	0, <Can\-t OR register>,0
aMissingCommaOr:			; DATA XREF: .text:0048AFCBo
		unicode	0, <Missing comma or operation>,0
aIllegalIndexin:			; DATA XREF: .text:0048B21Do
		unicode	0, <Illegal indexing register>,0
aExpectingColon:			; DATA XREF: .text:0048B424o
		unicode	0, <Expecting colon after segment register>,0
aMisplacedSegme:			; DATA XREF: .text:loc_48B4E9o
		unicode	0, <Misplaced segment override>,0
aCanTGetOffse_0:			; DATA XREF: .text:0048B530o
		unicode	0, <Can\-t get offset of address>,0
aDuplicateSegme:			; DATA XREF: .text:0048B57Ao
		unicode	0, <Duplicate segment override>,0
aIllegalRegiste:			; DATA XREF: .text:loc_48B7BEo
		unicode	0, <Illegal register>,0
aMisplacedDataS:			; DATA XREF: .text:loc_48B7F8o
		unicode	0, <Misplaced data size declaration>,0
aDuplicateDataS:			; DATA XREF: .text:0048B842o
		unicode	0, <Duplicate data size declaration>,0
aMisplacedAddre:			; DATA XREF: .text:loc_48B8A4o
		unicode	0, <Misplaced address size declaration>,0
aConflictingAdd:			; DATA XREF: .text:0048B8EBo
		unicode	0, <Conflicting address size declaration>,0
aConflictingOff:			; DATA XREF: .text:0048B995o
		unicode	0, <Conflicting OFFSET and PTR>,0
aMisplacedJumpS:			; DATA XREF: .text:loc_48BA66o
		unicode	0, <Misplaced jump size declaration>,0
aConflictingO_0:			; DATA XREF: .text:0048BAADo
		unicode	0, <Conflicting OFFSET and jump size>,0
aDuplicateJumpS:			; DATA XREF: .text:0048BAF7o
		unicode	0, <Duplicate jump size declaration>,0
aMisplacedOffse:			; DATA XREF: .text:loc_48BB75o
		unicode	0, <Misplaced OFFSET>,0
aDuplicateOffse:			; DATA XREF: .text:0048BC06o
		unicode	0, <Duplicate OFFSET>,0
aArithmeticWith:			; DATA XREF: .text:loc_48BCAAo
		unicode	0, <Arithmetic with undefined operand is meaningless>,0
aImmediateFarAd:			; DATA XREF: .text:loc_48BF82o
		unicode	0, <Immediate far address is not allowed>,0
aConflictingJum:			; DATA XREF: .text:0048BFCCo
		unicode	0, <Conflicting jump size specifier>,0
aExpectingImmed:			; DATA XREF: .text:0048C0ECo
		unicode	0, <Expecting immediate constant>,0
aCanTSubtractEx:			; DATA XREF: .text:0048C15Co
		unicode	0, <Can\-t subtract expression in brackets>,0
aCanTOrExpressi:			; DATA XREF: .text:0048C1A5o
		unicode	0, <Can\-t OR expression in brackets>,0
aNestedBrackets:			; DATA XREF: .text:0048C1ECo
		unicode	0, <Nested brackets>,0
aConflictingO_1:			; DATA XREF: .text:0048C233o
		unicode	0, <Conflicting OFFSET and memory address>,0
aUnmatchedRight:			; DATA XREF: .text:0048C296o
		unicode	0, <Unmatched right bracket>,0
aExpectingReg_1:			; DATA XREF: .text:0048C2DBo
		unicode	0, <Expecting register or constant>,0
aBracketsMustCo:			; DATA XREF: .text:0048C322o
		unicode	0, <Brackets must contain register or constant>,0
aInvalidParamet:			; DATA XREF: .text:loc_48C78Fo
		unicode	0, <Invalid parameters>,0
; wchar_t aAscii_4
aAscii_4:				; DATA XREF: .text:0048C8B2o
		unicode	0, <ASCII>,0
; wchar_t aUnicode_0
aUnicode_0:				; DATA XREF: .text:loc_48C8D6o
		unicode	0, <UNICODE>,0
; wchar_t aFloat_1
aFloat_1:				; DATA XREF: .text:loc_48C946o
		unicode	0, <FLOAT>,0
aTotalSizeOfThe:			; DATA XREF: .text:0048CABFo
		unicode	0, <Total size of the constant exceeds 16 bytes>,0
aIntegerConstan:			; DATA XREF: .text:0048CB96o
		unicode	0, <Integer constant must be 1, 2 or 4 bytes long>,0
aDonTMixInteger:			; DATA XREF: .text:0048CCD3o
		unicode	0, <Don\-t mix integer and floating constants>,0
aFloatingConsta:			; DATA XREF: .text:0048CD22o
		unicode	0, <Floating constant must be 4, 8 or 10 bytes long>,0
aDonTMixTextAnd:			; DATA XREF: .text:0048CECDo
		unicode	0, <Don\-t mix text and floating constants>,0
aCharacterSizeM:			; DATA XREF: .text:0048CF17o
		unicode	0, <Character size must be 1 or 2 bytes>,0
aEmptryString:				; DATA XREF: .text:0048CF61o
		unicode	0, <Emptry string>,0
aInvalidConstan:			; DATA XREF: .text:loc_48D0A7o
		unicode	0, <Invalid constant>,0
; wchar_t aRep_1
aRep_1:					; DATA XREF: .text:0048D148o
		unicode	0, <REP>,0
aDuplicatedRepR:			; DATA XREF: .text:0048D167o
		unicode	0, <Duplicated REP/REPE/REPNE prefix>,0
; wchar_t aRepe_3
aRepe_3:				; DATA XREF: .text:loc_48D1B3o
		unicode	0, <REPE>,0
; wchar_t aRepz
aRepz:					; DATA XREF: .text:0048D1C9o
		unicode	0, <REPZ>,0
; wchar_t aRepne_3
aRepne_3:				; DATA XREF: .text:loc_48D234o
		unicode	0, <REPNE>,0
; wchar_t aRepnz_0
aRepnz_0:				; DATA XREF: .text:0048D24Ao
		unicode	0, <REPNZ>,0
; wchar_t aLock_2
aLock_2:				; DATA XREF: .text:loc_48D2B5o
		unicode	0, <LOCK>,0
aDuplicatedLock:			; DATA XREF: .text:0048D2D1o
		unicode	0, <Duplicated LOCK prefix>,0
; wchar_t aBht_0
aBht_0:					; DATA XREF: .text:loc_48D31Do
		unicode	0, <BHT>,0
aDuplicatedJump:			; DATA XREF: .text:0048D339o
		unicode	0, <Duplicated jump hint>,0
; wchar_t aBhnt_1
aBhnt_1:				; DATA XREF: .text:loc_48D385o
		unicode	0, <BHNT>,0
aCommandMnemoni:			; DATA XREF: .text:loc_48D5B3o
		unicode	0, <Command mnemonics expected>,0
aHlaRightParent:			; DATA XREF: .text:0048D6BCo
		unicode	0, <HLA: right parenthesis expected>,0
aInvalidRegiste:			; DATA XREF: .text:loc_48D814o
		unicode	0, <Invalid register operation>,0
aCommaBetweenOp:			; DATA XREF: .text:loc_48D866o
		unicode	0, <Comma between operands expected>,0
aTooManyOperand:			; DATA XREF: .text:0048D8F6o
		unicode	0, <Too many operands>,0
aInternalErrorU:			; DATA XREF: .text:loc_48F2B2o
		unicode	0, <Internal error: unknown operand type>,0
aNoRoomForAllPo:			; DATA XREF: .text:00490C4Ao
		unicode	0, <No room for all possible forms>,0
aUnknownComma_0:			; DATA XREF: .text:00490CCBo
		unicode	0, <Unknown command>,0
aImplicitOperan:			; DATA XREF: .text:00490D13o
		unicode	0, <Implicit operand>,0
aImpreciseComma:			; DATA XREF: .text:00490D5Bo
		unicode	0, <Imprecise command>,0
aCommandIsAStan:			; DATA XREF: .text:00490DA3o
		unicode	0, <Command is a standalone prefix>,0
aLockIsNotAllow:			; DATA XREF: .text:00490DEBo
		unicode	0, <LOCK is not allowed>,0
aJumpHintIsNotA:			; DATA XREF: .text:00490E33o
		unicode	0, <Jump hint is not allowed>,0
aPrefixIsNotAll:			; DATA XREF: .text:00490E7Bo
		unicode	0, <Prefix is not allowed>,0
aPleaseSpecifyO:			; DATA XREF: .text:00490EC3o
		unicode	0, <Please specify operand size>,0
aUnsupportedMem:			; DATA XREF: .text:00490F0Bo
		unicode	0, <Unsupported memory addressing mode>,0
aConflictingDat:			; DATA XREF: .text:00490F53o
		unicode	0, <Conflicting data size>,0
aConstantIsOutO:			; DATA XREF: .text:00490F9Bo
		unicode	0, <Constant is out of range>,0
aDestinationIsO:			; DATA XREF: .text:00490FE3o
		unicode	0, <Destination is out of range>,0
aInvalidSegment:			; DATA XREF: .text:0049102Bo
		unicode	0, <Invalid segment register>,0
aNoMatchForSpec:			; DATA XREF: .text:00491073o
		unicode	0, <No match for specified operands>,0
aInvalidOperand:			; DATA XREF: .text:004910BBo
		unicode	0, <Invalid operand size>,0
aInvalidJumpSiz:			; DATA XREF: .text:00491103o
		unicode	0, <Invalid jump size specifier>,0
aExpectingMemor:			; DATA XREF: .text:0049114Bo
		unicode	0, <Expecting memory operand>,0
aExpectingReg_0:			; DATA XREF: .text:00491193o
		unicode	0, <Expecting register>,0
aRegisterIsNotA:			; DATA XREF: .text:004911DBo
		unicode	0, <Register is not allowed>,0
aWrongNumberOfO:			; DATA XREF: .text:00491223o
		unicode	0, <Wrong number of operands>,0
aRepPrefixIsNot:			; DATA XREF: .text:0049126Bo
		unicode	0, <REP prefix is not allowed>,0
aUndocumented_0:			; DATA XREF: .text:004912B0o
		unicode	0, <Undocumented command>,0
aInvalidComma_0:			; DATA XREF: .text:loc_4912EBo
		unicode	0, <Invalid command>,0
aExtraCharact_0:			; DATA XREF: .text:00491388o
		unicode	0, <Extra characters on line>,0
aInternalErro_2:			; DATA XREF: .text:00491475o
		unicode	0, <Internal error>,0
aNoRoomForAssem:			; DATA XREF: .text:0049149Fo
		unicode	0, <No room for assembled code>,0
		db 0
		db    0

off_547594	dd offset aO_0		; DATA XREF: .text:00495585o
					; \=O\=
		dd offset aNo_0		; \=NO\=
		dd offset aB_1		; \=B\=
		dd offset aNb		; \=NB\=
		dd offset aE_2		; \=E\=
		dd offset aNe_1		; \=NE\=
		dd offset aBe		; \=BE\=
		dd offset aA_1		; \=A\=
		dd offset aS_15		; \=S\=
		dd offset aNs		; \=NS\=
		dd offset aPe_1		; \=PE\=
		dd offset aPo		; \=PO\=
		dd offset asc_54ABC6	; \=L\=
		dd offset aGe_0		; \=GE\=
		dd offset aLe_3		; \=LE\=
		dd offset aG		; 0 ; \=G\=
stru_5475D4	struct_7 <1,  100100h,  0,   0,    3,   0, 0,   0, 0>; 0
stru_5475F8	struct_7 <1,   10300h,  0,   4,  0Ch, 0Ch, 4,   0, 0>; 0
		struct_7 <1,  400h,  0, 0Dh, 0FFh, 0Ch, 4,   0, 0>; 0
stru_547640	struct_7 <1,  100101h,  1,   0,    3,   0, 0,   0, 0>; 0
stru_547664	struct_7 <1,   10301h,  1,   4,  0Ch, 10h, 4,   0, 0>; 0
		struct_7 <1,  401h,  1, 0Dh, 0FFh, 10h, 4,   0, 0>; 0
stru_5476AC	struct_7 <1,  100102h,  2,   0,    3,   0, 0,   0, 0>; 0
stru_5476D0	struct_7 <1,   10302h,  2,   4,  0Ch, 14h, 4,   0, 0>; 0
		struct_7 <1,  402h,  2, 0Dh, 0FFh, 14h, 4,   0, 0>; 0
stru_547718	struct_7 <1,  100103h,  3,   0,    3,   0, 0,   0, 0>; 0
stru_54773C	struct_7 <1,   10303h,  3,   4,  0Ch, 18h, 4,   0, 0>; 0
		struct_7 <1,  403h,  3, 0Dh, 0FFh, 18h, 4,   0, 0>; 0
stru_547784	struct_7 <1,  100104h,  4,   0,    3,   0, 0,   0, 0>; 0
stru_5477A8	struct_7 <1,   10304h,  4,   4,  0Ch, 1Ch, 4,   0, 0>; 0
		struct_7 <1,  404h,  4, 0Dh, 0FFh, 1Ch, 4,   0, 0>; 0
stru_5477F0	struct_7 <1,  100105h,  5,   0,    3,   0, 0,   0, 0>; 0
stru_547814	struct_7 <1,   10305h,  5,   4,  0Ch, 20h, 4,   0, 0>; 0
		struct_7 <1,  405h,  5, 0Dh, 0FFh, 20h, 4,   0, 0>; 0
stru_54785C	struct_7 <1,  100106h,  6,   0,    3,   0, 0,   0, 0>; 0
stru_547880	struct_7 <1,   10306h,  6,   4,  0Ch, 24h, 4,   0, 0>; 0
		struct_7 <1,  406h,  6, 0Dh, 0FFh, 24h, 4,   0, 0>; 0
stru_5478C8	struct_7 <1,  100107h,  7,   0,    3,   0, 0,   0, 0>; 0
stru_5478EC	struct_7 <1,   10307h,  7,   4,  0Ch, 28h, 4,   0, 0>; 0
		struct_7 <1,  407h,  7, 0Dh, 0FFh, 28h, 4,   0, 0>; 0
		struct_7 <1, 1000100h,  8,   0,    3,   0, 0,   0, offset aEip_0> ; \=EIP\=
		struct_7 <1, 1010500h,  8,   4,  0Ch,   8, 4,   0, offset aEip_0>; 0 ; \=EIP\=
		struct_7 <1, 1000600h,  8, 0Dh, 0FFh,   8, 4,   0, 0>; 0
		struct_7 <1, 2000100h,  9,   0,    3,   0, 0,   0, offset aEip_0>; 0 ; \=EIP\=
		struct_7 <1, 2010500h,  9,   4,  0Ch,   8, 4,   0, offset aEip_0>; 0 ; \=EIP\=
		struct_7 <1, 2000600h,  9, 0Dh, 0FFh,   8, 4,   0, 0>; 0
		struct_7 <1,  100h, 0Ah,   0,    1,   0, 0,   0, offset aC_0>; 0 ; \=C\=
		struct_7 <1,   10700h, 0Ah,   2,    3, 2Ch, 4,   1, offset aC_0>; 0 ; \=C\=
		struct_7 <1,  100h, 0Bh,   0,    1,   0, 0,   0, offset aEip_0+4>; 0 ; \=P\=
		struct_7 <1,   10702h, 0Bh,   2,    3, 2Ch, 4,   4, offset aEip_0+4>; 0 ; \=P\=
		struct_7 <1,  100h, 0Ch,   0,    1,   0, 0,   0, offset aA_1>; 0 ; \=A\=
		struct_7 <1,   10704h, 0Ch,   2,    3, 2Ch, 4, 10h, offset aA_1>; 0 ; \=A\=
		struct_7 <1,  100h, 0Dh,   0,    1,   0, 0,   0, offset aZ_0>; 0 ; \=Z\=
		struct_7 <1,   10706h, 0Dh,   2,    3, 2Ch, 4, 40h, offset aZ_0>; 0 ; \=Z\=
		struct_7 <1,  100h, 0Eh,   0,    1,   0, 0,   0, offset aS_15>; 0 ;	\=S\=
		struct_7 <1,   10707h, 0Eh,   2,    3, 2Ch, 4, 80h, offset aS_15>; 0 ;	\=S\=
		struct_7 <1,  100h, 0Fh,   0,    1,   0, 0,   0, offset aT>; 0 ; \=T\=
		struct_7 <1,   10708h, 0Fh,   2,    3, 2Ch, 4, 100h, offset aT>; 0 ; \=T\=
		struct_7 <1,  100h, 10h,   0,    1,   0, 0,   0, offset aD>; 0 ; \=D\=
		struct_7 <1,   1070Ah, 10h,   2,    3, 2Ch, 4, 400h, offset aD>; 0 ; \=D\=
		struct_7 <1,  100h, 11h,   0,    1,   0, 0,   0, offset aO_0>; 0 ; \=O\=
		struct_7 <1,   1070Bh, 11h,   2,    3, 2Ch, 4, 800h, offset aO_0>; 0 ;	\=O\=
		struct_7 <1, 1000100h, 12h,   0,    3,   0, 0,   0, offset aEfl_1>; 0 ; \=EFL\=
		struct_7 <1, 1010800h, 12h,   4,  0Ch, 2Ch, 4,   0, offset aEfl_1>; 0 ; \=EFL\=
		struct_7 <1, 1000900h, 12h, 0Dh, 0FFh, 2Ch, 4,   0, 0>; 0
		struct_7 <1, 2000100h, 13h,   0,    3,   0, 0,   0, offset aEfl_1>; 0 ; \=EFL\=
		struct_7 <1, 2010800h, 13h,   4,  0Ch, 2Ch, 4,   0, offset aEfl_1>; 0 ; \=EFL\=
		struct_7 <1, 2000900h, 13h, 0Dh, 0FFh, 2Ch, 4,   0, 0>; 0
stru_547D24	struct_7 <1,  100h, 0Ah,   5,    7,   0, 0,   0, 0>; 0
stru_547D48	struct_7 <1,   10A00h, 0Ah,   8,  0Ch, 30h, 2,   0, 0>; 0
		struct_7 <1, 0B00h, 0Ah, 0Dh, 0FFh, 30h, 2,   0, 0>; 0
stru_547D90	struct_7 <1,  100h, 0Bh,   5,    7,   0, 0,   0, 0>; 0
stru_547DB4	struct_7 <1,   10A01h, 0Bh,   8,  0Ch, 34h, 2,   0, 0>; 0
		struct_7 <1, 0B01h, 0Bh, 0Dh, 0FFh, 34h, 2,   0, 0>; 0
stru_547DFC	struct_7 <1,  100h, 0Ch,   5,    7,   0, 0,   0, 0>; 0
stru_547E20	struct_7 <1,   10A02h, 0Ch,   8,  0Ch, 38h, 2,   0, 0>; 0
		struct_7 <1, 0B02h, 0Ch, 0Dh, 0FFh, 38h, 2,   0, 0>; 0
stru_547E68	struct_7 <1,  100h, 0Dh,   5,    7,   0, 0,   0, 0>; 0
stru_547E8C	struct_7 <1,   10A03h, 0Dh,   8,  0Ch, 3Ch, 2,   0, 0>; 0
		struct_7 <1, 0B03h, 0Dh, 0Dh, 0FFh, 3Ch, 2,   0, 0>; 0
stru_547ED4	struct_7 <1,  100h, 0Eh,   5,    7,   0, 0,   0, 0>; 0
stru_547EF8	struct_7 <1,   10A04h, 0Eh,   8,  0Ch, 40h, 2,   0, 0>; 0
		struct_7 <1, 0B04h, 0Eh, 0Dh, 0FFh, 40h, 2,   0, 0>; 0
stru_547F40	struct_7 <1,  100h, 0Fh,   5,    7,   0, 0,   0, 0>; 0
stru_547F64	struct_7 <1,   10A05h, 0Fh,   8,  0Ch, 44h, 2,   0, 0>; 0
		struct_7 <1, 0B05h, 0Fh, 0Dh, 0FFh, 44h, 2,   0, 0>; 0
		struct_7 <1,  100h, 11h,   5,  0Ch,   0, 0,   0, offset aLasterr>; 0 ; \=LastErr\=
		struct_7 <1,   10C00h, 11h, 0Dh,  15h, 10Ch, 4,   0, offset aLasterr>; 0 ; \=LastErr\=
		struct_7 <1, 0D00h, 11h, 16h, 0FFh, 10Ch, 4,   0, 0>; 0
stru_548018	struct_7 <2,  100h,  0,   0,    3,   0, 0,   0, 0>; 0
		struct_7 <2,   10E00h,  0,   4,    9, 0D4h, 1,   0, offset aTag0>; 0 ;	\=Tag 0\=
		struct_7 <2,   10F00h,  0, 0Ah,  27h, 84h, 0Ah,   0, offset aStack0>;	0 ; \=Stack 0\=
		struct_7 <2, 1000h,  0, 28h, 0FFh, 84h, 0Ah,   0, 0>; 0
stru_5480A8	struct_7 <2,  100h,  1,   0,    3,   0, 0,   0, 0>; 0
		struct_7 <2,   10E01h,  1,   4,    9, 0D5h, 1,   0, offset aTag1>; 0 ;	\=Tag 1\=
		struct_7 <2,   10F01h,  1, 0Ah,  27h, 8Eh, 0Ah,   0, offset aStack1>;	0 ; \=Stack 1\=
		struct_7 <2, 1001h,  1, 28h, 0FFh, 8Eh, 0Ah,   0, 0>; 0
stru_548138	struct_7 <2,  100h,  2,   0,    3,   0, 0,   0, 0>; 0
		struct_7 <2,   10E02h,  2,   4,    9, 0D6h, 1,   0, offset aTag2>; 0 ;	\=Tag 2\=
		struct_7 <2,   10F02h,  2, 0Ah,  27h, 98h, 0Ah,   0, offset aStack2>;	0 ; \=Stack 2\=
		struct_7 <2, 1002h,  2, 28h, 0FFh, 98h, 0Ah,   0, 0>; 0
stru_5481C8	struct_7 <2,  100h,  3,   0,    3,   0, 0,   0, 0>; 0
		struct_7 <2,   10E03h,  3,   4,    9, 0D7h, 1,   0, offset aTag3>; 0 ;	\=Tag 3\=
		struct_7 <2,   10F03h,  3, 0Ah,  27h, 0A2h, 0Ah,   0, offset aStack3>;	0 ; \=Stack 3\=
		struct_7 <2, 1003h,  3, 28h, 0FFh, 0A2h, 0Ah,   0, 0>; 0
stru_548258	struct_7 <2,  100h,  4,   0,    3,   0, 0,   0, 0>; 0
		struct_7 <2,   10E04h,  4,   4,    9, 0D8h, 1,   0, offset aTag4>; 0 ;	\=Tag 4\=
		struct_7 <2,   10F04h,  4, 0Ah,  27h, 0ACh, 0Ah,   0, offset aStack4>;	0 ; \=Stack 4\=
		struct_7 <2, 1004h,  4, 28h, 0FFh, 0ACh, 0Ah,   0, 0>; 0
stru_5482E8	struct_7 <2,  100h,  5,   0,    3,   0, 0,   0, 0>; 0
		struct_7 <2,   10E05h,  5,   4,    9, 0D9h, 1,   0, offset aTag5>; 0 ;	\=Tag 5\=
		struct_7 <2,   10F05h,  5, 0Ah,  27h, 0B6h, 0Ah,   0, offset aStack5>;	0 ; \=Stack 5\=
		struct_7 <2, 1005h,  5, 28h, 0FFh, 0B6h, 0Ah,   0, 0>; 0
stru_548378	struct_7 <2,  100h,  6,   0,    3,   0, 0,   0, 0>; 0
		struct_7 <2,   10E06h,  6,   4,    9, 0DAh, 1,   0, offset aTag6>; 0 ;	\=Tag 6\=
		struct_7 <2,   10F06h,  6, 0Ah,  27h, 0C0h, 0Ah,   0, offset aStack6>;	0 ; \=Stack 6\=
		struct_7 <2, 1006h,  6, 28h, 0FFh, 0C0h, 0Ah,   0, 0>; 0
stru_548408	struct_7 <2,  100h,  7,   0,    3,   0, 0,   0, 0>; 0
		struct_7 <2,   10E07h,  7,   4,    9, 0DBh, 1,   0, offset aTag7>; 0 ;	\=Tag 7\=
		struct_7 <2,   10F07h,  7, 0Ah,  27h, 0CAh, 0Ah,   0, offset aStack7>;	0 ; \=Stack 7\=
		struct_7 <2, 1007h,  7, 28h, 0FFh, 0CAh, 0Ah,   0, 0>; 0
		struct_7 <2,  200h,  8, 0Fh,  16h,   0, 0,   0, offset a3210>; 0 ;	\=3 2 1 0\=
		struct_7 <2,  200h,  8, 1Ch,  23h,   0, 0,   0, offset aESPU>; 0 ;	\=E S P U\=
		struct_7 <2,  200h,  8, 24h,  2Bh,   0, 0,   0, offset aOZDI>; 0 ;	\=O Z D I\=
		struct_7 <2,  100h,  9,   0,    3,   0, 0,   0, offset aFst_2>; 0 ; \=FST\=
		struct_7 <2,   11100h,  9,   4,    8, 0DCh, 4,   0, offset aFst_2>; 0 ; \=FST\=
		struct_7 <2,  100h,  9, 0Ah,  0Eh,   0, 0,   0, offset aCond_2>; 0	; \=Cond\=
		struct_7 <2,   1120Eh,  9, 0Fh,  10h, 0DCh, 4, 4000h, offset aC3>; 0 ;	\=C 3\=
		struct_7 <2,   1120Ah,  9, 11h,  12h, 0DCh, 4, 400h, offset aC2_0>; 0 ; \=C 2\=
		struct_7 <2,   11209h,  9, 13h,  14h, 0DCh, 4, 200h, offset aC1>; 0 ; \=C 1\=
		struct_7 <2,   11208h,  9, 15h,  16h, 0DCh, 4, 100h, offset aC0_1>; 0 ; \=C 0\=
		struct_7 <2,  100h,  9, 18h,  1Bh,   0, 0,   0, \ ; \=Err\=
     offset aLasterr+8>; 0
		struct_7 <2,   11207h,  9, 1Ch,  1Dh, 0DCh, 4, 80h, \ ; \=Exception\=
     offset aException_5>;	0
		struct_7 <2,   11206h,  9, 1Eh,  1Fh, 0DCh, 4, 40h, \ ; \=Stack fault\=
     offset aStackFault>; 0
		struct_7 <2,   11205h,  9, 20h,  21h, 0DCh, 4, 20h, \ ; \=Precision\=
     offset aPrecision>; 0
		struct_7 <2,   11204h,  9, 22h,  23h, 0DCh, 4, 10h, \ ; \=Underflow\=
     offset aUnderflow>; 0
		struct_7 <2,   11203h,  9, 24h,  25h, 0DCh, 4,   8, offset aOverflow>;	0 ; \=Overflow\=
		struct_7 <2,   11202h,  9, 26h,  27h, 0DCh, 4,   4, \ ; \=0 division\=
     offset a0Division>; 0
		struct_7 <2,   11201h,  9, 28h,  29h, 0DCh, 4,   2, \ ; \=Denormalized\=
     offset aDenormalized>; 0
		struct_7 <2,   11200h,  9, 2Ah,  2Bh, 0DCh, 4,   1, \ ; \=Invalid\=
     offset aInvalid_0>; 0
		struct_7 <2, 1300h,  9, 2Ch, 0FFh, 0DCh, 4,   0, 0>; 0
		struct_7 <2,  100h, 0Ah,   0,    3,   0, 0,   0, offset aFcw_2>; 0 ; \=FCW\=
		struct_7 <2,   11400h, 0Ah,   4,    8, 0E0h, 4,   0, offset aFcw_2>; 0 ; \=FCW\=
		struct_7 <2,  100h, 0Ah, 0Ah,  0Eh,   0, 0,   0, offset aPrec>; 0 ;	\=Prec\=
		struct_7 <2,   11500h, 0Ah, 0Fh,  16h, 0E0h, 4, 0F00h, \ ; \=Precision\=
     offset aPrecision>; 0
		struct_7 <2,  100h, 0Ah, 18h,  1Ch,   0, 0,   0, offset aMask_0>; 0	; \=Mask\=
		struct_7 <2,   11605h, 0Ah, 20h,  21h, 0E0h, 4, 20h, \ ; \=Precision mask\=
     offset aPrecisionMask>; 0
		struct_7 <2,   11604h, 0Ah, 22h,  23h, 0E0h, 4, 10h, \ ; \=Underflow mask\=
     offset aUnderflowMask>; 0
		struct_7 <2,   11603h, 0Ah, 24h,  25h, 0E0h, 4,   8, \ ; \=Overflow mask\=
     offset aOverflowMask>; 0
		struct_7 <2,   11602h, 0Ah, 26h,  27h, 0E0h, 4,   4, \ ; \=0 division mask\=
     offset a0DivisionMask>; 0
		struct_7 <2,   11601h, 0Ah, 28h,  29h, 0E0h, 4,   2, \ ; \=Denormal mask\=
     offset aDenormalMask>; 0
		struct_7 <2,   11600h, 0Ah, 2Ah,  2Bh, 0E0h, 4,   1, \ ; \=Invalid mask\=
     offset aInvalidMask>;	0
		struct_7 <2,  100h, 0Bh,   0,    9,   0, 0,   0, offset aLastCmnd>;	0 ; \=Last cmnd\=
		struct_7 <2,   11700h, 0Bh, 0Ah,  17h, 0E4h, 8,   0, \ ; \=Last command\=
     offset aLastCommand>;	0
		struct_7 <2, 1800h, 0Bh, 18h, 0FFh, 0E4h, 8,   0, 0>; 0
stru_548960	struct_7 <3,  100h,  0,   0,    3,   0, 0,   0, 0>; 0
stru_548984	struct_7 <3,   11900h,  0,   4,  17h, 84h, 8,   0, 0>; 0
stru_5489A8	struct_7 <3,  100h,  1,   0,    3,   0, 0,   0, 0>; 0
stru_5489CC	struct_7 <3,   11901h,  1,   4,  17h, 8Eh, 8,   0, 0>; 0
stru_5489F0	struct_7 <3,  100h,  2,   0,    3,   0, 0,   0, 0>; 0
stru_548A14	struct_7 <3,   11902h,  2,   4,  17h, 98h, 8,   0, 0>; 0
stru_548A38	struct_7 <3,  100h,  3,   0,    3,   0, 0,   0, 0>; 0
stru_548A5C	struct_7 <3,   11903h,  3,   4,  17h, 0A2h, 8,   0, 0>; 0
stru_548A80	struct_7 <3,  100h,  4,   0,    3,   0, 0,   0, 0>; 0
stru_548AA4	struct_7 <3,   11904h,  4,   4,  17h, 0ACh, 8,   0, 0>; 0
stru_548AC8	struct_7 <3,  100h,  5,   0,    3,   0, 0,   0, 0>; 0
stru_548AEC	struct_7 <3,   11905h,  5,   4,  17h, 0B6h, 8,   0, 0>; 0
stru_548B10	struct_7 <3,  100h,  6,   0,    3,   0, 0,   0, 0>; 0
stru_548B34	struct_7 <3,   11906h,  6,   4,  17h, 0C0h, 8,   0, 0>; 0
stru_548B58	struct_7 <3,  100h,  7,   0,    3,   0, 0,   0, 0>; 0
stru_548B7C	struct_7 <3,   11907h,  7,   4,  17h, 0CAh, 8,   0, 0>; 0
stru_548BA0	struct_7 <4,  100h,  0,   0,    3,   0, 0,   0, 0>; 0
		struct_7 <4,   11A00h,  0,   4,  11h, 88h, 4,   0, offset aMm0High>; 0 ; \=MM0	high\=
		struct_7 <4,   11B00h,  0, 12h,  1Fh, 84h, 4,   0, offset aMm0Low>; 0	; \=MM0 low\=
stru_548C0C	struct_7 <4,  100h,  1,   0,    3,   0, 0,   0, 0>; 0
		struct_7 <4,   11A01h,  1,   4,  11h, 92h, 4,   0, offset aMm1High>; 0 ; \=MM1	high\=
		struct_7 <4,   11B01h,  1, 12h,  1Fh, 8Eh, 4,   0, offset aMm1Low>; 0	; \=MM1 low\=
stru_548C78	struct_7 <4,  100h,  2,   0,    3,   0, 0,   0, 0>; 0
		struct_7 <4,   11A02h,  2,   4,  11h, 9Ch, 4,   0, offset aMm2High>; 0 ; \=MM2	high\=
		struct_7 <4,   11B02h,  2, 12h,  1Fh, 98h, 4,   0, offset aMm2Low>; 0	; \=MM2 low\=
stru_548CE4	struct_7 <4,  100h,  3,   0,    3,   0, 0,   0, 0>; 0
		struct_7 <4,   11A03h,  3,   4,  11h, 0A6h, 4,   0, offset aMm3High>; 0 ; \=MM3	high\=
		struct_7 <4,   11B03h,  3, 12h,  1Fh, 0A2h, 4,   0, offset aMm3Low>; 0	; \=MM3 low\=
stru_548D50	struct_7 <4,  100h,  4,   0,    3,   0, 0,   0, 0>; 0
		struct_7 <4,   11A04h,  4,   4,  11h, 0B0h, 4,   0, offset aMm4High>; 0 ; \=MM4	high\=
		struct_7 <4,   11B04h,  4, 12h,  1Fh, 0ACh, 4,   0, offset aMm4Low>; 0	; \=MM4 low\=
stru_548DBC	struct_7 <4,  100h,  5,   0,    3,   0, 0,   0, 0>; 0
		struct_7 <4,   11A05h,  5,   4,  11h, 0BAh, 4,   0, offset aMm5High>; 0 ; \=MM5	high\=
		struct_7 <4,   11B05h,  5, 12h,  1Fh, 0B6h, 4,   0, offset aMm5Low>; 0	; \=MM5 low\=
stru_548E28	struct_7 <4,  100h,  6,   0,    3,   0, 0,   0, 0>; 0
		struct_7 <4,   11A06h,  6,   4,  11h, 0C4h, 4,   0, offset aMm6High>; 0 ; \=MM6	high\=
		struct_7 <4,   11B06h,  6, 12h,  1Fh, 0C0h, 4,   0, offset aMm6Low>; 0	; \=MM6 low\=
stru_548E94	struct_7 <4,  100h,  7,   0,    3,   0, 0,   0, 0>; 0
		struct_7 <4,   11A07h,  7,   4,  11h, 0CEh, 4,   0, offset aMm7High>; 0 ; \=MM7	high\=
		struct_7 <4,   11B07h,  7, 12h,  1Fh, 0CAh, 4,   0, offset aMm7Low>; 0	; \=MM7 low\=
stru_548F00	struct_7 <6,  100h,  0,   0,    4,   0, 0,   0, 0>; 0
stru_548F24	struct_7 <6,   11C00h,  0,   5,  28h, 110h, 10h,   0, 0>; 0
stru_548F48	struct_7 <6,  100h,  1,   0,    4,   0, 0,   0, 0>; 0
stru_548F6C	struct_7 <6,   11C01h,  1,   5,  28h, 120h, 10h,   0, 0>; 0
stru_548F90	struct_7 <6,  100h,  2,   0,    4,   0, 0,   0, 0>; 0
stru_548FB4	struct_7 <6,   11C02h,  2,   5,  28h, 130h, 10h,   0, 0>; 0
stru_548FD8	struct_7 <6,  100h,  3,   0,    4,   0, 0,   0, 0>; 0
stru_548FFC	struct_7 <6,   11C03h,  3,   5,  28h, 140h, 10h,   0, 0>; 0
stru_549020	struct_7 <6,  100h,  4,   0,    4,   0, 0,   0, 0>; 0
stru_549044	struct_7 <6,   11C04h,  4,   5,  28h, 150h, 10h,   0, 0>; 0
stru_549068	struct_7 <6,  100h,  5,   0,    4,   0, 0,   0, 0>; 0
stru_54908C	struct_7 <6,   11C05h,  5,   5,  28h, 160h, 10h,   0, 0>; 0
stru_5490B0	struct_7 <6,  100h,  6,   0,    4,   0, 0,   0, 0>; 0
stru_5490D4	struct_7 <6,   11C06h,  6,   5,  28h, 170h, 10h,   0, 0>; 0
stru_5490F8	struct_7 <6,  100h,  7,   0,    4,   0, 0,   0, 0>; 0
stru_54911C	struct_7 <6,   11C07h,  7,   5,  28h, 180h, 10h,   0, 0>; 0
		struct_7 <6,  200h,  8, 20h,  2Bh,   0, 0,   0, offset aPUOZDI>; 0	; \=P U O Z D I\=
		struct_7 <6,  100h,  9,   0,    5,   0, 0,   0, offset aMxcsr_2>; 0 ; \=MXCSR\=
		struct_7 <6,   12300h,  9,   6,  0Eh, 190h, 4,   0, offset aMxcsr_2>; 0 ; \=MXCSR\=
		struct_7 <6,  100h,  9, 10h,  12h,   0, 0,   0, offset aFz_1>; 0 ;	\=FZ\=
		struct_7 <6,   1240Fh,  9, 13h,  14h, 190h, 4, 8000h, offset aFz_1>; 0	; \=FZ\=
		struct_7 <6,  100h,  9, 15h,  17h,   0, 0,   0, offset aDz>; 0 ; \=DZ\=
		struct_7 <6,   12406h,  9, 18h,  19h, 190h, 4, 40h, offset aDz>; 0 ; \=DZ\=
		struct_7 <6,  100h,  9, 1Bh,  1Eh,   0, 0,   0, \ ; \=Err\=
     offset aLasterr+8>; 0
		struct_7 <6,   12405h,  9, 20h,  21h, 190h, 4, 20h, \ ; \=Precision\=
     offset aPrecision>; 0
		struct_7 <6,   12404h,  9, 22h,  23h, 190h, 4, 10h, \ ; \=Underflow\=
     offset aUnderflow>; 0
		struct_7 <6,   12403h,  9, 24h,  25h, 190h, 4,   8, offset aOverflow>;	0 ; \=Overflow\=
		struct_7 <6,   12402h,  9, 26h,  27h, 190h, 4,   4, \ ; \=0 division\=
     offset a0Division>; 0
		struct_7 <6,   12401h,  9, 28h,  29h, 190h, 4,   2, \ ; \=Denormalized\=
     offset aDenormalized>; 0
		struct_7 <6,   12400h,  9, 2Ah,  2Bh, 190h, 4,   1, \ ; \=Invalid\=
     offset aInvalid_0>; 0
		struct_7 <6,  100h, 0Ah, 10h,  13h,   0, 0,   0, offset aRnd>; 0 ; \=Rnd\=
		struct_7 <6,   12500h, 0Ah, 14h,  18h, 190h, 4, 6000h, \ ; \=Rounding\=
     offset aRounding>; 0
		struct_7 <6,  100h, 0Ah, 1Bh,  1Fh,   0, 0,   0, offset aMask_0>; 0	; \=Mask\=
		struct_7 <6,   1240Ch, 0Ah, 20h,  21h, 190h, 4, 1000h, \ ; \=Precision mask\=
     offset aPrecisionMask>; 0
		struct_7 <6,   1240Bh, 0Ah, 22h,  23h, 190h, 4, 800h, \ ; \=Underflow mask\=
     offset aUnderflowMask>; 0
		struct_7 <6,   1240Ah, 0Ah, 24h,  25h, 190h, 4, 400h, \ ; \=Overflow mask\=
     offset aOverflowMask>; 0
		struct_7 <6,   12409h, 0Ah, 26h,  27h, 190h, 4, 200h, \ ; \=0 division mask\=
     offset a0DivisionMask>; 0
		struct_7 <6,   12408h, 0Ah, 28h,  29h, 190h, 4, 100h, \ ; \=Denormal mask\=
     offset aDenormalMask>; 0
		struct_7 <6,   12407h, 0Ah, 2Ah,  2Bh, 190h, 4, 80h, \ ; \=Invalid mask\=
     offset aInvalidMask>;	0
stru_54947C	struct_7 <7,  100h,  0,   0,    4,   0, 0,   0, 0>; 0
stru_5494A0	struct_7 <7,   11D00h,  0,   5,  12h, 11Ch, 4,   0, 0>; 0
stru_5494C4	struct_7 <7,   11E00h,  0, 13h,  20h, 118h, 4,   0, 0>; 0
stru_5494E8	struct_7 <7,   11F00h,  0, 21h,  2Eh, 114h, 4,   0, 0>; 0
stru_54950C	struct_7 <7,   12000h,  0, 2Fh,  3Ch, 110h, 4,   0, 0>; 0
stru_549530	struct_7 <7,  100h,  1,   0,    4,   0, 0,   0, 0>; 0
stru_549554	struct_7 <7,   11D01h,  1,   5,  12h, 12Ch, 4,   0, 0>; 0
stru_549578	struct_7 <7,   11E01h,  1, 13h,  20h, 128h, 4,   0, 0>; 0
stru_54959C	struct_7 <7,   11F01h,  1, 21h,  2Eh, 124h, 4,   0, 0>; 0
stru_5495C0	struct_7 <7,   12001h,  1, 2Fh,  3Ch, 120h, 4,   0, 0>; 0
stru_5495E4	struct_7 <7,  100h,  2,   0,    4,   0, 0,   0, 0>; 0
stru_549608	struct_7 <7,   11D02h,  2,   5,  12h, 13Ch, 4,   0, 0>; 0
stru_54962C	struct_7 <7,   11E02h,  2, 13h,  20h, 138h, 4,   0, 0>; 0
stru_549650	struct_7 <7,   11F02h,  2, 21h,  2Eh, 134h, 4,   0, 0>; 0
stru_549674	struct_7 <7,   12002h,  2, 2Fh,  3Ch, 130h, 4,   0, 0>; 0
stru_549698	struct_7 <7,  100h,  3,   0,    4,   0, 0,   0, 0>; 0
stru_5496BC	struct_7 <7,   11D03h,  3,   5,  12h, 14Ch, 4,   0, 0>; 0
stru_5496E0	struct_7 <7,   11E03h,  3, 13h,  20h, 148h, 4,   0, 0>; 0
stru_549704	struct_7 <7,   11F03h,  3, 21h,  2Eh, 144h, 4,   0, 0>; 0
stru_549728	struct_7 <7,   12003h,  3, 2Fh,  3Ch, 140h, 4,   0, 0>; 0
stru_54974C	struct_7 <7,  100h,  4,   0,    4,   0, 0,   0, 0>; 0
stru_549770	struct_7 <7,   11D04h,  4,   5,  12h, 15Ch, 4,   0, 0>; 0
stru_549794	struct_7 <7,   11E04h,  4, 13h,  20h, 158h, 4,   0, 0>; 0
stru_5497B8	struct_7 <7,   11F04h,  4, 21h,  2Eh, 154h, 4,   0, 0>; 0
stru_5497DC	struct_7 <7,   12004h,  4, 2Fh,  3Ch, 150h, 4,   0, 0>; 0
stru_549800	struct_7 <7,  100h,  5,   0,    4,   0, 0,   0, 0>; 0
stru_549824	struct_7 <7,   11D05h,  5,   5,  12h, 16Ch, 4,   0, 0>; 0
stru_549848	struct_7 <7,   11E05h,  5, 13h,  20h, 168h, 4,   0, 0>; 0
stru_54986C	struct_7 <7,   11F05h,  5, 21h,  2Eh, 164h, 4,   0, 0>; 0
stru_549890	struct_7 <7,   12005h,  5, 2Fh,  3Ch, 160h, 4,   0, 0>; 0
stru_5498B4	struct_7 <7,  100h,  6,   0,    4,   0, 0,   0, 0>; 0
stru_5498D8	struct_7 <7,   11D06h,  6,   5,  12h, 17Ch, 4,   0, 0>; 0
stru_5498FC	struct_7 <7,   11E06h,  6, 13h,  20h, 178h, 4,   0, 0>; 0
stru_549920	struct_7 <7,   11F06h,  6, 21h,  2Eh, 174h, 4,   0, 0>; 0
stru_549944	struct_7 <7,   12006h,  6, 2Fh,  3Ch, 170h, 4,   0, 0>; 0
stru_549968	struct_7 <7,  100h,  7,   0,    4,   0, 0,   0, 0>; 0
stru_54998C	struct_7 <7,   11D07h,  7,   5,  12h, 18Ch, 4,   0, 0>; 0
stru_5499B0	struct_7 <7,   11E07h,  7, 13h,  20h, 188h, 4,   0, 0>; 0
stru_5499D4	struct_7 <7,   11F07h,  7, 21h,  2Eh, 184h, 4,   0, 0>; 0
stru_5499F8	struct_7 <7,   12007h,  7, 2Fh,  3Ch, 180h, 4,   0, 0>; 0
		struct_7 <7,  200h,  8, 20h,  2Bh,   0, 0,   0, offset aPUOZDI>; 0	; \=P U O Z D I\=
		struct_7 <7,  100h,  9,   0,    5,   0, 0,   0, offset aMxcsr_2>; 0 ; \=MXCSR\=
		struct_7 <7,   12300h,  9,   6,  0Eh, 190h, 4,   0, offset aMxcsr_2>; 0 ; \=MXCSR\=
		struct_7 <7,  100h,  9, 10h,  12h,   0, 0,   0, offset aFz_1>; 0 ;	\=FZ\=
		struct_7 <7,   1240Fh,  9, 13h,  14h, 190h, 4, 8000h, offset aFz_1>; 0	; \=FZ\=
		struct_7 <7,  100h,  9, 15h,  17h,   0, 0,   0, offset aDz>; 0 ; \=DZ\=
		struct_7 <7,   12406h,  9, 18h,  19h, 190h, 4, 40h, offset aDz>; 0 ; \=DZ\=
		struct_7 <7,  100h,  9, 1Bh,  1Eh,   0, 0,   0, \ ; \=Err\=
     offset aLasterr+8>; 0
		struct_7 <7,   12405h,  9, 20h,  21h, 190h, 4, 20h, \ ; \=Precision\=
     offset aPrecision>; 0
		struct_7 <7,   12404h,  9, 22h,  23h, 190h, 4, 10h, \ ; \=Underflow\=
     offset aUnderflow>; 0
		struct_7 <7,   12403h,  9, 24h,  25h, 190h, 4,   8, offset aOverflow>;	0 ; \=Overflow\=
		struct_7 <7,   12402h,  9, 26h,  27h, 190h, 4,   4, \ ; \=0 division\=
     offset a0Division>; 0
		struct_7 <7,   12401h,  9, 28h,  29h, 190h, 4,   2, \ ; \=Denormalized\=
     offset aDenormalized>; 0
		struct_7 <7,   12400h,  9, 2Ah,  2Bh, 190h, 4,   1, \ ; \=Invalid\=
     offset aInvalid_0>; 0
		struct_7 <7,  100h, 0Ah, 10h,  13h,   0, 0,   0, offset aRnd>; 0 ; \=Rnd\=
		struct_7 <7,   12500h, 0Ah, 14h,  18h, 190h, 4, 6000h, \ ; \=Rounding\=
     offset aRounding>; 0
		struct_7 <7,  100h, 0Ah, 1Bh,  1Fh,   0, 0,   0, offset aMask_0>; 0	; \=Mask\=
		struct_7 <7,   1240Ch, 0Ah, 20h,  21h, 190h, 4, 1000h, \ ; \=Precision mask\=
     offset aPrecisionMask>; 0
		struct_7 <7,   1240Bh, 0Ah, 22h,  23h, 190h, 4, 800h, \ ; \=Underflow mask\=
     offset aUnderflowMask>; 0
		struct_7 <7,   1240Ah, 0Ah, 24h,  25h, 190h, 4, 400h, \ ; \=Overflow mask\=
     offset aOverflowMask>; 0
		struct_7 <7,   12409h, 0Ah, 26h,  27h, 190h, 4, 200h, \ ; \=0 division mask\=
     offset a0DivisionMask>; 0
		struct_7 <7,   12408h, 0Ah, 28h,  29h, 190h, 4, 100h, \ ; \=Denormal mask\=
     offset aDenormalMask>; 0
		struct_7 <7,   12407h, 0Ah, 2Ah,  2Bh, 190h, 4, 80h, \ ; \=Invalid mask\=
     offset aInvalidMask>;	0
stru_549D58	struct_7 <8,  100h,  0,   0,    4,   0, 0,   0, 0>; 0 ; Method
		struct_7 <8,   12100h,  0,   5,  1Ch, 118h, 8,   0, offset aXmm0High>;	0 ; Method
		struct_7 <8,   12200h,  0, 1Dh,  34h, 110h, 8,   0, offset aXmm0Low>; 0 ; Method
stru_549DC4	struct_7 <8,  100h,  1,   0,    4,   0, 0,   0, 0>; 0 ; Method
		struct_7 <8,   12101h,  1,   5,  1Ch, 128h, 8,   0, offset aXmm1High>;	0 ; Method
		struct_7 <8,   12201h,  1, 1Dh,  34h, 120h, 8,   0, offset aXmm1Low>; 0 ; Method
stru_549E30	struct_7 <8,  100h,  2,   0,    4,   0, 0,   0, 0>; 0 ; Method
		struct_7 <8,   12102h,  2,   5,  1Ch, 138h, 8,   0, offset aXmm2High>;	0 ; Method
		struct_7 <8,   12202h,  2, 1Dh,  34h, 130h, 8,   0, offset aXmm2Low>; 0 ; Method
stru_549E9C	struct_7 <8,  100h,  3,   0,    4,   0, 0,   0, 0>; 0 ; Method
		struct_7 <8,   12103h,  3,   5,  1Ch, 148h, 8,   0, offset aXmm3High>;	0 ; Method
		struct_7 <8,   12203h,  3, 1Dh,  34h, 140h, 8,   0, offset aXmm3Low>; 0 ; Method
stru_549F08	struct_7 <8,  100h,  4,   0,    4,   0, 0,   0, 0>; 0 ; Method
		struct_7 <8,   12104h,  4,   5,  1Ch, 158h, 8,   0, offset aXmm4High>;	0 ; Method
		struct_7 <8,   12204h,  4, 1Dh,  34h, 150h, 8,   0, offset aXmm4Low>; 0 ; Method
stru_549F74	struct_7 <8,  100h,  5,   0,    4,   0, 0,   0, 0>; 0 ; Method
		struct_7 <8,   12105h,  5,   5,  1Ch, 168h, 8,   0, offset aXmm5High>;	0 ; Method
		struct_7 <8,   12205h,  5, 1Dh,  34h, 160h, 8,   0, offset aXmm5Low>; 0 ; Method
stru_549FE0	struct_7 <8,  100h,  6,   0,    4,   0, 0,   0, 0>; 0 ; Method
		struct_7 <8,   12106h,  6,   5,  1Ch, 178h, 8,   0, offset aXmm6High>;	0 ; Method
		struct_7 <8,   12206h,  6, 1Dh,  34h, 170h, 8,   0, offset aXmm6Low>; 0 ; Method
stru_54A04C	struct_7 <8,  100h,  7,   0,    4,   0, 0,   0, 0>; 0 ; Method
		struct_7 <8,   12107h,  7,   5,  1Ch, 188h, 8,   0, offset aXmm7High>;	0 ; Method
		struct_7 <8,   12207h,  7, 1Dh,  34h, 180h, 8,   0, offset aXmm7Low>; 0 ; Method
		struct_7 <8,  200h,  8, 20h,  2Bh,   0, 0,   0, offset aPUOZDI>; 0	; Method
		struct_7 <8,  100h,  9,   0,    5,   0, 0,   0, offset aMxcsr_2>; 0 ; Method
		struct_7 <8,   12300h,  9,   6,  0Eh, 190h, 4,   0, offset aMxcsr_2>; 0 ; Method
		struct_7 <8,  100h,  9, 10h,  12h,   0, 0,   0, offset aFz_1>; 0 ;	Method
		struct_7 <8,   1240Fh,  9, 13h,  14h, 190h, 4, 8000h, offset aFz_1>; 0	; Method
		struct_7 <8,  100h,  9, 15h,  17h,   0, 0,   0, offset aDz>; 0 ; Method
		struct_7 <8,   12406h,  9, 18h,  19h, 190h, 4, 40h, offset aDz>; 0 ; Method
		struct_7 <8,  100h,  9, 1Bh,  1Eh,   0, 0,   0, \ ; Method
     offset aLasterr+8>; 0
		struct_7 <8,   12405h,  9, 20h,  21h, 190h, 4, 20h, \ ; Method
     offset aPrecision>; 0
		struct_7 <8,   12404h,  9, 22h,  23h, 190h, 4, 10h, \ ; Method
     offset aUnderflow>; 0
		struct_7 <8,   12403h,  9, 24h,  25h, 190h, 4,   8, offset aOverflow>;	0 ; Method
		struct_7 <8,   12402h,  9, 26h,  27h, 190h, 4,   4, \ ; Method
     offset a0Division>; 0
		struct_7 <8,   12401h,  9, 28h,  29h, 190h, 4,   2, \ ; Method
     offset aDenormalized>; 0
		struct_7 <8,   12400h,  9, 2Ah,  2Bh, 190h, 4,   1, \ ; Method
     offset aInvalid_0>; 0
		struct_7 <8,  100h, 0Ah, 10h,  13h,   0, 0,   0, offset aRnd>; 0 ; Method
		struct_7 <8,   12500h, 0Ah, 14h,  18h, 190h, 4, 6000h, \ ; Method
     offset aRounding>; 0
		struct_7 <8,  100h, 0Ah, 1Bh,  1Fh,   0, 0,   0, offset aMask_0>; 0	; Method
		struct_7 <8,   1240Ch, 0Ah, 20h,  21h, 190h, 4, 1000h, \ ; Method
     offset aPrecisionMask>; 0
		struct_7 <8,   1240Bh, 0Ah, 22h,  23h, 190h, 4, 800h, \ ; Method
     offset aUnderflowMask>; 0
		struct_7 <8,   1240Ah, 0Ah, 24h,  25h, 190h, 4, 400h, \ ; Method
     offset aOverflowMask>; 0
		struct_7 <8,   12409h, 0Ah, 26h,  27h, 190h, 4, 200h, \ ; Method
     offset a0DivisionMask>; 0
		struct_7 <8,   12408h, 0Ah, 28h,  29h, 190h, 4, 100h, \ ; Method
     offset aDenormalMask>; 0
		struct_7 <8,   12407h, 0Ah, 2Ah,  2Bh, 190h, 4, 80h, \ ; Method
     offset aInvalidMask>;	0
		struct_7 <0>
dword_54A418	dd 10700h		; DATA XREF: .text:00494352o
		dd offset aFlag		; 0 ; \=FLAG\=
		dd 10800h		; 0
		dd offset aReg_efl	; 0 ; \=REG_EFL\=
		dd 11700h		; 0
		dd offset aReg_fpueadr	; 0 ; \=REG_FPUEADR\=
		dd 11100h		; 0
		dd offset aReg_fst	; 0 ; \=REG_FST\=
		dd 11400h		; 0
		dd offset aReg_fcw	; 0 ; \=REG_FCW\=
		dd 10E00h		; 0
		dd offset aReg_fputag	; 0 ; \=REG_FPUTAG\=
		dd 0			; 0
		dd 0			; 0
off_54A450	dd 0			; 0 ; DATA XREF: .text:0049264Br
off_54A454	dd 0			; 0 ; DATA XREF: .text:004926A5r
off_54A458	dd 0			; 0 ; DATA XREF: .text:004926B9r
off_54A45C	dd 0			; 0 ; DATA XREF: .text:004926CDr
off_54A460	dd 0			; 0 ; DATA XREF: .text:004926E1r
off_54A464	dd 0			; 0 ; DATA XREF: .text:004926F5r
stru_54A468	t_menu <offset aOverflowO, offset aModifyFlagsToM, 0, \
   offset loc_4938F4, 0, <0>>; 0 ;	\=Overflow \{O\}\=
		t_menu <offset aNotOverflowNo, offset aModifyFlagsToM, 0, \
   offset loc_4938F4, 0, <1>>; 1
		t_menu <offset aBelowBCNae, offset aModifyFlagsToM, 0, \
   offset loc_4938F4, 0, <2>>; 2
		t_menu <offset aNotBelowNbNcAe, offset aModifyFlagsToM, 0, \
   offset loc_4938F4, 0, <3>>; 3
		t_menu <offset aEqualEZ, offset aModifyFlagsToM, 0, offset loc_4938F4,\
   0, <4>>		; 4
		t_menu <offset aNotEqualNeNz, offset aModifyFlagsToM, 0, \
   offset loc_4938F4, 0, <5>>; 5
		t_menu <offset aBelowOrEqualBe, offset aModifyFlagsToM, 0, \
   offset loc_4938F4, 0, <6>>; 6
		t_menu <offset aAboveANbe, offset aModifyFlagsToM, 0, \
   offset loc_4938F4, 0, <7>>; 7
		t_menu <offset aSignS, offset aModifyFlagsToM, 0, offset loc_4938F4, \
   0, <8>>		; 8
		t_menu <offset aNotSignNs, offset aModifyFlagsToM, 0, \
   offset loc_4938F4, 0, <9>>; 9
		t_menu <offset aParityEvenPeP, offset aModifyFlagsToM, 0, \
   offset loc_4938F4, 0, <0Ah>>; 10
		t_menu <offset aParityOddPoNp, offset aModifyFlagsToM, 0, \
   offset loc_4938F4, 0, <0Bh>>; 11
		t_menu <offset aLessLNge, offset aModifyFlagsToM, 0, \
   offset loc_4938F4, 0, <0Ch>>; 12
		t_menu <offset aGreaterOrEqual, offset aModifyFlagsToM, 0, \
   offset loc_4938F4, 0, <0Dh>>; 13
		t_menu <offset aLessOrEqualLeN, offset aModifyFlagsToM, 0, \
   offset loc_4938F4, 0, <0Eh>>; 14
		t_menu <offset aGreaterGNle, offset aModifyFlagsToM, 0, \
   offset loc_4938F4, 0, <0Fh>>; 15
		t_menu	<0>
stru_54A600	t_menu <offset aGreaterGt, offset aModifyFpuFlags, 0, \
   offset loc_4939A0, 0, <0>>; 0 ;	\=B\=
		t_menu <offset aLessLt, offset aModifyFpuFlags, 0, offset loc_4939A0, \
   0, <100h>>	; 1
		t_menu <offset aEqualEq, offset aModifyFpuFlags, 0, offset loc_4939A0,\
   0, <4000h>>	; 2
		t_menu <offset aUnordered_0, offset aModifyFpuFlags, 0, \
   offset loc_4939A0, 0, <4500h>>;	3
		t_menu <0, 0, 0, 0, 0, <0>>; 4
		t_menu <offset asc_54B946, 0, 0, offset loc_4929F0, 0, <0>>; 5
		t_menu <offset aIncrement, offset aIncrementRegis, 1F4h, \
   offset loc_492B94, 0, <1>>; 6
		t_menu <offset aDecrement, offset aDecrementReg_0, 1F5h, \
   offset loc_492B94, 0, <0FFFFFFFFh>>; 7
		t_menu <offset aZero_2, offset aSetRegisterTo0, 1F6h, \
   offset loc_492C04, 0, <0>>; 8
		t_menu <offset aZero_2, offset aSetRegisterTo0, 1F6h, \
   offset loc_492CC4, 0, <0>>; 9
		t_menu <offset aSetTo1, offset aSetRegisterTo1, 1F7h, \
   offset loc_492CC4, 0, <1>>; 10
		t_menu <offset aToggle, offset aInvertBitValue, 1F8h, \
   offset loc_492D50, 0, <0>>; 11
		t_menu <offset aModify___, offset aChangeContents, 1F8h, \
   offset loc_492DD4, 0, <0>>; 12
		t_menu <offset aTag0+8, 0, 3F0h, offset loc_492DD4, 0, <30h>>; 13
		t_menu <offset aTag1+8, 0, 3F1h, offset loc_492DD4, 0, <31h>>; 14
		t_menu <offset aTag2+8, 0, 3F2h, offset loc_492DD4, 0, <32h>>; 15
		t_menu <offset aTag3+8, 0, 3F3h, offset loc_492DD4, 0, <33h>>; 16
		t_menu <offset aTag4+8, 0, 3F4h, offset loc_492DD4, 0, <34h>>; 17
		t_menu <offset aTag5+8, 0, 3F5h, offset loc_492DD4, 0, <35h>>; 18
		t_menu <offset aTag6+8, 0, 3F6h, offset loc_492DD4, 0, <36h>>; 19
		t_menu <offset aTag7+8, 0, 3F7h, offset loc_492DD4, 0, <37h>>; 20
		t_menu <offset a8_0, 0, 3F8h, offset loc_492DD4, 0, <38h>>; 21
		t_menu <offset a9, 0, 3F9h, offset loc_492DD4, 0, <39h>>; 22
		t_menu <offset aA_1, 0, 3FAh, offset loc_492DD4, 0, <41h>>; 23
		t_menu <offset aB_1, 0, 3FBh, offset loc_492DD4, 0, <42h>>; 24
		t_menu <offset aC_0, 0, 3FCh, offset loc_492DD4, 0, <43h>>; 25
		t_menu <offset aD, 0, 3FDh, offset loc_492DD4, 0, <44h>>; 26
		t_menu <offset aE_2, 0, 3FEh, offset loc_492DD4, 0, <45h>>; 27
		t_menu <offset asc_54BAFE, 0, 3FFh, offset loc_492DD4, 0, <46h>>; 28
		t_menu <offset aSetCondition_5, offset aModifyFlagsToM, 0, 0, \ ; \=Modify flags to meet specified conditio\=...
   offset stru_54A468, <0>>
		t_menu <offset aSetCondition_5, offset aModifyFpuFlags, 0, 0, \ ; \=Modify FPU flags to meet specified cond\=...
   offset stru_54A600, <0>>
		t_menu <offset aTagAsValid, offset aSetTagAssociat, 0, \ ; \=\=
   offset loc_493A48, 0, <0>>; 0
		t_menu <offset aTagAsZero, offset aSetTagAssoci_2, 0, \
   offset loc_493A48, 0, <1>>; 1
		t_menu <offset aTagAsBad, offset aSetTagAssoci_0, 0, \
   offset loc_493A48, 0, <2>>; 2
		t_menu <offset aTagAsEmpty, offset aSetTagAssoci_1, 0, \
   offset loc_493A48, 0, <3>>; 3
		t_menu <offset aRoundToNearest, offset aRoundToTheClos, 0, \
   offset loc_493AD0, 0, <0>>; 4
		t_menu <offset aRoundDown, offset aRoundTowardI_0, 0, \
   offset loc_493AD0, 0, <400h>>; 5
		t_menu <offset aRoundUp, offset aRoundTowardInf, 0, offset loc_493AD0,\
   0, <800h>>	; 6
		t_menu <offset aRoundTowardZer, offset aRoundToNumberT, 0, \
   offset loc_493AD0, 0, <0C00h>>;	7
		t_menu <offset a24BitAccuracy, offset aSetSingle24Bit, 0, \
   offset loc_493BCC, 0, <0>>; 8
		t_menu <offset a53BitAccuracy, offset aSetDouble53Bit, 0, \
   offset loc_493BCC, 0, <200h>>; 9
		t_menu <offset a64BitAccuracy, offset aSetExtended64B, 0, \
   offset loc_493BCC, 0, <300h>>; 10
		t_menu <offset aUndo_0, offset aUndoModificati, 1F9h, \
   offset loc_493D2C, 0, <0>>; 11
		t_menu <offset aCopyToClipbo_0, offset aCopyValueOfSel, 0CBh, \
   offset loc_493FA4, 0, <0>>; 12
		t_menu <offset aCopyAllRegiste, offset aCopyTheWholeRe, 0CCh, \
   offset loc_49413C, 0, <0>>; 13
		t_menu <offset aPushFpuStack_1, offset aDecrementTopBy, 1FAh, \
   offset loc_4941F8, 0, <7>>; 14
		t_menu <offset aPopFpuStack, offset aIncrementTopBy, 1FBh, \
   offset loc_4941F8, 0, <1>>; 15
		t_menu <offset aFollowInDisa_3, offset aShowAddressI_1, 1FCh, \
   offset loc_49428C, 0, <0>>; 16
		t_menu <offset aFollowInDump_0, offset aShowAddressI_3, 1FDh, \
   offset loc_49428C, 0, <1>>; 17
		t_menu <offset aFollowInStac_1, offset aShowAddressI_4, 1FEh, \
   offset loc_49428C, 0, <2>>; 18
		t_menu <offset aViewFloatRegis, offset aShowFloatingPo, 1FFh, \
   offset loc_493C58, 0, <0>>; 19
		t_menu <offset aViewMmxRegis_0, offset aDecodeFpuRegis, 200h, \
   offset loc_493C58, 0, <1>>; 20
		t_menu <offset aView3dnowReg_0, offset aDecodeFpuReg_0, 201h, \
   offset loc_493C58, 0, <2>>; 21
		t_menu <offset aViewSseAsInteg, offset aDecodeSseRegis, 0, \
   offset loc_493CA8, 0, <0>>; 22
		t_menu <offset aViewSseAs32Bit, offset aDecodeSseReg_2, 0, \
   offset loc_493CA8, 0, <10h>>; 23
		t_menu <offset aViewSseAs64Bit, offset aDecodeSseReg_0, 0, \
   offset loc_493CA8, 0, <20h>>; 24
		t_menu <offset aHelpOnRegister, offset aShowHelpOnSele, 202h, \
   offset loc_49434C, 0, <0>>; 25
		t_menu <offset aRegisters_0, offset aO_0+1, 0, 0, 0, <0>>; 26
		t_menu <offset asc_54C620, offset aO_0+1, 0, 0, offset stru_518B94, <0>>; 27
aO_0:					; DATA XREF: .text:00496BDAo
					; .data:off_547594o ...
		unicode	0, <O>,0
aNo_0:					; DATA XREF: .data:00547598o
		unicode	0, <NO>,0
aB_1:					; DATA XREF: .data:0054759Co
					; .data:stru_54A600o
		unicode	0, <B>,0
aNb:					; DATA XREF: .data:005475A0o
		unicode	0, <NB>,0
aE_2:					; DATA XREF: .data:005475A4o
					; .data:stru_54A600o
		unicode	0, <E>,0
aNe_1:					; DATA XREF: .data:005475A8o
		unicode	0, <NE>,0
aBe:					; DATA XREF: .data:005475ACo
		unicode	0, <BE>,0
aA_1:					; DATA XREF: .data:005475B0o
					; .data:00547A9Co ...
		unicode	0, <A>,0
aS_15:					; DATA XREF: .data:005475B4o
					; .data:00547B2Co ...
		unicode	0, <S>,0
aNs:					; DATA XREF: .data:005475B8o
		unicode	0, <NS>,0
aPe_1:					; DATA XREF: .data:005475BCo
		unicode	0, <PE>,0
aPo:					; DATA XREF: .data:005475C0o
		unicode	0, <PO>,0
asc_54ABC6:				; DATA XREF: .data:005475C4o
		unicode	0, <L>,0
aGe_0:					; DATA XREF: .data:005475C8o
		unicode	0, <GE>,0
aLe_3:					; DATA XREF: .data:005475CCo
		unicode	0, <LE>,0
aG:					; DATA XREF: .data:005475D0o
		unicode	0, <G>,0
aEip_0:					; DATA XREF: .data:00547934o
					; .data:00547958o ...
		unicode	0, <EIP>,0
aC_0:					; DATA XREF: .data:00547A0Co
					; .data:00547A30o ...
		unicode	0, <C>,0
aZ_0:					; DATA XREF: .data:00547AE4o
					; .data:00547B08o
		unicode	0, <Z>,0
aT:					; DATA XREF: .data:00547B74o
					; .data:00547B98o
		unicode	0, <T>,0
aD:					; DATA XREF: .data:00547BBCo
					; .data:00547BE0o ...
		unicode	0, <D>,0
aEfl_1:					; DATA XREF: .data:00547C4Co
					; .data:00547C70o ...
		unicode	0, <EFL>,0
aLasterr:				; DATA XREF: .data:00547FACo
					; .data:00547FD0o ...
		unicode	0, <LastErr>,0
aTag0:					; DATA XREF: .data:0054803Co
		unicode	0, <Tag 0>,0
aStack0:				; DATA XREF: .data:00548060o
		unicode	0, <Stack 0>,0
aTag1:					; DATA XREF: .data:005480CCo
		unicode	0, <Tag 1>,0
aStack1:				; DATA XREF: .data:005480F0o
		unicode	0, <Stack 1>,0
aTag2:					; DATA XREF: .data:0054815Co
					; .data:stru_54A600o
		unicode	0, <Tag 2>,0
aStack2:				; DATA XREF: .data:00548180o
		unicode	0, <Stack 2>,0
aTag3:					; DATA XREF: .data:005481ECo
					; .data:stru_54A600o
		unicode	0, <Tag 3>,0
aStack3:				; DATA XREF: .data:00548210o
		unicode	0, <Stack 3>,0
aTag4:					; DATA XREF: .data:0054827Co
					; .data:stru_54A600o
		unicode	0, <Tag 4>,0
aStack4:				; DATA XREF: .data:005482A0o
		unicode	0, <Stack 4>,0
aTag5:					; DATA XREF: .data:0054830Co
					; .data:stru_54A600o
		unicode	0, <Tag 5>,0
aStack5:				; DATA XREF: .data:00548330o
		unicode	0, <Stack 5>,0
aTag6:					; DATA XREF: .data:0054839Co
					; .data:stru_54A600o
		unicode	0, <Tag 6>,0
aStack6:				; DATA XREF: .data:005483C0o
		unicode	0, <Stack 6>,0
aTag7:					; DATA XREF: .data:0054842Co
					; .data:stru_54A600o
		unicode	0, <Tag 7>,0
aStack7:				; DATA XREF: .data:00548450o
		unicode	0, <Stack 7>,0
a3210:					; DATA XREF: .data:00548498o
		unicode	0, <3 2 1 0>,0
aESPU:					; DATA XREF: .data:005484BCo
		unicode	0, <E S P U>,0
aOZDI:					; DATA XREF: .data:005484E0o
		unicode	0, <O Z D I>,0
aFst_2:					; DATA XREF: .data:00548504o
					; .data:00548528o
		unicode	0, <FST>,0
aCond_2:				; DATA XREF: .data:0054854Co
		unicode	0, <Cond>,0
aC3:					; DATA XREF: .data:00548570o
		unicode	0, <C 3>,0
aC2_0:					; DATA XREF: .data:00548594o
		unicode	0, <C 2>,0
aC1:					; DATA XREF: .data:005485B8o
		unicode	0, <C 1>,0
aC0_1:					; DATA XREF: .data:005485DCo
		unicode	0, <C 0>,0
aException_5:				; DATA XREF: .data:00548624o
		unicode	0, <Exception>,0
aStackFault:				; DATA XREF: .data:00548648o
		unicode	0, <Stack fault>,0
aPrecision:				; DATA XREF: .data:0054866Co
					; .data:005487D4o ...
		unicode	0, <Precision>,0
aUnderflow:				; DATA XREF: .data:00548690o
					; .data:00549284o ...
		unicode	0, <Underflow>,0
aOverflow:				; DATA XREF: .data:005486B4o
					; .data:005492A8o ...
		unicode	0, <Overflow>,0
a0Division:				; DATA XREF: .data:005486D8o
					; .data:005492CCo ...
		unicode	0, <0 division>,0
aDenormalized:				; DATA XREF: .data:005486FCo
					; .data:005492F0o ...
		unicode	0, <Denormalized>,0
aInvalid_0:				; DATA XREF: .data:00548720o
					; .data:00549314o ...
		unicode	0, <Invalid>,0
aFcw_2:					; DATA XREF: .data:00548768o
					; .data:0054878Co
		unicode	0, <FCW>,0
aPrec:					; DATA XREF: .data:005487B0o
		unicode	0, <Prec>,0
aMask_0:				; DATA XREF: .data:005487F8o
					; .data:00549380o ...
		unicode	0, <Mask>,0
aPrecisionMask:				; DATA XREF: .data:0054881Co
					; .data:005493A4o ...
		unicode	0, <Precision mask>,0
aUnderflowMask:				; DATA XREF: .data:00548840o
					; .data:005493C8o ...
		unicode	0, <Underflow mask>,0
aOverflowMask:				; DATA XREF: .data:00548864o
					; .data:005493ECo ...
		unicode	0, <Overflow mask>,0
a0DivisionMask:				; DATA XREF: .data:00548888o
					; .data:00549410o ...
		unicode	0, <0 division mask>,0
aDenormalMask:				; DATA XREF: .data:005488ACo
					; .data:00549434o ...
		unicode	0, <Denormal mask>,0
aInvalidMask:				; DATA XREF: .data:005488D0o
					; .data:00549458o ...
		unicode	0, <Invalid mask>,0
aLastCmnd:				; DATA XREF: .data:005488F4o
		unicode	0, <Last cmnd>,0
aLastCommand:				; DATA XREF: .data:00548918o
		unicode	0, <Last command>,0
aMm0High:				; DATA XREF: .data:00548BC4o
		unicode	0, <MM0 high>,0
aMm0Low:				; DATA XREF: .data:00548BE8o
		unicode	0, <MM0 low>,0
aMm1High:				; DATA XREF: .data:00548C30o
		unicode	0, <MM1 high>,0
aMm1Low:				; DATA XREF: .data:00548C54o
		unicode	0, <MM1 low>,0
aMm2High:				; DATA XREF: .data:00548C9Co
		unicode	0, <MM2 high>,0
aMm2Low:				; DATA XREF: .data:00548CC0o
		unicode	0, <MM2 low>,0
aMm3High:				; DATA XREF: .data:00548D08o
		unicode	0, <MM3 high>,0
aMm3Low:				; DATA XREF: .data:00548D2Co
		unicode	0, <MM3 low>,0
aMm4High:				; DATA XREF: .data:00548D74o
		unicode	0, <MM4 high>,0
aMm4Low:				; DATA XREF: .data:00548D98o
		unicode	0, <MM4 low>,0
aMm5High:				; DATA XREF: .data:00548DE0o
		unicode	0, <MM5 high>,0
aMm5Low:				; DATA XREF: .data:00548E04o
		unicode	0, <MM5 low>,0
aMm6High:				; DATA XREF: .data:00548E4Co
		unicode	0, <MM6 high>,0
aMm6Low:				; DATA XREF: .data:00548E70o
		unicode	0, <MM6 low>,0
aMm7High:				; DATA XREF: .data:00548EB8o
		unicode	0, <MM7 high>,0
aMm7Low:				; DATA XREF: .data:00548EDCo
		unicode	0, <MM7 low>,0
aPUOZDI:				; DATA XREF: .data:00549140o
					; .data:00549A1Co ...
		unicode	0, <P U O Z D I>,0
aMxcsr_2:				; DATA XREF: .data:00549164o
					; .data:00549188o ...
		unicode	0, <MXCSR>,0
aFz_1:					; DATA XREF: .data:005491ACo
					; .data:005491D0o ...
		unicode	0, <FZ>,0
aDz:					; DATA XREF: .data:005491F4o
					; .data:00549218o ...
		unicode	0, <DZ>,0
aRnd:					; DATA XREF: .data:00549338o
					; .data:00549C14o ...
		unicode	0, <Rnd>,0
aRounding:				; DATA XREF: .data:0054935Co
					; .data:00549C38o ...
		unicode	0, <Rounding>,0
aXmm0High:				; DATA XREF: .data:00549D7Co
		unicode	0, <XMM0 high>,0
aXmm0Low:				; DATA XREF: .data:00549DA0o
		unicode	0, <XMM0 low>,0
aXmm1High:				; DATA XREF: .data:00549DE8o
		unicode	0, <XMM1 high>,0
aXmm1Low:				; DATA XREF: .data:00549E0Co
		unicode	0, <XMM1 low>,0
aXmm2High:				; DATA XREF: .data:00549E54o
		unicode	0, <XMM2 high>,0
aXmm2Low:				; DATA XREF: .data:00549E78o
		unicode	0, <XMM2 low>,0
aXmm3High:				; DATA XREF: .data:00549EC0o
		unicode	0, <XMM3 high>,0
aXmm3Low:				; DATA XREF: .data:00549EE4o
		unicode	0, <XMM3 low>,0
aXmm4High:				; DATA XREF: .data:00549F2Co
		unicode	0, <XMM4 high>,0
aXmm4Low:				; DATA XREF: .data:00549F50o
		unicode	0, <XMM4 low>,0
aXmm5High:				; DATA XREF: .data:00549F98o
		unicode	0, <XMM5 high>,0
aXmm5Low:				; DATA XREF: .data:00549FBCo
		unicode	0, <XMM5 low>,0
aXmm6High:				; DATA XREF: .data:0054A004o
		unicode	0, <XMM6 high>,0
aXmm6Low:				; DATA XREF: .data:0054A028o
		unicode	0, <XMM6 low>,0
aXmm7High:				; DATA XREF: .data:0054A070o
		unicode	0, <XMM7 high>,0
aXmm7Low:				; DATA XREF: .data:0054A094o
		unicode	0, <XMM7 low>,0
aFlag:					; DATA XREF: .data:0054A41Co
		unicode	0, <FLAG>,0
aReg_efl:				; DATA XREF: .data:0054A424o
		unicode	0, <REG_EFL>,0
aReg_fpueadr:				; DATA XREF: .data:0054A42Co
		unicode	0, <REG_FPUEADR>,0
aReg_fst:				; DATA XREF: .data:0054A434o
		unicode	0, <REG_FST>,0
aReg_fcw:				; DATA XREF: .data:0054A43Co
		unicode	0, <REG_FCW>,0
aReg_fputag:				; DATA XREF: .data:0054A444o
		unicode	0, <REG_FPUTAG>,0
aRegistersFpu:				; DATA XREF: .text:00494BEDo
		unicode	0, <Registers \{FPU\}>,0
aRegistersMmx:				; DATA XREF: .text:00494C07o
		unicode	0, <Registers \{MMX\}>,0
aRegisters3dnow:			; DATA XREF: .text:00494C21o
		unicode	0, <Registers \{3DNow!\}>,0
aRegistersDr:				; DATA XREF: .text:00494C3Bo
		unicode	0, <Registers \{DR\}>,0
aRegisters:				; DATA XREF: .text:loc_494C50o
		unicode	0, <Registers>,0
aRegistersOf:				; DATA XREF: .text:loc_494CFCo
		unicode	0, <Registers of >,0
; wchar_t a________
;a!?!?!?!?!?!?!?!?:				; DATA XREF: .text:004953FDo
		unicode	0, <!?!?!?!?!?!?!?!?>,0
; wchar_t aS_14
aS_14:					; DATA XREF: .text:004955A6o
		unicode	0, <!%s,>,0
; wchar_t a04x_4
a04x_4:					; DATA XREF: .text:0049561Co
		unicode	0, <!%04X>,0
; wchar_t aNull_5
aNull_5:				; DATA XREF: .text:0049566Fo
		unicode	0, <NULL>,0
; wchar_t aSLxLx
aSLxLx:					; DATA XREF: .text:004956BDo
		unicode	0, <!%s !%lX\{!%lX\}>,0
a32bit:					; DATA XREF: .text:004956A4o
		unicode	0, <32bit>,0
a16bit:					; DATA XREF: .text:loc_4956B1o
		unicode	0, <16bit>,0
; wchar_t aErrcode_3
aErrcode_3:				; DATA XREF: .text:00495742o
		unicode	0, <ERRCODE>,0
aZero_4:				; DATA XREF: .text:loc_4957E6o
		unicode	0, <zero>,0
aBad:					; DATA XREF: .text:loc_495808o
		unicode	0, <bad>,0
aEmpty:					; DATA XREF: .text:loc_49582Ao
		unicode	0, <empty>,0
; wchar_t aGt
aGt:					; DATA XREF: .text:0049593Co
		unicode	0, <\{GT\}>,0
; wchar_t aLt_1
aLt_1:					; DATA XREF: .text:00495960o
		unicode	0, <\{LT\}>,0
; wchar_t aEq
aEq:					; DATA XREF: .text:00495984o
		unicode	0, <\{EQ\}>,0
aUnordered:				; DATA XREF: .text:004959A8o
		unicode	0, <\{Unordered\}>,0
; wchar_t aNear_2
aNear_2:				; DATA XREF: .text:00495A1Co
		unicode	0, <NEAR,>,0
; wchar_t aDown
aDown:					; DATA XREF: .text:00495A40o
		unicode	0, <DOWN,>,0
; wchar_t aUp
aUp:					; DATA XREF: .text:00495A64o
		unicode	0, <  UP,>,0
; wchar_t aZero_0
aZero_0:				; DATA XREF: .text:loc_495A7Fo
		unicode	0, <ZERO,>,0
; wchar_t a24
a24:					; DATA XREF: .text:00495AADo
		unicode	0, <24>,0
; wchar_t a53
a53:					; DATA XREF: .text:00495AF5o
		unicode	0, <53>,0
; wchar_t a64
a64:					; DATA XREF: .text:loc_495B10o
		unicode	0, <64>,0
; wchar_t a____________
;a!?!?!?!?!?!?!?!?!?!?!?!?:				; DATA XREF: .text:00495B3Bo
		unicode	0, <!?!?!?!?:!?!?!?!?!?!?!?!?>,0
; wchar_t a04x08x_2
a04x08x_2:				; DATA XREF: .text:00495B6Fo
		unicode	0, <!%04X:!%08X>,0
; wchar_t a______________
;a!?!?!?!?!?!?!?!?!?!?!?!?!?!?:			; DATA XREF: .text:00495BF0o
		unicode	0, <!?!?!?!? !?!?!?!? !?!?!?!? !?!?!?!?>,0
; wchar_t a13s
a13s:					; DATA XREF: .text:00495C69o
		unicode	0, <!%13s>,0
; wchar_t a_____________0
;a!?!?!?!?!?!?!?!?!?!?!?!?_0:			; DATA XREF: .text:loc_495C94o
		unicode	0, <!?!?!?!?!?!?!?!? !?!?!?!?!?!?!?!? !?!?!?!?!?!?!?!? !?!?!?!?!?!?!?!?>,0
; wchar_t a08x08x08x08x_0
a08x08x08x08x_0:			; DATA XREF: .text:00495CD4o
		unicode	0, <!%08X !%08X !%08X !%08X>,0
; wchar_t a22s
a22s:					; DATA XREF: .text:00495D96o
		unicode	0, <!%22s>,0
; wchar_t aNear_1
aNear_1:				; DATA XREF: .text:00495E3Bo
		unicode	0, <NEAR>,0
; wchar_t aDown_0
aDown_0:				; DATA XREF: .text:00495E5Fo
		unicode	0, <DOWN>,0
; wchar_t aUp_0
aUp_0:					; DATA XREF: .text:00495E83o
		unicode	0, <UP >,0
; wchar_t aZero_1
aZero_1:				; DATA XREF: .text:loc_495E9Eo
		unicode	0, <ZERO>,0
aModifyFlags:				; DATA XREF: .text:00492FB1o
		unicode	0, <Modify flags>,0
aModifyS_1:				; DATA XREF: .text:00493019o
		unicode	0, <Modify !%s>,0
aChangeThreadSL:			; DATA XREF: .text:004930FAo
		unicode	0, <Change thread>
		dw 27h
		unicode	0, <s last error>,0
aModifyFpuSta_1:			; DATA XREF: .text:004932A7o
		unicode	0, <Modify FPU status register>,0
aModifyFpuCon_0:			; DATA XREF: .text:00493320o
		unicode	0, <Modify FPU control register>,0
aModify3dnowR_0:			; DATA XREF: .text:00493460o
		unicode	0, <Modify 3DNow! register !%s>,0
aModifyMxcsr_0:				; DATA XREF: .text:0049389Co
		unicode	0, <Modify MXCSR>,0
aUnableToCopy_0:			; DATA XREF: .text:0049407Eo
		unicode	0, <Unable to copy>,0
aHelpOnFlag:				; DATA XREF: .text:00494383o
		unicode	0, <Help on flag>,0
aNoHelpOnSelect:			; DATA XREF: .text:004943D1o
		unicode	0, <No help on selected item>,0
aOverflowO:				; DATA XREF: .data:stru_54A468o
		unicode	0, <Overflow \{O\}>,0
aModifyFlagsToM:			; DATA XREF: .data:stru_54A468o
					; .data:0054A8B8o
		unicode	0, <Modify flags to meet specified condition>,0
aNotOverflowNo:				; DATA XREF: .data:stru_54A468o
		unicode	0, <Not Overflow \{NO\}>,0
aBelowBCNae:				; DATA XREF: .data:stru_54A468o
		unicode	0, <Below \{B,C,NAE\}>,0
aNotBelowNbNcAe:			; DATA XREF: .data:stru_54A468o
		unicode	0, <Not Below \{NB,NC,AE\}>,0
aEqualEZ:				; DATA XREF: .data:stru_54A468o
		unicode	0, <Equal \{E,Z\}>,0
aNotEqualNeNz:				; DATA XREF: .data:stru_54A468o
		unicode	0, <Not Equal \{NE,NZ\}>,0
aBelowOrEqualBe:			; DATA XREF: .data:stru_54A468o
		unicode	0, <Below or Equal \{BE,NA\}>,0
aAboveANbe:				; DATA XREF: .data:stru_54A468o
		unicode	0, <Above \{A,NBE\}>,0
aSignS:					; DATA XREF: .data:stru_54A468o
		unicode	0, <Sign \{S\}>,0
aNotSignNs:				; DATA XREF: .data:stru_54A468o
		unicode	0, <Not Sign \{NS\}>,0
aParityEvenPeP:				; DATA XREF: .data:stru_54A468o
		unicode	0, <Parity Even \{PE,P\}>,0
aParityOddPoNp:				; DATA XREF: .data:stru_54A468o
		unicode	0, <Parity Odd \{PO,NP\}>,0
aLessLNge:				; DATA XREF: .data:stru_54A468o
		unicode	0, <Less \{L,NGE\}>,0
aGreaterOrEqual:			; DATA XREF: .data:stru_54A468o
		unicode	0, <Greater or Equal \{GE,NL\}>,0
aLessOrEqualLeN:			; DATA XREF: .data:stru_54A468o
		unicode	0, <Less or Equal \{LE,NG\}>,0
aGreaterGNle:				; DATA XREF: .data:stru_54A468o
		unicode	0, <Greater \{G,NLE\}>,0
aGreaterGt:				; DATA XREF: .data:stru_54A600o
		unicode	0, <Greater \{GT\}>,0
aModifyFpuFlags:			; DATA XREF: .data:stru_54A600o
					; .data:0054A8D0o
		unicode	0, <Modify FPU flags to meet specified condition>,0
aLessLt:				; DATA XREF: .data:stru_54A600o
		unicode	0, <Less \{LT\}>,0
aEqualEq:				; DATA XREF: .data:stru_54A600o
		unicode	0, <Equal \{EQ\}>,0
aUnordered_0:				; DATA XREF: .data:stru_54A600o
		unicode	0, <Unordered>,0
asc_54B946:				; DATA XREF: .data:stru_54A600o
		unicode	0, <\:>,0
aIncrement:				; DATA XREF: .data:stru_54A600o
		unicode	0, <\AIncrement>,0
aIncrementRegis:			; DATA XREF: .data:stru_54A600o
		unicode	0, <Increment register \{add 1\}>,0
aDecrement:				; DATA XREF: .data:stru_54A600o
		unicode	0, <\ADecrement>,0
aDecrementReg_0:			; DATA XREF: .data:stru_54A600o
		unicode	0, <Decrement register \{subtract 1\}>,0
aZero_2:				; DATA XREF: .data:stru_54A600o
		unicode	0, <\AZero>,0
aSetRegisterTo0:			; DATA XREF: .data:stru_54A600o
		unicode	0, <Set register to 0>,0
aSetTo1:				; DATA XREF: .data:stru_54A600o
		unicode	0, <Set to \A1>,0
aSetRegisterTo1:			; DATA XREF: .data:stru_54A600o
		unicode	0, <Set register to 1>,0
aToggle:				; DATA XREF: .data:stru_54A600o
		unicode	0, <\AToggle>,0
aInvertBitValue:			; DATA XREF: .data:stru_54A600o
		unicode	0, <Invert bit value \{0 to 1, 1 to 0\}>,0
aModify___:				; DATA XREF: .data:stru_54A600o
		unicode	0, <\AModify...>,0
aChangeContents:			; DATA XREF: .data:stru_54A600o
		unicode	0, <Change contents of register>,0
a8_0:					; DATA XREF: .data:stru_54A600o
		unicode	0, <8>,0
a9:					; DATA XREF: .data:stru_54A600o
		unicode	0, <9>,0
asc_54BAFE:				; DATA XREF: .data:stru_54A600o
		unicode	0, <F>,0
aSetCondition_5:			; DATA XREF: .data:0054A8B8o
					; .data:0054A8D0o
		unicode	0, <Set condition>,0
aTagAsValid:				; DATA XREF: .data:0054A8E8o
		unicode	0, <Tag as valid>,0
aSetTagAssociat:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Set tag associated with floating register to valid>,0
aTagAsZero:				; DATA XREF: .data:0054A8E8o
		unicode	0, <Tag as zero>,0
aSetTagAssoci_2:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Set tag associated with floating register to zero>,0
aTagAsBad:				; DATA XREF: .data:0054A8E8o
		unicode	0, <Tag as bad>,0
aSetTagAssoci_0:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Set tag associated with floating register to bad>,0
aTagAsEmpty:				; DATA XREF: .data:0054A8E8o
		unicode	0, <Tag as empty>,0
aSetTagAssoci_1:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Set tag associated with floating register to empty>,0
aRoundToNearest:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Round to nearest>,0
aRoundToTheClos:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Round to the closest presentable number>,0
aRoundDown:				; DATA XREF: .data:0054A8E8o
		unicode	0, <Round down>,0
aRoundTowardI_0:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Round toward -INF>,0
aRoundUp:				; DATA XREF: .data:0054A8E8o
		unicode	0, <Round up>,0
aRoundTowardInf:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Round toward +INF>,0
aRoundTowardZer:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Round toward zero>,0
aRoundToNumberT:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Round to number that is smaller by absolute value>,0
a24BitAccuracy:				; DATA XREF: .data:0054A8E8o
		unicode	0, <24-bit accuracy>,0
aSetSingle24Bit:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Set single \{24-bit\} FPU precision>,0
a53BitAccuracy:				; DATA XREF: .data:0054A8E8o
		unicode	0, <53-bit accuracy>,0
aSetDouble53Bit:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Set double \{53-bit\} FPU precision>,0
a64BitAccuracy:				; DATA XREF: .data:0054A8E8o
		unicode	0, <64-bit accuracy>,0
aSetExtended64B:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Set extended \{64-bit\} FPU precision>,0
aUndo_0:				; DATA XREF: .data:0054A8E8o
		unicode	0, <\AUndo>,0
aUndoModificati:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Undo modification>,0
aCopyToClipbo_0:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Copy to clipboard>,0
aCopyValueOfSel:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Copy value of selected item to clipboard>,0
aCopyAllRegiste:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Copy all registers>,0
aCopyTheWholeRe:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Copy the whole Registers pane to clipboard>,0
aPushFpuStack_1:			; DATA XREF: .data:0054A8E8o
		unicode	0, <|Push FPU stack>,0
aDecrementTopBy:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Decrement TOP by one>,0
aPopFpuStack:				; DATA XREF: .data:0054A8E8o
		unicode	0, <Pop FPU stack>,0
aIncrementTopBy:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Increment TOP by one>,0
aFollowInDisa_3:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Follow in Disassembler>,0
aShowAddressI_1:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Show address in CPU Disassembler pane>,0
aFollowInDump_0:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Follow in Dump>,0
aShowAddressI_3:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Show address in CPU Dump pane>,0
aFollowInStac_1:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Follow in Stack>,0
aShowAddressI_4:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Show address in CPU Stack pane>,0
aViewFloatRegis:			; DATA XREF: .data:0054A8E8o
		unicode	0, <|View float registers>,0
aShowFloatingPo:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Show floating-point registers and flags>,0
aViewMmxRegis_0:			; DATA XREF: .data:0054A8E8o
		unicode	0, <View MMX registers>,0
aDecodeFpuRegis:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Decode FPU registers as 64-bit MMX integers>,0
aView3dnowReg_0:			; DATA XREF: .data:0054A8E8o
		unicode	0, <View 3DNow! registers>,0
aDecodeFpuReg_0:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Decode FPU registers as two 3DNow! registers>,0
aViewSseAsInteg:			; DATA XREF: .data:0054A8E8o
		unicode	0, <|View SSE as integers>,0
aDecodeSseRegis:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Decode SSE registers as 4 x 32-bit hex numbers>,0
aViewSseAs32Bit:			; DATA XREF: .data:0054A8E8o
		unicode	0, <View SSE as 32-bit floats>,0
aDecodeSseReg_2:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Decode SSE registers as 4 x 32-bit floats>,0
aViewSseAs64Bit:			; DATA XREF: .data:0054A8E8o
		unicode	0, <View SSE as 64-bit doubles>,0
aDecodeSseReg_0:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Decode SSE registers as 2 x 64-bit doubles>,0
aHelpOnRegister:			; DATA XREF: .data:0054A8E8o
		unicode	0, <|Help on register>,0
aShowHelpOnSele:			; DATA XREF: .data:0054A8E8o
		unicode	0, <Show help on selected item>,0
aRegisters_0:				; DATA XREF: .data:0054A8E8o
		unicode	0, <|*REGISTERS>,0
asc_54C620:				; DATA XREF: .data:0054A8E8o
		unicode	0, <|>,0
; const	WCHAR aLocal
aLocal:					; DATA XREF: .text:004961B9o
		unicode	0, <Local>,0
; wchar_t aII_0
aII_0:					; DATA XREF: .text:004961B4o
		unicode	0, <!%i,!%i>,0
aProgramTermina:			; DATA XREF: .text:00496B0Ao
		unicode	0, <Program terminated>,0
aProgramIsRunni:			; DATA XREF: .text:00496B2Ao
		unicode	0, <Program is running>,0
aPressToToggleB:			; DATA XREF: .text:00496DDBo
		unicode	0, <Press to toggle between FPU/MMX/3DNow\:>,0
aIco_r:
		unicode	0, <ICO_R>,0
		db 0
		db    0
stru_54C6E4	t_menu <offset asc_54D38E, 0, 0, offset loc_496F04, 0, <0>>; 0
		t_menu <offset aDelete_1, offset aDeleteInt3Brea, 294h, \ ; \=\=
   offset loc_496F28, 0, <0>>; 1
		t_menu <offset aDisable, offset aDisableBreak_2, 295h, \
   offset loc_496F84, 0, <0>>; 2
		t_menu <offset aEnable, offset aReEnableInt3Br, 295h, \
   offset loc_496F84, 0, <1>>; 3
		t_menu <offset aEditProperti_2, offset aEditProperties, 119h, \
   offset loc_497018, 0, <119h>>; 4
		t_menu <offset aEditProperti_2, offset aEditProperties, 11Ah, \
   offset loc_497018, 0, <11Ah>>; 5
		t_menu <offset aFollowInDisa_4, offset aFollowBreakp_1, 296h, \
   offset loc_4970F0, 0, <0>>; 6
		t_menu <offset aDisableAll, offset aDisableAllInt3, 298h, \
   offset loc_497130, 0, <0>>; 7
		t_menu <offset aEnableAll, offset aReEnableAllInt, 299h, \
   offset loc_497130, 0, <1>>; 8
		t_menu <offset aBpoint, offset aInt1+7, 0, 0, 0, <0>>; 9
		t_menu <offset asc_54D63A, offset aInt1+7, 0, 0, offset stru_518B94, <0>>; 10
aInt1:					; DATA XREF: .text:loc_496EC2o
		unicode	0, <INT1>,0
aHlt_0:					; DATA XREF: .text:loc_496EC9o
		unicode	0, <HLT>,0
aCli_0:					; DATA XREF: .text:loc_496ED0o
		unicode	0, <CLI>,0
aSti_0:					; DATA XREF: .text:loc_496ED7o
		unicode	0, <STI>,0
aInsb_0:				; DATA XREF: .text:loc_496EDEo
		unicode	0, <INSB>,0
aInsd:					; DATA XREF: .text:loc_496EE5o
		unicode	0, <INSD>,0
aOutsb_0:				; DATA XREF: .text:loc_496EECo
		unicode	0, <OUTSB>,0
aOutsd:					; DATA XREF: .text:loc_496EF3o
		unicode	0, <OUTSD>,0
aInt3_0:				; DATA XREF: .text:loc_496EFAo
		unicode	0, <INT3>,0
aCorruptBreakpo:			; DATA XREF: .text:0049734Do
		unicode	0, <Corrupt breakpoint>,0
aBreakpointSetA:			; DATA XREF: .text:00497341o
		unicode	0, <Breakpoint set at address !%08X is corrupt \{contains hex c>
		unicode	0, <ode !%02X instead of !%02X \{!%s\}. Probably the code is self->
		unicode	0, <modifiable, or breakpoint was set on data. Description of>
		unicode	0, < the breakpoint will be updated.>,0
aUnableToSetB_7:			; DATA XREF: .text:004974D2o
		unicode	0, <Unable to set breakpoint>,0
aUnableToSetB_0:			; DATA XREF: .text:004974C6o
		unicode	0, <Unable to set breakpoint at address !%08X.>,0
aUnableToSetB_1:			; DATA XREF: .text:0049750Do
		unicode	0, <Unable to set breakpoint at address !%08X. Memory is not r>
		unicode	0, <eadable.>,0
aUnableToSetB_2:			; DATA XREF: .text:0049756Bo
		unicode	0, <Unable to set breakpoint at address !%08X. Memory is not w>
		unicode	0, <riteable.>,0
aUnableToRemo_3:			; DATA XREF: .text:004975ECo
		unicode	0, <Unable to remove breakpoint>,0
aUnableToRemo_4:			; DATA XREF: .text:004975E0o
		unicode	0, <Unable to remove breakpoint at address !%08X.>,0
aUnableToRemo_0:			; DATA XREF: .text:00497645o
		unicode	0, <Unable to remove breakpoint at address !%08X. Memory is no>
		unicode	0, <t readable.>,0
aBreakpointSe_0:			; DATA XREF: .text:00497690o
		unicode	0, <Breakpoint set at address !%08X is corrupt \{contains hex c>
		unicode	0, <ode !%02X instead of !%02X \{!%s\}. Probably the code is self->
		unicode	0, <modifiable, or breakpoint was set on data.>,0
aUnableToRemo_1:			; DATA XREF: .text:004976DEo
		unicode	0, <Unable to remove breakpoint at address !%08X. Memory is no>
		unicode	0, <t writeable.>,0
aSuspiciousBrea:			; DATA XREF: .text:00497B13o
		unicode	0, <Suspicious breakpoint>,0
aYouAreGoingToS:			; DATA XREF: .text:00497B07o
		unicode	0, <You are going to set execution breakpoint at the location>
		unicode	0, < !%08X which is probably not the first byte of the command>
		unicode	0, <. This may disturb execution or even crash the debugged a>
		unicode	0, <pplication. Do you still want to set breakpoint!?>,0
aYouAreGoingT_0:			; DATA XREF: .text:00497B53o
		unicode	0, <You are going to set execution breakpoint at the location>
		unicode	0, < !%08X which is probably not the first byte of the command>
		unicode	0, <. Are you sure!?>,0
aSuspiciousBr_0:			; DATA XREF: .text:00497BF3o
		unicode	0, <Suspicious breakpoints>,0
aYouAreGoingT_7:			; DATA XREF: .text:00497BE7o
		unicode	0, <You are going to set execution breakpoints on several loc>
		unicode	0, <ations. At least one of them \{for example, !%08X\} is proba>
		unicode	0, <bly not the first byte of the command. This may disturb e>
		unicode	0, <xecution or even crash the debugged application. Do you s>
		unicode	0, <till want to set breakpoints!?>,0
asc_54D38E:				; DATA XREF: .data:stru_54C6E4o
		unicode	0, <\:>,0
aDelete_1:				; DATA XREF: .data:stru_54C6E4o
		unicode	0, <Delete>,0
aDeleteInt3Brea:			; DATA XREF: .data:stru_54C6E4o
		unicode	0, <Delete INT3 breakpoint>,0
aDisable:				; DATA XREF: .data:stru_54C6E4o
		unicode	0, <Disable>,0
aDisableBreak_2:			; DATA XREF: .data:stru_54C6E4o
		unicode	0, <Disable breakpoint but don>
		dw 27h
		unicode	0, <t remove it from the list>,0
aEnable:				; DATA XREF: .data:stru_54C6E4o
		unicode	0, <Enable>,0
aReEnableInt3Br:			; DATA XREF: .data:stru_54C6E4o
		unicode	0, <Re-enable INT3 breakpoint>,0
aEditProperti_2:			; DATA XREF: .data:stru_54C6E4o
		unicode	0, <Edit properties...>,0
aEditProperties:			; DATA XREF: .data:stru_54C6E4o
		unicode	0, <Edit properties associated with breakpoint>,0
aFollowInDisa_4:			; DATA XREF: .data:stru_54C6E4o
		unicode	0, <Follow in Disassembler>,0
aFollowBreakp_1:			; DATA XREF: .data:stru_54C6E4o
		unicode	0, <Follow breakpoint in CPU Disassembler>,0
aDisableAll:				; DATA XREF: .data:stru_54C6E4o
		unicode	0, <|Disable all>,0
aDisableAllInt3:			; DATA XREF: .data:stru_54C6E4o
		unicode	0, <Disable all INT3 breakpoints>,0
aEnableAll:				; DATA XREF: .data:stru_54C6E4o
		unicode	0, <Enable all>,0
aReEnableAllInt:			; DATA XREF: .data:stru_54C6E4o
		unicode	0, <Re-enable all INT3 breakpoints>,0
aBpoint:				; DATA XREF: .data:stru_54C6E4o
		unicode	0, <|*BPOINT>,0
asc_54D63A:				; DATA XREF: .data:stru_54C6E4o
		unicode	0, <|>,0
aDisabled_1:				; DATA XREF: .text:00498077o
		unicode	0, <Disabled>,0
aCond_0:				; DATA XREF: .text:004980A1o
		unicode	0, <Cond>,0
aActive_0:				; DATA XREF: .text:loc_4980C5o
		unicode	0, <Active>,0
aOneShot:				; DATA XREF: .text:004980EFo
		unicode	0, <One-shot>,0
aPluginPermanen:			; DATA XREF: .text:0049812Co
		unicode	0, <Plugin Permanent>,0
aTemporary:				; DATA XREF: .text:loc_498183o
		unicode	0, <Temporary>,0
aTrace:					; DATA XREF: .text:004981B1o
		unicode	0, <Trace>,0
aAddress_1:
		unicode	0, <Address>,0
aAddressOfInt3B:
		unicode	0, <Address of INT3 breakpoint>,0
aModule_2:
		unicode	0, <Module>,0
aNameOfTheModul:
		unicode	0, <Name of the module this breakpoint belongs to>,0
aStatus:
		unicode	0, <Status>,0
aStatusOfInt3Br:
		unicode	0, <Status of INT3 breakpoint>,0
aDisassembly:
		unicode	0, <Disassembly>,0
aDisassembled_0:
		unicode	0, <Disassembled command>,0
aComment:
		unicode	0, <Comment>,0
aIco_b_yellow:
		unicode	0, <ICO_B_YELLOW>,0
		db 0
		db    0
; wchar_t aRtl
aRtl:					; DATA XREF: .text:0049A77Co
		unicode	0, <Rtl>,0
; wchar_t aZw
aZw:					; DATA XREF: .text:0049A796o
		unicode	0, <Zw>,0
; wchar_t aNt_0
aNt_0:					; DATA XREF: .text:0049A7B0o
		unicode	0, <Nt>,0
; wchar_t a_hlp
a_hlp:					; DATA XREF: .text:loc_4997DAo
		unicode	0, <.hlp>,0
; const	WCHAR aHhctrl_ocx
aHhctrl_ocx:				; DATA XREF: .text:0049A948o
		unicode	0, <HHCTRL.OCX>,0
; CHAR aHtmlhelpw[]
aHtmlhelpw	db 'HtmlHelpW',0        ; DATA XREF: .text:0049A96Ao
; wchar_t aCommand_0
aCommand_0:				; DATA XREF: .text:0049877Ao
		unicode	0, <Command:  >,0
; wchar_t aHexDump
aHexDump:				; DATA XREF: .text:004987A0o
		unicode	0, <Hex dump: >,0
; wchar_t asc_54D886
asc_54D886:				; DATA XREF: .text:004987C6o
		dw 2 dup(0Ah), 0
; char aAl_1[]
aAl_1		db 'AL',0               ; DATA XREF: .text:0049954Bo
; char aAx[]
aAx		db 'AX',0               ; DATA XREF: .text:00499572o
; char off_54D892[]
off_54D892	dd offset scheme.bkcolor+1041h ; DATA XREF: .text:loc_499590o
; char a0xX[]
a0xX		db '0x!%X',0             ; DATA XREF: .text:00499627o
; char aIS_5[]
aIS_5		db '!%i!%s ',0            ; DATA XREF: .text:004997EAo
; char a0x02x_0[]
a0x02x_0	db '\{0x!%02X\}',0         ; DATA XREF: .text:0049980Bo
; char a0x04x[]
a0x04x		db '\{0x!%04X\}',0         ; DATA XREF: .text:00499831o
; char a0x08x[]
a0x08x		db '\{0x!%08X\}',0         ; DATA XREF: .text:00499851o
; char aI_Arguments[]
aI_Arguments	db '!%i. arguments',0    ; DATA XREF: .text:004998F0o
; char aI_BytesOfArgum[]
aI_BytesOfArgum	db '!%i. bytes of arguments',0 ; DATA XREF: .text:0049990Ao
; char aI_02i[]
aI_02i		db '!%i.!%02i',0          ; DATA XREF: .text:0049994Fo
; char aS_25[]
aS_25		db '!%S',0               ; DATA XREF: .text:00499991o
a20002013_0:				; DATA XREF: .text:0049998Co
		unicode	0, <2000-2013>,0
aOlehYuschuk_0:				; DATA XREF: .text:004999D2o
		unicode	0, <Oleh Yuschuk>,0
; char aContentsOf[]
aContentsOf	db 'contents of ',0     ; DATA XREF: .text:00499A4Co
; char a8BitRegister[]
a8BitRegister	db '8-bit register ',0  ; DATA XREF: .text:00499A96o
; char a16BitRegister[]
a16BitRegister	db '16-bit register ',0 ; DATA XREF: .text:00499AC8o
; char a32BitRegister[]
a32BitRegister	db '32-bit register ',0 ; DATA XREF: .text:loc_499AF0o
; char aSegmentRegiste[]
aSegmentRegiste	db 'segment register ',0 ; DATA XREF: .text:00499B21o
; char a80BitFloatingP[]
a80BitFloatingP	db '80-bit floating-point register ',0 ; DATA XREF: .text:00499B52o
; char aMmxRegister[]
aMmxRegister	db 'MMX register ',0    ; DATA XREF: .text:00499B83o
; char a3dnowRegister[]
a3dnowRegister	db '3DNow! register ',0 ; DATA XREF: .text:00499BB4o
; char aSseRegister[]
aSseRegister	db 'SSE register ',0    ; DATA XREF: .text:00499BE5o
; char aControlRegiste[]
aControlRegiste	db 'control register ',0 ; DATA XREF: .text:00499C16o
; char aDebuggingRegis[]
aDebuggingRegis	db 'debugging register ',0 ; DATA XREF: .text:00499C47o
; char aMemory[]
aMemory		db 'memory ',0          ; DATA XREF: .text:00499C8Fo
; char a8BitMemory[]
a8BitMemory	db '8-bit memory ',0    ; DATA XREF: .text:00499CC1o
; char a16BitMemory[]
a16BitMemory	db '16-bit memory ',0   ; DATA XREF: .text:00499CF3o
; char a32BitMemory[]
a32BitMemory	db '32-bit memory ',0   ; DATA XREF: .text:00499D25o
; char a64BitMemory[]
a64BitMemory	db '64-bit memory ',0   ; DATA XREF: .text:00499D57o
; char a80BitMemory[]
a80BitMemory	db '80-bit memory ',0   ; DATA XREF: .text:00499D89o
; char a128BitMemory[]
a128BitMemory	db '128-bit memory ',0  ; DATA XREF: .text:00499DB8o
; char aAtLocation[]
aAtLocation	db 'at location ',0     ; DATA XREF: .text:loc_499E00o
; char aImmediateConst[]
aImmediateConst	db 'immediate constant ',0 ; DATA XREF: .text:00499E42o
; char aDataReadFromTh[]
aDataReadFromTh	db 'data read from the ',0 ; DATA XREF: .text:00499E7Fo
; char aIOPort[]
aIOPort		db 'I/O port ',0        ; DATA XREF: .text:loc_499E9Bo
; char asc_54DA7F[]
asc_54DA7F	db '+',0                ; DATA XREF: .text:00499F39o
; char asc_54DA81[]
asc_54DA81	db '!%',0                ; DATA XREF: .text:00499F65o
; char aI_18[]
aI_18		db '*!%i',0              ; DATA XREF: .text:00499FD4o
; char aByte[]
aByte		db 'byte',0             ; DATA XREF: .text:0049A189o
; char aWord[]
aWord		db 'word',0             ; DATA XREF: .text:0049A1B4o
; char aDoubleword[]
aDoubleword	db 'doubleword',0       ; DATA XREF: .text:0049A1DCo
; char aQuadword[]
aQuadword	db 'quadword',0         ; DATA XREF: .text:0049A204o
; char aIByteOperand[]
aIByteOperand	db '!%i-byte operand',0  ; DATA XREF: .text:0049A230o
		db 0
aCommandHelp:				; DATA XREF: .text:0049A55Bo
		unicode	0, <Command help>,0
aHelp:					; DATA XREF: .text:0049A582o
		unicode	0, <Help>,0
; wchar_t aHelp_0
aHelp_0:				; DATA XREF: .text:0049AD43o
		unicode	0, <HELP >,0
; wchar_t aLock_3
aLock_3:				; DATA XREF: .text:0049AD65o
		unicode	0, <LOCK >,0
; wchar_t aBht_2
aBht_2:					; DATA XREF: .text:0049AD8Bo
		unicode	0, <BHT >,0
; wchar_t aBhnt_2
aBhnt_2:				; DATA XREF: .text:0049ADB1o
		unicode	0, <BHNT >,0
; wchar_t aRep_2
aRep_2:					; DATA XREF: .text:0049ADF2o
		unicode	0, <REP >,0
; wchar_t aRepe_0
aRepe_0:				; DATA XREF: .text:0049AE1Bo
		unicode	0, <REPE >,0
; wchar_t aRepne_2
aRepne_2:				; DATA XREF: .text:0049AE44o
		unicode	0, <REPNE >,0
; wchar_t a_02x
a_02x:					; DATA XREF: .text:0049AEF1o
		unicode	0, <_!%02X>,0
; const	WCHAR aIco_h
aIco_h:					; DATA XREF: .text:0049AF99o
		unicode	0, <ICO_H>,0
aHelpOnCommand:				; DATA XREF: .text:0049AFE0o
		unicode	0, <Help on command>,0
; wchar_t a__15
a__15:					; DATA XREF: .text:0049B0F5o
		unicode	0, <_>,0
aHelpOnItem:				; DATA XREF: .text:0049B1B5o
		unicode	0, <Help on item>,0
aLicense_0:				; DATA XREF: .text:0049B23Co
		unicode	0, <LICENSE>,0
aAgreement:				; DATA XREF: .text:0049B237o
		unicode	0, <AGREEMENT>,0
		db 0
		db    0
aExpressionIsTo:			; DATA XREF: .text:0049B294o
		unicode	0, <Expression is too complex>,0
aClosingParenth:			; DATA XREF: .text:loc_49B482o
		unicode	0, <Closing parenthesis expected>,0
aUnaryPlusIsNot:			; DATA XREF: .text:loc_49B510o
		unicode	0, <Unary plus is not defined for strings>,0
aNegationIsNotD:			; DATA XREF: .text:loc_49B5BCo
		unicode	0, <Negation is not defined for strings>,0
aLogicalNegatio:			; DATA XREF: .text:loc_49B658o
		unicode	0, <Logical negation is not defined for strings>,0
aBitwiseInver_0:			; DATA XREF: .text:0049B6F0o
		unicode	0, <Bitwise inversion is not defined for floats>,0
aBitwiseInversi:			; DATA XREF: .text:loc_49B71Co
		unicode	0, <Bitwise inversion is not defined for strings>,0
; wchar_t aA_0
aA_0:					; DATA XREF: .text:0049B780o
		unicode	0, <A>,0
; wchar_t aB
aB:					; DATA XREF: .text:0049B7C4o
		unicode	0, <B>,0
; wchar_t aThr
aThr:					; DATA XREF: .text:0049B808o
		unicode	0, <THR>,0
; wchar_t aThread_0
aThread_0:				; DATA XREF: .text:0049B81Eo
		unicode	0, <THREAD>,0
; wchar_t aOrd_0
aOrd_0:					; DATA XREF: .text:0049B862o
		unicode	0, <ORD>,0
; wchar_t aOrdinal_0
aOrdinal_0:				; DATA XREF: .text:0049B878o
		unicode	0, <ORDINAL>,0
aSyntaxError_0:				; DATA XREF: .text:loc_49B8B3o
		unicode	0, <Syntax error>,0
; wchar_t aSt_1
aSt_1:					; DATA XREF: .text:0049BA01o
		unicode	0, <ST>,0
aExpectingIndex:			; DATA XREF: .text:0049BA4Eo
		unicode	0, <Expecting index of FPU register>,0
aFpuRegisterIsO:			; DATA XREF: .text:0049BA85o
		unicode	0, <FPU register is out of range 0..7>,0
aExpectingRight:			; DATA XREF: .text:loc_49BAD7o
		unicode	0, <Expecting right parenthesis>,0
; wchar_t aEip
aEip:					; DATA XREF: .text:0049BB3Bo
		unicode	0, <EIP>,0
; wchar_t aEfl_0
aEfl_0:					; DATA XREF: .text:0049BB8Co
		unicode	0, <EFL>,0
; wchar_t aFlags_0
aFlags_0:				; DATA XREF: .text:0049BBA2o
		unicode	0, <FLAGS>,0
; wchar_t aFst_0
aFst_0:					; DATA XREF: .text:0049BBDDo
		unicode	0, <FST>,0
; wchar_t aFcw_0
aFcw_0:					; DATA XREF: .text:0049BC18o
		unicode	0, <FCW>,0
; wchar_t aMxcsr_0
aMxcsr_0:				; DATA XREF: .text:0049BC53o
		unicode	0, <MXCSR>,0
; wchar_t a__0
a__0:					; DATA XREF: .text:0049BD60o
		unicode	0, <.>,0
aUnrecognizedId:			; DATA XREF: .text:loc_49BDF1o
		unicode	0, <Unrecognized identifier>,0
aUnexpectedEndO:			; DATA XREF: .text:loc_49BF22o
		unicode	0, <Unexpected end of line>,0
aRepeatCountIsN:			; DATA XREF: .text:loc_49C070o
		unicode	0, <Repeat count is not allowed here>,0
aConstantRepeat:			; DATA XREF: .text:0049C0A7o
		unicode	0, <Constant repeat count expected>,0
aDuplicatedRepe:			; DATA XREF: .text:0049C0DCo
		unicode	0, <Duplicated repeat count>,0
aRepeatCountO_1:			; DATA XREF: .text:0049C11Ao
		unicode	0, <Repeat count outside of range 1..!%i>,0
; wchar_t aSigned
aSigned:				; DATA XREF: .text:0049C165o
		unicode	0, <SIGNED>,0
; wchar_t aUnsigned_0
aUnsigned_0:				; DATA XREF: .text:loc_49C1A4o
		unicode	0, <UNSIGNED>,0
; wchar_t aByte_3
aByte_3:				; DATA XREF: .text:loc_49C1E3o
		unicode	0, <BYTE>,0
; wchar_t aChar_1
aChar_1:				; DATA XREF: .text:loc_49C216o
		unicode	0, <CHAR>,0
; wchar_t aWord_5
aWord_5:				; DATA XREF: .text:loc_49C249o
		unicode	0, <WORD>,0
; wchar_t aShort_0
aShort_0:				; DATA XREF: .text:loc_49C27Co
		unicode	0, <SHORT>,0
; wchar_t aDword_1
aDword_1:				; DATA XREF: .text:loc_49C2AFo
		unicode	0, <DWORD>,0
; wchar_t aInt_1
aInt_1:					; DATA XREF: .text:loc_49C2E2o
		unicode	0, <INT>,0
; wchar_t aFloat_6
aFloat_6:				; DATA XREF: .text:loc_49C315o
		unicode	0, <FLOAT>,0
; wchar_t aDouble_4
aDouble_4:				; DATA XREF: .text:loc_49C348o
		unicode	0, <DOUBLE>,0
; wchar_t aLong
aLong:					; DATA XREF: .text:loc_49C37Bo
		unicode	0, <LONG>,0
; wchar_t aAscii_3
aAscii_3:				; DATA XREF: .text:loc_49C3DAo
		unicode	0, <ASCII>,0
; wchar_t aString
aString:				; DATA XREF: .text:loc_49C40Ao
		unicode	0, <STRING>,0
; wchar_t aUnicode_1
aUnicode_1:				; DATA XREF: .text:loc_49C43Ao
		unicode	0, <UNICODE>,0
aDuplicatedSele:			; DATA XREF: .text:0049C4B2o
		unicode	0, <Duplicated selector>,0
aInvalidTypeOfS:			; DATA XREF: .text:0049C4EAo
		unicode	0, <Invalid type of selector>,0
aInvalidTypeOfM:			; DATA XREF: .text:0049C75Eo
		unicode	0, <Invalid type of memory address>,0
aClosingBracket:			; DATA XREF: .text:loc_49C79Co
		unicode	0, <Closing bracket expected>,0
aInternalErro_3:			; DATA XREF: .text:loc_49C895o
		unicode	0, <Internal error>,0
aRepeatCountIsA:			; DATA XREF: .text:0049C96Eo
		unicode	0, <Repeat count is allowed only in pure memory references>,0
aInvalidFloat_1:			; DATA XREF: .text:loc_49CD84o
		unicode	0, <Invalid floating-point operation >,0
aInvalidOperati:			; DATA XREF: .text:loc_49CF6Do
		unicode	0, <Invalid operation >,0
aNoExpression:				; DATA XREF: .text:loc_49D295o
		unicode	0, <No expression>,0
aTooManyExpress:			; DATA XREF: .text:loc_49D675o
		unicode	0, <Too many expressions>,0
aExtraCharact_2:			; DATA XREF: .text:0049D6F4o
		unicode	0, <Extra characters on line>,0
aUnableToGetThr:			; DATA XREF: .text:0049DB41o
		unicode	0, <Unable to get thread ordinal>,0
aRegistersAreNo:			; DATA XREF: .text:0049DB86o
		unicode	0, <Registers are not accessible>,0
aSseRegistersAr:			; DATA XREF: .text:0049DF0Eo
		unicode	0, <SSE registers are not accessible>,0
aExpressionInde:			; DATA XREF: .text:loc_49E00Co
		unicode	0, <Expression index out of limits>,0
aUnableToGetCon:			; DATA XREF: .text:0049E2E2o
		unicode	0, <Unable to get contents of memory>,0
aUnableToGetBas:			; DATA XREF: .text:loc_49E414o
		unicode	0, <Unable to get base of selector>,0
aDivisionBy0_0:				; DATA XREF: .text:0049E9C6o
		unicode	0, <Division by 0.0>,0
aDivisionBy0:				; DATA XREF: .text:0049EB8Bo
		unicode	0, <Division by 0>,0
aErrorInPrecomp:			; DATA XREF: .text:loc_49EFBAo
		unicode	0, <Error in precompiled expression>,0
; wchar_t asc_54E52C
asc_54E52C:				; DATA XREF: .text:0049F06Eo
		unicode	0, <, >,0
aInvalidExpre_0:			; DATA XREF: .text:loc_49F0CEo
		unicode	0, <Invalid expression>,0
; wchar_t aU_
aU_:					; DATA XREF: .text:0049F20Eo
		unicode	0, < \{!%u.\}>,0
; wchar_t aLi__2
aLi__2:					; DATA XREF: .text:0049F293o
		unicode	0, < \{!%li.\}>,0
; wchar_t asc_54E576
asc_54E576:				; DATA XREF: .text:0049F351o
		unicode	0, < \{>,0
; wchar_t a____4
;a!?!?!?_4:					; DATA XREF: .text:loc_49F3CEo
		unicode	0, <!?!?!?>,0
aMultipleExpres:			; DATA XREF: .text:0049F669o
		unicode	0, <Multiple expressions are not allowed>,0
		db 0
		db    0
			
		
_data		ends
		