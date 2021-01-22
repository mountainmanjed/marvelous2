; S_PL09A.BIN
#symbol fn_extern_8C054508 0x8C054508
#symbol fn_extern_8C054B34 0x8C054B34
#symbol fn_extern_8C05496C 0x8C05496C
#symbol fn_extern_8C054D04 0x8C054D04
#symbol fn_extern_8C053E00 0x8C053E00
#symbol fn_extern_8C0542E0 0x8C0542E0
#symbol extern_8C054D1C 0x8C054D1C
#symbol fn_extern_8C0530D8 0x8C0530D8
#symbol fn_extern_8C054DA0 0x8C054DA0
#symbol fn_extern_8C054E58 0x8C054E58
#symbol fn_extern_8C055C3A 0x8C055C3A
#symbol extern_8C03319E 0x8C03319E
#symbol extern_8C12939C 0x8C12939C
#symbol extern_8C03544C 0x8C03544C
#symbol extern_8C0C0F54 0x8C0C0F54
#symbol code_extern_8C06CCB8 0x8C06CCB8
#symbol fn_extern_8C052B4C 0x8C052B4C
#symbol extern_8C04223A 0x8C04223A
#symbol extern_8C2896B0 0x8C2896B0
#symbol fn_extern_8C034E8C 0x8C034E8C
#symbol fn_extern_8C06B364 0x8C06B364
#symbol extern_8C0511E2 0x8C0511E2
#symbol extern_8C052C84 0x8C052C84
#symbol fn_extern_8C034DEE 0x8C034DEE
#symbol fn_extern_8C051648 0x8C051648
#symbol extern_8C050084 0x8C050084
#symbol extern_8C04FF88 0x8C04FF88
#symbol fn_extern_8C04FEA8 0x8C04FEA8
#symbol fn_extern_8C050048 0x8C050048
#symbol fn_extern_8C052CE2 0x8C052CE2
#symbol fn_extern_8C052DAC 0x8C052DAC
#symbol fn_extern_8C05176E 0x8C05176E
#symbol fn_extern_8C056DE4 0x8C056DE4
#symbol extern_8C0511B4 0x8C0511B4
#symbol fn_extern_8C0C0C98 0x8C0C0C98
#symbol fn_extern_8C0514B8 0x8C0514B8
#symbol extern_8C0C12D4 0x8C0C12D4
#symbol fn_extern_8C046C8A 0x8C046C8A
#symbol fn_extern_8C05218A 0x8C05218A
#symbol fn_extern_8C05115A 0x8C05115A
#symbol extern_8C06BBBC 0x8C06BBBC
#symbol extern_8C06C430 0x8C06C430
#symbol fn_extern_8C035162 0x8C035162
#symbol extern_8C050834 0x8C050834
#symbol extern_8C06B798 0x8C06B798
#symbol extern_8C055D54 0x8C055D54
#symbol extern_8C034F54 0x8C034F54
#symbol fn_extern_8C0C1104 0x8C0C1104
#symbol fn_extern_8C053082 0x8C053082
#symbol extern_8C050EA4 0x8C050EA4
#symbol fn_extern_8C045790 0x8C045790
#symbol fn_extern_8C02FEC4 0x8C02FEC4
#symbol extern_8C103660 0x8C103660
#symbol fn_extern_8C056F2A 0x8C056F2A
#symbol fn_extern_8C0C1688 0x8C0C1688
#symbol extern_8C042008 0x8C042008
#symbol extern_8C0C1500 0x8C0C1500
#symbol extern_8C0FD966 0x8C0FD966
#symbol code_extern_8C04CC1C 0x8C04CC1C
#symbol code_extern_8C04CE3A 0x8C04CE3A
#symbol fn_extern_8C051854 0x8C051854

;==============================================
start_CE30000:
	mov.w @(loc_ce300E8,pc),r0 ; r0 set to 0x428
	mov 0x70,r5 ; r5 set to 0x70
	mov.l @(ptr_CE300F0_to_SPL_JumpTable,pc),r7 ; r7 set to 0xCE327FC
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

;----------------------------------------------
loc_CE3001C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE300F4_to_fn_extern_8C054508,pc),r3 ; r3 set to 0x8C054508
	jsr @r3
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300A2
	mov.l @(ptr_CE300F8_to_fn_extern_8C054B34,pc),r3 ; r3 set to 0x8C054B34
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300A2
	mov.l @(ptr_CE300FC_to_fn_extern_8C05496C,pc),r3 ; r3 set to 0x8C05496C
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300A2
	mov.l @(ptr_CE30100_to_fn_extern_8C054D04,pc),r3 ; r3 set to 0x8C054D04
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300A2
	bsr loc_ce302E0
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300A2
	bsr loc_ce30284
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300A2
	bsr loc_ce301F2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300A2
	bsr loc_CE3014E
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300A2
	bsr loc_ce30196
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_CE300A2
	bsr loc_ce300A8
	mov r14,r4
	tst r0,r0
	bf loc_CE300A2
	bsr loc_CE30114
	mov r14,r4
	tst r0,r0
	bf loc_CE300A2
	mov.l @(ptr_CE30104_to_fn_extern_8C053E00,pc),r3 ; r3 set to 0x8C053E00
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(ptr_CE30108_to_fn_extern_8C0542E0,pc),r2 ; r2 set to 0x8C0542E0
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE300A2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce300A8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bt loc_0ce300c0
	mov.w @(0x30,PC),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce300C8

loc_0ce300c0:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce300C8:
	mov.w @(0x20,PC),r0
	mov 0x06,r3
	mov 0x1D,r5
	mov.b r3,@(r0,r14)
	mov 0x00,r0
	mov.l @(0x3C,PC),r3
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

;----------------------------------------------
loc_ce300E8:
	#data 0x0428
loc_ce300Ea:
	#data 0x040C
loc_ce300Ec:
	#data 0x01E9
	#align4

ptr_CE300F0_to_SPL_JumpTable:
	#data SPL_JumpTable
ptr_CE300F4_to_fn_extern_8C054508:
	#data fn_extern_8C054508
ptr_CE300F8_to_fn_extern_8C054B34:
	#data fn_extern_8C054B34
ptr_CE300FC_to_fn_extern_8C05496C:
	#data fn_extern_8C05496C
ptr_CE30100_to_fn_extern_8C054D04:
	#data fn_extern_8C054D04
ptr_CE30104_to_fn_extern_8C053E00:
	#data fn_extern_8C053E00
ptr_CE30108_to_fn_extern_8C0542E0:
	#data fn_extern_8C0542E0
loc_CE3010c:
	#data extern_8C054D1C
loc_CE30110:
	#data fn_extern_8C0530D8

