IFNDEF CMDBAR_INC
CMDBAR_INC EQU <1>

TEXTLEN		EQU 256			;for olly
SHORTNAME	EQU 32


REPORT		EQU 0
SILENT		EQU 1
ZEROINIT	EQU 2

t_strdec        struc ; 
    _size            dd ?
	_addr            dd ?
	_value           dd ?
	_valuevalid      db ?
	_dec             db ?
	_decsize         db ?
	_reserved        db ?
	_prtype          dw SHORTNAME dup(?)
	_name            dw TEXTLEN dup(?)
	_text            dw TEXTLEN dup(?)
t_strdec        ends

  DEC_TYPEMASK   EQU 1Fh;            // Type of analyzed byte
    DEC_UNKNOWN  EQU 00h;            // Not analyzed, treat as command
    DEC_NEXTCODE EQU 01h;            // Next byte of command
    DEC_NEXTDATA EQU 02h;            // Next byte of data
    DEC_FILLDATA EQU 03h;            // Not recognized, treat as byte data
    DEC_INT      EQU 04h;            // First byte of integer
    DEC_SWITCH   EQU 05h;            // First byte of switch item or count
    DEC_DATA     EQU 06h;            // First byte of integer data
    DEC_DB       EQU 07h;            // First byte of byte string
    DEC_DUMP     EQU 08h;            // First byte of byte string with dump
    DEC_ASCII    EQU 09h;            // First byte of ASCII string
    DEC_ASCCNT   EQU 0Ah;            // Next chunk of ASCII string
    DEC_UNICODE  EQU 0Bh;            // First byte of UNICODE string
    DEC_UNICNT   EQU 0Ch;            // Next chunk of UNICODE string
    DEC_FLOAT    EQU 0Dh;            // First byte of floating number
    DEC_GUID     EQU 10h;            // First byte of GUID
    DEC_NETCMD   EQU 18h;            // First byte of .NET (CIL) command
    DEC_JMPNET   EQU 19h;            // First byte of .NET at jump destination
    DEC_CALLNET  EQU 1Ah;            // First byte of .NET at call destination
    DEC_COMMAND  EQU 1Ch;            // First byte of ordinary command
    DEC_JMPDEST  EQU 1Dh;            // First byte of cmd at jump destination
    DEC_CALLDEST EQU 1Eh;            // First byte of cmd at call destination
    DEC_FILLING  EQU 1Fh;            // Command used to fill gaps
  DEC_PROCMASK   EQU 60h;            // Procedure analysis
    DEC_NOPROC   EQU 00h;            // Outside the procedure
    DEC_PROC     EQU 20h;            // Start of procedure
    DEC_PEND     EQU 40h;            // End of procedure
    DEC_PBODY    EQU 60h;            // Body of procedure
  DEC_TRACED     EQU 80h;            // Hit when traced


MENU_VERIFY    EQU 0               ; Check if menu item applies
MENU_EXECUTE   EQU 1               ; Execute menu item
; Values returned by menu functions on MENU_VERIFY.
MENU_ABSENT    EQU 0               ; Item doesn't appear in menu
MENU_NORMAL    EQU 1               ; Ordinary menu item
MENU_CHECKED   EQU 2               ; Checked menu item
MENU_CHKPARENT EQU 3               ; Checked menu item + checked parent
MENU_GRAYED    EQU 4               ; Inactive menu item
MENU_SHORTCUT  EQU 5               ; Shortcut only, not in menu
; Values returned by menu functions on MENU_EXECUTE.
MENU_NOREDRAW  EQU 0               ; Do not redraw owning window
MENU_REDRAW    EQU 1               ; Redraw owning window

; Native OllyDbg tables that support embedded plugin menus:
PWM_ATTACH     EQU $CTW0("ATTACH")       ; List of processes in Attach window
PWM_BPHARD     EQU $CTW0("BPHARD")       ; Hardware breakpoints
PWM_BPMEM      EQU $CTW0("BPMEM")        ; Memory breakpoints
PWM_BPOINT     EQU $CTW0("BPOINT")       ; INT3 breakpoints
PWM_DISASM     EQU $CTW0("DISASM")       ; CPU Disassembler pane
PWM_DUMP       EQU $CTW0("DUMP")         ; All dumps except CPU disasm & stack
PWM_INFO       EQU $CTW0("INFO")         ; CPU Info pane
PWM_LOG        EQU $CTW0("LOG")          ; Log windo
PWM_MAIN       EQU $CTW0("MAIN")         ; Main OllyDbg menu
PWM_MEMORY     EQU $CTW0("MEMORY")       ; Memory window
PWM_MODULES    EQU $CTW0("MODULES")      ; Modules window
PWM_NAMELIST   EQU $CTW0("NAMELIST")     ; List of names (labels)
PWM_PATCHES    EQU $CTW0("PATCHES")      ; List of patches
PWM_PROFILE    EQU $CTW0("PROFILE")      ; Profile window
PWM_REGISTERS  EQU $CTW0("REGISTERS")    ; Registers, including CPU
PWM_SEARCH     EQU $CTW0("SEARCH")       ; Search tabs
PWM_SOURCE     EQU $CTW0("SOURCE")       ; Source code window
PWM_SRCLIST    EQU $CTW0("SRCLIST")      ; List of source files
PWM_STACK      EQU $CTW0("STACK")        ; CPU Stack pane
PWM_THREADS    EQU $CTW0("THREADS")      ; Threads window
PWM_TRACE      EQU $CTW0("TRACE")        ; Run trace window
PWM_WATCH      EQU $CTW0("WATCH")        ; Watches
PWM_WINDOWS    EQU $CTW0("WINDOWS")      ; List of windows


