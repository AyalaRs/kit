MAX_HIST EQU 32

.data	
	gcmdlist 	label 	t_command	;
						
						t_command <$CTW0("D"),	 	$CTW0("A"),	0,				offset subDumpcmd,	$CTW0("Dump at Address")>
						t_command <$CTW0("DUMP"),	$CTW0("A"),	0,				offset subDumpcmd,	$CTW0("Dump at Address")>
						t_command <$CTW0("DA"),	 	$CTW0("a"),	DUMP_DISASM,	offset subDumpcmd,	$CTW0("Dump as Disassembly")>
						t_command <$CTW0("DB"),	 	$CTW0("a"),	DUMP_HEXA16,	offset subDumpcmd,	$CTW0("Dump in Hex byte format")>
						t_command <$CTW0("DC"),	 	$CTW0("a"),	DUMP_ASC64,		offset subDumpcmd,	$CTW0("Dump in Ascii format")>
						t_command <$CTW0("DD"),	 	$CTW0("a"),	DUMP_ADDR,		offset subDumpcmd,	$CTW0("Dump in Stack format")>
						t_command <$CTW0("DU"),	 	$CTW0("a"),	DUMP_UNI64,		offset subDumpcmd,	$CTW0("Dump in Unicode format")>
						t_command <$CTW0("DW"),	 	$CTW0("a"),	DUMP_IHEX16,	offset subDumpcmd,	$CTW0("Dump in Hex word format")>
						
						t_command <$CTW0("DFF"), 	$CTW0("a"),	DUMP_FLOAT32,	offset subDumpcmd,	$CTW0("Dump in 32-bit floats")>
						t_command <$CTW0("DFD"), 	$CTW0("a"),	DUMP_FLOAT64,	offset subDumpcmd,	$CTW0("Dump in 64-bit floats")>
						t_command <$CTW0("DFT"), 	$CTW0("a"),	DUMP_FLOAT80,	offset subDumpcmd,	$CTW0("Dump in 80-bit floats")>
						
						t_command <$CTW0("DT"),		$CTW0("AS"),DUMP_DECODE,	offset subDumpStruc,$CTW0("Dump as structure")>
						
						t_command <$CTW0("ORIG"),	$CTW0(""),	0,				offset subDorigin,	$CTW0("Disassemble at EIP")>
						t_command <$CTW0("*"),	 	$CTW0(""),	0,				offset subDorigin,	$CTW0("Disassemble at EIP")>
						
						t_command <$CTW0("STK"), 	$CTW0("A"),	0,				offset subStakcmd,	$CTW0("Go to address in stack")>
						
						t_command <$CTW0("AT"),	 	$CTW0("A"),	0,				offset subDasmcmd,	$CTW0("Disassemble at address")>
						t_command <$CTW0("FOLLOW"),	$CTW0("A"),	0,				offset subDasmcmd,	$CTW0("Disassemble at address")>
						
						t_command <$CTW0("BP"),		$CTW0("AS"),BP_MANUAL,		offset subBreakpt,	$CTW0("int3 [condition] breakpoint")>
						t_command <$CTW0("BC"),		$CTW0("A"),	0,				offset subDelbpt,	$CTW0("Delete int3 breakpoint")>
						
						t_command <$CTW0("MR"),		$CTW0("Av"),BP_MR,			offset subMembkpt,	$CTW0("Memory breakpt on access")>
						t_command <$CTW0("MW"),		$CTW0("Av"),BP_MW,			offset subMembkpt,	$CTW0("Memory breakpt on write")>
						t_command <$CTW0("ME"),		$CTW0("Av"),BP_ME,			offset subMembkpt,	$CTW0("Memory breakpt on execute")>
						t_command <$CTW0("MRWE"),	$CTW0("Av"),BP_MRWE,		offset subMembkpt,	$CTW0("Memory breakpt on R.W.E")>
						t_command <$CTW0("MD"),		$CTW0("Av"),0,				offset subMembkpt,	$CTW0("Remove memory breakpoint")>
						
						t_command <$CTW0("HR"),		$CTW0("A"),	BP_HR,			offset subHwbreak,	$CTW0("HW break on access")>
						t_command <$CTW0("HW"),		$CTW0("A"),	BP_HW,			offset subHwbreak,	$CTW0("HW break on write")>
						t_command <$CTW0("HE"),		$CTW0("A"),	BP_HE,			offset subHwbreak,	$CTW0("HW break on execute")>
						t_command <$CTW0("HD"),		$CTW0("a"),	0,				offset subHwbreak,	$CTW0("Remove HW breakpoint")>
						
						t_command <$CTW0("OPEN"),	$CTW0("S"),	0,				offset subOpenexe,	$CTW0("Open a execute file")>
						t_command <$CTW0("ATT"),	$CTW0("L"),	0,				offset subAttach,	$CTW0("Attach a process")>
						t_command <$CTW0("ATTACH"),	$CTW0("L"),	0,				offset subAttach,	$CTW0("Attach a process")>
						
						t_command <$CTW0("?"),		$CTW0("V"),	0,				offset subExpress,	$CTW0("Estimate expression")>
						t_command <$CTW0("CALC"),	$CTW0("V"),	0,				offset subExpress,	$CTW0("Estimate expression")>
						
						
						t_command <$CTW0("W"),		$CTW0("S"),	0,				offset subWatch,	$CTW0("Add watch expression")>
						t_command <$CTW0("WATCH"),	$CTW0("S"),	0,				offset subWatch,	$CTW0("Add watch expression")>
						
						t_command <$CTW0("EB"),		$CTW0("AL"),1,				offset subMemEdit,	$CTW0("memory edit byte")>
						t_command <$CTW0("EW"),		$CTW0("AL"),2,				offset subMemEdit,	$CTW0("memory edit word")>
						t_command <$CTW0("ED"),		$CTW0("AL"),4,				offset subMemEdit,	$CTW0("memory edit dword")>
						t_command <$CTW0("EQ"),		$CTW0("AL"),8,				offset subMemEdit,	$CTW0("memory edit qword")>
						t_command <$CTW0("EFF"),	$CTW0("AL"),1004h,			offset subMemEdit,	$CTW0("memory edit float")>
						t_command <$CTW0("EFD"),	$CTW0("AL"),1008h,			offset subMemEdit,	$CTW0("memory edit double")>
						t_command <$CTW0("EFT"),	$CTW0("AL"),100Ah,			offset subMemEdit,	$CTW0("memory edit long double")>
						
						t_command <$CTW0("R"),		$CTW0("RL"),0,				offset subRegEdit,	$CTW0("reg edit ")>
						
						
	gcmdlistEnd			t_command <0,0,0,0,0>

