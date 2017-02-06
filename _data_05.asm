_data		segment	para public 'DATA' use32
off_52F010	dd offset aAdd_2	; DATA XREF: .text:0043862Bo
					; \=add\=
off_52F014	dd offset aPs		; DATA XREF: .text:004373AAo
					; \=ps\=
; wchar_t *off_52F018
off_52F018	dd offset asc_52F394	; DATA XREF: .text:004373F6r
					; \=+\=
		dd offset aAdd_2	; \=add\=
		dd offset aPl_0		; \=pl\=
		dd offset asc_52F394	; \=+\=
		dd offset aAdr		; \=adr\=
		dd offset a_Ad		; \=ad\=
		dd offset asc_52F3AC	; \=\A\=
		dd offset aAnd_1	; \=and\=
		dd offset aAn		; \=an\=
		dd offset asc_52F3AC	; \=\A\=
		dd offset aArow		; \=arow\=
		dd offset aPt		; \=pt\=
		dd offset asc_52F3CE	; \=->\=
		dd offset aArwm		; \=arwm\=
		dd offset aPm_1		; \=pm\=
		dd offset asc_52F3E4	; \=->*\=
		dd offset aAsg		; \=asg\=
		dd offset a_As		; \=aS\=
		dd offset asc_52F3FA	; \==\=
		dd offset aCall_2	; \=call\=
		dd offset aCl		; \=cl\=
		dd offset asc_52F40E	; \=\{\}\=
		dd offset aCmp_0	; \=cmp\=
		dd offset aCo		; \=co\=
		dd offset asc_52F422	; \=~\=
		dd offset aComa		; \=coma\=
		dd offset aCm		; \=cm\=
		dd offset asc_52F436	; \=,\=
		dd offset aDec_0	; \=dec\=
		dd offset aMm		; \=mm\=
		dd offset asc_52F448	; \=--\=
		dd offset aDele		; \=dele\=
		dd offset aDl		; \=dl\=
		dd offset aDelete_2	; \=delete\=
		dd offset aDiv		; \=div\=
		dd offset aDv		; \=dv\=
		dd offset asc_52F47A	; \=/\=
		dd offset aDla		; \=dla\=
		dd offset aDa		; \=da\=
		dd offset aDelete	; \=delete[]\=
		dd offset aEql		; \=eql\=
		dd offset aEq_4		; \=eq\=
		dd offset asc_52F4AC	; \===\=
		dd offset aFnc		; \=fnc\=
		dd $CTW0("??")		; \=!?!?\=
		dd offset asc_52F40E	; \=\{\}\=
		dd offset aGeq		; \=geq\=
		dd offset aGe_1		; \=ge\=
		dd offset asc_52F4CE	; \=>=\=
		dd offset aGtr		; \=gtr\=
		dd offset aGt_0		; \=gt\=
		dd offset asc_52F3CE+2	; \=>\=
		dd offset aInc_1	; \=inc\=
		dd offset aPp		; \=pp\=
		dd offset asc_52F4F0	; \=++\=
		dd offset aInd		; \=ind\=
		dd offset aDe		; \=de\=
		dd offset asc_52F3E4+4	; \=*\=
		dd offset aLand		; \=land\=
		dd offset a_Aa		; \=aa\=
		dd offset asc_52F514	; \=\A\A\=
		dd offset aLeq		; \=leq\=
		dd offset aDele+4	; \=le\=
		dd offset asc_52F522	; \=<=\=
		dd offset aLor		; \=lor\=
		dd offset aOo		; \=oo\=
		dd offset asc_52F536	; \=||\=
		dd offset aLsh		; \=lsh\=
		dd offset aLs		; \=ls\=
		dd offset asc_52F54A	; \=<<\=
		dd offset aLss		; \=lss\=
		dd offset aLt		; \=lt\=
		dd offset asc_52F54A+2	; \=<\=
		dd offset aMod_1	; \=mod\=
		dd offset aRm_1		; \=rm\=
		dd offset asc_52F56C	; \=!%\=
		dd offset aMul		; \=mul\=
		dd offset aMl		; \=ml\=
		dd offset asc_52F3E4+4	; \=*\=
		dd offset aNeq		; \=neq\=
		dd offset aNe		; \=ne\=
		dd offset asc_52F58C	; \=!=\=
		dd offset aNew_0	; \=new\=
		dd offset aNw		; \=nw\=
		dd offset aNew_0	; \=new\=
		dd offset aNot		; \=not\=
		dd offset aNt		; \=nt\=
		dd offset aDataTableFullS+4Eh ;	\=!\=
		dd offset aNwa		; \=nwa\=
		dd offset aNa		; \=na\=
		dd offset aNew		; \=new[]\=
		dd offset aLor+2	; \=or\=
		dd offset aLor+2	; \=or\=
		dd offset asc_52F536+2	; \=|\=
		dd offset aRand		; \=rand\=
		dd offset aAn_1		; \=aN\=
		dd offset asc_52F5D8	; \=\A=\=
		dd offset aRdiv		; \=rdiv\=
		dd offset aDv_1		; \=dV\=
		dd offset asc_52F5EE	; \=/=\=
		dd offset aRlsh		; \=rlsh\=
		dd offset aLs_1		; \=lS\=
		dd offset asc_52F604	; \=<<=\=
		dd offset aRmin		; \=rmin\=
		dd offset aMi_2		; \=mI\=
		dd offset asc_52F61C	; \=-=\=
		dd offset aRmod		; \=rmod\=
		dd offset aRm		; \=rM\=
		dd offset asc_52F632	; \=!%=\=
		dd offset aRmul		; \=rmul\=
		dd offset aMl_1		; \=mL\=
		dd offset asc_52F648	; \=*=\=
		dd offset aRor_1	; \=ror\=
		dd offset aOr		; \=oR\=
		dd offset asc_52F65C	; \=|=\=
		dd offset aRplu		; \=rplu\=
		dd offset aPl		; \=pL\=
		dd offset asc_52F672	; \=+=\=
	 dd offset aRrsh  ; \=rrsh\=
  dd offset aRs_1  ; \=rS\=
  dd offset asc_52F688 ; \=>>=\=
		dd offset aRrsh+2	; \=rsh\=
		dd offset aRs		; \=rs\=
		dd offset asc_52F696	; \=>>\=
		dd offset aRxor		; \=rxor\=
		dd offset aEo		; \=eO\=
		dd offset asc_52F6AC	; \=^=\=
		dd offset aSub_2	; \=sub\=
		dd offset aNg		; \=ng\=
		dd offset asc_52F448+2	; \=-\=
		dd offset aSub_2	; \=sub\=
		dd offset aMi		; \=mi\=
		dd offset asc_52F448+2	; \=-\=
		dd offset aSubs		; \=subs\=
		dd offset aIx		; \=ix\=
		dd offset aDelete+0Ch	; \=[]\=
		dd offset aRxor+2	; \=xor\=
		dd offset aEo_1		; \=eo\=
		dd offset asc_52F6DC	; \=^\=
off_52F244	dd offset aDiv+4	; DATA XREF: .text:loc_437FC6o
					; \=v\=
off_52F248	dd offset aDiv+4	; DATA XREF: .text:00437582o
					; \=v\=
; wchar_t *off_52F24C
off_52F24C	dd offset aVoid		; DATA XREF: .text:004375CBr
					; \=void\=
		dd offset aCo+2		; \=o\=
		dd offset aSub_2+4	; \=b\=
		dd offset aBool_2	; \=bool\=
		dd offset aDec_0+4	; \=c\=
		dd offset aDec_0+4	; \=c\=
		dd offset aChar_4	; \=char\=
		dd offset aZc		; \=zc\=
		dd offset aComa+6	; \=a\=
		dd offset aSignedChar	; \=signed char\=
		dd offset aUc		; \=uc\=
		dd offset aLsh+4	; \=h\=
		dd offset aUnsignedChar	; \=unsigned char\=
		dd offset aPs+2		; \=s\=
		dd offset aPs+2		; \=s\=
		dd offset aShort_1	; \=short\=
		dd offset aUs		; \=us\=
		dd offset aPt+2		; \=t\=
		dd offset aUnsignedShort ; \=unsigned short\=
		dd offset aMi+2		; \=i\=
		dd offset aMi+2		; \=i\=
		dd offset aInt_4	; \=int\=
		dd offset aUi		; \=ui\=
		dd offset aJ_6		; \=j\=
		dd offset aUnsignedInt	; \=unsigned int\=
		dd offset aPl_0+2	; \=l\=
		dd offset aPl_0+2	; \=l\=
		dd offset aLong_2	; \=long\=
		dd offset aMul+2	; \=ul\=
		dd offset aArwm+6	; \=m\=
		dd offset aUnsignedLong	; \=unsigned long\=
		dd offset a_unknown_7	; \=!?!?!?\=
		dd offset aIx+2		; \=x\=
		dd offset aLongLong	; \=long	long\=
		dd offset a_unknown_7	; \=!?!?!?\=
		dd offset aY		; \=y\=
		dd offset aUnsignedLongLo ; \=unsigned long long\=
		dd offset aSub_2+4	; \=b\=
		dd offset aArow+6	; \=w\=
		dd offset aWchar_t	; \=wchar_t\=
		dd offset asc_52F816	; \=f\=
		dd offset asc_52F816	; \=f\=
		dd offset aFloat_7	; \=float\=
		dd offset aAdd_2+4	; \=d\=
		dd offset aAdd_2+4	; \=d\=
		dd offset aDouble_2	; \=double\=
		dd offset aAsg+4	; \=g\=
		dd offset aDele+6	; \=e\=
		dd offset aLongDouble	; \=long	double\=
		dd offset a_unknown_7	; \=!?!?!?\=
		dd offset aCf		; \=Cf\=
		dd offset aComplex	; \=complex\=
		dd offset a_unknown_7	; \=!?!?!?\=
		dd offset aCd		; \=Cd\=
		dd offset aComplexDouble ; \=complex double\=
		dd offset aDele+6	; \=e\=
		dd offset aZ		; \=z\=
		dd offset a____4	; \=...\=
aDataTableFullS:			; DATA XREF: .text:00438E01o
		unicode	0, <Data table full, some data will be lost\:>,0
aAdd_2:					; DATA XREF: .data:off_52F010o
					; .data:0052F01Co ...
		unicode	0, <add>,0
aPs:					; DATA XREF: .data:off_52F014o
					; .data:0052F280o ...
		unicode	0, <ps>,0
asc_52F394:				; DATA XREF: .data:off_52F018o
					; .data:0052F024o
		unicode	0, <+>,0
aPl_0:					; DATA XREF: .data:0052F020o
					; .data:0052F2B0o ...
		unicode	0, <pl>,0
aAdr:					; DATA XREF: .data:0052F028o
		unicode	0, <adr>,0
a_Ad:					; DATA XREF: .data:0052F02Co
		unicode	0, <ad>,0
asc_52F3AC:				; DATA XREF: .text:00437466o
					; .data:0052F030o ...
		unicode	0, <\A>,0
aAnd_1:					; DATA XREF: .data:0052F034o
		unicode	0, <and>,0
aAn:					; DATA XREF: .data:0052F038o
		unicode	0, <an>,0
aArow:					; DATA XREF: .data:0052F040o
					; .data:0052F2E4o
		unicode	0, <arow>,0
aPt:					; DATA XREF: .data:0052F044o
					; .data:0052F290o
		unicode	0, <pt>,0
asc_52F3CE:				; DATA XREF: .data:0052F048o
		unicode	0, <->
		dw 3Eh,	0
aArwm:					; DATA XREF: .data:0052F04Co
					; .data:0052F2C0o
		unicode	0, <arwm>,0
aPm_1:					; DATA XREF: .data:0052F050o
		unicode	0, <pm>,0
asc_52F3E4:				; DATA XREF: .data:0052F054o
		unicode	0, <->
		dw 3Eh
		unicode	0, <*>,0
aAsg:					; DATA XREF: .data:0052F058o
					; .data:0052F304o
		unicode	0, <asg>,0
a_As:					; DATA XREF: .data:0052F05Co
		unicode	0, <aS>,0
asc_52F3FA:				; DATA XREF: .data:0052F060o
		unicode	0, <=>,0
aCall_2:				; DATA XREF: .data:0052F064o
		unicode	0, <call>,0
aCl:					; DATA XREF: .data:0052F068o
		unicode	0, <cl>,0
; wchar_t asc_52F40E
asc_52F40E:				; DATA XREF: .text:0043738Do
					; .data:0052F06Co ...
		unicode	0, <\{\}>,0
aCmp_0:					; DATA XREF: .data:0052F070o
		unicode	0, <cmp>,0
aCo:					; DATA XREF: .data:0052F074o
					; .data:0052F250o
		unicode	0, <co>,0
; wchar_t asc_52F422
asc_52F422:				; DATA XREF: .text:loc_4377EBo
		unicode	0, <~>,0
aComa:					; DATA XREF: .data:0052F07Co
					; .data:0052F26Co
		unicode	0, <coma>,0
aCm:					; DATA XREF: .data:0052F080o
		unicode	0, <cm>,0
; wchar_t asc_52F436
asc_52F436:				; DATA XREF: .text:00437962o
		unicode	0, <,>,0
aDec_0:					; DATA XREF: .data:0052F088o
					; .data:0052F25Co ...
		unicode	0, <dec>,0
aMm:					; DATA XREF: .data:0052F08Co
		unicode	0, <mm>,0
asc_52F448:				; DATA XREF: .data:0052F090o
					; .data:0052F21Co ...
		unicode	0, <-->,0
aDele:					; DATA XREF: .data:0052F094o
					; .data:0052F110o ...
		unicode	0, <dele>,0
aDl:					; DATA XREF: .data:0052F098o
		unicode	0, <dl>,0
aDelete_2:				; DATA XREF: .data:0052F09Co
		unicode	0, <delete>,0
aDiv:					; DATA XREF: .data:0052F0A0o
					; .data:off_52F244o ...
		unicode	0, <div>,0
aDv:					; DATA XREF: .data:0052F0A4o
		unicode	0, <dv>,0
asc_52F47A:				; DATA XREF: .data:0052F0A8o
		unicode	0, </>,0
aDla:					; DATA XREF: .data:0052F0ACo
		unicode	0, <dla>,0
aDa:					; DATA XREF: .data:0052F0B0o
		unicode	0, <da>,0
aDelete:				; DATA XREF: .data:0052F0B4o
					; .data:0052F234o ...
		unicode	0, <delete[]>,0
aEql:					; DATA XREF: .data:0052F0B8o
		unicode	0, <eql>,0
aEq_4:					; DATA XREF: .data:0052F0BCo
		unicode	0, <eq>,0
asc_52F4AC:				; DATA XREF: .data:0052F0C0o
		unicode	0, <==>,0
aFnc:					; DATA XREF: .data:0052F0C4o
		unicode	0, <fnc>,0
a_unknown2:					; DATA XREF: .data:0052F0C8o
		unicode	0, <!?!?>,0
aGeq:					; DATA XREF: .data:0052F0D0o
		unicode	0, <geq>,0
aGe_1:					; DATA XREF: .data:0052F0D4o
		unicode	0, <ge>,0
asc_52F4CE:				; DATA XREF: .data:0052F0D8o
		dw 3Eh
		unicode	0, <=>,0
aGtr:					; DATA XREF: .data:0052F0DCo
		unicode	0, <gtr>,0
aGt_0:					; DATA XREF: .data:0052F0E0o
		unicode	0, <gt>,0
aInc_1:					; DATA XREF: .data:0052F0E8o
		unicode	0, <inc>,0
aPp:					; DATA XREF: .data:0052F0ECo
		unicode	0, <pp>,0
asc_52F4F0:				; DATA XREF: .data:0052F0F0o
		unicode	0, <++>,0
aInd:					; DATA XREF: .data:0052F0F4o
		unicode	0, <ind>,0
aDe:					; DATA XREF: .data:0052F0F8o
		unicode	0, <de>,0
aLand:					; DATA XREF: .data:0052F100o
		unicode	0, <land>,0
a_Aa:					; DATA XREF: .data:0052F104o
		unicode	0, <aa>,0
asc_52F514:				; DATA XREF: .text:0043747Ao
					; .data:0052F108o
		unicode	0, <\A\A>,0
aLeq:					; DATA XREF: .data:0052F10Co
		unicode	0, <leq>,0
asc_52F522:				; DATA XREF: .data:0052F114o
		dw 3Ch
		unicode	0, <=>,0
aLor:					; DATA XREF: .data:0052F118o
					; .data:0052F184o ...
		unicode	0, <lor>,0
aOo:					; DATA XREF: .data:0052F11Co
		unicode	0, <oo>,0
asc_52F536:				; DATA XREF: .data:0052F120o
					; .data:0052F18Co
		unicode	0, <||>,0
aLsh:					; DATA XREF: .data:0052F124o
					; .data:0052F278o
		unicode	0, <lsh>,0
aLs:					; DATA XREF: .data:0052F128o
		unicode	0, <ls>,0
asc_52F54A:				; DATA XREF: .data:0052F12Co
		dw 2 dup(3Ch), 0
aLss:					; DATA XREF: .data:0052F130o
		unicode	0, <lss>,0
aLt:					; DATA XREF: .data:0052F134o
		unicode	0, <lt>,0
aMod_1:					; DATA XREF: .data:0052F13Co
		unicode	0, <mod>,0
aRm_1:					; DATA XREF: .data:0052F140o
		unicode	0, <rm>,0
asc_52F56C:				; DATA XREF: .data:0052F144o
		unicode	0, <!%>,0
aMul:					; DATA XREF: .data:0052F148o
					; .data:0052F2BCo
		unicode	0, <mul>,0
aMl:					; DATA XREF: .data:0052F14Co
		unicode	0, <ml>,0
aNeq:					; DATA XREF: .data:0052F154o
		unicode	0, <neq>,0
aNe:					; DATA XREF: .data:0052F158o
		unicode	0, <ne>,0
asc_52F58C:				; DATA XREF: .data:0052F15Co
		unicode	0, <!=>,0
aNew_0:					; DATA XREF: .data:0052F160o
					; .data:0052F168o
		unicode	0, <new>,0
aNw:					; DATA XREF: .data:0052F164o
		unicode	0, <nw>,0
aNot:					; DATA XREF: .data:0052F16Co
		unicode	0, <not>,0
aNt:					; DATA XREF: .data:0052F170o
		unicode	0, <nt>,0
aNwa:					; DATA XREF: .data:0052F178o
		unicode	0, <nwa>,0
aNa:					; DATA XREF: .data:0052F17Co
		unicode	0, <na>,0
aNew:					; DATA XREF: .data:0052F180o
		unicode	0, <new[]>,0
aRand:					; DATA XREF: .data:0052F190o
		unicode	0, <rand>,0
aAn_1:					; DATA XREF: .data:0052F194o
		unicode	0, <aN>,0
asc_52F5D8:				; DATA XREF: .data:0052F198o
		unicode	0, <\A=>,0
aRdiv:					; DATA XREF: .data:0052F19Co
		unicode	0, <rdiv>,0
aDv_1:					; DATA XREF: .data:0052F1A0o
		unicode	0, <dV>,0
asc_52F5EE:				; DATA XREF: .data:0052F1A4o
		unicode	0, </=>,0
aRlsh:					; DATA XREF: .data:0052F1A8o
		unicode	0, <rlsh>,0
aLs_1:					; DATA XREF: .data:0052F1ACo
		unicode	0, <lS>,0
asc_52F604:				; DATA XREF: .data:0052F1B0o
		dw 2 dup(3Ch)
		unicode	0, <=>,0
aRmin:					; DATA XREF: .data:0052F1B4o
		unicode	0, <rmin>,0
aMi_2:					; DATA XREF: .data:0052F1B8o
		unicode	0, <mI>,0
asc_52F61C:				; DATA XREF: .data:0052F1BCo
		unicode	0, <-=>,0
aRmod:					; DATA XREF: .data:0052F1C0o
		unicode	0, <rmod>,0
aRm:					; DATA XREF: .data:0052F1C4o
		unicode	0, <rM>,0
asc_52F632:				; DATA XREF: .data:0052F1C8o
		unicode	0, <!%=>,0
aRmul:					; DATA XREF: .data:0052F1CCo
		unicode	0, <rmul>,0
aMl_1:					; DATA XREF: .data:0052F1D0o
		unicode	0, <mL>,0
asc_52F648:				; DATA XREF: .data:0052F1D4o
		unicode	0, <*=>,0
aRor_1:					; DATA XREF: .data:0052F1D8o
		unicode	0, <ror>,0
aOr:					; DATA XREF: .data:0052F1DCo
		unicode	0, <oR>,0
asc_52F65C:				; DATA XREF: .data:0052F1E0o
		unicode	0, <|=>,0
aRplu:					; DATA XREF: .data:0052F1E4o
		unicode	0, <rplu>,0
aPl:					; DATA XREF: .data:0052F1E8o
		unicode	0, <pL>,0
asc_52F672:				; DATA XREF: .data:0052F1ECo
		unicode	0, <+=>,0
aRrsh:					; DATA XREF: .data:0052F1F0o
					; .data:0052F1FCo
		unicode	0, <rrsh>,0
aRs_1:					; DATA XREF: .data:0052F1F4o
		unicode	0, <rS>,0
asc_52F688:				; DATA XREF: .data:0052F1F8o
		dw 2 dup(3Eh)
		unicode	0, <=>,0
aRs:					; DATA XREF: .data:0052F200o
		unicode	0, <rs>,0
asc_52F696:				; DATA XREF: .data:0052F204o
		dw 2 dup(3Eh), 0
aRxor:					; DATA XREF: .data:0052F208o
					; .data:0052F238o
		unicode	0, <rxor>,0
aEo:					; DATA XREF: .data:0052F20Co
		unicode	0, <eO>,0
asc_52F6AC:				; DATA XREF: .data:0052F210o
		unicode	0, <^=>,0
aSub_2:					; DATA XREF: .data:0052F214o
					; .data:0052F220o ...
		unicode	0, <sub>,0
aNg:					; DATA XREF: .data:0052F218o
		unicode	0, <ng>,0
aMi:					; DATA XREF: .data:0052F224o
					; .data:0052F298o ...
		unicode	0, <mi>,0
aSubs:					; DATA XREF: .data:0052F22Co
		unicode	0, <subs>,0
aIx:					; DATA XREF: .data:0052F230o
					; .data:0052F2CCo
		unicode	0, <ix>,0
aEo_1:					; DATA XREF: .data:0052F23Co
		unicode	0, <eo>,0
asc_52F6DC:				; DATA XREF: .data:0052F240o
		unicode	0, <^>,0
aVoid:					; DATA XREF: .data:off_52F24Co
		unicode	0, <void>,0
aBool_2:				; DATA XREF: .data:0052F258o
		unicode	0, <bool>,0
aChar_4:				; DATA XREF: .data:0052F264o
		unicode	0, <char>,0
aZc:					; DATA XREF: .data:0052F268o
		unicode	0, <zc>,0
aSignedChar:				; DATA XREF: .data:0052F270o
		unicode	0, <signed char>,0
aUc:					; DATA XREF: .data:0052F274o
		unicode	0, <uc>,0
aUnsignedChar:				; DATA XREF: .data:0052F27Co
		unicode	0, <unsigned char>,0
aShort_1:				; DATA XREF: .data:0052F288o
		unicode	0, <short>,0
aUs:					; DATA XREF: .data:0052F28Co
		unicode	0, <us>,0
aUnsignedShort:				; DATA XREF: .data:0052F294o
		unicode	0, <unsigned short>,0
aInt_4:					; DATA XREF: .data:0052F2A0o
		unicode	0, <int>,0
aUi:					; DATA XREF: .data:0052F2A4o
		unicode	0, <ui>,0
aJ_6:					; DATA XREF: .data:0052F2A8o
		unicode	0, <j>,0
aUnsignedInt:				; DATA XREF: .data:0052F2ACo
		unicode	0, <unsigned int>,0
aLong_2:				; DATA XREF: .data:0052F2B8o
		unicode	0, <long>,0
aUnsignedLong:				; DATA XREF: .data:0052F2C4o
		unicode	0, <unsigned long>,0
a_unknown_7:					; DATA XREF: .data:0052F2C8o
					; .data:0052F2D4o ...
		unicode	0, <!?!?!?>,0
aLongLong:				; DATA XREF: .data:0052F2D0o
		unicode	0, <long long>,0
aY:					; DATA XREF: .data:0052F2D8o
		unicode	0, <y>,0
aUnsignedLongLo:			; DATA XREF: .data:0052F2DCo
		unicode	0, <unsigned long long>,0
aWchar_t:				; DATA XREF: .data:0052F2E8o
		unicode	0, <wchar_t>,0
asc_52F816:				; DATA XREF: .data:0052F2ECo
					; .data:0052F2F0o
		unicode	0, <f>,0
aFloat_7:				; DATA XREF: .data:0052F2F4o
		unicode	0, <float>,0
aDouble_2:				; DATA XREF: .data:0052F300o
		unicode	0, <double>,0
aLongDouble:				; DATA XREF: .data:0052F30Co
		unicode	0, <long double>,0
aCf:					; DATA XREF: .data:0052F314o
		unicode	0, <Cf>,0
aComplex:				; DATA XREF: .data:0052F318o
		unicode	0, <complex>,0
aCd:					; DATA XREF: .data:0052F320o
		unicode	0, <Cd>,0
aComplexDouble:				; DATA XREF: .data:0052F324o
		unicode	0, <complex double>,0
aZ:					; DATA XREF: .data:0052F32Co
		unicode	0, <z>,0
a____4:					; DATA XREF: .data:0052F330o
		unicode	0, <...>,0
; wchar_t aStd_0
aStd_0:					; DATA XREF: .text:0043723Do
		unicode	0, <std>,0
; wchar_t aStdAllocator
aStdAllocator:				; DATA XREF: .text:00437260o
		unicode	0, <std::allocator>,0
; wchar_t aStdBasic_strin
aStdBasic_strin:			; DATA XREF: .text:loc_43728Co
		unicode	0, <std::basic_string>,0
; wchar_t aStdBasic_istre
aStdBasic_istre:			; DATA XREF: .text:004372ACo
		unicode	0, <std::basic_istream>,0
; wchar_t aStdBasic_ostre
aStdBasic_ostre:			; DATA XREF: .text:004372CCo
		unicode	0, <std::basic_ostream>,0
; wchar_t aStdBasic_iostr
aStdBasic_iostr:			; DATA XREF: .text:004372ECo
		unicode	0, <std::basic_iostream>,0
; wchar_t aOperator
aOperator:				; DATA XREF: .text:0043732Do
		unicode	0, <operator >,0
