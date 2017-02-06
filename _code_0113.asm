.code

; _DWORD __fastcall System::Move(const void *, void *, int)
@System@Move$qqrpxvpvi:			; CODE XREF: .text:004E4D29p
					; .text:004E5997p ...
		push	esi
		push	edi
		mov	esi, eax
		mov	edi, edx
		mov	eax, ecx
		cmp	edi, esi
		ja	short loc_4E4F0B
		jz	short loc_4E4F29
		sar	ecx, 2
		js	short loc_4E4F29
		rep movsd
		mov	ecx, eax
		and	ecx, 3
		rep movsb
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

loc_4E4F0B:				; CODE XREF: .text:004E4EF6j
		lea	esi, [esi+ecx-4]
		lea	edi, [edi+ecx-4]
		sar	ecx, 2
		js	short loc_4E4F29
		std
		rep movsd
		mov	ecx, eax
		and	ecx, 3
		add	esi, 3
		add	edi, 3
		rep movsb
		cld

loc_4E4F29:				; CODE XREF: .text:004E4EF8j
					; .text:004E4EFDj ...
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------

unknown_libname_60:			; CODE XREF: .text:004E06FEp
		push	ebx		; Borland Visual Component Library & Packages
		push	esi
		push	edi
		mov	esi, eax
		push	eax
		test	eax, eax
		jz	short loc_4E4FA9
		xor	eax, eax
		xor	ebx, ebx
		mov	edi, 0CCCCCCCh

loc_4E4F3F:				; CODE XREF: .text:004E4F45j
		mov	bl, [esi]
		inc	esi
		cmp	bl, 20h
		jz	short loc_4E4F3F
		mov	ch, 0
		cmp	bl, 2Dh
		jz	short loc_4E4FB7
		cmp	bl, 2Bh
		jz	short loc_4E4FB9
		cmp	bl, 24h
		jz	short loc_4E4FBE
		cmp	bl, 78h
		jz	short loc_4E4FBE
		cmp	bl, 58h
		jz	short loc_4E4FBE
		cmp	bl, 30h
		jnz	short loc_4E4F7A
		mov	bl, [esi]
		inc	esi
		cmp	bl, 78h
		jz	short loc_4E4FBE
		cmp	bl, 58h
		jz	short loc_4E4FBE
		test	bl, bl
		jz	short loc_4E4F98
		jmp	short loc_4E4F7E
; ---------------------------------------------------------------------------

loc_4E4F7A:				; CODE XREF: .text:004E4F65j
					; .text:004E4FBCj
		test	bl, bl
		jz	short loc_4E4FB2

loc_4E4F7E:				; CODE XREF: .text:004E4F78j
					; .text:004E4F96j
		sub	bl, 30h
		cmp	bl, 9
		ja	short loc_4E4FB2
		cmp	eax, edi
		ja	short loc_4E4FB2
		lea	eax, [eax+eax*4]
		add	eax, eax
		add	eax, ebx
		mov	bl, [esi]
		inc	esi
		test	bl, bl
		jnz	short loc_4E4F7E

loc_4E4F98:				; CODE XREF: .text:004E4F76j
		dec	ch
		jz	short loc_4E4FAC
		test	eax, eax
		jl	short loc_4E4FB2

loc_4E4FA0:				; CODE XREF: .text:004E4FAEj
					; .text:004E4FB0j ...
		pop	ecx
		xor	esi, esi

loc_4E4FA3:				; CODE XREF: .text:004E4FB5j
		mov	[edx], esi
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4E4FA9:				; CODE XREF: .text:004E4F34j
					; .text:004E4FC8j
		inc	esi
		jmp	short loc_4E4FB2
; ---------------------------------------------------------------------------

loc_4E4FAC:				; CODE XREF: .text:004E4F9Aj
		neg	eax
		jle	short loc_4E4FA0
		js	short loc_4E4FA0

loc_4E4FB2:				; CODE XREF: .text:004E4F7Cj
					; .text:004E4F84j ...
		pop	ebx
		sub	esi, ebx
		jmp	short loc_4E4FA3
; ---------------------------------------------------------------------------

loc_4E4FB7:				; CODE XREF: .text:004E4F4Cj
		inc	ch

loc_4E4FB9:				; CODE XREF: .text:004E4F51j
		mov	bl, [esi]
		inc	esi
		jmp	short loc_4E4F7A
; ---------------------------------------------------------------------------

loc_4E4FBE:				; CODE XREF: .text:004E4F56j
					; .text:004E4F5Bj ...
		mov	edi, 0FFFFFFFh
		mov	bl, [esi]
		inc	esi
		test	bl, bl
		jz	short loc_4E4FA9

loc_4E4FCA:				; CODE XREF: .text:004E4FF3j
		cmp	bl, 61h
		jb	short loc_4E4FD2
		sub	bl, 20h

loc_4E4FD2:				; CODE XREF: .text:004E4FCDj
		sub	bl, 30h
		cmp	bl, 9
		jbe	short loc_4E4FE5
		sub	bl, 11h
		cmp	bl, 5
		ja	short loc_4E4FB2
		add	bl, 0Ah

loc_4E4FE5:				; CODE XREF: .text:004E4FD8j
		cmp	eax, edi
		ja	short loc_4E4FB2
		shl	eax, 4
		add	eax, ebx
		mov	bl, [esi]
		inc	esi
		test	bl, bl
		jnz	short loc_4E4FCA
		jmp	short loc_4E4FA0
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------

; System::_16692
@System@_16692:				; CODE XREF: .text:004E6AF3p
		push	ebx
		xor	ebx, ebx
		push	0		; nTypeFlag
		call	GetKeyboardType
		cmp	eax, 7
		jnz	short loc_4E5023
		push	1		; nTypeFlag
		call	GetKeyboardType
		and	eax, 0FF00h
		cmp	eax, 0D00h
		jz	short loc_4E5021
		cmp	eax, 400h
		jnz	short loc_4E5023

loc_4E5021:				; CODE XREF: .text:004E5018j
		mov	bl, 1

loc_4E5023:				; CODE XREF: .text:004E5005j
					; .text:004E501Fj
		mov	eax, ebx
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; System::_16541
@System@_16541:				; CODE XREF: .text:004E6AFCp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		movzx	eax, word ptr dword_579A74
		mov	[ebp-8], eax
		lea	eax, [ebp-4]
		push	eax		; phkResult
		push	1		; samDesired
		push	0		; ulOptions
		push	offset aSoftwareBorlan ; "SOFTWARE\\Borland\\Delphi\\RTL"
		push	80000002h	; hKey
		call	RegOpenKeyExA
		test	eax, eax
		jnz	short loc_4E50A0
		xor	eax, eax
		push	ebp
		push	offset loc_4E5099
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		mov	dword ptr [ebp-0Ch], 4
		lea	eax, [ebp-0Ch]
		push	eax		; lpcbData
		lea	eax, [ebp-8]
		push	eax		; lpData
		push	0		; lpType
		push	0		; lpReserved
		push	offset aFpumaskvalue ; "FPUMaskValue"
		mov	eax, [ebp-4]
		push	eax		; hKey
		call	RegQueryValueExA
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E50A0

loc_4E508F:				; CODE XREF: .text:004E509Ej
		mov	eax, [ebp-4]
		push	eax		; hKey
		call	RegCloseKey
		retn
; ---------------------------------------------------------------------------

loc_4E5099:				; DATA XREF: .text:004E5056o
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E508F
; ---------------------------------------------------------------------------

loc_4E50A0:				; CODE XREF: .text:004E5051j
					; .text:004E5098j
					; DATA XREF: ...
		mov	ax, word ptr dword_579A74
		and	ax, 0FFC0h
		mov	dx, [ebp-8]
		and	dx, 3Fh
		or	ax, dx
		mov	word ptr dword_579A74, ax
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; CHAR aSoftwareBorlan[]
aSoftwareBorlan	db 'SOFTWARE\Borland\Delphi\RTL',0 ; DATA XREF: .text:004E5040o
; CHAR aFpumaskvalue[]
aFpumaskvalue	db 'FPUMaskValue',0     ; DATA XREF: .text:004E5074o
		align 4

unknown_libname_61:			; CODE XREF: .text:004E54ACp
					; .text:loc_4E6B01p
		fninit			; Borland Visual Component Library & Packages
		wait
		fldcw	word ptr dword_579A74
		retn
; ---------------------------------------------------------------------------
		align 4

; __fastcall System::TObject::ClassName(System::TMetaClass *)
@System@TObject@ClassName$qqrp17System@TMetaClass: ; CODE XREF:	.text:004E14DFp
		push	esi
		push	edi
		mov	edi, edx
		mov	esi, [eax-2Ch]
		xor	ecx, ecx
		mov	cl, [esi]
		inc	ecx
		rep movsb
		pop	edi
		pop	esi
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_62:			; CODE XREF: .text:System::TInterfacedObject::NewInstance(System::TMetaClass *)p
					; DATA XREF: .text:004DFD2Co ...
		push	eax		; Borland Visual Component Library & Packages
		mov	eax, [eax-28h]
		call	@System@@GetMem$qqrv ; System::__linkproc__ GetMem(void)
		mov	edx, eax
		pop	eax
		jmp	@System@TObject@InitInstance$qqrp17System@TMetaClasspv ; System::TObject::InitInstance(System::TMetaClass *,void *)
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		align 10h

; _DWORD __fastcall System::TObject::FreeInstance(System::TObject *__hidden this)
@System@TObject@FreeInstance$qqrv:	; CODE XREF: .text:004E1736p
					; DATA XREF: .text:004DFD30o ...
		push	ebx
		push	esi
		mov	ebx, eax
		mov	esi, eax

loc_4E5126:				; CODE XREF: .text:004E513Bj
		mov	esi, [esi]
		mov	edx, [esi-40h]
		mov	esi, [esi-24h]
		test	edx, edx
		jz	short loc_4E5139
		call	unknown_libname_80 ; Borland Visual Component Library &	Packages
		mov	eax, ebx

loc_4E5139:				; CODE XREF: .text:004E5130j
		test	esi, esi
		jnz	short loc_4E5126
		call	@System@@FreeMem$qqrv ;	System::__linkproc__ FreeMem(void)
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E5148:				; CODE XREF: .text:004F5197p
					; DATA XREF: .text:004DFD34o ...
		call	unknown_libname_66 ; Borland Visual Component Library &	Packages
		test	dl, dl
		jle	short locret_4E5156
		call	@System@@ClassDestroy$qqrp14System@TObject ; System::__linkproc__ ClassDestroy(System::TObject *)

locret_4E5156:				; CODE XREF: .text:004E514Fj
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall System::TObject::Free(System::TObject *__hidden this)
@System@TObject@Free$qqrv:		; CODE XREF: .text:004E1D84p
					; .text:004E23F0p ...
		test	eax, eax
		jz	short locret_4E5163
		mov	ecx, [eax]
		mov	dl, 1
		call	dword ptr [ecx-4]

locret_4E5163:				; CODE XREF: .text:004E515Aj
		retn
; ---------------------------------------------------------------------------

; __fastcall System::TObject::InitInstance(System::TMetaClass *, void *)
@System@TObject@InitInstance$qqrp17System@TMetaClasspv:	; CODE XREF: .text:004E5118j
		push	ebx
		push	esi
		push	edi
		mov	ebx, eax
		mov	edi, edx
		stosd
		mov	ecx, [ebx-28h]
		xor	eax, eax
		push	ecx
		shr	ecx, 2
		dec	ecx
		rep stosd
		pop	ecx
		and	ecx, 3
		rep stosb
		mov	eax, edx
		mov	edx, esp

loc_4E5182:				; CODE XREF: .text:004E5193j
		mov	ecx, [ebx-48h]
		test	ecx, ecx
		jz	short loc_4E518A
		push	ecx

loc_4E518A:				; CODE XREF: .text:004E5187j
		mov	ebx, [ebx-24h]
		test	ebx, ebx
		jz	short loc_4E5195
		mov	ebx, [ebx]
		jmp	short loc_4E5182
; ---------------------------------------------------------------------------

loc_4E5195:				; CODE XREF: .text:004E518Fj
		cmp	esp, edx
		jz	short loc_4E51B6

loc_4E5199:				; CODE XREF: .text:004E51B4j
		pop	ebx
		mov	ecx, [ebx]
		add	ebx, 4

loc_4E519F:				; CODE XREF: .text:004E51B0j
		mov	esi, [ebx+10h]
		test	esi, esi
		jz	short loc_4E51AC
		mov	edi, [ebx+14h]
		mov	[eax+edi], esi

loc_4E51AC:				; CODE XREF: .text:004E51A4j
		add	ebx, 1Ch
		dec	ecx
		jnz	short loc_4E519F
		cmp	esp, edx
		jnz	short loc_4E5199

loc_4E51B6:				; CODE XREF: .text:004E5197j
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; System::_16557
@System@_16557:				; CODE XREF: .text:004E5234p
		xchg	ecx, edx
		cmp	ecx, 0FF000000h
		jnb	short loc_4E51D7
		cmp	ecx, 0FE000000h
		jb	short loc_4E51D5
		movsx	ecx, cx
		add	ecx, [eax]
		jmp	dword ptr [ecx]
; ---------------------------------------------------------------------------

loc_4E51D5:				; CODE XREF: .text:004E51CCj
		jmp	ecx
; ---------------------------------------------------------------------------

loc_4E51D7:				; CODE XREF: .text:004E51C4j
		and	ecx, 0FFFFFFh
		add	ecx, eax
		mov	eax, edx
		mov	edx, [ecx]
		jmp	@System@@IntfCopy$qqrr35System@_DelphiInterface$t8IUnknown_x35System@_DelphiInterface$t8IUnknown_ ; System::__linkproc__ IntfCopy(System::DelphiInterface<IUnknown> &,System::DelphiInterface<IUnknown>)
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall System::TObject::GetInterface(System::TObject *__hidden this, const	_GUID *, void *)
@System@TObject@GetInterface$qqrrx5_GUIDpv: ; CODE XREF: .text:004E68FBp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		xor	ebx, ebx
		mov	[ebp-8], ebx
		mov	edi, ecx
		mov	[ebp-4], edx
		mov	esi, eax
		xor	eax, eax
		push	ebp
		push	offset loc_4E527A
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		mov	edx, [ebp-4]
		mov	eax, [esi]
		call	unknown_libname_63 ; Borland Visual Component Library &	Packages
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4E525E
		mov	eax, [ebx+14h]
		test	eax, eax
		jz	short loc_4E522C
		add	esi, eax
		mov	[edi], esi
		jmp	short loc_4E5243
; ---------------------------------------------------------------------------

loc_4E522C:				; CODE XREF: .text:004E5224j
		lea	ecx, [ebp-8]
		mov	edx, [ebx+18h]
		mov	eax, esi
		call	@System@_16557	; System::_16557
		mov	edx, [ebp-8]
		mov	eax, edi
		call	@System@@IntfCopy$qqrr35System@_DelphiInterface$t8IUnknown_x35System@_DelphiInterface$t8IUnknown_ ; System::__linkproc__ IntfCopy(System::DelphiInterface<IUnknown> &,System::DelphiInterface<IUnknown>)

loc_4E5243:				; CODE XREF: .text:004E522Aj
		cmp	dword ptr [edi], 0
		jz	short loc_4E525A
		cmp	dword ptr [ebx+14h], 0
		jz	short loc_4E5256
		mov	eax, [edi]
		push	eax
		mov	eax, [eax]
		call	dword ptr [eax+4]

loc_4E5256:				; CODE XREF: .text:004E524Cj
		mov	bl, 1
		jmp	short loc_4E5264
; ---------------------------------------------------------------------------

loc_4E525A:				; CODE XREF: .text:004E5246j
		xor	ebx, ebx
		jmp	short loc_4E5264
; ---------------------------------------------------------------------------

loc_4E525E:				; CODE XREF: .text:004E521Dj
		xor	eax, eax
		mov	[edi], eax
		xor	ebx, ebx

loc_4E5264:				; CODE XREF: .text:004E5258j
					; .text:004E525Cj
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E5281

loc_4E5271:				; CODE XREF: .text:004E527Fj
		lea	eax, [ebp-8]
		call	unknown_libname_88 ; Borland Visual Component Library &	Packages
		retn
; ---------------------------------------------------------------------------

loc_4E527A:				; DATA XREF: .text:004E5204o
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E5271
; ---------------------------------------------------------------------------

loc_4E5281:				; CODE XREF: .text:004E5279j
					; DATA XREF: .text:004E526Co
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_63:			; CODE XREF: .text:004E5214p
		push	ebx		; Borland Visual Component Library & Packages
		push	esi
		mov	ebx, eax

loc_4E5290:				; CODE XREF: .text:004E52C9j
		mov	eax, [ebx-48h]
		test	eax, eax
		jz	short loc_4E52C0
		mov	ecx, [eax]
		add	eax, 4

loc_4E529C:				; CODE XREF: .text:004E52BEj
		mov	esi, [edx]
		cmp	esi, [eax]
		jnz	short loc_4E52BA
		mov	esi, [edx+4]
		cmp	esi, [eax+4]
		jnz	short loc_4E52BA
		mov	esi, [edx+8]
		cmp	esi, [eax+8]
		jnz	short loc_4E52BA
		mov	esi, [edx+0Ch]
		cmp	esi, [eax+0Ch]
		jz	short loc_4E52CD

loc_4E52BA:				; CODE XREF: .text:004E52A0j
					; .text:004E52A8j ...
		add	eax, 1Ch
		dec	ecx
		jnz	short loc_4E529C

loc_4E52C0:				; CODE XREF: .text:004E5295j
		mov	ebx, [ebx-24h]
		test	ebx, ebx
		jz	short loc_4E52CB
		mov	ebx, [ebx]
		jmp	short loc_4E5290
; ---------------------------------------------------------------------------

loc_4E52CB:				; CODE XREF: .text:004E52C5j
		xor	eax, eax

loc_4E52CD:				; CODE XREF: .text:004E52B8j
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ IsClass(void)
@System@@IsClass$qqrv:			; CODE XREF: .text:004E1488p
					; .text:004E1C1Ap
		test	eax, eax
		jz	short locret_4E52E4

loc_4E52D4:				; CODE XREF: .text:004E52DFj
		mov	eax, [eax]
		cmp	eax, edx
		jz	short loc_4E52E2
		mov	eax, [eax-24h]
		test	eax, eax
		jnz	short loc_4E52D4
		retn
; ---------------------------------------------------------------------------

loc_4E52E2:				; CODE XREF: .text:004E52D8j
		mov	al, 1

locret_4E52E4:				; CODE XREF: .text:004E52D2j
		retn
; ---------------------------------------------------------------------------
		align 4

; System::_16563
@System@_16563:				; CODE XREF: .text:004E533Fp
		push	edi
		xchg	eax, ebx
		jmp	short loc_4E52EE
; ---------------------------------------------------------------------------

loc_4E52EC:				; CODE XREF: .text:004E5307j
		mov	ebx, [ebx]

