.code

; Exported entry 152. _Insertdata
; Exported entry 627. Insertdata

; int __cdecl Insertdata(ulong _addr, int type, void *data, ulong datasize)
		public Insertdata
Insertdata:				; CODE XREF: .text:0042841Fp
					; .text:00428438p ...
		push	ebp		; _Insertdata
		mov	ebp, esp
		add	esp, 0FFFFFFF0h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_438BA4
		cmp	dword ptr [ebp+0Ch], 0FFh
		jz	short loc_438BA4
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_438BA4
		cmp	dword ptr [ebp+14h], 1000h
		ja	short loc_438BA4
		cmp	dword_5DC5E4, 0
		jnz	short loc_438BAC

loc_438BA4:				; CODE XREF: .text:00438B81j
					; .text:00438B8Aj ...
		or	eax, 0FFFFFFFFh
		jmp	loc_438F4E
; ---------------------------------------------------------------------------

loc_438BAC:				; CODE XREF: .text:00438BA2j
		mov	eax, dword_5DC5E4
		cmp	eax, dword_5DC5E8
		jg	short loc_438C0C
		mov	esi, eax
		sar	esi, 1
		jns	short loc_438BC2
		adc	esi, 0

loc_438BC2:				; CODE XREF: .text:00438BBDj
		add	esi, eax
		push	0		; flags
		mov	eax, esi
		shl	eax, 2		; int
		push	eax		; size
		call	Virtalloc
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jz	short loc_438C0C
		mov	eax, dword_5DC5E4
		mov	edx, dword_5DC5E0
		shl	eax, 2
		push	eax		; n
		push	edx		; src
		push	ebx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, dword_5DC5E0
		push	ecx		; data
		call	Virtfree
		pop	ecx
		mov	dword_5DC5E0, ebx
		mov	dword_5DC5E4, esi

loc_438C0C:				; CODE XREF: .text:00438BB7j
					; .text:00438BD8j
		mov	edx, dword_5E05F8
		add	edx, 1007h
		mov	eax, dword_5E05F4
		cmp	edx, eax
		jb	loc_438D24
		mov	ecx, eax
		shr	ecx, 2		; int
		cmp	ecx, dword_5E05FC
		jnb	short loc_438C37
		mov	[ebp-4], eax
		jmp	short loc_438C4E
; ---------------------------------------------------------------------------

loc_438C37:				; CODE XREF: .text:00438C30j
		cmp	eax, 40000h
		jnb	short loc_438C45
		add	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_438C4E
; ---------------------------------------------------------------------------

loc_438C45:				; CODE XREF: .text:00438C3Cj
		mov	edx, eax
		shr	edx, 1
		add	edx, eax	; int
		mov	[ebp-4], edx

loc_438C4E:				; CODE XREF: .text:00438C35j
					; .text:00438C43j
		push	0		; flags
		mov	eax, [ebp-4]	; int
		push	eax		; size
		call	Virtalloc
		add	esp, 8
		mov	[ebp-0Ch], eax
		cmp	dword ptr [ebp-0Ch], 0
		jz	loc_438D24
		xor	ecx, ecx
		xor	esi, esi
		mov	[ebp-8], ecx
		jmp	short loc_438CA8
; ---------------------------------------------------------------------------

loc_438C72:				; CODE XREF: .text:00438CAEj
		mov	eax, dword_5DC5E0
		mov	ebx, [eax+esi*4]
		add	ebx, dword_5E05F0
		movzx	edi, word ptr [ebx+5]
		add	edi, 7
		push	edi		; n
		push	ebx		; src
		mov	eax, [ebp-0Ch]
		add	eax, [ebp-8]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, dword_5DC5E0
		mov	ecx, [ebp-8]
		mov	[edx+esi*4], ecx
		add	[ebp-8], edi
		inc	esi

loc_438CA8:				; CODE XREF: .text:00438C70j
		cmp	esi, dword_5DC5E8
		jl	short loc_438C72
		mov	dword ptr [ebp-10h], offset dword_5DC5EC
		xor	esi, esi
		jmp	short loc_438CEE
; ---------------------------------------------------------------------------

loc_438CBB:				; CODE XREF: .text:00438CF4j
		mov	eax, [ebp-10h]
		mov	ebx, [eax]
		add	ebx, dword_5E05F0
		movzx	edi, word ptr [ebx+5]
		add	edi, 7
		push	edi		; n
		push	ebx		; src
		mov	eax, [ebp-0Ch]
		add	eax, [ebp-8]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [ebp-10h]
		mov	ecx, [ebp-8]
		mov	[edx], ecx
		add	[ebp-8], edi
		inc	esi
		add	dword ptr [ebp-10h], 4

loc_438CEE:				; CODE XREF: .text:00438CB9j
		cmp	esi, dword_5E05EC
		jl	short loc_438CBB
		mov	eax, dword_5E05F0
		push	eax		; data
		call	Virtfree
		pop	ecx
		mov	edx, [ebp-0Ch]
		mov	dword_5E05F0, edx
		mov	ecx, [ebp-4]
		mov	dword_5E05F4, ecx
		mov	eax, [ebp-8]
		mov	dword_5E05F8, eax
		xor	edx, edx
		mov	dword_5E05FC, edx

loc_438D24:				; CODE XREF: .text:00438C1Fj
					; .text:00438C63j
		mov	ecx, [ebp+0Ch]
		push	ecx
		mov	eax, [ebp+8]
		push	eax
		call	loc_4370BC
		mov	esi, eax
		mov	eax, dword_5DC5E0
		mov	edi, [ebp+14h]
		add	esp, 8
		mov	ebx, [eax+esi*4]
		add	edi, 7
		add	ebx, dword_5E05F0
		cmp	esi, dword_5DC5E8
		jge	loc_438E77
		mov	eax, [ebx]
		cmp	eax, [ebp+8]
		jnz	loc_438E77
		mov	dl, [ebp+0Ch]
		cmp	dl, [ebx+4]
		jnz	loc_438E77
		cmp	dword ptr [ebp+14h], 0
		jnz	short loc_438DB2
		add	dword_5E05FC, edi
		dec	dword_5DC5E8
		mov	edx, dword_5DC5E8
		cmp	esi, edx
		jge	loc_438F40
		mov	eax, esi
		sub	edx, esi
		shl	eax, 2
		add	eax, dword_5DC5E0
		shl	edx, 2
		mov	ecx, eax
		add	ecx, 4
		push	edx		; n
		push	ecx		; src
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch
		jmp	loc_438F40
; ---------------------------------------------------------------------------

loc_438DB2:				; CODE XREF: .text:00438D71j
		movzx	eax, word ptr [ebx+5]
		cmp	eax, [ebp+14h]
		jb	short loc_438DE9
		mov	edx, [ebp+14h]
		push	edx		; n
		mov	ecx, [ebp+10h]
		push	ecx		; src
		lea	eax, [ebx+7]
		push	eax		; dest
		call	_memcpy
		movzx	edx, word ptr [ebx+5]
		sub	edx, [ebp+14h]
		add	esp, 0Ch
		mov	cx, [ebp+14h]
		add	dword_5E05FC, edx
		mov	[ebx+5], cx
		jmp	loc_438F40
; ---------------------------------------------------------------------------

loc_438DE9:				; CODE XREF: .text:00438DB9j
		mov	eax, dword_5E05F8
		add	eax, edi
		cmp	eax, dword_5E05F4
		jbe	short loc_438E25
		cmp	dword_5E0600, 0
		jnz	short loc_438E13
		push	offset aDataTableFullS ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		pop	ecx

loc_438E13:				; CODE XREF: .text:00438DFFj
		mov	dword_5E0600, 1
		or	eax, 0FFFFFFFFh
		jmp	loc_438F4E
; ---------------------------------------------------------------------------

