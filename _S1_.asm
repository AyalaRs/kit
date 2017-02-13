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
	LOCAL lpsystemtime:SYSTEMTIME

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