t_menu struc
	_name		dd ?
	help		dd ?
	shortcutid	dd ?
	menufunc	dd ?
	submenu		dd ?
	union t
		index	 dd ?
		hsubmenu dd ?
	ends
t_menu ends

; Constants used for scrolling and selection.
MOVETOP        EQU 08000h          ; Move selection to top of table
MOVEBOTTOM     EQU 07FFFh          ; Move selection to bottom of table

DF_CACHESIZE   EQU -4            ; Request for draw cache size
DF_FILLCACHE   EQU -3            ; Request to fill draw cache
DF_FREECACHE   EQU -2            ; Request to free cached resources
DF_NEWROW      EQU -1            ; Request to start new row in window

; Reasons why t_table.tableselfunc() was called.
TSC_KEY        EQU 1               ; Keyboard key pressed
TSC_MOUSE      EQU 2               ; Selection changed by mouse
TSC_CALL       EQU 3               ; Call to selection move function

; Types of dump menu in t_dump.menutype.
DMT_FIXTYPE    	EQU 00000001h      ; Fixed dump type, no change
DMT_STRUCT     	EQU 00000002h      ; Dump of the structure
DMT_CPUMASK    	EQU 00070000h      ; Dump belongs to CPU window
DMT_CPUDASM  	EQU 00010000h      ; This is CPU Disassembler pane
DMT_CPUDUMP  	EQU 00020000h      ; This is CPU Dump pane
DMT_CPUSTACK 	EQU 00040000h      ; This is CPU Stack pane

t_sorted        struc ;
	n               dd ?
	nmax            dd ?
	itemsize        dd ?
	mode            dd ?
	data            dd ?                    
	block           dd ?                    
	nblock          dd ?
	version         dd ?
	dataptr         dd ?                    
	selected        dd ?
	seladdr         dd ?
	selsubaddr      dd ?
	sortfunc        dd ?                    
	destfunc        dd ?                    
	sort            dd ?
	sorted          dd ?
	sortindex       dd ?                    
t_sorted        ends
t_bar           struc ; 
	nbar            dd ?
	visible         dd ?
	_name            dd 17 dup(?)            
	_expl            dd 17 dup(?)            
	_mode            dd 17 dup(?)
	_defdx           dd 17 dup(?)
	_dx             dd 17 dup(?)
	captured        dd ?
	active          dd ?
	scrollvx        dd ?
	scrollvy        dd ?
	prevx           dd ?
	prevy           dd ?
t_bar           ends
t_table         struc ; 
	_name            dw 32 dup(<>)
	mode            dd ?
	sorted          t_sorted <>
	subtype         dd ?
	bar             t_bar 	 <>
	bottomspace     dd ?
	minwidth        dd ?
	tabfunc         dd ?                    
	updatefunc      dd ?                    
	drawfunc        dd ?                    
	tableselfunc    dd ?                    
	menu            dd ?                    
	custommode      dd ?
	customdata      dd ?                    
	hparent         dd ?                    
	hstatus         dd ?                    
	hw              dd ?                    
	htooltip        dd ?                    
	font            dd ?
	scheme          dd ?
	hilite          dd ?
	hscroll         dd ?
	xshift          dd ?
	_offset          dd ?
	colsel          dd ?
	version         dd ?
	timerdraw       dd ?
	rcprev          RECT <>
	rtback          dd ?
t_table         ends
t_dump          struc ;
	base            dd ?
	_size            dd ?
	dumptype        dd ?
	menutype        dd ?
	itemwidth       dd ?
	threadid        dd ?
	table           t_table <>
	_addr           dd ?
	sel0            dd ?
	sel1            dd ?
	selstart        dd ?
	selend          dd ?
	filecopy        dd ?                    ; 
	path            dw 260 dup(?)
	backup          dd ?                    ; 
	strname         dw 32 dup(?)
	decode          dd ?                    ; 
	bkpath          dw 260 dup(?)
	relreg          dd ?
	reladdr         dd ?
	hilitereg       dd ?
	hiregindex      dd ?
	graylimit       dd ?
	dumpselfunc     dd ?                    ; 
