; S_PL03A.BIN
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
#symbol loc_8D068800 0x8D068800
#symbol loc_8C2896B0 0x8C2896B0
#symbol loc_8C034E8C 0x8C034E8C
#symbol loc_8D0C2138 0x8D0C2138
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
#symbol loc_8D032338 0x8D032338
#symbol loc_8C0BDF70 0x8C0BDF70
#symbol loc_8C03544C 0x8C03544C
#symbol loc_8C289636 0x8C289636
#symbol loc_8C0514B8 0x8C0514B8
#symbol loc_8C11E730 0x8C11E730
#symbol loc_8C26823C 0x8C26823C
#symbol loc_8D042338 0x8D042338
#symbol loc_8C046C8A 0x8C046C8A
#symbol loc_8C05218A 0x8C05218A
#symbol loc_8D102338 0x8D102338
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
#symbol loc_8D032008 0x8D032008
#symbol loc_8C0626D8 0x8C0626D8
#symbol loc_8C055D2E 0x8C055D2E
#symbol loc_8C055D54 0x8C055D54
#symbol loc_8C063500 0x8C063500
#symbol loc_8D082338 0x8D082338
#symbol loc_8C05264C 0x8C05264C
#symbol loc_8C063900 0x8C063900
#symbol loc_8C0523D8 0x8C0523D8
#symbol loc_8C0FDB4E 0x8C0FDB4E
#symbol loc_8C0424A6 0x8C0424A6
#symbol loc_8C059F64 0x8C059F64
#symbol loc_8C0BE4C4 0x8C0BE4C4
#symbol loc_8C05933C 0x8C05933C
#symbol loc_8C05248E 0x8C05248E
#symbol loc_8D3F2228 0x8D3F2228
#symbol loc_8C050EA4 0x8C050EA4
#symbol loc_8D1C2008 0x8D1C2008
#symbol loc_8D0E2008 0x8D0E2008
#symbol loc_8C051854 0x8C051854
#symbol loc_8D0C2328 0x8D0C2328
#symbol loc_8C103660 0x8C103660
#symbol loc_8C056F2A 0x8C056F2A
#symbol loc_8C0423FC 0x8C0423FC
#symbol loc_8D052338 0x8D052338
#symbol loc_8C0BBB48 0x8C0BBB48
#symbol loc_8C052618 0x8C052618
#symbol loc_8D0A8800 0x8D0A8800
#symbol loc_8D198800 0x8D198800
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
            0x0ce304c0      8690           mov.w @(0x10C,PC),r0
            0x0ce304c2      0ee3           mov 0x0E,r3
            0x0ce304c4      1de5           mov 0x1D,r5
            0x0ce304c6      340e           mov.b r3,@(r0,r14)
            0x0ce304c8      00e0           mov 0x00,r0
            0x0ce304ca      46d3           mov.l @(0x118,PC),r3
            0x0ce304cc      e580           mov.b r0,@(0x5,r14)
            0x0ce304ce      0b43           jsr @r3
            0x0ce304d0      e364           mov r14,r4
            0x0ce304d2      00e0           mov 0x00,r0
            0x0ce304d4      e780           mov.b r0,@(0x7,r14)
            0x0ce304d6      e680           mov.b r0,@(0x6,r14)
            0x0ce304d8      01e0           mov 0x01,r0
            0x0ce304da      264f           lds.l @r15+,pr
            0x0ce304dc      0b00           rts 
            0x0ce304de      f66e           mov.l @r15+,r14

;==============================================
loc_CE304E0:
           0x0ce304e0      e62f           mov.l r14,@-r15
            0x0ce304e2      436e           mov r4,r14
            0x0ce304e4      224f           sts.l pr,@-r15
            0x0ce304e6      40d5           mov.l @(0x100,PC),r5
            0x0ce304e8      7396           mov.w @(0xE6,PC),r6
            0x0ce304ea      40d3           mov.l @(0x100,PC),r3
            0x0ce304ec      0b43           jsr @r3
            0x0ce304ee      ec36           add r14,r6
            0x0ce304f0      0c60           extu.b r0,r0
            0x0ce304f2      0820           tst r0,r0
            0x0ce304f4      0789           bt loc_ce30506
            0x0ce304f6      6d90           mov.w @(0xDA,PC),r0
            0x0ce304f8      ec02           mov.b @(r0,r14),r2
            0x0ce304fa      2822           tst r2,r2
            0x0ce304fc      0789           bt loc_ce3050e
            0x0ce304fe      6a90           mov.w @(0xD4,PC),r0
            0x0ce30500      ec03           mov.b @(r0,r14),r3
            0x0ce30502      3823           tst r3,r3
            0x0ce30504      038b           bf loc_ce3050e

loc_CE30506:
            0x0ce30506      264f           lds.l @r15+,pr
            0x0ce30508      00e0           mov 0x00,r0
            0x0ce3050a      0b00           rts 
            0x0ce3050c      f66e           mov.l @r15+,r14

loc_CE3050E:
            0x0ce3050e      6190           mov.w @(0xC2,PC),r0
            0x0ce30510      01e3           mov 0x01,r3
            0x0ce30512      5e95           mov.w @(0xBC,PC),r5
            0x0ce30514      340e           mov.b r3,@(r0,r14)
            0x0ce30516      36d3           mov.l @(0xD8,PC),r3
            0x0ce30518      ec35           add r14,r5
            0x0ce3051a      0b43           jsr @r3
            0x0ce3051c      e364           mov r14,r4
            0x0ce3051e      00e0           mov 0x00,r0
            0x0ce30520      e580           mov.b r0,@(0x5,r14)
            0x0ce30522      0fe3           mov 0x0F,r3
            0x0ce30524      e780           mov.b r0,@(0x7,r14)
            0x0ce30526      15e5           mov 0x15,r5
            0x0ce30528      e680           mov.b r0,@(0x6,r14)
            0x0ce3052a      5190           mov.w @(0xA2,PC),r0
            0x0ce3052c      340e           mov.b r3,@(r0,r14)
            0x0ce3052e      2dd3           mov.l @(0xB4,PC),r3
            0x0ce30530      0b43           jsr @r3
            0x0ce30532      e364           mov r14,r4
            0x0ce30534      01e0           mov 0x01,r0
            0x0ce30536      264f           lds.l @r15+,pr
            0x0ce30538      0b00           rts 
            0x0ce3053a      f66e           mov.l @r15+,r14

;==============================================
loc_CE3053C:
#data 0x6E432FE6
#data 0xD52C4F22
#data 0xD3299648
#data 0x36EC430B
#data 0x2008600C
#data 0x90428904
#data 0x632002EE
#data 0x8B032338

#align4
loc_CE3055C:
#data 0xE0004F26
#data 0x6EF6000B
;==============================================

#align4
loc_CE30564:
#data 0xE307903A
#data 0xE0010E34
#data 0x000B4F26
#data 0x6EF6
;==============================================

loc_CE30572:
#data 0x2FE6
#data 0x4F226E43
#data 0x9630D51F
#data 0x430BD31B
#data 0x600C36EC
#data 0x89042008
#data 0x02EE9027
#data 0x23386320
#data 0x8B03

loc_CE30592:
#data 0x4F26
#data 0x000BE000
#data 0x6EF6
;==============================================

loc_CE3059A:
#data 0x901F
#data 0x0E34E309
#data 0x4F26E001
#data 0x6EF6000B
;==============================================

#align4
loc_CE305A8:
#data 0x6E432FE6
#data 0xD5134F22
#data 0xD30E9616
#data 0x36EC430B
#data 0x2008600C
#data 0x900C8904
#data 0x632002EE
#data 0x8B1B2338

#align4
loc_CE305C8:
#data 0xE0004F26
#data 0x6EF6000B
;==============================================
#data 0x03AC01E9
#data 0x01FC01D4
#data 0x040C0394
#data 0x039C0258
#data 0x000003A4
#data loc_8C0530D8

#align4
loc_CE305E8:
#data loc_CE35348
#data loc_8C054E58
#data loc_8C055C3A

#align4
loc_CE305F4:
#data loc_CE35318

loc_CE305F8:
#data loc_CE35328

loc_CE305FC:
#data loc_CE35338

loc_CE30600:
#data 0xE300E020
#data 0xE2060E34
#data 0x0E24901A
#data 0x4F26E001
#data 0x6EF6000B
;==============================================

#align4
loc_CE30614:
#data 0x4F222FE6
#data 0x6E43BFAB
#data 0x8B072008
#data 0x64E3BFC2
#data 0x8B032008
#data 0x64E3BF88
#data 0x89032008

#align4
loc_CE30630:
#data 0xE0014F26
#data 0x6EF6000B
;==============================================

#align4
loc_CE30638:
#data 0x4F26E000
#data 0x6EF6000B
;==============================================
#data 0x0258

loc_CE30642:
#data 0x2FE6
#data 0x2FD66E43
#data 0x84E54F22
#data 0x20089D6A
#data 0x3DEC8F0D
#data 0x00EC9067
#data 0x8815600C
#data 0x84E58915
#data 0x8B042008
#data 0x00EC905F
#data 0x881D600C
#data 0x890D

loc_CE3066E:
#data 0xE012
#data 0x222802DC
#data 0x03DC8909
#data 0x0D3473FF
#data 0x2338633E
#data 0xD32A8B03
#data 0x430BE500
#data 0x64E3

loc_CE3068A:
#data 0xE01C
#data 0x222802DC
#data 0x84E58921
#data 0x8B172008
#data 0x00EC9045
#data 0x881D600C
#data 0x90418B04
#data 0x600C00EC
#data 0x89238806

#align4
loc_CE306AC:
#data 0x04EC903B
#data 0x880A604C
#data 0x64038D1E
#data 0x00096043
#data 0x8919880B
#data 0x00096043
#data 0x8915881A

#align4
loc_CE306C8:
#data 0xE01CD319
#data 0xE52BE200
#data 0x430B0D24
#data 0x64E3

loc_CE306D6:
#data 0xE019
#data 0x222802DC
#data 0x84E5890A
#data 0x8B042008
#data 0x00EC901F
#data 0x881A600C
#data 0x8902

loc_CE306EE:
#data 0xE019
#data 0x0D24E200

#align4
loc_CE306F4:
#data 0x6DF64F26
#data 0x6EF6000B
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
#data 0x01D002A4
#data 0x01E9

loc_CE3072A:
#data 0x01E8
#data loc_8C035162
#data loc_8C042008

#align4
loc_CE30734:
#data loc_8C04223A


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

#align4
loc_CE30770:
#data 0xEC02905E
#data 0x0EC4E516
#data 0x0EC47049
#data 0x64E34B0B
#data 0xD3319057
#data 0x90550E36


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

loc_CE30858:
#data 0xE202908E
#data 0x0E24E108

#align4
loc_CE30860:
#data 0xE5167049
#data 0x4C0B0E14
#data 0x908664E3
#data 0xD346E202
#data 0x0E36

loc_CE30872:
#data 0x9083
#data 0x0E24


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
#data 0x9025
#data 0xE105E202
#data 0x70490E24
#data 0x0E14

loc_CE30936:
#data 0x4C0B
#data 0x901E64E3
#data 0xD318E202
#data 0x0E36

loc_CE30942:
#data 0x901B
#data 0x0E24


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
#data 0x0000

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

#align4
loc_CE30A00:
#data 0xE102904B
#data 0x0E14E30B
#data 0xE5167049
#data 0x4C0B0E34
#data 0x904364E3
#data 0xD327E202
#data 0x0E36