loc_4E52EE:				; CODE XREF: .text:004E52EAj
		mov	edi, [ebx-30h]
		test	edi, edi
		jz	short loc_4E5302
		movzx	ecx, word ptr [edi]
		push	ecx
		add	edi, 2
		repne scasw
		jz	short loc_4E530B
		pop	ecx

loc_4E5302:				; CODE XREF: .text:004E52F3j
		mov	ebx, [ebx-24h]
		test	ebx, ebx
		jnz	short loc_4E52EC
		pop	edi
		retn
; ---------------------------------------------------------------------------

loc_4E530B:				; CODE XREF: .text:004E52FFj
		pop	eax
		add	eax, eax
		sub	eax, ecx
		mov	ebx, [edi+eax*2-4]
		pop	edi
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall System::TObject::SafeCallException(System::TObject *__hidden this, System::TObject *, void *)
@System@TObject@SafeCallException$qqrp14System@TObjectpv: ; DATA XREF: .text:004DFD18o
					; .text:004DFD80o ...
		mov	eax, 8000FFFFh
		retn
; ---------------------------------------------------------------------------
		align 10h

nullsub_9:				; DATA XREF: .text:004DFD28o
					; .text:004DFD90o ...
		retn
; ---------------------------------------------------------------------------
		align 4

nullsub_7:				; DATA XREF: .text:004DFD1Co
					; .text:004DFD84o ...
		retn
; ---------------------------------------------------------------------------
		align 4

nullsub_8:				; DATA XREF: .text:004DFD20o
					; .text:004DFD88o ...
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall System::TObject::Dispatch(System::TObject *__hidden	this, void *)
@System@TObject@Dispatch$qqrpv:		; DATA XREF: .text:004DFD24o
					; .text:004DFD8Co ...
		push	ebx
		mov	bx, [edx]
		or	bx, bx
		jz	short loc_4E534C
		cmp	bx, 0C000h
		jnb	short loc_4E534C
		push	eax
		mov	eax, [eax]
		call	@System@_16563	; System::_16563
		pop	eax
		jz	short loc_4E534C
		mov	ecx, ebx
		pop	ebx
		jmp	ecx
; ---------------------------------------------------------------------------

loc_4E534C:				; CODE XREF: .text:004E5333j
					; .text:004E533Aj ...
		pop	ebx
		mov	ecx, [eax]
		jmp	dword ptr [ecx-10h]
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_64:			; CODE XREF: .text:004E15EAp
					; .text:004E162Bp ...
		push	edx		; Borland Visual Component Library & Packages
		push	ecx
		push	ebx
		test	dl, dl
		jl	short loc_4E535E
		call	dword ptr [eax-0Ch]

loc_4E535E:				; CODE XREF: .text:004E5359j
		xor	edx, edx
		lea	ecx, [esp+10h]
		mov	ebx, fs:[edx]
		mov	[ecx], ebx
		mov	[ecx+8], ebp
		mov	dword ptr [ecx+4], offset j_@System@@HandleAnyException$qqrv ; System::__linkproc__ HandleAnyException(void)
		mov	[ecx+0Ch], eax
		mov	fs:[edx], ecx
		pop	ebx
		pop	ecx
		pop	edx
		retn
; ---------------------------------------------------------------------------

; int __cdecl System::__linkproc__ HandleAnyException(struct _EXCEPTION_POINTERS ExceptionInfo,	int, int, int, int, int, int, int, int)
j_@System@@HandleAnyException$qqrv:	; DATA XREF: .text:004E536Co
		jmp	@System@@HandleAnyException$qqrv ; System::__linkproc__	HandleAnyException(void)
; ---------------------------------------------------------------------------
		mov	eax, [esp+2Ch]
		mov	eax, [eax+0Ch]
		test	eax, eax
		jz	short loc_4E539B
		mov	ecx, [eax]
		mov	dl, 81h
		push	eax
		call	dword ptr [ecx-4]
		pop	eax
		call	@System@@ClassDestroy$qqrp14System@TObject ; System::__linkproc__ ClassDestroy(System::TObject *)

loc_4E539B:				; CODE XREF: .text:004E538Bj
		call	loc_4E560C
		retn
; ---------------------------------------------------------------------------
		align 4

; __fastcall System::__linkproc__ ClassDestroy(System::TObject *)
@System@@ClassDestroy$qqrp14System@TObject: ; CODE XREF: .text:004E5151p
					; .text:004E5396p
		mov	edx, [eax]
		call	dword ptr [edx-8]
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_65:			; CODE XREF: .text:004E1605p
					; .text:004E1683p ...
		push	eax		; Borland Visual Component Library & Packages
		mov	edx, [eax]
		call	dword ptr [edx-1Ch]
		pop	eax
		retn
; ---------------------------------------------------------------------------

unknown_libname_66:			; CODE XREF: .text:loc_4E5148p
		test	dl, dl		; Borland Visual Component Library & Packages
		jg	short loc_4E53B9
		retn
; ---------------------------------------------------------------------------

loc_4E53B9:				; CODE XREF: .text:004E53B6j
		push	eax
		push	edx
		mov	edx, [eax]
		call	dword ptr [edx-18h]
		pop	edx
		pop	eax
		retn
; ---------------------------------------------------------------------------
		align 4

; System::_16582
@System@_16582:				; CODE XREF: .text:004E5641p
		cmp	byte ptr dword_579A78, 1
		jbe	short locret_4E53DD
		push	0		; lpArguments
		push	0		; nNumberOfArguments
		push	0		; dwExceptionFlags
		push	0EEDFADFh	; dwExceptionCode
		call	RaiseException

locret_4E53DD:				; CODE XREF: .text:004E53CBj
		retn
; ---------------------------------------------------------------------------
		align 10h

; System::_16583
@System@_16583:				; CODE XREF: .text:004E54D9p
		cmp	byte ptr dword_579A78, 0
		jz	short locret_4E53FF
		push	eax
		push	eax
		push	edx
		push	esp		; lpArguments
		push	2		; nNumberOfArguments
		push	0		; dwExceptionFlags
		push	0EEDFAE4h	; dwExceptionCode
		call	RaiseException
		add	esp, 8
		pop	eax

locret_4E53FF:				; CODE XREF: .text:004E53E7j
		retn
; ---------------------------------------------------------------------------

; System::_16584
@System@_16584:				; CODE XREF: .text:004E541Fj
		push	esp		; lpArguments
		push	1		; nNumberOfArguments
		push	0		; dwExceptionFlags
		push	0EEDFAE0h	; dwExceptionCode
		call	RaiseException
		add	esp, 4
		pop	eax
		retn
; ---------------------------------------------------------------------------

unknown_libname_67:			; CODE XREF: .text:004E5588p
		cmp	byte ptr dword_579A78, 1 ; Borland Visual Component Library & Packages
		jbe	short locret_4E5424
		push	eax
		push	ebx
		jmp	@System@_16584	; System::_16584
; ---------------------------------------------------------------------------

locret_4E5424:				; CODE XREF: .text:004E541Bj
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E5428:				; CODE XREF: .text:004E5454p
		test	ecx, ecx
		jz	short locret_4E5445
		mov	eax, [ecx+1]
		cmp	byte ptr [ecx],	0E9h
		jz	short loc_4E5440
		cmp	byte ptr [ecx],	0EBh
		jnz	short locret_4E5445
		movsx	eax, al
		inc	ecx
		inc	ecx
		jmp	short loc_4E5443
; ---------------------------------------------------------------------------

loc_4E5440:				; CODE XREF: .text:004E5432j
		add	ecx, 5

loc_4E5443:				; CODE XREF: .text:004E543Ej
		add	ecx, eax

locret_4E5445:				; CODE XREF: .text:004E542Aj
					; .text:004E5437j
		retn
; ---------------------------------------------------------------------------
		align 4

; System::_16588
@System@_16588:				; CODE XREF: .text:004E55DDp
		cmp	byte ptr dword_579A78, 1
		jbe	short locret_4E546D
		push	eax
		push	edx
		push	ecx
		call	loc_4E5428
		push	ecx
		push	esp		; lpArguments
		push	1		; nNumberOfArguments
		push	0		; dwExceptionFlags
		push	0EEDFAE1h	; dwExceptionCode
		call	RaiseException
		pop	ecx
		pop	ecx
		pop	edx
		pop	eax

locret_4E546D:				; CODE XREF: .text:004E544Fj
		retn
; ---------------------------------------------------------------------------
		align 10h

; System::_16589
@System@_16589:				; CODE XREF: .text:004E5688p
		cmp	byte ptr dword_579A78, 1
		jbe	short locret_4E548A
		push	edx
		push	esp		; lpArguments
		push	1		; nNumberOfArguments
		push	0		; dwExceptionFlags
		push	0EEDFAE2h	; dwExceptionCode
		call	RaiseException
		pop	edx

locret_4E548A:				; CODE XREF: .text:004E5477j
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl System::__linkproc__ HandleAnyException(struct _EXCEPTION_POINTERS ExceptionInfo,	int, int, int, int, int, int, int, int)
@System@@HandleAnyException$qqrv:	; CODE XREF: .text:System::__linkproc__	HandleAnyException(void)j
					; .text:loc_4E5716j ...
		mov	eax, [esp+4]
		test	dword ptr [eax+4], 6
		jnz	loc_4E55AF
		cmp	dword ptr [eax], 0EEDFADEh
		mov	edx, [eax+18h]
		mov	ecx, [eax+14h]
		jz	short loc_4E5519
		cld
		call	unknown_libname_61 ; Borland Visual Component Library &	Packages
		mov	edx, dword_61B0F0
		test	edx, edx
		jz	loc_4E55AF
		call	edx ; dword_61B0F0
		test	eax, eax
		jz	loc_4E55AF
		mov	edx, [esp+0Ch]
		mov	ecx, [esp+4]
		cmp	dword ptr [ecx], 0EEFFACEh
		jz	short loc_4E5510
		call	@System@_16583	; System::_16583
		cmp	byte ptr dword_579A7C, 0
		jbe	short loc_4E5510
		cmp	byte ptr dword_579A78, 0
		ja	short loc_4E5510
		lea	ecx, [esp+4]
		push	eax
		push	ecx		; ExceptionInfo
		call	UnhandledExceptionFilter
		cmp	eax, 0
		pop	eax
		jz	loc_4E55AF
		mov	edx, eax
		mov	eax, [esp+4]
		mov	ecx, [eax+0Ch]
		jmp	short loc_4E5540
; ---------------------------------------------------------------------------

loc_4E5510:				; CODE XREF: .text:004E54D7j
					; .text:004E54E5j ...
		mov	edx, eax
		mov	eax, [esp+4]
		mov	ecx, [eax+0Ch]

loc_4E5519:				; CODE XREF: .text:004E54A9j
		cmp	byte ptr dword_579A7C, 1
		jbe	short loc_4E5540
		cmp	byte ptr dword_579A78, 0
		ja	short loc_4E5540
		push	eax
		lea	eax, [esp+8]
		push	edx
		push	ecx
		push	eax		; ExceptionInfo
		call	UnhandledExceptionFilter
		cmp	eax, 0
		pop	ecx
		pop	edx
		pop	eax
		jz	short loc_4E55AF

loc_4E5540:				; CODE XREF: .text:004E550Ej
					; .text:004E5520j ...
		or	dword ptr [eax+4], 2
		push	ebx
		xor	ebx, ebx
		push	esi
		push	edi
		push	ebp
		mov	ebx, fs:[ebx]
		push	ebx
		push	eax
		push	edx
		push	ecx
		mov	edx, [esp+28h]
		push	0
		push	eax
		push	offset loc_4E5563
		push	edx
		call	RtlUnwind

loc_4E5563:				; DATA XREF: .text:004E5558o
		mov	edi, [esp+28h]
		call	qqrv
		push	dword ptr [eax+0]
		mov	[eax+0], esp
		mov	ebp, [edi+8]
		mov	ebx, [edi+4]
		mov	dword ptr [edi+4], offset loc_4E558F
		add	ebx, 5
		call	unknown_libname_67 ; Borland Visual Component Library &	Packages
		jmp	ebx
; ---------------------------------------------------------------------------

loc_4E558F:				; DATA XREF: .text:004E557Eo
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		call	qqrv
		mov	ecx, [eax+0]
		mov	edx, [ecx]
		mov	[eax+0], edx
		mov	eax, [ecx+8]	; this
		jmp	@System@TObject@Free$qqrv ; System::TObject::Free(void)
; ---------------------------------------------------------------------------

loc_4E55AF:				; CODE XREF: .text:004E5497j
					; .text:004E54B9j ...
		mov	eax, 1
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_68:			; CODE XREF: .text:loc_4012ADj
					; .text:loc_4DEFB2j ...
		mov	eax, [esp+4]	; Borland Visual Component Library & Packages
		mov	edx, [esp+8]
		test	dword ptr [eax+4], 6
		jz	short loc_4E55E8
		mov	ecx, [edx+4]
		mov	dword ptr [edx+4], offset loc_4E55E8
		push	ebx
		push	esi
		push	edi
		push	ebp
		mov	ebp, [edx+8]
		add	ecx, 5
		call	@System@_16588	; System::_16588
		call	ecx
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx

loc_4E55E8:				; CODE XREF: .text:004E55C7j
					; DATA XREF: .text:004E55CCo
		mov	eax, 1
		retn
; ---------------------------------------------------------------------------
		align 10h

; __fastcall System::__linkproc__ RaiseExcept(void)
@System@@RaiseExcept$qqrv:		; CODE XREF: .text:004E06CFp
					; .text:004E1818j ...
		pop	edx
		push	esp
		push	ebp
		push	edi
		push	esi
		push	ebx
		push	eax
		push	edx
		push	esp		; lpArguments
		push	7		; nNumberOfArguments
		push	1		; dwExceptionFlags
		push	0EEDFADEh	; dwExceptionCode
		push	edx
		jmp	RaiseException
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E560C:				; CODE XREF: .text:loc_4E539Bp
					; .text:004E5720p
		mov	eax, [esp+30h]
		mov	dword ptr [eax+4], offset @_rw_stderr_version$qv ; _rw_stderr_version(void)
		call	qqrv
		mov	edx, [eax+0]
		mov	ecx, [edx]
		mov	[eax+0], ecx
		mov	eax, [edx+0Ch]
		and	dword ptr [eax+4], 0FFFFFFFDh
		cmp	dword ptr [eax], 0EEDFADEh
		jz	short loc_4E5646
		mov	eax, [edx+8]	; this
		call	@System@TObject@Free$qqrv ; System::TObject::Free(void)
		call	@System@_16582	; System::_16582

loc_4E5646:				; CODE XREF: .text:004E5637j
		xor	eax, eax
		add	esp, 14h
		mov	edx, fs:[eax]
		pop	ecx
		mov	edx, [edx]
		mov	[ecx], edx
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx

; _DWORD _rw_stderr_version(void)
@_rw_stderr_version$qv:			; DATA XREF: .text:004E5610o
		mov	eax, 1
		retn
; ---------------------------------------------------------------------------
		align 10h

; __fastcall __linkproc__ DoneExcept(void)
@@DoneExcept$qqrv:			; CODE XREF: .text:004E5725p
					; .text:004E6798p
		call	qqrv
		mov	edx, [eax+0]
		mov	ecx, [edx]
		mov	[eax+0], ecx
		mov	eax, [edx+8]	; this
		call	@System@TObject@Free$qqrv ; System::TObject::Free(void)
		pop	edx
		mov	esp, [esp+2Ch]
		xor	eax, eax
		pop	ecx
		mov	fs:[eax], ecx
		pop	eax
		pop	ebp
		call	@System@_16589	; System::_16589
		jmp	edx
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ TryFinallyExit(void)
@System@@TryFinallyExit$qqrv:		; CODE XREF: .text:004E4899p
					; .text:004E48EEp ...
		xor	edx, edx
		mov	ecx, [esp+8]
		mov	eax, [esp+4]
		add	ecx, 5
		mov	fs:[edx], eax
		call	ecx
		retn	0Ch
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		align 4

; System::_16603
@System@_16603:				; CODE XREF: .text:loc_4E58ACp
		xor	edx, edx
		mov	eax, dword_61B590
		mov	ecx, fs:[edx]
		cmp	eax, ecx
		jnz	short loc_4E56BF
		mov	eax, [eax]
		mov	fs:[edx], eax
		retn
; ---------------------------------------------------------------------------

loc_4E56BD:				; CODE XREF: .text:004E56C6j
		mov	ecx, [ecx]

loc_4E56BF:				; CODE XREF: .text:004E56B5j
		cmp	ecx, 0FFFFFFFFh
		jz	short locret_4E56CC
		cmp	[ecx], eax
		jnz	short loc_4E56BD
		mov	eax, [eax]
		mov	[ecx], eax

locret_4E56CC:				; CODE XREF: .text:004E56C2j
		retn
; ---------------------------------------------------------------------------
		align 10h

; System::_16604
@System@_16604:				; CODE XREF: .text:004E571Bp
					; .text:loc_4E587Fp
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, offset dword_61B58C
		mov	eax, [edi+8]
		test	eax, eax
		jz	short loc_4E572A
		mov	ebx, [edi+0Ch]
		mov	esi, [eax+4]
		xor	edx, edx
		push	ebp
		push	offset loc_4E5716
		push	dword ptr fs:[edx]
		mov	fs:[edx], esp
		test	ebx, ebx
		jle	short loc_4E570C

loc_4E56FA:				; CODE XREF: .text:004E570Aj
		dec	ebx
		mov	[edi+0Ch], ebx
		mov	eax, [esi+ebx*8+4]
		test	eax, eax
		jz	short loc_4E5708
		call	eax

loc_4E5708:				; CODE XREF: .text:004E5704j
		test	ebx, ebx
		jg	short loc_4E56FA

loc_4E570C:				; CODE XREF: .text:004E56F8j
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		jmp	short loc_4E572A
; ---------------------------------------------------------------------------

loc_4E5716:				; DATA XREF: .text:004E56EBo
		jmp	@System@@HandleAnyException$qqrv ; System::__linkproc__	HandleAnyException(void)
; ---------------------------------------------------------------------------
		call	@System@_16604	; System::_16604
		call	loc_4E560C
		call	@@DoneExcept$qqrv ; __linkproc__ DoneExcept(void)

loc_4E572A:				; CODE XREF: .text:004E56E0j
					; .text:004E5714j
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; __fastcall System::__linkproc__ InitResStringImports(void)
@System@@InitResStringImports$qqrv:	; CODE XREF: .text:004E2827p
		push	ebx
		push	esi
		mov	ebx, [eax]
		lea	esi, [eax+4]

loc_4E5737:				; CODE XREF: .text:004E5747j
		mov	eax, [esi+4]
		mov	edx, [esi]
		mov	eax, [eax]
		call	@System@LoadResString$qqrp20System@TResStringRec ; System::LoadResString(System::TResStringRec *)
		add	esi, 8
		dec	ebx
		jnz	short loc_4E5737
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ InitImports(void)
@System@@InitImports$qqrv:		; CODE XREF: .text:004E2831p
		push	ebx
		push	esi
		mov	ebx, [eax]
		lea	esi, [eax+4]

