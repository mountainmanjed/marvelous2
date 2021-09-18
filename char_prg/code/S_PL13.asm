;============================================
;Ruby Heart Program
;============================================
#symbol loc_8c054508 0x8C054508
#symbol loc_8c054B34 0x8C054B34
#symbol loc_8c05496C 0x8C05496C
#symbol loc_8c054D04 0x8C054D04
#symbol loc_8c054DA0 0x8C054DA0
#symbol loc_8c053E00 0x8C053E00
#symbol loc_8c0542E0 0x8C0542E0
#symbol loc_8c054E58 0x8C054E58
#symbol loc_8c055C3A 0x8C055C3A
#symbol loc_8c0530D8 0x8C0530D8
#symbol loc_8c0555C8 0x8C0555C8
#symbol loc_8c054D1C 0x8C054D1C
#symbol loc_8c052B4C 0x8C052B4C
#symbol loc_8c04223A 0x8C04223A
#symbol mem_8c2896b0 0x8C2896B0
#symbol loc_8c034E8C 0x8C034E8C
#symbol loc_8c0511E2 0x8C0511E2
#symbol loc_8c052C84 0x8C052C84
#symbol loc_8c034DEE 0x8C034DEE
#symbol loc_8c051648 0x8C051648
#symbol loc_8c050084 0x8C050084
#symbol loc_8c04FF88 0x8C04FF88
#symbol loc_8c04FEA8 0x8C04FEA8
#symbol loc_8c050048 0x8C050048
#symbol loc_8c052CE2 0x8C052CE2
#symbol loc_8c052DAC 0x8C052DAC
#symbol loc_8c05176E 0x8C05176E
#symbol loc_8c056DE4 0x8C056DE4
#symbol loc_8c0CE62C 0x8C0CE62C
#symbol loc_8c0FDAB6 0x8C0FDAB6
#symbol loc_8c046C8A 0x8C046C8A
#symbol loc_8c035162 0x8C035162
#symbol loc_8c05218A 0x8C05218A
#symbol loc_8c03319E 0x8C03319E
#symbol loc_8c0514B8 0x8C0514B8
#symbol loc_8c05115A 0x8C05115A
#symbol loc_8c03544C 0x8C03544C
#symbol loc_8c053082 0x8C053082
#symbol loc_8c07A428 0x8C07A428
#symbol loc_8c26A5B8 0x8C26A5B8
#symbol loc_8c0511B4 0x8C0511B4
#symbol loc_8c050834 0x8C050834
#symbol loc_8c042008 0x8C042008
#symbol loc_8c03362C 0x8C03362C
#symbol loc_8c02FEC4 0x8C02FEC4
#symbol loc_8c26A5A0 0x8C26A5A0
#symbol loc_8c26A5A4 0x8C26A5A4
#symbol loc_8c26A8E4 0x8C26A8E4
#symbol loc_8c289732 0x8C289732
#symbol loc_8c10235C 0x8C10235C
#symbol loc_8c05923C 0x8C05923C
#symbol loc_8c050EA4 0x8C050EA4
#symbol loc_8c045790 0x8C045790
#symbol loc_8c103660 0x8C103660
#symbol loc_8c056F2A 0x8C056F2A
#symbol loc_8c04CC1C 0x8C04CC1C


;======================================================================
start_CE30000:
	mov.w @(loc_ce30046,pc),r0 ; r0 set to 0x428
	mov 0x70,r5 ; r5 set to 0x70
	mov.l @(loc_ce30050_to_SPL_JumpTable,pc),r7 ; r7 set to 0xCE34864
	mov.l @(r0,r4),r6
	mov 0x00,r

loc_ce3000A:
	mov r4,r0
	nop
	add 0x04,r4
	mov.l @(r0,r7),r3
	cmp/hs r5,r4
	bf/s loc_ce3000A
	mov.l r3,@(r0,r6)
	rts
	nop

;==============================================
loc_ce3001c:
	mov.w @(0x28,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_CE30040
	mov.w @(0x20,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_CE30040
	mov.w @(0x1a,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce3003a
	rts
	mov 0x00,r0

loc_ce3003a:
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)

loc_CE30040:
	mov 0x1,r0
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30046:
	#data 0x0428
loc_ce30048:
	#data 0x01F9
loc_ce3004A:
	#data 0x01FC
loc_ce3004C:
	#data 0x01D4
	#align4

loc_ce30050_to_SPL_JumpTable:
	#data SPL_JumpTable

;==============================================
loc_ce30054:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_ce3010C_to_loc_8c054508,pc),r3 ; r3 set to 0x8C054508
	jsr @r3
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	mov.l @(loc_ce30110_to_loc_8c054B34,pc),r3 ; r3 set to 0x8C054B34
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	mov.l @(loc_ce30114_to_loc_8c05496C,pc),r3 ; r3 set to 0x8C05496C
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	mov.l @(loc_ce30118_to_loc_8c054D04,pc),r3 ; r3 set to 0x8C054D04
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_ce3039C
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_ce3031A
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_ce303E2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_ce302C0
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_ce30258
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_ce301DE
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_CE30128
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_CE30188
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_ce30106
	bsr loc_CE3046C
	mov r14,r4
	tst r0,r0
	bf loc_ce30106
	mov.l @(loc_ce3011C_to_loc_8c054DA0,pc),r3 ; r3 set to 0x8C054DA0
	mov 0x0B,r5 ; r5 set to 0x0B
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce300f6
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30432
	mov.l @r15+,r14

loc_ce300f6:
	mov.l @(loc_ce30120_to_loc_8c053E00,pc),r2 ; r2 set to 0x8C053E00
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce30124_to_loc_8c0542E0,pc),r3 ; r3 set to 0x8C0542E0
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce30106:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_ce3010C_to_loc_8c054508:
	#data loc_8c054508
loc_ce30110_to_loc_8c054B34:
	#data loc_8c054B34
loc_ce30114_to_loc_8c05496C:
	#data loc_8c05496C
loc_ce30118_to_loc_8c054D04:
	#data loc_8c054D04
loc_ce3011C_to_loc_8c054DA0:
	#data loc_8c054DA0
loc_ce30120_to_loc_8c053E00:
	#data loc_8c053E00
loc_ce30124_to_loc_8c0542E0:
	#data loc_8c0542E0

