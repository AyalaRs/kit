.386
.model flat,stdcall
option casemap:none

include windows.inc

include gdi32.inc
includelib gdi32.lib

include user32.inc
includelib user32.lib

include kernel32.inc
includelib kernel32.lib

include msvcrt.inc
includelib msvcrt.lib

include macro\strings.mac

include CmdBar.inc
include _A0_.ASM
include _T0_.ASM
include _S0_.ASM
include _S1_.ASM

comment #


;#

bClassName 		EQU	$CTW0("CmdBarWndClass")	
bWndName		EQU	$CTW0("CmdBarWindow")
bPluginname		EQU $CTW0("CmdBar")
bPluginversion	EQU $CTW0("1.00.02")


;--------------------------------------------------------------------------------
;	
;--------------------------------------------------------------------------------
.code

WndProc proc hWnd,Msg,wParam,lParam
	.if Msg==5
		invoke SendMessageW,ghWnd,5,wParam,lParam
	.endif
	invoke CallWindowProcW,gPrevWndProc,hWnd,Msg,wParam,lParam
	
	ret
WndProc endp

ComboBoxProc proc hWnd,Msg,wParam,lParam
	LOCAL info[MAX_PATH]:WORD
	LOCAL show[MAX_PATH]:WORD
	mov eax,Msg
	.if eax==100h	;WM_KEYDOWN
		mov eax,wParam
		.if eax==13	;key_enter
			invoke GetWindowTextLengthW,ghComboBox
			.if eax>0	
				invoke GetWindowTextW,ghComboBox,addr info,MAX_PATH-1
				
				invoke Execute,addr info,addr show
				.if !eax
					invoke addline,addr info	
				.endif
				invoke SetWindowTextW,ghEdit,addr show
				invoke SetFocus,ghComboBox
			.endif
			xor eax,eax
		.elseif eax==17	;VK_CONTROL
			xor eax,eax
		.elseif eax==27	;VK_ESCAPE
			invoke SetWindowTextW,ghComboBox,offset gString
			invoke SetWindowTextW,ghEdit,offset gString
			xor eax,eax
		.else
			invoke CallWindowProcW,gPrevCBProc, hWnd, Msg, wParam, lParam
		.endif
	.elseif eax==101h ;WM_KEYUP
		.if (wParam !=13 && wParam != 17 && wParam != 27)
			invoke GetWindowTextW,ghComboBox,addr info,MAX_PATH-1
			invoke showinfo,addr info
		.endif
		invoke CallWindowProcW,gPrevCBProc, hWnd, Msg, wParam, lParam
	.elseif eax==102h && (wParam ==13 || wParam==27)	;WM_CHAR VK_ESCAPE
		xor eax,eax
	.else
		invoke CallWindowProcW,gPrevCBProc, hWnd, Msg, wParam, lParam	
	.endif
	
	ret
ComboBoxProc endp

bWndMov proc uses ebx
	LOCAL lpRect:RECT
	lea ebx,lpRect
	assume ebx:ptr RECT
	
	mov edx,hwollymain
	invoke GetClientRect,[edx],ebx
	
	mov eax,[ebx].right
	sub eax,[ebx].left
	mov ecx,[ebx].bottom
	sub ecx,45
	
	invoke MoveWindow,ghWnd,0,ecx,eax,25,TRUE
	invoke ShowWindow,ghWnd,5
	
	assume ebx:nothing
	ret
bWndMov endp
bWndMovi proc uses ebx
	LOCAL lpRect:RECT
	lea ebx,lpRect
	assume ebx:ptr RECT
	mov edx,hwollymain
	invoke GetClientRect,[edx],ebx
	
	mov eax,[ebx].right
	sub eax,450
	
	invoke MoveWindow,ghEdit,440,3,eax,19,TRUE
	invoke ShowWindow,ghEdit,5
	
	assume ebx:nothing
	ret