loc_4E5753:				; CODE XREF: .text:004E5765j
		mov	eax, [esi+4]
		mov	edx, [esi]
		mov	ecx, [esi+8]
		mov	eax, [eax]
		add	eax, ecx
		mov	[edx], eax
		add	esi, 0Ch
		dec	ebx
		jnz	short loc_4E5753
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; System::_16617
@System@_16617:				; CODE XREF: .text:004E5828p
		push	ebx
		mov	eax, dword_61B120
		mov	ebx, offset aAt00000000	; "  at	00000000"
		mov	ecx, 0Ah

loc_4E577D:				; CODE XREF: .text:004E5789j
		xor	edx, edx
		div	ecx
		add	dl, 30h
		mov	[ebx], dl
		dec	ebx
		test	eax, eax
		jnz	short loc_4E577D
		mov	eax, lpAddress	; lpAddress
		call	@System@FindHInstance$qqrpv ; System::FindHInstance(void *)
		mov	edx, lpAddress
		xchg	eax, edx
		sub	eax, edx
		mov	ebx, (offset aAt00000000+0Ch) ;	"0"

loc_4E57A4:				; CODE XREF: .text:004E57B5j
		mov	edx, eax
		and	edx, 0Fh
		mov	dl, byte_579AC0[edx]
		mov	[ebx], dl
		dec	ebx
		shr	eax, 4
		jnz	short loc_4E57A4
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; System::_16618
@System@_16618:				; CODE XREF: .text:004E58C0p
		mov	edi, offset dword_61B58C
		mov	ebx, dword_61B5A4
		mov	ebp, dword_61B5A0
		push	dword ptr [edi+1Ch]
		push	dword ptr [edi+20h]
		mov	esi, [edi]
		mov	ecx, 0Bh
		rep movsd
		pop	edi
		pop	esi
		xor	eax, eax
		xchg	eax, dword_61B120
		neg	eax
		sbb	eax, eax
		inc	eax
		leave
		retn	0Ch
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ Halt0(void)
@System@@Halt0$qqrv:			; CODE XREF: .text:004E5916j
		push	ebx
		push	esi
		push	edi
		push	ebp
		mov	ebx, offset dword_61B58C
		mov	esi, offset dword_61B120
		mov	edi, offset dword_61B124
		cmp	byte ptr [ebx+24h], 0
		jnz	short loc_4E581F
		cmp	dword ptr [edi], 0
		jz	short loc_4E581F

loc_4E580E:				; CODE XREF: .text:004E581Dj
		mov	edx, [edi]
		mov	eax, edx
		xor	edx, edx
		mov	[edi], edx
		mov	ebp, eax
		call	ebp
		cmp	dword ptr [edi], 0
		jnz	short loc_4E580E

loc_4E581F:				; CODE XREF: .text:004E5807j
					; .text:004E580Cj
		cmp	lpAddress, 0
		jz	short loc_4E586F
		call	@System@_16617	; System::_16617
		cmp	byte_61B130, 0
		jz	short loc_4E584C
		mov	edx, offset aRuntimeError ; "Runtime error   "
		mov	eax, offset byte_61B304
		call	@System@@Write0CString$qqrv ; System::__linkproc__ Write0CString(void)
		call	@System@@WriteLn$qqrv ;	System::__linkproc__ WriteLn(void)
		jmp	short loc_4E5868
; ---------------------------------------------------------------------------

loc_4E584C:				; CODE XREF: .text:004E5834j
		cmp	byte ptr dword_579A80, 0
		jnz	short loc_4E5868
		push	0		; uType
		push	offset aError_0	; "Error"
		push	offset aRuntimeError ; "Runtime	error	"
		push	0		; hWnd
		call	MessageBoxA

loc_4E5868:				; CODE XREF: .text:004E584Aj
					; .text:004E5853j
		xor	eax, eax
		mov	lpAddress, eax

loc_4E586F:				; CODE XREF: .text:004E5826j
					; .text:004E58E1j
		cmp	byte ptr [ebx+24h], 2
		jnz	short loc_4E587F
		cmp	dword ptr [esi], 0
		jnz	short loc_4E587F
		xor	eax, eax
		mov	[ebx+0Ch], eax

loc_4E587F:				; CODE XREF: .text:004E5873j
					; .text:004E5878j
		call	@System@_16604	; System::_16604
		cmp	byte ptr [ebx+24h], 1
		jbe	short loc_4E588F
		cmp	dword ptr [esi], 0
		jz	short loc_4E58AC

loc_4E588F:				; CODE XREF: .text:004E5888j
		mov	eax, [ebx+10h]
		test	eax, eax
		jz	short loc_4E58AC
		call	@System@UnregisterModule$qqrp17System@TLibModule ; System::UnregisterModule(System::TLibModule *)
		mov	eax, [ebx+10h]
		mov	edx, [eax+10h]
		cmp	edx, [eax+4]
		jz	short loc_4E58AC
		push	edx		; hLibModule
		call	FreeLibrary

loc_4E58AC:				; CODE XREF: .text:004E588Dj
					; .text:004E5894j ...
		call	@System@_16603	; System::_16603
		cmp	byte ptr [ebx+24h], 1
		jnz	short loc_4E58BA
		call	dword ptr [ebx+28h]

loc_4E58BA:				; CODE XREF: .text:004E58B5j
		cmp	byte ptr [ebx+24h], 0
		jz	short loc_4E58C5
		call	@System@_16618	; System::_16618
; ---------------------------------------------------------------------------

loc_4E58C5:				; CODE XREF: .text:004E58BEj
		cmp	dword ptr [ebx], 0
		jnz	short loc_4E58D2
		mov	eax, [esi]
		push	eax		; uExitCode
		call	ExitProcess
; ---------------------------------------------------------------------------

loc_4E58D2:				; CODE XREF: .text:004E58C8j
		mov	eax, [ebx]
		push	esi
		mov	esi, eax
		mov	edi, ebx
		mov	ecx, 0Bh
		rep movsd
		pop	esi
		jmp	short loc_4E586F
; ---------------------------------------------------------------------------
aPortionsCopyri	db 'Portions Copyright (c) 1983,99 Borland',0
; ---------------------------------------------------------------------------
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4E5910:				; CODE XREF: .text:004E1C8Ap
					; .text:004E5922j
		mov	dword_61B120, eax
		jmp	@System@@Halt0$qqrv ; System::__linkproc__ Halt0(void)
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------

loc_4E591C:				; CODE XREF: .text:loc_4E4E78j
		pop	lpAddress
		jmp	loc_4E5910
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------

unknown_libname_69:			; CODE XREF: .text:004DEF8Ap
					; .text:004E06E4p ...
		mov	edx, [eax]	; Borland Visual Component Library & Packages
		test	edx, edx
		jz	short locret_4E594A
		mov	dword ptr [eax], 0
		mov	ecx, [edx-8]
		dec	ecx
		jl	short locret_4E594A
		lock dec dword ptr [edx-8]
		jnz	short locret_4E594A
		push	eax
		lea	eax, [edx-8]
		call	@System@@FreeMem$qqrv ;	System::__linkproc__ FreeMem(void)
		pop	eax

locret_4E594A:				; CODE XREF: .text:004E592Cj
					; .text:004E5938j ...
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_70:			; CODE XREF: .text:004E1039p
					; .text:004E1370p ...
		push	ebx		; Borland Visual Component Library & Packages
		push	esi
		mov	ebx, eax
		mov	esi, edx

loc_4E5952:				; CODE XREF: .text:004E5976j
		mov	edx, [ebx]
		test	edx, edx
		jz	short loc_4E5972
		mov	dword ptr [ebx], 0
		mov	ecx, [edx-8]
		dec	ecx
		jl	short loc_4E5972
		lock dec dword ptr [edx-8]
		jnz	short loc_4E5972
		lea	eax, [edx-8]
		call	@System@@FreeMem$qqrv ;	System::__linkproc__ FreeMem(void)

loc_4E5972:				; CODE XREF: .text:004E5956j
					; .text:004E5962j ...
		add	ebx, 4
		dec	esi
		jnz	short loc_4E5952
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_71:			; CODE XREF: .text:004E0EB9p
					; .text:004E0F7Dp ...
		test	edx, edx	; Borland Visual Component Library & Packages
		jz	short loc_4E59A4
		mov	ecx, [edx-8]
		inc	ecx
		jg	short loc_4E59A0
		push	eax
		push	edx
		mov	eax, [edx-4]
		call	@System@@NewAnsiString$qqrv ; System::__linkproc__ NewAnsiString(void)
		mov	edx, eax	; void *
		pop	eax		; void *
		push	edx
		mov	ecx, [eax-4]	; int
		call	@System@Move$qqrpxvpvi ; System::Move(void *,void *,int)
		pop	edx
		pop	eax
		jmp	short loc_4E59A4
; ---------------------------------------------------------------------------

loc_4E59A0:				; CODE XREF: .text:004E5984j
		lock inc dword ptr [edx-8]

loc_4E59A4:				; CODE XREF: .text:004E597Ej
					; .text:004E599Ej
		xchg	edx, [eax]
		test	edx, edx
		jz	short locret_4E59BE
		mov	ecx, [edx-8]
		dec	ecx
		jl	short locret_4E59BE
		lock dec dword ptr [edx-8]
		jnz	short locret_4E59BE
		lea	eax, [edx-8]
		call	@System@@FreeMem$qqrv ;	System::__linkproc__ FreeMem(void)

locret_4E59BE:				; CODE XREF: .text:004E59A8j
					; .text:004E59AEj ...
		retn
; ---------------------------------------------------------------------------
		align 10h

unknown_libname_72:			; CODE XREF: .text:004E184Ep
					; .text:004E21E1p ...
		test	edx, edx	; Borland Visual Component Library & Packages
		jz	short loc_4E59CE
		mov	ecx, [edx-8]
		inc	ecx
		jle	short loc_4E59CE
		lock inc dword ptr [edx-8]

loc_4E59CE:				; CODE XREF: .text:004E59C2j
					; .text:004E59C8j
		xchg	edx, [eax]
		test	edx, edx
		jz	short locret_4E59E8
		mov	ecx, [edx-8]
		dec	ecx
		jl	short locret_4E59E8
		lock dec dword ptr [edx-8]
		jnz	short locret_4E59E8
		lea	eax, [edx-8]
		call	@System@@FreeMem$qqrv ;	System::__linkproc__ FreeMem(void)

locret_4E59E8:				; CODE XREF: .text:004E59D2j
					; .text:004E59D8j ...
		retn
; ---------------------------------------------------------------------------
		align 4

; __fastcall System::__linkproc__ NewAnsiString(void)
@System@@NewAnsiString$qqrv:		; CODE XREF: .text:004E598Bp
					; .text:004E5A1Bp ...
		test	eax, eax
		jle	short loc_4E5A0C
		push	eax
		add	eax, 9
		call	@System@@GetMem$qqrv ; System::__linkproc__ GetMem(void)
		add	eax, 8
		pop	edx
		mov	[eax-4], edx
		mov	dword ptr [eax-8], 1
		mov	byte ptr [eax+edx], 0
		retn
; ---------------------------------------------------------------------------

loc_4E5A0C:				; CODE XREF: .text:004E59EEj
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------
		align 10h

; __fastcall __linkproc__ LStrFromPCharLen(AnsiString &, char *, int)
@@LStrFromPCharLen$qqrr10AnsiStringpci:	; CODE XREF: .text:004E0E6Fp
					; .text:004E0EAEp ...
		push	ebx
		push	esi
		push	edi
		mov	ebx, eax
		mov	esi, edx
		mov	edi, ecx
		mov	eax, edi
		call	@System@@NewAnsiString$qqrv ; System::__linkproc__ NewAnsiString(void)
		mov	ecx, edi	; int
		mov	edi, eax
		test	esi, esi
		jz	short loc_4E5A31
		mov	edx, eax	; void *
		mov	eax, esi	; void *
		call	@System@Move$qqrpxvpvi ; System::Move(void *,void *,int)

loc_4E5A31:				; CODE XREF: .text:004E5A26j
		mov	eax, ebx
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		mov	[ebx], edi
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 10h

; __fastcall System::__linkproc__ LStrFromPWCharLen(System::AnsiString &, wchar_t *, int)
@System@@LStrFromPWCharLen$qqrr17System@AnsiStringpbi: ; CODE XREF: .text:loc_4E5B43j
					; .text:loc_4E5B6Fj
		push	ebx
		push	esi
		push	edi
		push	ebp
		add	esp, 0FFFFF800h
		mov	ebx, ecx
		mov	ebp, edx
		mov	edi, eax
		test	ebx, ebx
		jg	short loc_4E5A5D
		mov	eax, edi
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		jmp	short loc_4E5AC4
; ---------------------------------------------------------------------------

loc_4E5A5D:				; CODE XREF: .text:004E5A52j
		cmp	ebx, 400h
		jge	short loc_4E5A91
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	800h		; cbMultiByte
		lea	eax, [esp+0Ch]
		push	eax		; lpMultiByteStr
		push	ebx		; cchWideChar
		push	ebp		; lpWideCharStr
		push	0		; dwFlags
		push	0		; CodePage
		call	WideCharToMultiByte
		mov	esi, eax
		test	esi, esi
		jle	short loc_4E5A91
		mov	edx, esp
		mov	eax, edi
		mov	ecx, esi
		call	@@LStrFromPCharLen$qqrr10AnsiStringpci ; __linkproc__ LStrFromPCharLen(AnsiString &,char *,int)
		jmp	short loc_4E5AC4
; ---------------------------------------------------------------------------

loc_4E5A91:				; CODE XREF: .text:004E5A63j
					; .text:004E5A82j
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	0		; cbMultiByte
		push	0		; lpMultiByteStr
		push	ebx		; cchWideChar
		push	ebp		; lpWideCharStr
		push	0		; dwFlags
		push	0		; CodePage
		call	WideCharToMultiByte
		mov	esi, eax
		mov	eax, edi
		mov	ecx, esi
		xor	edx, edx
		call	@@LStrFromPCharLen$qqrr10AnsiStringpci ; __linkproc__ LStrFromPCharLen(AnsiString &,char *,int)
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	esi		; cbMultiByte
		mov	eax, [edi]
		push	eax		; lpMultiByteStr
		push	ebx		; cchWideChar
		push	ebp		; lpWideCharStr
		push	0		; dwFlags
		push	0		; CodePage
		call	WideCharToMultiByte

loc_4E5AC4:				; CODE XREF: .text:004E5A5Bj
					; .text:004E5A8Fj
		add	esp, 800h
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 10h

unknown_libname_73:			; CODE XREF: .text:004E1243p
					; .text:004E133Cp
		push	edx		; Borland Visual Component Library & Packages
		mov	edx, esp
		mov	ecx, 1
		call	@@LStrFromPCharLen$qqrr10AnsiStringpci ; __linkproc__ LStrFromPCharLen(AnsiString &,char *,int)
		pop	edx
		retn
; ---------------------------------------------------------------------------
		align 10h

unknown_libname_74:			; CODE XREF: .text:004E1078p
					; .text:004E10C0p ...
		xor	ecx, ecx	; Borland Visual Component Library & Packages
		test	edx, edx
		jz	short loc_4E5B07
		push	edx

loc_4E5AE7:				; CODE XREF: .text:004E5AFDj
		cmp	cl, [edx]
		jz	short loc_4E5B02
		cmp	cl, [edx+1]
		jz	short loc_4E5B01
		cmp	cl, [edx+2]
		jz	short loc_4E5B00
		cmp	cl, [edx+3]
		jz	short loc_4E5AFF
		add	edx, 4
		jmp	short loc_4E5AE7
; ---------------------------------------------------------------------------

loc_4E5AFF:				; CODE XREF: .text:004E5AF8j
		inc	edx

loc_4E5B00:				; CODE XREF: .text:004E5AF3j
		inc	edx

loc_4E5B01:				; CODE XREF: .text:004E5AEEj
		inc	edx

loc_4E5B02:				; CODE XREF: .text:004E5AE9j
		mov	ecx, edx
		pop	edx
		sub	ecx, edx

loc_4E5B07:				; CODE XREF: .text:004E5AE4j
		jmp	@@LStrFromPCharLen$qqrr10AnsiStringpci ; __linkproc__ LStrFromPCharLen(AnsiString &,char *,int)
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		align 10h

unknown_libname_75:			; CODE XREF: .text:004E0C7Cp
					; DATA XREF: .text:loc_4E0C62o
		xor	ecx, ecx	; Borland Visual Component Library & Packages
		test	edx, edx
		jz	short loc_4E5B43
		push	edx

loc_4E5B17:				; CODE XREF: .text:004E5B31j
		cmp	cx, [edx]
		jz	short loc_4E5B3C
		cmp	cx, [edx+2]
		jz	short loc_4E5B39
		cmp	cx, [edx+4]
		jz	short loc_4E5B36
		cmp	cx, [edx+6]
		jz	short loc_4E5B33
		add	edx, 8
		jmp	short loc_4E5B17
; ---------------------------------------------------------------------------

loc_4E5B33:				; CODE XREF: .text:004E5B2Cj
		add	edx, 2

loc_4E5B36:				; CODE XREF: .text:004E5B26j
		add	edx, 2

loc_4E5B39:				; CODE XREF: .text:004E5B20j
		add	edx, 2

loc_4E5B3C:				; CODE XREF: .text:004E5B1Aj
		mov	ecx, edx
		pop	edx
		sub	ecx, edx
		shr	ecx, 1

loc_4E5B43:				; CODE XREF: .text:004E5B14j
		jmp	@System@@LStrFromPWCharLen$qqrr17System@AnsiStringpbi ;	System::__linkproc__ LStrFromPWCharLen(System::AnsiString &,wchar_t *,int)
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E5B4C:				; CODE XREF: .text:004E1A73p
					; .text:004E1E11p
		push	edi		; @@LStrFromArray$qqrr10AnsiStringpci
					; doubtful _name
		push	eax
		push	ecx
		mov	edi, edx
		xor	eax, eax
		repne scasb
		jnz	short loc_4E5B59
		not	ecx

loc_4E5B59:				; CODE XREF: .text:004E5B55j
		pop	eax
		add	ecx, eax
		pop	eax
		pop	edi
		jmp	@@LStrFromPCharLen$qqrr10AnsiStringpci ; __linkproc__ LStrFromPCharLen(AnsiString &,char *,int)
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------

unknown_libname_76:			; DATA XREF: .text:loc_4E0C69o
		xor	ecx, ecx	; Borland Visual Component Library & Packages
		test	edx, edx
		jz	short loc_4E5B6F
		mov	ecx, [edx-4]
		shr	ecx, 1

loc_4E5B6F:				; CODE XREF: .text:004E5B68j
		jmp	@System@@LStrFromPWCharLen$qqrr17System@AnsiStringpbi ;	System::__linkproc__ LStrFromPWCharLen(System::AnsiString &,wchar_t *,int)
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_77:			; CODE XREF: .text:004E071Ap
					; .text:004E0DD3p ...
		test	eax, eax	; Borland Visual Component Library & Packages
		jz	short locret_4E5B7F
		mov	eax, [eax-4]