t_dump          ends

PROTO@8 typedef proto :DWORD,:DWORD
PPROTO@8 typedef ptr PROTO@8
PROTO@12 typedef proto :DWORD,:DWORD,:DWORD
PPROTO@12 typedef ptr PROTO@12

t_command       struc                                  
	cmd             dd ?                     
	args            dd ?                     	                                      
	parm            dd ?                     
	func            PPROTO@8 0                   
	help            dd ?                     
t_command       ends



;Mode bits for Setcpu().
CPU_ASMHIST    EQU 00000001h;      // Add change to Disassembler history
CPU_ASMCENTER  EQU 00000004h;      // Make address in the middle of window
CPU_ASMFOCUS   EQU 00000008h;      // Move focus to Disassembler
CPU_DUMPHIST   EQU 00000010h;      // Add change to Dump history
CPU_DUMPFIRST  EQU 00000020h;      // Make address the first byte in Dump
CPU_DUMPFOCUS  EQU 00000080h;      // Move focus to Dump
CPU_STACKFOCUS EQU 00000100h;      // Move focus to Stack
CPU_STACKCTR   EQU 00000200h;      // Center stack instead moving to top
CPU_REGAUTO    EQU 00001000h;      // Automatically switch to FPU/MMX/3DNow!
CPU_NOCREATE   EQU 00002000h;      // Don't create CPU window if absent
CPU_REDRAW     EQU 00004000h;      // Redraw CPU window immediately
CPU_NOFOCUS    EQU 00008000h;      // Don't assign focus to main window
CPU_RUNTRACE   EQU 00010000h;      // asmaddr is run trace backstep
CPU_NOTRACE    EQU 00020000h;      // Stop run trace display

; Mode of expression evaluation.
EMOD_CHKEXTRA  EQU 00000001h;      // Report extra characters on line
EMOD_NOVALUE   EQU 00000002h;      // Don't convert data to text
EMOD_NOMEMORY  EQU 00000004h;      // Don't read debuggee's memory
EMOD_MULTI     EQU 00000008h;      // Allow multiple expressions

EXPR_TYPEMASK  EQU 0Fh;            // Mask to extract type of expression
EXPR_INVALID EQU 00h;            // Invalid or undefined expression
EXPR_BYTE    EQU 01h;            // 8-bit integer byte
EXPR_WORD    EQU 02h;            // 16-bit integer word
EXPR_DWORD   EQU 03h;            // 32-bit integer doubleword
EXPR_FLOAT4  EQU 04h;            // 32-bit floating-point number
EXPR_FLOAT8  EQU 05h;            // 64-bit floating-point number
EXPR_FLOAT10 EQU 06h;            // 80-bit floating-point number
EXPR_SEG     EQU 07h;            // Segment
EXPR_ASCII   EQU 08h;            // Pointer to ASCII string
EXPR_UNICODE EQU 09h;            // Pointer to UNICODE string

EXPR_TEXT    EQU 0Ah;            // Immediate UNICODE string
EXPR_REG       EQU 10h;            // Origin is register
EXPR_SIGNED    EQU 20h;            // Signed integer

EXPR_SIGDWORD  EQU EXPR_DWORD or EXPR_SIGNED
EXPR_INTMASK	EQU EXPR_BYTE or EXPR_WORD or EXPR_DWORD