.data?	
g_g label byte	
	gaddress 			dd ?				;Operands A/a (address expression)
	gn					dd ?				;Operands N/n (count)
	glval				t_result <>			;Operand  L   (lvalue address)
	gval				t_result <>			;Operands V/v (expression)
	grval				t_result <>			;Operands R (reg expression)
	gstr				dw MAX_PATH dup(?)	;Operand  S (any string)
	gcmd				dw MAX_PATH dup(?)	;Command  (uppercase)
g_glength equ $ - offset g_g	
	gaddr EQU gaddress
		
comment #
static wchar_t      cmd[TEXTLEN];         // Command  (uppercase)
static ulong     address;              // Operands A/a (address expression)
static t_result  lvalue;               // Operand  L   (lvalue address)
static t_result  value;                // Operands V/v (expression)
static wchar_t      string[TEXTLEN];      // Operand  S   (any string)
static int       count;                // Operands N/n (count)

;#


.code
subMemEdit proc answer,parm
	mov eax,parm
	.if eax == 1008h
		fld glval.f
		fstp qword ptr glval._data
	.elseif eax == 1004h
		fld glval.f
		fstp dword ptr glval._data
	.endif
	
	and eax,0Fh
	invoke Writememory,addr glval._data,gaddr,eax,MM_SILENT or MM_REMOVEINT3 or MM_ADJUSTINT3
	.if !eax
		invoke wsprintfW,answer,$CTW0("Unable to modify memory")
		mov eax,-1
		jmp done
	.endif
	
	invoke Broadcast,484h,0,0
	
	xor eax,eax
done:
	ret
subMemEdit endp