loc_438E25:				; CODE XREF: .text:00438DF6j
		mov	ebx, dword_5E05F0
		add	ebx, dword_5E05F8
		mov	eax, [ebp+8]
		mov	[ebx], eax
		mov	dl, [ebp+0Ch]
		mov	[ebx+4], dl
		mov	cx, [ebp+14h]
		mov	[ebx+5], cx
		mov	eax, [ebp+14h]
		push	eax		; n
		mov	edx, [ebp+10h]
		push	edx		; src
		add	ebx, 7
		push	ebx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, dword_5DC5E0
		mov	edx, dword_5E05F8
		mov	[eax+esi*4], edx
		add	dword_5E05F8, edi
		add	dword_5E05FC, edi
		jmp	loc_438F40
; ---------------------------------------------------------------------------

loc_438E77:				; CODE XREF: .text:00438D50j
					; .text:00438D5Bj ...
		cmp	dword ptr [ebp+14h], 0
		jz	loc_438F40
		mov	ecx, dword_5DC5E8
		cmp	ecx, dword_5DC5E4
		jge	short loc_438E9E
		mov	eax, dword_5E05F8
		add	eax, edi
		cmp	eax, dword_5E05F4
		jbe	short loc_438ECB

loc_438E9E:				; CODE XREF: .text:00438E8Dj
		cmp	dword_5E0600, 0
		jnz	short loc_438EB9
		push	offset aDataTableFullS ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		pop	ecx

loc_438EB9:				; CODE XREF: .text:00438EA5j
		mov	dword_5E0600, 1
		or	eax, 0FFFFFFFFh
		jmp	loc_438F4E
; ---------------------------------------------------------------------------

loc_438ECB:				; CODE XREF: .text:00438E9Cj
		mov	edx, dword_5DC5E8
		cmp	esi, edx
		jge	short loc_438EF3
		sub	edx, esi
		shl	edx, 2
		push	edx		; n
		mov	eax, esi
		shl	eax, 2
		add	eax, dword_5DC5E0
		push	eax		; src
		add	eax, 4
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch

loc_438EF3:				; CODE XREF: .text:00438ED3j
		mov	ebx, dword_5E05F0
		add	ebx, dword_5E05F8
		mov	eax, [ebp+8]
		mov	[ebx], eax
		mov	dl, [ebp+0Ch]
		mov	[ebx+4], dl
		mov	cx, [ebp+14h]
		mov	[ebx+5], cx
		mov	eax, [ebp+14h]
		push	eax		; n
		mov	edx, [ebp+10h]
		push	edx		; src
		add	ebx, 7
		push	ebx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, dword_5DC5E0
		mov	edx, dword_5E05F8
		mov	[eax+esi*4], edx
		add	dword_5E05F8, edi
		inc	dword_5DC5E8

loc_438F40:				; CODE XREF: .text:00438D87j
					; .text:00438DADj ...
		xor	eax, eax
		mov	ecx, dword_5DC5E8
		mov	dword_5E0604, ecx

loc_438F4E:				; CODE XREF: .text:00438BA7j
					; .text:00438E20j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 153. _Finddata
; Exported entry 506. Finddata

; int __cdecl Finddata(ulong _addr, int type, void *data, ulong datasize)
		public Finddata
Finddata:				; CODE XREF: .text:004282ABp
					; .text:0042839Ep ...
		push	ebp		; _Finddata
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+14h]
		mov	edi, [ebp+0Ch]
		cmp	edi, 0FFh
		jz	short loc_438F76
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_438F76
		test	esi, esi
		jnz	short loc_438F7A

loc_438F76:				; CODE XREF: .text:00438F6Aj
					; .text:00438F70j
		xor	eax, eax
		jmp	short loc_438FF1
; ---------------------------------------------------------------------------

loc_438F7A:				; CODE XREF: .text:00438F74j
		cmp	dword_5DC5E4, 0
		jnz	short loc_438F87
		xor	eax, eax
		jmp	short loc_438FF1
; ---------------------------------------------------------------------------

loc_438F87:				; CODE XREF: .text:00438F81j
		push	edi
		mov	edx, [ebp+8]
		push	edx
		call	loc_4370BC
		add	esp, 8
		cmp	eax, dword_5DC5E8
		jl	short loc_438FA0
		xor	eax, eax
		jmp	short loc_438FF1
; ---------------------------------------------------------------------------

loc_438FA0:				; CODE XREF: .text:00438F9Aj
		mov	edx, dword_5DC5E0
		mov	ebx, [edx+eax*4]
		add	ebx, dword_5E05F0
		mov	eax, [ebx]
		cmp	eax, [ebp+8]
		jnz	short loc_438FBD
		mov	edx, edi
		cmp	dl, [ebx+4]
		jz	short loc_438FC1

loc_438FBD:				; CODE XREF: .text:00438FB4j
		xor	eax, eax
		jmp	short loc_438FF1
; ---------------------------------------------------------------------------

loc_438FC1:				; CODE XREF: .text:00438FBBj
		movzx	eax, word ptr [ebx+5]
		cmp	esi, eax
		jbe	short loc_438FDE
		sub	esi, eax
		push	esi		; n
		push	0		; c
		add	eax, [ebp+10h]
		push	eax		; s
		call	_memset
		movzx	esi, word ptr [ebx+5]
		add	esp, 0Ch

