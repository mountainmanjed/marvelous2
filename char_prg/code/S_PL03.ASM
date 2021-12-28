;==============================================
;Morrigan Programming
;==============================================
#symbol loc_8C054508 0x8C054508
#symbol loc_8C054B34 0x8C054B34
#symbol loc_8C05496C 0x8C05496C
#symbol loc_8C054D04 0x8C054D04
#symbol loc_8C053F6E 0x8C053F6E
#symbol loc_8C053E00 0x8C053E00
#symbol loc_8C0542E0 0x8C0542E0
#symbol loc_8C054E58 0x8C054E58
#symbol loc_8C055C3A 0x8C055C3A
#symbol loc_8C0530D8 0x8C0530D8
#symbol loc_8C054DA0 0x8C054DA0
#symbol loc_8C054D1C 0x8C054D1C
#symbol loc_8C035162 0x8C035162
#symbol loc_8C042008 0x8C042008
#symbol loc_8C04223A 0x8C04223A
#symbol loc_8C2896B0 0x8C2896B0
#symbol loc_8C034E8C 0x8C034E8C
#symbol loc_8C052B4C 0x8C052B4C
#symbol loc_8C034DEE 0x8C034DEE
#symbol loc_8C051648 0x8C051648
#symbol loc_8C0511B4 0x8C0511B4
#symbol loc_8C052C84 0x8C052C84
#symbol loc_8C05176E 0x8C05176E
#symbol loc_8C052CE2 0x8C052CE2
#symbol loc_8C052DAC 0x8C052DAC
#symbol loc_8C05177A 0x8C05177A
#symbol loc_8C04FEA8 0x8C04FEA8
#symbol loc_8C050048 0x8C050048
#symbol loc_8C050084 0x8C050084
#symbol loc_8C04FF88 0x8C04FF88
#symbol loc_8C0511E2 0x8C0511E2
#symbol loc_8C056DE4 0x8C056DE4
#symbol loc_8C0BDF70 0x8C0BDF70
#symbol loc_8C03544C 0x8C03544C
#symbol loc_8C289636 0x8C289636
#symbol loc_8C0514B8 0x8C0514B8
#symbol loc_8C11E730 0x8C11E730
#symbol loc_8C26823C 0x8C26823C
#symbol loc_8C046C8A 0x8C046C8A
#symbol loc_8C05218A 0x8C05218A
#symbol loc_8C05115A 0x8C05115A
#symbol loc_8C062148 0x8C062148
#symbol loc_8C053082 0x8C053082
#symbol loc_8C045790 0x8C045790
#symbol loc_8C02FEC4 0x8C02FEC4
#symbol loc_8C0522E0 0x8C0522E0
#symbol loc_8C0BB2BC 0x8C0BB2BC
#symbol loc_8C0BB314 0x8C0BB314
#symbol loc_8C050834 0x8C050834
#symbol loc_8C2895F6 0x8C2895F6
#symbol loc_8C0626D8 0x8C0626D8
#symbol loc_8C055D2E 0x8C055D2E
#symbol loc_8C055D54 0x8C055D54
#symbol loc_8C063500 0x8C063500
#symbol loc_8C05264C 0x8C05264C
#symbol loc_8C063900 0x8C063900
#symbol loc_8C0523D8 0x8C0523D8
#symbol loc_8C0FDB4E 0x8C0FDB4E
#symbol loc_8C0424A6 0x8C0424A6
#symbol loc_8C059F64 0x8C059F64
#symbol loc_8C0BE4C4 0x8C0BE4C4
#symbol loc_8C05933C 0x8C05933C
#symbol loc_8C05248E 0x8C05248E
#symbol loc_8C050EA4 0x8C050EA4
#symbol loc_8C051854 0x8C051854
#symbol loc_8C103660 0x8C103660
#symbol loc_8C056F2A 0x8C056F2A
#symbol loc_8C0423FC 0x8C0423FC
#symbol loc_8C0BBB48 0x8C0BBB48
#symbol loc_8C052618 0x8C052618
#symbol loc_8C04CC1C 0x8C04CC1C
#symbol loc_8C04CE3A 0x8C04CE3A
#symbol loc_8C129728 0x8C129728

;======================================================================
start_CE30000:
	mov.w @(loc_CE3001C,pc),r0 ; r0 set to 0x428
	mov 0x70,r5 ; r5 set to 0x70
	mov.l @(loc_CE30020,pc),r7 ; r7 set to 0xCE35358
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE3001C:
	#data 0x0428
	#align4

loc_CE30020:
	#data loc_CE35358

;==============================================
loc_CE30024:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE300EC,pc),r3 ; r3 set to 0x8C054508
	jsr @r3
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300E4
	mov.l @(loc_CE300F0,pc),r3 ; r3 set to 0x8C054B34
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300E4
	mov.l @(loc_CE300F4,pc),r3 ; r3 set to 0x8C05496C
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300E4
	mov.l @(loc_CE300F8,pc),r3 ; r3 set to 0x8C054D04
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300E4
	bsr loc_CE30388
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300E4
	bsr loc_CE303CE
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300E4
	bsr loc_CE30316
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300E4
	bsr loc_CE30254
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300E4
	bsr loc_CE301E0
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300E4
	bsr loc_CE30166
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300E4
	bsr loc_CE30108
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300E4
	bsr loc_CE302D0
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300E4
	bsr loc_CE304E0
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300E4
	bsr loc_CE3047A
	mov r14,r4
	tst r0,r0
	bf loc_CE300E4
	bsr loc_CE30442
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300E4
	mov.w @(loc_CE300EA,pc),r5 ; r5 set to 0x3B4
	mov.l @(loc_CE300FC,pc),r3 ; r3 set to 0x8C053F6E
	add r14,r5 ; r5 ??? bc r14 is ???
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300E4
	mov.l @(loc_CE30100,pc),r3 ; r3 set to 0x8C053E00
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE30104,pc),r2 ; r2 set to 0x8C0542E0
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE300E4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE300EA:
	#data 0x03B4
	#align4

loc_CE300EC:
	#data loc_8C054508
loc_CE300F0:
	#data loc_8C054B34
loc_CE300F4:
	#data loc_8C05496C
loc_CE300F8:
	#data loc_8C054D04
loc_CE300FC:
	#data loc_8C053F6E
loc_CE30100:
	#data loc_8C053E00
loc_CE30104:
	#data loc_8C0542E0

