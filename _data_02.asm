_data		segment	para public 'DATA' use32

; Exported entry 780. _bincmd
; Exported entry 781. bincmd
		public bincmd
; t_bincmd bincmd[]
bincmd		t_bincmd <offset aPause, 3014h, 0, 1, 0FFh, 90h, 0, 0, 0, 0, 0, 0, 0>; 0
					; DATA XREF: .text:0043F291o
					; .text:0048D948o
					; _bincmd
		t_bincmd <offset aNop_0, 0, 4000000h, 1, 0FFh, 90h, 0, 0, 0, 0, 0, 0, \ ; "NOP"
     offset loc_4C60EC>; 0
		t_bincmd <offset aNop_0, 0C0000000h, 4000000h, 2, 0FFFFh, 190Fh, 0, \ ; "NOP"
     16h, 0, 0, 0, 0, offset loc_4C60EC>; 0
		t_bincmd <offset aNop_0, 0C0000000h, 4000000h, 2, 0FFFFh, 1A0Fh, 0, \ ; "NOP"
     16h, 0, 0, 0, 0, offset loc_4C60EC>; 0
		t_bincmd <offset aNop_0, 0C0000000h, 4000000h, 2, 0FFFFh, 1B0Fh, 0, \ ; "NOP"
     16h, 0, 0, 0, 0, offset loc_4C60EC>; 0
		t_bincmd <offset aNop_0, 0C0000000h, 4000000h, 2, 0FFFFh, 1C0Fh, 0, \ ; "NOP"
     16h, 0, 0, 0, 0, offset loc_4C60EC>; 0
		t_bincmd <offset aNop_0, 0C0000000h, 4000000h, 2, 0FFFFh, 1D0Fh, 0, \ ; "NOP"
     16h, 0, 0, 0, 0, offset loc_4C60EC>; 0
		t_bincmd <offset aNop_0, 0C0000000h, 4000000h, 2, 0FFFFh, 1E0Fh, 0, \ ; "NOP"
     16h, 0, 0, 0, 0, offset loc_4C60EC>; 0
		t_bincmd <offset aNop_0, 0, 4000000h, 2, 0FFFFh, 1F0Fh, 0, 16h, 0, 0, \ ; "NOP"
     0, 0, offset loc_4C60EC>; 0
		t_bincmd <offset aMonitor, 40000016h, 0, 3, 0FFFFFFh, 0C8010Fh, 0, \ ; "MONITOR"
     40000025h, 4003000Ah, 4003000Bh, 0, 0, 0>; 0
		t_bincmd <offset aMwait, 40000016h, 0, 3, 0FFFFFFh, 0C9010Fh, 0, \ ; "MWAIT"
     40030008h, 4003000Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aClac, 40000016h, 0, 3, 0FFFFFFh, 0CA010Fh, 0, \ ; "CLAC"
     40030008h, 4003000Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aStac, 40000016h, 0, 3, 0FFFFFFh, 0CB010Fh, 0, \ ; "STAC"
     40030008h, 4003000Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aAaa, 40100000h, 0, 1, 0FFh, 37h, 0, 60000001h, 0, 0,\ ; "AAA"
     0, 0, 0>	; 0
		t_bincmd <offset aAad, 40100000h, 0, 2, 0FFFFh, 0AD5h, 0, 60000003h, \ ; "AAD"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aAad, 40100000h, 0, 1, 0FFh, 0D5h, 0, 60000003h, \ ; "AAD"
     10071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aAam, 40100000h, 0, 2, 0FFFFh, 0AD4h, 0, 60000003h, \ ; "AAM"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aAam, 40100000h, 0, 1, 0FFh, 0D4h, 0, 60000003h, \ ; "AAM"
     10071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aAas, 40100000h, 0, 1, 0FFh, 3Fh, 0, 60000001h, 0, 0,\ ; "AAS"
     0, 0, 0>	; 0
		t_bincmd <offset aAdc, 20100020h, 6, 1, 0FEh, 14h, 0, 2000000Ch, \ ; "ADC"
     70074h, 0, 0, 0, offset loc_4C61A7>; 0
		t_bincmd <offset aAdc, 20110020h, 6, 1, 38FEh, 1080h, 0, 28000016h, \ ; "ADC"
     70074h, 0, 0, 0, offset loc_4C61A7>; 0
		t_bincmd <offset aAdc, 20110020h, 6, 1, 38FEh, 1082h, 0, 28000016h, \ ; "ADC"
     76h, 0, 0, 0, offset loc_4C61A7>; 0
		t_bincmd <offset aAdc, 20110020h, 6, 1, 0FEh, 10h, 0, 20000016h, 10h, \ ; "ADC"
     0, 0, 0, offset loc_4C61A7>; 0
		t_bincmd <offset aAdc, 20100020h, 6, 1, 0FEh, 12h, 0, 20000010h, 16h, \ ; "ADC"
     0, 0, 0, offset loc_4C61A7>; 0
		t_bincmd <offset aAdd, 100020h, 1000006h, 1, 0FEh, 4, 0, 2000000Ch, \ ; "ADD"
     74h, 0, 0, offset loc_40779C, offset loc_4C6168>; 0
		t_bincmd <offset aAdd, 110020h, 1000006h, 1, 38FEh, 80h, 0, 28000016h,\ ; "ADD"
     74h, 0, 0, offset loc_40779C, offset loc_4C6168>; 0
		t_bincmd <offset aAdd, 110020h, 1000006h, 1, 38FEh, 82h, 0, 28000016h,\ ; "ADD"
     76h, 0, 0, offset loc_40779C, offset loc_4C6168>; 0
		t_bincmd <offset aAdd, 110020h, 1000006h, 1, 0FEh, 0, 0, 20000016h, \ ; "ADD"
     10h, 0, 0, offset loc_40779C, offset loc_4C6168>; 0
		t_bincmd <offset aAdd, 100020h, 1000006h, 1, 0FEh, 2, 0, 20000010h, \ ; "ADD"
     16h, 0, 0, offset loc_40779C, offset loc_4C6168>; 0
		t_bincmd <offset aAnd, 100024h, 2, 1, 0FEh, 24h, 0, 2003000Ch, 30074h,\ ; "AND"
     0, 0, offset loc_407924, offset loc_4C627E>; 0
		t_bincmd <offset aAnd, 110024h, 2, 1, 38FEh, 2080h, 0, 28030016h, \ ; "AND"
     30074h, 0, 0, offset loc_407924, offset loc_4C627E>; 0
		t_bincmd <offset aAnd, 110024h, 2, 1, 38FEh, 2082h, 0, 28030016h, \ ; "AND"
     30076h, 0, 0, offset loc_407924, offset loc_4C627E>; 0
		t_bincmd <offset aAnd, 110024h, 2, 1, 0FEh, 20h, 0, 20030016h, 30010h,\ ; "AND"
     0, 0, offset loc_407924, offset loc_4C627E>; 0
		t_bincmd <offset aAnd, 100024h, 2, 1, 0FEh, 22h, 0, 20030010h, 30016h,\ ; "AND"
     0, 0, offset loc_407924, offset loc_4C627E>; 0
		t_bincmd <offset aArpl, 40200016h, 0, 1, 0FFh, 63h, 0, 20000018h, 11h,\ ; "ARPL"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aBound, 40000000h, 0, 1, 0FFh, 62h, 0, 20010h, \ ; "BOUND"
     40001Eh, 0, 0, 0, 0>;	0
		t_bincmd <offset aBsf, 100000h, 2, 2, 0FFFFh, 0BC0Fh, 0, 10000010h, \ ; "BSF"
     30016h, 0, 0, 0, 0>; 0
		t_bincmd <offset aBsr, 107000h, 2, 2, 0FFFFh, 0BD0Fh, 0, 10000010h, \ ; "BSR"
     30016h, 0, 0, 0, 0>; 0
		t_bincmd <offset aBswap, 0, 0, 2, 0F8FFh, 0C80Fh, 0, 23000013h, 0, 0, \ ; "BSWAP"
     0, offset loc_407CEC, 0>; 0
		t_bincmd <offset aBt, 100004h, 8, 2, 0FFFFh, 0A30Fh, 0, 30016h, \ ; "BT"
     40010h, 0, 0, 0, 0>; 0
		t_bincmd <offset aBt, 100004h, 8, 2, 38FFFFh, 20BA0Fh, 0, 8030016h, \ ; "BT"
     40071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aBtc, 110000h, 8, 2, 0FFFFh, 0BB0Fh, 0, 22030016h, \ ; "BTC"
     40010h, 0, 0, 0, 0>; 0
		t_bincmd <offset aBtc, 110000h, 8, 2, 38FFFFh, 38BA0Fh, 0, 2A030016h, \ ; "BTC"
     40071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aBtr, 110000h, 8, 2, 0FFFFh, 0B30Fh, 0, 22030016h, \ ; "BTR"
     40010h, 0, 0, 0, 0>; 0
		t_bincmd <offset aBtr, 110000h, 8, 2, 38FFFFh, 30BA0Fh, 0, 2A030016h, \ ; "BTR"
     40071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aBts, 110000h, 8, 2, 0FFFFh, 0AB0Fh, 0, 22030016h, \ ; "BTS"
     40010h, 0, 0, 0, 0>; 0
		t_bincmd <offset aBts, 110000h, 8, 2, 38FFFFh, 28BA0Fh, 0, 2A030016h, \ ; "BTS"
     40071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCall, 200000Ch, 0, 1, 0FFh, 0E8h, 0, 8006Ch, \ ; "CALL"
     5000002Dh, 0, 0, offset loc_408478, offset loc_4C699D>; 0
		t_bincmd <offset aCall, 200000Ch, 0, 1, 38FFh, 10FFh, 0, 80016h, \ ; "CALL"
     5000002Dh, 0, 0, offset loc_408478, offset loc_4C699D>; 0
		t_bincmd <offset aCall, 4200000Dh, 0, 1, 0FFh, 9Ah, 0, 9006Eh, \ ; "CALL"
     5000002Eh, 0, 0, 0, 0>; 0
		t_bincmd <offset aCall, 4200000Dh, 0, 1, 38FFh, 18FFh, 0, 49001Fh, \ ; "CALL"
     5000002Eh, 0, 0, 0, 0>; 0
		t_bincmd <offset aCbw, 100h, 0, 1, 0FFh, 98h, 0, 60000003h, 40000001h,\ ; "CBW"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aCbw, 100h, 0, 1, 0FFh, 98h, 0, 60000003h, 1, 0, 0, \ ; "CBW"
     0, 0>		; 0
		t_bincmd <offset aCdq, 200h, 0, 1, 0FFh, 99h, 0, 5000000Bh, 40000008h,\ ; "CDQ"
     0, 0, 0, offset loc_4C6AA1>; 0
		t_bincmd <offset aCdq, 200h, 0, 1, 0FFh, 99h, 0, 5000000Bh, 8, 0, 0, \ ; "CDQ"
     0, offset loc_4C6AA1>; 0
		t_bincmd <offset aClc, 300000h, 0, 1, 0FFh, 0F8h, 0, 0, 0, 0, 0, 0, \ ; "CLC"
     offset loc_4C6A28>; 0
		t_bincmd <offset aCld, 500000h, 0, 1, 0FFh, 0FCh, 0, 0, 0, 0, 0, 0, \ ; "CLD"
     offset loc_4C6A18>; 0
		t_bincmd <offset aClflush, 40040000h, 0, 2, 38FFFFh, 38AE0Fh, 0, \ ; "CLFLUSH"
     400027h, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aCli, 40000000h, 0, 1, 0FFh, 0FAh, 0, 0, 0, 0, 0, 0, \ ; "CLI"
     0>		; 0
		t_bincmd <offset aClts, 40000017h, 0, 2, 0FFFFh, 60Fh, 0, 60000078h, \ ; "CLTS"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmc, 300000h, 0, 1, 0FFh, 0F5h, 0, 0, 0, 0, 0, 0, \ ; "CMC"
     offset loc_4C6A35>; 0
		t_bincmd <offset aCmovo, 10000002h, 5000000h, 2, 0FFFFh, 400Fh, 0, \ ; "CMOVO"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovno, 10000002h, 5000000h, 2, 0FFFFh, 410Fh, 0, \ ; "CMOVNO"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovb, 30000002h, 5000004h, 2, 0FFFFh, 420Fh, 0, \ ; "CMOVB"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovc, 30000002h, 5000008h, 2, 0FFFFh, 420Fh, 0, \ ; "CMOVC"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovnae, 30000002h, 5000004h, 2, 0FFFFh, 420Fh, 0, \ ; "CMOVNAE"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovae, 30000002h, 5000004h, 2, 0FFFFh, 430Fh, 0, \ ; "CMOVAE"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovnb, 30000002h, 5000004h, 2, 0FFFFh, 430Fh, 0, \ ; "CMOVNB"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovnc, 30000002h, 5000008h, 2, 0FFFFh, 430Fh, 0, \ ; "CMOVNC"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmove, 10000002h, 5000001h, 2, 0FFFFh, 440Fh, 0, \ ; "CMOVE"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovz, 10000002h, 5000002h, 2, 0FFFFh, 440Fh, 0, \ ; "CMOVZ"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovne, 10000002h, 5000001h, 2, 0FFFFh, 450Fh, 0, \ ; "CMOVNE"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovnz, 10000002h, 5000002h, 2, 0FFFFh, 450Fh, 0, \ ; "CMOVNZ"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovbe, 30000002h, 5000000h, 2, 0FFFFh, 460Fh, 0, \ ; "CMOVBE"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovna, 30000002h, 5000000h, 2, 0FFFFh, 460Fh, 0, \ ; "CMOVNA"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmova, 30000002h, 5000000h, 2, 0FFFFh, 470Fh, 0, \ ; "CMOVA"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovnbe, 30000002h, 5000000h, 2, 0FFFFh, 470Fh, 0, \ ; "CMOVNBE"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovs, 10000002h, 5000000h, 2, 0FFFFh, 480Fh, 0, \ ; "CMOVS"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovns, 10000002h, 5000000h, 2, 0FFFFh, 490Fh, 0, \ ; "CMOVNS"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovpe, 10000002h, 5000000h, 2, 0FFFFh, 4A0Fh, 0, \ ; "CMOVPE"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovp, 10000002h, 5000000h, 2, 0FFFFh, 4A0Fh, 0, \ ; "CMOVP"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovpo, 10000002h, 5000000h, 2, 0FFFFh, 4B0Fh, 0, \ ; "CMOVPO"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovnp, 10000002h, 5000000h, 2, 0FFFFh, 4B0Fh, 0, \ ; "CMOVNP"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovl, 10000002h, 5000000h, 2, 0FFFFh, 4C0Fh, 0, \ ; "CMOVL"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovnge, 10000002h, 5000000h, 2, 0FFFFh, 4C0Fh, 0, \ ; "CMOVNGE"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovge, 10000002h, 5000000h, 2, 0FFFFh, 4D0Fh, 0, \ ; "CMOVGE"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovnl, 10000002h, 5000000h, 2, 0FFFFh, 4D0Fh, 0, \ ; "CMOVNL"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovle, 10000002h, 5000000h, 2, 0FFFFh, 4E0Fh, 0, \ ; "CMOVLE"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovng, 10000002h, 5000000h, 2, 0FFFFh, 4E0Fh, 0, \ ; "CMOVNG"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovg, 10000002h, 5000000h, 2, 0FFFFh, 4F0Fh, 0, \ ; "CMOVG"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovnle, 10000002h, 5000000h, 2, 0FFFFh, 4F0Fh, 0, \ ; "CMOVNLE"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmp, 4100024h, 5, 1, 0FEh, 3Ch, 0, 0Ch, 74h, 0, 0, \ ; "CMP"
     0, offset loc_4C637A>; 0
		t_bincmd <offset aCmp, 4100024h, 5, 1, 38FEh, 3880h, 0, 8000016h, 74h,\ ; "CMP"
     0, 0, 0, offset loc_4C637A>; 0
		t_bincmd <offset aCmp, 4100024h, 5, 1, 38FEh, 3882h, 0, 8000016h, 76h,\ ; "CMP"
     0, 0, 0, offset loc_4C637A>; 0
		t_bincmd <offset aCmp, 4100024h, 5, 1, 0FEh, 38h, 0, 16h, 10h, 0, 0, \ ; "CMP"
     0, offset loc_4C637A>; 0
		t_bincmd <offset aCmp, 4100024h, 5, 1, 0FEh, 3Ah, 0, 10h, 16h, 0, 0, \ ; "CMP"
     0, offset loc_4C637A>; 0
		t_bincmd <offset aCmpxchg, 4110020h, 5, 2, 0FEFFh, 0B00Fh, 0, \ ; "CMPXCHG"
     20000016h, 10h, 6000000Ch, 0, 0, 0>; 0
		t_bincmd <offset aCmpxchg8b, 150000h, 5, 2, 38FFFFh, 8C70Fh, 0, \ ; "CMPXCHG8B"
     2040001Bh, 60000008h, 6000000Bh, 40000009h, 0, 0>; 0
		t_bincmd <offset aCpuid, 0, 0, 2, 0FFFFh, 0A20Fh, 0, 50000008h, \ ; "CPUID"
     50000009h, 5000000Ah, 5000000Bh, 0, 0>; 0
		t_bincmd <offset aCwd, 100h, 0, 1, 0FFh, 99h, 0, 50000006h, 40000003h,\ ; "CWD"
     0, 0, 0, offset loc_4C6AA1>; 0
		t_bincmd <offset aCwd, 100h, 0, 1, 0FFh, 99h, 0, 50000006h, 3, 0, 0, \ ; "CWD"
     0, offset loc_4C6AA1>; 0
		t_bincmd <offset aCwde, 200h, 0, 1, 0FFh, 98h, 0, 60000008h, \ ; "CWDE"
     40000003h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCwde, 200h, 0, 1, 0FFh, 98h, 0, 60000008h, 3, 0, 0, \ ; "CWDE"
     0, 0>		; 0
		t_bincmd <offset aDaa, 60100000h, 8, 1, 0FFh, 27h, 0, 60000001h, 0, 0,\ ; "DAA"
     0, 0, 0>	; 0
		t_bincmd <offset aDas, 60100000h, 8, 1, 0FFh, 2Fh, 0, 60000001h, 0, 0,\ ; "DAS"
     0, 0, 0>	; 0
		t_bincmd <offset aDec_1, 710020h, 2, 1, 38FEh, 8FEh, 0, 28000016h, 0, \ ; "DEC"
     0, 0, offset loc_407C04, offset loc_4C63F3>; 0
		t_bincmd <offset aDec_1, 700000h, 2, 1, 0F8h, 48h, 0, 20000013h, 0, 0,\ ; "DEC"
     0, offset loc_407C04, offset loc_4C63F3>; 0
		t_bincmd <offset aDiv_2, 100000h, 0, 1, 38FFh, 30F6h, 0, 8000017h, \ ; "DIV"
     60000003h, 0, 0, 0, 0>; 0
		t_bincmd <offset aDiv_2, 100000h, 0, 1, 38FFh, 30F7h, 0, 0A01001Ah, \ ; "DIV"
     6000000Eh, 6000000Ch, 0, 0, 0>; 0
		t_bincmd <offset aEmms, 0, 0, 2, 0FFFFh, 770Fh, 0, 0, 0, 0, 0, 0, 0>; 0	; "EMMS"
		t_bincmd <offset aEnter, 2000000h, 0, 1, 0FFh, 0C8h, 0, 0A0073h, \ ; "ENTER"
     10072h, 5000002Ch, 5000000Fh, offset loc_408114, 0>; 0
		t_bincmd <offset aMwait+2, 0, 0, 1, 0FFh, 9Bh, 0, 0, 0, 0, 0, 0, 0>; 0 ; "WAIT"
		t_bincmd <offset aFwait, 0, 0, 1, 0FFh, 9Bh, 0, 0, 0, 0, 0, 0, 0>; 0 ; "FWAIT"
		t_bincmd <offset aHlt, 40000017h, 0, 1, 0FFh, 0F4h, 0, 0, 0, 0, 0, 0, \ ; "HLT"
     0>		; 0
		t_bincmd <offset aIdiv, 100000h, 0, 1, 38FFh, 38F6h, 0, 8020017h, \ ; "IDIV"
     60000003h, 0, 0, 0, 0>; 0
		t_bincmd <offset aIdiv, 100000h, 0, 1, 38FFh, 38F7h, 0, 0A02001Ah, \ ; "IDIV"
     6000000Eh, 6000000Ch, 0, 0, 0>; 0
		t_bincmd <offset aImul, 100000h, 0, 1, 38FFh, 28F6h, 0, 60000003h, \ ; "IMUL"
     8020017h, 40020001h, 0, 0, 0>; 0
		t_bincmd <offset aImul, 100000h, 0, 1, 38FFh, 28F7h, 0, 5000000Eh, \ ; "IMUL"
     6000000Ch, 0A02001Ah, 0, 0, 0>; 0
		t_bincmd <offset aImul, 100000h, 0, 2, 0FFFFh, 0AF0Fh, 0, 20000010h, \ ; "IMUL"
     2000016h, 0, 0, offset loc_407B48, offset loc_4C6A6A>; 0
		t_bincmd <offset aImul, 100000h, 0, 1, 0FFh, 6Bh, 0, 10000010h, \ ; "IMUL"
     2000016h, 76h, 0, offset loc_407B84, 0>; 0
		t_bincmd <offset aImul, 100000h, 0, 1, 0FFh, 69h, 0, 10000010h, \ ; "IMUL"
     2000016h, 20074h, 0, offset loc_407B84, 0>; 0
		t_bincmd <offset aIn, 40000035h, 0, 1, 0FEh, 0E4h, 0, 1000000Ch, \ ; "IN"
     0B0071h, 0, 0, 0, 0>;	0
		t_bincmd <offset aIn, 40000035h, 0, 1, 0FEh, 0ECh, 0, 1000000Ch, \ ; "IN"
     0B0007h, 0, 0, 0, 0>;	0
		t_bincmd <offset aInc, 710020h, 2, 1, 38FEh, 0FEh, 0, 28000016h, 0, 0,\ ; "INC"
     0, offset loc_407BC8, offset loc_4C63B9>; 0
		t_bincmd <offset aInc, 700000h, 2, 1, 0F8h, 40h, 0, 20000013h, 0, 0, \ ; "INC"
     0, offset loc_407BC8, offset loc_4C63B9>; 0
		t_bincmd <offset aInt_3, 0Eh, 0, 1, 0FFh, 0CDh, 0, 71h, 0, 0, 0, 0, 0>;	0 ; "INT"
		t_bincmd <offset aInt3_1, 4000000Eh, 0, 1, 0FFh, 0CCh, 0, 0, 0, 0, 0, \ ; "INT3"
     0, 0>		; 0
		t_bincmd <offset aInto, 4000000Eh, 0, 1, 0FFh, 0CEh, 0, 0, 0, 0, 0, 0,\ ; "INTO"
     0>		; 0
		t_bincmd <offset aInt1_1, 0C000000Eh, 800000h, 1, 0FFh, 0F1h, 0, 0, 0,\ ; "INT1"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aIcebp, 0C000000Eh, 800000h, 1, 0FFh, 0F1h, 0, 0, 0, \ ; "ICEBP"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aInvd, 40000017h, 0, 2, 0FFFFh, 80Fh, 0, 0, 0, 0, 0, \ ; "INVD"
     0, 0>		; 0
		t_bincmd <offset aInvlpg, 40040017h, 0, 2, 38FFFFh, 38010Fh, 0, \ ; "INVLPG"
     400027h, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aIret, 4A100010h, 0, 1, 0FFh, 0CFh, 0, 40090029h, 0, \ ; "IRET*"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aJo, 10020008h, 0, 1, 0FFh, 70h, 0, 8006Dh, 0, 0, 0, \ ; "JO"
     0, offset loc_4C6643>; 0
		t_bincmd <offset aJo, 10020008h, 0, 2, 0FFFFh, 800Fh, 0, 8006Ch, 0, 0,\ ; "JO"
     0, 0, offset loc_4C6643>; 0
		t_bincmd <offset aJno, 10020008h, 0, 1, 0FFh, 71h, 0, 8006Dh, 0, 0, 0,\ ; "JNO"
     0, offset loc_4C666C>; 0
		t_bincmd <offset aJno, 10020008h, 0, 2, 0FFFFh, 810Fh, 0, 8006Ch, 0, \ ; "JNO"
     0, 0, 0, offset loc_4C666C>; 0
		t_bincmd <offset aJb, 30020008h, 4, 1, 0FFh, 72h, 0, 8006Dh, 0, 0, 0, \ ; "JB"
     0, offset loc_4C654D>; 0
		t_bincmd <offset aJc, 30020008h, 8, 1, 0FFh, 72h, 0, 8006Dh, 0, 0, 0, \ ; "JC"
     0, offset loc_4C654D>; 0
		t_bincmd <offset aJnae, 30020008h, 4, 1, 0FFh, 72h, 0, 8006Dh, 0, 0, \ ; "JNAE"
     0, 0, offset loc_4C654D>; 0
		t_bincmd <offset aJb, 30020008h, 4, 2, 0FFFFh, 820Fh, 0, 8006Ch, 0, 0,\ ; "JB"
     0, 0, offset loc_4C654D>; 0
		t_bincmd <offset aJc, 30020008h, 8, 2, 0FFFFh, 820Fh, 0, 8006Ch, 0, 0,\ ; "JC"
     0, 0, offset loc_4C654D>; 0
		t_bincmd <offset aJnae, 30020008h, 4, 2, 0FFFFh, 820Fh, 0, 8006Ch, 0, \ ; "JNAE"
     0, 0, 0, offset loc_4C654D>; 0
		t_bincmd <offset aJae, 30020008h, 4, 1, 0FFh, 73h, 0, 8006Dh, 0, 0, 0,\ ; "JAE"
     0, offset loc_4C6524>; 0
		t_bincmd <offset aJnb, 30020008h, 4, 1, 0FFh, 73h, 0, 8006Dh, 0, 0, 0,\ ; "JNB"
     0, offset loc_4C6524>; 0
		t_bincmd <offset aJnc, 30020008h, 8, 1, 0FFh, 73h, 0, 8006Dh, 0, 0, 0,\ ; "JNC"
     0, offset loc_4C6524>; 0
		t_bincmd <offset aJae, 30020008h, 4, 2, 0FFFFh, 830Fh, 0, 8006Ch, 0, \ ; "JAE"
     0, 0, 0, offset loc_4C6524>; 0
		t_bincmd <offset aJnb, 30020008h, 4, 2, 0FFFFh, 830Fh, 0, 8006Ch, 0, \ ; "JNB"
     0, 0, 0, offset loc_4C6524>; 0
		t_bincmd <offset aJnc, 30020008h, 8, 2, 0FFFFh, 830Fh, 0, 8006Ch, 0, \ ; "JNC"
     0, 0, 0, offset loc_4C6524>; 0
		t_bincmd <offset aJe, 10020008h, 1, 1, 0FFh, 74h, 0, 8006Dh, 0, 0, 0, \ ; "JE"
     0, offset loc_4C64A9>; 0
		t_bincmd <offset aJz, 10020008h, 2, 1, 0FFh, 74h, 0, 8006Dh, 0, 0, 0, \ ; "JZ"
     0, offset loc_4C64A9>; 0
		t_bincmd <offset aJe, 10020008h, 1, 2, 0FFFFh, 840Fh, 0, 8006Ch, 0, 0,\ ; "JE"
     0, 0, offset loc_4C64A9>; 0
		t_bincmd <offset aJz, 10020008h, 2, 2, 0FFFFh, 840Fh, 0, 8006Ch, 0, 0,\ ; "JZ"
     0, 0, offset loc_4C64A9>; 0
		t_bincmd <offset aJne, 10020008h, 1, 1, 0FFh, 75h, 0, 8006Dh, 0, 0, 0,\ ; "JNE"
     0, offset loc_4C64D2>; 0
		t_bincmd <offset aJnz, 10020008h, 2, 1, 0FFh, 75h, 0, 8006Dh, 0, 0, 0,\ ; "JNZ"
     0, offset loc_4C64D2>; 0
		t_bincmd <offset aJne, 10020008h, 1, 2, 0FFFFh, 850Fh, 0, 8006Ch, 0, \ ; "JNE"
     0, 0, 0, offset loc_4C64D2>; 0
		t_bincmd <offset aJnz, 10020008h, 2, 2, 0FFFFh, 850Fh, 0, 8006Ch, 0, \ ; "JNZ"
     0, 0, 0, offset loc_4C64D2>; 0
		t_bincmd <offset aJbe, 30020008h, 0, 1, 0FFh, 76h, 0, 8006Dh, 0, 0, 0,\ ; "JBE"
     0, offset loc_4C6576>; 0
		t_bincmd <offset aJna, 30020008h, 0, 1, 0FFh, 76h, 0, 8006Dh, 0, 0, 0,\ ; "JNA"
     0, offset loc_4C6576>; 0
		t_bincmd <offset aJbe, 30020008h, 0, 2, 0FFFFh, 860Fh, 0, 8006Ch, 0, \ ; "JBE"
     0, 0, 0, offset loc_4C6576>; 0
		t_bincmd <offset aJna, 30020008h, 0, 2, 0FFFFh, 860Fh, 0, 8006Ch, 0, \ ; "JNA"
     0, 0, 0, offset loc_4C6576>; 0
		t_bincmd <offset aJa, 30020008h, 0, 1, 0FFh, 77h, 0, 8006Dh, 0, 0, 0, \ ; "JA"
     0, offset loc_4C64FB>; 0
		t_bincmd <offset aJnbe, 30020008h, 0, 1, 0FFh, 77h, 0, 8006Dh, 0, 0, \ ; "JNBE"
     0, 0, offset loc_4C64FB>; 0
		t_bincmd <offset aJa, 30020008h, 0, 2, 0FFFFh, 870Fh, 0, 8006Ch, 0, 0,\ ; "JA"
     0, 0, offset loc_4C64FB>; 0
		t_bincmd <offset aJnbe, 30020008h, 0, 2, 0FFFFh, 870Fh, 0, 8006Ch, 0, \ ; "JNBE"
     0, 0, 0, offset loc_4C64FB>; 0
		t_bincmd <offset aJs, 10020008h, 0, 1, 0FFh, 78h, 0, 8006Dh, 0, 0, 0, \ ; "JS"
     0, offset loc_4C66E7>; 0
		t_bincmd <offset aJs, 10020008h, 0, 2, 0FFFFh, 880Fh, 0, 8006Ch, 0, 0,\ ; "JS"
     0, 0, offset loc_4C66E7>; 0
		t_bincmd <offset aJns, 10020008h, 0, 1, 0FFh, 79h, 0, 8006Dh, 0, 0, 0,\ ; "JNS"
     0, offset loc_4C6710>; 0
		t_bincmd <offset aJns, 10020008h, 0, 2, 0FFFFh, 890Fh, 0, 8006Ch, 0, \ ; "JNS"
     0, 0, 0, offset loc_4C6710>; 0
		t_bincmd <offset aJpe, 50020008h, 0, 1, 0FFh, 7Ah, 0, 8006Dh, 0, 0, 0,\ ; "JPE"
     0, offset loc_4C66BE>; 0
		t_bincmd <offset aJp, 50020008h, 0, 1, 0FFh, 7Ah, 0, 8006Dh, 0, 0, 0, \ ; "JP"
     0, offset loc_4C66BE>; 0
		t_bincmd <offset aJpe, 50020008h, 0, 2, 0FFFFh, 8A0Fh, 0, 8006Ch, 0, \ ; "JPE"
     0, 0, 0, offset loc_4C66BE>; 0
		t_bincmd <offset aJp, 50020008h, 0, 2, 0FFFFh, 8A0Fh, 0, 8006Ch, 0, 0,\ ; "JP"
     0, 0, offset loc_4C66BE>; 0
		t_bincmd <offset aJpo, 50020008h, 0, 1, 0FFh, 7Bh, 0, 8006Dh, 0, 0, 0,\ ; "JPO"
     0, offset loc_4C6695>; 0
		t_bincmd <offset aJnp, 50020008h, 0, 1, 0FFh, 7Bh, 0, 8006Dh, 0, 0, 0,\ ; "JNP"
     0, offset loc_4C6695>; 0
		t_bincmd <offset aJpo, 50020008h, 0, 2, 0FFFFh, 8B0Fh, 0, 8006Ch, 0, \ ; "JPO"
     0, 0, 0, offset loc_4C6695>; 0
		t_bincmd <offset aJnp, 50020008h, 0, 2, 0FFFFh, 8B0Fh, 0, 8006Ch, 0, \ ; "JNP"
     0, 0, 0, offset loc_4C6695>; 0
		t_bincmd <offset aJl, 10020008h, 0, 1, 0FFh, 7Ch, 0, 8006Dh, 0, 0, 0, \ ; "JL"
     0, offset loc_4C65F1>; 0
		t_bincmd <offset aJnge, 10020008h, 0, 1, 0FFh, 7Ch, 0, 8006Dh, 0, 0, \ ; "JNGE"
     0, 0, offset loc_4C65F1>; 0
		t_bincmd <offset aJl, 10020008h, 0, 2, 0FFFFh, 8C0Fh, 0, 8006Ch, 0, 0,\ ; "JL"
     0, 0, offset loc_4C65F1>; 0
		t_bincmd <offset aJnge, 10020008h, 0, 2, 0FFFFh, 8C0Fh, 0, 8006Ch, 0, \ ; "JNGE"
     0, 0, 0, offset loc_4C65F1>; 0
		t_bincmd <offset aJge, 10020008h, 0, 1, 0FFh, 7Dh, 0, 8006Dh, 0, 0, 0,\ ; "JGE"
     0, offset loc_4C65C8>; 0
		t_bincmd <offset aJnl, 10020008h, 0, 1, 0FFh, 7Dh, 0, 8006Dh, 0, 0, 0,\ ; "JNL"
     0, offset loc_4C65C8>; 0
		t_bincmd <offset aJge, 10020008h, 0, 2, 0FFFFh, 8D0Fh, 0, 8006Ch, 0, \ ; "JGE"
     0, 0, 0, offset loc_4C65C8>; 0
		t_bincmd <offset aJnl, 10020008h, 0, 2, 0FFFFh, 8D0Fh, 0, 8006Ch, 0, \ ; "JNL"
     0, 0, 0, offset loc_4C65C8>; 0
		t_bincmd <offset aJle, 10020008h, 0, 1, 0FFh, 7Eh, 0, 8006Dh, 0, 0, 0,\ ; "JLE"
     0, offset loc_4C661A>; 0
		t_bincmd <offset aJng, 10020008h, 0, 1, 0FFh, 7Eh, 0, 8006Dh, 0, 0, 0,\ ; "JNG"
     0, offset loc_4C661A>; 0
		t_bincmd <offset aJle, 10020008h, 0, 2, 0FFFFh, 8E0Fh, 0, 8006Ch, 0, \ ; "JLE"
     0, 0, 0, offset loc_4C661A>; 0
		t_bincmd <offset aJng, 10020008h, 0, 2, 0FFFFh, 8E0Fh, 0, 8006Ch, 0, \ ; "JNG"
     0, 0, 0, offset loc_4C661A>; 0
		t_bincmd <offset aJg, 10020008h, 0, 1, 0FFh, 7Fh, 0, 8006Dh, 0, 0, 0, \ ; "JG"
     0, offset loc_4C659F>; 0
		t_bincmd <offset aJnle, 10020008h, 0, 1, 0FFh, 7Fh, 0, 8006Dh, 0, 0, \ ; "JNLE"
     0, 0, offset loc_4C659F>; 0
		t_bincmd <offset aJg, 10020008h, 0, 2, 0FFFFh, 8F0Fh, 0, 8006Ch, 0, 0,\ ; "JG"
     0, 0, offset loc_4C659F>; 0
		t_bincmd <offset aJnle, 10020008h, 0, 2, 0FFFFh, 8F0Fh, 0, 8006Ch, 0, \ ; "JNLE"
     0, 0, 0, offset loc_4C659F>; 0
		t_bincmd <offset aJcxz, 20409h, 0, 1, 0FFh, 0E3h, 0, 40000005h, \ ; "JCXZ"
     8006Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aJecxz, 20809h, 0, 1, 0FFh, 0E3h, 0, 4000000Ah, \ ; "JECXZ"
     8006Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aJmp, 6, 0, 1, 0FFh, 0EBh, 0, 8006Dh, 0, 0, 0, \ ; "JMP"
     offset loc_408438, offset loc_4C648D>; 0
		t_bincmd <offset aJmp, 6, 0, 1, 0FFh, 0E9h, 0, 8006Ch, 0, 0, 0, \ ; "JMP"
     offset loc_408438, offset loc_4C648D>; 0
		t_bincmd <offset aJmp, 6, 0, 1, 38FFh, 20FFh, 0, 80016h, 0, 0, 0, \ ; "JMP"
     offset loc_408438, offset loc_4C648D>; 0
		t_bincmd <offset aJmp, 80000007h, 0, 1, 0FFh, 0EAh, 0, 9006Eh, 0, 0, \ ; "JMP"
     0, 0, 0>	; 0
		t_bincmd <offset aJmp, 40000007h, 0, 1, 38FFh, 28FFh, 0, 849001Fh, 0, \ ; "JMP"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aLahf, 0, 0, 1, 0FFh, 9Fh, 0, 50000002h, 4000006Bh, \ ; "LAHF"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aLar, 40200000h, 2, 2, 0FFFFh, 20Fh, 0, 12030010h, \ ; "LAR"
     2030016h, 0, 0, 0, 0>; 0
		t_bincmd <offset aLds, 40000000h, 0, 1, 0FFh, 0C5h, 0, 50000034h, \ ; "LDS"
     10030010h, 40001Fh, 0, 0, 0>;	0
		t_bincmd <offset aLes, 40000000h, 0, 1, 0FFh, 0C4h, 0, 50000035h, \ ; "LES"
     10030010h, 40001Fh, 0, 0, 0>;	0
		t_bincmd <offset aLfs, 40000000h, 0, 2, 0FFFFh, 0B40Fh, 0, 50000036h, \ ; "LFS"
     10030010h, 40001Fh, 0, 0, 0>;	0
		t_bincmd <offset aLgs, 40000000h, 0, 2, 0FFFFh, 0B50Fh, 0, 50000037h, \ ; "LGS"
     10030010h, 40001Fh, 0, 0, 0>;	0
		t_bincmd <offset aLss_0, 40000000h, 0, 2, 0FFFFh, 0B20Fh, 0, \ ; "LSS"
     50000038h, 10030010h, 40001Fh, 0, 0, 0>; 0
		t_bincmd <offset aLea, 4000000h, 3000000h, 1, 0FFh, 8Dh, 0, 10030010h,\ ; "LEA"
     80400027h, 0, 0, offset loc_407760, offset loc_4C60F2>; 0
		t_bincmd <offset aLeave, 2000000h, 0, 1, 0FFh, 0C9h, 0, 5000000Fh, \ ; "LEAVE"
     40000030h, 0, 0, offset loc_4081E8, offset loc_4C6A4F>; 0
		t_bincmd <offset aLgdt, 40040017h, 0, 2, 38FFFFh, 10010Fh, 0, 40006Fh,\ ; "LGDT"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aLidt, 40040017h, 0, 2, 38FFFFh, 18010Fh, 0, 40006Fh,\ ; "LIDT"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aLldt, 40000017h, 0, 2, 38FFFFh, 10000Fh, 0, \ ; "LLDT"
     2000018h, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aLmsw, 40000017h, 0, 2, 38FFFFh, 30010Fh, 0, \ ; "LMSW"
     60000078h, 2000018h, 0, 0, 0, 0>; 0
		t_bincmd <offset aLoop, 809h, 0, 1, 0FFh, 0E2h, 0, 6000000Ah, 8006Dh, \ ; "LOOP"
     0, 0, offset loc_407C40, 0>; 0
		t_bincmd <offset aLoopd, 809h, 0, 1, 0FFh, 0E2h, 0, 6000000Ah, 8006Dh,\ ; "LOOPD"
     0, 0, offset loc_407C40, 0>; 0
		t_bincmd <offset aLoopw, 409h, 0, 1, 0FFh, 0E2h, 0, 60000005h, 8006Dh,\ ; "LOOPW"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aLoopz, 10000809h, 0, 1, 0FFh, 0E1h, 0, 6000000Ah, \ ; "LOOPZ"
     8006Dh, 0, 0, offset loc_407C40, 0>; 0
		t_bincmd <offset aLoopdz, 10000809h, 0, 1, 0FFh, 0E1h, 0, 6000000Ah, \ ; "LOOPDZ"
     8006Dh, 0, 0, offset loc_407C40, 0>; 0
		t_bincmd <offset aLoopwz, 10000409h, 0, 1, 0FFh, 0E1h, 0, 60000005h, \ ; "LOOPWZ"
     8006Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aLoope, 10000809h, 0, 1, 0FFh, 0E1h, 0, 6000000Ah, \ ; "LOOPE"
     8006Dh, 0, 0, offset loc_407C40, 0>; 0
		t_bincmd <offset aLoopde, 10000809h, 0, 1, 0FFh, 0E1h, 0, 6000000Ah, \ ; "LOOPDE"
     8006Dh, 0, 0, offset loc_407C40, 0>; 0
		t_bincmd <offset aLoopwe, 10000409h, 0, 1, 0FFh, 0E1h, 0, 60000005h, \ ; "LOOPWE"
     8006Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aLoopnz, 10000809h, 0, 1, 0FFh, 0E0h, 0, 6000000Ah, \ ; "LOOPNZ"
     8006Dh, 0, 0, offset loc_407C40, 0>; 0
		t_bincmd <offset aLoopdnz, 10000809h, 0, 1, 0FFh, 0E0h, 0, 6000000Ah, \ ; "LOOPDNZ"
     8006Dh, 0, 0, offset loc_407C40, 0>; 0
		t_bincmd <offset aLoopwnz, 10000409h, 0, 1, 0FFh, 0E0h, 0, 60000005h, \ ; "LOOPWNZ"
     8006Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aLoopne, 10000809h, 0, 1, 0FFh, 0E0h, 0, 6000000Ah, \ ; "LOOPNE"
     8006Dh, 0, 0, offset loc_407C40, 0>; 0
		t_bincmd <offset aLoopdne, 10000809h, 0, 1, 0FFh, 0E0h, 0, 6000000Ah, \ ; "LOOPDNE"
     8006Dh, 0, 0, offset loc_407C40, 0>; 0
		t_bincmd <offset aLoopwne, 10000409h, 0, 1, 0FFh, 0E0h, 0, 60000005h, \ ; "LOOPWNE"
     8006Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aLsl, 40200016h, 0, 2, 0FFFFh, 30Fh, 0, 12000010h, \ ; "LSL"
     2030016h, 0, 0, 0, 0>; 0
		t_bincmd <offset aLtr, 40000017h, 0, 2, 38FFFFh, 18000Fh, 0, 2000018h,\ ; "LTR"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aMov, 21h, 5000000h, 1, 0FEh, 88h, 0, 10000016h, 10h,\ ; "MOV"
     0, 0, offset loc_40769C, offset loc_4C60F2>; 0
		t_bincmd <offset aMov, 21h, 5000000h, 1, 0FEh, 8Ah, 0, 10000010h, 16h,\ ; "MOV"
     0, 0, offset loc_40769C, offset loc_4C60F2>; 0
		t_bincmd <offset aMov, 40080000h, 5000000h, 1, 0C0FFh, 0C08Ch, 0, \ ; "MOV"
     12200016h, 31h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMov, 40040000h, 5000000h, 1, 0FFh, 8Ch, 0, \ ; "MOV"
     10100018h, 31h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMov, 40000000h, 5000000h, 1, 0FFh, 8Eh, 0, \ ; "MOV"
     10000032h, 2200016h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMov, 40000000h, 5000000h, 1, 0FFh, 8Eh, 0, \ ; "MOV"
     10000032h, 2100018h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMov, 21h, 5000000h, 1, 0FEh, 0A0h, 0, 1000000Ch, \ ; "MOV"
     1Dh, 0, 0, offset loc_40769C, offset loc_4C60F2>; 0
		t_bincmd <offset aMov, 21h, 5000000h, 1, 0FEh, 0A2h, 0, 1000001Dh, \ ; "MOV"
     0Ch, 0, 0, offset loc_40769C, offset loc_4C60F2>; 0
		t_bincmd <offset aMov, 1, 5000000h, 1, 0F8h, 0B0h, 0, 10000014h, 71h, \ ; "MOV"
     0, 0, offset loc_40769C, offset loc_4C60F2>; 0
		t_bincmd <offset aMov, 1, 5000000h, 1, 0F8h, 0B8h, 0, 12000013h, 74h, \ ; "MOV"
     0, 0, offset loc_40769C, offset loc_4C60F2>; 0
		t_bincmd <offset aMov, 21h, 5000000h, 1, 38FEh, 0C6h, 0, 1A000016h, \ ; "MOV"
     74h, 0, 0, offset loc_40769C, offset loc_4C60F2>; 0
		t_bincmd <offset aMov, 40000017h, 5000000h, 2, 0FFFFh, 220Fh, 0, \ ; "MOV"
     10000077h, 2830019h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMov, 40000017h, 5000000h, 2, 0FFFFh, 200Fh, 0, \ ; "MOV"
     12830019h, 77h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMov, 40000017h, 5000000h, 2, 0FFFFh, 230Fh, 0, \ ; "MOV"
     10000079h, 2830019h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMov, 40000017h, 5000000h, 2, 0FFFFh, 210Fh, 0, \ ; "MOV"
     12830019h, 79h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovsx, 1, 5000000h, 2, 0FFFFh, 0BE0Fh, 0, 12000010h,\ ; "MOVSX"
     8020017h, 0, 0, 0, offset loc_4C6100>; 0
		t_bincmd <offset aMovsx, 1, 5000000h, 2, 0FFFFh, 0BF0Fh, 0, 12000012h,\ ; "MOVSX"
     8020018h, 0, 0, 0, offset loc_4C610F>; 0
		t_bincmd <offset aMovzx, 1, 5000000h, 2, 0FFFFh, 0B60Fh, 0, 12000010h,\ ; "MOVZX"
     8000017h, 0, 0, 0, offset loc_4C60F2>; 0
		t_bincmd <offset aMovzx, 1, 5000000h, 2, 0FFFFh, 0B70Fh, 0, 12000012h,\ ; "MOVZX"
     8000018h, 0, 0, 0, offset loc_4C60F2>; 0
		t_bincmd <offset aImul+2, 100000h, 0, 1, 38FFh, 20F6h, 0, 60000003h, \ ; "MUL"
     40000001h, 8010017h, 0, 0, 0>; 0
		t_bincmd <offset aImul+2, 100000h, 0, 1, 38FFh, 20F7h, 0, 5000000Eh, \ ; "MUL"
     6000000Ch, 0A01001Ah, 0, 0, 0>; 0
		t_bincmd <offset aNeg, 110020h, 0Ah, 1, 38FEh, 18F6h, 0, 2A000016h, 0,\ ; "NEG"
     0, 0, offset loc_407C70, offset loc_4C642D>; 0
		t_bincmd <offset aNot_1, 10020h, 0, 1, 38FEh, 10F6h, 0, 2A000016h, 0, \ ; "NOT"
     0, 0, offset loc_407CB0, offset loc_4C6469>; 0
		t_bincmd <offset aMonitor+0Ah, 100020h, 6, 1, 0FEh, 0Ch, 0, 2003000Ch,\ ; "OR"
     30074h, 0, 0, offset loc_4079CC, offset loc_4C62BD>; 0
		t_bincmd <offset aMonitor+0Ah, 110020h, 6, 1, 38FEh, 880h, 0, \ ; "OR"
     2A030016h, 30074h, 0, 0, offset loc_4079CC, \
     offset loc_4C62BD>; 0
		t_bincmd <offset aMonitor+0Ah, 110020h, 6, 1, 38FEh, 882h, 0, \ ; "OR"
     2A030016h, 30076h, 0, 0, offset loc_4079CC, \
     offset loc_4C62BD>; 0
		t_bincmd <offset aMonitor+0Ah, 110020h, 6, 1, 0FEh, 8, 0, 22030016h, \ ; "OR"
     30010h, 0, 0, offset loc_4079CC, offset loc_4C62BD>; 0
		t_bincmd <offset aMonitor+0Ah, 100020h, 6, 1, 0FEh, 0Ah, 0, 22030010h,\ ; "OR"
     30016h, 0, 0, offset loc_4079CC, offset loc_4C62BD>; 0
		t_bincmd <offset aOut, 40000035h, 0, 1, 0FEh, 0E6h, 0, 0B0071h, 0Ch, \ ; "OUT"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aOut, 40000035h, 0, 1, 0FEh, 0EEh, 0, 0B0007h, 0Ch, \ ; "OUT"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aPop_0, 200000Bh, 0, 1, 38FFh, 8Fh, 0, 18000016h, \ ; "POP"
     40000028h, 0, 0, offset loc_408048, offset loc_4C6986>; 0
		t_bincmd <offset aPop_0, 200000Bh, 0, 1, 0F8h, 58h, 0, 10000013h, \ ; "POP"
     40000028h, 0, 0, offset loc_408048, offset loc_4C6986>; 0
		t_bincmd <offset aPop_0, 4200000Bh, 0, 1, 0FFh, 1Fh, 0, 10000034h, \ ; "POP"
     40000028h, 0, 0, offset loc_408048, 0>; 0
		t_bincmd <offset aPop_0, 4200000Bh, 0, 1, 0FFh, 7, 0, 10000035h, \ ; "POP"
     40000028h, 0, 0, offset loc_408048, 0>; 0
		t_bincmd <offset aPop_0, 4200000Bh, 800000h, 1, 0FFh, 17h, 0, \ ; "POP"
     10000038h, 40000028h, 0, 0, offset loc_408048, 0>; 0
		t_bincmd <offset aPop_0, 4200000Bh, 0, 2, 0FFFFh, 0A10Fh, 0, \ ; "POP"
     10000036h, 40000028h, 0, 0, offset loc_408048, 0>; 0
		t_bincmd <offset aPop_0, 4200000Bh, 0, 2, 0FFFFh, 0A90Fh, 0, \ ; "POP"
     10000037h, 40000028h, 0, 0, offset loc_408048, 0>; 0
		t_bincmd <offset aPopa, 0A000000h, 0, 1, 0FFh, 61h, 0, 4000002Bh, 0, \ ; "POPA*"
     0, 0, offset loc_408340, 0>; 0
		t_bincmd <offset aPopf, 0A10000Bh, 0, 1, 0FFh, 9Dh, 0, 5000006Ah, \ ; "POPF*"
     4000002Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPush, 200000Ah, 0, 1, 38FFh, 30FFh, 0, 8000016h, \ ; "PUSH"
     5000002Ch, 0, 0, offset loc_407EF4, offset loc_4C6962>; 0
		t_bincmd <offset aPush, 200000Ah, 0, 1, 0F8h, 50h, 0, 13h, 5000002Ch, \ ; "PUSH"
     0, 0, offset loc_407EF4, offset loc_4C6962>; 0
		t_bincmd <offset aPush, 200000Ah, 0, 1, 0FFh, 6Ah, 0, 8000076h, \ ; "PUSH"
     5000002Ch, 0, 0, offset loc_407EF4, offset loc_4C6962>; 0
		t_bincmd <offset aPush, 200000Ah, 0, 1, 0FFh, 68h, 0, 8000075h, \ ; "PUSH"
     5000002Ch, 0, 0, offset loc_407EF4, offset loc_4C6962>; 0
		t_bincmd <offset aPush, 4200000Ah, 0, 1, 0FFh, 0Eh, 0, 33h, 5000002Ch,\ ; "PUSH"
     0, 0, offset loc_407EF4, 0>; 0
		t_bincmd <offset aPush, 4200000Ah, 0, 1, 0FFh, 16h, 0, 38h, 5000002Ch,\ ; "PUSH"
     0, 0, offset loc_407EF4, 0>; 0
		t_bincmd <offset aPush, 4200000Ah, 0, 1, 0FFh, 1Eh, 0, 34h, 5000002Ch,\ ; "PUSH"
     0, 0, offset loc_407EF4, 0>; 0
		t_bincmd <offset aPush, 4200000Ah, 0, 1, 0FFh, 6, 0, 35h, 5000002Ch, \ ; "PUSH"
     0, 0, offset loc_407EF4, 0>; 0
		t_bincmd <offset aPush, 4200000Ah, 0, 2, 0FFFFh, 0A00Fh, 0, 36h, \ ; "PUSH"
     5000002Ch, 0, 0, offset loc_407EF4, 0>; 0
		t_bincmd <offset aPush, 4200000Ah, 0, 2, 0FFFFh, 0A80Fh, 0, 37h, \ ; "PUSH"
     5000002Ch, 0, 0, offset loc_407EF4, 0>; 0
		t_bincmd <offset aPusha, 0A000000h, 0, 1, 0FFh, 60h, 0, 5000002Fh, 0, \ ; "PUSHA*"
     0, 0, offset loc_408240, 0>; 0
		t_bincmd <offset aPushf, 0A00000Ah, 800000h, 1, 0FFh, 9Ch, 0, \ ; "PUSHF*"
     4000006Ah, 5000002Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aRcl, 20400020h, 8, 1, 38FEh, 10D0h, 0, 2A000016h, \ ; "RCL"
     50070h, 0, 0, 0, offset loc_4C6913>; 0
		t_bincmd <offset aRcl, 20400020h, 8, 1, 38FEh, 10D2h, 0, 2A000016h, \ ; "RCL"
     50004h, 0, 0, 0, offset loc_4C6913>; 0
		t_bincmd <offset aRcl, 20400020h, 8, 1, 38FEh, 10C0h, 0, 2A000016h, \ ; "RCL"
     50071h, 0, 0, 0, offset loc_4C6913>; 0
		t_bincmd <offset aRcr, 20400020h, 8, 1, 38FEh, 18D0h, 0, 2A000016h, \ ; "RCR"
     50070h, 0, 0, 0, offset loc_4C68C4>; 0
		t_bincmd <offset aRcr, 20400020h, 8, 1, 38FEh, 18D2h, 0, 2A000016h, \ ; "RCR"
     50004h, 0, 0, 0, offset loc_4C68C4>; 0
		t_bincmd <offset aRcr, 20400020h, 8, 1, 38FEh, 18C0h, 0, 2A000016h, \ ; "RCR"
     50071h, 0, 0, 0, offset loc_4C68C4>; 0
		t_bincmd <offset aRol, 400020h, 8, 1, 38FEh, 0D0h, 0, 2A000016h, \ ; "ROL"
     50070h, 0, 0, offset loc_407D5C, offset loc_4C6875>; 0
		t_bincmd <offset aRol, 400020h, 8, 1, 38FEh, 0D2h, 0, 2A000016h, \ ; "ROL"
     50004h, 0, 0, offset loc_407D5C, offset loc_4C6875>; 0
		t_bincmd <offset aRol, 400020h, 8, 1, 38FEh, 0C0h, 0, 2A000016h, \ ; "ROL"
     50071h, 0, 0, offset loc_407D5C, offset loc_4C6875>; 0
		t_bincmd <offset aRor, 400020h, 8, 1, 38FEh, 8D0h, 0, 2A000016h, \ ; "ROR"
     50070h, 0, 0, offset loc_407DB4, offset loc_4C6826>; 0
		t_bincmd <offset aRor, 400020h, 8, 1, 38FEh, 8D2h, 0, 2A000016h, \ ; "ROR"
     50004h, 0, 0, offset loc_407DB4, offset loc_4C6826>; 0
		t_bincmd <offset aRor, 400020h, 8, 1, 38FEh, 8C0h, 0, 2A000016h, \ ; "ROR"
     50071h, 0, 0, offset loc_407DB4, offset loc_4C6826>; 0
		t_bincmd <offset aRdmsr, 40000017h, 0, 2, 0FFFFh, 320Fh, 0, 5003000Bh,\ ; "RDMSR"
     50030008h, 4000000Ah, 0, 0, 0>; 0
		t_bincmd <offset aRdpmc, 40000016h, 0, 2, 0FFFFh, 330Fh, 0, 5003000Bh,\ ; "RDPMC"
     50030008h, 4000000Ah, 0, 0, 0>; 0
		t_bincmd <offset aRdtsc, 40000016h, 0, 2, 0FFFFh, 310Fh, 0, 5003000Bh,\ ; "RDTSC"
     50030008h, 0, 0, 0, 0>; 0
		t_bincmd <offset aRdtscp, 40000016h, 0, 3, 0FFFFFFh, 0F9010Fh, 0, \ ; "RDTSCP"
     5003000Bh, 50030008h, 5003000Ah, 0, 0, 0>; 0
		t_bincmd <offset aRetn, 200700Fh, 10h, 1, 0FFh, 0C3h, 0, 40080028h, 0,\ ; "RETN"
     0, 0, offset loc_4086EC, offset loc_4C69D1>; 0
		t_bincmd <offset aRet, 200700Fh, 0, 1, 0FFh, 0C3h, 0, 40080028h, 0, 0,\ ; "RET"
     0, offset loc_4086EC, offset loc_4C69D1>; 0
		t_bincmd <offset aRetn, 200800Fh, 10h, 1, 0FFh, 0C3h, 0, 40080028h, 0,\ ; "RETN"
     0, 0, offset loc_4086EC, offset loc_4C69D1>; 0
		t_bincmd <offset aRet, 200800Fh, 0, 1, 0FFh, 0C3h, 0, 40080028h, 0, 0,\ ; "RET"
     0, offset loc_4086EC, offset loc_4C69D1>; 0
		t_bincmd <offset aRetn, 200000Fh, 10h, 1, 0FFh, 0C2h, 0, 40080028h, \ ; "RETN"
     0A0073h, 0, 0, offset loc_40873C, offset loc_4C69F2>;	0
		t_bincmd <offset aRet, 200000Fh, 0, 1, 0FFh, 0C2h, 0, 40080028h, \ ; "RET"
     0A0073h, 0, 0, offset loc_40873C, offset loc_4C69F2>;	0
		t_bincmd <offset aRetf, 42000010h, 0, 1, 0FFh, 0CBh, 0, 40090029h, 0, \ ; "RETF"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aRetf, 42000010h, 0, 1, 0FFh, 0CAh, 0, 40090029h, \ ; "RETF"
     0A0073h, 0, 0, 0, 0>;	0
		t_bincmd <offset aRsm, 40000017h, 0, 2, 0FFFFh, 0AA0Fh, 0, 0, 0, 0, 0,\ ; "RSM"
     0, 0>		; 0
		t_bincmd <offset aSahf, 100000h, 0, 1, 0FFh, 9Eh, 0, 40000002h, 0, 0, \ ; "SAHF"
     0, 0, 0>	; 0
		t_bincmd <offset aShl, 100020h, 0Ah, 1, 38FEh, 20D0h, 0, 2A000016h, \ ; "SHL"
     50070h, 0, 0, offset loc_407E0C, offset loc_4C6739>; 0
		t_bincmd <offset aShl, 100020h, 0Ah, 1, 38FEh, 20D2h, 0, 2A000016h, \ ; "SHL"
     50004h, 0, 0, offset loc_407E0C, offset loc_4C6739>; 0
		t_bincmd <offset aShl, 100020h, 0Ah, 1, 38FEh, 20C0h, 0, 2A000016h, \ ; "SHL"
     50071h, 0, 0, offset loc_407E0C, offset loc_4C6739>; 0
		t_bincmd <offset aSal, 100020h, 0Ah, 1, 38FEh, 20D0h, 0, 2A000016h, \ ; "SAL"
     50070h, 0, 0, offset loc_407E0C, offset loc_4C6739>; 0
		t_bincmd <offset aSal, 100020h, 0Ah, 1, 38FEh, 20D2h, 0, 2A000016h, \ ; "SAL"
     50004h, 0, 0, offset loc_407E0C, offset loc_4C6739>; 0
		t_bincmd <offset aSal, 100020h, 0Ah, 1, 38FEh, 20C0h, 0, 2A000016h, \ ; "SAL"
     50071h, 0, 0, offset loc_407E0C, offset loc_4C6739>; 0
		t_bincmd <offset aSal, 0C0100020h, 0Ah, 1, 38FEh, 30D0h, 0, 2A000016h,\ ; "SAL"
     50070h, 0, 0, offset loc_407E0C, 0>; 0
		t_bincmd <offset aSal, 0C0100020h, 0Ah, 1, 38FEh, 30D2h, 0, 2A000016h,\ ; "SAL"
     50004h, 0, 0, offset loc_407E0C, 0>; 0
		t_bincmd <offset aSal, 0C0100020h, 0Ah, 1, 38FEh, 30C0h, 0, 2A000016h,\ ; "SAL"
     50071h, 0, 0, offset loc_407E0C, 0>; 0
		t_bincmd <offset aSalc, 0C0100000h, 0Ah, 1, 0FFh, 0D6h, 0, 60000001h, \ ; "SALC"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aShr, 100020h, 0Ah, 1, 38FEh, 28D0h, 0, 2A000016h, \ ; "SHR"
     50070h, 0, 0, offset loc_407E48, offset loc_4C6788>; 0
		t_bincmd <offset aShr, 100020h, 0Ah, 1, 38FEh, 28D2h, 0, 2A000016h, \ ; "SHR"
     50004h, 0, 0, offset loc_407E48, offset loc_4C6788>; 0
		t_bincmd <offset aShr, 100020h, 0Ah, 1, 38FEh, 28C0h, 0, 2A000016h, \ ; "SHR"
     50071h, 0, 0, offset loc_407E48, offset loc_4C6788>; 0
		t_bincmd <offset aSar, 100020h, 0Ah, 1, 38FEh, 38D0h, 0, 2A000016h, \ ; "SAR"
     50070h, 0, 0, offset loc_407E98, offset loc_4C67D7>; 0
		t_bincmd <offset aSar, 100020h, 0Ah, 1, 38FEh, 38D2h, 0, 2A000016h, \ ; "SAR"
     50004h, 0, 0, offset loc_407E98, offset loc_4C67D7>; 0
		t_bincmd <offset aSar, 100020h, 0Ah, 1, 38FEh, 38C0h, 0, 2A000016h, \ ; "SAR"
     50071h, 0, 0, offset loc_407E98, offset loc_4C67D7>; 0
		t_bincmd <offset aSbb, 20100020h, 6, 1, 0FEh, 1Ch, 0, 2000000Ch, 74h, \ ; "SBB"
     0, 0, 0, offset loc_4C6232>; 0
		t_bincmd <offset aSbb, 20110020h, 6, 1, 38FEh, 1880h, 0, 28000016h, \ ; "SBB"
     74h, 0, 0, 0, offset loc_4C6232>; 0
		t_bincmd <offset aSbb, 20110020h, 6, 1, 38FEh, 1882h, 0, 28000016h, \ ; "SBB"
     76h, 0, 0, 0, offset loc_4C6232>; 0
		t_bincmd <offset aSbb, 20110020h, 6, 1, 0FEh, 18h, 0, 20000016h, 10h, \ ; "SBB"
     0, 0, 0, offset loc_4C6232>; 0
		t_bincmd <offset aSbb, 20100020h, 6, 1, 0FEh, 1Ah, 0, 20000010h, 16h, \ ; "SBB"
     0, 0, 0, offset loc_4C6232>; 0
		t_bincmd <offset aSeto, 10000003h, 0, 2, 0FFFFh, 900Fh, 0, 10000017h, \ ; "SETO"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetno, 10000003h, 0, 2, 0FFFFh, 910Fh, 0, 10000017h,\ ; "SETNO"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetb, 30000003h, 4, 2, 0FFFFh, 920Fh, 0, 10000017h, \ ; "SETB"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetc, 30000003h, 8, 2, 0FFFFh, 920Fh, 0, 10000017h, \ ; "SETC"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetnae, 30000003h, 4, 2, 0FFFFh, 920Fh, 0, \ ; "SETNAE"
     10000017h, 40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetae, 30000003h, 4, 2, 0FFFFh, 930Fh, 0, 10000017h,\ ; "SETAE"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetnb, 30000003h, 4, 2, 0FFFFh, 930Fh, 0, 10000017h,\ ; "SETNB"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetnc, 30000003h, 8, 2, 0FFFFh, 930Fh, 0, 10000017h,\ ; "SETNC"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSete, 10000003h, 1, 2, 0FFFFh, 940Fh, 0, 10000017h, \ ; "SETE"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetz, 10000003h, 2, 2, 0FFFFh, 940Fh, 0, 10000017h, \ ; "SETZ"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetne, 10000003h, 1, 2, 0FFFFh, 950Fh, 0, 10000017h,\ ; "SETNE"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetnz, 10000003h, 2, 2, 0FFFFh, 950Fh, 0, 10000017h,\ ; "SETNZ"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetbe, 30000003h, 0, 2, 0FFFFh, 960Fh, 0, 10000017h,\ ; "SETBE"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetna, 30000003h, 0, 2, 0FFFFh, 960Fh, 0, 10000017h,\ ; "SETNA"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSeta, 30000003h, 0, 2, 0FFFFh, 970Fh, 0, 10000017h, \ ; "SETA"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetnbe, 30000003h, 0, 2, 0FFFFh, 970Fh, 0, \ ; "SETNBE"
     10000017h, 40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSets, 10000003h, 0, 2, 0FFFFh, 980Fh, 0, 10000017h, \ ; "SETS"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetns, 10000003h, 0, 2, 0FFFFh, 990Fh, 0, 10000017h,\ ; "SETNS"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetpe, 50000003h, 0, 2, 0FFFFh, 9A0Fh, 0, 10000017h,\ ; "SETPE"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetp, 50000003h, 0, 2, 0FFFFh, 9A0Fh, 0, 10000017h, \ ; "SETP"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetpo, 50000003h, 0, 2, 0FFFFh, 9B0Fh, 0, 10000017h,\ ; "SETPO"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetnp, 50000003h, 0, 2, 0FFFFh, 9B0Fh, 0, 10000017h,\ ; "SETNP"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetl, 10000003h, 0, 2, 0FFFFh, 9C0Fh, 0, 10000017h, \ ; "SETL"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetnge, 10000003h, 0, 2, 0FFFFh, 9C0Fh, 0, \ ; "SETNGE"
     10000017h, 40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetge, 10000003h, 0, 2, 0FFFFh, 9D0Fh, 0, 10000017h,\ ; "SETGE"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetnl, 10000003h, 0, 2, 0FFFFh, 9D0Fh, 0, 10000017h,\ ; "SETNL"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetle, 10000003h, 0, 2, 0FFFFh, 9E0Fh, 0, 10000017h,\ ; "SETLE"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetng, 10000003h, 0, 2, 0FFFFh, 9E0Fh, 0, 10000017h,\ ; "SETNG"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetg, 10000003h, 0, 2, 0FFFFh, 9F0Fh, 0, 10000017h, \ ; "SETG"
     40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSetnle, 10000003h, 0, 2, 0FFFFh, 9F0Fh, 0, \ ; "SETNLE"
     10000017h, 40000015h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSgdt, 40040016h, 0, 2, 38FFFFh, 10Fh, 0, 1040006Fh, \ ; "SGDT"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aSidt, 40040016h, 0, 2, 38FFFFh, 8010Fh, 0, \ ; "SIDT"
     1040006Fh, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aShld, 100000h, 0Ah, 2, 0FFFFh, 0A40Fh, 0, 22000016h,\ ; "SHLD"
     10h, 50071h, 0, 0, 0>; 0
		t_bincmd <offset aShld, 100000h, 0Ah, 2, 0FFFFh, 0A50Fh, 0, 22000016h,\ ; "SHLD"
     10h, 50004h, 0, 0, 0>; 0
		t_bincmd <offset aShrd, 100000h, 0Ah, 2, 0FFFFh, 0AC0Fh, 0, 22000016h,\ ; "SHRD"
     10h, 50071h, 0, 0, 0>; 0
		t_bincmd <offset aShrd, 100000h, 0Ah, 2, 0FFFFh, 0AD0Fh, 0, 22000016h,\ ; "SHRD"
     10h, 50004h, 0, 0, 0>; 0
		t_bincmd <offset aSldt, 40000016h, 0, 2, 38FFFFh, 0Fh, 0, 12000016h, \ ; "SLDT"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aSmsw, 40040016h, 0, 2, 38FFFFh, 20010Fh, 0, \ ; "SMSW"
     10400018h, 40000078h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSmsw, 40080016h, 0, 2, 38FFFFh, 20010Fh, 0, \ ; "SMSW"
     12800016h, 40000078h, 0, 0, 0, 0>; 0
		t_bincmd <offset aStc, 300000h, 0, 1, 0FFh, 0F9h, 0, 0, 0, 0, 0, 0, \ ; "STC"
     offset loc_4C6A42>; 0
		t_bincmd <offset aStd, 500000h, 0, 1, 0FFh, 0FDh, 0, 0, 0, 0, 0, 0, 0>;	0 ; "STD"
		t_bincmd <offset aSti, 40000000h, 0, 1, 0FFh, 0FBh, 0, 0, 0, 0, 0, 0, \ ; "STI"
     0>		; 0
		t_bincmd <offset aStmxcsr, 40000h, 0, 2, 38FFFFh, 18AE0Fh, 0, \ ; "STMXCSR"
     1A430019h, 4000007Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aStr, 40040016h, 0, 2, 38FFFFh, 8000Fh, 0, 10400018h,\ ; "STR"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aStr, 40080016h, 0, 2, 38FFFFh, 8000Fh, 0, 12800016h,\ ; "STR"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aloc_0, 100020h, 2000006h, 1, 0FEh, 2Ch, 0, \ ; "SUB"
     2000000Ch, 74h, 0, 0, offset loc_407844, offset loc_4C61F3>; 0
		t_bincmd <offset aloc_0, 110020h, 2000006h, 1, 38FEh, 2880h, 0, \ ; "SUB"
     28000016h, 74h, 0, 0, offset loc_407844, offset loc_4C61F3>; 0
		t_bincmd <offset aloc_0, 110020h, 2000006h, 1, 38FEh, 2882h, 0, \ ; "SUB"
     28000016h, 76h, 0, 0, offset loc_407844, offset loc_4C61F3>; 0
		t_bincmd <offset aloc_0, 110020h, 2000006h, 1, 0FEh, 28h, 0, \ ; "SUB"
     20000016h, 10h, 0, 0, offset loc_407844, offset loc_4C61F3>; 0
		t_bincmd <offset aloc_0, 100020h, 2000006h, 1, 0FEh, 2Ah, 0, \ ; "SUB"
     20000010h, 16h, 0, 0, offset loc_407844, offset loc_4C61F3>; 0
		t_bincmd <offset aSysenter, 40000016h, 0, 2, 0FFFFh, 340Fh, 0, 0, 0, \ ; "SYSENTER"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aSysexit, 80100016h, 0, 2, 0FFFFh, 350Fh, 0, 0, 0, 0,\ ; "SYSEXIT"
     0, 0, 0>	; 0
		t_bincmd <offset aTest, 100024h, 2, 1, 0FEh, 0A8h, 0, 3000Ch, 30074h, \ ; "TEST"
     0, 0, 0, offset loc_4C633B>; 0
		t_bincmd <offset aTest, 100024h, 2, 1, 38FEh, 0F6h, 0, 8030016h, \ ; "TEST"
     30074h, 0, 0, 0, offset loc_4C633B>; 0
		t_bincmd <offset aTest, 0C0100024h, 2, 1, 38FEh, 8F6h, 0, 8030016h, \ ; "TEST"
     30074h, 0, 0, 0, offset loc_4C633B>; 0
		t_bincmd <offset aTest, 100024h, 2, 1, 0FEh, 84h, 0, 30016h, 30010h, \ ; "TEST"
     0, 0, 0, offset loc_4C633B>; 0
		t_bincmd <offset aTest, 100024h, 2, 1, 0FEh, 84h, 0, 30010h, 30016h, \ ; "TEST"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aUd1, 0C0000000h, 0, 2, 0FFFFh, 0B90Fh, 0, 0, 0, 0, \ ; "UD1"
     0, 0, 0>	; 0
		t_bincmd <offset aUd2, 0, 0, 2, 0FFFFh, 0B0Fh, 0, 0, 0, 0, 0, 0, 0>; 0 ; "UD2"
		t_bincmd <offset aVerr, 40200000h, 0, 2, 38FFFFh, 20000Fh, 0, \ ; "VERR"
     2000018h, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aVerw, 40200000h, 0, 2, 38FFFFh, 28000Fh, 0, \ ; "VERW"
     2000018h, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aWbinvd, 40000017h, 0, 2, 0FFFFh, 90Fh, 0, 0, 0, 0, \ ; "WBINVD"
     0, 0, 0>	; 0
		t_bincmd <offset aWrmsr, 40000017h, 0, 2, 0FFFFh, 300Fh, 0, 4003000Bh,\ ; "WRMSR"
     40030008h, 4000000Ah, 0, 0, 0>; 0
		t_bincmd <offset aXadd, 110020h, 5, 2, 0FEFFh, 0C00Fh, 0, 20000016h, \ ; "XADD"
     10000010h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmpxchg+6, 10001h, 0, 1, 0F8h, 90h, 0, 1000000Ch, \ ; "XCHG"
     10000013h, 0, 0, offset loc_40773C, 0>; 0
		t_bincmd <offset aCmpxchg+6, 1, 0, 1, 0F8h, 90h, 0, 10000013h, \ ; "XCHG"
     1000000Ch, 0, 0, offset loc_40773C, 0>; 0
		t_bincmd <offset aCmpxchg+6, 10021h, 0, 1, 0FEh, 86h, 0, 10000016h, \ ; "XCHG"
     10000010h, 0, 0, offset loc_40773C, 0>; 0
		t_bincmd <offset aCmpxchg+6, 10021h, 0, 1, 0FEh, 86h, 0, 10000010h, \ ; "XCHG"
     10000016h, 0, 0, offset loc_40773C, 0>; 0
		t_bincmd <offset aXlat, 0, 0, 1, 0FFh, 0D7h, 0, 50000001h, 24h, 0, 0, \ ; "XLAT"
     0, 0>		; 0
		t_bincmd <offset aXlatb, 0, 0, 1, 0FFh, 0D7h, 0, 60000001h, 40000024h,\ ; "XLATB"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aXor, 100020h, 2, 1, 0FEh, 34h, 0, 2003000Ch, 30074h,\ ; "XOR"
     0, 0, offset loc_407A7C, offset loc_4C62FC>; 0
		t_bincmd <offset aXor, 110020h, 2, 1, 38FEh, 3080h, 0, 2A030016h, \ ; "XOR"
     30074h, 0, 0, offset loc_407A7C, offset loc_4C62FC>; 0
		t_bincmd <offset aXor, 110020h, 2, 1, 38FEh, 3082h, 0, 2A030016h, \ ; "XOR"
     30076h, 0, 0, offset loc_407A7C, offset loc_4C62FC>; 0
		t_bincmd <offset aXor, 110020h, 2, 1, 0FEh, 30h, 0, 20030016h, 30010h,\ ; "XOR"
     0, 0, offset loc_407A7C, offset loc_4C62FC>; 0
		t_bincmd <offset aXor, 100020h, 2, 1, 0FEh, 32h, 0, 20030010h, 30016h,\ ; "XOR"
     0, 0, offset loc_407A7C, offset loc_4C62FC>; 0
		t_bincmd <offset aCmps, 41070A0h, 5, 1, 0FEh, 0A6h, 0, 8000022h, \ ; "CMPS"
     8000020h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmpsb, 107000h, 5, 1, 0FFh, 0A6h, 0, 40000023h, \ ; "CMPSB"
     40000021h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmps_0, 8107000h, 5, 1, 0FFh, 0A7h, 0, 40000022h, \ ; "CMPS*"
     40000020h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmps, 41090A5h, 0, 1, 0FEh, 0A6h, 0, 8000022h, \ ; "CMPS"
     8000020h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aCmpsb, 109005h, 0, 1, 0FFh, 0A6h, 0, 40000023h, \ ; "CMPSB"
     40000021h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aCmps_0, 8109005h, 0, 1, 0FFh, 0A7h, 0, 40000022h, \ ; "CMPS*"
     40000020h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aCmps, 410A0A5h, 0, 1, 0FEh, 0A6h, 0, 8000022h, \ ; "CMPS"
     8000020h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aCmpsb, 10A005h, 0, 1, 0FFh, 0A6h, 0, 40000023h, \ ; "CMPSB"
     40000021h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aCmps_0, 810A005h, 0, 1, 0FFh, 0A7h, 0, 40000022h, \ ; "CMPS*"
     40000020h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aLods, 70A0h, 0, 1, 0FEh, 0ACh, 0, 5000000Ch, \ ; "LODS"
     8000022h, 0, 0, 0, offset loc_4C611E>; 0
		t_bincmd <offset aLodsb, 7000h, 0, 1, 0FFh, 0ACh, 0, 50000001h, \ ; "LODSB"
     40000023h, 0, 0, 0, offset loc_4C611E>; 0
		t_bincmd <offset aLods_1, 8007000h, 0, 1, 0FFh, 0ADh, 0, 5000000Ch, \ ; "LODS*"
     40000022h, 0, 0, 0, offset loc_4C611E>; 0
		t_bincmd <offset aLods, 400080A5h, 0, 1, 0FEh, 0ACh, 0, 5000000Ch, \ ; "LODS"
     8000022h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aLodsb, 40008005h, 0, 1, 0FFh, 0ACh, 0, 50000001h, \ ; "LODSB"
     40000023h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aLods_1, 48008005h, 0, 1, 0FFh, 0ADh, 0, 5000000Ch, \ ; "LODS*"
     40000022h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aLods, 0C000A0A5h, 0, 1, 0FEh, 0ACh, 0, 5000000Ch, \ ; "LODS"
     8000022h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aLodsb, 0C000A005h, 0, 1, 0FFh, 0ACh, 0, 50000001h, \ ; "LODSB"
     40000023h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aLods_1, 0C800A005h, 0, 1, 0FFh, 0ADh, 0, 5000000Ch, \ ; "LODS*"
     40000022h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aCmovs+2, 70A0h, 5000000h, 1, 0FEh, 0A4h, 0, \ ; "MOVS"
     18000020h, 8000022h, 0, 0, offset loc_4076C4, 0>; 0
		t_bincmd <offset aMovsb, 7000h, 5000000h, 1, 0FFh, 0A4h, 0, 50000021h,\ ; "MOVSB"
     40000023h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovs, 8007000h, 5000000h, 1, 0FFh, 0A5h, 0, \ ; "MOVS*"
     50000020h, 40000022h, 0, 0, offset loc_4076C4, 0>; 0
		t_bincmd <offset aCmovs+2, 80A5h, 5000000h, 1, 0FEh, 0A4h, 0, \ ; "MOVS"
     18000020h, 8000022h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aMovsb, 8005h, 5000000h, 1, 0FFh, 0A4h, 0, 50000021h,\ ; "MOVSB"
     40000023h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aMovs, 8008005h, 5000000h, 1, 0FFh, 0A5h, 0, \ ; "MOVS*"
     50000020h, 40000022h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aCmovs+2, 0C000A0A5h, 5000000h, 1, 0FEh, 0A4h, 0, \ ; "MOVS"
     18000020h, 8000022h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aMovsb, 0C000A005h, 5000000h, 1, 0FFh, 0A4h, 0, \ ; "MOVSB"
     50000021h, 40000023h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aMovs, 0C800A005h, 5000000h, 1, 0FFh, 0A5h, 0, \ ; "MOVS*"
     50000020h, 40000022h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aScas, 1070A0h, 5, 1, 0FEh, 0AEh, 0, 8000020h, \ ; "SCAS"
     4000000Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aScasb, 107000h, 5, 1, 0FFh, 0AEh, 0, 40000021h, \ ; "SCASB"
     40000001h, 0, 0, 0, 0>; 0
		t_bincmd <offset aScas_0, 8107000h, 5, 1, 0FFh, 0AFh, 0, 40000020h, \ ; "SCAS*"
     4000000Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aScas, 1090A5h, 0, 1, 0FEh, 0AEh, 0, 8000020h, \ ; "SCAS"
     4000000Ch, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aScasb, 109005h, 0, 1, 0FFh, 0AEh, 0, 40000021h, \ ; "SCASB"
     40000001h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aScas_0, 8109005h, 0, 1, 0FFh, 0AFh, 0, 40000020h, \ ; "SCAS*"
     4000000Ch, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aScas, 10A0A5h, 0, 1, 0FEh, 0AEh, 0, 8000020h, \ ; "SCAS"
     4000000Ch, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aScasb, 10A005h, 0, 1, 0FFh, 0AEh, 0, 40000021h, \ ; "SCASB"
     40000001h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aScas_0, 810A005h, 0, 1, 0FFh, 0AFh, 0, 40000020h, \ ; "SCAS*"
     4000000Ch, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aStos, 70A0h, 0, 1, 0FEh, 0AAh, 0, 18000020h, \ ; "STOS"
     4000000Ch, 0, 0, 0, offset loc_4C6143>; 0
		t_bincmd <offset aStosb, 7000h, 0, 1, 0FFh, 0AAh, 0, 50000021h, \ ; "STOSB"
     40000001h, 0, 0, 0, offset loc_4C6143>; 0
		t_bincmd <offset aStos_1, 8007000h, 0, 1, 0FFh, 0ABh, 0, 50000020h, \ ; "STOS*"
     4000000Ch, 0, 0, 0, offset loc_4C6143>; 0
		t_bincmd <offset aStos, 80A5h, 0, 1, 0FEh, 0AAh, 0, 18000020h, \ ; "STOS"
     4000000Ch, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aStosb, 8005h, 0, 1, 0FFh, 0AAh, 0, 50000021h, \ ; "STOSB"
     40000001h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aStos_1, 8008005h, 0, 1, 0FFh, 0ABh, 0, 50000020h, \ ; "STOS*"
     4000000Ch, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aStos, 0C000A0A5h, 0, 1, 0FEh, 0AAh, 0, 18000020h, \ ; "STOS"
     4000000Ch, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aStosb, 0C000A005h, 0, 1, 0FFh, 0AAh, 0, 50000021h, \ ; "STOSB"
     40000001h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aStos_1, 0C800A005h, 0, 1, 0FFh, 0ABh, 0, 50000020h, \ ; "STOS*"
     4000000Ch, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aIns, 400070B5h, 0, 1, 0FEh, 6Ch, 0, 18000020h, \ ; "INS"
     0B0007h, 0, 0, 0, 0>;	0
		t_bincmd <offset aInsb, 40007015h, 0, 1, 0FFh, 6Ch, 0, 50000021h, \ ; "INSB"
     400B0007h, 0, 0, 0, 0>; 0
		t_bincmd <offset aIns_0, 48007015h, 0, 1, 0FFh, 6Dh, 0, 50000020h, \ ; "INS*"
     400B0007h, 0, 0, 0, 0>; 0
		t_bincmd <offset aIns, 400080B5h, 0, 1, 0FEh, 6Ch, 0, 18000020h, \ ; "INS"
     0B0007h, 6000000Dh, 0, 0, 0>;	0
		t_bincmd <offset aInsb, 40008015h, 0, 1, 0FFh, 6Ch, 0, 50000021h, \ ; "INSB"
     400B0007h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aIns_0, 48008015h, 0, 1, 0FFh, 6Dh, 0, 50000020h, \ ; "INS*"
     400B0007h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aIns, 0C000A0B5h, 0, 1, 0FEh, 6Ch, 0, 18000020h, \ ; "INS"
     0B0007h, 6000000Dh, 0, 0, 0>;	0
		t_bincmd <offset aInsb, 0C000A015h, 0, 1, 0FFh, 6Ch, 0, 50000021h, \ ; "INSB"
     400B0007h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aIns_0, 0C800A015h, 0, 1, 0FFh, 6Dh, 0, 50000020h, \ ; "INS*"
     400B0007h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aOuts, 400070B5h, 0, 1, 0FEh, 6Eh, 0, 0B0007h, \ ; "OUTS"
     8000022h, 0, 0, 0, 0>; 0
		t_bincmd <offset aOutsb, 40007015h, 0, 1, 0FFh, 6Eh, 0, 400B0007h, \ ; "OUTSB"
     40000023h, 0, 0, 0, 0>; 0
		t_bincmd <offset aOuts_1, 48007015h, 0, 1, 0FFh, 6Fh, 0, 400B0007h, \ ; "OUTS*"
     40000022h, 0, 0, 0, 0>; 0
		t_bincmd <offset aOuts, 400080B5h, 0, 1, 0FEh, 6Eh, 0, 0B0007h, \ ; "OUTS"
     8000022h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aOutsb, 40008015h, 0, 1, 0FFh, 6Eh, 0, 400B0007h, \ ; "OUTSB"
     40000023h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aOuts_1, 48008015h, 0, 1, 0FFh, 6Fh, 0, 400B0007h, \ ; "OUTS*"
     40000022h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aOuts, 0C000A0B5h, 0, 1, 0FEh, 6Eh, 0, 0B0007h, \ ; "OUTS"
     8000022h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aOutsb, 0C000A015h, 0, 1, 0FFh, 6Eh, 0, 400B0007h, \ ; "OUTSB"
     40000023h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aOuts_1, 0C800A015h, 0, 1, 0FFh, 6Fh, 0, 400B0007h, \ ; "OUTS*"
     40000022h, 6000000Dh, 0, 0, 0>; 0
		t_bincmd <offset aCmovbe+2, 7000h, 0, 3, 0FFFFFFh, 0F0380Fh, 0, \ ; "MOVBE"
     10000010h, 400016h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovbe+2, 7000h, 0, 3, 0FFFFFFh, 0F1380Fh, 0, \ ; "MOVBE"
     10400016h, 10h, 0, 0, 0, 0>; 0
		t_bincmd <offset aXgetbv, 40004016h, 0, 3, 0FFFFFFh, 0D0010Fh, 0, \ ; "XGETBV"
     50000008h, 5000000Bh, 4000000Ah, 0, 0, 0>; 0
		t_bincmd <offset aXsetbv, 40004017h, 0, 3, 0FFFFFFh, 0D1010Fh, 0, \ ; "XSETBV"
     40000008h, 4000000Bh, 4000000Ah, 0, 0, 0>; 0
		t_bincmd <offset aXrstor, 40044016h, 0, 2, 38FFFFh, 28AE0Fh, 0, \ ; "XRSTOR"
     400027h, 40000008h, 4000000Bh, 0, 0, 0>; 0
		t_bincmd <offset aXsave, 40044016h, 0, 2, 38FFFFh, 20AE0Fh, 0, \ ; "XSAVE"
     10400027h, 40000008h, 4000000Bh, 0, 0, 0>; 0
		t_bincmd <offset aF2xm1, 11h, 0, 2, 0FFFFh, 0F0D9h, 0, 5000003Ah, 0, \ ; "F2XM1"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFabs, 11h, 0, 2, 0FFFFh, 0E1D9h, 0, 6000003Ah, 0, 0,\ ; "FABS"
     0, 0, 0>	; 0
		t_bincmd <offset aFchs, 11h, 0, 2, 0FFFFh, 0E0D9h, 0, 6000003Ah, 0, 0,\ ; "FCHS"
     0, 0, 0>	; 0
		t_bincmd <offset aFclex, 11h, 0, 2, 0FFFFh, 0E2DBh, 0, 6000007Ah, 0, \ ; "FCLEX"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFcompp, 1000011h, 0, 2, 0FFFFh, 0D9DEh, 0, \ ; "FCOMPP"
     4000003Ah, 4000003Bh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcos, 11h, 0, 2, 0FFFFh, 0FFD9h, 0, 6000003Ah, 0, 0,\ ; "FCOS"
     0, 0, 0>	; 0
		t_bincmd <offset aFdecstp, 1800011h, 0, 2, 0FFFFh, 0F6D9h, 0, 0, 0, 0,\ ; "FDECSTP"
     0, 0, 0>	; 0
		t_bincmd <offset aFincstp, 800011h, 0, 2, 0FFFFh, 0F7D9h, 0, 0, 0, 0, \ ; "FINCSTP"
     0, 0, 0>	; 0
		t_bincmd <offset aFinit, 11h, 0, 2, 0FFFFh, 0E3DBh, 0, 0, 0, 0, 0, 0, \ ; "FINIT"
     0>		; 0
		t_bincmd <offset aFld1, 1800011h, 0, 2, 0FFFFh, 0E8D9h, 0, 0, 0, 0, 0,\ ; "FLD1"
     0, 0>		; 0
		t_bincmd <offset aFldl2t, 1800011h, 0, 2, 0FFFFh, 0E9D9h, 0, 0, 0, 0, \ ; "FLDL2T"
     0, 0, 0>	; 0
		t_bincmd <offset aFldl2e, 1800011h, 0, 2, 0FFFFh, 0EAD9h, 0, 0, 0, 0, \ ; "FLDL2E"
     0, 0, 0>	; 0
		t_bincmd <offset aFldpi, 1800011h, 0, 2, 0FFFFh, 0EBD9h, 0, 0, 0, 0, \ ; "FLDPI"
     0, 0, 0>	; 0
		t_bincmd <offset aFldlg2, 1800011h, 0, 2, 0FFFFh, 0ECD9h, 0, 0, 0, 0, \ ; "FLDLG2"
     0, 0, 0>	; 0
		t_bincmd <offset aFldln2, 1800011h, 0, 2, 0FFFFh, 0EDD9h, 0, 0, 0, 0, \ ; "FLDLN2"
     0, 0, 0>	; 0
		t_bincmd <offset aFldz, 1800011h, 0, 2, 0FFFFh, 0EED9h, 0, 0, 0, 0, 0,\ ; "FLDZ"
     0, 0>		; 0
		t_bincmd <offset aFnop, 11h, 0, 2, 0FFFFh, 0D0D9h, 0, 0, 0, 0, 0, 0, \ ; "FNOP"
     0>		; 0
		t_bincmd <offset aFpatan, 800011h, 0, 2, 0FFFFh, 0F3D9h, 0, 6000003Bh,\ ; "FPATAN"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFprem, 11h, 0, 2, 0FFFFh, 0F8D9h, 0, 6000003Ah, \ ; "FPREM"
     4000003Bh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFprem1, 11h, 0, 2, 0FFFFh, 0F5D9h, 0, 6000003Ah, \ ; "FPREM1"
     4000003Bh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFptan, 1800011h, 0, 2, 0FFFFh, 0F2D9h, 0, 6000003Ah,\ ; "FPTAN"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aFrndint, 11h, 0, 2, 0FFFFh, 0FCD9h, 0, 6000003Ah, 0,\ ; "FRNDINT"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFscale, 11h, 0, 2, 0FFFFh, 0FDD9h, 0, 6000003Ah, \ ; "FSCALE"
     4000003Bh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFsin, 11h, 0, 2, 0FFFFh, 0FED9h, 0, 6000003Ah, 0, 0,\ ; "FSIN"
     0, 0, 0>	; 0
		t_bincmd <offset aFsincos, 1800011h, 0, 2, 0FFFFh, 0FBD9h, 0, \ ; "FSINCOS"
     6000003Ah, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aFsqrt, 11h, 0, 2, 0FFFFh, 0FAD9h, 0, 6000003Ah, 0, \ ; "FSQRT"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFstsw, 11h, 0, 2, 0FFFFh, 0E0DFh, 0, 10000003h, \ ; "FSTSW"
     4000007Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFtst, 11h, 0, 2, 0FFFFh, 0E4D9h, 0, 4000003Ah, 0, 0,\ ; "FTST"
     0, 0, 0>	; 0
		t_bincmd <offset aFucompp, 1000011h, 0, 2, 0FFFFh, 0E9DAh, 0, \ ; "FUCOMPP"
     4000003Ah, 4000003Bh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFxam, 11h, 0, 2, 0FFFFh, 0E5D9h, 0, 4000003Ah, 0, 0,\ ; "FXAM"
     0, 0, 0>	; 0
		t_bincmd <offset aFxtract, 1800011h, 0, 2, 0FFFFh, 0F4D9h, 0, \ ; "FXTRACT"
     6000003Ah, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aFyl2x, 800011h, 0, 2, 0FFFFh, 0F1D9h, 0, 6000003Bh, \ ; "FYL2X"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFyl2xp1, 800011h, 0, 2, 0FFFFh, 0F9D9h, 0, \ ; "FYL2XP1"
     6000003Bh, 4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFeni, 40000011h, 0, 2, 0FFFFh, 0E0DBh, 0, 0, 0, 0, \ ; "FENI"
     0, 0, 0>	; 0
		t_bincmd <offset aFdisi, 40000011h, 0, 2, 0FFFFh, 0E1DBh, 0, 0, 0, 0, \ ; "FDISI"
     0, 0, 0>	; 0
		t_bincmd <offset aFadd, 11h, 0, 2, 0F8FFh, 0C0D8h, 0, 2000003Ah, 39h, \ ; "FADD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFadd, 11h, 0, 2, 0F8FFh, 0C0DCh, 0, 20000039h, 3Ah, \ ; "FADD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFaddp, 800011h, 0, 2, 0F8FFh, 0C0DEh, 0, 20000039h, \ ; "FADDP"
     3Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFaddp, 800011h, 0, 2, 0FFFFh, 0C1DEh, 0, 6000003Bh, \ ; "FADDP"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcmovb, 10000011h, 5000000h, 2, 0F8FFh, 0C0DAh, 0, \ ; "FCMOVB"
     1000003Ah, 39h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcmove, 10000011h, 5000000h, 2, 0F8FFh, 0C8DAh, 0, \ ; "FCMOVE"
     1000003Ah, 39h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcmovbe, 10000011h, 5000000h, 2, 0F8FFh, 0D0DAh, 0, \ ; "FCMOVBE"
     1000003Ah, 39h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcmovu, 10000011h, 5000000h, 2, 0F8FFh, 0D8DAh, 0, \ ; "FCMOVU"
     1000003Ah, 39h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcmovnb, 10000011h, 5000000h, 2, 0F8FFh, 0C0DBh, 0, \ ; "FCMOVNB"
     1000003Ah, 39h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcmovne, 10000011h, 5000000h, 2, 0F8FFh, 0C8DBh, 0, \ ; "FCMOVNE"
     1000003Ah, 39h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcmovnbe, 10000011h, 5000000h, 2, 0F8FFh, 0D0DBh, 0,\ ; "FCMOVNBE"
     1000003Ah, 39h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcmovnu, 10000011h, 5000000h, 2, 0F8FFh, 0D8DBh, 0, \ ; "FCMOVNU"
     1000003Ah, 39h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcom, 11h, 0, 2, 0F8FFh, 0D0D8h, 0, 4000003Ah, 39h, \ ; "FCOM"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFcom, 11h, 0, 2, 0FFFFh, 0D1D8h, 0, 4000003Ah, \ ; "FCOM"
     4000003Bh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcomp, 800011h, 0, 2, 0F8FFh, 0D8D8h, 0, 4000003Ah, \ ; "FCOMP"
     39h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcomp, 800011h, 0, 2, 0FFFFh, 0D9D8h, 0, 4000003Ah, \ ; "FCOMP"
     4000003Bh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcomi, 600011h, 0, 2, 0F8FFh, 0F0DBh, 0, 3Ah, 39h, \ ; "FCOMI"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFcomip, 0E00011h, 0, 2, 0F8FFh, 0F0DFh, 0, 3Ah, 39h,\ ; "FCOMIP"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFucomi, 600011h, 0, 2, 0F8FFh, 0E8DBh, 0, 3Ah, 39h, \ ; "FUCOMI"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFucomip, 0E00011h, 0, 2, 0F8FFh, 0E8DFh, 0, 3Ah, \ ; "FUCOMIP"
     39h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFdiv, 11h, 0, 2, 0F8FFh, 0F0D8h, 0, 2000003Ah, 39h, \ ; "FDIV"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFdiv, 11h, 0, 2, 0F8FFh, 0F8DCh, 0, 20000039h, 3Ah, \ ; "FDIV"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFdivp, 800011h, 0, 2, 0F8FFh, 0F8DEh, 0, 20000039h, \ ; "FDIVP"
     3Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFdivp, 800011h, 0, 2, 0FFFFh, 0F9DEh, 0, 6000003Bh, \ ; "FDIVP"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFdivr, 11h, 0, 2, 0F8FFh, 0F8D8h, 0, 2000003Ah, 39h,\ ; "FDIVR"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFdivr, 11h, 0, 2, 0F8FFh, 0F0DCh, 0, 20000039h, 3Ah,\ ; "FDIVR"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFdivrp, 800011h, 0, 2, 0F8FFh, 0F0DEh, 0, 20000039h,\ ; "FDIVRP"
     3Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFdivrp, 800011h, 0, 2, 0FFFFh, 0F1DEh, 0, 6000003Bh,\ ; "FDIVRP"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFfree, 11h, 0, 2, 0F8FFh, 0C0DDh, 0, 39h, 0, 0, 0, \ ; "FFREE"
     0, 0>		; 0
		t_bincmd <offset aFfreep, 0C0800011h, 0, 2, 0F8FFh, 0C0DFh, 0, 39h, 0,\ ; "FFREEP"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFld, 1800011h, 0, 2, 0F8FFh, 0C0D9h, 0, 39h, 0, 0, \ ; "FLD"
     0, 0, 0>	; 0
		t_bincmd <offset aFmul, 11h, 0, 2, 0F8FFh, 0C8D8h, 0, 2000003Ah, 39h, \ ; "FMUL"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFmul, 11h, 0, 2, 0F8FFh, 0C8DCh, 0, 20000039h, 3Ah, \ ; "FMUL"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFmulp, 800011h, 0, 2, 0F8FFh, 0C8DEh, 0, 20000039h, \ ; "FMULP"
     3Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFmulp, 800011h, 0, 2, 0FFFFh, 0C9DEh, 0, 6000003Bh, \ ; "FMULP"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFst_1, 11h, 0, 2, 0F8FFh, 0D0DDh, 0, 10000039h, \ ; "FST"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFstp, 800011h, 0, 2, 0F8FFh, 0D8DDh, 0, 10000039h, \ ; "FSTP"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFsub, 11h, 0, 2, 0F8FFh, 0E0D8h, 0, 2000003Ah, 39h, \ ; "FSUB"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFsub, 11h, 0, 2, 0F8FFh, 0E8DCh, 0, 20000039h, 3Ah, \ ; "FSUB"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFsubp, 800011h, 0, 2, 0F8FFh, 0E8DEh, 0, 20000039h, \ ; "FSUBP"
     3Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFsubp, 800011h, 0, 2, 0FFFFh, 0E9DEh, 0, 6000003Bh, \ ; "FSUBP"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFsubr, 11h, 0, 2, 0F8FFh, 0E8D8h, 0, 2000003Ah, 39h,\ ; "FSUBR"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFsubr, 11h, 0, 2, 0F8FFh, 0E0DCh, 0, 20000039h, 3Ah,\ ; "FSUBR"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFsubrp, 800011h, 0, 2, 0F8FFh, 0E0DEh, 0, 20000039h,\ ; "FSUBRP"
     3Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFsubrp, 800011h, 0, 2, 0FFFFh, 0E1DEh, 0, 6000003Bh,\ ; "FSUBRP"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFucom, 11h, 0, 2, 0F8FFh, 0E0DDh, 0, 4000003Ah, 39h,\ ; "FUCOM"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFucom, 11h, 0, 2, 0FFFFh, 0E1DDh, 0, 4000003Ah, \ ; "FUCOM"
     4000003Bh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFucomp, 800011h, 0, 2, 0F8FFh, 0E8DDh, 0, 4000003Ah,\ ; "FUCOMP"
     39h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFucomp, 800011h, 0, 2, 0FFFFh, 0E9DDh, 0, 4000003Ah,\ ; "FUCOMP"
     4000003Bh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFxch, 11h, 0, 2, 0F8FFh, 0C8D9h, 0, 5000003Ah, \ ; "FXCH"
     10000039h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFxch, 11h, 0, 2, 0FFFFh, 0C9D9h, 0, 5000003Ah, \ ; "FXCH"
     5000003Bh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFadd, 40011h, 0, 1, 38FFh, 0D8h, 0, 6000003Ah, \ ; "FADD"
     810003Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aFadd, 40011h, 0, 1, 38FFh, 0DCh, 0, 6000003Ah, \ ; "FADD"
     810003Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFiadd, 40011h, 0, 1, 38FFh, 0DAh, 0, 6000003Ah, \ ; "FIADD"
     8120019h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFiadd, 40011h, 0, 1, 38FFh, 0DEh, 0, 6000003Ah, \ ; "FIADD"
     8120018h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFbld, 41840011h, 0, 1, 38FFh, 20DFh, 0, 10003Fh, 0, \ ; "FBLD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFbstp, 40840011h, 0, 1, 38FFh, 30DFh, 0, 1010003Fh, \ ; "FBSTP"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcom, 40011h, 0, 1, 38FFh, 10D8h, 0, 4000003Ah, \ ; "FCOM"
     810003Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcom, 40011h, 0, 1, 38FFh, 10DCh, 0, 4000003Ah, \ ; "FCOM"
     810003Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcomp, 840011h, 0, 1, 38FFh, 18D8h, 0, 4000003Ah, \ ; "FCOMP"
     810003Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcomp, 840011h, 0, 1, 38FFh, 18DCh, 0, 4000003Ah, \ ; "FCOMP"
     810003Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFdiv, 40011h, 0, 1, 38FFh, 30D8h, 0, 6000003Ah, \ ; "FDIV"
     810003Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aFdiv, 40011h, 0, 1, 38FFh, 30DCh, 0, 6000003Ah, \ ; "FDIV"
     810003Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFidiv, 40011h, 0, 1, 38FFh, 30DAh, 0, 6000003Ah, \ ; "FIDIV"
     8120019h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFidiv, 40011h, 0, 1, 38FFh, 30DEh, 0, 6000003Ah, \ ; "FIDIV"
     8120018h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFdivr, 40011h, 0, 1, 38FFh, 38D8h, 0, 6000003Ah, \ ; "FDIVR"
     810003Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aFdivr, 40011h, 0, 1, 38FFh, 38DCh, 0, 6000003Ah, \ ; "FDIVR"
     810003Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFidivr, 40011h, 0, 1, 38FFh, 38DAh, 0, 6000003Ah, \ ; "FIDIVR"
     8120019h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFidivr, 40011h, 0, 1, 38FFh, 38DEh, 0, 6000003Ah, \ ; "FIDIVR"
     8120018h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFicom, 40011h, 0, 1, 38FFh, 10DEh, 0, 4000003Ah, \ ; "FICOM"
     8120018h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFicom, 40011h, 0, 1, 38FFh, 10DAh, 0, 4000003Ah, \ ; "FICOM"
     8120019h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFicomp, 840011h, 0, 1, 38FFh, 18DEh, 0, 4000003Ah, \ ; "FICOMP"
     8120018h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFicomp, 840011h, 0, 1, 38FFh, 18DAh, 0, 4000003Ah, \ ; "FICOMP"
     8120019h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFild, 1840011h, 0, 1, 38FFh, 0DFh, 0, 8120018h, 0, \ ; "FILD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFild, 1840011h, 0, 1, 38FFh, 0DBh, 0, 8120019h, 0, \ ; "FILD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFild, 1840011h, 0, 1, 38FFh, 28DFh, 0, 812001Bh, 0, \ ; "FILD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFist, 40011h, 0, 1, 38FFh, 10DFh, 0, 18120018h, \ ; "FIST"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFist, 40011h, 0, 1, 38FFh, 10DBh, 0, 18120019h, \ ; "FIST"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFistp, 840011h, 0, 1, 38FFh, 18DFh, 0, 18120018h, \ ; "FISTP"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFistp, 840011h, 0, 1, 38FFh, 18DBh, 0, 18120019h, \ ; "FISTP"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFistp, 840011h, 0, 1, 38FFh, 38DFh, 0, 1812001Bh, \ ; "FISTP"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFisttp, 840011h, 0, 1, 38FFh, 8DFh, 0, 18120018h, \ ; "FISTTP"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFisttp, 840011h, 0, 1, 38FFh, 8DBh, 0, 18120019h, \ ; "FISTTP"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFisttp, 840011h, 0, 1, 38FFh, 8DDh, 0, 1812001Bh, \ ; "FISTTP"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFld, 1840011h, 0, 1, 38FFh, 0D9h, 0, 810003Ch, 0, 0,\ ; "FLD"
     0, 0, 0>	; 0
		t_bincmd <offset aFld, 1840011h, 0, 1, 38FFh, 0DDh, 0, 810003Dh, 0, 0,\ ; "FLD"
     0, 0, 0>	; 0
		t_bincmd <offset aFld, 1840011h, 0, 1, 38FFh, 28DBh, 0, 810003Eh, 0, \ ; "FLD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFldcw, 40011h, 0, 1, 38FFh, 28D9h, 0, 5000007Bh, \ ; "FLDCW"
     130018h, 0, 0, 0, 0>;	0
		t_bincmd <offset aFldenv, 40011h, 0, 1, 38FFh, 20D9h, 0, 100026h, 0, \ ; "FLDENV"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFmul, 40011h, 0, 1, 38FFh, 8D8h, 0, 6000003Ah, \ ; "FMUL"
     810003Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aFmul, 40011h, 0, 1, 38FFh, 8DCh, 0, 6000003Ah, \ ; "FMUL"
     810003Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFimul, 40011h, 0, 1, 38FFh, 8DAh, 0, 6000003Ah, \ ; "FIMUL"
     8120019h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFimul, 40011h, 0, 1, 38FFh, 8DEh, 0, 6000003Ah, \ ; "FIMUL"
     8120018h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFrstor, 40011h, 0, 1, 38FFh, 20DDh, 0, 100026h, 0, \ ; "FRSTOR"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFsave, 40011h, 0, 1, 38FFh, 30DDh, 0, 10100026h, 0, \ ; "FSAVE"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFst_1, 40011h, 0, 1, 38FFh, 10D9h, 0, 1810003Ch, \ ; "FST"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFst_1, 40011h, 0, 1, 38FFh, 10DDh, 0, 1810003Dh, \ ; "FST"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFstp, 840011h, 0, 1, 38FFh, 18D9h, 0, 1810003Ch, \ ; "FSTP"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFstp, 840011h, 0, 1, 38FFh, 18DDh, 0, 1810003Dh, \ ; "FSTP"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFstp, 840011h, 0, 1, 38FFh, 38DBh, 0, 1810003Eh, \ ; "FSTP"
     4000003Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFstcw, 40011h, 0, 1, 38FFh, 38D9h, 0, 10130018h, \ ; "FSTCW"
     4000007Bh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFstenv, 40011h, 0, 1, 38FFh, 30D9h, 0, 10100026h, 0,\ ; "FSTENV"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aFstsw, 40011h, 0, 1, 38FFh, 38DDh, 0, 10130018h, \ ; "FSTSW"
     4000007Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aFsub, 40011h, 0, 1, 38FFh, 20D8h, 0, 6000003Ah, \ ; "FSUB"
     810003Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aFsub, 40011h, 0, 1, 38FFh, 20DCh, 0, 6000003Ah, \ ; "FSUB"
     810003Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFisub, 40011h, 0, 1, 38FFh, 20DAh, 0, 6000003Ah, \ ; "FISUB"
     8120019h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFisub, 40011h, 0, 1, 38FFh, 20DEh, 0, 6000003Ah, \ ; "FISUB"
     8120018h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFsubr, 40011h, 0, 1, 38FFh, 28D8h, 0, 6000003Ah, \ ; "FSUBR"
     810003Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aFsubr, 40011h, 0, 1, 38FFh, 28DCh, 0, 6000003Ah, \ ; "FSUBR"
     810003Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aFisubr, 40011h, 0, 1, 38FFh, 28DAh, 0, 6000003Ah, \ ; "FISUBR"
     8120019h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFisubr, 40011h, 0, 1, 38FFh, 28DEh, 0, 6000003Ah, \ ; "FISUBR"
     8120018h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFsetpm, 0C0000011h, 0, 2, 0FFFFh, 0E4DBh, 0, 0, 0, \ ; "FSETPM"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aAddpd, 1014h, 0, 2, 0FFFFh, 580Fh, 0, 20000054h, \ ; "ADDPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVaddpd, 1018h, 300h, 1, 0FFh, 58h, 0, 10000054h, \ ; "VADDPD"
     7Fh, 56h, 0, 0, 0>; 0
		t_bincmd <offset aAddps, 4014h, 0, 2, 0FFFFh, 580Fh, 0, 2000004Eh, \ ; "ADDPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVaddps, 4018h, 300h, 1, 0FFh, 58h, 0, 1000004Eh, \ ; "VADDPS"
     7Dh, 51h, 0, 0, 0>; 0
		t_bincmd <offset aAddsd, 2014h, 0, 2, 0FFFFh, 580Fh, 0, 20000055h, \ ; "ADDSD"
     57h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVaddsd, 2018h, 700h, 1, 0FFh, 58h, 0, 10000055h, \ ; "VADDSD"
     80h, 57h, 0, 0, 0>; 0
		t_bincmd <offset aAddss, 3014h, 0, 2, 0FFFFh, 580Fh, 0, 2000004Fh, \ ; "ADDSS"
     52h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVaddss, 3018h, 700h, 1, 0FFh, 58h, 0, 1000004Fh, \ ; "VADDSS"
     7Eh, 52h, 0, 0, 0>; 0
		t_bincmd <offset aAddsubpd, 1014h, 0, 2, 0FFFFh, 0D00Fh, 0, 20000054h,\ ; "ADDSUBPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVaddsubpd, 1018h, 300h, 1, 0FFh, 0D0h, 0, 10000054h,\ ; "VADDSUBPD"
     7Fh, 56h, 0, 0, 0>; 0
		t_bincmd <offset aAddsubps, 2014h, 0, 2, 0FFFFh, 0D00Fh, 0, 2000004Eh,\ ; "ADDSUBPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVaddsubps, 2018h, 300h, 1, 0FFh, 0D0h, 0, 1000004Eh,\ ; "VADDSUBPS"
     7Dh, 51h, 0, 0, 0>; 0
		t_bincmd <offset aAndpd, 1014h, 0, 2, 0FFFFh, 540Fh, 0, 20000054h, \ ; "ANDPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVandpd, 1018h, 300h, 1, 0FFh, 54h, 0, 10000054h, \ ; "VANDPD"
     7Fh, 56h, 0, 0, 0>; 0
		t_bincmd <offset aAndps, 4014h, 0, 2, 0FFFFh, 540Fh, 0, 2000004Eh, \ ; "ANDPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVandps, 4018h, 300h, 1, 0FFh, 54h, 0, 1000004Eh, \ ; "VANDPS"
     7Dh, 51h, 0, 0, 0>; 0
		t_bincmd <offset aAndnpd, 1014h, 0, 2, 0FFFFh, 550Fh, 0, 20000054h, \ ; "ANDNPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVandnpd, 1018h, 300h, 1, 0FFh, 55h, 0, 10000054h, \ ; "VANDNPD"
     7Fh, 56h, 0, 0, 0>; 0
		t_bincmd <offset aAndnps, 4014h, 0, 2, 0FFFFh, 550Fh, 0, 2000004Eh, \ ; "ANDNPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVandnps, 4018h, 300h, 1, 0FFh, 55h, 0, 1000004Eh, \ ; "VANDNPS"
     7Dh, 51h, 0, 0, 0>; 0
		t_bincmd <offset aCmpPd, 8001054h, 0, 2, 0FFFFh, 0C20Fh, 0, 20000054h,\ ; "CMP*PD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcmpPd, 8001058h, 300h, 1, 0FFh, 0C2h, 0, 10000054h,\ ; "VCMP*PD"
     7Fh, 56h, 0, 0, 0>; 0
		t_bincmd <offset aCmppd, 80001014h, 0, 2, 0FFFFh, 0C20Fh, 0, \ ; "CMPPD"
     20000054h, 56h, 71h, 0, 0, 0>; 0
		t_bincmd <offset aVcmppd, 80001018h, 300h, 1, 0FFh, 0C2h, 0, \ ; "VCMPPD"
     10000054h, 7Fh, 56h, 71h, 0, 0>; 0
		t_bincmd <offset aCmpPs, 8004054h, 0, 2, 0FFFFh, 0C20Fh, 0, 2000004Eh,\ ; "CMP*PS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcmpPs, 8004058h, 300h, 1, 0FFh, 0C2h, 0, 1000004Eh,\ ; "VCMP*PS"
     7Dh, 51h, 0, 0, 0>; 0
		t_bincmd <offset aCmpps, 80004014h, 0, 2, 0FFFFh, 0C20Fh, 0, \ ; "CMPPS"
     2000004Eh, 51h, 71h, 0, 0, 0>; 0
		t_bincmd <offset aVcmpps, 80004018h, 300h, 1, 0FFh, 0C2h, 0, \ ; "VCMPPS"
     1000004Eh, 7Dh, 51h, 71h, 0, 0>; 0
		t_bincmd <offset aCmpSd, 8002054h, 0, 2, 0FFFFh, 0C20Fh, 0, 20000055h,\ ; "CMP*SD"
     57h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcmpSd, 8002058h, 700h, 1, 0FFh, 0C2h, 0, 10000055h,\ ; "VCMP*SD"
     80h, 57h, 0, 0, 0>; 0
		t_bincmd <offset aCmpsd, 80002014h, 0, 2, 0FFFFh, 0C20Fh, 0, \ ; "CMPSD"
     20000055h, 80h, 71h, 0, 0, 0>; 0
		t_bincmd <offset aVcmpsd, 80002018h, 700h, 1, 0FFh, 0C2h, 0, \ ; "VCMPSD"
     10000055h, 80h, 57h, 71h, 0, 0>; 0
		t_bincmd <offset aCmpSs, 8003054h, 0, 2, 0FFFFh, 0C20Fh, 0, 2000004Fh,\ ; "CMP*SS"
     52h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcmpSs, 8003058h, 700h, 1, 0FFh, 0C2h, 0, 1000004Fh,\ ; "VCMP*SS"
     7Eh, 52h, 0, 0, 0>; 0
		t_bincmd <offset aCmpss, 80003014h, 0, 2, 0FFFFh, 0C20Fh, 0, \ ; "CMPSS"
     2000004Fh, 52h, 71h, 0, 0, 0>; 0
		t_bincmd <offset aVcmpss, 80003018h, 700h, 1, 0FFh, 0C2h, 0, \ ; "VCMPSS"
     1000004Fh, 7Eh, 52h, 71h, 0, 0>; 0
		t_bincmd <offset aComisd, 101014h, 0, 2, 0FFFFh, 2F0Fh, 0, 55h, 57h, \ ; "COMISD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aVcomisd, 101018h, 0F00h, 1, 0FFh, 2Fh, 0, 55h, 57h, \ ; "VCOMISD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aComiss, 104014h, 0, 2, 0FFFFh, 2F0Fh, 0, 4Fh, 52h, \ ; "COMISS"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aVcomiss, 104018h, 0F00h, 1, 0FFh, 2Fh, 0, 4Fh, 52h, \ ; "VCOMISS"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aCvtdq2pd, 3014h, 0, 2, 0FFFFh, 0E60Fh, 0, 10000054h,\ ; "CVTDQ2PD"
     66h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvtdq2pd, 83018h, 0B00h, 1, 0FFh, 0E6h, 0, \ ; "VCVTDQ2PD"
     10000054h, 0C200066h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvtdq2pd, 43018h, 0B00h, 1, 0FFh, 0E6h, 0, \ ; "VCVTDQ2PD"
     10000054h, 8100066h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCvtdq2ps, 4014h, 0, 2, 0FFFFh, 5B0Fh, 0, 1000004Eh, \ ; "CVTDQ2PS"
     65h, 0, 0, 0, 0>; 0
stru_4FFFE8	t_bincmd <offset aVcvtdq2ps, 4018h, 0B00h, 1, 0FFh, 5Bh, 0, 1000004Eh,\ ; "VCVTDQ2PS"
     65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCvtpd2dq, 2014h, 0, 2, 0FFFFh, 0E60Fh, 0, 10000064h,\ ; "CVTPD2DQ"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvtpd2dq, 2018h, 0B00h, 1, 0FFh, 0E6h, 0, \ ; "VCVTPD2DQ"
     14000064h, 8000056h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCvtpd2pi, 1014h, 0, 2, 0FFFFh, 2D0Fh, 0, 10020045h, \ ; "CVTPD2PI"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCvtpd2ps, 1014h, 0, 2, 0FFFFh, 5A0Fh, 0, 10000050h, \ ; "CVTPD2PS"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvtpd2ps, 1018h, 0B00h, 1, 0FFh, 5Ah, 0, 14000050h,\ ; "VCVTPD2PS"
     8000056h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCvtpi2pd, 1014h, 0, 2, 0FFFFh, 2A0Fh, 0, 10000054h, \ ; "CVTPI2PD"
     20046h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCvtpi2ps, 4014h, 0, 2, 0FFFFh, 2A0Fh, 0, 10000050h, \ ; "CVTPI2PS"
     20046h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCvtps2dq, 1014h, 0, 2, 0FFFFh, 5B0Fh, 0, 10000062h, \ ; "CVTPS2DQ"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvtps2dq, 1018h, 0B00h, 1, 0FFh, 5Bh, 0, 10000062h,\ ; "VCVTPS2DQ"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCvtps2pd, 4014h, 0, 2, 0FFFFh, 5A0Fh, 0, 10000054h, \ ; "CVTPS2PD"
     53h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvtps2pd, 84018h, 0B00h, 1, 0FFh, 5Ah, 0, \ ; "VCVTPS2PD"
     10000054h, 0C200053h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvtps2pd, 44018h, 0B00h, 1, 0FFh, 5Ah, 0, \ ; "VCVTPS2PD"
     10000054h, 8100053h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCvtps2pi, 4014h, 0, 2, 0FFFFh, 2D0Fh, 0, 10000045h, \ ; "CVTPS2PI"
     53h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCvtsd2si, 2014h, 0, 2, 0FFFFh, 2D0Fh, 0, 10000012h, \ ; "CVTSD2SI"
     57h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvtsd2si, 2018h, 0F00h, 1, 0FFh, 2Dh, 0, 10000012h,\ ; "VCVTSD2SI"
     57h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCvtsd2ss, 2014h, 0, 2, 0FFFFh, 5A0Fh, 0, 1000004Fh, \ ; "CVTSD2SS"
     57h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvtsd2ss, 2018h, 700h, 1, 0FFh, 5Ah, 0, 1000004Fh, \ ; "VCVTSD2SS"
     7Eh, 57h, 0, 0, 0>; 0
		t_bincmd <offset aCvtsi2sd, 2014h, 0, 2, 0FFFFh, 2A0Fh, 0, 10000055h, \ ; "CVTSI2SD"
     20019h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvtsi2sd, 2018h, 700h, 1, 0FFh, 2Ah, 0, 10000055h, \ ; "VCVTSI2SD"
     80h, 20019h, 0, 0, 0>; 0
		t_bincmd <offset aCvtsi2ss, 3014h, 0, 2, 0FFFFh, 2A0Fh, 0, 1000004Fh, \ ; "CVTSI2SS"
     20019h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvtsi2ss, 3018h, 700h, 1, 0FFh, 2Ah, 0, 1000004Fh, \ ; "VCVTSI2SS"
     7Eh, 20019h, 0, 0, 0>; 0
		t_bincmd <offset aCvtss2sd, 3014h, 0, 2, 0FFFFh, 5A0Fh, 0, 10000055h, \ ; "CVTSS2SD"
     52h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvtss2sd, 3018h, 700h, 1, 0FFh, 5Ah, 0, 10000055h, \ ; "VCVTSS2SD"
     80h, 52h, 0, 0, 0>; 0
		t_bincmd <offset aCvtss2si, 3014h, 0, 2, 0FFFFh, 2D0Fh, 0, 10000012h, \ ; "CVTSS2SI"
     52h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvtss2si, 3018h, 0F00h, 1, 0FFh, 2Dh, 0, 10000012h,\ ; "VCVTSS2SI"
     52h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCvttpd2pi, 1014h, 0, 2, 0FFFFh, 2C0Fh, 0, 10000045h,\ ; "CVTTPD2PI"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCvttpd2dq, 1014h, 0, 2, 0FFFFh, 0E60Fh, 0, \ ; "CVTTPD2DQ"
     10000064h, 56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvttpd2dq, 1018h, 0B00h, 1, 0FFh, 0E6h, 0, \ ; "VCVTTPD2DQ"
     14000064h, 8000056h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCvttps2dq, 3014h, 0, 2, 0FFFFh, 5B0Fh, 0, 10000062h,\ ; "CVTTPS2DQ"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvttps2dq, 3018h, 0B00h, 1, 0FFh, 5Bh, 0, \ ; "VCVTTPS2DQ"
     10000062h, 51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCvttps2pi, 4014h, 0, 2, 0FFFFh, 2C0Fh, 0, 10000045h,\ ; "CVTTPS2PI"
     53h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCvttsd2si, 2014h, 0, 2, 0FFFFh, 2C0Fh, 0, 10000012h,\ ; "CVTTSD2SI"
     57h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvttsd2si, 2018h, 0F00h, 1, 0FFh, 2Ch, 0, \ ; "VCVTTSD2SI"
     10000012h, 57h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCvttss2si, 3014h, 0, 2, 0FFFFh, 2C0Fh, 0, 10000012h,\ ; "CVTTSS2SI"
     52h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvttss2si, 3018h, 0F00h, 1, 0FFh, 2Ch, 0, \ ; "VCVTTSS2SI"
     10000012h, 52h, 0, 0, 0, 0>; 0
		t_bincmd <offset aDivpd, 1014h, 0, 2, 0FFFFh, 5E0Fh, 0, 20000054h, \ ; "DIVPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVdivpd, 1018h, 300h, 1, 0FFh, 5Eh, 0, 10000054h, \ ; "VDIVPD"
     7Fh, 56h, 0, 0, 0>; 0
		t_bincmd <offset aDivps, 4014h, 0, 2, 0FFFFh, 5E0Fh, 0, 2000004Eh, \ ; "DIVPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVdivps, 4018h, 300h, 1, 0FFh, 5Eh, 0, 1000004Eh, \ ; "VDIVPS"
     7Dh, 51h, 0, 0, 0>; 0
		t_bincmd <offset aDivsd, 2014h, 0, 2, 0FFFFh, 5E0Fh, 0, 20000055h, \ ; "DIVSD"
     57h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVdivsd, 2018h, 700h, 1, 0FFh, 5Eh, 0, 10000055h, \ ; "VDIVSD"
     80h, 57h, 0, 0, 0>; 0
		t_bincmd <offset aDivss, 3014h, 0, 2, 0FFFFh, 5E0Fh, 0, 2000004Fh, \ ; "DIVSS"
     52h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVdivss, 3018h, 700h, 1, 0FFh, 5Eh, 0, 1000004Fh, \ ; "VDIVSS"
     7Eh, 52h, 0, 0, 0>; 0
		t_bincmd <offset aHaddpd, 1014h, 0, 2, 0FFFFh, 7C0Fh, 0, 20000054h, \ ; "HADDPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVhaddpd, 1018h, 300h, 1, 0FFh, 7Ch, 0, 10000054h, \ ; "VHADDPD"
     7Fh, 56h, 0, 0, 0>; 0
		t_bincmd <offset aHaddps, 2014h, 0, 2, 0FFFFh, 7C0Fh, 0, 2000004Eh, \ ; "HADDPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVhaddps, 2018h, 300h, 1, 0FFh, 7Ch, 0, 1000004Eh, \ ; "VHADDPS"
     7Dh, 51h, 0, 0, 0>; 0
		t_bincmd <offset aHsubpd, 1014h, 0, 2, 0FFFFh, 7D0Fh, 0, 20000054h, \ ; "HSUBPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVhsubpd, 1018h, 300h, 1, 0FFh, 7Dh, 0, 10000054h, \ ; "VHSUBPD"
     7Fh, 56h, 0, 0, 0>; 0
		t_bincmd <offset aHsubps, 2014h, 0, 2, 0FFFFh, 7D0Fh, 0, 2000004Eh, \ ; "HSUBPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVhsubps, 2018h, 300h, 1, 0FFh, 7Dh, 0, 1000004Eh, \ ; "VHSUBPS"
     7Dh, 51h, 0, 0, 0>; 0
		t_bincmd <offset aLddqu, 2014h, 0, 2, 0FFFFh, 0F00Fh, 0, 10000054h, \ ; "LDDQU"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVlddqu, 2018h, 0B00h, 1, 0FFh, 0F0h, 0, 10000054h, \ ; "VLDDQU"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aLdmxcsr_1, 40000h, 0, 2, 38FFFFh, 10AE0Fh, 0, \ ; "LDMXCSR"
     5000007Ch, 130019h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVldmxcsr, 40000h, 900h, 1, 38FFh, 10AEh, 0, \ ; "VLDMXCSR"
     5000007Ch, 130019h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVstmxcsr, 40000h, 900h, 1, 38FFh, 18AEh, 0, \ ; "VSTMXCSR"
     1A430019h, 4000007Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aMaskmovdqu, 81014h, 0, 2, 0C0FFFFh, 0C0F70Fh, 0, \ ; "MASKMOVDQU"
     6000005Ah, 30058h, 200059h, 0, 0, 0>;	0
		t_bincmd <offset aVmaskmovdqu, 81018h, 900h, 1, 0C0FFh, 0C0F7h, 0, \ ; "VMASKMOVDQU"
     6000005Ah, 30058h, 200059h, 0, 0, 0>;	0
		t_bincmd <offset aMaskmovq, 84012h, 0, 2, 0C0FFFFh, 0C0F70Fh, 0, \ ; "MASKMOVQ"
     60000042h, 40h, 200041h, 0, 0, 0>; 0
		t_bincmd <offset aMaxpd_0, 1014h, 0, 2, 0FFFFh, 5F0Fh, 0, 20000054h, \ ; "MAXPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmaxpd, 1018h, 300h, 1, 0FFh, 5Fh, 0, 10000054h, \ ; "VMAXPD"
     7Fh, 56h, 0, 0, 0>; 0
		t_bincmd <offset aMaxps, 4014h, 0, 2, 0FFFFh, 5F0Fh, 0, 2000004Eh, \ ; "MAXPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmaxps, 4018h, 300h, 1, 0FFh, 5Fh, 0, 1000004Eh, \ ; "VMAXPS"
     7Dh, 51h, 0, 0, 0>; 0
		t_bincmd <offset aMaxsd_2, 2014h, 0, 2, 0FFFFh, 5F0Fh, 0, 20000055h, \ ; "MAXSD"
     57h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmaxsd, 2018h, 700h, 1, 0FFh, 5Fh, 0, 10000055h, \ ; "VMAXSD"
     80h, 57h, 0, 0, 0>; 0
		t_bincmd <offset aMaxss, 3014h, 0, 2, 0FFFFh, 5F0Fh, 0, 2000004Fh, \ ; "MAXSS"
     52h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmaxss, 3018h, 700h, 1, 0FFh, 5Fh, 0, 1000004Fh, \ ; "VMAXSS"
     7Eh, 52h, 0, 0, 0>; 0
		t_bincmd <offset aMfence, 14h, 0, 3, 0FFFFFFh, 0F0AE0Fh, 0, 0, 0, 0, \ ; "MFENCE"
     0, 0, 0>	; 0
		t_bincmd <offset aMinpd, 1014h, 0, 2, 0FFFFh, 5D0Fh, 0, 20000054h, \ ; "MINPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVminpd, 1018h, 300h, 1, 0FFh, 5Dh, 0, 10000054h, \ ; "VMINPD"
     7Fh, 56h, 0, 0, 0>; 0
		t_bincmd <offset aMinps_1, 4014h, 0, 2, 0FFFFh, 5D0Fh, 0, 2000004Eh, \ ; "MINPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVminps, 4018h, 300h, 1, 0FFh, 5Dh, 0, 1000004Eh, \ ; "VMINPS"
     7Dh, 51h, 0, 0, 0>; 0
		t_bincmd <offset aMinsd, 2014h, 0, 2, 0FFFFh, 5D0Fh, 0, 20000055h, \ ; "MINSD"
     57h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVminsd, 2018h, 700h, 1, 0FFh, 5Dh, 0, 10000055h, \ ; "VMINSD"
     80h, 57h, 0, 0, 0>; 0
		t_bincmd <offset aMinss_1, 3014h, 0, 2, 0FFFFh, 5D0Fh, 0, 2000004Fh, \ ; "MINSS"
     52h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVminss, 3018h, 700h, 1, 0FFh, 5Dh, 0, 1000004Fh, \ ; "VMINSS"
     7Eh, 52h, 0, 0, 0>; 0
		t_bincmd <offset aMovapd, 1014h, 0, 2, 0FFFFh, 280Fh, 0, 10000054h, \ ; "MOVAPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovapd, 1018h, 0B00h, 1, 0FFh, 28h, 0, 10000054h, \ ; "VMOVAPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovapd, 1014h, 0, 2, 0FFFFh, 290Fh, 0, 10000056h, \ ; "MOVAPD"
     54h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovapd, 1018h, 0B00h, 1, 0FFh, 29h, 0, 10000056h, \ ; "VMOVAPD"
     54h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovaps, 4014h, 0, 2, 0FFFFh, 280Fh, 0, 1000004Eh, \ ; "MOVAPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovaps, 4018h, 0B00h, 1, 0FFh, 28h, 0, 1000004Eh, \ ; "VMOVAPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovaps, 4014h, 0, 2, 0FFFFh, 290Fh, 0, 10000051h, \ ; "MOVAPS"
     4Eh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovaps, 4018h, 0B00h, 1, 0FFh, 29h, 0, 10000051h, \ ; "VMOVAPS"
     4Eh, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovd, 4012h, 0, 2, 0FFFFh, 6E0Fh, 0, 10000045h, 19h,\ ; "MOVD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aMovd, 4012h, 0, 2, 0FFFFh, 7E0Fh, 0, 10000019h, 45h,\ ; "MOVD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aMovd, 1014h, 0, 2, 0FFFFh, 6E0Fh, 0, 10000064h, 19h,\ ; "MOVD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aVmovd, 1018h, 900h, 1, 0FFh, 6Eh, 0, 10000064h, 19h,\ ; "VMOVD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aMovd, 1014h, 0, 2, 0FFFFh, 7E0Fh, 0, 10000019h, 63h,\ ; "MOVD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aVmovd, 1018h, 900h, 1, 0FFh, 7Eh, 0, 10000019h, 63h,\ ; "VMOVD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aMovddup_0, 2014h, 0, 2, 0FFFFh, 120Fh, 0, 10000054h,\ ; "MOVDDUP"
     57h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovddup, 2018h, 0B00h, 1, 0FFh, 12h, 0, 10000054h, \ ; "VMOVDDUP"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovdqa, 1014h, 0, 2, 0FFFFh, 6F0Fh, 0, 10000054h, \ ; "MOVDQA"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovdqa, 1018h, 0B00h, 1, 0FFh, 6Fh, 0, 10000054h, \ ; "VMOVDQA"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovdqa, 1014h, 0, 2, 0FFFFh, 7F0Fh, 0, 10000056h, \ ; "MOVDQA"
     54h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovdqa, 1018h, 0B00h, 1, 0FFh, 7Fh, 0, 10000056h, \ ; "VMOVDQA"
     54h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMaskmovdqu+8, 3014h, 0, 2, 0FFFFh, 6F0Fh, 0, \ ; "MOVDQU"
     10000054h, 56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovdqu, 3018h, 0B00h, 1, 0FFh, 6Fh, 0, 10000054h, \ ; "VMOVDQU"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMaskmovdqu+8, 3014h, 0, 2, 0FFFFh, 7F0Fh, 0, \ ; "MOVDQU"
     10000056h, 54h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovdqu, 3018h, 0B00h, 1, 0FFh, 7Fh, 0, 10000056h, \ ; "VMOVDQU"
     54h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovdq2q, 82012h, 0, 2, 0C0FFFFh, 0C0D60Fh, 0, \ ; "MOVDQ2Q"
     10000045h, 200066h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovhlps, 84014h, 0, 2, 0C0FFFFh, 0C0120Fh, 0, \ ; "MOVHLPS"
     2000004Eh, 200051h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovhlps, 84018h, 100h, 1, 0C0FFh, 0C012h, 0, \ ; "VMOVHLPS"
     1000004Eh, 7Dh, 200051h, 0, 0, 0>; 0
		t_bincmd <offset aMovhpd, 41014h, 0, 2, 0FFFFh, 160Fh, 0, 20000054h, \ ; "MOVHPD"
     100057h, 0, 0, 0, 0>;	0
		t_bincmd <offset aVmovhpd, 41018h, 100h, 1, 0FFh, 16h, 0, 10000054h, \ ; "VMOVHPD"
     7Fh, 100057h, 0, 0, 0>; 0
		t_bincmd <offset aMovhpd, 41014h, 0, 2, 0FFFFh, 170Fh, 0, 20100057h, \ ; "MOVHPD"
     54h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovhpd, 41018h, 900h, 1, 0FFh, 17h, 0, 20100057h, \ ; "VMOVHPD"
     54h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovhps, 44014h, 0, 2, 0FFFFh, 160Fh, 0, 2000004Eh, \ ; "MOVHPS"
     100053h, 0, 0, 0, 0>;	0
		t_bincmd <offset aVmovhps, 44018h, 100h, 1, 0FFh, 16h, 0, 1000004Eh, \ ; "VMOVHPS"
     7Dh, 100053h, 0, 0, 0>; 0
		t_bincmd <offset aMovhps, 44014h, 0, 2, 0FFFFh, 170Fh, 0, 20100053h, \ ; "MOVHPS"
     4Eh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovhps, 44018h, 900h, 1, 0FFh, 17h, 0, 20100053h, \ ; "VMOVHPS"
     4Eh, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovlhps, 84014h, 0, 2, 0C0FFFFh, 0C0160Fh, 0, \ ; "MOVLHPS"
     2000004Eh, 200053h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovlhps, 84018h, 100h, 1, 0C0FFh, 0C016h, 0, \ ; "VMOVLHPS"
     2000004Eh, 7Dh, 200053h, 0, 0, 0>; 0
		t_bincmd <offset aMovlpd, 41014h, 0, 2, 0FFFFh, 120Fh, 0, 20000055h, \ ; "MOVLPD"
     100057h, 0, 0, 0, 0>;	0
		t_bincmd <offset aVmovlpd, 41018h, 100h, 1, 0FFh, 12h, 0, 20000054h, \ ; "VMOVLPD"
     7Fh, 100057h, 0, 0, 0>; 0
		t_bincmd <offset aMovlpd, 41014h, 0, 2, 0FFFFh, 130Fh, 0, 20100057h, \ ; "MOVLPD"
     55h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovlpd, 41018h, 900h, 1, 0FFh, 13h, 0, 20100057h, \ ; "VMOVLPD"
     55h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovlps, 44014h, 0, 2, 0FFFFh, 120Fh, 0, 20000050h, \ ; "MOVLPS"
     100053h, 0, 0, 0, 0>;	0
		t_bincmd <offset aVmovlps, 44018h, 100h, 1, 0FFh, 12h, 0, 2000004Eh, \ ; "VMOVLPS"
     7Dh, 100053h, 0, 0, 0>; 0
		t_bincmd <offset aMovlps, 44014h, 0, 2, 0FFFFh, 130Fh, 0, 20100053h, \ ; "MOVLPS"
     50h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovlps, 44018h, 900h, 1, 0FFh, 13h, 0, 20100053h, \ ; "VMOVLPS"
     50h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovmskpd, 81014h, 0, 2, 0C0FFFFh, 0C0500Fh, 0, \ ; "MOVMSKPD"
     10000012h, 800056h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovmskpd, 81018h, 0B00h, 1, 0C0FFh, 0C050h, 0, \ ; "VMOVMSKPD"
     10000012h, 800056h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovmskps, 84014h, 0, 2, 0C0FFFFh, 0C0500Fh, 0, \ ; "MOVMSKPS"
     10000012h, 800051h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovmskps, 84018h, 0B00h, 1, 0C0FFh, 0C050h, 0, \ ; "VMOVMSKPS"
     10000012h, 800051h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovntdq, 41014h, 0, 2, 0FFFFh, 0E70Fh, 0, 10100059h,\ ; "MOVNTDQ"
     30058h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovntdq, 41018h, 0B00h, 1, 0FFh, 0E7h, 0, \ ; "VMOVNTDQ"
     10100059h, 30058h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovnti, 44014h, 0, 2, 0FFFFh, 0C30Fh, 0, 10100019h, \ ; "MOVNTI"
     12h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovntpd_1, 41014h, 0, 2, 0FFFFh, 2B0Fh, 0, \ ; "MOVNTPD"
     10100056h, 54h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovntpd, 41018h, 0B00h, 1, 0FFh, 2Bh, 0, 10100056h,\ ; "VMOVNTPD"
     54h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovntps, 44014h, 0, 2, 0FFFFh, 2B0Fh, 0, 10100051h, \ ; "MOVNTPS"
     4Eh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovntps, 44018h, 0B00h, 1, 0FFh, 2Bh, 0, 10100051h,\ ; "VMOVNTPS"
     4Eh, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovntq, 44012h, 0, 2, 0FFFFh, 0E70Fh, 0, 10100048h, \ ; "MOVNTQ"
     47h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMaskmovq+8, 4012h, 0, 2, 0FFFFh, 6F0Fh, 0, \ ; "MOVQ"
     10000047h, 48h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMaskmovq+8, 4012h, 0, 2, 0FFFFh, 7F0Fh, 0, \ ; "MOVQ"
     10000048h, 47h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMaskmovq+8, 3014h, 0, 2, 0FFFFh, 7E0Fh, 0, \ ; "MOVQ"
     10000055h, 57h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovq, 3018h, 900h, 1, 0FFh, 7Eh, 0, 10000055h, 57h,\ ; "VMOVQ"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aMaskmovq+8, 1014h, 0, 2, 0FFFFh, 0D60Fh, 0, \ ; "MOVQ"
     10000057h, 55h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovq, 1018h, 900h, 1, 0FFh, 0D6h, 0, 10000057h, \ ; "VMOVQ"
     55h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovq2dq, 83012h, 0, 2, 0C0FFFFh, 0C0D60Fh, 0, \ ; "MOVQ2DQ"
     20000055h, 200041h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovsd, 2014h, 0, 2, 0FFFFh, 100Fh, 0, 20000055h, \ ; "MOVSD"
     57h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovsd, 42018h, 0F00h, 1, 0FFh, 10h, 0, 20000055h, \ ; "VMOVSD"
     57h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovsd, 82018h, 700h, 1, 0FFh, 10h, 0, 20000055h, \ ; "VMOVSD"
     7Fh, 57h, 0, 0, 0>; 0
		t_bincmd <offset aMovsd, 2014h, 0, 2, 0FFFFh, 110Fh, 0, 20000057h, \ ; "MOVSD"
     55h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovsd, 42018h, 0F00h, 1, 0FFh, 11h, 0, 20000057h, \ ; "VMOVSD"
     55h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovsd, 82018h, 700h, 1, 0FFh, 11h, 0, 20000057h, \ ; "VMOVSD"
     7Fh, 55h, 0, 0, 0>; 0
		t_bincmd <offset aMovss, 3014h, 0, 2, 0FFFFh, 100Fh, 0, 2000004Fh, \ ; "MOVSS"
     52h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovss, 43018h, 0F00h, 1, 0FFh, 10h, 0, 2000004Fh, \ ; "VMOVSS"
     52h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovss, 83018h, 700h, 1, 0FFh, 10h, 0, 2000004Fh, \ ; "VMOVSS"
     7Dh, 52h, 0, 0, 0>; 0
		t_bincmd <offset aMovss, 3014h, 0, 2, 0FFFFh, 110Fh, 0, 20000052h, \ ; "MOVSS"
     4Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovss, 43018h, 0F00h, 1, 0FFh, 11h, 0, 20000052h, \ ; "VMOVSS"
     4Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovss, 83018h, 700h, 1, 0FFh, 11h, 0, 20000052h, \ ; "VMOVSS"
     7Dh, 4Fh, 0, 0, 0>; 0
		t_bincmd <offset aMovshdup, 3014h, 0, 2, 0FFFFh, 160Fh, 0, 1000004Eh, \ ; "MOVSHDUP"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovshdup, 3018h, 0B00h, 1, 0FFh, 16h, 0, 1000004Eh,\ ; "VMOVSHDUP"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovsldup, 3014h, 0, 2, 0FFFFh, 120Fh, 0, 1000004Eh, \ ; "MOVSLDUP"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovsldup, 3018h, 0B00h, 1, 0FFh, 12h, 0, 1000004Eh,\ ; "VMOVSLDUP"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovupd, 1014h, 0, 2, 0FFFFh, 100Fh, 0, 10000054h, \ ; "MOVUPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovupd, 1018h, 0B00h, 1, 0FFh, 10h, 0, 10000054h, \ ; "VMOVUPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovupd, 1014h, 0, 2, 0FFFFh, 110Fh, 0, 10000056h, \ ; "MOVUPD"
     54h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovupd, 1018h, 0B00h, 1, 0FFh, 11h, 0, 10000056h, \ ; "VMOVUPD"
     54h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovups, 4014h, 0, 2, 0FFFFh, 100Fh, 0, 1000004Eh, \ ; "MOVUPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovups, 4018h, 0B00h, 1, 0FFh, 10h, 0, 1000004Eh, \ ; "VMOVUPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovups, 4014h, 0, 2, 0FFFFh, 110Fh, 0, 10000051h, \ ; "MOVUPS"
     4Eh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovups, 4018h, 0B00h, 1, 0FFh, 11h, 0, 10000051h, \ ; "VMOVUPS"
     4Eh, 0, 0, 0, 0>; 0
		t_bincmd <offset aMulpd, 1014h, 0, 2, 0FFFFh, 590Fh, 0, 20000054h, \ ; "MULPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmulpd, 1018h, 300h, 1, 0FFh, 59h, 0, 20000054h, \ ; "VMULPD"
     7Fh, 56h, 0, 0, 0>; 0
		t_bincmd <offset aMulps, 4014h, 0, 2, 0FFFFh, 590Fh, 0, 2000004Eh, \ ; "MULPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmulps, 4018h, 300h, 1, 0FFh, 59h, 0, 2000004Eh, \ ; "VMULPS"
     7Dh, 51h, 0, 0, 0>; 0
		t_bincmd <offset aMulsd, 2014h, 0, 2, 0FFFFh, 590Fh, 0, 20000055h, \ ; "MULSD"
     57h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmulsd, 2018h, 700h, 1, 0FFh, 59h, 0, 20000055h, \ ; "VMULSD"
     80h, 57h, 0, 0, 0>; 0
		t_bincmd <offset aMulss, 3014h, 0, 2, 0FFFFh, 590Fh, 0, 2000004Fh, \ ; "MULSS"
     52h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmulss, 3018h, 700h, 1, 0FFh, 59h, 0, 2000004Fh, \ ; "VMULSS"
     7Eh, 52h, 0, 0, 0>; 0
		t_bincmd <offset aOrpd, 1014h, 0, 2, 0FFFFh, 560Fh, 0, 20000054h, 56h,\ ; "ORPD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aVorpd, 1018h, 300h, 1, 0FFh, 56h, 0, 20000054h, 7Fh,\ ; "VORPD"
     56h, 0, 0, 0>	; 0
		t_bincmd <offset aOrps, 4014h, 0, 2, 0FFFFh, 560Fh, 0, 2000004Eh, 51h,\ ; "ORPS"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aVorps, 4018h, 300h, 1, 0FFh, 56h, 0, 2000004Eh, 7Dh,\ ; "VORPS"
     51h, 0, 0, 0>	; 0
		t_bincmd <offset aPacksswb, 4012h, 0, 2, 0FFFFh, 630Fh, 0, 20000043h, \ ; "PACKSSWB"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPacksswb, 1014h, 0, 2, 0FFFFh, 630Fh, 0, 2000005Eh, \ ; "PACKSSWB"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpacksswb, 1018h, 100h, 1, 0FFh, 63h, 0, 20000058h, \ ; "VPACKSSWB"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPackssdw, 4012h, 0, 2, 0FFFFh, 6B0Fh, 0, 20000045h, \ ; "PACKSSDW"
     46h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPackssdw, 1014h, 0, 2, 0FFFFh, 6B0Fh, 0, 20000062h, \ ; "PACKSSDW"
     65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpackssdw, 1018h, 100h, 1, 0FFh, 6Bh, 0, 2000005Eh, \ ; "VPACKSSDW"
     83h, 65h, 0, 0, 0>; 0
		t_bincmd <offset aPackuswb, 4012h, 0, 2, 0FFFFh, 670Fh, 0, 20000043h, \ ; "PACKUSWB"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPackuswb, 1014h, 0, 2, 0FFFFh, 670Fh, 0, 2000005Eh, \ ; "PACKUSWB"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpackuswb, 1018h, 100h, 1, 0FFh, 67h, 0, 20000058h, \ ; "VPACKUSWB"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPaddb, 4012h, 0, 2, 0FFFFh, 0FC0Fh, 0, 20000040h, \ ; "PADDB"
     41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPaddw, 4012h, 0, 2, 0FFFFh, 0FD0Fh, 0, 20000043h, \ ; "PADDW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPaddd, 4012h, 0, 2, 0FFFFh, 0FE0Fh, 0, 20000045h, \ ; "PADDD"
     46h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPaddb, 1014h, 0, 2, 0FFFFh, 0FC0Fh, 0, 20000058h, \ ; "PADDB"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpaddb, 1018h, 100h, 1, 0FFh, 0FCh, 0, 20000058h, \ ; "VPADDB"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aPaddw, 1014h, 0, 2, 0FFFFh, 0FD0Fh, 0, 2000005Eh, \ ; "PADDW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpaddw, 1018h, 100h, 1, 0FFh, 0FDh, 0, 2000005Eh, \ ; "VPADDW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPaddd, 1014h, 0, 2, 0FFFFh, 0FE0Fh, 0, 20000062h, \ ; "PADDD"
     65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpaddd, 1018h, 100h, 1, 0FFh, 0FEh, 0, 20000062h, \ ; "VPADDD"
     83h, 65h, 0, 0, 0>; 0
		t_bincmd <offset aPaddq, 4012h, 0, 2, 0FFFFh, 0D40Fh, 0, 20000047h, \ ; "PADDQ"
     48h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPaddq, 1014h, 0, 2, 0FFFFh, 0D40Fh, 0, 20000067h, \ ; "PADDQ"
     68h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpaddq, 1018h, 100h, 1, 0FFh, 0D4h, 0, 20000067h, \ ; "VPADDQ"
     84h, 68h, 0, 0, 0>; 0
		t_bincmd <offset aPaddsb, 4012h, 0, 2, 0FFFFh, 0EC0Fh, 0, 20000040h, \ ; "PADDSB"
     41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPaddsw, 4012h, 0, 2, 0FFFFh, 0ED0Fh, 0, 20000043h, \ ; "PADDSW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPaddsb, 1014h, 0, 2, 0FFFFh, 0EC0Fh, 0, 20000058h, \ ; "PADDSB"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpaddsb, 1018h, 100h, 1, 0FFh, 0ECh, 0, 20000058h, \ ; "VPADDSB"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aPaddsw, 1014h, 0, 2, 0FFFFh, 0ED0Fh, 0, 2000005Eh, \ ; "PADDSW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpaddsw, 1018h, 100h, 1, 0FFh, 0EDh, 0, 2000005Eh, \ ; "VPADDSW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPaddusb, 4012h, 0, 2, 0FFFFh, 0DC0Fh, 0, 20000040h, \ ; "PADDUSB"
     41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPaddusw, 4012h, 0, 2, 0FFFFh, 0DD0Fh, 0, 20000043h, \ ; "PADDUSW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPaddusb, 1014h, 0, 2, 0FFFFh, 0DC0Fh, 0, 20000058h, \ ; "PADDUSB"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpaddusb, 1018h, 100h, 1, 0FFh, 0DCh, 0, 20000058h, \ ; "VPADDUSB"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aPaddusw, 1014h, 0, 2, 0FFFFh, 0DD0Fh, 0, 2000005Eh, \ ; "PADDUSW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpaddusw, 1018h, 100h, 1, 0FFh, 0DDh, 0, 2000005Eh, \ ; "VPADDUSW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPand, 4012h, 0, 2, 0FFFFh, 0DB0Fh, 0, 20000040h, \ ; "PAND"
     41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPand, 1014h, 0, 2, 0FFFFh, 0DB0Fh, 0, 20000058h, \ ; "PAND"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpand, 1018h, 100h, 1, 0FFh, 0DBh, 0, 20000058h, \ ; "VPAND"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aPandn, 4012h, 0, 2, 0FFFFh, 0DF0Fh, 0, 20000040h, \ ; "PANDN"
     41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPandn, 1014h, 0, 2, 0FFFFh, 0DF0Fh, 0, 20000058h, \ ; "PANDN"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpandn, 1018h, 100h, 1, 0FFh, 0DFh, 0, 20000058h, \ ; "VPANDN"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aPavgb, 4012h, 0, 2, 0FFFFh, 0E00Fh, 0, 20000040h, \ ; "PAVGB"
     41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPavgw, 4012h, 0, 2, 0FFFFh, 0E30Fh, 0, 20000043h, \ ; "PAVGW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPavgb, 1014h, 0, 2, 0FFFFh, 0E00Fh, 0, 20000058h, \ ; "PAVGB"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpavgb, 1018h, 100h, 1, 0FFh, 0E0h, 0, 20000058h, \ ; "VPAVGB"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aPavgw, 1014h, 0, 2, 0FFFFh, 0E30Fh, 0, 2000005Eh, \ ; "PAVGW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpavgw, 1018h, 100h, 1, 0FFh, 0E3h, 0, 2000005Eh, \ ; "VPAVGW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPcmpeqb, 4012h, 0, 2, 0FFFFh, 740Fh, 0, 20000040h, \ ; "PCMPEQB"
     41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPcmpeqw, 4012h, 0, 2, 0FFFFh, 750Fh, 0, 20000043h, \ ; "PCMPEQW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPcmpeqd, 4012h, 0, 2, 0FFFFh, 760Fh, 0, 20000045h, \ ; "PCMPEQD"
     46h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPcmpeqb, 1014h, 0, 2, 0FFFFh, 740Fh, 0, 20000058h, \ ; "PCMPEQB"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpcmpeqb, 1018h, 100h, 1, 0FFh, 74h, 0, 20000058h, \ ; "VPCMPEQB"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aPcmpeqw, 1014h, 0, 2, 0FFFFh, 750Fh, 0, 2000005Eh, \ ; "PCMPEQW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpcmpeqw, 1018h, 100h, 1, 0FFh, 75h, 0, 2000005Eh, \ ; "VPCMPEQW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPcmpeqd, 1014h, 0, 2, 0FFFFh, 760Fh, 0, 20000062h, \ ; "PCMPEQD"
     65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpcmpeqd, 1018h, 100h, 1, 0FFh, 76h, 0, 20000062h, \ ; "VPCMPEQD"
     83h, 65h, 0, 0, 0>; 0
		t_bincmd <offset aPcmpgtb, 4012h, 0, 2, 0FFFFh, 640Fh, 0, 20000040h, \ ; "PCMPGTB"
     41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPcmpgtw, 4012h, 0, 2, 0FFFFh, 650Fh, 0, 20000043h, \ ; "PCMPGTW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPcmpgtd, 4012h, 0, 2, 0FFFFh, 660Fh, 0, 20000045h, \ ; "PCMPGTD"
     46h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPcmpgtb, 1014h, 0, 2, 0FFFFh, 640Fh, 0, 20000058h, \ ; "PCMPGTB"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpcmpgtb, 1018h, 100h, 1, 0FFh, 64h, 0, 20000058h, \ ; "VPCMPGTB"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aPcmpgtw, 1014h, 0, 2, 0FFFFh, 650Fh, 0, 2000005Eh, \ ; "PCMPGTW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpcmpgtw, 1018h, 100h, 1, 0FFh, 65h, 0, 2000005Eh, \ ; "VPCMPGTW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPcmpgtd, 1014h, 0, 2, 0FFFFh, 660Fh, 0, 20000062h, \ ; "PCMPGTD"
     65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpcmpgtd, 1018h, 100h, 1, 0FFh, 66h, 0, 20000062h, \ ; "VPCMPGTD"
     83h, 65h, 0, 0, 0>; 0
		t_bincmd <offset aPextrw, 84012h, 0, 2, 0C0FFFFh, 0C0C50Fh, 0, \ ; "PEXTRW"
     10000012h, 200044h, 60071h, 0, 0, 0>;	0
		t_bincmd <offset aPextrw, 81014h, 0, 2, 0C0FFFFh, 0C0C50Fh, 0, \ ; "PEXTRW"
     10000012h, 20005Fh, 60071h, 0, 0, 0>;	0
		t_bincmd <offset aVpextrw, 81018h, 900h, 1, 0C0FFh, 0C0C5h, 0, \ ; "VPEXTRW"
     10000012h, 20005Fh, 60071h, 0, 0, 0>;	0
		t_bincmd <offset aPinsrw, 4012h, 0, 2, 0FFFFh, 0C40Fh, 0, 20000043h, \ ; "PINSRW"
     18h, 60071h, 0, 0, 0>; 0
		t_bincmd <offset aPinsrw, 4012h, 0, 2, 0C0FFFFh, 0C0C40Fh, 0, \ ; "PINSRW"
     20000043h, 200019h, 60071h, 0, 0, 0>;	0
		t_bincmd <offset aPinsrw, 1014h, 0, 2, 0FFFFh, 0C40Fh, 0, 2000005Eh, \ ; "PINSRW"
     18h, 60071h, 0, 0, 0>; 0
		t_bincmd <offset aVpinsrw, 1018h, 100h, 1, 0FFh, 0C4h, 0, 2000005Eh, \ ; "VPINSRW"
     82h, 18h, 60071h, 0, 0>; 0
		t_bincmd <offset aPinsrw, 1014h, 0, 2, 0C0FFFFh, 0C0C40Fh, 0, \ ; "PINSRW"
     2000005Eh, 200019h, 60071h, 0, 0, 0>;	0
		t_bincmd <offset aVpinsrw, 1018h, 100h, 1, 0C0FFh, 0C0C4h, 0, \ ; "VPINSRW"
     2000005Eh, 82h, 200019h, 60071h, 0, 0>; 0
		t_bincmd <offset aPmaddwd, 4012h, 0, 2, 0FFFFh, 0F50Fh, 0, 20000043h, \ ; "PMADDWD"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmaddwd, 1014h, 0, 2, 0FFFFh, 0F50Fh, 0, 2000005Eh, \ ; "PMADDWD"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmaddwd, 1018h, 100h, 1, 0FFh, 0F5h, 0, 2000005Eh, \ ; "VPMADDWD"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPmaxsw, 4012h, 0, 2, 0FFFFh, 0EE0Fh, 0, 20000043h, \ ; "PMAXSW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmaxsw, 1014h, 0, 2, 0FFFFh, 0EE0Fh, 0, 2000005Eh, \ ; "PMAXSW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmaxsw, 1018h, 100h, 1, 0FFh, 0EEh, 0, 2000005Eh, \ ; "VPMAXSW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPmaxub, 4012h, 0, 2, 0FFFFh, 0DE0Fh, 0, 20000040h, \ ; "PMAXUB"
     41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmaxub, 1014h, 0, 2, 0FFFFh, 0DE0Fh, 0, 20000058h, \ ; "PMAXUB"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmaxub, 1018h, 100h, 1, 0FFh, 0DEh, 0, 20000058h, \ ; "VPMAXUB"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aPminsw, 4012h, 0, 2, 0FFFFh, 0EA0Fh, 0, 20000043h, \ ; "PMINSW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPminsw, 1014h, 0, 2, 0FFFFh, 0EA0Fh, 0, 2000005Eh, \ ; "PMINSW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpminsw, 1018h, 100h, 1, 0FFh, 0EAh, 0, 2000005Eh, \ ; "VPMINSW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPminub, 4012h, 0, 2, 0FFFFh, 0DA0Fh, 0, 20000040h, \ ; "PMINUB"
     41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPminub, 1014h, 0, 2, 0FFFFh, 0DA0Fh, 0, 20000058h, \ ; "PMINUB"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpminub, 1018h, 100h, 1, 0FFh, 0DAh, 0, 20000058h, \ ; "VPMINUB"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aPmovmskb, 84012h, 0, 2, 0C0FFFFh, 0C0D70Fh, 0, \ ; "PMOVMSKB"
     10000012h, 200041h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmovmskb, 81014h, 0, 2, 0C0FFFFh, 0C0D70Fh, 0, \ ; "PMOVMSKB"
     10000012h, 200059h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmovmskb, 81018h, 900h, 1, 0C0FFh, 0C0D7h, 0, \ ; "VPMOVMSKB"
     10000012h, 200059h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmulhuw, 4012h, 0, 2, 0FFFFh, 0E40Fh, 0, 20000043h, \ ; "PMULHUW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmulhuw, 1014h, 0, 2, 0FFFFh, 0E40Fh, 0, 2000005Eh, \ ; "PMULHUW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmulhuw, 1018h, 100h, 1, 0FFh, 0E4h, 0, 2000005Eh, \ ; "VPMULHUW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPmulhw, 4012h, 0, 2, 0FFFFh, 0E50Fh, 0, 20000043h, \ ; "PMULHW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmulhw, 1014h, 0, 2, 0FFFFh, 0E50Fh, 0, 2000005Eh, \ ; "PMULHW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmulhw, 1018h, 100h, 1, 0FFh, 0E5h, 0, 2000005Eh, \ ; "VPMULHW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPmullw, 4012h, 0, 2, 0FFFFh, 0D50Fh, 0, 20000043h, \ ; "PMULLW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmullw, 1014h, 0, 2, 0FFFFh, 0D50Fh, 0, 2000005Eh, \ ; "PMULLW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmullw, 1018h, 100h, 1, 0FFh, 0D5h, 0, 2000005Eh, \ ; "VPMULLW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPmuludq, 4012h, 0, 2, 0FFFFh, 0F40Fh, 0, 20000045h, \ ; "PMULUDQ"
     46h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmuludq, 1014h, 0, 2, 0FFFFh, 0F40Fh, 0, 20000062h, \ ; "PMULUDQ"
     65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmuludq, 1018h, 100h, 1, 0FFh, 0F4h, 0, 20000062h, \ ; "VPMULUDQ"
     83h, 65h, 0, 0, 0>; 0
		t_bincmd <offset aPor, 4012h, 0, 2, 0FFFFh, 0EB0Fh, 0, 20000040h, 41h,\ ; "POR"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aPor, 1014h, 0, 2, 0FFFFh, 0EB0Fh, 0, 20030058h, 59h,\ ; "POR"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aVpor, 1018h, 100h, 1, 0FFh, 0EBh, 0, 20030058h, \ ; "VPOR"
     30081h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aPsadbw, 4012h, 0, 2, 0FFFFh, 0F60Fh, 0, 20000040h, \ ; "PSADBW"
     41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsadbw, 1014h, 0, 2, 0FFFFh, 0F60Fh, 0, 20000058h, \ ; "PSADBW"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsadbw, 1018h, 100h, 1, 0FFh, 0F6h, 0, 20000058h, \ ; "VPSADBW"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aPshufd, 1014h, 0, 2, 0FFFFh, 700Fh, 0, 10000062h, \ ; "PSHUFD"
     65h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVpshufd, 1018h, 900h, 1, 0FFh, 70h, 0, 10000062h, \ ; "VPSHUFD"
     65h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aPshufhw, 3014h, 0, 2, 0FFFFh, 700Fh, 0, 1000005Eh, \ ; "PSHUFHW"
     5Fh, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVpshufhw, 3018h, 900h, 1, 0FFh, 70h, 0, 1000005Eh, \ ; "VPSHUFHW"
     5Fh, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aPshuflw, 2014h, 0, 2, 0FFFFh, 700Fh, 0, 1000005Eh, \ ; "PSHUFLW"
     5Fh, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVpshuflw, 2018h, 900h, 1, 0FFh, 70h, 0, 1000005Eh, \ ; "VPSHUFLW"
     5Fh, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aPshufw, 4012h, 0, 2, 0FFFFh, 700Fh, 0, 10000043h, \ ; "PSHUFW"
     44h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aPslldq, 81014h, 0, 2, 0F8FFFFh, 0F8730Fh, 0, \ ; "PSLLDQ"
     20200059h, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpslldq, 81018h, 100h, 1, 0F8FFh, 0F873h, 0, \ ; "VPSLLDQ"
     20000081h, 200059h, 60071h, 0, 0, 0>;	0
		t_bincmd <offset aPsllw, 4012h, 0, 2, 0FFFFh, 0F10Fh, 0, 20000043h, \ ; "PSLLW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsllw, 1014h, 0, 2, 0FFFFh, 0F10Fh, 0, 2000005Eh, \ ; "PSLLW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsllw, 1018h, 100h, 1, 0FFh, 0F1h, 0, 2000005Eh, \ ; "VPSLLW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPsllw, 84012h, 0, 2, 0F8FFFFh, 0F0710Fh, 0, \ ; "PSLLW"
     20200044h, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsllw, 81014h, 0, 2, 0F8FFFFh, 0F0710Fh, 0, \ ; "PSLLW"
     2020005Fh, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsllw, 81018h, 100h, 1, 0F8FFh, 0F071h, 0, \ ; "VPSLLW"
     20000082h, 20005Fh, 60071h, 0, 0, 0>;	0
		t_bincmd <offset aPslld, 4012h, 0, 2, 0FFFFh, 0F20Fh, 0, 20000045h, \ ; "PSLLD"
     46h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPslld, 1014h, 0, 2, 0FFFFh, 0F20Fh, 0, 20000062h, \ ; "PSLLD"
     65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpslld, 1018h, 100h, 1, 0FFh, 0F2h, 0, 20000062h, \ ; "VPSLLD"
     83h, 65h, 0, 0, 0>; 0
		t_bincmd <offset aPslld, 84012h, 0, 2, 0F8FFFFh, 0F0720Fh, 0, \ ; "PSLLD"
     20200046h, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPslld, 81014h, 0, 2, 0F8FFFFh, 0F0720Fh, 0, \ ; "PSLLD"
     20200065h, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpslld, 81018h, 100h, 1, 0F8FFh, 0F072h, 0, \ ; "VPSLLD"
     20000083h, 200065h, 60071h, 0, 0, 0>;	0
		t_bincmd <offset aPsllq, 4012h, 0, 2, 0FFFFh, 0F30Fh, 0, 20000047h, \ ; "PSLLQ"
     48h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsllq, 1014h, 0, 2, 0FFFFh, 0F30Fh, 0, 20000067h, \ ; "PSLLQ"
     68h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsllq, 1018h, 100h, 1, 0FFh, 0F3h, 0, 20000067h, \ ; "VPSLLQ"
     84h, 68h, 0, 0, 0>; 0
		t_bincmd <offset aPsllq, 84012h, 0, 2, 0F8FFFFh, 0F0730Fh, 0, \ ; "PSLLQ"
     20200048h, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsllq, 81014h, 0, 2, 0F8FFFFh, 0F0730Fh, 0, \ ; "PSLLQ"
     20200068h, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsllq, 81018h, 100h, 1, 0F8FFh, 0F073h, 0, \ ; "VPSLLQ"
     20000084h, 200068h, 60071h, 0, 0, 0>;	0
		t_bincmd <offset aPsraw, 4012h, 0, 2, 0FFFFh, 0E10Fh, 0, 20000043h, \ ; "PSRAW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsraw, 1014h, 0, 2, 0FFFFh, 0E10Fh, 0, 2000005Eh, \ ; "PSRAW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsraw, 1018h, 100h, 1, 0FFh, 0E1h, 0, 2000005Eh, \ ; "VPSRAW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPsraw, 84012h, 0, 2, 0F8FFFFh, 0E0710Fh, 0, \ ; "PSRAW"
     20200044h, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsraw, 81014h, 0, 2, 0F8FFFFh, 0E0710Fh, 0, \ ; "PSRAW"
     2020005Fh, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsraw, 81018h, 100h, 1, 0F8FFh, 0E071h, 0, \ ; "VPSRAW"
     20000082h, 20005Fh, 60071h, 0, 0, 0>;	0
		t_bincmd <offset aPsrad, 4012h, 0, 2, 0FFFFh, 0E20Fh, 0, 20000045h, \ ; "PSRAD"
     46h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsrad, 1014h, 0, 2, 0FFFFh, 0E20Fh, 0, 20000062h, \ ; "PSRAD"
     65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsrad, 1018h, 100h, 1, 0FFh, 0E2h, 0, 20000062h, \ ; "VPSRAD"
     83h, 65h, 0, 0, 0>; 0
		t_bincmd <offset aPsrad, 84012h, 0, 2, 0F8FFFFh, 0E0720Fh, 0, \ ; "PSRAD"
     20200046h, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsrad, 81014h, 0, 2, 0F8FFFFh, 0E0720Fh, 0, \ ; "PSRAD"
     20200065h, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsrad, 81018h, 100h, 1, 0F8FFh, 0E072h, 0, \ ; "VPSRAD"
     20000083h, 200065h, 60071h, 0, 0, 0>;	0
		t_bincmd <offset aPsrldq, 81014h, 0, 2, 0F8FFFFh, 0D8730Fh, 0, \ ; "PSRLDQ"
     20200059h, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsrldq, 81018h, 100h, 1, 0F8FFh, 0D873h, 0, \ ; "VPSRLDQ"
     20000081h, 200059h, 60071h, 0, 0, 0>;	0
		t_bincmd <offset aPsrlw, 4012h, 0, 2, 0FFFFh, 0D10Fh, 0, 20000043h, \ ; "PSRLW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsrlw, 1014h, 0, 2, 0FFFFh, 0D10Fh, 0, 2000005Eh, \ ; "PSRLW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsrlw, 1018h, 100h, 1, 0FFh, 0D1h, 0, 2000005Eh, \ ; "VPSRLW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPsrlw, 84012h, 0, 2, 0F8FFFFh, 0D0710Fh, 0, \ ; "PSRLW"
     20200044h, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsrlw, 81014h, 0, 2, 0F8FFFFh, 0D0710Fh, 0, \ ; "PSRLW"
     2020005Fh, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsrlw, 81018h, 100h, 1, 0F8FFh, 0D071h, 0, \ ; "VPSRLW"
     20000082h, 20005Fh, 60071h, 0, 0, 0>;	0
		t_bincmd <offset aPsrld, 4012h, 0, 2, 0FFFFh, 0D20Fh, 0, 20000045h, \ ; "PSRLD"
     46h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsrld, 1014h, 0, 2, 0FFFFh, 0D20Fh, 0, 20000062h, \ ; "PSRLD"
     65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsrld, 1018h, 100h, 1, 0FFh, 0D2h, 0, 20000062h, \ ; "VPSRLD"
     83h, 65h, 0, 0, 0>; 0
		t_bincmd <offset aPsrld, 84012h, 0, 2, 0F8FFFFh, 0D0720Fh, 0, \ ; "PSRLD"
     20200046h, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsrld, 81014h, 0, 2, 0F8FFFFh, 0D0720Fh, 0, \ ; "PSRLD"
     20200065h, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsrld, 81018h, 100h, 1, 0F8FFh, 0D072h, 0, \ ; "VPSRLD"
     20000083h, 200065h, 60071h, 0, 0, 0>;	0
		t_bincmd <offset aPsrlq, 4012h, 0, 2, 0FFFFh, 0D30Fh, 0, 20000047h, \ ; "PSRLQ"
     48h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsrlq, 1014h, 0, 2, 0FFFFh, 0D30Fh, 0, 20000067h, \ ; "PSRLQ"
     68h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsrlq, 1018h, 100h, 1, 0FFh, 0D3h, 0, 20000067h, \ ; "VPSRLQ"
     84h, 68h, 0, 0, 0>; 0
		t_bincmd <offset aPsrlq, 84012h, 0, 2, 0F8FFFFh, 0D0730Fh, 0, \ ; "PSRLQ"
     20200048h, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsrlq, 81014h, 0, 2, 0F8FFFFh, 0D0730Fh, 0, \ ; "PSRLQ"
     20200068h, 60071h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsrlq, 81018h, 100h, 1, 0F8FFh, 0D073h, 0, \ ; "VPSRLQ"
     20000084h, 200068h, 60071h, 0, 0, 0>;	0
		t_bincmd <offset aPsubb, 4012h, 0, 2, 0FFFFh, 0F80Fh, 0, 20000040h, \ ; "PSUBB"
     41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsubw, 4012h, 0, 2, 0FFFFh, 0F90Fh, 0, 20000043h, \ ; "PSUBW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsubd, 4012h, 0, 2, 0FFFFh, 0FA0Fh, 0, 20000045h, \ ; "PSUBD"
     46h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsubb, 1014h, 0, 2, 0FFFFh, 0F80Fh, 0, 20000058h, \ ; "PSUBB"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsubb, 1018h, 100h, 1, 0FFh, 0F8h, 0, 20000058h, \ ; "VPSUBB"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aPsubw, 1014h, 0, 2, 0FFFFh, 0F90Fh, 0, 2000005Eh, \ ; "PSUBW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsubw, 1018h, 100h, 1, 0FFh, 0F9h, 0, 2000005Eh, \ ; "VPSUBW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPsubd, 1014h, 0, 2, 0FFFFh, 0FA0Fh, 0, 20000062h, \ ; "PSUBD"
     65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsubd, 1018h, 100h, 1, 0FFh, 0FAh, 0, 20000062h, \ ; "VPSUBD"
     83h, 65h, 0, 0, 0>; 0
		t_bincmd <offset aPsubq, 4012h, 0, 2, 0FFFFh, 0FB0Fh, 0, 20000047h, \ ; "PSUBQ"
     48h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsubq, 1014h, 0, 2, 0FFFFh, 0FB0Fh, 0, 20000067h, \ ; "PSUBQ"
     68h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsubq, 1018h, 100h, 1, 0FFh, 0FBh, 0, 20000067h, \ ; "VPSUBQ"
     84h, 68h, 0, 0, 0>; 0
		t_bincmd <offset aPsubsb, 4012h, 0, 2, 0FFFFh, 0E80Fh, 0, 20000040h, \ ; "PSUBSB"
     41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsubsw, 4012h, 0, 2, 0FFFFh, 0E90Fh, 0, 20000043h, \ ; "PSUBSW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsubsb, 1014h, 0, 2, 0FFFFh, 0E80Fh, 0, 20000058h, \ ; "PSUBSB"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsubsb, 1018h, 100h, 1, 0FFh, 0E8h, 0, 20000058h, \ ; "VPSUBSB"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aPsubsw, 1014h, 0, 2, 0FFFFh, 0E90Fh, 0, 2000005Eh, \ ; "PSUBSW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsubsw, 1018h, 100h, 1, 0FFh, 0E9h, 0, 2000005Eh, \ ; "VPSUBSW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPsubusb, 4012h, 0, 2, 0FFFFh, 0D80Fh, 0, 20000040h, \ ; "PSUBUSB"
     41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsubusw, 4012h, 0, 2, 0FFFFh, 0D90Fh, 0, 20000043h, \ ; "PSUBUSW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsubusb, 1014h, 0, 2, 0FFFFh, 0D80Fh, 0, 20000058h, \ ; "PSUBUSB"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsubusb, 1018h, 100h, 1, 0FFh, 0D8h, 0, 20000058h, \ ; "VPSUBUSB"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aPsubusw, 1014h, 0, 2, 0FFFFh, 0D90Fh, 0, 2000005Eh, \ ; "PSUBUSW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsubusw, 1018h, 100h, 1, 0FFh, 0D9h, 0, 2000005Eh, \ ; "VPSUBUSW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPunpckhbw, 4012h, 0, 2, 0FFFFh, 680Fh, 0, 20000040h,\ ; "PUNPCKHBW"
     41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPunpckhbw, 1014h, 0, 2, 0FFFFh, 680Fh, 0, 20000058h,\ ; "PUNPCKHBW"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpunpckhbw, 1018h, 100h, 1, 0FFh, 68h, 0, 20000058h,\ ; "VPUNPCKHBW"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aPunpckhwd, 4012h, 0, 2, 0FFFFh, 690Fh, 0, 20000043h,\ ; "PUNPCKHWD"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPunpckhwd, 1014h, 0, 2, 0FFFFh, 690Fh, 0, 2000005Eh,\ ; "PUNPCKHWD"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpunpckhwd, 1018h, 100h, 1, 0FFh, 69h, 0, 2000005Eh,\ ; "VPUNPCKHWD"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPunpckhdq, 4012h, 0, 2, 0FFFFh, 6A0Fh, 0, 20000045h,\ ; "PUNPCKHDQ"
     46h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPunpckhdq, 1014h, 0, 2, 0FFFFh, 6A0Fh, 0, 20000062h,\ ; "PUNPCKHDQ"
     65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpunpckhdq, 1018h, 100h, 1, 0FFh, 6Ah, 0, 20000062h,\ ; "VPUNPCKHDQ"
     83h, 65h, 0, 0, 0>; 0
		t_bincmd <offset aPunpckhqdq, 1014h, 0, 2, 0FFFFh, 6D0Fh, 0, \ ; "PUNPCKHQDQ"
     20000062h, 65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpunpckhqdq, 1018h, 100h, 1, 0FFh, 6Dh, 0, \ ; "VPUNPCKHQDQ"
     20000062h, 83h, 65h, 0, 0, 0>; 0
		t_bincmd <offset aPunpcklbw, 4012h, 0, 2, 0FFFFh, 600Fh, 0, 20000040h,\ ; "PUNPCKLBW"
     41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPunpcklbw, 1014h, 0, 2, 0FFFFh, 600Fh, 0, 20000058h,\ ; "PUNPCKLBW"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpunpcklbw, 1018h, 100h, 1, 0FFh, 60h, 0, 20000058h,\ ; "VPUNPCKLBW"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aPunpcklwd, 4012h, 0, 2, 0FFFFh, 610Fh, 0, 20000043h,\ ; "PUNPCKLWD"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPunpcklwd, 1014h, 0, 2, 0FFFFh, 610Fh, 0, 2000005Eh,\ ; "PUNPCKLWD"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpunpcklwd, 1018h, 100h, 1, 0FFh, 61h, 0, 2000005Eh,\ ; "VPUNPCKLWD"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPunpckldq, 4012h, 0, 2, 0FFFFh, 620Fh, 0, 20000045h,\ ; "PUNPCKLDQ"
     46h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPunpckldq, 1014h, 0, 2, 0FFFFh, 620Fh, 0, 20000062h,\ ; "PUNPCKLDQ"
     65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpunpckldq, 1018h, 100h, 1, 0FFh, 62h, 0, 20000062h,\ ; "VPUNPCKLDQ"
     83h, 65h, 0, 0, 0>; 0
		t_bincmd <offset aPunpcklqdq, 1014h, 0, 2, 0FFFFh, 6C0Fh, 0, \ ; "PUNPCKLQDQ"
     20000062h, 65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpunpcklqdq, 1018h, 100h, 1, 0FFh, 6Ch, 0, \ ; "VPUNPCKLQDQ"
     20000062h, 83h, 65h, 0, 0, 0>; 0
		t_bincmd <offset aPxor, 4012h, 0, 2, 0FFFFh, 0EF0Fh, 0, 20000040h, \ ; "PXOR"
     41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPxor, 1014h, 0, 2, 0FFFFh, 0EF0Fh, 0, 20030058h, \ ; "PXOR"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpxor, 1018h, 100h, 1, 0FFh, 0EFh, 0, 20030058h, \ ; "VPXOR"
     30081h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aRcpps, 4014h, 0, 2, 0FFFFh, 530Fh, 0, 1000004Eh, \ ; "RCPPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVrcpps, 4018h, 0B00h, 1, 0FFh, 53h, 0, 1000004Eh, \ ; "VRCPPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aRcpss, 3014h, 0, 2, 0FFFFh, 530Fh, 0, 1000004Fh, \ ; "RCPSS"
     52h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVrcpss, 3018h, 700h, 1, 0FFh, 53h, 0, 1000004Fh, \ ; "VRCPSS"
     1000007Eh, 52h, 0, 0, 0>; 0
		t_bincmd <offset aRsqrtps, 4014h, 0, 2, 0FFFFh, 520Fh, 0, 1000004Eh, \ ; "RSQRTPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVrsqrtps, 4018h, 0B00h, 1, 0FFh, 52h, 0, 1000004Eh, \ ; "VRSQRTPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aRsqrtss, 3014h, 0, 2, 0FFFFh, 520Fh, 0, 1000004Fh, \ ; "RSQRTSS"
     52h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVrsqrtss, 3018h, 700h, 1, 0FFh, 52h, 0, 1000004Fh, \ ; "VRSQRTSS"
     7Eh, 52h, 0, 0, 0>; 0
		t_bincmd <offset aShufpd, 1014h, 0, 2, 0FFFFh, 0C60Fh, 0, 20000054h, \ ; "SHUFPD"
     56h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVshufpd, 1018h, 300h, 1, 0FFh, 0C6h, 0, 20000054h, \ ; "VSHUFPD"
     7Fh, 56h, 30071h, 0, 0>; 0
		t_bincmd <offset aShufps, 4014h, 0, 2, 0FFFFh, 0C60Fh, 0, 2000004Eh, \ ; "SHUFPS"
     51h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVshufps, 4018h, 300h, 1, 0FFh, 0C6h, 0, 2000004Eh, \ ; "VSHUFPS"
     7Dh, 51h, 30071h, 0, 0>; 0
		t_bincmd <offset aSqrtpd, 1014h, 0, 2, 0FFFFh, 510Fh, 0, 10000054h, \ ; "SQRTPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVsqrtpd, 1018h, 0B00h, 1, 0FFh, 51h, 0, 10000054h, \ ; "VSQRTPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aRsqrtps+2, 4014h, 0, 2, 0FFFFh, 510Fh, 0, 1000004Eh,\ ; "SQRTPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVsqrtps, 4018h, 0B00h, 1, 0FFh, 51h, 0, 1000004Eh, \ ; "VSQRTPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSqrtsd, 2014h, 0, 2, 0FFFFh, 510Fh, 0, 10000055h, \ ; "SQRTSD"
     57h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVsqrtsd, 2018h, 700h, 1, 0FFh, 51h, 0, 10000055h, \ ; "VSQRTSD"
     80h, 57h, 0, 0, 0>; 0
		t_bincmd <offset aRsqrtss+2, 3014h, 0, 2, 0FFFFh, 510Fh, 0, 1000004Fh,\ ; "SQRTSS"
     52h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVsqrtss, 3018h, 700h, 1, 0FFh, 51h, 0, 1000004Fh, \ ; "VSQRTSS"
     7Eh, 52h, 0, 0, 0>; 0
		t_bincmd <offset aAddsubpd+6, 1014h, 0, 2, 0FFFFh, 5C0Fh, 0, \ ; "SUBPD"
     20000054h, 56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVsubpd, 1018h, 300h, 1, 0FFh, 5Ch, 0, 20000054h, \ ; "VSUBPD"
     7Fh, 56h, 0, 0, 0>; 0
		t_bincmd <offset aAddsubps+6, 4014h, 0, 2, 0FFFFh, 5C0Fh, 0, \ ; "SUBPS"
     2000004Eh, 51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVsubps, 4018h, 300h, 1, 0FFh, 5Ch, 0, 2000004Eh, \ ; "VSUBPS"
     7Dh, 51h, 0, 0, 0>; 0
		t_bincmd <offset aSubsd, 2014h, 0, 2, 0FFFFh, 5C0Fh, 0, 20000055h, \ ; "SUBSD"
     57h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVsubsd, 2018h, 700h, 1, 0FFh, 5Ch, 0, 20000055h, \ ; "VSUBSD"
     80h, 57h, 0, 0, 0>; 0
		t_bincmd <offset aSubss, 3014h, 0, 2, 0FFFFh, 5C0Fh, 0, 2000004Fh, \ ; "SUBSS"
     52h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVsubss, 3018h, 700h, 1, 0FFh, 5Ch, 0, 2000004Fh, \ ; "VSUBSS"
     7Eh, 52h, 0, 0, 0>; 0
		t_bincmd <offset aUnpckhpd, 1014h, 0, 2, 0FFFFh, 150Fh, 0, 20000054h, \ ; "UNPCKHPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVunpckhpd, 1018h, 300h, 1, 0FFh, 15h, 0, 20000054h, \ ; "VUNPCKHPD"
     7Fh, 56h, 0, 0, 0>; 0
		t_bincmd <offset aUnpckhps, 4014h, 0, 2, 0FFFFh, 150Fh, 0, 2000004Eh, \ ; "UNPCKHPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVunpckhps, 4018h, 300h, 1, 0FFh, 15h, 0, 2000004Eh, \ ; "VUNPCKHPS"
     7Dh, 51h, 0, 0, 0>; 0
		t_bincmd <offset aUnpcklpd, 1014h, 0, 2, 0FFFFh, 140Fh, 0, 20000054h, \ ; "UNPCKLPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVunpcklpd, 1018h, 300h, 1, 0FFh, 14h, 0, 20000054h, \ ; "VUNPCKLPD"
     7Fh, 56h, 0, 0, 0>; 0
		t_bincmd <offset aUnpcklps, 4014h, 0, 2, 0FFFFh, 140Fh, 0, 2000004Eh, \ ; "UNPCKLPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVunpcklps, 4018h, 300h, 1, 0FFh, 14h, 0, 2000004Eh, \ ; "VUNPCKLPS"
     7Dh, 51h, 0, 0, 0>; 0
		t_bincmd <offset aUcomisd, 101014h, 0, 2, 0FFFFh, 2E0Fh, 0, 55h, 57h, \ ; "UCOMISD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aVucomisd, 101018h, 0F00h, 1, 0FFh, 2Eh, 0, 55h, 57h,\ ; "VUCOMISD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aUcomiss, 104014h, 0, 2, 0FFFFh, 2E0Fh, 0, 4Fh, 52h, \ ; "UCOMISS"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aVucomiss, 104018h, 0F00h, 1, 0FFh, 2Eh, 0, 4Fh, 52h,\ ; "VUCOMISS"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aXorpd, 1014h, 0, 2, 0FFFFh, 570Fh, 0, 20000054h, \ ; "XORPD"
     56h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVxorpd, 1018h, 300h, 1, 0FFh, 57h, 0, 20000054h, \ ; "VXORPD"
     7Fh, 56h, 0, 0, 0>; 0
		t_bincmd <offset aXorps, 4014h, 0, 2, 0FFFFh, 570Fh, 0, 2000004Eh, \ ; "XORPS"
     51h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVxorps, 4018h, 300h, 1, 0FFh, 57h, 0, 2000004Eh, \ ; "VXORPS"
     7Dh, 51h, 0, 0, 0>; 0
		t_bincmd <offset aFxrstor, 40014h, 0, 2, 38FFFFh, 8AE0Fh, 0, 100026h, \ ; "FXRSTOR"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aFxsave, 40014h, 0, 2, 38FFFFh, 0AE0Fh, 0, 10100026h,\ ; "FXSAVE"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aLfence, 14h, 0, 3, 0FFFFFFh, 0E8AE0Fh, 0, 0, 0, 0, \ ; "LFENCE"
     0, 0, 0>	; 0
		t_bincmd <offset aPrefetcht0, 44014h, 0, 2, 38FFFFh, 8180Fh, 0, \ ; "PREFETCHT0"
     100027h, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aPrefetcht1, 44014h, 0, 2, 38FFFFh, 10180Fh, 0, \ ; "PREFETCHT1"
     100027h, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aPrefetcht2, 44014h, 0, 2, 38FFFFh, 18180Fh, 0, \ ; "PREFETCHT2"
     100027h, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aPrefetchnta, 44014h, 0, 2, 38FFFFh, 180Fh, 0, \ ; "PREFETCHNTA"
     100027h, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aNop_0, 0C0044014h, 4000000h, 2, 20FFFFh, 20180Fh, 0,\ ; "NOP"
     100027h, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aPrefetch, 44014h, 0, 2, 38FFFFh, 0D0Fh, 0, 100027h, \ ; "PREFETCH"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aPrefetchw, 44014h, 0, 2, 38FFFFh, 80D0Fh, 0, \ ; "PREFETCHW"
     100027h, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aSfence, 14h, 0, 3, 0FFFFFFh, 0F8AE0Fh, 0, 0, 0, 0, \ ; "SFENCE"
     0, 0, 0>	; 0
		t_bincmd <offset aBlendpd_1, 1014h, 0, 3, 0FFFFFFh, 0D3A0Fh, 0, \ ; "BLENDPD"
     20000054h, 56h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVblendpd, 1018h, 20300h, 1, 0FFh, 0Dh, 0, 20000054h,\ ; "VBLENDPD"
     7Fh, 56h, 30071h, 0, 0>; 0
		t_bincmd <offset aBlendps, 1014h, 0, 3, 0FFFFFFh, 0C3A0Fh, 0, \ ; "BLENDPS"
     2000004Eh, 51h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVblendps, 1018h, 20300h, 1, 0FFh, 0Ch, 0, 2000004Eh,\ ; "VBLENDPS"
     7Dh, 51h, 30071h, 0, 0>; 0
		t_bincmd <offset aBlendvpd, 1014h, 0, 3, 0FFFFFFh, 15380Fh, 0, \ ; "BLENDVPD"
     20000054h, 56h, 4Ch, 0, 0, 0>; 0
		t_bincmd <offset aBlendvpd, 1014h, 0, 3, 0FFFFFFh, 15380Fh, 0, \ ; "BLENDVPD"
     20000054h, 56h, 4000004Ch, 0, 0, 0>; 0
		t_bincmd <offset aVblendvpd, 1018h, 21300h, 1, 0FFh, 4Bh, 0, \ ; "VBLENDVPD"
     20000054h, 7Fh, 56h, 85h, 0, 0>; 0
		t_bincmd <offset aBlendvps, 1014h, 0, 3, 0FFFFFFh, 14380Fh, 0, \ ; "BLENDVPS"
     2000004Eh, 51h, 4Bh, 0, 0, 0>; 0
		t_bincmd <offset aBlendvps, 1014h, 0, 3, 0FFFFFFh, 14380Fh, 0, \ ; "BLENDVPS"
     2000004Eh, 51h, 4000004Bh, 0, 0, 0>; 0
		t_bincmd <offset aVblendvps, 1018h, 21300h, 1, 0FFh, 4Ah, 0, \ ; "VBLENDVPS"
     2000004Eh, 7Dh, 51h, 85h, 0, 0>; 0
		t_bincmd <offset aCrc32, 5000h, 0, 3, 0FFFFFFh, 0F0380Fh, 0, \ ; "CRC32"
     20070012h, 8000017h, 0, 0, 0, 0>; 0
		t_bincmd <offset aCrc32, 5000h, 0, 3, 0FFFFFFh, 0F1380Fh, 0, \ ; "CRC32"
     20070012h, 807001Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aDppd, 1014h, 0, 3, 0FFFFFFh, 413A0Fh, 0, 20000054h, \ ; "DPPD"
     56h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVdppd, 1018h, 20100h, 1, 0FFh, 41h, 0, 20000054h, \ ; "VDPPD"
     7Fh, 56h, 30071h, 0, 0>; 0
		t_bincmd <offset aDpps, 1014h, 0, 3, 0FFFFFFh, 403A0Fh, 0, 2000004Eh, \ ; "DPPS"
     51h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVdpps, 1018h, 20300h, 1, 0FFh, 40h, 0, 2000004Eh, \ ; "VDPPS"
     7Dh, 51h, 30071h, 0, 0>; 0
		t_bincmd <offset aExtractps, 1014h, 0, 3, 0FFFFFFh, 173A0Fh, 0, \ ; "EXTRACTPS"
     10000019h, 4Eh, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVextractps, 1018h, 20900h, 1, 0FFh, 17h, 0, \ ; "VEXTRACTPS"
     10000019h, 4Eh, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aInsertps, 1014h, 0, 3, 0FFFFFFh, 213A0Fh, 0, \ ; "INSERTPS"
     2000004Eh, 52h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVinsertps, 1018h, 20100h, 1, 0FFh, 21h, 0, \ ; "VINSERTPS"
     2000004Eh, 7Dh, 52h, 30071h, 0, 0>; 0
		t_bincmd <offset aMovntdqa, 41014h, 0, 3, 0FFFFFFh, 2A380Fh, 0, \ ; "MOVNTDQA"
     10030058h, 100059h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmovntdqa, 41018h, 10900h, 1, 0FFh, 2Ah, 0, \ ; "VMOVNTDQA"
     10030058h, 100059h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMpsadbw, 1014h, 0, 3, 0FFFFFFh, 423A0Fh, 0, \ ; "MPSADBW"
     20000058h, 59h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVmpsadbw, 1018h, 20100h, 1, 0FFh, 42h, 0, 20000058h,\ ; "VMPSADBW"
     81h, 59h, 30071h, 0, 0>; 0
		t_bincmd <offset aPackusdw, 1014h, 0, 3, 0FFFFFFh, 2B380Fh, 0, \ ; "PACKUSDW"
     20000062h, 65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpackusdw, 1018h, 10100h, 1, 0FFh, 2Bh, 0, \ ; "VPACKUSDW"
     20000062h, 20000083h, 65h, 0, 0, 0>; 0
		t_bincmd <offset aPblendvb, 1014h, 0, 3, 0FFFFFFh, 10380Fh, 0, \ ; "PBLENDVB"
     20000058h, 59h, 4Dh, 0, 0, 0>; 0
		t_bincmd <offset aPblendvb, 1014h, 0, 3, 0FFFFFFh, 10380Fh, 0, \ ; "PBLENDVB"
     20000058h, 59h, 4000004Dh, 0, 0, 0>; 0
		t_bincmd <offset aVpblendvb, 1018h, 21100h, 1, 0FFh, 4Ch, 0, \ ; "VPBLENDVB"
     20000058h, 81h, 59h, 85h, 0, 0>; 0
		t_bincmd <offset aPblendw, 1014h, 0, 3, 0FFFFFFh, 0E3A0Fh, 0, \ ; "PBLENDW"
     2000005Eh, 5Fh, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVpblendw, 1018h, 20100h, 1, 0FFh, 0Eh, 0, 2000005Eh,\ ; "VPBLENDW"
     82h, 5Fh, 30071h, 0, 0>; 0
		t_bincmd <offset aPclmullqlqdq, 1054h, 0, 3, 0FFFFFFh, 443A0Fh, 0, \ ; "PCLMULLQLQDQ"
     20000067h, 68h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpclmullqlqdq, 1058h, 20100h, 1, 0FFh, 44h, 0, \ ; "VPCLMULLQLQDQ"
     20000067h, 84h, 68h, 0, 0, 0>; 0
		t_bincmd <offset aPclmulhqlqdq, 1054h, 0, 3, 0FFFFFFh, 443A0Fh, 1, \ ; "PCLMULHQLQDQ"
     20000067h, 68h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpclmulhqlqdq, 1058h, 20100h, 1, 0FFh, 44h, 1, \ ; "VPCLMULHQLQDQ"
     20000067h, 84h, 68h, 0, 0, 0>; 0
		t_bincmd <offset aPclmullqhdq, 1054h, 0, 3, 0FFFFFFh, 443A0Fh, 10h, \ ; "PCLMULLQHDQ"
     20000067h, 68h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpclmullqhdq, 1058h, 20100h, 1, 0FFh, 44h, 10h, \ ; "VPCLMULLQHDQ"
     20000067h, 84h, 68h, 0, 0, 0>; 0
		t_bincmd <offset aPclmulhqhdq, 1054h, 0, 3, 0FFFFFFh, 443A0Fh, 11h, \ ; "PCLMULHQHDQ"
     20000067h, 68h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpclmulhqhdq, 1058h, 20100h, 1, 0FFh, 44h, 11h, \ ; "VPCLMULHQHDQ"
     20000067h, 84h, 68h, 0, 0, 0>; 0
		t_bincmd <offset aPclmulqdq, 1014h, 0, 3, 0FFFFFFh, 443A0Fh, 0, \ ; "PCLMULQDQ"
     20000067h, 68h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVpclmulqdq, 1018h, 20100h, 1, 0FFh, 44h, 0, \ ; "VPCLMULQDQ"
     20000067h, 84h, 68h, 30071h, 0, 0>; 0
		t_bincmd <offset aPcmpeqq, 1014h, 0, 3, 0FFFFFFh, 29380Fh, 0, \ ; "PCMPEQQ"
     20000067h, 68h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpcmpeqq, 1018h, 10100h, 1, 0FFh, 29h, 0, 20000067h,\ ; "VPCMPEQQ"
     84h, 68h, 0, 0, 0>; 0
		t_bincmd <offset aPcmpestri, 101014h, 0, 3, 0FFFFFFh, 613A0Fh, 0, 58h,\ ; "PCMPESTRI"
     59h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVpcmpestri, 101018h, 20900h, 1, 0FFh, 61h, 0, 58h, \ ; "VPCMPESTRI"
     59h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aPcmpestrm, 101014h, 0, 3, 0FFFFFFh, 603A0Fh, 0, 58h,\ ; "PCMPESTRM"
     59h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVpcmpestrm, 101018h, 20900h, 1, 0FFh, 60h, 0, 58h, \ ; "VPCMPESTRM"
     59h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aPcmpistri, 101014h, 0, 3, 0FFFFFFh, 633A0Fh, 0, 58h,\ ; "PCMPISTRI"
     59h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVpcmpistri, 101018h, 20900h, 1, 0FFh, 63h, 0, 58h, \ ; "VPCMPISTRI"
     59h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aPcmpistrm, 101014h, 0, 3, 0FFFFFFh, 623A0Fh, 0, 58h,\ ; "PCMPISTRM"
     59h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVpcmpistrm, 101018h, 20900h, 1, 0FFh, 62h, 0, 58h, \ ; "VPCMPISTRM"
     59h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aPcmpgtq, 1014h, 0, 3, 0FFFFFFh, 37380Fh, 0, \ ; "PCMPGTQ"
     20000067h, 68h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpcmpgtq, 1018h, 10100h, 1, 0FFh, 37h, 0, 20000067h,\ ; "VPCMPGTQ"
     84h, 68h, 0, 0, 0>; 0
		t_bincmd <offset aPextrb, 41014h, 0, 3, 0FFFFFFh, 143A0Fh, 0, \ ; "PEXTRB"
     10100017h, 58h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aPextrb, 81014h, 0, 3, 0FFFFFFh, 143A0Fh, 0, \ ; "PEXTRB"
     10200019h, 58h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVpextrb, 41018h, 21900h, 1, 0FFh, 14h, 0, 10100017h,\ ; "VPEXTRB"
     58h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVpextrb, 81018h, 21900h, 1, 0FFh, 14h, 0, 10200019h,\ ; "VPEXTRB"
     58h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aPextrd, 1014h, 0, 3, 0FFFFFFh, 163A0Fh, 0, \ ; "PEXTRD"
     10000019h, 62h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVpextrd, 1018h, 20900h, 1, 0FFh, 16h, 0, 10000019h, \ ; "VPEXTRD"
     62h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aPextrw, 41014h, 0, 3, 0FFFFFFh, 153A0Fh, 0, \ ; "PEXTRW"
     10100018h, 5Eh, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aPextrw, 81014h, 0, 3, 0FFFFFFh, 153A0Fh, 0, \ ; "PEXTRW"
     10200019h, 5Eh, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVpextrw, 1018h, 20900h, 1, 0FFh, 15h, 0, 10000018h, \ ; "VPEXTRW"
     5Eh, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aPhminposuw, 1014h, 0, 3, 0FFFFFFh, 41380Fh, 0, \ ; "PHMINPOSUW"
     1000005Eh, 5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVphminposuw, 1018h, 10900h, 1, 0FFh, 41h, 0, \ ; "VPHMINPOSUW"
     1000005Eh, 5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aPinsrb, 41014h, 0, 3, 0FFFFFFh, 203A0Fh, 0, \ ; "PINSRB"
     20000058h, 100017h, 30071h, 0, 0, 0>;	0
		t_bincmd <offset aVpinsrb, 41018h, 21100h, 1, 0FFh, 20h, 0, 20000058h,\ ; "VPINSRB"
     81h, 100017h, 30071h, 0, 0>; 0
		t_bincmd <offset aPinsrb, 81014h, 0, 3, 0FFFFFFh, 203A0Fh, 0, \ ; "PINSRB"
     20000058h, 200019h, 30071h, 0, 0, 0>;	0
		t_bincmd <offset aVpinsrb, 81018h, 21100h, 1, 0FFh, 20h, 0, 20000058h,\ ; "VPINSRB"
     81h, 200019h, 30071h, 0, 0>; 0
		t_bincmd <offset aPinsrd, 1014h, 0, 3, 0FFFFFFh, 223A0Fh, 0, \ ; "PINSRD"
     20000062h, 19h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVpinsrd, 1018h, 21100h, 1, 0FFh, 22h, 0, 20000062h, \ ; "VPINSRD"
     83h, 19h, 30071h, 0, 0>; 0
		t_bincmd <offset aPmaxsb, 1014h, 0, 3, 0FFFFFFh, 3C380Fh, 0, \ ; "PMAXSB"
     20020058h, 20059h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmaxsb, 1018h, 10100h, 1, 0FFh, 3Ch, 0, 20020058h, \ ; "VPMAXSB"
     20081h, 20059h, 0, 0, 0>; 0
		t_bincmd <offset aPmaxsd, 1014h, 0, 3, 0FFFFFFh, 3D380Fh, 0, \ ; "PMAXSD"
     20020062h, 20065h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmaxsd, 1018h, 10100h, 1, 0FFh, 3Dh, 0, 20020062h, \ ; "VPMAXSD"
     20083h, 20065h, 0, 0, 0>; 0
		t_bincmd <offset aPmaxud, 1014h, 0, 3, 0FFFFFFh, 3F380Fh, 0, \ ; "PMAXUD"
     20010062h, 10065h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmaxud, 1018h, 10100h, 1, 0FFh, 3Fh, 0, 20010062h, \ ; "VPMAXUD"
     10083h, 10065h, 0, 0, 0>; 0
		t_bincmd <offset aPmaxuw, 1014h, 0, 3, 0FFFFFFh, 3E380Fh, 0, \ ; "PMAXUW"
     2001005Eh, 1005Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmaxuw, 1018h, 10100h, 1, 0FFh, 3Eh, 0, 2001005Eh, \ ; "VPMAXUW"
     10082h, 1005Fh, 0, 0, 0>; 0
		t_bincmd <offset aPminsb, 1014h, 0, 3, 0FFFFFFh, 38380Fh, 0, \ ; "PMINSB"
     20020058h, 20059h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpminsb, 1018h, 10100h, 1, 0FFh, 38h, 0, 20020058h, \ ; "VPMINSB"
     20081h, 20059h, 0, 0, 0>; 0
		t_bincmd <offset aPminsd, 1014h, 0, 3, 0FFFFFFh, 39380Fh, 0, \ ; "PMINSD"
     20020062h, 20065h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpminsd, 1018h, 10100h, 1, 0FFh, 39h, 0, 20020062h, \ ; "VPMINSD"
     20083h, 20065h, 0, 0, 0>; 0
		t_bincmd <offset aPminud, 1014h, 0, 3, 0FFFFFFh, 3B380Fh, 0, \ ; "PMINUD"
     20010062h, 10065h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpminud, 1018h, 10100h, 1, 0FFh, 3Bh, 0, 20010062h, \ ; "VPMINUD"
     10083h, 10065h, 0, 0, 0>; 0
		t_bincmd <offset aPminuw, 1014h, 0, 3, 0FFFFFFh, 3A380Fh, 0, \ ; "PMINUW"
     2001005Eh, 1005Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpminuw, 1018h, 10100h, 1, 0FFh, 3Ah, 0, 2001005Eh, \ ; "VPMINUW"
     10082h, 1005Fh, 0, 0, 0>; 0
		t_bincmd <offset aPmovsxbw, 1014h, 0, 3, 0FFFFFFh, 20380Fh, 0, \ ; "PMOVSXBW"
     1002005Eh, 5Bh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmovsxbw, 1018h, 10900h, 1, 0FFh, 20h, 0, \ ; "VPMOVSXBW"
     1002005Eh, 5Bh, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmovsxbd, 1014h, 0, 3, 0FFFFFFh, 21380Fh, 0, \ ; "PMOVSXBD"
     10020062h, 5Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmovsxbd, 1018h, 10900h, 1, 0FFh, 21h, 0, \ ; "VPMOVSXBD"
     10020062h, 5Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmovsxbq, 1014h, 0, 3, 0FFFFFFh, 22380Fh, 0, \ ; "PMOVSXBQ"
     10020067h, 5Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmovsxbq, 1018h, 10900h, 1, 0FFh, 22h, 0, \ ; "VPMOVSXBQ"
     10020067h, 5Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmovsxwd, 1014h, 0, 3, 0FFFFFFh, 23380Fh, 0, \ ; "PMOVSXWD"
     10020062h, 60h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmovsxwd, 1018h, 10900h, 1, 0FFh, 23h, 0, \ ; "VPMOVSXWD"
     10020062h, 60h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmovsxwq, 1014h, 0, 3, 0FFFFFFh, 24380Fh, 0, \ ; "PMOVSXWQ"
     10020067h, 61h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmovsxwq, 1018h, 10900h, 1, 0FFh, 24h, 0, \ ; "VPMOVSXWQ"
     10020067h, 61h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmovsxdq, 1014h, 0, 3, 0FFFFFFh, 25380Fh, 0, \ ; "PMOVSXDQ"
     10020067h, 66h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmovsxdq, 1018h, 10900h, 1, 0FFh, 25h, 0, \ ; "VPMOVSXDQ"
     10020067h, 66h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmovzxbw, 1014h, 0, 3, 0FFFFFFh, 30380Fh, 0, \ ; "PMOVZXBW"
     1000005Eh, 5Bh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmovzxbw, 1018h, 10900h, 1, 0FFh, 30h, 0, \ ; "VPMOVZXBW"
     1000005Eh, 5Bh, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmovzxbd, 1014h, 0, 3, 0FFFFFFh, 31380Fh, 0, \ ; "PMOVZXBD"
     10000062h, 5Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmovzxbd, 1018h, 10900h, 1, 0FFh, 31h, 0, \ ; "VPMOVZXBD"
     10000062h, 5Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmovzxbq, 1014h, 0, 3, 0FFFFFFh, 32380Fh, 0, \ ; "PMOVZXBQ"
     10000067h, 5Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmovzxbq, 1018h, 10900h, 1, 0FFh, 32h, 0, \ ; "VPMOVZXBQ"
     10000067h, 5Dh, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmovzxwd, 1014h, 0, 3, 0FFFFFFh, 33380Fh, 0, \ ; "PMOVZXWD"
     10000062h, 60h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmovzxwd, 1018h, 10900h, 1, 0FFh, 33h, 0, \ ; "VPMOVZXWD"
     10000062h, 60h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmovzxwq, 1014h, 0, 3, 0FFFFFFh, 34380Fh, 0, \ ; "PMOVZXWQ"
     10000067h, 61h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmovzxwq, 1018h, 10900h, 1, 0FFh, 34h, 0, \ ; "VPMOVZXWQ"
     10000067h, 61h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmovzxdq, 1014h, 0, 3, 0FFFFFFh, 35380Fh, 0, \ ; "PMOVZXDQ"
     10000067h, 66h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmovzxdq, 1018h, 10900h, 1, 0FFh, 35h, 0, \ ; "VPMOVZXDQ"
     10000067h, 66h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmuldq, 1014h, 0, 3, 0FFFFFFh, 28380Fh, 0, \ ; "PMULDQ"
     20020062h, 20065h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmuldq, 1018h, 10100h, 1, 0FFh, 28h, 0, 20020062h, \ ; "VPMULDQ"
     20083h, 20065h, 0, 0, 0>; 0
		t_bincmd <offset aPmulld, 1014h, 0, 3, 0FFFFFFh, 40380Fh, 0, \ ; "PMULLD"
     20020062h, 20065h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmulld, 1018h, 10100h, 1, 0FFh, 40h, 0, 20020062h, \ ; "VPMULLD"
     20083h, 20065h, 0, 0, 0>; 0
		t_bincmd <offset aPtest, 101014h, 0, 3, 0FFFFFFh, 17380Fh, 0, 62h, \ ; "PTEST"
     65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVptest, 101018h, 10B00h, 1, 0FFh, 17h, 0, 62h, 65h, \ ; "VPTEST"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aRoundpd, 1014h, 0, 3, 0FFFFFFh, 93A0Fh, 0, \ ; "ROUNDPD"
     10000054h, 56h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVroundpd, 1018h, 20B00h, 1, 0FFh, 9, 0, 10000054h, \ ; "VROUNDPD"
     56h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aRoundps, 1014h, 0, 3, 0FFFFFFh, 83A0Fh, 0, \ ; "ROUNDPS"
     1000004Eh, 51h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVroundps, 1018h, 20B00h, 1, 0FFh, 8, 0, 1000004Eh, \ ; "VROUNDPS"
     51h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aRoundsd, 1014h, 0, 3, 0FFFFFFh, 0B3A0Fh, 0, \ ; "ROUNDSD"
     10000055h, 57h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVroundsd, 1018h, 20700h, 1, 0FFh, 0Bh, 0, 10000055h,\ ; "VROUNDSD"
     80h, 57h, 30071h, 0, 0>; 0
		t_bincmd <offset aRoundss, 1014h, 0, 3, 0FFFFFFh, 0A3A0Fh, 0, \ ; "ROUNDSS"
     1000004Fh, 52h, 30071h, 0, 0, 0>; 0
		t_bincmd <offset aVroundss, 1018h, 20700h, 1, 0FFh, 0Ah, 0, 1000004Fh,\ ; "VROUNDSS"
     7Eh, 52h, 30071h, 0, 0>; 0
		t_bincmd <offset aPabsb, 4012h, 0, 3, 0FFFFFFh, 1C380Fh, 0, 10010040h,\ ; "PABSB"
     20041h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPabsb, 1014h, 0, 3, 0FFFFFFh, 1C380Fh, 0, 10010058h,\ ; "PABSB"
     20059h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpabsb, 1018h, 10900h, 1, 0FFh, 1Ch, 0, 10010058h, \ ; "VPABSB"
     20059h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPabsw, 4012h, 0, 3, 0FFFFFFh, 1D380Fh, 0, 10010043h,\ ; "PABSW"
     20044h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPabsw, 1014h, 0, 3, 0FFFFFFh, 1D380Fh, 0, 1001005Eh,\ ; "PABSW"
     2005Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpabsw, 1018h, 10900h, 1, 0FFh, 1Dh, 0, 1001005Eh, \ ; "VPABSW"
     2005Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aPabsd, 4012h, 0, 3, 0FFFFFFh, 1E380Fh, 0, 10010045h,\ ; "PABSD"
     20046h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPabsd, 1014h, 0, 3, 0FFFFFFh, 1E380Fh, 0, 10010062h,\ ; "PABSD"
     20065h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpabsd, 1018h, 10900h, 1, 0FFh, 1Eh, 0, 10010062h, \ ; "VPABSD"
     20065h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPalignr, 4012h, 0, 3, 0FFFFFFh, 0F3A0Fh, 0, \ ; "PALIGNR"
     20030040h, 30041h, 10071h, 0, 0, 0>; 0
		t_bincmd <offset aPalignr, 1014h, 0, 3, 0FFFFFFh, 0F3A0Fh, 0, \ ; "PALIGNR"
     20030058h, 30059h, 10071h, 0, 0, 0>; 0
		t_bincmd <offset aVpalignr, 1018h, 20100h, 1, 0FFh, 0Fh, 0, 20030058h,\ ; "VPALIGNR"
     30081h, 30059h, 10071h, 0, 0>; 0
		t_bincmd <offset aPhaddw, 4012h, 0, 3, 0FFFFFFh, 1380Fh, 0, 20000043h,\ ; "PHADDW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPhaddw, 1014h, 0, 3, 0FFFFFFh, 1380Fh, 0, 2000005Eh,\ ; "PHADDW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVphaddw, 1018h, 10100h, 1, 0FFh, 1, 0, 2000005Eh, \ ; "VPHADDW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPhaddd, 4012h, 0, 3, 0FFFFFFh, 2380Fh, 0, 20000045h,\ ; "PHADDD"
     46h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPhaddd, 1014h, 0, 3, 0FFFFFFh, 2380Fh, 0, 20000062h,\ ; "PHADDD"
     65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVphaddd, 1018h, 10100h, 1, 0FFh, 2, 0, 20000062h, \ ; "VPHADDD"
     83h, 65h, 0, 0, 0>; 0
		t_bincmd <offset aPhsubw, 4012h, 0, 3, 0FFFFFFh, 5380Fh, 0, 20000043h,\ ; "PHSUBW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPhsubw, 1014h, 0, 3, 0FFFFFFh, 5380Fh, 0, 2000005Eh,\ ; "PHSUBW"
     5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVphsubw, 1018h, 10100h, 1, 0FFh, 5, 0, 2000005Eh, \ ; "VPHSUBW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPhsubd, 4012h, 0, 3, 0FFFFFFh, 6380Fh, 0, 20000045h,\ ; "PHSUBD"
     46h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPhsubd, 1014h, 0, 3, 0FFFFFFh, 6380Fh, 0, 20000062h,\ ; "PHSUBD"
     65h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVphsubd, 1018h, 10100h, 1, 0FFh, 6, 0, 20000062h, \ ; "VPHSUBD"
     83h, 65h, 0, 0, 0>; 0
		t_bincmd <offset aPhaddsw, 4012h, 0, 3, 0FFFFFFh, 3380Fh, 0, \ ; "PHADDSW"
     20000043h, 44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPhaddsw, 1014h, 0, 3, 0FFFFFFh, 3380Fh, 0, \ ; "PHADDSW"
     2000005Eh, 5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVphaddsw, 1018h, 10100h, 1, 0FFh, 3, 0, 2000005Eh, \ ; "VPHADDSW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPhsubsw, 4012h, 0, 3, 0FFFFFFh, 7380Fh, 0, \ ; "PHSUBSW"
     20000043h, 44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPhsubsw, 1014h, 0, 3, 0FFFFFFh, 7380Fh, 0, \ ; "PHSUBSW"
     2000005Eh, 5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVphsubsw, 1018h, 10100h, 1, 0FFh, 7, 0, 2000005Eh, \ ; "VPHSUBSW"
     82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPmaddubsw, 4012h, 0, 3, 0FFFFFFh, 4380Fh, 0, \ ; "PMADDUBSW"
     20010040h, 20041h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmaddubsw, 1014h, 0, 3, 0FFFFFFh, 4380Fh, 0, \ ; "PMADDUBSW"
     20010058h, 20059h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmaddubsw, 1018h, 10100h, 1, 0FFh, 4, 0, 20010058h,\ ; "VPMADDUBSW"
     10081h, 20059h, 0, 0, 0>; 0
		t_bincmd <offset aPmulhrsw, 4012h, 0, 3, 0FFFFFFh, 0B380Fh, 0, \ ; "PMULHRSW"
     20000043h, 44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmulhrsw, 1014h, 0, 3, 0FFFFFFh, 0B380Fh, 0, \ ; "PMULHRSW"
     2000005Eh, 5Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpmulhrsw, 1018h, 10100h, 1, 0FFh, 0Bh, 0, \ ; "VPMULHRSW"
     2000005Eh, 82h, 5Fh, 0, 0, 0>; 0
		t_bincmd <offset aPshufb, 4012h, 0, 3, 0FFFFFFh, 380Fh, 0, 20000040h, \ ; "PSHUFB"
     30041h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPshufb, 1014h, 0, 3, 0FFFFFFh, 380Fh, 0, 20000058h, \ ; "PSHUFB"
     30059h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpshufb, 1018h, 10100h, 1, 0FFh, 0, 0, 20000058h, \ ; "VPSHUFB"
     81h, 30059h, 0, 0, 0>; 0
		t_bincmd <offset aPsignb, 4012h, 0, 3, 0FFFFFFh, 8380Fh, 0, 20020040h,\ ; "PSIGNB"
     20041h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsignb, 1014h, 0, 3, 0FFFFFFh, 8380Fh, 0, 20020058h,\ ; "PSIGNB"
     20059h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsignb, 1018h, 10100h, 1, 0FFh, 8, 0, 20020058h, \ ; "VPSIGNB"
     20081h, 20059h, 0, 0, 0>; 0
		t_bincmd <offset aPsignw, 4012h, 0, 3, 0FFFFFFh, 9380Fh, 0, 20020043h,\ ; "PSIGNW"
     20044h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsignw, 1014h, 0, 3, 0FFFFFFh, 9380Fh, 0, 2002005Eh,\ ; "PSIGNW"
     2005Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsignw, 1018h, 10100h, 1, 0FFh, 9, 0, 2002005Eh, \ ; "VPSIGNW"
     20082h, 2005Fh, 0, 0, 0>; 0
		t_bincmd <offset aPsignd, 4012h, 0, 3, 0FFFFFFh, 0A380Fh, 0, \ ; "PSIGND"
     20020045h, 20046h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPsignd, 1014h, 0, 3, 0FFFFFFh, 0A380Fh, 0, \ ; "PSIGND"
     20020062h, 20065h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVpsignd, 1018h, 10100h, 1, 0FFh, 0Ah, 0, 20020062h, \ ; "VPSIGND"
     20083h, 20065h, 0, 0, 0>; 0
		t_bincmd <offset aVbroadcastss, 41018h, 11B00h, 1, 0FFh, 18h, 0, \ ; "VBROADCASTSS"
     1000004Eh, 100052h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVbroadcastsd, 41018h, 11D00h, 1, 0FFh, 19h, 0, \ ; "VBROADCASTSD"
     10000054h, 100057h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVbroadcastf128, 41018h, 11D00h, 1, 0FFh, 1Ah, 0, \ ; "VBROADCASTF128"
     10000054h, 0C100056h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVextractf128, 1018h, 21D00h, 1, 0FFh, 19h, 0, \ ; "VEXTRACTF128"
     1C000056h, 54h, 71h, 0, 0, 0>; 0
		t_bincmd <offset aVinsertf128, 1018h, 21500h, 1, 0FFh, 18h, 0, \ ; "VINSERTF128"
     10000054h, 7Fh, 0C000056h, 71h, 0, 0>; 0
		t_bincmd <offset aVmaskmovps, 41018h, 11300h, 1, 0FFh, 2Ch, 0, \ ; "VMASKMOVPS"
     1000004Eh, 7Dh, 100051h, 0, 0, 0>; 0
		t_bincmd <offset aVmaskmovps, 41018h, 11300h, 1, 0FFh, 2Eh, 0, \ ; "VMASKMOVPS"
     10100051h, 7Dh, 4Eh, 0, 0, 0>; 0
		t_bincmd <offset aVmaskmovpd, 41018h, 11300h, 1, 0FFh, 2Dh, 0, \ ; "VMASKMOVPD"
     10000054h, 7Fh, 100056h, 0, 0, 0>; 0
		t_bincmd <offset aVmaskmovpd, 41018h, 11300h, 1, 0FFh, 2Fh, 0, \ ; "VMASKMOVPD"
     10100056h, 7Fh, 54h, 0, 0, 0>; 0
		t_bincmd <offset aVpermilpd, 1018h, 11300h, 1, 0FFh, 0Dh, 0, \ ; "VPERMILPD"
     10000054h, 7Fh, 68h, 0, 0, 0>; 0
		t_bincmd <offset aVpermilpd, 1018h, 21B00h, 1, 0FFh, 5, 0, 10000054h, \ ; "VPERMILPD"
     56h, 71h, 0, 0, 0>; 0
		t_bincmd <offset aVpermilps, 1018h, 11300h, 1, 0FFh, 0Ch, 0, \ ; "VPERMILPS"
     1000004Eh, 7Dh, 65h, 0, 0, 0>; 0
		t_bincmd <offset aVpermilps, 1018h, 21B00h, 1, 0FFh, 4, 0, 1000004Eh, \ ; "VPERMILPS"
     51h, 71h, 0, 0, 0>; 0
		t_bincmd <offset aVperm2f128, 1018h, 21500h, 1, 0FFh, 6, 0, 10000054h,\ ; "VPERM2F128"
     7Fh, 56h, 71h, 0, 0>;	0
		t_bincmd <offset aVtestps, 101018h, 11B00h, 1, 0FFh, 0Eh, 0, 4Eh, 51h,\ ; "VTESTPS"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aVtestpd, 101018h, 11B00h, 1, 0FFh, 0Fh, 0, 54h, 56h,\ ; "VTESTPD"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aVzeroall, 4018h, 0D00h, 1, 0FFh, 77h, 0, 0, 0, 0, 0,\ ; "VZEROALL"
     0, 0>		; 0
		t_bincmd <offset aVzeroupper, 4018h, 900h, 1, 0FFh, 77h, 0, 0, 0, 0, \ ; "VZEROUPPER"
     0, 0, 0>	; 0
		t_bincmd <offset aAesdec, 1014h, 0, 3, 0FFFFFFh, 0DE380Fh, 0, \ ; "AESDEC"
     20000058h, 59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVaesdec, 1018h, 10100h, 1, 0FFh, 0DEh, 0, 10000058h,\ ; "VAESDEC"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aAesdeclast, 1014h, 0, 3, 0FFFFFFh, 0DF380Fh, 0, \ ; "AESDECLAST"
     20000058h, 59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVaesdeclast, 1018h, 10100h, 1, 0FFh, 0DFh, 0, \ ; "VAESDECLAST"
     10000058h, 81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aAesenc, 1014h, 0, 3, 0FFFFFFh, 0DC380Fh, 0, \ ; "AESENC"
     20000058h, 59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVaesenc, 1018h, 10100h, 1, 0FFh, 0DCh, 0, 10000058h,\ ; "VAESENC"
     81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aAesenclast, 1014h, 0, 3, 0FFFFFFh, 0DD380Fh, 0, \ ; "AESENCLAST"
     20000058h, 59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVaesenclast, 1018h, 10100h, 1, 0FFh, 0DDh, 0, \ ; "VAESENCLAST"
     10000058h, 81h, 59h, 0, 0, 0>; 0
		t_bincmd <offset aAesimc, 1014h, 0, 3, 0FFFFFFh, 0DB380Fh, 0, \ ; "AESIMC"
     10000058h, 59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVaesimc, 1018h, 10900h, 1, 0FFh, 0DBh, 0, 10000058h,\ ; "VAESIMC"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aAeskeygenass_0, 1014h, 0, 3, 0FFFFFFh, 0DF3A0Fh, 0, \ ; "AESKEYGENASSIST"
     10000058h, 59h, 60071h, 0, 0, 0>; 0
		t_bincmd <offset aVaeskeygenassi, 1018h, 20900h, 1, 0FFh, 0DFh, 0, \ ; "VAESKEYGENASSIST"
     10000058h, 59h, 60071h, 0, 0, 0>; 0
		t_bincmd <offset aVcvtph2ps, 1018h, 11B00h, 1, 0FFh, 13h, 0, \ ; "VCVTPH2PS"
     1000004Eh, 60h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVcvtps2ph, 1018h, 21B00h, 1, 0FFh, 1Dh, 0, \ ; "VCVTPS2PH"
     10000060h, 4Eh, 0, 0, 0, 0>; 0
		t_bincmd <offset aLzcnt, 106000h, 0, 2, 0FFFFh, 0BD0Fh, 0, 10000010h, \ ; "LZCNT"
     30016h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPopcnt, 106000h, 0, 2, 0FFFFh, 0B80Fh, 0, 10000010h,\ ; "POPCNT"
     70016h, 0, 0, 0, 0>; 0
		t_bincmd <offset aExtrq, 1014h, 0, 2, 38FFFFh, 780Fh, 0, 20800059h, \ ; "EXTRQ"
     60071h, 60072h, 0, 0, 0>; 0
		t_bincmd <offset aExtrq, 1014h, 0, 2, 0FFFFh, 790Fh, 0, 20000058h, \ ; "EXTRQ"
     80005Dh, 0, 0, 0, 0>;	0
		t_bincmd <offset aInsertq, 2014h, 0, 2, 0FFFFh, 780Fh, 0, 20800058h, \ ; "INSERTQ"
     5Bh, 60071h, 60072h, 0, 0>; 0
		t_bincmd <offset aInsertq, 2014h, 0, 2, 0FFFFh, 790Fh, 0, 20800058h, \ ; "INSERTQ"
     59h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovntsd, 2014h, 0, 2, 0FFFFh, 2B0Fh, 0, 10400057h, \ ; "MOVNTSD"
     55h, 0, 0, 0, 0>; 0
		t_bincmd <offset aMovntss, 3014h, 0, 2, 0FFFFh, 2B0Fh, 0, 10400052h, \ ; "MOVNTSS"
     4Fh, 0, 0, 0, 0>; 0
		t_bincmd <offset aInvept, 40041017h, 0, 3, 0FFFFFFh, 80380Fh, 0, 12h, \ ; "INVEPT"
     1Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aInvvpid, 40041017h, 0, 3, 0FFFFFFh, 81380Fh, 0, 12h,\ ; "INVVPID"
     1Ch, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmcall, 40000017h, 0, 3, 0FFFFFFh, 0C1010Fh, 0, 0, \ ; "VMCALL"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmclear, 40041017h, 0, 2, 38FFFFh, 30C70Fh, 0, \ ; "VMCLEAR"
     40001Bh, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmlaunch, 40000017h, 0, 3, 0FFFFFFh, 0C2010Fh, 0, 0,\ ; "VMLAUNCH"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmfunc, 40000017h, 0, 3, 0FFFFFFh, 0D4010Fh, 0, \ ; "VMFUNC"
     40000008h, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aXend, 40000017h, 0, 3, 0FFFFFFh, 0D5010Fh, 0, \ ; "XEND"
     40000008h, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aXtest, 40000017h, 0, 3, 0FFFFFFh, 0D6010Fh, 0, \ ; "XTEST"
     40000008h, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmresume, 40000017h, 0, 3, 0FFFFFFh, 0C3010Fh, 0, 0,\ ; "VMRESUME"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmptrld, 40044017h, 0, 2, 38FFFFh, 30C70Fh, 0, \ ; "VMPTRLD"
     40001Bh, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmptrst, 40044017h, 0, 2, 38FFFFh, 38C70Fh, 0, \ ; "VMPTRST"
     1040001Bh, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmread, 40004017h, 0, 2, 0FFFFh, 780Fh, 0, \ ; "VMREAD"
     10000019h, 12h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmwrite, 40000017h, 0, 2, 0FFFFh, 790Fh, 0, 12h, \ ; "VMWRITE"
     19h, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmxoff, 40000017h, 0, 3, 0FFFFFFh, 0C4010Fh, 0, 0, \ ; "VMXOFF"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmxon, 40043017h, 0, 2, 38FFFFh, 30C70Fh, 0, 1Bh, 0,\ ; "VMXON"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aGetsec, 40000017h, 0, 2, 0FFFFh, 370Fh, 0, \ ; "GETSEC"
     60000008h, 40000009h, 4000000Ah, 0, 0, 0>; 0
		t_bincmd <offset aFemms, 0, 0, 2, 0FFFFh, 0E0Fh, 0, 0, 0, 0, 0, 0, 0>; 0 ; "FEMMS"
		t_bincmd <offset aPavgusb, 4052h, 0, 2, 0FFFFh, 0F0Fh, 0BFh, \ ; "PAVGUSB"
     20000040h, 41h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPf2id, 53h, 0, 2, 0FFFFh, 0F0Fh, 1Dh, 10000045h, \ ; "PF2ID"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPfacc, 53h, 0, 2, 0FFFFh, 0F0Fh, 0AEh, 20000049h, \ ; "PFACC"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPfadd, 53h, 0, 2, 0FFFFh, 0F0Fh, 9Eh, 20000049h, \ ; "PFADD"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPfcmpeq, 53h, 0, 2, 0FFFFh, 0F0Fh, 0B0h, 20000049h, \ ; "PFCMPEQ"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPfcmpge, 53h, 0, 2, 0FFFFh, 0F0Fh, 90h, 20000049h, \ ; "PFCMPGE"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPfcmpgt, 53h, 0, 2, 0FFFFh, 0F0Fh, 0A0h, 20000049h, \ ; "PFCMPGT"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPfmax, 53h, 0, 2, 0FFFFh, 0F0Fh, 0A4h, 20000049h, \ ; "PFMAX"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPfmin, 53h, 0, 2, 0FFFFh, 0F0Fh, 94h, 20000049h, \ ; "PFMIN"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPfmul, 53h, 0, 2, 0FFFFh, 0F0Fh, 0B4h, 20000049h, \ ; "PFMUL"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPfrcp, 53h, 0, 2, 0FFFFh, 0F0Fh, 96h, 20000049h, \ ; "PFRCP"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPfrcpit1, 53h, 0, 2, 0FFFFh, 0F0Fh, 0A6h, 20000049h,\ ; "PFRCPIT1"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPfrcpit2, 53h, 0, 2, 0FFFFh, 0F0Fh, 0B6h, 20000049h,\ ; "PFRCPIT2"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPfrsqit1, 53h, 0, 2, 0FFFFh, 0F0Fh, 0A7h, 20000049h,\ ; "PFRSQIT1"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPfrsqrt, 53h, 0, 2, 0FFFFh, 0F0Fh, 97h, 20000049h, \ ; "PFRSQRT"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPfsub, 53h, 0, 2, 0FFFFh, 0F0Fh, 9Ah, 20000049h, \ ; "PFSUB"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPfsubr, 53h, 0, 2, 0FFFFh, 0F0Fh, 0AAh, 20000049h, \ ; "PFSUBR"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPi2fd, 53h, 0, 2, 0FFFFh, 0F0Fh, 0Dh, 20000049h, \ ; "PI2FD"
     20046h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPmulhrw, 4052h, 0, 2, 0FFFFh, 0F0Fh, 0B7h, \ ; "PMULHRW"
     20000043h, 44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPf2iw, 53h, 0, 2, 0FFFFh, 0F0Fh, 1Ch, 20000045h, \ ; "PF2IW"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPfnacc, 53h, 0, 2, 0FFFFh, 0F0Fh, 8Ah, 20000049h, \ ; "PFNACC"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPfpnacc, 53h, 0, 2, 0FFFFh, 0F0Fh, 8Eh, 20000049h, \ ; "PFPNACC"
     4Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aPi2fw, 53h, 0, 2, 0FFFFh, 0F0Fh, 0Ch, 20000049h, \ ; "PI2FW"
     44h, 0, 0, 0, 0>; 0
		t_bincmd <offset aPswapd, 4052h, 0, 2, 0FFFFh, 0F0Fh, 0BBh, 20000045h,\ ; "PSWAPD"
     46h, 0, 0, 0, 0>; 0
		t_bincmd <offset aSyscall, 40000016h, 0, 2, 0FFFFh, 50Fh, 0, 0, 0, 0, \ ; "SYSCALL"
     0, 0, 0>	; 0
		t_bincmd <offset aSysret, 80100016h, 0, 2, 0FFFFh, 70Fh, 0, 0, 0, 0, \ ; "SYSRET"
     0, 0, 0>	; 0
		t_bincmd <offset aClgi, 17h, 0, 3, 0FFFFFFh, 0DD010Fh, 0, 0, 0, 0, 0, \ ; "CLGI"
     0, 0>		; 0
		t_bincmd <offset aStgi, 17h, 0, 3, 0FFFFFFh, 0DC010Fh, 0, 0, 0, 0, 0, \ ; "STGI"
     0, 0>		; 0
		t_bincmd <offset aInvlpga, 40000017h, 0, 3, 0FFFFFFh, 0DF010Fh, 0, \ ; "INVLPGA"
     40000008h, 4000000Ah, 0, 0, 0, 0>; 0
		t_bincmd <offset aSkinit, 17h, 0, 3, 0FFFFFFh, 0DE010Fh, 0, 40000008h,\ ; "SKINIT"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmload, 17h, 0, 3, 0FFFFFFh, 0DA010Fh, 0, 40000008h,\ ; "VMLOAD"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmmcall, 80000016h, 0, 3, 0FFFFFFh, 0D9010Fh, 0, 0, \ ; "VMMCALL"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmrun, 17h, 0, 3, 0FFFFFFh, 0D8010Fh, 0, 40000008h, \ ; "VMRUN"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aVmsave, 17h, 0, 3, 0FFFFFFh, 0DB010Fh, 0, 40000008h,\ ; "VMSAVE"
     0, 0, 0, 0, 0>; 0
		t_bincmd <offset aEs_0, 8000001Eh, 0, 1, 0FFh, 26h, 0, 0, 0, 0, 0, 0, \ ; "ES:"
     0>		; 0
		t_bincmd <offset aCs, 8000001Eh, 0, 1, 0FFh, 2Eh, 0, 0, 0, 0, 0, 0, 0>;	0 ; "CS:"
		t_bincmd <offset aSs, 8000001Eh, 0, 1, 0FFh, 36h, 0, 0, 0, 0, 0, 0, 0>;	0 ; "SS:"
		t_bincmd <offset aDs, 8000001Eh, 0, 1, 0FFh, 3Eh, 0, 0, 0, 0, 0, 0, 0>;	0 ; "DS:"
		t_bincmd <offset aFs, 8000001Eh, 0, 1, 0FFh, 64h, 0, 0, 0, 0, 0, 0, 0>;	0 ; "FS:"
		t_bincmd <offset aGs, 8000001Eh, 0, 1, 0FFh, 65h, 0, 0, 0, 0, 0, 0, 0>;	0 ; "GS:"
		t_bincmd <offset aDatasize, 8000001Eh, 0, 1, 0FFh, 66h, 0, 0, 0, 0, 0,\ ; "DATASIZE:"
     0, 0>		; 0
		t_bincmd <offset aAddrsize, 8000001Eh, 0, 1, 0FFh, 67h, 0, 0, 0, 0, 0,\ ; "ADDRSIZE:"
     0, 0>		; 0
		t_bincmd <offset aLock, 8000001Eh, 0, 1, 0FFh, 0F0h, 0, 0, 0, 0, 0, 0,\ ; "LOCK"
     0>		; 0
		t_bincmd <offset aRepne, 8000001Eh, 0, 1, 0FFh, 0F2h, 0, 0, 0, 0, 0, \ ; "REPNE"
     0, 0>		; 0
		t_bincmd <offset aRepnz, 8000001Eh, 0, 1, 0FFh, 0F2h, 0, 0, 0, 0, 0, \ ; "REPNZ"
     0, 0>		; 0
		t_bincmd <offset aRep_4, 8000001Eh, 0, 1, 0FFh, 0F3h, 0, 0, 0, 0, 0, \ ; "REP"
     0, 0>		; 0
		t_bincmd <offset aRepe_1, 8000001Eh, 0, 1, 0FFh, 0F3h, 0, 0, 0, 0, 0, \ ; "REPE"
     0, 0>		; 0
		t_bincmd <offset aRepz_1, 8000001Eh, 0, 1, 0FFh, 0F3h, 0, 0, 0, 0, 0, \ ; "REPZ"
     0, 0>		; 0
		t_bincmd <offset aJcc, 1002001Dh, 0, 1, 0F0h, 70h, 0, 8006Dh, 0, 0, 0,\ ; "JCC"
     0, 0>		; 0
		t_bincmd <offset aJcc, 1002001Dh, 0, 2, 0F0FFh, 800Fh, 0, 8006Ch, 0, \ ; "JCC"
     0, 0, 0, 0>	; 0
		t_bincmd <offset aSetcc, 1000001Dh, 0, 2, 38F0FFh, 900Fh, 0, \ ; "SETCC"
     18000017h, 0, 0, 0, 0, 0>; 0
		t_bincmd <offset aCmovcc, 1000001Dh, 5000000h, 2, 0F0FFh, 400Fh, 0, \ ; "CMOVCC"
     20000010h, 16h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcmovcc, 1000001Dh, 5000000h, 2, 0E0FFh, 0C0DAh, 0, \ ; "FCMOVCC"
     1000003Ah, 39h, 0, 0, 0, 0>; 0
		t_bincmd <offset aFcmovcc, 1000001Dh, 5000000h, 2, 0E0FFh, 0C0DBh, 0, \ ; "FCMOVCC"
     1000003Ah, 39h, 0, 0, 0, 0>; 0
		t_bincmd <0>
aPause:					; DATA XREF: .data:bincmdo
		unicode	0, <PAUSE>,0
aNop_0:					; DATA XREF: .data:004F7970o
					; .data:004F79A4o ...
		unicode	0, <NOP>,0
aMonitor:				; DATA XREF: .data:004F7B10o
					; .data:004FACA0o ...
		unicode	0, <MONITOR>,0
aMwait:					; DATA XREF: .data:004F7B44o
					; .data:004F8FC8o
		unicode	0, <MWAIT>,0
aClac:					; DATA XREF: .data:004F7B78o
		unicode	0, <CLAC>,0
aStac:					; DATA XREF: .data:004F7BACo
		unicode	0, <STAC>,0
aAaa:					; DATA XREF: .data:004F7BE0o
		unicode	0, <AAA>,0
aAad:					; DATA XREF: .data:004F7C14o
					; .data:004F7C48o
		unicode	0, <AAD>,0
aAam:					; DATA XREF: .data:004F7C7Co
					; .data:004F7CB0o
		unicode	0, <AAM>,0
aAas:					; DATA XREF: .data:004F7CE4o
		unicode	0, <AAS>,0
aAdc:					; DATA XREF: .data:004F7D18o
					; .data:004F7D4Co ...
		unicode	0, <ADC>,0
aAdd:					; DATA XREF: .data:004F7E1Co
					; .data:004F7E50o ...
		unicode	0, <ADD>,0
aAnd:					; DATA XREF: .data:004F7F20o
					; .data:004F7F54o ...
		unicode	0, <AND>,0
aArpl:					; DATA XREF: .data:004F8024o
		unicode	0, <ARPL>,0
aBound:					; DATA XREF: .data:004F8058o
		unicode	0, <BOUND>,0
aBsf:					; DATA XREF: .data:004F808Co
		unicode	0, <BSF>,0
aBsr:					; DATA XREF: .data:004F80C0o
		unicode	0, <BSR>,0
aBswap:					; DATA XREF: .data:004F80F4o
		unicode	0, <BSWAP>,0
aBt:					; DATA XREF: .data:004F8128o
					; .data:004F815Co
		unicode	0, <BT>,0
aBtc:					; DATA XREF: .data:004F8190o
					; .data:004F81C4o
		unicode	0, <BTC>,0
aBtr:					; DATA XREF: .data:004F81F8o
					; .data:004F822Co
		unicode	0, <BTR>,0
aBts:					; DATA XREF: .data:004F8260o
					; .data:004F8294o
		unicode	0, <BTS>,0
aCall:					; DATA XREF: .data:004F82C8o
					; .data:004F82FCo ...
		unicode	0, <CALL>,0
aCbw:					; DATA XREF: .data:004F8398o
					; .data:004F83CCo
		unicode	0, <CBW>,0
aCdq:					; DATA XREF: .data:004F8400o
					; .data:004F8434o
		unicode	0, <CDQ>,0
aClc:					; DATA XREF: .data:004F8468o
		unicode	0, <CLC>,0
aCld:					; DATA XREF: .data:004F849Co
		unicode	0, <CLD>,0
aClflush:				; DATA XREF: .data:004F84D0o
		unicode	0, <CLFLUSH>,0
aCli:					; DATA XREF: .data:004F8504o
		unicode	0, <CLI>,0
aClts:					; DATA XREF: .data:004F8538o
		unicode	0, <CLTS>,0
aCmc:					; DATA XREF: .data:004F856Co
		unicode	0, <CMC>,0
aCmovo:					; DATA XREF: .data:004F85A0o
		unicode	0, <CMOVO>,0
aCmovno:				; DATA XREF: .data:004F85D4o
		unicode	0, <CMOVNO>,0
aCmovb:					; DATA XREF: .data:004F8608o
		unicode	0, <CMOVB>,0
aCmovc:					; DATA XREF: .data:004F863Co
		unicode	0, <CMOVC>,0
aCmovnae:				; DATA XREF: .data:004F8670o
		unicode	0, <CMOVNAE>,0
aCmovae:				; DATA XREF: .data:004F86A4o
		unicode	0, <CMOVAE>,0
aCmovnb:				; DATA XREF: .data:004F86D8o
		unicode	0, <CMOVNB>,0
aCmovnc:				; DATA XREF: .data:004F870Co
		unicode	0, <CMOVNC>,0
aCmove:					; DATA XREF: .data:004F8740o
		unicode	0, <CMOVE>,0
aCmovz:					; DATA XREF: .data:004F8774o
		unicode	0, <CMOVZ>,0
aCmovne:				; DATA XREF: .data:004F87A8o
		unicode	0, <CMOVNE>,0
aCmovnz:				; DATA XREF: .data:004F87DCo
		unicode	0, <CMOVNZ>,0
aCmovbe:				; DATA XREF: .data:004F8810o
					; .data:004FD7E4o ...
		unicode	0, <CMOVBE>,0
aCmovna:				; DATA XREF: .data:004F8844o
		unicode	0, <CMOVNA>,0
aCmova:					; DATA XREF: .data:004F8878o
		unicode	0, <CMOVA>,0
aCmovnbe:				; DATA XREF: .data:004F88ACo
		unicode	0, <CMOVNBE>,0
aCmovs:					; DATA XREF: .data:004F88E0o
					; .data:004FCEC0o ...
		unicode	0, <CMOVS>,0
aCmovns:				; DATA XREF: .data:004F8914o
		unicode	0, <CMOVNS>,0
aCmovpe:				; DATA XREF: .data:004F8948o
		unicode	0, <CMOVPE>,0
aCmovp:					; DATA XREF: .data:004F897Co
		unicode	0, <CMOVP>,0
aCmovpo:				; DATA XREF: .data:004F89B0o
		unicode	0, <CMOVPO>,0
aCmovnp:				; DATA XREF: .data:004F89E4o
		unicode	0, <CMOVNP>,0
aCmovl:					; DATA XREF: .data:004F8A18o
		unicode	0, <CMOVL>,0
aCmovnge:				; DATA XREF: .data:004F8A4Co
		unicode	0, <CMOVNGE>,0
aCmovge:				; DATA XREF: .data:004F8A80o
		unicode	0, <CMOVGE>,0
aCmovnl:				; DATA XREF: .data:004F8AB4o
		unicode	0, <CMOVNL>,0
aCmovle:				; DATA XREF: .data:004F8AE8o
		unicode	0, <CMOVLE>,0
aCmovng:				; DATA XREF: .data:004F8B1Co
		unicode	0, <CMOVNG>,0
aCmovg:					; DATA XREF: .data:004F8B50o
		unicode	0, <CMOVG>,0
aCmovnle:				; DATA XREF: .data:004F8B84o
		unicode	0, <CMOVNLE>,0
aCmp:					; DATA XREF: .data:004F8BB8o
					; .data:004F8BECo ...
		unicode	0, <CMP>,0
aCmpxchg:				; DATA XREF: .data:004F8CBCo
					; .data:004FC8DCo ...
		unicode	0, <CMPXCHG>,0
aCmpxchg8b:				; DATA XREF: .data:004F8CF0o
		unicode	0, <CMPXCHG8B>,0
aCpuid:					; DATA XREF: .data:004F8D24o
		unicode	0, <CPUID>,0
aCwd:					; DATA XREF: .data:004F8D58o
					; .data:004F8D8Co
		unicode	0, <CWD>,0
aCwde:					; DATA XREF: .data:004F8DC0o
					; .data:004F8DF4o
		unicode	0, <CWDE>,0
aDaa:					; DATA XREF: .data:004F8E28o
		unicode	0, <DAA>,0
aDas:					; DATA XREF: .data:004F8E5Co
		unicode	0, <DAS>,0
aDec_1:					; DATA XREF: .data:004F8E90o
					; .data:004F8EC4o
		unicode	0, <DEC>,0
aDiv_2:					; DATA XREF: .data:004F8EF8o
					; .data:004F8F2Co
		unicode	0, <DIV>,0
aEmms:					; DATA XREF: .data:004F8F60o
		unicode	0, <EMMS>,0
aEnter:					; DATA XREF: .data:004F8F94o
		unicode	0, <ENTER>,0
aFwait:					; DATA XREF: .data:004F8FFCo
		unicode	0, <FWAIT>,0
aHlt:					; DATA XREF: .data:004F9030o
		unicode	0, <HLT>,0
aIdiv:					; DATA XREF: .data:004F9064o
					; .data:004F9098o
		unicode	0, <IDIV>,0
aImul:					; DATA XREF: .data:004F90CCo
					; .data:004F9100o ...
		unicode	0, <IMUL>,0
aIn:					; DATA XREF: .data:004F91D0o
					; .data:004F9204o
		unicode	0, <IN>,0
aInc:					; DATA XREF: .data:004F9238o
					; .data:004F926Co
		unicode	0, <INC>,0
aInt_3:					; DATA XREF: .data:004F92A0o
		unicode	0, <INT>,0
aInt3_1:				; DATA XREF: .data:004F92D4o
		unicode	0, <INT3>,0
aInto:					; DATA XREF: .data:004F9308o
		unicode	0, <INTO>,0
aInt1_1:				; DATA XREF: .data:004F933Co
		unicode	0, <INT1>,0
aIcebp:					; DATA XREF: .data:004F9370o
		unicode	0, <ICEBP>,0
aInvd:					; DATA XREF: .data:004F93A4o
		unicode	0, <INVD>,0
aInvlpg:				; DATA XREF: .data:004F93D8o
		unicode	0, <INVLPG>,0
aIret:					; DATA XREF: .data:004F940Co
		unicode	0, <IRET*>,0
aJo:					; DATA XREF: .data:004F9440o
					; .data:004F9474o
		unicode	0, <JO>,0
aJno:					; DATA XREF: .data:004F94A8o
					; .data:004F94DCo
		unicode	0, <JNO>,0
aJb:					; DATA XREF: .data:004F9510o
					; .data:004F95ACo
		unicode	0, <JB>,0
aJc:					; DATA XREF: .data:004F9544o
					; .data:004F95E0o
		unicode	0, <JC>,0
aJnae:					; DATA XREF: .data:004F9578o
					; .data:004F9614o
		unicode	0, <JNAE>,0
aJae:					; DATA XREF: .data:004F9648o
					; .data:004F96E4o
		unicode	0, <JAE>,0
aJnb:					; DATA XREF: .data:004F967Co
					; .data:004F9718o
		unicode	0, <JNB>,0
aJnc:					; DATA XREF: .data:004F96B0o
					; .data:004F974Co
		unicode	0, <JNC>,0
aJe:					; DATA XREF: .data:004F9780o
					; .data:004F97E8o
		unicode	0, <JE>,0
aJz:					; DATA XREF: .data:004F97B4o
					; .data:004F981Co
		unicode	0, <JZ>,0
aJne:					; DATA XREF: .data:004F9850o
					; .data:004F98B8o
		unicode	0, <JNE>,0
aJnz:					; DATA XREF: .data:004F9884o
					; .data:004F98ECo
		unicode	0, <JNZ>,0
aJbe:					; DATA XREF: .data:004F9920o
					; .data:004F9988o
		unicode	0, <JBE>,0
aJna:					; DATA XREF: .data:004F9954o
					; .data:004F99BCo
		unicode	0, <JNA>,0
aJa:					; DATA XREF: .data:004F99F0o
					; .data:004F9A58o
		unicode	0, <JA>,0
aJnbe:					; DATA XREF: .data:004F9A24o
					; .data:004F9A8Co
		unicode	0, <JNBE>,0
aJs:					; DATA XREF: .data:004F9AC0o
					; .data:004F9AF4o
		unicode	0, <JS>,0
aJns:					; DATA XREF: .data:004F9B28o
					; .data:004F9B5Co
		unicode	0, <JNS>,0
aJpe:					; DATA XREF: .data:004F9B90o
					; .data:004F9BF8o
		unicode	0, <JPE>,0
aJp:					; DATA XREF: .data:004F9BC4o
					; .data:004F9C2Co
		unicode	0, <JP>,0
aJpo:					; DATA XREF: .data:004F9C60o
					; .data:004F9CC8o
		unicode	0, <JPO>,0
aJnp:					; DATA XREF: .data:004F9C94o
					; .data:004F9CFCo
		unicode	0, <JNP>,0
aJl:					; DATA XREF: .data:004F9D30o
					; .data:004F9D98o
		unicode	0, <JL>,0
aJnge:					; DATA XREF: .data:004F9D64o
					; .data:004F9DCCo
		unicode	0, <JNGE>,0
aJge:					; DATA XREF: .data:004F9E00o
					; .data:004F9E68o
		unicode	0, <JGE>,0
aJnl:					; DATA XREF: .data:004F9E34o
					; .data:004F9E9Co
		unicode	0, <JNL>,0
aJle:					; DATA XREF: .data:004F9ED0o
					; .data:004F9F38o
		unicode	0, <JLE>,0
aJng:					; DATA XREF: .data:004F9F04o
					; .data:004F9F6Co
		unicode	0, <JNG>,0
aJg:					; DATA XREF: .data:004F9FA0o
					; .data:004FA008o
		unicode	0, <JG>,0
aJnle:					; DATA XREF: .data:004F9FD4o
					; .data:004FA03Co
		unicode	0, <JNLE>,0
aJcxz:					; DATA XREF: .data:004FA070o
		unicode	0, <JCXZ>,0
aJecxz:					; DATA XREF: .data:004FA0A4o
		unicode	0, <JECXZ>,0
aJmp:					; DATA XREF: .data:004FA0D8o
					; .data:004FA10Co ...
		unicode	0, <JMP>,0
aLahf:					; DATA XREF: .data:004FA1DCo
		unicode	0, <LAHF>,0
aLar:					; DATA XREF: .data:004FA210o
		unicode	0, <LAR>,0
aLds:					; DATA XREF: .data:004FA244o
		unicode	0, <LDS>,0
aLes:					; DATA XREF: .data:004FA278o
		unicode	0, <LES>,0
aLfs:					; DATA XREF: .data:004FA2ACo
		unicode	0, <LFS>,0
aLgs:					; DATA XREF: .data:004FA2E0o
		unicode	0, <LGS>,0
aLss_0:					; DATA XREF: .data:004FA314o
		unicode	0, <LSS>,0
aLea:					; DATA XREF: .data:004FA348o
		unicode	0, <LEA>,0
aLeave:					; DATA XREF: .data:004FA37Co
		unicode	0, <LEAVE>,0
aLgdt:					; DATA XREF: .data:004FA3B0o
		unicode	0, <LGDT>,0
aLidt:					; DATA XREF: .data:004FA3E4o
		unicode	0, <LIDT>,0
aLldt:					; DATA XREF: .data:004FA418o
		unicode	0, <LLDT>,0
aLmsw:					; DATA XREF: .data:004FA44Co
		unicode	0, <LMSW>,0
aLoop:					; DATA XREF: .data:004FA480o
		unicode	0, <LOOP>,0
aLoopd:					; DATA XREF: .data:004FA4B4o
		unicode	0, <LOOPD>,0
aLoopw:					; DATA XREF: .data:004FA4E8o
		unicode	0, <LOOPW>,0
aLoopz:					; DATA XREF: .data:004FA51Co
		unicode	0, <LOOPZ>,0
aLoopdz:				; DATA XREF: .data:004FA550o
		unicode	0, <LOOPDZ>,0
aLoopwz:				; DATA XREF: .data:004FA584o
		unicode	0, <LOOPWZ>,0
aLoope:					; DATA XREF: .data:004FA5B8o
		unicode	0, <LOOPE>,0
aLoopde:				; DATA XREF: .data:004FA5ECo
		unicode	0, <LOOPDE>,0
aLoopwe:				; DATA XREF: .data:004FA620o
		unicode	0, <LOOPWE>,0
aLoopnz:				; DATA XREF: .data:004FA654o
		unicode	0, <LOOPNZ>,0
aLoopdnz:				; DATA XREF: .data:004FA688o
		unicode	0, <LOOPDNZ>,0
aLoopwnz:				; DATA XREF: .data:004FA6BCo
		unicode	0, <LOOPWNZ>,0
aLoopne:				; DATA XREF: .data:004FA6F0o
		unicode	0, <LOOPNE>,0
aLoopdne:				; DATA XREF: .data:004FA724o
		unicode	0, <LOOPDNE>,0
aLoopwne:				; DATA XREF: .data:004FA758o
		unicode	0, <LOOPWNE>,0
aLsl:					; DATA XREF: .data:004FA78Co
		unicode	0, <LSL>,0
aLtr:					; DATA XREF: .data:004FA7C0o
		unicode	0, <LTR>,0
aMov:					; DATA XREF: .data:004FA7F4o
					; .data:004FA828o ...
		unicode	0, <MOV>,0
aMovsx:					; DATA XREF: .data:004FAB00o
					; .data:004FAB34o
		unicode	0, <MOVSX>,0
aMovzx:					; DATA XREF: .data:004FAB68o
					; .data:004FAB9Co
		unicode	0, <MOVZX>,0
aNeg:					; DATA XREF: .data:004FAC38o
		unicode	0, <NEG>,0
aNot_1:					; DATA XREF: .data:004FAC6Co
		unicode	0, <NOT>,0
aOut:					; DATA XREF: .data:004FADA4o
					; .data:004FADD8o
		unicode	0, <OUT>,0
aPop_0:					; DATA XREF: .data:004FAE0Co
					; .data:004FAE40o ...
		unicode	0, <POP>,0
aPopa:					; DATA XREF: .data:004FAF78o
		unicode	0, <POPA*>,0
aPopf:					; DATA XREF: .data:004FAFACo
		unicode	0, <POPF*>,0
aPush:					; DATA XREF: .data:004FAFE0o
					; .data:004FB014o ...
		unicode	0, <PUSH>,0
aPusha:					; DATA XREF: .data:004FB1E8o
		unicode	0, <PUSHA*>,0
aPushf:					; DATA XREF: .data:004FB21Co
		unicode	0, <PUSHF*>,0
aRcl:					; DATA XREF: .data:004FB250o
					; .data:004FB284o ...
		unicode	0, <RCL>,0
aRcr:					; DATA XREF: .data:004FB2ECo
					; .data:004FB320o ...
		unicode	0, <RCR>,0
aRol:					; DATA XREF: .data:004FB388o
					; .data:004FB3BCo ...
		unicode	0, <ROL>,0
aRor:					; DATA XREF: .data:004FB424o
					; .data:004FB458o ...
		unicode	0, <ROR>,0
aRdmsr:					; DATA XREF: .data:004FB4C0o
		unicode	0, <RDMSR>,0
aRdpmc:					; DATA XREF: .data:004FB4F4o
		unicode	0, <RDPMC>,0
aRdtsc:					; DATA XREF: .data:004FB528o
		unicode	0, <RDTSC>,0
aRdtscp:				; DATA XREF: .data:004FB55Co
		unicode	0, <RDTSCP>,0
aRetn:					; DATA XREF: .data:004FB590o
					; .data:004FB5F8o ...
		unicode	0, <RETN>,0
aRet:					; DATA XREF: .data:004FB5C4o
					; .data:004FB62Co ...
		unicode	0, <RET>,0
aRetf:					; DATA XREF: .data:004FB6C8o
					; .data:004FB6FCo
		unicode	0, <RETF>,0
aRsm:					; DATA XREF: .data:004FB730o
		unicode	0, <RSM>,0
aSahf:					; DATA XREF: .data:004FB764o
		unicode	0, <SAHF>,0
aShl:					; DATA XREF: .data:004FB798o
					; .data:004FB7CCo ...
		unicode	0, <SHL>,0
aSal:					; DATA XREF: .data:004FB834o
					; .data:004FB868o ...
		unicode	0, <SAL>,0
aSalc:					; DATA XREF: .data:004FB96Co
		unicode	0, <SALC>,0
aShr:					; DATA XREF: .data:004FB9A0o
					; .data:004FB9D4o ...
		unicode	0, <SHR>,0
aSar:					; DATA XREF: .data:004FBA3Co
					; .data:004FBA70o ...
		unicode	0, <SAR>,0
aSbb:					; DATA XREF: .data:004FBAD8o
					; .data:004FBB0Co ...
		unicode	0, <SBB>,0
aSeto:					; DATA XREF: .data:004FBBDCo
		unicode	0, <SETO>,0
aSetno:					; DATA XREF: .data:004FBC10o
		unicode	0, <SETNO>,0
aSetb:					; DATA XREF: .data:004FBC44o
		unicode	0, <SETB>,0
aSetc:					; DATA XREF: .data:004FBC78o
		unicode	0, <SETC>,0
aSetnae:				; DATA XREF: .data:004FBCACo
		unicode	0, <SETNAE>,0
aSetae:					; DATA XREF: .data:004FBCE0o
		unicode	0, <SETAE>,0
aSetnb:					; DATA XREF: .data:004FBD14o
		unicode	0, <SETNB>,0
aSetnc:					; DATA XREF: .data:004FBD48o
		unicode	0, <SETNC>,0
aSete:					; DATA XREF: .data:004FBD7Co
		unicode	0, <SETE>,0
aSetz:					; DATA XREF: .data:004FBDB0o
		unicode	0, <SETZ>,0
aSetne:					; DATA XREF: .data:004FBDE4o
		unicode	0, <SETNE>,0
aSetnz:					; DATA XREF: .data:004FBE18o
		unicode	0, <SETNZ>,0
aSetbe:					; DATA XREF: .data:004FBE4Co
		unicode	0, <SETBE>,0
aSetna:					; DATA XREF: .data:004FBE80o
		unicode	0, <SETNA>,0
aSeta:					; DATA XREF: .data:004FBEB4o
		unicode	0, <SETA>,0
aSetnbe:				; DATA XREF: .data:004FBEE8o
		unicode	0, <SETNBE>,0
aSets:					; DATA XREF: .data:004FBF1Co
		unicode	0, <SETS>,0
aSetns:					; DATA XREF: .data:004FBF50o
		unicode	0, <SETNS>,0
aSetpe:					; DATA XREF: .data:004FBF84o
		unicode	0, <SETPE>,0
aSetp:					; DATA XREF: .data:004FBFB8o
		unicode	0, <SETP>,0
aSetpo:					; DATA XREF: .data:004FBFECo
		unicode	0, <SETPO>,0
aSetnp:					; DATA XREF: .data:004FC020o
		unicode	0, <SETNP>,0
aSetl:					; DATA XREF: .data:004FC054o
		unicode	0, <SETL>,0
aSetnge:				; DATA XREF: .data:004FC088o
		unicode	0, <SETNGE>,0
aSetge:					; DATA XREF: .data:004FC0BCo
		unicode	0, <SETGE>,0
aSetnl:					; DATA XREF: .data:004FC0F0o
		unicode	0, <SETNL>,0
aSetle:					; DATA XREF: .data:004FC124o
		unicode	0, <SETLE>,0
aSetng:					; DATA XREF: .data:004FC158o
		unicode	0, <SETNG>,0
aSetg:					; DATA XREF: .data:004FC18Co
		unicode	0, <SETG>,0
aSetnle:				; DATA XREF: .data:004FC1C0o
		unicode	0, <SETNLE>,0
aSgdt:					; DATA XREF: .data:004FC1F4o
		unicode	0, <SGDT>,0
aSidt:					; DATA XREF: .data:004FC228o
		unicode	0, <SIDT>,0
aShld:					; DATA XREF: .data:004FC25Co
					; .data:004FC290o
		unicode	0, <SHLD>,0
aShrd:					; DATA XREF: .data:004FC2C4o
					; .data:004FC2F8o
		unicode	0, <SHRD>,0
aSldt:					; DATA XREF: .data:004FC32Co
		unicode	0, <SLDT>,0
aSmsw:					; DATA XREF: .data:004FC360o
					; .data:004FC394o
		unicode	0, <SMSW>,0
aStc:					; DATA XREF: .data:004FC3C8o
		unicode	0, <STC>,0
aStd:					; DATA XREF: .data:004FC3FCo
		unicode	0, <STD>,0
aSti:					; DATA XREF: .data:004FC430o
		unicode	0, <STI>,0
aStmxcsr:				; DATA XREF: .data:004FC464o
		unicode	0, <STMXCSR>,0
aStr:					; DATA XREF: .data:004FC498o
					; .data:004FC4CCo
		unicode	0, <STR>,0
aloc_0:					; DATA XREF: .data:004FC500o
					; .data:004FC534o ...
		unicode	0, <SUB>,0
aSysenter:				; DATA XREF: .data:004FC604o
		unicode	0, <SYSENTER>,0
aSysexit:				; DATA XREF: .data:004FC638o
		unicode	0, <SYSEXIT>,0
aTest:					; DATA XREF: .data:004FC66Co
					; .data:004FC6A0o ...
		unicode	0, <TEST>,0
aUd1:					; DATA XREF: .data:004FC770o
		unicode	0, <UD1>,0
aUd2:					; DATA XREF: .data:004FC7A4o
		unicode	0, <UD2>,0
aVerr:					; DATA XREF: .data:004FC7D8o
		unicode	0, <VERR>,0
aVerw:					; DATA XREF: .data:004FC80Co
		unicode	0, <VERW>,0
aWbinvd:				; DATA XREF: .data:004FC840o
		unicode	0, <WBINVD>,0
aWrmsr:					; DATA XREF: .data:004FC874o
		unicode	0, <WRMSR>,0
aXadd:					; DATA XREF: .data:004FC8A8o
		unicode	0, <XADD>,0
aXlat:					; DATA XREF: .data:004FC9ACo
		unicode	0, <XLAT>,0
aXlatb:					; DATA XREF: .data:004FC9E0o
		unicode	0, <XLATB>,0
aXor:					; DATA XREF: .data:004FCA14o
					; .data:004FCA48o ...
		unicode	0, <XOR>,0
aCmps:					; DATA XREF: .data:004FCB18o
					; .data:004FCBB4o ...
		unicode	0, <CMPS>,0
aCmpsb:					; DATA XREF: .data:004FCB4Co
					; .data:004FCBE8o ...
		unicode	0, <CMPSB>,0
aCmps_0:				; DATA XREF: .data:004FCB80o
					; .data:004FCC1Co ...
		unicode	0, <CMPS*>,0
aLods:					; DATA XREF: .data:004FCCECo
					; .data:004FCD88o ...
		unicode	0, <LODS>,0
aLodsb:					; DATA XREF: .data:004FCD20o
					; .data:004FCDBCo ...
		unicode	0, <LODSB>,0
aLods_1:				; DATA XREF: .data:004FCD54o
					; .data:004FCDF0o ...
		unicode	0, <LODS*>,0
aMovsb:					; DATA XREF: .data:004FCEF4o
					; .data:004FCF90o ...
		unicode	0, <MOVSB>,0
aMovs:					; DATA XREF: .data:004FCF28o
					; .data:004FCFC4o ...
		unicode	0, <MOVS*>,0
aScas:					; DATA XREF: .data:004FD094o
					; .data:004FD130o ...
		unicode	0, <SCAS>,0
aScasb:					; DATA XREF: .data:004FD0C8o
					; .data:004FD164o ...
		unicode	0, <SCASB>,0
aScas_0:				; DATA XREF: .data:004FD0FCo
					; .data:004FD198o ...
		unicode	0, <SCAS*>,0
aStos:					; DATA XREF: .data:004FD268o
					; .data:004FD304o ...
		unicode	0, <STOS>,0
aStosb:					; DATA XREF: .data:004FD29Co
					; .data:004FD338o ...
		unicode	0, <STOSB>,0
aStos_1:				; DATA XREF: .data:004FD2D0o
					; .data:004FD36Co ...
		unicode	0, <STOS*>,0
aIns:					; DATA XREF: .data:004FD43Co
					; .data:004FD4D8o ...
		unicode	0, <INS>,0
aInsb:					; DATA XREF: .data:004FD470o
					; .data:004FD50Co ...
		unicode	0, <INSB>,0
aIns_0:					; DATA XREF: .data:004FD4A4o
					; .data:004FD540o ...
		unicode	0, <INS*>,0
aOuts:					; DATA XREF: .data:004FD610o
					; .data:004FD6ACo ...
		unicode	0, <OUTS>,0
aOutsb:					; DATA XREF: .data:004FD644o
					; .data:004FD6E0o ...
		unicode	0, <OUTSB>,0
aOuts_1:				; DATA XREF: .data:004FD678o
					; .data:004FD714o ...
		unicode	0, <OUTS*>,0
aXgetbv:				; DATA XREF: .data:004FD84Co
		unicode	0, <XGETBV>,0
aXsetbv:				; DATA XREF: .data:004FD880o
		unicode	0, <XSETBV>,0
aXrstor:				; DATA XREF: .data:004FD8B4o
		unicode	0, <XRSTOR>,0
aXsave:					; DATA XREF: .data:004FD8E8o
		unicode	0, <XSAVE>,0
aF2xm1:					; DATA XREF: .data:004FD91Co
		unicode	0, <F2XM1>,0
aFabs:					; DATA XREF: .data:004FD950o
		unicode	0, <FABS>,0
aFchs:					; DATA XREF: .data:004FD984o
		unicode	0, <FCHS>,0
aFclex:					; DATA XREF: .data:004FD9B8o
		unicode	0, <FCLEX>,0
aFcompp:				; DATA XREF: .data:004FD9ECo
		unicode	0, <FCOMPP>,0
aFcos:					; DATA XREF: .data:004FDA20o
		unicode	0, <FCOS>,0
aFdecstp:				; DATA XREF: .data:004FDA54o
		unicode	0, <FDECSTP>,0
aFincstp:				; DATA XREF: .data:004FDA88o
		unicode	0, <FINCSTP>,0
aFinit:					; DATA XREF: .data:004FDABCo
		unicode	0, <FINIT>,0
aFld1:					; DATA XREF: .data:004FDAF0o
		unicode	0, <FLD1>,0
aFldl2t:				; DATA XREF: .data:004FDB24o
		unicode	0, <FLDL2T>,0
aFldl2e:				; DATA XREF: .data:004FDB58o
		unicode	0, <FLDL2E>,0
aFldpi:					; DATA XREF: .data:004FDB8Co
		unicode	0, <FLDPI>,0
aFldlg2:				; DATA XREF: .data:004FDBC0o
		unicode	0, <FLDLG2>,0
aFldln2:				; DATA XREF: .data:004FDBF4o
		unicode	0, <FLDLN2>,0
aFldz:					; DATA XREF: .data:004FDC28o
		unicode	0, <FLDZ>,0
aFnop:					; DATA XREF: .data:004FDC5Co
		unicode	0, <FNOP>,0
aFpatan:				; DATA XREF: .data:004FDC90o
		unicode	0, <FPATAN>,0
aFprem:					; DATA XREF: .data:004FDCC4o
		unicode	0, <FPREM>,0
aFprem1:				; DATA XREF: .data:004FDCF8o
		unicode	0, <FPREM1>,0
aFptan:					; DATA XREF: .data:004FDD2Co
		unicode	0, <FPTAN>,0
aFrndint:				; DATA XREF: .data:004FDD60o
		unicode	0, <FRNDINT>,0
aFscale:				; DATA XREF: .data:004FDD94o
		unicode	0, <FSCALE>,0
aFsin:					; DATA XREF: .data:004FDDC8o
		unicode	0, <FSIN>,0
aFsincos:				; DATA XREF: .data:004FDDFCo
		unicode	0, <FSINCOS>,0
aFsqrt:					; DATA XREF: .data:004FDE30o
		unicode	0, <FSQRT>,0
aFstsw:					; DATA XREF: .data:004FDE64o
					; .data:004FF4F0o
		unicode	0, <FSTSW>,0
aFtst:					; DATA XREF: .data:004FDE98o
		unicode	0, <FTST>,0
aFucompp:				; DATA XREF: .data:004FDECCo
		unicode	0, <FUCOMPP>,0
aFxam:					; DATA XREF: .data:004FDF00o
		unicode	0, <FXAM>,0
aFxtract:				; DATA XREF: .data:004FDF34o
		unicode	0, <FXTRACT>,0
aFyl2x:					; DATA XREF: .data:004FDF68o
		unicode	0, <FYL2X>,0
aFyl2xp1:				; DATA XREF: .data:004FDF9Co
		unicode	0, <FYL2XP1>,0
aFeni:					; DATA XREF: .data:004FDFD0o
		unicode	0, <FENI>,0
aFdisi:					; DATA XREF: .data:004FE004o
		unicode	0, <FDISI>,0
aFadd:					; DATA XREF: .data:004FE038o
					; .data:004FE06Co ...
		unicode	0, <FADD>,0
aFaddp:					; DATA XREF: .data:004FE0A0o
					; .data:004FE0D4o
		unicode	0, <FADDP>,0
aFcmovb:				; DATA XREF: .data:004FE108o
		unicode	0, <FCMOVB>,0
aFcmove:				; DATA XREF: .data:004FE13Co
		unicode	0, <FCMOVE>,0
aFcmovbe:				; DATA XREF: .data:004FE170o
		unicode	0, <FCMOVBE>,0
aFcmovu:				; DATA XREF: .data:004FE1A4o
		unicode	0, <FCMOVU>,0
aFcmovnb:				; DATA XREF: .data:004FE1D8o
		unicode	0, <FCMOVNB>,0
aFcmovne:				; DATA XREF: .data:004FE20Co
		unicode	0, <FCMOVNE>,0
aFcmovnbe:				; DATA XREF: .data:004FE240o
		unicode	0, <FCMOVNBE>,0
aFcmovnu:				; DATA XREF: .data:004FE274o
		unicode	0, <FCMOVNU>,0
aFcom:					; DATA XREF: .data:004FE2A8o
					; .data:004FE2DCo ...
		unicode	0, <FCOM>,0
aFcomp:					; DATA XREF: .data:004FE310o
					; .data:004FE344o ...
		unicode	0, <FCOMP>,0
aFcomi:					; DATA XREF: .data:004FE378o
		unicode	0, <FCOMI>,0
aFcomip:				; DATA XREF: .data:004FE3ACo
		unicode	0, <FCOMIP>,0
aFucomi:				; DATA XREF: .data:004FE3E0o
		unicode	0, <FUCOMI>,0
aFucomip:				; DATA XREF: .data:004FE414o
		unicode	0, <FUCOMIP>,0
aFdiv:					; DATA XREF: .data:004FE448o
					; .data:004FE47Co ...
		unicode	0, <FDIV>,0
aFdivp:					; DATA XREF: .data:004FE4B0o
					; .data:004FE4E4o
		unicode	0, <FDIVP>,0
aFdivr:					; DATA XREF: .data:004FE518o
					; .data:004FE54Co ...
		unicode	0, <FDIVR>,0
aFdivrp:				; DATA XREF: .data:004FE580o
					; .data:004FE5B4o
		unicode	0, <FDIVRP>,0
aFfree:					; DATA XREF: .data:004FE5E8o
		unicode	0, <FFREE>,0
aFfreep:				; DATA XREF: .data:004FE61Co
		unicode	0, <FFREEP>,0
aFld:					; DATA XREF: .data:004FE650o
					; .data:004FF148o ...
		unicode	0, <FLD>,0
aFmul:					; DATA XREF: .data:004FE684o
					; .data:004FE6B8o ...
		unicode	0, <FMUL>,0
aFmulp:					; DATA XREF: .data:004FE6ECo
					; .data:004FE720o
		unicode	0, <FMULP>,0
aFst_1:					; DATA XREF: .data:004FE754o
					; .data:004FF384o ...
		unicode	0, <FST>,0
aFstp:					; DATA XREF: .data:004FE788o
					; .data:004FF3ECo ...
		unicode	0, <FSTP>,0
aFsub:					; DATA XREF: .data:004FE7BCo
					; .data:004FE7F0o ...
		unicode	0, <FSUB>,0
aFsubp:					; DATA XREF: .data:004FE824o
					; .data:004FE858o
		unicode	0, <FSUBP>,0
aFsubr:					; DATA XREF: .data:004FE88Co
					; .data:004FE8C0o ...
		unicode	0, <FSUBR>,0
aFsubrp:				; DATA XREF: .data:004FE8F4o
					; .data:004FE928o
		unicode	0, <FSUBRP>,0
aFucom:					; DATA XREF: .data:004FE95Co
					; .data:004FE990o
		unicode	0, <FUCOM>,0
aFucomp:				; DATA XREF: .data:004FE9C4o
					; .data:004FE9F8o
		unicode	0, <FUCOMP>,0
aFxch:					; DATA XREF: .data:004FEA2Co
					; .data:004FEA60o
		unicode	0, <FXCH>,0
aFiadd:					; DATA XREF: .data:004FEAFCo
					; .data:004FEB30o
		unicode	0, <FIADD>,0
aFbld:					; DATA XREF: .data:004FEB64o
		unicode	0, <FBLD>,0
aFbstp:					; DATA XREF: .data:004FEB98o
		unicode	0, <FBSTP>,0
aFidiv:					; DATA XREF: .data:004FED04o
					; .data:004FED38o
		unicode	0, <FIDIV>,0
aFidivr:				; DATA XREF: .data:004FEDD4o
					; .data:004FEE08o
		unicode	0, <FIDIVR>,0
aFicom:					; DATA XREF: .data:004FEE3Co
					; .data:004FEE70o
		unicode	0, <FICOM>,0
aFicomp:				; DATA XREF: .data:004FEEA4o
					; .data:004FEED8o
		unicode	0, <FICOMP>,0
aFild:					; DATA XREF: .data:004FEF0Co
					; .data:004FEF40o ...
		unicode	0, <FILD>,0
aFist:					; DATA XREF: .data:004FEFA8o
					; .data:004FEFDCo
		unicode	0, <FIST>,0
aFistp:					; DATA XREF: .data:004FF010o
					; .data:004FF044o ...
		unicode	0, <FISTP>,0
aFisttp:				; DATA XREF: .data:004FF0ACo
					; .data:004FF0E0o ...
		unicode	0, <FISTTP>,0
aFldcw:					; DATA XREF: .data:004FF1E4o
		unicode	0, <FLDCW>,0
aFldenv:				; DATA XREF: .data:004FF218o
		unicode	0, <FLDENV>,0
aFimul:					; DATA XREF: .data:004FF2B4o
					; .data:004FF2E8o
		unicode	0, <FIMUL>,0
aFrstor:				; DATA XREF: .data:004FF31Co
		unicode	0, <FRSTOR>,0
aFsave:					; DATA XREF: .data:004FF350o
		unicode	0, <FSAVE>,0
aFstcw:					; DATA XREF: .data:004FF488o
		unicode	0, <FSTCW>,0
aFstenv:				; DATA XREF: .data:004FF4BCo
		unicode	0, <FSTENV>,0
aFisub:					; DATA XREF: .data:004FF58Co
					; .data:004FF5C0o
		unicode	0, <FISUB>,0
aFisubr:				; DATA XREF: .data:004FF65Co
					; .data:004FF690o
		unicode	0, <FISUBR>,0
aFsetpm:				; DATA XREF: .data:004FF6C4o
		unicode	0, <FSETPM>,0
aAddpd:					; DATA XREF: .data:004FF6F8o
		unicode	0, <ADDPD>,0
aVaddpd:				; DATA XREF: .data:004FF72Co
		unicode	0, <VADDPD>,0
aAddps:					; DATA XREF: .data:004FF760o
		unicode	0, <ADDPS>,0
aVaddps:				; DATA XREF: .data:004FF794o
		unicode	0, <VADDPS>,0
aAddsd:					; DATA XREF: .data:004FF7C8o
		unicode	0, <ADDSD>,0
aVaddsd:				; DATA XREF: .data:004FF7FCo
		unicode	0, <VADDSD>,0
aAddss:					; DATA XREF: .data:004FF830o
		unicode	0, <ADDSS>,0
aVaddss:				; DATA XREF: .data:004FF864o
		unicode	0, <VADDSS>,0
aAddsubpd:				; DATA XREF: .data:004FF898o
					; .data:005053CCo
		unicode	0, <ADDSUBPD>,0
aVaddsubpd:				; DATA XREF: .data:004FF8CCo
		unicode	0, <VADDSUBPD>,0
aAddsubps:				; DATA XREF: .data:004FF900o
					; .data:00505434o
		unicode	0, <ADDSUBPS>,0
aVaddsubps:				; DATA XREF: .data:004FF934o
		unicode	0, <VADDSUBPS>,0
aAndpd:					; DATA XREF: .data:004FF968o
		unicode	0, <ANDPD>,0
aVandpd:				; DATA XREF: .data:004FF99Co
		unicode	0, <VANDPD>,0
aAndps:					; DATA XREF: .data:004FF9D0o
		unicode	0, <ANDPS>,0
aVandps:				; DATA XREF: .data:004FFA04o
		unicode	0, <VANDPS>,0
aAndnpd:				; DATA XREF: .data:004FFA38o
		unicode	0, <ANDNPD>,0
aVandnpd:				; DATA XREF: .data:004FFA6Co
		unicode	0, <VANDNPD>,0
aAndnps:				; DATA XREF: .data:004FFAA0o
		unicode	0, <ANDNPS>,0
aVandnps:				; DATA XREF: .data:004FFAD4o
		unicode	0, <VANDNPS>,0
aCmpPd:					; DATA XREF: .data:004FFB08o
		unicode	0, <CMP*PD>,0
aVcmpPd:				; DATA XREF: .data:004FFB3Co
		unicode	0, <VCMP*PD>,0
aCmppd:					; DATA XREF: .data:004FFB70o
		unicode	0, <CMPPD>,0
aVcmppd:				; DATA XREF: .data:004FFBA4o
		unicode	0, <VCMPPD>,0
aCmpPs:					; DATA XREF: .data:004FFBD8o
		unicode	0, <CMP*PS>,0
aVcmpPs:				; DATA XREF: .data:004FFC0Co
		unicode	0, <VCMP*PS>,0
aCmpps:					; DATA XREF: .data:004FFC40o
		unicode	0, <CMPPS>,0
aVcmpps:				; DATA XREF: .data:004FFC74o
		unicode	0, <VCMPPS>,0
aCmpSd:					; DATA XREF: .data:004FFCA8o
		unicode	0, <CMP*SD>,0
aVcmpSd:				; DATA XREF: .data:004FFCDCo
		unicode	0, <VCMP*SD>,0
aCmpsd:					; DATA XREF: .data:004FFD10o
		unicode	0, <CMPSD>,0
aVcmpsd:				; DATA XREF: .data:004FFD44o
		unicode	0, <VCMPSD>,0
aCmpSs:					; DATA XREF: .data:004FFD78o
		unicode	0, <CMP*SS>,0
aVcmpSs:				; DATA XREF: .data:004FFDACo
		unicode	0, <VCMP*SS>,0
aCmpss:					; DATA XREF: .data:004FFDE0o
		unicode	0, <CMPSS>,0
aVcmpss:				; DATA XREF: .data:004FFE14o
		unicode	0, <VCMPSS>,0
aComisd:				; DATA XREF: .data:004FFE48o
		unicode	0, <COMISD>,0
aVcomisd:				; DATA XREF: .data:004FFE7Co
		unicode	0, <VCOMISD>,0
aComiss:				; DATA XREF: .data:004FFEB0o
		unicode	0, <COMISS>,0
aVcomiss:				; DATA XREF: .data:004FFEE4o
		unicode	0, <VCOMISS>,0
aCvtdq2pd:				; DATA XREF: .data:004FFF18o
		unicode	0, <CVTDQ2PD>,0
aVcvtdq2pd:				; DATA XREF: .data:004FFF4Co
					; .data:004FFF80o
		unicode	0, <VCVTDQ2PD>,0
aCvtdq2ps:				; DATA XREF: .data:004FFFB4o
		unicode	0, <CVTDQ2PS>,0
aVcvtdq2ps:				; DATA XREF: .data:stru_4FFFE8o
		unicode	0, <VCVTDQ2PS>,0
aCvtpd2dq:				; DATA XREF: .data:0050001Co
		unicode	0, <CVTPD2DQ>,0
aVcvtpd2dq:				; DATA XREF: .data:00500050o
		unicode	0, <VCVTPD2DQ>,0
aCvtpd2pi:				; DATA XREF: .data:00500084o
		unicode	0, <CVTPD2PI>,0
aCvtpd2ps:				; DATA XREF: .data:005000B8o
		unicode	0, <CVTPD2PS>,0
aVcvtpd2ps:				; DATA XREF: .data:005000ECo
		unicode	0, <VCVTPD2PS>,0
aCvtpi2pd:				; DATA XREF: .data:00500120o
		unicode	0, <CVTPI2PD>,0
aCvtpi2ps:				; DATA XREF: .data:00500154o
		unicode	0, <CVTPI2PS>,0
aCvtps2dq:				; DATA XREF: .data:00500188o
		unicode	0, <CVTPS2DQ>,0
aVcvtps2dq:				; DATA XREF: .data:005001BCo
		unicode	0, <VCVTPS2DQ>,0
aCvtps2pd:				; DATA XREF: .data:005001F0o
		unicode	0, <CVTPS2PD>,0
aVcvtps2pd:				; DATA XREF: .data:00500224o
					; .data:00500258o
		unicode	0, <VCVTPS2PD>,0
aCvtps2pi:				; DATA XREF: .data:0050028Co
		unicode	0, <CVTPS2PI>,0
aCvtsd2si:				; DATA XREF: .data:005002C0o
		unicode	0, <CVTSD2SI>,0
aVcvtsd2si:				; DATA XREF: .data:005002F4o
		unicode	0, <VCVTSD2SI>,0
aCvtsd2ss:				; DATA XREF: .data:00500328o
		unicode	0, <CVTSD2SS>,0
aVcvtsd2ss:				; DATA XREF: .data:0050035Co
		unicode	0, <VCVTSD2SS>,0
aCvtsi2sd:				; DATA XREF: .data:00500390o
		unicode	0, <CVTSI2SD>,0
aVcvtsi2sd:				; DATA XREF: .data:005003C4o
		unicode	0, <VCVTSI2SD>,0
aCvtsi2ss:				; DATA XREF: .data:005003F8o
		unicode	0, <CVTSI2SS>,0
aVcvtsi2ss:				; DATA XREF: .data:0050042Co
		unicode	0, <VCVTSI2SS>,0
aCvtss2sd:				; DATA XREF: .data:00500460o
		unicode	0, <CVTSS2SD>,0
aVcvtss2sd:				; DATA XREF: .data:00500494o
		unicode	0, <VCVTSS2SD>,0
aCvtss2si:				; DATA XREF: .data:005004C8o
		unicode	0, <CVTSS2SI>,0
aVcvtss2si:				; DATA XREF: .data:005004FCo
		unicode	0, <VCVTSS2SI>,0
aCvttpd2pi:				; DATA XREF: .data:00500530o
		unicode	0, <CVTTPD2PI>,0
aCvttpd2dq:				; DATA XREF: .data:00500564o
		unicode	0, <CVTTPD2DQ>,0
aVcvttpd2dq:				; DATA XREF: .data:00500598o
		unicode	0, <VCVTTPD2DQ>,0
aCvttps2dq:				; DATA XREF: .data:005005CCo
		unicode	0, <CVTTPS2DQ>,0
aVcvttps2dq:				; DATA XREF: .data:00500600o
		unicode	0, <VCVTTPS2DQ>,0
aCvttps2pi:				; DATA XREF: .data:00500634o
		unicode	0, <CVTTPS2PI>,0
aCvttsd2si:				; DATA XREF: .data:00500668o
		unicode	0, <CVTTSD2SI>,0
aVcvttsd2si:				; DATA XREF: .data:0050069Co
		unicode	0, <VCVTTSD2SI>,0
aCvttss2si:				; DATA XREF: .data:005006D0o
		unicode	0, <CVTTSS2SI>,0
aVcvttss2si:				; DATA XREF: .data:00500704o
		unicode	0, <VCVTTSS2SI>,0
aDivpd:					; DATA XREF: .data:00500738o
		unicode	0, <DIVPD>,0
aVdivpd:				; DATA XREF: .data:0050076Co
		unicode	0, <VDIVPD>,0
aDivps:					; DATA XREF: .data:005007A0o
		unicode	0, <DIVPS>,0
aVdivps:				; DATA XREF: .data:005007D4o
		unicode	0, <VDIVPS>,0
aDivsd:					; DATA XREF: .data:00500808o
		unicode	0, <DIVSD>,0
aVdivsd:				; DATA XREF: .data:0050083Co
		unicode	0, <VDIVSD>,0
aDivss:					; DATA XREF: .data:00500870o
		unicode	0, <DIVSS>,0
aVdivss:				; DATA XREF: .data:005008A4o
		unicode	0, <VDIVSS>,0
aHaddpd:				; DATA XREF: .data:005008D8o
		unicode	0, <HADDPD>,0
aVhaddpd:				; DATA XREF: .data:0050090Co
		unicode	0, <VHADDPD>,0
aHaddps:				; DATA XREF: .data:00500940o
		unicode	0, <HADDPS>,0
aVhaddps:				; DATA XREF: .data:00500974o
		unicode	0, <VHADDPS>,0
aHsubpd:				; DATA XREF: .data:005009A8o
		unicode	0, <HSUBPD>,0
aVhsubpd:				; DATA XREF: .data:005009DCo
		unicode	0, <VHSUBPD>,0
aHsubps:				; DATA XREF: .data:00500A10o
		unicode	0, <HSUBPS>,0
aVhsubps:				; DATA XREF: .data:00500A44o
		unicode	0, <VHSUBPS>,0
aLddqu:					; DATA XREF: .data:00500A78o
		unicode	0, <LDDQU>,0
aVlddqu:				; DATA XREF: .data:00500AACo
		unicode	0, <VLDDQU>,0
aLdmxcsr_1:				; DATA XREF: .data:00500AE0o
		unicode	0, <LDMXCSR>,0
aVldmxcsr:				; DATA XREF: .data:00500B14o
		unicode	0, <VLDMXCSR>,0
aVstmxcsr:				; DATA XREF: .data:00500B48o
		unicode	0, <VSTMXCSR>,0
aMaskmovdqu:				; DATA XREF: .data:00500B7Co
					; .data:0050139Co ...
		unicode	0, <MASKMOVDQU>,0
aVmaskmovdqu:				; DATA XREF: .data:00500BB0o
		unicode	0, <VMASKMOVDQU>,0
aMaskmovq:				; DATA XREF: .data:00500BE4o
					; .data:00501B20o ...
		unicode	0, <MASKMOVQ>,0
aMaxpd_0:				; DATA XREF: .data:00500C18o
		unicode	0, <MAXPD>,0
aVmaxpd:				; DATA XREF: .data:00500C4Co
		unicode	0, <VMAXPD>,0
aMaxps:					; DATA XREF: .data:00500C80o
		unicode	0, <MAXPS>,0
aVmaxps:				; DATA XREF: .data:00500CB4o
		unicode	0, <VMAXPS>,0
aMaxsd_2:				; DATA XREF: .data:00500CE8o
		unicode	0, <MAXSD>,0
aVmaxsd:				; DATA XREF: .data:00500D1Co
		unicode	0, <VMAXSD>,0
aMaxss:					; DATA XREF: .data:00500D50o
		unicode	0, <MAXSS>,0
aVmaxss:				; DATA XREF: .data:00500D84o
		unicode	0, <VMAXSS>,0
aMfence:				; DATA XREF: .data:00500DB8o
		unicode	0, <MFENCE>,0
aMinpd:					; DATA XREF: .data:00500DECo
		unicode	0, <MINPD>,0
aVminpd:				; DATA XREF: .data:00500E20o
		unicode	0, <VMINPD>,0
aMinps_1:				; DATA XREF: .data:00500E54o
		unicode	0, <MINPS>,0
aVminps:				; DATA XREF: .data:00500E88o
		unicode	0, <VMINPS>,0
aMinsd:					; DATA XREF: .data:00500EBCo
		unicode	0, <MINSD>,0
aVminsd:				; DATA XREF: .data:00500EF0o
		unicode	0, <VMINSD>,0
aMinss_1:				; DATA XREF: .data:00500F24o
		unicode	0, <MINSS>,0
aVminss:				; DATA XREF: .data:00500F58o
		unicode	0, <VMINSS>,0
aMovapd:				; DATA XREF: .data:00500F8Co
					; .data:00500FF4o
		unicode	0, <MOVAPD>,0
aVmovapd:				; DATA XREF: .data:00500FC0o
					; .data:00501028o
		unicode	0, <VMOVAPD>,0
aMovaps:				; DATA XREF: .data:0050105Co
					; .data:005010C4o
		unicode	0, <MOVAPS>,0
aVmovaps:				; DATA XREF: .data:00501090o
					; .data:005010F8o
		unicode	0, <VMOVAPS>,0
aMovd:					; DATA XREF: .data:0050112Co
					; .data:00501160o ...
		unicode	0, <MOVD>,0
aVmovd:					; DATA XREF: .data:005011C8o
					; .data:00501230o
		unicode	0, <VMOVD>,0
aMovddup_0:				; DATA XREF: .data:00501264o
		unicode	0, <MOVDDUP>,0
aVmovddup:				; DATA XREF: .data:00501298o
		unicode	0, <VMOVDDUP>,0
aMovdqa:				; DATA XREF: .data:005012CCo
					; .data:00501334o
		unicode	0, <MOVDQA>,0
aVmovdqa:				; DATA XREF: .data:00501300o
					; .data:00501368o
		unicode	0, <VMOVDQA>,0
aVmovdqu:				; DATA XREF: .data:005013D0o
					; .data:00501438o
		unicode	0, <VMOVDQU>,0
aMovdq2q:				; DATA XREF: .data:0050146Co
		unicode	0, <MOVDQ2Q>,0
aMovhlps:				; DATA XREF: .data:005014A0o
		unicode	0, <MOVHLPS>,0
aVmovhlps:				; DATA XREF: .data:005014D4o
		unicode	0, <VMOVHLPS>,0
aMovhpd:				; DATA XREF: .data:00501508o
					; .data:00501570o
		unicode	0, <MOVHPD>,0
aVmovhpd:				; DATA XREF: .data:0050153Co
					; .data:005015A4o
		unicode	0, <VMOVHPD>,0
aMovhps:				; DATA XREF: .data:005015D8o
					; .data:00501640o
		unicode	0, <MOVHPS>,0
aVmovhps:				; DATA XREF: .data:0050160Co
					; .data:00501674o
		unicode	0, <VMOVHPS>,0
aMovlhps:				; DATA XREF: .data:005016A8o
		unicode	0, <MOVLHPS>,0
aVmovlhps:				; DATA XREF: .data:005016DCo
		unicode	0, <VMOVLHPS>,0
aMovlpd:				; DATA XREF: .data:00501710o
					; .data:00501778o
		unicode	0, <MOVLPD>,0
aVmovlpd:				; DATA XREF: .data:00501744o
					; .data:005017ACo
		unicode	0, <VMOVLPD>,0
aMovlps:				; DATA XREF: .data:005017E0o
					; .data:00501848o
		unicode	0, <MOVLPS>,0
aVmovlps:				; DATA XREF: .data:00501814o
					; .data:0050187Co
		unicode	0, <VMOVLPS>,0
aMovmskpd:				; DATA XREF: .data:005018B0o
		unicode	0, <MOVMSKPD>,0
aVmovmskpd:				; DATA XREF: .data:005018E4o
		unicode	0, <VMOVMSKPD>,0
aMovmskps:				; DATA XREF: .data:00501918o
		unicode	0, <MOVMSKPS>,0
aVmovmskps:				; DATA XREF: .data:0050194Co
		unicode	0, <VMOVMSKPS>,0
aMovntdq:				; DATA XREF: .data:00501980o
		unicode	0, <MOVNTDQ>,0
aVmovntdq:				; DATA XREF: .data:005019B4o
		unicode	0, <VMOVNTDQ>,0
aMovnti:				; DATA XREF: .data:005019E8o
		unicode	0, <MOVNTI>,0
aMovntpd_1:				; DATA XREF: .data:00501A1Co
		unicode	0, <MOVNTPD>,0
aVmovntpd:				; DATA XREF: .data:00501A50o
		unicode	0, <VMOVNTPD>,0
aMovntps:				; DATA XREF: .data:00501A84o
		unicode	0, <MOVNTPS>,0
aVmovntps:				; DATA XREF: .data:00501AB8o
		unicode	0, <VMOVNTPS>,0
aMovntq:				; DATA XREF: .data:00501AECo
		unicode	0, <MOVNTQ>,0
aVmovq:					; DATA XREF: .data:00501BBCo
					; .data:00501C24o
		unicode	0, <VMOVQ>,0
aMovq2dq:				; DATA XREF: .data:00501C58o
		unicode	0, <MOVQ2DQ>,0
aMovsd:					; DATA XREF: .data:00501C8Co
					; .data:00501D28o
		unicode	0, <MOVSD>,0
aVmovsd:				; DATA XREF: .data:00501CC0o
					; .data:00501CF4o ...
		unicode	0, <VMOVSD>,0
aMovss:					; DATA XREF: .data:00501DC4o
					; .data:00501E60o
		unicode	0, <MOVSS>,0
aVmovss:				; DATA XREF: .data:00501DF8o
					; .data:00501E2Co ...
		unicode	0, <VMOVSS>,0
aMovshdup:				; DATA XREF: .data:00501EFCo
		unicode	0, <MOVSHDUP>,0
aVmovshdup:				; DATA XREF: .data:00501F30o
		unicode	0, <VMOVSHDUP>,0
aMovsldup:				; DATA XREF: .data:00501F64o
		unicode	0, <MOVSLDUP>,0
aVmovsldup:				; DATA XREF: .data:00501F98o
		unicode	0, <VMOVSLDUP>,0
aMovupd:				; DATA XREF: .data:00501FCCo
					; .data:00502034o
		unicode	0, <MOVUPD>,0
aVmovupd:				; DATA XREF: .data:00502000o
					; .data:00502068o
		unicode	0, <VMOVUPD>,0
aMovups:				; DATA XREF: .data:0050209Co
					; .data:00502104o
		unicode	0, <MOVUPS>,0
aVmovups:				; DATA XREF: .data:005020D0o
					; .data:00502138o
		unicode	0, <VMOVUPS>,0
aMulpd:					; DATA XREF: .data:0050216Co
		unicode	0, <MULPD>,0
aVmulpd:				; DATA XREF: .data:005021A0o
		unicode	0, <VMULPD>,0
aMulps:					; DATA XREF: .data:005021D4o
		unicode	0, <MULPS>,0
aVmulps:				; DATA XREF: .data:00502208o
		unicode	0, <VMULPS>,0
aMulsd:					; DATA XREF: .data:0050223Co
		unicode	0, <MULSD>,0
aVmulsd:				; DATA XREF: .data:00502270o
		unicode	0, <VMULSD>,0
aMulss:					; DATA XREF: .data:005022A4o
		unicode	0, <MULSS>,0
aVmulss:				; DATA XREF: .data:005022D8o
		unicode	0, <VMULSS>,0
aOrpd:					; DATA XREF: .data:0050230Co
		unicode	0, <ORPD>,0
aVorpd:					; DATA XREF: .data:00502340o
		unicode	0, <VORPD>,0
aOrps:					; DATA XREF: .data:00502374o
		unicode	0, <ORPS>,0
aVorps:					; DATA XREF: .data:005023A8o
		unicode	0, <VORPS>,0
aPacksswb:				; DATA XREF: .data:005023DCo
					; .data:00502410o
		unicode	0, <PACKSSWB>,0
aVpacksswb:				; DATA XREF: .data:00502444o
		unicode	0, <VPACKSSWB>,0
aPackssdw:				; DATA XREF: .data:00502478o
					; .data:005024ACo
		unicode	0, <PACKSSDW>,0
aVpackssdw:				; DATA XREF: .data:005024E0o
		unicode	0, <VPACKSSDW>,0
aPackuswb:				; DATA XREF: .data:00502514o
					; .data:00502548o
		unicode	0, <PACKUSWB>,0
aVpackuswb:				; DATA XREF: .data:0050257Co
		unicode	0, <VPACKUSWB>,0
aPaddb:					; DATA XREF: .data:005025B0o
					; .data:0050264Co
		unicode	0, <PADDB>,0
aPaddw:					; DATA XREF: .data:005025E4o
					; .data:005026B4o
		unicode	0, <PADDW>,0
aPaddd:					; DATA XREF: .data:00502618o
					; .data:0050271Co
		unicode	0, <PADDD>,0
aVpaddb:				; DATA XREF: .data:00502680o
		unicode	0, <VPADDB>,0
aVpaddw:				; DATA XREF: .data:005026E8o
		unicode	0, <VPADDW>,0
aVpaddd:				; DATA XREF: .data:00502750o
		unicode	0, <VPADDD>,0
aPaddq:					; DATA XREF: .data:00502784o
					; .data:005027B8o
		unicode	0, <PADDQ>,0
aVpaddq:				; DATA XREF: .data:005027ECo
		unicode	0, <VPADDQ>,0
aPaddsb:				; DATA XREF: .data:00502820o
					; .data:00502888o
		unicode	0, <PADDSB>,0
aPaddsw:				; DATA XREF: .data:00502854o
					; .data:005028F0o
		unicode	0, <PADDSW>,0
aVpaddsb:				; DATA XREF: .data:005028BCo
		unicode	0, <VPADDSB>,0
aVpaddsw:				; DATA XREF: .data:00502924o
		unicode	0, <VPADDSW>,0
aPaddusb:				; DATA XREF: .data:00502958o
					; .data:005029C0o
		unicode	0, <PADDUSB>,0
aPaddusw:				; DATA XREF: .data:0050298Co
					; .data:00502A28o
		unicode	0, <PADDUSW>,0
aVpaddusb:				; DATA XREF: .data:005029F4o
		unicode	0, <VPADDUSB>,0
aVpaddusw:				; DATA XREF: .data:00502A5Co
		unicode	0, <VPADDUSW>,0
aPand:					; DATA XREF: .data:00502A90o
					; .data:00502AC4o
		unicode	0, <PAND>,0
aVpand:					; DATA XREF: .data:00502AF8o
		unicode	0, <VPAND>,0
aPandn:					; DATA XREF: .data:00502B2Co
					; .data:00502B60o
		unicode	0, <PANDN>,0
aVpandn:				; DATA XREF: .data:00502B94o
		unicode	0, <VPANDN>,0
aPavgb:					; DATA XREF: .data:00502BC8o
					; .data:00502C30o
		unicode	0, <PAVGB>,0
aPavgw:					; DATA XREF: .data:00502BFCo
					; .data:00502C98o
		unicode	0, <PAVGW>,0
aVpavgb:				; DATA XREF: .data:00502C64o
		unicode	0, <VPAVGB>,0
aVpavgw:				; DATA XREF: .data:00502CCCo
		unicode	0, <VPAVGW>,0
aPcmpeqb:				; DATA XREF: .data:00502D00o
					; .data:00502D9Co
		unicode	0, <PCMPEQB>,0
aPcmpeqw:				; DATA XREF: .data:00502D34o
					; .data:00502E04o
		unicode	0, <PCMPEQW>,0
aPcmpeqd:				; DATA XREF: .data:00502D68o
					; .data:00502E6Co
		unicode	0, <PCMPEQD>,0
aVpcmpeqb:				; DATA XREF: .data:00502DD0o
		unicode	0, <VPCMPEQB>,0
aVpcmpeqw:				; DATA XREF: .data:00502E38o
		unicode	0, <VPCMPEQW>,0
aVpcmpeqd:				; DATA XREF: .data:00502EA0o
		unicode	0, <VPCMPEQD>,0
aPcmpgtb:				; DATA XREF: .data:00502ED4o
					; .data:00502F70o
		unicode	0, <PCMPGTB>,0
aPcmpgtw:				; DATA XREF: .data:00502F08o
					; .data:00502FD8o
		unicode	0, <PCMPGTW>,0
aPcmpgtd:				; DATA XREF: .data:00502F3Co
					; .data:00503040o
		unicode	0, <PCMPGTD>,0
aVpcmpgtb:				; DATA XREF: .data:00502FA4o
		unicode	0, <VPCMPGTB>,0
aVpcmpgtw:				; DATA XREF: .data:0050300Co
		unicode	0, <VPCMPGTW>,0
aVpcmpgtd:				; DATA XREF: .data:00503074o
		unicode	0, <VPCMPGTD>,0
aPextrw:				; DATA XREF: .data:005030A8o
					; .data:005030DCo ...
		unicode	0, <PEXTRW>,0
aVpextrw:				; DATA XREF: .data:00503110o
					; .data:0050674Co
		unicode	0, <VPEXTRW>,0
aPinsrw:				; DATA XREF: .data:00503144o
					; .data:00503178o ...
		unicode	0, <PINSRW>,0
aVpinsrw:				; DATA XREF: .data:005031E0o
					; .data:00503248o
		unicode	0, <VPINSRW>,0
aPmaddwd:				; DATA XREF: .data:0050327Co
					; .data:005032B0o
		unicode	0, <PMADDWD>,0
aVpmaddwd:				; DATA XREF: .data:005032E4o
		unicode	0, <VPMADDWD>,0
aPmaxsw:				; DATA XREF: .data:00503318o
					; .data:0050334Co
		unicode	0, <PMAXSW>,0
aVpmaxsw:				; DATA XREF: .data:00503380o
		unicode	0, <VPMAXSW>,0
aPmaxub:				; DATA XREF: .data:005033B4o
					; .data:005033E8o
		unicode	0, <PMAXUB>,0
aVpmaxub:				; DATA XREF: .data:0050341Co
		unicode	0, <VPMAXUB>,0
aPminsw:				; DATA XREF: .data:00503450o
					; .data:00503484o
		unicode	0, <PMINSW>,0
aVpminsw:				; DATA XREF: .data:005034B8o
		unicode	0, <VPMINSW>,0
aPminub:				; DATA XREF: .data:005034ECo
					; .data:00503520o
		unicode	0, <PMINUB>,0
aVpminub:				; DATA XREF: .data:00503554o
		unicode	0, <VPMINUB>,0
aPmovmskb:				; DATA XREF: .data:00503588o
					; .data:005035BCo
		unicode	0, <PMOVMSKB>,0
aVpmovmskb:				; DATA XREF: .data:005035F0o
		unicode	0, <VPMOVMSKB>,0
aPmulhuw:				; DATA XREF: .data:00503624o
					; .data:00503658o
		unicode	0, <PMULHUW>,0
aVpmulhuw:				; DATA XREF: .data:0050368Co
		unicode	0, <VPMULHUW>,0
aPmulhw:				; DATA XREF: .data:005036C0o
					; .data:005036F4o
		unicode	0, <PMULHW>,0
aVpmulhw:				; DATA XREF: .data:00503728o
		unicode	0, <VPMULHW>,0
aPmullw:				; DATA XREF: .data:0050375Co
					; .data:00503790o
		unicode	0, <PMULLW>,0
aVpmullw:				; DATA XREF: .data:005037C4o
		unicode	0, <VPMULLW>,0
aPmuludq:				; DATA XREF: .data:005037F8o
					; .data:0050382Co
		unicode	0, <PMULUDQ>,0
aVpmuludq:				; DATA XREF: .data:00503860o
		unicode	0, <VPMULUDQ>,0
aPor:					; DATA XREF: .data:00503894o
					; .data:005038C8o
		unicode	0, <POR>,0
aVpor:					; DATA XREF: .data:005038FCo
		unicode	0, <VPOR>,0
aPsadbw:				; DATA XREF: .data:00503930o
					; .data:00503964o
		unicode	0, <PSADBW>,0
aVpsadbw:				; DATA XREF: .data:00503998o
		unicode	0, <VPSADBW>,0
aPshufd:				; DATA XREF: .data:005039CCo
		unicode	0, <PSHUFD>,0
aVpshufd:				; DATA XREF: .data:00503A00o
		unicode	0, <VPSHUFD>,0
aPshufhw:				; DATA XREF: .data:00503A34o
		unicode	0, <PSHUFHW>,0
aVpshufhw:				; DATA XREF: .data:00503A68o
		unicode	0, <VPSHUFHW>,0
aPshuflw:				; DATA XREF: .data:00503A9Co
		unicode	0, <PSHUFLW>,0
aVpshuflw:				; DATA XREF: .data:00503AD0o
		unicode	0, <VPSHUFLW>,0
aPshufw:				; DATA XREF: .data:00503B04o
		unicode	0, <PSHUFW>,0
aPslldq:				; DATA XREF: .data:00503B38o
		unicode	0, <PSLLDQ>,0
aVpslldq:				; DATA XREF: .data:00503B6Co
		unicode	0, <VPSLLDQ>,0
aPsllw:					; DATA XREF: .data:00503BA0o
					; .data:00503BD4o ...
		unicode	0, <PSLLW>,0
aVpsllw:				; DATA XREF: .data:00503C08o
					; .data:00503CA4o
		unicode	0, <VPSLLW>,0
aPslld:					; DATA XREF: .data:00503CD8o
					; .data:00503D0Co ...
		unicode	0, <PSLLD>,0
aVpslld:				; DATA XREF: .data:00503D40o
					; .data:00503DDCo
		unicode	0, <VPSLLD>,0
aPsllq:					; DATA XREF: .data:00503E10o
					; .data:00503E44o ...
		unicode	0, <PSLLQ>,0
aVpsllq:				; DATA XREF: .data:00503E78o
					; .data:00503F14o
		unicode	0, <VPSLLQ>,0
aPsraw:					; DATA XREF: .data:00503F48o
					; .data:00503F7Co ...
		unicode	0, <PSRAW>,0
aVpsraw:				; DATA XREF: .data:00503FB0o
					; .data:0050404Co
		unicode	0, <VPSRAW>,0
aPsrad:					; DATA XREF: .data:00504080o
					; .data:005040B4o ...
		unicode	0, <PSRAD>,0
aVpsrad:				; DATA XREF: .data:005040E8o
					; .data:00504184o
		unicode	0, <VPSRAD>,0
aPsrldq:				; DATA XREF: .data:005041B8o
		unicode	0, <PSRLDQ>,0
aVpsrldq:				; DATA XREF: .data:005041ECo
		unicode	0, <VPSRLDQ>,0
aPsrlw:					; DATA XREF: .data:00504220o
					; .data:00504254o ...
		unicode	0, <PSRLW>,0
aVpsrlw:				; DATA XREF: .data:00504288o
					; .data:00504324o
		unicode	0, <VPSRLW>,0
aPsrld:					; DATA XREF: .data:00504358o
					; .data:0050438Co ...
		unicode	0, <PSRLD>,0
aVpsrld:				; DATA XREF: .data:005043C0o
					; .data:0050445Co
		unicode	0, <VPSRLD>,0
aPsrlq:					; DATA XREF: .data:00504490o
					; .data:005044C4o ...
		unicode	0, <PSRLQ>,0
aVpsrlq:				; DATA XREF: .data:005044F8o
					; .data:00504594o
		unicode	0, <VPSRLQ>,0
aPsubb:					; DATA XREF: .data:005045C8o
					; .data:00504664o
		unicode	0, <PSUBB>,0
aPsubw:					; DATA XREF: .data:005045FCo
					; .data:005046CCo
		unicode	0, <PSUBW>,0
aPsubd:					; DATA XREF: .data:00504630o
					; .data:00504734o
		unicode	0, <PSUBD>,0
aVpsubb:				; DATA XREF: .data:00504698o
		unicode	0, <VPSUBB>,0
aVpsubw:				; DATA XREF: .data:00504700o
		unicode	0, <VPSUBW>,0
aVpsubd:				; DATA XREF: .data:00504768o
		unicode	0, <VPSUBD>,0
aPsubq:					; DATA XREF: .data:0050479Co
					; .data:005047D0o
		unicode	0, <PSUBQ>,0
aVpsubq:				; DATA XREF: .data:00504804o
		unicode	0, <VPSUBQ>,0
aPsubsb:				; DATA XREF: .data:00504838o
					; .data:005048A0o
		unicode	0, <PSUBSB>,0
aPsubsw:				; DATA XREF: .data:0050486Co
					; .data:00504908o
		unicode	0, <PSUBSW>,0
aVpsubsb:				; DATA XREF: .data:005048D4o
		unicode	0, <VPSUBSB>,0
aVpsubsw:				; DATA XREF: .data:0050493Co
		unicode	0, <VPSUBSW>,0
aPsubusb:				; DATA XREF: .data:00504970o
					; .data:005049D8o
		unicode	0, <PSUBUSB>,0
aPsubusw:				; DATA XREF: .data:005049A4o
					; .data:00504A40o
		unicode	0, <PSUBUSW>,0
aVpsubusb:				; DATA XREF: .data:00504A0Co
		unicode	0, <VPSUBUSB>,0
aVpsubusw:				; DATA XREF: .data:00504A74o
		unicode	0, <VPSUBUSW>,0
aPunpckhbw:				; DATA XREF: .data:00504AA8o
					; .data:00504ADCo
		unicode	0, <PUNPCKHBW>,0
aVpunpckhbw:				; DATA XREF: .data:00504B10o
		unicode	0, <VPUNPCKHBW>,0
aPunpckhwd:				; DATA XREF: .data:00504B44o
					; .data:00504B78o
		unicode	0, <PUNPCKHWD>,0
aVpunpckhwd:				; DATA XREF: .data:00504BACo
		unicode	0, <VPUNPCKHWD>,0
aPunpckhdq:				; DATA XREF: .data:00504BE0o
					; .data:00504C14o
		unicode	0, <PUNPCKHDQ>,0
aVpunpckhdq:				; DATA XREF: .data:00504C48o
		unicode	0, <VPUNPCKHDQ>,0
aPunpckhqdq:				; DATA XREF: .data:00504C7Co
		unicode	0, <PUNPCKHQDQ>,0
aVpunpckhqdq:				; DATA XREF: .data:00504CB0o
		unicode	0, <VPUNPCKHQDQ>,0
aPunpcklbw:				; DATA XREF: .data:00504CE4o
					; .data:00504D18o
		unicode	0, <PUNPCKLBW>,0
aVpunpcklbw:				; DATA XREF: .data:00504D4Co
		unicode	0, <VPUNPCKLBW>,0
aPunpcklwd:				; DATA XREF: .data:00504D80o
					; .data:00504DB4o
		unicode	0, <PUNPCKLWD>,0
aVpunpcklwd:				; DATA XREF: .data:00504DE8o
		unicode	0, <VPUNPCKLWD>,0
aPunpckldq:				; DATA XREF: .data:00504E1Co
					; .data:00504E50o
		unicode	0, <PUNPCKLDQ>,0
aVpunpckldq:				; DATA XREF: .data:00504E84o
		unicode	0, <VPUNPCKLDQ>,0
aPunpcklqdq:				; DATA XREF: .data:00504EB8o
		unicode	0, <PUNPCKLQDQ>,0
aVpunpcklqdq:				; DATA XREF: .data:00504EECo
		unicode	0, <VPUNPCKLQDQ>,0
aPxor:					; DATA XREF: .data:00504F20o
					; .data:00504F54o
		unicode	0, <PXOR>,0
aVpxor:					; DATA XREF: .data:00504F88o
		unicode	0, <VPXOR>,0
aRcpps:					; DATA XREF: .data:00504FBCo
		unicode	0, <RCPPS>,0
aVrcpps:				; DATA XREF: .data:00504FF0o
		unicode	0, <VRCPPS>,0
aRcpss:					; DATA XREF: .data:00505024o
		unicode	0, <RCPSS>,0
aVrcpss:				; DATA XREF: .data:00505058o
		unicode	0, <VRCPSS>,0
aRsqrtps:				; DATA XREF: .data:0050508Co
					; .data:00505294o
		unicode	0, <RSQRTPS>,0
aVrsqrtps:				; DATA XREF: .data:005050C0o
		unicode	0, <VRSQRTPS>,0
aRsqrtss:				; DATA XREF: .data:005050F4o
					; .data:00505364o
		unicode	0, <RSQRTSS>,0
aVrsqrtss:				; DATA XREF: .data:00505128o
		unicode	0, <VRSQRTSS>,0
aShufpd:				; DATA XREF: .data:0050515Co
		unicode	0, <SHUFPD>,0
aVshufpd:				; DATA XREF: .data:00505190o
		unicode	0, <VSHUFPD>,0
aShufps:				; DATA XREF: .data:005051C4o
		unicode	0, <SHUFPS>,0
aVshufps:				; DATA XREF: .data:005051F8o
		unicode	0, <VSHUFPS>,0
aSqrtpd:				; DATA XREF: .data:0050522Co
		unicode	0, <SQRTPD>,0
aVsqrtpd:				; DATA XREF: .data:00505260o
		unicode	0, <VSQRTPD>,0
aVsqrtps:				; DATA XREF: .data:005052C8o
		unicode	0, <VSQRTPS>,0
aSqrtsd:				; DATA XREF: .data:005052FCo
		unicode	0, <SQRTSD>,0
aVsqrtsd:				; DATA XREF: .data:00505330o
		unicode	0, <VSQRTSD>,0
aVsqrtss:				; DATA XREF: .data:00505398o
		unicode	0, <VSQRTSS>,0
aVsubpd:				; DATA XREF: .data:00505400o
		unicode	0, <VSUBPD>,0
aVsubps:				; DATA XREF: .data:00505468o
		unicode	0, <VSUBPS>,0
aSubsd:					; DATA XREF: .data:0050549Co
		unicode	0, <SUBSD>,0
aVsubsd:				; DATA XREF: .data:005054D0o
		unicode	0, <VSUBSD>,0
aSubss:					; DATA XREF: .data:00505504o
		unicode	0, <SUBSS>,0
aVsubss:				; DATA XREF: .data:00505538o
		unicode	0, <VSUBSS>,0
aUnpckhpd:				; DATA XREF: .data:0050556Co
		unicode	0, <UNPCKHPD>,0
aVunpckhpd:				; DATA XREF: .data:005055A0o
		unicode	0, <VUNPCKHPD>,0
aUnpckhps:				; DATA XREF: .data:005055D4o
		unicode	0, <UNPCKHPS>,0
aVunpckhps:				; DATA XREF: .data:00505608o
		unicode	0, <VUNPCKHPS>,0
aUnpcklpd:				; DATA XREF: .data:0050563Co
		unicode	0, <UNPCKLPD>,0
aVunpcklpd:				; DATA XREF: .data:00505670o
		unicode	0, <VUNPCKLPD>,0
aUnpcklps:				; DATA XREF: .data:005056A4o
		unicode	0, <UNPCKLPS>,0
aVunpcklps:				; DATA XREF: .data:005056D8o
		unicode	0, <VUNPCKLPS>,0
aUcomisd:				; DATA XREF: .data:0050570Co
		unicode	0, <UCOMISD>,0
aVucomisd:				; DATA XREF: .data:00505740o
		unicode	0, <VUCOMISD>,0
aUcomiss:				; DATA XREF: .data:00505774o
		unicode	0, <UCOMISS>,0
aVucomiss:				; DATA XREF: .data:005057A8o
		unicode	0, <VUCOMISS>,0
aXorpd:					; DATA XREF: .data:005057DCo
		unicode	0, <XORPD>,0
aVxorpd:				; DATA XREF: .data:00505810o
		unicode	0, <VXORPD>,0
aXorps:					; DATA XREF: .data:00505844o
		unicode	0, <XORPS>,0
aVxorps:				; DATA XREF: .data:00505878o
		unicode	0, <VXORPS>,0
aFxrstor:				; DATA XREF: .data:005058ACo
		unicode	0, <FXRSTOR>,0
aFxsave:				; DATA XREF: .data:005058E0o
		unicode	0, <FXSAVE>,0
aLfence:				; DATA XREF: .data:00505914o
		unicode	0, <LFENCE>,0
aPrefetcht0:				; DATA XREF: .data:00505948o
		unicode	0, <PREFETCHT0>,0
aPrefetcht1:				; DATA XREF: .data:0050597Co
		unicode	0, <PREFETCHT1>,0
aPrefetcht2:				; DATA XREF: .data:005059B0o
		unicode	0, <PREFETCHT2>,0
aPrefetchnta:				; DATA XREF: .data:005059E4o
		unicode	0, <PREFETCHNTA>,0
aPrefetch:				; DATA XREF: .data:00505A4Co
		unicode	0, <PREFETCH>,0
aPrefetchw:				; DATA XREF: .data:00505A80o
		unicode	0, <PREFETCHW>,0
aSfence:				; DATA XREF: .data:00505AB4o
		unicode	0, <SFENCE>,0
aBlendpd_1:				; DATA XREF: .data:00505AE8o
		unicode	0, <BLENDPD>,0
aVblendpd:				; DATA XREF: .data:00505B1Co
		unicode	0, <VBLENDPD>,0
aBlendps:				; DATA XREF: .data:00505B50o
		unicode	0, <BLENDPS>,0
aVblendps:				; DATA XREF: .data:00505B84o
		unicode	0, <VBLENDPS>,0
aBlendvpd:				; DATA XREF: .data:00505BB8o
					; .data:00505BECo
		unicode	0, <BLENDVPD>,0
aVblendvpd:				; DATA XREF: .data:00505C20o
		unicode	0, <VBLENDVPD>,0
aBlendvps:				; DATA XREF: .data:00505C54o
					; .data:00505C88o
		unicode	0, <BLENDVPS>,0
aVblendvps:				; DATA XREF: .data:00505CBCo
		unicode	0, <VBLENDVPS>,0
aCrc32:					; DATA XREF: .data:00505CF0o
					; .data:00505D24o
		unicode	0, <CRC32>,0
aDppd:					; DATA XREF: .data:00505D58o
		unicode	0, <DPPD>,0
aVdppd:					; DATA XREF: .data:00505D8Co
		unicode	0, <VDPPD>,0
aDpps:					; DATA XREF: .data:00505DC0o
		unicode	0, <DPPS>,0
aVdpps:					; DATA XREF: .data:00505DF4o
		unicode	0, <VDPPS>,0
aExtractps:				; DATA XREF: .data:00505E28o
		unicode	0, <EXTRACTPS>,0
aVextractps:				; DATA XREF: .data:00505E5Co
		unicode	0, <VEXTRACTPS>,0
aInsertps:				; DATA XREF: .data:00505E90o
		unicode	0, <INSERTPS>,0
aVinsertps:				; DATA XREF: .data:00505EC4o
		unicode	0, <VINSERTPS>,0
aMovntdqa:				; DATA XREF: .data:00505EF8o
		unicode	0, <MOVNTDQA>,0
aVmovntdqa:				; DATA XREF: .data:00505F2Co
		unicode	0, <VMOVNTDQA>,0
aMpsadbw:				; DATA XREF: .data:00505F60o
		unicode	0, <MPSADBW>,0
aVmpsadbw:				; DATA XREF: .data:00505F94o
		unicode	0, <VMPSADBW>,0
aPackusdw:				; DATA XREF: .data:00505FC8o
		unicode	0, <PACKUSDW>,0
aVpackusdw:				; DATA XREF: .data:00505FFCo
		unicode	0, <VPACKUSDW>,0
aPblendvb:				; DATA XREF: .data:00506030o
					; .data:00506064o
		unicode	0, <PBLENDVB>,0
aVpblendvb:				; DATA XREF: .data:00506098o
		unicode	0, <VPBLENDVB>,0
aPblendw:				; DATA XREF: .data:005060CCo
		unicode	0, <PBLENDW>,0
aVpblendw:				; DATA XREF: .data:00506100o
		unicode	0, <VPBLENDW>,0
aPclmullqlqdq:				; DATA XREF: .data:00506134o
		unicode	0, <PCLMULLQLQDQ>,0
aVpclmullqlqdq:				; DATA XREF: .data:00506168o
		unicode	0, <VPCLMULLQLQDQ>,0
aPclmulhqlqdq:				; DATA XREF: .data:0050619Co
		unicode	0, <PCLMULHQLQDQ>,0
aVpclmulhqlqdq:				; DATA XREF: .data:005061D0o
		unicode	0, <VPCLMULHQLQDQ>,0
aPclmullqhdq:				; DATA XREF: .data:00506204o
		unicode	0, <PCLMULLQHDQ>,0
aVpclmullqhdq:				; DATA XREF: .data:00506238o
		unicode	0, <VPCLMULLQHDQ>,0
aPclmulhqhdq:				; DATA XREF: .data:0050626Co
		unicode	0, <PCLMULHQHDQ>,0
aVpclmulhqhdq:				; DATA XREF: .data:005062A0o
		unicode	0, <VPCLMULHQHDQ>,0
aPclmulqdq:				; DATA XREF: .data:005062D4o
		unicode	0, <PCLMULQDQ>,0
aVpclmulqdq:				; DATA XREF: .data:00506308o
		unicode	0, <VPCLMULQDQ>,0
aPcmpeqq:				; DATA XREF: .data:0050633Co
		unicode	0, <PCMPEQQ>,0
aVpcmpeqq:				; DATA XREF: .data:00506370o
		unicode	0, <VPCMPEQQ>,0
aPcmpestri:				; DATA XREF: .data:005063A4o
		unicode	0, <PCMPESTRI>,0
aVpcmpestri:				; DATA XREF: .data:005063D8o
		unicode	0, <VPCMPESTRI>,0
aPcmpestrm:				; DATA XREF: .data:0050640Co
		unicode	0, <PCMPESTRM>,0
aVpcmpestrm:				; DATA XREF: .data:00506440o
		unicode	0, <VPCMPESTRM>,0
aPcmpistri:				; DATA XREF: .data:00506474o
		unicode	0, <PCMPISTRI>,0
aVpcmpistri:				; DATA XREF: .data:005064A8o
		unicode	0, <VPCMPISTRI>,0
aPcmpistrm:				; DATA XREF: .data:005064DCo
		unicode	0, <PCMPISTRM>,0
aVpcmpistrm:				; DATA XREF: .data:00506510o
		unicode	0, <VPCMPISTRM>,0
aPcmpgtq:				; DATA XREF: .data:00506544o
		unicode	0, <PCMPGTQ>,0
aVpcmpgtq:				; DATA XREF: .data:00506578o
		unicode	0, <VPCMPGTQ>,0
aPextrb:				; DATA XREF: .data:005065ACo
					; .data:005065E0o
		unicode	0, <PEXTRB>,0
aVpextrb:				; DATA XREF: .data:00506614o
					; .data:00506648o
		unicode	0, <VPEXTRB>,0
aPextrd:				; DATA XREF: .data:0050667Co
		unicode	0, <PEXTRD>,0
aVpextrd:				; DATA XREF: .data:005066B0o
		unicode	0, <VPEXTRD>,0
aPhminposuw:				; DATA XREF: .data:00506780o
		unicode	0, <PHMINPOSUW>,0
aVphminposuw:				; DATA XREF: .data:005067B4o
		unicode	0, <VPHMINPOSUW>,0
aPinsrb:				; DATA XREF: .data:005067E8o
					; .data:00506850o
		unicode	0, <PINSRB>,0
aVpinsrb:				; DATA XREF: .data:0050681Co
					; .data:00506884o
		unicode	0, <VPINSRB>,0
aPinsrd:				; DATA XREF: .data:005068B8o
		unicode	0, <PINSRD>,0
aVpinsrd:				; DATA XREF: .data:005068ECo
		unicode	0, <VPINSRD>,0
aPmaxsb:				; DATA XREF: .data:00506920o
		unicode	0, <PMAXSB>,0
aVpmaxsb:				; DATA XREF: .data:00506954o
		unicode	0, <VPMAXSB>,0
aPmaxsd:				; DATA XREF: .data:00506988o
		unicode	0, <PMAXSD>,0
aVpmaxsd:				; DATA XREF: .data:005069BCo
		unicode	0, <VPMAXSD>,0
aPmaxud:				; DATA XREF: .data:005069F0o
		unicode	0, <PMAXUD>,0
aVpmaxud:				; DATA XREF: .data:00506A24o
		unicode	0, <VPMAXUD>,0
aPmaxuw:				; DATA XREF: .data:00506A58o
		unicode	0, <PMAXUW>,0
aVpmaxuw:				; DATA XREF: .data:00506A8Co
		unicode	0, <VPMAXUW>,0
aPminsb:				; DATA XREF: .data:00506AC0o
		unicode	0, <PMINSB>,0
aVpminsb:				; DATA XREF: .data:00506AF4o
		unicode	0, <VPMINSB>,0
aPminsd:				; DATA XREF: .data:00506B28o
		unicode	0, <PMINSD>,0
aVpminsd:				; DATA XREF: .data:00506B5Co
		unicode	0, <VPMINSD>,0
aPminud:				; DATA XREF: .data:00506B90o
		unicode	0, <PMINUD>,0
aVpminud:				; DATA XREF: .data:00506BC4o
		unicode	0, <VPMINUD>,0
aPminuw:				; DATA XREF: .data:00506BF8o
		unicode	0, <PMINUW>,0
aVpminuw:				; DATA XREF: .data:00506C2Co
		unicode	0, <VPMINUW>,0
aPmovsxbw:				; DATA XREF: .data:00506C60o
		unicode	0, <PMOVSXBW>,0
aVpmovsxbw:				; DATA XREF: .data:00506C94o
		unicode	0, <VPMOVSXBW>,0
aPmovsxbd:				; DATA XREF: .data:00506CC8o
		unicode	0, <PMOVSXBD>,0
aVpmovsxbd:				; DATA XREF: .data:00506CFCo
		unicode	0, <VPMOVSXBD>,0
aPmovsxbq:				; DATA XREF: .data:00506D30o
		unicode	0, <PMOVSXBQ>,0
aVpmovsxbq:				; DATA XREF: .data:00506D64o
		unicode	0, <VPMOVSXBQ>,0
aPmovsxwd:				; DATA XREF: .data:00506D98o
		unicode	0, <PMOVSXWD>,0
aVpmovsxwd:				; DATA XREF: .data:00506DCCo
		unicode	0, <VPMOVSXWD>,0
aPmovsxwq:				; DATA XREF: .data:00506E00o
		unicode	0, <PMOVSXWQ>,0
aVpmovsxwq:				; DATA XREF: .data:00506E34o
		unicode	0, <VPMOVSXWQ>,0
aPmovsxdq:				; DATA XREF: .data:00506E68o
		unicode	0, <PMOVSXDQ>,0
aVpmovsxdq:				; DATA XREF: .data:00506E9Co
		unicode	0, <VPMOVSXDQ>,0
aPmovzxbw:				; DATA XREF: .data:00506ED0o
		unicode	0, <PMOVZXBW>,0
aVpmovzxbw:				; DATA XREF: .data:00506F04o
		unicode	0, <VPMOVZXBW>,0
aPmovzxbd:				; DATA XREF: .data:00506F38o
		unicode	0, <PMOVZXBD>,0
aVpmovzxbd:				; DATA XREF: .data:00506F6Co
		unicode	0, <VPMOVZXBD>,0
aPmovzxbq:				; DATA XREF: .data:00506FA0o
		unicode	0, <PMOVZXBQ>,0
aVpmovzxbq:				; DATA XREF: .data:00506FD4o
		unicode	0, <VPMOVZXBQ>,0
aPmovzxwd:				; DATA XREF: .data:00507008o
		unicode	0, <PMOVZXWD>,0
aVpmovzxwd:				; DATA XREF: .data:0050703Co
		unicode	0, <VPMOVZXWD>,0
aPmovzxwq:				; DATA XREF: .data:00507070o
		unicode	0, <PMOVZXWQ>,0
aVpmovzxwq:				; DATA XREF: .data:005070A4o
		unicode	0, <VPMOVZXWQ>,0
aPmovzxdq:				; DATA XREF: .data:005070D8o
		unicode	0, <PMOVZXDQ>,0
aVpmovzxdq:				; DATA XREF: .data:0050710Co
		unicode	0, <VPMOVZXDQ>,0
aPmuldq:				; DATA XREF: .data:00507140o
		unicode	0, <PMULDQ>,0
aVpmuldq:				; DATA XREF: .data:00507174o
		unicode	0, <VPMULDQ>,0
aPmulld:				; DATA XREF: .data:005071A8o
		unicode	0, <PMULLD>,0
aVpmulld:				; DATA XREF: .data:005071DCo
		unicode	0, <VPMULLD>,0
aPtest:					; DATA XREF: .data:00507210o
		unicode	0, <PTEST>,0
aVptest:				; DATA XREF: .data:00507244o
		unicode	0, <VPTEST>,0
aRoundpd:				; DATA XREF: .data:00507278o
		unicode	0, <ROUNDPD>,0
aVroundpd:				; DATA XREF: .data:005072ACo
		unicode	0, <VROUNDPD>,0
aRoundps:				; DATA XREF: .data:005072E0o
		unicode	0, <ROUNDPS>,0
aVroundps:				; DATA XREF: .data:00507314o
		unicode	0, <VROUNDPS>,0
aRoundsd:				; DATA XREF: .data:00507348o
		unicode	0, <ROUNDSD>,0
aVroundsd:				; DATA XREF: .data:0050737Co
		unicode	0, <VROUNDSD>,0
aRoundss:				; DATA XREF: .data:005073B0o
		unicode	0, <ROUNDSS>,0
aVroundss:				; DATA XREF: .data:005073E4o
		unicode	0, <VROUNDSS>,0
aPabsb:					; DATA XREF: .data:00507418o
					; .data:0050744Co
		unicode	0, <PABSB>,0
aVpabsb:				; DATA XREF: .data:00507480o
		unicode	0, <VPABSB>,0
aPabsw:					; DATA XREF: .data:005074B4o
					; .data:005074E8o
		unicode	0, <PABSW>,0
aVpabsw:				; DATA XREF: .data:0050751Co
		unicode	0, <VPABSW>,0
aPabsd:					; DATA XREF: .data:00507550o
					; .data:00507584o
		unicode	0, <PABSD>,0
aVpabsd:				; DATA XREF: .data:005075B8o
		unicode	0, <VPABSD>,0
aPalignr:				; DATA XREF: .data:005075ECo
					; .data:00507620o
		unicode	0, <PALIGNR>,0
aVpalignr:				; DATA XREF: .data:00507654o
		unicode	0, <VPALIGNR>,0
aPhaddw:				; DATA XREF: .data:00507688o
					; .data:005076BCo
		unicode	0, <PHADDW>,0
aVphaddw:				; DATA XREF: .data:005076F0o
		unicode	0, <VPHADDW>,0
aPhaddd:				; DATA XREF: .data:00507724o
					; .data:00507758o
		unicode	0, <PHADDD>,0
aVphaddd:				; DATA XREF: .data:0050778Co
		unicode	0, <VPHADDD>,0
aPhsubw:				; DATA XREF: .data:005077C0o
					; .data:005077F4o
		unicode	0, <PHSUBW>,0
aVphsubw:				; DATA XREF: .data:00507828o
		unicode	0, <VPHSUBW>,0
aPhsubd:				; DATA XREF: .data:0050785Co
					; .data:00507890o
		unicode	0, <PHSUBD>,0
aVphsubd:				; DATA XREF: .data:005078C4o
		unicode	0, <VPHSUBD>,0
aPhaddsw:				; DATA XREF: .data:005078F8o
					; .data:0050792Co
		unicode	0, <PHADDSW>,0
aVphaddsw:				; DATA XREF: .data:00507960o
		unicode	0, <VPHADDSW>,0
aPhsubsw:				; DATA XREF: .data:00507994o
					; .data:005079C8o
		unicode	0, <PHSUBSW>,0
aVphsubsw:				; DATA XREF: .data:005079FCo
		unicode	0, <VPHSUBSW>,0
aPmaddubsw:				; DATA XREF: .data:00507A30o
					; .data:00507A64o
		unicode	0, <PMADDUBSW>,0
aVpmaddubsw:				; DATA XREF: .data:00507A98o
		unicode	0, <VPMADDUBSW>,0
aPmulhrsw:				; DATA XREF: .data:00507ACCo
					; .data:00507B00o
		unicode	0, <PMULHRSW>,0
aVpmulhrsw:				; DATA XREF: .data:00507B34o
		unicode	0, <VPMULHRSW>,0
aPshufb:				; DATA XREF: .data:00507B68o
					; .data:00507B9Co
		unicode	0, <PSHUFB>,0
aVpshufb:				; DATA XREF: .data:00507BD0o
		unicode	0, <VPSHUFB>,0
aPsignb:				; DATA XREF: .data:00507C04o
					; .data:00507C38o
		unicode	0, <PSIGNB>,0
aVpsignb:				; DATA XREF: .data:00507C6Co
		unicode	0, <VPSIGNB>,0
aPsignw:				; DATA XREF: .data:00507CA0o
					; .data:00507CD4o
		unicode	0, <PSIGNW>,0
aVpsignw:				; DATA XREF: .data:00507D08o
		unicode	0, <VPSIGNW>,0
aPsignd:				; DATA XREF: .data:00507D3Co
					; .data:00507D70o
		unicode	0, <PSIGND>,0
aVpsignd:				; DATA XREF: .data:00507DA4o
		unicode	0, <VPSIGND>,0
aVbroadcastss:				; DATA XREF: .data:00507DD8o
		unicode	0, <VBROADCASTSS>,0
aVbroadcastsd:				; DATA XREF: .data:00507E0Co
		unicode	0, <VBROADCASTSD>,0
aVbroadcastf128:			; DATA XREF: .data:00507E40o
		unicode	0, <VBROADCASTF128>,0
aVextractf128:				; DATA XREF: .data:00507E74o
		unicode	0, <VEXTRACTF128>,0
aVinsertf128:				; DATA XREF: .data:00507EA8o
		unicode	0, <VINSERTF128>,0
aVmaskmovps:				; DATA XREF: .data:00507EDCo
					; .data:00507F10o
		unicode	0, <VMASKMOVPS>,0
aVmaskmovpd:				; DATA XREF: .data:00507F44o
					; .data:00507F78o
		unicode	0, <VMASKMOVPD>,0
aVpermilpd:				; DATA XREF: .data:00507FACo
					; .data:00507FE0o
		unicode	0, <VPERMILPD>,0
aVpermilps:				; DATA XREF: .data:00508014o
					; .data:00508048o
		unicode	0, <VPERMILPS>,0
aVperm2f128:				; DATA XREF: .data:0050807Co
		unicode	0, <VPERM2F128>,0
aVtestps:				; DATA XREF: .data:005080B0o
		unicode	0, <VTESTPS>,0
aVtestpd:				; DATA XREF: .data:005080E4o
		unicode	0, <VTESTPD>,0
aVzeroall:				; DATA XREF: .data:00508118o
		unicode	0, <VZEROALL>,0
aVzeroupper:				; DATA XREF: .data:0050814Co
		unicode	0, <VZEROUPPER>,0
aAesdec:				; DATA XREF: .data:00508180o
		unicode	0, <AESDEC>,0
aVaesdec:				; DATA XREF: .data:005081B4o
		unicode	0, <VAESDEC>,0
aAesdeclast:				; DATA XREF: .data:005081E8o
		unicode	0, <AESDECLAST>,0
aVaesdeclast:				; DATA XREF: .data:0050821Co
		unicode	0, <VAESDECLAST>,0
aAesenc:				; DATA XREF: .data:00508250o
		unicode	0, <AESENC>,0
aVaesenc:				; DATA XREF: .data:00508284o
		unicode	0, <VAESENC>,0
aAesenclast:				; DATA XREF: .data:005082B8o
		unicode	0, <AESENCLAST>,0
aVaesenclast:				; DATA XREF: .data:005082ECo
		unicode	0, <VAESENCLAST>,0
aAesimc:				; DATA XREF: .data:00508320o
		unicode	0, <AESIMC>,0
aVaesimc:				; DATA XREF: .data:00508354o
		unicode	0, <VAESIMC>,0
aAeskeygenass_0:			; DATA XREF: .data:00508388o
		unicode	0, <AESKEYGENASSIST>,0
aVaeskeygenassi:			; DATA XREF: .data:005083BCo
		unicode	0, <VAESKEYGENASSIST>,0
aVcvtph2ps:				; DATA XREF: .data:005083F0o
		unicode	0, <VCVTPH2PS>,0
aVcvtps2ph:				; DATA XREF: .data:00508424o
		unicode	0, <VCVTPS2PH>,0
aLzcnt:					; DATA XREF: .data:00508458o
		unicode	0, <LZCNT>,0
aPopcnt:				; DATA XREF: .data:0050848Co
		unicode	0, <POPCNT>,0
aExtrq:					; DATA XREF: .data:005084C0o
					; .data:005084F4o
		unicode	0, <EXTRQ>,0
aInsertq:				; DATA XREF: .data:00508528o
					; .data:0050855Co
		unicode	0, <INSERTQ>,0
aMovntsd:				; DATA XREF: .data:00508590o
		unicode	0, <MOVNTSD>,0
aMovntss:				; DATA XREF: .data:005085C4o
		unicode	0, <MOVNTSS>,0
aInvept:				; DATA XREF: .data:005085F8o
		unicode	0, <INVEPT>,0
aInvvpid:				; DATA XREF: .data:0050862Co
		unicode	0, <INVVPID>,0
aVmcall:				; DATA XREF: .data:00508660o
		unicode	0, <VMCALL>,0
aVmclear:				; DATA XREF: .data:00508694o
		unicode	0, <VMCLEAR>,0
aVmlaunch:				; DATA XREF: .data:005086C8o
		unicode	0, <VMLAUNCH>,0
aVmfunc:				; DATA XREF: .data:005086FCo
		unicode	0, <VMFUNC>,0
aXend:					; DATA XREF: .data:00508730o
		unicode	0, <XEND>,0
aXtest:					; DATA XREF: .data:00508764o
		unicode	0, <XTEST>,0
aVmresume:				; DATA XREF: .data:00508798o
		unicode	0, <VMRESUME>,0
aVmptrld:				; DATA XREF: .data:005087CCo
		unicode	0, <VMPTRLD>,0
aVmptrst:				; DATA XREF: .data:00508800o
		unicode	0, <VMPTRST>,0
aVmread:				; DATA XREF: .data:00508834o
		unicode	0, <VMREAD>,0
aVmwrite:				; DATA XREF: .data:00508868o
		unicode	0, <VMWRITE>,0
aVmxoff:				; DATA XREF: .data:0050889Co
		unicode	0, <VMXOFF>,0
aVmxon:					; DATA XREF: .data:005088D0o
		unicode	0, <VMXON>,0
aGetsec:				; DATA XREF: .data:00508904o
		unicode	0, <GETSEC>,0
aFemms:					; DATA XREF: .data:00508938o
		unicode	0, <FEMMS>,0
aPavgusb:				; DATA XREF: .data:0050896Co
		unicode	0, <PAVGUSB>,0
aPf2id:					; DATA XREF: .data:005089A0o
		unicode	0, <PF2ID>,0
aPfacc:					; DATA XREF: .data:005089D4o
		unicode	0, <PFACC>,0
aPfadd:					; DATA XREF: .data:00508A08o
		unicode	0, <PFADD>,0
aPfcmpeq:				; DATA XREF: .data:00508A3Co
		unicode	0, <PFCMPEQ>,0
aPfcmpge:				; DATA XREF: .data:00508A70o
		unicode	0, <PFCMPGE>,0
aPfcmpgt:				; DATA XREF: .data:00508AA4o
		unicode	0, <PFCMPGT>,0
aPfmax:					; DATA XREF: .data:00508AD8o
		unicode	0, <PFMAX>,0
aPfmin:					; DATA XREF: .data:00508B0Co
		unicode	0, <PFMIN>,0
aPfmul:					; DATA XREF: .data:00508B40o
		unicode	0, <PFMUL>,0
aPfrcp:					; DATA XREF: .data:00508B74o
		unicode	0, <PFRCP>,0
aPfrcpit1:				; DATA XREF: .data:00508BA8o
		unicode	0, <PFRCPIT1>,0
aPfrcpit2:				; DATA XREF: .data:00508BDCo
		unicode	0, <PFRCPIT2>,0
aPfrsqit1:				; DATA XREF: .data:00508C10o
		unicode	0, <PFRSQIT1>,0
aPfrsqrt:				; DATA XREF: .data:00508C44o
		unicode	0, <PFRSQRT>,0
aPfsub:					; DATA XREF: .data:00508C78o
		unicode	0, <PFSUB>,0
aPfsubr:				; DATA XREF: .data:00508CACo
		unicode	0, <PFSUBR>,0
aPi2fd:					; DATA XREF: .data:00508CE0o
		unicode	0, <PI2FD>,0
aPmulhrw:				; DATA XREF: .data:00508D14o
		unicode	0, <PMULHRW>,0
aPf2iw:					; DATA XREF: .data:00508D48o
		unicode	0, <PF2IW>,0
aPfnacc:				; DATA XREF: .data:00508D7Co
		unicode	0, <PFNACC>,0
aPfpnacc:				; DATA XREF: .data:00508DB0o
		unicode	0, <PFPNACC>,0
aPi2fw:					; DATA XREF: .data:00508DE4o
		unicode	0, <PI2FW>,0
aPswapd:				; DATA XREF: .data:00508E18o
		unicode	0, <PSWAPD>,0
aSyscall:				; DATA XREF: .data:00508E4Co
		unicode	0, <SYSCALL>,0
aSysret:				; DATA XREF: .data:00508E80o
		unicode	0, <SYSRET>,0
aClgi:					; DATA XREF: .data:00508EB4o
		unicode	0, <CLGI>,0
aStgi:					; DATA XREF: .data:00508EE8o
		unicode	0, <STGI>,0
aInvlpga:				; DATA XREF: .data:00508F1Co
		unicode	0, <INVLPGA>,0
aSkinit:				; DATA XREF: .data:00508F50o
		unicode	0, <SKINIT>,0
aVmload:				; DATA XREF: .data:00508F84o
		unicode	0, <VMLOAD>,0
aVmmcall:				; DATA XREF: .data:00508FB8o
		unicode	0, <VMMCALL>,0
aVmrun:					; DATA XREF: .data:00508FECo
		unicode	0, <VMRUN>,0
aVmsave:				; DATA XREF: .data:00509020o
		unicode	0, <VMSAVE>,0
aEs_0:					; DATA XREF: .data:00509054o
		unicode	0, <ES:>,0
aCs:					; DATA XREF: .data:00509088o
		unicode	0, <CS:>,0
aSs:					; DATA XREF: .data:005090BCo
		unicode	0, <SS:>,0
aDs:					; DATA XREF: .data:005090F0o
		unicode	0, <DS:>,0
aFs:					; DATA XREF: .data:00509124o
		unicode	0, <FS:>,0
aGs:					; DATA XREF: .data:00509158o
		unicode	0, <GS:>,0
aDatasize:				; DATA XREF: .data:0050918Co
		unicode	0, <DATASIZE:>,0
aAddrsize:				; DATA XREF: .data:005091C0o
		unicode	0, <ADDRSIZE:>,0
aLock:					; DATA XREF: .data:005091F4o
		unicode	0, <LOCK>,0
aRepne:					; DATA XREF: .data:00509228o
		unicode	0, <REPNE>,0
aRepnz:					; DATA XREF: .data:0050925Co
		unicode	0, <REPNZ>,0
aRep_4:					; DATA XREF: .data:00509290o
		unicode	0, <REP>,0
aRepe_1:				; DATA XREF: .data:005092C4o
		unicode	0, <REPE>,0
aRepz_1:				; DATA XREF: .data:005092F8o
		unicode	0, <REPZ>,0
aJcc:					; DATA XREF: .data:0050932Co
					; .data:00509360o
		unicode	0, <JCC>,0
aSetcc:					; DATA XREF: .data:00509394o
		unicode	0, <SETCC>,0
aCmovcc:				; DATA XREF: .data:005093C8o
		unicode	0, <CMOVCC>,0
aFcmovcc:				; DATA XREF: .data:005093FCo
					; .data:00509430o
		unicode	0, <FCMOVCC>,0
		
_data		ends
		