;==============================================
loc_CE30114:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE30238_to_fn_extern_8C054DA0,pc),r3 ; r3 set to 0x8C054DA0
	jsr @r3
	mov 0x05,r5 ; r5 set to 0x05
	extu.b r0,r0
	tst r0,r0
	bf loc_CE3012E
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_CE3012E:
	mov.w @(loc_ce3022A,pc),r0 ; r0 set to 0x1E9
	mov 0x05,r3 ; r3 set to 0x05
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @(ptr_CE3023C_to_fn_extern_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8
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

;----------------------------------------------
loc_CE3014E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE30240_to_IceBeamInput,pc),r5 ; r5 set to 0xCE327BC
	mov.w @(loc_ce3022C,pc),r6 ; r6 set to 0x36C
	mov.l @(ptr_CE30244_to_fn_extern_8C054E58,pc),r3 ; r3 set to 0x8C054E58
	jsr @r3
	add r14,r6 ; r6 ??? bc r14 is ???
	extu.b r0,r0
	tst r0,r0
	bf loc_CE3016C
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_CE3016C:
	mov.w @(loc_ce3022C,pc),r5 ; r5 set to 0x36C
	mov.l @(ptr_CE30248_to_fn_extern_8C055C3A,pc),r3 ; r3 set to 0x8C055C3A
	add r14,r5 ; r5 ??? bc r14 is ???
	jsr @r3
	mov r14,r4
	mov.l @(ptr_CE3023C_to_fn_extern_8C0530D8,pc),r3 ; r3 set to 0x8C0530D8
	mov 0x00,r0 ; r0 set to 0x00
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x05,r14)
	mov.b r0,@(0x07,r14)
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_ce3022A,pc),r0 ; r0 set to 0x1E9
	mov 0x01,r4 ; r4 set to 0x01
	mov.b r4,@(r0,r14)
	mov r4,r0 ; r0 set to 0x01
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce30196:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xAC,PC),r5
	mov.w @(0x8C,PC),r6
	mov.l @(0xA0,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce301bc
	mov.w @(0x80,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce301ca
	mov.w @(0x7A,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce301c4

loc_ce301BC:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce301C4:
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_ce301CA:
	mov.w @(0x60,PC),r5
	mov.l @(0x78,PC),r2
	add r14,r5
	jsr @r2
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x04,r3
	mov.b r0,@(0x7,r14)
	mov 0x15,r5
	mov.b r0,@(0x6,r14)
	mov.w @(0x46,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x54,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce301F2:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x54,PC),r5
	mov.w @(0x36,PC),r6
	mov.l @(0x44,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce30222
	mov.w @(0x2A,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce3025a
	mov.w @(0x1A,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_ce3025a
	mov.w @(0x14,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce30254

loc_ce30222:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce3022A:
	#data 0x01E9
loc_ce3022C:
	#data 0x036C
loc_ce3022e:
	#data 0x0384
loc_ce30230:
	#data 0x01FC
loc_ce30232:
	#data 0x01D4
loc_ce30234:
	#data 0x037C
loc_ce30236:
	#data 0x01F9
	#align4

ptr_CE30238_to_fn_extern_8C054DA0:
	#data fn_extern_8C054DA0
ptr_CE3023C_to_fn_extern_8C0530D8:
	#data fn_extern_8C0530D8
ptr_CE30240_to_IceBeamInput:
	#data IceBeamInput
ptr_CE30244_to_fn_extern_8C054E58:
	#data fn_extern_8C054E58
ptr_CE30248_to_fn_extern_8C055C3A:
	#data fn_extern_8C055C3A
ptr_CE3024C_to_AirIceBeamInput:
	#data AirIceBeamInput
ptr_CE30250_to_AvalancheInput:
	#data AvalancheInput

;----------------------------------------------
loc_ce30254:
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_ce3025A:
	mov.w @(loc_ce30360,PC),r5
	mov.l @(loc_ce30374,PC),r2
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
	mov.w @(loc_ce30362,PC),r0
	mov.l @(loc_ce30378,PC),r3
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce30284:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_ce30364,PC),r3
	mov r4,r14
	mov.w @(loc_ce30366,PC),r6
	add r14,r3
	mov.l @(ptr_CE3037C_to_IceFistInput,PC),r5
	mov.l r3,@r15
	add r14,r6
	mov.l @(loc_ce30380,PC),r3
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_ce302ac
	mov.l @r15,r2
	mov.b @r2,r3
	tst r3,r3
	bt loc_ce302b6

loc_ce302AC:
	mov 0x00,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce302B6:
	mov.w @(loc_ce30366,PC),r5
	mov.l @(loc_ce30374,PC),r3
	add r14,r5
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x03,r3
	mov.b r0,@(0x7,r14)
	mov 0x15,r5
	mov.b r0,@(0x6,r14)
	mov.w @(loc_ce30362,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_ce30378,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce302E0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE30384_to_ArcticAttack_Inp,PC),r5
	mov.w @(loc_ce30368,PC),r6
	mov.l @(loc_ce30380,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce3031a
	mov.w @(loc_ce3036a,PC),r0
	mov.l @(r0,r14),r3
	mov.b @r3,r2
	tst r2,r2
	bt loc_ce3031a
	mov.w @(loc_ce3036c,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce3032a
	mov.w @(loc_ce3036e,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce30322
	mov.w @(loc_ce30370,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce30322

loc_ce3031A:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce30322:
	mov.w @(loc_ce3036e,PC),r0
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

loc_ce3032A:
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	mov 0x02,r3
	mov.b r0,@(0x7,r14)
	mov 0x1D,r5
	mov.b r0,@(0x6,r14)
	mov.w @(loc_ce30362,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_ce30378,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
PL09_DlyHyprC:
	sts.l pr,@-r15
	bsr loc_ce30388
	nop
	tst r0,r0
	bt loc_CE30358
	lds.l @r15+,pr
	rts
	mov 0x01,r0

loc_CE30358:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_ce30360:
	#data 0x037C
loc_ce30362:
	#data 0x01E9
loc_ce30364:
	#data 0x02A4
loc_ce30366:
	#data 0x0364
loc_ce30368:
	#data 0x0374
loc_ce3036a:
	#data 0x040C
loc_ce3036c:
	#data 0x01F9
loc_ce3036e:
	#data 0x01D4
loc_ce30370:
	#data 0x01FC
	#align4

loc_ce30374:
	#data fn_extern_8C055C3A
loc_ce30378:
	#data fn_extern_8C0530D8
ptr_CE3037C_to_IceFistInput:
	#data IceFistInput
loc_ce30380:
	#data fn_extern_8C054E58
ptr_CE30384_to_ArcticAttack_Inp:
	#data ArcticAttack_Inp

;==============================================
loc_ce30388:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE304BC_to_ArcticAttack_Inp,PC),r5
	mov.w @(0x114,PC),r6
	mov.l @(0x12C,PC),r3
	jsr @r3
	add r14,r6
	extu.b r0,r0
	tst r0,r0
	bt loc_ce303a8
	mov.w @(0x108,PC),r0
	mov.l @(r0,r14),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_ce303b0

loc_ce303A8:
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

loc_ce303B0:
	mov.w @(0xF8,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce303BE:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov 0x00,r12
	mov.w @(0xE2,PC),r14
	sts.l pr,@-r15
	add r13,r14
	mov r12,r0
	nop
	mov.b r0,@(0x2,r14)
	mov.b @r14,r3
	tst r3,r3
	bt loc_ce303e2
	mov.b @(0x1,r14),r0
	tst r0,r0
	bf loc_ce303e2
	mov.b r12,@r14

loc_ce303E2:
	mov.b @(0x4,r14),r0
	add 0xFF,r0
	mov.b r0,@(0x4,r14)
	exts.b r0,r0
	cmp/pl r0
	bt loc_ce3043c
	mov 0x04,r0
	mov.b r0,@(0x4,r14)
	mov 0x06,r3
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	extu.b r0,r0
	cmp/gt r3,r0
	bf loc_ce3041c
	mov r12,r0
	nop
	mov.l @(0xBC,PC),r2
	jsr @r2
	mov.b r0,@(0x5,r14)
	mov.l @(0xBC,PC),r3
	mov r0,r1
	jsr @r3
	mov 0x30,r0
	add 0x10,r0
	mov r0,r2
	mov.b @(0x4,r14),r0
	add r2,r0
	mov.b r0,@(0x4,r14)

loc_ce3041C:
	mov 0x25,r0
	mov.b @(r0,r13),r6
	mov 0x01,r7
	mov.b @(0x5,r14),r0
	mov 0x00,r5
	extu.b r6,r6
	mov r6,r3
	shll2 r6
	shll r6
	extu.b r0,r0
	sub r3,r6
	mov.l @(0x98,PC),r3
	add r0,r6
	add 0x18,r6
	jsr @r3
	mov r13,r4

loc_ce3043C:
	mov.w @(0x70,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_ce30476
	mov.w @(0x6A,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce30458
	mov.w @(0x60,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_ce30476

loc_ce30458:
	mov.w @(0x58,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_ce30476
	mov.w @(0x52,PC),r3
	mov r3,r0
	nop
	add 0x42,r0
	mov.l @(0x64,PC),r2
	mov.b @(r0,r13),r5
	add r3,r5
	jsr @r2
	mov r13,r4
	mov.w @(0x3E,PC),r0
	mov.b r12,@(r0,r13

loc_ce30476:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_CE30480:
	mov.w @(loc_ce304AE,pc),r5 ; r5 set to 0x2A4
	add r4,r5 ; r5 ??? bc r4 is ???
	mov.b @r5,r3
	tst r3,r3
	bt loc_CE30490
	mov.l @(ptr_CE304D4_to_code_extern_8C06CCB8,pc),r3 ; r3 set to 0x8C06CCB8
	jmp @r3
	nop

loc_CE30490:
	rts
	nop

;----------------------------------------------
loc_CE30494:
	mov.w @(loc_ce304B8,pc),r0 ; r0 set to 0x1FF
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(ptr_CE304D8_to_ptr_CE3286C_to_loc_CE304DC,pc),r0 ; r0 set to 0xCE3286C
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce304a8:
	#data 0x0374
loc_ce304aa:
	#data 0x040C
loc_ce304ac:
	#data 0x0258
loc_ce304AE:
	#data 0x02A4
loc_ce304b0:
	#data 0x0159
loc_ce304b2:
	#data 0x0158
loc_ce304b4:
	#data 0x0141
loc_ce304b6:
	#data 0x00FF
loc_ce304B8:
	#data 0x01FF
	#align4

ptr_CE304BC_to_ArcticAttack_Inp:
	#data ArcticAttack_Inp
loc_ce304c0:
	#data fn_extern_8C054E58
loc_ce304c4:
	#data extern_8C03319E
loc_ce304c8:
	#data extern_8C12939C
loc_ce304cc:
	#data extern_8C03544C
loc_ce304d0:
	#data extern_8C0C0F54
ptr_CE304D4_to_code_extern_8C06CCB8:
	#data code_extern_8C06CCB8
ptr_CE304D8_to_ptr_CE3286C_to_loc_CE304DC:
	#data ptr_CE3286C_to_loc_CE304DC

;==============================================
loc_CE304DC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE305E0_to_fn_extern_8C052B4C,pc),r3 ; r3 set to 0x8C052B4C
	jsr @r3
	mov r4,r14
	mov.w @(loc_ce305D0,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE3050A
	mov.w @(loc_ce305D2,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE30502
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE307A8
	mov.l @r15+,r14

loc_CE30502:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE306D0
	mov.l @r15+,r14

loc_CE3050A:
	mov.w @(loc_ce305D2,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE3051C
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE305FC
	mov.l @r15+,r14

loc_CE3051C:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE30524
	mov.l @r15+,r14

loc_CE30524:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_ce305D4,pc),r0 ; r0 set to 0x1E8
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(ptr_CE305E4_to_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_CE3054A
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_CE30564
	cmp/eq 0x02,r0
	bt loc_ce3057E
	bra loc_CE30598
	nop

loc_CE3054A:
	mov.w @(loc_ce305D6,pc),r0 ; r0 set to 0x158
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r13,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce305D8,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE305E8_to_Stn_LPChain,pc),r3 ; r3 set to 0xCE32764
	mov.l r3,@(r0,r14)
	mov.w @(loc_ce305DA,pc),r0 ; r0 set to 0x1A7
	bra loc_CE30598
	mov.b r13,@(r0,r14)

loc_CE30564:
	mov.w @(loc_ce305D6,pc),r0 ; r0 set to 0x158
	mov 0x01,r11 ; r11 set to 0x01
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r11,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r11,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce305D8,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE305EC_to_Stn_MPChain,pc),r3 ; r3 set to 0xCE32768
	mov.l r3,@(r0,r14)
	bra loc_ce30594
	nop

loc_ce3057E:
	mov.w @(0x54,PC),r0
	mov 0x02,r11
	mov 0x16,r5
	mov.b r11,@(r0,r14)
	add 0x49,r0
	mov.b r11,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x46,PC),r0
	mov.l @(0x5C,PC),r3
	mov.l r3,@(r0,r14)

loc_ce30594:
	mov.w @(0x42,PC),r0
	mov.b r11,@(r0,r14)

loc_CE30598:
	mov.w @(loc_ce305DC,pc),r0 ; r0 set to 0x1AC
	mov 0x07,r5 ; r5 set to 0x07
	mov.l @(ptr_CE305F4_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
	mov.w @(loc_ce305D6,pc),r0 ; r0 set to 0x158
	mov.l @(ptr_CE305F8_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.b @(r0,r14),r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_CE30480
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce305D0:
	#data 0x01FE
loc_ce305D2:
	#data 0x01F9
loc_ce305D4:
	#data 0x01E8
loc_ce305D6:
	#data 0x0158
loc_ce305D8:
	#data 0x03F4
loc_ce305DA:
	#data 0x01A7
loc_ce305DC:
	#data 0x01AC
	#align4

ptr_CE305E0_to_fn_extern_8C052B4C:
	#data fn_extern_8C052B4C
ptr_CE305E4_to_extern_8C04223A:
	#data extern_8C04223A
ptr_CE305E8_to_Stn_LPChain:
	#data Stn_LPChain
ptr_CE305EC_to_Stn_MPChain:
	#data Stn_MPChain
ptr_CE305F0_to_Stn_HPChain:
	#data Stn_HPChain
ptr_CE305F4_to_extern_8C2896B0:
	#data extern_8C2896B0
ptr_CE305F8_to_fn_extern_8C034E8C:
	#data fn_extern_8C034E8C

;==============================================
loc_CE305FC:
	mov.w @(loc_ce30710,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(ptr_CE3071C_to_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_CE30622
	mov 0x09,r4 ; r4 set to 0x09
	cmp/eq 0x01,r0
	bt loc_ce30642
	cmp/eq 0x02,r0
	bt loc_ce3066C
	bra loc_CE3069E
	nop

loc_CE30622:
	mov.w @(loc_ce30712,pc),r0 ; r0 set to 0x159
	mov 0x06,r3 ; r3 set to 0x06
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r4,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x158
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30714,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30720_to_Stn_LPChain,pc),r3 ; r3 set to 0xCE32764
	mov.l r3,@(r0,r14)
	mov.w @(loc_ce30716,pc),r0 ; r0 set to 0x1A7
	bra loc_CE30664
	mov.b r13,@(r0,r14)

loc_ce30642:
	mov.w @(0xCC,PC),r0
	mov 0x01,r3
	mov 0x07,r2
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0x49,r0
	mov 0x15,r5
	mov.b r2,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0xB8,PC),r0
	mov 0x01,r2
	mov.l @(0xC4,PC),r3
	mov.l r3,@(r0,r14)
	mov.w @(0xB2,PC),r0
	mov.b r2,@(r0,r14)


loc_CE30664:
	bsr loc_CE30480
	mov r14,r4
	bra loc_CE3069E
	nop

loc_ce3066C:
	mov.w @(0xA2,PC),r0
	mov 0x02,r3
	mov 0x08,r2
	mov.b r4,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	add 0x49,r0
	mov.b r2,@(r0,r14)
	mov 0x16,r5
	mov.w @(0x92,PC),r0
	mov.l @(0xA4,PC),r3
	mov.l r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x8A,PC),r0
	mov 0x02,r3
	mov 0x03,r5
	mov.b r3,@(r0,r14)
	mov.l @(0x98,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x94,PC),r2
	mov 0x04,r5
	jsr @r2
	mov r14,r4

loc_CE3069E:
	mov.w @(loc_ce30718,pc),r0 ; r0 set to 0x1AC
	mov 0x09,r5 ; r5 set to 0x09
	mov.l @(ptr_CE30730_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
	mov.w @(loc_ce3071A,pc),r0 ; r0 set to 0x158
	mov.l @(ptr_CE30734_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r12
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE306D0:
	mov.w @(loc_ce30710,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(ptr_CE3071C_to_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_CE306F4
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_CE3073C
	cmp/eq 0x02,r0
	bt loc_ce30758
	bra loc_CE30776
	nop

loc_CE306F4:
	mov.w @(loc_ce3071A,pc),r0 ; r0 set to 0x158
	mov 0x03,r3 ; r3 set to 0x03
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30714,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30738_to_Stn_LKChain,pc),r3 ; r3 set to 0xCE32770
	mov.l r3,@(r0,r14)
	mov.w @(loc_ce30716,pc),r0 ; r0 set to 0x1A7
	bra loc_CE30776
	mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30710:
	#data 0x01E8
loc_ce30712:
	#data 0x0159
loc_ce30714:
	#data 0x03F4
loc_ce30716:
	#data 0x01A7
loc_ce30718:
	#data 0x01AC
loc_ce3071A:
	#data 0x0158
	#align4

ptr_CE3071C_to_extern_8C04223A:
	#data extern_8C04223A
ptr_CE30720_to_Stn_LPChain:
	#data Stn_LPChain
ptr_CE30724_to_Stn_MPChain:
	#data Stn_MPChain
ptr_CE30728_to_Stn_HPChain:
	#data Stn_HPChain
loc_ce3072c:
	#data fn_extern_8C06B364
ptr_CE30730_to_extern_8C2896B0:
	#data extern_8C2896B0
ptr_CE30734_to_fn_extern_8C034E8C:
	#data fn_extern_8C034E8C
ptr_CE30738_to_Stn_LKChain:
	#data Stn_LKChain

;==============================================
loc_CE3073C:
	mov.w @(loc_ce30866,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x04,r3 ; r3 set to 0x04
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30868,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30874_to_Stn_MKChain,pc),r3 ; r3 set to 0xCE32774
	mov.l r3,@(r0,r14)
	bra loc_ce30772
	mov 0x01,r2

loc_ce30758:
	mov.w @(0x10A,PC),r0
	mov 0x02,r1
	mov 0x05,r3
	mov.b r1,@(r0,r14)
	add 0x49,r0
	mov 0x16,r5
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0xFA,PC),r0
	mov 0x02,r2
	mov.l @(0x108,PC),r3
	mov.l r3,@(r0,r14)

loc_ce30772:
	mov.w @(0xF4,PC),r0
	mov.b r2,@(r0,r14)

loc_CE30776:
	mov.w @(loc_ce3086C,pc),r0 ; r0 set to 0x1AC
	mov 0x08,r5 ; r5 set to 0x08
	mov.l @(ptr_CE3087C_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
	mov.w @(loc_ce30866,pc),r0 ; r0 set to 0x158
	mov.l @(ptr_CE30880_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r12
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE307A8:
	mov.w @(loc_ce3086E,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(ptr_CE30884_to_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_CE307CC
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_CE307E8
	cmp/eq 0x02,r0
	bt loc_ce30804
	bra loc_CE30822
	nop

loc_CE307CC:
	mov.w @(loc_ce30866,pc),r0 ; r0 set to 0x158
	mov 0x09,r3 ; r3 set to 0x09
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30868,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30888_to_Stn_LKChain,pc),r3 ; r3 set to 0xCE32770
	mov.l r3,@(r0,r14)
	mov.w @(loc_ce3086A,pc),r0 ; r0 set to 0x1A7
	bra loc_CE30822
	mov.b r13,@(r0,r14)

loc_CE307E8:
	mov.w @(loc_ce30866,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x0A,r3 ; r3 set to 0x0A
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30868,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30874_to_Stn_MKChain,pc),r3 ; r3 set to 0xCE32774
	mov.l r3,@(r0,r14)
	bra loc_ce3081E
	mov 0x01,r2

loc_ce30804:
	mov.w @(0x5E,PC),r0
	mov 0x02,r1
	mov 0x0B,r3
	mov.b r1,@(r0,r14)
	add 0x49,r0
	mov 0x16,r5
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(0x4E,PC),r0
	mov 0x02,r2
	mov.l @(0x5C,PC),r3
	mov.l r3,@(r0,r14)

loc_ce3081E:
	mov.w @(0x48,PC),r0
	mov.b r2,@(r0,r14)

loc_CE30822:
	mov.w @(loc_ce3086C,pc),r0 ; r0 set to 0x1AC
	mov 0x0A,r5 ; r5 set to 0x0A
	mov.l @(ptr_CE3087C_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
	mov.w @(loc_ce30866,pc),r0 ; r0 set to 0x158
	mov.l @(ptr_CE30880_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r12
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_CE30854:
	mov.w @(loc_ce30870,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE30862
	bra loc_CE309E8
	nop

loc_CE30862:
	bra loc_CE3088C
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30866:
	#data 0x0158
loc_ce30868:
	#data 0x03F4
loc_ce3086A:
	#data 0x01A7
loc_ce3086C:
	#data 0x01AC
loc_ce3086E:
	#data 0x01E8
loc_ce30870:
	#data 0x01FE
	#align4

ptr_CE30874_to_Stn_MKChain:
	#data Stn_MKChain
ptr_CE30878_to_Stn_HKChain:
	#data Stn_HKChain
ptr_CE3087C_to_extern_8C2896B0:
	#data extern_8C2896B0
ptr_CE30880_to_fn_extern_8C034E8C:
	#data fn_extern_8C034E8C
ptr_CE30884_to_extern_8C04223A:
	#data extern_8C04223A
ptr_CE30888_to_Stn_LKChain:
	#data Stn_LKChain

;==============================================
loc_CE3088C:
	mov.w @(loc_ce3096E,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x0B,r4 ; r4 set to 0x0B
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(ptr_CE3097C_to_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_CE308B2
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_CE308F0
	cmp/eq 0x02,r0
	bt loc_CE3092A
	bra loc_ce309A4
	nop

loc_CE308B2:
	mov.w @(loc_ce30970,pc),r0 ; r0 set to 0x159
	mov 0x0C,r3 ; r3 set to 0x0C
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r4,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x158
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30972,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_CE308D6
	mov.w @(loc_ce30974,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30980_to_Crc_LPChain,pc),r3 ; r3 set to 0xCE3277C
	bra loc_CE308DC
	mov.l r3,@(r0,r14)

loc_CE308D6:
	mov.w @(loc_ce30974,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30984_to_Air_LPChain,pc),r1 ; r1 set to 0xCE32794
	mov.l r1,@(r0,r14)

loc_CE308DC:
	mov.w @(loc_ce30976,pc),r0 ; r0 set to 0x1A7, r0 set to 0x1A7
	mov.b r13,@(r0,r14)
	bsr loc_CE30480
	mov r14,r4
	mov.l @(ptr_CE30988_to_fn_extern_8C06B364,pc),r2 ; r2 set to 0x8C06B364, r2 set to 0x8C06B364
	mov 0x02,r5 ; r5 set to 0x02, r5 set to 0x02
	jsr @r2
	mov r14,r4
	bra loc_ce309A4
	nop

loc_CE308F0:
	mov.w @(loc_ce30970,pc),r0 ; r0 set to 0x159
	mov 0x01,r3 ; r3 set to 0x01
	mov 0x0D,r2 ; r2 set to 0x0D
	mov.b r4,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x158
	mov.b r3,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r2,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30972,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_CE30916
	mov.w @(loc_ce30974,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE3098C_to_Crc_MPChain,pc),r3 ; r3 set to 0xCE32780
	bra loc_CE3091C
	mov.l r3,@(r0,r14)

loc_CE30916:
	mov.w @(loc_ce30974,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30990_to_Air_MPChain,pc),r1 ; r1 set to 0xCE32798
	mov.l r1,@(r0,r14)

loc_CE3091C:
	mov.w @(loc_ce30976,pc),r0 ; r0 set to 0x1A7, r0 set to 0x1A7
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	mov.b r3,@(r0,r14)
	bsr loc_CE30480
	mov r14,r4
	bra loc_ce309A4
	nop

loc_CE3092A:
	mov.w @(loc_ce30970,pc),r0 ; r0 set to 0x159
	mov 0x02,r3 ; r3 set to 0x02
	mov 0x0E,r2 ; r2 set to 0x0E
	mov.b r4,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x158
	mov.b r3,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r2,@(r0,r14)
	add 0x59,r0 ; r0 set to 0x1FA
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	mov.w @(loc_ce30978,pc),r2 ; r2 set to 0x1000
	extu.w r3,r3
	tst r2,r3
	bt loc_CE30954
	mov.w @(loc_ce3097A,pc),r0 ; r0 set to 0x158
	mov 0x05,r3 ; r3 set to 0x05
	mov 0x41,r1 ; r1 set to 0x41
	mov.b r3,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	bra loc_CE30958
	mov.b r1,@(r0,r14)

loc_CE30954:
	bsr loc_CE30480
	mov r14,r4

loc_CE30958:
	mov 0x16,r5 ; r5 set to 0x16, r5 set to 0x16
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30972,pc),r0 ; r0 set to 0x1FC, r0 set to 0x1FC
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce30998
	mov.w @(loc_ce30974,pc),r0 ; r0 set to 0x3F4, r0 set to 0x3F4
	mov.l @(ptr_CE30994_to_Crc_HPChain,pc),r3 ; r3 set to 0xCE32784, r3 set to 0xCE32784
	bra loc_ce3099E
	mov.l r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3096E:
	#data 0x01E8
loc_ce30970:
	#data 0x0159
loc_ce30972:
	#data 0x01FC
loc_ce30974:
	#data 0x03F4
loc_ce30976:
	#data 0x01A7
loc_ce30978:
	#data 0x1000
loc_ce3097A:
	#data 0x0158
	#align4

ptr_CE3097C_to_extern_8C04223A:
	#data extern_8C04223A
ptr_CE30980_to_Crc_LPChain:
	#data Crc_LPChain
ptr_CE30984_to_Air_LPChain:
	#data Air_LPChain
ptr_CE30988_to_fn_extern_8C06B364:
	#data fn_extern_8C06B364
ptr_CE3098C_to_Crc_MPChain:
	#data Crc_MPChain
ptr_CE30990_to_Air_MPChain:
	#data Air_MPChain
ptr_CE30994_to_Crc_HPChain:
	#data Crc_HPChain

;==============================================
loc_ce30998:
	mov.w @(0xC8,PC),r0
	mov.l @(0xD8,PC),r1
	mov.l r1,@(r0,r14)

loc_ce3099E:
	mov.w @(0xC4,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)

loc_ce309A4:
	mov.w @(0xC0,PC),r0
	mov 0x0B,r5
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
	mov.w @(0xA2,PC),r0
	mov.l @(0xB4,PC),r2
	mov.b @(r0,r14),r6
	jsr @r2
	mov r14,r4
	mov.w @(0x9A,PC),r0
	mov.b @(r0,r14),r0
	tst 0x0F,r0
	bt loc_ce309de
	mov.w @(0x92,PC),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)

loc_ce309DE:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_CE309E8:
	mov.w @(loc_ce30A6E,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(ptr_CE30A80_to_extern_8C04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_CE30A0C
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt loc_CE30A38
	cmp/eq 0x02,r0
	bt loc_ce30A94
	bra loc_ce30ADA
	nop

loc_CE30A0C:
	mov.w @(loc_ce30A6A,pc),r0 ; r0 set to 0x158
	mov 0x0F,r3 ; r3 set to 0x0F
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30A70,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_CE30A2C
	mov.w @(loc_ce30A64,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30A84_to_Crc_LKChain,pc),r3 ; r3 set to 0xCE32788
	bra loc_CE30A32
	mov.l r3,@(r0,r14)

loc_CE30A2C:
	mov.w @(loc_ce30A64,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30A88_to_Air_LKChain,pc),r1 ; r1 set to 0xCE327A0
	mov.l r1,@(r0,r14)

loc_CE30A32:
	mov.w @(loc_ce30A66,pc),r0 ; r0 set to 0x1A7, r0 set to 0x1A7
	bra loc_ce30ADA
	mov.b r13,@(r0,r14)

loc_CE30A38:
	mov.w @(loc_ce30A6A,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x10,r3 ; r3 set to 0x10
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(loc_ce30A70,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf loc_CE30A5A
	mov.w @(loc_ce30A64,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30A8C_to_Crc_MKChain,pc),r3 ; r3 set to 0xCE3278C
	bra loc_CE30A60
	mov.l r3,@(r0,r14)

loc_CE30A5A:
	mov.w @(loc_ce30A64,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30A90_to_Air_MKChain,pc),r1 ; r1 set to 0xCE327A4
	mov.l r1,@(r0,r14)

loc_CE30A60:
	bra loc_ce30AD6
	mov 0x01,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30A64:
	#data 0x03F4
loc_ce30A66:
	#data 0x01A7
loc_ce30A68:
	#data 0x01AC
loc_ce30A6A:
	#data 0x0158
loc_ce30A6c:
	#data 0x01D6
loc_ce30A6E:
	#data 0x01E8
loc_ce30A70:
	#data 0x01FC
	#align4

ptr_CE30A74_to_Air_HPChain:
	#data Air_HPChain
loc_ce30A78:
	#data extern_8C2896B0
loc_ce30A7c:
	#data fn_extern_8C034E8C
ptr_CE30A80_to_extern_8C04223A:
	#data extern_8C04223A
ptr_CE30A84_to_Crc_LKChain:
	#data Crc_LKChain
ptr_CE30A88_to_Air_LKChain:
	#data Air_LKChain
ptr_CE30A8C_to_Crc_MKChain:
	#data Crc_MKChain
ptr_CE30A90_to_Air_MKChain:
	#data Air_MKChain

;==============================================
loc_ce30A94:
	mov.w @(0xC2,PC),r0
	mov 0x02,r1
	mov 0x11,r3
	mov.b r1,@(r0,r14)
	add 0x49,r0
	mov.b r3,@(r0,r14)
	add 0x59,r0
	mov.w @(r0,r14),r2
	mov.w @(0xB4,PC),r3
	extu.w r2,r2
	tst r3,r2
	bt.s loc_ce30aba
	mov 0x16,r5
	mov.w @(0xA8,PC),r0
	mov 0x05,r2
	mov 0x12,r1
	mov.b r2,@(r0,r14)
	add 0x49,r0
	mov.b r1,@(r0,r14)

loc_ce30ABA:
	jsr @r12
	mov r14,r4
	mov.w @(0x9C,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce30ace
	mov.w @(0x96,PC),r0
	mov.l @(0xA0,PC),r3
	bra loc_ce30ad4
	mov.l r3,@(r0,r14)

loc_ce30ACE:
	mov.w @(0x8E,PC),r0
	mov.l @(0x9C,PC),r1
	mov.l r1,@(r0,r14)

loc_ce30AD4:
	mov 0x02,r3

loc_ce30AD6:
	mov.w @(0x88,PC),r0
	mov.b r3,@(r0,r14)

loc_ce30ADA:
	mov.w @(0x86,PC),r0
	mov 0x0C,r5
	mov.l @(0x94,PC),r3
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
	mov.w @(0x5C,PC),r0
	mov.l @(0x78,PC),r2
	mov.b @(r0,r14),r6
	jsr @r2
	mov r14,r4
	mov.w @(0x5E,PC),r0
	mov.b @(r0,r14),r0
	tst 0xF0,r0
	bt loc_ce30b14
	mov.w @(0x56,PC),r0
	mov.b @(r0,r14),r2
	add 0xF0,r2
	mov.b r2,@(r0,r14)

loc_ce30B14:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce30B1E:
	mov.w @(0x46,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_ce30b2e
	mov.w @(0x3C,PC),r0
	mov.b @(r0,r4),r0
	tst 0x0F,r0
	bf loc_ce30b3e

loc_ce30B2E:
	mov.w @(0x36,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_ce30b42
	mov.w @(0x2C,PC),r0
	mov.b @(r0,r4),r0
	tst 0xF0,r0
	bt loc_ce30b42

loc_ce30B3E:
	bra loc_ce30854
	nop

loc_ce30B42:
	rts
	nop

;----------------------------------------------
loc_CE30B46:
	mov.w @(loc_ce30B6A,pc),r0 ; r0 set to 0x1FF
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(ptr_CE30B7C_to_ptr_CE3287C_to_loc_CE30B8E,pc),r0 ; r0 set to 0xCE3287C
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce30b5a:
	#data 0x0158
loc_ce30b5c:
	#data 0x1000
loc_ce30b5e:
	#data 0x01FC
loc_ce30b60:
	#data 0x03F4
loc_ce30b62:
	#data 0x01A7
loc_ce30b64:
	#data 0x01AC
loc_ce30b66:
	#data 0x01D6
loc_ce30b68:
	#data 0x01FE
loc_ce30B6A:
	#data 0x01FF
	#align4

ptr_CE30B6C_to_Crc_HKChain:
	#data Crc_HKChain
ptr_CE30B70_to_Air_HKChain:
	#data Air_HKChain
loc_ce30b74:
	#data extern_8C2896B0
loc_ce30b78:
	#data fn_extern_8C034E8C
ptr_CE30B7C_to_ptr_CE3287C_to_loc_CE30B8E:
	#data ptr_CE3287C_to_loc_CE30B8E

;==============================================
loc_ce30B80:
	sts.l pr,@-r15
	mov.l @(0x114,PC),r3
	jsr @r3
	mov.l r4,@-r15
	mov.l @r15,r4
	add 0x04,r15
	lds.l @r15+,pr

loc_CE30B8E:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(ptr_CE30C9C_to_extern_8C052C84,pc),r3 ; r3 set to 0x8C052C84
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
	mov.w @(loc_ce30C8A,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE30BF6
	mov.w @(loc_ce30C8C,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE30BEE
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE30D50
	mov.l @r15+,r14

loc_CE30BEE:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE30CF4
	mov.l @r15+,r14

loc_CE30BF6:
	mov.w @(loc_ce30C8C,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE30C08
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE30CAC
	mov.l @r15+,r14

loc_CE30C08:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_ce30C10
	mov.l @r15+,r14

loc_ce30C10:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0x74,PC),r13
	sts.l pr,@-r15
	add r14,r13
	mov.b @r13,r3
	tst r3,r3
	bt loc_ce30c28
	mov.w @(0x6A,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)

loc_ce30C28:
	mov.w @(0x66,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce30c3e
	cmp/eq 0x00,r0
	bt loc_ce30c6a
	cmp/eq 0x01,r0
	bt loc_ce30c6a
	bra loc_ce30c82
	nop

loc_ce30C3E:
	mov.l @(0x60,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_ce30c76
	mov.w @(0x46,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce30c82
	mov 0x00,r3
	mov.b r3,@(r0,r14
	mov.b @r13,r2
	tst r2,r2
	bf loc_ce30c82
	lds.l @r15+,pr
	mov.l @(0x44,PC),r3
	mov r14,r4
	mov 0x00,r5
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_ce30C6A:
	mov.l @(0x34,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30c82

loc_ce30C76:
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_ce30C82:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce30C8A:
	#data 0x01FE
loc_ce30C8C:
	#data 0x01F9
loc_ce30C8e:
	#data 0x02A4
loc_ce30C90:
	#data 0x01EC
loc_ce30C92:
	#data 0x01E8
loc_ce30C94:
	#data 0x0141
	#align4

loc_ce30C98:
	#data extern_8C0511E2
ptr_CE30C9C_to_extern_8C052C84:
	#data extern_8C052C84
loc_ce30Ca0:
	#data fn_extern_8C034DEE
loc_ce30Ca4:
	#data fn_extern_8C06B364
loc_ce30Ca8:
	#data fn_extern_8C051648

;==============================================
loc_CE30CAC:
	mov.w @(loc_ce30D74,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.w @(loc_ce30D72,pc),r4 ; r4 set to 0x2A4
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_ce30CCC
	add r14,r4 ; r4 ??? bc r14 is ???
	cmp/eq 0x01,r0
	bt loc_ce30CCC
	cmp/eq 0x02,r0
	bt loc_CE30CD8
	bra loc_CE30CEE
	nop

loc_ce30CCC:
	mov.b @r4,r3
	tst r3,r3
	bt loc_ce30cd8
	mov.w @(0xA0,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)

loc_CE30CD8:
	mov.l @(ptr_CE30D7C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE30CEE
	lds.l @r15+,pr
	mov.l @(ptr_CE30D80_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE30CEE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_CE30CF4:
	mov.w @(loc_ce30D74,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_CE30D10
	cmp/eq 0x00,r0
	bt loc_ce30D34
	cmp/eq 0x01,r0
	bt loc_ce30D34
	bra loc_CE30D4A
	nop

loc_CE30D10:
	mov.l @(ptr_CE30D7C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_CE30D40
	mov.w @(loc_ce30D78,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_CE30D4A
	mov 0x00,r3 ; r3 set to 0x00
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov 0x01,r5 ; r5 set to 0x01
	lds.l @r15+,pr
	mov.l @(ptr_CE30D84_to_fn_extern_8C06B364,pc),r3 ; r3 set to 0x8C06B364
	jmp @r3
	mov.l @r15+,r14

loc_ce30D34:
	mov.l @(0x44,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30d4a

loc_CE30D40:
	lds.l @r15+,pr
	mov.l @(ptr_CE30D80_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE30D4A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_CE30D50:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(ptr_CE30D7C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE30D6A
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(ptr_CE30D80_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_CE30D6A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_ce30D72:
	#data 0x02A4
loc_ce30D74:
	#data 0x01E8
loc_ce30d76:
	#data 0x01EC
loc_ce30D78:
	#data 0x0141
	#align4

ptr_CE30D7C_to_fn_extern_8C034DEE:
	#data fn_extern_8C034DEE
ptr_CE30D80_to_fn_extern_8C051648:
	#data fn_extern_8C051648
ptr_CE30D84_to_fn_extern_8C06B364:
	#data fn_extern_8C06B364

;==============================================
loc_ce30D88:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(0xE8,PC),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_CE30D9E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE30E80_to_fn_extern_8C04FEA8,pc),r3 ; r3 set to 0x8C04FEA8
	jsr @r3
	mov r4,r14
	mov.l @(ptr_CE30E84_to_fn_extern_8C050048,pc),r2 ; r2 set to 0x8C050048
	jsr @r2
	mov r14,r4
	mov.w @(loc_ce30E6E,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE30DC0
	bsr loc_CE30E4C
	mov r14,r4
	bra loc_CE30DC4
	nop

loc_CE30DC0:
	bsr loc_ce30DE0
	mov r14,r4

loc_CE30DC4:
	mov.l @(ptr_CE30E88_to_fn_extern_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2, r3 set to 0x8C052CE2
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_CE30DDA
	lds.l @r15+,pr
	mov.l @(ptr_CE30E8C_to_fn_extern_8C052DAC,pc),r3 ; r3 set to 0x8C052DAC, r3 set to 0x8C052DAC
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE30DDA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce30DE0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x88,PC),r4
	sts.l pr,@-r15
	add r14,r4
	mov.b @r4,r3
	tst r3,r3
	bt loc_ce30df6
	mov.w @(0x7E,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)

loc_ce30DF6:
	mov.w @(0x7A,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce30e0c
	cmp/eq 0x00,r0
	bt loc_ce30e30
	cmp/eq 0x01,r0
	bt loc_ce30e30
	bra loc_ce30e46
	nop

loc_ce30E0C:
	mov.l @(0x80,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_ce30e3c
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce30e46
	mov 0x00,r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov 0x06,r5
	lds.l @r15+,pr
	mov.l @(0x68,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_ce30E30:
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30e46

loc_ce30E3C:
	lds.l @r15+,pr
	mov.l @(0x58,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce30E46:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_CE30E4C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(ptr_CE30E90_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE30E66
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(ptr_CE30E98_to_fn_extern_8C05176E,pc),r3 ; r3 set to 0x8C05176E
	jmp @r3
	lds.l @r15+,pr

loc_CE30E66:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_ce30E6E:
	#data 0x01FE
loc_ce30E70:
	#data 0x02A4
loc_ce30E72:
	#data 0x01EC
loc_ce30E74:
	#data 0x01E8
loc_ce30E76:
	#data 0x0141
	#align4

loc_ce30E78:
	#data extern_8C050084
loc_ce30E7c:
	#data extern_8C04FF88
ptr_CE30E80_to_fn_extern_8C04FEA8:
	#data fn_extern_8C04FEA8
ptr_CE30E84_to_fn_extern_8C050048:
	#data fn_extern_8C050048
ptr_CE30E88_to_fn_extern_8C052CE2:
	#data fn_extern_8C052CE2
ptr_CE30E8C_to_fn_extern_8C052DAC:
	#data fn_extern_8C052DAC
ptr_CE30E90_to_fn_extern_8C034DEE:
	#data fn_extern_8C034DEE
loc_ce30E94:
	#data fn_extern_8C06B364
ptr_CE30E98_to_fn_extern_8C05176E:
	#data fn_extern_8C05176E

;==============================================
loc_ce30E9C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_ce30efa
	mov.l @(0x128,PC),r3
	jsr @r3
	mov r14,r4
	mov.b @(0x6,r14),r0
	mov 0x42,r3
	mov 0x01,r2
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x14,r5
	mov.w @(0x10A,PC),r0
	mov 0x09,r6
	mov.b r3,@(r0,r14)
	add 0x58,r0
	mov.l @(0x114,PC),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0xFC,PC),r0
	mov 0x00,r4
	mov.l @(0x10C,PC),r3
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
	mov.l @(0xF0,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(0xF0,PC),r3
	mov 0x05,r5
	jsr @r3
	mov r14,r4

loc_ce30EFA:
	mov.w @(0xCE,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_ce30f0a
	mov.l @(0xE0,PC),r2
	jsr @r2
	mov r14,r4

loc_ce30F0A:
	mov 0x5C,r1
	mov.l @(0xDC,PC),r3
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
	mov.l @(0xA4,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce30f5e
	lds.l @r15+,pr
	mov.l @(0x9C,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_ce30F5E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
PL09_FwdDash:
	mov r4,r3
	mov.l @(ptr_CE30FF8_to_ptr_CE3288C_to_loc_CE30F76,pc),r1 ; r1 set to 0xCE3288C
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE30F76:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE30FF0_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.w @(loc_ce30FCE,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_CE30FC2
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
	mov.w @(loc_ce30FD0,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_CE30FAE
	mova @(loc_ce30FFC,pc),r0  ; r0 set to 0xCE30FFC
	bra loc_CE30FB2
	fmov.s @r0,fr3

loc_CE30FAE:
	mova @(loc_ce31000,pc),r0  ; r0 init to 0xCE31000
	fmov.s @r0,fr3

loc_CE30FB2:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
	mov r14,r4
	fmov.s fr3,@(r0,r14)
	mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	bra loc_CE31004
	mov.l @r15+,r14

loc_CE30FC2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce30FC8:
	#data 0x01A1
loc_ce30FCa:
	#data 0x01AC
loc_ce30FCc:
	#data 0x01FF
loc_ce30FCE:
	#data 0x0141
loc_ce30FD0:
	#data 0x01D2
	#align4

loc_ce30Fd4:
	#data fn_extern_8C052B4C
loc_ce30Fd8:
	#data fn_extern_8C034E8C
loc_ce30Fdc:
	#data extern_8C2896B0
loc_ce30Fe0:
	#data extern_8C04223A
loc_ce30Fe4:
	#data fn_extern_8C056DE4
loc_ce30Fe8:
	#data extern_8C0511E2
loc_ce30Fec:
	#data extern_8C052C84
ptr_CE30FF0_to_fn_extern_8C034DEE:
	#data fn_extern_8C034DEE
loc_ce30ff4:
	#data fn_extern_8C051648
ptr_CE30FF8_to_ptr_CE3288C_to_loc_CE30F76:
	#data ptr_CE3288C_to_loc_CE30F76
loc_ce30FFC:
	#data 0x41855555
loc_ce31000:
	#data 0xC1855555

loc_CE31004:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(ptr_CE3114C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
	cmp/pz r0
	bt loc_CE31082
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce31146,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE31068
	mova @(loc_ce31150,pc),r0  ; r0 set to 0xCE31150
	bra loc_CE3106C
	fmov.s @r0,fr3

loc_CE31068:
	mova @(loc_ce31154,pc),r0  ; r0 init to 0xCE31154
	fmov.s @r0,fr3

loc_CE3106C:
	mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
	mov.l @(ptr_CE31158_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
	mov r6,r5 ; r5 set to 0x02, r5 set to 0x02
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_CE31088
	mov.l @r15+,r14

loc_CE31082:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_CE31088:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(ptr_CE3114C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
	bt loc_CE310DC
	lds.l @r15+,pr
	mov.l @(ptr_CE3115C_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE310DC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
PL09_BckDash:
	mov r4,r3
	mov.l @(ptr_CE31160_to_ptr_CE32898_to_loc_CE310F4,pc),r1 ; r1 set to 0xCE32898
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE310F4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE3114C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.w @(loc_ce31148,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_CE31140
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce31146,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_CE3111A
	mova @(loc_ce31164,pc),r0  ; r0 set to 0xCE31164
	bra loc_CE3111E
	fmov.s @r0,fr3

loc_CE3111A:
	mova @(loc_ce31168,pc),r0  ; r0 init to 0xCE31168
	fmov.s @r0,fr3

loc_CE3111E:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
	mov r14,r4
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fldi0 fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_ce3116C,pc),r0  ; r0 set to 0xCE3116C, r0 set to 0xCE3116C
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mova @(loc_ce31170,pc),r0  ; r0 set to 0xCE31170, r0 set to 0xCE31170
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6C
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	bra loc_CE31174
	mov.l @r15+,r14

loc_CE31140:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce31146:
	#data 0x01D2
loc_ce31148:
	#data 0x0141
	#align4

ptr_CE3114C_to_fn_extern_8C034DEE:
	#data fn_extern_8C034DEE
loc_ce31150:
	#data 0x40D55555
loc_ce31154:
	#data 0xC0D55555
ptr_CE31158_to_fn_extern_8C034E8C:
	#data fn_extern_8C034E8C
ptr_CE3115C_to_fn_extern_8C051648:
	#data fn_extern_8C051648
ptr_CE31160_to_ptr_CE32898_to_loc_CE310F4:
	#data ptr_CE32898_to_loc_CE310F4
loc_ce31164:
	#data 0xC1555555
loc_ce31168:
	#data 0x41555555
loc_ce3116C:
	#data 0x40CDB6DB
loc_ce31170:
	#data 0xBF092492

;==============================================
loc_CE31174:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(ptr_CE312D0_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
	mov.w @(loc_ce312C8,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_CE31204
	mov.b @(0x06,r14),r0
	mov.l @(ptr_CE312D4_to_extern_8C0511B4,pc),r3 ; r3 set to 0x8C0511B4
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce312C8,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_ce312CA,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_CE311E6
	mova @(loc_ce312D8,pc),r0  ; r0 set to 0xCE312D8
	bra loc_CE311EA
	fmov.s @r0,fr3

loc_CE311E6:
	mova @(loc_ce312DC,pc),r0  ; r0 init to 0xCE312DC
	fmov.s @r0,fr3

loc_CE311EA:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C
	fldi0 fr4
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6C
	mov r14,r4
	fmov.s fr4,@(r0,r14)
	lds.l @r15+,pr
	bra loc_ce3120A
	mov.l @r15+,r14

loc_CE31204:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce3120A:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0xB8,PC),r3
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
	mov.w @(0x7A,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x06,r0
	bf loc_ce31262
	mov.b @(0x6,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x6A,PC),r0
	mov.b r3,@(r0,r14)

loc_ce31262:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_CE31268:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(ptr_CE312D0_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE31282
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(ptr_CE312E0_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_CE31282:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_CE3128A:
	mov r4,r3
	mov.l @(ptr_CE312E4_to_ptr_CE328A8_to_loc_CE3129C,pc),r1 ; r1 set to 0xCE328A8
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_CE3129C:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x01,r3 ; r3 set to 0x01
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x12,r5 ; r5 set to 0x12
	mov r2,r6 ; r6 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce312CE,pc),r0 ; r0 set to 0x12C
	mov.b r3,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x130
	mov.l @(ptr_CE312E8_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.w r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(ptr_CE312EC_to_fn_extern_8C0C0C98,pc),r2 ; r2 set to 0x8C0C0C98
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce312C8:
	#data 0x041C
loc_ce312CA:
	#data 0x01D2
loc_ce312Cc:
	#data 0x0141
loc_ce312CE:
	#data 0x012C
	#align4

ptr_CE312D0_to_fn_extern_8C034DEE:
	#data fn_extern_8C034DEE
ptr_CE312D4_to_extern_8C0511B4:
	#data extern_8C0511B4
loc_ce312D8:
	#data 0xC0D55555
loc_ce312DC:
	#data 0x40D55555
ptr_CE312E0_to_fn_extern_8C051648:
	#data fn_extern_8C051648
ptr_CE312E4_to_ptr_CE328A8_to_loc_CE3129C:
	#data ptr_CE328A8_to_loc_CE3129C
ptr_CE312E8_to_fn_extern_8C034E8C:
	#data fn_extern_8C034E8C
ptr_CE312EC_to_fn_extern_8C0C0C98:
	#data fn_extern_8C0C0C98

;==============================================
loc_ce312F0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xEC,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31310
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xD4,PC),r0
	mov.b @(r0,r14),r3
	mov.w @(0xD2,PC),r0
	extu.b r3,r3
	mov.w r3,@(r0,r14)

loc_ce31310:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_CE31316:
	mov.b @(0x06,r4),r0
	tst r0,r0
	bt loc_CE31320
	bra loc_CE31394
	nop

loc_CE31320:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(ptr_CE313E8_to_fn_extern_8C0514B8,pc),r3 ; r3 set to 0x8C0514B8
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov 0x02,r2 ; r2 set to 0x02
	cmp/ge r2,r0
	bf loc_ce3134A
	lds.l @r15+,pr
	mov.l @(ptr_CE313EC_to_fn_extern_8C034E8C,pc),r1 ; r1 set to 0x8C034E8C
	mov r2,r6 ; r6 set to 0x02
	mov 0x13,r5 ; r5 set to 0x13
	mov r14,r4
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_ce3134A:
	mov 0x20,r0
	mov.b @(r0,r14),r4
	mov.l @(0xA0,PC),r0
	extu.b r4,r13
	extu.b r4,r4
	tst r4,r4
	bf.s loc_ce31384
	mov.b @(r0,r13),r13
	mov.l @(0x98,PC),r2
	jsr @r2
	nop
	mov.l @(0x94,PC),r3
	mov r0,r1
	jsr @r3
	mov 0x03,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r4
	mov.l @(0x8C,PC),r0
	exts.w r4,r13
	mov.b @(r0,r13),r13
	exts.w r4,r0
	cmp/eq 0x02,r0
	bt loc_ce31384
	mov.w @(0x1C,r14),r0
	mov.l @(0x80,PC),r3
	mov r0,r5
	jsr @r3
	mov r14,r4

loc_ce31384:
	lds.l @r15+,pr
	mov r13,r6
	mov.l @(0x60,PC),r2
	mov 0x13,r5
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_CE31394:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE313E4_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.l @(ptr_CE31404_to_fn_extern_8C046C8A,pc),r2 ; r2 set to 0x8C046C8A
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_CE313B2
	lds.l @r15+,pr
	mov.l @(ptr_CE31408_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE313B2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
PL09_SpecPRG:
	mov.w @(loc_ce313E2,pc),r0 ; r0 set to 0x1E9
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(ptr_CE3140C_to_Table_SpecialPRG,pc),r0 ; r0 set to 0xCE328B8
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
Avalanche_PRG:
	mov r4,r3
	mov.l @(ptr_CE31410_to_Avalanche_States,pc),r1 ; r1 set to 0xCE328D4
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce313de:
	#data 0x01D2
loc_ce313e0:
	#data 0x0130
loc_ce313E2:
	#data 0x01E9
	#align4

ptr_CE313E4_to_fn_extern_8C034DEE:
	#data fn_extern_8C034DEE
ptr_CE313E8_to_fn_extern_8C0514B8:
	#data fn_extern_8C0514B8
ptr_CE313EC_to_fn_extern_8C034E8C:
	#data fn_extern_8C034E8C
ptr_CE313F0_to_loc_CE328B3:
	#data loc_CE328B3
ptr_CE313F4:
	#data extern_8C03319E
ptr_CE313F8:
	#data extern_8C12939C
ptr_CE313FC_to_loc_ce328B0:
	#data loc_ce328B0
loc_CE31400:
	#data extern_8C0C12D4
ptr_CE31404_to_fn_extern_8C046C8A:
	#data fn_extern_8C046C8A
ptr_CE31408_to_fn_extern_8C051648:
	#data fn_extern_8C051648
ptr_CE3140C_to_Table_SpecialPRG:
	#data Table_SpecialPRG
ptr_CE31410_to_Avalanche_States:
	#data Avalanche_States

;==============================================
Avalanche_State0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(ptr_CE31490_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4

	mov.w @(loc_ce3148C,pc),r0 ; r0 set to 0x1F9
	mov.l @(ptr_CE31494_to_extern_8C2896B0,pc),r4 ; r4 set to 0x8C2896B0
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf/s loc_ce314A0

	mov 0x00,r13 ; r13 set to 0x00
	mov.w @(loc_ce3148E,pc),r0 ; r0 set to 0x1A3
	mov 0x05,r5 ; r5 set to 0x05
	mov.b @(r0,r14),r2
	add 0xFE,r0 ; r0 set to 0x1A1
	add 0x32,r2
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r4,r3 ; r3 ??
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov.l @(ptr_CE31498_to_fn_extern_8C056DE4,pc),r3 ; r3 set to 0x8C056DE4
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mova @(loc_ce3149C,pc),r0  ; r0 set to 0xCE3149C
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r14),fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s @(r0,r14),fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14)
	bra loc_ce314F2
	mov 0x02,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce3148C:
	#data 0x01F9
loc_ce3148E:
	#data 0x01A3
	#align4

ptr_CE31490_to_fn_extern_8C05218A:
	#data fn_extern_8C05218A
ptr_CE31494_to_extern_8C2896B0:
	#data extern_8C2896B0
ptr_CE31498_to_fn_extern_8C056DE4:
	#data fn_extern_8C056DE4
loc_ce3149C:
	#data 0x41000000

;==============================================
loc_ce314A0:
	mov.w @(0x142,PC),r0
	mov 0x05,r5
	mov.b @(r0,r14),r2
	add 0xFE,r0
	add 0x30,r2
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r4,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3
	mov.l @(0x124,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x116,PC),r0
	mov.l @(0x120,PC),r3
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
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
	mov r13,r0
	nop

loc_ce314F2:
	mov.l @(0x104,PC),r3
	mov 0x15,r5
	mov.w r0,@(0x1E,r14)
	mov 0x00,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

;ce31506
Avalanche_State1:
	mov.w @(0xE0,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce31580
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
	mov.w @(0x96,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_ce31580
	mov.w @(0x8A,PC),r0
	fldi0 fr4
	fmov @(r0,r14),fr3
	mov 0x38,r0
	mov.l @(0x98,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x6C,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)


	mov.w @(0x68,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce3159c
	mov 0x00,r3
	mov.b r3,@(r0,r14
	mov.w @(0x1E,r14),r0
	mov r0,r5
	mov.w @(0x52,PC),r0
	mov.b @(r0,r14),r3
	add r3,r5
	mov.l @(0x68,PC),r3
	jsr @r3
	mov r14,r4

loc_ce3159C:
	mov.l @(0x64,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce315ce
	mov.w @(0x3E,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_ce315c4
	mova @(0x54,PC),r0
	mov.l @(0x54,PC),r3
	fmov @r0,fr3
	mov 0x6C,r0
	mov r14,r4
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_ce315C4:
	lds.l @r15+,pr
	mov.l @(0x48,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce315CE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
GroundIceBeam_PRG:
	mov r4,r3
	mov.l @(ptr_CE31614_to_GroundIceBeam_States,pc),r1 ; r1 set to 0xCE328DC
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce315e6:
	#data 0x01A3
loc_ce315e8:
	#data 0x041C
loc_ce315ea:
	#data 0x01F9
loc_ce315ec:
	#data 0x0141
	#align4

loc_CE315f0:
	#data fn_extern_8C056DE4
loc_CE315f4:
	#data fn_extern_8C05115A
loc_CE315f8:
	#data fn_extern_8C034E8C
loc_CE315fc:
	#data extern_8C0511B4
loc_CE31600:
	#data extern_8C06BBBC
loc_CE31604:
	#data fn_extern_8C034DEE
loc_CE31608:
	#data 0xBF4DB6DB
loc_CE3160c:
	#data fn_extern_8C05176E
loc_CE31610:
	#data fn_extern_8C051648
ptr_CE31614_to_GroundIceBeam_States:
	#data GroundIceBeam_States

;==============================================
GroundIce_State0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(ptr_CE31788_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_ce31780,pc),r0 ; r0 set to 0x41C
	mov 0x00,r13 ; r13 set to 0x00
	mov.l @(ptr_CE3178C_to_fn_extern_8C05115A,pc),r3 ; r3 set to 0x8C05115A
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_ce31782,pc),r0 ; r0 set to 0x1F9
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_ce31784,pc),r0 ; r0 set to 0x1A3
	mov 0x05,r5 ; r5 set to 0x05
	mov.l @(ptr_CE31790_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.b @(r0,r14),r2
	add 0xFE,r0 ; r0 set to 0x1A1
	add 0x34,r2
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
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
	mov.l @(ptr_CE31794_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4
	jsr @r2
	mov r14,r4
	mov.w @(loc_ce31784,pc),r0 ; r0 set to 0x1A3
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @(ptr_CE31798_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b @(r0,r14),r6
	add 0x06,r6
	jsr @r3
	mov r14,r4
	mov 0x28,r0 ; r0 set to 0x28
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
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	mov.l @r15+,r14

GroundIce_State1:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x6B
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	cmp/pl r0
	bt loc_ce316C6
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(ptr_CE31798_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C
	mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce31784,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x0A,r6
	jmp @r3
	mov.l @r15+,r14

loc_ce316C6:
	mov.l @(0xD4,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0xB6,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce316e4
	mov.w @(0xAC,PC),r0
	mov.l @(0xC8,PC),r3
	mov.b @(r0,r14),r5
	jsr @r3
	mov r14,r4
	mov.w @(0xA4,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)

loc_ce316E4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
GroundIce_State2:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(ptr_CE3179C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE31704
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(ptr_CE317A4_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

loc_CE31704:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
ArcticAttack_PRG:
	mov r4,r3
	mov.l @(ptr_CE317A8_to_ArcticAttack_States,pc),r1 ; r1 set to 0xCE328E8
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_ce3171E:
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
	mov.w @(0x26,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bt loc_ce3177c
	mov.w @(0x1A,PC),r0
	fldi0 fr4
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)

loc_ce3177C:
	rts
	nop

;----------------------------------------------
loc_ce31780:
	#data 0x041C
loc_ce31782:
	#data 0x01F9
loc_ce31784:
	#data 0x01A3
loc_ce31786:
	#data 0x0141
	#align4

ptr_CE31788_to_fn_extern_8C05218A:
	#data fn_extern_8C05218A
ptr_CE3178C_to_fn_extern_8C05115A:
	#data fn_extern_8C05115A
ptr_CE31790_to_extern_8C2896B0:
	#data extern_8C2896B0
ptr_CE31794_to_fn_extern_8C056DE4:
	#data fn_extern_8C056DE4
ptr_CE31798_to_fn_extern_8C034E8C:
	#data fn_extern_8C034E8C
ptr_CE3179C_to_fn_extern_8C034DEE:
	#data fn_extern_8C034DEE
loc_ce317a0:
	#data extern_8C06C430
ptr_CE317A4_to_fn_extern_8C051648:
	#data fn_extern_8C051648
ptr_CE317A8_to_ArcticAttack_States:
	#data ArcticAttack_States

;==============================================
;ce317AC
Arctic_State0:
	mov.w @(0x12E,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_ce317c8
	mov.w @(0x122,PC),r0
	mov 0x10,r3
	mov.w @(0x11C,PC),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)

loc_ce317C8:
	mov.b @(0x6,r14),r0
	mov 0x30,r3
	mov 0x00,r4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x10E,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x110,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x100,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0xE8,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_ce31838
	mov.l @(0xF4,PC),r2
	mov 0x16,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	mov.w @(0xD4,PC),r0
	mov 0x00,r3
	fldi0 fr4
	mov.b r3,@(r0,r14)
	mov.w @(0xCE,PC),r0
	mov.l @(0xE4,PC),r3
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	bra loc_ce31866
	nop

loc_ce31838:
	mov.l @(0xC0,PC),r3
	mov 0x16,r5
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	mova @(0xC0,PC),r0
	fmov @r0,fr4
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fmov @(r0,r14),fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)

loc_ce31866:
	mov 0x68,r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1E,r14)
	lds.l @r15+,pr
	mov.l @r15+,r14

;==============================================
;CE31874
Arctic_State1:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_ce318EA,pc),r0 ; r0 set to 0x3F8
	mov r4,r14
	mov 0x02,r3 ; r3 set to 0x02
	mov.b r3,@(r0,r14)
	mov 0x05,r2 ; r2 set to 0x05
	mov.w @(loc_ce318EC,pc),r0 ; r0 set to 0x328
	mov.b r2,@(r0,r14)
	mov.w @(loc_ce318DE,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_CE31896
	bra loc_CE31898
	mov 0x02,r3

loc_CE31896:
	mov 0x00,r3 ; r3 set to 0x00

loc_CE31898:
	mov.w @(loc_ce318EE,pc),r0 ; r0 set to 0x3F1, r0 set to 0x3F1
	mov.b r3,@(r0,r14)
	mov.l @(ptr_CE31908_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	bsr loc_ce3171E
	mov r14,r4
	mov.w @(loc_ce318F0,pc),r0 ; r0 set to 0x141, r0 set to 0x141
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???
	tst r3,r3
	bt loc_CE31930
	mov.b @(0x06,r14),r0
	mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
	mov.l @(ptr_CE3190C_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162, r3 set to 0x8C035162
	mov r4,r5 ; r5 set to 0x00, r5 set to 0x00
	add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce318F0,pc),r0 ; r0 set to 0x141, r0 set to 0x141
	mov.b r4,@(r0,r14)
	mov.w @(loc_ce318E2,pc),r0 ; r0 set to 0x3F0, r0 set to 0x3F0
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x3F1, r0 set to 0x3F1
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???
	mov.w @(loc_ce318E6,pc),r0 ; r0 set to 0x1F9, r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf/s loc_ce31914
	fldi0 fr4
	mova @(loc_ce31910,pc),r0  ; r0 set to 0xCE31910, r0 set to 0xCE31910
	fmov.s fr4,@r15
	bra loc_ce3191E
	fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce318DE:
	#data 0x0255
loc_ce318E0:
	#data 0x00FF
loc_ce318E2:
	#data 0x03F0
loc_ce318E4:
	#data 0x01A1
loc_ce318E6:
	#data 0x01F9
loc_ce318E8:
	#data 0x041C
loc_ce318EA:
	#data 0x03F8
loc_ce318EC:
	#data 0x0328
loc_ce318EE:
	#data 0x03F1
loc_ce318F0:
	#data 0x0141
	#align4

loc_ce318f4:
	#data extern_8C2896B0
loc_ce318f8:
	#data fn_extern_8C05218A
loc_ce318fc:
	#data fn_extern_8C034E8C
loc_ce31900:
	#data fn_extern_8C05115A
loc_ce31904:
	#data 0x41000000
ptr_CE31908_to_fn_extern_8C034DEE:
	#data fn_extern_8C034DEE
ptr_CE3190C_to_fn_extern_8C035162:
	#data fn_extern_8C035162
loc_ce31910:
	#data 0x43870000

;==============================================
loc_ce31914:
	mova @(0x108,PC),r0
	fmov @r0,fr3
	mova @(0x108,PC),r0
	fmov fr3,@r15
	fmov @r0,fr3

loc_ce3191E:
	mov 0x04,r0
	mov.l @(0x104,PC),r3
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	mov r15,r5
	fmov fr4,@(r0,r15)
	mov 0x01,r6
	jsr @r3
	mov r14,r4

loc_CE31930:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
;CE31938
Arctic_State2:
	mov.w @(loc_ce31A10,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov 0x05,r2 ; r2 set to 0x05
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(loc_ce31A12,pc),r0 ; r0 set to 0x328
	mov.b r2,@(r0,r14)
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x329
	mov.b r0,@(0x06,r14)
	bsr loc_ce3171E
	mov r14,r4
	mov.w @(loc_ce31A14,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt/s loc_CE31964
	mov 0x16,r5 ; r5 set to 0x16
	bra loc_CE31966
	mov 0x02,r6

loc_CE31964:
	mov 0x03,r6 ; r6 set to 0x03

loc_CE31966:
	lds.l @r15+,pr
	mov.l @(ptr_CE31A2C_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8C
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
;ce31970
Arctic_State3:
	mov.w @(0x9C,PC),r0
	mov 0x02,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x05,r2
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.w @(0x8E,PC),r0
	mov.l @(0xAC,PC),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	bsr loc_ce3171e
	mov r14,r4
	mov.w @(0x84,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_ce319a0
	mov 0x00,r13
	mov.l @(0x98,PC),r3
	mov.b r13,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_ce319A0:
	mov.w @(0x1E,r14),r0
	cmp/pz r0
	bf loc_ce319bc
	mov.l @(0x90,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_ce319bc
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)

loc_ce319BC:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_ce31a08
	mov.w @(0x4C,PC),r0
	mov.b r13,@(r0,r14)
	add 0xFF,r0
	mov.b r13,@(r0,r14)
	mov.w @(0x46,PC),r0
	mov.b r13,@(r0,r14)
	add 0x01,r0
	mov.b r13,@(r0,r14)
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt.s loc_ce319f6
	mov 0x16,r5
	mov.w @(0x2A,PC),r0
	mov.b @(r0,r14),r7
	bra loc_ce319fc
	mov 0x06,r6

loc_ce319F6:
	mov.w @(0x22,PC),r0
	mov 0x07,r6
	mov.b @(r0,r14),r7

loc_ce319FC:
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_ce31A08:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce31A10:
	#data 0x03F8
loc_ce31A12:
	#data 0x0328
loc_ce31A14:
	#data 0x01F9
loc_ce31A16:
	#data 0x0141
loc_ce31A18:
	#data 0x03F9
loc_ce31A1a:
	#data 0x0327
loc_ce31A1c:
	#data 0x0140
	#align4

loc_ce31A20:
	#data 0x41200000
loc_ce31A24:
	#data 0x4385EDB7
loc_ce31A28:
	#data extern_8C050834
ptr_CE31A2C_to_fn_extern_8C034E8C:
	#data fn_extern_8C034E8C
loc_ce31A30:
	#data fn_extern_8C034DEE
loc_ce31A34:
	#data extern_8C06B798
loc_ce31A38:
	#data extern_8C055D54
loc_ce31A3c:
	#data extern_8C034F54

;==============================================
;CE31A40
Arctic_State4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE31B20_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	bsr loc_ce3171E
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_CE31A78
	mov.w @(loc_ce31B18,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_CE31A6E
	lds.l @r15+,pr
	mov.l @(ptr_CE31B24_to_fn_extern_8C05176E,pc),r2 ; r2 set to 0x8C05176E
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE31A6E:
	lds.l @r15+,pr
	mov.l @(ptr_CE31B28_to_fn_extern_8C051648,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE31A78:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
IceFist_PRG:
	mov r4,r3
	mov.l @(ptr_CE31B2C_to_IceFist_States,pc),r1 ; r1 set to 0xCE328FC
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
IceFist_State0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(ptr_CE31B30_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_ce31B1A,pc),r0 ; r0 set to 0x41C
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x05,r5 ; r5 set to 0x05
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_ce31B18,pc),r0 ; r0 set to 0x1F9
	mov.b r3,@(r0,r14)
	mov.l @(ptr_CE31B34_to_fn_extern_8C056DE4,pc),r3 ; r3 set to 0x8C056DE4
	jsr @r3
	mov r14,r4
	mov.l @(ptr_CE31B38_to_fn_extern_8C05115A,pc),r2 ; r2 set to 0x8C05115A
	jsr @r2
	mov r14,r4
	mov.l @(ptr_CE31B3C_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x15,r5 ; r5 set to 0x15
	mov 0x05,r6 ; r6 set to 0x05
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

IceFist_State1:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE31B20_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE
	mov.w @(loc_ce31B1C,pc),r13 ; r13 set to 0x2A4, r13 set to 0x2A4
	jsr @r3
	add r14,r13 ; r13 ??? bc r14 is ???, r13 ??? bc r14 is ???
	exts.b r0,r0 ; r0 ??
	cmp/pz r0
	bt loc_CE31AFE
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	mov.l @(ptr_CE31B40_to_fn_extern_8C0C1104,pc),r2 ; r2 set to 0x8C0C1104, r2 set to 0x8C0C1104
	mov 0x03,r0 ; r0 set to 0x03, r0 set to 0x03
	mov.b r0,@(0x01,r13)
	mov.b r3,@r13
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(ptr_CE31B28_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648, r3 set to 0x8C051648
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_CE31AFE:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
AirIceBeam_PRG:
	mov r4,r3
	mov.l @(ptr_CE31B44_to_AirIceBeam_States,pc),r1 ; r1 set to 0xCE32904
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce31B18:
	#data 0x01F9
loc_ce31B1A:
	#data 0x041C
loc_ce31B1C:
	#data 0x02A4
	#align4

ptr_CE31B20_to_fn_extern_8C034DEE:
	#data fn_extern_8C034DEE
ptr_CE31B24_to_fn_extern_8C05176E:
	#data fn_extern_8C05176E
ptr_CE31B28_to_fn_extern_8C051648:
	#data fn_extern_8C051648
ptr_CE31B2C_to_IceFist_States:
	#data IceFist_States
ptr_CE31B30_to_fn_extern_8C05218A:
	#data fn_extern_8C05218A
ptr_CE31B34_to_fn_extern_8C056DE4:
	#data fn_extern_8C056DE4
ptr_CE31B38_to_fn_extern_8C05115A:
	#data fn_extern_8C05115A
ptr_CE31B3C_to_fn_extern_8C034E8C:
	#data fn_extern_8C034E8C
ptr_CE31B40_to_fn_extern_8C0C1104:
	#data fn_extern_8C0C1104
ptr_CE31B44_to_AirIceBeam_States:
	#data AirIceBeam_States

;==============================================
AirIceBeam_State0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(ptr_CE31C88_to_fn_extern_8C05218A,pc),r3 ; r3 set to 0x8C05218A
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	jsr @r3
	mov r14,r4
	mov.l @(ptr_CE31C8C_to_fn_extern_8C053082,pc),r2 ; r2 set to 0x8C053082
	jsr @r2
	mov r14,r4
	mov.w @(loc_ce31C82,pc),r0 ; r0 set to 0x1A3
	mov 0x00,r4 ; r4 set to 0x00
	mov 0x05,r5 ; r5 set to 0x05
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	add 0xFE,r0 ; r0 set to 0x1A1
	add 0x36,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(ptr_CE31C90_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(ptr_CE31C94_to_fn_extern_8C056DE4,pc),r2 ; r2 set to 0x8C056DE4
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.w @(loc_ce31C82,pc),r0 ; r0 set to 0x1A3
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @(ptr_CE31C98_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	xor 0x01,r0
	mov r0,r6
	add 0x08,r6
	jsr @r3
	mov r14,r4
	mova @(loc_ce31C9C,pc),r0  ; r0 set to 0xCE31C9C
	mov r14,r4
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r14),fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s @(r0,r14),fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x28,r0 ; r0 set to 0x28
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r14

AirIceBeam_State1:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x27
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??
	cmp/pl r0
	bt loc_ce31C00
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(ptr_CE31C98_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C
	mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_ce31C82,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	lds.l @r15+,pr
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???
	xor 0x01,r0
	mov r0,r6
	add 0x0C,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_ce31C00:
	mov.l @(0x9C,PC),r2
	jsr @r2
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
	mov.w @(0x42,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_ce31c5c
	mov.w @(0x36,PC),r0
	fldi0 fr4
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)

loc_ce31C5C:
	mov.w @(0x26,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce31c7c
	mov 0x00,r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	add 0x62,r0
	mov.b @(r0,r14),r0
	lds.l @r15+,pr
	xor 0x01,r0
	mov.l @(0x30,PC),r3
	mov r0,r5
	add 0x02,r5
	jmp @r3
	mov.l @r15+,r14

loc_ce31C7C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce31C82:
	#data 0x01A3
loc_ce31C84:
	#data 0x041C
loc_ce31C86:
	#data 0x0141
	#align4

ptr_CE31C88_to_fn_extern_8C05218A:
	#data fn_extern_8C05218A
ptr_CE31C8C_to_fn_extern_8C053082:
	#data fn_extern_8C053082
ptr_CE31C90_to_extern_8C2896B0:
	#data extern_8C2896B0
ptr_CE31C94_to_fn_extern_8C056DE4:
	#data fn_extern_8C056DE4
ptr_CE31C98_to_fn_extern_8C034E8C:
	#data fn_extern_8C034E8C
loc_ce31C9C:
	#data 0x41000000
loc_ce31CA0:
	#data fn_extern_8C034DEE
loc_ce31CA4:
	#data extern_8C06C430

;==============================================
AirIceBeam_State2:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
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
	mov.w @(0xFC,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt.s loc_ce31d06
	mov r14,r4
	mov.w @(0xEE,PC),r0
	fldi0 fr4
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)

loc_ce31D06:
	mov.l @(0xE4,PC),r3
	jsr @r3
	nop
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31d1c
	lds.l @r15+,pr
	mov.l @(0xD8,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_ce31D1C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
Taunt_PRG:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	tst r0,r0
	bf loc_CE31D42
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(ptr_CE31DF4_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x07,r6 ; r6 set to 0x07
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov 0x14,r5 ; r5 set to 0x14
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE31D42:
	mov.l @(ptr_CE31DEC_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE31D58
	lds.l @r15+,pr
	mov.l @(ptr_CE31DF8_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_CE31D58:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
Snapback_PRG:
	mov r4,r3
	mov.l @(ptr_CE31DFC_to_Snapback_States,pc),r1 ; r1 set to 0xCE32910
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

Snapback_State0:
	mov.l r14,@-r15
	mov r4,r14
	fldi0 fr4
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov r13,r5 ; r5 set to 0x00
	mov.l @(ptr_CE31E00_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162
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
	mov.w @(loc_ce31DE8,pc),r0 ; r0 set to 0x1F9
	mov.b r13,@(r0,r14)
	mov.w @(loc_ce31DE6,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(ptr_CE31E04_to_fn_extern_8C05218A,pc),r2 ; r2 set to 0x8C05218A
	jsr @r2
	mov r14,r4
	mov.l @(ptr_CE31E08_to_fn_extern_8C05115A,pc),r3 ; r3 set to 0x8C05115A
	jsr @r3
	mov r14,r4
	mov.w @(loc_ce31DEA,pc),r0 ; r0 set to 0x1A1
	mov 0x3C,r2 ; r2 set to 0x3C
	mov.l @(ptr_CE31E0C_to_extern_8C2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov 0x08,r6 ; r6 set to 0x08
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov 0x14,r5 ; r5 set to 0x14
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
	mov.l @(ptr_CE31DF4_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_ce31DE6:
	#data 0x041C
loc_ce31DE8:
	#data 0x01F9
loc_ce31DEA:
	#data 0x01A1
	#align4

ptr_CE31DEC_to_fn_extern_8C034DEE:
	#data fn_extern_8C034DEE
loc_ce31df0:
	#data fn_extern_8C05176E
ptr_CE31DF4_to_fn_extern_8C034E8C:
	#data fn_extern_8C034E8C
ptr_CE31DF8_to_fn_extern_8C051648:
	#data fn_extern_8C051648
ptr_CE31DFC_to_Snapback_States:
	#data Snapback_States
ptr_CE31E00_to_fn_extern_8C035162:
	#data fn_extern_8C035162
ptr_CE31E04_to_fn_extern_8C05218A:
	#data fn_extern_8C05218A
ptr_CE31E08_to_fn_extern_8C05115A:
	#data fn_extern_8C05115A
ptr_CE31E0C_to_extern_8C2896B0:
	#data extern_8C2896B0

;==============================================
Snapback_State1:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(ptr_CE31F1C_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce31E30
	mov.l @(ptr_CE31F20_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce31E30:
	mov.w @(0xD6,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce31e5a
	mov 0x00,r3
	mov r3,r5
	mov.b r3,@(r0,r14)
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov r14,r4
	mova @(0xE0,PC),r0
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

loc_ce31E5A:
	mov.w @(0xAE,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce31e6e
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x05,r5
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov r14,r4

loc_ce31E6E:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_CE31E76:
	add 0xFC,r15
	mov.l r4,@r15
	mov r4,r0
	nop
	mov.w @(loc_ce31F0E,pc),r1 ; r1 set to 0x1F9
	mov.l @(ptr_CE31F38_to_ptr_CE32918_to_loc_CE31E8E,pc),r2 ; r2 set to 0xCE32918
	mov.b @(r0,r1),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r2),r0
	jmp @r0
	add 0x04,r15

;==============================================
loc_CE31E8E:
	mov.w @(loc_ce31F10,pc),r0 ; r0 set to 0x1FA
	mov 0xF6,r1 ; r1 set to 0xFFFFFFF6
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_ce31F12,pc),r2 ; r2 set to 0xC00
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	mov 0x22,r0 ; r0 set to 0x22
	extu.w r3,r3
	and r2,r3
	shad r1, r3
	mov.b r3,@(r0,r14)
	extu.b r3,r3
	tst r3,r3
	bt loc_CE31EFE
	mov.w @(loc_ce31F14,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_CE31ECE
	mov.w @(loc_ce31F16,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE31ECE
	mov.l @(ptr_CE31F3C_to_fn_extern_8C045790,pc),r2 ; r2 set to 0x8C045790
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt/s loc_CE31EFE
	mov r0,r4
	bra loc_CE31EF0
	mov 0x00,r2

loc_CE31ECE:
	mov.w @(loc_ce31F14,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE31EFE
	mov.w @(loc_ce31F16,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE31EFE
	mov.l @(ptr_CE31F3C_to_fn_extern_8C045790,pc),r2 ; r2 set to 0x8C045790
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt/s loc_CE31EFE
	mov r0,r4
	mov 0x01,r2 ; r2 set to 0x01

loc_CE31EF0:
	mov.w @(loc_ce31F18,pc),r0 ; r0 set to 0x1F7, r0 set to 0x1F7
	mov.b r2,@(r0,r14)
	mov r4,r0 ; r0 ??? bc r4 is ???, r0 ??? bc r4 is ???
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_CE31EFE:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_CE31F06:
	rts
	mov 0x00,r0

;----------------------------------------------
loc_ce31F0a:
	#data 0x0140
loc_ce31F0c:
	#data 0x0141
loc_ce31F0E:
	#data 0x01F9
loc_ce31F10:
	#data 0x01FA
loc_ce31F12:
	#data 0x0C00
loc_ce31F14:
	#data 0x01FE
loc_ce31F16:
	#data 0x01A3
loc_ce31F18:
	#data 0x01F7
	#align4

ptr_CE31F1C_to_fn_extern_8C034DEE:
	#data fn_extern_8C034DEE
ptr_CE31F20_to_fn_extern_8C051648:
	#data fn_extern_8C051648
loc_ce31f24:
	#data fn_extern_8C035162
loc_ce31f28:
	#data 0x4292AAAA
loc_ce31f2c:
	#data 0x42CDB6DB
loc_ce31F30:
	#data extern_8C050EA4
loc_ce31F34:
	#data fn_extern_8C06B364
ptr_CE31F38_to_ptr_CE32918_to_loc_CE31E8E:
	#data ptr_CE32918_to_loc_CE31E8E
ptr_CE31F3C_to_fn_extern_8C045790:
	#data fn_extern_8C045790

;==============================================
loc_CE31F40:
	mov.w @(loc_ce31FB8,pc),r0 ; r0 set to 0x1FA
	mov 0xF6,r1 ; r1 set to 0xFFFFFFF6
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_ce31FBA,pc),r2 ; r2 set to 0xC00
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	mov 0x22,r0 ; r0 set to 0x22
	extu.w r3,r3
	and r2,r3
	shad r1, r3
	mov.b r3,@(r0,r14)
	extu.b r3,r3
	tst r3,r3
	bt loc_CE31F98
	mov.w @(loc_ce31FBC,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_CE31F98
	mov.w @(loc_ce31FBE,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_CE31F98
	mova @(loc_ce31FC4,pc),r0  ; r0 set to 0xCE31FC4
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fcmp/gt fr3,fr2
	bf loc_CE31F98
	mov.l @(ptr_CE31FC8_to_fn_extern_8C045790,pc),r2 ; r2 set to 0x8C045790
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt/s loc_CE31F98
	mov r0,r4 ; r4 set to 0x38
	mov.w @(loc_ce31FC0,pc),r0 ; r0 set to 0x1F7
	mov 0x02,r2 ; r2 set to 0x02
	mov.b r2,@(r0,r14)
	mov r4,r0 ; r0 set to 0x38
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_CE31F98:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_CE31FA0:
	mov.l r4,@-r15
	mov r4,r0
	nop
	mov.w @(loc_ce31FC0,pc),r1 ; r1 set to 0x1F7
	mov.l @(ptr_CE31FCC_to_ptr_CE32928_to_loc_ce31FD0,pc),r2 ; r2 set to 0xCE32928
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0x3F,r0
	shll2 r0
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce31FB8:
	#data 0x01FA
loc_ce31FBA:
	#data 0x0C00
loc_ce31FBC:
	#data 0x01FE
loc_ce31FBE:
	#data 0x01A3
loc_ce31FC0:
	#data 0x01F7
	#align4

loc_ce31FC4:
	#data 0x43092492
ptr_CE31FC8_to_fn_extern_8C045790:
	#data fn_extern_8C045790
ptr_CE31FCC_to_ptr_CE32928_to_loc_ce31FD0:
	#data ptr_CE32928_to_loc_ce31FD0

;==============================================
loc_ce31FD0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xE4,r15
	mov.l @(0xDC,PC),r3
	mov 0x06,r6
	mov r4,r14
	jsr @r3
	mov r6,r5
	mov.w @(0xCA,PC),r0
	mov.w @(0xCA,PC),r3
	mov.l @(r0,r14),r4
	mov 0x00,r0
	mov.l @(0xCC,PC),r2
	mov.l r4,@(0xC,r15
	add r3,r4
	mov.l @(0x4,r4),r1
	and r2,r1
	or r0,r1
	tst r1,r1
	bt loc_ce32004
	mov.w @(0xB2,PC),r0
	mov.l @(r0,r14),r3
	mova @(0xBC,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r3

loc_ce32004:
	mov.w @(0xA6,PC),r0
	mov.w @(0xA6,PC),r3
	mov.l @(r0,r14),r4
	mov 0x00,r0
	mov.l @(0xB0,PC),r2
	mov.l r4,@(0x8,r15)
	add r3,r4
	mov.l @r4,r1
	and r2,r1
	or r0,r1
	tst r1,r1
	bt loc_ce32028
	mov.w @(0x8E,PC),r0
	mov.l @(r0,r14),r3
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r3)

loc_ce32028:
	mov.w @(0x82,PC),r0
	mov.w @(0x82,PC),r3
	mov.l @(r0,r14),r4
	mov 0x00,r0
	mov.l @(0x94,PC),r2
	mov.l r4,@(0x4,r15)
	add r3,r4
	mov.l @r4,r1
	and r2,r1
	or r0,r1
	tst r1,r1
	bt loc_ce3204c
	mov.w @(0x6A,PC),r0
	mov.l @(r0,r14),r3
	mova @(0x84,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r3)

loc_ce3204C:
	mov.w @(0x5E,PC),r0
	mov.w @(0x5E,PC),r3
	mov.l @(r0,r14),r4
	mov 0x00,r0
	mov.l @(0x78,PC),r2
	mov.l r4,@r15
	add r3,r4
	mov.l @r4,r1
	and r2,r1
	or r0,r1
	tst r1,r1
	bt loc_ce32070
	mov.w @(0x46,PC),r0
	mov.l @(r0,r14),r3
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r3)

loc_ce32070:
	mova @(0x64,PC),r0
	mov r15,r5
	fmov @r0,fr3
	mov 0x10,r0
	mov.l @(0x64,PC),r3
	add 0x10,r5
	fmov fr3,@(r0,r15)
	mova @(0x5C,PC),r0
	fmov @r0,fr3
	mov 0x14,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.w @(0x24,PC),r0
	mov 0x0A,r2
	mov.l @(0x54,PC),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x50,PC),r2
	mov 0x0F,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	mov.l @(0x48,PC),r3
	jsr @r3
	mov r14,r4
	add 0x1C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce320ae:
	#data 0x01C8
loc_ce320b0:
	#data 0x0414
loc_ce320b2:
	#data 0x01A0
	#align4

loc_ce320b4:
	#data fn_extern_8C02FEC4
loc_ce320b8:
	#data 0x04000000
loc_ce320bc:
	#data 0x42F44924
loc_ce320c0:
	#data 0x10000000
loc_ce320c4:
	#data 0x41CDB6DB
loc_ce320c8:
	#data 0x20000000
loc_ce320cc:
	#data 0x425EDB6D
loc_ce320d0:
	#data 0x00400000
loc_ce320d4:
	#data 0x41F00000
loc_ce320d8:
	#data 0xC2960000
loc_ce320dc:
	#data 0x432B6DB6
loc_ce320e0:
	#data extern_8C103660
loc_ce320e4:
	#data fn_extern_8C056F2A
loc_ce320e8:
	#data fn_extern_8C034E8C
loc_ce320ec:
	#data fn_extern_8C0C1688

;==============================================
loc_ce320F0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xDC,r15
	mov.l @(0x114,PC),r3
	mov 0x05,r6
	mov r4,r14
	jsr @r3
	mov r6,r5
	mov.w @(0x102,PC),r0
	mov 0x00,r13
	mov.w @(0x100,PC),r3
	mov.l @(r0,r14),r4
	mov.l @(0x108,PC),r2
	mov.l r4,@(0x14,r15)
	add r3,r4
	mov.l @(0x4,r4),r1
	and r2,r1
	or r13,r1
	tst r1,r1
	bt loc_ce32126
	mov.w @(0xEA,PC),r0
	mov.l @(r0,r14),r1
	mova @(0xF8,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r1)

loc_ce32126:
	mova @(0xF4,PC),r0
	mov.w @(0xDE,PC),r3
	fmov @r0,fr4
	mov.w @(0xD8,PC),r0
	mov.l @(0xF0,PC),r2
	mov.l @(r0,r14),r4
	mov 0x00,r0
	mov.l r4,@(0x10,r15)
	add r3,r4
	mov.l @r4,r1
	and r2,r1
	or r0,r1
	tst r1,r1
	bt loc_ce3214a
	mov.w @(0xC2,PC),r0
	mov.l @(r0,r14),r3
	mov 0x38,r0
	fmov fr4,@(r0,r3)

loc_ce3214A:
	mov.w @(0xBA,PC),r0
	mov.w @(0xBA,PC),r3
	mov.l @(r0,r14),r4
	mov 0x00,r0
	mov.l @(0xD0,PC),r2
	mov.l r4,@(0xC,r15)
	add r3,r4
	mov.l @r4,r1
	and r2,r1
	or r0,r1
	tst r1,r1
	bt loc_ce3216e
	mov.w @(0xA2,PC),r0
	mov.l @(r0,r14),r3
	mova @(0xC0,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r3)

loc_ce3216E:
	mov.w @(0x96,PC),r0
	mov.w @(0x96,PC),r3
	mov.l @(r0,r14),r4
	mov 0x00,r0
	mov.l @(0xB4,PC),r2
	mov.l r4,@(0x8,r15)
	add r3,r4
	mov.l @r4,r1
	and r2,r1
	or r0,r1
	tst r1,r1
	bt loc_ce3218e
	mov.w @(0x7E,PC),r0
	mov.l @(r0,r14),r3
	mov 0x38,r0
	fmov fr4,@(r0,r3)

loc_ce3218E:
	mova @(0xA0,PC),r0
	mov.w @(0x76,PC),r3
	fmov @r0,fr4
	mov.w @(0x70,PC),r0
	mov.l @(0x9C,PC),r2
	mov.l @(r0,r14),r4
	mov.l r4,@(0x4,r15)
	add r3,r4
	mov.l @(0x4,r4),r1
	and r2,r1
	or r13,r1
	tst r1,r1
	bt loc_ce321b0
	mov.w @(0x5C,PC),r0
	mov.l @(r0,r14),r1
	mov 0x38,r0
	fmov fr4,@(r0,r1)

loc_ce321B0:
	mov.w @(0x54,PC),r0
	mov.w @(0x54,PC),r3
	mov.l @(r0,r14),r4
	mov.l r4,@r15
	add r3,r4
	mov.l @r4,r0
	tst 0x80,r0
	bt loc_ce321c8
	mov.w @(0x44,PC),r0
	mov.l @(r0,r14),r1
	mov 0x38,r0
	fmov fr4,@(r0,r1)

loc_ce321C8:
	mova @(0x6C,PC),r0
	mov r15,r5
	fmov @r0,fr3
	mov 0x18,r0
	mov.l @(0x6C,PC),r3
	add 0x18,r5
	fmov fr3,@(r0,r15)
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mov 0x1C,r0
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.w @(0x26,PC),r0
	mov 0x0A,r2
	mov.l @(0x5C,PC),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov r13,r0
	nop
	mov.l @(0x54,PC),r3
	mov 0x0F,r5
	mov.b r0,@(0x6,r14)
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	add 0x24,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce32208:
	#data 0x01C8
loc_ce3220a:
	#data 0x0414
loc_ce3220c:
	#data 0x01A0
	#align4

loc_ce32210:
	#data fn_extern_8C02FEC4
loc_ce32214:
	#data 0x04000000
loc_ce32218:
	#data 0x42F44924
loc_ce3221c:
	#data 0x41F00000
loc_ce32220:
	#data 0x10000000
loc_ce32224:
	#data 0x20000000
loc_ce32228:
	#data 0x4284DB6D
loc_ce3222c:
	#data 0x00400000
loc_ce32230:
	#data 0x42340000
loc_ce32234:
	#data 0x02000000
loc_ce32238:
	#data 0xC2960000
loc_ce3223c:
	#data 0x432B6DB6
loc_ce32240:
	#data extern_8C103660
loc_ce32244:
	#data fn_extern_8C056F2A
loc_ce32248:
	#data fn_extern_8C034E8C

;==============================================
loc_CE3224C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(ptr_CE32348_to_fn_extern_8C02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
	mov 0x06,r6 ; r6 set to 0x06
	mov r4,r14
	jsr @r3
	mov r6,r5 ; r5 set to 0x06
	mova @(loc_ce3234C,pc),r0  ; r0 init to 0xCE3234C
	mov.l @(ptr_CE32354_to_extern_8C103660,pc),r3 ; r3 set to 0x8C103660
	fmov.s @r0,fr3 ; r3 ??
	mova @(loc_ce32350,pc),r0  ; r0 set to 0xCE32350
	mov r15,r5 ; r5 ??? bc r15 is ???
	fmov.s fr3,@r15
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.w @(loc_ce32338,pc),r0 ; r0 set to 0x1A0
	mov 0x0A,r2 ; r2 set to 0x0A
	fldi0 fr4
	mov.b r2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C
	mov.l @(ptr_CE32358_to_fn_extern_8C056F2A,pc),r3 ; r3 set to 0x8C056F2A
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(ptr_CE3235C_to_fn_extern_8C034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x0F,r5 ; r5 set to 0x0F
	mov 0x02,r6 ; r6 set to 0x02
	jsr @r2
	mov r14,r4
	mov.l @(ptr_CE32360_to_fn_extern_8C0C1688,pc),r3 ; r3 set to 0x8C0C1688
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_CE322A8:
	mov.w @(loc_ce3233A,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	add 0x0D,r0 ; r0 set to 0x1F7
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov r14,r4
	mov.l @(ptr_CE32364_to_ptr_CE32934_to_loc_CE322C6,pc),r1 ; r1 set to 0xCE32934
	extu.b r0,r0
	and 0x3F,r0
	shll2 r0
	mov.l @(r0,r1),r3 ; r3 ??
	jmp @r3
	mov.l @r15+,r14

loc_CE322C6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE32368_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce322E4
	lds.l @r15+,pr
	mov.l @(ptr_CE3236C_to_fn_extern_8C051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_ce322E4:
	mov.w @(0x54,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_ce32330
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x04,r3
	mov.w @(0x48,PC),r0
	mov 0x00,r6
	mov 0x02,r2
	mov r6,r5
	mov.l @(r0,r14),r13
	add 0xEC,r0
	mov.l r14,@(r0,r13)
	add 0x42,r0
	mov.b r3,@(r0,r13)
	add 0x03,r0
	mov.l @(0x40,PC),r3
	mov.b r2,@(r0,r13)
	jsr @r3
	mov r14,r4
	mov.w @(0x2E,PC),r0
	mov 0x20,r2
	mov.w @(0x2C,PC),r1
	mov r2,r5
	mov.b r2,@(r0,r13)
	add 0x31,r0
	mov.b @(r0,r14),r0
	add r13,r1
	mov.l @(0x50,PC),r3
	xor 0x01,r0
	mov.b r0,@r1
	jsr @r3
	mov r14,r4
	mov.w @(0x18,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_ce32330:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce32338:
	#data 0x01A0
loc_ce3233A:
	#data 0x01EA
loc_ce3233c:
	#data 0x0141
loc_ce3233e:
	#data 0x01C8
loc_ce32340:
	#data 0x01A1
loc_ce32342:
	#data 0x01D2
loc_ce32344:
	#data 0x041C
	#align4

ptr_CE32348_to_fn_extern_8C02FEC4:
	#data fn_extern_8C02FEC4
loc_ce3234C:
	#data 0xC2960000
loc_ce32350:
	#data 0x4331DB6D
ptr_CE32354_to_extern_8C103660:
	#data extern_8C103660
ptr_CE32358_to_fn_extern_8C056F2A:
	#data fn_extern_8C056F2A
ptr_CE3235C_to_fn_extern_8C034E8C:
	#data fn_extern_8C034E8C
ptr_CE32360_to_fn_extern_8C0C1688:
	#data fn_extern_8C0C1688
ptr_CE32364_to_ptr_CE32934_to_loc_CE322C6:
	#data ptr_CE32934_to_loc_CE322C6
ptr_CE32368_to_fn_extern_8C034DEE:
	#data fn_extern_8C034DEE
ptr_CE3236C_to_fn_extern_8C051648:
	#data fn_extern_8C051648
loc_ce32370:
	#data extern_8C042008

;==============================================
loc_ce32374:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_ce32398
	mov.w @(0x11C,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce32398
	mov.b @(0x6,r14),r0
	mov.l @(0x120,PC),r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4

loc_ce32398:
	mov.w @(0x108,PC),r0
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_ce32422
	mov.b @(r0,r14),r2
	mov 0x0F,r3
	mov 0x00,r6
	and r3,r2
	mov r6,r5
	mov.b r2,@(r0,r14)
	mov 0x01,r2
	mov.w @(0xF4,PC),r0
	mov 0x02,r1
	mov.l @(r0,r14),r13
	add 0xEC,r0
	mov.l r14,@(r0,r13)
	add 0x42,r0
	mov.b r2,@(r0,r13)
	add 0x03,r0
	mov.l @(0xF4,PC),r2
	mov.b r1,@(r0,r13)
	jsr @r2
	mov r14,r4
	mov.w @(0xDE,PC),r0
	mov 0x21,r3
	mov.b r3,@(r0,r13)
	add 0x31,r0
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r13)
	mova @(0xE4,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	mov.w @(0xC6,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_ce323ee
	mova @(0xD0,PC),r0
	bra loc_ce323f2
	fmov @r0,fr2

loc_ce323EE:
	mova @(0xD0,PC),r0
	fmov @r0,fr2

loc_ce323F2:
	mov 0x34,r0
	fmov fr2,@r15
	fmov @(r0,r14),fr3
	mov 0x3C,r0
	mov.l @(0xC8,PC),r3
	mov 0x00,r7
	fadd fr3,fr2
	mov 0x02,r6
	fmov fr2,@r15
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	mov.w @(0x9C,PC),r0
	mov.w @(r0,r14),r5
	jsr @r3
	mov r15,r4
	mov.l @(0xB4,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	mov.w @(0x8E,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_ce32422:
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce32434
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov r14,r4

loc_ce32434:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce3243E:
	mov.w @(0x62,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_ce32484
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x01,r3
	mov.w @(0x4E,PC),r0
	mov 0x00,r6
	mov 0x02,r2
	mov r6,r5
	mov.l @(r0,r14),r13
	add 0xEC,r0
	mov.l r14,@(r0,r13)
	add 0x42,r0
	mov.b r3,@(r0,r13)
	add 0x03,r0
	mov.l @(0x48,PC),r3
	mov.b r2,@(r0,r13)
	jsr @r3
	mov r14,r4
	mov.w @(0x34,PC),r0
	mov 0x22,r2
	mov 0x20,r5
	mov.b r2,@(r0,r13)
	add 0x31,r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r13)
	mov.l @(0x54,PC),r3
	jsr @r3
	mov r14,r4

loc_ce32484:
	mov.l @(0x44,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_ce3249c
	lds.l @r15+,pr
	mov.l @(0x44,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_ce3249C:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce324a4:
	#data 0x0141
loc_ce324a6:
	#data 0x01C8
loc_ce324a8:
	#data 0x01A1
loc_ce324aa:
	#data 0x0130
loc_ce324ac:
	#data 0x041C
	#align4

loc_ce324b0:
	#data extern_8C0C1500
loc_ce324b4:
	#data fn_extern_8C02FEC4
loc_ce324b8:
	#data 0x42D20000
loc_ce324bc:
	#data 0x41FD5555
loc_ce324c0:
	#data 0xC1FD5555
loc_ce324c4:
	#data extern_8C0FD966
loc_ce324c8:
	#data extern_8C04223A
loc_ce324cc:
	#data fn_extern_8C034DEE
loc_CE324D0:
	#data fn_extern_8C051648
loc_CE324D4:
	#data extern_8C042008
loc_CE324D8:
	#data fn_extern_8C05176E

;==============================================
loc_CE324DC:
	mov.l r4,@-r15
	mov r4,r0
	nop
	mov.w @(loc_ce325AE,pc),r1 ; r1 set to 0x1F7
	mov.l @(ptr_CE325BC_to_ptr_CE32940_to_loc_CE324F4,pc),r2 ; r2 set to 0xCE32940
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0x3F,r0
	shll2 r0
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE324F4:
	mov.w @(loc_ce325B0,pc),r0 ; r0 set to 0x1C8
	mov r4,r5
	mov.l r4,@-r15
	mov.l @(ptr_CE325C0_to_code_extern_8C04CC1C,pc),r3 ; r3 set to 0x8C04CC1C
	mov.l @(r0,r4),r4
	jmp @r3
	add 0x04,r15

;==============================================
loc_CE32502:
	mov.w @(loc_ce325B0,pc),r0 ; r0 set to 0x1C8
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(r0,r14),r3
	mov.w @(loc_ce325B2,pc),r0 ; r0 set to 0x140
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_CE3251E
	mov.w @(loc_ce325B0,pc),r0 ; r0 set to 0x1C8
	mov r14,r5
	mov.l @(ptr_CE325C4_to_code_extern_8C04CE3A,pc),r3 ; r3 set to 0x8C04CE3A
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_CE3251E:
	mov.w @(loc_ce325B0,pc),r0 ; r0 set to 0x1C8
	mov r14,r5
	mov.l @(ptr_CE325C0_to_code_extern_8C04CC1C,pc),r3 ; r3 set to 0x8C04CC1C
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
PL09_Assists:
	mov 0x00,r0
	mov.b r0,@(0x5,r4)
	mov.b r0,@(0x7,r4)
	mov.b r0,@(0x6,r4)
	mov.w @(0x7E,PC),r0
	mov.b @(r0,r4),r0
	cmp/eq 0x00,r0
	bt.s loc_ce32544
	mov 0x02,r5
	cmp/eq 0x01,r0
	bt loc_ce32544
	cmp/eq 0x02,r0
	bf loc_ce32548

loc_ce32544:
	mov.w @(0x6E,PC),r0
	mov.b r5,@(r0,r4)

loc_ce32548:
	mov.l @(0x7C,PC),r2
	jmp @r2
	mov 0x1D,r5

;==============================================
loc_ce3254E:
	mov 0x00,r0
	mov.b r0,@(0x5,r4)
	mov.b r0,@(0x7,r4)
	mov.b r0,@(0x6,r4)
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r4),r0
	cmp/eq 0x00,r0
	bt.s loc_ce32568
	mov 0x02,r5
	cmp/eq 0x01,r0
	bt loc_ce32568
	cmp/eq 0x02,r0
	bf loc_ce3256c

loc_ce32568:
	mov.w @(0x4A,PC),r0
	mov.b r5,@(r0,r4)

loc_ce3256C:
	mov.l @(0x58,PC),r2
	jmp @r2
	mov 0x1D,r5

;==============================================
loc_CE32572:
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_ce325B4,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt/s loc_CE32594
	mov 0x01,r6 ; r6 set to 0x01
	cmp/eq 0x01,r0
	bt loc_CE3259A
	cmp/eq 0x02,r0
	bt loc_ce325A0
	bra loc_CE325A8
	nop

loc_CE32594:
	mov.w @(loc_ce325B6,pc),r0 ; r0 set to 0x1E9
	bra loc_CE325A4
	mov.b r6,@(r0,r4)

loc_CE3259A:
	mov.w @(loc_ce325B6,pc),r0 ; r0 set to 0x1E9
	bra loc_CE325A4
	mov.b r5,@(r0,r4)

loc_ce325A0:
	mov.w @(0x12,PC),r0
	mov.b r6,@(r0,r4)

loc_CE325A4:
	mov.w @(loc_ce325B8,pc),r0 ; r0 set to 0x1A3
	mov.b r5,@(r0,r4)

loc_CE325A8:
	mov.l @(ptr_CE325C8_to_fn_extern_8C0530D8,pc),r2 ; r2 set to 0x8C0530D8, r2 set to 0x8C0530D8
	jmp @r2
	mov 0x15,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce325AE:
	#data 0x01F7
loc_ce325B0:
	#data 0x01C8
loc_ce325B2:
	#data 0x0140
loc_ce325B4:
	#data 0x04C9
loc_ce325B6:
	#data 0x01E9
loc_ce325B8:
	#data 0x01A3
	#align4

ptr_CE325BC_to_ptr_CE32940_to_loc_CE324F4:
	#data ptr_CE32940_to_loc_CE324F4
ptr_CE325C0_to_code_extern_8C04CC1C:
	#data code_extern_8C04CC1C
ptr_CE325C4_to_code_extern_8C04CE3A:
	#data code_extern_8C04CE3A
ptr_CE325C8_to_fn_extern_8C0530D8:
	#data fn_extern_8C0530D8

;==============================================
loc_CE325CC:
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(loc_ce326FC,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt loc_CE325EC
	cmp/eq 0x01,r0
	bt loc_CE325F4
	cmp/eq 0x02,r0
	bt loc_ce325FA
	bra loc_CE32602
	nop

loc_CE325EC:
	mov.w @(loc_ce326FE,pc),r0 ; r0 set to 0x1E9
	mov 0x01,r3 ; r3 set to 0x01
	bra loc_CE325FE
	mov.b r3,@(r0,r4)

loc_CE325F4:
	mov.w @(loc_ce326FE,pc),r0 ; r0 set to 0x1E9
	bra loc_CE325FE
	mov.b r5,@(r0,r4)

loc_ce325FA:
	mov.w @(0x100,PC),r0
	mov.b r5,@(r0,r4)

loc_CE325FE:
	mov.w @(loc_ce32700,pc),r0 ; r0 set to 0x1A3
	mov.b r5,@(r0,r4)

loc_CE32602:
	mov.l @(ptr_CE32708_to_fn_extern_8C0530D8,pc),r2 ; r2 set to 0x8C0530D8, r2 set to 0x8C0530D8
	jmp @r2
	mov 0x15,r5

;==============================================
loc_CE32608:
	mov r4,r3
	mov.l @(ptr_CE3270C_to_ptr_CE3294C_to_loc_ce3261A,pc),r1 ; r1 set to 0xCE3294C
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_ce3261A:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0xEC,PC),r3
	jsr @r3
	mov 0x00,r5
	mov.b @(0x6,r14),r0
	mov 0x02,r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0xD0,PC),r0
	mov.b r3,@(r0,r14)
	mova @(0xE0,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xC6,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_ce3264a
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_ce3264A:
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0xC4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x3B,r3
	fmov fr3,@(r0,r14)
	mova @(0xC0,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov 0x00,r4
	fmov fr3,@(r0,r14)
	mov 0x14,r5
	mov.w @(0x9C,PC),r0
	mov 0x05,r6
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xA8,PC),r3
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

loc_CE32694:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE32728_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(ptr_CE3272C_to_fn_extern_8C052CE2,pc),r3 ; r3 set to 0x8C052CE2
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
	bt loc_CE326F6
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(ptr_CE32724_to_fn_extern_8C034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x06,r6 ; r6 set to 0x06
	add 0x01,r0 ; r0 set to 0x61
	mov.b r0,@(0x06,r14)
	mov 0x14,r5 ; r5 set to 0x14
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_CE326F6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_ce326FC:
	#data 0x04C9
loc_ce326FE:
	#data 0x01E9
loc_ce32700:
	#data 0x01A3
loc_ce32702:
	#data 0x01F9
loc_ce32704:
	#data 0x01D2
loc_ce32706:
	#data 0x01A1
	#align4

ptr_CE32708_to_fn_extern_8C0530D8:
	#data fn_extern_8C0530D8
ptr_CE3270C_to_ptr_CE3294C_to_loc_ce3261A:
	#data ptr_CE3294C_to_loc_ce3261A
loc_ce32710:
	#data fn_extern_8C035162
loc_ce32714:
	#data 0x41F00000
loc_ce32718:
	#data 0x40892492
loc_ce3271c:
	#data 0xBF4DB6DB
loc_ce32720:
	#data extern_8C2896B0
ptr_CE32724_to_fn_extern_8C034E8C:
	#data fn_extern_8C034E8C
ptr_CE32728_to_fn_extern_8C034DEE:
	#data fn_extern_8C034DEE
ptr_CE3272C_to_fn_extern_8C052CE2:
	#data fn_extern_8C052CE2

;==============================================
loc_CE32730:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE32758_to_fn_extern_8C034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_CE32752
	mov.l @(ptr_CE3275C_to_fn_extern_8C035162,pc),r3 ; r3 set to 0x8C035162
	mov 0x00,r5 ; r5 set to 0x00
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(ptr_CE32760_to_fn_extern_8C051854,pc),r2 ; r2 set to 0x8C051854
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_CE32752:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
#align4
ptr_CE32758_to_fn_extern_8C034DEE:
	#data fn_extern_8C034DEE
ptr_CE3275C_to_fn_extern_8C035162:
	#data fn_extern_8C035162
ptr_CE32760_to_fn_extern_8C051854:
	#data fn_extern_8C051854

;##############################################
;Code End
;##############################################


;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;Ice Man Chain Data
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
Stn_LPChain:
	#data 0x01 0x02 0x01 0x02
Stn_MPChain:
	#data 0xFF 0x02 0xFF 0x02
Stn_HPChain:
	#data 0xFF 0xFF 0xFF 0xFF
Stn_LKChain:
	#data 0x01 0x02 0x01 0x02
Stn_MKChain:
	#data 0xFF 0x02 0xFF 0x02
Stn_HKChain:
	#data 0xFF 0xFF 0xFF 0xFF

Crc_LPChain:
	#data 0x01 0x02 0x01 0x02
Crc_MPChain:
	#data 0xFF 0x02 0xFF 0x02
Crc_HPChain:
	#data 0xFF 0xFF 0xFF 0xFF
Crc_LKChain:
	#data 0x01 0x02 0x01 0x02
Crc_MKChain:
	#data 0xFF 0x02 0xFF 0x02
Crc_HKChain:
	#data 0xFF 0xFF 0xFF 0xFF

Air_LPChain:
	#data 0x00 0x02 0x01 0x02
Air_MPChain:
	#data 0x01 0x02 0xFF 0x02
Air_HPChain:
	#data 0xFF 0x02 0xFF 0xFF
Air_LKChain:
	#data 0x01 0x02 0x01 0x02
Air_MKChain:
	#data 0xFF 0x02 0xFF 0x02
Air_HKChain:
	#data 0xFF 0xFF 0xFF 0xFF

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;Iceman Special Move Inputs
;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
AvalancheInput:
	#data 0x0003
	#data 0x0000 0x0000 0x0000
	#data 0x1000 0x1800 0x0800 0x0060 ;236+K

IceBeamInput:
	#data 0x0003
	#data 0x1000 0x0001 0x0000
	#data 0x1000 0x1800 0x0800 0x0300 ;236+P

AirIceBeamInput:
	#data 0x0003
	#data 0x2000 0x0004 0x0000
	#data 0x1000 0x1800 0x0800 0x0300 ;236+P

IceFistInput:
	#data 0x0003
	#data 0x1000 0x0003 0x0000
	#data 0x1000 0x1400 0x0400 0x0300 ;214+P

ArcticAttack_Inp:
	#data 0x0003
	#data 0x8100 0x0002 0x0000
	#data 0x1000 0x1800 0x0800 0x0300 ;236+P


;==============================================
;Table for 0x8c289bd8
SPL_JumpTable:
	#data loc_ce303BE loc_CE3001C loc_CE30494 loc_CE30B46
	#data PL09_FwdDash PL09_BckDash loc_CE3128A loc_CE31316
	#data PL09_SpecPRG loc_CE31E76 loc_CE31FA0 loc_CE322A8
	#data loc_CE324DC PL09_DlyHyprC loc_CE32608 loc_ce30E9C
	#data PL09_Assists loc_ce3254E loc_CE32572 loc_CE325CC
	#data 0x00000000 0x00000000 0x00000000 0x00000000
	#data 0x00000000 0x00000000 0x00000000 0x00000000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
ptr_CE3286C_to_loc_CE304DC:
	#data loc_CE304DC loc_ce30B1E loc_CE30854 loc_CE304DC

ptr_CE3287C_to_loc_CE30B8E:
	#data loc_CE30B8E loc_CE30D9E loc_ce30D88 loc_ce30B80

ptr_CE3288C_to_loc_CE30F76:
	#data loc_CE30F76 loc_CE31004 loc_CE31088
	
ptr_CE32898_to_loc_CE310F4:
	#data loc_CE310F4 loc_CE31174 loc_ce3120A loc_CE31268

ptr_CE328A8_to_loc_CE3129C:
	#data loc_CE3129C loc_ce312F0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_ce328B0:
	#data 0x00 0x01 0x02

loc_CE328B3:
	#data 0x04 0x04 0x03 0x04 0x04
	#align4

;==============================================
;Special Move Jumps ce328b8
;==============================================
Table_SpecialPRG:
	#data Avalanche_PRG		;00
	#data GroundIceBeam_PRG	;01
	#data ArcticAttack_PRG	;02
	#data IceFist_PRG		;03
	#data AirIceBeam_PRG	;04
	#data Taunt_PRG			;05
	#data Snapback_PRG		;06

;==============================================
;State Tables
;==============================================
Avalanche_States:
	#data Avalanche_State0
	#data Avalanche_State1

;==============================================
GroundIceBeam_States:
	#data GroundIce_State0
	#data GroundIce_State1
	#data GroundIce_State2

;==============================================
ArcticAttack_States:
	#data Arctic_State0
	#data Arctic_State1
	#data Arctic_State2
	#data Arctic_State3
	#data Arctic_State4

;==============================================
IceFist_States:
	#data IceFist_State0
	#data IceFist_State1

;==============================================
AirIceBeam_States:
	#data AirIceBeam_State0
	#data AirIceBeam_State1
	#data AirIceBeam_State2

;==============================================
Snapback_States:
	#data Snapback_State0
	#data Snapback_State1

;==============================================
ptr_CE32918_to_loc_CE31E8E:
	#data loc_CE31E8E
	#data loc_CE31F06
	#data loc_CE31F40
	#data loc_CE31E8E

;==============================================
ptr_CE32928_to_loc_ce31FD0:
	#data loc_ce31FD0
	#data loc_ce320F0
	#data loc_CE3224C

;==============================================
ptr_CE32934_to_loc_CE322C6:
	#data loc_CE322C6
	#data loc_ce32374
	#data loc_ce3243E

;==============================================
ptr_CE32940_to_loc_CE324F4:
	#data loc_CE324F4
	#data loc_CE32502
	#data loc_CE32502

;==============================================
ptr_CE3294C_to_loc_ce3261A:
	#data loc_ce3261A
	#data loc_CE32694
	#data loc_CE32730