loc_CE30A1A:
#data 0x9040
#data 0x0E24


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
#data 0x0000

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

loc_CE30AC4:
#data 0x2FE69075
#data 0x2FD66E43
#data 0x4F222FC6
#data 0xDC3B00EC
#data 0x8800600C
#data 0xED008D06
#data 0x89198801
#data 0x892D8802
#data 0x0009A043

#align4
loc_CE30AE8:
#data 0xE30C9064
#data 0x0ED4E514
#data 0x0E347049
#data 0x64E34C0B
#data 0x03EC905D
#data 0x8B032338
#data 0xD330905A
#data 0x0E36A003

#align4
loc_CE30B08:
#data 0xD12F9056
#data 0x0E16

loc_CE30B0E:
#data 0x9054
#data 0x0ED4A02D

#align4
loc_CE30B14:
#data 0xE201904E
#data 0x0E24E30D
#data 0xE5157049
#data 0x4C0B0E34
#data 0x904664E3
#data 0x233803EC
#data 0x90438B03
#data 0xA003D326
#data 0x0E36

loc_CE30B36:
#data 0x903F
#data 0x0E16D125

#align4
loc_CE30B3C:
#data 0xE301A015

#align4
loc_CE30B40:
#data 0xE1029038
#data 0x0E14E30E
#data 0xE5167049
#data 0x4C0B0E34
#data 0x903064E3
#data 0x233803EC
#data 0x902D8B03
#data 0xA003D31D
#data 0x0E36

loc_CE30B62:
#data 0x9029
#data 0x0E16D11C

loc_CE30B68:
#data 0xE302

loc_CE30B6A:
#data 0x9026
#data 0x0E34

loc_CE30B6E:
#data 0x9025
#data 0xD31AE50B
#data 0x70F20ED5
#data 0x70260ED4
#data 0x84E20ED6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012D
#data 0x90110215
#data 0x06ECD213
#data 0x64E3420B
#data 0x00EC9011
#data 0x8903C80F
#data 0x02EC900D
#data 0x0E2472FF

#align4
loc_CE30BA8:
#data 0x6CF64F26
#data 0x000B6DF6
#data 0x01E86EF6
#data 0x01FC0158
#data 0x01A703F4
#data 0x01D601AC
#data loc_8C04223A

#align4
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
#data loc_8C2896B0
#data loc_8C034E8C

#align4
loc_CE30BE4:
#data 0x6E432FE6
#data 0x2FD6906C
#data 0x2FB62FC6
#data 0x00EC4F22
#data 0x600CDC37
#data loc_8D068800
#data 0x8801ED00
#data 0x88028919
#data 0xA076892F
#data 0x0009

loc_CE30C0A:
#data 0x905C
#data 0xE514E30F
#data 0x70490ED4
#data 0x4C0B0E34
#data 0x905564E3
#data 0x233803EC
#data 0x90528B03
#data 0xA003D32C
#data 0x0E36

loc_CE30C2A:
#data 0x904E
#data 0x0E16D12B

#align4
loc_CE30C30:
#data 0xA060904C
#data 0x0ED4

loc_CE30C36:
#data 0x9046
#data 0xE310E201
#data 0x70490E24
#data 0x0E34E515
#data 0x64E34C0B
#data 0x03EC903E
#data 0x8B032338
#data 0xD323903B
#data 0x0E36A003

#align4
loc_CE30C58:
#data 0xD1229037
#data 0x0E16

loc_CE30C5E:
#data 0x9035
#data 0xA048E301
#data 0x0E34

loc_CE30C66:
#data 0x9032
#data 0x03ED9232
#data 0x2328633D
#data 0xEB028D18
#data 0x000960B3
#data 0x60D380E6
#data 0x80E70009
#data 0x9021E305
#data 0xF48DE112
#data 0xE05C0ED4
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0x9014FE47
#data 0x70490E34
#data 0x0E14A005

#align4
loc_CE30CA4:
#data 0xE311900F
#data 0x70490EB4
#data 0x0E34

loc_CE30CAE:
#data 0xE516
#data 0x64E34C0B
#data 0x03EC9008
#data 0x8B172338
#data 0xD30A9005
#data 0x0E36A017
#data 0x015801E8
#data 0x03F401FC
#data 0x01FA01A7
#data 0x00001000
#data loc_8C04223A

#align4
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

loc_CE30CEC:
#data 0xD1419079
#data 0x0E16

loc_CE30CF2:
#data 0x9077
#data 0x0EB4

loc_CE30CF6:
#data 0x9076
#data 0xD33FE50C
#data 0x70F20ED5
#data 0x70260ED4
#data 0x84E20ED6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012D
#data 0x90670215
#data 0x06ECD238
#data 0x64E3420B
#data 0x00EC9063
#data 0x8903C8F0
#data 0x02EC905F
#data 0x0E2472F0

#align4
loc_CE30D30:
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================

#align4
loc_CE30D3C:
#data 0xE0199556
#data 0x035C354C
#data 0x890E2338
#data 0xF38DE300
#data 0xE0600534
#data 0xF235F246
#data 0xF48D8F01
#data 0xF447

loc_CE30D5A:
#data 0xE068
#data 0xC728F447
#data 0xE06CF308
#data 0xF437

loc_CE30D66:
#data 0x9042
#data 0x600C004C
#data 0x8B018801
#data 0x0009AF38

#align4
loc_CE30D74:
#data 0x0009AEA6

#align4
loc_CE30D78:
#data 0xE0199538
#data 0x035C354C
#data 0x890E2338
#data 0xF38DE300
#data 0xE0600534
#data 0xF235F246
#data 0xF48D8F01
#data 0xF447

loc_CE30D96:
#data 0xE068
#data 0xC719F447
#data 0xE06CF308
#data 0xF437

loc_CE30DA2:
#data 0x9024
#data 0x2338034C
#data 0x901E8B03
#data 0xC80F004C
#data 0x8B07

loc_CE30DB2:
#data 0x901C
#data 0x2228024C
#data 0x90168905
#data 0xC8F0004C
#data 0x8901

loc_CE30DC2:
#data 0xAFBB
#data 0x0009

loc_CE30DC6:
#data 0x000B
#data 0x0009
;==============================================

loc_CE30DCA:
bra loc_CE30A50
nop

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
#data 0x03F4
#data 0x01AC01A7
#data 0x01D60158
#data 0x01FE02A4

loc_CE30DF0:
#data 0x01FF
#data 0x0000

#align4
loc_CE30DF4:
#data loc_CE352C0
#data loc_8C2896B0
#data loc_8C034E8C
#data 0xBF4DB6DB

#align4
loc_CE30E04:
#data loc_CE353C8


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

#align4
loc_CE30E84:
#data 0x420BD220
#data 0x600E64E3
#data 0x89044011


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

#align4
loc_CE30EA0:
#data 0x4F222FE6
#data 0x430BD318
#data 0x600E6E43
#data 0x89234011
#data 0xE30284E7
#data 0x80E77001
#data 0x0E349023
#data 0xF308C715
#data 0xFE37E05C
#data 0xF38DE068
#data 0xC713FE37
#data 0xE060F308
#data 0xC712FE37
#data 0xE06CF308
#data 0x9013FE37
#data 0x233803ED
#data 0xE6048F04
#data 0xF3E6E05C
#data 0xFE37F34D

#align4
loc_CE30EEC:
#data 0xD30C4F26
#data 0x64E3E508
#data 0x6EF6432B

#align4
loc_CE30EF8:
#data 0x000B4F26
#data 0x6EF6
;==============================================

loc_CE30EFE:
#data 0x01E8

loc_CE30F00:
#data 0x0141
#data 0x01F9
#data 0x00000130

#align4
loc_CE30F08:
#data loc_8C034DEE

loc_CE30F0C:
#data loc_8C051648

loc_CE30F10:
#data loc_8C2896B0
#data 0x40555555
#data 0x40892492
#data 0xBEAB6DB6
#data loc_8C034E8C

#align4
loc_CE30F24:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x430BD343
#data 0x600EED00
#data 0x891C4011
#data 0xD34184E7
#data 0x80E77001
#data 0x64E3430B
#data 0x64E39075
#data 0xE605F48D
#data 0xE05C0ED4
#data 0xE060FE47
#data 0xE068FE47
#data 0xE06CFE47
#data 0xE508FE47
#data 0xD3389068
#data 0xE038F3E6
#data 0x4F26FE37
#data 0x432B6DF6
#data 0x6EF6

loc_CE30F72:
#data 0x9060
#data 0x222802EC
#data 0x03EC8913
#data 0x0E347060
#data 0x0ED5700B
#data 0x0ED470F2
#data 0xD32F7026
#data 0x84E20ED6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012D
#data 0x904A0215
#data 0x0ED4

loc_CE30FA2:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_CE30FAA:
#data 0x4F22
#data 0xD3237FFC
#data 0x2F42430B
#data 0x4011600E
#data 0x64F28904
#data 0xD3237F04
#data 0x4F26432B

#align4
loc_CE30FC4:
#data 0x4F267F04
#data 0x0009000B
;==============================================

#align4
loc_CE30FCC:
#data 0x2FE69034
#data 0x4F226E43
#data 0x600C00EC
#data 0x89068800
#data 0x89048801
#data 0x8B238802
#data 0x200884E6
#data 0x8B0A

loc_CE30FEA:
#data 0xD314
#data 0x64E3430B
#data 0x4011600E
#data 0x4F26891A
#data 0x64E3D314
#data 0x6EF6432B

#align4
loc_CE31000:
#data 0x600C84E7
#data 0x89058800
#data 0x89078801
#data 0x89098802
#data 0x0009A00C

#align4
loc_CE31014:
#data 0x64E34F26
#data 0x6EF6AF42

#align4
loc_CE3101C:
#data 0x64E34F26
#data 0x6EF6AF80

#align4
loc_CE31024:
#data 0x64E34F26
#data 0x6EF6AFBF

#align4
loc_CE3102C:
#data 0x000B4F26
#data 0x01F96EF6
#data 0x0141041C
#data 0x000001E8
#data loc_8C034DEE
#data loc_8C0511B4
#data loc_8C034E8C
#data loc_8C2896B0
#data loc_8C051648


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

#align4
loc_CE310F4:
#data 0x4F222FE6
#data 0x430BD317
#data 0x600E6E43
#data 0x89024011
#data 0x430BD317
#data 0x64E3

loc_CE3110A:
#data 0xD217
#data 0x64E3420B
#data 0x2008600C
#data 0x4F268904
#data 0x64E3D214
#data 0x6EF6422B

#align4
loc_CE31120:
#data 0x000B4F26
#data 0x6EF6
;==============================================

loc_CE31126:
#data 0x8447
#data 0x8B0F2008
#data 0xF38D8447
#data 0x80477001
#data 0xF437E068
#data 0xF39DE060
#data 0xF246F330
#data 0xF427F233
#data 0xF208C70A
#data 0xF427E06C

#align4
loc_CE3114C:
#data 0x432BD302
#data 0x0009

loc_CE31152:
#data 0x01FE

loc_CE31154:
#data 0x01F9
#data 0x0000

#align4
loc_CE31158:
#data loc_8C034DEE

loc_CE3115C:
#data loc_8C051648

loc_CE31160:
#data loc_8C052C84
#data loc_8C05176E
#data loc_8C052CE2
#data loc_8C052DAC
#data 0xBECDB6DB


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

#align4
loc_CE3121C:
#data 0xF308C71F
#data 0xFE37E05C
#data 0x03EC902D
#data 0x89032338
#data 0xF3E6E05C
#data 0xFE37F34D