subRegEdit proc uses esi answer,parm
	invoke Getcputhreadid
	invoke Findthread,eax
	mov esi,eax
	assume esi:ptr t_thread
	.if !esi || ![esi].regvalid
		invoke wsprintfW,answer,$CTW0("Unable to modify register")
		mov eax,-1
		jmp done
	.endif
	.if !([esi].reg.status & RV_USERMOD)
		invoke RtlMoveMemory,addr [esi].oldreg,addr [esi].reg,sizeof t_reg
		or [esi].reg.status,RV_USERMOD
	.endif
	mov ecx,grval.lvaladdr
	mov eax,grval.lvaltype
	and eax,EXPR_TYPEMASK
	.if 	eax == EXPR_BYTE
		mov al,glval._data
		.if ecx>=4
			sub ecx,4
			shl ecx,2
			inc ecx
		.else
			shl ecx,2	
		.endif
		mov byte ptr [esi].reg.r[ecx],al
		
	.elseif eax == EXPR_WORD
		mov ax,glval.w
		mov word ptr [esi].reg.r[ecx*4],ax
		
	.elseif eax == EXPR_DWORD
		.if glval.datatype==EXPR_DWORD
			mov eax,glval.u
		.else
			push eax
			fld glval.f
			fstp dword ptr [esp]
			pop eax
		.endif	
		mov [esi].reg.r[ecx*4],eax
		
	.elseif eax == EXPR_FLOAT10
		imul ecx,ecx,sizeof tbyte
		fld glval.f
		fstp [esi].reg.f[ecx]
	.else
		
	.endif	
	or [esi].reg.status,RV_MODIFIED
	invoke Broadcast,484h,0,0
	xor eax,eax
	
	assume esi:nothing
done:	
	ret
subRegEdit endp

subDumpStruc proc uses esi answer,parm
	LOCAL _title[TEXTLEN]:WORD
	LOCAL _count:DWORD
	.if word ptr gstr[0*2]==0
		invoke wsprintfW,answer,$CTW0("..........")
		jmp done
	.endif
	invoke Getstructureitemcount,offset gstr,addr _count
	.if !eax
		invoke wsprintfW,answer,$CTW0("Undefined Structure: %s"),offset gstr
	.endif
										
	invoke wsprintfW,addr _title,$CTW0("Structure %s at "),offset gstr
	mov ecx,TEXTLEN
	sub ecx,eax
	lea eax,_title[eax*2]
	
	invoke Decodeaddress,gaddr,0,20400h,eax,ecx,0
	invoke Createdumpwindow,addr _title,gaddr,_count,0,parm,gaddr,gaddr,offset gstr

done:	
	xor eax,eax
	ret
subDumpStruc endp

subWatch proc uses esi answer,parm
	LOCAL w:t_watch
	LOCAL P:POINT
	mov esi,watch
	assume esi:ptr t_table
	mov ecx,[esi].sorted.n
	
	.if ecx<[esi].sorted.nmax && word ptr [gstr]!=0
		dec ecx
		mov w._index,ecx
		mov w._size,1
		mov w._type,0
		invoke RtlMoveMemory,addr w._expr,offset gstr,TEXTLEN
		invoke Addsorteddata,addr [esi].sorted,addr w
		
		mov eax,[esi].sorted.selected
		lea edx,[eax+1]
		invoke Maketableareavisible,esi,-1,0,eax,0,edx
		mov edx,hwollymain
		invoke SendMessageW,[edx],WM_COMMAND,8A0h,0
	.endif
	assume esi:nothing
	xor eax,eax
	ret
subWatch endp

subExpress proc answer,parm
	invoke wsprintfW,answer,addr gval.value
	xor eax,eax
	ret
subExpress endp

subOpenexe proc answer,parm
	.if word ptr gstr!=0
		invoke OpenExecfile,offset gstr,0,0
	.endif
	xor eax,eax
	ret
subOpenexe endp

subAttach proc answer,parm
	.if glval.datatype ==EXPR_DWORD
		invoke AttachProcess,glval.l
		invoke Setstatus,STAT_ATTACHING
		invoke Broadcast,484h,0,0
	.endif
	xor eax,eax
	ret
subAttach endp