locret_4E5B7F:				; CODE XREF: .text:004E5B7Aj
		retn
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ LStrCat(void)
@System@@LStrCat$qqrv:			; CODE XREF: .text:004E124Dp
					; .text:004E129Ap ...
		test	edx, edx
		jz	short locret_4E5BC3
		mov	ecx, [eax]
		test	ecx, ecx
		jz	unknown_libname_71 ; Borland Visual Component Library &	Packages
		push	ebx
		push	esi
		push	edi
		mov	ebx, eax
		mov	esi, edx
		mov	edi, [ecx-4]
		mov	edx, [esi-4]
		add	edx, edi
		cmp	esi, ecx
		jz	short loc_4E5BB8
		call	@System@@LStrSetLength$qqrv ; System::__linkproc__ LStrSetLength(void)
		mov	eax, esi	; void *
		mov	ecx, [esi-4]	; int

loc_4E5BAB:				; CODE XREF: .text:004E5BC1j
		mov	edx, [ebx]
		add	edx, edi	; void *
		call	@System@Move$qqrpxvpvi ; System::Move(void *,void *,int)
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4E5BB8:				; CODE XREF: .text:004E5B9Fj
		call	@System@@LStrSetLength$qqrv ; System::__linkproc__ LStrSetLength(void)
		mov	eax, [ebx]
		mov	ecx, edi
		jmp	short loc_4E5BAB
; ---------------------------------------------------------------------------

locret_4E5BC3:				; CODE XREF: .text:004E5B82j
		retn
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ LStrCatN(void)
@System@@LStrCatN$qqrv:			; CODE XREF: .text:004E226Fp
					; .text:004E228Cp
		push	ebx
		push	esi
		push	edx
		push	eax
		mov	ebx, edx
		xor	eax, eax

loc_4E5BCC:				; CODE XREF: .text:004E5BD8j
		mov	ecx, [esp+edx*4+10h]
		test	ecx, ecx
		jz	short loc_4E5BD7
		add	eax, [ecx-4]

loc_4E5BD7:				; CODE XREF: .text:004E5BD2j
		dec	edx
		jnz	short loc_4E5BCC
		call	@System@@NewAnsiString$qqrv ; System::__linkproc__ NewAnsiString(void)
		push	eax
		mov	esi, eax

loc_4E5BE2:				; CODE XREF: .text:004E5BF7j
		mov	eax, [esp+ebx*4+14h] ; void *
		mov	edx, esi	; void *
		test	eax, eax
		jz	short loc_4E5BF6
		mov	ecx, [eax-4]	; int
		add	esi, ecx
		call	@System@Move$qqrpxvpvi ; System::Move(void *,void *,int)

loc_4E5BF6:				; CODE XREF: .text:004E5BEAj
		dec	ebx
		jnz	short loc_4E5BE2
		pop	edx
		pop	eax
		test	edx, edx
		jz	short loc_4E5C02
		dec	dword ptr [edx-8]

loc_4E5C02:				; CODE XREF: .text:004E5BFDj
		call	unknown_libname_71 ; Borland Visual Component Library &	Packages
		pop	edx
		pop	esi
		pop	ebx
		pop	eax
		lea	esp, [esp+edx*4]
		jmp	eax
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_78:			; CODE XREF: .text:004E0723p
					; .text:004E1494p ...
		test	eax, eax	; Borland Visual Component Library & Packages
		jz	short loc_4E5C1A
		retn
; ---------------------------------------------------------------------------
byte_4E5C19	db 0			; DATA XREF: .text:loc_4E5C1Ao
; ---------------------------------------------------------------------------

loc_4E5C1A:				; CODE XREF: .text:004E5C16j
		mov	eax, offset byte_4E5C19
		retn
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ LStrCopy(void)
@System@@LStrCopy$qqrv:			; CODE XREF: .text:004E0780p
					; .text:004E1290p
		push	ebx
		test	eax, eax
		jz	short loc_4E5C52
		mov	ebx, [eax-4]
		test	ebx, ebx
		jz	short loc_4E5C52
		dec	edx
		jl	short loc_4E5C4A
		cmp	edx, ebx
		jge	short loc_4E5C52

loc_4E5C33:				; CODE XREF: .text:004E5C4Cj
		sub	ebx, edx
		test	ecx, ecx
		jl	short loc_4E5C52
		cmp	ecx, ebx
		jg	short loc_4E5C4E

loc_4E5C3D:				; CODE XREF: .text:004E5C50j
		add	edx, eax
		mov	eax, [esp+8]
		call	@@LStrFromPCharLen$qqrr10AnsiStringpci ; __linkproc__ LStrFromPCharLen(AnsiString &,char *,int)
		jmp	short loc_4E5C5B
; ---------------------------------------------------------------------------

loc_4E5C4A:				; CODE XREF: .text:004E5C2Dj
		xor	edx, edx
		jmp	short loc_4E5C33
; ---------------------------------------------------------------------------

loc_4E5C4E:				; CODE XREF: .text:004E5C3Bj
		mov	ecx, ebx
		jmp	short loc_4E5C3D
; ---------------------------------------------------------------------------

loc_4E5C52:				; CODE XREF: .text:004E5C23j
					; .text:004E5C2Aj ...
		mov	eax, [esp+8]
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages

loc_4E5C5B:				; CODE XREF: .text:004E5C48j
		pop	ebx
		retn	4
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ LStrSetLength(void)
@System@@LStrSetLength$qqrv:		; CODE XREF: .text:004E0E32p
					; .text:004E0E5Fp ...
		push	ebx
		push	esi
		push	edi
		mov	ebx, eax
		mov	esi, edx
		xor	edi, edi
		test	edx, edx
		jz	short loc_4E5CB5
		mov	eax, [ebx]
		test	eax, eax
		jz	short loc_4E5C96
		cmp	dword ptr [eax-8], 1
		jnz	short loc_4E5C96
		sub	eax, 8
		add	edx, 9
		push	eax
		mov	eax, esp
		call	unknown_libname_57 ; Borland Visual Component Library &	Packages
		pop	eax
		add	eax, 8
		mov	[ebx], eax
		mov	[eax-4], esi
		mov	byte ptr [eax+esi], 0
		jmp	short loc_4E5CBE
; ---------------------------------------------------------------------------

loc_4E5C96:				; CODE XREF: .text:004E5C71j
					; .text:004E5C77j
		mov	eax, edx
		call	@System@@NewAnsiString$qqrv ; System::__linkproc__ NewAnsiString(void)
		mov	edi, eax
		mov	eax, [ebx]	; void *
		test	eax, eax
		jz	short loc_4E5CB5
		mov	edx, edi	; void *
		mov	ecx, [eax-4]
		cmp	ecx, esi
		jl	short loc_4E5CB0
		mov	ecx, esi	; int

loc_4E5CB0:				; CODE XREF: .text:004E5CACj
		call	@System@Move$qqrpxvpvi ; System::Move(void *,void *,int)

loc_4E5CB5:				; CODE XREF: .text:004E5C6Bj
					; .text:004E5CA3j
		mov	eax, ebx
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		mov	[ebx], edi

loc_4E5CBE:				; CODE XREF: .text:004E5C94j
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_79:			; CODE XREF: .text:004E5D9Dp
		mov	edx, [eax]	; Borland Visual Component Library & Packages
		test	edx, edx
		jz	short locret_4E5CD8
		mov	dword ptr [eax], 0
		push	eax
		push	edx		; BSTR
		call	SysFreeString
		pop	eax

locret_4E5CD8:				; CODE XREF: .text:004E5CC8j
		retn
; ---------------------------------------------------------------------------
		align 4

; __fastcall System::__linkproc__ WStrArrayClr(void *, int)
@System@@WStrArrayClr$qqrpvi:		; CODE XREF: .text:004E5DA6p
		push	ebx
		push	esi
		mov	ebx, eax
		mov	esi, edx

loc_4E5CE2:				; CODE XREF: .text:004E5CF8j
		mov	eax, [ebx]
		test	eax, eax
		jz	short loc_4E5CF4
		mov	dword ptr [ebx], 0
		push	eax		; BSTR
		call	SysFreeString

loc_4E5CF4:				; CODE XREF: .text:004E5CE6j
		add	ebx, 4
		dec	esi
		jnz	short loc_4E5CE2
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 10h

unknown_libname_80:			; CODE XREF: .text:004E5132p
					; .text:004E5DE5p
		xor	ecx, ecx	; Borland Visual Component Library & Packages
		push	ebx
		mov	cl, [edx+1]
		push	esi
		push	edi
		mov	ebx, eax
		lea	esi, [edx+ecx+0Ah]
		mov	edi, [edx+ecx+6]

loc_4E5D12:				; CODE XREF: .text:004E5D24j
		mov	edx, [esi]
		mov	eax, [esi+4]
		add	eax, ebx
		mov	edx, [edx]
		call	unknown_libname_81 ; Borland Visual Component Library &	Packages
		add	esi, 8
		dec	edi
		jg	short loc_4E5D12
		mov	eax, ebx
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ FinalizeArray(void)
@System@@FinalizeArray$qqrv:		; CODE XREF: .text:004DEF9Fp
					; .text:004E2709p ...
		cmp	ecx, 0
		jz	locret_4E5E12
		push	eax
		push	ebx
		push	esi
		push	edi
		mov	ebx, eax
		mov	esi, edx
		mov	edi, ecx
		xor	edx, edx
		mov	al, [esi]
		mov	dl, [esi+1]
		cmp	al, 0Ah
		jz	short loc_4E5D7C
		cmp	al, 0Bh
		jz	short loc_4E5D96
		cmp	al, 0Ch
		jz	short loc_4E5DAD
		cmp	al, 0Dh
		jz	short loc_4E5DBC
		cmp	al, 0Eh
		jz	short loc_4E5DDA
		cmp	al, 0Fh
		jz	loc_4E5DF0
		cmp	al, 11h
		jz	loc_4E5DFF
		pop	edi
		pop	esi
		pop	ebx
		pop	eax
		mov	al, 2
		jmp	unknown_libname_58 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------

loc_4E5D7C:				; CODE XREF: .text:004E5D49j
		cmp	ecx, 1
		mov	eax, ebx
		jg	short loc_4E5D8D
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		jmp	loc_4E5E0E
; ---------------------------------------------------------------------------

loc_4E5D8D:				; CODE XREF: .text:004E5D81j
		mov	edx, ecx
		call	unknown_libname_70 ; Borland Visual Component Library &	Packages
		jmp	short loc_4E5E0E
; ---------------------------------------------------------------------------

loc_4E5D96:				; CODE XREF: .text:004E5D4Ej
		cmp	ecx, 1
		mov	eax, ebx
		jg	short loc_4E5DA4
		call	unknown_libname_79 ; Borland Visual Component Library &	Packages
		jmp	short loc_4E5E0E
; ---------------------------------------------------------------------------

loc_4E5DA4:				; CODE XREF: .text:004E5D9Bj
		mov	edx, ecx
		call	@System@@WStrArrayClr$qqrpvi ; System::__linkproc__ WStrArrayClr(void *,int)
		jmp	short loc_4E5E0E
; ---------------------------------------------------------------------------

loc_4E5DAD:				; CODE XREF: .text:004E5D53j
					; .text:004E5DB8j
		mov	eax, ebx
		add	ebx, 10h
		call	loc_4E62EC
		dec	edi
		jg	short loc_4E5DAD
		jmp	short loc_4E5E0E
; ---------------------------------------------------------------------------

loc_4E5DBC:				; CODE XREF: .text:004E5D58j
		push	ebp
		mov	ebp, edx

loc_4E5DBF:				; CODE XREF: .text:004E5DD5j
		mov	edx, [esi+ebp+0Ah]
		mov	eax, ebx
		add	ebx, [esi+ebp+2]
		mov	ecx, [esi+ebp+6]
		mov	edx, [edx]
		call	@System@@FinalizeArray$qqrv ; System::__linkproc__ FinalizeArray(void)
		dec	edi
		jg	short loc_4E5DBF
		pop	ebp
		jmp	short loc_4E5E0E
; ---------------------------------------------------------------------------

loc_4E5DDA:				; CODE XREF: .text:004E5D5Dj
		push	ebp
		mov	ebp, edx

loc_4E5DDD:				; CODE XREF: .text:004E5DEBj
		mov	eax, ebx
		add	ebx, [esi+ebp+2]
		mov	edx, esi
		call	unknown_libname_80 ; Borland Visual Component Library &	Packages
		dec	edi
		jg	short loc_4E5DDD
		pop	ebp
		jmp	short loc_4E5E0E
; ---------------------------------------------------------------------------

loc_4E5DF0:				; CODE XREF: .text:004E5D62j
					; .text:004E5DFBj
		mov	eax, ebx
		add	ebx, 4
		call	unknown_libname_88 ; Borland Visual Component Library &	Packages
		dec	edi
		jg	short loc_4E5DF0
		jmp	short loc_4E5E0E
; ---------------------------------------------------------------------------

loc_4E5DFF:				; CODE XREF: .text:004E5D6Bj
					; .text:004E5E0Cj
		mov	eax, ebx
		mov	edx, esi
		add	ebx, 4
		call	@System@@DynArrayClear$qqrrpvpv	; System::__linkproc__ DynArrayClear(void *&,void *)
		dec	edi
		jg	short loc_4E5DFF

loc_4E5E0E:				; CODE XREF: .text:004E5D88j
					; .text:004E5D94j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	eax

locret_4E5E12:				; CODE XREF: .text:004E5D2Fj
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_81:			; CODE XREF: .text:004E5D1Bp
		mov	ecx, 1		; Borland Visual Component Library & Packages
		jmp	@System@@FinalizeArray$qqrv ; System::__linkproc__ FinalizeArray(void)
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------
		align 10h

; int __fastcall System::WideCharLenToStrVar(LPCWSTR lpWideCharStr, int	cchWideChar)
@System@WideCharLenToStrVar$qqrpbir17System@AnsiString:	; CODE XREF: .text:004E5EC6p
		push	ebx
		push	esi
		push	edi
		push	ebp
		add	esp, 0FFFFF800h
		mov	esi, ecx
		mov	ebx, edx
		mov	edi, eax
		test	ebx, ebx
		jnz	short loc_4E5E3D
		mov	eax, esi
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		jmp	short loc_4E5E9E
; ---------------------------------------------------------------------------

loc_4E5E3D:				; CODE XREF: .text:004E5E32j
		cmp	ebx, 400h
		jge	short loc_4E5E6B
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	800h		; cbMultiByte
		lea	eax, [esp+0Ch]
		push	eax		; lpMultiByteStr
		push	ebx		; cchWideChar
		push	edi		; lpWideCharStr
		push	0		; dwFlags
		push	0		; CodePage
		call	WideCharToMultiByte
		mov	ecx, eax
		mov	edx, esp
		mov	eax, esi
		call	@@LStrFromPCharLen$qqrr10AnsiStringpci ; __linkproc__ LStrFromPCharLen(AnsiString &,char *,int)
		jmp	short loc_4E5E9E
; ---------------------------------------------------------------------------

loc_4E5E6B:				; CODE XREF: .text:004E5E43j
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	0		; cbMultiByte
		push	0		; lpMultiByteStr
		push	ebx		; cchWideChar
		push	edi		; lpWideCharStr
		push	0		; dwFlags
		push	0		; CodePage
		call	WideCharToMultiByte
		mov	ebp, eax
		mov	eax, esi
		mov	ecx, ebp
		xor	edx, edx
		call	@@LStrFromPCharLen$qqrr10AnsiStringpci ; __linkproc__ LStrFromPCharLen(AnsiString &,char *,int)
		push	0		; lpUsedDefaultChar
		push	0		; lpDefaultChar
		push	ebp		; cbMultiByte
		mov	eax, [esi]
		push	eax		; lpMultiByteStr
		push	ebx		; cchWideChar
		push	edi		; lpWideCharStr
		push	0		; dwFlags
		push	0		; CodePage
		call	WideCharToMultiByte

loc_4E5E9E:				; CODE XREF: .text:004E5E3Bj
					; .text:004E5E69j
		add	esp, 800h
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; int __fastcall System::OleStrToStrVar(LPCWSTR	lpWideCharStr)
@System@OleStrToStrVar$qqrpbr17System@AnsiString: ; CODE XREF: .text:004E617Ep
		push	ebx
		push	esi
		push	0
		mov	esi, edx
		mov	ebx, eax
		mov	[esp], ebx
		mov	eax, [esp]
		push	eax		; BSTR
		call	SysStringLen
		mov	edx, eax	; cchWideChar
		mov	ecx, esi
		mov	eax, ebx	; lpWideCharStr
		call	@System@WideCharLenToStrVar$qqrpbir17System@AnsiString ; System::WideCharLenToStrVar(wchar_t *,int,System::AnsiString &)
		pop	edx
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 10h

; _DWORD __fastcall System::StringToOleStr(LPCSTR lpMultiByteStr)
@System@StringToOleStr$qqrx17System@AnsiString:	; CODE XREF: .text:004E61A3p
		push	ebx
		push	esi
		push	edi
		push	ebp
		add	esp, 0FFFFF800h
		mov	ebx, eax
		mov	eax, ebx
		call	unknown_libname_77 ; Borland Visual Component Library &	Packages
		mov	esi, eax
		mov	eax, ebx
		call	unknown_libname_77 ; Borland Visual Component Library &	Packages
		cmp	eax, 400h
		jge	short loc_4E5F1E
		push	400h		; cchWideChar
		lea	eax, [esp+4]
		push	eax		; lpWideCharStr
		push	esi		; cbMultiByte
		mov	eax, ebx
		call	unknown_libname_78 ; Borland Visual Component Library &	Packages
		push	eax		; lpMultiByteStr
		push	0		; dwFlags
		push	0		; CodePage
		call	MultiByteToWideChar
		push	eax		; UINT
		lea	eax, [esp+4]
		push	eax		; OLECHAR *
		call	SysAllocStringLen
		mov	edi, eax
		jmp	short loc_4E5F46
; ---------------------------------------------------------------------------

loc_4E5F1E:				; CODE XREF: .text:004E5EF1j
		push	0		; cchWideChar
		push	0		; lpWideCharStr
		push	esi		; cbMultiByte
		push	ebx		; lpMultiByteStr
		push	0		; dwFlags
		push	0		; CodePage
		call	MultiByteToWideChar
		mov	ebp, eax
		push	ebp		; UINT
		push	0		; OLECHAR *
		call	SysAllocStringLen
		mov	edi, eax
		push	ebp		; cchWideChar
		push	edi		; lpWideCharStr
		push	esi		; cbMultiByte
		push	ebx		; lpMultiByteStr
		push	0		; dwFlags
		push	0		; CodePage
		call	MultiByteToWideChar

loc_4E5F46:				; CODE XREF: .text:004E5F1Cj
		mov	eax, edi
		add	esp, 800h
		pop	ebp
		pop	edi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E5F54:				; CODE XREF: .text:004E6112p
					; .text:004E6160p
					; DATA XREF: ...
		mov	al, 0Fh
		jmp	unknown_libname_58 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------

loc_4E5F5C:				; CODE XREF: .text:004E603Aj
					; DATA XREF: .text:004E6AD5o ...
		mov	al, 10h
		jmp	unknown_libname_58 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		retn