#align4
loc_CE31234:
#data 0x64E3E068
#data 0xC719FE47
#data 0xE060F308
#data 0xFE37E301
#data 0xF308C717
#data 0xFE37E06C
#data 0x0E34901A
#data 0xD3154F26
#data 0x432B6DF6
#data 0x6EF6


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
;==============================================

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
#data 0x01D2
#data 0x000001D3

#align4
loc_CE31288:
#data loc_8C034DEE

loc_CE3128C:
#data 0xC1CDB6DB

#align4
loc_CE31290:
#data 0xC2009249

#align4
loc_CE31294:
#data loc_8C0511B4

loc_CE31298:
#data loc_8C034E8C
#data 0x40BAAAAA
#data 0x41700000
#data 0xBF892492
#data loc_8C05177A

#align4
loc_CE312AC:
#data loc_8C051648


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

#align4
loc_CE312F0:
#data 0x430BD327
#data 0x600E64E3
#data 0x89024011
#data 0x430BD325
#data 0x64E3

loc_CE31302:
#data 0xD222
#data 0x64E3420B
#data 0x2008600C
#data 0x8904


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

loc_CE31384:
#data 0x01E8

loc_CE31386:
#data 0x01FE

loc_CE31388:
#data 0x01FF
#data 0x0000

#align4
loc_CE3138C:
#data loc_8C052CE2
#data loc_8C034DEE
#data loc_8C05176E

#align4
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

loc_CE313B4:
#data 0x6E432FE6
#data 0x84E64F22
#data 0x8B2C2008
#data 0x430BD34A
#data 0x84E664E3
#data 0xD349E505
#data 0x80E67001
#data 0x64E3430B
#data 0x02EC9082
#data 0x8B1E2228
#data 0xE136907F
#data 0x0E14E301
#data 0x0E347058
#data 0xD342E514
#data 0x430BE609
#data 0x907564E3
#data 0xD340E400
#data 0x0E45E516
#data 0x0E4470F2
#data 0x0E467026
#data 0x623284E2
#data 0x4000600C
#data 0x012D727C
#data 0x02157101
#data 0x420BD239
#data 0x64E3

loc_CE3141A:
#data 0x9062
#data 0x600C00EC
#data 0x8B028803
#data 0x420BD236
#data 0x64E3

loc_CE3142A:
#data 0xE15C
#data 0x31ECD335
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031EC
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031EC
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430B
#data 0x420BD227
#data 0x600E64E3
#data 0x89044011
#data 0xD2254F26
#data 0x422B64E3
#data 0x6EF6

loc_CE3147E:
#data 0x4F26
#data 0x6EF6000B
;==============================================

loc_CE31484:
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
#data 0x01A101FE
#data 0x01FF01AC

loc_CE314E4:
#data 0x02A4

loc_CE314E6:
#data 0x0141

loc_CE314E8:
#data 0x01D2
#data 0x0000
#data loc_8C052B4C
#data loc_8C056DE4
#data loc_8C034E8C
#data loc_8C2896B0
#data loc_8C04223A
#data loc_8C0511E2
#data loc_8C052C84

#align4
loc_CE31508:
#data loc_8C034DEE
#data loc_8C051648

#align4
loc_CE31510:
#data loc_CE353E8

loc_CE31514:
#data 0x41555555


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

loc_CE3167E:
#data 0x01D2

loc_CE31680:
#data 0x02A4

loc_CE31682:
#data 0x01F2

loc_CE31684:
#data 0x01FA
#data 0x0000

#align4
loc_CE31688:
#data 0xC1555555

#align4
loc_CE3168C:
#data loc_8C042008

loc_CE31690:
#data loc_8C034DEE

loc_CE31694:
#data 0xBF555555

#align4
loc_CE31698:
#data 0x3F555555

#align4
loc_CE3169C:
#data loc_8C034E8C

loc_CE316A0:
#data loc_8C051648

loc_CE316A4:
#data loc_CE353F4

loc_CE316A8:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x9D61D334
#data 0x3DEC430B
#data 0x4011600E
#data 0x84E68958
#data 0xE51FE301
#data 0x80E67001
#data 0x0D34E01C
#data 0x430BD32E
#data 0xE02064E3
#data 0x905081EE
#data 0x904F04ED
#data 0x233803EC
#data 0x85D58901
#data 0x6403

loc_CE316E6:
#data 0x934A
#data 0x2D396D4D
#data 0x89014D11
#data 0x3D2C9246

#align4
loc_CE316F4:
#data 0x4D2CE2F4
#data 0x64DDD226
#data 0x44084408
#data 0x6142342C
#data 0xF508C721
#data 0x415AC721
#data 0xE05CF408
#data 0xF352F32D
#data 0xFE37F343
#data 0x5141E068
#data 0xF32D415A
#data 0xF343F352
#data 0xC71CFE37
#data 0xF5085142
#data 0xF32D415A
#data 0xF343F352
#data 0xFE37E060
#data 0x5143E06C
#data 0xF32D415A
#data 0xF343F352
#data 0x901CFE37
#data 0x211801ED
#data 0x66D38D08
#data 0xF3E6E05C
#data 0xFE37F34D
#data 0xF3E6E068
#data 0xFE37F34D

#align4
loc_CE31760:
#data 0xD30E4F26
#data 0xE5027605
#data 0x6DF664E3
#data 0x6EF6432B

#align4
loc_CE31770:
#data 0x6DF64F26
#data 0x6EF6000B
;==============================================
#data 0x034A02A4
#data 0x30000525
#data 0x01300FFF
#data loc_8C034DEE
#data loc_8C042008
#data 0x3FD55555
#data 0x47800000

#align4
loc_CE31794:
#data loc_CE35400
#data 0x40092492
#data loc_8C034E8C

#align4
loc_CE317A0:
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x9D9FD352
#data 0x3DEC430B
#data 0x31ECE15C
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031EC
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031EC
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0xF3E69081
#data 0xF2E6E038
#data 0x8B03F325
#data 0xF3E6907B
#data 0xFE37E038

#align4
loc_CE317FC:
#data 0x70FF85EE
#data 0x600F81EE
#data 0x8B112008
#data 0xF38DE068
#data 0xE01CFE37
#data 0xD339E400
#data 0xE0190D44
#data 0x0D44E52B
#data 0x64E3430B
#data 0xD2364F26
#data 0x6DF664E3
#data 0x6EF6422B

#align4
loc_CE3182C:
#data 0x6DF64F26
#data 0x6EF6000B
;==============================================

loc_CE31834:
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

loc_CE318EC:
#data 0x02A4
#data 0x041C

loc_CE318F0:
#data 0x01D2
#data 0x0000

#align4
loc_CE318F4:
#data loc_8C034DEE

loc_CE318F8:
#data loc_8C042008
#data loc_8C05176E

#align4
loc_CE31900:
#data loc_CE35430

loc_CE31904:
#data 0xC13AAAAA

#align4
loc_CE31908:
#data 0x413AAAAA

#align4
loc_CE3190C:
#data 0x3F555555


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

loc_CE319B4:
mov r4,r3
mov.l @(loc_CE31A4C,pc),r1 ; r1 set to 0xCE3543C
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

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
;==============================================

loc_CE31A32:
#data 0x02A4

loc_CE31A34:
#data 0x012C
#data 0x0000

#align4
loc_CE31A38:
#data 0xBF555555

#align4
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

#align4
loc_CE31B0C:
#data 0x06ECE025
#data 0x9033E500
#data 0x666CE701
#data 0x460803EC
#data 0x066ED01C
#data 0xD31C363C
#data 0x64E3430B

#align4
loc_CE31B28:
#data 0xE2009028
#data 0x0E24


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
#data 0x0000

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

loc_CE31C74:
mov.w @(loc_CE31CA8,pc),r5 ; r5 set to 0x2A4
mov 0x09,r0 ; r0 set to 0x09
mov.l @(loc_CE31CC0,pc),r3 ; r3 set to 0x8C034E8C
mov 0x08,r6 ; r6 set to 0x08
add r4,r5 ; r5 ??? bc r4 is ???
mov.b r0,@(0x0C,r5)
jmp @r3
mov 0x13,r5

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

loc_CE31CA4:
#data 0x0340

loc_CE31CA6:
#data 0x0158

loc_CE31CA8:
#data 0x02A4
#data 0x0000

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

loc_CE31CCC:
#data 0xC73C2FE6
#data 0x6E43FFFB
#data 0xFF084F22
#data 0x03EC906F
#data loc_8D042338
#data 0xE03864E3
#data 0xF3F0F3E6
#data 0xFE37

loc_CE31CEA:
#data 0xD336
#data 0x0009430B
#data 0x4011600E
#data 0x84E78908
#data 0x80E77001
#data 0xFEF7E060
#data 0xF308C731
#data 0xFE37E06C

#align4
loc_CE31D08:
#data 0xFFF94F26
#data 0x6EF6000B
;==============================================

#align4
loc_CE31D10:
#data 0x034C9053
#data 0x89132338
#data 0xF308C729
#data 0xF246E060
#data 0x8B03F235
#data 0xF246E06C
#data 0xF427F24D

#align4
loc_CE31D2C:
#data 0xF308C727
#data 0xF246E060
#data 0x8B03F325
#data 0xF246E06C
#data 0xF427F24D

#align4
loc_CE31D40:
#data 0x432BD320
#data 0x0009


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
#data 0x014B

loc_CE31DBC:
#data 0x02A4
#data 0x0000
#data 0x3F892492

#align4
loc_CE31DC4:
#data loc_8C034DEE
#data 0xBD892492
#data 0xBF892492

#align4
loc_CE31DD0:
#data loc_8C046C8A

loc_CE31DD4:
#data loc_8C051648

loc_CE31DD8:
#data loc_CE35488


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

loc_CE31F82:
#data 0x907C
#data 0x6E432FE6
#data 0x4F222FD6
#data 0x9D7503EC
#data loc_8D102338
#data 0xE3003DEC
#data 0x66336533
#data 0xD33D0E34
#data 0x64E3430B
#data 0x89062008
#data 0xE301E01A
#data 0xE51E0D34
#data 0x430BD339
#data 0x64E3

loc_CE31FB6:
#data 0xD239
#data 0x64E3420B
#data 0x4011600E
#data 0xE0008907
#data 0x80DCD336
#data 0x4F2664E3
#data 0x432B6DF6
#data 0x6EF6

loc_CE31FD2:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
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

loc_CE32078:
#data 0x01A1

loc_CE3207A:
#data 0x01A3

loc_CE3207C:
#data 0x02A4
#data 0x0141

loc_CE32080:
#data 0x01F9
#data 0x0000

#align4
loc_CE32084:
#data loc_8C2896B0

loc_CE32088:
#data loc_8C056DE4

loc_CE3208C:
#data loc_8C05115A

loc_CE32090:
#data loc_8C034E8C
#data loc_8C062148
#data loc_8C042008
#data loc_8C034DEE
#data loc_8C051648

#align4
loc_CE320A4:
#data loc_CE3550C

loc_CE320A8:
#data loc_8C05218A

loc_CE320AC:
#data 0x41000000

#align4
loc_CE320B0:
#data 0x4F222FE6
#data 0x906F7FFC
#data 0x936C6E43
#data 0x2F3233EC
#data 0x222802EC
#data 0xD336890A
#data 0xE501E200
#data 0x66230E24
#data 0x64E3430B
#data 0xE51ED233
#data 0x64E3420B