loc_438FDE:				; CODE XREF: .text:00438FC7j
		push	esi		; n
		add	ebx, 7
		push	ebx		; src
		mov	eax, [ebp+10h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, esi

loc_438FF1:				; CODE XREF: .text:00438F78j
					; .text:00438F85j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 154. _Finddataptr
; Exported entry 507. Finddataptr

; int __cdecl Finddataptr(ulong	_addr, int type,	ulong *datasize)
		public Finddataptr
Finddataptr:				; CODE XREF: .text:00436877p
					; .text:00484407p ...
		push	ebp		; _Finddataptr
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	ebx, [ebp+0Ch]
		mov	esi, [ebp+8]
		cmp	ebx, 0FFh
		jnz	short loc_439013
		xor	eax, eax
		jmp	short loc_439061
; ---------------------------------------------------------------------------

loc_439013:				; CODE XREF: .text:0043900Dj
		cmp	dword_5DC5E4, 0
		jnz	short loc_439020
		xor	eax, eax
		jmp	short loc_439061
; ---------------------------------------------------------------------------

loc_439020:				; CODE XREF: .text:0043901Aj
		push	ebx
		push	esi
		call	loc_4370BC
		add	esp, 8
		cmp	eax, dword_5DC5E8
		jl	short loc_439036
		xor	eax, eax
		jmp	short loc_439061
; ---------------------------------------------------------------------------

loc_439036:				; CODE XREF: .text:00439030j
		mov	edx, dword_5DC5E0
		mov	ecx, [edx+eax*4]
		add	ecx, dword_5E05F0
		mov	eax, ecx
		cmp	esi, [eax]
		jnz	short loc_439050
		cmp	bl, [eax+4]
		jz	short loc_439054

loc_439050:				; CODE XREF: .text:00439049j
		xor	eax, eax
		jmp	short loc_439061
; ---------------------------------------------------------------------------

loc_439054:				; CODE XREF: .text:0043904Ej
		test	edi, edi
		jz	short loc_43905E
		movzx	edx, word ptr [eax+5]
		mov	[edi], edx

loc_43905E:				; CODE XREF: .text:00439056j
		add	eax, 7

loc_439061:				; CODE XREF: .text:00439011j
					; .text:0043901Ej ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 155. _Startnextdata
; Exported entry 726. Startnextdata

; int __cdecl Startnextdata(ulong addr0, ulong addr1, int type)
		public Startnextdata
Startnextdata:				; CODE XREF: .text:0043AB93p
					; .text:0045D2BFp ...
		push	ebp		; _Startnextdata
		mov	ebp, esp
		push	ebx
		cmp	dword_5DC5E4, 0
		mov	ebx, [ebp+10h]
		jz	short loc_439084
		test	ebx, ebx
		jz	short loc_439084
		cmp	ebx, 0FFh
		jnz	short loc_43909D

loc_439084:				; CODE XREF: .text:00439076j
					; .text:0043907Aj
		xor	eax, eax
		mov	dword_5E0604, eax
		xor	edx, edx
		mov	dword_5E0608, edx
		xor	ecx, ecx
		mov	dword_5E060C, ecx
		jmp	short loc_4390BE
; ---------------------------------------------------------------------------

loc_43909D:				; CODE XREF: .text:00439082j
		push	ebx
		mov	eax, [ebp+8]
		push	eax
		call	loc_4370BC
		mov	dword_5E0604, eax
		mov	edx, [ebp+0Ch]
		mov	dword_5E0608, edx
		mov	dword_5E060C, ebx
		add	esp, 8

loc_4390BE:				; CODE XREF: .text:0043909Bj
		xor	ecx, ecx
		mov	dword_5E0710, ecx
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 156. _Findnextdata
; Exported entry 525. Findnextdata

; int __cdecl Findnextdata(ulong *_addr,	void *data, ulong datasize)
		public Findnextdata
Findnextdata:				; CODE XREF: .text:0043ABA8p
					; .text:0045D2E1p ...
		push	ebp		; _Findnextdata
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	esi, [ebp+10h]
		mov	edi, [ebp+0Ch]
		cmp	dword ptr [ebp+8], 0
		jz	short loc_4390E6
		test	esi, esi
		jnz	short loc_4390ED
		test	edi, edi
		jz	short loc_4390ED

loc_4390E6:				; CODE XREF: .text:004390DCj
		xor	eax, eax
		jmp	loc_439199
; ---------------------------------------------------------------------------

loc_4390ED:				; CODE XREF: .text:004390E0j
					; .text:004390E4j
		cmp	dword_5DC5E4, 0
		jz	short loc_439103
		cmp	dword_5E060C, 0
		jnz	loc_439185

loc_439103:				; CODE XREF: .text:004390F4j
		xor	eax, eax
		jmp	loc_439199
; ---------------------------------------------------------------------------

loc_43910A:				; CODE XREF: .text:00439191j
		mov	edx, dword_5DC5E0
		mov	ecx, dword_5E0604
		mov	ebx, [edx+ecx*4]
		add	ebx, dword_5E05F0
		mov	eax, [ebx]
		cmp	eax, dword_5E0608
		jnb	short loc_439197
		mov	dl, [ebx+4]
		cmp	dl, byte ptr dword_5E060C
		jnz	short loc_43917F
		mov	ecx, [ebp+8]
		mov	[ecx], eax
		movzx	eax, word ptr [ebx+5]
		cmp	esi, eax
		jbe	short loc_439159
		test	edi, edi
		jz	short loc_439155
		sub	esi, eax
		add	eax, edi
		push	esi		; n
		push	0		; c
		push	eax		; s
		call	_memset
		add	esp, 0Ch

loc_439155:				; CODE XREF: .text:00439143j
		movzx	esi, word ptr [ebx+5]

loc_439159:				; CODE XREF: .text:0043913Fj
		test	edi, edi
		jz	short loc_43916B
		push	esi		; n
		lea	eax, [ebx+7]
		push	eax		; src
		push	edi		; dest
		call	_memcpy
		add	esp, 0Ch

loc_43916B:				; CODE XREF: .text:0043915Bj
		inc	dword_5E0604
		test	edi, edi
		jnz	short loc_43917B
		movzx	eax, word ptr [ebx+5]
		jmp	short loc_439199
; ---------------------------------------------------------------------------

loc_43917B:				; CODE XREF: .text:00439173j
		mov	eax, esi
		jmp	short loc_439199
; ---------------------------------------------------------------------------

loc_43917F:				; CODE XREF: .text:00439132j
		inc	dword_5E0604

loc_439185:				; CODE XREF: .text:004390FDj
		mov	edx, dword_5E0604
		cmp	edx, dword_5DC5E8
		jl	loc_43910A

loc_439197:				; CODE XREF: .text:00439127j
		xor	eax, eax

loc_439199:				; CODE XREF: .text:004390E8j
					; .text:00439105j ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 10h
; Exported entry 157. _Startnextdatalist
; Exported entry 727. Startnextdatalist

; int __cdecl Startnextdatalist(ulong addr0, ulong addr1, int *list, int n)
		public Startnextdatalist
Startnextdatalist:			; CODE XREF: .text:0043A14Fp
					; .text:0043AA49p ...
		push	ebp		; _Startnextdatalist
		mov	ebp, esp
		push	ebx
		push	esi
		mov	ebx, [ebp+14h]
		mov	eax, [ebp+10h]
		cmp	dword_5DC5E4, 0
		jz	short loc_4391BC
		test	eax, eax
		jz	short loc_4391BC
		test	ebx, ebx
		jg	short loc_4391D5

loc_4391BC:				; CODE XREF: .text:004391B2j
					; .text:004391B6j
		xor	eax, eax
		mov	dword_5E0604, eax
		xor	edx, edx
		mov	dword_5E0608, edx
		xor	ecx, ecx
		mov	dword_5E0710, ecx
		jmp	short loc_43921B
; ---------------------------------------------------------------------------

loc_4391D5:				; CODE XREF: .text:004391BAj
		cmp	ebx, 40h
		jle	short loc_4391DF
		mov	ebx, 40h

loc_4391DF:				; CODE XREF: .text:004391D8j
		xor	ecx, ecx
		mov	edx, offset byte_5E0610
		cmp	ebx, ecx
		jle	short loc_4391F9

loc_4391EA:				; CODE XREF: .text:004391F7j
		mov	esi, [eax]
		mov	[edx], esi
		inc	ecx
		add	edx, 4
		add	eax, 4
		cmp	ebx, ecx
		jg	short loc_4391EA

loc_4391F9:				; CODE XREF: .text:004391E8j
		mov	dword_5E0710, ebx
		push	0
		mov	eax, [ebp+8]
		push	eax
		call	loc_4370BC
		mov	dword_5E0604, eax
		mov	edx, [ebp+0Ch]
		mov	dword_5E0608, edx
		add	esp, 8

loc_43921B:				; CODE XREF: .text:004391D3j
		xor	ecx, ecx
		mov	dword_5E060C, ecx
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 158. _Findnextdatalist
; Exported entry 526. Findnextdatalist

; int __cdecl Findnextdatalist(ulong *_addr, int	*type, void *data, ulong datasize)
		public Findnextdatalist
Findnextdatalist:			; CODE XREF: .text:0043AA5Fp
					; .text:004AA0C2p ...
		push	ebp		; _Findnextdatalist
		mov	ebp, esp
		push	ebx
		push	esi
		cmp	dword ptr [ebp+8], 0
		mov	esi, [ebp+14h]
		jz	short loc_439246
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_439246
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_43924D
		test	esi, esi
		jnz	short loc_43924D

loc_439246:				; CODE XREF: .text:00439234j
					; .text:0043923Aj
		xor	eax, eax
		jmp	loc_439317
; ---------------------------------------------------------------------------

loc_43924D:				; CODE XREF: .text:00439240j
					; .text:00439244j
		cmp	dword_5DC5E4, 0
		jz	short loc_439271
		mov	edx, dword_5E0604
		cmp	edx, dword_5DC5E8
		jge	short loc_439271
		cmp	dword_5E0710, 0
		jnz	loc_439303

loc_439271:				; CODE XREF: .text:00439254j
					; .text:00439262j
		xor	eax, eax
		jmp	loc_439317
; ---------------------------------------------------------------------------

loc_439278:				; CODE XREF: .text:0043930Fj
		mov	edx, dword_5DC5E0
		mov	ecx, dword_5E0604
		mov	ecx, [edx+ecx*4]
		add	ecx, dword_5E05F0
		mov	eax, [ecx]
		cmp	eax, dword_5E0608
		jnb	short loc_439315
		xor	eax, eax
		mov	edx, offset byte_5E0610
		jmp	short loc_4392AB
; ---------------------------------------------------------------------------

loc_4392A0:				; CODE XREF: .text:004392B1j
		mov	bl, [ecx+4]
		cmp	bl, [edx]
		jz	short loc_4392B3
		inc	eax
		add	edx, 4

loc_4392AB:				; CODE XREF: .text:0043929Ej
		cmp	eax, dword_5E0710
		jl	short loc_4392A0

loc_4392B3:				; CODE XREF: .text:004392A5j
		cmp	eax, dword_5E0710
		jge	short loc_4392FD
		mov	eax, [ecx]
		mov	edx, [ebp+8]
		mov	[edx], eax
		xor	eax, eax
		mov	al, [ecx+4]
		mov	edx, [ebp+0Ch]
		mov	[edx], eax
		inc	dword_5E0604
		cmp	dword ptr [ebp+10h], 0
		jnz	short loc_4392DE
		movzx	eax, word ptr [ecx+5]
		jmp	short loc_439317
; ---------------------------------------------------------------------------

loc_4392DE:				; CODE XREF: .text:004392D6j
		movzx	eax, word ptr [ecx+5]
		cmp	esi, eax
		jbe	short loc_4392E8
		mov	esi, eax

loc_4392E8:				; CODE XREF: .text:004392E4j
		push	esi		; n
		add	ecx, 7
		push	ecx		; src
		mov	eax, [ebp+10h]
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	eax, esi
		jmp	short loc_439317
; ---------------------------------------------------------------------------

loc_4392FD:				; CODE XREF: .text:004392B9j
		inc	dword_5E0604

loc_439303:				; CODE XREF: .text:0043926Bj
		mov	edx, dword_5E0604
		cmp	edx, dword_5DC5E8
		jl	loc_439278

loc_439315:				; CODE XREF: .text:00439295j
		xor	eax, eax

loc_439317:				; CODE XREF: .text:00439248j
					; .text:00439273j ...
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 159. _Isdataavailable
; Exported entry 629. Isdataavailable

; int __cdecl Isdataavailable(ulong _addr, int type1, int type2,	int type3)
		public Isdataavailable
Isdataavailable:			; CODE XREF: .text:00408515p
					; .text:00413CC3p ...
		push	ebp		; _Isdataavailable
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		mov	esi, [ebp+0Ch]
		cmp	dword_5DC5E4, 0
		jnz	short loc_43933B
		xor	eax, eax
		jmp	loc_43943F
; ---------------------------------------------------------------------------

loc_43933B:				; CODE XREF: .text:00439332j
		or	edx, 0FFFFFFFFh
		xor	eax, eax
		mov	[ebp-0Ch], edx
		mov	[ebp-8], edx
		mov	[ebp-4], edx
		push	0
		mov	ecx, [ebp+8]
		mov	dword_5E0710, eax
		push	ecx
		call	loc_4370BC
		add	esp, 8
		mov	edx, eax
		mov	eax, dword_5DC5E0
		lea	ecx, [eax+edx*4]
		jmp	short loc_4393B3
; ---------------------------------------------------------------------------

loc_439368:				; CODE XREF: .text:004393B9j
		mov	eax, [ecx]
		add	eax, dword_5E05F0
		mov	ebx, [eax]
		cmp	ebx, [ebp+8]
		jnz	short loc_4393BB
		mov	ebx, esi
		cmp	bl, [eax+4]
		jz	short loc_439386
		cmp	esi, 0FFh
		jnz	short loc_439389

loc_439386:				; CODE XREF: .text:0043937Cj
		mov	[ebp-4], edx

loc_439389:				; CODE XREF: .text:00439384j
		mov	ebx, edi
		cmp	bl, [eax+4]
		jz	short loc_439398
		cmp	edi, 0FFh
		jnz	short loc_43939B

loc_439398:				; CODE XREF: .text:0043938Ej
		mov	[ebp-8], edx

loc_43939B:				; CODE XREF: .text:00439396j
		mov	bl, [ebp+14h]
		cmp	bl, [eax+4]
		jz	short loc_4393AC
		cmp	dword ptr [ebp+14h], 0FFh
		jnz	short loc_4393AF

loc_4393AC:				; CODE XREF: .text:004393A1j
		mov	[ebp-0Ch], edx

loc_4393AF:				; CODE XREF: .text:004393AAj
		inc	edx
		add	ecx, 4

loc_4393B3:				; CODE XREF: .text:00439366j
		cmp	edx, dword_5DC5E8
		jl	short loc_439368

loc_4393BB:				; CODE XREF: .text:00439375j
		cmp	dword ptr [ebp-4], 0
		jl	short loc_4393DD
		mov	eax, [ebp-4]
		mov	edx, [ebp+8]
		inc	edx
		mov	dword_5E0604, eax
		mov	dword_5E0608, edx
		mov	dword_5E060C, esi
		mov	eax, esi
		jmp	short loc_43943F
; ---------------------------------------------------------------------------

loc_4393DD:				; CODE XREF: .text:004393BFj
		cmp	dword ptr [ebp-8], 0
		jl	short loc_439400
		mov	edx, [ebp-8]
		mov	ecx, [ebp+8]
		inc	ecx
		mov	dword_5E0604, edx
		mov	dword_5E0608, ecx
		mov	dword_5E060C, edi
		mov	eax, edi
		jmp	short loc_43943F
; ---------------------------------------------------------------------------

loc_439400:				; CODE XREF: .text:004393E1j
		cmp	dword ptr [ebp-0Ch], 0
		jl	short loc_439426
		mov	edx, [ebp-0Ch]
		mov	ecx, [ebp+8]
		inc	ecx
		mov	dword_5E0604, edx
		mov	dword_5E0608, ecx
		mov	eax, [ebp+14h]
		mov	dword_5E060C, eax
		mov	eax, [ebp+14h]
		jmp	short loc_43943F
; ---------------------------------------------------------------------------

loc_439426:				; CODE XREF: .text:00439404j
		xor	edx, edx
		mov	dword_5E0604, edx
		xor	ecx, ecx
		mov	dword_5E0608, ecx
		xor	eax, eax
		mov	dword_5E060C, eax
		xor	eax, eax

loc_43943F:				; CODE XREF: .text:00439336j
					; .text:004393DBj ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 160. _Isdatainrange
; Exported entry 630. Isdatainrange

; signed int __cdecl Isdatainrange(ulong addr0,	ulong addr1, int type1,	int type2, int type3)
		public Isdatainrange
Isdatainrange:				; _Isdatainrange
		push	ebp
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+14h]
		mov	esi, [ebp+10h]
		cmp	dword_5DC5E4, 0
		jnz	short loc_439461
		xor	eax, eax
		jmp	short loc_4394DC