;
;  Analysis data. Note that DEC_PBODY==DEC_PROC|DEC_PEND; this allows for
;  automatical merging of overlapping procedures. Also note that DEC_NET is
;  followed, if necessary, by a sequence of DEC_NEXTDATA and not DEC_NEXTCODE!
  DEC_TYPEMASK   EQU 1Fh;            // Type of analyzed byte
    DEC_UNKNOWN  EQU 00h;            // Not analyzed, treat as command
    DEC_NEXTCODE EQU 01h;            // Next byte of command
    DEC_NEXTDATA EQU 02h;            // Next byte of data
    DEC_FILLDATA EQU 03h;            // Not recognized, treat as byte data
    DEC_INT      EQU 04h;            // First byte of integer
    DEC_SWITCH   EQU 05h;            // First byte of switch item or count
    DEC_DATA     EQU 06h;            // First byte of integer data
    DEC_DB       EQU 07h;            // First byte of byte string
    DEC_DUMP     EQU 08h;            // First byte of byte string with dump
    DEC_ASCII    EQU 09h;            // First byte of ASCII string
    DEC_ASCCNT   EQU 0Ah;            // Next chunk of ASCII string
    DEC_UNICODE  EQU 0Bh;            // First byte of UNICODE string
    DEC_UNICNT   EQU 0Ch;            // Next chunk of UNICODE string
    DEC_FLOAT    EQU 0Dh;            // First byte of floating number
    DEC_GUID     EQU 10h;            // First byte of GUID
    DEC_NETCMD   EQU 18h;            // First byte of .NET (CIL) command
    DEC_JMPNET   EQU 19h;            // First byte of .NET at jump destination
    DEC_CALLNET  EQU 1Ah;            // First byte of .NET at call destination
    DEC_COMMAND  EQU 1Ch;            // First byte of ordinary command
    DEC_JMPDEST  EQU 1Dh;            // First byte of cmd at jump destination
    DEC_CALLDEST EQU 1Eh;            // First byte of cmd at call destination
    DEC_FILLING  EQU 1Fh;            // Command used to fill gaps
  DEC_PROCMASK   EQU 60h;            // Procedure analysis
    DEC_NOPROC   EQU 00h;            // Outside the procedure
    DEC_PROC     EQU 20h;            // Start of procedure
    DEC_PEND     EQU 40h;            // End of procedure
    DEC_PBODY    EQU 60h;            // Body of procedure
  DEC_TRACED     EQU 80h;            // Hit when traced

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

 
  ;THREADS AND REGISTERS /////////////////////////////

  NREG           EQU 8    ;           // Number of registers (of any type)
  NSEG           EQU 6     ;          // Number of valid segment registers
  NHARD          EQU 4     ;          // Number of hardware breakpoints

  ;Event ignoring list.
  IGNO_INT3      EQU 00000001h;      // Ignore INT3 breakpoint
  IGNO_ACCESS    EQU 00000002h;      // Ignore memory access violation
  IGNO_HW        EQU 00000004h;      // Ignore hardware breakpoint

  ;Register displaying mode.
  RDM_MODE       EQU 0000000Fh;      // Mask to extract display mode
    RDM_FPU      EQU 00000000h;      // Decode FPU registers as floats
    RDM_MMX      EQU 00000001h;      // Decode FPU registers as MMX
    RDM_3DN      EQU 00000002h;      // Decode FPU registers as 3DNow!
    RDM_DBG      EQU 00000003h;      // Decode debug registers instead of FPU
  RDM_SSEMODE    EQU 000000F0h;      // Mask to extract SSE decoding mode
    RDM_SSEI32   EQU 00000000h;      // Decode SSE as 4x32-bit hex numbers
    RDM_SSEF32   EQU 00000010h;      // Decode SSE as 4x32-bit floats
    RDM_SSEF64   EQU 00000020h;      // Decode SSE as 2x64-bit floats

  ;Status of registers.
  RV_MODIFIED    EQU 00000001h;      // Update CONTEXT before run
  RV_USERMOD     EQU 00000002h;      // Registers modified by user
  RV_SSEVALID    EQU 00000004h;      // Whether SSE registers are valid
  RV_SSEMOD      EQU 00000008h;      // Update SSE registers before run
  RV_ERRVALID    EQU 00000010h;      // Whether last thread error is valid
  RV_ERRMOD      EQU 00000020h;      // Update last thread error before run
  RV_MEMVALID    EQU 00000040h;      // Whether memory fields are valid
  RV_DBGMOD      EQU 00000080h;      // Update debugging registers before run

  ;CPU flags.
  FLAG_C         EQU 00000001h;      // Carry flag
  FLAG_P         EQU 00000004h;      // Parity flag
  FLAG_A         EQU 00000010h;      // Auxiliary carry flag
  FLAG_Z         EQU 00000040h;      // Zero flag
  FLAG_S         EQU 00000080h;      // Sign flag
  FLAG_T         EQU 00000100h;      // Single-step trap flag
  FLAG_D         EQU 00000400h;      // Direction flag
  FLAG_O         EQU 00000800h;      // Overflow flag

  ;Attention, number of memory fields is limited by the run trace!
  NMEMFIELD      EQU 2               ;// Number of memory fields in t_reg

t_memfield      struc ;
	_addr            dd ?
	_size            dd ?
	_data            db 16 dup(?)
t_memfield      ends


t_reg           struc ;									 
	status          dd ?
	threadid        dd ?
	_ip             dd ?
	r               dd 8 dup(?)
	flags           dd ?
	s               dd 6 dup(?)
	base            dd 6 dup(?)
	limit           dd 6 dup(?)
	big             db 6 dup(?)
	dummy           db 2 dup(?)
	top             dd ?
	f               tbyte 8 dup(?)
	tag             db 8 dup(?)
	_fst             dd ?
	fcw             dd ?
	ferrseg         dd ?
	feroffs         dd ?
	dr              dd 8 dup(?)
	lasterror       dd ?
	ssereg          db 128 dup(?)
	_mxcsr          dd ?
	_mem             t_memfield 2 dup(<>)
t_reg           ends