;==============================================
loc_CE30108:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x114,PC),r3
	mov r4,r14
	mov.w @(0x112,PC),r6
	add r14,r3
	mov.l @(0x120,PC),r5
	mov.l r3,@r15
	add r14,r6
	mov.l @(0x11C,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30132
	mov.l @r15,r2
	mov 0x1A,r0
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_ce3013c

loc_CE30132:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

loc_CE3013C:
	mov.w @(0xE8,PC),r5
	mov.l @(0x100,PC),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x01,r3
	mov.b r0,@(0x7,r14)
	mov 0x15,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0xD4,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0xEC,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE30166:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0xD8,PC),r5
	mov.w @(0xB8,PC),r6
	mov.l @(0xC8,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce301a0
	mova @(0xCC,PC),r0
	fmov @r0,fr3
	mov.w @(0xA8,PC),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt loc_ce301a0
	mov.w @(0x9C,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce301a4
	mov.w @(0x96,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce301a4

loc_CE301A0:
	bra loc_ce301d8
	mov 0x00,r0

loc_CE301A4:
	mov.w @(0x84,PC),r5
	mov 0x01,r13
	mov.w @(0x84,PC),r0
	mov.l @(0x94,PC),r3
	add r14,r5
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x00,r4
	mov r4,r0
	nop 
	mov.b r0,@(0x5,r14)
	mov r13,r0
	nop 
	mov.b r0,@(0x6,r14)
	mov r4,r0
	nop 
	mov.b r0,@(0x7,r14)
	mov 0x15,r5
	mov.w @(0x5C,PC),r0
	mov.l @(0x74,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov r13,r0
	nop 

loc_CE301D8:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE301E0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_CE30250,pc),r5 ; r5 set to 0xCE352E4
	mov.w @(loc_CE30234,pc),r6 ; r6 set to 0x37C
	mov.l @(loc_CE3023C,pc),r3 ; r3 set to 0x8C054E58
	jsr @r3
	add r14,r6 ; r6 ??? bc r14 is ???
	extu.b r0,r0
	tst r0,r0
	bf loc_CE301FE
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.l @r15+,r14

loc_CE301FE:
	mov.w @(loc_CE30234,pc),r5 ; r5 set to 0x37C
	mov.l @(loc_CE30240,pc),r3 ; r3 set to 0x8C055C3A
	add r14,r5 ; r5 ??? bc r14 is ???
	jsr @r3
	mov r14,r4
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	mov 0x02,r3 ; r3 set to 0x02
	mov.b r0,@(0x07,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x06,r14)
	mov.w @(loc_CE3022A,pc),r0 ; r0 set to 0x1E9
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE30244,pc),r3 ; r3 set to 0x8C0530D8
	jsr @r3
	mov r14,r4
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE30226:
	#data 0x02A4
loc_CE30228:
	#data 0x036C
loc_CE3022A:
	#data 0x01E9
loc_CE3022C:
	#data 0x0374
loc_CE3022E:
	#data 0x041C
loc_CE30230:
	#data 0x01D4
loc_CE30232:
	#data 0x01FC
loc_CE30234:
	#data 0x037C
	#align4

loc_CE30238:
	#data loc_CE352C4
loc_CE3023C:
	#data loc_8C054E58
loc_CE30240:
	#data loc_8C055C3A
loc_CE30244:
	#data loc_8C0530D8
loc_CE30248:
	#data loc_CE352D4
loc_CE3024c:
	#data 0x43092492
loc_CE30250:
	#data loc_CE352E4

;==============================================
loc_CE30254:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x10C,PC),r5
	mov.w @(0xFA,PC),r6
	mov.l @(0x10C,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce3028e
	mova @(0x104,PC),r0
	fmov @r0,fr3
	mov.w @(0xEA,PC),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt loc_ce3028e
	mov.w @(0xDE,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce30292
	mov.w @(0xD8,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce30292

loc_CE3028E:
	bra loc_ce302c8
	mov 0x00,r0

loc_CE30292:
	mov.w @(0xC6,PC),r5
	mov 0x01,r13
	mov.w @(0xC6,PC),r0
	mov.l @(0xDC,PC),r3
	add r14,r5
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x00,r4
	mov r4,r0
	nop 
	mov.b r0,@(0x5,r14)
	mov r13,r0
	nop 
	mov.b r0,@(0x6,r14)
	mov r4,r0
	nop 
	mov.b r0,@(0x7,r14)
	mov 0x02,r3
	mov.w @(0xA8,PC),r0
	mov 0x15,r5
	mov.b r3,@(r0,r14)
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov r14,r4
	mov r13,r0
	nop 

loc_CE302C8:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE302D0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_CE30380,pc),r5 ; r5 set to 0xCE35304
	mov.w @(loc_CE30366,pc),r6 ; r6 set to 0x38C
	mov.l @(loc_CE30370,pc),r3 ; r3 set to 0x8C054E58
	jsr @r3
	add r14,r6 ; r6 ??? bc r14 is ???
	extu.b r0,r0
	tst r0,r0
	bf loc_CE302EE
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.l @r15+,r14

loc_CE302EE:
	mov.w @(loc_CE30366,pc),r5 ; r5 set to 0x38C
	mov.l @(loc_CE30378,pc),r3 ; r3 set to 0x8C055C3A
	add r14,r5 ; r5 ??? bc r14 is ???
	jsr @r3
	mov r14,r4
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	mov 0x03,r3 ; r3 set to 0x03
	mov.b r0,@(0x07,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x06,r14)
	mov.w @(loc_CE30364,pc),r0 ; r0 set to 0x1E9
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE3037C,pc),r3 ; r3 set to 0x8C0530D8
	jsr @r3
	mov r14,r4
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE30316:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x64,PC),r5
	mov.w @(0x46,PC),r6
	mov.l @(0x4C,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30336
	mov.w @(0x3A,PC),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce3033e

loc_CE30336:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3033E:
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x07,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x16,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x2C,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE3035c:
	#data 0x0384
loc_CE3035e:
	#data 0x041C
loc_CE30360:
	#data 0x01D4
loc_CE30362:
	#data 0x01FC
loc_CE30364:
	#data 0x01E9
loc_CE30366:
	#data 0x038C
loc_CE30368:
	#data 0x0394
loc_CE3036a:
	#data 0x040C
	#align4

loc_CE3036C:
	#data loc_CE352F4
loc_CE30370:
	#data loc_8C054E58
loc_CE30374:
	#data 0x43092492
loc_CE30378:
	#data loc_8C055C3A
loc_CE3037C:
	#data loc_8C0530D8
loc_CE30380:
	#data loc_CE35304
loc_CE30384:
	#data loc_CE35318

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE30388:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x118,PC),r5
	mov.w @(0x106,PC),r6
	mov.l @(0x118,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce303a8
	mov.w @(0xFA,PC),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce303b0

loc_CE303A8:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

loc_CE303B0:
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x09,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0xDE,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0xEC,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE303CE:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xDC,PC),r5
	mov.w @(0xC6,PC),r6
	mov.l @(0xD0,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce3040a
	mov.w @(0xB4,PC),r0
	mov.l @(r0,r14),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_ce3040a
	mov.w @(0xB0,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf.s loc_ce3041e
	mov 0x00,r4
	mov.w @(0xA6,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce30412
	mov.w @(0xA0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce30412

loc_CE3040A:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14


loc_CE30412:
	mov.w @(0x8E,PC),r0
	mov 0x01,r5
	mov.b r5,@(r0,r14)
	mov 0x20,r0
	bra loc_ce30422
	mov.b r5,@(r0,r14)

loc_CE3041E:
	mov 0x20,r0
	mov.b r4,@(r0,r14)

loc_CE30422:
	mov r4,r0
	nop 
	mov.b r0,@(0x5,r14)
	mov 0x06,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x6A,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x78,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE30442:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_CE304B8,pc),r3 ; r3 set to 0x8C054DA0
	jsr @r3
	mov 0x08,r5 ; r5 set to 0x08
	extu.b r0,r0
	tst r0,r0
	bf loc_CE3045C
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.l @r15+,r14

loc_CE3045C:
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	mov 0x08,r3 ; r3 set to 0x08
	mov.b r0,@(0x07,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x06,r14)
	mov.w @(loc_CE3049E,pc),r0 ; r0 set to 0x1E9
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE304B0,pc),r3 ; r3 set to 0x8C0530D8
	jsr @r3
	mov r14,r4
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3047A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bt loc_ce30492
	mov.w @(0x10,PC),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce304c0

loc_CE30492:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE3049A:
	#data 0x039C
loc_CE3049C:
	#data 0x040C
loc_CE3049E:
	#data 0x01E9
loc_CE304a0:
	#data 0x03A4
loc_CE304a2:
	#data 0x01F9
loc_CE304a4:
	#data 0x01D4
loc_CE304a6:
	#data 0x01FC
	#align4

loc_CE304A8:
	#data loc_CE35328
loc_CE304Ac:
	#data loc_8C054E58
loc_CE304B0:
	#data loc_8C0530D8
loc_CE304B4:
	#data loc_CE35338
loc_CE304B8:
	#data loc_8C054DA0
loc_CE304bC:
	#data loc_8C054D1C

;==============================================
loc_CE304C0:
	mov.w @(0x10C,PC),r0
	mov 0x0E,r3
	mov 0x1D,r5
	mov.b r3,@(r0,r14)
	mov 0x00,r0
	mov.l @(0x118,PC),r3
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
loc_CE304E0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x100,PC),r5
	mov.w @(0xE6,PC),r6
	mov.l @(0x100,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30506
	mov.w @(0xDA,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce3050e
	mov.w @(0xD4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce3050e

loc_CE30506:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_CE3050E:
	mov.w @(0xC2,PC),r0
	mov 0x01,r3
	mov.w @(0xBC,PC),r5
	mov.b r3,@(r0,r14)
	mov.l @(0xD8,PC),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x0F,r3
	mov.b r0,@(0x7,r14)
	mov 0x15,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0xA2,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0xB4,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3053C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xB0,PC),r5
	mov.w @(0x90,PC),r6
	mov.l @(0xA4,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce3055c
	mov.w @(0x84,PC),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce30564

loc_CE3055C:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE30564:
	mov.w @(0x74,PC),r0
	mov 0x07,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE30572:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x7C,PC),r5
	mov.w @(0x60,PC),r6
	mov.l @(0x6C,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30592
	mov.w @(0x4E,PC),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce3059a

loc_CE30592:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

loc_CE3059A:
	mov.w @(0x3E,PC),r0
	mov 0x09,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE305A8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x4C,PC),r5
	mov.w @(0x2C,PC),r6
	mov.l @(0x38,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce305c8
	mov.w @(0x18,PC),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce30600

loc_CE305C8:
	lds.l @r15+,pr
	mov 0x00,r0
	rts 
	mov.l @r15+,r14

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_ce305d0:
	#data 0x01E9
loc_ce305d2:
	#data 0x03AC
loc_ce305d4:
	#data 0x01D4
loc_ce305d6:
	#data 0x01FC
loc_ce305d8:
	#data 0x0394
loc_ce305da:
	#data 0x040C
loc_ce305dc:
	#data 0x0258
loc_ce305de:
	#data 0x039C
loc_ce305e0:
	#data 0x03A4
	#align4

loc_CE305E4:
	#data loc_8C0530D8
loc_CE305E8:
	#data loc_CE35348
loc_CE305Ec:
	#data loc_8C054E58
loc_CE305f0:
	#data loc_8C055C3A
loc_CE305F4:
	#data loc_CE35318
loc_CE305F8:
	#data loc_CE35328
loc_CE305FC:
	#data loc_CE35338

;----------------------------------------------
loc_CE30600:
	mov 0x20,r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x06,r2
	mov.w @(loc_ce30640,PC),r0
	mov.b r2,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
P03_DlyHypC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_ce30572
	mov r4,r14
	tst r0,r0
	bf loc_ce30630
	bsr loc_ce305a8
	mov r14,r4
	tst r0,r0
	bf loc_ce30630
	bsr loc_ce3053c
	mov r14,r4
	tst r0,r0
	bt loc_ce30638

loc_CE30630:
	lds.l @r15+,pr
	mov 0x01,r0
	rts 
	mov.l @r15+,r14

loc_CE30638:
	mov 0x00,r0
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30640:
	#data 0x0258

;==============================================
loc_CE30642:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	mov.w @(0xD4,PC),r13
	tst r0,r0
	bf.s loc_ce3066e
	add r14,r13
	mov.w @(0xCE,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_ce3068a
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_ce3066e
	mov.w @(0xBE,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_ce3068a


loc_CE3066E:
	mov 0x12,r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_ce3068a
	mov.b @(r0,r13),r3
	add 0xFF,r3
	mov.b r3,@(r0,r13)
	exts.b r3,r3
	tst r3,r3
	bf loc_ce3068a
	mov.l @(0xA8,PC),r3
	mov 0x00,r5
	jsr @r3
	mov r14,r4

loc_CE3068A:
	mov 0x1C,r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_ce306d6
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_ce306c8
	mov.w @(0x8A,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_ce306ac
	mov.w @(0x82,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bt loc_ce306f4

loc_CE306AC:
	mov.w @(0x76,PC),r0
	mov.b @(r0,r14),r4
	extu.b r4,r0
	cmp/eq 0x0A,r0
	bt.s loc_ce306f4
	mov r0,r4
	mov r4,r0
	nop 
	cmp/eq 0x0B,r0
	bt loc_ce306f4
	mov r4,r0
	nop 
	cmp/eq 0x1A,r0
	bt loc_ce306f4

loc_CE306C8:
	mov.l @(0x64,PC),r3
	mov 0x1C,r0
	mov 0x00,r2
	mov 0x2B,r5
	mov.b r2,@(r0,r13)
	jsr @r3
	mov r14,r4

loc_CE306D6:
	mov 0x19,r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_ce306f4
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_ce306ee
	mov.w @(0x3E,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bt loc_ce306f4

loc_CE306EE:
	mov 0x19,r0
	mov 0x00,r2
	mov.b r2,@(r0,r13)

loc_CE306F4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE306FC:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_CE3072A,pc),r0 ; r0 set to 0x1E8
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x01,r12 ; r12 set to 0x01
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_CE30734,pc),r11 ; r11 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_CE30738
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_CE30756
	cmp/eq 0x02,r0
	bt loc_CE30770
	bra loc_CE3078A
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE30724:
	#data 0x02A4
loc_CE30726:
	#data 0x01D0
loc_CE30728:
	#data 0x01E9
loc_CE3072A:
	#data 0x01E8
	#align4

loc_CE3072c:
	#data loc_8C035162
loc_CE30730:
	#data loc_8C042008
loc_CE30734:
	#data loc_8C04223A

;----------------------------------------------
loc_CE30738:
	mov.w @(loc_CE30830,pc),r0 ; r0 set to 0x158
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r13,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(loc_CE30832,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30840,pc),r3 ; r3 set to 0xCE3527C
	mov.l r3,@(r0,r14)
	mov.w @(loc_CE30834,pc),r0 ; r0 set to 0x1A7
	mov.b r13,@(r0,r14)
	mov.w @(loc_CE30836,pc),r0 ; r0 set to 0x2A2
	bra loc_CE30788
	nop

loc_CE30756:
	mov.w @(loc_CE30830,pc),r0 ; r0 set to 0x158
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r12,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r12,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(loc_CE30832,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30844,pc),r3 ; r3 set to 0xCE35280
	mov.l r3,@(r0,r14)
	mov.w @(loc_CE30834,pc),r0 ; r0 set to 0x1A7
	bra loc_CE30788
	nop

loc_CE30770:
	mov.w @(0xBC,PC),r0
	mov 0x02,r12
	mov 0x16,r5
	mov.b r12,@(r0,r14)
	add 0x49,r0
	mov.b r12,@(r0,r14)
	jsr @r11
	mov r14,r4
	mov.w @(0xAE,PC),r0
	mov.l @(0xC4,PC),r3
	mov.l r3,@(r0,r14)
	mov.w @(0xAA,PC),r0

loc_CE30788:
	mov.b r12,@(r0,r14)

loc_CE3078A:
	mov.w @(loc_CE30838,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1AC
	mov 0x07,r5 ; r5 set to 0x07, r5 set to 0x07
	mov.l @(loc_CE3084C,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov r14,r4
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.w @(loc_CE30830,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov.l @(loc_CE30850,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8C
	mov.l @r15+,r11
	mov.b @(r0,r14),r6
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE307BE:
	mov.w @(loc_CE3083A,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_CE30854,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_CE307E2
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_CE307FE
	cmp/eq 0x02,r0
	bt loc_CE3081A
	bra loc_CE30876
	nop

loc_CE307E2:
	mov.w @(loc_CE30830,pc),r0 ; r0 set to 0x158
	mov 0x06,r3 ; r3 set to 0x06
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_CE30832,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30840,pc),r3 ; r3 set to 0xCE3527C
	mov.l r3,@(r0,r14)
	mov.w @(loc_CE30834,pc),r0 ; r0 set to 0x1A7
	bra loc_CE30876
	mov.b r13,@(r0,r14)

loc_CE307FE:
	mov.w @(loc_CE30830,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x07,r3 ; r3 set to 0x07
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_CE30832,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30844,pc),r3 ; r3 set to 0xCE35280
	mov.l r3,@(r0,r14)
	bra loc_CE30872
	mov 0x01,r2

loc_CE3081A:
	mov.w @(loc_CE3083C,pc),r0 ; r0 set to 0x1FA
	mov.w @(loc_CE3083E,pc),r3 ; r3 set to 0x400
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r3,r1
	bt loc_CE30858
	mov.w @(loc_CE30830,pc),r0 ; r0 set to 0x158
	mov 0x03,r2 ; r2 set to 0x03
	mov.b r2,@(r0,r14)
	bra loc_CE30860
	mov 0x1C,r1

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE30830:
	#data 0x0158
loc_CE30832:
	#data 0x03F4
loc_CE30834:
	#data 0x01A7
loc_CE30836:
	#data 0x02A2
loc_CE30838:
	#data 0x01AC
loc_CE3083A:
	#data 0x01E8
loc_CE3083C:
	#data 0x01FA
loc_CE3083E:
	#data 0x0400
	#align4

loc_CE30840:
	#data loc_CE3527C
loc_CE30844:
	#data loc_CE35280
loc_CE30848:
	#data loc_CE35284
loc_CE3084C:
	#data loc_8C2896B0
loc_CE30850:
	#data loc_8C034E8C
loc_CE30854:
	#data loc_8C04223A

;----------------------------------------------
loc_CE30858:
	mov.w @(0x11C,PC),r0
	mov 0x02,r2
	mov 0x08,r1
	mov.b r2,@(r0,r14)

loc_CE30860:
	add 0x49,r0
	mov 0x16,r5
	mov.b r1,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x10C,PC),r0
	mov 0x02,r2
	mov.l @(0x118,PC),r3
	mov.l r3,@(r0,r14)

loc_CE30872:
	mov.w @(0x106,PC),r0
	mov.b r2,@(r0,r14)

loc_CE30876:
	mov.w @(loc_CE3097E,pc),r0 ; r0 set to 0x1AC
	mov 0x09,r5 ; r5 set to 0x09
	mov.l @(loc_CE3098C,pc),r3 ; r3 set to 0x8C2896B0
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
	mov.w @(loc_CE30978,pc),r0 ; r0 set to 0x158
	mov.l @(loc_CE30990,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r12
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE308A8:
	mov.w @(loc_CE30980,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x03,r4 ; r4 set to 0x03
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_CE30994,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_CE308CE
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_CE308E8
	cmp/eq 0x02,r0
	bt loc_CE30904
	bra loc_CE30946
	nop

loc_CE308CE:
	mov.w @(loc_CE30978,pc),r0 ; r0 set to 0x158
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r4,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_CE3097A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30998,pc),r3 ; r3 set to 0xCE35288
	mov.l r3,@(r0,r14)
	mov.w @(loc_CE3097C,pc),r0 ; r0 set to 0x1A7
	bra loc_CE30946
	mov.b r13,@(r0,r14)

loc_CE308E8:
	mov.w @(loc_CE30978,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x04,r3 ; r3 set to 0x04
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_CE3097A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE3099C,pc),r3 ; r3 set to 0xCE3528C
	mov.l r3,@(r0,r14)
	bra loc_CE30942
	mov 0x01,r2

loc_CE30904:
	mov.w @(loc_CE30982,pc),r0 ; r0 set to 0x1FA
	mov.w @(loc_CE30984,pc),r3 ; r3 set to 0x800
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r3,r1
	bt/s loc_CE3092A
	mov 0x16,r5 ; r5 set to 0x16
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x1FB
	mov.b r0,@(0x06,r14)
	mov r13,r0 ; r0 ??? bc r13 is ???
	nop
	mov.b r0,@(0x07,r14)
	mov 0x13,r2 ; r2 set to 0x13
	mov.w @(loc_CE30978,pc),r0 ; r0 set to 0x158
	mov.b r4,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	bra loc_CE30936
	mov.b r2,@(r0,r14)

loc_CE3092A:
	mov.w @(0x4A,PC),r0
	mov 0x02,r2
	mov 0x05,r1
	mov.b r2,@(r0,r14)
	add 0x49,r0
	mov.b r1,@(r0,r14)

loc_CE30936:
	jsr @r12
	mov r14,r4
	mov.w @(0x3C,PC),r0
	mov 0x02,r2
	mov.l @(0x60,PC),r3
	mov.l r3,@(r0,r14)

loc_CE30942:
	mov.w @(0x36,PC),r0
	mov.b r2,@(r0,r14)

loc_CE30946:
	mov.w @(loc_CE3097E,pc),r0 ; r0 set to 0x1AC
	mov 0x08,r5 ; r5 set to 0x08
	mov.l @(loc_CE3098C,pc),r3 ; r3 set to 0x8C2896B0
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
	mov.w @(loc_CE30978,pc),r0 ; r0 set to 0x158
	mov.l @(loc_CE30990,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r12
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE30978:
	#data 0x0158
loc_CE3097A:
	#data 0x03F4
loc_CE3097C:
	#data 0x01A7
loc_CE3097E:
	#data 0x01AC
loc_CE30980:
	#data 0x01E8
loc_CE30982:
	#data 0x01FA
loc_CE30984:
	#data 0x0800
	#align4

loc_CE30988:
	#data loc_CE35284
loc_CE3098C:
	#data loc_8C2896B0
loc_CE30990:
	#data loc_8C034E8C
loc_CE30994:
	#data loc_8C04223A
loc_CE30998:
	#data loc_CE35288
loc_CE3099C:
	#data loc_CE3528C
loc_CE309A0:
	#data loc_CE35290

;==============================================
loc_CE309A4:
	mov.w @(loc_CE30A98,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_CE30AA8,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_CE309C8
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_CE309E4
	cmp/eq 0x02,r0
	bt loc_CE30A00
	bra loc_CE30A1E
	nop

loc_CE309C8:
	mov.w @(loc_CE30A9A,pc),r0 ; r0 set to 0x158
	mov 0x09,r3 ; r3 set to 0x09
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_CE30A9C,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30AAC,pc),r3 ; r3 set to 0xCE35288
	mov.l r3,@(r0,r14)
	mov.w @(loc_CE30A9E,pc),r0 ; r0 set to 0x1A7
	bra loc_CE30A1E
	mov.b r13,@(r0,r14)

loc_CE309E4:
	mov.w @(loc_CE30A9A,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x0A,r3 ; r3 set to 0x0A
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_CE30A9C,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE30AB0,pc),r3 ; r3 set to 0xCE3528C
	mov.l r3,@(r0,r14)
	bra loc_CE30A1A
	mov 0x01,r2

loc_CE30A00:
	mov.w @(0x96,PC),r0
	mov 0x02,r1
	mov 0x0B,r3
	mov.b r1,@(r0,r14)
	add 0x49,r0
	mov 0x16,r5
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x86,PC),r0
	mov 0x02,r2
	mov.l @(0x9C,PC),r3
	mov.l r3,@(r0,r14)

loc_CE30A1A:
	mov.w @(0x80,PC),r0
	mov.b r2,@(r0,r14)

loc_CE30A1E:
	mov.w @(loc_CE30AA0,pc),r0 ; r0 set to 0x1AC
	mov 0x0A,r5 ; r5 set to 0x0A
	mov.l @(loc_CE30AB8,pc),r3 ; r3 set to 0x8C2896B0
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
	mov.w @(loc_CE30A9A,pc),r0 ; r0 set to 0x158
	mov.l @(loc_CE30ABC,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r12
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE30A50:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE30AC0,pc),r3 ; r3 set to 0x8C052B4C
	jsr @r3
	mov r4,r14
	mov.w @(loc_CE30AA2,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE30A7E
	mov.w @(loc_CE30AA4,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE30A76
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE309A4
	mov.l @r15+,r14

loc_CE30A76:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE308A8
	mov.l @r15+,r14

loc_CE30A7E:
	mov.w @(loc_CE30AA4,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE30A90
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE307BE
	mov.l @r15+,r14

loc_CE30A90:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE306FC
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE30A98:
	#data 0x01E8
loc_CE30A9A:
	#data 0x0158
loc_CE30A9C:
	#data 0x03F4
loc_CE30A9E:
	#data 0x01A7
loc_CE30AA0:
	#data 0x01AC
loc_CE30AA2:
	#data 0x01FE
loc_CE30AA4:
	#data 0x01F9
	#align4

loc_CE30AA8:
	#data loc_8C04223A
loc_CE30AAC:
	#data loc_CE35288
loc_CE30AB0:
	#data loc_CE3528C
loc_CE30AB4:
	#data loc_CE35290
loc_CE30AB8:
	#data loc_8C2896B0
loc_CE30ABC:
	#data loc_8C034E8C
loc_CE30AC0:
	#data loc_8C052B4C

;==============================================
loc_CE30AC4:
	mov.w @(0xEA,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	mov.l @(0xEC,PC),r12
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_ce30ae8
	mov 0x00,r13
	cmp/eq 0x01,r0
	bt loc_ce30b14
	cmp/eq 0x02,r0
	bt loc_ce30b40
	bra loc_ce30b6e
	nop 

loc_CE30AE8:
	mov.w @(0xC8,PC),r0
	mov 0x0C,r3
	mov 0x14,r5
	mov.b r13,@(r0,r14)
	add 0x49,r0
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0xBA,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce30b08
	mov.w @(0xB4,PC),r0
	mov.l @(0xC0,PC),r3
	bra loc_ce30b0e
	mov.l r3,@(r0,r14)

loc_CE30B08:
	mov.w @(0xAC,PC),r0
	mov.l @(0xBC,PC),r1
	mov.l r1,@(r0,r14)

loc_CE30B0E:
	mov.w @(0xA8,PC),r0
	bra loc_ce30b6e
	mov.b r13,@(r0,r14)

loc_CE30B14:
	mov.w @(0x9C,PC),r0
	mov 0x01,r2
	mov 0x0D,r3
	mov.b r2,@(r0,r14)
	add 0x49,r0
	mov 0x15,r5
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x8C,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce30b36
	mov.w @(0x86,PC),r0
	mov.l @(0x98,PC),r3
	bra loc_ce30b3c
	mov.l r3,@(r0,r14)

loc_CE30B36:
	mov.w @(0x7E,PC),r0
	mov.l @(0x94,PC),r1
	mov.l r1,@(r0,r14)

loc_CE30B3C:
	bra loc_ce30b6a
	mov 0x01,r3

loc_CE30B40:
	mov.w @(0x70,PC),r0
	mov 0x02,r1
	mov 0x0E,r3
	mov.b r1,@(r0,r14)
	add 0x49,r0
	mov 0x16,r5
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x60,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce30b62
	mov.w @(0x5A,PC),r0
	mov.l @(0x74,PC),r3
	bra loc_ce30b68
	mov.l r3,@(r0,r14)

loc_CE30B62:
	mov.w @(0x52,PC),r0
	mov.l @(0x70,PC),r1
	mov.l r1,@(r0,r14)

loc_CE30B68:
	mov 0x02,r3

loc_CE30B6A:
	mov.w @(0x4C,PC),r0
	mov.b r3,@(r0,r14)

loc_CE30B6E:
	mov.w @(0x4A,PC),r0
	mov 0x0B,r5
	mov.l @(0x68,PC),r3
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
	mov.w @(0x22,PC),r0
	mov.l @(0x4C,PC),r2
	mov.b @(r0,r14),r6
	jsr @r2
	mov r14,r4
	mov.w @(0x22,PC),r0
	mov.b @(r0,r14),r0
	tst 0x0F,r0
	bt loc_ce30ba8
	mov.w @(0x1A,PC),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)

loc_CE30BA8:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE30BB2:
	#data 0x01E8
loc_CE30BB4:
	#data 0x0158
loc_CE30BB6:
	#data 0x01FC
loc_CE30BB8:
	#data 0x03F4
loc_CE30BBa:
	#data 0x01A7
loc_CE30BBc:
	#data 0x01AC
loc_CE30BBe:
	#data 0x01D6
	#align4

loc_CE30BC0:
	#data loc_8C04223A
loc_CE30BC4:
	#data loc_CE35294
loc_CE30BC8:
	#data loc_CE352AC
loc_CE30BCC:
	#data loc_CE35298
loc_CE30BD0:
	#data loc_CE352B0
loc_CE30BD4:
	#data loc_CE3529C
loc_CE30BD8:
	#data loc_CE352B4
loc_CE30BDC:
	#data loc_8C2896B0
loc_CE30BE0:
	#data loc_8C034E8C

;==============================================
loc_CE30BE4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xD8,PC),r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	mov.l @(0xDC,PC),r12
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_ce30c0a
	mov 0x00,r13
	cmp/eq 0x01,r0
	bt loc_ce30c36
	cmp/eq 0x02,r0
	bt loc_ce30c66
	bra loc_ce30cf6
	nop 

loc_CE30C0A:
	mov.w @(0xB8,PC),r0
	mov 0x0F,r3
	mov 0x14,r5
	mov.b r13,@(r0,r14)
	add 0x49,r0
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0xAA,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce30c2a
	mov.w @(0xA4,PC),r0
	mov.l @(0xB0,PC),r3
	bra loc_ce30c30
	mov.l r3,@(r0,r14)

loc_CE30C2A:
	mov.w @(0x9C,PC),r0
	mov.l @(0xAC,PC),r1
	mov.l r1,@(r0,r14)

loc_CE30C30:
	mov.w @(0x98,PC),r0
	bra loc_ce30cf6
	mov.b r13,@(r0,r14)

loc_CE30C36:
	mov.w @(0x8C,PC),r0
	mov 0x01,r2
	mov 0x10,r3
	mov.b r2,@(r0,r14)
	add 0x49,r0
	mov 0x15,r5
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x7C,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce30c58
	mov.w @(0x76,PC),r0
	mov.l @(0x8C,PC),r3
	bra loc_ce30c5e
	mov.l r3,@(r0,r14)

loc_CE30C58:
	mov.w @(0x6E,PC),r0
	mov.l @(0x88,PC),r1
	mov.l r1,@(r0,r14)

loc_CE30C5E:
	mov.w @(0x6A,PC),r0
	mov 0x01,r3
	bra loc_ce30cf6
	mov.b r3,@(r0,r14)

loc_CE30C66:
	mov.w @(0x64,PC),r0
	mov.w @(0x64,PC),r2
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt.s loc_ce30ca4
	mov 0x02,r11
	mov r11,r0
	nop 
	mov.b r0,@(0x6,r14)
	mov r13,r0
	nop 
	mov.b r0,@(0x7,r14)
	mov 0x05,r3
	mov.w @(0x42,PC),r0
	mov 0x12,r1
	fldi0 fr4
	mov.b r13,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x28,PC),r0
	mov.b r3,@(r0,r14)
	add 0x49,r0
	bra loc_ce30cae
	mov.b r1,@(r0,r14)

loc_CE30CA4:
	mov.w @(0x1E,PC),r0
	mov 0x11,r3
	mov.b r11,@(r0,r14)
	add 0x49,r0
	mov.b r3,@(r0,r14)

loc_CE30CAE:
	mov 0x16,r5
	jsr @r12
	mov r14,r4
	mov.w @(0x10,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce30cec
	mov.w @(0xA,PC),r0
	mov.l @(0x28,PC),r3
	bra loc_ce30cf2
	mov.l r3,@(r0,r14)

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE30Cc4:
	#data 0x01E8
loc_CE30Cc6:
	#data 0x0158
loc_CE30Cc8:
	#data 0x01FC
loc_CE30Cca:
	#data 0x03F4
loc_CE30Ccc:
	#data 0x01A7
loc_CE30Cce:
	#data 0x01FA
loc_CE30Cd0:
	#data 0x1000
	#align4

loc_CE30CD4:
	#data loc_8C04223A
loc_CE30CD8:
	#data loc_CE352A0
loc_CE30CDC:
	#data loc_CE352B8
loc_CE30CE0:
	#data loc_CE352A4
loc_CE30CE4:
	#data loc_CE352BC
loc_CE30CE8:
	#data loc_CE352A8

;----------------------------------------------
loc_CE30CEC:
	mov.w @(0xF2,PC),r0
	mov.l @(0x104,PC),r1
	mov.l r1,@(r0,r14)

loc_CE30CF2:
	mov.w @(0xEE,PC),r0
	mov.b r11,@(r0,r14)

loc_CE30CF6:
	mov.w @(0xEC,PC),r0
	mov 0x0C,r5
	mov.l @(0xFC,PC),r3
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
	mov.w @(0xCE,PC),r0
	mov.l @(0xE0,PC),r2
	mov.b @(r0,r14),r6
	jsr @r2
	mov r14,r4
	mov.w @(0xC6,PC),r0
	mov.b @(r0,r14),r0
	tst 0xF0,r0
	bt loc_ce30d30
	mov.w @(0xBE,PC),r0
	mov.b @(r0,r14),r2
	add 0xF0,r2
	mov.b r2,@(r0,r14)

loc_CE30D30:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE30D3C:
	mov.w @(0xAC,PC),r5
	mov 0x19,r0
	add r4,r5
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_ce30d66
	mov 0x00,r3
	fldi0 fr3
	mov.b r3,@(r0,r5)
	mov 0x60,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bf.s loc_ce30d5a
	fldi0 fr4
	fmov fr4,@(r0,r4)

loc_CE30D5A:
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)

loc_CE30D66:
	mov.w @(0x84,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30d74
	bra loc_ce30be4
	nop 

loc_CE30D74:
	bra loc_ce30ac4
	nop 

loc_CE30D78:
	mov.w @(0x70,PC),r5
	mov 0x19,r0
	add r4,r5
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_ce30da2
	mov 0x00,r3
	fldi0 fr3
	mov.b r3,@(r0,r5)
	mov 0x60,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bf.s loc_ce30d96
	fldi0 fr4
	fmov fr4,@(r0,r4)

loc_CE30D96:
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)

loc_CE30DA2:
	mov.w @(0x48,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_ce30db2
	mov.w @(0x3C,PC),r0
	mov.b @(r0,r4),r0
	tst 0x0F,r0
	bf loc_ce30dc2

loc_CE30DB2:
	mov.w @(0x38,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_ce30dc6
	mov.w @(0x2C,PC),r0
	mov.b @(r0,r4),r0
	tst 0xF0,r0
	bt loc_ce30dc6


loc_CE30DC2:
	bra loc_ce30d3c
	nop 

loc_CE30DC6:
	rts 
	nop 

;==============================================
loc_CE30DCA:
	bra loc_CE30A50
	nop

;==============================================
loc_CE30DCE:
	mov.w @(loc_CE30DF0,pc),r0 ; r0 set to 0x1FF
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_CE30E04,pc),r0 ; r0 set to 0xCE353C8
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE30DE2:
	#data 0x03F4
loc_CE30DE4:
	#data 0x01A7
loc_CE30DE6:
	#data 0x01AC
loc_CE30DE8:
	#data 0x0158
loc_CE30DEA:
	#data 0x01D6
loc_CE30DEC:
	#data 0x02A4
loc_CE30DEE:
	#data 0x01FE
loc_CE30DF0:
	#data 0x01FF
	#align4

loc_CE30DF4:
	#data loc_CE352C0
loc_CE30DF8:
	#data loc_8C2896B0
loc_CE30DFC:
	#data loc_8C034E8C
loc_CE30E00:
	#data 0xBF4DB6DB
loc_CE30E04:
	#data loc_CE353C8

;==============================================
loc_CE30E08:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_CE30F08,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE30E22
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_CE30F0C,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_CE30E22:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_CE30E2A:
	mov.w @(loc_CE30EFE,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_CE30E46
	cmp/eq 0x01,r0
	bt loc_CE30E84
	cmp/eq 0x02,r0
	bt loc_CE30E84
	bra loc_CE30E9A
	nop

loc_CE30E46:
	mov.l @(loc_CE30F08,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_CE30E90
	mov.w @(loc_CE30F00,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_CE30E9A
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r4,@(r0,r14)
	add 0x60,r0 ; r0 set to 0x1A1
	mov 0x1B,r3 ; r3 set to 0x1B
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_CE30F10,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	bra loc_CE30E9A
	mov.w r1,@(r0,r2)

loc_CE30E84:
	mov.l @(0x80,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30e9a

loc_CE30E90:
	lds.l @r15+,pr
	mov.l @(loc_CE30F0C,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE30E9A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE30EA0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x60,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30ef8
	mov.b @(0x7,r14),r0
	mov 0x02,r3
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov.w @(0x46,PC),r0
	mov.b r3,@(r0,r14)
	mova @(0x54,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0x4C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x48,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x26,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_ce30eec
	mov 0x04,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE30EEC:
	lds.l @r15+,pr
	mov.l @(0x30,PC),r3
	mov 0x08,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE30EF8:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE30EFE:
	#data 0x01E8
loc_CE30F00:
	#data 0x0141
loc_CE30F02:
	#data 0x01F9
loc_CE30F04:
	#data 0x0130
	#align4

loc_CE30F08:
	#data loc_8C034DEE
loc_CE30F0C:
	#data loc_8C051648
loc_CE30F10:
	#data loc_8C2896B0
loc_CE30F14:
	#data 0x40555555
loc_CE30F18:
	#data 0x40892492
loc_CE30F1c:
	#data 0xBEAB6DB6
loc_CE30F20:
	#data loc_8C034E8C

;==============================================
loc_CE30F24:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x10C,PC),r3
	jsr @r3
	mov 0x00,r13
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30f72
	mov.b @(0x7,r14),r0
	mov.l @(0x104,PC),r3
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0xEA,PC),r0
	mov r14,r4
	fldi0 fr4
	mov 0x05,r6
	mov.b r13,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x08,r5
	mov.w @(0xD0,PC),r0
	mov.l @(0xE0,PC),r3
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE30F72:
	mov.w @(0xC0,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce30fa2
	mov.b @(r0,r14),r3
	add 0x60,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0xBC,PC),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x94,PC),r0
	mov.b r13,@(r0,r14)

loc_CE30FA2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE30FAA:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x8C,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30fc4
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(0x8C,PC),r3
	jmp @r3
	lds.l @r15+,pr

loc_CE30FC4:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	nop 

;==============================================
loc_CE30FCC:
	mov.w @(0x68,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_ce30fea
	cmp/eq 0x01,r0
	bt loc_ce30fea
	cmp/eq 0x02,r0
	bf loc_ce3102c
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_ce31000

loc_CE30FEA:
	mov.l @(0x50,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce3102c
	lds.l @r15+,pr
	mov.l @(0x50,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE31000:
	mov.b @(0x7,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_ce31014
	cmp/eq 0x01,r0
	bt loc_ce3101c
	cmp/eq 0x02,r0
	bt loc_ce31024
	bra loc_ce3102c
	nop 

loc_CE31014:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30ea0
	mov.l @r15+,r14

loc_CE3101C:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30f24
	mov.l @r15+,r14

loc_CE31024:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30faa
	mov.l @r15+,r14

loc_CE3102C:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE31032:
	#data 0x01F9
loc_CE31034:
	#data 0x041C
loc_CE31036:
	#data 0x0141
loc_CE31038:
	#data 0x01E8
	#align4

loc_CE3103c:
	#data loc_8C034DEE
loc_CE31040:
	#data loc_8C0511B4
loc_CE31044:
	#data loc_8C034E8C
loc_CE31048:
	#data loc_8C2896B0
loc_CE3104C:
	#data loc_8C051648

;==============================================
loc_CE31050:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_CE31158,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE3106A
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_CE3115C,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_CE3106A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_CE31072:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_CE31160,pc),r3 ; r3 set to 0x8C052C84
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
	mov.w @(loc_CE31152,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE310DA
	mov.w @(loc_CE31154,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE310D2
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE31050
	mov.l @r15+,r14

loc_CE310D2:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE30FCC
	mov.l @r15+,r14

loc_CE310DA:
	mov.w @(loc_CE31154,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE310EC
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE30E2A
	mov.l @r15+,r14

loc_CE310EC:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE30E08
	mov.l @r15+,r14

loc_CE310F4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce3110a
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov r14,r4

loc_CE3110A:
	mov.l @(0x5C,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce31120
	lds.l @r15+,pr
	mov.l @(0x50,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE31120:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE31126:
	mov.b @(0x7,r4),r0
	tst r0,r0
	bf loc_ce3114c
	mov.b @(0x7,r4),r0
	fldi0 fr3
	add 0x01,r0
	mov.b r0,@(0x7,r4)
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov 0x60,r0
	fldi1 fr3
	fadd fr3,fr3
	fmov @(r0,r4),fr2
	fdiv fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x28,PC),r0
	fmov @r0,fr2
	mov 0x6C,r0
	fmov fr2,@(r0,r4)

loc_CE3114C:
	mov.l @(0x8,PC),r3
	jmp @r3
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE31152:
	#data 0x01FE
loc_CE31154:
	#data 0x01F9
	#align4

loc_CE31158:
	#data loc_8C034DEE
loc_CE3115C:
	#data loc_8C051648
loc_CE31160:
	#data loc_8C052C84
loc_CE31164:
	#data loc_8C05176E
loc_CE31168:
	#data loc_8C052CE2
loc_CE3116C:
	#data loc_8C052DAC
loc_CE31170:
	#data 0xBECDB6DB

;==============================================
loc_CE31174:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov.l @(loc_CE31288,pc),r13 ; r13 set to 0x8C034DEE
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_CE31192
	cmp/eq 0x01,r0
	bt loc_CE311C8
	cmp/eq 0x02,r0
	bt loc_CE3125A
	bra loc_CE31270
	nop

loc_CE31192:
	jsr @r13
	mov r14,r4
	mov.w @(loc_CE31278,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	tst 0x01,r0
	bt loc_CE31270
	mov.w @(loc_CE31278,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	mov r0,r3 ; r3 set to 0x141
	add 0xBD,r3 ; r3 set to 0xFE
	and r3,r2
	mov.b r2,@(r0,r14)
	mov.b @(0x07,r14),r0
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x07,r14)
	mov.w @(loc_CE3127A,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_CE311BE
	mova @(loc_CE3128C,pc),r0  ; r0 set to 0xCE3128C
	bra loc_CE311C2
	fmov.s @r0,fr3

loc_CE311BE:
	mova @(loc_CE31290,pc),r0  ; r0 init to 0xCE31290
	fmov.s @r0,fr3

loc_CE311C2:
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	bra loc_CE31270
	fmov.s fr3,@(r0,r14)

loc_CE311C8:
	jsr @r13
	mov r14,r4
	mov.w @(loc_CE3127C,pc),r0 ; r0 set to 0x19E
	mov.b @(r0,r14),r2
	tst r2,r2
	bf/s loc_CE3121C
	fldi0 fr4
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3
	mov.w @(loc_CE3127E,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf loc_CE31270
	mov.b @(0x07,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0 ; r0 set to 0x41D
	mov.b r0,@(0x07,r14)
	mov.w @(loc_CE3127E,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_CE31280,pc),r0 ; r0 set to 0x1F9
	mov.b r3,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	mov.l @(loc_CE31294,pc),r3 ; r3 set to 0x8C0511B4
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE31298,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x03,r6 ; r6 set to 0x03
	mov 0x01,r5 ; r5 set to 0x01
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE3121C:
	mova @(0x7C,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce31234
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE31234:
	mov 0x68,r0
	mov r14,r4
	fmov fr4,@(r0,r14)
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x01,r3
	fmov fr3,@(r0,r14)
	mova @(0x5C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x34,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(0x54,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE3125A:
	jsr @r13
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE31270
	lds.l @r15+,pr
	mov.l @(loc_CE312AC,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE31270:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE31278:
	#data 0x0141
loc_CE3127A:
	#data 0x01FC
loc_CE3127C:
	#data 0x019E
loc_CE3127E:
	#data 0x041C
loc_CE31280:
	#data 0x01F9
loc_CE31282:
	#data 0x01D2
loc_CE31284:
	#data 0x01D3
	#align4

loc_CE31288:
	#data loc_8C034DEE
loc_CE3128C:
	#data 0xC1CDB6DB
loc_CE31290:
	#data 0xC2009249
loc_CE31294:
	#data loc_8C0511B4
loc_CE31298:
	#data loc_8C034E8C
loc_CE3129c:
	#data 0x40BAAAAA
loc_CE312A0:
	#data 0x41700000
loc_CE312A4:
	#data 0xBF892492
loc_CE312A8:
	#data loc_8C05177A
loc_CE312AC:
	#data loc_8C051648

;==============================================
loc_CE312B0:
	mov.w @(loc_CE31384,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_CE312F0
	mov.b @(0x06,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_CE312D0
	cmp/eq 0x02,r0
	bt loc_CE312D8
	bra loc_CE312F0
	nop

loc_CE312D0:
	bsr loc_CE31126
	mov r14,r4
	bra loc_CE312E0
	nop

loc_CE312D8:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE31174
	mov.l @r15+,r14

loc_CE312E0:
	mov.l @(loc_CE3138C,pc),r3 ; r3 set to 0x8C052CE2
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE3130E
	bra loc_CE31318
	nop

loc_CE312F0:
	mov.l @(0x9C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31302
	mov.l @(0x94,PC),r3
	jsr @r3
	mov r14,r4

loc_CE31302:
	mov.l @(0x88,PC),r2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce31318

loc_CE3130E:
	lds.l @r15+,pr
	mov.l @(loc_CE31398,pc),r2 ; r2 set to 0x8C052DAC
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE31318:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3131E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE3139C,pc),r3 ; r3 set to 0x8C04FEA8
	jsr @r3
	mov r4,r14
	mov.l @(loc_CE313A0,pc),r2 ; r2 set to 0x8C050048
	jsr @r2
	mov r14,r4
	mov.w @(loc_CE31386,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE31340
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE312B0
	mov.l @r15+,r14

loc_CE31340:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE310F4
	mov.l @r15+,r14

loc_CE31348:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE313A4,pc),r3 ; r3 set to 0x8C050084
	jsr @r3
	mov r4,r14
	mov.l @(loc_CE313A8,pc),r2 ; r2 set to 0x8C04FF88
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE3131E
	mov.l @r15+,r14

loc_CE31360:
	sts.l pr,@-r15
	mov.l @(loc_CE313AC,pc),r3 ; r3 set to 0x8C0511E2
	jsr @r3
	mov.l r4,@-r15
	mov.l @r15,r4
	add 0x04,r15
	bra loc_CE31072
	lds.l @r15+,pr

loc_CE31370:
	mov.w @(loc_CE31388,pc),r0 ; r0 set to 0x1FF
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_CE313B0,pc),r0 ; r0 set to 0xCE353D8
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE31384:
	#data 0x01E8
loc_CE31386:
	#data 0x01FE
loc_CE31388:
	#data 0x01FF
	#align4

loc_CE3138C:
	#data loc_8C052CE2
loc_CE31390:
	#data loc_8C034DEE
loc_CE31394:
	#data loc_8C05176E
loc_CE31398:
	#data loc_8C052DAC
loc_CE3139C:
	#data loc_8C04FEA8
loc_CE313A0:
	#data loc_8C050048
loc_CE313A4:
	#data loc_8C050084
loc_CE313A8:
	#data loc_8C04FF88
loc_CE313AC:
	#data loc_8C0511E2
loc_CE313B0:
	#data loc_CE353D8

;==============================================
loc_CE313B4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_ce3141a
	mov.l @(0x128,PC),r3
	jsr @r3
	mov r14,r4
	mov.b @(0x6,r14),r0
	mov 0x05,r5
	mov.l @(0x124,PC),r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x104,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce3141a
	mov.w @(0xFE,PC),r0
	mov 0x36,r1
	mov 0x01,r3
	mov.b r1,@(r0,r14)
	add 0x58,r0
	mov.b r3,@(r0,r14)
	mov 0x14,r5
	mov.l @(0x108,PC),r3
	mov 0x09,r6
	jsr @r3
	mov r14,r4
	mov.w @(0xEA,PC),r0
	mov 0x00,r4
	mov.l @(0x100,PC),r3
	mov 0x16,r5
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0xE4,PC),r2
	jsr @r2
	mov r14,r4

loc_CE3141A:
	mov.w @(0xC4,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_ce3142a
	mov.l @(0xD8,PC),r2
	jsr @r2
	mov r14,r4

loc_CE3142A:
	mov 0x5C,r1
	mov.l @(0xD4,PC),r3
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
	mov.l @(0x9C,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce3147e
	lds.l @r15+,pr
	mov.l @(0x94,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE3147E:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
P03_FwdDash:
	mov r4,r3
	mov.l @(loc_CE31510,pc),r1 ; r1 set to 0xCE353E8
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE31496:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE314E4,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.l @(loc_CE31508,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE314E6,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_CE31536
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
	mov 0x10,r0 ; r0 set to 0x10
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_CE314E8,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_CE31518
	mova @(loc_CE31514,pc),r0  ; r0 set to 0xCE31514
	bra loc_CE3151C
	fmov.s @r0,fr3

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE314DC:
	#data 0x01FE
loc_CE314DE:
	#data 0x01A1
loc_CE314E0:
	#data 0x01AC
loc_CE314E2:
	#data 0x01FF
loc_CE314E4:
	#data 0x02A4
loc_CE314E6:
	#data 0x0141
loc_CE314E8:
	#data 0x01D2
	#align4

loc_CE314EC:
	#data loc_8C052B4C
loc_CE314F0:
	#data loc_8C056DE4
loc_CE314F4:
	#data loc_8C034E8C
loc_CE314F8:
	#data loc_8C2896B0
loc_CE314FC:
	#data loc_8C04223A
loc_CE31500:
	#data loc_8C0511E2
loc_CE31504:
	#data loc_8C052C84
loc_CE31508:
	#data loc_8C034DEE
loc_CE3150C:
	#data loc_8C051648
loc_CE31510:
	#data loc_CE353E8
loc_CE31514:
	#data 0x41555555

;----------------------------------------------
loc_CE31518:
	mova @(loc_CE31688,pc),r0  ; r0 init to 0xCE31688
	fmov.s @r0,fr3

loc_CE3151C:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
	mov r14,r4
	fmov.s fr3,@(r0,r14)
	mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1C
	mov.l @r15,r3
	mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
	mov 0x1F,r5 ; r5 set to 0x1F, r5 set to 0x1F
	mov.b r2,@(r0,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE3168C,pc),r3 ; r3 set to 0x8C042008, r3 set to 0x8C042008
	jmp @r3
	mov.l @r15+,r14

loc_CE31536:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3153E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE31690,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x5F
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	tst r0,r0
	bf loc_CE315B6
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_CE3167E,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE315A0
	mova @(loc_CE31694,pc),r0  ; r0 set to 0xCE31694
	bra loc_CE315A4
	fmov.s @r0,fr3

loc_CE315A0:
	mova @(loc_CE31698,pc),r0  ; r0 init to 0xCE31698
	fmov.s @r0,fr3

loc_CE315A4:
	mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
	mov.l @(loc_CE3169C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	mov r14,r4
	fmov.s fr3,@(r0,r14)
	mov r6,r5 ; r5 set to 0x02, r5 set to 0x02
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE315B6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE315BC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	mov 0x34,r0 ; r0 set to 0x34
	mov.w @(loc_CE31680,pc),r3 ; r3 set to 0x2A4
	add r14,r1 ; r1 ??? bc r14 is ???
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	fmov.s @r1,fr3
	mov 0x68,r1 ; r1 set to 0x68
	fmov.s @(r0,r14),fr2
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
	mov 0x6C,r1 ; r1 set to 0x6C
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.l @(loc_CE31690,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE3163C
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov 0x1C,r0 ; r0 set to 0x1C
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x2B,r5 ; r5 set to 0x2B
	mov.b r2,@(r0,r3)
	mov.l @(loc_CE3168C,pc),r3 ; r3 set to 0x8C042008
	jsr @r3
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE316A0,pc),r2 ; r2 set to 0x8C051648
	jmp @r2
	mov.l @r15+,r14

loc_CE3163C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE31644:
	mov r4,r3
	mov.l @(loc_CE316A4,pc),r1 ; r1 set to 0xCE353F4
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE31656:
	mov.b @(0x06,r4),r0
	mov 0x0A,r6 ; r6 set to 0x0A
	mov.w @(loc_CE31680,pc),r5 ; r5 set to 0x2A4
	mov 0x01,r3 ; r3 set to 0x01
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	add r4,r5 ; r5 ??? bc r4 is ???
	mov.w @(loc_CE31682,pc),r0 ; r0 set to 0x1F2
	mov.b r6,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1F3
	mov.b r6,@(r0,r4)
	mov 0x19,r0 ; r0 set to 0x19
	mov.b r3,@(r0,r5)
	mov 0x04,r6 ; r6 set to 0x04
	mov.w @(loc_CE31684,pc),r0 ; r0 set to 0x1FA
	mov.l @(loc_CE3169C,pc),r3 ; r3 set to 0x8C034E8C
	mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???
	mov.w r0,@(0x0A,r5)
	jmp @r3
	mov 0x02,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE3167E:
	#data 0x01D2
loc_CE31680:
	#data 0x02A4
loc_CE31682:
	#data 0x01F2
loc_CE31684:
	#data 0x01FA
	#align4

loc_CE31688:
	#data 0xC1555555
loc_CE3168C:
	#data loc_8C042008
loc_CE31690:
	#data loc_8C034DEE
loc_CE31694:
	#data 0xBF555555
loc_CE31698:
	#data 0x3F555555
loc_CE3169C:
	#data loc_8C034E8C
loc_CE316A0:
	#data loc_8C051648
loc_CE316A4:
	#data loc_CE353F4

;==============================================
loc_CE316A8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0xD0,PC),r3
	mov.w @(0xC2,PC),r13
	jsr @r3
	add r14,r13
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31770
	mov.b @(0x6,r14),r0
	mov 0x01,r3
	mov 0x1F,r5
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x1C,r0
	mov.b r3,@(r0,r13)
	mov.l @(0xB8,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x20,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0xA0,PC),r0
	mov.w @(r0,r14),r4
	mov.w @(0x9E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce316e6
	mov.w @(0xA,r13),r0
	mov r0,r4

loc_CE316E6:
	mov.w @(0x94,PC),r3
	extu.w r4,r13
	and r3,r13
	cmp/pz r13
	bt loc_ce316f4
	mov.w @(0x8C,PC),r2
	add r2,r13

loc_CE316F4:
	mov 0xF4,r2
	shad r2,r13
	mov.l @(0x98,PC),r2
	extu.w r13,r4
	shll2 r4
	shll2 r4
	add r2,r4
	mov.l @r4,r1
	mova @(0x84,PC),r0
	fmov @r0,fr5
	mova @(0x84,PC),r0
	lds r1,fpul
	fmov @r0,fr4
	mov 0x5C,r0
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	mov.l @(0x4,r4),r1
	lds r1,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mova @(0x70,PC),r0
	mov.l @(0x8,r4),r1
	fmov @r0,fr5
	lds r1,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	mov.l @(0xC,r4),r1
	lds r1,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x38,PC),r0
	mov.w @(r0,r14),r1
	tst r1,r1
	bt.s loc_ce31760
	mov r13,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE31760:
	lds.l @r15+,pr
	mov.l @(0x38,PC),r3
	add 0x05,r6
	mov 0x02,r5
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE31770:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce31778:
	#data 0x02A4
loc_ce3177a:
	#data 0x034A
loc_ce3177c:
	#data 0x0525
loc_ce3177e:
	#data 0x3000
loc_ce31780:
	#data 0x0FFF
loc_ce31782:
	#data 0x0130
	#align4

loc_CE31784:
	#data loc_8C034DEE
loc_CE31788:
	#data loc_8C042008
loc_CE3178C:
	#data 0x3FD55555
loc_CE31790:
	#data 0x47800000
loc_CE31794:
	#data loc_CE35400
loc_CE31798:
	#data 0x40092492
loc_CE3179C:
	#data loc_8C034E8C

;==============================================
loc_CE317A0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x148,PC),r3
	mov.w @(0x13E,PC),r13
	jsr @r3
	add r14,r13
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
	mov.w @(0x102,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_ce317fc
	mov.w @(0xF6,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_CE317FC:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_ce3182c
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x1C,r0
	mov 0x00,r4
	mov.l @(0xE4,PC),r3
	mov.b r4,@(r0,r13)
	mov 0x19,r0
	mov 0x2B,r5
	mov.b r4,@(r0,r13)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xD8,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE3182C:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
P03_BckDash:
	mov r4,r3
	mov.l @(loc_CE31900,pc),r1 ; r1 set to 0xCE35430
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE31846:
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r4)
	mov.b @(0x06,r4),r0
	mov.w @(loc_CE318EC,pc),r5 ; r5 set to 0x2A4
	add 0x01,r0 ; r0 set to 0x6D
	mov.b r0,@(0x06,r4)
	mov 0x10,r0 ; r0 set to 0x10
	mov.w r0,@(0x1C,r4)
	mov.w @(loc_CE318F0,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r4),r3
	tst r3,r3
	bt/s loc_CE31874
	add r4,r5 ; r5 ??? bc r4 is ???
	mova @(loc_CE31904,pc),r0  ; r0 set to 0xCE31904
	bra loc_CE31878
	fmov.s @r0,fr3

loc_CE31874:
	mova @(loc_CE31908,pc),r0  ; r0 init to 0xCE31908
	fmov.s @r0,fr3

loc_CE31878:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
	fmov.s fr3,@(r0,r4)
	mov 0x1C,r0 ; r0 set to 0x1C, r0 set to 0x1C
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	mov.b r3,@(r0,r5)
	mov.l @(loc_CE318F8,pc),r3 ; r3 set to 0x8C042008, r3 set to 0x8C042008
	jmp @r3
	mov 0x1F,r5

loc_CE31888:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_CE318F4,pc),r3 ; r3 set to 0x8C034DEE
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x5F
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	tst r0,r0
	bf loc_CE31926
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_CE318F0,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE31910
	mova @(loc_CE3190C,pc),r0  ; r0 set to 0xCE3190C
	bra loc_CE31914
	fmov.s @r0,fr3

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE318EC:
	#data 0x02A4
loc_CE318EE:
	#data 0x041C
loc_CE318F0:
	#data 0x01D2
	#align4

loc_CE318F4:
	#data loc_8C034DEE
loc_CE318F8:
	#data loc_8C042008
loc_CE318FC:
	#data loc_8C05176E
loc_CE31900:
	#data loc_CE35430
loc_CE31904:
	#data 0xC13AAAAA
loc_CE31908:
	#data 0x413AAAAA
loc_CE3190C:
	#data 0x3F555555

;----------------------------------------------
loc_CE31910:
	mova @(loc_CE31A38,pc),r0  ; r0 init to 0xCE31A38
	fmov.s @r0,fr3

loc_CE31914:
	mov.l @(loc_CE31A3C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	mov r14,r4
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03
	mov 0x02,r5 ; r5 set to 0x02, r5 set to 0x02
	jmp @r3
	mov.l @r15+,r14

loc_CE31926:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3192C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	mov 0x34,r0 ; r0 set to 0x34
	mov.w @(loc_CE31A32,pc),r3 ; r3 set to 0x2A4
	add r14,r1 ; r1 ??? bc r14 is ???
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	fmov.s @r1,fr3
	mov 0x68,r1 ; r1 set to 0x68
	fmov.s @(r0,r14),fr2
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
	mov 0x6C,r1 ; r1 set to 0x6C
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.l @(loc_CE31A40,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE319AC
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov 0x1C,r0 ; r0 set to 0x1C
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x2B,r5 ; r5 set to 0x2B
	mov.b r2,@(r0,r3)
	mov.l @(loc_CE31A44,pc),r3 ; r3 set to 0x8C042008
	jsr @r3
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE31A48,pc),r2 ; r2 set to 0x8C051648
	jmp @r2
	mov.l @r15+,r14

loc_CE319AC:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
P03_FMIntro:
	mov r4,r3
	mov.l @(loc_CE31A4C,pc),r1 ; r1 set to 0xCE3543C
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE319C6:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x01,r3 ; r3 set to 0x01
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x00,r5 ; r5 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_CE31A34,pc),r0 ; r0 set to 0x12C
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE31A50,pc),r3 ; r3 set to 0x8C0BDF70
	jsr @r3
	mov r14,r4
	mov 0x25,r0 ; r0 set to 0x25
	mov.l @(loc_CE31A58,pc),r3 ; r3 set to 0x8C03544C
	mov.b @(r0,r14),r6
	mov 0x01,r7 ; r7 set to 0x01
	mov.l @(loc_CE31A54,pc),r0 ; r0 set to 0xCE35234
	mov 0x02,r5 ; r5 set to 0x02
	extu.b r6,r6
	shll2 r6
	mov.l @(r0,r6),r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE31A3C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x00,r6 ; r6 set to 0x00
	mov 0x12,r5 ; r5 set to 0x12
	jmp @r2
	mov.l @r15+,r14

loc_CE31A04:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE31A40,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE31A2C
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_CE31A3C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x01,r6 ; r6 set to 0x01
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.w r0,@(0x1C,r14)
	mov 0x12,r5 ; r5 set to 0x12
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE31A2C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE31A32:
	#data 0x02A4
loc_CE31A34:
	#data 0x012C
	#align4

loc_CE31A38:
	#data 0xBF555555
loc_CE31A3C:
	#data loc_8C034E8C
loc_CE31A40:
	#data loc_8C034DEE
loc_CE31A44:
	#data loc_8C042008
loc_CE31A48:
	#data loc_8C051648
loc_CE31A4C:
	#data loc_CE3543C
loc_CE31A50:
	#data loc_8C0BDF70
loc_CE31A54:
	#data loc_CE35234
loc_CE31A58:
	#data loc_8C03544C

;==============================================
loc_CE31A5C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE31B8C,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.w @(loc_CE31B7C,pc),r0 ; r0 set to 0x140
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_CE31ACA
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14)
	mov 0x25,r0 ; r0 set to 0x25
	mov.b @(r0,r14),r6
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_CE31B7E,pc),r0 ; r0 set to 0x14B
	mov 0x01,r7 ; r7 set to 0x01
	extu.b r6,r6
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	shll2 r6
	mov.l @(loc_CE31B90,pc),r0 ; r0 set to 0xCE35234
	extu.b r3,r3
	mov.l @(r0,r6),r6
	add r3,r6
	mov.l @(loc_CE31B94,pc),r3 ; r3 set to 0x8C03544C
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0xCE35233
	mov.w r0,@(0x1C,r14)
	add 0x01,r0 ; r0 set to 0xCE35234
	exts.w r0,r0 ; r0 ??
	tst r0,r0
	bf loc_CE31ACA
	mov 0x25,r0 ; r0 set to 0x25
	mov.l @(loc_CE31B94,pc),r3 ; r3 set to 0x8C03544C
	mov.b @(r0,r14),r6
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_CE31B90,pc),r0 ; r0 set to 0xCE35234
	mov 0x01,r7 ; r7 set to 0x01
	extu.b r6,r6
	shll2 r6
	mov.l @(r0,r6),r6
	add 0x04,r6
	jsr @r3
	mov r14,r4
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_CE31B98,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x02,r6 ; r6 set to 0x02
	add 0x01,r0 ; r0 set to 0xCE35235
	mov.b r0,@(0x06,r14)
	mov 0x12,r5 ; r5 set to 0x12
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE31ACA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE31AD0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE31B8C,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE31AF2
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_CE31B9C,pc),r3 ; r3 set to 0x8C035162
	mov 0x00,r5 ; r5 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE31AF2:
	mov.w @(loc_CE31B7C,pc),r0 ; r0 set to 0x140
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_CE31B2E
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x60,r0
	bf loc_CE31B0C
	mov.l @(loc_CE31B9C,pc),r2 ; r2 set to 0x8C035162
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r2
	mov r14,r4
	bra loc_CE31B28
	nop

loc_CE31B0C:
	mov 0x25,r0
	mov.b @(r0,r14),r6
	mov 0x00,r5
	mov.w @(0x66,PC),r0
	mov 0x01,r7
	extu.b r6,r6
	mov.b @(r0,r14),r3
	shll2 r6
	mov.l @(0x70,PC),r0
	mov.l @(r0,r6),r6
	add r3,r6
	mov.l @(0x70,PC),r3
	jsr @r3
	mov r14,r4

loc_CE31B28:
	mov.w @(0x50,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_CE31B2E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE31B34:
	mov r4,r3
	mov.l @(loc_CE31BA0,pc),r1 ; r1 set to 0xCE3544C
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE31B46:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_CE31B80,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	mov.w @(loc_CE31B82,pc),r0 ; r0 set to 0x340
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@(0x04,r15)
	mov.w @(r0,r14),r2
	mov.w @(loc_CE31B84,pc),r3 ; r3 set to 0x3F0
	extu.w r2,r2
	tst r3,r2
	bt loc_CE31BE2
	mov.w @(r0,r14),r2
	mov.w @(loc_CE31B86,pc),r1 ; r1 set to 0x200
	extu.w r2,r2
	tst r1,r2
	bt loc_CE31B6E
	bra loc_CE31C18
	mov 0x00,r4

loc_CE31B6E:
	mov.w @(r0,r14),r3
	mov.w @(loc_CE31B88,pc),r2 ; r2 set to 0x100
	extu.w r3,r3
	tst r2,r3
	bt loc_CE31BA4
	bra loc_CE31C18
	mov 0x04,r4

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE31B7C:
	#data 0x0140
loc_CE31B7E:
	#data 0x014B
loc_CE31B80:
	#data 0x02A4
loc_CE31B82:
	#data 0x0340
loc_CE31B84:
	#data 0x03F0
loc_CE31B86:
	#data 0x0200
loc_CE31B88:
	#data 0x0100
	#align4

loc_CE31B8C:
	#data loc_8C034DEE
loc_CE31B90:
	#data loc_CE35234
loc_CE31B94:
	#data loc_8C03544C
loc_CE31B98:
	#data loc_8C034E8C
loc_CE31B9C:
	#data loc_8C035162
loc_CE31BA0:
	#data loc_CE3544C

;----------------------------------------------
loc_CE31BA4:
	mov.w @(r0,r14),r0
	extu.w r0,r0
	tst 0x80,r0
	bt loc_CE31BB0
	bra loc_CE31C18
	mov 0x06,r4

loc_CE31BB0:
	mov.w @(loc_CE31CA4,pc),r0 ; r0 set to 0x340
	mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.w r0,r0
	tst 0x40,r0
	bt loc_CE31BBE
	bra loc_CE31C18
	mov 0x08,r4

loc_CE31BBE:
	mov.w @(loc_CE31CA4,pc),r0 ; r0 set to 0x340
	mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.w r0,r0
	tst 0x20,r0
	bt loc_CE31BCC
	bra loc_CE31C18
	mov 0x0A,r4

loc_CE31BCC:
	mov.l @(loc_CE31CAC,pc),r1 ; r1 set to 0x8C289636
	mov.b @r1,r3
	tst r3,r3
	bt loc_CE31C06
	mov.l @(loc_CE31CB0,pc),r3 ; r3 set to 0x8C0514B8
	jsr @r3
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_CE31C06
	bra loc_CE31C18
	mov 0x0C,r4

loc_CE31BE2:
	mov.l @(loc_CE31CAC,pc),r1 ; r1 set to 0x8C289636
	mov.b @r1,r2
	tst r2,r2
	bt loc_CE31C06
	mov.l @(loc_CE31CB0,pc),r3 ; r3 set to 0x8C0514B8
	jsr @r3
	mov r14,r4
	cmp/eq 0x01,r0
	bf loc_CE31C06
	mov.l @(loc_CE31CB4,pc),r3 ; r3 set to 0x8C11E730
	jsr @r3
	nop
	mov.l @(loc_CE31CB8,pc),r3 ; r3 set to 0x8C26823C
	mov.l @r3,r2
	mov.l @(0x1C,r2),r1 ; r1 ??? bc r2 is ???
	add r1,r0
	bra loc_CE31C16
	mov 0x0F,r4

loc_CE31C06:
	mov.l @(loc_CE31CB4,pc),r3 ; r3 set to 0x8C11E730
	jsr @r3
	nop
	mov.l @(loc_CE31CB8,pc),r3 ; r3 set to 0x8C26823C
	mov 0x07,r4 ; r4 set to 0x07
	mov.l @r3,r2
	mov.l @(0x1C,r2),r1
	add r1,r0

loc_CE31C16:
	and r0,r4 ; r4 ??? bc r0 is ???

loc_CE31C18:
	mov.l @(loc_CE31CBC,pc),r3 ; r3 set to 0xCE35454, r3 set to 0xCE35454, r3 set to 0xCE35454
	exts.b r4,r4
	shll r4
	mov.w @(loc_CE31CA6,pc),r0 ; r0 set to 0x158, r0 set to 0x158, r0 set to 0x158
	add r4,r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???, r3 ??? bc r4 is ???
	mov.l r3,@r15
	mov 0x13,r5 ; r5 set to 0x13, r5 set to 0x13, r5 set to 0x13
	mov.b @r3,r2
	mov.b r2,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21, r0 set to 0x21
	mov.l @r15,r3
	mov.b @r3,r2
	mov.b r2,@(r0,r14)
	mov.l @r15,r2
	mov.l @(0x04,r15),r3
	mov.b @(0x01,r2),r0
	mov.b r0,@(0x0C,r3)
	mov.w @(loc_CE31CA6,pc),r0 ; r0 set to 0x158, r0 set to 0x158, r0 set to 0x158
	mov.l @(loc_CE31CC0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C, r3 set to 0x8C034E8C
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_CE31C5C
	mov r14,r4
	mov 0x02,r5 ; r5 set to 0x02, r5 set to 0x02, r5 set to 0x02
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_CE31CC4,pc),r2 ; r2 set to 0x8C0BDF70, r2 set to 0x8C0BDF70, r2 set to 0x8C0BDF70
	jmp @r2
	mov.l @r15+,r14

loc_CE31C5C:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE31C64:
	mov.w @(loc_CE31CA8,pc),r5 ; r5 set to 0x2A4
	mov 0x09,r0 ; r0 set to 0x09
	mov.l @(loc_CE31CC0,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x07,r6 ; r6 set to 0x07
	add r4,r5 ; r5 ??? bc r4 is ???
	mov.b r0,@(0x0C,r5)
	jmp @r3
	mov 0x13,r5

;==============================================
loc_CE31C74:
	mov.w @(loc_CE31CA8,pc),r5 ; r5 set to 0x2A4
	mov 0x09,r0 ; r0 set to 0x09
	mov.l @(loc_CE31CC0,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x08,r6 ; r6 set to 0x08
	add r4,r5 ; r5 ??? bc r4 is ???
	mov.b r0,@(0x0C,r5)
	jmp @r3
	mov 0x13,r5

;==============================================
loc_CE31C84:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x06,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x07,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	mov.l @(loc_CE31CC8,pc),r0 ; r0 set to 0xCE35474
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE31CA4:
	#data 0x0340
loc_CE31CA6:
	#data 0x0158
loc_CE31CA8:
	#data 0x02A4
	#align4

loc_CE31CAC:
	#data loc_8C289636
loc_CE31CB0:
	#data loc_8C0514B8
loc_CE31CB4:
	#data loc_8C11E730
loc_CE31CB8:
	#data loc_8C26823C
loc_CE31CBC:
	#data loc_CE35454
loc_CE31CC0:
	#data loc_8C034E8C
loc_CE31CC4:
	#data loc_8C0BDF70
loc_CE31CC8:
	#data loc_CE35474

;==============================================
loc_CE31CCC:
	mov.l r14,@-r15
	mova @(0xF0,PC),r0
	fmov fr15,@-r15
	mov r4,r14
	sts.l pr,@-r15
	fmov @r0,fr15
	mov.w @(0xDE,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce31cea
	mov r14,r4
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fadd fr15,fr3
	fmov fr3,@(r0,r14)

loc_CE31CEA:
	mov.l @(0xD8,PC),r3
	jsr @r3
	nop 
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31d08
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mova @(0xC4,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)

loc_CE31D08:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE31D10:
	mov.w @(0xA6,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce31d40
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bf loc_ce31d2c
	mov 0x6C,r0
	fmov @(r0,r4),fr2
	fneg fr2
	fmov fr2,@(r0,r4)

loc_CE31D2C:
	mova @(0x9C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bf loc_ce31d40
	mov 0x6C,r0
	fmov @(r0,r4),fr2
	fneg fr2
	fmov fr2,@(r0,r4)

loc_CE31D40:
	mov.l @(0x80,PC),r3
	jmp @r3
	nop 

;==============================================
loc_CE31D46:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE31DBC,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.l @(loc_CE31DD0,pc),r3 ; r3 set to 0x8C046C8A
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_CE31D70
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov 0x00,r0 ; r0 set to 0x00
	mov r14,r4
	mov.b r0,@(0x0C,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE31DD4,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	mov.l @r15+,r14

loc_CE31D70:
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_CE31DD8,pc),r1 ; r1 set to 0xCE35488
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	add 0x04,r15
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE31D84:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE31DBC,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.l @(loc_CE31DD0,pc),r3 ; r3 set to 0x8C046C8A
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_CE31DAE
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov 0x00,r0 ; r0 set to 0x00
	mov r14,r4
	mov.b r0,@(0x0C,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE31DD4,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	mov.l @r15+,r14

loc_CE31DAE:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE31DC4,pc),r2 ; r2 set to 0x8C034DEE
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce31dB8:
	#data 0x014B
loc_CE31DBC:
	#data 0x02A4
	#align4

loc_CE31DC0:
	#data 0x3F892492
loc_CE31DC4:
	#data loc_8C034DEE
loc_CE31DC8:
	#data 0xBD892492
loc_CE31DCC:
	#data 0xBF892492
loc_CE31DD0:
	#data loc_8C046C8A
loc_CE31DD4:
	#data loc_8C051648
loc_CE31DD8:
	#data loc_CE35488

;==============================================
loc_CE31DDC:
	mov.w @(loc_CE31EEE,pc),r3 ; r3 set to 0xFF
	mov.w @(loc_CE31EF0,pc),r0 ; r0 set to 0x326
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE31EFC,pc),r3 ; r3 set to 0x8C046C8A
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE31F00,pc),r2 ; r2 set to 0x8C034DEE
	jsr @r2
	mov r14,r4
	mov.w @(loc_CE31EF2,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_CE31E16
	mov 0x25,r0 ; r0 set to 0x25
	mov.l @(loc_CE31F08,pc),r3 ; r3 set to 0x8C03544C
	mov.b @(r0,r14),r6
	mov r14,r4
	mov.l @(loc_CE31F04,pc),r0 ; r0 set to 0xCE35264
	mov 0x01,r7 ; r7 set to 0x01
	extu.b r6,r6
	lds.l @r15+,pr
	shll2 r6
	mov.l @(r0,r6),r6
	mov 0x00,r5 ; r5 set to 0x00
	jmp @r3
	mov.l @r15+,r14

loc_CE31E16:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE31E1C:
	mov 0x21,r0 ; r0 set to 0x21
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_CE31F0C,pc),r0 ; r0 set to 0xCE35490
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_CE31E30:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE31EF4,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.l @(loc_CE31EFC,pc),r3 ; r3 set to 0x8C046C8A
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_CE31E5A
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov 0x00,r0 ; r0 set to 0x00
	mov r14,r4
	mov.b r0,@(0x0C,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE31F10,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	mov.l @r15+,r14

loc_CE31E5A:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE31F00,pc),r2 ; r2 set to 0x8C034DEE
	jmp @r2
	mov.l @r15+,r14

loc_CE31E66:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_CE31F14,pc),r0 ; r0 set to 0xCE354A8
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_CE31E7A:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_CE31EF4,pc),r4 ; r4 set to 0x2A4
	mov 0x00,r0 ; r0 set to 0x00
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.b r0,@(0x0C,r4)
	mov r14,r4
	mov.w @(loc_CE31EF6,pc),r0 ; r0 set to 0x1E9
	mov.b @(r0,r14),r3
	mov.l @(loc_CE31F18,pc),r0 ; r0 set to 0xCE354BC
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_CE31E98:
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r4)
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_CE31EF8,pc),r0 ; r0 set to 0x1FC
	mov.l @(loc_CE31F1C,pc),r3 ; r3 set to 0x8C05218A
	mov.b r5,@(r0,r4)
	add 0xFD,r0 ; r0 set to 0x1F9
	mov.b r5,@(r0,r4)
	mov.w @(loc_CE31EFA,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???
	mov 0x38,r0 ; r0 set to 0x38
	jmp @r3
	fmov.s fr3,@(r0,r4)

loc_CE31EC0:
	mov r4,r3
	mov.l @(loc_CE31F20,pc),r1 ; r1 set to 0xCE354FC
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE31ED2:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_CE31EF4,pc),r4 ; r4 set to 0x2A4
	mov 0x0A,r0 ; r0 set to 0x0A
	mov.l @(loc_CE31F24,pc),r1 ; r1 set to 0xCE35504
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.b r0,@(0x0C,r4)
	mov r14,r4
	mov.b @(0x07,r14),r0
	extu.b r0,r0 ; r0 set to 0x0A
	shll2 r0 ; r0 set to 0x28
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE31EEE:
	#data 0x00FF
loc_CE31EF0:
	#data 0x0326
loc_CE31EF2:
	#data 0x0141
loc_CE31EF4:
	#data 0x02A4
loc_CE31EF6:
	#data 0x01E9
loc_CE31EF8:
	#data 0x01FC
loc_CE31EFA:
	#data 0x041C
	#align4

loc_CE31EFC:
	#data loc_8C046C8A
loc_CE31F00:
	#data loc_8C034DEE
loc_CE31F04:
	#data loc_CE35264
loc_CE31F08:
	#data loc_8C03544C
loc_CE31F0C:
	#data loc_CE35490
loc_CE31F10:
	#data loc_8C051648
loc_CE31F14:
	#data loc_CE354A8
loc_CE31F18:
	#data loc_CE354BC
loc_CE31F1C:
	#data loc_8C05218A
loc_CE31F20:
	#data loc_CE354FC
loc_CE31F24:
	#data loc_CE35504

;==============================================
loc_CE31F28:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x37,r3 ; r3 set to 0x37
	mov 0x00,r4 ; r4 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov 0x05,r5 ; r5 set to 0x05
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_CE32078,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_CE32084,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_CE32088,pc),r2 ; r2 set to 0x8C056DE4
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	bsr loc_CE31E98
	mov r14,r4
	mov.l @(loc_CE3208C,pc),r2 ; r2 set to 0x8C05115A
	jsr @r2
	mov r14,r4
	mov.w @(loc_CE3207A,pc),r0 ; r0 set to 0x1A3
	mov 0x15,r5 ; r5 set to 0x15
	mov r14,r4
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	add 0xB5,r0 ; r0 set to 0x158
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_CE32090,pc),r3 ; r3 set to 0x8C034E8C
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_CE31F82:
	mov.w @(0xF8,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.w @(0xEA,PC),r13
	tst r3,r3
	bt.s loc_ce31fb6
	add r14,r13
	mov 0x00,r3
	mov r3,r5
	mov r3,r6
	mov.b r3,@(r0,r14)
	mov.l @(0xF4,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_ce31fb6
	mov 0x1A,r0
	mov 0x01,r3
	mov.b r3,@(r0,r13)
	mov 0x1E,r5
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov r14,r4

loc_CE31FB6:
	mov.l @(0xE4,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31fd2
	mov 0x00,r0
	mov.l @(0xD8,PC),r3
	mov.b r0,@(0xC,r13)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE31FD2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE31FDA:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_CE3207C,pc),r4 ; r4 set to 0x2A4
	mov 0x0B,r0 ; r0 set to 0x0B
	mov.l @(loc_CE320A4,pc),r1 ; r1 set to 0xCE3550C
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.b r0,@(0x0C,r4)
	mov r14,r4
	mov.b @(0x07,r14),r0
	extu.b r0,r0 ; r0 set to 0x0B
	shll2 r0 ; r0 set to 0x2C
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_CE31FF6:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x38,r3 ; r3 set to 0x38
	mov 0x00,r4 ; r4 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov 0x05,r5 ; r5 set to 0x05
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_CE32078,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_CE32084,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_CE32088,pc),r2 ; r2 set to 0x8C056DE4
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(loc_CE320A8,pc),r3 ; r3 set to 0x8C05218A
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE32080,pc),r0 ; r0 set to 0x1F9
	mov 0x02,r2 ; r2 set to 0x02
	mov 0x15,r5 ; r5 set to 0x15
	mov r14,r4
	mov.b r2,@(r0,r14)
	mova @(loc_CE320AC,pc),r0  ; r0 set to 0xCE320AC
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s @(r0,r14),fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_CE3207A,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	add 0xB5,r0 ; r0 set to 0x158
	add 0x02,r3
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_CE32090,pc),r3 ; r3 set to 0x8C034E8C
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE32078:
	#data 0x01A1
loc_CE3207A:
	#data 0x01A3
loc_CE3207C:
	#data 0x02A4
loc_CE3207E:
	#data 0x0141
loc_CE32080:
	#data 0x01F9
	#align4

loc_CE32084:
	#data loc_8C2896B0
loc_CE32088:
	#data loc_8C056DE4
loc_CE3208C:
	#data loc_8C05115A
loc_CE32090:
	#data loc_8C034E8C
loc_CE32094:
	#data loc_8C062148
loc_CE32098:
	#data loc_8C042008
loc_CE3209C:
	#data loc_8C034DEE
loc_CE320A0:
	#data loc_8C051648
loc_CE320A4:
	#data loc_CE3550C
loc_CE320A8:
	#data loc_8C05218A
loc_CE320AC:
	#data 0x41000000

;==============================================
loc_CE320B0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xDE,PC),r0
	mov r4,r14
	mov.w @(0xD8,PC),r3
	add r14,r3
	mov.l r3,@r15
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce320dc
	mov.l @(0xD8,PC),r3
	mov 0x00,r2
	mov 0x01,r5
	mov.b r2,@(r0,r14)
	mov r2,r6
	jsr @r3
	mov r14,r4
	mov.l @(0xCC,PC),r2
	mov 0x1E,r5
	jsr @r2
	mov r14,r4

loc_CE320DC:
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
	mov.w @(0x82,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf.s loc_ce3212a
	mov r14,r4
	mov.w @(0x74,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_CE3212A:
	mov.l @(0x7C,PC),r3
	jsr @r3
	nop 
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce3218e
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov 0x00,r0
	mov.l @r15,r3
	mov.b r0,@(0xC,r3)
	mov.w @(0x56,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce32150
	mova @(0x60,PC),r0
	bra loc_ce32154
	fmov @r0,fr3

loc_CE32150:
	mova @(0x5C,PC),r0
	fmov @r0,fr3

loc_CE32154:
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x40,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce32166
	mova @(0x50,PC),r0
	bra loc_ce3216a
	fmov @r0,fr3

loc_CE32166:
	mova @(0x50,PC),r0
	fmov @r0,fr3

loc_CE3216A:
	mov 0x68,r0
	mov r14,r4
	fmov fr3,@(r0,r14)
	mova @(0x48,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x15,r5
	fmov fr3,@(r0,r14)
	mova @(0x44,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov 0x04,r6
	fmov fr3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x38,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_CE3218E:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce32196:
	#data 0x02a4
loc_ce32198:
	#data 0x0141
loc_ce3219a:
	#data 0x041c
loc_ce3219c:
	#data 0x01d2
	#align4

loc_ce321a0:
	#data loc_8C062148
loc_ce321a4:
	#data loc_8C042008
loc_ce321a8:
	#data loc_8C034DEE
loc_ce321ac:
	#data 0xBFD55555
loc_ce321b0:
	#data 0x3FD55555
loc_ce321b4:
	#data 0x3CD55555
loc_ce321b8:
	#data 0xBCD55555
loc_ce321bc:
	#data 0x40F00000
loc_ce321c0:
	#data 0xBECDB6DB
loc_ce321c4:
	#data loc_8C034E8C

;==============================================
loc_CE321C8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_CE322F0,pc),r4 ; r4 set to 0x2A4
	mov 0x00,r0 ; r0 set to 0x00
	mov 0x5C,r1 ; r1 set to 0x5C
	add r14,r4 ; r4 ??? bc r14 is ???
	add r14,r1 ; r1 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.b r0,@(0x0C,r4)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
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
	mov.l @(loc_CE322FC,pc),r3 ; r3 set to 0x8C034DEE
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r4
	cmp/pz r4
	bt loc_CE32224
	lds.l @r15+,pr
	mov.l @(loc_CE32300,pc),r3 ; r3 set to 0x8C05176E
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE32224:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3222A:
	mov r4,r3
	mov.l @(loc_CE32304,pc),r1 ; r1 set to 0xCE35518
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE3223C:
	mov r4,r3
	mov.l @(loc_CE32308,pc),r1 ; r1 set to 0xCE35520
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE3224E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_CE322F2,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf/s loc_CE3226E
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_CE322F4,pc),r0 ; r0 set to 0x1A1
	mov 0x31,r2 ; r2 set to 0x31
	bra loc_CE32278
	mov.b r2,@(r0,r14)

loc_CE3226E:
	mov.w @(loc_CE322F6,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	add 0xFE,r0 ; r0 set to 0x1A1
	add 0x30,r3
	mov.b r3,@(r0,r14)

loc_CE32278:
	mov.w @(loc_CE322F8,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1AC
	mov 0x05,r5 ; r5 set to 0x05, r5 set to 0x05
	mov.l @(loc_CE3230C,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	mov.l @(loc_CE32310,pc),r3 ; r3 set to 0x8C056DE4, r3 set to 0x8C056DE4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	jsr @r3
	mov r14,r4
	bsr loc_CE31E98
	mov r14,r4
	mov.l @(loc_CE32314,pc),r3 ; r3 set to 0x8C05115A, r3 set to 0x8C05115A
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE322FA,pc),r0 ; r0 set to 0x1D2, r0 set to 0x1D2
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_CE322C2
	mov.w @(loc_CE322F6,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r14),r3
	mov.l @(loc_CE32318,pc),r0 ; r0 set to 0xCE35530, r0 set to 0xCE35530
	extu.b r3,r3
	shll2 r3
	shll2 r3
	fmov.s @(r0,r3),fr3
	bra loc_CE322D2
	nop

loc_CE322C2:
	mov.w @(loc_CE322F6,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r2
	mov.l @(loc_CE32318,pc),r0 ; r0 set to 0xCE35530
	extu.b r2,r2
	shll2 r2
	shll2 r2
	fmov.s @(r0,r2),fr3
	fneg fr3

loc_CE322D2:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_CE322FA,pc),r0 ; r0 set to 0x1D2, r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE32320
	mov.w @(loc_CE322F6,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r14),r3
	mov.l @(loc_CE3231C,pc),r0 ; r0 set to 0xCE35534, r0 set to 0xCE35534
	extu.b r3,r3
	shll2 r3
	shll2 r3
	fmov.s @(r0,r3),fr3
	bra loc_CE32330
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE322F0:
	#data 0x02A4
loc_CE322F2:
	#data 0x0255
loc_CE322F4:
	#data 0x01A1
loc_CE322F6:
	#data 0x01A3
loc_CE322F8:
	#data 0x01AC
loc_CE322FA:
	#data 0x01D2
	#align4

loc_CE322FC:
	#data loc_8C034DEE
loc_CE32300:
	#data loc_8C05176E
loc_CE32304:
	#data loc_CE35518
loc_CE32308:
	#data loc_CE35520
loc_CE3230C:
	#data loc_8C2896B0
loc_CE32310:
	#data loc_8C056DE4
loc_CE32314:
	#data loc_8C05115A
loc_CE32318:
	#data loc_CE35530
loc_CE3231C:
	#data loc_CE35530+4

;----------------------------------------------
loc_CE32320:
	mov.w @(loc_CE32448,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r2
	mov.l @(loc_CE32454,pc),r0 ; r0 set to 0xCE35534
	extu.b r2,r2
	shll2 r2
	shll2 r2
	fmov.s @(r0,r2),fr3
	fneg fr3

loc_CE32330:
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	mov.l @(loc_CE32458,pc),r4 ; r4 set to 0xCE35530, r4 set to 0xCE35530
	fmov.s fr3,@(r0,r14)
	mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
	mov.w @(loc_CE32448,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r14),r3
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r4,r3
	fmov.s @(r0,r3),fr3
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_CE32448,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r14),r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0C
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r4 ; r4 ??? bc r3 is ???, r4 ??? bc r3 is ???
	fmov.s @(r0,r4),fr3
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6C
	mov r14,r4
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_CE32448,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r14),r3
	add 0xB5,r0 ; r0 set to 0x158, r0 set to 0x158
	add 0x05,r3
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov.l @(loc_CE3245C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C
	jmp @r3
	mov.l @r15+,r14

loc_CE32376:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15
	mov.l @(0xE0,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce323b4
	mov.b @(0x7,r14),r0
	mov 0x15,r5
	fldi0 fr4
	mov 0x09,r6
	add 0x01,r0
	mov.l @(0xC4,PC),r3
	mov.b r0,@(0x7,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mova @(0xC0,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xBC,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_CE323B4:
	mov.w @(0x92,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce32404
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
	mov.w @(0x54,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce32404
	mov.l @(0x6C,PC),r2
	jsr @r2
	mov r14,r4

loc_CE32404:
	mov.w @(0x46,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce32440
	mov.w @(0x40,PC),r0
	mov.l @(0x60,PC),r3
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	mov.w @(0x34,PC),r0
	mov.b @(r0,r14),r2
	add 0x56,r0
	add 0x31,r2
	mov.b r2,@(r0,r14)
	add 0x0B,r0
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
	mov.w @(0xE,PC),r0
	mov.b r13,@(r0,r14)

loc_CE32440:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE32448:
	#data 0x01A3
loc_CE3244a:
	#data 0x0141
loc_CE3244c:
	#data 0x01F9
loc_CE3244e:
	#data 0x014B
loc_CE32450:
	#data 0x0255
	#align4

loc_CE32454:
	#data loc_CE35530+4
loc_CE32458:
	#data loc_CE35530
loc_CE3245C:
	#data loc_8C034E8C
loc_ce32460:
	#data loc_8C034DEE
loc_ce32464:
	#data 0xC0892492
loc_ce32468:
	#data 0xBF892492
loc_ce3246c:
	#data loc_8C053082
loc_CE32470:
	#data loc_8C2896B0

;==============================================
loc_CE32474:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_CE325B8,pc),r3 ; r3 set to 0x8C034DEE
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
	mov.w @(loc_CE325AE,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_CE324EC
	mov.b @(0x07,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x07,r14)
	mov.w @(loc_CE325AE,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_CE325B0,pc),r0 ; r0 set to 0x1F9
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE325BC,pc),r3 ; r3 set to 0x8C0511B4
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE325C0,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x0A,r6 ; r6 set to 0x0A
	mov 0x15,r5 ; r5 set to 0x15
	jmp @r2
	mov.l @r15+,r14

loc_CE324EC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE324F2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE325B2,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.l @(loc_CE325B8,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE3251E
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov 0x00,r0 ; r0 set to 0x00
	mov r14,r4
	mov.b r0,@(0x0C,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE325C4,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	mov.l @r15+,r14

loc_CE3251E:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE32526:
	mov r4,r3
	mov.l @(loc_CE325C8,pc),r1 ; r1 set to 0xCE35550
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE32538:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x00,r4 ; r4 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov 0x05,r5 ; r5 set to 0x05
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_CE325B4,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	add 0xFE,r0 ; r0 set to 0x1A1
	add 0x34,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_CE325CC,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_CE325D0,pc),r2 ; r2 set to 0x8C056DE4
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(loc_CE325D4,pc),r3 ; r3 set to 0x8C05218A
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE325B0,pc),r0 ; r0 set to 0x1F9
	mov 0x02,r2 ; r2 set to 0x02
	fldi0 fr4
	mov.b r2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_CE325B6,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_CE325DC
	mov.w @(loc_CE325B4,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	mov.l @(loc_CE325D8,pc),r0 ; r0 set to 0xCE35560
	extu.b r3,r3
	shll2 r3
	shll2 r3
	fmov.s @(r0,r3),fr3
	bra loc_CE325EC
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE325AE:
	#data 0x041C
loc_CE325B0:
	#data 0x01F9
loc_CE325B2:
	#data 0x02A4
loc_CE325B4:
	#data 0x01A3
loc_CE325B6:
	#data 0x01D2
	#align4

loc_CE325B8:
	#data loc_8C034DEE
loc_CE325BC:
	#data loc_8C0511B4
loc_CE325C0:
	#data loc_8C034E8C
loc_CE325C4:
	#data loc_8C051648
loc_CE325C8:
	#data loc_CE35550
loc_CE325CC:
	#data loc_8C2896B0
loc_CE325D0:
	#data loc_8C056DE4
loc_CE325D4:
	#data loc_8C05218A
loc_CE325D8:
	#data loc_CE35560

;----------------------------------------------
loc_CE325DC:
	mov.w @(loc_CE326E0,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r2
	mov.l @(loc_CE326E8,pc),r0 ; r0 set to 0xCE35560
	extu.b r2,r2
	shll2 r2
	shll2 r2
	fmov.s @(r0,r2),fr3
	fneg fr3

loc_CE325EC:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_CE326E2,pc),r0 ; r0 set to 0x1D2, r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE3260A
	mov.w @(loc_CE326E0,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r14),r3
	mov.l @(loc_CE326EC,pc),r0 ; r0 set to 0xCE35564, r0 set to 0xCE35564
	extu.b r3,r3
	shll2 r3
	shll2 r3
	fmov.s @(r0,r3),fr3
	bra loc_CE3261A
	nop

loc_CE3260A:
	mov.w @(loc_CE326E0,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r2
	mov.l @(loc_CE326EC,pc),r0 ; r0 set to 0xCE35564
	extu.b r2,r2
	shll2 r2
	shll2 r2
	fmov.s @(r0,r2),fr3
	fneg fr3

loc_CE3261A:
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	mov.l @(loc_CE326E8,pc),r4 ; r4 set to 0xCE35560, r4 set to 0xCE35560
	fmov.s fr3,@(r0,r14)
	mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
	mov.w @(loc_CE326E0,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r14),r3
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r4,r3
	fmov.s @(r0,r3),fr3
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_CE326E0,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r14),r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0C
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r4 ; r4 ??? bc r3 is ???, r4 ??? bc r3 is ???
	mov.l @(loc_CE326F0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6C
	mov r14,r4
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_CE326E0,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x07,r6
	jmp @r3
	mov.l @r15+,r14

loc_CE3265A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x94,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce32694
	mov.b @(0x7,r14),r0
	mov 0x15,r5
	fldi0 fr4
	mov 0x09,r6
	add 0x01,r0
	mov.l @(0x78,PC),r3
	mov.b r0,@(0x7,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_CE32694:
	mov.w @(0x4C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce326da
	mov.w @(0x46,PC),r0
	mov 0x02,r3
	mov 0x5C,r1
	mov.b r3,@(r0,r14)
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

loc_CE326DA:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE326E0:
	#data 0x01A3
loc_CE326E2:
	#data 0x01D2
loc_CE326E4:
	#data 0x0141
loc_CE326E6:
	#data 0x01F9
	#align4

loc_CE326E8:
	#data loc_CE35560
loc_CE326EC:
	#data loc_CE35564
loc_CE326F0:
	#data loc_8C034E8C
loc_CE326F4:
	#data loc_8C034DEE
loc_CE326F8:
	#data 0xC0892492
loc_CE326Fc:
	#data 0xBF892492

;==============================================
loc_CE32700:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_CE32860,pc),r3 ; r3 set to 0x8C034DEE
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
	mov.w @(loc_CE32856,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_CE32778
	mov.b @(0x07,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x07,r14)
	mov.w @(loc_CE32856,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_CE32858,pc),r0 ; r0 set to 0x1F9
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE32864,pc),r3 ; r3 set to 0x8C0511B4
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE32868,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x0A,r6 ; r6 set to 0x0A
	mov 0x15,r5 ; r5 set to 0x15
	jmp @r2
	mov.l @r15+,r14

loc_CE32778:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3277E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE3285A,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.l @(loc_CE32860,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE327AA
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov 0x00,r0 ; r0 set to 0x00
	mov r14,r4
	mov.b r0,@(0x0C,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE3286C,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	mov.l @r15+,r14

loc_CE327AA:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE327B2:
	mov r4,r3
	mov.l @(loc_CE32870,pc),r1 ; r1 set to 0xCE35580
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE327C4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE3285A,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	mov 0x05,r5 ; r5 set to 0x05
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.b @(0x06,r14),r0
	mov.l @(loc_CE32874,pc),r3 ; r3 set to 0x8C056DE4
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	bsr loc_CE31E98
	mov r14,r4
	mov.l @(loc_CE32878,pc),r3 ; r3 set to 0x8C05115A
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE32868,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x15,r5 ; r5 set to 0x15
	mov 0x0F,r6 ; r6 set to 0x0F
	jsr @r2
	mov r14,r4
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov 0x1C,r0 ; r0 set to 0x1C
	mov 0x01,r2 ; r2 set to 0x01
	mov.b r2,@(r0,r3)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE32804:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_CE32860,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE3282C
	mov.b @(0x06,r14),r0
	mov 0x15,r5 ; r5 set to 0x15
	mov r14,r4
	mov 0x10,r6 ; r6 set to 0x10
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE32868,pc),r3 ; r3 set to 0x8C034E8C
	jmp @r3
	mov.l @r15+,r14

loc_CE3282C:
	mov.l @(loc_CE3287C,pc),r2 ; r2 set to 0x8C045790
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt/s loc_CE32888
	mov.l r0,@r15
	mov.l @(loc_CE32880,pc),r2 ; r2 set to 0x8C02FEC4
	mov 0x05,r6 ; r6 set to 0x05
	mov r6,r5 ; r5 set to 0x05
	jsr @r2
	mov r14,r4
	mov.w @(loc_CE3285E,pc),r0 ; r0 set to 0x1F7
	mov r14,r4
	mov.w @(loc_CE3285C,pc),r3 ; r3 set to 0xC1
	mov.b r3,@(r0,r14)
	mov.l @r15,r5 ; r5 ??? bc r15 is ???
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE32884,pc),r3 ; r3 set to 0x8C0522E0
	jmp @r3
	mov.l @r15+,r14

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE32856:
	#data 0x041C
loc_CE32858:
	#data 0x01F9
loc_CE3285A:
	#data 0x02A4
loc_CE3285C:
	#data 0x00C1
loc_CE3285E:
	#data 0x01F7
	#align4

loc_CE32860:
	#data loc_8C034DEE
loc_CE32864:
	#data loc_8C0511B4
loc_CE32868:
	#data loc_8C034E8C
loc_CE3286C:
	#data loc_8C051648
loc_CE32870:
	#data loc_CE35580
loc_CE32874:
	#data loc_8C056DE4
loc_CE32878:
	#data loc_8C05115A
loc_CE3287C:
	#data loc_8C045790
loc_CE32880:
	#data loc_8C02FEC4
loc_CE32884:
	#data loc_8C0522E0

;----------------------------------------------
loc_CE32888:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE32890:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE32972,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.l @(loc_CE32980,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE328BC
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov 0x00,r0 ; r0 set to 0x00
	mov r14,r4
	mov.b r0,@(0x0C,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE32984,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	mov.l @r15+,r14

loc_CE328BC:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE328C4:
	mov r4,r3
	mov.l @(loc_CE32988,pc),r1 ; r1 set to 0xCE3558C
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE328D6:
	mov.w @(0x9A,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf.s loc_ce328f4
	mov 0x00,r5
	mov.w @(0x8C,PC),r0
	mov 0x10,r3
	mov.w @(0x86,PC),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)

loc_CE328F4:
	mov.l @(0x94,PC),r3
	jsr @r3
	mov r14,r4
	mov.b @(0x6,r14),r0
	mov 0x45,r3
	mov 0x00,r4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x72,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x7C,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	bsr loc_ce31e98
	mov r14,r4
	mov.l @(0x68,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x64,PC),r3
	mov 0x72,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x60,PC),r2
	mov 0x16,r5
	mov 0x19,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_CE3294A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_CE3297C,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov r4,r14
	mov 0x05,r2 ; r2 set to 0x05
	mov.b r3,@(r0,r14)
	mov.w @(loc_CE3297E,pc),r0 ; r0 set to 0x328
	mov.w @(loc_CE32972,pc),r13 ; r13 set to 0x2A4
	mov.b r2,@(r0,r14)
	mov.w @(loc_CE32974,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf/s loc_CE329A0
	add r14,r13 ; r13 ??? bc r14 is ???
	bra loc_CE329A2
	mov 0x02,r3

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE32972:
	#data 0x02A4
loc_CE32974:
	#data 0x0255
loc_CE32976:
	#data 0x00FF
loc_CE32978:
	#data 0x03F0
loc_CE3297A:
	#data 0x01A1
loc_CE3297C:
	#data 0x03F8
loc_CE3297E:
	#data 0x0328
	#align4

loc_CE32980:
	#data loc_8C034DEE
loc_CE32984:
	#data loc_8C051648
loc_CE32988:
	#data loc_CE3558C
loc_CE3298C:
	#data loc_8C035162
loc_CE32990:
	#data loc_8C2896B0
loc_CE32994:
	#data loc_8C05115A
loc_CE32998:
	#data loc_8C0BB2BC
loc_CE3299c:
	#data loc_8C034E8C

;----------------------------------------------
;----------------------------------------------
loc_CE329A0:
	mov 0x00,r3

loc_CE329A2:
	mov.w @(loc_ce32aa6,PC),r0
	mov 0x06,r2
	mov.b r3,@(r0,r14)
	mov 0x12,r0
	mov.l @(loc_ce32ab4,PC),r3
	mov.b r2,@(r0,r13)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce32a06
	mov.w @(loc_ce32aa8,PC),r0
	mov 0x00,r4
	mov 0x0A,r3
	mov.w @(loc_ce32aaa,PC),r2
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x14,r0
	mov.b r3,@(r0,r13)
	mov 0x10,r3
	mov.w @(loc_ce32aa8,PC),r0
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)
	mov 0x2C,r0
	mov.l @(loc_ce32ab8,PC),r3
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	mova @(loc_ce32abc,PC),r0
	mov.l @(loc_ce32ac4,PC),r3
	fmov @r0,fr3
	mova @(loc_ce32ac0,PC),r0
	mov r15,r5
	mov 0x01,r6
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce32ac8,PC),r2
	mov 0x16,r5
	mov 0x1A,r6
	jsr @r2
	mov r14,r4

loc_CE32A06:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE32A10:
	mov.w @(loc_ce32aa6,PC),r0
	mov 0x02,r5
	mov.l r14,@-r15
	mov r4,r14
	mov 0x05,r3
	mov.w @(loc_ce32aac,PC),r4
	sts.l pr,@-r15
	mov.b r5,@(r0,r14)
	add 0x07,r0
	mov.b r5,@(r0,r14)
	add r14,r4
	mov.w @(loc_ce32aae,PC),r0
	mov 0x06,r2
	mov.b r3,@(r0,r14)
	mov 0x12,r0
	mov.l @(loc_ce32ab4,PC),r3
	mov.b r2,@(r0,r4)
	jsr @r3
	mov r14,r4
	mov.w @(loc_ce32ab0,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce32a5a


	mov 0x25,r0
	mov.b @(r0,r14),r6
	mov 0x02,r5
	mov.w @(loc_ce32ab2,PC),r0
	mov 0x01,r7
	extu.b r6,r6
	mov.b @(r0,r14),r3
	shll2 r6
	mov.l @(loc_ce32acc,PC),r0;0xCE3524C
	mov.l @(r0,r6),r6
	add r3,r6
	mov.l @(loc_ce32ad0,PC),r3;8c03544c
	jsr @r3
	mov r14,r4

loc_CE32A5A:
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_ce32a6c
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE32A6C:
	mov.w @(0x38,PC),r0
	mov 0x00,r4
	mov.l @(0x60,PC),r2
	mov 0x01,r1
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.b @r2,r3
	extu.b r0,r0
	shad r0,r1
	extu.b r3,r3
	tst r1,r3
	bf loc_ce32aa0
	mov 0x46,r0
	mov.l @(0x3C,PC),r3
	mov.w r0,@(0x1C,r14)
	mov r14,r4
	mov.b @(0x6,r14),r0
	mov 0x1B,r6
	mov 0x16,r5
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE32AA0:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce32aa6:
	#data 0x03F1
loc_ce32aa8:
	#data 0x03F0
loc_ce32aaa:
	#data 0x00FF
loc_ce32aac:
	#data 0x02A4
loc_ce32aae:
	#data 0x0328
loc_ce32ab0:
	#data 0x014B
loc_ce32ab2:
	#data 0x0140
	#align4

loc_ce32ab4:
	#data loc_8C034DEE
loc_ce32ab8:
	#data loc_8C0BB314
loc_ce32abc:
	#data 0xC1555555
loc_ce32ac0:
	#data 0x42DEDB6D
loc_ce32ac4:
	#data loc_8C050834
loc_ce32ac8:
	#data loc_8C034E8C
loc_ce32acc:
	#data loc_CE3524C
loc_ce32ad0:
	#data loc_8C03544C
loc_ce32ad4:
	#data loc_8C2895F6

;==============================================
loc_CE32AD8:
	mov.w @(0x102,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x05,r2
	mov.w @(0xF4,PC),r13
	mov.l r12,@-r15
	add r14,r13
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x06,r3
	mov.w @(0xEC,PC),r0
	mov.b r2,@(r0,r14)
	mov 0x12,r0
	mov.b r3,@(r0,r13)
	mov.l @(0xF0,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xE0,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf.s loc_ce32b1a
	mov 0x00,r12
	mov.w @(0xD6,PC),r0
	mov.l @(0xE4,PC),r3
	mov.b r12,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xE0,PC),r2
	mov 0x48,r5
	jsr @r2
	mov r14,r4

loc_CE32B1A:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_ce32b4e
	mov.w @(0xBA,PC),r0
	mov 0x1C,r6
	mov.l @(0xCC,PC),r3
	mov r14,r4
	mov.b r12,@(r0,r14)
	add 0xFF,r0
	mov.b r12,@(r0,r14)
	mov 0x16,r5
	mov.w @(0xAC,PC),r0
	mov.b r12,@(r0,r14)
	add 0x01,r0
	mov.b r12,@(r0,r14)
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE32B4E:
	mov 0x13,r0
	mov.b r12,@(r0,r13)
	mov.w @(0x92,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce32b8a
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_ce32b6c
	mov r14,r4
	mov 0x13,r0
	mov 0xFF,r3
	mov.b r3,@(r0,r13)

loc_CE32B6C:
	mov.l @(0x90,PC),r3
	jsr @r3
	nop 
	tst r0,r0
	bt loc_ce32b8a
	mov 0x14,r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_ce32b8a
	mov.b @(r0,r13),r3
	add 0xFF,r3
	mov.b r3,@(r0,r13)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)

loc_CE32B8A:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE32B94:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x06,r3 ; r3 set to 0x06
	mov.w @(loc_CE32BDC,pc),r13 ; r13 set to 0x2A4
	mov 0x12,r0 ; r0 set to 0x12
	sts.l pr,@-r15
	add r14,r13 ; r13 ??? bc r14 is ???
	mov.b r3,@(r0,r13)
	mov.l @(loc_CE32BEC,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE32BC2
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @(loc_CE32C04,pc),r3 ; r3 set to 0x8C051648
	mov.b r0,@(0x0C,r13)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE32BC2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE32BCA:
	mov r4,r3
	mov.l @(loc_CE32C08,pc),r1 ; r1 set to 0xCE355A0
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE32BDC:
	#data 0x02A4
loc_ce32bde:
	#data 0x03F8
loc_ce32be0:
	#data 0x0328
loc_ce32be2:
	#data 0x0141
loc_ce32be4:
	#data 0x03F9
loc_ce32be6:
	#data 0x0327
loc_ce32be8:
	#data 0x0525
	#align4

loc_CE32BEC:
	#data loc_8C034DEE
loc_ce32bf0:
	#data loc_8C0626D8
loc_ce32bf4:
	#data loc_8C04223A
loc_ce32bf8:
	#data loc_8C034E8C
loc_ce32bfc:
	#data loc_8C055D2E
loc_ce32c00:
	#data loc_8C055D54
loc_CE32C04:
	#data loc_8C051648
loc_CE32C08:
	#data loc_CE355A0

;==============================================
loc_CE32C0C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_CE32D64,pc),r4 ; r4 set to 0x2A4
	mov 0x07,r0 ; r0 set to 0x07
	sts.l pr,@-r15
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(loc_CE32D6C,pc),r3 ; r3 set to 0x8C0BDF70
	mov.b r0,@(0x0C,r4)
	mov 0x01,r5 ; r5 set to 0x01
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x08
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov 0x3C,r0 ; r0 set to 0x3C
	fldi0 fr4
	mov.w r0,@(0x1C,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mova @(loc_CE32D70,pc),r0  ; r0 set to 0xCE32D70
	fmov.s @r0,fr3 ; r3 ??
	mov 0x60,r0 ; r0 set to 0x60
	mov.l @(loc_CE32D7C,pc),r3 ; r3 set to 0x8C03544C
	mov 0x01,r7 ; r7 set to 0x01
	fmov.s fr3,@(r0,r14)
	mova @(loc_CE32D74,pc),r0  ; r0 set to 0xCE32D74
	fmov.s @r0,fr3 ; r3 ??
	mov 0x6C,r0 ; r0 set to 0x6C
	mov 0x00,r5 ; r5 set to 0x00
	fmov.s fr3,@(r0,r14)
	mov 0x25,r0 ; r0 set to 0x25
	mov.b @(r0,r14),r6
	mov.l @(loc_CE32D78,pc),r0 ; r0 set to 0xCE35264
	extu.b r6,r6
	shll2 r6
	mov.l @(r0,r6),r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE32D80,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x05,r6 ; r6 set to 0x05
	mov 0x14,r5 ; r5 set to 0x14
	jmp @r2
	mov.l @r15+,r14

loc_CE32C72:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_CE32D64,pc),r4 ; r4 set to 0x2A4
	mov 0x07,r0 ; r0 set to 0x07
	fmov.s fr15,@-r15
	add r14,r4 ; r4 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.b r0,@(0x0C,r4)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x06
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	tst r0,r0
	bf/s loc_CE32CCE
	fldi0 fr15
	mov.l @(loc_CE32D84,pc),r3 ; r3 set to 0x8C035162
	mov 0x00,r0 ; r0 set to 0x00
	mov r0,r5 ; r5 set to 0x00
	mov.b r0,@(0x0C,r4)
	jsr @r3
	mov r14,r4
	mov 0x5C,r0 ; r0 set to 0x5C
	mov.l @(loc_CE32D80,pc),r3 ; r3 set to 0x8C034E8C
	fmov.s fr15,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr15,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr15,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr15,@(r0,r14)
	mova @(loc_CE32D88,pc),r0  ; r0 set to 0xCE32D88
	fmov.s @r0,fr3 ; r3 ??
	mov 0x6C,r0 ; r0 set to 0x6C
	mov r14,r4
	mov 0x09,r6 ; r6 set to 0x09
	fmov.s fr3,@(r0,r14)
	mov 0x01,r5 ; r5 set to 0x01
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x6D
	mov.b r0,@(0x06,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x07,r14)
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	jmp @r3
	mov.l @r15+,r14

loc_CE32CCE:
	mov.w @(0x94,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce32cf2
	mov 0x60,r1
	add r14,r1
	mov 0x38,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_CE32CF2:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf.s loc_ce32d04
	mov r14,r4
	fmov fr15,@(r0,r14)
	mov 0x6C,r0
	fmov fr15,@(r0,r14)

loc_CE32D04:
	lds.l @r15+,pr
	mov.l @(0x84,PC),r3
	fmov @r15+,fr15
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_CE32D0E:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	sts.l pr,@-r15
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
	mov.w @(loc_CE32D68,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_CE32D5E
	mov.b @(0x07,r14),r0
	mov.l @(loc_CE32D90,pc),r3 ; r3 set to 0x8C0511B4
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x07,r14)
	mov.w @(loc_CE32D68,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE32D80,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x03,r6 ; r6 set to 0x03
	mov 0x01,r5 ; r5 set to 0x01
	jmp @r2
	mov.l @r15+,r14
	
loc_CE32D5E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE32D64:
	#data 0x02A4
loc_CE32D66:
	#data 0x0140
loc_CE32D68:
	#data 0x041C
	#align4

loc_CE32D6C:
	#data loc_8C0BDF70
loc_CE32D70:
	#data 0x40092492
loc_CE32D74:
	#data 0xBD892492
loc_CE32D78:
	#data loc_CE35264
loc_CE32D7C:
	#data loc_8C03544C
loc_CE32D80:
	#data loc_8C034E8C
loc_CE32D84:
	#data loc_8C035162
loc_CE32D88:
	#data 0xBF4DB6DB
loc_CE32D8C:
	#data loc_8C034DEE
loc_CE32D90:
	#data loc_8C0511B4

;==============================================
loc_CE32D94:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE32EDE,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.l @(loc_CE32EF0,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE32DC0
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov 0x00,r0 ; r0 set to 0x00
	mov r14,r4
	mov.b r0,@(0x0C,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE32EF4,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	mov.l @r15+,r14

loc_CE32DC0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE32DC8:
	mov r4,r3
	mov.l @(loc_CE32EF8,pc),r1 ; r1 set to 0xCE355AC
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE32DDA:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_CE32EDE,pc),r4 ; r4 set to 0x2A4
	mov 0x0C,r0 ; r0 set to 0x0C
	mov.l @(loc_CE32EFC,pc),r1 ; r1 set to 0xCE355B4
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.b r0,@(0x0C,r4)
	mov r14,r4
	mov.b @(0x06,r14),r0
	extu.b r0,r0 ; r0 set to 0x0C
	shll2 r0 ; r0 set to 0x30
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_CE32DF6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xDC,PC),r3
	mov r4,r14
	mov 0x00,r5
	add r14,r3
	mov.l r3,@r15
	mov.b @(0x6,r14),r0
	mov.l @(0xF4,PC),r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0xC8,PC),r0
	mov 0x48,r2
	mov 0x00,r13
	mov.l @(0xE8,PC),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
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
	bsr loc_ce31e98
	mov r14,r4
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @r15,r2
	mov 0x15,r0
	mov.b r13,@(r0,r2)
	mov.w @(0x94,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf.s loc_ce32e62
	mov 0x29,r6
	mov.w @(0x8C,PC),r0
	mov 0x10,r3
	mov.w @(0x86,PC),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)

loc_CE32E62:
	mov r14,r4
	mov 0x16,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xA0,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_CE32E72:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_CE32EF0,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.w @(loc_CE32EE8,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r2 ; r2 set to 0x02
	mov 0x05,r3 ; r3 set to 0x05
	mov.b r2,@(r0,r14)
	mov.w @(loc_CE32EEA,pc),r0 ; r0 set to 0x328
	mov.b r3,@(r0,r14)
	mov.w @(loc_CE32EE2,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_CE32E98
	bra loc_CE32E9A
	mov 0x02,r2

loc_CE32E98:
	mov 0x00,r2

loc_CE32E9A:
	mov.w @(0x4E,PC),r0
	mov.b r2,@(r0,r14)
	mov.w @(0x4C,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce32ed6
	mov.w @(0x3C,PC),r0
	mov 0x00,r4
	mov.l @(0x6C,PC),r3
	mov r15,r5
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x01,r6
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x2E,PC),r0
	mov.b r4,@(r0,r14)
	add 0xEB,r0
	mov.w r0,@(0x1C,r14)
	mova @(0x48,PC),r0
	fmov @r0,fr3
	mova @(0x48,PC),r0
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4

loc_CE32ED6:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE32EDE:
	#data 0x02A4
loc_CE32EE0:
	#data 0x01A1
loc_CE32EE2:
	#data 0x0255
loc_CE32EE4:
	#data 0x00FF
loc_CE32EE6:
	#data 0x03F0
loc_CE32EE8:
	#data 0x03F8
loc_CE32EEA:
	#data 0x0328
loc_CE32EEC:
	#data 0x03F1
loc_CE32EEE:
	#data 0x0141
	#align4

loc_CE32EF0:
	#data loc_8C034DEE
loc_CE32EF4:
	#data loc_8C051648
loc_CE32EF8:
	#data loc_CE355AC
loc_CE32EFC:
	#data loc_CE355B4
loc_CE32F00:
	#data loc_8C035162
loc_CE32F04:
	#data loc_8C2896B0
loc_CE32F08:
	#data loc_8C05115A
loc_CE32F0C:
	#data loc_8C034E8C
loc_CE32F10:
	#data 0xC0D55555
loc_CE32F14:
	#data 0x433C9249
loc_CE32F18:
	#data loc_8C050834

;==============================================
loc_CE32F1C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE3304E,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r2 ; r2 set to 0x02
	mov.w @(loc_CE3304C,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	mov 0x00,r13 ; r13 set to 0x00
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov 0x05,r3 ; r3 set to 0x05
	mov.b r2,@(r0,r14)
	mov.w @(loc_CE33050,pc),r0 ; r0 set to 0x328
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE3305C,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE32F6E
	mov.b @(0x06,r14),r0
	mov 0x16,r5 ; r5 set to 0x16
	mov r14,r4
	mov 0x2A,r6 ; r6 set to 0x2A
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_CE33052,pc),r0 ; r0 set to 0x3F9
	mov.b r13,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x3F8
	mov.b r13,@(r0,r14)
	mov.w @(loc_CE33054,pc),r0 ; r0 set to 0x327
	mov.b r13,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x328
	mov.b r13,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE33060,pc),r3 ; r3 set to 0x8C034E8C
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r3
	mov.l @r15+,r14

loc_CE32F6E:
	mov.w @(0xE4,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce32f8c
	mov.l @(0xEC,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_ce32f8c
	mov.l @r15,r3
	mov 0x15,r0
	mov.b @(r0,r3),r2
	add 0x01,r2
	mov.b r2,@(r0,r3)

loc_CE32F8C:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE32F96:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x06,r3 ; r3 set to 0x06
	mov.w @(loc_CE3304C,pc),r13 ; r13 set to 0x2A4
	mov 0x12,r0 ; r0 set to 0x12
	sts.l pr,@-r15
	add r14,r13 ; r13 ??? bc r14 is ???
	mov.b r3,@(r0,r13)
	mov.l @(loc_CE3305C,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	mov 0x15,r0 ; r0 set to 0x15
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_CE32FD4
	mov.b @(0x06,r14),r0
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_CE33068,pc),r3 ; r3 set to 0x8C035162
	add 0x01,r0 ; r0 set to 0x16
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE33060,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x2B,r6 ; r6 set to 0x2B
	mov 0x16,r5 ; r5 set to 0x16
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE32FD4:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE32FDC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE3304C,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.l @(loc_CE3305C,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE33008
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov 0x00,r0 ; r0 set to 0x00
	mov r14,r4
	mov.b r0,@(0x0C,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE3306C,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	mov.l @r15+,r14

loc_CE33008:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE33010:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_CE33070,pc),r0 ; r0 set to 0xCE355C8
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE33024:
mov.l r14,@-r15
sts.l pr,@-r15
add 0xF0,r15
mov.w @(loc_CE3304E,pc),r0 ; r0 set to 0x3F8
mov r4,r14
mov.w @(loc_CE3304C,pc),r3 ; r3 set to 0x2A4
mov 0x02,r2 ; r2 set to 0x02
add r14,r3 ; r3 ??? bc r14 is ???
mov.l r3,@r15
mov 0x05,r3 ; r3 set to 0x05
mov.b r2,@(r0,r14)
mov.w @(loc_CE33050,pc),r0 ; r0 set to 0x328
mov.b r3,@(r0,r14)
mov.w @(loc_CE33058,pc),r0 ; r0 set to 0x255
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x06,r0
bf loc_CE33074
bra loc_CE33076
mov 0x02,r2

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE3304C:
	#data 0x02A4
loc_CE3304E:
	#data 0x03F8
loc_CE33050:
	#data 0x0328
loc_CE33052:
	#data 0x03F9
loc_CE33054:
	#data 0x0327
loc_CE33056:
	#data 0x0140
loc_CE33058:
	#data 0x0255
	#align4

loc_CE3305C:
	#data loc_8C034DEE
loc_CE33060:
	#data loc_8C034E8C
loc_CE33064:
	#data loc_8C063500
loc_CE33068:
	#data loc_8C035162
loc_CE3306C:
	#data loc_8C051648
loc_CE33070:
	#data loc_CE355C8

;----------------------------------------------
loc_CE33074:
	mov 0x00,r2

loc_CE33076:
	mov.w @(0x10A,PC),r0
	mov.l @(0x118,PC),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce330fc
	mov.w @(0xFC,PC),r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov r4,r0
	nop 
	mov.b r0,@(0x7,r14)
	mov 0x28,r0
	mov.w r0,@(0x1C,r14)
	mova @(0xF4,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xF0,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xD4,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_ce330c8
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE330C8:
	mov.w @(0xBE,PC),r0
	mov 0x02,r3
	mov 0x16,r5
	mov.b r3,@(r0,r14)
	mov 0x06,r6
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @r15,r2
	mov 0x1C,r0
	mov 0x01,r3
	mov r15,r5
	mov.b r3,@(r0,r2)
	mova @(0xC0,PC),r0
	fmov @r0,fr3
	mov 0x04,r0
	mov r3,r6
	mov.l @(0xC0,PC),r3
	fmov fr3,@(r0,r15)
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	mov 0x08,r0
	add 0x04,r5
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4

loc_CE330FC:
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE33104:
	mov.w @(0x84,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_ce33120
	mov.w @(0x6E,PC),r0
	mov 0x10,r3
	mov.w @(0x72,PC),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)

loc_CE33120:
	mov.b @(0x7,r14),r0
	mov.l @(0x8C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x84,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x5A,PC),r0
	mov 0x3B,r3
	mov 0x00,r4
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x70,PC),r3
	mov r4,r5
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x60,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(0x3C,PC),r3
	mov 0x16,r5
	mov 0x05,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce33024
	mov.l @r15+,r14

loc_CE33172:
	mov r4,r3
	mov.l @(loc_CE331C0,pc),r1 ; r1 set to 0xCE355D0
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce33184:
	#data 0x03F1
loc_ce33186:
	#data 0x03F0
loc_ce33188:
	#data 0x0130
loc_ce3318a:
	#data 0x01F9
loc_ce3318c:
	#data 0x0255
loc_ce3318e:
	#data 0x00FF
loc_ce33190:
	#data 0x01A1
	#align4

loc_ce33194:
	#data loc_8C034DEE
loc_ce33198:
	#data 0x41555555
loc_ce3319c:
	#data 0xBDD55555
loc_ce331a0:
	#data loc_8C034E8C
loc_ce331a4:
	#data 0xC1D55555
loc_ce331a8:
	#data 0x43092492
loc_ce331ac:
	#data loc_8C050834
loc_ce331b0:
	#data loc_CE31E98
loc_ce331b4:
	#data loc_8C05115A
loc_ce331b8:
	#data loc_8C2896B0
loc_ce331bc:
	#data loc_8C035162
loc_CE331C0:
	#data loc_CE355D0

;==============================================
loc_CE331C4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.w @(loc_CE33314,pc),r13 ; r13 set to 0x2A4
	mov.l @(loc_CE33324,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	add r14,r13 ; r13 ??? bc r14 is ???
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_CE33328,pc),r11 ; r11 set to 0x8C034E8C
	add r14,r1 ; r1 ??? bc r14 is ???
	fldi0 fr15
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
	mov.w @(loc_CE33316,pc),r0 ; r0 set to 0x19E
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt/s loc_CE332C8
	mov 0x00,r12 ; r12 set to 0x00
	mov.l @(loc_CE3332C,pc),r3 ; r3 set to 0x8C042008
	mov 0x1C,r0 ; r0 set to 0x1C
	mov 0x2B,r5 ; r5 set to 0x2B
	mov.b r12,@(r0,r13)
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE33316,pc),r0 ; r0 set to 0x19E
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	tst 0x7F,r0
	bf loc_CE3327C
	mov.l @(loc_CE33330,pc),r2 ; r2 set to 0x8C05264C
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_CE3327C
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov r12,r0 ; r0 set to 0x00
	nop
	mov.l @(loc_CE33334,pc),r3 ; r3 set to 0x8C02FEC4
	mov 0x05,r6 ; r6 set to 0x05
	mov.b r0,@(0x07,r14)
	mov r6,r5 ; r5 set to 0x05
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE33318,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_CE3331A,pc),r0 ; r0 set to 0x1B0
	mov.l @(r0,r14),r3
	mov.l r3,@r13
	mov r12,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x0D,r13)
	mov 0x16,r0 ; r0 set to 0x16
	mov.l @(loc_CE33338,pc),r3 ; r3 set to 0x8C063900
	mov 0x00,r5 ; r5 set to 0x00
	mov.b r12,@(r0,r13)
	jsr @r3
	mov r14,r4
	mov 0x16,r5 ; r5 set to 0x16
	mov 0x0F,r6 ; r6 set to 0x0F
	jsr @r11
	mov r14,r4
	mov.w @(loc_CE3331C,pc),r2 ; r2 set to 0xC5
	mov r14,r4
	mov.w @(loc_CE3331E,pc),r0 ; r0 set to 0x1F7
	mov.l @(loc_CE3333C,pc),r3 ; r3 set to 0x8C0523D8
	mov.b r2,@(r0,r14)
	add 0xB9,r0 ; r0 set to 0x1B0
	lds.l @r15+,pr
	mov.l @(r0,r14),r5 ; r5 ??? bc r14 is ???
	fmov.s @r15+,fr15
	mov.l @r15+,r11 ; r11 ??? bc r15 is ???
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE3327C:
	mov.w @(0x98,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0xB4,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mova @(0xAC,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xA8,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x78,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce332be
	mov 0x0B,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE332BE:
	mov 0x16,r5
	jsr @r11
	mov r14,r4
	bra loc_ce33306
	nop 

loc_CE332C8:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_ce33306
	mov.l @(0x54,PC),r3
	mov 0x1C,r0
	mov 0x2B,r5
	mov.b r12,@(r0,r13)
	jsr @r3
	mov r14,r4
	mov 0x03,r0
	mov.b r0,@(0x6,r14)
	mov r12,r0
	nop 
	mov.b r0,@(0x7,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mov 0x6C,r0
	fldi1 fr3
	fadd fr3,fr3
	fmov fr15,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	mov 0x16,r5
	mov 0x0A,r6
	fdiv fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r11
	mov r14,r4

loc_CE33306:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE33314:
	#data 0x02A4
loc_CE33316:
	#data 0x019E
loc_CE33318:
	#data 0x041C
loc_CE3331A:
	#data 0x01B0
loc_CE3331C:
	#data 0x00C5
loc_CE3331E:
	#data 0x01F7
loc_CE33320:
	#data 0x0130
	#align4

loc_CE33324:
	#data loc_8C034DEE
loc_CE33328:
	#data loc_8C034E8C
loc_CE3332C:
	#data loc_8C042008
loc_CE33330:
	#data loc_8C05264C
loc_CE33334:
	#data loc_8C02FEC4
loc_CE33338:
	#data loc_8C063900
loc_CE3333C:
	#data loc_8C0523D8
loc_CE33340:
	#data 0x40555555
loc_CE33344:
	#data 0x41892492
loc_CE33348:
	#data 0xBF4DB6DB

;==============================================
loc_CE3334C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE333F4,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_CE333F8,pc),r3 ; r3 set to 0x8C052CE2
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
	bt loc_CE333C8
	mov 0x03,r0 ; r0 set to 0x03
	fldi0 fr4
	mov.b r0,@(0x06,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	mov.l @(loc_CE333FC,pc),r3 ; r3 set to 0x8C0511B4
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE33400,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x0C,r6 ; r6 set to 0x0C
	mov 0x16,r5 ; r5 set to 0x16
	jmp @r2
	mov.l @r15+,r14

loc_CE333C8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE333CE:
	mov.w @(loc_CE333EE,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov 0x05,r2 ; r2 set to 0x05
	mov.w @(loc_CE333F0,pc),r0 ; r0 set to 0x328
	mov r14,r4
	mov.l @(loc_CE33404,pc),r1 ; r1 set to 0xCE355D8
	mov.b r2,@(r0,r14)
	mov.b @(0x07,r14),r0
	extu.b r0,r0 ; r0 set to 0x28
	shll2 r0 ; r0 set to 0xA0
	mov.l @(r0,r1),r3 ; r3 ??
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE333EE:
	#data 0x03F8
loc_CE333F0:
	#data 0x0328
	#align4

loc_CE333F4:
	#data loc_8C034DEE
loc_CE333F8:
	#data loc_8C052CE2
loc_CE333FC:
	#data loc_8C0511B4
loc_CE33400:
	#data loc_8C034E8C
loc_CE33404:
	#data loc_CE355D8

;==============================================
loc_CE33408:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mova @(0x118,PC),r0
	mov.w @(0x10E,PC),r14
	fmov @r0,fr14
	mova @(0x11C,PC),r0
	fmov @r0,fr15
	mov r4,r13
	mov 0x16,r0
	mov.l @(0x110,PC),r12
	add r13,r14
	mov.b @(r0,r14),r3
	mova @(0x110,PC),r0
	shll2 r3
	shll r3
	add r12,r3
	mov.w @r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr14,fr3
	fdiv fr15,fr3
	fmov fr3,@r15
	fmov @r0,fr13
	mov 0x16,r0
	mov.b @(r0,r14),r3
	shll2 r3
	shll r3
	add r12,r3
	mov.w @(0x2,r3),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr15,fr3
	mov.l @(0xE8,PC),r3
	mov 0x04,r0
	mov r15,r5
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r13,r4
	mov 0x16,r0
	mov r15,r5
	mov.b @(r0,r14),r2
	shll2 r2
	shll r2
	add r12,r2
	mov.w @(0x4,r2),r0
	mov r0,r3
	lds r3,fpul
	mov 0x16,r0
	float fpul,fr3
	fmul fr14,fr3
	fdiv fr15,fr3
	fmov fr3,@r15
	mov.b @(r0,r14),r3
	shll2 r3
	shll r3
	add r3,r12
	mov.w @(0x6,r12),r0
	mov r0,r3
	lds r3,fpul
	mov.l @(0xB4,PC),r3
	mov 0x04,r0
	float fpul,fr3
	fmul fr13,fr3
	fdiv fr15,fr3
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r13,r4
	mov.w @(0x8C,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt.s loc_ce334c0
	mov 0x00,r12
	mov.w @(0x84,PC),r3
	mov r3,r0
	nop 
	add 0x4C,r0
	mov.l @(0x94,PC),r2
	mov.b @(r0,r13),r5
	add 0x7D,r0
	add r3,r5
	jsr @r2
	mov.l @(r0,r13),r4
	mov.w @(0x6E,PC),r0
	mov.b r12,@(r0,r13)

loc_CE334C0:
	mov 0x16,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x00,r0
	bt loc_ce334e0
	cmp/eq 0x01,r0
	bt loc_ce334f2
	cmp/eq 0x02,r0
	bt loc_ce334e8
	cmp/eq 0x03,r0
	bt loc_ce334e8
	cmp/eq 0x04,r0
	bt loc_ce334e8
	cmp/eq 0x05,r0
	bt loc_ce334f2
	bra loc_ce334f6
	nop 

loc_CE334E0:
	mov 0x16,r0
	mov 0x01,r3
	bra loc_ce334f6
	mov.b r3,@(r0,r14)

loc_CE334E8:
	mov 0x16,r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	bra loc_ce334f6
	mov.b r2,@(r0,r14)

loc_CE334F2:
	mov 0x16,r0
	mov.b r12,@(r0,r14)

loc_CE334F6:
	add 0x0C,r15
	lds.l @r15+,pr
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE33508:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_CE3352C,pc),r4 ; r4 set to 0x2A4
	sts.l pr,@-r15
	add r14,r4 ; r4 ??? bc r14 is ???
	mov.b @(0x0D,r4),r0
	tst r0,r0
	bt loc_CE33550
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_CE3354C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x10,r6 ; r6 set to 0x10
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x16,r5 ; r5 set to 0x16
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE3352C:
	#data 0x02A4
loc_CE3352E:
	#data 0x014B
loc_CE33530:
	#data 0x00FF
	#align4

loc_CE33534:
	#data 0x3FD55555
loc_CE33538:
	#data loc_CE355E0
loc_CE3353c:
	#data 0x43800000
loc_CE33540:
	#data 0x40092492
loc_CE33544:
	#data loc_8C0FDB4E
loc_CE33548:
	#data loc_8C0424A6
loc_CE3354C:
	#data loc_8C034E8C

;----------------------------------------------
loc_CE33550:
	mov.l @(loc_CE33654,pc),r2 ; r2 set to 0x8C034DEE
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE33566
	lds.l @r15+,pr
	mov.l @(loc_CE33658,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE33566:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3356C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.w @(loc_CE33648,pc),r13 ; r13 set to 0x2A4
	mov.l @(loc_CE33654,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	add r14,r13 ; r13 ??? bc r14 is ???
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE335C6
	mov 0x00,r0 ; r0 set to 0x00
	fldi0 fr4
	mov.b r0,@(0x0E,r13)
	mov 0x0D,r6 ; r6 set to 0x0D
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_CE33664,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x16,r5 ; r5 set to 0x16
	add 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x07,r14)
	mov.w @(loc_CE3364A,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mova @(loc_CE3365C,pc),r0  ; r0 set to 0xCE3365C
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mova @(loc_CE33660,pc),r0  ; r0 set to 0xCE33660
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE335C6:
	mov.w @(loc_CE3364C,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r12
	extu.b r12,r3
	tst r3,r3
	bt loc_CE3363C
	mov 0x00,r2 ; r2 set to 0x00
	mov.l @(loc_CE33668,pc),r11 ; r11 set to 0x8C059F64
	mov.b r2,@(r0,r14)
	extu.b r12,r0 ; r0 ??? bc r12 is ???
	cmp/eq 0x3E,r0
	bf loc_CE3360A
	mov.l @(loc_CE3366C,pc),r2 ; r2 set to 0x8C0BE4C4
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r2
	mov r14,r4
	mov.w @(loc_CE3364E,pc),r0 ; r0 set to 0x1B4
	mov 0x11,r2 ; r2 set to 0x11
	mov.l @r13,r13
	mov r14,r5 ; r5 ??? bc r14 is ???
	mov.l r14,@(r0,r13)
	add 0xED,r0 ; r0 set to 0x1A1
	mov.b r12,@(r0,r13)
	add 0x8F,r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	mov.w r3,@(r0,r13)
	mov 0x02,r3 ; r3 set to 0x02
	mov.w @(loc_CE33650,pc),r0 ; r0 set to 0x1F6
	mov.b r2,@(r0,r13)
	add 0x03,r0 ; r0 set to 0x1F9
	mov.b r3,@(r0,r13)
	jsr @r11
	mov r13,r4
	bra loc_CE33628
	nop

loc_CE3360A:
	mov.w @(loc_CE3364E,pc),r0 ; r0 set to 0x1B4
	mov.l @r13,r13
	mov.l @(loc_CE33670,pc),r3 ; r3 set to 0x8C05933C
	mov.l r14,@(r0,r13)
	add 0xED,r0 ; r0 set to 0x1A1
	mov.b r12,@(r0,r14)
	mov.b r12,@(r0,r13)
	jsr @r3
	mov r14,r4
	mov r14,r5
	jsr @r11
	mov r13,r4
	mov.l @(loc_CE33670,pc),r2 ; r2 set to 0x8C05933C
	jsr @r2
	mov r14,r4

loc_CE33628:
	mov r14,r5
	jsr @r11
	mov r13,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_CE33408
	mov.l @r15+,r14

loc_CE3363C:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE33648:
	#data 0x02A4
loc_CE3364A:
	#data 0x041C
loc_CE3364C:
	#data 0x0141
loc_CE3364E:
	#data 0x01B4
loc_CE33650:
	#data 0x01F6
	#align4

loc_CE33654:
	#data loc_8C034DEE
loc_CE33658:
	#data loc_8C051648
loc_CE3365C:
	#data 0x42092492
loc_CE33660:
	#data 0xBF092492
loc_CE33664:
	#data loc_8C034E8C
loc_CE33668:
	#data loc_8C059F64
loc_CE3366C:
	#data loc_8C0BE4C4
loc_CE33670:
	#data loc_8C05933C

;==============================================
loc_CE33674:
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	mov 0x68,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x5C,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x60,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0xFC,PC),r0
	fmov @r0,fr4
	mov.w @(0xEA,PC),r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bf loc_ce336ce
	mov.w @(0xDC,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov.b @(0x7,r4),r0
	add 0x01,r0
	mov.b r0,@(0x7,r4)

loc_CE336CE:
	mov.l @(0xE0,PC),r3
	jmp @r3
	nop 

loc_CE336D4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_CE337A0,pc),r4 ; r4 set to 0x2A4
	mov 0x38,r0 ; r0 set to 0x38
	mov.l r13,@-r15
	add r14,r4 ; r4 ??? bc r14 is ???
	sts.l pr,@-r15
	mov.l @r4,r13
	fmov.s @(r0,r14),fr2
	fmov.s @(r0,r13),fr3
	fcmp/gt fr3,fr2
	bf loc_CE3371A
	mov.b @(0x07,r14),r0
	mov 0x16,r5 ; r5 set to 0x16
	mov.l @(loc_CE337B4,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x11,r6 ; r6 set to 0x11
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x07,r14)
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFF
	mov.b r0,@(0x0E,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	fmov.s fr3,@(r0,r13)
	jsr @r3
	mov r14,r4
	mov r13,r5 ; r5 ??? bc r13 is ???
	mov.w @(loc_CE337A2,pc),r2 ; r2 set to 0xC5
	mov.w @(loc_CE337A4,pc),r0 ; r0 set to 0x1F7
	mov r14,r4
	mov.l @(loc_CE337B8,pc),r3 ; r3 set to 0x8C05248E
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE3371A:
	lds.l @r15+,pr
	mov.l @(loc_CE337B0,pc),r2 ; r2 set to 0x8C034DEE
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE33726:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x38,r0 ; r0 set to 0x38
	mov.l r12,@-r15
	mov.w @(loc_CE337A0,pc),r12 ; r12 set to 0x2A4
	sts.l pr,@-r15
	add r14,r12 ; r12 ??? bc r14 is ???
	fmov.s @(r0,r14),fr3
	mov.l @r12,r4
	mov.l @(loc_CE337B0,pc),r3 ; r3 set to 0x8C034DEE
	fmov.s fr3,@(r0,r4)
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE337A6,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_CE33804
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_CE337BC,pc),r13 ; r13 set to 0x8C059F64
	cmp/eq 0x3F,r0
	bf loc_CE337C4
	mov.b @(0x07,r14),r0
	mov 0x02,r5 ; r5 set to 0x02
	mov.l @(loc_CE337C0,pc),r3 ; r3 set to 0x8C0BE4C4
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE337A8,pc),r0 ; r0 set to 0x1C8
	mov 0x3F,r3 ; r3 set to 0x3F
	mov r14,r5 ; r5 ??? bc r14 is ???
	mov.l @(r0,r14),r12
	add 0xEC,r0 ; r0 set to 0x1B4
	mov.l r14,@(r0,r12)
	add 0xED,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r12)
	add 0x8F,r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	mov 0x01,r3 ; r3 set to 0x01
	mov.w r2,@(r0,r12)
	mov 0x02,r2 ; r2 set to 0x02
	mov.w @(loc_CE337AA,pc),r0 ; r0 set to 0x1F6
	mov.b r3,@(r0,r12)
	add 0x03,r0 ; r0 set to 0x1F9
	mov.b r2,@(r0,r12)
	jsr @r13
	mov r12,r4
	mov r14,r5
	jsr @r13
	mov r12,r4
	bsr loc_CE33408
	mov r14,r4
	mov.l @(loc_CE337B4,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x16,r5 ; r5 set to 0x16
	mov 0x12,r6 ; r6 set to 0x12
	jsr @r2
	mov r14,r4
	bra loc_CE337F8
	nop

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE3379E:
	#data 0x041C
loc_CE337A0:
	#data 0x02A4
loc_CE337A2:
	#data 0x00C5
loc_CE337A4:
	#data 0x01F7
loc_CE337A6:
	#data 0x0141
loc_CE337A8:
	#data 0x01C8
loc_CE337AA:
	#data 0x01F6
	#align4

loc_CE337AC:
	#data 0x44092492
loc_CE337B0:
	#data loc_8C034DEE
loc_CE337B4:
	#data loc_8C034E8C
loc_CE337B8:
	#data loc_8C05248E
loc_CE337BC:
	#data loc_8C059F64
loc_CE337C0:
	#data loc_8C0BE4C4

;----------------------------------------------
loc_CE337C4:
	mov.w @(loc_CE338F6,pc),r0 ; r0 set to 0x1B4
	mov.l @r12,r12
	mov.l r14,@(r0,r12)
	add 0x8D,r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	add 0x60,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0xA0,r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	add 0x60,r0 ; r0 set to 0x1A1
	mov.l @(loc_CE33900,pc),r3 ; r3 set to 0x8C05933C
	mov.b r2,@(r0,r12)
	jsr @r3
	mov r14,r4
	mov r14,r5
	jsr @r13
	mov r12,r4
	mov.l @(loc_CE33900,pc),r2 ; r2 set to 0x8C05933C
	jsr @r2
	mov r14,r4
	mov r14,r5
	jsr @r13
	mov r12,r4
	mov.w @(loc_CE338F8,pc),r0 ; r0 set to 0x141
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14)

loc_CE337F8:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_CE33408
	mov.l @r15+,r14

loc_CE33804:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3380E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xF0,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce33882
	mov.l @(0xE8,PC),r3
	mov 0x00,r6
	mov r6,r5
	jsr @r3
	mov r14,r4
	mov.b @(0x7,r14),r0
	mov 0x00,r3
	mov r3,r2
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov.w @(0xC2,PC),r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	mov.w @(0xBC,PC),r0
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r2,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mova @(0xBC,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xB4,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x96,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce33876
	mov 0x13,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE33876:
	lds.l @r15+,pr
	mov.l @(0x9C,PC),r3
	mov 0x16,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE33882:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE33888:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE33904,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_CE3391C,pc),r3 ; r3 set to 0x8C052CE2
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
	bt loc_CE338F0
	mov.b @(0x07,r14),r0
	mov.l @(loc_CE33920,pc),r3 ; r3 set to 0x8C0511B4
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x07,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE33918,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x14,r6 ; r6 set to 0x14
	mov 0x16,r5 ; r5 set to 0x16
	jmp @r2
	mov.l @r15+,r14

loc_CE338F0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE338F6:
	#data 0x01B4
loc_CE338F8:
	#data 0x0141
loc_CE338FA:
	#data 0x03F9
loc_CE338FC:
	#data 0x0327
loc_CE338FE:
	#data 0x0130
	#align4

loc_CE33900:
	#data loc_8C05933C
loc_CE33904:
	#data loc_8C034DEE
loc_CE33908:
	#data loc_8C02FEC4
loc_CE3390c:
	#data 0x40555555
loc_CE33910:
	#data 0xC0892492
loc_CE33914:
	#data 0xBF892492
loc_CE33918:
	#data loc_8C034E8C
loc_CE3391C:
	#data loc_8C052CE2
loc_CE33920:
	#data loc_8C0511B4

;==============================================
loc_CE33924:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE33A4C,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.l @(loc_CE33A58,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE33950
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov 0x00,r0 ; r0 set to 0x00
	mov r14,r4
	mov.b r0,@(0x0C,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE33A5C,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	mov.l @r15+,r14

loc_CE33950:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE33958:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_CE33A4E,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r4 ; r4 set to 0x02
	mov 0x05,r3 ; r3 set to 0x05
	mov.l @(loc_CE33A60,pc),r1 ; r1 set to 0xCE35610
	mov.b r4,@(r0,r14)
	mov 0x01,r2 ; r2 set to 0x01
	mov.w @(loc_CE33A50,pc),r0 ; r0 set to 0x328
	mov.b r3,@(r0,r14)
	mov.w @(loc_CE33A52,pc),r0 ; r0 set to 0x1EA
	mov.b r2,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x1ED
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

loc_CE33986:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r0
	mov r4,r14
	mov 0x68,r1
	mov.w @(0xB6,PC),r3
	add r14,r1
	add r14,r3
	mov.l r3,@r15
	fmov @(r0,r14),fr0
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fadd fr0,fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov @r1,fr3
	mov 0x60,r1
	fmov @(r0,r14),fr2
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @r1,fr3
	mov 0x6C,r1
	fmov @(r0,r14),fr2
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_ce339d8
	fcmp/gt fr3,fr0
	bt loc_ce339e4

loc_CE339D8:
	fldi0 fr3
	fcmp/gt fr3,fr4
	bf loc_ce339ec
	fldi0 fr3
	fcmp/gt fr0,fr3
	bf loc_ce339ec

loc_CE339E4:
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)

loc_CE339EC:
	mov.l @(0x68,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce33a0a
	mov.l @r15,r3
	mov 0x00,r0
	mov r14,r4
	mov.b r0,@(0xC,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x54,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_CE33A0A:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE33A12:
	mov r4,r3
	mov.l @(loc_CE33A64,pc),r1 ; r1 set to 0xCE35630
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE33A24:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(loc_CE33A4E,pc),r0 ; r0 set to 0x3F8
	mov r4,r14
	mov.w @(loc_CE33A4C,pc),r3 ; r3 set to 0x2A4
	mov 0x02,r2 ; r2 set to 0x02
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov 0x05,r3 ; r3 set to 0x05
	mov.b r2,@(r0,r14)
	mov.w @(loc_CE33A50,pc),r0 ; r0 set to 0x328
	mov.b r3,@(r0,r14)
	mov.w @(loc_CE33A54,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_CE33A68
	bra loc_CE33A6A
	mov 0x02,r2

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE33A4C:
	#data 0x02A4
loc_CE33A4E:
	#data 0x03F8
loc_CE33A50:
	#data 0x0328
loc_CE33A52:
	#data 0x01EA
loc_CE33A54:
	#data 0x0255
	#align4

loc_CE33A58:
	#data loc_8C034DEE
loc_CE33A5C:
	#data loc_8C051648
loc_CE33A60:
	#data loc_CE35610
loc_CE33A64:
	#data loc_CE35630

;----------------------------------------------
loc_CE33A68:
	mov 0x00,r2

loc_CE33A6A:
	mov.w @(0xFC,PC),r0
	mov.l @(0x108,PC),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce33af0
	mov.w @(0xEE,PC),r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov r4,r0
	nop 
	mov.b r0,@(0x7,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1C,r14)
	mova @(0xE4,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xE0,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xC6,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_ce33abc
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE33ABC:
	mov.w @(0xB0,PC),r0
	mov 0x02,r3
	mov 0x16,r5
	mov.b r3,@(r0,r14)
	mov 0x07,r6
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @r15,r2
	mov 0x1C,r0
	mov 0x01,r3
	mov r15,r5
	mov.b r3,@(r0,r2)
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	mov 0x04,r0
	mov r3,r6
	mov.l @(0xB0,PC),r3
	fmov fr3,@(r0,r15)
	mova @(0xA8,PC),r0
	fmov @r0,fr3
	mov 0x08,r0
	add 0x04,r5
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4

loc_CE33AF0:
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE33AF8:
	mov.w @(0x76,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_ce33b14
	mov.w @(0x60,PC),r0
	mov 0x10,r3
	mov.w @(0x64,PC),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)

loc_CE33B14:
	mov.b @(0x7,r14),r0
	mov.l @(0x7C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x52,PC),r0
	mov 0x3B,r2
	mov 0x00,r4
	mov.l @(0x70,PC),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov 0x16,r5
	mov.b @(0x2,r14),r0
	mov 0x0E,r6
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x38,PC),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce33a24
	mov.l @r15+,r14

loc_CE33B58:
	mov r4,r3
	mov.l @(loc_CE33B9C,pc),r1 ; r1 set to 0xCE35640
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce33b6a:
	#data 0x03F1
loc_ce33b6c:
	#data 0x03F0
loc_ce33b6e:
	#data 0x0130
loc_ce33b70:
	#data 0x01F9
loc_ce33b72:
	#data 0x0255
loc_ce33b74:
	#data 0x00FF
loc_ce33b76:
	#data 0x01A1
	#align4

loc_ce33b78:
	#data loc_8C034DEE
loc_ce33b7c:
	#data 0x41555555
loc_ce33b80:
	#data 0xBDD55555
loc_ce33b84:
	#data loc_8C034E8C
loc_ce33b88:
	#data 0xC1D55555
loc_ce33b8c:
	#data 0x43092492
loc_ce33b90:
	#data loc_8C050834
loc_ce33b94:
	#data loc_8C05218A
loc_ce33b98:
	#data loc_8C2896B0
loc_CE33B9C:
	#data loc_CE35640

;==============================
loc_CE33BA0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_CE33CB8,pc),r3 ; r3 set to 0x8C034DEE
	mov r4,r14
	mov.w @(loc_CE33CAA,pc),r13 ; r13 set to 0x2A4
	jsr @r3
	add r14,r13 ; r13 ??? bc r14 is ???
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_CE33CC0,pc),r11 ; r11 set to 0x8C034E8C
	add r14,r1 ; r1 ??? bc r14 is ???
	fldi0 fr15
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
	mova @(loc_CE33CBC,pc),r0  ; r0 set to 0xCE33CBC
	fmov.s @r0,fr14
	mov.w @(loc_CE33CAC,pc),r0 ; r0 set to 0x19E
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt/s loc_CE33CE0
	mov 0x00,r12 ; r12 set to 0x00
	mov.l @(loc_CE33CC4,pc),r3 ; r3 set to 0x8C042008
	mov 0x1C,r0 ; r0 set to 0x1C
	mov 0x2B,r5 ; r5 set to 0x2B
	mov.b r12,@(r0,r13)
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE33CAC,pc),r0 ; r0 set to 0x19E
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	tst 0x7F,r0
	bf loc_CE33C6A
	mov.w @(loc_CE33CAE,pc),r0 ; r0 set to 0x1B0
	mov.l @(loc_CE33CC8,pc),r3 ; r3 set to 0x8C05264C
	mov.l @(r0,r14),r2
	mov.l r2,@r15
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_CE33C6A
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r3)
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x06,r14)
	mov r12,r0 ; r0 set to 0x00
	nop
	mov.l @(loc_CE33CCC,pc),r3 ; r3 set to 0x8C02FEC4
	mov 0x05,r6 ; r6 set to 0x05
	mov.b r0,@(0x07,r14)
	mov r6,r5 ; r5 set to 0x05
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE33CAE,pc),r0 ; r0 set to 0x1B0
	mov.l @(r0,r14),r2
	mov.l r2,@r13
	mov r12,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x0D,r13)
	mov 0x16,r0 ; r0 set to 0x16
	mov.l @(loc_CE33CD0,pc),r3 ; r3 set to 0x8C063900
	mov 0x01,r5 ; r5 set to 0x01
	mov.b r12,@(r0,r13)
	jsr @r3
	mov r14,r4
	mov 0x16,r5 ; r5 set to 0x16
	mov 0x15,r6 ; r6 set to 0x15
	jsr @r11
	mov r14,r4
	mov.w @(loc_CE33CB2,pc),r0 ; r0 set to 0x1F7
	mov r14,r4
	mov.w @(loc_CE33CB0,pc),r2 ; r2 set to 0xC5
	mov.b r2,@(r0,r14)
	add 0xB9,r0 ; r0 set to 0x1B0
	mov.l @(r0,r14),r5 ; r5 ??? bc r14 is ???
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE33CD4,pc),r3 ; r3 set to 0x8C0523D8
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r11 ; r11 ??? bc r15 is ???
	mov.l @r15+,r12 ; r12 ??? bc r15 is ???
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE33C6A:
	mov 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mova @(0x60,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fmov fr14,@(r0,r14)
	mov.w @(0x2A,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce33ca0
	mov 0x0B,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE33CA0:
	mov 0x16,r5
	jsr @r11
	mov r14,r4
	bra loc_ce33d22
	nop 
 
;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE33CAA:
	#data 0x02A4
loc_CE33CAC:
	#data 0x019E
loc_CE33CAE:
	#data 0x01B0
loc_CE33CB0:
	#data 0x00C5
loc_CE33CB2:
	#data 0x01F7
loc_CE33CB4:
	#data 0x0130
	#align4

loc_CE33CB8:
	#data loc_8C034DEE
loc_CE33CBC:
	#data 0xBF4DB6DB
loc_CE33CC0:
	#data loc_8C034E8C
loc_CE33CC4:
	#data loc_8C042008
loc_CE33CC8:
	#data loc_8C05264C
loc_CE33CCC:
	#data loc_8C02FEC4
loc_CE33CD0:
	#data loc_8C063900
loc_CE33CD4:
	#data loc_8C0523D8
loc_CE33CD8:
	#data 0x40555555
loc_CE33CDc:
	#data 0x41892492

;----------------------------------------------
loc_CE33CE0:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_ce33d22
	mov.b @(0x7,r14),r0
	mov 0x2B,r5
	mov.l @(0x13C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov 0x1C,r0
	mov.b r12,@(r0,r13)
	jsr @r3
	mov r14,r4
	fldi1 fr3
	fadd fr3,fr3
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	mov 0x01,r5
	mov 0x09,r6
	fdiv fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mova @(0x120,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	fmov fr2,@(r0,r14)
	mov 0x6C,r0
	fmov fr14,@(r0,r14)
	jsr @r11
	mov r14,r4

loc_CE33D22:
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE33D34:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE33E38,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_CE33E3C,pc),r3 ; r3 set to 0x8C052CE2
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
	bt loc_CE33DB0
	mov 0x03,r0 ; r0 set to 0x03
	fldi0 fr4
	mov.b r0,@(0x06,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	mov.l @(loc_CE33E40,pc),r3 ; r3 set to 0x8C0511B4
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE33E44,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x0C,r6 ; r6 set to 0x0C
	mov 0x16,r5 ; r5 set to 0x16
	jmp @r2
	mov.l @r15+,r14

loc_CE33DB0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE33DB6:
	mov.w @(loc_CE33E2A,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov 0x05,r2 ; r2 set to 0x05
	mov.w @(loc_CE33E2C,pc),r0 ; r0 set to 0x328
	mov r14,r4
	mov.l @(loc_CE33E48,pc),r1 ; r1 set to 0xCE35648
	mov.b r2,@(r0,r14)
	mov.b @(0x07,r14),r0
	extu.b r0,r0 ; r0 set to 0x28
	shll2 r0 ; r0 set to 0xA0
	mov.l @(r0,r1),r3 ; r3 ??
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_CE33DD6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE33E38,pc),r3 ; r3 set to 0x8C034DEE
	mov.w @(loc_CE33E2E,pc),r13 ; r13 set to 0x2A4
	jsr @r3
	add r14,r13 ; r13 ??? bc r14 is ???
	mov.b @(0x0D,r13),r0
	tst r0,r0
	bt loc_CE33E22
	mov.b @(0x07,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	fldi0 fr4
	mov 0x16,r6 ; r6 set to 0x16
	add 0x01,r0
	mov r6,r5 ; r5 set to 0x16
	mov.b r0,@(0x07,r14)
	mov 0x10,r0 ; r0 set to 0x10
	mov.b r3,@(r0,r13)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mova @(loc_CE33E4C,pc),r0  ; r0 set to 0xCE33E4C
	fmov.s @r0,fr3 ; r3 ??
	mov 0x60,r0 ; r0 set to 0x60
	mov.l @(loc_CE33E44,pc),r3 ; r3 set to 0x8C034E8C
	mov r14,r4
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE33E22:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE33E2A:
	#data 0x03F8
loc_CE33E2C:
	#data 0x0328
loc_CE33E2E:
	#data 0x02A4
	#align4

loc_CE33E30:
	#data loc_8C042008
loc_CE33E34:
	#data 0xC0092492
loc_CE33E38:
	#data loc_8C034DEE
loc_CE33E3C:
	#data loc_8C052CE2
loc_CE33E40:
	#data loc_8C0511B4
loc_CE33E44:
	#data loc_8C034E8C
loc_CE33E48:
	#data loc_CE35648
loc_CE33E4C:
	#data 0x3F092492

;==============================================
loc_CE33E50:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.w @(loc_CE33F64,pc),r12 ; r12 set to 0x2A4
	mov.l @(loc_CE33F70,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	add r14,r12 ; r12 ??? bc r14 is ???
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE33E84
	mov.b @(0x07,r14),r0
	mov 0x17,r6 ; r6 set to 0x17
	mov.l @(loc_CE33F74,pc),r3 ; r3 set to 0x8C034E8C
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x16,r5 ; r5 set to 0x16
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE33E84:
	mov.w @(loc_CE33F66,pc),r0 ; r0 set to 0x141
	mov 0x00,r3 ; r3 set to 0x00
	mov.b @(r0,r14),r4
	extu.b r4,r2
	tst r2,r2
	bt/s loc_CE33F10
	mov.b r3,@(r0,r14)
	extu.b r4,r0 ; r0 ??? bc r4 is ???
	mov.l @(loc_CE33F78,pc),r11 ; r11 set to 0x8C059F64
	cmp/eq 0x42,r0
	bf loc_CE33EE8
	mov.w @(loc_CE33F68,pc),r0 ; r0 set to 0x1B4
	mov 0x11,r2 ; r2 set to 0x11
	mov.l @r12,r13
	mov 0x0C,r6 ; r6 set to 0x0C
	mov r6,r5 ; r5 set to 0x0C
	mov.l r14,@(r0,r13)
	mov.w @(loc_CE33F6A,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov.w r3,@(r0,r13)
	mov 0x02,r3 ; r3 set to 0x02
	mov.w @(loc_CE33F6C,pc),r0 ; r0 set to 0x1F6
	mov.b r2,@(r0,r13)
	add 0x03,r0 ; r0 set to 0x1F9
	mov.b r3,@(r0,r13)
	add 0xA8,r0 ; r0 set to 0x1A1
	mov.b r4,@(r0,r13)
	mov 0x10,r0 ; r0 set to 0x10
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFF
	mov.b r3,@(r0,r12)
	mov.l @(loc_CE33F7C,pc),r3 ; r3 set to 0x8C02FEC4
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE33F80,pc),r2 ; r2 set to 0x8C0BE4C4
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r2
	mov r14,r4
	mov r14,r5 ; r5 ??? bc r14 is ???
	jsr @r11
	mov r13,r4
	mov r14,r5
	jsr @r11
	mov r13,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r11 ; r11 ??? bc r15 is ???
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_CE33408
	mov.l @r15+,r14

loc_CE33EE8:
	mov.w @(0x7C,PC),r0
	mov.l @r12,r13
	mov.l @(0x94,PC),r3
	mov.l r14,@(r0,r13)
	add 0xED,r0
	mov.b r4,@(r0,r14)
	mov.b r4,@(r0,r13)
	jsr @r3
	mov r14,r4
	mov r14,r5
	jsr @r11
	mov r13,r4
	mov.l @(0x80,PC),r2
	jsr @r2
	mov r14,r4
	mov r14,r5
	jsr @r11
	mov r13,r4
	bsr loc_ce33408
	mov r14,r4

loc_CE33F10:
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
	mov 0x10,r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bf loc_ce33f58
	mov 0x38,r0
	mov.l @r12,r4
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)

loc_CE33F58:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE33F64:
	#data 0x02A4
loc_CE33F66:
	#data 0x0141
loc_CE33F68:
	#data 0x01B4
loc_CE33F6A:
	#data 0x0130
loc_CE33F6C:
	#data 0x01F6
	#align4

loc_CE33F70:
	#data loc_8C034DEE
loc_CE33F74:
	#data loc_8C034E8C
loc_CE33F78:
	#data loc_8C059F64
loc_CE33F7C:
	#data loc_8C02FEC4
loc_CE33F80:
	#data loc_8C0BE4C4
loc_CE33F84:
	#data loc_8C05933C

;==============================================
loc_CE33F88:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.w @(loc_CE340D2,pc),r12 ; r12 set to 0x2A4
	mov.l @(loc_CE340E4,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	add r14,r12 ; r12 ??? bc r14 is ???
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE33FD2
	mov.b @(0x07,r14),r0
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(loc_CE340E8,pc),r3 ; r3 set to 0x8C02FEC4
	mov r6,r5 ; r5 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE340D4,pc),r0 ; r0 set to 0x130
	mov 0x18,r6 ; r6 set to 0x18
	mov.w @(loc_CE340D4,pc),r1 ; r1 set to 0x130
	mov r14,r4
	mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov 0x16,r5 ; r5 set to 0x16
	add r14,r1 ; r1 ??? bc r14 is ???
	mov.l @(loc_CE340EC,pc),r3 ; r3 set to 0x8C034E8C
	xor 0x01,r0
	mov.w r0,@r1
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE33FD2:
	mov.w @(0x100,PC),r2
	mov.l @(0x118,PC),r13
	add r14,r2
	mov.b @(0x1,r2),r0
	tst r0,r0
	bt loc_ce34008
	mov.w @(0xF4,PC),r3
	mov 0x00,r0
	add r14,r3
	mov.b r0,@(0x1,r3)
	mov.w @(0xF0,PC),r0
	mov.w @(0xEC,PC),r3
	mov.b r3,@(r0,r14)
	mov.l @(0x104,PC),r3
	mov.l @r12,r5
	jsr @r3
	mov r14,r4
	mov.l @r12,r11
	mov r14,r5
	jsr @r13
	mov r11,r4
	mov r14,r5
	jsr @r13
	mov r11,r4
	mov 0x16,r0
	mov 0x02,r2
	mov.b r2,@(r0,r12)

loc_CE34008:
	mov.w @(0xD0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce34052
	mov.w @(0xCA,PC),r0
	mov.l @r12,r12
	mov.l r14,@(r0,r12)
	add 0x8D,r0
	mov.b @(r0,r14),r3
	add 0x60,r0
	mov.b r3,@(r0,r12)
	add 0xA0,r0
	mov.b @(r0,r14),r2
	add 0x60,r0
	mov 0x00,r3
	mov.b r2,@(r0,r14)
	add 0xA0,r0
	mov.b r3,@(r0,r14)
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov r14,r4
	mov r14,r5
	jsr @r13
	mov r12,r4
	mov.l @(0xBC,PC),r2
	jsr @r2
	mov r14,r4
	mov r14,r5
	jsr @r13
	mov r12,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_ce33408
	mov.l @r15+,r14

loc_CE34052:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3405E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x68,PC),r3
	mov r4,r14
	mov 0x00,r13
	add r14,r3
	mov.l r3,@r15
	mov.l @(0x70,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce34108
	mov.w @(0x60,PC),r0
	mov.b r13,@(r0,r14)
	add 0xFF,r0
	mov.b r13,@(r0,r14)
	mov.w @(0x5A,PC),r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0x5C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x20,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce340c2
	mov 0x13,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE340C2:
	mov r14,r4
	mov 0x16,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x20,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE340D2:
	#data 0x02A4
loc_CE340D4:
	#data 0x0130
loc_ce340d6:
	#data 0x0150
loc_ce340d8:
	#data 0x00C5
loc_ce340da:
	#data 0x01F7
loc_ce340dc:
	#data 0x0141
loc_ce340de:
	#data 0x01B4
loc_ce340e0:
	#data 0x03F9
loc_ce340e2:
	#data 0x0327
	#align4

loc_CE340E4:
	#data loc_8C034DEE
loc_CE340E8:
	#data loc_8C02FEC4
loc_CE340EC:
	#data loc_8C034E8C
loc_ce340f0:
	#data loc_8C059F64
loc_ce340f4:
	#data loc_8C05248E
loc_ce340f8:
	#data loc_8C05933C
loc_ce340fc:
	#data 0x40555555
loc_ce34100:
	#data 0xC0892492
loc_ce34104:
	#data 0xBF892492

;==============================================
loc_CE34108:
	mov.w @(0x124,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce34156
	mov.l @(0x12C,PC),r3
	mov 0x02,r5
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @r15,r13
	mov 0x01,r2
	mov.w @(0x110,PC),r0
	mov r14,r5
	mov.l @r13,r13
	mov.l r14,@(r0,r13)
	mov.w @(0x10A,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@(r0,r13)
	mov 0x02,r3
	mov.w @(0x104,PC),r0
	mov.b r2,@(r0,r13)
	add 0x03,r0
	mov.b r3,@(r0,r13)
	add 0xA8,r0
	mov.l @(0x108,PC),r3
	mov 0x44,r2
	mov.b r2,@(r0,r13)
	jsr @r3
	mov r13,r4
	mov.l @(0x100,PC),r2
	mov r14,r5
	jsr @r2
	mov r13,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_ce33408
	mov.l @r15+,r14

loc_CE34156:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE34160:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE34248,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_CE3424C,pc),r3 ; r3 set to 0x8C052CE2
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
	bt loc_CE341C8
	mov.b @(0x07,r14),r0
	mov.l @(loc_CE34250,pc),r3 ; r3 set to 0x8C0511B4
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x07,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE34254,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x14,r6 ; r6 set to 0x14
	mov 0x16,r5 ; r5 set to 0x16
	jmp @r2
	mov.l @r15+,r14

loc_CE341C8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE341CE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_CE34238,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.l @(loc_CE34248,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE341FA
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov 0x00,r0 ; r0 set to 0x00
	mov r14,r4
	mov.b r0,@(0x0C,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_CE34258,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	mov.l @r15+,r14

loc_CE341FA:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE34202:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_CE3423A,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r4 ; r4 set to 0x02
	mov 0x05,r3 ; r3 set to 0x05
	mov.l @(loc_CE3425C,pc),r1 ; r1 set to 0xCE35650
	mov.b r4,@(r0,r14)
	mov 0x01,r2 ; r2 set to 0x01
	mov.w @(loc_CE3423C,pc),r0 ; r0 set to 0x328
	mov.b r3,@(r0,r14)
	mov.w @(loc_CE3423E,pc),r0 ; r0 set to 0x1EA
	mov.b r2,@(r0,r14)
	add 0x03,r0 ; r0 set to 0x1ED
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE34230:
	#data 0x0141
loc_CE34232:
	#data 0x01B4
loc_CE34234:
	#data 0x0130
loc_CE34236:
	#data 0x01F6
loc_CE34238:
	#data 0x02A4
loc_CE3423A:
	#data 0x03F8
loc_CE3423C:
	#data 0x0328
loc_CE3423E:
	#data 0x01EA
	#align4

loc_CE34240:
	#data loc_8C0BE4C4
loc_CE34244:
	#data loc_8C059F64
loc_CE34248:
	#data loc_8C034DEE
loc_CE3424C:
	#data loc_8C052CE2
loc_CE34250:
	#data loc_8C0511B4
loc_CE34254:
	#data loc_8C034E8C
loc_CE34258:
	#data loc_8C051648
loc_CE3425C:
	#data loc_CE35650

;==============================================
loc_CE34260:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r0
	mov r4,r14
	mov 0x68,r1
	mov.w @(0x136,PC),r3
	add r14,r1
	add r14,r3
	mov.l r3,@r15
	fmov @(r0,r14),fr0
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fadd fr0,fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov @r1,fr3
	mov 0x60,r1
	fmov @(r0,r14),fr2
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @r1,fr3
	mov 0x6C,r1
	fmov @(r0,r14),fr2
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_ce342b2
	fcmp/gt fr3,fr0
	bt loc_ce342be

loc_CE342B2:
	fldi0 fr3
	fcmp/gt fr3,fr4
	bf loc_ce342c6
	fldi0 fr3
	fcmp/gt fr0,fr3
	bf loc_ce342c6

loc_CE342BE:
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)

loc_CE342C6:
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce342e4
	mov.l @r15,r3
	mov 0x00,r0
	mov r14,r4
	mov.b r0,@(0xC,r3)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xD4,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_CE342E4:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE342EC:
	mov r4,r3
	mov.l @(loc_CE343B8,pc),r1 ; r1 set to 0xCE35668
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE342FE:
	mov r4,r3
	mov.l @(loc_CE343BC,pc),r1 ; r1 set to 0xCE35678
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE34310:
	mov.l r14,@-r15
	mov r4,r14
	fldi0 fr4
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov r13,r5 ; r5 set to 0x00
	mov.l @(loc_CE343C0,pc),r3 ; r3 set to 0x8C035162
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
	mov.w @(loc_CE343A8,pc),r0 ; r0 set to 0x1F9
	mov.b r13,@(r0,r14)
	mov.w @(loc_CE343AA,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE343C4,pc),r2 ; r2 set to 0x8C05218A
	jsr @r2
	mov r14,r4
	mov.l @(loc_CE343C8,pc),r3 ; r3 set to 0x8C05115A
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE343AC,pc),r0 ; r0 set to 0x1A1
	mov 0x3A,r2 ; r2 set to 0x3A
	mov.l @(loc_CE343CC,pc),r3 ; r3 set to 0x8C2896B0
	mov 0x11,r6 ; r6 set to 0x11
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
	mov.l @(loc_CE343D0,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r2
	mov.l @r15+,r14

loc_CE34386:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_CE343B0,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE343D4
	mov.l @(loc_CE343B4,pc),r3 ; r3 set to 0x8C051648
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE343A6:
	#data 0x02A4
loc_CE343A8:
	#data 0x01F9
loc_CE343AA:
	#data 0x041C
loc_CE343AC:
	#data 0x01A1
	#align4

loc_CE343B0:
	#data loc_8C034DEE
loc_CE343B4:
	#data loc_8C051648
loc_CE343B8:
	#data loc_CE35668
loc_CE343BC:
	#data loc_CE35678
loc_CE343C0:
	#data loc_8C035162
loc_CE343C4:
	#data loc_8C05218A
loc_CE343C8:
	#data loc_8C05115A
loc_CE343CC:
	#data loc_8C2896B0
loc_CE343D0:
	#data loc_8C034E8C

;----------------------------------------------
loc_CE343D4:
	mov.w @(0x114,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce343f6
	mov 0x00,r3
	mov r15,r5
	mov.b r3,@(r0,r14)
	mova @(0x118,PC),r0
	fmov @r0,fr3
	mova @(0x118,PC),r0
	mov.l @(0x118,PC),r3
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4

loc_CE343F6:
	mov.w @(0xF4,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce34406
	mov.l @(0x108,PC),r3
	mov 0x16,r5
	jsr @r3
	mov r14,r4

loc_CE34406:
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE3440E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	mov.w @(loc_CE344F0,pc),r4 ; r4 set to 0x2A4
	sts.l pr,@-r15
	add r14,r4 ; r4 ??? bc r14 is ???
	mov r13,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x0F,r4)
	mov 0x04,r3 ; r3 set to 0x04
	mov.b @(0x06,r14),r0
	mov 0x17,r2 ; r2 set to 0x17
	fldi0 fr3
	mov 0x16,r5 ; r5 set to 0x16
	add 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x06,r14)
	mov.w @(loc_CE344F2,pc),r0 ; r0 set to 0x1FC
	mov.b r13,@(r0,r14)
	mov.w @(loc_CE344F4,pc),r0 ; r0 set to 0x158
	mov.b r3,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r2,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr3,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fldi1 fr3
	fadd fr3,fr3 ; r3 ??
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	mov.l @(loc_CE34508,pc),r3 ; r3 set to 0x8C04223A
	fdiv fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_CE3450C,pc),r0  ; r0 set to 0xCE3450C
	fmov.s @r0,fr2
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_CE344F2,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_CE3446A
	mov.w @(loc_CE344F6,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_CE34510,pc),r3 ; r3 set to 0xCE352A8
	bra loc_CE34470
	mov.l r3,@(r0,r14)

loc_CE3446A:
	mov.w @(0x88,PC),r0
	mov.l @(0xA4,PC),r1
	mov.l r1,@(r0,r14)

loc_CE34470:
	mov.w @(0x84,PC),r0
	mov 0x02,r3
	mov 0x0C,r5
	mov.b r3,@(r0,r14)
	add 0x05,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0x94,PC),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x5A,PC),r0
	mov.l @(0x80,PC),r2
	mov.b @(r0,r14),r6
	jsr @r2
	mov r14,r4
	mov.w @(0x56,PC),r0
	mov.b @(r0,r14),r0
	tst 0xF0,r0
	bt loc_ce344b0
	mov.w @(0x4E,PC),r0
	mov.b @(r0,r14),r2
	add 0xF0,r2
	mov.b r2,@(r0,r14)

loc_CE344B0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE344B8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE34520,pc),r3 ; r3 set to 0x8C034DEE
	mov.w @(loc_CE344F0,pc),r13 ; r13 set to 0x2A4
	jsr @r3
	add r14,r13 ; r13 ??? bc r14 is ???
	mov.l @(loc_CE34524,pc),r2 ; r2 set to 0x8C04FEA8
	jsr @r2
	mov r14,r4
	mov.l @(loc_CE34528,pc),r3 ; r3 set to 0x8C050048
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE3452C,pc),r2 ; r2 set to 0x8C052CE2
	jsr @r2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE34534
	lds.l @r15+,pr
	mov.l @(loc_CE34530,pc),r2 ; r2 set to 0x8C052DAC
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE344EC:
	#data 0x0141
loc_CE344EE:
	#data 0x014B
loc_CE344F0:
	#data 0x02A4
loc_CE344F2:
	#data 0x01FC
loc_CE344F4:
	#data 0x0158
loc_CE344F6:
	#data 0x03F4
loc_CE344F8:
	#data 0x01A7
loc_CE344FA:
	#data 0x01D6
	#align4

loc_CE344FC:
	#data 0xC2555555
loc_CE34500:
	#data 0x43092492
loc_CE34504:
	#data loc_8C050EA4
loc_CE34508:
	#data loc_8C04223A
loc_CE3450C:
	#data 0xBECDB6DB
loc_CE34510:
	#data loc_CE352A8
loc_CE34514:
	#data loc_CE352C0
loc_CE34518:
	#data loc_8C2896B0
loc_CE3451C:
	#data loc_8C034E8C
loc_CE34520:
	#data loc_8C034DEE
loc_CE34524:
	#data loc_8C04FEA8
loc_CE34528:
	#data loc_8C050048
loc_CE3452C:
	#data loc_8C052CE2
loc_CE34530:
	#data loc_8C052DAC

;==============================================
loc_CE34534:
	mov.b @(0xF,r13),r0
	mov 0x02,r3
	cmp/ge r3,r0
	bt loc_ce3457e
	mov.w @(0x14C,PC),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_ce3457e
	mov.w @(0x146,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce3457e
	mov 0x00,r4
	mov.w @(0x13E,PC),r1
	mov.b r4,@(r0,r14)
	mov.b @(0xF,r13),r0
	add r14,r1
	mov.l @(0x140,PC),r2
	add 0x01,r0
	mov.b r0,@(0xF,r13)
	mov.b @(0xF,r13),r0
	add 0x17,r0
	mov.b r0,@r1
	mov.w @(0x12C,PC),r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r2,r1
	extu.b r0,r0
	shll r0
	add 0x7C,r1
	mov.w @(r0,r1),r3
	add 0x01,r3
	mov.w r3,@(r0,r1)

loc_CE3457E:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE34586:
	mov r4,r3
	mov.l @(loc_CE3469C,pc),r1 ; r1 set to 0xCE35680
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE34598:
	mov r4,r3
	mov.l @(loc_CE346A0,pc),r1 ; r1 set to 0xCE35688
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE345AA:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xF0,PC),r3
	jsr @r3
	mov 0x00,r5
	mov.b @(0x6,r14),r0
	mov 0x02,r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0xD2,PC),r0
	mov.b r3,@(r0,r14)
	mova @(0xE4,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xC8,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce345da
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE345DA:
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0xC8,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x39,r3
	fmov fr3,@(r0,r14)
	mova @(0xC4,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov 0x00,r4
	fmov fr3,@(r0,r14)
	mov 0x14,r5
	mov.w @(0x96,PC),r0
	mov r4,r6
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x90,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.l @(0x94,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_CE34624:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE346B8,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_CE346BC,pc),r3 ; r3 set to 0x8C052CE2
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
	bt loc_CE346C4
	mov.b @(0x06,r14),r0
	mov 0x14,r5 ; r5 set to 0x14
	mov.l @(loc_CE346B4,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x01,r6 ; r6 set to 0x01
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE346C0,pc),r2 ; r2 set to 0x8C0511B4
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE3468C:
	#data 0x019E
loc_CE3468E:
	#data 0x0141
loc_CE34690:
	#data 0x01A1
loc_CE34692:
	#data 0x01AC
loc_CE34694:
	#data 0x01F9
loc_CE34696:
	#data 0x01D2
	#align4

loc_CE34698:
	#data loc_8C2896B0
loc_CE3469C:
	#data loc_CE35680
loc_CE346A0:
	#data loc_CE35688
loc_CE346A4:
	#data loc_8C035162
loc_CE346A8:
	#data 0x41F00000
loc_CE346AC:
	#data 0x40892492
loc_CE346B0:
	#data 0xBF4DB6DB
loc_CE346B4:
	#data loc_8C034E8C
loc_CE346B8:
	#data loc_8C034DEE
loc_CE346BC:
	#data loc_8C052CE2
loc_CE346C0:
	#data loc_8C0511B4

;----------------------------------------------
loc_CE346C4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE346CA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE347A4,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE346E4
	lds.l @r15+,pr
	mov.l @(loc_CE347A8,pc),r3 ; r3 set to 0x8C051854
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE346E4:
	mov.w @(0xAC,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce346f0
	mov 0x00,r3
	mov.b r3,@(r0,r14)

loc_CE346F0:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE346F6:
	mov.w @(loc_CE34796,pc),r0 ; r0 set to 0x1FA
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_CE34798,pc),r2 ; r2 set to 0xC00
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_CE34772
	mov.w @(loc_CE3479A,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_CE34772
	mov.w @(loc_CE3479C,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE34772
	mov.w @(loc_CE3479E,pc),r0 ; r0 set to 0x1FE
	mov.l @(loc_CE347AC,pc),r13 ; r13 set to 0x8C045790
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE34742
	mov.w @(loc_CE3479A,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_CE34772
	jsr @r13
	mov r14,r4
	tst r0,r0
	bt/s loc_CE34772
	mov r0,r4
	mov.w @(loc_CE347A0,pc),r0 ; r0 set to 0x1F7
	mov 0x03,r2 ; r2 set to 0x03
	bra loc_CE3476E
	mov.b r2,@(r0,r14)

loc_CE34742:
	mov.w @(loc_CE3479A,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_CE3475E
	jsr @r13
	mov r14,r4
	tst r0,r0
	bt/s loc_CE34772
	mov r0,r4
	mov.w @(loc_CE347A0,pc),r0 ; r0 set to 0x1F7
	mov 0x02,r3 ; r3 set to 0x02
	bra loc_CE3476E
	mov.b r3,@(r0,r14)

loc_CE3475E:
	jsr @r13
	mov r14,r4
	tst r0,r0
	bt/s loc_CE34772
	mov r0,r4
	mov.w @(loc_CE347A0,pc),r0 ; r0 set to 0x1F7
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14)

loc_CE3476E:
	bra loc_CE34774
	mov r4,r0

loc_CE34772:
	mov 0x00,r0

loc_CE34774:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3477C:
	mov.l r4,@-r15
	mov r4,r0
	nop
	mov.w @(loc_CE347A0,pc),r1 ; r1 set to 0x1F7
	mov.l @(loc_CE347B0,pc),r2 ; r2 set to 0xCE35694
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0x3F,r0
	shll2 r0
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE34794:
	#data 0x0141
loc_CE34796:
	#data 0x01FA
loc_CE34798:
	#data 0x0C00
loc_CE3479A:
	#data 0x01F9
loc_CE3479C:
	#data 0x01A3
loc_CE3479E:
	#data 0x01FE
loc_CE347A0:
	#data 0x01F7
	#align4

loc_CE347A4:
	#data loc_8C034DEE
loc_CE347A8:
	#data loc_8C051854
loc_CE347AC:
	#data loc_8C045790
loc_CE347B0:
	#data loc_CE35694

;==============================================
loc_CE347B4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0xE8,PC),r0
	mov r4,r14
	mov.w @(0xE6,PC),r2
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt.s loc_ce347e2
	mov 0x0A,r3
	mov.w @(0xDC,PC),r0
	mov.w @(0xDA,PC),r1
	mov.b @(r0,r14),r0
	add r14,r1
	xor 0x01,r0
	mov.b r0,@r1
	mov.w @(0xD2,PC),r0
	mov.w @(0xD0,PC),r1
	mov.w @(r0,r14),r0
	add r14,r1
	xor 0x01,r0
	mov.w r0,@r1

loc_CE347E2:
	mov.w @(0xC8,PC),r0
	mov 0x05,r6
	mov r6,r5
	mov.b r3,@(r0,r14)
	mov 0x00,r0
	mov.l @(0xC0,PC),r3
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mova @(0xBC,PC),r0
	mov.l @(0xC4,PC),r3
	fmov @r0,fr3
	mova @(0xBC,PC),r0
	mov r15,r5
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0xB4,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(0xB0,PC),r3
	mov 0x0F,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE34822:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_CE348AE,pc),r0 ; r0 set to 0x1A0
	mov 0x0A,r3 ; r3 set to 0x0A
	mov r4,r14
	mov r15,r5
	mov.b r3,@(r0,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x06,r14)
	mova @(loc_CE348B4,pc),r0  ; r0 set to 0xCE348B4
	fmov.s @r0,fr3 ; r3 ??
	mova @(loc_CE348B8,pc),r0  ; r0 set to 0xCE348B8
	mov.l @(loc_CE348BC,pc),r3 ; r3 set to 0x8C103660
	fmov.s fr3,@r15
	fmov.s @r0,fr3 ; r3 ??
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE348C4,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x0F,r5 ; r5 set to 0x0F
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3485C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_CE348AE,pc),r0 ; r0 set to 0x1A0
	mov 0x0A,r3 ; r3 set to 0x0A
	mov r4,r14
	mov r15,r5
	mov.b r3,@(r0,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x06,r14)
	mova @(loc_CE348B4,pc),r0  ; r0 set to 0xCE348B4
	fmov.s @r0,fr3 ; r3 ??
	mova @(loc_CE348B8,pc),r0  ; r0 set to 0xCE348B8
	mov.l @(loc_CE348BC,pc),r3 ; r3 set to 0x8C103660
	fmov.s fr3,@r15
	fmov.s @r0,fr3 ; r3 ??
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE348B0,pc),r2 ; r2 set to 0x8C02FEC4
	mov 0x05,r6 ; r6 set to 0x05
	mov r6,r5 ; r5 set to 0x05
	jsr @r2
	mov r14,r4
	mov.l @(loc_CE348C0,pc),r3 ; r3 set to 0x8C056F2A
	jsr @r3
	mov r14,r4
	mov.l @(loc_CE348C4,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x0F,r5 ; r5 set to 0x0F
	mov 0x08,r6 ; r6 set to 0x08
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE348A6:
	#data 0x01FA
loc_CE348A8:
	#data 0x0400
loc_CE348AA:
	#data 0x01D2
loc_CE348AC:
	#data 0x0130
loc_CE348AE:
	#data 0x01A0
	#align4

loc_CE348B0:
	#data loc_8C02FEC4
loc_CE348B4:
	#data 0xC2555555
loc_CE348B8:
	#data 0x43092492
loc_CE348BC:
	#data loc_8C103660
loc_CE348C0:
	#data loc_8C056F2A
loc_CE348C4:
	#data loc_8C034E8C

;==============================================
loc_CE348C8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(0x104,PC),r3
	mov r4,r14
	mov.w @(0x102,PC),r0
	add r14,r3
	mov.l r3,@r15
	mov.w @(r0,r14),r2
	mov.w @(0xFC,PC),r3
	extu.w r2,r2
	tst r3,r2
	bt.s loc_ce348fc
	mov 0x05,r6
	mov.w @(0xF4,PC),r0
	mov.w @(0xF2,PC),r1
	mov.b @(r0,r14),r0
	add r14,r1
	xor 0x01,r0
	mov.b r0,@r1
	mov.w @(0xEA,PC),r0
	mov.w @(0xE8,PC),r1
	mov.w @(r0,r14),r0
	add r14,r1
	xor 0x01,r0
	mov.w r0,@r1

loc_CE348FC:
	mov.l @(0xE8,PC),r3
	mov r6,r5
	jsr @r3
	mov r14,r4
	mov.w @(0xD8,PC),r0
	mov 0x0A,r2
	mov r15,r5
	mov.l @(0xE8,PC),r3
	mov.b r2,@(r0,r14)
	mov 0x00,r0
	mov.b r0,@(0x6,r14)
	mova @(0xD8,PC),r0
	fmov @r0,fr3
	mov 0x04,r0
	add 0x04,r5
	fmov fr3,@(r0,r15)
	mova @(0xD0,PC),r0
	fmov @r0,fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @r15,r2
	mov 0x1B,r0
	mov 0x00,r3
	mov.b r3,@(r0,r2)
	mov.l @(0xC4,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0xC4,PC),r2
	mov 0x0F,r5
	mov 0x07,r6
	jsr @r2
	mov r14,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14
 
;==============================================
loc_CE34948:
	rts
	nop

;==============================================
loc_CE3494C:
	mov.w @(loc_CE349E2,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	add 0x0D,r0 ; r0 set to 0x1F7
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov r14,r4
	mov.l @(loc_CE34A00,pc),r1 ; r1 set to 0xCE356AC
	extu.b r0,r0
	and 0x3F,r0
	shll2 r0
	mov.l @(r0,r1),r3 ; r3 ??
	jmp @r3
	mov.l @r15+,r14

loc_CE3496A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE34A04,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE34990
	mov.w @(loc_CE349DE,pc),r0 ; r0 set to 0x130
	mov r14,r4
	mov.w @(loc_CE349DE,pc),r1 ; r1 set to 0x130
	mov.w @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_CE34A08,pc),r3 ; r3 set to 0x8C051648
	add r14,r1 ; r1 ??? bc r14 is ???
	xor 0x01,r0
	mov.w r0,@r1
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE34990:
	mov.w @(loc_CE349E4,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_CE349D0
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14)
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_CE349E6,pc),r0 ; r0 set to 0x1C8
	mov 0x02,r2 ; r2 set to 0x02
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(r0,r14),r4
	add 0xEC,r0 ; r0 set to 0x1B4
	mov r6,r5 ; r5 set to 0x00
	mov.l r14,@(r0,r4)
	add 0x42,r0 ; r0 set to 0x1F6
	mov.b r3,@(r0,r4)
	add 0x03,r0 ; r0 set to 0x1F9
	mov.b r2,@(r0,r4)
	add 0xA8,r0 ; r0 set to 0x1A1
	mov 0x20,r3 ; r3 set to 0x20
	mov.b r3,@(r0,r4)
	add 0x31,r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
	mov.l @(loc_CE349E8,pc),r3 ; r3 set to 0x8C02FEC4
	mov.b r2,@(r0,r4)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE34A0C,pc),r2 ; r2 set to 0x8C0423FC
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE349D0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE349D6:
	#data 0x02A4
loc_CE349D8:
	#data 0x01FA
loc_CE349DA:
	#data 0x0400
loc_CE349DC:
	#data 0x01D2
loc_CE349DE:
	#data 0x0130
loc_CE349E0:
	#data 0x01A0
loc_CE349E2:
	#data 0x01EA
loc_CE349E4:
	#data 0x0141
loc_CE349E6:
	#data 0x01C8
	#align4

loc_CE349E8:
	#data loc_8C02FEC4
loc_CE349EC:
	#data 0xC2555555
loc_CE349F0:
	#data 0x43092492
loc_CE349F4:
	#data loc_8C103660
loc_CE349F8:
	#data loc_8C056F2A
loc_CE349FC:
	#data loc_8C034E8C
loc_CE34A00:
	#data loc_CE356AC
loc_CE34A04:
	#data loc_8C034DEE
loc_CE34A08:
	#data loc_8C051648
loc_CE34A0C:
	#data loc_8C0423FC

;==============================================
loc_CE34A10:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_CE34B00,pc),r3 ; r3 set to 0x8C034DEE
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
	mov.l @(loc_CE34B04,pc),r2 ; r2 set to 0x8C052CE2
	jsr @r2
	mov r14,r4
	extu.b r0,r0 ; r0 set to 0x60
	tst r0,r0
	bt loc_CE34A6A
	lds.l @r15+,pr
	mov.l @(loc_CE34B08,pc),r2 ; r2 set to 0x8C052DAC
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE34A6A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE34A70:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x88,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce34af2
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mova @(0x84,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0x78,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x50,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce34ab6
	mov 0x04,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE34AB6:
	mov.l @(0x60,PC),r3
	mov 0x0F,r5
	jsr @r3
	mov r14,r4
	mov.w @(0x38,PC),r0
	mov 0x02,r3
	mov 0x21,r2
	mov.w @(0x34,PC),r1
	mov.l @(r0,r14),r4
	add 0xEC,r0
	mov 0x00,r6
	mov.l r14,@(r0,r4)
	add 0x42,r0
	mov.b r3,@(r0,r4)
	add 0xAB,r0
	mov.b r2,@(r0,r4)
	add 0x31,r0
	mov.b @(r0,r14),r0
	add r4,r1
	mov.l @(0x3C,PC),r3
	mov r6,r5
	xor 0x01,r0
	mov.b r0,@r1
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x34,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE34AF2:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_ce34af8:
	#data 0x0130
loc_ce34afa:
	#data 0x01c8
loc_ce34afc:
	#data 0x01d2
	#align4

loc_CE34B00:
	#data loc_8C034DEE
loc_CE34B04:
	#data loc_8C052CE2
loc_CE34B08:
	#data loc_8C052DAC
loc_CE34B0C:
	#data 0x41200000
loc_CE34B10:
	#data 0x41AB6DB6
loc_CE34B14:
	#data 0xBF892492
loc_CE34B18:
	#data loc_8C034E8C
loc_CE34B1C:
	#data loc_8C02FEC4
loc_CE34B20:
	#data loc_8C0423FC

;==============================================
loc_CE34B24:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0xE0,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r0
	fmov @(r0,r14),fr0
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x68,r1
	add r14,r1
	fadd fr0,fr3
	fmov fr3,@(r0,r14)
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
	fldi0 fr3
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr4
	fcmp/gt fr3,fr4
	bf loc_ce34b74
	fcmp/gt fr0,fr3
	bt loc_ce34b80

loc_CE34B74:
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_ce34b88
	fldi0 fr3
	fcmp/gt fr3,fr0
	bf loc_ce34b88

loc_CE34B80:
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)

loc_CE34B88:
	mov.w @(0x78,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce34b9c
	mov 0x00,r13
	mov.l @(0x7C,PC),r3
	mov 0x16,r5
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_CE34B9C:
	mov.l @(0x74,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_ce34bda
	mov.w @(0x5C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce34bc0
	mov.w @(0x56,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce34bda
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov 0x01,r3
	bra loc_ce34bda
	mov.b r3,@(r0,r14)

loc_CE34BC0:
	mov.w @(0x44,PC),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_ce34bda
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bt loc_ce34bda
	mov.w @(0x34,PC),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)

loc_CE34BDA:
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce34bfc
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(0x30,PC),r3
	mov 0x03,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x0F,r5
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE34BFC:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34c04:
	#data 0x014B
loc_ce34c06:
	#data 0x0525
loc_ce34c08:
	#data 0x0141
loc_ce34c0a:
	#data 0x0142
	#align4

loc_ce34c0c:
	#data loc_8C034DEE
loc_ce34c10:
	#data loc_8C04223A
loc_ce34c14:
	#data loc_8C055D2E
loc_ce34c18:
	#data loc_8C052CE2
loc_ce34c1c:
	#data loc_8C034E8C

;==============================================
loc_CE34C20:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x13A,PC),r3
	mov r4,r14
	add r14,r3
	mov.l r3,@r15
	mov.l @(0x13C,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x12E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce34c74
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

loc_CE34C74:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_ce34ca6
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mova @(0xE8,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xE4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xCE,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_ce34ca6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE34CA6:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_ce34d10
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mova @(0xBC,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mova @(0xB4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x8C,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_ce34cf0
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE34CF0:
	mov.l @r15,r3
	mov 0x1C,r0
	mov 0x00,r2
	mov.b r2,@(r0,r3)
	mov 0x2B,r5
	mov.l @(0x8C,PC),r3
	jsr @r3
	mov r14,r4
	mov r14,r4
	mov 0x0F,r5
	mov 0x02,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x80,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_CE34D10:
	add 0x04,r15
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE34D18:
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mova @(0x60,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x28,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_ce34d4c
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_CE34D4C:
	mov 0x5A,r0
	bra loc_ce34c20
	mov.w r0,@(0x1C,r4)

;==============================================
loc_CE34D52:
	mov r4,r3
	mov.l @(loc_CE34D9C,pc),r1 ; r1 set to 0xCE356C4
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34d64:
	#data 0x02a4
loc_ce34d66:
	#data 0x0141
loc_ce34d68:
	#data 0x0130
	#align4

loc_ce34d6c:
	#data loc_8C034DEE
loc_ce34d70:
	#data 0x3F555555
loc_ce34d74:
	#data 0x3F892492
loc_ce34d78:
	#data 0x40D55555
loc_ce34d7c:
	#data 0xBDD55555
loc_ce34d80:
	#data 0x414DB6DB
loc_ce34d84:
	#data 0xBF092492
loc_ce34d88:
	#data loc_8C042008
loc_ce34d8c:
	#data loc_8C034E8C
loc_ce34d90:
	#data 0x40555555
loc_ce34d94:
	#data 0x41892492
loc_ce34d98:
	#data 0xBE892492
loc_CE34D9C:
	#data loc_CE356C4

;==============================================
loc_CE34DA0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_CE34EDC,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE34DBA
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_CE34EE0,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_CE34DBA:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_CE34DC2:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_CE34EDC,pc),r3 ; r3 set to 0x8C034DEE
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
	mov.w @(loc_CE34ED4,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_CE34E2E
	mov.w @(loc_CE34ED4,pc),r0 ; r0 set to 0x41C
	mov r14,r4
	mov.l @(loc_CE34EE4,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x05,r6 ; r6 set to 0x05
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	mov 0x01,r5 ; r5 set to 0x01
	fmov.s fr3,@(r0,r14)
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x06,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE34E2E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE34E34:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce34ece
	mov.b @(0x6,r14),r0
	mov 0x00,r6
	mov.l @(0x9C,PC),r3
	mov r6,r5
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x80,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x76,PC),r0
	mov 0x02,r3
	mov 0x22,r2
	mov.w @(0x74,PC),r1
	mov.l @(r0,r14),r4
	add 0xEC,r0
	mov.l r14,@(r0,r4)
	add 0x42,r0
	mov.b r3,@(r0,r4)
	add 0xAB,r0
	mov.b r2,@(r0,r4)
	add 0x8F,r0
	mov.b @(r0,r14),r3
	add r4,r1
	mov.w @(0x5C,PC),r0
	mov.b r3,@(r0,r14)
	mov.b @(r0,r14),r0
	extu.b r0,r0
	xor 0x01,r0
	mov.w r0,@r1
	mov.w @(0x52,PC),r0
	mov.b @(r0,r4),r3
	mov.w @(0x4C,PC),r0
	mov.b r3,@(r0,r4)
	mova @(0x5C,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0x54,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x50,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x2C,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce34ebc
	mov 0x02,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_CE34EBC:
	mov.l @(0x24,PC),r3
	mov 0x01,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x30,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE34ECE:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34ed4:
	#data 0x041c
loc_ce34ed6:
	#data 0x01c8
loc_ce34ed8:
	#data 0x01d2
loc_ce34eda:
	#data 0x0130
	#align4

loc_CE34EDC:
	#data loc_8C034DEE
loc_CE34EE0:
	#data loc_8C051648
loc_CE34EE4:
	#data loc_8C034E8C
loc_ce34ee8:
	#data loc_8C02FEC4
loc_ce34eec:
	#data 0x41200000
loc_ce34ef0:
	#data 0x41892492
loc_ce34ef4:
	#data 0xBF092492
loc_ce34ef8:
	#data loc_8C0423FC

;==============================================
loc_CE34EFC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x134,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x126,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce34f2a
	mov 0x60,r1
	add r14,r1
	mov 0x38,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_CE34F2A:
	mov.w @(0x104,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_ce34f52
	mov.w @(0xF8,PC),r0
	mov r14,r4
	mov.l @(0x100,PC),r3
	mov 0x09,r6
	fmov @(r0,r14),fr3
	mov 0x38,r0
	mov 0x0F,r5
	fmov fr3,@(r0,r14)
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE34F52:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;==============================================
loc_CE34F58:
	mov.b @(0x06,r4),r0
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	mova @(loc_CE35040,pc),r0  ; r0 set to 0xCE35040
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r4)
	mova @(loc_CE35044,pc),r0  ; r0 set to 0xCE35044
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C
	bra loc_CE34EFC
	fmov.s fr3,@(r0,r4)

loc_CE34F70:
	mov r4,r3
	mov.l @(loc_CE35048,pc),r1 ; r1 set to 0xCE356D8
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE34F82:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE35038,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE34FA6
	mov.l @(loc_CE3504C,pc),r3 ; r3 set to 0x8C02FEC4
	mov 0x00,r6 ; r6 set to 0x00
	mov r6,r5 ; r5 set to 0x00
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE35050,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE34FA6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE34FAC:
	mov.b @(0x06,r4),r0
	mov 0x02,r6 ; r6 set to 0x02
	mov.l @(loc_CE3503C,pc),r3 ; r3 set to 0x8C034E8C
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	jmp @r3
	mov 0x14,r5

loc_CE34FBA:
	mov.l @(loc_CE35038,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

loc_CE34FC0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_CE35038,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE34FDC
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE34FDC:
	mov.w @(loc_CE35034,pc),r0 ; r0 set to 0x14B
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE35012
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14)
	mov.l @(loc_CE35054,pc),r3 ; r3 set to 0x8C0BBB48
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt/s loc_CE34FFE
	mov r0,r5 ; r5 set to 0x14B
	lds.l @r15+,pr
	mov.l @(loc_CE35058,pc),r3 ; r3 set to 0x8C052618
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE34FFE:
	mov.l @(loc_CE3504C,pc),r3 ; r3 set to 0x8C02FEC4
	mov 0x00,r6 ; r6 set to 0x00
	mov r6,r5 ; r5 set to 0x00
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_CE35050,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE35012:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE35018:
	mov r4,r3
	mov.l @(loc_CE3505C,pc),r1 ; r1 set to 0xCE356EC
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE3502A:
	mov.l @(loc_CE35050,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce35030:
	#data 0x0140
loc_ce35032:
	#data 0x041c
loc_ce35034:
	#data 0x014b
	#align4

loc_CE35038:
	#data loc_8C034DEE
loc_CE3503C:
	#data loc_8C034E8C
loc_CE35040:
	#data 0xC1092492
loc_CE35044:
	#data 0xBF892492
loc_CE35048:
	#data loc_CE356D8
loc_CE3504C:
	#data loc_8C02FEC4
loc_CE35050:
	#data loc_8C051648
loc_CE35054:
	#data loc_8C0BBB48
loc_CE35058:
	#data loc_8C052618
loc_CE3505C:
	#data loc_CE356EC

;==============================================
loc_CE35060:
	mov.w @(loc_CE3515E,pc),r0 ; r0 set to 0x1C8
	mov r4,r5
	mov.l r4,@-r15
	mov.l @(loc_CE3516C,pc),r3 ; r3 set to 0x8C04CC1C
	mov.l @(r0,r4),r4
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE3506E:
	mov.w @(loc_CE3515E,pc),r0 ; r0 set to 0x1C8
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_CE35160,pc),r3 ; r3 set to 0x150
	mov.l @(r0,r14),r4
	add r4,r3 ; r3 ??? bc r4 is ???
	mov.b @(0x01,r3),r0
	tst r0,r0
	bt loc_CE350A0
	mov.w @(loc_CE35162,pc),r0 ; r0 set to 0x140
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_CE35094
	mov.w @(loc_CE3515E,pc),r0 ; r0 set to 0x1C8
	mov r14,r5
	mov.l @(loc_CE3516C,pc),r3 ; r3 set to 0x8C04CC1C
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

loc_CE35094:
	mov.w @(loc_CE3515E,pc),r0 ; r0 set to 0x1C8
	mov r14,r5
	mov.l @(loc_CE35170,pc),r3 ; r3 set to 0x8C04CE3A
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

loc_CE350A0:
	rts
	mov.l @r15+,r14

;==============================================
loc_CE350A4:
	mov.w @(loc_CE3515E,pc),r0 ; r0 set to 0x1C8
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(r0,r14),r4
	mov.w @(loc_CE35162,pc),r0 ; r0 set to 0x140
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_CE350C0
	mov.w @(loc_CE3515E,pc),r0 ; r0 set to 0x1C8
	mov r14,r5
	mov.l @(loc_CE3516C,pc),r3 ; r3 set to 0x8C04CC1C
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

loc_CE350C0:
	rts
	mov.l @r15+,r14
	
;==============================================
loc_CE350C4:
	rts
	nop

;==============================================
loc_CE350C8:
	mov.w @(loc_CE3515E,pc),r0 ; r0 set to 0x1C8
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(r0,r14),r4
	mov.w @(loc_CE35162,pc),r0 ; r0 set to 0x140
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_CE350E4
	mov.w @(loc_CE3515E,pc),r0 ; r0 set to 0x1C8
	mov r14,r5
	mov.l @(loc_CE3516C,pc),r3 ; r3 set to 0x8C04CC1C
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

loc_CE350E4:
	mov.w @(loc_CE3515E,pc),r0 ; r0 set to 0x1C8
	mov r14,r5
	mov.l @(loc_CE35170,pc),r3 ; r3 set to 0x8C04CE3A
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

loc_CE350F0:
	mov.l r4,@-r15
	mov r4,r0
	nop
	mov.w @(loc_CE35164,pc),r1 ; r1 set to 0x1F7
	mov.l @(loc_CE35174,pc),r2 ; r2 set to 0xCE356FC
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0x3F,r0
	shll2 r0
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
P03_TmHypMn:
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_CE35166,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt/s loc_CE3512E
	mov 0x09,r5 ; r5 set to 0x09
	cmp/eq 0x01,r0
	bt loc_CE35126
	cmp/eq 0x02,r0
	bt loc_CE3512E
	bra loc_CE35132
	nop

loc_CE35126:
	mov.w @(loc_CE35168,pc),r0 ; r0 set to 0x1E9
	mov 0x07,r2 ; r2 set to 0x07
	bra loc_CE35132
	mov.b r2,@(r0,r4)

loc_CE3512E:
	mov.w @(loc_CE35168,pc),r0 ; r0 set to 0x1E9
	mov.b r5,@(r0,r4)

loc_CE35132:
	mov.l @(loc_CE35178,pc),r2 ; r2 set to 0x8C0530D8, r2 set to 0x8C0530D8
	jmp @r2
	mov 0x1D,r5

P03_TmHypAs:
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_CE35166,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt/s loc_CE3517C
	mov 0x09,r5 ; r5 set to 0x09
	cmp/eq 0x01,r0
	bt loc_CE35156
	cmp/eq 0x02,r0
	bt loc_CE3517C
	bra loc_CE35180
	nop

loc_CE35156:
	mov.w @(loc_CE35168,pc),r0 ; r0 set to 0x1E9
	mov 0x07,r2 ; r2 set to 0x07
	bra loc_CE35180
	mov.b r2,@(r0,r4)

;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
loc_CE3515E:
	#data 0x01C8
loc_CE35160:
	#data 0x0150
loc_CE35162:
	#data 0x0140
loc_CE35164:
	#data 0x01F7
loc_CE35166:
	#data 0x04C9
loc_CE35168:
	#data 0x01E9
	#align4

loc_CE3516C:
	#data loc_8C04CC1C
loc_CE35170:
	#data loc_8C04CE3A
loc_CE35174:
	#data loc_CE356FC
loc_CE35178:
	#data loc_8C0530D8

;----------------------------------------------
loc_CE3517C:
	mov.w @(loc_CE35220,pc),r0 ; r0 set to 0x1E9
	mov.b r5,@(r0,r4)

loc_CE35180:
	mov.l @(loc_CE3522C,pc),r2 ; r2 set to 0x8C0530D8, r2 set to 0x8C0530D8
	jmp @r2
	mov 0x1D,r5

;==============================================
P03_Assists:
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_CE35222,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt/s loc_CE351A4
	mov 0x01,r5 ; r5 set to 0x01
	cmp/eq 0x01,r0
	bt loc_CE351AC
	cmp/eq 0x02,r0
	bt loc_CE351B2
	bra loc_CE351BA
	nop

loc_CE351A4:
	mov.w @(loc_CE35220,pc),r0 ; r0 set to 0x1E9
	mov 0x02,r3 ; r3 set to 0x02
	bra loc_CE351B6
	mov.b r3,@(r0,r4)

loc_CE351AC:
	mov.w @(loc_CE35220,pc),r0 ; r0 set to 0x1E9
	bra loc_CE351B6
	mov.b r5,@(r0,r4)

loc_CE351B2:
	mov.w @(0x6A,PC),r0
	mov.b r5,@(r0,r4)

loc_CE351B6:
	mov.w @(loc_CE35224,pc),r0 ; r0 set to 0x1A3
	mov.b r5,@(r0,r4)

loc_CE351BA:
	mov.l @(loc_CE3522C,pc),r2 ; r2 set to 0x8C0530D8, r2 set to 0x8C0530D8
	jmp @r2
	mov 0x15,r5

;==============================================
P03_AlpCntr:
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r4)
	mov 0x01,r6 ; r6 set to 0x01
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_CE35222,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt/s loc_CE351E0
	mov 0x02,r5 ; r5 set to 0x02
	cmp/eq 0x01,r0
	bt loc_CE351E6
	cmp/eq 0x02,r0
	bt loc_CE351EC
	bra loc_CE351F4
	nop

loc_CE351E0:
	mov.w @(loc_CE35220,pc),r0 ; r0 set to 0x1E9
	bra loc_CE351F0
	mov.b r5,@(r0,r4)

loc_CE351E6:
	mov.w @(loc_CE35220,pc),r0 ; r0 set to 0x1E9
	bra loc_CE351F0
	mov.b r6,@(r0,r4)

loc_CE351EC:
	mov.w @(0x30,PC),r0
	mov.b r5,@(r0,r4)

loc_CE351F0:
	mov.w @(loc_CE35224,pc),r0 ; r0 set to 0x1A3
	mov.b r6,@(r0,r4)

loc_CE351F4:
	mov.l @(loc_CE3522C,pc),r2 ; r2 set to 0x8C0530D8, r2 set to 0x8C0530D8
	jmp @r2
	mov 0x15,r5

;==============================================
loc_CE351FA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_CE35226,pc),r14 ; r14 set to 0x2A4
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_CE35228,pc),r6 ; r6 set to 0x80
	add r4,r14 ; r14 ??? bc r4 is ???
	mov.l @(loc_CE35230,pc),r3 ; r3 set to 0x8C129728
	mov.l r14,@r15
	mov.b @(0x0C,r14),r0
	mov.b r0,@(0x04,r15)
	jsr @r3
	mov.l @r15,r4
	mov.b @(0x04,r15),r0
	mov.b r0,@(0x0C,r14)
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE35220:
	#data 0x01E9
loc_CE35222:
	#data 0x04C9
loc_CE35224:
	#data 0x01A3
loc_CE35226:
	#data 0x02A4
loc_CE35228:
	#data 0x0080
	#align4

loc_CE3522C:
	#data loc_8C0530D8
loc_CE35230:
	#data loc_8C129728

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;Data Start
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE35234:
	#data 0x00000042
	#data 0x0000004B
	#data 0x00000054
	#data 0x0000005D
	#data 0x00000066
	#data 0x0000006F

loc_CE3524C:
	#data 0x00000030
	#data 0x00000033
	#data 0x00000036
	#data 0x00000039
	#data 0x0000003C
	#data 0x0000003F

;Taunt Pal ID Table
loc_CE35264:
	#data 0x00000078
	#data 0x00000079
	#data 0x0000007A
	#data 0x0000007B
	#data 0x0000007C
	#data 0x0000007D

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;Chain Data
loc_CE3527C:
	#data 0x01 0x02 0x00 0x02
loc_CE35280:
	#data 0xFF 0x02 0x01 0x02
loc_CE35284:
	#data 0xFF 0xFF 0xFF 0x02
loc_CE35288:
	#data 0x01 0x02 0x01 0x02
loc_CE3528C:
	#data 0xFF 0x02 0xFF 0x02
loc_CE35290:
	#data 0xFF 0xFF 0xFF 0xFF

loc_CE35294:
	#data 0x01 0x02 0x00 0x02
loc_CE35298:
	#data 0xFF 0x02 0x01 0x02
loc_CE3529C:
	#data 0xFF 0xFF 0xFF 0x02
loc_CE352A0:
	#data 0x01 0x02 0x01 0x02
loc_CE352A4:
	#data 0xFF 0x02 0xFF 0x02
loc_CE352A8:
	#data 0xFF 0xFF 0xFF 0xFF

loc_CE352AC:
	#data 0x01 0x02 0x00 0x02
loc_CE352B0:
	#data 0xFF 0x02 0x01 0x02
loc_CE352B4:
	#data 0xFF 0xFF 0xFF 0x02
loc_CE352B8:
	#data 0x01 0x02 0x01 0x02
loc_CE352BC:
	#data 0xFF 0x02 0xFF 0x02
loc_CE352C0:
	#data 0xFF 0xFF 0xFF 0xFF

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;Special Move Inputs
loc_CE352C4:
	#data 0x0003
	#data 0x1000 0x0001 0x0000
	#data 0x1000 0x1800 0x0800 0x0300

loc_CE352D4:
	#data 0x0003
	#data 0x2000 0x0001 0x0000
	#data 0x1000 0x1800 0x0800 0x0300

loc_CE352E4:
	#data 0x0003
	#data 0x1000 0x0002 0x0000
	#data 0x0800 0x1000 0x1800 0x0300

loc_CE352F4:
	#data 0x0003
	#data 0x2000 0x0002 0x0000
	#data 0x0800 0x1000 0x1800 0x0300

loc_CE35304:
	#data 0x0005
	#data 0x1000 0x0003 0x0000
	#data 0x0800 0x1800 0x1000 0x1400 0x0400 0x0300

loc_CE35318:
	#data 0x0003
	#data 0x9100 0x0007 0x0000
	#data 0x1000 0x1800 0x0800 0x0300

loc_CE35328:
	#data 0x0003
	#data 0x9100 0x0009 0x0000
	#data 0x0800 0x1000 0x1800 0x0300

loc_CE35338:
	#data 0x0003
	#data 0x8100 0x0006 0x0000
	#data 0x1000 0x1800 0x0800 0x0060

loc_CE35348:
	#data 0x0003
	#data 0x2000 0x000F 0x0000
	#data 0x1000 0x1400 0x0400 0x0060

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;S_PL Jump Table
loc_CE35358:
	#data loc_CE30642 loc_CE30024 loc_CE30DCE loc_CE31370
	#data P03_FwdDash P03_BckDash P03_FMIntro loc_CE31B34
	#data loc_CE31E7A loc_CE346F6 loc_CE3477C loc_CE3494C
	#data loc_CE350F0 P03_DlyHypC loc_CE34598 loc_CE313B4
	#data P03_TmHypMn P03_TmHypAs P03_Assists P03_AlpCntr
	#data 0x00000000  loc_CE31644 0x00000000  loc_CE351FA
	#data 0x00000000  0x00000000  0x00000000  0x00000000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE353C8:
	#data loc_CE30A50
	#data loc_CE30D78
	#data loc_CE30D3C
	#data loc_CE30DCA

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE353D8:
	#data loc_CE31072
	#data loc_CE3131E
	#data loc_CE31348
	#data loc_CE31360

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE353E8:
	#data loc_CE31496
	#data loc_CE3153E
	#data loc_CE315BC

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE353F4:
	#data loc_CE31656
	#data loc_CE316A8
	#data loc_CE317A0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE35400:
#data 0xFFF68000
#data 0x00000000
#data 0x00000000
#data 0xFFFFB000
#data 0xFFFC0000
#data 0xFFFFE000
#data 0xFFF38000
#data 0x0000A800
#data 0xFFF90000
#data 0x00001000
#data 0x000B8000
#data 0xFFFF5000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE35430:
	#data loc_CE31846
	#data loc_CE31888
	#data loc_CE3192C

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE3543C:
	#data loc_CE319C6
	#data loc_CE31A04
	#data loc_CE31A5C
	#data loc_CE31AD0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE3544C:
	#data loc_CE31C84
	#data loc_CE31E66

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE35454:
	#data 0x0700
	#data 0x0700
	#data 0x0700
	#data 0x0700
	#data 0x0801
	#data 0x0801
	#data 0x0802
	#data 0x0802
	#data 0x0803
	#data 0x0803
	#data 0x0804
	#data 0x0804
	#data 0x0805
	#data 0x0805
	#data 0x0805
	#data 0x0805

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE35474:
	#data loc_CE31B46
	#data loc_CE31C74
	#data loc_CE31C64
	#data loc_CE31C74
	#data loc_CE31C74

loc_CE35488:
	#data loc_CE31CCC
	#data loc_CE31D10

loc_CE35490:
	#data loc_CE31D46
	#data loc_CE31D84
	#data loc_CE31D84
	#data loc_CE31D84
	#data loc_CE31D84
	#data loc_CE31DDC

loc_CE354A8:
	#data loc_CE31E1C
	#data loc_CE31E30
	#data loc_CE31E30
	#data loc_CE31E30
	#data loc_CE31E30

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE354BC:
	#data loc_CE31EC0
	#data loc_CE31EC0
	#data loc_CE3222A
	#data loc_CE327B2
	#data loc_CE31EC0
	#data loc_CE31EC0
	#data loc_CE33010
	#data loc_CE328C4
	#data loc_CE32BCA
	#data loc_CE32DDA
	#data loc_CE31EC0
	#data loc_CE31EC0
	#data loc_CE31EC0
	#data loc_CE31EC0
	#data loc_CE342FE
	#data loc_CE34586

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE354FC:
	#data loc_CE31ED2
	#data loc_CE31FDA

loc_CE35504:
	#data loc_CE31F28
	#data loc_CE31F82

loc_CE3550C:
	#data loc_CE31FF6
	#data loc_CE320B0
	#data loc_CE321C8

loc_CE35518:
	#data loc_CE3223C
	#data loc_CE32526

loc_CE35520:
	#data loc_CE3224E
	#data loc_CE32376
	#data loc_CE32474
	#data loc_CE324F2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE35530:
	#data 0x40F00000 0xbed55555
	#data 0x412b6db6 0xbf3c9249
	#data 0x4192aaaa 0xbf12aaaa
	#data 0x41dedb6d 0xbf5edb6d

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE35550:
#data loc_CE32538

loc_CE35554:
#data loc_CE3265A

loc_CE35558:
#data loc_CE32700

loc_CE3555C:
#data loc_CE3277E

loc_CE35560:
#data 0x40F00000

loc_ce35564:
	#data 0xbed55555
loc_ce35568:
	#data 0x412b6db6
loc_ce3556c:
	#data 0xbf3c9249
loc_ce35570:
	#data 0x41200000
loc_ce35574:
	#data 0xbe555555
loc_ce35578:
	#data 0x41ab6db6
loc_ce3557c:
	#data 0xbf4db6db
loc_CE35580:
	#data loc_CE327C4

loc_CE35584:
#data loc_CE32804

loc_CE35588:
#data loc_CE32890

loc_CE3558C:
#data loc_CE328D6

loc_CE35590:
#data loc_CE3294A

loc_CE35594:
#data loc_CE32A10

loc_CE35598:
#data loc_CE32AD8

loc_CE3559C:
#data loc_CE32B94

loc_CE355A0:
#data loc_CE32C0C

loc_CE355A4:
#data loc_CE32C72

loc_CE355A8:
#data loc_CE32DC8

loc_CE355AC:
#data loc_CE32D0E

loc_CE355B0:
#data loc_CE32D94

loc_CE355B4:
#data loc_CE32DF6

loc_CE355B8:
#data loc_CE32E72

loc_CE355BC:
#data loc_CE32F1C

loc_CE355C0:
#data loc_CE32F96

loc_CE355C4:
#data loc_CE32FDC

loc_CE355C8:
#data loc_CE33A12

loc_CE355CC:
#data loc_CE342EC

loc_CE355D0:
	#data loc_CE33104

#align4
loc_CE355D4:
#data loc_CE33024

loc_CE355D8:
#data loc_CE331C4

loc_CE355DC:
#data loc_CE3334C

loc_CE355E0:
#data 0x4000D000
#data 0x20009000
#data 0x2000D000
#data 0x40009000
#data 0x4000E000
#data 0x20009000
#data 0x20000000
#data 0x4000C000
#data 0xF000

loc_CE35602:
#data 0x2000
#data 0x40004000
#data 0x40000000
#data 0x20007000

#align4
loc_CE35610:
#data loc_CE33508

loc_CE35614:
#data loc_CE3356C

loc_CE35618:
#data loc_CE33674

loc_CE3561C:
#data loc_CE336D4

loc_CE35620:
#data loc_CE33726

loc_CE35624:
#data loc_CE3380E

loc_CE35628:
#data loc_CE33888

loc_CE3562C:
#data loc_CE33924

loc_CE35630:
#data loc_CE33172

loc_CE35634:
#data loc_CE333CE

loc_CE35638:
#data loc_CE33958

loc_CE3563C:
#data loc_CE33986

loc_CE35640:
#data loc_CE33AF8

loc_CE35644:
#data loc_CE33A24

loc_CE35648:
#data loc_CE33BA0

loc_CE3564C:
#data loc_CE33D34

loc_CE35650:
#data loc_CE33DD6

loc_CE35654:
#data loc_CE33E50

loc_CE35658:
#data loc_CE33F88

loc_CE3565C:
#data loc_CE3405E

loc_CE35660:
#data loc_CE34160

loc_CE35664:
#data loc_CE341CE

loc_CE35668:
#data loc_CE33B58

loc_CE3566C:
#data loc_CE33DB6

loc_CE35670:
#data loc_CE34202

loc_CE35674:
#data loc_CE34260

loc_CE35678:
#data loc_CE34310

loc_CE3567C:
#data loc_CE34386

loc_CE35680:
#data loc_CE3440E

loc_CE35684:
#data loc_CE344B8

loc_CE35688:
#data loc_CE345AA

loc_CE3568C:
#data loc_CE34624

loc_CE35690:
#data loc_CE346CA

loc_CE35694:
#data loc_CE347B4

loc_CE35698:
#data loc_CE34822

loc_CE3569C:
#data loc_CE3485C

loc_CE356A0:
#data loc_CE348C8

loc_CE356A4:
#data loc_CE34948

loc_CE356A8:
#data loc_CE34948

loc_CE356AC:
#data loc_CE3496A

loc_CE356B0:
#data loc_CE34D52

loc_CE356B4:
#data loc_CE34F70

loc_CE356B8:
#data loc_CE35018

loc_CE356BC:
#data loc_CE3502A

loc_CE356C0:
#data loc_CE3502A

loc_CE356C4:
#data loc_CE34D18

loc_CE356C8:
#data loc_CE34C20

loc_CE356CC:
#data loc_CE34B24

loc_CE356D0:
#data loc_CE34A70

loc_CE356D4:
#data loc_CE34A10

loc_CE356D8:
#data loc_CE34F58

loc_CE356DC:
#data loc_CE34EFC

loc_CE356E0:
#data loc_CE34E34

loc_CE356E4:
#data loc_CE34DC2

loc_CE356E8:
#data loc_CE34DA0

loc_CE356EC:
#data loc_CE34FC0

loc_CE356F0:
#data loc_CE34FBA

loc_CE356F4:
#data loc_CE34FAC

loc_CE356F8:
#data loc_CE34F82

loc_CE356FC:
#data loc_CE35060

loc_CE35700:
#data loc_CE35060

loc_CE35704:
#data loc_CE3506E

loc_CE35708:
#data loc_CE350A4

loc_CE3570C:
#data loc_CE350C4

loc_CE35710:
#data loc_CE350C8