; wchar_t asc_52F964
asc_52F964:				; DATA XREF: .text:004374B7o
		unicode	0, <[>,0
; wchar_t asc_52F968
asc_52F968:				; DATA XREF: .text:004376BEo
		unicode	0, <::>,0
; wchar_t aFalse_2
aFalse_2:				; DATA XREF: .text:00437A0Ao
		unicode	0, <false>,0
; wchar_t aTrue_1
aTrue_1:				; DATA XREF: .text:00437A54o
		unicode	0, <true>,0
; wchar_t aTypeinfo_
aTypeinfo_:				; DATA XREF: .text:00437BAAo
		unicode	0, <typeinfo_>,0
; wchar_t aTypename_
aTypename_:				; DATA XREF: .text:00437BDEo
		unicode	0, <typename_>,0
; wchar_t aVtable_
aVtable_:				; DATA XREF: .text:00437C12o
		unicode	0, <vtable_>,0
; wchar_t aCvtable_
aCvtable_:				; DATA XREF: .text:00437C46o
		unicode	0, <cvtable_>,0
; wchar_t aThunk_
aThunk_:				; DATA XREF: .text:00437C7Ao
		unicode	0, <thunk_>,0
; wchar_t aVthunk_
aVthunk_:				; DATA XREF: .text:00437CCBo
		unicode	0, <vthunk_>,0
; wchar_t aXp
aXp:					; DATA XREF: .text:00438129o
		unicode	0, <$xp$>,0
; wchar_t aTpdsc
aTpdsc:					; DATA XREF: .text:00438142o
		unicode	0, <tpdsc >,0
; wchar_t aXt
aXt:					; DATA XREF: .text:0043821Do
		unicode	0, <$xt$>,0
; wchar_t a_Cf_
a@Cf@:					; DATA XREF: .text:0043827Eo
		unicode	0, <@$cf$@>,0
; wchar_t aVdflg
aVdflg:					; DATA XREF: .text:00438293o
		unicode	0, <vdflg >,0
; wchar_t a_Dc
a_Dc:					; DATA XREF: .text:004382BBo
		unicode	0, <_$DC>,0
; wchar_t aOdtbl
aOdtbl:					; DATA XREF: .text:004382D0o
		unicode	0, <odtbl >,0
; wchar_t a_Ch
a_Ch:					; DATA XREF: .text:0043832Eo
		unicode	0, <_$CH>,0
; wchar_t aChtbl
aChtbl:					; DATA XREF: .text:00438343o
		unicode	0, <chtbl >,0
; wchar_t a_Fl
a_Fl:					; DATA XREF: .text:004383A1o
		unicode	0, <_$FL>,0
; wchar_t aFrndl
aFrndl:					; DATA XREF: .text:004383B6o
		unicode	0, <frndl >,0
; wchar_t a_Tl
a_Tl:					; DATA XREF: .text:00438414o
		unicode	0, <_$TL>,0
; wchar_t aThrwl
aThrwl:					; DATA XREF: .text:00438429o
		unicode	0, <thrwl >,0
; wchar_t a_Ect
a_Ect:					; DATA XREF: .text:00438484o
		unicode	0, <_$ECT>,0
; wchar_t aEctbl
aEctbl:					; DATA XREF: .text:00438499o
		unicode	0, <ectbl >,0
; wchar_t aLinkproc
aLinkproc:				; DATA XREF: .text:00438500o
		unicode	0, <linkproc >,0
; wchar_t aBctr
aBctr:					; DATA XREF: .text:00438523o
		unicode	0, <$bctr>,0
; wchar_t aBdtr
aBdtr:					; DATA XREF: .text:0043858Bo
		unicode	0, <$bdtr>,0
; wchar_t aB_0
aB_0:					; DATA XREF: .text:00438610o
		unicode	0, <$b>,0
; wchar_t aO
aO:					; DATA XREF: .text:004386E1o
		unicode	0, <$o>,0
; wchar_t aU
aU:					; DATA XREF: .text:0043A34Bo
		unicode	0, <#!%u>,0
; wchar_t aS_U
aS_U:					; DATA XREF: .text:0043A3DAo
		unicode	0, <\A!%s.#!%u>,0
aBadInputData:				; DATA XREF: .text:0043A539o
		unicode	0, <Bad input data>,0
aUnknownModule:				; DATA XREF: .text:0043A65Do
		unicode	0, <Unknown module>,0
aInvalidImportN:			; DATA XREF: .text:0043A6F4o
		unicode	0, <Invalid import name>,0
aPleaseSpecifyM:			; DATA XREF: .text:0043A763o
		unicode	0, <Please specify module>,0
aInvalidOrdinal:			; DATA XREF: .text:0043A7B6o
		unicode	0, <Invalid ordinal>,0
aExtraCharacter:			; DATA XREF: .text:0043A7F5o
		unicode	0, <Extra characters in name>,0
aOrdinalNotFoun:			; DATA XREF: .text:0043AA72o
		unicode	0, <Ordinal not found>,0
aUnknownImport:				; DATA XREF: .text:0043AB6Co
		unicode	0, <Unknown import>,0
aOrdinalNotImpo:			; DATA XREF: .text:0043ABBBo
		unicode	0, <Ordinal not imported>,0
		db 0
		db    0
; Exported entry 782. _regname
; Exported entry 783. regname
		public regname
; LPCWSTR regname
regname		dd offset aAl_2		; DATA XREF: .text:0042AA4Fr
					; _regname
		dd offset aCl_0		; \=CL\=
		dd offset aDl_0		; \=DL\=
		dd offset aBl_1		; \=BL\=
; LPCWSTR off_52FC54
off_52FC54	dd offset aAh		; DATA XREF: .text:0042AA22r
					; \=AH\=
		dd offset aCh		; \=CH\=
		dd offset aDh		; \=DH\=
		dd offset aBh		; \=BH\=
; LPCWSTR off_52FC64
off_52FC64	dd offset aAx_0		; DATA XREF: .text:0042A9F5r
					; \=AX\=
		dd offset aCx		; \=CX\=
		dd offset aDx		; \=DX\=
		dd offset aBx_1		; \=BX\=
		dd offset aSp		; \=SP\=
		dd offset aBp_1		; \=BP\=
		dd offset aSi		; \=SI\=
		dd offset aDi		; \=DI\=
; LPCWSTR off_52FC84
off_52FC84	dd offset aEax_2	; DATA XREF: .text:00401AD8r
					; \=EAX\=
		dd offset aEcx_0	; \=ECX\=
		dd offset aEdx_0	; \=EDX\=
		dd offset aEbx_1	; \=EBX\=
		dd offset aEsp		; \=ESP\=
		dd offset aEbp_0	; \=EBP\=
		dd offset aEsi		; \=ESI\=
		dd offset aEdi_0	; \=EDI\=
; Exported entry 784. _regname64
; Exported entry 785. regname64
		public regname64
regname64	dd offset aAl_2		; _regname64
		dd offset aCl_0		; \=CL\=
		dd offset aDl_0		; \=DL\=
		dd offset aBl_1		; \=BL\=
		dd offset aSpl		; \=SPL\=
		dd offset aBpl		; \=BPL\=
		dd offset aSil		; \=SIL\=
		dd offset aDil		; \=DIL\=
		dd offset aR8l		; \=R8L\=
		dd offset aR9l		; \=R9L\=
		dd offset aR10l		; \=R10L\=
		dd offset aR11l		; \=R11L\=
		dd offset aR12l		; \=R12L\=
		dd offset aR13l		; \=R13L\=
		dd offset aR14l		; \=R14L\=
		dd offset aR15l		; \=R15L\=
		dd offset aAx_0		; \=AX\=
		dd offset aCx		; \=CX\=
		dd offset aDx		; \=DX\=
		dd offset aBx_1		; \=BX\=
		dd offset aSp		; \=SP\=
		dd offset aBp_1		; \=BP\=
		dd offset aSi		; \=SI\=
		dd offset aDi		; \=DI\=
		dd offset aR8w		; \=R8W\=
		dd offset aR9w		; \=R9W\=
		dd offset aR10w		; \=R10W\=
		dd offset aR11w		; \=R11W\=
		dd offset aR12w		; \=R12W\=
		dd offset aR13w		; \=R13W\=
		dd offset aR14w		; \=R14W\=
		dd offset aR15w		; \=R15W\=
		dd offset aEax_2	; \=EAX\=
		dd offset aEcx_0	; \=ECX\=
		dd offset aEdx_0	; \=EDX\=
		dd offset aEbx_1	; \=EBX\=
		dd offset aEsp		; \=ESP\=
		dd offset aEbp_0	; \=EBP\=
		dd offset aEsi		; \=ESI\=
		dd offset aEdi_0	; \=EDI\=
		dd offset aR8d		; \=R8D\=
		dd offset aR9d		; \=R9D\=
		dd offset aR10d		; \=R10D\=
		dd offset aR11d		; \=R11D\=
		dd offset aR12d		; \=R12D\=
		dd offset aR13d		; \=R13D\=
		dd offset aR14d		; \=R14D\=
		dd offset aR15d		; \=R15D\=
		dd offset aRax		; \=RAX\=
		dd offset aRcx		; \=RCX\=
		dd offset aRdx		; \=RDX\=
		dd offset aRbx		; \=RBX\=
		dd offset aRsp		; \=RSP\=
		dd offset aRbp		; \=RBP\=
		dd offset aRsi		; \=RSI\=
		dd offset aRdi		; \=RDI\=
		dd offset aR8_0		; \=R8\=
		dd offset aR9		; \=R9\=
		dd offset aR10		; \=R10\=
		dd offset aR11		; \=R11\=
		dd offset aR12		; \=R12\=
		dd offset aR13		; \=R13\=
		dd offset aR14		; \=R14\=
		dd offset aR15		; \=R15\=
; Exported entry 786. _segname
; Exported entry 787. segname
		public segname
segname		dd offset aEs		; DATA XREF: .text:0043B435r
					; _segname
off_52FDA8	dd offset aCs_1		; DATA XREF: .text:0048C504r
					; \=CS\=
off_52FDAC	dd offset aSs_1		; DATA XREF: .text:0048C510r
					; \=SS\=
off_52FDB0	dd offset aDs_1		; DATA XREF: .text:0048C51Cr
					; \=DS\=
off_52FDB4	dd offset aFs_0		; DATA XREF: .text:0048C528r
					; \=FS\=
off_52FDB8	dd offset aGs_1		; DATA XREF: .text:0048C534r
					; \=GS\=
		dd offset aSeg6		; \=SEG6:\=
		dd offset aSeg7		; \=SEG7:\=
; Exported entry 788. _fpuname
; Exported entry 789. fpuname
		public fpuname
fpuname		dd offset aSt0		; DATA XREF: .text:0042BE2Eo
					; _fpuname
		dd offset aSt1		; \=ST\{1\}\=
		dd offset aSt2		; \=ST\{2\}\=
		dd offset aSt3		; \=ST\{3\}\=
		dd offset aSt4		; \=ST\{4\}\=
		dd offset aSt5		; \=ST\{5\}\=
		dd offset aSt6		; \=ST\{6\}\=
		dd offset aSt7		; \=ST\{7\}\=
off_52FDE4	dd offset aSt0_1	; DATA XREF: .text:0043CDE2r
					; \=ST0\=
off_52FDE8	dd offset aSt1_1	; DATA XREF: .text:004945E7r
					; \=ST1\=
off_52FDEC	dd offset aSt2_1	; DATA XREF: .text:004945F3r
					; \=ST2\=
off_52FDF0	dd offset aSt3_1	; DATA XREF: .text:004945FFr
					; \=ST3\=
off_52FDF4	dd offset aSt4_1	; DATA XREF: .text:0049460Br
					; \=ST4\=
off_52FDF8	dd offset aSt5_1	; DATA XREF: .text:00494617r
					; \=ST5\=
off_52FDFC	dd offset aSt6_0	; DATA XREF: .text:00494623r
					; \=ST6\=
off_52FE00	dd offset aSt7_0	; DATA XREF: .text:0049462Fr
					; \=ST7\=
; Exported entry 790. _mmxname
; Exported entry 791. mmxname
		public mmxname
mmxname		dd offset aMm0		; DATA XREF: .text:loc_43CF09r
					; _mmxname
		dd offset aMm1		; \=MM1\=
		dd offset aMm2		; \=MM2\=
		dd offset aMm3		; \=MM3\=
		dd offset aMm4		; \=MM4\=
		dd offset aMm5		; \=MM5\=
		dd offset aMm6		; \=MM6\=
		dd offset aMm7		; \=MM7\=
; Exported entry 792. _ssename
; Exported entry 793. ssename
		public ssename
ssename		dd offset aXmm0		; DATA XREF: .text:0043D0A3o
					; _ssename
		dd offset aXmm1		; \=XMM1\=
		dd offset aXmm2		; \=XMM2\=
		dd offset aXmm3		; \=XMM3\=
		dd offset aXmm4		; \=XMM4\=
		dd offset aXmm5		; \=XMM5\=
		dd offset aXmm6		; \=XMM6\=
		dd offset aXmm7		; \=XMM7\=
		dd offset aXmm8		; \=XMM8\=
		dd offset aXmm9		; \=XMM9\=
		dd offset aXmm10	; \=XMM10\=
		dd offset aXmm11	; \=XMM11\=
		dd offset aXmm12	; \=XMM12\=
		dd offset aXmm13	; \=XMM13\=
		dd offset aXmm14	; \=XMM14\=
		dd offset aXmm15	; \=XMM15\=
		dd offset aYmm0		; \=YMM0\=
		dd offset aYmm1		; \=YMM1\=
		dd offset aYmm2		; \=YMM2\=
		dd offset aYmm3		; \=YMM3\=
		dd offset aYmm4		; \=YMM4\=
		dd offset aYmm5		; \=YMM5\=
		dd offset aYmm6		; \=YMM6\=
		dd offset aYmm7		; \=YMM7\=
		dd offset aYmm8		; \=YMM8\=
		dd offset aYmm9		; \=YMM9\=
		dd offset aYmm10	; \=YMM10\=
		dd offset aYmm11	; \=YMM11\=
		dd offset aYmm12	; \=YMM12\=
		dd offset aYmm13	; \=YMM13\=
		dd offset aYmm14	; \=YMM14\=
		dd offset aYmm15	; \=YMM15\=
; Exported entry 794. _crname
; Exported entry 795. crname
		public crname
crname		dd offset aCr0		; DATA XREF: .text:loc_43DA45r
					; _crname
off_52FEA8	dd offset aCr1		; DATA XREF: .text:0048C6B1r
					; \=CR1\=
off_52FEAC	dd offset aCr2		; DATA XREF: .text:0048C6BDr
					; \=CR2\=
off_52FEB0	dd offset aCr3		; DATA XREF: .text:0048C6C8r
					; \=CR3\=
off_52FEB4	dd offset aCr4		; DATA XREF: .text:0048C6D4r
					; \=CR4\=
off_52FEB8	dd offset aCr5		; DATA XREF: .text:0048C6DFr
					; \=CR5\=
off_52FEBC	dd offset aCr6		; DATA XREF: .text:0048C6EBr
					; \=CR6\=
off_52FEC0	dd offset aCr7		; DATA XREF: .text:0048C6F6r
					; \=CR7\=
		dd offset aCr8		; \=CR8\=
		dd offset aCr9		; \=CR9\=
		dd offset aCr10		; \=CR10\=
		dd offset aCr11		; \=CR11\=
		dd offset aCr12		; \=CR12\=
		dd offset aCr13		; \=CR13\=
		dd offset aCr14		; \=CR14\=
		dd offset aCr15		; \=CR15\=
; Exported entry 796. _drname
; Exported entry 797. drname
		public drname
drname		dd offset aDr0		; DATA XREF: .text:loc_43DAC8r
					; _drname
off_52FEE8	dd offset aDr1		; DATA XREF: .text:0048C70Dr
					; \=DR1\=
off_52FEEC	dd offset aDr2		; DATA XREF: .text:0048C719r
					; \=DR2\=
off_52FEF0	dd offset aDr3		; DATA XREF: .text:0048C724r
					; \=DR3\=
off_52FEF4	dd offset aDr4		; DATA XREF: .text:0048C730r
					; \=DR4\=
off_52FEF8	dd offset aDr5		; DATA XREF: .text:0048C73Br
					; \=DR5\=
off_52FEFC	dd offset aDr6		; DATA XREF: .text:0048C747r
					; \=DR6\=
off_52FF00	dd offset aDr7		; DATA XREF: .text:0048C752r
					; \=DR7\=
; Exported entry 798. _sizename
; Exported entry 799. sizename
		public sizename
_sizename	label dword		
sizename	dd offset a0Byte	; DATA XREF: .text:loc_43B22Cr
					; _sizename
off_52FF08	dd offset aByte_1	; DATA XREF: .text:0044360Er
					; \=BYTE\=
		dd offset aWord_4	; \=WORD\=
		dd offset a3Byte	; \=\{3-BYTE\}\=
		dd offset aDword_0	; \=DWORD\=
		dd offset a5Byte	; \=\{5-BYTE\}\=
		dd offset aFword	; \=FWORD\=
		dd offset a7Byte	; \=\{7-BYTE\}\=
		dd offset aQword	; \=QWORD\=
		dd offset a9Byte	; \=\{9-BYTE\}\=
		dd offset aTbyte	; \=TBYTE\=
		dd offset a11Byte	; \=\{11-BYTE\}\=
		dd offset a12Byte	; \=\{12-BYTE\}\=
		dd offset a13Byte	; \=\{13-BYTE\}\=
		dd offset a14Byte	; \=\{14-BYTE\}\=
		dd offset a15Byte	; \=\{15-BYTE\}\=
		dd offset aDqword	; \=DQWORD\=
		dd offset a17Byte	; \=\{17-BYTE\}\=
		dd offset a18Byte	; \=\{18-BYTE\}\=
		dd offset a19Byte	; \=\{19-BYTE\}\=
		dd offset a20Byte	; \=\{20-BYTE\}\=
		dd offset a21Byte	; \=\{21-BYTE\}\=
		dd offset a22Byte	; \=\{22-BYTE\}\=
		dd offset a23Byte	; \=\{23-BYTE\}\=
		dd offset a24Byte	; \=\{24-BYTE\}\=
		dd offset a25Byte	; \=\{25-BYTE\}\=
		dd offset a26Byte	; \=\{26-BYTE\}\=
		dd offset a27Byte	; \=\{27-BYTE\}\=
		dd offset a28Byte	; \=\{28-BYTE\}\=
		dd offset a29Byte	; \=\{29-BYTE\}\=
		dd offset a30Byte	; \=\{30-BYTE\}\=
		dd offset a31Byte	; \=\{31-BYTE\}\=
		dd offset aQqword	; \=QQWORD\=
; Exported entry 800. _sizekey
; Exported entry 801. sizekey
		public sizekey
sizekey		dd offset a0Byte	; DATA XREF: .text:loc_43B265r
					; _sizekey
off_52FF8C	dd offset aDb		; DATA XREF: .text:loc_44365Fr
					; \=DB\=
		dd offset aDw		; \=DW\=
		dd offset a3Byte	; \=\{3-BYTE\}\=
		dd offset a_Dd		; \=DD\=
		dd offset a5Byte	; \=\{5-BYTE\}\=
		dd offset aDf		; \=DF\=
		dd offset a7Byte	; \=\{7-BYTE\}\=
		dd offset aDq		; \=DQ\=
		dd offset a9Byte	; \=\{9-BYTE\}\=
		dd offset aDt		; \=DT\=
		dd offset a11Byte	; \=\{11-BYTE\}\=
		dd offset a12Byte	; \=\{12-BYTE\}\=
		dd offset a13Byte	; \=\{13-BYTE\}\=
		dd offset a14Byte	; \=\{14-BYTE\}\=
		dd offset a15Byte	; \=\{15-BYTE\}\=
		dd offset aDdq		; \=DDQ\=
		dd offset a17Byte	; \=\{17-BYTE\}\=
		dd offset a18Byte	; \=\{18-BYTE\}\=
		dd offset a19Byte	; \=\{19-BYTE\}\=
		dd offset a20Byte	; \=\{20-BYTE\}\=
		dd offset a21Byte	; \=\{21-BYTE\}\=
		dd offset a22Byte	; \=\{22-BYTE\}\=
		dd offset a23Byte	; \=\{23-BYTE\}\=
		dd offset a24Byte	; \=\{24-BYTE\}\=
		dd offset a25Byte	; \=\{25-BYTE\}\=
		dd offset a26Byte	; \=\{26-BYTE\}\=
		dd offset a27Byte	; \=\{27-BYTE\}\=
		dd offset a28Byte	; \=\{28-BYTE\}\=
		dd offset a29Byte	; \=\{29-BYTE\}\=
		dd offset a30Byte	; \=\{30-BYTE\}\=
		dd offset a31Byte	; \=\{31-BYTE\}\=
off_530008	dd offset aDqq		; \=DQQ\=
; Exported entry 802. _sizeatt
; Exported entry 803. sizeatt
		public sizeatt
sizeatt		dd offset a0Byte	; DATA XREF: .text:0043B24Dr
					; _sizeatt
off_530010	dd offset a_byte	; DATA XREF: .text:0044363Br
					; \=.BYTE\=
		dd offset a_word	; \=.WORD\=
		dd offset a3Byte	; \=\{3-BYTE\}\=
		dd offset a_long	; \=.LONG\=
		dd offset a5Byte	; \=\{5-BYTE\}\=
off_530024	dd offset a_fword	; \=.FWORD\=
off_530028	dd offset a7Byte	; \=\{7-BYTE\}\=
off_53002C	dd offset a_quad	; \=.QUAD\=
off_530030	dd offset a9Byte	; \=\{9-BYTE\}\=
		dd offset a_tbyte	; \=.TBYTE\=
off_530038	dd offset a11Byte	; \=\{11-BYTE\}\=
		dd offset a12Byte	; \=\{12-BYTE\}\=
off_530040	dd offset a13Byte	; \=\{13-BYTE\}\=
		dd offset a14Byte	; \=\{14-BYTE\}\=
off_530048	dd offset a15Byte	; \=\{15-BYTE\}\=
		dd offset a_dquad	; \=.DQUAD\=
		dd offset a17Byte	; \=\{17-BYTE\}\=
off_530054	dd offset a18Byte	; DATA XREF: .data:off_542940o
					; \=\{18-BYTE\}\=
off_530058	dd offset a19Byte	; \=\{19-BYTE\}\=
off_53005C	dd offset a20Byte	; \=\{20-BYTE\}\=
off_530060	dd offset a21Byte	; \=\{21-BYTE\}\=
		dd offset a22Byte	; \=\{22-BYTE\}\=
off_530068	dd offset a23Byte	; \=\{23-BYTE\}\=
		dd offset a24Byte	; \=\{24-BYTE\}\=
off_530070	dd offset a25Byte	; \=\{25-BYTE\}\=
off_530074	dd offset a26Byte	; \=\{26-BYTE\}\=
		dd offset a27Byte	; \=\{27-BYTE\}\=
		dd offset a28Byte	; \=\{28-BYTE\}\=
		dd offset a29Byte	; \=\{29-BYTE\}\=
		dd offset a30Byte	; \=\{30-BYTE\}\=
		dd offset a31Byte	; \=\{31-BYTE\}\=
		dd offset a_qquad	; \=.QQUAD\=
; wchar_t *off_530090
off_530090	dd offset aEq_0		; DATA XREF: .text:00445E05r
					; \=EQ\=
		dd offset aLt_2		; \=LT\=
		dd offset aLe_2		; \=LE\=
		dd offset aUnord	; \=UNORD\=
		dd offset aNeq_1	; \=NEQ\=
		dd offset aNlt		; \=NLT\=
		dd offset aNle		; \=NLE\=
		dd offset aWord_4+2	; \=ORD\=
		dd offset aEq_uq	; \=EQ_UQ\=
		dd offset aNge		; \=NGE\=
		dd offset aNgt		; \=NGT\=
		dd offset aFalse_3	; \=FALSE\=
		dd offset aNeq_oq	; \=NEQ_OQ\=
		dd offset aNge+2	; \=GE\=
		dd offset aNgt+2	; \=GT\=
		dd offset aTrue_0	; \=TRUE\=
		dd offset aEq_os	; \=EQ_OS\=
		dd offset aLt_oq	; \=LT_OQ\=
		dd offset aLe_oq	; \=LE_OQ\=
		dd offset aUnord_s	; \=UNORD_S\=
		dd offset aNeq_us	; \=NEQ_US\=
		dd offset aNlt_uq	; \=NLT_UQ\=
		dd offset aNle_uq	; \=NLE_UQ\=
		dd offset aUnord_s+4	; \=ORD_S\=
		dd offset aNeq_us+2	; \=EQ_US\=
		dd offset aNge_uq	; \=NGE_UQ\=
		dd offset aNgt_uq	; \=NGT_UQ\=
		dd offset aFalse_os	; \=FALSE_OS\=
		dd offset aNeq_os	; \=NEQ_OS\=
		dd offset aGe_oq	; \=GE_OQ\=
		dd offset aGt_oq	; \=GT_OQ\=
		dd offset aTrue_us	; \=TRUE_US\=
stru_530110	struct_4 <1, 0, offset aC_3>; 0	; DATA XREF: .text:00444553o
					; \=C\=
		struct_4 <4, 2, offset aSp+2>; 0 ; \=P\=
		struct_4 <10h, 4, offset aA>; 0	; \=A\=
		struct_4 <40h, 6, offset aZ_1>;	0 ; \=Z\=
		struct_4 <80h, 7, offset aEs+2>; 0 ; \=S\=
		struct_4 <100h, 8, offset aDt+2>; 0 ; \=T\=
		struct_4 <400h, 0Ah, offset aR8d+4>; 0 ; \=D\=
		struct_4 <800h, 0Bh, offset aO_7>; 0 ; \=O\=
		struct_4 <200h, 9, offset aInt>; 0 ; \=INT\=
		struct_4 <3000h, 0Ch, offset aIopl>; 0 ; \=IOPL\=
		struct_4 <4000h, 0Eh, offset aInt+2>; 0	; \=NT\=
		struct_4 <10000h, 10h, offset aRf>; 0 ;	\=RF\=
		struct_4 <20000h, 11h, offset aVm>; 0 ;	\=VM\=
		struct_4 <40000h, 12h, offset aAc>; 0 ;	\=AC\=
		struct_4 <80000h, 13h, offset aVif>; 0 ; \=VIF\=
		struct_4 <100000h, 14h, offset aVip>; 0	; \=VIP\=
		struct_4 <200000h, 15h, offset aId>; 0 ; \=ID\=
		struct_4 <0>
stru_5301E8	struct_4 <4000h, 0Eh, offset aC3_0>; 0 ; DATA XREF: .text:00445475o
					; \=C3\=
		struct_4 <400h, 0Ah, offset aC2>; 0 ; \=C2\=
		struct_4 <200h, 9, offset aC1_0>; 0 ; \=C1\=
		struct_4 <100h, 8, offset aC0>;	0 ; \=C0\=
		struct_4 <80h, 7, offset aEs>; 0 ; \=ES\=
		struct_4 <40h, 6, offset aSf>; 0 ; \=SF\=
		struct_4 <20h, 5, offset aPe>; 0 ; \=PE\=
		struct_4 <10h, 4, offset aTrue_0+4>; 0 ; \=UE\=
		struct_4 <8, 3, offset aOe>; 0 ; Method
		struct_4 <4, 2, offset aZe>; 0 ; \=ZE\=
		struct_4 <2, 1, offset aDe_0>; 0 ; \=DE\=
		struct_4 <1, 0, offset aIe>; 0 ; \=IE\=
		struct_4 <0>
stru_530284	struct_4 <1000h, 0Ch, offset aAx_0+2>; 0 ; DATA	XREF: .text:00445492o
					; \=X\=
		struct_4 <0C00h, 0Ah, offset aRc>; 0 ; \=RC\=
		struct_4 <300h, 8, offset aPc>;	0 ; \=PC\=
		struct_4 <20h, 5, offset aPm_2>; 0 ; \=PM\=
		struct_4 <10h, 4, offset aUm>; 0 ; \=UM\=
		struct_4 <8, 3, offset aOm>; 0 ; Method
		struct_4 <4, 2, offset aZm>; 0 ; \=ZM\=
		struct_4 <2, 1, offset aDm>; 0 ; \=DM\=
		struct_4 <1, 0, offset aIm>; 0 ; \=IM\=
		struct_4 <0>
stru_5302FC	struct_4 <8000h, 0Fh, offset aFz>; 0 ; DATA XREF: .text:004454AFo
					; \=FZ\=
		struct_4 <6000h, 0Dh, offset aRc>; 0 ; \=RC\=
		struct_4 <1000h, 0Ch, offset aPm_2>; 0 ; \=PM\=
		struct_4 <800h, 0Bh, offset aUm>; 0 ; \=UM\=
		struct_4 <400h, 0Ah, offset aOm>; 0 ; \=OM\=
		struct_4 <200h, 9, offset aZm>;	0 ; \=ZM\=
		struct_4 <100h, 8, offset aDm>;	0 ; \=DM\=
		struct_4 <80h, 7, offset aIm>; 0 ; \=IM\=
		struct_4 <40h, 6, offset aDaz>;	0 ; \=DAZ\=
		struct_4 <20h, 5, offset aPe>; 0 ; \=PE\=
		struct_4 <10h, 4, offset aTrue_0+4>; 0 ; \=UE\=
		struct_4 <8, 3, offset aOe>; 0 ; Method
		struct_4 <4, 2, offset aZe>; 0 ; \=ZE\=
		struct_4 <2, 1, offset aDe_0>; 0 ; \=DE\=
		struct_4 <1, 0, offset aIe>; 0 ; \=IE\=
		struct_4 <0>
tfloat		t_float	< 3.141592653589793116, 0, offset aPi>;	0
					; \=PI\=
		t_float	< 1.448803891615424512e19, 2, offset aPi262>; 0	; \=PI*2**62\=
		t_float	< 1.772453850905516104, 0, offset aSqrtPi>; 0 ;	\=SQRT\{PI\}\=
		t_float	< 2.7182818284590450908, 0, offset aByte_1+6>; 0 ; \=E\=
		t_float	< 1.442695040888963387, 0, offset aLog2E>; 0 ; \=LOG2\{E\}\=
		t_float	< 0.43429448190325181667, 0, offset aLog10E>; 0	; \=LOG10\{E\}\=
		t_float	< 0.69314718055994528623, 0, offset aLn2>; 0 ; \=LN\{2\}\=
		t_float	< 2.3025850929940459011, 0, offset aLn10_>; 0 ;	\=LN\{10.\}\=
		t_float	< 1.4142135623730951455, 0, offset aSqrt2>; 0 ;	\=SQRT\{2\}\=
		t_float	< 1.7320508075688771932, 0, offset aSqrt3>; 0 ;	\=SQRT\{3\}\=
		t_float	< 2.2360679774997898051, 0, offset aSqrt5>; 0 ;	\=SQRT\{5\}\=
		t_float	< 3.1622776601683795228, 0, offset aSqrt10_>; 0	; \=SQRT\{10.\}\=
		t_float	< 0.29289321881345248277, 0, offset a11Sqrt2>; 0 ; \=1-1/SQRT\{2\}\=
		t_float	< 1.2599210498948731907, 0, offset a213>; 0 ; \=2**1/3\=
		t_float	< 1.6180339887498949025, 0, offset aGolden_ratio>; 0 ; \=GOLDEN_RATIO\=
		t_float	< 0.57721566490153286555, 0, offset aGamma>; 0 ; \=GAMMA\=
		t_float	< 2.147483647e9, 1, offset aMaxlong>; 0	; \=MAXLONG\=
		t_float	< 4.294967295e9, 1, offset aMaxdword>; 0 ; \=MAXDWORD\=
		t_float	< 8.64e7, 3, offset aMillisec_in_da>; 0	; \=MILLISEC_IN_DAY\=
		t_float	< 3.2808399000000001422, 2, offset aFeet_in_meter>; 0 ;	\=FEET_IN_METER\=
		t_float	< 5280.0, 3, offset aFeet_in_mile>; 0 ;	\=FEET_IN_MILE\=
		t_float	< 2.0, 4, offset aR12+4>; 0 ; \=2\=
		t_float	< 3.0, 4, offset aR13+4>; 0 ; \=3\=
		t_float	< 4.0, 4, offset aR14+4>; 0 ; \=4\=
		t_float	< 5.0, 4, offset aR15+4>; 0 ; \=5\=
		t_float	< 6.0, 4, offset aSt6_0+4>; 0 ;	\=6\=
		t_float	< 7.0, 4, offset aSt7_0+4>; 0 ;	\=7\=
		t_float	< 8.0, 4, offset aR8_0+2>; 0 ; \=8\=
		t_float	< 9.0, 4, offset aR9+2>; 0 ; \=9\=
		t_float	< 10.0, 4, offset a10_>; 0 ; \=10.\=
		t_float	< 11.0, 4, offset a11_>; 0 ; \=11.\=
		t_float	< 12.0, 4, offset a12_>; 0 ; \=12.\=
		t_float	< 13.0, 4, offset a13_>; 0 ; \=13.\=
		t_float	< 14.0, 4, offset a14_>; 0 ; \=14.\=
		t_float	< 15.0, 4, offset a15_>; 0 ; \=15.\=
		t_float	< 16.0, 4, offset a16_>; 0 ; \=16.\=
		t_float	< 32.0, 4, offset a32_>; 0 ; \=32.\=
		t_float	< 64.0, 4, offset a64_>; 0 ; \=64.\=
		t_float	< 128.0, 4, offset a128_>; 0 ; \=128.\=
aAl_2:					; DATA XREF: .data:regnameo
					; .data:regname64o ...
		unicode	0, <AL>,0
aCl_0:					; DATA XREF: .data:0052FC48o
					; .data:0052FCA8o
		unicode	0, <CL>,0
aDl_0:					; DATA XREF: .data:0052FC4Co
					; .data:0052FCACo
		unicode	0, <DL>,0
aBl_1:					; DATA XREF: .data:0052FC50o
					; .data:0052FCB0o
		unicode	0, <BL>,0
aAh:					; DATA XREF: .data:off_52FC54o
		unicode	0, <AH>,0
aCh:					; DATA XREF: .data:0052FC58o
		unicode	0, <CH>,0
aDh:					; DATA XREF: .data:0052FC5Co
		unicode	0, <DH>,0
aBh:					; DATA XREF: .data:0052FC60o
		unicode	0, <BH>,0
aAx_0:					; DATA XREF: .data:off_52FC64o
					; .data:0052FCE4o ...
		unicode	0, <AX>,0
aCx:					; DATA XREF: .data:0052FC68o
					; .data:0052FCE8o
		unicode	0, <CX>,0
aDx:					; DATA XREF: .data:0052FC6Co
					; .data:0052FCECo
		unicode	0, <DX>,0
; wchar_t aBx_1
aBx_1:					; DATA XREF: .text:0043F5EAo
					; .data:0052FC70o ...
		unicode	0, <BX>,0
aSp:					; DATA XREF: .data:0052FC74o
					; .data:0052FCF4o ...
		unicode	0, <SP>,0
; wchar_t aBp_1
aBp_1:					; DATA XREF: .text:0043F5ADo
					; .data:0052FC78o ...
		unicode	0, <BP>,0
; wchar_t aSi
aSi:					; DATA XREF: .text:0043F530o
					; .data:0052FC7Co ...
		unicode	0, <SI>,0
; wchar_t aDi
aDi:					; DATA XREF: .text:0043F570o
					; .data:0052FC80o ...
		unicode	0, <DI>,0
aEax_2:					; DATA XREF: .data:off_52FC84o
					; .data:0052FD24o
		unicode	0, <EAX>,0
aEcx_0:					; DATA XREF: .data:0052FC88o
					; .data:0052FD28o
		unicode	0, <ECX>,0
aEdx_0:					; DATA XREF: .data:0052FC8Co
					; .data:0052FD2Co
		unicode	0, <EDX>,0
aEbx_1:					; DATA XREF: .data:0052FC90o
					; .data:0052FD30o
		unicode	0, <EBX>,0
aEsp:					; DATA XREF: .data:0052FC94o
					; .data:0052FD34o
		unicode	0, <ESP>,0
aEbp_0:					; DATA XREF: .data:0052FC98o
					; .data:0052FD38o
		unicode	0, <EBP>,0
aEsi:					; DATA XREF: .data:0052FC9Co
					; .data:0052FD3Co
		unicode	0, <ESI>,0
aEdi_0:					; DATA XREF: .data:0052FCA0o
					; .data:0052FD40o
		unicode	0, <EDI>,0
aSpl:					; DATA XREF: .data:0052FCB4o
		unicode	0, <SPL>,0
aBpl:					; DATA XREF: .data:0052FCB8o
		unicode	0, <BPL>,0
aSil:					; DATA XREF: .data:0052FCBCo
		unicode	0, <SIL>,0
aDil:					; DATA XREF: .data:0052FCC0o
		unicode	0, <DIL>,0
aR8l:					; DATA XREF: .data:0052FCC4o
		unicode	0, <R8L>,0
aR9l:					; DATA XREF: .data:0052FCC8o
		unicode	0, <R9L>,0
aR10l:					; DATA XREF: .data:0052FCCCo
		unicode	0, <R10L>,0
aR11l:					; DATA XREF: .data:0052FCD0o
		unicode	0, <R11L>,0
aR12l:					; DATA XREF: .data:0052FCD4o
		unicode	0, <R12L>,0
aR13l:					; DATA XREF: .data:0052FCD8o
		unicode	0, <R13L>,0
aR14l:					; DATA XREF: .data:0052FCDCo
		unicode	0, <R14L>,0
aR15l:					; DATA XREF: .data:0052FCE0o
		unicode	0, <R15L>,0
aR8w:					; DATA XREF: .data:0052FD04o
		unicode	0, <R8W>,0
aR9w:					; DATA XREF: .data:0052FD08o
		unicode	0, <R9W>,0
aR10w:					; DATA XREF: .data:0052FD0Co
		unicode	0, <R10W>,0
aR11w:					; DATA XREF: .data:0052FD10o
		unicode	0, <R11W>,0
aR12w:					; DATA XREF: .data:0052FD14o
		unicode	0, <R12W>,0
aR13w:					; DATA XREF: .data:0052FD18o
		unicode	0, <R13W>,0
aR14w:					; DATA XREF: .data:0052FD1Co
		unicode	0, <R14W>,0
aR15w:					; DATA XREF: .data:0052FD20o
		unicode	0, <R15W>,0
aR8d:					; DATA XREF: .data:0052FD44o
					; .data:00530158o
		unicode	0, <R8D>,0
aR9d:					; DATA XREF: .data:0052FD48o
		unicode	0, <R9D>,0
aR10d:					; DATA XREF: .data:0052FD4Co
		unicode	0, <R10D>,0
aR11d:					; DATA XREF: .data:0052FD50o
		unicode	0, <R11D>,0
aR12d:					; DATA XREF: .data:0052FD54o
		unicode	0, <R12D>,0
aR13d:					; DATA XREF: .data:0052FD58o
		unicode	0, <R13D>,0
aR14d:					; DATA XREF: .data:0052FD5Co
		unicode	0, <R14D>,0
aR15d:					; DATA XREF: .data:0052FD60o
		unicode	0, <R15D>,0
aRax:					; DATA XREF: .data:0052FD64o
		unicode	0, <RAX>,0
aRcx:					; DATA XREF: .data:0052FD68o
		unicode	0, <RCX>,0
aRdx:					; DATA XREF: .data:0052FD6Co
		unicode	0, <RDX>,0
aRbx:					; DATA XREF: .data:0052FD70o
		unicode	0, <RBX>,0
aRsp:					; DATA XREF: .data:0052FD74o
		unicode	0, <RSP>,0
aRbp:					; DATA XREF: .data:0052FD78o
		unicode	0, <RBP>,0
aRsi:					; DATA XREF: .data:0052FD7Co
		unicode	0, <RSI>,0
aRdi:					; DATA XREF: .data:0052FD80o
		unicode	0, <RDI>,0
aR8_0:					; DATA XREF: .data:0052FD84o
					; .data:005305A2o
		unicode	0, <R8>,0
aR9:					; DATA XREF: .data:0052FD88o
					; .data:005305B4o
		unicode	0, <R9>,0
aR10:					; DATA XREF: .data:0052FD8Co
		unicode	0, <R10>,0
aR11:					; DATA XREF: .data:0052FD90o
		unicode	0, <R11>,0
aR12:					; DATA XREF: .data:0052FD94o
					; .data:00530536o
		unicode	0, <R12>,0
aR13:					; DATA XREF: .data:0052FD98o
					; .data:00530548o
		unicode	0, <R13>,0
aR14:					; DATA XREF: .data:0052FD9Co
					; .data:0053055Ao
		unicode	0, <R14>,0
aR15:					; DATA XREF: .data:0052FDA0o
					; .data:0053056Co
		unicode	0, <R15>,0
aEs:					; DATA XREF: .data:segnameo
					; .data:00530218o ...
		unicode	0, <ES>,0
aCs_1:					; DATA XREF: .data:off_52FDA8o
		unicode	0, <CS>,0
aSs_1:					; DATA XREF: .data:off_52FDACo
		unicode	0, <SS>,0
aDs_1:					; DATA XREF: .data:off_52FDB0o
		unicode	0, <DS>,0
aFs_0:					; DATA XREF: .data:off_52FDB4o
		unicode	0, <FS>,0
aGs_1:					; DATA XREF: .data:off_52FDB8o
		unicode	0, <GS>,0
aSeg6:					; DATA XREF: .data:0052FDBCo
		unicode	0, <SEG6:>,0
aSeg7:					; DATA XREF: .data:0052FDC0o
		unicode	0, <SEG7:>,0
aSt0:					; DATA XREF: .data:fpunameo
		unicode	0, <ST\{0\}>,0
aSt1:					; DATA XREF: .data:0052FDC8o
		unicode	0, <ST\{1\}>,0
aSt2:					; DATA XREF: .data:0052FDCCo
		unicode	0, <ST\{2\}>,0
aSt3:					; DATA XREF: .data:0052FDD0o
		unicode	0, <ST\{3\}>,0
aSt4:					; DATA XREF: .data:0052FDD4o
		unicode	0, <ST\{4\}>,0
aSt5:					; DATA XREF: .data:0052FDD8o
		unicode	0, <ST\{5\}>,0
aSt6:					; DATA XREF: .data:0052FDDCo
		unicode	0, <ST\{6\}>,0
aSt7:					; DATA XREF: .data:0052FDE0o
		unicode	0, <ST\{7\}>,0
aSt0_1:					; DATA XREF: .data:off_52FDE4o
		unicode	0, <ST0>,0
aSt1_1:					; DATA XREF: .data:off_52FDE8o
		unicode	0, <ST1>,0
aSt2_1:					; DATA XREF: .data:off_52FDECo
		unicode	0, <ST2>,0
aSt3_1:					; DATA XREF: .data:off_52FDF0o
		unicode	0, <ST3>,0
aSt4_1:					; DATA XREF: .data:off_52FDF4o
		unicode	0, <ST4>,0
aSt5_1:					; DATA XREF: .data:off_52FDF8o
		unicode	0, <ST5>,0
aSt6_0:					; DATA XREF: .data:off_52FDFCo
					; .data:0053057Eo
		unicode	0, <ST6>,0
aSt7_0:					; DATA XREF: .data:off_52FE00o
					; .data:00530590o
		unicode	0, <ST7>,0
aMm0:					; DATA XREF: .data:mmxnameo
		unicode	0, <MM0>,0
aMm1:					; DATA XREF: .data:0052FE08o
		unicode	0, <MM1>,0
aMm2:					; DATA XREF: .data:0052FE0Co
		unicode	0, <MM2>,0
aMm3:					; DATA XREF: .data:0052FE10o
		unicode	0, <MM3>,0
aMm4:					; DATA XREF: .data:0052FE14o
		unicode	0, <MM4>,0
aMm5:					; DATA XREF: .data:0052FE18o
		unicode	0, <MM5>,0
aMm6:					; DATA XREF: .data:0052FE1Co
		unicode	0, <MM6>,0
aMm7:					; DATA XREF: .data:0052FE20o
		unicode	0, <MM7>,0
aXmm0:					; DATA XREF: .data:ssenameo
		unicode	0, <XMM0>,0
aXmm1:					; DATA XREF: .data:0052FE28o
		unicode	0, <XMM1>,0
aXmm2:					; DATA XREF: .data:0052FE2Co
		unicode	0, <XMM2>,0
aXmm3:					; DATA XREF: .data:0052FE30o
		unicode	0, <XMM3>,0
aXmm4:					; DATA XREF: .data:0052FE34o
		unicode	0, <XMM4>,0
aXmm5:					; DATA XREF: .data:0052FE38o
		unicode	0, <XMM5>,0
aXmm6:					; DATA XREF: .data:0052FE3Co
		unicode	0, <XMM6>,0
aXmm7:					; DATA XREF: .data:0052FE40o
		unicode	0, <XMM7>,0
aXmm8:					; DATA XREF: .data:0052FE44o
		unicode	0, <XMM8>,0
aXmm9:					; DATA XREF: .data:0052FE48o
		unicode	0, <XMM9>,0
aXmm10:					; DATA XREF: .data:0052FE4Co
		unicode	0, <XMM10>,0
aXmm11:					; DATA XREF: .data:0052FE50o
		unicode	0, <XMM11>,0
aXmm12:					; DATA XREF: .data:0052FE54o
		unicode	0, <XMM12>,0
aXmm13:					; DATA XREF: .data:0052FE58o
		unicode	0, <XMM13>,0
aXmm14:					; DATA XREF: .data:0052FE5Co
		unicode	0, <XMM14>,0
aXmm15:					; DATA XREF: .data:0052FE60o
		unicode	0, <XMM15>,0
aYmm0:					; DATA XREF: .data:0052FE64o
		unicode	0, <YMM0>,0
aYmm1:					; DATA XREF: .data:0052FE68o
		unicode	0, <YMM1>,0
aYmm2:					; DATA XREF: .data:0052FE6Co
		unicode	0, <YMM2>,0
aYmm3:					; DATA XREF: .data:0052FE70o
		unicode	0, <YMM3>,0
aYmm4:					; DATA XREF: .data:0052FE74o
		unicode	0, <YMM4>,0
aYmm5:					; DATA XREF: .data:0052FE78o
		unicode	0, <YMM5>,0
aYmm6:					; DATA XREF: .data:0052FE7Co
		unicode	0, <YMM6>,0
aYmm7:					; DATA XREF: .data:0052FE80o
		unicode	0, <YMM7>,0
aYmm8:					; DATA XREF: .data:0052FE84o
		unicode	0, <YMM8>,0
aYmm9:					; DATA XREF: .data:0052FE88o
		unicode	0, <YMM9>,0
aYmm10:					; DATA XREF: .data:0052FE8Co
		unicode	0, <YMM10>,0
aYmm11:					; DATA XREF: .data:0052FE90o
		unicode	0, <YMM11>,0
aYmm12:					; DATA XREF: .data:0052FE94o
		unicode	0, <YMM12>,0
aYmm13:					; DATA XREF: .data:0052FE98o
		unicode	0, <YMM13>,0
aYmm14:					; DATA XREF: .data:0052FE9Co
		unicode	0, <YMM14>,0
aYmm15:					; DATA XREF: .data:0052FEA0o
		unicode	0, <YMM15>,0
aCr0:					; DATA XREF: .data:crnameo
		unicode	0, <CR0>,0
aCr1:					; DATA XREF: .data:off_52FEA8o
		unicode	0, <CR1>,0
aCr2:					; DATA XREF: .data:off_52FEACo
		unicode	0, <CR2>,0
aCr3:					; DATA XREF: .data:off_52FEB0o
		unicode	0, <CR3>,0
aCr4:					; DATA XREF: .data:off_52FEB4o
		unicode	0, <CR4>,0
aCr5:					; DATA XREF: .data:off_52FEB8o
		unicode	0, <CR5>,0
aCr6:					; DATA XREF: .data:off_52FEBCo
		unicode	0, <CR6>,0
aCr7:					; DATA XREF: .data:off_52FEC0o
		unicode	0, <CR7>,0
aCr8:					; DATA XREF: .data:0052FEC4o
		unicode	0, <CR8>,0
aCr9:					; DATA XREF: .data:0052FEC8o
		unicode	0, <CR9>,0
aCr10:					; DATA XREF: .data:0052FECCo
		unicode	0, <CR10>,0
aCr11:					; DATA XREF: .data:0052FED0o
		unicode	0, <CR11>,0
aCr12:					; DATA XREF: .data:0052FED4o
		unicode	0, <CR12>,0
aCr13:					; DATA XREF: .data:0052FED8o
		unicode	0, <CR13>,0
aCr14:					; DATA XREF: .data:0052FEDCo
		unicode	0, <CR14>,0
aCr15:					; DATA XREF: .data:0052FEE0o
		unicode	0, <CR15>,0
aDr0:					; DATA XREF: .data:drnameo
		unicode	0, <DR0>,0
aDr1:					; DATA XREF: .data:off_52FEE8o
		unicode	0, <DR1>,0
aDr2:					; DATA XREF: .data:off_52FEECo
		unicode	0, <DR2>,0
aDr3:					; DATA XREF: .data:off_52FEF0o
		unicode	0, <DR3>,0
aDr4:					; DATA XREF: .data:off_52FEF4o
		unicode	0, <DR4>,0
aDr5:					; DATA XREF: .data:off_52FEF8o
		unicode	0, <DR5>,0
aDr6:					; DATA XREF: .data:off_52FEFCo
		unicode	0, <DR6>,0
aDr7:					; DATA XREF: .data:off_52FF00o
		unicode	0, <DR7>,0
a0Byte:					; DATA XREF: .data:sizenameo
					; .data:sizekeyo ...
		unicode	0, <\{0-BYTE\}>,0
aByte_1:				; DATA XREF: .data:off_52FF08o
					; .data:005303F2o
		unicode	0, <BYTE>,0
aWord_4:				; DATA XREF: .data:0052FF0Co
					; .data:005300ACo
		unicode	0, <WORD>,0
a3Byte:					; DATA XREF: .data:0052FF10o
					; .data:0052FF94o ...
		unicode	0, <\{3-BYTE\}>,0
aDword_0:				; DATA XREF: .data:0052FF14o
		unicode	0, <DWORD>,0
a5Byte:					; DATA XREF: .data:0052FF18o
					; .data:0052FF9Co ...
		unicode	0, <\{5-BYTE\}>,0
aFword:					; DATA XREF: .data:0052FF1Co
		unicode	0, <FWORD>,0
a7Byte:					; DATA XREF: .data:0052FF20o
					; .data:0052FFA4o ...
		unicode	0, <\{7-BYTE\}>,0
aQword:					; DATA XREF: .data:0052FF24o
		unicode	0, <QWORD>,0
a9Byte:					; DATA XREF: .data:0052FF28o
					; .data:0052FFACo ...
		unicode	0, <\{9-BYTE\}>,0
aTbyte:					; DATA XREF: .data:0052FF2Co
		unicode	0, <TBYTE>,0
a11Byte:				; DATA XREF: .data:0052FF30o
					; .data:0052FFB4o ...
		unicode	0, <\{11-BYTE\}>,0
a12Byte:				; DATA XREF: .data:0052FF34o
					; .data:0052FFB8o ...
		unicode	0, <\{12-BYTE\}>,0
a13Byte:				; DATA XREF: .data:0052FF38o
					; .data:0052FFBCo ...
		unicode	0, <\{13-BYTE\}>,0
a14Byte:				; DATA XREF: .data:0052FF3Co
					; .data:0052FFC0o ...
		unicode	0, <\{14-BYTE\}>,0
a15Byte:				; DATA XREF: .data:0052FF40o
					; .data:0052FFC4o ...
		unicode	0, <\{15-BYTE\}>,0
aDqword:				; DATA XREF: .data:0052FF44o
		unicode	0, <DQWORD>,0
a17Byte:				; DATA XREF: .data:0052FF48o
					; .data:0052FFCCo ...
		unicode	0, <\{17-BYTE\}>,0
a18Byte:				; DATA XREF: .data:0052FF4Co
					; .data:0052FFD0o ...
		unicode	0, <\{18-BYTE\}>,0
a19Byte:				; DATA XREF: .data:0052FF50o
					; .data:0052FFD4o ...
		unicode	0, <\{19-BYTE\}>,0
a20Byte:				; DATA XREF: .data:0052FF54o
					; .data:0052FFD8o ...
		unicode	0, <\{20-BYTE\}>,0
a21Byte:				; DATA XREF: .data:0052FF58o
					; .data:0052FFDCo ...
		unicode	0, <\{21-BYTE\}>,0
a22Byte:				; DATA XREF: .data:0052FF5Co
					; .data:0052FFE0o ...
		unicode	0, <\{22-BYTE\}>,0
a23Byte:				; DATA XREF: .data:0052FF60o
					; .data:0052FFE4o ...
		unicode	0, <\{23-BYTE\}>,0
a24Byte:				; DATA XREF: .data:0052FF64o
					; .data:0052FFE8o ...
		unicode	0, <\{24-BYTE\}>,0
a25Byte:				; DATA XREF: .data:0052FF68o
					; .data:0052FFECo ...
		unicode	0, <\{25-BYTE\}>,0
a26Byte:				; DATA XREF: .data:0052FF6Co
					; .data:0052FFF0o ...
		unicode	0, <\{26-BYTE\}>,0
a27Byte:				; DATA XREF: .data:0052FF70o
					; .data:0052FFF4o ...
		unicode	0, <\{27-BYTE\}>,0
a28Byte:				; DATA XREF: .data:0052FF74o
					; .data:0052FFF8o ...
		unicode	0, <\{28-BYTE\}>,0
a29Byte:				; DATA XREF: .data:0052FF78o
					; .data:0052FFFCo ...
		unicode	0, <\{29-BYTE\}>,0
a30Byte:				; DATA XREF: .data:0052FF7Co
					; .data:00530000o ...
		unicode	0, <\{30-BYTE\}>,0
a31Byte:				; DATA XREF: .data:0052FF80o
					; .data:00530004o ...
		unicode	0, <\{31-BYTE\}>,0
aQqword:				; DATA XREF: .data:0052FF84o
		unicode	0, <QQWORD>,0
aDb:					; DATA XREF: .data:off_52FF8Co
		unicode	0, <DB>,0
aDw:					; DATA XREF: .data:0052FF90o
		unicode	0, <DW>,0
a_Dd:					; DATA XREF: .data:0052FF98o
		unicode	0, <DD>,0
aDf:					; DATA XREF: .data:0052FFA0o
		unicode	0, <DF>,0
aDq:					; DATA XREF: .data:0052FFA8o
		unicode	0, <DQ>,0
aDt:					; DATA XREF: .data:0052FFB0o
					; .data:0053014Co
		unicode	0, <DT>,0
aDdq:					; DATA XREF: .data:0052FFC8o
		unicode	0, <DDQ>,0
aDqq:					; DATA XREF: .data:off_530008o
		unicode	0, <DQQ>,0
a_byte:					; DATA XREF: .data:off_530010o
		unicode	0, <.BYTE>,0
a_word:					; DATA XREF: .data:00530014o
		unicode	0, <.WORD>,0
a_long:					; DATA XREF: .data:0053001Co
		unicode	0, <.LONG>,0
a_fword:				; DATA XREF: .data:off_530024o
		unicode	0, <.FWORD>,0
a_quad:					; DATA XREF: .data:off_53002Co
		unicode	0, <.QUAD>,0
a_tbyte:				; DATA XREF: .data:00530034o
		unicode	0, <.TBYTE>,0
a_dquad:				; DATA XREF: .data:0053004Co
		unicode	0, <.DQUAD>,0
a_qquad:				; DATA XREF: .data:0053008Co
		unicode	0, <.QQUAD>,0
aEq_0:					; DATA XREF: .data:off_530090o
		unicode	0, <EQ>,0
aLt_2:					; DATA XREF: .data:00530094o
		unicode	0, <LT>,0
aLe_2:					; DATA XREF: .data:00530098o
		unicode	0, <LE>,0
aUnord:					; DATA XREF: .data:0053009Co
		unicode	0, <UNORD>,0
aNeq_1:					; DATA XREF: .data:005300A0o
		unicode	0, <NEQ>,0
aNlt:					; DATA XREF: .data:005300A4o
		unicode	0, <NLT>,0
aNle:					; DATA XREF: .data:005300A8o
		unicode	0, <NLE>,0
aEq_uq:					; DATA XREF: .data:005300B0o
		unicode	0, <EQ_UQ>,0
aNge:					; DATA XREF: .data:005300B4o
					; .data:005300C4o
		unicode	0, <NGE>,0
aNgt:					; DATA XREF: .data:005300B8o
					; .data:005300C8o
		unicode	0, <NGT>,0
aFalse_3:				; DATA XREF: .data:005300BCo
		unicode	0, <FALSE>,0
aNeq_oq:				; DATA XREF: .data:005300C0o
		unicode	0, <NEQ_OQ>,0
aTrue_0:				; DATA XREF: .data:005300CCo
					; .data:0053023Co ...
		unicode	0, <TRUE>,0
aEq_os:					; DATA XREF: .data:005300D0o
		unicode	0, <EQ_OS>,0
aLt_oq:					; DATA XREF: .data:005300D4o
		unicode	0, <LT_OQ>,0
aLe_oq:					; DATA XREF: .data:005300D8o
		unicode	0, <LE_OQ>,0
aUnord_s:				; DATA XREF: .data:005300DCo
					; .data:005300ECo
		unicode	0, <UNORD_S>,0
aNeq_us:				; DATA XREF: .data:005300E0o
					; .data:005300F0o
		unicode	0, <NEQ_US>,0
aNlt_uq:				; DATA XREF: .data:005300E4o
		unicode	0, <NLT_UQ>,0
aNle_uq:				; DATA XREF: .data:005300E8o
		unicode	0, <NLE_UQ>,0
aNge_uq:				; DATA XREF: .data:005300F4o
		unicode	0, <NGE_UQ>,0
aNgt_uq:				; DATA XREF: .data:005300F8o
		unicode	0, <NGT_UQ>,0
aFalse_os:				; DATA XREF: .data:005300FCo
		unicode	0, <FALSE_OS>,0
aNeq_os:				; DATA XREF: .data:00530100o
		unicode	0, <NEQ_OS>,0
aGe_oq:					; DATA XREF: .data:00530104o
		unicode	0, <GE_OQ>,0
aGt_oq:					; DATA XREF: .data:00530108o
		unicode	0, <GT_OQ>,0
aTrue_us:				; DATA XREF: .data:0053010Co
		unicode	0, <TRUE_US>,0
aC_3:					; DATA XREF: .data:stru_530110o
		unicode	0, <C>,0
aA:					; DATA XREF: .data:00530128o
		unicode	0, <A>,0
aZ_1:					; DATA XREF: .data:00530134o
		unicode	0, <Z>,0
aO_7:					; DATA XREF: .data:00530164o
		unicode	0, <O>,0
aInt:					; DATA XREF: .data:00530170o
					; .data:00530188o
		unicode	0, <INT>,0
aIopl:					; DATA XREF: .data:0053017Co
		unicode	0, <IOPL>,0
aRf:					; DATA XREF: .data:00530194o
		unicode	0, <RF>,0
aVm:					; DATA XREF: .data:005301A0o
		unicode	0, <VM>,0
aAc:					; DATA XREF: .data:005301ACo
		unicode	0, <AC>,0
aVif:					; DATA XREF: .data:005301B8o
		unicode	0, <VIF>,0
aVip:					; DATA XREF: .data:005301C4o
		unicode	0, <VIP>,0
aId:					; DATA XREF: .data:005301D0o
		unicode	0, <ID>,0
aC3_0:					; DATA XREF: .data:stru_5301E8o
		unicode	0, <C3>,0
aC2:					; DATA XREF: .data:005301F4o
		unicode	0, <C2>,0
aC1_0:					; DATA XREF: .data:00530200o
		unicode	0, <C1>,0
aC0:					; DATA XREF: .data:0053020Co
		unicode	0, <C0>,0
aSf:					; DATA XREF: .data:00530224o
		unicode	0, <SF>,0
aPe:					; DATA XREF: .data:00530230o
					; .data:00530368o
		unicode	0, <PE>,0
aOe:					; DATA XREF: .data:00530248o
					; .data:00530380o
		unicode	0, <OE>,0
aZe:					; DATA XREF: .data:00530254o
					; .data:0053038Co
		unicode	0, <ZE>,0
aDe_0:					; DATA XREF: .data:00530260o
					; .data:00530398o
		unicode	0, <DE>,0
aIe:					; DATA XREF: .data:0053026Co
					; .data:005303A4o
		unicode	0, <IE>,0
aRc:					; DATA XREF: .data:00530290o
					; .data:00530308o
		unicode	0, <RC>,0
aPc:					; DATA XREF: .data:0053029Co
		unicode	0, <PC>,0
aPm_2:					; DATA XREF: .data:005302A8o
					; .data:00530314o
		unicode	0, <PM>,0
aUm:					; DATA XREF: .data:005302B4o
					; .data:00530320o
		unicode	0, <UM>,0
aOm:					; DATA XREF: .data:005302C0o
					; .data:0053032Co
		unicode	0, <OM>,0
aZm:					; DATA XREF: .data:005302CCo
					; .data:00530338o
		unicode	0, <ZM>,0
aDm:					; DATA XREF: .data:005302D8o
					; .data:00530344o
		unicode	0, <DM>,0
aIm:					; DATA XREF: .data:005302E4o
					; .data:00530350o
		unicode	0, <IM>,0
aFz:					; DATA XREF: .data:stru_5302FCo
		unicode	0, <FZ>,0
aDaz:					; DATA XREF: .data:0053035Co
		unicode	0, <DAZ>,0
; wchar_t aBxSi_1
aBxSi_1:				; DATA XREF: .text:0043F424o
		unicode	0, <BX+SI>,0
; wchar_t aBxSi
aBxSi:					; DATA XREF: .text:0043F435o
		unicode	0, <!%BX,!%SI>,0
; wchar_t aBxDi_1
aBxDi_1:				; DATA XREF: .text:0043F468o
		unicode	0, <BX+DI>,0
; wchar_t aBxDi
aBxDi:					; DATA XREF: .text:0043F479o
		unicode	0, <!%BX,!%DI>,0
; wchar_t aBpSi_0
aBpSi_0:				; DATA XREF: .text:0043F4ACo
		unicode	0, <BP+SI>,0
; wchar_t aBpSi
aBpSi:					; DATA XREF: .text:0043F4BDo
		unicode	0, <!%BP,!%SI>,0
; wchar_t aBpDi_1
aBpDi_1:				; DATA XREF: .text:0043F4F0o
		unicode	0, <BP+DI>,0
; wchar_t aBpDi
aBpDi:					; DATA XREF: .text:0043F501o
		unicode	0, <!%BP,!%DI>,0
; wchar_t aBp
aBp:					; DATA XREF: .text:0043F5BEo
		unicode	0, <!%BP>,0
; wchar_t aBx
aBx:					; DATA XREF: .text:0043F5FBo
		unicode	0, <!%BX>,0
; wchar_t aS_5
aS_5:					; DATA XREF: .text:0043F762o
		unicode	0, <!%!%!%s>,0
; wchar_t aI_35
aI_35:					; DATA XREF: .text:0043F854o
		unicode	0, <*!%i>,0
; wchar_t aS_6
aS_6:					; DATA XREF: .text:0043F93Eo
		unicode	0, <,!%!%!%s>,0
; wchar_t aI_0
aI_0:					; DATA XREF: .text:0043F963o
		unicode	0, <,!%i>,0
a_ascii:				; DATA XREF: .text:0043B16Ao
		unicode	0, <.ASCII>,0
a_unicode:				; DATA XREF: .text:0043B1ADo
		unicode	0, <.UNICODE>,0
aXmmword:				; DATA XREF: .text:0043B1F4o
		unicode	0, <XMMWORD>,0
aYmmword_1:				; DATA XREF: .text:0043B217o
		unicode	0, <YMMWORD>,0
aBackspace:				; DATA XREF: .text:004406F2o
		unicode	0, <Backspace>,0
aTab_0:					; DATA XREF: .text:00440716o
		unicode	0, <TAB>,0
aLineFeed:				; DATA XREF: .text:0044073Ao
		unicode	0, <Line Feed>,0
aFormFeed:				; DATA XREF: .text:0044075Eo
		unicode	0, <Form Feed>,0
aCarriageReturn:			; DATA XREF: .text:00440782o
		unicode	0, <Carriage Return>,0
aEsc:					; DATA XREF: .text:004407A6o
		unicode	0, <ESC>,0
aCharC:					; DATA XREF: .text:004407E9o
		unicode	0, <Char \-!%c\->,0
aCharC_0:				; DATA XREF: .text:0044080Ao
		unicode	0, <char \-!%c\->,0
aCharC_1:				; DATA XREF: .text:00440822o
		unicode	0, <CHAR \-!%c\->,0
aFar:					; DATA XREF: .text:0043B594o
		unicode	0, <FAR >,0
aNear:					; DATA XREF: .text:0043B5C2o
		unicode	0, <NEAR >,0
aSmall:					; DATA XREF: .text:0043B606o
		unicode	0, <SMALL >,0
aType_1:				; DATA XREF: .text:0043B666o
		unicode	0, <TYPE >,0
aXmmword_1:				; DATA XREF: .text:0043B6D9o
		unicode	0, <XMMWORD >,0
aYmmword:				; DATA XREF: .text:0043B705o
		unicode	0, <YMMWORD >,0
aPtr:					; DATA XREF: .text:0043B753o
		unicode	0, <PTR >,0
aStackAddress:				; DATA XREF: .text:0043B99Eo
		unicode	0, <Stack address=>,0
aAddress_8:				; DATA XREF: .text:loc_43B9ABo
		unicode	0, <Address=>,0
aTopOfStack:				; DATA XREF: .text:loc_43BA59o
		unicode	0, <Top of stack >,0
aStack:					; DATA XREF: .text:loc_43BA81o
		unicode	0, <Stack >,0
; wchar_t asc_531302
asc_531302:				; DATA XREF: .text:0043BB07o
		unicode	0, <]=>,0