#align4
loc_CE320DC:
#data 0x31ECE15C
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031EC
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031EC
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0xF3E69041
#data 0xF2E6E038
#data 0x8F04F325
#data 0x903A64E3
#data 0xE038F3E6
#data 0xFE37

loc_CE3212A:
#data 0xD31F
#data 0x0009430B
#data 0x4011600E
#data 0x84E7892B
#data 0x80E77001
#data 0x63F2E000
#data 0x902B803C
#data 0x233803EC
#data 0xC7188902
#data 0xF308A002

#align4
loc_CE32150:
#data 0xF308C717

#align4
loc_CE32154:
#data 0xFE37E05C
#data 0x03EC9020
#data 0x89022338
#data 0xA002C714
#data 0xF308

loc_CE32166:
#data 0xC714
#data 0xF308

loc_CE3216A:
#data 0xE068
#data 0xFE3764E3
#data 0xF308C712
#data 0xE515E060
#data 0xC711FE37
#data 0xE06CF308
#data 0xFE37E604
#data 0x4F267F04
#data 0x432BD30E
#data 0x6EF6

loc_CE3218E:
#data 0x7F04
#data 0x000B4F26
#data 0x02A46EF6
#data 0x041C0141
#data 0x000001D2
#data loc_8C062148
#data loc_8C042008
#data loc_8C034DEE
#data 0xBFD55555
#data 0x3FD55555
#data 0x3CD55555
#data 0xBCD55555
#data 0x40F00000
#data 0xBECDB6DB
#data loc_8C034E8C


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
#data loc_CE35534


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
#data 0x2FE6
#data 0xED002FD6
#data 0xD3384F22
#data 0x6E43430B
#data 0x4011600E
#data 0x84E78914
#data 0xF48DE515
#data 0x7001E609
#data 0x80E7D331
#data 0xFE47E05C
#data 0xFE47E068
#data 0xF308C730
#data 0xFE37E060
#data 0xF308C72F
#data 0xFE37E06C
#data 0x64E3430B

#align4
loc_CE323B4:
#data 0x02EC9049
#data 0x89232228
#data 0x31ECE15C
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031EC
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031EC
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x00EC902A
#data 0x8802600C
#data 0xD21B8902
#data 0x64E3420B

#align4
loc_CE32404:
#data 0x03EC9023
#data 0x89192338
#data 0xD3189020
#data 0x600C00EC
#data 0x901A8803
#data 0x705602EC
#data 0x0E247231
#data 0x0ED5700B
#data 0x0ED470F2
#data 0x0ED67026
#data 0x623284E2
#data 0x4000600C
#data 0x012D727C
#data 0x02157101
#data 0x0ED49007

#align4
loc_CE32440:
#data 0x6DF64F26
#data 0x6EF6000B
;==============================================

loc_CE32448:
#data 0x01A3
#data 0x0141
#data 0x014B01F9
#data 0x00000255

#align4
loc_CE32454:
#data loc_CE35534

loc_CE32458:
#data loc_CE35530

loc_CE3245C:
#data loc_8C034E8C
#data loc_8C034DEE
#data 0xC0892492
#data 0xBF892492
#data loc_8C053082
#data loc_8C2896B0


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
#data 0x2FE6
#data 0xD3254F22
#data 0x6E43430B
#data 0x4011600E
#data 0x84E78914
#data 0xF48DE515
#data 0x7001E609
#data 0x80E7D31E
#data 0xFE47E05C
#data 0xFE47E068
#data 0xF308C71D
#data 0xFE37E060
#data 0xF308C71C
#data 0xFE37E06C
#data 0x64E3430B

#align4
loc_CE32694:
#data 0x02EC9026
#data 0x891E2228
#data 0xE3029023
#data 0x0E34E15C
#data 0xE03431EC
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05C
#data 0xE160F318
#data 0xF23031EC
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16C
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0xFE27

loc_CE326DA:
#data 0x4F26
#data 0x6EF6000B
;==============================================

loc_CE326E0:
#data 0x01A3

loc_CE326E2:
#data 0x01D2
#data 0x01F90141

#align4
loc_CE326E8:
#data loc_CE35560

loc_CE326EC:
#data loc_CE35564

loc_CE326F0:
#data loc_8C034E8C
#data loc_8C034DEE
#data 0xC0892492
#data 0xBF892492


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

loc_CE328D6:
#data 0x904D
#data 0x6E432FE6
#data 0x00EC4F22
#data 0x8806600C
#data 0xE5008F06
#data 0xE3109046
#data 0x0E249243
#data 0x0E347001

#align4
loc_CE328F4:
#data 0x430BD325
#data 0x84E664E3
#data 0xE400E345
#data 0x80E67001
#data 0x0E349039
#data 0x0E45700B
#data 0x0E4470F2
#data 0xD31F7026
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0x7101012D
#data 0xBAB70215
#data 0xD31A64E3
#data 0x64E3430B
#data 0xE072D319
#data 0x430B81EE
#data 0xD21864E3
#data 0xE619E516
#data 0x64E3420B
#data 0x64E34F26
#data 0x6EF6


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

loc_CE32972:
#data 0x02A4

loc_CE32974:
#data 0x0255
#data 0x00FF
#data 0x01A103F0

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
#data loc_8C035162
#data loc_8C2896B0
#data loc_8C05115A
#data loc_8C0BB2BC
#data loc_8C034E8C

loc_CE329A0:
#data 0xE300

loc_CE329A2:
#data 0x9080
#data 0x0E34E206
#data 0xD342E012
#data 0x430B0D24
#data 0x600E64E3
#data 0x89264011
#data 0xE4009076
#data 0x9274E30A
#data 0x70010E44
#data 0x84E60E44
#data 0x80E67001
#data 0x0D34E014
#data 0x9069E310
#data 0x70010E24
#data 0xE02C0E34
#data 0x81EED336
#data 0x64E3430B
#data 0xD337C735
#data 0xC735F308
#data 0xE60165F3
#data 0xF308FF3A
#data 0xFF37E004
#data 0x64E3430B
#data 0xE516D232
#data 0x420BE61A
#data 0x64E3

loc_CE32A06:
#data 0x7F0C
#data 0x6DF64F26
#data 0x6EF6000B
;==============================================

#align4
loc_CE32A10:
#data 0xE5029049
#data 0x6E432FE6
#data 0x9447E305
#data 0x0E544F22
#data 0x0E547007
#data 0x904234EC
#data 0x0E34E206
#data 0xD321E012
#data 0x430B0424
#data 0x903B64E3
#data 0x222802EC
#data 0xE025890D
#data 0xE50206EC
#data 0xE7019035
#data 0x03EC666C
#data 0xD01F4608
#data 0x363C066E
#data 0x430BD31E
#data 0x64E3

loc_CE32A5A:
#data 0x85EE
#data 0x89052008
#data 0x70FF85EE
#data 0x4F2681EE
#data 0x6EF6000B
;==============================================

#align4
loc_CE32A6C:
#data 0xE400901C
#data 0xE101D218
#data 0x70010E44
#data 0x84E20E44
#data 0x600C6320
#data 0x633C410C
#data 0x8B0B2318
#data 0xD30FE046
#data 0x64E381EE
#data 0xE61B84E6
#data 0x7001E516
#data 0x4F2680E6
#data 0x6EF6432B

#align4
loc_CE32AA0:
#data 0x000B4F26
#data 0x03F16EF6
#data 0x00FF03F0
#data 0x032802A4
#data 0x0140014B
#data loc_8C034DEE
#data loc_8C0BB314
#data 0xC1555555
#data 0x42DEDB6D
#data loc_8C050834
#data loc_8C034E8C

#align4
loc_CE32ACC:
#data loc_CE3524C
#data loc_8C03544C
#data loc_8C2895F6

#align4
loc_CE32AD8:
#data 0xE3029081
#data 0x6E432FE6
#data 0xE2052FD6
#data 0x2FC69D7A
#data 0x4F223DEC
#data 0xE3060E34
#data 0x0E249076
#data 0x0D34E012
#data 0x430BD33C
#data 0x907064E3
#data 0x880100EC
#data 0xEC008F09
#data 0xD339906B
#data 0x430B0EC4
#data 0xD23864E3
#data 0x420BE548
#data 0x64E3

loc_CE32B1A:
#data 0x85EE
#data 0x81EE70FF
#data 0x2008600F
#data 0x905D8B13
#data 0xD333E61C
#data 0x0EC464E3
#data 0x0EC470FF
#data 0x9056E516
#data 0x70010EC4
#data 0x84E60EC4
#data 0x80E67001
#data 0x6CF64F26
#data 0x432B6DF6
#data 0x6EF6

loc_CE32B4E:
#data 0xE013
#data 0x90490DC4
#data 0x233803EC
#data 0xD3288B17
#data 0x64E3430B
#data loc_8D032008
#data 0xE01364E3
#data 0x0D34E3FF

#align4
loc_CE32B6C:
#data 0x430BD324
#data 0x20080009
#data 0xE0148909
#data 0x233803DC
#data 0x03DC8905
#data 0x0D3473FF
#data 0x700185EE
#data 0x81EE

loc_CE32B8A:
#data 0x4F26
#data 0x6DF66CF6
#data 0x6EF6000B
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

loc_CE32BDC:
#data 0x02A4
#data 0x03F8
#data 0x01410328
#data 0x032703F9
#data 0x00000525

#align4
loc_CE32BEC:
#data loc_8C034DEE
#data loc_8C0626D8
#data loc_8C04223A
#data loc_8C034E8C
#data loc_8C055D2E
#data loc_8C055D54

#align4
loc_CE32C04:
#data loc_8C051648

loc_CE32C08:
#data loc_CE355A0


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
#data 0x904A
#data 0x233803EC
#data 0xE1608B0D
#data 0xE03831EC
#data 0xF2E6F318
#data 0x31ECE16C
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0xFE27

loc_CE32CF2:
#data 0xE060
#data 0xF2E6F38D
#data 0x8F03F325
#data 0xFEF764E3
#data 0xFEF7E06C

#align4
loc_CE32D04:
#data 0xD3214F26
#data 0x432BFFF9
#data 0x6EF6


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
#data 0x0140

loc_CE32D68:
#data 0x041C
#data 0x0000

#align4
loc_CE32D6C:
#data loc_8C0BDF70

loc_CE32D70:
#data 0x40092492

#align4
loc_CE32D74:
#data 0xBD892492

#align4
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
#data loc_8C034DEE

#align4
loc_CE32D90:
#data loc_8C0511B4


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
#data 0x2FE6
#data 0x4F222FD6
#data 0x936E7FFC
#data 0xE5006E43
#data 0x2F3233EC
#data 0xD33D84E6
#data 0x80E67001
#data 0x64E3430B
#data 0xE2489064
#data 0xD33AED00
#data 0x700B0E24
#data 0x70F20ED5
#data 0x70260ED4
#data 0x84E20ED6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012D
#data 0xB82D0215
#data 0xD33264E3
#data 0x64E3430B
#data 0xE01562F2
#data 0x904A02D4
#data 0x600C00EC
#data 0x8F068806
#data 0x9046E629
#data 0x9243E310
#data 0x70010E24
#data 0x0E34

loc_CE32E62:
#data 0x64E3
#data 0x7F04E516
#data 0xD3284F26
#data 0x432B6DF6
#data 0x6EF6


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
#data 0xE200