bWndMovi endp
bWndMovc proc uses ebx esi

	LOCAL lpPoint:POINT
	LOCAL lpRect1:RECT
	LOCAL lpRect2:RECT
	LOCAL lpRect:RECT
	mov edx,hwollymain
	invoke GetWindowRect,[edx],addr lpRect1
	mov edx,hwclient
	invoke GetClientRect,[edx],addr lpRect2
	
	mov eax,[lpRect1].left
	mov [lpPoint].x,eax
	
	mov eax,[lpRect1].top
	mov [lpPoint].y,eax
	
	mov edx,hwollymain
	invoke ScreenToClient,[edx],addr lpPoint
	
	mov edx,[lpRect2].top
	cmp edx,[lpPoint].y
	setnz al
	movzx esi,al
	
	lea ebx,lpRect
	assume ebx:ptr RECT
	mov edx,hwollymain
	invoke GetClientRect,[edx],ebx
	
	neg esi 
	sbb esi,esi
	and esi,17h
	
	mov eax,[ebx].bottom
	sub eax,esi
	sub eax,[ebx].top
	sub eax,45
	
	mov ecx,[ebx].right
	sub ecx,[ebx].left
	
	mov edx,hwclient
	invoke MoveWindow,[edx],0,esi,ecx,eax,TRUE

	assume ebx:nothing
	ret
bWndMovc endp
bWndPaint proc uses esi edi ebx hwnd
	LOCAL Paint:PAINTSTRUCT
	LOCAL Rect:RECT
	invoke bWndMov
	invoke bWndMovi
	invoke bWndMovc
	invoke BeginPaint,hwnd,addr Paint
	mov esi,eax
	invoke GetClientRect,hwnd,addr Rect
	invoke GetSysColor,15
	invoke CreateSolidBrush,eax
	mov edi,eax
	invoke FillRect,esi,addr Rect,edi
	invoke DeleteObject,edi
	invoke EndPaint,hwnd,addr Paint
	mov edx,hwollymain
	invoke InvalidateRect,[edx],0,TRUE
	xor eax,eax
	ret
bWndPaint endp

bWndSize proc hwnd 
	invoke bWndMovc
	invoke bWndMovi
	invoke bWndMov
	mov edx,hwollymain
	invoke InvalidateRect,[edx],0,TRUE
	xor eax,eax
	ret
bWndSize endp

bWndSetFocus proc hwnd
	invoke SetFocus,ghComboBox
	xor eax,eax
	ret
bWndSetFocus endp

bWndCreate proc uses esi edi ebx hwnd
	LOCAL Rect:RECT
	LOCAL lpBtnName[102]:WORD
	invoke GetClientRect,hwnd,addr Rect
	
	mov esi,1001
	mov ebx,1
	mov edi,5
	.repeat
		invoke wsprintfW,addr lpBtnName,$CTW0("M%d"),ebx
		
		mov edx,hollyinst
		invoke CreateWindowExW,0,$CTW0("BUTTON"),addr lpBtnName,5001800Bh,edi,3,28,19,hwnd,esi,[edx],0
		mov ghBtn[ebx*4][-4],eax
		inc esi
		inc ebx
		lea edi,[edi][28]
	.until ebx==6
	
	mov esi,hollyinst
	invoke CreateWindowExW,0,$CTW0("STATIC"),$CTW0("Command :"),05000000Bh,150,4,80,20,hwnd,1003,[esi],0
	invoke CreateWindowExW,0,$CTW0("COMBOBOX"),offset gString,050A10E42h,230,1,200,200,hwnd,1001,[esi],0
	mov ghComboBox,eax
	invoke GetWindow,eax,5
	invoke SetWindowLongW,eax,-4,offset ComboBoxProc
	mov gPrevCBProc,eax
	
	mov eax,[Rect].right
	sub eax,50
	
	invoke CreateWindowExW,0,$CTW0("EDIT"),offset gString,050800804h,440,3,eax,19,hwnd,0,[esi],0
	mov ghEdit,eax 
	
	xor eax,eax
	ret