; wchar_t asc_531308
asc_531308:				; DATA XREF: .text:0043BB47o
		unicode	0, <]>,0
; wchar_t a____9
a_unknown_9:					; DATA XREF: .text:0043BB65o
		unicode	0, <=!?!?!?>,0
; wchar_t aInf7f800000
aInf7f800000:				; DATA XREF: .text:00440869o
		unicode	0, <+INF 7F800000>,0
; wchar_t aInfFf800000
aInfFf800000:				; DATA XREF: .text:0044088Co
		unicode	0, <-INF FF800000>,0
; wchar_t aNan08lx_1
aNan08lx_1:				; DATA XREF: .text:004408BAo
		unicode	0, <+NAN !%08lX>,0
; wchar_t aNan08lx
aNan08lx:				; DATA XREF: .text:004408E0o
		unicode	0, <-NAN !%08lX>,0
; wchar_t a0_0_1
a0_0_1:					; DATA XREF: .text:00440900o
		unicode	0, <0.0>,0
; wchar_t a_7g
a_7g:					; DATA XREF: .text:00440920o
		unicode	0, <!%#.7g>,0
; wchar_t aInf7f800000000
aInf7f800000000:			; DATA XREF: .text:0044095Eo
		unicode	0, <+INF 7F800000 00000000>,0