loc_CE32E9A:
#data 0x9027
#data 0x90260E24
#data 0x233803EC
#data 0x901E8917
#data 0xD31BE400
#data 0x0E4465F3
#data 0x0E447001
#data 0x84E6E601
#data 0x80E67001
#data 0x0E449017
#data 0x81EE70EB
#data 0xF308C712
#data 0xFF3AC712
#data 0xE004F308
#data 0x430BFF37
#data 0x64E3

loc_CE32ED6:
#data 0x7F0C
#data 0x000B4F26
#data 0x6EF6
;==============================================

loc_CE32EDE:
#data 0x02A4
#data 0x01A1

loc_CE32EE2:
#data 0x0255
#data 0x03F000FF

loc_CE32EE8:
#data 0x03F8

loc_CE32EEA:
#data 0x0328
#data 0x014103F1

#align4
loc_CE32EF0:
#data loc_8C034DEE

loc_CE32EF4:
#data loc_8C051648

loc_CE32EF8:
#data loc_CE355AC

loc_CE32EFC:
#data loc_CE355B4
#data loc_8C035162
#data loc_8C2896B0
#data loc_8C05115A
#data loc_8C034E8C
#data 0xC0D55555
#data 0x433C9249
#data loc_8C050834


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
#data 0x9072
#data 0x222802EC
#data 0xD33B890A
#data 0x430B0ED4
#data 0x200864E3
#data 0x63F28904
#data 0x023CE015
#data 0x03247201

#align4
loc_CE32F8C:
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6
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
#data 0x0140

loc_CE33058:
#data 0x0255
#data 0x0000

#align4
loc_CE3305C:
#data loc_8C034DEE

loc_CE33060:
#data loc_8C034E8C
#data loc_8C063500

#align4
loc_CE33068:
#data loc_8C035162

loc_CE3306C:
#data loc_8C051648

loc_CE33070:
#data loc_CE355C8

loc_CE33074:
#data 0xE200

loc_CE33076:
#data 0x9085
#data 0x0E24D346
#data 0x64E3430B
#data 0x4011600E
#data 0x907E893A
#data 0x0E44E400
#data 0x0E447001
#data 0x700184E6
#data 0x604380E6
#data 0x80E70009
#data 0x81EEE028
#data 0xF308C73D
#data 0xFE37E05C
#data 0xF308C73C
#data 0xFE37E068
#data 0x03ED906A
#data 0x8B072338
#data 0xF3E6E05C
#data 0xFE37F34D
#data 0xF3E6E068
#data 0xFE37F34D

#align4
loc_CE330C8:
#data 0xE302905F
#data 0x0E34E516
#data 0xD333E606
#data 0x64E3430B
#data 0xE01C62F2
#data 0x65F3E301
#data 0xC7300234
#data 0xE004F308
#data 0xD3306633
#data 0xC72EFF37
#data 0xE008F308
#data 0xFF377504
#data 0x64E3430B

#align4
loc_CE330FC:
#data 0x4F267F10
#data 0x6EF6000B
;==============================================

#align4
loc_CE33104:
#data 0x2FE69042
#data 0x4F226E43
#data 0x600C00EC
#data 0x8B058806
#data 0xE3109037
#data 0x0E249239
#data 0x0E347001

#align4
loc_CE33120:
#data 0xD32384E7
#data 0x80E77001
#data 0x64E3430B
#data 0x420BD221
#data 0x902D64E3
#data 0xE400E33B
#data 0x700B0E34
#data 0x70F20E45
#data 0x70260E44
#data 0x6543D31C
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0x7101012D
#data 0xD2180215
#data 0x64E3420B
#data 0xE516D30F
#data 0x430BE605
#data 0x4F2664E3
#data 0xAF5964E3
#data 0x6EF6


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
#data 0x03F003F1
#data 0x01F90130
#data 0x00FF0255
#data 0x000001A1
#data loc_8C034DEE
#data 0x41555555
#data 0xBDD55555
#data loc_8C034E8C
#data 0xC1D55555
#data 0x43092492
#data loc_8C050834

#align4
loc_CE331B0:
#data loc_CE31E98
#data loc_8C05115A
#data loc_8C2896B0
#data loc_8C035162

#align4
loc_CE331C0:
#data loc_CE355D0


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

#align4
loc_CE3327C:
#data 0xF3E6904C
#data 0xFE37E038
#data 0x80E7E001
#data 0xF308C72D
#data 0xFE37E05C
#data 0xFEF7E068
#data 0xF308C72B
#data 0xFE37E060
#data 0xF308C72A
#data 0xFE37E06C
#data 0x03ED903C
#data loc_8D082338
#data 0xE05CE60B
#data 0xF34DF3E6
#data 0xE068FE37
#data 0xF34DF3E6
#data 0xFE37

loc_CE332BE:
#data 0xE516
#data 0x64E34B0B
#data 0x0009A01F

#align4
loc_CE332C8:
#data 0x70FF85EE
#data 0x600F81EE
#data 0x8B182008
#data 0xE01CD315
#data 0x0DC4E52B
#data 0x64E3430B
#data 0x80E6E003
#data 0x000960C3
#data 0xE06080E7
#data 0xE06CFEF7
#data 0xF330F39D
#data 0xE05CFEF7
#data 0xE516F2E6
#data 0xF233E60A
#data 0x4B0BFE27
#data 0x64E3

loc_CE33306:
#data 0x4F26
#data 0x6BF6FFF9
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================

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
#data 0x00000130

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
#data 0x40555555
#data 0x41892492
#data 0xBF4DB6DB


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

loc_CE333EE:
#data 0x03F8

loc_CE333F0:
#data 0x0328
#data 0x0000

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

loc_CE33408:
#data 0x2FD62FE6
#data 0xFFFB2FC6
#data 0xFFDBFFEB
#data 0x7FF44F22
#data 0x9E87C746
#data 0xC747FE08
#data 0x6D43FF08
#data 0xDC44E016
#data 0x03EC3EDC
#data 0x4308C744
#data 0x33CC4300
#data 0x435A6331
#data 0xF3E2F32D
#data 0xFF3AF3F3
#data 0xE016FD08
#data 0x430803EC
#data 0x33CC4300
#data 0x63038531
#data 0xF32D435A
#data 0xF3F3F3D2
#data 0xE004D33A
#data 0xFF3765F3
#data 0x64D3430B
#data 0x65F3E016
#data 0x420802EC
#data 0x32CC4200
#data 0x63038522
#data 0xE016435A
#data 0xF3E2F32D
#data 0xFF3AF3F3
#data 0x430803EC
#data 0x3C3C4300
#data 0x630385C3
#data 0xD32D435A
#data 0xF32DE004
#data 0xF3F3F3D2
#data 0x430BFF37
#data 0x904664D3
#data 0x222802DC
#data 0xEC008D0C
#data 0x60339342
#data 0x704C0009
#data 0x05DCD225
#data 0x353C707D
#data 0x04DE420B
#data 0x0DC49037

#align4
loc_CE334C0:
#data 0x00ECE016
#data 0x890B8800
#data 0x89128801
#data 0x890B8802
#data 0x89098803
#data 0x89078804
#data 0x890A8805
#data 0x0009A00B

#align4
loc_CE334E0:
#data 0xE301E016
#data 0x0E34A007

#align4
loc_CE334E8:
#data 0x02ECE016
#data 0xA0027201
#data 0x0E24

loc_CE334F2:
#data 0xE016
#data 0x0EC4

loc_CE334F6:
#data 0x7F0C
#data 0xFDF94F26
#data 0xFFF9FEF9
#data 0x6DF66CF6
#data 0x6EF6000B
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

loc_CE3352C:
#data 0x02A4
#data 0x014B
#data 0x000000FF
#data 0x3FD55555

#align4
loc_CE33538:
#data loc_CE355E0
#data 0x43800000
#data 0x40092492
#data loc_8C0FDB4E
#data loc_8C0424A6

#align4
loc_CE3354C:
#data loc_8C034E8C


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
;==============================================

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
#data 0x0000

#align4
loc_CE33654:
#data loc_8C034DEE

loc_CE33658:
#data loc_8C051648

loc_CE3365C:
#data 0x42092492

#align4
loc_CE33660:
#data 0xBF092492

#align4
loc_CE33664:
#data loc_8C034E8C

loc_CE33668:
#data loc_8C059F64

loc_CE3366C:
#data loc_8C0BE4C4

loc_CE33670:
#data loc_8C05933C

loc_CE33674:
#data 0x314CE15C
#data 0xF318E034
#data 0xE168F246
#data 0xF230314C
#data 0xE05CF427
#data 0xF318F246
#data 0x314CE160
#data 0xF427F230
#data 0xF246E038
#data 0xE16CF318
#data 0xF230314C
#data 0xE060F427
#data 0xF318F246
#data 0xF427F230
#data 0xF408C73F
#data 0xF3469075
#data 0xE038F340
#data 0xF235F246
#data 0x906E8B07
#data 0xE038F346
#data 0xF437F340
#data 0x70018447
#data 0x8047

loc_CE336CE:
#data 0xD338
#data 0x0009432B


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
#data 0x44092492

#align4
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
#data 0x2FE6
#data 0xD33C4F22
#data 0x6E43430B
#data 0x4011600E
#data 0xD33A8931
#data 0x6563E600
#data 0x64E3430B
#data 0xE30084E7
#data 0xF48D6233
#data 0x80E77001
#data 0x0E349061
#data 0x0E2470FF
#data 0x0E24905E
#data 0x0E247001
#data 0xFE47E05C
#data 0xFE47E068
#data 0xF308C72F
#data 0xFE37E05C
#data 0xF308C72E
#data 0xFE37E060
#data 0xF308C72D
#data 0xFE37E06C
#data 0x03ED904B
#data loc_8D042338
#data 0xE05CE613
#data 0xF34DF3E6
#data 0xFE37

loc_CE33876:
#data 0x4F26
#data 0xE516D327
#data 0x432B64E3
#data 0x6EF6

loc_CE33882:
#data 0x4F26
#data 0x6EF6000B
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
#data 0x03F9
#data 0x01300327

#align4
loc_CE33900:
#data loc_8C05933C

loc_CE33904:
#data loc_8C034DEE
#data loc_8C02FEC4
#data 0x40555555
#data 0xC0892492
#data 0xBF892492

#align4
loc_CE33918:
#data loc_8C034E8C

loc_CE3391C:
#data loc_8C052CE2

loc_CE33920:
#data loc_8C0511B4


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
#data 0x2FE6
#data 0x7FFC4F22
#data 0x6E43E05C
#data 0x935BE168
#data 0x33EC31EC
#data 0xF0E62F32
#data 0xF3E6E034
#data 0xFE37F300
#data 0xF318E05C
#data 0xF2E6E160
#data 0xF23031EC
#data 0xE038FE27
#data 0xE16CF318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF318E060
#data 0xF230F2E6
#data 0xE05CFE27
#data 0xF38DF4E6
#data 0x8B01F345
#data 0x8905F035

#align4
loc_CE339D8:
#data 0xF435F38D
#data 0xF38D8B06
#data 0x8B03F305

#align4
loc_CE339E4:
#data 0xFE47F48D
#data 0xFE47E068

#align4
loc_CE339EC:
#data 0x430BD31A
#data 0x600E64E3
#data 0x89084011
#data 0xE00063F2
#data 0x803C64E3
#data 0x4F267F04
#data 0x432BD315
#data 0x6EF6

loc_CE33A0A:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
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
#data 0x0000

#align4
loc_CE33A58:
#data loc_8C034DEE

loc_CE33A5C:
#data loc_8C051648

loc_CE33A60:
#data loc_CE35610

loc_CE33A64:
#data loc_CE35630