subHwbreak proc uses ebx esi edi answer,parm
	LOCAL index:DWORD
	mov ebx,bphard
	assume ebx:ptr t_table
	or index,-1
	.if [ebx].sorted.n>0
		mov esi,[ebx].sorted.data
		assume esi:ptr t_bphard
		xor eax,eax
		.repeat
			mov edx,[esi]._addr
			mov ecx,[esi].index
			.if ecx!=-1 && edx==gaddr
				mov index,ecx
				.break
			.endif
			add esi,[ebx].sorted.itemsize
			inc eax
		.until eax>=[ebx].sorted.n
		assume esi:nothing
	.endif

	.if parm==0 
		.if index!=-1
			invoke Removehardbreakpoint,index
		.endif
		jmp done
	.endif
	
	.if index!=-1
		mov eax,(t_bphard ptr [esi])._type
		.if eax==parm
			invoke wsprintfW,answer,$CTW0("HW breakpoint already set slot %d"),index
			jmp done
		.endif
	.endif
	
	invoke Findfreehardbreakslot,parm
	mov index,eax
	
	.if eax < 0 
		invoke wsprintfW,answer,$CTW0("No enough slot for HW breakpoint")
		jmp done
	.endif
	
	invoke Sethardbreakpoint,index,1,parm,0,gaddr,0,0,0,0,0,0
	.if eax
		invoke wsprintfW,answer,$CTW0("Slot %d Unable to set HW breakpoint"),index
		jmp done
	.endif
		
	assume ebx:nothing
done:	
	xor eax,eax
	ret
subHwbreak endp

subMembkpt proc answer,parm
	.if !parm
		invoke Enablemembreakpoint,gaddr,FALSE
		xor eax,eax
		jmp done
	.endif
	
	.if gval.datatype==EXPR_INVALID
		mov eax,1				;none
	.else	
		.if gval.datatype!=EXPR_DWORD
			invoke wsprintfW,answer,$CTW0("Integer expression expected")
			mov eax,-1
			jmp done
		.endif
		
		mov eax,gval.u
		.if eax
			.if eax<=10000h
				nop				;value
			.elseif eax>gaddr
				sub eax,gaddr	;address
			.else
				invoke wsprintfW,answer,$CTW0("Invalid memory range %d"),eax
				mov eax,-1
				jmp done
			.endif
		.endif
	.endif
	
	invoke Setmembreakpoint,gaddr,eax,parm,0,0,0,0,0
	.if eax
		invoke wsprintfW,answer,$CTW0("Unable to set breakpoint %08X"),gaddr
		mov eax,-1
	.else
		invoke Enablemembreakpoint,gaddr,TRUE
		xor eax,eax
	.endif
done:	
	ret
subMembkpt endp

subBreakpt proc answer,parm
	LOCAL cond[MAX_PATH]:WORD
	mov ecx,offset gstr
	.if word ptr [ecx]!=0
		lea edx,cond
		.repeat
			mov ax,[ecx]
			mov [edx],ax
			add ecx,2
			add edx,2
		.until !ax
		lea ecx,cond
		mov eax,parm
		or eax,BP_CONDBREAK
	.else
		mov eax,parm
		xor ecx,ecx	
		or eax,BP_BREAK
	.endif
	
	invoke Setint3breakpoint,gaddress,eax,0,0,0,0,ecx,offset gString,offset gstr
	invoke Broadcast,484h,0,0
	xor eax,eax
	ret
subBreakpt endp

subDelbpt proc answer,parm
	invoke Removeint3breakpoint,gaddr,BP_MANUAL
	invoke Broadcast,484h,0,0
	xor eax,eax
	ret
subDelbpt endp


subDumpcmd proc answer,parm
	invoke Setcpu,0,0,gaddress,0,0,CPU_DUMPHIST or CPU_DUMPFIRST or CPU_DUMPFOCUS
	mov ecx,parm
	.if ecx
		invoke Getcpudumpdump
		invoke Setdumptype,eax,ecx
	.endif
	xor eax,eax
	ret
subDumpcmd endp

subStakcmd proc answer,parm
  	invoke Setcpu,0,0,0,0,gaddress,CPU_DUMPHIST or CPU_DUMPFIRST or CPU_DUMPFOCUS
  	xor eax,eax
  	ret
subStakcmd endp


subDorigin proc answer,parm
	invoke Getcputhreadid
	invoke Findthread,eax
	.if eax
		assume eax:ptr t_thread
		invoke Setcpu,0,[eax].context._Eip,0,0,0,CPU_ASMHIST or CPU_ASMCENTER
		invoke Broadcast,484h,0,0
		assume eax:nothing
	.endif
	xor eax,eax
	ret	