; ---------------------------------------------------------------------------

loc_439461:				; CODE XREF: .text:0043945Bj
		push	0
		mov	edx, [ebp+8]
		push	edx
		call	loc_4370BC
		add	esp, 8
		mov	edx, eax
		mov	eax, dword_5DC5E0
		lea	ecx, [eax+edx*4]
		jmp	short loc_4394D2
; ---------------------------------------------------------------------------

loc_43947B:				; CODE XREF: .text:004394D8j
		mov	eax, [ecx]
		add	eax, dword_5E05F0
		mov	ebx, [eax]
		cmp	ebx, [ebp+0Ch]
		jnb	short loc_4394DA
		mov	ebx, esi
		cmp	bl, [eax+4]
		jz	short loc_439499
		cmp	esi, 0FFh
		jnz	short loc_4394A0

loc_439499:				; CODE XREF: .text:0043948Fj
		mov	eax, 1
		jmp	short loc_4394DC
; ---------------------------------------------------------------------------

loc_4394A0:				; CODE XREF: .text:00439497j
		mov	ebx, edi
		cmp	bl, [eax+4]
		jz	short loc_4394AF
		cmp	edi, 0FFh
		jnz	short loc_4394B6

loc_4394AF:				; CODE XREF: .text:004394A5j
		mov	eax, 1
		jmp	short loc_4394DC
; ---------------------------------------------------------------------------

loc_4394B6:				; CODE XREF: .text:004394ADj
		mov	bl, [ebp+18h]
		cmp	bl, [eax+4]
		jz	short loc_4394C7
		cmp	dword ptr [ebp+18h], 0FFh
		jnz	short loc_4394CE

