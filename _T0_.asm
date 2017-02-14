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
t_DiData        struc ; (sizeof=0xC, mappedto_426)
	sdata           dw ?
	rdata           dw ?
	cp              dd ?                    ; offset
	next            dd ?                    ; offset
t_DiData        ends

; ---------------------------------------------------------------------------

t_CiData        struc ; (sizeof=0x6, mappedto_425)
	data            dw ?
	next            dd ?                    ; offset
t_CiData        ends

t_Cryption       struc ; 
	Cbuf            dd ?                    
	tmpbuf          dd ?
	tmpcp           dd ?                   
	                                     
	dst             dd ?                    
	                                     
	dstlen          dd ?                    
	                                     
	dstcp           dd ?
	src             dd ?
	srclen          dd ?
	srccp           dd ?
	code            dd ?
	decode          dd ?
	ccp             dd ?
	dcp             dd ?
	tlen            dd ?
t_Cryption       ends


t_datakit struc
	_sign	dd ?
	_length	dd ?
	_data	dd 0 dup(?)
t_datakit ends


.data
	g_Cryption t_Cryption <>
.code
SIGN_UNICODE_END 	EQU 4000h
SIGN_ASCII_END 		EQU 100h
SIGN_DATA_HEAD		EQU	6470430Ah

m_Encryption proc _code
	mov eax,g_Cryption.code
	mov ecx,g_Cryption.tlen
	shl eax,cl
	or eax,_code
	mov g_Cryption.code,eax
	
	add g_Cryption.ccp,ecx
	
	.while g_Cryption.ccp>=8
		sub g_Cryption.ccp,8
		
		mov edx,g_Cryption.dstcp
		.if edx < g_Cryption.dstlen
			mov eax,g_Cryption.code
			mov ecx,g_Cryption.ccp
			shr eax,cl
			
			add edx,g_Cryption.dst
			mov [edx],al
			inc g_Cryption.dstcp
		.endif
		
		mov ecx,g_Cryption.ccp
		mov eax,1
		shl eax,cl
		dec eax
		and g_Cryption.code,eax
	.endw

	ret
m_Encryption endp

m_Decryption_get proc
	mov eax,g_Cryption.dcp
	mov ecx,g_Cryption.srccp
	.while eax<g_Cryption.tlen && ecx<g_Cryption.srclen
		mov eax,g_Cryption.decode
		shl eax,8
		mov edx,g_Cryption.src
		add edx,ecx
		movzx edx,byte ptr [edx]
		or eax,edx
		mov g_Cryption.decode,eax
		
		inc g_Cryption.srccp
		add g_Cryption.dcp,8		
		mov eax,g_Cryption.dcp
		mov ecx,g_Cryption.srccp
	.endw
	mov ecx,g_Cryption.tlen
	sub g_Cryption.dcp,ecx
	
	mov ecx,g_Cryption.dcp
	mov eax,g_Cryption.decode
	shr eax,cl
	
	mov eax,1
	shl eax,cl
	dec eax
	and g_Cryption.decode,eax
	ret
m_Decryption_get endp

m_Decryption_fci proc uses esi tci,oci
	mov eax,oci						;return oci
	mov esi,tci
	assume esi:ptr t_CiData
	
	mov ecx,[esi].next
	.if ecx
		echo .........
		invoke m_Decryption_fci,ecx,oci
		mov eax,g_Cryption.dstcp	;return &cp
		.if eax < g_Cryption.dstlen 
			mov ecx,eax
			add ecx,g_Cryption.dst
			
			movzx edx,[esi].data
			mov [ecx],dl
			
			inc g_Cryption.dstcp
		.endif
	.else
		mov ecx,g_Cryption.dstcp
		.if ecx < g_Cryption.dstlen 
			mov eax,ecx
			add eax,g_Cryption.dst	;return &dst[cp]
			
			movzx ecx,[esi].data
			mov edx,oci
			mov [edx],ecx
			
			mov [eax],cl
			inc g_Cryption.dstcp
		.endif
	.endif
	
	
	
	assume esi:nothing
	ret
m_Decryption_fci endp

m_Decryption_fill proc cp1,cp2,fc
	LOCAL oci:DWORD
	
	mov eax,cp2
	mov ecx,sizeof t_CiData
	.if eax>=g_Cryption.tmpcp
		mov eax,cp1
	.endif
		
	mul ecx
	lea ecx,oci
	add eax,g_Cryption.tmpbuf
	invoke m_Decryption_fci,eax,ecx
	
	mov eax,cp2
	mov ecx,g_Cryption.dstcp
	.if eax>=g_Cryption.tmpcp && ecx<g_Cryption.dstlen
		add ecx,g_Cryption.dst
		mov edx,fc
		mov [ecx],dl
		inc g_Cryption.dstcp
	.endif
	
	mov eax,oci
	ret