;==============================================
loc_CE30128:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x110,pc),r5
	mov.w @(0xfc,pc),r6
	mov.l @(0x110,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30150
	mov.w @(0xf0,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce3015e
	mov.w @(0xe8,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce30158

loc_CE30150:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_CE30158:
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_CE3015E:
	mov.w @(0xce,pc),r5
	mov.l @(0xe4,pc),r2
	add r14,r5
	jsr @r2
	mov r14,r4
	mov 0x00,r4
	mov r4,r0
	nop
	mov.b r0,@(0x5,r14)
	mov 0x15,r5
	mov.b r0,@(0x7,r14)
	mov.b r0,@(0x6,r14)
	mov.w @(0xbc,pc),r0
	mov.l @(0xd0,pc),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE30188:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xc0,pc),r5
	mov.w @(0xa4,pc),r6
	mov.l @(0xb0,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce301ae
	mov.w @(0x98,pc),r4
	add r14,r4
	mov.b @r4,r3
	tst r3,r3
	bf loc_ce301ae
	mov.b @(0x1,r4),r0
	tst r0,r0
	bt loc_ce301b6

loc_CE301AE:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_CE301B6:
	mov.w @(0x7e,pc),r5
	mov.l @(0x8c,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x01,r3
	mov.b r0,@(0x7,r14)
	mov 0x15,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x66,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x78,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE301DE:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x6c,pc),r5
	mov.w @(0x52,pc),r6
	mov.l @(0x58,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30200
	mov.w @(0x42,pc),r4
	mov 0x14,r0
	add r14,r4
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_ce30208

loc_ce30200:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce30208:
	mov.l @(0x3c,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x02,r3
	mov.b r0,@(0x7,r14)
	mov 0x15,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x14,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x28,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30230:
	#data 0x0364
loc_ce30232:
	#data 0x01F9
loc_ce30234:
	#data 0x01D4
loc_ce30236:
	#data 0x01E9
loc_ce30238:
	#data 0x036C
loc_ce3023a:
	#data 0x02A4
loc_ce3023c:
	#data 0x0374
	#align4

loc_ce30240_to_loc_ce3439C:
	#data loc_ce3439C
loc_ce30244:
	#data loc_8c054E58
loc_ce30248:
	#data loc_8c055C3A
loc_ce3024c:
	#data loc_8c0530D8

loc_ce30250_to_loc_ce343AC:
	#data loc_ce343AC
loc_ce30254_to_loc_ce343BC:
	#data loc_ce343BC

;==============================================
loc_ce30258:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xfc,pc),r5
	mov.w @(0xe8,pc),r6
	mov.l @(0xfc,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30290
	mov.w @(0xdc,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce30286
	mov.w @(0xd4,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce30290
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)

loc_ce30286:
	mov.w @(0xc8,pc),r0
	mov.l @(r0,r14),r3
	mov.b @r3,r2
	tst r2,r2
	bf loc_ce30298

loc_ce30290:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce30298:
	mov.w @(0xb0,pc),r5
	mov.l @(0xc8,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x03,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0xa2,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0xb4,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce302C0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xa4,pc),r5
	mov.w @(0x8a,pc),r6
	mov.l @(0x94,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce302ea
	mov.w @(0x7e,pc),r4
	add r14,r4
	mov.b @(0x1,r4),r0
	tst r0,r0
	bf loc_ce302ea
	mov.w @(0x6e,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce302f2

loc_ce302EA:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce302F2:
	mov.l @r15+,r14
	mov.w @(0x60,pc),r5
	mov.l @(0x6c,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x04,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x48,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x58,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3031A:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x4c,pc),r5
	mov.w @(0x34,pc),r6
	mov.l @(0x38,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30344
	bsr loc_ce3001c
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30344
	mov.w @(0x14,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce30374

loc_ce30344:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30346:
	#data 0x037C
loc_ce30348:
	#data 0x01F9
loc_ce3034a:
	#data 0x01D4
loc_ce3034c:
	#data 0x040C
loc_ce3034e:
	#data 0x01E9
loc_ce30350:
	#data 0x0384
loc_ce30352:
	#data 0x02A4
loc_ce30354:
	#data 0x038C
	#align4

loc_ce3035C_to_loc_ce343CC:
	#data loc_ce343CC
loc_ce30360:
	#data loc_8c054E58
loc_ce30364:
	#data loc_8c055C3A
loc_ce30368:
	#data loc_8c0530D8
loc_ce3036C_to_loc_ce343DC:
	#data loc_ce343DC
loc_ce30370_to_loc_ce343EC:
	#data loc_ce343EC

;==============================================
loc_ce30374:
	mov.w @(0x114,pc),r5
	mov.l @(0x120,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x05,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x100,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x10c,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3039C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_ce304A0_to_loc_ce3440E,pc),r5 ; r5 set to 0xCE3440E
	mov.w @(loc_ce30490,pc),r6 ; r6 set to 0x394
	mov.l @(loc_ce304A4_to_loc_8c054E58,pc),r3 ; r3 set to 0x8C054E58
	jsr @r3
	add r14,r6 ; r6 ??? bc r14 is ???
	extu.b r0,r0
	tst r0,r0
	bf loc_ce303BA
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.l @r15+,r14

;==============================================
loc_ce303BA:
	mov.w @(loc_ce30490,pc),r5 ; r5 set to 0x394
	mov.l @(loc_ce30498_to_loc_8c055C3A,pc),r3 ; r3 set to 0x8C055C3A
	add r14,r5 ; r5 ??? bc r14 is ???
	jsr @r3
	mov r14,r4
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	mov 0x06,r3 ; r3 set to 0x06
	mov.b r0,@(0x07,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce3048E,pc),r0 ; r0 set to 0x1E9
	mov.b r3,@(r0,r14)
	mov.l @(loc_ce3049C_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
	jsr @r3
	mov r14,r4
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce303E2:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xbc,pc),r5
	mov.w @(0xa4,pc),r6
	mov.l @(0xbc,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30402
	mov.w @(0x98,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce3040a

loc_ce30402:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce3040A:
	mov.w @(0x84,pc),r5
	mov.l @(0x88,pc),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x09,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x6a,pc),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x74,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30432:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_ce304B0_to_loc_8c054DA0,pc),r3 ; r3 set to 0x8C054DA0
	jsr @r3
	mov 0x0B,r5 ; r5 set to 0x0B
	extu.b r0,r0
	tst r0,r0
	bf loc_ce3044C
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3044C:
	mov.w @(loc_ce3048E,pc),r0 ; r0 set to 0x1E9
	mov 0x0B,r3 ; r3 set to 0x0B
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @(loc_ce3049C_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
	mov.b r0,@(0x05,r14)
	jsr @r3
	mov r14,r4
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x07,r14)
	mov.b r0,@(0x06,r14)
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_CE3046C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x40,pc),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bt loc_ce30484
	mov.w @(0x16,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce304b8

loc_ce30484:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3048c:
	#data 0x038C
loc_ce3048E:
	#data 0x01E9
loc_ce30490:
	#data 0x0394
loc_ce30492:
	#data 0x039C
loc_ce30494:
	#data 0x040C
	#align4

loc_ce30498_to_loc_8c055C3A:
	#data loc_8c055C3A
loc_ce3049C_to_loc_8c0530D8:
	#data loc_8c0530D8
loc_ce304A0_to_loc_ce3440E:
	#data loc_ce3440E
loc_ce304A4_to_loc_8c054E58:
	#data loc_8c054E58
loc_ce304A8_to_loc_ce343FC:
	#data loc_ce343FC
loc_ce304AC:
	#data loc_8c0555C8
loc_ce304B0_to_loc_8c054DA0:
	#data loc_8c054DA0
loc_ce304B4:
	#data loc_8c054D1C

;==============================================
loc_ce304B8:
	mov.w @(0xf2,pc),r0
	mov 0x0A,r3
	mov 0x1D,r5
	mov.b r3,@(r0,r14)
	mov 0x00,r0
	mov.l @(0xf8,pc),r3
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
Rby_DlyHypC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_ce3050c
	mov r4,r14
	tst r0,r0
	bf loc_ce304fc
	bsr loc_ce30542
	mov r14,r4
	tst r0,r0
	bf loc_ce304fc
	bsr loc_ce30578
	mov r14,r4
	tst r0,r0
	bf loc_ce304fc
	bsr loc_ce305d4
	mov r14,r4
	tst r0,r0
	bt loc_ce30504

loc_ce304FC:
	lds.l @r15+,pr
	mov 0x01,r0
	rts
	mov.l @r15+,r14

loc_ce30504:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3050C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xac,pc),r5
	mov.w @(0x98,pc),r6
	mov.l @(0xac,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce3052c
	mov.w @(0x8c,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce30534

loc_ce3052C:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce30534:
	mov.w @(0x7c,pc),r0
	mov 0x05,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30542:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x7c,pc),r5
	mov.w @(0x68,pc),r6
	mov.l @(0x74,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30562
	mov.w @(0x56,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce3056a

loc_ce30562:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce3056A:
	mov.w @(0x46,pc),r0
	mov 0x03,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30578:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x4c,pc),r5
	mov.w @(0x34,pc),r6
	mov.l @(0x4c,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30598
	mov.w @(0x20,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce305a0

loc_ce30598:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce305A0:
	mov.w @(0x10,pc),r0
	mov 0x09,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce305ae:
	#data 0x01E9
loc_ce305b0:
	#data 0x038C
loc_ce305b2:
	#data 0x040C
loc_ce305b4:
	#data 0x0258
loc_ce305b6:
	#data 0x037C
loc_ce305b8:
	#data 0x039C
	#align4

loc_ce305bc:
	#data loc_8c0530D8
loc_ce305C0_to_loc_ce343EC:
	#data loc_ce343EC
loc_ce305C4:
	#data loc_8c054E58
loc_ce305C8_to_loc_ce343CC:
	#data loc_ce343CC
loc_ce305CC_to_loc_ce343FC:
	#data loc_ce343FC
loc_ce305d0:
	#data loc_8c0555C8

;==============================================
loc_CE305D4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xe4,pc),r5
	mov.w @(0xd2,pc),r6
	mov.l @(0xe4,pc),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce305f4
	mov.w @(0xc6,pc),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce305fc

loc_ce305F4:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce305FC:
	mov.w @(0xb6,pc),r0
	mov 0x04,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3060A:
	rts
	nop

;==============================================
loc_ce3060E:
	mov.w @(loc_ce306B8,pc),r0 ; r0 set to 0x1FF
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_ce306C8_to_loc_ce348D4_to_loc_ce3066A,pc),r0 ; r0 set to 0xCE348D4
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_ce30622:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_ce306CC_to_loc_8c052B4C,pc),r3 ; r3 set to 0x8C052B4C
	jsr @r3
	mov r4,r14
	mov.w @(loc_ce306BA,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30650
	mov.w @(loc_ce306BC,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30648
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce308F4
	mov.l @r15+,r14

loc_ce30648:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30848
	mov.l @r15+,r14

loc_ce30650:
	mov.w @(loc_ce306BC,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30662
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30778
	mov.l @r15+,r14

loc_ce30662:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce306D0
	mov.l @r15+,r14

loc_ce3066A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_ce306CC_to_loc_8c052B4C,pc),r3 ; r3 set to 0x8C052B4C
	jsr @r3
	mov r4,r14
	mov.w @(loc_ce306BA,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30698
	mov.w @(loc_ce306BC,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30690
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce308F4
	mov.l @r15+,r14

loc_ce30690:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30848
	mov.l @r15+,r14

loc_ce30698:
	mov.w @(loc_ce306BC,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce306AA
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30778
	mov.l @r15+,r14

loc_ce306AA:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce306D0
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce306b2:
	#data 0x0384
loc_ce306b4:
	#data 0x040C
loc_ce306b6:
	#data 0x0258
loc_ce306B8:
	#data 0x01FF
loc_ce306BA:
	#data 0x01FE
loc_ce306BC:
	#data 0x01F9
	#align4

loc_ce306C0_to_loc_ce343DC:
	#data loc_ce343DC
loc_ce306C4:
	#data loc_8c054E58
loc_ce306C8_to_loc_ce348D4_to_loc_ce3066A:
	#data loc_ce348D4_to_loc_ce3066A
loc_ce306CC_to_loc_8c052B4C:
	#data loc_8c052B4C

;==============================================
loc_ce306D0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_ce307D4,pc),r0 ; r0 set to 0x1E8
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_ce307E0_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_ce306F6
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_ce30710
	cmp/eq 0x02,r0
	bt loc_ce3072A
	bra loc_ce30744
	nop

loc_ce306F6:
	mov.w @(loc_ce307D6,pc),r0 ; r0 set to 0x158
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r13,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce307D8,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce307E4_to_Stn_LPChain,pc),r3 ; r3 set to 0xCE34354
	mov.l r3,@(r0,r14)
	mov.w @(loc_ce307DA,pc),r0 ; r0 set to 0x1A7
	bra loc_ce30744
	mov.b r13,@(r0,r14)

loc_ce30710:
	mov.w @(loc_ce307D6,pc),r0 ; r0 set to 0x158
	mov 0x01,r11 ; r11 set to 0x01
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r11,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r11,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce307D8,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce307E8_to_Stn_MPChain,pc),r3 ; r3 set to 0xCE34358
	mov.l r3,@(r0,r14)
	bra loc_ce30740
	nop

loc_ce3072A:
	mov.w @(0xa8,pc),r0
	mov 0x02,r11
	mov 0x1A,r5
	mov.b r11,@(r0,r14)
	add 0x49,r0
	mov.b r11,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x9a,pc),r0
	mov.l @(0xac,pc),r3
	mov.l r3,@(r0,r14)

loc_ce30740:
	mov.w @(0x96,pc),r0
	mov.b r11,@(r0,r14)

loc_ce30744:
	mov.w @(loc_ce307DC,pc),r0 ; r0 set to 0x1AC
	mov 0x07,r5 ; r5 set to 0x07
	mov.l @(loc_ce307F0_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
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
	mov.w @(loc_ce307D6,pc),r0 ; r0 set to 0x158
	mov.l @(loc_ce307F4_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r11
	mov.b @(r0,r14),r6
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_ce30778:
	mov.w @(loc_ce307D4,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_ce307E0_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_ce3079C
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_ce307B8
	cmp/eq 0x02,r0
	bt loc_ce307F8
	bra loc_ce30816
	nop

loc_ce3079C:
	mov.w @(loc_ce307D6,pc),r0 ; r0 set to 0x158
	mov 0x06,r3 ; r3 set to 0x06
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce307D8,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce307E4_to_Stn_LPChain,pc),r3 ; r3 set to 0xCE34354
	mov.l r3,@(r0,r14)
	mov.w @(loc_ce307DA,pc),r0 ; r0 set to 0x1A7
	bra loc_ce30816
	mov.b r13,@(r0,r14)

loc_ce307B8:
	mov.w @(loc_ce307D6,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x07,r3 ; r3 set to 0x07
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce307D8,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce307E8_to_Stn_MPChain,pc),r3 ; r3 set to 0xCE34358
	mov.l r3,@(r0,r14)
	bra loc_ce30812
	mov 0x01,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce307D4:
	#data 0x01E8
loc_ce307D6:
	#data 0x0158
loc_ce307D8:
	#data 0x03F4
loc_ce307DA:
	#data 0x01A7
loc_ce307DC:
	#data 0x01AC
	#align4

loc_ce307E0_to_loc_8c04223A:
	#data loc_8c04223A
loc_ce307E4_to_Stn_LPChain:
	#data Stn_LPChain
loc_ce307E8_to_Stn_MPChain:
	#data Stn_MPChain
loc_ce307EC_to_Stn_HPChain:
	#data Stn_HPChain
loc_ce307F0_to_mem_8c2896b0:
	#data mem_8c2896b0
loc_ce307F4_to_loc_8c034E8C:
	#data loc_8c034E8C

;==============================================
loc_ce307F8:
	mov.w @(0x118,pc),r0
	mov 0x02,r1
	mov 0x08,r3
	mov.b r1,@(r0,r14)
	add 0x49,r0
	mov 0x1A,r5
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x108,pc),r0
	mov 0x02,r2
	mov.l @(0x110,pc),r3
	mov.l r3,@(r0,r14)

loc_ce30812:
	mov.w @(0x102,pc),r0
	mov.b r2,@(r0,r14)

loc_ce30816:
	mov.w @(loc_ce3091A,pc),r0 ; r0 set to 0x1AC
	mov 0x09,r5 ; r5 set to 0x09
	mov.l @(loc_ce30924_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
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
	mov.w @(loc_ce30914,pc),r0 ; r0 set to 0x158
	mov.l @(loc_ce30928_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r12
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_ce30848:
	mov.w @(loc_ce3091C,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_ce3092C_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_ce3086C
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_ce30888
	cmp/eq 0x02,r0
	bt loc_ce308A4
	bra loc_ce308C2
	nop

loc_ce3086C:
	mov.w @(loc_ce30914,pc),r0 ; r0 set to 0x158
	mov 0x03,r3 ; r3 set to 0x03
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30916,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30930_to_Stn_LKChain,pc),r3 ; r3 set to 0xCE34360
	mov.l r3,@(r0,r14)
	mov.w @(loc_ce30918,pc),r0 ; r0 set to 0x1A7
	bra loc_ce308C2
	mov.b r13,@(r0,r14)

loc_ce30888:
	mov.w @(loc_ce30914,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x04,r3 ; r3 set to 0x04
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30916,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30934_to_Stn_MKChain,pc),r3 ; r3 set to 0xCE34364
	mov.l r3,@(r0,r14)
	bra loc_ce308BE
	mov 0x01,r2
	
loc_ce308A4:
	mov.w @(0x6c,pc),r0
	mov 0x02,r1
	mov 0x05,r3
	mov.b r1,@(r0,r14)
	add 0x49,r0
	mov 0x16,r5
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x5c,pc),r0
	mov 0x02,r2
	mov.l @(0x7c,pc),r3
	mov.l r3,@(r0,r14)

loc_ce308BE:
	mov.w @(0x56,pc),r0
	mov.b r2,@(r0,r14)

loc_ce308C2:
	mov.w @(loc_ce3091A,pc),r0 ; r0 set to 0x1AC
	mov 0x08,r5 ; r5 set to 0x08
	mov.l @(loc_ce30924_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
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
	mov.w @(loc_ce30914,pc),r0 ; r0 set to 0x158
	mov.l @(loc_ce30928_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r12
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_ce308F4:
	mov.w @(loc_ce3091C,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_ce3093C
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_ce3095A
	cmp/eq 0x02,r0
	bt loc_ce3097C
	bra loc_ce30992
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30914:
	#data 0x0158
loc_ce30916:
	#data 0x03F4
loc_ce30918:
	#data 0x01A7
loc_ce3091A:
	#data 0x01AC
loc_ce3091C:
	#data 0x01E8
	#align4

loc_ce30920_to_Stn_HPChain:
	#data Stn_HPChain
loc_ce30924_to_mem_8c2896b0:
	#data mem_8c2896b0
loc_ce30928_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce3092C_to_loc_8c04223A:
	#data loc_8c04223A
loc_ce30930_to_Stn_LKChain:
	#data Stn_LKChain
loc_ce30934_to_Stn_MKChain:
	#data Stn_MKChain
loc_ce30938_to_Stn_HKChain:
	#data Stn_HKChain

;==============================================
loc_ce3093C:
	mov.w @(loc_ce30A20,pc),r0 ; r0 set to 0x158
	mov 0x09,r3 ; r3 set to 0x09
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	mov.l @(loc_ce30A30_to_loc_8c04223A,pc),r3 ; r3 set to 0x8C04223A
	jsr @r3
	mov r14,r4
	mov.w @(loc_ce30A22,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30A34_to_Stn_LKChain,pc),r2 ; r2 set to 0xCE34360
	mov.l r2,@(r0,r14)
	mov.w @(loc_ce30A24,pc),r0 ; r0 set to 0x1A7
	bra loc_ce30992
	mov.b r13,@(r0,r14)

loc_ce3095A:
	mov.w @(loc_ce30A20,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x0A,r3 ; r3 set to 0x0A
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @(loc_ce30A30_to_loc_8c04223A,pc),r3 ; r3 set to 0x8C04223A
	jsr @r3
	mov r14,r4
	mov.w @(loc_ce30A22,pc),r0 ; r0 set to 0x3F4
	mov 0x01,r3 ; r3 set to 0x01
	mov.l @(loc_ce30A38_to_Stn_MKChain,pc),r2 ; r2 set to 0xCE34364
	mov.l r2,@(r0,r14)
	mov.w @(loc_ce30A24,pc),r0 ; r0 set to 0x1A7
	bra loc_ce30992
	mov.b r3,@(r0,r14)

loc_ce3097C:
	mov.w @(0xa0,pc),r0
	mov 0x02,r4
	mov 0x0B,r3
	mov.l @(0xb8,pc),r2
	mov.b r4,@(r0,r14)
	add 0x49,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x94,pc),r0
	mov.l r2,@(r0,r14)
	mov.w @(0x92,pc),r0
	mov.b r4,@(r0,r14)

loc_ce30992:
	mov.w @(loc_ce30A26,pc),r0 ; r0 set to 0x1AC
	mov 0x0A,r5 ; r5 set to 0x0A
	mov.l @(loc_ce30A40_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
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
	mov.w @(loc_ce30A20,pc),r0 ; r0 set to 0x158
	mov.l @(loc_ce30A44_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r13
	mov.b @(r0,r14),r6
	jmp @r2
	mov.l @r15+,r14

loc_ce309C2:
	mov.w @(0x62,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_ce309d2
	mov.w @(0x5c,pc),r0
	mov.b @(r0,r4),r0
	tst 0x0F,r0
	bf loc_ce309e2

loc_ce309D2:
	mov.w @(0x52,pc),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_ce309e6
	mov.w @(0x4c,pc),r0
	mov.b @(r0,r4),r0
	tst 0xF0,r0
	bt loc_ce309e6

loc_ce309E2:
	bra loc_ce309ea
	nop

loc_ce309E6:
	rts
	nop

;==============================================
loc_ce309EA:
	mov.w @(loc_ce30A28,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce309F8
	bra loc_ce30B12
	nop

loc_ce309F8:
	bra loc_ce309FC
	nop

loc_ce309FC:
	mov.w @(loc_ce30A2C,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_ce30A30_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_ce30A48
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_ce30A74
	cmp/eq 0x02,r0
	bt loc_ce30AA0
	bra loc_ce30ACE
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30A20:
	#data 0x0158
loc_ce30A22:
	#data 0x03F4
loc_ce30A24:
	#data 0x01A7
loc_ce30A26:
	#data 0x01AC
loc_ce30A28:
	#data 0x01FE
loc_ce30A2a:
	#data 0x01D6
loc_ce30A2C:
	#data 0x01E8
	#align4

loc_ce30A30_to_loc_8c04223A:
	#data loc_8c04223A
loc_ce30A34_to_Stn_LKChain:
	#data Stn_LKChain
loc_ce30A38_to_Stn_MKChain:
	#data Stn_MKChain
loc_ce30A3C_to_Stn_HKChain:
	#data Stn_HKChain
loc_ce30A40_to_mem_8c2896b0:
	#data mem_8c2896b0
loc_ce30A44_to_loc_8c034E8C:
	#data loc_8c034E8C

;==============================================
loc_ce30A48:
	mov.w @(loc_ce30B36,pc),r0 ; r0 set to 0x158
	mov 0x0C,r3 ; r3 set to 0x0C
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30B38,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_ce30A68
	mov.w @(loc_ce30B3A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30B44_to_Crc_LPChain,pc),r3 ; r3 set to 0xCE3436C
	bra loc_ce30A6E
	mov.l r3,@(r0,r14)

loc_ce30A68:
	mov.w @(loc_ce30B3A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30B48_to_Air_LPChain,pc),r1 ; r1 set to 0xCE34384
	mov.l r1,@(r0,r14)

loc_ce30A6E:
	mov.w @(loc_ce30B3C,pc),r0 ; r0 set to 0x1A7,r0 set to 0x1A7
	bra loc_ce30ACE
	mov.b r13,@(r0,r14)

loc_ce30A74:
	mov.w @(loc_ce30B36,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x0D,r3 ; r3 set to 0x0D
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30B38,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_ce30A96
	mov.w @(loc_ce30B3A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30B4C_to_Crc_MPChain,pc),r3 ; r3 set to 0xCE34370
	bra loc_ce30A9C
	mov.l r3,@(r0,r14)

loc_ce30A96:
	mov.w @(loc_ce30B3A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30B50_to_Air_MPChain,pc),r1 ; r1 set to 0xCE34388
	mov.l r1,@(r0,r14)

loc_ce30A9C:
	bra loc_ce30ACA
	mov 0x01,r3

loc_ce30AA0:
	mov.w @(loc_ce30B36,pc),r0 ; r0 set to 0x158
	mov 0x02,r1 ; r1 set to 0x02
	mov 0x0E,r3 ; r3 set to 0x0E
	mov.b r1,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x1A,r5 ; r5 set to 0x1A
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30B38,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_ce30AC2
	mov.w @(loc_ce30B3A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30B54_to_Crc_HPChain,pc),r3 ; r3 set to 0xCE34374
	bra loc_ce30AC8
	mov.l r3,@(r0,r14)

loc_ce30AC2:
	mov.w @(0x74,pc),r0
	mov.l @(0x90,pc),r1
	mov.l r1,@(r0,r14)

loc_ce30AC8:
	mov 0x02,r3

loc_ce30ACA:
	mov.w @(0x6e,pc),r0
	mov.b r3,@(r0,r14)

loc_ce30ACE:
	mov.w @(0x6c,pc),r0
	mov 0x0B,r5
	mov.l @(0x88,pc),r3
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
	mov.w r1,@(r0,r2
	mov.w @(0x44,pc),r0
	mov.l @(0x6c,pc),r2
	mov.b @(r0,r14),r6
	jsr @r2
	mov r14,r4
	mov.w @(0x44,pc),r0
	mov.b @(r0,r14),r0
	tst 0x0F,r0
	bt loc_ce30b08
	mov.w @(0x3c,pc),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)

loc_ce30B08:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30B12:
	mov.w @(loc_ce30B42,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(loc_ce30B64_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_ce30B68
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_ce30B94
	cmp/eq 0x02,r0
	bt loc_ce30BC0
	bra loc_ce30BEE
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30B36:
	#data 0x0158
loc_ce30B38:
	#data 0x01FC
loc_ce30B3A:
	#data 0x03F4
loc_ce30B3C:
	#data 0x01A7
loc_ce30B3e:
	#data 0x01AC
loc_ce30B40:
	#data 0x01D6
loc_ce30B42:
	#data 0x01E8
	#align4

loc_ce30B44_to_Crc_LPChain:
	#data Crc_LPChain
loc_ce30B48_to_Air_LPChain:
	#data Air_LPChain
loc_ce30B4C_to_Crc_MPChain:
	#data Crc_MPChain
loc_ce30B50_to_Air_MPChain:
	#data Air_MPChain
loc_ce30B54_to_Crc_HPChain:
	#data Crc_HPChain
loc_ce30B58_to_Air_HPChain:
	#data Air_HPChain
loc_ce30B5c:
	#data mem_8c2896b0
loc_ce30B60:
	#data loc_8c034E8C
loc_ce30B64_to_loc_8c04223A:
	#data loc_8c04223A

;==============================================
loc_ce30B68:
	mov.w @(loc_ce30C46,pc),r0 ; r0 set to 0x158
	mov 0x0F,r3 ; r3 set to 0x0F
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30C48,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_ce30B88
	mov.w @(loc_ce30C4A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30C54_to_Crc_LKChain,pc),r3 ; r3 set to 0xCE34378
	bra loc_ce30B8E
	mov.l r3,@(r0,r14)

loc_ce30B88:
	mov.w @(loc_ce30C4A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30C58_to_Air_LKChain,pc),r1 ; r1 set to 0xCE34390
	mov.l r1,@(r0,r14)

loc_ce30B8E:
	mov.w @(loc_ce30C4C,pc),r0 ; r0 set to 0x1A7,r0 set to 0x1A7
	bra loc_ce30BEE
	mov.b r13,@(r0,r14)

loc_ce30B94:
	mov.w @(loc_ce30C46,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x10,r3 ; r3 set to 0x10
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30C48,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_ce30BB6
	mov.w @(loc_ce30C4A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30C5C_to_Crc_MKChain,pc),r3 ; r3 set to 0xCE3437C
	bra loc_ce30BBC
	mov.l r3,@(r0,r14)

loc_ce30BB6:
	mov.w @(loc_ce30C4A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30C60_to_Air_MKChain,pc),r1 ; r1 set to 0xCE34394
	mov.l r1,@(r0,r14)

loc_ce30BBC:
	bra loc_ce30BEA
	mov 0x01,r3

loc_ce30BC0:
	mov.w @(loc_ce30C46,pc),r0 ; r0 set to 0x158
	mov 0x02,r1 ; r1 set to 0x02
	mov 0x11,r3 ; r3 set to 0x11
	mov.b r1,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x16,r5 ; r5 set to 0x16
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30C48,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_ce30BE2
	mov.w @(loc_ce30C4A,pc),r0 ; r0 set to 0x3F4
	mov.l @(loc_ce30C64_to_Crc_HKChain,pc),r3 ; r3 set to 0xCE34380
	bra loc_ce30BE8
	mov.l r3,@(r0,r14)

loc_ce30BE2:
	mov.w @(0x64,pc),r0
	mov.l @(0x80,pc),r1
	mov.l r1,@(r0,r14)

loc_ce30BE8:
	mov 0x02,r3

loc_ce30BEA:
	mov.w @(0x5e,pc),r0
	mov.b r3,@(r0,r14)

loc_ce30BEE:
	mov.w @(0x5c,pc),r0
	mov 0x0C,r5
	mov.l @(0x78,pc),r3
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
	mov.w @(0x34,pc),r0
	mov.l @(0x5c,pc),r2
	mov.b @(r0,r14),r6
	jsr @r2
	mov r14,r4
	mov.w @(0x34,pc),r0
	mov.b @(r0,r14),r0
	tst 0xF0,r0
	bt loc_ce30c28
	mov.w @(0x2c,pc),r0
	mov.b @(r0,r14),r2
	add 0xF0,r2
	mov.b r2,@(r0,r14)

loc_ce30C28:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30C32:
	mov.w @(loc_ce30C52,pc),r0 ; r0 set to 0x1FF
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_ce30C74_to_loc_ce348E4_to_loc_ce30CFE,pc),r0 ; r0 set to 0xCE348E4
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30C46:
	#data 0x0158
loc_ce30C48:
	#data 0x01FC
loc_ce30C4A:
	#data 0x03F4
loc_ce30C4C:
	#data 0x01A7
loc_ce30C4E:
	#data 0x01AC
loc_ce30C50:
	#data 0x01D6
loc_ce30C52:
	#data 0x01FF
	#align4

loc_ce30C54_to_Crc_LKChain:
	#data Crc_LKChain
loc_ce30C58_to_Air_LKChain:
	#data Air_LKChain
loc_ce30C5C_to_Crc_MKChain:
	#data Crc_MKChain
loc_ce30C60_to_Air_MKChain:
	#data Air_MKChain
loc_ce30C64_to_Crc_HKChain:
	#data Crc_HKChain
loc_ce30C68_to_Air_HKChain:
	#data Air_HKChain
loc_ce30C6c:
	#data mem_8c2896b0
loc_ce30C70:
	#data loc_8c034E8C
loc_ce30C74_to_loc_ce348E4_to_loc_ce30CFE:
	#data loc_ce348E4_to_loc_ce30CFE

;==============================================
loc_ce30C78:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_ce30D84_to_loc_8c0511E2,pc),r3 ; r3 set to 0x8C0511E2
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_ce30D88_to_loc_8c052C84,pc),r3 ; r3 set to 0x8C052C84
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
	mov.w @(loc_ce30D80,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30CE4
	mov.w @(loc_ce30D82,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30CDC
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30E3C
	mov.l @r15+,r14

loc_ce30CDC:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30DFC
	mov.l @r15+,r14

loc_ce30CE4:
	mov.w @(loc_ce30D82,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30CF6
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30DC4
	mov.l @r15+,r14

loc_ce30CF6:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30E80
	mov.l @r15+,r14

loc_ce30CFE:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_ce30D88_to_loc_8c052C84,pc),r3 ; r3 set to 0x8C052C84
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
	mov.w @(loc_ce30D80,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30D66
	mov.w @(loc_ce30D82,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30D5E
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30E3C
	mov.l @r15+,r14

loc_ce30D5E:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30DFC
	mov.l @r15+,r14

loc_ce30D66:
	mov.w @(loc_ce30D82,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30D78
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30DC4
	mov.l @r15+,r14

loc_ce30D78:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30D8C
	mov.l @r15+,r14

;##############################################
loc_ce30D80:
	#data 0x01FE
loc_ce30D82:
	#data 0x01F9
	#align4

loc_ce30D84_to_loc_8c0511E2:
	#data loc_8c0511E2
loc_ce30D88_to_loc_8c052C84:
	#data loc_8c052C84

;----------------------------------------------
loc_ce30D8C:
	mov.w @(loc_ce30E58,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce30DA8
	cmp/eq 0x00,r0
	bt loc_ce30DA8
	cmp/eq 0x01,r0
	bt loc_ce30DA8
	bra loc_ce30DBE
	nop

loc_ce30DA8:
	mov.l @(loc_ce30E5C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30DBE
	lds.l @r15+,pr
	mov.l @(loc_ce30E60_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce30DBE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30DC4:
	mov.w @(loc_ce30E58,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_ce30DE0
	cmp/eq 0x01,r0
	bt loc_ce30DE0
	cmp/eq 0x02,r0
	bt loc_ce30DE0
	bra loc_ce30DF6
	nop

loc_ce30DE0:
	mov.l @(loc_ce30E5C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30DF6
	lds.l @r15+,pr
	mov.l @(loc_ce30E60_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce30DF6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30DFC:
	mov.w @(loc_ce30E58,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_ce30E18
	cmp/eq 0x00,r0
	bt loc_ce30E20
	cmp/eq 0x02,r0
	bt loc_ce30E20
	bra loc_ce30E36
	nop

loc_ce30E18:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30F7C
	mov.l @r15+,r14

loc_ce30E20:
	mov.l @(loc_ce30E5C_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30E36
	lds.l @r15+,pr
	mov.l @(loc_ce30E60_to_loc_8c051648,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_ce30E36:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30E3C:
	mov.w @(loc_ce30E58,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_ce30E64
	cmp/eq 0x01,r0
	bt loc_ce30E64
	cmp/eq 0x02,r0
	bt loc_ce30E64
	bra loc_ce30E7A
	nop

;##############################################
loc_ce30E58:
	#data 0x01E8
	#align4

loc_ce30E5C_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce30E60_to_loc_8c051648:
	#data loc_8c051648

;----------------------------------------------
loc_ce30E64:
	mov.l @(loc_ce30F58_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30E7A
	lds.l @r15+,pr
	mov.l @(loc_ce30F5C_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce30E7A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30E80:
	mov.w @(loc_ce30F54,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce30E9C
	cmp/eq 0x00,r0
	bt loc_ce30E9C
	cmp/eq 0x01,r0
	bt loc_ce30E9C
	bra loc_ce30EB2
	nop

loc_ce30E9C:
	mov.l @(loc_ce30F58_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30EB2
	lds.l @r15+,pr
	mov.l @(loc_ce30F5C_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce30EB2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30EB8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xa0,pc),r3
	jsr @r3
	mov r4,r14
	mov.l @(0xa0,pc),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_ce30ECE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_ce30F68_to_loc_8c04FEA8,pc),r3 ; r3 set to 0x8C04FEA8
	jsr @r3
	mov r4,r14
	mov.l @(loc_ce30F6C_to_loc_8c050048,pc),r2 ; r2 set to 0x8C050048
	jsr @r2
	mov r14,r4
	mov.w @(loc_ce30F56,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce30EF0
	bsr loc_ce30F32
	mov r14,r4
	bra loc_ce30EF4
	nop

loc_ce30EF0:
	bsr loc_ce30F10
	mov r14,r4

loc_ce30EF4:
	mov.l @(loc_ce30F70_to_loc_8c052CE2,pc),r3 ; r3 set to 0x8C052CE2,r3 set to 0x8C052CE2
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30F0A
	lds.l @r15+,pr
	mov.l @(loc_ce30F74_to_loc_8c052DAC,pc),r3 ; r3 set to 0x8C052DAC,r3 set to 0x8C052DAC
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce30F0A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30F10:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_ce30F58_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30F2A
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_ce30F78_to_loc_8c05176E,pc),r3 ; r3 set to 0x8C05176E
	jmp @r3
	lds.l @r15+,pr

loc_ce30F2A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_ce30F32:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_ce30F58_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30F4C
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_ce30F78_to_loc_8c05176E,pc),r3 ; r3 set to 0x8C05176E
	jmp @r3
	lds.l @r15+,pr

loc_ce30F4C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30F54:
	#data 0x01E8
loc_ce30F56:
	#data 0x01FE
	#align4

loc_ce30F58_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce30F5C_to_loc_8c051648:
	#data loc_8c051648
loc_ce30F6:
	#data loc_8c050084
loc_ce30F6:
	#data loc_8c04FF88
loc_ce30F68_to_loc_8c04FEA8:
	#data loc_8c04FEA8
loc_ce30F6C_to_loc_8c050048:
	#data loc_8c050048
loc_ce30F70_to_loc_8c052CE2:
	#data loc_8c052CE2
loc_ce30F74_to_loc_8c052DAC:
	#data loc_8c052DAC
loc_ce30F78_to_loc_8c05176E:
	#data loc_8c05176E

;==============================================
loc_ce30F7C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x134,pc),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30F92
	mov.l @(0x12c,pc),r3
	jsr @r3
	mov r14,r4

loc_ce30F92:
	mov.w @(0x116,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce30fc4
	mov.w @(0x10e,pc),r0
	mov 0x00,r4
	mov 0x19,r3
	mov.b r4,@(r0,r14)
	add 0x60,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x10c,pc),r3
	mov.l r4,@(r0,r14
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2

loc_ce30FC4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce30FCA:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_ce31030
	mov.l @(0xec,pc),r3
	jsr @r3
	mov r14,r4
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0xc8,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce31030
	mov.l @(0xd8,pc),r2
	mov 0x05,r5
	jsr @r2
	mov r14,r4
	mov.w @(0xb8,pc),r0
	mov 0x15,r3
	mov 0x00,r4
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xb8,pc),r3
	mov 0x16,r5
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2
	mov.w @(0x92,pc),r0
	mov.l @(0xac,pc),r2
	mov.b r4,@(r0,r14
	jsr @r2
	mov r14,r4
	mov.l @(0xa8,pc),r3
	mov 0x14,r5
	mov 0x03,r6
	jsr @r3
	mov r14,r4

loc_ce31030:
	mov.w @(0x80,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_ce31040
	mov.l @(0x98,pc),r2
	jsr @r2
	mov r14,r4

loc_ce31040:
	mov 0x5C,r1
	mov.l @(0x94,pc),r3
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
	fmov fr2,@(r0,r14
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
	mov.l @(0x38,pc),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31094
	lds.l @r15+,pr
	mov.l @(0x2c,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_ce31094:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
Rby_FwdDash:
	mov r4,r3
	mov.l @(loc_ce310DC_to_loc_ce348F4_to_loc_ce310E0,pc),r1 ; r1 set to 0xCE348F4
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce310ac:
	#data 0x0141
loc_ce310ae:
	#data 0x01FE
loc_ce310b0:
	#data 0x01A1
loc_ce310b2:
	#data 0x01F9
loc_ce310b4:
	#data 0x01FF
	#align4

loc_ce310b8:
	#data loc_8c034DEE
loc_ce310bc:
	#data loc_8c051648
loc_ce310c0:
	#data mem_8c2896b0
loc_ce310c4:
	#data loc_8c052B4C
loc_ce310c8:
	#data loc_8c056DE4
loc_ce310cc:
	#data loc_8c04223A
loc_ce310d0:
	#data loc_8c034E8C
loc_ce310d4:
	#data loc_8c0511E2
loc_ce310d8:
	#data loc_8c052C84
loc_ce310DC_to_loc_ce348F4_to_loc_ce310E0:
	#data loc_ce348F4_to_loc_ce310E0

;==============================================
loc_ce310E0:
	mov.w @(loc_ce311DC,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce31146
	mov.b @(0x06,r4),r0
	fldi0 fr4
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r4)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r4)
	mov.w @(loc_ce311DE,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce3110E
	mova @(loc_ce311E0,pc),r0  ; r0 set to 0xCE311E0
	bra loc_ce31112
	fmov.s @r0,fr3

loc_ce3110E:
	mova @(loc_ce311E4,pc),r0  ; r0 init to 0xCE311E4
	fmov.s @r0,fr3

loc_ce31112:
	mov 0x5C,r0 ; r0 set to 0x5C,r0 set to 0x5C
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_ce311DE,pc),r0 ; r0 set to 0x1D2,r0 set to 0x1D2
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce31124
	mova @(loc_ce311E8,pc),r0  ; r0 set to 0xCE311E8,r0 set to 0xCE311E8
	bra loc_ce31128
	fmov.s @r0,fr3

loc_ce31124:
	mova @(0xc4,pc),r0
	fmov @r0,fr3

loc_ce31128:
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mova @(0xc0,pc),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x00,r3
	fmov fr3,@(r0,r4)
	mova @(0xbc,pc),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov 0x12,r0
	mov.w r0,@(0x1c,r4)
	mov.w @(0x96,pc),r0
	mov.b r3,@(r0,r4)

loc_ce31146:
	mov.l @(loc_ce311F8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

loc_ce3114C:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_ce311F8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
	tst r0,r0
	bf loc_ce311CE
	mov.b @(0x06,r14),r0
	mov 0x68,r8 ; r8 set to 0x68
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce311DE,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_ce311B0
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_ce311E8,pc),r1 ; r1 set to 0xBEA00000
	lds r1,fpul
	bra loc_ce311B6
	fsts fpul,fr3

loc_ce311B0:
	mov.l @(0x38,pc),r2
	lds r2,fpul
	fsts fpul,fr3

loc_ce311B6:
	fmov @r8,fr2
	mova @(0x38,pc),r0
	mov 0x02,r6
	mov.l @(0x3c,pc),r3
	fadd fr3,fr2
	mov r6,r5
	fmov fr2,@r8
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_ce311CE:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce311DC:
	#data 0x0141
loc_ce311DE:
	#data 0x01D2
	#align4

loc_ce311E0:
	#data 0x417D5555
loc_ce311E4:
	#data 0xC17D5555
loc_ce311E8:
	#data 0xBEA00000
loc_ce311Ec:
	#data 0x3EA00000
loc_ce311f0:
	#data 0x40CDB6DB
loc_ce311f4:
	#data 0xBF092492
loc_ce311F8_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce311fc:
	#data loc_8c034E8C

;==============================================
loc_ce31200:
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
	mov.w @(0xda,pc),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bf loc_ce31264
	mov.b @(0x6,r4),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov.w @(0xb6,pc),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)

loc_ce31264:
	mov.w @(0xb0,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_ce31272
	mov.l @(0xac,pc),r3
	jmp @r3
	nop

loc_ce31272:
	rts
	nop

;==============================================
loc_ce31276:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_ce3131C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31290
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_ce31320_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_ce31290:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
Rby_BckDash:
	mov r4,r3
	mov.l @(loc_ce31324_to_loc_ce34904_to_loc_ce312AA,pc),r1 ; r1 set to 0xCE34904
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_ce312AA:
	mov.w @(loc_ce31318,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce31310
	mov.b @(0x06,r4),r0
	fldi0 fr4
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r4)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r4)
	mov.w @(loc_ce3131A,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce312D8
	mova @(loc_ce31328,pc),r0  ; r0 set to 0xCE31328
	bra loc_ce312DC
	fmov.s @r0,fr3

loc_ce312D8:
	mova @(loc_ce3132C,pc),r0  ; r0 init to 0xCE3132C
	fmov.s @r0,fr3

loc_ce312DC:
	mov 0x5C,r0 ; r0 set to 0x5C,r0 set to 0x5C
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_ce3131A,pc),r0 ; r0 set to 0x1D2,r0 set to 0x1D2
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_ce312EE
	mova @(loc_ce31330,pc),r0  ; r0 set to 0xCE31330,r0 set to 0xCE31330
	bra loc_ce312F2
	fmov.s @r0,fr3

loc_ce312EE:
	mova @(0x44,pc),r0
	fmov @r0,fr3

loc_ce312F2:
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mova @(0x40,pc),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x00,r3
	fmov fr3,@(r0,r4)
	mova @(0x38,pc),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov 0x12,r0
	mov.w r0,@(0x1c,r4)
	mov.w @(0x8,pc),r0
	mov.b r3,@(r0,r4)

loc_ce31310:
	mov.l @(loc_ce3131C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3131a:
	#data 0x041C
loc_ce31318:
	#data 0x0141
loc_ce3131A:
	#data 0x01D2
	#align4

loc_ce3131C_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce31320_to_loc_8c051648:
	#data loc_8c051648
loc_ce31324_to_loc_ce34904_to_loc_ce312AA:
	#data loc_ce34904_to_loc_ce312AA
loc_ce31328:
	#data 0xC17D5555
loc_ce3132C:
	#data 0x417D5555
loc_ce31330:
	#data 0x3EA00000
loc_ce31334:
	#data 0xBEA00000
loc_ce31338:
	#data 0x40CDB6DB
loc_ce3133c:
	#data 0xBF092492

;==============================================
loc_ce31340:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(loc_ce314AC_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
	tst r0,r0
	bf loc_ce313C2
	mov.b @(0x06,r14),r0
	mov 0x68,r8 ; r8 set to 0x68
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce314A2,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_ce313A4
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_ce314B0,pc),r1 ; r1 set to 0x3EA00000
	lds r1,fpul
	bra loc_ce313AA
	fsts fpul,fr3

loc_ce313A4:
	mov.l @(0x10c,pc),r2
	lds r2,fpul
	fsts fpul,fr3

loc_ce313AA:
	fmov @r8,fr2
	mova @(0x108,pc),r0
	mov.l @(0x10c,pc),r3
	mov 0x02,r5
	fadd fr3,fr2
	mov 0x03,r6
	fmov fr2,@r8
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_ce313C2:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_ce313D0:
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
	mov.w @(0x98,pc),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bf loc_ce31434
	mov.b @(0x6,r4),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov.w @(0x74,pc),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)

loc_ce31434:
	mov.w @(0x6e,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_ce31442
	mov.l @(0x6c,pc),r3
	jmp @r3
	nop

loc_ce31442:
	rts
	nop

;==============================================
loc_ce31446:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_ce314AC_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31460
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_ce314C0_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_ce31460:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_ce31468:
	mov r4,r3
	mov.l @(loc_ce314C4_to_loc_ce34914_to_loc_ce3147A,pc),r1 ; r1 set to 0xCE34914
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_ce3147A:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x01,r3 ; r3 set to 0x01
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x0D,r5 ; r5 set to 0x0D
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce314A8,pc),r0 ; r0 set to 0x12C
	mov.b r3,@(r0,r14)
	mov.l @(loc_ce314C8_to_loc_8c0CE62C,pc),r3 ; r3 set to 0x8C0CE62C
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce314BC_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x00,r6 ; r6 set to 0x00
	mov 0x12,r5 ; r5 set to 0x12
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce314A2:
	#data 0x01D2
loc_ce314A4:
	#data 0x041C
loc_ce314A6:
	#data 0x0141
loc_ce314A8:
	#data 0x012C
	#align4

loc_ce314AC_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce314B0:
	#data 0x3EA00000
loc_ce314B4:
	#data 0xBEA00000
loc_ce314B8:
	#data 0xBF092492
loc_ce314BC_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce314C0_to_loc_8c051648:
	#data loc_8c051648
loc_ce314C4_to_loc_ce34914_to_loc_ce3147A:
	#data loc_ce34914_to_loc_ce3147A
loc_ce314C8_to_loc_8c0CE62C:
	#data loc_8c0CE62C

;==============================================
loc_ce314CC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x138,pc),r0
	mov r4,r14
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce31502
	mov.w @(0x12e,pc),r0
	mov 0x00,r2
	mov.l @(0x138,pc),r3
	mov r15,r5
	mov.b r2,@(r0,r14)
	mova @(0x12c,pc),r0
	fmov @r0,fr3
	mova @(0x12c,pc),r0
	mov 0x02,r6
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0x124,pc),r2
	mov 0x02,r5
	jsr @r2
	mov r14,r4

loc_ce31502:
	mov.l @(0x120,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31514
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_ce31514:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3151C:
	mov r4,r3
	mov.l @(loc_ce31628_to_loc_ce3491C_to_loc_ce3152E,pc),r1 ; r1 set to 0xCE3491C
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_ce3152E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce31546
	bsr loc_ce316ac
	mov r14,r4

loc_ce31546:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_ce3154C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_ce3162C_to_loc_8c046C8A,pc),r3 ; r3 set to 0x8C046C8A
	jsr @r3
	mov r4,r14
	tst r0,r0
	bt loc_ce31564
	lds.l @r15+,pr
	mov.l @(loc_ce31630_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce31564:
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r3
	mov.l @(loc_ce31634_to_loc_ce34924_to_loc_ce315D6,pc),r0 ; r0 set to 0xCE34924
	extu.b r3,r3
	lds.l @r15+,pr
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_ce31578:
	mov r4,r3
	mov.l @(loc_ce31638_to_loc_ce34950_to_loc_ce3158A,pc),r1 ; r1 set to 0xCE34950
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_ce3158A:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_ce3163C_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	jsr @r3
	mov r14,r4
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_ce31610,pc),r0 ; r0 set to 0x41C
	mov 0x02,r6 ; r6 set to 0x02
	mov.l @(loc_ce31640_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x13,r5 ; r5 set to 0x13
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_ce31612,pc),r0 ; r0 set to 0x1FC
	mov.b r4,@(r0,r14)
	add 0xFD,r0 ; r0 set to 0x1F9
	mov.b r4,@(r0,r14)
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_ce315D0:
	mov.l @(loc_ce31624_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

loc_ce315D6:
	mov r4,r3
	mov.l @(loc_ce31644_to_loc_ce34958_to_loc_ce315E8,pc),r1 ; r1 set to 0xCE34958
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_ce315E8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov.l @(loc_ce31648_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce31640_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x00,r6 ; r6 set to 0x00
	mov 0x13,r5 ; r5 set to 0x13
	jmp @r2
	mov.l @r15+,r14

loc_ce31608:
	mov.l @(loc_ce31624_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3160e:
	#data 0x0141
loc_ce31610:
	#data 0x041C
loc_ce31612:
	#data 0x01FC
	#align4

loc_ce31614:
	#data 0x42A00000
loc_ce31618:
	#data 0x42092492
loc_ce3161c:
	#data loc_8c0FDAB6
loc_ce31620:
	#data loc_8c04223A
loc_ce31624_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce31628_to_loc_ce3491C_to_loc_ce3152E:
	#data loc_ce3491C_to_loc_ce3152E
loc_ce3162C_to_loc_8c046C8A:
	#data loc_8c046C8A
loc_ce31630_to_loc_8c051648:
	#data loc_8c051648
loc_ce31634_to_loc_ce34924_to_loc_ce315D6:
	#data loc_ce34924_to_loc_ce315D6
loc_ce31638_to_loc_ce34950_to_loc_ce3158A:
	#data loc_ce34950_to_loc_ce3158A
loc_ce3163C_to_loc_8c035162:
	#data loc_8c035162
loc_ce31640_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce31644_to_loc_ce34958_to_loc_ce315E8:
	#data loc_ce34958_to_loc_ce315E8
loc_ce31648_to_loc_8c05218A:
	#data loc_8c05218A

;==============================================
loc_ce3164C:
	mov r4,r3
	mov.l @(loc_ce31768_to_loc_ce34960_to_loc_ce3165E,pc),r1 ; r1 set to 0xCE34960
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_ce3165E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov.l @(loc_ce3176C_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce31770_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x01,r6 ; r6 set to 0x01
	mov 0x13,r5 ; r5 set to 0x13
	jmp @r2
	mov.l @r15+,r14

loc_ce3167E:
	mov.w @(0xd8,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce316A2
	mov.w @(0xca,pc),r0
	mov 0x00,r2
	mov.l @(0xe0,pc),r3
	mov 0x0E,r5
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xd8,pc),r2
	mov 0x0A,r5
	jsr @r2
	mov r14,r4

loc_ce316A2:
	lds.l @r15+,pr
	mov.l @(0xd0,pc),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce316AC:
	mov.w @(0xac,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xa8,pc),r2
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_ce3170a
	mov.w @(r0,r14),r3
	mov.w @(0x9c,pc),r1
	extu.w r3,r3
	tst r1,r3
	bt loc_ce316cc
	bra loc_ce31718
	mov 0x05,r3

loc_ce316CC:
	mov.w @(0x92,pc),r2
	tst r2,r3
	bt loc_ce316d6
	bra loc_ce31718
	mov 0x06,r3

loc_ce316D6:
	extu.w r0,r0
	tst 0x80,r0
	bt loc_ce316e2
	bra loc_ce316fc
	mov 0x07,r1

loc_ce316E2:
	mov.w @(0x76,pc),r0
	mov.w @(r0,r14),r0
	extu.w r0,r0
	tst 0x40,r0
	bt loc_ce316F0
	bra loc_ce316FC
	mov 0x08,r1

loc_ce316F0:
	mov.w @(0x68,pc),r0
	mov.w @(r0,r14),r0
	extu.w r0,r0
	tst 0x20,r0
	bt loc_ce31702
	mov 0x09,r1

loc_ce316FC:
	mov 0x20,r0
	bra loc_ce3171C
	mov.b r1,@(r0,r14)

loc_ce31702:
	mov 0x20,r0
	mov 0x0A,r3
	bra loc_ce3171C
	mov.b r3,@(r0,r14

loc_ce3170A:
	mov.l @(0x70,pc),r1
	jsr @r1
	nop
	mov.l @(0x6c,pc),r1
	and 0x0F,r0
	shll r0
	mov.b @(r0,r1),r3

loc_ce31718:
	mov 0x20,r0
	mov.b r3,@(r0,r14)

loc_ce3171C:
	mov.l @(0x64,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r2
	cmp/gt r2,r0
	bf loc_ce3172E
	mov 0x20,r0
	mov 0x05,r1
	mov.b r1,@(r0,r14)

loc_ce3172E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
Rby_SpecPRG:
	mov.w @(loc_ce31764,pc),r0 ; r0 set to 0x1E9
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_ce31788_to_Special_PRG_Table,pc),r0 ; r0 set to 0xCE34988
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_ce31748:
	mov r4,r3
	mov.l @(loc_ce3178C_to_loc_ce349BC_to_loc_ce31790,pc),r1 ; r1 set to 0xCE349BC
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3175a:
	#data 0x0141
loc_ce3175c:
	#data 0x0340
loc_ce3175e:
	#data 0x03F0
loc_ce31760:
	#data 0x0200
loc_ce31762:
	#data 0x0100
loc_ce31764:
	#data 0x01E9
	#align4

loc_ce31768_to_loc_ce34960_to_loc_ce3165E:
	#data loc_ce34960_to_loc_ce3165E
loc_ce3176C_to_loc_8c05218A:
	#data loc_8c05218A
loc_ce31770_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce31774:
	#data loc_8c0CE62C
loc_ce31778:
	#data loc_8c034DEE
loc_ce3177c:
	#data loc_8c03319E
loc_ce31780_to_loc_ce34968:
	#data loc_ce34968
loc_ce31784:
	#data loc_8c0514B8
loc_ce31788_to_Special_PRG_Table:
	#data Special_PRG_Table
loc_ce3178C_to_loc_ce349BC_to_loc_ce31790:
	#data loc_ce349BC_to_loc_ce31790

;==============================================
loc_ce31790:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x05,r5 ; r5 set to 0x05
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(loc_ce318A8_to_loc_8c056DE4,pc),r3 ; r3 set to 0x8C056DE4
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce318AC_to_loc_8c05218A,pc),r2 ; r2 set to 0x8C05218A
	jsr @r2
	mov r14,r4
	mov.l @(loc_ce318B0_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce318B8_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @(loc_ce318B4_to_loc_ce34424,pc),r13 ; r13 set to 0xCE34424
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r2
	mov r14,r4
	mov.w @(loc_ce3189A,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_ce317FA
	mov.w @(loc_ce3189C,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce317FA
	mov.w @(loc_ce3189E,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_ce317E0
	mov 0x23,r0 ; r0 set to 0x23
	bra loc_ce317E2
	mov 0x09,r2

loc_ce317E0:
	mov 0x0A,r2 ; r2 set to 0x0A

loc_ce317E2:
	mov.b r2,@(r0,r14)
	mov.w @(loc_ce3189E,pc),r0 ; r0 set to 0x130,r0 set to 0x130
	mov.w @(r0,r14),r1
	tst r1,r1
	bt loc_ce317F0
	bra loc_ce317F2
	mov 0x3F,r3

loc_ce317F0:
	mov 0x46,r3 ; r3 set to 0x46

loc_ce317F2:
	shll2 r3 ; r3 set to 0x118
	add r3,r13
	bra loc_ce3181E
	nop

loc_ce317FA:
	mov.w @(loc_ce3189E,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_ce31808
	mov 0x23,r0 ; r0 set to 0x23
	bra loc_ce3180A
	mov 0x01,r2

loc_ce31808:
	mov 0x02,r2 ; r2 set to 0x02

loc_ce3180A:
	mov.b r2,@(r0,r14)
	mov.w @(loc_ce3189E,pc),r0 ; r0 set to 0x130,r0 set to 0x130
	mov.w @(r0,r14),r1
	tst r1,r1
	bt loc_ce31818
	bra loc_ce3181A
	mov 0x07,r3

loc_ce31818:
	mov 0x0E,r3

loc_ce3181A:
	shll2 r3
	add r3,r13

loc_ce3181E:
	mov.w @(0x7a,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce3182E
	mov.l @(0x90,pc),r2
	jsr @r2
	mov r14,r4

loc_ce3182E:
	fmov @r13,fr3
	mov 0x5C,r0
	mov 0x00,r4
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r13),fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r13),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r13),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1c,r14)
	mov r4,r0
	nop
	mov.w @(0x46,pc),r5
	mov.w r0,@(0x1e,r14)
	add r14,r5
	mov.l @(0x60,pc),r6
	mov.b r0,@(0x6,r5)
	mov.w r0,@(0x8,r5)
	mov.w @(0x3c,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_ce318c4
	mov.w @(0x34,pc),r0
	mov 0x48,r2
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov 0x03,r4
	mov.b @(0x2,r14),r0
	mov.l @r6,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov r4,r0
	nop
	mov.b r0,@(0x6,r5)
	bra loc_ce318E6
	mov.w r0,@(0x1e,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3189A:
	#data 0x01A3
loc_ce3189C:
	#data 0x01F9
loc_ce3189E:
	#data 0x0130
loc_ce318A0:
	#data 0x02A4
loc_ce318A2:
	#data 0x0255
loc_ce318A4:
	#data 0x01A1
	#align4

loc_ce318A8_to_loc_8c056DE4:
	#data loc_8c056DE4
loc_ce318AC_to_loc_8c05218A:
	#data loc_8c05218A
loc_ce318B0_to_loc_8c035162:
	#data loc_8c035162
loc_ce318B4_to_loc_ce34424:
	#data loc_ce34424
loc_ce318B8_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce318bC:
	#data loc_8c05115A
loc_ce318C0:
	#data mem_8c2896b0

;==============================================
loc_ce318C4:
	mov.w @(0xee,pc),r0
	mov 0x33,r2
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r6,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	lds.l @r15+,pr


loc_ce318E6:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_ce318EE:
	mov.w @(loc_ce319B8,pc),r0 ; r0 set to 0x1D4
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_ce319BA,pc),r0 ; r0 set to 0x143
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_ce319A8
	mov.b @(0x06,r14),r0
	mov 0x01,r7 ; r7 set to 0x01
	mov.l @(loc_ce319C8_to_loc_8c03544C,pc),r3 ; r3 set to 0x8C03544C
	mov 0x00,r5 ; r5 set to 0x00
	add 0x01,r0 ; r0 set to 0x144
	mov r7,r6 ; r6 set to 0x01
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce319CC_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x15,r5 ; r5 set to 0x15
	mov 0x03,r6 ; r6 set to 0x03
	jsr @r2
	mov r14,r4
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x07,r14)
	mov.w @(loc_ce319BC,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce3197A
	mov.l @(loc_ce319D0_to_loc_8c053082,pc),r2 ; r2 set to 0x8C053082
	jsr @r2
	mov r14,r4
	mova @(loc_ce319D4,pc),r0  ; r0 set to 0xCE319D4
	fmov.s @r0,fr3 ; r3 ??
	mov.w @(loc_ce319BE,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_ce319C0,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce3197A
	mov.l @(loc_ce319CC_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x15,r5 ; r5 set to 0x15
	mov 0x06,r6 ; r6 set to 0x06
	jsr @r3
	mov r14,r4
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x07,r14)
	mov 0x34,r8 ; r8 set to 0x34
	mov.w @(loc_ce319C2,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt/s loc_ce3196E
	add r14,r8 ; r8 ??? bc r14 is ???
	mov.l @(loc_ce319D8,pc),r1 ; r1 set to 0x43055555
	lds r1,fpul
	bra loc_ce31974
	fsts fpul,fr3

loc_ce3196E:
	mov.l @(0x6c,pc),r2
	lds r2,fpul
	fsts fpul,fr3

loc_ce31974:
	fmov @r8,fr2
	fadd fr3,fr2
	fmov fr2,@r8

loc_ce3197A:
	mov.w @(0x46,pc),r0
	mov 0x00,r3
	mov 0x4B,r5
	mov.w r3,@(r0,r14)
	mov.l @(0x5c,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x0A,r7
	mov.l @(0x58,pc),r13
	mov r7,r5
	mov 0x13,r6
	jsr @r13
	mov r14,r4
	mov 0x09,r7
	mov r7,r5
	mov 0x13,r6
	jsr @r13
	mov r14,r4
	mov 0x0B,r7
	mov r7,r5
	mov 0x13,r6
	jsr @r13
	mov r14,r4

loc_ce319A8:
	lds.l @r15+,pr
	mov.l @(loc_ce319E8_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
	mov r14,r4
	mov.l @r15+,r8
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce319B6:
	#data 0x01A1
loc_ce319B8:
	#data 0x01D4
loc_ce319BA:
	#data 0x0143
loc_ce319BC:
	#data 0x01F9
loc_ce319BE:
	#data 0x041C
loc_ce319C0:
	#data 0x01A3
loc_ce319C2:
	#data 0x0130
loc_ce319C4:
	#data 0x0352
	#align4

loc_ce319C8_to_loc_8c03544C:
	#data loc_8c03544C
loc_ce319CC_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce319D0_to_loc_8c053082:
	#data loc_8c053082
loc_ce319D4:
	#data 0x41AB6DB6
loc_ce319D8:
	#data 0x43055555
loc_ce319Dc:
	#data 0xC3055555
loc_ce319e0:
	#data loc_8c04223A
loc_ce319e4:
	#data loc_8c07A428
loc_ce319E8_to_loc_8c034DEE:
	#data loc_8c034DEE

;==============================================
loc_ce319EC:
	mov.l @(0x118,pc),r3
	mova @(0x114,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	fmov @r0,fr3
	mov 0x38,r0
	fmov @r3,fr4
	fmov @(r0,r14),fr2
	fadd fr3,fr4
	fcmp/gt fr4,fr2
	bf.s loc_ce31A0A
	mov 0x02,r6
	fmov fr4,@(r0,r14)

loc_ce31A0A:
	mov.w @(0xea,pc),r4
	mov.w @(0xe6,pc),r0
	add r14,r4
	mov.b r6,@(r0,r14)
	mov.w @(0x8,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r4)
	add 0x01,r0
	extu.w r0,r0
	cmp/pl r0
	bf loc_ce31A24
	bra loc_ce31b8e
	nop

loc_ce31A24:
	mov 0x00,r5
	mov r5,r0
	nop
	mov.w r0,@(0x8,r4)
	mov.w @(0xca,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce31a7a
	mov.b @(0x6,r4),r0
	extu.b r0,r0
	cmp/ge r6,r0
	bt loc_ce31a7a
	mov.b @(0x6,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce31a4c
	mov.w @(0xb4,pc),r0
	mov 0x35,r2
	bra loc_ce31a52
	mov.b r2,@(r0,r14)

loc_ce31A4C:
	mov.w @(0xac,pc),r0
	mov 0x34,r3
	mov.b r3,@(r0,r14)

loc_ce31A52:
	mov.w @(0xa8,pc),r0
	mov.l @(0xb4,pc),r3
	mov.w r5,@(r0,r14)
	add 0xF2,r0
	mov.b r5,@(r0,r14)
	add 0x26,r0
	mov.l r5,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov 0x04,r0
	mov.w r0,@(0x8,r4)

loc_ce31A7A:
	mov 0x5C,r1
	mov.l @(0x90,pc),r3
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
	mov.w @(0x44,pc),r0
	mov.l @(0x58,pc),r13
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_ce31b20
	mov.l @(0x50,pc),r3
	mov 0x05,r0
	mov 0x00,r5
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x18,pc),r0
	mov.l @(0x34,pc),r3
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	bra loc_ce31b58
	mov 0x08,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce31af6:
	#data 0x01F5
loc_ce31af8:
	#data 0x02A4
loc_ce31afa:
	#data 0x019E
loc_ce31afc:
	#data 0x01A1
loc_ce31afe:
	#data 0x01AC
loc_ce31b00:
	#data 0x041C
	#align4

loc_ce31b04:
	#data 0xC2CDB6DB
loc_ce31b08:
	#data loc_8c26A5B8
loc_ce31b0c:
	#data mem_8c2896b0
loc_ce31b10:
	#data loc_8c034DEE
loc_ce31b14:
	#data loc_8c034E8C
loc_ce31b18:
	#data loc_8c035162
loc_ce31b1c:
	#data loc_8c0511B4

;==============================================
loc_ce31B20:
	mov.w @(0x1c,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1c,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_ce31b62
	mov.l @(0x10c,pc),r3
	mov 0x04,r0
	mov 0x00,r5
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	fldi1 fr3
	mov 0x6C,r0
	fneg fr3
	fmov fr3,@(r0,r14)
	mova @(0xfc,pc),r0
	fmov @r0,fr3
	mov.w @(0xe2,pc),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bf loc_ce31b56
	bra loc_ce31b58
	mov 0x02,r6

loc_ce31B56:
	mov 0x20,r6

loc_ce31B58:
	mov 0x15,r5
	jsr @r13
	mov r14,r4
	bra loc_ce31b8e
	nop

loc_ce31B62:
	mov.w @(0xc6,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bt loc_ce31b8e
	mov.w @(0xc0,pc),r4
	mov r4,r0
	nop
	add 0x48,r0
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r4,r2
	bf loc_ce31b84
	mov.w @(0xb2,pc),r0
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r4,r1
	bt loc_ce31b8e

loc_ce31B84:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_ce31d16
	mov.l @r15+,r14

loc_ce31B8E:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_ce31B96:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x94,pc),r0
	mov 0x02,r4
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	mov.w @(0x8c,pc),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_ce31C1E
	mov r4,r0
	nop
	mov.b r0,@(0x6,r14
	mov 0x00,r4
	mov.w @(0x7e,pc),r5
	mov.w @(0x76,pc),r0
	add r14,r5
	mov.w r4,@(r0,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x6,r5)
	mov 0x33,r3
	mov.w r0,@(0x8,r5)
	mov 0x0A,r7
	mov.w @(0x6c,pc),r0
	mov r7,r5
	mov.l @(0x78,pc),r13
	mov 0x13,r6
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x64,pc),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	jsr @r13
	mov r14,r4
	mov 0x09,r7
	mov r7,r5
	mov 0x13,r6
	jsr @r13
	mov r14,r4
	mov 0x0B,r7
	mov r7,r5
	mov 0x13,r6
	jsr @r13
	mov r14,r4
	mov.l @(0x40,pc),r3
	mov 0x4B,r5
	jsr @r3
	mov r14,r4
	mov.b @(0x7,r14),r0
	mov 0x15,r5
	mov.l @(0x38,pc),r3
	mov r0,r6
	add 0x03,r6
	jsr @r3
	mov r14,r4

loc_ce31C1E:
	lds.l @r15+,pr
	mov.l @(0x30,pc),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce31C2a:
	#data 0x041C
loc_ce31C2c:
	#data 0x0141
loc_ce31C2e:
	#data 0x0300
loc_ce31C30:
	#data 0x0352
loc_ce31C32:
	#data 0x01F5
loc_ce31C34:
	#data 0x0143
loc_ce31C36:
	#data 0x02A4
loc_ce31C38:
	#data 0x01A1
	#align4

loc_ce31c3c:
	#data loc_8c035162
loc_ce31c40:
	#data 0x42855555
loc_ce31c44:
	#data mem_8c2896b0
loc_ce31c48:
	#data loc_8c07A428
loc_ce31c4c:
	#data loc_8c04223A
loc_ce31c50:
	#data loc_8c034E8C
loc_ce31c54:
	#data loc_8c034DEE

;==============================================
loc_ce31C58:
	mov.w @(loc_ce31D92,pc),r0 ; r0 set to 0x41C
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_ce31C9E
	mov.b @(0x06,r14),r0
	fldi0 fr4
	add 0x01,r0 ; r0 set to 0x39
	mov.l @(loc_ce31D9C_to_loc_8c0511B4,pc),r3 ; r3 set to 0x8C0511B4
	mov.b r0,@(0x06,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_ce31D92,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce31DA0_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x08,r6 ; r6 set to 0x08
	mov 0x15,r5 ; r5 set to 0x15
	jmp @r2
	mov.l @r15+,r14

loc_ce31C9E:
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_ce31DA4_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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

loc_ce31CE0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_ce31D94,pc),r0 ; r0 set to 0x352
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	mov.w r13,@(r0,r14)
	mov.w @(loc_ce31D96,pc),r0 ; r0 set to 0x1F9
	mov.l @(loc_ce31DA4_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	mov.b r13,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_ce31D0E
	lds.l @r15+,pr
	mov.l @(loc_ce31DA8_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r3
	mov.l @r15+,r14

loc_ce31D0E:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_ce31D16:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1e,r14),r0
	mov 0x02,r3
	cmp/ge r3,r0
	bt loc_ce31de4
	mov.w @(0x70,pc),r0
	mov.l @(0x84,pc),r4
	mov.w @(r0,r14),r5
	mov 0x23,r0
	fldi0 fr2
	extu.w r5,r5
	shlr8 r5
	shlr2 r5
	mov.b r5,@(r0,r14)
	extu.b r5,r5
	mov r5,r2
	shll2 r5
	shll r5
	sub r2,r5
	shll2 r5
	mov 0x10,r0
	add r5,r4
	fmov @(r0,r4),fr3
	fcmp/eq fr2,fr3
	bt loc_ce31de4
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1c,r14)
	mov.w @(0x1e,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1e,r14)
	mov 0x5C,r0
	fmov @r4,fr3
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r4),fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r4),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x18,r0
	fmov @(r0,r4),fr3
	ftrc fr3,fpul
	fldi0 fr3
	sts fpul,r0
	mov.b r0,@(0x7,r14)
	mov 0x14,r0
	fmov @(r0,r4),fr4
	fcmp/gt fr4,fr3
	bt loc_ce31db0
	bra loc_ce31db8
	fmov fr4,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce31D92:
	#data 0x041C
loc_ce31D94:
	#data 0x0352
loc_ce31D96:
	#data 0x01F9
loc_ce31D98:
	#data 0x0340
	#align4

loc_ce31D9C_to_loc_8c0511B4:
	#data loc_8c0511B4
loc_ce31DA0_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce31DA4_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce31DA8_to_loc_8c051648:
	#data loc_8c051648
loc_ce31DAC_to_loc_ce34424:
	#data loc_ce34424

;==============================================
loc_ce31DB0:
	mov.w @(0x12c,pc),r0
	mov.w @(r0,r14),r2
	lds r2,fpul
	float fpul,fr3

loc_ce31DB8:
	ftrc fr3,fpul
	mov.w @(0x122,pc),r0
	mov.l @(0x12c,pc),r3
	mov 0x00,r5
	sts fpul,r1
	mov.w r1,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x120,pc),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	mov 0x48,r0
	mov r14,r4
	mov 0x00,r3
	mov.l r3,@(r0,r14)
	mov 0x01,r6
	lds.l @r15+,pr
	mov.l @(0x110,pc),r3
	mov 0x15,r5
	jmp @r3
	mov.l @r15+,r14

loc_ce31DE4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce31DEA:
	mov r4,r3
	mov.l @(loc_ce31EF4_to_loc_ce349D4_to_loc_ce31DFC,pc),r1 ; r1 set to 0xCE349D4
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_ce31DFC:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x3E,r3 ; r3 set to 0x3E
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x05,r5 ; r5 set to 0x05
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce31EE2,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_ce31EF8_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_ce31EFC_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
	jsr @r2
	mov r14,r4
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_ce31EE4,pc),r0 ; r0 set to 0x1F9
	mov.l @(loc_ce31F00_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
	mov.b r13,@(r0,r14)
	mov.w @(loc_ce31EE6,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce31F04_to_loc_8c035162,pc),r2 ; r2 set to 0x8C035162
	mov r13,r5 ; r5 set to 0x00
	jsr @r2
	mov r14,r4
	mov.l @(loc_ce31F08_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce31EF0_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x09,r6 ; r6 set to 0x09
	mov 0x15,r5 ; r5 set to 0x15
	mov r14,r4
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r2
	mov.l @r15+,r14

loc_ce31E7A:
	mov.w @(0x6a,pc),r0
	mov 0x01,r2
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	cmp/ge r2,r3
	bt loc_ce31ea2
	mov.b @(0x6,r14),r0
	mov 0x00,r3
	mov r3,r5
	mov r3,r7
	add 0x01,r0
	mov.b r0,@(0x6,r14
	mov 0x13,r6
	mov.w @(0x4c,pc),r0
	mov.b r3,@(r0,r14
	mov.l @(0x6c,pc),r3
	jsr @r3
	mov r14,r4

loc_ce31EA2:
	lds.l @r15+,pr
	mov.l @(0x68,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_ce31EAC:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_ce31F10_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31EC6
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_ce31F14_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_ce31EC6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_ce31ECE:
	mov r4,r3
	mov.l @(loc_ce31F18_to_loc_ce349E0_to_loc_ce31F1C,pc),r1 ; r1 set to 0xCE349E0
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce31EE0:
	#data 0x0130
loc_ce31EE2:
	#data 0x01A1
loc_ce31EE4:
	#data 0x01F9
loc_ce31EE6:
	#data 0x041C
loc_ce31EE8:
	#data 0x0141
	#align4

loc_ce31EEC:
	#data loc_8c0CE62C
loc_ce31EF0_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce31EF4_to_loc_ce349D4_to_loc_ce31DFC:
	#data loc_ce349D4_to_loc_ce31DFC
loc_ce31EF8_to_mem_8c2896b0:
	#data mem_8c2896b0
loc_ce31EFC_to_loc_8c056DE4:
	#data loc_8c056DE4
loc_ce31F00_to_loc_8c05218A:
	#data loc_8c05218A
loc_ce31F04_to_loc_8c035162:
	#data loc_8c035162
loc_ce31F08_to_loc_8c05115A:
	#data loc_8c05115A
loc_ce31F0c:
	#data loc_8c07A428
loc_ce31F10_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce31F14_to_loc_8c051648:
	#data loc_8c051648
loc_ce31F18_to_loc_ce349E0_to_loc_ce31F1C:
	#data loc_ce349E0_to_loc_ce31F1C

;==============================================
loc_ce31F1C:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x3F,r3 ; r3 set to 0x3F
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x05,r5 ; r5 set to 0x05
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce3205E,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_ce32068_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_ce3206C_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
	jsr @r2
	mov r14,r4
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_ce32060,pc),r0 ; r0 set to 0x1F9
	mov.l @(loc_ce32070_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
	mov.b r13,@(r0,r14)
	mov.w @(loc_ce32062,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce32074_to_loc_8c035162,pc),r2 ; r2 set to 0x8C035162
	mov r13,r5 ; r5 set to 0x00
	jsr @r2
	mov r14,r4
	mov.l @(loc_ce32078_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
	jsr @r3
	mov r14,r4
	mov 0x23,r0 ; r0 set to 0x23
	mov.l @(loc_ce3207C_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b r13,@(r0,r14)
	mov 0x0A,r6 ; r6 set to 0x0A
	lds.l @r15+,pr
	mov 0x15,r5 ; r5 set to 0x15
	mov r14,r4
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r3
	mov.l @r15+,r14

loc_ce31F9E:
	mov.w @(0xc2,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce31fd6
	mov.b @(0x6,r14),r0
	mov 0x02,r7
	mov.l @(0xcc,pc),r3
	mov r7,r5
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x13,r6
	jsr @r3
	mov r14,r4
	mov.l @(0xc4,pc),r2
	mov 0x04,r5
	jsr @r2
	mov r14,r4
	mov.w @(0x9a,pc),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	add 0x62,r0
	mov.b @(r0,r14),r2
	mov 0x10,r0
	mov.w r0,@(0x1c,r14)
	tst r2,r2

loc_ce31fd6:
	lds.l @r15+,pr
	mov.l @(0xac,pc),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_ce31FE0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1c,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1c,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_ce32004
	mov.b @(0x6,r14),r0
	mov 0x15,r5
	mov.l @(0x80,pc),r3
	mov 0x0B,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4

loc_ce32004:
	lds.l @r15+,pr
	mov.l @(0x80,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_ce3200E:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_ce32088_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce32028
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_ce3208C_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_ce32028:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_ce32030:
	mov r4,r3
	mov.l @(loc_ce32090_to_loc_ce349F0_to_loc_ce32042,pc),r1 ; r1 set to 0xCE349F0
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_ce32042:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(loc_ce3206C_to_loc_8c056DE4,pc),r3 ; r3 set to 0x8C056DE4
	jsr @r3
	mov 0x05,r5 ; r5 set to 0x05
	mov.w @(loc_ce32066,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce32094
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x1A4
	bra loc_ce320A0
	mov.b r0,@(0x06,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3205E:
	#data 0x01A1
loc_ce32060:
	#data 0x01F9
loc_ce32062:
	#data 0x041C
loc_ce32064:
	#data 0x0141
loc_ce32066:
	#data 0x01A3
	#align4

loc_ce32068_to_mem_8c2896b0:
	#data mem_8c2896b0
loc_ce3206C_to_loc_8c056DE4:
	#data loc_8c056DE4
loc_ce32070_to_loc_8c05218A:
	#data loc_8c05218A
loc_ce32074_to_loc_8c035162:
	#data loc_8c035162
loc_ce32078_to_loc_8c05115A:
	#data loc_8c05115A
loc_ce3207C_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce32080:
	#data loc_8c07A428
loc_ce32084:
	#data loc_8c0CE62C
loc_ce32088_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce3208C_to_loc_8c051648:
	#data loc_8c051648
loc_ce32090_to_loc_ce349F0_to_loc_ce32042:
	#data loc_ce349F0_to_loc_ce32042

;==============================================
loc_ce32094:
	mov 0x06,r0 ; r0 set to 0x06
	mov r14,r4
	mov.b r0,@(0x06,r14)
	lds.l @r15+,pr
	bra loc_ce32230
	mov.l @r15+,r14

loc_ce320A0:
	mov 0x23,r0 ; r0 set to 0x23
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r4,@(r0,r14)
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_ce321AC,pc),r0 ; r0 set to 0x1F9
	mov.l @(loc_ce321B4_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
	mov.b r4,@(r0,r14)
	mov.w @(loc_ce321AE,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(loc_ce321B8_to_loc_8c035162,pc),r2 ; r2 set to 0x8C035162
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r2
	mov r14,r4
	mov.l @(loc_ce321BC_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce321C0_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x0E,r6 ; r6 set to 0x0E
	mov 0x15,r5 ; r5 set to 0x15
	jmp @r2
	mov.l @r15+,r14
	
loc_ce320EC:
	mov.w @(0xc0,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	cmp/eq 0x70,r0
	bf loc_ce3210c
	mov.w @(0xb2,pc),r0
	mov 0x06,r7
	mov.l @(0xc4,pc),r3
	mov 0x00,r2
	mov r7,r5
	mov.b r2,@(r0,r14)
	mov 0x13,r6
	jsr @r3
	mov r14,r4

loc_ce3210C:
	mov 0x23,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/pl r2
	bf loc_ce3212E
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(0xa4,pc),r3
	mov 0x15,r5
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x23,r0
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x0F,r6
	jmp @r3
	mov.l @r15+,r14

loc_ce3212E:
	mov.w @(0x80,pc),r0
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_ce32146
	mov.b @(0x6,r14),r0
	mov 0x15,r5
	mov.l @(0x84,pc),r3
	mov 0x0F,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4

loc_ce32146:
	lds.l @r15+,pr
	mov.l @(0x7c,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_ce32150:
	mov.w @(loc_ce321B2,pc),r0 ; r0 set to 0x143
	mov.b @(r0,r4),r3
	cmp/pz r3
	bt loc_ce3217E
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/pl r2
	bf loc_ce32172
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bf loc_ce32172
	mov.b @(0x06,r4),r0
	add 0x01,r0 ; r0 set to 0x24
	mov.b r0,@(0x06,r4)
	bra loc_ce32178
	mov 0x1A,r6

loc_ce32172:
	mov 0x05,r0 ; r0 set to 0x05
	mov 0x1D,r6 ; r6 set to 0x1D
	mov.b r0,@(0x06,r4)

loc_ce32178:
	mov.l @(loc_ce321C0_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C,r3 set to 0x8C034E8C
	jmp @r3
	mov 0x15,r5

loc_ce3217E:
	mov.l @(loc_ce321C8_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
	jmp @r2
	nop

loc_ce32184:
	mov.w @(0x2a,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_ce321A2
	mov.b @(0x6,r14),r0
	mov 0x15,r5
	mov.l @(0x28,pc),r3
	mov 0x1B,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4

loc_ce321A2:
	lds.l @r15+,pr
	mov.l @(0x20,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce321AC:
	#data 0x01F9
loc_ce321AE:
	#data 0x041C
loc_ce321B0:
	#data 0x0141
loc_ce321B2:
	#data 0x0143
	#align4

loc_ce321B4_to_loc_8c05218A:
	#data loc_8c05218A
loc_ce321B8_to_loc_8c035162:
	#data loc_8c035162
loc_ce321BC_to_loc_8c05115A:
	#data loc_8c05115A
loc_ce321C0_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce321C4:
	#data loc_8c07A428
loc_ce321C8_to_loc_8c034DEE:
	#data loc_8c034DEE

;==============================================
loc_ce321CC:
	mov.w @(0xf4,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	cmp/eq 0x0E,r0
	bf loc_ce321ec
	mov.w @(0xe6,pc),r0
	mov 0x08,r7
	mov.l @(0xf0,pc),r3
	mov 0x00,r2
	mov r7,r5
	mov.b r2,@(r0,r14)
	mov 0x13,r6
	jsr @r3
	mov r14,r4

loc_ce321EC:
	mov.w @(0xd6,pc),r0
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_ce32204
	mov.b @(0x6,r14),r0
	mov 0x15,r5
	mov.l @(0xd8,pc),r3
	mov 0x1C,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4

loc_ce32204:
	lds.l @r15+,pr
	mov.l @(0xd0,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_ce3220E:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_ce322D8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce32228
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_ce322DC_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_ce32228:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_ce32230:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x31,r3 ; r3 set to 0x31
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x05,r5 ; r5 set to 0x05
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce322C8,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_ce322E0_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_ce322E4_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
	jsr @r2
	mov r14,r4
	mov 0x18,r0 ; r0 set to 0x18
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
	mov.w @(loc_ce322CA,pc),r0 ; r0 set to 0x1F9
	mov.l @(loc_ce322E8_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
	mov.b r13,@(r0,r14)
	mov.w @(loc_ce322CC,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce322EC_to_loc_8c035162,pc),r2 ; r2 set to 0x8C035162
	mov r13,r5 ; r5 set to 0x00
	jsr @r2
	mov r14,r4
	mov.l @(loc_ce322F0_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce322D4_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x0C,r6 ; r6 set to 0x0C
	mov 0x15,r5 ; r5 set to 0x15
	mov r14,r4
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r2
	mov.l @r15+,r14

loc_ce322B2:
	mov r4,r3
	mov.l @(loc_ce322F4_to_loc_ce34A18_to_loc_ce322F8,pc),r1 ; r1 set to 0xCE34A18
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce322C4:
	#data 0x0141
loc_ce322C6:
	#data 0x0143
loc_ce322C8:
	#data 0x01A1
loc_ce322CA:
	#data 0x01F9
loc_ce322CC:
	#data 0x041C
	#align4

loc_ce322D0:
	#data loc_8c07A428
loc_ce322D4_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce322D8_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce322DC_to_loc_8c051648:
	#data loc_8c051648
loc_ce322E0_to_mem_8c2896b0:
	#data mem_8c2896b0
loc_ce322E4_to_loc_8c056DE4:
	#data loc_8c056DE4
loc_ce322E8_to_loc_8c05218A:
	#data loc_8c05218A
loc_ce322EC_to_loc_8c035162:
	#data loc_8c035162
loc_ce322F0_to_loc_8c05115A:
	#data loc_8c05115A
loc_ce322F4_to_loc_ce34A18_to_loc_ce322F8:
	#data loc_ce34A18_to_loc_ce322F8

;==============================================
loc_ce322F8:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x31,r3 ; r3 set to 0x31
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x05,r5 ; r5 set to 0x05
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce32420,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_ce32428_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_ce3242C_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
	jsr @r2
	mov r14,r4
	mov 0x1E,r0 ; r0 set to 0x1E
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
	mov.w @(loc_ce32422,pc),r0 ; r0 set to 0x1F9
	mov.l @(loc_ce32430_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
	mov.b r13,@(r0,r14)
	mov.w @(loc_ce32424,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce32434_to_loc_8c035162,pc),r2 ; r2 set to 0x8C035162
	mov r13,r5 ; r5 set to 0x00
	jsr @r2
	mov r14,r4
	mov.l @(loc_ce32438_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce3243C_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x0C,r6 ; r6 set to 0x0C
	mov 0x15,r5 ; r5 set to 0x15
	mov r14,r4
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r2
	mov.l @r15+,r14

loc_ce3237A:
	mov.w @(0xa8,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce32394
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x16,r5
	mov.l @(0xb0,pc),r3
	jsr @r3
	mov r14,r4

loc_ce32394:
	mov.w @(0x1c,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1c,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_ce323B2
	mov.b @(0x6,r14),r0
	mov 0x15,r5
	mov.l @(0x94,pc),r3
	mov 0x0D,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14
	jsr @r3
	mov r14,r4

loc_ce323B2:
	lds.l @r15+,pr
	mov.l @(0x8c,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_ce323BC:
	mov.w @(0x66,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce323E2
	mov.b @(0x6,r14),r0
	mov 0x04,r7
	mov.l @(0x78,pc),r3
	mov r7,r5
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x13,r6
	jsr @r3
	mov r14,r4
	mov.w @(0x46,pc),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_ce323E2:
	lds.l @r15+,pr
	mov.l @(0x5c,pc),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_ce323EC:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_ce32444_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce32406
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_ce3244C_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_ce32406:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_ce3240E:
	mov r4,r3
	mov.l @(loc_ce32450_to_loc_ce34A28_to_loc_ce32454,pc),r1 ; r1 set to 0xCE34A28
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce32420:
	#data 0x01A1
loc_ce32422:
	#data 0x01F9
loc_ce32424:
	#data 0x041C
loc_ce32426:
	#data 0x0141
	#align4

loc_ce32428_to_mem_8c2896b0:
	#data mem_8c2896b0
loc_ce3242C_to_loc_8c056DE4:
	#data loc_8c056DE4
loc_ce32430_to_loc_8c05218A:
	#data loc_8c05218A
loc_ce32434_to_loc_8c035162:
	#data loc_8c035162
loc_ce32438_to_loc_8c05115A:
	#data loc_8c05115A
loc_ce3243C_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce32440:
	#data loc_8c04223A
loc_ce32444_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce32448:
	#data loc_8c07A428
loc_ce3244C_to_loc_8c051648:
	#data loc_8c051648
loc_ce32450_to_loc_ce34A28_to_loc_ce32454:
	#data loc_ce34A28_to_loc_ce32454

;==============================================
loc_ce32454:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x3F,r3 ; r3 set to 0x3F
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x05,r5 ; r5 set to 0x05
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce32594,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_ce325A0_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_ce325A4_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
	jsr @r2
	mov r14,r4
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_ce32596,pc),r0 ; r0 set to 0x1F9
	mov.l @(loc_ce325A8_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
	mov.b r13,@(r0,r14)
	mov.w @(loc_ce32598,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce325AC_to_loc_8c035162,pc),r2 ; r2 set to 0x8C035162
	mov r13,r5 ; r5 set to 0x00
	jsr @r2
	mov r14,r4
	mov.l @(loc_ce325B0_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce325B4_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x1E,r6 ; r6 set to 0x1E
	mov 0x15,r5 ; r5 set to 0x15
	mov r14,r4
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r2
	mov.l @r15+,r14

loc_ce324D2:
	mov.w @(0xc4,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce324F8
	mov.b @(0x6,r14),r0
	mov 0x05,r7
	mov.l @(0xd0,pc),r3
	mov r7,r5
	add 0x01,r0
	mov.b r0,@(0x6,r14
	mov 0x13,r6
	jsr @r3
	mov r14,r4
	mov.w @(0xa4,pc),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_ce324F8:
	lds.l @r15+,pr
	mov.l @(0xc0,pc),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_ce32502:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_ce325BC_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce3251C
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_ce325C0_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_ce3251C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_ce32524:
	mov r4,r3
	mov.l @(loc_ce325C4_to_loc_ce34A34_to_loc_ce32536,pc),r1 ; r1 set to 0xCE34A34
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_ce32536:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x38,r3 ; r3 set to 0x38
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce32594,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.l @(loc_ce325A0_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_ce325A8_to_loc_8c05218A,pc),r2 ; r2 set to 0x8C05218A
	jsr @r2
	mov r14,r4
	mov.l @(loc_ce325AC_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162
	mov r13,r5 ; r5 set to 0x00
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce325B4_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x16,r5 ; r5 set to 0x16
	mov.l @(loc_ce325C8_to_loc_ce345E4,pc),r12 ; r12 set to 0xCE345E4
	mov r13,r6 ; r6 set to 0x00
	jsr @r2
	mov r14,r4
	mov.w @(loc_ce3259C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???
	tst r2,r2
	bt/s loc_ce325CC
	mov 0x23,r0 ; r0 set to 0x23
	bra loc_ce325CE
	mov 0x01,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce32594:
	#data 0x01A1
loc_ce32596:
	#data 0x01F9
loc_ce32598:
	#data 0x041C
loc_ce3259a:
	#data 0x0141
loc_ce3259C:
	#data 0x0130
	#align4

loc_ce325A0_to_mem_8c2896b0:
	#data mem_8c2896b0
loc_ce325A4_to_loc_8c056DE4:
	#data loc_8c056DE4
loc_ce325A8_to_loc_8c05218A:
	#data loc_8c05218A
loc_ce325AC_to_loc_8c035162:
	#data loc_8c035162
loc_ce325B0_to_loc_8c05115A:
	#data loc_8c05115A
loc_ce325B4_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce325b8:
	#data loc_8c07A428
loc_ce325BC_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce325C0_to_loc_8c051648:
	#data loc_8c051648
loc_ce325C4_to_loc_ce34A34_to_loc_ce32536:
	#data loc_ce34A34_to_loc_ce32536
loc_ce325C8_to_loc_ce345E4:
	#data loc_ce345E4

;==============================================
loc_ce325CC:
	mov 0x02,r3 ; r3 set to 0x02

loc_ce325CE:
	mov.b r3,@(r0,r14)
	mov.w @(loc_ce326F8,pc),r0 ; r0 set to 0x130,r0 set to 0x130
	mov.w @(r0,r14),r1
	tst r1,r1
	bt loc_ce325DC
	bra loc_ce325DE
	mov 0x07,r2

loc_ce325DC:
	mov 0x0E,r2

loc_ce325DE:
	mov.w @(0x118,pc),r0
	shll2 r2
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt.s loc_ce325f2
	add r2,r12
	mov.l @(0x11c,pc),r2
	jsr @r2
	mov r14,r4

loc_ce325F2:
	mov.l @(0x11c,pc),r3
	mov 0x04,r5
	mov 0x01,r7
	mov 0x07,r6
	jsr @r3
	mov r14,r4
	fmov @r12,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r12),fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r12),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r12),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1c,r14)
	mov r13,r0
	nop
	mov.w @(0xd4,pc),r4
	mov.w r0,@(0x1e,r14)
	mov 0x21,r0
	add r14,r4
	mov.b r13,@(r0,r14)
	mov r13,r0
	nop
	mov.b r0,@(0xa,r4)
	mov.w r0,@(0xc,r4)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_ce32640:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0xb2,pc),r0
	mov r4,r14
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	mov 0x05,r2
	mov.w @(0xaa,pc),r0
	mov 0x00,r13
	mov.l @(0xbc,pc),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_ce32688
	mov.w @(0x9a,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce32688
	mov.w @(0x92,pc),r0
	mov r15,r5
	mov.l @(0xac,pc),r3
	mov 0x01,r6
	mov.b r13,@(r0,r14)
	mova @(0xa0,pc),r0
	fmov @r0,fr3
	mova @(0xa0,pc),r0
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4

loc_ce32688:
	mov.w @(0x78,pc),r0
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_ce326e8
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x60,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce326B4
	mov.w @(0x56,pc),r0
	mov 0x02,r2
	mov.b r2,@(r0,r14)
	mova @(0x7c,pc),r0
	fmov @r0,fr3
	mov.w @(0x58,pc),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_ce326B4:
	mov r13,r0
	nop
	mov.l @(0x6c,pc),r3
	mov 0x16,r5
	mov.b r0,@(0x7,r14)
	mov 0x03,r6
	jsr @r3
	mov r14,r4
	mov.w @(0x40,pc),r0
	mov 0x0A,r7
	mov r7,r5
	mov 0x13,r6
	mov.w r13,@(r0,r14)
	mov.l @(0x5c,pc),r13
	jsr @r13
	mov r14,r4
	mov 0x09,r7
	mov r7,r5
	mov 0x13,r6
	jsr @r13
	mov r14,r4
	mov 0x0B,r7
	mov r7,r5
	mov 0x13,r6
	jsr @r13
	mov r14,r4

loc_ce326E8:
	mov.l @(0x28,pc),r3
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce326F8:
	#data 0x0130
loc_ce326Fa:
	#data 0x01F9
loc_ce326Fc:
	#data 0x02A4
loc_ce326Fe:
	#data 0x03F8
loc_ce32700:
	#data 0x0328
loc_ce32702:
	#data 0x0141
loc_ce32704:
	#data 0x0143
loc_ce32706:
	#data 0x041C
loc_ce32708:
	#data 0x0352
	#align4

loc_ce3270c:
	#data loc_8c05115A
loc_ce32710:
	#data loc_8c03544C
loc_ce32714:
	#data loc_8c034DEE
loc_ce32718:
	#data 0xC1D55555
loc_ce3271c:
	#data 0x43092492
loc_ce32720:
	#data loc_8c050834
loc_ce32724:
	#data 0x41AB6DB6
loc_ce32728:
	#data loc_8c034E8C
loc_ce3272c:
	#data loc_8c07A428

;==============================================
loc_ce32730:
	mov.l @(0xb4,pc),r3
	mova @(0xb0,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	fmov @r0,fr3
	mov 0x38,r0
	fmov @r3,fr4
	fmov @(r0,r14),fr2
	fadd fr3,fr4
	fcmp/gt fr4,fr2
	bf loc_ce3274E
	fmov fr4,@(r0,r14)

loc_ce3274E:
	mova @(0x9c,pc),r0
	fmov @r0,fr3
	mov.w @(0x7e,pc),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bf.s loc_ce32770
	mov 0x02,r12
	mova @(0x8c,pc),r0
	fmov @r0,fr2
	mov.w @(0x6a,pc),r0
	fmov @(r0,r14),fr1
	mov 0x38,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r14)

loc_ce32770:
	mov.w @(0x62,pc),r0
	mov.b r12,@(r0,r14)
	mov.w @(0x60,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x02,r0
	bf.s loc_ce3278E
	mov 0x00,r13
	mov.w @(0x56,pc),r0
	mov 0x15,r7
	mov.l @(0x70,pc),r3
	mov r7,r5
	mov.b r13,@(r0,r14)
	mov 0x13,r6
	jsr @r3
	mov r14,r4

loc_ce3278E:
	mov.w @(0x48,pc),r0
	mov 0x05,r3
	mov.w @(0x48,pc),r4
	mov.b r12,@(r0,r14
	mov.w @(0x42,pc),r0
	add r14,r4
	mov.b r3,@(r0,r14)
	mov.w @(0xc,r4),r0
	add 0xFF,r0
	mov.w r0,@(0xc,r4)
	add 0x01,r0
	extu.w r0,r0
	cmp/pl r0
	bf loc_ce327AE
	bra loc_ce32952
	nop

loc_ce327AE:
	mov r13,r0
	nop
	mov.w r0,@(0xc,r4)
	mov.w @(0x28,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce32826
	mov.b @(0xa,r4),r0
	extu.b r0,r0
	cmp/ge r12,r0
	bt loc_ce32826
	mov.b @(0xa,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce327f8
	mov.w @(0x12,pc),r0
	mov 0x3A,r2
	bra loc_ce327fe
	mov.b r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce327d4:
	#data 0x041C
loc_ce327d6:
	#data 0x01F5
loc_ce327d8:
	#data 0x0141
loc_ce327da:
	#data 0x03F8
loc_ce327dc:
	#data 0x0328
loc_ce327de:
	#data 0x02A4
loc_ce327e0:
	#data 0x019E
loc_ce327e2:
	#data 0x01A1
	#align4

loc_ce327e4:
	#data 0xC2CDB6DB
loc_ce327e8:
	#data loc_8c26A5B8
loc_ce327ec:
	#data 0x40092492
loc_ce327f0:
	#data 0x41892492
loc_ce327f4:
	#data loc_8c07A428

;==============================================
loc_ce327F8:
	mov.w @(0x104,pc),r0
	mov 0x39,r3
	mov.b r3,@(r0,r14)

loc_ce327FE:
	mov.w @(0x100,pc),r0
	mov.l @(0x108,pc),r3
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
	mov.b @(0xa,r4),r0
	add 0x01,r0
	mov.b r0,@(0xa,r4)
	mov 0x04,r0
	mov.w r0,@(0xc,r4)

loc_ce32826:
	mov 0x5C,r1
	mov.l @(0xe4,pc),r3
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
	fmov fr2,@(r0,r14
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
	mov.w @(0x9c,pc),r0
	mov.l @(0xac,pc),r13
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_ce328a2
	mov.l @(0xa4,pc),r3
	mov 0x05,r0
	mov 0x00,r5
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x70,pc),r0
	mov.l @(0x88,pc),r3
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	bra loc_ce328da
	mov 0x08,r6

loc_ce328A2:
	mov.w @(0x1c,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1c,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_ce328e4
	mov.l @(0x68,pc),r3
	mov 0x04,r0
	mov 0x00,r5
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	fldi1 fr3
	mov 0x6C,r0
	fneg fr3
	fmov fr3,@(r0,r14
	mova @(0x5c,pc),r0
	fmov @r0,fr3
	mov.w @(0x3a,pc),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bf loc_ce328d8
	bra loc_ce328da
	mov 0x02,r6

loc_ce328D8:
	mov 0x11,r6

loc_ce328DA:
	mov 0x16,r5
	jsr @r13
	mov r14,r4
	bra loc_ce32952
	nop

loc_ce328E4:
	mov.w @(0x1e,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce32924
	mov.w @(0x18,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bt loc_ce32952
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_ce32bdc
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce32900:
	#data 0x01A1
loc_ce32902:
	#data 0x01AC
loc_ce32904:
	#data 0x041C
loc_ce32906:
	#data 0x0525
loc_ce32908:
	#data 0x0141
	#align4

loc_ce3290c:
	#data mem_8c2896b0
loc_ce32910:
	#data loc_8c034DEE
loc_ce32914:
	#data loc_8c034E8C
loc_ce32918:
	#data loc_8c035162
loc_ce3291c:
	#data loc_8c0511B4
loc_ce32920:
	#data 0x42855555

;==============================================
loc_ce32924:
	mov.w @(0x138,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bt loc_ce32952
	mov.w @(0x132,pc),r4
	mov r4,r0
	nop
	add 0x48,r0
	mov.w @(r0,r14),r2
	extu.w r2,r2
	tst r4,r2
	bf loc_ce32946
	mov.w @(0x124,pc),r0
	mov.w @(r0,r14),r1
	extu.w r1,r1
	tst r4,r1
	bt loc_ce32952

loc_ce32946:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_ce32b04
	mov.l @r15+,r14

loc_ce32952:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3295C:
	mov.w @(loc_ce32A66,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r5 ; r5 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov 0x05,r3 ; r3 set to 0x05
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b r5,@(r0,r14)
	mov.w @(loc_ce32A68,pc),r0 ; r0 set to 0x328
	mov.b r3,@(r0,r14)
	mov.w @(loc_ce32A6A,pc),r0 ; r0 set to 0x143
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_ce329FC
	mov.w @(loc_ce32A64,pc),r0 ; r0 set to 0x352
	mov 0x00,r4 ; r4 set to 0x00
	mov.w r4,@(r0,r14)
	mov r5,r0 ; r0 set to 0x02
	nop
	mov.w @(loc_ce32A6C,pc),r5 ; r5 set to 0x2A4
	mov.b r0,@(0x06,r14)
	add r14,r5 ; r5 ??? bc r14 is ???
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x0A,r5)
	mov 0x38,r3 ; r3 set to 0x38
	mov.w r0,@(0x0C,r5)
	mov 0x04,r5 ; r5 set to 0x04
	mov.w @(loc_ce32A6E,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_ce32A78_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_ce32A7C_to_loc_8c042008,pc),r2 ; r2 set to 0x8C042008
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(loc_ce32A80_to_loc_8c03544C,pc),r3 ; r3 set to 0x8C03544C
	mov 0x04,r5 ; r5 set to 0x04
	mov 0x01,r7 ; r7 set to 0x01
	mov 0x07,r6 ; r6 set to 0x07
	jsr @r3
	mov r14,r4
	mov 0x0A,r7 ; r7 set to 0x0A
	mov.l @(loc_ce32A84_to_loc_8c07A428,pc),r13 ; r13 set to 0x8C07A428
	mov r7,r5 ; r5 set to 0x0A
	mov 0x13,r6 ; r6 set to 0x13
	jsr @r13
	mov r14,r4
	mov 0x09,r7 ; r7 set to 0x09
	mov r7,r5 ; r5 set to 0x09
	mov 0x13,r6 ; r6 set to 0x13
	jsr @r13
	mov r14,r4
	mov 0x0B,r7 ; r7 set to 0x0B
	mov r7,r5 ; r5 set to 0x0B
	mov 0x13,r6 ; r6 set to 0x13
	jsr @r13
	mov r14,r4
	lds.l @r15+,pr
	mov.b @(0x07,r14),r0
	mov 0x16,r5 ; r5 set to 0x16
	mov.l @(loc_ce32A88_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov r14,r4
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	mov r0,r6 ; r6 set to 0x188
	add 0x03,r6 ; r6 set to 0x18B
	jmp @r3
	mov.l @r15+,r14

loc_ce329FC:
	lds.l @r15+,pr
	mov.l @(loc_ce32A8C_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_ce32A08:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_ce32A70,pc),r0 ; r0 set to 0x3F9
	mov 0x00,r4 ; r4 set to 0x00
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x3F8
	mov.b r4,@(r0,r14)
	mov.w @(loc_ce32A72,pc),r0 ; r0 set to 0x327
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x328
	mov.b r4,@(r0,r14)
	mov.w @(loc_ce32A74,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_ce32A94
	mov.b @(0x06,r14),r0
	fldi0 fr4
	add 0x01,r0 ; r0 set to 0x39
	mov.l @(loc_ce32A90_to_loc_8c0511B4,pc),r3 ; r3 set to 0x8C0511B4
	mov.b r0,@(0x06,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_ce32A74,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_ce32A88_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x08,r6 ; r6 set to 0x08
	mov 0x16,r5 ; r5 set to 0x16
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce32A60:
	#data 0x0141
loc_ce32A62:
	#data 0x0300
loc_ce32A64:
	#data 0x0352
loc_ce32A66:
	#data 0x03F8
loc_ce32A68:
	#data 0x0328
loc_ce32A6A:
	#data 0x0143
loc_ce32A6C:
	#data 0x02A4
loc_ce32A6E:
	#data 0x01A1
loc_ce32A70:
	#data 0x03F9
loc_ce32A72:
	#data 0x0327
loc_ce32A74:
	#data 0x041C
	#align4

loc_ce32A78_to_mem_8c2896b0:
	#data mem_8c2896b0
loc_ce32A7C_to_loc_8c042008:
	#data loc_8c042008
loc_ce32A80_to_loc_8c03544C:
	#data loc_8c03544C
loc_ce32A84_to_loc_8c07A428:
	#data loc_8c07A428
loc_ce32A88_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce32A8C_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce32A90_to_loc_8c0511B4:
	#data loc_8c0511B4

;==============================================
loc_ce32A94:
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_ce32BC8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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

loc_ce32AD6:
	mov.w @(loc_ce32BC0,pc),r0 ; r0 set to 0x352
	mov 0x00,r3 ; r3 set to 0x00
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w r3,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r3,@(r0,r14)
	mov r3,r2 ; r2 set to 0x00
	mov.l @(loc_ce32BC8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_ce32AFE
	lds.l @r15+,pr
	mov.l @(loc_ce32BCC_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce32AFE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce32B04:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1e,r14),r0
	mov 0x04,r3
	cmp/ge r3,r0
	bt loc_ce32bba
	mov.w @(0xac,pc),r0
	mov.l @(0xb8,pc),r4
	mov.w @(r0,r14),r5
	mov 0x23,r0
	fldi0 fr2
	extu.w r5,r5
	shlr8 r5
	shlr2 r5
	mov.b r5,@(r0,r14)
	extu.w r5,r5
	mov.b @(r0,r14),r2
	mov 0x21,r0
	mov.b r2,@(r0,r14)
	mov r5,r2
	shll2 r5
	shll r5
	sub r2,r5
	shll2 r5
	mov 0x10,r0
	add r5,r4
	fmov @(r0,r4),fr3
	fcmp/eq fr2,fr3
	bt loc_ce32bba
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14
	mov 0x1E,r0
	mov.w r0,@(0x1c,r14)
	mov.w @(0x1e,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1e,r14
	mov 0x5C,r0
	fmov @r4,fr3
	fmov fr3,@(r0,r14
	mov 0x04,r0
	fmov @(r0,r4),fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14
	mov 0x08,r0
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14
	mov 0x0C,r0
	fmov @(r0,r4),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14
	mov 0x18,r0
	fmov @(r0,r4),fr3
	ftrc fr3,fpul
	fldi0 fr3
	sts fpul,r0
	mov.b r0,@(0x7,r14)
	mov 0x14,r0
	fmov @(r0,r4),fr4
	fcmp/gt fr4,fr3
	bt loc_ce32b86
	bra loc_ce32b8e
	fmov fr4,fr3

loc_ce32B86:
	mov.w @(0x3a,pc),r0
	mov.w @(r0,r14),r2
	lds r2,fpul
	float fpul,fr3

loc_ce32B8E:
	ftrc fr3,fpul
	mov.w @(0x30,pc),r0
	mov.l @(0x40,pc),r3
	mov 0x00,r5
	sts fpul,r1
	mov.w r1,@(r0,r14
	jsr @r3
	mov r14,r4
	mov.l @(0x34,pc),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	mov 0x48,r0
	mov r14,r4
	mov 0x00,r3
	mov.l r3,@(r0,r14)
	mov 0x01,r6
	lds.l @r15+,pr
	mov.l @(0x24,pc),r3
	mov 0x16,r5
	jmp @r3
	mov.l @r15+,r14

loc_ce32BBA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce32BC0:
	#data 0x0352
loc_ce32BC2:
	#data 0x0340
loc_ce32BC4:
	#data 0x0130
	#align4

loc_ce32BC8_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce32BCC_to_loc_8c051648:
	#data loc_8c051648
loc_ce32BD0_to_loc_ce345E4:
	#data loc_ce345E4
loc_ce32BD4:
	#data loc_8c0CE62C
loc_ce32BD8:
	#data loc_8c034E8C

;==============================================
loc_ce32BDC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x16c,pc),r3
	mov r4,r14
	mov.l r3,@r15
	mov 0x04,r3
	mov.w @(0x1e,r14),r0
	cmp/ge r3,r0
	bt loc_ce32cae
	mov.w @(0x152,pc),r0
	mov r14,r4
	mov.l @(0x15c,pc),r2
	mov.l @(r0,r14),r5
	add 0x34,r5
	jsr @r2
	add 0x34,r4
	extu.b r0,r0
	mov.l @(0x154,pc),r4
	mov 0x23,r1
	shlr2 r0
	add r14,r1
	shlr r0
	mov.b r0,@r1
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov.l @r15,r0
	extu.b r3,r3
	shll2 r3
	fmov @(r0,r3),fr3
	mov 0x23,r0
	ftrc fr3,fpul
	sts fpul,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r5
	mov.b @(0x6,r14),r0
	extu.b r5,r5
	extu.w r5,r5
	add 0x01,r0
	mov r5,r3
	mov.b r0,@(0x6,r14)
	shll2 r5
	shll r5
	mov 0x1E,r0
	mov.w r0,@(0x1c,r14)
	sub r3,r5
	mov.w @(0x1e,r14),r0
	shll2 r5
	add r5,r4
	add 0x01,r0
	mov.w r0,@(0x1e,r14)
	mov 0x5C,r0
	fmov @r4,fr3
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r4),fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r4),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x18,r0
	fmov @(r0,r4),fr3
	ftrc fr3,fpul
	fldi0 fr3
	sts fpul,r0
	mov.b r0,@(0x7,r14)
	mov 0x14,r0
	fmov @(r0,r4),fr4
	fcmp/gt fr4,fr3
	bt loc_ce32c78
	bra loc_ce32c80
	fmov fr4,fr3

loc_ce32C78:
	mov.w @(0xcc,pc),r0
	mov.w @(r0,r14),r3
	lds r3,fpul
	float fpul,fr3

loc_ce32C80:
	ftrc fr3,fpul
	mov.w @(0xc2,pc),r0
	mov.l @(0xd4,pc),r3
	mov 0x00,r5
	sts fpul,r1
	mov.w r1,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xc8,pc),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	mov 0x48,r0
	mov r14,r4
	mov 0x00,r3
	mov 0x16,r5
	mov.l r3,@(r0,r14)
	mov 0x01,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xb4,pc),r3
	jmp @r3
	mov.l @r15+,r14


loc_ce32CAE:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce32CB6:
	mov r4,r3
	mov.l @(loc_ce32D64_to_loc_ce34A4C_to_loc_ce32CC8,pc),r1 ; r1 set to 0xCE34A4C
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_ce32CC8:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x3E,r3 ; r3 set to 0x3E
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x05,r5 ; r5 set to 0x05
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce32D4A,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_ce32D68_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_ce32D6C_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
	jsr @r2
	mov r14,r4
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_ce32D4C,pc),r0 ; r0 set to 0x1F9
	mov.l @(loc_ce32D70_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
	mov.b r13,@(r0,r14)
	mov.w @(loc_ce32D4E,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce32D74_to_loc_8c035162,pc),r2 ; r2 set to 0x8C035162
	mov r13,r5 ; r5 set to 0x00
	jsr @r2
	mov r14,r4
	mov.l @(loc_ce32D78_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce32D60_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x09,r6 ; r6 set to 0x09
	mov 0x16,r5 ; r5 set to 0x16
	mov r14,r4
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce32D46:
	#data 0x020C
loc_ce32D48:
	#data 0x0130
loc_ce32D4A:
	#data 0x01A1
loc_ce32D4C:
	#data 0x01F9
loc_ce32D4E:
	#data 0x041C
	#align4

loc_ce32D50_to_loc_ce347A4:
	#data loc_ce347A4
loc_ce32D54:
	#data loc_8c03362C
loc_ce32D58_to_loc_ce345E4:
	#data loc_ce345E4
loc_ce32D5c:
	#data loc_8c0CE62C
loc_ce32D60_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce32D64_to_loc_ce34A4C_to_loc_ce32CC8:
	#data loc_ce34A4C_to_loc_ce32CC8
loc_ce32D68_to_mem_8c2896b0:
	#data mem_8c2896b0
loc_ce32D6C_to_loc_8c056DE4:
	#data loc_8c056DE4
loc_ce32D70_to_loc_8c05218A:
	#data loc_8c05218A
loc_ce32D74_to_loc_8c035162:
	#data loc_8c035162
loc_ce32D78_to_loc_8c05115A:
	#data loc_8c05115A

;==============================================
loc_ce32D7C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0xbc,pc),r0
	mov r4,r14
	mov 0x02,r3
	mov.b r3,@(r0,r14
	mov 0x05,r2
	mov.w @(0xb4,pc),r0
	mov.b r2,@(r0,r14
	mov.w @(0xb2,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf.s loc_ce32dc0
	mov 0x00,r13
	mov.w @(0xa8,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce32dc0
	mov.w @(0xa0,pc),r0
	mov r15,r5
	mov.l @(0xac,pc),r3
	mov 0x01,r6
	mov.b r13,@(r0,r14)
	mova @(0xa0,pc),r0
	fmov @r0,fr3
	mova @(0xa0,pc),r0
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4

loc_ce32DC0:
	mov.w @(0x84,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x02,r0
	bf loc_ce32de2
	mov.b @(0x6,r14),r0
	mov 0x16,r5
	mov.l @(0x8c,pc),r3
	mov 0x13,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x00,r7
	mov.w @(0x70,pc),r0
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x66,pc),r0
	mov.b r13,@(r0,r14)

loc_ce32DE2:
	mov.l @(0x7c,pc),r3
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_ce32DF2:
	mov.w @(loc_ce32E44,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x05,r2 ; r2 set to 0x05
	mov.w @(loc_ce32E46,pc),r0 ; r0 set to 0x328
	mov.l @(loc_ce32E60_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_ce32E2C
	mov.w @(loc_ce32E4C,pc),r0 ; r0 set to 0x3F9
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_ce32E64_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov.b r4,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x3F8
	mov.b r4,@(r0,r14)
	mov.w @(loc_ce32E4E,pc),r0 ; r0 set to 0x327
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x328
	mov.b r4,@(r0,r14)
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_ce32E2C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce32E32:
	mov r4,r3
	mov.l @(loc_ce32E68_to_loc_ce34A58_to_loc_ce32E6C,pc),r1 ; r1 set to 0xCE34A58
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce32E44:
	#data 0x03F8
loc_ce32E46:
	#data 0x0328
loc_ce32E48:
	#data 0x0141
loc_ce32E4a:
	#data 0x01A3
loc_ce32E4C:
	#data 0x03F9
loc_ce32E4E:
	#data 0x0327
	#align4

loc_ce32E50:
	#data 0x41555555
loc_ce32E54:
	#data 0x433C9249
loc_ce32E58:
	#data loc_8c050834
loc_ce32E5c:
	#data loc_8c07A428
loc_ce32E60_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce32E64_to_loc_8c051648:
	#data loc_8c051648
loc_ce32E68_to_loc_ce34A58_to_loc_ce32E6C:
	#data loc_ce34A58_to_loc_ce32E6C

;==============================================
loc_ce32E6C:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x41,r3
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	mov r13,r5
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x11a,pc),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0x11c,pc),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x10c,pc),r2
	jsr @r2
	mov r14,r4
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	mov.l @(0xf8,pc),r3
	fmov fr4,@(r0,r14
	jsr @r3
	mov r14,r4
	mov 0x23,r0
	mov.b r13,@(r0,r14)
	mov r13,r0
	nop
	mov.w @(0xd4,pc),r4
	mov.w r0,@(0x1e,r14)
	mov 0x01,r0
	add r14,r4
	mov.b r0,@(0xe,r4)
	mov.w @(0xcc,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce32eee
	mov.w @(0xc2,pc),r0
	mov.l @(0xd8,pc),r3
	mov.b r13,@(r0,r14)
	mov.w @(0xbe,pc),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_ce32EEE:
	mov.l @(0xcc,pc),r2
	mov 0x01,r5
	mov 0x0D,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xc4,pc),r3
	mov 0x0E,r6
	mov 0x16,r5
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_ce32F08:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x94,pc),r0
	mov r4,r14
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	mov 0x05,r2
	mov.w @(0x8c,pc),r0
	mov.b r2,@(r0,r14
	mov.w @(0x8a,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce32f42
	mov.w @(0x82,pc),r0
	mov 0x00,r2
	mov.l @(0xa0,pc),r3
	mov r15,r5
	mov.b r2,@(r0,r14)
	mova @(0x94,pc),r0
	fmov @r0,fr3
	mova @(0x94,pc),r0
	mov 0x01,r6
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4

loc_ce32F42:
	mov.w @(0x64,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x02,r0
	bf loc_ce32f6a
	mov.b @(0x6,r14),r0
	mov 0x00,r3
	mov 0x10,r7
	add 0x01,r0
	mov r7,r5
	mov.b r0,@(0x6,r14)
	mov 0x13,r6
	mov.w @(0x4e,pc),r0
	mov.b r3,@(r0,r14
	mov.l @(0x70,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x3a,pc),r4
	mov 0x01,r0
	add r14,r4
	mov.b r0,@(0xe,r4)

loc_ce32F6A:
	mov.l @(0x68,pc),r3
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce32F78:
	mov.w @(loc_ce32FA6,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.w @(loc_ce32FA0,pc),r5 ; r5 set to 0x2A4
	mov 0x05,r2 ; r2 set to 0x05
	mov.b r3,@(r0,r4)
	mov.w @(loc_ce32FA8,pc),r0 ; r0 set to 0x328
	add r4,r5 ; r5 ??? bc r4 is ???
	mov.b r2,@(r0,r4)
	mov.b @(0x0E,r5),r0
	tst r0,r0
	bf loc_ce33000
	mov.w @(loc_ce32FA2,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce32FD8
	mov 0x04,r0 ; r0 set to 0x04
	bra loc_ce33000
	mov.b r0,@(0x06,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce32F9e:
	#data 0x01A1
loc_ce32FA0:
	#data 0x02A4
loc_ce32FA2:
	#data 0x01F9
loc_ce32FA4:
	#data 0x041C
loc_ce32FA6:
	#data 0x03F8
loc_ce32FA8:
	#data 0x0328
loc_ce32FAa:
	#data 0x0141
	#align4

loc_ce32Fac:
	#data mem_8c2896b0
loc_ce32Fb0:
	#data loc_8c035162
loc_ce32Fb4:
	#data loc_8c05218A
loc_ce32Fb8:
	#data loc_8c05115A
loc_ce32Fbc:
	#data loc_8c02FEC4
loc_ce32Fc0:
	#data loc_8c034E8C
loc_ce32Fc4:
	#data 0xC2200000
loc_ce32Fc8:
	#data 0x43092492
loc_ce32Fcc:
	#data loc_8c050834
loc_ce32Fd0:
	#data loc_8c07A428
loc_ce32Fd4:
	#data loc_8c034DEE

;==============================================
loc_ce32FD8:
	mov.b @(0x06,r4),r0
	mov 0x0F,r6 ; r6 set to 0x0F
	fldi0 fr4
	add 0x01,r0
	mov.l @(loc_ce33110_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b r0,@(0x06,r4)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r4)
	mova @(loc_ce3310C,pc),r0  ; r0 set to 0xCE3310C
	fmov.s @r0,fr3 ; r3 ??
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr3,@(r0,r4)
	jmp @r3
	mov 0x16,r5

loc_ce33000:
	mov.w @(loc_ce330FE,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_ce3300E
	mov.l @(loc_ce33114_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
	jmp @r2
	nop

loc_ce3300E:
	rts
	nop

;==============================================
loc_ce33012:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xe6,pc),r0
	mov 0x00,r4
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r4,@(r0,r14)
	mov.w @(0xdc,pc),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov.w @(0xd6,pc),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_ce3306a
	mov.b @(0x6,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.l @(0xd8,pc),r3
	mov.b r0,@(0x6,r14
	mov.w @(0xc2,pc),r0
	mov.b r4,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xac,pc),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xac,pc),r2
	mov 0x16,r5
	mov 0x10,r6
	jsr @r2
	mov r14,r4

loc_ce3306A:
	mov.l @(0xa8,pc),r3
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
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce330AE:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_ce33100,pc),r0 ; r0 set to 0x3F9
	mov 0x00,r4 ; r4 set to 0x00
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x3F8
	mov.b r4,@(r0,r14)
	mov.w @(loc_ce33102,pc),r0 ; r0 set to 0x327
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x328
	mov.b r4,@(r0,r14)
	mov.w @(loc_ce33108,pc),r0 ; r0 set to 0x143
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_ce330E2
	mov.l @(loc_ce3311C_to_loc_8c02FEC4,pc),r2 ; r2 set to 0x8C02FEC4
	mov 0x00,r5 ; r5 set to 0x00
	mov 0x0D,r6 ; r6 set to 0x0D
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_ce33120_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce330E2:
	lds.l @r15+,pr
	mov.l @(loc_ce33114_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_ce330EC:
	mov r4,r3
	mov.l @(loc_ce33124_to_loc_ce34A6C_to_loc_ce33128,pc),r1 ; r1 set to 0xCE34A6C
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce330FE:
	#data 0x0141
loc_ce33100:
	#data 0x03F9
loc_ce33102:
	#data 0x0327
loc_ce33104:
	#data 0x041C
loc_ce33106:
	#data 0x01F9
loc_ce33108:
	#data 0x0143
	#align4

loc_ce3310C:
	#data 0xBF4DB6DB
loc_ce33110_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce33114_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce33118:
	#data loc_8c0511B4
loc_ce3311C_to_loc_8c02FEC4:
	#data loc_8c02FEC4
loc_ce33120_to_loc_8c051648:
	#data loc_8c051648
loc_ce33124_to_loc_ce34A6C_to_loc_ce33128:
	#data loc_ce34A6C_to_loc_ce33128

;==============================================
loc_ce33128:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x41,r3
	mov.l r13,@-r15
	mov 0x00,r13
	fldi0 fr4
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x116,pc),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0x120,pc),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xe6,pc),r0
	mov.l @(0xfc,pc),r2
	mov.b r13,@(r0,r14)
	mov.w @(0xe2,pc),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	jsr @r2
	mov r14,r4
	mov.l @(0xf0,pc),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	mov.w @(0xd0,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf.s loc_ce331a0
	mov r14,r4
	mov.w @(0xc8,pc),r0
	mov 0x10,r3
	mov.w @(0xc2,pc),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)

loc_ce331A0:
	mov.l @(0xd4,pc),r3
	jsr @r3
	nop
	mov 0x23,r0
	mov.b r13,@(r0,r14)
	mov 0x21,r0
	mov.b r13,@(r0,r14)
	mov r13,r0
	nop
	mov.l @(0xc8,pc),r3
	mov r14,r4
	mov.w r0,@(0x1c,r14)
	mov 0x16,r5
	mov.w r0,@(0x1e,r14)
	mov 0x0A,r6
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_ce331C6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x92,pc),r0
	mov r4,r14
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	mov 0x05,r2
	mov.w @(0x8a,pc),r0
	mov.b r2,@(r0,r14)
	mov.w @(0x88,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce33210
	mov.w @(0x80,pc),r0
	mov 0x00,r2
	mov.l @(0xa0,pc),r3
	mov r15,r5
	mov.b r2,@(r0,r14
	mova @(0x90,pc),r0
	fmov @r0,fr3
	mova @(0x90,pc),r0
	mov 0x01,r6
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0x88,pc),r2
	mov 0x0E,r7
	mov r7,r5
	mov 0x13,r6
	jsr @r2
	mov r14,r4
	mov.w @(0x58,pc),r0
	mov.w r0,@(0x1c,r14)

loc_ce33210:
	mov.w @(0x56,pc),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt.s loc_ce33220
	mov r14,r4
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)

loc_ce33220:
	mov.l @(0x6c,pc),r3
	jsr @r3
	nop
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3322E:
	mov.w @(0x30,pc),r0
	mov 0x02,r3
	mov 0x05,r2
	mov.b r3,@(r0,r4
	mov.w @(0x2a,pc),r0
	mov.b r2,@(r0,r4
	mov.w @(0x1c,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1c,r4)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_ce33252
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov 0x78,r0
	mov.w r0,@(0x1c,r4)

loc_ce33252:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce33256:
	#data 0x01A1
loc_ce33258:
	#data 0x01F9
loc_ce3325a:
	#data 0x041C
loc_ce3325c:
	#data 0x0255
loc_ce3325e:
	#data 0x00FF
loc_ce33260:
	#data 0x03F0
loc_ce33262:
	#data 0x03F8
loc_ce33264:
	#data 0x0328
loc_ce33266:
	#data 0x0141
loc_ce33268:
	#data 0x00B4
loc_ce3326a:
	#data 0x0143
	#align4

loc_ce3326c:
	#data mem_8c2896b0
loc_ce33270:
	#data loc_8c05218A
loc_ce33274:
	#data loc_8c035162
loc_ce33278:
	#data loc_8c05115A
loc_ce3327c:
	#data loc_8c034E8C
loc_ce33280:
	#data 0xC1D55555
loc_ce33284:
	#data 0x43892492
loc_ce33288:
	#data loc_8c050834
loc_ce3328c:
	#data loc_8c07A428
loc_ce33290:
	#data loc_8c034DEE

;==============================================
loc_ce33294:
	mov.w @(loc_ce333B2,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov 0x05,r2 ; r2 set to 0x05
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x01,r5 ; r5 set to 0x01
	mov.w @(loc_ce333B4,pc),r0 ; r0 set to 0x328
	mov 0x0D,r6 ; r6 set to 0x0D
	mov.l @(loc_ce333C0_to_loc_8c02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
	mov.b r2,@(r0,r14)
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x329
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_ce333B6,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_ce332C8
	mov.l @(loc_ce333C8_to_loc_8c26A5A0,pc),r3 ; r3 set to 0x8C26A5A0
	mova @(loc_ce333C4,pc),r0  ; r0 set to 0xCE333C4
	fmov.s @r3,fr3 ; r3 ??
	bra loc_ce332D0
	fmov.s @r0,fr2

loc_ce332C8:
	mov.l @(loc_ce333D0_to_loc_8c26A5A4,pc),r2 ; r2 set to 0x8C26A5A4
	mova @(loc_ce333CC,pc),r0  ; r0 init to 0xCE333CC
	fmov.s @r0,fr2 ; r2 ??
	fmov.s @r2,fr3

loc_ce332D0:
	fadd fr2,fr3
	mov 0x34,r0 ; r0 set to 0x34,r0 set to 0x34
	mov 0x0F,r7 ; r7 set to 0x0F,r7 set to 0x0F
	mov.l @(loc_ce333D4_to_loc_8c07A428,pc),r3 ; r3 set to 0x8C07A428,r3 set to 0x8C07A428
	mov r7,r5 ; r5 set to 0x0F,r5 set to 0x0F
	mov 0x13,r6 ; r6 set to 0x13,r6 set to 0x13
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_ce333B8,pc),r0 ; r0 set to 0xB4,r0 set to 0xB4
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce333D8_to_loc_8c03319E,pc),r2 ; r2 set to 0x8C03319E,r2 set to 0x8C03319E
	jsr @r2
	nop
	mov.b r0,@(0x07,r14)
	mov 0x05,r5 ; r5 set to 0x05,r5 set to 0x05
	mov.b @(0x07,r14),r0
	mov.l @(loc_ce333DC_to_loc_8c042008,pc),r3 ; r3 set to 0x8C042008,r3 set to 0x8C042008
	and 0x01,r0
	mov.b r0,@(0x07,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce333E0_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C,r2 set to 0x8C034E8C
	mov 0x16,r5 ; r5 set to 0x16,r5 set to 0x16
	mov 0x0B,r6 ; r6 set to 0x0B,r6 set to 0x0B
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce333E4_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE,r3 set to 0x8C034DEE
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce33310:
	mov.w @(loc_ce333B2,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_ce333E8_to_loc_8c26A8E4,pc),r1 ; r1 set to 0x8C26A8E4
	mov 0x05,r2 ; r2 set to 0x05
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_ce333B4,pc),r0 ; r0 set to 0x328
	mov.b r2,@(r0,r14)
	mov.l @r1,r3 ; r3 ??
	tst r3,r3
	bt loc_ce33332
	bra loc_ce33440
	nop

loc_ce33332:
	mov.w @(loc_ce333BA,pc),r0 ; r0 set to 0x525
	mov.l @(loc_ce333D4_to_loc_8c07A428,pc),r12 ; r12 set to 0x8C07A428
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_ce33392
	mov 0x10,r13 ; r13 set to 0x10
	mov.w @(0x1C,r14),r0
	cmp/eq 0x1E,r0
	bt loc_ce33392
	mov.l @(loc_ce333D8_to_loc_8c03319E,pc),r2 ; r2 set to 0x8C03319E
	jsr @r2
	nop
	mov 0x01,r3 ; r3 set to 0x01
	mov r0,r4 ; r4 set to 0x525
	and r3,r4 ; r4 ??
	extu.b r4,r4
	tst r4,r4
	bt/s loc_ce33368
	mov 0x13,r6 ; r6 set to 0x13
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x526
	mov.b r0,@(0x06,r14)
	mov r13,r0 ; r0 set to 0x10
	nop
	mov.w r0,@(0x1C,r14)
	bra loc_ce3337C
	mov 0x0C,r7

loc_ce33368:
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.b @(0x07,r14),r0
	xor r3,r0
	mov.b r0,@(0x07,r14)
	mov r13,r0
	nop
	mov 0x0D,r7 ; r7 set to 0x0D
	mov.w r0,@(0x1C,r14)

loc_ce3337C:
	mov r7,r5 ; r5 set to 0x0D
	jsr @r12
	mov r14,r4
	mov.l @(loc_ce333EC_to_loc_8c289732,pc),r2 ; r2 set to 0x8C289732,r2 set to 0x8C289732
	mov 0x18,r1 ; r1 set to 0x18,r1 set to 0x18
	mov.w @r2,r3
	cmp/ge r1,r3
	bf loc_ce33440
	mov 0x01,r0 ; r0 set to 0x01,r0 set to 0x01
	bra loc_ce33440
	mov.b r0,@(0x07,r14)

loc_ce33392:
	mov.w @(loc_ce333BC,pc),r0 ; r0 set to 0x348
	mov.w @(loc_ce333BE,pc),r2 ; r2 set to 0x200
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_ce333F0
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x349
	mov.b r0,@(0x06,r14)
	mov r13,r0 ; r0 ??? bc r13 is ???
	nop
	mov 0x13,r6 ; r6 set to 0x13
	mov.w r0,@(0x1C,r14)
	mov 0x0C,r7 ; r7 set to 0x0C
	bra loc_ce33410
	mov r7,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce333B2:
	#data 0x03F8
loc_ce333B4:
	#data 0x0328
loc_ce333B6:
	#data 0x0130
loc_ce333B8:
	#data 0x00B4
loc_ce333BA:
	#data 0x0525
loc_ce333BC:
	#data 0x0348
loc_ce333BE:
	#data 0x0200
	#align4

loc_ce333C0_to_loc_8c02FEC4:
	#data loc_8c02FEC4
loc_ce333C4:
	#data 0x42A00000
loc_ce333C8_to_loc_8c26A5A0:
	#data loc_8c26A5A0
loc_ce333CC:
	#data 0xC2A00000
loc_ce333D0_to_loc_8c26A5A4:
	#data loc_8c26A5A4
loc_ce333D4_to_loc_8c07A428:
	#data loc_8c07A428
loc_ce333D8_to_loc_8c03319E:
	#data loc_8c03319E
loc_ce333DC_to_loc_8c042008:
	#data loc_8c042008
loc_ce333E0_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce333E4_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce333E8_to_loc_8c26A8E4:
	#data loc_8c26A8E4
loc_ce333EC_to_loc_8c289732:
	#data loc_8c289732

;==============================================
loc_ce333F0:
	mov.w @(r0,r14),r0
	extu.w r0,r0
	tst 0x40,r0
	bt loc_ce33418
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.b @(0x07,r14),r0
	xor 0x01,r0
	mov.b r0,@(0x07,r14)
	mov r13,r0
	nop
	mov 0x13,r6 ; r6 set to 0x13
	mov.w r0,@(0x1C,r14)
	mov 0x0D,r5 ; r5 set to 0x0D
	mov 0x0D,r7 ; r7 set to 0x0D

loc_ce33410:
	jsr @r12
	mov r14,r4
	bra loc_ce33440
	nop

loc_ce33418:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_ce33440
	mov 0x0C,r0 ; r0 set to 0x0C
	mov.l @(loc_ce334E8_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b r0,@(0x06,r14)
	mov 0x0A,r0 ; r0 set to 0x0A
	mov 0x0D,r6 ; r6 set to 0x0D
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov r14,r4
	mov 0x16,r5 ; r5 set to 0x16
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_ce33440:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3344A:
#data 0x9049
#data 0xE205E302
#data 0x90460434
#data 0x854E0424
#data 0x814E70FF
#data 0x600F7001
#data 0x8B042008
#data 0x70018446
#data 0xE00A8046
#data 0x814E

loc_ce3346E:
#data 0xD31F
#data 0x0009432B

#align4
loc_ce33474:
#data 0xE3029034
#data 0x0434E205
#data 0x04249031
#data 0x70FF854E
#data 0x7001814E
#data 0x2008600F
#data 0x84468B04
#data 0x80467001
#data 0x814EE00A

#align4
loc_ce33498:
#data 0x432BD314
#data 0x0009

loc_ce3349E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(loc_ce334E4,pc),r0 ; r0 set to 0x20C
	mov r4,r14
	mov 0x02,r2 ; r2 set to 0x02
	mov.l @(r0,r14),r3
	mov.w @(loc_ce334E0,pc),r0 ; r0 set to 0x3F8
	mov.l r3,@r15
	mov 0x05,r3 ; r3 set to 0x05
	mov.b r2,@(r0,r14)
	mov.w @(loc_ce334E2,pc),r0 ; r0 set to 0x328
	mov.b r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	cmp/eq 0x0A,r0
	bf loc_ce33566
	mov.b @(0x07,r14),r0
	tst r0,r0
	bt loc_ce33550
	mov 0x23,r0 ; r0 set to 0x23
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	add 0x01,r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_ce334E6,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???
	tst r2,r2
	bt loc_ce334F4
	mova @(loc_ce334F0,pc),r0  ; r0 set to 0xCE334F0
	bra loc_ce334F8
	fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce334E0:
	#data 0x03F8
loc_ce334E2:
	#data 0x0328
loc_ce334E4:
	#data 0x020C
loc_ce334E6:
	#data 0x0130
	#align4

loc_ce334E8_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce334ec:
	#data loc_8c034DEE
loc_ce334F0:
	#data 0x43C80000

;==============================================
loc_ce334F4:
	mova @(loc_ce33610,pc),r0  ; r0 init to 0xCE33610
	fmov.s @r0,fr3

loc_ce334F8:
	mov 0x04,r0 ; r0 set to 0x04,r0 set to 0x04
	mov.w @(loc_ce33608,pc),r7 ; r7 set to 0xC9,r7 set to 0xC9
	fmov.s @(r0,r15),fr2
	mov 0x04,r0 ; r0 set to 0x04,r0 set to 0x04
	mov r15,r5
	mov.l @(loc_ce33618_to_loc_8c10235C,pc),r3 ; r3 set to 0x8C10235C,r3 set to 0x8C10235C
	fadd fr3,fr2
	add 0x04,r5
	mov 0x01,r6 ; r6 set to 0x01,r6 set to 0x01
	fmov.s fr2,@(r0,r15)
	mova @(loc_ce33614,pc),r0  ; r0 set to 0xCE33614,r0 set to 0xCE33614
	fmov.s @r0,fr3 ; r3 ??,r3 ??
	mov 0x08,r0 ; r0 set to 0x08,r0 set to 0x08
	fmov.s fr3,@(r0,r15)
	mov 0x04,r0 ; r0 set to 0x04,r0 set to 0x04
	fmov.s @(r0,r15),fr3
	mov 0x34,r0 ; r0 set to 0x34,r0 set to 0x34
	fmov.s @(r0,r14),fr2
	mov 0x04,r0 ; r0 set to 0x04,r0 set to 0x04
	fadd fr3,fr2
	fmov.s fr2,@(r0,r15)
	mov 0x08,r0 ; r0 set to 0x08,r0 set to 0x08
	fmov.s @(r0,r15),fr3
	mov 0x38,r0 ; r0 set to 0x38,r0 set to 0x38
	fmov.s @(r0,r14),fr2
	mov 0x08,r0 ; r0 set to 0x08,r0 set to 0x08
	fadd fr3,fr2
	fmov.s fr2,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce3361C_to_loc_8c04223A,pc),r2 ; r2 set to 0x8C04223A,r2 set to 0x8C04223A
	mov 0x49,r5 ; r5 set to 0x49,r5 set to 0x49
	jsr @r2
	mov r14,r4
	mov 0x21,r0 ; r0 set to 0x21,r0 set to 0x21
	mov.l @(loc_ce33620_to_loc_8c05923C,pc),r3 ; r3 set to 0x8C05923C,r3 set to 0x8C05923C
	mov.b @(r0,r14),r5 ; r5 ??? bc r14 is ???,r5 ??? bc r14 is ???
	extu.b r5,r5
	shll2 r5
	neg r5,r5
	jsr @r3
	mov.l @r15,r4
	bra loc_ce33566
	nop

loc_ce33550:
	mov.l @(loc_ce33624_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x0C,r0 ; r0 set to 0x0C
	mov 0x16,r5 ; r5 set to 0x16
	mov.b r0,@(0x06,r14)
	mov 0x0D,r6 ; r6 set to 0x0D
	jsr @r3
	mov r14,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce33566:
	mov.w @(0x1C,r14),r0
	cmp/pl r0
	bt loc_ce3359E
	mov.w @(0x1E,r14),r0
	cmp/eq 0x03,r0
	bf loc_ce3357E
	mov 0x09,r0 ; r0 set to 0x09
	mov.b r0,@(0x06,r14)
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3357E:
	mov.b @(0x06,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x10,r5 ; r5 set to 0x10
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x17,r0 ; r0 set to 0x17
	mov.w r0,@(0x1C,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b r3,@(r0,r14)
	mov.l @(loc_ce33628_to_loc_8c042008,pc),r3 ; r3 set to 0x8C042008
	jsr @r3
	mov r14,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3359E:
	mov.l @(loc_ce3362C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce335B0:
	mov.w @(loc_ce3360A,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov 0x05,r2 ; r2 set to 0x05
	mov.b r3,@(r0,r4)
	mov.w @(loc_ce3360C,pc),r0 ; r0 set to 0x328
	mov.b r2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0 ; r0 set to 0x327
	mov.w r0,@(0x1C,r4)
	add 0x01,r0 ; r0 set to 0x328
	exts.w r0,r0 ; r0 ??
	tst r0,r0
	bf loc_ce335D6
	mov.b @(0x06,r4),r0
	add 0x01,r0
	mov.b r0,@(0x06,r4)
	mov 0x14,r0 ; r0 set to 0x14
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_ce335D6:
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_ce335E4
	mov.l @(loc_ce3362C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jmp @r3
	nop

loc_ce335E4:
	rts
	nop

;==============================================
loc_ce335E8:
	mov.w @(0x1e,pc),r0
	mov 0x02,r3
	mov 0x05,r2
	mov.b r3,@(r0,r4)
	mov.w @(0x18,pc),r0
	mov.b r2,@(r0,r4)
	mov.w @(0x16,pc),r0
	mov.b @(r0,r4),r3
	cmp/pz r3
	bt loc_ce33602
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)

loc_ce33602:
	mov.l @(0x28,pc),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce33608:
	#data 0x00C9
loc_ce3360A:
	#data 0x03F8
loc_ce3360C:
	#data 0x0328
loc_ce3360e:
	#data 0x0143
	#align4

loc_ce33610:
	#data 0xC3C80000
loc_ce33614:
	#data 0x43892492
loc_ce33618_to_loc_8c10235C:
	#data loc_8c10235C
loc_ce3361C_to_loc_8c04223A:
	#data loc_8c04223A
loc_ce33620_to_loc_8c05923C:
	#data loc_8c05923C
loc_ce33624_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce33628_to_loc_8c042008:
	#data loc_8c042008
loc_ce3362C_to_loc_8c034DEE:
	#data loc_8c034DEE

;==============================================
loc_ce33630:
	mov.w @(loc_ce3375A,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x05,r2 ; r2 set to 0x05
	mov.w @(loc_ce3375C,pc),r0 ; r0 set to 0x328
	mov.l @(loc_ce33768_to_loc_8c03319E,pc),r3 ; r3 set to 0x8C03319E
	jsr @r3
	mov.b r2,@(r0,r14)
	mov.b r0,@(0x07,r14)
	mov 0x02,r3 ; r3 set to 0x02
	mov.b @(0x07,r14),r0
	and 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x78,r0 ; r0 set to 0x78
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1E,r14),r0
	cmp/gt r3,r0
	bt loc_ce33686
	mov 0x04,r0 ; r0 set to 0x04
	mov.b r0,@(0x06,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0 ; r0 set to 0x05
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	cmp/eq 0x03,r0
	bf loc_ce33678
	lds.l @r15+,pr
	mov.l @(loc_ce3376C_to_loc_8c034E8C,pc),r1 ; r1 set to 0x8C034E8C
	mov r14,r4
	mov 0x0C,r6 ; r6 set to 0x0C
	mov 0x16,r5 ; r5 set to 0x16
	jmp @r1
	mov.l @r15+,r14

loc_ce33678:
	lds.l @r15+,pr
	mov.l @(loc_ce3376C_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x0B,r6 ; r6 set to 0x0B
	mov 0x16,r5 ; r5 set to 0x16
	jmp @r2
	mov.l @r15+,r14

loc_ce33686:
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce33692:
	mov.w @(loc_ce3375A,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov 0x05,r2 ; r2 set to 0x05
	mov.b r3,@(r0,r4)
	mov.w @(loc_ce3375C,pc),r0 ; r0 set to 0x328
	mov.b r2,@(r0,r4)
	mov.w @(loc_ce3375E,pc),r0 ; r0 set to 0x143
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???
	cmp/pz r3
	bt loc_ce336B8
	mov.b @(0x06,r4),r0
	mov 0x0D,r6 ; r6 set to 0x0D
	mov.l @(loc_ce3376C_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	add 0x01,r0 ; r0 set to 0x144
	mov.b r0,@(0x06,r4)
	mov 0x0A,r0 ; r0 set to 0x0A
	mov.w r0,@(0x1C,r4)
	jmp @r3
	mov 0x16,r5

loc_ce336B8:
	mov.l @(loc_ce33770_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
	jmp @r2
	nop

loc_ce336BE:
	mov.w @(0x98,pc),r0
	mov 0x02,r3
	mov 0x05,r2
	mov.b r3,@(r0,r4
	mov.w @(0x92,pc),r0
	mov.b r2,@(r0,r4
	mov.w @(0x1c,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1c,r4)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_ce336DE
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)

loc_ce336DE:
	rts
	nop

;==============================================
loc_ce336E2:
	mov.w @(loc_ce33760,pc),r0 ; r0 set to 0x141
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_ce3370E
	mov 0x00,r13 ; r13 set to 0x00
	mov.b r13,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf/s loc_ce33706
	mov r14,r4
	bra loc_ce33708
	mov 0x0F,r5

loc_ce33706:
	mov 0x0C,r5

loc_ce33708:
	mov.l @(0x68,pc),r2
	jsr @r2
	nop

loc_ce3370E:
	mov.w @(loc_ce3375E,pc),r0 ; r0 set to 0x143
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_ce3373C
	mov.w @(loc_ce33762,pc),r0 ; r0 set to 0x3F9
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_ce33778_to_loc_8c02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
	mov 0x0D,r6 ; r6 set to 0x0D
	mov.b r13,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x3F8
	mov.b r13,@(r0,r14)
	mov.w @(loc_ce33764,pc),r0 ; r0 set to 0x327
	mov.b r13,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x328
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce3377C_to_loc_8c051648,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_ce3373C:
	lds.l @r15+,pr
	mov.l @(loc_ce33770_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_ce33748:
	mov r4,r3
	mov.l @(loc_ce33780_to_loc_ce34AA4_to_loc_ce33784,pc),r1 ; r1 set to 0xCE34AA4
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3375A:
	#data 0x03F8
loc_ce3375C:
	#data 0x0328
loc_ce3375E:
	#data 0x0143
loc_ce33760:
	#data 0x0141
loc_ce33762:
	#data 0x03F9
loc_ce33764:
	#data 0x0327
	#align4

loc_ce33768_to_loc_8c03319E:
	#data loc_8c03319E
loc_ce3376C_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce33770_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce33774:
	#data loc_8c042008
loc_ce33778_to_loc_8c02FEC4:
	#data loc_8c02FEC4
loc_ce3377C_to_loc_8c051648:
	#data loc_8c051648
loc_ce33780_to_loc_ce34AA4_to_loc_ce33784:
	#data loc_ce34AA4_to_loc_ce33784

;==============================================
loc_ce33784:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x47,r3 ; r3 set to 0x47
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12 ; r12 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce3384C,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r12,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r12,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_ce33854_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r12,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_ce33858_to_loc_8c05218A,pc),r2 ; r2 set to 0x8C05218A
	jsr @r2
	mov r14,r4
	mov.l @(loc_ce3385C_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162
	mov r12,r5 ; r5 set to 0x00
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce33864_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x16,r5 ; r5 set to 0x16
	mov.l @(loc_ce33860_to_loc_ce345E4,pc),r13 ; r13 set to 0xCE345E4
	mov r12,r6 ; r6 set to 0x00
	jsr @r2
	mov r14,r4
	mov.w @(loc_ce3384E,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???
	tst r2,r2
	bt/s loc_ce337E2
	mov 0x23,r0 ; r0 set to 0x23
	bra loc_ce337E4
	mov 0x01,r3

loc_ce337E2:
	mov 0x02,r3 ; r3 set to 0x02

loc_ce337E4:
	mov.b r3,@(r0,r14)
	mov.w @(loc_ce3384E,pc),r0 ; r0 set to 0x130,r0 set to 0x130
	mov.w @(r0,r14),r1
	tst r1,r1
	bt loc_ce337F2
	bra loc_ce337F4
	mov 0x07,r2

loc_ce337F2:
	mov 0x0E,r2

loc_ce337F4:
	mov.w @(0x58,pc),r0
	shll2 r2
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt.s loc_ce33808
	add r2,r13
	mov.l @(0x64,pc),r2
	jsr @r2
	mov r14,r4

loc_ce33808:
	mov.l @(0x60,pc),r3
	mov 0x04,r5
	mov 0x01,r7
	mov 0x07,r6
	jsr @r3
	mov r14,r4
	fmov @r13,fr3
	mov 0x5C,r0
	mov.w @(0x36,pc),r4
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r13),fr3
	mov 0x68,r0
	add r14,r4
	fmov fr3,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r13),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r13),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x5A,r0
	mov.w r0,@(0x1c,r14)
	mov r12,r0
	nop
	mov.b r0,@(0xa,r4)
	mov.w r0,@(0xc,r4)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3384C:
	#data 0x01A1
loc_ce3384E:
	#data 0x0130
loc_ce33850:
	#data 0x01F9
loc_ce33852:
	#data 0x02A4
	#align4

loc_ce33854_to_mem_8c2896b0:
	#data mem_8c2896b0
loc_ce33858_to_loc_8c05218A:
	#data loc_8c05218A
loc_ce3385C_to_loc_8c035162:
	#data loc_8c035162
loc_ce33860_to_loc_ce345E4:
	#data loc_ce345E4
loc_ce33864_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce33868:
	#data loc_8c05115A
loc_ce3386c:
	#data loc_8c03544C

;==============================================
loc_ce33870:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0xa0,pc),r0
	mov r4,r14
	mov 0x05,r3
	mov.b r3,@(r0,r14)
	mov.l @(0xa4,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_ce338B2
	mov.w @(0x8e,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce338B2
	mov.w @(0x86,pc),r0
	mov 0x00,r2
	mov.l @(0x98,pc),r3
	mov r15,r5
	mov.b r2,@(r0,r14)
	mova @(0x8c,pc),r0
	fmov @r0,fr3
	mova @(0x8c,pc),r0
	mov 0x01,r6
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4

loc_ce338B2:
	mov.w @(0x6a,pc),r0
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_ce3390c
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14
	mov.w @(0x5e,pc),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce338de
	mov.w @(0x54,pc),r0
	mov 0x02,r2
	mov.b r2,@(r0,r14
	mova @(0x64,pc),r0
	fmov @r0,fr3
	mov.w @(0x4c,pc),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_ce338DE:
	mov.l @(0x5c,pc),r3
	mov 0x00,r0
	mov 0x16,r5
	mov.b r0,@(0x7,r14)
	mov 0x03,r6
	jsr @r3
	mov r14,r4
	mov 0x0A,r7
	mov.l @(0x50,pc),r13
	mov r7,r5
	mov 0x13,r6
	jsr @r13
	mov r14,r4
	mov 0x09,r7
	mov r7,r5
	mov 0x13,r6
	jsr @r13
	mov r14,r4
	mov 0x0B,r7
	mov r7,r5
	mov 0x13,r6
	jsr @r13
	mov r14,r4

loc_ce3390C:
	mov.l @(0x18,pc),r2
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3391c:
	#data 0x0328
loc_ce3391e:
	#data 0x0141
loc_ce33920:
	#data 0x0143
loc_ce33922:
	#data 0x01F9
loc_ce33924:
	#data 0x041C
	#align4

loc_ce33928:
	#data loc_8c034DEE
loc_ce3392c:
	#data 0xC1D55555
loc_ce33930:
	#data 0x43092492
loc_ce33934:
	#data loc_8c050834
loc_ce33938:
	#data 0x41AB6DB6
loc_ce3393c:
	#data loc_8c034E8C
loc_ce33940:
	#data loc_8c07A428

;==============================================
loc_ce33944:
	mov.w @(0x13e,pc),r0
	mov 0x05,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x148,pc),r2
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mova @(0x13c,pc),r0
	fmov @r2,fr4
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fadd fr3,fr4
	fcmp/gt fr4,fr2
	bf loc_ce33966
	fmov fr4,@(r0,r14)

loc_ce33966:
	mova @(0x134,pc),r0
	fmov @r0,fr3
	mov.w @(0x11a,pc),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bf.s loc_ce33988
	mov 0x00,r13
	mova @(0x124,pc),r0
	fmov @r0,fr2
	mov.w @(0x106,pc),r0
	fmov @(r0,r14),fr1
	mov 0x38,r0
	fadd fr2,fr1
	fmov fr1,@(r0,r14)

loc_ce33988:
	mov.w @(0xfe,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x02,r0
	bf loc_ce339a0
	mov.w @(0xf6,pc),r0
	mov 0x15,r7
	mov.l @(0x10c,pc),r3
	mov r7,r5
	mov.b r13,@(r0,r14)
	mov 0x13,r6
	jsr @r3
	mov r14,r4

loc_ce339A0:
	mov.w @(0xe8,pc),r4
	add r14,r4
	mov.w @(0xc,r4),r0
	add 0xFF,r0
	mov.w r0,@(0xc,r4)
	add 0x01,r0
	extu.w r0,r0
	cmp/pl r0
	bf loc_ce339b6
	bra loc_ce33abc
	nop

loc_ce339B6:
	mov r13,r0
	nop
	mov.w r0,@(0xc,r4)
	mov.w @(0xce,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce339fc
	mov.b @(0xa,r4),r0
	mov 0x09,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_ce339fc
	mov.w @(0xbe,pc),r0
	mov 0x47,r1
	mov.l @(0xd4,pc),r2
	mov.b r1,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r2,r1
	extu.b r0,r0
	shll r0
	add 0x7C,r1
	mov.w @(r0,r1),r3
	add 0x01,r3
	mov.w r3,@(r0,r1)
	mov.b @(0xa,r4),r0
	add 0x01,r0
	mov.b r0,@(0xa,r4)
	mov 0x04,r0
	mov.w r0,@(0xc,r4)

loc_ce339FC:
	mov 0x5C,r1
	mov.l @(0xac,pc),r3
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
	mov.w @(0x1c,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1c,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_ce33abc
	mov.w @(0x48,pc),r0
	mov 0x02,r2
	mov.l @(0x64,pc),r3
	mov 0x00,r5
	mov.b r2,@(r0,r14)
	mov 0x04,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	fldi1 fr3
	mov 0x6C,r0
	fneg fr3
	fmov fr3,@(r0,r14)
	mova @(0x50,pc),r0
	fmov @r0,fr3
	mov.w @(0x20,pc),r0
	fmov @(r0,r14),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bf.s loc_ce33a78
	mov 0x16,r5
	bra loc_ce33a7a
	mov 0x02,r6

loc_ce33A78:
	mov 0x11,r6

loc_ce33A7A:
	lds.l @r15+,pr
	mov.l @(0x38,pc),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce33A86:
	#data 0x0328
loc_ce33A88:
	#data 0x041C
loc_ce33A8a:
	#data 0x0141
loc_ce33A8c:
	#data 0x02A4
loc_ce33A8e:
	#data 0x019E
loc_ce33A90:
	#data 0x01A1
loc_ce33A92:
	#data 0x01F5
	#align4

loc_ce33A94:
	#data 0xC2CDB6DB
loc_ce33A98:
	#data loc_8c26A5B8
loc_ce33A9c:
	#data 0x40092492
loc_ce33AA0:
	#data 0x41892492
loc_ce33AA4:
	#data loc_8c07A428
loc_ce33AA8:
	#data mem_8c2896b0
loc_ce33AAc:
	#data loc_8c034DEE
loc_ce33AB0:
	#data loc_8c035162
loc_ce33AB4:
	#data 0x42855555
loc_ce33AB8:
	#data loc_8c034E8C

;==============================================
loc_ce33ABC:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_ce33AC4:
	rts
	nop

;==============================================
loc_ce33AC8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_ce33C10,pc),r0 ; r0 set to 0x3F9
	mov 0x00,r4 ; r4 set to 0x00
	sts.l pr,@-r15
	mov.b r4,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x3F8
	mov.b r4,@(r0,r14)
	mov.w @(loc_ce33C12,pc),r0 ; r0 set to 0x327
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x328
	mov.b r4,@(r0,r14)
	mov.w @(loc_ce33C14,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_ce33B20
	mov.b @(0x06,r14),r0
	fldi0 fr4
	add 0x01,r0 ; r0 set to 0x39
	mov.l @(loc_ce33C18_to_loc_8c0511B4,pc),r3 ; r3 set to 0x8C0511B4
	mov.b r0,@(0x06,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_ce33C14,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr
	mov.l @(loc_ce33C1C_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x08,r6 ; r6 set to 0x08
	mov 0x16,r5 ; r5 set to 0x16
	jmp @r2
	mov.l @r15+,r14

loc_ce33B20:
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_ce33C20_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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

loc_ce33B62:
	mov.l r14,@-r15
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x48,r0 ; r0 set to 0x48
	mov r4,r14
	sts.l pr,@-r15
	mov.l r3,@(r0,r14)
	mov.l @(loc_ce33C20_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_ce33B84
	lds.l @r15+,pr
	mov.l @(loc_ce33C24_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce33B84:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce33B8A:
	mov r4,r3
	mov.l @(loc_ce33C28_to_loc_ce34ABC_to_loc_ce33B9C,pc),r1 ; r1 set to 0xCE34ABC
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_ce33B9C:
	mov.l r14,@-r15
	mov r4,r14
	fldi0 fr4
	mov 0x00,r3 ; r3 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
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
	mov.w @(loc_ce33C16,pc),r0 ; r0 set to 0x1F9
	mov.b r3,@(r0,r14)
	mov.w @(loc_ce33C14,pc),r0 ; r0 set to 0x41C
	mov.l @(loc_ce33C2C_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_ce33C1C_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x1F,r6 ; r6 set to 0x1F
	mov 0x15,r5 ; r5 set to 0x15
	jmp @r2
	mov.l @r15+,r14

loc_ce33BDC:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_ce33C20_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce33BF6
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_ce33C24_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_ce33BF6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_ce33BFE:
	mov r4,r3
	mov.l @(loc_ce33C30_to_loc_ce34AC4_to_loc_ce33C34,pc),r1 ; r1 set to 0xCE34AC4
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce33C10:
	#data 0x03F9
loc_ce33C12:
	#data 0x0327
loc_ce33C14:
	#data 0x041C
loc_ce33C16:
	#data 0x01F9
	#align4

loc_ce33C18_to_loc_8c0511B4:
	#data loc_8c0511B4
loc_ce33C1C_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce33C20_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce33C24_to_loc_8c051648:
	#data loc_8c051648
loc_ce33C28_to_loc_ce34ABC_to_loc_ce33B9C:
	#data loc_ce34ABC_to_loc_ce33B9C
loc_ce33C2C_to_loc_8c05218A:
	#data loc_8c05218A
loc_ce33C30_to_loc_ce34AC4_to_loc_ce33C34:
	#data loc_ce34AC4_to_loc_ce33C34

;==============================================
loc_ce33C34:
	mov.l r14,@-r15
	mov r4,r14
	fldi0 fr4
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(loc_ce33D88_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
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
	mov.w @(loc_ce33D7E,pc),r0 ; r0 set to 0x1F9
	mov.b r13,@(r0,r14)
	mov.w @(loc_ce33D80,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_ce33D8C_to_loc_8c05115A,pc),r2 ; r2 set to 0x8C05115A
	jsr @r2
	mov r14,r4
	mov.w @(loc_ce33D82,pc),r0 ; r0 set to 0x1A1
	mov 0x14,r3 ; r3 set to 0x14
	mov 0x02,r6 ; r6 set to 0x02
	mov r14,r4
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_ce33D90_to_mem_8c2896b0,pc),r3 ; r3 set to 0x8C2896B0
	mov 0x14,r5 ; r5 set to 0x14
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.l @(loc_ce33D94_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r2
	mov.l @r15+,r14

loc_ce33CA2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_ce33D98_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce33CC2
	mov.l @(loc_ce33D9C_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce33CC2:
	mov.w @(0xbe,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce33ce6
	mov.w @(0xb6,pc),r0
	mov 0x00,r2
	mov.l @(0xd8,pc),r3
	mov r15,r5
	mov.b r2,@(r0,r14)
	mova @(0xc8,pc),r0
	fmov @r0,fr3
	mova @(0xc8,pc),r0
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4

loc_ce33CE6:
	mov.w @(0x9a,pc),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x02,r0
	bf loc_ce33cfc
	mov.w @(0x92,pc),r0
	mov 0x00,r2
	mov.l @(0xb8,pc),r3
	mov 0x1A,r5
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_ce33CFC:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce33D04:
	mov r4,r3
	mov.l @(loc_ce33DB0_to_loc_ce34ACC_to_loc_ce33D16,pc),r1 ; r1 set to 0xCE34ACC
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_ce33D16:
	mov.b @(0x6,r4),r0
	mov 0x02,r3
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(0x5c,pc),r0
	mov.b r3,@(r0,r4
	mova @(0x90,pc),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x58,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_ce33D3A
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_ce33D3A:
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mova @(0x74,pc),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x13,r3
	fmov fr3,@(r0,r4)
	mova @(0x70,pc),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov 0x00,r5
	fmov fr3,@(r0,r4)
	mov r5,r6
	mov.w @(0x28,pc),r0
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l @(0x28,pc),r3
	mov.l r5,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x18,pc),r2
	jmp @r2
	mov 0x14,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce33D7E:
	#data 0x01F9
loc_ce33D80:
	#data 0x041C
loc_ce33D82:
	#data 0x01A1
loc_ce33D84:
	#data 0x0141
loc_ce33D86:
	#data 0x01D2
	#align4

loc_ce33D88_to_loc_8c05218A:
	#data loc_8c05218A
loc_ce33D8C_to_loc_8c05115A:
	#data loc_8c05115A
loc_ce33D90_to_mem_8c2896b0:
	#data mem_8c2896b0
loc_ce33D94_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce33D98_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce33D9C_to_loc_8c051648:
	#data loc_8c051648
loc_ce33Da0:
	#data 0x42555555
loc_ce33Da4:
	#data 0x43092492
loc_ce33Da8:
	#data loc_8c050EA4
loc_ce33Dac:
	#data loc_8c04223A
loc_ce33DB0_to_loc_ce34ACC_to_loc_ce33D16:
	#data loc_ce34ACC_to_loc_ce33D16
loc_ce33DB4:
	#data 0x41F00000
loc_ce33DB8:
	#data 0x40892492
loc_ce33DBc:
	#data 0xBF4DB6DB

;==============================================
loc_ce33DC0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_ce33ED8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(loc_ce33EDC_to_loc_8c052CE2,pc),r3 ; r3 set to 0x8C052CE2
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
	bt loc_ce33E34
	mov.b @(0x06,r14),r0
	mov r14,r4
	fldi0 fr4
	mov 0x01,r6 ; r6 set to 0x01
	add 0x01,r0 ; r0 set to 0x61
	mov.l @(loc_ce33EE0_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b r0,@(0x06,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14)
	mov 0x14,r5 ; r5 set to 0x14
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_ce33E34:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce33E3A:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_ce33ED8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce33E54
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_ce33EE4_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_ce33E54:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_ce33E5C:
	add 0xFC,r15
	mov.l r4,@r15
	mov r4,r0
	nop
	mov.w @(loc_ce33ECC,pc),r1 ; r1 set to 0x1F9
	mov.l @(loc_ce33EE8_to_loc_ce34AD8_to_loc_ce33E74,pc),r2 ; r2 set to 0xCE34AD8
	mov.b @(r0,r1),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r2),r0
	jmp @r0
	add 0x04,r15

loc_ce33E74:
	mov.w @(loc_ce33ECE,pc),r0 ; r0 set to 0x1FA
	mov 0xF6,r1 ; r1 set to 0xFFFFFFF6
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_ce33ED0,pc),r2 ; r2 set to 0xC00
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	mov 0x22,r0 ; r0 set to 0x22
	extu.w r3,r3
	and r2,r3
	shad r1,r3
	mov.b r3,@(r0,r14)
	extu.b r3,r3
	tst r3,r3
	bt loc_ce33EC0
	mov.w @(loc_ce33ED2,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce33EC0
	mov.w @(loc_ce33ED4,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce33EC0
	mov.l @(loc_ce33EEC_to_loc_8c045790,pc),r2 ; r2 set to 0x8C045790
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt/s loc_ce33EC0
	mov r0,r4
	mov.w @(loc_ce33ED6,pc),r0 ; r0 set to 0x1F7
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r14)
	mov r4,r0 ; r0 ??? bc r4 is ???
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce33EC0:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce33EC8:
	rts
	mov 0x00,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce33ECC:
	#data 0x01F9
loc_ce33ECE:
	#data 0x01FA
loc_ce33ED0:
	#data 0x0C00
loc_ce33ED2:
	#data 0x01FE
loc_ce33ED4:
	#data 0x01A3
loc_ce33ED6:
	#data 0x01F7
	#align4

loc_ce33ED8_to_loc_8c034DEE:
	#data loc_8c034DEE
loc_ce33EDC_to_loc_8c052CE2:
	#data loc_8c052CE2
loc_ce33EE0_to_loc_8c034E8C:
	#data loc_8c034E8C
loc_ce33EE4_to_loc_8c051648:
	#data loc_8c051648
loc_ce33EE8_to_loc_ce34AD8_to_loc_ce33E74:
	#data loc_ce34AD8_to_loc_ce33E74
loc_ce33EEC_to_loc_8c045790:
	#data loc_8c045790

;==============================================
loc_ce33EF0:
	mov.w @(loc_ce33FC8,pc),r0 ; r0 set to 0x1FA
	mov 0xF6,r1 ; r1 set to 0xFFFFFFF6
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_ce33FCA,pc),r2 ; r2 set to 0x1C00
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	mov 0x22,r0 ; r0 set to 0x22
	extu.w r3,r3
	and r2,r3
	shad r1,r3
	mov.b r3,@(r0,r14)
	extu.b r3,r3
	tst r3,r3
	bt loc_ce33F48
	mov.w @(loc_ce33FCC,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce33F48
	mov.w @(loc_ce33FCE,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_ce33F48
	mova @(loc_ce33FDC,pc),r0  ; r0 set to 0xCE33FDC
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fcmp/gt fr3,fr2
	bf loc_ce33F48
	mov.l @(loc_ce33FE0_to_loc_8c045790,pc),r2 ; r2 set to 0x8C045790
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt/s loc_ce33F48
	mov r0,r4 ; r4 set to 0x38
	mov.w @(loc_ce33FD0,pc),r0 ; r0 set to 0x1F7
	mov 0x01,r2 ; r2 set to 0x01
	mov.b r2,@(r0,r14)
	mov r4,r0 ; r0 set to 0x38
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce33F48:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce33F50:
	mov.l r4,@-r15
	mov r4,r0
	nop
	mov.w @(loc_ce33FD0,pc),r1 ; r1 set to 0x1F7
	mov.l @(loc_ce33FE4_to_loc_ce34AE8_to_loc_ce33F68,pc),r2 ; r2 set to 0xCE34AE8
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0x3F,r0
	shll2 r0
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_ce33F68:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x56,pc),r0
	mov r4,r14
	mov.w @(0x5c,pc),r2
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt.s loc_ce33f96
	mov 0x0A,r3
	mov.w @(0x52,pc),r0
	mov.w @(0x50,pc),r1
	mov.b @(r0,r14),r0
	add r14,r1
	xor 0x01,r0
	mov.b r0,@r1
	mov.w @(0x48,pc),r0
	mov.w @(0x46,pc),r1
	mov.w @(r0,r14),r0
	add r14,r1
	xor 0x01,r0
	mov.w r0,@r1

loc_ce33F96:
	mov.w @(0x3e,pc),r0
	mov r15,r5
	mov.b r3,@(r0,r14)
	mova @(0x48,pc),r0
	fmov @r0,fr3
	mova @(0x48,pc),r0
	mov.l @(0x4c,pc),r3
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0x40,pc),r2
	jsr @r2
	mov r14,r4
	mov.l @(0x40,pc),r3
	mov 0x0F,r5
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce33FC8:
	#data 0x01FA
loc_ce33FCA:
	#data 0x1C00
loc_ce33FCC:
	#data 0x01FE
loc_ce33FCE:
	#data 0x01A3
loc_ce33FD0:
	#data 0x01F7
loc_ce33FD2:
	#data 0x0400
loc_ce33FD4:
	#data 0x01D2
loc_ce33FD6:
	#data 0x0130
loc_ce33FD8:
	#data 0x01A0
	#align4

loc_ce33FDC:
	#data 0x43092492
loc_ce33FE0_to_loc_8c045790:
	#data loc_8c045790
loc_ce33FE4_to_loc_ce34AE8_to_loc_ce33F68:
	#data loc_ce34AE8_to_loc_ce33F68
loc_ce33Fe8:
	#data 0xC2A6AAAA
loc_ce33Fec:
	#data 0x431E9249
loc_ce33Ff0:
	#data loc_8c103660
loc_ce33Ff4:
	#data loc_8c056F2A
loc_ce33Ff8:
	#data loc_8c034E8C

;==============================================
loc_ce33FFC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x12e,pc),r0
	mov r4,r14
	mov.w @(0x12c,pc),r2
	mov.w @(r0,r14),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_ce34028
	mov.w @(0x124,pc),r0
	mov.w @(0x122,pc),r1
	mov.b @(r0,r14),r0
	add r14,r1
	xor 0x01,r0
	mov.b r0,@r1
	mov.w @(0x11a,pc),r0
	mov.w @(0x118,pc),r1
	mov.w @(r0,r14),r0
	add r14,r1
	xor 0x01,r0
	mov.w r0,@r1

loc_ce34028:
	mova @(0x118,pc),r0
	mov.l @(0x120,pc),r3
	fmov @r0,fr3
	mova @(0x118,pc),r0
	mov r15,r5
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.w @(0xfa,pc),r0
	mov 0x0A,r2
	fldi0 fr4
	mov.b r2,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fldi1 fr3
	fadd fr3,fr3
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	mov.l @(0xfc,pc),r3
	fdiv fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0xf0,pc),r0
	fmov @r0,fr2
	mov 0x6C,r0
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xec,pc),r2
	mov 0x0F,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce3407A:
	mov.w @(loc_ce3413E,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	add 0x0D,r0 ; r0 set to 0x1F7
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov r14,r4
	mov.l @(loc_ce3415C_to_loc_ce34AF0_to_loc_ce34098,pc),r1 ; r1 set to 0xCE34AF0
	extu.b r0,r0
	and 0x3F,r0
	shll2 r0
	mov.l @(r0,r1),r3 ; r3 ??
	jmp @r3
	mov.l @r15+,r14

loc_ce34098:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x9e,pc),r0
	mov r4,r14
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce34108
	mova @(0xb4,pc),r0
	mov.l @(0xbc,pc),r3
	fmov @r0,fr3
	mova @(0xb4,pc),r0
	mov r15,r5
	mov 0x02,r6
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0xa8,pc),r2
	mov 0x02,r5
	jsr @r2
	mov r14,r4
	mov.w @(0x74,pc),r0
	mov 0x00,r3
	mov.w @(0x6a,pc),r1
	mov 0x20,r2
	mov.b r3,@(r0,r14)
	mov 0x00,r6
	mov.w @(0x6a,pc),r0
	mov r6,r5
	mov.l @(r0,r14),r4
	add 0xEC,r0
	mov.l r14,@(r0,r4)
	add r4,r1
	mov.w @(0x56,pc),r0
	mov.b @(r0,r14),r3
	mov.w @(0x50,pc),r0
	mov.b r3,@(r0,r14)
	mov.b @(r0,r14),r0
	extu.b r0,r0
	xor 0x01,r0
	mov.w r0,@r1
	mov.w @(0x46,pc),r0
	mov.b @(r0,r4),r3
	mov.w @(0x40,pc),r0
	mov.b r3,@(r0,r4)
	add 0xCF,r0
	mov.b r2,@(r0,r4)
	add 0x55,r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.l @(0x6c,pc),r3
	jsr @r3
	mov r14,r4

loc_ce34108:
	mov.l @(0x68,pc),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce3411A
	mov.l @(0x60,pc),r2
	jsr @r2
	mov r14,r4

loc_ce3411A:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce34122:
	mov r4,r3
	mov.l @(loc_ce3417C_to_loc_ce34AF8_to_loc_ce34180,pc),r1 ; r1 set to 0xCE34AF8
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34134:
	#data 0x01FA
loc_ce34136:
	#data 0x0400
loc_ce34138:
	#data 0x01D2
loc_ce3413a:
	#data 0x0130
loc_ce3413c:
	#data 0x01A0
loc_ce3413E:
	#data 0x01EA
loc_ce34140:
	#data 0x0141
loc_ce34142:
	#data 0x01C8
	#align4

loc_ce34144:
	#data 0xC2A6AAAA
loc_ce34148:
	#data 0x431E9249
loc_ce3414c:
	#data loc_8c103660
loc_ce34150:
	#data 0xBF4DB6DB
loc_ce34154:
	#data loc_8c056F2A
loc_ce34158:
	#data loc_8c034E8C

loc_ce3415C_to_loc_ce34AF0_to_loc_ce34098:
	#data loc_ce34AF0_to_loc_ce34098
loc_ce34160:
	#data 0xC3200000
loc_ce34164:
	#data 0x431A4924
loc_ce34168:
	#data loc_8c0FDAB6
loc_ce3416c:
	#data loc_8c04223A
loc_ce34170:
	#data loc_8c02FEC4
loc_ce34174:
	#data loc_8c034DEE
loc_ce34178:
	#data loc_8c051648
loc_ce3417C_to_loc_ce34AF8_to_loc_ce34180:
	#data loc_ce34AF8_to_loc_ce34180

;==============================================
loc_ce34180:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x100,pc),r0
	mov r4,r14
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_ce341DA
	mova @(0x100,pc),r0
	mov.l @(0x108,pc),r3
	fmov @r0,fr3
	mova @(0x100,pc),r0
	mov r15,r5
	mov 0x02,r6
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0xf4,pc),r2
	mov 0x02,r5
	jsr @r2
	mov r14,r4
	mov.w @(0xd6,pc),r0
	mov 0x00,r3
	mov 0x21,r2
	mov.b r3,@(r0,r14)
	mov 0x00,r6
	mov.w @(0xce,pc),r0
	mov r6,r5
	mov.l @(r0,r14),r4
	add 0xEC,r0
	mov.l r14,@(r0,r4)
	add 0x1E,r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	add 0xCF,r0
	mov.b r2,@(r0,r4)
	add 0x55,r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mov.l @(0xcc,pc),r3
	jsr @r3
	mov r14,r4

loc_ce341DA:
	mov.l @(0xcc,pc),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce341EC
	mov.l @(0xc4,pc),r2
	jsr @r2
	mov r14,r4

loc_ce341EC:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_ce341F4:
	mov.l r4,@-r15
	mov r4,r0
	nop
	mov.w @(loc_ce3428E,pc),r1 ; r1 set to 0x1F7
	mov.l @(loc_ce342B0_to_loc_ce34AFC_to_loc_ce3420C,pc),r2 ; r2 set to 0xCE34AFC
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0x3F,r0
	shll2 r0
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_ce3420C:
	mov.w @(loc_ce3428C,pc),r0 ; r0 set to 0x1C8
	mov r4,r5
	mov.l r4,@-r15
	mov.l @(loc_ce342B4_to_loc_8c04CC1C,pc),r3 ; r3 set to 0x8C04CC1C
	mov.l @(r0,r4),r4
	jmp @r3
	add 0x04,r15

loc_ce3421A:
	rts
	nop

;==============================================
Rby_TmHypMn:
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_ce34290,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ;Get Assist Type
	cmp/eq 0x00,r0
	bt Rby_MainTeamHypA
	cmp/eq 0x01,r0
	bt Rby_MainTeamHypB
	cmp/eq 0x02,r0
	bt Rby_MainTeamHypC
	bra loc_ce34254
	nop

Rby_MainTeamHypA:
	mov.w @(loc_ce34292,pc),r0 ; r0 set to 0x1E9
	mov 0x05,r3 ; r3 set to 0x05
	bra loc_ce34254
	mov.b r3,@(r0,r4)

Rby_MainTeamHypB:
	mov.w @(loc_ce34292,pc),r0 ; r0 set to 0x1E9
	mov 0x04,r1 ; r1 set to 0x04
	bra loc_ce34254
	mov.b r1,@(r0,r4)

Rby_MainTeamHypC:
	mov.w @(0x40,pc),r0
	mov 0x0C,r2
	mov.b r2,@(r0,r4)

loc_ce34254:
	mov.l @(loc_ce342B8_to_loc_8c0530D8,pc),r2 ; r2 set to 0x8C0530D8
	jmp @r2
	mov 0x1D,r5

;==============================================
Rby_TmHypAs:
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_ce34290,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt loc_ce3427A
	cmp/eq 0x01,r0
	bt loc_ce34282
	cmp/eq 0x02,r0
	bt loc_ce342BC
	bra loc_ce342C2
	nop

loc_ce3427A:
	mov.w @(loc_ce34292,pc),r0 ; r0 set to 0x1E9
	mov 0x05,r3 ; r3 set to 0x05
	bra loc_ce342C2
	mov.b r3,@(r0,r4)

loc_ce34282:
	mov.w @(loc_ce34292,pc),r0 ; r0 set to 0x1E9
	mov 0x04,r1 ; r1 set to 0x04
	bra loc_ce342C2
	mov.b r1,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3428a:
	#data 0x0141
loc_ce3428C:
	#data 0x01C8
loc_ce3428E:
	#data 0x01F7
loc_ce34290:
	#data 0x04C9
loc_ce34292:
	#data 0x01E9
	#align4

loc_ce34294:
	#data 0xC2D55555
loc_ce34298:
	#data 0x42CDB6DB
loc_ce3429c:
	#data loc_8c0FDAB6
loc_ce342a0:
	#data loc_8c04223A
loc_ce342a4:
	#data loc_8c02FEC4
loc_ce342a8:
	#data loc_8c034DEE
loc_ce342ac:
	#data loc_8c05176E
loc_ce342B0_to_loc_ce34AFC_to_loc_ce3420C:
	#data loc_ce34AFC_to_loc_ce3420C
loc_ce342B4_to_loc_8c04CC1C:
	#data loc_8c04CC1C
loc_ce342B8_to_loc_8c0530D8:
	#data loc_8c0530D8


;==============================================
loc_ce342BC:
	mov.w @(0x8a,pc),r0
	mov 0x0C,r2
	mov.b r2,@(r0,r4)

loc_ce342C2:
	mov.l @(loc_ce34350_to_loc_8c0530D8,pc),r2 ; r2 set to 0x8C0530D8
	jmp @r2
	mov 0x1D,r5

;==============================================
Rby_Assists:
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_ce3434C,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt loc_ce342E8
	cmp/eq 0x01,r0
	bt loc_ce342F0
	cmp/eq 0x02,r0
	bt loc_ce342FC
	bra loc_ce34308
	nop

loc_ce342E8:
	mov.w @(loc_ce3434A,pc),r0 ; r0 set to 0x1E9
	mov 0x02,r3 ; r3 set to 0x02
	bra loc_ce342F6
	mov.b r3,@(r0,r4)

loc_ce342F0:
	mov.w @(loc_ce3434A,pc),r0
	mov 0x07,r2
	mov.b r2,@(r0,r4)

loc_ce342F6:
	mov.w @(loc_ce3434E,pc),r0 ; r0 set to 0x1A3
	bra loc_ce34308
	mov.b r5,@(r0,r4)

loc_ce342FC:
	mov.w @(loc_ce3434A,pc),r0
	mov 0x08,r2
	mov 0x01,r3
	mov.b r2,@(r0,r4)
	add 0xBA,r0
	mov.b r3,@(r0,r4)

loc_ce34308:
	mov.l @(loc_ce34350_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
	jmp @r3
	mov 0x15,r5

;==============================================
Rby_AlpCntr:
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_ce3434C,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt/s loc_ce3433C
	mov 0x02,r6 ; r6 set to 0x02
	cmp/eq 0x01,r0
	bt loc_ce34330
	cmp/eq 0x02,r0
	bt loc_ce3433C
	bra loc_ce34344
	nop

loc_ce34330:
	mov.w @(loc_ce3434A,pc),r0 ; r0 set to 0x1E9
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r5,@(r0,r4)
	add 0xBA,r0 ; r0 set to 0x1A3
	bra loc_ce34344
	mov.b r3,@(r0,r4)

loc_ce3433C:
	mov.w @(loc_ce3434A,pc),r0 ; r0 set to 0x1E9
	mov.b r6,@(r0,r4)
	add 0xBA,r0 ; r0 set to 0x1A3
	mov.b r5,@(r0,r4)

loc_ce34344:
	mov.l @(loc_ce34350_to_loc_8c0530D8,pc),r2 ; r2 set to 0x8C0530D8,r2 set to 0x8C0530D8
	jmp @r2
	mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3434A:
	#data 0x01E9
loc_ce3434C:
	#data 0x04C9
loc_ce3434E:
	#data 0x01A3
	#align4

loc_ce34350_to_loc_8c0530D8:
	#data loc_8c0530D8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
Stn_LPChain:
	#data 0x01 0x02 0x00 0x02
Stn_MPChain:
	#data 0xff 0x02 0x01 0x02
Stn_HPChain:
	#data 0xff 0xff 0xff 0x02
Stn_LKChain:
	#data 0x01 0x02 0x01 0x02
Stn_MKChain:
	#data 0xff 0x02 0xff 0x02
Stn_HKChain:
	#data 0xff 0xff 0xff 0xff

Crc_LPChain:
	#data 0x01 0x02 0x00 0x02
Crc_MPChain:
	#data 0xff 0x02 0x01 0x02
Crc_HPChain:
	#data 0xff 0xff 0xff 0x02
Crc_LKChain:
	#data 0x01 0x02 0x01 0x02
Crc_MKChain:
	#data 0xff 0x02 0xff 0x02
Crc_HKChain:
	#data 0xff 0xff 0xff 0xff

Air_LPChain:
	#data 0x01 0x02 0x00 0x02
Air_MPChain:
	#data 0xff 0x02 0x01 0x02
Air_HPChain:
	#data 0xff 0xff 0xff 0x02
Air_LKChain:
	#data 0x01 0x02 0x01 0x02
Air_MKChain:
	#data 0xff 0x02 0xff 0x02
Air_HKChain:
	#data 0xff 0xff 0xff 0xff

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3439C:
	#data 0x0003
	#data 0x0000 0x0000 0x0000
	#data 0x1000 0x1800 0x0800 0x0300

loc_ce343AC:
	#data 0x0003
	#data 0x1000 0x0001 0x0000
	#data 0x1000 0x1400 0x0400 0x0060

loc_ce343BC:
	#data 0x0003
	#data 0x1000 0x0002 0x0000
	#data 0x1000 0x1800 0x0800 0x0060

loc_ce343CC:
	#data 0x0003
	#data 0x8100 0x0003 0x0000
	#data 0x1000 0x1800 0x0800 0x0300

loc_ce343DC:
	#data 0x0003
	#data 0x9100 0x0004 0x0000
	#data 0x1000 0x1400 0x0400 0x0060

loc_ce343EC:
	#data 0x0003
	#data 0x9100 0x0005 0x0000
	#data 0x1000 0x1800 0x0800 0x0060

loc_ce343FC:
	#data 0x0004
	#data 0x1100 0x0009 0x0000
	#data 0x0020 0x0200 0x1000 0x0040 0x0100

loc_ce3440E:
	#data 0x0005
	#data 0x1000 0x0006 0x0000
	#data 0x0800 0x1800 0x1000 0x1400 0x0400 0x0300 0x0000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34424:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x418C0000
#data 0xBBD55555
#data 0x00000000
#data 0x00000000
#data 0x3F800000
#data 0x3F800000
#data 0x00000000
#data 0xC18C0000
#data 0x3BD55555
#data 0x00000000
#data 0x00000000
#data 0x3F800000
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
#data 0xC1B40000
#data 0x00000000
#data 0x3F800000
#data 0xBF800000
#data 0x40000000
#data 0x413AAAAA
#data 0x00000000
#data 0xC1700000
#data 0x00000000
#data 0x3F800000
#data 0x3F800000
#data 0x3F800000
#data 0xC13AAAAA
#data 0x00000000
#data 0xC1700000
#data 0x00000000
#data 0x3F800000
#data 0x00000000
#data 0x3F800000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x41B40000
#data 0xBC092492
#data 0x3F800000
#data 0xBF800000
#data 0x40800000
#data 0x413AAAAA
#data 0xBBD55555
#data 0x41700000
#data 0xBC092492
#data 0x3F800000
#data 0x3F800000
#data 0x40400000
#data 0xC13AAAAA
#data 0x3BD55555
#data 0x41700000
#data 0xBC092492
#data 0x3F800000
#data 0x00000000
#data 0x40400000
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
#data 0x00000000
#data 0x00000000

loc_ce345E4:
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x41B40000
#data 0xBBD55555
#data 0x00000000
#data 0x00000000
#data 0x3F800000
#data 0x3F800000
#data 0x00000000
#data 0xC1B40000
#data 0x3BD55555
#data 0x00000000
#data 0x00000000
#data 0x3F800000
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
#data 0xC1E76DB6
#data 0x00000000
#data 0x3F800000
#data 0xBF800000
#data 0x40000000
#data 0x41700000
#data 0x00000000
#data 0xC19A4924
#data 0x00000000
#data 0x3F800000
#data 0x3F800000
#data 0x3F800000
#data 0xC1700000
#data 0x00000000
#data 0xC19A4924
#data 0x00000000
#data 0x3F800000
#data 0x00000000
#data 0x3F800000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x00000000
#data 0x41E76DB6
#data 0xBC092492
#data 0x3F800000
#data 0xBF800000
#data 0x40800000
#data 0x41700000
#data 0xBBD55555
#data 0x419A4924
#data 0xBC092492
#data 0x3F800000
#data 0x3F800000
#data 0x40400000
#data 0xC1700000
#data 0x3BD55555
#data 0x419A4924
#data 0xBC092492
#data 0x3F800000
#data 0x00000000
#data 0x40400000
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
#data 0x00000000
#data 0x00000000

loc_ce347A4:
#data 0x41000000
#data 0x41000000
#data 0x41100000
#data 0x41100000
#data 0x41100000
#data 0x41100000
#data 0x41100000
#data 0x3F800000
#data 0x3F800000
#data 0x3F800000
#data 0x40A00000
#data 0x40A00000
#data 0x40A00000
#data 0x40A00000
#data 0x40A00000
#data 0x40800000
#data 0x40800000
#data 0x40800000
#data 0x40C00000
#data 0x40C00000
#data 0x40C00000
#data 0x40C00000
#data 0x40C00000
#data 0x40000000
#data 0x40000000
#data 0x40000000
#data 0x41200000
#data 0x41200000
#data 0x41200000
#data 0x41200000
#data 0x41200000
#data 0x41000000
#data 0x42480000
#data 0x42055555
#data 0x41855555
#data 0x00000000
#data 0x42695555
#data 0x4226AAAA
#data 0x41C80000
#data 0x41055555
#data 0xC2480000
#data 0xC2055555
#data 0xC1855555
#data 0x00000000
#data 0xC2695555
#data 0xC226AAAA
#data 0xC1C80000
#data 0xC1055555


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
SPL_JumpTable:
	#data loc_ce3060A loc_ce30054 loc_ce3060E loc_ce30C32
	#data Rby_FwdDash Rby_BckDash loc_ce31468 loc_ce3151C
	#data Rby_SpecPRG loc_ce33E5C loc_ce33F50 loc_ce3407A
	#data loc_ce341F4 Rby_DlyHypC loc_ce33D04 loc_ce30FCA
	#data Rby_TmHypMn Rby_TmHypAs Rby_Assists Rby_AlpCntr
	#data 0x00000000 0x00000000 0x00000000 0x00000000
	#data 0x00000000 0x00000000 0x00000000 0x00000000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce348D4_to_loc_ce3066A:
	#data loc_ce3066A
	#data loc_ce309C2
	#data loc_ce309EA
	#data loc_ce30622

loc_ce348E4_to_loc_ce30CFE:
#data loc_ce30CFE

loc_ce348E8_to_loc_ce30ECE:
#data loc_ce30ECE

loc_ce348EC_to_loc_ce30EB8:
#data loc_ce30EB8

loc_ce348F0_to_loc_ce30C78:
#data loc_ce30C78

loc_ce348F4_to_loc_ce310E0:
#data loc_ce310E0

loc_ce348F8_to_loc_ce3114C:
#data loc_ce3114C

loc_ce348FC_to_loc_ce31200:
#data loc_ce31200

loc_ce34900_to_loc_ce31276:
#data loc_ce31276

loc_ce34904_to_loc_ce312AA:
#data loc_ce312AA

loc_ce34908_to_loc_ce31340:
#data loc_ce31340

loc_ce3490C_to_loc_ce313D0:
#data loc_ce313D0

loc_ce34910_to_loc_ce31446:
#data loc_ce31446

loc_ce34914_to_loc_ce3147A:
#data loc_ce3147A

loc_ce34918_to_loc_ce314CC:
#data loc_ce314CC

loc_ce3491C_to_loc_ce3152E:
#data loc_ce3152E

loc_ce34920_to_loc_ce3154C:
#data loc_ce3154C

loc_ce34924_to_loc_ce315D6:
#data loc_ce315D6

loc_ce34928_to_loc_ce31578:
#data loc_ce31578

loc_ce3492C_to_loc_ce315D6:
#data loc_ce315D6

loc_ce34930_to_loc_ce31578:
#data loc_ce31578

loc_ce34934_to_loc_ce31578:
#data loc_ce31578

loc_ce34938_to_loc_ce315D6:
#data loc_ce315D6

loc_ce3493C_to_loc_ce315D6:
#data loc_ce315D6

loc_ce34940_to_loc_ce315D6:
#data loc_ce315D6

loc_ce34944_to_loc_ce3164C:
#data loc_ce3164C

loc_ce34948_to_loc_ce3164C:
#data loc_ce3164C

loc_ce3494C_to_loc_ce3164C:
#data loc_ce3164C

loc_ce34950_to_loc_ce3158A:
#data loc_ce3158A

loc_ce34954_to_loc_ce315D0:
#data loc_ce315D0

loc_ce34958_to_loc_ce315E8:
#data loc_ce315E8

loc_ce3495C_to_loc_ce31608:
#data loc_ce31608

loc_ce34960_to_loc_ce3165E:
#data loc_ce3165E

loc_ce34964_to_loc_ce3167E:
#data loc_ce3167E

loc_ce34968:
	#data 0x0005
	#data 0x0005
	#data 0x0005
	#data 0x0006
	#data 0x0006
	#data 0x0007
	#data 0x0007
	#data 0x0007
	#data 0x0008
	#data 0x0008
	#data 0x0008
	#data 0x0008
	#data 0x0009
	#data 0x000A
	#data 0x000A
	#data 0x000A

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
Special_PRG_Table:
	#data loc_ce31748 ; 00 Schwarzaile
	#data loc_ce31DEA ; 01 Fantome
	#data loc_ce31ECE ; 02 Sublimation
	#data loc_ce32524 ; 03 Flammeile
	#data loc_ce32CB6 ; 04 Mille Fantomes/Ghost Hyper
	#data loc_ce32E32 ; 05 Pare-tonn're/Ship Hyper
	#data loc_ce32030 ; 06 Rafale Cannon
	#data loc_ce322B2 ; 07 Rafale Cannon Assist
	#data loc_ce3240E ; 08 Assist Power up
	#data loc_ce330EC ; 09 Tour De Magie
	#data loc_ce33BFE ; 0a Snap Back
	#data loc_ce33B8A ; 0b Taunt
	#data loc_ce33748 ; 0c Team Hyper Flammeile

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;Schwarzaile PRG Table
loc_ce349BC_to_loc_ce31790:
	#data loc_ce31790
	#data loc_ce318EE
	#data loc_ce319EC
	#data loc_ce31B96
	#data loc_ce31C58
	#data loc_ce31CE0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce349D4_to_loc_ce31DFC:
	#data loc_ce31DFC
	#data loc_ce31E7A
	#data loc_ce31EAC

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce349E0_to_loc_ce31F1C:
	#data loc_ce31F1C
	#data loc_ce31F9E
	#data loc_ce31FE0
	#data loc_ce3200E

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce349F0_to_loc_ce32042:
	#data loc_ce32042
	#data loc_ce320EC
	#data loc_ce32150
	#data loc_ce32184
	#data loc_ce321CC
	#data loc_ce3220E
	#data loc_ce32230
	#data loc_ce3237A
	#data loc_ce323BC
	#data loc_ce323EC

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34A18_to_loc_ce322F8:
	#data loc_ce322F8
	#data loc_ce3237A
	#data loc_ce323BC
	#data loc_ce323EC

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34A28_to_loc_ce32454:
	#data loc_ce32454
	#data loc_ce324D2
	#data loc_ce32502

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34A34_to_loc_ce32536:
	#data loc_ce32536
	#data loc_ce32640
	#data loc_ce32730
	#data loc_ce3295C
	#data loc_ce32A08
	#data loc_ce32AD6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34A4C_to_loc_ce32CC8:
	#data loc_ce32CC8
	#data loc_ce32D7C
	#data loc_ce32DF2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34A58_to_loc_ce32E6C:
	#data loc_ce32E6C
	#data loc_ce32F08
	#data loc_ce32F78
	#data loc_ce33012
	#data loc_ce330AE

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34A6C_to_loc_ce33128:
	#data loc_ce33128
	#data loc_ce331C6
	#data loc_ce3322E
	#data loc_ce33294
	#data loc_ce33310
	#data loc_ce3344A
	#data loc_ce33474
	#data loc_ce3349E
	#data loc_ce335B0
	#data loc_ce335E8
	#data loc_ce33630
	#data loc_ce33692
	#data loc_ce336BE
	#data loc_ce336E2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34AA4_to_loc_ce33784:
	#data loc_ce33784
	#data loc_ce33870
	#data loc_ce33944
	#data loc_ce33AC4
	#data loc_ce33AC8
	#data loc_ce33B62

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34ABC_to_loc_ce33B9C:
	#data loc_ce33B9C
	#data loc_ce33BDC

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34AC4_to_loc_ce33C34:
	#data loc_ce33C34
	#data loc_ce33CA2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34ACC_to_loc_ce33D16:
	#data loc_ce33D16
	#data loc_ce33DC0
	#data loc_ce33E3A

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34AD8_to_loc_ce33E74:
	#data loc_ce33E74
	#data loc_ce33EC8
	#data loc_ce33EF0
	#data loc_ce33E74

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34AE8_to_loc_ce33F68:
	#data loc_ce33F68
	#data loc_ce33FFC

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34AF0_to_loc_ce34098:
	#data loc_ce34098
	#data loc_ce34122

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34AF8_to_loc_ce34180:
	#data loc_ce34180

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce34AFC_to_loc_ce3420C:
	#data loc_ce3420C
	#data loc_ce3420C
	#data loc_ce3421A
