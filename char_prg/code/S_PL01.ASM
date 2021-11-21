;Zangiev Programming
#symbol loc_8C054508 0x8C054508
#symbol loc_8C054B34 0x8C054B34
#symbol loc_8C05496C 0x8C05496C
#symbol loc_8C054D04 0x8C054D04
#symbol loc_8C053E00 0x8C053E00
#symbol loc_8C0542E0 0x8C0542E0
#symbol loc_8C055CF6 0x8C055CF6
#symbol loc_8C0559DA 0x8C0559DA
#symbol loc_8C0530D8 0x8C0530D8
#symbol loc_8C054E58 0x8C054E58
#symbol loc_8C055C3A 0x8C055C3A
#symbol loc_8C0553AC 0x8C0553AC
#symbol loc_8C054DA0 0x8C054DA0
#symbol loc_8C045790 0x8C045790
#symbol loc_8C0522E0 0x8C0522E0
#symbol loc_8C054D1C 0x8C054D1C
#symbol loc_8C04223A 0x8C04223A
#symbol loc_8C2896B0 0x8C2896B0
#symbol loc_8C034E8C 0x8C034E8C
#symbol loc_8C052B4C 0x8C052B4C
#symbol loc_8C052DAC 0x8C052DAC
#symbol loc_8C034DEE 0x8C034DEE
#symbol loc_8C26A518 0x8C26A518
#symbol loc_8C051648 0x8C051648
#symbol loc_8C042008 0x8C042008
#symbol loc_8C052C84 0x8C052C84
#symbol loc_8C052CE2 0x8C052CE2
#symbol loc_8C05176E 0x8C05176E
#symbol loc_8C04FEA8 0x8C04FEA8
#symbol loc_8C050048 0x8C050048
#symbol loc_8C050084 0x8C050084
#symbol loc_8C04FF88 0x8C04FF88
#symbol loc_8C0511E2 0x8C0511E2
#symbol loc_8C056DE4 0x8C056DE4
#symbol loc_8C26823C 0x8C26823C
#symbol loc_8C046C8A 0x8C046C8A
#symbol loc_8C05218A 0x8C05218A
#symbol loc_8C05115A 0x8C05115A
#symbol loc_8C060B40 0x8C060B40
#symbol loc_8C0457E0 0x8C0457E0
#symbol loc_8C02FEC4 0x8C02FEC4
#symbol loc_8C103660 0x8C103660
#symbol loc_8C0523D8 0x8C0523D8
#symbol loc_8C055D2E 0x8C055D2E
#symbol loc_8C0511B4 0x8C0511B4
#symbol loc_8C059A44 0x8C059A44
#symbol loc_8C0423FC 0x8C0423FC
#symbol loc_8C05933C 0x8C05933C
#symbol loc_8C050834 0x8C050834
#symbol loc_8C0FDAB6 0x8C0FDAB6
#symbol loc_8C1025CA 0x8C1025CA
#symbol loc_8C129128 0x8C129128
#symbol loc_8C03544C 0x8C03544C
#symbol loc_8C10235C 0x8C10235C
#symbol loc_8C035162 0x8C035162
#symbol loc_8C053082 0x8C053082
#symbol loc_8C05248E 0x8C05248E
#symbol loc_8C060D08 0x8C060D08
#symbol loc_8C050EA4 0x8C050EA4
#symbol loc_8C051854 0x8C051854
#symbol loc_8C056F2A 0x8C056F2A
#symbol loc_8C0FDB4E 0x8C0FDB4E
#symbol loc_8C050682 0x8C050682
#symbol loc_8C050610 0x8C050610
#symbol loc_8C050552 0x8C050552
#symbol loc_8C05064E 0x8C05064E
#symbol loc_8C055D54 0x8C055D54
#symbol loc_8C11E730 0x8C11E730
#symbol loc_8C0532A8 0x8C0532A8
#symbol loc_8C04CC1C 0x8C04CC1C

;==============================================
;Zangief
;==============================================
start_CE30000:
	mov.w @(loc_CE300D2,pc),r0 ; r0 set to 0x428
	mov 0x70,r5 ; r5 set to 0x70
	mov.l @(loc_CE300D8_to_loc_CE36D18_to_loc_CE30912,pc),r7 ; r7 set to 0xCE36D18
	mov.l @(r0,r4),r6
	mov 0x00,r4 ; r4 set to 0x00

loc_CE3000A:
	mov r4,r0 ; r0 set to 0x00
	nop
	add 0x04,r4 ; r4 set to 0x04
	mov.l @(r0,r7),r3
	cmp/hs r5,r4
	bf/s loc_CE3000A
	mov.l r3,@(r0,r6)
	rts
	nop

;==============================================
loc_CE3001C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE300DC_to_loc_8C054508,pc),r3 ; r3 set to 0x8C054508
	jsr @r3
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bt loc_CE30030
	bra loc_CE30172
	nop

loc_CE30030:
	mov.l @(loc_CE300E0_to_loc_8C054B34,pc),r3 ; r3 set to 0x8C054B34
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE30040
	bra loc_CE30172
	nop

loc_CE30040:
	mov.l @(loc_CE300E4_to_loc_8C05496C,pc),r3 ; r3 set to 0x8C05496C
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE30050
	bra loc_CE30172
	nop

loc_CE30050:
	mov.l @(loc_CE300E8_to_loc_8C054D04,pc),r3 ; r3 set to 0x8C054D04
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE30060
	bra loc_CE30172
	nop

loc_CE30060:
	mov.w @(loc_CE300D4,pc),r0 ; r0 set to 0x202
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_CE300EC
	bsr loc_CE30598
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0x02
	tst r0,r0
	bt loc_CE30076
	bra loc_CE30172
	nop

loc_CE30076:
	bsr loc_CE3050C
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE30084
	bra loc_CE30172
	nop

loc_CE30084:
	bsr loc_CE30180
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE30092
	bra loc_CE30172
	nop

loc_CE30092:
	bsr loc_CE3021C
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30172
	bsr loc_CE3041E
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30172
	bsr loc_CE30644
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30172
	bsr loc_CE3049C
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30172
	bsr loc_CE303D8
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30172
	bsr loc_CE30552
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30172
	bra loc_CE30146
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE300D2:
	#data 0x0428
loc_CE300D4:
	#data 0x0202
	#align4

loc_CE300D8_to_loc_CE36D18_to_loc_CE30912:
	#data loc_CE36D18_to_loc_CE30912
loc_CE300DC_to_loc_8C054508:
	#data loc_8C054508
loc_CE300E0_to_loc_8C054B34:
	#data loc_8C054B34
loc_CE300E4_to_loc_8C05496C:
	#data loc_8C05496C
loc_CE300E8_to_loc_8C054D04:
	#data loc_8C054D04

;----------------------------------------------
loc_CE300EC:
	bsr loc_CE30716
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30172
	bsr loc_CE3050C
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30172
	bsr loc_CE302D6
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30172
	bsr loc_CE3034C
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30172
	bsr loc_CE3041E
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30172
	bsr loc_CE3068A
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30172
	bsr loc_CE3049C
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30172
	bsr loc_CE30552
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30172
	bsr loc_CE306D0
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30172

loc_CE30146:
	bsr loc_CE30784
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30172
	bsr loc_CE307C2
	mov r14,r4
	tst r0,r0
	bf loc_CE30172
	bsr loc_CE305E0
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30172
	mov.l @(loc_CE30178_to_loc_8C053E00,pc),r2 ; r2 set to 0x8C053E00, r2 set to 0x8C053E00
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE3017C_to_loc_8C0542E0,pc),r3 ; r3 set to 0x8C0542E0, r3 set to 0x8C0542E0
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE30172:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_CE30178_to_loc_8C053E00:
	#data loc_8C053E00
loc_CE3017C_to_loc_8C0542E0:
	#data loc_8C0542E0

;==============================================
loc_CE30180:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_CE3027A,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	mov.w @(loc_CE3027C,pc),r5 ; r5 set to 0x300
	mov 0x00,r7 ; r7 set to 0x00
	add r14,r3 ; r3 ??? bc r14 is ???
	mov r15,r6
	mov.l r3,@(0x04,r15)
	mov.l @(loc_CE3028C_to_loc_8C055CF6,pc),r3 ; r3 set to 0x8C055CF6
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE301D8
	mov.l @(loc_CE30290_to_loc_8C0559DA,pc),r2 ; r2 set to 0x8C0559DA
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE301D8
	mov.w @(loc_CE3027E,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_CE301CC
	mov.w @(loc_CE30280,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
	tst r2,r2
	bf loc_CE301E2
	mov.w @(loc_CE30282,pc),r0 ; r0 set to 0x1D4
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_CE301D8
	mov 0x01,r3 ; r3 set to 0x01
	bra loc_CE301E2
	mov.b r3,@(r0,r14)

loc_CE301CC:
	mov.w @(0xB4,PC),r0
	mov.w @(0xB4,PC),r3
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r3,r1
	bt loc_ce301e2

loc_CE301D8:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE301E2:
	mov.w @(0xA2,PC),r0
	mov 0x00,r4
	mov.l @(0x4,r15),r3
	mov.w @(r0,r14),r2
	mov.w r2,@r3
	mov r4,r0
	nop 
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov.w @(0x84,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce30206
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)

loc_CE30206:
	mov.w @(0x80,PC),r0
	mov 0x15,r5
	mov.l @(0x88,PC),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3021C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_CE3027A,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	mov 0x60,r5 ; r5 set to 0x60
	mov r15,r6
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@(0x04,r15)
	mov 0x01,r7 ; r7 set to 0x01
	mov.l @(loc_CE3028C_to_loc_8C055CF6,pc),r3 ; r3 set to 0x8C055CF6
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE30276
	mov.l @(loc_CE30290_to_loc_8C0559DA,pc),r2 ; r2 set to 0x8C0559DA
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE30276
	mov.w @(loc_CE3027E,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf/s loc_CE3026A
	mov 0x01,r13 ; r13 set to 0x01
	mov.w @(loc_CE30280,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
	tst r2,r2
	bf loc_CE30298
	mov.w @(loc_CE30282,pc),r0 ; r0 set to 0x1D4
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_CE30276
	bra loc_CE30298
	mov.b r13,@(r0,r14)

loc_CE3026A:
	mov.w @(0x16,PC),r0
	mov.w @(0x16,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_ce30298

loc_CE30276:
	bra loc_CE302CC
	mov 0x00,r0

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE3027A:
	#data 0x02A4
loc_CE3027C:
	#data 0x0300
loc_CE3027E:
	#data 0x01F9
loc_CE30280:
	#data 0x01FC
loc_CE30282:
	#data 0x01D4
loc_ce30284:
	#data 0x034A
loc_ce30286:
	#data 0x2000
loc_ce30288:
	#data 0x01FA
loc_ce3028a:
	#data 0x01E9
	#align4

loc_CE3028C_to_loc_8C055CF6:
	#data loc_8C055CF6
loc_CE30290_to_loc_8C0559DA:
	#data loc_8C0559DA
loc_CE30294:
	#data loc_8C0530D8

;----------------------------------------------
loc_CE30298:
	mov.w @(0x124,PC),r0
	mov 0x00,r4
	mov.l @(0x4,r15),r3
	mov.w @(r0,r14),r2
	mov.w r2,@r3
	mov r4,r0
	nop 
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov.w @(0x112,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce302bc
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)

loc_CE302BC:
	mov.w @(0x104,PC),r0
	mov 0x15,r5
	mov.l @(0x108,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov r13,r0
	nop 

loc_CE302CC:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE302D6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0xE6,PC),r3
	mov r4,r14
	mov.w @(0xE4,PC),r5
	mov 0x00,r7
	add r14,r3
	mov r15,r6
	mov.l r3,@(0x4,r15)
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30318
	mov.l @(0xDC,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30318
	mov.w @(0xBC,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce30318
	mov.w @(0xB0,PC),r0
	mov.w @(0xB8,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_ce30322

loc_CE30318:
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_CE30322:
	mov.w @(0x9A,PC),r0
	mov 0x00,r4
	mov.l @(0x4,r15),r3
	mov.w @(r0,r14),r2
	mov.w r2,@r3
	mov r4,r0
	nop 
	mov.b r0,@(0x5,r14)
	mov 0x15,r5
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov.w @(0x88,PC),r0
	mov.l @(0x90,PC),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3034C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0x70,PC),r3
	mov r4,r14
	mov 0x60,r5
	mov r15,r6
	add r14,r3
	mov.l r3,@(0x4,r15)
	mov 0x01,r7
	mov.l @(0x6C,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce3038e
	mov.l @(0x64,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce3038e
	mov.w @(0x46,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce3038e
	mov.w @(0x3A,PC),r0
	mov.w @(0x42,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_ce30398

loc_CE3038E:
	mov 0x00,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE30398:
	mov.w @(0x24,PC),r0
	mov 0x15,r5
	mov.l @(0x4,r15),r3
	mov.w @(r0,r14),r2
	mov 0x00,r0
	mov.w r2,@r3
	mov 0x01,r3
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov.w @(0x14,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x18,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	add 0x08,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce303c0:
	#data 0x01FA
loc_ce303c2:
	#data 0x01F9
loc_ce303c4:
	#data 0x01E9
loc_ce303c6:
	#data 0x02A4
loc_ce303c8:
	#data 0x0300
loc_ce303ca:
	#data 0x2000
	#align4

loc_ce303cc:
	#data loc_8C0530D8
loc_ce303d0:
	#data loc_8C055CF6
loc_ce303d4:
	#data loc_8C0559DA

;==============================================
loc_CE303D8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_CE304F0_to_loc_CE36C8C,pc),r5 ; r5 set to 0xCE36C8C
	mov.w @(loc_CE304E2,pc),r6 ; r6 set to 0x36C
	mov.l @(loc_CE304F4_to_loc_8C054E58,pc),r3 ; r3 set to 0x8C054E58
	jsr @r3
	add r14,r6 ; r6 ??? bc r14 is ???
	extu.b r0,r0
	tst r0,r0
	bf loc_CE303F6
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.l @r15+,r14

loc_CE303F6:
	mov.w @(loc_CE304E2,pc),r5 ; r5 set to 0x36C
	mov.l @(loc_CE304F8_to_loc_8C055C3A,pc),r3 ; r3 set to 0x8C055C3A
	add r14,r5 ; r5 ??? bc r14 is ???
	jsr @r3
	mov r14,r4
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	mov 0x02,r3 ; r3 set to 0x02
	mov.b r0,@(0x07,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x06,r14)
	mov.w @(loc_CE304E4,pc),r0 ; r0 set to 0x1E9
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE304FC_to_loc_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8
	jsr @r3
	mov r14,r4
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3041E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xD8,PC),r5
	mov.w @(0xBC,PC),r6
	mov.l @(0xD8,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce3044e
	mov.w @(0xB0,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce3045a
	mov.w @(0xA8,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce3045a
	mov.w @(0xA2,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce30456

loc_CE3044E:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE30456:
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_CE3045A:
	mov.w @(0x88,PC),r5
	mov.l @(0x98,PC),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r4
	mov r4,r0
	nop 
	mov.b r0,@(0x5,r14)
	mov.w @(0x78,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce3047a
	bra loc_ce3047e
	mov 0x01,r0

loc_CE3047A:
	mov r4,r0
	nop 

loc_CE3047E:
	mov.b r0,@(0x6,r14)
	mov r4,r0
	nop 
	mov.b r0,@(0x7,r14)
	mov 0x03,r3
	mov.w @(0x58,PC),r0
	mov 0x15,r5
	mov.b r3,@(r0,r14)
	mov.l @(0x6C,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3049C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_CE30508_to_loc_CE36CA6,pc),r5 ; r5 set to 0xCE36CA6
	mov.w @(loc_CE304EE,pc),r6 ; r6 set to 0x37C
	mov.l @(loc_CE304F4_to_loc_8C054E58,pc),r3 ; r3 set to 0x8C054E58
	jsr @r3
	add r14,r6 ; r6 ??? bc r14 is ???
	extu.b r0,r0
	tst r0,r0
	bf loc_CE304BA
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.l @r15+,r14

;==============================================
loc_CE304BA:
	mov.w @(loc_CE304EE,pc),r5 ; r5 set to 0x37C
	mov.l @(loc_CE304F8_to_loc_8C055C3A,pc),r3 ; r3 set to 0x8C055C3A
	add r14,r5 ; r5 ??? bc r14 is ???
	jsr @r3
	mov r14,r4
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	mov 0x04,r3 ; r3 set to 0x04
	mov.b r0,@(0x07,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x06,r14)
	mov.w @(loc_CE304E4,pc),r0 ; r0 set to 0x1E9
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE304FC_to_loc_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8
	jsr @r3
	mov r14,r4
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE304E2:
	#data 0x036C
loc_CE304E4:
	#data 0x01E9
loc_CE304E6:
	#data 0x0374
loc_CE304E8:
	#data 0x01F9
loc_CE304Ea:
	#data 0x01FC
loc_CE304Ec:
	#data 0x01D4
loc_CE304EE:
	#data 0x037C
	#align4

loc_CE304F0_to_loc_CE36C8C:
	#data loc_CE36C8C
loc_CE304F4_to_loc_8C054E58:
	#data loc_8C054E58
loc_CE304F8_to_loc_8C055C3A:
	#data loc_8C055C3A
loc_CE304FC_to_loc_8C0530D8:
	#data loc_8C0530D8
loc_CE30500_to_loc_CE36C9C:
	#data loc_CE36C9C
loc_CE30504:
	#data loc_8C0553AC
loc_CE30508_to_loc_CE36CA6:
	#data loc_CE36CA6

;==============================================
loc_CE3050C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x110,PC),r5
	mov.w @(0x100,PC),r6
	mov.l @(0x110,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce3052c
	mov.w @(0xF4,PC),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce30534

loc_CE3052C:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE30534:
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x05,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0xD8,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE30552:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_CE30630_to_loc_CE36CC4,pc),r5 ; r5 set to 0xCE36CC4
	mov.w @(loc_CE3061E,pc),r6 ; r6 set to 0x38C
	mov.l @(loc_CE30634_to_loc_8C054E58,pc),r3 ; r3 set to 0x8C054E58
	jsr @r3
	add r14,r6 ; r6 ??? bc r14 is ???
	extu.b r0,r0
	tst r0,r0
	bf loc_CE30570
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.l @r15+,r14

;==============================================
loc_CE30570:
	mov.w @(loc_CE3061E,pc),r5 ; r5 set to 0x38C
	mov.l @(loc_CE30638_to_loc_8C055C3A,pc),r3 ; r3 set to 0x8C055C3A
	add r14,r5 ; r5 ??? bc r14 is ???
	jsr @r3
	mov r14,r4
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	mov 0x06,r3 ; r3 set to 0x06
	mov.b r0,@(0x07,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x06,r14)
	mov.w @(loc_CE3061C,pc),r0 ; r0 set to 0x1E9
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE3062C_to_loc_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8
	jsr @r3
	mov r14,r4
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE30598:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x9C,PC),r5
	mov.w @(0x7C,PC),r6
	mov.l @(0x84,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce305ba
	mov.w @(0x68,PC),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	mov 0x03,r2
	cmp/ge r2,r3
	bt loc_ce305c2

loc_CE305BA:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE305C2:
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x11,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x4A,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x58,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE305E0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_CE30640_to_loc_8C054DA0,pc),r3 ; r3 set to 0x8C054DA0
	jsr @r3
	mov 0x09,r5 ; r5 set to 0x09
	extu.b r0,r0
	tst r0,r0
	bf loc_CE305FA
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.l @r15+,r14

;==============================================
loc_CE305FA:
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	mov 0x09,r3 ; r3 set to 0x09
	mov.b r0,@(0x07,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x06,r14)
	mov.w @(loc_CE3061C,pc),r0 ; r0 set to 0x1E9
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE3062C_to_loc_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8
	jsr @r3
	mov r14,r4
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE30618:
	#data 0x0384
loc_CE3061a:
	#data 0x040C
loc_CE3061C:
	#data 0x01E9
loc_CE3061E:
	#data 0x038C
loc_CE30620:
	#data 0x0394
	#align4

loc_CE30624_to_loc_CE36CBA:
	#data loc_CE36CBA
loc_CE30628:
	#data loc_8C0553AC
loc_CE3062C_to_loc_8C0530D8:
	#data loc_8C0530D8
loc_CE30630_to_loc_CE36CC4:
	#data loc_CE36CC4
loc_CE30634_to_loc_8C054E58:
	#data loc_8C054E58
loc_CE30638_to_loc_8C055C3A:
	#data loc_8C055C3A
loc_CE3063C_to_loc_CE36CD4:
	#data loc_CE36CD4
loc_CE30640_to_loc_8C054DA0:
	#data loc_8C054DA0

;==============================================
loc_CE30644:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x11C,PC),r5
	mov.w @(0x10C,PC),r6
	mov.l @(0x11C,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30664
	mov.w @(0x100,PC),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce3066c

loc_CE30664:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3066C:
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x12,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0xE4,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0xF0,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3068A:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xD4,PC),r5
	mov.w @(0xC6,PC),r6
	mov.l @(0xD4,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce306aa
	mov.w @(0xBA,PC),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce306b2

loc_CE306AA:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

loc_CE306B2:
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x12,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x9E,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE306D0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_CE30774_to_loc_CE36CEE,pc),r5 ; r5 set to 0xCE36CEE
	mov.w @(loc_CE30762,pc),r6 ; r6 set to 0x3A4
	mov.l @(loc_CE3076C_to_loc_8C054E58,pc),r3 ; r3 set to 0x8C054E58
	jsr @r3
	add r14,r6 ; r6 ??? bc r14 is ???
	extu.b r0,r0
	tst r0,r0
	bf loc_CE306EE
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.l @r15+,r14

loc_CE306EE:
	mov.w @(loc_CE30762,pc),r5 ; r5 set to 0x3A4
	mov.l @(loc_CE30778_to_loc_8C055C3A,pc),r3 ; r3 set to 0x8C055C3A
	add r14,r5 ; r5 ??? bc r14 is ???
	jsr @r3
	mov r14,r4
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	mov 0x13,r3 ; r3 set to 0x13
	mov.b r0,@(0x07,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x06,r14)
	mov.w @(loc_CE30760,pc),r0 ; r0 set to 0x1E9
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE30770_to_loc_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8
	jsr @r3
	mov r14,r4
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE30716:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x5C,PC),r5
	mov.w @(0x42,PC),r6
	mov.l @(0x5C,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30736
	mov.w @(0x2E,PC),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce3073e


loc_CE30736:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14


loc_CE3073E:
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x14,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x12,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x20,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_ce3075c:
	#data 0x039C
loc_ce3075e:
	#data 0x040C
loc_CE30760:
	#data 0x01E9
loc_CE30762:
	#data 0x03A4
loc_CE30764:
	#data 0x03AC
	#align4

loc_CE30768_to_loc_CE36CDE:
	#data loc_CE36CDE
loc_CE3076C_to_loc_8C054E58:
	#data loc_8C054E58
loc_CE30770_to_loc_8C0530D8:
	#data loc_8C0530D8
loc_CE30774_to_loc_CE36CEE:
	#data loc_CE36CEE
loc_CE30778_to_loc_8C055C3A:
	#data loc_8C055C3A
loc_CE3077C_to_loc_CE36CFE:
	#data loc_CE36CFE
loc_CE30780:
	#data loc_8C0553AC

;==============================================
loc_CE30784:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xF4,PC),r5
	mov.w @(0xE0,PC),r6
	mov.l @(0xF4,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce307a6
	mov.l @(0xEC,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf.s loc_ce307ae
	mov r0,r5

loc_CE307A6:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

loc_CE307AE:
	mov.w @(0xC2,PC),r0
	mov.w @(0xBE,PC),r2
	mov.l @(0xD8,PC),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE307C2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bt loc_ce307da
	mov.w @(0xA2,PC),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce307e2

loc_CE307DA:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

loc_CE307E2:
	mov.w @(0x92,PC),r0
	mov 0x15,r3
	mov 0x1D,r5
	mov.b r3,@(r0,r14)
	mov 0x00,r0
	mov.l @(0xA4,PC),r3
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE30802:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x8C,PC),r5
	mov.w @(0x6C,PC),r6
	mov.l @(0x8C,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30822
	mov.w @(0x5A,PC),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce3082a

loc_CE30822:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

loc_CE3082A:
	mov.w @(0x4E,PC),r0
	mov 0x05,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE30838:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x60,PC),r5
	mov.w @(0x3A,PC),r6
	mov.l @(0x58,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce3085a
	mov.w @(0x24,PC),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	mov 0x03,r2
	cmp/ge r2,r3
	bt loc_ce30862

loc_CE3085A:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

loc_CE30862:
	mov.w @(0x16,PC),r0
	mov 0x11,r2
	mov.b r2,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30870:
	#data 0x03B4
loc_ce30872:
	#data 0x00C9
loc_ce30874:
	#data 0x01F7
loc_ce30876:
	#data 0x040C
loc_ce30878:
	#data 0x01E9
loc_ce3087a:
	#data 0x0384
loc_ce3087c:
	#data 0x0258
loc_ce3087e:
	#data 0x0394
	#align4

loc_CE30880_to_loc_CE36D08:
	#data loc_CE36D08
loc_CE30884:
	#data loc_8C054E58
loc_CE30888:
	#data loc_8C045790
loc_CE3088c:
	#data loc_8C0522E0
loc_CE30890:
	#data loc_8C054D1C
loc_CE30894:
	#data loc_8C0530D8
loc_CE30898_to_loc_CE36CBA:
	#data loc_CE36CBA
loc_CE3089c:
	#data loc_8C0553AC
loc_CE308A0_to_loc_CE36CD4:
	#data loc_CE36CD4

;==============================================
loc_CE308A4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xF4,PC),r5
	mov.w @(0xD8,PC),r6
	mov.l @(0xF4,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce308c4
	mov.w @(0xCC,PC),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce308cc

loc_CE308C4:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

loc_CE308CC:
	mov.w @(0xBC,PC),r0
	mov 0x14,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE308DA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_CE30802
	mov r4,r14
	tst r0,r0
	bf loc_CE30902
	mov.w @(loc_CE3098E,pc),r0 ; r0 set to 0x202
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_CE308FA
	bsr loc_CE30838
	mov r14,r4
	tst r0,r0
	bt loc_CE3090A
	bra loc_CE30902
	nop

loc_CE308FA:
	bsr loc_ce308a4
	mov r14,r4
	tst r0,r0
	bt loc_ce3090a

loc_CE30902:
	lds.l @r15+,pr
	mov 0x01,r0 ; r0 set to 0x01
	rts
	mov.l @r15+,r14

loc_CE3090A:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE30912:
	mov.w @(0x7A,PC),r0
	mov.b @(r0,r4),r5
	extu.b r5,r0
	cmp/eq 0x15,r0
	bt.s loc_ce3092c
	mov r0,r5
	mov r5,r0
	nop 
	cmp/eq 0x1D,r0
	bt loc_ce3092c
	mov.w @(0x68,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)

loc_CE3092C:
	rts
	nop

;==============================================
loc_CE30930:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_CE30994,pc),r0 ; r0 set to 0x1E8
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x01,r12 ; r12 set to 0x01
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_CE309A8_to_loc_8C04223A,pc),r11 ; r11 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_CE30958
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_CE309CE
	cmp/eq 0x02,r0
	bt loc_CE309E8
	bra loc_CE309FC
	nop

loc_CE30958:
	mov.w @(loc_CE30996,pc),r0 ; r0 set to 0x1FA
	mov.w @(loc_CE30998,pc),r2 ; r2 set to 0x400
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_CE309B0
	mov.b @(0x06,r14),r0
	mov 0x03,r3 ; r3 set to 0x03
	mov 0x17,r1 ; r1 set to 0x17
	add 0x01,r0 ; r0 set to 0x1FB
	mov.b r0,@(0x06,r14)
	mov 0x14,r5 ; r5 set to 0x14
	mov.w @(loc_CE3099A,pc),r0 ; r0 set to 0x158
	mov.b r3,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r1,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(loc_CE3099C,pc),r0 ; r0 set to 0x1A7
	mov.l @(loc_CE309AC_to_loc_CE36C4C,pc),r3 ; r3 set to 0xCE36C4C
	mov.b r12,@(r0,r14)
	mov.w @(loc_CE3099E,pc),r0 ; r0 set to 0x3F4
	bra loc_CE309FC
	mov.l r3,@(r0,r14)

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE30988:
	#data 0x03AC
loc_CE3098a:
	#data 0x040C
loc_CE3098c:
	#data 0x0258
loc_CE3098E:
	#data 0x0202
loc_CE30990:
	#data 0x01D0
loc_CE30992:
	#data 0x0205
loc_CE30994:
	#data 0x01E8
loc_CE30996:
	#data 0x01FA
loc_CE30998:
	#data 0x0400
loc_CE3099A:
	#data 0x0158
loc_CE3099C:
	#data 0x01A7
loc_CE3099E:
	#data 0x03F4
	#align4

loc_CE309A0_to_loc_CE36CFE:
	#data loc_CE36CFE
loc_CE309A4:
	#data loc_8C0553AC
loc_CE309A8_to_loc_8C04223A:
	#data loc_8C04223A
loc_CE309AC_to_loc_CE36C4C:
	#data loc_CE36C4C

;----------------------------------------------
loc_CE309B0:
	mov.w @(loc_CE30AD6,pc),r0 ; r0 set to 0x158
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r13,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(loc_CE30AD8,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30AE4_to_loc_CE36C44,pc),r3 ; r3 set to 0xCE36C44
	mov.l r3,@(r0,r14)
	mov.w @(loc_CE30ADA,pc),r0 ; r0 set to 0x1A7
	mov.b r13,@(r0,r14)
	mov.w @(loc_CE30ADC,pc),r0 ; r0 set to 0x2A2
	bra loc_CE309FC
	mov.b r12,@(r0,r14)

loc_CE309CE:
	mov.w @(loc_CE30AD6,pc),r0 ; r0 set to 0x158
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r12,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r12,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(loc_CE30AD8,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30AE8_to_loc_CE36C48,pc),r3 ; r3 set to 0xCE36C48
	mov.l r3,@(r0,r14)
	mov.w @(loc_CE30ADA,pc),r0 ; r0 set to 0x1A7
	bra loc_CE309FC
	mov.b r12,@(r0,r14)

loc_CE309E8:
	mov.w @(0xEA,PC),r0
	mov 0x02,r4
	mov.l @(0xFC,PC),r3
	mov.b r4,@(r0,r14)
	add 0x49,r0
	mov.b r4,@(r0,r14)
	mov.w @(0xE0,PC),r0
	mov.l r3,@(r0,r14)
	mov.w @(0xDE,PC),r0
	mov.b r4,@(r0,r14)

loc_CE309FC:
	mov.w @(loc_CE30ADE,pc),r0 ; r0 set to 0x1AC
	mov 0x07,r5 ; r5 set to 0x07
	mov.l @(loc_CE30AF0_to_loc_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov r14,r4
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.w @(loc_CE30AD6,pc),r0 ; r0 set to 0x158
	mov.l @(loc_CE30AF4_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r11
	mov.b @(r0,r14),r6
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE30A30:
	mov.w @(loc_CE30AE0,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_CE30A50
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_CE30A6E
	cmp/eq 0x02,r0
	bt loc_CE30A90
	bra loc_CE30AA6
	nop

loc_CE30A50:
	mov.w @(loc_CE30AD6,pc),r0 ; r0 set to 0x158
	mov 0x06,r3 ; r3 set to 0x06
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE30AF8_to_loc_8C04223A,pc),r3 ; r3 set to 0x8C04223A
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE30AD8,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30AE4_to_loc_CE36C44,pc),r2 ; r2 set to 0xCE36C44
	mov.l r2,@(r0,r14)
	mov.w @(loc_CE30ADA,pc),r0 ; r0 set to 0x1A7
	bra loc_CE30AA6
	mov.b r13,@(r0,r14)

loc_CE30A6E:
	mov.w @(loc_CE30AD6,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x07,r3 ; r3 set to 0x07
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @(loc_CE30AF8_to_loc_8C04223A,pc),r3 ; r3 set to 0x8C04223A
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE30AD8,pc),r0 ; r0 set to 0x3F4
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_CE30AE8_to_loc_CE36C48,pc),r2 ; r2 set to 0xCE36C48
	mov.l r2,@(r0,r14)
	mov.w @(loc_CE30ADA,pc),r0 ; r0 set to 0x1A7
	bra loc_CE30AA6
	mov.b r3,@(r0,r14)

loc_CE30A90:
	mov.w @(0x42,PC),r0
	mov 0x02,r4
	mov 0x08,r3
	mov.l @(0x54,PC),r2
	mov.b r4,@(r0,r14)
	add 0x49,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x36,PC),r0
	mov.l r2,@(r0,r14)
	mov.w @(0x34,PC),r0
	mov.b r4,@(r0,r14)

loc_CE30AA6:
	mov.w @(loc_CE30ADE,pc),r0 ; r0 set to 0x1AC
	mov 0x09,r5 ; r5 set to 0x09
	mov.l @(loc_CE30AF0_to_loc_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov r14,r4
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.w @(loc_CE30AD6,pc),r0 ; r0 set to 0x158
	mov.l @(loc_CE30AF4_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r13
	mov.b @(r0,r14),r6
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE30AD6:
	#data 0x0158
loc_CE30AD8:
	#data 0x03F4
loc_CE30ADA:
	#data 0x01A7
loc_CE30ADC:
	#data 0x02A2
loc_CE30ADE:
	#data 0x01AC
loc_CE30AE0:
	#data 0x01E8
	#align4

loc_CE30AE4_to_loc_CE36C44:
	#data loc_CE36C44
loc_CE30AE8_to_loc_CE36C48:
	#data loc_CE36C48
loc_CE30AEC_to_loc_CE36C4C:
	#data loc_CE36C4C
loc_CE30AF0_to_loc_8C2896B0:
	#data loc_8C2896B0
loc_CE30AF4_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE30AF8_to_loc_8C04223A:
	#data loc_8C04223A

;==============================================
loc_CE30AFC:
	mov.w @(loc_CE30C08,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_CE30C14_to_loc_8C04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_CE30B20
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_CE30B3C
	cmp/eq 0x02,r0
	bt loc_CE30B58
	bra loc_CE30B76
	nop

loc_CE30B20:
	mov.w @(loc_CE30C0A,pc),r0 ; r0 set to 0x158
	mov 0x03,r3 ; r3 set to 0x03
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_CE30C0C,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30C18_to_loc_CE36C50,pc),r3 ; r3 set to 0xCE36C50
	mov.l r3,@(r0,r14)
	mov.w @(loc_CE30C0E,pc),r0 ; r0 set to 0x1A7
	bra loc_CE30B76
	mov.b r13,@(r0,r14)

loc_CE30B3C:
	mov.w @(loc_CE30C0A,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x04,r3 ; r3 set to 0x04
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_CE30C0C,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30C1C_to_loc_CE36C54,pc),r3 ; r3 set to 0xCE36C54
	mov.l r3,@(r0,r14)
	bra loc_CE30B72
	mov 0x01,r2

loc_CE30B58:
	mov.w @(0xAE,PC),r0
	mov 0x02,r1
	mov 0x05,r3
	mov.b r1,@(r0,r14)
	add 0x49,r0
	mov 0x16,r5
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x9E,PC),r0
	mov 0x02,r2
	mov.l @(0xB0,PC),r3
	mov.l r3,@(r0,r14)

loc_CE30B72:
	mov.w @(0x98,PC),r0
	mov.b r2,@(r0,r14)

loc_CE30B76:
	mov.w @(loc_CE30C10,pc),r0 ; r0 set to 0x1AC
	mov 0x08,r5 ; r5 set to 0x08
	mov.l @(loc_CE30C24_to_loc_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov r14,r4
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.w @(loc_CE30C0A,pc),r0 ; r0 set to 0x158
	mov.l @(loc_CE30C28_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r12
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE30BA8:
	mov.w @(loc_CE30C08,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_CE30BC8
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_CE30BE6
	cmp/eq 0x02,r0
	bt loc_CE30C2C
	bra loc_CE30C42
	nop

loc_CE30BC8:
	mov.w @(loc_CE30C0A,pc),r0 ; r0 set to 0x158
	mov 0x09,r3 ; r3 set to 0x09
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE30C14_to_loc_8C04223A,pc),r3 ; r3 set to 0x8C04223A
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE30C0C,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30C18_to_loc_CE36C50,pc),r2 ; r2 set to 0xCE36C50
	mov.l r2,@(r0,r14)
	mov.w @(loc_CE30C0E,pc),r0 ; r0 set to 0x1A7
	bra loc_CE30C42
	mov.b r13,@(r0,r14)

loc_CE30BE6:
	mov.w @(loc_CE30C0A,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x0A,r3 ; r3 set to 0x0A
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @(loc_CE30C14_to_loc_8C04223A,pc),r3 ; r3 set to 0x8C04223A
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE30C0C,pc),r0 ; r0 set to 0x3F4
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_CE30C1C_to_loc_CE36C54,pc),r2 ; r2 set to 0xCE36C54
	mov.l r2,@(r0,r14)
	mov.w @(loc_CE30C0E,pc),r0 ; r0 set to 0x1A7
	bra loc_CE30C42
	mov.b r3,@(r0,r14)

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE30C08:
	#data 0x01E8
loc_CE30C0A:
	#data 0x0158
loc_CE30C0C:
	#data 0x03F4
loc_CE30C0E:
	#data 0x01A7
loc_CE30C10:
	#data 0x01AC
	#align4

loc_CE30C14_to_loc_8C04223A:
	#data loc_8C04223A
loc_CE30C18_to_loc_CE36C50:
	#data loc_CE36C50
loc_CE30C1C_to_loc_CE36C54:
	#data loc_CE36C54
loc_CE30C20_to_loc_CE36C58:
	#data loc_CE36C58
loc_CE30C24_to_loc_8C2896B0:
	#data loc_8C2896B0
loc_CE30C28_to_loc_8C034E8C:
	#data loc_8C034E8C

;----------------------------------------------
loc_CE30C2C:
	mov.w @(0x112,PC),r0
	mov 0x02,r4
	mov 0x0B,r3
	mov.l @(0x124,PC),r2
	mov.b r4,@(r0,r14)
	add 0x49,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x106,PC),r0
	mov.l r2,@(r0,r14)
	mov.w @(0x104,PC),r0
	mov.b r4,@(r0,r14)

loc_CE30C42:
	mov.w @(loc_CE30D48,pc),r0 ; r0 set to 0x1AC
	mov 0x0A,r5 ; r5 set to 0x0A
	mov.l @(loc_CE30D5C_to_loc_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov r14,r4
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.w @(loc_CE30D42,pc),r0 ; r0 set to 0x158
	mov.l @(loc_CE30D60_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r13
	mov.b @(r0,r14),r6
	jmp @r2
	mov.l @r15+,r14

loc_CE30C72:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE30D64_to_loc_8C052B4C,pc),r3 ; r3 set to 0x8C052B4C
	jsr @r3
	mov r4,r14
	mov.w @(loc_CE30D4A,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE30CA0
	mov.w @(loc_CE30D4C,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE30C98
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE30BA8
	mov.l @r15+,r14

loc_CE30C98:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE30AFC
	mov.l @r15+,r14

loc_CE30CA0:
	mov.w @(loc_CE30D4C,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE30CB2
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE30A30
	mov.l @r15+,r14

loc_CE30CB2:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE30930
	mov.l @r15+,r14

loc_CE30CBA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	mov.w @(loc_CE30D50,pc),r0 ; r0 set to 0x1E8
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x02,r10 ; r10 set to 0x02
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_CE30D68_to_loc_8C04223A,pc),r11 ; r11 set to 0x8C04223A
	mov.w @(loc_CE30D4E,pc),r4 ; r4 set to 0x1000
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_CE30CEC
	mov 0x01,r12 ; r12 set to 0x01
	cmp/eq 0x01,r0
	bt loc_CE30D98
	cmp/eq 0x02,r0
	bf loc_CE30CE8
	bra loc_CE30E20
	nop

loc_CE30CE8:
	bra loc_CE30EEA
	nop

loc_CE30CEC:
	mov.w @(loc_CE30D52,pc),r0 ; r0 set to 0x1FA
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r4,r3
	bt loc_CE30D6C
	mov r10,r0 ; r0 ??? bc r10 is ???
	nop
	mov.b r0,@(0x06,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x07,r14)
	mov 0x0F,r3 ; r3 set to 0x0F
	mov.w @(loc_CE30D54,pc),r0 ; r0 set to 0x1D6
	mov 0x15,r1 ; r1 set to 0x15
	fldi0 fr4
	mov 0x16,r5 ; r5 set to 0x16
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov 0x08,r2 ; r2 set to 0x08
	mov.w @(loc_CE30D42,pc),r0 ; r0 set to 0x158
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r1,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(loc_CE30D46,pc),r0 ; r0 set to 0x1A7
	mov.b r12,@(r0,r14)
	add 0x55,r0 ; r0 set to 0x1FC
	mov.b r13,@(r0,r14)
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_CE30DE4
	bra loc_CE30DEC
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE30D42:
	#data 0x0158
loc_CE30D44:
	#data 0x03F4
loc_CE30D46:
	#data 0x01A7
loc_CE30D48:
	#data 0x01AC
loc_CE30D4A:
	#data 0x01FE
loc_CE30D4C:
	#data 0x01F9
loc_CE30D4E:
	#data 0x1000
loc_CE30D50:
	#data 0x01E8
loc_CE30D52:
	#data 0x01FA
loc_CE30D54:
	#data 0x01D6
	#align4

loc_CE30D58_to_loc_CE36C58:
	#data loc_CE36C58
loc_CE30D5C_to_loc_8C2896B0:
	#data loc_8C2896B0
loc_CE30D60_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE30D64_to_loc_8C052B4C:
	#data loc_8C052B4C
loc_CE30D68_to_loc_8C04223A:
	#data loc_8C04223A

;----------------------------------------------
loc_CE30D6C:
	mov.w @(loc_CE30E46,pc),r0 ; r0 set to 0x158
	mov 0x0C,r3 ; r3 set to 0x0C
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(loc_CE30E48,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_CE30D8C
	mov.w @(loc_CE30E4A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30E5C_to_loc_CE36C5C,pc),r3 ; r3 set to 0xCE36C5C
	bra loc_CE30D92
	mov.l r3,@(r0,r14)

loc_CE30D8C:
	mov.w @(loc_CE30E4A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30E60_to_loc_CE36C74,pc),r1 ; r1 set to 0xCE36C74
	mov.l r1,@(r0,r14)

loc_CE30D92:
	mov.w @(loc_CE30E4C,pc),r0 ; r0 set to 0x1A7, r0 set to 0x1A7
	bra loc_CE30EEA
	mov.b r13,@(r0,r14)

loc_CE30D98:
	mov.w @(0xB2,PC),r0
	mov.w @(0xB2,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_ce30df4
	mov r12,r0
	nop 
	mov.b r0,@(0x6,r14)
	mov r13,r0
	nop 
	mov.b r0,@(0x7,r14)
	mov 0x0F,r2
	mov.w @(0x9C,PC),r0
	mov.b @(r0,r14),r1
	and r2,r1
	mov.b r1,@(r0,r14)
	mov.w @(0x96,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_ce30ea6
	mov.w @(0x7C,PC),r0
	mov 0x06,r3
	mov 0x13,r2
	mov.b r3,@(r0,r14)
	add 0x49,r0
	mov 0x16,r5
	mov.b r2,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(0x70,PC),r0
	mov.b r12,@(r0,r14)
	add 0x55,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce30dec

loc_CE30DE4:
	mov.w @(loc_CE30E4A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30E64_to_loc_CE36C64,pc),r3 ; r3 set to 0xCE36C64
	bra loc_CE30EEA
	mov.l r3,@(r0,r14)

loc_CE30DEC:
	mov.w @(loc_CE30E4A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30E68_to_loc_CE36C7C,pc),r1 ; r1 set to 0xCE36C7C
	bra loc_CE30EEA
	mov.l r1,@(r0,r14)

loc_CE30DF4:
	mov.w @(0x4E,PC),r0
	mov 0x0D,r2
	mov 0x15,r5
	mov.b r12,@(r0,r14)
	add 0x49,r0
	mov.b r2,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(0x40,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce30e14
	mov.w @(0x3A,PC),r0
	mov.l @(0x5C,PC),r3
	bra loc_ce30e1a
	mov.l r3,@(r0,r14)

loc_CE30E14:
	mov.w @(0x32,PC),r0
	mov.l @(0x58,PC),r1
	mov.l r1,@(r0,r14)

loc_CE30E1A:
	mov.w @(0x2E,PC),r0
	bra loc_ce30eea
	mov.b r12,@(r0,r14)

loc_CE30E20:
	mov.w @(loc_CE30E4E,pc),r0 ; r0 set to 0x1FA
	mov.w @(loc_CE30E56,pc),r3 ; r3 set to 0x800
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_CE30E74
	mov.w @(loc_CE30E54,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_CE30EA6
	mov.w @(loc_CE30E58,pc),r0 ; r0 set to 0x1A1
	mov 0x12,r3 ; r3 set to 0x12
	mov 0x05,r2 ; r2 set to 0x05
	mov.b r3,@(r0,r14)
	add 0xB7,r0 ; r0 set to 0x158
	bra loc_CE30ECA
	mov.b r2,@(r0,r14)

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE30E46:
	#data 0x0158
loc_CE30E48:
	#data 0x01FC
loc_CE30E4A:
	#data 0x03F4
loc_CE30E4C:
	#data 0x01A7
loc_CE30E4E:
	#data 0x01FA
loc_CE30E50:
	#data 0x2000
loc_CE30E52:
	#data 0x01D6
loc_CE30E54:
	#data 0x041C
loc_CE30E56:
	#data 0x0800
loc_CE30E58:
	#data 0x01A1
	#align4

loc_CE30E5C_to_loc_CE36C5C:
	#data loc_CE36C5C
loc_CE30E60_to_loc_CE36C74:
	#data loc_CE36C74
loc_CE30E64_to_loc_CE36C64:
	#data loc_CE36C64
loc_CE30E68_to_loc_CE36C7C:
	#data loc_CE36C7C
loc_CE30E6C_to_loc_CE36C60:
	#data loc_CE36C60
loc_CE30E70_to_loc_CE36C78:
	#data loc_CE36C78

;----------------------------------------------
loc_CE30E74:
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r4,r1
	bt loc_ce30ec0
	mov r12,r0
	nop 
	mov.b r0,@(0x6,r14)
	mov r13,r0
	nop 
	mov.b r0,@(0x7,r14)
	mov 0x0F,r2
	mov.w @(0xCC,PC),r0
	mov.b @(r0,r14),r1
	and r2,r1
	mov.b r1,@(r0,r14)
	mov 0x14,r0
	mov.w @(0xC4,PC),r1
	add r14,r1
	mov.b r0,@r1
	mov.w @(0xC0,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_ce30eb8

loc_CE30EA6:
	mov.w @(loc_CE30F5E,pc),r0 ; r0 set to 0x41C
	mov.l @(loc_CE30F6C_to_loc_8C052DAC,pc),r3 ; r3 set to 0x8C052DAC
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	bra loc_CE30EEA
	nop

loc_CE30EB8:
	mov.w @(0xA4,PC),r0
	mov 0x07,r3
	bra loc_ce30eca
	mov.b r3,@(r0,r14)

loc_CE30EC0:
	mov.w @(0x9C,PC),r0
	mov 0x0E,r2
	mov.b r10,@(r0,r14)
	add 0x49,r0
	mov.b r2,@(r0,r14)

loc_CE30ECA:
	mov 0x16,r5 ; r5 set to 0x16
	jsr @r11
	mov r14,r4
	mov.w @(loc_CE30F62,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_CE30EE0
	mov.w @(loc_CE30F64,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30F70_to_loc_CE36C64,pc),r3 ; r3 set to 0xCE36C64
	bra loc_CE30EE6
	mov.l r3,@(r0,r14)

loc_CE30EE0:
	mov.w @(0x80,PC),r0
	mov.l @(0x90,PC),r1
	mov.l r1,@(r0,r14)

loc_CE30EE6:
	mov.w @(0x7C,PC),r0
	mov.b r10,@(r0,r14)

loc_CE30EEA:
	mov.w @(0x7A,PC),r0
	mov 0x0B,r5
	mov.l @(0x88,PC),r3
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x52,PC),r0
	mov.l @(0x6C,PC),r2
	mov.b @(r0,r14),r6
	jsr @r2
	mov r14,r4
	mov.w @(0x42,PC),r0
	mov.b @(r0,r14),r0
	tst 0x0F,r0
	bt loc_ce30f24
	mov.w @(0x3A,PC),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2, @(r0,r14)

loc_CE30F24:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE30F32:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_CE30F6A,pc),r0 ; r0 set to 0x1E8
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_CE30F80_to_loc_8C04223A,pc),r11 ; r11 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_CE30F84
	mov 0x01,r12 ; r12 set to 0x01
	cmp/eq 0x01,r0
	bt loc_CE31014
	cmp/eq 0x02,r0
	bt loc_CE31040
	bra loc_CE31092
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE30F5a:
	#data 0x01D6
loc_CE30F5c:
	#data 0x01A1
loc_CE30F5E:
	#data 0x041C
loc_CE30F60:
	#data 0x0158
loc_CE30F62:
	#data 0x01FC
loc_CE30F64:
	#data 0x03F4
loc_CE30F66:
	#data 0x01A7
loc_CE30F68:
	#data 0x01AC
loc_CE30F6A:
	#data 0x01E8
	#align4

loc_CE30F6C_to_loc_8C052DAC:
	#data loc_8C052DAC
loc_CE30F70_to_loc_CE36C64:
	#data loc_CE36C64
loc_CE30F74_to_loc_CE36C7C:
	#data loc_CE36C7C
loc_CE30F78:
	#data loc_8C2896B0
loc_CE30F7c:
	#data loc_8C034E8C
loc_CE30F80_to_loc_8C04223A:
	#data loc_8C04223A

;----------------------------------------------
loc_CE30F84:
	mov.w @(loc_CE3105C,pc),r0 ; r0 set to 0x1FA
	mov.w @(loc_CE3105E,pc),r2 ; r2 set to 0x1000
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_CE30FE8
	mov r12,r0 ; r0 ??? bc r12 is ???
	nop
	mov.b r0,@(0x06,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x07,r14)
	mov 0x0F,r3 ; r3 set to 0x0F
	mov.w @(loc_CE31060,pc),r0 ; r0 set to 0x1D6
	mov.b @(r0,r14),r1
	and r3,r1
	mov.b r1,@(r0,r14)
	mov 0x16,r0 ; r0 set to 0x16
	mov.w @(loc_CE31062,pc),r1 ; r1 set to 0x1A1
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.b r0,@r1
	mov.w @(loc_CE31064,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fcmp/gt fr2,fr3
	bf loc_CE30FCC
	mov.w @(loc_CE31064,pc),r0 ; r0 set to 0x41C
	mov.l @(loc_CE31070_to_loc_8C052DAC,pc),r1 ; r1 set to 0x8C052DAC
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r1
	mov r14,r4
	bra loc_CE31092
	nop

loc_CE30FCC:
	mov.w @(loc_CE31066,pc),r0 ; r0 set to 0x158
	mov 0x06,r2 ; r2 set to 0x06
	mov 0x16,r5 ; r5 set to 0x16
	mov.b r2,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(loc_CE31068,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE3102C
	mov.w @(loc_CE3106A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE31074_to_loc_CE36C84,pc),r1 ; r1 set to 0xCE36C84
	bra loc_CE3103A
	mov.l r1,@(r0,r14)

loc_CE30FE8:
	mov.w @(loc_CE31066,pc),r0 ; r0 set to 0x158
	mov 0x0F,r3 ; r3 set to 0x0F
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(loc_CE31068,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_CE31008
	mov.w @(loc_CE3106A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE31078_to_loc_CE36C68,pc),r3 ; r3 set to 0xCE36C68
	bra loc_CE3100E
	mov.l r3,@(r0,r14)

loc_CE31008:
	mov.w @(loc_CE3106A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE3107C_to_loc_CE36C80,pc),r1 ; r1 set to 0xCE36C80
	mov.l r1,@(r0,r14)

loc_CE3100E:
	mov.w @(loc_CE3106C,pc),r0 ; r0 set to 0x1A7, r0 set to 0x1A7
	bra loc_CE31092
	mov.b r13,@(r0,r14)

loc_CE31014:
	mov.w @(0x4E,PC),r0
	mov 0x10,r3
	mov 0x15,r5
	mov.b r12,@(r0,r14)
	add 0x49,r0
	mov.b r3,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(0x40,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce31034

loc_CE3102C:
	mov.w @(loc_CE3106A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE31080_to_loc_CE36C6C,pc),r3 ; r3 set to 0xCE36C6C
	bra loc_CE3103A
	mov.l r3,@(r0,r14)

loc_CE31034:
	mov.w @(0x32,pc),r0
	mov.l @(0x3c,pc),r1
	mov.l r1,@(r0,r14)

loc_CE3103A:
	mov.w @(loc_CE3106C,pc),r0 ; r0 set to 0x1A7
	bra loc_CE31092
	mov.b r12,@(r0,r14)

loc_CE31040:
	mov.w @(loc_CE31066,pc),r0 ; r0 set to 0x158
	mov 0x02,r4 ; r4 set to 0x02
	mov 0x11,r3 ; r3 set to 0x11
	mov.b r4,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x5B,r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_CE31088
	mov.w @(loc_CE3106A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE31084_to_loc_CE36C70,pc),r2 ; r2 set to 0xCE36C70
	bra loc_CE3108E
	mov.l r2,@(r0,r14)

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE3105C:
	#data 0x01FA
loc_CE3105E:
	#data 0x1000
loc_CE31060:
	#data 0x01D6
loc_CE31062:
	#data 0x01A1
loc_CE31064:
	#data 0x041C
loc_CE31066:
	#data 0x0158
loc_CE31068:
	#data 0x01FC
loc_CE3106A:
	#data 0x03F4
loc_CE3106C:
	#data 0x01A7
	#align4

loc_CE31070_to_loc_8C052DAC:
	#data loc_8C052DAC
loc_CE31074_to_loc_CE36C84:
	#data loc_CE36C84
loc_CE31078_to_loc_CE36C68:
	#data loc_CE36C68
loc_CE3107C_to_loc_CE36C80:
	#data loc_CE36C80
loc_CE31080_to_loc_CE36C6C:
	#data loc_CE36C6C
loc_CE31084_to_loc_CE36C70:
	#data loc_CE36C70

;----------------------------------------------
loc_CE31088:
	mov.w @(0xC2,PC),r0
	mov.l @(0xD4,PC),r1
	mov.l r1,@(r0,r14)

loc_CE3108E:
	mov.w @(0xBE,PC),r0
	mov.b r4,@(r0,r14)

loc_CE31092:
	mov.w @(0xBC,PC),r0
	mov 0x0C,r5
	mov.l @(0xCC,PC),r3
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x9E,PC),r0
	mov.l @(0xB0,PC),r2
	mov.b @(r0,r14),r6
	jsr @r2
	mov r14,r4
	mov.w @(0x96,PC),r0
	mov.b @(r0,r14),r0
	tst 0xF0,r0
	bt loc_ce310cc
	mov.w @(0x8E,PC),r0
	mov.b @(r0,r14),r2
	add 0xF0,r2
	mov.b r2,@(r0,r14)

loc_CE310CC:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE310D8:
	mov.w @(loc_CE31158,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE310E6
	bra loc_CE30F32
	nop

loc_CE310E6:
	bra loc_CE30CBA
	nop

;==============================================
loc_CE310EA:
	mov.w @(0x6A,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_ce310fa
	mov.w @(0x60,PC),r0
	mov.b @(r0,r4),r0
	tst 0x0F,r0
	bf loc_ce3110a

loc_CE310FA:
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_ce3110e
	mov.w @(0x50,PC),r0
	mov.b @(r0,r4),r0
	tst 0xF0,r0
	bt loc_ce3110e

loc_CE3110A:
	bra loc_ce310d8
	nop 

loc_CE3110E:
	rts 
	nop 

;==============================================
loc_CE31112:
	bra loc_CE30C72
	nop

;==============================================
loc_CE31116:
	mov.w @(loc_CE3115A,pc),r0 ; r0 set to 0x1FF
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_CE3116C_to_loc_CE36D88_to_loc_CE30C72,pc),r0 ; r0 set to 0xCE36D88
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE3112A:
	mov.w @(loc_CE3115C,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_CE31170_to_loc_8C034DEE,pc),r12 ; r12 set to 0x8C034DEE
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_CE31174
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_CE311C6
	cmp/eq 0x02,r0
	bt loc_CE311D4
	bra loc_CE31224
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE3114e:
	#data 0x03F4
loc_CE31150:
	#data 0x01A7
loc_CE31152:
	#data 0x01AC
loc_CE31154:
	#data 0x0158
loc_CE31156:
	#data 0x01D6
loc_CE31158:
	#data 0x01FE
loc_CE3115A:
	#data 0x01FF
loc_CE3115C:
	#data 0x01E8
	#align4

loc_CE31160_to_loc_CE36C88:
	#data loc_CE36C88
loc_CE31164:
	#data loc_8C2896B0
loc_CE31168:
	#data loc_8C034E8C
loc_CE3116C_to_loc_CE36D88_to_loc_CE30C72:
	#data loc_CE36D88_to_loc_CE30C72
loc_CE31170_to_loc_8C034DEE:
	#data loc_8C034DEE

;==============================================
loc_CE31174:
	mov.b @(0x6,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_ce311c6
	cmp/eq 0x01,r0
	bf loc_ce31224
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_ce311de
	mov.w @(0xE0,PC),r2
	add r14,r2
	mov.b @(0x1,r2),r0
	tst r0,r0
	bt loc_ce311ae
	mov.w @(0xD6,PC),r3
	add r14,r3
	mov r13,r0
	nop 
	mov.l @(0xD8,PC),r5
	mov.b r0,@(0x1,r3)
	mov 0x01,r0
	mov.l @(0xD8,PC),r3
	mov.b r0,@(0x5,r5)
	mov.b r0,@(0x6,r5)
	mov 0x2C,r5
	jsr @r3
	mov r14,r4

loc_CE311AE:
	mov.w @(0xBE,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce31224
	mov.b r13,@(r0,r14)
	add 0xEF,r0
	mov.w @(r0,r14),r2
	mov 0x01,r3
	xor r3,r2
	mov.w r2,@(r0,r14)
	bra loc_ce31224
	nop 

loc_CE311C6:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE31224
	bra loc_CE311DE
	nop

loc_CE311D4:
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce311ec

loc_CE311DE:
	lds.l @r15+,pr
	mov.l @(loc_CE31280_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE311EC:
	mov.w @(0x80,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce31210
	mova @(0x8C,PC),r0
	fmov @r0,fr4
	mov.w @(0x76,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce31208
	mov 0x34,r0
	fmov @(r0,r14),fr3
	bra loc_ce3120e
	fadd fr4,fr3

loc_CE31208:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fsub fr4,fr3

loc_CE3120E:
	fmov fr3,@(r0,r14)

loc_CE31210:
	mov.w @(0x60,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce31224
	mov.l @(0x60,PC),r3
	mov 0x16,r5
	jsr @r3
	mov r14,r4
	mov.w @(0x50,PC),r0
	mov.b r13,@(r0,r14)

loc_CE31224:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3122E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE31288_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE31248
	lds.l @r15+,pr
	mov.l @(loc_CE31280_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE31248:
	mov.w @(0x2A,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce31268
	mov.w @(0x1E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce31268
	mov.l @(0x20,PC),r3
	mov 0x16,r5
	jsr @r3
	mov r14,r4
	mov.w @(0xE,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_CE31268:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3126e:
	#data 0x0150
loc_ce31270:
	#data 0x0141
loc_ce31272:
	#data 0x01D2
loc_ce31274:
	#data 0x014B
loc_ce31276:
	#data 0x01E8
	#align4

loc_ce31278:
	#data loc_8C26A518
loc_ce3127c:
	#data loc_8C04223A
loc_CE31280_to_loc_8C051648:
	#data loc_8C051648
loc_CE31284:
	#data 0x40D55555
loc_CE31288_to_loc_8C034DEE:
	#data loc_8C034DEE

;==============================================
loc_CE3128C:
mov.w @(loc_CE31372,pc),r0 ; r0 set to 0x1E8
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
mov.w @(loc_CE31370,pc),r13 ; r13 set to 0x2A4
extu.b r0,r0
cmp/eq 0x00,r0
bt/s loc_CE312AE
add r14,r13 ; r13 ??? bc r14 is ???
cmp/eq 0x01,r0
bt loc_CE312AE
cmp/eq 0x02,r0
bt loc_CE312C6
bra loc_CE3132C
nop

loc_CE312AE:
mov.l @(loc_CE31380_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt loc_CE3132C
lds.l @r15+,pr
mov.l @(loc_CE31384_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_CE312C6:
	mov.l @(0xB8,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce312d8
	mov.l @(0xB0,PC),r3
	jsr @r3
	mov r14,r4

loc_CE312D8:
	mov.b @(0x4,r13),r0
	tst r0,r0
	bf loc_ce312f2
	mov.w @(0x92,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce312f2
	mov.l @(0xA0,PC),r3
	mov 0x01,r0
	mov 0x04,r5
	mov.b r0,@(0x4,r13)
	jsr @r3
	mov r14,r4

loc_CE312F2:
	mov.w @(0x80,PC),r2
	add r14,r2
	mov.b @(0x1,r2),r0
	tst r0,r0
	bt loc_ce3132c
	mov.w @(0x76,PC),r3
	mov 0x00,r4
	add r14,r3
	mov r4,r0
	nop 
	mov.b r0,@(0x1,r3)
	mov 0x19,r3
	mov.w @(0x6A,PC),r0
	mov.b r3,@(r0,r14)
	mov.w @(0x68,PC),r0
	mov.l @(0x78,PC),r3
	mov.w r4,@(r0,r14)
	mov.w @(0x5C,PC),r0
	mov.b r4,@(r0,r14)
	mov.w @(0x60,PC),r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_CE3132C:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE31334:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x44,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce3134a
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov r14,r4

loc_CE3134A:
	mov.w @(0x24,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce3136a
	mov.w @(0x26,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce3136a
	mov.l @(0x30,PC),r3
	mov 0x16,r5
	jsr @r3
	mov r14,r4
	mov.w @(0x16,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_CE3136A:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE31370:
	#data 0x02A4
loc_CE31372:
	#data 0x01E8
loc_CE31374:
	#data 0x019E
loc_CE31376:
	#data 0x0150
loc_CE31378:
	#data 0x01A1
loc_CE3137a:
	#data 0x01AC
loc_CE3137c:
	#data 0x01C4
loc_CE3137e:
	#data 0x014B
	#align4

loc_CE31380_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE31384_to_loc_8C051648:
	#data loc_8C051648
loc_CE31388:
	#data loc_8C042008
loc_CE3138c:
	#data loc_8C2896B0
loc_CE31390:
	#data loc_8C04223A

;==============================================
loc_CE31394:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_CE314CC_to_loc_8C052C84,pc),r3 ; r3 set to 0x8C052C84
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE314C4,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE313FC
	mov.w @(loc_CE314C6,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE313F4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE31334
	mov.l @r15+,r14

loc_CE313F4:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE3128C
	mov.l @r15+,r14

loc_CE313FC:
	mov.w @(loc_CE314C6,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE3140E
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE3122E
	mov.l @r15+,r14

loc_CE3140E:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE3112A
	mov.l @r15+,r14

loc_CE31416:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xB4,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0xA4,PC),r2
	add r14,r2
	mov.b @(0x1,r2),r0
	tst r0,r0
	bt loc_ce31466
	mov.b @(0x7,r14),r0
	mov.w @(0x98,PC),r3
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov 0x00,r0
	add r14,r3
	mov.b r0,@(0x1,r3)
	mova @(0x98,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0x90,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x8C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x70,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce31466
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE31466:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3146C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE314D0_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.l @(loc_CE314E0_to_loc_8C052CE2,pc),r2 ; r2 set to 0x8C052CE2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE314BE
	mov.b @(0x07,r14),r0
	mov 0x2C,r5 ; r5 set to 0x2C
	fldi0 fr4
	add 0x01,r0
	mov.l @(loc_CE314E4_to_loc_8C26A518,pc),r4 ; r4 set to 0x8C26A518
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov 0x01,r0 ; r0 set to 0x01
	mov.l @(loc_CE314E8_to_loc_8C04223A,pc),r3 ; r3 set to 0x8C04223A
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x06,r4)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.w @(loc_CE314C6,pc),r0 ; r0 set to 0x1F9
	mov 0x00,r2 ; r2 set to 0x00
	mov.l @(loc_CE314EC_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x09,r6 ; r6 set to 0x09
	lds.l @r15+,pr
	mov 0x0B,r5 ; r5 set to 0x0B
	jmp @r3
	mov.l @r15+,r14

loc_CE314BE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE314C4:
	#data 0x01FE
loc_CE314C6:
	#data 0x01F9
loc_CE314C8:
	#data 0x0150
loc_CE314Ca:
	#data 0x01D2
	#align4

loc_CE314CC_to_loc_8C052C84:
	#data loc_8C052C84
loc_CE314D0_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE314D4:
	#data 0x4162AAAA
loc_CE314D8:
	#data 0xC1892492
loc_CE314Dc:
	#data 0xBF092492
loc_CE314E0_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE314E4_to_loc_8C26A518:
	#data loc_8C26A518
loc_CE314E8_to_loc_8C04223A:
	#data loc_8C04223A
loc_CE314EC_to_loc_8C034E8C:
	#data loc_8C034E8C

;==============================================
loc_CE314F0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE315D4_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE31514
	mov.w @(loc_CE315CE,pc),r0 ; r0 set to 0x130
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_CE315D8_to_loc_8C051648,pc),r1 ; r1 set to 0x8C051648
	mov r14,r4
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)
	lds.l @r15+,pr
	jmp @r1
	mov.l @r15+,r14

loc_CE31514:
	mov.w @(0xB8,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce3152a
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	add 0xEF,r0
	mov.w @(r0,r14),r2
	mov 0x01,r3
	xor r3,r2
	mov.w r2,@(r0,r14)

loc_CE3152A:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE31530:
	mov.w @(loc_CE315D2,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_CE315DC_to_loc_8C05176E,pc),r12 ; r12 set to 0x8C05176E
	extu.b r0,r0
	mov.l @(loc_CE315D4_to_loc_8C034DEE,pc),r13 ; r13 set to 0x8C034DEE
	cmp/eq 0x00,r0
	bt loc_CE31554
	cmp/eq 0x01,r0
	bt loc_CE315F4
	cmp/eq 0x02,r0
	bt loc_CE31606
	bra loc_CE31646
	nop

loc_CE31554:
	mov.b @(0x06,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_CE31568
	cmp/eq 0x01,r0
	bt loc_CE3157A
	cmp/eq 0x02,r0
	bt loc_CE315A2
	bra loc_CE31646
	nop

loc_CE31568:
	jsr @r13
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE31592
	jsr @r12
	mov r14,r4
	bra loc_CE31592
	nop

loc_CE3157A:
	jsr @r13
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31592
	jsr @r12
	mov r14,r4
	mov.l @(0x54,PC),r2
	mov 0x01,r5
	mov 0x0C,r6
	jsr @r2
	mov r14,r4

loc_CE31592:
	mov.l @(loc_CE315E4_to_loc_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE31638
	bra loc_CE31646
	nop

loc_CE315A2:
	mov.b @(0x07,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_CE315B6
	cmp/eq 0x01,r0
	bt loc_CE315C2
	cmp/eq 0x02,r0
	bt loc_CE315E8
	bra loc_CE31646
	nop

loc_CE315B6:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_CE31416
	mov.l @r15+,r14

loc_CE315C2:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_CE3146C
	mov.l @r15+,r14

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE315CE:
	#data 0x0130
loc_CE315D0:
	#data 0x0141
loc_CE315D2:
	#data 0x01E8
	#align4

loc_CE315D4_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE315D8_to_loc_8C051648:
	#data loc_8C051648
loc_CE315DC_to_loc_8C05176E:
	#data loc_8C05176E
loc_CE315E0:
	#data loc_8C034E8C
loc_CE315E4_to_loc_8C052CE2:
	#data loc_8C052CE2

;----------------------------------------------
loc_CE315E8:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_CE314F0
	mov.l @r15+,r14

loc_CE315F4:
	jsr @r13
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE3162C
	jsr @r12
	mov r14,r4
	bra loc_CE3162C
	nop

loc_CE31606:
	mov.b @(0x06,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_CE31616
	cmp/eq 0x01,r0
	bt loc_CE31628
	bra loc_CE3162C
	nop

loc_CE31616:
	jsr @r13
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE3162C
	jsr @r12
	mov r14,r4
	bra loc_CE3162C
	nop

loc_CE31628:
	jsr @r13
	mov r14,r4

loc_CE3162C:
	mov.l @(0x64,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce31646               ; loc_ce31580+0xc6

loc_CE31638:
	lds.l @r15+,pr
	mov.l @(loc_CE31698_to_loc_8C052DAC,pc),r2 ; r2 set to 0x8C052DAC
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE31646:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE31650:
	mov.w @(loc_CE31692,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_CE3169C_to_loc_8C034DEE,pc),r13 ; r13 set to 0x8C034DEE
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_CE31670
	cmp/eq 0x01,r0
	bt loc_CE316A4
	cmp/eq 0x02,r0
	bt loc_CE316A4
	bra loc_CE316D4
	nop

loc_CE31670:
	mov.b @(0x06,r14),r0
	tst r0,r0
	bt loc_CE3167E
	jsr @r13
	mov r14,r4
	bra loc_CE316D4
	nop

loc_CE3167E:
	jsr @r13
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE316D4
	mov.l @(loc_CE316A0_to_loc_8C05176E,pc),r3 ; r3 set to 0x8C05176E
	jsr @r3
	mov r14,r4
	bra loc_CE316D4
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE31692:
	#data 0x01E8
	#align4

loc_CE31694:
	#data loc_8C052CE2
loc_CE31698_to_loc_8C052DAC:
	#data loc_8C052DAC
loc_CE3169C_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE316A0_to_loc_8C05176E:
	#data loc_8C05176E

;----------------------------------------------
loc_CE316A4:
	jsr @r13
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce316b4
	mov.l @(0xB4,PC),r2
	jsr @r2
	mov r14,r4

loc_CE316B4:
	mov.w @(0xA2,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce316d4
	mov.w @(0x9A,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce316d4
	mov.l @(0xA0,PC),r3
	mov 0x16,r5
	jsr @r3
	mov r14,r4
	mov.w @(0x8A,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_CE316D4:
	mov.l @(loc_CE3176C_to_loc_8C052CE2,pc),r2 ; r2 set to 0x8C052CE2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE316EC
	lds.l @r15+,pr
	mov.l @(loc_CE31770_to_loc_8C052DAC,pc),r2 ; r2 set to 0x8C052DAC
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE316EC:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE316F4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE31774_to_loc_8C04FEA8,pc),r3 ; r3 set to 0x8C04FEA8
	jsr @r3
	mov r4,r14
	mov.l @(loc_CE31778_to_loc_8C050048,pc),r2 ; r2 set to 0x8C050048
	jsr @r2
	mov r14,r4
	mov.w @(loc_CE3175E,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE31716
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE31650
	mov.l @r15+,r14

loc_CE31716:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE31530
	mov.l @r15+,r14

loc_CE3171E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE3177C_to_loc_8C050084,pc),r3 ; r3 set to 0x8C050084
	jsr @r3
	mov r4,r14
	mov.l @(loc_CE31780_to_loc_8C04FF88,pc),r2 ; r2 set to 0x8C04FF88
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE316F4
	mov.l @r15+,r14

loc_CE31736:
	sts.l pr,@-r15
	mov.l @(loc_CE31784_to_loc_8C0511E2,pc),r3 ; r3 set to 0x8C0511E2
	jsr @r3
	mov.l r4,@-r15
	mov.l @r15,r4
	add 0x04,r15
	bra loc_CE31394
	lds.l @r15+,pr

loc_CE31746:
	mov.w @(loc_CE31760,pc),r0 ; r0 set to 0x1FF
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_CE31788_to_loc_CE36D98_to_loc_CE31394,pc),r0 ; r0 set to 0xCE36D98
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE3175a:
	#data 0x01E8
loc_CE3175c:
	#data 0x014B
loc_CE3175E:
	#data 0x01FE
loc_CE31760:
	#data 0x01FF
	#align4

loc_CE31764:
	#data loc_8C05176E
loc_CE31768:
	#data loc_8C04223A
loc_CE3176C_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE31770_to_loc_8C052DAC:
	#data loc_8C052DAC
loc_CE31774_to_loc_8C04FEA8:
	#data loc_8C04FEA8
loc_CE31778_to_loc_8C050048:
	#data loc_8C050048
loc_CE3177C_to_loc_8C050084:
	#data loc_8C050084
loc_CE31780_to_loc_8C04FF88:
	#data loc_8C04FF88
loc_CE31784_to_loc_8C0511E2:
	#data loc_8C0511E2
loc_CE31788_to_loc_CE36D98_to_loc_CE31394:
	#data loc_CE36D98_to_loc_CE31394

;==============================================
loc_CE3178C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf.s loc_ce317ec
	mov 0x00,r13
	mov.l @(0xEC,PC),r3
	jsr @r3
	mov r14,r4
	mov.b @(0x6,r14),r0
	mov 0x05,r5
	mov.l @(0xE8,PC),r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0xCC,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce317ec
	mov.w @(0xC6,PC),r0
	mov 0x18,r1
	mov 0x01,r3
	mov.b r1,@(r0,r14)
	add 0x58,r0
	mov.b r3,@(r0,r14)
	mov 0x14,r5
	mov.l @(0xCC,PC),r3
	mov 0x03,r6
	jsr @r3
	mov r14,r4
	mov.w @(0xB2,PC),r0
	mov.l @(0xC4,PC),r3
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_CE317EC:
	mov.w @(0x96,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_ce317fc
	mov.l @(0xA4,PC),r2
	jsr @r2
	mov r14,r4

loc_CE317FC:
	mov 0x5C,r1
	mov.l @(0xA0,PC),r3
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x4A,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce3184e
	mov.l @(0x60,PC),r3
	mov 0x15,r5
	jsr @r3
	mov r14,r4
	mov.w @(0x3A,PC),r0
	mov.b r13,@(r0,r14)

loc_CE3184E:
	mov.l @(0x58,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31866
	lds.l @r15+,pr
	mov.l @(0x4C,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE31866:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3186E:
	mov r4,r3
	mov.l @(loc_CE318B0_to_loc_CE36DA8_to_loc_CE318B4,pc),r1 ; r1 set to 0xCE36DA8
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE31880:
	#data 0x01FE
loc_CE31882:
	#data 0x01A1
loc_CE31884:
	#data 0x01AC
loc_CE31886:
	#data 0x01FF
loc_CE31888:
	#data 0x014B
	#align4
loc_CE3188c:
	#data loc_8C052B4C
loc_CE31890:
	#data loc_8C056DE4
loc_CE31894:
	#data loc_8C034E8C
loc_CE31898:
	#data loc_8C2896B0
loc_CE3189c:
	#data loc_8C0511E2
loc_CE318a0:
	#data loc_8C052C84
loc_CE318a4:
	#data loc_8C04223A
loc_CE318a8:
	#data loc_8C034DEE
loc_CE318ac:
	#data loc_8C051648
loc_CE318B0_to_loc_CE36DA8_to_loc_CE318B4:
	#data loc_CE36DA8_to_loc_CE318B4

;==============================================
loc_CE318B4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE319B4_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.w @(loc_CE319AC,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_CE31940
	mov.b @(0x06,r14),r0
	fldi0 fr4
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov 0x1E,r0 ; r0 set to 0x1E
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_CE319AE,pc),r0 ; r0 set to 0x202
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_CE31914
	mov.w @(loc_CE319B0,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE318F8
	mova @(loc_CE319B8,pc),r0  ; r0 set to 0xCE319B8
	bra loc_CE318FC
	fmov.s @r0,fr3

loc_CE318F8:
	mova @(loc_CE319BC,pc),r0  ; r0 init to 0xCE319BC
	fmov.s @r0,fr3

loc_CE318FC:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_CE319B0,pc),r0 ; r0 set to 0x1D2, r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE3190E
	mova @(loc_CE319C0,pc),r0  ; r0 set to 0xCE319C0, r0 set to 0xCE319C0
	bra loc_CE3193C
	fmov.s @r0,fr3

loc_CE3190E:
	mova @(loc_CE319C4,pc),r0  ; r0 init to 0xCE319C4
	bra loc_CE3193C
	fmov.s @r0,fr3

loc_CE31914:
	mov.w @(loc_CE319B0,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE31922
	mova @(loc_CE319C8,pc),r0  ; r0 set to 0xCE319C8
	bra loc_CE31926
	fmov.s @r0,fr3

loc_CE31922:
	mova @(loc_CE319CC,pc),r0  ; r0 init to 0xCE319CC
	fmov.s @r0,fr3

loc_CE31926:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_CE319B0,pc),r0 ; r0 set to 0x1D2, r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE31938
	mova @(loc_CE319D0,pc),r0  ; r0 set to 0xCE319D0, r0 set to 0xCE319D0
	bra loc_CE3193C
	fmov.s @r0,fr3

loc_CE31938:
	mova @(0x98,PC),r0
	fmov @r0,fr3

loc_CE3193C:
	mov 0x68,r0
	fmov fr3,@(r0,r14)

loc_CE31940:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE31946:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_CE319B4_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE319D8_to_loc_8C045790,pc),r2 ; r2 set to 0x8C045790
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt/s loc_CE319E0
	mov r0,r5 ; r5 set to 0x60
	mov 0x00,r0 ; r0 set to 0x00
	mov r14,r4
	mov.b r0,@(0x07,r14)
	mov 0x07,r3 ; r3 set to 0x07
	mov.b r0,@(0x06,r14)
	mov.w @(loc_CE319B2,pc),r0 ; r0 set to 0x1F7
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_CE319DC_to_loc_8C0522E0,pc),r3 ; r3 set to 0x8C0522E0
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE319AC:
	#data 0x0141
loc_CE319AE:
	#data 0x0202
loc_CE319B0:
	#data 0x01D2
loc_CE319B2:
	#data 0x01F7
	#align4

loc_CE319B4_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE319B8:
	#data 0x412D5555
loc_CE319BC:
	#data 0xC12D5555
loc_CE319C0:
	#data 0xBEA00000
loc_CE319C4:
	#data 0x3EA00000
loc_CE319C8:
	#data 0x40BAAAAA
loc_CE319CC:
	#data 0xC0BAAAAA
loc_CE319D0:
	#data 0xBDD55555
loc_CE319D4:
	#data 0x3DD55555
loc_CE319D8_to_loc_8C045790:
	#data loc_8C045790
loc_CE319DC_to_loc_8C0522E0:
	#data loc_8C0522E0

;==============================================
loc_CE319E0:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_CE31A00
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_CE31B20_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x05,r6 ; r6 set to 0x05
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x0F,r5 ; r5 set to 0x0F
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE31A00:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE31A06:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_CE31B24_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE31A20
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_CE31B28_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_CE31A20:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_CE31A28:
	mov.l @(loc_CE31B28_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	nop

;==============================================
loc_CE31A2E:
	mov r4,r3
	mov.l @(loc_CE31B2C_to_loc_CE36DB4_to_loc_CE31A40,pc),r1 ; r1 set to 0xCE36DB4
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE31A40:
	mov.b @(0x06,r4),r0
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_CE31B20_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	jmp @r3
	mov 0x12,r5

;==============================================
loc_CE31A4E:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31a66
	mov.l @r15,r3
	mov.b @(0x5,r3),r0
	add 0x01,r0
	mov.b r0,@(0x5,r3)

loc_CE31A66:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_CE31A6E:
	mov.b @(0x06,r4),r0
	mov.l @(loc_CE31B30_to_loc_8C26823C,pc),r3 ; r3 set to 0x8C26823C
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bt loc_CE31A86
	mov.l @(loc_CE31B20_to_loc_8C034E8C,pc),r1 ; r1 set to 0x8C034E8C
	mov 0x00,r6 ; r6 set to 0x00
	jmp @r1
	mov 0x13,r5

loc_CE31A86:
	mov.l @(loc_CE31B20_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x01,r6 ; r6 set to 0x01
	jmp @r2
	mov 0x13,r5

;==============================================
loc_CE31A8E:
	mov.l @(loc_CE31B24_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

;==============================================
loc_CE31A94:
	mov r4,r3
	mov.l @(loc_CE31B34_to_loc_CE36DBC_to_loc_CE31A6E,pc),r1 ; r1 set to 0xCE36DBC
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE31AA6:
	mov.b @(0x06,r4),r0
	mov 0x02,r6 ; r6 set to 0x02
	mov.l @(loc_CE31B20_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	jmp @r3
	mov 0x13,r5

;==============================================
loc_CE31AB4:
	mov.l @(loc_CE31B24_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

;==============================================
loc_CE31ABA:
	mov r4,r3
	mov.l @(loc_CE31B38_to_loc_CE36DC4_to_loc_CE31AA6,pc),r1 ; r1 set to 0xCE36DC4
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE31ACC:
	mov.b @(0x06,r4),r0
	mov 0x02,r6 ; r6 set to 0x02
	mov.l @(loc_CE31B20_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	jmp @r3
	mov 0x13,r5

;==============================================
loc_CE31ADA:
	mov.l @(loc_CE31B24_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

;==============================================
loc_CE31AE0:
	mov r4,r3
	mov.l @(loc_CE31B3C_to_loc_CE36DCC_to_loc_CE31ACC,pc),r1 ; r1 set to 0xCE36DCC
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE31AF2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE31B40_to_loc_8C046C8A,pc),r3 ; r3 set to 0x8C046C8A
	jsr @r3
	mov r4,r14
	tst r0,r0
	bt loc_CE31B0A
	lds.l @r15+,pr
	mov.l @(loc_CE31B28_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE31B0A:
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r2
	mov.l @(loc_CE31B44_to_loc_CE36DD4_to_loc_CE31A94,pc),r0 ; r0 set to 0xCE36DD4
	extu.b r2,r2
	lds.l @r15+,pr
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_CE31B20_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE31B24_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE31B28_to_loc_8C051648:
	#data loc_8C051648
loc_CE31B2C_to_loc_CE36DB4_to_loc_CE31A40:
	#data loc_CE36DB4_to_loc_CE31A40
loc_CE31B30_to_loc_8C26823C:
	#data loc_8C26823C
loc_CE31B34_to_loc_CE36DBC_to_loc_CE31A6E:
	#data loc_CE36DBC_to_loc_CE31A6E
loc_CE31B38_to_loc_CE36DC4_to_loc_CE31AA6:
	#data loc_CE36DC4_to_loc_CE31AA6
loc_CE31B3C_to_loc_CE36DCC_to_loc_CE31ACC:
	#data loc_CE36DCC_to_loc_CE31ACC
loc_CE31B40_to_loc_8C046C8A:
	#data loc_8C046C8A
loc_CE31B44_to_loc_CE36DD4_to_loc_CE31A94:
	#data loc_CE36DD4_to_loc_CE31A94

;==============================================
loc_CE31B48:
	mov.w @(loc_CE31C52,pc),r0 ; r0 set to 0x1E9
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_CE31C5C_to_loc_CE36DE8_to_loc_CE31B96,pc),r0 ; r0 set to 0xCE36DE8
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_CE31B5C:
	mov.l r14,@-r15
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	mov r4,r14
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_CE31C60_to_loc_8C05218A,pc),r3 ; r3 set to 0x8C05218A
	sts.l pr,@-r15
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_CE31C54,pc),r0 ; r0 set to 0x1FC
	mov.b r4,@(r0,r14)
	add 0xFD,r0 ; r0 set to 0x1F9
	mov.b r4,@(r0,r14)
	mov.w @(loc_CE31C56,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_CE31C64_to_loc_8C05115A,pc),r2 ; r2 set to 0x8C05115A
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE31B96:
	mov r4,r3
	mov.l @(loc_CE31C68_to_loc_CE36E40_to_loc_CE31BA8,pc),r1 ; r1 set to 0xCE36E40
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE31BA8:
	mov r4,r3
	mov.l @(loc_CE31C6C_to_loc_CE36E48_to_loc_CE31BBA,pc),r1 ; r1 set to 0xCE36E48
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE31BBA:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x32,r3 ; r3 set to 0x32
	mov 0x00,r4 ; r4 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov 0x08,r5 ; r5 set to 0x08
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_CE31C58,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_CE31C70_to_loc_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_CE31C74_to_loc_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	bsr loc_CE31B5C
	mov r14,r4
	mov.l @(loc_CE31C78_to_loc_8C042008,pc),r2 ; r2 set to 0x8C042008
	mov 0x03,r5 ; r5 set to 0x03
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE31C7C_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov r14,r4
	mov 0x00,r6 ; r6 set to 0x00
	mov 0x15,r5 ; r5 set to 0x15
	jmp @r3
	mov.l @r15+,r14

loc_CE31C0E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE31C80_to_loc_8C0511E2,pc),r3 ; r3 set to 0x8C0511E2
	mov.w @(loc_CE31C5A,pc),r13 ; r13 set to 0x2A4
	jsr @r3
	add r14,r13 ; r13 ??? bc r14 is ???
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_CE31C84_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE31C8C
	lds.l @r15+,pr
	mov.l @(loc_CE31C88_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE31C52:
	#data 0x01E9
loc_CE31C54:
	#data 0x01FC
loc_CE31C56:
	#data 0x041C
loc_CE31C58:
	#data 0x01A1
loc_CE31C5A:
	#data 0x02A4
	#align4

loc_CE31C5C_to_loc_CE36DE8_to_loc_CE31B96:
	#data loc_CE36DE8_to_loc_CE31B96
loc_CE31C60_to_loc_8C05218A:
	#data loc_8C05218A
loc_CE31C64_to_loc_8C05115A:
	#data loc_8C05115A
loc_CE31C68_to_loc_CE36E40_to_loc_CE31BA8:
	#data loc_CE36E40_to_loc_CE31BA8
loc_CE31C6C_to_loc_CE36E48_to_loc_CE31BBA:
	#data loc_CE36E48_to_loc_CE31BBA
loc_CE31C70_to_loc_8C2896B0:
	#data loc_8C2896B0
loc_CE31C74_to_loc_8C056DE4:
	#data loc_8C056DE4
loc_CE31C78_to_loc_8C042008:
	#data loc_8C042008
loc_CE31C7C_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE31C80_to_loc_8C0511E2:
	#data loc_8C0511E2
loc_CE31C84_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE31C88_to_loc_8C051648:
	#data loc_8C051648

;==============================================
loc_CE31C8C:
	mov.w @(0x9E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce31cbe
	mov.b @(r0,r14),r3
	add 0x61,r0
	mov 0x00,r4
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x94,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x70,PC),r0
	mov.b r4,@(r0,r14)

loc_CE31CBE:
	mov.w @(0x6E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce31d0e
	mov.w @(0x6C,PC),r0
	mov.w @(0x66,PC),r5
	mov.b @(r0,r14),r3
	mov.w @(0x64,PC),r4
	tst r3,r3
	bt loc_ce31ce6
	mov.w @r13,r3
	extu.w r3,r3
	tst r5,r3
	bf loc_ce31cfa               ; loc_ce31cf8+0x2
	mov.w @r13,r1
	extu.w r1,r1
	tst r4,r1
	bf loc_ce31d04               ; loc_ce31cf8+0xc
	bra loc_ce31d0e
	nop 

loc_CE31CE6:
	mov.w @(0x4E,PC),r0
	mov.w @(0x4E,PC),r3
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_ce31d0e
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r5,r2
	bt loc_ce31d00

loc_CE31CFA:
	mova @(0x44,PC),r0
	bra loc_ce31d10
	fmov @r0,fr3

loc_CE31D00:
	tst r4,r2
	bt loc_ce31d14

loc_CE31D04:
	mova @(0x3C,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	bra loc_ce31d14
	fmov fr3,@(r0,r14)

loc_CE31D0E:
	fldi0 fr3

loc_CE31D10:
	mov 0x5C,r0
	fmov fr3,@(r0,r14)

loc_CE31D14:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE31D1C:
	mov r4,r3
	mov.l @(loc_CE31D48_to_loc_CE36E50_to_loc_CE31D4C,pc),r1 ; r1 set to 0xCE36E50
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE31D32e:
	#data 0x0140
loc_CE31D330:
	#data 0x0141
loc_CE31D332:
	#data 0x0800
loc_CE31D334:
	#data 0x0400
loc_CE31D336:
	#data 0x0525
loc_CE31D338:
	#data 0x0340
loc_CE31D33a:
	#data 0x0C00
	#align4

loc_CE31D3c:
	#data loc_8C2896B0
loc_CE31D40:
	#data 0xC0555555
loc_CE31D44:
	#data 0x40555555
loc_CE31D48_to_loc_CE36E50_to_loc_CE31D4C:
	#data loc_CE36E50_to_loc_CE31D4C

;==============================================
loc_CE31D4C:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x34,r3 ; r3 set to 0x34
	mov.l r13,@-r15
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_CE31E38,pc),r13 ; r13 set to 0x2A4
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov 0x08,r5 ; r5 set to 0x08
	add r14,r13 ; r13 ??? bc r14 is ???
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_CE31E3A,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.l @(loc_CE31E48_to_loc_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	add 0x7C,r2
	shll r0 ; r0 set to 0x188
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_CE31E4C_to_loc_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(loc_CE31E50_to_loc_8C05218A,pc),r3 ; r3 set to 0x8C05218A
	jsr @r3
	mov r14,r4
	mova @(loc_CE31E54,pc),r0  ; r0 set to 0xCE31E54
	mov.l @(loc_CE31E5C_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	fmov.s @r0,fr3 ; r3 ??
	mov 0x60,r0 ; r0 set to 0x60
	mov 0x15,r5 ; r5 set to 0x15
	fmov.s fr3,@(r0,r14)
	mova @(loc_CE31E58,pc),r0  ; r0 set to 0xCE31E58
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C
	mov 0x01,r6 ; r6 set to 0x01
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fldi0 fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mova @(loc_CE31E60,pc),r0  ; r0 set to 0xCE31E60
	fmov.s @r0,fr3
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_CE31E3C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_CE31DEE
	mov 0x5C,r0 ; r0 set to 0x5C
	mov.w @(loc_CE31E3E,pc),r4 ; r4 set to 0x800
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_CE31E40,pc),r0 ; r0 set to 0x525
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE31DE0
	mov.w @r13,r3
	extu.w r3,r3
	tst r4,r3
	bt loc_CE31E0E
	bra loc_CE31E16
	nop

loc_CE31DE0:
	mov.w @(loc_CE31E42,pc),r0 ; r0 set to 0x340
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r4,r1
	bf loc_CE31E16
	bra loc_CE31E0E
	nop

loc_CE31DEE:
	mov.w @(loc_CE31E40,pc),r0 ; r0 set to 0x525
	mov.w @(loc_CE31E44,pc),r4 ; r4 set to 0x400
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE31E04
	mov.w @r13,r3
	extu.w r3,r3
	tst r4,r3
	bf loc_CE31E16
	bra loc_CE31E0E
	nop

loc_CE31E04:
	mov.w @(0x3A,PC),r0
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r4,r1
	bf loc_ce31e16

loc_CE31E0E:
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE31E16:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE31E1E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE31E64_to_loc_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
	jsr @r3
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bt loc_CE31E6C
	lds.l @r15+,pr
	mov.l @(loc_CE31E68_to_loc_8C052DAC,pc),r3 ; r3 set to 0x8C052DAC
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE31E38:
	#data 0x02A4
loc_CE31E3A:
	#data 0x01A1
loc_CE31E3C:
	#data 0x0130
loc_CE31E3E:
	#data 0x0800
loc_CE31E40:
	#data 0x0525
loc_CE31E42:
	#data 0x0340
loc_CE31E44:
	#data 0x0400
	#align4

loc_CE31E48_to_loc_8C2896B0:
	#data loc_8C2896B0
loc_CE31E4C_to_loc_8C056DE4:
	#data loc_8C056DE4
loc_CE31E50_to_loc_8C05218A:
	#data loc_8C05218A
loc_CE31E54:
	#data 0x40CDB6DB
loc_CE31E58:
	#data 0xBF4DB6DB
loc_CE31E5C_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE31E60:
	#data 0x40555555
loc_CE31E64_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE31E68_to_loc_8C052DAC:
	#data loc_8C052DAC

;----------------------------------------------
loc_CE31E6C:
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_CE31FA0_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	add r14,r1 ; r1 ??? bc r14 is ???
	mov r14,r4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_CE31EAE:
mov r4,r3
mov.l @(loc_CE31FA4_to_loc_CE36E58_to_loc_CE31EC0,pc),r1 ; r1 set to 0xCE36E58
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

;==============================================
loc_CE31EC0:
	mov r4,r3
	mov.l @(loc_CE31FA8_to_loc_CE36E60_to_loc_CE31ED2,pc),r1 ; r1 set to 0xCE36E60
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE31ED2:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x33,r3 ; r3 set to 0x33
	mov 0x00,r4 ; r4 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_CE31F92,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_CE31FAC_to_loc_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	bsr loc_CE31B5C
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(loc_CE31FB0_to_loc_8C056DE4,pc),r3 ; r3 set to 0x8C056DE4
	mov 0x08,r5 ; r5 set to 0x08
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE31FB4_to_loc_8C042008,pc),r2 ; r2 set to 0x8C042008
	mov 0x03,r5 ; r5 set to 0x03
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE31FB8_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov r14,r4
	mov 0x02,r6 ; r6 set to 0x02
	mov 0x15,r5 ; r5 set to 0x15
	jmp @r3
	mov.l @r15+,r14

loc_CE31F26:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE31FBC_to_loc_8C0511E2,pc),r3 ; r3 set to 0x8C0511E2
	mov.w @(loc_CE31F94,pc),r13 ; r13 set to 0x2A4
	jsr @r3
	add r14,r13 ; r13 ??? bc r14 is ???
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_CE31FA0_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE31F6A
	lds.l @r15+,pr
	mov.l @(loc_CE31FC0_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE31F6A:
	mov.w @(loc_CE31F96,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_CE31FEC
	mov.w @(loc_CE31F9C,pc),r0 ; r0 set to 0x525
	mov.w @(loc_CE31F98,pc),r5 ; r5 set to 0x400
	mov.b @(r0,r14),r3
	mov.w @(loc_CE31F9A,pc),r4 ; r4 set to 0x800
	tst r3,r3
	bt loc_CE31FC4
	mov.w @r13,r3
	extu.w r3,r3
	tst r4,r3
	bf loc_CE31FD8
	mov.w @r13,r1
	extu.w r1,r1
	tst r5,r1
	bf loc_CE31FE2
	bra loc_CE31FEC
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE31F92:
	#data 0x01A1
loc_CE31F94:
	#data 0x02A4
loc_CE31F96:
	#data 0x0141
loc_CE31F98:
	#data 0x0400
loc_CE31F9A:
	#data 0x0800
loc_CE31F9C:
	#data 0x0525
	#align4

loc_CE31FA0_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE31FA4_to_loc_CE36E58_to_loc_CE31EC0:
	#data loc_CE36E58_to_loc_CE31EC0
loc_CE31FA8_to_loc_CE36E60_to_loc_CE31ED2:
	#data loc_CE36E60_to_loc_CE31ED2
loc_CE31FAC_to_loc_8C2896B0:
	#data loc_8C2896B0
loc_CE31FB0_to_loc_8C056DE4:
	#data loc_8C056DE4
loc_CE31FB4_to_loc_8C042008:
	#data loc_8C042008
loc_CE31FB8_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE31FBC_to_loc_8C0511E2:
	#data loc_8C0511E2
loc_CE31FC0_to_loc_8C051648:
	#data loc_8C051648

;==============================================
loc_CE31FC4:
	mov.w @(loc_CE320C4,pc),r0 ; r0 set to 0x340
	mov.w @(loc_CE320C6,pc),r3 ; r3 set to 0xC00
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_CE31FEC
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r4,r2
	bt loc_CE31FDE

loc_CE31FD8:
	mova @(loc_CE320D4,pc),r0  ; r0 set to 0xCE320D4, r0 init to 0xCE320D4
	bra loc_CE31FEE
	fmov.s @r0,fr3

loc_CE31FDE:
	tst r5,r2
	bt loc_CE31FF2

loc_CE31FE2:
	mova @(loc_CE320D8,pc),r0  ; r0 init to 0xCE320D8, r0 init to 0xCE320D8
	fmov.s @r0,fr3
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
	bra loc_CE31FF2
	fmov.s fr3,@(r0,r14)

loc_CE31FEC:
	fldi0 fr3

loc_CE31FEE:
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr3,@(r0,r14)

loc_CE31FF2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE31FFA:
	mov r4,r3
	mov.l @(loc_CE320DC_to_loc_CE36E68_to_loc_CE3200C,pc),r1 ; r1 set to 0xCE36E68
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE3200C:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x35,r3 ; r3 set to 0x35
	mov.l r13,@-r15
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_CE320C8,pc),r13 ; r13 set to 0x2A4
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov 0x08,r5 ; r5 set to 0x08
	add r14,r13 ; r13 ??? bc r14 is ???
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_CE320CA,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.l @(loc_CE320E0_to_loc_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	add 0x7C,r2
	shll r0 ; r0 set to 0x188
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_CE320E4_to_loc_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(loc_CE320E8_to_loc_8C05218A,pc),r3 ; r3 set to 0x8C05218A
	jsr @r3
	mov r14,r4
	mova @(loc_CE320EC,pc),r0  ; r0 set to 0xCE320EC
	mov.l @(loc_CE320F4_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	fmov.s @r0,fr3 ; r3 ??
	mov 0x60,r0 ; r0 set to 0x60
	mov 0x15,r5 ; r5 set to 0x15
	fmov.s fr3,@(r0,r14)
	mova @(loc_CE320F0,pc),r0  ; r0 set to 0xCE320F0
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C
	mov 0x03,r6 ; r6 set to 0x03
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fldi0 fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mova @(loc_CE320D8,pc),r0  ; r0 set to 0xCE320D8
	fmov.s @r0,fr3
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_CE320CC,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_CE320AE
	mov 0x5C,r0 ; r0 set to 0x5C
	mov.w @(loc_CE320CE,pc),r4 ; r4 set to 0x800
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_CE320D0,pc),r0 ; r0 set to 0x525
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE320A0
	mov.w @r13,r3
	extu.w r3,r3
	tst r4,r3
	bt loc_CE32102
	bra loc_CE3210A
	nop

loc_CE320A0:
	mov.w @(loc_CE320C4,pc),r0 ; r0 set to 0x340
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r4,r1
	bf loc_CE3210A
	bra loc_CE32102
	nop

loc_CE320AE:
	mov.w @(loc_CE320D0,pc),r0 ; r0 set to 0x525
	mov.w @(loc_CE320D2,pc),r4 ; r4 set to 0x400
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE320F8
	mov.w @r13,r3
	extu.w r3,r3
	tst r4,r3
	bf loc_CE3210A
	bra loc_CE32102
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE320C4:
	#data 0x0340
loc_CE320C6:
	#data 0x0C00
loc_CE320C8:
	#data 0x02A4
loc_CE320CA:
	#data 0x01A1
loc_CE320CC:
	#data 0x0130
loc_CE320CE:
	#data 0x0800
loc_CE320D0:
	#data 0x0525
loc_CE320D2:
	#data 0x0400
	#align4

loc_CE320D4:
	#data 0xC0200000
loc_CE320D8:
	#data 0x40200000
loc_CE320DC_to_loc_CE36E68_to_loc_CE3200C:
	#data loc_CE36E68_to_loc_CE3200C
loc_CE320E0_to_loc_8C2896B0:
	#data loc_8C2896B0
loc_CE320E4_to_loc_8C056DE4:
	#data loc_8C056DE4
loc_CE320E8_to_loc_8C05218A:
	#data loc_8C05218A
loc_CE320EC:
	#data 0x40CDB6DB
loc_CE320F0:
	#data 0xBF4DB6DB
loc_CE320F4_to_loc_8C034E8C:
	#data loc_8C034E8C

;----------------------------------------------
loc_CE320F8:
	mov.w @(0x128,PC),r0
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r4,r1
	bf loc_ce3210a

loc_CE32102:
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE3210A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE32112:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE3222C_to_loc_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
	jsr @r3
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bt loc_CE3212C
	lds.l @r15+,pr
	mov.l @(loc_CE32230_to_loc_8C052DAC,pc),r3 ; r3 set to 0x8C052DAC
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE3212C:
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_CE32234_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	add r14,r1 ; r1 ??? bc r14 is ???
	mov r14,r4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE3216E:
	mov r4,r3
	mov.l @(loc_CE32238_to_loc_CE36E70_to_loc_CE32180,pc),r1 ; r1 set to 0xCE36E70
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE32180:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x30,r3 ; r3 set to 0x30
	mov 0x00,r4 ; r4 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x06,r5 ; r5 set to 0x06
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_CE32226,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_CE3223C_to_loc_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_CE32240_to_loc_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	bsr loc_CE31B5C
	mov r14,r4
	mov.w @(loc_CE32228,pc),r0 ; r0 set to 0x1A3
	mov r14,r4
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @(loc_CE32244_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	add 0x04,r6
	jmp @r3
	mov.l @r15+,r14

loc_CE321D0:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_CE32234_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE3224C
	lds.l @r15+,pr
	mov.l @(loc_CE32248_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE32224:
	#data 0x0340
loc_CE32226:
	#data 0x01A1
loc_CE32228:
	#data 0x01A3
	#align4

loc_CE3222C_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE32230_to_loc_8C052DAC:
	#data loc_8C052DAC
loc_CE32234_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE32238_to_loc_CE36E70_to_loc_CE32180:
	#data loc_CE36E70_to_loc_CE32180
loc_CE3223C_to_loc_8C2896B0:
	#data loc_8C2896B0
loc_CE32240_to_loc_8C056DE4:
	#data loc_8C056DE4
loc_CE32244_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE32248_to_loc_8C051648:
	#data loc_8C051648

;==============================================
loc_CE3224C:
	mov.w @(0xD8,PC),r3
	mov 0x5C,r0
	fldi0 fr3
	add r14,r3
	fmov fr3,@(r0,r14)
	mov.b @(0x1,r3),r0
	tst r0,r0
	bt loc_ce322b4               ; loc_ce32274+0x40
	mov.w @(0xC8,PC),r0
	mov.w @(0xC8,PC),r3
	add r14,r0
	mov.l @(0xCC,PC),r2
	add r14,r3
	mov.b @(0x1,r0),r0
	mov.b @r3,r3
	add 0xFF,r0
	extu.b r3,r3
	shll2 r0
	add r0,r2
	shll r3
	add r2,r3
	mov.w @r3,r3
	mova @(0xB8,PC),r0
	fmov @r0,fr2
	mova @(0xB8,PC),r0
	lds r3,fpul
	fmov @r0,fr1
	mov 0x5C,r0
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr1,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x9C,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_ce3229c
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE3229C:
	mov.w @(0x88,PC),r0
	add r14,r0
	mov.b @(0x1,r0),r0
	cmp/eq 0x02,r0
	bf loc_ce322ac
	mov.l @(0x94,PC),r2
	jsr @r2
	mov r14,r4

loc_CE322AC:
	mov.w @(0x78,PC),r3
	mov 0x00,r0
	add r14,r3
	mov.b r0,@(0x1,r3)

loc_CE322B4:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE322BA:
	mov r4,r3
	mov.l @(loc_CE32340_to_loc_CE36E84_to_loc_CE322CC,pc),r1 ; r1 set to 0xCE36E84
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE322CC:
	mov r4,r3
	mov.l @(loc_CE32344_to_loc_CE36E8C_to_loc_CE322DE,pc),r1 ; r1 set to 0xCE36E8C
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE322DE:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov 0x0A,r5 ; r5 set to 0x0A
	mov.l @(loc_CE32348_to_loc_8C056DE4,pc),r3 ; r3 set to 0x8C056DE4
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	jsr @r3
	mov r14,r4
	bsr loc_CE31B5C
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE3234C_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov r14,r4
	mov 0x08,r6 ; r6 set to 0x08
	mov 0x0F,r5 ; r5 set to 0x0F
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_CE32304:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(loc_CE32350_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE32354
	mov.l @(loc_CE3234C_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x08,r0 ; r0 set to 0x08
	mov 0x0F,r5 ; r5 set to 0x0F
	mov.b r0,@(0x07,r14)
	mov 0x09,r6 ; r6 set to 0x09
	jsr @r3
	mov r14,r4
	bra loc_CE323AA
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE32328:
	#data 0x0150
loc_CE3232a:
	#data 0x01A3
loc_CE3232c:
	#data 0x0130
	#align4

loc_CE32330_to_loc_CE36E78:
	#data loc_CE36E78
loc_ce32334:
	#data 0x3FD55555
loc_ce32338:
	#data 0x43800000
loc_ce3233c:
	#data loc_8C060B40
loc_CE32340_to_loc_CE36E84_to_loc_CE322CC:
	#data loc_CE36E84_to_loc_CE322CC
loc_CE32344_to_loc_CE36E8C_to_loc_CE322DE:
	#data loc_CE36E8C_to_loc_CE322DE
loc_CE32348_to_loc_8C056DE4:
	#data loc_8C056DE4
loc_CE3234C_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE32350_to_loc_8C034DEE:
	#data loc_8C034DEE

;----------------------------------------------
loc_CE32354:
	mov.l @(0xB8,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_ce323aa
	mov.l r0,@r15
	mov.b @(0x7,r14),r0
	mov 0x05,r6
	mov.l @(0xAC,PC),r3
	mov r6,r5
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xA4,PC),r2
	mov 0x05,r5
	jsr @r2
	mov r14,r4
	mova @(0xA0,PC),r0
	mov r15,r5
	fmov @r0,fr3
	mov 0x04,r0
	mov.l @(0xA0,PC),r3
	add 0x04,r5
	fmov fr3,@(r0,r15)
	mova @(0x98,PC),r0
	fmov @r0,fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0x94,PC),r2
	mov 0x0F,r5
	mov 0x0A,r6
	jsr @r2
	mov r14,r4
	mov.w @(0x68,PC),r0
	mov.w @(0x64,PC),r3
	mov.b r3,@(r0,r14)
	mov.l @(0x88,PC),r3
	mov.l @r15,r5
	jsr @r3
	mov r14,r4

loc_CE323AA:
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE323B2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE3240C,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r2 ; r2 set to 0x01
	mov r4,r14
	mov 0x02,r4 ; r4 set to 0x02
	mov.w @(loc_CE3240A,pc),r3 ; r3 set to 0x2A4
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov 0x03,r3 ; r3 set to 0x03
	mov.b r2,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x1ED
	mov.b r4,@(r0,r14)
	add 0x08,r0 ; r0 set to 0x1F5
	mov.b r4,@(r0,r14)
	add 0xFD,r0 ; r0 set to 0x1F2
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE32430_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE323FE
	mov.b @(0x07,r14),r0
	mov 0x0F,r5 ; r5 set to 0x0F
	mov r14,r4
	mov 0x0B,r6 ; r6 set to 0x0B
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov.b r0,@(0x02,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE32428_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	jmp @r3
	mov.l @r15+,r14

loc_CE323FE:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14
;==============================================
loc_CE32406:
	#data 0x00C3
loc_CE32408:
	#data 0x01F7
loc_CE3240A:
	#data 0x02A4
loc_CE3240C:
	#data 0x01EA
	#align4

loc_ce32410:
	#data loc_8C0457E0
loc_ce32414:
	#data loc_8C02FEC4
loc_ce32418:
	#data loc_8C042008
loc_ce3241C:
	#data 0xC312AAAA
loc_ce32420:
	#data 0x432B6DB6
loc_ce32424:
	#data loc_8C103660
loc_CE32428_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE3242C:
	#data loc_8C0523D8
loc_CE32430_to_loc_8C034DEE:
	#data loc_8C034DEE

;==============================================
loc_CE32434:
	mov.w @(0x150,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov 0x02,r4
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add 0x03,r0
	mov.b r4,@(r0,r14)
	add 0x08,r0
	mov.b r4,@(r0,r14)
	add 0xFD,r0
	mov 0x03,r3
	mov.b r3,@(r0,r14)
	mov.l @(0x140,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce324f0
	mov.b @(0x7,r14),r0
	mov.l @(0x138,PC),r4
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0x134,PC),r0
	fmov @r0,fr4
	mov.w @(0x11E,PC),r0
	mov.b @(r0,r14),r3
	mova @(0x130,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r4,r3
	mov.l @r3,r1
	lds r1,fpul
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0x110,PC),r0
	fmov @r0,fr5
	mov.w @(0xF2,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r4,r3
	mov.l @(0x4,r3),r1
	mov 0x60,r0
	lds r1,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xD4,PC),r0
	mov.b @(r0,r14),r3
	mov 0x6C,r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r3,r4
	mov.l @(0x8,r4),r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr1
	fldi0 fr3
	fcmp/gt fr1,fr3
	bt.s loc_ce324e4
	mov 0x0C,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr1
	fneg fr1
	fmov fr1,@(r0,r14)

loc_CE324E4:
	lds.l @r15+,pr
	mov.l @(0xC0,PC),r3
	mov 0x0F,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE324F0:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE324F6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x02,r4 ; r4 set to 0x02
	mov.w @(loc_CE32588,pc),r0 ; r0 set to 0x1EA
	mov 0x03,r3 ; r3 set to 0x03
	mov.l r12,@-r15
	mov 0x01,r12 ; r12 set to 0x01
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.w @(loc_CE3258C,pc),r13 ; r13 set to 0x2A4
	add r14,r1 ; r1 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.b r12,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x1ED
	mov.b r4,@(r0,r14)
	add 0x08,r0 ; r0 set to 0x1F5
	mov.b r4,@(r0,r14)
	add 0xFD,r0 ; r0 set to 0x1F2
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	add r14,r13 ; r13 ??? bc r14 is ???
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r1 ; r1 set to 0x60
	mov.l @(loc_CE32594_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(loc_CE325AC_to_loc_8C055D2E,pc),r2 ; r2 set to 0x8C055D2E
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_CE325C8
	mov.w @(loc_CE3258E,pc),r0 ; r0 set to 0x525
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
	tst r2,r2
	bt loc_CE325B0
	mov.w @(loc_CE32590,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE325B4
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x142
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x01,r0
	bt loc_CE325B4
	mov.w @(loc_CE32592,pc),r0 ; r0 set to 0x142
	mov.b @(r0,r14),r2
	add 0xFF,r2
	bra loc_CE325B4
	mov.b r2,@(r0,r14)

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE32588:
	#data 0x01EA
loc_CE3258a:
	#data 0x01A3
loc_CE3258C:
	#data 0x02A4
loc_CE3258E:
	#data 0x0525
loc_CE32590:
	#data 0x0141
loc_CE32592:
	#data 0x0142
	#align4

loc_CE32594_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE32598_to_loc_CE36EB0:
	#data loc_CE36EB0
loc_CE3259c:
	#data 0x47800000
loc_CE325a0:
	#data 0x3FD55555
loc_CE325a4:
	#data 0x40092492
loc_CE325a8:
	#data loc_8C034E8C
loc_CE325AC_to_loc_8C055D2E:
	#data loc_8C055D2E

;----------------------------------------------
loc_CE325B0:
	mov.w @(0xEE,PC),r0
	mov.b r12,@(r0,r14)

loc_CE325B4:
	mov.b @(0x2,r13),r0
	mov 0x14,r4
	add 0x01,r0
	mov.b r0,@(0x2,r13)
	mov.b @(0x2,r13),r0
	cmp/gt r4,r0
	bf loc_ce325c8
	mov r4,r0
	nop 
	mov.b r0,@(0x2,r13)

loc_CE325C8:
	mov.l @(loc_CE326AC_to_loc_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE32610
	mov.b @(0x07,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.l @(loc_CE326B0_to_loc_8C26A518,pc),r4 ; r4 set to 0x8C26A518
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x05,r4)
	mov r12,r0 ; r0 ??? bc r12 is ???
	nop
	mov.l @(loc_CE326B4_to_loc_CE36B7A,pc),r3 ; r3 set to 0xCE36B7A
	mov.b r0,@(0x06,r4)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_CE326B8_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x0F,r5 ; r5 set to 0x0F
	mov r14,r4
	mov 0x0D,r6 ; r6 set to 0x0D
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE32610:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3261A:
	mov.w @(0x86,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov 0x02,r4
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add 0x03,r0
	mov.b r4,@(r0,r14)
	add 0x08,r0
	mov.b r4,@(r0,r14)
	add 0xFD,r0
	mov 0x03,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x6C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_ce32644
	mov r14,r4
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_CE32644:
	mov.l @(0x74,PC),r3
	jsr @r3
	nop 
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce3269c
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mova @(0x60,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x5C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce32690
	mov 0x0E,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE32690:
	lds.l @r15+,pr
	mov.l @(0x24,PC),r3
	mov 0x0F,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE3269C:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE326A2:
	#data 0x0142
loc_CE326A4:
	#data 0x01EA
loc_CE326A6:
	#data 0x0141
loc_CE326A8:
	#data 0x01D2
	#align4

loc_CE326AC_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE326B0_to_loc_8C26A518:
	#data loc_8C26A518
loc_CE326B4_to_loc_CE36B7A:
	#data loc_CE36B7A
loc_CE326B8_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE326BC:
	#data loc_8C034DEE
loc_CE326C0:
	#data 0x40A00000
loc_CE326C4:
	#data 0xBDD55555
loc_CE326C8:
	#data 0x41892492
loc_CE326CC:
	#data 0xBF2B6DB6

;==============================================
loc_CE326D0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE32842,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r2 ; r2 set to 0x01
	mov r4,r14
	mov 0x02,r13 ; r13 set to 0x02
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.w @(loc_CE32840,pc),r3 ; r3 set to 0x2A4
	add r14,r1 ; r1 ??? bc r14 is ???
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.b r2,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x1ED
	mov.b r13,@(r0,r14)
	add 0x08,r0 ; r0 set to 0x1F5
	mov.b r13,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fmov.s @r1,fr3
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	mov 0x6C,r1 ; r1 set to 0x6C
	fmov.s fr2,@(r0,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_CE3284C_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE3274C
	mov.b @(0x07,r14),r0
	mov 0x0F,r5 ; r5 set to 0x0F
	mov r14,r4
	mov 0x21,r6 ; r6 set to 0x21
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE32850_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r3
	mov.l @r15+,r14

loc_CE3274C:
	mov.w @(0xF4,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce32796
	mov 0x00,r3
	mov r3,r5
	mov r3,r6
	mov.b r3,@(r0,r14)
	mov.l @(0xF4,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xE0,PC),r0
	mov.w @(0xE0,PC),r1
	mov.l @(r0,r14),r4
	add 0xEC,r0
	add r14,r1
	mov.l r14,@(r0,r4)
	add 0x42,r0
	mov.b r13,@(r0,r4)
	add 0xAD,r0
	mov.b @(r0,r14),r3
	add 0xFE,r0
	add 0x25,r3
	mov.b r3,@(r0,r4)
	add 0x02,r0
	mov.b @(r0,r14),r2
	add 0xFE,r0
	add 0x25,r2
	mov.b r2,@(r0,r14)
	mov.l @r15,r3
	mov.b @(0x2,r3),r0
	mov 0x00,r3
	cmp/gt r0,r3
	addc r3,r0
	shar r0
	add 0x20,r0
	mov.b r0,@r1

loc_CE32796:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE327A0:
	mov.w @(loc_CE32842,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	mov 0x02,r4 ; r4 set to 0x02
	mov 0x5C,r1 ; r1 set to 0x5C
	add r14,r1 ; r1 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x1ED
	mov.b r4,@(r0,r14)
	add 0x08,r0 ; r0 set to 0x1F5
	mov.b r4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x6C,r1 ; r1 set to 0x6C
	mov.l @(loc_CE32858_to_loc_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	extu.b r0,r0 ; r0 set to 0x60
	tst r0,r0
	bt loc_CE32814
	mov.l @(loc_CE3285C_to_loc_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4
	jsr @r3
	mov r14,r4
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_CE32850_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x22,r6 ; r6 set to 0x22
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x07,r14)
	mov 0x0F,r5 ; r5 set to 0x0F
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE32814:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3281A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE3284C_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE3283A
	mov.w @(loc_CE32848,pc),r0 ; r0 set to 0x205
	mov 0x00,r3 ; r3 set to 0x00
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_CE32860_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	mov.l @r15+,r14

loc_CE3283A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE32840:
	#data 0x02A4
loc_CE32842:
	#data 0x01EA
loc_CE32844:
	#data 0x0141
loc_CE32846:
	#data 0x01C8
loc_CE32848:
	#data 0x0205
	#align4

loc_CE3284C_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE32850_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE32854:
	#data loc_8C02FEC4
loc_CE32858_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE3285C_to_loc_8C0511B4:
	#data loc_8C0511B4
loc_CE32860_to_loc_8C051648:
	#data loc_8C051648

;==============================================
loc_CE32864:
	mov r4,r3
	mov.l @(loc_CE32978_to_loc_CE36EC8_to_loc_CE32876,pc),r1 ; r1 set to 0xCE36EC8
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE32876:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x25,r3 ; r3 set to 0x25
	mov 0x00,r4 ; r4 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov 0x0A,r5 ; r5 set to 0x0A
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_CE32970,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_CE3297C_to_loc_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_CE32980_to_loc_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(loc_CE32984_to_loc_8C05218A,pc),r3 ; r3 set to 0x8C05218A
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE32988_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x0F,r6 ; r6 set to 0x0F
	mov r6,r5 ; r5 set to 0x0F
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE328C4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(loc_CE3298C_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE32912
	mov 0x09,r0 ; r0 set to 0x09
	mov.l @(loc_CE32988_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b r0,@(0x07,r14)
	mova @(loc_CE32990,pc),r0  ; r0 set to 0xCE32990
	fmov.s @r0,fr3 ; r3 ??
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	mov 0x0F,r5 ; r5 set to 0x0F
	mov 0x10,r6 ; r6 set to 0x10
	fdiv fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fldi0 fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_CE32994,pc),r0  ; r0 set to 0xCE32994
	fmov.s @r0,fr2
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr1
	fdiv fr2,fr1
	fmov.s fr1,@(r0,r14)
	mova @(loc_CE32998,pc),r0  ; r0 set to 0xCE32998
	fmov.s @r0,fr1
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s @(r0,r14),fr0 ; r0 ??? bc r14 is ???
	fdiv fr1,fr0
	fmov.s fr0,@(r0,r14)
	jsr @r3
	mov r14,r4
	bra loc_CE32968
	nop

loc_CE32912:
	mov.l @(0x88,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_ce32968
	mov.l r0,@r15
	mov.l @(0x80,PC),r2
	mov 0x05,r5
	jsr @r2
	mov r14,r4
	mov.b @(0x7,r14),r0
	mov 0x05,r6
	mov.l @(0x78,PC),r3
	mov r6,r5
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	jsr @r3
	mov r14,r4
	mova @(0x70,PC),r0
	mov r15,r5
	fmov @r0,fr3
	mov 0x04,r0
	mov.l @(0x70,PC),r3
	add 0x04,r5
	fmov fr3,@(r0,r15)
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0x34,PC),r2
	mov 0x0F,r5
	mov 0x11,r6
	jsr @r2
	mov r14,r4
	mov.w @(0x16,PC),r0
	mov.w @(0x12,PC),r3
	mov.b r3,@(r0,r14)
	mov.l @(0x50,PC),r3
	mov.l @r15,r5
	jsr @r3
	mov r14,r4

loc_CE32968:
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE32970:
	#data 0x01A1
loc_CE32972:
	#data 0x00C4
loc_CE32974:
	#data 0x01F7
	#align4

loc_CE32978_to_loc_CE36EC8_to_loc_CE32876:
	#data loc_CE36EC8_to_loc_CE32876
loc_CE3297C_to_loc_8C2896B0:
	#data loc_8C2896B0
loc_CE32980_to_loc_8C056DE4:
	#data loc_8C056DE4
loc_CE32984_to_loc_8C05218A:
	#data loc_8C05218A
loc_CE32988_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE3298C_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE32990:
	#data 0x41800000
loc_CE32994:
	#data 0x41000000
loc_CE32998:
	#data 0x42800000
loc_CE3299c:
	#data loc_8C0457E0
loc_CE329a0:
	#data loc_8C042008
loc_CE329a4:
	#data loc_8C02FEC4
loc_CE329a8:
	#data 0xC312AAAA
loc_CE329ac:
	#data 0x432B6DB6
loc_CE329b0:
	#data loc_8C103660
loc_CE329b4:
	#data loc_8C0523D8

;==============================================
loc_CE329B8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE32AD0,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r2 ; r2 set to 0x01
	mov r4,r14
	mov 0x02,r4 ; r4 set to 0x02
	mov.w @(loc_CE32ACE,pc),r3 ; r3 set to 0x2A4
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov 0x03,r3 ; r3 set to 0x03
	mov.b r2,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x1ED
	mov.b r4,@(r0,r14)
	add 0x08,r0 ; r0 set to 0x1F5
	mov.b r4,@(r0,r14)
	add 0xFD,r0 ; r0 set to 0x1F2
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE32AD4_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE32A04
	mov.b @(0x07,r14),r0
	mov 0x0F,r5 ; r5 set to 0x0F
	mov r14,r4
	mov 0x12,r6 ; r6 set to 0x12
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov.b r0,@(0x02,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE32AD8_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	jmp @r3
	mov.l @r15+,r14

loc_CE32A04:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE32A0C:
	mov.w @(0xC0,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov 0x02,r4
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add 0x03,r0
	mov.b r4,@(r0,r14)
	add 0x08,r0
	mov.b r4,@(r0,r14)
	add 0xFD,r0
	mov 0x03,r3
	mov.b r3,@(r0,r14)
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce32ac8
	mov.b @(0x7,r14),r0
	mov.l @(0xA4,PC),r4
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0xA0,PC),r0
	fmov @r0,fr4
	mov.w @(0x8E,PC),r0
	mov.b @(r0,r14),r3
	mova @(0x9C,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r4,r3
	mov.l @r3,r1
	lds r1,fpul
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0x7C,PC),r0
	fmov @r0,fr5
	mov.w @(0x62,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r4,r3
	mov.l @(0x4,r3),r1
	mov 0x60,r0
	lds r1,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x44,PC),r0
	mov.b @(r0,r14),r3
	mov 0x6C,r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r3,r4
	mov.l @(0x8,r4),r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr1
	fldi0 fr3
	fcmp/gt fr1,fr3
	bt.s loc_ce32abc
	mov 0x0C,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr1
	fneg fr1
	fmov fr1,@(r0,r14)

loc_CE32ABC:
	lds.l @r15+,pr
	mov.l @(0x18,PC),r3
	mov 0x0F,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE32AC8:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE32ACE:
	#data 0x02A4
loc_CE32AD0:
	#data 0x01EA
loc_CE32AD2:
	#data 0x01A3
	#align4

loc_CE32AD4_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE32AD8_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE32ADC_to_loc_CE36EF0:
	#data loc_CE36EF0
loc_CE32AE0:
	#data 0x47800000
loc_CE32AE4:
	#data 0x3FD55555
loc_CE32AE8:
	#data 0x40092492

;==============================================
loc_CE32AEC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x02,r4 ; r4 set to 0x02
	mov.w @(loc_CE32BEA,pc),r0 ; r0 set to 0x1EA
	mov 0x03,r3 ; r3 set to 0x03
	mov.l r12,@-r15
	mov 0x01,r12 ; r12 set to 0x01
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.w @(loc_CE32BE8,pc),r13 ; r13 set to 0x2A4
	add r14,r1 ; r1 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.b r12,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x1ED
	mov.b r4,@(r0,r14)
	add 0x08,r0 ; r0 set to 0x1F5
	mov.b r4,@(r0,r14)
	add 0xFD,r0 ; r0 set to 0x1F2
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	add r14,r13 ; r13 ??? bc r14 is ???
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r1 ; r1 set to 0x60
	mov.l @(loc_CE32BF4_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(loc_CE32BF8_to_loc_8C055D2E,pc),r2 ; r2 set to 0x8C055D2E
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_CE32B96
	mov.w @(loc_CE32BEC,pc),r0 ; r0 set to 0x525
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
	tst r2,r2
	bt loc_CE32B7E
	mov.w @(loc_CE32BEE,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE32B82
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x142
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x01,r0
	bt loc_CE32B82
	mov.w @(loc_CE32BF0,pc),r0 ; r0 set to 0x142
	mov.b @(r0,r14),r2
	add 0xFF,r2
	bra loc_CE32B82
	mov.b r2,@(r0,r14)

loc_CE32B7E:
	mov.w @(0x6E,PC),r0
	mov.b r12,@(r0,r14)

loc_CE32B82:
	mov.b @(0x2,r13),r0
	mov 0x14,r4
	add 0x01,r0
	mov.b r0,@(0x2,r13)
	mov.b @(0x2,r13),r0
	cmp/gt r4,r0
	bf loc_ce32b96
	mov r4,r0
	nop 
	mov.b r0,@(0x2,r13)

loc_CE32B96:
	mov.l @(loc_CE32BFC_to_loc_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE32BDE
	mov.b @(0x07,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.l @(loc_CE32C00_to_loc_8C26A518,pc),r4 ; r4 set to 0x8C26A518
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x05,r4)
	mov r12,r0 ; r0 ??? bc r12 is ???
	nop
	mov.l @(loc_CE32C04_to_loc_CE36B7A,pc),r3 ; r3 set to 0xCE36B7A
	mov.b r0,@(0x06,r4)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_CE32C08_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x0F,r5 ; r5 set to 0x0F
	mov r14,r4
	mov 0x14,r6 ; r6 set to 0x14
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE32BDE:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE32BE8:
	#data 0x02A4
loc_CE32BEA:
	#data 0x01EA
loc_CE32BEC:
	#data 0x0525
loc_CE32BEE:
	#data 0x0141
loc_CE32BF0:
	#data 0x0142
	#align4

loc_CE32BF4_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE32BF8_to_loc_8C055D2E:
	#data loc_8C055D2E
loc_CE32BFC_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE32C00_to_loc_8C26A518:
	#data loc_8C26A518
loc_CE32C04_to_loc_CE36B7A:
	#data loc_CE36B7A
loc_CE32C08_to_loc_8C034E8C:
	#data loc_8C034E8C

;==============================================
loc_CE32C0C:
	mov.w @(0x146,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov 0x02,r4
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add 0x03,r0
	mov.b r4,@(r0,r14)
	add 0x08,r0
	mov.b r4,@(r0,r14)
	add 0xFD,r0
	mov 0x03,r3
	mov.b r3,@(r0,r14)
	mov.w @(0x12C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_ce32c36
	mov r14,r4
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_CE32C36:
	mov.l @(0x12C,PC),r3
	jsr @r3
	nop 
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce32c84
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0x11C,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0x114,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x110,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xF0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce32c78
	mov 0x0E,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE32C78:
	lds.l @r15+,pr
	mov.l @(0xF8,PC),r3
	mov 0x0F,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE32C84:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE32C8A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE32D56,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r2 ; r2 set to 0x01
	mov r4,r14
	mov 0x02,r13 ; r13 set to 0x02
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.w @(loc_CE32D5C,pc),r3 ; r3 set to 0x2A4
	add r14,r1 ; r1 ??? bc r14 is ???
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.b r2,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x1ED
	mov.b r13,@(r0,r14)
	add 0x08,r0 ; r0 set to 0x1F5
	mov.b r13,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fmov.s @r1,fr3
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	mov 0x6C,r1 ; r1 set to 0x6C
	fmov.s fr2,@(r0,r14)
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_CE32D64_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE32D06
	mov.b @(0x07,r14),r0
	mov 0x0F,r5 ; r5 set to 0x0F
	mov r14,r4
	mov 0x21,r6 ; r6 set to 0x21
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE32D74_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r3
	mov.l @r15+,r14

loc_CE32D06:
	mov.w @(0x4E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce32d4c
	mov 0x00,r3
	mov r3,r5
	mov r3,r6
	mov.b r3,@(r0,r14)
	mov.l @(0x60,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x3E,PC),r0
	mov.w @(0x3E,PC),r1
	mov.l @(r0,r14),r4
	add 0x2E,r0
	add r14,r1
	mov.b r13,@(r0,r4)
	add 0xAD,r0
	mov.b @(r0,r14),r3
	add 0xFE,r0
	add 0x3D,r3
	mov.b r3,@(r0,r4)
	add 0x02,r0
	mov.b @(r0,r14),r2
	add 0xFE,r0
	add 0x3D,r2
	mov.b r2,@(r0,r14)
	mov.l @r15,r3
	mov.b @(0x2,r3),r0
	mov 0x00,r3
	cmp/gt r0,r3
	addc r3,r0
	shar r0
	add 0x20,r0
	mov.b r0,@r1

loc_CE32D4C:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE32D56:
	#data 0x01EA
loc_CE32D58:
	#data 0x0141
loc_CE32D5a:
	#data 0x01D2
loc_CE32D5C:
	#data 0x02A4
loc_CE32D5e:
	#data 0x01C8
loc_CE32D60:
	#data 0x0205
	#align4

loc_CE32D64_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE32D68:
	#data 0x40855555
loc_CE32D6c:
	#data 0x41892492
loc_CE32D70:
	#data 0xBF2B6DB6
loc_CE32D74_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE32D78:
	#data loc_8C02FEC4

;==============================================
loc_CE32D7C:
	mov.w @(loc_CE32ECC,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	mov 0x02,r4 ; r4 set to 0x02
	mov 0x5C,r1 ; r1 set to 0x5C
	add r14,r1 ; r1 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x1ED
	mov.b r4,@(r0,r14)
	add 0x08,r0 ; r0 set to 0x1F5
	mov.b r4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x6C,r1 ; r1 set to 0x6C
	mov.l @(loc_CE32ED4_to_loc_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	extu.b r0,r0 ; r0 set to 0x60
	tst r0,r0
	bt loc_CE32DF0
	mov.l @(loc_CE32ED8_to_loc_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4
	jsr @r3
	mov r14,r4
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_CE32EDC_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x22,r6 ; r6 set to 0x22
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x07,r14)
	mov 0x0F,r5 ; r5 set to 0x0F
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14
	
loc_CE32DF0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE32DF6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE32EE0_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE32E16
	mov.w @(loc_CE32ECE,pc),r0 ; r0 set to 0x205
	mov 0x00,r3 ; r3 set to 0x00
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_CE32EE4_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	mov.l @r15+,r14

loc_CE32E16:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE32E1C:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_CE32EE0_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE32E76
	mov.w @(loc_CE32ECE,pc),r0 ; r0 set to 0x205
	mov 0x00,r3 ; r3 set to 0x00
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_CE32EE8_to_loc_8C05176E,pc),r3 ; r3 set to 0x8C05176E
	jmp @r3
	mov.l @r15+,r14

loc_CE32E76:
	mov.w @(0x56,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_ce32e8a
	mov.w @(0x4A,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_CE32E8A:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE32E90:
	mov r4,r3
	mov.l @(loc_CE32EEC_to_loc_CE36F08_to_loc_CE32EA2,pc),r1 ; r1 set to 0xCE36F08
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE32EA2:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(loc_CE32EF0_to_loc_CE31B5C,pc),r3 ; r3 set to 0xCE31B5C
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE32EF4_to_loc_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4
	mov 0x0A,r5 ; r5 set to 0x0A
	jsr @r2
	mov r14,r4
	mov.w @(loc_CE32ED2,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf/s loc_CE32EF8
	mov 0x0F,r5 ; r5 set to 0x0F
	bra loc_CE32EFA
	mov 0x3D,r6

loc_CE32ECC:
	#data 0x01EA
loc_CE32ECE:
	#data 0x0205
loc_CE32ED0:
	#data 0x041C
loc_CE32ED2:
	#data 0x0255
	#align4

loc_CE32ED4_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE32ED8_to_loc_8C0511B4:
	#data loc_8C0511B4
loc_CE32EDC_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE32EE0_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE32EE4_to_loc_8C051648:
	#data loc_8C051648
loc_CE32EE8_to_loc_8C05176E:
	#data loc_8C05176E
loc_CE32EEC_to_loc_CE36F08_to_loc_CE32EA2:
	#data loc_CE36F08_to_loc_CE32EA2
loc_CE32EF0_to_loc_CE31B5C:
	#data loc_CE31B5C
loc_CE32EF4_to_loc_8C056DE4:
	#data loc_8C056DE4

;==============================================
loc_CE32EF8:
	mov 0x16,r6 ; r6 set to 0x16

loc_CE32EFA:
	mov.l @(loc_CE33018_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8C
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE3301C_to_loc_8C059A44,pc),r3 ; r3 set to 0x8C059A44, r3 set to 0x8C059A44
	mov r14,r4
	mov 0x3C,r7 ; r7 set to 0x3C, r7 set to 0x3C
	mov 0x1E,r6 ; r6 set to 0x1E, r6 set to 0x1E
	mov 0x0A,r5 ; r5 set to 0x0A, r5 set to 0x0A
	jmp @r3
	mov.l @r15+,r14

loc_CE32F10:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(loc_CE33006,pc),r0 ; r0 set to 0x3E4
	mov r4,r14
	mov.w @(loc_CE33008,pc),r2 ; r2 set to 0x150
	mov 0x02,r3 ; r3 set to 0x02
	mov.w r3,@(r0,r14)
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.b @(0x01,r2),r0
	tst r0,r0
	bt loc_CE32F86
	mov.l @(loc_CE33020_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE33024_to_loc_8C045790,pc),r2 ; r2 set to 0x8C045790
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt/s loc_CE32FFE
	mov.l r0,@r15
	mov 0x04,r0 ; r0 set to 0x04
	mov r15,r5
	mov.b r0,@(0x06,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x07,r14)
	mova @(loc_CE33028,pc),r0  ; r0 set to 0xCE33028
	fmov.s @r0,fr3 ; r3 ??
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @(loc_CE33030_to_loc_8C103660,pc),r3 ; r3 set to 0x8C103660
	add 0x04,r5
	fmov.s fr3,@(r0,r15)
	mova @(loc_CE3302C,pc),r0  ; r0 set to 0xCE3302C
	fmov.s @r0,fr3 ; r3 ??
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE33034_to_loc_8C02FEC4,pc),r2 ; r2 set to 0x8C02FEC4
	mov 0x05,r6 ; r6 set to 0x05
	mov r6,r5 ; r5 set to 0x05
	jsr @r2
	mov r14,r4
	mov.w @(loc_CE3300C,pc),r0 ; r0 set to 0x1F7
	mov 0x0F,r5 ; r5 set to 0x0F
	mov.w @(loc_CE3300A,pc),r3 ; r3 set to 0xC5
	mov 0x18,r6 ; r6 set to 0x18
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE33018_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE33038_to_loc_8C0523D8,pc),r3 ; r3 set to 0x8C0523D8
	mov.l @r15,r5 ; r5 ??? bc r15 is ???
	jsr @r3
	mov r14,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE32F86:
	mov.b @(0x06,r14),r0
	mov.l @(loc_CE3303C_to_loc_CE36F20,pc),r4 ; r4 set to 0xCE36F20
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mova @(loc_CE33040,pc),r0  ; r0 set to 0xCE33040
	fmov.s @r0,fr4 ; r4 ??
	mov.w @(loc_CE3300E,pc),r0 ; r0 set to 0x202
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_CE32FCC
	mov.w @(loc_CE33010,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_CE32FB4
	mova @(loc_CE33044,pc),r0  ; r0 set to 0xCE33044
	fmov.s @r0,fr3
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fldi0 fr3
	bra loc_CE32FC0
	fmov.s fr3,@(r0,r14)

loc_CE32FB4:
	mova @(loc_CE33048,pc),r0  ; r0 init to 0xCE33048
	fmov.s @r0,fr3
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)

loc_CE32FC0:
	mov.w @(loc_CE33012,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	extu.b r0,r0
	shll r0
	bra loc_CE32FE4
	mov.w @(r0,r4),r0

loc_CE32FCC:
	mova @(0x7C,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x36,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	add r4,r0
	mov.w @(0x4,r0),r0

loc_CE32FE4:
	mov.w r0,@(0x1C,r14)
	mov.w @(0x2A,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce32ffe
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE32FFE:
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE33006:
	#data 0x03E4
loc_CE33008:
	#data 0x0150
loc_CE3300A:
	#data 0x00C5
loc_CE3300C:
	#data 0x01F7
loc_CE3300E:
	#data 0x0202
loc_CE33010:
	#data 0x0255
loc_CE33012:
	#data 0x01A3
loc_CE33014:
	#data 0x01D2
	#align4

loc_CE33018_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE3301C_to_loc_8C059A44:
	#data loc_8C059A44
loc_CE33020_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE33024_to_loc_8C045790:
	#data loc_8C045790
loc_CE33028:
	#data 0xC312AAAA
loc_CE3302C:
	#data 0x432B6DB6
loc_CE33030_to_loc_8C103660:
	#data loc_8C103660
loc_CE33034_to_loc_8C02FEC4:
	#data loc_8C02FEC4
loc_CE33038_to_loc_8C0523D8:
	#data loc_8C0523D8
loc_CE3303C_to_loc_CE36F20:
	#data loc_CE36F20
loc_CE33040:
	#data 0x3C555555
loc_CE33044:
	#data 0x40A00000
loc_CE33048:
	#data 0x40BAAAAA
loc_CE3304c:
	#data 0x40555555

;==============================================
loc_CE33050:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(loc_CE33152,pc),r0 ; r0 set to 0x3E4
	mov r4,r14
	mov 0x02,r3 ; r3 set to 0x02
	mov.w r3,@(r0,r14)
	mov.l @(loc_CE3315C_to_loc_8C0511E2,pc),r3 ; r3 set to 0x8C0511E2
	jsr @r3
	mov r14,r4
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_CE33160_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE33164_to_loc_8C045790,pc),r2 ; r2 set to 0x8C045790
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt/s loc_CE330DE
	mov.l r0,@r15
	mov 0x05,r0 ; r0 set to 0x05
	mov r15,r5
	mov.b r0,@(0x06,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x07,r14)
	mova @(loc_CE33168,pc),r0  ; r0 set to 0xCE33168
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @(loc_CE33170_to_loc_8C103660,pc),r3 ; r3 set to 0x8C103660
	add 0x04,r5
	fmov.s fr3,@(r0,r15)
	mova @(loc_CE3316C,pc),r0  ; r0 set to 0xCE3316C
	fmov.s @r0,fr3 ; r3 ??
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE33174_to_loc_8C02FEC4,pc),r2 ; r2 set to 0x8C02FEC4
	mov 0x05,r6 ; r6 set to 0x05
	mov r6,r5 ; r5 set to 0x05
	jsr @r2
	mov r14,r4
	mov.w @(loc_CE33156,pc),r0 ; r0 set to 0x1F7
	mov 0x0F,r5 ; r5 set to 0x0F
	mov.w @(loc_CE33154,pc),r3 ; r3 set to 0xC6
	mov 0x1D,r6 ; r6 set to 0x1D
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE33178_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE3317C_to_loc_8C0523D8,pc),r3 ; r3 set to 0x8C0523D8
	mov.l @r15,r5 ; r5 ??? bc r15 is ???
	jsr @r3
	mov r14,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE330DE:
	mov 0x00,r0 ; r0 set to 0x00
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_CE33158,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_CE330F8
	mov 0x01,r4 ; r4 set to 0x01
	mov.w @(loc_CE3315A,pc),r0 ; r0 set to 0x1FD
	mov.b @(r0,r14),r3
	tst r4,r3
	bf loc_CE33100
	bra loc_CE33106
	nop

loc_CE330F8:
	mov.w @(0x5E,PC),r0
	mov.b @(r0,r14),r0
	tst 0x02,r0
	bt loc_ce33106               ; loc_ce330ec+0x1a

loc_CE33100:
	mov r4,r0
	nop 
	mov.w r0,@(0x1E,r14)

loc_CE33106:
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bf loc_ce33118
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_ce33128

loc_CE33118:
	mov.b @(0x6,r14),r0
	mov 0x0F,r5
	mov.l @(0x58,PC),r3
	mov 0x17,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4

loc_CE33128:
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE33130:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_CE33160_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE3314A
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_CE33180_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_CE3314A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE33152:
	#data 0x03E4
loc_CE33154:
	#data 0x00C6
loc_CE33156:
	#data 0x01F7
loc_CE33158:
	#data 0x01D2
loc_CE3315A:
	#data 0x01FD
	#align4

loc_CE3315C_to_loc_8C0511E2:
	#data loc_8C0511E2
loc_CE33160_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE33164_to_loc_8C045790:
	#data loc_8C045790
loc_CE33168:
	#data 0xC312AAAA
loc_CE3316C:
	#data 0x432B6DB6
loc_CE33170_to_loc_8C103660:
	#data loc_8C103660
loc_CE33174_to_loc_8C02FEC4:
	#data loc_8C02FEC4
loc_CE33178_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE3317C_to_loc_8C0523D8:
	#data loc_8C0523D8
loc_CE33180_to_loc_8C051648:
	#data loc_8C051648

;==============================================
loc_CE33184:
	mov.w @(loc_CE3325C,pc),r0 ; r0 set to 0x1F2
	mov 0x03,r3 ; r3 set to 0x03
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE3326C_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE331B0
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_CE33270_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x19,r6 ; r6 set to 0x19
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x0F,r5 ; r5 set to 0x0F
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE331B0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE331B6:
	mov.w @(loc_CE3325C,pc),r0 ; r0 set to 0x1F2
	mov 0x03,r3 ; r3 set to 0x03
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE3326C_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE331FE
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mova @(loc_CE33274,pc),r0  ; r0 set to 0xCE33274
	fmov.s @r0,fr4
	mov.w @(loc_CE3325E,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_CE331E8
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_CE331EE
	fadd fr4,fr3

loc_CE331E8:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	fsub fr4,fr3

loc_CE331EE:
	mov.l @(loc_CE33270_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C
	mov r14,r4
	fmov.s fr3,@(r0,r14)
	mov 0x1A,r6 ; r6 set to 0x1A, r6 set to 0x1A
	lds.l @r15+,pr
	mov 0x0F,r5 ; r5 set to 0x0F, r5 set to 0x0F
	jmp @r3
	mov.l @r15+,r14

loc_CE331FE:
	mov.w @(loc_CE33260,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_CE33256
	mov.l @(loc_CE33278_to_loc_8C26A518,pc),r4 ; r4 set to 0x8C26A518
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x01,r5 ; r5 set to 0x01
	mov.b r3,@(r0,r14)
	mov r5,r0 ; r0 set to 0x01
	nop
	mov.l @(loc_CE3327C_to_loc_8C0423FC,pc),r3 ; r3 set to 0x8C0423FC
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x06,r4)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.w @(loc_CE33262,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r14),r4
	add 0xEC,r0 ; r0 set to 0x1B4
	mov.l r14,@(r0,r4)
	mov.w @(loc_CE33264,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_CE33238
	mov.w @(loc_CE33266,pc),r0 ; r0 set to 0x1A1
	mov 0x40,r5 ; r5 set to 0x40
	mov.b r5,@(r0,r14)
	bra loc_CE3324C
	mov.b r5,@(r0,r4)

loc_CE33238:
	mov.w @(loc_CE33268,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r2
	add 0xFE,r0 ; r0 set to 0x1A1
	add 0x3F,r2
	mov.b r2,@(r0,r14)
	add 0x02,r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	add 0xFE,r0 ; r0 set to 0x1A1
	add 0x3F,r3
	mov.b r3,@(r0,r4)

loc_CE3324C:
	lds.l @r15+,pr
	mov.l @(loc_CE33280_to_loc_8C05933C,pc),r3 ; r3 set to 0x8C05933C, r3 set to 0x8C05933C
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE33256:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE3325C:
	#data 0x01F2
loc_CE3325E:
	#data 0x01D2
loc_CE33260:
	#data 0x0141
loc_CE33262:
	#data 0x01C8
loc_CE33264:
	#data 0x0255
loc_CE33266:
	#data 0x01A1
loc_CE33268:
	#data 0x01A3
	#align4

loc_CE3326C_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE33270_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE33274:
	#data 0x43200000
loc_CE33278_to_loc_8C26A518:
	#data loc_8C26A518
loc_CE3327C_to_loc_8C0423FC:
	#data loc_8C0423FC
loc_CE33280_to_loc_8C05933C:
	#data loc_8C05933C

;==============================================
loc_CE33284:
	mov.w @(0x144,PC),r0
	mov 0x03,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(0x140,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x134,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce33336
	mov 0x00,r3
	mov.l @(0x138,PC),r4
	mov.b r3,@(r0,r14)
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0x12C,PC),r0
	fmov @r0,fr5
	mova @(0x130,PC),r0
	fmov @r0,fr4
	mov.w @(0x11A,PC),r0
	mov.b @(r0,r14),r3
	mov 0x5C,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r4,r3
	mov.l @r3,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x100,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r4,r3
	mov.l @(0x4,r3),r2
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	mov 0x68,r0
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mova @(0xFC,PC),r0
	fmov @r0,fr5
	mov.w @(0xE2,PC),r0
	mov.b @(r0,r14),r3
	mov 0x60,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r4,r3
	mov.l @(0x8,r3),r2
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xC8,PC),r0
	mov.b @(r0,r14),r3
	mov 0x6C,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r4
	mov.l @(0xC,r4),r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xB0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce33336
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE33336:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3333C:
	mov.w @(0x8C,PC),r0
	mov 0x03,r3
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	add r14,r1
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	mov.l @(0x54,PC),r3
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_ce333c6
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov.w @(0x36,PC),r0
	mov.b @(r0,r14),r3
	mov.l @(0x4C,PC),r0
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r3
	mova @(0x34,PC),r0
	fmov @r0,fr2
	mova @(0x44,PC),r0
	lds r3,fpul
	fmov @r0,fr1
	mov 0x5C,r0
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr1,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x18,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce333c6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE333C6:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_ce333cc:
	#data 0x01F2
loc_ce333ce:
	#data 0x0141
loc_ce333d0:
	#data 0x01A3
loc_ce333d2:
	#data 0x01D2
	#align4

loc_CE333D4:
	#data loc_8C034DEE
loc_CE333D8:
	#data 0x3FD55555
loc_CE333DC_to_loc_CE36F28:
	#data loc_CE36F28
loc_CE333E0:
	#data 0x47800000
loc_CE333E4:
	#data 0x40092492
loc_CE333E8_to_loc_CE36F48:
	#data loc_CE36F48
loc_CE333EC:
	#data 0x43800000

;==============================================
loc_CE333F0:
	mov.w @(loc_CE33516,pc),r0 ; r0 set to 0x1F2
	mov 0x03,r3 ; r3 set to 0x03
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	add r14,r1 ; r1 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	mov.l @(loc_CE33524_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE33528_to_loc_8C052CE2,pc),r2 ; r2 set to 0x8C052CE2
	jsr @r2
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0x60
	tst r0,r0
	bt loc_CE3346A
	mov.b @(0x07,r14),r0
	mov.l @(loc_CE3352C_to_loc_8C26A518,pc),r4 ; r4 set to 0x8C26A518
	add 0x01,r0 ; r0 set to 0x61
	mov.l @(loc_CE33530_to_loc_CE36B7A,pc),r3 ; r3 set to 0xCE36B7A
	mov.b r0,@(0x07,r14)
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x05,r4)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x06,r4)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_CE33534_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x1B,r6 ; r6 set to 0x1B
	mov 0x0F,r5 ; r5 set to 0x0F
	jmp @r2
	mov.l @r15+,r14

loc_CE3346A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE33470:
	mov.w @(0xA2,PC),r0
	mov 0x03,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(0xA4,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce33510               ; loc_ce334c0+0x50
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0xA8,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x9C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x66,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce334c8             ; loc_ce334c0+0x8
	mov 0x21,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE334C8:
	mov.l @(0x68,PC),r3
	mov 0x0F,r5
	jsr @r3
	mov r14,r4
	mov.l @(0x74,PC),r2
	mov 0x00,r6
	mov r6,r5
	jsr @r2
	mov r14,r4
	mov.w @(0x3C,PC),r0
	mov 0x02,r3
	mov.l @(r0,r14),r4
	mov.w @(0x38,PC),r0
	mov.l r14,@(r0,r4)
	add 0x42,r0
	mov.b r3,@(r0,r4)
	add 0x5F,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_ce334fc
	mov.w @(0x28,PC),r0
	mov 0x42,r5
	mov.b r5,@(r0,r4)
	bra loc_ce33510
	mov.b r5,@(r0,r14)

loc_CE334FC:
	mov.w @(0x20,PC),r0
	mov.b @(r0,r14),r2
	add 0xFE,r0
	add 0x41,r2
	mov.b r2,@(r0,r4)
	add 0x02,r0
	mov.b @(r0,r14),r3
	add 0xFE,r0
	add 0x41,r3
	mov.b r3,@(r0,r14)

loc_CE33510:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE33516:
	#data 0x01F2
loc_CE33518:
	#data 0x01D2
loc_CE3351a:
	#data 0x01C8
loc_CE3351c:
	#data 0x01B4
loc_CE3351e:
	#data 0x01A1
loc_CE33520:
	#data 0x01A3
	#align4

loc_CE33524_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE33528_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE3352C_to_loc_8C26A518:
	#data loc_8C26A518
loc_CE33530_to_loc_CE36B7A:
	#data loc_CE36B7A
loc_CE33534_to_loc_8C034E8C:
#data loc_8C034E8C
loc_CE33538:
	#data 0x40BAAAAA
loc_CE3353c:
	#data 0xBDD55555
loc_CE33540:
	#data 0x414DB6DB
loc_CE33544:
	#data 0xBF4DB6DB
loc_CE33548:
	#data loc_8C02FEC4

;==============================================
loc_CE3354C:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_CE33634_to_loc_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0x60
	tst r0,r0
	bt loc_CE335B0
	mov.l @(loc_CE33638_to_loc_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4
	jsr @r3
	mov r14,r4
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_CE3363C_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x22,r6 ; r6 set to 0x22
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x07,r14)
	mov 0x0F,r5 ; r5 set to 0x0F
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14
	
loc_CE335B0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE335B6:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_CE33640_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE335D0
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_CE33644_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_CE335D0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_CE335D8:
	mov.w @(loc_CE3362E,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x1ED
	mov 0x02,r4 ; r4 set to 0x02
	mov.l @(loc_CE33648_to_loc_CE36F4C_to_loc_CE33184,pc),r1 ; r1 set to 0xCE36F4C
	mov.b r4,@(r0,r14)
	add 0x08,r0 ; r0 set to 0x1F5
	mov.b r4,@(r0,r14)
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.b @(0x07,r14),r0
	extu.b r0,r0 ; r0 set to 0xF5
	shll2 r0 ; r0 set to 0x3D4
	mov.l @(r0,r1),r3 ; r3 ??
	jmp @r3
	mov.l @r15+,r14

loc_CE335FC:
	mov.w @(loc_CE33630,pc),r0 ; r0 set to 0x1F2
	mov 0x03,r3 ; r3 set to 0x03
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE33640_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE33628
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_CE3363C_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x1E,r6 ; r6 set to 0x1E
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x0F,r5 ; r5 set to 0x0F
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE33628:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE3362E:
	#data 0x01EA
loc_CE33630:
	#data 0x01F2
	#align4

loc_CE33634_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE33638_to_loc_8C0511B4:
	#data loc_8C0511B4
loc_CE3363C_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE33640_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE33644_to_loc_8C051648:
	#data loc_8C051648
loc_CE33648_to_loc_CE36F4C_to_loc_CE33184:
	#data loc_CE36F4C_to_loc_CE33184

;==============================================
loc_CE3364C:
	mov.w @(0x13C,PC),r0
	mov 0x03,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(0x138,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce33706
	mov.b @(0x7,r14),r0
	mov.l @(0x134,PC),r4
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0x128,PC),r0
	fmov @r0,fr5
	mova @(0x12C,PC),r0
	fmov @r0,fr4
	mov.w @(0x116,PC),r0
	mov.b @(r0,r14),r3
	mov 0x5C,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r4,r3
	mov.l @r3,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xFC,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r4,r3
	mov.l @(0x4,r3),r2
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mova @(0xF8,PC),r0
	fmov @r0,fr5
	mov.w @(0xDE,PC),r0
	mov.b @(r0,r14),r3
	mov 0x60,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r4,r3
	mov.l @(0x8,r3),r2
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xC4,PC),r0
	mov.b @(r0,r14),r3
	mov 0x6C,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r4
	mov.l @(0xC,r4),r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xAC,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_ce336fa
	mov 0x1F,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE336FA:
	lds.l @r15+,pr
	mov.l @(0xA8,PC),r3
	mov 0x0F,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE33706:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3370C:
	mov.w @(loc_CE3378C,pc),r0 ; r0 set to 0x1F2
	mov 0x03,r3 ; r3 set to 0x03
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	add r14,r1 ; r1 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	mov.l @(loc_CE33794_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE337AC_to_loc_8C052CE2,pc),r2 ; r2 set to 0x8C052CE2
	jsr @r2
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0x60
	tst r0,r0
	bt loc_CE33786
	mov.b @(0x07,r14),r0
	mov.l @(loc_CE337B0_to_loc_8C26A518,pc),r4 ; r4 set to 0x8C26A518
	add 0x01,r0 ; r0 set to 0x61
	mov.l @(loc_CE337B4_to_loc_CE36B7A,pc),r3 ; r3 set to 0xCE36B7A
	mov.b r0,@(0x07,r14)
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x05,r4)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x06,r4)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_CE337A8_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x20,r6 ; r6 set to 0x20
	mov 0x0F,r5 ; r5 set to 0x0F
	jmp @r2
	mov.l @r15+,r14

loc_CE33786:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE3378C:
	#data 0x01F2
loc_CE3378E:
	#data 0x01A3
loc_CE33790:
	#data 0x01D2
	#align4

loc_CE33794_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE33798:
	#data 0x3FD55555
loc_CE3379C_to_loc_CE36F6C:
	#data loc_CE36F6C
loc_CE337A0:
	#data 0x47800000
loc_CE337A4:
	#data 0x40092492
loc_CE337A8_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE337AC_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE337B0_to_loc_8C26A518:
	#data loc_8C26A518
loc_CE337B4_to_loc_CE36B7A:
	#data loc_CE36B7A

;==============================================
loc_CE337B8:
	mov.w @(0x13E,PC),r0
	mov 0x03,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(0x140,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce3381c
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0x134,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x130,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mova @(0x12C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x128,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x102,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce33810
	mov 0x21,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE33810:
	lds.l @r15+,pr
	mov.l @(0x108,PC),r3
	mov 0x0F,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE3381C:
	mov.w @(0xDE,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce33868
	mov 0x00,r3
	mov r3,r5
	mov r3,r6
	mov.b r3,@(r0,r14)
	mov.l @(0xF0,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xCA,PC),r0
	mov 0x02,r3
	mov.l @(r0,r14),r4
	add 0xEC,r0
	mov.l r14,@(r0,r4)
	add 0x42,r0
	mov.b r3,@(r0,r4)
	add 0x5F,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_ce33854
	mov.w @(0xB4,PC),r0
	mov 0x44,r5
	mov.b r5,@(r0,r4)
	bra loc_ce33868
	mov.b r5,@(r0,r14)

loc_CE33854:
	mov.w @(0xAC,PC),r0
	mov.b @(r0,r14),r2
	add 0xFE,r0
	add 0x43,r2
	mov.b r2,@(r0,r4)
	add 0x02,r0
	mov.b @(r0,r14),r3
	add 0xFE,r0
	add 0x43,r3
	mov.b r3,@(r0,r14)

loc_CE33868:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3386E:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_CE33924_to_loc_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0x60
	tst r0,r0
	bt loc_CE338D2
	mov.l @(loc_CE33928_to_loc_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4
	jsr @r3
	mov r14,r4
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_CE3391C_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x22,r6 ; r6 set to 0x22
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x07,r14)
	mov 0x0F,r5 ; r5 set to 0x0F
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE338D2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE338D8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_CE33908_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE338F2
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_CE3392C_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_CE338F2:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_ce338fa:
	#data 0x01F2
loc_ce338fc:
	#data 0x01D2
loc_ce338fe:
	#data 0x0141
loc_ce33900:
	#data 0x01C8
loc_ce33902:
	#data 0x01A1
loc_ce33904:
	#data 0x01A3
	#align4

loc_CE33908_to_loc_8C034DEE:
#data loc_8C034DEE
loc_CE3390c:
	#data 0x40BAAAAA
loc_CE33910:
	#data 0xBDD55555
loc_CE33914:
	#data 0x414DB6DB
loc_CE33918:
	#data 0xBF4DB6DB
loc_CE3391C_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE33920:
	#data loc_8C02FEC4
loc_CE33924_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE33928_to_loc_8C0511B4:
	#data loc_8C0511B4
loc_CE3392C_to_loc_8C051648:
	#data loc_8C051648

;==============================================
loc_CE33930:
	mov.w @(loc_CE33A3A,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x1ED
	mov 0x02,r4 ; r4 set to 0x02
	mov.l @(loc_CE33A4C_to_loc_CE36F8C_to_loc_CE335FC,pc),r1 ; r1 set to 0xCE36F8C
	mov.b r4,@(r0,r14)
	add 0x08,r0 ; r0 set to 0x1F5
	mov.b r4,@(r0,r14)
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.b @(0x07,r14),r0
	extu.b r0,r0 ; r0 set to 0xF5
	shll2 r0 ; r0 set to 0x3D4
	mov.l @(r0,r1),r3 ; r3 ??
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_CE33954:
	mov r4,r3
	mov.l @(loc_CE33A50_to_loc_CE36FA4_to_loc_CE33966,pc),r1 ; r1 set to 0xCE36FA4
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE33966:
	mov.w @(0xD2,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_ce33982
	mov.w @(0xC6,PC),r0
	mov 0x10,r3
	mov.w @(0xC0,PC),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)

loc_CE33982:
	mov.b @(0x6,r14),r0
	mov.l @(0xCC,PC),r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mova @(0xC8,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xC4,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xA0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce339b6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE339B6:
	mov.l @(0xA8,PC),r3
	mov 0x28,r0
	mov 0x0F,r5
	mov.w r0,@(0x1C,r14)
	mov 0x23,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x9C,PC),r2
	mov r14,r4
	mov 0x3C,r7
	mov 0x32,r6
	mov 0x0A,r5
	jmp @r2
	mov.l @r15+,r14

loc_CE339D4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(loc_CE33A44,pc),r0 ; r0 set to 0x3E4
	mov r4,r14
	mov 0x02,r12 ; r12 set to 0x02
	mov.w r12,@(r0,r14)
	add 0x14,r0 ; r0 set to 0x3F8
	mov.b r12,@(r0,r14)
	mov 0x05,r3 ; r3 set to 0x05
	mov.w @(loc_CE33A46,pc),r0 ; r0 set to 0x328
	mov.b r3,@(r0,r14)
	mov.w @(loc_CE33A48,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	cmp/pl r3
	bf/s loc_CE33A26
	mov 0x00,r13 ; r13 set to 0x00
	mov.w @(loc_CE33A40,pc),r0 ; r0 set to 0x3F0
	mov r15,r5
	mov.l @(loc_CE33A70_to_loc_8C050834,pc),r3 ; r3 set to 0x8C050834
	add 0x04,r5
	mov.b r13,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x3F1
	mov.b r13,@(r0,r14)
	mov 0x01,r6 ; r6 set to 0x01
	mov.w @(loc_CE33A48,pc),r0 ; r0 set to 0x141
	mov.b r13,@(r0,r14)
	mova @(loc_CE33A68,pc),r0  ; r0 set to 0xCE33A68
	fmov.s @r0,fr3 ; r3 ??
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	mova @(loc_CE33A6C,pc),r0  ; r0 set to 0xCE33A6C
	fmov.s @r0,fr3
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	bra loc_CE33B3A
	nop

loc_CE33A26:
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_CE33A7A
	mov.w @(loc_CE33A3C,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_CE33A74
	bra loc_CE33A76
	mov 0x02,r1

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE33A3A:
	#data 0x01EA
loc_CE33A3C:
	#data 0x0255
loc_CE33A3E:
	#data 0x00FF
loc_CE33A40:
	#data 0x03F0
loc_CE33A42:
	#data 0x01D2
loc_CE33A44:
	#data 0x03E4
loc_CE33A46:
	#data 0x0328
loc_CE33A48:
	#data 0x0141
	#align4

loc_CE33A4C_to_loc_CE36F8C_to_loc_CE335FC:
	#data loc_CE36F8C_to_loc_CE335FC
loc_CE33A50_to_loc_CE36FA4_to_loc_CE33966:
	#data loc_CE36FA4_to_loc_CE33966
loc_CE33A54_to_loc_CE31B5C:
	#data loc_CE31B5C
loc_CE33A58:
	#data 0x40D55555
loc_CE33A5c:
	#data 0xBDD55555
loc_CE33A60:
	#data loc_8C034E8C
loc_CE33A64:
	#data loc_8C059A44
loc_CE33A68:
	#data 0xC2200000
loc_CE33A6C:
	#data 0x431A4924
loc_CE33A70_to_loc_8C050834:
	#data loc_8C050834

;----------------------------------------------
loc_CE33A74:
	mov 0x00,r1

loc_CE33A76:
	mov.w @(0x10A,PC),r0
	mov.b r1,@(r0,r14)

loc_CE33A7A:
	mov.w @(0x108,PC),r3
	add r14,r3
	mov.b @(0x1,r3),r0
	tst r0,r0
	bf loc_ce33aa6
	mov.l @(0x10C,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_CE33AA6:
	mov.l @(0xF0,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0xEC,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt.s loc_ce33b04
	mov.l r0,@r15
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov r13,r0
	nop 
	mov.l @(0xDC,PC),r3
	mov 0x05,r6
	mov.b r0,@(0x7,r14)
	mov r6,r5
	jsr @r3
	mov r14,r4
	mov.w @(0xB8,PC),r0
	mov r15,r5
	mov.w @(0xB2,PC),r2
	add 0x04,r5
	mov.l @(0xD4,PC),r3
	mov.b r2,@(r0,r14)
	mova @(0xC8,PC),r0
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	mova @(0xC4,PC),r0
	fmov @r0,fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0xC0,PC),r2
	mov 0x0F,r5
	mov 0x25,r6
	jsr @r2
	mov r14,r4
	mov.l @(0xB8,PC),r3
	mov.l @r15,r5
	jsr @r3
	mov r14,r4
	bra loc_ce33b3a
	nop 

loc_CE33B04:
	mov.w @(0x84,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce33b18
	mov.w @(0x7E,PC),r0
	mov.b @(r0,r14),r0
	tst 0x01,r0
	bf loc_ce33b2c
	bra loc_ce33b20
	nop 

loc_CE33B18:
	mov.w @(0x72,PC),r0
	mov.b @(r0,r14),r3
	tst r12,r3
	bf loc_ce33b2c

loc_CE33B20:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_ce33b3a

loc_CE33B2C:
	mov.l @(0x80,PC),r3
	mov 0x03,r0
	mov 0x0F,r5
	mov.b r0,@(0x6,r14)
	mov 0x24,r6
	jsr @r3
	mov r14,r4

loc_CE33B3A:
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE33B46:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE33B90,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.l @(loc_CE33B98_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE33B7C
	mov.b @(0x07,r14),r0
	mov 0x0F,r5 ; r5 set to 0x0F
	mov r14,r4
	mov 0x26,r6 ; r6 set to 0x26
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov.b r0,@(0x02,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE33BB0_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	jmp @r3
	mov.l @r15+,r14

loc_CE33B7C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE33B84:
	#data 0x03F1
loc_CE33B86:
	#data 0x0150
loc_CE33B88:
	#data 0x00CA
loc_CE33B8a:
	#data 0x01F7
loc_CE33B8c:
	#data 0x01D2
loc_CE33B8e:
	#data 0x01FD
loc_CE33B90:
	#data 0x02A4
	#align4

loc_CE33B94:
	#data loc_8C0511E2
loc_CE33B98_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE33B9C:
	#data loc_8C045790
loc_CE33BA0:
	#data loc_8C02FEC4
loc_CE33BA4:
	#data 0xC312AAAA
loc_CE33BA8:
	#data 0x432B6DB6
loc_CE33BAC:
	#data loc_8C103660
loc_CE33BB0_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE33BB4:
	#data loc_8C0523D8

;==============================================
loc_CE33BB8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_CE33CC8_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE33BFE
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mova @(loc_CE33CCC,pc),r0  ; r0 set to 0xCE33CCC
	fmov.s @r0,fr4
	mov.w @(loc_CE33CC0,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_CE33BE4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_CE33BEA
	fadd fr4,fr3

loc_CE33BE4:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	fsub fr4,fr3

loc_CE33BEA:
	mov.l @(loc_CE33CD0_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C
	mov 0x0F,r5 ; r5 set to 0x0F, r5 set to 0x0F
	fmov.s fr3,@(r0,r14)
	mov 0x27,r6 ; r6 set to 0x27, r6 set to 0x27
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE33BFE:
	mov.w @(loc_CE33CC2,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_CE33C72
	mov.l @(loc_CE33CD4_to_loc_8C26A518,pc),r4 ; r4 set to 0x8C26A518
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x01,r5 ; r5 set to 0x01
	mov.b r3,@(r0,r14)
	mov r5,r0 ; r0 set to 0x01
	nop
	mov.l @(loc_CE33CD8_to_loc_8C0423FC,pc),r3 ; r3 set to 0x8C0423FC
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x06,r4)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.w @(loc_CE33CC4,pc),r0 ; r0 set to 0x1C8
	mov 0x45,r5 ; r5 set to 0x45
	mov.l @(r0,r14),r4
	add 0xEC,r0 ; r0 set to 0x1B4
	mov.l r14,@(r0,r4)
	add 0xED,r0 ; r0 set to 0x1A1
	mov.b r5,@(r0,r14)
	mov.b r5,@(r0,r4)
	add 0x61,r0 ; r0 set to 0x202
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_CE33C4E
	mova @(loc_CE33CDC,pc),r0  ; r0 set to 0xCE33CDC
	mov.l @(loc_CE33CE0_to_loc_8C0FDAB6,pc),r3 ; r3 set to 0x8C0FDAB6
	fmov.s @r0,fr3 ; r3 ??
	mov 0x04,r0 ; r0 set to 0x04
	mov r15,r5 ; r5 ??? bc r15 is ???
	mov 0x02,r6 ; r6 set to 0x02
	fmov.s fr3,@r15
	fldi0 fr3
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	bra loc_CE33C6C
	nop

loc_CE33C4E:
	mov 0x34,r0
	mov.l @(0x90,PC),r3
	fmov @(r0,r4),fr3
	mov 0x01,r5
	mov.w @(0x6C,PC),r0
	fmov fr3,@r15
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov.l @(0x80,PC),r2
	mov 0x49,r5
	jsr @r2
	mov r14,r4

loc_CE33C6C:
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov r14,r4

loc_CE33C72:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE33C7A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_CE33CC8_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE33CF0
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mova @(loc_CE33CCC,pc),r0  ; r0 set to 0xCE33CCC
	fmov.s @r0,fr4
	mov.w @(loc_CE33CC0,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_CE33CA6
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_CE33CAC
	fadd fr4,fr3

loc_CE33CA6:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	fsub fr4,fr3

loc_CE33CAC:
	mov.l @(loc_CE33CD0_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C
	mov 0x0F,r5 ; r5 set to 0x0F, r5 set to 0x0F
	fmov.s fr3,@(r0,r14)
	mov 0x28,r6 ; r6 set to 0x28, r6 set to 0x28
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE33CC0:
	#data 0x01D2
loc_CE33CC2:
	#data 0x0141
loc_CE33CC4:
	#data 0x01C8
loc_CE33CC6:
	#data 0x041C
	#align4

loc_CE33CC8_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE33CCC:
	#data 0x43200000
loc_CE33CD0_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE33CD4_to_loc_8C26A518:
	#data loc_8C26A518
loc_CE33CD8_to_loc_8C0423FC:
	#data loc_8C0423FC
loc_CE33CDC:
	#data 0xC3200000
loc_CE33CE0_to_loc_8C0FDAB6:
	#data loc_8C0FDAB6
loc_CE33CE4:
	#data loc_8C1025CA
loc_CE33CE8:
	#data loc_8C04223A
loc_CE33CEC:
	#data loc_8C05933C

;==============================================
loc_CE33CF0:
	mov.w @(loc_CE33DCE,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_CE33D64
	mov.l @(loc_CE33DD8_to_loc_8C26A518,pc),r4 ; r4 set to 0x8C26A518
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x01,r5 ; r5 set to 0x01
	mov.b r3,@(r0,r14)
	mov r5,r0 ; r0 set to 0x01
	nop
	mov.l @(loc_CE33DDC_to_loc_8C0423FC,pc),r3 ; r3 set to 0x8C0423FC
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x06,r4)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.w @(loc_CE33DD0,pc),r0 ; r0 set to 0x1C8
	mov 0x46,r5 ; r5 set to 0x46
	mov.l @(r0,r14),r4
	add 0xEC,r0 ; r0 set to 0x1B4
	mov.l r14,@(r0,r4)
	add 0xED,r0 ; r0 set to 0x1A1
	mov.b r5,@(r0,r14)
	mov.b r5,@(r0,r4)
	add 0x61,r0 ; r0 set to 0x202
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_CE33D40
	mova @(loc_CE33DE0,pc),r0  ; r0 set to 0xCE33DE0
	mov.l @(loc_CE33DE4_to_loc_8C0FDAB6,pc),r3 ; r3 set to 0x8C0FDAB6
	fmov.s @r0,fr3 ; r3 ??
	mov 0x04,r0 ; r0 set to 0x04
	mov r15,r5 ; r5 ??? bc r15 is ???
	mov 0x02,r6 ; r6 set to 0x02
	fmov.s fr3,@r15
	fldi0 fr3
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	bra loc_CE33D5E
	nop

loc_CE33D40:
	mov 0x34,r0
	mov.l @(0xA4,PC),r3
	fmov @(r0,r4),fr3
	mov 0x01,r5
	mov.w @(0x86,PC),r0
	fmov fr3,@r15
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov.l @(0x94,PC),r2
	mov 0x49,r5
	jsr @r2
	mov r14,r4

loc_CE33D5E:
	mov.l @(0x90,PC),r3
	jsr @r3
	mov r14,r4

loc_CE33D64:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE33D6C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x80,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce33dc8
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mova @(0x6C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_ce33dbc
	mov 0x29,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE33DBC:
	lds.l @r15+,pr
	mov.l @(0x48,PC),r3
	mov 0x0F,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE33DC8:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE33DCE:
	#data 0x0141
loc_CE33DD0:
	#data 0x01C8
loc_CE33DD2:
	#data 0x041C
loc_CE33DD4:
	#data 0x01D2
	#align4

loc_CE33DD8_to_loc_8C26A518:
	#data loc_8C26A518
loc_CE33DDC_to_loc_8C0423FC:
	#data loc_8C0423FC
loc_CE33DE0:
	#data 0xC3200000
loc_CE33DE4_to_loc_8C0FDAB6:
	#data loc_8C0FDAB6
loc_CE33DE8:
	#data loc_8C1025CA
loc_CE33DEC:
	#data loc_8C04223A
loc_CE33DF0:
	#data loc_8C05933C
loc_CE33DF4:
	#data loc_8C034DEE
loc_CE33DF8:
	#data 0x40BAAAAA
loc_CE33DFC:
	#data 0xBD555555
loc_CE33E00:
	#data 0x41F89249
loc_CE33E04:
	#data 0xBFAB6DB6
loc_CE33E08:
	#data loc_8C034E8C

;==============================================
loc_CE33E0C:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l r13,@-r15
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_CE33F06,pc),r13 ; r13 set to 0x2A4
	mov 0x34,r0 ; r0 set to 0x34
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	add r14,r13 ; r13 ??? bc r14 is ???
	fmov.s @r1,fr3
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	mov.l @(loc_CE33F10_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE33F14_to_loc_8C055D2E,pc),r2 ; r2 set to 0x8C055D2E
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_CE33EA0
	mov.w @(loc_CE33F08,pc),r0 ; r0 set to 0x525
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
	tst r2,r2
	bt loc_CE33E86
	mov.w @(loc_CE33F0A,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_CE33E8C
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x142
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x01,r0
	bt loc_CE33E8C
	mov.w @(loc_CE33F0C,pc),r0 ; r0 set to 0x142
	mov.b @(r0,r14),r2
	add 0xFF,r2
	bra loc_CE33E8C
	mov.b r2,@(r0,r14)

loc_CE33E86:
	mov.w @(0x82,PC),r0
	mov 0x01,r1
	mov.b r1,@(r0,r14)

loc_CE33E8C:
	mov.b @(0x2,r13),r0
	mov 0x0F,r4
	add 0x01,r0
	mov.b r0,@(0x2,r13)
	mov.b @(0x2,r13),r0
	cmp/gt r4,r0
	bf loc_ce33ea0
	mov r4,r0
	nop 
	mov.b r0,@(0x2,r13)

loc_CE33EA0:
	mov.l @(loc_CE33F18_to_loc_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE33ED2
	mov.b @(0x07,r14),r0
	mov.l @(loc_CE33F1C_to_loc_8C26A518,pc),r4 ; r4 set to 0x8C26A518
	add 0x01,r0
	mov.l @(loc_CE33F20_to_loc_CE36B7A,pc),r3 ; r3 set to 0xCE36B7A
	mov.b r0,@(0x07,r14)
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x05,r4)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x06,r4)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_CE33F24_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x2A,r6 ; r6 set to 0x2A
	mov 0x0F,r5 ; r5 set to 0x0F
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE33ED2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE33EDA:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_CE33F10_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	mov r4,r14
	mov.w @(loc_CE33F06,pc),r13 ; r13 set to 0x2A4
	jsr @r3
	add r14,r13 ; r13 ??? bc r14 is ???
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE33F28
	mov.b @(0x07,r14),r0
	mov 0x0F,r5 ; r5 set to 0x0F
	mov.l @(loc_CE33F24_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x04,r6 ; r6 set to 0x04
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	jsr @r3
	mov r14,r4
	bra loc_CE33FBA
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE33F06:
	#data 0x02A4
loc_CE33F08:
	#data 0x0525
loc_CE33F0A:
	#data 0x0141
loc_CE33F0C:
	#data 0x0142
	#align4

loc_CE33F10_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE33F14_to_loc_8C055D2E:
	#data loc_8C055D2E
loc_CE33F18_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE33F1C_to_loc_8C26A518:
	#data loc_8C26A518
loc_CE33F20_to_loc_CE36B7A:
	#data loc_CE36B7A
loc_CE33F24_to_loc_8C034E8C:
	#data loc_8C034E8C

;----------------------------------------------
loc_CE33F28:
	mov.w @(loc_CE34046,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_CE33FBA
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14)
	mov 0x04,r5 ; r5 set to 0x04
	mov.w @(loc_CE34048,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r14),r4
	add 0xEC,r0 ; r0 set to 0x1B4
	mov.l r14,@(r0,r4)
	mov.b @(0x02,r13),r0
	mov r0,r1 ; r1 set to 0x1B4
	mov r5,r0 ; r0 set to 0x04
	nop
	mov.l @(loc_CE34054_to_loc_8C129128,pc),r3 ; r3 set to 0x8C129128
	jsr @r3
	nop
	mov.w @(loc_CE3404A,pc),r1 ; r1 set to 0x1A1
	add 0x48,r0 ; r0 set to 0x4C
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.b r0,@r1
	mov.b @(0x02,r13),r0
	mov r0,r1 ; r1 set to 0x4C
	mov r5,r0 ; r0 set to 0x04
	nop
	mov.l @(loc_CE34054_to_loc_8C129128,pc),r3 ; r3 set to 0x8C129128
	jsr @r3
	nop
	mov.w @(loc_CE3404A,pc),r1 ; r1 set to 0x1A1
	add 0x48,r0 ; r0 set to 0x4C
	mov.l @(loc_CE34058_to_loc_8C05933C,pc),r3 ; r3 set to 0x8C05933C
	add r4,r1 ; r1 ??? bc r4 is ???
	mov.b r0,@r1
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE3404C,pc),r0 ; r0 set to 0x205
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r14)
	add 0xC3,r0 ; r0 set to 0x1C8
	mov.l @(r0,r14),r4
	add 0x3A,r0 ; r0 set to 0x202
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_CE33F9C
	mova @(loc_CE3405C,pc),r0  ; r0 set to 0xCE3405C
	mov.l @(loc_CE34060_to_loc_8C0FDAB6,pc),r3 ; r3 set to 0x8C0FDAB6
	fmov.s @r0,fr3 ; r3 ??
	mov 0x04,r0 ; r0 set to 0x04
	mov r15,r5 ; r5 ??? bc r15 is ???
	mov 0x02,r6 ; r6 set to 0x02
	fmov.s fr3,@r15
	fldi0 fr3
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	bra loc_CE33FBA
	nop

loc_CE33F9C:
	mov 0x34,r0
	mov.l @(0xC4,PC),r3
	fmov @(r0,r4),fr3
	mov 0x01,r5
	mov.w @(0xA6,PC),r0
	fmov fr3,@r15
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov.l @(0xB4,PC),r2
	mov 0x49,r5
	jsr @r2
	mov r14,r4

loc_CE33FBA:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE33FC4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE3406C_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE34002
	mov.b @(0x07,r14),r0
	mov r14,r4
	fldi0 fr4
	mov 0x2B,r6 ; r6 set to 0x2B
	add 0x01,r0
	mov.l @(loc_CE34078_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mova @(loc_CE34070,pc),r0  ; r0 set to 0xCE34070
	fmov.s @r0,fr3 ; r3 ??
	mov 0x60,r0 ; r0 set to 0x60
	mov 0x0F,r5 ; r5 set to 0x0F
	fmov.s fr3,@(r0,r14)
	mova @(loc_CE34074,pc),r0  ; r0 set to 0xCE34074
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE34002:
	mov.w @(0x40,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce34024               ; loc_ce34018+0xc
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x47,r5
	mov.w @(0x34,PC),r0
	mov 0x11,r3
	mov.l @(r0,r14),r4
	add 0xEC,r0
	mov.l r14,@(r0,r4)
	add 0xED,r0
	mov.b r5,@(r0,r14)
	mov.b r5,@(r0,r4)
	add 0x55,r0
	mov.b r3,@(r0,r4)

loc_CE34024:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3402A:
	mov.w @(0x18,PC),r0
	mov.w @(0x20,PC),r5
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_ce34040
	add r4,r5
	mov.b @(0x7,r4),r0
	add 0x01,r0
	mov.b r0,@(0x7,r4)
	mov 0x00,r0
	mov.b r0,@(0x2,r5)

loc_CE34040:
	mov.l @(0x28,PC),r3
	jmp @r3
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE34046:
	#data 0x0141
loc_CE34048:
	#data 0x01C8
loc_CE3404A:
	#data 0x01A1
loc_CE3404C:
	#data 0x0205
loc_CE3404E:
	#data 0x041C
loc_CE34050:
	#data 0x02A4
	#align4

loc_CE34054_to_loc_8C129128:
	#data loc_8C129128
loc_CE34058_to_loc_8C05933C:
	#data loc_8C05933C
loc_CE3405C:
	#data 0xC2D55555
loc_CE34060_to_loc_8C0FDAB6:
	#data loc_8C0FDAB6
loc_CE34064:
	#data loc_8C1025CA
loc_CE34068:
	#data loc_8C04223A
loc_CE3406C_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE34070:
	#data 0x41F89249
loc_CE34074:
	#data 0xBF2B6DB6
loc_CE34078_to_loc_8C034E8C:
	#data loc_8C034E8C

;==============================================
loc_CE3407C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov.l @(0x10C,PC),r3
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0xCA,PC),r0
	mov.l @(r0,r14),r13
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov @(r0,r13),fr2
	mova @(0xCC,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	mova @(0xC8,PC),r0
	fmov @r0,fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bf loc_ce3411a               ; loc_ce340fa+0x20
	mov.b @(0x7,r14),r0
	mov r15,r5
	mov.w @(0xAE,PC),r3
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov.w @(0xAA,PC),r0
	mov.b r3,@(r0,r14)
	mova @(0xB4,PC),r0
	fmov @r0,fr2
	mova @(0xB4,PC),r0
	mov.l @(0xB8,PC),r3
	fmov fr2,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0xAC,PC),r2
	mov 0x05,r5
	jsr @r2
	mov r14,r4
	mov.l @(0xA8,PC),r3
	mov 0x0F,r5
	mov 0x11,r6
	jsr @r3
	mov r14,r4
	mov.l @(0xA4,PC),r2
	mov r13,r5
	jsr @r2
	mov r14,r4

loc_CE3411A:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE34124:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE34198_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE34148
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_CE341B4_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x2C,r6 ; r6 set to 0x2C
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x0F,r5 ; r5 set to 0x0F
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE34148:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3414E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE34198_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE3418C
	mov.b @(0x07,r14),r0
	mov r14,r4
	fldi0 fr4
	mov 0x2D,r6 ; r6 set to 0x2D
	add 0x01,r0
	mov.l @(loc_CE341B4_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mova @(loc_CE341BC,pc),r0  ; r0 set to 0xCE341BC
	fmov.s @r0,fr3 ; r3 ??
	mov 0x60,r0 ; r0 set to 0x60
	mov 0x0F,r5 ; r5 set to 0x0F
	fmov.s fr3,@(r0,r14)
	mova @(loc_CE341C0,pc),r0  ; r0 set to 0xCE341C0
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE3418C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE34192:
	#data 0x01C8
loc_CE34194:
	#data 0x00CA
loc_CE34196:
	#data 0x01F7
	#align4

loc_CE34198_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE3419c:
	#data 0xC1892492
loc_CE341a0:
	#data 0xC2892492
loc_CE341a4:
	#data 0xC312AAAA
loc_CE341a8:
	#data 0x432B6DB6
loc_CE341ac:
	#data loc_8C103660
loc_CE341b0:
	#data loc_8C042008
loc_CE341B4_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE341B8:
	#data loc_8C0523D8
loc_CE341BC:
	#data 0xC0CDB6DB
loc_CE341C0:
	#data 0xBF9A4924

;==============================================
loc_CE341C4:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l r13,@-r15
	mov 0x34,r0 ; r0 set to 0x34
	mov.l r12,@-r15
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_CE342F6,pc),r13 ; r13 set to 0x2A4
	sts.l pr,@-r15
	fmov.s @r1,fr3
	mov 0x68,r1 ; r1 set to 0x68
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	add r14,r13 ; r13 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov.l @(loc_CE34300_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE34304_to_loc_8C055D2E,pc),r2 ; r2 set to 0x8C055D2E
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_CE3425A
	mov.w @(loc_CE342F8,pc),r0 ; r0 set to 0x525
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
	tst r2,r2
	bt loc_CE34240
	mov.w @(loc_CE342FA,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_CE34246
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x142
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x01,r0
	bt loc_CE34246
	mov.w @(loc_CE342FC,pc),r0 ; r0 set to 0x142
	mov.b @(r0,r14),r2
	add 0xFF,r2
	bra loc_CE34246
	mov.b r2,@(r0,r14)

loc_CE34240:
	mov.w @(0xB8,PC),r0
	mov 0x01,r1
	mov.b r1,@(r0,r14)

loc_CE34246:
	mov.b @(0x2,r13),r0
	mov 0x0F,r4
	add 0x01,r0
	mov.b r0,@(0x2,r13)
	mov.b @(0x2,r13),r0
	cmp/gt r4,r0
	bf loc_ce3425a
	mov r4,r0
	nop 
	mov.b r0,@(0x2,r13)

loc_CE3425A:
	mov.l @(loc_CE34308_to_loc_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE342A0
	mov.b @(0x07,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.l @(loc_CE3430C_to_loc_8C26A518,pc),r4 ; r4 set to 0x8C26A518
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x05,r4)
	mov 0x01,r0 ; r0 set to 0x01
	mov.l @(loc_CE34310_to_loc_CE36B7A,pc),r3 ; r3 set to 0xCE36B7A
	mov.b r0,@(0x06,r4)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_CE34314_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x0F,r5 ; r5 set to 0x0F
	mov r14,r4
	mov 0x2E,r6 ; r6 set to 0x2E
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE342A0:
	mov.b @(0x02,r13),r0
	mov 0x03,r3 ; r3 set to 0x03
	cmp/gt r3,r0
	bf loc_CE342EC
	mov.w @(loc_CE342FE,pc),r0 ; r0 set to 0x202
	mov.l @(loc_CE34318_to_loc_CE36B8C,pc),r12 ; r12 set to 0xCE36B8C
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_CE342C6
	mov 0x25,r0 ; r0 set to 0x25
	mov.b @(r0,r14),r6
	mov 0x01,r7 ; r7 set to 0x01
	mov.b @(0x02,r13),r0
	extu.b r6,r6
	shll2 r0 ; r0 set to 0x94
	mov.l @(r0,r12),r2
	mov.l @(loc_CE3431C_to_loc_CE36BD0,pc),r0 ; r0 set to 0xCE36BD0
	bra loc_CE342D8
	shll2 r6

loc_CE342C6:
	mov 0x25,r0 ; r0 set to 0x25
	mov.b @(r0,r14),r6
	mov 0x01,r7 ; r7 set to 0x01
	mov.b @(0x02,r13),r0
	extu.b r6,r6
	shll2 r0 ; r0 set to 0x94
	mov.l @(r0,r12),r2
	shll2 r6
	mov.l @(loc_CE34320_to_loc_CE36BE8,pc),r0 ; r0 set to 0xCE36BE8

loc_CE342D8:
	lds.l @r15+,pr
	mov.l @(r0,r6),r6
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	mov r14,r4
	mov.l @r15+,r12
	add r2,r6
	mov.l @(loc_CE34324_to_loc_8C03544C,pc),r2 ; r2 set to 0x8C03544C, r2 set to 0x8C03544C
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE342EC:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE342F6:
	#data 0x02A4
loc_CE342F8:
	#data 0x0525
loc_CE342FA:
	#data 0x0141
loc_CE342FC:
	#data 0x0142
loc_CE342FE:
	#data 0x0202
	#align4

loc_CE34300_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE34304_to_loc_8C055D2E:
	#data loc_8C055D2E
loc_CE34308_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE3430C_to_loc_8C26A518:
	#data loc_8C26A518
loc_CE34310_to_loc_CE36B7A:
	#data loc_CE36B7A
loc_CE34314_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE34318_to_loc_CE36B8C:
	#data loc_CE36B8C
loc_CE3431C_to_loc_CE36BD0:
	#data loc_CE36BD0
loc_CE34320_to_loc_CE36BE8:
	#data loc_CE36BE8
loc_CE34324_to_loc_8C03544C:
	#data loc_8C03544C

;==============================================
loc_CE34328:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_CE34444,pc),r0 ; r0 set to 0x141
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE3437E
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14)
	mov.w @(loc_CE34446,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r14),r4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	mov.w @(loc_CE34448,pc),r0 ; r0 set to 0x41C
	fmov.s fr3,@r15
	fmov.s @(r0,r14),fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	mov.w @(loc_CE3444A,pc),r0 ; r0 set to 0x202
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_CE34362
	mov.l @(loc_CE34450_to_loc_8C1025CA,pc),r3 ; r3 set to 0x8C1025CA
	mov 0x01,r5 ; r5 set to 0x01
	jsr @r3
	mov r15,r4
	bra loc_CE34378
	mov 0x49,r5

loc_CE34362:
	mov.l @(0xEC,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r15,r4
	mov.l @(0xE8,PC),r3
	mov r15,r5
	mov 0x7E,r7
	mov 0x04,r6
	jsr @r3
	mov r14,r4
	mov 0x4A,r5

loc_CE34378:
	mov.l @(0xDC,PC),r2
	jsr @r2
	mov r14,r4

loc_CE3437E:
	mov.l @(0xDC,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce3439a
	mov.b @(0x7,r14),r0
	mov 0x0F,r5
	mov.l @(0xD0,PC),r3
	mov 0x0E,r6
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	jsr @r3
	mov r14,r4

loc_CE3439A:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE343A2:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l r13,@-r15
	mov 0x34,r0
	mov.l r12,@-r15
	add r14,r1
	mov.w @(0x98,PC),r12
	sts.l pr,@-r15
	fmov @r1,fr3
	mov 0x68,r1
	fmov @(r0,r14),fr2
	add r14,r1
	add r14,r12
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @r1,fr3
	mov 0x60,r1
	fmov @(r0,r14),fr2
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov.l @(0x74,PC),r3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce34474
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mova @(0x60,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x5C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x30,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce34434
	mov 0x21,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE34434:
	lds.l @r15+,pr
	mov.l @(0x28,PC),r3
	mov 0x0F,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE34444:
	#data 0x0141
loc_CE34446:
	#data 0x01C8
loc_CE34448:
	#data 0x041C
loc_CE3444A:
	#data 0x0202
loc_CE3444c:
	#data 0x02A4
loc_CE3444e:
	#data 0x01D2
	#align4

loc_CE34450_to_loc_8C1025CA:
	#data loc_8C1025CA
loc_CE34454:
	#data loc_8C10235C
loc_CE34458:
	#data loc_8C04223A
loc_CE3445C:
	#data loc_8C034DEE
loc_CE34460:
	#data loc_8C034E8C
loc_CE34464:
	#data 0x40D55555
loc_CE34468:
	#data 0xBDD55555
loc_CE3446C:
	#data 0x419A4924
loc_CE34470:
	#data 0xBF2B6DB6

;==============================================
loc_CE34474:
	mov.w @(0x14A,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce344f2               ; loc_ce34490+0x62
	mov.l @(0x158,PC),r3
	mov 0x00,r13
	mov r13,r5
	mov.b r13,@(r0,r14)
	mov r13,r6
	jsr @r3
	mov r14,r4
	mov.w @(0x136,PC),r0
	mov 0x04,r5
	mov.l @(0x150,PC),r3
	mov.l @(r0,r14),r4
	mov.b @(0x2,r12),r0
	mov.l @(0x144,PC),r6
	mov r0,r1
	jsr @r3
	mov r5,r0
	shll r0
	mov.l @(0x140,PC),r3
	mov.b @(r0,r6),r2
	mov.w @(0x120,PC),r0
	mov.b r2,@(r0,r4)
	mov.b @(0x2,r12),r0
	mov r0,r1
	jsr @r3
	mov r5,r0
	shll r0
	mov.w @(0x114,PC),r1
	add r6,r0
	mov.l @(0x128,PC),r3
	mov.b @(0x1,r0),r0
	add r4,r1
	mov.b r0,@r1
	mov.b @(0x2,r12),r0
	mov r0,r1
	jsr @r3
	mov r5,r0
	shll r0
	mov.w @(0xFE,PC),r1
	add r0,r6
	mov r13,r3
	mov.b @(0x1,r6),r0
	add r14,r1
	mov.b r0,@r1
	mov.w @(0xF4,PC),r0
	mov.w @(0xF6,PC),r1
	mov.b r13,@(r0,r14)
	add 0xFF,r0
	mov.b r13,@(r0,r14)
	add r14,r1
	mov.w @(0xEA,PC),r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	mov.b @(0x2,r12),r0
	cmp/gt r0,r3
	addc r3,r0
	shar r0
	add 0x20,r0
	mov.b r0,@r1

loc_CE344F2:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE344FC:
mov.l r14,@-r15
mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_CE345E4_to_loc_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0x60
	tst r0,r0
	bt loc_CE34560
	mov.b @(0x07,r14),r0
	mov.l @(loc_CE345E8_to_loc_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x07,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE345EC_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x22,r6 ; r6 set to 0x22
	mov 0x0F,r5 ; r5 set to 0x0F
	jmp @r2
	mov.l @r15+,r14

loc_CE34560:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE34566:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE345F0_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE3458E
	mov.w @(loc_CE345CE,pc),r0 ; r0 set to 0x205
	mov 0x00,r3 ; r3 set to 0x00
	mov r3,r5 ; r5 set to 0x00
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE345F4_to_loc_8C035162,pc),r3 ; r3 set to 0x8C035162
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE345F8_to_loc_8C051648,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE3458E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE34594:
	mov.w @(loc_CE345D0,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x1ED
	mov 0x02,r4 ; r4 set to 0x02
	mov.l @(loc_CE345FC_to_loc_CE36FBC_to_loc_CE33B46,pc),r1 ; r1 set to 0xCE36FBC
	mov.b r4,@(r0,r14)
	add 0x08,r0 ; r0 set to 0x1F5
	mov.b r4,@(r0,r14)
	mov 0x05,r3 ; r3 set to 0x05
	mov.w @(loc_CE345D2,pc),r0 ; r0 set to 0x3F8
	mov.b r4,@(r0,r14)
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.w @(loc_CE345D4,pc),r0 ; r0 set to 0x328
	mov.b r3,@(r0,r14)
	mov.b @(0x07,r14),r0
	extu.b r0,r0 ; r0 set to 0x28
	shll2 r0 ; r0 set to 0xA0
	mov.l @(r0,r1),r3 ; r3 ??
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE345C2:
	#data 0x0141
loc_CE345C4:
	#data 0x01C8
loc_CE345C6:
	#data 0x01F6
loc_CE345C8:
	#data 0x01A1
loc_CE345CA:
	#data 0x03F9
loc_CE345CC:
	#data 0x0327
loc_CE345CE:
	#data 0x0205
loc_CE345D0:
	#data 0x01EA
loc_CE345D2:
	#data 0x03F8
loc_CE345D4:
	#data 0x0328
	#align4

loc_CE345D8:
	#data loc_8C02FEC4
loc_CE345DC_to_loc_CE36FB4:
	#data loc_CE36FB4
loc_CE345e0:
	#data loc_8C129128
loc_CE345E4_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE345E8_to_loc_8C0511B4:
	#data loc_8C0511B4
loc_CE345EC_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE345F0_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE345F4_to_loc_8C035162:
	#data loc_8C035162
loc_CE345F8_to_loc_8C051648:
	#data loc_8C051648
loc_CE345FC_to_loc_CE36FBC_to_loc_CE33B46:
	#data loc_CE36FBC_to_loc_CE33B46

;==============================================
loc_CE34600:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_CE34750_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE3461A
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_CE34754_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_CE3461A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_CE34622:
	mov r4,r3
	mov.l @(loc_CE34758_to_loc_CE36FFC_to_loc_CE34634,pc),r1 ; r1 set to 0xCE36FFC
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE34634:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	mov.l @(0x11C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x118,PC),r2
	mov 0x0C,r5
	jsr @r2
	mov r14,r4
	mov.w @(0xF4,PC),r0
	mov 0xF9,r2
	mov.l @(0x110,PC),r1
	mov.b @(r0,r14),r0
	mov.l @(0x114,PC),r4
	extu.b r0,r0
	shll r0
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1C,r14)
	mova @(0x104,PC),r0
	fmov @r0,fr5
	mova @(0x108,PC),r0
	fmov @r0,fr4
	mov.w @(0xDC,PC),r0
	mov.b @(r0,r14),r3
	add 0xA1,r0
	extu.b r3,r3
	shld r2,r3
	mov.b @(r0,r14),r2
	shll2 r3
	extu.b r2,r2
	shll2 r2
	shll2 r3
	shll r2
	add r4,r3
	add r2,r3
	mov.l @r3,r2
	mov 0x5C,r0
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0xF9,r2
	mov.w @(0xB2,PC),r0
	mov.b @(r0,r14),r3
	add 0xA1,r0
	extu.b r3,r3
	shld r2,r3
	shll2 r3
	shll2 r3
	add r3,r4
	mov.b @(r0,r14),r3
	mov 0x68,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r4
	mov.l @(0x4,r4),r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xB4,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x7C,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_ce346e4             ; loc_ce346d2+0x12
	mov 0x2F,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE346E4:
	lds.l @r15+,pr
	mov.l @(0x94,PC),r3
	mov 0x0F,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE346F0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE34750_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE34720
	mov.b @(0x06,r14),r0
	mov 0x11,r3 ; r3 set to 0x11
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_CE3474C,pc),r0 ; r0 set to 0x1D6
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE34780_to_loc_8C053082,pc),r3 ; r3 set to 0x8C053082
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE3477C_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x30,r6 ; r6 set to 0x30
	mov 0x0F,r5 ; r5 set to 0x0F
	jmp @r2
	mov.l @r15+,r14

loc_CE34720:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE34726:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_CE34788
	mov.l @(loc_CE34784_to_loc_8C05176E,pc),r2 ; r2 set to 0x8C05176E
	jsr @r2
	mov r14,r4
	bra loc_CE3483A
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE34746:
	#data 0x01A3
loc_CE34748:
	#data 0x0202
loc_CE3474a:
	#data 0x01D2
loc_CE3474C:
	#data 0x01D6
	#align4

loc_CE34750_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE34754_to_loc_8C051648:
	#data loc_8C051648
loc_CE34758_to_loc_CE36FFC_to_loc_CE34634:
	#data loc_CE36FFC_to_loc_CE34634
loc_CE3475C_to_loc_CE31B5C:
	#data loc_CE31B5C
loc_CE34760:
	#data loc_8C056DE4
loc_CE34764_to_loc_CE3702C:
	#data loc_CE3702C
loc_CE34768:
	#data 0x3FD55555
loc_CE3476C_to_loc_CE3700C:
	#data loc_CE3700C
loc_CE34770:
	#data 0x47800000
loc_CE34774:
	#data 0x411A4924
loc_CE34778:
	#data 0xBE892492
loc_CE3477C_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE34780_to_loc_8C053082:
	#data loc_8C053082
loc_CE34784_to_loc_8C05176E:
	#data loc_8C05176E

;----------------------------------------------
loc_CE34788:
	mov.l @(0x150,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	mov 0x08,r3
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bt loc_ce3483a
	mov.l @(0x110,PC),r1
	jsr @r1
	mov r14,r4
	tst r0,r0
	bt.s loc_ce3483a
	mov r0,r13
	mov.b @(0x6,r14),r0
	mov 0x05,r6
	mov.w @(0xE8,PC),r3
	mov r6,r5
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)
	mov.w @(0xDE,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0xF4,PC),r3
	jsr @r3
	mov r14,r4
	mova @(0xF0,PC),r0
	mov.l @(0xF8,PC),r3
	fmov @r0,fr3
	mova @(0xF0,PC),r0
	mov r15,r5
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.w @(0xC0,PC),r0
	mov 0x01,r3
	mov 0x0F,r5
	mov.w @(r0,r14),r2
	mov 0x31,r6
	xor r3,r2
	mov.w r2,@(r0,r14)
	mov.b @(r0,r14),r1
	mov.w @(0xB2,PC),r0
	mov.b r1,@(r0,r14)
	mov.w @(0xAC,PC),r0
	mov.w @(r0,r13),r2
	xor r3,r2
	mov.w r2,@(r0,r13)
	mov.b @(r0,r13),r1
	mov.w @(0xA4,PC),r0
	mov.l @(0xC8,PC),r2
	mov.b r1,@(r0,r13)
	jsr @r2
	mov r14,r4
	mov.l @(0xC4,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4

loc_CE3483A:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE34844:
	mov.w @(loc_CE348D2,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	mov 0x02,r4 ; r4 set to 0x02
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x1ED
	mov.b r4,@(r0,r14)
	add 0x08,r0 ; r0 set to 0x1F5
	mov.b r4,@(r0,r14)
	add 0xFD,r0 ; r0 set to 0x1F2
	mov 0x03,r3 ; r3 set to 0x03
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE348DC_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE3487C
	mov.l @(loc_CE348FC_to_loc_8C05218A,pc),r3 ; r3 set to 0x8C05218A
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE34900_to_loc_8C05176E,pc),r2 ; r2 set to 0x8C05176E
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE3487C:
	mov.w @(loc_CE348D4,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE348C4
	mov 0x00,r3 ; r3 set to 0x00
	mov r3,r5 ; r5 set to 0x00
	mov r3,r6 ; r6 set to 0x00
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE348E4_to_loc_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE348D6,pc),r0 ; r0 set to 0x1C8
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(r0,r14),r4
	add 0x2E,r0 ; r0 set to 0x1F6
	mov.b r3,@(r0,r4)
	add 0x5F,r0 ; r0 set to 0x255
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_CE348B0
	mov.w @(loc_CE348D8,pc),r0 ; r0 set to 0x1A1
	mov 0x3C,r5 ; r5 set to 0x3C
	mov.b r5,@(r0,r4)
	bra loc_CE348C4
	mov.b r5,@(r0,r14)

loc_CE348B0:
	mov.w @(0x26,PC),r0
	mov.b @(r0,r14),r2
	add 0xFE,r0
	add 0x3B,r2
	mov.b r2,@(r0,r4)
	add 0x02,r0
	mov.b @(r0,r14),r3
	add 0xFE,r0
	add 0x3B,r3
	mov.b r3,@(r0,r14)

loc_CE348C4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE348ca:
	#data 0x00CB
loc_CE348cc:
	#data 0x01F7
loc_CE348ce:
	#data 0x0130
loc_CE348D0:
	#data 0x01D2
loc_CE348D2:
	#data 0x01EA
loc_CE348D4:
	#data 0x0141
loc_CE348D6:
	#data 0x01C8
loc_CE348D8:
	#data 0x01A1
loc_CE348DA:
	#data 0x01A3
	#align4

loc_CE348DC_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE348E0:
	#data loc_8C045790
loc_CE348E4_to_loc_8C02FEC4:
	#data loc_8C02FEC4
loc_CE348E8:
	#data 0xC3055555
loc_CE348EC:
	#data 0x435EDB6D
loc_CE348F0:
	#data loc_8C103660
loc_CE348F4:
	#data loc_8C034E8C
loc_CE348F8:
	#data loc_8C0523D8
loc_CE348FC_to_loc_8C05218A:
	#data loc_8C05218A
loc_CE34900_to_loc_8C05176E:
	#data loc_8C05176E

;==============================================
loc_CE34904:
	mov r4,r3
	mov.l @(loc_CE34A68_to_loc_CE37030_to_loc_CE34916,pc),r1 ; r1 set to 0xCE37030
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE34916:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x37,r3
	mov 0x00,r4
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x132,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x134,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x124,PC),r2
	jsr @r2
	mov r14,r4
	mova @(0x124,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xFE,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_ce3496e
	mov 0x08,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE3496E:
	lds.l @r15+,pr
	mov.l @(0x104,PC),r3
	mov 0x15,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE3497A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_CE34A60,pc),r3 ; r3 set to 0x150
	mov r4,r14
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.b @(0x01,r3),r0
	tst r0,r0
	bt/s loc_CE349B8
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_CE34A60,pc),r2 ; r2 set to 0x150
	add r14,r2 ; r2 ??? bc r14 is ???
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x01,r2)
	mova @(loc_CE34A7C,pc),r0  ; r0 set to 0xCE34A7C
	fmov.s @r0,fr3
	mova @(loc_CE34A80,pc),r0  ; r0 set to 0xCE34A80
	mov.l @(loc_CE34A84_to_loc_8C050834,pc),r3 ; r3 set to 0x8C050834
	mov r15,r5
	fmov.s fr3,@r15
	mov 0x01,r6 ; r6 set to 0x01
	fmov.s @r0,fr3 ; r3 ??
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE349B8:
	mov.w @(0xA6,PC),r0
	mov 0x05,r2
	mov.l @(0xAC,PC),r5
	mov.b r2,@(r0,r14)
	mov.w @(0xA0,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce349ee
	mov.w @(0x98,PC),r0
	mov 0x37,r3
	mov.b r4,@(r0,r14)
	add 0x60,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r5,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)

loc_CE349EE:
	mov.w @(0x72,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x02,r0
	bf loc_ce34a1c
	mov.w @(0x6A,PC),r0
	mov 0x38,r3
	mov.b r4,@(r0,r14)
	add 0x60,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r5,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)

loc_CE34A1C:
	mov 0x5C,r1
	mov.l @(0x68,PC),r3
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce34a54
	mov.b @(0x6,r14),r0
	mov 0x18,r5
	mov.l @(0x2C,PC),r3
	mov 0x04,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4

loc_CE34A54:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE34A5C:
	#data 0x01A1
loc_CE34A5E:
	#data 0x01D2
loc_CE34A60:
	#data 0x0150
loc_CE34A62:
	#data 0x0328
loc_CE34A64:
	#data 0x0141
	#align4

loc_CE34A68_to_loc_CE37030_to_loc_CE34916:
	#data loc_CE37030_to_loc_CE34916
loc_CE34A6C:
	#data loc_8C2896B0
loc_CE34A70_to_loc_CE31B5C:
	#data loc_CE31B5C
loc_CE34A74:
	#data 0x40855555
loc_CE34A78:
	#data loc_8C034E8C
loc_CE34A7C:
	#data 0xC2200000
loc_CE34A80:
	#data 0x431A4924
loc_CE34A84_to_loc_8C050834:
	#data loc_8C050834
loc_CE34A88:
	#data loc_8C034DEE

;==============================================
loc_CE34A8C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_CE34BD4_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE34AA6
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_CE34BD8_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_CE34AA6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_CE34AAE:
	mov r4,r3
	mov.l @(loc_CE34BDC_to_loc_CE3703C_to_loc_CE34AC0,pc),r1 ; r1 set to 0xCE3703C
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE34AC0:
	mov.b @(0x06,r4),r0
	mov 0x07,r6 ; r6 set to 0x07
	fldi0 fr4
	add 0x01,r0
	mov.l @(loc_CE34BE0_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b r0,@(0x06,r4)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r4)
	jmp @r3
	mov 0x15,r5

;==============================================
loc_CE34AE0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_CE34BD4_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE34AFA
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_CE34BD8_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_CE34AFA:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_CE34B02:
	mov r4,r3
	mov.l @(loc_CE34BE4_to_loc_CE37044_to_loc_CE34B14,pc),r1 ; r1 set to 0xCE37044
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE34B14:
	mov.w @(0xB0,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_ce34b30
	mov.w @(0xA4,PC),r0
	mov 0x10,r3
	mov.w @(0x9E,PC),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)

loc_CE34B30:
	mov.b @(0x6,r14),r0
	mov.l @(0xB4,PC),r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xA0,PC),r2
	mov 0x0F,r5
	mov 0x35,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xA0,PC),r3
	mov 0x3C,r7
	mov r14,r4
	mov r7,r6
	mov 0x0A,r5
	jmp @r3
	mov.l @r15+,r14

loc_CE34B56:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_CE34BCE,pc),r0 ; r0 set to 0x3E4
	mov r4,r14
	mov 0x02,r4 ; r4 set to 0x02
	mov.w r4,@(r0,r14)
	add 0x14,r0 ; r0 set to 0x3F8
	mov.b r4,@(r0,r14)
	mov 0x05,r3 ; r3 set to 0x05
	mov.w @(loc_CE34BD0,pc),r0 ; r0 set to 0x328
	mov.b r3,@(r0,r14)
	mov.w @(loc_CE34BC8,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_CE34B7C
	bra loc_CE34B7E
	mov 0x02,r2

loc_CE34B7C:
	mov 0x00,r2

loc_CE34B7E:
	mov.w @(0x50,PC),r0
	mov.l @(0x50,PC),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce34bc0
	mov.w @(0x3A,PC),r0
	mov 0x00,r4
	mov.l @(0x64,PC),r3
	mov r15,r5
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x03,r6
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mova @(0x48,PC),r0
	fmov @r0,fr3
	mova @(0x48,PC),r0
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0x28,PC),r2
	mov 0x0F,r5
	mov 0x37,r6
	jsr @r2
	mov r14,r4

loc_CE34BC0:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE34BC8:
	#data 0x0255
loc_CE34BCA:
	#data 0x00FF
loc_CE34BCC:
	#data 0x03F0
loc_CE34BCE:
	#data 0x03E4
loc_CE34BD0:
	#data 0x0328
loc_CE34BD2:
	#data 0x03F1
	#align4

loc_CE34BD4_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE34BD8_to_loc_8C051648:
	#data loc_8C051648
loc_CE34BDC_to_loc_CE3703C_to_loc_CE34AC0:
	#data loc_CE3703C_to_loc_CE34AC0
loc_CE34BE0_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE34BE4_to_loc_CE37044_to_loc_CE34B14:
	#data loc_CE37044_to_loc_CE34B14
loc_CE34BE8_to_loc_CE31B5C:
	#data loc_CE31B5C
loc_CE34BEC:
	#data loc_8C059A44
loc_CE34BF0:
	#data 0xC2200000
loc_CE34BF4:
	#data 0x431A4924
loc_CE34BF8:
	#data loc_8C050834

;==============================================
loc_CE34BFC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(loc_CE34D1A,pc),r0 ; r0 set to 0x3E4
	mov r4,r14
	mov 0x02,r4 ; r4 set to 0x02
	mov.w r4,@(r0,r14)
	add 0x14,r0 ; r0 set to 0x3F8
	mov.b r4,@(r0,r14)
	mov 0x05,r3 ; r3 set to 0x05
	mov.w @(loc_CE34D1C,pc),r0 ; r0 set to 0x328
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE34D24_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE34C36
	mov.l @(loc_CE34D28_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x04,r0 ; r0 set to 0x04
	mov 0x0F,r5 ; r5 set to 0x0F
	mov.b r0,@(0x06,r14)
	mov 0x36,r6 ; r6 set to 0x36
	jsr @r3
	mov r14,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_CE34C36:
	mov.l @(0xF4,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt.s loc_ce34c88
	mov.l r0,@r15
	mov.b @(0x6,r14),r0
	mov 0x05,r6
	mov.l @(0xE8,PC),r3
	mov r6,r5
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0xC6,PC),r0
	mov r15,r5
	mov.w @(0xC0,PC),r2
	add 0x04,r5
	mov.l @(0xDC,PC),r3
	mov.b r2,@(r0,r14)
	mova @(0xD0,PC),r0
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	mova @(0xCC,PC),r0
	fmov @r0,fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0xB0,PC),r2
	mov 0x0F,r5
	mov 0x1D,r6
	jsr @r2
	mov r14,r4
	mov.l @(0xBC,PC),r3
	mov.l @r15,r5
	jsr @r3
	mov r14,r4

loc_CE34C88:
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE34C90:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE34D24_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE34CB4
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_CE34D28_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x1E,r6 ; r6 set to 0x1E
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x0F,r5 ; r5 set to 0x0F
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE34CB4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE34CBA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x64,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce34d14
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x30,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_ce34d08
	mov 0x39,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE34D08:
	lds.l @r15+,pr
	mov.l @(0x1C,PC),r3
	mov 0x0F,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE34D14:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE34D1A:
	#data 0x03E4
loc_CE34D1C:
	#data 0x0328
loc_CE34D1e:
	#data 0x00CD
loc_CE34D20:
	#data 0x01F7
loc_CE34D22:
	#data 0x01D2
	#align4

loc_CE34D24_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE34D28_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE34D2c:
	#data loc_8C045790
loc_CE34D30:
	#data loc_8C02FEC4
loc_CE34D34:
	#data 0xC312AAAA
loc_CE34D38:
	#data 0x432B6DB6
loc_CE34D3C:
	#data loc_8C103660
loc_CE34D40:
	#data loc_8C0523D8
loc_CE34D44:
	#data 0x41055555
loc_CE34D48:
	#data 0x41D64924
loc_CE34D4C:
	#data 0xBFAB6DB6

;==============================================
loc_CE34D50:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x120,PC),r3
	sts.l pr,@-r15
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @r1,fr3
	mov 0x60,r1
	fmov @(r0,r14),fr2
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_ce34dbc
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0xD8,PC),r0
	fmov @r0,fr2
	mov 0x68,r0
	fmov fr2,@(r0,r14)
	mov.w @(0xC4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce34dbc
	mov 0x68,r0
	fmov @(r0,r14),fr2
	fneg fr2
	fmov fr2,@(r0,r14)

loc_CE34DBC:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE34DC2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov.l @(0xAC,PC),r3
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x78,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce34e6c
	mov.b @(0x7,r14),r0
	mov 0x14,r5
	mov.l @(0x6C,PC),r4
	add 0x01,r0
	mov.l @(0x6C,PC),r3
	mov.b r0,@(0x7,r14)
	mov 0x02,r0
	mov.b r0,@(0x5,r4)
	mov 0x01,r0
	mov.b r0,@(0x6,r4)
	jsr @r3
	mov r14,r4
	mov.l @(0x60,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x40,PC),r0
	mov 0x50,r5
	mov.l @(0x5C,PC),r3
	mov.l @(r0,r14),r4
	add 0xD9,r0
	mov.b r5,@(r0,r4)
	mov.b r5,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x01,r5
	mov.w @(0x2E,PC),r0
	fmov fr3,@r15
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov.l @(0x40,PC),r2
	mov 0x49,r5
	jsr @r2
	mov r14,r4
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x3C,PC),r2
	mov 0x0F,r5
	mov 0x20,r6
	jsr @r2
	mov r14,r4

loc_CE34E6C:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34e74:
	#data 0x01D2
loc_ce34e76:
	#data 0x01C8
loc_ce34e78:
	#data 0x041C
	#align4

loc_ce34e7C:
	#data loc_8C034DEE
loc_ce34e80:
	#data 0x40F00000
loc_ce34e84:
	#data loc_8C052CE2
loc_ce34e88:
	#data loc_8C26A518
loc_ce34e8c:
	#data loc_8C042008
loc_CE34E90_to_loc_CE36B7A:
	#data loc_CE36B7A
loc_CE34E94:
	#data loc_8C1025CA
loc_CE34E98:
	#data loc_8C04223A
loc_CE34E9C:
	#data loc_8C05933C
loc_CE34EA0:
	#data loc_8C034E8C

;==============================================
loc_CE34EA4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE34F92,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.l @(loc_CE34FA0_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE34EEA
	mov.b @(0x07,r14),r0
	mov 0x0F,r5 ; r5 set to 0x0F
	mov r14,r4
	mov 0x3A,r6 ; r6 set to 0x3A
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov.b r0,@(0x02,r3)
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_CE34F94,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)
	mov.b @(r0,r14),r1
	mov.w @(loc_CE34F96,pc),r0 ; r0 set to 0x1D2
	mov.b r1,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE34FA4_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	jmp @r2
	mov.l @r15+,r14

loc_CE34EEA:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE34EF2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_CE34FA0_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE34F38
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mova @(loc_CE34FA8,pc),r0  ; r0 set to 0xCE34FA8
	fmov.s @r0,fr4
	mov.w @(loc_CE34F94,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_CE34F1E
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_CE34F24
	fadd fr4,fr3

loc_CE34F1E:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	fsub fr4,fr3

loc_CE34F24:
	mov.l @(loc_CE34FA4_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C
	mov 0x0F,r5 ; r5 set to 0x0F, r5 set to 0x0F
	fmov.s fr3,@(r0,r14)
	mov 0x3B,r6 ; r6 set to 0x3B, r6 set to 0x3B
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE34F38:
	mov.w @(0x5C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce34f8a               ; loc_ce34f76+0x14
	mov.l @(0x68,PC),r4
	mov 0x00,r3
	mov 0x01,r5
	mov.b r3,@(r0,r14)
	mov r5,r0
	nop 
	mov.l @(0x60,PC),r3
	mov.b r0,@(0x5,r4)
	mov.b r0,@(0x6,r4)
	jsr @r3
	mov r14,r4
	mov.w @(0x40,PC),r0
	mov 0x51,r5
	mov.l @(0x58,PC),r3
	mov.l @(r0,r14),r4
	add 0xEC,r0
	mov.l r14,@(r0,r4)
	add 0xED,r0
	mov.b r5,@(r0,r14)
	mov.b r5,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x01,r5
	mov.w @(0x2A,PC),r0
	fmov fr3,@r15
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov.l @(0x38,PC),r2
	mov 0x49,r5
	jsr @r2
	mov r14,r4
	mov.l @(0x34,PC),r3
	jsr @r3
	mov r14,r4

loc_CE34F8A:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE34F92:
	#data 0x02A4
loc_CE34F94:
	#data 0x0130
loc_CE34F96:
	#data 0x01D2
loc_CE34F98:
	#data 0x0141
loc_CE34F9a:
	#data 0x01C8
loc_CE34F9c:
	#data 0x041C
	#align4

loc_CE34FA0_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE34FA4_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE34FA8:
	#data 0x43200000
loc_CE34Fac:
	#data loc_8C26A518
loc_CE34Fb0:
	#data loc_8C0423FC
loc_CE34Fb4:
	#data loc_8C1025CA
loc_CE34Fb8:
	#data loc_8C04223A
loc_CE34Fbc:
	#data loc_8C05933C

;==============================================
loc_CE34FC0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0xBC,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce35012               ; loc_ce34ff8+0x1a
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0xB4,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0xAC,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xA8,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x8E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce35012
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE35012:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE35018:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x6C,PC),r3
	sts.l pr,@-r15
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @r1,fr3
	mov 0x60,r1
	fmov @(r0,r14),fr2
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_ce35084
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0x30,PC),r0
	fmov @r0,fr2
	mov 0x68,r0
	fmov fr2,@(r0,r14)
	mov.w @(0x14,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce35084
	mov 0x68,r0
	fmov @(r0,r14),fr2
	fneg fr2
	fmov fr2,@(r0,r14)

loc_CE35084:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3508a:
	#data 0x0141
loc_ce3508c:
	#data 0x01D2
	#align4

loc_CE35090:
	#data loc_8C034DEE
loc_CE35094:
	#data 0x41055555
loc_CE35098:
	#data 0x41E76DB6
loc_CE3509C:
	#data 0xBFAB6DB6
loc_CE350A0:
	#data 0x40F00000

;==============================================
loc_CE350A4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov.l @(0x11C,PC),r3
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xE8,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce3514e               ; loc_ce3514c+0x2
	mov.b @(0x7,r14),r0
	mov 0x15,r5
	mov.l @(0xDC,PC),r4
	add 0x01,r0
	mov.l @(0xDC,PC),r3
	mov.b r0,@(0x7,r14)
	mov 0x02,r0
	mov.b r0,@(0x5,r4)
	mov 0x01,r0
	mov.b r0,@(0x6,r4)
	jsr @r3
	mov r14,r4
	mov.l @(0xD0,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0xAA,PC),r0
	mov 0x52,r5
	mov.l @(0xC8,PC),r3
	mov.l @(r0,r14),r4
	add 0xD9,r0
	mov.b r5,@(r0,r4)
	mov.b r5,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x01,r5
	mov.w @(0x98,PC),r0
	fmov fr3,@r15
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov.l @(0xB0,PC),r2
	mov 0x49,r5
	jsr @r2
	mov r14,r4
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0xA8,PC),r2
	mov 0x0F,r5
	mov 0x38,r6
	jsr @r2
	mov r14,r4

loc_CE3514E:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE35156:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE351D0_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE3517A
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_CE351F0_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x3C,r6 ; r6 set to 0x3C
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x0F,r5 ; r5 set to 0x0F
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE3517A:
	mov.w @(0x48,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_ce35196
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0xEF,r0
	mov.w @(r0,r14),r2
	mov 0x01,r3
	xor r3,r2
	mov.w r2,@(r0,r14)
	mov.b @(r0,r14),r1
	mov.w @(0x32,PC),r0
	mov.b r1,@(r0,r14)

loc_CE35196:
	mov.w @(0x30,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce351bc
	mov.b r4,@(r0,r14)
	mova @(0x50,PC),r0
	fmov @r0,fr4
	mov.w @(0x24,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_ce351b4
	mov 0x34,r0
	fmov @(r0,r14),fr3
	bra loc_ce351ba
	fadd fr4,fr3

loc_CE351B4:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fsub fr4,fr3

loc_CE351BA:
	fmov fr3,@(r0,r14)

loc_CE351BC:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce351c2:
	#data 0x01C8
loc_ce351c4:
	#data 0x041C
loc_ce351c6:
	#data 0x0141
loc_ce351c8:
	#data 0x01D2
loc_ce351ca:
	#data 0x0140
loc_ce351cc:
	#data 0x0130
	#align4

loc_CE351D0_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE351D4:
	#data loc_8C052CE2
loc_CE351D8:
	#data loc_8C26A518
loc_CE351Dc:
	#data loc_8C042008
loc_CE351E0_to_loc_CE36B7A:
	#data loc_CE36B7A
loc_CE351E4:
	#data loc_8C1025CA
loc_CE351E8:
	#data loc_8C04223A
loc_CE351Ec:
	#data loc_8C05933C
loc_CE351F0_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE351F4:
	#data 0x43200000

;==============================================
loc_CE351F8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE3532C_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE35236
	mov.b @(0x07,r14),r0
	mov r14,r4
	fldi0 fr4
	mov 0x2B,r6 ; r6 set to 0x2B
	add 0x01,r0
	mov.l @(loc_CE35338_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mova @(loc_CE35330,pc),r0  ; r0 set to 0xCE35330
	fmov.s @r0,fr3 ; r3 ??
	mov 0x60,r0 ; r0 set to 0x60
	mov 0x0F,r5 ; r5 set to 0x0F
	fmov.s fr3,@(r0,r14)
	mova @(loc_CE35334,pc),r0  ; r0 set to 0xCE35334
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE35236:
	mov.w @(0xE8,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce35258
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x53,r5
	mov.w @(0xDC,PC),r0
	mov 0x11,r3
	mov.l @(r0,r14),r4
	add 0xEC,r0
	mov.l r14,@(r0,r4)
	add 0xED,r0
	mov.b r5,@(r0,r14)
	mov.b r5,@(r0,r4)
	add 0x55,r0
	mov.b r3,@(r0,r4)

loc_CE35258:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3525E:
	mov.w @(0xC0,PC),r0
	mov.w @(0xC2,PC),r5
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_ce35274
	add r4,r5
	mov.b @(0x7,r4),r0
	add 0x01,r0
	mov.b r0,@(0x7,r4)
	mov 0x00,r0
	mov.b r0,@(0x2,r5)

loc_CE35274:
	mov.l @(0xB4,PC),r3
	jmp @r3
	nop 

loc_CE3527A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov.l @(0xA0,PC),r3
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x5E,PC),r0
	mov.l @(r0,r14),r13
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov @(r0,r13),fr2
	mova @(0x6C,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	mova @(0x6C,PC),r0
	fmov @r0,fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bf loc_ce35318
	mov.b @(0x7,r14),r0
	mov r15,r5
	mov.w @(0x44,PC),r3
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov.w @(0x40,PC),r0
	mov.b r3,@(r0,r14)
	mova @(0x58,PC),r0
	fmov @r0,fr2
	mova @(0x58,PC),r0
	mov.l @(0x58,PC),r3
	fmov fr2,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0x50,PC),r2
	mov 0x05,r5
	jsr @r2
	mov r14,r4
	mov.l @(0x30,PC),r3
	mov 0x0F,r5
	mov 0x1D,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x40,PC),r2
	mov r13,r5
	jsr @r2
	mov r14,r4

loc_CE35318:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce35322:
	#data 0x0141
loc_ce35324:
	#data 0x01C8
loc_ce35326:
	#data 0x02A4
loc_ce35328:
	#data 0x00CD
loc_ce3532a:
	#data 0x01F7
	#align4

loc_CE3532C_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE35330:
	#data 0x422B6DB6
loc_CE35334:
	#data 0xBF092492
loc_CE35338_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE3533c:
	#data 0xC1892492
loc_CE35340:
	#data 0xC2892492
loc_CE35344:
	#data 0xC312AAAA
loc_CE35348:
	#data 0x432B6DB6
loc_CE3534c:
	#data loc_8C103660
loc_CE35350:
	#data loc_8C042008
loc_CE35354:
	#data loc_8C05248E

;==============================================
loc_CE35358:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE35456,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.l @(loc_CE35460_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE3538E
	mov.b @(0x07,r14),r0
	mov 0x0F,r5 ; r5 set to 0x0F
	mov r14,r4
	mov 0x2C,r6 ; r6 set to 0x2C
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov.b r0,@(0x02,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE35464_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	jmp @r3
	mov.l @r15+,r14

loc_CE3538E:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE35396:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE35460_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE353D4
	mov.b @(0x07,r14),r0
	mov r14,r4
	fldi0 fr4
	mov 0x2D,r6 ; r6 set to 0x2D
	add 0x01,r0
	mov.l @(loc_CE35464_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mova @(loc_CE35468,pc),r0  ; r0 set to 0xCE35468
	fmov.s @r0,fr3 ; r3 ??
	mov 0x60,r0 ; r0 set to 0x60
	mov 0x0F,r5 ; r5 set to 0x0F
	fmov.s fr3,@(r0,r14)
	mova @(loc_CE3546C,pc),r0  ; r0 set to 0xCE3546C
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE353D4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE353DA:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l r13,@-r15
	mov 0x34,r0 ; r0 set to 0x34
	mov.l r12,@-r15
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.w @(loc_CE35456,pc),r13 ; r13 set to 0x2A4
	sts.l pr,@-r15
	fmov.s @r1,fr3
	mov 0x68,r1 ; r1 set to 0x68
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	add r14,r13 ; r13 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov.l @(loc_CE35460_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE35470_to_loc_8C055D2E,pc),r2 ; r2 set to 0x8C055D2E
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_CE3548E
	mov.w @(loc_CE35458,pc),r0 ; r0 set to 0x525
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
	tst r2,r2
	bt loc_CE35474
	mov.w @(loc_CE3545A,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_CE3547A
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x142
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x01,r0
	bt loc_CE3547A
	mov.w @(loc_CE3545C,pc),r0 ; r0 set to 0x142
	mov.b @(r0,r14),r2
	add 0xFF,r2
	bra loc_CE3547A
	mov.b r2,@(r0,r14)

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE35456:
	#data 0x02A4
loc_CE35458:
	#data 0x0525
loc_CE3545A:
	#data 0x0141
loc_CE3545C:
	#data 0x0142
	#align4

loc_CE35460_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE35464_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE35468:
	#data 0xC0CDB6DB
loc_CE3546C:
	#data 0xBF9A4924
loc_CE35470_to_loc_8C055D2E:
	#data loc_8C055D2E

;----------------------------------------------
loc_CE35474:
	mov.w @(0x118,PC),r0
	mov 0x01,r1
	mov.b r1,@(r0,r14)

loc_CE3547A:
	mov.b @(0x2,r13),r0
	mov 0x10,r4
	add 0x01,r0
	mov.b r0,@(0x2,r13)
	mov.b @(0x2,r13),r0
	cmp/gt r4,r0
	bf loc_ce3548e
	mov r4,r0
	nop 
	mov.b r0,@(0x2,r13)

loc_CE3548E:
	mov.l @(loc_CE3559C_to_loc_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE354D4
	mov.b @(0x07,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.l @(loc_CE355A0_to_loc_8C26A518,pc),r4 ; r4 set to 0x8C26A518
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x05,r4)
	mov 0x01,r0 ; r0 set to 0x01
	mov.l @(loc_CE355A4_to_loc_CE36B7A,pc),r3 ; r3 set to 0xCE36B7A
	mov.b r0,@(0x06,r4)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_CE355A8_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x0F,r5 ; r5 set to 0x0F
	mov r14,r4
	mov 0x2E,r6 ; r6 set to 0x2E
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE354D4:
	mov.b @(0x02,r13),r0
	mov 0x05,r3 ; r3 set to 0x05
	cmp/gt r3,r0
	bf loc_CE35520
	mov.w @(loc_CE35592,pc),r0 ; r0 set to 0x202
	mov.l @(loc_CE355AC_to_loc_CE36C00,pc),r12 ; r12 set to 0xCE36C00
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_CE354FA
	mov 0x25,r0 ; r0 set to 0x25
	mov.b @(r0,r14),r6
	mov 0x01,r7 ; r7 set to 0x01
	mov.b @(0x02,r13),r0
	extu.b r6,r6
	shll2 r0 ; r0 set to 0x94
	mov.l @(r0,r12),r2
	mov.l @(loc_CE355B0_to_loc_CE36BD0,pc),r0 ; r0 set to 0xCE36BD0
	bra loc_CE3550C
	shll2 r6

loc_CE354FA:
	mov 0x25,r0 ; r0 set to 0x25
	mov.b @(r0,r14),r6
	mov 0x01,r7 ; r7 set to 0x01
	mov.b @(0x02,r13),r0
	extu.b r6,r6
	shll2 r0 ; r0 set to 0x94
	mov.l @(r0,r12),r2
	shll2 r6
	mov.l @(loc_CE355B4_to_loc_CE36BE8,pc),r0 ; r0 set to 0xCE36BE8

loc_CE3550C:
	lds.l @r15+,pr
	mov.l @(r0,r6),r6
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	mov r14,r4
	mov.l @r15+,r12
	add r2,r6
	mov.l @(loc_CE355B8_to_loc_8C03544C,pc),r2 ; r2 set to 0x8C03544C, r2 set to 0x8C03544C
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE35520:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3552A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x60,PC),r0
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce3556c               ; loc_ce3555c+0x10
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r5
	mov.w @(0x52,PC),r0
	mov.l @(0x78,PC),r3
	mov.l @(r0,r14),r4
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov.w @(0x4A,PC),r0
	fmov fr3,@r15
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov.l @(0x64,PC),r2
	mov r15,r5
	mov 0x7E,r7
	mov 0x04,r6
	jsr @r2
	mov r14,r4
	mov.l @(0x5C,PC),r3
	mov 0x4A,r5
	jsr @r3
	mov r14,r4

loc_CE3556C:
	mov.l @(0x58,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce35588
	mov.b @(0x7,r14),r0
	mov 0x0F,r5
	mov.l @(0x28,PC),r3
	mov 0x0E,r6
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	jsr @r3
	mov r14,r4


loc_CE35588:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE35590:
	#data 0x0142
loc_CE35592:
	#data 0x0202
loc_CE35594:
	#data 0x0141
loc_CE35596:
	#data 0x01C8
loc_CE35598:
	#data 0x041C
	#align4

loc_CE3559C_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE355A0_to_loc_8C26A518:
	#data loc_8C26A518
loc_CE355A4_to_loc_CE36B7A:
	#data loc_CE36B7A
loc_CE355A8_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE355AC_to_loc_CE36C00:
	#data loc_CE36C00
loc_CE355B0_to_loc_CE36BD0:
	#data loc_CE36BD0
loc_CE355B4_to_loc_CE36BE8:
	#data loc_CE36BE8
loc_CE355B8_to_loc_8C03544C:
	#data loc_8C03544C
loc_CE355bC:
	#data loc_8C1025CA
loc_CE355C0:
	#data loc_8C10235C
loc_CE355C4:
	#data loc_8C04223A
loc_CE355C8:
	#data loc_8C034DEE

;==============================================
loc_CE355CC:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l r13,@-r15
	mov 0x34,r0
	mov.l r12,@-r15
	add r14,r1
	mov.w @(0xFE,PC),r12
	sts.l pr,@-r15
	fmov @r1,fr3
	mov 0x68,r1
	fmov @(r0,r14),fr2
	add r14,r1
	add r14,r12
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @r1,fr3
	mov 0x60,r1
	fmov @(r0,r14),fr2
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov.l @(0xE0,PC),r3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce3566e
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0xCC,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xC8,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mova @(0xC4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xC0,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x96,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce3565e
	mov 0x21,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE3565E:
	lds.l @r15+,pr
	mov.l @(0xA0,PC),r3
	mov 0x0F,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE3566E:
	mov.w @(0x6E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce356d2
	mov.l @(0x90,PC),r3
	mov 0x00,r13
	mov r13,r5
	mov.b r13,@(r0,r14)
	mov r13,r6
	jsr @r3
	mov r14,r4
	mov.w @(0x5A,PC),r0
	mov.l @(0x84,PC),r5
	mov.l @(r0,r14),r4
	mov.b @(0x2,r12),r0
	mov.w @(0x56,PC),r1
	shll r0
	mov.b @(r0,r5),r3
	add r4,r1
	mov.w @(0x4C,PC),r0
	mov.b r3,@(r0,r4)
	mov r13,r3
	mov.b @(0x2,r12),r0
	shll r0
	add r5,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@r1
	mov.b @(0x2,r12),r0
	mov.w @(0x3C,PC),r1
	shll r0
	add r0,r5
	mov.b @(0x1,r5),r0
	add r14,r1
	mov.b r0,@r1
	mov.w @(0x32,PC),r0
	mov.b r13,@(r0,r14)
	add 0xFF,r0
	mov.b r13,@(r0,r14)
	mov.w @(0x2C,PC),r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	mov.b @(0x2,r12),r0
	cmp/gt r0,r3
	mov.w @(0x22,PC),r1
	addc r3,r0
	shar r0
	add r14,r1
	add 0x20,r0
	mov.b r0,@r1

loc_CE356D2:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce356dc:
	#data 0x02A4
loc_ce356de:
	#data 0x01D2
loc_ce356e0:
	#data 0x0141
loc_ce356e2:
	#data 0x01C8
loc_ce356e4:
	#data 0x01F6
loc_ce356e6:
	#data 0x01A1
loc_ce356e8:
	#data 0x03F9
loc_ce356ea:
	#data 0x0327
loc_ce356ec:
	#data 0x0205
	#align4

loc_ce356f0:
	#data loc_8C034DEE
loc_ce356f4:
	#data 0x40D55555
loc_ce356f8:
	#data 0xBDD55555
loc_ce356fC:
	#data 0x419A4924
loc_CE35700:
	#data 0xBF2B6DB6
loc_CE35704:
	#data loc_8C034E8C
loc_CE35708:
	#data loc_8C02FEC4
loc_CE3570C_to_loc_CE37058:
	#data loc_CE37058

;==============================================
loc_CE35710:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_CE35860_to_loc_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0x60
	tst r0,r0
	bt loc_CE35774
	mov.l @(loc_CE35864_to_loc_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4
	jsr @r3
	mov r14,r4
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_CE35868_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x22,r6 ; r6 set to 0x22
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x07,r14)
	mov 0x0F,r5 ; r5 set to 0x0F
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE35774:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3577A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE3586C_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE357A2
	mov.w @(loc_CE35852,pc),r0 ; r0 set to 0x205
	mov 0x00,r3 ; r3 set to 0x00
	mov r3,r5 ; r5 set to 0x00
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE35870_to_loc_8C035162,pc),r3 ; r3 set to 0x8C035162
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE35874_to_loc_8C051648,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE357A2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE357A8:
	mov.w @(loc_CE35854,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x1ED
	mov 0x02,r4 ; r4 set to 0x02
	mov.l @(loc_CE35878_to_loc_CE3707C_to_loc_CE34C90,pc),r1 ; r1 set to 0xCE3707C
	mov.b r4,@(r0,r14)
	add 0x08,r0 ; r0 set to 0x1F5
	mov.b r4,@(r0,r14)
	mov 0x05,r3 ; r3 set to 0x05
	mov.w @(loc_CE35856,pc),r0 ; r0 set to 0x3F8
	mov.b r4,@(r0,r14)
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.w @(loc_CE35858,pc),r0 ; r0 set to 0x328
	mov.b r3,@(r0,r14)
	mov.b @(0x07,r14),r0
	extu.b r0,r0 ; r0 set to 0x28
	shll2 r0 ; r0 set to 0xA0
	mov.l @(r0,r1),r3 ; r3 ??
	jmp @r3
	mov.l @r15+,r14

loc_CE357D6:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_CE3586C_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE357F0
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_CE35874_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_CE357F0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_CE357F8:
	mov r4,r3
	mov.l @(loc_CE3587C_to_loc_CE370CC_to_loc_CE3580A,pc),r1 ; r1 set to 0xCE370CC
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE3580A:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(loc_CE35880_to_loc_CE31B5C,pc),r3 ; r3 set to 0xCE31B5C
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE35868_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x0E,r6 ; r6 set to 0x0E
	mov 0x15,r5 ; r5 set to 0x15
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_CE3582A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_CE3586C_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE358B0
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_CE3585A,pc),r0 ; r0 set to 0x202
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf/s loc_CE35884
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_CE3585C,pc),r3 ; r3 set to 0x80
	bra loc_CE35888
	mov.b r3,@(r0,r14)

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE35852:
	#data 0x0205
loc_CE35854:
	#data 0x01EA
loc_CE35856:
	#data 0x03F8
loc_CE35858:
	#data 0x0328
loc_CE3585A:
	#data 0x0202
loc_CE3585C:
	#data 0x0080
	#align4

loc_CE35860_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE35864_to_loc_8C0511B4:
	#data loc_8C0511B4
loc_CE35868_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE3586C_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE35870_to_loc_8C035162:
	#data loc_8C035162
loc_CE35874_to_loc_8C051648:
	#data loc_8C051648
loc_CE35878_to_loc_CE3707C_to_loc_CE34C90:
	#data loc_CE3707C_to_loc_CE34C90
loc_CE3587C_to_loc_CE370CC_to_loc_CE3580A:
	#data loc_CE370CC_to_loc_CE3580A
loc_CE35880_to_loc_CE31B5C:
	#data loc_CE31B5C

;----------------------------------------------
loc_CE35884:
	mov 0x00,r1
	mov.b r1,@(r0,r14)

loc_CE35888:
	mov.l @(0x148,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x148,PC),r2
	mov 0x15,r5
	mov 0x0F,r6
	jsr @r2
	mov r14,r4
	mova @(0x140,PC),r0
	mov.l @(0x148,PC),r3
	fmov @r0,fr3
	mova @(0x140,PC),r0
	mov r15,r5
	mov 0x01,r6
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4

loc_CE358B0:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE358B8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_CE359E8_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE358D2
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_CE359EC_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_CE358D2:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_CE358DA:
	mov r4,r3
	mov.l @(loc_CE359F0_to_loc_CE370D8_to_loc_CE358EC,pc),r1 ; r1 set to 0xCE370D8
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE358EC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(loc_CE359F4_to_loc_CE31B5C,pc),r3 ; r3 set to 0xCE31B5C
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE359F8_to_loc_8C05115A,pc),r2 ; r2 set to 0x8C05115A
	jsr @r2
	mov r14,r4
	mov.l @(loc_CE359FC_to_loc_8C056DE4,pc),r3 ; r3 set to 0x8C056DE4
	mov 0x08,r5 ; r5 set to 0x08
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE359CC,pc),r0 ; r0 set to 0x1A1
	mov 0x2B,r2 ; r2 set to 0x2B
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_CE35A00_to_loc_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.b @(0x02,r14),r0
	mov 0x09,r6 ; r6 set to 0x09
	mov.l @r3,r2 ; r2 ??
	mov 0x15,r5 ; r5 set to 0x15
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.l @(loc_CE359D8_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_CE35940:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE359CE,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.l @(loc_CE359E8_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE359D0,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_CE35984
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r4,@(r0,r14)
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r14)
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x03,r3)
	mov.l @(loc_CE35A04_to_loc_8C060D08,pc),r3 ; r3 set to 0x8C060D08
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	tst r0,r0
	bf loc_CE35984
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE359EC_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	mov.l @r15+,r14

loc_CE35984:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3598C:
	mov.w @(loc_CE359CE,pc),r5 ; r5 set to 0x2A4
	add r4,r5 ; r5 ??? bc r4 is ???
	mov.b @(0x03,r5),r0
	tst r0,r0
	bf loc_CE3599C
	mov.l @(loc_CE359E8_to_loc_8C034DEE,pc),r0 ; r0 set to 0x8C034DEE
	jmp @r0
	nop

loc_CE3599C:
	mov.b @(0x06,r4),r0
	mov 0x0A,r6 ; r6 set to 0x0A
	mov.l @(loc_CE359D8_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	jmp @r3
	mov 0x15,r5

;==============================================
loc_CE359AA:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_CE359E8_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE359C4
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_CE359EC_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_CE359C4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE359CC:
	#data 0x01A1
loc_CE359CE:
	#data 0x02A4
loc_CE359D0:
	#data 0x0141
	#align4

loc_CE359D4:
	#data loc_8C035162
loc_CE359D8_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE359DC:
	#data 0xC2D55555
loc_CE359E0:
	#data 0x432B6DB6
loc_CE359E4:
	#data loc_8C050834
loc_CE359E8_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE359EC_to_loc_8C051648:
	#data loc_8C051648
loc_CE359F0_to_loc_CE370D8_to_loc_CE358EC:
	#data loc_CE370D8_to_loc_CE358EC
loc_CE359F4_to_loc_CE31B5C:
	#data loc_CE31B5C
loc_CE359F8_to_loc_8C05115A:
	#data loc_8C05115A
loc_CE359FC_to_loc_8C056DE4:
	#data loc_8C056DE4
loc_CE35A00_to_loc_8C2896B0:
	#data loc_8C2896B0
loc_CE35A04_to_loc_8C060D08:
	#data loc_8C060D08

;==============================================
loc_CE35A08:
	mov r4,r3
	mov.l @(loc_CE35B28_to_loc_CE370E8_to_loc_CE35A1A,pc),r1 ; r1 set to 0xCE370E8
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE35A1A:
	mov.w @(0xFA,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_ce35a36
	mov.w @(0xEE,PC),r0
	mov 0x10,r3
	mov.w @(0xE8,PC),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)

loc_CE35A36:
	mov.b @(0x6,r14),r0
	mov.l @(0xF0,PC),r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0xD8,PC),r0
	mov 0x28,r2
	mov 0x00,r4
	mov.l @(0xE4,PC),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov 0x0B,r6
	mov.l @r3,r2
	mov 0x15,r5
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.l @(0xC0,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_CE35A76:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_CE35B20,pc),r0 ; r0 set to 0x3F8
	mov r4,r14
	mov 0x02,r3 ; r3 set to 0x02
	mov.b r3,@(r0,r14)
	mov 0x05,r2 ; r2 set to 0x05
	mov.w @(loc_CE35B22,pc),r0 ; r0 set to 0x328
	mov.b r2,@(r0,r14)
	mov.w @(loc_CE35B18,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_CE35A98
	bra loc_CE35A9A
	mov 0x02,r3

loc_CE35A98:
	mov 0x00,r3

loc_CE35A9A:
	mov.w @(0x86,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x98,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce35b10               ; loc_ce35ad4+0x3c
	mov.w @(0x6E,PC),r0
	mov 0x00,r4
	mov 0x28,r3
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x5E,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x64,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mova @(0x5C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mov.l @(0x48,PC),r2
	mov 0x6C,r0
	mov 0x15,r5
	fmov fr3,@(r0,r14)
	mov 0x0C,r6
	jsr @r2
	mov r14,r4
	mova @(0x48,PC),r0
	mov.l @(0x50,PC),r3
	fmov @r0,fr3
	mova @(0x48,PC),r0
	mov r15,r5
	mov 0x01,r6
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4

loc_CE35B10:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE35B18:
	#data 0x0255
loc_CE35B1A:
	#data 0x00FF
loc_CE35B1C:
	#data 0x03F0
loc_CE35B1E:
	#data 0x01A1
loc_CE35B20:
	#data 0x03F8
loc_CE35B22:
	#data 0x0328
loc_CE35B24:
	#data 0x03F1
	#align4

loc_CE35B28_to_loc_CE370E8_to_loc_CE35A1A:
	#data loc_CE370E8_to_loc_CE35A1A
loc_CE35B2C_to_loc_CE31B5C:
	#data loc_CE31B5C
loc_CE35B30:
	#data loc_8C2896B0
loc_CE35B34:
	#data loc_8C034E8C
loc_CE35B38:
	#data loc_8C034DEE
loc_CE35B3C:
	#data 0x42092492
loc_CE35B40:
	#data 0xBF4DB6DB
loc_CE35B44:
	#data 0xC2200000
loc_CE35B48:
	#data 0x431A4924
loc_CE35B4C:
	#data loc_8C050834

;==============================================
loc_CE35B50:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x150,PC),r0
	mov 0x02,r4
	mov 0x05,r3
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	mov.w @(0x146,PC),r0
	mov.b r3,@(r0,r14)
	mov.w @(0x144,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf.s loc_ce35baa
	mov 0x00,r13
	mov.w @(0x13C,PC),r0
	mov 0x5C,r1
	add r14,r1
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_CE35BAA:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_ce35be4
	mov.w @(0xF8,PC),r0
	mov 0x15,r5
	mov.l @(0x104,PC),r3
	mov 0x0D,r6
	mov.b r13,@(r0,r14)
	add 0xFF,r0
	mov.b r13,@(r0,r14)
	mov.w @(0xEC,PC),r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mova @(0xE4,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	fmov fr2,@(r0,r14)
	mova @(0xE0,PC),r0
	fmov @r0,fr2
	mov 0x6C,r0
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_CE35BE4:
	mov.w @(0xCC,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_ce35c16
	mov r14,r4
	mov.b @(r0,r14),r3
	add 0x60,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0xC4,PC),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x9E,PC),r0
	mov.b r13,@(r0,r14)

loc_CE35C16:
	lds.l @r15+,pr
	mov.l @(0xAC,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_CE35C20:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_CE35CCC_to_loc_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0x60
	tst r0,r0
	bt loc_CE35C84
	mov.b @(0x06,r14),r0
	mov.l @(loc_CE35CD0_to_loc_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE35CC0_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x03,r6 ; r6 set to 0x03
	mov 0x01,r5 ; r5 set to 0x01
	jmp @r2
	mov.l @r15+,r14

loc_CE35C84:
	lds.l @r15+,pr
	mov.l @(loc_CE35CC8_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_CE35C8E:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_CE35CC8_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE35CD8
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_CE35CD4_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_ce35ca8:
	#data 0x03F8
loc_ce35caa:
	#data 0x0328
loc_ce35cac:
	#data 0x014B
loc_ce35cae:
	#data 0x01F9
loc_ce35cb0:
	#data 0x03F9
loc_ce35cb2:
	#data 0x0327
loc_ce35cb4:
	#data 0x0141
	#align4


loc_CE35CB8:
	#data 0xC1092492
loc_CE35CBC:
	#data 0xBF092492
loc_CE35CC0_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE35CC4:
	#data loc_8C2896B0
loc_CE35CC8_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE35CCC_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE35CD0_to_loc_8C0511B4:
	#data loc_8C0511B4
loc_CE35CD4_to_loc_8C051648:
	#data loc_8C051648

;----------------------------------------------
loc_CE35CD8:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_CE35CE0:
	mov r4,r3
	mov.l @(loc_CE35DE4_to_loc_CE370FC_to_loc_CE35CF2,pc),r1 ; r1 set to 0xCE370FC
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE35CF2:
	mov.l r14,@-r15
	mov r4,r14
	fldi0 fr4
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov r13,r5 ; r5 set to 0x00
	mov.l @(loc_CE35DE8_to_loc_8C035162,pc),r3 ; r3 set to 0x8C035162
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_CE35DDA,pc),r0 ; r0 set to 0x1F9
	mov.b r13,@(r0,r14)
	mov.w @(loc_CE35DDC,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE35DEC_to_loc_8C05218A,pc),r2 ; r2 set to 0x8C05218A
	jsr @r2
	mov r14,r4
	mov.l @(loc_CE35DF0_to_loc_8C05115A,pc),r3 ; r3 set to 0x8C05115A
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE35DDE,pc),r0 ; r0 set to 0x1A1
	mov 0x3A,r2 ; r2 set to 0x3A
	mov.l @(loc_CE35DF4_to_loc_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov 0x10,r6 ; r6 set to 0x10
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.b @(0x02,r14),r0
	mov r14,r4
	mov.l @r3,r2 ; r2 ??
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.l @(loc_CE35DF8_to_loc_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_CE35D68:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_CE35DFC_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE35D88
	mov.l @(loc_CE35E00_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE35D88:
	mov.w @(0x54,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce35daa
	mov 0x00,r3
	mov r15,r5
	mov.b r3,@(r0,r14)
	mova @(0x6C,PC),r0
	fmov @r0,fr3
	mova @(0x6C,PC),r0
	mov.l @(0x6C,PC),r3
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4

loc_CE35DAA:
	mov.w @(0x34,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce35dc0
	mov.l @(0x5C,PC),r3
	mov 0x16,r5
	jsr @r3
	mov r14,r4
	mov.w @(0x24,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_CE35DC0:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE35DC8:
	mov r4,r3
	mov.l @(loc_CE35E14_to_loc_CE37104_to_loc_CE35E18,pc),r1 ; r1 set to 0xCE37104
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE35DDA:
	#data 0x01F9
loc_CE35DDC:
	#data 0x041C
loc_CE35DDE:
	#data 0x01A1
loc_CE35DE0:
	#data 0x0140
loc_CE35DE2:
	#data 0x014B
	#align4

loc_CE35DE4_to_loc_CE370FC_to_loc_CE35CF2:
	#data loc_CE370FC_to_loc_CE35CF2
loc_CE35DE8_to_loc_8C035162:
	#data loc_8C035162
loc_CE35DEC_to_loc_8C05218A:
	#data loc_8C05218A
loc_CE35DF0_to_loc_8C05115A:
	#data loc_8C05115A
loc_CE35DF4_to_loc_8C2896B0:
	#data loc_8C2896B0
loc_CE35DF8_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE35DFC_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE35E00_to_loc_8C051648:
	#data loc_8C051648
loc_CE35E04:
	#data 0x42855555
loc_CE35E08:
	#data 0x434DB6DB
loc_CE35E0C:
	#data loc_8C050EA4
loc_CE35E10:
	#data loc_8C04223A
loc_CE35E14_to_loc_CE37104_to_loc_CE35E18:
	#data loc_CE37104_to_loc_CE35E18

;==============================================
loc_CE35E18:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x140,PC),r3
	jsr @r3
	mov 0x00,r5
	mov.b @(0x6,r14),r0
	mov 0x02,r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x126,PC),r0
	mov.b r3,@(r0,r14)
	mova @(0x130,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x12C,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x114,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce35e58
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE35E58:
	mova @(0x110,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x36,r3
	fmov fr3,@(r0,r14)
	mova @(0x10C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov 0x00,r4
	fmov fr3,@(r0,r14)
	mov 0x06,r6
	mov.w @(0xE8,PC),r0
	mov 0x15,r5
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xF4,PC),r3
	mov.l r4,@(r0,r14)
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.l @(0xE0,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_CE35E9C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE35F7C_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_CE35F80_to_loc_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0x60
	tst r0,r0
	bt loc_CE35F04
	mov.b @(0x06,r14),r0
	mov 0x14,r5 ; r5 set to 0x14
	mov.l @(loc_CE35F78_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x00,r6 ; r6 set to 0x00
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE35F84_to_loc_8C0511B4,pc),r2 ; r2 set to 0x8C0511B4
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE35F04:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE35F0A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE35F7C_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE35F2C
	mov.l @(loc_CE35F60_to_loc_8C035162,pc),r3 ; r3 set to 0x8C035162
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE35F88_to_loc_8C051854,pc),r2 ; r2 set to 0x8C051854
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE35F2C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE35F32:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE35F56,pc),r0 ; r0 set to 0x1F9
	mov r4,r14
	mov.w @(loc_CE35F5C,pc),r3 ; r3 set to 0x2A4
	mov.l @(loc_CE35F8C_to_loc_8C045790,pc),r13 ; r13 set to 0x8C045790
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_CE35F90
	cmp/eq 0x01,r0
	bt loc_CE35FBE
	bra loc_CE35FEC
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE35F56:
	#data 0x01F9
loc_CE35F58:
	#data 0x01D2
loc_CE35F5a:
	#data 0x01A1
loc_CE35F5C:
	#data 0x02A4
	#align4

loc_CE35F60_to_loc_8C035162:
	#data loc_8C035162
loc_CE35F64:
	#data 0x4162AAAA
loc_CE35F68:
	#data 0x3F555555
loc_CE35F6C:
	#data 0x40892492
loc_CE35F70:
	#data 0xBF4DB6DB
loc_CE35F74:
	#data loc_8C2896B0
loc_CE35F78_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE35F7C_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE35F80_to_loc_8C052CE2:
	#data loc_8C052CE2
loc_CE35F84_to_loc_8C0511B4:
	#data loc_8C0511B4
loc_CE35F88_to_loc_8C051854:
	#data loc_8C051854
loc_CE35F8C_to_loc_8C045790:
	#data loc_8C045790

;----------------------------------------------
loc_CE35F90:
	mov.w @(loc_CE36042,pc),r0 ; r0 set to 0x1FA
	mov.w @(loc_CE36044,pc),r2 ; r2 set to 0x1C00
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_CE36036
	mov.w @(loc_CE36046,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_CE36036
	mov.w @(loc_CE36048,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE36036
	jsr @r13
	mov r14,r4
	tst r0,r0
	bt/s loc_CE35FBE
	mov r0,r4 ; r4 set to 0x1A3
	mov.w @(loc_CE3604A,pc),r0 ; r0 set to 0x1F7
	mov 0x08,r3 ; r3 set to 0x08
	bra loc_CE3602A
	mov.b r3,@(r0,r14)

loc_CE35FBE:
	mov.w @(loc_CE36042,pc),r0 ; r0 set to 0x1FA
	mov.w @(loc_CE3604C,pc),r2 ; r2 set to 0x800
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_CE36036
	mov.w @(loc_CE36046,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE36036
	mov.w @(loc_CE36048,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
	tst r2,r2
	bt loc_CE36036
	jsr @r13
	mov r14,r4
	tst r0,r0
	bt/s loc_CE35FEC
	mov r0,r4 ; r4 set to 0x1A3
	mov.w @(loc_CE3604A,pc),r0 ; r0 set to 0x1F7
	mov 0x02,r2 ; r2 set to 0x02
	bra loc_CE3602A
	mov.b r2,@(r0,r14)

loc_CE35FEC:
	mov.w @(loc_CE36042,pc),r0 ; r0 set to 0x1FA
	mov.w @(loc_CE3604E,pc),r2 ; r2 set to 0xC00
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_CE36036
	mov.w @(loc_CE36048,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE36036
	mov.w @(loc_CE36046,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_CE3601A
	jsr @r13
	mov r14,r4
	tst r0,r0
	bt/s loc_CE36036
	mov r0,r4 ; r4 set to 0x1FE
	mov.w @(loc_CE3604A,pc),r0 ; r0 set to 0x1F7
	mov 0x00,r2 ; r2 set to 0x00
	bra loc_CE3602A
	mov.b r2,@(r0,r14)

loc_CE3601A:
	jsr @r13
	mov r14,r4
	tst r0,r0
	bt/s loc_CE36036
	mov r0,r4
	mov.w @(loc_CE3604A,pc),r0 ; r0 set to 0x1F7
	mov 0x01,r2 ; r2 set to 0x01
	mov.b r2,@(r0,r14)

loc_CE3602A:
	mov.w @(loc_CE36042,pc),r0 ; r0 set to 0x1FA, r0 set to 0x1FA
	mov.l @r15,r3
	mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???
	mov.w r2,@r3
	bra loc_CE36038
	mov r4,r0

loc_CE36036:
	mov 0x00,r0 ; r0 set to 0x00

loc_CE36038:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE36042:
	#data 0x01FA
loc_CE36044:
	#data 0x1C00
loc_CE36046:
	#data 0x01FE
loc_CE36048:
	#data 0x01A3
loc_CE3604A:
	#data 0x01F7
loc_CE3604C:
	#data 0x0800
loc_CE3604E:
	#data 0x0C00

;==============================================
loc_CE36050:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.w @(0x112,PC),r4
	mov.w @(0x112,PC),r2
	add r14,r4
	mov.w @r4,r3
	extu.w r3,r3
	tst r2,r3
	bt.s loc_ce36094
	mov 0x0A,r2
	mov.w @(0x106,PC),r0
	mov.w @(0x104,PC),r1
	mov.w @(r0,r14),r0
	add r14,r1
	xor 0x01,r0
	mov.w r0,@r1
	mov.w @(0xFA,PC),r0
	mov.w @(0xF8,PC),r1
	mov.b @(r0,r14),r3
	mov.w @(0xF6,PC),r0
	mov.b r3,@(r0,r14)
	add 0xF6,r0
	mov.l @(r0,r14),r4
	mov.w @(0xEC,PC),r0
	add r4,r1
	mov.w @(r0,r4),r0
	xor 0x01,r0
	mov.w r0,@r1
	mov.w @(0xE2,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(0xE0,PC),r0
	mov.b r3,@(r0,r4)

loc_CE36094:
	mov.w @(0xDE,PC),r0
	mov 0x05,r6
	mov.l @(0xDC,PC),r3
	mov r6,r5
	mov.b r2,@(r0,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mova @(0xD0,PC),r0
	mov.l @(0xD8,PC),r3
	fmov @r0,fr3
	mova @(0xD0,PC),r0
	mov r15,r5
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0xC8,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(0xC4,PC),r3
	mov 0x0F,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE360D6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_CE36176,pc),r0 ; r0 set to 0x1A0
	mov r4,r14
	mov 0x0A,r3 ; r3 set to 0x0A
	mov.b r3,@(r0,r14)
	mov 0x05,r6 ; r6 set to 0x05
	mov.l @(loc_CE36178_to_loc_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
	mov 0x00,r0 ; r0 set to 0x00
	mov r6,r5 ; r5 set to 0x05
	mov.b r0,@(0x07,r14)
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mova @(loc_CE36190,pc),r0  ; r0 set to 0xCE36190
	mov.l @(loc_CE36184_to_loc_8C103660,pc),r3 ; r3 set to 0x8C103660
	fmov.s @r0,fr3 ; r3 ??
	mova @(loc_CE36180,pc),r0  ; r0 set to 0xCE36180
	mov r15,r5 ; r5 ??? bc r15 is ???
	fmov.s fr3,@r15
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE36188_to_loc_8C056F2A,pc),r2 ; r2 set to 0x8C056F2A
	jsr @r2
	mov r14,r4
	mov.l @(loc_CE3618C_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x0F,r5 ; r5 set to 0x0F
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE36122:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_CE36176,pc),r0 ; r0 set to 0x1A0
	mov r4,r14
	mov 0x0A,r3 ; r3 set to 0x0A
	mov.b r3,@(r0,r14)
	mov 0x05,r6 ; r6 set to 0x05
	mov.l @(loc_CE36178_to_loc_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
	mov 0x00,r0 ; r0 set to 0x00
	mov r6,r5 ; r5 set to 0x05
	mov.b r0,@(0x07,r14)
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mova @(loc_CE36194,pc),r0  ; r0 set to 0xCE36194
	mov.l @(loc_CE36184_to_loc_8C103660,pc),r3 ; r3 set to 0x8C103660
	fmov.s @r0,fr3 ; r3 ??
	mova @(loc_CE36198,pc),r0  ; r0 set to 0xCE36198
	mov r15,r5 ; r5 ??? bc r15 is ???
	fmov.s fr3,@r15
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE36188_to_loc_8C056F2A,pc),r2 ; r2 set to 0x8C056F2A
	jsr @r2
	mov r14,r4
	mov.l @(loc_CE3618C_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x0F,r5 ; r5 set to 0x0F
	mov 0x02,r6 ; r6 set to 0x02
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3616E:
	#data 0x02A4
loc_CE36170:
	#data 0x0400
loc_CE36172:
	#data 0x0130
loc_CE36174:
	#data 0x01D2
loc_CE36176:
	#data 0x01A0
	#align4

loc_CE36178_to_loc_8C02FEC4:
	#data loc_8C02FEC4
loc_CE3617c:
	#data 0xC312AAAA
loc_CE36180:
	#data 0x432B6DB6
loc_CE36184_to_loc_8C103660:
	#data loc_8C103660
loc_CE36188_to_loc_8C056F2A:
	#data loc_8C056F2A
loc_CE3618C_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE36190:
	#data 0xC3200000
loc_CE36194:
	#data 0xC32D5555
loc_CE36198:
	#data 0x43092492

;==============================================
loc_CE3619C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov 0x00,r4 ; r4 set to 0x00
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x07,r14)
	mov.b r0,@(0x06,r14)
	mov 0x3C,r0 ; r0 set to 0x3C
	mov.w r0,@(0x1C,r14)
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.l @(loc_CE362EC_to_loc_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
	mov 0x05,r6 ; r6 set to 0x05
	mov.w r0,@(0x1E,r14)
	mov r6,r5 ; r5 set to 0x05
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mova @(loc_CE362F0,pc),r0  ; r0 set to 0xCE362F0
	mov.l @(loc_CE362F8_to_loc_8C103660,pc),r3 ; r3 set to 0x8C103660
	fmov.s @r0,fr3 ; r3 ??
	mova @(loc_CE362F4,pc),r0  ; r0 set to 0xCE362F4
	mov r15,r5 ; r5 ??? bc r15 is ???
	fmov.s fr3,@r15
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE362FC_to_loc_8C056F2A,pc),r2 ; r2 set to 0x8C056F2A
	jsr @r2
	mov r14,r4
	mov.l @(loc_CE36300_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x0F,r5 ; r5 set to 0x0F
	mov 0x06,r6 ; r6 set to 0x06
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE361F0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.w @(0xE2,PC),r4
	mov.w @(0xE2,PC),r2
	add r14,r4
	mov.w @r4,r3
	extu.w r3,r3
	tst r2,r3
	bt.s loc_ce36234             ; loc_ce36222+0x12
	fldi0 fr4
	mov.w @(0xD6,PC),r0
	mov.w @(0xD4,PC),r1
	mov.w @(r0,r14),r0
	add r14,r1
	xor 0x01,r0
	mov.w r0,@r1
	mov.w @(0xCA,PC),r0
	mov.w @(0xC8,PC),r1
	mov.b @(r0,r14),r3
	mov.w @(0xC6,PC),r0
	mov.b r3,@(r0,r14)
	add 0xF6,r0
	mov.l @(r0,r14),r4
	mov.w @(0xBC,PC),r0
	add r4,r1
	mov.w @(r0,r4),r0
	xor 0x01,r0
	mov.w r0,@r1
	mov.w @(0xB2,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(0xB0,PC),r0
	mov.b r3,@(r0,r4)

loc_CE36234:
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x0A,r3
	mov.w @(0x9C,PC),r0
	mov 0x05,r6
	mov r6,r5
	mov.b r3,@(r0,r14)
	mov 0x00,r0
	mov.l @(0x98,PC),r3
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mova @(0xA8,PC),r0
	mov.l @(0x98,PC),r3
	fmov @r0,fr3
	mova @(0xA4,PC),r0
	mov r15,r5
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0x88,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(0x88,PC),r3
	mov 0x0F,r5
	mov 0x03,r6
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE36288:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mova @(loc_CE3630C,pc),r0  ; r0 init to 0xCE3630C
	mov.l @(loc_CE362F8_to_loc_8C103660,pc),r3 ; r3 set to 0x8C103660
	fmov.s @r0,fr3 ; r3 ??
	mova @(loc_CE36310,pc),r0  ; r0 set to 0xCE36310
	mov r4,r14
	mov r15,r5
	fmov.s fr3,@r15
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE36314_to_loc_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4
	mov 0x05,r5 ; r5 set to 0x05
	jsr @r2
	mov r14,r4
	mov.l @(loc_CE36300_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x0F,r5 ; r5 set to 0x0F
	mov 0x04,r6 ; r6 set to 0x04
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE36318_to_loc_8C05115A,pc),r2 ; r2 set to 0x8C05115A
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE362C6:
	mov.l r4,@-r15
	mov r4,r0
	nop
	mov.w @(loc_CE362E8,pc),r1 ; r1 set to 0x1F7
	mov.l @(loc_CE3631C_to_loc_CE37110_to_loc_CE36050,pc),r2 ; r2 set to 0xCE37110
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0x3F,r0
	shll2 r0
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE362DE:
	#data 0x02A4
loc_CE362E0:
	#data 0x0800
loc_CE362E2:
	#data 0x0130
loc_CE362E4:
	#data 0x01D2
loc_CE362E6:
	#data 0x01A0
loc_CE362E8:
	#data 0x01F7
	#align4

loc_CE362EC_to_loc_8C02FEC4:
	#data loc_8C02FEC4
loc_CE362F0:
	#data 0xC3200000
loc_CE362F4:
	#data 0x432B6DB6
loc_CE362F8_to_loc_8C103660:
	#data loc_8C103660
loc_CE362FC_to_loc_8C056F2A:
	#data loc_8C056F2A
loc_CE36300_to_loc_8C034E8C:
	#data loc_8C034E8C
loc_CE36304:
	#data 0xC3055555
loc_CE36308:
	#data 0x435EDB6D
loc_CE3630C:
	#data 0xC2F00000
loc_CE36310:
	#data 0x42CDB6DB
loc_CE36314_to_loc_8C056DE4:
	#data loc_8C056DE4
loc_CE36318_to_loc_8C05115A:
	#data loc_8C05115A
loc_CE3631C_to_loc_CE37110_to_loc_CE36050:
	#data loc_CE37110_to_loc_CE36050

;==============================================
loc_CE36320:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE363FC_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE3633A
	lds.l @r15+,pr
	mov.l @(loc_CE36400_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE3633A:
	mov.w @(0xB8,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce36366
	mov 0x00,r3
	mov r3,r5
	mov r3,r6
	mov.b r3,@(r0,r14)
	mov.l @(0xB8,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xA4,PC),r0
	mov 0x02,r3
	mov 0x20,r5
	mov.l @(r0,r14),r4
	add 0xEC,r0
	mov.l r14,@(r0,r4)
	add 0x42,r0
	mov.b r3,@(r0,r4)
	add 0xAB,r0
	mov.b r5,@(r0,r4)
	mov.b r5,@(r0,r14)

loc_CE36366:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3636C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_CE363FC_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE3638C
	mov.l @(loc_CE36400_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3638C:
	mov.w @(loc_CE363F6,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x02,r0
	bf loc_CE363C0
	mov.w @(loc_CE363F6,pc),r0 ; r0 set to 0x141
	mov 0x00,r2 ; r2 set to 0x00
	mov.l @(loc_CE36410_to_loc_8C0FDB4E,pc),r3 ; r3 set to 0x8C0FDB4E
	mov r15,r5
	mov.b r2,@(r0,r14)
	mova @(loc_CE36408,pc),r0  ; r0 set to 0xCE36408
	fmov.s @r0,fr3 ; r3 ??
	mova @(loc_CE3640C,pc),r0  ; r0 set to 0xCE3640C
	fmov.s fr3,@r15
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE36414_to_loc_8C04223A,pc),r2 ; r2 set to 0x8C04223A
	mov 0x0C,r5 ; r5 set to 0x0C
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE363C0:
	mov.w @(0x32,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce363ee
	mov.w @(0x2A,PC),r0
	mov 0x00,r2
	mov.l @(0x34,PC),r3
	mov r2,r5
	mov.b r2,@(r0,r14)
	mov r2,r6
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,PC),r0
	mov 0x01,r3
	mov 0x23,r5
	mov.l @(r0,r14),r4
	add 0xEC,r0
	mov.l r14,@(r0,r4)
	add 0x42,r0
	mov.b r3,@(r0,r4)
	add 0xAB,r0
	mov.b r5,@(r0,r4)
	mov.b r5,@(r0,r14)

loc_CE363EE:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE363F6:
	#data 0x0141
loc_CE363F8:
	#data 0x01C8
	#align4

loc_CE363FC_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE36400_to_loc_8C051648:
	#data loc_8C051648
loc_CE36404:
	#data loc_8C02FEC4
loc_CE36408:
	#data 0xC2D55555
loc_CE3640C:
	#data 0x434DB6DB
loc_CE36410_to_loc_8C0FDB4E:
	#data loc_8C0FDB4E
loc_CE36414_to_loc_8C04223A:
	#data loc_8C04223A

;==============================================
loc_CE36418:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x124,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_ce36494
	mov.l @(0x114,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_ce36440
	mov.w @(0xFE,PC),r0
	mov 0x05,r3
	mov.b r3,@(r0,r14)

loc_CE36440:
	mov.l @(0x108,PC),r3
	mov.w @(0xF8,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4
	tst r0,r0
	bf loc_ce36494
	mov.w @(0xF0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce364a4
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x23,r5
	mov.w @(0xE0,PC),r0
	mov.l @(0xF0,PC),r3
	mov.l @(r0,r14),r4
	add 0xEC,r0
	mov.l r14,@(r0,r4)
	add 0xED,r0
	mov.b r5,@(r0,r4)
	mov.b r5,@(r0,r14)
	jsr @r3
	mov r14,r4
	mova @(0xE4,PC),r0
	mov.l @(0xE8,PC),r3
	fmov @r0,fr3
	mova @(0xE0,PC),r0
	mov r15,r5
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0xD8,PC),r2
	mov 0x0C,r5
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE36494:
	mov.b @(0x7,r14),r0
	mov 0x0F,r5
	mov.l @(0xC8,PC),r3
	mov 0x32,r6
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	jsr @r3
	mov r14,r4

loc_CE364A4:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE364AC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov 0x14,r5 ; r5 set to 0x14
	mov.l @(loc_CE36568_to_loc_8C050552,pc),r3 ; r3 set to 0x8C050552
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_CE3653E,pc),r0 ; r0 set to 0x1C8
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @(loc_CE3656C_to_loc_8C05064E,pc),r2 ; r2 set to 0x8C05064E
	mov 0x03,r5 ; r5 set to 0x03
	jsr @r2
	mov r14,r4
	mov 0x40,r0 ; r0 set to 0x40
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	bra loc_CE36418
	mov.l @r15+,r14

loc_CE364D6:
	mov r4,r3
	mov.l @(loc_CE36570_to_loc_CE37148_to_loc_CE364AC,pc),r1 ; r1 set to 0xCE37148
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE364E8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_CE36544_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE36508
	mov.l @(loc_CE36574_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE36508:
	mov.w @(loc_CE36540,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x02,r0
	bf loc_CE36584
	mov.w @(loc_CE36540,pc),r0 ; r0 set to 0x141
	mov 0x00,r2 ; r2 set to 0x00
	mov.l @(loc_CE3655C_to_loc_8C0FDB4E,pc),r3 ; r3 set to 0x8C0FDB4E
	mov r15,r5
	mov.b r2,@(r0,r14)
	mova @(loc_CE36578,pc),r0  ; r0 set to 0xCE36578
	fmov.s @r0,fr3 ; r3 ??
	mova @(loc_CE3657C,pc),r0  ; r0 set to 0xCE3657C
	fmov.s fr3,@r15
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE36580_to_loc_8C042008,pc),r2 ; r2 set to 0x8C042008
	mov 0x20,r5 ; r5 set to 0x20
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE3653C:
	#data 0x0142
loc_CE3653E:
	#data 0x01C8
loc_CE36540:
	#data 0x0141
	#align4

loc_CE36544_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE36548:
	#data loc_8C050682
loc_CE3654C:
	#data loc_8C050610
loc_CE36550:
	#data loc_8C05933C
loc_CE36554:
	#data 0xC2D55555
loc_CE36558:
	#data 0x434DB6DB
loc_CE3655C_to_loc_8C0FDB4E:
	#data loc_8C0FDB4E
loc_CE36560:
	#data loc_8C04223A
loc_CE36564:
	#data loc_8C034E8C
loc_CE36568_to_loc_8C050552:
	#data loc_8C050552
loc_CE3656C_to_loc_8C05064E:
	#data loc_8C05064E
loc_CE36570_to_loc_CE37148_to_loc_CE364AC:
	#data loc_CE37148_to_loc_CE364AC
loc_CE36574_to_loc_8C051648:
	#data loc_8C051648
loc_CE36578:
	#data 0xC33AAAAA
loc_CE3657C:
	#data 0x43092492
loc_CE36580_to_loc_8C042008:
	#data loc_8C042008

;----------------------------------------------
loc_CE36584:
	mov.w @(0x102,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce365b2
	mov.w @(0xFA,PC),r0
	mov 0x00,r2
	mov.l @(0xFC,PC),r3
	mov r2,r5
	mov.b r2,@(r0,r14)
	mov r2,r6
	jsr @r3
	mov r14,r4
	mov.w @(0xEC,PC),r0
	mov 0x01,r3
	mov 0x24,r5
	mov.l @(r0,r14),r4
	add 0xEC,r0
	mov.l r14,@(r0,r4)
	add 0x42,r0
	mov.b r3,@(r0,r4)
	add 0xAB,r0
	mov.b r5,@(r0,r4)
	mov.b r5,@(r0,r14)

loc_CE365B2:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE365BA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_ce36636
	mov.l @(0xC4,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_ce365e2
	mov.w @(0xAE,PC),r0
	mov 0x05,r3
	mov.b r3,@(r0,r14)

loc_CE365E2:
	mov.l @(0xB8,PC),r3
	mov.w @(0xA4,PC),r0
	jsr @r3
	mov.l @(r0,r14),r4
	tst r0,r0
	bf loc_ce36636
	mov.w @(0x98,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce36646
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x24,r5
	mov.w @(0x8C,PC),r0
	mov.l @(0xA0,PC),r3
	mov.l @(r0,r14),r4
	add 0xEC,r0
	mov.l r14,@(r0,r4)
	add 0xED,r0
	mov.b r5,@(r0,r4)
	mov.b r5,@(r0,r14)
	jsr @r3
	mov r14,r4
	mova @(0x90,PC),r0
	mov.l @(0x98,PC),r3
	fmov @r0,fr3
	mova @(0x90,PC),r0
	mov r15,r5
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0x88,PC),r2
	mov 0x20,r5
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE36636:
	mov.b @(0x7,r14),r0
	mov 0x0F,r5
	mov.l @(0x78,PC),r3
	mov 0x33,r6
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	jsr @r3
	mov r14,r4

loc_CE36646:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3664E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov 0x14,r5 ; r5 set to 0x14
	mov.l @(loc_CE366B8_to_loc_8C050552,pc),r3 ; r3 set to 0x8C050552
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_CE3668C,pc),r0 ; r0 set to 0x1C8
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @(loc_CE366BC_to_loc_8C05064E,pc),r2 ; r2 set to 0x8C05064E
	mov 0x03,r5 ; r5 set to 0x03
	jsr @r2
	mov r14,r4
	mov 0x40,r0 ; r0 set to 0x40
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	bra loc_CE365BA
	mov.l @r15+,r14

loc_CE36678:
	mov r4,r3
	mov.l @(loc_CE366C0_to_loc_CE37154_to_loc_CE3664E,pc),r1 ; r1 set to 0xCE37154
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE3668A:
	#data 0x0141
loc_CE3668C:
	#data 0x01C8
loc_CE3668E:
	#data 0x0142
	#align4

loc_CE36690:
	#data loc_8C02FEC4
loc_CE36694:
	#data loc_8C034DEE
loc_CE36698:
	#data loc_8C050682
loc_CE3669c:
	#data loc_8C050610
loc_CE366A0:
	#data loc_8C05933C
loc_CE366A4:
	#data 0xC33AAAAA
loc_CE366A8:
	#data 0x43092492
loc_CE366Ac:
	#data loc_8C0FDB4E
loc_CE366B0:
	#data loc_8C042008
loc_CE366B4:
	#data loc_8C034E8C
loc_CE366B8_to_loc_8C050552:
	#data loc_8C050552
loc_CE366BC_to_loc_8C05064E:
	#data loc_8C05064E
loc_CE366C0_to_loc_CE37154_to_loc_CE3664E:
	#data loc_CE37154_to_loc_CE3664E

;==============================================
loc_CE366C4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	mov.l r12,@-r15
	mov 0x01,r12 ; r12 set to 0x01
	sts.l pr,@-r15
	mov.l @(loc_CE367DC_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_CE36710
	mov.l @(loc_CE367E0_to_loc_8C02FEC4,pc),r2 ; r2 set to 0x8C02FEC4
	mov 0x00,r6 ; r6 set to 0x00
	mov r6,r5 ; r5 set to 0x00
	jsr @r2
	mov r14,r4
	mov.w @(loc_CE367CC,pc),r0 ; r0 set to 0x1C8
	mov 0x07,r3 ; r3 set to 0x07
	mov 0x27,r5 ; r5 set to 0x27
	mov.l @(r0,r14),r4
	add 0xEC,r0 ; r0 set to 0x1B4
	mov.l r14,@(r0,r4)
	add 0x42,r0 ; r0 set to 0x1F6
	mov.b r3,@(r0,r4)
	add 0xAB,r0 ; r0 set to 0x1A1
	mov.l @(loc_CE367E4_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	mov.b r5,@(r0,r4)
	mov r14,r4
	mov.b r5,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r3
	mov.l @r15+,r14

loc_CE36710:
	mov.w @(loc_CE367CE,pc),r0 ; r0 set to 0x525
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_CE36740
	mov.l @(loc_CE367E8_to_loc_8C055D54,pc),r3 ; r3 set to 0x8C055D54
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_CE367C2
	mov.w @(0x1E,r14),r0
	mov 0x0A,r3 ; r3 set to 0x0A
	add 0x01,r0 ; r0 set to 0x526
	mov.w r0,@(0x1E,r14)
	add 0xFF,r0 ; r0 set to 0x525
	exts.w r0,r0 ; r0 ??
	cmp/gt r3,r0
	bt loc_CE367C2
	mov.l @(loc_CE367EC_to_loc_8C11E730,pc),r1 ; r1 set to 0x8C11E730
	jsr @r1
	nop
	tst r12,r0
	bt loc_CE3678A
	bra loc_CE3678C
	mov r13,r4

loc_CE36740:
	mov.w @(loc_CE367D0,pc),r0 ; r0 set to 0x34A
	mov.w @(loc_CE367D2,pc),r2 ; r2 set to 0x120
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_CE367C2
	mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.w @(loc_CE367D4,pc),r3 ; r3 set to 0x100
	extu.w r0,r0
	tst r3,r0
	bt loc_CE3678A
	mov.w @(loc_CE367D0,pc),r0 ; r0 set to 0x34A
	mov.w @(loc_CE367D6,pc),r2 ; r2 set to 0x400
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r2,r1
	bt/s loc_CE3678C
	mov r13,r4
	mov.w @(loc_CE367D8,pc),r0 ; r0 set to 0x130
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_CE367DA,pc),r2 ; r2 set to 0x1D2
	mov.w @(r0,r14),r1
	add r14,r2 ; r2 ??? bc r14 is ???
	xor r3,r1
	mov.w r1,@(r0,r14)
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.b r0,@r2
	mov.w @(loc_CE367CC,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r14),r5
	mov.w @(loc_CE367D8,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r5),r2
	xor r3,r2
	mov.w r2,@(r0,r5)
	mov.b @(r0,r5),r1
	mov.w @(loc_CE367DA,pc),r0 ; r0 set to 0x1D2
	bra loc_CE3678C
	mov.b r1,@(r0,r5)

loc_CE3678A:
	mov r12,r4

loc_CE3678C:
	mov r4,r0
	nop
	cmp/eq 0x00,r0
	bt loc_CE3679C
	cmp/eq 0x01,r0
	bt loc_CE367A6
	bra loc_CE367C2
	nop

loc_CE3679C:
	mov r12,r0
	nop
	mov.b r0,@(0x06,r14)
	bra loc_CE367B2
	mov 0x34,r6

loc_CE367A6:
	mov 0x02,r0
	mov.b r0,@(0x6,r14)
	mov r13,r0
	nop 
	mov 0x07,r6
	mov.b r0,@(0x7,r14)

loc_CE367B2:
	lds.l @r15+,pr
	mov.l @(loc_CE367F0_to_loc_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x0F,r5 ; r5 set to 0x0F
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE367C2:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE367CC:
	#data 0x01C8
loc_CE367CE:
	#data 0x0525
loc_CE367D0:
	#data 0x034A
loc_CE367D2:
	#data 0x0120
loc_CE367D4:
	#data 0x0100
loc_CE367D6:
	#data 0x0400
loc_CE367D8:
	#data 0x0130
loc_CE367DA:
	#data 0x01D2
	#align4

loc_CE367DC_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE367E0_to_loc_8C02FEC4:
	#data loc_8C02FEC4
loc_CE367E4_to_loc_8C051648:
	#data loc_8C051648
loc_CE367E8_to_loc_8C055D54:
	#data loc_8C055D54
loc_CE367EC_to_loc_8C11E730:
	#data loc_8C11E730
loc_CE367F0_to_loc_8C034E8C:
	#data loc_8C034E8C

;==============================================
loc_CE367F4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE368F4_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE3680E
	lds.l @r15+,pr
	mov.l @(loc_CE368F8_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE3680E:
	mov.w @(0xD4,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce36836
	mov 0x00,r3
	mov r3,r5
	mov r3,r6
	mov.b r3,@(r0,r14)
	mov.l @(0xDC,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xC0,PC),r0
	mov 0x02,r3
	mov 0x20,r5
	mov.l @(r0,r14),r4
	add 0x2E,r0
	mov.b r3,@(r0,r4)
	add 0xAB,r0
	mov.b r5,@(r0,r4)
	mov.b r5,@(r0,r14)

loc_CE36836:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3683C:
	mov r4,r3
	mov.l @(loc_CE36900_to_loc_CE37160_to_loc_CE366C4,pc),r1 ; r1 set to 0xCE37160
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE3684E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE368F4_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE3686E
	mov.l @(loc_CE36904_to_loc_8C05218A,pc),r3 ; r3 set to 0x8C05218A
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE36908_to_loc_8C05176E,pc),r2 ; r2 set to 0x8C05176E
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_CE3686E:
	mov.w @(0x74,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce36896
	mov 0x00,r3
	mov r3,r5
	mov r3,r6
	mov.b r3,@(r0,r14)
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x60,PC),r0
	mov 0x01,r3
	mov 0x21,r5
	mov.l @(r0,r14),r4
	add 0x2E,r0
	mov.b r3,@(r0,r4)
	add 0xAB,r0
	mov.b r5,@(r0,r4)
	mov.b r5,@(r0,r14)

loc_CE36896:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3689C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_CE368F4_to_loc_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE36910
	mov.w @(loc_CE368EA,pc),r0 ; r0 set to 0x525
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_CE368D8
	mov.w @(loc_CE368EC,pc),r0 ; r0 set to 0x34A
	mov.w @(loc_CE368EE,pc),r2 ; r2 set to 0x2000
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_CE368D8
	mov.w @(loc_CE368F0,pc),r0 ; r0 set to 0x1D3
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFF
	mov 0x0D,r5 ; r5 set to 0x0D
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE3690C_to_loc_8C0532A8,pc),r3 ; r3 set to 0x8C0532A8
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE368D8:
	mov.l @(loc_CE368F8_to_loc_8C051648,pc),r3 ; r3 set to 0x8C051648
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE368E6:
	#data 0x0141
loc_CE368E8:
	#data 0x01C8
loc_CE368EA:
	#data 0x0525
loc_CE368EC:
	#data 0x034A
loc_CE368EE:
	#data 0x2000
loc_CE368F0:
	#data 0x01D3
	#align4

loc_CE368F4_to_loc_8C034DEE:
	#data loc_8C034DEE
loc_CE368F8_to_loc_8C051648:
	#data loc_8C051648
loc_CE368fC:
	#data loc_8C02FEC4
loc_CE36900_to_loc_CE37160_to_loc_CE366C4:
	#data loc_CE37160_to_loc_CE366C4
loc_CE36904_to_loc_8C05218A:
	#data loc_8C05218A
loc_CE36908_to_loc_8C05176E:
	#data loc_8C05176E
loc_CE3690C_to_loc_8C0532A8:
	#data loc_8C0532A8

;==============================================
loc_CE36910:
	mov.w @(0x110,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce3694c
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x05,r5
	mov.l @(0x114,PC),r3
	jsr @r3
	mov r14,r4
	fldi0 fr3
	mova @(0x110,PC),r0
	fmov fr3,@r15
	mov r15,r5
	fmov @r0,fr3
	mov 0x04,r0
	mov.l @(0x108,PC),r3
	mov 0x07,r6
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.w @(0xE8,PC),r0
	mov 0x01,r3
	mov 0x22,r5
	mov.l @(r0,r14),r4
	add 0x2E,r0
	mov.b r3,@(r0,r4)
	add 0xAB,r0
	mov.b r5,@(r0,r4)
	mov.b r5,@(r0,r14)

loc_CE3694C:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE36954:
	mov.w @(loc_CE36A28,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	add 0x0D,r0 ; r0 set to 0x1F7
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov r14,r4
	mov.l @(loc_CE36A40_to_loc_CE3716C_to_loc_CE36320,pc),r1 ; r1 set to 0xCE3716C
	extu.b r0,r0
	and 0x3F,r0
	shll2 r0
	mov.l @(r0,r1),r3 ; r3 ??
	jmp @r3
	mov.l @r15+,r14

loc_CE36972:
	mov.l r4,@-r15
	mov r4,r0
	nop
	mov.w @(loc_CE36A2A,pc),r1 ; r1 set to 0x1F7
	mov.l @(loc_CE36A44_to_loc_CE371A4_to_loc_CE3698A,pc),r2 ; r2 set to 0xCE371A4
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0x3F,r0
	shll2 r0
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE3698A:
	mov.w @(loc_CE36A26,pc),r0 ; r0 set to 0x1C8
	mov r4,r5
	mov.l r4,@-r15
	mov.l @(loc_CE36A48_to_loc_8C04CC1C,pc),r3 ; r3 set to 0x8C04CC1C
	mov.l @(r0,r4),r4
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE36998:
	mov.w @(loc_CE36A26,pc),r0 ; r0 set to 0x1C8
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_CE36A2C,pc),r3 ; r3 set to 0x150
	mov.l @(r0,r14),r4
	add r4,r3 ; r3 ??? bc r4 is ???
	mov.b @(0x01,r3),r0
	tst r0,r0
	bt loc_CE369B6
	mov.w @(loc_CE36A26,pc),r0 ; r0 set to 0x1C8
	mov r14,r5
	mov.l @(loc_CE36A48_to_loc_8C04CC1C,pc),r3 ; r3 set to 0x8C04CC1C
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

loc_CE369B6:
	rts
	mov.l @r15+,r14

;==============================================
loc_CE369BA:
	mov.w @(loc_CE36A26,pc),r0 ; r0 set to 0x1C8
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_CE36A2C,pc),r3 ; r3 set to 0x150
	mov.l @(r0,r14),r4
	add r4,r3 ; r3 ??? bc r4 is ???
	mov.b @(0x01,r3),r0
	tst r0,r0
	bt loc_CE369D8
	mov.w @(loc_CE36A26,pc),r0 ; r0 set to 0x1C8
	mov r14,r5
	mov.l @(loc_CE36A48_to_loc_8C04CC1C,pc),r3 ; r3 set to 0x8C04CC1C
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

loc_CE369D8:
	rts
	mov.l @r15+,r14

;==============================================
loc_CE369DC:
	mov 0x00,r0
	mov.b r0,@(0x5,r4)
	mov.b r0,@(0x7,r4)
	mov.b r0,@(0x6,r4)
	mov.w @(0x46,PC),r0
	mov.b @(r0,r4),r0
	cmp/eq 0x00,r0
	bt.s loc_ce369f6
	mov 0x08,r5
	cmp/eq 0x01,r0
	bt loc_ce369f6
	cmp/eq 0x02,r0
	bf loc_ce369fa

loc_CE369F6:
	mov.w @(0x36,PC),r0
	mov.b r5,@(r0,r4)

loc_CE369FA:
	mov.l @(0x50,PC),r2
	jmp @r2
	mov 0x1D,r5

loc_CE36A00:
	mov 0x00,r0
	mov.b r0,@(0x5,r4)
	mov.b r0,@(0x7,r4)
	mov.b r0,@(0x6,r4)
	mov.w @(0x22,PC),r0
	mov.b @(r0,r4),r0
	cmp/eq 0x00,r0
	bt.s loc_ce36a1a
	mov 0x08,r5
	cmp/eq 0x01,r0
	bt loc_ce36a1a
	cmp/eq 0x02,r0
	bf loc_ce36a1e

loc_CE36A1A:
	mov.w @(0x12,PC),r0
	mov.b r5,@(r0,r4)

loc_CE36A1E:
	mov.l @(0x2C,PC),r2
	jmp @r2
	mov 0x1D,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE36A24:
	#data 0x0141
loc_CE36A26:
	#data 0x01C8
loc_CE36A28:
	#data 0x01EA
loc_CE36A2A:
	#data 0x01F7
loc_CE36A2C:
	#data 0x0150
loc_CE36A2E:
	#data 0x04C9
loc_CE36A30:
	#data 0x01E9
	#align4

loc_CE36A34:
	#data loc_8C042008
loc_CE36A38:
	#data 0x43092492
loc_CE36A3C:
	#data loc_8C0FDAB6
loc_CE36A40_to_loc_CE3716C_to_loc_CE36320:
	#data loc_CE3716C_to_loc_CE36320
loc_CE36A44_to_loc_CE371A4_to_loc_CE3698A:
	#data loc_CE371A4_to_loc_CE3698A
loc_CE36A48_to_loc_8C04CC1C:
	#data loc_8C04CC1C
loc_CE36A4c:
	#data loc_8C0530D8

;==============================================
loc_CE36A50:
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_CE36AD4,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt loc_CE36A70
	cmp/eq 0x01,r0
	bt loc_CE36A76
	cmp/eq 0x02,r0
	bt loc_CE36A82
	bra loc_CE36A8E
	nop

loc_CE36A70:
	mov.w @(loc_CE36AD6,pc),r0 ; r0 set to 0x1E9
	bra loc_CE36A88
	mov.b r5,@(r0,r4)

loc_CE36A76:
	mov.w @(loc_CE36AD6,pc),r0 ; r0 set to 0x1E9
	mov 0x04,r3 ; r3 set to 0x04
	mov.b r3,@(r0,r4)
	add 0xBA,r0 ; r0 set to 0x1A3
	bra loc_CE36A8E
	mov.b r5,@(r0,r4)

loc_CE36A82:
	mov.w @(0x50,PC),r0
	mov 0x06,r2
	mov.b r2,@(r0,r4)

loc_CE36A88:
	mov.w @(loc_CE36AD8,pc),r0 ; r0 set to 0x1A3
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r3,@(r0,r4)

loc_CE36A8E:
	mov.l @(loc_CE36ADC_to_loc_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8, r3 set to 0x8C0530D8
	jmp @r3
	mov 0x15,r5

loc_CE36A94:
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_CE36AD4,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt loc_CE36AB4
	cmp/eq 0x01,r0
	bt loc_CE36ABA
	cmp/eq 0x02,r0
	bt loc_CE36AC2
	bra loc_CE36ACE
	nop

loc_CE36AB4:
	mov.w @(loc_CE36AD6,pc),r0 ; r0 set to 0x1E9
	bra loc_CE36AC8
	mov.b r5,@(r0,r4)

loc_CE36ABA:
	mov.w @(loc_CE36AD6,pc),r0 ; r0 set to 0x1E9
	mov 0x04,r2 ; r2 set to 0x04
	bra loc_CE36AC8
	mov.b r2,@(r0,r4)

loc_CE36AC2:
	mov.w @(0x10,PC),r0
	mov 0x06,r3
	mov.b r3,@(r0,r4)

loc_CE36AC8:
	mov.w @(loc_CE36AD8,pc),r0 ; r0 set to 0x1A3
	mov 0x01,r2 ; r2 set to 0x01
	mov.b r2,@(r0,r4)

loc_CE36ACE:
	mov.l @(loc_CE36ADC_to_loc_8C0530D8,pc),r2 ; r2 set to 0x8C0530D8, r2 set to 0x8C0530D8
	jmp @r2
	mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE36AD4:
	#data 0x04C9
loc_CE36AD6:
	#data 0x01E9
loc_CE36AD8:
	#data 0x01A3
	#align4

loc_CE36ADC_to_loc_8C0530D8:
	#data loc_8C0530D8

;==============================================
loc_CE36AE0:
	mov.w @(loc_CE36B84,PC),r0;0x01C8
	mov.l @(r0,r4),r5
	mov.b @(0x1,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce36b74
	mov.w @(loc_CE36B86,PC),r0;1a1
	mov.b @(r0,r5),r4
	extu.b r4,r0

	cmp/eq 0x25,r0
	bt.s loc_ce36b70
	mov r0,r4
	mov r4,r0
	nop 
	cmp/eq 0x26,r0
	bt loc_ce36b70
	mov r4,r0
	nop 
	cmp/eq 0x3D,r0
	bt loc_ce36b70
	mov r4,r0
	nop 
	cmp/eq 0x3E,r0
	bt loc_ce36b70
	mov r4,r0
	nop 
	cmp/eq 0x41,r0
	bt loc_ce36b70
	mov r4,r0
	nop 
	cmp/eq 0x42,r0
	bt loc_ce36b70
	mov r4,r0
	nop 
	cmp/eq 0x43,r0
	bt loc_ce36b70
	mov r4,r0
	nop 
	cmp/eq 0x44,r0
	bt loc_ce36b70
	mov r4,r0
	nop 
	cmp/eq 0x4C,r0
	bt loc_ce36b70
	mov r4,r0
	nop 
	cmp/eq 0x4D,r0
	bt loc_ce36b70
	mov r4,r0
	nop 
	cmp/eq 0x4E,r0
	bt loc_ce36b70
	mov r4,r0
	nop 
	cmp/eq 0x4F,r0
	bt loc_ce36b70
	mov r4,r0
	nop 
	cmp/eq 0x54,r0
	bt loc_ce36b70
	mov r4,r0
	nop 
	cmp/eq 0x55,r0
	bt loc_ce36b70
	mov r4,r0
	nop 
	cmp/eq 0x56,r0
	bt loc_ce36b70
	mov r4,r0
	nop 
	cmp/eq 0x57,r0
	bf loc_ce36b74

loc_CE36B70:
	rts
	mov 0x01,r0

loc_CE36B74:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_CE36B7A:
	mov.w @(loc_CE36B84,pc),r0 ; r0 set to 0x1C8
	mov.l @(loc_CE36B88_to_loc_8C04223A,pc),r3 ; r3 set to 0x8C04223A
	mov.l @(r0,r4),r4
	jmp @r3
	mov 0x31,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE36B84:
	#data 0x01C8
loc_CE36B86:
	#data 0x01A1
	#align4

loc_CE36B88_to_loc_8C04223A:
	#data loc_8C04223A

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;Data Start
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE36B8C:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000001
	#data 0x00000001
	#data 0x00000001
	#data 0x00000001
	#data 0x00000002
	#data 0x00000002
	#data 0x00000002
	#data 0x00000002
	#data 0x00000002

loc_CE36BD0:
	#data 0x0000000E
	#data 0x00000011
	#data 0x00000014
	#data 0x00000017
	#data 0x0000001A
	#data 0x0000001D

loc_CE36BE8:
	#data 0x00000020
	#data 0x00000023
	#data 0x00000026
	#data 0x00000029
	#data 0x0000002C
	#data 0x0000002F

loc_CE36C00:
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000000
	#data 0x00000001
	#data 0x00000001
	#data 0x00000001
	#data 0x00000001
	#data 0x00000001
	#data 0x00000002

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;Chain Data
loc_CE36C44:
	#data 0x01 0x02 0x01 0x02
loc_CE36C48:
	#data 0xFFFFFFFF
loc_CE36C4C:
	#data 0xFFFFFFFF
loc_CE36C50:
	#data 0x02010201
loc_CE36C54:
	#data 0xFFFFFFFF
loc_CE36C58:
	#data 0xFFFFFFFF

loc_CE36C5C:
	#data 0x02010201
loc_CE36C60:
	#data 0xFFFFFFFF
loc_CE36C64:
	#data 0xFFFFFFFF
loc_CE36C68:
	#data 0x02010201
loc_CE36C6C:
	#data 0xFFFFFFFF
loc_CE36C70:
	#data 0xFFFFFFFF

loc_CE36C74:
	#data 0x02010201
loc_CE36C78:
	#data 0x02FF02FF
loc_CE36C7C:
	#data 0xFFFFFFFF
loc_CE36C80:
	#data 0x02010201
loc_CE36C84:
	#data 0x02FF02FF
loc_CE36C88:
	#data 0xFFFFFFFF

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE36C8C:
	#data 0x0003
	#data 0x1000 0x0002 0x0000
	#data 0x0800 0x1000 0x1800 0x0300

loc_CE36C9C:
	#data 0x0004
	#data 0x0000
	#data 0x0003
	#data 0x0000
	#data 0x0300

loc_CE36CA6:
	#data 0x0005
	#data 0x1000 0x0004 0x0000
	#data 0x0400 0x1400 0x1000 0x1800 0x0800 0x0060

loc_CE36CBA:
	#data 0x0004
	#data 0x00059100
	#data 0x03000000

loc_CE36CC4:
	#data 0x0003
	#data 0x1000 0x0006 0x0000
	#data 0x0800 0x1000 0x1800 0x0060

loc_CE36CD4:
#data 0x91000004
#data 0x00000011
#data 0x0060

loc_CE36CDE:
	#data 0x0003
	#data 0x1100 0x0012 0x0000
	#data 0x0400 0x1000 0x1400 0x0040

loc_CE36CEE:
	#data 0x0003
	#data 0x1000 0x0013 0x0000
	#data 0x1000 0x1800 0x0800 0x0300

loc_CE36CFE:
	#data 0x0004
	#data 0x00149100
	#data 0x00600000

loc_CE36D08:
	#data 0x10000003
	#data 0x00000000
	#data 0x14001000
	#data 0x02000400

	#align4
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;S_PL Jump Table
loc_CE36D18_to_loc_CE30912:
	#data loc_CE30912 loc_CE3001C loc_CE31116 loc_CE31746
	#data loc_CE3186E loc_CE31A28 loc_CE31A2E loc_CE31AF2
	#data loc_CE31B48 loc_CE35F32 loc_CE362C6 loc_CE36954
	#data loc_CE36972 loc_CE308DA loc_CE35DC8 loc_CE3178C
	#data loc_CE369DC loc_CE36A00 loc_CE36A50 loc_CE36A94
	#data 0x00000000 0x00000000 0x00000000 0x00000000
	#data loc_CE36AE0 0x00000000 0x00000000 0x00000000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE36D88_to_loc_CE30C72:
#data loc_CE30C72

loc_CE36D8C_to_loc_CE310EA:
#data loc_CE310EA

loc_CE36D90_to_loc_CE310D8:
#data loc_CE310D8

loc_CE36D94_to_loc_CE31112:
#data loc_CE31112

loc_CE36D98_to_loc_CE31394:
#data loc_CE31394

loc_CE36D9C_to_loc_CE316F4:
#data loc_CE316F4

loc_CE36DA0_to_loc_CE3171E:
#data loc_CE3171E

loc_CE36DA4_to_loc_CE31736:
#data loc_CE31736

loc_CE36DA8_to_loc_CE318B4:
#data loc_CE318B4

loc_CE36DAC_to_loc_CE31946:
#data loc_CE31946

loc_CE36DB0_to_loc_CE31A06:
#data loc_CE31A06

loc_CE36DB4_to_loc_CE31A40:
#data loc_CE31A40

loc_CE36DB8_to_loc_CE31A4E:
#data loc_CE31A4E

loc_CE36DBC_to_loc_CE31A6E:
#data loc_CE31A6E

loc_CE36DC0_to_loc_CE31A8E:
#data loc_CE31A8E

loc_CE36DC4_to_loc_CE31AA6:
#data loc_CE31AA6

loc_CE36DC8_to_loc_CE31AB4:
#data loc_CE31AB4

loc_CE36DCC_to_loc_CE31ACC:
#data loc_CE31ACC

loc_CE36DD0_to_loc_CE31ADA:
#data loc_CE31ADA

loc_CE36DD4_to_loc_CE31A94:
#data loc_CE31A94

loc_CE36DD8_to_loc_CE31ABA:
#data loc_CE31ABA

loc_CE36DDC_to_loc_CE31A94:
#data loc_CE31A94

loc_CE36DE0_to_loc_CE31AE0:
#data loc_CE31AE0

loc_CE36DE4_to_loc_CE31ABA:
#data loc_CE31ABA

loc_CE36DE8_to_loc_CE31B96:
#data loc_CE31B96

loc_CE36DEC_to_loc_CE31EAE:
#data loc_CE31EAE

loc_CE36DF0_to_loc_CE3216E:
#data loc_CE3216E

loc_CE36DF4_to_loc_CE322BA:
#data loc_CE322BA

loc_CE36DF8_to_loc_CE32E90:
#data loc_CE32E90

loc_CE36DFC_to_loc_CE33954:
#data loc_CE33954

loc_CE36E00_to_loc_CE34622:
#data loc_CE34622

loc_CE36E04_to_loc_CE34622:
#data loc_CE34622

loc_CE36E08_to_loc_CE34904:
#data loc_CE34904

loc_CE36E0C_to_loc_CE34AAE:
#data loc_CE34AAE

loc_CE36E10_to_loc_CE34622:
#data loc_CE34622

loc_CE36E14_to_loc_CE34622:
#data loc_CE34622

loc_CE36E18_to_loc_CE34622:
#data loc_CE34622

loc_CE36E1C_to_loc_CE34622:
#data loc_CE34622

loc_CE36E20_to_loc_CE34622:
#data loc_CE34622

loc_CE36E24_to_loc_CE34622:
#data loc_CE34622

loc_CE36E28_to_loc_CE34622:
#data loc_CE34622

loc_CE36E2C_to_loc_CE34B02:
#data loc_CE34B02

loc_CE36E30_to_loc_CE357F8:
#data loc_CE357F8

loc_CE36E34_to_loc_CE358DA:
#data loc_CE358DA

loc_CE36E38_to_loc_CE35A08:
#data loc_CE35A08

loc_CE36E3C_to_loc_CE35CE0:
#data loc_CE35CE0

loc_CE36E40_to_loc_CE31BA8:
#data loc_CE31BA8

loc_CE36E44_to_loc_CE31D1C:
#data loc_CE31D1C

loc_CE36E48_to_loc_CE31BBA:
#data loc_CE31BBA

loc_CE36E4C_to_loc_CE31C0E:
#data loc_CE31C0E

loc_CE36E50_to_loc_CE31D4C:
#data loc_CE31D4C

loc_CE36E54_to_loc_CE31E1E:
#data loc_CE31E1E

loc_CE36E58_to_loc_CE31EC0:
#data loc_CE31EC0

loc_CE36E5C_to_loc_CE31FFA:
#data loc_CE31FFA

loc_CE36E60_to_loc_CE31ED2:
#data loc_CE31ED2

loc_CE36E64_to_loc_CE31F26:
#data loc_CE31F26

loc_CE36E68_to_loc_CE3200C:
#data loc_CE3200C

loc_CE36E6C_to_loc_CE32112:
#data loc_CE32112

loc_CE36E70_to_loc_CE32180:
#data loc_CE32180

loc_CE36E74_to_loc_CE321D0:
#data loc_CE321D0

loc_CE36E78:
#data 0x14001000
#data 0x1C001400
#data 0x38001800

#align4
loc_CE36E84_to_loc_CE322CC:
#data loc_CE322CC

loc_CE36E88_to_loc_CE32864:
#data loc_CE32864

loc_CE36E8C_to_loc_CE322DE:
#data loc_CE322DE

loc_CE36E90_to_loc_CE32304:
#data loc_CE32304

loc_CE36E94_to_loc_CE323B2:
#data loc_CE323B2

loc_CE36E98_to_loc_CE32434:
#data loc_CE32434

loc_CE36E9C_to_loc_CE324F6:
#data loc_CE324F6

loc_CE36EA0_to_loc_CE3261A:
#data loc_CE3261A

loc_CE36EA4_to_loc_CE326D0:
#data loc_CE326D0

loc_CE36EA8_to_loc_CE327A0:
#data loc_CE327A0

loc_CE36EAC_to_loc_CE3281A:
#data loc_CE3281A

loc_CE36EB0:
#data 0x00058000
#data 0x000E8000
#data 0xFFFF4000
#data 0x00038000
#data 0x00108000
#data 0xFFFF8000

#align4
loc_CE36EC8_to_loc_CE32876:
#data loc_CE32876

loc_CE36ECC_to_loc_CE328C4:
#data loc_CE328C4

loc_CE36ED0_to_loc_CE329B8:
#data loc_CE329B8

loc_CE36ED4_to_loc_CE32A0C:
#data loc_CE32A0C

loc_CE36ED8_to_loc_CE32AEC:
#data loc_CE32AEC

loc_CE36EDC_to_loc_CE32C0C:
#data loc_CE32C0C

loc_CE36EE0_to_loc_CE32C8A:
#data loc_CE32C8A

loc_CE36EE4_to_loc_CE32D7C:
#data loc_CE32D7C

loc_CE36EE8_to_loc_CE32DF6:
#data loc_CE32DF6

loc_CE36EEC_to_loc_CE32E1C:
#data loc_CE32E1C

loc_CE36EF0:
#data 0x00040000
#data 0x000D8000
#data 0xFFFF4000
#data 0x00028000
#data 0x000E8000
#data 0xFFFF8000

#align4
loc_CE36F08_to_loc_CE32EA2:
#data loc_CE32EA2

loc_CE36F0C_to_loc_CE32F10:
#data loc_CE32F10

loc_CE36F10_to_loc_CE33050:
#data loc_CE33050

loc_CE36F14_to_loc_CE33130:
#data loc_CE33130

loc_CE36F18_to_loc_CE335D8:
#data loc_CE335D8

loc_CE36F1C_to_loc_CE33930:
#data loc_CE33930

loc_CE36F20:
#data 0x00300020
#data 0x00700030

#align4
loc_CE36F28:
#data 0x00038000
#data 0x00000000
#data 0x000C8000
#data 0xFFFF2000
#data 0x00050000
#data 0x00000000
#data 0x000D8000
#data 0xFFFF6000

#align4
loc_CE36F48:
#data 0x04800280

#align4
loc_CE36F4C_to_loc_CE33184:
#data loc_CE33184

loc_CE36F50_to_loc_CE331B6:
#data loc_CE331B6

loc_CE36F54_to_loc_CE33284:
#data loc_CE33284

loc_CE36F58_to_loc_CE3333C:
#data loc_CE3333C

loc_CE36F5C_to_loc_CE333F0:
#data loc_CE333F0

loc_CE36F60_to_loc_CE33470:
#data loc_CE33470

loc_CE36F64_to_loc_CE3354C:
#data loc_CE3354C

loc_CE36F68_to_loc_CE335B6:
#data loc_CE335B6

loc_CE36F6C:
#data 0x00038000
#data 0x00000000
#data 0x000C8000
#data 0xFFFF4000
#data 0x00050000
#data 0x00000000
#data 0x000D0000
#data 0xFFFF6000

#align4
loc_CE36F8C_to_loc_CE335FC:
#data loc_CE335FC

loc_CE36F90_to_loc_CE3364C:
#data loc_CE3364C

loc_CE36F94_to_loc_CE3370C:
#data loc_CE3370C

loc_CE36F98_to_loc_CE337B8:
#data loc_CE337B8

loc_CE36F9C_to_loc_CE3386E:
#data loc_CE3386E

loc_CE36FA0_to_loc_CE338D8:
#data loc_CE338D8

loc_CE36FA4_to_loc_CE33966:
#data loc_CE33966

loc_CE36FA8_to_loc_CE339D4:
#data loc_CE339D4

loc_CE36FAC_to_loc_CE34594:
#data loc_CE34594

loc_CE36FB0_to_loc_CE34600:
#data loc_CE34600

loc_CE36FB4:
#data 0x4D024C02
#data 0x4F094E02

#align4
loc_CE36FBC_to_loc_CE33B46:
#data loc_CE33B46

loc_CE36FC0_to_loc_CE33BB8:
#data loc_CE33BB8

loc_CE36FC4_to_loc_CE33C7A:
#data loc_CE33C7A

loc_CE36FC8_to_loc_CE33D6C:
#data loc_CE33D6C

loc_CE36FCC_to_loc_CE33E0C:
#data loc_CE33E0C

loc_CE36FD0_to_loc_CE33EDA:
#data loc_CE33EDA

loc_CE36FD4_to_loc_CE33FC4:
#data loc_CE33FC4

loc_CE36FD8_to_loc_CE3402A:
#data loc_CE3402A

loc_CE36FDC_to_loc_CE3407C:
#data loc_CE3407C

loc_CE36FE0_to_loc_CE34124:
#data loc_CE34124

loc_CE36FE4_to_loc_CE3414E:
#data loc_CE3414E

loc_CE36FE8_to_loc_CE341C4:
#data loc_CE341C4

loc_CE36FEC_to_loc_CE34328:
#data loc_CE34328

loc_CE36FF0_to_loc_CE343A2:
#data loc_CE343A2

loc_CE36FF4_to_loc_CE344FC:
#data loc_CE344FC

loc_CE36FF8_to_loc_CE34566:
#data loc_CE34566

loc_CE36FFC_to_loc_CE34634:
#data loc_CE34634

loc_CE37000_to_loc_CE346F0:
#data loc_CE346F0

loc_CE37004_to_loc_CE34726:
#data loc_CE34726

loc_CE37008_to_loc_CE34844:
#data loc_CE34844

loc_CE3700C:
#data 0x00040000
#data 0xFFFFF000
#data 0x00080000
#data 0xFFFFF000
#data 0x00010000
#data 0xFFFFF000
#data 0x00030000
#data 0xFFFFF000

#align4
loc_CE3702C:
#data 0x00200010

#align4
loc_CE37030_to_loc_CE34916:
#data loc_CE34916

loc_CE37034_to_loc_CE3497A:
#data loc_CE3497A

loc_CE37038_to_loc_CE34A8C:
#data loc_CE34A8C

loc_CE3703C_to_loc_CE34AC0:
#data loc_CE34AC0

loc_CE37040_to_loc_CE34AE0:
#data loc_CE34AE0

loc_CE37044_to_loc_CE34B14:
#data loc_CE34B14

loc_CE37048_to_loc_CE34B56:
#data loc_CE34B56

loc_CE3704C_to_loc_CE34BFC:
#data loc_CE34BFC

loc_CE37050_to_loc_CE357A8:
#data loc_CE357A8

loc_CE37054_to_loc_CE357D6:
#data loc_CE357D6

loc_CE37058:
#data 0x54025402
#data 0x54025402
#data 0x54025402
#data 0x55025502
#data 0x55025502
#data 0x56025502
#data 0x56025602
#data 0x56025602
#data 0x00005709

#align4
loc_CE3707C_to_loc_CE34C90:
#data loc_CE34C90

loc_CE37080_to_loc_CE34CBA:
#data loc_CE34CBA

loc_CE37084_to_loc_CE34D50:
#data loc_CE34D50

loc_CE37088_to_loc_CE34DC2:
#data loc_CE34DC2

loc_CE3708C_to_loc_CE34EA4:
#data loc_CE34EA4

loc_CE37090_to_loc_CE34EF2:
#data loc_CE34EF2

loc_CE37094_to_loc_CE34FC0:
#data loc_CE34FC0

loc_CE37098_to_loc_CE35018:
#data loc_CE35018

loc_CE3709C_to_loc_CE350A4:
#data loc_CE350A4

loc_CE370A0_to_loc_CE35156:
#data loc_CE35156

loc_CE370A4_to_loc_CE351F8:
#data loc_CE351F8

loc_CE370A8_to_loc_CE3525E:
#data loc_CE3525E

loc_CE370AC_to_loc_CE3527A:
#data loc_CE3527A

loc_CE370B0_to_loc_CE35358:
#data loc_CE35358

loc_CE370B4_to_loc_CE35396:
#data loc_CE35396

loc_CE370B8_to_loc_CE353DA:
#data loc_CE353DA

loc_CE370BC_to_loc_CE3552A:
#data loc_CE3552A

loc_CE370C0_to_loc_CE355CC:
#data loc_CE355CC

loc_CE370C4_to_loc_CE35710:
#data loc_CE35710

loc_CE370C8_to_loc_CE3577A:
#data loc_CE3577A

loc_CE370CC_to_loc_CE3580A:
#data loc_CE3580A

loc_CE370D0_to_loc_CE3582A:
#data loc_CE3582A

loc_CE370D4_to_loc_CE358B8:
#data loc_CE358B8

loc_CE370D8_to_loc_CE358EC:
#data loc_CE358EC

loc_CE370DC_to_loc_CE35940:
#data loc_CE35940

loc_CE370E0_to_loc_CE3598C:
#data loc_CE3598C

loc_CE370E4_to_loc_CE359AA:
#data loc_CE359AA

loc_CE370E8_to_loc_CE35A1A:
#data loc_CE35A1A

loc_CE370EC_to_loc_CE35A76:
#data loc_CE35A76

loc_CE370F0_to_loc_CE35B50:
#data loc_CE35B50

loc_CE370F4_to_loc_CE35C20:
#data loc_CE35C20

loc_CE370F8_to_loc_CE35C8E:
#data loc_CE35C8E

loc_CE370FC_to_loc_CE35CF2:
#data loc_CE35CF2

loc_CE37100_to_loc_CE35D68:
#data loc_CE35D68

loc_CE37104_to_loc_CE35E18:
#data loc_CE35E18

loc_CE37108_to_loc_CE35E9C:
#data loc_CE35E9C

loc_CE3710C_to_loc_CE35F0A:
#data loc_CE35F0A

loc_CE37110_to_loc_CE36050:
#data loc_CE36050

loc_CE37114_to_loc_CE360D6:
#data loc_CE360D6

loc_CE37118_to_loc_CE36122:
#data loc_CE36122

loc_CE3711C_to_loc_CE36050:
#data loc_CE36050

loc_CE37120_to_loc_CE36050:
#data loc_CE36050

loc_CE37124_to_loc_CE36050:
#data loc_CE36050

loc_CE37128_to_loc_CE36050:
#data loc_CE36050

loc_CE3712C_to_loc_CE3619C:
#data loc_CE3619C

loc_CE37130_to_loc_CE361F0:
#data loc_CE361F0

loc_CE37134_to_loc_CE36288:
#data loc_CE36288

loc_CE37138_to_loc_CE36050:
#data loc_CE36050

loc_CE3713C_to_loc_CE36050:
#data loc_CE36050

loc_CE37140_to_loc_CE36050:
#data loc_CE36050

loc_CE37144_to_loc_CE36050:
#data loc_CE36050

loc_CE37148_to_loc_CE364AC:
#data loc_CE364AC

loc_CE3714C_to_loc_CE36418:
#data loc_CE36418

loc_CE37150_to_loc_CE3636C:
#data loc_CE3636C

loc_CE37154_to_loc_CE3664E:
#data loc_CE3664E

loc_CE37158_to_loc_CE365BA:
#data loc_CE365BA

loc_CE3715C_to_loc_CE364E8:
#data loc_CE364E8

loc_CE37160_to_loc_CE366C4:
#data loc_CE366C4

loc_CE37164_to_loc_CE367F4:
#data loc_CE367F4

loc_CE37168_to_loc_CE364D6:
#data loc_CE364D6

loc_CE3716C_to_loc_CE36320:
#data loc_CE36320

loc_CE37170_to_loc_CE364D6:
#data loc_CE364D6

loc_CE37174_to_loc_CE36678:
#data loc_CE36678

loc_CE37178_to_loc_CE36320:
#data loc_CE36320

loc_CE3717C_to_loc_CE36320:
#data loc_CE36320

loc_CE37180_to_loc_CE36320:
#data loc_CE36320

loc_CE37184_to_loc_CE36320:
#data loc_CE36320

loc_CE37188_to_loc_CE3683C:
#data loc_CE3683C

loc_CE3718C_to_loc_CE3684E:
#data loc_CE3684E

loc_CE37190_to_loc_CE3689C:
#data loc_CE3689C

loc_CE37194_to_loc_CE36320:
#data loc_CE36320

loc_CE37198_to_loc_CE36320:
#data loc_CE36320

loc_CE3719C_to_loc_CE36320:
#data loc_CE36320

loc_CE371A0_to_loc_CE36320:
#data loc_CE36320

loc_CE371A4_to_loc_CE3698A:
#data loc_CE3698A

loc_CE371A8_to_loc_CE36998:
#data loc_CE36998

loc_CE371AC_to_loc_CE36998:
#data loc_CE36998

loc_CE371B0_to_loc_CE36998:
#data loc_CE36998

loc_CE371B4_to_loc_CE36998:
#data loc_CE36998

loc_CE371B8_to_loc_CE3698A:
#data loc_CE3698A

loc_CE371BC_to_loc_CE36998:
#data loc_CE36998

loc_CE371C0_to_loc_CE36998:
#data loc_CE36998

loc_CE371C4_to_loc_CE3698A:
#data loc_CE3698A

loc_CE371C8_to_loc_CE3698A:
#data loc_CE3698A

loc_CE371CC_to_loc_CE369BA:
#data loc_CE369BA

loc_CE371D0_to_loc_CE3698A:
#data loc_CE3698A

loc_CE371D4_to_loc_CE3698A:
#data loc_CE3698A

loc_CE371D8_to_loc_CE369BA:
#data loc_CE369BA
