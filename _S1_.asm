.code
;typedef int  MENUFUNC(struct t_table *,wchar_t *,ulong,int);

SubmenuFunc proc c pt,_name,index,mode
	mov eax,mode
	
	.if eax==MENU_VERIFY
		mov eax,MENU_NORMAL
	.elseif eax==MENU_EXECUTE
		invoke Resumeallthreads
		mov edx,hwollymain
		invoke MessageBoxW,[edx],$CTW0("so boring"),$CTW0("about:"),MB_OK
		invoke Suspendallthreads
		mov eax,MENU_REDRAW
	.else
		mov eax,MENU_REDRAW
	.endif
	ret
SubmenuFunc endp


Submemorydump proc c uses esi edi ebx pt,_name,index,mode
	LOCAL filename[MAX_PATH]:WORD


	mov eax,mode
	.if eax==MENU_VERIFY
		mov eax,MENU_NORMAL
	.elseif eax==MENU_EXECUTE
		mov esi,pt
		assume esi:ptr t_table
		mov eax,[esi].sorted.n
		mov ecx,[esi].sorted.selected
		.if eax>0 && eax <= [esi].sorted.nmax
			invoke Getsortedbyselection,addr [esi].sorted,[esi].sorted.selected
			mov ebx,eax
			assume esi:nothing
			assume ebx:ptr t_memory
			.if ebx && [ebx].base
				
				mov edx,[ebx].base
				add edx,[ebx]._size
	
				invoke wsprintfW,addr filename,$CTW0("dump_%08X-%08X"),[ebx].base,edx
				invoke Browsefilename,$CTW0(""),addr filename,$CTW0(""),$CTW0(""),$CTW0("*"),NULL,BRO_SAVE
				invoke CreateFileW,addr filename,\
								GENERIC_READ or GENERIC_WRITE,\
								FILE_SHARE_DELETE or FILE_SHARE_READ or FILE_SHARE_WRITE,\
								NULL,\
								CREATE_NEW,\
								FILE_ATTRIBUTE_NORMAL,\
								NULL
				mov edi,eax
						
				invoke CreateFileMapping,edi,NULL,PAGE_READWRITE,0,[ebx]._size,NULL
				mov esi,eax
				invoke MapViewOfFile,esi,FILE_MAP_WRITE,0,0,0
				invoke Readmemory,eax,[ebx].base,[ebx]._size,MM_REPORT
				invoke CloseHandle,esi
				invoke CloseHandle,edi
				
				assume ebx:nothing	
			.endif
		.endif

		mov eax,MENU_REDRAW
	.else
		mov eax,MENU_REDRAW
	.endif	
	ret
Submemorydump endp

Submemoryload proc c uses esi edi ebx pt,_name,index,mode
	LOCAL filename[MAX_PATH]:WORD
	LOCAL _fileSize:DWORD
	LOCAL pmem:t_memory
	LOCAL pmbi:MEMORY_BASIC_INFORMATION
	
	mov eax,mode
	.if eax==MENU_VERIFY
		mov eax,MENU_NORMAL
	.elseif eax==MENU_EXECUTE
		mov word ptr filename,0
		invoke RtlZeroMemory,addr pmem,sizeof pmem
		
		invoke Browsefilename,$CTW0(""),addr filename,$CTW0(""),$CTW0(""),$CTW0("*"),NULL,BRO_FILE
		.if !eax
			jmp done
		.endif

		invoke CreateFileW,addr filename,\
						GENERIC_READ or GENERIC_WRITE,\
						FILE_SHARE_DELETE or FILE_SHARE_READ or FILE_SHARE_WRITE,\
						NULL,\
						OPEN_ALWAYS,\
						FILE_ATTRIBUTE_NORMAL,\
						NULL
		mov esi,eax

		
		invoke GetFileSize,esi,NULL
		mov _fileSize,eax
		.if !eax || eax> 40000000h	;0.5gb
			invoke CloseHandle,esi
			jmp done
		.endif
		
		invoke CreateFileMapping,esi,NULL,PAGE_READONLY,NULL,_fileSize,NULL
		mov edi,eax
		invoke MapViewOfFile,edi,FILE_MAP_READ,0,0,0
		mov ebx,eax
		
		invoke Suspendallthreads
		mov edx,process
		invoke VirtualAllocEx,[edx],NULL,_fileSize,MEM_COMMIT,PAGE_EXECUTE_READWRITE
		mov pmem.base,eax
		invoke Writememory,ebx,pmem.base,_fileSize,MM_REPORT
		invoke Resumeallthreads
		
		invoke CloseHandle,edi
		invoke CloseHandle,esi
		
		
		mov edx,process
		invoke VirtualQueryEx,[edx],pmem.base,addr pmbi,sizeof pmbi
		mov eax,pmbi.RegionSize
		mov pmem._size,eax
		
		mov eax,pmbi.AllocationProtect
		mov pmem.initaccess,eax
		mov eax,pmbi.Protect
		mov pmem.access,eax
		mov pmem._type,MEM_RSRC or MEM_CODE or MEM_DATA or TY_NEW or TY_CONFIRMED
		
		mov esi,pt
		assume esi:ptr t_table
		invoke Addsorteddata,addr [esi].sorted,addr pmem
		mov eax,pmem.base
		inc eax
		invoke Findsortedindexrange,addr [esi].sorted, pmem.base,eax
		invoke Settableselection,esi,eax
		
		
		assume edi:nothing
		assume esi:nothing
	 done:
		mov eax,MENU_REDRAW
	.else
		mov eax,MENU_REDRAW
	.endif	
	ret
Submemoryload endp


Submemoryalloc proc c uses esi edi ebx pt,_name,index,mode
	LOCAL filename[MAX_PATH]:WORD
	LOCAL _fileSize:DWORD
	LOCAL pmem:t_memory
	LOCAL pmbi:MEMORY_BASIC_INFORMATION
	
	mov eax,mode
	.if eax==MENU_VERIFY
		mov eax,MENU_NORMAL
	.elseif eax==MENU_EXECUTE

		mov edx,process
		.if edx
			invoke VirtualAllocEx,[edx],NULL,gmemalocsize,MEM_COMMIT,PAGE_EXECUTE_READWRITE
			mov pmem.base,eax
			
			invoke Listmemory
			invoke Setcpu,0,pmem.base,0,0,0,CPU_ASMHIST or CPU_ASMCENTER
			invoke Broadcast,484h,0,0

		.endif
		mov eax,MENU_REDRAW
	.else
		mov eax,MENU_REDRAW
	.endif	
	ret
Submemoryalloc endp