; wchar_t aInfFf800000000
aInfFf800000000:			; DATA XREF: .text:00440983o
		unicode	0, <-INF FF800000 00000000>,0
; wchar_t aNan08lx08lx_1
aNan08lx08lx_1:				; DATA XREF: .text:004409ACo
		unicode	0, <+NAN !%08lX !%08lX>,0
; wchar_t aNan08lx08lx
aNan08lx08lx:				; DATA XREF: .text:004409C8o
		unicode	0, <-NAN !%08lX !%08lX>,0
; wchar_t a_16lg
a_16lg:					; DATA XREF: .text:00440A05o
		unicode	0, <!%#.16lg>,0
; wchar_t aInf7fff8000000
aInf7fff8000000:			; DATA XREF: .text:00440A48o
		unicode	0, <+INF 7FFF 80000000 00000000>,0
; wchar_t aInfFfff8000000
aInfFfff8000000:			; DATA XREF: .text:00440A77o
		unicode	0, <-INF FFFF 80000000 00000000>,0
; wchar_t aCnan04x08lx08l
aCnan04x08lx08l:			; DATA XREF: .text:00440ABFo
		unicode	0, <!%cNAN !%04X !%08lX !%08lX>,0
; wchar_t aC___04x08lx08l
aCxxxx04x08lx08l:			; DATA XREF: .text:00440B02o
		unicode	0, <!%c!?!?!? !%04X !%08lX !%08lX>,0
; wchar_t aCunorm04x08lx0
aCunorm04x08lx0:			; DATA XREF: .text:00440B44o
		unicode	0, <!%cUNORM !%04X !%08lX !%08lX>,0
; wchar_t a0_0
a0_0:					; DATA XREF: .text:00440B6Eo
		unicode	0, <-0.0>,0
; wchar_t a_20lg
a_20lg:					; DATA XREF: .text:00440BF3o
		unicode	0, <!%#.20Lg>,0
; wchar_t a_19lf
a_19lf:					; DATA XREF: .text:00440C4Co
		unicode	0, <!%#.19Lf>,0
; wchar_t a_19le
a_19le:					; DATA XREF: .text:00440C69o
		unicode	0, <!%#.19Le>,0
; wchar_t a04x04x04x04x
a04x04x04x04x:				; DATA XREF: .text:00440CC9o
		unicode	0, <!%04X !%04X !%04X !%04X>,0
; wchar_t asc_53159E
asc_53159E:				; DATA XREF: .text:0043C5A9o
		unicode	0, <!%>,0
aBxAl:					; DATA XREF: .text:0043CC02o
		unicode	0, <!%BX,!%AL>,0
aEbxAl_1:				; DATA XREF: .text:loc_43CC09o
		unicode	0, <!%EBX,!%AL>,0
aBxAl_0:				; DATA XREF: .text:0043CC19o
		unicode	0, <BX+AL>,0
aEbxAl:					; DATA XREF: .text:loc_43CC20o
		unicode	0, <EBX+AL>,0
aSt:					; DATA XREF: .text:0043CDC1o
		unicode	0, <!%ST>,0
aEfl:					; DATA XREF: .text:0043D16Eo
		unicode	0, <!%EFL>,0
aShort:					; DATA XREF: .text:0043D299o
		unicode	0, <SHORT >,0
aDest:					; DATA XREF: .text:0043D36Co
		unicode	0, <Dest>,0
; wchar_t a04x04x
a04x04x:				; DATA XREF: .text:0043D49Bo
		unicode	0, <$!%04X,$!%04X>,0
; wchar_t a04x08x
a04x08x:				; DATA XREF: .text:0043D4B6o
		unicode	0, <$!%04X,$!%08X>,0
; wchar_t a04x04x_0
a04x04x_0:				; DATA XREF: .text:0043D4EEo
		unicode	0, <!%04X:!%04X>,0
; wchar_t a04x08x_3
a04x08x_3:				; DATA XREF: .text:0043D50Ao
		unicode	0, <!%04X:!%08X>,0
; wchar_t a1
a1:					; DATA XREF: .text:0043D592o
		unicode	0, <$1>,0
; wchar_t a02x_4
a02x_4:					; DATA XREF: .text:0043D7E0o
		unicode	0, <!%02X>,0
aImm:					; DATA XREF: .text:0043D9DAo
		unicode	0, <Imm>,0
aFst:					; DATA XREF: .text:0043DB20o
		unicode	0, <!%FST>,0
aFcw:					; DATA XREF: .text:0043DBC4o
		unicode	0, <!%FCW>,0
aMxcsr:					; DATA XREF: .text:0043DC68o
		unicode	0, <!%MXCSR>,0
a08xDecimalI_:				; DATA XREF: .text:0043DD7Ao
		unicode	0, <!%08X \{decimal !%i.\}>,0
a08xDecimalU_:				; DATA XREF: .text:0043DDCBo
		unicode	0, <!%08X \{decimal !%u.\}>,0
