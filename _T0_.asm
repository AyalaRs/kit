 REPORT       EQU 0000 ;         // Report memory allocation errors
 SILENT       EQU 0001 ;         // Don't report allocation errors
 ZEROINIT     EQU 0002 ;         // Initialize memory to 0

 TABLE_DUMP_F   EQU TABLE_SYNTAX or TABLE_SAVEAPP or TABLE_SAVEPOS or TABLE_WANTCHAR or TABLE_BYTE or TABLE_USERDEF
 TABLE_DUMP_M   EQU TABLE_AUTOUPD or TABLE_DUMP_F
 
 _M_	EQU TRUE
 
.data
	tabmenu t_menu <0,0,0,0,0>
.code
IFDEF _M_ 
comment #
typedef int  MENUFUNC(struct t_table *,wchar_t *,ulong,int);
typedef long TABFUNC(struct t_table *,HWND,UINT,WPARAM,LPARAM);
typedef int  UPDATEFUNC(struct t_table *);

typedef int DRAWFUNC(wchar_t *s,uchar *mask,int *select,struct t_table *pt,t_sorthdr *ps,int column,void *cache)
typedef void TABSELFUNC(struct t_table *,int,int);
;#


m_drawfunc proc c a1,a2,a3,a4,a5,a6,a7
	
	ret
m_drawfunc endp


m_Getstructureitemcount proc _name,_size
	
	invoke Getstructureitemcount,_name,_size
	.if !eax
		mov eax,_size
		.if eax
			mov dword ptr [eax],3*4
		.endif
		mov eax,3
	.endif
	ret
m_Getstructureitemcount endp

m_Decodestructure proc uses esi edi ebx _name,_addr,_item0,_ps,ns
	invoke Decodestructure,_name,_addr,_item0,_ps,ns
	.if !eax
		mov esi,_ps
		assume esi:ptr t_strdec
		mov ebx,0
		.repeat
			mov [esi]._size,4
			mov [esi]._addr,0
			mov [esi]._value,0
			mov [esi]._valuevalid,1
			mov [esi]._dec,DEC_FLOAT
			mov [esi]._decsize,4
			mov [esi]._reserved,0
			mov [esi]._prtype[0*2],0
			invoke RtlMoveMemory,addr [esi]._name,$CTW0("Test"),TEXTLEN 
			invoke RtlMoveMemory,addr [esi]._text,$CTW0("1234"),TEXTLEN 
			add esi,sizeof t_strdec
			inc ebx
		.until ebx>=3
		assume esi:nothing
		mov eax,3
	.endif
	ret
m_Decodestructure endp

m_Decodeaddress proc _addr,_amod,_mode,_symb,_nsymb,_comment
	invoke Decodeaddress,_addr,_amod,_mode,_symb,_nsymb,_comment
	ret
m_Decodeaddress endp