loc_CE33A68:
#data 0xE200

loc_CE33A6A:
#data 0x907E
#data 0x0E24D342
#data 0x64E3430B
#data 0x4011600E
#data 0x9077893A
#data 0x0E44E400
#data 0x0E447001
#data 0x700184E6
#data 0x604380E6
#data 0x80E70009
#data 0x81EEE01E
#data 0xF308C739
#data 0xFE37E05C
#data 0xF308C738
#data 0xFE37E068
#data 0x03ED9063
#data 0x8B072338
#data 0xF3E6E05C
#data 0xFE37F34D
#data 0xF3E6E068
#data 0xFE37F34D

#align4
loc_CE33ABC:
#data 0xE3029058
#data 0x0E34E516
#data 0xD32FE607
#data 0x64E3430B
#data 0xE01C62F2
#data 0x65F3E301
#data 0xC72C0234
#data 0xE004F308
#data 0xD32C6633
#data 0xC72AFF37
#data 0xE008F308
#data 0xFF377504
#data 0x64E3430B

#align4
loc_CE33AF0:
#data 0x4F267F10
#data 0x6EF6000B
;==============================================

#align4
loc_CE33AF8:
#data 0x2FE6903B
#data 0x4F226E43
#data 0x600C00EC
#data 0x8B058806
#data 0xE3109030
#data 0x0E249232
#data 0x0E347001

#align4
loc_CE33B14:
#data 0xD31F84E7
#data 0x80E77001
#data 0x64E3430B
#data 0xE23B9029
#data 0xD31CE400
#data 0x700B0E24
#data 0x70F20E45
#data 0x70260E44
#data 0xE5160E46
#data 0xE60E84E2
#data 0x600C6232
#data 0x727C4000
#data 0x7101012D
#data 0xD20E0215
#data 0x64E3420B
#data 0x64E34F26
#data 0x6EF6AF66


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
#data 0x03F1
#data 0x013003F0
#data 0x025501F9
#data 0x01A100FF
#data loc_8C034DEE
#data 0x41555555
#data 0xBDD55555
#data loc_8C034E8C
#data 0xC1D55555
#data 0x43092492
#data loc_8C050834
#data loc_8C05218A
#data loc_8C2896B0

#align4
loc_CE33B9C:
#data loc_CE35640


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
#data 0xE001
#data 0xC71A80E7
#data 0xE05CF308
#data 0xE068FE37
#data 0xC718FEF7
#data 0xE060F308
#data 0xE06CFE37
#data 0x9015FEE7
#data 0x233803ED
#data 0xE60B8D08
#data 0xF3E6E05C
#data 0xFE37F34D
#data 0xF3E6E068
#data 0xFE37F34D

#align4
loc_CE33CA0:
#data 0x4B0BE516
#data 0xA03C64E3
#data 0x0009

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
#data 0x00000130

#align4
loc_CE33CB8:
#data loc_8C034DEE

loc_CE33CBC:
#data 0xBF4DB6DB

#align4
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
#data 0x40555555
#data 0x41892492

#align4
loc_CE33CE0:
#data 0x70FF85EE
#data 0x600F81EE
#data 0x8B1A2008
#data 0xE52B84E7
#data 0x7001D34F
#data 0xE01C80E7
#data 0x430B0DC4
#data 0xF39D64E3
#data 0xE05CF330
#data 0xE501F2E6
#data 0xF233E609
#data 0xE068FE27
#data 0xC748FEF7
#data 0xE060F208
#data 0xE06CFE27
#data 0x4B0BFEE7
#data 0x64E3

loc_CE33D22:
#data 0x7F04
#data 0xFEF94F26
#data 0x6BF6FFF9
#data 0x6DF66CF6
#data 0x6EF6000B
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
#data loc_8C042008
#data 0xC0092492

#align4
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

#align4
loc_CE33EE8:
#data 0x6DC2903E
#data 0x0DE6D325
#data 0x0E4470ED
#data 0x430B0D44
#data 0x65E364E3
#data 0x64D34B0B
#data 0x420BD220
#data 0x65E364E3
#data 0x64D34B0B
#data 0x64E3BA7C

#align4
loc_CE33F10:
#data 0x31ECE15C
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031EC
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031EC
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x03CCE010
#data 0x8B032338
#data 0x64C2E038
#data 0xF437F3E6

#align4
loc_CE33F58:
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000B
;==============================================

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
#data 0x0000

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
#data loc_8C05933C


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
#data 0x9280
#data 0x32ECDD46
#data 0x20088421
#data 0x937A8914
#data 0x33ECE000
#data 0x90788031
#data 0x0E349376
#data 0x65C2D341
#data 0x64E3430B
#data 0x65E36BC2
#data 0x64B34D0B
#data 0x4D0B65E3
#data 0xE01664B3
#data 0x0C24E202

#align4
loc_CE34008:
#data 0x03EC9068
#data 0x89202338
#data 0x6CC29065
#data 0x708D0CE6
#data 0x706003EC
#data 0x70A00C34
#data 0x706002EC
#data 0x0E24E300
#data 0x0E3470A0
#data 0x430BD332
#data 0x65E364E3
#data 0x64C34D0B
#data 0x420BD22F
#data 0x65E364E3
#data 0x64C34D0B
#data 0x64E34F26
#data 0x6CF66BF6
#data 0xA9DB6DF6
#data 0x6EF6

loc_CE34052:
#data 0x4F26
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;==============================================

loc_CE3405E:
#data 0x2FE6
#data 0x4F222FD6
#data 0x93347FFC
#data 0xED006E43
#data 0x2F3233EC
#data 0x430BD31C
#data 0x600E64E3
#data 0x89454011
#data 0x0ED49030
#data 0x0ED470FF
#data 0x0ED4902D
#data 0x0ED47001
#data 0x700184E7
#data 0xC71A80E7
#data 0xE05CF308
#data 0xE068FE37
#data 0xFE37F38D
#data 0xF308C717
#data 0xFE37E060
#data 0xF308C716
#data 0xFE37E06C
#data 0x03ED9010
#data loc_8D042338
#data 0xE05CE613
#data 0xF34DF3E6
#data 0xFE37

loc_CE340C2:
#data 0x64E3
#data 0x7F04E516
#data 0xD3084F26
#data 0x432B6DF6
#data 0x6EF6

loc_CE340D2:
#data 0x02A4

loc_CE340D4:
#data 0x0130
#data 0x0150
#data 0x01F700C5
#data 0x01B40141
#data 0x032703F9

#align4
loc_CE340E4:
#data loc_8C034DEE

loc_CE340E8:
#data loc_8C02FEC4

loc_CE340EC:
#data loc_8C034E8C
#data loc_8C059F64
#data loc_8C05248E
#data loc_8C05933C
#data 0x40555555
#data 0xC0892492
#data 0xBF892492

#align4
loc_CE34108:
#data 0x02EC9092
#data 0x89222228
#data 0xE502D34B
#data 0x430B0ED4
#data 0x6DF264E3
#data 0x9088E201
#data 0x6DD265E3
#data 0x90850DE6
#data 0x0D3503ED
#data 0x9082E302
#data 0x70030D24
#data 0x70A80D34
#data 0xE244D342
#data 0x430B0D24
#data 0xD24064D3
#data 0x420B65E3
#data 0x64E364D3
#data 0x4F267F04
#data 0xA9596DF6
#data 0x6EF6

loc_CE34156:
#data 0x7F04
#data 0x6DF64F26
#data 0x6EF6000B
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
#data 0x01B40141
#data 0x01F60130

loc_CE34238:
#data 0x02A4

loc_CE3423A:
#data 0x03F8

loc_CE3423C:
#data 0x0328

loc_CE3423E:
#data 0x01EA
#data loc_8C0BE4C4
#data loc_8C059F64

#align4
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

loc_CE34260:
#data 0x4F222FE6
#data 0xE05C7FFC
#data 0xE1686E43
#data 0x31EC939B
#data 0x2F3233EC
#data 0xE034F0E6
#data 0xF300F3E6
#data 0xE05CFE37
#data 0xE160F318
#data 0x31ECF2E6
#data 0xFE27F230
#data 0xF318E038
#data 0xF2E6E16C
#data 0xF23031EC
#data 0xE060FE27
#data 0xF2E6F318
#data 0xFE27F230
#data 0xF4E6E05C
#data 0xF345F38D
#data 0xF0358B01
#data 0x8905

loc_CE342B2:
#data 0xF38D
#data 0x8B06F435
#data 0xF305F38D
#data 0x8B03

loc_CE342BE:
#data 0xF48D
#data 0xE068FE47
#data 0xFE47

loc_CE342C6:
#data 0xD33A
#data 0x64E3430B
#data 0x4011600E
#data 0x63F28908
#data 0x64E3E000
#data 0x7F04803C
#data 0xD3354F26
#data 0x6EF6432B

#align4
loc_CE342E4:
#data 0x4F267F04
#data 0x6EF6000B
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
;==============================================
#data 0x02A4

loc_CE343A8:
#data 0x01F9

loc_CE343AA:
#data 0x041C

loc_CE343AC:
#data 0x01A1
#data 0x0000

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

loc_CE343D4:
#data 0x02EC908A
#data 0x890C2228
#data 0x65F3E300
#data 0xC7460E34
#data 0xC746F308
#data 0xFF3AD346
#data 0xE004F308
#data 0x430BFF37
#data 0x64E3

loc_CE343F6:
#data 0x907A
#data 0x222802EC
#data 0xD3428903
#data 0x430BE516
#data 0x64E3

loc_CE34406:
#data 0x7F0C
#data 0x000B4F26
#data 0x6EF6
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
#data 0x9044
#data 0x0E16D129

#align4
loc_CE34470:
#data 0xE3029042
#data 0x0E34E50C
#data 0x0ED57005
#data 0x0ED470F2
#data 0xD3257026
#data 0x84E20ED6
#data 0x600C6232
#data 0x727C4000
#data 0x7101012D
#data 0x902D0215
#data 0x06ECD220
#data 0x64E3420B
#data 0x00EC902B
#data 0x8903C8F0
#data 0x02EC9027
#data 0x0E2472F0

#align4
loc_CE344B0:
#data 0x6DF64F26
#data 0x6EF6000B
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
#data 0x014B0141

loc_CE344F0:
#data 0x02A4

loc_CE344F2:
#data 0x01FC

loc_CE344F4:
#data 0x0158

loc_CE344F6:
#data 0x03F4
#data 0x01D601A7
#data 0xC2555555
#data 0x43092492
#data loc_8C050EA4

#align4
loc_CE34508:
#data loc_8C04223A

loc_CE3450C:
#data 0xBECDB6DB

#align4
loc_CE34510:
#data loc_CE352A8

loc_CE34514:
#data loc_CE352C0
#data loc_8C2896B0
#data loc_8C034E8C

#align4
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

loc_CE34534:
#data 0xE30284DF
#data 0x89203033
#data 0x01EC90A6
#data 0x891C2118
#data 0x02EC90A3
#data 0x89182228
#data 0x919FE400
#data 0x84DF0E44
#data 0xD25031EC
#data 0x80DF7001
#data 0x701784DF
#data 0x90962100
#data 0x70F20E45
#data 0x70260E44
#data 0x84E20E46
#data 0x600C6122
#data 0x717C4000
#data 0x7301031D
#data 0x0135

loc_CE3457E:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
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