; ---------------------------------------------------------------------------
IFNDEF _FLOATING_SAVE_AREA
_FLOATING_SAVE_AREA struc ; 									 
	ControlWord     dd ?
	StatusWord      dd ?
	TagWord         dd ?
	ErrorOffset     dd ?
	ErrorSelector   dd ?
	DataOffset      dd ?
	DataSelector    dd ?
	RegisterArea    db 80 dup(?)
	Cr0NpxState     dd ?
_FLOATING_SAVE_AREA ends
ENDIF
; ---------------------------------------------------------------------------
IFNDEF _CONTEXT 
_CONTEXT         struc ; 
	ContextFlags    dd ?
	_Dr0             dd ?
	_Dr1             dd ?
	_Dr2             dd ?
	_Dr3             dd ?
	_Dr6             dd ?
	_Dr7             dd ?
	FloatSave       _FLOATING_SAVE_AREA <>
	SegGs           dd ?
	SegFs           dd ?
	SegEs           dd ?
	SegDs           dd ?
	_Edi            dd ?
	_Esi            dd ?
	_Ebx            dd ?
	_Edx            dd ?
	_Ecx            dd ?
	_Eax            dd ?
	_Ebp            dd ?
	_Eip            dd ?
	SegCs           dd ?
	_EFlags          dd ?
	_Esp            dd ?
	SegSs           dd ?
	ExtendedRegisters db 512 dup(?)
_CONTEXT         ends
ENDIF

t_thread        struc ; 
	threadid        dd ?
	dummy           dd ?
	_type            dd ?
	ordinal         dd ?
	_name            dw 32 dup(?)
	thread          dd ?                    ; offset
	tib             dd ?
	entry           dd ?
	context         _CONTEXT <>
	reg             t_reg 	<>
	regvalid        dd ?
	oldreg          t_reg 	<>
	oldregvalid     dd ?
	suspendrun      dd ?
	suspendcount    dd ?
	suspenduser     dd ?
	trapset         dd ?
	trapincontext   dd ?
	rtprotocoladdr  dd ?
	ignoreonce      dd ?
	drvalid         dd ?
	_dr              dd 8 dup(?)
	hwmasked        dd ?
	hwreported      dd ?
	hw              dd ?                    ; offset
	usertime        dd ?
	systime         dd ?
	stacktop        dd ?
	stackbottom     dd ?
t_thread        ends

; ---------------------------------------------------------------------------