;;du [[5E9E58+8]*4+[5E9E58]]+[5E9E20]+4
m_Decodestructfordump proc uses esi edi ebx pd,strucname,mode
	LOCAL i:DWORD
	LOCAL j:DWORD
	LOCAL k:DWORD
	LOCAL n:DWORD
	LOCAL nmax:DWORD
	LOCAL p:DWORD
	
	mov esi,pd
	assume esi:ptr t_dump
	mov edi,strucname
	;args check
	.if !esi || ![esi]._size || !edi || word ptr [edi]==0
		xor eax,eax
		jmp done
	.endif
	
	;alloc mem
	invoke m_Getstructureitemcount,strucname,0
	.if !eax
		xor eax,eax
		jmp done
	.endif
	
	mov nmax,eax
	mov ecx,sizeof t_strdec
	mul ecx
	invoke Memalloc,eax,0
	mov ebx,eax
	
	.if !ebx
		xor eax,eax
		jmp done
	.endif
	mov p,ebx	;for free
	
	mov edi,[esi].decode
	.if !edi
		invoke Memalloc,[esi]._size,ZEROINIT
		mov edi,eax
	.endif
	.if !edi
		xor eax,eax
		jmp done
	.endif
	
	invoke m_Decodestructure,strucname,0,0,ebx,nmax
	mov nmax,eax
	
	and j,0
	and k,0
	and n,0
	
	assume ebx:ptr t_strdec
	mov ecx,[ebx]._size
	add ecx,k
	
	.while ecx <= [esi]._size
		
		mov al,[ebx]._dec
		.if al != DEC_ASCII && al != DEC_UNICODE
			xor edx,edx
			.while edx<[ebx]._size
				lea ecx,[edi+edx]
				add ecx,k
				mov [ecx],al
				
				mov ecx,edx
				add ecx,k
				mov j,ecx
				
				mov i,1
				movzx ecx,[ebx]._decsize 
				
				.while i < ecx 
					mov ecx,edi
					add ecx,j
					add ecx,i
					mov byte ptr [ecx],DEC_NEXTDATA
					inc i
					movzx ecx,[ebx]._decsize 
				.endw
				
				movzx ecx,[ebx]._decsize
				add edx,ecx
			.endw
		.else
			xor edx,edx
			.while edx < [ebx]._size
				lea ecx,[edi+edx]
				add ecx,k
				.if edx & 0Fh
					mov byte ptr [ecx],DEC_NEXTDATA
				.else
					mov byte ptr [ecx],al
					
					mov ecx,edx
					add ecx,k
					mov j,ecx
				.endif
				inc edx
			.endw
		.endif
		
		mov ecx,[ebx]._size
		add k,ecx
		add ebx,sizeof t_strdec
		inc n
		mov ecx,n
		.break .if ecx>=nmax
		
		mov ecx,k
	.endw
	
	mov ecx,k
	;assume mode==0
	.while ecx<[esi]._size
		mov byte ptr [edi+ecx],DEC_FILLDATA
		inc ecx	
	.endw
	mov [esi].decode,edi 
	invoke RtlMoveMemory,addr [esi].strname,strucname,32
	
	;invoke Memfree,p
	
	assume ebx:nothing
	assume esi:nothing
	
	mov eax,nmax
done:	
	ret
m_Decodestructfordump endp

m_Createdumpwindow proc uses esi edi ebx _title,_base,_size,_path,dumptype,sel0,sel1,strucname
	
	mov eax,strucname
	.if eax==0 || word ptr [eax]==0
		jmp done
	.endif
	
	invoke Memalloc,sizeof t_dump,ZEROINIT
	mov esi,eax
	.if esi==0
		jmp done
	.endif
	assume esi:ptr t_dump
	
	mov ebx,_base
	mov ecx,_size
	mov eax,sel0
	mov edx,sel1
	lea edi,[ebx+ecx]
	.if eax <= edx && eax>=ebx && edx <= edi
		mov eax,ebx
		mov edx,ebx
	.endif
	mov [esi].base,ebx
	mov [esi]._size,ecx
	mov [esi].table.sorted.n,ecx
	mov [esi].threadid,0
	mov [esi].table.mode,TABLE_DUMP_M
	mov [esi].table.bar.visible,TRUE
	mov [esi].table.custommode,0
	mov [esi].table.customdata,esi
	mov [esi].sel0,eax
	mov [esi].sel1,edx
	mov [esi]._addr,eax
	mov [esi].selstart,eax
	mov [esi].selend,edx
	mov [esi].relreg,-1
	mov [esi].reladdr,ebx
	mov [esi].graylimit,0
	
	mov [esi].dumpselfunc,0
	
	mov edx,hollyinst
	mov eax,4be974h - 400000h
	add eax,[edx]
	mov [esi].table.tabfunc,eax
	mov [esi].table.updatefunc,0
	
	mov eax,4b9064h - 400000h
	add eax,[edx]
	mov [esi].table.drawfunc,eax
	mov [esi].table.tableselfunc,0
	
	mov eax,5532c8h - 400000h
	add eax,[edx]
	mov [esi].table.menu,eax
	or [esi].menutype,MENU_CHKPARENT

	invoke m_Decodestructfordump,esi,strucname,1
	mov edi,eax
	
	
	invoke RtlMoveMemory,addr [esi].table._name,$CTW0("Structure"),32
	invoke Setdumptype,esi,dumptype
	
	mov edx,hollyinst
	invoke Createtablewindow,addr [esi].table,edi,[esi].table.bar.nbar,[edx],$CTW0("ICO_D"),_title
	mov eax,[esi].table.hw
	assume esi:nothing
done:
	ret
m_Createdumpwindow endp


ENDIF