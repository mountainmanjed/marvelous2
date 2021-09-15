;==============================================
;Amingo Program
;==============================================
#symbol loc_8c054508 0x8C054508
#symbol loc_8c054B34 0x8C054B34
#symbol loc_8c05496C 0x8C05496C
#symbol loc_8c054D04 0x8C054D04
#symbol loc_8c053E00 0x8C053E00
#symbol loc_8c0542E0 0x8C0542E0
#symbol loc_8c054E58 0x8C054E58
#symbol loc_8c055C3A 0x8C055C3A
#symbol loc_8c0530D8 0x8C0530D8
#symbol loc_8c054DA0 0x8C054DA0
#symbol loc_8c054D1C 0x8C054D1C
#symbol loc_8c1294C8 0x8C1294C8
#symbol loc_8c052B4C 0x8C052B4C
#symbol loc_8c04223A 0x8C04223A
#symbol loc_8c2896B0 0x8C2896B0
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
#symbol loc_8c11E730 0x8C11E730
#symbol loc_8c046C8A 0x8C046C8A
#symbol loc_8c035162 0x8C035162
#symbol loc_8c0511B4 0x8C0511B4
#symbol loc_8c051854 0x8C051854
#symbol loc_8c05218A 0x8C05218A
#symbol loc_8c05115A 0x8C05115A
#symbol loc_8c081800 0x8C081800
#symbol loc_8c0D1F94 0x8C0D1F94
#symbol loc_8c050834 0x8C050834
#symbol loc_8c0D245C 0x8C0D245C
#symbol loc_8c055D54 0x8C055D54
#symbol loc_8c080FB0 0x8C080FB0
#symbol loc_8c082210 0x8C082210
#symbol loc_8c04CC1C 0x8C04CC1C
#symbol loc_8c0D1AEC 0x8C0D1AEC
#symbol loc_8c02FEC4 0x8C02FEC4
#symbol loc_8c05933C 0x8C05933C
#symbol loc_8c02FD26 0x8C02FD26
#symbol loc_8c034F54 0x8C034F54
#symbol loc_8c050EA4 0x8C050EA4
#symbol loc_8c045790 0x8C045790
#symbol loc_8c056F2A 0x8C056F2A
#symbol loc_8c103660 0x8C103660
#symbol loc_8c0FDAB6 0x8C0FDAB6
#symbol loc_8c0424A6 0x8C0424A6
#symbol loc_8c129728 0x8C129728

;======================================================================
Player_Entry:
	mov.w @(data_CE300E8,pc),r0 ; r0 set to 0x428
	mov 0x70,r5 ; r5 set to 0x70	
	mov.l @(ptr_CE300F0_to_SPL_JumpTable,pc),r7 ; r7 set to 0xCE32D54
	mov.l @(r0,r4),r6
	mov 0x00,r4

code_CE3000A:
	mov r4,r0
	nop 
	add 0x04,r4 ; r4 set to 0x04
	mov.l @(r0,r7),r3
	cmp/hs r5,r4
	bf/s code_CE3000A
	mov.l r3,@(r0,r6)
	rts
	nop

;-------------------------------------------------------------------------------
code_CE3001C:
	mov.l r14,@-r15
	sts.l pr,@-r15

	mov.l @(ptr_CE300F4_to_loc_8c054508,pc),r3 ; r3 set to 0x8C054508
	jsr @r3
	mov r4,r14
	extu.b r0,r0
	tst r0,r0
	bf code_CE300AE

	mov.l @(ptr_CE300F8_to_loc_8c054B34,pc),r3 ; r3 set to 0x8C054B34
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf code_CE300AE

	mov.l @(ptr_CE300FC_to_loc_8c05496C,pc),r3 ; r3 set to 0x8C05496C
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf code_CE300AE

	mov.l @(ptr_CE30100_to_loc_8c054D04,pc),r3 ; r3 set to 0x8C054D04
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf code_CE300AE

	bsr code_CE3026C
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf code_CE300AE

	bsr code_CE302B2
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf code_CE300AE

	bsr code_CE3019E
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf code_CE300AE

	bsr code_CE301E4
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf code_CE300AE

;Buddy Grab Check
	bsr check_lil_saboten
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf code_CE300AE

	bsr code_CE30140
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf code_CE300AE

	bsr code_CE303E4
	mov r14,r4
	tst r0,r0
	bf code_CE300AE

	bsr code_CE303AA
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf code_CE300AE

	mov.l @(ptr_CE30104_to_loc_8c053E00,pc),r3 ; r3 set to 0x8C053E00
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr 
	mov.l @(ptr_CE30108_to_loc_8c0542E0,pc),r2 ; r2 set to 0x8C0542E0
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

code_CE300AE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;##############################################################
;CE300B4:
check_lil_saboten:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15

	mov.w @(data_CE300EA,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	mov.w @(data_CE300EC,pc),r6 ; r6 set to 0x36C
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l @(ptr_CE3010C_to_data_CE32CAC,pc),r5 ; r5 set to 0xCE32CAC
	mov.l r3,@r15
	add r14,r6 ; r6 ??? bc r14 is ???
	mov.l @(ptr_CE30110_to_loc_8c054E58,pc),r3 ; r3 set to 0x8C054E58
	jsr @r3
	mov r14,r4

	extu.b r0,r0
	tst r0,r0
	bt code_CE300DE
	mov.l @r15,r2
	mov.b @r2,r3 ; r3 ??? bc r2 is ???

;Amount Check 0xce300d8
	mov 0x02,r2 ; r2 set to 0x02
	cmp/ge r2,r3
	bf check_lil_saboten_grab

code_CE300DE:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
data_CE300E8:
	#data 0x0428

data_CE300EA:
	#data 0x02A4

data_CE300EC:
	#data 0x036C
	#align4

ptr_CE300F0_to_SPL_JumpTable
	#data SPL_JumpTable

ptr_CE300F4_to_loc_8c054508:
	#data loc_8c054508

ptr_CE300F8_to_loc_8c054B34:
	#data loc_8c054B34

ptr_CE300FC_to_loc_8c05496C:
	#data loc_8c05496C

ptr_CE30100_to_loc_8c054D04:
	#data loc_8c054D04

ptr_CE30104_to_loc_8c053E00:
	#data loc_8c053E00

ptr_CE30108_to_loc_8c0542E0:
	#data loc_8c0542E0

ptr_CE3010C_to_data_CE32CAC:
	#data data_CE32CAC

ptr_CE30110_to_loc_8c054E58:
	#data loc_8c054E58

;==============================================
;little buddy grab write
check_lil_saboten_grab:
	mov.w @(data_CE30242,pc),r5 ; r5 set to 0x36C
	mov.l @(ptr_CE30254_to_loc_8c055C3A,pc),r2
	add r14,r5 ; r5 ??? bc r14 is ???
	jsr @r2
	mov r14,r4
	mov 0x00,r4 ; r4 set to 0x00
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r14) 
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x06,r14) 
	mov.b r0,@(0x07,r14) 
	mov.w @(data_CE30244,pc),r0 ; r0 set to 0x1E9
	mov.l @(ptr_CE30258_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
	mov.b r4,@(r0,r14) 
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov 0x01,r0 ; r0 set to 0x01
	add 0x04,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE30140:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(data_CE30246,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	mov.w @(data_CE30248,pc),r6 ; r6 set to 0x394
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l @(ptr_CE3025C_to_data_CE32CBC,pc),r5 ; r5 set to 0xCE32CBC
	mov.l r3,@r15
	add r14,r6 ; r6 ??? bc r14 is ???
	mov.l @(ptr_CE30260_to_loc_8c054E58,pc),r3 ; r3 set to 0x8C054E58
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt code_CE3016A
	mov.l @r15,r2
	mov.b @r2,r3 ; r3 ??? bc r2 is ???

;Check buddy amount ce30164
	mov 0x02,r2 ; r2 set to 0x02
	cmp/ge r2,r3
	bf code_CE30174

code_CE3016A:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE30174:
	mov.w @(data_CE30248,pc),r5 ; r5 set to 0x394
	mov.l @(ptr_CE30254_to_loc_8c055C3A,pc),r2 ; r2 set to 0x8C055C3A
	add r14,r5 ; r5 ??? bc r14 is ???
	jsr @r2
	mov r14,r4
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14) 
	mov 0x08,r3 ; r3 set to 0x08
	mov.b r0,@(0x06,r14) 
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x07,r14)
	mov.w @(data_CE30244,pc),r0 ; r0 set to 0x1E9
	mov.b r3,@(r0,r14)
	mov.l @(ptr_CE30258_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
	jsr @r3
	mov r14,r4
	mov 0x01,r0 ; r0 set to 0x01
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE3019E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE30264_to_data_CE32CCC,pc),r5 ; r5 set to 0xCE32CCC
	mov.w @(data_CE3024A,pc),r6 ; r6 set to 0x374
	mov.l @(ptr_CE30260_to_loc_8c054E58,pc),r3 ; r3 set to 0x8C054E58
	jsr @r3
	add r14,r6 ; r6 ??? bc r14 is ???
	extu.b r0,r0
	tst r0,r0
	bf code_CE301BC
	lds.l @r15+,pr 
	mov 0x00,r0 ; r0 set to 0x00
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE301BC:
	mov.w @(data_CE3024A,pc),r5 ; r5 set to 0x374
	mov.l @(ptr_CE30254_to_loc_8c055C3A,pc),r3 ; r3 set to 0x8C055C3A
	add r14,r5 ; r5 ??? bc r14 is ???
	jsr @r3
	mov r14,r4
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14) 
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r0,@(0x06,r14) 
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x07,r14) 
	mov.w @(data_CE30244,pc),r0 ; r0 set to 0x1E9
	mov.b r3,@(r0,r14) 
	mov.l @(ptr_CE30258_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
	jsr @r3
	mov r14,r4
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE301E4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE30268_to_data_CE32CDC,pc),r5 ; r5 set to 0xCE32CDC
	mov.w @(data_CE3024C,pc),r6 ; r6 set to 0x37C
	mov.l @(ptr_CE30260_to_loc_8c054E58,pc),r3 ; r3 set to 0x8C054E58
	jsr @r3
	add r14,r6 ; r6 ??? bc r14 is ???
	extu.b r0,r0
	tst r0,r0
	bt code_CE3020C
	mov.w @(data_CE3024E,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bf code_CE3021A
	mov.w @(data_CE30250,pc),r0 ; r0 set to 0x1D4
	mov.b @(r0,r14),r2
	tst r2,r2
	bt code_CE30214

code_CE3020C:
	lds.l @r15+,pr 
	mov 0x00,r0 ; r0 set to 0x00
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE30214:
	mov.b @(r0,r14),r3
	add 0x01,r3
	mov.b r3,@(r0,r14)

code_CE3021A:
	mov.w @(data_CE3024C,pc),r5 ; r5 set to 0x37C
	mov.l @(ptr_CE30254_to_loc_8c055C3A,pc),r2 ; r2 set to 0x8C055C3A
	add r14,r5 ; r5 ??? bc r14 is ???
	jsr @r2
	mov r14,r4
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14) 
	mov 0x02,r3 ; r3 set to 0x02
	mov.b r0,@(0x06,r14) 
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x07,r14) 
	mov.w @(data_CE30244,pc),r0 ; r0 set to 0x1E9
	mov.b r3,@(r0,r14) 
	mov.l @(ptr_CE30258_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
	jsr @r3
	mov r14,r4
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
data_CE30242:
	#data 0x036C

data_CE30244:
	#data 0x01E9

data_CE30246:
	#data 0x02A4

data_CE30248:
	#data 0x0394

data_CE3024A:
	#data 0x0374

data_CE3024C:
	#data 0x037C

data_CE3024E:
	#data 0x01F9

data_CE30250:
	#data 0x01D4
	#align4

ptr_CE30254_to_loc_8c055C3A:
	#data loc_8c055C3A

ptr_CE30258_to_loc_8c0530D8:
	#data loc_8c0530D8

ptr_CE3025C_to_data_CE32CBC:
	#data data_CE32CBC

ptr_CE30260_to_loc_8c054E58:
	#data loc_8c054E58

ptr_CE30264_to_data_CE32CCC:
	#data data_CE32CCC

ptr_CE30268_to_data_CE32CDC:
	#data data_CE32CDC

;##############################################
code_CE3026C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE30364_to_data_CE32CEC,pc),r5 ; r5 set to 0xCE32CEC
	mov.w @(data_CE30358,pc),r6 ; r6 set to 0x384
	mov.l @(ptr_CE30368_to_loc_8c054E58,pc),r3 ; r3 set to 0x8C054E58
	jsr @r3
	add r14,r6 ; r6 ??? bc r14 is ???
	extu.b r0,r0
	tst r0,r0
	bt code_CE3028C
	mov.w @(data_CE3035A,pc),r0 ; r0 set to 0x40C
	mov.l @(r0,r14),r2
	mov.b @r2,r3 ; r3 ??? bc r2 is ???
	tst r3,r3
	bf code_CE30294

code_CE3028C:
	lds.l @r15+,pr 
	mov 0x00,r0 ; r0 set to 0x00
	rts 
	mov.l @r15+,r14

code_CE30294:
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	mov 0x03,r3 ; r3 set to 0x03
	mov.b r0,@(0x06,r14)
	mov 0x1D,r5 ; r5 set to 0x1D
	mov.b r0,@(0x07,r14)
	mov.w @(data_CE3035C,pc),r0 ; r0 set to 0x1E9
	mov.b r3,@(r0,r14)
	mov.l @(ptr_CE3036C_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
	jsr @r3
	mov r14,r4
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================================
code_CE302B2:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE30370_to_data_CE32CFC,pc),r5 ; r5 set to 0xCE32CFC
	mov.w @(data_CE3035E,pc),r6 ; r6 set to 0x38C
	mov.l @(ptr_CE30368_to_loc_8c054E58,pc),r3 ; r3 set to 0x8C054E58
	jsr @r3
	add r14,r6 ; r6 ??? bc r14 is ???
	extu.b r0,r0
	tst r0,r0
	bt code_CE302D2
	mov.w @(data_CE3035A,pc),r0 ; r0 set to 0x40C
	mov.l @(r0,r14),r2
	mov.b @r2,r3 ; r3 ??? bc r2 is ???
	tst r3,r3
	bf code_CE302DA

code_CE302D2:
	lds.l @r15+,pr 
	mov 0x00,r0 ; r0 set to 0x00
	rts 
	mov.l @r15+,r14

code_CE302DA:
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	mov 0x05,r3 ; r3 set to 0x05
	mov.b r0,@(0x06,r14)
	mov 0x1D,r5 ; r5 set to 0x1D
	mov.b r0,@(0x07,r14)
	mov.w @(data_CE3035C,pc),r0 ; r0 set to 0x1E9
	mov.b r3,@(r0,r14)
	mov.l @(ptr_CE3036C_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
	jsr @r3
	mov r14,r4
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;##############################################################
PL15_DlyHypC:
	sts.l pr,@-r15
	add 0xFC,r15
	bsr code_CE30374
	mov.l r4,@r15
	extu.b r0,r0
	tst r0,r0
	bf code_CE30310
	bsr code_CE30322
	mov.l @r15,r4
	extu.b r0,r0
	tst r0,r0
	bt code_CE30318

code_CE30310:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x01,r0

code_CE30318:
	mov 0x00,r0 ; r0 set to 0x00
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;##############################################################
code_CE30322:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE30364_to_data_CE32CEC,pc),r5 ; r5 set to 0xCE32CEC
	mov.w @(data_CE30358,pc),r6 ; r6 set to 0x384
	mov.l @(ptr_CE30368_to_loc_8c054E58,pc),r3 ; r3 set to 0x8C054E58
	jsr @r3
	add r14,r6 ; r6 ??? bc r14 is ???
	extu.b r0,r0
	tst r0,r0
	bt code_CE30342
	mov.w @(data_CE3035A,pc),r0 ; r0 set to 0x40C
	mov.l @(r0,r14),r2
	mov.b @r2,r3 ; r3 ??? bc r2 is ???
	tst r3,r3
	bf code_CE3034A

code_CE30342:
	lds.l @r15+,pr 
	mov 0x00,r0 ; r0 set to 0x00
	rts 
	mov.l @r15+,r14

code_CE3034A:
	mov.w @(data_CE30360,pc),r0 ; r0 set to 0x258
	mov 0x03,r3 ; r3 set to 0x03
	mov.b r3,@(r0,r14)
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE30358:
	#data 0x0384

data_CE3035A:
	#data 0x040C

data_CE3035C:
	#data 0x01E9

data_CE3035E:
	#data 0x038C

data_CE30360:
	#data 0x0258
	#align4

ptr_CE30364_to_data_CE32CEC:
#data data_CE32CEC

ptr_CE30368_to_loc_8c054E58:
	#data loc_8c054E58

ptr_CE3036C_to_loc_8c0530D8:
	#data loc_8c0530D8

ptr_CE30370_to_data_CE32CFC:
	#data data_CE32CFC

;##############################################################
code_CE30374:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE304A4_to_data_CE32CFC,pc),r5 ; r5 set to 0xCE32CFC
	mov.w @(data_CE30490,pc),r6 ; r6 set to 0x38C
	mov.l @(ptr_CE304A8_to_loc_8c054E58,pc),r3 ; r3 set to 0x8C054E58
	jsr @r3
	add r14,r6 ; r6 ??? bc r14 is ???
	extu.b r0,r0
	tst r0,r0
	bt code_CE30394
	mov.w @(data_CE30492,pc),r0 ; r0 set to 0x40C
	mov.l @(r0,r14),r2
	mov.b @r2,r3 ; r3 ??? bc r2 is ???
	tst r3,r3
	bf code_CE3039C

code_CE30394:
	lds.l @r15+,pr
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.l @r15+,r14

code_CE3039C:
	mov.w @(data_CE30494,pc),r0 ; r0 set to 0x258
	mov 0x05,r3 ; r3 set to 0x05
	mov.b r3,@(r0,r14)
	mov 0x01,r0 ; r0 set to 0x01
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;##############################################################
code_CE303AA:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(ptr_CE304AC_to_loc_8c054DA0,pc),r3 ; r3 set to 0x8C054DA0
	jsr @r3
	mov 0x06,r5 ; r5 set to 0x06
	extu.b r0,r0
	tst r0,r0
	bf code_CE303C4
	lds.l @r15+,pr 
	mov 0x00,r0 ; r0 set to 0x00
	rts 
	mov.l @r15+,r14

;##############################################################
code_CE303C4:
	mov.w @(data_CE30496,pc),r0 ; r0 set to 0x1E9
	mov 0x06,r3 ; r3 set to 0x06
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @(ptr_CE304B0_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
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

;##############################################################
code_CE303E4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE304B4_to_loc_8c054D1C,pc),r3 ; r3 set to 0x8C054D1C
	jsr @r3
	mov r4,r14
	tst r0,r0
	bt code_CE303FC
	mov.w @(data_CE30492,pc),r0 ; r0 set to 0x40C
	mov.l @(r0,r14),r2
	mov.b @r2,r3 ; r3 ??? bc r2 is ???
	tst r3,r3
	bf code_CE30404

code_CE303FC:
	lds.l @r15+,pr 
	mov 0x00,r0 ; r0 set to 0x00
	rts 
	mov.l @r15+,r14