;////////////////////////////////////////////////////////////////////////////////
;///////////////////////////////////// DUMP /////////////////////////////////////

 DU_STACK       EQU 80000000h;      // Used for internal purposes
 DU_NOSMALL     EQU 40000000h;      // Used for internal purposes
 DU_MODEMASK    EQU 3C000000h;      // Mask for mode bits
   DU_SMALL     EQU 20000000h;      // Small-size dump
   DU_FIXADDR   EQU 10000000h;      // Fix first visible address
   DU_BACKUP    EQU 08000000h;      // Display backup instead of actual data
   DU_USEDEC    EQU 04000000h;      // Show contents using decoding data
 DU_COMMMASK    EQU 03000000h;      // Mask for disassembly comments
   DU_COMMENT   EQU 00000000h;      // Show comments
   DU_SOURCE    EQU 01000000h;      // Show source
 DU_DISCARD     EQU 00800000h;      // Discardable by Esc
 DU_PROFILE     EQU 00400000h;      // Show profile
 DU_TYPEMASK    EQU 003F0000h;      // Mask for dump type
   DU_HEXTEXT   EQU 00010000h;      // Hexadecimal dump with ASCII text
   DU_HEXUNI    EQU 00020000h;      // Hexadecimal dump with UNICODE text
   DU_TEXT      EQU 00030000h;      // Character dump
   DU_UNICODE   EQU 00040000h;      // Unicode dump
   DU_INT       EQU 00050000h;      // Integer signed dump
   DU_UINT      EQU 00060000h;      // Integer unsigned dump
   DU_IHEX      EQU 00070000h;      // Integer hexadecimal dump
   DU_FLOAT     EQU 00080000h;      // Floating-point dump
   DU_ADDR      EQU 00090000h;      // Address dump
   DU_ADRASC    EQU 000A0000h;      // Address dump with ASCII text
   DU_ADRUNI    EQU 000B0000h;      // Address dump with UNICODE text
   DU_DISASM    EQU 000C0000h;      // Disassembly
   DU_DECODE    EQU 000D0000h;      // Same as DU_DISASM but for decoded data
 DU_COUNTMASK   EQU 0000FF00h;      // Mask for number of items/line
 DU_SIZEMASK    EQU 000000FFh;      // Mask for size of single item

 DU_MAINPART    EQU DU_TYPEMASK or DU_COUNTMASK or DU_SIZEMASK)

 DUMP_HEXA8     EQU 00010801h;      // Hex/ASCII dump, 8 bytes per line
 DUMP_HEXA16    EQU 00011001h;      // Hex/ASCII dump, 16 bytes per line
 DUMP_HEXU8     EQU 00020801h;      // Hex/UNICODE dump, 8 bytes per line
 DUMP_HEXU16    EQU 00021001h;      // Hex/UNICODE dump, 16 bytes per line
 DUMP_ASC32     EQU 00032001h;      // ASCII dump, 32 characters per line
 DUMP_ASC64     EQU 00034001h;      // ASCII dump, 64 characters per line
 DUMP_UNI16     EQU 00041002h;      // UNICODE dump, 16 characters per line
 DUMP_UNI32     EQU 00042002h;      // UNICODE dump, 32 characters per line
 DUMP_UNI64     EQU 00044002h;      // UNICODE dump, 64 characters per line
 DUMP_INT16     EQU 00050802h;      // 16-bit signed integer dump, 8 items
 DUMP_INT16S    EQU 00050402h;      // 16-bit signed integer dump, 4 items
 DUMP_INT32     EQU 00050404h;      // 32-bit signed integer dump, 4 items
 DUMP_INT32S    EQU 00050204h;      // 32-bit signed integer dump, 2 items
 DUMP_UINT16    EQU 00060802h;      // 16-bit unsigned integer dump, 8 items
 DUMP_UINT16S   EQU 00060402h;      // 16-bit unsigned integer dump, 4 items
 DUMP_UINT32    EQU 00060404h;      // 32-bit unsigned integer dump, 4 items
 DUMP_UINT32S   EQU 00060204h;      // 32-bit unsigned integer dump, 2 items
 DUMP_IHEX16    EQU 00070802h;      // 16-bit hex integer dump, 8 items
 DUMP_IHEX16S   EQU 00070402h;      // 16-bit hex integer dump, 4 items
 DUMP_IHEX32    EQU 00070404h;      // 32-bit hex integer dump, 4 items
 DUMP_IHEX32S   EQU 00070204h;      // 32-bit hex integer dump, 2 items
 DUMP_FLOAT32   EQU 00080404h;      // 32-bit floats, 4 items
 DUMP_FLOAT32S  EQU 00080104h;      // 32-bit floats, 1 item
 DUMP_FLOAT64   EQU 00080208h;      // 64-bit floats, 2 items
 DUMP_FLOAT64S  EQU 00080108h;      // 64-bit floats, 1 item
 DUMP_FLOAT80   EQU 0008010Ah;      // 80-bit floats
 DUMP_ADDR      EQU 00090104h;      // Address dump
 DUMP_ADDRASC   EQU 000A0104h;      // Address dump with ASCII text
 DUMP_ADDRUNI   EQU 000B0104h;      // Address dump with UNICODE text
 DUMP_DISASM    EQU 000C0110h;      // Disassembly (max. 16 bytes per cmd)
 DUMP_DECODE    EQU 000D0110h;      // Decoded data (max. 16 bytes per line)



  ;Address extension.
  TY_AEXTMASK    EQU 000000FFh;      // Mask to extract address extension
  ;General item types.
  TY_NEW         EQU 00000100h;      // Item is new
  TY_CONFIRMED   EQU 00000200h;      // Item still exists
  TY_EXTADDR     EQU 00000400h;      // Address extension active
  TY_SELECTED    EQU 00000800h;      // Reserved for multiple selection
  ;Breakpoint-related types (used in t_bpoint, t_bpmem and t_bphard).
  BP_BASE        EQU 0000F000h;      // Mask to extract basic breakpoint type
    BP_MANUAL    EQU 00001000h;      // Permanent breakpoint
    BP_ONESHOT   EQU 00002000h;      // Stop and reset this bit
    BP_TEMP      EQU 00004000h;      // Reset this bit and continue
    BP_TRACE     EQU 00008000h;      // Used for hit trace
  BP_SET         EQU 00010000h;      // Code INT3 is in memory, cmd is valid
  BP_DISABLED    EQU 00020000h;      // Permanent breakpoint is disabled
  BP_COND        EQU 00040000h;      // Conditional breakpoint
  BP_PERIODICAL  EQU 00080000h;      // Periodical (pauses each passcount)
  BP_ACCESSMASK  EQU 00E00000h;      // Access conditions (memory+hard)
    BP_READ      EQU 00200000h;      // Break on read memory access
    BP_WRITE     EQU 00400000h;      // Break on write memory access
    BP_EXEC      EQU 00800000h;      // Break on code execution
  BP_BREAKMASK   EQU 03000000h;      // When to pause execution
    BP_NOBREAK   EQU 00000000h;      // No pause
    BP_CONDBREAK EQU 01000000h;      // Pause if condition is true
    BP_BREAK     EQU 03000000h;      // Pause always
  BP_LOGMASK     EQU 0C000000h;      // When to log value of expression
    BP_NOLOG     EQU 00000000h;      // Don't log expression
    BP_CONDLOG   EQU 04000000h;      // Log expression if condition is true
    BP_LOG       EQU 0C000000h;      // Log expression always
  BP_ARGMASK     EQU 30000000h;      // When to log arguments of a function
    BP_NOARG     EQU 00000000h;      // Don't log arguments
    BP_CONDARG   EQU 10000000h;      // Log arguments if condition is true
    BP_ARG       EQU 30000000h;      // Log arguments always
  BP_RETMASK     EQU 0C0000000h;      // When to log return value of a function
    BP_NORET     EQU 00000000h;      // Don't log return value
    BP_CONDRET   EQU 40000000h;      // Log return value if condition is true
    BP_RET       EQU 0C0000000h;      // Log return value always
  BP_MANMASK 	 EQU BP_PERIODICAL or BP_BREAKMASK or BP_LOGMASK or BP_ARGMASK or BP_RETMASK
  BP_CONFIRM     EQU TY_CONFIRMED    ;// Internal OllyDbg use
	BP_MR 		 EQU BP_BREAK or BP_MANUAL or BP_READ
	BP_MW 		 EQU BP_BREAK or BP_MANUAL or BP_WRITE
	BP_ME 		 EQU BP_BREAK or BP_MANUAL or BP_EXEC
	BP_MRWE 	 EQU BP_BREAK or BP_MANUAL or BP_READ or BP_WRITE or BP_EXEC
	
	BP_HR 		 EQU BP_BREAK or BP_MANUAL or BP_READ or BP_WRITE
	BP_HW 		 EQU BP_BREAK or BP_MANUAL or BP_WRITE
	BP_HE 		 EQU BP_BREAK or BP_MANUAL or BP_EXEC
	
	BP_INT3_COND EQU BP_MANUAL or BP_CONDBREAK
	
	