bWndCreate endp

bWndDrawItem proc uses esi edi ebx hwnd,lParam
	LOCAL Rect:RECT
	LOCAL dRect:RECT
	LOCAL wString[102]:WORD
	
	mov esi,lParam
	mov eax,(DRAWITEMSTRUCT ptr [esi]).CtlID
	
	.if eax>=1001 && eax<=1005
		assume esi:ptr DRAWITEMSTRUCT
		mov edi,[esi].hdc
		invoke SetBkMode,edi,1
		invoke GetSysColor,15
		invoke CreateSolidBrush,eax
		mov ebx,eax
		invoke RtlMoveMemory,addr Rect,addr [esi].rcItem,sizeof RECT
		invoke FillRect,edi,addr Rect,ebx
		invoke DeleteObject,ebx
		.if [esi].itemState & 1
			invoke GetSysColor,16
			invoke CreateSolidBrush,eax
			mov ebx,eax
			invoke FrameRect,edi,addr Rect,ebx
			invoke DeleteObject,ebx
		.endif
		invoke GetDlgItem,hwnd,[esi].CtlID
		lea ebx,wString
		invoke GetWindowTextW,eax,ebx,100
		invoke GetDlgItem,hwnd,[esi].CtlID
		
		.if (word ptr [wString]!=2f30h) ;"/0"
			invoke RtlMoveMemory,addr Rect,addr [esi].rcItem,sizeof RECT
			.if [esi].itemState & 1
				invoke OffsetRect,addr Rect,1,1
			.endif
			invoke RtlMoveMemory,addr dRect,addr Rect,sizeof RECT
			invoke DrawTextW,edi,ebx,-1,addr Rect,411h
			
			mov eax,dRect.right
			sub eax,dRect.left
			sub eax,Rect.right
			add eax,Rect.left
			cdq
			sub eax,edx
			shr eax,1
			mov ecx,eax
			
			
			mov eax,dRect.bottom
			sub eax,dRect.top
			sub eax,Rect.bottom
			add eax,Rect.top
			cdq
			sub eax,edx
			shr eax,1
			mov edx,eax
			
			invoke OffsetRect,addr Rect,ecx,edx
			invoke SetBkMode,edi,1
			
			.if [esi].itemState & 4
				invoke OffsetRect,addr Rect,1,1 
				invoke GetSysColor,20
				invoke SetTextColor,edi,eax
				invoke DrawTextW,edi,ebx,-1,addr Rect,11h
				invoke OffsetRect,addr Rect,-1,-1
				invoke GetSysColor,16
				invoke SetTextColor,edi,eax
			.else
				mov eax,1001
				add eax,giBtn
				.if [esi].CtlID==eax
					invoke SetTextColor,edi,0ffh
				.else
					invoke SetTextColor,edi,0
				.endif		
				invoke GetSysColor,15
				invoke SetBkColor,edi,eax
			.endif
			invoke DrawTextW,edi,ebx,-1,addr Rect,11h
		.endif
		
		assume esi:nothing
	.endif
	xor eax,eax
	inc eax
	ret
bWndDrawItem endp

bWndCommand proc wParam
	LOCAL Rect:RECT
	mov eax,wParam
	.if eax>=1001 && eax<=1005
		sub eax,1001
		.if [eax*4][gDumpaddr] && eax!=giBtn
			mov giBtn,eax
			mov eax,gDumpaddr[eax*4]
			invoke Setcpu,0,0,eax,-1,0,16
			invoke GetClientRect,ghWnd,addr Rect 
			invoke InvalidateRect,ghWnd,0,1
		.endif
	.endif
	xor eax,eax
	ret
bWndCommand endp