code_CE30404:
	mov.w @(data_CE30496,pc),r0 ; r0 set to 0x1E9
	mov 0x07,r3 ; r3 set to 0x07
	mov 0x1D,r5 ; r5 set to 0x1D
	mov.b r3,@(r0,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @(ptr_CE304B0_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
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

;##############################################################
;TREE SUPER
code_CE30424:
	mov.w @(data_CE30498,pc),r0 ; r0 set to 0x1D1
	sts.l pr,@-r15
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x1D,r0 
	bf code_CE30448
	mov.w @(data_CE30496,pc),r0 ; r0 set to 0x1E9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x03,r0 
	bf code_CE30448
	mov.w @(data_CE3049A,pc),r2 ; r2 set to 0x284
	mov r4,r1
	mov.l @(ptr_CE304B8_to_loc_8c1294C8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r1
	add r4,r2 ; r2 ??? bc r4 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C

code_CE30448:
	lds.l @r15+,pr
	rts
	nop

;##############################################################
code_CE3044E:
	mov.w @(data_CE3049C,pc),r0 ; r0 set to 0x1FF
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(ptr_CE304BC_to_ptr_CE32DC4_to_code_CE30462,pc),r0 ; r0 set to 0xCE32DC4
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;##############################################################
code_CE30462:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE304C0_to_loc_8c052B4C,pc),r3 ; r3 set to 0x8C052B4C
	jsr @r3
	mov r4,r14
	mov.w @(data_CE3049E,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0 
	bf code_CE304C4
	mov.w @(data_CE304A0,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0 
	bf code_CE30488
	lds.l @r15+,pr 
	mov r14,r4
	bra code_CE30734
	mov.l @r15+,r14

code_CE30488:
	lds.l @r15+,pr 
	mov r14,r4
	bra code_CE3065A
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE30490:
	#data 0x038C

data_CE30492:
	#data 0x040C

data_CE30494:
	#data 0x0258

data_CE30496:
	#data 0x01E9

data_CE30498:
	#data 0x01D1

data_CE3049A:
	#data 0x0284

data_CE3049C:
	#data 0x01FF

data_CE3049E:
	#data 0x01FE

data_CE304A0:
	#data 0x01F9
	#align4

ptr_CE304A4_to_data_CE32CFC:
	#data data_CE32CFC

ptr_CE304A8_to_loc_8c054E58:
	#data loc_8c054E58

ptr_CE304AC_to_loc_8c054DA0:
	#data loc_8c054DA0

ptr_CE304B0_to_loc_8c0530D8:
	#data loc_8c0530D8

ptr_CE304B4_to_loc_8c054D1C:
	#data loc_8c054D1C

ptr_CE304B8_to_loc_8c1294C8:
	#data loc_8c1294C8

ptr_CE304BC_to_ptr_CE32DC4_to_code_CE30462:
	#data ptr_CE32DC4_to_code_CE30462

ptr_CE304C0_to_loc_8c052B4C:
	#data loc_8c052B4C

;##############################################################
code_CE304C4:
	mov.w @(data_CE305C8,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0 
	bf code_CE304D6
	lds.l @r15+,pr 
	mov r14,r4
	bra code_CE30588
	mov.l @r15+,r14

;==============================================================
code_CE304D6:
	lds.l @r15+,pr 
	mov r14,r4
	bra code_CE304DE
	mov.l @r15+,r14

;==============================================================
code_CE304DE:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(data_CE305CA,pc),r0 ; r0 set to 0x1E8
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(ptr_CE305D4_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0 
	bt/s code_CE30504
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt code_CE3051E
	cmp/eq 0x02,r0
	bt code_CE3053A
	bra code_CE30554
	nop

;==============================================================
code_CE30504:
	mov.w @(data_CE305CC,pc),r0 ; r0 set to 0x158
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14) 
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r13,@(r0,r14) 
	jsr @r12
	mov r14,r4
	mov.w @(data_CE305CE,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE305D8_to_data_CE32D0C,pc),r3 ; r3 set to 0xCE32D0C
	mov.l r3,@(r0,r14) 
	mov.w @(data_CE305D0,pc),r0 ; r0 set to 0x1A7
	bra code_CE30554
	mov.b r13,@(r0,r14) 

;==============================================================
code_CE3051E:
	mov.w @(data_CE305CC,pc),r0 ; r0 set to 0x158
	mov 0x01,r11 ; r11 set to 0x01
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r11,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r11,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(data_CE305CE,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE305DC_to_data_CE32D10,pc),r3 ; r3 set to 0xCE32D10
	mov.l r3,@(r0,r14)
	mov.w @(data_CE305D0,pc),r0 ; r0 set to 0x1A7
	bra code_CE30554
	mov.b r11,@(r0,r14)

code_CE3053A:
	mov.w @(data_CE305CC,pc),r0 ; r0 set to 0x158
	mov 0x02,r4 ; r4 set to 0x02
	mov.l @(ptr_CE305E0_to_data_CE32D14,pc),r3 ; r3 set to 0xCE32D14
	mov 0x16,r5 ; r5 set to 0x16
	mov.b r4,@(r0,r14) 
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r4,@(r0,r14) 
	mov.w @(data_CE305CE,pc),r0 ; r0 set to 0x3F4
	mov.l r3,@(r0,r14) 
	mov.w @(data_CE305D0,pc),r0 ; r0 set to 0x1A7
	mov.b r4,@(r0,r14) 
	jsr @r12
	mov r14,r4 ; r4 ??? bc r14 is ???

code_CE30554:
	mov.w @(data_CE305D2,pc),r0 ; r0 set to 0x1AC
	mov 0x07,r5 ; r5 set to 0x07
	mov.l @(ptr_CE305E4_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov r14,r4
	mov.w r13,@(r0,r14) 
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14) 
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0 ; r0 set to 0x388
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	lds.l @r15+,pr 
	mov.w @(data_CE305CC,pc),r0 ; r0 set to 0x158
	mov.l @(ptr_CE305E8_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r11
	mov.b @(r0,r14),r6
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

code_CE30588:
	mov.w @(data_CE305CA,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(ptr_CE305D4_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s code_CE305AC
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt code_CE305EC
	cmp/eq 0x02,r0
	bt code_CE3060C
	bra code_CE30628
	nop

code_CE305AC:
	mov.w @(data_CE305CC,pc),r0 ; r0 set to 0x158
	mov 0x06,r3 ; r3 set to 0x06
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14) 
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14) 
	jsr @r12
	mov r14,r4
	mov.w @(data_CE305CE,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE305D8_to_data_CE32D0C,pc),r3 ; r3 set to 0xCE32D0C
	mov.l r3,@(r0,r14)
	mov.w @(data_CE305D0,pc),r0 ; r0 set to 0x1A7
	bra code_CE30628
	mov.b r13,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE305C8:
	#data 0x01F9

data_CE305CA:
	#data 0x01E8

data_CE305CC:
	#data 0x0158

data_CE305CE:
	#data 0x03F4

data_CE305D0:
	#data 0x01A7

data_CE305D2:
	#data 0x01AC
	#align4

ptr_CE305D4_to_loc_8c04223A:
	#data loc_8c04223A

ptr_CE305D8_to_data_CE32D0C:
	#data data_CE32D0C

ptr_CE305DC_to_data_CE32D10:
	#data data_CE32D10

ptr_CE305E0_to_data_CE32D14:
	#data data_CE32D14

ptr_CE305E4_to_loc_8c2896B0:
	#data loc_8c2896B0

ptr_CE305E8_to_loc_8c034E8C:
	#data loc_8c034E8C

;##############################################################
code_CE305EC:
	mov.w @(data_CE30708,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x07,r3 ; r3 set to 0x07
	mov.b r2,@(r0,r14) 
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14) 
	jsr @r12
	mov r14,r4
	mov.w @(data_CE3070A,pc),r0 ; r0 set to 0x3F4
	mov 0x01,r2 ; r2 set to 0x01
	mov.l @(ptr_CE30714_to_data_CE32D10,pc),r3 ; r3 set to 0xCE32D10
	mov.l r3,@(r0,r14) 
	mov.w @(data_CE3070C,pc),r0 ; r0 set to 0x1A7
	bra code_CE30628
	mov.b r2,@(r0,r14) 

code_CE3060C:
	mov.w @(data_CE30708,pc),r0 ; r0 set to 0x158
	mov 0x02,r4 ; r4 set to 0x02
	mov 0x08,r3 ; r3 set to 0x08
	mov.l @(ptr_CE30718_to_data_CE32D14,pc),r2 ; r2 set to 0xCE32D14
	mov.b r4,@(r0,r14) 
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14) 
	mov 0x16,r5 ; r5 set to 0x16
	mov.w @(data_CE3070A,pc),r0 ; r0 set to 0x3F4
	mov.l r2,@(r0,r14) 
	mov.w @(data_CE3070C,pc),r0 ; r0 set to 0x1A7
	mov.b r4,@(r0,r14) 
	jsr @r12
	mov r14,r4 ; r4 ??? bc r14 is ???

code_CE30628:
	mov.w @(data_CE3070E,pc),r0 ; r0 set to 0x1AC
	mov 0x09,r5 ; r5 set to 0x09
	mov.l @(ptr_CE3071C_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov r14,r4
	mov.w r13,@(r0,r14) 
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14) 
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0 ; r0 set to 0x388
	add 0x7C,r2 ; r2 set to 0xCE32D90
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)  ; r2 ??? bc r1 is ???
	lds.l @r15+,pr 
	mov.w @(data_CE30708,pc),r0 ; r0 set to 0x158
	mov.l @(ptr_CE30720_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r12
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

code_CE3065A:
	mov.w @(data_CE30710,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(ptr_CE30724_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0 
	bt/s code_CE3067E
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0 
	bt code_CE3069A
	cmp/eq 0x02,r0 
	bt code_CE306BA
	bra code_CE306D6
	nop 

code_CE3067E:
	mov.w @(data_CE30708,pc),r0 ; r0 set to 0x158
	mov 0x03,r3 ; r3 set to 0x03
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14) 
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14) 
	jsr @r12
	mov r14,r4
	mov.w @(data_CE3070A,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30728_to_data_CE32D18,pc),r3 ; r3 set to 0xCE32D18
	mov.l r3,@(r0,r14) 
	mov.w @(data_CE3070C,pc),r0 ; r0 set to 0x1A7
	bra code_CE306D6
	mov.b r13,@(r0,r14)

code_CE3069A:
	mov.w @(data_CE30708,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x04,r3 ; r3 set to 0x04
	mov.b r2,@(r0,r14) 
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14) 
	jsr @r12
	mov r14,r4
	mov.w @(data_CE3070A,pc),r0 ; r0 set to 0x3F4
	mov 0x01,r2 ; r2 set to 0x01
	mov.l @(ptr_CE3072C_to_data_CE32D1C,pc),r3 ; r3 set to 0xCE32D1C
	mov.l r3,@(r0,r14) 
	mov.w @(data_CE3070C,pc),r0 ; r0 set to 0x1A7
	bra code_CE306D6
	mov.b r2,@(r0,r14) 

code_CE306BA:
	mov.w @(data_CE30708,pc),r0 ; r0 set to 0x158
	mov 0x02,r4 ; r4 set to 0x02
	mov 0x05,r3 ; r3 set to 0x05
	mov.l @(ptr_CE30730_to_data_CE32D20,pc),r2 ; r2 set to 0xCE32D20
	mov.b r4,@(r0,r14) 
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14) 
	mov 0x16,r5 ; r5 set to 0x16
	mov.w @(data_CE3070A,pc),r0 ; r0 set to 0x3F4
	mov.l r2,@(r0,r14) 
	mov.w @(data_CE3070C,pc),r0 ; r0 set to 0x1A7
	mov.b r4,@(r0,r14) 
	jsr @r12
	mov r14,r4 ; r4 ??? bc r14 is ???

code_CE306D6:
	mov.w @(data_CE3070E,pc),r0 ; r0 set to 0x1AC
	mov 0x08,r5 ; r5 set to 0x08
	mov.l @(ptr_CE3071C_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov r14,r4
	mov.w r13,@(r0,r14) 
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14) 
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0 ; r0 set to 0x388
	add 0x7C,r2 ; r2 set to 0xCE32D9C
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)  ; r2 ??? bc r1 is ???
	lds.l @r15+,pr 
	mov.w @(data_CE30708,pc),r0 ; r0 set to 0x158
	mov.l @(ptr_CE30720_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r12
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE30708:
	#data 0x0158

data_CE3070A:
	#data 0x03F4

data_CE3070C:
	#data 0x01A7

data_CE3070E:
	#data 0x01AC

data_CE30710:
	#data 0x01E8
	#align4

ptr_CE30714_to_data_CE32D10:
	#data data_CE32D10

ptr_CE30718_to_data_CE32D14:
	#data data_CE32D14

ptr_CE3071C_to_loc_8c2896B0:
	#data loc_8c2896B0

ptr_CE30720_to_loc_8c034E8C:
	#data loc_8c034E8C

ptr_CE30724_to_loc_8c04223A:
	#data loc_8c04223A

ptr_CE30728_to_data_CE32D18:
	#data data_CE32D18

ptr_CE3072C_to_data_CE32D1C:
	#data data_CE32D1C

ptr_CE30730_to_data_CE32D20:
	#data data_CE32D20

;##############################################################
code_CE30734:
	mov.w @(data_CE3081C,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(ptr_CE3082C_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0 
	bt/s code_CE30758
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0 
	bt code_CE30774
	cmp/eq 0x02,r0 
	bt code_CE30794
	bra code_CE307B0
	nop 

code_CE30758:
	mov.w @(data_CE3081E,pc),r0 ; r0 set to 0x158
	mov 0x09,r3 ; r3 set to 0x09
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14) 
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14) 
	jsr @r12
	mov r14,r4
	mov.w @(data_CE30820,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30830_to_data_CE32D18,pc),r3 ; r3 set to 0xCE32D18
	mov.l r3,@(r0,r14) 
	mov.w @(data_CE30822,pc),r0 ; r0 set to 0x1A7
	bra code_CE307B0
	mov.b r13,@(r0,r14) 

code_CE30774:
	mov.w @(data_CE3081E,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x0A,r3 ; r3 set to 0x0A
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(data_CE30820,pc),r0 ; r0 set to 0x3F4
	mov 0x01,r2 ; r2 set to 0x01
	mov.l @(ptr_CE30834_to_data_CE32D1C,pc),r3 ; r3 set to 0xCE32D1C
	mov.l r3,@(r0,r14)
	mov.w @(data_CE30822,pc),r0 ; r0 set to 0x1A7
	bra code_CE307B0
	mov.b r2,@(r0,r14)

code_CE30794:
	mov.w @(data_CE3081E,pc),r0 ; r0 set to 0x158
	mov 0x02,r4 ; r4 set to 0x02
	mov 0x0B,r3 ; r3 set to 0x0B
	mov.l @(ptr_CE30838_to_data_CE32D20,pc),r2 ; r2 set to 0xCE32D20
	mov.b r4,@(r0,r14) 
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14) 
	mov 0x16,r5 ; r5 set to 0x16
	mov.w @(data_CE30820,pc),r0 ; r0 set to 0x3F4
	mov.l r2,@(r0,r14) 
	mov.w @(data_CE30822,pc),r0 ; r0 set to 0x1A7
	mov.b r4,@(r0,r14) 
	jsr @r12
	mov r14,r4 ; r4 ??? bc r14 is ???

code_CE307B0:
	mov.w @(data_CE30824,pc),r0 ; r0 set to 0x1AC
	mov 0x0A,r5 ; r5 set to 0x0A
	mov.l @(ptr_CE3083C_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov r14,r4
	mov.w r13,@(r0,r14) 
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14) 
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0 ; r0 set to 0x388
	add 0x7C,r2 ; r2 set to 0xCE32D9C
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)  ; r2 ??? bc r1 is ???
	lds.l @r15+,pr 
	mov.w @(data_CE3081E,pc),r0 ; r0 set to 0x158
	mov.l @(ptr_CE30840_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r12
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

code_CE307E2:
	mov.w @(data_CE30826,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r4),r3
	tst r3,r3
	bf code_CE307F2
	mov.w @(data_CE30828,pc),r0 ; r0 set to 0x1D6
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	tst 0x0F,r0 
	bf code_CE30802

code_CE307F2:
	mov.w @(data_CE30826,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r4),r2
	tst r2,r2
	bt code_CE30806
	mov.w @(data_CE30828,pc),r0 ; r0 set to 0x1D6
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	tst 0xF0,r0 
	bt code_CE30806

code_CE30802:
	bra code_CE3080A
	nop

code_CE30806:
	rts
	nop

code_CE3080A:
	mov.w @(data_CE30826,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf code_CE30818
	bra code_CE30970
	nop

code_CE30818:
	bra code_CE30844
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE3081C:
	#data 0x01E8

data_CE3081E:
	#data 0x0158

data_CE30820:
	#data 0x03F4

data_CE30822:
	#data 0x01A7

data_CE30824:
	#data 0x01AC

data_CE30826:
	#data 0x01FE

data_CE30828:
	#data 0x01D6
	#align4

ptr_CE3082C_to_loc_8c04223A:
	#data loc_8c04223A

ptr_CE30830_to_data_CE32D18:
	#data data_CE32D18

ptr_CE30834_to_data_CE32D1C:
	#data data_CE32D1C

ptr_CE30838_to_data_CE32D20:
	#data data_CE32D20

ptr_CE3083C_to_loc_8c2896B0:
	#data loc_8c2896B0

ptr_CE30840_to_loc_8c034E8C:
	#data loc_8c034E8C

;##############################################################
code_CE30844:
	mov.w @(data_CE3093C,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(ptr_CE3094C_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s code_CE30868
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt code_CE30894
	cmp/eq 0x02,r0
	bt code_CE308C4
	bra code_CE308F8
	nop

code_CE30868:
	mov.w @(data_CE3093E,pc),r0 ; r0 set to 0x158
	mov 0x0C,r3 ; r3 set to 0x0C
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(data_CE30940,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf code_CE30888
	mov.w @(data_CE30942,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30950_to_data_CE32D24,pc),r3 ; r3 set to 0xCE32D24
	bra code_CE3088E
	mov.l r3,@(r0,r14)

code_CE30888:
	mov.w @(data_CE30942,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30954_to_data_CE32D3C,pc),r1 ; r1 set to 0xCE32D3C
	mov.l r1,@(r0,r14)

code_CE3088E:
	mov.w @(data_CE30944,pc),r0 ; r0 set to 0x1A7
	bra code_CE308F8
	mov.b r13,@(r0,r14)

code_CE30894:
	mov.w @(data_CE3093E,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x0D,r3 ; r3 set to 0x0D
	mov.b r2,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(data_CE30940,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf code_CE308B6
	mov.w @(data_CE30942,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30958_to_data_CE32D28,pc),r3 ; r3 set to 0xCE32D28
	bra code_CE308BC
	mov.l r3,@(r0,r14)

code_CE308B6:
	mov.w @(data_CE30942,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE3095C_to_data_CE32D40,pc),r1 ; r1 set to 0xCE32D40
	mov.l r1,@(r0,r14)

code_CE308BC:
	mov.w @(data_CE30944,pc),r0 ; r0 set to 0x1A7
	mov 0x01,r3 ; r3 set to 0x01
	bra code_CE308F8
	mov.b r3,@(r0,r14) 

code_CE308C4:
	mov.w @(data_CE3093E,pc),r0 ; r0 set to 0x158
	mov 0x02,r1 ; r1 set to 0x02
	mov 0x0E,r3 ; r3 set to 0x0E
	mov.b r1,@(r0,r14)
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x16,r5 ; r5 set to 0x16
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4
	mov.w @(data_CE30940,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf code_CE308E6
	mov.w @(data_CE30942,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30960_to_data_CE32D2C,pc),r3 ; r3 set to 0xCE32D2C
	bra code_CE308EC
	mov.l r3,@(r0,r14)

code_CE308E6:
	mov.w @(data_CE30942,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30964_to_data_CE32D44,pc),r1 ; r1 set to 0xCE32D44
	mov.l r1,@(r0,r14)

code_CE308EC:
	mov.w @(data_CE30944,pc),r0 ; r0 set to 0x1A7
	mov 0x02,r3 ; r3 set to 0x02
	mov 0x16,r5 ; r5 set to 0x16
	mov.b r3,@(r0,r14)
	jsr @r12
	mov r14,r4

code_CE308F8:
	mov.w @(data_CE30946,pc),r0 ; r0 set to 0x1AC
	mov 0x0B,r5 ; r5 set to 0x0B
	mov.l @(ptr_CE30968_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0 ; r0 set to 0x388
	add 0x7C,r2
	mov.w @(r0,r2),r1 ; r1 ??? bc r2 is ???
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(data_CE3093E,pc),r0 ; r0 set to 0x158
	mov.l @(ptr_CE3096C_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.b @(r0,r14),r6
	jsr @r2
	mov r14,r4
	mov.w @(data_CE30948,pc),r0 ; r0 set to 0x1D6
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	tst 0x0F,r0
	bt code_CE30932
	mov.w @(data_CE30948,pc),r0 ; r0 set to 0x1D6
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
	add 0xFF,r2
	mov.b r2,@(r0,r14)

code_CE30932:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE3093C:
	#data 0x01E8

data_CE3093E:
	#data 0x0158

data_CE30940:
	#data 0x01FC

data_CE30942:
	#data 0x03F4

data_CE30944:
	#data 0x01A7

data_CE30946:
	#data 0x01AC

data_CE30948:
	#data 0x01D6
	#align4

ptr_CE3094C_to_loc_8c04223A:
	#data loc_8c04223A

ptr_CE30950_to_data_CE32D24:
	#data data_CE32D24

ptr_CE30954_to_data_CE32D3C:
	#data data_CE32D3C

ptr_CE30958_to_data_CE32D28:
	#data data_CE32D28

ptr_CE3095C_to_data_CE32D40:
	#data data_CE32D40

ptr_CE30960_to_data_CE32D2C:
	#data data_CE32D2C

ptr_CE30964_to_data_CE32D44:
	#data data_CE32D44

ptr_CE30968_to_loc_8c2896B0:
	#data loc_8c2896B0

ptr_CE3096C_to_loc_8c034E8C:
	#data loc_8c034E8C

;##############################################################
code_CE30970:
	mov.w @(data_CE30A72,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.l @(ptr_CE30A84_to_loc_8c04223A,pc),r12 ; r12 set to 0x8C04223A
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s code_CE30994
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0
	bt code_CE309C0
	cmp/eq 0x02,r0
	bt code_CE309EC
	bra code_CE30A1A
	nop

code_CE30994:
	mov.w @(data_CE30A74,pc),r0 ; r0 set to 0x158
	mov 0x0F,r3 ; r3 set to 0x0F
	mov 0x14,r5 ; r5 set to 0x14
	mov.b r13,@(r0,r14) 
	add 0x49,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14) 
	jsr @r12
	mov r14,r4
	mov.w @(data_CE30A76,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf code_CE309B4
	mov.w @(data_CE30A78,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30A88_to_data_CE32D30,pc),r3 ; r3 set to 0xCE32D30
	bra code_CE309BA
	mov.l r3,@(r0,r14) 

code_CE309B4:
	mov.w @(data_CE30A78,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30A8C_to_data_CE32D48,pc),r1 ; r1 set to 0xCE32D48
	mov.l r1,@(r0,r14)

code_CE309BA:
	mov.w @(data_CE30A7A,pc),r0 ; r0 set to 0x1A7
	bra code_CE30A1A
	mov.b r13,@(r0,r14) 

code_CE309C0:
	mov.w @(data_CE30A74,pc),r0 ; r0 set to 0x158
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x10,r3 ; r3 set to 0x10
	mov.b r2,@(r0,r14) 
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r3,@(r0,r14) 
	jsr @r12
	mov r14,r4
	mov.w @(data_CE30A76,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf code_CE309E2
	mov.w @(data_CE30A78,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30A90_to_data_CE32D34,pc),r3 ; r3 set to 0xCE32D34
	bra code_CE309E8
	mov.l r3,@(r0,r14) 

code_CE309E2:
	mov.w @(data_CE30A78,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30A94_to_data_CE32D4C,pc),r1 ; r1 set to 0xCE32D4C
	mov.l r1,@(r0,r14)

code_CE309E8:
	bra code_CE30A16
	mov 0x01,r3

code_CE309EC:
	mov.w @(data_CE30A74,pc),r0 ; r0 set to 0x158
	mov 0x02,r1 ; r1 set to 0x02
	mov 0x11,r3 ; r3 set to 0x11
	mov.b r1,@(r0,r14) 
	add 0x49,r0 ; r0 set to 0x1A1
	mov 0x16,r5 ; r5 set to 0x16
	mov.b r3,@(r0,r14) 
	jsr @r12
	mov r14,r4
	mov.w @(data_CE30A76,pc),r0 ; r0 set to 0x1FC
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf code_CE30A0E
	mov.w @(data_CE30A78,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30A98_to_data_CE32D38,pc),r3 ; r3 set to 0xCE32D38
	bra code_CE30A14
	mov.l r3,@(r0,r14) 

code_CE30A0E:
	mov.w @(data_CE30A78,pc),r0 ; r0 set to 0x3F4
	mov.l @(ptr_CE30A9C_to_data_CE32D50,pc),r1 ; r1 set to 0xCE32D50
	mov.l r1,@(r0,r14)

code_CE30A14:
	mov 0x02,r3 ; r3 set to 0x02

code_CE30A16:
	mov.w @(data_CE30A7A,pc),r0 ; r0 set to 0x1A7
	mov.b r3,@(r0,r14) 

code_CE30A1A:
	mov.w @(data_CE30A7C,pc),r0 ; r0 set to 0x1AC
	mov 0x0C,r5 ; r5 set to 0x0C
	mov.l @(ptr_CE30AA0_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.w r13,@(r0,r14) 
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14) 
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0 ; r0 set to 0x388
	add 0x7C,r2
	mov.w @(r0,r2),r1 ; r1 ??? bc r2 is ???
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov.w @(data_CE30A74,pc),r0 ; r0 set to 0x158
	mov.l @(ptr_CE30AA4_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.b @(r0,r14),r6
	jsr @r2
	mov r14,r4
	mov.w @(data_CE30A7E,pc),r0 ; r0 set to 0x1D6
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	tst 0xF0,r0 
	bt code_CE30A54
	mov.w @(data_CE30A7E,pc),r0 ; r0 set to 0x1D6
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
	add 0xF0,r2
	mov.b r2,@(r0,r14)

code_CE30A54:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE30A5E:
	mov.w @(data_CE30A80,pc),r0 ; r0 set to 0x1FF
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(ptr_CE30AA8_to_ptr_CE32DD4_to_code_CE30ABA,pc),r0 ; r0 set to 0xCE32DD4
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE30A72:
	#data 0x01E8

data_CE30A74:
	#data 0x0158

data_CE30A76:
	#data 0x01FC

data_CE30A78:
	#data 0x03F4

data_CE30A7A:
	#data 0x01A7

data_CE30A7C:
	#data 0x01AC

data_CE30A7E:
	#data 0x01D6

data_CE30A80:
	#data 0x01FF
	#align4

ptr_CE30A84_to_loc_8c04223A:
	#data loc_8c04223A

ptr_CE30A88_to_data_CE32D30:
	#data data_CE32D30

ptr_CE30A8C_to_data_CE32D48:
	#data data_CE32D48

ptr_CE30A90_to_data_CE32D34:
	#data data_CE32D34

ptr_CE30A94_to_data_CE32D4C:
	#data data_CE32D4C

ptr_CE30A98_to_data_CE32D38:
	#data data_CE32D38

ptr_CE30A9C_to_data_CE32D50:
	#data data_CE32D50

ptr_CE30AA0_to_loc_8c2896B0:
	#data loc_8c2896B0

ptr_CE30AA4_to_loc_8c034E8C:
	#data loc_8c034E8C

ptr_CE30AA8_to_ptr_CE32DD4_to_code_CE30ABA:
	#data ptr_CE32DD4_to_code_CE30ABA

;##############################################
code_CE30AAC:
	sts.l pr,@-r15
	mov.l @(ptr_CE30BC0_to_loc_8c0511E2,pc),r3 ; r3 set to 0x8C0511E2
	jsr @r3
	mov.l r4,@-r15
	mov.l @r15,r4
	add 0x04,r15
	lds.l @r15+,pr 

code_CE30ABA:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5C
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34

	;r3 set to 0x8C052C84
	mov.l @(ptr_CE30BC4_to_loc_8c052C84,pc),r3

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
	mov.w @(data_CE30BB4,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0 
	bf code_CE30B22
	mov.w @(data_CE30BB6,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0 
	bf code_CE30B1A
	lds.l @r15+,pr 
	mov r14,r4
	bra code_CE30C52
	mov.l @r15+,r14

code_CE30B1A:
	lds.l @r15+,pr 
	mov r14,r4
	bra code_CE30C30
	mov.l @r15+,r14

code_CE30B22:
	mov.w @(data_CE30BB6,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0 
	bf code_CE30B34
	lds.l @r15+,pr 
	mov r14,r4
	bra code_CE30BD4
	mov.l @r15+,r14

code_CE30B34:
	lds.l @r15+,pr 
	mov r14,r4
	bra code_CE30B3C
	mov.l @r15+,r14

code_CE30B3C:
	mov.w @(data_CE30BB8,pc),r0 ; r0 set to 0x1E8
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bt code_CE30B58
	cmp/eq 0x00,r0 
	bt code_CE30B98
	cmp/eq 0x01,r0 
	bt code_CE30B98
	bra code_CE30BAE
	nop 

code_CE30B58:
	mov.l @(ptr_CE30BC8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf code_CE30BA4
	mov.w @(data_CE30BBA,pc),r0 ; r0 set to 0x14B
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt code_CE30BAE
	mov.w @(data_CE30BBC,pc),r0 ; r0 set to 0x1A1
	mov 0x02,r3 ; r3 set to 0x02
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r3,@(r0,r14) 
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14) 
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14) 
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(ptr_CE30BCC_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0 ; r0 set to 0x388
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov.w @(data_CE30BBA,pc),r0 ; r0 set to 0x14B
	bra code_CE30BAE
	mov.b r4,@(r0,r14) 

code_CE30B98:
	mov.l @(ptr_CE30BC8_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt code_CE30BAE

code_CE30BA4:
	lds.l @r15+,pr
	mov.l @(ptr_CE30BD0_to_loc_8c051648,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

code_CE30BAE:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
data_CE30BB4:
	#data 0x01FE

data_CE30BB6:
	#data 0x01F9

data_CE30BB8:
	#data 0x01E8

data_CE30BBA:
	#data 0x014B

data_CE30BBC:
	#data 0x01A1
	#align4

ptr_CE30BC0_to_loc_8c0511E2:
	#data loc_8c0511E2

ptr_CE30BC4_to_loc_8c052C84:
	#data loc_8c052C84

ptr_CE30BC8_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE30BCC_to_loc_8c2896B0:
	#data loc_8c2896B0

ptr_CE30BD0_to_loc_8c051648:
	#data loc_8c051648

;##############################################
code_CE30BD4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE30CF8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt code_CE30BEE
	lds.l @r15+,pr 
	mov.l @(ptr_CE30CFC_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;##############################################
code_CE30BEE:
	mov.w @(data_CE30CEE,pc),r0 ; r0 set to 0x1E8
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bf code_CE30C2A
	mov.w @(data_CE30CF0,pc),r0 ; r0 set to 0x14B
	mov.b @(r0,r14),r2
	tst r2,r2
	bt code_CE30C2A
	mov.w @(data_CE30CF2,pc),r0 ; r0 set to 0x1A1
	mov 0x08,r3 ; r3 set to 0x08
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r3,@(r0,r14) 
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14) 
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14) 
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(ptr_CE30D00_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0 ; r0 set to 0x388
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(data_CE30CF0,pc),r0 ; r0 set to 0x14B
	mov.b r4,@(r0,r14)

code_CE30C2A:
	lds.l @r15+,pr 
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE30C30:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(ptr_CE30CF8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt code_CE30C4A
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(ptr_CE30CFC_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

code_CE30C4A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;-------------------------------------------------------------------------------
code_CE30C52:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(ptr_CE30CF8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt code_CE30C6C
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(ptr_CE30CFC_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr 

code_CE30C6C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;-------------------------------------------------------------------------------
code_CE30C74:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE30D04_to_loc_8c050084,pc),r3 ; r3 set to 0x8C050084
	jsr @r3
	mov r4,r14
	mov.l @(ptr_CE30D08_to_loc_8c04FF88,pc),r2 ; r2 set to 0x8C04FF88
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr 
	mov r14,r4
	mov.l @r15+,r14

code_CE30C8A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE30D0C_to_loc_8c04FEA8,pc),r3 ; r3 set to 0x8C04FEA8
	jsr @r3
	mov r4,r14
	mov.l @(ptr_CE30D10_to_loc_8c050048,pc),r2 ; r2 set to 0x8C050048
	jsr @r2
	mov r14,r4
	mov.w @(data_CE30CF4,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf code_CE30CAC
	bsr code_CE30D20
	mov r14,r4
	bra code_CE30CB0
	nop 

code_CE30CAC:
	bsr code_CE30CCC
	mov r14,r4

code_CE30CB0:
	mov.l @(ptr_CE30D14_to_loc_8c052CE2,pc),r3 ; r3 set to 0x8C052CE2
	jsr @r3
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt code_CE30CC6
	lds.l @r15+,pr 
	mov.l @(ptr_CE30D18_to_loc_8c052DAC,pc),r3 ; r3 set to 0x8C052DAC
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

code_CE30CC6:
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE30CCC:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(ptr_CE30CF8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt code_CE30CE6
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(ptr_CE30D1C_to_loc_8c05176E,pc),r3 ; r3 set to 0x8C05176E
	jmp @r3
	lds.l @r15+,pr 

code_CE30CE6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;-------------------------------------------------------------------------------
data_CE30CEE:
	#data 0x01E8

data_CE30CF0:
	#data 0x014B

data_CE30CF2:
	#data 0x01A1

data_CE30CF4:
	#data 0x01FE
	#align4

ptr_CE30CF8_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE30CFC_to_loc_8c051648:
	#data loc_8c051648

ptr_CE30D00_to_loc_8c2896B0:
	#data loc_8c2896B0

ptr_CE30D04_to_loc_8c050084:
	#data loc_8c050084

ptr_CE30D08_to_loc_8c04FF88:
	#data loc_8c04FF88

ptr_CE30D0C_to_loc_8c04FEA8:
	#data loc_8c04FEA8

ptr_CE30D10_to_loc_8c050048:
	#data loc_8c050048

ptr_CE30D14_to_loc_8c052CE2:
	#data loc_8c052CE2

ptr_CE30D18_to_loc_8c052DAC:
	#data loc_8c052DAC

ptr_CE30D1C_to_loc_8c05176E:
	#data loc_8c05176E


code_CE30D20:
mov.w @(data_CE30DD0,pc),r0 ; r0 set to 0x1E8
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x02,r0 
bt code_CE30D3C
cmp/eq 0x00,r0 
bt code_CE30D7C
cmp/eq 0x01,r0 
bt code_CE30D7C
bra code_CE30D92
nop 

code_CE30D3C:
mov.l @(ptr_CE30DD8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r14,r4
exts.b r0,r0
cmp/pz r0
bf code_CE30D88
mov.w @(data_CE30DD2,pc),r0 ; r0 set to 0x14B
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
tst r3,r3
bt code_CE30D92
mov.w @(data_CE30DD4,pc),r0 ; r0 set to 0x1A1
mov 0x11,r3 ; r3 set to 0x11
mov 0x00,r4 ; r4 set to 0x00
mov.b r3,@(r0,r14) 
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r4,@(r0,r14) 
add 0xF2,r0 ; r0 set to 0x19E
mov.b r4,@(r0,r14) 
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(ptr_CE30DDC_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r4,@(r0,r14) 
mov.b @(0x02,r14),r0 
mov.l @r3,r2
extu.b r0,r0
shll r0 ; r0 set to 0x388
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 
mov.w @(data_CE30DD2,pc),r0 ; r0 set to 0x14B
bra code_CE30D92
mov.b r4,@(r0,r14) 

code_CE30D7C:
mov.l @(ptr_CE30DD8_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
jsr @r2
mov r14,r4
exts.b r0,r0
cmp/pz r0
bt code_CE30D92

code_CE30D88:
lds.l @r15+,pr 
mov.l @(ptr_CE30DE0_to_loc_8c05176E,pc),r2 ; r2 set to 0x8C05176E
mov r14,r4
jmp @r2
mov.l @r15+,r14

code_CE30D92:
lds.l @r15+,pr 
rts 
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE30D98:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x06,r14),r0 
tst r0,r0
bf code_CE30E2C
mov.l @(ptr_CE30DE4_to_loc_8c052B4C,pc),r3 ; r3 set to 0x8C052B4C
jsr @r3
mov r14,r4
mov.b @(0x06,r14),r0 
mov 0x01,r3 ; r3 set to 0x01
add 0x01,r0
mov.b r0,@(0x06,r14) 
mov.w @(data_CE30DD6,pc),r0 ; r0 set to 0x1F9
mov.b r3,@(r0,r14) 
add 0x05,r0 ; r0 set to 0x1FE
mov.b @(r0,r14),r2
tst r2,r2
bf code_CE30DEC
mov.l @(ptr_CE30DE8_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov 0x14,r5 ; r5 set to 0x14
mov 0x03,r6 ; r6 set to 0x03
jsr @r2
mov r14,r4
mov.w @(data_CE30DD4,pc),r0 ; r0 set to 0x1A1
mov 0x40,r3 ; r3 set to 0x40
bra code_CE30DFC
mov.b r3,@(r0,r14) 

data_CE30DD0:
	#data 0x01E8

data_CE30DD2:
	#data 0x014B

data_CE30DD4:
	#data 0x01A1

data_CE30DD6:
	#data 0x01F9
	#align4

ptr_CE30DD8_to_loc_8c034DEE:
#data loc_8c034DEE

ptr_CE30DDC_to_loc_8c2896B0:
	#data loc_8c2896B0

ptr_CE30DE0_to_loc_8c05176E:
	#data loc_8c05176E

ptr_CE30DE4_to_loc_8c052B4C:
	#data loc_8c052B4C

ptr_CE30DE8_to_loc_8c034E8C:
	#data loc_8c034E8C


code_CE30DEC:
	mov.l @(ptr_CE30EFC_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x14,r5 ; r5 set to 0x14
	mov 0x04,r6 ; r6 set to 0x04
	jsr @r3
	mov r14,r4
	mov.w @(data_CE30EF2,pc),r0 ; r0 set to 0x1A1
	mov 0x44,r2 ; r2 set to 0x44
	mov.b r2,@(r0,r14) 

code_CE30DFC:
	mov.w @(data_CE30EF4,pc),r0 ; r0 set to 0x1AC
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(ptr_CE30F00_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov 0x15,r5 ; r5 set to 0x15
	mov.w r4,@(r0,r14) 
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14) 
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	mov.l @(ptr_CE30F04_to_loc_8c04223A,pc),r3 ; r3 set to 0x8C04223A
	shll r0 ; r0 set to 0x388
	add 0x7C,r2 ; r2 set to 0xC0
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)  ; r2 ??? bc r1 is ???
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(ptr_CE30F08_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
	mov 0x05,r5 ; r5 set to 0x05
	jsr @r2
	mov r14,r4

code_CE30E2C:
	mov.w @(data_CE30EF6,pc),r0 ; r0 set to 0x1FF
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x03,r0 
	bf code_CE30E3C
	mov.l @(ptr_CE30F0C_to_loc_8c0511E2,pc),r2 ; r2 set to 0x8C0511E2
	jsr @r2
	mov r14,r4

code_CE30E3C:
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(ptr_CE30F10_to_loc_8c052C84,pc),r3 ; r3 set to 0x8C052C84
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
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
	mov.l @(ptr_CE30F14_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt code_CE30E90
	lds.l @r15+,pr 
	mov.l @(ptr_CE30F18_to_loc_8c051648,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

code_CE30E90:
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
PL15_FwdDash:
	mov r4,r3
	mov.l @(ptr_CE30F1C_to_ptr_CE32DE4_to_code_CE30EA8,pc),r1 ; r1 set to 0xCE32DE4
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0 
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

code_CE30EA8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE30F14_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.w @(data_CE30EF8,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bf code_CE30EEC
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
	mov.w @(data_CE30EFA,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt code_CE30EE0
	mova @(data_CE30F20,pc),r0  ; r0 set to 0xCE30F20
	bra code_CE30EE4
	fmov.s @r0,fr3

code_CE30EE0:
	mova @(data_CE30F24,pc),r0  ; r0 set to 0xCE30F24
	fmov.s @r0,fr3

code_CE30EE4:
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr3,@(r0,r14)
	mov 0x10,r0 ; r0 set to 0x10
	mov.w r0,@(0x1C,r14)

code_CE30EEC:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
data_CE30EF2:
	#data 0x01A1

data_CE30EF4:
	#data 0x01AC

data_CE30EF6:
	#data 0x01FF

data_CE30EF8:
	#data 0x0141

data_CE30EFA:
	#data 0x01D2
	#align4

ptr_CE30EFC_to_loc_8c034E8C:
	#data loc_8c034E8C

ptr_CE30F00_to_loc_8c2896B0:
	#data loc_8c2896B0

ptr_CE30F04_to_loc_8c04223A:
	#data loc_8c04223A

ptr_CE30F08_to_loc_8c056DE4:
	#data loc_8c056DE4

ptr_CE30F0C_to_loc_8c0511E2:
	#data loc_8c0511E2

ptr_CE30F10_to_loc_8c052C84:
	#data loc_8c052C84

ptr_CE30F14_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE30F18_to_loc_8c051648:
	#data loc_8c051648

ptr_CE30F1C_to_ptr_CE32DE4_to_code_CE30EA8:
	#data ptr_CE32DE4_to_code_CE30EA8

data_CE30F20:
	#data 0x413AAAAA

data_CE30F24:
	#data 0xC13AAAAA


code_CE30F28:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE3103C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
fadd fr3,fr2
fmov.s fr2,@(r0,r14) 
mov.w @(0x1C,r14),r0 
add 0xFF,r0 ; r0 set to 0x5B
mov.w r0,@(0x1C,r14) 
exts.w r0,r0
tst r0,r0
bf code_CE30F80
mov.b @(0x06,r14),r0 
mov 0x02,r6 ; r6 set to 0x02
mov.l @(ptr_CE31040_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov r6,r5 ; r5 set to 0x02
add 0x01,r0 ; r0 set to 0x5C
mov.b r0,@(0x06,r14) 
jsr @r3
mov r14,r4
mov.w @(data_CE31036,pc),r0 ; r0 set to 0x1D2
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
tst r3,r3
bt code_CE30F78
mova @(data_CE31044,pc),r0  ; r0 set to 0xCE31044
bra code_CE30F7C
fmov.s @r0,fr3

code_CE30F78:
mova @(data_CE31048,pc),r0  ; r0 set to 0xCE31048
fmov.s @r0,fr3

code_CE30F7C:
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr3,@(r0,r14) 

code_CE30F80:
lds.l @r15+,pr 
rts 
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE30F86:
mov.l r14,@-r15
mov r4,r14
mov 0x5C,r1 ; r1 set to 0x5C
mov.l @(ptr_CE3103C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
add r14,r1 ; r1 ??? bc r14 is ???
mov 0x34,r0 ; r0 set to 0x34
sts.l pr,@-r15
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
mov 0x68,r1 ; r1 set to 0x68
fmov.s @(r0,r14),fr2
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
exts.b r0,r0
cmp/pz r0
bt code_CE30FD0
mov 0x5C,r0 ; r0 set to 0x5C
fldi0 fr4
fmov.s fr4,@(r0,r14) 
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr4,@(r0,r14) 
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14) 
mov 0x6C,r0 ; r0 set to 0x6C
mov.l @(ptr_CE3104C_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
fmov.s fr4,@(r0,r14) 
lds.l @r15+,pr 
jmp @r3
mov.l @r15+,r14

code_CE30FD0:
lds.l @r15+,pr 
rts 
mov.l @r15+,r14

;##############################################################
PL15_BckDash:
mov r4,r3
mov.l @(ptr_CE31050_to_ptr_CE32DF0_to_code_CE30FE8,pc),r1 ; r1 set to 0xCE32DF0
mov.l r4,@-r15
mov.b @(0x06,r3),r0 
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

code_CE30FE8:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE3103C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
mov.w @(data_CE31038,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bf code_CE31078
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
mov.w @(data_CE31036,pc),r0 ; r0 set to 0x1D2
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
tst r3,r3
bt code_CE31020
mova @(data_CE31054,pc),r0  ; r0 set to 0xCE31054
bra code_CE31024
fmov.s @r0,fr3

code_CE31020:
mova @(data_CE31058,pc),r0  ; r0 set to 0xCE31058
fmov.s @r0,fr3

code_CE31024:
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr3,@(r0,r14) 
	mov.w @(data_CE31036,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r3
	tst r3,r3
	bt code_CE31060
	mova @(data_CE3105C,pc),r0  ; r0 set to 0xCE3105C
	bra code_CE31064
	fmov.s @r0,fr3

data_CE31036:
	#data 0x01D2

data_CE31038:
	#data 0x0141
	#align4

ptr_CE3103C_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE31040_to_loc_8c034E8C:
	#data loc_8c034E8C

;dash
data_CE31044:
	#data 0xBF555555

data_CE31048:
	#data 0x3F555555

ptr_CE3104C_to_loc_8c051648:
	#data loc_8c051648

ptr_CE31050_to_ptr_CE32DF0_to_code_CE30FE8:
	#data ptr_CE32DF0_to_code_CE30FE8

data_CE31054:
	#data 0xC1055555

data_CE31058:
	#data 0x41055555

data_CE3105C:
	#data 0xBE200000


code_CE31060:
	mova @(data_CE311C0,pc),r0  ; r0 set to 0xCE311C0
	fmov.s @r0,fr3

code_CE31064:
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr3,@(r0,r14) 
	mova @(data_CE311C4,pc),r0  ; r0 set to 0xCE311C4
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14) 
	mova @(data_CE311C8,pc),r0  ; r0 set to 0xCE311C8
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr3,@(r0,r14)

code_CE31078:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

code_CE3107E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE311CC_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3
	mov.w @(data_CE311BA,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf code_CE310F6
	mov.b @(0x06,r14),r0 
	mov 0x02,r5 ; r5 set to 0x02
	mov.l @(ptr_CE311D0_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x03,r6 ; r6 set to 0x03
	add 0x01,r0 ; r0 set to 0x41D
	mov.b r0,@(0x06,r14) 
	jsr @r3
	mov r14,r4
	mov.w @(data_CE311BA,pc),r0 ; r0 set to 0x41C
	fldi0 fr4
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14) 
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14) 
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14) 

code_CE310F6:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE310FC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE311CC_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt code_CE31128
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14) 
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14) 
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14) 
	mov 0x6C,r0 ; r0 set to 0x6C
	mov.l @(ptr_CE311D4_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	fmov.s fr4,@(r0,r14) 
	lds.l @r15+,pr 
	jmp @r3
	mov.l @r15+,r14

code_CE31128:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE3112E:
	mov r4,r3
	mov.l @(ptr_CE311D8_to_ptr_CE32DFC_to_code_CE31140,pc),r1 ; r1 set to 0xCE32DFC
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0 
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

code_CE31140:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(data_CE311BC,pc),r3 ; r3 set to 0x2A4
	mov 0x00,r6 ; r6 set to 0x00
	add r4,r3 ; r3 ??? bc r4 is ???
	mov.l r3,@r15
	mov 0x01,r3 ; r3 set to 0x01
	mov.b @(0x06,r4),r0 
	add 0x01,r0
	mov.b r0,@(0x06,r4) 
	mov.w @(data_CE311BE,pc),r0 ; r0 set to 0x12C
	mov.b r3,@(r0,r4) 
	mov.l @(ptr_CE311D0_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	jsr @r3
	mov 0x12,r5 ; r5 set to 0x12
	mov.l @r15,r2
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@r2
	add 0x04,r15
	lds.l @r15+,pr 
	rts
	nop

;-------------------------------------------------------------------------------
code_CE3116C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(ptr_CE311CC_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt code_CE31184
	mov.l @r15,r3 ; r3 ??? bc r15 is ???
	mov.b @(0x05,r3),r0 
	add 0x01,r0
	mov.b r0,@(0x05,r3)

code_CE31184:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;-------------------------------------------------------------------------------
code_CE3118C:
	mov r4,r3
	mov.l @(ptr_CE311DC_to_ptr_CE32E04_to_code_CE3119E,pc),r1 ; r1 set to 0xCE32E04
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0 
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

code_CE3119E:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x06,r14),r0 
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x06,r14) 
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	mov.l @(ptr_CE311E0_to_ptr_CE32E0C_to_code_CE311E4,pc),r0 ; r0 set to 0xCE32E0C
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

data_CE311BA:
	#data 0x041C

data_CE311BC:
	#data 0x02A4

data_CE311BE:
	#data 0x012C
	#align4

;not proj
data_CE311C0:
	#data 0x3E200000

data_CE311C4:
	#data 0x40F00000

data_CE311C8:
	#data 0xBF4DB6DB

ptr_CE311CC_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE311D0_to_loc_8c034E8C:
	#data loc_8c034E8C

ptr_CE311D4_to_loc_8c051648:
	#data loc_8c051648

ptr_CE311D8_to_ptr_CE32DFC_to_code_CE31140:
	#data ptr_CE32DFC_to_code_CE31140

ptr_CE311DC_to_ptr_CE32E04_to_code_CE3119E:
	#data ptr_CE32E04_to_code_CE3119E

ptr_CE311E0_to_ptr_CE32E0C_to_code_CE311E4:
	#data ptr_CE32E0C_to_code_CE311E4


code_CE311E4:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(0x07,r14),r0 
mov.l @(ptr_CE312E4_to_loc_8c11E730,pc),r3 ; r3 set to 0x8C11E730
add 0x01,r0
jsr @r3
mov.b r0,@(0x07,r14) 
mov 0x01,r2 ; r2 set to 0x01
mov r0,r4
tst r2,r4
bt/s code_CE31202
mov 0x13,r5 ; r5 set to 0x13
bra code_CE31204
mov 0x00,r6

code_CE31202:
mov r2,r6

code_CE31204:
lds.l @r15+,pr 
mov.l @(ptr_CE312E8_to_loc_8c034E8C,pc),r1 ; r1 set to 0x8C034E8C
mov r14,r4
jmp @r1
mov.l @r15+,r14

code_CE3120E:
mov.l @(ptr_CE312E8_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov 0x02,r6 ; r6 set to 0x02
jmp @r3
mov 0x13,r5

code_CE31216:
mov.l @(ptr_CE312E8_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov 0x00,r6 ; r6 set to 0x00
jmp @r3
mov 0x13,r5

code_CE3121E:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE312EC_to_loc_8c046C8A,pc),r3 ; r3 set to 0x8C046C8A
jsr @r3
mov r4,r14
tst r0,r0
bt code_CE31236
lds.l @r15+,pr 
mov.l @(ptr_CE312F0_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
mov r14,r4
jmp @r3
mov.l @r15+,r14

code_CE31236:
mov 0x20,r0 ; r0 set to 0x20
mov r14,r4
mov.b @(r0,r14),r3
mov.l @(ptr_CE312F4_to_ptr_CE32E20_to_code_CE3124A,pc),r0 ; r0 set to 0xCE32E20
extu.b r3,r3
lds.l @r15+,pr 
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

code_CE3124A:
mov.l @(ptr_CE312F8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jmp @r3
nop 

code_CE31250:
mov r4,r3
mov.l @(ptr_CE312FC_to_ptr_CE32E34_to_code_CE31262,pc),r1 ; r1 set to 0xCE32E34
mov.l r4,@-r15
mov.b @(0x06,r3),r0 
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

code_CE31262:
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.l @(ptr_CE31300_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162
jsr @r3
mov 0x00,r5 ; r5 set to 0x00
mov.b @(0x06,r14),r0 
mov 0x02,r3 ; r3 set to 0x02
add 0x01,r0
mov.b r0,@(0x06,r14) 
mov.w @(data_CE312DC,pc),r0 ; r0 set to 0x1F9
mov.b r3,@(r0,r14) 
mova @(data_CE31304,pc),r0  ; r0 set to 0xCE31304
fmov.s @r0,fr3
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr3,@(r0,r14) 
mov.w @(data_CE312DE,pc),r0 ; r0 set to 0x1D2
mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
tst r3,r3
bf code_CE31292
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 

code_CE31292:
mov 0x68,r0 ; r0 set to 0x68
fldi0 fr3
fmov.s fr3,@(r0,r14) 
mova @(data_CE31308,pc),r0  ; r0 set to 0xCE31308
fmov.s @r0,fr3
mov 0x60,r0 ; r0 set to 0x60
mov 0x36,r3 ; r3 set to 0x36
fmov.s fr3,@(r0,r14) 
mova @(data_CE3130C,pc),r0  ; r0 set to 0xCE3130C
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6C
mov 0x00,r4 ; r4 set to 0x00
fmov.s fr3,@(r0,r14) 
mov 0x14,r5 ; r5 set to 0x14
mov.w @(data_CE312E0,pc),r0 ; r0 set to 0x1A1
mov r4,r6 ; r6 set to 0x00
mov.b r3,@(r0,r14) 
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r4,@(r0,r14) 
add 0xF2,r0 ; r0 set to 0x19E
mov.b r4,@(r0,r14) 
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(ptr_CE31310_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
mov.l r4,@(r0,r14) 
mov.b @(0x02,r14),r0 
mov.l @r3,r2
extu.b r0,r0
shll r0 ; r0 set to 0x388
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 
lds.l @r15+,pr 
mov.l @(ptr_CE312E8_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov r14,r4 ; r4 ??? bc r14 is ???
jmp @r2
mov.l @r15+,r14

data_CE312DC:
	#data 0x01F9

data_CE312DE:
	#data 0x01D2

data_CE312E0:
	#data 0x01A1
	#align4

ptr_CE312E4_to_loc_8c11E730:
#data loc_8c11E730

ptr_CE312E8_to_loc_8c034E8C:
	#data loc_8c034E8C

ptr_CE312EC_to_loc_8c046C8A:
	#data loc_8c046C8A

ptr_CE312F0_to_loc_8c051648:
	#data loc_8c051648

ptr_CE312F4_to_ptr_CE32E20_to_code_CE3124A:
	#data ptr_CE32E20_to_code_CE3124A

ptr_CE312F8_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE312FC_to_ptr_CE32E34_to_code_CE31262:
	#data ptr_CE32E34_to_code_CE31262

ptr_CE31300_to_loc_8c035162:
	#data loc_8c035162

;not proj
data_CE31304:
	#data 0x41F00000

data_CE31308:
	#data 0x40892492

data_CE3130C:
	#data 0xBF4DB6DB

ptr_CE31310_to_loc_8c2896B0:
	#data loc_8c2896B0


code_CE31314:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE3146C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
mov 0x5C,r1 ; r1 set to 0x5C
mov.l @(ptr_CE31470_to_loc_8c052CE2,pc),r3 ; r3 set to 0x8C052CE2
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
extu.b r0,r0
tst r0,r0
bt code_CE3137C
mov.b @(0x06,r14),r0 
mov 0x14,r5 ; r5 set to 0x14
mov.l @(ptr_CE31474_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov 0x01,r6 ; r6 set to 0x01
add 0x01,r0 ; r0 set to 0x61
mov.b r0,@(0x06,r14) 
jsr @r3
mov r14,r4
lds.l @r15+,pr 
mov.l @(ptr_CE31478_to_loc_8c0511B4,pc),r2 ; r2 set to 0x8C0511B4
mov r14,r4
jmp @r2
mov.l @r15+,r14

code_CE3137C:
lds.l @r15+,pr 
rts 
mov.l @r15+,r14
;-------------------------------------------------------------------------------

code_CE31382:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE3146C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
exts.b r0,r0
cmp/pz r0
bt code_CE313A4
mov.l @(ptr_CE3147C_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162
mov 0x00,r5 ; r5 set to 0x00
jsr @r3
mov r14,r4
lds.l @r15+,pr 
mov.l @(ptr_CE31480_to_loc_8c051854,pc),r2 ; r2 set to 0x8C051854
mov r14,r4
jmp @r2
mov.l @r15+,r14

code_CE313A4:
mov.w @(data_CE3145E,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bt code_CE313B0
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r14) 

code_CE313B0:
lds.l @r15+,pr 
rts 
mov.l @r15+,r14

;-------------------------------------------------------------------------------
;ce313b6
PL15_SpecPRG:
	mov.w @(data_CE31460,pc),r0 ; r0 set to 0x1E9
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(ptr_CE31484_to_Table_SpecialPRG,pc),r0 ; r0 set to 0xCE32E40
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;##############################################################
;ce313ca
Special_lil_saboten:
	mov r4,r3
	mov.l @(ptr_lil_sabotenPRG_Table,pc),r1 ; r1 set to 0xCE32E64
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0 
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================================
;ce313dc
lil_sabotenPRG_state0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0 
	mov.l @(ptr_CE3148C_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
	add 0x01,r0
	mov.b r0,@(0x06,r14) 
	mov.w @(data_CE31462,pc),r0 ; r0 set to 0x1F9
	mov.b r13,@(r0,r14) 
	mov.w @(data_CE31464,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14) 
	jsr @r3
	mov r14,r4
	mov.l @(ptr_CE31490_to_loc_8c05115A,pc),r2 ; r2 set to 0x8C05115A
	jsr @r2
	mov r14,r4
	mov.l @(ptr_CE31494_to_loc_8c056DE4,pc),r3 ; r3 set to 0x8C056DE4
	mov 0x05,r5 ; r5 set to 0x05
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
	mov.w @(data_CE31466,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	add 0xA3,r0 ; r0 set to 0x1A1
	add 0x30,r3
	mov.b r3,@(r0,r14) 
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14) 
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14) 
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(ptr_CE31498_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r13,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0 ; r0 set to 0x388
	add 0x7C,r2 ; r2 set to 0x8C0511D6
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)  ; r2 ??? bc r1 is ???
	mov.l @(ptr_CE3148C_to_loc_8c05218A,pc),r2 ; r2 set to 0x8C05218A
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr 
	mov.w @(data_CE31468,pc),r0 ; r0 set to 0x1A3
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @(ptr_CE31474_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov r14,r4
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE3145E:
	#data 0x0141

data_CE31460:
	#data 0x01E9

data_CE31462:
	#data 0x01F9

data_CE31464:
	#data 0x041C

data_CE31466:
	#data 0x01FE

data_CE31468:
	#data 0x01A3
	#align4

ptr_CE3146C_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE31470_to_loc_8c052CE2:
	#data loc_8c052CE2

ptr_CE31474_to_loc_8c034E8C:
	#data loc_8c034E8C

ptr_CE31478_to_loc_8c0511B4:
	#data loc_8c0511B4

ptr_CE3147C_to_loc_8c035162:
	#data loc_8c035162

ptr_CE31480_to_loc_8c051854:
	#data loc_8c051854

ptr_CE31484_to_Table_SpecialPRG:
	#data Table_SpecialPRG

;ce31488
ptr_lil_sabotenPRG_Table:
	#data lil_sabotenPRG_Table

ptr_CE3148C_to_loc_8c05218A:
	#data loc_8c05218A

ptr_CE31490_to_loc_8c05115A:
	#data loc_8c05115A

ptr_CE31494_to_loc_8c056DE4:
	#data loc_8c056DE4

ptr_CE31498_to_loc_8c2896B0:
	#data loc_8c2896B0

;==============================================
;ce3149c
lil_sabotenPRG_state1:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE315A0_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.w @(data_CE31596,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt code_CE314CA

;Set up for next state
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x06,r14)

;Which Buddy
	mov.w @(data_CE31598,pc),r0 ; r0 set to 0x1E9
	mov.b @(r0,r14),r3 ; Grab Special move ID
	tst r3,r3
	bf/s code_CE314C2
	mov r14,r4
	bra code_CE314C4
	mov 0x00,r5

code_CE314C2:
	mov 0x01,r5 ; r5 set to 0x01

code_CE314C4:
	mov.l @(ptr_CE315A4_to_loc_8c081800,pc),r3 ; r3 set to 0x8C081800
	jsr @r3
	nop

code_CE314CA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================================
;ce314d0
lil_sabotenPRG_state2:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(ptr_CE315A0_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt code_CE314EA
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(ptr_CE315A8_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr 

code_CE314EA:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;##############################################################
code_CE314F2:
	mov r4,r3
	mov.l @(ptr_CE315AC_to_ptr_CE32E70_to_code_CE31504,pc),r1 ; r1 set to 0xCE32E70
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0 
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

code_CE31504:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0 
	mov.l @(ptr_CE315B0_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
	add 0x01,r0
	mov.b r0,@(0x06,r14) 
	jsr @r3
	mov r14,r4
	mov.l @(ptr_CE315B4_to_loc_8c056DE4,pc),r2 ; r2 set to 0x8C056DE4
	mov 0x05,r5 ; r5 set to 0x05
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
	mov.w @(data_CE3159A,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bt/s code_CE31554
	mov 0x00,r13 ; r13 set to 0x00
	mov.w @(data_CE3159A,pc),r0 ; r0 set to 0x1F9
	mov.l @(ptr_CE315B8_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
	mov.b r13,@(r0,r14) 
	mov.w @(data_CE3159C,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14) 
	jsr @r3
	mov r14,r4
	bra code_CE3155A
	nop

code_CE31554:
mov.w @(data_CE3159A,pc),r0 ; r0 set to 0x1F9
mov 0x02,r3 ; r3 set to 0x02
mov.b r3,@(r0,r14) 

code_CE3155A:
mov.w @(data_CE3159E,pc),r0 ; r0 set to 0x1A3
mov 0x15,r5 ; r5 set to 0x15
mov.l @(ptr_CE315BC_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
mov r14,r4
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
extu.b r0,r0
shll r0 ; r0 set to 0x388
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 
lds.l @r15+,pr 
mov.w @(data_CE3159E,pc),r0 ; r0 set to 0x1A3
mov.l @(ptr_CE315C0_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
mov.b @(r0,r14),r6
mov.l @r15+,r13
add 0x06,r6
jmp @r2
mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE31596:
	#data 0x0141

data_CE31598:
	#data 0x01E9

data_CE3159A:
	#data 0x01F9

data_CE3159C:
	#data 0x041C

data_CE3159E:
	#data 0x01A3
	#align4

ptr_CE315A0_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE315A4_to_loc_8c081800:
	#data loc_8c081800

ptr_CE315A8_to_loc_8c051648:
	#data loc_8c051648

ptr_CE315AC_to_ptr_CE32E70_to_code_CE31504:
	#data ptr_CE32E70_to_code_CE31504

ptr_CE315B0_to_loc_8c05218A:
	#data loc_8c05218A

ptr_CE315B4_to_loc_8c056DE4:
	#data loc_8c056DE4

ptr_CE315B8_to_loc_8c05115A:
	#data loc_8c05115A

ptr_CE315BC_to_loc_8c2896B0:
	#data loc_8c2896B0

ptr_CE315C0_to_loc_8c034E8C:
	#data loc_8c034E8C

;##############################################################
code_CE315C4:
mov.l r14,@-r15
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(ptr_CE3169C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r4,r14
mov.w @(data_CE3168E,pc),r0 ; r0 set to 0x141
mov.b @(r0,r14),r2
tst r2,r2
bt code_CE31686
mov.b @(0x06,r14),r0 
mov.w @(data_CE31690,pc),r4 ; r4 set to 0x2A4
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x06,r14) 
mov.w @(data_CE31692,pc),r0 ; r0 set to 0x1F9
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
extu.b r0,r0
cmp/eq 0x02,r0 
bf/s code_CE315F2
add r14,r4 ; r4 ??? bc r14 is ???
mov.w @(data_CE31694,pc),r0 ; r0 set to 0x1F5
mov 0x03,r2 ; r2 set to 0x03
mov.b r2,@(r0,r14) 

code_CE315F2:
mov.w @(data_CE3168E,pc),r0 ; r0 set to 0x141
mov 0x00,r5 ; r5 set to 0x00
mov.b r5,@(r0,r14) 
mov r5,r0
nop 
mov.b r0,@(0x02,r4) 
mov 0x01,r3 ; r3 set to 0x01
mov.b r0,@(0x03,r4) 
mov.w @(data_CE31696,pc),r0 ; r0 set to 0x142
mov.b r3,@(r0,r14) 
mov.l @(ptr_CE3169C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r14,r4
mov.l @(ptr_CE316A0_to_loc_8c0D1F94,pc),r13 ; r13 set to 0x8C0D1F94
mov 0x01,r5 ; r5 set to 0x01
jsr @r13
mov r14,r4
mov 0x03,r5 ; r5 set to 0x03
jsr @r13
mov r14,r4
mov 0x04,r5 ; r5 set to 0x04
jsr @r13
mov r14,r4
mov 0x05,r5 ; r5 set to 0x05
jsr @r13
mov r14,r4
mov 0x06,r5 ; r5 set to 0x06
jsr @r13
mov r14,r4
mov 0x07,r5 ; r5 set to 0x07
jsr @r13
mov r14,r4
mov.w @(data_CE31692,pc),r0 ; r0 set to 0x1F9
mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
tst r2,r2
bf code_CE31640
mov 0x08,r5 ; r5 set to 0x08
jsr @r13
mov r14,r4

code_CE31640:
mov.w @(data_CE31698,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r2
tst r2,r2
bf code_CE3165A
mov 0x26,r0 ; r0 set to 0x26
mov.w r0,@(0x1C,r14) 
mova @(data_CE316A4,pc),r0  ; r0 set to 0xCE316A4
fmov.s @r0,fr3
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr3,@(r0,r14) 
mova @(data_CE316A8,pc),r0  ; r0 set to 0xCE316A8
bra code_CE3166A
fmov.s @r0,fr3

code_CE3165A:
mov 0x32,r0 ; r0 set to 0x32
mov.w r0,@(0x1C,r14) 
mova @(data_CE316AC,pc),r0  ; r0 set to 0xCE316AC
fmov.s @r0,fr3
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s fr3,@(r0,r14) 
mova @(data_CE316B0,pc),r0  ; r0 set to 0xCE316B0
fmov.s @r0,fr3

code_CE3166A:
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr3,@(r0,r14) 
mov.w @(data_CE3169A,pc),r0 ; r0 set to 0x1D2
mov.b @(r0,r14),r3
tst r3,r3
bt code_CE31686
mov 0x5C,r0 ; r0 set to 0x5C
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 
mov 0x68,r0 ; r0 set to 0x68
fmov.s @(r0,r14),fr3
fneg fr3
fmov.s fr3,@(r0,r14) 

code_CE31686:
lds.l @r15+,pr 
mov.l @r15+,r13
rts 
mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE3168E:
	#data 0x0141

data_CE31690:
	#data 0x02A4

data_CE31692:
	#data 0x01F9

data_CE31694:
	#data 0x01F5

data_CE31696:
	#data 0x0142

data_CE31698:
	#data 0x01A3

data_CE3169A:
	#data 0x01D2
	#align4

ptr_CE3169C_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE316A0_to_loc_8c0D1F94:
	#data loc_8c0D1F94

;notproj
data_CE316A4:
	#data 0xC1C80000

data_CE316A8:
	#data 0x3FA00000

data_CE316AC:
	#data 0xC2055555

data_CE316B0:
	#data 0x3FBAAAAA

;##############################################################
code_CE316B4:
	mov.w @(data_CE317E4,pc),r0 ; r0 set to 0x1F9
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov.w @(data_CE317E2,pc),r13 ; r13 set to 0x2A4
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bf/s code_CE316D0
	add r14,r13 ; r13 ??? bc r14 is ???
	mov.w @(data_CE317E6,pc),r0 ; r0 set to 0x1F5
	mov 0x03,r2 ; r2 set to 0x03
	mov.b r2,@(r0,r14) 

code_CE316D0:
	mov.w @(data_CE317E8,pc),r0 ; r0 set to 0x19E
	mov.b @(r0,r14),r3
	tst r3,r3
	bt code_CE316E4
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	tst 0x80,r0 
	bf code_CE316E4
	mov.b @(0x02,r13),r0
	add 0x01,r0
	mov.b r0,@(0x02,r13)

code_CE316E4:
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.l @(ptr_CE317F4_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
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
	mov.w @(data_CE317EA,pc),r0 ; r0 set to 0x14B
	mov.b @(r0,r14),r5
	extu.b r5,r3
	tst r3,r3
	bt/s code_CE31744
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(data_CE317EC,pc),r3 ; r3 set to 0x80
	extu.b r5,r2
	cmp/ge r3,r2
	bt code_CE31744
	mov.b @(r0,r14),r1
	add 0x56,r0 ; r0 set to 0x1A1
	mov.l @(ptr_CE317F8_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
	add 0x33,r1
	mov.b r1,@(r0,r14) 
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14) 
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14) 
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0 ; r0 set to 0x388
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov.w @(data_CE317EA,pc),r0 ; r0 set to 0x14B
	mov.b r4,@(r0,r14)

code_CE31744:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x14A
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	cmp/pl r0
	bf code_CE31760
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s @(r0,r14),fr2
	fmul fr3,fr2
	fldi0 fr3
	fcmp/gt fr3,fr2
	bf code_CE31798

code_CE31760:
	mov.b @(0x06,r14),r0 
	add 0x01,r0 ; r0 set to 0x5D
	mov.b r0,@(0x06,r14) 
	mov.w @(data_CE317E4,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bf code_CE31774
	mov.w @(data_CE317E6,pc),r0 ; r0 set to 0x1F5
	mov.b r4,@(r0,r14) 

code_CE31774:
	mov.w @(data_CE317EE,pc),r0 ; r0 set to 0x1A3
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @(ptr_CE317FC_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b @(r0,r14),r6
	add 0x08,r6
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14) 
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14) 
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14) 
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14) 
	mov 0x01,r0 ; r0 set to 0x01	
	mov.b r0,@(0x03,r13) 

code_CE31798:
	lds.l @r15+,pr 
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE317A0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE317F4_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	mov.w @(data_CE317F0,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	cmp/eq 0x09,r0 
	bf code_CE317DC
	mov.b @(0x06,r14),r0 
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x06,r14) 
	mov.w @(data_CE317F0,pc),r0 ; r0 set to 0x141
	mov.b r3,@(r0,r14) 
	mov.w @(data_CE317E4,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bf code_CE317DC
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14) 
	mov 0x68,r0 ; r0 set to 0x68
	mov.l @(ptr_CE31800_to_loc_8c05176E,pc),r3 ; r3 set to 0x8C05176E
	mov r14,r4
	fmov.s fr4,@(r0,r14) 
	lds.l @r15+,pr 
	jmp @r3
	mov.l @r15+,r14

code_CE317DC:
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
data_CE317E2:
	#data 0x02A4

data_CE317E4:
	#data 0x01F9

data_CE317E6:
	#data 0x01F5

data_CE317E8:
	#data 0x019E

data_CE317EA:
	#data 0x014B

data_CE317EC:
	#data 0x0080

data_CE317EE:
	#data 0x01A3

data_CE317F0:
	#data 0x0141
	#align4

ptr_CE317F4_to_loc_8c034DEE:
#data loc_8c034DEE

ptr_CE317F8_to_loc_8c2896B0:
	#data loc_8c2896B0

ptr_CE317FC_to_loc_8c034E8C:
	#data loc_8c034E8C

ptr_CE31800_to_loc_8c05176E:
	#data loc_8c05176E

;##############################################################
code_CE31804:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE31920_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt code_CE31828
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14) 
	mov 0x68,r0 ; r0 set to 0x68
	mov.l @(ptr_CE31924_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	fmov.s fr4,@(r0,r14) 
	lds.l @r15+,pr 
	jmp @r3
	mov.l @r15+,r14

code_CE31828:
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE3182E:
	mov r4,r3
	mov.l @(ptr_CE31928_to_ptr_CE32E84_to_code_CE31840,pc),r1 ; r1 set to 0xCE32E84
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0 
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

code_CE31840:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x07,r14),r0 
	mov.l @(ptr_CE31920_to_loc_8c034DEE,pc),r11 ; r11 set to 0x8C034DEE
	mov 0x03,r5 ; r5 set to 0x03
	extu.b r0,r0
	fldi0 fr15
	cmp/eq 0x00,r0 
	mov 0x05,r4 ; r4 set to 0x05
	mov 0x02,r12 ; r12 set to 0x02
	bt/s code_CE3187C
	mov 0x00,r13 ; r13 set to 0x00
	cmp/eq 0x01,r0 
	bt code_CE318F6
	cmp/eq 0x02,r0 
	bf code_CE31870
	bra code_CE3197C
	nop

code_CE31870:
	cmp/eq 0x03,r0
	bf code_CE31878
	bra code_CE319AC
	nop

code_CE31878:
	bra code_CE319FA
	nop

code_CE3187C:
	mov.w @(data_CE3190C,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x06,r0 
	bf/s code_CE31892
	mov 0x10,r4 ; r4 set to 0x10
	mov.w @(data_CE31910,pc),r0 ; r0 set to 0x3F0
	mov.w @(data_CE3190E,pc),r2 ; r2 set to 0xFF
	mov.b r2,@(r0,r14) 
	add 0x01,r0 ; r0 set to 0x3F1
	mov.b r4,@(r0,r14) 

code_CE31892:
	mov.b @(0x07,r14),r0 
	mov 0x38,r3 ; r3 set to 0x38
	add 0x01,r0 ; r0 set to 0x3F2
	mov.b r0,@(0x07,r14) 
	mov.w @(data_CE31912,pc),r0 ; r0 set to 0x1F9
	mov.b r13,@(r0,r14) 
	mov.w @(data_CE31914,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14) 
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr15,@(r0,r14) 
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr15,@(r0,r14) 
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr15,@(r0,r14) 
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr15,@(r0,r14) 
	mov.w @(data_CE31916,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14) 
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r13,@(r0,r14) 
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r13,@(r0,r14) 
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(ptr_CE3192C_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0 ; r0 set to 0x388
	add 0x7C,r2 ; r2 set to 0x17B
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)  ; r2 ??? bc r1 is ???
	mov.w @(data_CE31918,pc),r0 ; r0 set to 0x1AC
	mov.l @(ptr_CE31930_to_loc_8c05218A,pc),r2 ; r2 set to 0x8C05218A
	mov.w r4,@(r0,r14) 
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.l @(ptr_CE31934_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x16,r5 ; r5 set to 0x16
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r3
	mov r14,r4
	mov.l @(ptr_CE31938_to_loc_8c05115A,pc),r2 ; r2 set to 0x8C05115A
	jsr @r2
	mov r14,r4
	bra code_CE319FA
	nop

code_CE318F6:
	mov.w @(data_CE3191A,pc),r0 ; r0 set to 0x3F8
	mov.b r12,@(r0,r14) 
	mov.w @(data_CE3191C,pc),r0 ; r0 set to 0x328
	mov.b r4,@(r0,r14) 
	mov.w @(data_CE3190C,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x06,r0 
	bf code_CE3193C
	bra code_CE3193E
	mov 0x02,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE3190C:
	#data 0x0255

data_CE3190E:
	#data 0x00FF

data_CE31910:
	#data 0x03F0

data_CE31912:
	#data 0x01F9

data_CE31914:
	#data 0x041C

data_CE31916:
	#data 0x01A1

data_CE31918:
	#data 0x01AC

data_CE3191A:
	#data 0x03F8

data_CE3191C:
	#data 0x0328
	#align4

ptr_CE31920_to_loc_8c034DEE:
#data loc_8c034DEE

ptr_CE31924_to_loc_8c051648:
	#data loc_8c051648

ptr_CE31928_to_ptr_CE32E84_to_code_CE31840:
	#data ptr_CE32E84_to_code_CE31840

ptr_CE3192C_to_loc_8c2896B0:
	#data loc_8c2896B0

ptr_CE31930_to_loc_8c05218A:
	#data loc_8c05218A

ptr_CE31934_to_loc_8c034E8C:
	#data loc_8c034E8C

ptr_CE31938_to_loc_8c05115A:
	#data loc_8c05115A

;##############################################################
code_CE3193C:
	mov 0x00,r3 ; r3 set to 0x00

code_CE3193E:
	mov.w @(data_CE31A0A,pc),r0 ; r0 set to 0x3F1
	mov.b r3,@(r0,r14) 
	jsr @r11
	mov r14,r4
	mov.w @(data_CE31A0C,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt code_CE319FA
	mov.w @(data_CE31A0E,pc),r0 ; r0 set to 0x3F0
	mov r15,r5
	mov.l @(ptr_CE31A1C_to_loc_8c050834,pc),r3 ; r3 set to 0x8C050834
	mov 0x01,r6 ; r6 set to 0x01
	mov.b r13,@(r0,r14) 
	add 0x01,r0 ; r0 set to 0x3F1
	mov.b r13,@(r0,r14) 
	mov.b @(0x07,r14),r0 
	add 0x01,r0 ; r0 set to 0x3F2
	mov.b r0,@(0x07,r14) 
	mov.w @(data_CE31A0C,pc),r0 ; r0 set to 0x141
	mov.b r13,@(r0,r14) 
	mova @(data_CE31A18,pc),r0  ; r0 set to 0xCE31A18
	fmov.s fr15,@r15
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15) 
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s fr15,@(r0,r15)
	jsr @r3
	mov r14,r4
	bra code_CE319FA
	nop 

code_CE3197C:
	mov.w @(data_CE31A10,pc),r0 ; r0 set to 0x1F5
	mov.b r5,@(r0,r14) 
	mov.w @(data_CE31A12,pc),r0 ; r0 set to 0x3F8
	mov.b r12,@(r0,r14) 
	mov.w @(data_CE31A14,pc),r0 ; r0 set to 0x328
	mov.b r4,@(r0,r14) 
	jsr @r11
	mov r14,r4
	mov.w @(data_CE31A0C,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bt code_CE319FA
	mov.b @(0x07,r14),r0 
	mov.l @(ptr_CE31A20_to_loc_8c0D245C,pc),r3 ; r3 set to 0x8C0D245C
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x07,r14) 
	mov.w @(data_CE31A0C,pc),r0 ; r0 set to 0x141
	mov.b r13,@(r0,r14) 
	add 0x01,r0 ; r0 set to 0x142
	mov.b r12,@(r0,r14) 
	jsr @r3
	mov r14,r4
	bra code_CE319FA
	nop

code_CE319AC:
	mov.w @(data_CE31A10,pc),r0 ; r0 set to 0x1F5
	mov.b r5,@(r0,r14) 
	mov.w @(data_CE31A12,pc),r0 ; r0 set to 0x3F8
	mov.b r12,@(r0,r14) 
	mov.w @(data_CE31A14,pc),r0 ; r0 set to 0x328
	mov.b r4,@(r0,r14) 
	jsr @r11
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt code_CE319FA
	mov.b @(0x06,r14),r0 
	add 0x01,r0 ; r0 set to 0x329
	mov.b r0,@(0x06,r14) 
	mov r13,r0 ; r0 ??? bc r13 is ???
	nop 
	mov.b r0,@(0x07,r14) 
	mov 0x3C,r0 ; r0 set to 0x3C
	mov.w r0,@(0x1C,r14) 
	mov 0x28,r0 ; r0 set to 0x28
	mov.w r0,@(0x1E,r14) 
	mova @(data_CE31A24,pc),r0  ; r0 set to 0xCE31A24
	fmov.s @r0,fr3
	mov 0x68,r0 ; r0 set to 0x68
	mov.w @(data_CE31A16,pc),r2 ; r2 set to 0x284
	mov r14,r1
	fmov.s fr3,@(r0,r14) 
	mov 0x6C,r0 ; r0 set to 0x6C
	mov.l @(ptr_CE31A28_to_loc_8c1294C8,pc),r3 ; r3 set to 0x8C1294C8
	add r14,r2 ; r2 ??? bc r14 is ???
	add 0x50,r1
	fmov.s fr15,@(r0,r14) 
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C
	mov.l @(ptr_CE31A2C_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x16,r5 ; r5 set to 0x16
	mov 0x01,r6 ; r6 set to 0x01
	jsr @r2
	mov r14,r4

code_CE319FA:
	add 0x0C,r15
	lds.l @r15+,pr 
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
data_CE31A0A:
	#data 0x03F1

data_CE31A0C:
	#data 0x0141

data_CE31A0E:
	#data 0x03F0

data_CE31A10:
	#data 0x01F5

data_CE31A12:
	#data 0x03F8

data_CE31A14:
	#data 0x0328

data_CE31A16:
	#data 0x0284
	#align4

data_CE31A18:
#data 0x42CDB6DB

ptr_CE31A1C_to_loc_8c050834:
	#data loc_8c050834

ptr_CE31A20_to_loc_8c0D245C:
	#data loc_8c0D245C

data_CE31A24:
	#data 0x42080000

ptr_CE31A28_to_loc_8c1294C8:
	#data loc_8c1294C8

ptr_CE31A2C_to_loc_8c034E8C:
	#data loc_8c034E8C


code_CE31A30:
mov.w @(data_CE31B30,pc),r0 ; r0 set to 0x3F8
mov 0x02,r3 ; r3 set to 0x02
mov.l r14,@-r15
mov r4,r14
mov 0x05,r2 ; r2 set to 0x05
mov.l r13,@-r15
sts.l pr,@-r15
mov.b r3,@(r0,r14) 
mov 0x03,r3 ; r3 set to 0x03
mov.w @(data_CE31B32,pc),r0 ; r0 set to 0x328
mov.b r2,@(r0,r14) 
mov.w @(data_CE31B34,pc),r0 ; r0 set to 0x1F5
mov.b r3,@(r0,r14) 
mov.l @(ptr_CE31B40_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
jsr @r3
mov r14,r4
mov.w @(data_CE31B36,pc),r0 ; r0 set to 0x14B
mov.b @(r0,r14),r4
extu.b r4,r3 ; r3 ??? bc r4 is ???
tst r3,r3
bt/s code_CE31A94
mov 0x00,r13 ; r13 set to 0x00
mov.w @(data_CE31B38,pc),r3 ; r3 set to 0x80
extu.b r4,r2 ; r2 ??? bc r4 is ???
cmp/ge r3,r2
bt code_CE31A94
mov.b @(r0,r14),r1
add 0x56,r0 ; r0 set to 0x1A1
mov.l @(ptr_CE31B44_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
add 0x38,r1
mov.b r1,@(r0,r14) 
add 0x0B,r0 ; r0 set to 0x1AC
mov.w r13,@(r0,r14) 
add 0xF2,r0 ; r0 set to 0x19E
mov.b r13,@(r0,r14) 
add 0x26,r0 ; r0 set to 0x1C4
mov.l r13,@(r0,r14) 
mov.b @(0x02,r14),r0 
mov.l @r3,r2
extu.b r0,r0
shll r0 ; r0 set to 0x388
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2) 
mov 0x10,r2 ; r2 set to 0x10
mov.w @(data_CE31B3A,pc),r0 ; r0 set to 0x1AC
mov.w r2,@(r0,r14) 
add 0x9F,r0 ; r0 set to 0x14B
mov.b r13,@(r0,r14) 

code_CE31A94:
mov 0x68,r0 ; r0 set to 0x68
fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
mov 0x6C,r0 ; r0 set to 0x6C
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
fcmp/gt fr2,fr3
bf/s code_CE31AA8
fldi1 fr4
fmov.s @(r0,r14),fr3
fadd fr4,fr3
fmov.s fr3,@(r0,r14) 

code_CE31AA8:
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r14),fr0 ; r0 ??? bc r14 is ???
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s @(r0,r14),fr3
	mov.w @(data_CE31B3C,pc),r0 ; r0 set to 0x284
	fdiv fr0,fr3
	fmov fr4,fr0 ; r0 ??? bc r4 is ???
	fmov.s @(r0,r14),fr2
	mov 0x50,r0 ; r0 set to 0x50
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r14),fr0 ; r0 ??? bc r14 is ???
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s @(r0,r14),fr3
	mov.w @(data_CE31B3E,pc),r0 ; r0 set to 0x288
	fdiv fr0,fr3
	fmov fr4,fr0 ; r0 ??? bc r4 is ???
	fmov.s @(r0,r14),fr2
	mov 0x54,r0 ; r0 set to 0x54
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov.w @(0x1E,r14),r0 
	tst r0,r0
	bt code_CE31AF0
	mov.l @(ptr_CE31B48_to_loc_8c055D54,pc),r3 ; r3 set to 0x8C055D54
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt code_CE31AF0
	mov.w @(0x1E,r14),r0
	add 0xFF,r0 ; r0 set to 0x53
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x54
	mov.w r0,@(0x1C,r14)

code_CE31AF0:
mov.w @(0x1C,r14),r0 
add 0xFF,r0 ; r0 set to 0x53
mov.w r0,@(0x1C,r14) 
exts.w r0,r0
cmp/pz r0
bt code_CE31B28
mov.w @(data_CE31B34,pc),r0 ; r0 set to 0x1F5
mov.b r13,@(r0,r14) 
mov.b @(0x06,r14),r0 
add 0x01,r0 ; r0 set to 0x1F6
mov.b r0,@(0x06,r14) 
mov r13,r0 ; r0 ??? bc r13 is ???
nop 
mov.b r0,@(0x07,r14) 
mova @(data_CE31B4C,pc),r0  ; r0 set to 0xCE31B4C
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6C
mov.l @(ptr_CE31B50_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
mov r14,r4
fmov.s fr3,@(r0,r14) 
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr3,@(r0,r14) 
mov 0x02,r6 ; r6 set to 0x02
lds.l @r15+,pr 
mov 0x16,r5 ; r5 set to 0x16
mov.l @r15+,r13 ; r13 ??? bc r15 is ???
jmp @r3
mov.l @r15+,r14

code_CE31B28:
lds.l @r15+,pr 
mov.l @r15+,r13
rts 
mov.l @r15+,r14
;-------------------------------------------------------------------------------

data_CE31B30:
	#data 0x03F8

data_CE31B32:
	#data 0x0328

data_CE31B34:
	#data 0x01F5

data_CE31B36:
	#data 0x014B

data_CE31B38:
	#data 0x0080

data_CE31B3A:
	#data 0x01AC

data_CE31B3C:
	#data 0x0284

data_CE31B3E:
	#data 0x0288
	#align4

ptr_CE31B40_to_loc_8c034DEE:
#data loc_8c034DEE

ptr_CE31B44_to_loc_8c2896B0:
	#data loc_8c2896B0

ptr_CE31B48_to_loc_8c055D54:
	#data loc_8c055D54

;nope
data_CE31B4C:
	#data 0x42080000

ptr_CE31B50_to_loc_8c034E8C:
	#data loc_8c034E8C


code_CE31B54:
	mov.w @(data_CE31C42,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	mov 0x05,r2 ; r2 set to 0x05
	fldi0 fr3
	sts.l pr,@-r15
	mov.b r3,@(r0,r14) 
	mov.w @(data_CE31C44,pc),r0 ; r0 set to 0x328
	mov.b r2,@(r0,r14) 
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fcmp/eq fr3,fr2
	bt/s code_CE31B78
	fldi1 fr4
	fmov.s @(r0,r14),fr2
	fsub fr4,fr2
	fmov.s fr2,@(r0,r14)

code_CE31B78:
	mov 0x68,r0 ; r0 set to 0x68
	mov.l @(ptr_CE31C50_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	fmov.s @(r0,r14),fr0 ; r0 ??? bc r14 is ???
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov.w @(data_CE31C46,pc),r0 ; r0 set to 0x284
	fdiv fr0,fr3
	fmov fr4,fr0 ; r0 ??? bc r4 is ???
	fmov.s @(r0,r14),fr2
	mov 0x50,r0 ; r0 set to 0x50
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r14),fr0 ; r0 ??? bc r14 is ???
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s @(r0,r14),fr3
	mov.w @(data_CE31C48,pc),r0 ; r0 set to 0x288
	fdiv fr0,fr3
	fmov fr4,fr0 ; r0 ??? bc r4 is ???
	fmov.s @(r0,r14),fr2
	mov 0x54,r0 ; r0 set to 0x54
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14) 
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt code_CE31BDA
	mov.w @(data_CE31C4A,pc),r0 ; r0 set to 0x3F9
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(data_CE31C46,pc),r2 ; r2 set to 0x284
	mov r14,r1
	mov.b r4,@(r0,r14) 
	add 0xFF,r0 ; r0 set to 0x3F8
	mov.b r4,@(r0,r14) 
	add r14,r2 ; r2 ??? bc r14 is ???
	mov.w @(data_CE31C4C,pc),r0 ; r0 set to 0x327
	add 0x50,r1
	mov.l @(ptr_CE31C54_to_loc_8c1294C8,pc),r3 ; r3 set to 0x8C1294C8
	mov.b r4,@(r0,r14) 
	add 0x01,r0 ; r0 set to 0x328
	mov.b r4,@(r0,r14) 
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C
	lds.l @r15+,pr 
	mov.l @(ptr_CE31C58_to_loc_8c051648,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4 ; r4 ??? bc r14 is ???
	jmp @r2
	mov.l @r15+,r14

code_CE31BDA:
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE31BE0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0 
	tst r0,r0
	bf code_CE31C00
	mov.b @(0x06,r14),r0 
	mov r14,r4
	mov.l @(ptr_CE31C5C_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x0E,r6 ; r6 set to 0x0E
	add 0x01,r0
	mov.b r0,@(0x06,r14) 
	mov 0x15,r5 ; r5 set to 0x15
	lds.l @r15+,pr 
	jmp @r3
	mov.l @r15+,r14

code_CE31C00:
	mov.l @(ptr_CE31C50_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt code_CE31C16
	lds.l @r15+,pr 
	mov.l @(ptr_CE31C58_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

code_CE31C16:
	mov.w @(data_CE31C4E,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt code_CE31C2A
	mov 0x00,r3 ; r3 set to 0x00
	mov r3,r5 ; r5 set to 0x00
	mov.b r3,@(r0,r14) 
	mov.l @(ptr_CE31C60_to_loc_8c080FB0,pc),r3 ; r3 set to 0x8C080FB0
	jsr @r3
	mov r14,r4

code_CE31C2A:
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;--------------------------------------------------------------
code_CE31C30:
	mov r4,r3
	mov.l @(ptr_CE31C64_to_ptr_CE32E90_to_code_CE31C68,pc),r1 ; r1 set to 0xCE32E90
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0 
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE31C42:
	#data 0x03F8

data_CE31C44:
	#data 0x0328

data_CE31C46:
	#data 0x0284

data_CE31C48:
	#data 0x0288

data_CE31C4A:
	#data 0x03F9

data_CE31C4C:
	#data 0x0327

data_CE31C4E:
	#data 0x0141
	#align4

ptr_CE31C50_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE31C54_to_loc_8c1294C8:
	#data loc_8c1294C8

ptr_CE31C58_to_loc_8c051648:
	#data loc_8c051648

ptr_CE31C5C_to_loc_8c034E8C:
	#data loc_8c034E8C

ptr_CE31C60_to_loc_8c080FB0:
	#data loc_8c080FB0

ptr_CE31C64_to_ptr_CE32E90_to_code_CE31C68:
	#data ptr_CE32E90_to_code_CE31C68

;##############################################################
code_CE31C68:
	mov.w @(data_CE31D8A,pc),r0 ; r0 set to 0x255
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x06,r0 
	bf code_CE31C84
	mov.w @(data_CE31D8E,pc),r0 ; r0 set to 0x3F0
	mov 0x10,r3 ; r3 set to 0x10
	mov.w @(data_CE31D8C,pc),r2 ; r2 set to 0xFF
	mov.b r2,@(r0,r14) 
	add 0x01,r0 ; r0 set to 0x3F1
	mov.b r3,@(r0,r14)

code_CE31C84:
	mov.b @(0x06,r14),r0 
	mov.l @(ptr_CE31DA0_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
	add 0x01,r0 ; r0 set to 0x3F2
	mov.b r0,@(0x06,r14) 
	jsr @r3
	mov r14,r4
	mov.l @(ptr_CE31DA4_to_loc_8c05115A,pc),r2 ; r2 set to 0x8C05115A
	jsr @r2
	mov r14,r4
	mov.w @(data_CE31D90,pc),r0 ; r0 set to 0x41C
	mov 0x00,r4 ; r4 set to 0x00
	mov 0x3B,r3 ; r3 set to 0x3B
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	mov 0x03,r6 ; r6 set to 0x03
	fmov.s fr3,@(r0,r14) 
	mov 0x16,r5 ; r5 set to 0x16
	mov.w @(data_CE31D92,pc),r0 ; r0 set to 0x1F9
	mov.b r4,@(r0,r14) 
	add 0xA8,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14) 
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14) 
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14) 
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(ptr_CE31DA8_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14) 
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0 ; r0 set to 0x388
	add 0x7C,r2 ; r2 set to 0x8C0511D6
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)  ; r2 ??? bc r1 is ???
	lds.l @r15+,pr 
	mov.l @(ptr_CE31DAC_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	jmp @r2
	mov.l @r15+,r14

code_CE31CD6:
mov r4,r3
mov.l @(ptr_CE31DB0_to_ptr_CE32EA0_to_code_CE31CE8,pc),r1 ; r1 set to 0xCE32EA0
mov.l r4,@-r15
mov.b @(0x07,r3),r0 
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

code_CE31CE8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(data_CE31D94,pc),r0 ; r0 set to 0x3F8
	mov r4,r14
	mov 0x02,r3 ; r3 set to 0x02
	mov.b r3,@(r0,r14) 
	mov 0x05,r2 ; r2 set to 0x05
	mov.w @(data_CE31D96,pc),r0 ; r0 set to 0x328
	mov.b r2,@(r0,r14) 
	mov.w @(data_CE31D8A,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf code_CE31D0C
	bra code_CE31D0E
	mov 0x02,r3

code_CE31D0C:
	mov 0x00,r3 ; r3 set to 0x00

code_CE31D0E:
	mov.w @(data_CE31D98,pc),r0 ; r0 set to 0x3F1
	mov.b r3,@(r0,r14) 
	mov.l @(ptr_CE31DB4_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	mov.w @(data_CE31D9A,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt/s code_CE31D4A
	mov 0x00,r13 ; r13 set to 0x00
	mov.b r13,@(r0,r14)
	mov r15,r5
	mov.w @(data_CE31D8E,pc),r0 ; r0 set to 0x3F0
	mov 0x01,r6 ; r6 set to 0x01
	mov.l @(ptr_CE31DC0_to_loc_8c050834,pc),r3 ; r3 set to 0x8C050834
	mov.b r13,@(r0,r14) 
	add 0x01,r0 ; r0 set to 0x3F1
	mov.b r13,@(r0,r14) 
	mova @(data_CE31DB8,pc),r0  ; r0 set to 0xCE31DB8
	fmov.s @r0,fr3
	mova @(data_CE31DBC,pc),r0  ; r0 set to 0xCE31DBC
	fmov.s fr3,@r15
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	mov 0x08,r0 ; r0 set to 0x08
	fldi0 fr3
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4

code_CE31D4A:
	mov.w @(data_CE31D9C,pc),r0 ; r0 set to 0x140
	mov.b @(r0,r14),r2
	tst r2,r2
	bt code_CE31D80
	mov.b @(0x07,r14),r0 
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(ptr_CE31DC4_to_loc_8c082210,pc),r3 ; r3 set to 0x8C082210
	add 0x01,r0 ; r0 set to 0x141
	mov.b r0,@(0x07,r14) 
	mov 0x78,r0 ; r0 set to 0x78
	mov.w r0,@(0x1C,r14) 
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf/s code_CE31D80
	mov.l r0,@(0x14,r14) 
	mov.b @(0x06,r14),r0 
	add 0x01,r0 ; r0 set to 0x79
	mov.b r0,@(0x06,r14) 
	mov r13,r0 ; r0 ??? bc r13 is ???
	nop 
	mov.l @(ptr_CE31DAC_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x16,r5 ; r5 set to 0x16
	mov.b r0,@(0x07,r14) 
	mov 0x04,r6 ; r6 set to 0x04
	jsr @r3
	mov r14,r4

code_CE31D80:
	add 0x0C,r15
	lds.l @r15+,pr 
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
data_CE31D8A:
	#data 0x0255

data_CE31D8C:
	#data 0x00FF

data_CE31D8E:
	#data 0x03F0

data_CE31D90:
	#data 0x041C

data_CE31D92:
	#data 0x01F9

data_CE31D94:
	#data 0x03F8

data_CE31D96:
	#data 0x0328

data_CE31D98:
	#data 0x03F1

data_CE31D9A:
	#data 0x0141

data_CE31D9C:
	#data 0x0140
	#align4

ptr_CE31DA0_to_loc_8c05218A:
	#data loc_8c05218A

ptr_CE31DA4_to_loc_8c05115A:
	#data loc_8c05115A

ptr_CE31DA8_to_loc_8c2896B0:
	#data loc_8c2896B0

ptr_CE31DAC_to_loc_8c034E8C:
	#data loc_8c034E8C

ptr_CE31DB0_to_ptr_CE32EA0_to_code_CE31CE8:
	#data ptr_CE32EA0_to_code_CE31CE8

ptr_CE31DB4_to_loc_8c034DEE:
	#data loc_8c034DEE

;nope
data_CE31DB8:
	#data 0xC1D55555

data_CE31DBC:
	#data 0x432B6DB6

ptr_CE31DC0_to_loc_8c050834:
	#data loc_8c050834

ptr_CE31DC4_to_loc_8c082210:
	#data loc_8c082210


code_CE31DC8:
	mov.w @(data_CE31F1C,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x05,r2 ; r2 set to 0x05
	mov.w @(data_CE31F1E,pc),r0 ; r0 set to 0x328
	mov.l @(ptr_CE31F2C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x327
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt code_CE31E18
	mov.w @(data_CE31F20,pc),r0 ; r0 set to 0x3F9
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r4,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x3F8
	mov.b r4,@(r0,r14)
	mov.w @(data_CE31F22,pc),r0 ; r0 set to 0x327
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x328
	mov.b r4,@(r0,r14)
	mov.b @(0x06,r14),r0
	add 0x01,r0 ; r0 set to 0x329
	mov.b r0,@(0x06,r14)
	mov r4,r0
	nop
	mov.l @(ptr_CE31F30_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.b r0,@(0x07,r14)
	mov 0x04,r6 ; r6 set to 0x04
	lds.l @r15+,pr
	mov 0x16,r5 ; r5 set to 0x16
	jmp @r3
	mov.l @r15+,r14

code_CE31E18:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE31E1E:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(ptr_CE31F2C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt code_CE31E38
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(ptr_CE31F34_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

code_CE31E38:
	add 0x04,r15
	lds.l @r15+,pr 
	rts 
	nop 

;-------------------------------------------------------------------------------
code_CE31E40:
	mov.w @(data_CE31F24,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14) 
	mov r14,r4
	mov.b @(0x07,r14),r0 
	mov.l @(ptr_CE31F38_to_ptr_CE32EA8_to_code_CE31E5A,pc),r1 ; r1 set to 0xCE32EA8
	extu.b r0,r0
	shll2 r0 ; r0 set to 0x7A8
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

code_CE31E5A:
	mov.w @(data_CE31F1C,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov 0x05,r2 ; r2 set to 0x05
	mov.b r3,@(r0,r4) 
	mov r2,r6 ; r6 set to 0x05
	mov.w @(data_CE31F1E,pc),r0 ; r0 set to 0x328
	mov.l @(ptr_CE31F30_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b r2,@(r0,r4) 
	mov.b @(0x07,r4),r0 
	add 0x01,r0 ; r0 set to 0x329
	mov.b r0,@(0x07,r4) 
	jmp @r3
	mov 0x16,r5

code_CE31E74:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(data_CE31F1C,pc),r0 ; r0 set to 0x3F8
	mov r4,r14
	mov 0x02,r3 ; r3 set to 0x02
	mov.b r3,@(r0,r14) 
	mov 0x05,r2 ; r2 set to 0x05
	mov.w @(data_CE31F1E,pc),r0 ; r0 set to 0x328
	mov.b r2,@(r0,r14) 
	mov.w @(data_CE31F26,pc),r0 ; r0 set to 0x140
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt code_CE31F50
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14) 
	mov 0x0F,r5 ; r5 set to 0x0F
	mov.b @(0x07,r14),r0 
	mov 0x03,r6 ; r6 set to 0x03
	mov.l @(ptr_CE31F30_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	add 0x01,r0 ; r0 set to 0x141
	mov.b r0,@(0x07,r14) 
	mov 0x18,r0 ; r0 set to 0x18
	mov.w r0,@(0x1C,r14) 
	jsr @r3
	mov r14,r4
	mov.w @(data_CE31F28,pc),r0 ; r0 set to 0x1C8
	mov r15,r12
	mov.l @(ptr_CE31F3C_to_loc_8c1294C8,pc),r3 ; r3 set to 0x8C1294C8
	mov r12,r1
	mov.l @(r0,r14),r13
	mov r13,r2 ; r2 ??? bc r13 is ???
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C
	mov.l @(ptr_CE31F40_to_loc_8c04CC1C,pc),r2 ; r2 set to 0x8C04CC1C
	mov r13,r5 ; r5 ??? bc r13 is ???
	jsr @r2
	mov r14,r4
	mova @(data_CE31F44,pc),r0  ; r0 set to 0xCE31F44
	fmov.s @r12,fr3 ; r3 ??? bc r12 is ???
	fmov.s @r0,fr4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr2 ; r2 ??? bc r13 is ???
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi1 fr1
	fadd fr1,fr1
	fsub fr3,fr2
	fldi0 fr3
	mov r13,r1
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r13) 
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr3,@(r0,r13) 
	mova @(data_CE31F48,pc),r0  ; r0 set to 0xCE31F48
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr3,@(r0,r13) 
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r12),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr2
	mov 0x6C,r0 ; r0 set to 0x6C
	fsub fr3,fr2
	fmov.s @(r0,r13),fr3
	mov 0x60,r0 ; r0 set to 0x60
	fmul fr4,fr3
	fdiv fr4,fr2
	fdiv fr1,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r13) 
	mov.l @(ptr_CE31F3C_to_loc_8c1294C8,pc),r3 ; r3 set to 0x8C1294C8
	mov r12,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C
	mov.l @(ptr_CE31F4C_to_loc_8c0D1AEC,pc),r2 ; r2 set to 0x8C0D1AEC
	mov 0x02,r5 ; r5 set to 0x02
	jsr @r2
	mov r14,r4
	bra code_CE31F56
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE31F1C:
	#data 0x03F8

data_CE31F1E:
	#data 0x0328

data_CE31F20:
	#data 0x03F9

data_CE31F22:
	#data 0x0327

data_CE31F24:
	#data 0x01EA

data_CE31F26:
	#data 0x0140

data_CE31F28:
	#data 0x01C8
	#align4

ptr_CE31F2C_to_loc_8c034DEE:
#data loc_8c034DEE

ptr_CE31F30_to_loc_8c034E8C:
	#data loc_8c034E8C

ptr_CE31F34_to_loc_8c051648:
	#data loc_8c051648

ptr_CE31F38_to_ptr_CE32EA8_to_code_CE31E5A:
	#data ptr_CE32EA8_to_code_CE31E5A

ptr_CE31F3C_to_loc_8c1294C8:
	#data loc_8c1294C8

ptr_CE31F40_to_loc_8c04CC1C:
	#data loc_8c04CC1C

;
data_CE31F44:
	#data 0x41C00000

data_CE31F48:
	#data 0xBF892492

ptr_CE31F4C_to_loc_8c0D1AEC:
	#data loc_8c0D1AEC

;##############################################
code_CE31F50:
	mov.l @(ptr_CE320B8_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
	jsr @r2
	mov r14,r4

code_CE31F56:
	add 0x0C,r15
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;##############################################################
code_CE31F62:
	mov.w @(data_CE320A6,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov 0x05,r2 ; r2 set to 0x05
	mov.b r3,@(r0,r4) 
	mov 0x5C,r1 ; r1 set to 0x5C
	mov.w @(data_CE320A8,pc),r0 ; r0 set to 0x328
	mov.b r2,@(r0,r4) 
	mov.w @(data_CE320AA,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r4),r5
	mov 0x34,r0 ; r0 set to 0x34
	add r5,r1 ; r1 ??? bc r5 is ???
	fmov.s @(r0,r5),fr2 ; r2 ??? bc r5 is ???
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	mov 0x68,r1 ; r1 set to 0x68
	fadd fr3,fr2
	fmov.s fr2,@(r0,r5) 
	mov.w @(data_CE320AA,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r4),r5
	mov 0x5C,r0 ; r0 set to 0x5C
	add r5,r1 ; r1 ??? bc r5 is ???
	fmov.s @(r0,r5),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	fadd fr3,fr2
	fmov.s fr2,@(r0,r5) 
	mov.w @(data_CE320AA,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r4),r5
	mov 0x38,r0 ; r0 set to 0x38
	add r5,r1 ; r1 ??? bc r5 is ???
	fmov.s @(r0,r5),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r5) 
	mov 0x6C,r1 ; r1 set to 0x6C
	mov.w @(data_CE320AA,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r4),r5
	mov 0x60,r0 ; r0 set to 0x60
	add r5,r1 ; r1 ??? bc r5 is ???
	fmov.s @(r0,r5),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r5) 
	mov.w @(0x1C,r4),r0 
	add 0xFF,r0 ; r0 set to 0x5F
	mov.w r0,@(0x1C,r4) 
	exts.w r0,r0
	cmp/pl r0
	bt code_CE31FD0
	mov.b @(0x07,r4),r0 
	mov 0x05,r6 ; r6 set to 0x05
	mov.l @(ptr_CE320BC_to_loc_8c02FEC4,pc),r3 ; r3 set to 0x8C02FEC4
	add 0x01,r0 ; r0 set to 0x60
	mov.b r0,@(0x07,r4) 
	jmp @r3
	mov r6,r5

code_CE31FD0:
	rts
	nop

;-------------------------------------------------------------------------------
code_CE31FD4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(data_CE320A6,pc),r0 ; r0 set to 0x3F8
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r13,@-r15
	mov 0x05,r2 ; r2 set to 0x05
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r14) 
	mov.w @(data_CE320A8,pc),r0 ; r0 set to 0x328
	mov.l @(ptr_CE320B8_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	mov.b r2,@(r0,r14) 
	jsr @r3
	mov r14,r4
	mov.w @(data_CE320AA,pc),r0 ; r0 set to 0x1C8
	mov 0x01,r12 ; r12 set to 0x01
	mov.l @(r0,r14),r11
	add 0x88,r0 ; r0 set to 0x150
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bt/s code_CE32010
	mov 0x00,r13 ; r13 set to 0x00
	mov.l @(ptr_CE320C0_to_loc_8c04CC1C,pc),r3 ; r3 set to 0x8C04CC1C
	mov r11,r5
	jsr @r3
	mov r14,r4
	mov.w @(data_CE320AC,pc),r0 ; r0 set to 0x12C
	bra code_CE32014
	mov.b r12,@(r0,r11) 

code_CE32010:
	mov.w @(data_CE320AC,pc),r0 ; r0 set to 0x12C
	mov.b r13,@(r0,r11) 

code_CE32014:
	mov.w @(data_CE320AE,pc),r0 ; r0 set to 0x14B
	mov.b @(r0,r14),r4
	extu.b r4,r3
	tst r3,r3
	bt code_CE3204A
	mov.w @(data_CE320B0,pc),r3 ; r3 set to 0x80
	extu.b r4,r2
	cmp/ge r3,r2
	bt code_CE3204A
	mov.b r13,@(r0,r14) 
	add 0x7D,r0 ; r0 set to 0x1C8
	mov.l @(r0,r14),r3 ; r3 ??? bc r14 is ???
	add 0xEC,r0 ; r0 set to 0x1B4
	mov 0x22,r2 ; r2 set to 0x22
	mov r14,r4
	mov.l r14,@(r0,r3) 
	add 0x14,r0 ; r0 set to 0x1C8
	mov.l @(r0,r14),r3
	add 0xD9,r0 ; r0 set to 0x1A1
	mov.b r2,@(r0,r3) 
	lds.l @r15+,pr 
	mov.l @(ptr_CE320C4_to_loc_8c05933C,pc),r3 ; r3 set to 0x8C05933C
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

code_CE3204A:
	mov.w @(data_CE320B2,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bt code_CE3209A
	mov.w @(data_CE320B4,pc),r0 ; r0 set to 0x3F9
	mov 0x3F,r3 ; r3 set to 0x3F
	fldi0 fr4
	mov.b r13,@(r0,r14) 
	add 0xFF,r0 ; r0 set to 0x3F8
	mov.b r13,@(r0,r14) 
	mov.w @(data_CE320B6,pc),r0 ; r0 set to 0x327
	mov.b r13,@(r0,r14) 
	add 0x01,r0 ; r0 set to 0x328
	mov.b r13,@(r0,r14) 
	mov.b @(0x07,r14),r0 
	add 0x01,r0 ; r0 set to 0x329
	mov.b r0,@(0x07,r14) 
	mov 0x5C,r0 ; r0 set to 0x5C
	fmov.s fr4,@(r0,r14) 
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14) 
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14) 
	mov 0x6C,r0 ; r0 set to 0x6C
	fmov.s fr4,@(r0,r14) 
	mov.w @(data_CE320AA,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r14),r4
	add 0x2E,r0 ; r0 set to 0x1F6
	mov.b r12,@(r0,r4) 
	add 0xAB,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r4) 
	add 0x8B,r0 ; r0 set to 0x12C
	mov.b r12,@(r0,r4) 
	lds.l @r15+,pr 
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @(ptr_CE320C8_to_loc_8c02FD26,pc),r3 ; r3 set to 0x8C02FD26
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

code_CE3209A:
	lds.l @r15+,pr 
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE320A6:
	#data 0x03F8

data_CE320A8:
	#data 0x0328

data_CE320AA:
	#data 0x01C8

data_CE320AC:
	#data 0x012C

data_CE320AE:
	#data 0x014B

data_CE320B0:
	#data 0x0080

data_CE320B2:
	#data 0x0141

data_CE320B4:
	#data 0x03F9

data_CE320B6:
	#data 0x0327
	#align4

ptr_CE320B8_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE320BC_to_loc_8c02FEC4:
	#data loc_8c02FEC4

ptr_CE320C0_to_loc_8c04CC1C:
	#data loc_8c04CC1C

ptr_CE320C4_to_loc_8c05933C:
	#data loc_8c05933C

ptr_CE320C8_to_loc_8c02FD26:
	#data loc_8c02FD26

;==============================================================
code_CE320CC:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(ptr_CE321FC_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt code_CE320E6
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(ptr_CE32200_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr

code_CE320E6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;##############################################################
code_CE320EE:
	mov r4,r3
	mov.l @(ptr_CE32204_to_ptr_CE32EBC_to_code_CE32100,pc),r1 ; r1 set to 0xCE32EBC
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0 
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

code_CE32100:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov.w @(data_CE321EC,pc),r3 ; r3 set to 0x2A4
	add r14,r3 ; r3 ??? bc r14 is ???
	mov.l r3,@r15
	mov.b @(0x06,r14),r0 
	mov.l @(ptr_CE32208_to_loc_8c05218A,pc),r3 ; r3 set to 0x8C05218A
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
	jsr @r3
	mov r14,r4
	mov.l @(ptr_CE3220C_to_loc_8c05115A,pc),r2 ; r2 set to 0x8C05115A
	jsr @r2
	mov r14,r4
	mov.l @(ptr_CE32210_to_loc_8c056DE4,pc),r3 ; r3 set to 0x8C056DE4
	mov 0x05,r5 ; r5 set to 0x05
	jsr @r3
	mov r14,r4
	mov.w @(data_CE321EE,pc),r0 ; r0 set to 0x1A3
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(ptr_CE32214_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
	add 0xFE,r0 ; r0 set to 0x1A1
	add 0x32,r2
	mov.b r2,@(r0,r14) 
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14) 
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14) 
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0 ; r0 set to 0x388
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov.w @(data_CE321F0,pc),r0 ; r0 set to 0x1F9
	mov.b r4,@(r0,r14) 
	mov.w @(data_CE321F2,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14) 
	mov.l @r15,r2
	mov r4,r0
	nop 
	mov 0x15,r5 ; r5 set to 0x15
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov.b r0,@(0x05,r2) 
	mov 0x0A,r6 ; r6 set to 0x0A
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @(ptr_CE32218_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	jmp @r2
	mov.l @r15+,r14

code_CE32188:
	mov r4,r3
	mov.l @(ptr_CE3221C_to_ptr_CE32EC8_to_code_CE32220,pc),r1 ; r1 set to 0xCE32EC8
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0 
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

code_CE3219A:
	mov.w @(data_CE321EC,pc),r5 ; r5 set to 0x2A4
	add r4,r5 ; r5 ??? bc r4 is ???
	mov.b @(0x05,r5),r0 
	cmp/pz r0
	bf code_CE321E8
	mov.w @(data_CE321F4,pc),r0 ; r0 set to 0x348
	mov.w @(data_CE321F6,pc),r3 ; r3 set to 0x300
	mov.w @(r0,r4),r2
	extu.w r2,r2
	tst r3,r2
	bt code_CE321E8
	mov.w @(data_CE321EE,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r4),r2
	tst r2,r2
	bt code_CE321C8
	mov.w @(data_CE321F4,pc),r0 ; r0 set to 0x348
	mov.w @(data_CE321F8,pc),r2 ; r2 set to 0x100
	mov.w @(r0,r4),r1
	extu.w r1,r1
	tst r2,r1
	bf code_CE321D4
	bra code_CE321DA
	nop 

code_CE321C8:
	mov.w @(data_CE321F4,pc),r0 ; r0 set to 0x348
	mov.w @(data_CE321FA,pc),r1 ; r1 set to 0x200
	mov.w @(r0,r4),r2
	extu.w r2,r2
	tst r1,r2
	bt code_CE321DA

code_CE321D4:
	mov.b @(0x05,r5),r0 
	add 0x01,r0 ; r0 set to 0x349
	mov.b r0,@(0x05,r5) 

code_CE321DA:
	mov.b @(0x05,r5),r0
	mov 0x05,r4 ; r4 set to 0x05
	cmp/ge r4,r0
	bf code_CE321E8
	mov r4,r0 ; r0 set to 0x05
	nop
	mov.b r0,@(0x05,r5)

code_CE321E8:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE321EC:
	#data 0x02A4

data_CE321EE:
	#data 0x01A3

data_CE321F0:
	#data 0x01F9

data_CE321F2:
	#data 0x041C

data_CE321F4:
	#data 0x0348

data_CE321F6:
	#data 0x0300

data_CE321F8:
	#data 0x0100

data_CE321FA:
	#data 0x0200
	#align4

ptr_CE321FC_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE32200_to_loc_8c051648:
	#data loc_8c051648

ptr_CE32204_to_ptr_CE32EBC_to_code_CE32100:
	#data ptr_CE32EBC_to_code_CE32100

ptr_CE32208_to_loc_8c05218A:
	#data loc_8c05218A

ptr_CE3220C_to_loc_8c05115A:
	#data loc_8c05115A

ptr_CE32210_to_loc_8c056DE4:
	#data loc_8c056DE4

ptr_CE32214_to_loc_8c2896B0:
	#data loc_8c2896B0

ptr_CE32218_to_loc_8c034E8C:
	#data loc_8c034E8C

ptr_CE3221C_to_ptr_CE32EC8_to_code_CE32220:
	#data ptr_CE32EC8_to_code_CE32220

;##############################################################
code_CE32220:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(data_CE322CE,pc),r12 ; r12 set to 0x2A4
	mov r4,r14
	mov r15,r13
	bsr code_CE3219A
	add r14,r12 ; r12 ??? bc r14 is ???
	mov.l @(ptr_CE322DC_to_loc_8c034DEE,pc),r2 ; r2 set to 0x8C034DEE
	jsr @r2
	mov r14,r4
	mov.w @(data_CE322D0,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bf code_CE32246
	bra code_CE323F2
	nop

code_CE32246:
	mov.b @(0x07,r14),r0 
	mov 0x00,r4 ; r4 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x07,r14) 
	mov.w @(data_CE322D2,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	add 0xFE,r0 ; r0 set to 0x1A1
	add 0x32,r3
	mov.b r3,@(r0,r14) 
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r4,@(r0,r14) 
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r4,@(r0,r14) 
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(ptr_CE322E0_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0 ; r0 set to 0x388
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov r4,r0
	nop 
	mov.b r0,@(0x06,r12) 
	mov 0x03,r2 ; r2 set to 0x03
	mov.w @(data_CE322D4,pc),r0 ; r0 set to 0x1F5
	mov.b r2,@(r0,r14) 
	mov r4,r0
	nop 
	mov.b r0,@(0x01,r12) 
	mov 0x02,r2 ; r2 set to 0x02
	mov.w @(data_CE322D6,pc),r0 ; r0 set to 0x1F9
	mov.b r2,@(r0,r14) 
	add 0xAA,r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r1
	tst r1,r1
	bf code_CE322F8
	mov.l @(ptr_CE322E4_to_loc_8c034E8C,pc),r1 ; r1 set to 0x8C034E8C
	mov 0x15,r5 ; r5 set to 0x15
	mov 0x0C,r6 ; r6 set to 0x0C
	jsr @r1
	mov r14,r4 ; r4 ??? bc r14 is ???
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r2 ; r2 ??? bc r14 is ???
	mov.w r0,@(0x1C,r14) 
	mov 0x1B,r0 ; r0 set to 0x1B
	mov.w r0,@(0x1E,r14) 
	mova @(data_CE322E8,pc),r0  ; r0 set to 0xCE322E8
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60
	mov.l @(ptr_CE322EC_to_loc_8c1294C8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	fmov.s fr3,@(r0,r14) 
	mov r13,r1 ; r1 ??? bc r13 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C
	mova @(data_CE322F0,pc),r0  ; r0 set to 0xCE322F0
	fmov.s @r0,fr4
	mov.w @(data_CE322D8,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf code_CE3232E
	mova @(data_CE322F4,pc),r0  ; r0 set to 0xCE322F4
	bra code_CE3232E
	fmov.s @r0,fr4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE322CE:
	#data 0x02A4

data_CE322D0:
	#data 0x0141

data_CE322D2:
	#data 0x01A3

data_CE322D4:
	#data 0x01F5

data_CE322D6:
	#data 0x01F9

data_CE322D8:
	#data 0x0130
	#align4

ptr_CE322DC_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE322E0_to_loc_8c2896B0:
	#data loc_8c2896B0

ptr_CE322E4_to_loc_8c034E8C:
	#data loc_8c034E8C

;nope
data_CE322E8:
	#data 0x41892492

ptr_CE322EC_to_loc_8c1294C8:
	#data loc_8c1294C8

data_CE322F0:
	#data 0x43855555

data_CE322F4:
	#data 0xC3855555

;##############################################################
code_CE322F8:
	mov.l @(ptr_CE32400_to_loc_8c034E8C,pc),r1 ; r1 set to 0x8C034E8C
	mov 0x15,r5 ; r5 set to 0x15
	mov 0x0F,r6 ; r6 set to 0x0F
	jsr @r1
	mov r14,r4
	mov 0x18,r0 ; r0 set to 0x18
	mov r14,r2
	mov.w r0,@(0x1C,r14) 
	mov 0x13,r0 ; r0 set to 0x13
	mov.w r0,@(0x1E,r14) 
	mova @(data_CE32404,pc),r0  ; r0 set to 0xCE32404
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60
	mov.l @(ptr_CE32408_to_loc_8c1294C8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	fmov.s fr3,@(r0,r14) 
	mov r13,r1 ; r1 ??? bc r13 is ???
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C
	mova @(data_CE3240C,pc),r0  ; r0 set to 0xCE3240C
	fmov.s @r0,fr4
	mov.w @(data_CE323FE,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf code_CE3232E
	mova @(data_CE32410,pc),r0  ; r0 set to 0xCE32410
	fmov.s @r0,fr4

code_CE3232E:
	fmov.s @r13,fr3
	mov 0x64,r0 ; r0 set to 0x64
	mov.l @(ptr_CE32414_to_loc_8c0D1AEC,pc),r3 ; r3 set to 0x8C0D1AEC
	mov 0x00,r5 ; r5 set to 0x00
	fadd fr4,fr3 ; r3 ??? bc r4 is ???
	fmov fr3,fr2
	fmov.s fr3,@r13
	fmov.s fr2,@(r0,r14) 
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt/s code_CE32356
	mov r0,r4 ; r4 set to 0x64
	mov r14,r2
	mov.l @(ptr_CE32408_to_loc_8c1294C8,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1 ; r1 set to 0x64
	add 0x34,r2
	add 0x34,r1 ; r1 set to 0x98
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C

code_CE32356:
	mov.l @(ptr_CE32414_to_loc_8c0D1AEC,pc),r2 ; r2 set to 0x8C0D1AEC
	mov 0x01,r5 ; r5 set to 0x01
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???
	tst r0,r0
	bt/s code_CE32370
	mov r0,r4 ; r4 set to 0x0C
	mov.l @(ptr_CE32408_to_loc_8c1294C8,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1
	mov r13,r2 ; r2 ??? bc r13 is ???
	add 0x34,r1 ; r1 set to 0xCC
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C

code_CE32370:
	mov.l @(data_CE32418,pc),r1 ; r1 set to 0x432B6DB6
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	lds r1,fpul 
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mova @(data_CE3241C,pc),r0  ; r0 set to 0xCE3241C
	fmov.s @r0,fr4
	mov.w @(data_CE323FE,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???
	tst r3,r3
	bf code_CE3238E
	mova @(data_CE32420,pc),r0  ; r0 set to 0xCE32420
	fmov.s @r0,fr4

code_CE3238E:
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(data_CE32424,pc),r1 ; r1 set to 0x42B40000
	fmov.s @(r0,r14),fr3
	lds r1,fpul 
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r13),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r13)
	mova @(data_CE32428,pc),r0  ; r0 set to 0xCE32428
	fmov.s @r0,fr4
	mov.w @(data_CE323FE,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf/s code_CE323B6
	fmov.s @r13,fr3
	mova @(data_CE3242C,pc),r0  ; r0 set to 0xCE3242C
	fmov.s @r0,fr4

code_CE323B6:
	fadd fr4,fr3
	mova @(data_CE32430,pc),r0  ; r0 set to 0xCE32430
	fldi1 fr5
	fadd fr5,fr5
	fmov.s fr3,@r13
	fmov.s @r0,fr4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r13,fr2
	fmov.s @(r0,r14),fr3
	mov 0x5C,r0 ; r0 set to 0x5C
	fsub fr3,fr2
	fldi0 fr3
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r13),fr2
	mov 0x60,r0 ; r0 set to 0x60
	fsub fr3,fr2
	fmov.s @(r0,r14),fr3
	mov 0x6C,r0 ; r0 set to 0x6C
	fmul fr5,fr3
	fdiv fr4,fr2
	fmul fr5,fr2
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14) 

code_CE323F2:
	add 0x0C,r15
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
data_CE323FE:
	#data 0x0130
	#align4

ptr_CE32400_to_loc_8c034E8C:
	#data loc_8c034E8C

data_CE32404:
	#data 0x414DB6DB

ptr_CE32408_to_loc_8c1294C8:
	#data loc_8c1294C8

data_CE3240C:
	#data 0x43C80000

data_CE32410:
	#data 0xC3C80000

ptr_CE32414_to_loc_8c0D1AEC:
	#data loc_8c0D1AEC

data_CE32418:
	#data 0x432B6DB6

data_CE3241C:
	#data 0x43200000

data_CE32420:
	#data 0xC3200000

data_CE32424:
	#data 0x42B40000

data_CE32428:
	#data 0xC1D55555

data_CE3242C:
	#data 0x41D55555

data_CE32430:
	#data 0x42000000


code_CE32434:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE32550_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	mov.w @(data_CE32546,pc),r13 ; r13 set to 0x2A4
	jsr @r3
	add r14,r13 ; r13 ??? bc r14 is ???
	mov 0x5C,r1 ; r1 set to 0x5C
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???
	fadd fr3,fr2
	mov 0x03,r4 ; r4 set to 0x03
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
	mov.w @(data_CE32548,pc),r0 ; r0 set to 0x1F5
	mov.b r4,@(r0,r14) 
	mov.w @(0x1C,r14),r0 
	add 0xFF,r0 ; r0 set to 0x1F4
	mov.w r0,@(0x1C,r14) 
	mov.w @(0x1E,r14),r0 
	add 0xFF,r0 ; r0 set to 0x1F3
	mov.w r0,@(0x1E,r14) 
	exts.w r0,r0
	cmp/pz r0
	bt code_CE3249E
	mov r4,r0
	nop 
	bra code_CE3253C
	mov.b r0,@(0x07,r14)

code_CE3249E:
	bsr code_CE3219A
	mov r14,r4
	mov.b @(0x05,r13),r0 
	mov 0x02,r3 ; r3 set to 0x02
	cmp/ge r3,r0
	bf/s code_CE324C8
	mov 0x00,r12 ; r12 set to 0x00
	mov.b @(0x06,r13),r0 
	tst r0,r0
	bf code_CE324C8
	mov 0x01,r0 ; r0 set to 0x01
	mov.l @(ptr_CE32554_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov.b r0,@(0x06,r13) 
	mov 0x15,r5 ; r5 set to 0x15
	mov.w @(data_CE3254A,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r6
	add 0x12,r6
	jsr @r3
	mov r14,r4
	bra code_CE324FC
	nop

code_CE324C8:
	mov.w @(data_CE3254C,pc),r0 ; r0 set to 0x14B
	mov.b @(r0,r14),r3
	tst r3,r3
	bt code_CE324FC
	mov.w @(data_CE3254A,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	add 0xFE,r0 ; r0 set to 0x1A1
	add 0x32,r3
	mov.b r3,@(r0,r14) 
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r12,@(r0,r14) 
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r12,@(r0,r14) 
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(ptr_CE32558_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r12,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0 ; r0 set to 0x388
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov.w @(data_CE3254C,pc),r0 ; r0 set to 0x14B
	mov.b r12,@(r0,r14) 

code_CE324FC:
	mov 0x60,r0 ; r0 set to 0x60
	fldi0 fr3
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3 ; r3 ??? bc r2 is ???
	bf code_CE3253C
	mov.l @(ptr_CE32554_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x02,r0 ; r0 set to 0x02
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r0,@(0x07,r14)
	mov r0,r6 ; r6 set to 0x02
	jsr @r3
	mov r14,r4
	mov.w @(data_CE3254A,pc),r0 ; r0 set to 0x1A3
	mov.l @(ptr_CE32558_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
	mov.b @(r0,r14),r2
	add 0xFE,r0 ; r0 set to 0x1A1
	add 0x42,r2
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC
	mov.w r12,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E
	mov.b r12,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r12,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0 ; r0 set to 0x388
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

code_CE3253C:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE32546:
	#data 0x02A4

data_CE32548:
	#data 0x01F5

data_CE3254A:
	#data 0x01A3

data_CE3254C:
	#data 0x014B
	#align4

ptr_CE32550_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE32554_to_loc_8c034E8C:
	#data loc_8c034E8C

ptr_CE32558_to_loc_8c2896B0:
	#data loc_8c2896B0

;##############################################################
code_CE3255C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE326E4_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
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
	mov.w @(0x1E,r14),r0 
	add 0xFF,r0 ; r0 set to 0x5E
	mov.w r0,@(0x1E,r14) 
	exts.w r0,r0
	cmp/pz r0
	bt code_CE325B6
	mov.b @(0x07,r14),r0 
	add 0x01,r0 ; r0 set to 0x5F
	mov.b r0,@(0x07,r14) 

code_CE325B6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE325BC:
	mov.w @(data_CE326DC,pc),r0 ; r0 set to 0x1EC
	mov 0x03,r3 ; r3 set to 0x03
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14) 
	mov.l @(ptr_CE326E4_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
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
	exts.w r0,r0
	cmp/pz r0
	bt code_CE3265C
	mov.b @(0x06,r14),r0 
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(data_CE326DE,pc),r5 ; r5 set to 0x2A4
	add 0x01,r0 ; r0 set to 0x60
	mov.b r0,@(0x06,r14) 
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r4,@(r0,r14) 
	add r14,r5 ; r5 ??? bc r14 is ???
	mov r4,r0
	nop 
	mov.b r0,@(0x07,r14) 
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x01,r5) 
	mov 0x15,r5 ; r5 set to 0x15
	mov.w @(data_CE326E0,pc),r0 ; r0 set to 0x41C
	mov 0x0B,r6 ; r6 set to 0x0B
	fldi1 fr4
	mov 0x05,r7 ; r7 set to 0x05
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(ptr_CE326E8_to_loc_8c034F54,pc),r3 ; r3 set to 0x8C034F54
	fmov.s fr3,@(r0,r14) 
	mov.w @(data_CE326E2,pc),r0 ; r0 set to 0x1F9
	mov.b r4,@(r0,r14) 
	mov 0x48,r0 ; r0 set to 0x48
	mov.l r4,@(r0,r14) 
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r14) 
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r14) 
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???
	lds.l @r15+,pr 
	mov.l @(ptr_CE326EC_to_loc_8c0511B4,pc),r2 ; r2 set to 0x8C0511B4
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

code_CE3265C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE32662:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE326E4_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt code_CE3268E
	mov 0x5C,r0 ; r0 set to 0x5C
	fldi0 fr4
	fmov.s fr4,@(r0,r14) 
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14) 
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14) 
	mov 0x6C,r0 ; r0 set to 0x6C
	mov.l @(ptr_CE326F0_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	mov r14,r4
	fmov.s fr4,@(r0,r14) 
	lds.l @r15+,pr 
	jmp @r3
	mov.l @r15+,r14

code_CE3268E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE32694:
	mov r4,r3
	mov.l @(ptr_CE326F4_to_ptr_CE32ED8_to_code_CE326A6,pc),r1 ; r1 set to 0xCE32ED8
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

code_CE326A6:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0 
	mov 0x14,r5 ; r5 set to 0x14
	mov.l @(ptr_CE326F8_to_loc_8c034E8C,pc),r3 ; r3 set to 0x8C034E8C
	mov 0x02,r6 ; r6 set to 0x02
	add 0x01,r0
	mov.b r0,@(0x06,r14) 
	mov.w @(data_CE326E0,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14) 
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
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
data_CE326DC:
	#data 0x01EC

data_CE326DE:
	#data 0x02A4

data_CE326E0:
	#data 0x041C

data_CE326E2:
	#data 0x01F9
	#align4

ptr_CE326E4_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE326E8_to_loc_8c034F54:
	#data loc_8c034F54

ptr_CE326EC_to_loc_8c0511B4:
	#data loc_8c0511B4

ptr_CE326F0_to_loc_8c051648:
	#data loc_8c051648

ptr_CE326F4_to_ptr_CE32ED8_to_code_CE326A6:
	#data ptr_CE32ED8_to_code_CE326A6

ptr_CE326F8_to_loc_8c034E8C:
	#data loc_8c034E8C

;##############################################################
code_CE326FC:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(ptr_CE32810_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt code_CE32716
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(ptr_CE32814_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jmp @r3
	lds.l @r15+,pr 

code_CE32716:
	add 0x04,r15
	lds.l @r15+,pr 
	rts
	nop

;-------------------------------------------------------------------------------
code_CE3271E:
	mov r4,r3
	mov.l @(ptr_CE32818_to_ptr_CE32EE0_to_code_CE32730,pc),r1 ; r1 set to 0xCE32EE0
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0 
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

code_CE32730:
	mov.l r14,@-r15
	mov r4,r14
	fldi0 fr4
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0 
	mov r13,r5 ; r5 set to 0x00
	mov.l @(ptr_CE3281C_to_loc_8c035162,pc),r3 ; r3 set to 0x8C035162
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
	mov.w @(data_CE32808,pc),r0 ; r0 set to 0x1F9
	mov.b r13,@(r0,r14) 
	mov.w @(data_CE3280A,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14) 
	jsr @r3
	mov r14,r4
	mov.l @(ptr_CE32820_to_loc_8c05218A,pc),r2 ; r2 set to 0x8C05218A
	jsr @r2
	mov r14,r4
	mov.l @(ptr_CE32824_to_loc_8c05115A,pc),r3 ; r3 set to 0x8C05115A
	jsr @r3
	mov r14,r4
	mov.w @(data_CE3280C,pc),r0 ; r0 set to 0x1A1
	mov 0x3E,r2 ; r2 set to 0x3E
	mov.l @(ptr_CE32828_to_loc_8c2896B0,pc),r3 ; r3 set to 0x8C2896B0
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
	mov.l @r3,r2
	extu.b r0,r0
	shll r0 ; r0 set to 0x388
	add 0x7C,r2 ; r2 set to 0xBA
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)  ; r2 ??? bc r1 is ???
	lds.l @r15+,pr 
	mov.l @(ptr_CE3282C_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???
	jmp @r2
	mov.l @r15+,r14

code_CE327A6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(ptr_CE32810_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt code_CE327C6
	mov.l @(ptr_CE32814_to_loc_8c051648,pc),r3 ; r3 set to 0x8C051648
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE327C6:
	mov.w @(data_CE3280E,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt code_CE327E8
	mov 0x00,r3 ; r3 set to 0x00
	mov r15,r5
	mov.b r3,@(r0,r14) 
	mova @(data_CE32830,pc),r0  ; r0 set to 0xCE32830
	fmov.s @r0,fr3
	mova @(data_CE32834,pc),r0  ; r0 set to 0xCE32834
	mov.l @(ptr_CE32838_to_loc_8c050EA4,pc),r3 ; r3 set to 0x8C050EA4
	fmov.s fr3,@r15
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15) 
	jsr @r3
	mov r14,r4

code_CE327E8:
	add 0x0C,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE327F0:
	add 0xFC,r15
	mov.l r4,@r15
	mov r4,r0
	nop 
	mov.w @(data_CE32808,pc),r1 ; r1 set to 0x1F9
	mov.l @(ptr_CE3283C_to_ptr_CE32EE8_to_code_CE32840,pc),r2 ; r2 set to 0xCE32EE8
	mov.b @(r0,r1),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r2),r0
	jmp @r0
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE32808:
	#data 0x01F9

data_CE3280A:
	#data 0x041C

data_CE3280C:
	#data 0x01A1

data_CE3280E:
	#data 0x0141
	#align4

ptr_CE32810_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE32814_to_loc_8c051648:
	#data loc_8c051648

ptr_CE32818_to_ptr_CE32EE0_to_code_CE32730:
	#data ptr_CE32EE0_to_code_CE32730

ptr_CE3281C_to_loc_8c035162:
	#data loc_8c035162

ptr_CE32820_to_loc_8c05218A:
	#data loc_8c05218A

ptr_CE32824_to_loc_8c05115A:
	#data loc_8c05115A

ptr_CE32828_to_loc_8c2896B0:
	#data loc_8c2896B0

ptr_CE3282C_to_loc_8c034E8C:
	#data loc_8c034E8C

data_CE32830:
	#data 0xC2A00000

data_CE32834:
	#data 0x43092492

ptr_CE32838_to_loc_8c050EA4:
	#data loc_8c050EA4

ptr_CE3283C_to_ptr_CE32EE8_to_code_CE32840:
	#data ptr_CE32EE8_to_code_CE32840


;##############################################################
code_CE32840:
	mov.w @(data_CE32970,pc),r0 ; r0 set to 0x1FA
	mov 0xF6,r1 ; r1 set to 0xFFFFFFF6
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(data_CE32972,pc),r2 ; r2 set to 0xC00
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	mov 0x22,r0 ; r0 set to 0x22
	extu.w r3,r3
	and r2,r3
	shad r1,r3
	mov.b r3,@(r0,r14) 
	extu.b r3,r3
	tst r3,r3
	bt code_CE3288C
	mov.w @(data_CE32974,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r3
	tst r3,r3
	bf code_CE3288C
	mov.w @(data_CE32976,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0 
	bf code_CE3288C
	mov.l @(ptr_CE32984_to_loc_8c045790,pc),r2 ; r2 set to 0x8C045790
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt/s code_CE3288C
	mov r0,r4
	mov.w @(data_CE32978,pc),r0 ; r0 set to 0x1F7
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r14) 
	mov r4,r0 ; r0 ??? bc r4 is ???
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

code_CE3288C:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

code_CE32894:
	rts 
	mov 0x00,r0

;-------------------------------------------------------------------------------
code_CE32898:
	mov.w @(data_CE32970,pc),r0 ; r0 set to 0x1FA
	mov 0xF6,r1 ; r1 set to 0xFFFFFFF6
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(data_CE32972,pc),r2 ; r2 set to 0xC00
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	mov 0x22,r0 ; r0 set to 0x22
	extu.w r3,r3
	and r2,r3
	shad r1,r3
	mov.b r3,@(r0,r14)
	extu.b r3,r3
	tst r3,r3
	bt code_CE328F0
	mov.w @(data_CE32974,pc),r0 ; r0 set to 0x1FE
	mov.b @(r0,r14),r3
	tst r3,r3
	bf code_CE328F0
	mov.w @(data_CE32976,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf code_CE328F0
	mova @(data_CE32988,pc),r0  ; r0 set to 0xCE32988
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???
	fcmp/gt fr3,fr2
	bf code_CE328F0
	mov.l @(ptr_CE32984_to_loc_8c045790,pc),r2 ; r2 set to 0x8C045790
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt/s code_CE328F0
	mov r0,r4 ; r4 set to 0x38
	mov.w @(data_CE32978,pc),r0 ; r0 set to 0x1F7
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r14)
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE328F0:
	mov 0x00,r0 ; r0 set to 0x00
	lds.l @r15+,pr
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE328F8:
	mov.l r4,@-r15
	mov r4,r0
	nop
	mov.w @(data_CE32978,pc),r1 ; r1 set to 0x1F7
	mov.l @(ptr_CE3298C_to_ptr_CE32EF8_to_code_CE32910,pc),r2 ; r2 set to 0xCE32EF8
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0x3F,r0
	shll2 r0
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

code_CE32910:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(data_CE3297A,pc),r0 ; r0 set to 0x1A0
	mov r4,r14
	mov 0x0A,r3 ; r3 set to 0x0A
	mov.b r3,@(r0,r14)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r2
	mov.w @(data_CE3297C,pc),r3 ; r3 set to 0x800
	extu.b r2,r2
	shll8 r2
	shll2 r2
	tst r3,r2
	bf/s code_CE32942
	mov r14,r4
	mov.w @(data_CE3297E,pc),r0 ; r0 set to 0x130
	mov 0x01,r2 ; r2 set to 0x01
	mov.w @(r0,r14),r1
	xor r2,r1
	mov.w r1,@(r0,r14)
	mov.w @(data_CE32980,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r1
	xor r2,r1
	mov.b r1,@(r0,r14)

code_CE32942:
	mov.l @(ptr_CE32990_to_loc_8c056F2A,pc),r3 ; r3 set to 0x8C056F2A
	jsr @r3
	nop
	mov.l @(ptr_CE32994_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov 0x0F,r5 ; r5 set to 0x0F
	mov 0x00,r6 ; r6 set to 0x00
	jsr @r2
	mov r14,r4
	mova @(data_CE32998,pc),r0  ; r0 set to 0xCE32998
	mov.l @(ptr_CE329A0_to_loc_8c103660,pc),r3 ; r3 set to 0x8C103660
	fmov.s @r0,fr3
	mova @(data_CE3299C,pc),r0  ; r0 set to 0xCE3299C
	mov r15,r5 ; r5 ??? bc r15 is ???
	fmov.s fr3,@r15
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
data_CE32970:
	#data 0x01FA

data_CE32972:
	#data 0x0C00

data_CE32974:
	#data 0x01FE

data_CE32976:
	#data 0x01A3

data_CE32978:
	#data 0x01F7

data_CE3297A:
	#data 0x01A0

data_CE3297C:
	#data 0x0800

data_CE3297E:
	#data 0x0130

data_CE32980:
	#data 0x01D2
	#align4

ptr_CE32984_to_loc_8c045790:
	#data loc_8c045790

data_CE32988:
	#data 0x43092492

ptr_CE3298C_to_ptr_CE32EF8_to_code_CE32910:
	#data ptr_CE32EF8_to_code_CE32910

ptr_CE32990_to_loc_8c056F2A:
	#data loc_8c056F2A

ptr_CE32994_to_loc_8c034E8C:
	#data loc_8c034E8C

data_CE32998:
	#data 0xC2A6AAAA

data_CE3299C:
	#data 0x431E9249

ptr_CE329A0_to_loc_8c103660:
	#data loc_8c103660

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
code_CE329A4:
	mov.w @(data_CE32AE4,pc),r0 ; r0 set to 0x1A0
	mov 0x0A,r3 ; r3 set to 0x0A
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14) 
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r2
	mov.w @(data_CE32AE6,pc),r3 ; r3 set to 0x800
	extu.b r2,r2
	shll8 r2
	shll2 r2
	tst r3,r2
	bf/s code_CE329D4
	mov r14,r4
	mov.w @(data_CE32AE8,pc),r0 ; r0 set to 0x130
	mov 0x01,r2 ; r2 set to 0x01
	mov.w @(r0,r14),r1
	xor r2,r1
	mov.w r1,@(r0,r14) 
	mov.w @(data_CE32AEA,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r14),r1
	xor r2,r1
	mov.b r1,@(r0,r14)

code_CE329D4:
	mov.l @(ptr_CE32AF8_to_loc_8c056F2A,pc),r3 ; r3 set to 0x8C056F2A
	jsr @r3
	nop
	lds.l @r15+,pr
	mov.l @(ptr_CE32AFC_to_loc_8c034E8C,pc),r2 ; r2 set to 0x8C034E8C
	mov r14,r4
	mov 0x00,r6 ; r6 set to 0x00
	mov 0x0F,r5 ; r5 set to 0x0F
	jmp @r2
	mov.l @r15+,r14

code_CE329E8:
	mov.w @(data_CE32AEC,pc),r0 ; r0 set to 0x1EA
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14) 
	add 0x0D,r0 ; r0 set to 0x1F7
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	mov r14,r4
	mov.l @(ptr_CE32B00_to_ptr_CE32F00_to_code_CE32A06,pc),r1 ; r1 set to 0xCE32F00
	extu.b r0,r0
	and 0x3F,r0 
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

code_CE32A06:
	mov r4,r3
	mov.l @(ptr_CE32B04_to_ptr_CE32F08_to_code_CE32A18,pc),r1 ; r1 set to 0xCE32F08
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0 
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

code_CE32A18:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(data_CE32AEE,pc),r0 ; r0 set to 0x1F9
	mov r4,r14
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bf/s code_CE32A84
	mov 0x00,r13 ; r13 set to 0x00
	mov 0x5C,r1 ; r1 set to 0x5C
	add r14,r1 ; r1 ??? bc r14 is ???
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3
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
	mov.w @(data_CE32AF0,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf code_CE32A84
	mov.l @(ptr_CE32B08_to_loc_8c0511B4,pc),r2 ; r2 set to 0x8C0511B4
	jsr @r2
	mov r14,r4
	mov.w @(data_CE32AF0,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14) 
	mov.w @(data_CE32AEE,pc),r0 ; r0 set to 0x1F9
	mov.b r13,@(r0,r14) 

code_CE32A84:
	mov.l @(ptr_CE32B0C_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r14,r4
	mov.w @(data_CE32AF2,pc),r0 ; r0 set to 0x140
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???
	tst r2,r2
	bt code_CE32B28
	mov.b r13,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x141
	mov.b r13,@(r0,r14)
	mov 0x20,r2 ; r2 set to 0x20
	mov.w @(data_CE32AF4,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r14),r3 ; r3 ??? bc r14 is ???
	add 0xEC,r0 ; r0 set to 0x1B4
	mov.l r14,@(r0,r3) 
	add 0x14,r0 ; r0 set to 0x1C8
	mov.l @(r0,r14),r3
	add 0xD9,r0 ; r0 set to 0x1A1
	mov.b r2,@(r0,r3) 
	mov.l @(ptr_CE32B10_to_loc_8c05933C,pc),r3 ; r3 set to 0x8C05933C
	jsr @r3
	mov r14,r4
	mova @(data_CE32B14,pc),r0  ; r0 set to 0xCE32B14
	mov.l @(ptr_CE32B1C_to_loc_8c0FDAB6,pc),r3 ; r3 set to 0x8C0FDAB6
	fmov.s @r0,fr3
	mova @(data_CE32B18,pc),r0  ; r0 set to 0xCE32B18
	mov r15,r5
	mov 0x00,r6 ; r6 set to 0x00
	fmov.s fr3,@r15
	fmov.s @r0,fr3
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15) 
	mov 0x08,r0 ; r0 set to 0x08
	fldi0 fr3
	fmov.s fr3,@(r0,r15) 
	jsr @r3
	mov r14,r4
	mov.l @(ptr_CE32B20_to_loc_8c0424A6,pc),r3 ; r3 set to 0x8C0424A6
	mov 0x01,r5 ; r5 set to 0x01
	mov.w @(data_CE32AF4,pc),r0 ; r0 set to 0x1C8
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @(ptr_CE32B24_to_loc_8c04223A,pc),r2 ; r2 set to 0x8C04223A
	mov 0x0B,r5 ; r5 set to 0x0B
	jsr @r2
	mov r14,r4
	bra code_CE32B4E
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE32AE4:
	#data 0x01A0

data_CE32AE6:
	#data 0x0800

data_CE32AE8:
	#data 0x0130

data_CE32AEA:
	#data 0x01D2

data_CE32AEC:
	#data 0x01EA

data_CE32AEE:
	#data 0x01F9

data_CE32AF0:
	#data 0x041C

data_CE32AF2:
	#data 0x0140

data_CE32AF4:
	#data 0x01C8
	#align4

ptr_CE32AF8_to_loc_8c056F2A:
	#data loc_8c056F2A

ptr_CE32AFC_to_loc_8c034E8C:
	#data loc_8c034E8C

ptr_CE32B00_to_ptr_CE32F00_to_code_CE32A06:
	#data ptr_CE32F00_to_code_CE32A06

ptr_CE32B04_to_ptr_CE32F08_to_code_CE32A18:
	#data ptr_CE32F08_to_code_CE32A18

ptr_CE32B08_to_loc_8c0511B4:
	#data loc_8c0511B4

ptr_CE32B0C_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE32B10_to_loc_8c05933C:
	#data loc_8c05933C

data_CE32B14:
	#data 0xC3555555

data_CE32B18:
	#data 0x432B6DB6

ptr_CE32B1C_to_loc_8c0FDAB6:
	#data loc_8c0FDAB6

ptr_CE32B20_to_loc_8c0424A6:
	#data loc_8c0424A6

ptr_CE32B24_to_loc_8c04223A:
	#data loc_8c04223A

;##############################################################
code_CE32B28:
	mov.w @(data_CE32C3A,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt code_CE32B4E
	mov.b @(0x06,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	mov 0x21,r2 ; r2 set to 0x21
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(data_CE32C3A,pc),r0 ; r0 set to 0x141
	mov.b r13,@(r0,r14)
	mov.w @(data_CE32C3C,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r14),r4
	add 0xEC,r0 ; r0 set to 0x1B4
	mov.l r14,@(r0,r4) 
	add 0x42,r0 ; r0 set to 0x1F6
	mov.b r3,@(r0,r4) 
	add 0xAB,r0 ; r0 set to 0x1A1
	mov.b r2,@(r0,r4) 

code_CE32B4E:
	add 0x0C,r15
	lds.l @r15+,pr 
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
code_CE32B58:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(ptr_CE32C48_to_loc_8c034DEE,pc),r3 ; r3 set to 0x8C034DEE
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt code_CE32B86
	mov.w @(data_CE32C3E,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bf code_CE32B7C
	lds.l @r15+,pr 
	mov.l @(ptr_CE32C4C_to_loc_8c05176E,pc),r2 ; r2 set to 0x8C05176E
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

code_CE32B7C:
	lds.l @r15+,pr 
	mov.l @(ptr_CE32C50_to_loc_8c051648,pc),r2 ; r2 set to 0x8C051648
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

code_CE32B86:
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

code_CE32B8C:
	rts
	nop

;-------------------------------------------------------------------------------
code_CE32B90:
	mov.l r4,@-r15
	mov r4,r0
	nop 
	mov.w @(data_CE32C40,pc),r1 ; r1 set to 0x1F7
	mov.l @(ptr_CE32C54_to_ptr_CE32F10_to_code_CE32BA8,pc),r2 ; r2 set to 0xCE32F10
	mov.b @(r0,r1),r0
	extu.b r0,r0
	and 0x3F,r0 
	shll2 r0
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

code_CE32BA8:
	mov.w @(data_CE32C3C,pc),r0 ; r0 set to 0x1C8
	mov r4,r5
	mov.l r4,@-r15
	mov.l @(ptr_CE32C58_to_loc_8c04CC1C,pc),r3 ; r3 set to 0x8C04CC1C
	mov.l @(r0,r4),r4
	jmp @r3
	add 0x04,r15

code_CE32BB6:
	rts
	nop

;-------------------------------------------------------------------------------
;Write Tree Super
PL15_Assists:
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r4) 
	mov 0x03,r3 ; r3 set to 0x03
	mov.b r0,@(0x07,r4) 
	mov.b r0,@(0x06,r4) 
	mov.w @(data_CE32C42,pc),r0 ; r0 set to 0x1E9
	mov.b r3,@(r0,r4) 
	mov.l @(ptr_CE32C5C_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
	jmp @r3
	mov 0x1D,r5

code_CE32BCE:
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r4) 
	mov 0x03,r3 ; r3 set to 0x03
	mov.b r0,@(0x07,r4) 
	mov.b r0,@(0x06,r4) 
	mov.w @(data_CE32C42,pc),r0 ; r0 set to 0x1E9
	mov.b r3,@(r0,r4) 
	mov.l @(ptr_CE32C5C_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
	jmp @r3
	mov 0x1D,r5

;==============================================
;Assist Write
code_CE32BE2:
	mov 0x00,r5 ; r5 set to 0x00
	mov r5,r0 ; r0 set to 0x00
	nop 
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x07,r4)
	mov.b r0,@(0x06,r4)
	mov.w @(data_CE32C44,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0
	bt code_CE32C02
	cmp/eq 0x01,r0
	bt code_CE32C02
	cmp/eq 0x02,r0
	bt code_CE32C0A
	bra code_CE32C10
	nop

;Heal Assist Write
code_CE32C02:
	mov.w @(data_CE32C42,pc),r0 ; r0 set to 0x1E9
	mov 0x04,r3 ; r3 set to 0x04
	bra code_CE32C10
	mov.b r3,@(r0,r4) 

;Rush Write
code_CE32C0A:
	mov.w @(data_CE32C42,pc),r0 ; r0 set to 0x1E9
	mov 0x02,r1 ; r1 set to 0x02
	mov.b r1,@(r0,r4)

code_CE32C10:
	mov.w @(data_CE32C46,pc),r0 ; r0 set to 0x1A3
	mov 0x01,r2 ; r2 set to 0x01
	mov.l @(ptr_CE32C5C_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
	mov.b r2,@(r0,r4)
	jmp @r3
	mov 0x15,r5

;##############################################
code_CE32C1C:
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r4) 
	mov.b r0,@(0x07,r4) 
	mov.b r0,@(0x06,r4) 
	mov.w @(data_CE32C44,pc),r0 ; r0 set to 0x4C9
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???
	cmp/eq 0x00,r0 
	bt/s code_CE32C60
	mov 0x01,r5 ; r5 set to 0x01
	cmp/eq 0x02,r0 
	bt code_CE32C60
	cmp/eq 0x01,r0 
	bt code_CE32C66
	bra code_CE32C6C
	nop 

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE32C3A:
	#data 0x0141

data_CE32C3C:
	#data 0x01C8

data_CE32C3E:
	#data 0x01F9

data_CE32C40:
	#data 0x01F7

data_CE32C42:
	#data 0x01E9

data_CE32C44:
	#data 0x04C9

data_CE32C46:
	#data 0x01A3
	#align4

ptr_CE32C48_to_loc_8c034DEE:
	#data loc_8c034DEE

ptr_CE32C4C_to_loc_8c05176E:
	#data loc_8c05176E

ptr_CE32C50_to_loc_8c051648:
	#data loc_8c051648

ptr_CE32C54_to_ptr_CE32F10_to_code_CE32BA8:
	#data ptr_CE32F10_to_code_CE32BA8

ptr_CE32C58_to_loc_8c04CC1C:
	#data loc_8c04CC1C

ptr_CE32C5C_to_loc_8c0530D8:
	#data loc_8c0530D8

;==============================================
;
code_CE32C60:
	mov.w @(data_CE32C9C,pc),r0 ; r0 set to 0x1E9
	bra code_CE32C6C
	mov.b r5,@(r0,r4)

;Write rush
code_CE32C66:
	mov.w @(data_CE32C9C,pc),r0 ; r0 set to 0x1E9
	mov 0x02,r2 ; r2 set to 0x02
	mov.b r2,@(r0,r4) 

code_CE32C6C:
	mov.w @(data_CE32C9E,pc),r0 ; r0 set to 0x1A3
	mov.l @(ptr_CE32CA4_to_loc_8c0530D8,pc),r3 ; r3 set to 0x8C0530D8
	mov.b r5,@(r0,r4) 
	jmp @r3
	mov 0x15,r5

code_CE32C76:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(data_CE32CA0,pc),r14 ; r14 set to 0x2A4
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(data_CE32CA2,pc),r6 ; r6 set to 0x80
	add r4,r14 ; r14 ??? bc r4 is ???
	mov.l @(ptr_CE32CA8_to_loc_8c129728,pc),r3 ; r3 set to 0x8C129728
	mov.l r14,@r15
	mov.b @r14,r0
	mov.b r0,@(0x04,r15) 
	jsr @r3
	mov.l @r15,r4
	mov.b @(0x04,r15),r0 
	mov.b r0,@r14
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE32C9C:
	#data 0x01E9

data_CE32C9E:
	#data 0x01A3

data_CE32CA0:
	#data 0x02A4

data_CE32CA2:
	#data 0x0080
	#align4

ptr_CE32CA4_to_loc_8c0530D8:
	#data loc_8c0530D8

ptr_CE32CA8_to_loc_8c129728:
	#data loc_8c129728

data_CE32CAC:
	#data 0x0003 0x1000 0x0000 0x0000 0x1000 0x1400 0x0400 0x0060

data_CE32CBC:
	#data 0x10000003 0x00000008 0x18001000 0x00600800

data_CE32CCC:
	#data 0x10000003 0x00000001 0x14001000 0x03000400

data_CE32CDC:
	#data 0x00000003 0x00000002 0x18001000 0x03000800

data_CE32CEC:
	#data 0x91000003 0x00000003 0x18001000 0x00600800

data_CE32CFC:
	#data 0x91000003 0x00000005 0x14001000 0x03000400

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
data_CE32D0C:
	#data 0x02010201

data_CE32D10:
	#data 0xFFFFFFFF

data_CE32D14:
	#data 0xFFFFFFFF

data_CE32D18:
	#data 0x02010201

data_CE32D1C:
	#data 0xFFFFFFFF

data_CE32D20:
	#data 0xFFFFFFFF

data_CE32D24:
	#data 0x02010201

data_CE32D28:
	#data 0xFFFFFFFF

data_CE32D2C:
	#data 0xFFFFFFFF

data_CE32D30:
	#data 0x02010201

data_CE32D34:
	#data 0xFFFFFFFF

data_CE32D38:
	#data 0xFFFFFFFF

data_CE32D3C:
	#data 0x02000201

data_CE32D40:
	#data 0x020102FF

data_CE32D44:
	#data 0x02FFFFFF

data_CE32D48:
	#data 0x02010201

data_CE32D4C:
	#data 0x02FF02FF

data_CE32D50:
	#data 0xFFFFFFFF

SPL_JumpTable:
	#data code_CE30424 code_CE3001C code_CE3044E code_CE30A5E
	#data PL15_FwdDash PL15_BckDash code_CE3112E code_CE3118C
	#data PL15_SpecPRG code_CE327F0 code_CE328F8 code_CE329E8
	#data code_CE32B90 PL15_DlyHypC code_CE31250 code_CE30D98
	#data PL15_Assists code_CE32BCE code_CE32BE2 code_CE32C1C
	#data 0x00000000 0x00000000 0x00000000 code_CE32C76
	#data 0x00000000 0x00000000 0x00000000 0x00000000

ptr_CE32DC4_to_code_CE30462:
	#data code_CE30462

ptr_CE32DC8_to_code_CE307E2:
	#data code_CE307E2

ptr_CE32DCC_to_code_CE3080A:
	#data code_CE3080A

ptr_CE32DD0_to_code_CE30462:
	#data code_CE30462

ptr_CE32DD4_to_code_CE30ABA:
	#data code_CE30ABA

ptr_CE32DD8_to_code_CE30C8A:
	#data code_CE30C8A

ptr_CE32DDC_to_code_CE30C74:
	#data code_CE30C74

ptr_CE32DE0_to_code_CE30AAC:
	#data code_CE30AAC

ptr_CE32DE4_to_code_CE30EA8:
	#data code_CE30EA8

ptr_CE32DE8_to_code_CE30F28:
	#data code_CE30F28

ptr_CE32DEC_to_code_CE30F86:
	#data code_CE30F86

ptr_CE32DF0_to_code_CE30FE8:
	#data code_CE30FE8

ptr_CE32DF4_to_code_CE3107E:
	#data code_CE3107E

ptr_CE32DF8_to_code_CE310FC:
	#data code_CE310FC

ptr_CE32DFC_to_code_CE31140:
	#data code_CE31140

ptr_CE32E00_to_code_CE3116C:
	#data code_CE3116C

ptr_CE32E04_to_code_CE3119E:
	#data code_CE3119E

ptr_CE32E08_to_code_CE3121E:
	#data code_CE3121E

ptr_CE32E0C_to_code_CE311E4:
	#data code_CE311E4

ptr_CE32E10_to_code_CE3120E:
	#data code_CE3120E

ptr_CE32E14_to_code_CE31216:
	#data code_CE31216

ptr_CE32E18_to_code_CE3120E:
	#data code_CE3120E

ptr_CE32E1C_to_code_CE3120E:
	#data code_CE3120E

ptr_CE32E20_to_code_CE3124A:
	#data code_CE3124A

ptr_CE32E24_to_code_CE3124A:
	#data code_CE3124A

ptr_CE32E28_to_code_CE3124A:
	#data code_CE3124A

ptr_CE32E2C_to_code_CE3124A:
	#data code_CE3124A

ptr_CE32E30_to_code_CE3124A:
	#data code_CE3124A

ptr_CE32E34_to_code_CE31262:
	#data code_CE31262

ptr_CE32E38_to_code_CE31314:
	#data code_CE31314

ptr_CE32E3C_to_code_CE31382:
	#data code_CE31382

;ce32e40
;Amingo Special Move Program Jumps
Table_SpecialPRG:
	#data Special_lil_saboten;00 lil saboten Grab
	#data code_CE320EE;01
	#data code_CE314F2;02
	#data code_CE3182E;03
	#data code_CE31BE0;04
	#data code_CE31C30;05
	#data code_CE32694;06 Taunt
	#data code_CE3271E;07
	#data Special_lil_saboten;08 lil saboten Hit

lil_sabotenPRG_Table:
	#data lil_sabotenPRG_state0
	#data lil_sabotenPRG_state1
	#data lil_sabotenPRG_state2

ptr_CE32E70_to_code_CE31504:
	#data code_CE31504

ptr_CE32E74_to_code_CE315C4:
	#data code_CE315C4

ptr_CE32E78_to_code_CE316B4:
	#data code_CE316B4

ptr_CE32E7C_to_code_CE317A0:
	#data code_CE317A0

ptr_CE32E80_to_code_CE31804:
	#data code_CE31804

ptr_CE32E84_to_code_CE31840:
	#data code_CE31840

ptr_CE32E88_to_code_CE31A30:
	#data code_CE31A30

ptr_CE32E8C_to_code_CE31B54:
	#data code_CE31B54

ptr_CE32E90_to_code_CE31C68:
	#data code_CE31C68

ptr_CE32E94_to_code_CE31CD6:
	#data code_CE31CD6

ptr_CE32E98_to_code_CE31E1E:
	#data code_CE31E1E

ptr_CE32E9C_to_code_CE31E40:
	#data code_CE31E40

ptr_CE32EA0_to_code_CE31CE8:
	#data code_CE31CE8

ptr_CE32EA4_to_code_CE31DC8:
	#data code_CE31DC8

ptr_CE32EA8_to_code_CE31E5A:
	#data code_CE31E5A
	#data code_CE31E74
	#data code_CE31F62
	#data code_CE31FD4
	#data code_CE320CC

ptr_CE32EBC_to_code_CE32100:
	#data code_CE32100

ptr_CE32EC0_to_code_CE32188:
	#data code_CE32188

ptr_CE32EC4_to_code_CE32662:
	#data code_CE32662

ptr_CE32EC8_to_code_CE32220:
	#data code_CE32220

ptr_CE32ECC_to_code_CE32434:
	#data code_CE32434

ptr_CE32ED0_to_code_CE3255C:
	#data code_CE3255C

ptr_CE32ED4_to_code_CE325BC:
	#data code_CE325BC

ptr_CE32ED8_to_code_CE326A6:
	#data code_CE326A6

ptr_CE32EDC_to_code_CE326FC:
	#data code_CE326FC

ptr_CE32EE0_to_code_CE32730:
	#data code_CE32730

ptr_CE32EE4_to_code_CE327A6:
	#data code_CE327A6

ptr_CE32EE8_to_code_CE32840:
	#data code_CE32840

ptr_CE32EEC_to_code_CE32894:
	#data code_CE32894

ptr_CE32EF0_to_code_CE32898:
	#data code_CE32898

ptr_CE32EF4_to_code_CE32840:
	#data code_CE32840

ptr_CE32EF8_to_code_CE32910:
	#data code_CE32910

ptr_CE32EFC_to_code_CE329A4:
	#data code_CE329A4

ptr_CE32F00_to_code_CE32A06:
	#data code_CE32A06

ptr_CE32F04_to_code_CE32B8C:
	#data code_CE32B8C

ptr_CE32F08_to_code_CE32A18:
	#data code_CE32A18

ptr_CE32F0C_to_code_CE32B58:
	#data code_CE32B58

ptr_CE32F10_to_code_CE32BA8:
	#data code_CE32BA8

ptr_CE32F14_to_code_CE32BB6:
	#data code_CE32BB6
