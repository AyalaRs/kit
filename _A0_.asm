define macro _mode:REQ,api:REQ,args:vararg
	LOCAL s,a
	s TEXTEQU @CatStr(<_imp_>,<_>,<api>)
	a TEXTEQU @CatStr(<!">,<api>,<!">)
	api proc _mode args
	.data
		s	DWORD offset @F
			DWORD $CTA0(%a)
	.code
		jmp dword ptr s
	@@:	
		mov eax,offset s
		jmp _DelayLoad
	api endp
endm
	
.code
comment #
oddata (t_table) list;                 // List descriptor
oddata (t_sorted) premod;              // Preliminary module data
oddata (t_table) module;               // Loaded modules
oddata (t_sorted) aqueue;              // Modules that are not yet analysed
oddata (t_table) thread;               // Active threads
oddata (t_table) memory;               // Allocated memory blocks
oddata (t_table) win;                  // List of windows
oddata (t_table) bpoint;               // INT3 breakpoints
oddata (t_table) bpmem;                // Memory breakpoints
oddata (t_sorted) bppage;              // Memory pages with changed attributes
oddata (t_table) bphard;               // Hardware breakpoints
oddata (t_table) watch;                // Watch expressions
oddata (t_table) patch;                // List of patches from previous runs
oddata (t_sorted) procdata;            // Descriptions of analyzed procedures
oddata (t_table) source;               // List of source files
oddata (t_table) srccode;              // Source code


;#

InitImportTable proc uses ebx
.data
	hollyinst 	dword 0
	hwollymain	dword 0
	hwclient	dword 0
	bphard		dword 0
	watch		dword 0
.code	
	mov ebx,gExeHande
	invoke GetProcAddress,ebx,$CTA0("hollyinst")
	mov hollyinst,eax
	invoke GetProcAddress,ebx,$CTA0("hwollymain")
	mov hwollymain,eax
	invoke GetProcAddress,ebx,$CTA0("hwclient")
	mov hwclient,eax
	invoke GetProcAddress,ebx,$CTA0("bphard")
	mov bphard,eax
	invoke GetProcAddress,ebx,$CTA0("watch")
	mov watch,eax	
	ret
InitImportTable endp

;--------------------------------------------------------------------------------
;
;--------------------------------------------------------------------------------
option prologue:none
option epilogue:none
_DelayLoad proc
.data
	gExeHande dword 0
.code
	push ecx
	push edx
	push esi
	mov esi,eax
	invoke GetProcAddress,gExeHande,[esi][4]
	mov [esi],eax
	pop esi
	pop edx
	pop ecx
	jmp eax
_DelayLoad endp


define stdcall,Setcpu,threadid,asmaddr,dumpaddr,selsize,stackaddr,mode
define stdcall,Resumeallthreads
define stdcall,Suspendallthreads
define stdcall,Setdumptype,pd,dumptype
define stdcall,Getcpudumpdump
define stdcall,Getcputhreadid
define stdcall,Expression,result,_Expression,_data,base,_size,threadid,a,b,mode
define stdcall,Findmemory,_addr
define stdcall,Findthread,threadid
define stdcall,Broadcast,msg,wp,lp
define stdcall,Setint3breakpoint,_addr,_type,fnindex,limit,count,actions,cond,expression,exprtype
define stdcall,Removeint3breakpoint,_addr,_type
define stdcall,Enablemembreakpoint,_addr,isenable
define stdcall,Setmembreakpoint,_addr,_size,_type,limit,count,cond,expression,exprtype
define stdcall,Sethardbreakpoint,index,_size,_type,fnindex,_addr,limit,count,actions,cond,expression,exprtype
define stdcall,Removehardbreakpoint,index
define stdcall,Findfreehardbreakslot,index
define stdcall,Setstatus,newstatus
define stdcall,Addsorteddata,sd,item
define stdcall,Gettableselectionxy,pt,column,coord
define stdcall,Maketableareavisible,pt,column,x0,y0,x1,y1
define stdcall,Createdumpwindow,_title,_base,_size,_path,dumptype,sel0,sel1,strname
define stdcall,Getstructureitemcount,_name,_size
define stdcall,Decodeaddress,_addr,_amod,_mode,_symb,_nsymb,_comment
define stdcall,Writememory,_buf,_addr,_size,_mode;

define c,Tempinfo,parmcount,parmvalues:VARARG
define c,Addtolist,_addr,color,format,_s:VARARG
define c,Info,format,_s:VARARG
define c,Message,_addr,format,_s:VARARG

AttachProcess proc c PID
.data
	_imp__AttachProcess DWORD offset @F
.code
	jmp dword ptr _imp__AttachProcess

sign:
	push ebp
	mov ebp,esp
	add esp,-0A5Ch
	push ebx
	push esi
	push edi
	mov esi,dword ptr ss:[ebp+8]	
signLength = $ - offset sign	
@@:	
	push ecx
	push esi
	push edi
	mov eax,hollyinst
	.if eax
		mov eax,[eax]
		add eax,0044B108h-00400000h
		
		mov esi,eax
		mov edi,offset sign
		mov ecx,signLength
		repe cmpsb
		.if ecx
			mov eax,offset @F
		.endif
		mov _imp__AttachProcess,eax
	.endif
	pop edi
	pop esi
	pop ecx
	jmp eax
@@:
	xor eax,eax
	ret	
AttachProcess endp

OpenExecfile proc c filename,arg2,arg3
.data
	_imp__OpenExecfile DWORD offset @F
.code
	jmp dword ptr _imp__OpenExecfile

sign:
	push ebp                      
	mov ebp,esp
	push eax
	mov eax,2
_rep:	
	add esp,-0FFCh                
	push eax
	dec eax
	jnz _rep
signLength = $ - offset sign	
@@:	
	push ecx
	push esi
	push edi
	mov eax,hollyinst
	.if eax
		mov eax,[eax]
		add eax,0044A400h-00400000h
		
		mov esi,eax
		mov edi,offset sign
		mov ecx,signLength
		repe cmpsb
		.if ecx
			mov eax,offset @F
		.endif
		mov _imp__OpenExecfile,eax
	.endif
	pop edi
	pop esi
	pop ecx
	jmp eax
@@:
	xor eax,eax
	ret	
OpenExecfile endp
comment #

CPU Disasm
Address   Hex dump          Command                                  Comments	;attach process
0044B108  /$  55            PUSH EBP                                 ; Se.0044B108(guessed Arg1)
0044B109  |.  8BEC          MOV EBP,ESP
0044B10B  |.  81C4 A4F5FFFF ADD ESP,-0A5C
0044B111  |.  53            PUSH EBX
0044B112  |.  56            PUSH ESI
0044B113  |.  57            PUSH EDI
0044B114  |.  8B75 08       MOV ESI,DWORD PTR SS:[Arg1]
0044B117  |.  6A 01         PUSH 1                                   ; /Arg1 = 1

CPU Disasm
Address   Hex dump          Command                          Comments	open process  file
0044A400  /$  55            PUSH EBP                         ; Se.0044A400(guessed Arg1,Arg2,Arg3)
0044A401  |.  8BEC          MOV EBP,ESP
0044A403  |.  50            PUSH EAX
0044A404  |.  B8 02000000   MOV EAX,2
0044A409  |>  81C4 04F0FFFF /ADD ESP,-0FFC                   ; Loop reserves 8192. bytes on the stack
0044A40F  |.  50            |PUSH EAX
0044A410  |.  48            |DEC EAX
0044A411  |.^ 75 F6         \JNZ SHORT 0044A409

;#


option prologue:prologuedef
option epilogue:epiloguedef	