bWndProc proc hwnd,Msg,wParam,lParam
	mov eax,Msg
	.if eax==15	;WM_PAINT
		invoke bWndPaint,hwnd
	.elseif eax==5	;WM_SIZE
		invoke bWndSize,hwnd
	.elseif eax==7	;WM_SETFOCUS
		invoke bWndSetFocus,hwnd
	.elseif eax==1	;WM_CREATE
		invoke bWndCreate,hwnd
	.elseif eax==43	;WM_DRAWITEM
		invoke bWndDrawItem,hwnd,lParam
	.elseif eax==273;WM_COMMAND
		invoke bWndCommand,wParam
	.else
		invoke DefWindowProcW,hwnd,Msg,wParam,lParam
	.endif
	
	ret
bWndProc endp


align 4
ODBG2_Plugininit proc c uses ebx
	LOCAL lpWNDCLASSEXW:WNDCLASSEX
	LOCAL lpRect:RECT
	
	lea ebx,lpWNDCLASSEXW
	assume ebx:ptr WNDCLASSEX
	
	mov [ebx].cbSize,sizeof WNDCLASSEX
	mov [ebx].style,11
	mov [ebx].lpfnWndProc,offset bWndProc
	mov [ebx].cbClsExtra,0
	mov [ebx].cbWndExtra,0	
	
	mov eax,hollyinst
	mov eax,dword ptr [eax]
	
	mov [ebx].hInstance,eax	
	mov [ebx].hIcon,0
	
	invoke LoadCursorW,eax,7F00h
	mov [ebx].hCursor,eax	
	mov [ebx].hbrBackground,15	
	mov [ebx].lpszMenuName,0
	mov [ebx].lpszClassName,bClassName
	mov [ebx].hIconSm,0
	assume ebx:nothing
	
	invoke RegisterClassExW,ebx 
	
	lea ebx,lpRect
	assume ebx:ptr RECT
	mov edx,hwollymain
	invoke GetClientRect,[edx],ebx
	
	
	mov eax,[ebx].bottom
	sub eax,45
	
	mov edx,hwollymain
	mov ecx,hollyinst
	
	invoke CreateWindowExW,0,\
						bClassName,\
						bWndName,\
						50000000h,\;WS_CHILD|WS_VISIBLE
						0,\
						eax,\
						[ebx].right,\
						25,\
						[edx],\
						0,\
						[ecx],\
						0
	mov ghWnd,eax
	
	assume ebx:nothing
	
	mov edx,hwollymain
	invoke SetWindowLongW,[edx],-4,offset WndProc
	mov gPrevWndProc,eax
	
	xor eax,eax
	ret
ODBG2_Plugininit endp

;int __cdecl ODBG2_Plugindump(t_dump *pd,
;  wchar_t *s,uchar *mask,int n,int *select,ulong addr,int column)
align 4
ODBG2_Plugindump proc c uses esi edi ebx pd,s,_mask,n,select,_addr,column
	LOCAL info[MAX_PATH]:WORD
.data
	gpT_dump  dd 0
	gSelstart dd 5 dup(0)
	gSelend	  dd 5 dup(0)