loc_4394C7:				; CODE XREF: .text:004394BCj
		mov	eax, 1
		jmp	short loc_4394DC
; ---------------------------------------------------------------------------

loc_4394CE:				; CODE XREF: .text:004394C5j
		inc	edx
		add	ecx, 4

loc_4394D2:				; CODE XREF: .text:00439479j
		cmp	edx, dword_5DC5E8
		jl	short loc_43947B

loc_4394DA:				; CODE XREF: .text:00439488j
		xor	eax, eax

loc_4394DC:				; CODE XREF: .text:0043945Fj
					; .text:0043949Ej ...
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 161. _Deletedatarange
; Exported entry 464. Deletedatarange

; int __cdecl Deletedatarange(ulong addr0, ulong addr1,	int type1, int type2, int type3)
		public Deletedatarange
Deletedatarange:			; CODE XREF: .text:00436BE1p
					; .text:00470412p ...
		push	ebp		; _Deletedatarange
		mov	ebp, esp
		push	ebx
		push	esi
		push	edi
		mov	edi, [ebp+10h]
		push	0
		mov	eax, [ebp+8]
		push	eax
		call	loc_4370BC
		add	esp, 8
		mov	esi, eax
		mov	ebx, eax
		jmp	short loc_439551
; ---------------------------------------------------------------------------

loc_439501:				; CODE XREF: .text:00439557j
		mov	eax, dword_5DC5E0
		mov	eax, [eax+ebx*4]
		add	eax, dword_5E05F0
		mov	edx, [eax]
		cmp	edx, [ebp+0Ch]
		jnb	short loc_439559
		cmp	edi, 0FFh
		jz	short loc_439535
		mov	ecx, edi
		cmp	cl, [eax+4]
		jz	short loc_439535
		mov	dl, [ebp+14h]
		cmp	dl, [eax+4]
		jz	short loc_439535
		mov	cl, [ebp+18h]
		cmp	cl, [eax+4]
		jnz	short loc_439544

loc_439535:				; CODE XREF: .text:0043951Cj
					; .text:00439523j ...
		movzx	eax, word ptr [eax+5]
		add	eax, 7
		add	dword_5E05FC, eax
		jmp	short loc_439550
; ---------------------------------------------------------------------------

loc_439544:				; CODE XREF: .text:00439533j
		mov	eax, dword_5DC5E0
		mov	edx, [eax+ebx*4]
		mov	[eax+esi*4], edx
		inc	esi

loc_439550:				; CODE XREF: .text:00439542j
		inc	ebx

loc_439551:				; CODE XREF: .text:004394FFj
		cmp	ebx, dword_5DC5E8
		jl	short loc_439501

loc_439559:				; CODE XREF: .text:00439514j
		mov	edx, dword_5DC5E8
		cmp	ebx, edx
		jge	short loc_43958A
		cmp	esi, ebx
		jz	short loc_43958A
		sub	edx, ebx
		mov	ecx, ebx
		shl	edx, 2
		mov	eax, dword_5DC5E0
		push	edx		; n
		mov	edx, esi
		shl	ecx, 2
		shl	edx, 2
		add	ecx, eax
		push	ecx		; src
		add	edx, eax
		push	edx		; dest
		call	_memmove
		add	esp, 0Ch

loc_43958A:				; CODE XREF: .text:00439561j
					; .text:00439565j
		sub	ebx, esi
		sub	dword_5DC5E8, ebx
		xor	eax, eax
		mov	dword_5E0604, eax
		xor	ecx, ecx
		mov	dword_5E0608, ecx
		xor	eax, eax
		mov	dword_5E060C, eax
		xor	edx, edx
		mov	dword_5E0710, edx
		pop	edi
		pop	esi
		pop	ebx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 162. _Deletedatarangelist
; Exported entry 465. Deletedatarangelist

; int __cdecl Deletedatarangelist(ulong	addr0, ulong addr1, int	*list, int n)
		public Deletedatarangelist
Deletedatarangelist:			; CODE XREF: .text:0046EA54p
		push	ebp		; _Deletedatarangelist
		mov	ebp, esp
		push	ecx
		push	ebx
		push	esi
		push	0
		mov	eax, [ebp+8]
		push	eax
		call	loc_4370BC
		add	esp, 8
		mov	[ebp-4], eax
		mov	esi, eax
		jmp	short loc_43962A
; ---------------------------------------------------------------------------

loc_4395D3:				; CODE XREF: .text:00439630j
		mov	eax, dword_5DC5E0
		mov	ecx, [eax+esi*4]
		add	ecx, dword_5E05F0
		mov	edx, [ecx]
		cmp	edx, [ebp+0Ch]
		jnb	short loc_439632
		xor	eax, eax
		mov	edx, [ebp+10h]
		cmp	eax, [ebp+14h]
		jge	short loc_439604

loc_4395F2:				; CODE XREF: .text:00439602j
		xor	ebx, ebx
		mov	bl, [ecx+4]
		cmp	ebx, [edx]
		jz	short loc_439604
		inc	eax
		add	edx, 4
		cmp	eax, [ebp+14h]
		jl	short loc_4395F2

loc_439604:				; CODE XREF: .text:004395F0j
					; .text:004395F9j
		cmp	eax, [ebp+14h]
		jge	short loc_439618
		movzx	eax, word ptr [ecx+5]
		add	eax, 7
		add	dword_5E05FC, eax
		jmp	short loc_439629
; ---------------------------------------------------------------------------

loc_439618:				; CODE XREF: .text:00439607j
		mov	eax, dword_5DC5E0
		mov	ecx, [ebp-4]
		mov	edx, [eax+esi*4]
		mov	[eax+ecx*4], edx
		inc	dword ptr [ebp-4]

loc_439629:				; CODE XREF: .text:00439616j
		inc	esi

loc_43962A:				; CODE XREF: .text:004395D1j
		cmp	esi, dword_5DC5E8
		jl	short loc_4395D3

loc_439632:				; CODE XREF: .text:004395E6j
		mov	edx, dword_5DC5E8
		cmp	esi, edx
		jge	short loc_439665
		cmp	esi, [ebp-4]
		jz	short loc_439665
		sub	edx, esi
		mov	ecx, esi
		shl	ecx, 2
		mov	eax, dword_5DC5E0
		shl	edx, 2
		add	ecx, eax
		push	edx		; n
		push	ecx		; src
		mov	edx, [ebp-4]
		shl	edx, 2
		add	edx, eax
		push	edx		; dest
		call	_memmove
		add	esp, 0Ch

loc_439665:				; CODE XREF: .text:0043963Aj
					; .text:0043963Fj
		sub	esi, [ebp-4]
		sub	dword_5DC5E8, esi
		xor	eax, eax
		mov	dword_5E0604, eax
		xor	ecx, ecx
		mov	dword_5E0608, ecx
		xor	eax, eax
		mov	dword_5E060C, eax
		xor	edx, edx
		mov	dword_5E0710, edx
		pop	esi
		pop	ebx
		pop	ecx
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4
; Exported entry 163. _Mergequickdata
; Exported entry 654. Mergequickdata

; void Mergequickdata(void)
		public Mergequickdata
Mergequickdata:				; CODE XREF: .text:loc_416C15p
					; .text:004290ABp ...
		push	ebp		; _Mergequickdata
		mov	ebp, esp
		add	esp, 0FFFFFFECh
		push	ebx
		push	esi
		push	edi		; arglist
		mov	edi, offset dword_5DC5E4
		cmp	dword ptr [edi], 0
		jz	loc_439AAB
		cmp	dword_5E05EC, 0
		jz	loc_439AAB
		push	offset loc_437124 ; fcmp
		mov	eax, dword_5E05EC
		push	4		; width
		push	eax		; nelem
		push	offset dword_5DC5EC ; base
		call	_qsort
		add	esp, 10h
		mov	edx, dword_5DC5E8
		add	edx, dword_5E05EC ; int
		mov	eax, [edi]
		cmp	edx, eax
		jle	short loc_43975A
		mov	esi, eax
		sar	esi, 1
		jns	short loc_4396ED
		adc	esi, 0