; ---------------------------------------------------------------------------

; int __fastcall unknown_libname_82(VARIANTARG *pvarg)
unknown_libname_82:			; CODE XREF: .text:004E6119p
					; .text:004E6185p ...
		xor	edx, edx	; Borland Visual Component Library & Packages
		mov	dx, [eax]
		test	edx, 4000h
		jnz	short loc_4E5F99
		cmp	edx, 8
		jb	short loc_4E5F99
		cmp	edx, 100h
		jz	short loc_4E5F8C
		cmp	edx, 101h
		jnz	short loc_4E5F9F
		jmp	dword_61B4D0
; ---------------------------------------------------------------------------

loc_4E5F8C:				; CODE XREF: .text:004E5F7Cj
		mov	word ptr [eax],	0
		add	eax, 8
		jmp	unknown_libname_69 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------

loc_4E5F99:				; CODE XREF: .text:004E5F6Fj
					; .text:004E5F74j
		mov	word ptr [eax],	0
		retn
; ---------------------------------------------------------------------------

loc_4E5F9F:				; CODE XREF: .text:004E5F84j
		push	eax		; pvarg
		call	VariantClear
		retn
; ---------------------------------------------------------------------------
		align 4

; int __fastcall System::__linkproc__ VarCopy(VARIANT *pvarDest, VARIANTARG *pvargSrc)
@System@@VarCopy$qqrr14System@Variantrx14System@Variant: ; CODE	XREF: .text:004E61D3p
					; .text:004E630Cp
		cmp	eax, edx
		jz	nullsub_5
		cmp	word ptr [eax],	8
		jb	short loc_4E5FE0
		push	eax
		push	edx
		cmp	word ptr [eax],	100h
		jz	short loc_4E5FD6
		cmp	word ptr [eax],	101h
		jz	short loc_4E5FCE
		push	eax		; pvarg
		call	VariantClear
		jmp	short loc_4E5FDE
; ---------------------------------------------------------------------------

loc_4E5FCE:				; CODE XREF: .text:004E5FC4j
		call	dword_61B4D0
		jmp	short loc_4E5FDE
; ---------------------------------------------------------------------------

loc_4E5FD6:				; CODE XREF: .text:004E5FBDj
		add	eax, 8
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages

loc_4E5FDE:				; CODE XREF: .text:004E5FCCj
					; .text:004E5FD4j
		pop	edx
		pop	eax

loc_4E5FE0:				; CODE XREF: .text:004E5FB4j
		cmp	word ptr [edx],	8
		jnb	short loc_4E5FF7

loc_4E5FE6:				; CODE XREF: .text:004E6006p
		mov	ecx, [edx]
		mov	[eax], ecx
		mov	ecx, [edx+8]
		mov	[eax+8], ecx
		mov	ecx, [edx+0Ch]
		mov	[eax+0Ch], ecx
		retn
; ---------------------------------------------------------------------------

loc_4E5FF7:				; CODE XREF: .text:004E5FE4j
		cmp	word ptr [edx],	100h
		jz	short loc_4E6012
		cmp	word ptr [edx],	101h
		jnz	short loc_4E602C
		push	eax
		call	loc_4E5FE6
		pop	eax
		jmp	dword_61B4D8
; ---------------------------------------------------------------------------

loc_4E6012:				; CODE XREF: .text:004E5FFCj
		mov	edx, [edx+8]
		or	edx, edx
		jz	short loc_4E6023
		mov	ecx, [edx-8]
		inc	ecx
		jle	short loc_4E6023
		lock inc dword ptr [edx-8]

loc_4E6023:				; CODE XREF: .text:004E6017j
					; .text:004E601Dj
		mov	word ptr [eax],	100h
		mov	[eax+8], edx
		retn
; ---------------------------------------------------------------------------

loc_4E602C:				; CODE XREF: .text:004E6003j
		mov	word ptr [eax],	0
		push	edx		; pvargSrc
		push	eax		; pvarDest
		call	VariantCopyInd
		or	eax, eax
		jnz	loc_4E5F5C

nullsub_5:				; CODE XREF: .text:004E5FAAj
		retn
; ---------------------------------------------------------------------------
		align 4

; System::_16723
@System@_16723:				; CODE XREF: .text:004E60BAp
					; .text:004E6137p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi
		push	edi
		mov	esi, edx
		lea	edi, [ebp-10h]
		push	ecx
		mov	ecx, 4
		rep movsd
		pop	ecx
		mov	esi, ecx
		mov	ebx, eax
		lea	eax, [ebp-10h]
		call	unknown_libname_86 ; Borland Visual Component Library &	Packages
		xor	eax, eax
		push	ebp
		push	offset loc_4E60A0
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		lea	eax, [ebp-10h]
		call	dword_61B4D4
		lea	edx, [ebp-10h]	; pvarSrc
		mov	eax, ebx	; pvarg
		mov	ecx, esi	; vt
		call	unknown_libname_84 ; Borland Visual Component Library &	Packages
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E60A7

loc_4E6097:				; CODE XREF: .text:004E60A5j
		lea	eax, [ebp-10h]
		call	loc_4E62EC
		retn
; ---------------------------------------------------------------------------

loc_4E60A0:				; DATA XREF: .text:004E606Ao
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E6097
; ---------------------------------------------------------------------------

loc_4E60A7:				; CODE XREF: .text:004E609Fj
					; DATA XREF: .text:004E6092o
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

unknown_libname_83:			; CODE XREF: .text:004E60EDp
					; .text:004E6144p
		push	ebx		; Borland Visual Component Library & Packages
		xor	ebx, ebx
		cmp	word ptr [edx],	101h
		jnz	short loc_4E60C1
		call	@System@_16723	; System::_16723
		mov	bl, 1

loc_4E60C1:				; CODE XREF: .text:004E60B8j
		mov	eax, ebx
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

; int __fastcall unknown_libname_84(VARIANTARG *pvarg, VARIANTARG *pvarSrc, VARTYPE vt)
unknown_libname_84:			; CODE XREF: .text:004E6085p
					; .text:004E621Ap ...
		push	ebp		; Borland Visual Component Library & Packages
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi
		push	edi
		mov	edi, ecx
		mov	esi, edx
		mov	ebx, eax
		mov	ax, [ebx]
		sub	ax, 100h
		jz	short loc_4E60E7
		dec	ax
		jz	short loc_4E6131
		jmp	short loc_4E613E
; ---------------------------------------------------------------------------

loc_4E60E7:				; CODE XREF: .text:004E60DEj
		mov	edx, esi
		mov	eax, ebx
		mov	ecx, edi
		call	unknown_libname_83 ; Borland Visual Component Library &	Packages
		test	al, al
		jnz	short loc_4E6165
		mov	word ptr [ebp-10h], 0
		push	edi		; vt
		push	0		; wFlags
		push	400h		; lcid
		push	esi		; pvarSrc
		lea	eax, [ebp-10h]
		push	eax		; pvargDest
		call	VariantChangeTypeEx
		test	eax, eax
		jz	short loc_4E6117
		call	loc_4E5F54

loc_4E6117:				; CODE XREF: .text:004E6110j
		mov	eax, ebx	; pvarg
		call	unknown_libname_82 ; Borland Visual Component Library &	Packages
		mov	eax, [ebp-10h]
		mov	[ebx], eax
		mov	eax, [ebp-8]
		mov	[ebx+8], eax
		mov	eax, [ebp-4]
		mov	[ebx+0Ch], eax
		jmp	short loc_4E6165
; ---------------------------------------------------------------------------

loc_4E6131:				; CODE XREF: .text:004E60E3j
		mov	edx, esi
		mov	eax, ebx
		mov	ecx, edi
		call	@System@_16723	; System::_16723
		jmp	short loc_4E6165
; ---------------------------------------------------------------------------

loc_4E613E:				; CODE XREF: .text:004E60E5j
		mov	edx, esi
		mov	eax, ebx
		mov	ecx, edi
		call	unknown_libname_83 ; Borland Visual Component Library &	Packages
		test	al, al
		jnz	short loc_4E6165
		push	edi		; vt
		push	0		; wFlags
		push	400h		; lcid
		push	esi		; pvarSrc
		push	ebx		; pvargDest
		call	VariantChangeTypeEx
		test	eax, eax
		jz	short loc_4E6165
		call	loc_4E5F54

loc_4E6165:				; CODE XREF: .text:004E60F4j
					; .text:004E612Fj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __fastcall Variants::_16474(VARIANTARG *pvarg)
@Variants@_16474:			; CODE XREF: .text:004E6252p
					; .text:004E627Fp
		push	ebp
		mov	ebp, esp
		push	ecx
		push	ebx
		mov	ebx, eax
		xor	eax, eax
		mov	[ebp-4], eax
		mov	eax, [edx+8]	; lpWideCharStr
		lea	edx, [ebp-4]
		call	@System@OleStrToStrVar$qqrpbr17System@AnsiString ; System::OleStrToStrVar(wchar_t *,System::AnsiString &)
		mov	eax, ebx	; pvarg
		call	unknown_libname_82 ; Borland Visual Component Library &	Packages
		mov	word ptr [ebx],	100h
		mov	eax, [ebp-4]
		mov	[ebx+8], eax
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __fastcall Variants::_16476(VARIANTARG *pvarg)
@Variants@_16476:			; CODE XREF: .text:004E61ECp
					; .text:004E61FFp
		push	ebx
		push	esi
		mov	ebx, eax
		mov	eax, [edx+8]	; lpMultiByteStr
		call	@System@StringToOleStr$qqrx17System@AnsiString ; System::StringToOleStr(System::AnsiString)
		mov	esi, eax
		mov	eax, ebx	; pvarg
		call	unknown_libname_82 ; Borland Visual Component Library &	Packages
		mov	word ptr [ebx],	8
		mov	[ebx+8], esi
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

unknown_libname_85:			; CODE XREF: .text:004E62D2p
		push	ebp		; Borland Visual Component Library & Packages
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		mov	[ebp-14h], eax
		mov	ax, [edx]
		mov	ebx, ecx
		cmp	bx, ax
		jnz	short loc_4E61DD
		mov	eax, [ebp-14h]	; pvarDest
		call	@System@@VarCopy$qqrr14System@Variantrx14System@Variant	; System::__linkproc__ VarCopy(System::Variant &,System::Variant &)
		jmp	loc_4E62AB
; ---------------------------------------------------------------------------

loc_4E61DD:				; CODE XREF: .text:004E61CEj
		cmp	ax, 100h
		jnz	short loc_4E623C
		cmp	bx, 8
		jnz	short loc_4E61F6
		mov	eax, [ebp-14h]	; pvarg
		call	@Variants@_16476 ; Variants::_16476
		jmp	loc_4E62AB
; ---------------------------------------------------------------------------

loc_4E61F6:				; CODE XREF: .text:004E61E7j
		mov	word ptr [ebp-10h], 0
		lea	eax, [ebp-10h]	; pvarg
		call	@Variants@_16476 ; Variants::_16476
		xor	eax, eax
		push	ebp
		push	offset loc_4E6235
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		lea	edx, [ebp-10h]	; pvarSrc
		mov	eax, [ebp-14h]	; pvarg
		mov	ecx, ebx	; vt
		call	unknown_libname_84 ; Borland Visual Component Library &	Packages
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E62AB

loc_4E622C:				; CODE XREF: .text:004E623Aj
		lea	eax, [ebp-10h]	; pvarg
		call	unknown_libname_82 ; Borland Visual Component Library &	Packages
		retn
; ---------------------------------------------------------------------------

loc_4E6235:				; DATA XREF: .text:004E6207o
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E622C
; ---------------------------------------------------------------------------

loc_4E623C:				; CODE XREF: .text:004E61E1j
		cmp	bx, 100h
		jnz	short loc_4E62A1
		cmp	ax, 101h
		jz	short loc_4E62A1
		cmp	ax, 8
		jnz	short loc_4E6259
		mov	eax, [ebp-14h]	; pvarg
		call	@Variants@_16474 ; Variants::_16474
		jmp	short loc_4E62AB
; ---------------------------------------------------------------------------

loc_4E6259:				; CODE XREF: .text:004E624Dj
		mov	word ptr [ebp-10h], 0
		lea	eax, [ebp-10h]	; pvarg
		mov	cx, 8		; vt
		call	unknown_libname_84 ; Borland Visual Component Library &	Packages
		xor	eax, eax
		push	ebp
		push	offset loc_4E629A
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		lea	edx, [ebp-10h]
		mov	eax, [ebp-14h]	; pvarg
		call	@Variants@_16474 ; Variants::_16474
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E62AB

loc_4E6291:				; CODE XREF: .text:004E629Fj
		lea	eax, [ebp-10h]	; pvarg
		call	unknown_libname_82 ; Borland Visual Component Library &	Packages
		retn
; ---------------------------------------------------------------------------

loc_4E629A:				; DATA XREF: .text:004E626Eo
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E6291
; ---------------------------------------------------------------------------

loc_4E62A1:				; CODE XREF: .text:004E6241j
					; .text:004E6247j
		mov	eax, [ebp-14h]	; pvarg
		mov	ecx, ebx	; vt
		call	unknown_libname_84 ; Borland Visual Component Library &	Packages

loc_4E62AB:				; CODE XREF: .text:004E61D8j
					; .text:004E61F1j ...
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; __fastcall System::__linkproc__ VarToLStr(System::AnsiString &, System::Variant const	&)
@System@@VarToLStr$qqrr17System@AnsiStringrx14System@Variant: ;	CODE XREF: .text:004E095Ep
		cmp	word ptr [edx],	100h
		jnz	short loc_4E62BF
		mov	edx, [edx+8]
		jmp	unknown_libname_71 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------

loc_4E62BF:				; CODE XREF: .text:004E62B5j
		push	ebx
		mov	ebx, eax
		sub	esp, 10h
		mov	word ptr [esp],	0
		mov	eax, esp
		mov	ecx, 100h
		call	unknown_libname_85 ; Borland Visual Component Library &	Packages
		mov	eax, ebx
		call	unknown_libname_69 ; Borland Visual Component Library &	Packages
		mov	eax, [esp+8]
		mov	[ebx], eax
		add	esp, 10h
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E62EC:				; CODE XREF: .text:004E5DB2p
					; .text:004E609Ap ...
		push	eax
		call	unknown_libname_82 ; Borland Visual Component Library &	Packages
		pop	eax
		retn
; ---------------------------------------------------------------------------

unknown_libname_86:			; CODE XREF: .text:004E6062p
		cmp	word ptr [eax],	8 ; Borland Visual Component Library & Packages
		jb	short locret_4E6314
		push	dword ptr [eax+0Ch]
		push	dword ptr [eax+8]
		push	dword ptr [eax+4]
		push	dword ptr [eax]
		mov	word ptr [eax],	0
		mov	edx, esp	; pvargSrc
		call	@System@@VarCopy$qqrr14System@Variantrx14System@Variant	; System::__linkproc__ VarCopy(System::Variant &,System::Variant &)
		add	esp, 10h

locret_4E6314:				; CODE XREF: .text:004E62F8j
		retn
; ---------------------------------------------------------------------------
		align 4

; __fastcall System::__linkproc__ DynArrayClear(void *&, void *)
@System@@DynArrayClear$qqrrpvpv:	; CODE XREF: .text:004E5E06p
		mov	ecx, [eax]
		test	ecx, ecx
		jz	short locret_4E6351
		mov	dword ptr [eax], 0
		lock dec dword ptr [ecx-8]
		jnz	short locret_4E6351
		push	eax
		mov	eax, ecx
		xor	ecx, ecx
		mov	cl, [edx+1]
		mov	edx, [edx+ecx+6]
		test	edx, edx
		jz	short loc_4E6348
		mov	ecx, [eax-4]
		test	ecx, ecx
		jz	short loc_4E6348
		mov	edx, [edx]
		call	@System@@FinalizeArray$qqrv ; System::__linkproc__ FinalizeArray(void)

loc_4E6348:				; CODE XREF: .text:004E6338j
					; .text:004E633Fj
		sub	eax, 8
		call	@System@@FreeMem$qqrv ;	System::__linkproc__ FreeMem(void)
		pop	eax

locret_4E6351:				; CODE XREF: .text:004E631Cj
					; .text:004E6328j
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall System::FindHInstance(LPCVOID lpAddress)
@System@FindHInstance$qqrpv:		; CODE XREF: .text:00401222p
					; .text:00401231p ...
		add	esp, 0FFFFFFE4h
		push	1Ch		; dwLength
		lea	edx, [esp+4]
		push	edx		; lpBuffer
		push	eax		; lpAddress
		call	VirtualQuery
		cmp	dword ptr [esp+10h], 1000h
		jnz	short loc_4E6374
		mov	eax, [esp+4]
		jmp	short loc_4E6376
; ---------------------------------------------------------------------------

loc_4E6374:				; CODE XREF: .text:004E636Cj
		xor	eax, eax

loc_4E6376:				; CODE XREF: .text:004E6372j
		add	esp, 1Ch
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_87:			; CODE XREF: .text:004E14CCp
					; .text:004E15B5p ...
		mov	edx, dword_579A84 ; Borland Visual Component Library & Packages
		test	edx, edx
		jz	short locret_4E639F

loc_4E6386:				; CODE XREF: .text:004E639Dj
		cmp	eax, [edx+4]
		jz	short loc_4E6395
		cmp	eax, [edx+8]
		jz	short loc_4E6395
		cmp	eax, [edx+0Ch]
		jnz	short loc_4E6399

loc_4E6395:				; CODE XREF: .text:004E6389j
					; .text:004E638Ej
		mov	eax, [edx+10h]
		retn
; ---------------------------------------------------------------------------

loc_4E6399:				; CODE XREF: .text:004E6393j
		mov	edx, [edx]
		test	edx, edx
		jnz	short loc_4E6386

locret_4E639F:				; CODE XREF: .text:004E6384j
		retn
; ---------------------------------------------------------------------------

; int __fastcall System::_16834(LPCSTR lpsz)
@System@_16834:				; CODE XREF: .text:004E6434p
					; .text:004E6447p ...
		jmp	short loc_4E63A8
; ---------------------------------------------------------------------------

loc_4E63A2:				; CODE XREF: .text:004E63B1j
		push	eax		; lpsz
		call	CharNextA

loc_4E63A8:				; CODE XREF: .text:System::_16834j
		mov	dl, [eax]
		test	dl, dl
		jz	short locret_4E63B3
		cmp	dl, 5Ch
		jnz	short loc_4E63A2

locret_4E63B3:				; CODE XREF: .text:004E63ACj
		retn
; ---------------------------------------------------------------------------

; System::_16835
@System@_16835:				; CODE XREF: .text:004E65E4p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFDB0h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-4], eax
		mov	eax, [ebp-4]
		mov	[ebp-8], eax
		push	offset aKernel32_dll_0 ; "kernel32.dll"
		call	GetModuleHandleA
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4E6419
		push	offset aGetlongpathnam ; "GetLongPathNameA"
		push	ebx		; hModule
		call	GetProcAddress
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jz	short loc_4E6419
		push	105h
		lea	eax, [ebp-24Fh]
		push	eax
		mov	eax, [ebp-4]
		push	eax
		call	dword ptr [ebp-0Ch]
		test	eax, eax
		jz	short loc_4E6419
		lea	eax, [ebp-24Fh]
		push	eax		; lpString2
		mov	eax, [ebp-4]
		push	eax		; lpString1
		call	lstrcpyA
		jmp	loc_4E652E