subDorigin endp


subDasmcmd proc answer,parm
	invoke Setcpu,0,gaddress,0,0,0,CPU_ASMHIST or CPU_ASMCENTER
	xor eax,eax
	ret
subDasmcmd endp



.data
	gnhist		  		dd 0
.data?
	ghistory			  dw MAX_HIST*MAX_PATH dup(?)
	ghistoryEnd		label word

.code
addline proc uses esi edi ebx cmd
	mov esi,cmd
	.if !esi
		jmp done
	.endif
	.if word ptr [esi]==0
		mov gnhist,0
		invoke SetWindowTextW,ghEdit,offset gString
	.else
		;Remove identical strings from the history.
		mov eax,gnhist
		imul eax,eax,MAX_PATH*2
		mov edi,offset ghistory
		add edi,eax
		mov ebx,edi
		.repeat
			sub edi,MAX_PATH*2
			invoke lstrcmpiW,edi,esi
			.if !eax
				mov eax,edi
				add eax,MAX_PATH*2
				
				mov ecx,ebx
				sub ecx,eax
				invoke RtlMoveMemory,edi,eax,ecx
				
				sub ebx,MAX_PATH*2
				dec gnhist
			.endif
		.until edi<= offset ghistory
		
		;Insert new string.
		.if gnhist>=MAX_HIST
			mov gnhist,MAX_HIST - 1
		.endif
		
		mov edi,offset ghistory
		mov ecx,gnhist
		.if ecx
			imul ecx,ecx,MAX_PATH*2
			mov eax,edi
			add eax,MAX_PATH*2
			invoke RtlMoveMemory,eax,edi,ecx
		.endif
		
		invoke RtlMoveMemory,edi,esi,MAX_PATH*2
		inc gnhist
	.endif
	;Copy history to combobox.
	
	invoke SendMessageW,ghComboBox,CB_RESETCONTENT,0,0
	
	xor ebx,ebx
	.repeat
		invoke SendMessageW,ghComboBox,CB_ADDSTRING,0,edi
		inc ebx
		add edi,MAX_PATH*2
	.until ebx>=gnhist
	.if gnhist > 0
		invoke SetWindowTextW,ghComboBox,esi
		invoke SendMessageW,ghComboBox,CB_SETEDITSEL,0,MAX_PATH
	.endif
done:	
	ret
addline endp


