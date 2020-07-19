loc_8c070260:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x128,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x120,PC),r2
	add 0x01,r0
	mov.l @(0x12C,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x11A,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x116,PC),r0
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
	mov.w @(0xFA,PC),r0
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
	mov.l @(0xF4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x00,r2
	mov.w @(0xCE,PC),r0
	mov.l @(0xE0,PC),r3
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r5
	extu.b r5,r5
	shll r5
	shll r5
	add r3,r5
	mov.w @(0x2,r5),r0
	mov.w @r5,r4
	mov r0,r5
	mova @(0xBC,PC),r0
	fmov @r0,fr4
	shll16 r4
	shll16 r5
	lds r4,fpul
	mova @(0xB8,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	float fpul,fr3
	lds r5,fpul
	fmul fr2,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	float fpul,fr3
	mova @(0xA8,PC),r0
	fmov @r0,fr1
	mov 0x60,r0
	fmul fr1,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf.s loc_8c07032e
	mov 0x13,r6
	mov.w @(0x74,PC),r0
	mov 0x01,r2
	mov.w @(r0,r14),r1
	xor r2,r1
	mov.w r1,@(r0,r14)

loc_8c07032e:
	mov.l @(0x8C,PC),r3
	mov 0x17,r5
	jsr @r3
	mov r14,r4
	mov r13,r5
	mov 0x00,r0
	mov.w r0,@(0x1C,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14
	mov.w @(0x56,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt.s loc_8c07035e
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	bra loc_8c070424
	mov.l @r15+,r14

loc_8c07035e:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x5C,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c07036e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.w @(0x24,PC),r4
	mov r5,r13
	add r13,r4
	mov.b @r4,r3
	tst r3,r3
	bt loc_8c0703c4
	mov.b @(0x4,r14),r0
	mov r13,r5
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	bsr loc_8c070424
	mov r14,r4
	bra loc_8c07041a
	nop

;##############################################
loc_8c070394:
	#data 0x00dc
loc_8c070396:
	#data 0x00c0
loc_8c070398:
	#data 0x012c
loc_8c07039a:
	#data 0x01a3
loc_8c07039c:
	#data 0x0130
loc_8c07039e:
	#data 0x0159
loc_8c0703a0:
	#data 0x02a4
	#align4
loc_8c0703a4:
	#data bank12.loc_8c129560
loc_8c0703a8:
	#data bank12.loc_8c1294c8
loc_8c0703ac:
	#data bank15.loc_8c1532e0
loc_8c0703b0:
	#data 0x47800000
loc_8c0703b4:
	#data 0x3fd55555
loc_8c0703b8:
	#data 0x40092492
loc_8c0703bc:
	#data bank03.loc_8c034e8c
loc_8c0703c0:
	#data bank15.loc_8c153340

;==============================================
loc_8c0703c4:
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov 0x5C,r1
	add r14,r1
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x60,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	tst 0x0F,r0
	bf loc_8c070414
	mov 0x34,r0
	mov r15,r4
	fmov @(r0,r14),fr3
	mov 0x38,r0
	mov.l @(0x3C,PC),r3
	fmov fr3,@r4
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	jsr @r3
	mov r13,r4

loc_8c070414:
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)

loc_8c07041a:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c070424:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xC,PC),r0
	rts
	mov.b r3,@(r0,r4)

loc_8c070432:
	mov.l @(0x10,PC),r3
	mov 0x00,r2
	mov.w @(0x2,PC),r0
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07043c:
	#data 0x012c
	#align4
loc_8c070440:
	#data bank10.loc_8c10491c
loc_8c070444:
	#data bank04.loc_8c0450c0

;==============================================
;Unused
loc_8c070448:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x158,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c07048e
	mov r0,r4
	mov.w @(0x138,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0x144,PC),r3
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

loc_8c07048e:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c070496:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.l @(0x110,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0704d8
	mov r0,r4
	mov.w @(0xEC,PC),r2
	mov 0x26,r0
	mov.l @(0xFC,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c0704d8:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0704e4:
	mov.l r14,@-r15
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(0xCC,PC),r0
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0704fa:
	mov r4,r3
	mov.l @(0xC0,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c07050c:
	mov.w @(0x98,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0xAC,PC),r3
	add 0x01,r0
	mov.w @(0x8C,PC),r2
	mov.b r0,@(0x4,r4)
	mov.w @(0x8A,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0x86,PC),r0
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
	mov.w @(0x6A,PC),r0
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
	mov.l @(0x70,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	fldi0 fr4
	mov.b @(r0,r5),r2
	mov 0x00,r3
	mov.b r2,@(r0,r4)
	mov.w @(0x42,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mova @(0x3C,PC),r0
	fmov @r0,fr4
	mov.w @(0x1C,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c0705d4
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r4)
	mova @(0x2C,PC),r0
	bra loc_8c0705e0
	fmov @r0,fr2

;##############################################
loc_8c0705a6:
	#data 0x0d01
loc_8c0705a8:
	#data 0x00dc
loc_8c0705aa:
	#data 0x00c0
loc_8c0705ac:
	#data 0x012c
loc_8c0705ae:
	#data 0x01a3
loc_8c0705b0:
	#data 0x0130
	#align4
loc_8c0705b4:
	#data bank04.loc_8c044f12
loc_8c0705b8:
	#data loc_8c0704e4
loc_8c0705bc:
	#data bank15.loc_8c153344
loc_8c0705c0:
	#data bank15.loc_8c153354
loc_8c0705c4:
	#data bank12.loc_8c129560
loc_8c0705c8:
	#data bank12.loc_8c1294c8
loc_8c0705cc:
	#data 0x42a00000
loc_8c0705d0:
	#data 0xc1200000

;----------------------------------------------
loc_8c0705d4:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mova @(0xA8,PC),r0
	fmov @r0,fr2

loc_8c0705e0:
	mov 0x5C,r0
	fmov fr2,@(r0,r4)
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov.w @(0x96,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0705f6
	bra loc_8c0705f8
	mov 0x18,r0

loc_8c0705f6:
	mov 0x30,r0

loc_8c0705f8:
	mov.w r0,@(0x1E,r4)
	lds.l @r15+,pr

loc_8c0705fc:
	mov r4,r3
	mov.l @(0x8C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c07060e:
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
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07064c
	mov 0x0C,r0
	mov 0x01,r5
	mov.w r0,@(0x1C,r14)
	mov 0x00,r6

loc_8c070648:
	bsr loc_8c070496
	mov r14,r4

loc_8c07064c:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07066a
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c070b80
	mov.l @r15+,r14

loc_8c07066a:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c070672:
	mov r4,r3
	mov.l @(0x18,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c070684:
	#data 0x01a3
	#align4
loc_8c070688:
	#data 0x41200000
loc_8c07068c:
	#data bank15.loc_8c153364
loc_8c070690:
	#data bank15.loc_8c153368

;==============================================
loc_8c070694:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x12E,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x126,PC),r2
	add 0x01,r0
	mov.l @(0x130,PC),r3
	mov.l @(0x14,r14),r4
	mov.b r0,@(0x4,r14)
	mov.w @(0x11E,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x11A,PC),r0
	mov 0x01,r5
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
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
	mov.w @(0xFE,PC),r0
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
	mov.l @(0xF4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov 0x51,r2
	mov.w @(0xD6,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x00,r5
	mov.w @(0xD0,PC),r0
	mov.l @(0xDC,PC),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r5,@(r0,r14)
	add 0xF2,r0
	mov.b r5,@(r0,r14)
	add 0x26,r0
	mov.l r5,@(r0,r14)
	mov 0x42,r5
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xAE,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov 0x34,r0
	mov.l @(0xBC,PC),r2
	fmov @(r0,r4),fr3
	mov 0x15,r5
	mov 0x1C,r6
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x9C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c070764:
	mov 0x24,r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(0x84,PC),r1
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c07077e:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x60,r1
	mov.l @(0x70,PC),r3
	add r14,r1
	mov 0x38,r0
	sts.l pr,@-r15
	fmov @r1,fr3
	mov 0x6C,r1
	fmov @(r0,r14),fr2
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
	mov.l @(0x54,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x2A,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0707c8
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mova @(0x44,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)

loc_8c0707c8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0707ce:
	#data 0x00dc
loc_8c0707d0:
	#data 0x00c0
loc_8c0707d2:
	#data 0x012c
loc_8c0707d4:
	#data 0x01a3
loc_8c0707d6:
	#data 0x01a1
loc_8c0707d8:
	#data 0x019c
loc_8c0707da:
	#data 0x0141
	#align4
loc_8c0707dc:
	#data bank12.loc_8c129560
loc_8c0707e0:
	#data bank12.loc_8c1294c8
loc_8c0707e4:
	#data 0x8c2896b0
loc_8c0707e8:
	#data 0x412b6db6
loc_8c0707ec:
	#data 0xbf2b6db6
loc_8c0707f0:
	#data bank03.loc_8c034e8c
loc_8c0707f4:
	#data bank15.loc_8c153378
loc_8c0707f8:
	#data bank03.loc_8c034dee
loc_8c0707fc:
	#data bank04.loc_8c045748
loc_8c070800:
	#data 0xbf092492

;==============================================
loc_8c070804:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x60,r1
	mov r4,r14
	add r14,r1
	mov.l @(0x128,PC),r3
	mov 0x38,r0
	mov.l r5,@r15
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
	bt loc_8c070848
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c070b80
	mov.l @r15+,r14

loc_8c070848:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c070850:
	mov r4,r3
	mov.l @(0xEC,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c070862:
	mov.w @(0xCA,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0xD8,PC),r3
	add 0x01,r0
	mov.w @(0xBE,PC),r2
	mov.b r0,@(0x4,r4)
	mov.w @(0xBC,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0xB8,PC),r0
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
	mov.w @(0x9C,PC),r0
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
	mov.l @(0x98,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	fldi0 fr4
	mov.b @(r0,r5),r2
	mov 0x00,r3
	mov.b r2,@(r0,r4)
	mov.w @(0x74,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	mov 0x35,r3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov.w @(0x50,PC),r0
	mov.b r3,@(r0,r4)
	add 0xFF,r0
	mov.b r3,@(r0,r4)
	mova @(0x5C,PC),r0
	fmov @r0,fr4
	mov.w @(0x46,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c070906
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r4)
	mova @(0x4C,PC),r0
	bra loc_8c070912
	fmov @r0,fr2

loc_8c070906:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mova @(0x44,PC),r0
	fmov @r0,fr2

loc_8c070912:
	mov 0x5C,r0
	fmov fr2,@(r0,r4)
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r4)
	lds.l @r15+,pr

loc_8c07091e:
	mov r4,r3
	mov.l @(0x34,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c070930:
	#data 0x00dc
loc_8c070932:
	#data 0x00c0
loc_8c070934:
	#data 0x012c
loc_8c070936:
	#data 0x01a3
loc_8c070938:
	#data 0x013f
loc_8c07093a:
	#data 0x0130
	#align4
loc_8c07093c:
	#data bank03.loc_8c034dee
loc_8c070940:
	#data bank15.loc_8c153380
loc_8c070944:
	#data bank12.loc_8c129560
loc_8c070948:
	#data bank12.loc_8c1294c8
loc_8c07094c:
	#data 0x42a00000
loc_8c070950:
	#data 0xc1700000
loc_8c070954:
	#data 0x41700000
loc_8c070958:
	#data bank15.loc_8c153390

;==============================================
loc_8c07095c:
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
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07099a
	mov 0x0A,r0
	mov 0x03,r5
	mov.w r0,@(0x1C,r14)
	mov 0x00,r6
	bsr loc_8c070496
	mov r14,r4

loc_8c07099a:
	mov.l @(0x124,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0709b6
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c070b80
	mov.l @r15+,r14

loc_8c0709b6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0709be:
	mov r4,r3
	mov.l @(0x100,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0709d0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0xD6,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xCE,PC),r2
	add 0x01,r0
	mov.l @(0xE0,PC),r3
	mov.l @(0x14,r14),r4
	mov.b r0,@(0x4,r14)
	mov.w @(0xC6,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xC2,PC),r0
	mov 0x01,r5
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
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
	mov.w @(0xA6,PC),r0
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
	mov.l @(0xA4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov 0x4F,r2
	mov.w @(0x7E,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x00,r5
	mov.w @(0x78,PC),r0
	mov.l @(0x8C,PC),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r5,@(r0,r14)
	add 0xF2,r0
	mov.b r5,@(r0,r14)
	add 0x26,r0
	mov.l r5,@(r0,r14)
	mov 0x42,r5
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x56,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x6C,PC),r2
	fmov @(r0,r4),fr3
	mov 0x16,r5
	mov 0x0B,r6
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mova @(0x50,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x4C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c070aa0:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x5,r14),r0
	mov.l @(0x38,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c070ab2:
	#data 0x00dc
loc_8c070ab4:
	#data 0x00c0
loc_8c070ab6:
	#data 0x012c
loc_8c070ab8:
	#data 0x01a3
loc_8c070aba:
	#data 0x01a1
loc_8c070abc:
	#data 0x019c
	#align4
loc_8c070ac0:
	#data bank03.loc_8c03340c
loc_8c070ac4:
	#data bank15.loc_8c153394
loc_8c070ac8:
	#data bank12.loc_8c129560
loc_8c070acc:
	#data bank12.loc_8c1294c8
loc_8c070ad0:
	#data 0x8c2896b0
loc_8c070ad4:
	#data 0x41cdb6db
loc_8c070ad8:
	#data 0xbfab6db6
loc_8c070adc:
	#data bank03.loc_8c034e8c
loc_8c070ae0:
	#data bank15.loc_8c1533a4

;==============================================
loc_8c070ae4:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x60,r1
	mov.l @(0xB0,PC),r3
	add r14,r1
	mov 0x38,r0
	sts.l pr,@-r15
	fmov @r1,fr3
	mov 0x6C,r1
	fmov @(r0,r14),fr2
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
	mov.l @(0x90,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x82,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c070b2e
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mova @(0x80,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)

loc_8c070b2e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c070b34:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x60,r1
	mov r4,r14
	add r14,r1
	mov.l @(0x58,PC),r3
	mov 0x38,r0
	mov.l r5,@r15
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
	bt loc_8c070b78
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c070b80
	mov.l @r15+,r14

loc_8c070b78:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c070b80:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xE,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c070b8e:
	mov.l @(0x18,PC),r3
	mov 0x00,r2
	mov.w @(0x4,PC),r0
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c070b98:
	#data 0x0141
loc_8c070b9a:
	#data 0x012c
loc_8c070b9c:
	#data bank03.loc_8c034dee
loc_8c070ba0:
	#data bank04.loc_8c045748
loc_8c070ba4:
	#data 0xc0092492
loc_8c070ba8:
	#data bank04.loc_8c0450c0

;==============================================
;unused
loc_8c070bac:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x164,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c070bf2
	mov r0,r4
	mov.w @(0x144,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0x150,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	mov 0x21,r2
	add r4,r2
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.b @(0x8,r15),r0
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)

loc_8c070bf2:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c070bfa:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.l @(0x11C,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c070c3c
	mov r0,r4
	mov.l @(0x10C,PC),r3
	mov 0x26,r0
	mov.w @(0xF4,PC),r2
	mov 0x20,r1
	mov.l r3,@(0x10,r4)
	add r4,r1
	mov.w r2,@(r0,r4)
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)

loc_8c070c3c:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c070c48:
	mov.l r14,@-r15
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(0xD8,PC),r0
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c070c5e:
	mov r4,r3
	mov.l @(0xCC,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c070c70:
	mov.w @(0xA4,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0xB8,PC),r3
	add 0x01,r0
	mov.w @(0x98,PC),r2
	mov.b r0,@(0x4,r4)
	mov.w @(0x96,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0x92,PC),r0
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
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x00,r3
	mov.b r2,@(r0,r4)
	mov.w @(0x50,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x30,r0
	mov.w r0,@(0x1E,r4)
	lds.l @r15+,pr

loc_8c070cea:
	mov.w @(0x32,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt.s loc_8c070d02
	mov r4,r14
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	rts
	mov.l @r15+,r14

loc_8c070d02:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x34,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused return
loc_8c070d12:
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c070d16:
	#data 0x0d02
loc_8c070d18:
	#data 0x00dc
loc_8c070d1a:
	#data 0x00c0
loc_8c070d1c:
	#data 0x012c
loc_8c070d1e:
	#data 0x01a3
loc_8c070d20:
	#data 0x0159
	#align4
loc_8c070d24:
	#data bank04.loc_8c044f12
loc_8c070d28:
	#data loc_8c070c48
loc_8c070d2c:
	#data bank15.loc_8c1533cc
loc_8c070d30:
	#data bank15.loc_8c1533d8
loc_8c070d34:
	#data bank12.loc_8c129560
loc_8c070d38:
	#data bank12.loc_8c1294c8
loc_8c070d3c:
	#data bank15.loc_8c1533e8

;==============================================
loc_8c070d40:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c070d64
	mov 0x03,r0
	mov.w r0,@(0x1C,r14)
	mov 0x01,r5
	mov.w @(0x1E,r14),r0
	mov r0,r6
	bsr loc_8c070bfa
	mov r14,r4

loc_8c070d64:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c070d82
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c07117c
	mov.l @r15+,r14

loc_8c070d82:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c070d8a:
	mov r4,r3
	mov.l @(loc_8c070d9c,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c070d9c:
	#data bank15.loc_8c1533ec

;==============================================
loc_8c070da0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.w @(0x140,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x138,PC),r2
	add 0x01,r0
	mov.l @(0x14,r14),r4
	mov.b r0,@(0x4,r14)
	mov.w @(0x132,PC),r0
	mov.l @(0x13C,PC),r3
	jsr @r3
	add r13,r2
	mov.w @(0x12C,PC),r0
	mov 0x01,r5
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
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
	mov.w @(0x110,PC),r0
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
	mov.l @(0x108,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov 0x52,r2
	mov.w @(0xE8,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x00,r5
	mov.w @(0xE2,PC),r0
	mov.l @(0xF0,PC),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r5,@(r0,r14)
	add 0xF2,r0
	mov.b r5,@(r0,r14)
	add 0x26,r0
	mov.l r5,@(r0,r14)
	mov 0x42,r5
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xC0,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov 0x34,r0
	mov.l @(0xC8,PC),r2
	fmov @(r0,r4),fr3
	mov.l @(0xC8,PC),r12
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @r2,fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r4),fr3
	jsr @r12
	fmov fr3,@(r0,r14)
	extu.b r0,r4
	mov.l @(0xB8,PC),r1
	mov 0x34,r0
	mov r0,r3
	add 0x4C,r3
	exts.w r4,r4
	fmov @(r0,r14),fr2
	sub r4,r3
	lds r3,fpul
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	jsr @r12
	fmov fr2,@(r0,r14)
	mov 0x7F,r4
	mov.l @(0x9C,PC),r1
	and r0,r4
	mov 0x40,r3
	exts.w r4,r4
	sub r4,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r14),fr2
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x68,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c070e9a
	mov 0x96,r4
	mov 0x6A,r4

loc_8c070e9a:
	exts.w r4,r4
	lds r4,fpul
	mov 0x34,r0
	fmov @(r0,r14),fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x6C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x68,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	jsr @r12
	fmov fr3,@(r0,r14)
	mov.l @(0x64,PC),r1
	and 0x07,r0
	mov.l @(0x64,PC),r3
	mov 0x17,r5
	mov.b @(r0,r1),r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c070ed4:
	mov 0x24,r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(0x48,PC),r1
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c070eee:
	#data 0x00dc
loc_8c070ef0:
	#data 0x00c0
loc_8c070ef2:
	#data 0x012c
loc_8c070ef4:
	#data 0x01a3
loc_8c070ef6:
	#data 0x01a1
loc_8c070ef8:
	#data 0x019c
loc_8c070efa:
	#data 0x0130
	#align4
loc_8c070efc:
	#data bank12.loc_8c129560
loc_8c070f00:
	#data bank12.loc_8c1294c8
loc_8c070f04:
	#data 0x8c2896b0
loc_8c070f08:
	#data 0x8c26a5a8
loc_8c070f0c:
	#data bank03.loc_8c03319e
loc_8c070f10:
	#data 0x3fd55555
loc_8c070f14:
	#data 0x40092492
loc_8c070f18:
	#data 0x414db6db
loc_8c070f1c:
	#data 0xbfab6db6
loc_8c070f20:
	#data bank15.loc_8c1533ac
loc_8c070f24:
	#data bank03.loc_8c034e8c
loc_8c070f28:
	#data bank15.loc_8c1533fc

;==============================================
loc_8c070f2c:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x60,r1
	mov.l r13,@-r15
	mov 0x38,r0
	mov.l @(0x80,PC),r3
	add r14,r1
	mov r5,r13
	sts.l pr,@-r15
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x6C,r1
	add r14,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x60,PC),r2
	jsr @r2
	mov r14,r4
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov.w @(0x50,PC),r0
	fmov @(r0,r13),fr2
	fcmp/gt fr2,fr3
	bt loc_8c070f9c
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x0F,r0
	bf loc_8c070f82
	mov.l @(0x44,PC),r2
	mov 0x1E,r5
	jsr @r2
	mov r14,r4

loc_8c070f82:
	mov 0x02,r5
	mov 0x00,r6
	bsr loc_8c070bfa
	mov r14,r4
	mov.b @(0x4,r14),r0
	mov r13,r5
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c07117c
	mov.l @r15+,r14

loc_8c070f9c:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c070fa4:
	mov r4,r3
	mov.l @(0x1C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c070fb6:
	#data 0x041c
	#align4
loc_8c070fb8:
	#data bank03.loc_8c034dee
loc_8c070fbc:
	#data bank04.loc_8c045748
loc_8c070fc0:
	#data bank04.loc_8c042008
loc_8c070fc4:
	#data bank15.loc_8c153400

;==============================================
loc_8c070fc8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.w @(0x168,PC),r1
	mov r5,r13
	add 0x01,r0
	mov.w @(0x162,PC),r2
	mov.l @(0x14,r14),r4
	add r14,r1
	mov.b r0,@(0x4,r14)
	mov.w @(0x15C,PC),r0
	mov.l @(0x164,PC),r3
	jsr @r3
	add r13,r2
	mov.w @(0x156,PC),r0
	mov 0x01,r5
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
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
	mov.w @(0x13A,PC),r0
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
	mov.l @(0x130,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFE,r3
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x110,PC),r0
	mov.l @(0x120,PC),r3
	mov.b r5,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r4),fr3
	jsr @r3
	fmov fr3,@(r0,r14)
	mov 0x03,r4
	mov.l @(0x108,PC),r3
	and r0,r4
	extu.b r4,r5
	shll r5
	shll r5
	add r3,r5
	mov.w @r5,r4
	mov.w @(0x2,r5),r0
	shll8 r4
	lds r4,fpul
	mov r0,r5
	mova @(0xF8,PC),r0
	fmov @r0,fr4
	mova @(0xF8,PC),r0
	float fpul,fr3
	fmov @r0,fr2
	shll8 r5
	lds r5,fpul
	mov 0x5C,r0
	fmul fr2,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	float fpul,fr3
	mova @(0xE8,PC),r0
	fmov @r0,fr1
	mov 0x60,r0
	fmul fr1,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0xD8,PC),r0
	mov.l @(0xC4,PC),r2
	fmov @r0,fr3
	mov 0x6C,r0
	jsr @r2
	fmov fr3,@(r0,r14)
	and 0x07,r0
	mov.l @(0xD4,PC),r3
	extu.b r0,r6
	mov.b r0,@r15
	mov.l @(0xC8,PC),r0
	mov 0x17,r5
	mov.b @(r0,r6),r6
	jsr @r3
	mov r14,r4
	mov r14,r4
	mov r13,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0710b6:
	mov 0x24,r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(0xB4,PC),r1
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0710d0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov.l @(0x98,PC),r3
	mov 0x34,r0
	mov.l r5,@r15
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
	jsr @r3
	mov r14,r4
	mov 0x38,r0
	mov.l @r15,r2
	fmov @(r0,r14),fr3
	mov.w @(0x26,PC),r0
	fmov @(r0,r2),fr2
	fcmp/gt fr2,fr3
	bt loc_8c071138
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c07117c
	mov.l @r15+,r14

loc_8c071138:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c071140:
	#data 0x00dc
loc_8c071142:
	#data 0x00c0
loc_8c071144:
	#data 0x012c
loc_8c071146:
	#data 0x01a3
loc_8c071148:
	#data 0x041c
	#align4
loc_8c07114c:
	#data bank12.loc_8c129560
loc_8c071150:
	#data bank12.loc_8c1294c8
loc_8c071154:
	#data bank03.loc_8c03319e
loc_8c071158:
	#data bank15.loc_8c1533bc
loc_8c07115c:
	#data 0x47800000
loc_8c071160:
	#data 0x3fd55555
loc_8c071164:
	#data 0x40092492
loc_8c071168:
	#data 0xbecdb6db
loc_8c07116c:
	#data bank15.loc_8c1533b4
loc_8c071170:
	#data bank03.loc_8c034e8c
loc_8c071174:
	#data bank15.loc_8c153410
loc_8c071178:
	#data bank03.loc_8c034dee

;==============================================
loc_8c07117c:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(loc_8c071194,PC),r0;$012c
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c07118a:
	mov.l @(loc_8c071198,PC),r3;bank04.loc_8c0450c0
	mov 0x00,r2
	mov.w @(loc_8c071194,PC),r0;$012c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c071194:
	#data 0x012c
	#align4
loc_8c071198:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c07119c:
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x01,r6
	mov.l @(0x144,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@r15
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0711c6
	mov r0,r4
	mov.l @(0x134,PC),r2
	mov 0x26,r0
	mov.w @(0x11A,PC),r3
	mov.w r3,@(r0,r4)
	mov.l r2,@(0x10,r4)
	mov.l @(0x4,r15),r3
	mov.l r3,@(0x14,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c0711c6:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c0711ce:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.l @(0x118,PC),r1
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0711e2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(0xE8,PC),r3
	mov.w @(0xE8,PC),r1
	add r5,r3
	mov.w @(0xE4,PC),r2
	mov.l r3,@r15
	add r14,r1
	mov.b @(0x4,r14),r0
	mov.l @(0x14,r14),r4
	add 0x01,r0
	mov.l @(0xF4,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xD6,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0xD2,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xB6,PC),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(0xB8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov r14,r1
	mov.b @(r0,r5),r2
	add 0x34,r1
	mov.b r2,@(r0,r14)
	mov 0xF8,r2
	mov.b @(r0,r5),r3
	mov 0x42,r5
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b r2,@(r0,r14)
	mov r4,r2
	mov.w @(0x84,PC),r0
	add 0x34,r2
	mov.l @(0x98,PC),r3
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x76,PC),r0
	mov 0x20,r4
	mov.l @(0x8C,PC),r3
	mov 0x00,r13
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c071290
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x01,r2
	mov.w @(0x54,PC),r0
	mov.b r13,@(r0,r14)
	mov.l @r15,r3
	bra loc_8c0712cc
	mov.b r2,@r3

loc_8c071290:
	mov.w @(0x52,PC),r0
	mov 0x41,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0x5C,PC),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x4C,PC),r2
	jsr @r2
	mov r14,r4
	mov r14,r4
	mov 0x17,r5
	mov 0x14,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x40,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0712cc:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0712d6:
	#data 0x0e00
loc_8c0712d8:
	#data 0x02a4
loc_8c0712da:
	#data 0x00dc
loc_8c0712dc:
	#data 0x00c0
loc_8c0712de:
	#data 0x012c
loc_8c0712e0:
	#data 0x01a3
loc_8c0712e2:
	#data 0x019c
loc_8c0712e4:
	#data 0x013e
loc_8c0712e6:
	#data 0x01a1
	#align4
loc_8c0712e8:
	#data bank04.loc_8c044f12
loc_8c0712ec:
	#data loc_8c0711ce
loc_8c0712f0:
	#data bank15.loc_8c153414
loc_8c0712f4:
	#data bank12.loc_8c129560
loc_8c0712f8:
	#data bank12.loc_8c1294c8
loc_8c0712fc:
	#data bank03.loc_8c03340c
loc_8c071300:
	#data 0x8c2896b0
loc_8c071304:
	#data bank04.loc_8c045748
loc_8c071308:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c07130c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0xC4,PC),r3
	mov r4,r14
	add r5,r3
	mov.l r3,@r15
	mov.l @(0x14,r14),r2
	mov.l r2,@(0x4,r15)
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf.s loc_8c0713be
	mov 0x00,r13
	mov.w @(0xB2,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0713be
	mov.w @(0xAA,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0713be
	mov 0x24,r0
	mov.l @(0xA8,PC),r4
	mov.b @(r0,r5),r3
	mov 0xF8,r2
	mov 0x01,r1
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b r2,@(r0,r14)
	mov 0x3C,r0
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c0713cc
	mov.w @(0x80,PC),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c0713be
	mov.l @(0x84,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c0713be
	mov.l @(0x4,r15),r2
	mov r14,r1
	mov.l @(0x78,PC),r3
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x60,PC),r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt.s loc_8c0713b2
	mov r14,r4
	mov.b @(r0,r14),r1
	add 0x56,r0
	mov.l @(0x64,PC),r3
	mov.b r1,@(r0,r14)
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
	mov.w @(0x32,PC),r0
	mov.b r13,@(r0,r14)

loc_8c0713b2:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0x40,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0713be:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x01,r2
	mov.w @(0x1E,PC),r0
	mov.b r13,@(r0,r14)
	mov.l @r15,r3
	mov.b r2,@r3

loc_8c0713cc:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0713d6:
	mov.l @(0x24,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0713dc:
	#data 0x02a4
loc_8c0713de:
	#data 0x01d0
loc_8c0713e0:
	#data 0x01e9
loc_8c0713e2:
	#data 0x019f
loc_8c0713e4:
	#data 0x014b
loc_8c0713e6:
	#data 0x012c
	#align4
loc_8c0713e8:
	#data 0x8c2895f0
loc_8c0713ec:
	#data bank03.loc_8c034dee
loc_8c0713f0:
	#data bank12.loc_8c1294c8
loc_8c0713f4:
	#data 0x8c2896b0
loc_8c0713f8:
	#data bank04.loc_8c045748
loc_8c0713fc:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c071400:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x130,PC),r2
	mov 0x04,r13
	mov.l r4,@r15
	mov.w @r2,r3
	cmp/gt r13,r3
	bt loc_8c07141c
	bra loc_8c07144a
	mov 0x00,r0

loc_8c07141c:
	mov.w @(0x112,PC),r12
	mov 0x00,r14
	mov.l @(0x120,PC),r11

loc_8c071422:
	mov 0x01,r6
	mov r6,r5
	jsr @r11
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c071440
	mov r0,r4
	mov 0x26,r0
	mov.l @(0x114,PC),r3
	mov.w r12,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)

loc_8c071440:
	add 0x01,r14
	cmp/ge r13,r14
	bf loc_8c071422
	mov r14,r0
	nop

loc_8c07144a:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c071458:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.l @(0xEC,PC),r1
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c07146c:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xC0,PC),r1
	sts.l pr,@-r15
	mov.w @(0xBC,PC),r2
	add r14,r1
	mov.w @(0xBA,PC),r0
	mov.l @(0xD4,PC),r3
	jsr @r3
	add r5,r2
	mov.w @(0xB4,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x98,PC),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(0x9C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x46,r4
	mov 0x0C,r3
	mov.b r2,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x6E,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c07151a
	mov.w @(0x44,PC),r0
	mov 0x37,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x54,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8c07151a:
	mov.l @(0x44,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x20,r0
	mov.l @(0x40,PC),r3
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov r14,r4
	mov 0x17,r5
	add 0x0A,r6
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c071532:
	#data 0x0e01
loc_8c071534:
	#data 0x00dc
loc_8c071536:
	#data 0x00c0
loc_8c071538:
	#data 0x012c
loc_8c07153a:
	#data 0x01a3
loc_8c07153c:
	#data 0x019c
loc_8c07153e:
	#data 0x01a1
	#align4
loc_8c071540:
	#data 0x8c287ae8
loc_8c071544:
	#data bank04.loc_8c044f12
loc_8c071548:
	#data loc_8c071458
loc_8c07154c:
	#data bank15.loc_8c153420
loc_8c071550:
	#data bank12.loc_8c129560
loc_8c071554:
	#data bank12.loc_8c1294c8
loc_8c071558:
	#data 0x432b6db6
loc_8c07155c:
	#data 0x8c2896b0
loc_8c071560:
	#data bank04.loc_8c045748
loc_8c071564:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c071568:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x5,r5),r0
	mov.w @(0xE8,PC),r13
	tst r0,r0
	bf.s loc_8c07158e
	add r5,r13
	mov.w @(0xE2,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c07158e
	mov.w @(0xDA,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c07159a

loc_8c07158e:
	mov 0x03,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0xCC,PC),r0
	bra loc_8c07161e
	mov.b r3,@(r0,r14)

loc_8c07159a:
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0715f8
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0715bc
	mov.w @(0xB8,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0715bc
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c071678
	mov.l @r15+,r14

loc_8c0715bc:
	mov.l @(0xA8,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0715ec
	mov.b @(0x2,r13),r0
	tst r0,r0
	bt loc_8c0715d4
	mov.b @(0x3,r13),r0
	tst r0,r0
	bf loc_8c07161e

loc_8c0715d4:
	mov.b @(0x4,r14),r0
	mov 0x17,r5
	mov.l @(0x90,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r0
	mov.b r0,@(0x3,r13)
	mov 0x20,r0
	mov.b @(r0,r14),r6
	add 0x0E,r6
	jsr @r3
	mov r14,r4

loc_8c0715ec:
	lds.l @r15+,pr
	mov.l @(0x80,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c0715f8:
	mov.l @(0x6C,PC),r2
	jsr @r2
	mov r14,r4
	mov.b @(0x3,r13),r0
	tst r0,r0
	bf loc_8c07161e
	mov.b @(0x4,r14),r0
	mov 0x17,r5
	mov.l @(0x60,PC),r3
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x20,r0
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	add 0x0E,r6
	jmp @r3
	mov.l @r15+,r14

loc_8c07161e:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c071626:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x2E,PC),r3
	mov r4,r14
	mov.l @(0x34,PC),r2
	add r5,r3
	mov.l r3,@r15
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c071650
	mov 0x03,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x1A,PC),r0
	mov.b r3,@(r0,r14)
	mov 0xFF,r0
	mov.l @r15,r2
	mov.b r0,@(0x2,r2)

loc_8c071650:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c071658:
	mov.l @(0x18,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07165e:
	#data 0x02a4
loc_8c071660:
	#data 0x01d0
loc_8c071662:
	#data 0x01e9
loc_8c071664:
	#data 0x012c
loc_8c071666:
	#data 0x019e
	#align4
loc_8c071668:
	#data bank03.loc_8c034dee
loc_8c07166c:
	#data bank03.loc_8c034e8c
loc_8c071670:
	#data bank04.loc_8c045748
loc_8c071674:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c071678:
	mov.l r14,@-r15
	mov 0x01,r3
	mov.l r13,@-r15
	mov 0x21,r0
	mov.l r12,@-r15
	mov r5,r13
	mov.l r11,@-r15
	mov r4,r11
	mov.w @(0x86,PC),r12
	sts.l pr,@-r15
	mov.b r3,@(r0,r11)
	add r13,r12
	bsr loc_8c0716e0
	mov r11,r4
	tst r0,r0
	bt.s loc_8c0716d4
	mov r0,r14
	mov 0x01,r0
	mov.b r0,@(0x2,r12)
	mov 0x00,r3
	mov.w @(0x70,PC),r0
	mov 0x0D,r5
	mov 0x02,r6
	mov.b r3,@(r0,r14)
	mov.l @(0x74,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x66,PC),r0
	mov 0xFF,r3
	mov.w @(0x60,PC),r2
	mov r14,r5
	mov.b r2,@(r0,r13)
	mov.w @(0x5E,PC),r0
	mov.b r3,@(r0,r13)
	mov.l @(0x64,PC),r3
	jsr @r3
	mov r11,r4
	mov.w @(0x56,PC),r0
	mov 0x0C,r2
	mov.l @(0x60,PC),r3
	mov r14,r5
	mov.b r2,@(r0,r14)
	mov 0x00,r6
	jsr @r3
	mov r13,r4
	mov.l r14,@(0x8,r12)

loc_8c0716d4:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0716e0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x44,PC),r3
	jsr @r3
	mov.l r4,@r15
	tst r0,r0
	bt loc_8c0716fe
	mov.w @(0x2C,PC),r0
	mov.l @r15,r4
	mov.l @(r0,r4),r4
	add 0xF2,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x37,r0
	bt loc_8c071706

loc_8c0716fe:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov 0x00,r0

loc_8c071706:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c071712:
	#data 0x02a4
loc_8c071714:
	#data 0x01f9
loc_8c071716:
	#data 0x00c4
loc_8c071718:
	#data 0x01f7
loc_8c07171a:
	#data 0x015a
loc_8c07171c:
	#data 0x01f6
loc_8c07171e:
	#data 0x01b0
	#align4
loc_8c071720:
	#data bank03.loc_8c034e8c
loc_8c071724:
	#data bank05.loc_8c05248e
loc_8c071728:
	#data bank0c.loc_8c0c6e44
loc_8c07172c:
	#data bank05.loc_8c05264c

;==============================================
loc_8c071730:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x134,PC),r3
	mov.l r4,@(0x4,r15)
	mov.l r5,@(0x8,r15)
	mov.l r6,@r15
	mov 0x01,r6
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c07176c
	mov r0,r4
	mov.w @(0x10A,PC),r3
	mov 0x26,r0
	mov r4,r1
	add 0x34,r1
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.l @(0x8,r15),r2
	mov.l @(0x114,PC),r3
	mov.b r2,@(r0,r4)
	mov.l @(0x4,r15),r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x10C,PC),r3
	mov.l @r15,r1
	mov.l r1,@(0x18,r4)
	mov.l r3,@(0x10,r4)

loc_8c07176c:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c071774:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.l @(0xFC,PC),r1
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c071788:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xC6,PC),r3
	mov r4,r14
	mov.w @(0xC4,PC),r1
	add r5,r3
	mov.w @(0xC2,PC),r0
	mov.l r3,@r15
	add r14,r1
	mov.l @(0xDC,PC),r3
	mov.w @(0xB8,PC),r2
	jsr @r3
	add r5,r2
	mov.w @(0xB6,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x9A,PC),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(0x94,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x46,r4
	mov 0x00,r13
	mov.b r2,@(r0,r14)
	mov 0xF8,r2
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x6E,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b r2,@(r0,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mova @(0x74,PC),r0
	fmov @r0,fr4
	mov.w @(0x54,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c07181a
	mova @(0x6C,PC),r0
	fmov @r0,fr4

loc_8c07181a:
	mov 0x34,r0
	mov.l @(0x68,PC),r3
	fmov @(r0,r14),fr3
	mov 0x20,r4
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x3E,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c07184a
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mov 0x06,r2
	extu.b r3,r3
	cmp/gt r2,r3
	bt loc_8c07184a
	mov.l @r15,r1
	mov.b @(0x5,r1),r0
	cmp/pl r0
	bt loc_8c07188c

loc_8c07184a:
	mov 0x02,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xE,PC),r0
	mov.b r13,@(r0,r14)
	mov 0x14,r0
	bra loc_8c0718c8
	mov.w r0,@(0x1E,r14)

;##############################################
loc_8c071858:
	#data 0x0e02
loc_8c07185a:
	#data 0x02a4
loc_8c07185c:
	#data 0x00dc
loc_8c07185e:
	#data 0x00c0
loc_8c071860:
	#data 0x012c
loc_8c071862:
	#data 0x01a3
loc_8c071864:
	#data 0x019c
loc_8c071866:
	#data 0x0130
loc_8c071868:
	#data 0x013e
	#align4
loc_8c07186c:
	#data bank04.loc_8c044f12
loc_8c071870:
	#data bank12.loc_8c1294c8
loc_8c071874:
	#data loc_8c071774
loc_8c071878:
	#data bank15.loc_8c153430
loc_8c07187c:
	#data bank12.loc_8c129560
loc_8c071880:
	#data 0xc3200000
loc_8c071884:
	#data 0x43200000
loc_8c071888:
	#data bank03.loc_8c03340c

;=======================================================
loc_8c07188c:
	mov.w @(0x136,PC),r0
	mov 0x3E,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0x134,PC),r3
	mov.l r13,@(r0,r14)
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
	mov r14,r4
	mov 0x17,r5
	mov 0x12,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x118,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0718c8:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0718d2:
	mov.l r14,@-r15
	add 0xFC,r15
	mov.w @(0xF0,PC),r0
	mov.w @(0xEC,PC),r3
	add r5,r3
	mov.l r3,@r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1C,r0
	bt.s loc_8c0718f8
	mov r4,r14
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf loc_8c0718f8
	mov.w @(0xDA,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bt loc_8c071908


loc_8c0718f8:
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0xCC,PC),r0
	mov.b r3,@(r0,r14)
	add 0x04,r15
	rts
	mov.l @r15+,r14

loc_8c071908:
	mov 0x24,r0
	mov.l @(0xD4,PC),r1
	mov.b @(r0,r5),r2
	mov 0xF8,r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r14),r0
	mov.l @r15,r6
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	add 0x04,r15
	jmp @r3
	mov.l @r15+,r14
	add 0x04,r15
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07192e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.l @(0xAC,PC),r4
	mov 0x3C,r0
	mov.l r5,@r15
	mov 0x01,r1
	mov.l r6,@(0x4,r15)
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c0719ba
	mov.l @r15,r5
	bsr loc_8c071a5c            ;8c070f08+0xb54
	mov r14,r4
	mov.l @(0x90,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x70,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c071994
	mov.b @(r0,r14),r3
	add 0x56,r0
	mov 0x00,r4
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x5C,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x42,PC),r0
	mov.b r4,@(r0,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)

loc_8c071994:
	mov.w @(0x3A,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0719ba
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r5
	mov.l @r15,r6
	extu.b r5,r5
	add 0x01,r5
	bsr loc_8c071730
	mov r14,r4
	tst r0,r0
	bf loc_8c0719ba
	mov.l @(0x4,r15),r3
	mov 0xFF,r0
	mov.b r0,@(0x4,r3)

loc_8c0719ba:
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0x14,PC),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0719c6:
	#data 0x01a1
loc_8c0719c8:
	#data 0x02a4
loc_8c0719ca:
	#data 0x01d0
loc_8c0719cc:
	#data 0x01e9
loc_8c0719ce:
	#data 0x012c
loc_8c0719d0:
	#data 0x014b
loc_8c0719d2:
	#data 0x0141
	#align4
loc_8c0719d4:
	#data 0x8c2896b0
loc_8c0719d8:
	#data bank04.loc_8c045748
loc_8c0719dc:
	#data bank03.loc_8c034e8c
loc_8c0719e0:
	#data bank15.loc_8c15343c
loc_8c0719e4:
	#data 0x8c2895f0
loc_8c0719e8:
	#data bank03.loc_8c034dee

;==============================================
loc_8c0719ec:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x90,PC),r4
	mov 0x3C,r0
	mov 0x01,r1
	sts.l pr,@-r15
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c071a28
	bsr loc_8c071a5c            ;8c070f08+0xb54
	mov r14,r4
	mov.l @(0x78,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c071a28
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x5A,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c071a28:
	lds.l @r15+,pr
	mov.l @(0x60,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;unused return
loc_8c071a32:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c071a38:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c071a52
	mov 0x02,r0
	mov.b r0,@(0x4,r4)
	mov 0x00,r3
	mov.w @(0x2E,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x01,r0
	mov.b r0,@(0x4,r6)

loc_8c071a52:
	rts
	nop

;==============================================
loc_8c071a56:
	mov.l @(0x38,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c071a5c:
	mov.w @(0x20,PC),r0
	mov.w @(0x1C,PC),r3
	mov.b @(r0,r4),r2
	tst r2,r2
	bt.s loc_8c071a78
	add r3,r5
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8c071a78
	mov.b @(0x5,r5),r0
	add 0xFF,r0
	mov.b r0,@(0x5,r5)
	mov 0x01,r0
	mov.w r0,@(0x1C,r4)

loc_8c071a78:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c071a7c:
	#data 0x012c
loc_8c071a7e:
	#data 0x02a4
loc_8c071a80:
	#data 0x019e
	#align4
loc_8c071a84:
	#data 0x8c2895f0
loc_8c071a88:
	#data bank03.loc_8c034dee
loc_8c071a8c:
	#data bank04.loc_8c045748
loc_8c071a90:
	#data bank04.loc_8c0450c0

;==============================================
;Unused
loc_8c071a94:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x128,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c071ab8
	mov r0,r4
	mov.l @(0x11C,PC),r3
	mov 0x26,r0
	mov.w @(0x102,PC),r2
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)

loc_8c071ab8:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c071ac0:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.l @(0x104,PC),r1
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c071ad4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xDC,PC),r1
	mov.w @(0xD8,PC),r4
	sts.l pr,@-r15
	mov.w @(0xD6,PC),r2
	add r5,r4
	mov.w @(0xD4,PC),r0
	add r14,r1
	mov.l @(0xE8,PC),r3
	jsr @r3
	add r5,r2
	mov.w @(0xCC,PC),r0
	mov 0x01,r2
	mov r14,r1
	add 0x50,r1
	mov.b r2,@(r0,r14)
	mov.b @(0x2,r5),r0
	mov.b r0,@(0x2,r14)
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r14)
	mov 0x50,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xB0,PC),r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(0xB0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x42,r6
	mov.b r2,@(r0,r14)
	mov 0x08,r2
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x86,PC),r0
	mov.b r6,@(r0,r14)
	add 0x01,r0
	mov.b r6,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b r2,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r4),fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x10,r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r14),r3
	add 0x32,r3
	add 0xFE,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r4
	mov.l @(0x68,PC),r3
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
	mov.l @(0x50,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x2A,PC),r0
	mov r14,r4
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov 0x17,r5
	mov.l @(0x44,PC),r3
	add 0x27,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c071ba2:
	mov r4,r3
	mov.l @(0x3C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c071bb4:
	#data 0x0e01
loc_8c071bb6:
	#data 0x02a4
loc_8c071bb8:
	#data 0x00dc
loc_8c071bba:
	#data 0x00c0
loc_8c071bbc:
	#data 0x012c
loc_8c071bbe:
	#data 0x01a3
loc_8c071bc0:
	#data 0x019c
#align4
loc_8c071bc4:
	#data bank04.loc_8c044f12
loc_8c071bc8:
	#data loc_8c071ac0
loc_8c071bcc:
	#data bank15.loc_8c153474
loc_8c071bd0:
	#data bank12.loc_8c129560
loc_8c071bd4:
	#data bank12.loc_8c1294c8
loc_8c071bd8:
	#data 0x8c2896b0
loc_8c071bdc:
	#data bank04.loc_8c045748
loc_8c071be0:
	#data bank03.loc_8c034e8c
loc_8c071be4:
	#data bank15.loc_8c153480

;==============================================
loc_8c071be8:
	mov.l r14,@-r15
	mov 0x24,r0
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov 0x08,r2
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov.w @(0xD8,PC),r12
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b r2,@(r0,r14)
	add r13,r12
	mov.b @(0x5,r13),r0
	tst r0,r0
	bt.s loc_8c071c16
	mov 0xFF,r9
	bra loc_8c071d0c
	nop

loc_8c071c16:
	mov.w @(0xC4,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c071d0c
	mov.w @(0xBC,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c071d0c
	mov 0x0C,r0
	mov.l @(0xC4,PC),r3
	fmov @(r0,r12),fr3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x10,r0
	fmov @(r0,r12),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c071d0c
	mov.w @(0x90,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c071cc8
	mov.l @(0xA0,PC),r3
	mov 0x02,r10
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c071ca6
	mov.w @(0x7E,PC),r0
	mov 0x0A,r5
	mov.l @(0x94,PC),r3
	mov.l @(r0,r14),r11
	add 0x91,r0
	mov.b @(r0,r14),r7
	add 0x62,r0
	mov.b @(r0,r14),r6
	extu.b r6,r6
	jsr @r3
	mov r13,r4
	mov 0x01,r0
	mov r11,r5
	mov.b r0,@(0x6,r12)
	mov 0x20,r3
	mov.w @(0x62,PC),r0
	mov 0x00,r2
	mov.b r3,@(r0,r13)
	add 0xB0,r0
	mov.w @(0x5C,PC),r3
	mov.b r2,@(r0,r13)
	add 0x5A,r0
	mov.b r3,@(r0,r13)
	mov.w @(0x56,PC),r0
	mov.l @(0x6C,PC),r3
	mov.b r9,@(r0,r13)
	jsr @r3
	mov r14,r4
	mov r10,r0
	nop
	mov.b r0,@(0x4,r14)
	mov.w @(0x48,PC),r0
	bra loc_8c071db2
	mov.b r10,@(r0,r11)

loc_8c071ca6:
	mov r10,r0
	nop
	mov.b r0,@(0x5,r14)
	mov r9,r0
	nop
	mov.b r0,@(0x6,r12)
	mov.w @(0x38,PC),r0
	mov.b @(r0,r14),r13
	mov.l @(0x4C,PC),r0
	extu.b r13,r13
	mov.b @(r0,r13),r13
	mov.w @(0x30,PC),r0
	extu.b r13,r13
	mov.b @(r0,r14),r3
	add r3,r13
	bra loc_8c071d9a
	nop

loc_8c071cc8:
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r2
	mov r14,r4
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c071cdc:
	#data 0x02a4
loc_8c071cde:
	#data 0x01d0
loc_8c071ce0:
	#data 0x01e9
loc_8c071ce2:
	#data 0x019e
loc_8c071ce4:
	#data 0x01b0
loc_8c071ce6:
	#data 0x01ed
loc_8c071ce8:
	#data 0x00c3
loc_8c071cea:
	#data 0x015a
loc_8c071cec:
	#data 0x01f4
loc_8c071cee:
	#data 0x01a3
loc_8c071cf0:
	#data 0x0141
	#align4
loc_8c071cf4:
	#data bank03.loc_8c034dee
loc_8c071cf8:
	#data bank05.loc_8c05264c
loc_8c071cfc:
	#data bank0c.loc_8c0c6814
loc_8c071d00:
	#data bank05.loc_8c05248e
loc_8c071d04:
	#data bank15.loc_8c15346f
loc_8c071d08:
	#data bank04.loc_8c045748

;==============================================
loc_8c071d0c:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov r9,r0
	nop
	mov.b r0,@(0x6,r12)
	mov.w @(0x158,PC),r0
	mov.l @(0x164,PC),r3
	mov.b @(r0,r14),r4
	add 0x99,r0
	extu.b r4,r4
	shll2 r4
	add r3,r4
	mov.b @r4+,r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b @r4+,r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b @r4+,r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b @r4,r1
	mov.l @(0x148,PC),r2
	mov.b r1,@(r0,r14)
	add 0x64,r0
	mov.b @(r0,r14),r4
	mova @(0x144,PC),r0
	fmov @r0,fr5
	mova @(0x144,PC),r0
	extu.b r4,r4
	fmov @r0,fr4
	shll r4
	shll2 r4
	add r2,r4
	mov.l @r4+,r3
	lds r3,fpul
	float fpul,fr3
	mov 0x5C,r0
	fmul fr4,fr3
	fdiv fr5,fr3
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	mov.l @r4,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fldi0 fr4
	fdiv fr5,fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xFA,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c071d88
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c071d88:
	mov.w @(0xE8,PC),r0
	mov.b @(r0,r14),r13
	mov.l @(0x100,PC),r0
	extu.b r13,r13
	mov.b @(r0,r13),r13
	mov.w @(0xE2,PC),r0
	extu.b r13,r13
	mov.b @(r0,r14),r3
	add r3,r13

loc_8c071d9a:
	lds.l @r15+,pr
	mov r13,r6
	mov.l @(0xF4,PC),r3
	mov r14,r4
	mov 0x17,r5
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c071db2:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c071dc2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xAE,PC),r3
	mov r4,r14
	mov.l @(0xC8,PC),r2
	add r5,r3
	mov.l r3,@r15
	jsr @r2
	mov r14,r4
	mov 0x5C,r1
	mov.l @(0xC0,PC),r3
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
	tst r0,r0
	bf loc_8c071e2a
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0x5A,PC),r0
	mov.b r3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c071e2a:
	mov.w @(0x50,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c071e60
	mov 0x02,r0
	mov r14,r4
	mov.b r0,@(0x5,r14)
	mov 0xFF,r0
	mov.l @r15,r3
	mov 0x17,r5
	mov.b r0,@(0x6,r3)
	mov.w @(0x30,PC),r0
	mov.b @(r0,r14),r3
	mov.l @(0x58,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov.w @(0x2A,PC),r0
	extu.b r2,r2
	mov.b @(r0,r14),r3
	add r3,r2
	mov.l r2,@r15
	mov r2,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x38,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c071e60:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r2
	jmp @r2
	mov.l @r15+,r14

;unused return
loc_8c071e6c:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c071e74:
	#data 0x01a3
loc_8c071e76:
	#data 0x0130
loc_8c071e78:
	#data 0x0141
loc_8c071e7a:
	#data 0x02a4
loc_8c071e7c:
	#data 0x012c
loc_8c071e7e:
	#data 0x019e
	#align4
loc_8c071e80:
	#data bank15.loc_8c153448
loc_8c071e84:
	#data bank15.loc_8c153454
loc_8c071e88:
	#data 0x47800000
loc_8c071e8c:
	#data 0x3fd55555
loc_8c071e90:
	#data bank15.loc_8c15346c
loc_8c071e94:
	#data bank03.loc_8c034e8c
loc_8c071e98:
	#data bank03.loc_8c034dee
loc_8c071e9c:
	#data bank03.loc_8c0332e0
loc_8c071ea0:
	#data bank15.loc_8c15346f
loc_8c071ea4:
	#data bank04.loc_8c045748

;==============================================
loc_8c071ea8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x20,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c071ec2
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r3
	mov.w @(0xC,PC),r0
	mov.b r3,@(r0,r14)

loc_8c071ec2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c071ec8:
	mov.l @(0x8,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c071ece:
	#data 0x012c
	#align4
loc_8c071ed0:
	#data bank03.loc_8c034dee
loc_8c071ed4:
	#data bank04.loc_8c0450c0

;==============================================
;Unused
loc_8c071ed8:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x100,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c071f1e
	mov r0,r4
	mov.w @(0xE2,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0xEC,PC),r3
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

loc_8c071f1e:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c071f26:
	mov.l r14,@-r15
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(0xC4,PC),r0
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c071f3c:
	mov r4,r3
	mov.l @(0xB8,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c071f4e:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x88,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x80,PC),r2
	add 0x01,r0
	mov.l @(0x98,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x7A,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x76,PC),r0
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
	mov.w @(0x5A,PC),r0
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
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(0x36,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mova @(0x34,PC),r0
	fmov @r0,fr4
	mov.w @(0x16,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c072008
	mov 0x34,r0
	fmov @(r0,r14),fr3
	bra loc_8c07200e
	fadd fr4,fr3

;##############################################
loc_8c071fe0:
	#data 0x0f00
loc_8c071fe2:
	#data 0x00dc
loc_8c071fe4:
	#data 0x00c0
loc_8c071fe6:
	#data 0x012c
loc_8c071fe8:
	#data 0x01a3
loc_8c071fea:
	#data 0x0130
	#align4
loc_8c071fec:
	#data bank04.loc_8c044f12
loc_8c071ff0:
	#data loc_8c071f26
loc_8c071ff4:
	#data bank15.loc_8c15348c
loc_8c071ff8:
	#data bank15.loc_8c153490
loc_8c071ffc:
	#data bank12.loc_8c129560
loc_8c072000:
	#data bank12.loc_8c1294c8
loc_8c072004:
	#data 0xc33aaaaa

;==============================================
loc_8c072008:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fsub fr4,fr3

loc_8c07200e:
	mov.l @(0xEC,PC),r1
	mov 0x5D,r3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	lds r1,fpul
	fmov @(r0,r14),fr2
	fldi0 fr4
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0xCA,PC),r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0xC4,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	fmov fr2,@(r0,r14)
	mov.w @(0xAC,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c072052
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fneg fr2
	fmov fr2,@(r0,r14)

loc_8c072052:
	mov.w @(0x9E,PC),r0
	mov 0x3A,r3
	mov 0x17,r5
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x9C,PC),r3
	mov 0x00,r6
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x10,r2
	mov.w @(0x74,PC),r0
	mov.b @(r0,r14),r1
	or r2,r1
	mov.b r1,@(r0,r14)
	mov 0x43,r0
	mov.w @(0x6C,PC),r1
	add r14,r1
	mov.b r0,@r1
	mov 0x42,r1
	mov.w @(0x66,PC),r0
	mov.b r1,@(r0,r14)
	mov.l @(0x74,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0720a2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov r5,r0
	nop
	mov.w @(0x48,PC),r1
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf.s loc_8c0720c4
	mov r4,r14
	mov.l @(0x50,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0720d2

loc_8c0720c4:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0720d2:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x38,PC),r1
	extu.b r0,r0
	mov.l @r15,r5
	shll2 r0
	mov.l @(r0,r1),r3
	add 0x04,r15
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;unused return
loc_8c0720e8:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0720f0:
	#data 0x013f
loc_8c0720f2:
	#data 0x0130
loc_8c0720f4:
	#data 0x01a1
loc_8c0720f6:
	#data 0x019c
loc_8c0720f8:
	#data 0x019d
loc_8c0720fa:
	#data 0x0159
	#align4
loc_8c0720fc:
	#data 0x432b6db6
loc_8c072100:
	#data 0xc1555555
loc_8c072104:
	#data 0x8c2896b0
loc_8c072108:
	#data bank03.loc_8c034e8c
loc_8c07210c:
	#data bank03.loc_8c03340c
loc_8c072110:
	#data bank15.loc_8c1534a0

;==============================================
loc_8c072114:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0x11C,PC),r3
	add r14,r1
	mov 0x34,r0
	sts.l pr,@-r15
	fmov @r1,fr3
	mov 0x68,r1
	fmov @(r0,r14),fr2
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
	mov.l @(0xFC,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0xE4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c07218e
	mov.w @(0xDE,PC),r0
	mov 0x3A,r3
	mov 0x00,r4
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xE0,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xBA,PC),r0
	mov.l @(r0,r14),r4
	mov.b @(0x3,r4),r0
	tst r0,r0
	bf loc_8c07218e
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov.l @(0xC4,PC),r3
	mov 0x01,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	mov 0x5A,r0
	mov.w r0,@(0x1C,r14)

loc_8c07218e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c072194:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x98,PC),r3
	jsr @r3
	mov r5,r13
	mov.w @(0x8A,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf.s loc_8c0721b4
	mov r14,r4
	mov 0x24,r0
	mov 0x0A,r3
	bra loc_8c0721ba
	mov.b r3,@(r0,r14)

loc_8c0721b4:
	mov 0x24,r0
	mov 0x0D,r1
	mov.b r1,@(r0,r14)

loc_8c0721ba:
	mov.l @(0x80,PC),r3
	jsr @r3
	nop
	mov.w @(0x1C,r14),r0
	mov.l @(0x7C,PC),r6
	tst 0x07,r0
	bf.s loc_8c07226c
	mov 0x00,r4
	mov.w @(0x64,PC),r0
	mov.l @(r0,r13),r7
	mov 0x34,r0
	fmov @(r0,r13),fr2
	fmov @(r0,r14),fr3
	fsub fr3,fr2
	ftrc fr2,fpul
	sts fpul,r5
	exts.w r5,r3
	cmp/pz r3
	bt.s loc_8c0721e4
	fmov @(r0,r7),fr3
	neg r5,r5

loc_8c0721e4:
	fmov @(r0,r13),fr2
	fsub fr3,fr2
	ftrc fr2,fpul
	sts fpul,r7
	exts.w r7,r3
	cmp/pz r3
	bt.s loc_8c0721f6
	exts.w r5,r5
	neg r7,r7

loc_8c0721f6:
	exts.w r7,r7
	cmp/ge r7,r5
	bt loc_8c072248
	mov.w @(0x2C,PC),r0
	mov 0x3A,r2
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
	mov 0x10,r3
	mov.w @(0x10,PC),r0
	mov.w @(r0,r14),r2
	or r3,r2
	bra loc_8c07226c
	mov.w r2,@(r0,r14)

;##############################################
loc_8c07222a:
	#data 0x019e
loc_8c07222c:
	#data 0x01a1
loc_8c07222e:
	#data 0x01b0
loc_8c072230:
	#data 0x0141
loc_8c072232:
	#data 0x020c
loc_8c072234:
	#data 0x01ac
	#align4
loc_8c072238:
	#data bank03.loc_8c034dee
loc_8c07223c:
	#data bank04.loc_8c045748
loc_8c072240:
	#data 0x8c2896b0
loc_8c072244:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c072248:
	mov.w @(0xCA,PC),r1
	mov 0x3A,r0
	add r14,r1
	mov.b r0,@r1
	mov.w @(0xC4,PC),r0
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

loc_8c07226c:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0722a2
	mov.w @(0x98,PC),r0
	mov 0x3B,r2
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
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c0722a2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0722aa:
	mov r4,r3
	mov.l @(0x70,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0722bc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(0x52,PC),r3
	mov r5,r4
	mov.l @(0x58,PC),r2
	add r3,r4
	mov.l r5,@r15
	mov.b @(0x6,r14),r0
	mov 0x17,r5
	mov 0x02,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x01,r0
	mov.b r0,@(0x4,r4)
	jsr @r2
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

;==============================================
loc_8c0722ea:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x38,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c072306
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x16,PC),r0
	mov.b r3,@(r0,r14)

loc_8c072306:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07230c:
	mov.l @(0x1C,PC),r3
	mov 0x00,r2
	mov.w @(0x8,PC),r0
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c072316:
	#data 0x01a1
loc_8c072318:
	#data 0x01ac
loc_8c07231a:
	#data 0x02a4
loc_8c07231c:
	#data 0x012c
	#align4
loc_8c072320:
	#data bank15.loc_8c1534a8
loc_8c072324:
	#data bank03.loc_8c034e8c
loc_8c072328:
	#data bank03.loc_8c034dee
loc_8c07232c:
	#data bank04.loc_8c0450c0

;==============================================
;unused
loc_8c072330:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0xFC,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c072376
	mov r0,r4
	mov.w @(0xDC,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0xE8,PC),r3
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

loc_8c072376:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c07237e:
	mov.l r14,@-r15
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(0xC0,PC),r0
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c072394:
	mov r4,r3
	mov.l @(0xB4,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0723a6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x82,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x7A,PC),r2
	add 0x01,r0
	mov.l @(0x94,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x74,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x70,PC),r0
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
	mov.w @(0x54,PC),r0
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
	mov.l @(0x58,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(0x30,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mova @(0x38,PC),r0
	fmov @r0,fr4
	mov.w @(0x16,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c07245c
	mov 0x34,r0
	fmov @(r0,r14),fr3
	bra loc_8c072462
	fadd fr4,fr3

;##############################################
loc_8c072432:
	#data 0x0f01
loc_8c072434:
	#data 0x00dc
loc_8c072436:
	#data 0x00c0
loc_8c072438:
	#data 0x012c
loc_8c07243a:
	#data 0x01a3
loc_8c07243c:
	#data 0x0130
	#align4
loc_8c072440:
	#data bank04.loc_8c044f12
loc_8c072444:
	#data loc_8c07237e
loc_8c072448:
	#data bank15.loc_8c1534b0
loc_8c07244c:
	#data bank15.loc_8c1534b4
loc_8c072450:
	#data bank12.loc_8c129560
loc_8c072454:
	#data bank12.loc_8c1294c8
loc_8c072458:
	#data 0xc2f00000

;----------------------------------------------
loc_8c07245c:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fsub fr4,fr3

loc_8c072462:
	mov.l @(0x104,PC),r1
	mov 0x3C,r3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	lds r1,fpul
	mov 0x00,r4
	fmov @(r0,r14),fr2
	fldi0 fr4
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0xE0,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	fmov fr2,@(r0,r14)
	mov.w @(0xCA,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xD0,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov 0x17,r5
	mov.l @r3,r2
	mov 0x03,r6
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x43,r2
	mov.w @(0xA4,PC),r0
	mov 0x42,r1
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.l @(0xB0,PC),r2
	mov.b r1,@(r0,r14)
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0724d2:
	mov.w @(0x8C,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf.s loc_8c0724f2
	mov r4,r14
	mova @(0x94,PC),r0
	fmov @r0,fr3
	mov.w @(0x7C,PC),r0
	fmov @(r0,r5),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bf loc_8c0724fc

loc_8c0724f2:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	rts
	mov.l @r15+,r14

loc_8c0724fc:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x78,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused return
loc_8c07250c:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c072510:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x60,r1
	mov.l @(0x68,PC),r3
	add r14,r1
	mov 0x38,r0
	sts.l pr,@-r15
	fmov @r1,fr3
	mov 0x6C,r1
	fmov @(r0,r14),fr2
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
	mov.l @(0x48,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x24,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c072558
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mova @(0x38,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x78,r0
	mov.w r0,@(0x1C,r14)

loc_8c072558:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07255e:
	#data 0x01a1
loc_8c072560:
	#data 0x019c
loc_8c072562:
	#data 0x0159
loc_8c072564:
	#data 0x041c
loc_8c072566:
	#data 0x019e
	#align4
loc_8c072568:
	#data 0x43bc9249
loc_8c07256c:
	#data 0x41892492
loc_8c072570:
	#data 0x8c2896b0
loc_8c072574:
	#data bank03.loc_8c034e8c
loc_8c072578:
	#data 0x44892492
loc_8c07257c:
	#data bank15.loc_8c1534c4
loc_8c072580:
	#data bank03.loc_8c034dee
loc_8c072584:
	#data bank04.loc_8c045748
loc_8c072588:
	#data 0x40892492

;==============================================
loc_8c07258c:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x60,r1
	mov.l @(0xBC,PC),r3
	add r14,r1
	mov 0x38,r0
	sts.l pr,@-r15
	fmov @r1,fr3
	mov 0x6C,r1
	fmov @(r0,r14),fr2
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
	mov.w @(0x1C,r14),r0
	mov.l @(0x98,PC),r5
	tst 0x07,r0
	bf.s loc_8c0725e6
	mov 0x00,r4
	mov.w @(0x82,PC),r0
	mov 0x3C,r2
	mov.b r2,@(r0,r14)
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

loc_8c0725e6:
	mov.w @(0x1C,r14),r0
	cmp/eq 0x08,r0
	bf loc_8c07260e
	mov.w @(0x5A,PC),r0
	mov 0x3D,r2
	mov.b r2,@(r0,r14)
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

loc_8c07260e:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c072622
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c072622:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c072628:
	mov.w @(0x20,PC),r3
	mov 0x01,r0
	mov 0x00,r2
	add r3,r5
	mov.b r0,@(0x6,r5)
	mov.w @(0x18,PC),r0
	mov.b r2,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c07263e:
	mov.w @(0xC,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.l @(0x14,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07264a:
	#data 0x01a1
loc_8c07264c:
	#data 0x02a4
loc_8c07264e:
	#data 0x012c
	#align4
loc_8c072650:
	#data bank03.loc_8c034dee
loc_8c072654:
	#data bank04.loc_8c045748
loc_8c072658:
	#data 0x8c2896b0
loc_8c07265c:
	#data bank04.loc_8c0450c0

;==============================================
;Unused
loc_8c072660:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.l @(0x10C,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0726a8
	mov r0,r4
	mov.w @(0xE4,PC),r2
	mov 0x26,r0
	mov.l @(0xF8,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0xDC,PC),r5
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
	mov.w @(0xC6,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@r5

loc_8c0726a8:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0726b4:
	mov.l r14,@-r15
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(0xC4,PC),r0
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0726ca:
	mov r4,r3
	mov.l @(0xB8,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0726dc:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x86,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x7E,PC),r2
	add 0x01,r0
	mov.l @(0x98,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x78,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x74,PC),r0
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
	mov.w @(0x58,PC),r0
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
	mov.l @(0x60,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov 0x10,r2
	mov.w @(0x30,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x2C,PC),r0
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c072794
	mov 0x00,r4
	mov.w @(0x14,PC),r0
	mov 0x30,r3
	bra loc_8c07279a
	mov.b r3,@(r0,r14)

;##############################################
loc_8c072768:
	#data 0x0f01
loc_8c07276a:
	#data 0x00cc
loc_8c07276c:
	#data 0x0158
loc_8c07276e:
	#data 0x00dc
loc_8c072770:
	#data 0x00c0
loc_8c072772:
	#data 0x012c
loc_8c072774:
	#data 0x01a3
loc_8c072776:
	#data 0x013f
loc_8c072778:
	#data 0x01a1
	#align4
loc_8c07277c:
	#data bank04.loc_8c044f12
loc_8c072780:
	#data loc_8c0726b4
loc_8c072784:
	#data bank15.loc_8c153528
loc_8c072788:
	#data bank15.loc_8c153530
loc_8c07278c:
	#data bank12.loc_8c129560
loc_8c072790:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c072794:
	mov.w @(0x12A,PC),r0
	mov 0x38,r1
	mov.b r1,@(r0,r14)

loc_8c07279a:
	mov.w @(0x126,PC),r0
	mov.l @(0x12C,PC),r3
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov 0x42,r4
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov r14,r1
	mov.w @(0x106,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov.l @(0x104,PC),r4
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov 0x21,r2
	add r14,r2
	add r0,r1
	mov.l r1,@-r15
	mov.b @r2,r2
	extu.b r2,r2
	shll r2
	shll r2
	add r4,r2
	mov.w @(0x2,r2),r0
	mov r0,r2
	lds r2,fpul
	mov.l @r15+,r2
	mova @(0xDC,PC),r0
	fmov @r0,fr0
	mov 0x21,r0
	float fpul,fr3
	fmov @r2,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r2
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	shll r0
	mov.w @(r0,r4),r2
	mova @(0xC8,PC),r0
	fmov @r0,fr2
	lds r2,fpul
	mov.w @(0xB2,PC),r0
	float fpul,fr3
	fmul fr2,fr3
	ftrc fr3,fpul
	mov.w @(r0,r13),r2
	tst r2,r2
	bt.s loc_8c072824
	sts fpul,r4
	neg r4,r4

loc_8c072824:
	exts.w r4,r4
	lds r4,fpul
	mov 0x34,r0
	fmov @(r0,r14),fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @(0xA4,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov 0x22,r0
	mov.b r2,@(r0,r14)
	mov.w @(0x84,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c07285a
	mov 0x22,r0
	mov.b @(r0,r14),r3
	neg r3,r3
	add 0x20,r3
	mov.b r3,@(r0,r14)
	mov 0x1F,r3
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)

loc_8c07285a:
	mov 0x21,r0
	mov.l @(0x84,PC),r3
	mov.b @(r0,r14),r6
	mov 0x17,r5
	mov.l @(0x7C,PC),r0
	extu.b r6,r6
	mov.b @(r0,r6),r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c072876:
	mov.l r14,@-r15
	mov 0x24,r0
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov.l @(0x60,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c07289c
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov.w @(0x32,PC),r0
	fmov @(r0,r13),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0728a4

loc_8c07289c:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	bra loc_8c0728ba
	mov.b r0,@(0x4,r14)

loc_8c0728a4:
	mov.b @(0x5,r14),r0
	mov r13,r5
	lds.l @r15+,pr
	mov.l @(0x40,PC),r1
	extu.b r0,r0
	shll2 r0
	mov r14,r4
	mov.l @r15+,r13
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c0728ba:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0728c2:
	#data 0x01a1
loc_8c0728c4:
	#data 0x01ac
loc_8c0728c6:
	#data 0x019c
loc_8c0728c8:
	#data 0x0130
loc_8c0728ca:
	#data 0x041c
	#align4
loc_8c0728cc:
	#data 0x8c2896b0
loc_8c0728d0:
	#data bank15.loc_8c1534dc
loc_8c0728d4:
	#data 0x40092492
loc_8c0728d8:
	#data 0x3fd55555
loc_8c0728dc:
	#data bank15.loc_8c153518
loc_8c0728e0:
	#data bank15.loc_8c1534cc
loc_8c0728e4:
	#data bank03.loc_8c034e8c
loc_8c0728e8:
	#data bank03.loc_8c03340c
loc_8c0728ec:
	#data bank15.loc_8c153540

;==============================================
loc_8c0728f0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x50,PC),r3
	mov.w @(0x44,PC),r5
	jsr @r3
	mov r4,r14
	mov.l @(0x4C,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x34,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c072918
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c07291e

loc_8c072918:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c07291e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c072924:
	mov.w @(0x1C,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c072932:
	mov.w @(0xE,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.l @(0x18,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07293e:
	#data 0x02bc
loc_8c072940:
	#data 0x019e
loc_8c072942:
	#data 0x019f
loc_8c072944:
	#data 0x012c
	#align4
loc_8c072948:
	#data bank03.loc_8c033674
loc_8c07294c:
	#data bank03.loc_8c034dee
loc_8c072950:
	#data bank04.loc_8c045748
loc_8c072954:
	#data bank04.loc_8c0450c0

;==============================================
;Unused
loc_8c072958:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.l @(0x144,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0729a0
	mov r0,r4
	mov.w @(0x120,PC),r2
	mov 0x26,r0
	mov.l @(0x130,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0x118,PC),r5
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
	mov.w @(0x102,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@r5

loc_8c0729a0:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0729ac:
	mov.l r14,@-r15
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(0xFC,PC),r0
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0729c2:
	mov r4,r3
	mov.l @(0xF0,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0729d4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0xC2,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xBA,PC),r2
	add 0x01,r0
	mov.l @(0xD0,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xB4,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xB0,PC),r0
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
	mov.w @(0x94,PC),r0
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
	mov.l @(0x98,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov.w @(0x6E,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	mov.l @(0x80,PC),r4
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	shll r0
	mov.w @(r0,r4),r3
	mova @(0x74,PC),r0
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
	mova @(0x58,PC),r0
	fmov @r0,fr1
	mov 0x60,r0
	float fpul,fr3
	fmul fr1,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x2A,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8c072a8c
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c072a8c:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c072ad0
	mov.w @(0x8,PC),r0
	mov 0x18,r3
	bra loc_8c072ad6
	mov.b r3,@(r0,r14)

;##############################################
loc_8c072a9c:
	#data 0x0f00
loc_8c072a9e:
	#data 0x00cc
loc_8c072aa0:
	#data 0x0158
loc_8c072aa2:
	#data 0x00dc
loc_8c072aa4:
	#data 0x00c0
loc_8c072aa6:
	#data 0x012c
loc_8c072aa8:
	#data 0x01a3
loc_8c072aaa:
	#data 0x0130
	#align4
loc_8c072aac:
	#data bank04.loc_8c044f12
loc_8c072ab0:
	#data loc_8c0729ac
loc_8c072ab4:
	#data bank15.loc_8c153558
loc_8c072ab8:
	#data bank15.loc_8c153560
loc_8c072abc:
	#data bank12.loc_8c129560
loc_8c072ac0:
	#data bank12.loc_8c1294c8
loc_8c072ac4:
	#data bank15.loc_8c153544
loc_8c072ac8:
	#data 0x3fd55555
loc_8c072acc:
	#data 0x40092492

;----------------------------------------------
loc_8c072ad0:
	mov.w @(0x9A,PC),r0
	mov 0x10,r1
	mov.b r1,@(r0,r14)

loc_8c072ad6:
	mov.w @(0x94,PC),r0
	mov 0x17,r5
	mov.l @(0x98,PC),r3
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c072aec:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x7C,PC),r4
	mov.w @(0x78,PC),r0
	add r14,r4
	mov.w @r4,r2
	mov.w @(r0,r5),r3
	cmp/eq r2,r3
	bt loc_8c072b08
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	rts
	mov.l @r15+,r14

loc_8c072b08:
	mov 0x24,r0
	mov.l @(0x6C,PC),r1
	mov.b @(r0,r5),r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;Unused return
loc_8c072b36:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c072b3a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x3C,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c072b56
	mov.w @(0x24,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c072b56:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c072b5c:
	mov r4,r3
	mov.l @(0x20,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c072b6e:
	#data 0x0158
loc_8c072b70:
	#data 0x00cc
loc_8c072b72:
	#data 0x012c
	#align4
loc_8c072b74:
	#data bank03.loc_8c034e8c
loc_8c072b78:
	#data bank15.loc_8c153570
loc_8c072b7c:
	#data bank03.loc_8c034dee
loc_8c072b80:
	#data bank15.loc_8c153574

;==============================================
loc_8c072b84:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x104,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xFC,PC),r2
	add 0x01,r0
	mov.l @(0x104,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0xF6,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0xF2,PC),r0
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
	mov.w @(0xD6,PC),r0
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
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0xC8,PC),r6
	mov.b @(r0,r13),r2
	mov 0x00,r5
	mov.b r2,@(r0,r14)
	mov.w @(0xAE,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	shll r0
	mov.w @(r0,r6),r4
	mova @(0xA0,PC),r0
	fmov @r0,fr2
	lds r4,fpul
	mov.w @(0x8A,PC),r0
	float fpul,fr3
	mov.w @(r0,r13),r3
	tst r3,r3
	fmul fr2,fr3
	ftrc fr3,fpul
	bt.s loc_8c072c20
	sts fpul,r4
	neg r4,r4

loc_8c072c20:
	exts.w r4,r4
	mov r14,r2
	lds r4,fpul
	mov 0x34,r0
	fmov @(r0,r14),fr2
	mov 0x21,r3
	add r14,r3
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	add r0,r2
	mov.l r2,@-r15
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r6
	mov.w @(0x2,r6),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	mova @(0x60,PC),r0
	fmov @r0,fr0
	mov 0x21,r0
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	mov.b @(r0,r14),r2
	mov.l @(0x54,PC),r0
	extu.b r2,r2
	mov.b @(r0,r2),r3
	mov 0x22,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x32,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c072c80
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov 0x1F,r3
	neg r2,r2
	add 0x20,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)

loc_8c072c80:
	mov 0x21,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c072cb8
	mov.w @(0xE,PC),r0
	mov.b @(r0,r13),r1
	add 0xFE,r0
	add 0x32,r1
	bra loc_8c072cc2
	mov.b r1,@(r0,r14)

;##############################################
loc_8c072c94:
	#data 0x00dc
loc_8c072c96:
	#data 0x00c0
loc_8c072c98:
	#data 0x012c
loc_8c072c9a:
	#data 0x01a3
loc_8c072c9c:
	#data 0x0130
	#align4
loc_8c072ca0:
	#data bank12.loc_8c129560
loc_8c072ca4:
	#data bank12.loc_8c1294c8
loc_8c072ca8:
	#data bank15.loc_8c15354e
loc_8c072cac:
	#data 0x3fd55555
loc_8c072cb0:
	#data 0x40092492
loc_8c072cb4:
	#data bank15.loc_8c15354c

;----------------------------------------------
loc_8c072cb8:
	mov.w @(0xDE,PC),r0
	mov.b @(r0,r13),r3
	add 0xFE,r0
	add 0x34,r3
	mov.b r3,@(r0,r14)

loc_8c072cc2:
	mov.w @(0xD6,PC),r0
	mov 0x42,r4
	mov.l @(0xE8,PC),r3
	mov 0x17,r6
	mov.w r5,@(r0,r14)
	add 0xF2,r0
	mov.b r5,@(r0,r14)
	add 0x26,r0
	mov.l r5,@(r0,r14)
	mov r6,r5
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.l @(0xD4,PC),r3
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xB2,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c072cfe:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x9A,PC),r4
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x96,PC),r0
	add r14,r4
	sts.l pr,@-r15
	mov.w @r4,r2
	mov.w @(r0,r13),r3
	cmp/eq r2,r3
	bf loc_8c072d2c
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c072d2c
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov.w @(0x7C,PC),r0
	fmov @(r0,r13),fr2
	fcmp/gt fr3,fr2
	bf loc_8c072d34

loc_8c072d2c:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	bra loc_8c072d4a
	mov.b r0,@(0x4,r14)

loc_8c072d34:
	mov.b @(0x5,r14),r0
	mov r13,r5
	lds.l @r15+,pr
	mov.l @(0x80,PC),r1
	extu.b r0,r0
	shll2 r0
	mov r14,r4
	mov.l @r15+,r13
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c072d4a:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c072d52:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x68,PC),r3
	mov.w @(0x4A,PC),r5
	jsr @r3
	mov r4,r14
	mov.l @(0x64,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x40,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c072d74
	mov.w @(0x3A,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c072d7a

loc_8c072d74:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c072d7a:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c072d80:
	mov.w @(0x28,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c072d8e:
	mov.w @(0x1A,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.l @(0x30,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c072d9a:
	#data 0x01a3
loc_8c072d9c:
	#data 0x01ac
loc_8c072d9e:
	#data 0x019c
loc_8c072da0:
	#data 0x00cc
loc_8c072da2:
	#data 0x0158
loc_8c072da4:
	#data 0x041c
loc_8c072da6:
	#data 0x0640
loc_8c072da8:
	#data 0x019e
loc_8c072daa:
	#data 0x019f
loc_8c072dac:
	#data 0x012c
	#align4
loc_8c072db0:
	#data 0x8c2896b0
loc_8c072db4:
	#data bank03.loc_8c034e8c
loc_8c072db8:
	#data bank03.loc_8c03340c
loc_8c072dbc:
	#data bank15.loc_8c153584
loc_8c072dc0:
	#data bank03.loc_8c033674
loc_8c072dc4:
	#data bank04.loc_8c045748
loc_8c072dc8:
	#data bank04.loc_8c0450c0

;==============================================
;Unused
loc_8c072dcc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.l @(0xCC,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c072e14
	mov r0,r4
	mov.w @(0xB2,PC),r2
	mov 0x26,r0
	mov.l @(0xB8,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0xAA,PC),r5
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
	mov.w @(0x94,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@r5

loc_8c072e14:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c072e20:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.l @(0x78,PC),r3
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x01,r6
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c072e6e
	mov r0,r4
	mov.w @(0x5E,PC),r2
	mov 0x26,r0
	mov.l @(0x64,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0x56,PC),r6
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	add r14,r6
	mov.l @(0x18,r14),r3
	mov.w @(0x4C,PC),r5
	mov.l r3,@(0x18,r4)
	add r4,r5
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.w @r6,r3
	mov.w r3,@r5

loc_8c072e6e:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c072e7a:
	mov.l r14,@-r15
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(0x2C,PC),r0
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c072e90:
	mov r4,r3
	mov.l @(0x20,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c072ea2:
	#data 0x0f04
loc_8c072ea4:
	#data 0x00cc
loc_8c072ea6:
	#data 0x0158
	#align4
loc_8c072ea8:
	#data bank04.loc_8c044f12
loc_8c072eac:
	#data loc_8c072e7a
loc_8c072eb0:
	#data bank15.loc_8c15358c
loc_8c072eb4:
	#data bank15.loc_8c153598

;==============================================
loc_8c072eb8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.w @(0x150,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x148,PC),r2
	add 0x01,r0
	mov.l @(0x158,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x142,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x13E,PC),r0
	mov 0x01,r12
	mov r14,r1
	add 0x50,r1
	mov.b r12,@(r0,r14)
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
	mov.w @(0x122,PC),r0
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
	mov.l @(0x11C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov 0x00,r4
	mov.b r2,@(r0,r14)
	mov.w @(0xFA,PC),r0
	mov.b r12,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	mov 0x0E,r3
	fmov fr3,@(r0,r14)
	mov.w @(0xEE,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xF4,PC),r3
	mov.l r4,@(r0,r14)
	mov 0x42,r4
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xCC,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.l @(0xDC,PC),r2
	mov 0x17,r5
	mov.b r4,@(r0,r14)
	mov 0x14,r6
	jsr @r2
	mov r14,r4
	mov r12,r0
	nop
	mov r13,r5
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c072f74:
	mov 0x24,r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(0xB8,PC),r1
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c072f8e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c073308
	mov r4,r14
	mov 0x02,r5
	mov 0x00,r6
	bsr loc_8c072e20
	mov r14,r4
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c072faa:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0x6C,PC),r3
	mov r4,r14
	mov.w @(0x6A,PC),r2
	mov r5,r13
	add r13,r3
	mov r13,r5
	add r14,r2
	mov.l r3,@(0x4,r15)
	mov.l r2,@r15
	bsr loc_8c073308
	mov r14,r4
	mov.l @(0x70,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x1C,r14),r0
	mov 0x03,r6
	mov 0x01,r5
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1C,r14),r0
	and r0,r6
	bsr loc_8c072e20
	mov r14,r4
	mov.l @(0x4,r15),r2
	mov.b @(0x8,r2),r0
	tst r0,r0
	bf loc_8c072ff4
	mov.l @r15,r2
	mov.w @(0x38,PC),r0
	mov.w @r2,r1
	mov.w @(r0,r13),r3
	cmp/eq r1,r3
	bt loc_8c07300c

loc_8c072ff4:
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov r14,r4
	mov 0x15,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c07300c:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c073016:
	#data 0x00dc
loc_8c073018:
	#data 0x00c0
loc_8c07301a:
	#data 0x012c
loc_8c07301c:
	#data 0x01a3
loc_8c07301e:
	#data 0x01a1
loc_8c073020:
	#data 0x019c
loc_8c073022:
	#data 0x02a4
loc_8c073024:
	#data 0x00cc
loc_8c073026:
	#data 0x0158
	#align4
loc_8c073028:
	#data bank12.loc_8c129560
loc_8c07302c:
	#data bank12.loc_8c1294c8
loc_8c073030:
	#data 0x8c2896b0
loc_8c073034:
	#data bank03.loc_8c034e8c
loc_8c073038:
	#data bank15.loc_8c1535a8
loc_8c07303c:
	#data bank03.loc_8c034dee

;==============================================
loc_8c073040:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x140,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c073068
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0732bc
	mov.l @r15+,r14

loc_8c073068:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c073070:
	mov r4,r3
	mov.l @(0x118,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c073082:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(0xE8,PC),r1
	mov.w @(0xE6,PC),r2
	mov.l @(0x100,PC),r3
	add r14,r1
	mov.l r5,@r15
	mov.b @(0x4,r14),r0
	mov.l @(0x14,r14),r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xD8,PC),r0
	jsr @r3
	add r4,r2
	mov.w @(0xD4,PC),r0
	mov 0x01,r5
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
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
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r4),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov 0x0E,r2
	mov.w @(0x90,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x00,r5
	mov.w @(0x8A,PC),r0
	mov.l @(0xA4,PC),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
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
	mov.w r1,@(r0,r2)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf.s loc_8c073122
	mov 0x42,r5
	mov.w @(0x60,PC),r0
	bra loc_8c073128
	mov.b r5,@(r0,r14)

loc_8c073122:
	mov.w @(0x5A,PC),r0
	mov 0x60,r1
	mov.b r1,@(r0,r14)

loc_8c073128:
	mov.w @(0x56,PC),r0
	mov 0x0D,r3
	mov.b r5,@(r0,r14)
	add 0xA2,r0
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x38,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c07315a
	mov.l @(0x48,PC),r1
	mov 0x34,r0
	lds r1,fpul
	bra loc_8c073162
	fsts fpul,fr3

loc_8c07315a:
	mov.l @(0x44,PC),r1
	mov 0x34,r0
	lds r1,fpul
	fsts fpul,fr3

loc_8c073162:
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x18,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c0731a8
	mova @(0x30,PC),r0
	bra loc_8c0731ac
	fmov @r0,fr3

;##############################################
loc_8c073176:
	#data 0x00dc
loc_8c073178:
	#data 0x00c0
loc_8c07317a:
	#data 0x012c
loc_8c07317c:
	#data 0x01a3
loc_8c07317e:
	#data 0x01a1
loc_8c073180:
	#data 0x019c
loc_8c073182:
	#data 0x019d
loc_8c073184:
	#data 0x0130
	#align4
loc_8c073188:
	#data bank03.loc_8c034dee
loc_8c07318c:
	#data bank15.loc_8c1535b4
loc_8c073190:
	#data bank12.loc_8c129560
loc_8c073194:
	#data bank12.loc_8c1294c8
loc_8c073198:
	#data 0x8c2896b0
loc_8c07319c:
	#data 0xc2555555
loc_8c0731a0:
	#data 0x42555555
loc_8c0731a4:
	#data 0xc1c80000

;----------------------------------------------
loc_8c0731a8:
	mova @(0x140,PC),r0
	fmov @r0,fr3

loc_8c0731ac:
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf.s loc_8c0731c6
	mov 0x17,r5
	bra loc_8c0731c8
	mov 0x12,r6

loc_8c0731c6:
	mov 0x14,r6

loc_8c0731c8:
	mov.l @(0x124,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8c0731d8:
	mov 0x24,r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(0x110,PC),r1
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0731f2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x68,r1
	mov r4,r14
	add r14,r1
	mov.w @(0xDE,PC),r3
	mov 0x5C,r0
	mov r5,r13
	add r13,r3
	mov.l r3,@(0x4,r15)
	mov.w @(0xD6,PC),r3
	mov.l @(0x14,r14),r5
	add r14,r3
	mov.l r3,@r15
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	bsr loc_8c073340
	mov r14,r4
	mov.l @(0xD8,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(0xD4,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x4,r15),r2
	mov.b @(0x8,r2),r0
	tst r0,r0
	bf loc_8c07323e
	mov.l @r15,r2
	mov.w @(0xAE,PC),r0
	mov.w @r2,r1
	mov.w @(r0,r13),r3
	cmp/eq r1,r3
	bt loc_8c073264

loc_8c07323e:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf.s loc_8c073254
	mov 0x17,r5
	bra loc_8c073256
	mov 0x13,r6

loc_8c073254:
	mov 0x15,r6

loc_8c073256:
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0x90,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c073264:
	mov.l @(0x98,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c073282
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov r13,r5
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0732ca
	mov.l @r15+,r14

loc_8c073282:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07328c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x64,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0732b4
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0732ca
	mov.l @r15+,r14

loc_8c0732b4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0732bc:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x20,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c0732ca:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x12,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c0732d8:
	mov.l @(0x28,PC),r3
	mov 0x00,r2
	mov.w @(0x8,PC),r0
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0732e2:
	#data 0x02a4
loc_8c0732e4:
	#data 0x00cc
loc_8c0732e6:
	#data 0x0158
loc_8c0732e8:
	#data 0x012c
	#align4
loc_8c0732ec:
	#data 0x41c80000
loc_8c0732f0:
	#data bank03.loc_8c034e8c
loc_8c0732f4:
	#data bank15.loc_8c1535c4
loc_8c0732f8:
	#data bank03.loc_8c034dee
loc_8c0732fc:
	#data bank04.loc_8c045748
loc_8c073300:
	#data bank03.loc_8c03340c
loc_8c073304:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c073308:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mova @(loc_8c073384,PC),r0
	fmov @r0,fr4
	mov.w @(loc_8c073382,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c073328
	mov 0x34,r0
	fmov @(r0,r4),fr3
	bra loc_8c07332e
	fadd fr4,fr3

loc_8c073328:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	fsub fr4,fr3

loc_8c07332e:
	mov.l @(loc_8c073388,PC),r1
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	rts
	fmov fr2,@(r0,r4)

;==============================================
loc_8c073340:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c073364
	mov.w @(loc_8c073382,PC),r0
	mov.w @(r0,r4),r2
	bra loc_8c07336a
	tst r2,r2

loc_8c073364:
	mov.w @(loc_8c073382,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2

loc_8c07336a:
	mov 0x34,r0
	fldi0 fr3
	fmov @(r0,r4),fr2
	mov 0x5C,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	rts
	fmov fr2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c073382:
	#data 0x0130
	#align4
loc_8c073384:
	#data 0xc353aaaa
loc_8c073388:
	#data 0x434db6db

;==============================================
;unused
loc_8c07338c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.l @(0x74,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0733d4
	mov r0,r4
	mov.w @(0x58,PC),r2
	mov 0x26,r0
	mov.l @(0x60,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.w @(0x50,PC),r5
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
	mov.w @(0x3A,PC),r0
	mov.w @(r0,r14),r3
	mov.w r3,@r5

loc_8c0733d4:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0733e0:
	mov.l r14,@-r15
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(0x2C,PC),r0
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0733f6:
	mov r4,r3
	mov.l @(0x20,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c073408:
	#data 0x0f01
loc_8c07340a:
	#data 0x00cc
loc_8c07340c:
	#data 0x0158
	#align4
loc_8c073410:
	#data bank04.loc_8c044f12
loc_8c073414:
	#data loc_8c0733e0
loc_8c073418:
	#data bank15.loc_8c1535d4
loc_8c07341c:
	#data bank15.loc_8c1535d8

;==============================================
loc_8c073420:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.w @(0x164,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x15A,PC),r12
	add 0x01,r0
	mov.w @(0x158,PC),r2
	mov.b r0,@(0x4,r14)
	add r14,r12
	mov.l @(0x164,PC),r3
	mov.w @(0x152,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x14E,PC),r0
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
	mov.w @(0x132,PC),r0
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
	mov.l @(0x12C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov 0x00,r11
	mov.b r2,@(r0,r14)
	mov 0x10,r2
	mov.w @(0x108,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x36,r3
	mov.w @(0x102,PC),r0
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	add 0x65,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r11,@(r0,r14)
	add 0xF2,r0
	mov.b r11,@(r0,r14)
	add 0x26,r0
	mov.l @(0xF4,PC),r3
	mov.l r11,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	add 0x7C,r2
	shll r0
	mov.w @(r0,r2),r1
	mov 0x44,r4
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xD0,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov 0x03,r4
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and r0,r4
	mov.l @(0xC0,PC),r0
	shll r4
	mov.w @(r0,r4),r2
	mova @(0xBC,PC),r0
	fmov @r0,fr2
	lds r2,fpul
	float fpul,fr3
	fmul fr2,fr3
	ftrc fr3,fpul
	mov.w @(0x9C,PC),r0
	mov.w @(r0,r13),r2
	tst r2,r2
	bt.s loc_8c07350c
	sts fpul,r4
	neg r4,r4

loc_8c07350c:
	exts.w r4,r4
	lds r4,fpul
	mov 0x34,r0
	fmov @(r0,r14),fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x9C,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x98,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mova @(0x94,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x64,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8c073550
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8c073550:
	mov.l @(0x70,PC),r3
	jsr @r3
	nop
	mov.l @(0x70,PC),r2
	mov 0x0F,r7
	mov 0x17,r5
	and r0,r7
	mov 0x16,r6
	jsr @r2
	mov r14,r4
	mov r11,r0
	nop
	mov.b r0,@(0x8,r12)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov 0x04,r0
	mov r13,r5
	mov r14,r4
	fmov fr3,@(r0,r12)
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c073580:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x5,r14),r0
	mov.l @(0x44,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c073592:
	#data 0x00cc
loc_8c073594:
	#data 0x00dc
loc_8c073596:
	#data 0x00c0
loc_8c073598:
	#data 0x012c
loc_8c07359a:
	#data 0x01a3
loc_8c07359c:
	#data 0x013f
loc_8c07359e:
	#data 0x019c
loc_8c0735a0:
	#data 0x0130
	#align4
loc_8c0735a4:
	#data bank12.loc_8c129560
loc_8c0735a8:
	#data bank12.loc_8c1294c8
loc_8c0735ac:
	#data 0x8c2896b0
loc_8c0735b0:
	#data bank15.loc_8c1535cc
loc_8c0735b4:
	#data 0x3fd55555
loc_8c0735b8:
	#data 0xc2555555
loc_8c0735bc:
	#data 0x40d55555
loc_8c0735c0:
	#data 0x40ab6db6
loc_8c0735c4:
	#data bank03.loc_8c03319e
loc_8c0735c8:
	#data bank03.loc_8c034f54
loc_8c0735cc:
	#data bank15.loc_8c1535e8

;##############################################
loc_8c0735d0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x5C,r1
	mov r4,r14
	mov 0x34,r0
	mov.w @(0x100,PC),r3
	add r14,r1
	mov.w @(0xFE,PC),r2
	mov r5,r13
	add r13,r3
	add r14,r2
	mov.l r3,@r15
	mov.l r2,@(0x4,r15)
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
	mov r13,r5
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	bsr loc_8c0737c0
	mov r14,r4
	mov.w @(0xBC,PC),r0
	mov.l @(0x4,r15),r3
	mov.b @(r0,r13),r2
	mov.b @(0x1,r3),r0
	cmp/eq r0,r2
	bf loc_8c07363a
	mov.w @(0xB2,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c073642

loc_8c07363a:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	bra loc_8c07366c
	mov.b r0,@(0x4,r14)

loc_8c073642:
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @r15,r2
	mov.b @(0x9,r2),r0
	tst r0,r0
	bt loc_8c07366c
	mov.b @(0x5,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	add 0x1E,r0
	mov.w r0,@(0x1C,r14)

loc_8c07366c:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c073676:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1
	mov r4,r14
	mov 0x34,r0
	mov.w @(0x5C,PC),r3
	add r14,r1
	mov r5,r13
	add r14,r3
	mov.l r3,@r15
	fmov @r1,fr3
	mov 0x68,r1
	fmov @(r0,r14),fr2
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
	mov r13,r5
	fmov fr2,@(r0,r14)
	bsr loc_8c0737c0
	mov r14,r4
	mov.w @(0x1C,PC),r0
	mov.l @r15,r3
	mov.b @(r0,r13),r2
	mov.b @(0x1,r3),r0
	cmp/eq r0,r2
	bf loc_8c0736da
	mov.w @(0x12,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0736f0

loc_8c0736da:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	bra loc_8c07375c
	mov.b r0,@(0x4,r14)

;##############################################
loc_8c0736e2:
	#data 0x02a4
loc_8c0736e4:
	#data 0x00cc
loc_8c0736e6:
	#data 0x0159
loc_8c0736e8:
	#data 0x019f
	#align4
loc_8c0736ec:
	#data bank04.loc_8c045748

;==============================================
loc_8c0736f0:
	mov.l @(0x120,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07375c
	mov.b @(0x5,r14),r0
	mov 0x36,r3
	mov 0x00,r4
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xF2,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xF8,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x5C,r0
	mov.l @(0xE4,PC),r2
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	jsr @r2
	fmov fr4,@(r0,r14)
	mov 0x03,r4
	and r0,r4
	mov.w @(0xC2,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bf.s loc_8c073750
	mov 0x22,r0
	bra loc_8c073752
	add 0x17,r4

loc_8c073750:
	add 0x06,r4

loc_8c073752:
	mov 0x1F,r3
	mov.b r4,@(r0,r14)
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)

loc_8c07375c:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c073766:

	mov 0x24,r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r5),r3
	mov.w @(0x96,PC),r5
	mov.b r3,@(r0,r14)
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x8E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c07379a
	mov.l @(0x90,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x82,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c07379a
	mov.l @(0x90,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0737a0

loc_8c07379a:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c0737a0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0737a6:
	mov.w @(0x66,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x4,r4)

;==============================================
loc_8c0737b4:
	mov.w @(0x58,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.l @(0x6C,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c0737c0:
	mov 0x68,r0
	mov.w @(0x4C,PC),r5
	fmov @(r0,r4),fr3
	mov 0x5C,r0
	fmov @(r0,r4),fr2
	fmul fr3,fr2
	fldi0 fr3
	fcmp/gt fr3,fr2
	bf.s loc_8c0737ee
	add r4,r5
	mov 0x04,r0
	fmov @(r0,r5),fr2
	fneg fr2
	fmov fr2,@(r0,r5)
	mov 0x5C,r0
	fmov fr2,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr2
	fneg fr2
	fmov fr2,@(r0,r4)
	mov.b @(0x8,r5),r0
	xor 0x01,r0
	mov.b r0,@(0x8,r5)

loc_8c0737ee:
	mov.b @(0x8,r5),r0
	tst r0,r0
	bf loc_8c0737fc
	mov 0x24,r0
	mov 0x00,r3
	bra loc_8c073802
	mov.b r3,@(r0,r4)

loc_8c0737fc:
	mov 0x24,r0
	mov 0x07,r1
	mov.b r1,@(r0,r4)

loc_8c073802:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c073806:
	#data 0x01a1
loc_8c073808:
	#data 0x0130
loc_8c07380a:
	#data 0x0320
loc_8c07380c:
	#data 0x019f
loc_8c07380e:
	#data 0x019e
loc_8c073810:
	#data 0x012c
loc_8c073812:
	#data 0x00cc
	#align4
loc_8c073814:
	#data bank04.loc_8c045748
loc_8c073818:
	#data 0x8c2896b0
loc_8c07381c:
	#data bank03.loc_8c03319e
loc_8c073820:
	#data bank03.loc_8c033674
loc_8c073824:
	#data bank03.loc_8c03340c
loc_8c073828:
	#data bank04.loc_8c0450c0

;==============================================
;unused
loc_8c07382c:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x11C,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c073852
	mov r0,r4
	mov.l @(0x10C,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c073852:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c07385a:
	mov r4,r3
	mov.l @(0xF8,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c07386c:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xCE,PC),r3
	mov.l r13,@-r15
	mov.w @(0xCC,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xC4,PC),r2
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x4,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	mov.w @(0xBA,PC),r0
	mov.l @(0xD0,PC),r3
	jsr @r3
	add r4,r2
	mov.w @(0xB4,PC),r0
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
	mov.w @(0x98,PC),r0
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
	mov.l @(0x98,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x94,PC),r3
	mov.b @(r0,r4),r2
	mov 0x30,r5
	mov 0x24,r1
	mov.b r2,@(r0,r14)
	add r14,r1
	mov.w @(0x70,PC),r0
	mov r4,r2
	add 0x34,r2
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov 0x10,r5
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1C,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r13
	extu.b r13,r13
	shll2 r13
	shll2 r13
	add r3,r13
	mov.l @(0x60,PC),r3
	mov.b @(0xC,r13),r0
	mov.b r0,@r1
	mov r14,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mova @(0x58,PC),r0
	fmov @r0,fr5
	mova @(0x58,PC),r0
	fmov @r0,fr4
	mov.w @(0x36,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c073970
	mov r14,r2
	mov 0x34,r0
	add r0,r2
	fmov fr4,fr0
	mov.l r2,@-r15
	mov.w @(0x8,r13),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	mov.l @r13,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr4,fr3
	bra loc_8c073990
	fdiv fr5,fr3

;##############################################
loc_8c073942:
	#data 0x1000
loc_8c073944:
	#data 0x00dc
loc_8c073946:
	#data 0x00c0
loc_8c073948:
	#data 0x012c
loc_8c07394a:
	#data 0x01a3
loc_8c07394c:
	#data 0x013c
loc_8c07394e:
	#data 0x0130
	#align4
loc_8c073950:
	#data bank04.loc_8c044f12
loc_8c073954:
	#data loc_8c07385a
loc_8c073958:
	#data bank15.loc_8c153634
loc_8c07395c:
	#data bank12.loc_8c129560
loc_8c073960:
	#data bank12.loc_8c1294c8
loc_8c073964:
	#data bank15.loc_8c1535f4
loc_8c073968:
	#data 0x47800000
loc_8c07396c:
	#data 0x3fd55555

;----------------------------------------------
loc_8c073970:
	mov.w @(0x8,r13),r0
	mov 0x34,r2
	add r14,r2
	mov r0,r3
	lds r3,fpul
	fmov @r2,fr2
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2
	fmov fr2,@r2
	mov.l @r13,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fneg fr3

loc_8c073990:
	mov 0x5C,r0
	mov r14,r2
	fmov fr3,@(r0,r14)
	mova @(0x150,PC),r0
	fmov @r0,fr5
	mov 0x38,r0
	add r0,r2
	fldi0 fr4
	mov.l r2,@-r15
	mov 0x42,r2
	mov.w @(0xA,r13),r0
	fmov fr5,fr0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	mov 0x68,r0
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	mov.l @(0x4,r13),r3
	lds r3,fpul
	mov 0x43,r3
	float fpul,fr3
	fmul fr5,fr3
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x10E,PC),r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.w @(0x10A,PC),r1
	mov.b r2,@(r0,r14)
	mov 0x00,r4
	mov.b @(0xF,r13),r0
	add r14,r1
	mov.l @(0x10C,PC),r3
	mov 0x17,r5
	mov.b r0,@r1
	mov.w @(0xFC,PC),r0
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
	mov.b @(0xE,r13),r0
	mov.l @(0xEC,PC),r2
	mov r0,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c073a10:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r5
	mov 0x02,r3
	mov.b @(0x4,r5),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c073a30
	mov.b @(0x4,r14),r0
	mov 0x00,r2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xB8,PC),r0
	mov.b r2,@(r0,r14)
	rts
	mov.l @r15+,r14

loc_8c073a30:
	mov 0x20,r0
	mov r14,r4
	mov.b @(r0,r14),r3
	mov.l @(0xBC,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;unused return
loc_8c073a42:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c073a46:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0xA8,PC),r3
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
	bt loc_8c073a82
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c073a94

loc_8c073a82:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x56,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c073a94:
	mova @(0x68,PC),r0
	mov r14,r4
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0x50,PC),r0
	mov.l @(0x54,PC),r3
	fmov @r0,fr2
	float fpul,fr3
	mov.w @(0x2A,PC),r0
	fmul fr2,fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c073aca:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xE,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c073ad8:
	mov.l @(0x30,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c073ade:
	#data 0x019c
loc_8c073ae0:
	#data 0x01a1
loc_8c073ae2:
	#data 0x01ac
loc_8c073ae4:
	#data 0x012c
loc_8c073ae6:
	#data 0x0108
#align4
loc_8c073ae8:
	#data 0x40092492
loc_8c073aec:
	#data 0x8c2896b0
loc_8c073af0:
	#data bank03.loc_8c034e8c
loc_8c073af4:
	#data bank15.loc_8c153644
loc_8c073af8:
	#data bank03.loc_8c034dee
loc_8c073afc:
	#data bank03.loc_8c03340c
loc_8c073b00:
	#data 0x3c23d70a
loc_8c073b04:
	#data 0x3d088889
loc_8c073b08:
	#data bank04.loc_8c045748
loc_8c073b0c:
	#data bank04.loc_8c0450c0

;==============================================
;no ref
loc_8c073b10:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x12C,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c073b48
	mov r0,r4
	mov.l @(0x11C,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w @(0x100,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov.l @r15,r5
	add r3,r5
	mov.b @(0x5,r5),r0
	add 0x01,r0
	mov.b r0,@(0x5,r5)

loc_8c073b48:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0


;==============================================
loc_8c073b50:
	mov r4,r3
	mov.l @(0xFC,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c073b62:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xD0,PC),r3
	mov.l r13,@-r15
	mov.w @(0xCE,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xC6,PC),r2
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x4,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	mov.w @(0xBC,PC),r0
	mov.l @(0xD0,PC),r3
	jsr @r3
	add r4,r2
	mov.w @(0xB6,PC),r0
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
	mov.w @(0x9A,PC),r0
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
	mov.l @(0x9C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r4),r2
	mov 0x20,r5
	mov.b r2,@(r0,r14)
	mov.w @(0x78,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov r5,r0
	nop
	mov.b @(r0,r14),r13
	mov 0x24,r1
	mov.l @(0x78,PC),r3
	add r14,r1
	extu.b r13,r13
	mov r4,r2
	shll2 r13
	shll2 r13
	add r3,r13
	mov.l @(0x68,PC),r3
	mov.b @(0xC,r13),r0
	add 0x34,r2
	mov.b r0,@r1
	mov r14,r1
	mov.b @(0xD,r13),r0
	add 0x34,r1
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov 0x0C,r0
	mova @(0x5C,PC),r0
	fmov @r0,fr5
	mova @(0x5C,PC),r0
	fmov @r0,fr4
	mov.w @(0x38,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c073c68
	mov r14,r2
	mov 0x34,r0
	add r0,r2
	fmov fr5,fr0
	mov.l r2,@-r15
	mov.w @(0x8,r13),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	mov.l @r13,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	bra loc_8c073c88
	fdiv fr4,fr3

;##############################################
loc_8c073c38:
	#data 0x02a4
loc_8c073c3a:
	#data 0x1001
loc_8c073c3c:
	#data 0x00dc
loc_8c073c3e:
	#data 0x00c0
loc_8c073c40:
	#data 0x012c
loc_8c073c42:
	#data 0x01a3
loc_8c073c44:
	#data 0x013c
loc_8c073c46:
	#data 0x0130
	#align4
loc_8c073c48:
	#data bank04.loc_8c044f12
loc_8c073c4c:
	#data loc_8c073b50
loc_8c073c50:
	#data bank15.loc_8c153674
loc_8c073c54:
	#data bank12.loc_8c129560
loc_8c073c58:
	#data bank12.loc_8c1294c8
loc_8c073c5c:
	#data bank15.loc_8c153654
loc_8c073c60:
	#data 0x3fd55555
loc_8c073c64:
	#data 0x47800000

;----------------------------------------------
loc_8c073c68:
	mov.w @(0x8,r13),r0
	mov 0x34,r2
	add r14,r2
	mov r0,r3
	lds r3,fpul
	fmov @r2,fr2
	float fpul,fr3
	fmul fr5,fr3
	fsub fr3,fr2
	fmov fr2,@r2
	mov.l @r13,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fneg fr3

loc_8c073c88:
	mov 0x5C,r0
	mov r14,r2
	fmov fr3,@(r0,r14)
	mova @(0x154,PC),r0
	fmov @r0,fr6
	mov 0x38,r0
	add r0,r2
	fldi0 fr5
	mov.l r2,@-r15
	mov 0x44,r4
	mov.w @(0xA,r13),r0
	fmov fr6,fr0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	mov 0x68,r0
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	fmov fr5,@(r0,r14)
	mov 0x60,r0
	mov.l @(0x4,r13),r3
	lds r3,fpul
	float fpul,fr3
	fmul fr6,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fmov fr5,@(r0,r14)
	mov.w @(0x114,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.w @(0x110,PC),r1
	mov.b r4,@(r0,r14)
	mov 0x00,r4
	mov.b @(0xF,r13),r0
	add r14,r1
	mov.l @(0x110,PC),r3
	mov 0x17,r5
	mov.b r0,@r1
	mov.w @(0x102,PC),r0
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
	mov.b @(0xE,r13),r0
	mov.l @(0xF0,PC),r2
	mov r0,r6
	jsr @r2
	mov r14,r4
	mov.l @(0xEC,PC),r2
	mov 0x01,r3
	mov.b r3,@r14
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c073d12:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r5
	mov 0x02,r3
	mov.b @(0x4,r5),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c073d32
	mov.b @(0x4,r14),r0
	mov 0x00,r2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xB4,PC),r0
	mov.b r2,@(r0,r14)
	rts
	mov.l @r15+,r14

loc_8c073d32:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0xBC,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14
	rts
	mov.l @r15+,r14

;==============================================
loc_8c073d46:
	mov r4,r3
	mov.l @(0xAC,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c073d58:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x9C,PC),r3
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
	bf loc_8c073dd2
	mov.b @(0x6,r14),r0
	mov 0x17,r5
	fldi1 fr4
	fadd fr4,fr4
	add 0x01,r0
	mov.l @(0x38,PC),r3
	mov.b r0,@(0x6,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov 0x1D,r6
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mova @(0x38,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8c073dd2:
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c073ddc:
	#data 0x019c
loc_8c073dde:
	#data 0x01a1
loc_8c073de0:
	#data 0x01ac
loc_8c073de2:
	#data 0x012c
	#align4
loc_8c073de4:
	#data 0x40092492
loc_8c073de8:
	#data 0x8c2896b0
loc_8c073dec:
	#data bank03.loc_8c034e8c
loc_8c073df0:
	#data bank10.loc_8c104434
loc_8c073df4:
	#data bank15.loc_8c153684
loc_8c073df8:
	#data bank15.loc_8c15368c
loc_8c073dfc:
	#data bank03.loc_8c034dee
loc_8c073e00:
	#data 0xbf4db6db
loc_8c073e04:
	#data bank04.loc_8c045748

;==============================================
loc_8c073e08:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x16C,PC),r3
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
	mova @(0x134,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt.s loc_8c073e68
	mov r14,r4
	mov.b @(0x6,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)

loc_8c073e68:
	lds.l @r15+,pr
	mov.l @(0x118,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c073e70:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x104,PC),r3
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
	mova @(0xCC,PC),r0
	fmov @r0,fr3
	mov.w @(0xB8,PC),r0
	mov.l @r15,r3
	fmov @(r0,r3),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bt loc_8c073eea
	mov.b @(0x6,r14),r0
	mov 0x17,r5
	mov r14,r4
	mov 0x1E,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mova @(0xB0,PC),r0
	fmov @r0,fr2
	mov 0x6C,r0
	fmov fr2,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xA8,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c073eea:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x90,PC),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c073ef6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov r5,r13
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
	mov.w @(0x38,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c073f70
	mov.b @(0x6,r14),r0
	mov 0x17,r5
	mov.l @(0x40,PC),r3
	mov 0x1F,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x20,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x16,PC),r4
	add r13,r4
	mov.b @(0x5,r4),r0
	tst r0,r0
	bt loc_8c073f70
	mov.b @(0x5,r4),r0
	add 0xFF,r0
	mov.b r0,@(0x5,r4)

loc_8c073f70:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c073f78:
	#data 0x041c
loc_8c073f7a:
	#data 0x02a4
	#align4
loc_8c073f7c:
	#data bank03.loc_8c034dee
loc_8c073f80:
	#data 0xc04db6db
loc_8c073f84:
	#data bank04.loc_8c045748
loc_8c073f88:
	#data 0x432b6db6
loc_8c073f8c:
	#data 0xbf4db6db
loc_8c073f90:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c073f94:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x12C,PC),r3
	mov 0x00,r13
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c073ffa
	mov.l @r15,r3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @(r0,r3),fr3
	fsub fr3,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf loc_8c073fc0
	mov 0x01,r13

loc_8c073fc0:
	mov.w @(0x104,PC),r0
	extu.b r13,r3
	mov.w @(r0,r14),r2
	cmp/eq r3,r2
	bf loc_8c073fdc
	mov 0x06,r0
	mov r14,r4
	mov.b r0,@(0x6,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c074034
	mov.l @r15+,r14

loc_8c073fdc:
	mov.b @(0x6,r14),r0
	extu.b r13,r13
	mov 0x17,r5
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x0E,r6
	mov.w @(0xDA,PC),r0
	mov.w r13,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xDC,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c073ffa:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c074004:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xC0,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c07402c
	mov.b @(0x6,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c074034
	mov.l @r15+,r14

loc_8c07402c:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c074034:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x80,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c074052
	mova @(0x84,PC),r0
	bra loc_8c074056
	fmov @r0,fr3

loc_8c074052:
	mova @(0x84,PC),r0
	fmov @r0,fr3

loc_8c074056:
	mov 0x5C,r0
	mov.l @(0x74,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	mov 0x17,r5
	fmov fr3,@(r0,r14)
	mov 0x0D,r6
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8c074074:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x50,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0x58,PC),r3
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
	bf loc_8c0740b0
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x1A,PC),r0
	mov.b r3,@(r0,r14)

loc_8c0740b0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0740b6:
	mov r4,r3
	mov.l @(0x24,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0740c8:
	#data 0x0130
loc_8c0740ca:
	#data 0x012c
	#align4
loc_8c0740cc:
	#data bank03.loc_8c034dee
loc_8c0740d0:
	#data bank03.loc_8c034e8c
loc_8c0740d4:
	#data 0xc0fd5555
loc_8c0740d8:
	#data 0x40fd5555
loc_8c0740dc:
	#data bank03.loc_8c03340c
loc_8c0740e0:
	#data bank15.loc_8c1536ac

;==============================================
loc_8c0740e4:
	mov.b @(0x6,r4),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)

loc_8c0740f4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x100,PC),r3
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
	bf loc_8c074172
	mov.b @(0x6,r14),r0
	mov r14,r4
	fldi1 fr4
	fadd fr4,fr4
	add 0x01,r0
	mov.l @(0xB4,PC),r3
	mov.b r0,@(0x6,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov 0x1D,r6
	mov 0x17,r5
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mova @(0x98,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c074172:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c074178:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x7C,PC),r3
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
	mova @(0x44,PC),r0
	fmov @r0,fr3
	mov.w @(0x32,PC),r0
	mov.l @r15,r3
	fmov @(r0,r3),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bt loc_8c0741f2
	mov.b @(0x6,r14),r0
	mov 0x17,r5
	mov r14,r4
	mov 0x1E,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mova @(0x1C,PC),r0
	fmov @r0,fr2
	mov 0x6C,r0
	fmov fr2,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x14,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c0741f2:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0741fa:
	#data 0x041c
	#align4
loc_8c0741fc:
	#data bank03.loc_8c034dee
loc_8c074200:
	#data 0xbf4db6db
loc_8c074204:
	#data bank03.loc_8c034e8c
loc_8c074208:
	#data 0x432b6db6

;==============================================
loc_8c07420c:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x13C,PC),r3
	jsr @r3
	mov r5,r13
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
	mov.w @(0xF6,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c074286
	mov.b @(0x6,r14),r0
	mov 0x17,r5
	mov.l @(0xF4,PC),r3
	mov 0x1F,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0xDE,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0xD4,PC),r4
	add r13,r4
	mov.b @(0x5,r4),r0
	tst r0,r0
	bt loc_8c074286
	mov.b @(0x5,r4),r0
	add 0xFF,r0
	mov.b r0,@(0x5,r4)

loc_8c074286:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07428e:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xBC,PC),r3
	mov 0x00,r13
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0742f4
	mov.l @r15,r3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @(r0,r3),fr3
	fsub fr3,fr2
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf loc_8c0742ba
	mov 0x01,r13

loc_8c0742ba:
	mov.w @(0x92,PC),r0
	extu.b r13,r3
	mov.w @(r0,r14),r2
	cmp/eq r3,r2
	bf loc_8c0742d6
	mov 0x06,r0
	mov r14,r4
	mov.b r0,@(0x6,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c074034
	mov.l @r15+,r14

loc_8c0742d6:
	mov.b @(0x6,r14),r0
	extu.b r13,r13
	mov 0x17,r5
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x0E,r6
	mov.w @(0x68,PC),r0
	mov.w r13,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x68,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0742f4:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0742fe:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x4C,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c074326
	mov.b @(0x6,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c074034
	mov.l @r15+,r14

loc_8c074326:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07432e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0xE,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c074360
	mova @(0x14,PC),r0
	bra loc_8c074364
	fmov @r0,fr3

;##############################################
loc_8c07434c:
	#data 0x041c
loc_8c07434e:
	#data 0x02a4
loc_8c074350:
	#data 0x0130
	#align4
loc_8c074354:
	#data bank03.loc_8c034dee
loc_8c074358:
	#data bank03.loc_8c034e8c
loc_8c07435c:
	#data 0xc0fd5555

;----------------------------------------------
loc_8c074360:
	mova @(0x78,PC),r0
	fmov @r0,fr3

loc_8c074364:
	mov 0x5C,r0
	mov.l @(0x78,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	mov 0x17,r5
	fmov fr3,@(r0,r14)
	mov 0x0D,r6
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c074074
	mov.l @r15+,r14

;==============================================
loc_8c074384:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x58,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0x54,PC),r3
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
	bf loc_8c0743c0
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x1A,PC),r0
	mov.b r3,@(r0,r14)

loc_8c0743c0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0743c6:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x8,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c0743d4:
	mov.l @(0x14,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0743da:
	#data 0x012c
	#align4
loc_8c0743dc:
	#data 0x40fd5555
loc_8c0743e0:
	#data bank03.loc_8c034e8c
loc_8c0743e4:
	#data bank03.loc_8c034dee
loc_8c0743e8:
	#data bank03.loc_8c03340c
loc_8c0743ec:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c0743f0:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x118,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c074416
	mov r0,r4
	mov.l @(0x108,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c074416:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c07441e:
	mov r4,r3
	mov.l @(0xF4,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c074430:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xCA,PC),r3
	mov.l r13,@-r15
	mov.w @(0xC8,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0xC0,PC),r2
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x4,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	mov.w @(0xB6,PC),r0
	mov.l @(0xCC,PC),r3
	jsr @r3
	add r4,r2
	mov.w @(0xB0,PC),r0
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
	mov.w @(0x94,PC),r0
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
	mov.l @(0x94,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r4),r2
	mov 0x20,r5
	mov.b r2,@(r0,r14)
	mov.w @(0x72,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov r5,r0
	nop
	mov.b @(r0,r14),r13
	mov 0x24,r1
	mov.l @(0x74,PC),r3
	add r14,r1
	extu.b r13,r13
	mov r4,r2
	shll2 r13
	shll2 r13
	add r3,r13
	mov.l @(0x60,PC),r3
	mov.b @(0xC,r13),r0
	add 0x34,r2
	mov.b r0,@r1
	mov r14,r1
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mova @(0x58,PC),r0
	fmov @r0,fr5
	mova @(0x58,PC),r0
	fmov @r0,fr4
	mov.w @(0x36,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c074530
	mov r14,r2
	mov 0x34,r0
	add r0,r2
	fmov fr5,fr0
	mov.l r2,@-r15
	mov.w @(0x8,r13),r0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	mov.l @r13,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	bra loc_8c074550
	fdiv fr4,fr3

;##############################################
loc_8c074502:
	#data 0x1002
loc_8c074504:
	#data 0x00dc
loc_8c074506:
	#data 0x00c0
loc_8c074508:
	#data 0x012c
loc_8c07450a:
	#data 0x01a3
loc_8c07450c:
	#data 0x013c
loc_8c07450e:
	#data 0x0130
	#align4
loc_8c074510:
	#data bank04.loc_8c044f12
loc_8c074514:
	#data loc_8c07441e
loc_8c074518:
	#data bank15.loc_8c1536dc
loc_8c07451c:
	#data bank12.loc_8c129560
loc_8c074520:
	#data bank12.loc_8c1294c8
loc_8c074524:
	#data bank15.loc_8c1536cc
loc_8c074528:
	#data 0x3fd55555
loc_8c07452c:
	#data 0x47800000

;----------------------------------------------
loc_8c074530:
	mov.w @(0x8,r13),r0
	mov 0x34,r2
	add r14,r2
	mov r0,r3
	lds r3,fpul
	fmov @r2,fr2
	float fpul,fr3
	fmul fr5,fr3
	fsub fr3,fr2
	fmov fr2,@r2
	mov.l @r13,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fneg fr3

loc_8c074550:
	mov 0x5C,r0
	mov r14,r2
	fmov fr3,@(r0,r14)
	mova @(0x148,PC),r0
	fmov @r0,fr5
	mov 0x38,r0
	add r0,r2
	fldi0 fr6
	mov.l r2,@-r15
	mov 0x44,r4
	mov.w @(0xA,r13),r0
	fmov fr5,fr0
	mov r0,r3
	lds r3,fpul
	mov.l @r15+,r3
	mov 0x68,r0
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	fmov fr6,@(r0,r14)
	mov 0x60,r0
	mov.l @(0x4,r13),r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fmov fr6,@(r0,r14)
	mov.w @(0x100,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.w @(0xFC,PC),r1
	mov.b r4,@(r0,r14)
	mov 0x00,r4
	mov.b @(0xF,r13),r0
	add r14,r1
	mov.l @(0x104,PC),r3
	mov 0x17,r5
	mov.b r0,@r1
	mov.w @(0xEE,PC),r0
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
	mov.b @(0xE,r13),r0
	mov.l @(0xE4,PC),r2
	mov r0,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0745d0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x02,r3
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r12
	mov.b @(0x4,r12),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf.s loc_8c0745f8
	mov 0x00,r4
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xA0,PC),r0
	bra loc_8c0746ca
	mov.b r4,@(r0,r14)

loc_8c0745f8:
	mov 0x48,r0
	mov.w @(0x9A,PC),r3
	mov.l @(r0,r14),r2
	mov 0x5C,r1
	add r14,r1
	add r3,r2
	mov.l r2,@(r0,r14)
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
	mov.w @(0x5C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c07465c
	mov.w @(0x56,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c07465c
	mova @(0x60,PC),r0
	fmov @r0,fr3
	mov.w @(0x4C,PC),r0
	fmov @(r0,r12),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bt loc_8c0746b8

loc_8c07465c:
	mov.b @(0x4,r14),r0
	mov r4,r13
	mov.l @(0x4C,PC),r10
	mov 0x06,r11
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x2A,PC),r0
	mov.b r4,@(r0,r14)

loc_8c07466c:
	mov r14,r5
	mov r13,r6
	jsr @r10
	mov r12,r4
	add 0x01,r13
	extu.b r13,r3
	cmp/ge r11,r3
	bf loc_8c07466c
	lds.l @r15+,pr
	mov r12,r4
	mov.l @(0x30,PC),r3
	mov 0x27,r5
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c074690:
	#data 0x019c
loc_8c074692:
	#data 0x01a1
loc_8c074694:
	#data 0x01ac
loc_8c074696:
	#data 0x012c
loc_8c074698:
	#data 0xf800;-0x800
loc_8c07469a:
	#data 0x019e
loc_8c07469c:
	#data 0x019f
loc_8c07469e:
	#data 0x041c
	#align4
loc_8c0746a0:
	#data 0x40092492
loc_8c0746a4:
	#data 0x8c2896b0
loc_8c0746a8:
	#data bank03.loc_8c034e8c
loc_8c0746ac:
	#data 0x42092492
loc_8c0746b0:
	#data bank0c.loc_8c0cbb84
loc_8c0746b4:
	#data bank04.loc_8c042008

;==============================================
loc_8c0746b8:
	lds.l @r15+,pr
	mov.l @(0x34,PC),r2
	mov r14,r4
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0746ca:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0746d8:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x8,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c0746e6:
	mov.l @(0xC,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0746ec:
	#data 0x012c
	#align4
loc_8c0746f0:
	#data bank04.loc_8c045748
loc_8c0746f4:
	#data bank04.loc_8c0450c0

;==============================================
;Unused
loc_8c0746f8:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x104,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c07473e
	mov r0,r4
	mov 0x20,r1
	mov.l @(0xF4,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.w @(0xD8,PC),r3
	mov.l r2,@(0x18,r4)
	mov 0x23,r2
	mov.b @(0x8,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2
	mov.l @r15,r5
	add r3,r5
	mov.b @(0x7,r5),r0
	add 0x01,r0
	mov.b r0,@(0x7,r5)

loc_8c07473e:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c074746:
	mov r4,r3
	mov.l @(0xCC,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c074758:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xA2,PC),r3
	mov.w @(0xA2,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x9A,PC),r2
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x4,r14)
	mov 0x26,r0
	mov.w r3,@(r0,r14)
	mov.w @(0x90,PC),r0
	mov.l @(0xA4,PC),r3
	jsr @r3
	add r4,r2
	mov.w @(0x8A,PC),r0
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
	mov.w @(0x6E,PC),r0
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
	mov.l @(0x70,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov r14,r1
	mov.b @(r0,r4),r2
	mov 0x10,r5
	mov 0x0A,r3
	mov.b r2,@(r0,r14)
	mov r4,r2
	mov.w @(0x46,PC),r0
	add 0x34,r2
	add 0x34,r1
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov 0x18,r5
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x28,PC),r0
	mov.l @(0x40,PC),r3
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov 0x0C,r0
	mova @(0x3C,PC),r0
	fmov @r0,fr4
	mov.w @(0x20,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c07482c
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mova @(0x2C,PC),r0
	bra loc_8c074838
	fmov @r0,fr2

;##############################################
loc_8c074800:
	#data 0x02a4
loc_8c074802:
	#data 0x1003
loc_8c074804:
	#data 0x00dc
loc_8c074806:
	#data 0x00c0
loc_8c074808:
	#data 0x012c
loc_8c07480a:
	#data 0x01a3
loc_8c07480c:
	#data 0x013c
loc_8c07480e:
	#data 0x0130
loc_8c074810:
	#data bank04.loc_8c044f12
loc_8c074814:
	#data loc_8c074746
loc_8c074818:
	#data bank15.loc_8c15375c
loc_8c07481c:
	#data bank12.loc_8c129560
loc_8c074820:
	#data bank12.loc_8c1294c8
loc_8c074824:
	#data 0x44195555
loc_8c074828:
	#data 0xc1555555

;----------------------------------------------
loc_8c07482c:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fsub fr4,fr3
	fmov fr3,@(r0,r14)
	mova @(0xE4,PC),r0
	fmov @r0,fr2

loc_8c074838:
	mov 0x5C,r0
	fmov fr2,@(r0,r14)
	mov.w @(0xD4,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov.l @(0xD0,PC),r0
	extu.b r3,r3
	shll r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c074862
	mov.l @(0xC8,PC),r3
	mov 0x1A,r5
	jsr @r3
	mov r14,r4

loc_8c074862:
	mov.w @(0xB0,PC),r0
	mov 0x44,r4
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov 0x00,r4
	mov.l @(0xB4,PC),r0
	extu.b r3,r3
	shll r3
	mov.b @(r0,r3),r2
	mov.w @(0x9A,PC),r0
	mov.l @(0xAC,PC),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
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
	mov 0x20,r0
	mov.b @(r0,r14),r6
	extu.b r6,r6
	mov.l @(0x8C,PC),r0
	shll r6
	mov.l @(0x8C,PC),r2
	mov 0x17,r5
	mov.b @(r0,r6),r6
	jsr @r2
	mov r14,r4
	mov.l @(0x84,PC),r2
	mov 0x01,r3
	mov.b r3,@r14
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8c0748c0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r5
	mov 0x02,r3
	mov.b @(0x4,r5),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c0748dc
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0748ec

loc_8c0748dc:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x32,PC),r0
	mov.b r3,@(r0,r14)
	rts
	mov.l @r15+,r14

loc_8c0748ec:
	mov 0x20,r0
	mov r14,r4
	mov.b @(r0,r14),r2
	mov.l @(0x48,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14
	rts
	mov.l @r15+,r14

;==============================================
loc_8c074902:
	mov r4,r3
	mov.l @(0x38,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c074914:
	#data 0x041c
loc_8c074916:
	#data 0x019c
loc_8c074918:
	#data 0x01a1
loc_8c07491a:
	#data 0x012c
	#align4
loc_8c07491c:
	#data 0x41555555
loc_8c074920:
	#data bank15.loc_8c15370b
loc_8c074924:
	#data bank04.loc_8c042008
loc_8c074928:
	#data bank15.loc_8c15370a
loc_8c07492c:
	#data 0x8c2896b0
loc_8c074930:
	#data bank15.loc_8c1536ec
loc_8c074934:
	#data bank03.loc_8c034e8c
loc_8c074938:
	#data bank10.loc_8c104434
loc_8c07493c:
	#data bank15.loc_8c15376c
loc_8c074940:
	#data bank15.loc_8c1537a8

;==============================================
loc_8c074944:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(0x112,PC),r12
	sts.l pr,@-r15
	mov.l @(0x118,PC),r3
	add r5,r12
	jsr @r3
	mov.l @r12,r13
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
	mov.b @(0x4,r12),r0
	tst r0,r0
	bt loc_8c0749c0
	mov.b @(0x3,r13),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf loc_8c0749c0
	mov 0x26,r0
	mov.w @(0xDC,PC),r3
	mov.w @(r0,r13),r2
	extu.w r2,r2
	cmp/eq r3,r2
	bf loc_8c0749c0
	mov.w @(0xD4,PC),r0
	mov.w @(r0,r14),r1
	tst r1,r1
	bf loc_8c0749a0
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @(r0,r13),fr3
	fcmp/gt fr3,fr2
	bf loc_8c0749b2

loc_8c0749a0:
	mov.w @(0xC2,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0749e4
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @(r0,r13),fr3
	fcmp/gt fr2,fr3
	bt loc_8c0749e4

loc_8c0749b2:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x1E,r13),r0
	add 0x01,r0
	bra loc_8c0749d0
	mov.w r0,@(0x1E,r13)

loc_8c0749c0:
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c0749e4
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8c0749d0:
	mov 0x20,r0
	mov.l @(0xA4,PC),r3
	mov.b @(r0,r14),r6
	mov 0x17,r5
	mov.l @(0x98,PC),r0
	extu.b r6,r6
	shll r6
	mov.b @(r0,r6),r6
	jsr @r3
	mov r14,r4

loc_8c0749e4:
	lds.l @r15+,pr
	mov.l @(0x94,PC),r2
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0749f2:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x6E,PC),r3
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	cmp/gt r3,r0
	bt loc_8c074a1c
	mov.l @(0x6C,PC),r1
	jsr @r1
	mov r14,r4
	tst r0,r0
	bf loc_8c074a1c
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x54,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c074a1c:
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	mov.l @(0x54,PC),r3
	add r14,r1
	mov r14,r4
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
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c074a4e:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x10,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c074a5c:
	mov.l @(0x20,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c074a62:
	#data 0x02a4
loc_8c074a64:
	#data 0x1003
loc_8c074a66:
	#data 0x0130
loc_8c074a68:
	#data 0x00d2
loc_8c074a6a:
	#data 0x012c
	#align4
loc_8c074a6c:
	#data bank03.loc_8c034dee
loc_8c074a70:
	#data bank03.loc_8c03340c
loc_8c074a74:
	#data bank15.loc_8c1536ed
loc_8c074a78:
	#data bank03.loc_8c034e8c
loc_8c074a7c:
	#data bank04.loc_8c045748
loc_8c074a80:
	#data bank04.loc_8c0450c0

;==============================================
;No 1st_read Refrence
loc_8c074a84:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x10C,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c074aaa
	mov r0,r4
	mov.l @(0xFC,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c074aaa:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c074ab2:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l r4,@(0xC,r15)
	mov.l r5,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0xD8,PC),r3
	mov 0x01,r5
	mov 0x00,r6
	mov.b r0,@(0x4,r15)
	mov.b r7,@r15
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c074aec
	mov r0,r4
	mov.l @(0xC8,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0xC,r15),r2
	mov.l r2,@(0x18,r4)
	mov.l @(0x8,r15),r3
	mov.l r3,@(0x14,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x23,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c074aec:
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c074af4:
	mov r4,r3
	mov.l @(0xA8,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c074b06:
	mov.w @(0x84,PC),r3
	mov.w @(0x84,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.w @(0x7C,PC),r2
	add 0x01,r0
	mov.l @(0x18,r4),r5
	mov.b r0,@(0x4,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0x72,PC),r0
	mov.l @(0x84,PC),r3
	jsr @r3
	add r5,r2
	mov.w @(0x6C,PC),r0
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
	mov.w @(0x50,PC),r0
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
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	lds.l @r15+,pr

loc_8c074b66:
	mov.l r14,@-r15
	mov 0x20,r0
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(0x3C,PC),r0
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c074b7c:
	mov r4,r3
	mov.l @(0x30,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c074b8e:
	#data 0x1004
loc_8c074b90:
	#data 0x00dc
loc_8c074b92:
	#data 0x00c0
loc_8c074b94:
	#data 0x012c
loc_8c074b96:
	#data 0x01a3
	#align4
loc_8c074b98:
	#data bank04.loc_8c044f12
loc_8c074b9c:
	#data loc_8c074af4
loc_8c074ba0:
	#data bank15.loc_8c1537c0
loc_8c074ba4:
	#data bank12.loc_8c129560
loc_8c074ba8:
	#data bank12.loc_8c1294c8
loc_8c074bac:
	#data bank15.loc_8c1537d0
loc_8c074bb0:
	#data bank15.loc_8c1537dc

;==============================================
loc_8c074bb4:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x00,r4
	mov.l r13,@-r15
	mov 0x08,r3
	mov r5,r13
	mov 0x44,r5
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x12C,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b r4,@(r0,r14)
	mov 0x3F,r3
	mov.w @(0x120,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.l @(0x120,PC),r3
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.l @r3,r2
	mov.b @(0x2,r14),r0
	add 0x7C,r2
	mov.l @(0x114,PC),r5
	extu.b r0,r0
	shll r0
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xF6,PC),r0
	mov.w @(r0,r14),r1
	mov r0,r2
	add 0x54,r2
	or r2,r1
	mov.w r1,@(r0,r14)
	mov 0x20,r0
	mov.w @(0xEA,PC),r1
	add r14,r1
	mov.b r0,@r1
	mov.w @(0xE6,PC),r1
	add r14,r1
	mov.b r0,@r1
	mov.w @(0xE2,PC),r0
	mov.b @(r0,r14),r4
	add 0x8D,r0
	mov.w @(r0,r14),r3
	extu.b r4,r4
	shll2 r4
	tst r3,r3
	add r5,r4
	bt.s loc_8c074c34
	mov.w @r4,r4
	neg r4,r4

loc_8c074c34:
	exts.w r4,r4
	lds r4,fpul
	mov 0x34,r0
	fmov @(r0,r13),fr2
	mova @(0xD4,PC),r0
	fmov @r0,fr0
	mov 0x34,r0
	float fpul,fr3
	mov.l @(0xD4,PC),r4
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0xB6,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	add r3,r5
	mov.w @(0x2,r5),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r13),fr2
	mova @(0xB8,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x96,PC),r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll r3
	add 0x8D,r0
	mov.w @(r0,r14),r2
	add r4,r3
	tst r2,r2
	bt.s loc_8c074c82
	fmov @r3,fr4
	fneg fr4

loc_8c074c82:
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x17,r5
	mov.w @(0x78,PC),r0
	mov 0x51,r6
	mov.b @(r0,r14),r3
	mov 0x04,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r4
	mov.l @(0x84,PC),r3
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c074cb8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r5,r3
	mov.l r5,@r15
	mov.b @(0x5,r3),r0
	tst r0,r0
	bf.s loc_8c074d76
	mov r4,r14
	mov.w @(0x38,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c074d76               ;8c074bba+0x1bc
	mov.w @(0x32,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c074d28
	mov.l @(0x48,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c074d76               ;8c074bba+0x1bc
	mov.b @(0x5,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x00,r0
	mov.b r0,@(0x6,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c075718
	mov.l @r15+,r14

;##############################################
loc_8c074cfa:
	#data 0x012c
loc_8c074cfc:
	#data 0x019c
loc_8c074cfe:
	#data 0x01ac
loc_8c074d00:
	#data 0x013f
loc_8c074d02:
	#data 0x013e
loc_8c074d04:
	#data 0x01a3
loc_8c074d06:
	#data 0x019f
loc_8c074d08:
	#data 0x019e
	#align4
loc_8c074d0c:
	#data 0x8c2896b0
loc_8c074d10:
	#data bank15.loc_8c1537fc
loc_8c074d14:
	#data 0x3fd55555
loc_8c074d18:
	#data 0x40092492
loc_8c074d1c:
	#data bank15.loc_8c1537ec
loc_8c074d20:
	#data bank03.loc_8c034e8c
loc_8c074d24:
	#data bank05.loc_8c05264c

;----------------------------------------------
loc_8c074d28:
	mov 0x5C,r1
	mov.l @(0xF8,PC),r3
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
	tst r0,r0
	bt loc_8c074d76
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xB4,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c074d76:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x90,PC),r0
	mov.b r3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c074d8a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov r5,r12
	sts.l pr,@-r15
	mov.w @(0x7A,PC),r0
	bsr loc_8c074ef4
	mov.l @(r0,r13),r14
	mov.w @(0x76,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c074e08
	mov.b @(0x5,r13),r0
	mov 0x0E,r5
	mov.l @(0x80,PC),r3
	mov 0x00,r6
	add 0x01,r0
	mov.b r0,@(0x5,r13)
	jsr @r3
	mov r14,r4
	mov.l @(0x78,PC),r2
	mov r14,r5
	jsr @r2
	mov r13,r4
	mov.w @(0x58,PC),r0
	mov 0x01,r5
	mov.l @(r0,r12),r3
	mov.w @(0x54,PC),r0
	mov.l r3,@(r0,r13)
	add 0xE4,r0
	mov.w r0,@(0x1C,r13)
	mov.w @(0x4A,PC),r0
	mov.l @(0x64,PC),r3
	jsr @r3
	mov.l @(r0,r12),r4
	mov.w @(0x46,PC),r0
	mov 0x06,r2
	mov.w @(0x44,PC),r3
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r12)
	mov 0x01,r2
	mov.b r3,@(r0,r14)
	add 0xF3,r0
	mov.b r2,@(r0,r12)
	mov 0xFF,r3
	mov.w @(0x34,PC),r0
	mov.b r3,@(r0,r12)
	mov.w @(0x32,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c074e08
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr3,@(r0,r14)

loc_8c074e08:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c074e12:
	#data 0x012c
loc_8c074e14:
	#data 0x01b0
loc_8c074e16:
	#data 0x01a0
loc_8c074e18:
	#data 0x01c8
loc_8c074e1a:
	#data 0x00d0
loc_8c074e1c:
	#data 0x01f6
loc_8c074e1e:
	#data 0x00c3
loc_8c074e20:
	#data 0x015a
loc_8c074e22:
	#data 0x01f9
	#align4
loc_8c074e24:
	#data bank03.loc_8c03340c
loc_8c074e28:
	#data bank04.loc_8c045748
loc_8c074e2c:
	#data bank03.loc_8c034e8c
loc_8c074e30:
	#data bank05.loc_8c05248e
loc_8c074e34:
	#data bank05.loc_8c050552

;==============================================
loc_8c074e38:
	mov.l r14,@-r15
	mov.w @(0xC8,PC),r0
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(r0,r13),r14
	mov.w @(0xBE,PC),r0
	mov.l @(r0,r13),r3
	mov.l @(r0,r3),r2
	cmp/eq r13,r2
	bf.s loc_8c074ec8
	mov r5,r12
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c074ec8
	mov.w @(0xAC,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c074e6a
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c074ec8

loc_8c074e6a:
	mov r12,r5
	bsr loc_8c075718
	mov r13,r4
	mov r12,r5
	bsr loc_8c074ef4
	mov r13,r4
	mov.l @(0xA0,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c074e86
	mov.w @(0x1C,r13),r0
	add 0xFD,r0
	mov.w r0,@(0x1C,r13)

loc_8c074e86:
	mov.w @(0x1C,r13),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r13)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c074ee4
	mov.w @(0x76,PC),r0
	mov 0x00,r2
	mov 0x08,r3
	mov.b r2,@(r0,r14)
	add 0xF9,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x6C,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c074eae
	mov.w @(0x62,PC),r0
	mov 0x07,r2
	bra loc_8c074ec8
	mov.b r2,@(r0,r14)

loc_8c074eae:
	mov.w @(0x5E,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c074ec2
	mov.l @(0x60,PC),r2
	jsr @r2
	mov r14,r4
	bra loc_8c074ec8
	nop

loc_8c074ec2:
	mov.l @(0x5C,PC),r2
	jsr @r2
	mov r14,r4

loc_8c074ec8:
	mov.b @(0x4,r13),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r13)
	mov.w @(0x3E,PC),r0
	mov.b r3,@(r0,r13)
	mov.w @(0x3C,PC),r0
	mov.l @(r0,r12),r2
	tst r2,r2
	bt loc_8c074eea
	mov.l @(r0,r12),r2
	add 0xFF,r2
	bra loc_8c074eea
	mov.l r2,@(r0,r12)

loc_8c074ee4:
	mov.w @(0x2C,PC),r0
	mov 0x01,r3
	mov.l r3,@(r0,r12)

loc_8c074eea:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c074ef4:
	mov r4,r3
	mov.l @(0x2C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c074f06:
	#data 0x00d0
loc_8c074f08:
	#data 0x01cc
loc_8c074f0a:
	#data 0x019f
loc_8c074f0c:
	#data 0x01f6
loc_8c074f0e:
	#data 0x0420
loc_8c074f10:
	#data 0x01f9
loc_8c074f12:
	#data 0x012c
loc_8c074f14:
	#data 0x02e4
	#align4
loc_8c074f18:
	#data bank05.loc_8c0505b8
loc_8c074f1c:
	#data bank05.loc_8c051648
loc_8c074f20:
	#data bank05.loc_8c0517be
loc_8c074f24:
	#data bank15.loc_8c153804

;==============================================
loc_8c074f28:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	mov r5,r11
	mov.l r10,@-r15
	mov 0x04,r10
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	mov.l @(0xF0,PC),r9
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0xE2,PC),r0
	mov.b r12,@(r0,r14)
	mov 0x0A,r0
	mov.w r0,@(0x1E,r14)
	mova @(0xDC,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)

loc_8c074f5c:
	mov 0x01,r5
	mov 0x02,r6
	jsr @r9
	mov r14,r4
	tst r0,r0
	bt.s loc_8c074f7a
	mov r0,r4
	mov 0x20,r0
	mov.l @(0xC8,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l r11,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b r12,@(r0,r4)
	mov 0x23,r0
	mov.b r13,@(r0,r4)

loc_8c074f7a:
	add 0x01,r13
	cmp/ge r10,r13
	bf loc_8c074f5c
	mov.l @(0xB8,PC),r2
	mov 0x2E,r5
	jsr @r2
	mov r11,r4
	lds.l @r15+,pr
	mov r11,r5
	mov r14,r4
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c074f9a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mova @(0x8C,PC),r0
	mov r4,r14
	mov.l r5,@r15
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c074fee
	mov.b @(0x6,r14),r0
	mov 0x02,r6
	fldi1 fr4
	mov r14,r5
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov 0x00,r7
	bsr loc_8c074ab2
	mov.l @r15,r4
	mov.l @r15,r4
	mov r14,r5
	mov 0x01,r7
	mov 0x02,r6
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c074ab2
	mov.l @r15+,r14

loc_8c074fee:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c074ff6:
	rts
	nop

;==============================================
loc_8c074ffa:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x8,r14),r4
	mov 0x02,r3
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c07501a
	mov.b @(0x4,r14),r0
	mov 0x00,r2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x18,PC),r0
	mov.b r2,@(r0,r14)
	rts
	mov.l @r15+,r14

loc_8c07501a:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x20,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07502e:
	#data 0x012c
	#align4
loc_8c075030:
	#data 0x3dcccccd
loc_8c075034:
	#data bank04.loc_8c044f12
loc_8c075038:
	#data loc_8c074af4
loc_8c07503c:
	#data bank04.loc_8c042008
loc_8c075040:
	#data bank15.loc_8c153810

;==============================================
loc_8c075044:
	mov.l r14,@-r15
	mov r4,r1
	sts.l pr,@-r15
	mov.b @(0x5,r4),r0
	add 0x34,r1
	mov.l @(0x14,r4),r5
	add 0x01,r0
	mov.l @(0x150,PC),r3
	mov.b r0,@(0x5,r4)
	mov 0x0A,r0
	mov.w r0,@(0x1C,r4)
	mov r5,r2
	mov.w @(0x13C,PC),r0
	add 0x34,r2
	mov.w r0,@(0x1E,r4)
	jsr @r3
	mov 0x0C,r0
	mova @(0x140,PC),r0
	mov.l @(0x140,PC),r3
	fmov @r0,fr4
	mov 0x50,r0
	mov 0x08,r2
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov 0x23,r0
	mov.b @(r0,r4),r14
	mov 0x24,r0
	mov.b r2,@(r0,r4)
	mov 0x31,r0
	extu.b r14,r14
	shll2 r14
	add r3,r14
	mov.b @r14,r1
	mov 0x22,r2
	add r4,r2
	mov.b r1,@(r0,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@r2
	mov.w @(0x108,PC),r0
	mov.w @(r0,r4),r1
	tst r1,r1
	bt loc_8c0750aa
	mov 0x22,r0
	mov.b @(r0,r4),r0
	mov 0x22,r1
	add r4,r1
	neg r0,r0
	add 0x20,r0
	and 0x1F,r0
	mov.b r0,@r1

loc_8c0750aa:
	lds.l @r15+,pr
	mov.b @(0x3,r14),r0
	mov 0x1B,r5
	mov.l @(0xFC,PC),r3
	mov r0,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0750b8:
	mova @(0xF8,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xDE,PC),r3
	sts.l pr,@-r15
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	mov r14,r1
	mov.l @(0x14,r14),r2
	add 0x34,r1
	fsub fr4,fr3
	add 0x34,r2
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fsub fr4,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	sub r3,r0
	mov.l @(0xC0,PC),r3
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x1E,r14),r0
	mov.l @(0xCC,PC),r3
	mov r0,r5
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c075114
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mova @(0xB4,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov 0x06,r0
	mov.w r0,@(0x1C,r14)

loc_8c075114:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07511a:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x7E,PC),r3
	mov r14,r1
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	add 0x34,r1
	mov.l @(0x14,r14),r2
	add r3,r0
	mov.l @(0x74,PC),r3
	add 0x34,r2
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x1E,r14),r0
	mov.l @(0x7C,PC),r3
	mov r0,r5
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c075156
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x06,r0
	mov.w r0,@(0x1C,r14)

loc_8c075156:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07515c:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x3C,PC),r3
	mov r14,r1
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	add 0x34,r1
	mov.l @(0x14,r14),r2
	sub r3,r0
	mov.l @(0x34,PC),r3
	add 0x34,r2
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x1E,r14),r0
	mov.l @(0x3C,PC),r3
	mov r0,r5
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c075196
	mov 0x02,r0
	mov.b r0,@(0x5,r14)
	mov 0x06,r0
	mov.w r0,@(0x1C,r14)

loc_8c075196:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07519c:
	#data 0x0c80
loc_8c07519e:
	#data 0x0130
loc_8c0751a0:
	#data 0x00c8
	#align4
loc_8c0751a4:
	#data bank12.loc_8c1294c8
loc_8c0751a8:
	#data 0x3fc00000
loc_8c0751ac:
	#data bank15.loc_8c1537b0
loc_8c0751b0:
	#data bank03.loc_8c034c38
loc_8c0751b4:
	#data 0x3dcccccd
loc_8c0751b8:
	#data bank03.loc_8c033718
loc_8c0751bc:
	#data 0x3f000000

;==============================================
loc_8c0751c0:
	mov r4,r3
	mov.l @(0x150,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0751d2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov 0x10,r4
	mov 0x00,r3
	mov.l r5,@r15
	mov.b @(0x5,r14),r0
	mov 0x08,r2
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x11A,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov 0x18,r4
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0xF1,r0
	mov.w r3,@(r0,r14)
	mov 0x24,r0
	mov.b r2,@(r0,r14)
	mov 0x31,r0
	mov 0xFE,r3
	mov.l @(0x10C,PC),r4
	mov.b r3,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c07521e
	mova @(0x104,PC),r0
	fmov @r0,fr3
	mov.w @(0xEE,PC),r0
	bra loc_8c075224
	nop

loc_8c07521e:
	mova @(0x100,PC),r0
	fmov @r0,fr3
	mov.w @(0xE6,PC),r0

loc_8c075224:
	fmov @(r0,r4),fr2
	mov 0x34,r0
	mov r15,r13
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0xF4,PC),r0
	fmov @r0,fr3
	mov.w @(0xD8,PC),r0
	fmov @(r0,r4),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov.l @(0x14,r14),r4
	tst r3,r3
	bf.s loc_8c075256
	add 0x04,r13
	mov 0x34,r0
	fmov @(r0,r4),fr1
	fmov @(r0,r14),fr2
	mova @(0xD8,PC),r0
	fsub fr2,fr1
	bra loc_8c075262
	fmov @r0,fr2

loc_8c075256:
	mov 0x34,r0
	fmov @(r0,r4),fr1
	fmov @(r0,r14),fr2
	mova @(0xCC,PC),r0
	fsub fr2,fr1
	fmov @r0,fr2

loc_8c075262:
	mova @(0xCC,PC),r0
	fadd fr2,fr1
	fmov fr1,@r13
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r13)
	mova @(0xBC,PC),r0
	fmov @r0,fr2
	mov 0x60,r0
	fmov fr2,@(r0,r14)
	mova @(0xB8,PC),r0
	fmov @r0,fr2
	mov 0x6C,r0
	fmov fr2,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r13),fr4
	bsr loc_8c0756da
	mov r14,r4
	mov r0,r4
	lds r4,fpul
	fmov @r13,fr2
	mov 0x5C,r0
	float fpul,fr3
	fdiv fr3,fr2
	fldi0 fr3
	fmov fr2,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r6
	mov 0x17,r5
	mov.l @(0x8C,PC),r3
	add 0x47,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x88,PC),r3
	mov 0x01,r2
	mov.b r2,@r14
	jsr @r3
	mov r14,r4
	mov 0x23,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0752ce
	mov.l @(0x7C,PC),r2
	mov 0x1B,r5
	jsr @r2
	mov r14,r4

loc_8c0752ce:
	mov.l @r15,r5
	bsr loc_8c0752de
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0752de:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.l @(0x14,r14),r4
	mov 0x02,r3
	mov.b @(0x4,r4),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf.s loc_8c075348
	mov 0x00,r5
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x12,PC),r0
	mov.b r5,@(r0,r14)
	mov.b r5,@r14
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c075308:
	#data 0x013c
loc_8c07530a:
	#data 0x008c
loc_8c07530c:
	#data 0x0088
loc_8c07530e:
	#data 0x0090
loc_8c075310:
	#data 0x012c
	#align4
loc_8c075314:
	#data bank15.loc_8c153820
loc_8c075318:
	#data 0x8c26a518
loc_8c07531c:
	#data 0x42555555
loc_8c075320:
	#data 0xc2555555
loc_8c075324:
	#data 0xc3092492
loc_8c075328:
	#data 0x41d55555
loc_8c07532c:
	#data 0xc1d55555
loc_8c075330:
	#data 0xc2092492
loc_8c075334:
	#data 0x40892492
loc_8c075338:
	#data 0xbf4db6db
loc_8c07533c:
	#data bank03.loc_8c034e8c
loc_8c075340:
	#data bank10.loc_8c104434
loc_8c075344:
	#data bank04.loc_8c042008

;==============================================
loc_8c075348:
	mov 0x23,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c075360
	mov r15,r6
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @(r0,r14),fr3
	mova @(0x144,PC),r0
	fsub fr3,fr2
	bra loc_8c07536c
	fmov @r0,fr3

loc_8c075360:
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @(r0,r14),fr3
	mova @(0x13C,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3

loc_8c07536c:
	fadd fr3,fr2
	mov 0x38,r0
	mov 0x5C,r1
	add r14,r1
	fmov fr2,@r6
	fmov @(r0,r4),fr2
	fmov @(r0,r14),fr3
	mova @(0x12C,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	mov 0x04,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r6)
	mov.w @(0x1C,r14),r0
	fmov @r6,fr1
	mov r0,r3
	lds r3,fpul
	mov 0x5C,r0
	float fpul,fr2
	fdiv fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr1
	fmov @r1,fr2
	mov 0x68,r1
	add r14,r1
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr1
	fmov @r1,fr2
	fadd fr2,fr1
	mov 0x60,r1
	fmov fr1,@(r0,r14)
	add r14,r1
	mov 0x38,r0
	fmov @r1,fr2
	fmov @(r0,r14),fr1
	mov 0x6C,r1
	add r14,r1
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr1
	fmov @r1,fr2
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0753fc
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov.w @(0xB6,PC),r0
	mov.l @(0xC4,PC),r3
	mov.l r5,@(r0,r14)
	mov 0x23,r5
	jsr @r3
	mov r14,r4
	mov 0x23,r0
	mov.l @(0xBC,PC),r3
	mov.b @(r0,r14),r6
	mov 0x17,r5
	add 0x49,r6
	jsr @r3
	mov r14,r4

loc_8c0753fc:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c075404:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov.l @(0xA4,PC),r3
	add 0x01,r0
	mov.l @(0x14,r14),r13
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	mov 0x23,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c075428
	mova @(0x7C,PC),r0
	bra loc_8c07542c
	fmov @r0,fr3

loc_8c075428:
	mova @(0x78,PC),r0
	fmov @r0,fr3

loc_8c07542c:
	mov 0x34,r0
	fmov @(r0,r13),fr2
	mov 0x02,r3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.b @(0x4,r13),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c075494
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r2
	mov.w @(0x46,PC),r0
	extu.b r2,r2
	mov.w r2,@(r0,r14)
	mov 0x5A,r2
	mov.w @(0x1C,r14),r0
	cmp/ge r2,r0
	bf.s loc_8c07546c
	fldi0 fr3
	mov.w @(0x34,PC),r1
	mov 0x01,r0
	add r14,r1
	mov.l r0,@r1

loc_8c07546c:
	mov 0x60,r0
	mov.l @(0x40,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x3C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov 0x17,r5
	mov r14,r4
	fmov fr3,@(r0,r14)
	add 0x60,r0
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	add 0x4B,r6
	jmp @r3
	mov.l @r15+,r14

loc_8c075494:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07549c:
	#data 0x00cc
loc_8c07549e:
	#data 0x0130
	#align4
loc_8c0754a0:
	#data 0x41d55555
loc_8c0754a4:
	#data 0xc1d55555
loc_8c0754a8:
	#data 0xc2092492
loc_8c0754ac:
	#data bank04.loc_8c04223a
loc_8c0754b0:
	#data bank03.loc_8c034e8c
loc_8c0754b4:
	#data bank03.loc_8c034dee
loc_8c0754b8:
	#data 0xbf4db6db

;==============================================
loc_8c0754bc:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x104,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
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
	add 0x6C,r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bt loc_8c0754fe
	mova @(0xD8,PC),r0
	mov.l @r15,r3
	fmov @r0,fr3
	mov.w @(0xC6,PC),r0
	fmov @(r0,r3),fr4
	bra loc_8c075504
	fadd fr3,fr4

loc_8c0754fe:
	mov.w @(0xBE,PC),r0
	mov.l @r15,r2
	fmov @(r0,r2),fr4

loc_8c075504:
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bt loc_8c07552a
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov 0x17,r5
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x38,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xA4,PC),r0
	mov.b @(r0,r14),r6
	add 0x4D,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xA8,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c07552a:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c075532:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x8C,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0755b8
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x6E,PC),r0
	mov.l @r15,r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x66,PC),r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bt loc_8c075570
	mov 0x23,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c075570
	mov.l @(0x68,PC),r3
	mov 0x1A,r5
	jsr @r3
	mov r14,r4

loc_8c075570:
	mov.l @r15,r2
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @(r0,r2),fr3
	fcmp/gt fr2,fr3
	bt loc_8c075588
	mov.w @(0x44,PC),r0
	mov 0x00,r2
	mov.w r2,@(r0,r14)
	mova @(0x54,PC),r0
	bra loc_8c075592
	fmov @r0,fr3

loc_8c075588:
	mov.w @(0x38,PC),r0
	mov 0x01,r2
	mov.w r2,@(r0,r14)
	mova @(0x4C,PC),r0
	fmov @r0,fr3

loc_8c075592:
	mov 0x5C,r0
	fldi0 fr4
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	add 0x60,r0
	mov.b @(r0,r14),r6
	mov r14,r4
	mov 0x17,r5
	add 0x4F,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x1C,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c0755b8:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0755c0:
	#data 0x041c
loc_8c0755c2:
	#data 0x00cc
loc_8c0755c4:
	#data 0x0130
	#align4
loc_8c0755c8:
	#data bank03.loc_8c034dee
loc_8c0755cc:
	#data 0x41cdb6db
loc_8c0755d0:
	#data bank03.loc_8c034e8c
loc_8c0755d4:
	#data bank04.loc_8c042008
loc_8c0755d8:
	#data 0xc0d55555
loc_8c0755dc:
	#data 0x40d55555

;==============================================
loc_8c0755e0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x11C,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	mov.l @(0x114,PC),r3
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
	bf loc_8c07562c
	mov.b @(0x4,r14),r0
	mov 0x00,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xDA,PC),r0
	mov.b r4,@(r0,r14)
	mov.b r4,@r14
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c07562c:
	mov.w @(0xCE,PC),r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bt loc_8c07567a
	mov.w @(0xC8,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c075648
	mov.l @r15,r1
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @(r0,r1),fr3
	fcmp/gt fr3,fr2
	bf loc_8c07565c

loc_8c075648:
	mov.w @(0xB4,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c07567a
	mov.l @r15,r1
	mov 0x34,r0
	fmov @(r0,r14),fr2
	fmov @(r0,r1),fr3
	fcmp/gt fr2,fr3
	bt loc_8c07567a

loc_8c07565c:
	mov.b @(0x5,r14),r0
	mov 0x2A,r5
	mov.l @(0xA8,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	mov r14,r4
	mov 0x17,r5
	mov 0x0D,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x98,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c07567a:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c075682:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0x78,PC),r3
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
	bf loc_8c0756c0
	mov.b @(0x4,r14),r0
	mov 0x00,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x3E,PC),r0
	mov.b r4,@(r0,r14)
	mov.b r4,@r14

loc_8c0756c0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0756c6:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x2A,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c0756d4:
	mov.l @(0x3C,PC),r3
	jmp @r3
	nop

;==============================================
loc_8c0756da:
	mov 0x38,r0
	fmov @(r0,r4),fr6
	mov 0x60,r0
	fmov @(r0,r4),fr5
	mov 0x00,r5

loc_8c0756e4:
	mov 0x6C,r0
	fadd fr5,fr6
	fmov @(r0,r4),fr3
	fadd fr3,fr5
	fldi0 fr3
	fcmp/gt fr3,fr5
	bt.s loc_8c0756e4
	add 0x01,r5
	fcmp/gt fr4,fr6
	bt loc_8c0756e4
	rts
	mov r5,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0756fc:
	#data 0x012c
loc_8c0756fe:
	#data 0x00cc
loc_8c075700:
	#data 0x0130
	#align4
loc_8c075704:
	#data bank03.loc_8c034dee
loc_8c075708:
	#data bank03.loc_8c03340c
loc_8c07570c:
	#data bank04.loc_8c04223a
loc_8c075710:
	#data bank03.loc_8c034e8c
loc_8c075714:
	#data bank04.loc_8c0450c0

;=============================================
loc_8c075718:
	mov.w @(0x28,PC),r0
	mov 0x00,r2
	mov.l @(r0,r4),r5
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x1E,PC),r0
	mov.b @(r0,r5),r3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mova @(loc_8c075748,PC),r0
	extu.b r3,r3
	fmov @r0,fr0
	cmp/gt r3,r2
	mov 0x38,r0
	addc r2,r3
	shar r3
	lds r3,fpul
	float fpul,fr3
	fmac fr0,fr3,fr2
	rts
	fmov fr2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c075744:
	#data 0x01b0
loc_8c075746:
	#data 0x013c
	#align4
loc_8c075748:
	#data 0x40092492

;==============================================
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x148,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c075778
	mov r0,r4
	mov.l @(0x138,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0x114,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c075778:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c075780:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x102,PC),r2
	mov 0x20,r0
	mov.l @(0x18,r14),r3
	mov r14,r4
	mov.w @(0xFC,PC),r1
	add r3,r2
	mov.l @(0x110,PC),r3
	add r14,r1
	mov.l r2,@r3
	mov.l @(0x110,PC),r2
	mov.l r1,@r2
	mov.b @(r0,r14),r3
	mov.l @(0x10C,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r1
	jmp @r1
	mov.l @r15+,r14

;==============================================
loc_8c0757a8:
	mov r4,r3
	mov.l @(0x104,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0757ba:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xCE,PC),r3
	mov.l r13,@-r15
	mov 0x01,r13
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov.w @(0xC4,PC),r1
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0xBA,PC),r0
	mov.b r13,@(r0,r14)
	mov.l @(0x18,r14),r2
	add r3,r2
	mov.l @(0xD8,PC),r3
	jsr @r3
	add 0x94,r0
	mov.w @(0xAC,PC),r0
	mov r14,r1
	add 0x50,r1
	mov.b r13,@(r0,r14)
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
	mov.w @(0x8C,PC),r0
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
	add 0x50,r2
	mov.l @(0x98,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov 0x44,r4
	mov.b @(r0,r1),r3
	mov.l @(0x74,PC),r1
	mov.b r3,@(r0,r14)
	mov.w @(0x60,PC),r0
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r14)
	add 0x6C,r0
	mov 0x30,r3
	mov.l @r1,r2
	mov.b r13,@r2
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	mov 0x00,r4
	add 0x0B,r0
	mov.l @(0x6C,PC),r3
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
	mov 0x40,r4
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x26,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov.w @(0x20,PC),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r1
	tst r1,r1
	bt loc_8c0758c8
	mova @(0x44,PC),r0
	mov.l @(0x3C,PC),r1
	fmov @r0,fr2
	bra loc_8c0758d0
	fmov @r1,fr3

;##############################################
loc_8c075888:
	#data 0x1100
loc_8c07588a:
	#data 0x02a4
loc_8c07588c:
	#data 0x00cc
loc_8c07588e:
	#data 0x012c
loc_8c075890:
	#data 0x00dc
loc_8c075892:
	#data 0x01a3
loc_8c075894:
	#data 0x0130
loc_8c075896:
	#data 0x013e
loc_8c075898:
	#data 0x01d2
	#align4
loc_8c07589c:
	#data bank04.loc_8c044f12
loc_8c0758a0:
	#data loc_8c075780
loc_8c0758a4:
	#data 0x8c28c5e4
loc_8c0758a8:
	#data 0x8c28c5e8
loc_8c0758ac:
	#data bank15.loc_8c15383c
loc_8c0758b0:
	#data bank15.loc_8c153844
loc_8c0758b4:
	#data bank12.loc_8c129560
loc_8c0758b8:
	#data bank12.loc_8c1294c8
loc_8c0758bc:
	#data 0x8c2896b0
loc_8c0758c0:
	#data 0x8c26a524
loc_8c0758c4:
	#data 0xc3f00000

;----------------------------------------------
loc_8c0758c8:
	mov.l @(0xCC,PC),r2
	mova @(0xD0,PC),r0
	fmov @r0,fr2
	fmov @r2,fr3

loc_8c0758d0:
	fadd fr2,fr3
	mov 0x34,r0
	fldi0 fr4
	fmov fr3,@(r0,r14)
	mov.w @(0xB4,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x10,r0
	mov.w r0,@(0x1C,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x98,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c075904
	mova @(0xA0,PC),r0
	bra loc_8c075908
	fmov @r0,fr3

loc_8c075904:
	mova @(0x9C,PC),r0
	fmov @r0,fr3

loc_8c075908:
	mov.l @(0x9C,PC),r3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.b r13,@r14
	mov 0x00,r6
	lds.l @r15+,pr
	mov.l @(0x90,PC),r2
	mov 0x17,r5
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c075924:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8c07593c
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07595a

loc_8c07593c:
	mov.l @(0x70,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c07595a
	mov.l @(0x6C,PC),r2
	mov 0x00,r1
	mov 0x03,r0
	mov r14,r4
	mov.b r0,@(0x4,r14)
	mov.l @r2,r3
	mov.b r1,@r3
	lds.l @r15+,pr
	bra loc_8c0761ea
	mov.l @r15+,r14

loc_8c07595a:
	mov.w @(0x36,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c07597e
	mov.b @(0x4,r14),r0
	mov.l @(0x50,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x44,PC),r2
	mov 0x2C,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c07597e:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x3C,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c075990:
	#data 0x041c
loc_8c075992:
	#data 0x0130
loc_8c075994:
	#data 0x019f
	#align4
loc_8c075998:
	#data 0x8c26a524
loc_8c07599c:
	#data 0x43f00000
loc_8c0759a0:
	#data 0x41200000
loc_8c0759a4:
	#data 0xc1200000
loc_8c0759a8:
	#data bank10.loc_8c104434
loc_8c0759ac:
	#data bank03.loc_8c034e8c
loc_8c0759b0:
	#data bank03.loc_8c03340c
loc_8c0759b4:
	#data 0x8c28c5e4
loc_8c0759b8:
	#data bank05.loc_8c057bb6
loc_8c0759bc:
	#data bank04.loc_8c042008
loc_8c0759c0:
	#data bank15.loc_8c153854

;==============================================
loc_8c0759c4:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0xE4,PC),r3
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
	mov.l @(0xAC,PC),r3
	mov.l @r3,r2
	mov.b @(0x3,r2),r0
	tst r0,r0
	bf loc_8c075a2e
	mov.l @(0x18,r14),r5
	mov 0x60,r6
	bsr loc_8c075d52
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c075a2e
	mov.b @(0x5,r14),r0
	mov.l @(0x94,PC),r2
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x01,r0
	mov.l @r2,r3
	mov.b r0,@(0x3,r3)

loc_8c075a2e:
	lds.l @r15+,pr
	mov.l @(0x88,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c075a38:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x70,PC),r3
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
	mov.l @(0x18,r14),r5
	mov 0x60,r6
	bsr loc_8c075d52
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bf loc_8c075aaa
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov.l @(0x38,PC),r3
	mov 0x01,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mova @(0x28,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x24,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8c075aaa:
	lds.l @r15+,pr
	mov.l @(0xC,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8c075ab4:
	#data bank03.loc_8c034dee
loc_8c075ab8:
	#data 0x8c28c5e4
loc_8c075abc:
	#data bank04.loc_8c045748
loc_8c075ac0:
	#data 0x41092492
loc_8c075ac4:
	#data 0xbf092492
loc_8c075ac8:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c075acc:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0xC8,PC),r3
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
	mov.w @(0x84,PC),r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c075b42
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	fldi0 fr4
	mov 0x02,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x6A,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	mov.l @(0x70,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	jsr @r3
	mov r14,r4

loc_8c075b42:
	lds.l @r15+,pr
	mov.l @(0x60,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c075b4c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x40,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf.s loc_8c075b64
	mov r14,r4
	mov 0x00,r0
	mov.b r0,@(0x5,r14)

loc_8c075b64:
	lds.l @r15+,pr
	mov.l @(0x40,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c075b6c:
	mov r4,r3
	mov.l @(0x3C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c075b7e:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xE,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c075bb4
	mova @(0x1C,PC),r0
	bra loc_8c075bb8
	fmov @r0,fr3

;##############################################
loc_8c075b98:
	#data 0x041c
loc_8c075b9a:
	#data 0x0141
loc_8c075b9c:
	#data 0x0130
	#align4
loc_8c075ba0:
	#data bank03.loc_8c034dee
loc_8c075ba4:
	#data bank03.loc_8c034e8c
loc_8c075ba8:
	#data bank04.loc_8c045748
loc_8c075bac:
	#data bank15.loc_8c153864
loc_8c075bb0:
	#data 0xbfd55555

;==============================================
loc_8c075bb4:
	mova @(0x140,PC),r0
	fmov @r0,fr3

loc_8c075bb8:
	mov 0x5C,r0
	mov.l @(0x148,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	mov 0x17,r5
	fmov fr3,@(r0,r14)
	mova @(0x134,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x03,r6
	fmov fr3,@(r0,r14)
	mova @(0x12C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8c075be2:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x118,PC),r3
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
	mov.w @(0xC6,PC),r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c075c78
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x03,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0xB0,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c075c4c
	mova @(0xC4,PC),r0
	bra loc_8c075c50
	fmov @r0,fr3

loc_8c075c4c:
	mova @(0xA8,PC),r0
	fmov @r0,fr3

loc_8c075c50:
	mov 0x5C,r0
	mov.l @(0xB0,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	mov r14,r4
	fmov fr3,@(r0,r14)
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x04,r6
	fmov fr3,@(r0,r14)
	mova @(0xA8,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov 0x17,r5
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c075c78:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c075c7e:
	mov.w @(0x1C,r4),r0
	tst r0,r0
	bt loc_8c075c90
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c075cec

loc_8c075c90:
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
	mov.w @(0x24,PC),r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bt loc_8c075cec
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0x10,PC),r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov.w @(0xA,PC),r0
	fldi1 fr3
	fmov fr3,@(r0,r4)

loc_8c075cec:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c075cf0:
	#data 0x041c
loc_8c075cf2:
	#data 0x0130
loc_8c075cf4:
	#data 0x0108
	#align4
loc_8c075cf8:
	#data 0x3fd55555
loc_8c075cfc:
	#data 0x414db6db
loc_8c075d00:
	#data 0xbfcdb6db
loc_8c075d04:
	#data bank03.loc_8c034e8c
loc_8c075d08:
	#data bank03.loc_8c034dee
loc_8c075d0c:
	#data 0xbfd55555
loc_8c075d10:
	#data 0x40892492
loc_8c075d14:
	#data 0xbf892492

;==============================================
loc_8c075d18:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x114,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(0x114,PC),r1
	mov.w @(0xFC,PC),r0
	lds r1,fpul
	fmov @(r0,r14),fr2
	fldi0 fr1
	fsts fpul,fr3
	fsub fr3,fr2
	fcmp/gt fr1,fr2
	bt.s loc_8c075d4c
	fmov fr2,@(r0,r14)
	mov.l @(0x104,PC),r2
	mov 0x00,r1
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @r2,r3
	mov.b r1,@r3
	lds.l @r15+,pr
	bra loc_8c0761ea
	mov.l @r15+,r14

loc_8c075d4c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c075d52:
	mov 0x34,r0
	fmov @(r0,r4),fr2
	extu.w r6,r6
	fmov @(r0,r5),fr3
	mova @(0xE4,PC),r0
	lds r6,fpul
	fsub fr3,fr2
	float fpul,fr3
	fabs fr2
	fmov fr2,fr4
	fmov @r0,fr2
	fmul fr2,fr3
	fcmp/gt fr3,fr4
	bt loc_8c075d72
	rts
	mov 0x01,r0

loc_8c075d72:
	mov 0x00,r0
	rts
	nop

;==============================================
loc_8c075d78:
	mov r4,r3
	mov.l @(0xC8,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c075d8a:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov.b @(0x4,r14),r0
	mov.w @(0x8C,PC),r1
	mov 0x01,r13
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x80,PC),r0
	mov.l @(0x18,r14),r2
	mov.l @(0xA0,PC),r3
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x76,PC),r0
	mov r14,r1
	add 0x50,r1
	mov.b r13,@(r0,r14)
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
	mov.w @(0x54,PC),r0
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
	add 0x50,r2
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.l @(0x40,PC),r1
	mov.b r3,@(r0,r14)
	mov.l @r1,r2
	mov r13,r0
	nop
	mov.b r0,@(0x1,r2)
	mov 0x44,r5
	mov.w @(0x20,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov.w @(0x1A,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf.s loc_8c075e50
	mov 0x00,r4
	mov.w @(0x10,PC),r0
	mov 0x4F,r2
	bra loc_8c075e56
	mov.b r2,@(r0,r14)

;##############################################
loc_8c075e24:
	#data 0x0108
loc_8c075e26:
	#data 0x00dc
loc_8c075e28:
	#data 0x012c
loc_8c075e2a:
	#data 0x01a3
loc_8c075e2c:
	#data 0x019c
loc_8c075e2e:
	#data 0x0255
loc_8c075e30:
	#data 0x01a1
	#align4
loc_8c075e34:
	#data bank03.loc_8c034dee
loc_8c075e38:
	#data 0x3d4ccccd
loc_8c075e3c:
	#data 0x8c28c5e4
loc_8c075e40:
	#data 0x3fd55555
loc_8c075e44:
	#data bank15.loc_8c153874
loc_8c075e48:
	#data bank12.loc_8c129560
loc_8c075e4c:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c075e50:
	mov.w @(0x11A,PC),r0
	mov 0x31,r3
	mov.b r3,@(r0,r14)

loc_8c075e56:
	mov.w @(0x116,PC),r0
	mov.l @(0x120,PC),r3
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov 0x40,r4
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.w @(0x104,PC),r3
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x08,r2
	mov.w @(0xF4,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0xFD,r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r2,@(r0,r14)
	add 0xF3,r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c075e9c
	mov.l @(0xEC,PC),r3
	mova @(0xEC,PC),r0
	fmov @r3,fr3
	bra loc_8c075ea4
	fmov @r0,fr2

loc_8c075e9c:
	mov.l @(0xE0,PC),r3
	mova @(0xE8,PC),r0
	fmov @r0,fr2
	fmov @r3,fr3

loc_8c075ea4:
	fadd fr2,fr3
	mov 0x34,r0
	fldi0 fr4
	fmov fr3,@(r0,r14)
	mova @(0xDC,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xA8,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c075ed8
	mova @(0xBC,PC),r0
	bra loc_8c075edc
	fmov @r0,fr2

loc_8c075ed8:
	mova @(0xB8,PC),r0
	fmov @r0,fr2

loc_8c075edc:
	mov 0x5C,r0
	mov.l @(0xC0,PC),r3
	fmov fr2,@(r0,r14)
	mova @(0xB4,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xB0,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x10,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	mov 0x17,r5
	mov r14,r4
	mov.b r13,@r14
	mov 0x05,r6
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @(0x9C,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14


;==============================================
loc_8c075f0e:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	mov.l @(0x8C,PC),r13
	tst r0,r0
	bt loc_8c075f2a
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c075f48

loc_8c075f2a:
	mov.l @(0x80,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c075f48
	mov 0x03,r0
	mov r14,r4
	mov.b r0,@(0x4,r14)
	mov 0x00,r0
	mov.l @r13,r3
	mov.b r0,@(0x1,r3)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0761ea
	mov.l @r15+,r14

loc_8c075f48:
	mov.w @(0x2C,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c075fb8
	mov.b @(0x4,r14),r0
	mov.l @(0x5C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x50,PC),r2
	mov r14,r4
	mov 0x2C,r5
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c075f6e:
	#data 0x01a1
loc_8c075f70:
	#data 0x01ac
loc_8c075f72:
	#data 0x013e
loc_8c075f74:
	#data 0x0080
loc_8c075f76:
	#data 0x0130
loc_8c075f78:
	#data 0x019f
	#align4
loc_8c075f7c:
	#data 0x8c2896b0
loc_8c075f80:
	#data 0x8c26a524
loc_8c075f84:
	#data 0xc3d55555
loc_8c075f88:
	#data 0x43d55555
loc_8c075f8c:
	#data 0x43f00000
loc_8c075f90:
	#data 0x41200000
loc_8c075f94:
	#data 0xc1200000
loc_8c075f98:
	#data 0xc1892492
loc_8c075f9c:
	#data 0x3ecdb6db
loc_8c075fa0:
	#data bank10.loc_8c104434
loc_8c075fa4:
	#data bank03.loc_8c034e8c
loc_8c075fa8:
	#data 0x8c28c5e4
loc_8c075fac:
	#data bank03.loc_8c0332e0
loc_8c075fb0:
	#data bank05.loc_8c057bb6
loc_8c075fb4:
	#data bank04.loc_8c042008

;==============================================
loc_8c075fb8:
	mov.l @r13,r3
	mov.b @(0x4,r3),r0
	tst r0,r0
	bf loc_8c075fd4
	mov.l @(0x18,r14),r5
	mov 0x40,r6
	bsr loc_8c075d52
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c075fd4
	mov.l @r13,r3
	mov 0x01,r0
	mov.b r0,@(0x4,r3)

loc_8c075fd4:
	mov.b @(0x5,r14),r0
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xFC,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @r15+,r13
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c075fe8:
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
	fcmp/gt fr2,fr3
	bt.s loc_8c076054
	fmov fr2,@(r0,r14)
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov.l @(0xA8,PC),r3
	mov 0x06,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xA0,PC),r2
	mov 0x11,r5
	mov 0x00,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x94,PC),r3
	mov r14,r4
	mov 0x00,r6
	mov 0x11,r5
	jmp @r3
	mov.l @r15+,r14

loc_8c076054:
	lds.l @r15+,pr
	mov.l @(0x8C,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c07605e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x84,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0x78,PC),r3
	add r14,r1
	mov r14,r4
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

loc_8c0760a4:
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0760aa:
	mov r4,r3
	mov.l @(0x3C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0760bc:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xA,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0760f4
	mova @(0x1C,PC),r0
	bra loc_8c0760f8
	fmov @r0,fr3

;##############################################
loc_8c0760d6:
	#data 0x0130
	#align4
loc_8c0760d8:
	#data bank15.loc_8c153884
loc_8c0760dc:
	#data bank03.loc_8c034e8c
loc_8c0760e0:
	#data bank0c.loc_8c0cbe3e
loc_8c0760e4:
	#data bank04.loc_8c045748
loc_8c0760e8:
	#data bank03.loc_8c034dee
loc_8c0760ec:
	#data bank15.loc_8c15388c
loc_8c0760f0:
	#data 0x3f200000

;----------------------------------------------
#symbol loc_8c0760f4 0x8c0760f4
#symbol loc_8c0760f8 0x8c0760f8
#symbol loc_8c0761ea 0x8c0761ea

;#symbol loc_8c07 0x8c07