; ---------------------------------------------------------------------------

loc_4E6419:				; CODE XREF: .text:004E63D7j
					; .text:004E63EBj ...
		mov	eax, [ebp-4]
		cmp	byte ptr [eax],	5Ch
		jnz	short loc_4E6459
		mov	eax, [ebp-4]
		cmp	byte ptr [eax+1], 5Ch
		jnz	loc_4E652E
		mov	eax, [ebp-4]
		add	eax, 2		; lpsz
		call	@System@_16834	; System::_16834
		mov	ebx, eax
		cmp	byte ptr [ebx],	0
		jz	loc_4E652E
		lea	eax, [ebx+1]	; lpsz
		call	@System@_16834	; System::_16834
		mov	ebx, eax
		cmp	byte ptr [ebx],	0
		jz	loc_4E652E
		jmp	short loc_4E645F
; ---------------------------------------------------------------------------

loc_4E6459:				; CODE XREF: .text:004E641Fj
		mov	ebx, [ebp-4]
		add	ebx, 2

loc_4E645F:				; CODE XREF: .text:004E6457j
		mov	esi, ebx
		sub	esi, [ebp-4]
		lea	eax, [esi+1]
		push	eax		; iMaxLength
		mov	eax, [ebp-4]
		push	eax		; lpString2
		lea	eax, [ebp-24Fh]
		push	eax		; lpString1
		call	lstrcpynA
		jmp	loc_4E6515
; ---------------------------------------------------------------------------

loc_4E647D:				; CODE XREF: .text:004E6518j
		lea	eax, [ebx+1]	; lpsz
		call	@System@_16834	; System::_16834
		mov	edi, eax
		mov	eax, edi
		sub	eax, ebx
		mov	edx, eax
		add	edx, esi
		inc	edx
		cmp	edx, 105h
		jg	loc_4E652E
		inc	eax
		push	eax		; iMaxLength
		push	ebx		; lpString2
		lea	eax, [ebp-24Fh]
		add	eax, esi
		push	eax		; lpString1
		call	lstrcpynA
		lea	eax, [ebp-14Ah]
		push	eax		; lpFindFileData
		lea	eax, [ebp-24Fh]
		push	eax		; lpFileName
		call	FindFirstFileA
		mov	ebx, eax
		cmp	ebx, 0FFFFFFFFh
		jz	short loc_4E652E
		push	ebx		; hFindFile
		call	FindClose
		lea	eax, [ebp-11Eh]
		push	eax		; lpString
		call	lstrlenA
		lea	edx, [esi+1]
		add	eax, edx
		inc	eax
		cmp	eax, 105h
		jg	short loc_4E652E
		mov	byte ptr [ebp+esi-24Fh], 5Ch
		lea	eax, [ebp-11Eh]
		push	eax		; lpString2
		lea	eax, [ebp-24Fh]
		add	eax, esi
		inc	eax
		push	eax		; lpString1
		call	lstrcpyA
		lea	eax, [ebp-11Eh]
		push	eax		; lpString
		call	lstrlenA
		inc	eax
		add	esi, eax
		mov	ebx, edi

loc_4E6515:				; CODE XREF: .text:004E6478j
		cmp	byte ptr [ebx],	0
		jnz	loc_4E647D
		lea	eax, [ebp-24Fh]
		push	eax		; lpString2
		mov	eax, [ebp-4]
		push	eax		; lpString1
		call	lstrcpyA

loc_4E652E:				; CODE XREF: .text:004E6414j
					; .text:004E6428j ...
		mov	eax, [ebp-8]
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; CHAR aKernel32_dll_0[]
aKernel32_dll_0	db 'kernel32.dll',0     ; DATA XREF: .text:004E63C9o
		align 4
; CHAR aGetlongpathnam[]
aGetlongpathnam	db 'GetLongPathNameA',0 ; DATA XREF: .text:004E63D9o
		align 4

; _DWORD __fastcall System::LoadResourceModule(char *)
@System@LoadResourceModule$qqrpc:	; CODE XREF: .text:0040116Ep
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFEE0h
		push	ebx
		push	esi
		mov	[ebp-4], eax
		push	105h		; nSize
		lea	eax, [ebp-11Dh]
		push	eax		; lpFilename
		push	0		; hModule
		call	GetModuleFileNameA
		mov	byte ptr [ebp-12h], 0
		lea	eax, [ebp-8]
		push	eax		; phkResult
		push	0F003Fh		; samDesired
		push	0		; ulOptions
		push	offset aSoftwareBorl_0 ; "Software\\Borland\\Locales"
		push	80000001h	; hKey
		call	RegOpenKeyExA
		test	eax, eax
		jz	short loc_4E65BD
		lea	eax, [ebp-8]
		push	eax		; phkResult
		push	0F003Fh		; samDesired
		push	0		; ulOptions
		push	offset aSoftwareBorl_1 ; "Software\\Borland\\Delphi\\Locales"
		push	80000001h	; hKey
		call	RegOpenKeyExA
		test	eax, eax
		jnz	short loc_4E662F

loc_4E65BD:				; CODE XREF: .text:004E659Dj
		xor	eax, eax
		push	ebp
		push	offset loc_4E6628
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		mov	dword ptr [ebp-18h], 5
		lea	eax, [ebp-18h]
		push	eax		; lpcbData
		lea	eax, [ebp-12h]
		push	eax		; lpData
		push	0		; lpType
		push	0		; lpReserved
		lea	eax, [ebp-11Dh]
		call	@System@_16835	; System::_16835
		push	eax		; lpValueName
		mov	eax, [ebp-8]
		push	eax		; hKey
		call	RegQueryValueExA
		test	eax, eax
		jz	short loc_4E6611
		lea	eax, [ebp-18h]
		push	eax		; lpcbData
		lea	eax, [ebp-12h]
		push	eax		; lpData
		push	0		; lpType
		push	0		; lpReserved
		push	offset byte_4E6754 ; lpValueName
		mov	eax, [ebp-8]
		push	eax		; hKey
		call	RegQueryValueExA

loc_4E6611:				; CODE XREF: .text:004E65F5j
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E662F

loc_4E661E:				; CODE XREF: .text:004E662Dj
		mov	eax, [ebp-8]
		push	eax		; hKey
		call	RegCloseKey
		retn
; ---------------------------------------------------------------------------

loc_4E6628:				; DATA XREF: .text:004E65C0o
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E661E
; ---------------------------------------------------------------------------

loc_4E662F:				; CODE XREF: .text:004E65BBj
					; .text:004E6627j
					; DATA XREF: ...
		mov	eax, [ebp-4]
		push	eax		; lpString2
		lea	eax, [ebp-11Dh]
		push	eax		; lpString1
		call	lstrcpyA
		push	5		; cchData
		lea	eax, [ebp-0Dh]
		push	eax		; lpLCData
		push	3		; LCType
		call	GetThreadLocale
		push	eax		; Locale
		call	GetLocaleInfoA
		xor	esi, esi
		cmp	byte ptr [ebp-11Dh], 0
		jz	loc_4E6710
		cmp	byte ptr [ebp-0Dh], 0
		jnz	short loc_4E6671
		cmp	byte ptr [ebp-12h], 0
		jz	loc_4E6710

loc_4E6671:				; CODE XREF: .text:004E6665j
		lea	eax, [ebp-11Dh]
		push	eax		; lpString
		call	lstrlenA
		mov	ebx, eax
		lea	eax, [ebp-11Dh]
		add	ebx, eax
		jmp	short loc_4E668A
; ---------------------------------------------------------------------------

loc_4E6689:				; CODE XREF: .text:004E6697j
		dec	ebx

loc_4E668A:				; CODE XREF: .text:004E6687j
		cmp	byte ptr [ebx],	2Eh
		jz	short loc_4E6699
		lea	eax, [ebp-11Dh]
		cmp	ebx, eax
		jnz	short loc_4E6689

loc_4E6699:				; CODE XREF: .text:004E668Dj
		lea	eax, [ebp-11Dh]
		cmp	ebx, eax
		jz	short loc_4E6710
		inc	ebx
		cmp	byte ptr [ebp-12h], 0
		jz	short loc_4E66C6
		lea	eax, [ebp-12h]
		push	eax		; lpString2
		push	ebx		; lpString1
		call	lstrcpyA
		push	2		; dwFlags
		push	0		; hFile
		lea	eax, [ebp-11Dh]
		push	eax		; lpLibFileName
		call	LoadLibraryExA
		mov	esi, eax

loc_4E66C6:				; CODE XREF: .text:004E66A8j
		test	esi, esi
		jnz	short loc_4E6710
		cmp	byte ptr [ebp-0Dh], 0
		jz	short loc_4E6710
		lea	eax, [ebp-0Dh]
		push	eax		; lpString2
		push	ebx		; lpString1
		call	lstrcpyA
		push	2		; dwFlags
		push	0		; hFile
		lea	eax, [ebp-11Dh]
		push	eax		; lpLibFileName
		call	LoadLibraryExA
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4E6710
		mov	byte ptr [ebp-0Bh], 0
		lea	eax, [ebp-0Dh]
		push	eax		; lpString2
		push	ebx		; lpString1
		call	lstrcpyA
		push	2		; dwFlags
		push	0		; hFile
		lea	eax, [ebp-11Dh]
		push	eax		; lpLibFileName
		call	LoadLibraryExA
		mov	esi, eax

loc_4E6710:				; CODE XREF: .text:004E665Bj
					; .text:004E666Bj ...
		mov	eax, esi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; CHAR aSoftwareBorl_0[]
aSoftwareBorl_0	db 'Software\Borland\Locales',0 ; DATA XREF: .text:004E658Co
		align 4
; CHAR aSoftwareBorl_1[]
aSoftwareBorl_1	db 'Software\Borland\Delphi\Locales',0 ; DATA XREF: .text:004E65AAo
; CHAR byte_4E6754[4]
byte_4E6754	db 4 dup(0)		; DATA XREF: .text:004E6603o
; ---------------------------------------------------------------------------

loc_4E6758:				; CODE XREF: .text:004E67DFp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF8h
		push	ebx
		push	esi
		push	edi
		mov	[ebp-4], eax
		mov	eax, dword_579A88
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jz	short loc_4E67AB

loc_4E6772:				; CODE XREF: .text:004E67A9j
		xor	eax, eax
		push	ebp
		push	offset loc_4E6793
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		mov	ebx, [ebp-8]
		mov	eax, [ebp-4]
		call	dword ptr [ebx+4]
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		jmp	short loc_4E679D
; ---------------------------------------------------------------------------

loc_4E6793:				; DATA XREF: .text:004E6775o
		jmp	@System@@HandleAnyException$qqrv ; System::__linkproc__	HandleAnyException(void)
; ---------------------------------------------------------------------------
		call	@@DoneExcept$qqrv ; __linkproc__ DoneExcept(void)

loc_4E679D:				; CODE XREF: .text:004E6791j
		mov	eax, [ebp-8]
		mov	eax, [eax]
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jnz	short loc_4E6772

loc_4E67AB:				; CODE XREF: .text:004E6770j
		pop	edi
		pop	esi
		pop	ebx
		pop	ecx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; __fastcall System::RegisterModule(System::TLibModule *)
@System@RegisterModule$qqrp17System@TLibModule:	; CODE XREF: .text:0040118Ep
		mov	edx, dword_579A84
		mov	[eax], edx
		mov	dword_579A84, eax
		retn
; ---------------------------------------------------------------------------
		align 4

; __fastcall System::UnregisterModule(System::TLibModule *)
@System@UnregisterModule$qqrp17System@TLibModule: ; CODE XREF: .text:004011A1p
					; .text:004E5896p
		push	ebp
		mov	ebp, esp
		push	ecx
		mov	[ebp-4], eax
		xor	edx, edx
		push	ebp
		push	offset loc_4E6828
		push	dword ptr fs:[edx]
		mov	fs:[edx], esp
		mov	eax, [ebp-4]
		mov	eax, [eax+4]
		call	loc_4E6758
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E682F

loc_4E67F1:				; CODE XREF: .text:004E682Dj
		mov	eax, [ebp-4]
		cmp	eax, dword_579A84
		jnz	short loc_4E6808
		mov	eax, [ebp-4]
		mov	eax, [eax]
		mov	dword_579A84, eax
		jmp	short loc_4E6827
; ---------------------------------------------------------------------------

loc_4E6808:				; CODE XREF: .text:004E67FAj
		mov	eax, dword_579A84
		test	eax, eax
		jz	short loc_4E6827

loc_4E6811:				; CODE XREF: .text:004E6825j
		mov	edx, [eax]
		cmp	edx, [ebp-4]
		jnz	short loc_4E6821
		mov	edx, [ebp-4]
		mov	edx, [edx]
		mov	[eax], edx
		jmp	short loc_4E6827
; ---------------------------------------------------------------------------

loc_4E6821:				; CODE XREF: .text:004E6816j
		mov	eax, [eax]
		test	eax, eax
		jnz	short loc_4E6811

loc_4E6827:				; CODE XREF: .text:004E6806j
					; .text:004E680Fj ...
		retn
; ---------------------------------------------------------------------------

loc_4E6828:				; DATA XREF: .text:004E67CEo
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E67F1
; ---------------------------------------------------------------------------

loc_4E682F:				; CODE XREF: .text:loc_4E6827j
					; DATA XREF: .text:004E67ECo
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; __fastcall System::LoadResString(System::TResStringRec *)
@System@LoadResString$qqrp20System@TResStringRec: ; CODE XREF: .text:004E06BBp
					; .text:004E0F1Ep ...
		push	ebx
		push	esi
		add	esp, 0FFFFFC00h
		mov	esi, edx
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_4E6881
		cmp	dword ptr [ebx+4], 10000h
		jge	short loc_4E6877
		push	400h		; nBufferMax
		lea	eax, [esp+4]
		push	eax		; lpBuffer
		mov	eax, [ebx+4]
		push	eax		; uID
		mov	eax, [ebx]
		mov	eax, [eax]
		call	unknown_libname_87 ; Borland Visual Component Library &	Packages
		push	eax		; hInstance
		call	LoadStringA
		mov	ecx, eax
		mov	edx, esp
		mov	eax, esi
		call	@@LStrFromPCharLen$qqrr10AnsiStringpci ; __linkproc__ LStrFromPCharLen(AnsiString &,char *,int)
		jmp	short loc_4E6881
; ---------------------------------------------------------------------------

loc_4E6877:				; CODE XREF: .text:004E684Bj
		mov	eax, esi
		mov	edx, [ebx+4]
		call	unknown_libname_74 ; Borland Visual Component Library &	Packages

loc_4E6881:				; CODE XREF: .text:004E6842j
					; .text:004E6875j
		add	esp, 400h
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_88:			; CODE XREF: .text:004E5274p
					; .text:004E5DF5p
		mov	edx, [eax]	; Borland Visual Component Library & Packages
		test	edx, edx
		jz	short locret_4E68A0
		mov	dword ptr [eax], 0
		push	eax
		push	edx
		mov	eax, [edx]
		call	dword ptr [eax+8]
		pop	eax

locret_4E68A0:				; CODE XREF: .text:004E6890j
		retn
; ---------------------------------------------------------------------------
		align 4

; __fastcall System::__linkproc__ IntfCopy(System::DelphiInterface<IUnknown> &,	const System::DelphiInterface<IUnknown>)
@System@@IntfCopy$qqrr35System@_DelphiInterface$t8IUnknown_x35System@_DelphiInterface$t8IUnknown_:
					; CODE XREF: .text:004E51E3j
					; .text:004E523Ep
		mov	ecx, [eax]
		mov	[eax], edx
		test	edx, edx
		jz	short loc_4E68B4
		push	ecx
		push	edx
		mov	eax, [edx]
		call	dword ptr [eax+4]
		pop	ecx

loc_4E68B4:				; CODE XREF: .text:004E68AAj
		test	ecx, ecx
		jz	short locret_4E68BE
		push	ecx
		mov	eax, [ecx]
		call	dword ptr [eax+8]

locret_4E68BE:				; CODE XREF: .text:004E68B6j
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4E68C0:				; DATA XREF: .text:004E39F8o
		add	eax, 4
		push	eax		; lpAddend
		call	InterlockedDecrement
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __fastcall System::TInterfacedObject::BeforeDestruction(System::TInterfacedObject *__hidden this)
@System@TInterfacedObject@BeforeDestruction$qqrv: ; DATA XREF: .text:004E39FCo
		cmp	dword ptr [eax+4], 0
		jz	short locret_4E68D9
		mov	al, 2
		call	unknown_libname_58 ; Borland Visual Component Library &	Packages

locret_4E68D9:				; CODE XREF: .text:004E68D0j
		retn
; ---------------------------------------------------------------------------
		align 4

; __fastcall System::TInterfacedObject::NewInstance(System::TMetaClass *)
@System@TInterfacedObject@NewInstance$qqrp17System@TMetaClass: ; DATA XREF: .text:004E3A08o
		call	unknown_libname_62 ; Borland Visual Component Library &	Packages
		mov	dword ptr [eax+4], 1
		retn
; ---------------------------------------------------------------------------
		align 4

; int __stdcall	unknown_libname_89(System::TObject *, _GUID *, void *)
unknown_libname_89:			; CODE XREF: .text:004E397Ej
		push	ebp		; Borland Visual Component Library & Packages
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		mov	ecx, [ebp+10h]	; void *
		mov	edx, [ebp+0Ch]	; _GUID	*
		mov	eax, ebx	; this
		call	@System@TObject@GetInterface$qqrrx5_GUIDpv ; System::TObject::GetInterface(_GUID &,void	*)
		test	al, al
		jz	short loc_4E6908
		xor	eax, eax
		jmp	short loc_4E690D
; ---------------------------------------------------------------------------

loc_4E6908:				; CODE XREF: .text:004E6902j
		mov	eax, 80004002h

loc_4E690D:				; CODE XREF: .text:004E6906j
		pop	ebx
		pop	ebp
		retn	0Ch
; ---------------------------------------------------------------------------
		align 4

; _DWORD __stdcall Corbaobj::TCorbaImplementation::ObjAddRef(Corbaobj::TCorbaImplementation *this)
@Corbaobj@TCorbaImplementation@ObjAddRef$qqsv: ; CODE XREF: .text:004E3988j
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		add	eax, 4
		push	eax		; lpAddend
		call	InterlockedIncrement
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------
		align 4

unknown_libname_90:			; CODE XREF: .text:004E3992j
		push	ebp		; Borland Visual Component Library & Packages
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+8]
		lea	eax, [ebx+4]
		push	eax		; lpAddend
		call	InterlockedDecrement
		mov	esi, eax
		test	esi, esi
		jnz	short loc_4E6948
		mov	dl, 1
		mov	eax, ebx
		mov	ecx, [eax]
		call	dword ptr [ecx-4]