m_Decryption_fill endp



m_Compress proc uses esi edi ebx bufin,nbufin,bufout,nbufout
	
	.if !bufin || !nbufin || !bufout || nbufout <=t_datakit._data
		xor eax,eax
		jmp done
	.endif
	

	invoke Memalloc,sizeof t_DiData * SIGN_UNICODE_END,ZEROINIT
	mov g_Cryption.Cbuf,eax
	
	.if !g_Cryption.Cbuf
		;xor eax,eax
		jmp done
	.endif

	mov edi,g_Cryption.Cbuf
	assume edi:ptr t_DiData
	
	lea ecx,[edi].rdata
	xor eax,eax
	.repeat
		mov [ecx],ax
		add ecx,sizeof t_DiData
		inc eax
	.until eax>= SIGN_UNICODE_END
	
	lea ecx,[edi].sdata
	xor eax,eax
	.repeat
		mov [ecx],ax
		add ecx,sizeof t_DiData
		inc eax
	.until eax>= SIGN_ASCII_END
	
	mov edi,bufout
	mov ecx,nbufout
	mov eax,nbufin
	assume edi:ptr t_datakit
	
	mov [edi]._sign,SIGN_DATA_HEAD	;"\nCpd"
	mov [edi]._length,eax
		
	mov g_Cryption.tmpcp,SIGN_ASCII_END
	mov g_Cryption.tlen, 9		;(1 << 9)
	mov g_Cryption.dst,edi
	mov g_Cryption.dstlen,ecx
	mov g_Cryption.dstcp,t_datakit._data		;lengthof head
	mov g_Cryption.code,0
	mov g_Cryption.ccp,0
	
	mov eax,bufin
	mov g_Cryption.src,eax
	mov eax,nbufin
	mov g_Cryption.srclen,eax
	mov g_Cryption.srccp,0
	
	mov esi,bufin
	
	mov eax,g_Cryption.srccp
	movzx eax,byte ptr [esi+eax]
	
	mov ecx,sizeof t_DiData
	mul ecx
	mov ebx,g_Cryption.Cbuf
	add ebx,eax
	
	assume ebx:ptr t_DiData
	
	inc g_Cryption.srccp
	mov ecx,g_Cryption.srccp
	
	.while ecx < g_Cryption.srclen 
		mov eax,g_Cryption.src
		movzx esi,byte ptr [eax+ecx]
		
		mov edi,[ebx].cp
		assume edi:ptr t_DiData
		.if !edi
			mov edi,ebx
		.else	
			.while si!=[edi].sdata && [edi].next
				mov edi,[edi].next
			.endw
		.endif
		
		.if si==[edi].sdata && ebx!=edi
			mov ebx,edi
		.else
			movzx ecx,[ebx].rdata
			invoke m_Encryption,ecx	
			
			mov eax,g_Cryption.tmpcp
			mov ecx,sizeof t_DiData
			mul ecx
			add eax,g_Cryption.Cbuf
			mov (t_DiData ptr [eax]).sdata,si
			inc g_Cryption.tmpcp
			
			.if edi==ebx
				mov [edi].cp,eax
			.else
				mov [edi].next,eax
			.endif
			
			
			mov eax,1
			mov ecx,g_Cryption.tlen
			shl eax,cl
			.if eax==g_Cryption.tmpcp
				inc g_Cryption.tlen 
			.endif
			
			.if g_Cryption.tmpcp==SIGN_UNICODE_END
				
				xor eax,eax
				mov ecx,g_Cryption.Cbuf
				assume ecx:ptr t_DiData
				.repeat
					mov [ecx].cp,0
					mov [ecx].next,0
					add ecx,sizeof t_DiData
					inc eax
				.until eax>=SIGN_UNICODE_END
				assume ecx:nothing
				
				mov g_Cryption.tmpcp,SIGN_ASCII_END
				mov g_Cryption.tlen,9
			.endif
			
			mov eax,esi
			mov ecx,sizeof t_DiData
			mul ecx
			add eax,g_Cryption.Cbuf
			mov ebx,eax
		.endif
		inc g_Cryption.srccp
		mov ecx,g_Cryption.srccp
	.endw
	invoke m_Encryption,[ebx].rdata
	
	mov eax,g_Cryption.dstcp
	mov edx,g_Cryption.ccp
	.if edx >0 && eax < g_Cryption.dstlen
		mov al,byte ptr g_Cryption.code
		mov ecx,8
		sub ecx,edx
		shl al,cl
		mov ecx,g_Cryption.dstcp
		add ecx,g_Cryption.dst
		mov [ecx],al
		inc g_Cryption.dstcp
	.endif
	invoke Memfree,g_Cryption.Cbuf
	mov eax,g_Cryption.dstcp
	assume esi:nothing
	assume edi:nothing
	assume ebx:nothing
