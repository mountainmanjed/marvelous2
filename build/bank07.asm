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
;loc_8c07130c:









;#symbol loc_8c07 0x8c07