loc_4396ED:				; CODE XREF: .text:004396E8j
		add	esi, eax
		push	0		; flags
		mov	eax, esi
		shl	eax, 2		; int
		push	eax		; size
		call	Virtalloc
		add	esp, 8
		mov	ebx, eax
		test	ebx, ebx
		jnz	short loc_43972F
		cmp	dword_5E0600, 0
		jnz	short loc_439720
		push	offset aDataTableFullS ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		pop	ecx

loc_439720:				; CODE XREF: .text:0043970Cj
		mov	dword_5E0600, 1
		jmp	loc_439AAB
; ---------------------------------------------------------------------------

loc_43972F:				; CODE XREF: .text:00439703j
		mov	eax, [edi]
		mov	edx, dword_5DC5E0
		shl	eax, 2
		push	eax		; n
		push	edx		; src
		push	ebx		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, dword_5DC5E0
		push	ecx		; data
		call	Virtfree
		pop	ecx
		mov	dword_5DC5E0, ebx
		mov	[edi], esi

loc_43975A:				; CODE XREF: .text:004396E2j
		mov	ebx, dword_5E05F0
		add	ebx, dword_5DC5EC
		push	0
		mov	eax, [ebx]
		push	eax
		call	loc_4370BC
		mov	edx, dword_5E05EC
		add	esp, 8
		add	edx, eax
		mov	[ebp-0Ch], eax
		mov	ecx, dword_5DC5E8
		mov	[ebp-4], edx
		cmp	eax, ecx
		jge	short loc_4397AE
		sub	ecx, eax
		mov	edx, dword_5DC5E0
		shl	ecx, 2
		shl	eax, 2
		push	ecx		; n
		add	eax, edx
		push	eax		; src
		mov	eax, [ebp-4]
		shl	eax, 2
		add	eax, edx
		push	eax		; dest
		call	_memmove
		add	esp, 0Ch

loc_4397AE:				; CODE XREF: .text:00439789j
		xor	ecx, ecx
		xor	edx, edx
		mov	[ebp-8], ecx
		mov	[ebp-10h], edx
		xor	edx, edx
		xor	eax, eax
		xor	ecx, ecx
		mov	[ebp-14h], ecx
		jmp	loc_439A22
; ---------------------------------------------------------------------------

loc_4397C6:				; CODE XREF: .text:00439A2Bj
					; .text:00439A33j ...
		mov	ebx, dword_5DC5E8
		add	ebx, ecx
		cmp	ebx, [ebp-4]
		jle	short loc_4397E7
		mov	ecx, dword_5DC5E0
		mov	ebx, [ebp-4]
		mov	esi, [ecx+ebx*4]
		add	esi, dword_5E05F0
		jmp	short loc_4397E9
; ---------------------------------------------------------------------------

loc_4397E7:				; CODE XREF: .text:004397D1j
		xor	esi, esi

loc_4397E9:				; CODE XREF: .text:004397E5j
		mov	ecx, [ebp-8]
		cmp	ecx, dword_5E05EC
		jge	short loc_439806
		mov	ecx, [ebp-8]
		mov	ebx, dword_5DC5EC[ecx*4]
		add	ebx, dword_5E05F0
		jmp	short loc_439808
; ---------------------------------------------------------------------------

loc_439806:				; CODE XREF: .text:004397F2j
		xor	ebx, ebx

loc_439808:				; CODE XREF: .text:00439804j
		test	esi, esi
		jz	short loc_439871
		test	eax, eax
		jz	short loc_439824
		mov	ecx, [esi]
		cmp	ecx, [eax]
		jb	short loc_439824
		mov	ecx, [esi]
		cmp	ecx, [eax]
		jnz	short loc_439871
		mov	cl, [esi+4]
		cmp	cl, [eax+4]
		jnb	short loc_439871

loc_439824:				; CODE XREF: .text:0043980Ej
					; .text:00439814j
		test	edx, edx
		jz	short loc_43983C
		mov	ecx, [esi]
		cmp	ecx, [edx]
		jb	short loc_43983C
		mov	ecx, [esi]
		cmp	ecx, [edx]
		jnz	short loc_439871
		mov	cl, [esi+4]
		cmp	cl, [edx+4]
		jnb	short loc_439871

loc_43983C:				; CODE XREF: .text:00439826j
					; .text:0043982Cj
		test	ebx, ebx
		jz	short loc_439854
		mov	ecx, [esi]
		cmp	ecx, [ebx]
		jb	short loc_439854
		mov	ecx, [esi]
		cmp	ecx, [ebx]
		jnz	short loc_439871
		mov	cl, [esi+4]
		cmp	cl, [ebx+4]
		jnb	short loc_439871

loc_439854:				; CODE XREF: .text:0043983Ej
					; .text:00439844j
		mov	ecx, dword_5DC5E0
		mov	ebx, [ebp-4]
		mov	ebx, [ecx+ebx*4]
		mov	esi, [ebp-0Ch]
		mov	[ecx+esi*4], ebx
		inc	dword ptr [ebp-4]
		inc	dword ptr [ebp-0Ch]
		jmp	loc_439A22
; ---------------------------------------------------------------------------

loc_439871:				; CODE XREF: .text:0043980Aj
					; .text:0043981Aj ...
		test	esi, esi
		jz	short loc_4398C0
		test	eax, eax
		jz	short loc_439887
		mov	ecx, [esi]
		cmp	ecx, [eax]
		jnz	short loc_439887
		mov	cl, [esi+4]
		cmp	cl, [eax+4]
		jz	short loc_4398AB

loc_439887:				; CODE XREF: .text:00439877j
					; .text:0043987Dj
		test	edx, edx
		jz	short loc_439899
		mov	ecx, [esi]
		cmp	ecx, [edx]
		jnz	short loc_439899
		mov	cl, [esi+4]
		cmp	cl, [edx+4]
		jz	short loc_4398AB

loc_439899:				; CODE XREF: .text:00439889j
					; .text:0043988Fj
		test	ebx, ebx
		jz	short loc_4398C0
		mov	ecx, [esi]
		cmp	ecx, [ebx]
		jnz	short loc_4398C0
		mov	cl, [esi+4]
		cmp	cl, [ebx+4]
		jnz	short loc_4398C0

loc_4398AB:				; CODE XREF: .text:00439885j
					; .text:00439897j
		movzx	ecx, word ptr [esi+5]
		add	ecx, 7
		add	dword_5E05FC, ecx
		inc	dword ptr [ebp-4]
		jmp	loc_439A22
; ---------------------------------------------------------------------------

loc_4398C0:				; CODE XREF: .text:00439873j
					; .text:0043989Bj ...
		test	eax, eax
		jz	short loc_4398EA
		test	ebx, ebx
		jz	short loc_4398EA
		mov	ecx, [ebx]
		cmp	ecx, [eax]
		jnz	short loc_4398EA
		mov	cl, [ebx+4]
		cmp	cl, [eax+4]
		jnz	short loc_4398EA
		movzx	eax, word ptr [eax+5]
		add	eax, 7
		add	dword_5E05FC, eax
		xor	eax, eax
		jmp	loc_439A22
; ---------------------------------------------------------------------------

loc_4398EA:				; CODE XREF: .text:004398C2j
					; .text:004398C6j ...
		test	edx, edx
		jz	short loc_439914
		test	ebx, ebx
		jz	short loc_439914
		mov	ecx, [edx]
		cmp	ecx, [ebx]
		jnz	short loc_439914
		mov	cl, [edx+4]
		cmp	cl, [ebx+4]
		jnz	short loc_439914
		movzx	edx, word ptr [edx+5]
		add	edx, 7
		add	dword_5E05FC, edx
		xor	edx, edx
		jmp	loc_439A22
; ---------------------------------------------------------------------------