; wchar_t a08x_7
a08x_7:					; DATA XREF: .text:0043DE74o
		unicode	0, <!%08X \{>,0
aJumpsTo:				; DATA XREF: .text:0043DF17o
		unicode	0, < - jumps to >,0
aTopOfStack_1:				; DATA XREF: .text:loc_43E05Ao
		unicode	0, <Top of stack = >,0
; wchar_t asc_53172E
asc_53172E:				; DATA XREF: .text:0043E178o
		unicode	0, <, >,0
; wchar_t a02x_1
a02x_1:					; DATA XREF: .text:0043E214o
		unicode	0, <=!%02X>,0
; wchar_t a04x
a04x:					; DATA XREF: .text:0043E3F5o
		unicode	0, <=!%04X>,0
; wchar_t a08x_08x
a08x_08x:				; DATA XREF: .text:0043E548o
		unicode	0, <=!%08X_!%08X>,0
; wchar_t a4i_
a4i_:					; DATA XREF: .text:0043E675o
		unicode	0, <!%4i.>,0
; wchar_t a3u_
a3u_:					; DATA XREF: .text:0043E6A2o
		unicode	0, <!%3u.>,0
; wchar_t a6i_
a6i_:					; DATA XREF: .text:0043E70Do
		unicode	0, <!%6i.>,0
; wchar_t a5u_
a5u_:					; DATA XREF: .text:0043E739o
		unicode	0, <!%5u.>,0
; wchar_t a11i_
a11i_:					; DATA XREF: .text:0043E7A2o
		unicode	0, <!%11i.>,0
; wchar_t a10u_
a10u_:					; DATA XREF: .text:0043E7CDo
		unicode	0, <!%10u.>,0
; wchar_t a08x08x
a08x08x:				; DATA XREF: .text:0043E812o
		unicode	0, <!%08X !%08X>,0
; wchar_t a08x08x08x08x
a08x08x08x08x:				; DATA XREF: .text:0043E846o
		unicode	0, <!%08X !%08X !%08X !%08X>,0
; wchar_t a04x04x_2
a04x04x_2:				; DATA XREF: .text:0043E8A2o
		unicode	0, <=!%04X:!%04X>,0
; wchar_t a04x08x_1
a04x08x_1:				; DATA XREF: .text:0043E8C3o
		unicode	0, <=!%04X:!%08X>,0
; wchar_t a02x_5
a02x_5:					; DATA XREF: .text:0043E97Co
		unicode	0, <=!%02X \{>,0
; wchar_t a04x_0
a04x_0:					; DATA XREF: .text:0043E9A9o
		unicode	0, <=!%04X \{>,0
; wchar_t a08x_9
a08x_9:					; DATA XREF: .text:0043E9CDo
		unicode	0, <=!%08X \{>,0
; wchar_t aSI
aSI:					; DATA XREF: .text:0043EA15o
		unicode	0, <!%s=!%i>,0
aPi:					; DATA XREF: .data:tfloato
		unicode	0, <PI>,0
aPi262:					; DATA XREF: .data:005303CEo
		unicode	0, <PI*2**62>,0
aSqrtPi:				; DATA XREF: .data:005303E0o
		unicode	0, <SQRT\{PI\}>,0
aLog2E:					; DATA XREF: .data:00530404o
		unicode	0, <LOG2\{E\}>,0
aLog10E:				; DATA XREF: .data:00530416o
		unicode	0, <LOG10\{E\}>,0
aLn2:					; DATA XREF: .data:00530428o
		unicode	0, <LN\{2\}>,0
aLn10_:					; DATA XREF: .data:0053043Ao
		unicode	0, <LN\{10.\}>,0
aSqrt2:					; DATA XREF: .data:0053044Co
		unicode	0, <SQRT\{2\}>,0
aSqrt3:					; DATA XREF: .data:0053045Eo
		unicode	0, <SQRT\{3\}>,0
aSqrt5:					; DATA XREF: .data:00530470o
		unicode	0, <SQRT\{5\}>,0
aSqrt10_:				; DATA XREF: .data:00530482o
		unicode	0, <SQRT\{10.\}>,0
a11Sqrt2:				; DATA XREF: .data:00530494o
		unicode	0, <1-1/SQRT\{2\}>,0
a213:					; DATA XREF: .data:005304A6o
		unicode	0, <2**1/3>,0
aGolden_ratio:				; DATA XREF: .data:005304B8o
		unicode	0, <GOLDEN_RATIO>,0
aGamma:					; DATA XREF: .data:005304CAo
		unicode	0, <GAMMA>,0
aMaxlong:				; DATA XREF: .data:005304DCo
		unicode	0, <MAXLONG>,0
aMaxdword:				; DATA XREF: .data:005304EEo
		unicode	0, <MAXDWORD>,0
aMillisec_in_da:			; DATA XREF: .data:00530500o
		unicode	0, <MILLISEC_IN_DAY>,0
aFeet_in_meter:				; DATA XREF: .data:00530512o
		unicode	0, <FEET_IN_METER>,0
aFeet_in_mile:				; DATA XREF: .data:00530524o
		unicode	0, <FEET_IN_MILE>,0
a10_:					; DATA XREF: .data:005305C6o
		unicode	0, <10.>,0
a11_:					; DATA XREF: .data:005305D8o
		unicode	0, <11.>,0
a12_:					; DATA XREF: .data:005305EAo
		unicode	0, <12.>,0
a13_:					; DATA XREF: .data:005305FCo
		unicode	0, <13.>,0
a14_:					; DATA XREF: .data:0053060Eo
		unicode	0, <14.>,0
a15_:					; DATA XREF: .data:00530620o
		unicode	0, <15.>,0
a16_:					; DATA XREF: .data:00530632o
		unicode	0, <16.>,0
a32_:					; DATA XREF: .data:00530644o
		unicode	0, <32.>,0
a64_:					; DATA XREF: .data:00530656o
		unicode	0, <64.>,0
a128_:					; DATA XREF: .data:00530668o
		unicode	0, <128.>,0
asc_531A08:				; DATA XREF: .text:00440DF0o
		unicode	0, <->,0
aConst:					; DATA XREF: .text:00440E3Fo
		unicode	0, <CONST >,0
; wchar_t aS2I
aS2I:					; DATA XREF: .text:00440E65o
		unicode	0, <!%s2**!%i>,0
; wchar_t aS12I
aS12I:					; DATA XREF: .text:00440ECBo
		unicode	0, <!%s1/2**!%i>,0
; wchar_t aS1IS
aS1IS:					; DATA XREF: .text:0044107Do
		unicode	0, <!%s1/!%i!%s>,0
; wchar_t aIS_2
aIS_2:					; DATA XREF: .text:00441398o
		unicode	0, <!%i!%s*>,0
; wchar_t aIS_0
aIS_0:					; DATA XREF: .text:004413CDo
		unicode	0, <!%i!%s/>,0
; wchar_t a1IS
a1IS:					; DATA XREF: .text:00441402o
		unicode	0, <1/\{!%i!%s*>,0
aInternalErr:			; DATA XREF: .text:loc_43EB56o
		unicode	0, <!?!?!? \{internal error\}>,0
aFloat:					; DATA XREF: .text:loc_43EBF7o
		unicode	0, <FLOAT >,0
; wchar_t aDump_4
aDump_4:				; DATA XREF: .text:00441FDBo
		unicode	0, <DUMP \->,0
; wchar_t asc_531AC0
asc_531AC0:				; DATA XREF: .text:004421A1o
		unicode	0, <\=>,0
; wchar_t asc_531AC4
asc_531AC4:				; DATA XREF: .text:004421D3o
		unicode	0, <,>,0
; wchar_t asc_531AC8
asc_531AC8:				; DATA XREF: .text:00442295o
		unicode	0, <\=\=>,0
aGuid:					; DATA XREF: .text:004428C4o
		unicode	0, <GUID >,0
aUnknownCommand:			; DATA XREF: .text:00443725o
		unicode	0, <Unknown command>,0
aLock_1:				; DATA XREF: .text:00445C28o
		unicode	0, <LOCK >,0
aRepne_1:				; DATA XREF: .text:00445C5Co
		unicode	0, <REPNE >,0
aRepe:					; DATA XREF: .text:00445CA0o
		unicode	0, <REPE >,0
aRep:					; DATA XREF: .text:00445CCAo
		unicode	0, <REP >,0
aBht:					; DATA XREF: .text:00445D45o
		unicode	0, <BHT >,0
aBhnt:					; DATA XREF: .text:00445D78o
		unicode	0, <BHNT >,0
aCommandCrosses:			; DATA XREF: .text:00446528o
		unicode	0, <Command crosses end of memory block>,0
aIllegalUseOfRe:			; DATA XREF: .text:0044655Do
		unicode	0, <Illegal use of register>,0
aMemoryAddressI:			; DATA XREF: .text:00446593o
		unicode	0, <Memory address is not allowed>,0
aLockPrefixIsNo:			; DATA XREF: .text:004465CAo
		unicode	0, <LOCK prefix is not allowed>,0
aInvalidSegme_1:			; DATA XREF: .text:004465FFo
		unicode	0, <Invalid segment register>,0
aTwoPrefixesFro:			; DATA XREF: .text:00446635o
		unicode	0, <Two prefixes from the same group>,0
aMoreThan4Prefi:			; DATA XREF: .text:0044666Co
		unicode	0, <More than 4 prefixes>,0
aInvalidCrRegis:			; DATA XREF: .text:004466A1o
		unicode	0, <Invalid CR register>,0
aInternalOllydb:			; DATA XREF: .text:004466D7o
		unicode	0, <Internal OllyDbg error>,0
aSuperfluousOpe:			; DATA XREF: .text:00446717o
		unicode	0, <Superfluous operand size prefix>,0
aSuperfluousAdd:			; DATA XREF: .text:00446755o
		unicode	0, <Superfluous address size prefix>,0
aSuperfluousSeg:			; DATA XREF: .text:00446794o
		unicode	0, <Superfluous segment override prefix>,0
aSuperfluousRep:			; DATA XREF: .text:004467D4o
		unicode	0, <Superfluous REPxx prefix>,0
aDefaultSegment:			; DATA XREF: .text:00446812o
		unicode	0, <Default segment register in prefix>,0
a16BitReturn:				; DATA XREF: .text:00446853o
		unicode	0, <16-bit return>,0
a16BitJumpOrCal:			; DATA XREF: .text:00446894o
		unicode	0, <16-bit jump or call>,0
aFarJumpOrCall:				; DATA XREF: .text:004468D3o
		unicode	0, <Far jump or call>,0
aModificationOf:			; DATA XREF: .text:00446913o
		unicode	0, <Modification of segment register>,0
aPrivilegedIn_0:			; DATA XREF: .text:00446951o
		unicode	0, <Privileged instruction>,0
aIOCommand:				; DATA XREF: .text:00446990o
		unicode	0, <I/O command>,0
aShiftOutOfRang:			; DATA XREF: .text:004469D0o
		unicode	0, <Shift out of range>,0
aCommandUsesVal:			; DATA XREF: .text:00446A0Eo
		unicode	0, <Command uses \{valid\} LOCK prefix>,0
aUnalignedStack:			; DATA XREF: .text:00446A4Do
		unicode	0, <Unaligned stack operation>,0
aSuspiciousUseO:			; DATA XREF: .text:00446A8Ao
		unicode	0, <Suspicious use of stack pointer>,0
aUndocumentedIn:			; DATA XREF: .text:00446ABCo
		unicode	0, <Undocumented instruction or encoding>,0
		db 0
		db    0
stru_532074	t_menu <offset off_5329C4, offset aUpdateListOfRu, 0CAh, \
   offset loc_449A84, 0, <0>>; 0 ;	\=Update	list of	running	processes\=
		t_menu <offset aATtach, offset aAttachToSelect, 66h, \
   offset loc_449AB0, 0, <0>>; 1
		t_menu <offset aAttach_1, offset defname, 0, 0, 0, <0>>; 2
		t_menu <offset asc_532A6E, offset defname, 0, 0, offset stru_518B94, <0>>; 3
; const	WCHAR defname
defname		dw 0			; DATA XREF: .text:00449B2Bo
aExecutableI_1:
		unicode	0, <Executable[!%i]>,0
aArgumentsI_2:
		unicode	0, <Arguments[!%i]>,0
aHistory_2:
		unicode	0, <History>,0
aCurrentDirI_2:
		unicode	0, <Current dir[!%i]>,0
aExecutable0_0:
		unicode	0, <Executable[0]>,0
aArguments0_2:
		unicode	0, <Arguments[0]>,0
aS_8:
		unicode	0, <!%s>,0
aCurrentDir0_2:
		unicode	0, <Current dir[0]>,0
; wchar_t aSAttachII
aSAttachII:				; DATA XREF: .text:00449DBEo
		unicode	0, <\=!%s\= -ATTACH !%i !%i>,0
aCommon:				; DATA XREF: .text:0044A3EEo
		unicode	0, <common>,0
a_lnk_0:
		unicode	0, <.LNK>,0
aUnableToExtr_1:
		unicode	0, <Unable to extract name of executable file from link \-!%s\->,0
a_pif_1:
		unicode	0, <.PIF>,0
aProgramInforma:
		unicode	0, <Program Information File \-!%s\- is a shortcut to MS-DOS program. >
		unicode 0, <OllyDbg is unable to debug 16-bit code.>,0
a_exe_3:
		unicode	0, <.exe>,0
aUnableToLoca_0:
		unicode	0, <Unable to locate file \-!%s\->,0
aRb_5:
		unicode	0, <rb>,0
aPe_0		db 'PE',0
		db    0
		db    0
		db    0
aUnableToOpen_0:
		unicode	0, <Unable to open or read file \-!%s\->,0
aFileSIsProbabl:
		unicode	0, <File \-!%s\- is probably not a 32-bit Portable Executable. >
		unicode 0, <Try to load it anyway!?>,0
aNotAValidPeFil:
		unicode	0, <Not a valid PE file>,0
aFileSProbablyWillNotRunUnd:
		unicode	0, <File \-!%s\- probably will not run under Win95-based OS due to the no>
		unicode	0, <n-standard section alignment. Try to load it anyway!?>,0
aSuspiciousPeFi:
		unicode	0, <Suspicious PE file>,0
aRequestToLoadD:
		unicode	0, <Request to load DLL>,0
aFileSIsADll_Wi:
		unicode	0, <File \-!%s\- is a DLL. Windows can\-t execute DLLs directly. >
		unicode 0, <Extract and launch LOADDLL.EXE!?>,0
aUnableToStart_:
		unicode	0, <Unable to start .NET file \-!%s\->,0
aSLoaddll_exeS:
		unicode	0, <\=!%s\\loaddll.exe\= !%s>,0
aSS_7:
		unicode	0, <\=!%s\= !%s>,0
aS_7:
		unicode	0, <\=!%s\=>,0
aUnableToStartF:
		unicode	0, <Unable to start file \-!%s\->,0
aConsoleApplica:
		unicode	0, <Console application \-!%s\->,0
a_netApplicatio:
		unicode	0, <.NET application \-!%s\->,0
aFileS_0:
		unicode	0, <File \-!%s\->,0
aArguments_1:
		unicode	0, <  Arguments: >,0
aCurrentDirecto:
		unicode	0, <  Current directory: >,0
; wchar_t aSS_3
aSS_3:					; DATA XREF: .text:0044B391o
		unicode	0, <!%s - !%s>,0
aUnableToLoca_1:			; DATA XREF: .text:0044B191o
		unicode	0, <Unable to locate process with identifier !%08X \{!%u.\}. Prob>
		unicode	0, <ably this process has already terminated, or is not visib>
		unicode	0, <le to OllyDbg.>,0
; wchar_t aErrcode_0
aErrcode_0:				; DATA XREF: .text:0044B20Bo
		unicode	0, <ERRCODE>,0
aUnknownMeaning:			; DATA XREF: .text:0044B21Co
		unicode	0, <unknown meaning>,0
aUnableToAttach:			; DATA XREF: .text:0044B24Do
		unicode	0, <Unable to attach to process \-!%s\- with ID !%08X \{!%i.\}. Reason: !%08X \{!%s\}>,0
aAttachedToS:				; DATA XREF: .text:0044B34Do
		unicode	0, <Attached to \-!%s\->,0
off_5329C4	dd offset aSetUncondition+5Eh ;	DATA XREF: .data:stru_532074o
					; \=d\=
aPdate:
		unicode	0, <pdate>,0
aUpdateListOfRu:			; DATA XREF: .data:stru_532074o
		unicode	0, <Update list of running processes>,0
aATtach:				; DATA XREF: .data:stru_532074o
		unicode	0, <A\Attach>,0
aAttachToSelect:			; DATA XREF: .data:stru_532074o
		unicode	0, <Attach to selected process>,0
aAttach_1:				; DATA XREF: .data:stru_532074o
		unicode	0, <|*ATTACH>,0
asc_532A6E:				; DATA XREF: .data:stru_532074o
		unicode	0, <|>,0
; wchar_t a08xU__0
a08xU__0:				; DATA XREF: .text:0044B474o
		unicode	0, <!%08X \{!%u.\}>,0
; wchar_t aOllydbg_0
aOllydbg_0:				; DATA XREF: .text:0044B4D4o
	
		unicode	0, <\[OllyDbg\]>
aDebuggee:				; DATA XREF: .text:0044B4F2o
	
		unicode	0, <\[Debuggee\]>
aSearch_4:				; DATA XREF: .text:loc_44B784o
		unicode	0, <Search - >,0
asc_532AC6	db ' ',0                ; DATA XREF: .text:0044B7CCo
aNoMatch_0:
		unicode	0, <- No match>,0
aSelectProcessT:			; DATA XREF: .text:loc_44B8A9o
		unicode	0, <Select process to attach>,0
; wchar_t aAttach
aAttach:				; DATA XREF: .text:0044B8BBo
		unicode	0, <Attach>,0
aCancel_2:				; DATA XREF: .text:0044B8CFo
		unicode	0, <Cancel>,0
aToFindProcessS:			; DATA XREF: .text:0044B94Eo
		unicode	0, <To find process, start typing its name>,0
aYouCanTDebugTh:			; DATA XREF: .text:0044BB95o
		unicode	0, <You can\-t debug the instance of the OllyDbg you are currently using.>,0
aTheProcessSIsO:			; DATA XREF: .text:0044BBB6o
		unicode	0, <The process \-!%s\- is one you are currently debugging. >
		unicode 0, <You are already attached to it.>,0
aPidDecimal:				; DATA XREF: .text:0044BC7Fo
		unicode	0, <PID$     \{Decimal\}>,0
aProcessIdentif:			; DATA XREF: .text:0044BC89o
		unicode	0, <Process identifier \{hex and decimal forms\}>,0
aName_1:				; DATA XREF: .text:0044BCA7o
		unicode	0, <Name>,0
aProcessName:				; DATA XREF: .text:0044BCB1o
		unicode	0, <Process name>,0
aWindow:				; DATA XREF: .text:0044BCCFo
		unicode	0, <Window>,0
aTitleOfSomeTop:			; DATA XREF: .text:0044BCD9o
		unicode	0, <Title of some top-level window belonging to process>,0
aPath_1:				; DATA XREF: .text:0044BCF7o
		unicode	0, <Path>,0
aNameOfExecutab:			; DATA XREF: .text:0044BD01o
		unicode	0, <Name of executable file>,0
; const	WCHAR aDia_attach
aDia_attach:				; DATA XREF: .text:0044BD7Bo
		unicode	0, <DIA_ATTACH>,0
; DWORD	dwMilliseconds
dwMilliseconds	dd 0,20,50,100,200,500,1000; 0 ; DATA XREF: .text:004561CEr
; wchar_t aErrcode_1
aErrcode_1:				; DATA XREF: .text:0044F544o
		unicode	0, <ERRCODE>,0
aModifiedDebugR:			; DATA XREF: .text:0044C363o
		unicode	0, <Modified debug registers of >,0
aDrIOld08xNew08:			; DATA XREF: .text:0044C405o
		unicode	0, <  DR!%i: old !%08X, new !%08X>,0
aImmediateStrin:			; DATA XREF: .text:loc_44CBA0o
		unicode	0, <Immediate string is not a valid condition>,0
aInvalidExpress:			; DATA XREF: .text:0044CBC7o
		unicode	0, <Invalid expression in conditional breakpoint: \-!%s\->,0
; wchar_t aS_9
aS_9:					; DATA XREF: .text:0044CBE8o
		unicode	0, <  !%s>,0
aInt3:					; DATA XREF: .text:0044CC88o
		unicode	0, <INT3:>,0
aMem:					; DATA XREF: .text:0044CC9Co
		unicode	0, <MEM: >,0
aHard:					; DATA XREF: .text:0044CCB0o
		unicode	0, <HARD:>,0
aCond:					; DATA XREF: .text:loc_44CCBFo
		unicode	0, <COND:>,0
; wchar_t aSS_0
aSS_0:					; DATA XREF: .text:0044CD04o
		unicode	0, <!%s !%s>,0
asc_532FB0:				; DATA XREF: .text:0044CD3Do
		unicode	0, <	 >,0
; wchar_t asc_532FBC
asc_532FBC:				; DATA XREF: .text:0044CDA8o
		unicode	0, < = >,0
; wchar_t aSSS
aSSS:					; DATA XREF: .text:0044CDE0o
		unicode	0, <!%s !%s!%s>,0
aStructure:				; DATA XREF: .text:0044CE0Ao
		unicode	0, <Structure >,0
aSSSAtAddress08:			; DATA XREF: .text:0044CE40o
		unicode	0, <!%s !%s!%s at address !%08X:>,0
aNullPointer:				; DATA XREF: .text:0044CE63o
		unicode	0, <	    NULL pointer>,0
aUnknownStructu:			; DATA XREF: .text:0044CE95o
		unicode	0, <	    Unknown structure>,0
aUnableToDecode:			; DATA XREF: .text:0044CEDAo
		unicode	0, <	    Unable to decode>,0
; wchar_t aSS_1
aSS_1:					; DATA XREF: .text:0044CF2Eo
		unicode	0, <	    !%s = !%s>,0
a08xConversionA:			; DATA XREF: .text:0044CF85o
		unicode	0, <!%08X \{conversion according to type is not possible\}>,0
aUnableToProtoc:			; DATA XREF: .text:0044D219o
		unicode	0, <Unable to protocol function arguments>,0
; wchar_t a_intern__
a_intern__:				; DATA XREF: .text:0044D23Ao
		unicode	0, <_INTERN_.>,0
aCallToS:				; DATA XREF: .text:0044D27Ao
		unicode	0, <Call to !%s>,0
aFrom_0:				; DATA XREF: .text:0044D2D7o
		unicode	0, < from >,0
; wchar_t aS_18
aS_18:					; DATA XREF: .text:0044D369o
		unicode	0, <  ; !%s>,0
; wchar_t a08xS
a08xS:					; DATA XREF: .text:0044D3ADo
		unicode	0, <  !%08X  !%s>,0
; wchar_t a08xSS
a08xSS:					; DATA XREF: .text:0044D3F6o
		unicode	0, <  !%08X  !%s = !%s>,0
aReturnFromS:				; DATA XREF: .text:0044D493o
		unicode	0, <Return from !%s>,0
aReturnFromCa_0:			; DATA XREF: .text:loc_44D4ACo
		unicode	0, <Return from call>,0
; wchar_t a08xEaxS
a08xEaxS:				; DATA XREF: .text:0044D50Fo
		unicode	0, <  !%08X  EAX = !%s>,0
aUnableToCloseP:			; DATA XREF: .text:0044FD53o
		unicode	0, <Unable to close process>,0
aTheStateOfTheD:			; DATA XREF: .text:loc_44FD47o
		unicode	0, <The state of the debugged process does not allow to close>
		unicode	0, < it right now. Please repeat this operation later. If thi>
		unicode	0, <s message comes again, the only solution is to restart Ol>
		unicode	0, <lyDbg.>,0
aProcessIsSti_0:			; DATA XREF: .text:0044FD8Bo
		unicode	0, <Process is still running>,0
aTheDebuggedPro:			; DATA XREF: .text:0044FD7Fo
		unicode	0, <The debugged process is still active. Would you like to c>
		unicode	0, <lose it now!? Note that forced termination may lead to the>
		unicode	0, < loss of data.>,0
aUnableToPauseP:			; DATA XREF: .text:0044FE9Fo
		unicode	0, <Unable to pause process>,0
aOllydbgIsUna_8:			; DATA XREF: .text:0044FE93o
		unicode	0, <OllyDbg is unable to pause debugged process. Graceful ter>
		unicode	0, <mination is therefore not possible and OllyDbg will call >
		unicode	0, <TerminateProcess\{\}, which may lead to the loss of data in>
		unicode	0, < the files opened by the application.>,0
; wchar_t aKernel32_exitp
aKernel32_exitp:			; DATA XREF: .text:0044FEDFo
		unicode	0, <KERNEL32.ExitProcess>,0
aUnableToCloseG:			; DATA XREF: .text:0044FFB7o
		unicode	0, <Unable to close gracefully>,0
aOllydbgIsUna_0:			; DATA XREF: .text:0044FFABo
		unicode	0, <OllyDbg is unable to close debugged process gracefully an>
		unicode	0, <d will use TerminateProcess\{\}, which may lead to the loss>
		unicode	0, < of data in the files opened by the application.>,0
aUnableToCloseD:			; DATA XREF: .text:004500ADo
		unicode	0, <Unable to close debugged process>,0
aOllydbgWasUnab:			; DATA XREF: .text:004500A1o
		unicode	0, <OllyDbg was unable to close debugged process. Probably th>
		unicode	0, <e only solution is to restart OllyDbg.>,0
aProcessClosed:				; DATA XREF: .text:004500E5o
		unicode	0, <Process closed>,0
aUnableToDetach:			; DATA XREF: .text:00450196o
		unicode	0, <Unable to detach debugged process>,0
aTheStateOfTh_0:			; DATA XREF: .text:loc_45018Ao
		unicode	0, <The state of the debugged process does not allow to detac>
		unicode	0, <h it right now. Please repeat this operation later.>,0
aOllydbgIsUna_1:			; DATA XREF: .text:00450221o
		unicode	0, <OllyDbg is unable to remove some breakpoints. If debugged>
		unicode	0, < process encounters such breakpoint, most probably it wil>
		unicode	0, <l crash. Do you still want to detach!?>,0
aUnableToRemove:			; DATA XREF: .text:00450215o
		unicode	0, <Unable to remove breakpoints>,0
aOllydbgIsUna_9:			; DATA XREF: .text:00450344o
		unicode	0, <OllyDbg is unable to detach debugged application. Probabl>
		unicode	0, <y the only solution is to kill it. If you decide to conti>
		unicode	0, <nue, please note that breakpoints are disabled or removed>
		unicode	0, <, and all threads are resumed.>,0
aProcessDetache:			; DATA XREF: .text:0045036Bo
		unicode	0, <Process detached>,0
aAllThreadsAreS:			; DATA XREF: .text:00450475o
		unicode	0, <All threads are suspended>,0
aAllThreadsInTh:			; DATA XREF: .text:00450469o
		unicode	0, <All threads in the debugged application are suspended. Ap>
		unicode	0, <plication is stopped. To continue, please resume some thr>
		unicode	0, <eads in the Threads window.>,0
aTheThreadYouAr:			; DATA XREF: .text:00450497o
		unicode	0, <The thread you are going to run \{ID !%08X\} is suspended. P>
		unicode	0, <lease resume it in the Threads window.>,0
aTheThreadYou_0:			; DATA XREF: .text:004504C3o
		unicode	0, <The thread you are going to run \{ordinal !%i, ID !%08X\} is >
		unicode	0, <suspended. Please resume it in the Threads window.>,0
aTheThreadWithI:			; DATA XREF: .text:00450677o
		unicode	0, <The thread with ID !%08X is no longer valid. Please choose>
		unicode	0, < another thread.>,0
aOllydbgIsUna_2:			; DATA XREF: .text:0045088Fo
		unicode	0, <OllyDbg is unable to step over the command at \{possibly i>
		unicode	0, <nvalid\} address !%08X. Memory is not readable.>,0
aTheContextStru:			; DATA XREF: .text:004509C4o
		unicode	0, <The CONTEXT structure passed to ZwContinue\{\}/NtContinue\{\}>
		unicode	0, < contains EIP pointing to the non-existing memory. Most p>
		unicode	0, <robably the program will crash. Either correct EIP \{doubl>
		unicode	0, <eword at address !%08X\}, or try to run instead of stepping>
		unicode	0, <.>,0
aTemporarilyRem:			; DATA XREF: .text:0044E9F0o
		unicode	0, <Temporarily removed INT3 already pending>,0
aOllydbgIsUna_3:			; DATA XREF: .text:00450F62o
		unicode	0, <OllyDbg is unable to step over the command at \{possibly i>
		unicode	0, <nvalid\} address !%08X. Unable to set temporary breakpoint >
		unicode	0, <on the !%s.>,0
aDestination:				; DATA XREF: .text:00450F45o
		unicode	0, <destination>,0
aNextCommand:				; DATA XREF: .text:loc_450F52o
		unicode	0, <next command>,0
aOllydbgIsUnabl:			; DATA XREF: .text:0044EA9Co
		unicode	0, <OllyDbg is unable to set temporary breakpoint on KiUserEx>
		unicode	0, <ceptionDispatcher\{\} at address !%08X. Context passed to th>
		unicode	0, <e custom exception handler will contain flag T set by Oll>
		unicode	0, <yDbg.>,0
aOllydbgIsUn_10:			; DATA XREF: .text:0044EAEFo
		unicode	0, <OllyDbg is unable to set temporary breakpoint on NtQueryI>
		unicode	0, <nformationProcess\{\} at address !%08X. Exception will not b>
		unicode	0, <e passed to the unhandled exception filter.>,0
aSPassedToAppli:			; DATA XREF: .text:0044DED1o
		unicode	0, <!%s - passed to application>,0
aSApplicationWa:			; DATA XREF: .text:0044DF1Fo
		unicode	0, <!%s - application was unable to process exception>,0
aSExceptionIsNo:			; DATA XREF: .text:0044DF40o
		unicode	0, <!%s - exception is non-continuable>,0
aSShiftRunStepT:			; DATA XREF: .text:0044DF58o
		unicode	0, <!%s - Shift+Run/Step to pass exception to the program>,0
aEipIsInTheRang:			; DATA XREF: .text:0044DF9Fo
		unicode	0, <EIP is in the range>,0
aEipIsOutsideTh:			; DATA XREF: .text:loc_44DFE5o
		unicode	0, <EIP is outside the range>,0
aPossibleEntryP:			; DATA XREF: .text:loc_44E0A9o
		unicode	0, <possible entry point of packed file>,0
aEipPointsToM_0:			; DATA XREF: .text:loc_44E1EAo
		unicode	0, <EIP points to modified command>,0
aCommandCountRe:			; DATA XREF: .text:0044E228o
		unicode	0, <command count reached>,0
aInvalidCommand:			; DATA XREF: .text:0044E28Bo
		unicode	0, <invalid command>,0
aMemoryRangeIUn:			; DATA XREF: .text:0044E2F9o
		unicode	0, <memory range !%i - unable to calculate address>,0
aMemoryRangeIAc:			; DATA XREF: .text:0044E335o
		unicode	0, <memory range !%i accessed>,0
aInvalidConditi:			; DATA XREF: .text:0044E3D8o
		unicode	0, <invalid condition !%i - !%s>,0
aConditionIIsOf:			; DATA XREF: .text:0044E472o
		unicode	0, <condition !%i is of non-integer type>,0
aConditionIMet:				; DATA XREF: .text:0044E4A1o
		unicode	0, <condition !%i met - >,0
aInvalidComma_3:			; DATA XREF: .text:0044E566o
		unicode	0, <invalid command !%i - >,0
aCommandIMatche:			; DATA XREF: .text:0044E620o
		unicode	0, <command !%i matched - >,0
aOllydbgIsUna_5:			; DATA XREF: .text:0044EA4Ao
		unicode	0, <OllyDbg is unable to step over the command at \{possibly i>
		unicode	0, <nvalid\} address !%08X. Unable to set temporary breakpoint >
		unicode	0, <on the next command.>,0
aWinmainOfMainM:			; DATA XREF: .text:0044EE5Bo
		unicode	0, <WinMain\{\} of main module>,0
aFirstTlsCallba:			; DATA XREF: .text:0044EE8Co
		unicode	0, <First TLS callback of main module>,0
aEntryPointOfSe:			; DATA XREF: .text:0044EED5o
		unicode	0, <Entry point of self-extractor>,0
aEntryPointOf_0:			; DATA XREF: .text:0044EF0Fo
		unicode	0, <Entry point of LOADDLL.EXE>,0
aDllLoaded:				; DATA XREF: .text:0044EF4Do
		unicode	0, <DLL loaded>,0
aEntryPointOf_1:			; DATA XREF: .text:0044EFD6o
		unicode	0, <Entry point of main module>,0
aSearchingForTh:			; DATA XREF: .text:0044F106o
		unicode	0, <Searching for the SFX entry point of module \-!%s\->,0
aEntryPointOfMo:			; DATA XREF: .text:0044F15Bo
		unicode	0, <Entry point of module \-!%s\->,0
aEntryPointOfDl:			; DATA XREF: .text:0044F18Do
		unicode	0, <Entry point of DLL>,0
aKnownEntryPoin:			; DATA XREF: .text:0044F278o
		unicode	0, <Known entry point of packed file>,0
a_netStartupEnt:			; DATA XREF: .text:0044F332o
		unicode	0, <.NET startup entry point>,0
aEntryPointOfTh:			; DATA XREF: .text:0044F35Do
		unicode	0, <Entry point of thread !%08X>,0
a_netEntryPoint:			; DATA XREF: .text:0044F387o
		unicode	0, <.NET entry point>,0
aExecutedToSele:			; DATA XREF: .text:loc_44F39Eo
		unicode	0, <Executed to selection>,0
aIEventsPerSeco:			; DATA XREF: .text:00451367o
		unicode	0, <!%i events per second>,0
aChildProcessWi:			; DATA XREF: .text:0045159Ao
		unicode	0, <Child process with ID !%08lX starts>,0
aUnexpectedDebu:			; DATA XREF: .text:00451717o
		unicode	0, <Unexpected debug event !%i from child process !%08lX. Proce>
		unicode	0, <ss will be detached.>,0
aEvent08lxFromD:			; DATA XREF: .text:00451780o
		unicode	0, <Event !%08lX from different process \{ID !%08lX\}>,0
aOllydbgReceive:			; DATA XREF: .text:004517CEo
		unicode	0, <OllyDbg received debug event, but there is no application>
		unicode	0, < to debug. This is a severe internal error, please restar>
		unicode	0, <t OllyDbg.>,0
aUnrecoverableE:			; DATA XREF: .text:004518E7o
		unicode	0, <Unrecoverable exception !%08X \{no thread\}>,0
aThread08xThatR:			; DATA XREF: .text:0045192Bo
		unicode	0, <Thread !%08X that reported exception !%08X at address !%08X >
		unicode	0, <is not known to OllyDbg. Usually this makes correct conti>
		unicode	0, <nuation impossible. However, you may try to recover and c>
		unicode	0, <ontinue at your own risk.>,0
aUnrecoverabl_1:			; DATA XREF: .text:00451990o
		unicode	0, <Unrecoverable exception !%08X \{no registers\}>,0
aOllydbgIsUna_6:			; DATA XREF: .text:004519D4o
		unicode	0, <OllyDbg is unable to read registers for exception !%08X at>
		unicode	0, < \{possibly invalid\} address !%08X in thread !%08X. Usually >
		unicode	0, <this makes correct continuation impossible, but you may t>
		unicode	0, <ry to recover and continue at your own risk.>,0
aDebugRegisters:			; DATA XREF: .text:00451A3Co
		unicode	0, <Debug registers modified>,0
aDebuggedApplic:			; DATA XREF: .text:00451A30o
		unicode	0, <Debugged application has modified the debugging registers>
		unicode	0, <. !%sThe modifications are saved to the log.>,0
aMaybeItCalledZ:			; DATA XREF: .text:00451A1Do
		unicode	0, <Maybe it called ZwContinue\{\} or SetDebugContext\{\}. >,0
aDifferentThrea:			; DATA XREF: .text:00451B91o
		unicode	0, <Different thread>,0
aWhileRunningSi:			; DATA XREF: .text:00451B85o
		unicode	0, <While running single thread of debugged application with >
		unicode	0, <ID !%08X, OllyDbg received exception from the different th>
		unicode	0, <read with ID !%08X. Either this thread is new, or applicat>
		unicode	0, <ion has resumed thread paused by OllyDbg. Application is >
		unicode	0, <paused.>,0
; wchar_t aKuser_shared_d
aKuser_shared_d:			; DATA XREF: .text:00452060o
		unicode	0, <KUSER_SHARED_DATA>,0
; wchar_t itemname
itemname:				; DATA XREF: .text:0045205Bo
		unicode	0, <NtMajorVersion>,0
; wchar_t aNtminorversion
aNtminorversion:			; DATA XREF: .text:00452082o
		unicode	0, <NtMinorVersion>,0
aOllydbgIsUna_4:			; DATA XREF: .text:00452101o
		unicode	0, <OllyDbg is unable to establish connection with LOADDLL.EX>
		unicode	0, <E. DLL debugging is not possible. Try to delete LOADDLL.E>
		unicode	0, <XE in order to allow OllyDbg to extract valid copy of DLL>
		unicode	0, < loader.>,0
aUnableToSetSta:			; DATA XREF: .text:00452376o
		unicode	0, <Unable to set startup breakpoint at address !%08X. Debugge>
		unicode	0, <d application will be paused on system breakpoint.>,0
aSystemBreakpoi:			; DATA XREF: .text:00452449o
		unicode	0, <System breakpoint>,0
aReturnFromCall:			; DATA XREF: .text:00452474o
		unicode	0, <Return from call to DLL export>,0
aInt2dCommandAt:			; DATA XREF: .text:004524B4o
		unicode	0, <INT 2D command at >,0
aCallToDebugbre:			; DATA XREF: .text:00452530o
		unicode	0, <Call to DebugBreak\{\}>,0
aCallToDbgbreak:			; DATA XREF: .text:0045255Do
		unicode	0, <Call to DbgBreakPoint\{\}>,0
aInt3CommandAt:				; DATA XREF: .text:loc_45257Fo
		unicode	0, <INT3 command at >,0
aInt3In_netAppl:			; DATA XREF: .text:00452609o
		unicode	0, <INT3 in .NET application stepped over on closing>,0
; wchar_t aMscorwks
aMscorwks:				; DATA XREF: .text:00452697o
		unicode	0, <MSCORWKS>,0
aInt3InMscorwks:			; DATA XREF: .text:004526C8o
		unicode	0, <INT3 in MSCORWKS stepped over on request>,0
aHitTraceMayPas:			; DATA XREF: .text:00452947o
		unicode	0, <Hit trace may pass control to the non-command>,0
aHitTraceMayLea:			; DATA XREF: .text:loc_452988o
		unicode	0, <Hit trace may leave code section>,0
aBreakpointAt:				; DATA XREF: .text:00452B74o
		unicode	0, <Breakpoint at >,0
aConditionalBre:			; DATA XREF: .text:loc_452B99o
		unicode	0, <Conditional breakpoint at >,0
aCountReached:				; DATA XREF: .text:00452BF1o
		unicode	0, < \{count reached\}>,0
; wchar_t asc_535F44
asc_535F44:				; DATA XREF: .text:00452FEBo
		unicode	0, <+ >,0
aHardwareBrea_1:			; DATA XREF: .text:00453022o
		unicode	0, <Hardware breakpoint !%i >,0
aConditionalHar:			; DATA XREF: .text:0045304Eo
		unicode	0, <Conditional hardware breakpoint !%i >,0
aEipPointsToNex:			; DATA XREF: .text:00453107o
		unicode	0, < - EIP points to next instruction>,0
aBreakOnHardw_1:			; DATA XREF: .text:0045319Do
		unicode	0, <Break on hardware breakpoints >,0
aBreakOnHardwar:			; DATA XREF: .text:loc_4531C2o
		unicode	0, <Break on hardware breakpoint >,0
; wchar_t aI_3
aI_3:					; DATA XREF: .text:004531F9o
		unicode	0, <!%i, >,0
aSetByApplicati:			; DATA XREF: .text:00453221o
		unicode	0, < set by application>,0
aBreakOnSingleS:			; DATA XREF: .text:004538FDo
		unicode	0, <Break on single-step trap or INT1 set by application>,0
aMemoryBreakpoi:			; DATA XREF: .text:00453CA1o
		unicode	0, <Memory breakpoint >,0
aConditionalMem:			; DATA XREF: .text:loc_453CD1o
		unicode	0, <Conditional memory breakpoint >,0
aWhenExecuting:				; DATA XREF: .text:00453D93o
		unicode	0, <when executing >,0
aWhenReading:				; DATA XREF: .text:00453DD3o
		unicode	0, <when reading >,0
aWhenWritingTo:				; DATA XREF: .text:00453E10o
		unicode	0, <when writing to >,0
aWhenAccessing:				; DATA XREF: .text:loc_453E3Co
		unicode	0, <when accessing >,0
; wchar_t a08x_11
a08x_11:				; DATA XREF: .text:00453E6Ao
		unicode	0, <!%08X >,0
aAccessViolat_2:			; DATA XREF: .text:0045402Do
		unicode	0, <Access violation when !%s [!%08lX] caused by plugin>,0
aWritingTo:				; DATA XREF: .text:00453FF4o
		unicode	0, <writing to>,0
aExecuting:				; DATA XREF: .text:00454014o
		unicode	0, <executing>,0
aReading:				; DATA XREF: .text:loc_454021o
		unicode	0, <reading>,0
aAccessViolatio:			; DATA XREF: .text:loc_45404Ao
		unicode	0, <Access violation caused by plugin>,0
; wchar_t aKernel32
aKernel32:				; DATA XREF: .text:004540DCo
		unicode	0, <KERNEL32>,0
aAccessViolat_1:			; DATA XREF: .text:00454122o
		unicode	0, <Access violation in KERNEL32 ignored on request>,0
aAccessViolat_4:			; DATA XREF: .text:004541A0o
		unicode	0, <Access violation when !%s [!%08lX]>,0
aAccessViolat_3:			; DATA XREF: .text:loc_4541BDo
		unicode	0, <Access violation>,0
aBreakOnAccessW:			; DATA XREF: .text:00454302o
		unicode	0, <Break-on-access while !%s !%08X>,0
aAccessing:				; DATA XREF: .text:004542BBo
		unicode	0, <accessing>,0
aBreakOnAccessS:			; DATA XREF: .text:004544AAo
		unicode	0, <Break-on-access set by plugin while !%s !%08X>,0
aBreakOnGuarded:			; DATA XREF: .text:0045454Eo
		unicode	0, <Break on guarded memory page set by application while !%s >
		unicode	0, <!%08X>,0
aPrivilegedInst:			; DATA XREF: .text:00454B87o
		unicode	0, <Privileged instruction>,0
; wchar_t aRaisedByPlugin
aRaisedByPlugin:			; DATA XREF: .text:00454BD1o
		unicode	0, < raised by plugin>,0
aIntegerDivisio:			; DATA XREF: .text:00454CE6o
		unicode	0, <Integer division by zero>,0
aIllegalInstruc:			; DATA XREF: .text:00454DB2o
		unicode	0, <Illegal instruction>,0
aStackOverflo_1:			; DATA XREF: .text:00454F11o
		unicode	0, <Stack overflow>,0
aNoncontinuable:			; DATA XREF: .text:00454FCBo
		unicode	0, <Noncontinuable exception>,0
aDenormalizedFl:			; DATA XREF: .text:00455023o
		unicode	0, <Denormalized floating-point operand>,0
aFloatingPointD:			; DATA XREF: .text:00455059o
		unicode	0, <Floating-point division by zero>,0
aInexactFloatin:			; DATA XREF: .text:0045508Fo
		unicode	0, <Inexact floating-point result>,0
aInvalidFloatin:			; DATA XREF: .text:004550C5o
		unicode	0, <Invalid floating-point operation>,0
aFloatingPointO:			; DATA XREF: .text:004550FBo
		unicode	0, <Floating-point overflow>,0
aFpuStackError:				; DATA XREF: .text:0045512Eo
		unicode	0, <FPU stack error>,0
aFloatingPointU:			; DATA XREF: .text:loc_455153o
		unicode	0, <Floating-point underflow>,0
aFromEip08x:				; DATA XREF: .text:0045518Eo
		unicode	0, < from EIP=!%08X>,0
aVcServiceExcep:			; DATA XREF: .text:004552FDo
		unicode	0, <VC service exception>,0
aThread08xIsNam:			; DATA XREF: .text:004553CBo
		unicode	0, <: Thread !%08X is named \-!%s\->,0
aMsCException:				; DATA XREF: .text:00455490o
		unicode	0, <MS C++ exception>,0
aModuleSClassSO:			; DATA XREF: .text:004555E7o
		unicode	0, <, module !%s class \-!%s\- object !%08X>,0
aException08x:				; DATA XREF: .text:004556D6o
		unicode	0, <Exception !%08X>,0
; wchar_t aException_2
aException_2:				; DATA XREF: .text:00455704o
		unicode	0, <EXCEPTION>,0
; wchar_t aS_31
aS_31:					; DATA XREF: .text:0045571Co
		unicode	0, < \{!%s\}>,0
aReturnReachedA:			; DATA XREF: .text:004558C6o
		unicode	0, <Return reached and executed>,0
aUserCodeReache:			; DATA XREF: .text:00455910o
		unicode	0, <User code reached>,0
aSfxTraceS:				; DATA XREF: .text:004559A9o
		unicode	0, <SFX trace: !%s>,0
aRunTraceS:				; DATA XREF: .text:004559CAo
		unicode	0, <Run trace: !%s>,0
aReturnReached:				; DATA XREF: .text:loc_455D73o
		unicode	0, <Return reached>,0
; wchar_t aDbguiremotebre
aDbguiremotebre:			; DATA XREF: .text:0045629Fo
		unicode	0, <DbgUiRemoteBreakin>,0
aNewThreadI_Id0:			; DATA XREF: .text:00456390o
		unicode	0, <New thread !%i. \{ID !%08X\} created>,0
aNewThread08xUn:			; DATA XREF: .text:00456409o
		unicode	0, <New thread !%08X: unable to set breakpoint on entry point >
		unicode	0, <!%08X>,0
aNewProcessId08:			; DATA XREF: .text:00456553o
		unicode	0, <New process \{ID !%08X\} created>,0
aMainThreadId08:			; DATA XREF: .text:004565A8o
		unicode	0, <Main thread \{ID !%08X\} created>,0
aMainThreadIsRe:			; DATA XREF: .text:00456653o
		unicode	0, <  Main thread is resumed from suspended state>,0
aThreadId08xTer:			; DATA XREF: .text:004568CCo
		unicode	0, <Thread \{ID !%08X\} terminated, exit code !%X>,0
aThreadI_Id08xT:			; DATA XREF: .text:004568F8o
		unicode	0, <Thread !%i. \{ID !%08X\} terminated, exit code !%X>,0
; wchar_t aHresult
aHresult:				; DATA XREF: .text:00456954o
		unicode	0, <HRESULT>,0
; wchar_t aLi__4
aLi__4:					; DATA XREF: .text:004569A5o
		unicode	0, < \{!%li.\}>,0
aLoaddllTermi_4:			; DATA XREF: .text:loc_456B5Do
		unicode	0, <LOADDLL terminated: Missing DLL name>,0
aLoaddllTermina:			; DATA XREF: .text:loc_456B78o
		unicode	0, <LOADDLL terminated: Unable to load DLL>,0
aLoadlibraryRep:			; DATA XREF: .text:00456BC8o
		unicode	0, <  LoadLibrary\{\} reports error !%08X \{!%s\}>,0
aLoadlibraryR_1:			; DATA XREF: .text:00456BECo
		unicode	0, <  LoadLibrary\{\} reports error !%08X>,0
aLoaddllTermi_0:			; DATA XREF: .text:loc_456C09o
		unicode	0, <LOADDLL terminated: Too many parameters>,0
aLoaddllTermi_3:			; DATA XREF: .text:00456C2Bo
		unicode	0, <LOADDLL terminated: Error !%08X>,0
aLoaddllTermi_5:			; DATA XREF: .text:00456C56o
		unicode	0, <LOADDLL terminated, exit code !%X>,0
aLoaddllTermi_2:			; DATA XREF: .text:00456C79o
		unicode	0, <LOADDLL terminated, exit code !%X \{!%li.\}>,0
aProcessTermi_0:			; DATA XREF: .text:00456C98o
		unicode	0, <Process terminated, exit code !%X>,0
aUnloadS:				; DATA XREF: .text:004570FDo
		unicode	0, <Unload !%s>,0
aModuleSFailedT:			; DATA XREF: .text:004571C0o
		unicode	0, <Module !%s - failed to initialize>,0
aNameUnknown:				; DATA XREF: .text:004571A9o
		unicode	0, <\{name unknown\}>,0
aUnloadHiddenMo:			; DATA XREF: .text:00457230o
		unicode	0, <Unload hidden module !%08X>,0
aDebugStringInv:			; DATA XREF: .text:004573C3o
		unicode	0, <Debug string \{invalid length\}>,0
aDebugStringUna:			; DATA XREF: .text:0045740Eo
		unicode	0, <Debug string \{unable to get text\}>,0
aDebugString:				; DATA XREF: .text:00457474o
		unicode	0, <Debug string>,0
aSystemDebuggin:			; DATA XREF: .text:00457889o
		unicode	0, <System debugging error \{RIP event\} !%08lX \{type !%li.\}>,0
aUnknownDebuggi:			; DATA XREF: .text:004578A5o
		unicode	0, <Unknown debugging event !%08lX>,0
		dw 0
dword_537044	dd 0			; DATA XREF: .text:00458DFEw
stru_537048	t_menu <offset aNoAccess, offset aDisableAccessT, 0, \
   offset loc_45841C, 0, <1>>; 0 ;	\=\ANo access\=
		t_menu <offset aReadOnly, offset aAllowOnlyReadA, 0, \
   offset loc_45841C, 0, <2>>; 1
		t_menu <offset aReadWrite, offset aAllowReadWrite, 0, \
   offset loc_45841C, 0, <4>>; 2
		t_menu <offset aExecute, offset aAllowOnlyExecu, 0, offset loc_45841C,\
   0, <10h>>	; 3
		t_menu <offset aEXecuteRead, offset aAllowExecuteRe, 0, \
   offset loc_45841C, 0, <20h>>; 4
		t_menu <offset aFull, offset aAllowFullAcces, 0, offset loc_45841C, 0,\
   <40h>>		; 5
		t_menu	<0>
stru_5370F0	t_menu <offset aUpdate_0, offset aUpdateConten_6, 0CAh, \
   offset loc_457D1C, 0, <0>>; 0 ;	\=\=
		t_menu <offset aCreateBackup, offset aCreateBackup_0, 226h, \
   offset loc_457D6C, 0, <0>>; 1
		t_menu <offset aViewInCpuDisas, offset aOpenMemoryBl_0, 227h, \
   offset loc_457FB4, 0, <0>>; 2
		t_menu <offset aDumpInCpu, offset aOpenSelectedMe, 228h, \
   offset loc_458020, 0, <0>>; 3
		t_menu <offset aOpenSelectedMe+44h, offset aOpenSelected_0, 229h, \
   offset loc_457E20, 0, <0>>; 4
		t_menu <offset aSearch___, offset aSearchForASequ, 22Ah, \
   offset loc_458084, 0, <0>>; 5
		t_menu <offset aSearchNext, offset aContinueSearch, 0DCh, \
   offset loc_458084, 0, <1>>; 6
		t_menu <offset aShowFreeMemory, offset aShowFreeAndRes, 22Ch, \
   offset loc_458254, 0, <0>>; 7
		t_menu <offset aSetBreakOnAcce, offset aBreakOnNextAcc, 22Bh, \
   offset loc_458298, 0, <1>>; 8
		t_menu <offset aRemoveBreakO_0, offset aRemoveBreakOnA, 11Dh, \
   offset loc_458298, 0, <0>>; 9
		t_menu <offset aInvalidatingNo+3Dh, offset aAddSelectedMem, 0, \
   offset loc_458368, 0, <0>>; 10
		t_menu <offset aSetAccess, offset aSetAllowedType, 0, 0, \
   offset stru_537048, <0>>; 11
		t_menu <offset aMemory_2, offset aInvalidatingNo+3Dh, 0, 0, 0, <0>>; 12
		t_menu <offset asc_537F62, offset aInvalidatingNo+3Dh, 0, 0, \
   offset stru_518B94, <0>>; 13
aInvalidatingNo:			; DATA XREF: .text:00458606o
		unicode	0, <Invalidating non-flushed cache\:>,0
aUnableToFlushC:			; DATA XREF: .text:00458671o
		unicode	0, <Unable to flush cache at !%08X>,0
aUnableToReadMe:			; DATA XREF: .text:00458727o
		unicode	0, <Unable to read memory>,0
aMemoryAtAddres:			; DATA XREF: .text:0045871Bo
		unicode	0, <Memory at address !%08X of size !%08X \{!%i.\} bytes can not b>
		unicode	0, <e read. Either adress points to non-existing memory, or r>
		unicode	0, <ead access to memory is not enforceable.>,0
aUnableToWriteT:			; DATA XREF: .text:00458CC6o
		unicode	0, <Unable to write to memory>,0
aMemoryAtAddr_0:			; DATA XREF: .text:00458CBAo
		unicode	0, <Memory at address !%08X of size !%08X \{!%i.\} bytes can not b>
		unicode	0, <e written to. Either adress points to non-existing memory>
		unicode	0, <, or write access to memory is not enforceable.>,0
; wchar_t asc_537596
asc_537596:				; DATA XREF: .text:004594FEo
		unicode	0, <,>,0
; wchar_t a____7
a____7:					; DATA XREF: .text:004595D9o
		unicode	0, <...>,0
aLowMemory_3:				; DATA XREF: .text:00459B65o
		unicode	0, <Low memory>,0
aUnableToAllo_0:			; DATA XREF: .text:00459B59o
		unicode	0, <Unable to allocate !%li. bytes of memory>,0
aEditDataAtAddr:			; DATA XREF: .text:loc_459FB0o
		unicode	0, <Edit data at address >,0
aItemNotFound:				; DATA XREF: .text:00458231o
		unicode	0, <Item not found>,0
aUnableToSetB_6:			; DATA XREF: .text:00458338o
		unicode	0, <Unable to set break-on-access>,0
aLimitRunTrac_0:			; DATA XREF: .text:004583BBo
		unicode	0, <Limit run trace protocol to selected memory block>,0
aAddMemoryBlock:			; DATA XREF: .text:loc_4583D7o
		unicode	0, <Add memory block to run trace protocol>,0
aUnableToChange:			; DATA XREF: .text:004584BDo
		unicode	0, <Unable to change memory access rights>,0
aNoAccess:				; DATA XREF: .data:stru_537048o
		unicode	0, <\ANo access>,0
aDisableAccessT:			; DATA XREF: .data:stru_537048o
		unicode	0, <Disable access to selected memory block>,0
aReadOnly:				; DATA XREF: .data:stru_537048o
		unicode	0, <\ARead only>,0
aAllowOnlyReadA:			; DATA XREF: .data:stru_537048o
		unicode	0, <Allow only read access to selected memory block>,0
aReadWrite:				; DATA XREF: .data:stru_537048o
		unicode	0, <Read/\Awrite>,0
aAllowReadWrite:			; DATA XREF: .data:stru_537048o
		unicode	0, <Allow read/write access to selected memory block>,0
aExecute:				; DATA XREF: .data:stru_537048o
		unicode	0, <\AExecute>,0
aAllowOnlyExecu:			; DATA XREF: .data:stru_537048o
		unicode	0, <Allow only execution access to selected memory block>,0
aEXecuteRead:				; DATA XREF: .data:stru_537048o
		unicode	0, <E\Axecute/read>,0
aAllowExecuteRe:			; DATA XREF: .data:stru_537048o
		unicode	0, <Allow execute/read access to selected memory block>,0
aFull:					; DATA XREF: .data:stru_537048o
		unicode	0, <\AFull>,0
aAllowFullAcces:			; DATA XREF: .data:stru_537048o
		unicode	0, <Allow full access to selected memory block>,0
aUpdate_0:				; DATA XREF: .data:stru_5370F0o
		unicode	0, <\AUpdate>,0
aUpdateConten_6:			; DATA XREF: .data:stru_5370F0o
		unicode	0, <Update contents of Memory window>,0
aCreateBackup:				; DATA XREF: .data:stru_5370F0o
		unicode	0, <Create backup>,0
aCreateBackup_0:			; DATA XREF: .data:stru_5370F0o
		unicode	0, <Create backup copy of selected memory block>,0
aViewInCpuDisas:			; DATA XREF: .data:stru_5370F0o
		unicode	0, <|View in CPU Disassembler>,0
aOpenMemoryBl_0:			; DATA XREF: .data:stru_5370F0o
		unicode	0, <Open memory block in CPU Disassembler>,0
aDumpInCpu:				; DATA XREF: .data:stru_5370F0o
		unicode	0, <Dump in CPU>,0
aOpenSelectedMe:			; DATA XREF: .data:stru_5370F0o
		unicode	0, <Open selected memory block in CPU Dump>,0
aOpenSelected_0:			; DATA XREF: .data:stru_5370F0o
		unicode	0, <Open selected memory block in standalone Dump window>,0
aSearch___:				; DATA XREF: .data:stru_5370F0o
		unicode	0, <Search...>,0
aSearchForASequ:			; DATA XREF: .data:stru_5370F0o
		unicode	0, <Search for a sequence of bytes or string>,0
aSearchNext:				; DATA XREF: .data:stru_5370F0o
		unicode	0, <Search next>,0
aContinueSearch:			; DATA XREF: .data:stru_5370F0o
		unicode	0, <Continue search>,0
aShowFreeMemory:			; DATA XREF: .data:stru_5370F0o
		unicode	0, <Show free memory>,0
aShowFreeAndRes:			; DATA XREF: .data:stru_5370F0o
		unicode	0, <Show free and reserved memory areas>,0
aSetBreakOnAcce:			; DATA XREF: .data:stru_5370F0o
		unicode	0, <|Set break-on-access>,0
aBreakOnNextAcc:			; DATA XREF: .data:stru_5370F0o
		unicode	0, <Break on next access to selected memory block>,0
aRemoveBreakO_0:			; DATA XREF: .data:stru_5370F0o
		unicode	0, <Remove break-on-access>,0
aRemoveBreakOnA:			; DATA XREF: .data:stru_5370F0o
		unicode	0, <Remove break-on-access from selected block>,0
aAddSelectedMem:			; DATA XREF: .data:stru_5370F0o
		unicode	0, <Add selected memory block to the run trace protocol>,0
aSetAccess:				; DATA XREF: .data:stru_5370F0o
		unicode	0, <Set access>,0
aSetAllowedType:			; DATA XREF: .data:stru_5370F0o
		unicode	0, <Set allowed type of access to selected memory block>,0
aMemory_2:				; DATA XREF: .data:stru_5370F0o
		unicode	0, <|*MEMORY>,0
asc_537F62:				; DATA XREF: .data:stru_5370F0o
		unicode	0, <|>,0
; wchar_t a08xI__0
a08xI__0:				; DATA XREF: .text:0045A41Fo
		unicode	0, <!%08X \{!%i.\}>,0
aSelf:					; DATA XREF: .text:0045A48Co
		unicode	0, < \{self\}>,0
aFree:					; DATA XREF: .text:0045A4E3o
		unicode	0, <Free>,0
aReserved_0:				; DATA XREF: .text:0045A514o
		unicode	0, <Reserved>,0
aCode:					; DATA XREF: .text:0045A541o
		unicode	0, <code,>,0
aData_1:				; DATA XREF: .text:0045A569o
		unicode	0, <data,>,0
aSfx:					; DATA XREF: .text:0045A591o
		unicode	0, <SFX,>,0
aDefaultHeap:				; DATA XREF: .text:0045A5B9o
		unicode	0, <default heap,>,0
aImports:				; DATA XREF: .text:0045A60Bo
		unicode	0, <imports,>,0
aExports:				; DATA XREF: .text:0045A633o
		unicode	0, <exports,>,0
aResources:				; DATA XREF: .text:0045A65Bo
		unicode	0, <resources,>,0
aRelocations:				; DATA XREF: .text:0045A683o
		unicode	0, <relocations,>,0
aStackGuardingP:			; DATA XREF: .text:0045A6ABo
		unicode	0, <stack guarding page,>,0
aPeHeader_net:				; DATA XREF: .text:0045A6E3o
		unicode	0, <PE header \{.NET\},>,0
aPeHeader:				; DATA XREF: .text:loc_45A707o
		unicode	0, <PE header,>,0
aProcessEnvir_0:			; DATA XREF: .text:0045A72Fo
		unicode	0, <Process Environment Block,>,0
aUserSharedDa_0:			; DATA XREF: .text:0045A757o
		unicode	0, <User Shared Data,>,0
aStack_0:				; DATA XREF: .text:0045A77Fo
		unicode	0, <stack,>,0
aDataBlock_0:				; DATA XREF: .text:0045A7ADo
		unicode	0, <data block,>,0
aNativeCode:				; DATA XREF: .text:0045A7DBo
		unicode	0, <native code,>,0
aProcessParamet:			; DATA XREF: .text:0045A803o
		unicode	0, <Process Parameters,>,0
aEnvironment_0:				; DATA XREF: .text:0045A82Bo
		unicode	0, <Environment,>,0
aGdiHandles_0:				; DATA XREF: .text:0045A853o
		unicode	0, <GDI handles,>,0
aKernelMemory_0:			; DATA XREF: .text:0045A87Fo
		unicode	0, <Kernel memory,>,0
aCodePages:				; DATA XREF: .text:loc_45A8D6o
		unicode	0, <Code pages,>,0
aOf_0:					; DATA XREF: .text:0045A918o
		unicode	0, < of >,0
aFree_0:				; DATA XREF: .text:0045A972o
		unicode	0, <Free >,0
aPriv:					; DATA XREF: .text:0045A999o
		unicode	0, <Priv >,0
aMap:					; DATA XREF: .text:0045A9C0o
		unicode	0, <Map  >,0
aImg:					; DATA XREF: .text:0045A9E4o
		unicode	0, <Img  >,0
aKern:					; DATA XREF: .text:0045AA0Co
		unicode	0, <Kern >,0
; wchar_t a____
;a!?!?!?!?:					; DATA XREF: .text:loc_45AA2Ao
		unicode	0, <!?!?!?!? >,0
aReserved:				; DATA XREF: .text:0045AA79o
		unicode	0, <	Reserved>,0
asc_538236:				; DATA XREF: .text:0045AAA7o
		unicode	0, <   >,0
aR:					; DATA XREF: .text:0045AACEo
		unicode	0, <R  >,0
aRw:					; DATA XREF: .text:0045AAF5o
		unicode	0, <RW >,0
aRwCopyonwr:				; DATA XREF: .text:0045AB1Co
		unicode	0, <RW CopyOnWr>,0
aE_5:					; DATA XREF: .text:0045AB43o
		unicode	0, <  E>,0
aRE:					; DATA XREF: .text:0045AB6Ao
		unicode	0, <R E>,0
aRwe:					; DATA XREF: .text:0045AB91o
		unicode	0, <RWE>,0
aRweCopyonwr:				; DATA XREF: .text:0045ABB8o
		unicode	0, <RWE CopyOnWr>,0
; wchar_t a____0
;a!?!?!?_0:					; DATA XREF: .text:loc_45ABFEo
		unicode	0, <!?!?!?>,0
aGuarded:				; DATA XREF: .text:0045AC19o
		unicode	0, < Guarded>,0
aMemory_3:
		unicode	0, <Memory>,0
aAddress_7:
		unicode	0, <Address>,0
aBaseAddressOfM:
		unicode	0, <Base address of memory block>,0
aSizeDecimal_0:
		unicode	0, <Size$    \{Decimal\}>,0
aSizeOfMemoryBl:
		unicode	0, <Size of memory block \{hex and decimal\}>,0
aOwner:
		unicode	0, <Owner>,0
aOwnerOfMemoryB:
		unicode	0, <Owner of memory block>,0
aSection:
		unicode	0, <Section>,0
aNameOfAssociat:
		unicode	0, <Name of associated image sections>,0
aContains:
		unicode	0, <Contains>,0
aTypesOfDataTha:
		unicode	0, <Types of data that memory block contains>,0
aType_3:
		unicode	0, <Type>,0
aTypeOfMemoryBl:
		unicode	0, <Type of memory block>,0
aAccess:
		unicode	0, <Access>,0
aMemoryAccessRi:
		unicode	0, <Memory access rights>,0
aInitialAccess:
		unicode	0, <Initial access>,0
aInitialMemoryA:
		unicode	0, <Initial memory access rights>,0
aMappedAs:
		unicode	0, <Mapped as>,0
aNameOfAssoci_0:
		unicode	0, <Name of associated memory mapped file>,0
aIco_m:
		unicode	0, <ICO_M>,0
aMemoryMap_1:
		unicode	0, <Memory map>,0
		db    0
		db    0
dword_5385B8	dd 0			; DATA XREF: .text:0045B702w
stru_5385BC	t_menu <offset aIdle, offset aChangePriority, 0, offset loc_45B5A8, 0,\
   <0FFFFFFF1h>>	; 0 ; \=Idle\=
		t_menu <offset aLowest, offset aChangePriori_0, 0, offset loc_45B5A8, \
   0, <0FFFFFFFEh>>; 1
		t_menu <offset aLow, offset aChangePriori_4, 0, offset loc_45B5A8, 0, <\
   0FFFFFFFFh>>	; 2
		t_menu <offset aNormal_0, offset aChangePriori_1, 0, \
   offset loc_45B5A8, 0, <0>>; 3
		t_menu <offset aHigh_0, offset aChangePriori_2, 0, offset loc_45B5A8, \
   0, <1>>		; 4
		t_menu <offset aHighest, offset aChangePriori_5, 0, offset loc_45B5A8,\
   0, <2>>		; 5
		t_menu <offset aTimeCritical, offset aChangePriori_6, 0, \
   offset loc_45B5A8, 0, <0Fh>>; 6
		t_menu	<0>
stru_53867C	t_menu <offset aUpdate_2, offset aUpdateConten_7, 0CAh, \
   offset loc_45B07C, 0, <0>>; 0 ;	\=\AUpdate\=
		t_menu <offset aOpenInCpu, offset aOpenThreadIn_0, 23Ah, \
   offset loc_45B204, 0, <0>>; 1
		t_menu <offset aDumpTib, offset aDumpThreadIn_0, 23Bh, \
   offset loc_45B26C, 0, <0>>; 2
		t_menu <offset aShowRegisters, offset aShowThreadSReg, 23Ch, \
   offset loc_45B35C, 0, <0>>; 3
		t_menu <offset aSetSymbolicNam, offset aAssignSymbolic, 23Ch, \
   offset loc_45B3AC, 0, <0>>; 4
		t_menu <offset aSuspend, offset aSuspendSelecte, 23Dh, \
   offset loc_45B0D0, 0, <0>>; 5
		t_menu <offset aResume, offset aResumeSuspende, 23Eh, \
   offset loc_45B164, 0, <0>>; 6
		t_menu <offset aSetPriority, offset aChangePriori_3, 0, 0, \
   offset stru_5385BC, <0>>; 7
		t_menu <offset aKill, offset aKillSelectedTh, 23Fh, offset loc_45B458,\
   0, <0>>		; 8
		t_menu <offset aThreads_1, offset word_538784, 0, 0, 0, <0>>; 9
		t_menu <offset asc_539752, offset word_538784, 0, 0, \
   offset stru_518B94, <0>>; 10
; wchar_t word_538784
word_538784	dw 0			; DATA XREF: .text:0045B7EEo
aNullThread:				; DATA XREF: .text:0045B810o
		unicode	0, <NULL thread>,0
aNull_3:				; DATA XREF: .text:loc_45B831o
		unicode	0, <NULL>,0
aMainThread:				; DATA XREF: .text:0045B8B6o
		unicode	0, <Main thread>,0
aMainThread_0:				; DATA XREF: .text:loc_45B8C3o
		unicode	0, <main thread>,0
aMain_1:				; DATA XREF: .text:0045B8EFo
		unicode	0, <Main>,0
aMain_3:				; DATA XREF: .text:loc_45B8FCo
		unicode	0, <main>,0
a_netHelperThre:			; DATA XREF: .text:0045B936o
		unicode	0, <.NET helper thread >,0
aTemporaryThrea:			; DATA XREF: .text:0045B969o
		unicode	0, <Temporary thread >,0
aTemporaryThr_0:			; DATA XREF: .text:loc_45B976o
		unicode	0, <temporary thread >,0
aThread:				; DATA XREF: .text:0045B99Fo
		unicode	0, <Thread >,0
; wchar_t aS08x
aS08x:					; DATA XREF: .text:0045BA06o
		unicode	0, <!%s \{!%08X\}>,0
; wchar_t aI_08x
aI_08x:					; DATA XREF: .text:0045BA29o
		unicode	0, <!%i. \{!%08X\}>,0
aThread_1:				; DATA XREF: .text:0045BBBAo
		unicode	0, <Thread>,0
aSelectThread:				; DATA XREF: .text:0045BBC1o
		unicode	0, <Select thread>,0
aUnableToSuspen:			; DATA XREF: .text:0045B13Do
		unicode	0, <Unable to suspend thread>,0
aUnableToResume:			; DATA XREF: .text:0045B1D1o
		unicode	0, <Unable to resume thread>,0
aThreadInformat:			; DATA XREF: .text:0045B2D2o
		unicode	0, <Thread Information Block of >,0
aSetSymbolicThr:			; DATA XREF: .text:0045B42Bo
		unicode	0, <Set symbolic thread name>,0
aYouAreGoingToK:			; DATA XREF: .text:0045B4C0o
		unicode	0, <You are going to kill the last thread in the debugged app>
		unicode	0, <lication. The application will close. All unsaved informa>
		unicode	0, <tion will be lost and loaded DLLs will receive no notific>
		unicode	0, <ation. Kill thread anyway!?>,0
aYouAreGoingT_4:			; DATA XREF: .text:0045B4E8o
		unicode	0, <You are going to kill internal .NET debugging helper thre>
		unicode	0, <ad. You will be unable to continue debugging, and the app>
		unicode	0, <lication may crash. Kill thread anyway!?>,0
aYouAreGoingT_5:			; DATA XREF: .text:0045B510o
		unicode	0, <You are going to kill main thread of debugged application>
		unicode	0, <. In most cases, this will make application unusable. Als>
		unicode	0, <o note that all unsaved information in this thread will b>
		unicode	0, <e lost and loaded DLLs will receive no notification. Kill>
		unicode	0, < thread anyway!?>,0
aYouAreGoingT_6:			; DATA XREF: .text:0045B535o
		unicode	0, <You are going to kill thread !%08X. All unsaved informatio>
		unicode	0, <n in this thread will be lost and loaded DLLs will receiv>
		unicode	0, <e no notification. Kill thread anyway!?>,0
aAboutToKillThe:			; DATA XREF: .text:0045B566o
		unicode	0, <About to kill the thread>,0
aYouAreGoingToA:			; DATA XREF: .text:0045B627o
		unicode	0, <You are going to assign time-critical priority to >,0
a_InSomeCasesTh:			; DATA XREF: .text:0045B668o
		unicode	0, <. In some cases this may slow down or practically stop Ol>
		unicode	0, <lyDbg and other applications. Continue anyway!?>,0
aAboutToAssignT:			; DATA XREF: .text:0045B694o
		unicode	0, <About to assign time-critical priority to thread>,0
aUnableToChan_0:			; DATA XREF: .text:0045B6C9o
		unicode	0, <Unable to change priority>,0
aIdle:					; DATA XREF: .text:loc_45C141o
					; .data:stru_5385BCo
		unicode	0, <Idle>,0
aChangePriority:			; DATA XREF: .data:stru_5385BCo
		unicode	0, <Change priority of selected thread to idle>,0
aLowest:				; DATA XREF: .text:loc_45C165o
					; .data:stru_5385BCo
		unicode	0, <Lowest>,0
aChangePriori_0:			; DATA XREF: .data:stru_5385BCo
		unicode	0, <Change priority of selected thread to lowest>,0
aLow:					; DATA XREF: .text:loc_45C189o
					; .data:stru_5385BCo
		unicode	0, <Low>,0
aChangePriori_4:			; DATA XREF: .data:stru_5385BCo
		unicode	0, <Change priority of selected thread to low>,0
aNormal_0:				; DATA XREF: .text:loc_45C1ADo
					; .data:stru_5385BCo
		unicode	0, <Normal>,0
aChangePriori_1:			; DATA XREF: .data:stru_5385BCo
		unicode	0, <Change priority of selected thread to normal>,0
aHigh_0:				; DATA XREF: .text:loc_45C1D1o
					; .data:stru_5385BCo
		unicode	0, <High>,0
aChangePriori_2:			; DATA XREF: .data:stru_5385BCo
		unicode	0, <Change priority of selected thread to high>,0
aHighest:				; DATA XREF: .text:loc_45C1F5o
					; .data:stru_5385BCo
		unicode	0, <Highest>,0
aChangePriori_5:			; DATA XREF: .data:stru_5385BCo
		unicode	0, <Change priority of selected thread to highest>,0
aTimeCritical:				; DATA XREF: .text:loc_45C219o
					; .data:stru_5385BCo
		unicode	0, <Time critical>,0
aChangePriori_6:			; DATA XREF: .data:stru_5385BCo
		unicode	0, <Change priority of selected thread to time critical>,0
aUpdate_2:				; DATA XREF: .data:stru_53867Co
		unicode	0, <\AUpdate>,0
aUpdateConten_7:			; DATA XREF: .data:stru_53867Co
		unicode	0, <Update contents of Threads window>,0
aOpenInCpu:				; DATA XREF: .data:stru_53867Co
		unicode	0, <\AOpen in CPU>,0
aOpenThreadIn_0:			; DATA XREF: .data:stru_53867Co
		unicode	0, <Open thread in CPU window>,0
aDumpTib:				; DATA XREF: .data:stru_53867Co
		unicode	0, <\ADump TIB>,0
aDumpThreadIn_0:			; DATA XREF: .data:stru_53867Co
		unicode	0, <Dump Thread Information Block>,0
aShowRegisters:				; DATA XREF: .data:stru_53867Co
		unicode	0, <Show registers>,0
aShowThreadSReg:			; DATA XREF: .data:stru_53867Co
		unicode	0, <Show thread\-s registers in standalone window>,0
aSetSymbolicNam:			; DATA XREF: .data:stru_53867Co
		unicode	0, <|Set symbolic name>,0
aAssignSymbolic:			; DATA XREF: .data:stru_53867Co
		unicode	0, <Assign symbolic name to selected thread>,0
aSuspend:				; DATA XREF: .data:stru_53867Co
		unicode	0, <|\ASuspend>,0
aSuspendSelecte:			; DATA XREF: .data:stru_53867Co
		unicode	0, <Suspend selected thread>,0
aResume:				; DATA XREF: .data:stru_53867Co
		unicode	0, <\AResume>,0
aResumeSuspende:			; DATA XREF: .data:stru_53867Co
		unicode	0, <Resume suspended thread>,0
aSetPriority:				; DATA XREF: .data:stru_53867Co
		unicode	0, <Set \Apriority>,0
aChangePriori_3:			; DATA XREF: .data:stru_53867Co
		unicode	0, <Change priority of selected thread>,0
aKill:					; DATA XREF: .data:stru_53867Co
		unicode	0, <\AKill>,0
aKillSelectedTh:			; DATA XREF: .data:stru_53867Co
		unicode	0, <Kill selected thread>,0
aThreads_1:				; DATA XREF: .data:stru_53867Co
		unicode	0, <|*THREADS>,0
asc_539752:				; DATA XREF: .data:stru_53867Co
		unicode	0, <|>,0
aDebug_0:				; DATA XREF: .text:0045BF10o
		unicode	0, <Debug>,0
aTemp:					; DATA XREF: .text:0045BF3Ao
		unicode	0, <Temp>,0
; wchar_t aI__0
aI__0:					; DATA XREF: .text:0045BF62o
		unicode	0, <!%i.>,0
; wchar_t a____1
;a!?!?!?_1:					; DATA XREF: .text:0045C0A8o
		unicode	0, <!?!?!?>,0
a4i_04iS:				; DATA XREF: .text:0045C281o
		unicode	0, <!%4i.!%04i s>,0
aThreads_3:
		unicode	0, <Threads>,0
aOrd:
		unicode	0, <Ord>,0
aDecimalSequent:
		unicode	0, <Decimal sequential number of thread in process>,0
aIdent:
		unicode	0, <Ident>,0
aNameIfPresentA:
		unicode	0, <Name \{if present\} and unique system-wide identifier of th>
		unicode	0, <e thread>,0
aWindowSTitle:
		unicode	0, <Window\-s title>,0
aTitleOfOneOfTh:
		unicode	0, <Title of one of the top-level windows owned by thread>,0
aLastError:
		unicode	0, <Last error>,0
aLastErrorAsRet:
		unicode	0, <Last error, as returned by GetLastError\{\}>,0
aEntry_0:
		unicode	0, <Entry>,0
aAddressOfThrea:
		unicode	0, <Address of thread\-s entry point>,0
aAddressOfThr_0:
		unicode	0, <Address of Thread Information Block>,0
aSuspendCountOf:
		unicode	0, <Suspend count of the thread>,0
aPriority:
		unicode	0, <Priority>,0
aCurrentThreadS:
		unicode	0, <Current thread\-s priority \{relative to priority class of the process\}>,0
aUserTime:
		unicode	0, <User time>,0
aCpuTimeSpentBy:
		unicode	0, <CPU time spent by thread in user mode>,0
aSystemTime:
		unicode	0, <System time>,0
aCpuTimeSpent_0:
		unicode	0, <CPU time spent by thread in system mode>,0
aIco_t:
		unicode	0, <ICO_T>,0
		db 0
		db    0
		db    2
		db    0
		db 0
		db    0
		db    0
		db    0
		db 0
		db    0
		db    3
		db    0
		db 0
		db    0
word_539BD8	dw 102h			; 0 ; DATA XREF: .text:0045F663o
		dd 1Bh
		db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0; 0
		db 0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0; 16
		db 0,0,3,0,0,0,4,8,17h,0,0,0,0,0,0,0; 32
		db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0; 48
		db 0,0,0,0,0,0,5,0,0,0,0,0,0,0,14h,0; 64
		db 0,0,6,4,1,2,8,9,0Ah,0,0Eh,17h,14h,11h,1Ah,1Bh; 80
		db 20h,23h,26h,27h,28h,2Ah,0,0,0,0,0,0,0,0,0,0;	96
		db 0,0,1,0,0,0,0,0,0,0,2,0,0,0,4,8; 112
		db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0; 128
		db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0; 144
		db 0,0,0,0,0,0,3,0,0,0,2,6,20h,0,0,0; 160
		db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0; 176
		db 0,0,0,0,0,0,0,0,0,0,3,0,0,0;	192
word_539CAC	dw 0			; 0 ; DATA XREF: .text:0045F782r
		dd 50000h
		db 0,0,2,1,1Ah,6,1Bh,0,0,0,0,0,0,0,0,0;	0
		db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0; 16
		db 0,0,1,0,0,0,0,0,0,0,2,0,0,0,14h,17h;	32
		db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0; 48
		db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0; 64
		db 0,0,0,0,0,0,2,0,0,0,6,0Ah,0,0,0,0; 80
		db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0; 96
		db 0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0; 112
		db 0,0,2,0,0,0,4,6,0,0,0,0,0,0,0,0; 128
		db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0; 144
		db 0,0,0,0,0,0,2,0,0,0,0,0,0,0,3,0; 160
		db 0,0,26h,23h,27h,0,0,0,0,0,0,0,0,0,0,0; 176
		db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0; 192
		db 0,0,3,0,0,0,0,0,0,0,5,0,0,0,3Fh,3Fh;	208
		db 6,0Ah,3Fh,0,0,0,0,0,0,0,0,0,0,0,0,0;	224
		db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0; 240
		db 0,0			; 256
dword_539DB4	dd 0			; DATA XREF: .text:0045F70Ar
		dd 4
		dd 1231A00h
		dd 0
		dd 0			; 0
		dd 0
		dd 0
		dd 0
		dd 0
		dd 0
		dd 1
		dd 0
		dd 2
		dd 602h
		dd 0
		dd 0
		dd 0
		dd 0
		dd 0
		dd 0
		dd 0
; wchar_t *w
w		dd offset aModule_1	; DATA XREF: .text:0045E340r
					; \=Module\=
		dd offset aTyperef	; \=TypeRef\=
		dd offset aTypedef	; \=TypeDef\=
		dd offset aFieldptr	; \=FieldPtr\=
		dd offset aField_0	; \=Field\=
		dd offset aMethodptr	; \=MethodPtr\=
		dd offset aMethod	; \=Method\=
		dd offset aParamptr	; \=ParamPtr\=
		dd offset aParam	; \=Param\=
		dd offset aInterfaceimpl ; \=InterfaceImpl\=
		dd offset aMemberref	; \=MemberRef\=
		dd offset aConstant	; \=Constant\=
		dd offset aCustomattribut ; \=CustomAttribute\=
		dd offset aFieldmarshal	; \=FieldMarshal\=
		dd offset aDeclsecurity	; \=DeclSecurity\=
		dd offset aClasslayout	; \=ClassLayout\=
		dd offset aFieldlayout	; \=FieldLayout\=
		dd offset aStandalonesig ; \=StandAloneSig\=
		dd offset aEventmap	; \=EventMap\=
		dd offset aEventptr	; \=EventPtr\=
		dd offset aEvent	; \=Event\=
		dd offset aPropertymap	; \=PropertyMap\=
		dd offset aPropertyptr	; \=PropertyPtr\=
		dd offset aProperty	; \=Property\=
		dd offset aMethodsemantic ; \=MethodSemantics\=
		dd offset aMethodimpl	; \=MethodImpl\=
		dd offset aModuleref	; \=ModuleRef\=
		dd offset aTypespec	; \=TypeSpec\=
		dd offset aImplmap	; \=ImplMap\=
		dd offset aFieldrva	; \=FieldRVA\=
		dd offset aEnclog	; \=ENCLog\=
		dd offset aEncmap	; \=ENCMap\=
		dd offset aAssembly	; \=Assembly\=
		dd offset aAssemblyproc	; \=AssemblyProc\=
		dd offset aAssemblyos	; \=AssemblyOS\=
		dd offset aAssemblyref	; \=AssemblyRef\=
		dd offset aAssemblyrefpro ; \=AssemblyRefProc\=
		dd offset aAssemblyrefos ; \=AssemblyRefOS\=
		dd offset aFile_2	; \=File\=
		dd offset aExportedtype	; \=ExportedType\=
		dd offset aManifestrsrc	; \=ManifestRsrc\=
		dd offset aNestedclass	; \=NestedClass\=
		dd offset aGenericparam	; \=GenericParam\=
		dd offset aMethodspec	; \=MethodSpec\=
		dd offset aParamconstrain ; \=ParamConstraint\=
		dd offset a45		; \=45\=
		dd offset a46		; \=46\=
		dd offset a47		; \=47\=
		dd offset a48		; \=48\=
		dd offset a49		; \=49\=
		dd offset a50		; \=50\=
		dd offset a51		; \=51\=
		dd offset a52		; \=52\=
		dd offset a53_0		; \=53\=
		dd offset a54_0		; \=54\=
		dd offset a55		; \=55\=
		dd offset a56		; \=56\=
		dd offset a57		; \=57\=
		dd offset a58		; \=58\=
		dd offset a59		; \=59\=
		dd offset a60		; \=60\=
		dd offset a61		; \=61\=
		dd offset a62		; \=62\=
		dd offset a63		; \=63\=
dword_539F08	dd 8			; DATA XREF: .text:00462E80o
		dd offset aVc10xc00	; \=VC10XC00\=
		dd offset aSignatureOf__e ; \=Signature of __except_handler2\=
		dd 8
		dd offset aVc20xc00	; \=VC20XC00\=
		dd offset aSignatureOf__0 ; \=Signature of __except_handler3\=
aAnalysingSPres:			; DATA XREF: .text:0045C616o
		unicode	0, <Analysing !%s - $ - press SPACE to interrupt>,0
; wchar_t aS_10
aS_10:					; DATA XREF: .text:0045C660o
		unicode	0, <!%s>,0
aAnalysisInterr:			; DATA XREF: .text:loc_45C6F9o
		unicode	0, <  Analysis interrupted>,0
; char aIS_1[]
aIS_1		db '[!%i!%s]',0           ; DATA XREF: .text:0045CA71o
unk_539FB3	db  2Eh	; .		; DATA XREF: .text:loc_45CA6Ao
		db    0
		db    0
; wchar_t aStructS
aStructS:				; DATA XREF: .text:0045CBACo
		dw 3Ch
		unicode	0, <STRUCT !%s>
		dw 3Eh,	0
aLowMemoryAnaly:			; DATA XREF: .text:loc_45D02Ao
		unicode	0, <  Low memory, analysis is not possible>,0
aModuleHasEmpty:			; DATA XREF: .text:0045D0A5o
		unicode	0, <  Module has empty code section>,0
aCompressedCode:			; DATA XREF: .text:0045D1BEo
		unicode	0, <Compressed code!?>,0
aQuickStatistic:			; DATA XREF: .text:0045D1B2o
		unicode	0, <Quick statistical test of module \-!%s\- reports >
		unicode 0, <that its code section is either compressed, >
		unicode 0, <encrypted, or contains large amount of embedded data. >
		unicode	0, <Do you want to analyze this code!?>,0
aPackedOrEncryp:			; DATA XREF: .text:0045D1E5o
		unicode	0, <  Packed or encrypted code, code is not analysed>,0
aStructImage_im:			; DATA XREF: .text:0045D33Co
		unicode	0, <Struct \-IMAGE_IMPORT_DESCRIPTOR\->,0
aInvalidDllName:			; DATA XREF: .text:0045D3D6o
		unicode	0, <  Invalid DLL name in Import Directory at !%08X>,0
aImportLookupTa:			; DATA XREF: .text:0045D421o
		unicode	0, <Import lookup table for \-!%.200S\->,0
aInvalidImpor_0:			; DATA XREF: .text:0045D4F3o
		unicode	0, <  Invalid import name in ILT at !%08X>,0
aStructImage_ex:			; DATA XREF: .text:0045D5EDo
		unicode	0, <Struct \-IMAGE_EXPORT_DIRECTORY\->,0
aOriginalModule:			; DATA XREF: .text:0045D68Do
		unicode	0, <Original module name>,0
aInvalidNameOfE:			; DATA XREF: .text:0045D6CDo
		unicode	0, <  Invalid name of executable in Export Directory at !%08X>,0
aExportAddressT:			; DATA XREF: .text:0045D6F7o
		unicode	0, <Export Address Table>,0
aExportNamePoin:			; DATA XREF: .text:0045D757o
		unicode	0, <Export Name Pointer Table>,0
aInvalidExportN:			; DATA XREF: .text:0045D803o
		unicode	0, <  Invalid export name in Export Name Table at !%08X>,0
aExportOrdinalT:			; DATA XREF: .text:0045D84Co
		unicode	0, <Export Ordinal Table>,0
; wchar_t aImage_tls_dire
aImage_tls_dire:			; DATA XREF: .text:0045D8DBo
		unicode	0, <IMAGE_TLS_DIRECTORY>,0
; wchar_t aTlsindex
aTlsindex:				; DATA XREF: .text:0045D93Eo
	
		unicode	0, <\[TLSindex\]>,0
aTlsCallbackFun:			; DATA XREF: .text:0045D992o
		unicode	0, <TLS callback function>,0
aTlscallbacks:				; DATA XREF: .text:0045D9D9o
		unicode	0, <\[TLSCallbacks\]>,0
		

		
aMz		db 'MZ',0
		db 0
aImage_dos_head:
		unicode	0, <IMAGE_DOS_HEADER>,0
aDos_peoffset:
		unicode	0, <DOS_PEOffset>,0
aImage_nt_signa:
		unicode	0, <IMAGE_NT_SIGNATURE>,0
aImage_file_hea:
		unicode	0, <IMAGE_FILE_HEADER>,0
aMachine:
		unicode	0, <Machine>,0
aSizeofoptional:
		unicode	0, <SizeOfOptionalHeader>,0
aNumberofsectio:
		unicode	0, <NumberOfSections>,0
aImage_optional:
		unicode	0, <IMAGE_OPTIONAL_HEADER>,0
aNumberofrvaand:
		unicode	0, <NumberOfRvaAndSizes>,0
aImage_data_dir:
		unicode	0, <IMAGE_DATA_DIRECTORY>,0
aImage_section_:
		unicode	0, <IMAGE_SECTION_HEADER>,0
aImage_bound_im:
		unicode	0, <IMAGE_BOUND_IMPORT_DESCRIPTOR>,0
aOffsetmodulena:
		unicode	0, <OffsetModuleName>,0
aNumberofmodule:
		unicode	0, <NumberOfModuleForwarderRefs>,0
aImage_bound_fo:
		unicode	0, <IMAGE_BOUND_FORWARDER_REF>,0
aModule_1:				; DATA XREF: .data:wo
		unicode	0, <Module>,0
aTyperef:				; DATA XREF: .data:00539E0Co
		unicode	0, <TypeRef>,0
aTypedef:				; DATA XREF: .data:00539E10o
		unicode	0, <TypeDef>,0
aFieldptr:				; DATA XREF: .data:00539E14o
		unicode	0, <FieldPtr>,0
aField_0:				; DATA XREF: .data:00539E18o
		unicode	0, <Field>,0
aMethodptr:				; DATA XREF: .data:00539E1Co
		unicode	0, <MethodPtr>,0
aMethod:				; DATA XREF: .data:00539E20o
		unicode	0, <Method>,0
aParamptr:				; DATA XREF: .data:00539E24o
		unicode	0, <ParamPtr>,0
aParam:					; DATA XREF: .data:00539E28o
		unicode	0, <Param>,0
aInterfaceimpl:				; DATA XREF: .data:00539E2Co
		unicode	0, <InterfaceImpl>,0
aMemberref:				; DATA XREF: .data:00539E30o
		unicode	0, <MemberRef>,0
aConstant:				; DATA XREF: .data:00539E34o
		unicode	0, <Constant>,0
aCustomattribut:			; DATA XREF: .data:00539E38o
		unicode	0, <CustomAttribute>,0
aFieldmarshal:				; DATA XREF: .data:00539E3Co
		unicode	0, <FieldMarshal>,0
aDeclsecurity:				; DATA XREF: .data:00539E40o
		unicode	0, <DeclSecurity>,0
aClasslayout:				; DATA XREF: .data:00539E44o
		unicode	0, <ClassLayout>,0
aFieldlayout:				; DATA XREF: .data:00539E48o
		unicode	0, <FieldLayout>,0
aStandalonesig:				; DATA XREF: .data:00539E4Co
		unicode	0, <StandAloneSig>,0
aEventmap:				; DATA XREF: .data:00539E50o
		unicode	0, <EventMap>,0
aEventptr:				; DATA XREF: .data:00539E54o
		unicode	0, <EventPtr>,0
aEvent:					; DATA XREF: .data:00539E58o
		unicode	0, <Event>,0
aPropertymap:				; DATA XREF: .data:00539E5Co
		unicode	0, <PropertyMap>,0
aPropertyptr:				; DATA XREF: .data:00539E60o
		unicode	0, <PropertyPtr>,0
aProperty:				; DATA XREF: .data:00539E64o
		unicode	0, <Property>,0
aMethodsemantic:			; DATA XREF: .data:00539E68o
		unicode	0, <MethodSemantics>,0
aMethodimpl:				; DATA XREF: .data:00539E6Co
		unicode	0, <MethodImpl>,0
aModuleref:				; DATA XREF: .data:00539E70o
		unicode	0, <ModuleRef>,0
aTypespec:				; DATA XREF: .data:00539E74o
		unicode	0, <TypeSpec>,0
aImplmap:				; DATA XREF: .data:00539E78o
		unicode	0, <ImplMap>,0
aFieldrva:				; DATA XREF: .data:00539E7Co
		unicode	0, <FieldRVA>,0
aEnclog:				; DATA XREF: .data:00539E80o
		unicode	0, <ENCLog>,0
aEncmap:				; DATA XREF: .data:00539E84o
		unicode	0, <ENCMap>,0
aAssembly:				; DATA XREF: .data:00539E88o
		unicode	0, <Assembly>,0
aAssemblyproc:				; DATA XREF: .data:00539E8Co
		unicode	0, <AssemblyProc>,0
aAssemblyos:				; DATA XREF: .data:00539E90o
		unicode	0, <AssemblyOS>,0
aAssemblyref:				; DATA XREF: .data:00539E94o
		unicode	0, <AssemblyRef>,0
aAssemblyrefpro:			; DATA XREF: .data:00539E98o
		unicode	0, <AssemblyRefProc>,0
aAssemblyrefos:				; DATA XREF: .data:00539E9Co
		unicode	0, <AssemblyRefOS>,0
aFile_2:				; DATA XREF: .data:00539EA0o
		unicode	0, <File>,0
aExportedtype:				; DATA XREF: .data:00539EA4o
		unicode	0, <ExportedType>,0
aManifestrsrc:				; DATA XREF: .data:00539EA8o
		unicode	0, <ManifestRsrc>,0
aNestedclass:				; DATA XREF: .data:00539EACo
		unicode	0, <NestedClass>,0
aGenericparam:				; DATA XREF: .data:00539EB0o
		unicode	0, <GenericParam>,0
aMethodspec:				; DATA XREF: .data:00539EB4o
		unicode	0, <MethodSpec>,0
aParamconstrain:			; DATA XREF: .data:00539EB8o
		unicode	0, <ParamConstraint>,0
a45:					; DATA XREF: .data:00539EBCo
		unicode	0, <45>,0
a46:					; DATA XREF: .data:00539EC0o
		unicode	0, <46>,0
a47:					; DATA XREF: .data:00539EC4o
		unicode	0, <47>,0
a48:					; DATA XREF: .data:00539EC8o
		unicode	0, <48>,0
a49:					; DATA XREF: .data:00539ECCo
		unicode	0, <49>,0
a50:					; DATA XREF: .data:00539ED0o
		unicode	0, <50>,0
a51:					; DATA XREF: .data:00539ED4o
		unicode	0, <51>,0
a52:					; DATA XREF: .data:00539ED8o
		unicode	0, <52>,0
a53_0:					; DATA XREF: .data:00539EDCo
		unicode	0, <53>,0
a54_0:					; DATA XREF: .data:00539EE0o
		unicode	0, <54>,0
a55:					; DATA XREF: .data:00539EE4o
		unicode	0, <55>,0
a56:					; DATA XREF: .data:00539EE8o
		unicode	0, <56>,0
a57:					; DATA XREF: .data:00539EECo
		unicode	0, <57>,0
a58:					; DATA XREF: .data:00539EF0o
		unicode	0, <58>,0
a59:					; DATA XREF: .data:00539EF4o
		unicode	0, <59>,0
a60:					; DATA XREF: .data:00539EF8o
		unicode	0, <60>,0
a61:					; DATA XREF: .data:00539EFCo
		unicode	0, <61>,0
a62:					; DATA XREF: .data:00539F00o
		unicode	0, <62>,0
a63:					; DATA XREF: .data:00539F04o
		unicode	0, <63>,0
; char aNetsw[]
aNetsw		db 'NETSW',0            ; DATA XREF: .text:0045E002o
aNetsd		db 'NETSD',0            ; DATA XREF: .text:loc_45E009o
; char aNetgw[]
aNetgw		db 'NETGW',0            ; DATA XREF: .text:0045E03Ao
aNetgd		db 'NETGD',0            ; DATA XREF: .text:loc_45E041o
; char aNetbw[]
aNetbw		db 'NETBW',0            ; DATA XREF: .text:0045E06Co
aNetbd		db 'NETBD',0            ; DATA XREF: .text:loc_45E073o
; char asc_53AC66[]
asc_53AC66	db '|',0                ; DATA XREF: .text:0045E0B0o
; char aUint[]
aUint		db 'UINT',0             ; DATA XREF: .text:0045E2FDo
; char a_I[]
a_I		db '_!%i',0              ; DATA XREF: .text:0045E35Eo
		db 0
; wchar_t aMethodbody_I
aMethodbody_I:				; DATA XREF: .text:0045E3CEo
		unicode	0, <MethodBody_!%i>,0
aFlags_codesize:			; DATA XREF: .text:0045E451o
		unicode	0, <Flags_CodeSize>,0
aCor_mtiny:				; DATA XREF: .text:0045E44Ao
		unicode	0, <COR_MTINY>,0
aFlags:					; DATA XREF: .text:0045E4F5o
		unicode	0, <Flags>,0
aCor_mfat:				; DATA XREF: .text:0045E4EEo
		unicode	0, <COR_MFAT>,0
aUint_0:				; DATA XREF: .text:0045E51Bo
		unicode	0, <UINT>,0
aLocalvarsigtok:			; DATA XREF: .text:0045E54Ao
		unicode	0, <LocalVarSigTok>,0
aHexdata_0:				; DATA XREF: .text:0045E543o
		unicode	0, <HEXDATA>,0
; wchar_t aNet_fathdr
aNet_fathdr:				; DATA XREF: .text:0045E848o
		unicode	0, <NET_FATHDR>,0
; wchar_t aNet_fatclause
aNet_fatclause:				; DATA XREF: .text:0045E87Ao
		unicode	0, <NET_FATCLAUSE>,0
; wchar_t aHandleroffset
aHandleroffset:				; DATA XREF: .text:0045E89Fo
		unicode	0, <HandlerOffset>,0
aExceptionHandl:			; DATA XREF: .text:0045E8E3o
		unicode	0, <Exception handler>,0
; wchar_t aNet_smallhdr
aNet_smallhdr:				; DATA XREF: .text:0045E96Ao
		unicode	0, <NET_SMALLHDR>,0
; wchar_t aNet_smallclaus
aNet_smallclaus:			; DATA XREF: .text:0045E99Co
		unicode	0, <NET_SMALLCLAUSE>,0
aImage_cor20_he:
		unicode	0, <IMAGE_COR20_HEADER>,0
aMetadata_signa:
		unicode	0, <MetaData.Signature>,0
aAtext_0:
		unicode	0, <ATEXT>,0
aMetadata_major:
		unicode	0, <MetaData.MajorVersion>,0
aMetadata_minor:
		unicode	0, <MetaData.MinorVersion>,0
aMetadata_reser:
		unicode	0, <MetaData.Reserved>,0
aMetadata_lengt:
		unicode	0, <MetaData.Length>,0
aMetadata_versi:
		unicode	0, <MetaData.Version>,0
aMetadata_flags:
		unicode	0, <MetaData.Flags>,0
aMetadata_strea:
		unicode	0, <MetaData.Streams>,0
aStreamLi_offse:
		unicode	0, <Stream[!%li].Offset>,0
aStreamLi_size:
		unicode	0, <Stream[!%li].Size>,0
aStrings	db '#Strings',0
aGuid_0		db '#GUID',0
aBlob		db '#Blob',0
aUs_0		db '#US',0
		db '#~',0
aStreamS:
		dw 3Ch
		unicode	0, <STREAM !%S>
		dw 3Eh,	0
aStreamLi_name:
		unicode	0, <Stream[!%li].Name>,0
aHeapoffsetsize:
		unicode	0, <HeapOffsetSizes>,0
aReserved1:
		unicode	0, <Reserved1>,0
aValid:
		unicode	0, <Valid>,0
aQuad:
		unicode	0, <QUAD>,0
aSorted:
		unicode	0, <Sorted>,0
aCountS:
		unicode	0, <Count[!%s]>,0
aS_I_0:
		unicode	0, <#!%s_!%i>,0
aGeneration:
		unicode	0, <Generation>,0
aMvid:
		unicode	0, <Mvid>,0
aEncid:
		unicode	0, <EncId>,0
aEncbaseid:
		unicode	0, <EncBaseId>,0
aResolutionscop:
		unicode	0, <ResolutionScope>,0
aNamespace:
		unicode	0, <Namespace>,0
aCortypeattr:
		unicode	0, <CorTypeAttr>,0
aExtends:
		unicode	0, <Extends>,0
aFieldlist:
		unicode	0, <FieldList>,0
aMethodlist:
		unicode	0, <MethodList>,0
aCorfieldattr:
		unicode	0, <CorFieldAttr>,0
aImplflags:
		unicode	0, <ImplFlags>,0
aCormethodimpl:
		unicode	0, <CorMethodImpl>,0
aCormethodattr:
		unicode	0, <CorMethodAttr>,0
aParamlist:
		unicode	0, <ParamList>,0
aCorparamattr:
		unicode	0, <CorParamAttr>,0
aSequence:
		unicode	0, <Sequence>,0
aInterface:
		unicode	0, <Interface>,0
aCorelementtype:
		unicode	0, <CorElementType>,0
aPadding:
		unicode	0, <Padding>,0
aParent:
		unicode	0, <Parent>,0
aNetch_0:
		unicode	0, <NETCH>,0
aNetci_1:
		unicode	0, <NETCI>,0
aNetcf_0:
		unicode	0, <NETCF>,0
aNetcu_0:
		unicode	0, <NETCU>,0
aValue_0:
		unicode	0, <Value>,0
aNativetype:
		unicode	0, <NativeType>,0
aAction:
		unicode	0, <Action>,0
aPermissionset:
		unicode	0, <PermissionSet>,0
aPackingsize:
		unicode	0, <PackingSize>,0
aClasssize:
		unicode	0, <ClassSize>,0
aEventlist:
		unicode	0, <EventList>,0
aEventflags:
		unicode	0, <EventFlags>,0
aCoreventattr:
		unicode	0, <CorEventAttr>,0
aEventtype:
		unicode	0, <EventType>,0
aPropertylist:
		unicode	0, <PropertyList>,0
aCorpropertyatt:
		unicode	0, <CorPropertyAttr>,0
aCormethodseman:
		unicode	0, <CorMethodSemanticsAttr>,0
aAssociation:
		unicode	0, <Association>,0
aMethodbody:
		unicode	0, <MethodBody>,0
aMethoddeclarat:
		unicode	0, <MethodDeclaration>,0
aMappingflags:
		unicode	0, <MappingFlags>,0
aCorpinvokemap:
		unicode	0, <CorPinvokeMap>,0
aMemberforwarde:
		unicode	0, <MemberForwarded>,0
aImportname:
		unicode	0, <ImportName>,0
aImportscope:
		unicode	0, <ImportScope>,0
aHashalgid:
		unicode	0, <HashAlgId>,0
aBuildnumber:
		unicode	0, <BuildNumber>,0
aRevisionnumber:
		unicode	0, <RevisionNumber>,0
aCorassemblyfla:
		unicode	0, <CorAssemblyFlags>,0
aPublickey:
		unicode	0, <PublicKey>,0
aCulture:
		unicode	0, <Culture>,0
aProcessor:
		unicode	0, <Processor>,0
aOsplatformid:
		unicode	0, <OSPlatformID>,0
aOsmajorversion:
		unicode	0, <OSMajorVersion>,0
aOsminorversion:
		unicode	0, <OSMinorVersion>,0
aPublickeyortok:
		unicode	0, <PublicKeyOrToken>,0
aHashvalue:
		unicode	0, <HashValue>,0
aCorfileflags:
		unicode	0, <CorFileFlags>,0
aTypedefid:
		unicode	0, <TypeDefId>,0
aTypename:
		unicode	0, <TypeName>,0
aTypenamespace:
		unicode	0, <TypeNamespace>,0
aImplementation:
		unicode	0, <Implementation>,0
aCormanifestres:
		unicode	0, <CorManifestResourceFlags>,0
aEnclosingclass:
		unicode	0, <EnclosingClass>,0
aCorgenericpara:
		unicode	0, <CorGenericParamAttr>,0
aOwner_1:
		unicode	0, <Owner>,0
aInstantiation:
		unicode	0, <Instantiation>,0
aInvalidOrUnkno:
		unicode	0, <  Invalid or unknown format of .NET structures>,0
aVc10xc00	db 'VC10XC00',0         ; DATA XREF: .data:00539F0Co
		db 0
; aSignatureOf\{...\}
aSignatureOf__e:			; DATA XREF: .data:00539F10o
		unicode	0, <Signature of __except_handler2>,0
aVc20xc00	db 'VC20XC00',0         ; DATA XREF: .data:00539F18o
		db 0
aSignatureOf__0:			; DATA XREF: .data:00539F1Co
		unicode	0, <Signature of __except_handler3>,0
aInvalidComma_1:			; DATA XREF: .text:00461D59o
		unicode	0, <  Invalid command in sure code>,0
aCommandAlready:			; DATA XREF: .text:00461DC2o
		unicode	0, <  Command already decoded differently>,0
aDataAlreadyDec:			; DATA XREF: .text:00461ED4o
		unicode	0, <  Data already decoded as command!%s>,0
aSelfModifiedCo:			; DATA XREF: .text:00461EC1o
		unicode	0, < \{self-modified code!?\}>,0
aJumpOverImmedi:			; DATA XREF: .text:00462116o
		unicode	0, <Jump over immediate data>,0
aFixupSplitBetw:			; DATA XREF: .text:00462E44o
		unicode	0, <  Fixup split between items>,0
; wchar_t aMaxknownproc
aMaxknownproc:				; DATA XREF: .text:00464272o
		unicode	0, <!%!%MAXKNOWNPROC!%!%>,0
; wchar_t aProc04lu
aProc04lu:				; DATA XREF: .text:004642D4o
		unicode	0, <PROC!%04lu>,0
; wchar_t aS_12
aS_12:					; DATA XREF: .text:00464550o
		unicode	0, <  !%s>,0
; wchar_t aMaxtricks
aMaxtricks:				; DATA XREF: .text:004645EAo
		unicode	0, <!%!%MAXTRICKS!%!%>,0
; wchar_t aTrick03i
aTrick03i:				; DATA XREF: .text:004646EAo
		unicode	0, <TRICK!%03i>,0
aTrickyPatternI:			; DATA XREF: .text:0046486Do
		unicode	0, <  Tricky pattern !%i: !%s>,0
; wchar_t a1_1
a1_1:					; DATA XREF: .text:00464BD3o
		unicode	0, <\{1\} >,0
; wchar_t a____10
;a!?!?!?_10:				; DATA XREF: .text:00464C58o
		unicode	0, <!?!?!?>,0
; wchar_t aLock_0
aLock_0:				; DATA XREF: .text:00464F16o
		unicode	0, <LOCK >,0
; wchar_t aBht_1
aBht_1:					; DATA XREF: .text:00464F3Eo
		unicode	0, <BHT >,0
; wchar_t aBhnt_0
aBhnt_0:				; DATA XREF: .text:00464F66o
		unicode	0, <BHNT >,0
; wchar_t aRep_3
aRep_3:					; DATA XREF: .text:00464FACo
		unicode	0, <REP >,0
; wchar_t aRepe_2
aRepe_2:				; DATA XREF: .text:00464FD7o
		unicode	0, <REPE >,0
; wchar_t aRepne_0
aRepne_0:				; DATA XREF: .text:00465002o
		unicode	0, <REPNE >,0
; wchar_t aI_6
aI_6:					; DATA XREF: .text:00465182o
		unicode	0, <\{!%i\}>,0
; wchar_t asc_53B9CE
asc_53B9CE:				; DATA XREF: .text:0046535Eo
		unicode	0, <\\>,0
; wchar_t aSS_8
aSS_8:					; DATA XREF: .text:004653FBo
		unicode	0, <  \-!%s\-: !%s>,0
a1LibraryFuncti:			; DATA XREF: .text:00465AD3o
		unicode	0, <  1 library function from \-!%s\->,	0
aILibraryFuncti:			; DATA XREF: .text:00465B11o
		unicode	0, <  !%i library functions from \-!%s\->,0
aLowMemorySwitc:			; DATA XREF: .text:00467512o
		unicode	0, <  Low memory, switches are not analysed>,0
aSwitchIsTooCom:			; DATA XREF: .text:00468633o
		unicode	0, <  Switch is too complex, some cases are lost>,0
; wchar_t aMessage_5
aMessage_5:				; DATA XREF: .text:00468799o
		unicode	0, <MESSAGE>,0
; wchar_t aException_3
aException_3:				; DATA XREF: .text:004688FDo
		unicode	0, <EXCEPTION>,0
aLowMemoryUna_1:			; DATA XREF: .text:00469A34o
		unicode	0, <  Low memory, unable to recognize procedures>,0
byte_53BB90	db 81h,0C4h,4,0F0h,0FFh,0FFh,50h,48h,75h,0F6h; 0
		db    0
		db    0
aLoopReservesI_:			; DATA XREF: .text:00469FEFo
		unicode	0, <Loop reserves !%i. bytes on the stack>,0
byte_53BBE6	db 6Ah,0,6Ah,0,49h,75h,0F9h; 0 ; DATA XREF: .text:0046A06Fo
		db    0
aEspMayDependOn:			; DATA XREF: .text:0046A0F5o
		unicode	0, <  ESP may depend on execution path>,0
aTXStackAlignment:			; DATA XREF: .text:0046A27Do
		
		unicode	0, <\[T!%X\] stack alignment>,0
aSeHandlingRout:			; DATA XREF: .text:0046A4E3o
		unicode	0, <SE handling routine>,0
aInstallsSeHand:			; DATA XREF: .text:loc_46A538o
		unicode	0, <Installs SE handler>,0
aInstallsSeHa_0:			; DATA XREF: .text:0046A562o
		unicode	0, <Installs SE handler \[+!%X\]>,	0
aPossibleAccess:			; DATA XREF: .text:0046A6B7o
		unicode	0, <  Possible access to uninitialized part of stack \{below E>
		unicode	0, <SP\}>,0
aPossibleManipu:			; DATA XREF: .text:0046A71Ao
		unicode	0, <  Possible manipulation of return address on the stack>,0
aLargeStructure:			; DATA XREF: .text:0046B227o
		unicode	0, <  Large structure passed on stack or ESP manipulated>,0
aRetIsUsedAsAJu:			; DATA XREF: .text:loc_46BC47o
		unicode	0, <RET is used as a jump>,0
aJumpToX:				; DATA XREF: .text:0046BC74o
		unicode	0, <Jump to >
		dw 3Ch
		unicode	0, <+!%X>
		dw 3Eh,	0
aDllentry	db 'DLLENTRY',0         ; DATA XREF: .text:0046C0C1o
		db 0
; wchar_t aCallback
aCallback:				; DATA XREF: .text:0046C4F0o
		unicode	0, <CALLBACK>,0
; wchar_t aWinproca_1
aWinproca_1:				; DATA XREF: .text:loc_46C521o
		unicode	0, <WINPROCA>,0
; wchar_t aWinprocw
aWinprocw:				; DATA XREF: .text:loc_46C554o
		unicode	0, <WINPROCW>,0
aWinproca	db 'WINPROCA',0         ; DATA XREF: .text:0046C620o
aWinprocw_0	db 'WINPROCW',0         ; DATA XREF: .text:0046C63Co
; wchar_t a_intern___0
a_intern___0:				; DATA XREF: .text:0046C66Ao
		unicode	0, <_INTERN_.>,0
aAllocatesEaxBy:			; DATA XREF: .text:loc_46C75Bo
		unicode	0, <Allocates EAX bytes on stack>,0
aAllocatesI_Byt:			; DATA XREF: .text:0046C77Eo
		unicode	0, <Allocates !%i. bytes on stack>,0
aProbesEaxBytes:			; DATA XREF: .text:loc_46C7E0o
		unicode	0, <Probes EAX bytes on stack>,0
aProbesI_BytesO:			; DATA XREF: .text:0046C803o
		unicode	0, <Probes !%i. bytes on stack>,0
; char aFnI[]
aFnI		db 'Fn!%i',0             ; DATA XREF: .text:0046C881o
		db 0
; wchar_t a_intern__fnI
a_intern__fnI:				; DATA XREF: .text:0046C896o
		unicode	0, <_INTERN_.Fn!%i>,0
; char aSInvI[]
aSInvI		db 'S!%iNV!%i',0          ; DATA XREF: .text:0046C93Co
; wchar_t a_intern__sInvI
a_intern__sInvI:			; DATA XREF: .text:0046C94Fo
		unicode	0, <_INTERN_.S!%iNV!%i>,0
; char aFmtIa[]
aFmtIa		db 'Fmt!%iA',0           ; DATA XREF: .text:0046C9FFo
		db 0
; wchar_t a_intern__fmtIa
a_intern__fmtIa:			; DATA XREF: .text:0046CA17o
		unicode	0, <_INTERN_.Fmt!%iA>,0
; char aFmtIpIa[]
aFmtIpIa	db 'Fmt!%ip!%iA',0        ; DATA XREF: .text:0046CA8Do
; wchar_t a_intern__fmtIp
a_intern__fmtIp:			; DATA XREF: .text:0046CAA6o
		unicode	0, <_INTERN_.Fmt!%ip!%iA>,0
; char aFmtIw[]
aFmtIw		db 'Fmt!%iW',0           ; DATA XREF: .text:0046CB4Fo
		db 0
; wchar_t a_intern__fmtIw
a_intern__fmtIw:			; DATA XREF: .text:0046CB67o
		unicode	0, <_INTERN_.Fmt!%iW>,0
; char aFmtIpIw[]
aFmtIpIw	db 'Fmt!%ip!%iW',0        ; DATA XREF: .text:0046CBDDo
; wchar_t a_intern__fmt_0
a_intern__fmt_0:			; DATA XREF: .text:0046CBF6o
		unicode	0, <_INTERN_.Fmt!%ip!%iW>,0
; wchar_t asc_53C0BC
asc_53C0BC:				; DATA XREF: .text:0046CD07o
		unicode	0, <, >,0
; wchar_t asc_53C0C2
asc_53C0C2:				; DATA XREF: .text:0046CD71o
		unicode	0, < = >,0
; wchar_t word_53C0CA
word_53C0CA	dw 2Eh			; DATA XREF: .text:0046CDDDo
a___2:
		unicode	0, <..>,0
; wchar_t aConstX
aConstX:				; DATA XREF: .text:0046D353o
		unicode	0, <CONST !%X =>
		dw 3Eh
		unicode	0, < >,0
aLowMemoryUnabl:			; DATA XREF: .text:loc_46D621o
		unicode	0, <  Low memory, unable to recognize loop variables>,0
aLowMemoryUna_0:			; DATA XREF: .text:0046E637o
		unicode	0, <  Low memory, unable to save analysis data>,0
aAnalysingS:				; DATA XREF: .text:0046EC1Eo
		unicode	0, <Analysing !%s>,0
aSomeStaticImpo:			; DATA XREF: .text:0046EC45o
		unicode	0, <  Some static imports are not yet resolved>,0
; wchar_t a_udl
a_udl:					; DATA XREF: .text:0046ECECo
		unicode	0, <\*.udl>,0
a1SProcedure:				; DATA XREF: .text:0046F6FEo
		unicode	0, <  1 !%s procedure>,0
aFuzzy:					; DATA XREF: .text:0046F6E5o
		unicode	0, <fuzzy>,0
aStrict:				; DATA XREF: .text:loc_46F6F2o
		unicode	0, <strict>,0
aISProcedures:				; DATA XREF: .text:0046F740o
		unicode	0, <  !%i !%s procedures>,0
a1CallToKnownFu:			; DATA XREF: .text:0046F76Ao
		unicode	0, <  1 call to known function>,0
aICallsToKnownF:			; DATA XREF: .text:0046F79Bo
		unicode	0, <  !%i calls to known functions>,0
; wchar_t asc_53C2F6
asc_53C2F6:				; DATA XREF: .text:0046F7C1o
		unicode	0, <  >,0
a1CallToKnown:				; DATA XREF: .text:0046F7E2o
		unicode	0, <  1 call to known, >,0
aICallsToKnown:				; DATA XREF: .text:0046F807o
		unicode	0, <  !%i calls to known, >,0
a1CallToGuessed:			; DATA XREF: .text:0046F82Do
		unicode	0, <1 call to guessed functions>,0
aICallsToGuesse:			; DATA XREF: .text:0046F855o
		unicode	0, <!%i calls to guessed functions>,0
; wchar_t a1S
a1S:					; DATA XREF: .text:0046F8B2o
		unicode	0, <1 !%s>,0
aSwitchOrCascad:			; DATA XREF: .text:0046F899o
		unicode	0, <switch or cascaded IF>,0
aSwitch_0:				; DATA XREF: .text:loc_46F8A6o
		unicode	0, <switch>,0
; wchar_t aIS_4
aIS_4:					; DATA XREF: .text:0046F8F7o
		unicode	0, <!%i !%s>,0
aSwitchesAndCas:			; DATA XREF: .text:0046F8DDo
		unicode	0, <switches and cascaded IFs>,0
aSwitches:				; DATA XREF: .text:loc_46F8EAo
		unicode	0, <switches>,0
a1Loop:					; DATA XREF: .text:0046F943o
		unicode	0, <1 loop>,0
aILoops:				; DATA XREF: .text:0046F978o
		unicode	0, <!%i loops>,0
; wchar_t aAnalysingSPlug
aAnalysingSPlug:			; DATA XREF: .text:0046FA88o
		unicode	0, <Analysing !%s - $ - plugin !%s>,0
aLowMemoryAutom:			; DATA XREF: .text:0046FB16o
		unicode	0, <Low memory, automatic analysis not possible>,0
; wchar_t aThread_informa
aThread_informa:			; DATA XREF: .text:0046FF62o
		unicode	0, <THREAD_INFORMATION_BLOCK_95>,0
; wchar_t aThread_infor_0
aThread_infor_0:			; DATA XREF: .text:0046FF81o
		unicode	0, <THREAD_INFORMATION_BLOCK_NT>,0
; wchar_t aRtl_user_proce
aRtl_user_proce:			; DATA XREF: .text:00470065o
		unicode	0, <RTL_USER_PROCESS_PARAMETERS>,0
; wchar_t aRtl_drive_lett
aRtl_drive_lett:			; DATA XREF: .text:00470093o
		unicode	0, <RTL_DRIVE_LETTER_CURDIR>,0
; wchar_t aPeb_win2000
aPeb_win2000:				; DATA XREF: .text:0047017Co
		unicode	0, <PEB_WIN2000>,0
; wchar_t aPeb_winxp
aPeb_winxp:				; DATA XREF: .text:0047019Bo
		unicode	0, <PEB_WINXP>,0
; wchar_t aKuser_shared_0
aKuser_shared_0:			; DATA XREF: .text:004702BEo
		unicode	0, <KUSER_SHARED_DATA>,0
; wchar_t a04x_1
a04x_1:					; DATA XREF: .text:00470575o
		unicode	0, <[!%04X] >,0
; wchar_t aGdi_table_entr
aGdi_table_entr:			; DATA XREF: .text:00470591o
		unicode	0, <GDI_TABLE_ENTRY>,0
; wchar_t aRtlallocatehea
aRtlallocatehea:			; DATA XREF: .text:00470972o
		unicode	0, <RtlAllocateHeap>,0
; wchar_t aRtlencodepoint
aRtlencodepoint:			; DATA XREF: .text:0047098Ao
		unicode	0, <RtlEncodePointer>,0
; wchar_t aRtlentercritic
aRtlentercritic:			; DATA XREF: .text:004709A2o
		unicode	0, <RtlEnterCriticalSection>,0
; wchar_t aRtlleavecritic
aRtlleavecritic:			; DATA XREF: .text:004709BAo
		unicode	0, <RtlLeaveCriticalSection>,0
		db 0
		db    0
aLowMemory_0:				; DATA XREF: .text:004711A7o
		unicode	0, <Low memory\:>,0
aOutOfMemoryInJ:			; DATA XREF: .text:loc_47119Bo
		unicode	0, <Out of memory in jump table. Some calls and jumps will be>
		unicode	0, < missed in Jump path and Call tree.>,0
		db 0
		db    0
; wchar_t aOffsetI
aOffsetI:				; DATA XREF: .text:004723D1o
		unicode	0, <Offset[!%i]>,0
; wchar_t aI_1
aI_1:					; DATA XREF: .text:004723E3o
		unicode	0, <!%i>,0
; const	WCHAR aPlacement_1
aPlacement_1:				; DATA XREF: .text:00473004o
		unicode	0, <Placement>,0
; wchar_t aIIIII_1
aIIIII_1:				; DATA XREF: .text:00472FFFo
		unicode	0, <!%i,!%i,!%i,!%i,!%i>,0
; const	WCHAR aIco_aaamain_0
aIco_aaamain_0:				; DATA XREF: .text:00473AFFo
		unicode	0, <ICO_AAAMAIN>,0
; const	WCHAR aMsctls_statu_0
aMsctls_statu_0:			; DATA XREF: .text:00473B44o
		unicode	0, <msctls_statusbar32>,0
; wchar_t asc_53C868
asc_53C868:				; DATA XREF: .text:00473DF2o
		unicode	0, < - >,0
; const	WCHAR aSystabcontrol3
aSystabcontrol3:			; DATA XREF: .text:00474C20o
		unicode	0, <SysTabControl32>,0

_data		ends
		