showinfo proc uses esi edi ebx cmd
	LOCAL lpString[MAX_PATH]:WORD
	LOCAL lpcmd[MAX_PATH]:WORD
	LOCAL len:DWORD
	LOCAL p:DWORD
	
	invoke crt_malloc,4
	mov p,eax
			
	mov esi,cmd
	.if word ptr [esi]==0
		invoke SetWindowTextW,ghEdit,offset gString
		jmp done
	.endif
	
	xor ebx,ebx
	lea ecx,lpcmd
	.repeat
		mov ax,[esi][ebx*2]
		mov [ecx][ebx*2],ax
		inc ebx
	.until !ax
	dec ebx
	mov len,ebx
	
	mov ax,[ecx]
	.if ax>="0" && ax<="9"
		mov eax,ecx
	.else
		invoke crt_wcschr,ecx,20h; " "
	.endif
	xor ebx,ebx
	
	.if eax
		mov word ptr [eax],0
		mov edi,offset gcmdlist
		assume edi:ptr t_command
		.repeat
			invoke lstrcmpiW,addr lpcmd,[edi].cmd
			.if !eax
				lea eax,[ebx*4+4]
				invoke crt_realloc,p,eax
				mov p,eax
				mov [eax][ebx*4],edi
				inc ebx
			.endif
			add edi,sizeof t_command
		.until edi>=offset gcmdlistEnd
		
	.else
		mov edi,offset gcmdlist
		
		.repeat
			invoke crt__wcsnicmp,esi,[edi].cmd,len
			.if !eax
				lea eax,[ebx*4+4]
				invoke crt_realloc,p,eax
				mov p,eax
				mov [eax][ebx*4],edi
				inc ebx
			.endif
			add edi,sizeof t_command
		.until edi>=offset gcmdlistEnd
		assume edi:nothing
	.endif
	
	.if ebx>1
		invoke RtlZeroMemory,addr lpString,MAX_PATH*2
 		lea edi,lpString
 		mov esi,p
 		xor ecx,ecx
 		.repeat
	 		mov eax,[esi][ecx*4]
	 		assume eax:ptr t_command
			mov eax,[eax].cmd
	 		.repeat
		 		mov dx,word ptr [eax]
				mov [edi],dx
				add eax,2
				add edi,2	 		
	 		.until dx==0
			mov word ptr [edi-2],20h 		
	 		assume eax:nothing
	 		inc ecx
	 		mov eax,edi
	 		lea edx,lpString
	 		sub eax,edx
 		.until ecx>=ebx || eax>=200h
 		mov word ptr [edi],0
 		invoke SetWindowTextW,ghEdit,addr lpString
	.elseif ebx==1
		lea edi,lpcmd
		invoke RtlZeroMemory,edi,MAX_PATH*2
		
		mov esi,p
		mov esi,[esi][0*4]
		assume esi:ptr t_command
		xor ebx,ebx
		.while 1
			mov ecx,[esi].args
			mov ax,[ecx][ebx*2]
			.break .if !ax
			.if (word ptr lpcmd[0]!=0)
				mov word ptr [edi],","
				add edi,2
			.endif
			.if ax=="A"
				mov ecx,$CTW0(" address")
			.elseif ax=="a"
				mov ecx,$CTW0(" [address]")
			.elseif ax=="S"
				mov ecx,$CTW0(" string")	
			.elseif ax=="V"
				mov ecx,$CTW0(" expression")
			.elseif ax=="v"
				mov ecx,$CTW0(" [expression]")
			.elseif ax=="L"
				mov ecx,$CTW0(" expression")
			.elseif ax=="R"
				mov ecx,$CTW0(" Reg")
			.else
				mov ecx,offset gString
			.endif
			
			.while 1
				mov ax,[ecx]
				.break .if !ax	
				mov [edi],ax
				add ecx,2
				add edi,2
			.endw
			inc ebx
		.endw
		
		invoke wsprintfW,addr lpString,$TW0(" %s%s -- %s"),[esi].cmd,addr lpcmd,[esi].help
		invoke SetWindowTextW,ghEdit,addr lpString
		assume esi:nothing
	.else
		.if len
			invoke wsprintfW,addr lpString,$CTW0("No valid command begin with \= %s \=."),esi
			invoke SetWindowTextW,ghEdit,addr lpString
		.else
			invoke SetWindowTextW,ghEdit,offset gString
		.endif
	.endif
	
done:
	invoke crt_free,p	
	ret
showinfo endp