loc_439914:				; CODE XREF: .text:004398ECj
					; .text:004398F0j ...
		test	eax, eax
		jz	short loc_439942
		test	ebx, ebx
		jz	short loc_43992A
		mov	ecx, [eax]
		cmp	ecx, [ebx]
		jb	short loc_43992A
		mov	cl, [eax+4]
		cmp	cl, [ebx+4]
		jnb	short loc_439942

loc_43992A:				; CODE XREF: .text:0043991Aj
					; .text:00439920j
		mov	eax, dword_5DC5E0
		mov	ecx, [ebp-0Ch]
		mov	ebx, [ebp-10h]
		mov	[eax+ecx*4], ebx
		inc	dword ptr [ebp-0Ch]
		xor	eax, eax
		jmp	loc_439A22
; ---------------------------------------------------------------------------

loc_439942:				; CODE XREF: .text:00439916j
					; .text:00439928j
		test	edx, edx
		jz	short loc_439971
		test	ebx, ebx
		jz	short loc_439958
		mov	ecx, [edx]
		cmp	ecx, [ebx]
		jb	short loc_439958
		mov	cl, [edx+4]
		cmp	cl, [ebx+4]
		jnb	short loc_439971

loc_439958:				; CODE XREF: .text:00439948j
					; .text:0043994Ej
		mov	edx, dword_5DC5E0
		mov	ecx, [ebp-0Ch]
		mov	ebx, [ebp-14h]
		mov	[edx+ecx*4], ebx
		inc	dword ptr [ebp-0Ch]
		xor	edx, edx
		jmp	loc_439A22
; ---------------------------------------------------------------------------

loc_439971:				; CODE XREF: .text:00439944j
					; .text:00439956j
		mov	ecx, [ebp-8]
		lea	esi, (dword_5DC5EC+4)[ecx*4]
		jmp	short loc_4399F2
; ---------------------------------------------------------------------------

loc_43997D:				; CODE XREF: .text:004399FCj
		mov	edi, [esi]
		add	edi, dword_5E05F0
		mov	ecx, [edi]
		cmp	ecx, [ebx]
		jnz	short loc_439A02
		mov	cl, [edi+4]
		cmp	cl, [ebx+4]
		jnz	short loc_439A02
		cmp	byte ptr [ebx+4], 22h
		jnz	short loc_4399B8
		test	eax, eax
		jz	short loc_4399AA
		movzx	eax, word ptr [eax+5]
		add	eax, 7
		add	dword_5E05FC, eax

loc_4399AA:				; CODE XREF: .text:0043999Bj
		mov	eax, ebx
		mov	byte ptr [eax+4], 25h
		mov	ecx, [esi-4]
		mov	[ebp-10h], ecx
		jmp	short loc_4399EA
; ---------------------------------------------------------------------------

loc_4399B8:				; CODE XREF: .text:00439997j
		cmp	byte ptr [ebx+4], 24h
		jnz	short loc_4399DD
		test	edx, edx
		jz	short loc_4399CF
		movzx	edx, word ptr [edx+5]
		add	edx, 7
		add	dword_5E05FC, edx

loc_4399CF:				; CODE XREF: .text:004399C0j
		mov	edx, ebx
		mov	byte ptr [edx+4], 2Fh
		mov	ecx, [esi-4]
		mov	[ebp-14h], ecx
		jmp	short loc_4399EA
; ---------------------------------------------------------------------------

loc_4399DD:				; CODE XREF: .text:004399BCj
		movzx	ecx, word ptr [ebx+5]
		add	ecx, 7
		add	dword_5E05FC, ecx

loc_4399EA:				; CODE XREF: .text:004399B6j
					; .text:004399DBj
		mov	ebx, edi
		inc	dword ptr [ebp-8]
		add	esi, 4

loc_4399F2:				; CODE XREF: .text:0043997Bj
		mov	ecx, [ebp-8]
		inc	ecx
		cmp	ecx, dword_5E05EC
		jl	loc_43997D

loc_439A02:				; CODE XREF: .text:00439989j
					; .text:00439991j
		test	ebx, ebx
		jz	short loc_439A22
		mov	ecx, dword_5DC5E0
		mov	ebx, [ebp-0Ch]
		mov	esi, [ebp-8]
		mov	esi, dword_5DC5EC[esi*4]
		mov	[ecx+ebx*4], esi
		inc	dword ptr [ebp-8]
		inc	dword ptr [ebp-0Ch]

loc_439A22:				; CODE XREF: .text:004397C1j
					; .text:0043986Cj ...
		mov	ecx, dword_5E05EC
		cmp	ecx, [ebp-8]
		jg	loc_4397C6
		test	eax, eax
		jnz	loc_4397C6
		test	edx, edx
		jnz	loc_4397C6
		mov	eax, [ebp-0Ch]
		cmp	eax, [ebp-4]
		jge	short loc_439A8C
		mov	edx, dword_5DC5E8
		add	edx, dword_5E05EC
		cmp	edx, [ebp-4]
		jle	short loc_439A8C
		mov	edx, dword_5DC5E8
		add	edx, dword_5E05EC
		sub	edx, [ebp-4]
		shl	edx, 2
		push	edx		; n
		mov	ecx, [ebp-4]
		shl	ecx, 2
		mov	eax, dword_5DC5E0
		add	ecx, eax
		push	ecx		; src
		mov	edx, [ebp-0Ch]
		shl	edx, 2
		add	edx, eax
		push	edx		; dest
		call	_memmove
		add	esp, 0Ch

loc_439A8C:				; CODE XREF: .text:00439A47j
					; .text:00439A58j
		mov	eax, dword_5DC5E8
		mov	ecx, [ebp-0Ch]
		sub	ecx, [ebp-4]
		add	eax, dword_5E05EC
		add	eax, ecx
		mov	dword_5DC5E8, eax
		xor	eax, eax
		mov	dword_5E05EC, eax

loc_439AAB:				; CODE XREF: .text:004396A5j
					; .text:004396B2j ...
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
		align 4

loc_439AB4:				; CODE XREF: .text:00416C42p
		push	ebp
		mov	ebp, esp
		add	esp, 0FFFFFBFCh
		push	ebx
		push	esi
		push	edi
		push	22h
		mov	eax, [ebp+8]
		push	eax
		call	loc_4370BC
		add	esp, 8
		mov	[ebp-4], eax
		jmp	loc_439BB6
; ---------------------------------------------------------------------------

loc_439AD6:				; CODE XREF: .text:00439BBFj
		mov	edx, dword_5DC5E0
		mov	ecx, [ebp-4]
		mov	esi, [edx+ecx*4]
		add	esi, dword_5E05F0
		mov	eax, [esi]
		cmp	eax, [ebp+0Ch]
		jnb	loc_439BC5
		cmp	byte ptr [esi+4], 22h
		jz	short loc_439B01
		inc	dword ptr [ebp-4]
		jmp	loc_439BB6
; ---------------------------------------------------------------------------

loc_439B01:				; CODE XREF: .text:00439AF7j
		mov	ebx, [ebp-4]
		inc	ebx
		jmp	loc_439BA7
; ---------------------------------------------------------------------------

loc_439B0A:				; CODE XREF: .text:00439BADj
		mov	eax, dword_5DC5E0
		mov	edi, [eax+ebx*4]
		add	edi, dword_5E05F0
		mov	eax, [edi]
		cmp	eax, [esi]
		jnz	loc_439BB3
		cmp	byte ptr [edi+4], 25h
		jz	short loc_439B2B
		inc	ebx
		jmp	short loc_439BA7
; ---------------------------------------------------------------------------