loc_4E6948:				; CODE XREF: .text:004E693Dj
		mov	eax, esi
		pop	esi
		pop	ebx
		pop	ebp
		retn	4
; ---------------------------------------------------------------------------

; int __cdecl CLOSE()
_CLOSE:					; CODE XREF: .text:004E2E06p
					; .text:004E6A1Ep ...
		push	ebx
		mov	ebx, eax
		mov	edx, [eax+4]
		sub	edx, 0D7B1h
		jz	short loc_4E696C
		cmp	edx, 2
		ja	short loc_4E697C
		call	dword ptr [eax+1Ch]
		test	eax, eax
		jnz	short loc_4E6975
		mov	eax, ebx

loc_4E696C:				; CODE XREF: .text:004E695Cj
		call	dword ptr [ebx+24h]
		test	eax, eax
		jnz	short loc_4E6975

loc_4E6973:				; CODE XREF: .text:004E697Aj
					; .text:004E6981j
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4E6975:				; CODE XREF: .text:004E6968j
					; .text:004E6971j ...
		call	loc_4E4EB8
		jmp	short loc_4E6973
; ---------------------------------------------------------------------------

loc_4E697C:				; CODE XREF: .text:004E6961j
		cmp	eax, offset byte_61B138
		jz	short loc_4E6973
		mov	eax, 67h
		jmp	short loc_4E6975
; ---------------------------------------------------------------------------
		align 4

_READCHAR:				; CODE XREF: .text:004E2DB8p
		cmp	dword ptr [eax+4], 0D7B1h
		jnz	short loc_4E69AF

loc_4E6995:				; CODE XREF: .text:004E69D4j
		mov	edx, [eax+0Ch]
		cmp	edx, [eax+10h]
		jnb	short loc_4E69D8

loc_4E699D:				; CODE XREF: .text:004E69E7j
		mov	ecx, [eax+14h]
		mov	cl, [ecx+edx]
		cmp	cl, 1Ah
		jz	short loc_4E69AC
		inc	edx
		mov	[eax+0Ch], edx

loc_4E69AC:				; CODE XREF: .text:004E69A6j
		mov	al, cl
		retn
; ---------------------------------------------------------------------------

loc_4E69AF:				; CODE XREF: .text:004E6993j
		cmp	eax, offset byte_61B138
		jz	short loc_4E69C3

loc_4E69B6:				; CODE XREF: .text:004E69D6j
		mov	eax, 68h
		call	loc_4E4EB8
		mov	al, 1Ah
		retn
; ---------------------------------------------------------------------------

loc_4E69C3:				; CODE XREF: .text:004E69B4j
		call	@System@@ResetText$qqrrpv ; System::__linkproc__ ResetText(void	*&)
		mov	eax, offset byte_61B138
		cmp	dword ptr [eax+4], 0D7B1h
		jz	short loc_4E6995
		jmp	short loc_4E69B6
; ---------------------------------------------------------------------------

loc_4E69D8:				; CODE XREF: .text:004E699Bj
		push	eax
		call	dword ptr [eax+1Ch]
		test	eax, eax
		jnz	short loc_4E69F6
		pop	eax
		mov	edx, [eax+0Ch]
		cmp	edx, [eax+10h]
		jb	short loc_4E699D
		mov	ecx, [eax+14h]
		mov	byte ptr [ecx+edx], 1Ah
		inc	dword ptr [eax+10h]
		mov	al, 1Ah
		retn
; ---------------------------------------------------------------------------

loc_4E69F6:				; CODE XREF: .text:004E69DEj
		call	loc_4E4EB8
		pop	eax
		mov	al, 1Ah
		retn
; ---------------------------------------------------------------------------
		align 10h

; _DWORD __cdecl System::Finalization()
@System@Finalization$qqrv:		; DATA XREF: .data:004F6134o
		push	ebp
		mov	ebp, esp
		xor	eax, eax
		push	ebp
		push	offset loc_4E6A5E
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		inc	dword_61B514
		jnz	short loc_4E6A50
		mov	eax, offset byte_61B138
		call	_CLOSE
		mov	eax, offset byte_61B304
		call	_CLOSE
		call	unknown_libname_49 ; Borland Visual Component Library &	Packages
		mov	eax, offset word_61B4FC
		call	loc_4E62EC
		mov	eax, offset word_61B4EC
		call	loc_4E62EC
		mov	eax, offset word_61B4DC
		call	loc_4E62EC

loc_4E6A50:				; CODE XREF: .text:004E6A17j
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E6A65

loc_4E6A5D:				; CODE XREF: .text:004E6A63j
		retn
; ---------------------------------------------------------------------------

loc_4E6A5E:				; DATA XREF: .text:004E6A06o
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E6A5D
; ---------------------------------------------------------------------------

loc_4E6A65:				; CODE XREF: .text:loc_4E6A5Dj
					; DATA XREF: .text:004E6A58o
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __cdecl System::initialization()
@System@initialization$qqrv:		; CODE XREF: .text:004E7248p
					; DATA XREF: .data:004F60BCo
		push	ebp
		mov	ebp, esp
		xor	eax, eax
		push	ebp
		push	offset loc_4E6B50
		push	dword ptr fs:[eax]
		mov	fs:[eax], esp
		sub	dword_61B514, 1
		jnb	loc_4E6B42
		xor	eax, eax
		mov	dword_61B120, eax
		xor	eax, eax
		mov	lpAddress, eax
		xor	eax, eax
		mov	dword_61B12C, eax
		mov	byte_61B132, 2
		mov	byte_61B133, 2
		mov	byte_61B134, 3
		mov	word_61B4DC, 0
		mov	word_61B4EC, 1
		mov	word_61B4FC, 0Ah
		mov	dword_61B504, 80020004h
		mov	dword_61B4D0, offset loc_4E5F5C
		mov	dword_61B4D4, offset loc_4E5F54
		mov	dword_61B4D8, offset loc_4E5F5C
		call	@System@_16692	; System::_16692
		test	al, al
		jz	short loc_4E6B01
		call	@System@_16541	; System::_16541

loc_4E6B01:				; CODE XREF: .text:004E6AFAj
		call	unknown_libname_61 ; Borland Visual Component Library &	Packages
		mov	eax, offset byte_61B138
		mov	edx, offset dword_4E6B5C
		call	@System@@Assign$qqrrpvr28System@_SmallString$iuc$255_ ;	System::__linkproc__ Assign(void *&,System::SmallString<(uchar)255> &)
		mov	eax, offset byte_61B304
		mov	edx, offset dword_4E6B5C
		call	@System@@Assign$qqrrpvr28System@_SmallString$iuc$255_ ;	System::__linkproc__ Assign(void *&,System::SmallString<(uchar)255> &)
		call	GetCommandLineA
		mov	dword_61B118, eax
		call	@System@_16453	; System::_16453
		mov	dword_61B114, eax
		call	GetCurrentThreadId
		mov	dword_61B10C, eax

loc_4E6B42:				; CODE XREF: .text:004E6A80j
		xor	eax, eax
		pop	edx
		pop	ecx
		pop	ecx
		mov	fs:[eax], edx
		push	offset loc_4E6B57

loc_4E6B4F:				; CODE XREF: .text:004E6B55j
		retn
; ---------------------------------------------------------------------------

loc_4E6B50:				; DATA XREF: .text:004E6A6Eo
		jmp	unknown_libname_68 ; Borland Visual Component Library &	Packages
; ---------------------------------------------------------------------------
		jmp	short loc_4E6B4F
; ---------------------------------------------------------------------------

loc_4E6B57:				; CODE XREF: .text:loc_4E6B4Fj
					; DATA XREF: .text:004E6B4Ao
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
dword_4E6B5C	dd 0			; DATA XREF: .text:004E6B0Bo
					; .text:004E6B1Ao
; ---------------------------------------------------------------------------

; void *__cdecl	calloc(size_t nitems, _size_t size)
_calloc:				; CODE XREF: .text:004F0742p
					; .text:004F0929p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		mov	esi, [ebp+8]
		imul	esi, [ebp+0Ch]
		push	esi		; size
		call	_malloc
		pop	ecx
		mov	ebx, eax
		test	eax, eax
		jz	short loc_4E6B85
		push	esi		; n
		push	0		; c
		push	ebx		; s
		call	_memset
		add	esp, 0Ch

loc_4E6B85:				; CODE XREF: .text:004E6B77j
		mov	eax, ebx
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _rtl_close(int handle)
__rtl_close:				; CODE XREF: .text:004E6BA3p
					; .text:004E73D7p ...
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax		; block
		call	_free
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl _close(int handle)
__close:				; CODE XREF: .text:004F3930p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax		; handle
		call	__rtl_close
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __cdecl std::set_new_handler(void (*)(void))
@std@set_new_handler$qpqv$v:		; CODE XREF: .text:004E6DC9p
		push	ebp
		mov	ebp, esp
		mov	eax, dword_61B5B8
		mov	edx, [ebp+8]
		mov	dword_61B5B8, edx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; _DWORD __cdecl operator new(size_t size)
@$bnew$qui:				; CODE XREF: .text:004E6D67p
					; .text:004E83A6p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		mov	eax, offset stru_579B20
		push	ebx
		push	esi
		push	edi
		lea	edi, [ebp-4]
		mov	ebx, [ebp+8]
		call	@__InitExceptBlockLDTC
		test	ebx, ebx
		jnz	short loc_4E6C2E
		mov	ebx, 1
		jmp	short loc_4E6C2E
; ---------------------------------------------------------------------------

loc_4E6BE4:				; CODE XREF: .text:004E6C39j
		cmp	dword_61B5B8, 0
		jz	short loc_4E6BF5
		call	dword_61B5B8
		jmp	short loc_4E6C2E
; ---------------------------------------------------------------------------

loc_4E6BF5:				; CODE XREF: .text:004E6BEBj
		lea	eax, [ebp-28h]
		push	eax
		push	0
		push	0
		push	0
		push	1
		push	offset @std@bad_alloc@$bctr$qrx13std@bad_alloc ; std::bad_alloc::bad_alloc(std::bad_alloc &)
		push	0
		mov	word ptr [ebp-18h], 8
		mov	dword ptr [edi], offset	off_579B64
		inc	dword ptr [ebp-0Ch]
		mov	dword ptr [edi], offset	off_579B78
		inc	dword ptr [ebp-0Ch]
		push	edi
		push	offset @$xt$13std@bad_alloc ; `__tpdsc__'[std::bad_alloc]
		call	loc_4F1FF4
		add	esp, 24h

loc_4E6C2E:				; CODE XREF: .text:004E6BDBj
					; .text:004E6BE2j ...
		push	ebx		; size
		call	_malloc
		pop	ecx
		mov	esi, eax
		test	eax, eax
		jz	short loc_4E6BE4
		mov	eax, esi
		mov	edx, [ebp-28h]
		mov	 fs:0, edx
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; `__tpdsc__'[std::bad_alloc]
@$xt$13std@bad_alloc dd	4		     ; tpDtt ; DATA XREF: .text:004E6C21o
					; .text:`__tpdsc__'[std::bad_alloc *]o ...
		dw 3			; tpMask ; BCC v4.x/5.x	& BCB v1.0/v7.0	BDS2006	win32 runtime
		dw 30h			; tpName
		dd 0			; bParent
		dd 77h			; tpcFlags
		dw 40h			; Size
		dw 50h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 2			; DtorCount
		dd 2			; DtorAltCount
		dd offset unknown_libname_6; DtorAddr
		dw 1			; DtorMask
		dw 54h			; DtorMemberOff
		db 'std::bad_alloc',0   ; Name
		align 4
		dd offset @$xt$13std@exception ; Parent
		dd 0, 3, 0
		dd 0
		dd 0			; end of tpid
; ---------------------------------------------------------------------------

; std::bad_alloc::bad_alloc(std::bad_alloc const &)
@std@bad_alloc@$bctr$qrx13std@bad_alloc: ; DATA	XREF: .text:004E6C01o
					; .text:004E6D8Fo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		mov	eax, offset stru_579B44
		call	@__InitExceptBlockLDTC
		mov	word ptr [ebp-14h], 8
		mov	edx, [ebp+8]
		mov	dword ptr [edx], offset	off_579B64
		inc	dword ptr [ebp-8]
		mov	ecx, [ebp+8]
		mov	dword ptr [ecx], offset	off_579B78
		mov	eax, [ebp-24h]
		mov	fs:0, eax
		mov	eax, [ebp+8]
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; `__tpdsc__'[std::bad_alloc *]
@$xt$p13std@bad_alloc dd 4		      ;	tpDtt ;	DATA XREF: .data:stru_579B34o
					; .data:off_579BA4o ...
		dw 90h			; tpMask ; `__tpdsc__'[std::bad_alloc]
		dw 0Ch			; tpName
		dd offset @$xt$13std@bad_alloc;	BaseType
		db 'bad_alloc *',0      ; Name
; `__tpdsc__'[std::exception]
@$xt$13std@exception dd	4		     ; tpDtt ; DATA XREF: .text:004E6C90o
					; .data:00579B58o
		dw 3			; tpMask ; BCC v4.x/5.x	& BCB v1.0/v7.0	BDS2006	win32 runtime
		dw 30h			; tpName
		dd 0			; bParent
		dd 73h			; tpcFlags
		dw 40h			; Size
		dw 44h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 1			; DtorCount
		dd 1			; DtorAltCount
		dd offset unknown_libname_5; DtorAddr
		dw 1			; DtorMask
		dw 48h			; DtorMemberOff
		db 'std::exception',0   ; Name
		align 4
		dd 0
		dd 0
		dd 0			; end of tpid
; ---------------------------------------------------------------------------

loc_4E6D48:				; DATA XREF: .data:00579B68o
		push	ebp
		mov	ebp, esp
		mov	eax, off_579DAC
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E6D54:				; DATA XREF: .data:00579B7Co
		push	ebp
		mov	ebp, esp
		mov	eax, off_579DB4
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; _DWORD __cdecl operator new[](size_t size)
@$bnwa$qui:				; CODE XREF: .text:004E844Ep
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax		; size
		call	@$bnew$qui	; operator new(uint)
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