.code	
	.if column==DF_FILLCACHE
		mov esi,pd
		mov ebx,_addr
		assume esi:ptr t_dump
		.if esi && ebx
			mov eax,[esi].menutype
			and eax,DMT_CPUMASK
			.if eax==DMT_CPUDUMP
				mov eax,giBtn
				.if eax || eax!= gDumpaddr[0*4]
					invoke wsprintfW,addr info,$CTW0("g_nCurDumpAddress: %d addr: %0.8x"),eax,[esi].selstart
					;varapi (void)    Tempinfo(wchar_t *format,...);
					invoke Tempinfo,addr info
					mov eax,giBtn
					mov edx,[esi].selend
					.if gDumpaddr[eax*4]!=edx
						mov gDumpaddr[eax*4],ebx
						mov edx,[esi].selstart
						mov gSelstart[eax*4],edx
						mov edx,[esi].selend
						mov gSelend[eax*4],edx
					.endif
					mov ecx,eax
					mov ebx,gSelstart[ecx*4]
					mov edi,gSelend[ecx*4]
					
					mov eax,edi
					sub eax,ebx
					cdq
					xor eax,edx
					sub eax,edx
					inc eax
					inc ecx
					mov gpT_dump,esi
					
					CTW  "MEM: %d, ",4,fmt
					CTW  "Start: 0x%08X, "
					CTW  "End: 0x%08X, "
					CTW0 "Block: 0x%X\{%d\}"
					
					invoke wsprintfW,addr info,offset fmt,\
									ecx,ebx,edi,eax,eax
					invoke Tempinfo,addr info				
					mov eax,giBtn
					mov edx,gSelstart[eax*4]
					mov [esi].sel0,edx
					
					mov edx,gSelend[eax*4]
					inc edx
					mov [esi].sel1,edx
					
				.else
					mov gDumpaddr[0*4],ebx
					mov gDumpaddr[1*4],ebx
					mov gDumpaddr[2*4],ebx
					mov gDumpaddr[3*4],ebx
					mov gDumpaddr[4*4],ebx
					mov gpT_dump,esi
				.endif
			.endif
		.endif
		assume esi:nothing
	.endif
	xor eax,eax
	ret
ODBG2_Plugindump endp
ODBG2_Pluginmenu proc c _type
.data
	submenu 	t_menu <$CTW0("about:"),$CTW0("about"),0,offset SubmenuFunc,0,<0>>
				t_menu <0,0,0,0,0,<0>>
	gMainmenu 	t_menu <$CTW0("CmdBar"),$CTW0("CmdBar"),0,0,offset submenu,<0>>
				t_menu <0,0,0,0,0,<0>>
.code
	invoke crt_wcscmp,_type,PWM_MAIN
	.if !eax
		mov eax,offset gMainmenu
		jmp done
	.endif
	
.data		
	gMemorymenu t_menu <$CTW0("Dump in file"),0,0,offset Submemorydump,0,<0>>
				t_menu <0,0,0,0,0,<0>>
.code	
	invoke crt_wcscmp,_type,PWM_MEMORY
	.if !eax
		mov eax,offset gMemorymenu
		jmp done
	.endif
	

	
	xor eax,eax
done:	
	ret
ODBG2_Pluginmenu endp
ODBG2_Pluginquery proc c ollydbgversion,features,pluginname,pluginversion
	.if ollydbgversion>=201
		invoke RtlMoveMemory,pluginname,bPluginname,32
		invoke RtlMoveMemory,pluginversion,bPluginversion,32
		mov eax,2010001h
	.else
		xor eax,eax
	.endif
	ret
ODBG2_Pluginquery endp
ODBG2_Pluginreset proc
	and gDumpaddr[0],0
	and gDumpaddr[4],0
	and gDumpaddr[8],0
	and gDumpaddr[0ch],0
	and gDumpaddr[10h],0
	and giBtn,0
	xor eax,eax
	ret
ODBG2_Pluginreset endp
ODBG2_Pluginnotify proc c action,data,p1,p2
	xor eax,eax
	ret
ODBG2_Pluginnotify endp
ODBG2_Pluginclose proc c
	xor eax,eax
	ret
ODBG2_Pluginclose endp
ODBG2_Pluginanalyse proc c t_module,pmod
	xor eax,eax
	ret
ODBG2_Pluginanalyse endp
ODBG2_Plugindestroy proc c
	mov edx,hollyinst
	invoke UnregisterClassW,bClassName,[edx]
	ret
ODBG2_Plugindestroy endp



dllmain proc uses edi esi ebx hInst:DWORD, reason:DWORD, reserved1:DWORD

	invoke GetModuleHandle,NULL
	mov gExeHande,eax
	invoke InitImportTable
	mov eax,1
	ret
dllmain endp

end dllmain