loc_439B2B:				; CODE XREF: .text:00439B26j
		push	100h		; nname
		lea	edx, [ebp-204h]
		push	edx		; _name
		push	22h		; type
		mov	ecx, [esi]
		push	ecx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jle	short loc_439BA4
		push	100h		; nname
		lea	eax, [ebp-404h]
		push	eax		; _name
		push	25h		; type
		mov	edx, [esi]
		push	edx		; _addr
		call	FindnameW
		add	esp, 10h
		test	eax, eax
		jle	short loc_439BA4
		lea	ecx, [ebp-404h]
		push	ecx		; s2
		lea	eax, [ebp-204h]
		push	eax		; s1
		call	_wcscmp
		add	esp, 8
		test	eax, eax
		jle	short loc_439BA4
		mov	byte ptr [esi+4], 25h
		mov	byte ptr [edi+4], 22h
		mov	eax, dword_5DC5E0
		mov	edx, [ebp-4]
		mov	esi, dword_5DC5E0
		mov	ecx, [ebp-4]
		mov	edx, [eax+edx*4]
		mov	esi, [esi+ebx*4]
		mov	[eax+ecx*4], esi
		mov	[eax+ebx*4], edx

loc_439BA4:				; CODE XREF: .text:00439B46j
					; .text:00439B63j ...
		inc	ebx
		jmp	short loc_439BB3
; ---------------------------------------------------------------------------

loc_439BA7:				; CODE XREF: .text:00439B05j
					; .text:00439B29j
		cmp	ebx, dword_5DC5E8
		jl	loc_439B0A

loc_439BB3:				; CODE XREF: .text:00439B1Cj
					; .text:00439BA5j
		mov	[ebp-4], ebx

loc_439BB6:				; CODE XREF: .text:00439AD1j
					; .text:00439AFCj
		mov	eax, [ebp-4]
		cmp	eax, dword_5DC5E8
		jl	loc_439AD6

loc_439BC5:				; CODE XREF: .text:00439AEDj
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
; ---------------------------------------------------------------------------
; Exported entry 164. _Quickinsertdata
; Exported entry 678. Quickinsertdata

; int __cdecl Quickinsertdata(ulong _addr, int type, void *data,	ulong datasize)
		public Quickinsertdata
Quickinsertdata:			; CODE XREF: .text:00415F24p
					; .text:004162FCp ...
		push	ebp		; _Quickinsertdata
		mov	ebp, esp
		add	esp, 0FFFFFFF4h
		push	ebx
		push	esi
		push	edi
		cmp	dword ptr [ebp+0Ch], 0
		jz	short loc_439C02
		cmp	dword ptr [ebp+0Ch], 0FFh
		jz	short loc_439C02
		cmp	dword ptr [ebp+10h], 0
		jz	short loc_439C02
		cmp	dword ptr [ebp+14h], 0
		jz	short loc_439C02
		cmp	dword ptr [ebp+14h], 1000h
		ja	short loc_439C02
		cmp	dword_5DC5E4, 0
		jnz	short loc_439C0A

loc_439C02:				; CODE XREF: .text:00439BD9j
					; .text:00439BE2j ...
		or	eax, 0FFFFFFFFh
		jmp	loc_439DC1
; ---------------------------------------------------------------------------

loc_439C0A:				; CODE XREF: .text:00439C00j
		cmp	dword_5E05EC, 1000h
		jl	short loc_439C23
		call	Mergequickdata
		xor	edx, edx
		mov	dword_5E05EC, edx

loc_439C23:				; CODE XREF: .text:00439C14j
		mov	ecx, dword_5E05F8
		add	ecx, 1007h
		mov	eax, dword_5E05F4
		cmp	ecx, eax
		jb	loc_439D69
		mov	edx, eax
		shr	edx, 2		; int
		cmp	edx, dword_5E05FC
		jnb	short loc_439C4E
		mov	[ebp-4], eax
		jmp	short loc_439C65
; ---------------------------------------------------------------------------

loc_439C4E:				; CODE XREF: .text:00439C47j
		cmp	eax, 800000h
		ja	short loc_439C5C
		add	eax, eax
		mov	[ebp-4], eax
		jmp	short loc_439C65
; ---------------------------------------------------------------------------

loc_439C5C:				; CODE XREF: .text:00439C53j
		mov	ecx, eax
		shr	ecx, 1
		add	ecx, eax	; int
		mov	[ebp-4], ecx

loc_439C65:				; CODE XREF: .text:00439C4Cj
					; .text:00439C5Aj
		push	0		; flags
		mov	eax, [ebp-4]	; int
		push	eax		; size
		call	Virtalloc
		add	esp, 8
		mov	[ebp-8], eax
		cmp	dword ptr [ebp-8], 0
		jz	loc_439D2C
		xor	ebx, ebx
		xor	esi, esi
		jmp	short loc_439CB7
; ---------------------------------------------------------------------------

loc_439C86:				; CODE XREF: .text:00439CBDj
		mov	eax, dword_5DC5E0
		mov	eax, [eax+esi*4]
		add	eax, dword_5E05F0
		movzx	edi, word ptr [eax+5]
		add	edi, 7
		push	edi		; n
		push	eax		; src
		mov	eax, [ebp-8]
		add	eax, ebx
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, dword_5DC5E0
		mov	[edx+esi*4], ebx
		add	ebx, edi
		inc	esi

loc_439CB7:				; CODE XREF: .text:00439C84j
		cmp	esi, dword_5DC5E8
		jl	short loc_439C86
		mov	dword ptr [ebp-0Ch], offset dword_5DC5EC
		xor	esi, esi
		jmp	short loc_439CF8
; ---------------------------------------------------------------------------

loc_439CCA:				; CODE XREF: .text:00439CFEj
		mov	eax, [ebp-0Ch]
		mov	eax, [eax]
		add	eax, dword_5E05F0
		movzx	edi, word ptr [eax+5]
		add	edi, 7
		push	edi		; n
		push	eax		; src
		mov	eax, [ebp-8]
		add	eax, ebx
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	edx, [ebp-0Ch]
		mov	[edx], ebx
		add	ebx, edi
		inc	esi
		add	dword ptr [ebp-0Ch], 4

loc_439CF8:				; CODE XREF: .text:00439CC8j
		cmp	esi, dword_5E05EC
		jl	short loc_439CCA
		mov	ecx, dword_5E05F0
		push	ecx		; data
		call	Virtfree
		pop	ecx
		mov	eax, [ebp-8]
		mov	dword_5E05F0, eax
		mov	edx, [ebp-4]
		mov	dword_5E05F4, edx
		mov	dword_5E05F8, ebx
		xor	ecx, ecx
		mov	dword_5E05FC, ecx

loc_439D2C:				; CODE XREF: .text:00439C7Aj
		mov	eax, dword_5E05F8
		add	eax, [ebp+14h]
		add	eax, 7
		cmp	eax, dword_5E05F4
		jbe	short loc_439D69
		cmp	dword_5E0600, 0
		jnz	short loc_439D5A
		push	offset aDataTableFullS ; src
		call	_T
		pop	ecx
		push	eax		; format
		call	Error
		pop	ecx

loc_439D5A:				; CODE XREF: .text:00439D46j
		mov	dword_5E0600, 1
		or	eax, 0FFFFFFFFh
		jmp	short loc_439DC1
; ---------------------------------------------------------------------------

loc_439D69:				; CODE XREF: .text:00439C36j
					; .text:00439D3Dj
		mov	eax, dword_5E05F0
		add	eax, dword_5E05F8
		mov	edx, [ebp+8]
		mov	[eax], edx
		mov	cl, [ebp+0Ch]
		mov	[eax+4], cl
		mov	dx, [ebp+14h]
		mov	[eax+5], dx
		mov	ecx, [ebp+14h]
		push	ecx		; n
		mov	edx, [ebp+10h]
		push	edx		; src
		add	eax, 7
		push	eax		; dest
		call	_memcpy
		add	esp, 0Ch
		mov	ecx, dword_5E05EC
		mov	eax, dword_5E05F8
		mov	dword_5DC5EC[ecx*4], eax
		mov	edx, [ebp+14h]
		add	edx, 7
		add	dword_5E05F8, edx
		inc	dword_5E05EC
		xor	eax, eax

loc_439DC1:				; CODE XREF: .text:00439C05j
					; .text:00439D67j
		pop	edi
		pop	esi
		pop	ebx
		mov	esp, ebp
		pop	ebp
		retn
		