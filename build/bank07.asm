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
#symbol loc_8c072008 0x8c072008
#symbol loc_8c07200e 0x8c07200e







;#symbol loc_8c07 0x8c07