Execute proc uses esi edi ebx cmd,info
	LOCAL len:DWORD
	LOCAL result:t_result
	;check args
	mov esi,cmd
	.if !esi || word ptr [esi] ==0 || info ==NULL
		mov eax,-1
		jmp done
	.endif
	
	invoke RtlZeroMemory,offset g_g,g_glength
	
	
	;skip spaces
	.while word ptr [esi]==20h || word ptr [esi]==9h	;" " & "\t"
		lea esi,[esi][sizeof word]
	.endw
	
	;
	mov edi,offset gcmd
	xor ebx,ebx
	.repeat
		mov ax,[esi]
		invoke crt_iswalpha,eax
		.if eax
			mov ax,[esi]
			invoke crt_towupper,eax
			mov [edi][ebx*2],ax
			lea esi,[esi][sizeof word]
		.else
			mov ax,word ptr [esi]
			.if ax=="?" || ax=="*" || ax==":"
				mov [edi],ax
				mov ebx,1
				lea esi,[esi][sizeof word]
				.break
			.endif
			.break
		.endif
		inc ebx
	.until ebx>=MAX_HIST
	mov word ptr [edi][ebx*2],0
	
	;search
	xor ebx,ebx
	mov edi,offset gcmdlist
	assume edi:ptr t_command
	.repeat
		invoke lstrcmpiW,offset gcmd,[edi].cmd
		.break .if !eax
		add edi,sizeof t_command
		inc ebx
	.until edi >=offset gcmdlistEnd

	;fail done
	.if edi>=offset gcmdlistEnd
		invoke wsprintfW,info,$CTW0("Unrecognized command: %s"),offset gcmd
		mov eax,-1
		jmp done
	.endif
	
	;Now get operands esi
	
	xor ebx,ebx
	 
	.while 1
		;skip spaces
		.while word ptr [esi]==20h || word ptr [esi]==9h	;" " & "\t"
			lea esi,[esi][sizeof word]
		.endw	
		
		mov eax,[edi].args
		mov ax,[eax][ebx*2]
		inc ebx
		
		
		.break .if !ax
		.if ax=="a"
			mov dx,[esi]
			.if dx=="," || dx=="=" ||dx==";" || !dx
				mov gaddress,0
				.if dx
					lea esi,[esi][sizeof word]
				.endif
			.else
				jmp @F	
			.endif
		.elseif ax=="A"
			@@:
			invoke Getcputhreadid
			invoke Expression,addr result,esi,0,0,0,eax,0,0,0
			.if eax<0
				invoke wsprintfW,info,$CTW0("Invalid expression")
				mov eax,-1
				jmp done
			.endif
			mov len,eax
			
			.if result.datatype!=EXPR_DWORD
				invoke wsprintfW,info,$CTW0("Integer expression expected")
				mov eax,-1
				jmp done
			.endif
			invoke Findmemory,result.u
			.if !eax
				invoke wsprintfW,info,$CTW0("Address 0x%08X points to nowhere"),result.u
				mov eax,-1
				jmp done
			.endif
			
			mov eax,result.u
			mov gaddress,eax
			mov eax,len
			add eax,eax
			add esi,eax
		.elseif ax=="L"
			invoke Getcputhreadid
			invoke Expression,offset glval,esi,0,0,0,eax,0,0,0
			mov len,eax
			.if eax < 0 || glval.datatype==EXPR_INVALID
				invoke wsprintfW,info,addr glval.value
				mov eax,-1
				jmp done
			.endif
			mov eax,len
			shl eax,1
			add esi,eax
		.elseif ax=="v"
			mov dx,[esi]
			.if dx=="," || dx=="=" ||dx==";" || !dx
				mov result.datatype,EXPR_INVALID
				mov result.u,0
				.if dx
					lea esi,[esi][sizeof word]
				.endif
			.else
				jmp @F
			.endif
		.elseif ax=="V"
			@@:
			invoke Getcputhreadid
			invoke Expression,offset gval,esi,0,0,0,eax,0,0,0
			mov len,eax
			.if eax < 0 || result.datatype==EXPR_INVALID
				invoke wsprintfW,info,addr gval.value
				mov eax,-1
				jmp done
			.endif
			mov eax,len
			shl eax,1
			add esi,eax
		.elseif ax=="S"
			mov ecx,offset gstr
			.while 1	
				mov dx,[esi]
				mov [ecx],dx
				.break .if !dx
				add ecx,2
				add esi,2
			.endw			
		.elseif ax=="R"
			invoke Getcputhreadid
			invoke Expression,offset grval,esi,0,0,0,eax,0,0,0
			mov len,eax
			.if eax < 0 || !(grval.lvaltype & EXPR_REG)
				invoke wsprintfW,info,$CTW0("undefined register")
				mov eax,-1
				jmp done
			.endif
			mov eax,len
			shl eax,1
			add esi,eax
		.else
			and eax,0FFFFh
			invoke wsprintfW,info,$CTW0("Internal error: undefined operand type %c"),eax
			mov eax,-1
			jmp done	
		.endif
		
		mov eax,[edi].args
		mov ax,[eax][ebx*2]
		.if ax
			.while word ptr [esi]==20h || word ptr [esi]==9h	;" " & "\t"
				lea esi,[esi][sizeof word]
			.endw
			.if word ptr [esi]=="," || word ptr [esi]=="="
				lea esi,[esi][sizeof word]
			.endif
		.endif
	.endw
	
	.if word ptr [esi]!=0 && word ptr [esi]!=";"
		invoke wsprintfW,info,$CTW0("Extra characters on line: %.64s"),esi
		mov eax,-1
		jmp done
	.endif
	invoke wsprintfW,info,offset gString
	invoke [edi].func,info,[edi].parm
		
	assume edi:nothing
done:	
	ret
Execute endp