loc_CE345AA:
#data 0x2FE6
#data 0x4F226E43
#data 0x430BD33C
#data 0x84E6E500
#data 0x7001E302
#data 0x906980E6
#data 0xC7390E34
#data 0xE05CF308
#data 0x9064FE37
#data 0x233803EC
#data 0xE05C8B03
#data 0xF34DF3E6
#data 0xFE37

loc_CE345DA:
#data 0xE068
#data 0xFE37F38D
#data 0xF308C732
#data 0xE339E060
#data 0xC731FE37
#data 0xE06CF308
#data 0xFE37E400
#data 0x904BE514
#data 0x0E346643
#data 0x0E45700B
#data 0x0E4470F2
#data 0xD3247026
#data 0x84E20E46
#data 0x600C6232
#data 0x727C4000
#data 0x7101012D
#data 0x4F260215
#data 0x64E3D225
#data 0x6EF6422B


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
#data 0x0141019E
#data 0x01AC01A1
#data 0x01D201F9
#data loc_8C2896B0

#align4
loc_CE3469C:
#data loc_CE35680

loc_CE346A0:
#data loc_CE35688
#data loc_8C035162
#data 0x41F00000
#data 0x40892492
#data 0xBF4DB6DB

#align4
loc_CE346B4:
#data loc_8C034E8C

loc_CE346B8:
#data loc_8C034DEE

loc_CE346BC:
#data loc_8C052CE2

loc_CE346C0:
#data loc_8C0511B4


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

#align4
loc_CE346E4:
#data 0x03EC9056
#data 0x89012338
#data 0x0E34E300

#align4
loc_CE346F0:
#data 0x000B4F26
#data 0x6EF6
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
mov 0x00,r0 ; r0 set to 0x00

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
#data 0x0000

#align4
loc_CE347A4:
#data loc_8C034DEE

loc_CE347A8:
#data loc_8C051854

loc_CE347AC:
#data loc_8C045790

loc_CE347B0:
#data loc_CE35694

loc_CE347B4:
#data 0x4F222FE6
#data 0x90747FF4
#data 0x92736E43
#data 0x633D03ED
#data loc_8D0C2328
#data 0x906EE30A
#data 0x00EC916D
#data 0xCA0131EC
#data 0x90692100
#data 0x00ED9168
#data 0xCA0131EC
#data 0x2101

loc_CE347E2:
#data 0x9064
#data 0x6563E605
#data 0xE0000E34
#data 0x80E6D330
#data 0x64E3430B
#data 0xD331C72F
#data 0xC72FF308
#data 0xFF3A65F3
#data 0xE004F308
#data 0x430BFF37
#data 0xD22D64E3
#data 0x64E3420B
#data 0xE50FD32C
#data 0x430BE600
#data 0x7F0C64E3
#data 0x000B4F26
#data 0x6EF6
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
;==============================================
#data 0x01FA
#data 0x01D20400
#data 0x0130

loc_CE348AE:
#data 0x01A0

#align4
loc_CE348B0:
#data loc_8C02FEC4

loc_CE348B4:
#data 0xC2555555

#align4
loc_CE348B8:
#data 0x43092492

#align4
loc_CE348BC:
#data loc_8C103660

loc_CE348C0:
#data loc_8C056F2A

loc_CE348C4:
#data loc_8C034E8C

loc_CE348C8:
#data 0x4F222FE6
#data 0x93827FF0
#data 0x90816E43
#data 0x2F3233EC
#data 0x937E02ED
#data 0x2238622D
#data 0xE6058D0C
#data 0x9179907A
#data 0x31EC00EC
#data 0x2100CA01
#data 0x91749075
#data 0x31EC00ED
#data 0x2101CA01

#align4
loc_CE348FC:
#data 0x6563D33A
#data 0x64E3430B
#data 0xE20A906C
#data 0xD33A65F3
#data 0xE0000E24
#data 0xC73680E6
#data 0xE004F308
#data 0xFF377504
#data 0xF308C734
#data 0xFF37E008
#data 0x64E3430B
#data 0xE01B62F2
#data 0x0234E300
#data 0x430BD331
#data 0xD23164E3
#data 0xE607E50F
#data 0x64E3420B
#data 0x4F267F10
#data 0x6EF6000B
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
;==============================================
#data 0x02A4
#data 0x040001FA
#data 0x01D2

loc_CE349DE:
#data 0x0130
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
#data 0xC2555555
#data 0x43092492
#data loc_8C103660
#data loc_8C056F2A
#data loc_8C034E8C

#align4
loc_CE34A00:
#data loc_CE356AC

loc_CE34A04:
#data loc_8C034DEE

loc_CE34A08:
#data loc_8C051648

loc_CE34A0C:
#data loc_8C0423FC


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

#align4
loc_CE34A70:
#data 0x4F222FE6
#data 0x430BD322
#data 0x600E6E43
#data 0x89384011
#data 0x700184E6
#data 0xC72180E6
#data 0xE05CF308
#data 0xE068FE37
#data 0xFE37F38D
#data 0xF308C71E
#data 0xFE37E060
#data 0xF308C71D
#data 0xFE37E06C
#data 0x03ED9028
#data loc_8D042338
#data 0xE05CE604
#data 0xF34DF3E6
#data 0xFE37

loc_CE34AB6:
#data 0xD318
#data 0x430BE50F
#data 0x901C64E3
#data 0xE221E302
#data 0x04EE911A
#data 0xE60070EC
#data 0x704204E6
#data 0x70AB0434
#data 0x70310424
#data 0x314C00EC
#data 0x6563D30F
#data 0x2100CA01
#data 0x64E3430B
#data 0xD20D4F26
#data 0x422B64E3
#data 0x6EF6

loc_CE34AF2:
#data 0x4F26
#data 0x6EF6000B
;==============================================
#data 0x01C80130
#data 0x000001D2

#align4
loc_CE34B00:
#data loc_8C034DEE

loc_CE34B04:
#data loc_8C052CE2

loc_CE34B08:
#data loc_8C052DAC
#data 0x41200000
#data 0x41AB6DB6
#data 0xBF892492
#data loc_8C034E8C
#data loc_8C02FEC4
#data loc_8C0423FC

#align4
loc_CE34B24:
#data 0x2FD62FE6
#data 0xD3384F22
#data 0x6E43430B
#data 0xF0E6E05C
#data 0xF3E6E034
#data 0x31ECE168
#data 0xFE37F300
#data 0xF2E6E05C
#data 0xE160F318
#data 0xF23031EC
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16C
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0xFE27F38D
#data 0xF4E6E05C
#data 0x8B01F435
#data 0x8905F305

#align4
loc_CE34B74:
#data 0xF345F38D
#data 0xF38D8B06
#data 0x8B03F035

#align4
loc_CE34B80:
#data 0xFE47F48D
#data 0xFE47E068

#align4
loc_CE34B88:
#data 0x03EC903C
#data loc_8D052338
#data 0xD31FED00
#data 0x0ED4E516
#data 0x64E3430B

#align4
loc_CE34B9C:
#data 0x420BD21D
#data 0x200864E3
#data 0x902E8919
#data 0x222802EC
#data 0x902B8B08
#data 0x233803EC
#data 0x0ED48911
#data 0xE3017001
#data 0x0E34A00D

#align4
loc_CE34BC0:
#data 0x01EC9022
#data 0x89082118
#data 0x70010ED4
#data 0x880100EC
#data 0x901A8903
#data 0x72FF02EC
#data 0x0E24

loc_CE34BDA:
#data 0xD30F
#data 0x64E3430B
#data 0x2008600C
#data 0x84E6890A
#data 0xD30C64E3
#data 0x7001E603
#data 0xE50F80E6
#data 0x6DF64F26
#data 0x6EF6432B

#align4
loc_CE34BFC:
#data 0x6DF64F26
#data 0x6EF6000B
;==============================================
#data 0x0525014B
#data 0x01420141
#data loc_8C034DEE
#data loc_8C04223A
#data loc_8C055D2E
#data loc_8C052CE2
#data loc_8C034E8C

#align4
loc_CE34C20:
#data 0x4F222FE6
#data 0x939D7FFC
#data 0x33EC6E43
#data 0xD34F2F32
#data 0x64E3430B
#data 0x02EC9097
#data 0x8B1B2228
#data 0x31ECE15C
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031EC
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031EC
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230

#align4
loc_CE34C74:
#data 0xF38DE060
#data 0xF325F2E6
#data 0xE06C8B13
#data 0xE068FE37
#data 0xC73AFE37
#data 0xE05CF308
#data 0xC739FE37
#data 0xE060F308
#data 0x9067FE37
#data 0x233803ED
#data 0xE05C8B03
#data 0xF34DF3E6
#data 0xFE37

loc_CE34CA6:
#data 0x85EE
#data 0x81EE70FF
#data 0x2008600F
#data 0x84E68B2E
#data 0x80E67001
#data 0xF308C72F
#data 0xFE37E05C
#data 0xF308C72E
#data 0xFE37E068
#data 0xF308C72D
#data 0xFE37E060
#data 0xF308C72C
#data 0xFE37E06C
#data 0x03ED9046
#data 0x89072338
#data 0xF3E6E05C
#data 0xFE37F34D
#data 0xF3E6E068
#data 0xFE37F34D

#align4
loc_CE34CF0:
#data 0xE01C63F2
#data 0x0324E200
#data 0xD323E52B
#data 0x64E3430B
#data 0xE50F64E3
#data 0x7F04E602
#data 0xD2204F26
#data 0x6EF6422B

#align4
loc_CE34D10:
#data 0x4F267F04
#data 0x6EF6000B
;==============================================

#align4
loc_CE34D18:
#data 0x70018446
#data 0xC71C8046
#data 0xE05CF308
#data 0xE068F437
#data 0xF437F38D
#data 0xF308C719
#data 0xF437E060
#data 0xF308C718
#data 0xF437E06C
#data 0x034D9014
#data 0x8B032338
#data 0xF346E05C
#data 0xF437F34D

#align4
loc_CE34D4C:
#data 0xAF67E05A
#data 0x814E


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
#data 0x014102A4
#data 0x00000130
#data loc_8C034DEE
#data 0x3F555555
#data 0x3F892492
#data 0x40D55555
#data 0xBDD55555
#data 0x414DB6DB
#data 0xBF092492
#data loc_8C042008
#data loc_8C034E8C
#data 0x40555555
#data 0x41892492
#data 0xBE892492

#align4
loc_CE34D9C:
#data loc_CE356C4


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

#align4
loc_CE34E34:
#data 0x4F222FE6
#data 0x430BD328
#data 0x600E6E43
#data 0x89444011
#data 0xE60084E6
#data 0x6563D327
#data 0x80E67001
#data 0xF3E69040
#data 0xFE37E038
#data 0x64E3430B
#data 0xE302903B
#data 0x913AE222
#data 0x70EC04EE
#data 0x704204E6
#data 0x70AB0434
#data 0x708F0424
#data 0x314C03EC
#data 0x0E34902E
#data 0x600C00EC
#data 0x2101CA01
#data 0x034C9029
#data 0x04349026
#data 0xF308C717
#data 0xFE37E05C
#data 0xF38DE068
#data 0xC715FE37
#data 0xE060F308
#data 0xC714FE37
#data 0xE06CF308
#data 0x9016FE37
#data 0x233803ED
#data 0xE6028D04
#data 0xF3E6E05C
#data 0xFE37F34D

#align4
loc_CE34EBC:
#data 0xE501D309
#data 0x64E3430B
#data 0xD20C4F26
#data 0x422B64E3
#data 0x6EF6

loc_CE34ECE:
#data 0x4F26
#data 0x6EF6000B
;==============================================

