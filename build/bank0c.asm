loc_8C0C005C:
	mov r5,r2
	mov.l @(loc_8C0C01B0,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0C01A8,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	cmp/eq 0x01,r0
	bf loc_8C0C007c
	mov.l @(loc_8C0C01B4,pc),r1 ; r1 set to 0x43700000
	mov 0x38,r0 ; r0 set to 0x38
	lds r1,fpul
	bra loc_8C0C0088
	fsts fpul,fr3

loc_8c0c007c:
	mov.l @(loc_8C0C01BC,pc),r1
	mova @(loc_8C0C01B8,pc),r0
	fmov.s @r0,fr4
	mov 0x38,r0
	lds r1,fpul
	fsts fpul,fr3

loc_8c0c0088:
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0C01AA,pc),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf/s loc_8c0c009a
	mov 0x34,r0
	fneg fr4

loc_8c0c009a:
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3

loc_8c0c009e:
	fmov.s fr3,@(r0,r4)

loc_8C0C00A0:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0C00A6:
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
	fldi0 fr3
	fcmp/gt fr3,fr2
	bt.s loc_8c0c0114
	fmov fr2,@(r0,r14)
	mov.b @(0x5,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.l @(0xD4,PC),r3
	mov.b r0,@(0x5,r14)
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
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)

loc_8C0C0114:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C011A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xA4,PC),r3
	mov r4,r14
	mov.l r5,@r15
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
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c0c0186
	mova @(0x60,PC),r0
	mov.l @r15,r3
	fmov @r0,fr3
	mov.w @(0x3A,PC),r0
	fmov @(r0,r3),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bf loc_8c0c0186
	mov 0x01,r0
	mov 0x03,r5
	mov.w r0,@(0x1C,r14)
	bsr bank0b.loc_8c0bfc64
	mov r14,r4

loc_8C0C0186:
	mov.w @(0x22,PC),r0
	mov.l @r15,r2
	fmov @(r0,r2),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0c01a0
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xE,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0C01A0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C01A8:
	#data 0x0141
loc_8c0c01aa:
	#data 0x0130
loc_8c0c01ac:
	#data 0x041c
loc_8c0c01ae:
	#data 0x012C
	#align4

loc_8C0C01B0:
	#data bank12.loc_8c1294C8
loc_8C0C01B4:
	#data 0x43700000
loc_8c0c01b8:
	#data 0xC1555555
loc_8c0c01bc:
	#data 0x43892492
loc_8c0c01c0:
	#data 0xC0092492
loc_8c0c01c4:
	#data 0xBE892492
loc_8C0C01C8:
	#data bank03.loc_8c034D8c
loc_8c0c01cc:
	#data 0x434DB6Db

;==============================================
loc_8C0C01D0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x154,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c01ec
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x138,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0C01EC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C01F2:
	mov.w @(loc_8C0C0326,pc),r0 ; r0 set to 0x159
	mov.l r14,@-r15
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x13,r0
	bt/s loc_8C0C0210
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0C0324,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	rts
	mov.l @r15+,r14
;----------------------------------------------
loc_8C0C0210:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0C0330,pc),r1 ; r1 set to 0x8C15B338
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;???
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C0224:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x100,PC),r3
	mov r4,r14
	mov.l r5,@r15
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
	mov.w @(0xB8,PC),r0
	mov.l @r15,r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0c029a
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xA4,PC),r0
	mov.l @r15,r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mova @(0xA8,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)

loc_8C0C029A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C02A2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0C032C,pc),r3 ; r3 set to 0x8C034D8c
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0C0328,pc),r0 ; r0 set to 0x41c
	mov.l @r15,r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C0C0318
	mov.b @(0x05,r14),r0
	mov 0x1B,r5 ; r5 set to 0x1b
	mov r14,r4
	mov 0x05,r6 ; r6 set to 0x05
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0C0328,pc),r0 ; r0 set to 0x41c
	mov.l @r15,r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0C033C,pc),r3 ; r3 set to 0x8C034C38
	jmp @r3
	mov.l @r15+,r14

loc_8C0C0318:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C0320:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C0324:
	#data 0x012c
loc_8C0C0326:
	#data 0x0159
loc_8C0C0328:
	#data 0x041c
	#align4

loc_8C0C032C:
	#data bank03.loc_8c034D8c
loc_8C0C0330:
	#data bank15.loc_8c15b338
loc_8C0C0334:
	#data 0x40892492
loc_8C0C0338:
	#data 0xBF092492
loc_8C0C033C:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0C0340:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xDA,PC),r0
	mov 0x00,r3
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(0x14,r14),r4
	mov.b @(0x3,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0c036c
	mov 0x26,r0
	mov.w @(0xC8,PC),r3
	mov.w @(r0,r4),r2
	extu.w r2,r2
	cmp/eq r3,r2
	bf loc_8c0c036c
	mov.b @(0x4,r4),r0
	mov 0x02,r2
	extu.b r0,r0
	cmp/ge r2,r0
	bf loc_8c0c0378

loc_8C0C036C:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C0378:
	mov.w @(0xAA,PC),r3
	mov 0x2A,r0
	add r3,r4
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c0c039e
	mov r4,r2
	mov.l @(0xA4,PC),r3
	mov r14,r1
	add 0x10,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x9C,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x86,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)

loc_8C0C039E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C03A4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x76,PC),r0
	mov 0x00,r3
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov.l @(0x14,r14),r4
	mov.w @(0x70,PC),r6
	mov.b @(0x3,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf.s loc_8c0c03d4
	add r4,r6
	mov 0x26,r0
	mov.w @(0x60,PC),r3
	mov.w @(r0,r4),r2
	extu.w r2,r2
	cmp/eq r3,r2
	bf loc_8c0c03d4
	mov.b @(0x4,r4),r0
	mov 0x02,r2
	extu.b r0,r0
	cmp/ge r2,r0
	bf loc_8c0c03e0

loc_8C0C03D4:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C03E0:
	mov r6,r2
	mov.l @(0x48,PC),r3
	mov r14,r1
	add 0x1C,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x36,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c0c0410
	mova @(0x38,PC),r0
	fmov @r0,fr4
	mov.w @(0x2A,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c0c0408
	mova @(0x30,PC),r0
	fmov @r0,fr4

loc_8C0C0408:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)

loc_8C0C0410:
	mov.l @(0x1C,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x8,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c0422:
	#data 0x012c
loc_8c0c0424:
	#data 0x0601
loc_8c0c0426:
	#data 0x0088
loc_8c0c0428:
	#data 0x01f7
loc_8c0c042a:
	#data 0x0130
	#align4

loc_8C0C042C:
	#data bank12.loc_8c1294C8
loc_8C0C0430:
	#data bank03.loc_8c034D8c
loc_8C0C0434:
	#data 0x42555555
loc_8C0C0438:
	#data 0xC2555555

;==============================================
loc_8C0C043C:
	mov.w @(0x7E,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(r0,r14),r3
	mov.w @(0x76,PC),r0
	mov.w @(r0,r5),r2
	cmp/eq r2,r3
	bf loc_8c0c0476
	mov r5,r2
	mov.l @(0x70,PC),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x60,r1
	mov.l @(0x68,PC),r3
	add r14,r1
	mov 0x38,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c0482

loc_8C0C0476:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x40,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0C0482:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C0488:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x38,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c04a4
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x1E,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0C04A4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C04AA:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C04C2,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0C04B8:
	mov.l @(loc_8C0C04CC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C04be:
	#data 0x00Cc
loc_8C0C04C0:
	#data 0x0158
loc_8C0C04C2:
	#data 0x012c
	#align4

loc_8C0C04C4:
	#data bank12.loc_8c1294C8
loc_8C0C04C8:
	#data bank03.loc_8c034D8c
loc_8C0C04CC:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8C0C04d0:
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x01,r6
	mov.l @(0x13C,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0c04fc
	mov r0,r4
	mov.w @(0x11E,PC),r3
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r2
	mov.l @(0x124,PC),r3
	mov.b r2,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c0c04fc:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C0504:
	mov r4,r3
	mov.l @(loc_8C0C061C,pc),r1 ; r1 set to 0x8C15B34c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0C0516:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0C060C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0C060C,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0C060E,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0C0620,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???	
	mov.w @(loc_8C0C0610,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x02,r4),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r4),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C0612,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r4),r2 ; r2 ??? bc r4 is ???	
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r4),r3
	mov r4,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0C0624,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x00,r3 ; r3 set to 0x00
	mov r14,r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov r4,r2
	mov.b r3,@(r0,r14)
	add 0x34,r1
	mov.l @(loc_8C0C0624,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0C062C,pc),r3 ; r3 set to 0x8C034C38
	mov.b @(r0,r14),r6
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.l @(loc_8C0C0628,pc),r0 ; r0 set to 0x8C15B344
	mov r14,r4
	lds.l @r15+,pr
	extu.b r6,r6
	mov.b @(r0,r6),r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0C0598:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0C0630,pc),r0 ; r0 set to 0x8C15B358
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0C05AC:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0C0634,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0C05C4
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8C0C082e
	lds.l @r15+,pr

loc_8C0C05C4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0C05CC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0c05f6
	mov 0x07,r5
	bsr loc_8c0c0812
	mov r14,r4
	tst r0,r0
	bf loc_8c0c05f6
	mov 0x14,r5
	bsr loc_8c0c0812
	mov r14,r4
	tst r0,r0
	bf loc_8c0c05f6
	mov 0x15,r5
	bsr loc_8c0c0812
	mov r14,r4
	tst r0,r0
	bt loc_8c0c0602

loc_8C0C05F6:
	mov.l @(0x3C,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c0638               ; loc_8c0c0630+0x8


loc_8C0C0602:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0c082e              ; loc_8c0c0658+0x1d6
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C060a:
	#data 0x0700
loc_8C0C060C:
	#data 0x00Dc
loc_8C0C060E:
	#data 0x00C0
loc_8C0C0610:
	#data 0x012c
loc_8C0C0612:
	#data 0x01A3
	#align4

loc_8C0C0614:
	#data bank04.loc_8c044F12
loc_8C0C0618:
	#data loc_8c0c0504
loc_8C0C061C:
	#data bank15.loc_8c15b34c
loc_8C0C0620:
	#data bank12.loc_8c129560
loc_8C0C0624:
	#data bank12.loc_8c1294C8
loc_8C0C0628:
	#data bank15.loc_8c15b344
loc_8C0C062C:
	#data bank03.loc_8c034C38
loc_8C0C0630:
	#data bank15.loc_8c15b358
loc_8C0C0634:
	#data bank03.loc_8c034D8c


;==============================================
loc_8C0C0638:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C063E:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0c065e               ; loc_8c0c0658+0x6
	mov 0x09,r5
	bsr loc_8c0c0812
	mov r14,r4
	tst r0,r0
	bf loc_8c0c065e               ; loc_8c0c0658+0x6
	mov 0x15,r5
	bsr loc_8c0c0812
	mov r14,r4
	tst r0,r0
	bt loc_8c0c066a

loc_8C0C065E:
	mov.l @(0xD0,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c0672

loc_8C0C066A:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0c082e
	mov.l @r15+,r14

loc_8C0C0672:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C0678:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0c068e
	mov 0x0B,r5
	bsr loc_8c0c0812
	mov r14,r4
	tst r0,r0
	bt loc_8c0c069a

loc_8C0C068E:
	mov.l @(0xA0,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c06a2

loc_8C0C069A:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0c082e              ; loc_8c0c0658+0x1d6
	mov.l @r15+,r14

loc_8C0C06A2:
	mov.l @(0x18,r14),r2
	mov r14,r1
	mov.l @(0x8C,PC),r3
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C06B6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c0c0748
	mov.w @(0x5E,PC),r3
	mov.w @(0x5A,PC),r0
	add r13,r3
	mov.b @r3,r3
	mov.b @(r0,r13),r0
	extu.b r3,r3
	and 0x01,r0
	cmp/eq r3,r0
	bt loc_8c0c0748
	mov r13,r2
	mov.l @(0x54,PC),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0c073c
	mov.l @(0x40,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x34,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c0c0748
	mov.w @(0x2C,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bt loc_8c0c0712
	mov 0x5C,r0
	fldi0 fr3
	fmov @(r0,r13),fr2
	fcmp/eq fr3,fr2
	bf loc_8c0c0752

loc_8C0C0712:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x20,PC),r3
	mov 0x06,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x1B,r5
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c0728:
	#data 0x01fd
loc_8c0c072a:
	#data 0x01d2
loc_8c0c072c:
	#data 0x0159
loc_8c0c072e:
	#data 0x0158
	#align4

loc_8C0C0730:
	#data bank03.loc_8c034D8c
loc_8C0C0734:
	#data bank12.loc_8c1294C8
loc_8C0C0738:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0C073C:
	mov.l @(0x100,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c0752

loc_8C0C0748:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0c082e              ; loc_8c0c0658+0x1d6
	mov.l @r15+,r14

loc_8C0C0752:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C075A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0c0784
	mov 0x17,r5
	bsr loc_8c0c0812
	mov r14,r4
	mov 0x13,r5
	mov r0,r13
	bsr loc_8c0c0812
	mov r14,r4
	mov 0x14,r5
	or r0,r13
	bsr loc_8c0c0812
	mov r14,r4
	or r0,r13
	tst r13,r13
	bt loc_8c0c0790

loc_8C0C0784:
	mov.l @(0xB8,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c079a

loc_8C0C0790:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0c082e              ; loc_8c0c0658+0x1d6
	mov.l @r15+,r14

loc_8C0C079A:
	mov.l @(0x18,r14),r2
	mov r14,r1
	mov.l @(0xA4,PC),r3
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C07B0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(0x05,r4),r0
	tst r0,r0
	bf loc_8C0C07Fe
	mov r4,r2
	mov.l @(loc_8C0C0844,pc),r3 ; r3 set to 0x8C1294C8
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0C07F2
	mov.l @(loc_8C0C0840,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C0C0806
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0C0848,pc),r3 ; r3 set to 0x8C034C38
	mov 0x06,r6 ; r6 set to 0x06
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x1B,r5 ; r5 set to 0x1b
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c0c07f2:
	mov.l @(loc_8c0c0840,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c0806

loc_8C0C07FE:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0C082e
	mov.l @r15+,r14

loc_8C0C0806:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C080C:
	mov.l @(loc_8C0C084C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C0C0812:
	mov.w @(0x24,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0c0822
	mov.l @(0x18,r4),r6
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8C0C0822:
	mov.w @(0x16,PC),r0
	mov.b @(r0,r6),r0
	extu.b r0,r0
	cmp/eq r5,r0
	rts
	movt r0

;----------------------------------------------
loc_8C0C082E:
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r4)
mov 0x00,r3 ; r3 set to 0x00
mov.w @(loc_8C0C083E,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c083a:
	#data 0x0141
loc_8c0c083c:
	#data 0x0159
loc_8c0c083e:
	#data 0x012c
	#align4

loc_8C0C0840:
	#data bank03.loc_8c034D8c
loc_8C0C0844:
	#data bank12.loc_8c1294C8
loc_8C0C0848:
	#data bank03.loc_8c034C38
loc_8C0C084C:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0c0850:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x160,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c087c
	mov r0,r4
	mov.l @(0x150,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0x130,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0c087c:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C0884:
	mov r4,r3
	mov.l @(loc_8C0C09C0,pc),r1 ; r1 set to 0x8C15B378
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0C0896:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x10E,PC),r3
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov.w @(0x108,PC),r1
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @(0x18,r14),r2
	mov.w @(0xFE,PC),r0
	add r3,r2
	mov.l @(0x114,PC),r3
	mov.b @(r0,r14),r4
	mov.w @(0xFA,PC),r0
	jsr @r3
	add r14,r1
	mov.w @(0xF6,PC),r0
	mov 0x01,r5
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xCA,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(0xD0,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.l @(0xC8,PC),r2
	mov 0x2D,r6
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x07,r3
	mov.w @(0xA0,PC),r0
	mov.b r5,@(r0,r14)
	add 0x77,r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x8E,PC),r0
	mov.b @(r0,r14),r4
	mov 0x5C,r0
	extu.b r4,r4
	mov r4,r3
	shll r4
	add r3,r4
	shll2 r4
	add r2,r4
	fmov @r4,fr3
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x78,PC),r0
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r1
	mov.w r1,@(r0,r14)
	mov.l @(0x90,PC),r3
	mov 0x15,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0C094C:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x20,r0
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0c096e
	mov.l @(0x18,r14),r13
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf loc_8c0c099c
	mov.w @(0x4C,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0c099c

loc_8C0C096E:
	mov.l @(0x64,PC),r3
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @r3,fr2
	mov.l @(0x5C,PC),r2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r13)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r13)
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c09dc

loc_8C0C099C:
	mov.w @(0x10,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)
	mov 0x03,r0
	bra loc_8c0c0a16
	mov.b r0,@(0x4,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c09a8:
	#data 0x0800
loc_8c0c09aa:
	#data 0x01a3
loc_8c0c09ac:
	#data 0x00dc
loc_8c0c09ae:
	#data 0x00c0
loc_8c0c09b0:
	#data 0x012c
loc_8c0c09b2:
	#data 0x0130
loc_8c0c09b4:
	#data 0x01d0
	#align4

loc_8C0C09B8:
	#data bank04.loc_8c044F12
loc_8C0C09BC:
	#data loc_8c0c0884
loc_8C0C09C0:
	#data bank15.loc_8c15b378
loc_8C0C09C4:
	#data bank12.loc_8c129560
loc_8C0C09C8:
	#data bank12.loc_8c1294C8
loc_8C0C09CC:
	#data bank13.loc_8c13B058
loc_8C0C09D0:
	#data bank03.loc_8c034e8c
loc_8C0C09D4:
	#data 0x8C26A524
loc_8C0C09D8:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0C09DC:
	mov.w @(0x6A,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0c0a16
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	mov.w @(0x60,PC),r4
	add 0x01,r0
	fldi0 fr4
	mov.b r0,@(0x4,r14)
	add r13,r4
	mov.w @(0x54,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x01,r0
	mov.b r0,@(0xD,r4)
	mov.w @(0x50,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@(r0,r13)
	mov.b @(r0,r14),r2
	mov.w @(0x4A,PC),r0
	mov.b r2,@(r0,r13)
	mov 0x5C,r0
	fmov fr4,@(r0,r13)
	mov 0x60,r0
	fmov fr4,@(r0,r13)
	mov 0x68,r0
	fmov fr4,@(r0,r13)
	mov 0x6C,r0
	fmov fr4,@(r0,r13)

loc_8C0C0A16:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C0A1E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x30,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c0a38
	mov.w @(0x20,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x03,r0
	mov.b r0,@(0x4,r14)

loc_8C0C0A38:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C0A3E:
	mov.w @(loc_8C0C0A52,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C0A58,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c0a4a:
	#data 0x0141
loc_8c0c0a4c:
	#data 0x02A4
loc_8c0c0a4e:
	#data 0x0130
loc_8c0c0a50:
	#data 0x01D2
loc_8C0C0A52:
	#data 0x012c
	#align4

loc_8C0C0A54:
	#data bank03.loc_8c034dee
loc_8C0C0A58:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0C0A5C:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x170,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c0a88             ; loc_8c0c0a80+0x8
	mov r0,r4
	mov.l @(0x160,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0x144,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8C0C0A88:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C0A90:
	mov r4,r3
	mov.l @(loc_8C0C0BDC,pc),r1 ; r1 set to 0x8C15B388
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C0AA2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	fmov.s fr15,@-r15
	mov.w @(loc_8C0C0BCA,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0C0BCA,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0C0BE0,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0C0BCC,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r14),r13
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0C0BCE,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???	
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C0BD0,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2 ; r2 ??? bc r3 is ???	
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C0C0BE4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov r13,r2
	add 0x34,r2
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov r14,r1
	add 0x34,r1
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0C0BE4,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0C0BE8,pc),r2 ; r2 set to 0x8C11E730
	jsr @r2
	nop
	mov r0,r4 ; r4 set to 0x0c
	mova @(loc_8C0C0BEC,pc),r0  ; r0 set to 0x8C0C0BEc
	fmov.s @r0,fr4 ; r4 ??	
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bt/s loc_8C0C0B80
	fldi0 fr15
	mov 0x3F,r2 ; r2 set to 0x3f
	fmov fr4,fr0 ; r0 ??? bc r4 is ???	
	and r2,r4
	add 0x18,r4
	lds r4,fpul
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	float fpul,fr3
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
	mov.l @(loc_8C0C0BE8,pc),r3 ; r3 set to 0x8C11E730
	fmac fr0,fr3,fr2
	jsr @r3
	fmov.s fr2,@(r0,r14)
	mov 0x1F,r2 ; r2 set to 0x1f
	mov r0,r4 ; r4 set to 0x38
	and r2,r4 ; r4 ??	
	mov.l @(loc_8C0C0BF0,pc),r1 ; r1 set to 0x3FD55555
	lds r4,fpul
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fneg fr3
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr15,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r13),fr3
	bra loc_8C0C0BAa
	fneg fr3

loc_8C0C0B80:
	mov 0x1F,r3 ; r3 set to 0x1f
	fmov fr4,fr0
	and r3,r4
	add 0xF0,r4
	lds r4,fpul
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0C0BF4,pc),r0  ; r0 set to 0x8C0C0BF4
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr15,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r13),fr3
	fdiv fr4,fr3

loc_8C0C0BAA:
	fmov.s fr3,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	mov.l @(loc_8C0C0BF8,pc),r3 ; r3 set to 0x8C26823C, r3 set to 0x8C26823c
	fmov.s fr15,@(r0,r14)
	mov.l @r3,r0 ; r0 ??, r0 ??	
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bt loc_8C0C0C00
	mov.l @(loc_8C0C0BFC,pc),r1 ; r1 set to 0x8C034C38, r1 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	jsr @r1
	mov r14,r4
	bra loc_8C0C0C0a
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C0BC8:
	#data 0x0801
loc_8C0C0BCA:
	#data 0x00Dc
loc_8C0C0BCC:
	#data 0x00C0
loc_8C0C0BCE:
	#data 0x012c
loc_8C0C0BD0:
	#data 0x01A3
	#align4

loc_8C0C0BD4:
	#data bank04.loc_8c044F12
loc_8C0C0BD8:
	#data loc_8c0c0A90
loc_8C0C0BDC:
	#data bank15.loc_8c15b388
loc_8C0C0BE0:
	#data bank12.loc_8c129560
loc_8C0C0BE4:
	#data bank12.loc_8c1294C8
loc_8C0C0BE8:
	#data bank11.loc_8c11e730
loc_8C0C0BEC:
	#data 0x40092492
loc_8C0C0BF0:
	#data 0x3FD55555
loc_8C0C0BF4:
	#data 0x41000000
loc_8C0C0BF8:
	#data 0x8C26823c
loc_8C0C0BFC:
	#data bank03.loc_8c034C38

;==============================================
loc_8c0c0c00:
	mov.l @(loc_8c0c0c8c,pc),r2
	mov 0x1B,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4

loc_8c0c0c0a:
	lds.l @r15+,pr
	mov r14,r4
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	mov.l @r15+,r14
	
loc_8c0c0c14:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x25,r0
	mov 0x5C,r1
	add r14,r1
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov.l @(loc_8c0c0c90,pc),r3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c0c70
	mov.w @(loc_8c0c0c88,pc),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x03,r0
	mov.b r0,@(0x04,r14)

loc_8c0c0c70:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0C0C76:
	mov.w @(loc_8C0C0C88,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)

loc_8C0C0C7C:
	mov.w @(loc_8C0C0C88,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C0C94,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C0C88:
	#data 0x012c
	#align4

loc_8C0C0C8C:
	#data bank03.loc_8c034C38
loc_8C0C0C90:
	#data bank03.loc_8c034D8c
loc_8C0C0C94:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0c0c98:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x9C,PC),r12
	mov 0x00,r14
	mov.l @(0x9C,PC),r8
	mov 0x76,r13
	mov 0x20,r11
	mov.l r4,@r15
	mov 0x08,r9
	mov 0x07,r10

loc_8c0c0cba:
	mov 0x03,r5
	mov 0x00,r6
	jsr @r8
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c0ce8
	mov r0,r4
	mov 0x26,r0
	mov.l @(0x84,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.w r12,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov 0x21,r0
	mov.b r10,@(r0,r4)
	mov r11,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov r13,r0
	nop
	mov.w r0,@(0x1E,r4)

loc_8c0c0ce8:
	add 0x01,r14
	exts.b r14,r3
	cmp/gt r9,r3
	bf loc_8c0c0cba
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C0D08:
	mov r4,r3
	mov.l @(loc_8C0C0D54,pc),r1 ; r1 set to 0x8C15B3C8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C0D1A:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bf loc_8C0C0D30
	bra loc_8C0C0E9e
	nop

loc_8C0C0D30:
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14)
	extu.b r2,r2
	cmp/pl r2
	bt loc_8C0C0D58
	mov 0x02,r0 ; r0 set to 0x02
	mov r14,r4
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	bra loc_8C0C0F36
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C0D4a:
	#data 0x0900
	#align4

loc_8C0C0D4C:
	#data bank04.loc_8c044F12
loc_8C0C0D50:
	#data loc_8c0c0D08
loc_8C0C0D54:
	#data bank15.loc_8c15b3C8

;==============================================
loc_8C0C0D58:
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0C0EA4,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0C0EAC,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0C0EA4,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0C0EA6,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???	
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C0EA8,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C0C0EB0,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r3,@(r0,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0C0EA6,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	extu.b r0,r0
	tst 0x04,r0
	bt loc_8C0C0E28
	mov.l @(loc_8C0C0EB4,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x05,r6 ; r6 set to 0x05
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0C0EB8,pc),r4 ; r4 set to 0x8C15B3A8
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	extu.b r0,r0
	add 0xFC,r0
	shll r0
	shll2 r0
	fmov.s @(r0,r4),fr3
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	mov 0x04,r0 ; r0 set to 0x04
	extu.b r3,r3
	add 0xFC,r3
	shll r3
	shll2 r3
	add r3,r4 ; r4 ??? bc r3 is ???	
	fmov.s @(r0,r4),fr3
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0C0EBC,pc),r0  ; r0 set to 0x8C0C0EBc
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0C0EC0,pc),r0  ; r0 set to 0x8C0C0EC0
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	bra loc_8C0C0E44
	fmov.s fr3,@(r0,r14)

loc_8c0c0e28:
	mov.l @(loc_8c0c0eb4,pc),r2
	mov 0x17,r5
	mov 0x04,r6
	jsr @r2
	mov r14,r4
	mov 0x5C,r0
	fldi0 fr4
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0
	fmov.s fr4,@(r0,r14)

loc_8c0c0e44:
	mov r14,r3
	mov 0x34,r0
	add r0,r3
	mov.l @(loc_8c0c0ec4,pc),r0
	mov.l r3,@-r15
	mov 0x20,r3
	add r14,r3
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r2
	mova @(loc_8C0C0EC8,pc),r0
	fmov.s @r0,fr0
	mov 0x38,r0
	lds r2,fpul
	mov.l @r15+,r2
	float fpul,fr3
	fmov.s @r2,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r2
	mov r14,r2
	add r0,r2
	mov.l r2,@-r15
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	mova @(loc_8C0C0ECC,pc),r0
	fmov.s @r0,fr0
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	mov 0x20,r0
	fmov.s fr2,@r3
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0c0e96
	mov.l @(loc_8c0c0ed0,pc),r3
	mov 0x0A,r5
	jsr @r3
	mov r14,r4

loc_8c0c0e96:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0c0ed4
	mov.l @r15+,r14

loc_8C0C0E9E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C0EA4:
	#data 0x00Dc
loc_8C0C0EA6:
	#data 0x012c
loc_8C0C0EA8:
	#data 0x01A3
	#align4

loc_8C0C0EAC:
	#data bank12.loc_8c129560
loc_8C0C0EB0:
	#data bank12.loc_8c1294C8
loc_8C0C0EB4:
	#data bank03.loc_8c034e8c
loc_8C0C0EB8:
	#data bank15.loc_8c15b3A8
loc_8C0C0EBC:
	#data 0x414DB6Db
loc_8C0C0EC0:
	#data 0xBE892492
loc_8C0C0EC4:
	#data bank15.loc_8c15b398
loc_8c0c0ec8:
	#data 0x3FD55555
loc_8c0c0ecc:
	#data 0x40092492
loc_8C0C0ED0:
	#data bank04.loc_8c042008

;==============================================
loc_8C0C0ED4:
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
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c0f30
	mov 0x00,r4
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)
	mov.w @(0x1E,PC),r0
	mov.b r4,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0xED,r0
	mov.w r0,@(0x1E,r14)

loc_8C0C0F30:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C0F36:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C0F48,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0C0F42:
	mov.l @(loc_8C0C0F50,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C0F48:
	#data 0x012c
	#align4

loc_8C0C0F4C:
	#data bank03.loc_8c034dee
loc_8C0C0F50:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8C0C0F54:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x168,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c0f80
	mov r0,r4
	mov.l @(0x158,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0x13E,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0c0f80:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C0F88:
	mov r4,r3
	mov.l @(loc_8C0C10CC,pc),r1 ; r1 set to 0x8C15B3E8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0C0F9A:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x11A,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x128,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x10C,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x104,PC),r0
	mov 0x01,r4
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xE0,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(0xDC,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.l @(0xD4,PC),r5
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x07,r3
	mov.w @(0xB0,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	shll r0
	mov.w @(r0,r5),r3
	mova @(0xAC,PC),r0
	fmov @r0,fr2
	lds r3,fpul
	mov.w @(0x8A,PC),r0
	mov.l @(0x18,r14),r3
	float fpul,fr3
	mov.w @(r0,r3),r2
	fmov fr3,fr4
	tst r2,r2
	bt.s loc_8c0c1046
	fmul fr2,fr4
	fneg fr4

loc_8C0C1046:
	mov 0x34,r0
	mov r14,r2
	fmov @(r0,r14),fr3
	mov 0x20,r3
	add r14,r3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	add r0,r2
	mov.l r2,@-r15
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r5
	mov.w @(0x2,r5),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	mova @(0x70,PC),r0
	fmov @r0,fr0
	mov 0x20,r0
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	mov.b @(r0,r14),r2
	extu.b r2,r2
	tst r4,r2
	bt.s loc_8c0c1088
	mov 0x14,r5
	bra loc_8c0c108a
	mov 0x01,r6

loc_8C0C1088:
	mov 0x00,r6

loc_8C0C108A:
	mov.l @(0x58,PC),r2
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0C1096:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0C10E8,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0C10B4
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	bra loc_8C0C10Ec
	mov.l @r15+,r14

loc_8C0C10B4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c10ba:
	#data 0x0901
loc_8c0c10bc:
	#data 0x00Dc
loc_8c0c10be:
	#data 0x012C
loc_8c0c10c0:
	#data 0x01A3
loc_8c0c10c2:
	#data 0x0130
	#align4

loc_8C0C10C4:
	#data bank04.loc_8c044F12
loc_8C0C10C8:
	#data loc_8c0c0F88
loc_8C0C10CC:
	#data bank15.loc_8c15b3E8
loc_8C0C10D0:
	#data bank12.loc_8c129560
loc_8C0C10D4:
	#data bank12.loc_8c1294C8

loc_8C0C10D8:
#data bank15.loc_8c15b3D8
loc_8C0C10Dc:
	#data 0x3FD55555
loc_8C0C10E0:
	#data 0x40092492
loc_8C0C10E4:
	#data bank03.loc_8c034e8c
loc_8C0C10E8:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0C10EC:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C10FE,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0C10F8:
	mov.l @(loc_8C0C1100,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C10FE:
	#data 0x012c
	#align4

loc_8C0C1100:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0c1104:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xE8,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c1128
	mov r0,r4
	mov.l @(0xDC,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0xC4,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)

loc_8c0c1128:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C1130:
	mov r4,r3
	mov.l @(loc_8C0C11FC,pc),r1 ; r1 set to 0x8C15B68c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C1142:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0C11EA,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0C1200,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0C11EA,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0C11EC,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C11EE,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C0C1204,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r4 ; r4 set to 0x00
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x14,r5 ; r5 set to 0x14
	mov 0x03,r6 ; r6 set to 0x03
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0C11EC,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C0C1208,pc),r3 ; r3 set to 0x8C034E8c
	mov.b r4,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???	
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0C11C8:
	mov.l @(0x18,r4),r5 ; r5 ??? bc r4 is ???	
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.w @(loc_8C0C11F0,pc),r6 ; r6 set to 0x2A4, r6 set to 0x2A4
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFF, r2 set to 0xFFFFFFFf
	mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???	
	add r5,r6 ; r6 ??? bc r5 is ???, r6 ??? bc r5 is ???	
	mov.b r3,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31, r0 set to 0x31
	mov.b r2,@(r0,r4)
	mov.b @r6,r3
	tst r3,r3
	bf loc_8C0C120c
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x32, r0 set to 0x32
	bra loc_8C0C12Aa
	mov.b r0,@(0x04,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C11E8:
	#data 0x0902
loc_8C0C11EA:
	#data 0x00Dc
loc_8C0C11EC:
	#data 0x012c
loc_8C0C11EE:
	#data 0x01A3
loc_8C0C11F0:
	#data 0x02A4
	#align4

loc_8C0C11F4:
	#data bank04.loc_8c044F12
loc_8C0C11F8:
	#data loc_8c0c1130
loc_8C0C11FC:
	#data bank15.loc_8c15b68c
loc_8C0C1200:
	#data bank12.loc_8c129560
loc_8C0C1204:
	#data bank12.loc_8c1294C8
loc_8C0C1208:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c0c120c:
	mov.w @(loc_8c0c12bc,pc),r0
	mov 0x00,r5
	mov.b r5,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C12BE,pc),r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c0c1288
	mov.w @(loc_8c0c12bc,pc),r0
	mov 0x01,r2
	mov.l @(loc_8c0c12c4,pc),r7
	mov.b r2,@(r0,r4)
	add 0x1F,r0
	mov.l @(0x18,r4),r6
	mov.b @(r0,r6),r0
	extu.b r0,r0
	shll r0
	shll r0
	mov.w @(r0,r7),r3
	mova @(loc_8C0C12C8,pc),r0
	fmov.s @r0,fr2
	lds r3,fpul
	mov.w @(loc_8C0C12C0,pc),r0
	float fpul,fr3
	mov.w @(r0,r6),r3
	tst r3,r3
	fmov fr3,fr4
	bt/s loc_8c0c1258
	fmul fr2,fr4
	fneg fr4

loc_8c0c1258:
	mov.w @(loc_8C0C12BE,pc),r2
	mov 0x34,r0
	fmov.s @(r0,r4),fr3
	mov 0x38,r1
	add r4,r1
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.l @(0x18,r4),r3
	fmov.s @r1,fr1
	add r3,r2
	mov.b @r2,r2
	extu.b r2,r2
	shll r2
	shll r2
	add r2,r7
	mov.w @(0x02,r7),r0
	mov r0,r3
	lds r3,fpul
	mova @(loc_8C0C12CC,pc),r0
	fmov.s @r0,fr2
	float fpul,fr3
	fmul fr2,fr3
	fsub fr3,fr1
	fmov.s fr1,@r1

loc_8c0c1288:
	mov.w @(loc_8C0C12C2,pc),r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov 0x07,r3
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8c0c129a
	mov.w @(loc_8c0c12bc,pc),r0
	mov.b r5,@(r0,r4)

loc_8c0c129a:
	mov.w @(loc_8c0c12bc,pc),r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c0c12a6
	mov.b r5,@(r0,r4)

loc_8c0c12a6:
	rts
	nop

loc_8C0C12AA:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C12BC,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0C12B6:
	mov.l @(loc_8C0C12D0,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C12BC:
	#data 0x012c
loc_8c0c12be:
	#data 0x014b
loc_8c0c12c0:
	#data 0x0130
loc_8c0c12c2:
	#data 0x0159
	#align4

loc_8C0C12C4:
	#data bank15.loc_8c15b3F8
loc_8c0c12c8:
	#data 0x3FD55555
loc_8c0c12cc:
	#data 0x40092492
loc_8C0C12D0:
	#data bank04.loc_8c0450C0

;==============================================
;unused
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x98,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c1300             ; loc_8c0c12f0+0x10
	mov r0,r4
	mov.l @(0x88,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0x74,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0c1300:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c0c1308:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0c1374,pc),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt/s loc_8c0c1334
	mov r0,r4
	mov.l @(loc_8c0c1378,pc),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(0x18,r2),r3
	mov 0x02,r2
	mov.l r3,@(0x18,r4)
	mov.w @(loc_8C0C1370,pc),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0c1334:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

loc_8C0C133C:
	mov.l @(0x18,r4),r2
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r2),r3
	mov.b r3,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8C0C1354
	mov 0x31,r0 ; r0 set to 0x31
	mov 0x01,r2 ; r2 set to 0x01
	rts
	mov.b r2,@(r0,r4)

;----------------------------------------------
loc_8C0C1354:
	mov 0x31,r0 ; r0 set to 0x31
	mov 0xFF,r1 ; r1 set to 0xFFFFFFFf
	mov.b r1,@(r0,r4)
	rts
	nop

;----------------------------------------------
loc_8C0C135E:
	mov r4,r3
	mov.l @(loc_8C0C137C,pc),r1 ; r1 set to 0x8C15B69c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c1370:
	#data 0x0903
	#align4

loc_8C0C1374:
	#data bank04.loc_8c044F12
loc_8C0C1378:
	#data loc_8c0c135e
loc_8C0C137C:
	#data bank15.loc_8c15b69c

;==============================================
loc_8C0C1380:
	mov.l r14,@-r15
	mov r4,r14
	fmov fr15,@-r15
	mov.w @(0x132,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x138,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x124,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x11C,PC),r0
	mov 0x01,r4
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xF8,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(0xEC,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov.w @(0xCC,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0c1442
	mov 0x00,r4
	mov 0x24,r0
	mov 0x07,r3
	mov.b r3,@(r0,r14)
	mova @(0xBC,PC),r0
	fmov @r0,fr15
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0c144a
	mova @(0xB0,PC),r0
	mov.l @(0x18,r14),r3
	fmov @r0,fr15
	mov.w @(0x98,PC),r0
	mov.w @(r0,r3),r2
	tst r2,r2
	bt loc_8c0c143c
	mov.l @(0xA8,PC),r1
	mov 0x34,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C0C143C:
	mov.w @(0x82,PC),r0
	bra loc_8c0c144a
	mov.w r4,@(r0,r14)

loc_8C0C1442:
	mov 0x24,r0
	mov.b r4,@(r0,r14)
	mova @(0x94,PC),r0
	fmov @r0,fr15

loc_8C0C144A:
	ftrc fr15,fpul
	mov.l @(0x90,PC),r3
	mov 0x13,r5
	sts fpul,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	fmov @r15+,fr15
	mov.l @r15+,r14

loc_8C0C145E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0C14E4,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	bsr loc_8C0C133c
	mov r14,r4
	mov.w @(loc_8C0C14C4,pc),r1 ; r1 set to 0x159
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x13,r0
	bt loc_8C0C1486
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	bra loc_8C0C14E8
	mov.l @r15+,r14

loc_8C0C1486:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8C0C14B6
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0C14B6
	mov.w @(loc_8C0C14C6,pc),r0 ; r0 set to 0x141
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8C0C14B6
	mov.b @(0x05,r14),r0
	mov 0x13,r5 ; r5 set to 0x13
	mov.l @(loc_8C0C14E0,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x07,r6 ; r6 set to 0x07
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x05,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0C1308
	mov.l @r15+,r14

loc_8C0C14B6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c14bc:
	#data 0x00Dc
loc_8c0c14be:
	#data 0x012C
loc_8c0c14c0:
	#data 0x01A3
loc_8c0c14c2:
	#data 0x0130
loc_8C0C14C4:
	#data 0x0159
loc_8C0C14C6:
	#data 0x0141
	#align4

loc_8C0C14C8:
	#data bank12.loc_8c129560
loc_8C0C14CC:
	#data bank12.loc_8c1294C8
loc_8C0C14D0:
	#data 0x41000000
loc_8C0C14D4:
	#data 0x40C00000
loc_8C0C14D8:
	#data 0x436CAAAa
loc_8C0C14Dc:
	#data 0x40A00000
loc_8C0C14E0:
	#data bank03.loc_8c034e8c
loc_8C0C14E4:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0C14E8:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C14FA,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0C14F4:
	mov.l @(loc_8C0C14FC,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C14FA:
	#data 0x012c
	#align4

loc_8C0C14FC:
#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0c1500:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x164,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c152c
	mov r0,r4
	mov.l @(0x158,PC),r3
	mov 0x26,r0
	mov.w @(0x140,PC),r1
	mov.l r3,@(0x10,r4)
	mov.w @(0x13A,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.l @r15,r0
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1C,r4)

loc_8c0c152c:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C1534:
	mov r4,r3
	mov.l @(loc_8C0C1674,pc),r1 ; r1 set to 0x8C15B6Ac
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0C1546:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x112,PC),r0
	mov 0x0F,r3
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r4
	tst r4,r3
	bt loc_8c0c1580
	mov 0x21,r0
	mov.b @(r0,r14),r1
	extu.b r1,r1
	cmp/eq r1,r4
	bt loc_8c0c1580
	mov.w @(0xFC,PC),r0
	mov 0x0F,r7
	mov.l @(0x18,r14),r2
	mov r14,r4
	mov 0x17,r5
	mov.b @(r0,r2),r3
	mov 0x21,r0
	mov.l @(0x108,PC),r2
	mov 0x08,r6
	mov.b r3,@(r0,r14)
	mov.b @(r0,r14),r0
	mov.w @(0xE8,PC),r3
	add r3,r0
	and r0,r7
	jmp @r2
	mov.l @r15+,r14

loc_8C0C1580:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C1584:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xD8,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xE8,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xCA,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xC2,PC),r0
	mov 0x01,r4
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x9E,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(0x9C,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.w @(0x72,PC),r2
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x0F,r3
	mov.w @(0x6E,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	bsr loc_8c0c1546
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0C161A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c0c1546
	mov r4,r14
	mov.w @(0x3A,PC),r0
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c0c1638
	mov.w @(0x2E,PC),r0
	mov.w @(r0,r4),r3
	mov.w @(0x1C,r14),r0
	extu.w r3,r3
	cmp/eq r0,r3
	bt loc_8c0c1644

loc_8C0C1638:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x22,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0C1644:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C164A:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C1666,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0C1656:
	mov.l @(loc_8C0C1684,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c165c:
	#data 0x0904
loc_8c0c165e:
	#data 0x0158
loc_8c0c1660:
	#data 0x0141
loc_8c0c1662:
	#data 0x00FF
loc_8c0c1664:
	#data 0x00Dc
loc_8C0C1666:
	#data 0x012c
loc_8C0C1668:
	#data 0x01A3
	#align4

loc_8C0C166C:
	#data bank04.loc_8c044F12
loc_8C0C1670:
	#data loc_8c0c1534
loc_8C0C1674:
	#data bank15.loc_8c15b6Ac
loc_8C0C1678:
	#data bank03.loc_8c034F54
loc_8C0C167C:
	#data bank12.loc_8c129560
loc_8C0C1680:
	#data bank12.loc_8c1294C8
loc_8C0C1684:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0c1688:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x124,PC),r3

loc_8C0C168E:
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c16c0
	mov r0,r4
	mov 0x00,r5
	mov.l @(0x114,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.b r5,@(r0,r4)
	mov 0x21,r0
	mov.b r5,@(r0,r4)
	mov.w @(0xF8,PC),r0
	mov.l @r15,r3
	mov.l @(r0,r3),r2
	mov.w @(0xF4,PC),r3
	mov.l r2,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8C0C16C0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C16C8:
	mov 0x02,r3 ; r3 set to 0x02
	mov.l r14,@-r15
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf/s loc_8C0C16Dc
	mov.l @(0x18,r4),r14
	mov.l @(loc_8C0C17BC,pc),r1 ; r1 set to 0x8C0450C0
	jmp @r1
	mov.l @r15+,r14

;==============================================
loc_8C0C16DC:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8C0C16Ea
	mov r14,r5
	bra loc_8C0C16F0
	mov.l @r15+,r14

loc_8C0C16EA:
	mov r14,r5
	bra loc_8C0C1894
	mov.l @r15+,r14

loc_8C0C16F0:
	mov.w @(loc_8C0C17AC,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.b @(0x04,r14),r0
	tst r0,r0
	bf loc_8C0C17C8
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0C17AE,pc),r3 ; r3 set to 0xDc
	add 0x01,r0 ; r0 set to 0x25
	mov.w @(loc_8C0C17AE,pc),r1 ; r1 set to 0xDc
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r2
	mov.w @(loc_8C0C17B0,pc),r0 ; r0 set to 0xC0
	add r3,r2
	mov.l @(loc_8C0C17C0,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0C17AC,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r3 ; r3 ??? bc r13 is ???	
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r3
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r3
	add 0xDB,r0 ; r0 set to 0x1A3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x25,r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r3
	add 0xDC,r0 ; r0 set to 0x1A4
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x24,r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r3
	mov 0x30,r0 ; r0 set to 0x30
	mov r14,r1 ; r1 ??? bc r14 is ???	
	add 0x50,r1
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0C17C4,pc),r3 ; r3 set to 0x8C1294C8
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r2
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov.l @(r0,r13),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C17A8,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x0A,r0 ; r0 set to 0x0a
	bra loc_8C0C1868
	mov.w r0,@(0x1E,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c17a8:
	#data 0x01c8
loc_8c0c17aa:
	#data 0x0905
loc_8c0c17ac:
	#data 0x012c
loc_8c0c17ae:
	#data 0x00dc
loc_8c0c17b0:
	#data 0x00c0
	#align4

loc_8C0C17B4:
	#data bank04.loc_8c044F12
loc_8C0C17B8:
	#data loc_8c0c16C8
loc_8C0C17BC:
	#data bank04.loc_8c0450C0
loc_8C0C17C0:
	#data bank12.loc_8c129560
loc_8C0C17C4:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0c17c8:
	mov.w @(loc_8C0C1872,pc),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c0c185a
	mov.b @(0x05,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt/s loc_8c0c17e2
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c0c1852

loc_8c0c17e2:
	mov.l @(loc_8c0c187c,pc),r3
	mov 0x07,r5
	jsr @r3
	mov.l @(0x18,r14),r4
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bt loc_8c0c1868
	mov.l @(loc_8c0c1880,pc),r3
	mov 0x03,r5
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt/s loc_8c0c184a
	mov r0,r12
	mov.l @(loc_8C0C1888,pc),r2
	mov 0x20,r1
	mov.l @(loc_8c0c1884,pc),r3
	add r12,r1
	mov.l r3,@(0x10,r12)
	mov 0x00,r3
	mov.l @r2,r0
	mov.l @(0x1C,r0),r0
	and 0x03,r0
	add 0x01,r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b r3,@(r0,r12)
	mov.w @(loc_8C0C1874,pc),r0
	mov.l @(0x18,r14),r1
	mov.w @(loc_8C0C1876,pc),r3
	mov.l r1,@(0x18,r12)
	mov.l @(r0,r13),r0
	mov.l @(loc_8c0c188c,pc),r1
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r12)
	mov 0x26,r0
	jsr @r1
	mov.w r3,@(r0,r12)
	mov.w @(loc_8C0C1878,pc),r1
	and 0x3F,r0
	mov.l @(loc_8c0c188c,pc),r3
	add 0xE0,r0
	add r12,r1
	jsr @r3
	mov.l r0,@r1
	mov.w @(loc_8C0C187A,pc),r1
	and 0x3F,r0
	neg r0,r0
	add r12,r1
	add 0x40,r0
	mov.l r0,@r1

loc_8c0c184a:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	bra loc_8c0c1868
	mov.w r0,@(0x1E,r14)

loc_8c0c1852:
	mov.l @(loc_8c0c187c,pc),r2
	mov 0x01,r5
	jsr @r2
	mov.l @(0x18,r14),r4

loc_8c0c185a:
	lds.l @r15+,pr
	mov.l @(loc_8c0c1890,pc),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0C1868:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c1872:
	#data 0x022a
loc_8c0c1874:
	#data 0x01C8
loc_8c0c1876:
	#data 0x0905
loc_8c0c1878:
	#data 0x00Cc
loc_8c0c187a:
	#data 0x00D0
	#align4

loc_8C0C187C:
	#data bank03.loc_8c035162
loc_8C0C1880:
	#data bank04.loc_8c044F12
loc_8C0C1884:
	#data loc_8c0c16C8
loc_8c0c1888:
	#data 0x8C26823c
loc_8C0C188C:
	#data bank03.loc_8c03319e
loc_8C0C1890:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0C1894:
	mov.l r14,@-r15
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.b @(0x04,r14),r0
	tst r0,r0
	bf/s loc_8C0C1958
	mov 0x01,r5 ; r5 set to 0x01
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0C19CC,pc),r3 ; r3 set to 0xDc
	add 0x01,r0 ; r0 set to 0x25
	mov.w @(loc_8C0C19CC,pc),r1 ; r1 set to 0xDc
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0C19CA,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r2
	mov.w @(loc_8C0C19CE,pc),r0 ; r0 set to 0xC0
	add r3,r2
	mov.l @(loc_8C0C19D8,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0C19D0,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov.w @(loc_8C0C19CA,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.w @(loc_8C0C19CA,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov.w @(loc_8C0C19CA,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r3 ; r3 ??? bc r13 is ???	
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C19CA,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r3
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C19CA,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r3
	add 0xDB,r0 ; r0 set to 0x1A3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x25,r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r3
	add 0xDC,r0 ; r0 set to 0x1A4
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x24,r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r3
	mov 0x30,r0 ; r0 set to 0x30
	mov r14,r1
	mov.b @(r0,r3),r2
	add 0x50,r1
	mov.l @(loc_8C0C19DC,pc),r3 ; r3 set to 0x8C1294C8
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0C19CA,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r2
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0C19CA,pc),r0 ; r0 set to 0x1C8
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.l @(r0,r13),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r6
	mov.w @(loc_8C0C19D2,pc),r3 ; r3 set to 0xFf
	mov.l @(loc_8C0C19E0,pc),r2 ; r2 set to 0x8C034C38
	add r3,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0C19D0,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.w r0,@(0x1C,r14)
	mov.b r3,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x130
	mov.w @(r0,r13),r2 ; r2 ??? bc r13 is ???	
	tst r2,r2
	bt/s loc_8C0C1A08
	mov.w r2,@(r0,r14)
	mov.w @(loc_8C0C19D4,pc),r4 ; r4 set to 0xCc
	add r14,r4 ; r4 ??? bc r14 is ???	
	mov.l @r4,r2
	neg r2,r2
	bra loc_8C0C1A08
	mov.l r2,@r4

loc_8c0c1958:
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8c0c19f0
	mov.w @(loc_8C0C19D6,pc),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c0c19fc
	mov.b @(0x05,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt/s loc_8c0c1978
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0x02,r0
	bf loc_8c0c19b4

loc_8c0c1978:
	mov.w @(loc_8c0c19d0,pc),r0
	mov r14,r4
	mov.b r5,@(r0,r14)
	add 0xA0,r0
	mov.l @(r0,r14),r3
	mov 0x34,r0
	fmov.s @(r0,r13),fr2
	mova @(loc_8C0C19E4,pc),r0
	lds r3,fpul
	fmov.s @r0,fr0
	mov 0x34,r0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	shll2 r0
	mov.l @(r0,r14),r3
	mov 0x38,r0
	fmov.s @(r0,r13),fr2
	mova @(loc_8C0C19E8,pc),r0
	lds r3,fpul
	fmov.s @r0,fr0
	mov 0x38,r0
	mov.l @(loc_8c0c19ec,pc),r3
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0c19b4:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8c0c19e0,pc),r3
	mov 0x04,r6
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x1B,r5
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c19ca:
	#data 0x01C8
loc_8c0c19cc:
	#data 0x00DC
loc_8c0c19ce:
	#data 0x00C0
loc_8c0c19d0:
	#data 0x012C
loc_8c0c19d2:
	#data 0x00FF
loc_8c0c19d4:
	#data 0x00CC
loc_8C0C19D6:
	#data 0x022A
loc_8c0c19d8:
	#data bank12.loc_8C129560
loc_8c0c19dc:
	#data bank12.loc_8C1294C8
loc_8c0c19e0:
	#data bank03.loc_8c034c38
loc_8C0C19E4:
	#data 0x3FD55555
loc_8C0C19E8:
	#data 0x40092492
loc_8c0c19ec:
	#data bank03.loc_8c034d8c

;==============================================
loc_8c0c19f0:
	mov.l @(loc_8c0c1a10,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c1a08

loc_8c0c19fc:
	lds.l @r15+,pr
	mov.l @(loc_8c0c1a14,pc),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0C1A08:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
	#align4
loc_8C0C1A10:
	#data bank03.loc_8c034D8c
loc_8C0C1A14:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0c1a18:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x134,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c1a44
	mov r0,r4
	mov.l @(0x124,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0x102,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0c1a44:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C1A4C:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0C1B5C,pc),r1 ; r1 set to 0x8C15B6Bc
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0C1A60:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.w @(0xD6,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xCE,PC),r2
	add 0x01,r0
	mov.l @(0xE8,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xC8,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xC4,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x2,r13),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xA8,PC),r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov 0x00,r4
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0c1afa
	mov r4,r12
	mov.w @(0x76,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0c1ade
	mov 0x0F,r12
	mov 0xF1,r12

loc_8C0C1ADE:
	mov.l @(0x88,PC),r3
	jsr @r3
	nop
	mov.l @(0x80,PC),r2
	and 0x07,r0
	jsr @r2
	add r0,r12
	and 0x07,r0
	mov r0,r4
	mov.w @(0x5A,PC),r0
	add 0x25,r4
	mov.w @(r0,r14),r3
	add 0xFD,r3
	mov.w r3,@(r0,r14)

loc_8C0C1AFA:
	exts.w r12,r12
	lds r12,fpul
	mov 0x34,r0
	fmov @(r0,r13),fr2
	mova @(0x68,PC),r0
	fmov @r0,fr0
	exts.w r4,r4
	float fpul,fr3
	lds r4,fpul
	mov 0x34,r0
	mov r14,r4
	mov 0x1B,r5
	fmac fr0,fr3,fr2
	float fpul,fr3
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr2
	mova @(0x50,PC),r0
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x26,PC),r0
	mov.w @(r0,r13),r3
	mov.w @(0x24,PC),r0
	extu.w r3,r3
	mov.l r3,@(r0,r14)
	mov 0x20,r0
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov.l @r15+,r12
	add 0x1A,r6
	mov.l @(0x38,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c1b42:
	#data 0x0a00
loc_8c0c1b44:
	#data 0x00dc
loc_8c0c1b46:
	#data 0x00c0
loc_8c0c1b48:
	#data 0x012c
loc_8c0c1b4a:
	#data 0x01a3
loc_8c0c1b4c:
	#data 0x0130
loc_8c0c1b4e:
	#data 0x012e
loc_8c0c1b50:
	#data 0x0158
loc_8c0c1b52:
	#data 0x00cc
	#align4

loc_8C0C1B54:
	#data bank04.loc_8c044F12
loc_8C0C1B58:
	#data loc_8c0c1A4c
loc_8C0C1B5C:
	#data bank15.loc_8c15b6Bc
loc_8C0C1B60:
	#data bank12.loc_8c129560
loc_8C0C1B64:
	#data bank12.loc_8c1294C8
loc_8C0C1B68:
	#data bank03.loc_8c03319e
loc_8C0C1B6c:
	#data 0x3FD55555
loc_8C0C1B70:
	#data 0x40092492
loc_8C0C1B74:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0C1B78:
	mov.l r14,@-r15
	mov 0x24,r0
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x40,PC),r0
	mov.w @(r0,r13),r2
	mov.w @(0x3E,PC),r0
	extu.w r2,r2
	mov.l @(r0,r14),r3
	cmp/eq r2,r3
	bf loc_8c0c1ba2
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c1bae

loc_8C0C1BA2:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0c1bba
	mov.l @r15+,r14

loc_8C0C1BAE:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C1BB6:
	rts
	nop

;----------------------------------------------
loc_8C0C1BBA:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C1BD0,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C1BD8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C1BCC:
	#data 0x0158
loc_8C0C1BCE:
	#data 0x00CC
loc_8C0C1BD0:
	#data 0x012c
	#align4

loc_8C0C1BD4:
	#data bank03.loc_8c034D8c
loc_8C0C1BD8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0C1BDC:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x128,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c1c06
	mov r0,r4
	mov.l @(0x11C,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0xFE,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)

loc_8C0C1C06:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C1C0E:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0C1D14,pc),r1 ; r1 set to 0x8C15B6Cc
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0C1C22:
	mov.w @(loc_8C0C1CFC,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0C1D18,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0C1CFC,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C1CFE,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0C1D00,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C1D02,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C1D1C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r2,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r4)
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0C1D04,pc),r0 ; r0 set to 0xD0
	mov.l r2,@(r0,r4)
	lds.l @r15+,pr

loc_8C0C1C86:
	mov.w @(loc_8C0C1D00,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	mov.l r14,@-r15
	mov.b r3,@(r0,r4)
	mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
	tst r2,r2
	bt loc_8C0C1CE6
	mov.w @(loc_8C0C1D06,pc),r14 ; r14 set to 0x150, r14 set to 0x150
	add r5,r14 ; r14 ??? bc r5 is ???, r14 ??? bc r5 is ???	
	mov.b @(0x01,r14),r0
	mov r0,r14 ; r14 set to 0x12C, r14 set to 0x12c
	tst r14,r14
	bt loc_8C0C1CE6
	mov 0x20,r2 ; r2 set to 0x20, r2 set to 0x20
	cmp/hs r2,r14
	bt loc_8C0C1CE6
	mov.w @(loc_8C0C1D00,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01, r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???, r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C1D08,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r5),r3
	mov.w r3,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.b @(r0,r5),r1 ; r1 ??? bc r5 is ???, r1 ??? bc r5 is ???	
	mov.b r1,@(r0,r4)
	mov.w @(loc_8C0C1D04,pc),r0 ; r0 set to 0xD0, r0 set to 0xD0
	mov.l @(r0,r4),r3
	cmp/eq r14,r3
	bt loc_8C0C1CD8
	mov.l @(loc_8C0C1D20,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov.l r14,@(r0,r4)
	mov r14,r6 ; r6 set to 0x12C, r6 set to 0x12c
	jmp @r3
	mov.l @r15+,r14

loc_8C0C1CD8:
	mov.l @(loc_8C0C1D24,pc),r1 ; r1 set to 0x8C289634
	mov.b @r1,r3
	tst r3,r3
	bf loc_8C0C1CE6
	mov.l @(loc_8C0C1D28,pc),r3 ; r3 set to 0x8C034D8c
	jmp @r3
	mov.l @r15+,r14

loc_8C0C1CE6:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C1CEA:
	rts
	nop

;----------------------------------------------
loc_8C0C1CEE:
	mov.w @(loc_8C0C1D00,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C1D2C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C1CFa:
	#data 0x0A01
loc_8C0C1CFC:
	#data 0x00Dc
loc_8C0C1CFE:
	#data 0x00C0
loc_8C0C1D00:
	#data 0x012c
loc_8C0C1D02:
	#data 0x01A3
loc_8C0C1D04:
	#data 0x00D0
loc_8C0C1D06:
	#data 0x0150
loc_8C0C1D08:
	#data 0x0130
	#align4

loc_8C0C1D0C:
	#data bank04.loc_8c044F12
loc_8C0C1D10:
	#data loc_8c0c1C0e
loc_8C0C1D14:
	#data bank15.loc_8c15b6Cc
loc_8C0C1D18:
	#data bank12.loc_8c129560
loc_8C0C1D1C:
	#data bank12.loc_8c1294C8
loc_8C0C1D20:
	#data bank03.loc_8c034C38
loc_8C0C1D24:
	#data 0x8C289634
loc_8C0C1D28:
	#data bank03.loc_8c034D8c
loc_8C0C1D2C:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c0c1d30:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x03,r5
	mov.l @(0x160,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c1d6e
	mov r0,r4
	mov.w @(0x13C,PC),r0
	mov 0x01,r3
	mov.l @(0x150,PC),r2
	mov.b r3,@r4
	mov 0x00,r3
	mov.l r2,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.l r14,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @r15,r2
	mov.w @(0x126,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)

loc_8c0c1d6e:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C1D7A:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x11C,PC),r3
	mov 0x02,r6
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x03,r5
	jsr @r3
	mov.l @(0x4,r15),r4
	tst r0,r0
	bt.s loc_8c0c1db4
	mov r0,r4
	mov.l @(0x10C,PC),r3
	mov 0x01,r5
	mov.w @(0xF0,PC),r0
	mov.b r5,@r4
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r3
	mov.l r3,@(r0,r4)
	mov 0x20,r0
	mov.w @(0xE2,PC),r3
	mov.b r5,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)

loc_8c0c1db4:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C1DBC:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0C1EA4,pc),r1 ; r1 set to 0x8C15B6Dc
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	mov.w @(loc_8C0C1E8A,pc),r0 ; r0 set to 0xD0
	mov.l @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

loc_8C0C1DD2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3
	tst r3,r3
	bf/s loc_8C0C1DF4
	mov r5,r14
	mov.w @(loc_8C0C1E8E,pc),r0 ; r0 set to 0x12c
	mov 0x00,r5 ; r5 set to 0x00
	mov.b r5,@(r0,r4)
	mov r5,r0 ; r0 set to 0x00
	nop
	bra loc_8C0C1E84
	mov.w r0,@(0x1C,r4)

loc_8C0C1DF4:
	mov.w @(loc_8C0C1E90,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0C1E92,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0C1EA8,pc),r3 ; r3 set to 0x8C129560
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.w @(loc_8C0C1E90,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r14,r2 ; r2 ??? bc r14 is ???	
	mov.w @(loc_8C0C1E8E,pc),r0 ; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r5,@(r0,r4)
	mov.b @(0x02,r14),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r14),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C1E94,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r14),r3
	mov r14,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C1EAC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r4,r1
	mov.b @(r0,r14),r2
	add 0x34,r1
	mov.b r2,@(r0,r4)
	mov r14,r2
	mov.w @(loc_8C0C1E8E,pc),r0 ; r0 set to 0x12c
	add 0x34,r2
	mov.b r5,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r5,@(r0,r4)
	mov.w @(loc_8C0C1E96,pc),r0 ; r0 set to 0x12e
	mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
	add 0x04,r3
	mov.w r3,@(r0,r4)
	mov.l @(loc_8C0C1EAC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0C1E98,pc),r3 ; r3 set to 0x150
	mov 0x17,r0 ; r0 set to 0x17
	mov.w r0,@(0x1E,r4)
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov.b @(0x01,r3),r0
	mov 0x20,r3 ; r3 set to 0x20
	cmp/ge r3,r0
	bf loc_8C0C1E84
	mov.w @(loc_8C0C1E98,pc),r0 ; r0 set to 0x150
	mov 0x1C,r5 ; r5 set to 0x1c
	lds.l @r15+,pr
	add r14,r0 ; r0 ??? bc r14 is ???	
	mov.l @(loc_8C0C1EB0,pc),r2 ; r2 set to 0x8C034C38
	mov.b @(0x01,r0),r0
	and 0x0F,r0
	mov r0,r6
	jmp @r2
	mov.l @r15+,r14

loc_8C0C1E84:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C1E8A:
	#data 0x00D0
loc_8C0C1E8c:
	#data 0x0A02
loc_8C0C1E8E:
	#data 0x012c
loc_8C0C1E90:
	#data 0x00Dc
loc_8C0C1E92:
	#data 0x00C0
loc_8C0C1E94:
	#data 0x01A3
loc_8C0C1E96:
	#data 0x012e
loc_8C0C1E98:
	#data 0x0150
	#align4

loc_8C0C1E9C:
	#data bank04.loc_8c044F12
loc_8C0C1EA0:
	#data loc_8c0c1DBc
loc_8C0C1EA4:
	#data bank15.loc_8c15b6Dc
loc_8C0C1EA8:
	#data bank12.loc_8c129560
loc_8C0C1EAC:
	#data bank12.loc_8c1294C8
loc_8C0C1EB0:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0C1EB4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	mov.b @r3,r2
	tst r2,r2
	bt.s loc_8c0c1f56             ; loc_8c0c1f18+0x3e
	mov r5,r13
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf loc_8c0c1f56               ; loc_8c0c1f18+0x3e
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0c1f18
	mov.w @(0xA0,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c0c1f4e               ; loc_8c0c1f18+0x36
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0c1f00
	mov.w @(0x92,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0c1f00
	mov 0x21,r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)

loc_8C0C1F00:
	mov.w @(0x1C,r14),r0
	mov.w @(0x7C,PC),r3
	add r3,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0c1f4e               ; loc_8c0c1f18+0x36
	mov r13,r5
	bsr loc_8c0c1d7a
	mov r14,r4
	bra loc_8c0c1f4e              ; loc_8c0c1f18+0x36
	nop

loc_8C0C1F18:
	mov.w @(0x62,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c0c1f2c
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c0c1f56

loc_8C0C1F2C:
	mov.w @(0x1E,r14),r0
	mov 0x10,r3
	cmp/ge r3,r0
	bt loc_8c0c1f3c
	mov.w @(0x4C,PC),r0
	mov.w @(r0,r13),r1
	add 0x05,r1
	mov.w r1,@(r0,r14)

loc_8C0C1F3C:
	mov.w @(0x1E,r14),r0
	mov 0x06,r3
	cmp/ge r3,r0
	bt loc_8c0c1f4e
	mov.w @(0x3E,PC),r0
	mov 0x01,r2
	mov.b @(r0,r14),r1
	xor r2,r1
	mov.b r1,@(r0,r14)

loc_8C0C1F4E:
	mov.w @(0x36,PC),r0
	mov.l @(r0,r13),r3
	cmp/pl r3
	bt loc_8c0c1f62

loc_8C0C1F56:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0c1f6e
	mov.l @r15+,r14

loc_8C0C1F62:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C1F6A:
	rts
	nop

;----------------------------------------------
loc_8C0C1F6E:
	mov 0x03,r0 ; r0 set to 0x03
	mov.l @(loc_8C0C1F8C,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r5 ; r5 set to 0x00
	mov.b r5,@r4
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C1F86,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r5,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c1f7e:
	#data 0x01a0
loc_8c0c1f80:
	#data 0x01f9
loc_8c0c1f82:
	#data 0x4000
loc_8c0c1f84:
	#data 0x012e
loc_8c0c1f86:
	#data 0x012c
loc_8c0c1f88:
	#data 0x02c8
	#align4

loc_8C0C1F8C:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0c1f90:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x144,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x03,r5
	mov.l r6,@(0x8,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c1fd8             ; loc_8c0c1fa8+0x30
	mov r0,r4
	mov.l @(0x134,PC),r3
	mov 0x26,r0
	mov 0x21,r1
	mov.l r3,@(0x10,r4)
	add r4,r1
	mov.w @(0x114,PC),r3
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.l @(0x4,r15),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov.l @r15,r0
	and 0x7F,r0
	mov.b r0,@r1
	mov 0x22,r1
	mov.l @r15,r0
	add r4,r1
	and 0x80,r0
	mov.b r0,@r1
	mov.l @(0x8,r15),r3
	mov.w @(0xF6,PC),r0
	mov.b r3,@(r0,r4)

loc_8c0c1fd8:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C1FE0:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0C20E4,pc),r1 ; r1 set to 0x8C15B6Ec
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0C1FF4:
	mov.l r14,@-r15
	mov.w @(0xD6,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0xE8,PC),r3
	add 0x01,r0
	mov.w @(0xCA,PC),r2
	mov.b r0,@(0x4,r4)
	mov.w @(0xC8,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0xC4,PC),r0
	mov 0x01,r6
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0xA8,PC),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0xA4,PC),r3
	mov.b @(r0,r5),r2
	mov 0x42,r7
	mov.b r2,@(r0,r4)
	mov.w @(0x84,PC),r0
	mov.b r7,@(r0,r4)
	add 0x01,r0
	mov.b r7,@(r0,r4)
	add 0x0F,r0
	mov 0x00,r7
	mov.w r7,@(r0,r4)
	add 0xF2,r0
	mov.b r7,@(r0,r4)
	add 0x26,r0
	mov.l r7,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.l @(0x7C,PC),r3
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov r5,r2
	mov r4,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x21,r0
	mov.b @(r0,r4),r2
	mov 0xFF,r7
	extu.b r2,r2
	tst r6,r2
	bt.s loc_8c0c2094
	mov r7,r5
	mov r6,r5

loc_8C0C2094:
	mov 0x22,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c0c209e
	mov r7,r5

loc_8C0C209E:
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x20,r0
	mov.w r0,@(0x1E,r4)
	mov.w @(0x1C,r4),r0
	mov r0,r3
	mov 0x31,r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r14
	mov 0x22,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0c20c0
	add 0x03,r14
	add 0x04,r14

loc_8C0C20C0:
	lds.l @r15+,pr
	mov.l @(0x30,PC),r3
	mov r14,r6
	mov 0x17,r5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c20cc:
	#data 0x0a03
loc_8c0c20ce:
	#data 0x01a1
loc_8c0c20d0:
	#data 0x00dc
loc_8c0c20d2:
	#data 0x00c0
loc_8c0c20d4:
	#data 0x012c
loc_8c0c20d6:
	#data 0x01a3
loc_8c0c20d8:
	#data 0x019c
	#align4

loc_8C0C20DC:
	#data bank04.loc_8c044F12
loc_8C0C20E0:
	#data loc_8c0c1FE0
loc_8C0C20E4:
	#data bank15.loc_8c15b6Ec
loc_8C0C20E8:
	#data bank12.loc_8c129560
loc_8C0C20EC:
	#data bank12.loc_8c1294C8
loc_8C0C20F0:
	#data 0x8C2896B0
loc_8C0C20F4:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0C20F8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r3
	mov 0x24,r0 ; r0 set to 0x24
	mov r4,r14
	mov.l r5,@r15
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0C2122
	mov.l @(loc_8C0C21A0,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bf loc_8C0C215a
	bra loc_8C0C2166
	nop

loc_8C0C2122:
	mov.l @(loc_8C0C21A0,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8C0C2166
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r2
	mov 0x01,r3 ; r3 set to 0x01
	extu.b r2,r2
	cmp/gt r3,r2
	bt loc_8C0C215a
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov 0x17,r5 ; r5 set to 0x17
	add 0x01,r0 ; r0 set to 0x22
	mov.b r0,@(0x04,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r6
	add 0x0B,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0C21A4,pc),r2 ; r2 set to 0x8C034E8c
	jmp @r2
	mov.l @r15+,r14

loc_8C0C215A:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0C2194
	mov.l @r15+,r14

loc_8C0C2166:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0C21A8,pc),r3 ; r3 set to 0x8C045748
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0C2172:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x28,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c218e
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x10,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0C218E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C2194:
	mov.l @(loc_8C0C21AC,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0C219E,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C219E:
	#data 0x012c
	#align4

loc_8C0C21A0:
	#data bank03.loc_8c034dee
loc_8C0C21A4:
	#data bank03.loc_8c034e8c
loc_8C0C21A8:
	#data bank04.loc_8c045748
loc_8C0C21AC:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0c21b0:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x11C,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0c2202
	mov r0,r4
	mov 0x20,r1
	mov.l @(0x10C,PC),r3
	add r4,r1
	mov.w @(0x100,PC),r5
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	add r4,r5
	mov.w @(0xF4,PC),r3
	mov.l r2,@(0x18,r4)
	mov 0x21,r2
	mov.b @(0x8,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x00,r2
	mov.w @(0xE0,PC),r0
	mov.b r2,@(r0,r4)
	mov.l @r15,r3
	mov.w @(0xDE,PC),r0
	mov.w @(r0,r3),r2
	mov.w r2,@r5

loc_8c0c2202:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0


;==============================================
;unused
loc_8c0c220a:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0xC4,PC),r3
	mov 0x04,r5
	mov.b r0,@(0x4,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0c225c
	mov r0,r4
	mov 0x20,r1
	mov.l @(0xB4,PC),r3
	add r4,r1
	mov.w @(0xA6,PC),r5
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	add r4,r5
	mov.w @(0x9A,PC),r3
	mov.l r2,@(0x18,r4)
	mov 0x21,r2
	mov.b @(0x8,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x00,r2
	mov.w @(0x86,PC),r0
	mov.b r2,@(r0,r4)
	mov.l @r15,r3
	mov.w @(0x84,PC),r0
	mov.w @(r0,r3),r2
	mov.w r2,@r5

loc_8c0c225c:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C2264:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x68,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0c22b0
	mov r0,r4
	mov.l @(0x5C,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(0x18,r2),r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r2
	mov.w @(0x3E,PC),r3
	mov.l r2,@(0x14,r4)
	mov 0x21,r2
	mov.b @(0x8,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x00,r2
	mov.w @(0x2A,PC),r0
	mov.b r2,@(r0,r4)

loc_8C0C22B0:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C22B8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r4
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0C22E8,pc),r1 ; r1 set to 0x8C15B6Fc
	mov.b @(r0,r4),r3
	mov r14,r4
	mov.w @(loc_8C0C22DC,pc),r5 ; r5 set to 0x88
	mov.b r3,@(r0,r14)
	mov.b @(0x04,r14),r0
	add r14,r5 ; r5 ??? bc r14 is ???	
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c22d8:
	#data 0x0B00
loc_8c0c22da:
	#data 0x012C
loc_8c0c22dc:
	#data 0x0088
loc_8c0c22de:
	#data 0x0158
	#align4

loc_8C0C22E0:
	#data bank04.loc_8c044F12
loc_8C0C22E4:
	#data loc_8c0c22B8
loc_8C0C22E8:
	#data bank15.loc_8c15b6Fc

;==============================================
loc_8C0C22EC:
	mov 0x31,r0
	mov.l @(0x18,r4),r5
	mov 0xFE,r3
	mov.b r3,@(r0,r4)
	mov 0x28,r0
	mov.w r0,@(0x1C,r4)
	mova @(0x128,PC),r0
	fmov @r0,fr4
	mova @(0x128,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mova @(0x124,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mova @(0x120,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mova @(0x11C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0xFC,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bf loc_8c0c2338
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mova @(0x100,PC),r0
	fmov @r0,fr4

loc_8C0C2338:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mova @(0xF8,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mov 0x00,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0xCC,PC),r0
	mov.b r5,@(r0,r4)
	mov r5,r0
	nop
	mov.l @(0xE8,PC),r3
	mov 0x08,r6
	mov.b r0,@(0x5,r4)
	jmp @r3
	mov 0x13,r5

;==============================================
loc_8C0C2360:
	mov.w @(loc_8C0C241E,pc),r0 ; r0 set to 0x12c
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @(0x14,r4),r5
	mov.b r6,@(r0,r4)
	mov r6,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r4)
	mov 0xFE,r2 ; r2 set to 0xFFFFFFFe
	mov.w r0,@(0x1C,r4)
	mov 0x1B,r6 ; r6 set to 0x1b
	mov.w @(loc_8C0C241C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r5),r3
	mov.w r3,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	mov.l @(loc_8C0C2440,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r4)
	jmp @r3
	mov 0x17,r5

loc_8C0C2390:
	mov.l r14,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov 0x31,r0 ; r0 set to 0x31
	mov.l r3,@r15
	mov 0xFE,r2 ; r2 set to 0xFFFFFFFe
	mov.l @(loc_8C0C2444,pc),r3 ; r3 set to 0x8C11E730
	jsr @r3
	mov.b r2,@(r0,r14)
	mov 0x0F,r5 ; r5 set to 0x0f
	mov.l @(loc_8C0C2450,pc),r3 ; r3 set to 0x8C15B70c
	and r0,r5 ; r5 ??	
	exts.w r5,r4
	shll2 r4
	shll r4
	add r3,r4
	mov.w @r4,r2 ; r2 ??? bc r4 is ???	
	mova @(loc_8C0C2448,pc),r0  ; r0 set to 0x8C0C2448
	fmov.s @r0,fr4
	mova @(loc_8C0C244C,pc),r0  ; r0 set to 0x8C0C244c
	lds r2,fpul
	fmov.s @r0,fr15
	mov 0x5C,r0 ; r0 set to 0x5c
	float fpul,fr3
	fmul fr4,fr3 ; r3 ??? bc r4 is ???	
	fdiv fr15,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(0x02,r4),r0
	mov r0,r2 ; r2 set to 0x5c
	lds r2,fpul
	mov 0x68,r0 ; r0 set to 0x68
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr15,fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0C2454,pc),r0  ; r0 set to 0x8C0C2454
	fmov.s @r0,fr14
	mov.w @(0x04,r4),r0
	mov r0,r2 ; r2 set to 0x8C0C2454
	lds r2,fpul
	float fpul,fr3
	fmul fr14,fr3
	mov 0x60,r0 ; r0 set to 0x60
	fdiv fr15,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(0x06,r4),r0
	mov.l @(loc_8C0C2458,pc),r4 ; r4 set to 0x8C26A518
	mov r0,r2 ; r2 set to 0x60
	lds r2,fpul
	mov 0x6C,r0 ; r0 set to 0x6c
	float fpul,fr3
	fmul fr14,fr3
	fdiv fr15,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C241C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???	
	tst r2,r2
	bt loc_8C0C2460
	mova @(loc_8C0C245C,pc),r0  ; r0 set to 0x8C0C245c
	fmov.s @r0,fr3
	mov.w @(loc_8C0C2420,pc),r0 ; r0 set to 0x88
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	bra loc_8C0C247c
	mov 0x34,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C241C:
	#data 0x0130
loc_8C0C241E:
	#data 0x012c
loc_8C0C2420:
	#data 0x0088
	#align4
loc_8c0c2424:
	#data 0x44480000
loc_8c0c2428:
	#data 0xc0555555
loc_8c0c242c:
	#data 0xbe555555
loc_8c0c2430:
	#data 0xc0892492
loc_8c0c2434:
	#data 0x3e092492
loc_8c0c2438:
	#data 0xc4480000
loc_8c0c243c:
	#data 0x43f00000
loc_8C0C2440:
	#data bank03.loc_8c034e8c
loc_8C0C2444:
	#data bank11.loc_8c11e730
loc_8C0C2448:
	#data 0x3FD55555
loc_8C0C244C:
	#data 0x43800000
loc_8C0C2450:
	#data bank15.loc_8c15b70c
loc_8C0C2454:
	#data 0x40092492
loc_8C0C2458:
	#data 0x8C26A518
loc_8C0C245C:
	#data 0xC1D55555

;==============================================
loc_8C0C2460:
	mova @(loc_8C0C25B0,pc),r0  ; r0 init to 0x8C0C25B0
	fmov.s @r0,fr3
	mov.w @(loc_8C0C25A6,pc),r0 ; r0 set to 0x8c
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fneg fr2
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r14),fr2
	fneg fr2

loc_8C0C247C:
	fmov.s fr2,@(r0,r14)
	mov.l @(loc_8C0C25B4,pc),r2 ; r2 set to 0x8C11E730, r2 set to 0x8C11E730
	mov.w @(loc_8C0C25A8,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	mov.l @r15,r3
	jsr @r2
	fmov.s @(r0,r3),fr12
	and 0x7F,r0
	mov r14,r4
	shll8 r0 ; r0 set to 0x41C00, r0 set to 0x41C00
	lds r0,fpul
	mova @(loc_8C0C25B8,pc),r0  ; r0 set to 0x8C0C25B8, r0 set to 0x8C0C25B8
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov 0x1D,r6 ; r6 set to 0x1D, r6 set to 0x1d
	float fpul,fr3
	fmul fr14,fr3
	fdiv fr15,fr3
	fsub fr3,fr12
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fadd fr3,fr12
	fmov.s fr12,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0C25BC,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s @r15+,fr12
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0C24B6:
mov.w @(loc_8C0C25AA,pc),r0 ; r0 set to 0x12c
mov 0x00,r5 ; r5 set to 0x00
mov.b r5,@(r0,r4)
mov r5,r0 ; r0 set to 0x00
nop
mov.l @(loc_8C0C25BC,pc),r3 ; r3 set to 0x8C034E8c
mov 0x1E,r6 ; r6 set to 0x1e
mov.b r0,@(0x05,r4)
jmp @r3
mov 0x17,r5

;==============================================
loc_8C0C24CA:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xD8,PC),r0
	mov 0x00,r5
	mov.l @(0x18,r14),r4
	mov.b r5,@(r0,r14)
	mov r5,r0
	nop
	mov.b r0,@(0x5,r14)
	mova @(0xE0,PC),r0
	fmov @r0,fr4
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mova @(0xE0,PC),r0
	mov.l @(0xDC,PC),r5
	extu.b r3,r3
	fmov @r0,fr2
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r5,r3
	mov.w @r3,r3
	mov 0x5C,r0
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r5,r3
	mov.w @(0x2,r3),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	mova @(0xAC,PC),r0
	fmov @r0,fr1
	mov 0x60,r0
	fmul fr1,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	mov r3,r2
	shll2 r2
	shll r3
	add r2,r3
	add r3,r5
	mov.w @(0x4,r5),r0
	mov r0,r3
	mov.w @(0x6C,PC),r0
	mov.b r3,@(r0,r14)
	add 0xD8,r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bf loc_8c0c2550
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0C2550:
	mov 0x5C,r0
	mov.l @(0x68,PC),r3
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	mov 0x17,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	mov r14,r4
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x3A,PC),r0
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0C2576:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov r13,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0C25AA,pc),r0 ; r0 set to 0x12c
	mov.b r13,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0C2614
	mov.w @(loc_8C0C25AE,pc),r0 ; r0 set to 0x130
	mov.w r13,@(r0,r14)
	mov.b @(0x02,r4),r0
	tst r0,r0
	bf loc_8C0C25D0
	mov.w @(loc_8C0C25AC,pc),r0 ; r0 set to 0x158
	mov 0x23,r3 ; r3 set to 0x23
	bra loc_8C0C25D6
	mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C25A6:
	#data 0x008c
loc_8C0C25A8:
	#data 0x041c
loc_8C0C25AA:
	#data 0x012c
loc_8C0C25AC:
	#data 0x0158
loc_8C0C25AE:
	#data 0x0130
	#align4

loc_8C0C25B0:
	#data 0x41D55555
loc_8C0C25B4:
	#data bank11.loc_8c11e730
loc_8C0C25B8:
	#data 0x432B6DB6
loc_8C0C25BC:
#data bank03.loc_8c034e8c
loc_8C0C25C0:
	#data 0x43800000
loc_8C0C25C4:
	#data bank15.loc_8c15b78c
loc_8C0C25C8:
	#data 0x3FD55555
loc_8C0C25Cc:
	#data 0x40092492

;==============================================
loc_8C0C25D0:
	mov.w @(loc_8C0C26FC,pc),r0 ; r0 set to 0x158
	mov 0x24,r1 ; r1 set to 0x24
	mov.b r1,@(r0,r14)

loc_8C0C25D6:
	mov.w @(loc_8C0C26FC,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.l @(loc_8C0C2704,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0C2708,pc),r2 ; r2 set to 0x8C044F12, r2 set to 0x8C044F12
	mov 0x03,r5 ; r5 set to 0x03, r5 set to 0x03
	mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt/s loc_8C0C263a
	mov r0,r4 ; r4 set to 0x158, r4 set to 0x158
	mov.l @(loc_8C0C270C,pc),r2 ; r2 set to 0x8C0C22B8, r2 set to 0x8C0C22B8
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.l r2,@(0x10,r4)  ; r4 ??, r4 ??	
	mov 0x05,r2 ; r2 set to 0x05, r2 set to 0x05
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	mov.l r3,@(0x18,r4)
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	mov.l r14,@(0x14,r4)
	mov.b r2,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.w @(loc_8C0C26FE,pc),r2 ; r2 set to 0xB00, r2 set to 0xB00
	mov.b r3,@(r0,r4)
	mov 0x26,r0 ; r0 set to 0x26, r0 set to 0x26
	mov.w r2,@(r0,r4)
	mov.w @(loc_8C0C2700,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	bra loc_8C0C263a
	mov.b r13,@(r0,r4)

loc_8C0C2614:
	mov.b @(0x02,r4),r0
	tst r0,r0
	bf loc_8C0C2622
	mov.w @(loc_8C0C26FC,pc),r0 ; r0 set to 0x158
	mov 0x25,r3 ; r3 set to 0x25
	bra loc_8C0C2628
	mov.b r3,@(r0,r14)

loc_8C0C2622:
	mov.w @(loc_8C0C26FC,pc),r0 ; r0 set to 0x158
	mov 0x26,r1 ; r1 set to 0x26
	mov.b r1,@(r0,r14)

loc_8C0C2628:
	lds.l @r15+,pr
	mov.w @(loc_8C0C26FC,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.l @(loc_8C0C2704,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov r14,r4
	mov.l @r15+,r13
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0C263A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C2642:
	mov 0x00,r0 ; r0 set to 0x00
	mov.l @(loc_8C0C2704,pc),r3 ; r3 set to 0x8C034E8c
	mov.b r0,@(0x05,r4)
	mova @(loc_8C0C2710,pc),r0  ; r0 set to 0x8C0C2710
	fmov.s @r0,fr3 ; r3 ??	
	mov 0x5C,r0 ; r0 set to 0x5c
	mov 0x28,r6 ; r6 set to 0x28
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0C2714,pc),r0  ; r0 set to 0x8C0C2714
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r4)
	jmp @r3
	mov 0x17,r5

loc_8C0C265E:
	rts
	nop

;----------------------------------------------
loc_8C0C2662:
	mov.l @(0x18,r4),r5
	mov 0x00,r6
	mov r6,r0
	nop
	mov.b r0,@(0x5,r4)
	mov.w @(0x90,PC),r0
	mov.b r6,@(r0,r4)
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x7E,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bf loc_8c0c2690
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8C0C2690:
	mov 0x5C,r0
	mov.l @(0x70,PC),r3
	fmov @(r0,r4),fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	mov 0x27,r6
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x60,r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	jmp @r3
	mov 0x17,r5

;----------------------------------------------
loc_8C0C26B0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r4 ; r4 set to 0x00
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0C2700,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0C26D6
	mov.w @(loc_8C0C26FC,pc),r0 ; r0 set to 0x158
	mov 0x29,r3 ; r3 set to 0x29
	bra loc_8C0C26Dc
	mov.b r3,@(r0,r14)

loc_8C0C26D6:
	mov.w @(loc_8C0C26FC,pc),r0 ; r0 set to 0x158
	mov 0x2A,r1 ; r1 set to 0x2a
	mov.b r1,@(r0,r14)

loc_8C0C26DC:
	mov.w @(loc_8C0C26FC,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.l @(loc_8C0C2704,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C26FC:
	#data 0x0158
loc_8C0C26FE:
	#data 0x0B00
loc_8C0C2700:
	#data 0x012c
loc_8C0C2702:
	#data 0x0130
	#align4

loc_8C0C2704:
	#data bank03.loc_8c034e8c
loc_8C0C2708:
	#data bank04.loc_8c044F12
loc_8C0C270C:
	#data loc_8c0c22B8
loc_8C0C2710:
	#data 0x42695555
loc_8C0C2714:
	#data 0x438E8000
loc_8C0C2718:
	#data 0x430A5555
loc_8C0C271c:
	#data 0x43160000

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C2720:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov 0x34,r0
	mov.l r5,@r15
	mov.l @(0x14,r14),r4
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r4
	extu.b r4,r3
	tst r3,r3
	bt loc_8c0c274a
	mov 0x07,r3
	extu.b r4,r2
	cmp/ge r3,r2
	bf loc_8c0c275c

loc_8C0C274A:
	mov.w @(0x12C,PC),r0
	mov 0x00,r1
	mov.b r1,@(r0,r14)
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C275C:
	mov.l @(0x120,PC),r3
	mov 0x1B,r5
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0c2f76
	mov.l @r15+,r14
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C277A:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0C287C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0C2884,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0C287C,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0C287A,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C287E,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C0C2888,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r4
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r2
	mov.l @(loc_8C0C288C,pc),r0 ; r0 set to 0x8C15B7A0
	extu.b r2,r2
	lds.l @r15+,pr
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0C27FA:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0c2812
	mov.b @(0x5,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0x68,PC),r0
	mov.b r3,@(r0,r4)

loc_8C0C2812:
	rts
	nop

;----------------------------------------------
loc_8C0C2816:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x74,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c283c
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x13,r5
	mov.b @(0x5,r14),r0
	mov 0x09,r6
	mov.l @(0x60,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4

loc_8C0C283C:
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

;----------------------------------------------
loc_8C0C287A:
	#data 0x012c
loc_8C0C287C:
	#data 0x00Dc
loc_8C0C287E:
	#data 0x01A3
	#align4

loc_8C0C2880:
	#data bank03.loc_8c034C38
loc_8C0C2884:
	#data bank12.loc_8c129560
loc_8C0C2888:
	#data bank12.loc_8c1294C8
loc_8C0C288C:
	#data bank15.loc_8c15b7A0
loc_8C0C2890:
	#data bank03.loc_8c034dee
loc_8C0C2894:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0C2898:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x134,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c28d4
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mova @(0x128,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x116,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c0c28c6
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0C28C6:
	mov.l @(0x114,PC),r3
	mov 0x30,r0
	mov 0x13,r5
	mov.w r0,@(0x1C,r14)
	mov 0x0A,r6
	jsr @r3
	mov r14,r4

loc_8C0C28D4:
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

;----------------------------------------------
loc_8C0C2912:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov.l @(0x18,r14),r4
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0c2946
	mov.b @(0x5,r14),r0
	mov 0x13,r5
	mov.l @(0xB0,PC),r3
	mov 0x0B,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x90,PC),r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4

loc_8C0C2946:
	mov.l @(0x8C,PC),r2
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
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C298A:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0c299c
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)

loc_8C0C299C:
	mov.l @(0x34,PC),r3
	jmp @r3
	nop

;==============================================
loc_8C0C29A2:
	mov r4,r3
	mov.l @(loc_8C0C29E0,pc),r1 ; r1 set to 0x8C15B7Cc
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0C29B4:
	mov.w @(loc_8C0C29D0,pc),r0 ; r0 set to 0x130
	mov 0xFE,r2 ; r2 set to 0xFFFFFFFe
	mov.l @(0x14,r4),r5
	mov.w @(r0,r5),r3
	mov.w r3,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr3
	rts
	fmov.s fr3,@(r0,r4)

;----------------------------------------------
loc_8C0C29D0:
	#data 0x0130
loc_8C0C29D2:
	#data 0x0300
	#align4

loc_8C0C29D4:
	#data bank03.loc_8c034dee
loc_8C0C29D8:
	#data 0x3E855555
loc_8C0C29DC:
	#data bank03.loc_8c034e8c
loc_8C0C29E0:
	#data bank15.loc_8c15b7Cc

;==============================================
loc_8C0C29E4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0C2AE0,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov r4,r14
	mov.l r5,@r15
	mov.b r3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x12b
	mov.w r0,@(0x1C,r14)
	add 0x01,r0 ; r0 set to 0x12c
	exts.w r0,r0 ; r0 ??	
	tst r0,r0
	bf loc_8C0C2A28
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0C2AE2,pc),r0 ; r0 set to 0xB4
	mov.w r0,@(0x1C,r14)
	mov.l @r15,r5
	bsr loc_8C0C29B4
	mov r14,r4
	mov.l @(loc_8C0C2AE8,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x1B,r6 ; r6 set to 0x1b
	jsr @r2
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???	
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0C2FD6
	mov.l @r15+,r14

loc_8C0C2A28:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C2A30:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov r4,r14
	bsr loc_8C0C29B4
	mov r14,r4
	mov.l @(loc_8C0C2AEC,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0C2A5e
	mov 0x00,r4 ; r4 set to 0x00
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0C2AE0,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C2A5E:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0C2FD6
	mov.l @r15+,r14

;unused
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C2A72:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x14,r14),r4
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0c2a92
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0c2a92
	mov 0x21,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c0c2a9c

loc_8C0C2A92:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C2A9C:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x4C,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C2AB0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0C2AF8,pc),r3 ; r3 set to 0x8C26A5A8
	mova @(loc_8C0C2AF4,pc),r0  ; r0 init to 0x8C0C2AF4
	mov r4,r14
	mov.l r5,@r15
	fmov.s @r0,fr3 ; r3 ??	
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r3,fr2
	fmov.s @(r0,r14),fr1
	fadd fr3,fr2
	mov.l @(0x18,r14),r4
	mov.w @(loc_8C0C2AE4,pc),r5 ; r5 set to 0x2A4
	fcmp/gt fr2,fr1
	bf/s loc_8C0C2AFc
	add r4,r5 ; r5 ??? bc r4 is ???	
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x04,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C2AE0:
	#data 0x012c
loc_8C0C2AE2:
	#data 0x00B4
loc_8C0C2AE4:
	#data 0x02A4
	#align4

loc_8C0C2AE8:
	#data bank03.loc_8c034e8c
loc_8C0C2AEC:
	#data bank03.loc_8c034dee
loc_8C0C2AF0:
	#data bank15.loc_8c15b7E0
loc_8C0C2AF4:
	#data 0x42CDB6Db
loc_8C0C2AF8:
	#data 0x8C26A5A8

;==============================================
loc_8c0c2afc:
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x34,r0
	fmov.s @(r0,r14),fr4
	fmov.s @(r0,r4),fr3
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c0c2b44
	fneg fr4

loc_8c0c2b44:
	mova @(loc_8C0C2C38,pc),r0
	fmov.s @r0,fr3
	fcmp/gt fr4,fr3
	bt/s loc_8c0c2b54
	mov r14,r4
	mov 0x11,r0
	mov 0x01,r2
	mov.b r2,@(r0,r5)

loc_8c0c2b54:
	mov.l @(loc_8c0c2c3c,pc),r3
	jsr @r3
	nop
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0c2fd6
	mov.l @r15+,r14

;unused
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c2b6e:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x14,r14),r4
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf.s loc_8c0c2bce
	mov.l @(0x18,r14),r5
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0c2bce
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0c2bce
	mov 0x21,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0c2bce
	mov.w @(0x96,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c0c2bce
	mov 0x24,r0
	mov.b @(r0,r4),r2
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b @(r0,r4),r3
	add 0xFE,r3
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x01,r3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x74,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x78,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c2bda

loc_8c0c2bce:
	mov.w @(0x64,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c0c2bda:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0C2BE0:
	mov.w @(loc_8C0C2C36,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(0x18,r4),r6
	mov.b r3,@(r0,r4)
	add 0x2C,r0 ; r0 set to 0x158
	mov.w @r5,r3 ; r3 ??? bc r5 is ???	
	mov.w @(r0,r6),r2
	cmp/eq r3,r2
	bt loc_8C0C2BFa
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x159
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C0C2BFA:
	mov.w @(loc_8C0C2C34,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r6),r3
	tst r3,r3
	bt loc_8C0C2C30
	mov.w @(loc_8C0C2C36,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r3,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x130
	mov.w @(r0,r6),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.w r2,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r6),fr2
	mov.l @(loc_8C0C2C3C,pc),r3 ; r3 set to 0x8C034DEe
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r6),fr2
	fadd fr3,fr2
	jmp @r3
	fmov.s fr2,@(r0,r4)

loc_8C0C2C30:
	rts
	nop

;----------------------------------------------
loc_8C0C2C34:
	#data 0x0141
loc_8C0C2C36:
	#data 0x012c
	#align4

loc_8c0c2c38:
	#data 0x42A00000
loc_8C0C2C3C:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0C2C40:
	mov 0x31,r0
	mov.l @(0x14,r4),r5
	mov 0xFE,r3
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mova @(0xB8,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	rts
	fmov fr2,@(r0,r4)

;----------------------------------------------
loc_8C0C2C5C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x9A,PC),r0
	mov r4,r14
	mov 0x00,r3
	mov.l r5,@r15
	mov.l @(0x14,r14),r4
	mov.b r3,@(r0,r14)
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0c2c9c
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0c2cb4
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0c2c9c
	mov 0x21,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c0c2c9c
	mov.w @(0x6E,PC),r0
	mov.w @(0x6E,PC),r2
	mov.w @(r0,r4),r3
	extu.w r3,r3
	cmp/eq r2,r3
	bt loc_8c0c2caa

loc_8C0C2C9C:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C2CAA:
	mov.l @r15,r5
	bsr loc_8c0c2c40
	mov r14,r4
	bra loc_8c0c2ccc
	nop

loc_8C0C2CB4:
	mov 0x31,r0
	mov 0xFF,r3
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mova @(0x48,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C0C2CCC:
	mov.l @(0x40,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0c2fd6
	mov.l @r15+,r14
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C2CE6:
	mov.w @(loc_8C0C2D00,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(0x18,r4),r6
	mov.b r3,@(r0,r4)
	add 0x2C,r0 ; r0 set to 0x158
	mov.w @r5,r3 ; r3 ??? bc r5 is ???	
	mov.w @(r0,r6),r2
	cmp/eq r3,r2
	bt loc_8C0C2D14
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x159
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C0C2D00:
	#data 0x012c
loc_8C0C2D02:
	#data 0x0158
loc_8C0C2D04:
	#data 0x1718
	#align4

loc_8C0C2D08:
	#data 0x424DB6Db
loc_8C0C2D0c:
	#data 0x41AB6DB6
loc_8C0C2D10:
	#data bank03.loc_8c034dee

;==============================================
loc_8c0c2d14:
	mov.w @(loc_8C0C2E48,pc),r0
	mov.b @(r0,r6),r0
	and 0xF0,r0
	mov r0,r5
	exts.b r5,r3
	tst r3,r3
	bt loc_8c0c2da0
	exts.b r5,r7
	mov.w @(loc_8c0c2e4a,pc),r0
	cmp/pz r7
	mov 0x01,r2
	bt/s loc_8c0c2d30
	mov.b r2,@(r0,r4)
	add 0x0F,r7

loc_8c0c2d30:
	mov 0xFC,r3
	shad r3, r7
	mov.l @(loc_8c0c2e58,pc),r3
	add 0xFF,r7
	exts.b r7,r5
	shll2 r5
	shll r5
	add r3,r5
	mov.l @r5,r2
	mova @(loc_8C0C2E54,pc),r0
	fmov.s @r0,fr4
	mova @(loc_8C0C2E5C,pc),r0
	lds r2,fpul
	fmov.s @r0,fr2
	mov 0x5C,r0
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0C2E60,pc),r0
	mov.l @(0x04,r5),r2
	fmov.s @r0,fr1
	mov 0x60,r0
	lds r2,fpul
	float fpul,fr3
	fmul fr1,fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C2E4C,pc),r0
	mov.w @(r0,r6),r2
	tst r2,r2
	bf loc_8c0c2d78
	mov 0x5C,r0
	fmov.s @(r0,r4),fr3
	fneg fr3
	fmov.s fr3,@(r0,r4)

loc_8c0c2d78:
	mov 0x5C,r0
fmov.s @(r0,r4),fr3
	mov 0x34,r0
	fmov.s @(r0,r6),fr2
	mov 0xFE,r2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0
	fmov.s @(r0,r4),fr3
	mov 0x38,r0
	fmov.s @(r0,r6),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0C2E4C,pc),r0
	mov.w @(r0,r6),r3
	mov.w r3,@(r0,r4)
	mov 0x31,r0
	mov.l @(loc_8c0c2e64,pc),r3
	jmp @r3
	mov.b r2,@(r0,r4)

loc_8c0c2da0:
	rts
	nop

loc_8C0C2DA4:
	rts
	nop

;----------------------------------------------
loc_8C0C2DA8:
	mov.w @(loc_8C0C2E4A,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b r3,@(r0,r14)
	add 0x2C,r0 ; r0 set to 0x158
	mov.w @r5,r3 ; r3 ??? bc r5 is ???	
	mov.w @(r0,r4),r2
	cmp/eq r3,r2
	bt loc_8C0C2DCc
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x159
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c2dcc:
	mov.w @(loc_8C0C2E48,pc),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0c2e0c
	mov.w @(loc_8C0C2E4C,pc),r0
	mov 0xFE,r2
	mov.w @(r0,r4),r3
	mov.w r3,@(r0,r14)
	mov 0x31,r0
	mov.b r2,@(r0,r14)
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	mov 0x34,r0
	fmov.s @(r0,r4),fr2
	mov.l @(loc_8c0c2e64,pc),r3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0
	fmov.s @(r0,r14),fr3
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0C2E4E,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0c2e0c
	mov.w @(loc_8c0c2e4a,pc),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)

loc_8c0c2e0c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0C2E12:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(loc_8C0C2E4A,pc),r0 ; r0 set to 0x12c
	mov.w @(loc_8C0C2E50,pc),r3 ; r3 set to 0x2A4
	mov 0x00,r2 ; r2 set to 0x00
	mov.l @(0x18,r14),r4
	add r4,r3 ; r3 ??? bc r4 is ???	
	mov.l r3,@r15
	mov.b r2,@(r0,r14)
	add 0x2C,r0 ; r0 set to 0x158
	mov.w @r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(r0,r4),r3
	cmp/eq r2,r3
	bt loc_8C0C2E84
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0C2E68
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x22
	mov.b r0,@(0x04,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c2e48:
	#data 0x0141
loc_8C0C2E4A:
	#data 0x012c
loc_8c0c2e4c:
	#data 0x0130
loc_8c0c2e4e:
	#data 0x0140
loc_8C0C2E50:
	#data 0x02A4
	#align4

loc_8c0c2e54:
	#data 0x47800000
loc_8C0C2E58:
	#data bank15.loc_8c15b7E8
loc_8c0c2e5c:
	#data 0x3FD55555
loc_8c0c2e60:
	#data 0x40092492
loc_8C0C2E64:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0C2E68:
	mov.b @(0x05,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	mov 0x17,r5 ; r5 set to 0x17
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x2B,r6 ; r6 set to 0x2b
	mov.w @(loc_8C0C2F90,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0C2F98,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	mov.l @r15+,r14

loc_8c0c2e84:
	mov.w @(loc_8C0C2F92,pc),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c0c2ee0
	mov.w @(loc_8c0c2f94,pc),r0
	mov 0xFE,r2
	mov.w @(r0,r4),r3
	mov.w r3,@(r0,r14)
	mov 0x31,r0
	mov.b r2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0c2ea8
	mov 0x31,r0
	mov.b @(r0,r14),r3
	add 0xFD,r3
	mov.b r3,@(r0,r14)

loc_8c0c2ea8:
	mov 0x34,r0
	mov.l @(loc_8C0C2F9C,pc),r2
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c0c2ec2
	mov.l @(loc_8c0c2fa0,pc),r3
	jsr @r3
	mov r14,r4

loc_8c0c2ec2:
	mov.w @(loc_8C0C2F96,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0c2ee0
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0c2eda
	mov.l @r15,r3
	mov.b @(0x0E,r3),r0
	tst r0,r0
	bf loc_8c0c2ee0

loc_8c0c2eda:
	mov.w @(loc_8c0c2f90,pc),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c0c2ee0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0C2EE8:
mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0C2FA0,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov.l @(0x18,r14),r13
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0C2F0a
	mov.w @(loc_8C0C2F90,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14)
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x12d
	bra loc_8C0C2F22
	mov.b r0,@(0x04,r14)

loc_8C0C2F0A:
	mov.w @(loc_8C0C2F94,pc),r0 ; r0 set to 0x130
	mov 0xFE,r2 ; r2 set to 0xFFFFFFFe
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)

loc_8C0C2F22:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C2F2A:
	mov r4,r3
	mov.l @(loc_8C0C2FA4,pc),r1 ; r1 set to 0x8C15B800
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0C2F3C:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x24,r0
	sts.l pr,@-r15
	mov.l @(0x14,r14),r4
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b @(r0,r4),r2
	mov 0x01,r3
	add 0xFC,r2
	mov.b r2,@(r0,r14)
	mov.w @(0x38,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c2f70
	mov.w @(0x28,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0C2F70:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C2F76:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r4
	mov.b @(0x01,r4),r0
	mov r0,r3
	mov.b @(0x01,r14),r0
	cmp/eq r0,r3
	bt loc_8C0C2FAc
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C2F90:
	#data 0x012c
loc_8c0c2f92:
	#data 0x0141
loc_8C0C2F94:
	#data 0x0130
loc_8c0c2f96:
	#data 0x0140
	#align4

loc_8C0C2F98:
	#data bank03.loc_8c034e8c
loc_8c0c2f9c:
	#data 0x8C2895F6
loc_8C0C2FA0:
	#data bank03.loc_8c034dee
loc_8C0C2FA4:
	#data bank15.loc_8c15b800
loc_8C0C2FA8:
	#data bank03.loc_8c034D8c


;==============================================
loc_8C0C2FAC:
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0C300C,pc),r0 ; r0 set to 0x8C15B808
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C2FC2:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C3004,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0C2FD0:
	mov.l @(loc_8C0C3010,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8c0c2fd6:
mov.w @(loc_8C0C3006,pc),r0
	mov.l @(loc_8C0C3014,pc),r5
	fmov.s @(r0,r5),fr3
	mov 0x34,r0
	fmov.s @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bt loc_8c0c2ff0
	mov.w @(loc_8C0C3008,pc),r0
	fmov.s @(r0,r5),fr3
	mov 0x34,r0
	fmov.s @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0c2ff8

loc_8c0c2ff0:
	mov.w @(loc_8c0c3004,pc),r0
	mov 0x00,r2
	bra loc_8c0c2ffe
	mov.b r2,@(r0,r4)

loc_8c0c2ff8:
	mov.w @(loc_8c0c3004,pc),r0
	mov 0x01,r1
	mov.b r1,@(r0,r4)

loc_8c0c2ffe:
	mov.w @(loc_8c0c3004,pc),r0
	rts
	mov.b @(r0,r4),r0

;----------------------------------------------
loc_8c0c3004:
	#data 0x012C
loc_8C0C3006:
	#data 0x0088
loc_8C0C3008:
	#data 0x008C
	#align4

loc_8c0c300c:
	#data bank15.loc_8C15B808
loc_8c0c3010:
	#data bank04.loc_8C0450C0
loc_8C0C3014:
	#data 0x8C26A518

;==============================================
;unused
loc_8c0c3018:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0xAC,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0c3064             ; loc_8c0c303c+0x28
	mov r0,r4
	mov 0x20,r1
	mov.l @(0x9C,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.w @(0x8C,PC),r3
	mov.l r2,@(0x18,r4)
	mov 0x21,r2
	mov.l @r15,r0
	add r4,r2
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x8,r15),r0
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x00,r2
	mov.w @(0x72,PC),r0
	mov.b r2,@(r0,r4)

loc_8c0c3064:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c0c306c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.l @(0x5C,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0c30b4
	mov r0,r4
	mov.l @(0x4C,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov.w @(0x38,PC),r2
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)
	mov 0x00,r3
	mov.w @(0x22,PC),r0
	mov.b r3,@(r0,r4)

loc_8c0c30b4:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0C30C0:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0C30E0,pc),r1 ; r1 set to 0x8C15B834
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c30d4:
	#data 0x0B01
loc_8c0c30d6:
	#data 0x012C
	#align4

loc_8C0C30D8:
	#data bank04.loc_8c044F12
loc_8C0C30DC:
	#data loc_8c0c30C0
loc_8C0C30E0:
	#data bank15.loc_8c15b834

;==============================================
loc_8C0C30E4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0xC0,PC),r3
	mov r4,r14
	mov.l r5,@r15
	mov 0x01,r5
	add r14,r3
	mov 0x00,r6
	mov.l r3,@(0x4,r15)
	bsr loc_8c0c306c
	mov r14,r4
	mov 0x01,r6
	mov r6,r5
	bsr loc_8c0c306c
	mov r14,r4
	mov 0x01,r5
	mov 0x02,r6
	bsr loc_8c0c306c
	mov r14,r4
	mov 0x01,r5
	mov 0x03,r6
	bsr loc_8c0c306c
	mov r14,r4
	mov 0x01,r5
	mov 0x04,r6
	bsr loc_8c0c306c
	mov r14,r4
	mov 0x01,r5
	mov 0x05,r6
	bsr loc_8c0c306c
	mov r14,r4
	mov 0x01,r5
	mov 0x06,r6
	bsr loc_8c0c306c
	mov r14,r4
	mov 0x01,r5
	mov 0x07,r6
	bsr loc_8c0c306c
	mov r14,r4
	mov 0x01,r5
	mov 0x08,r6
	bsr loc_8c0c306c
	mov r14,r4
	mov.w @(0x70,PC),r0
	mov 0x00,r3
	mov.l @(0x74,PC),r4
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	mov.l @r15,r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov.l @r15,r3
	fmov @(r0,r3),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x54,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c0c3164
	mov.l @(0x58,PC),r4

loc_8C0C3164:
	lds r4,fpul
	mova @(0x58,PC),r0
	fmov @r0,fr2
	mova @(0x58,PC),r0
	fmov @r0,fr1
	mov 0x5C,r0
	float fpul,fr3
	mov 0x17,r5
	mov r14,r4
	mov 0x01,r6
	fmul fr2,fr3
	fdiv fr1,fr3
	fmov fr3,@(r0,r14)
	mova @(0x48,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x44,PC),r0
	fmov @r0,fr4
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov 0x68,r0
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	mov 0x6C,r0
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov.l @(0x4,r15),r3
	fldi0 fr3
	fmov fr3,@r3
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0x24,PC),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c31ae:
	#data 0x0088
loc_8c0c31b0:
	#data 0x012c
loc_8c0c31b2:
	#data 0x0130
	#align4

loc_8c0c31b4:
	#data 0x435edb6d
loc_8c0c31b8:
	#data 0x00100000
loc_8c0c31bc:
	#data 0xfff00000
loc_8c0c31c0:
	#data 0x3fd55555
loc_8c0c31c4:
	#data 0x47800000
loc_8c0c31c8:
	#data 0xc0700000
loc_8c0c31cc:
	#data 0x42800000
loc_8C0C31D0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0C31D4:
	add 0xFC,r15
	mov.w @(0x14E,PC),r3
	mov 0x00,r7
	mov.w @(0x14C,PC),r0
	add r4,r3
	mov.l r3,@r15
	mov 0x04,r3
	mov.l @(0x14,r4),r6
	mov.b r7,@(r0,r4)
	mov 0x31,r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r5
	mov.w @(0x13A,PC),r0
	extu.b r5,r5
	mov.w @(r0,r4),r3
	shll2 r5
	shll2 r5
	tst r3,r3
	shll2 r5
	bf.s loc_8c0c3202
	shll16 r5
	neg r5,r5

loc_8C0C3202:
	lds r5,fpul
	mova @(0x134,PC),r0
	fmov @r0,fr5
	mova @(0x134,PC),r0
	fmov @r0,fr4
	mov 0x34,r0
	float fpul,fr3
	fmov @(r0,r6),fr2
	mov.w @(0x118,PC),r2
	fmul fr5,fr3
	fdiv fr4,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r3
	mova @(0x120,PC),r0
	fmov @r0,fr2
	mova @(0x120,PC),r0
	extu.b r3,r3
	fmov @r0,fr1
	shll2 r3
	shll r3
	shll8 r3
	exts.w r3,r3
	neg r3,r3
	add r2,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r6),fr0
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr3,fr0
	fmov fr0,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r5
	extu.b r5,r5
	add 0xFF,r5
	cmp/pz r5
	bt loc_8c0c3254
	mov r7,r5

loc_8C0C3254:
	mov 0x16,r3
	mov.l @r15,r2
	shad r3,r5
	lds r5,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@r2
	mov r7,r0
	nop
	mov.l @(0xE0,PC),r2
	mov 0x17,r5
	mov.w r0,@(0x1C,r4)
	mov 0x00,r6
	jmp @r2
	add 0x04,r15

loc_8C0C3274:
	mov 0x31,r0
	mov.w @(0xB6,PC),r6
	mov 0xFE,r3
	mov.b r3,@(r0,r4)
	mov.w @(0xAC,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c0c3286
	mov.w @(0xAA,PC),r6

loc_8C0C3286:
	exts.w r6,r6
	mov.w @(0x9E,PC),r0
	lds r6,fpul
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	mova @(0xA8,PC),r0
	fmov @r0,fr2
	mova @(0xB0,PC),r0
	float fpul,fr3
	fmov @r0,fr1
	mov 0x34,r0
	mov r3,r6
	fmov @(r0,r5),fr0
	mov.l @(0xA8,PC),r3
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr3,fr0
	fmov fr0,@(r0,r4)
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr0
	fadd fr3,fr0
	fmov fr0,@(r0,r4)
	jmp @r3
	mov 0x17,r5

loc_8C0C32BA:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0C3334,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0C3354,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0C3334,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0C3336,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0C332A,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C3338,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0C3358,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	mov.l @(loc_8C0C335C,pc),r0 ; r0 set to 0x8C15B844
	extu.b r3,r3
	lds.l @r15+,pr
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C3328:
	#data 0x0088
loc_8C0C332A:
	#data 0x012c
loc_8C0C332c:
	#data 0x0130
loc_8C0C332e:
	#data 0x0800
loc_8C0C3330:
	#data 0x2000
loc_8C0C3332:
	#data 0xE000
loc_8C0C3334:
	#data 0x00Dc
loc_8C0C3336:
	#data 0x00C0
loc_8C0C3338:
	#data 0x01A3
	#align4

loc_8c0c333c:
	#data 0x3FD55555
loc_8c0c3340:
	#data 0x47800000
loc_8c0c3344:
	#data 0x40092492
loc_8c0c3348:
	#data 0x43800000
loc_8C0C334C:
	#data bank03.loc_8c034e8c
loc_8c0c3350:
	#data 0x43586DB6
loc_8C0C3354:
	#data bank12.loc_8c129560
loc_8C0C3358:
	#data bank12.loc_8c1294C8
loc_8C0C335C:
	#data bank15.loc_8c15b844

;==============================================
loc_8C0C3360:
	mov.l @(0x118,PC),r2
	mov 0x02,r6
	mov.b @r2,r3
	extu.b r3,r3
	cmp/gt r6,r3
	bt loc_8c0c3374
	mov.b @(0x7,r5),r0
	extu.b r0,r0
	cmp/gt r6,r0
	bf loc_8c0c337e

loc_8C0C3374:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x20,r0
	mov.w r0,@(0x1C,r4)

loc_8C0C337E:
	rts
	nop

;----------------------------------------------
loc_8C0C3382:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0c3394
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8C0C3394:
	rts
	nop

;----------------------------------------------
loc_8C0C3398:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r0
	mov r4,r14
	fldi0 fr3
	mov.w @(0xCC,PC),r4
	mov.l r5,@r15
	fmov @(r0,r14),fr4
	fcmp/gt fr4,fr3
	bf.s loc_8c0c33b2
	add r14,r4
	fneg fr4

loc_8C0C33B2:
	fmov @r4,fr3
	mov 0x5C,r1
	add r14,r1
	fadd fr4,fr3
	mov 0x34,r0
	fmov fr3,@r4
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x68,r1
	add r14,r1
	mov.l @(0xB8,PC),r4
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
	mov.w @(0x80,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0c340e
	mov 0x34,r0
	fmov @(r0,r14),fr3
	add 0x58,r0
	fmov @(r0,r4),fr2
	fsub fr3,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bt loc_8c0c341e
	bra loc_8c0c342c
	nop

loc_8C0C340E:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	add 0x54,r0
	fmov @(r0,r4),fr2
	fsub fr3,fr2
	fldi0 fr3
	fcmp/gt fr3,fr2
	bf loc_8c0c342c

loc_8C0C341E:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C342C:
	mov.l @(0x54,PC),r3
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x03,r0
	bf loc_8c0c3452
	mov r14,r5
	mov.l @(0x4C,PC),r2
	mov.w @(0x3A,PC),r7
	add 0x34,r5
	mov 0x01,r6
	jsr @r2
	mov.l @r15,r4
	mov r14,r4
	mov 0x49,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r3
	jmp @r3
	mov.l @r15+,r14


loc_8C0C3452:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C345A:
	mov.w @(loc_8C0C347A,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov r14,r4
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C0C3490,pc),r1 ; r1 set to 0x8C15B850
	extu.b r0,r0 ; r0 set to 0x2c
	shll2 r0 ; r0 set to 0xB0
	mov.l @(r0,r1),r3 ; r3 ??	
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c3474:
	#data 0x0088
loc_8c0c3476:
	#data 0x0130
loc_8c0c3478:
	#data 0x0089
loc_8C0C347A:
	#data 0x012c
	#align4

loc_8c0c347c:
	#data 0x8C2895F0
loc_8C0C3480:
	#data 0x8C26A518
loc_8C0C3484:
	#data 0x8C26823c
loc_8C0C3488:
	#data bank10.loc_8c10235c
loc_8C0C348C:
	#data bank04.loc_8c04223a
loc_8C0C3490:
	#data bank15.loc_8c15b850

;==============================================
loc_8C0C3494:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xA8,PC),r0
	mov 0x00,r3
	fmov fr15,@-r15
	mov.w @(0xA0,PC),r6
	sts.l pr,@-r15
	mov.l @(0x14,r14),r4
	mov.b r3,@(r0,r14)
	mov 0x02,r3
	mov.b @(0x4,r4),r0
	add r4,r6
	mov.w @(0x92,PC),r5
	extu.b r0,r0
	cmp/ge r3,r0
	bt.s loc_8c0c34d6
	add r14,r5
	fmov @r6,fr15
	fmov @r5,fr3
	fldi0 fr2
	fsub fr3,fr15
	fcmp/gt fr2,fr15
	bf loc_8c0c34ec               ; loc_8c0c34e0+0xc
	mova @(0x84,PC),r0
	fmov @r0,fr3
	fdiv fr3,fr15
	fcmp/gt fr15,fr2
	bf loc_8c0c34ce
	fldi0 fr15

loc_8C0C34CE:
	mova @(0x7C,PC),r0
	fmov @r0,fr3
	fcmp/gt fr3,fr15
	bf loc_8c0c34de

loc_8C0C34D6:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	bra loc_8c0c34f2              ; loc_8c0c34e0+0x12
	mov.b r0,@(0x4,r14)

loc_8C0C34DE:
	ftrc fr15,fpul
	mov.l @(0x6C,PC),r3
	mov 0x17,r5
	mov 0x00,r6
	sts fpul,r7
	jsr @r3
	mov r14,r4

loc_8C0C34EC:
	mov.w @(0x54,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8C0C34F2:
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C34FA:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x54,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c3512
	mov.l @r15,r3
	mov.b @(0x4,r3),r0
	add 0x01,r0
	mov.b r0,@(0x4,r3)

loc_8C0C3512:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0C351A:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0C3558,pc),r0 ; r0 set to 0x8C15B85c
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C0C352E:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C3544,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0C353C:
	mov.l @(loc_8C0C355C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C3542:
	#data 0x0088
loc_8C0C3544:
	#data 0x012c
	#align4

loc_8C0C3548:
	#data 0x41800000
loc_8C0C354c:
	#data 0x40400000
loc_8C0C3550:
	#data bank03.loc_8c034F54
loc_8C0C3554:
	#data bank03.loc_8c034dee
loc_8C0C3558:
	#data bank15.loc_8c15b85c
loc_8C0C355C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0C3560:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r12
	mov.l @(0x16C,PC),r9
	mov.w @(0x15C,PC),r10
	mov 0x00,r4
	mov r4,r14
	mov 0x08,r13
	mov.l r5,@r15
	mov r4,r11

loc_8C0C3580:
	mov 0x03,r5
	mov 0x01,r6
	jsr @r9
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0c35bc
	mov r0,r4
	mov 0x26,r0
	mov.l @(0x150,PC),r2
	mov.l r2,@(0x10,r4)
	mov r14,r2
	mov.w r10,@(r0,r4)
	mov 0x20,r0
	mov.l @r15,r3
	shar r2
	mov.b r3,@(r0,r4)
	mov 0x01,r3
	mov 0x21,r0
	tst r14,r3
	mov.b r2,@(r0,r4)
	bt loc_8c0c35b4
	mov.b @(r0,r4),r2
	mov r0,r3
	add 0x5F,r3
	or r3,r2
	mov.b r2,@(r0,r4)

loc_8C0C35B4:
	add 0x01,r11
	mov.l r12,@(0x14,r4)
	mov.l @(0x18,r12),r3
	mov.l r3,@(0x18,r4)

loc_8C0C35BC:
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c0c3580
	mov r11,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C35D8:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0C36E8,pc),r1 ; r1 set to 0x8C15B8B0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0C35EA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0xE2,PC),r1
	sts.l pr,@-r15
	mov.w @(0xE0,PC),r0
	add r14,r1
	mov.l @(0xF0,PC),r3
	mov.w @(0xD8,PC),r2
	mov.l @(0x14,r14),r4
	jsr @r3
	add r4,r2
	mov.w @(0xD4,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x1,r4),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xB8,PC),r0
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r4),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.b @(r0,r4),r3
	mov r4,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(0xB8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r4),r2
	mov.b r2,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x24,r0
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b @(r0,r4),r2
	add 0xFC,r2
	mov.b r2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r5
	mov.l @(0x98,PC),r0
	extu.b r5,r5
	shll2 r5
	mov.l @(r0,r5),r5
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bt.s loc_8c0c367c
	mov 0x08,r13
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov 0x7F,r3
	add 0x04,r5
	and r3,r2
	mov.b r2,@(r0,r14)
	mov 0x0C,r13

loc_8C0C367C:
	mov 0x21,r0
	mov r4,r2
	mov.b @(r0,r14),r1
	add 0x34,r2
	mov.l @(0x68,PC),r3
	extu.b r1,r1
	shll2 r1
	shll r1
	add r1,r5
	mov r14,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @r5+,r3
	mov 0x34,r0
	mov.l @(0x5C,PC),r1
	mov r14,r4
	lds r3,fpul
	fmov @(r0,r14),fr2
	float fpul,fr3
	lds r1,fpul
	mov.l @(0x54,PC),r1
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	mov.w @r5,r3
	mov 0x17,r5
	fmov @(r0,r14),fr2
	lds r3,fpul
	mov.l @(0x44,PC),r3
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r6
	lds.l @r15+,pr
	shll r6
	add r13,r6
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c36d4:
	#data 0x0c00
loc_8c0c36d6:
	#data 0x00dc
loc_8c0c36d8:
	#data 0x00c0
loc_8c0c36da:
	#data 0x012c
loc_8c0c36dc:
	#data 0x01a3
	#align4

loc_8C0C36E0:
	#data bank04.loc_8c044F12
loc_8C0C36E4:
	#data loc_8c0c35D8
loc_8C0C36E8:
	#data bank15.loc_8c15b8B0
loc_8C0C36EC:
	#data bank12.loc_8c129560
loc_8C0C36F0:
	#data bank12.loc_8c1294C8
loc_8C0C36F4:
	#data bank15.loc_8c15b8A8
loc_8C0C36F8:
	#data 0x3FD55555
loc_8C0C36Fc:
	#data 0x40092492
loc_8C0C3700:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0C3704:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x24,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c3720
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xC,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0C3720:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C3726:
	mov.l @(loc_8C0C3734,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c372c:
	#data 0x012c
	#align4

loc_8C0C3730:
	#data bank03.loc_8c034dee
loc_8C0C3734:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0C3738:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x13C,PC),r3
	mov 0x03,r5
	mov.l r4,@r15
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0c375c
	mov r0,r4
	mov.w @(0x116,PC),r3
	mov 0x26,r0
	mov.l @(0x12C,PC),r2
	mov.w r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)

loc_8C0C375C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C3764:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0C3884,pc),r1 ; r1 set to 0x8C15B8Bc
	extu.b r0,r0
	mov.w @(loc_8C0C386A,pc),r5 ; r5 set to 0xCc
	shll2 r0
	mov.l @(0x18,r14),r6
	mov.l @(r0,r1),r3
	add r14,r5 ; r5 ??? bc r14 is ???	
	jmp @r3
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C377C:
	mov.w @(loc_8C0C386C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0C3888,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0C386C,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C386E,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r6,r2 ; r2 ??? bc r6 is ???	
	mov.w @(loc_8C0C3870,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x02,r6),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r6),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r6),fr3 ; r3 ??? bc r6 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r6),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C3872,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r6),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r6),r2 ; r2 ??? bc r6 is ???	
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r6),r3
	mov r6,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C388C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r6),r2
	mov 0x00,r6 ; r6 set to 0x00
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0C3870,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	lds.l @r15+,pr
	rts
	mov.b r6,@r5

;----------------------------------------------
loc_8C0C37DE:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r6,r13
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r3
	mov r4,r14
	mov 0xFC,r2 ; r2 set to 0xFFFFFFFc
	mov r5,r12
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0C3874,pc),r0 ; r0 set to 0x130
	mov.w @(loc_8C0C3876,pc),r2 ; r2 set to 0x150
	mov.w @(r0,r13),r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w r3,@(r0,r14)
	mov.b @(0x01,r2),r0
	tst r0,r0
	bt/s loc_8C0C383c
	mov.l r0,@r15
	mov.w @(loc_8C0C3870,pc),r0 ; r0 set to 0x12c
	mov r13,r2
	mov.l @(loc_8C0C388C,pc),r3 ; r3 set to 0x8C1294C8
	mov r14,r1
	mov 0x01,r4 ; r4 set to 0x01
	add 0x34,r2
	mov.b r4,@(r0,r14)
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0C3878,pc),r0 ; r0 set to 0x141
	mov 0x17,r5 ; r5 set to 0x17
	mov.b r4,@r12
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov.l @r15,r6
	mov.b @(r0,r13),r7
	add 0x26,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0C3890,pc),r3 ; r3 set to 0x8C034F54
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0c383c:
	mov.b @r12,r3
	tst r3,r3
	bt loc_8c0c3856
	mov.l @(loc_8c0c3894,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c3856
	mov.w @(loc_8c0c3870,pc),r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov.b r4,@r12

loc_8c0c3856:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0C3862:
	mov.l @(loc_8C0C3898,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C3868:
	#data 0x0C01
loc_8C0C386A:
	#data 0x00Cc
loc_8C0C386C:
	#data 0x00Dc
loc_8C0C386E:
	#data 0x00C0
loc_8C0C3870:
	#data 0x012c
loc_8C0C3872:
	#data 0x01A3
loc_8C0C3874:
	#data 0x0130
loc_8C0C3876:
	#data 0x0150
loc_8C0C3878:
	#data 0x0141
	#align4

loc_8C0C387C:
	#data bank04.loc_8c044F12
loc_8C0C3880:
	#data loc_8c0c3764
loc_8C0C3884:
	#data bank15.loc_8c15b8Bc
loc_8C0C3888:
	#data bank12.loc_8c129560
loc_8C0C388C:
	#data bank12.loc_8c1294C8
loc_8C0C3890:
	#data bank03.loc_8c034F54
loc_8C0C3894:
	#data bank03.loc_8c034dee
loc_8C0C3898:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0C389C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C0C39A4,pc),r2 ; r2 set to 0x8C287AE8
	mov r5,r14
	mov.l r4,@r15
	mov.l r6,@(0x04,r15)
	mov.w @r2,r3
	cmp/gt r14,r3
	bt/s loc_8C0C38Be
	mov r7,r12
	bra loc_8C0C390e
	mov 0x00,r0

loc_8c0c38be:
	mov 0x0C,r4
	cmp/gt r4,r14
	bf/s loc_8c0c38c8
	mov 0x00,r13
	mov r4,r14

loc_8c0c38c8:
	mov.w @(loc_8C0C399E,pc),r11
	cmp/pl r14
	mov.l @(loc_8c0c39a8,pc),r10
	bf loc_8c0c390a

loc_8c0c38d0:
	mov 0x03,r5
	mov 0x01,r6
	jsr @r10
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0c38fe
	mov r0,r4
	mov 0x26,r0
	mov.w r11,@(r0,r4)
	mov 0x23,r0
	mov.b r13,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x04,r15),r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b r12,@(r0,r4)
	mov r14,r0
	nop
	mov.l @(loc_8c0c39ac,pc),r3
	mov.w r0,@(0x1E,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c0c38fe:
	tst r12,r12
	bt/s loc_8c0c3906
	add 0x01,r13
	add 0xFF,r12

loc_8c0c3906:
	cmp/ge r14,r13
	bf loc_8c0c38d0

loc_8c0c390a:
	mov r13,r0
	nop

loc_8C0C390E:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C391E:
	mov.l r14,@-r15
	mov 0x23,r0 ; r0 set to 0x23
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C0C393c
	mov.l @(0x18,r14),r5
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0C39B0,pc),r1 ; r1 set to 0x8C15BA78
	extu.b r0,r0 ; r0 set to 0x23
	shll2 r0 ; r0 set to 0x8c
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0C393C:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C3940:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8C0C39A0,pc),r12 ; r12 set to 0x2A4
	bsr loc_8C0C3A6e
	add r13,r12 ; r12 ??? bc r13 is ???	
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x24,r0 ; r0 set to 0x24
	fmov.s @(r0,r12),fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x28,r0 ; r0 set to 0x28
	fmov.s @(r0,r12),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0C39B4,pc),r0 ; r0 set to 0x8C15BA70
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mov.w @(loc_8C0C39A2,pc),r0 ; r0 set to 0x1B0
	mov.l r2,@(r0,r14)
	bsr loc_8C0C3DFe
	mov r14,r4
	mov r13,r5
	bsr loc_8C0C3D58
	mov r14,r4
	mov r13,r5
	bsr loc_8C0C3BDc
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0C3B4e
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c399e:
	#data 0x0C02
loc_8C0C39A0:
	#data 0x02A4
loc_8C0C39A2:
	#data 0x01B0
	#align4

loc_8C0C39A4:
	#data 0x8C287AE8
loc_8C0C39A8:
	#data bank04.loc_8c044F12
loc_8C0C39AC:
	#data loc_8c0c391e
loc_8C0C39B0:
	#data bank15.loc_8c15ba78
loc_8C0C39B4:
	#data bank15.loc_8c15ba70

;==============================================
loc_8C0C39B8:
	mov.l r14,@-r15
	mov r5,r14
	mov.l @(0x144,PC),r5
	mov 0x3C,r0
	mov.l r13,@-r15
	mov 0x01,r1
	sts.l pr,@-r15
	mov.w @(r0,r5),r3
	mov 0x3B,r0
	mov.b @(r0,r5),r2
	mov r4,r13
	mov.w @(0x124,PC),r4
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf.s loc_8c0c3a2a
	add r14,r4
	mov.w @(0x118,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0c39f6
	mov.b @(0x7,r4),r0
	cmp/eq 0x02,r0
	bt.s loc_8c0c39f6
	mov r0,r5
	mov r5,r0
	nop
	cmp/eq 0xFF,r0
	bf loc_8c0c3a06

loc_8C0C39F6:
	mov 0x02,r0
	mov r13,r4
	mov.b r0,@(0x4,r13)
	mov r14,r5
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0c3a32
	mov.l @r15+,r14

loc_8C0C3A06:
	mov 0x24,r0
	mov r14,r5
	mov.b @(r0,r14),r2
	mov 0x08,r3
	mov.b r2,@(r0,r13)
	mov 0x31,r0
	mov.b r3,@(r0,r13)
	bsr loc_8c0c3d58
	mov r13,r4
	mov r14,r5
	bsr loc_8c0c3bdc
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r4
	mov r14,r5
	mov.l @r15+,r13
	bra loc_8c0c3b4e              ; loc_8c0c397c+0x1d2
	mov.l @r15+,r14

loc_8C0C3A2A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C3A32:
	mov.l r14,@-r15
	mov 0x01,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r13),r0
	mov.l @(0xC0,PC),r10
	mov r0,r12
	cmp/ge r12,r14
	bt.s loc_8c0c3a5c
	mov 0x00,r11

loc_8C0C3A4E:
	mov.w @(0xA8,PC),r0
	mov.l @(0xC,r13),r4
	jsr @r10
	mov.b r11,@(r0,r4)
	add 0x01,r14
	cmp/ge r12,r14
	bf loc_8c0c3a4e

loc_8C0C3A5C:
	jsr @r10
	mov r13,r4
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C3A6E:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov 0x08,r7 ; r7 set to 0x08
	mov.l r12,@-r15
	mov 0x00,r5 ; r5 set to 0x00
	sts.l pr,@-r15
	mov.w @(0x1E,r4),r0
	mov r0,r6
	cmp/pl r6
	bf/s loc_8C0C3B22
	mov 0x01,r12 ; r12 set to 0x01

loc_8C0C3A86:
	mov.w @(loc_8C0C3AFC,pc),r1 ; r1 set to 0xDc
	mov r4,r13
	mov.w @(loc_8C0C3AFC,pc),r2 ; r2 set to 0xDc
	mov.w @(loc_8C0C3AFE,pc),r0 ; r0 set to 0xC0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0C3B0C,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r14,r2 ; r2 ??? bc r14 is ???	
	mov.w @(loc_8C0C3AFA,pc),r0 ; r0 set to 0x12c
	mov r13,r1
	add 0x50,r1
	mov.b r12,@(r0,r4)
	mov.b @(0x02,r14),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r14),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C3B00,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r14),r3
	mov r14,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C3B10,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r13,r1
	mov.b @(r0,r14),r2
	add 0x34,r1
	mov.b r2,@(r0,r4)
	mov r14,r2
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	add 0x34,r2
	mov.b r3,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov.l @(loc_8C0C3B10,pc),r3 ; r3 set to 0x8C1294C8
	mov.b r7,@(r0,r4)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r1
	tst r1,r1
	bt loc_8C0C3B14
	bra loc_8C0C3B16
	mov 0x01,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
oc_8C0C3AF6:
	#data 0x02A4
oc_8C0C3AF8:
	#data 0x01E9
loc_8C0C3AFA:
	#data 0x012c
loc_8C0C3AFC:
	#data 0x00Dc
loc_8C0C3AFE:
	#data 0x00C0
loc_8C0C3B00:
	#data 0x01A3
	#align4

loc_8C0C3B04:
	#data 0x8C2895F0
loc_8C0C3B08:
	#data bank04.loc_8c0450C0
loc_8C0C3B0C:
	#data bank12.loc_8c129560
loc_8C0C3B10:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0c3b14:
	mov 0x00,r2

loc_8c0c3b16:
	mov.w @(loc_8c0c3c58,pc),r0
	add 0x01,r5
	cmp/ge r6,r5
	mov.b r2,@(r0,r4)
	bf/s loc_8c0c3a86
	mov.l @(0x0C,r4),r4

loc_8C0C3B22:
	mov.l @(loc_8C0C3C60,pc),r2 ; r2 set to 0x8C052618
	mov r13,r5
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0C3C58,pc),r0 ; r0 set to 0x12c
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r12,@(r0,r13)
	add 0x2E,r0 ; r0 set to 0x15a
	mov.b r3,@(r0,r13)
	add 0x6E,r0 ; r0 set to 0x1C8
	mov.l @(r0,r13),r2 ; r2 ??? bc r13 is ???	
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???	
	mov 0xFE,r2 ; r2 set to 0xFFFFFFFe
	mov.b r3,@(r0,r13)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r13)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c3b4e:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r4
	mov.l r12,@-r15
	mov r4,r12
	mov.l r11,@-r15
	mov r4,r11
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	mov.l @(loc_8c0c3c64,pc),r10
	mov r0,r9
	add 0xFF,r9
	cmp/pl r9
	mov r0,r5
	bf/s loc_8c0c3baa
	mov 0x01,r13

loc_8c0c3b76:
	mov 0x23,r0
	mov.b @(r0,r14),r8
	mov 0x17,r5
	mov.l @(loc_8c0c3c68,pc),r0
	extu.b r8,r8
	mov.b @(r0,r8),r8
	mov 0x22,r0
	mov.b @(r0,r14),r7
	extu.b r8,r8
	add 0x10,r8
	mov r8,r6
	extu.b r7,r7
	jsr @r10
	mov r14,r4
	mov.w @(loc_8c0c3c58,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0c3ba2
	tst r11,r11
	bf loc_8c0c3ba2
	mov r13,r11
	mov.b r13,@(r0,r14)

loc_8c0c3ba2:
	add 0x01,r12
	cmp/ge r9,r12
	bf/s loc_8c0c3b76
	mov.l @(0x0C,r14),r14

loc_8c0c3baa:
	mov 0x22,r0
	mov.b @(r0,r14),r0
	mov 0x1F,r7
	mov 0x0F,r5
	extu.b r0,r0
	add 0x02,r0
	and r0,r7
	shar r7
	mov 0x0A,r6
	shar r7
	jsr @r10
	mov r14,r4
	lds.l @r15+,pr
	mov.w @(loc_8C0C3C5A,pc),r0
	mov r14,r4
	mov.l @(loc_8c0c3c6c,pc),r3
	mov.l @r15+,r8
	mov.l @(r0,r14),r5
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0c3bdc:
	mov 0x22,r0
	mov.l @(0x90,PC),r6
	mov.w @(0x78,PC),r7
	mov.l r13,@-r15
	mov.b @(r0,r4),r1
	mova @(0x8C,PC),r0
	fmov @r0,fr5
	mova @(0x8C,PC),r0
	extu.b r1,r1
	fmov @r0,fr4
	shll2 r1
	mov.w @(0x68,PC),r0
	shll r1
	add r6,r1
	add 0x04,r1
	mov.w @r1+,r3
	add r5,r7
	lds r3,fpul
	mov.w @r1,r3
	float fpul,fr3
	lds r3,fpul
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr6
	float fpul,fr3
	fmul fr5,fr6
	fmov fr3,fr7
	bt.s loc_8c0c3c18
	fmul fr4,fr7
	fneg fr6

loc_8c0c3c18:
	mov 0x24,r0
	fmov @(r0,r7),fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fsub fr6,fr2
	fmov fr2,@(r0,r4)
	mov 0x28,r0
	fmov @(r0,r7),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mov 0x01,r7
	fadd fr3,fr2
	fsub fr7,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov r0,r13
	add 0xFF,r13
	cmp/ge r13,r7
	mov r0,r5
	bt.s loc_8c0c3ce4
	fldi0 fr8

loc_8c0c3c44:
	mov.w @(0x10,PC),r0
	mov.l @(0xC,r4),r5
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c0c3c7c
	fmov fr8,fr10
	fmov fr8,fr6
	fmov fr8,fr9
	bra loc_8c0c3cc8
	fmov fr8,fr7

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c3c58:
	#data 0x012C
loc_8C0C3C5A:
	#data 0x01C8
loc_8C0C3C5C:
	#data 0x02A4
loc_8C0C3C5e:
	#data 0x0130
	#align4

loc_8c0c3c60:
	#data bank05.loc_8C052618
loc_8c0c3c64:
	#data bank03.loc_8c034f54
loc_8c0c3c68:
	#data bank15.loc_8c15b9e8
loc_8c0c3c6c:
	#data bank04.loc_8c04cc1c
loc_8c0c3c70:
	#data bank15.loc_8C15B8C8
loc_8c0c3c74:
	#data work.CpsXScale
loc_8c0c3c78:
	#data work.CpsYScale

;==============================================
loc_8c0c3c7c:
	mov 0x22,r0
	mov.b @(r0,r4),r1
	extu.b r1,r1
	shll2 r1
	shll r1
	add r6,r1
	mov.w @r1+,r3
	lds r3,fpul
	mov.w @r1,r3
	mov.b @(r0,r5),r1
	float fpul,fr3
	lds r3,fpul
	extu.b r1,r1
	mov.w @(0x146,PC),r0
	shll2 r1
	shll r1
	add r6,r1
	fmov fr3,fr6
	add 0x04,r1
	float fpul,fr3
	mov.w @r1+,r3
	fmul fr5,fr6
	lds r3,fpul
	mov.w @r1,r3
	fmov fr3,fr9
	float fpul,fr3
	lds r3,fpul
	fmul fr4,fr9
	fmov fr3,fr7
	float fpul,fr3
	fmul fr5,fr7
	fmov fr3,fr10
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0c3cc8
	fmul fr4,fr10
	fneg fr7
	fneg fr6

loc_8c0c3cc8:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	add 0x01,r7
	cmp/ge r13,r7
	fadd fr6,fr3
	fsub fr7,fr3
	fmov fr3,@(r0,r5)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr9,fr3
	fsub fr10,fr3
	fmov fr3,@(r0,r5)
	bf.s loc_8c0c3c44
	mov r5,r4

loc_8c0c3ce4:
	mov 0x22,r0
	mov.l @(0xC,r4),r5
	mov.b @(r0,r4),r2
	mov.b @(r0,r5),r0
	extu.b r2,r2
	fmov fr5,fr2
	shll2 r2
	shll r2
	add r2,r6
	mov.l @(0xEC,PC),r2
	mov.w @r6+,r3
	extu.b r0,r0
	add 0x02,r0
	lds r3,fpul
	mov.w @r6,r3
	mov 0x1F,r6
	and r0,r6
	float fpul,fr3
	shar r6
	shar r6
	lds r3,fpul
	shll r6
	shll r6
	add r2,r6
	fmov fr3,fr6
	float fpul,fr3
	mov.w @r6+,r3
	fmul fr5,fr6
	lds r3,fpul
	fmov fr3,fr7
	fmul fr4,fr7
	float fpul,fr3
	mov.w @r6,r3
	fmov fr3,fr5
	fmul fr2,fr5
	lds r3,fpul
	mov.w @(0xB0,PC),r0
	fmov fr4,fr2
	float fpul,fr3
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr4
	bt.s loc_8c0c3d40
	fmul fr2,fr4
	fneg fr5
	fneg fr6

loc_8c0c3d40:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr6,fr3
	fsub fr5,fr3
	fmov fr3,@(r0,r5)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr7,fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r5)
	rts
	mov.l @r15+,r13

;----------------------------------------------
loc_8c0c3d58:
	mov 0x22,r0
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x01,r6
	sts.l pr,@-r15
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt.s loc_8c0c3dec
	mov r6,r13
	mov.w @(0x1C,r4),r0
	mov r6,r7
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1E,r4),r0
	mov r0,r14
	cmp/ge r14,r7
	mova @(0x68,PC),r0
	bt.s loc_8c0c3df2             ; loc_8c0c3d58+0x9a
	fmov @r0,fr4

loc_8c0c3d82:
	mov.l @(0xC,r4),r6
	mov 0x64,r1
	mov 0x60,r0
	add r6,r1
	fmov @(r0,r6),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r6)
	mov 0x6C,r0
	fmov fr2,fr3
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf.s loc_8c0c3da8
	fmov fr2,@(r0,r6)
	fmov @(r0,r6),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r6)

loc_8c0c3da8:
	fmov @(r0,r6),fr3
	fcmp/gt fr3,fr4
	bt loc_8c0c3db4
	fmov @(r0,r6),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r6)

loc_8c0c3db4:
	fmov @(r0,r6),fr3
	mov 0x22,r2
	add r5,r2
	ftrc fr3,fpul
	mov.b @r2,r2
	mov 0x22,r1
	add 0x01,r7
	add r6,r1
	sts fpul,r0
	extu.b r0,r0
	add 0x04,r0
	shar r0
	shar r0
	shar r0
	cmp/ge r14,r7
	add r2,r0
	and 0x1F,r0
	mov.b r0,@r1
	bf.s loc_8c0c3d82
	mov r6,r4
	bra loc_8c0c3df2              ; loc_8c0c3d58+0x9a
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c3de0:
	#data 0x0130
	#align4

loc_8c0c3de4:
	#data bank15.loc_8C15B9C8
loc_8c0c3de8:
	#data 0x43800000

;==============================================
loc_8c0c3dec:
	bsr loc_8c0c3dfe
	nop
	mov r0,r13

loc_8c0c3df2:
	mov r13,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c3dfe:
	mov.w @(0xC8,PC),r0
	mov.l @(r0,r4),r6
	mov.l @r6+,r5
	tst r5,r5
	bf.s loc_8c0c3e10
	mov 0x01,r7
	add 0xF8,r6
	mov.l @r6+,r5
	mov 0x00,r7

loc_8c0c3e10:
	mov.l r6,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	mov.w @r5+,r3
	lds r3,fpul
	float fpul,fr3
	fmov fr3,@(r0,r4)
	mov 0x6C,r0
	mov.w @r5,r3
	fmov @(r0,r4),fr3
	mov 0x68,r0
	lds r3,fpul
	fmov @(r0,r4),fr2
	mov 0x70,r0
	fsub fr3,fr2
	float fpul,fr3
	fmul fr3,fr2
	fldi0 fr3
	fmov fr2,@(r0,r4)
	mova @(0x8C,PC),r0
	fmov @r0,fr4
	mov 0x70,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bf loc_8c0c3e4e
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)

loc_8c0c3e4e:
	mov.w @r5+,r3
	fmov @(r0,r4),fr2
	lds r3,fpul
	mov.l @(0x78,PC),r1
	float fpul,fr3
	lds r1,fpul
	mov 0x01,r1
	fmul fr3,fr2
	fsts fpul,fr3
	fmov fr2,@(r0,r4)
	fdiv fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @r5,r0
	fldi0 fr2
	mov.w r0,@(0x1C,r4)
	mov 0x6C,r0
	fmov fr2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov r0,r6
	cmp/ge r6,r1
	bt loc_8c0c3ec6

loc_8c0c3e78:
	mov.l @(0xC,r4),r5
	mov 0x60,r0
	fmov @(r0,r5),fr3
	mov 0x6C,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x70,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r5)
	mov.w @(0x1C,r4),r0
	mov.w r0,@(0x1C,r5)
	mov.w @(0x1C,r4),r0
	mov r0,r3
	lds r3,fpul
	mov 0x70,r0
	fmov @(r0,r4),fr2
	mov 0x64,r0
	float fpul,fr3
	fdiv fr3,fr2
	fldi0 fr3
	fmov fr2,@(r0,r5)
	mov 0x6C,r0
	fmov @(r0,r5),fr2
	fcmp/gt fr2,fr3
	bf loc_8c0c3eb2
	fmov @(r0,r5),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r5)

loc_8c0c3eb2:
	fmov @(r0,r5),fr3
	fcmp/gt fr3,fr4
	bt.s loc_8c0c3ec0
	mov r5,r4
	fmov @(r0,r5),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r5)

loc_8c0c3ec0:
	add 0x01,r1
	cmp/ge r6,r1
	bf loc_8c0c3e78

loc_8c0c3ec6:
	rts
	mov r7,r0

;----------------------------------------------
loc_8c0c3eca:
	#data 0x01B0
	#align4

loc_8c0c3ecc:
	#data 0x43800000
loc_8c0c3ed0:
	#data 0x41400000

;==============================================
;unused
loc_8c0c3ed4:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x118,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x03,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0c3f00
	mov r0,r4
	mov.w @(0xF2,PC),r3
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r2
	mov.l @(0x100,PC),r3
	mov.b r2,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c0c3f00:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8C0C3F08:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0C3FFC,pc),r0 ; r0 set to 0x8C15BA84
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0C3F1E:
	mov r4,r3
	mov.l @(loc_8C0C4000,pc),r1 ; r1 set to 0x8C15BA94
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0C3F30:
	mov.w @(loc_8C0C3FE4,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.w @(loc_8C0C3FE6,pc),r0 ; r0 set to 0xC0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.w @(loc_8C0C3FE4,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C0C4004,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0C3FE8,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C3FEA,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C4008,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x07,r3 ; r3 set to 0x07
	mov 0x00,r6 ; r6 set to 0x00
	mov.b r2,@(r0,r4)
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x04,r4)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C3FEC,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr3
	mov 0x38,r0 ; r0 set to 0x38
	mov 0x17,r5 ; r5 set to 0x17
	fmov.s fr3,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C400C,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8C0C3FA4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x60,PC),r3
	jsr @r3
	mov r5,r13
	mov.w @(0x38,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x12,r0
	bf loc_8c0c3fd0
	mov.w @(0x30,PC),r0
	mov 0x02,r3
	mov.b @(r0,r13),r2
	extu.b r2,r2
	cmp/gt r3,r2
	bt loc_8c0c3fd0
	mov.w @(0x26,PC),r0
	mov.b @(r0,r13),r0
	tst r3,r0
	bt loc_8c0c3fda

loc_8C0C3FD0:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0xE,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0C3FDA:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c3fe2:
	#data 0x0c03
loc_8C0C3FE4:
	#data 0x00Dc
loc_8C0C3FE6:
	#data 0x00C0
loc_8C0C3FE8:
	#data 0x012c
loc_8C0C3FEA:
	#data 0x01A3
loc_8C0C3FEC:
	#data 0x041c
loc_8c0c3fee:
	#data 0x0159
loc_8c0c3ff0:
	#data 0x0158
loc_8c0c3ff2:
	#data 0x0141
	#align4

loc_8C0C3FF4:
	#data bank04.loc_8c044F12
loc_8C0C3FF8:
	#data loc_8c0c3F08
loc_8C0C3FFC:
	#data bank15.loc_8c15ba84
loc_8C0C4000:
	#data bank15.loc_8c15ba94
loc_8C0C4004:
	#data bank12.loc_8c129560
loc_8C0C4008:
	#data bank12.loc_8c1294C8
loc_8C0C400C:
	#data bank03.loc_8c034e8c
loc_8C0C4010:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0C4014:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xDE,PC),r4
	mov 0x39,r0
	add r5,r4
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0c4038
	mov.w @(0xD4,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x13,r0
	bf loc_8c0c4038
	mov.w @(0xCC,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0c4042

loc_8C0C4038:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0xBE,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0C4042:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0xC4,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0C4052:
	mov.w @(loc_8C0C4102,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.w @(loc_8C0C4104,pc),r0 ; r0 set to 0xC0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.w @(loc_8C0C4102,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C0C4110,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0C4100,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C4106,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C4114,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r4,r1
	mov.b @(r0,r5),r2
	mov 0x07,r3 ; r3 set to 0x07
	add 0x34,r1
	mov.b r2,@(r0,r4)
	mov r5,r2
	mov.b @(0x04,r4),r0
	add 0x34,r2
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x04,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C4114,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mova @(loc_8C0C4118,pc),r0  ; r0 set to 0x8C0C4118
	mov.l @(loc_8C0C4120,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s @r0,fr3 ; r3 ??	
	mov 0x5C,r0 ; r0 set to 0x5c
	mov 0x17,r5 ; r5 set to 0x17
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0C411C,pc),r0  ; r0 set to 0x8C0C411c
	fmov.s @r0,fr3
	mov 0x68,r0 ; r0 set to 0x68
	mov 0x16,r6 ; r6 set to 0x16
	fmov.s fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C0C40D6:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0C4128
	mov.w @(loc_8C0C4108,pc),r0 ; r0 set to 0x14b
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8C0C4192
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0C4124,pc),r3 ; r3 set to 0x8C034DEe
	add 0x01,r0 ; r0 set to 0x14c
	mov.b r0,@(0x05,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C40FA:
	#data 0x02A4
loc_8C0C40FC:
	#data 0x0159
loc_8C0C40FE:
	#data 0x0158
loc_8C0C4100:
	#data 0x012c
loc_8C0C4102:
	#data 0x00Dc
loc_8C0C4104:
	#data 0x00C0
loc_8C0C4106:
	#data 0x01A3
loc_8C0C4108:
	#data 0x014b
	#align4

loc_8C0C410C:
	#data bank15.loc_8c15baA0
loc_8C0C4110:
	#data bank12.loc_8c129560
loc_8C0C4114:
	#data bank12.loc_8c1294C8
loc_8C0C4118:
	#data 0x3E555555
loc_8C0C411C:
	#data 0xBC555555
loc_8C0C4120:
	#data bank03.loc_8c034e8c
loc_8C0C4124:
	#data bank03.loc_8c034dee

;==============================================
loc_8c0c4128:
	mov.l @(loc_8c0c4258,pc),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	mov 0x34,r0
	add r14,r1
	fmov.s @(r0,r14),fr4
	fmov.s @r1,fr3
	mov 0x68,r1
	fmov fr4,fr2
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c0c4176
	fneg fr4

loc_8c0c4176:
	mova @(loc_8C0C425C,pc),r0
	fmov.s @r0,fr3
	fcmp/gt fr4,fr3
	bt loc_8c0c4192
	mov 0x68,r0
	fmov.s @(r0,r14),fr2
	fneg fr2
	fmov.s fr2,@(r0,r14)
	fldi1 fr2
	fadd fr2,fr2
	fmov.s @(r0,r14),fr1
	mov 0x5C,r0
	fmul fr2,fr1
	fmov.s fr1,@(r0,r14)

loc_8C0C4192:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C4198:
	mov r4,r3
	mov.l @(loc_8C0C4260,pc),r1 ; r1 set to 0x8C15BAAc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C41AA:
	mov.l r14,@-r15
	mov.w @(0x9E,PC),r1
	sts.l pr,@-r15
	mov.w @(0x9C,PC),r0
	add r4,r1
	mov.w @(0x96,PC),r2
	mov.l @(0xAC,PC),r3
	jsr @r3
	add r5,r2
	mov.w @(0x92,PC),r0
	mov 0x01,r2
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x76,PC),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(0x74,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov r4,r1
	mov.b @(r0,r5),r2
	mov 0x00,r6
	mov.l @(0x68,PC),r3
	add 0x34,r1
	mov.b r2,@(r0,r4)
	mov r5,r2
	mov.b @(0x4,r4),r0
	add 0x34,r2
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x24,r0
	mov.b r6,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x3C,PC),r0
	mov.b @(r0,r4),r2
	mov 0x21,r0
	mov.b r2,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r5),r14
	mov.w @(0x30,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0c4240
	extu.b r14,r14
	mov.l @(0x3C,PC),r1
	mov 0x34,r0
	fmov @(r0,r4),fr2
	add 0x03,r14
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x16,PC),r0
	mov.w r6,@(r0,r4)

loc_8C0C4240:
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r3
	mov r14,r6
	add 0x1A,r6
	mov 0x17,r5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c424e:
	#data 0x00dc
loc_8c0c4250:
	#data 0x00c0
loc_8c0c4252:
	#data 0x012c
loc_8c0c4254:
	#data 0x01a3
loc_8c0c4256:
	#data 0x0130
	#align4

loc_8C0C4258:
	#data bank03.loc_8c034dee
loc_8c0c425c:
	#data 0x3EE60000
loc_8C0C4260:
	#data bank15.loc_8c15baAc
loc_8C0C4264:
	#data bank12.loc_8c129560
loc_8C0C4268:
	#data bank12.loc_8c1294C8
loc_8C0C426c:
	#data 0x43855555
loc_8C0C4270:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0C4274:
	sts.l pr,@-r15
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf.s loc_8c0c42b4
	mov 0x02,r6
	mov.w @(0x10A,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0c42b4               ; loc_8c0c4250+0x64
	mov r5,r2
	mov.l @(0x110,PC),r3
	mov r4,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x21,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c0c42ac
	mov.l @(0x100,PC),r1
	mov 0x34,r0
	fmov @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C0C42AC:
	mov.w @(0xDE,PC),r0
	mov.b @(r0,r5),r3
	tst r6,r3
	bt loc_8c0c42c0               ; loc_8c0c4250+0x70

loc_8C0C42B4:
	mov r6,r0
	nop
	mov.b r0,@(0x4,r4)
	mov 0x00,r3
	mov.w @(0xD0,PC),r0
	mov.b r3,@(r0,r4)

loc_8C0C42C0:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0C42C6:
	mov r4,r3
	mov.l @(loc_8C0C43A4,pc),r1 ; r1 set to 0x8C15BAB8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C42D8:
	mov.w @(0xB6,PC),r1
	sts.l pr,@-r15
	mov.w @(0xB4,PC),r0
	add r4,r1
	mov.w @(0xAE,PC),r2
	mov.l @(0xC4,PC),r3
	jsr @r3
	add r5,r2
	mov.w @(0xA4,PC),r0
	mov 0x01,r2
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x8C,PC),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	fldi0 fr4
	mov.b @(r0,r5),r2
	mov 0x00,r3
	mov.b r2,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mova @(0x64,PC),r0
	fmov @r0,fr4
	mov.w @(0x42,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c0c436e
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mova @(0x4C,PC),r0
	fmov @r0,fr4

loc_8C0C436E:
	mov 0x34,r0
	mov.l @(0x4C,PC),r3
	fmov @(r0,r5),fr3
	mov 0x15,r6
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mova @(0x40,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mov 0x17,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c438c:
	#data 0x01d0
loc_8c0c438e:
	#data 0x0141
loc_8c0c4390:
	#data 0x012c
loc_8c0c4392:
	#data 0x00dc
loc_8c0c4394:
	#data 0x00c0
loc_8c0c4396:
	#data 0x01a3
loc_8c0c4398:
	#data 0x0130
	#align4

loc_8C0C439C:
	#data bank12.loc_8c1294C8
loc_8C0C43A0:
	#data 0x43855555
loc_8C0C43A4:
	#data bank15.loc_8c15baB8
loc_8C0C43A8:
	#data bank12.loc_8c129560
loc_8C0C43AC:
	#data 0x41A00000
loc_8C0C43B0:
	#data 0xBF4DB6Db
loc_8C0C43b4:
	#data 0x42D55555
loc_8C0C43b8:
	#data 0xC2D55555
loc_8C0C43bc:
	#data 0x42D64924
loc_8C0C43C0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0C43C4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(loc_8C0C4470,pc),r4 ; r4 set to 0x8C2895F0
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.l r5,@r15
	mov.w @(r0,r4),r3
	mov 0x3B,r0 ; r0 set to 0x3b
	mov.b @(r0,r4),r2
	mov 0x01,r1 ; r1 set to 0x01
	extu.w r3,r3
	extu.b r2,r2
	shad r2, r1 ; r1 ??? bc r2 is ???	
	tst r1,r3
	bf loc_8C0C445e
	mov.l @(loc_8C0C4474,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???	
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C0C43Fc
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0C446C,pc),r0 ; r0 set to 0x12c
	bra loc_8C0C445e
	mov.b r3,@(r0,r14)

loc_8c0c43fc:
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0C446E,pc),r0
	mov.l @r15,r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c0c445e
	mov.w @(loc_8C0C446E,pc),r0
	mov.l @r15,r2
	fldi0 fr4
	fmov.s @(r0,r2),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14)
	mov 0x5C,r0
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0
	fmov.s fr4,@(r0,r14)

loc_8C0C445E:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C4466:
	mov.l @(loc_8C0C4478,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C446C:
	#data 0x012c
loc_8c0c446e:
	#data 0x041c
	#align4

loc_8C0C4470:
	#data 0x8C2895F0
loc_8C0C4474:
	#data bank03.loc_8c034dee
loc_8C0C4478:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0c447c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xD4,PC),r2
	mov r5,r13
	mov.l r4,@r15
	mov.l r6,@(0x4,r15)
	mov.w @r2,r3
	cmp/gt r13,r3
	bt loc_8c0c449c
	bra loc_8c0c44ea
	mov 0x00,r0

loc_8c0c449c:
	mov 0x0C,r4
	cmp/gt r4,r13
	bf.s loc_8c0c44a6
	mov 0x00,r14
	mov r4,r13

loc_8c0c44a6:
	mov.w @(0xB2,PC),r12
	cmp/pl r13
	mov.l @(0xB8,PC),r11
	bf loc_8c0c44e4

loc_8c0c44ae:
	mov 0x03,r5
	mov 0x01,r6
	jsr @r11
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0c44de
	mov r0,r4
	mov 0x26,r0
	mov.w r12,@(r0,r4)
	mov 0x23,r0
	mov.b r14,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r3
	mov.b r3,@(r0,r4)
	mov r13,r0
	nop
	mov.l @(0x98,PC),r3
	tst r14,r14
	mov.w r0,@(0x1E,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	bf.s loc_8c0c44de
	mov.l r2,@(0x18,r4)
	mov r4,r10

loc_8c0c44de:
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c0c44ae

loc_8c0c44e4:
	mov.l r4,@(0x14,r10)
	mov r14,r0
	nop

loc_8c0c44ea:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C44FA:
	mov.l r14,@-r15
	mov 0x23,r0 ; r0 set to 0x23
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C0C4518
	mov.l @(0x18,r14),r5
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0C456C,pc),r1 ; r1 set to 0x8C15BAF0
	extu.b r0,r0 ; r0 set to 0x23
	shll2 r0 ; r0 set to 0x8c
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0C4518:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C451C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8C0C46D0
	mov r5,r13
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0C4570,pc),r3 ; r3 set to 0x8C15BAD4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0C455E,pc),r0 ; r0 set to 0x1B0
	mov.l r3,@(r0,r14)
	mov.l @(loc_8C0C4574,pc),r3 ; r3 set to 0x8C0C3DFe
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0C4578,pc),r2 ; r2 set to 0x8C0C3D58
	mov r13,r5
	jsr @r2
	mov r14,r4
	mov r13,r5
	mov 0x00,r6 ; r6 set to 0x00
	bsr loc_8C0C4762
	mov r14,r4
	mov r13,r5
	bsr loc_8C0C4878
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0C47E8
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C455c:
	#data 0x0C04
loc_8C0C455E:
	#data 0x01B0
	#align4

loc_8C0C4560:
	#data 0x8C287AE8
loc_8C0C4564:
	#data bank04.loc_8c044F12
loc_8C0C4568:
	#data loc_8c0c44Fa
loc_8C0C456C:
	#data bank15.loc_8c15baF0
loc_8C0C4570:
	#data bank15.loc_8c15baD4
loc_8C0C4574:
	#data loc_8c0c3DFe
loc_8C0C4578:
	#data loc_8c0c3D58

;==============================================
loc_8C0C457C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.w @(0xF8,PC),r12
	sts.l pr,@-r15
	mov.b @(0x5,r13),r0
	add r13,r12
	tst r0,r0
	bf.s loc_8c0c45a8
	mov 0x02,r4
	mov.w @(0xEC,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0c45a8
	mov.w @(0xE4,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_8c0c45bc

loc_8C0C45A8:
	mov r4,r0
	nop
	mov r13,r5
	mov.b r0,@(0x4,r14)
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0c4694
	mov.l @r15+,r14

loc_8C0C45BC:
	mov.l @(0xCC,PC),r5
	mov 0x3C,r0
	mov 0x01,r1
	mov.w @(r0,r5),r2
	mov 0x3B,r0
	mov.b @(r0,r5),r3
	extu.w r2,r2
	extu.b r3,r3
	shad r3,r1
	tst r1,r2
	bf loc_8c0c4678
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c0c45e6
	cmp/eq 0x01,r0
	bt loc_8c0c4608
	cmp/eq 0x02,r0
	bt loc_8c0c462a
	bra loc_8c0c4678
	nop

loc_8C0C45E6:
	mov r13,r5
	mov 0x00,r6
	bsr loc_8c0c4762
	mov r14,r4
	mov r13,r5
	bsr loc_8c0c4878            ; loc_8c0c4870+0x8
	mov r14,r4
	mov r13,r5
	bsr loc_8c0c47e8
	mov r14,r4
	mov.b @(0x5,r12),r0
	tst r0,r0
	bt loc_8c0c4678
	mov.b @(0x5,r14),r0
	add 0x01,r0
	bra loc_8c0c4678
	mov.b r0,@(0x5,r14)

loc_8C0C4608:
	mov r13,r5
	bsr loc_8c0c4a80
	mov r14,r4
	mov r13,r5
	bsr loc_8c0c47e8
	mov r14,r4
	mov.b @(0x5,r12),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0c4678
	mov.b @(0x5,r14),r0
	mov 0x10,r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x21,r0
	bra loc_8c0c4678
	mov.b r3,@(r0,r14)

loc_8C0C462A:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	extu.b r3,r3
	tst r3,r3
	bf loc_8c0c4654
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)
	mov r13,r5
	mov.w @(0x44,PC),r0
	mov 0x00,r3
	mov 0x02,r6
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0c4762
	mov.l @r15+,r14

loc_8C0C4654:
	mov r13,r5
	mov 0x01,r6
	bsr loc_8c0c4762
	mov r14,r4
	mov.l @(0x30,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	mov r13,r5
	bsr loc_8c0c4968
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0c47e8
	mov.l @r15+,r14

loc_8C0C4678:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c4682:
	#data 0x02a4
loc_8c0c4684:
	#data 0x01d0
loc_8c0c4686:
	#data 0x0159
loc_8c0c4688:
	#data 0x012c
	#align4

loc_8c0c468c:
	#data 0x8C2895F0
loc_8C0C4690:
	#data loc_8c0c3D58

;==============================================
loc_8C0C4694:
	mov.l r14,@-r15
	mov 0x01,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r13),r0
	mov.l @(0x120,PC),r10
	mov r0,r12
	cmp/ge r12,r14
	bt.s loc_8c0c46be
	mov 0x00,r11

loc_8C0C46B0:
	mov.w @(0x10A,PC),r0
	mov.l @(0xC,r13),r4
	jsr @r10
	mov.b r11,@(r0,r4)
	add 0x01,r14
	cmp/ge r12,r14
	bf loc_8c0c46b0

loc_8C0C46BE:
	jsr @r10
	mov r13,r4
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c46d0:
	mov.l r14,@-r15
	mov 0x00,r6
	mov.l r13,@-r15
	mov r6,r7
	mov.l r12,@-r15
	mov 0x08,r12
	sts.l pr,@-r15
	mov.w @(0x1E,r4),r0
	mov r0,r14
	cmp/pl r14
	bf/s loc_8c0c4758
	mov 0x01,r13

loc_8c0c46e8:
	mov.w @(loc_8C0C47C0,pc),r1
	mov.w @(loc_8C0C47C2,pc),r0
	mov.l @(loc_8c0c47cc,pc),r3
	add r4,r1
	mov.w @(loc_8C0C47C0,pc),r2
	jsr @r3
	add r5,r2
	mov.w @(loc_8c0c47be,pc),r0
	mov r4,r1
	add 0x50,r1
	mov.b r13,@(r0,r4)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C47C4,pc),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c0c47d0,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov r4,r1
	mov.b @(r0,r5),r2
	add 0x34,r1
	mov.b r2,@(r0,r4)
	mov r5,r2
	mov.w @(loc_8c0c47be,pc),r0
	add 0x34,r2
	mov.b r6,@(r0,r4)
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mov 0x31,r0
	mov.l @(loc_8c0c47d0,pc),r3
	mov.b r12,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	add 0x01,r7
	cmp/ge r14,r7
	bf/s loc_8c0c46e8
	mov.l @(0x0C,r4),r4

loc_8c0c4758:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0C4762:
	mov.l r14,@-r15
	mov.l r13,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0C47C6,pc),r3 ; r3 set to 0x2A4
	mov 0x00,r7 ; r7 set to 0x00
	mov.l @(loc_8C0C47D4,pc),r13 ; r13 set to 0x8C26823c
	add r5,r3 ; r3 ??? bc r5 is ???	
	mov.l r3,@r15
	mov.w @(0x1E,r4),r0
	mov r0,r14
	cmp/pl r14
	bf/s loc_8C0C47Ae
	mov r7,r5 ; r5 set to 0x00

loc_8C0C477C:
	tst r6,r6
	bf loc_8C0C478c
	mov.w @(loc_8C0C47BE,pc),r0 ; r0 set to 0x12c
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C0C47Ae
	bra loc_8C0C47A6
	nop

loc_8C0C478C:
	mov r6,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8C0C47A2
	mov.l @r13,r0
	mov.w @(loc_8C0C47BE,pc),r1 ; r1 set to 0x12c
	mov.l @(0x1C,r0),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	and 0x01,r0
	bra loc_8C0C47A6
	mov.b r0,@r1

loc_8c0c47a2:
	mov.w @(loc_8c0c47be,pc),r0
	mov.b r7,@(r0,r4)

loc_8c0c47a6:
	add 0x01,r5
	cmp/ge r14,r5
	bf/s loc_8c0c477c
	mov.l @(0x0C,r4),r4

loc_8C0C47AE:
	tst r6,r6
	bf loc_8C0C47E0
	cmp/ge r14,r5
	bt/s loc_8C0C47D8
	mov 0x01,r6 ; r6 set to 0x01
	mov.w @(loc_8C0C47BE,pc),r0 ; r0 set to 0x12c
	bra loc_8C0C47E0
	mov.b r6,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C47BE:
	#data 0x012c
loc_8c0c47c0:
	#data 0x00Dc
loc_8c0c47c2:
	#data 0x00C0
loc_8c0c47c4:
	#data 0x01A3
loc_8C0C47C6:
	#data 0x02A4
	#align4

loc_8C0C47C8:
	#data bank04.loc_8c0450C0
loc_8C0C47CC:
	#data bank12.loc_8c129560
loc_8C0C47D0:
	#data bank12.loc_8c1294C8
loc_8C0C47D4:
	#data 0x8C26823c

;==============================================
loc_8c0c47d8:
	mov.l @r15,r2
	mov r6,r0
	nop
	mov.b r0,@(0x05,r2)

loc_8C0C47E0:
	add 0x04,r15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14
;----------------------------------------------
loc_8c0c47e8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(loc_8C0C4868,pc),r3
	mov 0x01,r12
	mov.l @(loc_8c0c4870,pc),r9
	mov.l @(loc_8c0c486c,pc),r8
	add r5,r3
	mov.l r3,@r15
	mov.w @(0x1E,r14),r0
	mov r0,r10
	cmp/ge r10,r12
	bt loc_8c0c483c

loc_8c0c4810:
	mov.w @(loc_8C0C486A,pc),r0
	mov.l @(0x0C,r14),r13
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c0c483c
	mov 0x23,r0
	mov.b @(r0,r14),r0
	mov 0x17,r5
	extu.b r0,r0
	mov.b @(r0,r8),r11
	mov 0x22,r0
	mov.b @(r0,r14),r7
	extu.b r11,r11
	add 0x10,r11
	mov r11,r6
	extu.b r7,r7
	jsr @r9
	mov r14,r4
	add 0x01,r12
	cmp/ge r10,r12
	bf/s loc_8c0c4810
	mov r13,r14

loc_8c0c483c:
	mov.l @r15,r2
	mov 0x01,r3
	mov.b @(0x05,r2),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf/s loc_8c0c484c
	mov 0x13,r13
	add 0x01,r13

loc_8c0c484c:
	mov r14,r4
	mov 0x17,r5
	mov r13,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8c0c4874,pc),r3
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C4868:
	#data 0x02A4
loc_8C0C486A:
	#data 0x012C
	#align4

loc_8c0c486c:
	#data bank15.loc_8c15b9e8
loc_8c0c4870:
	#data bank03.loc_8c034f54
loc_8c0c4874:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c0c4878:
	mov 0x22,r0
	mov.l r14,@-r15
	mov.l @(0xDC,PC),r14
	mov.w @(0xD4,PC),r6
	mov.l r12,@-r15
	mov.b @(r0,r4),r7
	mova @(0xD8,PC),r0
	fmov @r0,fr5
	mova @(0xD8,PC),r0
	extu.b r7,r7
	fmov @r0,fr4
	shll2 r7
	mov.w @(0xC4,PC),r0
	add 0x02,r7
	shll r7
	add r14,r7
	mov.w @r7+,r3
	add r5,r6
	lds r3,fpul
	mov.w @r7,r3
	float fpul,fr3
	lds r3,fpul
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr6
	float fpul,fr3
	fmul fr5,fr6
	fmov fr3,fr7
	bt.s loc_8c0c48b6
	fmul fr4,fr7
	fneg fr6

loc_8c0c48b6:
	mov 0x24,r0
	fmov @(r0,r6),fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fsub fr6,fr2
	fmov fr2,@(r0,r4)
	mov 0x28,r0
	fmov @(r0,r6),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mov 0x01,r6
	fadd fr3,fr2
	fsub fr7,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov r0,r12
	cmp/ge r12,r6
	bt loc_8c0c4950

loc_8c0c48dc:
	mov.w @(0x7A,PC),r0
	mov.l @(0xC,r4),r5
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8c0c4950
	mov 0x22,r0
	mov r14,r1
	mov.b @(r0,r4),r7
	extu.b r7,r7
	shll2 r7
	shll r7
	add r14,r7
	mov.w @r7+,r3
	lds r3,fpul
	mov.w @r7,r3
	mov.b @(r0,r5),r7
	float fpul,fr3
	lds r3,fpul
	extu.b r7,r7
	shll2 r7
	add 0x02,r7
	shll r7
	fmov fr3,fr7
	float fpul,fr3
	add r1,r7
	fmul fr5,fr7
	mov.w @r7+,r3
	lds r3,fpul
	fmov fr3,fr8
	fmul fr4,fr8
	mov.w @r7,r3
	float fpul,fr3
	lds r3,fpul
	fmov fr3,fr6
	float fpul,fr3
	fmul fr5,fr6
	fmov fr3,fr9
	mov.w @(0x2E,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0c4934
	fmul fr4,fr9
	fneg fr6
	fneg fr7

loc_8c0c4934:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	add 0x01,r6
	cmp/ge r12,r6
	fadd fr7,fr3
	fsub fr6,fr3
	fmov fr3,@(r0,r5)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr8,fr3
	fsub fr9,fr3
	fmov fr3,@(r0,r5)
	bf.s loc_8c0c48dc
	mov r5,r4

loc_8c0c4950:
	mov.l @r15+,r12
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c4956:
	#data 0x02A4
loc_8c0c4958:
	#data 0x0130
loc_8c0c495a:
	#data 0x012C
	#align4

loc_8c0c495c:
	#data bank15.loc_8C15B8C8
loc_8c0c4960:
	#data 0x3FD55555
loc_8c0c4964:
	#data 0x40092492

;==============================================
loc_8c0c4968:
	mov.l r14,@-r15
	mov.l r12,@-r15
	add 0xFC,r15
	mov.l @(0x14,r4),r4
	mova @(0xF8,PC),r0
	fmov @r0,fr8
	mov 0x22,r0
	mov.l @(0x8,r4),r6
	mov.l @(0xF4,PC),r7
	mov.b @(r0,r6),r14
	mova @(0xF4,PC),r0
	fmov @r0,fr5
	mova @(0xF4,PC),r0
	extu.b r14,r14
	fmov @r0,fr4
	shll2 r14
	mov.w @(0xDE,PC),r0
	shll r14
	mov.w @(0xD8,PC),r12
	add r7,r14
	fldi0 fr7
	mov.w @r14+,r3
	add r5,r12
	lds r3,fpul
	mov.w @r14,r3
	float fpul,fr3
	lds r3,fpul
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr6
	float fpul,fr3
	fmul fr5,fr6
	fmov fr3,fr9
	bt.s loc_8c0c49b4
	fmul fr4,fr9
	mova @(0xCC,PC),r0
	fneg fr6
	fmov @r0,fr7

loc_8c0c49b4:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x01,r14
	fadd fr7,fr3
	fsub fr6,fr3
	fmov fr3,@(r0,r6)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr8,fr3
	fsub fr9,fr3
	fmov fr3,@(r0,r6)
	mov.w @(0x1E,r4),r0
	mov r0,r2
	add 0xFF,r2
	cmp/ge r2,r14
	bt.s loc_8c0c4a40
	mov.l r0,@r15

loc_8c0c49d6:
	mov 0x22,r0
	mov r6,r4
	mov.b @(r0,r4),r1
	mov.l @(0x8,r4),r6
	extu.b r1,r1
	shll2 r1
	add 0x02,r1
	shll r1
	add r7,r1
	mov.w @r1+,r3
	lds r3,fpul
	mov.w @r1,r3
	mov.b @(r0,r6),r1
	float fpul,fr3
	lds r3,fpul
	extu.b r1,r1
	shll2 r1
	shll r1
	add r7,r1
	fmov fr3,fr6
	float fpul,fr3
	mov.w @r1+,r3
	fmul fr5,fr6
	lds r3,fpul
	mov.w @r1,r3
	fmov fr3,fr8
	fmul fr4,fr8
	float fpul,fr3
	lds r3,fpul
	fmov fr3,fr7
	float fpul,fr3
	fmul fr5,fr7
	mov.w @(0x50,PC),r0
	fmov fr3,fr9
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0c4a26
	fmul fr4,fr9
	fneg fr7
	fneg fr6

loc_8c0c4a26:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	add 0x01,r14
	cmp/ge r2,r14
	fadd fr6,fr3
	fsub fr7,fr3
	fmov fr3,@(r0,r6)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr8,fr3
	fsub fr9,fr3
	bf.s loc_8c0c49d6
	fmov fr3,@(r0,r6)

loc_8c0c4a40:
	mov.b @(0x5,r12),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0c4a60
	mov 0x24,r0
	fmov @(r0,r12),fr3
	mov 0x34,r0
	fmov @(r0,r6),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x28,r0
	fmov @(r0,r12),fr3
	mov 0x38,r0
	fmov @(r0,r6),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r5)

loc_8c0c4a60:
	add 0x04,r15
	mov.l @r15+,r12
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c4a68:
	#data 0x02A4
loc_8c0c4a6a:
	#data 0x0130
	#align4

loc_8c0c4a6c:
	#data 0x41092492
loc_8c0c4a70:
	#data bank15.loc_8c15B8C8
loc_8c0c4a74:
	#data 0x3FD55555
loc_8c0c4a78:
	#data 0x40092492
loc_8c0c4a7c:
	#data 0x80000000

;==============================================
loc_8c0c4a80:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x8C,PC),r9
	mov r5,r12
	mov 0x24,r0
	mov.l @(0x14,r4),r14
	add r12,r9
	mov.l @(0x88,PC),r3
	fmov @(r0,r9),fr3
	mov 0x34,r0
	fmov @(r0,r12),fr2
	mov 0x28,r0
	mov r14,r5
	add 0x34,r5
	fadd fr3,fr2
	fmov fr2,@r15
	fmov @(r0,r9),fr3
	mov 0x38,r0
	fmov @(r0,r12),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov r0,r4
	mov.w @(0x60,PC),r0
	mov.b @(r0,r12),r2
	tst r2,r2
	bt loc_8c0c4ad2
	neg r4,r4

loc_8c0c4ad2:
	add 0x04,r4
	mov.l @(0x60,PC),r10
	extu.b r4,r4
	fldi0 fr13
	shlr2 r4
	mov 0x22,r0
	shlr r4
	mov.b r4,@(r0,r14)
	mov 0x01,r11
	mov.w @(0x1E,r14),r0
	mov r0,r8
	mova @(0x48,PC),r0
	fmov @r0,fr12
	mova @(0x4C,PC),r0
	fmov @r0,fr14
	cmp/ge r8,r11
	mova @(0x4C,PC),r0
	bt.s loc_8c0c4bae
	fmov @r0,fr15

loc_8c0c4af8:
	mov.l @(0x34,PC),r2
	mov r14,r5
	mov.l @(0x8,r14),r13
	add 0x34,r5
	jsr @r2
	mov r15,r4
	mov r0,r4
	mov.w @(0x22,PC),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bt loc_8c0c4b10
	neg r4,r4

loc_8c0c4b10:
	add 0x04,r4
	extu.b r4,r4
	shlr2 r4
	mov 0x22,r0
	shlr r4
	mov.b r4,@(r0,r13)
	mov r11,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c0c4b44
	fmov fr13,fr4
	bra loc_8c0c4b66
	fmov fr12,fr6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c4b2a:
	#data 0x02A4
loc_8c0c4b2c:
	#data 0x01D2
	#align4

loc_8c0c4b30:
	#data bank03.loc_8C03362C
loc_8c0c4b34:
	#data 0x41092492
loc_8c0c4b38:
	#data bank15.loc_8C15B8C8
loc_8c0c4b3c:
	#data 0x40092492
loc_8c0c4b40:
	#data 0x3FD55555

;==============================================
loc_8c0c4b44:
	mov 0x22,r0
	mov.b @(r0,r14),r4
	extu.b r4,r4
	shll2 r4
	add 0x02,r4
	shll r4
	add r10,r4
	mov.w @r4+,r3
	lds r3,fpul
	mov.w @r4,r3
	float fpul,fr3
	lds r3,fpul
	fmov fr3,fr4
	float fpul,fr3
	fmul fr15,fr4
	fmov fr3,fr6
	fmul fr14,fr6

loc_8c0c4b66:
	mov 0x22,r0
	mov.b @(r0,r13),r4
	mov.w @(0xAE,PC),r0
	extu.b r4,r4
	shll2 r4
	shll r4
	add r10,r4
	mov.w @r4+,r3
	lds r3,fpul
	mov.w @r4,r3
	float fpul,fr3
	lds r3,fpul
	mov.w @(r0,r13),r3
	tst r3,r3
	fmov fr3,fr5
	float fpul,fr3
	fmul fr15,fr5
	fmov fr3,fr7
	bt.s loc_8c0c4b92
	fmul fr14,fr7
	fneg fr5
	fneg fr4

loc_8c0c4b92:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	add 0x01,r11
	cmp/ge r8,r11
	fadd fr4,fr3
	fsub fr5,fr3
	fmov fr3,@(r0,r13)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fadd fr6,fr3
	fsub fr7,fr3
	fmov fr3,@(r0,r13)
	bf.s loc_8c0c4af8
	mov r13,r14

loc_8c0c4bae:
	mov 0x22,r0
	mov.b @(r0,r14),r4
	mov.w @(0x66,PC),r0
	extu.b r4,r4
	shll2 r4
	add 0x02,r4
	shll r4
	add r10,r4
	mov.w @r4+,r3
	lds r3,fpul
	mov.w @r4,r3
	float fpul,fr3
	lds r3,fpul
	mov.w @(r0,r14),r3
	tst r3,r3
	fmov fr3,fr4
	float fpul,fr3
	fmul fr15,fr4
	fmov fr3,fr5
	bt.s loc_8c0c4bda
	fmul fr14,fr5
	fneg fr4

loc_8c0c4bda:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x24,r0
	fmov @(r0,r9),fr2
	mov 0x34,r0
	fadd fr4,fr3
	fsub fr2,fr3
	fmov fr3,@(r0,r12)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov 0x28,r0
	fmov @(r0,r9),fr2
	mov 0x38,r0
	fadd fr5,fr3
	fsub fr2,fr3
	fmov fr3,@(r0,r12)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r12)
	add 0x0C,r15
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c4c1c:
	#data 0x0130
	#align4

;==============================================
;unused
loc_8c0c4c20:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x114,PC),r2
	mov r5,r14
	mov.l r4,@r15
	mov.l r6,@(0x4,r15)
	mov.w @r2,r3
	cmp/gt r14,r3
	bt loc_8c0c4c3e
	bra loc_8c0c4c84
	mov 0x00,r0

loc_8c0c4c3e:
	mov 0x0C,r4
	cmp/gt r4,r14
	bf.s loc_8c0c4c48
	mov 0x00,r13
	mov r4,r14

loc_8c0c4c48:
	mov.w @(0xEC,PC),r12
	cmp/pl r14
	mov.l @(0xF8,PC),r11
	bf loc_8c0c4c80

loc_8c0c4c50:
	mov 0x03,r5
	mov 0x01,r6
	jsr @r11
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0c4c7a
	mov r0,r4
	mov 0x26,r0
	mov.w r12,@(r0,r4)
	mov 0x23,r0
	mov.b r13,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r3
	mov.b r3,@(r0,r4)
	mov r14,r0
	nop
	mov.l @(0xD8,PC),r3
	mov.w r0,@(0x1E,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c0c4c7a:
	add 0x01,r13
	cmp/ge r14,r13
	bf loc_8c0c4c50

loc_8c0c4c80:
	mov r13,r0
	nop

loc_8c0c4c84:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c4c92:
	mov.l r14,@-r15
	mov 0x23,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(0x18,r14),r5
	mov.w @(0x9A,PC),r4
	tst r3,r3
	bf.s loc_8c0c4cda
	add r5,r4
	mov.w @(0x94,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c0c4cc6
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf loc_8c0c4cc6
	mov.w @(0x86,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0c4cc6
	mov 0x38,r0
	mov.b @(r0,r4),r0
	cmp/eq 0xFF,r0
	bf loc_8c0c4cca

loc_8c0c4cc6:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)

loc_8c0c4cca:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0x80,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c0c4cda:
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0C4CDE:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8C0C4D3A,pc),r12 ; r12 set to 0x2A4
	bsr loc_8C0C4DF8
	add r13,r12 ; r12 ??? bc r13 is ???	
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x24,r0 ; r0 set to 0x24
	fmov.s @(r0,r12),fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x28,r0 ; r0 set to 0x28
	fmov.s @(r0,r12),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0C4D54,pc),r0 ; r0 set to 0x8C15BB18
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mov.w @(loc_8C0C4D40,pc),r0 ; r0 set to 0x1B0
	mov.l @(loc_8C0C4D58,pc),r3 ; r3 set to 0x8C0C3DFe
	mov.l r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov r13,r5
	bsr loc_8C0C4F34
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0C4EB0
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c4d38:
	#data 0x0C05
loc_8C0C4D3A:
	#data 0x02A4
loc_8C0C4D3c:
	#data 0x01E9
loc_8C0C4D3e:
	#data 0x01D0
loc_8C0C4D40:
	#data 0x01B0
	#align4

loc_8c0c4d44:
	#data 0x8C287AE8
loc_8C0C4D48:
	#data bank04.loc_8c044F12
loc_8C0C4D4C:
	#data loc_8c0c4C92
loc_8C0C4D50:
	#data bank15.loc_8c15bb20
loc_8C0C4D54:
	#data bank15.loc_8c15bb18
loc_8C0C4D58:
	#data loc_8c0c3DFe

;==============================================
loc_8C0C4D5C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x124,PC),r3
	mov r5,r14
	mov r4,r13
	mov.l @(0x12C,PC),r4
	add r14,r3
	mov 0x3C,r0
	mov.l r3,@r15
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	mov 0x01,r1
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c0c4db2
	mov.l @(0x114,PC),r3
	mov r14,r5
	jsr @r3
	mov r13,r4
	mov r14,r5
	bsr loc_8c0c4f34
	mov r13,r4
	mov r14,r5
	bsr loc_8c0c4eb0
	mov r13,r4
	mov.l @r15,r4
	mov 0x38,r0
	mov.b @(r0,r4),r4
	mov r4,r0
	nop
	cmp/eq 0x02,r0
	bt loc_8c0c4dae
	mov r4,r0
	nop
	cmp/eq 0xFF,r0
	bf loc_8c0c4db2

loc_8C0C4DAE:
	mov 0x02,r0
	mov.b r0,@(0x4,r13)

loc_8C0C4DB2:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C4DBC:
	mov.l r14,@-r15
	mov 0x01,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r13),r0
	mov.l @(0xD0,PC),r10
	mov r0,r12
	cmp/ge r12,r14
	bt.s loc_8c0c4de6
	mov 0x00,r11

loc_8C0C4DD8:
	mov.w @(0xB2,PC),r0
	mov.l @(0xC,r13),r4
	jsr @r10
	mov.b r11,@(r0,r4)
	add 0x01,r14
	cmp/ge r12,r14
	bf loc_8c0c4dd8

loc_8C0C4DE6:
	jsr @r10
	mov r13,r4
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c4df8:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov 0x00,r5
	mov.l r12,@-r15
	mov 0x07,r12
	sts.l pr,@-r15
	mov.w @(0x1E,r4),r0
	mov r0,r6
	cmp/pl r6
	bf/s loc_8c0c4e74
	mov 0x01,r7

loc_8c0c4e10:
	mov.w @(loc_8C0C4E90,pc),r1
	mov r4,r13
	mov.w @(loc_8C0C4E90,pc),r2
	mov.w @(loc_8C0C4E92,pc),r0
	add r4,r1
	mov.l @(loc_8c0c4ea4,pc),r3
	jsr @r3
	add r14,r2
	mov.w @(loc_8C0C4E8E,pc),r0
	mov r13,r1
	add 0x50,r1
	mov.b r7,@(r0,r4)
	mov.b @(0x02,r14),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r14),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C4E94,pc),r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.b @(r0,r14),r3
	mov r14,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c0c4ea8,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(loc_8c0c4ea8,pc),r3
	mov r13,r1
	mov.b @(r0,r14),r2
	mov r14,r2
	add 0x34,r2
	add 0x34,r1
	mov.b r12,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	add 0x01,r5
	cmp/ge r6,r5
	bf/s loc_8c0c4e10
	mov.l @(0x0C,r4),r4

loc_8c0c4e74:
	mov.l @(loc_8c0c4eac,pc),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0C4E96,pc),r0
	mov 0xFF,r2
	mov.b r2,@(r0,r13)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C4E8c:
	#data 0x02A4
loc_8C0C4E8E:
	#data 0x012C
loc_8C0C4E90:
	#data 0x00DC
loc_8C0C4E92:
	#data 0x00C0
loc_8C0C4E94:
	#data 0x01A3
loc_8C0C4E96:
	#data 0x015A
	#align4

loc_8C0C4E98:
	#data 0x8C2895F0
loc_8c0c4e9c:
	#data loc_8C0C3D58
loc_8c0c4ea0:
	#data bank04.loc_8C0450C0
loc_8c0c4ea4:
	#data bank12.loc_8c129560
loc_8c0c4ea8:
	#data bank12.loc_8c1294c8
loc_8c0c4eac:
	#data bank05.loc_8c052618

;==============================================
loc_8c0c4eb0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	mov.l @(0x64,PC),r9
	mov r0,r10
	add 0xFF,r10
	mov.l @(0x60,PC),r12
	cmp/pl r10
	mov r0,r4
	bf.s loc_8c0c4ef4
	mov 0x00,r13

loc_8c0c4ed2:
	mov 0x23,r0
	mov.b @(r0,r14),r0
	mov 0x17,r5
	extu.b r0,r0
	mov.b @(r0,r9),r11
	mov 0x22,r0
	mov.b @(r0,r14),r7
	extu.b r11,r11
	add 0x10,r11
	mov r11,r6
	extu.b r7,r7
	jsr @r12
	mov r14,r4
	add 0x01,r13
	cmp/ge r10,r13
	bf.s loc_8c0c4ed2
	mov.l @(0xC,r14),r14

loc_8c0c4ef4:
	mov 0x22,r0
	mov.b @(r0,r14),r0
	mov 0x1F,r7
	mov 0x0F,r5
	extu.b r0,r0
	add 0x02,r0
	and r0,r7
	shar r7
	mov 0x0A,r6
	shar r7
	jsr @r12
	mov r14,r4
	lds.l @r15+,pr
	mov.w @(0x12,PC),r0
	mov r14,r4
	mov.l @(0x1C,PC),r3
	mov.l @r15+,r9
	mov.l @(r0,r14),r5
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c4f24:
	#data 0x01C8
	#align4

loc_8c0c4f28:
	#data bank15.loc_8C15B9E8
loc_8c0c4f2c:
	#data bank03.loc_8C034F54
loc_8c0c4f30:
	#data bank04.loc_8C04CC1C

;==============================================
loc_8c0c4f34:
	mov 0x22,r0
	mov.l @(0x140,PC),r6
	mov.b @(r0,r4),r7
	mova @(0x140,PC),r0
	fmov @r0,fr5
	mova @(0x140,PC),r0
	extu.b r7,r7
	fmov @r0,fr4
	shll2 r7
	mov.w @(0x12C,PC),r0
	add 0x02,r7
	mov.w @(0x126,PC),r1
	shll r7
	add r6,r7
	mov.w @r7+,r3
	add r5,r1
	lds r3,fpul
	mov.w @r7,r3
	float fpul,fr3
	lds r3,fpul
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr6
	float fpul,fr3
	fmul fr5,fr6
	fmov fr3,fr7
	bt.s loc_8c0c4f6e
	fmul fr4,fr7
	fneg fr6

loc_8c0c4f6e:
	mov 0x24,r0
	fmov @(r0,r1),fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	mov 0x01,r7
	fadd fr3,fr2
	fsub fr6,fr2
	fmov fr2,@(r0,r4)
	mov 0x28,r0
	fmov @(r0,r1),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fsub fr7,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov r0,r2
	add 0xFF,r2
	cmp/ge r2,r7
	bt.s loc_8c0c5002
	mov r0,r5

loc_8c0c4f98:
	mov 0x22,r0
	mov.l @(0xC,r4),r5
	mov.b @(r0,r4),r1
	extu.b r1,r1
	shll2 r1
	shll r1
	add r6,r1
	mov.w @r1+,r3
	lds r3,fpul
	mov.w @r1,r3
	mov.b @(r0,r5),r1
	float fpul,fr3
	lds r3,fpul
	extu.b r1,r1
	shll2 r1
	add 0x02,r1
	shll r1
	fmov fr3,fr7
	float fpul,fr3
	add r6,r1
	fmul fr5,fr7
	mov.w @r1+,r3
	lds r3,fpul
	fmov fr3,fr8
	fmul fr4,fr8
	mov.w @r1,r3
	float fpul,fr3
	lds r3,fpul
	fmov fr3,fr6
	float fpul,fr3
	fmul fr5,fr6
	fmov fr3,fr9
	mov.w @(0x9A,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0c4fe6
	fmul fr4,fr9
	fneg fr6
	fneg fr7

loc_8c0c4fe6:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	add 0x01,r7
	cmp/ge r2,r7
	fadd fr7,fr3
	fsub fr6,fr3
	fmov fr3,@(r0,r5)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr8,fr3
	fsub fr9,fr3
	fmov fr3,@(r0,r5)
	bf.s loc_8c0c4f98
	mov r5,r4

loc_8c0c5002:
	mov 0x22,r0
	mov.l @(0xC,r4),r5
	mov.b @(r0,r4),r2
	mov.b @(r0,r5),r0
	extu.b r2,r2
	fmov fr5,fr2
	shll2 r2
	shll r2
	add r2,r6
	mov.l @(0x6C,PC),r2
	mov.w @r6+,r3
	extu.b r0,r0
	add 0x02,r0
	lds r3,fpul
	mov.w @r6,r3
	mov 0x1F,r6
	and r0,r6
	float fpul,fr3
	shar r6
	shar r6
	lds r3,fpul
	shll r6
	shll r6
	add r2,r6
	fmov fr3,fr6
	float fpul,fr3
	mov.w @r6+,r3
	fmul fr5,fr6
	lds r3,fpul
	fmov fr3,fr7
	fmul fr4,fr7
	float fpul,fr3
	mov.w @r6,r3
	fmov fr3,fr5
	fmul fr2,fr5
	lds r3,fpul
	mov.w @(0x28,PC),r0
	fmov fr4,fr2
	float fpul,fr3
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr4
	bt.s loc_8c0c505e
	fmul fr2,fr4
	fneg fr5
	fneg fr6

loc_8c0c505e:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr6,fr3
	fsub fr5,fr3
	fmov fr3,@(r0,r5)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr7,fr3
	fsub fr4,fr3
	rts
	fmov fr3,@(r0,r5)

;----------------------------------------------
loc_8c0c5074:
	#data 0x02A4
loc_8c0c5076:
	#data 0x0130

loc_8c0c5078:
	#data bank15.loc_8c15B8C8
loc_8c0c507c:
	#data 0x3FD55555
loc_8c0c5080:
	#data 0x40092492
loc_8c0c5084:
	#data bank15.loc_8c15B9C8

;==============================================
;unused
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x118,PC),r2
	mov r5,r13
	mov.l r4,@r15
	mov.l r6,@(0x4,r15)
	mov.w @r2,r3
	cmp/gt r13,r3
	bt loc_8c0c50a8
	bra loc_8c0c50f6
	mov 0x00,r0

loc_8c0c50a8:
	mov 0x0C,r4
	cmp/gt r4,r13
	bf.s loc_8c0c50b2
	mov 0x00,r14
	mov r4,r13

loc_8c0c50b2:
	mov.w @(0xEC,PC),r12
	cmp/pl r13
	mov.l @(0xFC,PC),r11
	bf loc_8c0c50f0

loc_8c0c50ba:
	mov 0x03,r5
	mov 0x01,r6
	jsr @r11
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0c50ea
	mov r0,r4
	mov 0x26,r0
	mov.w r12,@(r0,r4)
	mov 0x23,r0
	mov.b r14,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r3
	mov.b r3,@(r0,r4)
	mov r13,r0
	nop
	mov.l @(0xDC,PC),r3
	tst r14,r14
	mov.w r0,@(0x1E,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	bf.s loc_8c0c50ea
	mov.l r2,@(0x18,r4)
	mov r4,r10

loc_8c0c50ea:
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c0c50ba

loc_8c0c50f0:
	mov.l r4,@(0x14,r10)
	mov r14,r0
	nop

loc_8c0c50f6:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0C5106:
	mov.l r14,@-r15
	mov 0x23,r0 ; r0 set to 0x23
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C0C5124
	mov.l @(0x18,r14),r5
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0C51BC,pc),r1 ; r1 set to 0x8C15BB58
	extu.b r0,r0 ; r0 set to 0x23
	shll2 r0 ; r0 set to 0x8c
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0C5124:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C5128:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8C0C52Ac
	mov r5,r13
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0C51C0,pc),r3 ; r3 set to 0x8C15BB3c
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0C51A4,pc),r0 ; r0 set to 0x1B0
	mov.l r3,@(r0,r14)
	mov.l @(loc_8C0C51C4,pc),r3 ; r3 set to 0x8C0C3DFe
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0C51C8,pc),r2 ; r2 set to 0x8C0C3D58
	mov r13,r5
	jsr @r2
	mov r14,r4
	mov r13,r5
	bsr loc_8C0C53D4
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0C5356
	mov.l @r15+,r14

;==============================================
loc_8C0C5164:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x36,PC),r3
	mov r5,r13
	mov r4,r14
	add r13,r3
	mov.l r3,@r15
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf.s loc_8c0c519a
	mov 0x02,r4
	mov.w @(0x26,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c0c519a
	mov.w @(0x1E,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bf loc_8c0c519a
	mov.w @(0x16,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c0c51cc

loc_8C0C519A:
	mov r4,r0
	nop
	bra loc_8c0c5226
	mov.b r0,@(0x4,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c51a2:
	#data 0x0c06
loc_8c0c51a4:
	#data 0x01b0
loc_8c0c51a6:
	#data 0x02a4
loc_8c0c51a8:
	#data 0x01d0
loc_8c0c51aa:
	#data 0x0159
loc_8c0c51ac:
	#data 0x0158
	#align4

loc_8C0C51B0:
	#data 0x8C287AE8
loc_8C0C51B4:
	#data bank04.loc_8c044F12
loc_8C0C51B8:
	#data loc_8c0c5106
loc_8C0C51BC:
	#data bank15.loc_8c15bb58
loc_8C0C51C0:
	#data bank15.loc_8c15bb3c
loc_8C0C51C4:
	#data loc_8c0c3DFe
loc_8C0C51C8:
	#data loc_8c0c3D58

;==============================================
loc_8C0C51CC:
	mov.l @(0xD0,PC),r5
	mov 0x3C,r0
	mov 0x01,r1
	mov.w @(r0,r5),r2
	mov 0x3B,r0
	mov.b @(r0,r5),r3
	extu.w r2,r2
	extu.b r3,r3
	shad r3,r1
	tst r1,r2
	bf loc_8c0c5256
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0c520c
	mov r13,r5
	bsr loc_8c0c55cc
	mov r14,r4
	mov r13,r5
	bsr loc_8c0c5356
	mov r14,r4
	mov.l @r15,r0
	mov 0x3A,r1
	mov.b @(r0,r1),r0
	cmp/eq 0xFF,r0
	bf loc_8c0c5256
	mov.b @(0x5,r14),r0
	mov 0x0A,r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x21,r0
	bra loc_8c0c5256
	mov.b r3,@(r0,r14)

loc_8C0C520C:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	extu.b r3,r3
	tst r3,r3
	bf loc_8c0c5234
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x76,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0C5226:
	mov r14,r4
	mov r13,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0c5260
	mov.l @r15+,r14

loc_8C0C5234:
	mov r13,r5
	bsr loc_8c0c5332
	mov r14,r4
	mov.l @(0x68,PC),r2
	mov r13,r5
	jsr @r2
	mov r14,r4
	mov r13,r5
	bsr loc_8c0c54b4
	mov r14,r4
	mov r14,r4
	mov r13,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0c5356
	mov.l @r15+,r14

loc_8C0C5256:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C5260:
	mov.l r14,@-r15
	mov 0x01,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r13),r0
	mov.l @(0x34,PC),r10
	mov r0,r12
	cmp/ge r12,r14
	bt.s loc_8c0c528a
	mov 0x00,r11

loc_8C0C527C:
	mov.w @(0x1C,PC),r0
	mov.l @(0xC,r13),r4
	jsr @r10
	mov.b r11,@(r0,r4)
	add 0x01,r14
	cmp/ge r12,r14
	bf loc_8c0c527c

loc_8C0C528A:
	jsr @r10
	mov r13,r4
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c529c:
	#data 0x012c
	#align4

loc_8C0C52A0:
	#data 0x8C2895F0
loc_8C0C52A4:
	#data loc_8c0c3D58
loc_8C0C52A8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0c52ac:
	mov.l r14,@-r15
	mov 0x00,r6
	mov.l r13,@-r15
	mov 0x08,r13
	sts.l pr,@-r15
	mov.w @(0x1E,r4),r0
	mov r0,r7
	cmp/pl r7
	bf/s loc_8c0c532a
	mov 0x01,r14

loc_8c0c52c0:
	mov.w @(loc_8C0C53B2,pc),r1
	mov.w @(loc_8C0C53B4,pc),r0
	mov.l @(loc_8c0c53bc,pc),r3
	add r4,r1
	mov.w @(loc_8C0C53B2,pc),r2
	jsr @r3
	add r5,r2
	mov.w @(loc_8C0C53B6,pc),r0
	mov r4,r1
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C53B8,pc),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c0c53c0,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov r4,r1
	mov.b @(r0,r5),r2
	add 0x34,r1
	mov.b r2,@(r0,r4)
	mov r5,r2
	mov.b @(r0,r5),r3
	add 0x34,r2
	mov.b r3,@(r0,r4)
	mov 0x31,r0
	mov.l @(loc_8c0c53c0,pc),r3
	mov.b r13,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	add 0x01,r6
	cmp/ge r7,r6
	bf/s loc_8c0c52c0
	mov.l @(0x0C,r4),r4

loc_8c0c532a:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c5332:
	mov.w @(0x1E,r4),r0
	mov.l @(0x8C,PC),r7
	mov r0,r6
	cmp/pl r6
	bf.s loc_8c0c5352
	mov 0x00,r5

loc_8c0c533e:
	mov.l @r7,r0
	add 0x01,r5
	mov.w @(0x70,PC),r1
	cmp/ge r6,r5
	mov.l @(0x1C,r0),r0
	add r4,r1
	and 0x01,r0
	mov.b r0,@r1
	bf.s loc_8c0c533e
	mov.l @(0xC,r4),r4

loc_8c0c5352:
	rts
	nop

;----------------------------------------------
loc_8c0c5356:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	mov.l @(0x5C,PC),r9
	mov r0,r12
	add 0xFF,r12
	mov.l @(0x5C,PC),r10
	cmp/pl r12
	mov r0,r4
	bf.s loc_8c0c539a
	mov 0x00,r13

loc_8c0c5378:
	mov 0x23,r0
	mov.b @(r0,r14),r0
	mov 0x17,r5
	extu.b r0,r0
	mov.b @(r0,r9),r11
	mov 0x22,r0
	mov.b @(r0,r14),r7
	extu.b r11,r11
	add 0x10,r11
	mov r11,r6
	extu.b r7,r7
	jsr @r10
	mov r14,r4
	add 0x01,r13
	cmp/ge r12,r13
	bf.s loc_8c0c5378
	mov.l @(0xC,r14),r14

loc_8c0c539a:
	lds.l @r15+,pr
	mov.l @(0x30,PC),r2
	mov 0x14,r6
	mov r14,r4
	mov 0x17,r5
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C53B2:
	#data 0x00DC
loc_8C0C53B4:
	#data 0x00C0
loc_8C0C53B6:
	#data 0x012C
loc_8C0C53B8:
	#data 0x01A3
	#align4

loc_8c0c53bc:
	#data bank12.loc_8c129560
loc_8c0c53c0:
	#data bank12.loc_8c1294c8
loc_8c0c53c4:
	#data 0x8C26823C
loc_8c0c53c8:
	#data bank15.loc_8c15B9E8
loc_8c0c53cc:
	#data bank03.loc_8c034F54
loc_8c0c53d0:
	#data bank03.loc_8c034E8C

;==============================================
loc_8c0c53d4:
	mov 0x22,r0
	mov.l @(0xD0,PC),r6
	mov.b @(r0,r4),r1
	mova @(0xD0,PC),r0
	fmov @r0,fr5
	mova @(0xD0,PC),r0
	extu.b r1,r1
	fmov @r0,fr4
	shll2 r1
	mov.w @(0xBA,PC),r0
	add 0x02,r1
	mov.w @(0xB4,PC),r7
	shll r1
	add r6,r1
	mov.w @r1+,r3
	add r5,r7
	lds r3,fpul
	mov.w @r1,r3
	float fpul,fr3
	lds r3,fpul
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr6
	float fpul,fr3
	fmul fr5,fr6
	fmov fr3,fr7
	bt.s loc_8c0c540e
	fmul fr4,fr7
	fneg fr6

loc_8c0c540e:
	mov 0x24,r0
	fmov @(r0,r7),fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fsub fr6,fr2
	fmov fr2,@(r0,r4)
	mov 0x28,r0
	fmov @(r0,r7),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mov 0x01,r7
	fadd fr3,fr2
	fsub fr7,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov r0,r2
	cmp/ge r2,r7
	bt loc_8c0c549e

loc_8c0c5434:
	mov 0x22,r0
	mov.l @(0xC,r4),r5
	mov.b @(r0,r4),r1
	extu.b r1,r1
	shll2 r1
	shll r1
	add r6,r1
	mov.w @r1+,r3
	lds r3,fpul
	mov.w @r1,r3
	mov.b @(r0,r5),r1
	float fpul,fr3
	lds r3,fpul
	extu.b r1,r1
	shll2 r1
	add 0x02,r1
	shll r1
	fmov fr3,fr6
	float fpul,fr3
	add r6,r1
	fmul fr5,fr6
	mov.w @r1+,r3
	lds r3,fpul
	fmov fr3,fr8
	fmul fr4,fr8
	mov.w @r1,r3
	float fpul,fr3
	lds r3,fpul
	fmov fr3,fr7
	float fpul,fr3
	fmul fr5,fr7
	fmov fr3,fr9
	mov.w @(0x2C,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0c5482
	fmul fr4,fr9
	fneg fr7
	fneg fr6

loc_8c0c5482:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	add 0x01,r7
	cmp/ge r2,r7
	fadd fr6,fr3
	fsub fr7,fr3
	fmov fr3,@(r0,r5)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr8,fr3
	fsub fr9,fr3
	fmov fr3,@(r0,r5)
	bf.s loc_8c0c5434
	mov r5,r4

loc_8c0c549e:
	rts
	nop

;----------------------------------------------
loc_8c0c54a2:
	#data 0x02A4
loc_8c0c54a4:
	#data 0x0130
	#align4

loc_8c0c54a8:
	#data bank15.loc_8c15B8C8
loc_8c0c54ac:
	#data 0x3FD55555
loc_8c0c54b0:
	#data 0x40092492

;==============================================
loc_8c0c54b4:
	mov.l r14,@-r15
	mov.l r12,@-r15
	add 0xFC,r15
	mov.l @(0x14,r4),r4
	mova @(0xF8,PC),r0
	fmov @r0,fr8
	mov 0x22,r0
	mov.l @(0x8,r4),r6
	mov.l @(0xF4,PC),r7
	mov.b @(r0,r6),r14
	mova @(0xF4,PC),r0
	fmov @r0,fr5
	mova @(0xF4,PC),r0
	extu.b r14,r14
	fmov @r0,fr4
	shll2 r14
	mov.w @(0xDE,PC),r0
	shll r14
	mov.w @(0xD8,PC),r12
	add r7,r14
	fldi0 fr7
	mov.w @r14+,r3
	add r5,r12
	lds r3,fpul
	mov.w @r14,r3
	float fpul,fr3
	lds r3,fpul
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr6
	float fpul,fr3
	fmul fr5,fr6
	fmov fr3,fr9
	bt.s loc_8c0c5500
	fmul fr4,fr9
	mova @(0xCC,PC),r0
	fneg fr6
	fmov @r0,fr7

loc_8c0c5500:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x01,r14
	fadd fr7,fr3
	fsub fr6,fr3
	fmov fr3,@(r0,r6)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr8,fr3
	fsub fr9,fr3
	fmov fr3,@(r0,r6)
	mov.w @(0x1E,r4),r0
	mov r0,r2
	add 0xFF,r2
	cmp/ge r2,r14
	bt.s loc_8c0c558c
	mov.l r0,@r15

loc_8c0c5522:
	mov 0x22,r0
	mov r6,r4
	mov.b @(r0,r4),r1
	mov.l @(0x8,r4),r6
	extu.b r1,r1
	shll2 r1
	add 0x02,r1
	shll r1
	add r7,r1
	mov.w @r1+,r3
	lds r3,fpul
	mov.w @r1,r3
	mov.b @(r0,r6),r1
	float fpul,fr3
	lds r3,fpul
	extu.b r1,r1
	shll2 r1
	shll r1
	add r7,r1
	fmov fr3,fr6
	float fpul,fr3
	mov.w @r1+,r3
	fmul fr5,fr6
	lds r3,fpul
	mov.w @r1,r3
	fmov fr3,fr8
	fmul fr4,fr8
	float fpul,fr3
	lds r3,fpul
	fmov fr3,fr7
	float fpul,fr3
	fmul fr5,fr7
	mov.w @(0x50,PC),r0
	fmov fr3,fr9
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0c5572
	fmul fr4,fr9
	fneg fr7
	fneg fr6

loc_8c0c5572:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	add 0x01,r14
	cmp/ge r2,r14
	fadd fr6,fr3
	fsub fr7,fr3
	fmov fr3,@(r0,r6)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr8,fr3
	fsub fr9,fr3
	bf.s loc_8c0c5522
	fmov fr3,@(r0,r6)

loc_8c0c558c:
	mov 0x3A,r0
	mov.b @(r0,r12),r2
	tst r2,r2
	bf loc_8c0c55ac
	mov 0x24,r0
	fmov @(r0,r12),fr3
	mov 0x34,r0
	fmov @(r0,r6),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x28,r0
	fmov @(r0,r12),fr3
	mov 0x38,r0
	fmov @(r0,r6),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r5)

loc_8c0c55ac:
	add 0x04,r15
	mov.l @r15+,r12
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c55b4:
	#data 0x02A4
loc_8c0c55b6:
	#data 0x0130
	#align4

loc_8c0c55b8:
	#data 0xC0892492
loc_8c0c55bc:
	#data bank15.loc_8c15B8C8
loc_8c0c55c0:
		#data 0x3FD55555
loc_8c0c55c4:
		#data 0x40092492
loc_8c0c55c8:
		#data 0x80000000

;==============================================
loc_8c0c55cc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x8C,PC),r9
	mov r5,r12
	mov 0x24,r0
	mov.l @(0x14,r4),r14
	add r12,r9
	mov.l @(0x88,PC),r3
	fmov @(r0,r9),fr3
	mov 0x34,r0
	fmov @(r0,r12),fr2
	mov 0x28,r0
	mov r14,r5
	add 0x34,r5
	fadd fr3,fr2
	fmov fr2,@r15
	fmov @(r0,r9),fr3
	mov 0x38,r0
	fmov @(r0,r12),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov r0,r4
	mov.w @(0x60,PC),r0
	mov.b @(r0,r12),r2
	tst r2,r2
	bt loc_8c0c561e
	neg r4,r4

loc_8c0c561e:
	add 0x04,r4
	mov.l @(0x60,PC),r10
	extu.b r4,r4
	fldi0 fr13
	shlr2 r4
	mov 0x22,r0
	shlr r4
	mov.b r4,@(r0,r14)
	mov 0x01,r11
	mov.w @(0x1E,r14),r0
	mov r0,r8
	mova @(0x48,PC),r0
	fmov @r0,fr12
	mova @(0x4C,PC),r0
	fmov @r0,fr14
	cmp/ge r8,r11
	mova @(0x4C,PC),r0
	bt.s loc_8c0c56fa
	fmov @r0,fr15

loc_8c0c5644:
	mov.l @(0x34,PC),r2
	mov r14,r5
	mov.l @(0x8,r14),r13
	add 0x34,r5
	jsr @r2
	mov r15,r4
	mov r0,r4
	mov.w @(0x22,PC),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bt loc_8c0c565c
	neg r4,r4

loc_8c0c565c:
	add 0x04,r4
	extu.b r4,r4
	shlr2 r4
	mov 0x22,r0
	shlr r4
	mov.b r4,@(r0,r13)
	mov r11,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c0c5690
	fmov fr13,fr4
	bra loc_8c0c56b2              ; loc_8c0c569c+0x16
	fmov fr12,fr6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c5676:
	#data 0x02a4
loc_8c0c5678:
	#data 0x01d2
	#align4

loc_8c0c567c:
	#data bank03.loc_8c03362C
loc_8c0c5680:
	#data 0xC0892492
loc_8c0c5684:
	#data bank15.loc_8c15B8C8
loc_8c0c5688:
	#data 0x40092492
loc_8c0c568c:
	#data 0x3FD55555

;==============================================
loc_8c0c5690:
	mov 0x22,r0
	mov.b @(r0,r14),r4
	extu.b r4,r4
	shll2 r4
	add 0x02,r4
	shll r4
	add r10,r4
	mov.w @r4+,r3
	lds r3,fpul
	mov.w @r4,r3
	float fpul,fr3
	lds r3,fpul
	fmov fr3,fr4
	float fpul,fr3
	fmul fr15,fr4
	fmov fr3,fr6
	fmul fr14,fr6

loc_8c0c56b2:
	mov 0x22,r0
	mov.b @(r0,r13),r4
	mov.w @(0xAE,PC),r0
	extu.b r4,r4
	shll2 r4
	shll r4
	add r10,r4
	mov.w @r4+,r3
	lds r3,fpul
	mov.w @r4,r3
	float fpul,fr3
	lds r3,fpul
	mov.w @(r0,r13),r3
	tst r3,r3
	fmov fr3,fr5
	float fpul,fr3
	fmul fr15,fr5
	fmov fr3,fr7
	bt.s loc_8c0c56de
	fmul fr14,fr7
	fneg fr5
	fneg fr4

loc_8c0c56de:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	add 0x01,r11
	cmp/ge r8,r11
	fadd fr4,fr3
	fsub fr5,fr3
	fmov fr3,@(r0,r13)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fadd fr6,fr3
	fsub fr7,fr3
	fmov fr3,@(r0,r13)
	bf.s loc_8c0c5644
	mov r13,r14

loc_8c0c56fa:
	mov 0x22,r0
	mov.b @(r0,r14),r4
	mov.w @(0x66,PC),r0
	extu.b r4,r4
	shll2 r4
	add 0x02,r4
	shll r4
	add r10,r4
	mov.w @r4+,r3
	lds r3,fpul
	mov.w @r4,r3
	float fpul,fr3
	lds r3,fpul
	mov.w @(r0,r14),r3
	tst r3,r3
	fmov fr3,fr4
	float fpul,fr3
	fmul fr15,fr4
	fmov fr3,fr5
	bt.s loc_8c0c5726
	fmul fr14,fr5
	fneg fr4

loc_8c0c5726:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x24,r0
	fmov @(r0,r9),fr2
	mov 0x34,r0
	fadd fr4,fr3
	fsub fr2,fr3
	fmov fr3,@(r0,r12)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov 0x28,r0
	fmov @(r0,r9),fr2
	mov 0x38,r0
	fadd fr5,fr3
	fsub fr2,fr3
	fmov fr3,@(r0,r12)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r12)
	add 0x0C,r15
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c5768:
	#data 0x0130
	#align4

;==============================================
;unused
loc_8c0c576C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.l @(0x144,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c57b4
	mov r0,r4
	mov.w @(0x122,PC),r2
	mov 0x26,r0
	mov.l @(0x130,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0x11A,PC),r5
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	add r4,r5
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.w @(0x104,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@r5

loc_8c0c57b4:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0C57C0:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0C58C8,pc),r0 ; r0 set to 0x8C15BB64
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0C57D6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0C58B8,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0C58B8,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0C58CC,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0C58BA,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0C58BC,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r13),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C58BE,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0C58D0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0C58BC,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0C5852
	mov.w @(loc_8C0C58B6,pc),r0 ; r0 set to 0x158
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	bra loc_8C0C585c
	mov.b r4,@(r0,r14)

loc_8C0C5852:
	mov.w @(loc_8C0C58B6,pc),r0 ; r0 set to 0x158
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)

loc_8C0C585C:
	mov.w @(loc_8C0C58B6,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.l @(loc_8C0C58D4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0C5896
	mov.l @r15+,r14

;==============================================
loc_8C0C5874:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c5890
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x2C,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0C5890:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C5896:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0C58B4,pc),r4 ; r4 set to 0xCc
	mov.w @(loc_8C0C58B6,pc),r0 ; r0 set to 0x158
	add r14,r4 ; r4 ??? bc r14 is ???	
	mov.w @r4,r2
	mov.w @(r0,r5),r3
	cmp/eq r2,r3
	bt loc_8C0C58Dc
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x159
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c58b2:
	#data 0x0D00
loc_8C0C58B4:
	#data 0x00Cc
loc_8C0C58B6:
	#data 0x0158
loc_8C0C58B8:
	#data 0x00Dc
loc_8C0C58BA:
	#data 0x00C0
loc_8C0C58BC:
	#data 0x012c
loc_8C0C58BE:
	#data 0x01A3
	#align4

loc_8C0C58C0:
	#data bank04.loc_8c044F12
loc_8C0C58C4:
	#data loc_8c0c57C0
loc_8C0C58C8:
	#data bank15.loc_8c15bb64
loc_8C0C58CC:
	#data bank12.loc_8c129560
loc_8C0C58D0:
	#data bank12.loc_8c1294C8
loc_8C0C58D4:
	#data bank03.loc_8c034e8c
loc_8C0C58D8:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0C58DC:
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0C5A24,pc),r1 ; r1 set to 0x8C15BB88
	fmov.s @(r0,r5),fr3
	mov r14,r4
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C5902:
	mov r4,r3
	mov.l @(loc_8C0C5A28,pc),r1 ; r1 set to 0x8C15BB8c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C5914:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0C5A18,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0C5A18,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0C5A2C,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0C5A1A,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0C5A1C,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r13),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C5A1E,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0C5A30,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0C5A1C,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0C599e
	mov.w @(loc_8C0C5A20,pc),r0 ; r0 set to 0x158
	mov 0x02,r3 ; r3 set to 0x02
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	bra loc_8C0C59A8
	mov.b r2,@(r0,r14)

loc_8C0C599E:
	mov.w @(loc_8C0C5A20,pc),r0 ; r0 set to 0x158
	mov 0x03,r1 ; r1 set to 0x03
	mov.b r1,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r4,@(r0,r14)

loc_8C0C59A8:
	mov.w @(loc_8C0C5A20,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.l @(loc_8C0C5A34,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0C5A22,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
	mov 0x01,r3 ; r3 set to 0x01, r3 set to 0x01
	mov r14,r4
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0C59Ec
	mov.l @r15+,r14

;==============================================
loc_8C0C59CA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x68,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c59e6
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x36,PC),r0
	mov.b r3,@(r0,r14)


loc_8C0C59E6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C59EC:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(loc_8C0C5A3C,pc),r1 ; r1 set to 0x8C15BB9c
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0C5A06:
	mov r4,r3
	mov.l @(loc_8C0C5A40,pc),r1 ; r1 set to 0x8C15BBA0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C5A18:
	#data 0x00Dc
loc_8C0C5A1A:
	#data 0x00C0
loc_8C0C5A1C:
	#data 0x012c
loc_8C0C5A1E:
	#data 0x01A3
loc_8C0C5A20:
	#data 0x0158
loc_8C0C5A22:
	#data 0x0130
	#align4

loc_8C0C5A24:
	#data bank15.loc_8c15bb88
loc_8C0C5A28:
	#data bank15.loc_8c15bb8c
loc_8C0C5A2C:
	#data bank12.loc_8c129560
loc_8C0C5A30:
	#data bank12.loc_8c1294C8
loc_8C0C5A34:
	#data bank03.loc_8c034e8c
loc_8C0C5A38:
	#data bank03.loc_8c034dee
loc_8C0C5A3C:
	#data bank15.loc_8c15bb9c
loc_8C0C5A40:
	#data bank15.loc_8c15bbA0

;==============================================
loc_8C0C5A44:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0C5B3C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0C5B3C,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0C5B48,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0C5B3E,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0C5B40,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r13),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C5B42,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0C5B4C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0C5B50,pc),r3 ; r3 set to 0x8C034E8c
	mov.b @(r0,r13),r2
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x04,r6 ; r6 set to 0x04
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0C5B40,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r4,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???	
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???	
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0C5AE8
	mov.l @r15+,r14

loc_8C0C5AC6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x88,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c5ae2
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x5E,PC),r0
	mov.b r3,@(r0,r14)


loc_8C0C5AE2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C5AE8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0C5B44,pc),r4 ; r4 set to 0xCc
	mov.w @(loc_8C0C5B46,pc),r0 ; r0 set to 0x158
	add r14,r4 ; r4 ??? bc r14 is ???	
	mov.w @r4,r2
	mov.w @(r0,r5),r3
	cmp/eq r2,r3
	bt loc_8C0C5B04
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x159
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C5B04:
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0C5B58,pc),r1 ; r1 set to 0x8C15BBB0
	fmov.s @(r0,r5),fr3
	mov 0x07,r3 ; r3 set to 0x07
	mov r14,r4
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C5B2A:
	mov r4,r3
	mov.l @(loc_8C0C5B5C,pc),r1 ; r1 set to 0x8C15BBB4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C5B3C:
	#data 0x00Dc
loc_8C0C5B3E:
	#data 0x00C0
loc_8C0C5B40:
	#data 0x012c
loc_8C0C5B42:
	#data 0x01A3
loc_8C0C5B44:
	#data 0x00Cc
loc_8C0C5B46:
	#data 0x0158
	#align4

loc_8C0C5B48:
	#data bank12.loc_8c129560
loc_8C0C5B4C:
	#data bank12.loc_8c1294C8
loc_8C0C5B50:
	#data bank03.loc_8c034e8c
loc_8C0C5B54:
	#data bank03.loc_8c034dee
loc_8C0C5B58:
	#data bank15.loc_8c15bbB0
loc_8C0C5B5C:
	#data bank15.loc_8c15bbB4

;==============================================
loc_8C0C5B60:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x10E,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x106,PC),r2
	add 0x01,r0
	mov.l @(0x110,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x100,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xFC,PC),r0
	mov 0x01,r4
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.b @(0x2,r13),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xE0,PC),r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xBA,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @(0xBC,PC),r0
	extu.b r3,r3
	shll r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c0c5be8
	mov.w @(0xA0,PC),r0
	mov 0x01,r3
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)

loc_8C0C5BE8:
	mov 0x21,r0
	mov.l @(0xAC,PC),r3
	mov.b @(r0,r14),r6
	mov 0x17,r5
	mov.l @(0xA0,PC),r0
	extu.b r6,r6
	shll r6
	mov.b @(r0,r6),r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0c5c0e
	mov.l @r15+,r14

;==============================================
loc_8C0C5C08:
	mov.l @(loc_8C0C5C9C,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

loc_8C0C5C0E:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0C5C84,pc),r4 ; r4 set to 0xCc
	mov.w @(loc_8C0C5C86,pc),r0 ; r0 set to 0x158
	add r14,r4 ; r4 ??? bc r14 is ???	
	mov.w @r4,r2
	mov.w @(r0,r5),r3
	cmp/eq r2,r3
	bt loc_8C0C5C2a
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x159
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C5C2A:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0C5CA0,pc),r1 ; r1 set to 0x8C15BBCc
	mov.b @(r0,r5),r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x38
	shll2 r0 ; r0 set to 0xE0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C5C50:
	mov r4,r3
	mov.l @(loc_8C0C5CA4,pc),r1 ; r1 set to 0x8C15BBD0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C5C62:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C5C7E,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0C5C70:
	mov.l @(loc_8C0C5CA8,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0C5C7E,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c5c7a:
	#data 0x00dc
loc_8c0c5c7c:
	#data 0x00c0
loc_8c0c5c7e:
	#data 0x012c
loc_8c0c5c80:
	#data 0x01a3
loc_8c0c5c82:
	#data 0x0130
loc_8c0c5c84:
	#data 0x00cc
loc_8c0c5c86:
	#data 0x0158
	#align4

loc_8C0C5C88:
	#data bank12.loc_8c129560
loc_8C0C5C8C:
	#data bank12.loc_8c1294C8
loc_8C0C5C90:
	#data bank15.loc_8c15bbC4
loc_8C0C5C94:
	#data bank15.loc_8c15bbC5
loc_8C0C5C98:
	#data bank03.loc_8c034e8c
loc_8C0C5C9C:
	#data bank03.loc_8c034dee
loc_8C0C5CA0:
	#data bank15.loc_8c15bbCc
loc_8C0C5CA4:
	#data bank15.loc_8c15bbD0
loc_8C0C5CA8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0C5CAC:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x14C,PC),r3
	mov.l r4,@r15
	mov.l r5,@(0x8,r15)
	mov 0x03,r5
	mov.l r6,@(0x4,r15)
	mov 0x01,r6
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0c5cea
	mov r0,r4
	mov.w @(0x122,PC),r3
	mov 0x26,r0
	mov.w @(0x120,PC),r1
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x8,r15),r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.l @(0x4,r15),r3
	mov.l @(0x128,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	mov.w r0,@(0x1C,r4)

loc_8C0C5CEA:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C5CF2:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0C5E08,pc),r0 ; r0 set to 0x8C15BC48
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0C5D06:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0C5E0C,pc),r1 ; r1 set to 0x8C15BC50
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0C5D1A:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xCE,PC),r3
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0xCA,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xC2,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x22,r0
	mov.b r3,@(r0,r14)
	mov.w @(0xBA,PC),r0
	mov.l @(0xD4,PC),r3
	jsr @r3
	add r13,r2
	mov.w @(0xB4,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x2,r13),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x98,PC),r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	fldi0 fr4
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r13),r3
	mov 0xF8,r2
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b r2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0c5dac
	mov 0x00,r5
	mov 0x01,r6
	bsr loc_8c0c5cac
	mov r13,r4
	mov 0x00,r5
	mov 0x02,r6
	bsr loc_8c0c5cac
	mov r13,r4

loc_8C0C5DAC:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0C5DB6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r13
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf.s loc_8c0c5de6
	mov r4,r14
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0c5de6               ; loc_8c0c5dac+0x3a
	mov.w @(0x26,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c0c5de6               ; loc_8c0c5dac+0x3a
	mov.w @(0x10,PC),r0
	mov.b @(r0,r13),r1
	mov.w @(0x1C,r14),r0
	extu.b r1,r1
	cmp/eq r0,r1
	bt loc_8c0c5e18               ; loc_8c0c5dec+0x2c

loc_8C0C5DE6:
	mov 0x02,r0
	bra loc_8c0c5f16
	mov.b r0,@(0x4,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c5dec:
	#data 0x0e00
loc_8c0c5dee:
	#data 0x0159
loc_8c0c5df0:
	#data 0x00ff
loc_8c0c5df2:
	#data 0x00dc
loc_8c0c5df4:
	#data 0x00c0
loc_8c0c5df6:
	#data 0x012c
loc_8c0c5df8:
	#data 0x01a3
loc_8c0c5dfa:
	#data 0x01d0
loc_8c0c5dfc:
	#data 0x01e9
	#align4

loc_8C0C5E00:
	#data bank04.loc_8c044F12
loc_8C0C5E04:
	#data loc_8c0c5CF2
loc_8C0C5E08:
	#data bank15.loc_8c15bc48
loc_8C0C5E0C:
	#data bank15.loc_8c15bc50
loc_8C0C5E10:
	#data bank12.loc_8c129560
loc_8C0C5E14:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0C5E18:
	mov.l @(0x128,PC),r4
	mov 0x3C,r0
	mov 0x01,r5
	mov.w @(r0,r4),r2
	mov 0x3B,r0
	mov.b @(r0,r4),r3
	mov r5,r1
	extu.w r2,r2
	extu.b r3,r3
	shad r3,r1
	tst r1,r2
	bf loc_8c0c5f1c
	mov 0x24,r0
	mov.b @(r0,r13),r1
	mov 0xF8,r3
	mov.b r1,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.w @(0xFE,PC),r0
	mov.b @(r0,r13),r4
	tst r4,r4
	bt loc_8c0c5f16
	mov.w @(0xF8,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/eq r3,r4
	bt loc_8c0c5ec2
	mov.b r4,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov 0x0F,r3
	and r3,r4
	mov.l @(0xE8,PC),r0
	extu.b r2,r2
	shll2 r4
	add r2,r4
	mov r4,r2
	mov 0x17,r5
	mov.l r4,@r15
	mov.b @(r0,r2),r6
	mov.l @(0xDC,PC),r2
	jsr @r2
	mov r14,r4
	mov 0x22,r0
	mov.l @(0xD8,PC),r4
	mov.b @(r0,r14),r0
	mov 0x21,r3
	add r14,r3
	extu.b r0,r0
	mov.b @r3,r3
	and 0x0F,r0
	add 0xFF,r0
	shll2 r0
	extu.b r3,r3
	shll r0
	shll r3
	add r3,r0
	shll r0
	add r0,r4
	mov.w @r4+,r3
	mova @(0xBC,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,@(r0,r14)
	mova @(0xB4,PC),r0
	mov.w @r4,r3
	fmov @r0,fr1
	mov 0x60,r0
	lds r3,fpul
	float fpul,fr3
	fmul fr1,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x8C,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c0c5ec2
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0C5EC2:
	mov r13,r2
	mov.l @(0x94,PC),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x5C,r1
	mov r14,r4
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
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x50,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0C5F16:
	mov.w @(0x26,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)

loc_8C0C5F1C:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0C5F26:
	mov.l @(loc_8C0C5F64,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C0C5F2C:
	mov r4,r3
	mov.l @(loc_8C0C5F68,pc),r1 ; r1 set to 0x8C15BC5c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c5f3e:
	#data 0x0140
loc_8c0c5f40:
	#data 0x012c
loc_8c0c5f42:
	#data 0x01D2

loc_8C0C5F44:
	#data 0x8C2895F0
loc_8C0C5F48:
	#data bank15.loc_8c15bbE0
loc_8C0C5F4C:
	#data bank03.loc_8c034e8c
loc_8C0C5F50:
	#data bank15.loc_8c15bbF8
loc_8C0C5F54:
	#data 0x3FD55555
loc_8C0C5F58:
	#data 0x40092492
loc_8C0C5F5C:
	#data bank12.loc_8c1294C8
loc_8C0C5F60:
	#data bank03.loc_8c034dee
loc_8C0C5F64:
	#data bank04.loc_8c0450C0
loc_8C0C5F68:
	#data bank15.loc_8c15bc5c

;==============================================
loc_8C0C5F6C:
	mov.w @(loc_8C0C6006,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.w @(loc_8C0C6006,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(0x18,r4),r5
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C6008,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0C6010,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0C600A,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C600C,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C6014,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x00,r3 ; r3 set to 0x00
	mov r4,r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov r5,r2
	mov.b r3,@(r0,r4)
	add 0x34,r1
	mov.l @(loc_8C0C6014,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0C6018,pc),r2 ; r2 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x09,r6 ; r6 set to 0x09
	jmp @r2
	lds.l @r15+,pr

loc_8C0C5FDE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x38,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c5ffa
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x10,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0C5FFA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C6000:
	mov.l @(loc_8C0C6020,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C6006:
	#data 0x00Dc
loc_8C0C6008:
	#data 0x00C0
loc_8C0C600A:
	#data 0x012c
loc_8C0C600C:
	#data 0x01A3
	#align4

loc_8C0C6010:
	#data bank12.loc_8c129560
loc_8C0C6014:
	#data bank12.loc_8c1294C8
loc_8C0C6018:
	#data bank03.loc_8c034e8c
loc_8C0C601C:
	#data bank03.loc_8c034dee
loc_8C0C6020:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0c6024:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(0x122,PC),r0
	mov.l r11,@-r15
	mov r4,r11
	mov.l @(0x128,PC),r2
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r11),r13
	mov.w @r2,r3
	extu.b r13,r13
	shll2 r13
	add 0x01,r13
	cmp/gt r13,r3
	bt loc_8c0c6048
	bra loc_8c0c607a
	mov 0x00,r0

loc_8C0C6048:
	mov.w @(0x106,PC),r12
	cmp/pl r13
	mov.l @(0x110,PC),r10
	bf.s loc_8c0c6078
	mov 0x00,r14

loc_8c0c6052:
	mov 0x03,r5
	mov 0x01,r6
	jsr @r10
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0c6072
	mov r0,r4
	mov 0x26,r0
	mov.l @(0x100,PC),r3
	mov.w r12,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov 0x21,r0
	mov.b r13,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l r11,@(0x18,r4)

loc_8c0c6072:
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c0c6052

loc_8C0C6078:
	mov 0x01,r0

loc_8C0C607a:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C6088:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0C6168,pc),r1 ; r1 set to 0x8C15BC70
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0C609C:
	mov.w @(0xB4,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0xC4,PC),r3
	add 0x01,r0
	mov.w @(0xA8,PC),r2
	mov.b r0,@(0x4,r4)
	mov.w @(0xA6,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0xA2,PC),r0
	mov 0x01,r2
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x7C,PC),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(0x88,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov r4,r1
	mov 0x0C,r3
	mov.b @(r0,r5),r2
	mov r5,r2
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov r3,r0
	nop
	mov.l @(0x70,PC),r3
	jsr @r3
	add 0x34,r2
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0c6142
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r5),r3
	mov.l @(0x50,PC),r0
	extu.b r3,r3
	shll2 r3
	fmov @(r0,r3),fr4
	mov.w @(0x2C,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bt.s loc_8c0c6136
	mov 0x5C,r0
	fneg fr4

loc_8C0C6136:
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x08,r0
	bra loc_8c0c6146
	mov.w r0,@(0x1C,r4)

loc_8C0C6142:
	mov 0x03,r0
	mov.b r0,@(0x5,r4)

loc_8C0C6146:
	mov.l @(0x30,PC),r3
	mov 0x17,r5
	mov 0x13,r6
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c6150:
	#data 0x01a3
loc_8c0c6152:
	#data 0x0e01
loc_8c0c6154:
	#data 0x00dc
loc_8c0c6156:
	#data 0x00c0
loc_8c0c6158:
	#data 0x012c
loc_8c0c615a:
	#data 0x0130
	#align4

loc_8C0C615c:
	#data 0x8C287AE8
loc_8C0C6160:
	#data bank04.loc_8c044F12
loc_8C0C6164:
	#data loc_8c0c6088
loc_8C0C6168:
	#data bank15.loc_8c15bc70
loc_8C0C616C:
	#data bank12.loc_8c129560
loc_8C0C6170:
	#data bank12.loc_8c1294C8
loc_8C0C6174:
	#data bank15.loc_8c15bc68
loc_8C0C6178:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0C617C:
	mov.l r14,@-r15
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf.s loc_8c0c619a
	mov r4,r14
	mov.w @(0x102,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0c619a
	mov.w @(0xFA,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0c61a8

loc_8C0C619A:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0xEC,PC),r0
	mov.b r3,@(r0,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C61A8:
	mov 0x24,r0
	mov.l @(0xE8,PC),r4
	mov 0x0C,r2
	mov.b r2,@(r0,r14)
	mov 0x3C,r0
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	mov 0x01,r1
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c0c61d4
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0xCC,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0C61D4:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C61D8:
	mov.l r14,@-r15
	mov r5,r2
	sts.l pr,@-r15
	mov.l @(0xBC,PC),r3
	mov r4,r1
	mov r4,r14
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0c6220
	mov.b @(0x5,r14),r0
	mov.l @(0x88,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4

loc_8C0C6220:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	mov 0x60,r0
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C623A:
	mov.w @(0x54,PC),r6
	mov r5,r2
	sts.l pr,@-r15
	mov.l @(0x58,PC),r3
	mov r4,r1
	add r5,r6
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.b @r6,r3
	tst r3,r3
	bt loc_8c0c6274
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	mov.w r0,@(0x1C,r4)

loc_8C0C6274:
	mov 0x21,r0
	mov.b @(r0,r4),r3
	mov 0x5C,r0
	fmov @(r0,r4),fr2
	mov 0x60,r0
	extu.b r3,r3
	lds r3,fpul
	lds.l @r15+,pr
	float fpul,fr3
	fdiv fr3,fr2
	rts
	fmov fr2,@(r0,r4)

;----------------------------------------------
loc_8c0c628c:
	#data 0x01d0
loc_8c0c628e:
	#data 0x01e9
loc_8c0c6290:
	#data 0x012c
loc_8c0c6292:
	#data 0x02a4
	#align4

loc_8C0C6294:
	#data 0x8C2895F0
loc_8C0C6298:
	#data bank15.loc_8c15bc7c
loc_8C0C629C:
	#data bank12.loc_8c1294C8
loc_8C0C62A0:
	#data bank07.loc_8c07119c

;==============================================
loc_8C0C62A4:
	mov.w @(loc_8C0C633C,pc),r6 ; r6 set to 0x2A4
	mov r5,r2
	sts.l pr,@-r15
	mov.l @(loc_8C0C6340,pc),r3 ; r3 set to 0x8C1294C8
	mov r4,r1
	add r5,r6 ; r6 ??? bc r5 is ???	
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x5C,r1 ; r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
	fmov.s @(r0,r4),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r4,r1 ; r1 ??? bc r4 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0 ; r0 set to 0x5b
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??	
	tst r0,r0
	bf loc_8C0C62F2
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r4)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0C633E,pc),r0 ; r0 set to 0x12c
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov.b r3,@(r0,r4)
	lds.l @r15+,pr
	rts
	mov.b r2,@r6

;----------------------------------------------
loc_8C0C62F2:
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr2
	mov 0x60,r0 ; r0 set to 0x60
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s fr2,@(r0,r4)
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0C630C:
	mov.w @(loc_8C0C633C,pc),r3 ; r3 set to 0x2A4
	add r3,r5
	mov.b @r5,r2
	cmp/pz r2
	bf loc_8C0C6328
	mov.l @(0x08,r4),r5
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr2
	fsub fr3,fr2
	bra loc_8C0C6332
	fmov.s fr2,@(r0,r4)

loc_8C0C6328:
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r4)
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0C633E,pc),r0 ; r0 set to 0x12c
	mov.b r2,@(r0,r4)

loc_8C0C6332:
	rts
	nop

;----------------------------------------------
loc_8C0C6336:
	mov.l @(loc_8C0C6344,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C633C:
	#data 0x02A4
loc_8C0C633E:
	#data 0x012c
	#align4

loc_8C0C6340:
	#data bank12.loc_8c1294C8
loc_8C0C6344:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0c6348:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x138,PC),r3
	mov 0x00,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c637e
	mov r0,r4
	mov.w @(0x110,PC),r3
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r2
	mov 0x01,r3
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.l @(0x118,PC),r2
	mov.b r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r2
	mov.l r2,@(0x14,r4)

loc_8c0c637e:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C6386:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0C6490,pc),r0 ; r0 set to 0x8C15BC8c
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0C639C:
	mov r4,r3
	mov.l @(loc_8C0C6494,pc),r1 ; r1 set to 0x8C15BC94
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0C63AE:
	mov.w @(loc_8C0C6476,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.w @(loc_8C0C6478,pc),r0 ; r0 set to 0xC0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.w @(loc_8C0C6476,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C0C6498,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0C647A,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C647C,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C649C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x0C,r3 ; r3 set to 0x0c
	mov 0x17,r5 ; r5 set to 0x17
	mov.b r2,@(r0,r4)
	mov 0x13,r6 ; r6 set to 0x13
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x04,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C64A0,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8C0C6414:
	mov.w @(0x68,PC),r0
	mov.w @(0x64,PC),r6
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bt.s loc_8c0c6438
	add r5,r6
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf loc_8c0c6438
	mov.w @(0x56,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0c6438
	mov.b @(0x4,r6),r0
	cmp/pz r0
	bt loc_8c0c6444

loc_8C0C6438:
	mov 0x02,r0
	mov.b r0,@(0x4,r4)
	mov 0x00,r3
	mov.w @(0x38,PC),r0
	rts
	mov.b r3,@(r0,r4)

loc_8C0C6444:
	mov 0x24,r0
	mov 0x0C,r2
	mov.b r2,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x30,PC),r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	rts
	nop

;----------------------------------------------
loc_8C0C645C:
	mov.l @(loc_8C0C64A4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;----------------------------------------------
loc_8C0C6462:
	mov r4,r3
	mov.l @(loc_8C0C64A8,pc),r1 ; r1 set to 0x8C15BCA0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C6474:
	#data 0x0E02
loc_8C0C6476:
	#data 0x00Dc
loc_8C0C6478:
	#data 0x00C0
loc_8C0C647A:
	#data 0x012c
loc_8C0C647C:
	#data 0x01A3
loc_8c0c647e:
	#data 0x02A4
loc_8c0c6480:
	#data 0x01D0
loc_8c0c6482:
	#data 0x01E9
loc_8c0c6484:
	#data 0x041c
	#align4

loc_8C0C6488:
	#data bank04.loc_8c044F12
loc_8C0C648C:
	#data loc_8c0c6386
loc_8C0C6490:
	#data bank15.loc_8c15bc8c
loc_8C0C6494:
	#data bank15.loc_8c15bc94
loc_8C0C6498:
	#data bank12.loc_8c129560
loc_8C0C649C:
	#data bank12.loc_8c1294C8
loc_8C0C64A0:
	#data bank03.loc_8c034e8c
loc_8C0C64A4:
	#data bank04.loc_8c0450C0
loc_8C0C64A8:
	#data bank15.loc_8c15bcA0

;==============================================
loc_8C0C64AC:
	mov.w @(0x10A,PC),r1
	sts.l pr,@-r15
	mov.w @(0x108,PC),r0
	add r4,r1
	mov.w @(0x102,PC),r2
	mov.l @(0x114,PC),r3
	jsr @r3
	add r5,r2
	mov.w @(0xFE,PC),r0
	mov 0x01,r2
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0xE2,PC),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(0xDC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x0C,r3
	mov 0x10,r6
	mov.b r2,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	mov.w @(0xB4,PC),r0
	mov.b r6,@(r0,r4)
	add 0x01,r0
	mov.b r6,@(r0,r4)
	add 0x01,r0
	mov.b r6,@(r0,r4)
	add 0x01,r0
	mov.b r6,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mova @(0xAC,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x92,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c0c653e
	mov 0x68,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8C0C653E:
	mov 0x5C,r1
	mov.l @(0x94,PC),r3
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	mov 0x68,r1
	add r4,r1
	fadd fr3,fr2
	mov 0x17,r5
	mov 0x13,r6
	fmov fr2,@(r0,r4)
	mov 0x5C,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8C0C6564:
	mov.w @(0x60,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.b @(r0,r5),r0
	mov.w @(0x54,PC),r13
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bt.s loc_8c0c658e
	add r5,r13
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf loc_8c0c658e
	mov.w @(0x48,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0c658e
	mov.b @(0x4,r13),r0
	cmp/pz r0
	bt loc_8c0c659a

loc_8C0C658E:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x26,PC),r0
	bra loc_8c0c65b4
	mov.b r3,@(r0,r14)

loc_8C0C659A:
	mov 0x24,r0
	mov.l @(0x3C,PC),r1
	mov 0x0C,r2
	mov r13,r6
	mov.b r2,@(r0,r14)
	mov r14,r4
	mov.b @(0x5,r14),r0
	mov.l @r15+,r13
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0C65B4:
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c65ba:
	#data 0x00dc
loc_8c0c65bc:
	#data 0x00c0
loc_8c0c65be:
	#data 0x012c
loc_8c0c65c0:
	#data 0x01a3
loc_8c0c65c2:
	#data 0x013c
loc_8c0c65c4:
	#data 0x0130
loc_8c0c65c6:
	#data 0x02a4
loc_8c0c65c8:
	#data 0x01d0
loc_8c0c65ca:
	#data 0x01e9
	#align4

loc_8C0C65CC:
	#data bank12.loc_8c129560
loc_8C0C65D0:
	#data bank12.loc_8c1294C8
loc_8C0C65D4:
	#data 0xC0D55555
loc_8C0C65D8:
	#data bank03.loc_8c034e8c
loc_8C0C65DC:
	#data bank15.loc_8c15bcAc

;==============================================
loc_8C0C65E0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0xEC,PC),r4
	mov 0x3C,r0
	mov.l r13,@-r15
	mov 0x01,r13
	fmov fr15,@-r15
	mov r13,r1
	sts.l pr,@-r15
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c0c6608
	mov.b @(0x4,r6),r0
	tst r0,r0
	bf loc_8c0c66a8               ; loc_8c0c663c+0x6c

loc_8C0C6608:
	mov.l @(0x14,r14),r4
	mov 0x34,r0
	mov 0x5C,r1
	fmov @(r0,r4),fr3
	add r14,r1
	fmov fr3,@(r0,r14)
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fldi0 fr3
	fmov fr2,fr15
	fcmp/gt fr15,fr3
	bf.s loc_8c0c6634
	fmov fr2,@(r0,r14)
	fneg fr15

loc_8C0C6634:
	mova @(0xA0,PC),r0
	fldi0 fr3
	fmov @r0,fr4
	fsub fr4,fr15
	fcmp/gt fr15,fr3
	bt loc_8c0c66c4
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x84,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c0c6654
	mova @(0x8C,PC),r0
	fneg fr15
	fmov @r0,fr4

loc_8C0C6654:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x07,r3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bt loc_8c0c66c4
	mov.l @(0x70,PC),r1
	mov 0x03,r5
	mov 0x02,r6
	jsr @r1
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0c66a8
	mov r0,r4
	mov.w @(0x4E,PC),r2
	mov 0x26,r0
	mov 0x00,r3
	mov.w r2,@(r0,r4)
	mov 0x20,r0
	mov.b r13,@(r0,r4)
	mov 0x22,r0
	mov.b r3,@(r0,r4)
	mov 0x5C,r0
	fmov fr15,@(r0,r4)
	mov.w @(0x1C,r14),r0
	mov.l @(0x4C,PC),r2
	add 0x01,r0
	mov.w r0,@(0x1C,r4)
	mov 0x22,r0
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.l r2,@(0x10,r4)
	bra loc_8c0c66c4              ; loc_8c0c663c+0x88
	mov.b r13,@(r0,r14)

loc_8C0C66A8:
	mov 0x02,r0
	mov.b r0,@(0x5,r14)
	mova @(0x38,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x16,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0c66c4
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0C66C4:
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c66ce:
	#data 0x0130
loc_8c0c66d0:
	#data 0x0e02
	#align4

loc_8c0c66d4:
	#data 0x8C2895F0
loc_8c0c66d8:
	#data 0x43200000
loc_8c0c66dc:
	#data 0xC3200000
loc_8C0C66E0:
	#data bank04.loc_8c044F12
loc_8C0C66E4:
	#data loc_8c0c6386
loc_8c0c66e8:
	#data 0x41D55555

;==============================================
loc_8C0C66EC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(loc_8C0C6804,pc),r4 ; r4 set to 0x8C2895F0
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.l r5,@r15
	mov.w @(r0,r4),r3
	mov 0x3B,r0 ; r0 set to 0x3b
	mov.b @(r0,r4),r2
	mov 0x01,r1 ; r1 set to 0x01
	extu.w r3,r3
	extu.b r2,r2
	shad r2, r1 ; r1 ??? bc r2 is ???	
	tst r1,r3
	bf loc_8C0C676e
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.l @(0x14,r14),r4 ; r4 ??? bc r14 is ???	
	fmov.s @(r0,r14),fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.b @(0x04,r6),r0
	tst r0,r0
	bf loc_8C0C6750
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0C6750
	mov.l @(loc_8C0C6808,pc),r3 ; r3 set to 0x8C03340c
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0C676e
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0C67FE,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.l @(0x0C,r14),r4
	mov 0x01,r3 ; r3 set to 0x01
	mov.b r3,@(r0,r4)
	mov.l @r15,r2
	mov.l r2,@(0x14,r4)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0c6750:
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mova @(loc_8C0C680C,pc),r0
	fmov.s @r0,fr3
	mov 0x68,r0
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C6800,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0c676e
	mov 0x68,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)

loc_8C0C676E:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C6776:
	mov.l @(loc_8C0C6804,pc),r5 ; r5 set to 0x8C2895F0
	mov 0x3C,r0 ; r0 set to 0x3c
	mov 0x01,r1 ; r1 set to 0x01
	mov.w @(r0,r5),r3
	mov 0x3B,r0 ; r0 set to 0x3b
	mov.b @(r0,r5),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2, r1 ; r1 ??? bc r2 is ???	
	tst r1,r3
	bf loc_8C0C67F4
	mov.l @(0x14,r4),r5 ; r5 ??? bc r4 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C0C67Ac
	mov 0x5C,r1 ; r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	bra loc_8C0C67F4
	fmov.s fr2,@(r0,r4)

loc_8C0C67AC:
	mov 0x5C,r1 ; r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r4,r1 ; r1 ??? bc r4 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s @(r0,r4),fr3
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr2
	fmul fr3,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bt loc_8C0C67F4
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r4)
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_8C0C67FE,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r4)
	mov.l @(0x14,r4),r4
	mov.b @(0x03,r4),r0
	tst r0,r0
	bf loc_8C0C67F0
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFf
	bra loc_8C0C67F4
	mov.b r0,@(0x04,r6)

loc_8c0c67f0:
	mov 0x22,r0
	mov.b r5,@(r0,r4)

loc_8C0C67F4:
	rts
	nop

;----------------------------------------------
loc_8C0C67F8:
	mov.l @(loc_8C0C6810,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;----------------------------------------------
loc_8C0C67FE:
	#data 0x012c
loc_8c0c6800:
	#data 0x0130
	#align4

loc_8C0C6804:
	#data 0x8C2895F0
loc_8C0C6808:
	#data bank03.loc_8c03340c
loc_8c0c680c:
	#data 0x41D55555
loc_8C0C6810:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0C6814:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C0C693C,pc),r2 ; r2 set to 0x8C287AE8
	mov r5,r14
	mov.l r4,@r15
	mov.l r6,@(0x04,r15)
	mov.w @r2,r3
	cmp/gt r14,r3
	bt/s loc_8C0C6836
	mov r7,r12
	bra loc_8C0C6886
	mov 0x00,r0

loc_8c0c6836:
	mov 0x0C,r4
	cmp/gt r4,r14
	bf/s loc_8c0c6840
	mov 0x00,r13
	mov r4,r14

loc_8c0c6840:
	mov.w @(loc_8C0C6932,pc),r11
	cmp/pl r14
	mov.l @(loc_8c0c6940,pc),r10
	bf loc_8c0c6882

loc_8c0c6848:
	mov 0x03,r5
	mov 0x01,r6
	jsr @r10
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0c6876
	mov r0,r4
	mov 0x26,r0
	mov.w r11,@(r0,r4)
	mov 0x23,r0
	mov.b r13,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x04,r15),r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b r12,@(r0,r4)
	mov r14,r0
	nop
	mov.l @(loc_8c0c6944,pc),r3
	mov.w r0,@(0x1E,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c0c6876:
	tst r12,r12
	bt/s loc_8c0c687e
	add 0x01,r13
	add 0xFF,r12

loc_8c0c687e:
	cmp/ge r14,r13
	bf loc_8c0c6848

loc_8c0c6882:
	mov r13,r0
	nop

loc_8C0C6886:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C6896:
	mov.l r14,@-r15
	mov 0x23,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0c68d2
	mov.l @(0x18,r14),r5
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf loc_8c0c68be
	mov.w @(0x86,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0c68be
	mov.w @(0x7E,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0c68c2

loc_8C0C68BE:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)

loc_8C0C68C2:
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0x80,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0C68D2:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C68D6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.w @(loc_8C0C6938,pc),r12 ; r12 set to 0x2A4
	bsr loc_8C0C69F4
	add r13,r12 ; r12 ??? bc r13 is ???	
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x0C,r0 ; r0 set to 0x0c
	fmov.s @(r0,r12),fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x10,r0 ; r0 set to 0x10
	fmov.s @(r0,r12),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0C694C,pc),r0 ; r0 set to 0x8C15BED4
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	mov.l r2,@(0x14,r14)
	bsr loc_8C0C6D72
	mov r14,r4
	mov r13,r5
	bsr loc_8C0C6CD8
	mov r14,r4
	mov r13,r5
	bsr loc_8C0C6B68
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0C6AC2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c6932:
#data 0x0E03
loc_8C0C6934:
	#data 0x01D0
loc_8C0C6936:
	#data 0x01E9
loc_8C0C6938:
	#data 0x02A4
	#align4

loc_8C0C693C:
	#data 0x8C287AE8
loc_8C0C6940:
	#data bank04.loc_8c044F12
loc_8C0C6944:
	#data loc_8c0c6896
loc_8C0C6948:
	#data bank15.loc_8c15beDc
loc_8C0C694C:
	#data bank15.loc_8c15beD4

;==============================================
loc_8C0C6950:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x10A,PC),r3
	mov r5,r14
	mov r4,r13
	mov.l @(0x110,PC),r4
	add r14,r3
	mov 0x3C,r0
	mov.l r3,@r15
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	mov 0x01,r1
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c0c69ae
	mov r14,r5
	bsr loc_8c0c6cd8
	mov r13,r4
	mov r14,r5
	bsr loc_8c0c6b68
	mov r13,r4
	mov r14,r5
	bsr loc_8c0c6ac2
	mov r13,r4
	mov.l @r15,r4
	mov.b @(0x6,r4),r0
	cmp/eq 0x02,r0
	bt.s loc_8c0c699c
	mov r0,r4
	mov r4,r0
	nop
	cmp/eq 0xFF,r0
	bf loc_8c0c69ae

loc_8C0C699C:
	mov 0x02,r0
	mov r13,r4
	mov r14,r5
	mov.b r0,@(0x4,r13)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0c69b8
	mov.l @r15+,r14

loc_8C0C69AE:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C69B8:
	mov.l r14,@-r15
	mov 0x01,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r13),r0
	mov.l @(0xA8,PC),r10
	mov r0,r12
	cmp/ge r12,r14
	bt.s loc_8c0c69e2
	mov 0x00,r11

loc_8C0C69D4:
	mov.w @(0x90,PC),r0
	mov.l @(0xC,r13),r4
	jsr @r10
	mov.b r11,@(r0,r4)
	add 0x01,r14
	cmp/ge r12,r14
	bf loc_8c0c69d4

loc_8C0C69E2:
	jsr @r10
	mov r13,r4
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C69F4:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov 0x08,r7 ; r7 set to 0x08
	mov.l r12,@-r15
	mov 0x00,r5 ; r5 set to 0x00
	sts.l pr,@-r15
	mov.w @(0x1E,r4),r0
	mov r0,r6
	cmp/pl r6
	bf/s loc_8C0C6AA6
	mov 0x01,r13 ; r13 set to 0x01

loc_8C0C6A0C:
	mov.w @(loc_8C0C6A6A,pc),r1 ; r1 set to 0xDc
	mov r4,r12
	mov.w @(loc_8C0C6A6A,pc),r2 ; r2 set to 0xDc
	mov.w @(loc_8C0C6A6C,pc),r0 ; r0 set to 0xC0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0C6A78,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r14,r2 ; r2 ??? bc r14 is ???	
	mov.w @(loc_8C0C6A68,pc),r0 ; r0 set to 0x12c
	mov r12,r1
	add 0x50,r1
	mov.b r13,@(r0,r4)
	mov.b @(0x02,r14),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r14),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C6A6E,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r14),r3
	mov r14,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C6A7C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r1
	tst r1,r1
	bt loc_8C0C6A80
	bra loc_8C0C6A82
	mov 0x01,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C6A66:
	#data 0x02A4
loc_8C0C6A68:
	#data 0x012c
loc_8C0C6A6A:
	#data 0x00Dc
loc_8C0C6A6C:
	#data 0x00C0
loc_8C0C6A6E:
	#data 0x01A3
	#align4

loc_8C0C6A70:
	#data 0x8C2895F0
loc_8C0C6A74:
	#data bank04.loc_8c0450C0
loc_8C0C6A78:
	#data bank12.loc_8c129560
loc_8C0C6A7C:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0c6a80:
	mov 0x00,r3

loc_8c0c6a82:
	mov.w @(loc_8c0c6b50,pc),r0
	mov r4,r1
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov 0x24,r0
	mov.b @(r0,r14),r2
	mov.l @(loc_8c0c6b54,pc),r3
	mov.b r2,@(r0,r4)
	mov r14,r2
	mov 0x31,r0
	add 0x34,r2
	mov.b r7,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	add 0x01,r5
	cmp/ge r6,r5
	bf/s loc_8c0c6a0c
	mov.l @(0x0C,r4),r4

loc_8C0C6AA6:
	mov.l @(loc_8C0C6B58,pc),r3 ; r3 set to 0x8C052618
	mov r12,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0C6B50,pc),r0 ; r0 set to 0x12c
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r13,@(r0,r12)
	add 0x2E,r0 ; r0 set to 0x15a
	mov.b r3,@(r0,r12)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c6ac2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r4
	mov.l r12,@-r15
	mov r4,r12
	mov.l r11,@-r15
	mov r4,r11
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	mov.l @(loc_8c0c6b5c,pc),r10
	mov r0,r9
	add 0xFF,r9
	cmp/pl r9
	mov r0,r5
	bf/s loc_8c0c6b1e
	mov 0x01,r13

loc_8c0c6aea:
	mov 0x23,r0
	mov.b @(r0,r14),r8
	mov 0x17,r5
	mov.l @(loc_8c0c6b60,pc),r0
	extu.b r8,r8
	mov.b @(r0,r8),r8
	mov 0x22,r0
	mov.b @(r0,r14),r7
	extu.b r8,r8
	add 0x55,r8
	mov r8,r6
	extu.b r7,r7
	jsr @r10
	mov r14,r4
	mov.w @(loc_8c0c6b50,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0c6b16
	tst r11,r11
	bf loc_8c0c6b16
	mov r13,r11
	mov.b r13,@(r0,r14)

loc_8c0c6b16:
	add 0x01,r12
	cmp/ge r9,r12
	bf/s loc_8c0c6aea
	mov.l @(0x0C,r14),r14

loc_8c0c6b1e:
	mov 0x22,r0
	mov.b @(r0,r14),r0
	mov 0x1F,r7
	mov 0x0F,r5
	extu.b r0,r0
	add 0x02,r0
	and r0,r7
	shar r7
	mov 0x05,r6
	shar r7
	jsr @r10
	mov r14,r4
	lds.l @r15+,pr
	mov.w @(loc_8C0C6B52,pc),r0
	mov r14,r4
	mov.l @(loc_8c0c6b64,pc),r3
	mov.l @r15+,r8
	mov.l @(r0,r14),r5
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c6b50:
	#data 0x012C
loc_8C0C6B52:
	#data 0x01C8
	#align4

loc_8c0c6b54:
	#data bank12.loc_8C1294C8
loc_8c0c6b58:
	#data bank05.loc_8C052618
loc_8c0c6b5c:
	#data bank03.loc_8c034f54
loc_8c0c6b60:
	#data bank15.loc_8c15bdd8
loc_8c0c6b64:
	#data bank04.loc_8c04cc1c

;==============================================
loc_8c0c6b68:
	mov 0x22,r0
	mov.l @(0x15C,PC),r6
	mov.w @(0x150,PC),r7
	mov.l r13,@-r15
	mov.b @(r0,r4),r1
	mova @(0x158,PC),r0
	fmov @r0,fr5
	mova @(0x158,PC),r0
	extu.b r1,r1
	fmov @r0,fr4
	shll2 r1
	mov.w @(0x140,PC),r0
	shll r1
	add r6,r1
	add 0x04,r1
	mov.w @r1+,r3
	add r5,r7
	lds r3,fpul
	mov.w @r1,r3
	float fpul,fr3
	lds r3,fpul
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr6
	float fpul,fr3
	fmul fr5,fr6
	fmov fr3,fr7
	bt.s loc_8c0c6ba4
	fmul fr4,fr7
	fneg fr6

loc_8c0c6ba4:
	mov 0x0C,r0
	fmov @(r0,r7),fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fsub fr6,fr2
	fmov fr2,@(r0,r4)
	mov 0x10,r0
	fmov @(r0,r7),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mov 0x01,r7
	fadd fr3,fr2
	fsub fr7,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov r0,r13
	add 0xFF,r13
	cmp/ge r13,r7
	mov r0,r5
	bt.s loc_8c0c6c4c
	fldi0 fr8

loc_8c0c6bd0:
	mov.w @(0xF0,PC),r0
	mov.l @(0xC,r4),r5
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c0c6be4
	fmov fr8,fr10
	fmov fr8,fr6
	fmov fr8,fr7
	bra loc_8c0c6c30
	fmov fr8,fr9

loc_8c0c6be4:
	mov 0x22,r0
	mov.b @(r0,r4),r1
	extu.b r1,r1
	shll2 r1
	shll r1
	add r6,r1
	mov.w @r1+,r3
	lds r3,fpul
	mov.w @r1,r3
	mov.b @(r0,r5),r1
	float fpul,fr3
	lds r3,fpul
	extu.b r1,r1
	mov.w @(0xC0,PC),r0
	shll2 r1
	shll r1
	add r6,r1
	fmov fr3,fr6
	add 0x04,r1
	float fpul,fr3
	mov.w @r1+,r3
	fmul fr5,fr6
	lds r3,fpul
	mov.w @r1,r3
	fmov fr3,fr9
	float fpul,fr3
	lds r3,fpul
	fmul fr4,fr9
	fmov fr3,fr7
	float fpul,fr3
	fmul fr5,fr7
	fmov fr3,fr10
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0c6c30
	fmul fr4,fr10
	fneg fr7
	fneg fr6

loc_8c0c6c30:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	add 0x01,r7
	cmp/ge r13,r7
	fadd fr6,fr3
	fsub fr7,fr3
	fmov fr3,@(r0,r5)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr9,fr3
	fsub fr10,fr3
	fmov fr3,@(r0,r5)
	bf.s loc_8c0c6bd0
	mov r5,r4

loc_8c0c6c4c:
	mov 0x22,r0
	mov.l @(0xC,r4),r5
	mov.b @(r0,r4),r2
	mov.b @(r0,r5),r0
	extu.b r2,r2
	fmov fr5,fr2
	shll2 r2
	shll r2
	add r2,r6
	mov.l @(0x74,PC),r2
	mov.w @r6+,r3
	extu.b r0,r0
	add 0x02,r0
	lds r3,fpul
	mov.w @r6,r3
	mov 0x1F,r6
	and r0,r6
	float fpul,fr3
	shar r6
	shar r6
	lds r3,fpul
	shll r6
	shll r6
	add r2,r6
	fmov fr3,fr6
	float fpul,fr3
	mov.w @r6+,r3
	fmul fr5,fr6
	lds r3,fpul
	fmov fr3,fr7
	fmul fr4,fr7
	float fpul,fr3
	mov.w @r6,r3
	fmov fr3,fr5
	fmul fr2,fr5
	lds r3,fpul
	mov.w @(0x2A,PC),r0
	fmov fr4,fr2
	float fpul,fr3
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr4
	bt.s loc_8c0c6ca8
	fmul fr2,fr4
	fneg fr5
	fneg fr6

loc_8c0c6ca8:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr6,fr3
	fsub fr5,fr3
	fmov fr3,@(r0,r5)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr7,fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r5)
	rts
	mov.l @r15+,r13

;----------------------------------------------
loc_8c0c6cc0:
	#data 0x02A4
loc_8c0c6cc2:
	#data 0x0130
loc_8c0c6cc4:
	#data 0x012C
	#align4

loc_8c0c6cc8:
	#data bank15.loc_8c15BCB8
loc_8c0c6ccc:
	#data 0x3FD55555
loc_8c0c6cd0:
	#data 0x40092492
loc_8c0c6cd4:
	#data bank15.loc_8c15BDB8

;==============================================
loc_8c0c6cd8:
	mov 0x22,r0
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x01,r6
	sts.l pr,@-r15
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt.s loc_8c0c6d60
	mov r6,r13
	mov.w @(0x1C,r4),r0
	mov r6,r7
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1E,r4),r0
	mov r0,r14
	cmp/ge r14,r7
	mova @(0x13C,PC),r0
	bt.s loc_8c0c6d66             ; loc_8c0c6cd8+0x8e
	fmov @r0,fr4

loc_8c0c6d02:
	mov.l @(0xC,r4),r6
	mov 0x64,r1
	mov 0x60,r0
	add r6,r1
	fmov @(r0,r6),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r6)
	mov 0x6C,r0
	fmov fr2,fr3
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf.s loc_8c0c6d28
	fmov fr2,@(r0,r6)
	fmov @(r0,r6),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r6)

loc_8c0c6d28:
	fmov @(r0,r6),fr3
	fcmp/gt fr3,fr4
	bt loc_8c0c6d34
	fmov @(r0,r6),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r6)

loc_8c0c6d34:
	fmov @(r0,r6),fr3
	mov 0x22,r2
	add r5,r2
	ftrc fr3,fpul
	mov.b @r2,r2
	mov 0x22,r1
	add 0x01,r7
	add r6,r1
	sts fpul,r0
	extu.b r0,r0
	add 0x04,r0
	shar r0
	shar r0
	shar r0
	cmp/ge r14,r7
	add r2,r0
	and 0x1F,r0
	mov.b r0,@r1
	bf.s loc_8c0c6d02
	mov r6,r4
	bra loc_8c0c6d66              ; loc_8c0c6cd8+0x8e
	nop

loc_8c0c6d60:
	bsr loc_8c0c6d72
	nop
	mov r0,r13

loc_8c0c6d66:
	mov r13,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c6d72:
	mov.l @(0x14,r4),r6
	mov.l @r6+,r5
	tst r5,r5
	bf.s loc_8c0c6d82
	mov 0x01,r7
	add 0xF8,r6
	mov.l @r6+,r5
	mov 0x00,r7

loc_8c0c6d82:
	mov 0x68,r0
	mov.l r6,@(0x14,r4)
	fmov @(r0,r4),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	mov.w @r5+,r3
	lds r3,fpul
	float fpul,fr3
	fmov fr3,@(r0,r4)
	mov 0x6C,r0
	mov.w @r5,r3
	fmov @(r0,r4),fr3
	mov 0x68,r0
	lds r3,fpul
	fmov @(r0,r4),fr2
	mov 0x70,r0
	fsub fr3,fr2
	float fpul,fr3
	fmul fr3,fr2
	fldi0 fr3
	fmov fr2,@(r0,r4)
	mova @(0x8C,PC),r0
	fmov @r0,fr4
	mov 0x70,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bf loc_8c0c6dc0
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)

loc_8c0c6dc0:
	mov.w @r5+,r3
	fmov @(r0,r4),fr2
	lds r3,fpul
	mov.l @(0x78,PC),r1
	float fpul,fr3
	lds r1,fpul
	mov 0x01,r1
	fmul fr3,fr2
	fsts fpul,fr3
	fmov fr2,@(r0,r4)
	fdiv fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @r5,r0
	fldi0 fr2
	mov.w r0,@(0x1C,r4)
	mov 0x6C,r0
	fmov fr2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov r0,r6
	cmp/ge r6,r1
	bt loc_8c0c6e38

loc_8c0c6dea:
	mov.l @(0xC,r4),r5
	mov 0x60,r0
	fmov @(r0,r5),fr3
	mov 0x6C,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x70,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r5)
	mov.w @(0x1C,r4),r0
	mov.w r0,@(0x1C,r5)
	mov.w @(0x1C,r4),r0
	mov r0,r3
	lds r3,fpul
	mov 0x70,r0
	fmov @(r0,r4),fr2
	mov 0x64,r0
	float fpul,fr3
	fdiv fr3,fr2
	fldi0 fr3
	fmov fr2,@(r0,r5)
	mov 0x6C,r0
	fmov @(r0,r5),fr2
	fcmp/gt fr2,fr3
	bf loc_8c0c6e24
	fmov @(r0,r5),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r5)

loc_8c0c6e24:
	fmov @(r0,r5),fr3
	fcmp/gt fr3,fr4
	bt.s loc_8c0c6e32
	mov r5,r4
	fmov @(r0,r5),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r5)

loc_8c0c6e32:
	add 0x01,r1
	cmp/ge r6,r1
	bf loc_8c0c6dea

loc_8c0c6e38:
	rts
	mov r7,r0

;----------------------------------------------
	#align4
loc_8c0c6e3c:
	#data 0x43800000
loc_8c0c6e40:
	#data 0x41400000

;==============================================
loc_8c0c6e44:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x17C,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov 0x03,r5
	mov.l r6,@(0x8,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c6e76
	mov r0,r4
	mov.w @(0x156,PC),r3
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x164,PC),r3
	mov.l @(0x8,r15),r2
	mov.b r2,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.l @r15,r3
	mov.l r3,@(0x14,r4)

loc_8c0c6e76:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8C0C6E7E:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0C6FD0,pc),r0 ; r0 set to 0x8C15BF70
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0C6E94:
	mov r4,r3
	mov.l @(loc_8C0C6FD4,pc),r1 ; r1 set to 0x8C15BF7c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0C6EA6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0C6FBA,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.w @(loc_8C0C6FBC,pc),r0 ; r0 set to 0xC0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0C6FBA,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C0C6FD8,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0C6FBE,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r13),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C6FC0,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???	
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0C6FDC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0C6FE0,pc),r3 ; r3 set to 0x8C052618
	mov.b @(r0,r13),r2
	mov r14,r5
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r13,r4
	mov.b @(0x04,r14),r0
	mov 0x0B,r3 ; r3 set to 0x0b
	mov.l @(0x14,r14),r13
	mov r14,r1
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x04,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov r13,r2
	mov 0x28,r0 ; r0 set to 0x28
	mov.l @(loc_8C0C6FDC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	mov.w r0,@(0x1C,r14)
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(loc_8C0C6FE4,pc),r2 ; r2 set to 0x8C04223a
	mov 0x0D,r5 ; r5 set to 0x0d
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0C6FC2,pc),r0 ; r0 set to 0x1F6
	mov 0x06,r3 ; r3 set to 0x06
	mov 0x01,r2 ; r2 set to 0x01
	fldi0 fr4
	mov.b r3,@(r0,r13)
	add 0xF5,r0 ; r0 set to 0x1Eb
	mov.b r2,@(r0,r13)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r13)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r13)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r13)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r13)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???	
	mov 0xF8,r2 ; r2 set to 0xFFFFFFF8
	mov.l @(loc_8C0C6FE8,pc),r1 ; r1 set to 0x8C15BEE8
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r14)
	mov 0x17,r5 ; r5 set to 0x17
	mov.b @(0x01,r13),r0
	extu.b r0,r0 ; r0 set to 0x31
	mov.b @(r0,r1),r3
	mov 0x23,r0 ; r0 set to 0x23
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x1D,r6
	mov.l @(loc_8C0C6FEC,pc),r3 ; r3 set to 0x8C034E8c
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0C6F76:
	mov.w @(loc_8C0C6FC4,pc),r0 ; r0 set to 0x1C8
	mov 0x01,r3 ; r3 set to 0x01
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r14,r1
	sts.l pr,@-r15
	mov.l @(r0,r5),r13
	add 0x23,r0 ; r0 set to 0x1Eb
	add 0x34,r1
	mov.b r3,@(r0,r13)
	mov r13,r2
	mov.l @(loc_8C0C6FDC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0C6FF0,pc),r1 ; r1 set to 0x8C15BF88
	mov.b @(r0,r13),r2
	mov 0xF8,r3 ; r3 set to 0xFFFFFFF8
	mov r13,r6
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	lds.l @r15+,pr
	extu.b r0,r0 ; r0 set to 0x31
	shll2 r0 ; r0 set to 0xC4
	mov.l @r15+,r13
	mov.l @(r0,r1),r3 ; r3 ??	
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C6FB8:
	#data 0x0E04
loc_8C0C6FBA:
	#data 0x00Dc
loc_8C0C6FBC:
	#data 0x00C0
loc_8C0C6FBE:
	#data 0x012c
loc_8C0C6FC0:
	#data 0x01A3
loc_8C0C6FC2:
	#data 0x01F6
loc_8C0C6FC4:
	#data 0x01C8
	#align4

loc_8C0C6FC8:
	#data bank04.loc_8c044F12
loc_8C0C6FCC:
	#data loc_8c0c6E7e
loc_8C0C6FD0:
	#data bank15.loc_8c15bf70
loc_8C0C6FD4:
	#data bank15.loc_8c15bf7c
loc_8C0C6FD8:
	#data bank12.loc_8c129560
loc_8C0C6FDC:
	#data bank12.loc_8c1294C8
loc_8C0C6FE0:
	#data bank05.loc_8c052618
loc_8C0C6FE4:
	#data bank04.loc_8c04223a
loc_8C0C6FE8:
	#data bank15.loc_8c15beE8
loc_8C0C6FEC:
	#data bank03.loc_8c034e8c
loc_8C0C6FF0:
	#data bank15.loc_8c15bf88

;==============================================
loc_8C0C6FF4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0C7110,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r6,r13
	mov.w @(loc_8C0C7104,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0C702e
	mov.b @(0x05,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	mov r3,r5 ; r5 set to 0x00
	mov r3,r6 ; r6 set to 0x00
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0C7106,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r13)
	mov.l @(loc_8C0C7114,pc),r3 ; r3 set to 0x8C034E8c
	jsr @r3
	mov r13,r4
	lds.l @r15+,pr
	mov r13,r4
	mov.l @(loc_8C0C7118,pc),r2 ; r2 set to 0x8C050552
	mov 0x0A,r5 ; r5 set to 0x0a
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0C702E:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C7036:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0C7110,pc),r3 ; r3 set to 0x8C034DEe
	mov r6,r13
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0C7108,pc),r0 ; r0 set to 0x19f
	mov 0x01,r11 ; r11 set to 0x01
	mov.b @(r0,r13),r2
	tst r2,r2
	bt/s loc_8C0C7086
	mov 0x00,r12 ; r12 set to 0x00
	mov.b @(0x05,r13),r0
	extu.b r0,r0 ; r0 set to 0x9f
	cmp/eq 0x03,r0
	bf loc_8C0C7086
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0C7106,pc),r0 ; r0 set to 0x12c
	mov.b r12,@(r0,r14)
	mov r12,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x08,r3 ; r3 set to 0x08
	mov.w @(loc_8C0C7106,pc),r0 ; r0 set to 0x12c
	mov 0x0A,r2 ; r2 set to 0x0a
	mov.b r11,@(r0,r13)
	mov.w @(loc_8C0C710A,pc),r0 ; r0 set to 0x1Ef
	mov.b r3,@(r0,r13)
	add 0xFC,r0 ; r0 set to 0x1Eb
	mov.b r2,@(r0,r13)
	mov.w @(loc_8C0C7106,pc),r0 ; r0 set to 0x12c
	bra loc_8C0C70Dc
	mov.b r11,@(r0,r13)

loc_8c0c7086:
	mov.w @(loc_8c0c7106,pc),r0
	mov.l @(loc_8c0c711c,pc),r3
	mov.b r12,@(r0,r13)
	jsr @r3
	mov r13,r4
	tst r0,r0
	bt loc_8c0c70ac
	mov.w @(loc_8C0C710C,pc),r0
	mov.l @(loc_8c0c7110,pc),r3
	mov.b r11,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xF9,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0c7118,pc),r2
	mov 0x0A,r5
	jsr @r2
	mov r13,r4

loc_8c0c70ac:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0c70f6
	mov.w @(loc_8c0c710a,pc),r0
	mov 0x08,r2
	mov 0x0A,r3
	mov.b r2,@(r0,r13)
	add 0xFC,r0
	mov.b r3,@(r0,r13)
	mov.w @(loc_8c0c7106,pc),r0
	mov.l @(loc_8c0c7120,pc),r3
	mov.b r11,@(r0,r13)
	jsr @r3
	mov r13,r4
	mov 0x02,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8c0c7106,pc),r0
	mov.b r12,@(r0,r14)
	mov r12,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8C0C70DC:
	mov.l @(loc_8C0C7124,pc),r3 ; r3 set to 0x8C042008
	mov 0x23,r5 ; r5 set to 0x23
	jsr @r3
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???	
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0C7128
	mov.l @r15+,r14

loc_8C0C70F6:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C7104:
	#data 0x0141
loc_8C0C7106:
	#data 0x012c
loc_8C0C7108:
	#data 0x019f
loc_8C0C710A:
	#data 0x01Ef
loc_8c0c710c:
	#data 0x0142
	#align4

loc_8C0C7110:
	#data bank03.loc_8c034dee
loc_8C0C7114:
	#data bank03.loc_8c034e8c
loc_8C0C7118:
	#data bank05.loc_8c050552
loc_8C0C711C:
	#data bank05.loc_8c050610
loc_8C0C7120:
	#data bank05.loc_8c051648
loc_8C0C7124:
	#data bank04.loc_8c042008

;==============================================
loc_8c0c7128:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0C7284,pc),r2
	mov 0x08,r13
	mov.l r5,@r15
	mov.w @r2,r3
	cmp/gt r13,r3
	bf/s loc_8c0c7190
	mov r4,r12
	mov.w @(loc_8C0C7278,pc),r9
	mov 0x00,r14
	mov.l @(loc_8c0c7288,pc),r8
	mov 0x01,r11
	mov 0x02,r10

loc_8c0c7152:
	mov 0x03,r5
	mov 0x01,r6
	jsr @r8
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0c718a
	mov r0,r4
	mov 0x26,r0
	mov r14,r3
	mov.w r9,@(r0,r4)
	mov 0x07,r2
	mov r14,r1
	and r11,r3
	mov 0x20,r0
	shar r1
	mov.b r10,@(r0,r4)
	shad r2, r3
	mov 0x21,r0
	or r1,r3
	mov.b r3,@(r0,r4)
	mov 0x23,r0
	mov.l @(loc_8c0c728c,pc),r3
	mov.b @(r0,r12),r1
	mov.b r1,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.l r12,@(0x14,r4)

loc_8c0c718a:
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c0c7152

loc_8c0c7190:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0C71A4:
	mov r4,r3
	mov.l @(loc_8C0C7290,pc),r1 ; r1 set to 0x8C15BF90
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0C71B6:
	mov.w @(0xC0,PC),r1
	sts.l pr,@-r15
	mov.w @(0xBE,PC),r0
	add r4,r1
	mov.w @(0xB8,PC),r2
	mov.l @(0xD0,PC),r3
	jsr @r3
	add r5,r2
	mov.w @(0xB4,PC),r0
	mov 0x01,r2
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x98,PC),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(0x9C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0xF4,r2
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mov 0x31,r0
	mov.b r2,@(r0,r4)
	mova @(0x80,PC),r0
	fmov @r0,fr4
	mov.w @(0x62,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c0c7228
	mova @(0x78,PC),r0
	fmov @r0,fr4

loc_8C0C7228:
	mov 0x34,r0
	mov.l @(0x7C,PC),r3
	fmov @(r0,r5),fr3
	mov 0x4B,r6
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mova @(0x6C,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mov 0x17,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C0C7246:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x60,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c7260
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x1E,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0C7260:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C7266:
	mov r4,r3
	mov.l @(loc_8C0C72B0,pc),r1 ; r1 set to 0x8C15BF9c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c7278:
	#data 0x0e04
loc_8c0c727a:
	#data 0x00dc
loc_8c0c727c:
	#data 0x00c0
loc_8c0c727e:
	#data 0x012c
loc_8c0c7280:
	#data 0x01a3
loc_8c0c7282:
	#data 0x01d2
	#align4

loc_8c0c7284:
	#data 0x8C287AE8
loc_8C0C7288:
	#data bank04.loc_8c044F12
loc_8C0C728C:
	#data loc_8c0c6E7e
loc_8C0C7290:
	#data bank15.loc_8c15bf90
loc_8C0C7294:
	#data bank12.loc_8c129560
loc_8C0C7298:
	#data bank12.loc_8c1294C8
loc_8C0C729c:
	#data 0xC292AAAa
loc_8C0C72a0:
	#data 0x4292AAAa
loc_8C0C72a4:
	#data 0x43430000
loc_8C0C72A8:
	#data bank03.loc_8c034e8c
loc_8C0C72AC:
	#data bank03.loc_8c034dee
loc_8C0C72B0:
	#data bank15.loc_8c15bf9c

;==============================================
loc_8C0C72B4:
	mov.l r14,@-r15
	mov.w @(loc_8C0C73A0,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.w @(loc_8C0C73A2,pc),r0 ; r0 set to 0xC0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.w @(loc_8C0C73A0,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C0C73AC,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0C73A4,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C73A6,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C73B0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.w @(loc_8C0C73A8,pc),r14 ; r14 set to 0x80
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov.b @(0x04,r4),r0
	mov.l @(0x14,r4),r5
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x04,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???	
	mov.b r3,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b @(r0,r5),r2
	mov 0xFB,r3 ; r3 set to 0xFFFFFFFb
	add 0xFC,r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r7
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r6
	extu.b r7,r7
	mov.l @(loc_8C0C73B4,pc),r0 ; r0 set to 0x8C15BF68
	and r7,r14 ; r14 ??? bc r7 is ???	
	extu.b r6,r6
	shad r3, r14
	mov 0x7F,r3 ; r3 set to 0x7f
	mov r14,r2
	shll2 r6
	and r3,r7
	mov.l @(r0,r6),r6
	shar r2
	shll2 r7
	add r2,r7
	shll r7
	add r7,r6
	mov.w @r6+,r2
	mova @(loc_8C0C73B8,pc),r0  ; r0 set to 0x8C0C73B8
	fmov.s @r0,fr0 ; r0 ??	
	mov 0x34,r0 ; r0 set to 0x34
	lds r2,fpul
	add 0x1F,r14
	fmov.s @(r0,r5),fr2
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.w @r6,r2
	mov r14,r6
	fmov.s @(r0,r5),fr2
	mova @(loc_8C0C73BC,pc),r0  ; r0 set to 0x8C0C73Bc
	lds r2,fpul
	mov 0x17,r5 ; r5 set to 0x17
	fmov.s @r0,fr0 ; r0 ??	
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(loc_8C0C73C0,pc),r2 ; r2 set to 0x8C034E8c
	float fpul,fr3
	fmac fr0,fr3,fr2 ; r2 ??	
	fmov.s fr2,@(r0,r4)
	lds.l @r15+,pr
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0C737A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x44,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c7394
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x10,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0C7394:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C739A:
	mov.l @(loc_8C0C73C8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C73A0:
	#data 0x00Dc
loc_8C0C73A2:
	#data 0x00C0
loc_8C0C73A4:
	#data 0x012c
loc_8C0C73A6:
	#data 0x01A3
loc_8C0C73A8:
	#data 0x0080
	#align4

loc_8C0C73AC:
	#data bank12.loc_8c129560
loc_8C0C73B0:
	#data bank12.loc_8c1294C8
loc_8C0C73B4:
	#data bank15.loc_8c15bf68
loc_8C0C73B8:
	#data 0x3FD55555
loc_8C0C73BC:
	#data 0x40092492
loc_8C0C73C0:
	#data bank03.loc_8c034e8c
loc_8C0C73C4:
	#data bank03.loc_8c034dee
loc_8C0C73C8:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0c73cc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xCC,PC),r2
	mov r5,r13
	mov.l r4,@r15
	mov.l r6,@(0x4,r15)
	mov.w @r2,r3
	cmp/gt r13,r3
	bt loc_8c0c73ec
	bra loc_8c0c743a
	mov 0x00,r0

loc_8c0c73ec:
	mov 0x0C,r4
	cmp/gt r4,r13
	bf.s loc_8c0c73f6
	mov 0x00,r14
	mov r4,r13

loc_8c0c73f6:
	mov.w @(0xAA,PC),r12
	cmp/pl r13
	mov.l @(0xB0,PC),r11
	bf loc_8c0c7434

loc_8c0c73fe:
	mov 0x03,r5
	mov 0x01,r6
	jsr @r11
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0c742e
	mov r0,r4
	mov 0x26,r0
	mov.w r12,@(r0,r4)
	mov 0x23,r0
	mov.b r14,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r3
	mov.b r3,@(r0,r4)
	mov r13,r0
	nop
	mov.l @(0x90,PC),r3
	tst r14,r14
	mov.w r0,@(0x1E,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	bf.s loc_8c0c742e
	mov.l r2,@(0x18,r4)
	mov r4,r10

loc_8c0c742e:
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c0c73fe

loc_8c0c7434:
	mov.l r4,@(0x14,r10)
	mov r14,r0
	nop

loc_8c0c743a:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C744A:
	mov.l r14,@-r15
	mov 0x23,r0 ; r0 set to 0x23
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C0C7468
	mov.l @(0x18,r14),r5
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0C74B4,pc),r1 ; r1 set to 0x8C15BFD4
	extu.b r0,r0 ; r0 set to 0x23
	shll2 r0 ; r0 set to 0x8c
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0C7468:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C746C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8C0C75Dc
	mov r5,r13
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0C74B8,pc),r3 ; r3 set to 0x8C15BFB8
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0C74A6,pc),r0 ; r0 set to 0x1B0
	mov.l r3,@(r0,r14)
	bsr loc_8C0C7B3a
	mov r14,r4
	mov r13,r5
	bsr loc_8C0C7A98
	mov r14,r4
	mov r13,r5
	bsr loc_8C0C7704
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0C7686
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C74A4:
	#data 0x0E05
loc_8C0C74A6:
	#data 0x01B0
	#align4

loc_8C0C74A8:
	#data 0x8C287AE8
loc_8C0C74AC:
	#data bank04.loc_8c044F12
loc_8C0C74B0:
	#data loc_8c0c744a
loc_8C0C74B4:
	#data bank15.loc_8c15bfD4
loc_8C0C74B8:
	#data bank15.loc_8c15bfB8

;==============================================
loc_8C0C74BC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x102,PC),r3
	mov r5,r13
	mov r4,r14
	add r13,r3
	mov.l r3,@r15
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf.s loc_8c0c74f4
	mov 0x02,r4
	mov.w @(0xF2,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0
	bf loc_8c0c74f4
	mov.w @(0xEA,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bf loc_8c0c74f4
	mov.w @(0xE2,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c0c74fc

loc_8C0C74F4:
	mov r4,r0
	nop
	bra loc_8c0c7556
	mov.b r0,@(0x4,r14)

loc_8C0C74FC:
	mov.l @(0xD4,PC),r5
	mov 0x3C,r0
	mov 0x01,r1
	mov.w @(r0,r5),r2
	mov 0x3B,r0
	mov.b @(r0,r5),r3
	extu.w r2,r2
	extu.b r3,r3
	shad r3,r1
	tst r1,r2
	bf loc_8c0c7584
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0c753c
	mov r13,r5
	bsr loc_8c0c78fc
	mov r14,r4
	mov r13,r5
	bsr loc_8c0c7686
	mov r14,r4
	mov.l @r15,r0
	mov 0x20,r1
	mov.b @(r0,r1),r0
	cmp/eq 0xFF,r0
	bf loc_8c0c7584
	mov.b @(0x5,r14),r0
	mov 0x0A,r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x21,r0
	bra loc_8c0c7584
	mov.b r3,@(r0,r14)

loc_8C0C753C:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14)
	extu.b r3,r3
	tst r3,r3
	bf loc_8c0c7564
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x7C,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0C7556:
	mov r14,r4
	mov r13,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0c758e
	mov.l @r15+,r14

loc_8C0C7564:
	mov r13,r5
	bsr loc_8c0c7662
	mov r14,r4
	mov r13,r5
	bsr loc_8c0c7a98
	mov r14,r4
	mov r13,r5
	bsr loc_8c0c77e4
	mov r14,r4
	mov r14,r4
	mov r13,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0c7686
	mov.l @r15+,r14

loc_8C0C7584:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C758E:
	mov.l r14,@-r15
	mov 0x01,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r13),r0
	mov.l @(0x34,PC),r10
	mov r0,r12
	cmp/ge r12,r14
	bt.s loc_8c0c75b8
	mov 0x00,r11

loc_8C0C75AA:
	mov.w @(0x24,PC),r0
	mov.l @(0xC,r13),r4
	jsr @r10
	mov.b r11,@(r0,r4)
	add 0x01,r14
	cmp/ge r12,r14
	bf loc_8c0c75aa

loc_8C0C75B8:
	jsr @r10
	mov r13,r4
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c75ca:
	#data 0x02a4
loc_8c0c75cc:
	#data 0x01d0
loc_8c0c75ce:
	#data 0x0159
loc_8c0c75d0:
	#data 0x0158
loc_8c0c75d2:
	#data 0x012c
	#align4

loc_8C0C75D4:
	#data 0x8C2895F0
loc_8C0C75D8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0c75dc:
	mov.l r14,@-r15
	mov 0x00,r6
	mov.l r13,@-r15
	mov 0x08,r13
	sts.l pr,@-r15
	mov.w @(0x1E,r4),r0
	mov r0,r7
	cmp/pl r7
	bf/s loc_8c0c765a
	mov 0x01,r14

loc_8c0c75f0:
	mov.w @(loc_8C0C76E2,pc),r1
	mov.w @(loc_8C0C76E4,pc),r0
	mov.l @(loc_8c0c76ec,pc),r3
	add r4,r1
	mov.w @(loc_8C0C76E2,pc),r2
	jsr @r3
	add r5,r2
	mov.w @(loc_8C0C76E6,pc),r0
	mov r4,r1
	add 0x50,r1
	mov.b r14,@(r0,r4)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C76E8,pc),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8c0c76f0,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov r4,r1
	mov.b @(r0,r5),r2
	add 0x34,r1
	mov.b r2,@(r0,r4)
	mov r5,r2
	mov.b @(r0,r5),r3
	add 0x34,r2
	mov.b r3,@(r0,r4)
	mov 0x31,r0
	mov.l @(loc_8c0c76f0,pc),r3
	mov.b r13,@(r0,r4)
	jsr @r3
	mov 0x0C,r0
	add 0x01,r6
	cmp/ge r7,r6
	bf/s loc_8c0c75f0
	mov.l @(0x0C,r4),r4

loc_8c0c765a:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c7662:
	mov.w @(0x1E,r4),r0
	mov.l @(0x8C,PC),r7
	mov r0,r6
	cmp/pl r6
	bf.s loc_8c0c7682
	mov 0x00,r5

loc_8c0c766e:
	mov.l @r7,r0
	add 0x01,r5
	mov.w @(0x70,PC),r1
	cmp/ge r6,r5
	mov.l @(0x1C,r0),r0
	add r4,r1
	and 0x01,r0
	mov.b r0,@r1
	bf.s loc_8c0c766e
	mov.l @(0xC,r4),r4

loc_8c0c7682:
	rts
	nop

;----------------------------------------------
loc_8c0c7686:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	mov.l @(0x5C,PC),r9
	mov r0,r12
	add 0xFF,r12
	mov.l @(0x5C,PC),r10
	cmp/pl r12
	mov r0,r4
	bf.s loc_8c0c76ca
	mov 0x00,r13

loc_8c0c76a8:
	mov 0x23,r0
	mov.b @(r0,r14),r0
	mov 0x17,r5
	extu.b r0,r0
	mov.b @(r0,r9),r11
	mov 0x22,r0
	mov.b @(r0,r14),r7
	extu.b r11,r11
	add 0x55,r11
	mov r11,r6
	extu.b r7,r7
	jsr @r10
	mov r14,r4
	add 0x01,r13
	cmp/ge r12,r13
	bf.s loc_8c0c76a8
	mov.l @(0xC,r14),r14

loc_8c0c76ca:
	lds.l @r15+,pr
	mov.l @(0x30,PC),r2
	mov 0x2B,r6
	mov r14,r4
	mov 0x17,r5
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C76E2:
	#data 0x00DC
loc_8C0C76E4:
	#data 0x00C0
loc_8C0C76E6:
	#data 0x012C
loc_8C0C76E8:
	#data 0x01A3
	#align4

loc_8c0c76ec:
	#data bank12.loc_8c129560
loc_8c0c76f0:
	#data bank12.loc_8c1294c8
loc_8c0c76f4:
	#data 0x8C26823C
loc_8c0c76f8:
	#data bank15.loc_8c15BDD8
loc_8c0c76fc:
	#data bank03.loc_8c034F54
loc_8c0c7700:
	#data bank03.loc_8c034E8C

;==============================================
loc_8c0c7704:
	mov 0x22,r0
	mov.l @(0xD0,PC),r6
	mov.b @(r0,r4),r1
	mova @(0xD0,PC),r0
	fmov @r0,fr5
	mova @(0xD0,PC),r0
	extu.b r1,r1
	fmov @r0,fr4
	shll2 r1
	mov.w @(0xBA,PC),r0
	add 0x02,r1
	mov.w @(0xB4,PC),r7
	shll r1
	add r6,r1
	mov.w @r1+,r3
	add r5,r7
	lds r3,fpul
	mov.w @r1,r3
	float fpul,fr3
	lds r3,fpul
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr6
	float fpul,fr3
	fmul fr5,fr6
	fmov fr3,fr7
	bt.s loc_8c0c773e
	fmul fr4,fr7
	fneg fr6

loc_8c0c773e:
	mov 0x0C,r0
	fmov @(r0,r7),fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fsub fr6,fr2
	fmov fr2,@(r0,r4)
	mov 0x10,r0
	fmov @(r0,r7),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mov 0x01,r7
	fadd fr3,fr2
	fsub fr7,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov r0,r2
	cmp/ge r2,r7
	bt loc_8c0c77ce

loc_8c0c7764:
	mov 0x22,r0
	mov.l @(0xC,r4),r5
	mov.b @(r0,r4),r1
	extu.b r1,r1
	shll2 r1
	shll r1
	add r6,r1
	mov.w @r1+,r3
	lds r3,fpul
	mov.w @r1,r3
	mov.b @(r0,r5),r1
	float fpul,fr3
	lds r3,fpul
	extu.b r1,r1
	shll2 r1
	add 0x02,r1
	shll r1
	fmov fr3,fr6
	float fpul,fr3
	add r6,r1
	fmul fr5,fr6
	mov.w @r1+,r3
	lds r3,fpul
	fmov fr3,fr8
	fmul fr4,fr8
	mov.w @r1,r3
	float fpul,fr3
	lds r3,fpul
	fmov fr3,fr7
	float fpul,fr3
	fmul fr5,fr7
	fmov fr3,fr9
	mov.w @(0x2C,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0c77b2
	fmul fr4,fr9
	fneg fr7
	fneg fr6

loc_8c0c77b2:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	add 0x01,r7
	cmp/ge r2,r7
	fadd fr6,fr3
	fsub fr7,fr3
	fmov fr3,@(r0,r5)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr8,fr3
	fsub fr9,fr3
	fmov fr3,@(r0,r5)
	bf.s loc_8c0c7764
	mov r5,r4

loc_8c0c77ce:
	rts
	nop

;----------------------------------------------
loc_8c0c77d2:
	#data 0x02A4
loc_8c0c77d4:
	#data 0x0130
	#align4

loc_8c0c77d8:
	#data bank15.loc_8c15BCB8
loc_8c0c77dc:
	#data 0x3FD55555
loc_8c0c77e0:
	#data 0x40092492

;==============================================
loc_8c0c77e4:
	mov.l r14,@-r15
	mov.l r12,@-r15
	add 0xFC,r15
	mov.l @(0x14,r4),r4
	mova @(0xF8,PC),r0
	fmov @r0,fr8
	mov 0x22,r0
	mov.l @(0x8,r4),r6
	mov.l @(0xF4,PC),r7
	mov.b @(r0,r6),r14
	mova @(0xF4,PC),r0
	fmov @r0,fr5
	mova @(0xF4,PC),r0
	extu.b r14,r14
	fmov @r0,fr4
	shll2 r14
	mov.w @(0xDE,PC),r0
	shll r14
	mov.w @(0xD8,PC),r12
	add r7,r14
	fldi0 fr7
	mov.w @r14+,r3
	add r5,r12
	lds r3,fpul
	mov.w @r14,r3
	float fpul,fr3
	lds r3,fpul
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr6
	float fpul,fr3
	fmul fr5,fr6
	fmov fr3,fr9
	bt.s loc_8c0c7830
	fmul fr4,fr9
	mova @(0xCC,PC),r0
	fneg fr6
	fmov @r0,fr7

loc_8c0c7830:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x01,r14
	fadd fr7,fr3
	fsub fr6,fr3
	fmov fr3,@(r0,r6)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr8,fr3
	fsub fr9,fr3
	fmov fr3,@(r0,r6)
	mov.w @(0x1E,r4),r0
	mov r0,r2
	add 0xFF,r2
	cmp/ge r2,r14
	bt.s loc_8c0c78bc
	mov.l r0,@r15

loc_8c0c7852:
	mov 0x22,r0
	mov r6,r4
	mov.b @(r0,r4),r1
	mov.l @(0x8,r4),r6
	extu.b r1,r1
	shll2 r1
	add 0x02,r1
	shll r1
	add r7,r1
	mov.w @r1+,r3
	lds r3,fpul
	mov.w @r1,r3
	mov.b @(r0,r6),r1
	float fpul,fr3
	lds r3,fpul
	extu.b r1,r1
	shll2 r1
	shll r1
	add r7,r1
	fmov fr3,fr6
	float fpul,fr3
	mov.w @r1+,r3
	fmul fr5,fr6
	lds r3,fpul
	mov.w @r1,r3
	fmov fr3,fr8
	fmul fr4,fr8
	float fpul,fr3
	lds r3,fpul
	fmov fr3,fr7
	float fpul,fr3
	fmul fr5,fr7
	mov.w @(0x50,PC),r0
	fmov fr3,fr9
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0c78a2
	fmul fr4,fr9
	fneg fr7
	fneg fr6

loc_8c0c78a2:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	add 0x01,r14
	cmp/ge r2,r14
	fadd fr6,fr3
	fsub fr7,fr3
	fmov fr3,@(r0,r6)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fadd fr8,fr3
	fsub fr9,fr3
	bf.s loc_8c0c7852
	fmov fr3,@(r0,r6)

loc_8c0c78bc:
	mov 0x20,r0
	mov.b @(r0,r12),r2
	tst r2,r2
	bf loc_8c0c78dc
	mov 0x0C,r0
	fmov @(r0,r12),fr3
	mov 0x34,r0
	fmov @(r0,r6),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x10,r0
	fmov @(r0,r12),fr3
	mov 0x38,r0
	fmov @(r0,r6),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r5)

loc_8c0c78dc:
	add 0x04,r15
	mov.l @r15+,r12
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c78e4:
	#data 0x02A4
loc_8c0c78e6:
	#data 0x0130
	#align4

loc_8c0c78e8:
	#data 0xC0892492
loc_8c0c78ec:
	#data bank15.loc_8c15BCB8
loc_8c0c78f0:
	#data 0x3FD55555
loc_8c0c78f4:
	#data 0x40092492
loc_8c0c78f8:
	#data 0x80000000

;==============================================
loc_8c0c78fc:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x8C,PC),r9
	mov r5,r12
	mov 0x0C,r0
	mov.l @(0x14,r4),r14
	add r12,r9
	mov.l @(0x88,PC),r3
	fmov @(r0,r9),fr3
	mov 0x34,r0
	fmov @(r0,r12),fr2
	mov 0x10,r0
	mov r14,r5
	add 0x34,r5
	fadd fr3,fr2
	fmov fr2,@r15
	fmov @(r0,r9),fr3
	mov 0x38,r0
	fmov @(r0,r12),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r3
	mov r15,r4
	mov r0,r4
	mov.w @(0x60,PC),r0
	mov.b @(r0,r12),r2
	tst r2,r2
	bt loc_8c0c794e
	neg r4,r4

loc_8c0c794e:
	add 0x04,r4
	mov.l @(0x60,PC),r10
	extu.b r4,r4
	fldi0 fr13
	shlr2 r4
	mov 0x22,r0
	shlr r4
	mov.b r4,@(r0,r14)
	mov 0x01,r11
	mov.w @(0x1E,r14),r0
	mov r0,r8
	mova @(0x48,PC),r0
	fmov @r0,fr12
	mova @(0x4C,PC),r0
	fmov @r0,fr14
	cmp/ge r8,r11
	mova @(0x4C,PC),r0
	bt.s loc_8c0c7a2a
	fmov @r0,fr15

loc_8c0c7974:
	mov.l @(0x34,PC),r2
	mov r14,r5
	mov.l @(0x8,r14),r13
	add 0x34,r5
	jsr @r2
	mov r15,r4
	mov r0,r4
	mov.w @(0x22,PC),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bt loc_8c0c798c
	neg r4,r4

loc_8c0c798c:
	add 0x04,r4
	extu.b r4,r4
	shlr2 r4
	mov 0x22,r0
	shlr r4
	mov.b r4,@(r0,r13)
	mov r11,r0
	nop
	cmp/eq 0x01,r0
	bf loc_8c0c79c0
	fmov fr13,fr4
	bra loc_8c0c79e2
	fmov fr12,fr6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
#data 0x02A4
#data 0x01D2
	#align4

loc_8c0c79ac:
	#data bank03.loc_8c03362C
loc_8c0c79b0:
	#data 0xC0892492
loc_8c0c79b4:
	#data bank15.loc_8c15BCB8
loc_8c0c79b8:
	#data 0x40092492
loc_8c0c79bc:
	#data 0x3FD55555

;==============================================
loc_8c0c79c0:
	mov 0x22,r0
	mov.b @(r0,r14),r4
	extu.b r4,r4
	shll2 r4
	add 0x02,r4
	shll r4
	add r10,r4
	mov.w @r4+,r3
	lds r3,fpul
	mov.w @r4,r3
	float fpul,fr3
	lds r3,fpul
	fmov fr3,fr4
	float fpul,fr3
	fmul fr15,fr4
	fmov fr3,fr6
	fmul fr14,fr6

loc_8c0c79e2:
	mov 0x22,r0
	mov.b @(r0,r13),r4
	mov.w @(0x136,PC),r0
	extu.b r4,r4
	shll2 r4
	shll r4
	add r10,r4
	mov.w @r4+,r3
	lds r3,fpul
	mov.w @r4,r3
	float fpul,fr3
	lds r3,fpul
	mov.w @(r0,r13),r3
	tst r3,r3
	fmov fr3,fr5
	float fpul,fr3
	fmul fr15,fr5
	fmov fr3,fr7
	bt.s loc_8c0c7a0e
	fmul fr14,fr7
	fneg fr5
	fneg fr4

loc_8c0c7a0e:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	add 0x01,r11
	cmp/ge r8,r11
	fadd fr4,fr3
	fsub fr5,fr3
	fmov fr3,@(r0,r13)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fadd fr6,fr3
	fsub fr7,fr3
	fmov fr3,@(r0,r13)
	bf.s loc_8c0c7974
	mov r13,r14

loc_8c0c7a2a:
	mov 0x22,r0
	mov.b @(r0,r14),r4
	mov.w @(0xEE,PC),r0
	extu.b r4,r4
	shll2 r4
	add 0x02,r4
	shll r4
	add r10,r4
	mov.w @r4+,r3
	lds r3,fpul
	mov.w @r4,r3
	float fpul,fr3
	lds r3,fpul
	mov.w @(r0,r14),r3
	tst r3,r3
	fmov fr3,fr4
	float fpul,fr3
	fmul fr15,fr4
	fmov fr3,fr5
	bt.s loc_8c0c7a56
	fmul fr14,fr5
	fneg fr4

loc_8c0c7a56:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x0C,r0
	fmov @(r0,r9),fr2
	mov 0x34,r0
	fadd fr4,fr3
	fsub fr2,fr3
	fmov fr3,@(r0,r12)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov @(r0,r9),fr2
	mov 0x38,r0
	fadd fr5,fr3
	fsub fr2,fr3
	fmov fr3,@(r0,r12)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r12)
	add 0x0C,r15
	lds.l @r15+,pr
	fmov @r15+,fr12
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c7a98:
	mov 0x22,r0
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x01,r6
	sts.l pr,@-r15
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt.s loc_8c0c7b28
	mov r6,r13
	mov.w @(0x1C,r4),r0
	mov r6,r7
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1E,r4),r0
	mov r0,r14
	cmp/ge r14,r7
	mova @(0x64,PC),r0
	bt.s loc_8c0c7b2e
	fmov @r0,fr4

loc_8c0c7ac2:
	mov.l @(0xC,r4),r6
	mov 0x64,r1
	mov 0x60,r0
	add r6,r1
	fmov @(r0,r6),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r6)
	mov 0x6C,r0
	fmov fr2,fr3
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf.s loc_8c0c7ae8
	fmov fr2,@(r0,r6)
	fmov @(r0,r6),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r6)

loc_8c0c7ae8:
	fmov @(r0,r6),fr3
	fcmp/gt fr3,fr4
	bt loc_8c0c7af4
	fmov @(r0,r6),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r6)

loc_8c0c7af4:
	fmov @(r0,r6),fr3
	mov 0x22,r2
	add r5,r2
	ftrc fr3,fpul
	mov.b @r2,r2
	mov 0x22,r1
	add 0x01,r7
	add r6,r1
	sts fpul,r0
	extu.b r0,r0
	add 0x04,r0
	shar r0
	shar r0
	shar r0
	cmp/ge r14,r7
	add r2,r0
	and 0x1F,r0
	mov.b r0,@r1
	bf.s loc_8c0c7ac2
	mov r6,r4
	bra loc_8c0c7b2e
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c7b20:
	#data 0x0130
	#align4

loc_8c0c7b24:
	#data 0x43800000

;==============================================
loc_8c0c7b28:
	bsr loc_8c0c7b3a
	nop
	mov r0,r13


loc_8c0c7b2e:
	mov r13,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c7b3a:
	mov.w @(0xC8,PC),r0
	mov.l @(r0,r4),r6
	mov.l @r6+,r5
	tst r5,r5
	bf.s loc_8c0c7b4c
	mov 0x01,r7
	add 0xF8,r6
	mov.l @r6+,r5
	mov 0x00,r7

loc_8c0c7b4c:
	mov.l r6,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	mov.w @r5+,r3
	lds r3,fpul
	float fpul,fr3
	fmov fr3,@(r0,r4)
	mov 0x6C,r0
	mov.w @r5,r3
	fmov @(r0,r4),fr3
	mov 0x68,r0
	lds r3,fpul
	fmov @(r0,r4),fr2
	mov 0x70,r0
	fsub fr3,fr2
	float fpul,fr3
	fmul fr3,fr2
	fldi0 fr3
	fmov fr2,@(r0,r4)
	mova @(0x8C,PC),r0
	fmov @r0,fr4
	mov 0x70,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bf loc_8c0c7b8a
	fmov @(r0,r4),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r4)

loc_8c0c7b8a:
	mov.w @r5+,r3
	fmov @(r0,r4),fr2
	lds r3,fpul
	mov.l @(0x78,PC),r1
	float fpul,fr3
	lds r1,fpul
	mov 0x01,r1
	fmul fr3,fr2
	fsts fpul,fr3
	fmov fr2,@(r0,r4)
	fdiv fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @r5,r0
	fldi0 fr2
	mov.w r0,@(0x1C,r4)
	mov 0x6C,r0
	fmov fr2,@(r0,r4)
	mov.w @(0x1E,r4),r0
	mov r0,r6
	cmp/ge r6,r1
	bt loc_8c0c7c02

loc_8c0c7bb4:
	mov.l @(0xC,r4),r5
	mov 0x60,r0
	fmov @(r0,r5),fr3
	mov 0x6C,r0
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x70,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r5)
	mov.w @(0x1C,r4),r0
	mov.w r0,@(0x1C,r5)
	mov.w @(0x1C,r4),r0
	mov r0,r3
	lds r3,fpul
	mov 0x70,r0
	fmov @(r0,r4),fr2
	mov 0x64,r0
	float fpul,fr3
	fdiv fr3,fr2
	fldi0 fr3
	fmov fr2,@(r0,r5)
	mov 0x6C,r0
	fmov @(r0,r5),fr2
	fcmp/gt fr2,fr3
	bf loc_8c0c7bee
	fmov @(r0,r5),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r5)

loc_8c0c7bee:
	fmov @(r0,r5),fr3
	fcmp/gt fr3,fr4
	bt.s loc_8c0c7bfc
	mov r5,r4
	fmov @(r0,r5),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r5)

loc_8c0c7bfc:
	add 0x01,r1
	cmp/ge r6,r1
	bf loc_8c0c7bb4

loc_8c0c7c02:
	rts
	mov r7,r0

;----------------------------------------------
loc_8c0c7c06:
	#data 0x01B0
	#align4

loc_8c0c7c08:
	#data 0x43800000
loc_8c0c7c0C:
	#data 0x41400000

;===============================================
;unused
loc_8c0c7c10:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x14C,PC),r3
	mov 0x01,r6
	mov.l r4,@r15
	mov.l r5,@(0x4,r15)
	mov 0x03,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0c7c3c
	mov r0,r4
	mov.w @(0x12C,PC),r3
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x4,r15),r2
	mov.l @(0x134,PC),r3
	mov.b r2,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c0c7c3c:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8C0C7C44:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0C7D6C,pc),r0 ; r0 set to 0x8C15BFE0
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0C7C5A:
	mov r4,r3
	mov.l @(loc_8C0C7D70,pc),r1 ; r1 set to 0x8C15BFEc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0C7C6C:
	mov.w @(0xEA,PC),r1
	sts.l pr,@-r15
	mov.w @(0xE8,PC),r0
	add r4,r1
	mov.w @(0xE2,PC),r2
	mov.l @(0xFC,PC),r3
	jsr @r3
	add r5,r2
	mov.w @(0xDE,PC),r0
	mov 0x01,r2
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0xC2,PC),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(0xC4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	fldi0 fr4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mova @(0xA0,PC),r0
	fmov @r0,fr4
	mov.w @(0x78,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c0c7d02
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mova @(0x88,PC),r0
	fmov @r0,fr4

loc_8C0C7D02:
	mov 0x34,r0
	mov.l @(0x88,PC),r3
	fmov @(r0,r5),fr3
	mov 0x2C,r6
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mova @(0x7C,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mov 0x17,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8C0C7D20:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(loc_8C0C7D94,pc),r4 ; r4 set to 0x8C2895F0
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.l r5,@r15
	mov.w @(r0,r4),r3
	mov 0x3B,r0 ; r0 set to 0x3b
	mov.b @(r0,r4),r2
	mov 0x01,r1 ; r1 set to 0x01
	extu.w r3,r3
	extu.b r2,r2
	shad r2, r1 ; r1 ??? bc r2 is ???	
	tst r1,r3
	bf loc_8C0C7DFe
	mov.l @(loc_8C0C7D98,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???	
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C0C7D9c
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0C7D5E,pc),r0 ; r0 set to 0x12c
	bra loc_8C0C7DFe
	mov.b r3,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c7d58:
	#data 0x0E06
loc_8c0c7d5a:
	#data 0x00DC
loc_8c0c7d5c:
	#data 0x00C0
loc_8c0c7d5e:
	#data 0x012c
loc_8c0c7d60:
	#data 0x01A3
loc_8c0c7d62:
	#data 0x0130
	#align4

loc_8C0C7D64:
	#data bank04.loc_8c044F12
loc_8C0C7D68:
	#data loc_8c0c7C44
loc_8C0C7D6C:
	#data bank15.loc_8c15bfE0
loc_8C0C7D70:
	#data bank15.loc_8c15bfEc
loc_8C0C7D74:
	#data bank12.loc_8c129560
loc_8C0C7D78:
	#data bank12.loc_8c1294C8
loc_8C0C7D7C:
	#data 0x41A00000
loc_8C0C7D80:
	#data 0xBF4DB6Db
loc_8C0C7D84:
	#data 0x43415555
loc_8C0C7D88:
	#data 0xC3415555
loc_8C0C7D8c:
	#data 0x43564924
loc_8C0C7D90:
	#data bank03.loc_8c034e8c
loc_8C0C7D94:
	#data 0x8C2895F0
loc_8C0C7D98:
	#data bank03.loc_8c034dee

;==============================================
loc_8c0c7d9c:
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0C7E18,pc),r0
	mov.l @r15,r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c0c7dfe
	mov.w @(loc_8C0C7E18,pc),r0
	mov.l @r15,r2
	fldi0 fr4
	fmov.s @(r0,r2),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14)
	mov 0x5C,r0
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0
	fmov.s fr4,@(r0,r14)

loc_8C0C7DFE:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C7E06:
	mov r4,r3
	mov.l @(loc_8C0C7E1C,pc),r1 ; r1 set to 0x8C15BFF8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c7e18:
	#data 0x041c
	#align4

loc_8C0C7E1C:
	#data bank15.loc_8c15BFF8

;==============================================
loc_8C0C7E20:
	mov.w @(0x11A,PC),r1
	sts.l pr,@-r15
	mov.w @(0x118,PC),r0
	add r4,r1
	mov.w @(0x112,PC),r2
	mov.l @(0x124,PC),r3
	jsr @r3
	add r5,r2
	mov.w @(0x10E,PC),r0
	mov 0x01,r2
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0xF2,PC),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(0xEC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x00,r6
	mov.b r2,@(r0,r4)
	mov 0xF8,r2
	mov.b @(0x4,r4),r0
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xC4,PC),r0
	mov.b r6,@(r0,r4)
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	mov 0x31,r0
	mov.b r2,@(r0,r4)
	mov.w @(0xBA,PC),r0
	mov.w r6,@(r0,r4)
	lds.l @r15+,pr

loc_8C0C7E8E:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf.s loc_8c0c7f24
	mov r4,r13
	mov.w @(0xA4,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bf loc_8c0c7f24
	mov.w @(0x9C,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0c7ebe
	mov.w @(0x92,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0c7f24

loc_8C0C7EBE:
	mov 0x24,r0
	mov r13,r1
	mov.b @(r0,r14),r3
	mov 0xF8,r2
	add 0x34,r1
	mov.b r3,@(r0,r13)
	mov 0x31,r0
	mov.b r2,@(r0,r13)
	mov r14,r2
	mov.l @(0x80,PC),r3
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x70,PC),r0
	mov 0x01,r12
	mov.b @(r0,r14),r2
	tst r12,r2
	bt loc_8c0c7f1c
	mov.b @(r0,r14),r2
	mov 0x01,r3
	xor r3,r2
	mov.b r2,@(r0,r14)
	add 0xEB,r0
	mov.l @(0x68,PC),r2
	jsr @r2
	mov.b r12,@(r0,r13)
	and r12,r0
	mov.w @(0x56,PC),r3
	shll r0
	mov r0,r12
	mov 0x20,r0
	add r14,r3
	mov.b @(r0,r13),r0
	mov.b @r3,r3
	extu.b r0,r0
	extu.b r3,r3
	cmp/eq 0x02,r0
	add r3,r12
	bf loc_8c0c7f10
	bra loc_8c0c7f12
	add 0x15,r12

loc_8C0C7F10:
	add 0x19,r12

loc_8C0C7F12:
	mov.l @(0x48,PC),r3
	mov 0x17,r5
	mov r12,r6
	jsr @r3
	mov r13,r4

loc_8C0C7F1C:
	mov.w @(0x2C,PC),r0
	mov.b @(r0,r14),r0
	tst 0x02,r0
	bt loc_8c0c7f2e

loc_8C0C7F24:
	mov 0x02,r0
	mov.b r0,@(0x4,r13)
	mov 0x00,r3
	mov.w @(0x14,PC),r0
	mov.b r3,@(r0,r13)

loc_8C0C7F2E:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C7F38:
	mov.l @(loc_8C0C7F60,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c7f3e:
	#data 0x00Dc
loc_8c0c7f40:
	#data 0x00C0
loc_8c0c7f42:
	#data 0x012C
loc_8c0c7f44:
	#data 0x01A3
loc_8c0c7f46:
	#data 0x0130
loc_8c0c7f48:
	#data 0x0159
loc_8c0c7f4a:
	#data 0x0158
loc_8c0c7f4c:
	#data 0x0141
loc_8c0c7f4e:
	#data 0x01D2
	#align4

loc_8C0C7F50:
	#data bank12.loc_8c129560
loc_8C0C7F54:
	#data bank12.loc_8c1294C8
loc_8C0C7F58:
	#data bank03.loc_8c03319e
loc_8C0C7F5C:
	#data bank03.loc_8c034e8c
loc_8C0C7F60:
	#data bank04.loc_8c0450C0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;unused
loc_8C0C7F64:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x168,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c7faa
	mov r0,r4
	mov.w @(0x148,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0x154,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	mov 0x21,r2
	mov.l @r15,r3
	add r4,r2
	mov.l r3,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x8,r15),r0
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2

loc_8c0c7faa:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C7FB2:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0C80E8,pc),r0 ; r0 set to 0x8C15C024
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0C7FC8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0C80D4,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0C80D4,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0C80EC,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0C80D6,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0C80D8,pc),r0 ; r0 set to 0x12c
	mov 0x01,r4 ; r4 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r13),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C80DA,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0C80F0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0C80D8,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	mov.w @(loc_8C0C80DC,pc),r0 ; r0 set to 0x130
	extu.b r3,r3
	mov.w r3,@(r0,r14)
	mov r14,r3
	mov 0x34,r0 ; r0 set to 0x34
	add r0,r3
	mov.l @(loc_8C0C80F4,pc),r0 ; r0 set to 0x8C15C004
	mov.l r3,@-r15
	mov 0x21,r3 ; r3 set to 0x21
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r2
	mova @(loc_8C0C80F8,pc),r0  ; r0 set to 0x8C0C80F8
	fmov.s @r0,fr0 ; r0 ??	
	mov 0x1B,r5 ; r5 set to 0x1b
	lds r2,fpul
	mov 0x00,r6 ; r6 set to 0x00
	mov.l @r15+,r2
	mov.l @(loc_8C0C80FC,pc),r3 ; r3 set to 0x8C034C38
	float fpul,fr3
	fmov.s @r2,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r2
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???	
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???	
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0C808e
	mov.l @r15+,r14

loc_8C0C8088:
	mov.l @(loc_8C0C8100,pc),r3 ; r3 set to 0x8C034D8c
	jmp @r3
	nop

loc_8C0C808E:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0C80DE,pc),r0 ; r0 set to 0x159
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x13,r0
	bt loc_8C0C80Ac
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C80AC:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0C8104,pc),r1 ; r1 set to 0x8C15C030
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C80C0:
	mov r4,r3
	mov.l @(loc_8C0C8108,pc),r1 ; r1 set to 0x8C15C034
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C80D2:
	#data 0x0F00
loc_8C0C80D4:
	#data 0x00Dc
loc_8C0C80D6:
	#data 0x00C0
loc_8C0C80D8:
	#data 0x012c
loc_8C0C80DA:
	#data 0x01A3
loc_8C0C80DC:
	#data 0x0130
loc_8C0C80DE:
	#data 0x0159
	#align4

loc_8C0C80E0:
	#data bank04.loc_8c044F12
loc_8C0C80E4:
	#data loc_8c0c7FB2
loc_8C0C80E8:
	#data bank15.loc_8c15c024
loc_8C0C80EC:
	#data bank12.loc_8c129560
loc_8C0C80F0:
	#data bank12.loc_8c1294C8
loc_8C0C80F4:
	#data bank15.loc_8c15c004
loc_8C0C80F8:
	#data 0x3FD55555
loc_8C0C80FC:
	#data bank03.loc_8c034C38
loc_8C0C8100:
	#data bank03.loc_8c034D8c
loc_8C0C8104:
	#data bank15.loc_8c15c030
loc_8C0C8108:
	#data bank15.loc_8c15c034

;==============================================
loc_8C0C810C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x122,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x11A,PC),r2
	add 0x01,r0
	mov.l @(0x120,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x114,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x110,PC),r0
	mov 0x01,r4
	mov r14,r1
	add 0x50,r1
	mov.b r4,@(r0,r14)
	mov.b @(0x2,r13),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xF4,PC),r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xCE,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	mov.l @(0xD0,PC),r4
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	shll r0
	mov.w @(r0,r4),r3
	mova @(0xC4,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r4
	mov.w @(0x2,r4),r0
	mov r0,r3
	lds r3,fpul
	mova @(0xA8,PC),r0
	fmov @r0,fr1
	mov 0x60,r0
	float fpul,fr3
	fmul fr1,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x8A,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0c81c6
	mov 0x11,r6
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0C81C6:
	mov.l @(0x90,PC),r3
	mov 0x17,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0c81fc
	mov.l @r15+,r14

loc_8C0C81DA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c81f6
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x48,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0C81F6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C81FC:
	mov.l r14,@-r15
	mov 0x5C,r0 ; r0 set to 0x5c
	mov r4,r14
	fmov.s @(r0,r14),fr3
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0C8260,pc),r1 ; r1 set to 0x8C15C044
	fmov.s @(r0,r5),fr2
	mov r14,r4
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x38
	shll2 r0 ; r0 set to 0xE0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0C8228:
	mov r4,r3
	mov.l @(loc_8C0C8264,pc),r1 ; r1 set to 0x8C15C048
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c823a:
	#data 0x00Dc
loc_8c0c823c:
	#data 0x00C0
loc_8c0c823e:
	#data 0x012C
loc_8c0c8240:
	#data 0x01A3
loc_8c0c8242:
	#data 0x0130
	#align4

loc_8C0C8244:
	#data bank12.loc_8c129560
loc_8C0C8248:
	#data bank12.loc_8c1294C8
loc_8C0C824C:
	#data bank15.loc_8c15c008
loc_8C0C8250:
	#data 0x3FD55555
loc_8C0C8254:
	#data 0x40092492
loc_8C0C8258:
	#data bank03.loc_8c034e8c
loc_8C0C825C:
	#data bank03.loc_8c034dee
loc_8C0C8260:
	#data bank15.loc_8c15c044
loc_8C0C8264:
	#data bank15.loc_8c15c048

;==============================================
loc_8C0C8268:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0C8384,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0C8384,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0C8390,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0C8386,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0C8388,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r13),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C838A,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r13),r2 ; r2 ??? bc r13 is ???	
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0C8394,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0C83A4,pc),r4 ; r4 set to 0x8C15C010
	mov.b @(r0,r13),r2
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0C8388,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r2
	mov.l @(loc_8C0C8398,pc),r0 ; r0 set to 0x8C15C018
	extu.b r2,r2
	mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???	
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	mov.l @(loc_8C0C839C,pc),r3 ; r3 set to 0x8C26A5A8
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r3,fr3 ; r3 ??	
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0C83A0,pc),r0  ; r0 set to 0x8C0C83A0
	fmov.s @r0,fr4 ; r4 ??	
	mov.w @(loc_8C0C838C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8C0C8318
	mov 0x21,r2 ; r2 set to 0x21
	fmov fr4,fr0 ; r0 ??? bc r4 is ???	
	add r14,r2 ; r2 ??? bc r14 is ???	
	mov.b @r2,r2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	extu.b r2,r2
	shll r2
	add r2,r4
	mov.w @r4,r2
	lds r2,fpul
	float fpul,fr3
	bra loc_8C0C8332
	fmac fr0,fr3,fr2

loc_8C0C8318:
	mov 0x21,r1 ; r1 set to 0x21
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.b @r1,r1
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	extu.b r1,r1
	shll r1
	add r1,r4
	mov.w @r4,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C0C8332:
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0C83A8,pc),r0  ; r0 set to 0x8C0C83A8, r0 init to 0x8C0C83A8
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	mov.l @(loc_8C0C83B0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x13,r5 ; r5 set to 0x13, r5 set to 0x13
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0C83AC,pc),r0  ; r0 set to 0x8C0C83AC, r0 set to 0x8C0C83Ac
	fmov.s @r0,fr3 ; r3 ??, r3 ??	
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	mov 0x07,r6 ; r6 set to 0x07, r6 set to 0x07
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov r13,r5 ; r5 ??? bc r13 is ???, r5 ??? bc r13 is ???	
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???	
	mov r14,r4
	extu.b r0,r0
	shll2 r0
	shll r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0C8442
	mov.l @r15+,r14

;==============================================
loc_8C0C8366:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0c8380
	mov.w @(0x10,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r4)
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8C0C8380:
	rts
	nop

;----------------------------------------------
loc_8C0C8384:
	#data 0x00Dc
loc_8C0C8386:
	#data 0x00C0
loc_8C0C8388:
	#data 0x012c
loc_8C0C838A:
	#data 0x01A3
loc_8C0C838C:
	#data 0x0130
	#align4

loc_8C0C8390:
	#data bank12.loc_8c129560
loc_8C0C8394:
	#data bank12.loc_8c1294C8
loc_8C0C8398:
	#data bank15.loc_8c15c018
loc_8C0C839C:
	#data 0x8C26A5A8
loc_8C0C83A0:
	#data 0x3FD55555
loc_8C0C83A4:
	#data bank15.loc_8c15c010
loc_8C0C83A8:
	#data 0xC14DB6Db
loc_8C0C83AC:
	#data 0xBF4DB6Db
loc_8C0C83B0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0C83B4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0C84A4,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov 0x60,r1 ; r1 set to 0x60
	mov.l @(loc_8C0C84A8,pc),r4 ; r4 set to 0x8C15C01c
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
	fmov.s @(r0,r14),fr2
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	mov.l @r15,r3
	extu.b r0,r0
	shll r0
	mov.w @(r0,r4),r2
	mov.w @(loc_8C0C849E,pc),r0 ; r0 set to 0x41c
	lds r2,fpul
	fmov.s @(r0,r3),fr2
	mov 0x38,r0 ; r0 set to 0x38
	float fpul,fr3
	fadd fr3,fr2
	fmov.s @(r0,r14),fr3
	fcmp/gt fr3,fr2
	bf loc_8C0C8434
	mov 0x21,r0 ; r0 set to 0x21
	mov.l @r15,r2
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	mov 0x13,r5 ; r5 set to 0x13
	extu.b r0,r0
	shll r0
	mov.w @(r0,r4),r3
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov.w @(loc_8C0C849E,pc),r0 ; r0 set to 0x41c
	lds r3,fpul
	fmov.s @(r0,r2),fr2
	mov 0x38,r0 ; r0 set to 0x38
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x05,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r6
	add 0x03,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0C84AC,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	mov.l @r15+,r14

loc_8C0C8434:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C843C:
	mov.l @(loc_8C0C84A4,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

;==============================================
loc_8C0C8442:
	mov.l r14,@-r15
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x0D,r3 ; r3 set to 0x0d
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0C84A0,pc),r0 ; r0 set to 0x159
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x13,r0
	bt loc_8C0C8460
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C8460:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0C84B0,pc),r1 ; r1 set to 0x8C15C058
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C8474:
	mov r4,r3
	mov.l @(loc_8C0C84B4,pc),r1 ; r1 set to 0x8C15C064
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0C8486:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C84A2,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0C8494:
	mov.l @(loc_8C0C84B8,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0C84A2,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C849E:
	#data 0x041c
loc_8C0C84A0:
	#data 0x0159
loc_8C0C84A2:
	#data 0x012c
	#align4

loc_8C0C84A4:
	#data bank03.loc_8c034dee
loc_8C0C84A8:
	#data bank15.loc_8c15c01c
loc_8C0C84AC:
	#data bank03.loc_8c034e8c
loc_8C0C84B0:
	#data bank15.loc_8c15c058
loc_8C0C84B4:
	#data bank15.loc_8c15c064
loc_8C0C84B8:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0c84bc:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x15C,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c84e2
	mov r0,r4
	mov.l @(0x14C,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c0c84e2:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0
	sts.l pr,@-r15

;==============================================
;unused
loc_8c0c84ec:
	add 0xF8,r15
	mov.l @(0x130,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x04,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c8510
	mov r0,r4
	mov.l @(0x120,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c0c8510:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C8518:
	mov r4,r3
	mov.l @(loc_8C0C8628,pc),r1 ; r1 set to 0x8C15C0E0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C852A:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0C8614,pc),r3 ; r3 set to 0x1000
	mov.l r13,@-r15
	mov.w @(loc_8C0C8616,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0C8616,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x04,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C0C8618,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0C862C,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???	
	mov.w @(loc_8C0C861A,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x02,r4),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r4),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C861C,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r4),r2 ; r2 ??? bc r4 is ???	
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r4),r3
	mov r4,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0C8630,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0x24,r1 ; r1 set to 0x24
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.b r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r13
	mov.l @(loc_8C0C8634,pc),r2 ; r2 set to 0x8C15C074
	extu.b r13,r13
	mov r13,r3 ; r3 ??? bc r13 is ???	
	shll2 r3
	shll r13
	add r3,r13
	add r2,r13
	mov.b @(0x04,r13),r0
	mov.b r0,@r1
	mova @(loc_8C0C8638,pc),r0  ; r0 set to 0x8C0C8638
	fmov.s @r0,fr4
	mov.w @(loc_8C0C861E,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0C85C4
	mov.w @r13,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???	
	lds r3,fpul
	fmov fr4,fr0 ; r0 ??? bc r4 is ???	
	float fpul,fr3
	bra loc_8C0C85D2
	fmac fr0,fr3,fr2

loc_8C0C85C4:
	mov.w @r13,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C0C85D2:
	fmov.s fr2,@(r0,r14)
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov.w @(0x02,r13),r0
	mov r0,r3 ; r3 set to 0x34
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C0C8640,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	fmov.s @(r0,r4),fr2
	mova @(loc_8C0C863C,pc),r0  ; r0 set to 0x8C0C863C, r0 set to 0x8C0C863c
	float fpul,fr3
	fmov.s @r0,fr0 ; r0 ??, r0 ??	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.b @(0x05,r13),r0
	mov r0,r6 ; r6 set to 0x38, r6 set to 0x38
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0C85FE:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20, r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	mov.l @(loc_8C0C8644,pc),r0 ; r0 set to 0x8C15C0F0, r0 set to 0x8C15C0F0, r0 set to 0x8C15C0F0
	extu.b r3,r3
	mov.l @(0x18,r14),r5 ; r5 ??? bc r14 is ???, r5 ??? bc r14 is ???	
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C8614:
	#data 0x1000
loc_8C0C8616:
	#data 0x00Dc
loc_8C0C8618:
	#data 0x00C0
loc_8C0C861A:
	#data 0x012c
loc_8C0C861C:
	#data 0x01A3
loc_8C0C861E:
	#data 0x0130
	#align4

loc_8C0C8620:
	#data bank04.loc_8c044F12
loc_8C0C8624:
	#data loc_8c0c8518
loc_8C0C8628:
	#data bank15.loc_8c15c0E0
loc_8C0C862C:
	#data bank12.loc_8c129560
loc_8C0C8630:
	#data bank12.loc_8c1294C8
loc_8C0C8634:
	#data bank15.loc_8c15c074
loc_8C0C8638:
	#data 0x3FD55555
loc_8C0C863C:
	#data 0x40092492
loc_8C0C8640:
	#data bank03.loc_8c034C38
loc_8C0C8644:
	#data bank15.loc_8c15c0F0

;==============================================
loc_8C0C8648:
	mov r4,r3
	mov.l @(loc_8C0C8778,pc),r1 ; r1 set to 0x8C15C138
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0C865A:
	mov.b @(0x05,r4),r0
	mov.l @(loc_8C0C877C,pc),r6 ; r6 set to 0x8C26A518
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C0C8764,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8C0C8674
	mova @(loc_8C0C8780,pc),r0  ; r0 set to 0x8C0C8780
	fmov.s @r0,fr3
	mov.w @(loc_8C0C8766,pc),r0 ; r0 set to 0x8c
	bra loc_8C0C867a
	nop

loc_8C0C8674:
	mova @(loc_8C0C8784,pc),r0  ; r0 init to 0x8C0C8784
	fmov.s @r0,fr3
	mov.w @(loc_8C0C8768,pc),r0 ; r0 set to 0x88

loc_8C0C867A:
	fmov.s @(r0,r6),fr2
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0C876A,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	fmov.s @(r0,r5),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C8764,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8C0C86A0
	mova @(loc_8C0C8788,pc),r0  ; r0 set to 0x8C0C8788, r0 set to 0x8C0C8788
	fmov.s @r0,fr3
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0C878C,pc),r0  ; r0 set to 0x8C0C878C, r0 set to 0x8C0C878c
	bra loc_8C0C86Ac
	fmov.s @r0,fr3

loc_8c0c86a0:
	mova @(loc_8C0C8790,pc),r0
	fmov.s @r0,fr3
	mov 0x5C,r0
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0C8794,pc),r0
	fmov.s @r0,fr3

loc_8c0c86ac:
	mov 0x68,r0
	fldi0 fr4
	fmov.s fr3,@(r0,r4)
	mov 0x60,r0
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0
	fmov.s fr4,@(r0,r4)

loc_8c0c86ba:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0c8798,pc),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0
	fmov.s @(r0,r14),fr3
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	fmul fr3,fr2
	fldi0 fr3
	fcmp/gt fr3,fr2
	bf loc_8c0c86f6
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)

loc_8c0c86f6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0C86FC:
	mov.l @(loc_8C0C8798,pc),r3 ; r3 set to 0x8C034D8c
	jmp @r3
	nop

;==============================================
loc_8C0C8702:
	mov.l r14,@-r15
	add 0xFC,r15
	mov.w @(0x62,PC),r0
	mov r5,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0c8724
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bf loc_8c0c8724
	mov.w @(0x52,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0c8736

loc_8C0C8724:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x42,PC),r0
	mov.b r3,@(r0,r4)
	add 0x04,r15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C8736:
	mov 0x20,r0
	mov.l @(0x60,PC),r1
	mov.b @(r0,r4),r2
	mov 0x1B,r5
	mov.w @(0x32,PC),r0
	extu.b r2,r2
	mov r2,r3
	shll2 r3
	shll r2
	add r3,r2
	add r1,r2
	mov r2,r6
	mov.l r2,@r15
	mov.b @(r0,r14),r7
	mov.b @(0x5,r6),r0
	mov r0,r6
	add 0x04,r15
	mov.l @(0x44,PC),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	add 0x04,r15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C8764:
	#data 0x0130
loc_8C0C8766:
	#data 0x008c
loc_8C0C8768:
	#data 0x0088
loc_8C0C876A:
	#data 0x041c
loc_8c0c876c:
	#data 0x0141
loc_8c0c876e:
	#data 0x01D0
loc_8c0c8770:
	#data 0x01E8
loc_8c0c8772:
	#data 0x012C
loc_8c0c8774:
	#data 0x0140
	#align4

loc_8C0C8778:
	#data bank15.loc_8c15c138
loc_8C0C877C:
	#data 0x8C26A518
loc_8C0C8780:
	#data 0x433AAAAa
loc_8C0C8784:
	#data 0xC33AAAAa
loc_8C0C8788:
	#data 0xC1555555
loc_8C0C878C:
	#data 0x3ED55555
loc_8c0c8790:
	#data 0x41555555
loc_8c0c8794:
	#data 0xBED55555
loc_8C0C8798:
	#data bank03.loc_8c034D8c
loc_8C0C879C:
	#data bank15.loc_8c15c074
loc_8C0C87A0:
	#data bank03.loc_8c034CD6

;==============================================
loc_8C0C87A4:
	mov.l r14,@-r15
	add 0xFC,r15
	mov.w @(0x128,PC),r0
	mov r5,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0c87bc
	mov.w @(0x120,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x22,r0
	bt loc_8c0c87ce

loc_8C0C87BC:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x110,PC),r0
	mov.b r3,@(r0,r4)
	add 0x04,r15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C87CE:
	mov 0x20,r0
	mov.l @(0x10C,PC),r1
	mov.b @(r0,r4),r2
	mov 0x1B,r5
	mov.w @(0x100,PC),r0
	extu.b r2,r2
	mov r2,r3
	shll2 r3
	shll r2
	add r3,r2
	add r1,r2
	mov r2,r6
	mov.l r2,@r15
	mov.b @(r0,r14),r7
	mov.b @(0x5,r6),r0
	mov r0,r6
	add 0x04,r15
	mov.l @(0xF0,PC),r3
	jmp @r3
	mov.l @r15+,r14
	add 0x04,r15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C87FC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0C88E8,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r5,r13
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0C881e
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0C88D8,pc),r0 ; r0 set to 0x12c
	bra loc_8C0C8872
	mov.b r3,@(r0,r14)

loc_8C0C881E:
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0C88E0,pc),r2 ; r2 set to 0x8C15C074
	mov.b @(r0,r14),r4
	mova @(loc_8C0C88EC,pc),r0  ; r0 set to 0x8C0C88Ec
	fmov.s @r0,fr4
	extu.b r4,r4
	mov.w @(loc_8C0C88DC,pc),r0 ; r0 set to 0x130
	mov r4,r3
	shll r4
	shll2 r3
	add r3,r4
	mov.w @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C0C884c
	add r2,r4
	mov.w @r4,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr2 ; r2 ??? bc r13 is ???	
	lds r3,fpul
	fmov fr4,fr0 ; r0 ??? bc r4 is ???	
	float fpul,fr3
	bra loc_8C0C885a
	fmac fr0,fr3,fr2

loc_8C0C884C:
	mov.w @r4,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C0C885A:
	fmov.s fr2,@(r0,r14)
	mov.w @(0x02,r4),r0
	mov r0,r3 ; r3 set to 0x34
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r13),fr2
	mova @(loc_8C0C88F0,pc),r0  ; r0 set to 0x8C0C88F0, r0 set to 0x8C0C88F0
	float fpul,fr3
	fmov.s @r0,fr0 ; r0 ??, r0 ??	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)

loc_8C0C8872:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C887A:
	mov r4,r3
	mov.l @(loc_8C0C88F4,pc),r1 ; r1 set to 0x8C15C144
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C888C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(loc_8C0C88F8,pc),r3 ; r3 set to 0x8C044F12
	mov.l r5,@r15
	mov 0x03,r5 ; r5 set to 0x03
	mov.b @(0x05,r14),r0
	mov 0x02,r6 ; r6 set to 0x02
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x0A,r0 ; r0 set to 0x0a
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt/s loc_8C0C890a
	mov r0,r13 ; r13 set to 0x0a
	mov.l @(loc_8C0C88FC,pc),r3 ; r3 set to 0x8C0C8518
	mov.l r3,@(0x10,r13)  ; r13 ??	
	mov.l @r15,r2
	mov.l r2,@(0x18,r13)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0 ; r0 set to 0x09
	mov.w r0,@(0x1E,r13)
	bsr loc_8C0C9070
	mov r14,r4
	mova @(loc_8C0C8900,pc),r0  ; r0 set to 0x8C0C8900
	fmov.s @r0,fr3 ; r3 ??	
	fcmp/gt fr0,fr3
	bt loc_8C0C8904
	mov 0x20,r0 ; r0 set to 0x20
	mov 0x05,r2 ; r2 set to 0x05
	bra loc_8C0C890a
	mov.b r2,@(r0,r13)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c88d4:
	#data 0x0141
loc_8c0c88d6:
	#data 0x01d0
loc_8c0c88d8:
	#data 0x012c
loc_8c0c88da:
	#data 0x0140
loc_8c0c88dc:
	#data 0x0130
	#align4

loc_8C0C88E0:
	#data bank15.loc_8c15c074
loc_8C0C88E4:
	#data bank03.loc_8c034CD6
loc_8C0C88E8:
	#data bank03.loc_8c034D8c
loc_8C0C88EC:
	#data 0x3FD55555
loc_8C0C88F0:
	#data 0x40092492
loc_8C0C88F4:
	#data bank15.loc_8c15c144
loc_8C0C88F8:
	#data bank04.loc_8c044F12
loc_8C0C88FC:
	#data loc_8c0c8518
loc_8C0C8900:
	#data 0x42A00000

;==============================================
loc_8c0c8904:
	mov 0x20,r0
	mov 0x06,r1
	mov.b r1,@(r0,r13)

loc_8C0C890A:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0C8916:
	mov.w @(loc_8C0C8A18,pc),r0 ; r0 set to 0x140, r0 set to 0x140
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8C0C8938
	mov.w @(loc_8C0C8A1A,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8C0C8938
	mov.w @(loc_8C0C8A1C,pc),r0 ; r0 set to 0x1E9, r0 set to 0x1E9
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8C0C8938
	mov.l @(loc_8C0C8A24,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
	jmp @r3
	nop

loc_8C0C8938:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C8A1E,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0C8946:
	mov r4,r3
	mov.l @(loc_8C0C8A28,pc),r1 ; r1 set to 0x8C15C14c
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C8958:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x05,r14),r0
	mov.l @(0x08,r14),r4
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8C0C897c
	mova @(loc_8C0C8A2C,pc),r0  ; r0 set to 0x8C0C8A2c
	bra loc_8C0C8980
	fmov.s @r0,fr4

loc_8c0c897c:
	mova @(loc_8C0C8A30,pc),r0
	fmov.s @r0,fr4

loc_8c0c8980:
	mov.w @(loc_8C0C8A20,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0c898c
	mov 0x34,r0
	fneg fr4

loc_8c0c898c:
	fmov.s @(r0,r4),fr3
	mov 0x03,r5
	mov.l @(loc_8c0c8a34,pc),r3
	mov 0x02,r6
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt/s loc_8c0c89d6
	mov r0,r13
	mov.l @(loc_8c0c8a38,pc),r3
	mov.l r3,@(0x10,r13)
	mov.l @r15,r2
	mov.l r2,@(0x18,r13)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r13)
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bt loc_8c0c89d0
	bsr loc_8c0c9070
	mov r14,r4
	mova @(loc_8C0C8A3C,pc),r0
	fmov.s @r0,fr3
	fcmp/gt fr0,fr3
	bt loc_8c0c89d0
	mov 0x20,r0
	mov 0x05,r2
	bra loc_8c0c89d6
	mov.b r2,@(r0,r13)

loc_8c0c89d0:
	mov 0x20,r0
	mov 0x06,r1
	mov.b r1,@(r0,r13)

loc_8c0c89d6:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0C89E2:
	mov.l @(0x08,r4),r5
	mov 0x02,r3 ; r3 set to 0x02
	mov.b @(0x04,r5),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8C0C89Fc
	mov.b @(0x04,r4),r0
	mov 0x00,r2 ; r2 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C8A1E,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r2,@(r0,r4)

;----------------------------------------------
loc_8C0C89FC:
	mov.l @(loc_8C0C8A24,pc),r3 ; r3 set to 0x8C034D8c
	jmp @r3
	nop

;UNUSED
	rts
	nop

;----------------------------------------------
loc_8C0C8A06:
	mov r4,r3
	mov.l @(loc_8C0C8A40,pc),r1 ; r1 set to 0x8C15C154
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C8A18:
	#data 0x0140
loc_8C0C8A1A:
	#data 0x01D0
loc_8C0C8A1C:
	#data 0x01E9
loc_8C0C8A1E:
	#data 0x012c
loc_8c0c8a20:
	#data 0x0130
	#align4

loc_8C0C8A24:
	#data bank03.loc_8c034D8c
loc_8C0C8A28:
	#data bank15.loc_8c15c14c
loc_8C0C8A2C:
	#data 0xC2555555
loc_8c0c8a30:
	#data 0xC2A00000
loc_8C0C8A34:
	#data bank04.loc_8c044F12
loc_8C0C8A38:
	#data loc_8c0c8518
loc_8c0c8a3c:
	#data 0x42555555
loc_8C0C8A40:
	#data bank15.loc_8c15c154

;==============================================
loc_8C0C8A44:
	mov.b @(0x05,r4),r0
	mov.l @(0x08,r4),r6
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r6),r0 ; r0 ??? bc r6 is ???	
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8C0C8A5c
	mova @(loc_8C0C8B24,pc),r0  ; r0 set to 0x8C0C8B24
	bra loc_8C0C8A60
	fmov.s @r0,fr4

loc_8c0c8a5c:
	mova @(loc_8C0C8B28,pc),r0
	fmov.s @r0,fr4

loc_8c0c8a60:
	mov.w @(loc_8C0C8B22,pc),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt/s loc_8c0c8a6c
	mov 0x34,r0
	fneg fr4

loc_8c0c8a6c:
	fmov.s @(r0,r6),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r6),fr3
	bra loc_8c0c89e2
	fmov.s fr3,@(r0,r4)

loc_8C0C8A7A:
	mov r4,r3
	mov.l @(loc_8C0C8B2C,pc),r1 ; r1 set to 0x8C15C15c
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C8A8C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(loc_8C0C8B30,pc),r3 ; r3 set to 0x8C044F12
	mov.l r5,@r15
	mov 0x03,r5 ; r5 set to 0x03
	mov.b @(0x05,r14),r0
	mov 0x02,r6 ; r6 set to 0x02
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x0A,r0 ; r0 set to 0x0a
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt/s loc_8C0C8ADa
	mov r0,r13 ; r13 set to 0x0a
	mov.l @(loc_8C0C8B34,pc),r3 ; r3 set to 0x8C0C8518
	mov.l r3,@(0x10,r13)  ; r13 ??	
	mov.l @r15,r2
	mov.l r2,@(0x18,r13)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0 ; r0 set to 0x09
	mov.w r0,@(0x1E,r13)
	bsr loc_8C0C9070
	mov r14,r4
	mova @(loc_8C0C8B38,pc),r0  ; r0 set to 0x8C0C8B38
	fmov.s @r0,fr3 ; r3 ??	
	fcmp/gt fr0,fr3
	bt loc_8C0C8AD4
	mov 0x20,r0 ; r0 set to 0x20
	mov 0x08,r2 ; r2 set to 0x08
	bra loc_8C0C8ADa
	mov.b r2,@(r0,r13)

loc_8c0c8ad4:
	mov 0x20,r0
	mov 0x09,r1
	mov.b r1,@(r0,r13)

loc_8C0C8ADA:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0C8916
	mov.l @r15+,r14

loc_8C0C8AE8:
	mov r4,r3
	mov.l @(loc_8C0C8B3C,pc),r1 ; r1 set to 0x8C15C164
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C8AFA:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x05,r14),r0
	mov.l @(0x08,r14),r4
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8C0C8B48
	mova @(loc_8C0C8B40,pc),r0  ; r0 set to 0x8C0C8B40
	fmov.s @r0,fr4
	mova @(loc_8C0C8B44,pc),r0  ; r0 set to 0x8C0C8B44
	bra loc_8C0C8B50
	fmov.s @r0,fr5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c8b22:
	#data 0x0130
	#align4

loc_8C0C8B24:
	#data 0xC1D55555
loc_8c0c8b28:
	#data 0xC2555555
loc_8C0C8B2C:
	#data bank15.loc_8c15c15c
loc_8C0C8B30:
	#data bank04.loc_8c044F12
loc_8C0C8B34:
	#data loc_8c0c8518
loc_8C0C8B38:
	#data 0x42855555
loc_8C0C8B3C:
	#data bank15.loc_8c15c164
loc_8C0C8B40:
	#data 0xC2200000
loc_8C0C8B44:
	#data 0x42892492

;==============================================
loc_8c0c8b48:
	mova @(loc_8C0C8C3C,pc),r0
	fmov.s @r0,fr4
	mova @(loc_8C0C8C40,pc),r0
	fmov.s @r0,fr5

loc_8c0c8b50:
	mov.w @(loc_8C0C8C38,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0c8b5c
	mov 0x34,r0
	fneg fr4

loc_8c0c8b5c:
	fmov.s @(r0,r4),fr3
	mov 0x03,r5
	mov.l @(loc_8c0c8c44,pc),r3
	mov 0x02,r6
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r4),fr3
	fadd fr5,fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt/s loc_8c0c8ba8
	mov r0,r13
	mov.l @(loc_8c0c8c48,pc),r3
	mov.l r3,@(0x10,r13)
	mov.l @r15,r2
	mov.l r2,@(0x18,r13)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r13)
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bt loc_8c0c8ba2
	bsr loc_8c0c9070
	mov r14,r4
	mova @(loc_8C0C8C4C,pc),r0
	fmov.s @r0,fr3
	fcmp/gt fr0,fr3
	bt loc_8c0c8ba2
	mov 0x20,r0
	mov 0x08,r2
	bra loc_8c0c8ba8
	mov.b r2,@(r0,r13)

loc_8c0c8ba2:
	mov 0x20,r0
	mov 0x09,r1
	mov.b r1,@(r0,r13)

loc_8c0c8ba8:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0c89e2
	mov.l @r15+,r14

loc_8C0C8BB6:
	mov r4,r3
	mov.l @(loc_8C0C8C50,pc),r1 ; r1 set to 0x8C15C16c
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C8BC8:
	mov.b @(0x05,r4),r0
	mov.l @(0x08,r4),r6
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r6),r0 ; r0 ??? bc r6 is ???	
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8C0C8BE4
	mova @(loc_8C0C8C54,pc),r0  ; r0 set to 0x8C0C8C54
	fmov.s @r0,fr4
	mova @(loc_8C0C8C58,pc),r0  ; r0 set to 0x8C0C8C58
	bra loc_8C0C8BEc
	fmov.s @r0,fr5

loc_8c0c8be4:
	mova @(loc_8C0C8C5C,pc),r0
	fmov.s @r0,fr4
	mova @(loc_8C0C8C40,pc),r0
	fmov.s @r0,fr5

loc_8c0c8bec:
	mov.w @(loc_8C0C8C38,pc),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt/s loc_8c0c8bf8
	mov 0x34,r0
	fneg fr4

loc_8c0c8bf8:
	fmov.s @(r0,r6),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r6),fr3
	fadd fr5,fr3
	bra loc_8c0c89e2
	fmov.s fr3,@(r0,r4)

loc_8C0C8C08:
	add 0xFC,r15
	mov.l @(loc_8C0C8C60,pc),r2 ; r2 set to 0x8C2895F6
	mov.l r4,@r15
	mov 0x01,r4 ; r4 set to 0x01
	mov.b @(0x02,r5),r0
	mov r4,r1 ; r1 set to 0x01
	mov.b @r2,r3
	extu.b r0,r0
	xor r4,r0
	shad r0, r1 ; r1 ??? bc r0 is ???	
	extu.b r3,r3
	tst r1,r3
	bf loc_8C0C8C34
	mov.l @r15,r2 ; r2 ??? bc r15 is ???	
	mov.l @(loc_8C0C8C64,pc),r1 ; r1 set to 0x8C15C174
	mov.b @(0x05,r2),r0
	mov r2,r4 ; r4 ??? bc r2 is ???	
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C8C34:
	rts
	add 0x04,r15

;----------------------------------------------
loc_8c0c8c38:
	#data 0x0130
	#align4

loc_8c0c8c3c:
	#data 0xC2A00000
loc_8c0c8c40:
	#data 0x42CDB6Db
loc_8C0C8C44:
	#data bank04.loc_8c044F12
loc_8C0C8C48:
	#data loc_8c0c8518
loc_8c0c8c4c:
	#data 0x42555555
loc_8C0C8C50:
	#data bank15.loc_8c15c16c
loc_8C0C8C54:
	#data 0xC0555555
loc_8C0C8C58:
	#data 0x42092492
loc_8c0c8c5c:
	#data 0xC2200000
loc_8C0C8C60:
	#data 0x8C2895F6
loc_8C0C8C64:
	#data bank15.loc_8c15c174

;==============================================
loc_8C0C8C68:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(loc_8C0C8D50,pc),r3 ; r3 set to 0x8C044F12
	mov.l r5,@r15
	mov 0x04,r5 ; r5 set to 0x04
	mov.b @(0x05,r14),r0
	mov 0x02,r6 ; r6 set to 0x02
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x0A,r0 ; r0 set to 0x0a
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt/s loc_8C0C8CB6
	mov r0,r13 ; r13 set to 0x0a
	mov.l @(loc_8C0C8D54,pc),r3 ; r3 set to 0x8C0C8518
	mov.l r3,@(0x10,r13)  ; r13 ??	
	mov.l @r15,r2
	mov.l r2,@(0x18,r13)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0 ; r0 set to 0x09
	mov.w r0,@(0x1E,r13)
	bsr loc_8C0C9070
	mov r14,r4
	mova @(loc_8C0C8D58,pc),r0  ; r0 set to 0x8C0C8D58
	fmov.s @r0,fr3 ; r3 ??	
	fcmp/gt fr0,fr3
	bt loc_8C0C8CB0
	mov 0x20,r0 ; r0 set to 0x20
	mov 0x0B,r2 ; r2 set to 0x0b
	bra loc_8C0C8CB6
	mov.b r2,@(r0,r13)

loc_8c0c8cb0:
	mov 0x20,r0
	mov 0x0C,r1
	mov.b r1,@(r0,r13)

loc_8C0C8CB6:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0C8CC2:
	mov.w @(loc_8C0C8D46,pc),r0 ; r0 set to 0x140, r0 set to 0x140
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8C0C8CE4
	mov.w @(loc_8C0C8D48,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8C0C8CE4
	mov.w @(loc_8C0C8D4A,pc),r0 ; r0 set to 0x1E9, r0 set to 0x1E9
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8C0C8CE4
	mov.l @(loc_8C0C8D5C,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
	jmp @r3
	nop

loc_8C0C8CE4:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C8D4C,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0C8CF2:
	add 0xFC,r15
	mov.l @(loc_8C0C8D60,pc),r2 ; r2 set to 0x8C2895F6
	mov.l r4,@r15
	mov 0x01,r4 ; r4 set to 0x01
	mov.b @(0x02,r5),r0
	mov r4,r1 ; r1 set to 0x01
	mov.b @r2,r3
	extu.b r0,r0
	xor r4,r0
	shad r0, r1 ; r1 ??? bc r0 is ???	
	extu.b r3,r3
	tst r1,r3
	bf loc_8C0C8D1e
	mov.l @r15,r2 ; r2 ??? bc r15 is ???	
	mov.l @(loc_8C0C8D64,pc),r1 ; r1 set to 0x8C15C17c
	mov.b @(0x05,r2),r0
	mov r2,r4 ; r4 ??? bc r2 is ???	
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C8D1E:
	rts
	add 0x04,r15

;----------------------------------------------
loc_8C0C8D22:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x05,r14),r0
	mov.l @(0x08,r14),r4
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bf loc_8C0C8D6c
	mova @(loc_8C0C8D68,pc),r0  ; r0 set to 0x8C0C8D68
	bra loc_8C0C8D70
	fmov.s @r0,fr4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C8D46:
	#data 0x0140
loc_8C0C8D48:
	#data 0x01D0
loc_8C0C8D4A:
	#data 0x01E9
loc_8C0C8D4C:
	#data 0x012c
	#align4

loc_8C0C8D50:
	#data bank04.loc_8c044F12
loc_8C0C8D54:
	#data loc_8c0c8518
loc_8C0C8D58:
	#data 0x42A00000
loc_8C0C8D5C:
	#data bank03.loc_8c034D8c
loc_8C0C8D60:
	#data 0x8C2895F6
loc_8C0C8D64:
	#data bank15.loc_8c15c17c
loc_8C0C8D68:
	#data 0xC2555555

;==============================================
loc_8c0c8d6c:
	mova @(loc_8C0C8E8C,pc),r0
	fmov.s @r0,fr4

loc_8c0c8d70:
	mov.w @(loc_8C0C8E84,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0c8d7c
	mov 0x34,r0
	fneg fr4

loc_8c0c8d7c:
	fmov.s @(r0,r4),fr3
	mov 0x04,r5
	mov.l @(loc_8c0c8e90,pc),r3
	mov 0x02,r6
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt/s loc_8c0c8dc6
	mov r0,r13
	mov.l @(loc_8c0c8e94,pc),r3
	mov.l r3,@(0x10,r13)
	mov.l @r15,r2
	mov.l r2,@(0x18,r13)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r13)
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bt loc_8c0c8dc0
	bsr loc_8c0c9070
	mov r14,r4
	mova @(loc_8C0C8E98,pc),r0
	fmov.s @r0,fr3
	fcmp/gt fr0,fr3
	bt loc_8c0c8dc0
	mov 0x20,r0
	mov 0x0B,r2
	bra loc_8c0c8dc6
	mov.b r2,@(r0,r13)

loc_8c0c8dc0:
	mov 0x20,r0
	mov 0x0C,r1
	mov.b r1,@(r0,r13)

loc_8c0c8dc6:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0C8DD2:
	mov.l @(0x08,r4),r5
	mov 0x02,r3 ; r3 set to 0x02
	mov.b @(0x04,r5),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8C0C8DEc
	mov.b @(0x04,r4),r0
	mov 0x00,r2 ; r2 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C8E86,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r2,@(r0,r4)

;----------------------------------------------
loc_8C0C8DEC:
	mov.l @(loc_8C0C8E9C,pc),r3 ; r3 set to 0x8C034D8c
	jmp @r3
	nop

;unused
	rts
	nop

;----------------------------------------------
loc_8C0C8DF6:
	add 0xFC,r15
	mov.l @(loc_8C0C8EA0,pc),r2 ; r2 set to 0x8C2895F6
	mov.l r4,@r15
	mov 0x01,r4 ; r4 set to 0x01
	mov.b @(0x02,r5),r0
	mov r4,r1 ; r1 set to 0x01
	mov.b @r2,r3
	extu.b r0,r0
	xor r4,r0
	shad r0, r1 ; r1 ??? bc r0 is ???	
	extu.b r3,r3
	tst r1,r3
	bf loc_8C0C8E22
	mov.l @r15,r2 ; r2 ??? bc r15 is ???	
	mov.l @(loc_8C0C8EA4,pc),r1 ; r1 set to 0x8C15C184
	mov.b @(0x05,r2),r0
	mov r2,r4 ; r4 ??? bc r2 is ???	
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C8E22:
	rts
	add 0x04,r15

;----------------------------------------------
loc_8C0C8E26:
	mov.b @(0x05,r4),r0
	mov.l @(0x08,r4),r6
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r6),r0 ; r0 ??? bc r6 is ???	
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bf loc_8C0C8E3e
	mova @(loc_8C0C8EA8,pc),r0  ; r0 set to 0x8C0C8EA8
	bra loc_8C0C8E42
	fmov.s @r0,fr4

loc_8c0c8e3e:
	mova @(loc_8C0C8EAC,pc),r0
	fmov.s @r0,fr4

loc_8c0c8e42:
	mov.w @(loc_8C0C8E84,pc),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt/s loc_8c0c8e4e
	mov 0x34,r0
	fneg fr4

loc_8c0c8e4e:
	fmov.s @(r0,r6),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r6),fr3
	bra loc_8c0c8dd2
	fmov.s fr3,@(r0,r4)

loc_8c0c8e5c:
	mov.w @(0x28,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x14,r0
	bf.s loc_8c0c8e74
	mov r4,r14
	mov.w @(0x1C,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0c8eb0

loc_8c0c8e74:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x6,PC),r0
	mov.b r3,@(r0,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C8E84:
	#data 0x0130
loc_8c0c8e86:
	#data 0x012C
loc_8c0c8e88:
	#data 0x01D0
loc_8c0c8e8a:
	#data 0x01E8
	#align4

loc_8c0c8e8c:
	#data 0xC2A00000
loc_8c0c8e90:
	#data bank04.loc_8C044F12
loc_8c0c8e94:
	#data loc_8c0c8518
loc_8c0c8e98:
	#data 0x42555555
loc_8c0c8e9c:
	#data bank03.loc_8c034D8C
loc_8c0c8ea0:
	#data 0x8C2895F6
loc_8c0c8ea4:
	#data bank15.loc_8c15C184
loc_8c0c8ea8:
	#data 0xC1D55555
loc_8C0C8EAC:
	#data 0xC2555555

;==============================================
loc_8c0c8eb0:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x130,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c8ec4:
	mov.w @(0x116,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf.s loc_8c0c8edc
	mov r4,r14
	mov.w @(0x10A,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bt loc_8c0c8eec

loc_8c0c8edc:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xFA,PC),r0
	mov.b r3,@(r0,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c8eec:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0xF8,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14


;----------------------------------------------
loc_8c0c8f00:
	mov.b @(0x5,r4),r0
	mov.l @(0xEC,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x48,r0
	mov.l r3,@(r0,r4)

loc_8c0c8f0c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0xDC,PC),r3
	jsr @r3
	mov r5,r13
	mov.w @(0xC6,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c0c8f32
	mov.b @(0x5,r14),r0
	mov 0x1B,r5
	mov.l @(0xD0,PC),r3
	mov 0x23,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4

loc_8c0c8f32:
	mov 0x20,r0
	mov.l @(0xC4,PC),r2
	mov.b @(r0,r14),r4
	mova @(0xC4,PC),r0
	fmov @r0,fr4
	extu.b r4,r4
	mov.w @(0xA4,PC),r0
	mov r4,r3
	shll r4
	shll2 r3
	add r3,r4
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0c8f60
	add r2,r4
	mov.w @r4,r3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	lds r3,fpul
	fmov fr4,fr0
	float fpul,fr3
	bra loc_8c0c8f6e
	fmac fr0,fr3,fr2

loc_8c0c8f60:
	mov.w @r4,r3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8c0c8f6e:
	fmov fr2,@(r0,r14)
	mov.w @(0x2,r4),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r13),fr2
	mova @(0x88,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c8f8e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x60,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c8faa
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x38,PC),r0
	mov.b r3,@(r0,r14)

loc_8c0c8faa:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0C8FB0:
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(loc_8C0C8FFC,pc),r2 ; r2 set to 0x8C15C074
	mov.b @(r0,r4),r6
	mova @(loc_8C0C9000,pc),r0  ; r0 set to 0x8C0C9000
	fmov.s @r0,fr4
	extu.b r6,r6
	mov.w @(loc_8C0C8FE6,pc),r0 ; r0 set to 0x130
	mov r6,r3
	shll r6
	shll2 r3
	add r3,r6
	mov.w @(r0,r4),r3
	tst r3,r3
	bf/s loc_8C0C9008
	add r2,r6
	mov.w @r6,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr2 ; r2 ??? bc r5 is ???	
	lds r3,fpul
	fmov fr4,fr0 ; r0 ??? bc r4 is ???	
	float fpul,fr3
	bra loc_8C0C9016
	fmac fr0,fr3,fr2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c8fde:
	#data 0x01D0
loc_8c0c8fe0:
	#data 0x01E9
loc_8c0c8fe2:
	#data 0x012C
loc_8c0c8fe4:
	#data 0x0141
loc_8C0C8FE6:
	#data 0x0130
	#align4

loc_8C0C8FE8:
	#data bank15.loc_8c15c18c
loc_8C0C8FEC:
	#data bank15.loc_8c15c198
loc_8C0C8FF0:
	#data 0x0000F000
loc_8C0C8FF4:
	#data bank03.loc_8c034D8c
loc_8C0C8FF8:
	#data bank03.loc_8c034C38
loc_8C0C8FFC:
	#data bank15.loc_8c15c074
loc_8C0C9000:
	#data 0x3FD55555
loc_8C0C9004:
	#data 0x40092492

;==============================================
loc_8C0C9008:
	mov.w @r6,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr2
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C0C9016:
	fmov.s fr2,@(r0,r4)
	mov.w @(0x02,r6),r0
	mov r0,r3 ; r3 set to 0x34
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r5),fr2
	mova @(loc_8C0C90A0,pc),r0  ; r0 set to 0x8C0C90A0, r0 set to 0x8C0C90A0
	float fpul,fr3
	fmov.s @r0,fr0 ; r0 ??, r0 ??	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0C9092,pc),r0 ; r0 set to 0x140, r0 set to 0x140
	mov.b @(r0,r5),r3 ; r3 ??? bc r5 is ???	
	tst r3,r3
	bt loc_8C0C904e
	mov.w @(loc_8C0C9094,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8C0C904e
	mov.w @(loc_8C0C9096,pc),r0 ; r0 set to 0x1E9, r0 set to 0x1E9
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8C0C904e
	mov.l @(loc_8C0C90A4,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
	jmp @r3
	nop

loc_8C0C904E:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C9098,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0C905C:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C9098,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0C906A:
	mov.l @(loc_8C0C90A8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C0C9070:
	mov.w @(loc_8C0C909A,pc),r0 ; r0 set to 0x130
	mov.l @(loc_8C0C90AC,pc),r5 ; r5 set to 0x8C26A518
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8C0C9084
	mov.w @(loc_8C0C909C,pc),r0 ; r0 set to 0x88
	fmov.s @(r0,r5),fr3
	mov 0x34,r0 ; r0 set to 0x34
	bra loc_8C0C908c
	fmov.s @(r0,r4),fr0

loc_8C0C9084:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr3
	add 0x58,r0 ; r0 set to 0x8c
	fmov.s @(r0,r5),fr0 ; r0 ??? bc r5 is ???	

loc_8C0C908C:
	fsub fr3,fr0
	rts
	nop

;----------------------------------------------
loc_8C0C9092:
	#data 0x0140
loc_8C0C9094:
	#data 0x01D0
loc_8C0C9096:
	#data 0x01E9
loc_8C0C9098:
	#data 0x012c
loc_8C0C909A:
	#data 0x0130
loc_8C0C909C:
	#data 0x0088
	#align4

loc_8C0C90A0:
	#data 0x40092492
loc_8C0C90A4:
	#data bank03.loc_8c034D8c
loc_8C0C90A8:
	#data bank04.loc_8c0450C0
loc_8C0C90AC:
	#data 0x8C26A518

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
;unused
loc_8c0c90b0:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x168,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c90d6
	mov r0,r4
	mov.l @(0x158,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c0c90d6:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0C90DE:
	mov r4,r3
	mov.l @(loc_8C0C9228,pc),r1 ; r1 set to 0x8C15C254
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C90F0:
	mov.w @(loc_8C0C9210,pc),r3 ; r3 set to 0x1001
	mov.w @(loc_8C0C9212,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.w @(loc_8C0C9212,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(0x18,r4),r5
	mov.b r0,@(0x04,r4)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r4)
	mov.w @(loc_8C0C9214,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0C922C,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0C9216,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C9218,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2 ; r2 ??? bc r5 is ???	
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0C9230,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	lds.l @r15+,pr

loc_8C0C9150:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	mov.l @(loc_8C0C9234,pc),r0 ; r0 set to 0x8C15C264, r0 set to 0x8C15C264
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0C9166:
	mov r4,r3
	mov.l @(loc_8C0C9238,pc),r1 ; r1 set to 0x8C15C294
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15


loc_8C0C9178:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.w @(loc_8C0C921A,pc),r3 ; r3 set to 0xCc
	mov 0x24,r1 ; r1 set to 0x24
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov.l r3,@r15
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C0C923C,pc),r3 ; r3 set to 0x8C15C1A4
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r13
	extu.b r13,r13
	shll2 r13
	shll2 r13
	add r3,r13
	mov.b @(0x0E,r13),r0
	mov.b r0,@r1
	mova @(loc_8C0C9240,pc),r0  ; r0 set to 0x8C0C9240
	fmov.s @r0,fr4
	mov.w @(loc_8C0C921C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bf/s loc_8C0C91C6
	mov r5,r12
	mov.w @r13,r2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r12),fr2
	lds r2,fpul
	fmov fr4,fr0 ; r0 ??? bc r4 is ???	
	float fpul,fr3
	bra loc_8C0C91D4
	fmac fr0,fr3,fr2

loc_8C0C91C6:
	mov.w @r13,r2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r12),fr2
	lds r2,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C0C91D4:
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0C9244,pc),r0  ; r0 set to 0x8C0C9244, r0 init to 0x8C0C9244
	fmov.s @r0,fr5
	mov r15,r11
	mov.w @(0x02,r13),r0
	fmov fr5,fr0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r12),fr2
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0C921C,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r12),r3
	tst r3,r3
	bf/s loc_8C0C9248
	add 0x04,r11
	mov.w @(0x04,r13),r0
	mov r0,r3 ; r3 set to 0x130, r3 set to 0x130
	lds r3,fpul
	mov.w @r13,r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
	float fpul,fr3
	lds r3,fpul
	float fpul,fr2
	fmul fr4,fr3
	fmul fr4,fr2
	fsub fr2,fr3
	bra loc_8C0C9260
	fmov.s fr3,@r11

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C9210:
	#data 0x1001
loc_8C0C9212:
	#data 0x00Dc
loc_8C0C9214:
	#data 0x00C0
loc_8C0C9216:
	#data 0x012c
loc_8C0C9218:
	#data 0x01A3
loc_8C0C921A:
	#data 0x00Cc
loc_8C0C921C:
	#data 0x0130
	#align4
loc_8C0C9220:
	#data bank04.loc_8c044F12
loc_8C0C9224:
	#data loc_8c0c90De
loc_8C0C9228:
	#data bank15.loc_8c15c254
loc_8C0C922C:
	#data bank12.loc_8c129560
loc_8C0C9230:
	#data bank12.loc_8c1294C8
loc_8C0C9234:
	#data bank15.loc_8c15c264
loc_8C0C9238:
	#data bank15.loc_8c15c294
loc_8C0C923C:
	#data bank15.loc_8c15c1A4
loc_8C0C9240:
	#data 0x3FD55555
loc_8C0C9244:
	#data 0x40092492

;==============================================
loc_8C0C9248:
	mov.w @r13,r3
	mov.w @(0x04,r13),r0
	lds r3,fpul
	mov r0,r3
	fmov fr4,fr0
	float fpul,fr3
	lds r3,fpul
	float fpul,fr2
	fmul fr4,fr2
	fneg fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r11

loc_8C0C9260:
	mov.w @(0x06,r13),r0
	fmov fr5,fr0
	mov r0,r3
	lds r3,fpul
	mov.w @(loc_8C0C93A8,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	float fpul,fr3
	fmov.s @(r0,r12),fr2
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r11)
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s @(r0,r13),fr3
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0C93B0,pc),r0  ; r0 set to 0x8C0C93B0, r0 set to 0x8C0C93B0
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s @(r0,r11),fr4
	bsr loc_8C0C96D8
	mov r14,r4
	mov r0,r4 ; r4 set to 0x04, r4 set to 0x04
	lds r4,fpul
	fmov.s @r11,fr2
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	mov.l @(loc_8C0C93B4,pc),r2 ; r2 set to 0x8C129128, r2 set to 0x8C129128
	float fpul,fr3
	fdiv fr3,fr2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???	
	fldi0 fr3
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr3,@(r0,r14)
	mov.w @(0x0C,r13),r0
	mov.l @r15,r3
	mov r0,r1 ; r1 set to 0x68, r1 set to 0x68
	shll16 r1 ; r1 set to 0x680000, r1 set to 0x680000
	jsr @r2
	mov r4,r0 ; r0 set to 0x04, r0 set to 0x04
	mov.l r0,@r3
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov.b @(0x0F,r13),r0
	mov.l @(loc_8C0C93B8,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	mov r0,r6 ; r6 set to 0x04, r6 set to 0x04
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
	mov r12,r5 ; r5 ??? bc r12 is ???, r5 ??? bc r12 is ???	
	bsr loc_8C0C92D0
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c92d0:
	mov.w @(loc_8C0C93AA,pc),r6
	mov 0x48,r0
	mov.l @(r0,r4),r2
	mov 0x5C,r1
	add r4,r6
	mov.l @r6,r3
	add r4,r1
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x34,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x68,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x60,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov.l @(loc_8c0c93bc,pc),r3
	fadd fr3,fr2
	fldi0 fr3
	fmov.s fr2,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r6
	mov 0x60,r0
	fmov.s @(r0,r4),fr2
	extu.b r6,r6
	fcmp/gt fr3,fr2
	shll2 r6
	shll2 r6
	bt/s loc_8c0c936a
	add r3,r6
	mov.w @(0x06,r6),r0
	mov r0,r2
	lds r2,fpul
	mov.w @(loc_8c0c93a8,pc),r0
	float fpul,fr2
	fmov.s @(r0,r5),fr1
	mova @(loc_8C0C93C0,pc),r0
	fmov.s @r0,fr0
	mov 0x38,r0
	fmac fr0,fr2,fr1
	fmov.s @(r0,r4),fr2
	fcmp/gt fr1,fr2
	bt loc_8c0c936a
	mov.b @(0x05,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov 0x48,r0
	mov.l r3,@(r0,r4)
	mov.w @(0x06,r6),r0
	mov r0,r3
	lds r3,fpul
	mov.w @(loc_8c0c93a8,pc),r0
	float fpul,fr3
	fmov.s @(r0,r5),fr2
	mova @(loc_8C0C93C0,pc),r0
	fmov.s @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4)

loc_8c0c936a:
	rts
	nop

loc_8C0C936E:
	rts
	nop

;----------------------------------------------
loc_8C0C9372:
	mov r4,r3
	mov.l @(loc_8C0C93C4,pc),r1 ; r1 set to 0x8C15C2A0
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C9384:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x0B,r3 ; r3 set to 0x0b
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0C93AC,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bf/s loc_8C0C93Cc
	mov r5,r13
	mova @(loc_8C0C93C8,pc),r0  ; r0 set to 0x8C0C93C8
	bra loc_8C0C93D0
	fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C93A8:
	#data 0x041c
loc_8c0c93aa:
	#data 0x00Cc
loc_8C0C93AC:
	#data 0x0130
	#align4

loc_8C0C93B0:
	#data 0xBF4DB6Db
loc_8C0C93B4:
	#data bank12.loc_8c129128
loc_8C0C93B8:
	#data bank03.loc_8c034C38
loc_8C0C93BC:
	#data bank15.loc_8c15c1A4
loc_8c0c93c0:
	#data 0x40092492
loc_8C0C93C4:
	#data bank15.loc_8c15c2A0
loc_8C0C93C8:
	#data 0xC2555555

;==============================================
loc_8C0C93CC:
	mova @(loc_8C0C952C,pc),r0  ; r0 init to 0x8C0C952c
	fmov.s @r0,fr3

loc_8C0C93D0:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0C9530,pc),r0  ; r0 set to 0x8C0C9530, r0 set to 0x8C0C9530
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0C9528,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0C93F2
	mova @(loc_8C0C9534,pc),r0  ; r0 set to 0x8C0C9534, r0 set to 0x8C0C9534
	bra loc_8C0C93F6
	fmov.s @r0,fr2

loc_8c0c93f2:
	mova @(loc_8C0C9538,pc),r0
	fmov.s @r0,fr2

loc_8c0c93f6:
	mov 0x5C,r0
	fldi0 fr3
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0C953C,pc),r0
	fmov.s @r0,fr3
	mov 0x60,r0
	mov.l @(loc_8c0c9544,pc),r3
	mov 0x1B,r5
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0C9540,pc),r0
	fmov.s @r0,fr3
	mov 0x6C,r0
	mov 0x0B,r6
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0c9424:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0c9548,pc),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	fldi0 fr4
	add r14,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0C952A,pc),r0
	mov.l @r15,r3
	fmov.s @(r0,r3),fr3
	fadd fr4,fr3
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0c949e
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0C952A,pc),r0
	mov.l @r15,r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0C954C,pc),r0
	fmov.s @r0,fr3
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	fdiv fr3,fr2
	fneg fr2
	fmov.s fr2,@(r0,r14)

loc_8c0c949e:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c94a6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x98,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	fldi0 fr4
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
	mov.w @(0x36,PC),r0
	mov.l @r15,r3
	fmov @(r0,r3),fr3
	fadd fr4,fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0c9520
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x20,PC),r0
	mov.l @r15,r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mova @(0x38,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fdiv fr3,fr2
	fneg fr2
	fmov fr2,@(r0,r14)

loc_8c0c9520:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c9528:
	#data 0x0130
loc_8C0C952A:
	#data 0x041C
	#align4

loc_8c0c952c:
	#data 0x42555555
loc_8c0c9530:
	#data 0x42CDB6DB
loc_8c0c9534:
	#data 0xBF555555
loc_8C0C9538:
	#data 0x3F555555
loc_8C0C953C:
	#data 0x419A4924
loc_8C0C9540:
	#data 0xBF4DB6DB
loc_8c0c9544:
	#data bank03.loc_8c034c38
loc_8c0c9548:
	#data bank03.loc_8c034d8c
loc_8C0C954C:
	#data 0x40800000

;==============================================
loc_8C0C9550:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8C0C96AE,pc),r3 ; r3 set to 0xCc
	mov r4,r14
	mov.l @(loc_8C0C96B8,pc),r2 ; r2 set to 0x8C034D8c
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov.l r5,@r15
	mov.l r3,@(0x04,r15)
	jsr @r2
	mov r14,r4
	mov 0x5C,r1 ; r1 set to 0x5c
	fldi0 fr4
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0C96B0,pc),r0 ; r0 set to 0x41c
	mov.l @r15,r3
	fmov.s @(r0,r3),fr3
	fadd fr4,fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C0C9608
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0C96B0,pc),r0 ; r0 set to 0x41c
	mov.l @r15,r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C96B2,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0C95D0
	mova @(loc_8C0C96BC,pc),r0  ; r0 set to 0x8C0C96Bc
	bra loc_8C0C95D4
	fmov.s @r0,fr3

loc_8C0C95D0:
	mova @(loc_8C0C96C0,pc),r0  ; r0 init to 0x8C0C96C0
	fmov.s @r0,fr3

loc_8C0C95D4:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	mov.l @(loc_8C0C96C4,pc),r1 ; r1 set to 0x10000, r1 set to 0x10000
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
	mov.l @(loc_8C0C96C8,pc),r2 ; r2 set to 0x8C129128, r2 set to 0x8C129128
	mov.w r0,@(0x1C,r14)
	mov.l @(0x04,r15),r3
	jsr @r2
	mov.w @(0x1C,r14),r0
	extu.w r0,r0 ; r0 set to 0x3C, r0 set to 0x3c
	mov r14,r4
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov.l r0,@r3
	mov 0x0B,r6 ; r6 set to 0x0B, r6 set to 0x0b
	mov 0x02,r7 ; r7 set to 0x02, r7 set to 0x02
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0C96CC,pc),r3 ; r3 set to 0x8C034CD6, r3 set to 0x8C034CD6
	jmp @r3
	mov.l @r15+,r14

loc_8C0C9608:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C9610:
	mov.w @(0x9A,PC),r5
	mov 0x48,r0
	mov.l @(r0,r4),r2
	mov 0x5C,r1
	add r4,r5
	mov.l @r5,r3
	add r4,r1
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
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
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0c9672
	mov.b @(0x5,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x14,r0
	mov.w r0,@(0x1C,r4)
	mov 0x48,r0
	mov.l r3,@(r0,r4)

loc_8C0C9672:
	rts
	nop

;----------------------------------------------
loc_8C0C9676:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0C9690
	mov.b @(0x05,r4),r0
	mov 0x0C,r6 ; r6 set to 0x0c
	mov.l @(loc_8C0C96D0,pc),r3 ; r3 set to 0x8C034C38
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	jmp @r3
	mov 0x1B,r5

loc_8C0C9690:
	rts
	nop

;----------------------------------------------
loc_8C0C9694:
	mov.l @(loc_8C0C96B8,pc),r3 ; r3 set to 0x8C034D8c
	jmp @r3
	nop

loc_8C0C969A:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0C96B4,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0C96A8:
	mov.l @(loc_8C0C96D4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C96AE:
	#data 0x00Cc
loc_8C0C96B0:
	#data 0x041c
loc_8C0C96B2:
	#data 0x0130
loc_8C0C96B4:
	#data 0x012c
	#align4

loc_8C0C96B8:
	#data bank03.loc_8c034D8c
loc_8C0C96BC:
	#data 0xBFD55555
loc_8C0C96C0:
	#data 0x3FD55555
loc_8C0C96C4:
	#data 0x00010000
loc_8C0C96C8:
	#data bank12.loc_8c129128
loc_8C0C96CC:
	#data bank03.loc_8c034CD6
loc_8C0C96D0:
	#data bank03.loc_8c034C38
loc_8C0C96D4:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0C96D8:
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr6
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r4),fr5
	mov 0x00,r5 ; r5 set to 0x00

loc_8C0C96E2:
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fadd fr5,fr6
	fmov.s @(r0,r4),fr3
	fadd fr3,fr5 ; r5 ??? bc r3 is ???	
	fldi0 fr3
	fcmp/gt fr3,fr5
	bt/s loc_8C0C96E2
	add 0x01,r5
	fcmp/gt fr4,fr6
	bt loc_8C0C96E2
	rts
	mov r5,r0

;----------------------------------------------
	#align4

;==============================================
loc_8C0C96FC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x116,PC),r3
	mov r4,r14
	mov.l @(0x128,PC),r2
	mov 0x04,r5
	mov 0x00,r6
	mov.l r4,@r15
	add r3,r14
	jsr @r2
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0c9728
	mov r0,r4
	mov.l @(0x118,PC),r2
	mov 0x01,r0
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.b r0,@(0x4,r14)
	mov.l r4,@r14

loc_8C0C9728:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C9734:
	mov r4,r3
	mov.l @(loc_8C0C9838,pc),r1 ; r1 set to 0x8C15C2Bc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C9746:
	mov.l @(loc_8C0C983C,pc),r2 ; r2 set to 0x8C26823c
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(loc_8C0C981E,pc),r1 ; r1 set to 0x80
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.l @(0x14,r3),r0
	cmp/eq r1,r0
	bf/s loc_8C0C976a
	mov 0x00,r12 ; r12 set to 0x00
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov r12,r0 ; r0 set to 0x00
	nop
	bra loc_8C0C9812
	mov.b r0,@(0x05,r14)

loc_8c0c976a:
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0C9820,pc),r3
	add 0x01,r0
	mov.w @(loc_8C0C9822,pc),r1
	mov.b r0,@(0x04,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	add r14,r1
	mov.w @(loc_8C0C9822,pc),r2
	mov.w @(loc_8C0C9824,pc),r0
	mov.l @(0x18,r14),r13
	mov.l @(loc_8c0c9840,pc),r3
	jsr @r3
	add r13,r2
	mov.w @(loc_8C0C9826,pc),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r13),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0C9828,pc),r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c0c9844,pc),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0x18,r4
	mov 0x0C,r3
	mov.b r2,@(r0,r14)
	mov 0x17,r5
	mov.w @(loc_8C0C982A,pc),r0
	mov 0x00,r6
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov 0x10,r4
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.l @(loc_8c0c9848,pc),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0c984c,pc),r2
	jsr @r2
	mov r14,r4
	mov 0x04,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_8C0C982C,pc),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt/s loc_8c0c9808
	mov r14,r4
	mov 0x05,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0C9826,pc),r0
	mov.b r12,@r14
	mov.b r12,@(r0,r14)

loc_8c0c9808:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0c9850
	mov.l @r15+,r14

loc_8C0C9812:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c981c:
	#data 0x02A4
loc_8C0C981E:
	#data 0x0080
loc_8c0c9820:
	#data 0x1003
loc_8c0c9822:
	#data 0x00DC
loc_8c0c9824:
	#data 0x00C0
loc_8c0c9826:
	#data 0x012C
loc_8c0c9828:
	#data 0x01A3
loc_8c0c982a:
	#data 0x013C
loc_8c0c982c:
	#data 0x0411
	#align4

loc_8C0C9830:
	#data bank04.loc_8c044F12
loc_8C0C9834:
	#data loc_8c0c9734
loc_8C0C9838:
	#data bank15.loc_8c15c2Bc
loc_8C0C983C:
	#data 0x8C26823c
loc_8C0C9840:
	#data bank12.loc_8c129560
loc_8C0C9844:
	#data bank12.loc_8c1294C8
loc_8C0C9848:
	#data bank03.loc_8c034e8c
loc_8C0C984C:
	#data bank10.loc_8c104434

;==============================================
loc_8C0C9850:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r5
	mov 0x01,r6
	mov.l @(0x108,PC),r3
	mov r6,r1
	mov.b @(0x2,r5),r0
	mov.b @r3,r4
	extu.b r0,r0
	xor r6,r0
	shad r0,r1
	extu.b r4,r2
	tst r1,r2
	bf loc_8c0c9896
	extu.b r4,r4
	tst r4,r4
	bt loc_8c0c9886
	mov.w @(0xE0,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0c9886
	mov.w @(0xD8,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bt loc_8c0c9896

loc_8C0C9886:
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(0xDC,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0C9896:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C989A:
	mov r4,r3
	mov.l @(loc_8C0C996C,pc),r1 ; r1 set to 0x8C15C318
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0C98AC:
	mov.b @(0x07,r4),r0
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8C0C9970,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x11,r6 ; r6 set to 0x11
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	mov.w @(loc_8C0C995A,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r4)
	mov.b r5,@r4
	jmp @r3
	mov 0x17,r5

;----------------------------------------------
loc_8C0C98C2:
	mov.b @(0x4,r5),r0
	tst r0,r0
	bf loc_8c0c98da
	mov.w @(0x90,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x12,r0
	bf loc_8c0c98da
	mov.w @(0x88,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c0c9952

loc_8C0C98DA:
	mov.b @(0x7,r4),r0
	mov 0x01,r6
	mov 0x00,r3
	mov.w @(0x7C,PC),r1
	add 0x01,r0
	mov.b r0,@(0x7,r4)
	add r4,r1
	mov.w @(0x6E,PC),r0
	mov.b r6,@(r0,r4)
	mov 0x24,r0
	mov.b r6,@r4
	mov.b r3,@(r0,r4)
	mov.w @(0x6A,PC),r0
	mov.w @(r0,r5),r0
	xor 0x01,r0
	mov.w r0,@r1
	mov.w @(0x62,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bf loc_8c0c9914
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x68,PC),r0
	bra loc_8c0c9924
	fmov @r0,fr2

loc_8C0C9914:
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x5C,PC),r0
	fmov @r0,fr2

loc_8C0C9924:
	mov 0x5C,r0
	mov.l @(0x48,PC),r3
	fmov fr2,@(r0,r4)
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mov 0x11,r6
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x68,r0
	fldi0 fr2
	fmov fr2,@(r0,r4)
	mova @(0x48,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	fmov fr2,@(r0,r4)
	mova @(0x44,PC),r0
	fmov @r0,fr2
	mov 0x6C,r0
	fmov fr2,@(r0,r4)
	jmp @r3
	mov 0x17,r5

loc_8C0C9952:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c9956:
	#data 0x01d0
loc_8c0c9958:
	#data 0x01e9
loc_8c0c995a:
	#data 0x012c
loc_8c0c995c:
	#data 0x0159
loc_8c0c995e:
	#data 0x0141
loc_8c0c9960:
	#data 0x0130
	#align4

loc_8C0C9964:
	#data 0x8C2895F6
loc_8C0C9968:
	#data bank15.loc_8c15c2Cc
loc_8C0C996C:
	#data bank15.loc_8c15c318
loc_8C0C9970:
	#data bank03.loc_8c034e8c
loc_8C0C9974:
	#data 0xC212AAAa
loc_8C0C9978:
	#data 0x40555555
loc_8C0C997c:
	#data 0x4212AAAa
loc_8C0C9980:
	#data 0xC0555555
loc_8C0C9984:
	#data 0x42809249
loc_8C0C9988:
	#data 0x414DB6Db
loc_8C0C998c:
	#data 0xBF4DB6Db

;==============================================
loc_8C0C9990:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0C9AD4,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0C9AC8,pc),r0 ; r0 set to 0x41c
	mov.l @r15,r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C0C9A0c
	mov.b @(0x07,r14),r0
	mov 0x0C,r3 ; r3 set to 0x0c
	mov 0x17,r5 ; r5 set to 0x17
	mov r14,r4
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x07,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov 0x16,r6 ; r6 set to 0x16
	mov.w @(loc_8C0C9AC8,pc),r0 ; r0 set to 0x41c
	mov.l @r15,r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0C9AD8,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	mov.l @r15+,r14

loc_8C0C9A0C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C9A14:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0C9AD4,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0C9A52
	mov.w @(loc_8C0C9ACA,pc),r1 ; r1 set to 0xCc
	mov r14,r4
	mov.b @(0x06,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8C0C9ACC,pc),r1 ; r1 set to 0xD0
	mov.b @(0x07,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x0B,r0 ; r0 set to 0x0b
	mov.b r0,@(0x06,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x07,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0C9D92
	mov.l @r15+,r14

loc_8C0C9A52:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C9A5A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @r13,r3
	tst r3,r3
	bf/s loc_8C0C9A6e
	mov r4,r14
	bra loc_8C0C9B70
	nop

loc_8C0C9A6E:
	mova @(loc_8C0C9ADC,pc),r0  ; r0 init to 0x8C0C9ADc
	fmov.s @r0,fr5
	mova @(loc_8C0C9AE0,pc),r0  ; r0 set to 0x8C0C9AE0
	fmov.s @r0,fr4
	mov.w @(loc_8C0C9ACE,pc),r0 ; r0 set to 0x411
	mov.b @(r0,r13),r3
	tst r3,r3
	bf/s loc_8C0C9AE4
	mov 0x01,r4 ; r4 set to 0x01
	mov.w @(loc_8C0C9AD0,pc),r0 ; r0 set to 0x12c
	mov.b r4,@r14
	mov.b r4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x130
	mov.w @(r0,r13),r3
	tst r3,r3
	bf loc_8C0C9A96
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	bra loc_8C0C9A9c
	fadd fr4,fr3

loc_8C0C9A96:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	fadd fr5,fr3

loc_8C0C9A9C:
	fmov.s fr3,@(r0,r14)
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.w @(loc_8C0C9AC8,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	mov.l @(loc_8C0C9AD8,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0C9ACA,pc),r1 ; r1 set to 0xCC, r1 set to 0xCc
	mov.b @(0x06,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	extu.b r0,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l r0,@r1
	mov.w @(loc_8C0C9ACC,pc),r1 ; r1 set to 0xD0, r1 set to 0xD0
	mov.b @(0x07,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	extu.b r0,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l r0,@r1
	bra loc_8C0C9B50
	mov 0x07,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0C9AC8:
	#data 0x041c
loc_8C0C9ACA:
	#data 0x00Cc
loc_8C0C9ACC:
	#data 0x00D0
loc_8C0C9ACE:
	#data 0x0411
loc_8C0C9AD0:
	#data 0x012c
	#align4

loc_8C0C9AD4:
	#data bank03.loc_8c034dee
loc_8C0C9AD8:
	#data bank03.loc_8c034e8c
loc_8C0C9ADC:
	#data 0xC2A00000
loc_8C0C9AE0:
	#data 0x42A00000

;==============================================
loc_8C0C9AE4:
	mov.w @(loc_8C0C9BE6,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8C0C9B70
	mov.w @(loc_8C0C9BE8,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8C0C9B70
	mov.w @(loc_8C0C9BEA,pc),r0 ; r0 set to 0x12c
	mov.b r4,@r14
	mov.b r4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x130
	mov.w @(r0,r13),r3
	tst r3,r3
	bf loc_8C0C9B0e
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	bra loc_8C0C9B14
	fadd fr4,fr3

loc_8C0C9B0E:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	fadd fr5,fr3

loc_8C0C9B14:
	fmov.s fr3,@(r0,r14)
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.w @(loc_8C0C9BEC,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	mov.l @(loc_8C0C9BF4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0C9BEE,pc),r0 ; r0 set to 0x1E9, r0 set to 0x1E9
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8C0C9B3a
	cmp/eq 0x04,r0
	bt loc_8C0C9B54
	bra loc_8C0C9B70
	nop

loc_8C0C9B3A:
	mov.w @(loc_8C0C9BF0,pc),r1 ; r1 set to 0xCc
	mov.b @(0x06,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8C0C9BF2,pc),r1 ; r1 set to 0xD0
	mov.b @(0x07,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x0F,r0 ; r0 set to 0x0f

loc_8C0C9B50:
	bra loc_8C0C9B6c
	mov.b r0,@(0x06,r14)

loc_8c0c9b54:
	mov.w @(loc_8c0c9bf0,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8c0c9bf2,pc),r1
	mov.b @(0x07,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x11,r0
	mov.b r0,@(0x06,r14)

loc_8c0c9b6c:
	mov 0x00,r0
	mov.b r0,@(0x07,r14)

loc_8C0C9B70:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C9B78:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C0C9BF8,pc),r1 ; r1 set to 0x8C15C328
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov r5,r13
	mov.w @(loc_8C0C9BE8,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8C0C9BDe
	mov.w @(loc_8C0C9BEE,pc),r0 ; r0 set to 0x1E9
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8C0C9BAa
	cmp/eq 0x04,r0
	bt loc_8C0C9BC2
	bra loc_8C0C9BDe
	nop

loc_8C0C9BAA:
	mov.w @(loc_8C0C9BF0,pc),r1 ; r1 set to 0xCc
	mov.b @(0x06,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8C0C9BF2,pc),r1 ; r1 set to 0xD0
	mov.b @(0x07,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	extu.b r0,r0
	mov.l r0,@r1
	bra loc_8C0C9BD8
	mov 0x0F,r0

loc_8c0c9bc2:
	mov.w @(loc_8c0c9bf0,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8c0c9bf2,pc),r1
	mov.b @(0x07,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x11,r0

loc_8c0c9bd8:
	mov.b r0,@(0x06,r14)
	mov 0x00,r0
	mov.b r0,@(0x07,r14)

loc_8C0C9BDE:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C9BE6:
	#data 0x0255
loc_8C0C9BE8:
	#data 0x01D0
loc_8C0C9BEA:
	#data 0x012c
loc_8C0C9BEC:
	#data 0x041c
loc_8C0C9BEE:
	#data 0x01E9
loc_8C0C9BF0:
	#data 0x00Cc
loc_8C0C9BF2:
	#data 0x00D0
	#align4

loc_8C0C9BF4:
	#data bank03.loc_8c034e8c
loc_8C0C9BF8:
	#data bank15.loc_8c15c328

;==============================================
loc_8C0C9BFC:
	mov.b @(0x07,r4),r0
	mov.w @(loc_8C0C9D34,pc),r1 ; r1 set to 0x130
	add 0x01,r0
	mov.b r0,@(0x07,r4)
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.w @(loc_8C0C9D32,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	xor 0x01,r0
	mov.w r0,@r1
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0C9C1c
	mova @(loc_8C0C9D40,pc),r0  ; r0 set to 0x8C0C9D40
	bra loc_8C0C9C20
	fmov.s @r0,fr3

loc_8C0C9C1C:
	mova @(loc_8C0C9D44,pc),r0  ; r0 init to 0x8C0C9D44
	fmov.s @r0,fr3

loc_8C0C9C20:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr3,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fldi0 fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0C9D36,pc),r0 ; r0 set to 0x420, r0 set to 0x420
	mov.w @(r0,r5),r3
	cmp/pl r3
	bf/s loc_8C0C9C38
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	bra loc_8C0C9C3a
	mov 0x0D,r6

loc_8C0C9C38:
	mov 0x4F,r6 ; r6 set to 0x4f

loc_8C0C9C3A:
	mov.l @(loc_8C0C9D48,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
	jmp @r2
	nop

;==============================================
loc_8C0C9C40:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x104,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0x100,PC),r3
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
	tst r0,r0
	bf loc_8c0c9c82
	mov 0x05,r0
	mov 0x00,r4
	mov.b r0,@(0x6,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x7,r14)
	mov.b r0,@r14
	mov.w @(0xB6,PC),r0
	mov.b r4,@(r0,r14)

loc_8C0C9C82:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C9C88:
	mov r4,r3
	mov.l @(loc_8C0C9D54,pc),r1 ; r1 set to 0x8C15C330
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C9C9A:
	mov.l r14,@-r15
	mov r4,r14
	fldi0 fr4
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x7,r14),r0
	mov 0x00,r5
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf.s loc_8c0c9ccc
	mov r5,r4
	mov 0x01,r4

loc_8C0C9CCC:
	mov.w @(0x64,PC),r0
	extu.b r4,r4
	mov.w @(r0,r14),r2
	cmp/eq r2,r4
	bt loc_8c0c9d00
	mov.w @(0x60,PC),r1
	mov.b @(0x6,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(0x58,PC),r1
	mov.b @(0x7,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x0B,r0
	mov.b r0,@(0x6,r14)
	mov r5,r0
	nop
	mov r13,r5
	mov.b r0,@(0x7,r14)
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0c9d92
	mov.l @r15+,r14

loc_8C0C9D00:
	mov.w @(0x36,PC),r3
	mov.b @(0x6,r14),r0
	add r14,r3
	mov.l @r3,r3
	extu.b r0,r0
	cmp/eq r3,r0
	bt loc_8c0c9d26
	mov.l @(0x48,PC),r1
	jsr @r1
	nop
	mov.l @(0x44,PC),r2
	mov r0,r1
	jsr @r2
	mov 0x03,r0
	mov.l @(0x28,PC),r3
	mov 0x17,r5
	mov r0,r6
	jsr @r3
	mov r14,r4

loc_8C0C9D26:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0c9d60
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0c9d32:
	#data 0x01d2
loc_8c0c9d34:
	#data 0x0130
loc_8c0c9d36:
	#data 0x0420
loc_8c0c9d38:
	#data 0x012c
loc_8c0c9d3a:
	#data 0x00cc
loc_8c0c9d3c:
	#data 0x00d0
	#align4

loc_8C0C9D40:
	#data 0xC1200000
loc_8C0C9D44:
	#data 0x41200000
loc_8C0C9D48:
	#data bank03.loc_8c034e8c
loc_8C0C9D4C:
	#data bank03.loc_8c034dee
loc_8C0C9D50:
	#data bank03.loc_8c03340c
loc_8C0C9D54:
	#data bank15.loc_8c15c330
loc_8C0C9D58:
	#data bank03.loc_8c03319e
loc_8C0C9D5C:
	#data bank12.loc_8c12939c

;==============================================
loc_8C0C9D60:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0C9EB0,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0C9D8a
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0C9EB4,pc),r3 ; r3 set to 0x8C0CB492
	jmp @r3
	mov.l @r15+,r14

loc_8C0C9D8A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C9D92:
	mov r4,r3
	mov.l @(loc_8C0C9EB8,pc),r1 ; r1 set to 0x8C15C338
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0C9DA4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov 0x01,r3
	mov.l @(0x108,PC),r1
	mov.l r5,@r15
	mov 0x17,r5
	mov.b @(0x7,r14),r0
	mov 0x0E,r6
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xD4,PC),r0
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)
	jsr @r1
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0C9DE4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xC4,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0c9e10
	mov.w @(0xB0,PC),r1
	mov.b @(0x6,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(0xA8,PC),r1
	mov.b @(0x7,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x02,r0
	mov.b r0,@(0x6,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)

loc_8C0C9E10:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C9E16:
	mov r4,r3
	mov.l @(loc_8C0C9EC0,pc),r1 ; r1 set to 0x8C15C340
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0C9E28:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @r15,r3
	fmov.s @(r0,r14),fr2
	fmov.s @(r0,r3),fr3
	fcmp/gt fr2,fr3
	bf/s loc_8C0C9E4e
	mov 0x10,r6 ; r6 set to 0x10
	mov.w @(loc_8C0C9EA6,pc),r0 ; r0 set to 0x130
	mov 0x01,r2 ; r2 set to 0x01
	bra loc_8C0C9E54
	mov.w r2,@(r0,r14)

loc_8C0C9E4E:
	mov.w @(loc_8C0C9EA6,pc),r0 ; r0 set to 0x130
	mov 0x00,r1 ; r1 set to 0x00
	mov.w r1,@(r0,r14)

loc_8C0C9E54:
	mov.l @(loc_8C0C9EBC,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	jsr @r3
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???	
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0C9E66:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0C9EB0,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C0C9E9e
	mov.w @(loc_8C0C9EAC,pc),r0 ; r0 set to 0x26C, r0 set to 0x26C, r0 set to 0x26c
	mov.l @r15,r3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???, r3 ??? bc r15 is ???	
	mov.w @(r0,r3),r2
	mov 0x03,r3 ; r3 set to 0x03, r3 set to 0x03, r3 set to 0x03
	cmp/ge r3,r2
	bt loc_8C0C9E9e
	mov.b @(0x07,r14),r0
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17, r5 set to 0x17
	mov r14,r4
	mov 0x46,r6 ; r6 set to 0x46, r6 set to 0x46, r6 set to 0x46
	add 0x01,r0 ; r0 set to 0x26D, r0 set to 0x26D, r0 set to 0x26d
	mov.b r0,@(0x07,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0C9EBC,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
	jmp @r2
	mov.l @r15+,r14

loc_8C0C9E9E:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0C9EA6:
	#data 0x0130
loc_8C0C9EA8:
	#data 0x00Cc
loc_8C0C9EAa:
	#data 0x00D0

loc_8C0C9EAC:
	#data 0x026c
	#align4

loc_8C0C9EB0:
	#data bank03.loc_8c034dee
loc_8C0C9EB4:
	#data loc_8c0cB492
loc_8C0C9EB8:
	#data bank15.loc_8c15c338
loc_8C0C9EBC:
	#data bank03.loc_8c034e8c
loc_8C0C9EC0:
	#data bank15.loc_8c15c340

;==============================================
loc_8C0C9EC4:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C0CA01C,pc),r3 ; r3 set to 0x8C034DEe
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	jsr @r3
	mov.l @r15,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0C9EE4
	mov.l @r15,r4
	mov.l @(0x04,r15),r5
	add 0x08,r15
	mov.l @(loc_8C0CA020,pc),r3 ; r3 set to 0x8C0CB492
	jmp @r3
	lds.l @r15+,pr

loc_8C0C9EE4:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0C9EEC:
	mov r4,r3
	mov.l @(loc_8C0CA024,pc),r1 ; r1 set to 0x8C15C34c
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0C9EFE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(loc_8C0CA02C,pc),r3 ; r3 set to 0x8C26A5A0
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x14,r0 ; r0 set to 0x14
	mov.w r0,@(0x1C,r14)
	mova @(loc_8C0CA028,pc),r0  ; r0 set to 0x8C0CA028
	fmov.s @r3,fr2
	fmov.s @r0,fr3 ; r3 ??	
	mov 0x64,r0 ; r0 set to 0x64
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0CA010,pc),r0 ; r0 set to 0x41c
	mov.l @r15,r3
	fmov.s @(r0,r3),fr2
	mov 0x70,r0 ; r0 set to 0x70
	fmov.s fr2,@(r0,r14)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r14),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr1
	fcmp/gt fr1,fr2
	bt/s loc_8C0C9F40
	mov 0x0D,r6 ; r6 set to 0x0d
	mov.w @(loc_8C0CA012,pc),r0 ; r0 set to 0x130
	mov 0x00,r2 ; r2 set to 0x00
	bra loc_8C0C9F46
	mov.w r2,@(r0,r14)

loc_8c0c9f40:
	mov.w @(loc_8c0ca012,pc),r0
	mov 0x01,r1
	mov.w r1,@(r0,r14)

loc_8c0c9f46:
	mov.l @(loc_8c0ca030,pc),r3
	mov 0x17,r5
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8c0c9f58:
	mov.w @(loc_8C0CA014,pc),r0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf/s loc_8c0c9f72
	mov r4,r14
	mov.w @(loc_8C0CA016,pc),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8c0c9f94

loc_8c0c9f72:
	mov.w @(loc_8C0CA018,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8C0CA01A,pc),r1
	mov.b @(0x07,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x10,r0
	mov.b r0,@(0x06,r14)
	mov 0x00,r0
	mov.b r0,@(0x07,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0c9f94:
	mov 0x34,r1
	mov.w @(0x1C,r14),r0
	add r14,r1
	fmov.s @r1,fr3
	mov 0x64,r1
	mov r0,r3
	add r14,r1
	lds r3,fpul
	mov 0x34,r2
	fmov.s @r1,fr2
	add r14,r2
	mov 0x38,r1
	fsub fr3,fr2
	add r14,r1
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @r2,fr3
	fadd fr2,fr3
	fmov.s fr3,@r2
	mov 0x38,r2
	fmov.s @r1,fr3
	mov 0x70,r1
	mov.w @(0x1C,r14),r0
	add r14,r1
	fmov.s @r1,fr2
	add r14,r2
	mov r0,r3
	lds r3,fpul
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @r2,fr3
	fadd fr2,fr3
	fmov.s fr3,@r2
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0ca000
	mov.b @(0x07,r14),r0
	mov 0x40,r6
	mov.w @(loc_8c0ca012,pc),r1
	add 0x01,r0
	mov.l @(loc_8c0ca030,pc),r3
	mov.b r0,@(0x07,r14)
	add r14,r1
	mov.w @(loc_8c0ca012,pc),r0
	mov.w @(r0,r5),r0
	mov 0x17,r5
	xor 0x01,r0
	mov.w r0,@r1
	jsr @r3
	mov r14,r4

loc_8c0ca000:
	lds.l @r15+,pr
	mov.l @(loc_8c0ca01c,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;unused
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ca010:
	#data 0x041C
loc_8c0ca012:
	#data 0x0130
loc_8C0CA014:
	#data 0x01D0
loc_8C0CA016:
	#data 0x01E9
loc_8C0CA018:
	#data 0x00CC
loc_8C0CA01A:
	#data 0x00D0
	#align4

loc_8c0ca01c:
	#data bank03.loc_8c034dee
loc_8c0ca020:
	#data loc_8c0cB492
loc_8c0ca024:
	#data bank15.loc_8c15C34C
loc_8c0ca028:
	#data 0x43A00000
loc_8c0ca02c:
	#data 0x8C26A5A0
loc_8c0ca030:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c0ca034:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x128,PC),r0
	mov.w @(0x124,PC),r3
	add r5,r3
	mov.l r3,@r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf.s loc_8c0ca056
	mov r4,r14
	mov.w @(0x118,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8c0ca07a

loc_8c0ca056:
	mov.w @(0x110,PC),r1
	mov.b @(0x6,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(0x108,PC),r1
	mov.b @(0x7,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x10,r0
	mov.b r0,@(0x6,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ca07a:
	mov.l @(0xF4,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @r15,r2
	mov.b @(0x7,r2),r0
	tst r0,r0
	bt loc_8c0ca0a2
	mov.b @(0x7,r14),r0
	mov 0x17,r5
	mov r14,r4
	mov 0x41,r6
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov 0x00,r0
	mov.w r0,@(0x1E,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xD4,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c0ca0a2:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ca0aa:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xAE,PC),r3
	mov r5,r13
	mov r4,r14
	add r13,r3
	mov.l r3,@r15
	mov.l @(0xB0,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xA0,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0ca0e4
	mov.w @(0x98,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c0ca0e4
	mov.w @(0x1E,r14),r0
	mov.l @r15,r3
	mov r0,r2
	mov.b @(0x7,r3),r0
	extu.b r0,r0
	cmp/ge r0,r2
	bf loc_8c0ca0fc

loc_8c0ca0e4:
	mov.b @(0x7,r14),r0
	mov 0x17,r5
	mov r14,r4
	mov 0x42,r6
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x7C,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0ca0fc:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0CA106:
	mov.l r14,@-r15
	mov.w @(loc_8C0CA166,pc),r0 ; r0 set to 0x1D0
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf/s loc_8C0CA142
	mov r4,r14
	mov.w @(loc_8C0CA168,pc),r0 ; r0 set to 0x1E9
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8C0CA142
	mov.w @(loc_8C0CA16A,pc),r1 ; r1 set to 0xCc
	mov.b @(0x06,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8C0CA16C,pc),r1 ; r1 set to 0xD0
	mov.b @(0x07,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x11,r0 ; r0 set to 0x11
	mov.b r0,@(0x06,r14)
	mov 0x00,r0 ; r0 set to 0x00
	bra loc_8C0CA15c
	mov.b r0,@(0x07,r14)

loc_8C0CA142:
	mov.l @(loc_8C0CA170,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0CA15c
	lds.l @r15+,pr
	mov r13,r5
	mov.l @(loc_8C0CA178,pc),r3 ; r3 set to 0x8C0CB492
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0CA15C:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14
;----------------------------------------------
loc_8C0CA164:
	#data 0x02A4
loc_8C0CA166:
	#data 0x01D0
loc_8C0CA168:
	#data 0x01E9
loc_8C0CA16A:
	#data 0x00Cc
loc_8C0CA16C:
	#data 0x00D0
	#align4

loc_8C0CA170:
	#data bank03.loc_8c034dee
loc_8C0CA174:
	#data bank03.loc_8c034e8c
loc_8C0CA178:
	#data loc_8c0cB492

;==============================================
loc_8C0CA17C:
	mov r4,r3
	mov.l @(loc_8C0CA2E0,pc),r1 ; r1 set to 0x8C15C360
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0CA18E:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov 0xC0,r5 ; r5 set to 0xFFFFFFC0
	mov.l @(loc_8C0CA2E4,pc),r3 ; r3 set to 0x8C0CB46a
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x28,r0 ; r0 set to 0x28
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r13,r4
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s fr0,@(r0,r14)
	mov.w @(loc_8C0CA2D2,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	mov 0x70,r0 ; r0 set to 0x70
	fmov.s fr3,@(r0,r14)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s @(r0,r14),fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt/s loc_8C0CA1Cc
	mov 0x0D,r6 ; r6 set to 0x0d
	mov.w @(loc_8C0CA2D4,pc),r0 ; r0 set to 0x130
	mov 0x00,r2 ; r2 set to 0x00
	bra loc_8C0CA1D2
	mov.w r2,@(r0,r14)

loc_8c0ca1cc:
	mov.w @(loc_8c0ca2d4,pc),r0
	mov 0x01,r1
	mov.w r1,@(r0,r14)

loc_8c0ca1d2:
	mov.l @(loc_8c0ca2e8,pc),r3
	mov 0x17,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0ca1e4:
	mov.w @(loc_8C0CA2D6,pc),r0
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf/s loc_8c0ca1fe
	mov r4,r14
	mov.w @(loc_8C0CA2D8,pc),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_8c0ca220

loc_8c0ca1fe:
	mov.w @(loc_8C0CA2DA,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8C0CA2DC,pc),r1
	mov.b @(0x07,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x10,r0
	mov.b r0,@(0x06,r14)
	mov 0x00,r0
	mov.b r0,@(0x07,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ca220:
	mov 0x34,r1
	mov.w @(0x1C,r14),r0
	add r14,r1
	fmov.s @r1,fr3
	mov 0x64,r1
	mov r0,r3
	add r14,r1
	lds r3,fpul
	mov 0x34,r2
	fmov.s @r1,fr2
	add r14,r2
	mov 0x38,r1
	fsub fr3,fr2
	add r14,r1
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @r2,fr3
	fadd fr2,fr3
	fmov.s fr3,@r2
	mov 0x38,r2
	fmov.s @r1,fr3
	mov 0x70,r1
	mov.w @(0x1C,r14),r0
	add r14,r1
	fmov.s @r1,fr2
	add r14,r2
	mov r0,r3
	lds r3,fpul
	fsub fr3,fr2
	float fpul,fr3
	fdiv fr3,fr2
	fmov.s @r2,fr3
	fadd fr2,fr3
	fmov.s fr3,@r2
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0ca280
	mov.b @(0x07,r14),r0
	mov 0x17,r5
	mov.l @(loc_8c0ca2e8,pc),r3
	mov 0x00,r6
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	jsr @r3
	mov r14,r4

loc_8c0ca280:
	lds.l @r15+,pr
	mov.l @(loc_8c0ca2ec,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;unused
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ca290:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0x3C,PC),r0
	mov.l r12,@-r15
	mov r5,r12
	sts.l pr,@-r15
	mov.b @(r0,r12),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf.s loc_8c0ca2b2
	mov 0x00,r13
	mov.w @(0x2C,PC),r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_8c0ca2f0

loc_8c0ca2b2:
	mov.w @(0x24,PC),r1
	mov.b @(0x6,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(0x1C,PC),r1
	mov.b @(0x7,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x10,r0
	mov.b r0,@(0x6,r14)
	mov r13,r0
	nop
	bra loc_8c0ca352
	mov.b r0,@(0x7,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ca2d2:
	#data 0x041C
loc_8c0ca2d4:
	#data 0x0130
loc_8C0CA2D6:
	#data 0x01D0
loc_8C0CA2D8:
	#data 0x01E9
loc_8C0CA2DA:
	#data 0x00CC
loc_8C0CA2DC:
	#data 0x00D0
	#align4

loc_8c0ca2e0:
	#data bank15.loc_8c15C360
loc_8c0ca2e4:
	#data loc_8c0cB46A
loc_8c0ca2e8:
	#data bank03.loc_8c034e8c
loc_8c0ca2ec:
	#data bank03.loc_8c034dee

;==============================================
loc_8c0ca2f0:
	mov.l @(0x124,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x118,PC),r0
	mov.b @(r0,r12),r2
	tst r2,r2
	bt loc_8c0ca352
	mov.l @(0x11C,PC),r2
	mov.b @r2,r3
	tst r3,r3
	bf loc_8c0ca352
	mov.b @(0x7,r14),r0
	mov 0x44,r4
	mov 0x17,r5
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov 0x43,r6
	mov.w @(0xFE,PC),r0
	mov.w @(r0,r12),r3
	mov.w r3,@(r0,r14)
	add 0x6C,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov 0x39,r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0xEC,PC),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.l @(0xD8,PC),r2
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c0ca352:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ca35c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xB4,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0xA8,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0ca374
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)

loc_8c0ca374:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0CA37A:
	mova @(loc_8C0CA428,pc),r0  ; r0 init to 0x8C0CA428
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3
	mov.l @(loc_8C0CA418,pc),r3 ; r3 set to 0x8C034DEe
	fadd fr4,fr3 ; r3 ??? bc r4 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C0CA406
	mov.b @(0x07,r14),r0
	mov 0x00,r13 ; r13 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov r13,r0 ; r0 set to 0x00
	nop
	fldi1 fr4
	fadd fr4,fr4
	mov.w r0,@(0x1C,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r14)
	mov.w @(loc_8C0CA414,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0CA3Ca
	mova @(loc_8C0CA42C,pc),r0  ; r0 set to 0x8C0CA42c
	bra loc_8C0CA3Ce
	fmov.s @r0,fr3

loc_8c0ca3ca:
	mova @(loc_8C0CA430,pc),r0
	fmov.s @r0,fr3

loc_8c0ca3ce:
	mov 0x5C,r0
	mov.l @(loc_8c0ca424,pc),r3
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	mov 0x17,r5
	fmov.s fr3,@(r0,r14)
	mov 0x44,r6
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0CA416,pc),r0
	mov 0x3A,r2
	mov.l @(loc_8C0CA420,pc),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8C0CA406:
	lds.l @r15+,pr
	mov.l @(loc_8C0CA434,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CA412:
	#data 0x0141
loc_8C0CA414:
	#data 0x0130
loc_8c0ca416:
	#data 0x01A1
	#align4

loc_8C0CA418:
	#data bank03.loc_8c034dee
loc_8C0CA41c:
	#data 0x8C2895F6
loc_8c0ca420:
	#data 0x8C2896B0
loc_8C0CA424:
	#data bank03.loc_8c034e8c
loc_8C0CA428:
	#data 0x3D000000
loc_8C0CA42C:
	#data 0xC0D55555
loc_8c0ca430:
	#data 0x40D55555
loc_8C0CA434:
	#data bank04.loc_8c045748

;==============================================
loc_8C0CA438:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r4,r14
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	mov.l r13,@-r15
	sts.l pr,@-r15
	fmov.s @r1,fr3
	mov 0x68,r1 ; r1 set to 0x68
	fmov.s @(r0,r14),fr2
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0CA4F4,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C0CA476
	mov r5,r13
	mova @(loc_8C0CA500,pc),r0  ; r0 set to 0x8C0CA500
	fmov.s @r0,fr4
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bf loc_8C0CA48c
	bra loc_8C0CA482
	nop

loc_8c0ca476:
	mova @(loc_8C0CA504,pc),r0
	fmov.s @r0,fr4
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c0ca48c

loc_8c0ca482:
	mov 0x5C,r0
	fldi0 fr3
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0
	fmov.s fr3,@(r0,r14)

loc_8c0ca48c:
	mov.l @(loc_8c0ca508,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0CA4F6,pc),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c0ca4ae
	mov.w @(loc_8C0CA4F8,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0ca4ae
	mov.w @(loc_8C0CA4FA,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_8c0ca4c4

loc_8c0ca4ae:
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_8c0ca50c,pc),r3
	mov 0x45,r6
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x17,r5
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14
	
loc_8c0ca4c4:
	mov.w @(loc_8C0CA4FC,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0ca4d4
	mov.w @(loc_8C0CA4FE,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0ca528

loc_8c0ca4d4:
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c0ca528
	mov 0x0A,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8c0ca4f4,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c0ca518
	mova @(loc_8C0CA510,pc),r0
	fmov.s @r0,fr3
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0CA514,pc),r0
	bra loc_8c0ca524
	fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ca4f4:
	#data 0x0130
loc_8C0CA4F6:
	#data 0x0141
loc_8C0CA4F8:
	#data 0x01D0
loc_8C0CA4FA:
	#data 0x01E9
loc_8C0CA4FC:
	#data 0x019E
loc_8C0CA4FE:
	#data 0x019F
	#align4

loc_8c0ca500:
	#data 0xC0D55555
loc_8C0CA504:
	#data 0x40D55555
loc_8c0ca508:
	#data bank03.loc_8c034dee
loc_8c0ca50c:
	#data bank03.loc_8c034e8c
loc_8C0CA510:
	#data 0x40200000
loc_8C0CA514:
	#data 0xBED55555

;==============================================
loc_8c0ca518:
	mova @(loc_8C0CA648,pc),r0
	fmov.s @r0,fr3
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0CA64C,pc),r0
	fmov.s @r0,fr3

loc_8c0ca524:
	mov 0x68,r0
	fmov.s fr3,@(r0,r14)

loc_8c0ca528:
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8c0ca560
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0ca560
	mov.w @(loc_8C0CA63C,pc),r0
	mov 0x3A,r2
	mov 0x00,r4
	mov.l @(loc_8C0CA650,pc),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8c0ca560:
	lds.l @r15+,pr
	mov.l @(loc_8c0ca654,pc),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0ca56c:
	mov.l r14,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mova @(0xE0,PC),r0
	mov r4,r14
	fldi1 fr15
	mov.l r5,@r15
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fsub fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fcmp/gt fr3,fr15
	bf.s loc_8c0ca59e
	mov r14,r4
	fmov fr15,@(r0,r14)
	mov 0x54,r0
	fmov fr15,@(r0,r14)

loc_8c0ca59e:
	mov.l @(0xBC,PC),r3
	jsr @r3
	nop
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0ca5c0
	mov 0x50,r0
	mov r14,r4
	fmov fr15,@(r0,r14)
	mov 0x54,r0
	fmov fr15,@(r0,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	bra loc_8c0cb492
	mov.l @r15+,r14

loc_8c0ca5c0:
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ca5ca:
	mov.w @(0x70,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/eq fr3,fr2
	bf loc_8c0ca5f4
	mov.w @(0x62,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0ca5ee
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c0ca5f4

loc_8c0ca5ee:
	mov r14,r4
	bra loc_8c0cb492
	mov.l @r15+,r14

loc_8c0ca5f4:
	mov.b @(0x7,r14),r0
	mov r14,r4
	mov.l @(0x64,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0CA604:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @r15,r3
	fmov.s @(r0,r14),fr2
	fmov.s @(r0,r3),fr3
	fcmp/gt fr2,fr3
	bf/s loc_8C0CA664
	mov 0x1A,r5 ; r5 set to 0x1a
	mov.w @(loc_8C0CA644,pc),r0 ; r0 set to 0x130
	mov 0x01,r2 ; r2 set to 0x01
	bra loc_8C0CA66a
	mov.w r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ca63c:
	#data 0x01A1
loc_8c0ca63e:
	#data 0x041C
loc_8c0ca640:
	#data 0x01D0
loc_8c0ca642:
	#data 0x01E9
loc_8C0CA644:
	#data 0x0130
	#align4

loc_8c0ca648:
	#data 0xC0200000
loc_8c0ca64c:
	#data 0x3ED55555
loc_8c0ca650:
	#data 0x8C2896B0
loc_8C0CA654:
	#data bank04.loc_8c045748
loc_8C0CA658:
	#data 0x3D124925
loc_8C0CA65C:
	#data bank03.loc_8c034dee
loc_8C0CA660:
	#data bank15.loc_8c15c37c

;==============================================
loc_8c0ca664:
	mov.w @(loc_8C0CA744,pc),r0
	mov 0x00,r1
	mov.w r1,@(r0,r14)

loc_8c0ca66a:
	mov.l @(loc_8c0ca74c,pc),r3
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0ca750,pc),r2
	mov 0x17,r5
	mov 0x0F,r6
	jsr @r2
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8c0ca684:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0ca754,pc),r3
	jsr @r3
	mov r4,r14
	mov.w @(loc_8C0CA746,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0ca6ac
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mova @(loc_8C0CA758,pc),r0
	fmov.s @r0,fr3
	mov 0x60,r0
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0CA75C,pc),r0
	fmov.s @r0,fr3
	mov 0x6C,r0
	fmov.s fr3,@(r0,r14)

loc_8c0ca6ac:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0CA6B2:
	mov 0x60,r1 ; r1 set to 0x60
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x6C,r1 ; r1 set to 0x6c
	add r4,r1 ; r1 ??? bc r4 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr3
	mov.w @(loc_8C0CA748,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr2
	fcmp/gt fr2,fr3
	bt loc_8C0CA6Ea
	mov 0x01,r0 ; r0 set to 0x01
	mov.l @(loc_8C0CA754,pc),r3 ; r3 set to 0x8C034DEe
	mov.b r0,@(0x07,r4)
	mov.w @(loc_8C0CA748,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	mov 0x38,r0 ; r0 set to 0x38
	jmp @r3
	fmov.s fr3,@(r0,r4)

loc_8C0CA6EA:
	rts
	nop

;----------------------------------------------
loc_8C0CA6EE:
	mov r4,r3
	mov.l @(loc_8C0CA760,pc),r1 ; r1 set to 0x8C15C388
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0CA700:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov.w @(0x36,PC),r0
	mov.l @(r0,r13),r3
	tst r3,r3
	bt.s loc_8c0ca720
	fldi0 fr4
	mov.l @(r0,r13),r3
	add 0xFF,r3
	mov.l r3,@(r0,r13)

loc_8C0CA720:
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @(r0,r13),fr3
	fcmp/gt fr2,fr3
	bf.s loc_8c0ca764
	mov 0x0F,r6
	mov.w @(0x4,PC),r0
	mov 0x01,r2
	bra loc_8c0ca76a
	mov.w r2,@(r0,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ca744:
	#data 0x0130
loc_8c0ca746:
	#data 0x0141
loc_8C0CA748:
	#data 0x041c
loc_8C0CA74a:
	#data 0x02E4
	#align4

loc_8C0CA74C:
	#data bank04.loc_8c042008
loc_8C0CA750:
	#data bank03.loc_8c034e8c
loc_8C0CA754:
	#data bank03.loc_8c034dee
loc_8c0ca758:
	#data 0x40CDB6Db
loc_8c0ca75c:
	#data 0xBF4DB6Db
loc_8C0CA760:
	#data bank15.loc_8c15c388

;==============================================
loc_8C0CA764:
	mov.w @(0x10A,PC),r0
	mov 0x00,r1
	mov.w r1,@(r0,r14)

loc_8C0CA76A:
	mov.l @(0x118,PC),r3
	mov 0x17,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0CA77C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x104,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.w @(0xE4,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0ca7aa
	mov.b @(0x7,r14),r0
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0xF0,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xEC,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)

loc_8C0CA7AA:
	mov.w @(0xC8,PC),r1
	mov.l @r15,r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0ca802
	mov.w @(0xBE,PC),r2
	mov.l @r15,r0
	mov.b @(r0,r2),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8c0ca7ce
	cmp/eq 0x04,r0
	bt loc_8c0ca7e6
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CA7CE:
	mov.w @(0xA8,PC),r1
	mov.b @(0x6,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(0xA0,PC),r1
	mov.b @(0x7,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	bra loc_8c0ca7fc
	mov 0x0F,r0

loc_8C0CA7E6:
	mov.w @(0x90,PC),r1
	mov.b @(0x6,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(0x88,PC),r1
	mov.b @(0x7,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x11,r0

loc_8C0CA7FC:
	mov.b r0,@(0x6,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)

loc_8C0CA802:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CA80A:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x60,r1 ; r1 set to 0x60
	mov.l r13,@-r15
	mov 0x38,r0 ; r0 set to 0x38
	mov r5,r13
	add r14,r1 ; r1 ??? bc r14 is ???	
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0CA87E,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r13),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C0CA86a
	mov.w @(loc_8C0CA87E,pc),r0 ; r0 set to 0x41c
	mov.l @(loc_8C0CA888,pc),r3 ; r3 set to 0x8C034DEe
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0CA880,pc),r0 ; r0 set to 0x2E4
	mov.l @(r0,r13),r2
	tst r2,r2
	bt loc_8C0CA85e
	mov.l @(r0,r13),r3
	add 0xFF,r3
	mov.l r3,@(r0,r13)
	mov 0x01,r0 ; r0 set to 0x01
	bra loc_8C0CA86a
	mov.b r0,@(0x07,r14)

loc_8C0CA85E:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0CB492
	mov.l @r15+,r14

loc_8C0CA86A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ca872:
	#data 0x0130
loc_8c0ca874:
	#data 0x0141
loc_8c0ca876:
	#data 0x01d0
loc_8c0ca878:
	#data 0x01e9
loc_8c0ca87a:
	#data 0x00cc
loc_8c0ca87c:
	#data 0x00d0
loc_8c0ca87e:
	#data 0x041c
loc_8c0ca880:
	#data 0x02e4
	#align4

loc_8C0CA884:
	#data bank03.loc_8c034e8c
loc_8C0CA888:
	#data bank03.loc_8c034dee
loc_8C0CA88c:
	#data 0x40CDB6Db
loc_8C0CA890:
	#data 0xBF4DB6Db

;==============================================
loc_8C0CA894:
	mov.w @(0xFA,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	tst r3,r3
	bf.s loc_8c0ca8b8
	mov r4,r14
	mov.w @(0xF0,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bf loc_8c0ca8b2
	mov.w @(0xE8,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bt loc_8c0ca8b8

loc_8C0CA8B2:
	mov r14,r4
	bra loc_8c0cb492
	mov.l @r15+,r14

loc_8C0CA8B8:
	mov.b @(0x7,r14),r0
	mov r14,r4
	mov.l @(0xE0,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0CA8C8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x7,r14),r0
	mov 0x17,r5
	mov 0x19,r6
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov.w @(0xB8,PC),r0
	mov.l @r15,r3
	mov.w @(r0,r3),r2
	mov.l @(0xC0,PC),r3
	mov.w r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0CA8F4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0ca920
	mov.w @(0x92,PC),r1
	mov.b @(0x6,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(0x8A,PC),r1
	mov.b @(0x7,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)

loc_8C0CA920:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CA926:
	mov.w @(loc_8C0CA994,pc),r0 ; r0 set to 0x1D0
	mov.l r14,@-r15
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf/s loc_8C0CA97e
	mov r4,r14
	mov.w @(loc_8C0CA99E,pc),r0 ; r0 set to 0x1E9
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8C0CA946
	cmp/eq 0x04,r0
	bt loc_8C0CA95e
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CA946:
	mov.w @(loc_8C0CA99A,pc),r1 ; r1 set to 0xCc
	mov.b @(0x06,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8C0CA99C,pc),r1 ; r1 set to 0xD0
	mov.b @(0x07,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	extu.b r0,r0
	mov.l r0,@r1
	bra loc_8C0CA974
	mov 0x0F,r0

loc_8c0ca95e:
	mov.w @(loc_8c0ca99a,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8c0ca99c,pc),r1
	mov.b @(0x07,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x11,r0

loc_8C0CA974:
	mov.b r0,@(0x06,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x07,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CA97E:
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_8C0CA9AC,pc),r1 ; r1 set to 0x8C15C39c
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ca992:
	#data 0x0411
loc_8c0ca994:
	#data 0x01d0
loc_8c0ca996:
	#data 0x0256
loc_8c0ca998:
	#data 0x0130
loc_8c0ca99a:
	#data 0x00cc
loc_8c0ca99c:
	#data 0x00d0
loc_8c0ca99e:
	#data 0x01e9
	#align4

loc_8C0CA9A0:
	#data bank15.loc_8c15c394
loc_8C0CA9A4:
	#data bank03.loc_8c034e8c
loc_8C0CA9A8:
	#data bank03.loc_8c034dee
loc_8C0CA9AC:
	#data bank15.loc_8c15c39c

;==============================================
loc_8C0CA9B0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x1E,r0 ; r0 set to 0x1e
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C0CAAE2,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	mov.l @(loc_8C0CAAEC,pc),r3 ; r3 set to 0x8C03340c
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0CAA08
	mov.w @(loc_8C0CAAE2,pc),r0 ; r0 set to 0x130
	mov.l @(loc_8C0CAAF0,pc),r4 ; r4 set to 0x8C26A518
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bf loc_8C0CA9F2
	mova @(loc_8C0CAAF4,pc),r0  ; r0 set to 0x8C0CAAF4
	fmov.s @r0,fr3
	mov.w @(loc_8C0CAAE4,pc),r0 ; r0 set to 0x8c
	fmov.s @(r0,r4),fr2
	mov 0x34,r0 ; r0 set to 0x34
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0CAAF8,pc),r0  ; r0 set to 0x8C0CAAF8
	bra loc_8C0CAA04
	fmov.s @r0,fr2

loc_8c0ca9f2:
	mova @(loc_8C0CAAFC,pc),r0
	fmov.s @r0,fr3
	mov.w @(loc_8C0CAAE6,pc),r0
	fmov.s @(r0,r4),fr2
	mov 0x34,r0
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0CAB00,pc),r0
	fmov.s @r0,fr2

loc_8c0caa04:
	mov 0x5C,r0
	fmov.s fr2,@(r0,r14)

loc_8c0caa08:
	mov 0x68,r0
	fldi0 fr3
	fmov.s fr3,@(r0,r14)
	mov 0x17,r5
	mov.w @(loc_8C0CAAE8,pc),r0
	mov 0x0D,r6
	mov.l @(loc_8c0cab04,pc),r3
	fmov.s @(r0,r13),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0caa2a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8c0cab08,pc),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0caa66
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0CAAEA,pc),r0
	mov.w r0,@(0x1C,r14)

loc_8c0caa66:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0caa6c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x94,PC),r3
	mov r4,r14
	mov.l r5,@r15
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
	mov 0x38,r5
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	bsr loc_8c0cb46a
	mov.l @r15,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt.s loc_8c0caacc
	fmov fr0,fr4
	mov.w @(0x32,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c0caabc
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c0caacc

loc_8c0caabc:
	mov.w @(0x22,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0cab0c
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bt loc_8c0cab0c

loc_8c0caacc:
	mov.b @(0x7,r14),r0
	mov 0x17,r5
	mov r14,r4
	mov 0x1A,r6
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x24,PC),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0caae2:
	#data 0x0130
loc_8c0caae4:
	#data 0x008C
loc_8C0CAAE6:
	#data 0x0088
loc_8C0CAAE8:
	#data 0x041C
loc_8C0CAAEA:
	#data 0x012C
loc_8c0caaec:
	#data bank03.loc_8C03340C
loc_8c0caaf0:
	#data 0x8C26A518
loc_8c0caaf4:
	#data 0x42A00000
loc_8c0caaf8:
	#data 0xC0FD5555
loc_8C0CAAFC:
	#data 0xC2A00000
loc_8C0CAB00:
	#data 0x40FD5555
loc_8c0cab04:
	#data bank03.loc_8c034e8c
loc_8c0cab08:
	#data bank03.loc_8c034dee

;==============================================
loc_8c0cab0c:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0CAB14:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C0CAC50,pc),r3 ; r3 set to 0x8C034DEe
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	jsr @r3
	mov.l @r15,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0CAB32
	mov.l @r15,r4
	mov.l @(0x04,r15),r5
	add 0x08,r15
	bra loc_8C0CB492
	lds.l @r15+,pr

loc_8C0CAB32:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0CAB3A:
	mov r4,r3
	mov.l @(loc_8C0CAC54,pc),r1 ; r1 set to 0x8C15C3Ac
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0CAB4C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x21,r6 ; r6 set to 0x21
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0CAC4C,pc),r0 ; r0 set to 0x130
	mov.l @r15,r3
	mov.w @(r0,r3),r2
	mov.l @(loc_8C0CAC58,pc),r3 ; r3 set to 0x8C034E8c
	mov.w r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???	
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0CAB78:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C0CAC50,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	jsr @r3
	mov.l @r15,r4
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C0CAB96
	mov.l @r15,r4
	mov.l @(0x04,r15),r5
	add 0x08,r15
	bra loc_8C0CB492
	lds.l @r15+,pr

loc_8C0CAB96:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0CAB9E:
	mov.w @(loc_8C0CAC4E,pc),r0 ; r0 set to 0x1D0
	mov.l r14,@-r15
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt/s loc_8C0CABB2
	mov r4,r14
	mov r14,r4
	bra loc_8C0CB492
	mov.l @r15+,r14

loc_8C0CABB2:
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_8C0CAC5C,pc),r1 ; r1 set to 0x8C15C3B4
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0CABC2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x1B,r6 ; r6 set to 0x1b
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0CAC4C,pc),r0 ; r0 set to 0x130
	mov.l @r15,r3
	mov.w @(r0,r3),r2
	mov.l @(loc_8C0CAC58,pc),r3 ; r3 set to 0x8C034E8c
	mov.w r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???	
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0CABEE:
	mov.l @(loc_8C0CAC50,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	jmp @r3
	nop

loc_8C0CABF4:
	mov r4,r3
	mov.l @(loc_8C0CAC60,pc),r1 ; r1 set to 0x8C15C3Bc
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0CAC06:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov 0x38,r5
	bsr loc_8c0cb46a
	mov r13,r4
	mov 0x34,r0
	fmov @(r0,r14),fr4
	mova @(0x48,PC),r0
	fmov @r0,fr3
	fsub fr0,fr4
	fcmp/gt fr4,fr3
	bt loc_8c0cac2c
	mova @(0x40,PC),r0
	fmov @r0,fr2
	fcmp/gt fr2,fr4
	bf loc_8c0cac3c

loc_8C0CAC2C:
	mov r13,r5
	mov 0x01,r0
	mov.b r0,@(0x7,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0cac6c
	mov.l @r15+,r14

loc_8C0CAC3C:
	mov r13,r5
	mov 0x03,r0
	mov.b r0,@(0x7,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0cad50
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CAC4C:
	#data 0x0130
loc_8C0CAC4E:
	#data 0x01D0
	#align4

loc_8C0CAC50:
	#data bank03.loc_8c034dee
loc_8C0CAC54:
	#data bank15.loc_8c15c3Ac
loc_8C0CAC58:
	#data bank03.loc_8c034e8c
loc_8C0CAC5C:
	#data bank15.loc_8c15c3B4
loc_8C0CAC60:
	#data bank15.loc_8c15c3Bc
loc_8C0CAC64:
	#data 0xC1555555
loc_8C0CAC68:
	#data 0x41555555

;==============================================
loc_8C0CAC6C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	mov 0x38,r5 ; r5 set to 0x38
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	bsr loc_8C0CB46a
	mov.l @r15,r4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	fcmp/gt fr3,fr0 ; r0 ??? bc r3 is ???	
	bt loc_8C0CAC96
	mov.w @(loc_8C0CAD3A,pc),r0 ; r0 set to 0x130
	mov 0x00,r2 ; r2 set to 0x00
	mov.w r2,@(r0,r14)
	mova @(loc_8C0CAD40,pc),r0  ; r0 set to 0x8C0CAD40
	bra loc_8C0CACA0
	fmov.s @r0,fr3

loc_8c0cac96:
	mov.w @(loc_8c0cad3a,pc),r0
	mov 0x01,r2
	mov.w r2,@(r0,r14)
	mova @(loc_8C0CAD44,pc),r0
	fmov.s @r0,fr3

loc_8c0caca0:
	mov 0x5C,r0
	mov.l @(loc_8c0cad48,pc),r3
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	mov 0x17,r5
	fmov.s fr3,@(r0,r14)
	mov 0x0C,r6
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8c0cacbe:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8c0cad4c,pc),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	mov 0x38,r5
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	bsr loc_8c0cb46a
	mov.l @r15,r4
	mov.w @(loc_8c0cad3a,pc),r0
	fmov fr0,fr4
	mov.w @(r0,r14),r2
	tst r2,r2
	bf/s loc_8c0cad04
	mov 0x03,r4
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c0cad14

loc_8c0cad04:
	mov.w @(loc_8c0cad3a,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0cad1e
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bt loc_8c0cad1e

loc_8c0cad14:
	mov r4,r0
	nop
	mov.b r0,@(0x07,r14)
	mov 0x34,r0
	fmov.s fr4,@(r0,r14)

loc_8c0cad1e:
	mov.w @(loc_8C0CAD3C,pc),r0
	mov.l @r15,r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c0cad32
	mov r4,r0
	nop
	mov.b r0,@(0x07,r14)
	mov 0x34,r0
	fmov.s fr4,@(r0,r14)

loc_8c0cad32:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0cad3a:
	#data 0x0130
loc_8C0CAD3C:
	#data 0x0141
	#align4

loc_8c0cad40:
	#data 0xC0D55555
loc_8C0CAD44:
	#data 0x40D55555
loc_8c0cad48:
	#data bank03.loc_8c034e8c
loc_8c0cad4c:
	#data bank03.loc_8c034dee

;==============================================
loc_8c0cad50:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov.l r5,@r15
	mov 0x17,r5
	mov.b @(0x7,r14),r0
	mov 0x00,r6
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xC2,PC),r0
	mov.l @r15,r3
	mov.w @(r0,r3),r2
	mov.l @(0xC4,PC),r3
	mov.w r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8c0cad8e:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0xB0,PC),r3
	jsr @r3
	mov r5,r13
	mov.w @(0x9E,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c0cade2
	mov 0x38,r5
	bsr loc_8c0cb46a
	mov r13,r4
	mov 0x34,r0
	fmov @(r0,r14),fr4
	mova @(0x98,PC),r0
	fmov @r0,fr3
	fsub fr0,fr4
	fcmp/gt fr4,fr3
	bt loc_8c0cadc2
	mova @(0x94,PC),r0
	fmov @r0,fr2
	fcmp/gt fr2,fr4
	bf loc_8c0cadc6

loc_8c0cadc2:
	mov 0x01,r0
	mov.b r0,@(0x7,r14)

loc_8c0cadc6:
	mov.w @(0x76,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c0cade2
	mov 0x05,r0
	mov.l @(0x70,PC),r3
	mov r14,r4
	mov.b r0,@(0x7,r14)
	lds.l @r15+,pr
	mov 0x13,r6
	mov 0x17,r5
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0cade2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0CADEA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0CAE48,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0CAE36
	mov.b @(0x07,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0CAE3C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)
	mov.w @(r0,r14),r1
	tst r1,r1
	bf loc_8C0CAE16
	mova @(loc_8C0CAE54,pc),r0  ; r0 set to 0x8C0CAE54
	bra loc_8C0CAE1a
	fmov.s @r0,fr3

loc_8C0CAE16:
	mova @(loc_8C0CAE58,pc),r0  ; r0 init to 0x8C0CAE58
	fmov.s @r0,fr3

loc_8C0CAE1A:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	mov.l @(loc_8C0CAE44,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fldi0 fr3
	mov r14,r4
	fmov.s fr3,@(r0,r14)
	mov 0x01,r0 ; r0 set to 0x01, r0 set to 0x01
	mov.w r0,@(0x1C,r14)
	mov 0x14,r6 ; r6 set to 0x14, r6 set to 0x14
	lds.l @r15+,pr
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	jmp @r3
	mov.l @r15+,r14

loc_8C0CAE36:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CAE3C:
	#data 0x0130
loc_8C0CAE3e:
	#data 0x01D0
loc_8C0CAE40:
	#data 0x0141
	#align4

loc_8C0CAE44:
	#data bank03.loc_8c034e8c
loc_8C0CAE48:
	#data bank03.loc_8c034dee
loc_8C0CAE4c:
	#data 0xC1555555
loc_8C0CAE50:
	#data 0x41555555
loc_8C0CAE54:
	#data 0xC0D55555
loc_8C0CAE58:
	#data 0x40D55555

;==============================================
loc_8C0CAE5C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c0caece
	mov r4,r14
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
	mov.w @(0x118,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c0cae9a
	mov.l @(0x118,PC),r2
	mova @(0x114,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov @r2,fr2
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bf loc_8c0caeb4

loc_8C0CAE9A:
	mov.w @(0xFE,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0caec8
	mov.l @(0x108,PC),r3
	mova @(0x100,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fmov @r3,fr2
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt loc_8c0caec8

loc_8C0CAEB4:
	mov.b @(0x7,r14),r0
	mov r14,r4
	mov.l @(0xF4,PC),r3
	mov 0x15,r6
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov 0x17,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0CAEC8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CAECE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0CAFB4,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0CAEFc
	mov.l @(loc_8C0CAFB8,pc),r2 ; r2 set to 0x8C03319e
	jsr @r2
	nop
	and 0x1F,r0
	mov.l @(loc_8C0CAFBC,pc),r3 ; r3 set to 0x8C042008
	add 0x3C,r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	mov 0x1A,r5 ; r5 set to 0x1a
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0CAEFC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CAF02:
	mov r4,r3
	mov.l @(loc_8C0CAFC0,pc),r1 ; r1 set to 0x8C15C3Dc
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0CAF14:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	fldi0 fr4
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @r15,r3
	fmov.s @(r0,r14),fr2
	fmov.s @(r0,r3),fr3
	fcmp/gt fr2,fr3
	bf/s loc_8C0CAF4c
	mov 0x00,r6 ; r6 set to 0x00
	mov.w @(loc_8C0CAF9C,pc),r0 ; r0 set to 0x130
	mov 0x01,r2 ; r2 set to 0x01
	bra loc_8C0CAF52
	mov.w r2,@(r0,r14)

loc_8C0CAF4C:
	mov.w @(loc_8C0CAF9C,pc),r0 ; r0 set to 0x130
	mov 0x00,r1 ; r1 set to 0x00
	mov.w r1,@(r0,r14)

loc_8C0CAF52:
	mov.l @(loc_8C0CAFB0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	jsr @r3
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???	
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0CAF64:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0CAFB4,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0CAF9E,pc),r0 ; r0 set to 0x141, r0 set to 0x141, r0 set to 0x141
	mov.l @r15,r2
	mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???, r3 ??? bc r2 is ???, r3 ??? bc r2 is ???	
	tst r3,r3
	bf loc_8C0CAF94
	mov.b @(0x07,r14),r0
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17, r5 set to 0x17
	mov r14,r4
	mov 0x12,r6 ; r6 set to 0x12, r6 set to 0x12, r6 set to 0x12
	add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142, r0 set to 0x142
	mov.b r0,@(0x07,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0CAFB0,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	jmp @r3
	mov.l @r15+,r14

loc_8C0CAF94:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CAF9C:
	#data 0x0130
loc_8C0CAF9E:
	#data 0x0141
	#align4

loc_8C0CAFa0:
	#data 0x423AAAAa
loc_8C0CAFa4:
	#data 0x8C26A5A0
loc_8C0CAFa8:
	#data 0xC23AAAAa
loc_8C0CAFac:
	#data 0x8C26A5A4
loc_8C0CAFB0:
	#data bank03.loc_8c034e8c
loc_8C0CAFB4:
	#data bank03.loc_8c034dee
loc_8C0CAFB8:
	#data bank03.loc_8c03319e
loc_8C0CAFBC:
	#data bank04.loc_8c042008
loc_8C0CAFC0:
	#data bank15.loc_8c15c3Dc

;==============================================
loc_8C0CAFC4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0CB0F4,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0CAFEc
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0CB492
	mov.l @r15+,r14

loc_8C0CAFEC:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CAFF4:
	mov r4,r3
	mov.l @(loc_8C0CB0F8,pc),r1 ; r1 set to 0x8C15C3E8
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0CB006:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov 0x38,r5 ; r5 set to 0x38
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	bsr loc_8C0CB46a
	mov r13,r4
	mov 0x34,r0 ; r0 set to 0x34
	fldi0 fr3
	fmov.s @(r0,r14),fr4
	fldi1 fr5
	fsub fr0,fr4
	fneg fr5
	fcmp/gt fr4,fr3
	bt/s loc_8C0CB034
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C0CB0F0,pc),r0 ; r0 set to 0x130
	bra loc_8C0CB03c
	mov.w r4,@(r0,r14)

loc_8C0CB034:
	fmul fr5,fr4
	mov.w @(loc_8C0CB0F0,pc),r0 ; r0 set to 0x130
	mov 0x01,r2 ; r2 set to 0x01
	mov.w r2,@(r0,r14)

loc_8C0CB03C:
	mova @(loc_8C0CB0FC,pc),r0  ; r0 set to 0x8C0CB0FC, r0 init to 0x8C0CB0Fc
	fmov.s @r0,fr3
	fcmp/gt fr4,fr3
	bt loc_8C0CB05a
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	mov.b r0,@(0x06,r14)
	mov r4,r0 ; r0 ??? bc r4 is ???, r0 ??? bc r4 is ???	
	nop
	mov r13,r5
	mov.b r0,@(0x07,r14)
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0CB126
	mov.l @r15+,r14

loc_8C0CB05A:
	mov.w @(loc_8C0CB0F0,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	mov.w @(r0,r13),r2
	cmp/eq r3,r2
	bf loc_8C0CB06a
	mova @(loc_8C0CB100,pc),r0  ; r0 set to 0x8C0CB100
	bra loc_8C0CB06e
	fmov.s @r0,fr3

loc_8c0cb06a:
	mova @(loc_8C0CB104,pc),r0
	fmov.s @r0,fr3

loc_8c0cb06e:
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8c0cb0f0,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0cb088
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fmul fr5,fr3
	fmov.s fr3,@(r0,r14)

loc_8c0cb088:
	mov.w @(loc_8C0CB0F2,pc),r3
	mov.b @(0x06,r14),r0
	add r14,r3
	mov.l @r3,r3
	extu.b r0,r0
	cmp/eq r3,r0
	bt loc_8c0cb0a0
	mov.l @(loc_8c0cb108,pc),r3
	mov 0x17,r5
	mov 0x0C,r6
	jsr @r3
	mov r14,r4

loc_8c0cb0a0:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0cb0ac
	mov.l @r15+,r14

loc_8C0CB0AC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0CB0F4,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0 ; r0 set to 0x5b
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0 ; r0 ??	
	tst r0,r0
	bf loc_8C0CB10c
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0CB492
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CB0F0:
	#data 0x0130
loc_8c0cb0f2:
	#data 0x00Cc
	#align4

loc_8C0CB0F4:
	#data bank03.loc_8c034dee
loc_8C0CB0F8:
	#data bank15.loc_8c15c3E8
loc_8C0CB0FC:
	#data 0x42BAAAAa
loc_8C0CB100:
	#data 0xC0D55555
loc_8c0cb104:
	#data 0xC0A00000
loc_8C0CB108:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0CB10C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CB114:
	mov r4,r3
	mov.l @(loc_8C0CB248,pc),r1 ; r1 set to 0x8C15C3F0
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0CB126:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	mov 0x38,r5 ; r5 set to 0x38
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	bsr loc_8C0CB46a
	mov.l @r15,r4
	mov 0x34,r0 ; r0 set to 0x34
	fldi0 fr2
	fmov.s @(r0,r14),fr3
	fsub fr0,fr3
	fcmp/gt fr3,fr2
	bt loc_8C0CB154
	mov.w @(loc_8C0CB23C,pc),r0 ; r0 set to 0x130
	mov 0x00,r2 ; r2 set to 0x00
	mov.w r2,@(r0,r14)
	mova @(loc_8C0CB24C,pc),r0  ; r0 set to 0x8C0CB24c
	bra loc_8C0CB15e
	fmov.s @r0,fr3

loc_8c0cb154:
	mov.w @(loc_8c0cb23c,pc),r0
	mov 0x01,r2
	mov.w r2,@(r0,r14)
	mova @(loc_8C0CB250,pc),r0
	fmov.s @r0,fr3

loc_8c0cb15e:
	mov 0x5C,r0
	mov.w @(loc_8C0CB23E,pc),r3
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	add r14,r3
	fmov.s fr3,@(r0,r14)
	mov.b @(0x06,r14),r0
	mov.l @r3,r3
	extu.b r0,r0
	cmp/eq r3,r0
	bt loc_8c0cb180
	mov.l @(loc_8c0cb254,pc),r3
	mov 0x17,r5
	mov 0x0D,r6
	jsr @r3
	mov r14,r4

loc_8c0cb180:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0CB18A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0CB258,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0 ; r0 set to 0x5b
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0 ; r0 ??	
	tst r0,r0
	bf loc_8C0CB1Ce
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0CB492
	mov.l @r15+,r14

loc_8C0CB1CE:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CB1D6:
	mov r4,r3
	mov.l @(loc_8C0CB25C,pc),r1 ; r1 set to 0x8C15C3F8
	mov.l r4,@-r15
	mov.b @(0x07,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0CB1E8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	mov 0x17,r5 ; r5 set to 0x17
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0CB23C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r13),r3
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C0CB240,pc),r0 ; r0 set to 0x1D3
	mov.l @(loc_8C0CB254,pc),r3 ; r3 set to 0x8C034E8c
	mov.b @(r0,r13),r6
	add 0x04,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???	
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0CB216:
	mov.l r14,@-r15
	mov.w @(loc_8C0CB242,pc),r0 ; r0 set to 0x1D0, r0 set to 0x1D0
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf/s loc_8C0CB296
	mov r4,r14
	mov.w @(loc_8C0CB244,pc),r0 ; r0 set to 0x1E9, r0 set to 0x1E9
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???, r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8C0CB260
	cmp/eq 0x04,r0
	bt loc_8C0CB278
	bra loc_8C0CB2F2
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CB23C:
	#data 0x0130
loc_8c0cb23e:
	#data 0x00Cc
loc_8C0CB240:
	#data 0x01D3
loc_8C0CB242:
	#data 0x01D0
loc_8C0CB244:
	#data 0x01E9
	#align4

loc_8C0CB248:
	#data bank15.loc_8c15c3F0
loc_8C0CB24C:
	#data 0xC0FD5555
loc_8c0cb250:
	#data 0x40FD5555
loc_8C0CB254:
	#data bank03.loc_8c034e8c
loc_8C0CB258:
	#data bank03.loc_8c034dee
loc_8C0CB25C:
	#data bank15.loc_8c15c3F8

;==============================================
loc_8C0CB260:
	mov.w @(loc_8C0CB36C,pc),r1 ; r1 set to 0xCc
	mov.b @(0x06,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8C0CB36E,pc),r1 ; r1 set to 0xD0
	mov.b @(0x07,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	extu.b r0,r0
	mov.l r0,@r1
	bra loc_8C0CB28e
	mov 0x0F,r0

loc_8c0cb278:
	mov.w @(loc_8c0cb36c,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8c0cb36e,pc),r1
	mov.b @(0x07,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x11,r0

loc_8C0CB28E:
	mov.b r0,@(0x06,r14)
	mov 0x00,r0 ; r0 set to 0x00
	bra loc_8C0CB2F2
	mov.b r0,@(0x07,r14)

loc_8C0CB296:
	mov.l @(loc_8C0CB378,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0CB370,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0CB2F2
	mov.b @(0x07,r14),r0
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0CB372,pc),r0 ; r0 set to 0x1D3
	mov.b @(r0,r13),r3
	tst r3,r3
	bf/s loc_8C0CB2Ba
	fldi0 fr4
	mova @(loc_8C0CB37C,pc),r0  ; r0 set to 0x8C0CB37c
	bra loc_8C0CB2C4
	fmov.s @r0,fr3

loc_8C0CB2BA:
	mov.b @(r0,r13),r0
	cmp/eq 0x01,r0
	bf loc_8C0CB2Ca
	mova @(loc_8C0CB380,pc),r0  ; r0 set to 0x8C0CB380
	fmov.s @r0,fr3

loc_8C0CB2C4:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	bra loc_8C0CB2Ce
	fmov.s fr3,@(r0,r14)

loc_8c0cb2ca:
	mov 0x5C,r0
	fmov.s fr4,@(r0,r14)

loc_8c0cb2ce:
	mov.w @(loc_8C0CB374,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0cb2de
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)

loc_8c0cb2de:
	mov 0x68,r0
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0CB384,pc),r0
	fmov.s @r0,fr3
	mov 0x60,r0
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0CB388,pc),r0
	fmov.s @r0,fr3
	mov 0x6C,r0
	fmov.s fr3,@(r0,r14)

loc_8C0CB2F2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CB2FA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov.l r5,@r15
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
	fldi1 fr3
	fmov fr2,@(r0,r14)
	mov.l @r15,r3
	fadd fr3,fr3
	mov 0x60,r0
	fmov @(r0,r3),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0cb360
	mov.b @(0x7,r14),r0
	mov 0x17,r5
	mov.l @(0x3C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov.w @(0x1A,PC),r0
	mov.l @r15,r6
	mov.b @(r0,r6),r6
	add 0x07,r6
	jsr @r3
	mov r14,r4

loc_8C0CB360:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x10,PC),r2
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CB36C:
	#data 0x00Cc
loc_8C0CB36E:
	#data 0x00D0
loc_8C0CB370:
	#data 0x0141
loc_8C0CB372:
	#data 0x01D3
loc_8c0cb374:
	#data 0x0130
	#align4

loc_8C0CB378:
	#data bank03.loc_8c034dee
loc_8C0CB37C:
	#data 0xC0A00000
loc_8C0CB380:
	#data 0x40A00000
loc_8c0cb384:
	#data 0x42092492
loc_8c0cb388:
	#data 0xBF4DB6Db
loc_8C0CB38C:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0CB390:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l r13,@-r15
	sts.l pr,@-r15
	fmov @r1,fr3
	mov 0x68,r1
	fmov @(r0,r14),fr2
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
	mova @(0x110,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt.s loc_8c0cb3e4
	mov r5,r13
	mov 0x6C,r0
	fldi0 fr2
	fmov fr2,@(r0,r14)

loc_8C0CB3E4:
	mov.w @(0xEC,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0cb40c
	mov.b @(0x7,r14),r0
	mov 0x17,r5
	mov.l @(0xF0,PC),r3
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mov.w @(0xD6,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xD0,PC),r0
	mov.b @(r0,r13),r6
	add 0x0A,r6
	jsr @r3
	mov r14,r4

loc_8C0CB40C:
	lds.l @r15+,pr
	mov.l @(0xDC,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0CB418:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(loc_8C0CB4EC,pc),r3 ; r3 set to 0x8C034DEe
	mov.l r4,@r15
	mov.l r5,@(0x04,r15)
	jsr @r3
	mov.l @r15,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0CB436
	mov.l @r15,r4
	mov.l @(0x04,r15),r5
	add 0x08,r15
	bra loc_8C0CB492
	lds.l @r15+,pr

loc_8C0CB436:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0CB43E:
	mov.b @(0x04,r4),r0
	mov 0x00,r5 ; r5 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CB4D8,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r4)
	rts
	mov.b r5,@r4

;----------------------------------------------
loc_8C0CB44E:
	mov.l @(loc_8C0CB4F0,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C0CB454:
	mov 0x01,r3
	exts.w r5,r5
	exts.w r4,r4
	shad r5,r3
	tst r4,r3
	bt loc_8c0cb464
	rts
	mov 0x01,r0

;----------------------------------------------
loc_8C0CB464:
	mov 0x00,r0
	rts
	nop

;----------------------------------------------
loc_8C0CB46A:
	exts.w r5,r5
	lds r5,fpul
	mova @(loc_8C0CB4F4,pc),r0  ; r0 init to 0x8C0CB4F4
	fmov.s @r0,fr2
	mov.w @(loc_8C0CB4DA,pc),r0 ; r0 set to 0x130
	float fpul,fr3
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr4
	bf/s loc_8C0CB488
	fmul fr2,fr4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr0 ; r0 ??? bc r4 is ???	
	rts
	fadd fr4,fr0

;----------------------------------------------
loc_8C0CB488:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr0 ; r0 ??? bc r4 is ???	
	fsub fr4,fr0
	rts
	nop

;----------------------------------------------
loc_8C0CB492:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x04,r0 ; r0 set to 0x04
	mov r4,r14
	mov.w r0,@(0x1E,r14)
	mov r5,r13
	mov.w @(loc_8C0CB4DC,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf/s loc_8C0CB526
	mov 0x00,r12 ; r12 set to 0x00
	mov.w @(loc_8C0CB4DE,pc),r0 ; r0 set to 0x1E9
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8C0CB4F8
	mov.w @(loc_8C0CB4E0,pc),r1 ; r1 set to 0xCc
	mov.b @(0x06,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8C0CB4E2,pc),r1 ; r1 set to 0xD0
	mov.b @(0x07,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	extu.b r0,r0
	mov.l r0,@r1
	bra loc_8C0CB642
	mov 0x0F,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CB4D4:
	#data 0x041c
loc_8C0CB4D6:
	#data 0x01D3
loc_8C0CB4D8:
	#data 0x012c
loc_8C0CB4DA:
	#data 0x0130
loc_8C0CB4DC:
	#data 0x01D0
loc_8C0CB4DE:
	#data 0x01E9
loc_8C0CB4E0:
	#data 0x00Cc
loc_8C0CB4E2:
	#data 0x00D0
	#align4

loc_8C0CB4E4:
	#data 0xC19A4924
loc_8C0CB4E8:
	#data bank03.loc_8c034e8c
loc_8C0CB4EC:
	#data bank03.loc_8c034dee
loc_8C0CB4F0:
	#data bank04.loc_8c0450C0
loc_8C0CB4F4:
	#data 0x3FD55555

;==============================================
loc_8C0CB4F8:
	mov.w @(loc_8C0CB5D8,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8C0CB526
	mov.w @(loc_8C0CB5DA,pc),r0 ; r0 set to 0x1E9
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8C0CB526
	mov.w @(loc_8C0CB5DC,pc),r1 ; r1 set to 0xCc
	mov.b @(0x06,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8C0CB5DE,pc),r1 ; r1 set to 0xD0
	mov.b @(0x07,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x11,r0 ; r0 set to 0x11
	bra loc_8C0CB6Fc
	nop

loc_8c0cb526:
	mov.w @(loc_8C0CB5E0,pc),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c0cb536
	mov.w @(loc_8C0CB5E2,pc),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c0cb552

loc_8c0cb536:
	mov.l @(loc_8C0CB5E8,pc),r3
	mov.b @(0x02,r13),r0
	mov.b @r3,r4
	extu.b r0,r5
	bsr loc_8c0cb454
	extu.b r4,r4
	tst r0,r0
	bt loc_8c0cb56a
	mov.l @(loc_8C0CB5EC,pc),r3
	mov 0x05,r1
	mov.b @r3,r2
	extu.b r2,r2
	cmp/ge r1,r2
	bf loc_8c0cb56a

loc_8c0cb552:
	mov.w @(loc_8c0cb5dc,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8c0cb5de,pc),r1
	mov.b @(0x07,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	bra loc_8c0cb6fc
	mov 0x01,r0

loc_8c0cb56a:
	mov.w @(loc_8c0cb5d8,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bf loc_8c0cb594
	mov.w @(loc_8C0CB5E4,pc),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c0cb594
	mov.w @(loc_8c0cb5dc,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8c0cb5de,pc),r1
	mov.b @(0x07,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	bra loc_8c0cb6fc
	mov 0x06,r0

loc_8c0cb594:
	mov.l @(loc_8c0cb5f0,pc),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0cb5b6
	mov.w @(loc_8c0cb5dc,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8c0cb5de,pc),r1
	mov.b @(0x07,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	bra loc_8c0cb6fc
	mov 0x04,r0

loc_8c0cb5b6:
	mov.w @(loc_8C0CB5E6,pc),r0
	mov 0x03,r2
	mov.w @(r0,r13),r3
	cmp/ge r2,r3
	bf loc_8c0cb5f4
	mov.w @(loc_8c0cb5dc,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8c0cb5de,pc),r1
	mov.b @(0x07,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	bra loc_8c0cb6fc
	mov 0x10,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0cb5d8:
	#data 0x01D0
loc_8c0cb5da:
	#data 0x01E9
loc_8c0cb5dc:
	#data 0x00CC
loc_8c0cb5de:
	#data 0x00D0
loc_8C0CB5E0:
	#data 0x0411
loc_8C0CB5E2:
	#data 0x0255
loc_8C0CB5E4:
	#data 0x0256
loc_8C0CB5E6:
	#data 0x026C
loc_8C0CB5E8:
	#data 0x8C289628
loc_8C0CB5EC:
	#data 0x8C2895F0
loc_8c0cb5f0:
	#data bank03.loc_8c03340c

;==============================================
loc_8c0cb5f4:
mov.w @(loc_8C0CB6C6,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0cb620
	mov.w @(loc_8C0CB6C8,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0cb620
	mov.w @(loc_8C0CB6CA,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8C0CB6CC,pc),r1
	mov.b @(0x07,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	bra loc_8c0cb6fc
	mov 0x0A,r0

loc_8c0cb620:
	mov.w @(loc_8C0CB6CE,pc),r0
	mov.w @(loc_8C0CB6D0,pc),r2
	mov.w @(r0,r13),r3
	extu.w r3,r3
	cmp/eq r2,r3
	bf loc_8c0cb646
	mov.w @(loc_8C0CB6CA,pc),r1
	mov.b @(0x06,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(loc_8C0CB6CC,pc),r1
	mov.b @(0x07,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x0E,r0

loc_8C0CB642:
	bra loc_8C0CB796
	mov.b r0,@(0x06,r14)

loc_8C0CB646:
	mov.w @(0x88,PC),r0
	mov.l @(r0,r13),r2
	tst r2,r2
	bt loc_8c0cb668
	mov.w @(0x78,PC),r1
	mov.b @(0x6,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(0x70,PC),r1
	mov.b @(0x7,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x12,r0
	bra loc_8c0cb796
	mov.b r0,@(0x6,r14)

loc_8C0CB668:
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf.s loc_8c0cb6dc
	mov 0x0C,r4
	mov.w @(0x52,PC),r1
	mov.b @(0x6,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(0x4A,PC),r1
	mov.b @(0x7,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov 0x20,r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8c0cb6be
	cmp/eq 0x02,r0
	bt loc_8c0cb6be
	cmp/eq 0x05,r0
	bt loc_8c0cb6be
	cmp/eq 0x06,r0
	bt loc_8c0cb6be
	cmp/eq 0x07,r0
	bt loc_8c0cb6be
	cmp/eq 0x08,r0
	bt loc_8c0cb6c2
	cmp/eq 0x09,r0
	bt loc_8c0cb6c2
	cmp/eq 0x0A,r0
	bt loc_8c0cb6c2
	cmp/eq 0x01,r0
	bt loc_8c0cb6d4
	cmp/eq 0x03,r0
	bt loc_8c0cb6d4
	cmp/eq 0x04,r0
	bt loc_8c0cb6d4
	bra loc_8c0cb796
	nop

loc_8C0CB6BE:
	bra loc_8c0cb6d8
	mov 0x08,r0

loc_8C0CB6C2:
	bra loc_8c0cb6d8
	mov 0x0D,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0cb6c6:
	#data 0x01D0
loc_8c0cb6c8:
	#data 0x01E9
loc_8c0cb6ca:
	#data 0x00CC
loc_8c0cb6cc:
	#data 0x00D0
loc_8c0cb6ce:
	#data 0x0158
loc_8c0cb6d0:
	#data 0x1803
loc_8c0cb6d2:
	#data 0x02E4

;==============================================
loc_8C0CB6D4:
	mov r4,r0
	nop

loc_8C0CB6D8:
	bra loc_8c0cb796
	mov.b r0,@(0x6,r14)

loc_8C0CB6DC:
	mov.w @(0xC8,PC),r0
	mov.w @(r0,r13),r3
	cmp/pl r3
	bt loc_8c0cb700
	mov.w @(0xC2,PC),r1
	mov.b @(0x6,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(0xBA,PC),r1
	mov.b @(0x7,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov r4,r0
	nop

loc_8C0CB6FC:
	bra loc_8C0CB796
	mov.b r0,@(0x06,r14)

;==============================================
loc_8C0CB700:
	mov.w @(0xAA,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x0E,r0
	bf loc_8c0cb72e
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov @(r0,r13),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0cb72e
	mov.w @(0x90,PC),r1
	mov.b @(0x6,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	mov.w @(0x88,PC),r1
	mov.b @(0x7,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	bra loc_8c0cb6fc
	mov 0x09,r0

loc_8C0CB72E:
	mov 0x38,r5
	mov r15,r11
	bsr loc_8c0cb46a
	mov r13,r4
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fsub fr3,fr0
	fmov fr0,@r11
	fmov @(r0,r13),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r11)
	mova @(0x6C,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fmov @(r0,r11),fr1
	fadd fr3,fr2
	fcmp/gt fr1,fr2
	bt.s loc_8c0cb75c
	fldi0 fr3
	mov 0x01,r12

loc_8C0CB75C:
	fmov @r11,fr2
	fcmp/gt fr2,fr3
	bf loc_8c0cb76c
	fmov @r11,fr1
	fldi1 fr2
	fneg fr2
	fmul fr2,fr1
	fmov fr1,@r11

loc_8C0CB76C:
	mova @(0x48,PC),r0
	fmov @r11,fr2
	fmov @r0,fr3
	fcmp/gt fr2,fr3
	bt.s loc_8c0cb77a
	mov.b @(0x6,r14),r0
	add 0x02,r12

loc_8c0cb77a:
	mov.w @(0x2C,PC),r1
	extu.b r0,r0
	add r14,r1
	mov.l r0,@r1
	mov.w @(0x26,PC),r1
	mov.b @(0x7,r14),r0
	add r14,r1
	extu.b r0,r0
	mov.l r0,@r1
	extu.b r12,r0
	mov.l @(0x2C,PC),r1
	shll r0
	mov.b @(r0,r1),r0
	mov.b r0,@(0x6,r14)

loc_8C0CB796:
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x07,r14)
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0cb7a8:
	#data 0x0420
loc_8c0cb7aa:
	#data 0x00CC
loc_8c0cb7ac:
	#data 0x00D0
loc_8c0cb7ae:
	#data 0x01D0
	#align4

loc_8C0CB7B0:
	#data 0x41892492
loc_8C0CB7B4:
	#data 0x42CDB6Db
loc_8C0CB7B8:
	#data 0x42855555
loc_8C0CB7BC:
	#data bank15.loc_8c15c40c

;==============================================
;unused
loc_8c0cb7c0:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x150,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x03,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0cb7e6
	mov r0,r4
	mov.l @(0x140,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c0cb7e6:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0CB7EE:
	mov r4,r3
	mov.l @(loc_8C0CB920,pc),r1 ; r1 set to 0x8C15C48c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0CB800:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0CB906,pc),r3 ; r3 set to 0x1004
	mov.w @(loc_8C0CB908,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0CB908,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x04,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C0CB90A,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0CB924,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???	
	mov.w @(loc_8C0CB90C,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x02,r4),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r4),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0CB90E,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r4),r2 ; r2 ??? bc r4 is ???	
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r4),r3
	mov r4,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0CB928,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0CB92C,pc),r1 ; r1 set to 0x8C15C414
	mov.b @(r0,r4),r2
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8C0CB930,pc),r6 ; r6 set to 0x8C26A518
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0CB90C,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	mov 0x01,r3 ; r3 set to 0x01
	xor r3,r2
	mov.w r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r5
	mov 0x24,r0 ; r0 set to 0x24
	extu.b r5,r5
	mov r5,r2
	shll r5
	add r2,r5
	shll2 r5
	add r1,r5
	mov.b @r5,r3 ; r3 ??? bc r5 is ???	
	mov.b r3,@(r0,r14)
	mov.w @(0x08,r5),r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x0A,r5),r0
	mov.w r0,@(0x1E,r14)
	mov.w @(loc_8C0CB910,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0CB8A6
	mova @(loc_8C0CB934,pc),r0  ; r0 set to 0x8C0CB934
	fmov.s @r0,fr3
	mov.w @(loc_8C0CB912,pc),r0 ; r0 set to 0x8c
	bra loc_8C0CB8Ac
	nop

loc_8c0cb8a6:
	mova @(loc_8C0CB938,pc),r0
	fmov.s @r0,fr3
	mov.w @(loc_8C0CB914,pc),r0

loc_8c0cb8ac:
	fmov.s @(r0,r6),fr2
	mov 0x34,r0
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0CB916,pc),r0
	fmov.s @(r0,r4),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14)
	mov 0x04,r0
	fmov.s @(r0,r5),fr3
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8c0cb910,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0cb8d6
	fldi0 fr4
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)

loc_8c0cb8d6:
	mov 0x68,r0
	mov.l @(loc_8c0cb93c,pc),r3
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0
	mov 0x17,r5
	fmov.s fr4,@(r0,r14)
	mov 0x14,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0CB8F2:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C0CB940,pc),r1 ; r1 set to 0x8C15C49c
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CB906:
	#data 0x1004
loc_8C0CB908:
	#data 0x00Dc
loc_8C0CB90A:
	#data 0x00C0
loc_8C0CB90C:
	#data 0x012c
loc_8C0CB90E:
	#data 0x01A3
loc_8C0CB910:
	#data 0x0130
loc_8C0CB912:
	#data 0x008c
loc_8c0cb914:
	#data 0x0088
loc_8c0cb916:
	#data 0x041C
	#align4

loc_8C0CB918:
	#data bank04.loc_8c044F12
loc_8C0CB91C:
	#data loc_8c0cB7Ee
loc_8C0CB920:
	#data bank15.loc_8c15c48c
loc_8C0CB924:
	#data bank12.loc_8c129560
loc_8C0CB928:
	#data bank12.loc_8c1294C8
loc_8C0CB92C:
	#data bank15.loc_8c15c414
loc_8C0CB930:
	#data 0x8C26A518
loc_8C0CB934:
	#data 0x42555555
loc_8c0cb938:
	#data 0xC2555555
loc_8C0CB93C:
	#data bank03.loc_8c034e8c
loc_8C0CB940:
	#data bank15.loc_8c15c49c

;==============================================
loc_8C0CB944:
	mov.w @(loc_8C0CB9DC,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0CB95a
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r4)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0CB9DE,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8c0cb95a:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0cb972
	mov.b @(0x05,r4),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8c0cb9de,pc),r0
	mov.b r3,@(r0,r4)

loc_8c0cb972:
	rts
	nop

;==============================================
loc_8C0CB976:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0CB9E0,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0 ; r0 set to 0x5b
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0 ; r0 ??	
	tst r0,r0
	bf loc_8C0CB9Bc
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0CB9E4,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x15,r6 ; r6 set to 0x15
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x17,r5 ; r5 set to 0x17
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0CB9BC:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CB9C2:
	mov.l @(loc_8C0CB9E0,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

loc_8C0CB9C8:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CB9DE,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0CB9D6:
	mov.l @(loc_8C0CB9E8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CB9DC:
	#data 0x01D0
loc_8C0CB9DE:
	#data 0x012c
	#align4

loc_8C0CB9E0:
	#data bank03.loc_8c034dee
loc_8C0CB9E4:
	#data bank03.loc_8c034e8c
loc_8C0CB9E8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0CB9EC:
	mov.l @(loc_8C0CBB0C,pc),r3 ; r3 set to 0x8C26A908
	mov.l @(loc_8C0CBB10,pc),r2 ; r2 set to 0x8C15C4Cc
	mov.l @r3,r0
	mov.l @r2,r1
	mov.l @r0,r3 ; r3 ??? bc r0 is ???	
	mov.w @(0x1C,r4),r0
	shll2 r0
	mov.l @(r0,r1),r0
	shll2 r0
	mov.l @(r0,r3),r1
	mov.w @(loc_8C0CBB02,pc),r0 ; r0 set to 0x84
	mov.l @(loc_8C0CBB14,pc),r3 ; r3 set to 0x8C15C4D8
	mov.l r1,@(r0,r4)
	mov 0x5C,r1 ; r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???	
	mov 0x64,r1 ; r1 set to 0x64
	add r4,r1 ; r1 ??? bc r4 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0x01,r0 ; r0 set to 0x3d
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0 ; r0 ??	
	mov.l @r3,r1
	cmp/ge r1,r0
	bf loc_8C0CBA36
	mov.l @(loc_8C0CBB18,pc),r0 ; r0 set to 0x8C0450C0
	jmp @r0
	nop

loc_8C0CBA36:
	rts
	nop

;----------------------------------------------
loc_8C0CBA3a:
	mov.l r14,@-r15
	fmov fr12,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l @(0xD8,PC),r3
	mov 0x07,r5
	mov.l r4,@r15
	mov.l r6,@(0x4,r15)
	mov 0x01,r6
	mov.l r7,@(0x8,r15)
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0cbaf8
	mov r0,r14
	mov.w @(0xA8,PC),r0
	mov 0x01,r3
	mov.l @(0xC0,PC),r2
	mov r14,r1
	mov.b r3,@(r0,r14)
	add 0xA0,r0
	mov.w @(0x9E,PC),r3
	add 0x34,r1
	mov.l r2,@(0x10,r14)
	mov.l r3,@(r0,r14)
	mov.l @(0xB4,PC),r3
	mov.l @r15,r2
	jsr @r3
	mov 0x0C,r0
	mov 0x3C,r2
	mov.l @(0x4,r15),r1
	mov.l @(0xAC,PC),r3
	shll2 r1
	add r3,r1
	mov.l @(0xB8,PC),r3
	mov.l r1,@(0xC,r15)
	mov.l @(0x8,r15),r0
	fmov @r1,fr12
	mul.l r2,r0
	mova @(0xA0,PC),r0
	mov.l @(0xB0,PC),r2
	fmov @r0,fr2
	mova @(0xA0,PC),r0
	fmov @r0,fr1
	mova @(0xA0,PC),r0
	sts macl,r4
	fmov @r0,fr0
	lds r4,fpul
	float fpul,fr3
	fmul fr2,fr3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	and r3,r4
	jsr @r2
	mov.l r4,@r15
	fmul fr0,fr12
	mov 0x5C,r0
	fmov fr12,@(r0,r14)
	mov.l @(0xC,r15),r3
	fmov @r3,fr12
	mov.l @(0x88,PC),r3
	jsr @r3
	mov.l @r15,r4
	fmul fr0,fr12
	mov.l @(0x84,PC),r3
	mov 0x64,r0
	jsr @r3
	fmov fr12,@(r0,r14)
	mov.w @(0x3E,PC),r3
	cmp/pz r0
	bf.s loc_8c0cbad2
	mov 0x48,r1
	bra loc_8c0cbadc
	and r3,r0

loc_8c0cbad2:
	not r0,r0
	add 0x01,r0
	and r3,r0
	not r0,r0
	add 0x01,r0

loc_8c0cbadc:
	add r14,r1
	mov.l r0,@r1
	mov r14,r1
	mov.l @(0x4,r15),r2
	add 0x50,r1
	mov r2,r3

loc_8c0cbae8:
	shll r2
	add r3,r2
	mov.l @(0x58,PC),r3
	shll2 r2
	add r3,r2
	mov.l @(0x30,PC),r3
	jsr @r3
	mov 0x0C,r0

loc_8c0cbaf8:
	add 0x10,r15
	lds.l @r15+,pr
	fmov @r15+,fr12
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CBB02:
	#data 0x0084
loc_8C0CBB04:
	#data 0x012c
loc_8C0CBB06:
	#data 0x0109
loc_8C0CBB08:
	#data 0x3FFf
	#align4

loc_8C0CBB0C:
	#data 0x8C26A908
loc_8C0CBB10:
	#data bank15.loc_8c15c4Cc
loc_8C0CBB14:
	#data bank15.loc_8c15c4D8
loc_8C0CBB18:
	#data bank04.loc_8c0450C0
loc_8C0CBB1C:
	#data bank04.loc_8c044F12
loc_8C0CBB20:
	#data loc_8c0cB9Ec
loc_8C0CBB24:
	#data bank12.loc_8c1294C8
loc_8C0CBB28:
	#data bank15.loc_8c15c4F0
loc_8C0CBB2c:
	#data 0x47800000
loc_8C0CBB30:
	#data 0x43B40000
loc_8C0CBB34:
	#data 0x3F000000
loc_8C0CBB38:
	#data 0x0000FFFf
loc_8C0CBB3C:
	#data bank11.loc_8c11E860
loc_8C0CBB40:
	#data bank11.loc_8c11E2E0
loc_8C0CBB44:
	#data bank11.loc_8c11e730
loc_8C0CBB48:
	#data bank15.loc_8c15c4Fc

;==============================================
loc_8c0cbb4c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x02,r3
	mov.l r4,@(0x4,r15)
	exts.b r6,r12
	cmp/gt r3,r12
	bt.s loc_8c0cbb76
	mov.b r5,@r15
	mov 0x00,r14
	mov 0x06,r13

loc_8c0cbb66:
	mov.b @r15,r5
	mov r12,r6
	mov r14,r7
	bsr loc_8c0cba3a
	mov.l @(0x4,r15),r4
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c0cbb66

loc_8c0cbb76:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

;==============================================
loc_8C0CBB84:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x130,PC),r3
	mov.l r4,@(0x8,r15)
	mov.l r5,@(0x4,r15)
	mov 0x03,r5
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0cbbb0
	mov r0,r4
	mov.l @(0x120,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov.l @(0x4,r15),r3
	mov.l r3,@(0x14,r4)
	mov.b @r15,r2
	mov.b r2,@(r0,r4)

loc_8C0CBBB0:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0CBBB8:
	mov r4,r3
	mov.l @(loc_8C0CBCC4,pc),r1 ; r1 set to 0x8C15C544
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0CBBCA:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov.s fr12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0CBCB0,pc),r3 ; r3 set to 0x1007
	add 0x01,r0
	mov.w @(loc_8C0CBCB2,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0CBCB2,pc),r2 ; r2 set to 0xDc
	mov.l @(0x18,r14),r4
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(0x14,r14),r12
	mov.b r0,@(0x04,r14)
	mov 0x26,r0 ; r0 set to 0x26
	mov.w r3,@(r0,r14)
	mov.w @(loc_8C0CBCB4,pc),r0 ; r0 set to 0xC0
	mov.l @(loc_8C0CBCC8,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???	
	mov.w @(loc_8C0CBCB6,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x02,r4),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r4),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0CBCB8,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r4),r2 ; r2 ??? bc r4 is ???	
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r4),r3
	mov r4,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0CBCCC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r15,r13
	mov.b @(r0,r4),r2
	mov 0x24,r1 ; r1 set to 0x24
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.b r2,@(r0,r14)
	mov 0x1E,r0 ; r0 set to 0x1e
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r11
	mov.l @(loc_8C0CBCD0,pc),r2 ; r2 set to 0x8C15C520
	extu.b r11,r11
	mov r11,r3 ; r3 ??? bc r11 is ???	
	shll2 r3
	shll r11
	add r3,r11
	add r2,r11
	mov.b @(0x04,r11),r0
	mov.b r0,@r1
	mova @(loc_8C0CBCD4,pc),r0  ; r0 set to 0x8C0CBCD4
	mov.w @r11,r3
	fmov.s @r0,fr2 ; r2 ??	
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmov.s fr3,@r13
	mov.w @(0x02,r11),r0
	mov r0,r3 ; r3 set to 0x8C0CBCD4
	lds r3,fpul
	mova @(loc_8C0CBCD8,pc),r0  ; r0 set to 0x8C0CBCD8
	fmov.s @r0,fr1
	float fpul,fr3
	fmul fr1,fr3 ; r3 ??? bc r1 is ???	
	mov 0x04,r0 ; r0 set to 0x04
	mov.l @(loc_8C0CBCDC,pc),r9 ; r9 set to 0x8C11E2E0
	mov.l @(loc_8C0CBCE0,pc),r10 ; r10 set to 0x8C11E860
	fmov.s fr3,@(r0,r13)
	mov 0x48,r0 ; r0 set to 0x48
	mov.l @(r0,r12),r3
	mov.l r3,@(r0,r14)
	mov.w @(loc_8C0CBCBA,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r12),r3
	tst r3,r3
	bf/s loc_8C0CBCE4
	mov.w r3,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48
	jsr @r9
	mov.l @(r0,r14),r4
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r13,fr3
	fmov.s @(r0,r12),fr2
	mov 0x48,r0 ; r0 set to 0x48
	fmac fr0,fr3,fr2
	fmov fr2,fr12
	jsr @r10
	mov.l @(r0,r14),r4
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r13),fr3
	fmul fr0,fr3
	bra loc_8C0CBD02
	fsub fr3,fr12

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CBCB0:
	#data 0x1007
loc_8C0CBCB2:
	#data 0x00Dc
loc_8C0CBCB4:
	#data 0x00C0
loc_8C0CBCB6:
	#data 0x012c
loc_8C0CBCB8:
	#data 0x01A3
loc_8C0CBCBA:
	#data 0x0130
	#align4

loc_8C0CBCBC:
	#data bank04.loc_8c044F12
loc_8C0CBCC0:
	#data loc_8c0cBBB8
loc_8C0CBCC4:
	#data bank15.loc_8c15c544
loc_8C0CBCC8:
	#data bank12.loc_8c129560
loc_8C0CBCCC:
	#data bank12.loc_8c1294C8
loc_8C0CBCD0:
	#data bank15.loc_8c15c520
loc_8C0CBCD4:
	#data 0x3FD55555
loc_8C0CBCD8:
	#data 0x40092492
loc_8C0CBCDC:
	#data bank11.loc_8c11E2E0
loc_8C0CBCE0:
	#data bank11.loc_8c11E860

;==============================================
loc_8C0CBCE4:
	mov 0x48,r0 ; r0 set to 0x48
	jsr @r9
	mov.l @(r0,r14),r4
	fmov.s @r13,fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r12),fr2
	mov 0x48,r0 ; r0 set to 0x48
	fmul fr0,fr3
	fsub fr3,fr2
	fmov fr2,fr12
	jsr @r10
	mov.l @(r0,r14),r4
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r13),fr3
	fmac fr0,fr3,fr12

loc_8C0CBD02:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s fr12,@(r0,r14)
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	jsr @r10
	mov.l @(r0,r14),r4
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @r13,fr3
	fmov.s @(r0,r12),fr2
	mov 0x48,r0 ; r0 set to 0x48, r0 set to 0x48
	fmac fr0,fr3,fr2
	fmov fr2,fr12
	jsr @r9
	mov.l @(r0,r14),r4
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	mov.l @(loc_8C0CBDF4,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	fmac fr0,fr3,fr12
	fmov.s fr12,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r14),fr2
	fmov.s @(r0,r12),fr3
	mova @(loc_8C0CBDE8,pc),r0  ; r0 set to 0x8C0CBDE8, r0 set to 0x8C0CBDE8
	fsub fr3,fr2
	fmov.s @r0,fr3
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fdiv fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fldi0 fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0CBDEC,pc),r0  ; r0 set to 0x8C0CBDEC, r0 set to 0x8C0CBDEc
	fmov.s @r0,fr2
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0CBDF0,pc),r0  ; r0 set to 0x8C0CBDF0, r0 set to 0x8C0CBDF0
	fmov.s @r0,fr2
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr2,@(r0,r14)
	mov.b @(0x05,r11),r0
	mov r0,r6 ; r6 set to 0x6C, r6 set to 0x6c
	jsr @r3
	mov r14,r4
	bsr loc_8C0CBD72
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr12
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0cbd72:
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x68,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x60,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0cbdbc
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)

loc_8c0cbdbc:
	mov.w @(0x1C,r4),r0
	mov 0x0A,r3
	cmp/gt r3,r0
	bt loc_8c0cbdce
	mov.w @(loc_8c0cbde6,pc),r1
	mov.w @(0x1C,r4),r0
	add r4,r1
	and 0x01,r0
	mov.b r0,@r1

loc_8c0cbdce:
	rts
	nop

loc_8C0CBDD2:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CBDE6,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0CBDE0:
	mov.l @(loc_8C0CBDF8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CBDE6:
	#data 0x012c
	#align4

loc_8C0CBDE8:
	#data 0x42000000
loc_8C0CBDEC:
	#data 0x41092492
loc_8C0CBDF0:
	#data 0xBF4DB6Db
loc_8C0CBDF4:
	#data bank03.loc_8c034C38
loc_8C0CBDF8:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0cbdfc:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov r5,r0
	nop
	mov.l @(0x148,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0cbe36
	mov r0,r4
	mov.l @(0x138,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.w @(0x114,PC),r2
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0cbe36:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0CBE3E:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x100,PC),r3
	mov 0x03,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0cbe84
	mov r0,r4
	mov.l @(0xF0,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(0x18,r2),r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r2
	mov.w @(0xCC,PC),r3
	mov.l r2,@(0x14,r4)
	mov 0x21,r2
	mov.b @(0x8,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0cbe84:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0CBE8C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0CBF42,pc),r2 ; r2 set to 0x2A4
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @(0x18,r14),r3
	mov r14,r4
	mov.w @(loc_8C0CBF44,pc),r1 ; r1 set to 0xCc
	add r3,r2 ; r2 ??? bc r3 is ???	
	mov.l @(loc_8C0CBF58,pc),r3 ; r3 set to 0x8C28C694
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l r2,@r3 ; r3 ??? bc r2 is ???	
	mov.l @(loc_8C0CBF5C,pc),r2 ; r2 set to 0x8C28C698
	mov.l r1,@r2 ; r2 ??? bc r1 is ???	
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0CBF60,pc),r0 ; r0 set to 0x8C15C554
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r1
	jmp @r1
	mov.l @r15+,r14

;==============================================
loc_8C0CBEB4:
	mov r4,r3
	mov.l @(loc_8C0CBF64,pc),r1 ; r1 set to 0x8C15C5A4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0CBEC6:
	mov.w @(loc_8C0CBF46,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0CBF68,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CBF46,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CBF48,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CBF4A,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C0CBF6C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0CBF4C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r2 ; r2 ??? bc r4 is ???	
	tst r2,r2
	bt/s loc_8C0CBF74
	mov.l @(0x18,r4),r3
	mova @(loc_8C0CBF70,pc),r0  ; r0 set to 0x8C0CBF70
	bra loc_8C0CBF78
	fmov.s @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CBF40:
	#data 0x1100
loc_8C0CBF42:
	#data 0x02A4
loc_8C0CBF44:
	#data 0x00Cc
loc_8C0CBF46:
	#data 0x00Dc
loc_8C0CBF48:
	#data 0x012c
loc_8C0CBF4A:
	#data 0x01A3
loc_8C0CBF4C:
	#data 0x0130
	#align4

loc_8C0CBF50:
	#data bank04.loc_8c044F12
loc_8C0CBF54:
	#data loc_8c0cBE8c
loc_8C0CBF58:
	#data 0x8C28C694
loc_8C0CBF5C:
	#data 0x8C28C698
loc_8C0CBF60:
	#data bank15.loc_8c15c554
loc_8C0CBF64:
	#data bank15.loc_8c15c5A4
loc_8C0CBF68:
	#data bank12.loc_8c129560
loc_8C0CBF6C:
	#data bank12.loc_8c1294C8
loc_8C0CBF70:
	#data 0x42555555

;==============================================
loc_8C0CBF74:
	mova @(loc_8C0CC0C0,pc),r0  ; r0 init to 0x8C0CC0C0
	fmov.s @r0,fr3

loc_8C0CBF78:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fldi0 fr4
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0CC0C4,pc),r0  ; r0 set to 0x8C0CC0C4, r0 set to 0x8C0CC0C4
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r4)
	mov.w @(loc_8C0CC0BA,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C0CBFAe
	mova @(loc_8C0CC0C8,pc),r0  ; r0 set to 0x8C0CC0C8, r0 set to 0x8C0CC0C8
	bra loc_8C0CBFB2
	fmov.s @r0,fr2

loc_8C0CBFAE:
	mova @(loc_8C0CC0CC,pc),r0  ; r0 init to 0x8C0CC0Cc
	fmov.s @r0,fr2

loc_8C0CBFB2:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	mov.l @(loc_8C0CC0D8,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0CC0D0,pc),r0  ; r0 set to 0x8C0CC0D0, r0 set to 0x8C0CC0D0
	fmov.s @r0,fr3 ; r3 ??, r3 ??	
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0CC0D4,pc),r0  ; r0 set to 0x8C0CC0D4, r0 set to 0x8C0CC0D4
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	fmov.s fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8C0CBFD0:
	mov r4,r3
	mov.l @(loc_8C0CC0DC,pc),r1 ; r1 set to 0x8C15C5B4
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0CBFE2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xF8,PC),r3
	jsr @r3
	mov r4,r14
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
	mov.w @(0x94,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0cc05c
	mov.b @(0x5,r14),r0
	fldi1 fr4
	fadd fr4,fr4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x7C,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	fdiv fr4,fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x30,r0
	mov.w r0,@(0x1C,r14)

loc_8C0CC05C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CC062:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0CC0E0,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x5f
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??	
	tst r0,r0
	bt loc_8C0CC116
	mov.w @(0x1C,r14),r0
	tst 0x04,r0
	bt loc_8C0CC0E4
	bra loc_8C0CC0E6
	mov 0x01,r2

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CC0BA:
	#data 0x0130
loc_8C0CC0Bc:
	#data 0x041c
	#align4

loc_8C0CC0C0:
	#data 0xC2555555
loc_8C0CC0C4:
	#data 0x432B6DB6
loc_8C0CC0C8:
	#data 0xC0A00000
loc_8C0CC0CC:
	#data 0x40A00000
loc_8C0CC0D0:
	#data 0x41092492
loc_8C0CC0D4:
	#data 0xBF4DB6Db
loc_8C0CC0D8:
	#data bank03.loc_8c034C38
loc_8C0CC0DC:
	#data bank15.loc_8c15c5B4
loc_8C0CC0E0:
	#data bank03.loc_8c034D8c

;==============================================
loc_8C0CC0E4:
	mov 0x00,r2 ; r2 set to 0x00

loc_8C0CC0E6:
	mov.w @(loc_8C0CC21E,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0CC220,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
	fcmp/gt fr3,fr2
	bt loc_8C0CC120
	mov.w @(loc_8C0CC220,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	mov.l @(0x18,r14),r2
	fmov.s @(r0,r2),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fldi1 fr3
	fadd fr3,fr3
	fmov.s @(r0,r14),fr2
	fdiv fr3,fr2
	fneg fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CC116:
	lds.l @r15+,pr
	mov.l @(loc_8C0CC228,pc),r3 ; r3 set to 0x8C0CD9D4
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0CC120:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CC126:
	mov r4,r3
	mov.l @(loc_8C0CC22C,pc),r1 ; r1 set to 0x8C15C5Bc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0CC138:
	mov.w @(loc_8C0CC222,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0CC230,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CC222,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CC21E,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CC224,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C0CC234,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0CC226,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt/s loc_8C0CC1B0
	mov.l @(0x18,r4),r2
	mova @(loc_8C0CC238,pc),r0  ; r0 set to 0x8C0CC238
	bra loc_8C0CC1B4
	fmov.s @r0,fr3

loc_8C0CC1B0:
	mova @(loc_8C0CC23C,pc),r0  ; r0 init to 0x8C0CC23c
	fmov.s @r0,fr3

loc_8C0CC1B4:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fldi0 fr4
	fmov.s @(r0,r2),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0CC240,pc),r0  ; r0 set to 0x8C0CC240, r0 set to 0x8C0CC240
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r4)
	mov.w @(loc_8C0CC226,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C0CC1Ea
	mova @(loc_8C0CC244,pc),r0  ; r0 set to 0x8C0CC244, r0 set to 0x8C0CC244
	bra loc_8C0CC1Ee
	fmov.s @r0,fr2

loc_8C0CC1EA:
	mova @(loc_8C0CC248,pc),r0  ; r0 init to 0x8C0CC248
	fmov.s @r0,fr2

loc_8C0CC1EE:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	mov.l @(loc_8C0CC254,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0CC24C,pc),r0  ; r0 set to 0x8C0CC24C, r0 set to 0x8C0CC24c
	fmov.s @r0,fr3 ; r3 ??, r3 ??	
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0CC250,pc),r0  ; r0 set to 0x8C0CC250, r0 set to 0x8C0CC250
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
	fmov.s fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C0CC20C:
	mov r4,r3
	mov.l @(loc_8C0CC258,pc),r1 ; r1 set to 0x8C15C5Cc
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CC21E:
	#data 0x012c
loc_8C0CC220:
	#data 0x041c
loc_8C0CC222:
	#data 0x00Dc
loc_8C0CC224:
	#data 0x01A3
loc_8C0CC226:
	#data 0x0130
	#align4

loc_8C0CC228:
	#data loc_8c0cD9D4
loc_8C0CC22C:
	#data bank15.loc_8c15c5Bc
loc_8C0CC230:
	#data bank12.loc_8c129560
loc_8C0CC234:
	#data bank12.loc_8c1294C8
loc_8C0CC238:
	#data 0x42555555
loc_8C0CC23C:
	#data 0xC2555555
loc_8C0CC240:
	#data 0x4311B6Db
loc_8C0CC244:
	#data 0x40555555
loc_8C0CC248:
	#data 0xC0555555
loc_8C0CC24C:
	#data 0xC0CDB6Db
loc_8C0CC250:
	#data 0xBF092492
loc_8C0CC254:
	#data bank03.loc_8c034C38
loc_8C0CC258:
	#data bank15.loc_8c15c5Cc

;==============================================
loc_8C0CC25C:
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
	mov.w @(0xDC,PC),r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0cc2c4
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0xC8,PC),r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov 0x60,r0
	fldi1 fr3
	fadd fr3,fr3
	fmov @(r0,r4),fr2
	fdiv fr3,fr2
	fneg fr2
	fmov fr2,@(r0,r4)
	mov 0x30,r0
	mov.w r0,@(0x1C,r4)

loc_8C0CC2C4:
	rts
	nop

;----------------------------------------------
loc_8C0CC2C8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0CC378,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0 ; r0 set to 0x5f
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0 ; r0 ??	
	tst r0,r0
	bt loc_8C0CC352
	mov.w @(0x1C,r14),r0
	tst 0x04,r0
	bt loc_8C0CC320
	bra loc_8C0CC322
	mov 0x01,r2

loc_8C0CC320:
	mov 0x00,r2 ; r2 set to 0x00

loc_8C0CC322:
	mov.w @(loc_8C0CC376,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0CC374,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
	fcmp/gt fr3,fr2
	bt loc_8C0CC35c
	mov.w @(loc_8C0CC374,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	mov.l @(0x18,r14),r2
	fmov.s @(r0,r2),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fldi1 fr3
	fadd fr3,fr3
	fmov.s @(r0,r14),fr2
	fdiv fr3,fr2
	fneg fr2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CC352:
	lds.l @r15+,pr
	mov.l @(loc_8C0CC37C,pc),r3 ; r3 set to 0x8C0CD9D4
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0CC35C:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CC362:
	mov r4,r3
	mov.l @(loc_8C0CC380,pc),r1 ; r1 set to 0x8C15C5D4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CC374:
	#data 0x041c
loc_8C0CC376:
	#data 0x012c
	#align4

loc_8C0CC378:
	#data bank03.loc_8c034D8c
loc_8C0CC37C:
	#data loc_8c0cD9D4
loc_8C0CC380:
	#data bank15.loc_8c15c5D4

;==============================================
loc_8C0CC384:
	mov.w @(loc_8C0CC456,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0CC460,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CC456,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CC458,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CC45A,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C0CC464,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0CC45C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r2 ; r2 ??? bc r4 is ???	
	tst r2,r2
	bt/s loc_8C0CC3Fe
	mov.l @(0x18,r4),r3
	mova @(loc_8C0CC468,pc),r0  ; r0 set to 0x8C0CC468
	bra loc_8C0CC402
	fmov.s @r0,fr3

loc_8C0CC3FE:
	mova @(loc_8C0CC46C,pc),r0  ; r0 init to 0x8C0CC46c
	fmov.s @r0,fr3

loc_8C0CC402:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r3),fr2
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0CC470,pc),r0  ; r0 set to 0x8C0CC470, r0 set to 0x8C0CC470
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr2
	mov.l @(loc_8C0CC474,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C0CC422:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0CC478,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0CC43c
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_8C0CC47C,pc),r3 ; r3 set to 0x8C0CD9D4
	jmp @r3
	lds.l @r15+,pr

loc_8C0CC43C:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0CC444:
	mov r4,r3
	mov.l @(loc_8C0CC480,pc),r1 ; r1 set to 0x8C15C5E4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CC456:
	#data 0x00Dc
loc_8C0CC458:
	#data 0x012c
loc_8C0CC45A:
	#data 0x01A3
loc_8C0CC45C:
	#data 0x0130
	#align4

loc_8C0CC460:
	#data bank12.loc_8c129560
loc_8C0CC464:
	#data bank12.loc_8c1294C8
loc_8C0CC468:
	#data 0x42AA0000
loc_8C0CC46C:
	#data 0xC2AA0000
loc_8C0CC470:
	#data 0x43250000
loc_8C0CC474:
	#data bank03.loc_8c034C38
loc_8C0CC478:
	#data bank03.loc_8c034D8c
loc_8C0CC47C:
	#data loc_8c0cD9D4
loc_8C0CC480:
	#data bank15.loc_8c15c5E4

;==============================================
loc_8C0CC484:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x10E,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x118,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x100,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xF8,PC),r0
	mov 0x01,r1
	mov.b r1,@(r0,r14)
	mov r14,r1
	mov.l @(0x18,r14),r0
	add 0x50,r1
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xD4,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(0xCC,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x00,r2
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	mov.l @(0xBC,PC),r2
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.l @(0x18,r14),r1
	mov.w @(0x96,PC),r0
	mov.l @r2,r3
	mov.w @(r0,r1),r0
	mov.w r0,@r3
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0cc51e
	mov.l @(0xA0,PC),r3
	mov 0x4B,r5
	jsr @r3
	mov r14,r4

loc_8C0CC51E:
	mova @(0x9C,PC),r0
	mov.l @(0x9C,PC),r3
	fmov @r0,fr3
	mov r14,r4
	mov.w @(0x78,PC),r0
	mov 0x1B,r5
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x05,r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0CC538:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c0cc562
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0cc562
	mov.w @(0x52,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0cc562
	mov.w @(0x4A,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c0cc56c

loc_8C0CC562:
	lds.l @r15+,pr
	mov.l @(0x5C,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14


loc_8C0CC56C:
	mov.l @(0x58,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(0x18,r14),r3
	mov 0x34,r0
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CC588:
	mov r4,r3
	mov.l @(loc_8C0CC5CC,pc),r1 ; r1 set to 0x8C15C5F4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0cc59a:
	#data 0x00dc
loc_8c0cc59c:
	#data 0x012c
loc_8c0cc59e:
	#data 0x01a3
loc_8c0cc5a0:
	#data 0x0158
loc_8c0cc5a2:
	#data 0x0108
loc_8c0cc5a4:
	#data 0x01d0
loc_8c0cc5a6:
	#data 0x01e9
loc_8c0cc5a8:
	#data 0x0141
	#align4

loc_8C0CC5AC:
	#data bank12.loc_8c129560
loc_8C0CC5B0:
	#data bank12.loc_8c1294C8
loc_8C0CC5B4:
	#data 0x8C28C698
loc_8C0CC5B8:
	#data bank04.loc_8c04223a
loc_8C0CC5Bc:
	#data 0x3F400000
loc_8C0CC5C0:
	#data bank03.loc_8c034C38
loc_8C0CC5C4:
	#data loc_8c0cD9D4
loc_8C0CC5C8:
	#data bank03.loc_8c034D8c
loc_8C0CC5CC:
	#data bank15.loc_8c15c5F4

;==============================================
loc_8C0CC5D0:
	mov.w @(loc_8C0CC724,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0CC72C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CC724,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CC726,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CC728,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C0CC730,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x0B,r2 ; r2 set to 0x0b
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b r2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x14,r4),r3
	mov 0x09,r6 ; r6 set to 0x09
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x14,r4),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C0CC734,pc),r3 ; r3 set to 0x8C034C38
	fmov.s fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C0CC654:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0CC738,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0CC66e
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_8C0CC73C,pc),r3 ; r3 set to 0x8C0CD9D4
	jmp @r3
	lds.l @r15+,pr

loc_8C0CC66E:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0CC676:
	mov r4,r3
	mov.l @(loc_8C0CC740,pc),r1 ; r1 set to 0x8C15C604
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0CC688:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0CC724,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0CC72C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0CC724,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CC726,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0CC728,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C0CC730,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r4
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r3
	mov.l @(loc_8C0CC744,pc),r2 ; r2 set to 0x8C28C698
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.l @(0x18,r14),r1
	mov.w @(loc_8C0CC72A,pc),r0 ; r0 set to 0x158
	mov.l @r2,r3
	mov.w @(r0,r1),r0 ; r0 ??? bc r1 is ???	
	mov.w r0,@r3
	mov 0x21,r0 ; r0 set to 0x21
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov.l @(loc_8C0CC734,pc),r3 ; r3 set to 0x8C034C38
	add 0x0A,r6
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CC724:
	#data 0x00Dc
loc_8C0CC726:
	#data 0x012c
loc_8C0CC728:
	#data 0x01A3
loc_8C0CC72A:
	#data 0x0158
	#align4

loc_8C0CC72C:
	#data bank12.loc_8c129560
loc_8C0CC730:
	#data bank12.loc_8c1294C8
loc_8C0CC734:
	#data bank03.loc_8c034C38
loc_8C0CC738:
	#data bank03.loc_8c034D8c
loc_8C0CC73C:
	#data loc_8c0cD9D4
loc_8C0CC740:
	#data bank15.loc_8c15c604
loc_8C0CC744:
	#data 0x8C28C698

;==============================================
loc_8C0CC748:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x34,r0 ; r0 set to 0x34
	sts.l pr,@-r15
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0CC792
	mov.l @(loc_8C0CC89C,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0CC8A0,pc),r3 ; r3 set to 0x8C28C698
	mov.w @(loc_8C0CC890,pc),r0 ; r0 set to 0x158
	mov.l @r3,r2
	mov.w @r2,r1
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r0 ; r0 ??? bc r2 is ???	
	cmp/eq r0,r1
	bt loc_8C0CC7A8
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0CC8A4,pc),r3 ; r3 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1b
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x21,r0 ; r0 set to 0x21
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x0C,r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0CC792:
	mov.l @(loc_8C0CC89C,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0CC7A8
	lds.l @r15+,pr
	mov.l @(loc_8C0CC8A8,pc),r3 ; r3 set to 0x8C0CD9D4
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0CC7A8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CC7AE:
	mov r4,r3
	mov.l @(loc_8C0CC8AC,pc),r1 ; r1 set to 0x8C15C614
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0CC7C0:
	mov.w @(loc_8C0CC892,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0CC8B0,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CC892,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CC894,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CC896,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C0CC8B4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0CC898,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C0CC844
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3
	mov.l @(loc_8C0CC8B8,pc),r0 ; r0 set to 0x8C15C624
	extu.b r3,r3
	shll2 r3
	shll r3
	fmov.s @(r0,r3),fr3
	bra loc_8C0CC854
	nop

loc_8C0CC844:
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r2
	mov.l @(loc_8C0CC8B8,pc),r0 ; r0 set to 0x8C15C624
	extu.b r2,r2
	shll2 r2
	shll r2
	fmov.s @(r0,r2),fr3
	fneg fr3

loc_8C0CC854:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr3,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r4),r3
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov.l @(loc_8C0CC8BC,pc),r0 ; r0 set to 0x8C15C628, r0 set to 0x8C15C628
	mov 0x0E,r6 ; r6 set to 0x0E, r6 set to 0x0e
	extu.b r3,r3
	shll2 r3
	shll r3
	fmov.s @(r0,r3),fr3
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr3,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s @(r0,r4),fr3
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s @(r0,r4),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr2
	mov.l @(loc_8C0CC8A4,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CC890:
	#data 0x0158
loc_8C0CC892:
	#data 0x00Dc
loc_8C0CC894:
	#data 0x012c
loc_8C0CC896:
	#data 0x01A3
loc_8C0CC898:
	#data 0x0130
	#align4

loc_8C0CC89C:
	#data bank03.loc_8c034D8c
loc_8C0CC8A0:
	#data 0x8C28C698
loc_8C0CC8A4:
	#data bank03.loc_8c034C38
loc_8C0CC8A8:
	#data loc_8c0cD9D4
loc_8C0CC8AC:
	#data bank15.loc_8c15c614
loc_8C0CC8B0:
	#data bank12.loc_8c129560
loc_8C0CC8B4:
	#data bank12.loc_8c1294C8
loc_8C0CC8B8:
	#data bank15.loc_8c15c624
loc_8C0CC8BC:
	#data bank15.loc_8c15c628

;==============================================
loc_8C0CC8C0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0CC9B4,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0CC8Da
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_8C0CC9B8,pc),r3 ; r3 set to 0x8C0CD9D4
	jmp @r3
	lds.l @r15+,pr

loc_8C0CC8DA:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0CC8E2:
	mov r4,r3
	mov.l @(loc_8C0CC9BC,pc),r1 ; r1 set to 0x8C15C644
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0CC8F4:
	mov.w @(loc_8C0CC9AC,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0CC9C0,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CC9AC,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CC9AE,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CC9B0,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C0CC9C4,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x00,r2 ; r2 set to 0x00
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b r2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x14,r4),r3
	mov 0x09,r6 ; r6 set to 0x09
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x14,r4),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C0CC9C8,pc),r3 ; r3 set to 0x8C034C38
	fmov.s fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C0CC978:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0CC9B4,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0CC992
	mov.l @r15,r4
	add 0x04,r15
	mov.l @(loc_8C0CC9B8,pc),r3 ; r3 set to 0x8C0CD9D4
	jmp @r3
	lds.l @r15+,pr

loc_8C0CC992:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0CC99A:
	mov r4,r3
	mov.l @(loc_8C0CC9CC,pc),r1 ; r1 set to 0x8C15C654
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CC9AC:
	#data 0x00Dc
loc_8C0CC9AE:
	#data 0x012c
loc_8C0CC9B0:
	#data 0x01A3
	#align4

loc_8C0CC9B4:
	#data bank03.loc_8c034D8c
loc_8C0CC9B8:
	#data loc_8c0cD9D4
loc_8C0CC9BC:
	#data bank15.loc_8c15c644
loc_8C0CC9C0:
	#data bank12.loc_8c129560
loc_8C0CC9C4:
	#data bank12.loc_8c1294C8
loc_8C0CC9C8:
	#data bank03.loc_8c034C38
loc_8C0CC9CC:
	#data bank15.loc_8c15c654

;==============================================
loc_8C0CC9D0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0CCABE,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0CCAC8,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0CCABE,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CCAC0,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0CCAC2,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C0CCACC,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r2 ; r2 set to 0x00
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r3,@(r0,r14)
	mov 0x0B,r3 ; r3 set to 0x0b
	mov.w @(loc_8C0CCAC4,pc),r0 ; r0 set to 0x130
	mov.w r2,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0CCAC4,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r14),r4
	mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
	tst r3,r3
	bt loc_8C0CCA58
	mova @(loc_8C0CCAD0,pc),r0  ; r0 set to 0x8C0CCAD0
	bra loc_8C0CCA5c
	fmov.s @r0,fr3

loc_8C0CCA58:
	mova @(loc_8C0CCAD4,pc),r0  ; r0 init to 0x8C0CCAD4
	fmov.s @r0,fr3

loc_8C0CCA5C:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r4),fr2
	mov 0x20,r5 ; r5 set to 0x20, r5 set to 0x20
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0CCAD8,pc),r0  ; r0 set to 0x8C0CCAD8, r0 set to 0x8C0CCAD8
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr2
	mov.l @(loc_8C0CCADC,pc),r3 ; r3 set to 0x8C042008, r3 set to 0x8C042008
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.l @(loc_8C0CCAE0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov r14,r4
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	add 0x10,r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0CCA8C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0CCAE4,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0CCAA4
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8C0CD9D4
	lds.l @r15+,pr

loc_8C0CCAA4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0CCAAC:
	mov r4,r3
	mov.l @(loc_8C0CCAE8,pc),r1 ; r1 set to 0x8C15C664
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CCABE:
	#data 0x00Dc
loc_8C0CCAC0:
	#data 0x012c
loc_8C0CCAC2:
	#data 0x01A3
loc_8C0CCAC4:
	#data 0x0130
	#align4

loc_8C0CCAC8:
	#data bank12.loc_8c129560
loc_8C0CCACC:
	#data bank12.loc_8c1294C8
loc_8C0CCAD0:
	#data 0x42D55555
loc_8C0CCAD4:
	#data 0xC2D55555
loc_8C0CCAD8:
	#data 0x433C9249
loc_8C0CCADC:
	#data bank04.loc_8c042008
loc_8C0CCAE0:
	#data bank03.loc_8c034C38
loc_8C0CCAE4:
	#data bank03.loc_8c034D8c
loc_8C0CCAE8:
	#data bank15.loc_8c15c664

;==============================================
loc_8C0CCAEC:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0CCC3C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0CCC48,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0CCC3C,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CCC3E,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0CCC40,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C0CCC4C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x0B,r2 ; r2 set to 0x0b
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0CCC42,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2 ; r2 ??? bc r14 is ???	
	tst r2,r2
	bt/s loc_8C0CCB6a
	mov.l @(0x18,r14),r3
	mova @(loc_8C0CCC50,pc),r0  ; r0 set to 0x8C0CCC50
	bra loc_8C0CCB6e
	fmov.s @r0,fr3

loc_8C0CCB6A:
	mova @(loc_8C0CCC54,pc),r0  ; r0 init to 0x8C0CCC54
	fmov.s @r0,fr3

loc_8C0CCB6E:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0CCC58,pc),r0  ; r0 set to 0x8C0CCC58, r0 set to 0x8C0CCC58
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0CCC42,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C0CCB92
	mova @(loc_8C0CCC5C,pc),r0  ; r0 set to 0x8C0CCC5C, r0 set to 0x8C0CCC5c
	bra loc_8C0CCB96
	fmov.s @r0,fr2

loc_8C0CCB92:
	mova @(loc_8C0CCC60,pc),r0  ; r0 init to 0x8C0CCC60
	fmov.s @r0,fr2

loc_8C0CCB96:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr4
	fmov.s fr2,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0CCC64,pc),r0  ; r0 set to 0x8C0CCC64, r0 set to 0x8C0CCC64
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	mov.l @(loc_8C0CCC68,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	mov r14,r4
	fmov.s fr3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	add 0x03,r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0CCBBE:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	mov.l @(0x18,r14),r13
	tst r0,r0
	fldi1 fr15
	bf/s loc_8C0CCC70
	fadd fr15,fr15
	mov.l @(loc_8C0CCC6C,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r14,r4
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
	fmov.s @(r0,r14),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0CCC44,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r13),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C0CCCF4
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0CCC44,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r13),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr3
	fneg fr3
	fdiv fr15,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	bra loc_8C0CCCF4
	mov.w r0,@(0x1C,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CCC3C:
	#data 0x00Dc
loc_8C0CCC3E:
	#data 0x012c
loc_8C0CCC40:
	#data 0x01A3
loc_8C0CCC42:
	#data 0x0130
loc_8C0CCC44:
	#data 0x041c
	#align4

loc_8C0CCC48:
	#data bank12.loc_8c129560
loc_8C0CCC4C:
	#data bank12.loc_8c1294C8
loc_8C0CCC50:
	#data 0x41A00000
loc_8C0CCC54:
	#data 0xC1A00000
loc_8C0CCC58:
	#data 0x437EFFFf
loc_8C0CCC5C:
	#data 0xC0555555
loc_8C0CCC60:
	#data 0x40555555
loc_8C0CCC64:
	#data 0xBF092492
loc_8C0CCC68:
	#data bank03.loc_8c034C38
loc_8C0CCC6C:
	#data bank03.loc_8c034D8c

;==============================================
loc_8c0ccc70:
	mov.l @(loc_8c0ccde0,pc),r2
	jsr @r2
	mov r14,r4
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0CCDD6,pc),r0
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0cccce
	mov.w @(loc_8C0CCDD6,pc),r0
	fmov.s @(r0,r13),fr3
	mov 0x38,r0
	fmov.s fr3,@(r0,r14)
	mov 0x60,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fdiv fr15,fr3
	fmov.s fr3,@(r0,r14)

loc_8c0cccce:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0ccce6
	lds.l @r15+,pr
	mov r14,r4
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	bra loc_8c0cd9d4
	mov.l @r15+,r14

loc_8c0ccce6:
	mov.l @(loc_8C0CCDE4,pc),r3
	mov.w @(loc_8c0ccdd8,pc),r1
	mov.l @r3,r0
	add r14,r1
	mov.l @(0x1C,r0),r0
	and 0x01,r0
	mov.b r0,@r1

loc_8C0CCCF4:
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CCCFE:
	mov r4,r3
	mov.l @(loc_8C0CCDE8,pc),r1 ; r1 set to 0x8C15C674
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0CCD10:
	mov.w @(loc_8C0CCDDA,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0CCDEC,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CCDDA,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CCDD8,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CCDDC,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C0CCDF0,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x07,r2 ; r2 set to 0x07
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x30,r5 ; r5 set to 0x30
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0CCDDE,pc),r0 ; r0 set to 0x13c
	mov.b r5,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r5,@(r0,r4)
	add 0xF3,r0 ; r0 set to 0x130
	mov.w @(r0,r4),r2 ; r2 ??? bc r4 is ???	
	tst r2,r2
	bt/s loc_8C0CCD94
	mov.l @(0x18,r4),r3
	mova @(loc_8C0CCDF4,pc),r0  ; r0 set to 0x8C0CCDF4
	bra loc_8C0CCD98
	fmov.s @r0,fr3

loc_8C0CCD94:
	mova @(loc_8C0CCDF8,pc),r0  ; r0 init to 0x8C0CCDF8
	fmov.s @r0,fr3

loc_8C0CCD98:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fldi0 fr4
	fmov.s @(r0,r3),fr2
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov 0x12,r6 ; r6 set to 0x12, r6 set to 0x12
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0CCDFC,pc),r0  ; r0 set to 0x8C0CCDFC, r0 set to 0x8C0CCDFc
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr2
	mov.l @(loc_8C0CCE04,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr4,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r4)
	mova @(loc_8C0CCE00,pc),r0  ; r0 set to 0x8C0CCE00, r0 set to 0x8C0CCE00
	fmov.s @r0,fr2
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr2,@(r0,r4)
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	mov.w r0,@(0x1C,r4)
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ccdd6:
	#data 0x041c
loc_8C0CCDD8:
	#data 0x012c
loc_8C0CCDDA:
	#data 0x00Dc
loc_8C0CCDDC:
	#data 0x01A3
loc_8C0CCDDE:
	#data 0x013c
	#align4

loc_8C0CCDE0:
	#data bank03.loc_8c034D8c
loc_8c0ccde4:
	#data 0x8C26823c
loc_8C0CCDE8:
	#data bank15.loc_8c15c674
loc_8C0CCDEC:
	#data bank12.loc_8c129560
loc_8C0CCDF0:
	#data bank12.loc_8c1294C8
loc_8C0CCDF4:
	#data 0x42CEAAAa
loc_8C0CCDF8:
	#data 0xC2CEAAAa
loc_8C0CCDFC:
	#data 0x42809249
loc_8C0CCE00:
	#data 0x41700000
loc_8C0CCE04:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0CCE08:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x13C,PC),r3
	jsr @r3
	mov r4,r14
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
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0cce64
	mov.l @(0xF8,PC),r3
	mov 0x02,r0
	mov 0x04,r5
	mov.w r0,@(0x1C,r14)
	mov 0x00,r6
	jsr @r3
	mov r14,r4

loc_8C0CCE64:
	mov.l @(0xEC,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0cce76
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0cd9d4
	mov.l @r15+,r14

loc_8C0CCE76:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CCE7C:
	mov r4,r3
	mov.l @(loc_8C0CCF58,pc),r1 ; r1 set to 0x8C15C684
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0CCE8E:
	mov.w @(loc_8C0CCF42,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0CCF5C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CCF42,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CCF44,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CCF46,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C0CCF60,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x07,r2 ; r2 set to 0x07
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x30,r5 ; r5 set to 0x30
	mov.b r2,@(r0,r4)
	mov 0x13,r6 ; r6 set to 0x13
	mov.w @(loc_8C0CCF48,pc),r0 ; r0 set to 0x13c
	mov.b r5,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r5,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r3
	mov 0x1B,r5 ; r5 set to 0x1b
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C0CCF64,pc),r3 ; r3 set to 0x8C034C38
	fmov.s fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C0CCF1C:
	mov.w @(loc_8C0CCF4A,pc),r1 ; r1 set to 0x1D0
	mov.l @(0x18,r4),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0CCF2c
	bra loc_8C0CD9D4
	nop

loc_8C0CCF2C:
	rts
	nop

;----------------------------------------------
loc_8C0CCF30:
	mov r4,r3
	mov.l @(loc_8C0CCF68,pc),r1 ; r1 set to 0x8C15C694
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CCF42:
	#data 0x00Dc
loc_8C0CCF44:
	#data 0x012c
loc_8C0CCF46:
	#data 0x01A3
loc_8C0CCF48:
	#data 0x013c
loc_8C0CCF4A:
	#data 0x01D0
	#align4

loc_8C0CCF4C:
	#data bank03.loc_8c034D8c
loc_8C0CCF50:
	#data loc_8c0cBE3e
loc_8C0CCF54:
	#data bank03.loc_8c0334A8
loc_8C0CCF58:
	#data bank15.loc_8c15c684
loc_8C0CCF5C:
	#data bank12.loc_8c129560
loc_8C0CCF60:
	#data bank12.loc_8c1294C8
loc_8C0CCF64:
	#data bank03.loc_8c034C38
loc_8C0CCF68:
	#data bank15.loc_8c15c694

;==============================================
loc_8C0CCF6C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0CD0CC,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0CD0D4,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0CD0CC,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CD0CE,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0CD0D0,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C0CD0D8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x0B,r2 ; r2 set to 0x0b
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r4
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x14,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x14,r14),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C0CD0DC,pc),r3 ; r3 set to 0x8C034C38
	fmov.s fr3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	add 0x14,r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0CCFFC:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x34,r0 ; r0 set to 0x34
	sts.l pr,@-r15
	mov.l @(0x14,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x14,r14),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C0CD0E0,pc),r3 ; r3 set to 0x8C034D8c
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C0CD026
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0CD9D4
	mov.l @r15+,r14

loc_8C0CD026:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CD02C:
	mov r4,r3
	mov.l @(loc_8C0CD0E4,pc),r1 ; r1 set to 0x8C15C6A4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0CD03E:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0CD0CC,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0CD0D4,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0CD0CC,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CD0CE,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0CD0D0,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C0CD0D8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x21,r5 ; r5 set to 0x21
	mov.b r3,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r14)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0CD0CE,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0CD0E8,pc),r3 ; r3 set to 0x8C042008
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0CD0DC,pc),r2 ; r2 set to 0x8C034C38
	mov r14,r4
	mov 0x16,r6 ; r6 set to 0x16
	mov 0x1B,r5 ; r5 set to 0x1b
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CD0CC:
	#data 0x00Dc
loc_8C0CD0CE:
	#data 0x012c
loc_8C0CD0D0:
	#data 0x01A3
	#align4

loc_8C0CD0D4:
	#data bank12.loc_8c129560
loc_8C0CD0D8:
	#data bank12.loc_8c1294C8
loc_8C0CD0DC:
	#data bank03.loc_8c034C38
loc_8C0CD0E0:
	#data bank03.loc_8c034D8c
loc_8C0CD0E4:
	#data bank15.loc_8c15c6A4
loc_8C0CD0E8:
	#data bank04.loc_8c042008

;==============================================
loc_8C0CD0EC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x24,r0 ; r0 set to 0x24
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0CD1B4,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C0CD118
	mov 0x01,r5 ; r5 set to 0x01
	cmp/eq 0x01,r0
	bt loc_8C0CD11c
	cmp/eq 0x02,r0
	bt loc_8C0CD120
	cmp/eq 0x03,r0
	bt loc_8C0CD124
	bra loc_8C0CD124
	nop

loc_8C0CD118:
	bra loc_8C0CD126
	mov 0x00,r4

loc_8C0CD11C:
	bra loc_8C0CD126
	mov r5,r4

loc_8C0CD120:
	bra loc_8C0CD126
	mov 0x02,r4

loc_8c0cd124:
	mov 0x03,r4

loc_8C0CD126:
	mov.w @(loc_8C0CD1B6,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov.w @(loc_8C0CD1B8,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8C0CD140
	mov r4,r3
	mov.l @(loc_8C0CD1C0,pc),r0 ; r0 set to 0x8C15C6B4
	shll2 r3
	shll r3
	fmov.s @(r0,r3),fr3
	bra loc_8C0CD14c
	nop

loc_8c0cd140:
	mov r4,r2
	mov.l @(loc_8c0cd1c0,pc),r0
	shll2 r2
	shll r2
	fmov.s @(r0,r2),fr3
	fneg fr3

loc_8c0cd14c:
	mov 0x34,r0
	mov.l @(loc_8c0cd1c8,pc),r3
	fmov.s @(r0,r13),fr2
	shll2 r4
	shll r4
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.l @(loc_8c0cd1c4,pc),r0
	fmov.s @(r0,r4),fr3
	mov 0x38,r0
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0CD1CC,pc),r3
	mov.l @r3,r2
	mov.b @(0x05,r2),r0
	tst r0,r0
	bt loc_8c0cd188
	mov.w @(loc_8C0CD1BA,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0cd19a
	mov.w @(loc_8C0CD1BC,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0cd19a

loc_8c0cd188:
	mov.l @(loc_8c0cd1d0,pc),r3
	mov 0x27,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0cd9d4
	mov.l @r15+,r14

loc_8c0cd19a:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0CD1A2:
	mov r4,r3
	mov.l @(loc_8C0CD1D4,pc),r1 ; r1 set to 0x8C15C6D4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CD1B4:
	#data 0x01F9
loc_8C0CD1B6:
	#data 0x012c
loc_8C0CD1B8:
	#data 0x01D2
loc_8c0cd1ba:
	#data 0x01D0
loc_8c0cd1bc:
	#data 0x01E9
	#align4

loc_8C0CD1C0:
	#data bank15.loc_8c15c6B4
loc_8C0CD1C4:
	#data bank15.loc_8c15c6B8
loc_8C0CD1C8:
	#data bank03.loc_8c034D8c
loc_8c0cd1cc:
	#data 0x8C28C694
loc_8C0CD1D0:
	#data bank04.loc_8c042008
loc_8C0CD1D4:
	#data bank15.loc_8c15c6D4

;==============================================
loc_8C0CD1D8:
	mov.w @(loc_8C0CD334,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0CD33C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CD334,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CD336,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CD338,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C0CD340,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x0B,r2 ; r2 set to 0x0b
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b r2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r3
	mov 0x17,r6 ; r6 set to 0x17
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C0CD344,pc),r3 ; r3 set to 0x8C034C38
	fmov.s fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C0CD25C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0CD348,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0CD274
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8C0CD9D4
	lds.l @r15+,pr

loc_8C0CD274:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0CD27C:
	mov r4,r3
	mov.l @(loc_8C0CD34C,pc),r1 ; r1 set to 0x8C15C6E4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0CD28E:
	mov.w @(loc_8C0CD334,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0CD33C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CD334,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CD336,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CD338,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C0CD340,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x0C,r2 ; r2 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0CD33A,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r2 ; r2 ??? bc r4 is ???	
	tst r2,r2
	bt/s loc_8C0CD308
	mov.l @(0x18,r4),r3
	mova @(loc_8C0CD350,pc),r0  ; r0 set to 0x8C0CD350
	bra loc_8C0CD30c
	fmov.s @r0,fr3

loc_8C0CD308:
	mova @(loc_8C0CD354,pc),r0  ; r0 init to 0x8C0CD354
	fmov.s @r0,fr3

loc_8C0CD30C:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r3),fr2
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov 0x0F,r6 ; r6 set to 0x0F, r6 set to 0x0f
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r4),r2
	mov.l @(loc_8C0CD358,pc),r0 ; r0 set to 0x8C15C6F4, r0 set to 0x8C15C6F4
	extu.b r2,r2
	mov.l @(0x18,r4),r3
	shll2 r2
	fmov.s @(r0,r2),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r3),fr2
	mov.l @(loc_8C0CD344,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CD334:
	#data 0x00Dc
loc_8C0CD336:
	#data 0x012c
loc_8C0CD338:
	#data 0x01A3
loc_8C0CD33A:
	#data 0x0130
	#align4

loc_8C0CD33C:
	#data bank12.loc_8c129560
loc_8C0CD340:
	#data bank12.loc_8c1294C8
loc_8C0CD344:
	#data bank03.loc_8c034C38
loc_8C0CD348:
	#data bank03.loc_8c034D8c
loc_8C0CD34C:
	#data bank15.loc_8c15c6E4
loc_8C0CD350:
	#data 0xC30DAAAa
loc_8C0CD354:
	#data 0x430DAAAa
loc_8C0CD358:
	#data bank15.loc_8c15c6F4

;==============================================
loc_8C0CD35C:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0CD468,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0CD374
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8C0CD9D4
	lds.l @r15+,pr

loc_8C0CD374:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0CD37C:
	mov r4,r3
	mov.l @(loc_8C0CD46C,pc),r1 ; r1 set to 0x8C15C704
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0CD38E:
mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0CD460,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0CD470,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0CD460,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CD462,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)
	mov r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0CD464,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C0CD474,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x0C,r2 ; r2 set to 0x0c
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.l @(loc_8C0CD478,pc),r3 ; r3 set to 0x8C034C38
	mov 0x18,r6 ; r6 set to 0x18
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8C0CD40C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0CD468,pc),r3 ; r3 set to 0x8C034D8C, r3 set to 0x8C034D8c
	jsr @r3
	mov r4,r14
	bsr loc_8C0CD484
	mov r14,r4
	mov.l @(loc_8C0CD47C,pc),r3 ; r3 set to 0x8C28C694, r3 set to 0x8C28C694
	mov.l @r3,r4
	mov.b @(0x02,r4),r0
	tst r0,r0
	bt loc_8C0CD452
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0CD43e
	mov.b @(0x0D,r4),r0
	tst r0,r0
	bt loc_8C0CD45a
	mov.b @(0x05,r14),r0
	fldi1 fr3
	add 0x01,r0 ; r0 set to 0x25
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0CD466,pc),r0 ; r0 set to 0x108, r0 set to 0x108
	bra loc_8C0CD45a
	fmov.s fr3,@(r0,r14)

loc_8c0cd43e:
	mov.l @(loc_8C0CD480,pc),r1
	mov.w @(loc_8c0cd466,pc),r0
	lds r1,fpul
	fmov.s @(r0,r14),fr2
	fldi0 fr1
	fsts fpul,fr3
	fsub fr3,fr2
	fcmp/gt fr1,fr2
	bt/s loc_8c0cd45a
	fmov.s fr2,@(r0,r14)

loc_8C0CD452:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0CD9D4
	mov.l @r15+,r14

loc_8C0CD45A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CD460:
	#data 0x00Dc
loc_8C0CD462:
	#data 0x012c
loc_8C0CD464:
	#data 0x01A3
loc_8C0CD466:
	#data 0x0108
	#align4

loc_8C0CD468:
	#data bank03.loc_8c034D8c
loc_8C0CD46C:
	#data bank15.loc_8c15c704
loc_8C0CD470:
	#data bank12.loc_8c129560
loc_8C0CD474:
	#data bank12.loc_8c1294C8
loc_8C0CD478:
	#data bank03.loc_8c034C38
loc_8C0CD47C:
	#data 0x8C28C694
loc_8c0cd480:
	#data 0x3D4CCCCd

;==============================================
loc_8C0CD484:
mov.l @(0x14,r4),r3
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0CD5A4,pc),r5 ; r5 set to 0x8C15C714
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x14,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CD59A,pc),r0 ; r0 set to 0x14b
	mov.l @(0x14,r4),r3
	mov.b @(r0,r3),r2
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r1
	extu.b r2,r2
	mov.w @(loc_8C0CD59C,pc),r0 ; r0 set to 0x130
	mov r2,r3
	shll r2
	extu.b r1,r1
	add r3,r2
	mov.w @(r0,r4),r3
	add r1,r2
	shll2 r2
	shll r2
	add r5,r2
	fmov.s @r2,fr4
	tst r3,r3
	mov 0x34,r2 ; r2 set to 0x34
	bt/s loc_8C0CD4C4
	add r4,r2 ; r2 ??? bc r4 is ???	
	bra loc_8C0CD4C8
	fmov fr4,fr3

loc_8C0CD4C4:
	fmov fr4,fr3
	fneg fr3

loc_8C0CD4C8:
	fmov.s @r2,fr2
	mov 0x21,r1 ; r1 set to 0x21, r1 set to 0x21
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
	fadd fr3,fr2
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s fr2,@r2
	mov.w @(loc_8C0CD59A,pc),r2 ; r2 set to 0x14B, r2 set to 0x14b
	mov.l @(0x14,r4),r3
	mov.b @r1,r1
	add r3,r2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???	
	fmov.s @(r0,r4),fr2
	mov.b @r2,r2
	extu.b r1,r1
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	add r1,r2
	shll2 r2
	shll r2
	mov 0x04,r1 ; r1 set to 0x04, r1 set to 0x04
	add r2,r5
	add r5,r1 ; r1 ??? bc r5 is ???, r1 ??? bc r5 is ???	
	fmov.s @r1,fr3
	fadd fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

;----------------------------------------------
loc_8C0CD4FE:
	mov r4,r3
	mov.l @(loc_8C0CD5A8,pc),r1 ; r1 set to 0x8C15C7Ec
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0CD510:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x01,r5 ; r5 set to 0x01
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C0CD5AC,pc),r13 ; r13 set to 0x8C03319e
	tst r0,r0
	bf/s loc_8C0CD5B8
	mov 0x00,r4 ; r4 set to 0x00
	mov.b @(0x05,r14),r0
	mov.w @(loc_8C0CD59E,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0CD5B0,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x05,r14)
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0CD59E,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CD5A0,pc),r0 ; r0 set to 0x12c
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
	mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???	
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r14)
	mov.l @(0x18,r14),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0CD5A2,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	add 0x50,r2
	mov.l @(loc_8C0CD5B4,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r3,@(r0,r14)
	mov 0x0B,r3 ; r3 set to 0x0b
	mov.w @(loc_8C0CD5A0,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	jsr @r13
	mov.b r3,@(r0,r14)
	and 0x0F,r0
	bra loc_8C0CD65a
	mov.w r0,@(0x1C,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CD59A:
	#data 0x014b
loc_8C0CD59C:
	#data 0x0130
loc_8C0CD59E:
	#data 0x00Dc
loc_8C0CD5A0:
	#data 0x012c
loc_8C0CD5A2:
	#data 0x01A3
	#align4

loc_8C0CD5A4:
	#data bank15.loc_8c15c714
loc_8C0CD5A8:
	#data bank15.loc_8c15c7Ec
loc_8C0CD5AC:
	#data bank03.loc_8c03319e
loc_8C0CD5B0:
	#data bank12.loc_8c129560
loc_8C0CD5B4:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0cd5b8:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0cd65a
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0CD6EA,pc),r0
	mov.b r5,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x14,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0CD6F0,pc),r0
	fmov.s @r0,fr3
	mov 0x38,r0
	mov.l @(0x14,r14),r3
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	jsr @r13
	fmov.s fr2,@(r0,r14)
	mov 0x1F,r4
	mov 0x10,r3
	and r0,r4
	tst r4,r3
	bt/s loc_8c0cd5fa
	mov 0x34,r0
	mov 0xF1,r4

loc_8c0cd5fa:
	lds r4,fpul
	mov.l @(loc_8C0CD6F4,pc),r1
	fmov.s @(r0,r14),fr2
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	jsr @r13
	fmov.s fr2,@(r0,r14)
	mov 0x1F,r4
	mov 0x10,r3
	and r0,r4
	tst r4,r3
	bt/s loc_8c0cd61a
	mov 0x38,r0
	mov 0xF1,r4

loc_8c0cd61a:
	lds r4,fpul
	mov.l @(loc_8C0CD6F8,pc),r1
	fmov.s @(r0,r14),fr2
	float fpul,fr3
	lds r1,fpul
	fldi0 fr4
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0CD6FC,pc),r0
	fmov.s @r0,fr3
	mov 0x60,r0
	jsr @r13
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov 0x07,r7
	mov.l @(loc_8c0cd700,pc),r3
	mov r14,r4
	and r0,r7
	mov.l @r15+,r13
	mov 0x19,r6
	mov 0x1B,r5
	jmp @r3
	mov.l @r15+,r14

loc_8C0CD65A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CD662:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0CD6B6
	mov.l @(loc_8C0CD704,pc),r3 ; r3 set to 0x8C034D8c
	jsr @r3
	mov r14,r4
	mov 0x60,r1 ; r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
	fmov.s @(r0,r14),fr2
	mov 0x6C,r1 ; r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0CD6EC,pc),r0 ; r0 set to 0x41c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8C0CD6D2
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0CD6EC,pc),r0 ; r0 set to 0x41c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0CD6EE,pc),r0 ; r0 set to 0x108
	fldi1 fr3
	bra loc_8C0CD6D2
	fmov.s fr3,@(r0,r14)

loc_8C0CD6B6:
	mov.l @(loc_8C0CD708,pc),r1 ; r1 set to 0x3D4CCCCd
	mov.w @(loc_8C0CD6EE,pc),r0 ; r0 set to 0x108
	lds r1,fpul
	fmov.s @(r0,r14),fr2
	fldi0 fr1
	fsts fpul,fr3
	fsub fr3,fr2
	fcmp/gt fr1,fr2
	bt/s loc_8C0CD6D2
	fmov.s fr2,@(r0,r14)
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0CD9D4
	mov.l @r15+,r14

loc_8C0CD6D2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CD6D8:
	mov r4,r3
	mov.l @(loc_8C0CD70C,pc),r1 ; r1 set to 0x8C15C7Fc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0cd6ea:
	#data 0x012c
loc_8C0CD6EC:
	#data 0x041c
loc_8C0CD6EE:
	#data 0x0108
	#align4

loc_8c0cd6f0:
	#data 0x42892492
loc_8c0cd6f4:
	#data 0x3FD55555
loc_8c0cd6f8:
	#data 0x40092492
loc_8c0cd6fc:
	#data 0xBFCDB6Db
loc_8C0CD700:
	#data bank03.loc_8c034CD6
loc_8C0CD704:
	#data bank03.loc_8c034D8c
loc_8C0CD708:
	#data 0x3D4CCCCd
loc_8C0CD70C:
	#data bank15.loc_8c15c7Fc

;==============================================
loc_8C0CD710:
	mov.w @(loc_8C0CD830,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0CD838,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CD830,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CD832,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CD834,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C0CD83C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x0C,r2 ; r2 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov 0x31,r1 ; r1 set to 0x31
	mov.b r2,@(r0,r4)
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.b @(0x02,r4),r0
	neg r0,r0 ; r0 ??	
	add 0xFC,r0
	mov.b r0,@r1
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x14,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x14,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C0CD7Ba
	mov.l @(loc_8C0CD840,pc),r1 ; r1 set to 0x441A4924
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???	
	mov 0x1B,r6 ; r6 set to 0x1b
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0CD844,pc),r0  ; r0 set to 0x8C0CD844
	fmov.s @r0,fr2
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr2,@(r0,r4)
	bra loc_8C0CD7Be
	mov r6,r5

loc_8C0CD7BA:
	mov 0x1B,r5 ; r5 set to 0x1b
	mov 0x1A,r6 ; r6 set to 0x1a

loc_8C0CD7BE:
	mov.l @(loc_8C0CD848,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8C0CD7C4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0CD7F6
	mov.l @(loc_8C0CD84C,pc),r2 ; r2 set to 0x8C28C694
	mov.l @r2,r3
	mov.b @(0x0A,r3),r0
	cmp/pl r0
	bf loc_8C0CD7F6
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_8C0CD7Ee
	mov 0x1B,r5 ; r5 set to 0x1b
	bra loc_8C0CD7F0
	mov 0x1D,r6

loc_8c0cd7ee:
	mov 0x1C,r6

loc_8c0cd7f0:
	mov.l @(loc_8c0cd848,pc),r3
	jsr @r3
	mov r14,r4

loc_8C0CD7F6:
	mov.l @(loc_8C0CD850,pc),r2 ; r2 set to 0x8C034D8c
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0CD80a
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0CD9D4
	mov.l @r15+,r14

loc_8C0CD80A:
	mov.l @(loc_8C0CD854,pc),r3 ; r3 set to 0x8C26823c
	mov.w @(loc_8C0CD832,pc),r1 ; r1 set to 0x12c
	mov.l @r3,r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(0x1C,r0),r0
	and 0x01,r0
	mov.b r0,@r1
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0CD81E:
	mov r4,r3
	mov.l @(loc_8C0CD858,pc),r1 ; r1 set to 0x8C15C80c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CD830:
	#data 0x00Dc
loc_8C0CD832:
	#data 0x012c
loc_8C0CD834:
	#data 0x01A3
	#align4

loc_8C0CD838:
	#data bank12.loc_8c129560
loc_8C0CD83C:
	#data bank12.loc_8c1294C8
loc_8C0CD840:
	#data 0x441A4924
loc_8C0CD844:
	#data 0x41900000
loc_8C0CD848:
	#data bank03.loc_8c034C38
loc_8C0CD84C:
	#data 0x8C28C694
loc_8C0CD850:
	#data bank03.loc_8c034D8c
loc_8C0CD854:
	#data 0x8C26823c
loc_8C0CD858:
	#data bank15.loc_8c15c80c

;==============================================
loc_8C0CD85C:
	mov.w @(loc_8C0CD99A,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0CD9A4,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CD99A,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0CD99C,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r4)
	mov r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
	add 0x50,r1
	mov.b @(0x02,r0),r0
	mov.b r0,@(0x02,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x01,r0),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CD99E,pc),r0 ; r0 set to 0x1A3
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C0CD9A8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x0C,r2 ; r2 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0CD9A0,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r2 ; r2 ??? bc r4 is ???	
	tst r2,r2
	bt/s loc_8C0CD8D6
	mov.l @(0x18,r4),r3
	mova @(loc_8C0CD9AC,pc),r0  ; r0 set to 0x8C0CD9Ac
	bra loc_8C0CD8Da
	fmov.s @r0,fr3

loc_8C0CD8D6:
	mova @(loc_8C0CD9B0,pc),r0  ; r0 init to 0x8C0CD9B0
	fmov.s @r0,fr3

loc_8C0CD8DA:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0CD9B4,pc),r0  ; r0 set to 0x8C0CD9B4, r0 set to 0x8C0CD9B4
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0CD9A0,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8C0CD8Fe
	mova @(loc_8C0CD9B8,pc),r0  ; r0 set to 0x8C0CD9B8, r0 set to 0x8C0CD9B8
	bra loc_8C0CD902
	fmov.s @r0,fr2

loc_8C0CD8FE:
	mova @(loc_8C0CD9BC,pc),r0  ; r0 init to 0x8C0CD9Bc
	fmov.s @r0,fr2

loc_8C0CD902:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr3
	fmov.s fr2,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0CD9C0,pc),r0  ; r0 set to 0x8C0CD9C0, r0 set to 0x8C0CD9C0
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	mov.l @(loc_8C0CD9C8,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0CD9C4,pc),r0  ; r0 set to 0x8C0CD9C4, r0 set to 0x8C0CD9C4
	fmov.s @r0,fr3 ; r3 ??, r3 ??	
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	mov 0x1E,r6 ; r6 set to 0x1E, r6 set to 0x1e
	fmov.s fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

;==============================================
loc_8C0CD926:
            0x8c0cd926      e62f           mov.l r14,@-r15
            0x8c0cd928      224f           sts.l pr,@-r15
            0x8c0cd92a      fc7f           add 0xFC,r15
            0x8c0cd92c      5ce1           mov 0x5C,r1
            0x8c0cd92e      436e           mov r4,r14
            0x8c0cd930      34e0           mov 0x34,r0
            0x8c0cd932      e653           mov.l @(0x18,r14),r3
            0x8c0cd934      ec31           add r14,r1
            0x8c0cd936      322f           mov.l r3,@r15
            0x8c0cd938      e6f2           fmov @(r0,r14),fr2
            0x8c0cd93a      18f3           fmov @r1,fr3
            0x8c0cd93c      68e1           mov 0x68,r1
            0x8c0cd93e      ec31           add r14,r1
            0x8c0cd940      22d3           mov.l @(0x88,PC),r3
            0x8c0cd942      30f2           fadd fr3,fr2
            0x8c0cd944      27fe           fmov fr2,@(r0,r14)
            0x8c0cd946      5ce0           mov 0x5C,r0
            0x8c0cd948      18f3           fmov @r1,fr3
            0x8c0cd94a      60e1           mov 0x60,r1
            0x8c0cd94c      e6f2           fmov @(r0,r14),fr2
            0x8c0cd94e      ec31           add r14,r1
            0x8c0cd950      30f2           fadd fr3,fr2
            0x8c0cd952      27fe           fmov fr2,@(r0,r14)
            0x8c0cd954      38e0           mov 0x38,r0
            0x8c0cd956      18f3           fmov @r1,fr3
            0x8c0cd958      6ce1           mov 0x6C,r1
            0x8c0cd95a      e6f2           fmov @(r0,r14),fr2
            0x8c0cd95c      ec31           add r14,r1
            0x8c0cd95e      30f2           fadd fr3,fr2
            0x8c0cd960      27fe           fmov fr2,@(r0,r14)
            0x8c0cd962      60e0           mov 0x60,r0
            0x8c0cd964      18f3           fmov @r1,fr3
            0x8c0cd966      e6f2           fmov @(r0,r14),fr2
            0x8c0cd968      30f2           fadd fr3,fr2
            0x8c0cd96a      27fe           fmov fr2,@(r0,r14)
            0x8c0cd96c      0b43           jsr @r3
            0x8c0cd96e      e364           mov r14,r4
            0x8c0cd970      17d2           mov.l @(0x5C,PC),r2
            0x8c0cd972      0b42           jsr @r2
            0x8c0cd974      e364           mov r14,r4
            0x8c0cd976      0820           tst r0,r0
            0x8c0cd978      0689           bt loc_8c0cd988
            0x8c0cd97a      1290           mov.w @(0x24,PC),r0
            0x8c0cd97c      f263           mov.l @r15,r3
            0x8c0cd97e      36f3           fmov @(r0,r3),fr3
            0x8c0cd980      38e0           mov 0x38,r0
            0x8c0cd982      e6f2           fmov @(r0,r14),fr2
            0x8c0cd984      35f2           fcmp/gt fr3,fr2
            0x8c0cd986      0489           bt loc_8c0cd992

loc_8C0CD988:
            0x8c0cd988      e364           mov r14,r4
            0x8c0cd98a      047f           add 0x04,r15
            0x8c0cd98c      264f           lds.l @r15+,pr
            0x8c0cd98e      21a0           bra loc_8c0cd9d4
            0x8c0cd990      f66e           mov.l @r15+,r14

loc_8C0CD992:
            0x8c0cd992      047f           add 0x04,r15
            0x8c0cd994      264f           lds.l @r15+,pr
            0x8c0cd996      0b00           rts
            0x8c0cd998      f66e           mov.l @r15+,r14

;----------------------------------------------
loc_8C0CD99A:
	#data 0x00Dc
loc_8C0CD99C:
	#data 0x012c
loc_8C0CD99E:
	#data 0x01A3
loc_8C0CD9A0:
	#data 0x0130
loc_8c0cd9a2:
	#data 0x041c
	#align4

loc_8C0CD9A4:
	#data bank12.loc_8c129560
loc_8C0CD9A8:
	#data bank12.loc_8c1294C8
loc_8C0CD9AC:
	#data 0xC33FAAAa
loc_8C0CD9B0:
	#data 0x433FAAAa
loc_8C0CD9B4:
	#data 0x4211B6Db
loc_8C0CD9B8:
	#data 0xC1A00000
loc_8C0CD9BC:
	#data 0x41A00000
loc_8C0CD9C0:
	#data 0x411A4924
loc_8C0CD9C4:
	#data 0xBF092492
loc_8C0CD9C8:
	#data bank03.loc_8c034C38
loc_8C0CD9CC:
	#data bank03.loc_8c034D8c
loc_8C0CD9D0:
	#data bank03.loc_8c0332E0

;==============================================
loc_8C0CD9D4:
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x04,r4)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0CD9E4,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)

loc_8C0CD9DE:
	mov.l @(loc_8C0CD9E8,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CD9E4:
	#data 0x012c
	#align4

loc_8C0CD9E8:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0cd9ec:
            0x8c0cd9ec      224f           sts.l pr,@-r15
            0x8c0cd9ee      f87f           add 0xF8,r15
            0x8c0cd9f0      5bd3           mov.l @(0x16C,PC),r3
            0x8c0cd9f2      00e6           mov 0x00,r6
            0x8c0cd9f4      411f           mov.l r4,@(0x4,r15)
            0x8c0cd9f6      502f           mov.b r5,@r15
            0x8c0cd9f8      03e5           mov 0x03,r5
            0x8c0cd9fa      0b43           jsr @r3
            0x8c0cd9fc      6364           mov r6,r4
            0x8c0cd9fe      0820           tst r0,r0
            0x8c0cda00      078d           bt.s loc_8c0cda12
            0x8c0cda02      0364           mov r0,r4
            0x8c0cda04      57d3           mov.l @(0x15C,PC),r3
            0x8c0cda06      20e0           mov 0x20,r0
            0x8c0cda08      3414           mov.l r3,@(0x10,r4)
            0x8c0cda0a      f152           mov.l @(0x4,r15),r2
            0x8c0cda0c      2614           mov.l r2,@(0x18,r4)
            0x8c0cda0e      f063           mov.b @r15,r3
            0x8c0cda10      3404           mov.b r3,@(r0,r4)

loc_8c0cda12:
            0x8c0cda12      087f           add 0x08,r15
            0x8c0cda14      264f           lds.l @r15+,pr
            0x8c0cda16      0b00           rts
            0x8c0cda18      4360           mov r4,r0

;----------------------------------------------
loc_8C0CDA1A:
	mov r4,r3
	mov.l @(loc_8C0CDB68,pc),r1 ; r1 set to 0x8C15C81c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0CDA2C:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0CDB6C,pc),r0 ; r0 set to 0x8C15C82c
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0CDA40:
	mov.w @(loc_8C0CDB54,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0CDB70,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0CDB54,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CDB56,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r4),r5
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0CDB58,pc),r0 ; r0 set to 0x12c
	mov 0x01,r6 ; r6 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CDB5A,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0CDB74,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x0E,r3 ; r3 set to 0x0e
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0CDB58,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r2
	mov 0x10,r6 ; r6 set to 0x10
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C0CDB78,pc),r3 ; r3 set to 0x8C034C38
	fmov.s fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

loc_8C0CDAC4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0CDB54,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0CDB54,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0CDB70,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0CDB56,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r14),r4
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???	
	mov.w @(loc_8C0CDB58,pc),r0 ; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
	mov.b @(0x02,r4),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r4),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0CDB5A,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r4),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r4),r3
	mov r4,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0CDB74,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0x0E,r3 ; r3 set to 0x0e
	mov 0x34,r1 ; r1 set to 0x34
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0CDB58,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0CDB5C,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	tst r3,r3
	bt/s loc_8C0CDB7c
	add r14,r1 ; r1 ??? bc r14 is ???	
	bra loc_8C0CDB7e
	mov 0xD0,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CDB54:
	#data 0x00Dc
loc_8C0CDB56:
	#data 0x00C0
loc_8C0CDB58:
	#data 0x012c
loc_8C0CDB5A:
	#data 0x01A3
loc_8C0CDB5C:
	#data 0x0130
	#align4

loc_8C0CDB60:
	#data bank04.loc_8c044F12
loc_8C0CDB64:
	#data loc_8c0cDA1a
loc_8C0CDB68:
	#data bank15.loc_8c15c81c
loc_8C0CDB6C:
	#data bank15.loc_8c15c82c
loc_8C0CDB70:
	#data bank12.loc_8c129560
loc_8C0CDB74:
	#data bank12.loc_8c1294C8
loc_8C0CDB78:
	#data bank03.loc_8c034C38

;==============================================
loc_8C0CDB7C:
	mov 0x30,r3 ; r3 set to 0x30

loc_8C0CDB7E:
	lds r3,fpul
	mov r14,r4
	fmov.s @r1,fr2
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov.l @(loc_8C0CDD04,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r1
	mov.l @(0x18,r14),r6
	lds.l @r15+,pr
	mov.w @(0x1C,r6),r0
	mov r0,r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0CDB9A:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0CDCF8,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0CDCF8,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0CDD08,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0CDCFA,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r14),r4
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???	
	mov.w @(loc_8C0CDCFC,pc),r0 ; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
	mov.b @(0x02,r4),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r4),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0CDCFE,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r4),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r4),r3
	mov r4,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0CDD0C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0x0E,r3 ; r3 set to 0x0e
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0CDCFC,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r2
	mov 0x26,r5 ; r5 set to 0x26
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	mov 0x60,r0 ; r0 set to 0x60
	mov.l @(loc_8C0CDD10,pc),r3 ; r3 set to 0x8C042008
	fmov.s fr3,@(r0,r14)
	mov 0x78,r0 ; r0 set to 0x78
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov.l @(0x18,r14),r4
	lds.l @r15+,pr
	mov.l @(loc_8C0CDD04,pc),r2 ; r2 set to 0x8C034C38
	mov r14,r4
	mov 0x09,r6 ; r6 set to 0x09
	mov 0x1B,r5 ; r5 set to 0x1b
	jmp @r2
	mov.l @r15+,r14
	
;==============================================
loc_8C0CDC3C:
	mov.l r8,@-r15
	mov.w @(loc_8C0CDCF8,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0CDD08,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0CDCF8,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CDCFA,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r4),r5
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0CDCFC,pc),r0 ; r0 set to 0x12c
	mov 0x01,r6 ; r6 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CDCFE,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0CDD0C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x0F,r3 ; r3 set to 0x0f
	mov 0x34,r8 ; r8 set to 0x34
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0CDCFC,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CDD00,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r2
	tst r2,r2
	bt/s loc_8C0CDCCe
	add r4,r8 ; r8 ??? bc r4 is ???	
	mov.l @(loc_8C0CDD14,pc),r1 ; r1 set to 0x42DC0000
	lds r1,fpul
	bra loc_8C0CDCD4
	fsts fpul,fr3

loc_8C0CDCCE:
	mov.l @(loc_8C0CDD18,pc),r2 ; r2 set to 0xC2DC0000
	lds r2,fpul
	fsts fpul,fr3

loc_8C0CDCD4:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C0CDD1C,pc),r1 ; r1 set to 0x41892492, r1 set to 0x41892492
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	fadd fr3,fr2
	mov.l @(loc_8C0CDD04,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	lds r1,fpul
	mov 0x0A,r6 ; r6 set to 0x0A, r6 set to 0x0a
	fmov.s fr2,@r8
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78, r0 set to 0x78
	mov.w r0,@(0x1C,r4)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r8

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CDCF8:
	#data 0x00Dc
loc_8C0CDCFA:
	#data 0x00C0
loc_8C0CDCFC:
	#data 0x012c
loc_8C0CDCFE:
	#data 0x01A3
loc_8C0CDD00:
	#data 0x0130
	#align4

loc_8C0CDD04:
	#data bank03.loc_8c034C38
loc_8C0CDD08:
	#data bank12.loc_8c129560
loc_8C0CDD0C:
	#data bank12.loc_8c1294C8
loc_8C0CDD10:
	#data bank04.loc_8c042008
loc_8C0CDD14:
	#data 0x42DC0000
loc_8C0CDD18:
	#data 0xC2DC0000
loc_8C0CDD1C:
	#data 0x41892492

;==============================================
loc_8C0CDD20:
	mov.l r8,@-r15
	mov.w @(loc_8C0CDE72,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0CDE80,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0CDE72,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CDE74,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r4),r5
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0CDE76,pc),r0 ; r0 set to 0x12c
	mov 0x01,r6 ; r6 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CDE78,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0CDE84,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x0F,r3 ; r3 set to 0x0f
	mov 0x34,r8 ; r8 set to 0x34
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0CDE76,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r2
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CDE7A,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r2
	tst r2,r2
	bt/s loc_8C0CDDB2
	add r4,r8 ; r8 ??? bc r4 is ???	
	mov.l @(loc_8C0CDE88,pc),r1 ; r1 set to 0xC32F0000
	lds r1,fpul
	bra loc_8C0CDDB8
	fsts fpul,fr3

loc_8C0CDDB2:
	mov.l @(loc_8C0CDE8C,pc),r2 ; r2 set to 0x432F0000
	lds r2,fpul
	fsts fpul,fr3

loc_8C0CDDB8:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C0CDE90,pc),r1 ; r1 set to 0x41892492, r1 set to 0x41892492
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	fadd fr3,fr2
	mov.l @(loc_8C0CDE94,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	lds r1,fpul
	mov 0x0A,r6 ; r6 set to 0x0A, r6 set to 0x0a
	fmov.s fr2,@r8
	fmov.s @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x78,r0 ; r0 set to 0x78, r0 set to 0x78
	mov.w r0,@(0x1C,r4)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r8

loc_8C0CDDDC:
	mov.w @(loc_8C0CDE72,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0CDE80,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0CDE72,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0CDE74,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r4),r5
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0CDE76,pc),r0 ; r0 set to 0x12c
	mov 0x01,r6 ; r6 set to 0x01
	mov r4,r1
	add 0x50,r1
	mov.b r6,@(r0,r4)
	mov.b @(0x02,r5),r0
	mov.b r0,@(0x02,r4)
	mov.b @(0x01,r5),r0
	mov.b r0,@(0x01,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	fmov.s fr3,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0CDE78,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0CDE84,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	fldi1 fr3
	mov.b @(r0,r5),r2
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x1B,r5 ; r5 set to 0x1b
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0CDE76,pc),r0 ; r0 set to 0x12c
	mov.b r6,@(r0,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov 0x0E,r6 ; r6 set to 0x0e
	mov.w @(loc_8C0CDE7C,pc),r0 ; r0 set to 0x108
	fmov.s fr3,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.l @(0x18,r4),r3
	fmov.s @(r0,r3),fr3
	mov.l @(loc_8C0CDE94,pc),r3 ; r3 set to 0x8C034C38
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0CDE98,pc),r0  ; r0 set to 0x8C0CDE98
	fmov.s @r0,fr4
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r4)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CDE72:
	#data 0x00Dc
loc_8C0CDE74:
	#data 0x00C0
loc_8C0CDE76:
	#data 0x012c
loc_8C0CDE78:
	#data 0x01A3
loc_8C0CDE7A:
	#data 0x0130
loc_8C0CDE7C:
	#data 0x0108
	#align4

loc_8C0CDE80:
	#data bank12.loc_8c129560
loc_8C0CDE84:
	#data bank12.loc_8c1294C8
loc_8C0CDE88:
	#data 0xC32F0000
loc_8C0CDE8C:
	#data 0x432F0000
loc_8C0CDE90:
	#data 0x41892492
loc_8C0CDE94:
	#data bank03.loc_8c034C38
loc_8C0CDE98:
	#data 0x3F4CCCCd

;==============================================
loc_8C0CDE9C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r8,@-r15
	mov.w @(loc_8C0CDF70,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0CDF70,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0CDF7C,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0CDF72,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r14),r4
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???	
	mov.w @(loc_8C0CDF74,pc),r0 ; r0 set to 0x12c
	mov 0x01,r13 ; r13 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r13,@(r0,r14)
	mov.b @(0x02,r4),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r4),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0CDF76,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r4),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r4),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r4),r3
	mov r4,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0CDF80,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	fldi1 fr4
	mov.b @(r0,r4),r2
	mov 0x07,r3 ; r3 set to 0x07
	mov 0x34,r8 ; r8 set to 0x34
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0CDF74,pc),r0 ; r0 set to 0x12c
	mov.b r13,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0CDF78,pc),r0 ; r0 set to 0x108
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0CDF7A,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r2
	tst r2,r2
	bt/s loc_8C0CDF3a
	add r14,r8 ; r8 ??? bc r14 is ???	
	mov.l @(loc_8C0CDF84,pc),r1 ; r1 set to 0x43200000
	lds r1,fpul
	bra loc_8C0CDF40
	fsts fpul,fr3

loc_8C0CDF3A:
	mov.l @(loc_8C0CDF88,pc),r2 ; r2 set to 0xC3200000
	lds r2,fpul
	fsts fpul,fr3

loc_8C0CDF40:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	mov.l @(loc_8C0CDF8C,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
	mov 0x04,r6 ; r6 set to 0x04, r6 set to 0x04
	fadd fr3,fr2
	mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
	fmov.s fr2,@r8
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r6,r5 ; r5 set to 0x04, r5 set to 0x04
	mov.l @(loc_8C0CDF90,pc),r2 ; r2 set to 0x8C034C38, r2 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov 0x0B,r6 ; r6 set to 0x0B, r6 set to 0x0b
	jsr @r2
	mov r14,r4
	mov.l @(loc_8C0CDF94,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
	jsr @r3
	mov r14,r4
	mov.b r13,@r14
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CDF70:
	#data 0x00Dc
loc_8C0CDF72:
	#data 0x00C0
loc_8C0CDF74:
	#data 0x012c
loc_8C0CDF76:
	#data 0x01A3
loc_8C0CDF78:
	#data 0x0108
loc_8C0CDF7A:
	#data 0x0130
	#align4

loc_8C0CDF7C:
	#data bank12.loc_8c129560
loc_8C0CDF80:
	#data bank12.loc_8c1294C8
loc_8C0CDF84:
	#data 0x43200000
loc_8C0CDF88:
	#data 0xC3200000
loc_8C0CDF8C:
	#data bank03.loc_8c03544c
loc_8C0CDF90:
	#data bank03.loc_8c034C38
loc_8C0CDF94:
	#data bank10.loc_8c104434

;==============================================
loc_8C0CDF98:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r8,@-r15
	mov.w @(loc_8C0CE07E,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0CE07E,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0CE08C,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0CE080,pc),r0 ; r0 set to 0xC0
	mov.l @(0x18,r14),r13
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0CE082,pc),r0 ; r0 set to 0x12c
	mov 0x01,r12 ; r12 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r12,@(r0,r14)
	mov.b @(0x02,r13),r0
	mov.b r0,@(0x02,r14)
	mov.b @(0x01,r13),r0
	mov.b r0,@(0x01,r14)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0CE084,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0CE090,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	fldi1 fr4
	mov.b @(r0,r13),r2
	mov 0x07,r3 ; r3 set to 0x07
	mov 0x34,r8 ; r8 set to 0x34
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0CE082,pc),r0 ; r0 set to 0x12c
	mov.b r12,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0CE086,pc),r0 ; r0 set to 0x108
	fmov.s fr4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.l @(0x18,r14),r3
	fmov.s @(r0,r3),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0CE088,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r2
	tst r2,r2
	bt/s loc_8C0CE038
	add r14,r8 ; r8 ??? bc r14 is ???	
	mov.l @(loc_8C0CE094,pc),r1 ; r1 set to 0x43200000
	lds r1,fpul
	bra loc_8C0CE03e
	fsts fpul,fr3

loc_8C0CE038:
	mov.l @(loc_8C0CE098,pc),r2 ; r2 set to 0xC3200000
	lds r2,fpul
	fsts fpul,fr3

loc_8C0CE03E:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
	mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03
	mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
	mov.l @(loc_8C0CE09C,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
	fadd fr3,fr2
	mov r6,r5 ; r5 set to 0x03, r5 set to 0x03
	mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
	fmov.s fr2,@r8
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r13,r4
	mov.l @(loc_8C0CE09C,pc),r2 ; r2 set to 0x8C03544C, r2 set to 0x8C03544c
	mov 0x05,r6 ; r6 set to 0x05, r6 set to 0x05
	mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
	mov r6,r5 ; r5 set to 0x05, r5 set to 0x05
	jsr @r2
	mov r13,r4
	mov.l @(loc_8C0CE0A0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov 0x0C,r6 ; r6 set to 0x0C, r6 set to 0x0c
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0CE0A4,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
	jsr @r2
	mov r14,r4
	mov.b r12,@r14
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0CE07E:
	#data 0x00Dc
loc_8C0CE080:
	#data 0x00C0
loc_8C0CE082:
	#data 0x012c
loc_8C0CE084:
	#data 0x01A3
loc_8C0CE086:
	#data 0x0108
loc_8C0CE088:
	#data 0x0130
	#align4

loc_8C0CE08C:
	#data bank12.loc_8c129560
loc_8C0CE090:
	#data bank12.loc_8c1294C8
loc_8C0CE094:
	#data 0x43200000
loc_8C0CE098:
	#data 0xC3200000
loc_8C0CE09C:
	#data bank03.loc_8c03544c
loc_8C0CE0A0:
	#data bank03.loc_8c034C38
loc_8C0CE0A4:
	#data bank10.loc_8c104434

;==============================================
loc_8C0CE0A8:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r8,@-r15
mov.w @(loc_8C0CE214,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0CE214,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0CE220,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0CE216,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CE218,pc),r0 ; r0 set to 0x12c
mov 0x01,r13 ; r13 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r13,@(r0,r14)
mov.b @(0x02,r4),r0
mov.b r0,@(0x02,r14)
mov.b @(0x01,r4),r0
mov.b r0,@(0x01,r14)
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
fmov.s fr3,@(r0,r14)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r4),fr3
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CE21A,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r4),r3
mov.b r3,@(r0,r14)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r4),r3
mov r4,r2
add 0x50,r2
mov.b r3,@(r0,r14)
mov.l @(loc_8C0CE224,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
fldi1 fr4
mov.b @(r0,r4),r2
mov 0x07,r3 ; r3 set to 0x07
mov 0x34,r8 ; r8 set to 0x34
mov.b r2,@(r0,r14)
mov.w @(loc_8C0CE218,pc),r0 ; r0 set to 0x12c
mov.b r13,@(r0,r14)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14)
mov.w @(loc_8C0CE21C,pc),r0 ; r0 set to 0x108
fmov.s fr4,@(r0,r14)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CE21E,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE146
add r14,r8 ; r8 ??? bc r14 is ???	
mov.l @(loc_8C0CE228,pc),r1 ; r1 set to 0x43200000
lds r1,fpul
bra loc_8C0CE14c
fsts fpul,fr3

loc_8C0CE146:
mov.l @(loc_8C0CE22C,pc),r2 ; r2 set to 0xC3200000
lds r2,fpul
fsts fpul,fr3

loc_8C0CE14C:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
mov.l @(loc_8C0CE230,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
mov 0x06,r6 ; r6 set to 0x06, r6 set to 0x06
fadd fr3,fr2
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
fmov.s fr2,@r8
fmov.s fr4,@(r0,r14)
jsr @r3
mov r6,r5 ; r5 set to 0x06, r5 set to 0x06
mov.l @(loc_8C0CE234,pc),r2 ; r2 set to 0x8C034C38, r2 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov 0x0D,r6 ; r6 set to 0x0D, r6 set to 0x0d
jsr @r2
mov r14,r4
mov.l @(loc_8C0CE238,pc),r3 ; r3 set to 0x8C104434, r3 set to 0x8C104434
jsr @r3
mov r14,r4
mov.b r13,@r14
lds.l @r15+,pr
mov.l @r15+,r8
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0CE17C:
mov.l r8,@-r15
mov.w @(loc_8C0CE214,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CE220,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CE214,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0CE216,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CE218,pc),r0 ; r0 set to 0x12c
mov 0x01,r6 ; r6 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r6,@(r0,r4)
mov.b @(0x02,r5),r0
mov.b r0,@(0x02,r4)
mov.b @(0x01,r5),r0
mov.b r0,@(0x01,r4)
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0CE21A,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r4)
mov.l @(loc_8C0CE224,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
fldi1 fr3
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov 0x34,r8 ; r8 set to 0x34
mov.b r2,@(r0,r4)
mov.w @(loc_8C0CE218,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4)
mov.w @(loc_8C0CE21C,pc),r0 ; r0 set to 0x108
fmov.s fr3,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0CE21E,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE23c
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0CE228,pc),r1 ; r1 set to 0x43200000
lds r1,fpul
bra loc_8C0CE242
fsts fpul,fr3

loc_8C0CE214:
#data 0x00Dc

loc_8C0CE216:
#data 0x00C0

loc_8C0CE218:
#data 0x012c

loc_8C0CE21A:
#data 0x01A3

loc_8C0CE21C:
#data 0x0108

loc_8C0CE21E:
#data 0x0130

#align4
loc_8C0CE220:
#data bank12.loc_8c129560

loc_8C0CE224:
#data bank12.loc_8c1294C8

loc_8C0CE228:
#data 0x43200000

#align4
loc_8C0CE22C:
#data 0xC3200000

#align4
loc_8C0CE230:
#data bank03.loc_8c03544c

loc_8C0CE234:
#data bank03.loc_8c034C38

loc_8C0CE238:
#data bank10.loc_8c104434


loc_8C0CE23C:
mov.l @(loc_8C0CE368,pc),r2 ; r2 set to 0xC3200000
lds r2,fpul
fsts fpul,fr3

loc_8C0CE242:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mova @(loc_8C0CE36C,pc),r0  ; r0 init to 0x8C0CE36C, r0 init to 0x8C0CE36c
mov.l @(loc_8C0CE370,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fadd fr3,fr2
mov 0x0E,r6 ; r6 set to 0x0E, r6 set to 0x0e
fmov.s fr2,@r8
fmov.s @r0,fr4
mov 0x50,r0 ; r0 set to 0x50, r0 set to 0x50
fmov.s fr4,@(r0,r4)
mov 0x54,r0 ; r0 set to 0x54, r0 set to 0x54
fmov.s fr4,@(r0,r4)
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r8

loc_8C0CE260:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x01,r14),r0
mov.l @(0x18,r14),r3
mov r0,r2
mov.b @(0x01,r3),r0
cmp/eq r0,r2
bt loc_8C0CE276
mov r14,r4
bra loc_8C0CE620
mov.l @r15+,r14

loc_8C0CE276:
mov 0x20,r0 ; r0 set to 0x20
mov r14,r4
mov.b @(r0,r14),r3
mov.l @(loc_8C0CE374,pc),r0 ; r0 set to 0x8C15C854
extu.b r3,r3
shll2 r3
mov.l @(r0,r3),r2
jmp @r2
mov.l @r15+,r14

#align4
loc_8C0CE288:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0xD13953E6
#data 0x84E52F32
#data 0x4008600c
#data 0x430B031e
#data 0x915E64E3
#data 0x001C60F2
#data 0x881E600c
#data 0x84E48905
#data 0x7001E300
#data 0x905580E4
#data 0x0E34

loc_8C0CE2BA:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;----------------------------------------------

loc_8C0CE2C2:
#data 0x2FE6
#data 0x914E6E43
#data 0x4F222FD6
#data 0xDD2850E6
#data 0x8802001c
#data 0xE51B8B03
#data 0x4D0BE611
#data 0x64E3

loc_8C0CE2DE:
#data 0x9142
#data 0x001C50E6
#data 0x8B038803
#data 0xE612E51b
#data 0x64E34D0b

#align4
loc_8C0CE2F0:
#data 0x50E69139
#data 0x8804001c
#data 0xE51B8B03
#data 0x4D0BE613
#data 0x64E3

loc_8C0CE302:
#data 0x9130
#data 0x001C50E6
#data 0x8B038805
#data 0xE614E51b
#data 0x64E34D0b

#align4
loc_8C0CE314:
#data 0x50E69127
#data 0x8806001c
#data 0xE51B8B03
#data 0x4D0BE615
#data 0x64E3

loc_8C0CE326:
#data 0x911e
#data 0x001C50E6
#data 0x8B038807
#data 0xE615E51b
#data 0x64E34D0b

#align4
loc_8C0CE338:
#data 0x50E69115
#data 0x8808001c
#data 0xE51B8B03
#data 0x4D0BE616
#data 0x64E3

loc_8C0CE34A:
#data 0x910c
#data 0x001C50E6
#data 0x8B028809
#data 0x700184E4
#data 0x80E4

loc_8C0CE35A:
#data 0x4F26
#data 0x000B6DF6
#data 0x01D06EF6
#data 0x0141012c

#align4
loc_8C0CE368:
#data 0xC3200000

#align4
loc_8C0CE36C:
#data 0x3F4CCCCd

#align4
loc_8C0CE370:
#data bank03.loc_8c034C38

loc_8C0CE374:
#data bank15.loc_8c15c854

loc_8C0CE378:
#data bank15.loc_8c15c87c


loc_8C0CE37C:
mov r4,r3
mov.l @(loc_8C0CE4A4,pc),r1 ; r1 set to 0x8C15C880
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CE38E:
#data 0x2FE6
#data 0xD3454F22
#data 0x6E43430b
#data 0x02EC9080
#data 0x89024211
#data 0x700184E4
#data 0x80E4

loc_8C0CE3A6:
#data 0x4F26
#data 0x6EF6000b
;----------------------------------------------

loc_8C0CE3AC:
mov r4,r3
mov.l @(loc_8C0CE4AC,pc),r1 ; r1 set to 0x8C15C884
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CE3BE:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0CE4A8,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
mov.w @(loc_8C0CE49E,pc),r0 ; r0 set to 0x130
mov 0x34,r1 ; r1 set to 0x34
mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE3Da
add r14,r1 ; r1 ??? bc r14 is ???	
bra loc_8C0CE3Dc
mov 0x12,r2

loc_8c0ce3da:
mov 0xEE,r2

loc_8c0ce3dc:
lds r2,fpul
mov 0x60,r0
fmov.s @r1,fr2
mov.l @(loc_8C0CE4B0,pc),r3
float fpul,fr3
fadd fr3,fr2
fmov.s fr2,@r1
fmov.s @(r0,r14),fr3
mov 0x38,r0
fmov.s fr3,@(r0,r14)
mov.l @r3,r0
mov.l @(0x1C,r0),r0
tst 0x01,r0
bf loc_8c0ce406
mov.l @(loc_8C0CE4B4,pc),r1
mov 0x38,r0
fmov.s @(r0,r14),fr2
lds r1,fpul
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)

loc_8c0ce406:
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
add 0x01,r0
exts.w r0,r0
tst r0,r0
bf loc_8c0ce420
mov.b @(0x04,r14),r0
mov 0x00,r3
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0CE4A0,pc),r0
mov.b r3,@(r0,r14)

loc_8c0ce420:
lds.l @r15+,pr
rts
mov.l @r15+,r14

loc_8C0CE426:
mov r4,r3
mov.l @(loc_8C0CE4B8,pc),r1 ; r1 set to 0x8C15C888
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CE438:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0CE4A8,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
mov.w @(loc_8C0CE49E,pc),r0 ; r0 set to 0x130
mov 0x34,r1 ; r1 set to 0x34
mov.l @(0x18,r14),r3 ; r3 ??? bc r14 is ???	
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE454
add r14,r1 ; r1 ??? bc r14 is ???	
bra loc_8C0CE456
mov 0x12,r2

loc_8c0ce454:
mov 0xEE,r2

loc_8c0ce456:
lds r2,fpul
mov 0x48,r0
mov.w @(loc_8C0CE4A2,pc),r3
fmov.s @r1,fr2
float fpul,fr3
fadd fr3,fr2
fmov.s fr2,@r1
mov.l @(r0,r14),r2
add r3,r2
mov.l r2,@(r0,r14)
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
add 0x01,r0
exts.w r0,r0
tst r0,r0
bf loc_8c0ce484
mov.b @(0x04,r14),r0
mov 0x00,r2
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0CE4A0,pc),r0
mov.b r2,@(r0,r14)

loc_8c0ce484:
lds.l @r15+,pr
rts
mov.l @r15+,r14

loc_8C0CE48A:
mov r4,r3
mov.l @(loc_8C0CE4BC,pc),r1 ; r1 set to 0x8C15C88c
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15
#data 0x0143

loc_8C0CE49E:
#data 0x0130
loc_8c0ce4a0:
#data 0x012c
loc_8c0ce4a2:
#data 0x2000

#align4
loc_8C0CE4A4:
#data bank15.loc_8c15c880

loc_8C0CE4A8:
#data bank03.loc_8c034D8c

loc_8C0CE4AC:
#data bank15.loc_8c15c884
loc_8c0ce4b0:
#data 0x8C26823c
loc_8c0ce4b4:
#data 0x40400000

#align4
loc_8C0CE4B8:
#data bank15.loc_8c15c888

loc_8C0CE4BC:
#data bank15.loc_8c15c88c

loc_8C0CE4C0:
#data 0x4F222FE6
#data 0x430BD350
#data 0xD1506E43
#data 0x415A9096
#data 0xF30DF2E6
#data 0xFE27F231
#data 0xF28DF1E6
#data 0x8B00F215
#data 0xFE27

loc_8C0CE4E2:
#data 0x908c
#data 0x431103Ec
#data 0x84E48905
#data 0x7001E300
#data 0x908580E4
#data 0x0E34

loc_8C0CE4F6:
#data 0x4F26
#data 0x6EF6000b
;----------------------------------------------

loc_8C0CE4FC:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0CE610,pc),r1 ; r1 set to 0x8C15C890
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x05,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
mov.l @(0x18,r14),r13
mov.w @(loc_8C0CE602,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x16,r0
bt loc_8C0CE536
mov.b @(0x04,r14),r0
mov 0x00,r3 ; r3 set to 0x00
mov r13,r4
mov r3,r5 ; r5 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0CE600,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14)
lds.l @r15+,pr
mov.l @(loc_8C0CE614,pc),r3 ; r3 set to 0x8C035162
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0CE536:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0CE53E:
mov.l @(loc_8C0CE608,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop

loc_8C0CE544:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0CE618,pc),r1 ; r1 set to 0x8C15C894
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x05,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
mov.l @(0x18,r14),r13
mov.w @(loc_8C0CE602,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x16,r0
bt loc_8C0CE57e
mov.b @(0x04,r14),r0
mov 0x00,r3 ; r3 set to 0x00
mov r13,r4
mov r3,r5 ; r5 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0CE600,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14)
lds.l @r15+,pr
mov.l @(loc_8C0CE614,pc),r3 ; r3 set to 0x8C035162
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0CE57E:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0CE586:
mov.l @(loc_8C0CE608,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop

loc_8C0CE58C:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0CE61C,pc),r1 ; r1 set to 0x8C15C898
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(0x05,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
mov.l @(0x18,r14),r13
mov.w @(loc_8C0CE602,pc),r0 ; r0 set to 0x1D0
mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
extu.b r0,r0
cmp/eq 0x16,r0
bt loc_8C0CE5C6
mov.b @(0x04,r14),r0
mov 0x00,r3 ; r3 set to 0x00
mov r13,r4
mov r3,r5 ; r5 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0CE600,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14)
lds.l @r15+,pr
mov.l @(loc_8C0CE614,pc),r3 ; r3 set to 0x8C035162
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0CE5C6:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0CE5CE:
#data 0x9019
#data 0x8801004c
#data 0x84458B05
#data 0x7001E300
#data 0x90118045
#data 0x0434

loc_8C0CE5E2:
#data 0xD309
#data 0x0009432b


loc_8C0CE5E8:
mov.l @(loc_8C0CE608,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop

loc_8C0CE5EE:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0CE600,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;----------------------------------------------
#data 0x01430108

loc_8C0CE600:
#data 0x012c

loc_8C0CE602:
#data 0x01D0
#data 0x00000141

#align4
loc_8C0CE608:
#data bank03.loc_8c034D8c
#data 0x3CA3D70a

#align4
loc_8C0CE610:
#data bank15.loc_8c15c890

loc_8C0CE614:
#data bank03.loc_8c035162

loc_8C0CE618:
#data bank15.loc_8c15c894

loc_8C0CE61C:
#data bank15.loc_8c15c898


loc_8C0CE620:
mov.l @(loc_8C0CE628,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop
#data 0x0000

#align4
loc_8C0CE628:
#data bank04.loc_8c0450C0
#data 0x7FF84F22
#data 0xE600D346
#data 0x2F501F41
#data 0x430BE503
#data 0x20086463
#data 0x64038D07
#data 0xE020D342
#data 0x52F11434
#data 0x63F01426
#data 0x7F080434
#data 0x000B4F26
#data 0x6043
;----------------------------------------------

loc_8C0CE65A:
#data 0x4F22
#data 0x2F427FF8
#data 0x00096053
#data 0xE503D339
#data 0xE60080F4
#data 0x6463430b
#data 0x8D0B2008
#data 0xD3366403
#data 0x314CE120
#data 0x62F21434
#data 0x14365326
#data 0x142562F2
#data 0x210084F4

#align4
loc_8C0CE68C:
#data 0x4F267F08
#data 0x6043000b
;----------------------------------------------

loc_8C0CE694:
mov r4,r3
mov.l @(loc_8C0CE754,pc),r1 ; r1 set to 0x8C15C8A0
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CE6A6:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0CE758,pc),r0 ; r0 set to 0x8C15C8B0
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

loc_8C0CE6BA:
mov.w @(loc_8C0CE740,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CE75C,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CE740,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0CE742,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CE744,pc),r0 ; r0 set to 0x12c
mov 0x01,r6 ; r6 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r6,@(r0,r4)
mov.b @(0x02,r5),r0
mov.b r0,@(0x02,r4)
mov.b @(0x01,r5),r0
mov.b r0,@(0x01,r4)
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0CE746,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r4)
mov.l @(loc_8C0CE760,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r4)
mova @(loc_8C0CE764,pc),r0  ; r0 set to 0x8C0CE764
fmov.s @r0,fr3 ; r3 ??	
mov.w @(loc_8C0CE748,pc),r0 ; r0 set to 0x108
fmov.s fr3,@(r0,r4)
add 0x24,r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3
mov 0x00,r6 ; r6 set to 0x00
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0CE768,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4)
jmp @r3
lds.l @r15+,pr

loc_8C0CE740:
#data 0x00Dc

loc_8C0CE742:
#data 0x00C0

loc_8C0CE744:
#data 0x012c

loc_8C0CE746:
#data 0x01A3

loc_8C0CE748:
#data 0x0108
#data 0x0000

#align4
loc_8C0CE74C:
#data bank04.loc_8c044F12

loc_8C0CE750:
#data loc_8c0cE694

loc_8C0CE754:
#data bank15.loc_8c15c8A0

loc_8C0CE758:
#data bank15.loc_8c15c8B0

loc_8C0CE75C:
#data bank12.loc_8c129560

loc_8C0CE760:
#data bank12.loc_8c1294C8

loc_8C0CE764:
#data 0x3F000000

#align4
loc_8C0CE768:
#data bank03.loc_8c034C38


loc_8C0CE76C:
mov.w @(loc_8C0CE8CC,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CE8D8,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CE8CC,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0CE8CE,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CE8D0,pc),r0 ; r0 set to 0x12c
mov 0x01,r6 ; r6 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r6,@(r0,r4)
mov.b @(0x02,r5),r0
mov.b r0,@(0x02,r4)
mov.b @(0x01,r5),r0
mov.b r0,@(0x01,r4)
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0CE8D2,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r4)
mov.l @(loc_8C0CE8DC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x1B,r5 ; r5 set to 0x1b
mov.b r2,@(r0,r4)
mov.w @(loc_8C0CE8D0,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov.l @(loc_8C0CE8E0,pc),r3 ; r3 set to 0x8C034C38
fmov.s fr3,@(r0,r4)
jmp @r3
lds.l @r15+,pr

loc_8C0CE7E8:
mov.l r8,@-r15
mov.w @(loc_8C0CE8CC,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CE8D8,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CE8CC,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0CE8CE,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CE8D0,pc),r0 ; r0 set to 0x12c
mov 0x01,r6 ; r6 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r6,@(r0,r4)
mov.b @(0x02,r5),r0
mov.b r0,@(0x02,r4)
mov.b @(0x01,r5),r0
mov.b r0,@(0x01,r4)
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0CE8D2,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r4)
mov.l @(loc_8C0CE8DC,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov.b r2,@(r0,r4)
mov.w @(loc_8C0CE8D0,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r2
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r3
mov r0,r8 ; r8 set to 0x34
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0CE8D4,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE882
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0CE8E4,pc),r1 ; r1 set to 0x43C80000
lds r1,fpul
bra loc_8C0CE888
fsts fpul,fr3

loc_8C0CE882:
mov.l @(loc_8C0CE8E8,pc),r2 ; r2 set to 0xC3C80000
lds r2,fpul
fsts fpul,fr3

loc_8C0CE888:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
fadd fr3,fr2
fmov.s fr2,@r8
mov 0x34,r8 ; r8 set to 0x34, r8 set to 0x34
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE8A2
add r4,r8 ; r8 ??? bc r4 is ???, r8 ??? bc r4 is ???	
mov.l @(loc_8C0CE8EC,pc),r1 ; r1 set to 0xC2D55555, r1 set to 0xC2D55555
lds r1,fpul
bra loc_8C0CE8A8
fsts fpul,fr3

loc_8C0CE8A2:
mov.l @(loc_8C0CE8F0,pc),r2 ; r2 set to 0x42D55555
lds r2,fpul
fsts fpul,fr3

loc_8C0CE8A8:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0CE8F4,pc),r1 ; r1 set to 0x4391B6DB, r1 set to 0x4391B6Db
fadd fr3,fr2
lds r1,fpul
fmov.s fr2,@r8
fmov.s @(r0,r4),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov.w @(loc_8C0CE8D4,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE8F8
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
bra loc_8C0CE8Fa
mov 0x02,r6

loc_8C0CE8CC:
#data 0x00Dc

loc_8C0CE8CE:
#data 0x00C0

loc_8C0CE8D0:
#data 0x012c

loc_8C0CE8D2:
#data 0x01A3

loc_8C0CE8D4:
#data 0x0130
#data 0x0000

#align4
loc_8C0CE8D8:
#data bank12.loc_8c129560

loc_8C0CE8DC:
#data bank12.loc_8c1294C8

loc_8C0CE8E0:
#data bank03.loc_8c034C38

loc_8C0CE8E4:
#data 0x43C80000

#align4
loc_8C0CE8E8:
#data 0xC3C80000

#align4
loc_8C0CE8EC:
#data 0xC2D55555

#align4
loc_8C0CE8F0:
#data 0x42D55555

#align4
loc_8C0CE8F4:
#data 0x4391B6Db


loc_8C0CE8F8:
mov 0x03,r6 ; r6 set to 0x03

loc_8C0CE8FA:
lds.l @r15+,pr
mov.l @(loc_8C0CE9F0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
jmp @r3
mov.l @r15+,r8

loc_8C0CE902:
mov.l r8,@-r15
mov.w @(loc_8C0CE9E6,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CE9F4,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CE9E6,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0CE9E8,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CE9EA,pc),r0 ; r0 set to 0x12c
mov 0x01,r6 ; r6 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r6,@(r0,r4)
mov.b @(0x02,r5),r0
mov.b r0,@(0x02,r4)
mov.b @(0x01,r5),r0
mov.b r0,@(0x01,r4)
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0CE9EC,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r4)
mov.l @(loc_8C0CE9F8,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov 0x34,r8 ; r8 set to 0x34
mov.b r2,@(r0,r4)
mov.w @(loc_8C0CE9EA,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r2
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0CE9EE,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE994
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0CE9FC,pc),r1 ; r1 set to 0x43C80000
lds r1,fpul
bra loc_8C0CE99a
fsts fpul,fr3

loc_8C0CE994:
mov.l @(loc_8C0CEA00,pc),r2 ; r2 set to 0xC3C80000
lds r2,fpul
fsts fpul,fr3

loc_8C0CE99A:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
fadd fr3,fr2
fmov.s fr2,@r8
mov 0x34,r8 ; r8 set to 0x34, r8 set to 0x34
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C0CE9B4
add r4,r8 ; r8 ??? bc r4 is ???, r8 ??? bc r4 is ???	
mov.l @(loc_8C0CEA04,pc),r1 ; r1 set to 0xC2D55555, r1 set to 0xC2D55555
lds r1,fpul
bra loc_8C0CE9Ba
fsts fpul,fr3

loc_8C0CE9B4:
mov.l @(loc_8C0CEA08,pc),r2 ; r2 set to 0x42D55555
lds r2,fpul
fsts fpul,fr3

loc_8C0CE9BA:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0CEA0C,pc),r1 ; r1 set to 0x424DB6DB, r1 set to 0x424DB6Db
fadd fr3,fr2
lds r1,fpul
fmov.s fr2,@r8
fmov.s @(r0,r4),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov.w @(loc_8C0CE9EE,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r5),r3
tst r3,r3
bt/s loc_8C0CE9Dc
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
bra loc_8C0CE9De
mov 0x05,r6

loc_8C0CE9DC:
mov 0x06,r6 ; r6 set to 0x06

loc_8C0CE9DE:
lds.l @r15+,pr
mov.l @(loc_8C0CE9F0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
jmp @r3
mov.l @r15+,r8

loc_8C0CE9E6:
#data 0x00Dc

loc_8C0CE9E8:
#data 0x00C0

loc_8C0CE9EA:
#data 0x012c

loc_8C0CE9EC:
#data 0x01A3

loc_8C0CE9EE:
#data 0x0130

#align4
loc_8C0CE9F0:
#data bank03.loc_8c034C38

loc_8C0CE9F4:
#data bank12.loc_8c129560

loc_8C0CE9F8:
#data bank12.loc_8c1294C8

loc_8C0CE9FC:
#data 0x43C80000

#align4
loc_8C0CEA00:
#data 0xC3C80000

#align4
loc_8C0CEA04:
#data 0xC2D55555

#align4
loc_8C0CEA08:
#data 0x42D55555

#align4
loc_8C0CEA0C:
#data 0x424DB6Db


loc_8C0CEA10:
mov.l r8,@-r15
mov.w @(loc_8C0CEB1A,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C0CEB1A,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(0x18,r4),r5
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0CEB1C,pc),r0 ; r0 set to 0xC0
mov.l @(loc_8C0CEB28,pc),r3 ; r3 set to 0x8C129560
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CEB1E,pc),r0 ; r0 set to 0x12c
mov 0x01,r6 ; r6 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r6,@(r0,r4)
mov.b @(0x02,r5),r0
mov.b r0,@(0x02,r4)
mov.b @(0x01,r5),r0
mov.b r0,@(0x01,r4)
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0CEB20,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r4)
mov.l @(loc_8C0CEB2C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x09,r3 ; r3 set to 0x09
mov.b r2,@(r0,r4)
mov.w @(loc_8C0CEB1E,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r2
fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0CEB20,pc),r0 ; r0 set to 0x1A3
mov.l @(0x18,r4),r3
mov.b @(r0,r3),r2
tst r2,r2
bf loc_8C0CEAB2
mov.w @(loc_8C0CEB22,pc),r0 ; r0 set to 0x130
mov 0x34,r8 ; r8 set to 0x34
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0CEAAa
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0CEB30,pc),r1 ; r1 set to 0x433AAAAa
lds r1,fpul
bra loc_8C0CEACc
fsts fpul,fr3

loc_8C0CEAAA:
mov.l @(loc_8C0CEB34,pc),r2 ; r2 set to 0xC33AAAAa
lds r2,fpul
bra loc_8C0CEACc
fsts fpul,fr3

loc_8C0CEAB2:
mov.w @(loc_8C0CEB22,pc),r0 ; r0 set to 0x130
mov 0x34,r8 ; r8 set to 0x34
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0CEAC6
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0CEB38,pc),r1 ; r1 set to 0x43BAAAAa
lds r1,fpul
bra loc_8C0CEACc
fsts fpul,fr3

loc_8C0CEAC6:
mov.l @(loc_8C0CEB3C,pc),r2 ; r2 set to 0xC3BAAAAa
lds r2,fpul
fsts fpul,fr3

loc_8C0CEACC:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov.w @(loc_8C0CEB22,pc),r0 ; r0 set to 0x130, r0 set to 0x130
fadd fr3,fr2
mov.l @(loc_8C0CEB40,pc),r5 ; r5 set to 0x8C26A518, r5 set to 0x8C26A518
fmov.s fr2,@r8
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0CEAF4
mov.w @(loc_8C0CEB24,pc),r0 ; r0 set to 0x8C, r0 set to 0x8c
fmov.s @(r0,r5),fr4
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @(r0,r4),fr3
fcmp/gt fr4,fr3
bf loc_8C0CEB0a
mova @(loc_8C0CEB44,pc),r0  ; r0 set to 0x8C0CEB44, r0 set to 0x8C0CEB44
fmov.s @r0,fr3
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fadd fr3,fr4
bra loc_8C0CEB0a
fmov.s fr4,@(r0,r4)

#align4
loc_8c0ceaf4:
mov.w @(loc_8C0CEB26,pc),r0
fmov.s @(r0,r5),fr4
mov 0x34,r0
fmov.s @(r0,r4),fr3
fcmp/gt fr3,fr4
bf loc_8c0ceb0a
mova @(loc_8C0CEB48,pc),r0
fmov.s @r0,fr3
mov 0x34,r0
fadd fr3,fr4
fmov.s fr4,@(r0,r4)

loc_8C0CEB0A:
mov.l @(loc_8C0CEB4C,pc),r3 ; r3 set to 0x8C034C38
mov 0x28,r0 ; r0 set to 0x28
mov 0x1B,r5 ; r5 set to 0x1b
mov.w r0,@(0x1C,r4)
lds.l @r15+,pr
mov 0x04,r6 ; r6 set to 0x04
jmp @r3
mov.l @r15+,r8

loc_8C0CEB1A:
#data 0x00Dc

loc_8C0CEB1C:
#data 0x00C0

loc_8C0CEB1E:
#data 0x012c

loc_8C0CEB20:
#data 0x01A3

loc_8C0CEB22:
#data 0x0130

loc_8C0CEB24:
#data 0x008c
loc_8c0ceb26:
#data 0x0088

#align4
loc_8C0CEB28:
#data bank12.loc_8c129560

loc_8C0CEB2C:
#data bank12.loc_8c1294C8

loc_8C0CEB30:
#data 0x433AAAAa

#align4
loc_8C0CEB34:
#data 0xC33AAAAa

#align4
loc_8C0CEB38:
#data 0x43BAAAAa

#align4
loc_8C0CEB3C:
#data 0xC3BAAAAa

#align4
loc_8C0CEB40:
#data 0x8C26A518

#align4
loc_8C0CEB44:
#data 0xC2A00000
loc_8c0ceb48:
#data 0x42A00000

#align4
loc_8C0CEB4C:
#data bank03.loc_8c034C38


loc_8C0CEB50:
mova @(loc_8C0CEC54,pc),r0  ; r0 init to 0x8C0CEC54
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0CEC4A,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
fmov.s @r0,fr4
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b @(0x04,r14),r0
mov.w @(loc_8C0CEC4A,pc),r2 ; r2 set to 0xDc
add 0x01,r0 ; r0 set to 0x8C0CEC55
mov.l @(loc_8C0CEC58,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0CEC4C,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CEC4E,pc),r0 ; r0 set to 0x12c
mov 0x01,r13 ; r13 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r13,@(r0,r14)
mov.b @(0x02,r4),r0
mov.b r0,@(0x02,r14)
mov.b @(0x01,r4),r0
mov.b r0,@(0x01,r14)
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
fmov.s fr3,@(r0,r14)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r4),fr3
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CEC50,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r4),r3
mov.b r3,@(r0,r14)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r4),r3
mov r4,r2
add 0x50,r2
mov.b r3,@(r0,r14)
mov.l @(loc_8C0CEC5C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x0C,r3 ; r3 set to 0x0c
mov.b r2,@(r0,r14)
mov.w @(loc_8C0CEC4E,pc),r0 ; r0 set to 0x12c
mov.b r13,@(r0,r14)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14)
mov.w @(loc_8C0CEC52,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r14)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CEC52,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CEBEe
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0CEC60,pc),r3 ; r3 set to 0x8C26A5A0
fmov.s @r3,fr3 ; r3 ??	
bra loc_8C0CEBF4
fsub fr4,fr3

loc_8C0CEBEE:
mov.l @(loc_8C0CEC64,pc),r2 ; r2 set to 0x8C26A5A4
fmov.s @r2,fr3
fadd fr4,fr3

loc_8C0CEBF4:
mov.l @(loc_8C0CEC68,pc),r1 ; r1 set to 0x424DB6DB, r1 set to 0x424DB6Db
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
lds r1,fpul
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
fldi0 fr4
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14)
mov.w @(loc_8C0CEC52,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0CEC1c
mova @(loc_8C0CEC6C,pc),r0  ; r0 set to 0x8C0CEC6C, r0 set to 0x8C0CEC6c
bra loc_8C0CEC20
fmov.s @r0,fr2

loc_8C0CEC1C:
mova @(loc_8C0CEC70,pc),r0  ; r0 init to 0x8C0CEC70
fmov.s @r0,fr2

loc_8C0CEC20:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0CEC74,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
fmov.s fr2,@(r0,r14)
mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
mov 0x04,r6 ; r6 set to 0x04, r6 set to 0x04
mov.w r0,@(0x1C,r14)
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
jsr @r3
mov r6,r5 ; r5 set to 0x04, r5 set to 0x04
mov.l @(loc_8C0CEC78,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
jsr @r2
mov r14,r4
mov.b r13,@r14
mov 0x08,r6 ; r6 set to 0x08, r6 set to 0x08
lds.l @r15+,pr
mov.l @(loc_8C0CEC7C,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0CEC4A:
#data 0x00Dc

loc_8C0CEC4C:
#data 0x00C0

loc_8C0CEC4E:
#data 0x012c

loc_8C0CEC50:
#data 0x01A3

loc_8C0CEC52:
#data 0x0130

#align4
loc_8C0CEC54:
#data 0x42555555

#align4
loc_8C0CEC58:
#data bank12.loc_8c129560

loc_8C0CEC5C:
#data bank12.loc_8c1294C8

loc_8C0CEC60:
#data 0x8C26A5A0

#align4
loc_8C0CEC64:
#data 0x8C26A5A4

#align4
loc_8C0CEC68:
#data 0x424DB6Db

#align4
loc_8C0CEC6C:
#data 0x41EFFFFf

#align4
loc_8C0CEC70:
#data 0xC1EFFFFf

#align4
loc_8C0CEC74:
#data bank03.loc_8c03544c

loc_8C0CEC78:
#data bank10.loc_8c104434

loc_8C0CEC7C:
#data bank03.loc_8c034C38


loc_8C0CEC80:
mova @(loc_8C0CED90,pc),r0  ; r0 init to 0x8C0CED90
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0CED86,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
fmov.s @r0,fr4
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b @(0x04,r14),r0
mov.w @(loc_8C0CED86,pc),r2 ; r2 set to 0xDc
add 0x01,r0 ; r0 set to 0x8C0CED91
mov.l @(loc_8C0CED94,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0CED88,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CED8A,pc),r0 ; r0 set to 0x12c
mov 0x01,r13 ; r13 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r13,@(r0,r14)
mov.b @(0x02,r4),r0
mov.b r0,@(0x02,r14)
mov.b @(0x01,r4),r0
mov.b r0,@(0x01,r14)
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
fmov.s fr3,@(r0,r14)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r4),fr3
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CED8C,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r4),r3
mov.b r3,@(r0,r14)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r4),r3
mov r4,r2
add 0x50,r2
mov.b r3,@(r0,r14)
mov.l @(loc_8C0CED98,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x0D,r3 ; r3 set to 0x0d
mov.b r2,@(r0,r14)
mov.w @(loc_8C0CED8A,pc),r0 ; r0 set to 0x12c
mov.b r13,@(r0,r14)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14)
mov.w @(loc_8C0CED8E,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r14)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CED8E,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CED1e
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0CED9C,pc),r3 ; r3 set to 0x8C26A5A0
fmov.s @r3,fr3 ; r3 ??	
bra loc_8C0CED24
fsub fr4,fr3

loc_8C0CED1E:
mov.l @(loc_8C0CEDA0,pc),r2 ; r2 set to 0x8C26A5A4
fmov.s @r2,fr3
fadd fr4,fr3

loc_8C0CED24:
mov.l @(loc_8C0CEDA8,pc),r3 ; r3 set to 0x8C26A5A8, r3 set to 0x8C26A5A8
fmov.s fr3,@(r0,r14)
mova @(loc_8C0CEDA4,pc),r0  ; r0 init to 0x8C0CEDA4, r0 init to 0x8C0CEDA4
fmov.s @r3,fr2 ; r2 ??	
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fldi0 fr4
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14)
mov.w @(loc_8C0CED8E,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0CED4c
mova @(loc_8C0CEDAC,pc),r0  ; r0 set to 0x8C0CEDAC, r0 set to 0x8C0CEDAc
bra loc_8C0CED50
fmov.s @r0,fr2

loc_8C0CED4C:
mova @(loc_8C0CEDB0,pc),r0  ; r0 init to 0x8C0CEDB0
fmov.s @r0,fr2

loc_8C0CED50:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0CEDB8,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
fmov.s fr2,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r14)
mova @(loc_8C0CEDB4,pc),r0  ; r0 set to 0x8C0CEDB4, r0 set to 0x8C0CEDB4
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
fmov.s fr3,@(r0,r14)
mov 0x10,r0 ; r0 set to 0x10, r0 set to 0x10
mov.w r0,@(0x1C,r14)
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
jsr @r3
mov r6,r5 ; r5 set to 0x02, r5 set to 0x02
mov.l @(loc_8C0CEDBC,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
jsr @r2
mov r14,r4
mov.b r13,@r14
mov 0x0B,r6 ; r6 set to 0x0B, r6 set to 0x0b
lds.l @r15+,pr
mov.l @(loc_8C0CEDC0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0CED86:
#data 0x00Dc

loc_8C0CED88:
#data 0x00C0

loc_8C0CED8A:
#data 0x012c

loc_8C0CED8C:
#data 0x01A3

loc_8C0CED8E:
#data 0x0130

#align4
loc_8C0CED90:
#data 0xC212AAAa

#align4
loc_8C0CED94:
#data bank12.loc_8c129560

loc_8C0CED98:
#data bank12.loc_8c1294C8

loc_8C0CED9C:
#data 0x8C26A5A0

#align4
loc_8C0CEDA0:
#data 0x8C26A5A4

#align4
loc_8C0CEDA4:
#data 0x42092492

#align4
loc_8C0CEDA8:
#data 0x8C26A5A8

#align4
loc_8C0CEDAC:
#data 0x4130AAAa

#align4
loc_8C0CEDB0:
#data 0xC130AAAa

#align4
loc_8C0CEDB4:
#data 0xBF4DB6Db

#align4
loc_8C0CEDB8:
#data bank03.loc_8c03544c

loc_8C0CEDBC:
#data bank10.loc_8c104434

loc_8C0CEDC0:
#data bank03.loc_8c034C38


loc_8C0CEDC4:
mova @(loc_8C0CEEC8,pc),r0  ; r0 init to 0x8C0CEEC8
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C0CEEBE,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
fmov.s @r0,fr4
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b @(0x04,r14),r0
mov.w @(loc_8C0CEEBE,pc),r2 ; r2 set to 0xDc
add 0x01,r0 ; r0 set to 0x8C0CEEC9
mov.l @(loc_8C0CEECC,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0CEEC0,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CEEC2,pc),r0 ; r0 set to 0x12c
mov 0x01,r13 ; r13 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r13,@(r0,r14)
mov.b @(0x02,r4),r0
mov.b r0,@(0x02,r14)
mov.b @(0x01,r4),r0
mov.b r0,@(0x01,r14)
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
fmov.s fr3,@(r0,r14)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r4),fr3
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CEEC4,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r4),r3
mov.b r3,@(r0,r14)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r4),r3
mov r4,r2
add 0x50,r2
mov.b r3,@(r0,r14)
mov.l @(loc_8C0CEED0,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x07,r3 ; r3 set to 0x07
mov.b r2,@(r0,r14)
mov.w @(loc_8C0CEEC2,pc),r0 ; r0 set to 0x12c
mov.b r13,@(r0,r14)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14)
mov.w @(loc_8C0CEEC6,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r14)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CEEC6,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CEE62
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0CEED4,pc),r3 ; r3 set to 0x8C26A5A0
fmov.s @r3,fr3 ; r3 ??	
bra loc_8C0CEE68
fsub fr4,fr3

loc_8C0CEE62:
mov.l @(loc_8C0CEED8,pc),r2 ; r2 set to 0x8C26A5A4
fmov.s @r2,fr3
fadd fr4,fr3

loc_8C0CEE68:
mov.l @(loc_8C0CEEDC,pc),r1 ; r1 set to 0x41892492, r1 set to 0x41892492
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
lds r1,fpul
fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
fldi0 fr4
fsts fpul,fr3
fsub fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14)
mov.w @(loc_8C0CEEC6,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0CEE90
mova @(loc_8C0CEEE0,pc),r0  ; r0 set to 0x8C0CEEE0, r0 set to 0x8C0CEEE0
bra loc_8C0CEE94
fmov.s @r0,fr2

loc_8C0CEE90:
mova @(loc_8C0CEEE4,pc),r0  ; r0 init to 0x8C0CEEE4
fmov.s @r0,fr2

loc_8C0CEE94:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
mov.l @(loc_8C0CEEE8,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
fmov.s fr2,@(r0,r14)
mov 0x05,r0 ; r0 set to 0x05, r0 set to 0x05
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
mov.w r0,@(0x1C,r14)
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
jsr @r3
mov r6,r5 ; r5 set to 0x02, r5 set to 0x02
mov.l @(loc_8C0CEEEC,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
jsr @r2
mov r14,r4
mov.b r13,@r14
mov 0x07,r6 ; r6 set to 0x07, r6 set to 0x07
lds.l @r15+,pr
mov.l @(loc_8C0CEEF0,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov r14,r4
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0CEEBE:
#data 0x00Dc

loc_8C0CEEC0:
#data 0x00C0

loc_8C0CEEC2:
#data 0x012c

loc_8C0CEEC4:
#data 0x01A3

loc_8C0CEEC6:
#data 0x0130

#align4
loc_8C0CEEC8:
#data 0x42555555

#align4
loc_8C0CEECC:
#data bank12.loc_8c129560

loc_8C0CEED0:
#data bank12.loc_8c1294C8

loc_8C0CEED4:
#data 0x8C26A5A0

#align4
loc_8C0CEED8:
#data 0x8C26A5A4

#align4
loc_8C0CEEDC:
#data 0x41892492

#align4
loc_8C0CEEE0:
#data 0x41D2AAAa

#align4
loc_8C0CEEE4:
#data 0xC1D2AAAa

#align4
loc_8C0CEEE8:
#data bank03.loc_8c03544c

loc_8C0CEEEC:
#data bank10.loc_8c104434

loc_8C0CEEF0:
#data bank03.loc_8c034C38


loc_8C0CEEF4:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r8,@-r15
mov.w @(loc_8C0CEFFA,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0CEFFA,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0CF004,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0CEFFC,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CEFFE,pc),r0 ; r0 set to 0x12c
mov 0x01,r13 ; r13 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r13,@(r0,r14)
mov.b @(0x02,r4),r0
mov.b r0,@(0x02,r14)
mov.b @(0x01,r4),r0
mov.b r0,@(0x01,r14)
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
fmov.s fr3,@(r0,r14)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r4),fr3
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CF000,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r4),r3
mov.b r3,@(r0,r14)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r4),r3
mov r4,r2
add 0x50,r2
mov.b r3,@(r0,r14)
mov.l @(loc_8C0CF008,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x0E,r3 ; r3 set to 0x0e
mov.b r2,@(r0,r14)
mov.w @(loc_8C0CEFFE,pc),r0 ; r0 set to 0x12c
mov.b r13,@(r0,r14)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14)
mov.w @(loc_8C0CF002,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r14)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CF002,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CEF90
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0CF00C,pc),r3 ; r3 set to 0x8C26A5A0
fmov.s @r3,fr3 ; r3 ??	
bra loc_8C0CEF94
nop

loc_8C0CEF90:
mov.l @(loc_8C0CF010,pc),r2 ; r2 set to 0x8C26A5A4
fmov.s @r2,fr3

loc_8C0CEF94:
mov r0,r8
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CF002,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CEFAa
add r14,r8
mov.l @(loc_8C0CF014,pc),r1 ; r1 set to 0x42D1FFFF, r1 set to 0x42D1FFFf
lds r1,fpul
bra loc_8C0CEFB0
fsts fpul,fr3

loc_8C0CEFAA:
mov.l @(loc_8C0CF018,pc),r2 ; r2 set to 0xC2D1FFFf
lds r2,fpul
fsts fpul,fr3

loc_8C0CEFB0:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mova @(loc_8C0CF01C,pc),r0  ; r0 init to 0x8C0CF01C, r0 init to 0x8C0CF01c
mov.l @(loc_8C0CF020,pc),r3 ; r3 set to 0x8C26A5A8, r3 set to 0x8C26A5A8
mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03
fadd fr3,fr2
fldi0 fr4
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
fmov.s fr2,@r8
fmov.s @r3,fr2
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0CF028,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14)
mova @(loc_8C0CF024,pc),r0  ; r0 set to 0x8C0CF024, r0 set to 0x8C0CF024
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr2,@(r0,r14)
jsr @r3
mov r6,r5 ; r5 set to 0x03, r5 set to 0x03
mov.l @(loc_8C0CF02C,pc),r2 ; r2 set to 0x8C104434, r2 set to 0x8C104434
jsr @r2
mov r14,r4
mov.b r13,@r14
mov 0x0A,r6 ; r6 set to 0x0A, r6 set to 0x0a
lds.l @r15+,pr
mov.l @(loc_8C0CF030,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov r14,r4
mov.l @r15+,r8
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C0CEFFA:
#data 0x00Dc

loc_8C0CEFFC:
#data 0x00C0

loc_8C0CEFFE:
#data 0x012c

loc_8C0CF000:
#data 0x01A3

loc_8C0CF002:
#data 0x0130

#align4
loc_8C0CF004:
#data bank12.loc_8c129560

loc_8C0CF008:
#data bank12.loc_8c1294C8

loc_8C0CF00C:
#data 0x8C26A5A0

#align4
loc_8C0CF010:
#data 0x8C26A5A4

#align4
loc_8C0CF014:
#data 0x42D1FFFf

#align4
loc_8C0CF018:
#data 0xC2D1FFFf

#align4
loc_8C0CF01C:
#data 0x42092492

#align4
loc_8C0CF020:
#data 0x8C26A5A8

#align4
loc_8C0CF024:
#data 0xBFE24924

#align4
loc_8C0CF028:
#data bank03.loc_8c03544c

loc_8C0CF02C:
#data bank10.loc_8c104434

loc_8C0CF030:
#data bank03.loc_8c034C38


loc_8C0CF034:
mov.l r14,@-r15
mov r4,r14
mov.l r8,@-r15
mov.w @(loc_8C0CF12E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0CF12E,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0CF138,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0CF130,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CF132,pc),r0 ; r0 set to 0x12c
mov 0x01,r5 ; r5 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r5,@(r0,r14)
mov.b @(0x02,r4),r0
mov.b r0,@(0x02,r14)
mov.b @(0x01,r4),r0
mov.b r0,@(0x01,r14)
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
fmov.s fr3,@(r0,r14)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r4),fr3
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CF134,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r4),r3
mov.b r3,@(r0,r14)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r4),r3
mov r4,r2
add 0x50,r2
mov.b r3,@(r0,r14)
mov.l @(loc_8C0CF13C,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x0D,r3 ; r3 set to 0x0d
mov.b r2,@(r0,r14)
mov.w @(loc_8C0CF132,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14)
mov.w @(loc_8C0CF136,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r14)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CF136,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CF0Ce
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0CF140,pc),r3 ; r3 set to 0x8C26A5A0
fmov.s @r3,fr3 ; r3 ??	
bra loc_8C0CF0D2
nop

loc_8C0CF0CE:
mov.l @(loc_8C0CF144,pc),r2 ; r2 set to 0x8C26A5A4
fmov.s @r2,fr3

loc_8C0CF0D2:
mov r0,r8
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CF136,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CF0E8
add r14,r8
mov.l @(loc_8C0CF148,pc),r1 ; r1 set to 0x42D1FFFF, r1 set to 0x42D1FFFf
lds r1,fpul
bra loc_8C0CF0Ee
fsts fpul,fr3

loc_8C0CF0E8:
mov.l @(loc_8C0CF14C,pc),r2 ; r2 set to 0xC2D1FFFf
lds r2,fpul
fsts fpul,fr3

loc_8C0CF0EE:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mova @(loc_8C0CF150,pc),r0  ; r0 init to 0x8C0CF150, r0 init to 0x8C0CF150
mov.l @(loc_8C0CF154,pc),r3 ; r3 set to 0x8C26A5A8, r3 set to 0x8C26A5A8
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
fadd fr3,fr2
fldi0 fr4
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
fmov.s fr2,@r8
fmov.s @r3,fr2
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0CF15C,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14)
mova @(loc_8C0CF158,pc),r0  ; r0 set to 0x8C0CF158, r0 set to 0x8C0CF158
fmov.s @r0,fr2
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr2,@(r0,r14)
jsr @r3
mov r6,r5 ; r5 set to 0x02, r5 set to 0x02
lds.l @r15+,pr
mov.l @(loc_8C0CF160,pc),r2 ; r2 set to 0x8C034C38, r2 set to 0x8C034C38
mov 0x09,r6 ; r6 set to 0x09, r6 set to 0x09
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov r14,r4
mov.l @r15+,r8
jmp @r2
mov.l @r15+,r14

loc_8C0CF12E:
#data 0x00Dc

loc_8C0CF130:
#data 0x00C0

loc_8C0CF132:
#data 0x012c

loc_8C0CF134:
#data 0x01A3

loc_8C0CF136:
#data 0x0130

#align4
loc_8C0CF138:
#data bank12.loc_8c129560

loc_8C0CF13C:
#data bank12.loc_8c1294C8

loc_8C0CF140:
#data 0x8C26A5A0

#align4
loc_8C0CF144:
#data 0x8C26A5A4

#align4
loc_8C0CF148:
#data 0x42D1FFFf

#align4
loc_8C0CF14C:
#data 0xC2D1FFFf

#align4
loc_8C0CF150:
#data 0x42092492

#align4
loc_8C0CF154:
#data 0x8C26A5A8

#align4
loc_8C0CF158:
#data 0xBF76DB6e

#align4
loc_8C0CF15C:
#data bank03.loc_8c03544c

loc_8C0CF160:
#data bank03.loc_8c034C38


loc_8C0CF164:
mov.l r14,@-r15
mov r4,r14
mov.l r8,@-r15
mov.w @(loc_8C0CF25E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0CF25E,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0CF26C,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0CF260,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CF262,pc),r0 ; r0 set to 0x12c
mov 0x01,r5 ; r5 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r5,@(r0,r14)
mov.b @(0x02,r4),r0
mov.b r0,@(0x02,r14)
mov.b @(0x01,r4),r0
mov.b r0,@(0x01,r14)
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
fmov.s fr3,@(r0,r14)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r4),fr3
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CF264,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r4),r3
mov.b r3,@(r0,r14)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r4),r3
mov r4,r2
add 0x50,r2
mov.b r3,@(r0,r14)
mov.l @(loc_8C0CF270,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x0F,r3 ; r3 set to 0x0f
mov.b r2,@(r0,r14)
mov.w @(loc_8C0CF262,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14)
mov.w @(loc_8C0CF266,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r14)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CF266,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CF1Fe
mov 0x34,r0 ; r0 set to 0x34
mov.l @(loc_8C0CF274,pc),r3 ; r3 set to 0x8C26A5A0
fmov.s @r3,fr3 ; r3 ??	
bra loc_8C0CF202
nop

loc_8C0CF1FE:
mov.l @(loc_8C0CF278,pc),r2 ; r2 set to 0x8C26A5A4
fmov.s @r2,fr3

loc_8C0CF202:
mov r0,r8
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CF266,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CF218
add r14,r8
mov.l @(loc_8C0CF27C,pc),r1 ; r1 set to 0x4330AAAA, r1 set to 0x4330AAAa
lds r1,fpul
bra loc_8C0CF21e
fsts fpul,fr3

loc_8C0CF218:
mov.l @(loc_8C0CF280,pc),r2 ; r2 set to 0xC330AAAa
lds r2,fpul
fsts fpul,fr3

loc_8C0CF21E:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mova @(loc_8C0CF284,pc),r0  ; r0 init to 0x8C0CF284, r0 init to 0x8C0CF284
fldi0 fr4
mov 0x02,r6 ; r6 set to 0x02, r6 set to 0x02
fadd fr3,fr2
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
fmov.s fr2,@r8
fmov.s @r0,fr3
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr2
mov.l @(loc_8C0CF288,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14)
mov.w @(loc_8C0CF268,pc),r0 ; r0 set to 0x108, r0 set to 0x108
fmov.s fr4,@(r0,r14)
mov 0x1E,r0 ; r0 set to 0x1E, r0 set to 0x1e
mov.w r0,@(0x1C,r14)
jsr @r3
mov r6,r5 ; r5 set to 0x02, r5 set to 0x02
lds.l @r15+,pr
mov.l @(loc_8C0CF28C,pc),r2 ; r2 set to 0x8C034C38, r2 set to 0x8C034C38
mov 0x0C,r6 ; r6 set to 0x0C, r6 set to 0x0c
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov r14,r4
mov.l @r15+,r8
jmp @r2
mov.l @r15+,r14

loc_8C0CF25E:
#data 0x00Dc

loc_8C0CF260:
#data 0x00C0

loc_8C0CF262:
#data 0x012c

loc_8C0CF264:
#data 0x01A3

loc_8C0CF266:
#data 0x0130

loc_8C0CF268:
#data 0x0108
#data 0x0000

#align4
loc_8C0CF26C:
#data bank12.loc_8c129560

loc_8C0CF270:
#data bank12.loc_8c1294C8

loc_8C0CF274:
#data 0x8C26A5A0

#align4
loc_8C0CF278:
#data 0x8C26A5A4

#align4
loc_8C0CF27C:
#data 0x4330AAAa

#align4
loc_8C0CF280:
#data 0xC330AAAa

#align4
loc_8C0CF284:
#data 0x4226AAAa

#align4
loc_8C0CF288:
#data bank03.loc_8c03544c

loc_8C0CF28C:
#data bank03.loc_8c034C38


loc_8C0CF290:
mov.l r8,@-r15
mov.w @(loc_8C0CF3F0,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CF3FC,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CF3F0,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0CF3F2,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CF3F4,pc),r0 ; r0 set to 0x12c
mov 0x01,r6 ; r6 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r6,@(r0,r4)
mov.b @(0x02,r5),r0
mov.b r0,@(0x02,r4)
mov.b @(0x01,r5),r0
mov.b r0,@(0x01,r4)
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0CF3F6,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r4)
mov.l @(loc_8C0CF400,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x0E,r3 ; r3 set to 0x0e
mov 0x34,r8 ; r8 set to 0x34
mov.b r2,@(r0,r4)
mov.w @(loc_8C0CF3F4,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4)
mov.w @(loc_8C0CF3F8,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r4),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0CF3F8,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0CF328
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0CF404,pc),r1 ; r1 set to 0xC2555555
lds r1,fpul
bra loc_8C0CF32e
fsts fpul,fr3

loc_8C0CF328:
mov.l @(loc_8C0CF408,pc),r2 ; r2 set to 0x42555555
lds r2,fpul
fsts fpul,fr3

loc_8C0CF32E:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0CF40C,pc),r1 ; r1 set to 0x42092492, r1 set to 0x42092492
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fadd fr3,fr2
fldi0 fr4
lds r1,fpul
mov 0x0E,r6 ; r6 set to 0x0E, r6 set to 0x0e
mov.l @(loc_8C0CF410,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
fmov.s fr2,@r8
fmov.s @(r0,r4),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r4)
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r4)
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r8

loc_8C0CF358:
mov.l r8,@-r15
mov.w @(loc_8C0CF3F0,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r4),r0
add r4,r1 ; r1 ??? bc r4 is ???	
mov.l @(loc_8C0CF3FC,pc),r3 ; r3 set to 0x8C129560
add 0x01,r0
mov.w @(loc_8C0CF3F0,pc),r2 ; r2 set to 0xDc
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0CF3F2,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r4),r5
jsr @r3
add r5,r2 ; r2 ??? bc r5 is ???	
mov.w @(loc_8C0CF3F4,pc),r0 ; r0 set to 0x12c
mov 0x01,r6 ; r6 set to 0x01
mov r4,r1
add 0x50,r1
mov.b r6,@(r0,r4)
mov.b @(0x02,r5),r0
mov.b r0,@(0x02,r4)
mov.b @(0x01,r5),r0
mov.b r0,@(0x01,r4)
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r4)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r5),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0CF3F6,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r5),r3
mov.b r3,@(r0,r4)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r5),r2
mov.b r2,@(r0,r4)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r5),r3
mov r5,r2
add 0x50,r2
mov.b r3,@(r0,r4)
mov.l @(loc_8C0CF400,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r5),r2
mov 0x00,r3 ; r3 set to 0x00
mov 0x34,r8 ; r8 set to 0x34
mov.b r2,@(r0,r4)
mov.w @(loc_8C0CF3F4,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r4)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r4)
mov.w @(loc_8C0CF3F8,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r4),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r4),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0CF3F8,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C0CF418
add r4,r8 ; r8 ??? bc r4 is ???	
mov.l @(loc_8C0CF414,pc),r1 ; r1 set to 0x42E95555
lds r1,fpul
bra loc_8C0CF41e
fsts fpul,fr3

loc_8C0CF3F0:
#data 0x00Dc

loc_8C0CF3F2:
#data 0x00C0

loc_8C0CF3F4:
#data 0x012c

loc_8C0CF3F6:
#data 0x01A3

loc_8C0CF3F8:
#data 0x0130
#data 0x0000

#align4
loc_8C0CF3FC:
#data bank12.loc_8c129560

loc_8C0CF400:
#data bank12.loc_8c1294C8

loc_8C0CF404:
#data 0xC2555555

#align4
loc_8C0CF408:
#data 0x42555555

#align4
loc_8C0CF40C:
#data 0x42092492

#align4
loc_8C0CF410:
#data bank03.loc_8c034C38

loc_8C0CF414:
#data 0x42E95555


loc_8C0CF418:
mov.l @(loc_8C0CF568,pc),r2 ; r2 set to 0xC2E95555
lds r2,fpul
fsts fpul,fr3

loc_8C0CF41E:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0CF56C,pc),r1 ; r1 set to 0x414DB6DB, r1 set to 0x414DB6Db
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
fadd fr3,fr2
fldi0 fr4
lds r1,fpul
mov 0x0E,r6 ; r6 set to 0x0E, r6 set to 0x0e
mov.l @(loc_8C0CF570,pc),r3 ; r3 set to 0x8C034C38, r3 set to 0x8C034C38
fmov.s fr2,@r8
fmov.s @(r0,r4),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r4)
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r4)
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r8

loc_8C0CF448:
mov.l r14,@-r15
mov r4,r14
mov.l r8,@-r15
mov.w @(loc_8C0CF55E,pc),r1 ; r1 set to 0xDc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r1 ; r1 ??? bc r14 is ???	
mov.w @(loc_8C0CF55E,pc),r2 ; r2 set to 0xDc
add 0x01,r0
mov.l @(loc_8C0CF574,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0CF560,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r4
jsr @r3
add r4,r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C0CF562,pc),r0 ; r0 set to 0x12c
mov 0x01,r5 ; r5 set to 0x01
mov r14,r1
add 0x50,r1
mov.b r5,@(r0,r14)
mov.b @(0x02,r4),r0
mov.b r0,@(0x02,r14)
mov.b @(0x01,r4),r0
mov.b r0,@(0x01,r14)
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
fmov.s fr3,@(r0,r14)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r4),fr3
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CF564,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r4),r3
mov.b r3,@(r0,r14)
add 0x01,r0 ; r0 set to 0x1A4
mov.b @(r0,r4),r2
mov.b r2,@(r0,r14)
mov 0x30,r0 ; r0 set to 0x30
mov.b @(r0,r4),r3
mov r4,r2
add 0x50,r2
mov.b r3,@(r0,r14)
mov.l @(loc_8C0CF578,pc),r3 ; r3 set to 0x8C1294C8
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov 0x24,r0 ; r0 set to 0x24
mov.b @(r0,r4),r2
mov 0x00,r3 ; r3 set to 0x00
mov 0x34,r8 ; r8 set to 0x34
mov.b r2,@(r0,r14)
mov.w @(loc_8C0CF562,pc),r0 ; r0 set to 0x12c
mov.b r5,@(r0,r14)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14)
mov.w @(loc_8C0CF566,pc),r0 ; r0 set to 0x130
mov.l @(0x18,r14),r2
mov.w @(r0,r2),r3 ; r3 ??? bc r2 is ???	
mov.w r3,@(r0,r14)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x18,r14),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C0CF566,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt/s loc_8C0CF4E4
add r14,r8 ; r8 ??? bc r14 is ???	
mov.l @(loc_8C0CF57C,pc),r1 ; r1 set to 0x41D55555
lds r1,fpul
bra loc_8C0CF4Ea
fsts fpul,fr3

loc_8C0CF4E4:
mov.l @(loc_8C0CF580,pc),r2 ; r2 set to 0xC1D55555
lds r2,fpul
fsts fpul,fr3

loc_8C0CF4EA:
fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C0CF584,pc),r1 ; r1 set to 0x434DB6DB, r1 set to 0x434DB6Db
fadd fr3,fr2
fldi0 fr4
lds r1,fpul
fmov.s fr2,@r8
fmov.s @(r0,r14),fr2
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr4,@(r0,r14)
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r14)
mov.w @(loc_8C0CF566,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0CF516
mova @(loc_8C0CF588,pc),r0  ; r0 set to 0x8C0CF588, r0 set to 0x8C0CF588
bra loc_8C0CF51a
fmov.s @r0,fr2

loc_8C0CF516:
mova @(loc_8C0CF58C,pc),r0  ; r0 init to 0x8C0CF58c
fmov.s @r0,fr2

loc_8C0CF51A:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr2,@(r0,r14)
mov.w @(loc_8C0CF566,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C0CF52c
mova @(loc_8C0CF590,pc),r0  ; r0 set to 0x8C0CF590, r0 set to 0x8C0CF590
bra loc_8C0CF530
fmov.s @r0,fr3

loc_8C0CF52C:
mova @(loc_8C0CF594,pc),r0  ; r0 init to 0x8C0CF594
fmov.s @r0,fr3

loc_8C0CF530:
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
mov.l @(loc_8C0CF5A0,pc),r3 ; r3 set to 0x8C03544C, r3 set to 0x8C03544c
fmov.s fr3,@(r0,r14)
mova @(loc_8C0CF598,pc),r0  ; r0 set to 0x8C0CF598, r0 set to 0x8C0CF598
fmov.s @r0,fr3 ; r3 ??, r3 ??	
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
mov 0x08,r6 ; r6 set to 0x08, r6 set to 0x08
fmov.s fr3,@(r0,r14)
mova @(loc_8C0CF59C,pc),r0  ; r0 set to 0x8C0CF59C, r0 set to 0x8C0CF59c
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
mov 0x01,r7 ; r7 set to 0x01, r7 set to 0x01
fmov.s fr3,@(r0,r14)
jsr @r3
mov 0x04,r5 ; r5 set to 0x04, r5 set to 0x04
lds.l @r15+,pr
mov.l @(loc_8C0CF570,pc),r2 ; r2 set to 0x8C034C38, r2 set to 0x8C034C38
mov 0x0D,r6 ; r6 set to 0x0D, r6 set to 0x0d
mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
mov r14,r4
mov.l @r15+,r8
jmp @r2
mov.l @r15+,r14

loc_8C0CF55E:
#data 0x00Dc

loc_8C0CF560:
#data 0x00C0

loc_8C0CF562:
#data 0x012c

loc_8C0CF564:
#data 0x01A3

loc_8C0CF566:
#data 0x0130

#align4
loc_8C0CF568:
#data 0xC2E95555

#align4
loc_8C0CF56C:
#data 0x414DB6Db

#align4
loc_8C0CF570:
#data bank03.loc_8c034C38

loc_8C0CF574:
#data bank12.loc_8c129560

loc_8C0CF578:
#data bank12.loc_8c1294C8

loc_8C0CF57C:
#data 0x41D55555

#align4
loc_8C0CF580:
#data 0xC1D55555

#align4
loc_8C0CF584:
#data 0x434DB6Db

#align4
loc_8C0CF588:
#data 0x40BAAAAa

#align4
loc_8C0CF58C:
#data 0xC0BAAAAa

#align4
loc_8C0CF590:
#data 0x3ED55555

#align4
loc_8C0CF594:
#data 0xBED55555

#align4
loc_8C0CF598:
#data 0x40092492

#align4
loc_8C0CF59C:
#data 0x3E892492

#align4
loc_8C0CF5A0:
#data bank03.loc_8c03544c


loc_8C0CF5A4:
mov 0x20,r0 ; r0 set to 0x20
mov r4,r3
mov.l r4,@-r15
mov.b @(r0,r3),r2
mov.l @(loc_8C0CF6E8,pc),r0 ; r0 set to 0x8C15C8F0
extu.b r2,r2
shll2 r2
mov.l @(r0,r2),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0CF5B8:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0xD14A53E6
#data 0x84E52F32
#data 0x4008600c
#data 0x430B031e
#data 0x908464E3
#data 0x023C63F2
#data 0x89052228
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34907c

#align4
loc_8C0CF5E8:
#data 0x4F267F04
#data 0x6EF6000b
;----------------------------------------------

loc_8C0CF5F0:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0CF6F0,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
mov.l @(0x18,r14),r0
mov.b @(0x06,r0),r0
extu.b r0,r0
cmp/eq 0x03,r0
bt loc_8C0CF616
mov.b @(0x04,r14),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0CF6E0,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0CF616:
mov.l @(0x18,r14),r2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------

#align4
loc_8C0CF62C:
#data 0x4F222FE6
#data 0x6E437FFc
#data 0xD12F53E6
#data 0x84E52F32
#data 0x4008600c
#data 0x430B031e
#data 0x904A64E3
#data 0x023C63F2
#data 0x89052228
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349042

#align4
loc_8C0CF65C:
#data 0x4F267F04
#data 0x6EF6000b
;----------------------------------------------

loc_8C0CF664:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C0CF6F0,pc),r3 ; r3 set to 0x8C034D8c
jsr @r3
mov r4,r14
mov.l @(0x18,r14),r0
mov.b @(0x06,r0),r0
extu.b r0,r0
cmp/eq 0x03,r0
bt loc_8C0CF68a
mov.b @(0x04,r14),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.w @(loc_8C0CF6E0,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8C0CF68A:
mov.l @(0x18,r14),r2
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------

#align4
loc_8C0CF6A0:
#data 0x6E432FE6
#data 0x2FD6D114
#data 0x84E54F22
#data 0x4008600c
#data 0x430B031e
#data 0x90145DE6
#data 0x600C00Dc
#data 0x8B04881d
#data 0x00DC9010
#data 0x8809600c
#data 0x8905

loc_8C0CF6CA:
#data 0x84E4
#data 0x7001E300
#data 0x900580E4
#data 0x0E34

loc_8C0CF6D6:
#data 0x4F26
#data 0x000B6DF6
#data 0x019F6EF6

loc_8C0CF6E0:
#data 0x012c
#data 0x01D0
#data 0x000001E9

#align4
loc_8C0CF6E8:
#data bank15.loc_8c15c8F0

loc_8C0CF6EC:
#data bank15.loc_8c15c930

loc_8C0CF6F0:
#data bank03.loc_8c034D8c

loc_8C0CF6F4:
#data bank15.loc_8c15c934

loc_8C0CF6F8:
#data bank15.loc_8c15c938

loc_8C0CF6FC:
#data 0x4F222FE6
#data 0x430BD34f
#data 0x52E66E43
#data 0x8426E305
#data 0x3033600c
#data 0x50E68B07
#data 0x600C8406
#data 0x8902880a
#data 0x700184E4
#data 0x80E4

loc_8C0CF722:
#data 0x4F26
#data 0x6EF6000b
;----------------------------------------------

#align4
loc_8C0CF728:
#data 0x4F222FE6
#data 0x430BD344
#data 0x50E66E43
#data 0x600C8406
#data 0x8B028804
#data 0x700184E4
#data 0x80E4

loc_8C0CF742:
#data 0x4F26
#data 0x6EF6000b
;----------------------------------------------

loc_8C0CF748:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0
mov.l @(loc_8C0CF844,pc),r1 ; r1 set to 0x8C15C940
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0CF75A:
#data 0x2FE6
#data 0xD3384F22
#data 0x6E43430b
#data 0x70FF85Ee
#data 0x700181Ee
#data 0x2008600f
#data 0x84E58B04
#data 0x80E57001
#data 0x81EEE008

#align4
loc_8C0CF77C:
#data 0x000B4F26
#data 0x6EF6
;----------------------------------------------

loc_8C0CF782:
#data 0x2FE6
#data 0xD32E4F22
#data 0x6E43430b
#data 0x9053D12e
#data 0xF2E6415a
#data 0xF231F30d
#data 0xF1E6FE27
#data 0xF215F28d
#data 0xFE278B00

#align4
loc_8C0CF7A4:
#data 0x70FF85Ee
#data 0x700181Ee
#data 0x2008600f
#data 0x84E48B02
#data 0x80E47001

#align4
loc_8C0CF7B8:
#data 0x000B4F26
#data 0x6EF6
;----------------------------------------------

loc_8C0CF7BE:
mov r4,r3
mov.l @(loc_8C0CF84C,pc),r1 ; r1 set to 0x8C15C948
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CF7D0:
mov.w @(0x1C,r4),r0
add 0xFF,r0
mov.w r0,@(0x1C,r4)
add 0x01,r0
exts.w r0,r0
cmp/pz r0
bt loc_8C0CF7F8
mov.b @(0x05,r4),r0
add 0x01,r0
mov.b r0,@(0x05,r4)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r4),r3
fmov.s @(r0,r3),fr3
mov 0x00,r3 ; r3 set to 0x00
fmov.s fr3,@(r0,r4)
mov 0x48,r0 ; r0 set to 0x48
mov.l r3,@(r0,r4)
mov.l @(loc_8C0CF840,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop

loc_8C0CF7F8:
mov 0x5C,r1 ; r1 set to 0x5c
mov.w @(loc_8C0CF83A,pc),r3 ; r3 set to 0x2000
add r4,r1 ; r1 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
fmov.s @(r0,r4),fr2
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x48,r0 ; r0 set to 0x48
mov.l @(r0,r4),r2
add r3,r2
rts
mov.l r2,@(r0,r4)
;----------------------------------------------

loc_8C0CF812:
mov.w @(loc_8C0CF83C,pc),r0 ; r0 set to 0x1D0
mov.l @(0x18,r4),r5
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0
bt loc_8C0CF826
mov.b @(0x05,r4),r0
add 0x01,r0
rts
mov.b r0,@(0x05,r4)
;----------------------------------------------

loc_8C0CF826:
mov.w @(loc_8C0CF83E,pc),r0 ; r0 set to 0x143
mov.b @(r0,r4),r3
cmp/pz r3
bf loc_8C0CF834
mov.l @(loc_8C0CF840,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop

loc_8C0CF834:
rts
nop
;----------------------------------------------
#data 0x0108

loc_8C0CF83A:
#data 0x2000

loc_8C0CF83C:
#data 0x01D0

loc_8C0CF83E:
#data 0x0143

#align4
loc_8C0CF840:
#data bank03.loc_8c034D8c

loc_8C0CF844:
#data bank15.loc_8c15c940
#data 0x3D75C28f

#align4
loc_8C0CF84C:
#data bank15.loc_8c15c948


loc_8C0CF850:
mov r4,r3
mov.l @(loc_8C0CF99C,pc),r1 ; r1 set to 0x8C15C950
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CF862:
#data 0x4F22
#data 0xE1607FF4
#data 0xE038314c
#data 0xF246F318
#data 0x314CE16c
#data 0xF427F230
#data 0xF246E060
#data 0xF230F318
#data 0x854EF427
#data 0x814E70Ff
#data 0x600F7001
#data 0x8B064015
#data 0x314CE15c
#data 0xF318E034
#data 0xF230F246
#data 0xF427

loc_8C0CF89E:
#data 0xC740
#data 0xF4085346
#data 0xF336E038
#data 0xF340F246
#data 0x8B19F325
#data 0x70018445
#data 0xE0388045
#data 0xF3365346
#data 0xF340D339
#data 0xE034F437
#data 0xE038F346
#data 0xF346FF3a
#data 0xFF37E004
#data 0xF346E03c
#data 0xFF37E008
#data 0xE534430b
#data 0xE500D232
#data 0x64F3420b

#align4
loc_8C0CF8E4:
#data 0x4F267F0c
#data 0x0009000b
;----------------------------------------------

loc_8C0CF8EC:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0CF994,pc),r0 ; r0 set to 0x1D0
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x16,r0
bt loc_8C0CF90a
mov.b @(0x04,r14),r0
add 0x01,r0
mov.b r0,@(0x04,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8c0cf90a:
mov.w @(loc_8C0CF996,pc),r0
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8c0cf91e
mov 0x00,r3
mov.b r3,@(r0,r14)
mov 0x07,r5
mov.l @(loc_8c0cf9ac,pc),r3
jsr @r3
mov r14,r4

loc_8c0cf91e:
mov.w @(loc_8c0cf998,pc),r0
mov.b @(r0,r14),r2
cmp/pz r2
bf loc_8c0cf930
lds.l @r15+,pr
mov.l @(loc_8c0cf9b0,pc),r2
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8c0cf930:
lds.l @r15+,pr
rts
mov.l @r15+,r14

loc_8C0CF936:
mov r4,r3
mov.l @(loc_8C0CF9B4,pc),r1 ; r1 set to 0x8C15C958
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C0CF948:
#data 0x314CE15c
#data 0xF318E034
#data 0xF230F246
#data 0x854EF427
#data 0x814E70Ff
#data 0x600F7001
#data 0x89024015
#data 0x70018445
#data 0x8045

loc_8C0CF96A:
#data 0x000b
#data 0x0009
;----------------------------------------------

loc_8C0CF96E:
mov.w @(loc_8C0CF994,pc),r0 ; r0 set to 0x1D0
mov.l @(0x18,r4),r5
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0
bt loc_8C0CF982
mov.b @(0x04,r4),r0
add 0x01,r0
rts
mov.b r0,@(0x04,r4)
;----------------------------------------------

loc_8C0CF982:
mov.w @(loc_8C0CF998,pc),r0 ; r0 set to 0x143
mov.b @(r0,r4),r3
cmp/pz r3
bf loc_8C0CF990
mov.l @(loc_8C0CF9B0,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop

loc_8C0CF990:
rts
nop
;----------------------------------------------

loc_8C0CF994:
#data 0x01D0
loc_8c0cf996:
#data 0x0141

loc_8C0CF998:
#data 0x0143
#data 0x0000

#align4
loc_8C0CF99C:
#data bank15.loc_8c15c950
#data 0x41555555

#align4
loc_8C0CF9A4:
#data bank04.loc_8c04223a

loc_8C0CF9A8:
#data bank0f.loc_8c0fD6B0

loc_8C0CF9AC:
#data loc_8c0cE65a

loc_8C0CF9B0:
#data bank03.loc_8c034D8c

loc_8C0CF9B4:
#data bank15.loc_8c15c958


loc_8C0CF9B8:
mov r4,r3
mov.l @(loc_8C0CFAD0,pc),r1 ; r1 set to 0x8C15C960
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CF9CA:
#data 0x4F22
#data 0xE1607FF4
#data 0xE038314c
#data 0xF246F318
#data 0x314CE16c
#data 0xF427F230
#data 0xF246E060
#data 0xF230F318
#data 0x854EF427
#data 0x814E70Ff
#data 0x600F7001
#data 0x8B064015
#data 0x314CE15c
#data 0xF318E034
#data 0xF230F246
#data 0xF427

loc_8C0CFA06:
#data 0x5346
#data 0xF346E038
#data 0xF235F236
#data 0x84458B18
#data 0x80457001
#data 0x5346E038
#data 0xD32DF336
#data 0xE034F437
#data 0xE038F346
#data 0xF346FF3a
#data 0xFF37E004
#data 0xF346E03c
#data 0xFF37E008
#data 0xE534430b
#data 0xE500D226
#data 0x64F3420b

#align4
loc_8C0CFA44:
#data 0x4F267F0c
#data 0x0009000b
;----------------------------------------------

loc_8C0CFA4C:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C0CFAC8,pc),r0 ; r0 set to 0x1D0
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x16,r0
bt loc_8C0CFA6a
mov.b @(0x04,r14),r0
add 0x01,r0
mov.b r0,@(0x04,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;----------------------------------------------

loc_8c0cfa6a:
mov.w @(loc_8C0CFACA,pc),r0
mov.b @(r0,r14),r0
cmp/eq 0x01,r0
bf loc_8c0cfa88
mov.w @(loc_8C0CFACA,pc),r0
mov 0x00,r2
mov.l @(loc_8c0cfadc,pc),r3
mov 0x09,r5
mov.b r2,@(r0,r14)
jsr @r3
mov r14,r4
mov.l @(loc_8c0cfadc,pc),r2
mov 0x08,r5
jsr @r2
mov r14,r4

loc_8c0cfa88:
mov.w @(loc_8C0CFACA,pc),r0
mov.b @(r0,r14),r0
cmp/eq 0x02,r0
bf loc_8c0cfa9e
mov.w @(loc_8C0CFACA,pc),r0
mov 0x00,r2
mov.l @(loc_8c0cfadc,pc),r3
mov 0x0B,r5
mov.b r2,@(r0,r14)
jsr @r3
mov r14,r4

loc_8c0cfa9e:
mov.w @(loc_8C0CFACC,pc),r0
mov.b @(r0,r14),r2
cmp/pz r2
bf loc_8c0cfab0
lds.l @r15+,pr
mov.l @(loc_8c0cfae0,pc),r2
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8c0cfab0:
lds.l @r15+,pr
rts
mov.l @r15+,r14

loc_8C0CFAB6:
mov r4,r3
mov.l @(loc_8C0CFAE4,pc),r1 ; r1 set to 0x8C15C968
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CFAC8:
#data 0x01D0
loc_8c0cfaca:
#data 0x0141
loc_8c0cfacc:
#data 0x00000143

#align4
loc_8C0CFAD0:
#data bank15.loc_8c15c960

loc_8C0CFAD4:
#data bank04.loc_8c04223a

loc_8C0CFAD8:
#data bank0f.loc_8c0fD6B0

loc_8C0CFADC:
#data loc_8c0cE65a

loc_8C0CFAE0:
#data bank03.loc_8c034D8c

loc_8C0CFAE4:
#data bank15.loc_8c15c968

loc_8C0CFAE8:
#data 0xE1602FE6
#data 0x31EC6E43
#data 0x4F22E038
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x85EEFE27
#data 0x81EE70Ff
#data 0x600F7001
#data 0x8B064015
#data 0x31ECE15c
#data 0xF318E034
#data 0xF230F2E6
#data 0xFE27

loc_8C0CFB26:
#data 0xC738
#data 0xF30853E6
#data 0xF236E038
#data 0xF230F1E6
#data 0x8B0FF215
#data 0xE50C84E5
#data 0x7001D333
#data 0x430B80E5
#data 0x52E664E3
#data 0xD331E038
#data 0xF32664E3
#data 0x4F26FE37
#data 0x6EF6432b

#align4
loc_8C0CFB58:
#data 0x000B4F26
#data 0x6EF6
;----------------------------------------------

loc_8C0CFB5E:
mov.w @(loc_8C0CFC00,pc),r0 ; r0 set to 0x1D0
mov.l @(0x18,r4),r5
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0
bt loc_8C0CFB72
mov.b @(0x04,r4),r0
add 0x01,r0
rts
mov.b r0,@(0x04,r4)
;----------------------------------------------

loc_8C0CFB72:
mov.w @(loc_8C0CFC02,pc),r0 ; r0 set to 0x143
mov.b @(r0,r4),r3
cmp/pz r3
bf loc_8C0CFB80
mov.l @(loc_8C0CFC10,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop

loc_8C0CFB80:
rts
nop
;----------------------------------------------

loc_8C0CFB84:
mov r4,r3
mov.l @(loc_8C0CFC14,pc),r1 ; r1 set to 0x8C15C970
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CFB96:
mov.w @(0x1C,r4),r0
add 0xFF,r0
mov.w r0,@(0x1C,r4)
add 0x01,r0
exts.w r0,r0
cmp/pl r0
bt loc_8C0CFBAc
mov.b @(0x05,r4),r0
add 0x01,r0
bra loc_8C0CFBB0
mov.b r0,@(0x05,r4)

loc_8C0CFBAC:
rts
nop
;----------------------------------------------

loc_8C0CFBB0:
mov.w @(loc_8C0CFC00,pc),r0 ; r0 set to 0x1D0
mov.l @(0x18,r4),r5
mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
extu.b r0,r0
cmp/eq 0x16,r0
bt loc_8C0CFBC4
mov.b @(0x04,r4),r0
add 0x01,r0
rts
mov.b r0,@(0x04,r4)
;----------------------------------------------

#align4
loc_8c0cfbc4:
mov.l @(loc_8C0CFC18,pc),r1
mov.w @(loc_8C0CFC04,pc),r0
lds r1,fpul
fmov.s @(r0,r4),fr2
fldi1 fr4
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
fmov.s @(r0,r4),fr2
fcmp/gt fr4,fr2
bf loc_8c0cfbdc
fmov.s fr4,@(r0,r4)

loc_8c0cfbdc:
mov.w @(loc_8c0cfc02,pc),r0
mov.b @(r0,r4),r3
cmp/pz r3
bf loc_8c0cfbea
mov.l @(loc_8c0cfc10,pc),r3
jmp @r3
nop

loc_8c0cfbea:
rts
nop

loc_8C0CFBEE:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0
mov.l @(loc_8C0CFC1C,pc),r1 ; r1 set to 0x8C15C978
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0CFC00:
#data 0x01D0

loc_8C0CFC02:
#data 0x0143
loc_8c0cfc04:
#data 0x00000108
#data 0x43700000

#align4
loc_8C0CFC0C:
#data loc_8c0cE65a

loc_8C0CFC10:
#data bank03.loc_8c034D8c

loc_8C0CFC14:
#data bank15.loc_8c15c970
loc_8c0cfc18:
#data 0x3CF5C28f

#align4
loc_8C0CFC1C:
#data bank15.loc_8c15c978


loc_8C0CFC20:
mov.w @(loc_8C0CFD32,pc),r1 ; r1 set to 0x141
mov.l @(0x18,r4),r0
mov.b @(r0,r1),r0
cmp/eq 0x01,r0
bf loc_8C0CFC70
mov.b @(0x05,r4),r0
add 0x01,r0
mov.b r0,@(0x05,r4)
mov.w @(loc_8C0CFD34,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0CFC3e
mova @(loc_8C0CFD3C,pc),r0  ; r0 set to 0x8C0CFD3c
bra loc_8C0CFC42
fmov.s @r0,fr3

loc_8C0CFC3E:
mova @(loc_8C0CFD40,pc),r0  ; r0 init to 0x8C0CFD40
fmov.s @r0,fr3

loc_8C0CFC42:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C0CFD34,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C0CFC54
mova @(loc_8C0CFD44,pc),r0  ; r0 set to 0x8C0CFD44, r0 set to 0x8C0CFD44
bra loc_8C0CFC58
fmov.s @r0,fr3

#align4
loc_8c0cfc54:
mova @(loc_8C0CFD48,pc),r0
fmov.s @r0,fr3

loc_8c0cfc58:
mov 0x68,r0
fmov.s fr3,@(r0,r4)
mova @(loc_8C0CFD4C,pc),r0
fmov.s @r0,fr3
mov 0x60,r0
fmov.s fr3,@(r0,r4)
mova @(loc_8C0CFD50,pc),r0
fmov.s @r0,fr3
mov 0x6C,r0
fmov.s fr3,@(r0,r4)
mov 0x1E,r0
mov.w r0,@(0x1C,r4)

loc_8C0CFC70:
rts
nop
;----------------------------------------------

#align4
loc_8C0CFC74:
#data 0x70FF854e
#data 0x7001814e
#data 0x2008600f
#data 0x84448B02
#data 0x80447001

#align4
loc_8C0CFC88:
#data 0x314CE15c
#data 0xF318E034
#data 0xE168F246
#data 0xF230314c
#data 0xE05CF427
#data 0xF318F246
#data 0x314CE160
#data 0xF427F230
#data 0xF246E038
#data 0xE16CF318
#data 0xF230314c
#data 0xE060F427
#data 0xF318F246
#data 0x000BF230
#data 0xF427
;----------------------------------------------

loc_8C0CFCC2:
#data 0x2FE6
#data 0x7FFC4F22
#data 0x53E66E43
#data 0x2F32D121
#data 0x600C84E5
#data 0x031E4008
#data 0x64E3430b
#data 0x60F2912b
#data 0x600C001c
#data 0x89028816
#data 0x700184E4
#data 0x80E4

loc_8C0CFCEE:
#data 0x7F04
#data 0x000B4F26
#data 0x6EF6
;----------------------------------------------

loc_8C0CFCF6:
mov.w @(loc_8C0CFD38,pc),r0 ; r0 set to 0x143
mov.b @(r0,r4),r3
cmp/pz r3
bf loc_8C0CFD04
mov.l @(loc_8C0CFD58,pc),r3 ; r3 set to 0x8C034D8c
jmp @r3
nop

loc_8C0CFD04:
rts
nop
;----------------------------------------------

loc_8C0CFD08:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0
mov.l @(loc_8C0CFD5C,pc),r1 ; r1 set to 0x8C15C984
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C0CFD1A:
#data 0x900a
#data 0x8801004c
#data 0x84458B04
#data 0x80457001
#data 0x814EE03c

#align4
loc_8C0CFD2C:
#data 0x432BD30a
#data 0x0009

loc_8C0CFD32:
#data 0x0141

loc_8C0CFD34:
#data 0x0130
#data 0x01D0

loc_8C0CFD38:
#data 0x0143
#data 0x0000

#align4
loc_8C0CFD3C:
#data 0xC17D5555

#align4
loc_8C0CFD40:
#data 0x417D5555

#align4
loc_8C0CFD44:
#data 0xBEA00000
loc_8c0cfd48:
#data 0x3EA00000
loc_8c0cfd4c:
#data 0x40CDB6Db
loc_8c0cfd50:
#data 0xBF092492

#align4
loc_8C0CFD54:
#data bank15.loc_8c15c980

loc_8C0CFD58:
#data bank03.loc_8c034D8c

loc_8C0CFD5C:
#data bank15.loc_8c15c984

loc_8C0CFD60:
#data 0x70FF854e
#data 0x7001814e
#data 0x2008600f
#data 0x84448B02
#data 0x80447001

#align4
loc_8C0CFD74:
#data 0xD314E15c
#data 0xE034314c
#data 0xF246F318
#data 0x314CE168
#data 0xF427F230
#data 0xF246E05c
#data 0xE160F318
#data 0xF230314c
#data 0xE038F427
#data 0xF318F246
#data 0x314CE16c
#data 0xF427F230
#data 0xF246E060
#data 0xF230F318
#data 0xF427432b


loc_8C0CFDB0:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C0CFDC4,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;----------------------------------------------

loc_8C0CFDBE:
mov.l @(loc_8C0CFDCC,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop

loc_8C0CFDC4:
#data 0x012c
#data 0x0000

#align4
loc_8C0CFDC8:
#data bank03.loc_8c034D8c

loc_8C0CFDCC:
#data bank04.loc_8c0450C0

loc_8C0CFDD0:
#data 0x7FFC4F22
#data 0xE503D34f
#data 0xE6002F42
#data 0x6463430b
#data 0x8D492008
#data 0xD34C6403
#data 0x908B918c
#data 0x314C1434
#data 0xD34A62F2
#data 0x320C1426
#data 0x70E4430b
#data 0xE1019083
#data 0x61430414
#data 0x71505046
#data 0x80428402
#data 0x84015046
#data 0xE0508041
#data 0xF3365346
#data 0xE054F437
#data 0xF3365346
#data 0x9071F437
#data 0x023C5346
#data 0x70010424
#data 0x023C5346
#data 0xE0300424
#data 0x023C5346
#data 0x52460424
#data 0x7250D338
#data 0xE00C430b
#data 0xE0245146
#data 0xE500925f
#data 0x0434031c
#data 0x0425E026
#data 0x9059E320
#data 0x0434E224
#data 0x043470Ff
#data 0x04247003
#data 0x042470Ff
#data 0x00096023
#data 0x60530454
#data 0x80440009
#data 0x04549047

#align4
loc_8C0CFE78:
#data 0x4F267F04
#data 0x6043000b
;----------------------------------------------

loc_8C0CFE80:
mov r4,r3
mov.l @(loc_8C0CFF24,pc),r1 ; r1 set to 0x8C15C98c
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0CFE92:
mov.l r14,@-r15
mov 0x00,r6 ; r6 set to 0x00
mov 0x48,r0 ; r0 set to 0x48
mov r4,r14
mov.l r13,@-r15
mov 0x04,r13 ; r13 set to 0x04
mov.w @(loc_8C0CFF0E,pc),r5 ; r5 set to 0xCc
sts.l pr,@-r15
mov.l @(0x18,r14),r4
add r14,r5 ; r5 ??? bc r14 is ???	
mov.l r6,@(r0,r14)
mov.w @(loc_8C0CFF10,pc),r0 ; r0 set to 0x159
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x05,r0
bt/s loc_8C0CFECc
mov 0x01,r7 ; r7 set to 0x01
cmp/eq 0x06,r0
bt loc_8C0CFF28
cmp/eq 0x0B,r0
bt loc_8C0CFF4e
cmp/eq 0x18,r0
bt loc_8C0CFF7c
cmp/eq 0x0F,r0
bf loc_8C0CFEC8
bra loc_8C0CFFCe
nop

loc_8C0CFEC8:
bra loc_8C0CFFFc
nop

loc_8C0CFECC:
mov.w @(loc_8C0CFF12,pc),r0 ; r0 set to 0x158
mov.w @(r0,r4),r3
add 0x01,r0 ; r0 set to 0x159
mov.w r3,@r5
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
mov.b r0,@(0x01,r5)
mov.w @(loc_8C0CFF12,pc),r0 ; r0 set to 0x158
mov.b @(r0,r4),r3
mov.b r3,@r5
mov.b @(0x04,r14),r0
add 0x01,r0 ; r0 set to 0x159
mov.b r0,@(0x04,r14)
mov r6,r0 ; r0 ??? bc r6 is ???	
nop
mov.b r0,@(0x05,r14)
mov.w @(loc_8C0CFF06,pc),r0 ; r0 set to 0x12c
mov.b r6,@(r0,r14)
add 0x2C,r0 ; r0 set to 0x158
mov.b @(r0,r4),r3
extu.b r3,r3
cmp/ge r13,r3
bf loc_8C0CFEFe
mov 0x21,r0 ; r0 set to 0x21
bra loc_8C0CFFFc
mov.b r7,@(r0,r14)

loc_8C0CFEFE:
mov 0x21,r0 ; r0 set to 0x21
bra loc_8C0CFFFc
mov.b r6,@(r0,r14)
#data 0x00Dc

loc_8C0CFF06:
#data 0x012c
#data 0x140001A3
#data 0x013d

loc_8C0CFF0E:
#data 0x00Cc

loc_8C0CFF10:
#data 0x0159

loc_8C0CFF12:
#data 0x0158

#align4
loc_8C0CFF14:
#data bank04.loc_8c044F12

loc_8C0CFF18:
#data loc_8c0cFE80

loc_8C0CFF1C:
#data bank12.loc_8c129560

loc_8C0CFF20:
#data bank12.loc_8c1294C8

loc_8C0CFF24:
#data bank15.loc_8c15c98c


loc_8C0CFF28:
mov 0x21,r0 ; r0 set to 0x21
mov 0x02,r2 ; r2 set to 0x02
mov.b r2,@(r0,r14)
mov.w @(loc_8C0D0034,pc),r0 ; r0 set to 0x158
mov.w @(r0,r4),r3
add 0x01,r0 ; r0 set to 0x159
mov.w r3,@r5
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
mov.b r0,@(0x01,r5)
mov.w @(loc_8C0D0034,pc),r0 ; r0 set to 0x158
mov.b @(r0,r4),r3
mov.b r3,@r5
mov.b @(0x04,r14),r0
add 0x01,r0 ; r0 set to 0x159
mov.b r0,@(0x04,r14)
mov r6,r0 ; r0 ??? bc r6 is ???	
nop
bra loc_8C0CFF76
mov.b r0,@(0x05,r14)

loc_8c0cff4e:
mov.w @(loc_8c0d0034,pc),r0
mov.b @(r0,r4),r0
extu.b r0,r0
cmp/eq 0x02,r0
bf loc_8c0cfffc
mov 0x21,r0
mov 0x03,r7
mov.b r7,@(r0,r14)
mov.w @(loc_8c0d0034,pc),r0
mov.w @(r0,r4),r3
mov.w r3,@r5
mov.b @(0x04,r14),r0
add 0x01,r0
mov.b r0,@(0x04,r14)
mov r7,r0
nop
mov.b r0,@(0x05,r14)
mov r6,r0
nop
mov.b r0,@(0x06,r14)

loc_8C0CFF76:
mov.w @(loc_8C0D0036,pc),r0 ; r0 set to 0x12c
bra loc_8C0CFFFc
mov.b r6,@(r0,r14)

loc_8C0CFF7C:
mov.w @(loc_8C0D0034,pc),r0 ; r0 set to 0x158
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x01,r0
bf loc_8C0CFFFc
mov 0x21,r0 ; r0 set to 0x21
mov.b r13,@(r0,r14)
mov.w @(loc_8C0D0034,pc),r0 ; r0 set to 0x158
mov.w @(r0,r4),r3
add 0x01,r0 ; r0 set to 0x159
mov.w r3,@r5
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
mov.b r0,@(0x01,r5)
mov.w @(loc_8C0D0034,pc),r0 ; r0 set to 0x158
mov.b @(r0,r4),r3
mov.b r3,@r5
mov.b @(0x04,r14),r0
add 0x01,r0 ; r0 set to 0x159
mov.b r0,@(0x04,r14)
mov r7,r0 ; r0 ??? bc r7 is ???	
nop
mov.b r0,@(0x05,r14)
mov.w @(loc_8C0D0036,pc),r0 ; r0 set to 0x12c
mov.b r7,@(r0,r14)
bsr bank0d.loc_8C0D050c
mov r14,r5
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r6
mov 0x1B,r5 ; r5 set to 0x1b
mov.l @(loc_8C0D0038,pc),r0 ; r0 set to 0x8C13B08c
extu.b r6,r6
mov r6,r3
shll2 r3
shll r6
add r3,r6
mov.l @(loc_8C0D003C,pc),r3 ; r3 set to 0x8C034C38
mov.b @(r0,r6),r6
jsr @r3
mov r14,r4
bra loc_8C0CFFFc
nop

loc_8c0cffce:
mov.w @(loc_8c0d0034,pc),r0
mov.b @(r0,r4),r0
extu.b r0,r0
cmp/eq 0x05,r0
bf loc_8c0cfffc
mov 0x21,r0
mov 0x05,r2
mov.b r2,@(r0,r14)
mov.w @(loc_8c0d0034,pc),r0
mov.w @(r0,r4),r3
add 0x01,r0
mov.w r3,@r5
mov.b @(r0,r4),r0
mov.b r0,@(0x01,r5)
mov.w @(loc_8c0d0034,pc),r0
mov.b @(r0,r4),r3
mov.b r3,@r5
mov.b @(0x04,r14),r0
add 0x01,r0
mov.b r0,@(0x04,r14)
mov r13,r0
nop
mov.b r0,@(0x05,r14)

loc_8C0CFFFC:
lds.l @r15+,pr
mov r14,r4
mov.l @r15+,r13
bra bank0d.loc_8c0d056a
mov.l @r15+,r14

loc_8C0D0006:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C0D0040,pc),r1 ; r1 set to 0x8C15C99c
sts.l pr,@-r15
mov.b @(0x05,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
nop
lds.l @r15+,pr
mov r14,r4
bra bank0d.loc_8c0d056a
mov.l @r15+,r14

loc_8C0D0022:
mov r4,r3
mov.l @(loc_8C0D0044,pc),r1 ; r1 set to 0x8C15C9B0
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C0D0034:
#data 0x0158

loc_8C0D0036:
#data 0x012c

#align4
loc_8C0D0038:
#data bank13.loc_8c13B08c

loc_8C0D003C:
#data bank03.loc_8c034C38

loc_8C0D0040:
#data bank15.loc_8c15c99c

loc_8C0D0044:
#data bank15.loc_8c15c9B0