done:	
	ret
m_Compress endp




m_Decompress proc uses esi edi ebx bufin,nbufin,bufout,nbufout
	
	.if !bufin || !nbufin || !bufout || nbufout <=t_datakit._data
		xor eax,eax
		jmp done
	.endif
	
	mov ecx,nbufout
	mov esi,bufin
	assume esi:ptr t_datakit
	.if [esi]._sign!=SIGN_DATA_HEAD || [esi]._length > ecx
		xor eax,eax
		jmp done
	.endif
	
	invoke Memalloc,sizeof t_CiData * SIGN_UNICODE_END,ZEROINIT
	mov g_Cryption.tmpbuf,eax
	.if !g_Cryption.tmpbuf
		;xor eax,eax
		jmp done
	.endif
	
	mov edi,g_Cryption.tmpbuf
	assume edi:ptr t_CiData
	
	lea ecx,[edi].data
	xor eax,eax
	.repeat
		mov [ecx],ax
		add ecx,sizeof t_CiData
		inc eax
	.until eax>=SIGN_ASCII_END
	
	mov g_Cryption.tmpcp,SIGN_ASCII_END
	mov g_Cryption.tlen,9
	mov g_Cryption.decode,0
	mov g_Cryption.dcp,0
	
	mov eax,bufin
	mov g_Cryption.src,eax
	mov eax,nbufin
	mov g_Cryption.srclen,eax
	mov eax,bufout
	mov g_Cryption.dst,eax
	mov eax,nbufout
	mov g_Cryption.dstlen,eax
	
	mov g_Cryption.srccp,t_datakit._data
	mov g_Cryption.dstcp,0
	
	invoke m_Decryption_get
	mov edi,eax
	invoke m_Decryption_fill,edi,edi,0
	mov esi,eax
	
	mov ecx,g_Cryption.srccp
	mov edx,g_Cryption.dcp
	.while ecx< g_Cryption.srclen || edx >= g_Cryption.tlen
		invoke m_Decryption_get
		mov ebx,eax
		
		.if eax>g_Cryption.tmpcp
			mov g_Cryption.dstcp,0
			.break
		.endif
		
		invoke m_Decryption_fill,edi,ebx,esi
		mov esi,eax
		
		.if g_Cryption.tmpcp==SIGN_UNICODE_END-SIZEOF WORD
			mov eax,SIGN_ASCII_END
			mov ecx,sizeof t_CiData
			mul ecx
			add eax,g_Cryption.tmpbuf
			mov ecx,SIGN_ASCII_END
			assume eax:ptr t_CiData
			.repeat
				mov [eax].next,0
				add eax,sizeof t_CiData
				inc ecx
			.until ecx>=SIGN_UNICODE_END
			assume eax:nothing
			
			mov g_Cryption.tmpcp,SIGN_ASCII_END
			mov g_Cryption.tlen,9
			
			mov eax,g_Cryption.srccp
			mov edx,g_Cryption.dcp
			.if eax<g_Cryption.srclen || edx >= g_Cryption.tlen
				invoke m_Decryption_get
				mov ebx,eax
				invoke m_Decryption_fill,ebx,ebx,esi
				mov esi,eax
			.endif
		.else
			mov eax,g_Cryption.tmpcp
			mov ecx,sizeof t_CiData
			mul ecx
			add eax,g_Cryption.tmpbuf
			mov ecx,eax
			
			mov eax,edi
			mov edx,sizeof t_CiData
			mul edx
			add eax,g_Cryption.tmpbuf
			
			assume ecx:ptr t_CiData
			mov [ecx].data,si
			mov [ecx].next,eax
			assume ecx:nothing
			
			mov eax,1
			mov ecx,g_Cryption.tlen
			shl eax,cl
			mov ecx,g_Cryption.tmpcp
			inc ecx
			.if eax==ecx
				inc g_Cryption.tlen
			.endif
		.endif
		mov edi,ebx
	.endw
	invoke Memfree,g_Cryption.tmpbuf
	mov eax,g_Cryption.dstcp
		
done:	
	ret
m_Decompress endp













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