; void unknown_libname_2(void)
unknown_libname_2:			; DATA XREF: .text:loc_4E6DC4o
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		add	esp, 0FFFFFFD8h
		mov	eax, offset stru_579B90
		call	@__InitExceptBlockLDTC
		lea	edx, [ebp-28h]
		lea	ecx, [ebp-4]
		push	edx
		push	0
		push	0
		push	0
		push	1
		push	offset @std@bad_alloc@$bctr$qrx13std@bad_alloc ; std::bad_alloc::bad_alloc(std::bad_alloc &)
		push	0
		mov	word ptr [ebp-18h], 8
		mov	dword ptr [ebp-4], offset off_579B64
		inc	dword ptr [ebp-0Ch]
		mov	dword ptr [ebp-4], offset off_579B78
		inc	dword ptr [ebp-0Ch]
		push	ecx
		push	offset @$xt$13std@bad_alloc ; `__tpdsc__'[std::bad_alloc]
		call	loc_4F1FF4
		add	esp, 24h
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E6DC4:				; DATA XREF: .data:004F6020o
		push	offset unknown_libname_2 ; void	(*)(void)
		call	@std@set_new_handler$qpqv$v ; std::set_new_handler(void	(*)(void))
		pop	ecx
		retn
; ---------------------------------------------------------------------------

loc_4E6DD0:				; DATA XREF: .data:004F6026o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		mov	eax, offset stru_579BD8
		call	@__InitExceptBlockLDTC
		mov	word ptr [ebp-14h], 8
		mov	dword_61B5BC, offset off_579B64
		inc	dword ptr [ebp-8]
		mov	dword_61B5BC, offset off_579B78
		inc	dword ptr [ebp-8]
		mov	edx, [ebp-24h]
		mov	 fs:0, edx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4E6E10:				; DATA XREF: .data:004F60E6o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		mov	eax, offset stru_579BEC
		call	@__InitExceptBlockLDTC
		sub	dword ptr [ebp-8], 2
		push	2		; char
		push	offset dword_61B5BC ; handle
		call	unknown_libname_6 ; BCC	v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		add	esp, 8
		mov	edx, [ebp-24h]
		mov	fs:0, edx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E6E44:				; CODE XREF: .text:loc_4E6F02p
		push	offset aBorlndmm_1 ; "borlndmm"
		call	LoadLibraryA
		cmp	eax, dword_61B5D4
		jz	short locret_4E6E61
		push	offset aHrdir_b_cLoadl ; "hrdir_b.c: LoadLibrary != mmdll borlndm"...
		call	__ErrorExit
; ---------------------------------------------------------------------------
		pop	ecx

locret_4E6E61:				; CODE XREF: .text:004E6E54j
		retn
; ---------------------------------------------------------------------------
		align 4

___CRTL_MEM_GetBorMemPtrs:		; CODE XREF: .text:004E6F16p
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+0Ch]
		mov	esi, [ebp+8]
		test	esi, esi
		jz	short loc_4E6E7E
		test	edi, edi
		jz	short loc_4E6E7E
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4E6E82

loc_4E6E7E:				; CODE XREF: .text:004E6E72j
					; .text:004E6E76j
		xor	eax, eax
		jmp	short loc_4E6EDB
; ---------------------------------------------------------------------------

loc_4E6E82:				; CODE XREF: .text:004E6E7Cj
		push	offset aBorlndmm ; "borlndmm"
		call	GetModuleHandleA
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_4E6E96
		xor	eax, eax
		jmp	short loc_4E6EDB
; ---------------------------------------------------------------------------

loc_4E6E96:				; CODE XREF: .text:004E6E90j
		push	offset a@borlndmm@sysg ; "@Borlndmm@SysGetMem$qqri"
		push	ebx		; hModule
		call	GetProcAddress
		mov	[esi], eax
		push	offset a@borlndmm@sysf ; "@Borlndmm@SysFreeMem$qqrpv"
		push	ebx		; hModule
		call	GetProcAddress
		mov	[edi], eax
		push	offset a@borlndmm@sysr ; "@Borlndmm@SysReallocMem$qqrpvi"
		push	ebx		; hModule
		call	GetProcAddress
		mov	edx, [ebp+10h]
		mov	[edx], eax
		cmp	dword ptr [esi], 0
		jz	short loc_4E6ED2
		cmp	dword ptr [edi], 0
		jz	short loc_4E6ED2
		mov	ecx, [ebp+10h]
		cmp	dword ptr [ecx], 0
		jnz	short loc_4E6ED6

loc_4E6ED2:				; CODE XREF: .text:004E6EC3j
					; .text:004E6EC8j
		xor	eax, eax
		jmp	short loc_4E6EDB
; ---------------------------------------------------------------------------

loc_4E6ED6:				; CODE XREF: .text:004E6ED0j
		mov	eax, 1

loc_4E6EDB:				; CODE XREF: .text:004E6E80j
					; .text:004E6E94j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

___CRTL_MEM_CheckBorMem:		; CODE XREF: .text:004E70BFp
		push	ebx
		push	esi
		mov	esi, offset unk_579D58
		push	offset aBorlndmm_0 ; "borlndmm"
		call	GetModuleHandleA
		mov	ebx, eax
		mov	dword_61B5D4, ebx
		test	ebx, ebx
		jnz	short loc_4E6F02
		xor	eax, eax
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4E6F02:				; CODE XREF: .text:004E6EFBj
		call	loc_4E6E44
		push	offset dword_61B5C8
		push	offset dword_61B5C0
		push	offset dword_61B5C4
		call	___CRTL_MEM_GetBorMemPtrs
		add	esp, 0Ch
		push	offset a@borlndmm@heap ; "@Borlndmm@HeapAddRef$qqrv"
		mov	edx, dword_61B5D4
		push	edx		; hModule
		call	GetProcAddress
		mov	dword_61B5CC, eax
		push	offset a@borlndmm@he_0 ; "@Borlndmm@HeapRelease$qqrv"
		mov	ecx, dword_61B5D4
		push	ecx		; hModule
		call	GetProcAddress
		mov	dword_61B5D0, eax
		cmp	dword_61B5CC, 0
		jz	short loc_4E6F5C
		cmp	dword_61B5D0, 0
		jnz	short loc_4E6F87

loc_4E6F5C:				; CODE XREF: .text:004E6F51j
		mov	dword ptr [esi+0Ch], offset __internal_free
		mov	dword ptr [esi+10h], offset __internal_malloc
		mov	dword ptr [esi+14h], offset __internal_realloc
		mov	dword ptr [esi+18h], offset __internal_free_heaps
		mov	dword ptr [esi+8], 3
		mov	eax, 1
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------

loc_4E6F87:				; CODE XREF: .text:004E6F5Aj
		cmp	dword_61B5C4, 0
		jz	short loc_4E6FA2
		cmp	dword_61B5C0, 0
		jz	short loc_4E6FA2
		cmp	dword_61B5C8, 0
		jnz	short loc_4E6FAD

loc_4E6FA2:				; CODE XREF: .text:004E6F8Ej
					; .text:004E6F97j
		push	offset aHrdir_b_cGetme ; "hrdir_b.c: GetMem or FreeMem or Realloc"...
		call	__ErrorExit
; ---------------------------------------------------------------------------
		pop	ecx

loc_4E6FAD:				; CODE XREF: .text:004E6FA0j
		cmp	dword ptr [esi+4], 0
		jnz	short loc_4E6FB9
		cmp	dword ptr [esi+8], 0
		jz	short loc_4E6FC4

loc_4E6FB9:				; CODE XREF: .text:004E6FB1j
		push	offset aHrdir_b_cFatal ; "hrdir_b.c: FATAL!!! memory has been all"...
		call	__ErrorExit
; ---------------------------------------------------------------------------
		pop	ecx

loc_4E6FC4:				; CODE XREF: .text:004E6FB7j
		mov	dword ptr [esi+0Ch], offset __bormm_stub_FreeMem
		mov	dword ptr [esi+10h], offset __bormm_stub_GetMem
		mov	dword ptr [esi+14h], offset __bormm_stub_ReallocMem
		mov	dword ptr [esi+18h], offset __bormm_stub_Terminate
		mov	dword ptr [esi+8], 2
		mov	edx, dword_61B5C8
		push	edx
		mov	ecx, dword_61B5C0
		push	ecx
		mov	eax, dword_61B5C4
		push	eax
		call	___CRTL_VCL_HookSystem
		add	esp, 0Ch
		call	dword_61B5CC
		mov	eax, 1
		pop	esi
		pop	ebx
		retn
; ---------------------------------------------------------------------------
		align 4

__bormm_stub_FreeMem:			; DATA XREF: .text:loc_4E6FC4o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4E7024
		call	dword_61B5C0

loc_4E7024:				; CODE XREF: .text:004E701Cj
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__bormm_stub_GetMem:			; DATA XREF: .text:004E6FCBo
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4E703A
		call	dword_61B5C4
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E703A:				; CODE XREF: .text:004E7030j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

__bormm_stub_ReallocMem:		; DATA XREF: .text:004E6FD2o
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+0Ch]
		mov	edx, [ebp+8]
		test	edx, edx
		jnz	short loc_4E7059
		test	eax, eax
		jz	short loc_4E7075
		call	dword_61B5C4
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E7059:				; CODE XREF: .text:004E704Bj
		test	eax, eax
		jnz	short loc_4E7067
		mov	eax, edx
		call	dword_61B5C0
		jmp	short loc_4E7075
; ---------------------------------------------------------------------------

loc_4E7067:				; CODE XREF: .text:004E705Bj
		mov	ecx, eax
		mov	eax, edx
		mov	edx, ecx
		call	dword_61B5C8
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E7075:				; CODE XREF: .text:004E704Fj
					; .text:004E7065j
		xor	eax, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__bormm_stub_Terminate:			; DATA XREF: .text:004E6FD9o
		call	dword_61B5D0
		retn
; ---------------------------------------------------------------------------
		align 4

; void *__cdecl	malloc(size_t size)
_malloc:				; CODE XREF: .text:004E6B6Dp
					; .text:004E6C2Fp ...
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax
		call	off_579D68
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; void __cdecl free(void *block)
_free:					; CODE XREF: .text:004E6B93p
					; .text:004E93EDp ...
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+8]
		push	eax
		call	off_579D64
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; void *__cdecl	realloc(void *block, _size_t size)
_realloc:				; CODE XREF: .text:004F0166p
		push	ebp
		mov	ebp, esp
		mov	eax, [ebp+0Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	off_579D6C
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

___CRTL_MEM_Revector:			; CODE XREF: .text:004E7109p
					; .text:004E7121p ...
		push	ebp
		mov	ebp, esp
		call	___CRTL_MEM_CheckBorMem
		test	eax, eax
		jnz	short loc_4E70FA
		mov	off_579D64, offset __internal_free
		mov	off_579D68, offset __internal_malloc
		mov	off_579D6C, offset __internal_realloc
		mov	off_579D70, offset __internal_free_heaps
		mov	dword_579D60, 4

loc_4E70FA:				; CODE XREF: .text:004E70C6j
		mov	eax, [ebp+8]
		mov	dword_579D5C, eax
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E7104:				; CODE XREF: .text:004E709Bp
					; .text:004E7113p
					; DATA XREF: ...
		push	ebp
		mov	ebp, esp
		push	1
		call	___CRTL_MEM_Revector
		pop	ecx
		mov	eax, [ebp+8]
		push	eax
		call	off_579D64
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E711C:				; CODE XREF: .text:004E708Bp
					; .text:004E712Bp
					; DATA XREF: ...
		push	ebp
		mov	ebp, esp
		push	1
		call	___CRTL_MEM_Revector
		pop	ecx
		mov	eax, [ebp+8]
		push	eax
		call	off_579D68
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

loc_4E7134:				; CODE XREF: .text:004E70AFp
					; .text:004E7147p
					; DATA XREF: ...
		push	ebp
		mov	ebp, esp
		push	1
		call	___CRTL_MEM_Revector
		pop	ecx
		mov	eax, [ebp+0Ch]
		push	eax
		mov	edx, [ebp+8]
		push	edx
		call	off_579D6C
		add	esp, 8
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

nullsub_6:				; CODE XREF: .text:004E716Dp
					; DATA XREF: .data:off_579D70o
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E7158:				; DATA XREF: .data:004F60ECo
		mov	dword_579D54, 1
		retn
; ---------------------------------------------------------------------------
		align 4

__free_heaps:
		cmp	dword_579D54, 0
		jz	short locret_4E7173
		call	off_579D70

locret_4E7173:				; CODE XREF: .text:004E716Bj
		retn
; ---------------------------------------------------------------------------

nullsub_1:				; CODE XREF: .text:0040102Fp
		retn
; ---------------------------------------------------------------------------
		align 4

; _DWORD __cdecl InitProntoMemoryManager()
@InitProntoMemoryManager$qqrv:
		xor	eax, eax
		retn
; ---------------------------------------------------------------------------
		align 4

__internal_malloc:			; DATA XREF: .text:004E6F63o
					; .text:004E70D2o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		mov	ebx, [ebp+8]
		lea	eax, [ebp-0Ch]
		call	@System@GetMemoryManager$qqrr21System@TMemoryManager ; System::GetMemoryManager(System::TMemoryManager &)
		mov	eax, ebx
		call	dword ptr [ebp-0Ch]
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

__internal_free:			; DATA XREF: .text:loc_4E6F5Co
					; .text:004E70C8o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4E71B5
		mov	ebx, eax
		lea	eax, [ebp-0Ch]
		call	@System@GetMemoryManager$qqrr21System@TMemoryManager ; System::GetMemoryManager(System::TMemoryManager &)
		mov	eax, ebx
		call	dword ptr [ebp-8]

loc_4E71B5:				; CODE XREF: .text:004E71A4j
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__internal_realloc:			; DATA XREF: .text:004E6F6Ao
					; .text:004E70DCo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi
		push	edi
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		lea	eax, [ebp-10h]
		call	@System@GetMemoryManager$qqrr21System@TMemoryManager ; System::GetMemoryManager(System::TMemoryManager &)
		test	esi, esi
		jz	short loc_4E71F3
		test	ebx, ebx
		jnz	short loc_4E71E4
		mov	eax, esi
		call	dword ptr [ebp-0Ch]
		xor	eax, eax
		jmp	short loc_4E7202
; ---------------------------------------------------------------------------

loc_4E71E4:				; CODE XREF: .text:004E71D9j
		mov	edi, ebx
		mov	[ebp-4], esi
		mov	edx, edi
		mov	eax, [ebp-4]
		call	dword ptr [ebp-8]
		jmp	short loc_4E7202
; ---------------------------------------------------------------------------

loc_4E71F3:				; CODE XREF: .text:004E71D5j
		test	ebx, ebx
		jnz	short loc_4E71FB
		xor	eax, eax
		jmp	short loc_4E7202
; ---------------------------------------------------------------------------

loc_4E71FB:				; CODE XREF: .text:004E71F5j
		mov	esi, ebx
		mov	eax, esi
		call	dword ptr [ebp-10h]

loc_4E7202:				; CODE XREF: .text:004E71E2j
					; .text:004E71F1j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

__internal_free_heaps:			; DATA XREF: .text:004E6F71o
					; .text:004E70E6o
		retn
; ---------------------------------------------------------------------------
		align 10h

___CRTL_VCL_Init:			; CODE XREF: .text:00401029p
		mov	eax, edx
		cmp	byte_4F61E0, 0
		jnz	short loc_4E7240
		cmp	byte_4F61E1, 0
		jz	short loc_4E7238
		cmp	byte_4F61E1, 0
		jz	short loc_4E7240
		mov	edx, off_57D7D4
		cmp	dword ptr [edx], 0
		jnz	short loc_4E7240

loc_4E7238:				; CODE XREF: .text:004E7222j
		mov	ecx, off_57D7D4
		mov	[ecx], eax

loc_4E7240:				; CODE XREF: .text:004E7219j
					; .text:004E722Bj ...
		mov	eax, off_57D7D8
		mov	byte ptr [eax],	1
		call	@System@initialization$qqrv ; System::initialization(void)
		retn
; ---------------------------------------------------------------------------
		align 10h

nullsub_3:				; CODE XREF: .text:00401034p
		retn
; ---------------------------------------------------------------------------
		align 4

___CRTL_VCL_HookSystem:			; CODE XREF: .text:004E6FFBp
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		call	@System@IsMemoryManagerSet$qqrv	; System::IsMemoryManagerSet(void)
		test	al, al
		jnz	short loc_4E727D
		mov	eax, [ebp+8]
		mov	[ebp-0Ch], eax
		lea	eax, [ebp-0Ch]
		mov	edx, [ebp+0Ch]
		mov	[ebp-8], edx
		mov	ecx, [ebp+10h]
		mov	[ebp-4], ecx
		call	@System@SetMemoryManager$qqrrx21System@TMemoryManager ;	System::SetMemoryManager(System::TMemoryManager	&)

loc_4E727D:				; CODE XREF: .text:004E7261j
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

unknown_libname_3:			; void *
		push	offset @$xt$14std@bad_typeid
		push	0		; void *
		push	1		; void *
		call	@__GetTypeInfo$qpvt1t1 ; __GetTypeInfo(void *,void *,void *)
		add	esp, 0Ch
		push	eax
		push	offset @$xt$12std@bad_cast ; void *
		push	0		; void *
		push	1		; void *
		call	@__GetTypeInfo$qpvt1t1 ; __GetTypeInfo(void *,void *,void *)
		add	esp, 0Ch
		push	eax
		call	@std@type_info@$beql$xqrx13std@type_info ; std::type_info::operator==(std::type_info &)
		add	esp, 8
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E72B4:				; DATA XREF: .data:004F6032o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		mov	eax, offset stru_579D84
		call	@__InitExceptBlockLDTC
		mov	word ptr [ebp-14h], 8
		push	offset stru_61B5D8 ; lpCriticalSection
		call	InitializeCriticalSection
		mov	dword_61B5F0, 1
		inc	dword ptr [ebp-8]
		mov	edx, [ebp-24h]
		mov	fs:0, edx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h

loc_4E72F0:				; DATA XREF: .data:004F60F8o
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		mov	eax, offset stru_579D98
		call	@__InitExceptBlockLDTC
		dec	dword ptr [ebp-8]
		cmp	dword_61B5F0, 0
		jz	short loc_4E731E
		xor	edx, edx
		push	offset stru_61B5D8 ; lpCriticalSection
		mov	dword_61B5F0, edx
		call	DeleteCriticalSection

loc_4E731E:				; CODE XREF: .text:004E730Aj
		mov	ecx, [ebp-24h]
		mov	fs:0, ecx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; `__tpdsc__'[std::bad_cast]
@$xt$12std@bad_cast dd 8		    ; tpDtt ; DATA XREF: .text:004E7296o
		dw 1			; tpMask
		dw 10h			; tpName
		dd 0FFFFFFFFh		; BaseType
		dd 0			; Elements
		db 'std::bad_cast',0    ; Name
		align 4
; `__tpdsc__'[std::bad_typeid]
@$xt$14std@bad_typeid dd 8		      ;	tpDtt ;	DATA XREF: .text:unknown_libname_3o
					; .text:004E8330o
		dw 1			; tpMask
		dw 10h			; tpName
		dd 0FFFFFFFFh		; BaseType
		dd 0			; Elements
		db 'std::bad_typeid',0  ; Name
; `__tpdsc__'[_RWSTDMutex]
@$xt$11_RWSTDMutex dd 1Ch		   ; tpDtt ; DATA XREF:	.data:off_579D74o
					; .data:off_579DC0o
		dw 3			; tpMask ; _RWSTDMutex::~_RWSTDMutex(void)
		dw 30h			; tpName
		dd 0FFFFFFFFh		; bParent
		dd 3			; tpcFlags
		dw 3Ch			; Size
		dw 40h			; ExpDim
		dd 0			; mfnDel
		dw 0			; mfnMask
		dw 0			; mfnMaskArr
		dd 0			; mfnDelArr
		dd 1			; DtorCount
		dd 1			; DtorAltCount
		dd offset @_RWSTDMutex@$bdtr$qv; DtorAddr
		dw 1			; DtorMask
		dw 44h			; DtorMemberOff
		db '_RWSTDMutex',0      ; Name
		dd 0
		dd 0
		dd 0			; end of tpid
; ---------------------------------------------------------------------------

; _DWORD __cdecl _RWSTDMutex::~_RWSTDMutex(LPCRITICAL_SECTION lpCriticalSection)
@_RWSTDMutex@$bdtr$qv:			; DATA XREF: .text:`__tpdsc__'[_RWSTDMutex]o
		push	ebp
		mov	ebp, esp
		push	ebx
		mov	ebx, [ebp+8]
		test	ebx, ebx
		jz	short loc_4E73DD
		cmp	dword ptr [ebx+18h], 0
		jz	short loc_4E73D0
		xor	eax, eax
		mov	[ebx+18h], eax
		push	ebx		; lpCriticalSection
		call	DeleteCriticalSection

loc_4E73D0:				; CODE XREF: .text:004E73C3j
		test	byte ptr [ebp+0Ch], 1
		jz	short loc_4E73DD
		push	ebx		; handle
		call	__rtl_close
		pop	ecx

loc_4E73DD:				; CODE XREF: .text:004E73BDj
					; .text:004E73D4j
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------

unknown_libname_4:			; DATA XREF: .data:004F6038o
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		mov	eax, offset stru_579DD0
		call	@__InitExceptBlockLDTC
		mov	word ptr [ebp-14h], 8
		push	offset stru_61B604 ; lpCriticalSection
		call	InitializeCriticalSection
		mov	dword_61B61C, 1
		inc	dword ptr [ebp-8]
		mov	edx, [ebp-24h]
		mov	fs:0, edx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_4E741C:				; DATA XREF: .data:004F60FEo
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		mov	eax, offset stru_579DE4
		call	@__InitExceptBlockLDTC
		dec	dword ptr [ebp-8]
		cmp	dword_61B61C, 0
		jz	short loc_4E744A
		xor	edx, edx
		push	offset stru_61B604 ; lpCriticalSection
		mov	dword_61B61C, edx
		call	DeleteCriticalSection

loc_4E744A:				; CODE XREF: .text:004E7436j
		mov	ecx, [ebp-24h]
		mov	fs:0, ecx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------

; int __cdecl unknown_libname_5(int handle, char)
unknown_libname_5:			; CODE XREF: .text:004E74ADp
					; DATA XREF: .text:`__tpdsc__'[std::exception]o ...
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		mov	eax, [ebp+8]
		test	eax, eax
		jz	short loc_4E7475
		mov	dword ptr [eax], offset	off_579B64
		test	byte ptr [ebp+0Ch], 1
		jz	short loc_4E7475
		push	eax		; handle
		call	__rtl_close
		pop	ecx

loc_4E7475:				; CODE XREF: .text:004E7460j
					; .text:004E746Cj
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

; int __cdecl unknown_libname_6(int handle, char)
unknown_libname_6:			; CODE XREF: .text:004E6E2Bp
					; DATA XREF: .text:`__tpdsc__'[std::bad_alloc]o ...
		push	ebp		; BCC v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		mov	ebp, esp
		add	esp, 0FFFFFFDCh
		mov	eax, offset stru_579E64
		call	@__InitExceptBlockLDTC
		mov	dword ptr [ebp-8], 1
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4E74C5
		mov	word ptr [ebp-14h], 8
		mov	edx, [ebp+8]
		mov	dword ptr [edx], offset	off_579B78
		dec	dword ptr [ebp-8]
		push	0		; char
		mov	ecx, [ebp+8]
		push	ecx		; handle
		call	unknown_libname_5 ; BCC	v4.x/5.x & BCB v1.0/v7.0 BDS2006 win32 runtime
		add	esp, 8
		test	byte ptr [ebp+0Ch], 1
		jz	short loc_4E74C5
		mov	eax, [ebp+8]
		push	eax		; handle
		call	__rtl_close
		pop	ecx

loc_4E74C5:				; CODE XREF: .text:004E7493j
					; .text:004E74B9j
		mov	edx, [ebp-24h]
		mov	fs:0, edx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