t_bphard        struc ; 
	index           dd ?
	dummy           dd ?
	_type            dd ?
	_addr            dd ?
	_size            dd ?
	fnindex         dd ?
	limit           dd ?
	count           dd ?
	actions         dd ?
	modbase         dd ?
	path            dw MAX_PATH dup(?)
t_bphard        ends	


;typedef enum t_status {                // Thread/process status
  STAT_IDLE			EQU 0;                          // No process to debug
  STAT_LOADING		EQU 1;                   // Loading new process
  STAT_ATTACHING	EQU 2;	,                      // Attaching to the running process
  STAT_RUNNING		EQU 3;,                        // All threads are running
  STAT_RUNTHR		EQU 4;,                         // Single thread is running
  STAT_STEPIN		EQU 5;,	                         // Stepping into, single thread
  STAT_STEPOVER		EQU 6;,                       // Stepping over, single thread
  STAT_ANIMIN		EQU 7;,                         // Animating into, single thread
  STAT_ANIMOVER		EQU 8;,                       // Animating over, single thread
  STAT_TRACEIN		EQU 9;,                        // Tracing into, single thread
  STAT_TRACEOVER	EQU 10;,                      // Tracing over, single thread
  STAT_SFXRUN		EQU 11;,                         // SFX using run trace, single thread
  STAT_SFXHIT		EQU 12;,                         // SFX using hit trace, single thread
  STAT_SFXKNOWN		EQU 13;,                       // SFX to known entry, single thread
  STAT_TILLRET		EQU 14;,                        // Stepping until return, single thread
  STAT_OVERRET		EQU 15;,                        // Stepping over return, single thread
  STAT_TILLUSER		EQU 16;,                       // Stepping till user code, single thread
  STAT_PAUSING		EQU 17;,                        // Process is requested to pause
  STAT_PAUSED		EQU 18;,                         // Process paused on debugging event
  STAT_FINISHED		EQU 19;,                       // Process is terminated but in memory
  STAT_CLOSING      EQU 20;                   // Process is requested to close/detach
;} t_status;

t_watch         struc ; 
	_index            dd ?                    ; 
	_size            dd ?                    
	_type            dd ?                    ; 
	_expr            dw 256 dup(?)           ; 