loc_CE34ED4:
#data 0x041C
#data 0x01C8
#data 0x013001D2

#align4
loc_CE34EDC:
#data loc_8C034DEE

loc_CE34EE0:
#data loc_8C051648

loc_CE34EE4:
#data loc_8C034E8C
#data loc_8C02FEC4
#data 0x41200000
#data 0x41892492
#data 0xBF092492
#data loc_8C0423FC

#align4
loc_CE34EFC:
#data 0x4F222FE6
#data 0x430BD34D
#data 0x90936E43
#data 0x222802EC
#data 0xE160890D
#data 0xE03831EC
#data 0xF2E6F318
#data 0x31ECE16C
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0xFE27

loc_CE34F2A:
#data 0x9082
#data 0xE038F3E6
#data 0xF235F2E6
#data 0x907C890D
#data 0xD34064E3
#data 0xF3E6E609
#data 0xE50FE038
#data 0x84E6FE37
#data 0x80E67001
#data 0x432B4F26
#data 0x6EF6

loc_CE34F52:
#data 0x4F26
#data 0x6EF6000B
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

loc_CE3502A:
mov.l @(loc_CE35050,pc),r3 ; r3 set to 0x8C051648
jmp @r3
nop
#data 0x041C0140

loc_CE35034:
#data 0x014B
#data 0x0000

#align4
loc_CE35038:
#data loc_8C034DEE

loc_CE3503C:
#data loc_8C034E8C

loc_CE35040:
#data 0xC1092492

#align4
loc_CE35044:
#data 0xBF892492

#align4
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


loc_CE35060:
mov.w @(loc_CE3515E,pc),r0 ; r0 set to 0x1C8
mov r4,r5
mov.l r4,@-r15
mov.l @(loc_CE3516C,pc),r3 ; r3 set to 0x8C04CC1C
mov.l @(r0,r4),r4
jmp @r3
add 0x04,r15

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

loc_CE35108:
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

loc_CE35138:
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
#data 0x0000

#align4
loc_CE3516C:
#data loc_8C04CC1C

loc_CE35170:
#data loc_8C04CE3A

loc_CE35174:
#data loc_CE356FC

loc_CE35178:
#data loc_8C0530D8


loc_CE3517C:
mov.w @(loc_CE35220,pc),r0 ; r0 set to 0x1E9
mov.b r5,@(r0,r4)

loc_CE35180:
mov.l @(loc_CE3522C,pc),r2 ; r2 set to 0x8C0530D8, r2 set to 0x8C0530D8
jmp @r2
mov 0x1D,r5

loc_CE35186:
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
#data 0x9035
#data 0x0454


loc_CE351B6:
mov.w @(loc_CE35224,pc),r0 ; r0 set to 0x1A3
mov.b r5,@(r0,r4)

loc_CE351BA:
mov.l @(loc_CE3522C,pc),r2 ; r2 set to 0x8C0530D8, r2 set to 0x8C0530D8
jmp @r2
mov 0x15,r5

loc_CE351C0:
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

#align4
loc_CE351EC:
#data 0x04549018


loc_CE351F0:
mov.w @(loc_CE35224,pc),r0 ; r0 set to 0x1A3
mov.b r6,@(r0,r4)

loc_CE351F4:
mov.l @(loc_CE3522C,pc),r2 ; r2 set to 0x8C0530D8, r2 set to 0x8C0530D8
jmp @r2
mov 0x15,r5

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
;==============================================

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
#data 0x0000

#align4
loc_CE3522C:
#data loc_8C0530D8

loc_CE35230:
#data loc_8C129728

loc_CE35234:
#data 0x00000042
#data 0x0000004B
#data 0x00000054
#data 0x0000005D
#data 0x00000066
#data 0x0000006F

#align4
loc_CE3524C:
#data 0x00000030
#data 0x00000033
#data 0x00000036
#data 0x00000039
#data 0x0000003C
#data 0x0000003F

#align4
loc_CE35264:
#data 0x00000078
#data 0x00000079
#data 0x0000007A
#data 0x0000007B
#data 0x0000007C
#data 0x0000007D

#align4
loc_CE3527C:
#data 0x02000201

#align4
loc_CE35280:
#data 0x020102FF

#align4
loc_CE35284:
#data 0x02FFFFFF

#align4
loc_CE35288:
#data 0x02010201

#align4
loc_CE3528C:
#data 0x02FF02FF

#align4
loc_CE35290:
#data 0xFFFFFFFF

#align4
loc_CE35294:
#data 0x02000201

#align4
loc_CE35298:
#data 0x020102FF

#align4
loc_CE3529C:
#data 0x02FFFFFF

#align4
loc_CE352A0:
#data 0x02010201

#align4
loc_CE352A4:
#data 0x02FF02FF

#align4
loc_CE352A8:
#data 0xFFFFFFFF

#align4
loc_CE352AC:
#data 0x02000201

#align4
loc_CE352B0:
#data 0x020102FF

#align4
loc_CE352B4:
#data 0x02FFFFFF

#align4
loc_CE352B8:
#data 0x02010201

#align4
loc_CE352BC:
#data 0x02FF02FF

#align4
loc_CE352C0:
#data 0xFFFFFFFF

#align4
loc_CE352C4:
#data 0x10000003
#data 0x00000001
#data 0x18001000
#data 0x03000800

#align4
loc_CE352D4:
#data 0x20000003
#data 0x00000001
#data 0x18001000
#data 0x03000800

#align4
loc_CE352E4:
#data 0x10000003
#data 0x00000002
#data 0x10000800
#data 0x03001800

#align4
loc_CE352F4:
#data 0x20000003
#data 0x00000002
#data 0x10000800
#data 0x03001800

#align4
loc_CE35304:
#data 0x10000005
#data 0x00000003
#data 0x18000800
#data 0x14001000

#align4
loc_CE35314:
#data 0x03000400

#align4
loc_CE35318:
#data 0x91000003
#data 0x00000007
#data 0x18001000
#data 0x03000800

#align4
loc_CE35328:
#data 0x91000003
#data 0x00000009
#data 0x10000800
#data 0x03001800

#align4
loc_CE35338:
#data 0x81000003
#data 0x00000006
#data 0x18001000
#data 0x00600800

#align4
loc_CE35348:
#data 0x20000003
#data 0x0000000F
#data 0x14001000
#data 0x00600400

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE35358:
	#data loc_CE30642 loc_CE30024 loc_CE30DCE loc_CE31370
	#data loc_CE31484 loc_CE31834 loc_CE319B4 loc_CE31B34
	#data loc_CE31E7A loc_CE346F6 loc_CE3477C loc_CE3494C
	#data loc_CE350F0 loc_CE30614 loc_CE34598 loc_CE313B4
	#data loc_CE35108 loc_CE35138 loc_CE35186 loc_CE351C0
	#data 0x00000000  loc_CE31644 0x00000000  loc_CE351FA
	#data 0x00000000  0x00000000  0x00000000  0x00000000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_CE353C8:
#data loc_CE30A50

loc_CE353CC:
#data loc_CE30D78

loc_CE353D0:
#data loc_CE30D3C

loc_CE353D4:
#data loc_CE30DCA

loc_CE353D8:
#data loc_CE31072

loc_CE353DC:
#data loc_CE3131E

loc_CE353E0:
#data loc_CE31348

loc_CE353E4:
#data loc_CE31360

loc_CE353E8:
#data loc_CE31496

loc_CE353EC:
#data loc_CE3153E

loc_CE353F0:
#data loc_CE315BC

loc_CE353F4:
#data loc_CE31656

loc_CE353F8:
#data loc_CE316A8

loc_CE353FC:
#data loc_CE317A0

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

#align4
loc_CE35430:
#data loc_CE31846

loc_CE35434:
#data loc_CE31888

loc_CE35438:
#data loc_CE3192C

loc_CE3543C:
#data loc_CE319C6

loc_CE35440:
#data loc_CE31A04

loc_CE35444:
#data loc_CE31A5C

loc_CE35448:
#data loc_CE31AD0

loc_CE3544C:
#data loc_CE31C84

loc_CE35450:
#data loc_CE31E66

loc_CE35454:
#data 0x07000700
#data 0x07000700
#data 0x08010801
#data 0x08020802
#data 0x08030803
#data 0x08040804
#data 0x08050805
#data 0x08050805

#align4
loc_CE35474:
#data loc_CE31B46

loc_CE35478:
#data loc_CE31C74

loc_CE3547C:
#data loc_CE31C64

loc_CE35480:
#data loc_CE31C74

loc_CE35484:
#data loc_CE31C74

loc_CE35488:
#data loc_CE31CCC

loc_CE3548C:
#data loc_CE31D10

loc_CE35490:
#data loc_CE31D46

loc_CE35494:
#data loc_CE31D84

loc_CE35498:
#data loc_CE31D84

loc_CE3549C:
#data loc_CE31D84

loc_CE354A0:
#data loc_CE31D84

loc_CE354A4:
#data loc_CE31DDC

loc_CE354A8:
#data loc_CE31E1C

loc_CE354AC:
#data loc_CE31E30

loc_CE354B0:
#data loc_CE31E30

loc_CE354B4:
#data loc_CE31E30

loc_CE354B8:
#data loc_CE31E30

loc_CE354BC:
#data loc_CE31EC0

loc_CE354C0:
#data loc_CE31EC0

loc_CE354C4:
#data loc_CE3222A

loc_CE354C8:
#data loc_CE327B2

loc_CE354CC:
#data loc_CE31EC0

loc_CE354D0:
#data loc_CE31EC0

loc_CE354D4:
#data loc_CE33010

loc_CE354D8:
#data loc_CE328C4

loc_CE354DC:
#data loc_CE32BCA

loc_CE354E0:
#data loc_CE32DDA

loc_CE354E4:
#data loc_CE31EC0

loc_CE354E8:
#data loc_CE31EC0

loc_CE354EC:
#data loc_CE31EC0

loc_CE354F0:
#data loc_CE31EC0

loc_CE354F4:
#data loc_CE342FE

loc_CE354F8:
#data loc_CE34586

loc_CE354FC:
#data loc_CE31ED2

loc_CE35500:
#data loc_CE31FDA

loc_CE35504:
#data loc_CE31F28

loc_CE35508:
#data loc_CE31F82

loc_CE3550C:
#data loc_CE31FF6

loc_CE35510:
#data loc_CE320B0

loc_CE35514:
#data loc_CE321C8

loc_CE35518:
#data loc_CE3223C

loc_CE3551C:
#data loc_CE32526

loc_CE35520:
#data loc_CE3224E

loc_CE35524:
#data loc_CE32376

loc_CE35528:
#data loc_CE32474

loc_CE3552C:
#data loc_CE324F2

loc_CE35530:
#data 0x40F00000


loc_CE35534:
mov.l @(0x14,r5),r5
bsr loc_CE352E4
mov.l @r11+,r13
jmp @r1
mov.w @(loc_CE355D2,pc),r2
#data 0xBF3C
#data 0x4192AAAA
#data 0xBF12AAAA
#data 0x41DEDB6D
#data 0xBF5EDB6D

#align4
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


loc_CE35564:
mov.l @(0x14,r5),r5
bsr loc_CE35314
mov.l @r11+,r13
jmp @r1
mov.w @(loc_CE35602,pc),r2
#data 0xBF3C
#data 0x41200000
#data 0xBE555555
#data 0x41AB6DB6
#data 0xBF4DB6DB

#align4
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
#data 0x3104

loc_CE355D2:
#data 0x0CE3

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