t_watch         ends


 ;MEMORY FUNCTIONS ///////////////////////////////

 ;Mode bits used in calls to Readmemory(), Readmemoryex() and Writememory().
 MM_REPORT      EQU 0000h;          // Display error message if unreadable
 MM_SILENT      EQU 0001h;          // Don't display error message
 MM_NORESTORE   EQU 0002h;          // Don't remove/set INT3 breakpoints
 MM_PARTIAL     EQU 0004h;          // Allow less data than requested
 MM_WRITETHRU   EQU 0008h;          // Write immediately to memory
 MM_REMOVEINT3  EQU 0010h;          // Writememory(): remove INT3 breaks
 MM_ADJUSTINT3  EQU 0020h;          // Writememory(): adjust INT3 breaks
 MM_FAILGUARD   EQU 0040h;          // Fail if memory is guarded
 
 ;Mode bits used in calls to Readmemoryex().
 MM_BPMASK      EQU BP_ACCESSMASK   ;// Mask to extract memory breakpoints
   MM_BPREAD    EQU BP_READ      ;   // Fail if memory break on read is set
   MM_BPWRITE   EQU BP_WRITE      ;  // Fail if memory break on write is set
   MM_BPEXEC    EQU BP_EXEC        ; // Fail if memory break on exec is set

 ;Special types of memory block.
 MSP_NONE       EQU 0         ;      // Not a special memory block
 MSP_PEB        EQU 1        ;       // Contains Process Environment Block
 MSP_SHDATA     EQU 2       ;        // Contains KUSER_SHARED_DATA
 MSP_PROCPAR    EQU 3      ;         // Contains Process Parameters
 MSP_ENV        EQU 4     ;          // Contains environment



 TABLE_USERDEF  EQU 00000001h;      // User-drawn table
 TABLE_STDSCR   EQU 00000002h;      // User-drawn but standard scrolling
 TABLE_SIMPLE   EQU 00000004h;      // Non-sorted, address is line number
 TABLE_DIR      EQU 00000008h;      // Bottom-to-top table
 TABLE_COLSEL   EQU 00000010h;      // Column-wide selection
 TABLE_BYTE     EQU 00000020h;      // Allows for bytewise scrolling
 TABLE_FASTSEL  EQU 00000040h;      // Update when selection changes
 TABLE_RIGHTSEL EQU 00000080h;      // Right click can select items
 TABLE_RFOCUS   EQU 00000100h;      // Right click sets focus
 TABLE_NOHSCR   EQU 00000200h;      // Table contains no horizontal scroll
 TABLE_NOVSCR   EQU 00000400h;      // Table contains no vertical scroll
 TABLE_NOBAR    EQU 00000800h;      // Bar is always hidden
 TABLE_STATUS   EQU 00001000h;      // Table contains status bar
 TABLE_MMOVX    EQU 00002000h;      // Table is moveable by mouse in X
 TABLE_MMOVY    EQU 00004000h;      // Table is moveable by mouse in Y
 TABLE_WANTCHAR EQU 00008000h;      // Table processes characters
 TABLE_SAVEAPP  EQU 00010000h;      // Save appearance to .ini
 TABLE_SAVEPOS  EQU 00020000h;      // Save position to .ini
 TABLE_SAVECOL  EQU 00040000h;      // Save width of columns to .ini
 TABLE_SAVESORT EQU 00080000h;      // Save sort criterium to .ini
 TABLE_SAVECUST EQU 00100000h;      // Save table-specific data to .ini
 TABLE_GRAYTEXT EQU 00200000h;      // Text in table is grayed
 TABLE_NOGRAY   EQU 00400000h;      // Text in pane is never grayed
 TABLE_UPDFOCUS EQU 00800000h;      // Update frame pane on focus change
 TABLE_AUTOUPD  EQU 01000000h;      // Table allows periodical autoupdate
 TABLE_SYNTAX   EQU 02000000h;      // Table allows syntax highlighting
 TABLE_PROPWID  EQU 04000000h;      // Column width means proportional width
 TABLE_INFRAME  EQU 10000000h;      // Table belongs to the frame window
 TABLE_BORDER   EQU 20000000h;      // Table has sunken border
 TABLE_KEEPOFFS EQU 80000000h;      // Keep xshift, offset, colsel

 TABLE_MOUSEMV  EQU TABLE_MMOVX or TABLE_MMOVY
 TABLE_SAVEALL  EQU TABLE_SAVEAPP or TABLE_SAVEPOS or TABLE_SAVECOL or TABLE_SAVESORT

t_memory        struc ; (sizeof=0x68, copyof_253)
	base            dd ?
	_size            dd ?
	_type            dd ?
	special         dd ?
	owner           dd ?
	initaccess      dd ?
	access          dd ?
	threadid        dd ?
	sectname        dw 32 dup(?)
	copy            dd ?                    ; offset
	decode          dd ?                    ; offset
t_memory        ends







;--------------------------------------------------------------------------------



;--------------------------------------------------------------------------------

.data
	ghWnd			DWORD 0
	ghEdit			DWORD 0
	ghComboBox		DWORD 0
	ghBtn			DWORD 5 dup(0)
	gDumpaddr		DWORD 5 dup(0)
	giBtn			DWORD 0
	gString			Word  0,0	;
	gPrevCBProc		DWORD 0
	gPrevWndProc 	DWORD 0


ENDIF
