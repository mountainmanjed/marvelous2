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

loc_8c070344:
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
	bsr loc_8c071a5c
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
	mova @(loc_8c07491c,PC),r0;41555555
	fmov @r0,fr2

loc_8c074838:
	mov 0x5C,r0
	fmov fr2,@(r0,r14)
	mov.w @(loc_8c074914,PC),r0; 041c
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov.l @(loc_8c074920,PC),r0; 8c15370b
	extu.b r3,r3
	shll r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c074862
	mov.l @(loc_8c074924,PC),r3;loc_8c042008
	mov 0x1A,r5
	jsr @r3
	mov r14,r4

loc_8c074862:
	mov.w @(loc_8c074916,PC),r0;019c
	mov 0x44,r4
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov 0x00,r4
	mov.l @(loc_8c074928,PC),r0 ;8c15370a
	extu.b r3,r3
	shll r3
	mov.b @(r0,r3),r2
	mov.w @(loc_8c074918,PC),r0;01a1
	mov.l @(loc_8c07492c,PC),r3;8c2896b0
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
	mov.l @(loc_8c074930,PC),r0;loc_8c1536ec
	shll r6
	mov.l @(loc_8c074934,PC),r2;loc_8c034e8c
	mov 0x17,r5
	mov.b @(r0,r6),r6
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c074938,PC),r2;loc_8c104434
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
	mov.w @(loc_8c07491a,PC),r0;012c
	mov.b r3,@(r0,r14)
	rts
	mov.l @r15+,r14

loc_8c0748ec:
	mov 0x20,r0
	mov r14,r4
	mov.b @(r0,r14),r2
	mov.l @(loc_8c07493c,PC),r0;loc_8c15376c
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
	mov.l @(loc_8c074940,PC),r1;loc_8c1537a8
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
loc_8c0760f4:
	mova @(0x104,PC),r0
	fmov @r0,fr3

loc_8c0760f8:
	mov 0x5C,r0
	mov.l @(0x10C,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	mov 0x17,r5
	fmov fr3,@(r0,r14)
	mova @(0xF8,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x07,r6
	fmov fr3,@(r0,r14)
	mova @(0xF0,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xEC,PC),r2
	mov 0x11,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.l @(0xE4,PC),r3
	mov 0x11,r5
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8c076136:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xD4,PC),r3
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
	mov.w @(0x7A,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0761aa
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov 0x08,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x17,r5
	mov.w @(0x60,PC),r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	mov.l @(0x6C,PC),r3
	fmov fr3,@(r0,r14)
	mov.w @(0x56,PC),r0
	fldi1 fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c0761aa:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0761b0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x58,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(0x58,PC),r1
	mov.w @(0x38,PC),r0
	lds r1,fpul
	fmov @(r0,r14),fr2
	fldi0 fr1
	fsts fpul,fr3
	fsub fr3,fr2
	fcmp/gt fr1,fr2
	bt.s loc_8c0761e4
	fmov fr2,@(r0,r14)
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0x44,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r0
	mov.l @r2,r3
	mov.b r0,@(0x1,r3)
	lds.l @r15+,pr
	bra loc_8c0761ea
	mov.l @r15+,r14

loc_8c0761e4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0761ea:
	mov.w @(0xC,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.l @(0x28,PC),r3
	jmp @r3
	nop
	mov.b @(r0,r1),r4

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0761f8:
	#data 0x0108
loc_8c0761fa:
	#data 0x012c
	#align4
loc_8c0761fc:
	#data 0xbf200000
loc_8c076200:
	#data 0x40092492
loc_8c076204:
	#data 0xbf4db6db
loc_8c076208:
	#data bank03.loc_8c034e8c
loc_8c07620c:
	#data bank0c.loc_8c0cbe3e
loc_8c076210:
	#data bank03.loc_8c034dee
loc_8c076214:
	#data 0x3d4ccccd
loc_8c076218:
	#data 0x8c28c5e4
loc_8c07621c:
	#data bank04.loc_8c0450c0

;==============================================

	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xE4,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c07624c
	mov r0,r4
	mov.l @(0xD4,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.w @(0xBE,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c07624c:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c076254:
	mov.l r14,@-r15
	mov 0x02,r6
	sts.l pr,@-r15
	mov.l @(0xB0,PC),r3
	mov r4,r14
	jsr @r3
	mov 0x01,r5
	tst r0,r0
	bt.s loc_8c076280
	mov r0,r4
	mov.l @(0xA4,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov 0x01,r3
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov.w @(0x8E,PC),r2
	mov.l r14,@(0x14,r4)
	mov.l r4,@(0x14,r14)
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c076280:
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07628a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x01,r5
	mov.l @(0x74,PC),r3
	mov r4,r14
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0762c0
	mov r0,r4
	mov.l @(0x68,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov 0x03,r3
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @r15,r2
	mov.w @(0x4A,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0762c0:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0762cc:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x34,PC),r2
	mov 0x20,r0
	mov.l @(0x18,r14),r3
	mov r14,r4
	mov.w @(0x2E,PC),r1
	add r3,r2
	mov.l @(0x34,PC),r3
	add r14,r1
	mov.l r2,@r3
	mov.l @(0x34,PC),r2
	mov.l r1,@r2
	mov.b @(r0,r14),r3
	mov.l @(0x30,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r1
	jmp @r1
	mov.l @r15+,r14

;==============================================
loc_8c0762f4:
	mov r4,r3
	mov.l @(0x28,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c076306:
	#data 0x1101
loc_8c076308:
	#data 0x02a4
loc_8c07630a:
	#data 0x00cc
	#align4
loc_8c07630c:
	#data bank04.loc_8c044f12
loc_8c076310:
	#data loc_8c0762cc
loc_8c076314:
	#data 0x8c28c5ec
loc_8c076318:
	#data 0x8c28c5f0
loc_8c07631c:
	#data bank15.loc_8c153898
loc_8c076320:
	#data bank15.loc_8c1538a8

;==============================================
loc_8c076324:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x12C,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x138,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x11E,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x116,PC),r0
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
	mov.w @(0xF2,PC),r0
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
	mov 0x0C,r2
	mov.b @(r0,r1),r3
	mov.l @(0xE0,PC),r1
	mov.b r2,@(r0,r14)
	mov.l @r1,r3
	mov r5,r0
	nop
	mov.b r0,@(0x2,r3)
	mov 0x32,r3
	mov.w @(0xBC,PC),r0
	mov 0x00,r4
	mov 0x40,r6
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xC4,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x46,r2
	mov.w @(0x96,PC),r0
	mov 0x44,r1
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r1,@(r0,r14)
	add 0x0F,r0
	mov.w @(r0,r14),r1
	mov.w @(0x8A,PC),r2
	or r2,r1
	mov.w r1,@(r0,r14)
	add 0x92,r0
	mov.b r6,@(r0,r14)
	add 0x01,r0
	mov.b r6,@(r0,r14)
	mov.w @(0x7E,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r1
	tst r1,r1
	bt loc_8c0763f6
	mova @(0x90,PC),r0
	mov.l @(0x8C,PC),r1
	fmov @r0,fr2
	bra loc_8c0763fe
	fmov @r1,fr3

loc_8c0763f6:
	mov.l @(0x84,PC),r3
	mova @(0x88,PC),r0
	fmov @r0,fr2
	fmov @r3,fr3

loc_8c0763fe:
	fadd fr2,fr3
	mov 0x34,r0
	mov.l @(0x84,PC),r6
	fmov fr3,@(r0,r14)
	mova @(0x84,PC),r0
	fmov @r0,fr3
	mov.w @(0x58,PC),r0
	mov.l @(0x18,r14),r2
	mov.l @r6,r3
	fmov @(r0,r2),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@r3
	fmov fr2,@(r0,r14)
	mov.w @(0x4A,PC),r0
	mov.w r0,@(0x1C,r14)
	mov.l @r6,r3
	mov r4,r0
	nop
	mov.b r0,@(0x4,r3)
	mov.l @r6,r3
	mov r5,r0
	nop
	mov.b r0,@(0x5,r3)
	mov.l @r6,r3
	mov r4,r0
	nop
	mov.b r0,@(0x6,r3)
	mov.w @(0x30,PC),r0
	mov.l @r6,r3
	mov.w r0,@(0xC,r3)
	mov.l @r6,r3
	mov r4,r0
	nop
	mov.b r0,@(0xF,r3)
	bsr loc_8c076254
	mov r14,r4
	mov.l @(0x44,PC),r2
	mov 0x30,r5
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c076e32
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c076458:
	#data 0x00dc
loc_8c07645a:
	#data 0x012c
loc_8c07645c:
	#data 0x01a3
loc_8c07645e:
	#data 0x01a1
loc_8c076460:
	#data 0x019c
loc_8c076462:
	#data 0x0200
loc_8c076464:
	#data 0x01d2
loc_8c076466:
	#data 0x041c
loc_8c076468:
	#data 0x0258
loc_8c07646a:
	#data 0x00b4
	#align4
loc_8c07646c:
	#data bank12.loc_8c129560
loc_8c076470:
	#data bank12.loc_8c1294c8
loc_8c076474:
	#data 0x8c28c5ec
loc_8c076478:
	#data 0x8c2896b0
loc_8c07647c:
	#data 0x8c26a524
loc_8c076480:
	#data 0xc3d55555
loc_8c076484:
	#data 0x43d55555
loc_8c076488:
	#data 0x8c28c5f0
loc_8c07648c:
	#data 0x41892492
loc_8c076490:
	#data bank04.loc_8c042008

;==============================================
loc_8c076494:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xF4,PC),r0
	mov 0x01,r6
	mov.l @(0x18,r14),r4
	mov.l @(0xFC,PC),r7
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c0764b8
	mov.l @r7,r5
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c0764bc
	mov.w @(0xE0,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0764bc

loc_8c0764b8:
	bra loc_8c0764be
	mov r6,r0

loc_8c0764bc:
	mov 0x00,r0

loc_8c0764be:
	mov.b r0,@(0xE,r5)
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0764d0
	mov.l @r7,r2
	mov r6,r0
	nop
	mov.b r0,@(0xF,r2)

loc_8c0764d0:
	mov.w @(0x1C,r14),r0
	mov r14,r4
	mov.l @(0xC8,PC),r1
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0764e6:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0x9C,PC),r11
	add r14,r1
	mov.l @(0xA4,PC),r9
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
	mov.l @r11,r4
	mov.b @(0xE,r4),r0
	tst r0,r0
	bt.s loc_8c076538
	mov 0x01,r10
	mov r10,r0
	nop
	mov.b r0,@(0x6,r4)
	mov.w @(0x64,PC),r0
	mov.l @r11,r3
	mov.b @(r0,r14),r0
	xor 0x01,r0
	bra loc_8c076544
	mov.b r0,@(0x7,r3)

loc_8c076538:
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bt loc_8c07654e
	mov r10,r0
	nop
	mov.b r0,@(0x6,r4)

loc_8c076544:
	mov 0x30,r5
	jsr @r9
	mov r14,r4
	bra loc_8c076748
	nop

loc_8c07654e:
	mov.b @(0xF,r4),r0
	tst r0,r0
	bt.s loc_8c07656a
	mov 0x00,r12
	mov.w @(0x3C,PC),r0
	mov.b r12,@(r0,r14)
	add 0x01,r0
	mov.b r12,@(r0,r14)
	add 0xFF,r0
	mov.l @(0x14,r14),r3
	mov.b r12,@(r0,r3)
	add 0x01,r0
	mov.l @(0x14,r14),r3
	mov.b r12,@(r0,r3)

loc_8c07656a:
	mov.w @(0x2A,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c076576
	bra loc_8c07667c
	nop

loc_8c076576:
	mov.w @(0x20,PC),r0
	mov.l @(0x30,PC),r3
	mov.l @(r0,r14),r13
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0765b0
	mov.l @r11,r3
	mov r10,r0
	nop
	mov.b r0,@(0x6,r3)
	bra loc_8c076748
	nop

;##############################################
loc_8c076590:
	#data 0x0411
loc_8c076592:
	#data 0x01d0
loc_8c076594:
	#data 0x0130
loc_8c076596:
	#data 0x019c
loc_8c076598:
	#data 0x019e
loc_8c07659a:
	#data 0x01b0
	#align4
loc_8c07659c:
	#data 0x8c28c5f0
loc_8c0765a0:
	#data bank15.loc_8c1538b8
loc_8c0765a4:
	#data bank03.loc_8c034dee
loc_8c0765a8:
	#data bank04.loc_8c042008
loc_8c0765ac:
	#data bank05.loc_8c05264c

;----------------------------------------------
loc_8c0765b0:
	mov r10,r0
	nop
	mov.b r0,@(0x5,r14)
	mov 0x24,r0
	mov.b r12,@(r0,r14)
	mov r13,r5
	mov.w @(0xDC,PC),r0
	mov.w @(0xD8,PC),r2
	mov.l @(0x18,r14),r3
	mov.b r2,@(r0,r3)
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xD0,PC),r0
	mov 0x06,r2
	mov.l @(0xE4,PC),r3
	mov 0x1E,r5
	mov.b r2,@(r0,r13)
	mov.w @(0xC8,PC),r0
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov r13,r4
	mov.l @(0xD8,PC),r2
	mov 0x0F,r5
	mov 0x06,r6
	jsr @r2
	mov r14,r4
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r13)
	mov 0x60,r0
	fmov fr4,@(r0,r13)
	mov 0x68,r0
	fmov fr4,@(r0,r13)
	mov 0x6C,r0
	fmov fr4,@(r0,r13)
	mov.w @(0xA6,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c07660a
	mov.w @(0x9E,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r13)

loc_8c07660a:
	mov.w @(0x98,PC),r0
	mov.w @(0x98,PC),r3
	mov.l @(r0,r14),r4
	mov.l @(0xA8,PC),r2
	mov.l r4,@(0x4,r15)
	add r3,r4
	mov.l @(0x4,r4),r1
	and r2,r1
	or r1,r12
	tst r12,r12
	bt loc_8c076636
	mov.w @(0x82,PC),r0
	mov.l @(0x18,r14),r3
	mov.l @(r0,r14),r1
	mova @(0x98,PC),r0
	fmov @r0,fr3
	mov.w @(0x76,PC),r0
	fmov @(r0,r3),fr2
	mov 0x38,r0
	fadd fr3,fr2
	bra loc_8c07665e
	fmov fr2,@(r0,r1)

loc_8c076636:
	mov.w @(0x6C,PC),r0
	mov.w @(0x6C,PC),r3
	mov.l @(r0,r14),r4
	mov.l @(0x84,PC),r1
	mov.l r4,@r15
	add r3,r4
	mov.l @r4,r0
	and r1,r0
	tst r0,r0
	bt loc_8c07665e
	mov.w @(0x58,PC),r0
	mov.l @(0x18,r14),r3
	mov.l @(r0,r14),r2
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov.w @(0x4C,PC),r0
	fmov @(r0,r3),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r2)

loc_8c07665e:
	mov.l @(0x6C,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	mov r14,r4
	mov r13,r5
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c076f28
	mov.l @r15+,r14

loc_8c07667c:
	mov.w @(0x2A,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c07668c
	mov.l @(0x14,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c07675c

loc_8c07668c:
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c0766d0
	mov r14,r4
	mov.w @(0x14,PC),r0
	bra loc_8c0766d6
	mov.l @(r0,r14),r13

;##############################################
loc_8c07669a:
	#data 0x00c3
loc_8c07669c:
	#data 0x01f7
loc_8c07669e:
	#data 0x01f6
loc_8c0766a0:
	#data 0x0080
loc_8c0766a2:
	#data 0x01f9
loc_8c0766a4:
	#data 0x041c
loc_8c0766a6:
	#data 0x01c8
loc_8c0766a8:
	#data 0x0414
loc_8c0766aa:
	#data 0x019f
loc_8c0766ac:
	#data 0x01b4
	#align4
loc_8c0766b0:
	#data bank05.loc_8c05248e
loc_8c0766b4:
	#data bank05.loc_8c050552
loc_8c0766b8:
	#data bank03.loc_8c034e8c
loc_8c0766bc:
	#data 0x04000000
loc_8c0766c0:
	#data 0x43009249
loc_8c0766c4:
	#data 0x20000000
loc_8c0766c8:
	#data 0x42892492
loc_8c0766cc:
	#data bank04.loc_8c04ce54

;----------------------------------------------
loc_8c0766d0:
	mov.w @(0x10E,PC),r0
	mov.l @(0x14,r14),r13
	mov.l @(r0,r13),r13

loc_8c0766d6:
	mov.l @(0x114,PC),r3
	jsr @r3
	nop
	mov 0x2C,r5
	jsr @r9
	mov r14,r4
	mov.w @(0xFE,PC),r0
	mov.l @r11,r2
	mov.b @(r0,r13),r0
	mov.b r0,@(0x7,r2)
	mov.b @(0x2,r13),r0
	mov r0,r3
	mov.b @(0x2,r14),r0
	cmp/eq r0,r3
	bf loc_8c0766fc
	mov.b @(0x1,r13),r0
	extu.b r0,r0
	cmp/eq 0x11,r0
	bt loc_8c076744

loc_8c0766fc:
	mov.l @r11,r2
	mov.b @(0x5,r2),r0
	add 0xFF,r0
	mov.b r0,@(0x5,r2)
	extu.b r0,r0
	cmp/pl r0
	bf loc_8c07671e
	mov.b @(0x3,r13),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c076730
	mov 0x26,r0
	mov.w @(0xCE,PC),r3
	mov.w @(r0,r13),r2
	extu.w r2,r2
	cmp/eq r3,r2
	bf loc_8c076730

loc_8c07671e:
	mov.l @r11,r1
	mov r10,r0
	nop
	mov 0x30,r5
	mov.b r0,@(0x6,r1)
	jsr @r9
	mov r14,r4
	bra loc_8c076744
	nop

loc_8c076730:
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c076e62
	mov.l @r15+,r14

loc_8c076744:
	mov 0x02,r0
	mov.b r0,@(0x7,r14)

loc_8c076748:
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c076ea0
	mov.l @r15+,r14

loc_8c07675c:
	mov.l @(0x90,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c076786
	mov.l @(0x8C,PC),r3
	mov.l @r3,r2
	mov r12,r0
	nop
	mov r14,r4
	mov.b r0,@(0x2,r2)
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0x80,PC),r2
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c076786:
	mov.l @r11,r3
	mov.w @(0xC,r3),r0
	add 0xFF,r0
	mov.w r0,@(0xC,r3)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0767a0
	mov.w @(0x50,PC),r0
	mov 0x31,r5
	mov.l @r11,r2
	mov.w r0,@(0xC,r2)
	jsr @r9
	mov r14,r4

loc_8c0767a0:
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0x54,PC),r3
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0767b6:
	mov.w @(0x30,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x01,r4
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(r0,r14),r13
	add 0x1F,r0
	mov.b r4,@(r0,r13)
	add 0xE1,r0
	mov.l @(r0,r14),r3
	mov.l @(r0,r3),r2
	cmp/eq r14,r2
	bt loc_8c076800
	lds.l @r15+,pr
	mov.l @(0x20,PC),r2
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0767e2:
	#data 0x01b4
loc_8c0767e4:
	#data 0x0130
loc_8c0767e6:
	#data 0x1101
loc_8c0767e8:
	#data 0x00b4
loc_8c0767ea:
	#data 0x01cc
	#align4
loc_8c0767ec:
	#data bank05.loc_8c057bb6
loc_8c0767f0:
	#data bank03.loc_8c03340c
loc_8c0767f4:
	#data 0x8c28c5ec
loc_8c0767f8:
	#data loc_8c07787a
loc_8c0767fc:
	#data bank04.loc_8c045748

;==============================================
loc_8c076800:
	mov.l @(0xF8,PC),r12
	mov.l @r12,r3
	mov.b @(0xE,r3),r0
	tst r0,r0
	bt loc_8c076810
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c076810:
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c07681e
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c07681e:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c076848
	mov.l @(0xD4,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(0xD0,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	mov r13,r5
	bsr loc_8c076f28
	mov r14,r4
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov r13,r4
	tst r0,r0
	bt loc_8c076898

loc_8c076848:
	mov 0x24,r0
	mov 0x0C,r3
	mov.b r3,@(r0,r14)
	mov 0x00,r2
	mov.w @(0xA2,PC),r0
	mov.b r2,@(r0,r13)
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c07687c
	mov.w @(0x98,PC),r0
	mov 0x08,r2
	mov.b r2,@(r0,r13)
	add 0x0A,r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c076876
	mov.l @(0x9C,PC),r2
	jsr @r2
	mov r13,r4
	bra loc_8c07687c
	nop

loc_8c076876:
	mov.l @(0x98,PC),r2
	jsr @r2
	mov r13,r4

loc_8c07687c:
	mov.w @(0x7A,PC),r0
	mov r14,r4
	mov.l @r12,r3
	mov.b @(r0,r14),r0
	xor 0x01,r0
	mov.b r0,@(0x7,r3)
	mov 0x01,r0
	mov.l @r12,r2
	mov.b r0,@(0x6,r2)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c076ea0
	mov.l @r15+,r14

loc_8c076898:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0768a2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x58,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0768be
	mov 0x09,r0
	mov r14,r4
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	bra loc_8c076e32              ;8c076386+0xaac
	mov.l @r15+,r14

loc_8c0768be:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0768c4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	mov.l @(0x2C,PC),r4
	and 0x03,r0
	cmp/eq 0x00,r0
	bt.s loc_8c0768ec
	mov.l @r4,r5
	cmp/eq 0x01,r0
	bt loc_8c0768e6
	cmp/eq 0x02,r0
	bt loc_8c0768ec
	cmp/eq 0x03,r0
	bt loc_8c076918
	bra loc_8c076926
	nop

loc_8c0768e6:
	mova @(0x2C,PC),r0
	bra loc_8c07691c
	fmov @r0,fr3

loc_8c0768ec:
	mov 0x08,r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	bra loc_8c076926
	fmov fr3,@(r0,r14)

;##############################################
loc_8c0768f6:
	#data 0x01f6
loc_8c0768f8:
	#data 0x01ef
loc_8c0768fa:
	#data 0x0130
	#align4
loc_8c0768fc:
	#data 0x8c28c5f0
loc_8c076900:
	#data bank03.loc_8c034dee
loc_8c076904:
	#data bank04.loc_8c04ce54
loc_8c076908:
	#data bank05.loc_8c050610
loc_8c07690c:
	#data bank05.loc_8c051bca
loc_8c076910:
	#data bank05.loc_8c051648
loc_8c076914:
	#data 0xc0555555

;----------------------------------------------
loc_8c076918:
	mova @(0x148,PC),r0
	fmov @r0,fr3

loc_8c07691c:
	mov 0x08,r0
	fmov @(r0,r5),fr2
	mov 0x34,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c076926:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07698a
	mov.l @r4,r2
	mov 0x08,r0
	fmov @(r0,r2),fr3
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mov.l @r4,r3
	mov.b @(0x6,r3),r0
	tst r0,r0
	bt loc_8c07694a
	mov 0x09,r0
	bra loc_8c076982
	mov.b r0,@(0x5,r14)

loc_8c07694a:
	mov 0x00,r5
	mov r5,r0
	nop
	mov.b r0,@(0x5,r14)
	mov 0x01,r0
	mov.l @r4,r3
	mov.b r0,@(0x4,r3)
	mov 0x32,r3
	mov.w @(0x100,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r5,@(r0,r14)
	add 0xF2,r0
	mov.b r5,@(r0,r14)
	add 0x26,r0
	mov.l @(0xFC,PC),r3
	mov.l r5,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0xEC,PC),r2
	jsr @r2
	mov r14,r4

loc_8c076982:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c076e32
	mov.l @r15+,r14

loc_8c07698a:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c076990:
	mov r4,r3
	mov.l @(0xDC,PC),r1
	mov.l r4,@-r15
	mov.b @(0x6,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0769a2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0xC8,PC),r4
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

loc_8c0769cc:
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
	mov 0x38,r0
	mov.l @r4,r3
	fmov @r3,fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c076a58
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x38,r0
	mov.l @r4,r3
	fmov @r3,fr3
	fmov fr3,@(r0,r14)
	mov 0x03,r0
	mov.w r0,@(0x1E,r14)
	mov.l @r4,r3
	mov.b @(0x7,r3),r0
	tst r0,r0
	bt loc_8c076a12
	mova @(0x54,PC),r0
	bra loc_8c076a16
	fmov @r0,fr3

loc_8c076a12:
	mova @(0x68,PC),r0
	fmov @r0,fr3

loc_8c076a16:
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
	mov.w @(0x2C,PC),r0
	mov.l @r4,r3
	mov.w @(r0,r14),r2
	mov.b @(0x7,r3),r0
	extu.b r0,r0
	xor r0,r2
	tst r2,r2
	bt loc_8c076a44
	bra loc_8c076a46
	mov 0x0D,r3

loc_8c076a44:
	mov 0x0F,r3

loc_8c076a46:
	mov.w @(0x18,PC),r0
	mov 0x17,r5
	mov r14,r4
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(0x34,PC),r3
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

loc_8c076a58:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c076a5e:
	#data 0x01a1
loc_8c076a60:
	#data 0x0130
loc_8c076a62:
	#data 0x0158
	#align4
loc_8c076a64:
	#data 0x40555555
loc_8c076a68:
	#data 0x8c2896b0
loc_8c076a6c:
	#data bank04.loc_8c045748
loc_8c076a70:
	#data bank15.loc_8c1538e0
loc_8c076a74:
	#data bank03.loc_8c034dee
loc_8c076a78:
	#data 0x8c28c5f0
loc_8c076a7c:
	#data 0xc0555555
loc_8c076a80:
	#data 0x40892492
loc_8c076a84:
	#data 0xbf4db6db
loc_8c076a88:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c076a8c:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bt loc_8c076aa2
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c076b50

loc_8c076aa2:
	mov 0x5C,r1
	mov.l @(0x104,PC),r4
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

loc_8c076aba:
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
	mov 0x38,r0
	mov.l @r4,r5
	fmov @r5,fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c076b50
	mov.b @(0x6,r5),r0
	tst r0,r0
	bt loc_8c076afa
	mov 0x08,r0
	fldi1 fr3
	mov.b r0,@(0x5,r14)
	mov.w @(0xA8,PC),r0
	bra loc_8c076b50
	fmov fr3,@(r0,r14)

loc_8c076afa:
	mov 0x05,r0
	mov.b r0,@(0x5,r14)
	mov 0x78,r0
	mov.w r0,@(0x1E,r14)
	mov 0x4E,r3
	mov.w @(0x9A,PC),r0
	mov 0x00,r5
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r5,@(r0,r14)
	add 0xF2,r0
	mov.b r5,@(r0,r14)
	add 0x26,r0
	mov.l @(0x98,PC),r3
	mov.l r5,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x78,PC),r0
	mov.l @r4,r2
	mov.w @(r0,r14),r0
	mov r0,r1
	mov.b @(0x7,r2),r0
	extu.b r0,r0
	xor r0,r1
	tst r1,r1
	bt loc_8c076b3e
	bra loc_8c076b40
	mov 0x10,r2

loc_8c076b3e:
	mov 0x11,r2

loc_8c076b40:
	mov.w @(0x62,PC),r0
	mov r14,r4
	mov.l @(0x6C,PC),r3
	mov 0x17,r5
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

loc_8c076b50:
	rts
	mov.l @r15+,r14

;==============================================
loc_8c076b54:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x58,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(0x48,PC),r2
	mov.l @r2,r4
	mov.b @(0xE,r4),r0
	tst r0,r0
	bf loc_8c076b94
	mov.b @(0xF,r4),r0
	tst r0,r0
	bt.s loc_8c076b88
	mov 0x00,r12
	mov.w @(0x30,PC),r0
	mov.b r12,@(r0,r14)
	add 0x01,r0
	mov.b r12,@(r0,r14)
	add 0xFF,r0
	mov.l @(0x14,r14),r3
	mov.b r12,@(r0,r3)
	add 0x01,r0
	mov.l @(0x14,r14),r3
	mov.b r12,@(r0,r3)

loc_8c076b88:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c076bbc

loc_8c076b94:
	mov 0x08,r0
	fldi1 fr3
	mov.b r0,@(0x5,r14)
	mov.w @(0x2,PC),r0
	bra loc_8c076c54
	fmov fr3,@(r0,r14)

;##############################################
loc_8c076ba0:
	#data 0x0108
loc_8c076ba2:
	#data 0x01a1
loc_8c076ba4:
	#data 0x0130
loc_8c076ba6:
	#data 0x0158
loc_8c076ba8:
	#data 0x019c
	#align4
loc_8c076bac:
	#data 0x8c28c5f0
loc_8c076bb0:
	#data 0x8c2896b0
loc_8c076bb4:
	#data bank03.loc_8c034e8c
loc_8c076bb8:
	#data bank03.loc_8c034dee

;----------------------------------------------
loc_8c076bbc:
	mov.w @(0xC4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c076c46
	mov.w @(0xBE,PC),r0
	mov.l @(0xD0,PC),r3
	mov.l @(r0,r14),r13
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c076bd8
	mov 0x08,r0
	bra loc_8c076c54
	mov.b r0,@(0x5,r14)

loc_8c076bd8:
	mov 0x06,r0
	mov.w @(0xAA,PC),r2
	mov.b r0,@(0x5,r14)
	mov r13,r5
	mov.w @(0xA6,PC),r0
	mov.l @(0x18,r14),r3
	mov.b r2,@(r0,r3)
	mov.l @(0xB4,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x24,r0
	mov.b r12,@(r0,r14)
	mov 0x06,r3
	mov.w @(0x96,PC),r0
	mov 0x1E,r5
	mov.b r3,@(r0,r13)
	mov.w @(0x92,PC),r0
	mov.l @(0xA4,PC),r3
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov r13,r4
	mov.l @(0xA0,PC),r2
	mov 0x0F,r5
	mov 0x07,r6
	jsr @r2
	mov r14,r4
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r13)
	mov 0x60,r0
	fmov fr4,@(r0,r13)
	mov 0x68,r0
	fmov fr4,@(r0,r13)
	mov 0x6C,r0
	fmov fr4,@(r0,r13)
	mov.w @(0x6E,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf.s loc_8c076c32
	mov r13,r5
	mov.w @(0x64,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r13)

loc_8c076c32:
	mov.l @(0x74,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c076f28
	mov.l @r15+,r14

loc_8c076c46:
	lds.l @r15+,pr
	mov.l @(0x60,PC),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c076c54:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c076c5e:
	mov.w @(0x32,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x01,r4
	sts.l pr,@-r15
	mov.l @(r0,r14),r13
	add 0x1F,r0
	mov.b r4,@(r0,r13)
	add 0xE1,r0
	mov.l @(r0,r14),r3
	mov.l @(r0,r3),r2
	cmp/eq r14,r2
	bt loc_8c076cb0
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c07787a
	mov.l @r15+,r14

;##############################################
loc_8c076c84:
	#data 0x019e
loc_8c076c86:
	#data 0x01b0
loc_8c076c88:
	#data 0x00c3
loc_8c076c8a:
	#data 0x01f7
loc_8c076c8c:
	#data 0x01f6
loc_8c076c8e:
	#data 0x0080
loc_8c076c90:
	#data 0x01f9
loc_8c076c92:
	#data 0x041c
loc_8c076c94:
	#data 0x01cc
	#align4
loc_8c076c98:
	#data bank05.loc_8c05264c
loc_8c076c9c:
	#data bank05.loc_8c05248e
loc_8c076ca0:
	#data bank05.loc_8c050552
loc_8c076ca4:
	#data bank03.loc_8c034e8c
loc_8c076ca8:
	#data bank04.loc_8c04ce54
loc_8c076cac:
	#data bank04.loc_8c045748

;----------------------------------------------
loc_8c076cb0:
	mov.l @(0xF8,PC),r2
	mov.l @r2,r3
	mov.b @(0xE,r3),r0
	tst r0,r0
	bt loc_8c076cc0
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c076cc0:
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c076cce
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c076cce:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c076cf8
	mov.l @(0xD4,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(0xD0,PC),r3
	mov r13,r5
	jsr @r3
	mov r14,r4
	mov r13,r5
	bsr loc_8c076f28
	mov r14,r4
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov r13,r4
	tst r0,r0
	bt loc_8c076d46

loc_8c076cf8:
	mov 0x07,r0
	mov.b r0,@(0x5,r14)
	mov 0x24,r0
	mov 0x0C,r3
	mov.b r3,@(r0,r14)
	mov 0x00,r2
	mov.w @(0x9E,PC),r0
	mov.b r2,@(r0,r13)
	mov.b @(0x5,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c076d30
	mov.w @(0x94,PC),r0
	mov 0x08,r2
	mov.b r2,@(r0,r13)
	add 0x0A,r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c076d2a
	mov.l @(0x98,PC),r2
	jsr @r2
	mov r13,r4
	bra loc_8c076d30
	nop

loc_8c076d2a:
	mov.l @(0x94,PC),r2
	jsr @r2
	mov r13,r4

loc_8c076d30:
	mov.w @(0x76,PC),r0
	mov r14,r4
	fldi1 fr3
	mov 0x13,r6
	mov.l @(0x88,PC),r3
	mov 0x17,r5
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c076d46:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c076d4e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(0x6C,PC),r1
	mov.w @(0x4C,PC),r0
	lds r1,fpul
	fmov @(r0,r14),fr2
	fldi0 fr1
	fsts fpul,fr3
	fsub fr3,fr2
	fcmp/gt fr1,fr2
	bt.s loc_8c076d74
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c07787a
	mov.l @r15+,r14

loc_8c076d74:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c076d7a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x30,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(0x40,PC),r1
	mov.w @(0x20,PC),r0
	lds r1,fpul
	fmov @(r0,r14),fr2
	fldi0 fr1
	fsts fpul,fr3
	fsub fr3,fr2
	fcmp/gt fr1,fr2
	bt.s loc_8c076da0
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c07787a
	mov.l @r15+,r14

loc_8c076da0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c076da6:
	#data 0x01f6
loc_8c076da8:
	#data 0x01ef
loc_8c076daa:
	#data 0x0108
	#align4
loc_8c076dac:
	#data 0x8c28c5f0
loc_8c076db0:
	#data bank03.loc_8c034dee
loc_8c076db4:
	#data bank04.loc_8c04ce54
loc_8c076db8:
	#data bank05.loc_8c050610
loc_8c076dbc:
	#data bank05.loc_8c05176e
loc_8c076dc0:
	#data bank05.loc_8c051648
loc_8c076dc4:
	#data bank03.loc_8c034e8c
loc_8c076dc8:
	#data 0x3d4ccccd

;==============================================
loc_8c076dcc:
	mov.l @(0xF0,PC),r5
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @r5,r4
	mov.b @(0xE,r4),r0
	tst r0,r0
	bt loc_8c076df2
	mov 0x01,r0
	mov.b r0,@(0x6,r4)
	mov r14,r4
	mov.w @(0xD6,PC),r0
	mov.l @r5,r3
	mov.b @(r0,r14),r0
	xor 0x01,r0
	mov.b r0,@(0x7,r3)
	lds.l @r15+,pr
	bra loc_8c076ea0
	mov.l @r15+,r14

loc_8c076df2:
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x5C,r1
	mov.l @(0xCC,PC),r3
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
	bf loc_8c076e2c
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	lds.l @r15+,pr
	bra loc_8c07787a
	mov.l @r15+,r14

loc_8c076e2c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c076e32:
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov.w @(0x74,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c076e52
	mova @(0x7C,PC),r0
	bra loc_8c076e56
	fmov @r0,fr3

loc_8c076e52:
	mova @(0x7C,PC),r0
	fmov @r0,fr3

loc_8c076e56:
	mov.l @(0x7C,PC),r3
	mov 0x5C,r0
	mov 0x09,r6
	fmov fr3,@(r0,r4)
	jmp @r3
	mov 0x17,r5

loc_8c076e62:
	mov.l r14,@-r15
	mov 0x03,r0
	mov r4,r14
	mov.b r0,@(0x5,r14)
	mov 0x20,r0
	mov.l @(0x50,PC),r4
	mov.w r0,@(0x1E,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x08,r0
	mov.l @r4,r3
	fmov fr3,@(r0,r3)
	mov.w @(0x3E,PC),r0
	mov.l @r4,r3
	mov.w @(r0,r14),r2
	mov.b @(0x7,r3),r0
	extu.b r0,r0
	xor r0,r2
	tst r2,r2
	bt loc_8c076e8e
	bra loc_8c076e90
	mov 0x0A,r3

loc_8c076e8e:
	mov 0x0B,r3

loc_8c076e90:
	mov.w @(0x2A,PC),r0
	mov r14,r4
	mov 0x17,r5
	mov.b r3,@(r0,r14)
	mov.l @(0x38,PC),r3
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

loc_8c076ea0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,PC),r4
	mov 0x04,r0
	mov.b r0,@(0x5,r14)
	mov 0x00,r0
	mov.b r0,@(0x6,r14)
	mov.l @r4,r3
	mov.b @(0x7,r3),r0
	tst r0,r0
	bt loc_8c076edc
	mova @(0x20,PC),r0
	bra loc_8c076ee0
	fmov @r0,fr3

;##############################################
loc_8c076ebc:
	#data 0x0130
loc_8c076ebe:
	#data 0x0158
	#align4
loc_8c076ec0:
	#data 0x8c28c5f0
loc_8c076ec4:
	#data bank03.loc_8c034dee
loc_8c076ec8:
	#data bank03.loc_8c03340c
loc_8c076ecc:
	#data 0x40200000
loc_8c076ed0:
	#data 0xc0200000
loc_8c076ed4:
	#data bank03.loc_8c034e8c
loc_8c076ed8:
	#data 0x40a00000

;----------------------------------------------
loc_8c076edc:
	mova @(0x114,PC),r0
	fmov @r0,fr3

loc_8c076ee0:
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mova @(0x10C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x108,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @r4,r3
	fmov @r3,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xE2,PC),r0
	mov.l @r4,r3
	mov.w @(r0,r14),r2
	mov.b @(0x7,r3),r0
	extu.b r0,r0
	xor r0,r2
	tst r2,r2
	bt loc_8c076f16
	bra loc_8c076f18
	mov 0x0C,r3
loc_8c076f16:
	mov 0x0E,r3

loc_8c076f18:
	mov.w @(0xCE,PC),r0
	mov r14,r4
	mov 0x17,r5
	mov.b r3,@(r0,r14)
	mov.l @(0xDC,PC),r3
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c076f28:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(0xB4,PC),r0
	mov r4,r14
	mov.w @(0xB2,PC),r3
	mov.l @(r0,r14),r4
	mov 0x00,r0
	mov.l @(0xC4,PC),r2
	mov.l r4,@(0xC,r15)
	add r3,r4
	mov.l @r4,r1
	mov.l @(0xB8,PC),r12
	and r2,r1
	or r0,r1
	tst r1,r1
	bt.s loc_8c076f8c
	mov r5,r13
	mov.w @(0x9A,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x07,r0
	bf loc_8c076f8c
	mov 0x10,r5
	mov 0x0B,r6
	jsr @r12
	mov r13,r4
	mov.w @(0x82,PC),r0
	mov 0x34,r8
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c076f76
	add r14,r8
	mov.l @(0x98,PC),r1
	lds r1,fpul
	bra loc_8c076f7c
	fsts fpul,fr3

loc_8c076f76:
	mov.l @(0x94,PC),r2
	lds r2,fpul
	fsts fpul,fr3

loc_8c076f7c:
	fmov @r8,fr2
	mov 0x38,r0
	mov.l @(0x8C,PC),r1
	fadd fr3,fr2
	lds r1,fpul
	fmov fr2,@r8
	bra loc_8c077052
	fsts fpul,fr3

loc_8c076f8c:
	mov.w @(0x5C,PC),r0
	mov 0x00,r4
	mov.w @(0x5A,PC),r3
	mov.l @(r0,r14),r5
	mov.l @(0x7C,PC),r2
	mov.l r5,@(0x8,r15)
	add r3,r5
	mov.l @r5,r1
	and r2,r1
	mov r4,r0
	nop
	or r0,r1
	tst r1,r1
	bt loc_8c077024
	mov.w @(0x44,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x07,r0
	bf loc_8c077024
	mov 0x48,r0
	mov 0x10,r5
	mov.l r4,@(r0,r13)
	mov 0x12,r6
	jsr @r12
	mov r13,r4
	mov.w @(0x28,PC),r0

loc_8c076fbe:
	mov 0x34,r8
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c076fd0
	add r14,r8
	mov.l @(0x4C,PC),r1
	lds r1,fpul
	bra loc_8c076fd6
	fsts fpul,fr3

loc_8c076fd0:
	mov.l @(0x48,PC),r2
	lds r2,fpul
	fsts fpul,fr3

loc_8c076fd6:
	fmov @r8,fr2
	mov 0x38,r0
	mov.l @(0x44,PC),r1
	fadd fr3,fr2
	lds r1,fpul
	fsts fpul,fr3
	fmov fr2,@r8
	bra loc_8c077052
	nop

;################################################
loc_8c076fe8:
	#data 0x0130
loc_8c076fea:
	#data 0x0158
loc_8c076fec:
	#data 0x01c8
loc_8c076fee:
	#data 0x0414
loc_8c076ff0:
	#data 0x0150
	#align4
loc_8c076ff4:
	#data 0xc0a00000
loc_8c076ff8:
	#data 0x41092492
loc_8c076ffc:
	#data 0xbf4db6db
loc_8c077000:
	#data bank03.loc_8c034e8c
loc_8c077004:
	#data 0x80000000
loc_8c077008:
	#data 0xc2055555
loc_8c07700c:
	#data 0x42055555
loc_8c077010:
	#data 0x42092492
loc_8c077014:
	#data 0x20000000
loc_8c077018:
	#data 0x41f00000
loc_8c07701c:
	#data 0xc1f00000
loc_8c077020:
	#data 0x425edb6d

;==============================================
loc_8c077024:
	mov.w @(0x13C,PC),r0
	mov.w @(0x13C,PC),r3
	mov.l @(r0,r14),r6
	mov.w @(0x134,PC),r5
	mov.l r6,@(0x4,r15)
	add r3,r6
	mov.l @(0x4,r6),r2
	and r5,r2
	or r4,r2
	tst r2,r2
	bt loc_8c07705a
	mov.w @(0x12A,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x08,r0
	bf loc_8c07705a
	mov 0x10,r5
	mov 0x02,r6
	jsr @r12
	mov r13,r4
	mov.l @(0x128,PC),r1
	mov 0x38,r0
	lds r1,fpul
	fsts fpul,fr3

loc_8c077052:
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	bra loc_8c0770ac
	fmov fr2,@(r0,r14)

loc_8c07705a:
	mov.w @(0x106,PC),r0
	mov.w @(0x106,PC),r3
	mov.l @(r0,r14),r6
	mov.l r6,@r15
	add r3,r6
	mov.l @(0x4,r6),r2
	and r2,r5
	or r5,r4
	tst r4,r4
	bt loc_8c0770ac
	mov.w @(0xF6,PC),r0
	mov.b @(r0,r14),r0
	cmp/eq 0x09,r0
	bf loc_8c0770ac
	mov 0x10,r5
	mov 0x0D,r6
	jsr @r12
	mov r13,r4
	mov.w @(0xE8,PC),r0
	mov 0x34,r8
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c077092
	add r14,r8
	mov.l @(0xEC,PC),r1
	lds r1,fpul
	bra loc_8c077098
	fsts fpul,fr3

loc_8c077092:
	mov.l @(0xE8,PC),r2
	lds r2,fpul
	fsts fpul,fr3

loc_8c077098:
	fmov @r8,fr2
	mov 0x38,r0
	mov.l @(0xE0,PC),r1
	fadd fr3,fr2
	lds r1,fpul
	fmov fr2,@r8
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c0770ac:
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0770ba:
	mov r4,r3
	mov.l @(0xC4,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0770cc:
	mov.w @(0x9C,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0xB0,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x8E,PC),r0
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x86,PC),r0
	mov 0x01,r1
	mov.b r1,@(r0,r4)
	mov r4,r1
	mov.l @(0x18,r4),r0
	add 0x50,r1
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x62,PC),r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(0x64,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov 0x00,r5
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov 0x44,r3
	mov.w @(0x32,PC),r0
	mov.b r5,@(r0,r4)
	add 0x73,r0
	mov.b r5,@(r0,r4)
	mov.b @(0x2,r4),r0
	xor 0x01,r0
	mov.b r0,@(0x2,r4)
	mov.w @(0x28,PC),r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r3,@(r0,r4)
	lds.l @r15+,pr

;==============================================
loc_8c077150:
	sts.l pr,@-r15
	mov.l @(0x14,r4),r3
	mov.b @(0x4,r3),r0
	mov 0x01,r3
	extu.b r0,r0
	cmp/gt r3,r0
	bf loc_8c077190
	bra loc_8c07787a
	lds.l @r15+,pr

;##############################################
loc_8c077162:
	#data 0x1000
loc_8c077164:
	#data 0x01c8
loc_8c077166:
	#data 0x0414
loc_8c077168:
	#data 0x0150
loc_8c07716a:
	#data 0x0130
loc_8c07716c:
	#data 0x00dc
loc_8c07716e:
	#data 0x012c
loc_8c077170:
	#data 0x01a3
loc_8c077172:
	#data 0x019c
	#align4
loc_8c077174:
	#data 0xc1cdb6db
loc_8c077178:
	#data 0xc1f00000
loc_8c07717c:
	#data 0x41f00000
loc_8c077180:
	#data 0xc2452492
loc_8c077184:
	#data bank15.loc_8c1538e8
loc_8c077188:
	#data bank12.loc_8c129560
loc_8c07718c:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c077190:
	mov.l @(0x14,r4),r2
	mov r4,r1
	mov.l @(0x140,PC),r3
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x124,PC),r0
	mov.w @(0x122,PC),r1
	mov.l @(0x14,r4),r2
	mov.l @(0x130,PC),r3
	add r4,r1
	add r0,r2
	jsr @r3
	mov 0x14,r0
	mov.w @(0x116,PC),r0
	mov.l @(0x14,r4),r1
	mov.l @(r0,r1),r3
	mov.l r3,@(r0,r4)
	mov.l @(0x14,r4),r5
	mov.b @(0x4,r5),r0
	extu.b r0,r0

loc_8c0771bc:
	cmp/eq 0x01,r0
	bf loc_8c0771cc

loc_8c0771c0:
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf loc_8c0771cc
	mov.l @(0x114,PC),r2
	jmp @r2
	lds.l @r15+,pr

loc_8c0771cc:
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c0771d2:
	mov r4,r3
	mov.l @(0x108,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0771e4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xDE,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xF0,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xD0,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xC8,PC),r0
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
	mov.w @(0xA4,PC),r0
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
	mov.l @(0x94,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x0C,r2
	mov 0x24,r0
	mov.l @(0x98,PC),r5
	mov.b @(r0,r1),r3
	mov 0x31,r1
	mov.b r2,@(r0,r14)
	add r14,r1
	mov.b @(0x2,r14),r0
	mov 0x00,r4
	shll2 r0
	add 0x04,r0
	mov.b r0,@r1
	mov 0x01,r0
	mov.l @r5,r3
	mov.b r0,@(0x2,r3)
	mov.l @r5,r3
	mov r4,r0
	nop
	mov.b r0,@(0xD,r3)
	mov 0x46,r5
	mov.w @(0x5A,PC),r0
	mov.l @(0x74,PC),r3
	mov.b r5,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov 0x40,r4
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x44,r2
	mov.w @(0x36,PC),r0
	mov 0x02,r1
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r2,@(r0,r14)
	mov.b @(0x2,r14),r0
	tst r0,r0
	mov.w @(0x2A,PC),r0
	mov.w r1,@(r0,r14)
	add 0x92,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov.w @(0x20,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c0772f8
	mova @(0x34,PC),r0
	mov.l @(0x30,PC),r2
	fmov @r0,fr2
	bra loc_8c077300
	fmov @r2,fr3

;##############################################
loc_8c0772c6:
	#data 0x0140
loc_8c0772c8:
	#data 0x01c0
loc_8c0772ca:
	#data 0x00dc
loc_8c0772cc:
	#data 0x012c
loc_8c0772ce:
	#data 0x01a3
loc_8c0772d0:
	#data 0x01a1
loc_8c0772d2:
	#data 0x019c
loc_8c0772d4:
	#data 0x01ac
loc_8c0772d6:
	#data 0x01d2
	#align4
loc_8c0772d8:
	#data bank12.loc_8c1294c8
loc_8c0772dc:
	#data bank04.loc_8c045748
loc_8c0772e0:
	#data bank15.loc_8c1538f8
loc_8c0772e4:
	#data bank12.loc_8c129560
loc_8c0772e8:
	#data 0x8c28c5ec
loc_8c0772ec:
	#data 0x8c2896b0
loc_8c0772f0:
	#data 0x8c26a524
loc_8c0772f4:
	#data 0xc3d55555

;----------------------------------------------
loc_8c0772f8:
	mov.l @(0xFC,PC),r3
	mova @(0x100,PC),r0
	fmov @r0,fr2
	fmov @r3,fr3

loc_8c077300:
	fadd fr2,fr3
	mov 0x34,r0
	fldi0 fr4
	mov.l @(0xF8,PC),r2
	fmov fr3,@(r0,r14)
	mova @(0xF8,PC),r0
	fmov @r0,fr3
	mov.l @(0x18,r14),r1
	mov.w @(0xE0,PC),r0
	mov.l @r2,r3
	fmov @(r0,r1),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@r3
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xC4,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c07733c
	mova @(0xD0,PC),r0
	bra loc_8c077340
	fmov @r0,fr2

loc_8c07733c:
	mova @(0xCC,PC),r0
	fmov @r0,fr2

loc_8c077340:
	mov.l @(0xCC,PC),r3
	mov 0x5C,r0
	mov 0x00,r5
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xC0,PC),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	mov 0x22,r0
	mov.l @(0xA8,PC),r2
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r14)
	add 0x78,r0
	mov.l @r2,r3
	mov 0x17,r5
	mov 0x20,r6
	mov.w r0,@(0xC,r3)
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xA4,PC),r2
	mov 0x30,r5
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c07737c:
	mov.l r14,@-r15
	mov 0x22,r0
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0773c2
	mov.l @(0x18,r14),r4
	mov.w @(0x1C,r14),r0
	tst 0x02,r0
	bt loc_8c0773a0
	mov.l @(0x88,PC),r2
	mov 0x02,r6
	mov 0x01,r7
	jsr @r2
	mov r6,r5
	bra loc_8c0773aa
	nop

loc_8c0773a0:
	mov.l @(0x7C,PC),r2
	mov 0x02,r6
	mov 0x01,r7
	jsr @r2
	mov r6,r5

loc_8c0773aa:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0773e2
	mov 0x22,r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)
	mov 0x3C,r0
	bra loc_8c0773e2
	mov.w r0,@(0x1C,r14)

loc_8c0773c2:
	mov.l @(0x5C,PC),r2
	mov 0x02,r6
	mov 0x01,r7
	jsr @r2
	mov r6,r5
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0773e2
	mov 0x22,r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)
	mov 0x0A,r0
	mov.w r0,@(0x1C,r14)

loc_8c0773e2:
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
loc_8c0773f4:
	#data 0x041c
loc_8c0773f6:
	#data 0x0130
	#align4
loc_8c0773f8:
	#data 0x8c26a524
loc_8c0773fc:
	#data 0x43d55555
loc_8c077400:
	#data 0x8c28c5f0
loc_8c077404:
	#data 0x41892492
loc_8c077408:
	#data 0x40200000
loc_8c07740c:
	#data 0xc0200000
loc_8c077410:
	#data loc_8c07628a
loc_8c077414:
	#data bank03.loc_8c034e8c
loc_8c077418:
	#data bank04.loc_8c042008
loc_8c07741c:
	#data bank03.loc_8c03544c
loc_8c077420:
	#data bank03.loc_8c0353ee
loc_8c077424:
	#data bank15.loc_8c153908

;==============================================
loc_8c077428:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x104,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0x100,PC),r12
	add r14,r1
	mov.l @(0x100,PC),r13
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
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c077482
	mov.w @(0xB2,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0774e8

loc_8c077482:
	mov.w @(0xAA,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c07749c
	mov.l @(0xB8,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x2C,r5
	jsr @r13
	mov r14,r4
	mov 0x30,r5
	jsr @r13
	mov r14,r4

loc_8c07749c:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x8C,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0774b0
	mova @(0x9C,PC),r0
	bra loc_8c0774b4
	fmov @r0,fr3

loc_8c0774b0:
	mova @(0x98,PC),r0
	fmov @r0,fr3

loc_8c0774b4:
	mov 0x5C,r0
	mov r14,r4
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	mov 0x0C,r6
	fmov fr3,@(r0,r14)
	mova @(0x8C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x17,r5
	fmov fr3,@(r0,r14)
	mova @(0x84,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @r12,r3
	fmov @r3,fr3
	mov.l @(0x7C,PC),r3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0774e8:
	mov.l @(0x70,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c077506
	mov.l @(0x6C,PC),r3
	mov 0x00,r0
	mov r14,r4
	mov.l @r3,r2
	mov.b r0,@(0x2,r2)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c07787a
	mov.l @r15+,r14

loc_8c077506:
	mov.l @r12,r3
	mov.w @(0xC,r3),r0
	add 0xFF,r0
	mov.w r0,@(0xC,r3)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c077520
	mov.w @(0x1C,PC),r0
	mov 0x31,r5
	mov.l @r12,r2
	mov.w r0,@(0xC,r2)
	jsr @r13
	mov r14,r4

loc_8c077520:
	lds.l @r15+,pr
	mov.l @(0x40,PC),r3
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07752e:
	#data 0x019e
loc_8c077530:
	#data 0x019f
loc_8c077532:
	#data 0x0130
loc_8c077534:
	#data 0x00b4
	#align4
loc_8c077538:
	#data bank03.loc_8c034dee
loc_8c07753c:
	#data 0x8c28c5f0
loc_8c077540:
	#data bank04.loc_8c042008
loc_8c077544:
	#data bank05.loc_8c057bb6
loc_8c077548:
	#data 0xc0a00000
loc_8c07754c:
	#data 0x40a00000
loc_8c077550:
	#data 0x41092492
loc_8c077554:
	#data 0xbf4db6db
loc_8c077558:
	#data bank03.loc_8c034e8c
loc_8c07755c:
	#data bank03.loc_8c03340c
loc_8c077560:
	#data 0x8c28c5ec
loc_8c077564:
	#data bank04.loc_8c045748

;==============================================
loc_8c077568:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x144,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0x140,PC),r4
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
	mov 0x38,r0
	mov.l @r4,r3
	fmov @r3,fr3
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c077604
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x38,r0
	mov.l @r4,r3
	fmov @r3,fr3
	fmov fr3,@(r0,r14)
	mov 0x03,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0xE2,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0775d8
	mova @(0xE8,PC),r0
	bra loc_8c0775dc
	fmov @r0,fr3

loc_8c0775d8:
	mova @(0xE4,PC),r0
	fmov @r0,fr3

loc_8c0775dc:
	mov 0x5C,r0
	mov.l @(0xEC,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	mov r14,r4
	fmov fr3,@(r0,r14)
	mova @(0xD8,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x0D,r6
	fmov fr3,@(r0,r14)
	mova @(0xD0,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov 0x17,r5
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c077604:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07760a:
	mov.w @(0x1E,r4),r0
	tst r0,r0
	bt loc_8c07761c
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07767e

loc_8c07761c:
	mov 0x5C,r1
	mov.l @(0x98,PC),r5
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
	mov 0x38,r0
	mov.l @r5,r3
	fmov @r3,fr3
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bt loc_8c07767e
	mov.b @(0x5,r4),r0
	mov.l @(0x68,PC),r2
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x38,r0
	mov.l @r5,r3
	fmov @r3,fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x3C,PC),r0
	fldi1 fr3
	fmov fr3,@(r0,r4)
	mov 0x01,r0
	mov.l @r2,r3
	mov.b r0,@(0xD,r3)

loc_8c07767e:
	rts
	nop

;==============================================
loc_8c077682:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x2C,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(0x44,PC),r1
	mov.w @(0x20,PC),r0
	lds r1,fpul
	fmov @(r0,r14),fr2
	fldi0 fr1
	fsts fpul,fr3
	fsub fr3,fr2
	fcmp/gt fr1,fr2
	bt.s loc_8c0776d8
	fmov fr2,@(r0,r14)
	mov.l @(0x2C,PC),r3
	mov 0x00,r0
	mov r14,r4
	mov.l @r3,r2
	mov.b r0,@(0x2,r2)
	lds.l @r15+,pr
	bra loc_8c07787a
	mov.l @r15+,r14

;##############################################
loc_8c0776b0:
	#data 0x0130
loc_8c0776b2:
	#data 0x0108
	#align4
loc_8c0776b4:
	#data bank03.loc_8c034dee
loc_8c0776b8:
	#data 0x8c28c5f0
loc_8c0776bc:
	#data 0xc0555555
loc_8c0776c0:
	#data 0x40555555
loc_8c0776c4:
	#data 0x40892492
loc_8c0776c8:
	#data 0xbf4db6db
loc_8c0776cc:
	#data bank03.loc_8c034e8c
loc_8c0776d0:
	#data 0x8c28c5ec
loc_8c0776d4:
	#data 0x3d4ccccd

;----------------------------------------------
loc_8c0776d8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0776de:
	mov r4,r3
	mov.l @(0x140,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0776f0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x11E,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x128,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x110,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x108,PC),r0
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
	mov.w @(0xE4,PC),r0
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
	mov 0x0C,r2
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt.s loc_8c07776c
	mov.l @(0x14,r14),r3
	bra loc_8c07776e
	mov 0x01,r2

loc_8c07776c:
	mov 0xFF,r2

loc_8c07776e:
	mov 0x31,r0
	mov.b @(r0,r3),r3
	mov 0x1B,r5
	mov 0x18,r6
	add r3,r2
	mov.l @(0xB4,PC),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r14

loc_8c077786:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov r4,r14
	bsr loc_8c0777da
	mov r14,r4
	mov.l @(0xA0,PC),r3
	mov.l @r3,r4
	mov.b @(0x2,r4),r0
	tst r0,r0
	bt loc_8c0777cc
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0777b8
	mov.b @(0xD,r4),r0
	tst r0,r0
	bt loc_8c0777d4
	mov.b @(0x5,r14),r0
	fldi1 fr3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x66,PC),r0
	bra loc_8c0777d4
	fmov fr3,@(r0,r14)

loc_8c0777b8:
	mov.l @(0x80,PC),r1
	mov.w @(0x5E,PC),r0
	lds r1,fpul
	fmov @(r0,r14),fr2
	fldi0 fr1
	fsts fpul,fr3
	fsub fr3,fr2
	fcmp/gt fr1,fr2
	bt.s loc_8c0777d4
	fmov fr2,@(r0,r14)

loc_8c0777cc:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c07787a
	mov.l @r15+,r14

loc_8c0777d4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0777da:
	mov.l @(0x14,r4),r3
	mov 0x34,r0
	mov.l @(0x60,PC),r5
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x2E,PC),r0
	mov.l @(0x14,r4),r3
	mov.b @(r0,r3),r2
	mov 0x21,r0
	mov.b @(r0,r4),r3
	extu.b r2,r2
	mov.w @(0x24,PC),r0
	extu.b r3,r3
	shll r2
	add r3,r2
	mov.w @(r0,r4),r3
	shll2 r2
	shll r2
	add r5,r2
	fmov @r2,fr4
	tst r3,r3
	mov 0x34,r2
	bt.s loc_8c077844
	add r4,r2
	bra loc_8c077848
	fmov fr4,fr3

;##############################################
loc_8c077816:
	#data 0x00dc
loc_8c077818:
	#data 0x012c
loc_8c07781a:
	#data 0x01a3
loc_8c07781c:
	#data 0x0108
loc_8c07781e:
	#data 0x014b
loc_8c077820:
	#data 0x0130
	#align4
loc_8c077824:
	#data bank15.loc_8c153918
loc_8c077828:
	#data bank12.loc_8c129560
loc_8c07782c:
	#data bank12.loc_8c1294c8
loc_8c077830:
	#data bank03.loc_8c034c38
loc_8c077834:
	#data bank03.loc_8c034d8c
loc_8c077838:
	#data 0x8c28c5ec
loc_8c07783c:
	#data 0x3d4ccccd
loc_8c077840:
	#data bank15.loc_8c153928

;----------------------------------------------
loc_8c077844:
	fmov fr4,fr3
	fneg fr3

loc_8c077848:
	fmov @r2,fr2
	mov 0x04,r1
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@r2
	mov.w @(0x40,PC),r2
	mov.l @(0x14,r4),r3
	fmov @(r0,r4),fr2
	add r3,r2
	mov 0x21,r3
	mov.b @r2,r2
	add r4,r3
	mov.b @r3,r3
	extu.b r2,r2
	shll r2
	extu.b r3,r3
	add r3,r2
	shll2 r2
	shll r2
	add r2,r5
	add r5,r1
	fmov @r1,fr3
	fadd fr3,fr2
	rts
	fmov fr2,@(r0,r4)

;==============================================
loc_8c07787a:
	mov 0x03,r0
	mov.l @(0x1C,PC),r2
	mov.b r0,@(0x4,r4)
	mov 0x00,r5
	mov.w @(0x12,PC),r0
	mov.b r5,@(r0,r4)
	mov.l @r2,r3
	mov r5,r0
	nop
	rts
	mov.b r0,@(0x2,r3)

;==============================================
loc_8c077890:
	mov.l @(0xC,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c077896:
	#data 0x014b
loc_8c077898:
	#data 0x012c
	#align4
loc_8c07789c:
	#data 0x8c28c5ec
loc_8c0778a0:
	#data bank04.loc_8c0450c0

;==============================================
;unused
loc_8c0778a4:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@(0x8,r15)
	mov r5,r0
	nop
	mov.l @(0x154,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0778de
	mov r0,r4
	mov.l @(0x144,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x8,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.w @(0x11C,PC),r2
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0778de:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c0778e6:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x104,PC),r2
	mov 0x20,r0
	mov.l @(0x18,r14),r3
	mov r14,r4
	mov.w @(0xFE,PC),r1
	add r3,r2
	mov.l @(0x114,PC),r3
	add r14,r1
	mov.l r2,@r3
	mov.l @(0x110,PC),r2
	mov.l r1,@r2
	mov.b @(r0,r14),r3
	mov.l @(0x110,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r1
	jmp @r1
	mov.l @r15+,r14

;==============================================
loc_8c07790e:
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
loc_8c077920:
	mov.w @(0xD2,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0xF0,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xC4,PC),r0
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xBC,PC),r0
	mov 0x01,r1
	mov.b r1,@(r0,r4)
	mov r4,r1
	mov.l @(0x18,r4),r0
	add 0x50,r1
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x98,PC),r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(0xA4,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov 0x00,r5
	mov.l @(0x88,PC),r2
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x68,PC),r0
	mov.b r5,@(r0,r4)
	add 0x2C,r0
	mov.l @(0x18,r4),r1
	mov.l @r2,r3
	mov.w @(r0,r1),r1
	mov.w r1,@r3
	mov r5,r0
	nop
	lds.l @r15+,pr
	rts
	mov.b r0,@(0x7,r4)

;==============================================
loc_8c0779a4:
	mov r4,r3
	mov.l @(0x7C,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0779b6:
	mov.l @(0x58,PC),r2
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x3C,PC),r0
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.l @(0x18,r14),r4
	mov.w @r3,r1
	mov.w @(r0,r4),r3
	cmp/eq r3,r1
	bt.s loc_8c0779da
	mov 0x00,r13
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0783b0
	mov.l @r15+,r14

loc_8c0779da:
	mov.w @(0x20,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c077a36               ;8c077a14+0x22
	mov.w @(0x14,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c077a28               ;8c077a14+0x14
	mov.w @(0x12,PC),r3
	bra loc_8c077a2a              ;8c077a14+0x16
	nop

;##############################################
loc_8c0779f0:
	#data 0x1102
loc_8c0779f2:
	#data 0x02a4
loc_8c0779f4:
	#data 0x00cc
loc_8c0779f6:
	#data 0x00dc
loc_8c0779f8:
	#data 0x012c
loc_8c0779fa:
	#data 0x01a3
loc_8c0779fc:
	#data 0x0158
loc_8c0779fe:
	#data 0x0525
loc_8c077a00:
	#data 0x0100
	#align4
loc_8c077a04:
	#data bank04.loc_8c044f12
loc_8c077a08:
	#data loc_8c0778e6
loc_8c077a0c:
	#data 0x8c28c5f4
loc_8c077a10:
	#data 0x8c28c5f8
loc_8c077a14:
	#data bank15.loc_8c1539f8
loc_8c077a18:
	#data bank15.loc_8c153a04
loc_8c077a1c:
	#data bank12.loc_8c129560
loc_8c077a20:
	#data bank12.loc_8c1294c8
loc_8c077a24:
	#data bank15.loc_8c153a14

;----------------------------------------------
loc_8c077a28:
	mov.w @(0x116,PC),r3

loc_8c077a2a:
	mov.w @(0x116,PC),r0
	mov.w @(r0,r4),r0
	tst r0,r0
	movt r0
	tst r3,r0
	bt loc_8c077a3a

loc_8c077a36:
	mov 0x01,r0
	mov.b r0,@(0x7,r14)

loc_8c077a3a:
	mov.w @(0x108,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c077a46
	bra loc_8c077be8
	nop

loc_8c077a46:
	mov.b @(0x5,r14),r0
	mov 0x01,r3
	mov 0x0B,r2
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x44,r5
	mov.w @(0xF2,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x24,r0
	mov.b r2,@(r0,r14)
	mov.w @(0xEC,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov.w @(0xE6,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c077a74
	mov.w @(0xDE,PC),r0
	mov 0x53,r2
	bra loc_8c077a7a
	mov.b r2,@(r0,r14)

loc_8c077a74:
	mov.w @(0xD6,PC),r0
	mov 0x36,r3
	mov.b r3,@(r0,r14)

loc_8c077a7a:
	mov.w @(0xD2,PC),r0
	mov.l @(0xD8,PC),r3
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
	mov.w @(0xB6,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c077ab2
	mov.w @(0xB0,PC),r0
	mov.b @(r0,r14),r3
	mov.l @(0xB4,PC),r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	fmov @(r0,r3),fr3
	bra loc_8c077ac2
	nop

loc_8c077ab2:
	mov.w @(0x9E,PC),r0
	mov.b @(r0,r14),r2
	mov.l @(0xA4,PC),r0
	extu.b r2,r2
	shll2 r2
	shll2 r2
	fmov @(r0,r2),fr3
	fneg fr3

loc_8c077ac2:
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x88,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c077ae0
	mov.w @(0x82,PC),r0
	mov.b @(r0,r14),r3
	mov.l @(0x8C,PC),r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	fmov @(r0,r3),fr3
	bra loc_8c077af0
	nop

loc_8c077ae0:
	mov.w @(0x70,PC),r0
	mov.b @(r0,r14),r2
	mov.l @(0x78,PC),r0
	extu.b r2,r2
	shll2 r2
	shll2 r2
	fmov @(r0,r2),fr3
	fneg fr3

loc_8c077af0:
	mov 0x68,r0
	mov.l @(0x68,PC),r4
	fmov fr3,@(r0,r14)
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r14),r3
	mov 0x08,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r4,r3
	fmov @(r0,r3),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x46,PC),r0
	mov.b @(r0,r14),r3
	mov 0x0C,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r4
	mov.l @(0x48,PC),r3
	fmov @(r0,r4),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr5
	mov 0x60,r0
	jsr @r3
	fmov @(r0,r14),fr4
	mov 0x48,r1
	mov r14,r4
	add r14,r1
	mov.l r0,@r1
	mov.w @(0x1C,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c077b68
	add 0x48,r4
	mov.l @r4,r3
	bra loc_8c077b70
	neg r3,r3

;##############################################
loc_8c077b42:
	#data 0x0200
loc_8c077b44:
	#data 0x0340
loc_8c077b46:
	#data 0x0141
loc_8c077b48:
	#data 0x012c
loc_8c077b4a:
	#data 0x019c
loc_8c077b4c:
	#data 0x0255
loc_8c077b4e:
	#data 0x01a1
loc_8c077b50:
	#data 0x01ac
loc_8c077b52:
	#data 0x0130
loc_8c077b54:
	#data 0x01a3
	#align4
loc_8c077b58:
	#data 0x8c2896b0
loc_8c077b5c:
	#data bank15.loc_8c153a20
loc_8c077b60:
	#data bank15.loc_8c153a24
loc_8c077b64:
	#data bank11.loc_8c11e210

;----------------------------------------------
loc_8c077b68:
	mov.l @(0xF4,PC),r3
	mov.l @r4,r2
	add r3,r2
	extu.w r2,r3

loc_8c077b70:
	mov.w @(0xE8,PC),r0
	mov.l r3,@r4
	mov.b @(r0,r14),r1
	tst r1,r1
	bf loc_8c077ba4
	mov.w @(0xE0,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c077b8a
	mov.l @(0x18,r14),r2
	mova @(0xDC,PC),r0
	bra loc_8c077b8e
	fmov @r0,fr3

loc_8c077b8a:
	mova @(0xDC,PC),r0
	fmov @r0,fr3

loc_8c077b8e:
	mov 0x34,r0
	fmov @(r0,r2),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0xD4,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr2
	bra loc_8c077bca
	nop

loc_8c077ba4:
	mov.w @(0xB6,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c077bb4
	mov.l @(0x18,r14),r2
	mova @(0xC0,PC),r0
	bra loc_8c077bb8
	fmov @r0,fr3

loc_8c077bb4:
	mova @(0xBC,PC),r0
	fmov @r0,fr3

loc_8c077bb8:
	mov 0x34,r0
	fmov @(r0,r2),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0xB4,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr2

loc_8c077bca:
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov r13,r0
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x02,r0
	mov.l @(0xA4,PC),r3
	mov r14,r4
	mov.w r0,@(0x1E,r14)
	mov 0x14,r6
	lds.l @r15+,pr
	mov 0x17,r5
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c077be8:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c077bf0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x84,PC),r3
	mov r4,r14
	jsr @r3
	mov.l @(0x18,r14),r13
	mov 0x5C,r1
	mov.l @(0x80,PC),r3
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

loc_8c077c18:
	fmov @r1,fr3
	mov 0x60,r1

loc_8c077c1c:
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
	mov 0x5C,r0
	fmov @(r0,r14),fr5
	mov 0x60,r0
	jsr @r3
	fmov @(r0,r14),fr4
	mov 0x48,r1
	mov r14,r4
	add r14,r1
	mov.l r0,@r1
	mov.w @(0xE,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c077c88
	add 0x48,r4
	mov.l @r4,r3
	bra loc_8c077c90
	neg r3,r3

;##############################################
loc_8c077c5c:
	#data 0x01a3
loc_8c077c5e:
	#data 0x0130
loc_8c077c60:
	#data 0x8000
	#align4
loc_8c077c64:
	#data 0x42baaaaa
loc_8c077c68:
	#data 0xc2baaaaa
loc_8c077c6c:
	#data 0x4340db6d
loc_8c077c70:
	#data 0x41d55555
loc_8c077c74:
	#data 0xc1d55555
loc_8c077c78:
	#data 0x436ddb6d
loc_8c077c7c:
	#data bank03.loc_8c034e8c
loc_8c077c80:
	#data bank03.loc_8c034dee
loc_8c077c84:
	#data bank11.loc_8c11e210

;----------------------------------------------
loc_8c077c88:
	mov.l @(0x104,PC),r3
	mov.l @r4,r2
	add r3,r2
	extu.w r2,r3

loc_8c077c90:
	mov.l r3,@r4
	mov.w @(0x1C,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c077cb2
	mov.l @(0xEC,PC),r3
	mov 0x03,r0
	mov 0x04,r5
	mov.w r0,@(0x1E,r14)
	mov 0x00,r6
	jsr @r3
	mov r14,r4

loc_8c077cb2:
	mov.w @(0xC6,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bf.s loc_8c077d14
	mov 0x01,r4
	mov.w @(0xBA,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c077d14
	mov.b @(0x7,r14),r0
	tst r0,r0
	bf loc_8c077d0c
	mov.w @(0xAE,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c077d0c
	mov.w @(0xA8,PC),r0
	mov.w @(r0,r13),r3
	mov.w @(0xA6,PC),r0
	mov.b @(r0,r13),r1
	tst r1,r1
	bt.s loc_8c077cea
	extu.w r3,r3
	mov.w @(0x9E,PC),r2
	bra loc_8c077cec
	nop

loc_8c077cea:
	mov.w @(0x9A,PC),r2

loc_8c077cec:
	tst r2,r3
	bt loc_8c077cfc
	mov.w @(0x1C,r14),r0
	mov 0x3C,r3
	cmp/ge r3,r0
	bf loc_8c077d6e
	bra loc_8c077d14
	nop

loc_8c077cfc:
	mov.w @(0x1C,r14),r0
	mov 0x0A,r3
	cmp/ge r3,r0
	bt loc_8c077d14
	mov r4,r0
	nop
	bra loc_8c077d6e
	mov.b r0,@(0x7,r14)

loc_8c077d0c:
	mov.w @(0x1C,r14),r0
	mov 0x1D,r3
	cmp/ge r3,r0
	bf loc_8c077d6e

loc_8c077d14:
	mov.l @(0x80,PC),r2
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.l @r2,r3
	mov r4,r0
	nop
	mov.b r0,@(0x8,r3)
	mov 0x49,r5
	mov.l @(0x74,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf.s loc_8c077d40
	mov 0x00,r4
	mov.w @(0x50,PC),r0
	mov 0x54,r2

loc_8c077d3c:
	bra loc_8c077d46
	mov.b r2,@(r0,r14)

loc_8c077d40:
	mov.w @(0x48,PC),r0
	mov 0x37,r3
	mov.b r3,@(r0,r14)

loc_8c077d46:
	mov.w @(0x44,PC),r0
	mov 0x17,r5
	mov.l @(0x54,PC),r3
	mov 0x15,r6
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.l @(0x44,PC),r3
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	jsr @r3
	mov r14,r4

loc_8c077d6e:
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @(0x30,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c077d7c:
	#data 0x041c
loc_8c077d7e:
	#data 0x019e
loc_8c077d80:
	#data 0x0525
loc_8c077d82:
	#data 0x0340
loc_8c077d84:
	#data 0x01a3
loc_8c077d86:
	#data 0x0100
loc_8c077d88:
	#data 0x0200
loc_8c077d8a:
	#data 0x0255
loc_8c077d8c:
	#data 0x01a1
loc_8c077d8e:
	#data 0x01ac
loc_8c077d90:
	#data 0x8000
	#align4
loc_8c077d94:
	#data bank0c.loc_8c0cbe3e
loc_8c077d98:
	#data 0x8c28c5f4
loc_8c077d9c:
	#data bank04.loc_8c04223a
loc_8c077da0:
	#data 0x8c2896b0
loc_8c077da4:
	#data bank03.loc_8c034e8c
loc_8c077da8:
	#data bank04.loc_8c045748

;==============================================
loc_8c077dac:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x140,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c077dc4
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8c0783b0
	lds.l @r15+,pr

loc_8c077dc4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c077dcc:
	mov r4,r3
	mov.l @(0x128,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c077dde:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x102,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x110,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xF4,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xEC,PC),r0
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
	mov.w @(0xC8,PC),r0
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
	mov.l @(0xC4,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1

loc_8c077e44:
	mov 0x00,r4
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov 0x44,r5
	mov.b r4,@(r0,r14)
	mov.w @(0x9C,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c077e64
	bra loc_8c077e66
	mov 0x49,r3

loc_8c077e64:
	mov 0x40,r3

loc_8c077e66:
	mov.w @(0x86,PC),r0
	fldi0 fr4
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x8C,PC),r3
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
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x54,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c077ea8
	mova @(0x64,PC),r0
	bra loc_8c077eac
	fmov @r0,fr3

loc_8c077ea8:
	mova @(0x60,PC),r0
	fmov @r0,fr3

loc_8c077eac:
	mov 0x5C,r0
	mov.l @(0x60,PC),r5
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x03,r4
	mov 0x0C,r0
	extu.b r3,r3
	and r4,r3
	shll2 r3
	shll2 r3
	add r5,r3
	fmov @(r0,r3),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x24,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c077f14
	mov.l @(0x18,r14),r3
	mov 0x21,r0
	mov.b @(r0,r14),r2
	extu.b r2,r2
	and r4,r2
	shll2 r2
	shll2 r2
	add r5,r2
	fmov @r2,fr3
	bra loc_8c077f26
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c077ee8:
	#data 0x00dc
loc_8c077eea:
	#data 0x012c
loc_8c077eec:
	#data 0x01a3
loc_8c077eee:
	#data 0x019c
loc_8c077ef0:
	#data 0x01a1
loc_8c077ef2:
	#data 0x0130
	#align4
loc_8c077ef4:
	#data bank03.loc_8c034dee
loc_8c077ef8:
	#data bank15.loc_8c153a40
loc_8c077efc:
	#data bank12.loc_8c129560
loc_8c077f00:
	#data bank12.loc_8c1294c8
loc_8c077f04:
	#data 0x8c2896b0
loc_8c077f08:
	#data 0x41700000
loc_8c077f0c:
	#data 0xc1700000
loc_8c077f10:
	#data bank15.loc_8c1539b8

;==============================================
loc_8c077f14:
	mov 0x21,r0
	mov.b @(r0,r14),r1
	extu.b r1,r1
	and r4,r1
	shll2 r1
	shll2 r1
	add r5,r1
	fmov @r1,fr3
	fneg fr3

loc_8c077f26:
	mov 0x34,r0
	fmov @(r0,r3),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c077f2e:
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov 0x04,r0
	mov.l @(0x18,r14),r3
	extu.b r2,r2
	and r4,r2
	shll2 r2
	shll2 r2
	add r5,r2
	fmov @(r0,r2),fr3
	mov 0x38,r0
	fmov @(r0,r3),fr2
	mov.l @(0x11C,PC),r2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x110,PC),r0
	mov.w @(r0,r14),r1
	tst r1,r1
	bt.s loc_8c077f70
	mov.l @r2,r3
	mov 0x21,r0
	mov.b @(r0,r14),r1
	mov 0x08,r0
	extu.b r1,r1
	and r4,r1
	shll2 r1
	shll2 r1
	add r5,r1
	fmov @(r0,r1),fr3
	mova @(0xFC,PC),r0
	fneg fr3
	bra loc_8c077f86              ;8c0773f4+0xb92
	fmov @r0,fr2

loc_8c077f70:
	mov 0x21,r0
	mov.b @(r0,r14),r1
	mova @(0xF4,PC),r0
	fmov @r0,fr2
	mov 0x08,r0
	extu.b r1,r1
	and r4,r1
	shll2 r1
	shll2 r1
	add r5,r1
	fmov @(r0,r1),fr3

loc_8c077f86:
	fadd fr2,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r3)
	mov 0x5C,r0
	mov.l @(0xE0,PC),r3
	fmov @(r0,r14),fr5
	mov 0x60,r0
	jsr @r3
	fmov @(r0,r14),fr4
	mov 0x48,r1
	mov r14,r4
	add r14,r1
	mov.l r0,@r1
	mov.w @(0xBC,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c077fb0
	add 0x48,r4
	mov.l @r4,r3
	bra loc_8c077fb8
	neg r3,r3

loc_8c077fb0:
	mov.l @(0xC0,PC),r3
	mov.l @r4,r2

loc_8c077fb4:
	add r3,r2
	extu.w r2,r3

loc_8c077fb8:
	mov.l r3,@r4
	mov 0x04,r0
	mov.l @(0xB8,PC),r3
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	mov 0x16,r6
	lds.l @r15+,pr
	mov 0x17,r5
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c077fcc:
	mov r4,r3
	mov.l @(0xAC,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c077fde:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0x98,PC),r3
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
	bf loc_8c07803c
	mov.l @(0x54,PC),r3
	mov 0x04,r0
	mov 0x07,r5
	mov.w r0,@(0x1C,r14)
	mov 0x00,r6
	jsr @r3
	mov r14,r4

loc_8c07803c:
	mov.w @(0x22,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0780a8               ;8c07804c+0x5c
	mov.l @(0x1C,PC),r1
	mov 0x04,r0
	mov.l @(0x3C,PC),r3
	mov.l @r1,r2
	fmov @r3,fr4
	fmov @(r0,r2),fr3
	mov.w @(0xC,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c07808c
	fadd fr3,fr4
	mov 0x34,r0
	bra loc_8c078092
	fmov @(r0,r14),fr3

;##############################################
loc_8c078060:
	#data 0x0130
loc_8c078062:
	#data 0x019e
	#align4
loc_8c078064:
	#data 0x8c28c5f8
loc_8c078068:
	#data 0x43a00000
loc_8c07806c:
	#data 0xc3a00000
loc_8c078070:
	#data bank11.loc_8c11e210
loc_8c078074:
	#data 0x00008000
loc_8c078078:
	#data bank03.loc_8c034e8c
loc_8c07807c:
	#data bank15.loc_8c153a50
loc_8c078080:
	#data bank03.loc_8c034dee
loc_8c078084:
	#data bank0c.loc_8c0cbe3e
loc_8c078088:
	#data 0x8c26a524

;----------------------------------------------
loc_8c07808c:
	mov 0x34,r0
	fmov fr4,fr3
	fmov @(r0,r14),fr4

loc_8c078092:
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr3,fr4
	bf loc_8c0780a8
	mov.l @(0xB8,PC),r2
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c0780a8:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x80,r0
	bt loc_8c0780bc
	bra loc_8c0780be
	mov 0x4A,r3

loc_8c0780bc:
	mov 0x41,r3

loc_8c0780be:
	mov.w @(0x8A,PC),r0
	mov 0x00,r4
	mov 0x17,r5
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x84,PC),r3
	mov 0x15,r6
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x64,PC),r0
	mov.l @(0x70,PC),r2
	mov.b r4,@(r0,r14)
	jsr @r2
	mov r14,r4
	mov.l @(0x6C,PC),r3
	mov r14,r2
	mov r15,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x64,PC),r2
	mov r15,r5
	mov.w @(0x4C,PC),r7
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.l @(0x5C,PC),r3
	mov 0x49,r5
	jsr @r3
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c078118:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c078130
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0783b0
	mov.l @r15+,r14

loc_8c078130:
	lds.l @r15+,pr
	mov.l @(0x20,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c07813a:
	mov r4,r3
	mov.l @(0x30,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07814c:
	#data 0x01a1
loc_8c07814e:
	#data 0x012c
loc_8c078150:
	#data 0x00f9
	#align4
loc_8c078154:
	#data bank04.loc_8c045748
loc_8c078158:
	#data 0x8c2896b0
loc_8c07815c:
	#data bank03.loc_8c034e8c
loc_8c078160:
	#data bank12.loc_8c1294c8
loc_8c078164:
	#data bank10.loc_8c10235c
loc_8c078168:
	#data bank04.loc_8c04223a
loc_8c07816c:
	#data bank03.loc_8c034dee
loc_8c078170:
	#data bank15.loc_8c153a58

;==============================================
loc_8c078174:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x150,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x154,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x142,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x13A,PC),r0
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
	mov.w @(0x116,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2

loc_8c0781c4:
	mov.b r2,@(r0,r14)
	mov 0x30,r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(0x108,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x00,r4
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov 0x44,r5
	mov.b r4,@(r0,r14)
	mov 0x40,r3
	mov.b @(0x2,r14),r0
	xor 0x01,r0
	mov.b r0,@(0x2,r14)
	mov.w @(0xE2,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xDC,PC),r3
	mov.l r4,@(r0,r14)
	mov 0x30,r4
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xB8,PC),r0
	fldi0 fr4
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xA0,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c078240
	mova @(0xA8,PC),r0
	bra loc_8c078244
	fmov @r0,fr3

loc_8c078240:
	mova @(0xA4,PC),r0
	fmov @r0,fr3

loc_8c078244:
	mov 0x5C,r0
	mov.l @(0xA4,PC),r4
	fmov fr3,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r4),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x80,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c078260
	mov.l @(0x18,r14),r3
	bra loc_8c078264
	fmov @r4,fr3

loc_8c078260:
	fmov @r4,fr3
	fneg fr3

loc_8c078264:
	mov 0x34,r0
	fmov @(r0,r3),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr2
	mov.l @(0x78,PC),r3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr5
	mov 0x60,r0
	jsr @r3
	fmov @(r0,r14),fr4
	mov 0x48,r1
	mov r14,r4
	add r14,r1
	mov.l r0,@r1
	mov.w @(0x44,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c07829e
	add 0x48,r4
	mov.l @r4,r3
	bra loc_8c0782a6
	neg r3,r3

loc_8c07829e:
	mov.l @(0x54,PC),r3
	mov.l @r4,r2
	add r3,r2
	extu.w r2,r3

loc_8c0782a6:
	mov.l r3,@r4
	mov 0x10,r0
	mov.l @(0x4C,PC),r3
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	mov 0x16,r6
	lds.l @r15+,pr
	mov 0x17,r5
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0782ba:
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
loc_8c0782cc:
	#data 0x00dc
loc_8c0782ce:
	#data 0x012c
loc_8c0782d0:
	#data 0x01a3
loc_8c0782d2:
	#data 0x019c
loc_8c0782d4:
	#data 0x013e
loc_8c0782d6:
	#data 0x0130
	#align4
loc_8c0782d8:
	#data bank12.loc_8c129560
loc_8c0782dc:
	#data bank12.loc_8c1294c8
loc_8c0782e0:
	#data 0x8c2896b0
loc_8c0782e4:
	#data 0x41700000
loc_8c0782e8:
	#data 0xc1700000
loc_8c0782ec:
	#data bank15.loc_8c1539b8
loc_8c0782f0:
	#data bank11.loc_8c11e210
loc_8c0782f4:
	#data 0x00008000
loc_8c0782f8:
	#data bank03.loc_8c034e8c
loc_8c0782fc:
	#data bank15.loc_8c153a68

;==============================================
loc_8c078300:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0xC0,PC),r3
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

loc_8c078348:
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07835e
	mov.l @(0x78,PC),r3
	mov 0x0C,r0
	mov 0x07,r5
	mov.w r0,@(0x1C,r14)
	mov 0x00,r6
	jsr @r3
	mov r14,r4

loc_8c07835e:
	mov.w @(0x5E,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c07838a
	mov.l @(0x68,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c07837c
	bsr loc_8c0783b0
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c07837c:
	mov.l @(0x54,PC),r2
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c07838a:
	mov.b @(0x5,r14),r0
	mov r14,r2
	mov.l @(0x48,PC),r3
	add 0x34,r2
	add 0x01,r0
	mov r15,r1
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x3C,PC),r2
	mov r15,r5
	mov.w @(0x1E,PC),r7
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0783b0:
	mov 0x03,r0
	mov.b r0,@(0x4,r4)
	mov 0x00,r3
	mov.w @(0xA,PC),r0
	mov.b r3,@(r0,r4)

loc_8c0783ba:
	mov.l @(0x24,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0783c0:
	#data 0x019e
loc_8c0783c2:
	#data 0x0179
loc_8c0783c4:
	#data 0x012c
	#align4
loc_8c0783c8:
	#data bank03.loc_8c034dee
loc_8c0783cc:
	#data bank0c.loc_8c0cbe3e
loc_8c0783d0:
	#data bank03.loc_8c03340c
loc_8c0783d4:
	#data bank04.loc_8c045748
loc_8c0783d8:
	#data bank12.loc_8c1294c8
loc_8c0783dc:
	#data bank10.loc_8c10235c
loc_8c0783e0:
	#data bank04.loc_8c0450c0

;==============================================
;unused
loc_8c0783e4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x15C,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c078410
	mov r0,r14
	mov.l @(0x14C,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r14)
	mov 0x00,r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r14)
	mov.w @(0x12E,PC),r2
	mov.b r3,@(r0,r14)
	mov 0x26,r0
	mov.w r2,@(r0,r14)

loc_8c078410:
	mov.l @(0x134,PC),r3
	mov 0x01,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c078436
	mov r0,r4
	mov.l @(0x128,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov 0x01,r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w @(0x10A,PC),r2
	mov.l r14,@(0x14,r4)
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c078436:
	mov r14,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c078442:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xF2,PC),r2
	mov 0x20,r0
	mov.l @(0x18,r14),r3
	mov r14,r4
	mov.w @(0xEC,PC),r1
	add r3,r2
	mov.l @(0xFC,PC),r3
	add r14,r1
	mov.l r2,@r3
	mov.l @(0xF8,PC),r2
	mov.l r1,@r2
	mov.b @(r0,r14),r3
	mov.l @(0xF8,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r1
	jmp @r1
	mov.l @r15+,r14

;==============================================
loc_8c07846a:
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
loc_8c07847c:
	mov.w @(0xC0,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0xD8,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xB2,PC),r0
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xAA,PC),r0
	mov 0x01,r1
	mov.b r1,@(r0,r4)
	mov r4,r1
	mov.l @(0x18,r4),r0
	add 0x50,r1
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x86,PC),r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(0x8C,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov 0x00,r2
	mov.b @(r0,r1),r3
	mov.l @(0x6C,PC),r1
	mov.b r3,@(r0,r4)
	mov.w @(0x56,PC),r0
	mov.b r2,@(r0,r4)
	add 0x2C,r0
	mov.l @(0x18,r4),r2
	lds.l @r15+,pr
	mov.l @r1,r3
	mov.w @(r0,r2),r2
	rts
	mov.w r2,@r3

;==============================================
loc_8c0784fa:
	mov r4,r3
	mov.l @(0x68,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c07850c:
	mov.l @(0x44,PC),r2
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0x2E,PC),r0
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.l @(0x18,r14),r13
	mov.w @r3,r1
	mov.w @(r0,r13),r3
	cmp/eq r3,r1
	bf loc_8c07852e
	bsr loc_8c07932a
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c078570

loc_8c07852e:
	lds.l @r15+,pr
	mov.l @(0x38,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07853a:
	#data 0x1103
loc_8c07853c:
	#data 0x02a4
loc_8c07853e:
	#data 0x00cc
loc_8c078540:
	#data 0x00dc
loc_8c078542:
	#data 0x012c
loc_8c078544:
	#data 0x01a3
loc_8c078546:
	#data 0x0158
	#align4
loc_8c078548:
	#data bank04.loc_8c044f12
loc_8c07854c:
	#data loc_8c078442
loc_8c078550:
	#data 0x8c28c5fc
loc_8c078554:
	#data 0x8c28c600
loc_8c078558:
	#data bank15.loc_8c153a70
loc_8c07855c:
	#data bank15.loc_8c153a78
loc_8c078560:
	#data bank12.loc_8c129560
loc_8c078564:
	#data bank12.loc_8c1294c8
loc_8c078568:
	#data bank15.loc_8c153a88
loc_8c07856c:
	#data loc_8c0794fc

;==============================================
loc_8c078570:
	mov.w @(0x13E,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c0785de
	mov.b @(0x5,r14),r0
	mov 0x01,r3
	mov 0x0C,r2
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x31,r1
	mov.w @(0x12C,PC),r0
	add r14,r1
	mov.b r3,@(r0,r14)
	mov 0x24,r0
	mov.b r2,@(r0,r14)
	mov.b @(0x2,r14),r0
	shll2 r0
	neg r0,r0
	add 0xFF,r0
	mov.b r0,@r1
	mov.w @(0x11A,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0785a6
	mova @(0x11C,PC),r0
	bra loc_8c0785aa
	fmov @r0,fr3

loc_8c0785a6:
	mova @(0x11C,PC),r0
	fmov @r0,fr3

loc_8c0785aa:
	mov 0x34,r0
	mov.l @(0x118,PC),r3
	fmov @(r0,r13),fr2
	mov 0x12,r5
	mov 0x00,r6
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0xFC,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x100,PC),r2
	mov 0x12,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov 0x17,r6
	mov.l @(0xF8,PC),r3
	mov r6,r5
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0785de:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0785e6:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0785fe
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8c0794fc          ;8c0794f4+0x8
	lds.l @r15+,pr

loc_8c0785fe:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c078606:
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
loc_8c078618:
	mov.w @(0x9E,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0xB4,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x90,PC),r0
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x80,PC),r0
	mov 0x01,r5
	mov r4,r1
	add 0x50,r1
	mov.b r5,@(r0,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x2,r0),r0
	mov.b r0,@(0x2,r4)
	mov.l @(0x18,r4),r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x62,PC),r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	add 0x01,r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(0x68,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov 0x00,r2
	mov.b @(r0,r1),r3
	mov.l @(0x5C,PC),r1
	mov.b r3,@(r0,r4)
	mov.w @(0x2C,PC),r0
	mov.b r2,@(r0,r4)
	mov.l @r1,r3
	mov r5,r0
	nop
	mov.b r0,@(0x9,r3)
	mov.l @(0x18,r4),r0
	mov.w @(0x28,PC),r1
	mov.l @(0x4C,PC),r2
	lds.l @r15+,pr
	mov.w @(r0,r1),r0
	mov.l @r2,r3
	rts
	mov.w r0,@r3

;==============================================
loc_8c0786a0:
	mov r4,r3
	mov.l @(0x44,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0786b2:
	#data 0x0141
loc_8c0786b4:
	#data 0x012c
loc_8c0786b6:
	#data 0x0130
loc_8c0786b8:
	#data 0x041c
loc_8c0786ba:
	#data 0x00dc
loc_8c0786bc:
	#data 0x01a3
loc_8c0786be:
	#data 0x0158
	#align4
loc_8c0786c0:
	#data 0x4362aaaa
loc_8c0786c4:
	#data 0xc362aaaa
loc_8c0786c8:
	#data bank0c.loc_8c0cbe3e
loc_8c0786cc:
	#data bank03.loc_8c034e8c
loc_8c0786d0:
	#data bank03.loc_8c034dee
loc_8c0786d4:
	#data bank15.loc_8c153a90
loc_8c0786d8:
	#data bank12.loc_8c129560
loc_8c0786dc:
	#data bank12.loc_8c1294c8
loc_8c0786e0:
	#data 0x8c28c5fc
loc_8c0786e4:
	#data 0x8c28c600
loc_8c0786e8:
	#data bank15.loc_8c153aa0

;==============================================
loc_8c0786ec:
	mov.l @(0x118,PC),r2
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0x102,PC),r0
	sts.l pr,@-r15
	mov.l @r2,r3
	mov.l @(0x18,r14),r13
	mov.w @r3,r1
	mov.w @(r0,r13),r3
	cmp/eq r3,r1
	bf loc_8c07870e
	bsr loc_8c07932a
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c078718

loc_8c07870e:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0794f4
	mov.l @r15+,r14

loc_8c078718:
	mov.w @(0xE0,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c0787b2
	mov.b @(0x5,r14),r0
	mov 0x01,r3
	mov 0x0C,r2
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x31,r1
	mov.w @(0xCE,PC),r0
	add r14,r1
	mov 0x42,r4
	mov.b r3,@(r0,r14)
	mov 0x24,r0
	mov.b r2,@(r0,r14)
	mov 0x20,r3
	mov.b @(0x2,r14),r0
	mov.w @(0xC2,PC),r2
	shll2 r0
	neg r0,r0
	add 0x01,r0
	mov.b r0,@r1
	mov.w @(0xB6,PC),r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r2,@(r0,r14)
	add 0x5F,r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r4,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r4
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.l @(0xA8,PC),r3
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
	mov.w @(0x86,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c078788
	mova @(0x8C,PC),r0
	bra loc_8c07878c
	fmov @r0,fr3

loc_8c078788:
	mova @(0x88,PC),r0
	fmov @r0,fr3

loc_8c07878c:
	mov 0x34,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x6E,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov r4,r0
	nop
	mov.l @(0x74,PC),r3
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	mov 0x18,r6
	lds.l @r15+,pr
	mov 0x17,r5
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0787b2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0787ba:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(0x54,PC),r3
	jsr @r3
	mov.l @(0x18,r14),r13
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0787e8
	mov.l @(0x4C,PC),r2
	mov 0xFF,r0
	mov r14,r4
	mov.l @r2,r3
	mov.b r0,@(0xA,r3)
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0794f4
	mov.l @r15+,r14

loc_8c0787e8:
	bsr loc_8c07932a
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c078824
	mov.b @(0x5,r14),r0
	add 0x01,r0
	bra loc_8c0788d0
	mov.b r0,@(0x5,r14)

;##############################################
loc_8c0787fa:
	#data 0x0158
loc_8c0787fc:
	#data 0x0141
loc_8c0787fe:
	#data 0x012c
loc_8c078800:
	#data 0x013c
loc_8c078802:
	#data 0x00c0
loc_8c078804:
	#data 0x0130
loc_8c078806:
	#data 0x041c
	#align4
loc_8c078808:
	#data 0x8c28c600
loc_8c07880c:
	#data 0x8c2896b0
loc_8c078810:
	#data 0x4362aaaa
loc_8c078814:
	#data 0xc362aaaa
loc_8c078818:
	#data bank03.loc_8c034e8c
loc_8c07881c:
	#data bank03.loc_8c034dee
loc_8c078820:
	#data 0x8c28c5fc

;----------------------------------------------
loc_8c078824:
	mov.w @(0x112,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0788c0
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c0788c0
	mov.w @(0x1C,r14),r0
	mov.l @(0x110,PC),r3
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c0788c0
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf loc_8c0788c0
	mov.l @(0x100,PC),r3
	mov.w @(0xEE,PC),r0
	mov.l @r3,r2
	mov.w @r2,r1
	mov.w @(r0,r13),r2
	cmp/eq r2,r1
	bf loc_8c0788c0
	mov.b @(0x5,r14),r0
	mov 0x00,r11
	mov 0x02,r4
	mov.l @(0xF0,PC),r2
	add 0x02,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xD8,PC),r0
	mov.b r11,@(r0,r13)
	add 0x50,r0
	mov.b r4,@(r0,r13)
	add 0x08,r0
	mov.b r4,@(r0,r13)
	add 0xBB,r0
	mov.l @r2,r3
	mov.l @(r0,r14),r12
	mov 0x01,r0
	mov.b r0,@(0xA,r3)
	mov.w @(0xC6,PC),r0
	mov r12,r5
	mov.w @(0xC0,PC),r3
	mov.b r3,@(r0,r13)
	mov.l @(0xD0,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0xD0,PC),r2
	mov 0x17,r5
	mov 0x19,r6
	jsr @r2
	mov r14,r4
	mov r11,r0
	nop
	mov.b r0,@(0x6,r14)
	mov 0x21,r0
	mov.b r11,@(r0,r14)
	mov 0x22,r1
	mov.w @(0xA4,PC),r0
	add r14,r1
	mov r12,r4
	mov.l @(0xB4,PC),r3
	mov.b @(r0,r14),r0
	mov 0x0D,r5
	mov 0x05,r6
	xor 0x01,r0
	mov.b r0,@r1
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r12)
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0788c0:
	lds.l @r15+,pr
	mov.l @(0x98,PC),r2
	mov r14,r4
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c0788d0:
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0788dc:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0788f4
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8c0794f4
	lds.l @r15+,pr

loc_8c0788f4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c0788fc:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x42,PC),r0
	mov 0x01,r3
	mov 0x02,r5
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b r3,@(r0,r4)
	add 0x03,r0
	mov.b r5,@(r0,r4)
	add 0x08,r0
	mov.b r5,@(r0,r4)
	bsr loc_8c079352
	mov r14,r4
	mov.l @(0x44,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c078934
	mov.b @(0x5,r14),r0
	mov.l @(0x3C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	mov 0x01,r2
	mov.b r2,@r14

loc_8c078934:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07893a:
	#data 0x019e
loc_8c07893c:
	#data 0x0158
loc_8c07893e:
	#data 0x019d
loc_8c078940:
	#data 0x00c4
loc_8c078942:
	#data 0x01f7
loc_8c078944:
	#data 0x0130
loc_8c078946:
	#data 0x01ea
	#align4
loc_8c078948:
	#data bank05.loc_8c05264c
loc_8c07894c:
	#data 0x8c28c600
loc_8c078950:
	#data 0x8c28c5fc
loc_8c078954:
	#data bank05.loc_8c05248e
loc_8c078958:
	#data bank03.loc_8c034e8c
loc_8c07895c:
	#data bank04.loc_8c045748
loc_8c078960:
	#data bank03.loc_8c034dee
loc_8c078964:
	#data bank10.loc_8c104434

;==============================================
loc_8c078968:
	mov.w @(0xE2,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(r0,r14),r13
	add 0x22,r0
	mov.l @(0x18,r14),r4
	mov.b r3,@(r0,r4)
	bsr loc_8c079352
	mov r14,r4
	bsr loc_8c07932a
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c078990
	mov 0x0F,r0
	bra loc_8c078a0c
	mov.b r0,@(0x5,r14)

loc_8c078990:
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r13),fr2
	fcmp/gt fr3,fr2
	bt loc_8c078a0c
	mova @(0xB8,PC),r0
	fmov @r0,fr2
	mov.w @(0xAE,PC),r0
	fmov @(r0,r13),fr1
	mov 0x38,r0
	fmov @(r0,r13),fr0
	fadd fr2,fr1
	fcmp/gt fr1,fr0
	bt loc_8c078a0c
	mov.b @(0x5,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x8A,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0789d2
	mova @(0x88,PC),r0
	bra loc_8c0789d6
	fmov @r0,fr3

loc_8c0789d2:
	mova @(0x88,PC),r0
	fmov @r0,fr3

loc_8c0789d6:
	mov 0x34,r0
	mov.l @(0x88,PC),r3
	fmov @(r0,r13),fr2
	mov 0x5C,r0
	mov r14,r4
	mov 0x1A,r6
	fadd fr3,fr2
	mov 0x17,r5
	fmov fr2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	mova @(0x6C,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	mov 0x5C,r0
	fdiv fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x04,r0
	mov.w r0,@(0x1C,r14)
	mov 0x03,r0
	mov.w r0,@(0x1E,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c078a0c:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c078a14:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x2C,PC),r0
	mov r4,r14
	mov.l @(0x18,r14),r12
	mov 0x01,r3
	mov.l @(r0,r14),r13
	add 0x22,r0
	mov.b r3,@(r0,r12)
	bsr loc_8c07932a
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c078a3a
	bra loc_8c078a4a
	mov 0x0F,r0

loc_8c078a3a:
	mov.l @(0x2C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c078a6c
	mov.b @(0x5,r14),r0
	add 0x01,r0

loc_8c078a4a:
	bra loc_8c078b3c
	mov.b r0,@(0x5,r14)

;##############################################
loc_8c078a4e:
	#data 0x01c8
loc_8c078a50:
	#data 0x041c
loc_8c078a52:
	#data 0x0130
	#align4
loc_8c078a54:
	#data 0x43892492
loc_8c078a58:
	#data 0xc33aaaaa
loc_8c078a5c:
	#data 0x433aaaaa
loc_8c078a60:
	#data 0x41800000
loc_8c078a64:
	#data bank03.loc_8c034e8c
loc_8c078a68:
	#data bank03.loc_8c034dee

;----------------------------------------------
loc_8c078a6c:
	mov.w @(0xFC,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c078a82
	mov 0x00,r3
	mov r3,r6
	mov.b r3,@(r0,r14)
	mov.l @(0xF8,PC),r3
	mov 0x0C,r5
	jsr @r3
	mov r14,r4

loc_8c078a82:
	bsr loc_8c079352
	mov r14,r4
	mov.w @(0xE4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c078b3c
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
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c078b3c
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8c078b3c
	mov 0x00,r0
	mov r13,r5
	mov.b r0,@(0x6,r14)
	mov 0x01,r3
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov 0x03,r0
	mov.w r0,@(0x1E,r14)
	mov 0x21,r0
	mov.b r3,@(r0,r14)
	mov.l @(0x88,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x78,PC),r0
	mov 0x43,r2
	mov.l @(0x80,PC),r3
	mov.b r2,@(r0,r13)
	jsr @r3
	mov r14,r4
	mova @(0x7C,PC),r0
	mov.l @(0x84,PC),r3
	fmov @r0,fr3
	mova @(0x7C,PC),r0
	mov r15,r5
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fldi0 fr3
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0x6C,PC),r2
	mov 0x06,r5
	jsr @r2
	mov r14,r4
	mov.l @(0x68,PC),r3
	mov r12,r5
	mov 0x01,r6
	jsr @r3
	mov r13,r4
	mov.l @(0x64,PC),r2
	mov 0x0D,r5
	mov 0x05,r6
	jsr @r2
	mov r13,r4
	bsr loc_8c079352
	mov r14,r4

loc_8c078b3c:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c078b48:
	mov.w @(0x26,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(r0,r14),r13
	add 0x22,r0
	mov.l @(0x18,r14),r4
	mov.b r3,@(r0,r4)
	bsr loc_8c07932a
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c078b98
	mov 0x0F,r0
	bra loc_8c078c20
	mov.b r0,@(0x5,r14)

;##############################################
loc_8c078b6c:
	#data 0x014b
loc_8c078b6e:
	#data 0x0141
loc_8c078b70:
	#data 0x01a1
loc_8c078b72:
	#data 0x01c8
	#align4
loc_8c078b74:
	#data bank0c.loc_8c0cbe3e
loc_8c078b78:
	#data bank04.loc_8c04cc1c
loc_8c078b7c:
	#data bank05.loc_8c05933c
loc_8c078b80:
	#data 0xc3555555
loc_8c078b84:
	#data 0x433c9249
loc_8c078b88:
	#data bank0f.loc_8c0fdb4e
loc_8c078b8c:
	#data bank04.loc_8c04223a
loc_8c078b90:
	#data bank05.loc_8c05a49c
loc_8c078b94:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c078b98:
	bsr loc_8c079352
	mov r14,r4
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r13),fr2
	fcmp/gt fr3,fr2
	bt loc_8c078c20
	mova @(0xC0,PC),r0
	fmov @r0,fr2
	mov.w @(0xB4,PC),r0
	fmov @(r0,r13),fr1
	mov 0x38,r0
	fmov @(r0,r13),fr0
	fadd fr2,fr1
	fcmp/gt fr1,fr0
	bt loc_8c078c20
	mov.b @(0x5,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x90,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c078bde
	mova @(0x90,PC),r0
	bra loc_8c078be2
	fmov @r0,fr3

loc_8c078bde:
	mova @(0x90,PC),r0
	fmov @r0,fr3

loc_8c078be2:
	mov 0x34,r0
	mov.l @(0x90,PC),r2
	fmov @(r0,r13),fr2
	mov 0x5C,r0
	mov 0x1B,r6
	mov r14,r4
	fadd fr3,fr2
	mov 0x17,r5
	fmov fr2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	mova @(0x74,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	mov 0x5C,r0
	fdiv fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x04,r0
	mov.w r0,@(0x1C,r14)
	mov 0x03,r0
	mov.w r0,@(0x1E,r14)
	mov 0x01,r0
	mov.l @r2,r3
	mov.b r0,@(0xB,r3)
	lds.l @r15+,pr
	mov.l @(0x60,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c078c20:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c078c28:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x30,PC),r0
	mov r4,r14
	mov.l @(0x18,r14),r12
	mov 0x01,r3
	mov.l @(r0,r14),r13
	add 0x22,r0
	mov.b r3,@(r0,r12)
	bsr loc_8c07932a
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c078c4e
	bra loc_8c078c5e
	mov 0x0F,r0

loc_8c078c4e:
	mov.l @(0x30,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c078c84               ;8c078c80+0x4
	mov.b @(0x5,r14),r0
	add 0x01,r0

loc_8c078c5e:
	bra loc_8c078d52              ;8c078cc4+0x8e
	mov.b r0,@(0x5,r14)

;##############################################
loc_8c078c62:
	#data 0x041c
loc_8c078c64:
	#data 0x0130
loc_8c078c66:
	#data 0x01c8
loc_8c078c68:
	#data 0x43892492
loc_8c078c6c:
	#data 0x433aaaaa
loc_8c078c70:
	#data 0xc33aaaaa
loc_8c078c74:
	#data 0x41800000
loc_8c078c78:
	#data 0x8c28c5fc
loc_8c078c7c:
	#data bank03.loc_8c034e8c
loc_8c078c80:
	#data bank03.loc_8c034dee

;----------------------------------------------
loc_8c078c84:
	mov.w @(0xFA,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c078c9a
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mov 0x0C,r5
	mov.l @(0xF8,PC),r3
	mov 0x01,r6
	jsr @r3
	mov r14,r4

loc_8c078c9a:
	bsr loc_8c079352
	mov r14,r4
	mov.w @(0xE2,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c078d52               ;8c078cc4+0x8e
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
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c078d52
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bt loc_8c078d52
	mov 0x00,r0
	mov.b r0,@(0x6,r14)
	mov 0x02,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)
	mov 0x21,r0
	mov.l @(0x88,PC),r3
	mov r13,r5
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x74,PC),r0
	mov 0x43,r2
	mov.l @(0x80,PC),r3
	mov.b r2,@(r0,r13)
	jsr @r3
	mov r14,r4
	mova @(0x7C,PC),r0
	mov.l @(0x80,PC),r3
	fmov @r0,fr3
	mova @(0x78,PC),r0
	mov r15,r5
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r15)
	mov 0x08,r0
	fldi0 fr3
	fmov fr3,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0x6C,PC),r2
	mov 0x06,r5
	jsr @r2
	mov r14,r4
	mov.l @(0x68,PC),r3
	mov r12,r5
	mov 0x01,r6
	jsr @r3
	mov r13,r4
	mov.l @(0x60,PC),r2
	mov 0x0D,r5
	mov 0x05,r6
	jsr @r2
	mov r13,r4

loc_8c078d52:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c078d5e:
	mov.w @(0x26,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(r0,r14),r13
	add 0x22,r0
	mov.l @(0x18,r14),r4
	mov.b r3,@(r0,r4)
	bsr loc_8c07932a
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c078db0
	mov 0x0F,r0
	bra loc_8c078e2e
	mov.b r0,@(0x5,r14)

;##############################################
loc_8c078d82:
	#data 0x014b
loc_8c078d84:
	#data 0x0141
loc_8c078d86:
	#data 0x01a1
loc_8c078d88:
	#data 0x01c8
	#align4
loc_8c078d8c:
	#data bank0c.loc_8c0cbe3e
loc_8c078d90:
	#data bank04.loc_8c04cc1c
loc_8c078d94:
	#data bank05.loc_8c05933c
loc_8c078d98:
	#data 0x43390000
loc_8c078d9c:
	#data 0x435a9249
loc_8c078da0:
	#data bank0f.loc_8c0fdb4e
loc_8c078da4:
	#data bank04.loc_8c04223a
loc_8c078da8:
	#data bank05.loc_8c05a49c
loc_8c078dac:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c078db0:
	bsr loc_8c079352
	mov r14,r4
	mov 0x60,r0
	fldi0 fr3
	fmov @(r0,r13),fr2
	fcmp/gt fr3,fr2
	bt loc_8c078e2e
	mova @(0xD8,PC),r0
	fmov @r0,fr2
	mov.w @(0xCC,PC),r0
	fmov @(r0,r13),fr1
	mov 0x38,r0
	fmov @(r0,r13),fr0
	fadd fr2,fr1
	fcmp/gt fr1,fr0
	bt loc_8c078e2e
	mov.b @(0x5,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
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
	bt loc_8c078df6
	mova @(0xA8,PC),r0
	bra loc_8c078dfa
	fmov @r0,fr3

loc_8c078df6:
	mova @(0xA8,PC),r0
	fmov @r0,fr3

loc_8c078dfa:
	mov 0x34,r0
	mov.l @(0xA8,PC),r3
	fmov @(r0,r13),fr2
	mov 0x5C,r0
	mov r14,r4
	mov 0x17,r5
	fadd fr3,fr2
	mov 0x1C,r6
	fmov fr2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	mova @(0x8C,PC),r0
	fsub fr3,fr2
	fmov @r0,fr3
	mov 0x5C,r0
	fdiv fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x03,r0
	mov.w r0,@(0x1C,r14)
	mov.w r0,@(0x1E,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c078e2e:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c078e36:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x48,PC),r0
	mov r4,r14
	mov.l @(0x18,r14),r12
	mov 0x01,r3
	mov.l @(r0,r14),r13
	add 0x22,r0
	mov.b r3,@(r0,r12)
	bsr loc_8c07932a
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c078e68
	mov 0x0F,r0
	bra loc_8c078fe0
	mov.b r0,@(0x5,r14)

loc_8c078e68:
	mov.l @(0x40,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c078eb4
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov.l @(0x2C,PC),r3
	mov 0x1D,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x28,PC),r3
	mov 0x02,r0
	mov.l @r3,r2
	mov.b r0,@(0xB,r2)
	mov 0x2D,r0
	bra loc_8c078fe0
	mov.w r0,@(0x1C,r14)

;##############################################
loc_8c078e92:
	#data 0x041c
loc_8c078e94:
	#data 0x0130
loc_8c078e96:
	#data 0x01c8
	#align4
loc_8c078e98:
	#data 0x43892492
loc_8c078e9c:
	#data 0xc33aaaaa
loc_8c078ea0:
	#data 0x433aaaaa
loc_8c078ea4:
	#data 0x41800000
loc_8c078ea8:
	#data bank03.loc_8c034e8c
loc_8c078eac:
	#data bank03.loc_8c034dee
loc_8c078eb0:
	#data 0x8c28c5fc

;----------------------------------------------
loc_8c078eb4:
	mov.w @(0x13E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c078eca
	mov 0x00,r11
	mov.l @(0x140,PC),r3
	mov 0x0C,r5
	mov.b r11,@(r0,r14)
	mov 0x00,r6
	jsr @r3
	mov r14,r4

loc_8c078eca:
	bsr loc_8c079352
	mov r14,r4
	mov.w @(0x126,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c078eda
	bra loc_8c078fe0
	nop

loc_8c078eda:
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
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c078fe0
	mov.w @(0x1C,r14),r0
	cmp/pz r0
	bf loc_8c078fe0
	mova @(0xDC,PC),r0
	fldi0 fr15
	fmov @r0,fr13
	mova @(0xDC,PC),r0
	fmov @r0,fr14
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf.s loc_8c078f88
	mov 0x03,r10
	mov.w @(0x1C,r14),r0
	mov 0x0F,r3
	mov 0x44,r2
	mov r15,r5
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0xB4,PC),r0
	mov.l r12,@(r0,r13)
	add 0x42,r0
	mov.b r3,@(r0,r13)
	add 0xAB,r0
	mov.b r2,@(r0,r13)
	mov 0x04,r0
	mov.l @(0xB8,PC),r3
	fmov fr13,@r15
	fmov fr14,@(r0,r15)
	mov 0x08,r0
	fmov fr15,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0xB0,PC),r2
	mov 0x06,r5
	jsr @r2
	mov r14,r4
	mov.l @(0xAC,PC),r3
	mov r12,r5
	mov 0x01,r6
	jsr @r3
	mov r13,r4
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r13)
	mov r11,r0
	nop
	mov.b r0,@(0x6,r14)
	mov 0x21,r0
	mov.b r10,@(r0,r14)
	bsr loc_8c079352
	mov r14,r4
	bra loc_8c078fe0
	nop

loc_8c078f88:
	mov r11,r0
	nop
	mov.b r0,@(0x6,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	mov r10,r0
	nop
	mov.w r0,@(0x1E,r14)
	mov 0x21,r0
	mov.l @(0x78,PC),r3
	mov r13,r5
	mov.b r10,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x52,PC),r0
	mov 0x43,r2
	mov.l @(0x70,PC),r3
	mov.b r2,@(r0,r13)
	jsr @r3
	mov r14,r4
	mov 0x04,r0
	mov.l @(0x54,PC),r3
	fmov fr13,@r15
	mov r15,r5
	fmov fr14,@(r0,r15)
	mov 0x08,r0
	fmov fr15,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0x48,PC),r2
	mov 0x06,r5
	jsr @r2
	mov r14,r4
	mov.l @(0x44,PC),r3
	mov r12,r5
	mov 0x01,r6
	jsr @r3
	mov r13,r4
	mov.l @(0x48,PC),r2
	mov 0x0D,r5
	mov 0x05,r6
	jsr @r2
	mov r13,r4

loc_8c078fe0:
	add 0x0C,r15
	lds.l @r15+,pr
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c078ff6:
	#data 0x014b
loc_8c078ff8:
	#data 0x0141
loc_8c078ffa:
	#data 0x01b4
loc_8c078ffc:
	#data 0x01a1
	#align4
loc_8c079000:
	#data bank0c.loc_8c0cbe3e
loc_8c079004:
	#data 0xc3555555
loc_8c079008:
	#data 0x433c9249
loc_8c07900c:
	#data bank0f.loc_8c0fdb4e
loc_8c079010:
	#data bank04.loc_8c04223a
loc_8c079014:
	#data bank05.loc_8c05a49c
loc_8c079018:
	#data bank04.loc_8c04cc1c
loc_8c07901c:
	#data bank05.loc_8c05933c
loc_8c079020:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c079024:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x120,PC),r3
	jsr @r3
	mov r4,r14
	bsr loc_8c07932a
	mov r14,r4
	extu.b r0,r0
	tst r0,r0
	bt loc_8c079042
	mov 0x0F,r0
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c079042:
	mov.l @(0x10C,PC),r2
	mov.l @r2,r3
	mov.b @(0xC,r3),r0
	tst r0,r0
	bt loc_8c07905c
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x78,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c07905c:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c079070
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c07933e
	mov.l @r15+,r14

loc_8c079070:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c079076:
	mov.w @(0xCA,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0790ce
	mov.b @(0x5,r14),r0
	mov 0x01,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xB6,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r14)
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)
	mov 0x45,r3
	mov.w @(0xA8,PC),r0
	mov 0x00,r4
	mov 0x1F,r6
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xA4,PC),r3
	mov 0x17,r5
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
	mov.l @(0x8C,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8c0790ce:
	mov.l @(0x8C,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0790e8
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0794f4
	mov.l @r15+,r14

loc_8c0790e8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0790ee:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mova @(0x58,PC),r0
	mov r4,r14
	fmov @r0,fr14
	mova @(0x58,PC),r0
	fmov @r0,fr15
	mov 0x7F,r11
	mov.w @(0x1C,r14),r0
	mov.w @(0x34,PC),r10
	add 0xFF,r0
	mov.l @(0x50,PC),r13
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf.s loc_8c0791b2
	mov 0x3F,r12
	mov 0x05,r9
	mov 0x10,r8

loc_8c079126:
	mov.l @(0x44,PC),r3
	mov r14,r2
	mov r15,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	jsr @r13
	nop
	extu.b r0,r4
	mov r4,r2
	tst r10,r2
	bt loc_8c079170
	and r12,r4
	bra loc_8c079172
	neg r4,r4

;##############################################
loc_8c079144:
	#data 0x019f
loc_8c079146:
	#data 0x012c
loc_8c079148:
	#data 0x01a1
loc_8c07914a:
	#data 0x0080
	#align4
loc_8c07914c:
	#data bank03.loc_8c034dee
loc_8c079150:
	#data 0x8c28c5fc
loc_8c079154:
	#data 0x8c2896b0
loc_8c079158:
	#data bank03.loc_8c034e8c
loc_8c07915c:
	#data bank04.loc_8c045748
loc_8c079160:
	#data 0x3fd55555
loc_8c079164:
	#data 0x40092492
loc_8c079168:
	#data bank03.loc_8c03319e
loc_8c07916c:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c079170:
	and r12,r4

loc_8c079172:
	lds r4,fpul
	fmov @r15,fr2
	fmov fr14,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@r15

loc_8c07917e:
	jsr @r13
	nop
	mov r0,r4
	and r11,r4
	cmp/ge r8,r4
	bf loc_8c07917e
	lds r4,fpul
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	fmov fr15,fr0
	mov r15,r5
	float fpul,fr3
	mov.w @(0xF0,PC),r7
	mov.l @(0xF8,PC),r3
	mov 0x01,r6
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r3
	mov r14,r4
	dt r9
	bf loc_8c079126
	bsr loc_8c0794f4
	mov r14,r4
	bra loc_8c079234
	nop

loc_8c0791b2:
	mov.l @(0xE4,PC),r3
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x04,r0
	mov.w @(0xD0,PC),r0
	movt r2
	mov.b r2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07922e
	jsr @r13
	nop
	and 0x0F,r0
	mov.w r0,@(0x1E,r14)
	mov 0x08,r4
	mov.w @(0x1E,r14),r0
	cmp/ge r4,r0
	bt loc_8c0791e2
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)

loc_8c0791e2:
	mov.l @(0xB8,PC),r3
	mov r14,r2
	mov r15,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	jsr @r13
	nop
	extu.b r0,r4
	tst r4,r10
	bt loc_8c0791fe
	and r12,r4
	bra loc_8c079200
	neg r4,r4

loc_8c0791fe:
	and r12,r4

loc_8c079200:
	lds r4,fpul
	fmov @r15,fr2
	fmov fr14,fr0
	float fpul,fr3
	fmac fr0,fr3,fr2
	jsr @r13
	fmov fr2,@r15
	mov r0,r4
	and r11,r4
	lds r4,fpul
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	fmov fr15,fr0
	mov r15,r5
	float fpul,fr3
	mov.w @(0x6C,PC),r7
	mov.l @(0x70,PC),r3
	mov 0x01,r6
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r3
	mov r14,r4

loc_8c07922e:
	mov.l @(0x70,PC),r2
	jsr @r2
	mov r14,r4

loc_8c079234:
	add 0x0C,r15
	lds.l @r15+,pr
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

;==============================================
loc_8c07924c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x50,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x38,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c079286
	mov.b @(0x5,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0x30,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x2C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)

loc_8c079286:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07928c:
	#data 0x0178
loc_8c07928e:
	#data 0x012c
loc_8c079290:
	#data 0x00f9
loc_8c079292:
	#data 0x0141
	#align4
loc_8c079294:
	#data bank10.loc_8c10235c
loc_8c079298:
	#data 0x8c26823c
loc_8c07929c:
	#data bank12.loc_8c1294c8
loc_8c0792a0:
	#data bank04.loc_8c045748
loc_8c0792a4:
	#data bank03.loc_8c034dee
loc_8c0792a8:
	#data 0x41cdb6db
loc_8c0792ac:
	#data 0xbd092492

;==============================================
loc_8c0792b0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x154,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	mov.l @(0x150,PC),r3
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
	bf loc_8c079304
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0794f4
	mov.l @r15+,r14

loc_8c079304:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07930a:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xFC,PC),r3
	jsr @r3
	mov.l r4,@r15
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c079322
	mov.l @r15,r4
	add 0x04,r15
	bra loc_8c07933e
	lds.l @r15+,pr

loc_8c079322:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8c07932a:
	mov.w @(0xD6,PC),r0
	mov.l @(0x18,r4),r4
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c079338
	rts
	mov 0x01,r0

loc_8c079338:
	mov 0x00,r0
	rts
	nop

;----------------------------------------------
loc_8c07933e:
	mov.l @(0xD4,PC),r2
	mov 0x0D,r0
	mov.b r0,@(0x5,r4)
	mov 0xFF,r0
	mov.l @r2,r3
	mov 0x1E,r6
	mov.b r0,@(0xB,r3)
	mov.l @(0xC8,PC),r3
	jmp @r3
	mov 0x17,r5

;==============================================
loc_8c079352:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x6,r14),r0
	mov.l @(0xC0,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	mov.w @(0xA2,PC),r0
	mov.l @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c079368:
	mov.b @(0x6,r4),r0
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.w @(0x96,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bt loc_8c07938c
	mov 0x21,r0
	mov.b @(r0,r4),r3
	mov.l @(0xA4,PC),r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	fmov @(r0,r3),fr3
	bra loc_8c0793a0
	nop

loc_8c07938c:
	mov 0x21,r0
	mov.b @(r0,r4),r2
	mov.l @(0x8C,PC),r0
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	shll2 r2
	fmov @(r0,r2),fr3
	fneg fr3

loc_8c0793a0:
	mov 0x5C,r0
	mov.l @(0x7C,PC),r6
	fmov fr3,@(r0,r5)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r5)
	mov 0x21,r0
	mov.b @(r0,r4),r3
	mov 0x04,r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r6,r3
	fmov @(r0,r3),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r5)
	mov 0x21,r0
	mov.b @(r0,r4),r3
	mov 0x08,r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	add r2,r3
	shll2 r3
	add r3,r6
	fmov @(r0,r6),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r5)
	mov 0x03,r0
	rts
	mov.b r0,@(0x7,r4)

;==============================================
loc_8c0793e2:
	add 0xFC,r15
	mov.l r5,@r15
	mov.b @(0x7,r4),r0
	add 0xFF,r0
	mov.b r0,@(0x7,r4)
	extu.b r0,r0
	tst r0,r0
	bf loc_8c079424
	mov.b @(0x6,r4),r0
	mov 0x10,r6
	mov.l @(0x20,PC),r3
	mov 0x0D,r5
	add 0x01,r0
	mov.b r0,@(0x6,r4)
	mov.l @r15,r4
	jmp @r3
	add 0x04,r15

;##############################################
loc_8c079404:
	#data 0x0411
loc_8c079406:
	#data 0x01c8
loc_8c079408:
	#data 0x0130
	#align4
loc_8c07940c:
	#data bank03.loc_8c034dee
loc_8c079410:
	#data bank03.loc_8c0334a8
loc_8c079414:
	#data 0x8c28c5fc
loc_8c079418:
	#data bank03.loc_8c034e8c
loc_8c07941c:
	#data bank15.loc_8c153ae0
loc_8c079420:
	#data bank15.loc_8c153af0

;----------------------------------------------
loc_8c079424:
	rts
	add 0x04,r15

;==============================================
loc_8c079428:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xE0,PC),r3
	mov r5,r14
	mov.l r4,@r15
	jsr @r3
	mov r5,r4
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
	fldi0 fr3
	fcmp/gt fr2,fr3
	bf.s loc_8c07948e
	fmov fr2,@(r0,r14)
	mov.l @r15,r2
	mov 0x0D,r5
	mov r14,r4
	mov 0x15,r6
	mov.b @(0x6,r2),r0
	add 0x01,r0
	mov.b r0,@(0x6,r2)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x88,PC),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c07948e:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c079496:
	mov.l r14,@-r15
	mov r5,r14
	sts.l pr,@-r15
	mov.l @(0x70,PC),r3
	jsr @r3
	mov r5,r4
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
	mov.w @(0x2E,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0794ee
	mov.w @(0x22,PC),r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8c0794ee:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c0794f4:
	mov.l @(0x20,PC),r2
	mov 0x00,r0
	mov.l @r2,r3
	mov.b r0,@(0x9,r3)

loc_8c0794fc:
	mov 0x03,r0
	mov.b r0,@(0x4,r4)
	mov 0x00,r3
	mov.w @(0x8,PC),r0
	mov.b r3,@(r0,r4)

loc_8c079506:
	mov.l @(0x14,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07950c:
	#data 0x041c
loc_8c07950e:
	#data 0x012c
	#align4
loc_8c079510:
	#data bank03.loc_8c034dee
loc_8c079514:
	#data bank03.loc_8c034e8c
loc_8c079518:
	#data 0x8c28c5fc
loc_8c07951c:
	#data bank04.loc_8c0450c0

;==============================================
;unused
loc_8c079520:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x13C,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c079546             ;8c07953c+0xa
	mov r0,r4
	mov.l @(0x12C,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c079546:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
;Unused
loc_8c07954e:
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l r4,@(0xC,r15)
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov.b r6,@r15
	mov r7,r0
	nop
	mov.l @(0x100,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c079590
	mov r0,r4
	mov 0x20,r1
	mov.l @(0xF0,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0xC,r15),r2
	mov.l r2,@(0x18,r4)
	mov 0x21,r2
	mov.b @(0x8,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2
	mov 0x23,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c079590:
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
;unused
loc_8c079598:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0xC4,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c079604
	mov r0,r4
	mov.l @(0xB4,PC),r3
	mov 0x20,r0
	mov 0x34,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x23,r0
	mov.l @(0x18,r4),r2
	mov.b @(r0,r2),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x90,PC),r0
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x18,r4),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x70,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bt.s loc_8c0795f8
	add r4,r1
	mov.w @(0x68,PC),r3
	bra loc_8c0795fa
	nop

loc_8c0795f8:
	mov.w @(0x64,PC),r3

loc_8c0795fa:
	lds r3,fpul
	fmov @r1,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@r1

loc_8c079604:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c07960c:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x44,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c079654
	mov r0,r4
	mov.l @(0x38,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(0x18,r2),r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r2
	mov.l r2,@(0x14,r4)
	mov 0x23,r2
	mov.b @(0x8,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2
	mov.w @(0xC,PC),r0
	mov.l @(0x14,r4),r3
	mov.w @(r0,r3),r2
	mov.w r2,@(r0,r4)

loc_8c079654:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07965c:
	#data 0x0130
loc_8c07965e:
	#data 0x00b0
loc_8c079660:
	#data 0xff50
	#align4
loc_8c079664:
	#data bank04.loc_8c044f12
loc_8c079668:
	#data loc_8c0796d4

;==============================================
loc_8c07966c:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0xF4,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0796cc
	mov r0,r4
	mov.l @(0xE8,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(0x18,r2),r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r2
	mov.l r2,@(0x14,r4)
	mov 0x23,r2
	mov.b @(0x8,r15),r0
	add r4,r2
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2
	mov.w @(0xBA,PC),r0
	mov.l @(0x14,r4),r3
	mov.w @(r0,r3),r2
	mov.w r2,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)

loc_8c0796cc:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c0796d4:
	mov r4,r3
	mov.l @(0xA4,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0796e6:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x7E,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x8C,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x70,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x68,PC),r0
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
	mov.w @(0x44,PC),r0
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
	mov.l @(0x40,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.l @(0x30,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c079cc4
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07976a:
	#data 0x0130
loc_8c07976c:
	#data 0x00dc
loc_8c07976e:
	#data 0x012c
loc_8c079770:
	#data 0x01a3
	#align4
loc_8c079774:
	#data bank04.loc_8c044f12
loc_8c079778:
	#data loc_8c0796d4
loc_8c07977c:
	#data bank15.loc_8c153b80
loc_8c079780:
	#data bank12.loc_8c129560
loc_8c079784:
	#data bank12.loc_8c1294c8
loc_8c079788:
	#data bank15.loc_8c153b90

;==============================================
loc_8c07978c:
	mov.w @(0x140,PC),r0
	mov 0x01,r5
	mov 0x42,r6
	mov.b r5,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	mov 0x36,r3
	fmov fr3,@(r0,r4)
	mov.w @(0x120,PC),r0
	mov.b r6,@(r0,r4)
	add 0x01,r0
	mov.b r6,@(r0,r4)
	add 0x04,r0
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov 0x00,r6
	mov.l @(0x118,PC),r3
	mov.w r6,@(r0,r4)
	add 0xF2,r0
	mov.b r6,@(r0,r4)
	add 0x26,r0
	mov.l r6,@(r0,r4)
	mov.l @r3,r2
	mov.b @(0x2,r4),r0
	add 0x7C,r2
	fldi0 fr4
	extu.b r0,r0
	mov.l @(0x104,PC),r6
	shll r0
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov.w @r6,r0
	mov.w r0,@(0x1C,r4)
	mov r5,r0
	nop
	mov.l @(0xF0,PC),r1
	mov.w r0,@(0x1E,r4)
	mov 0x38,r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fldi1 fr4
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0xE0,PC),r0
	fmov @r0,fr2
	mov.w @(0xCC,PC),r0
	fmov fr2,@(r0,r4)
	mova @(0xDC,PC),r0
	fmov @r0,fr2
	mov 0x68,r0
	fmov fr2,@(r0,r4)
	mova @(0xD8,PC),r0
	fmov @r0,fr2
	mov 0x6C,r0
	fmov fr2,@(r0,r4)
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mova @(0xCC,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r4),fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r4),fr2
	mov 0x00,r6
	mov.l @(0xC0,PC),r2
	fdiv fr4,fr2
	fmov fr2,@(r0,r4)
	jmp @r2
	mov 0x17,r5

;==============================================
loc_8c07983c:
	mov.w @(0x90,PC),r0
	mov 0x01,r3
	mov 0x00,r2
	mov.l @(0xB4,PC),r1
	mov.b r3,@(r0,r4)
	mov 0x24,r0
	mov.b r2,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x18,r4),r3
	lds r1,fpul
	fmov @(r0,r3),fr3
	fldi0 fr4
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov.w @(0x58,PC),r0
	fldi1 fr2
	mov.l @(0x74,PC),r3
	mov 0x01,r6
	fmov fr2,@(r0,r4)
	jmp @r3
	mov 0x17,r5

;==============================================
loc_8c079886:
	mov.w @(0x46,PC),r0
	mov 0x01,r3
	mov 0x07,r2
	mov.l @(0x68,PC),r1
	mov.b r3,@(r0,r4)
	mov 0x24,r0
	mov.b r2,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x18,r4),r3
	lds r1,fpul
	fmov @(r0,r3),fr3
	fldi0 fr4
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov.w @(0xE,PC),r0
	fldi1 fr2
	mov.l @(0x2C,PC),r3
	mov 0x02,r6
	fmov fr2,@(r0,r4)
	jmp @r3
	mov 0x17,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0798d0:
	#data 0x012c
loc_8c0798d2:
	#data 0x019c
loc_8c0798d4:
	#data 0x0108
	#align4
loc_8c0798d8:
	#data 0x8c2896b0
loc_8c0798dc:
	#data bank15.loc_8c153b20
loc_8c0798e0:
	#data 0x43340000
loc_8c0798e4:
	#data 0x3e99999a
loc_8c0798e8:
	#data 0x3d23d70a
loc_8c0798ec:
	#data 0x3e8f5c29
loc_8c0798f0:
	#data 0x42c80000
loc_8c0798f4:
	#data bank03.loc_8c034e8c
loc_8c0798f8:
	#data 0x42f00000

;==============================================
loc_8c0798fc:
	mov.w @(0x12E,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov 0x00,r5
	mov.l r13,@-r15
	mov.l @(0x128,PC),r4
	mov 0x34,r1
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x24,r0
	mov.b r5,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll r3
	shll2 r3
	add r3,r4
	mov.l @(0x18,r14),r3
	mov.w @(0xF0,PC),r0
	mov.w @(r0,r3),r2
	tst r2,r2
	bt.s loc_8c07994a
	add r14,r1
	bra loc_8c07994e
	fmov @r4,fr3

loc_8c07994a:
	fmov @r4,fr3
	fneg fr3

loc_8c07994e:
	fmov @r1,fr2
	mov 0x38,r0
	mov r5,r13
	mov 0x08,r12
	fadd fr3,fr2
	fmov fr2,@r1
	mov 0x04,r1
	add r4,r1
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c079966:
	mov 0x04,r5
	mov r13,r6
	bsr loc_8c07960c
	mov r14,r4
	add 0x01,r13
	extu.b r13,r2
	cmp/ge r12,r2
	bf loc_8c079966
	fldi0 fr4
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	mov.l @(0xB8,PC),r3
	mov 0x03,r6
	fmov fr4,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov 0x17,r5
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c079992:
	mov.w @(0x98,PC),r0
	mov 0x01,r3
	mov 0x00,r2
	mov.l @(0xA0,PC),r5
	mov.b r3,@(r0,r4)
	mov 0x24,r0
	mov.b r2,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x14,r4),r3
	fldi0 fr4
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	mov 0x23,r3
	add r4,r3
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	mov.b @r3,r3
	fmov @(r0,r4),fr2
	extu.b r3,r3
	shll2 r3
	add r3,r5
	fmov @r5,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	mov.l @(0x60,PC),r3
	mov 0x04,r6
	fmov fr4,@(r0,r4)
	jmp @r3
	mov 0x17,r5

;==============================================
loc_8c0799e0:
	mov.w @(0x4A,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov 0x00,r5
	mov.l r13,@-r15
	mov.l @(0x50,PC),r4
	mov 0x34,r1
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x24,r0
	mov.b r5,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll r3
	shll2 r3
	add r3,r4
	mov.l @(0x18,r14),r3
	mov.w @(0xC,PC),r0
	mov.w @(r0,r3),r2
	tst r2,r2
	bt.s loc_8c079a44
	add r14,r1
	bra loc_8c079a48
	fmov @r4,fr3

;##############################################
loc_8c079a2e:
	#data 0x012c
loc_8c079a30:
	#data 0x0130
	#align4
loc_8c079a34:
	#data bank15.loc_8c153b24
loc_8c079a38:
	#data bank03.loc_8c034e8c
loc_8c079a3c:
	#data bank15.loc_8c153b64
loc_8c079a40:
	#data bank15.loc_8c153b44

;----------------------------------------------
loc_8c079a44:
	fmov @r4,fr3
	fneg fr3

loc_8c079a48:
	fmov @r1,fr2
	mov 0x38,r0
	mov r5,r13
	mov 0x08,r12
	fadd fr3,fr2
	fmov fr2,@r1
	mov 0x04,r1
	add r4,r1
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c079a60:
	mov 0x06,r5
	mov r13,r6
	bsr loc_8c07960c
	mov r14,r4
	add 0x01,r13
	extu.b r13,r2
	cmp/ge r12,r2
	bf loc_8c079a60
	fldi0 fr4
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	mov.l @(0xEC,PC),r3
	mov 0x05,r6
	fmov fr4,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov 0x17,r5
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c079a8c:
	mov.w @(0xD0,PC),r0
	mov 0x01,r3
	mov 0x00,r2
	mov.l @(0xD8,PC),r5
	mov.b r3,@(r0,r4)
	mov 0x24,r0
	mov.b r2,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x14,r4),r3
	fldi0 fr4
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	mov 0x23,r3
	add r4,r3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.b @r3,r3
	fmov @(r0,r4),fr2
	extu.b r3,r3
	shll2 r3
	add r3,r5
	fmov @r5,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	mov.l @(0x94,PC),r3
	mov 0x06,r6
	fmov fr4,@(r0,r4)
	jmp @r3
	mov 0x17,r5

;==============================================
loc_8c079ada:
	mov.w @(0x82,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r8,@-r15
	mov 0x34,r8
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x24,r0
	mov.b r13,@(r0,r14)
	mov.w @(0x6C,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c079b04
	add r14,r8
	mov.l @(0x70,PC),r1
	lds r1,fpul
	bra loc_8c079b0a
	fsts fpul,fr3

loc_8c079b04:
	mov.l @(0x6C,PC),r2
	lds r2,fpul
	fsts fpul,fr3

loc_8c079b0a:
	mov 0x68,r0
	fldi0 fr4
	fmov @r8,fr2
	fadd fr3,fr2
	fmov fr2,@r8
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0x5C,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x54,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x2E,PC),r0
	fldi1 fr3
	fmov fr3,@(r0,r14)
	mov 0x05,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x22,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c079b4a
	mova @(0x3C,PC),r0
	bra loc_8c079b4e
	fmov @r0,fr3

loc_8c079b4a:
	mova @(0x3C,PC),r0
	fmov @r0,fr3

loc_8c079b4e:
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xC,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c079b90
	mova @(0x30,PC),r0
	bra loc_8c079b94
	fmov @r0,fr3

;3#############################################
loc_8c079b60:
	#data 0x012c
loc_8c079b62:
	#data 0x0130
loc_8c079b64:
	#data 0x0108
	#align4
loc_8c079b68:
	#data bank03.loc_8c034e8c
loc_8c079b6c:
	#data bank15.loc_8c153b64
loc_8c079b70:
	#data 0x427d5555
loc_8c079b74:
	#data 0xc27d5555
loc_8c079b78:
	#data 0x3c23d70a
loc_8c079b7c:
	#data 0x3ec28f5c
loc_8c079b80:
	#data 0xbca3d70a
loc_8c079b84:
	#data 0x3fd55555
loc_8c079b88:
	#data 0xbfd55555
loc_8c079b8c:
	#data 0xbcd55555

;----------------------------------------------
loc_8c079b90:
	mova @(0x15C,PC),r0
	fmov @r0,fr3

loc_8c079b94:
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r6
	mov 0x08,r5
	bsr loc_8c07966c
	mov r14,r4
	mov 0x23,r0
	mov.b @(r0,r14),r2
	mov 0x42,r4
	mov 0x3E,r3
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov 0x07,r6
	mov.w @(0x138,PC),r0
	mov 0x17,r5
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0x128,PC),r3
	mov r14,r4
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
	mov.l @r15+,r8
	mov.l @(0x114,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c079bea:
	mov.w @(0x100,PC),r0
	mov 0x01,r3
	mov 0x00,r2
	fldi0 fr4
	mov.b r3,@(r0,r4)
	mov 0x24,r0
	mov.b r2,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mova @(0xF8,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	mov.l @(0xF0,PC),r3
	mov 0x08,r6
	fmov fr3,@(r0,r4)
	mova @(0xF0,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov 0x06,r0
	mov.w r0,@(0x1C,r4)
	jmp @r3
	mov 0x17,r5

;==============================================
loc_8c079c1c:
	mov.w @(0xCE,PC),r0
	mov 0x01,r3
	mov 0x00,r2
	mov.b r3,@(r0,r4)
	mov 0x24,r0
	mov.b r2,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	mov 0x23,r3
	add r4,r3
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	mov.b @r3,r3
	fmov @(r0,r4),fr2
	extu.b r3,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	shll2 r3
	shll2 r3
	lds r3,fpul
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x68,r0
	fldi0 fr4
	mov 0x0A,r6
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	mov.l @(0x8C,PC),r3
	fmov fr4,@(r0,r4)
	jmp @r3
	mov 0x17,r5

;==============================================
loc_8c079c70:
	mov.w @(0x7A,PC),r0
	mov 0x01,r3
	mov 0x00,r2
	mov.b r3,@(r0,r4)
	mov 0x24,r0
	mov.b r2,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	mov 0x23,r3
	add r4,r3
	fmov fr3,@(r0,r4)
	mov 0x34,r0
	mov.b @r3,r3
	fmov @(r0,r4),fr2
	extu.b r3,r3
	mov r3,r2
	shll2 r3
	add r2,r3
	shll2 r3
	shll2 r3
	lds r3,fpul
	float fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x68,r0
	fldi0 fr4
	mov 0x0A,r6
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	mov.l @(0x38,PC),r3
	fmov fr4,@(r0,r4)
	jmp @r3
	mov 0x17,r5

;==============================================
loc_8c079cc4:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x1,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2
	mov.b @(0x1,r3),r0
	cmp/eq r0,r2
	bt loc_8c079cda
	mov r14,r4
	bra loc_8c07a414
	mov.l @r15+,r14

loc_8c079cda:
	mov 0x20,r0
	mov r14,r4
	mov.b @(r0,r14),r3
	mov.l @(0x20,PC),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c079cec:
	#data 0x019c
loc_8c079cee:
	#data 0x012c
	#align4
loc_8c079cf0:
	#data 0x3cd55555
loc_8c079cf4:
	#data 0x8c2896b0
loc_8c079cf8:
	#data bank03.loc_8c034e8c
loc_8c079cfc:
	#data 0x3e3851ec
loc_8c079d00:
	#data 0xbcf5c28f
loc_8c079d04:
	#data bank15.loc_8c153bbc

;==============================================
loc_8c079d08:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x10C,PC),r1
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov.l @(0x18,r14),r5
	mov.w @(0xF2,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8c079d32
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xE2,PC),r0
	mov.b r3,@(r0,r14)

loc_8c079d32:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c079d38:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xD2,PC),r3
	mov r5,r13
	mov.l @(0xD8,PC),r2
	mov r4,r14
	add r3,r13
	mov.l r5,@r15
	jsr @r2
	mov r14,r4
	mov 0x01,r4
	mov r4,r0
	nop
	mov.w r0,@(0x1E,r14)
	mov 0x48,r0
	mov.l @(r0,r14),r2
	mov.w @(0xB8,PC),r3
	add r3,r2
	mov.l r2,@(r0,r14)
	mov.l @(r0,r14),r1
	mov.l @(0xBC,PC),r2
	cmp/eq r2,r1
	bf.s loc_8c079d6e
	mov 0x00,r5
	mov.l r5,@(r0,r14)

loc_8c079d6e:
	mov.l @(0xB8,PC),r1
	mov 0x50,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	mov.l @(0xB4,PC),r1
	fsts fpul,fr3
	fdiv fr3,fr2
	lds r1,fpul
	mov 0x68,r1
	add r14,r1
	fmov fr2,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr1
	fsts fpul,fr2
	fdiv fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x6C,r0
	fmov @(r0,r14),fr0
	fmov @r1,fr1
	mov 0x6C,r1
	add r14,r1
	fadd fr1,fr0
	fmov fr0,@(r0,r14)
	mov 0x50,r0
	fmov @(r0,r14),fr0
	fmov @r1,fr1
	mov 0x6C,r1
	add r14,r1
	fadd fr1,fr0
	fmov fr0,@(r0,r14)
	mov 0x54,r0
	fmov @r1,fr1
	fmov @(r0,r14),fr0
	mov 0x68,r1
	add r14,r1
	fadd fr1,fr0
	fmov fr0,@(r0,r14)
	mov.w @(0x5E,PC),r0
	fmov @r1,fr1
	fmov @(r0,r14),fr0
	fadd fr1,fr0
	fmov fr0,@(r0,r14)
	mova @(0x6C,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr1
	fcmp/gt fr4,fr1
	bf loc_8c079dd8
	fmov fr4,@(r0,r14)
	mova @(0x60,PC),r0
	fmov @r0,fr1
	mov 0x54,r0
	fmov fr1,@(r0,r14)

loc_8c079dd8:
	mov.w @(0x3E,PC),r0
	fldi1 fr4
	fmov @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c079de4
	fmov fr4,@(r0,r14)

loc_8c079de4:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c079e3c
	mov.b @(0x5,r14),r0
	fldi1 fr3
	fadd fr3,fr3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x23,r0
	mov.w r0,@(0x1C,r14)
	mov 0x48,r0
	mov.l r5,@(r0,r14)
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mova @(0x2C,PC),r0
	fmov @r0,fr3
	mov 0x68,r0
	bra loc_8c079e80
	fmov fr3,@(r0,r14)

;##############################################
loc_8c079e12:
	#data 0x019f
loc_8c079e14:
	#data 0x012c
loc_8c079e16:
	#data 0x02a4
loc_8c079e18:
	#data 0x4000
loc_8c079e1a:
	#data 0x0108
	#align4
loc_8c079e1c:
	#data bank15.loc_8c153be8
loc_8c079e20:
	#data bank03.loc_8c034dee
loc_8c079e24:
	#data 0x0000f000
loc_8c079e28:
	#data 0x3fd55555
loc_8c079e2c:
	#data 0x40092492
loc_8c079e30:
	#data 0x3fb851ec
loc_8c079e34:
	#data 0x3f8f5c2a
loc_8c079e38:
	#data 0x3c23d70a

;----------------------------------------------
loc_8c079e3c:
	mov.w @(0x112,PC),r0
	mov.b @(r0,r14),r3
	tst r4,r3
	bf loc_8c079e80
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c079e72
	mov.w @(0x106,PC),r0
	mov.l @(r0,r14),r4
	mov.b @(0x3,r4),r0
	tst r0,r0
	bf loc_8c079e72
	mov.w @(0xFE,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c079e72
	mov.w @(0xF8,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c079e72
	mov.w @(0xF2,PC),r3
	mov r13,r5
	mov 0x06,r6
	mov.w r3,@r13
	mov.l @(0xF0,PC),r3
	jsr @r3
	mov.l @r15,r4

loc_8c079e72:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xE8,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c079e80:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c079e8a:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xD8,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(0xD4,PC),r1
	mov 0x50,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	mov.l @(0xD0,PC),r1
	fsts fpul,fr3
	fdiv fr3,fr2
	lds r1,fpul
	mov 0x6C,r1
	add r14,r1
	fmov fr2,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr1
	fsts fpul,fr2
	fdiv fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x50,r0
	fmov @(r0,r14),fr0
	fmov @r1,fr1
	mov 0x68,r1
	add r14,r1
	fadd fr1,fr0
	fmov fr0,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr0
	fmov @r1,fr1
	fsub fr1,fr0
	fmov fr0,@(r0,r14)
	mova @(0xA4,PC),r0
	fmov @r0,fr4
	mov 0x54,r0
	fmov @(r0,r14),fr1
	fcmp/gt fr4,fr1
	bt loc_8c079f04
	fmov fr4,@(r0,r14)
	mov.w @(0x1C,r14),r0
	mov.l @(0x98,PC),r3
	mov r0,r1
	jsr @r3
	mov 0x05,r0
	tst r0,r0
	bf loc_8c079f04
	mov 0x23,r0
	mov.b @(r0,r14),r6
	mov 0x09,r5
	bsr loc_8c07960c
	mov r14,r4
	mov 0x23,r0
	mov.b @(r0,r14),r6
	mov 0x0A,r5
	bsr loc_8c07960c
	mov r14,r4
	mov 0x23,r0
	mov.b @(r0,r14),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)

loc_8c079f04:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c079f1e
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x3E,PC),r0
	mov.b r3,@(r0,r14)

loc_8c079f1e:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c079f24:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x50,PC),r1
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.w @(0x16,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c079f4c
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x10,PC),r0
	mov.b r3,@(r0,r14)

loc_8c079f4c:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c079f52:
	#data 0x019e
loc_8c079f54:
	#data 0x01b0
loc_8c079f56:
	#data 0x0411
loc_8c079f58:
	#data 0x0420
loc_8c079f5a:
	#data 0x0258
loc_8c079f5c:
	#data 0x012c
	#align4
loc_8c079f60:
	#data bank0f.loc_8c0f047c
loc_8c079f64:
	#data bank04.loc_8c045748
loc_8c079f68:
	#data bank03.loc_8c034dee
loc_8c079f6c:
	#data 0x3fd55555
loc_8c079f70:
	#data 0x40092492
loc_8c079f74:
	#data 0x3b98ead6
loc_8c079f78:
	#data bank12.loc_8c1292d4
loc_8c079f7c:
	#data bank15.loc_8c153bf0

;==============================================
loc_8c079f80:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x144,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(0x144,PC),r1
	mov.w @(0x130,PC),r0
	lds r1,fpul
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	add 0x3B,r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c079fac
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x116,PC),r0
	mov.b r3,@(r0,r14)

loc_8c079fac:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c079fb2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x11C,PC),r1
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.w @(0xFA,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c079fda
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xE8,PC),r0
	mov.b r3,@(r0,r14)

loc_8c079fda:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c079fe0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0xD8,PC),r0
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_8c079ffe
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xC4,PC),r0
	mov.b r3,@(r0,r14)

loc_8c079ffe:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07a004:
	mov r4,r3
	mov.l @(0xD0,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c07a016:
	mov.w @(0xAE,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c07a038
	mov.b @(0x5,r14),r0
	mov 0x00,r3
	mov 0x4C,r5
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x96,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0xA8,PC),r3
	jsr @r3
	mov r14,r4

loc_8c07a038:
	lds.l @r15+,pr
	mov.l @(0x90,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c07a042:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x84,PC),r3
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
	mov 0x54,r0
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
	add 0x01,r0
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c07a0b0
	mov.b @(0x5,r14),r0
	mov 0x05,r2
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	cmp/ge r2,r3
	bt loc_8c07a0ba
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov r14,r4
	mov 0x07,r5
	bra loc_8c07966c
	mov.l @r15+,r14

loc_8c07a0b0:
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c07a0ba:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07a0c0:
	#data 0x0108
loc_8c07a0c2:
	#data 0x012c
loc_8c07a0c4:
	#data 0x019e
loc_8c07a0c6:
	#data 0x0143
loc_8c07a0c8:
	#data 0x0141
	#align4
loc_8c07a0cc:
	#data bank03.loc_8c034dee
loc_8c07a0d0:
	#data 0x3d23d70a
loc_8c07a0d4:
	#data bank15.loc_8c153bf4
loc_8c07a0d8:
	#data bank15.loc_8c153bf8
loc_8c07a0dc:
	#data bank04.loc_8c04223a
loc_8c07a0e0:
	#data bank04.loc_8c045748

;==============================================
loc_8c07a0e4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x124,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	mov 0x50,r2
	add r14,r2
	mov r0,r3
	lds r3,fpul
	mova @(0x118,PC),r0
	fmov @r0,fr2
	mova @(0x118,PC),r0
	float fpul,fr3
	fmov @r0,fr0
	mova @(0x118,PC),r0
	fmac fr0,fr3,fr2
	fmov @r2,fr3
	fsub fr2,fr3
	fmov fr3,@r2
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bf loc_8c07a130
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x08,r0
	mov.w r0,@(0x1C,r14)
	mova @(0xFC,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mova @(0xF8,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)

loc_8c07a130:
	mov.w @(0x1C,r14),r0
	mov 0x5C,r1
	add r14,r1
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
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
	mov 0x54,r0
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
	mov 0x54,r0
	fmov @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bf loc_8c07a178
	fmov fr4,@(r0,r14)

loc_8c07a178:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07a17e:
	mov.l @(0x94,PC),r1
	mov.w @(0x88,PC),r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x98,PC),r0
	fmov @r0,fr4
	mov.w @(0x78,PC),r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr4
	bf loc_8c07a19a
	fmov fr4,@(r0,r4)

loc_8c07a19a:
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
	mov 0x54,r0
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
	mova @(0x48,PC),r0
	fmov @r0,fr4
	mov 0x54,r0
	fmov @(r0,r4),fr3
	fcmp/gt fr3,fr4
	bf loc_8c07a1e0
	fmov fr4,@(r0,r4)

loc_8c07a1e0:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	add 0x01,r0
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c07a208
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mova @(0x34,PC),r0
	fmov @r0,fr4
	mov 0x60,r0
	fmov @(r0,r4),fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x6C,r0
	fmov @(r0,r4),fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r4)

loc_8c07a208:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07a20c:
	#data 0x0108
	#align4
loc_8c07a210:
	#data bank03.loc_8c034dee
loc_8c07a214:
	#data 0x3d75c28f
loc_8c07a218:
	#data 0x3ca3d70a
loc_8c07a21c:
	#data 0x3c23d70a
loc_8c07a220:
	#data 0x3d23d70a
loc_8c07a224:
	#data 0xbdcccccd
loc_8c07a228:
	#data 0x3dcccccd
loc_8c07a22c:
	#data 0x42c80000

;==============================================
loc_8c07a230:
	mov.l @(0x128,PC),r1
	mov.w @(0x120,PC),r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x120,PC),r0
	fmov @r0,fr4
	mov.w @(0x110,PC),r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr4
	bf loc_8c07a24c
	fmov fr4,@(r0,r4)

loc_8c07a24c:
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
	mov 0x54,r0
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
	mova @(0xDC,PC),r0
	fmov @r0,fr4
	mov 0x54,r0
	fmov @(r0,r4),fr3
	fcmp/gt fr3,fr4
	bf loc_8c07a2a0
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xBC,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)

loc_8c07a2a0:
	rts
	nop

;==============================================
loc_8c07a2a4:
	mov r4,r3
	mov.l @(0xC0,PC),r1
	mov.l r4,@-r15
	mov.b @(0x5,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c07a2b6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xB0,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	add r14,r1
	mov 0x50,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	mov 0x02,r3
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	cmp/gt r3,r0
	bt loc_8c07a300
	mov.l @(0x88,PC),r1
	mov.w @(0x6C,PC),r0
	lds r1,fpul
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x6C,PC),r0
	fmov @r0,fr4
	mov.w @(0x5C,PC),r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr4
	bf loc_8c07a300
	fmov fr4,@(r0,r14)

loc_8c07a300:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c07a350
	mov.b @(0x5,r14),r0
	mov r14,r4
	fldi1 fr4
	mov 0x09,r6
	add 0x01,r0
	mov.l @(0x60,PC),r3
	mov.b r0,@(0x5,r14)
	mov 0x06,r0
	mov.w r0,@(0x1C,r14)
	mov 0x17,r5
	mov.w @(0x30,PC),r0
	fmov fr4,@(r0,r14)
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mova @(0x34,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x3C,PC),r0
	fmov @r0,fr4
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mova @(0x38,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c07a350:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07a356:
	#data 0x0108
loc_8c07a358:
	#data 0x012c
	#align4
loc_8c07a35c:
	#data 0x3da3d70a
loc_8c07a360:
	#data 0x3dcccccd
loc_8c07a364:
	#data 0x3c23d70a
loc_8c07a368:
	#data bank15.loc_8c153c0c
loc_8c07a36c:
	#data bank03.loc_8c034dee
loc_8c07a370:
	#data 0x3e4ccccd
loc_8c07a374:
	#data 0xb99d4952
loc_8c07a378:
	#data 0x3ca3d70a
loc_8c07a37c:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c07a380:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x98,PC),r3
	jsr @r3
	mov r4,r14
	mov 0x5C,r1
	add r14,r1
	mov 0x50,r0
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
	mov 0x54,r0
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
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07a3dc
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x3E,PC),r0
	mov.b r3,@(r0,r14)

loc_8c07a3dc:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07a3e2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x38,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x2C,PC),r0
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_8c07a400
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x1A,PC),r0
	mov.b r3,@(r0,r14)

loc_8c07a400:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07a406:
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x8,PC),r0
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8c07a414:
	mov.l @(0xC,PC),r3
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07a41a:
	#data 0x012c
loc_8c07a41c:
	#data 0x0143
	#align4
loc_8c07a420:
	#data bank03.loc_8c034dee
loc_8c07a424:
	#data bank04.loc_8c0450c0

;==============================================
loc_8c07a428:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x140,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c07a44e
	mov r0,r4
	mov.l @(0x130,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c07a44e:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c07a456:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x10C,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c07a488
	mov r0,r4
	mov.l @(0x100,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @r15,r2
	mov.l @(0x18,r2),r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r2
	mov.l r2,@(0x14,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1

loc_8c07a488:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8c07a490:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.l @(0xD0,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c07a4c8
	mov r0,r4
	mov.l @(0xC0,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x23,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c07a4c8:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07a4d4:
	mov r4,r3
	mov.l @(0xA0,PC),r1
	mov.l r4,@-r15
	mov.b @(0x4,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c07a4e6:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x7C,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0x88,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x6E,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x66,PC),r0
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
	mov.w @(0x42,PC),r0
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
	mov.l @(0x3C,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov.l @(0x2C,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c07b54a
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07a56a:
	#data 0x00dc
loc_8c07a56c:
	#data 0x012c
loc_8c07a56e:
	#data 0x01a3
	#align4
loc_8c07a570:
	#data bank04.loc_8c044f12
loc_8c07a574:
	#data loc_8c07a4d4
loc_8c07a578:
	#data bank15.loc_8c153dac
loc_8c07a57c:
	#data bank12.loc_8c129560
loc_8c07a580:
	#data bank12.loc_8c1294c8
loc_8c07a584:
	#data bank15.loc_8c153dbc

;==============================================
loc_8c07a588:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x16A,PC),r0
	mov 0x01,r4
	sts.l pr,@-r15
	mov.l @(0x18,r14),r5
	mov 0x34,r1
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.w @(0x146,PC),r0
	mov.w @(r0,r2),r3
	tst r3,r3
	bt.s loc_8c07a5c0
	add r14,r1
	bra loc_8c07a5c2
	mov 0x60,r3

loc_8c07a5c0:
	mov 0xA0,r3

loc_8c07a5c2:
	lds r3,fpul
	mov 0x38,r0
	fmov @r1,fr2
	mov 0x0B,r3
	fldi0 fr4
	float fpul,fr3
	mov.w @(0x12C,PC),r2
	add r2,r5
	fadd fr3,fr2
	fmov fr2,@r1
	mov.l @(0x130,PC),r1
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x68,r0
	mov.b r4,@r5
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x10C,PC),r0
	mov.l @(0x18,r14),r3
	mov.l @(0x114,PC),r4
	mov.b @(r0,r3),r1
	extu.b r1,r1
	shll r1
	add r1,r4
	mov.w @r4,r0
	mov.w r0,@(0x1C,r14)
	mov 0x18,r5
	bsr loc_8c07a456
	mov r14,r4
	mov.w @(0xF6,PC),r0
	mov 0x17,r2
	mov.l @(0x100,PC),r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x1C,r6
	lds.l @r15+,pr
	mov.b @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c07a61c:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xE0,PC),r0
	mov 0x01,r5
	mov.l @(0x18,r14),r4
	mov.l @(0xEC,PC),r1
	mov.l @(r0,r4),r6
	mov.w @(0xCC,PC),r0
	lds r1,fpul
	mov.b r5,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0xA6,PC),r0
	mov.l @(0x14,r14),r3
	mov.w @(r0,r3),r2
	mov 0x0A,r3
	mov.w r2,@(r0,r14)
	mov 0x24,r0
	fldi0 fr4
	mov.b r3,@(r0,r14)
	mov 0x42,r4
	mov.w @(0x9E,PC),r0
	mov 0x3E,r3
	mov.l @(0xB0,PC),r7
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r4
	mov.l @(0x9C,PC),r3
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
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x60,PC),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r1
	extu.b r1,r1
	shll r1
	add r1,r7
	mov.w @r7,r0
	mov.l @(0x74,PC),r7
	mov.w r0,@(0x1C,r14)
	mov 0x5A,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x4A,PC),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r1
	mov 0x5C,r0
	extu.b r1,r1
	shll2 r1
	shll2 r1
	add r1,r7
	fmov @r7,fr2
	fmov fr2,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r7),fr2
	mov 0x68,r0
	fmov fr2,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r7),fr2
	mov 0x60,r0
	fmov fr2,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r7),fr2
	mov 0x6C,r0
	fmov fr2,@(r0,r14)
	mova @(0x44,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr1
	fmov @(r0,r6),fr2
	fcmp/gt fr2,fr1
	bf loc_8c07a728
	mov.w @(0x4,PC),r0
	bra loc_8c07a72c
	mov.w r4,@(r0,r14)

;##############################################
loc_8c07a6fa:
	#data 0x012c
loc_8c07a6fc:
	#data 0x0130
loc_8c07a6fe:
	#data 0x02a4
loc_8c07a700:
	#data 0x01a3
loc_8c07a702:
	#data 0x0159
loc_8c07a704:
	#data 0x020c
loc_8c07a706:
	#data 0x019c
	#align4
loc_8c07a708:
	#data 0x41a00000
loc_8c07a70c:
	#data bank15.loc_8c153c14
loc_8c07a710:
	#data bank03.loc_8c034e8c
loc_8c07a714:
	#data 0x42092492
loc_8c07a718:
	#data 0x8c2896b0
loc_8c07a71c:
	#data bank15.loc_8c153c18
loc_8c07a720:
	#data bank15.loc_8c153c1c
loc_8c07a724:
	#data 0x3ecccccd

;----------------------------------------------
loc_8c07a728:
	mov.w @(0xDA,PC),r0
	mov.w r5,@(r0,r14)

loc_8c07a72c:
	mov.w @(0xD6,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c07a73a
	mov 0x5C,r0
	bra loc_8c07a740
	fmov @(r0,r14),fr3

loc_8c07a73a:
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3

loc_8c07a740:
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mov.w @(0xBE,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c07a754
	mov 0x68,r0
	fmov @(r0,r14),fr3
	bra loc_8c07a758
	fneg fr3

loc_8c07a754:
	mov 0x68,r0
	fmov @(r0,r14),fr3

loc_8c07a758:
	mov 0x68,r0
	mov r14,r4
	fmov fr3,@(r0,r14)
	mov 0x17,r3
	mov.w @(0xA4,PC),r0
	mov 0x01,r6
	mov.b r3,@(r0,r14)
	mov.l @(0xA8,PC),r3
	mov.b @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c07a76e:
	mov.w @(0x98,PC),r0
	mov 0x01,r5
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b r5,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.l @(0x18,r14),r3
	mov.w @(0x6A,PC),r0
	mov.w @(r0,r3),r2
	mov.w r2,@(r0,r14)
	add 0x73,r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c07a7c4
	mov.w @(0x5A,PC),r0
	mov 0x34,r8
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c07a7bc
	add r14,r8
	mov.l @(0x5C,PC),r1
	lds r1,fpul
	bra loc_8c07a7de
	fsts fpul,fr3

loc_8c07a7bc:
	mov.l @(0x58,PC),r2
	lds r2,fpul
	bra loc_8c07a7de
	fsts fpul,fr3

loc_8c07a7c4:
	mov.w @(0x3E,PC),r0
	mov 0x34,r8
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c07a7d8
	add r14,r8
	mov.l @(0x48,PC),r1
	lds r1,fpul
	bra loc_8c07a7de
	fsts fpul,fr3

loc_8c07a7d8:
	mov.l @(0x44,PC),r2
	lds r2,fpul
	fsts fpul,fr3

loc_8c07a7de:
	fmov @r8,fr2
	mov.w @(0x22,PC),r0
	fadd fr3,fr2
	mov.l @(0x3C,PC),r6
	fmov fr2,@r8
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c07a82c
	mov.w @(0x1A,PC),r0
	fmov @(r0,r6),fr4
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c07a842
	mova @(0x2C,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fadd fr3,fr4
	bra loc_8c07a842
	fmov fr4,@(r0,r14)

;##############################################
loc_8c07a806:
	#data 0x0130
loc_8c07a808:
	#data 0x0159
loc_8c07a80a:
	#data 0x012c
loc_8c07a80c:
	#data 0x008c
	#align4
loc_8c07a810:
	#data bank03.loc_8c034e8c
loc_8c07a814:
	#data 0x433aaaaa
loc_8c07a818:
	#data 0xc33aaaaa
loc_8c07a81c:
	#data 0x43baaaaa
loc_8c07a820:
	#data 0xc3baaaaa
loc_8c07a824:
	#data 0x8c26a518
loc_8c07a828:
	#data 0xc2a00000

;----------------------------------------------
loc_8c07a82c:
	mov.w @(0xF4,PC),r0
	fmov @(r0,r6),fr4
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fcmp/gt fr3,fr4
	bf loc_8c07a842
	mova @(0xF4,PC),r0
	fmov @r0,fr3
	mov 0x34,r0
	fadd fr3,fr4
	fmov fr4,@(r0,r14)

loc_8c07a842:
	mov.w @(0xE0,PC),r3
	mov 0x14,r0
	mov 0x3F,r2
	fldi0 fr4
	add r3,r4
	mov.b r5,@(r0,r4)
	mov 0x42,r4
	mov.w @(0xD4,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r4
	mov.l @(0xD0,PC),r2
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
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x24,r0
	mov.b r4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov 0x04,r0
	mov.l @(0xA8,PC),r3
	mov 0x4C,r5
	mov.w r0,@(0x1E,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xA0,PC),r2
	mov 0x1F,r6
	mov 0x17,r5
	mov r14,r4
	mov.l @r15+,r8
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c07a8a8:
	mov.w @(0x7E,PC),r0
	mov 0x01,r3
	fldi0 fr4
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x14,r4),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x60,PC),r0
	mov.l @(0x14,r4),r3
	fldi1 fr3
	mov.w @(r0,r3),r2
	mov 0x00,r3
	mov.w r2,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	mov.w @(0x46,PC),r0
	fmov fr3,@(r0,r4)
	mov.l @(0x50,PC),r3
	mov 0x03,r0
	mov 0x20,r6
	mov.w r0,@(0x1E,r4)
	jmp @r3
	mov 0x17,r5

;==============================================
loc_8c07a8f4:
	mov.w @(0x32,PC),r0
	mov 0x01,r3
	mov 0x34,r1
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x18,r4),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x14,PC),r0
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	tst r3,r3
	bt.s loc_8c07a940
	add r4,r1
	bra loc_8c07a942
	mov 0x70,r3

;##############################################
loc_8c07a924:
	#data 0x0088
loc_8c07a926:
	#data 0x02a4
loc_8c07a928:
	#data 0x019c
loc_8c07a92a:
	#data 0x012c
loc_8c07a92c:
	#data 0x0130
loc_8c07a92e:
	#data 0x0108
	#align4
loc_8c07a930:
	#data 0x42a00000
loc_8c07a934:
	#data 0x8c2896b0
loc_8c07a938:
	#data bank04.loc_8c04223a
loc_8c07a93c:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c07a940:
	mov 0x90,r3

loc_8c07a942:
	lds r3,fpul
	mov 0x38,r0
	fmov @r1,fr2
	mov 0x42,r5
	mov 0x31,r3
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@r1
	mov.l @(0xE4,PC),r1
	fmov @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0xCE,PC),r0
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x04,r0
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov 0x00,r5
	mov.l @(0xCC,PC),r3
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l r5,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	add 0x7C,r2
	shll r0
	fldi0 fr4
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xA2,PC),r0
	mov.w @(r0,r4),r1
	mov r0,r2
	add 0x54,r2
	or r2,r1
	mov.w r1,@(r0,r4)
	mov 0x50,r0
	mov.w r0,@(0x1C,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov 0x24,r0
	mov.b r5,@(r0,r4)
	mov 0x5C,r0
	mov.l @(0x94,PC),r5
	fmov @r5,fr2
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r5),fr2
	mov 0x68,r0
	fmov fr2,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r5),fr2
	mov 0x60,r0
	fmov fr2,@(r0,r4)
	mov 0x0C,r0
	fmov @(r0,r5),fr2
	mov 0x6C,r0
	fmov fr2,@(r0,r4)
	mov.w @(0x68,PC),r0
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r1
	tst r1,r1
	bt loc_8c07a9d8
	mov 0x5C,r0
	bra loc_8c07a9de
	fmov @(r0,r4),fr2

loc_8c07a9d8:
	mov 0x5C,r0
	fmov @(r0,r4),fr2
	fneg fr2

loc_8c07a9de:
	mov 0x5C,r0
	fmov fr2,@(r0,r4)
	mov.w @(0x4E,PC),r0
	mov.l @(0x18,r4),r3
	mov.w @(r0,r3),r2
	tst r2,r2
	bt loc_8c07a9f4
	mov 0x68,r0
	fmov @(r0,r4),fr3
	bra loc_8c07a9f8
	fneg fr3

loc_8c07a9f4:
	mov 0x68,r0
	fmov @(r0,r4),fr3

loc_8c07a9f8:
	mov.l @(0x48,PC),r3
	mov 0x68,r0
	mov 0x22,r6
	fmov fr3,@(r0,r4)
	jmp @r3
	mov 0x17,r5

;==============================================
loc_8c07aa04:
	mov.w @(0x2E,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov r14,r1
	mov.l @(0x18,r14),r2
	add 0x34,r1
	mov.l @(0x30,PC),r3
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x12,PC),r0
	mov 0x34,r1
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r2
	tst r2,r2
	bt.s loc_8c07aa4c
	add r14,r1
	bra loc_8c07aa4e
	mov 0x70,r2

;##############################################
loc_8c07aa30:
	#data 0x019c
loc_8c07aa32:
	#data 0x01ac
loc_8c07aa34:
	#data 0x0130
loc_8c07aa36:
	#data 0x012c
	#align4
loc_8c07aa38:
	#data 0x43300000
loc_8c07aa3c:
	#data 0x8c2896b0
loc_8c07aa40:
	#data bank15.loc_8c153d1c
loc_8c07aa44:
	#data bank03.loc_8c034e8c
loc_8c07aa48:
	#data bank12.loc_8c1294c8

;----------------------------------------------
loc_8c07aa4c:
	mov 0x90,r2

loc_8c07aa4e:
	lds r2,fpul
	mov 0x38,r0
	fmov @r1,fr2
	mov 0x32,r3
	mov 0x00,r4
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@r1
	mov.l @(0x158,PC),r1
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x13C,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0x140,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.b @(0x2,r14),r0
	xor 0x01,r0
	fldi0 fr4
	mov.b r0,@(0x2,r14)
	mov 0x66,r2
	mov.w @(0x112,PC),r0
	mov 0x06,r1
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r1,@(r0,r14)
	mov 0x24,r0
	mov.b r4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r14)
	mova @(0x10C,PC),r0
	fmov @r0,fr2
	mov.l @(0x10C,PC),r1
	mov.w @(0xF4,PC),r0
	lds r1,fpul
	fmov fr2,@(r0,r14)
	mov 0x50,r0
	fmov @(r0,r14),fr1
	fsts fpul,fr2
	fdiv fr2,fr1
	mov.l @(0x100,PC),r1
	lds r1,fpul
	fmov fr1,@(r0,r14)
	mov 0x54,r0
	fsts fpul,fr1
	fmov @(r0,r14),fr0
	mov 0x02,r5
	mov.l @(0xF8,PC),r2
	mov 0x05,r6
	fdiv fr1,fr0
	mov 0x01,r7
	fmov fr0,@(r0,r14)
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0xEC,PC),r3
	mov r14,r4
	mov 0x2B,r6
	mov 0x17,r5
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c07aaee:
	mov.w @(0xBE,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r2
	mov 0x42,r4
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x3D,r3
	fmov fr3,@(r0,r14)
	mov.w @(0x94,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r4
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.l @(0x8C,PC),r3
	mov 0x23,r6
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	fldi0 fr4
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x24,r0
	mov.b r4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x5E,PC),r0
	mov.l @(0x18,r14),r2
	mov.b r4,@(r0,r2)
	add 0x18,r0
	mov 0x17,r2
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r5
	mov.l @(0x6C,PC),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c07ab66:
	mov.w @(0x46,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r2
	mov 0x24,r6
	fldi0 fr4
	mov r14,r4
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x00,r3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x17,r3
	mov.w @(0x12,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x2C,PC),r3
	mov.b @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07abaa:
	#data 0x01a1
loc_8c07abac:
	#data 0x019c
loc_8c07abae:
	#data 0x0108
loc_8c07abb0:
	#data 0x012c
loc_8c07abb2:
	#data 0x0141
loc_8c07abb4:
	#data 0x0159
	#align4
loc_8c07abb8:
	#data 0x43500000
loc_8c07abbc:
	#data 0x8c2896b0
loc_8c07abc0:
	#data 0x3f333333
loc_8c07abc4:
	#data 0x3fd55555
loc_8c07abc8:
	#data 0x40092492
loc_8c07abcc:
	#data bank03.loc_8c03544c
loc_8c07abd0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c07abd4:
	mov.w @(0x160,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r2
	mov 0x34,r1
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x13E,PC),r0
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	tst r3,r3
	bt.s loc_8c07ac08
	add r14,r1
	bra loc_8c07ac0a
	mov 0xF0,r3

loc_8c07ac08:
	mov 0x10,r3

loc_8c07ac0a:
	lds r3,fpul
	mov 0x38,r0
	fmov @r1,fr2
	mov 0x17,r3
	fldi0 fr4
	mov r14,r4
	float fpul,fr3
	mov 0x21,r6
	fadd fr3,fr2
	fmov fr2,@r1
	mov.l @(0x120,PC),r1
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x106,PC),r0
	mov.b r3,@(r0,r14)
	mov.b @(r0,r14),r5
	mov.l @(0x108,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c07ac3e:
	mov.w @(0xF6,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r2
	mov r14,r4
	mov 0x17,r5
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x09,r3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.l @(0x18,r14),r6
	mov.l @(0xD4,PC),r3
	mov.b @(0x7,r6),r0
	mov r0,r6
	add 0x08,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c07ac78:
	mov.w @(0xBC,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r2
	mov r14,r4
	mov 0x17,r5
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x0B,r3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mov.w @(0x92,PC),r0
	mov.l @(0x98,PC),r3
	fmov fr3,@(r0,r14)
	mov.l @(0x18,r14),r6
	mov.b @(0x7,r6),r0
	mov r0,r6
	add 0x0D,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c07acba:
	mov.w @(0x7A,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r2
	mov r14,r4
	mov 0x17,r5
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x0C,r3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.l @(0x18,r14),r6
	mov.l @(0x58,PC),r3
	mov.b @(0x7,r6),r0
	mov r0,r6
	add 0x12,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c07acf4:
	mov.w @(0x40,PC),r0
	mov 0x01,r3
	mov.l @(0x50,PC),r1
	mov 0x2C,r6
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x18,r4),r2
	lds r1,fpul
	fmov @(r0,r2),fr3
	fldi0 fr4
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	mov 0x0A,r3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	mov.l @(0x10,PC),r3
	fmov fr4,@(r0,r4)
	jmp @r3
	mov 0x17,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07ad38:
	#data 0x012c
loc_8c07ad3a:
	#data 0x0130
loc_8c07ad3c:
	#data 0x0159
loc_8c07ad3e:
	#data 0x0108
	#align4
loc_8c07ad40:
	#data 0x43300000
loc_8c07ad44:
	#data bank03.loc_8c034e8c
loc_8c07ad48:
	#data 0x3f000000
loc_8c07ad4c:
	#data 0x43700000

;==============================================
loc_8c07ad50:
	mov.w @(0x130,PC),r0
	mov 0x01,r3
	mov.l @(0x13C,PC),r1
	mov 0x2C,r6
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x18,r4),r2
	lds r1,fpul
	fmov @(r0,r2),fr3
	fldi0 fr4
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr3
	mov 0x0A,r3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	mov.l @(0x108,PC),r3
	fmov fr4,@(r0,r4)
	jmp @r3
	mov 0x17,r5

;==============================================
loc_8c07ad94:
	mov.w @(0xEE,PC),r0
	mov 0x01,r3
	mov.l @(0x18,r4),r5
	mov.l @(r0,r5),r5
	mov.w @(0xE4,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	mov.l @(0xF4,PC),r5
	fmov fr3,@(r0,r4)
	mova @(0xF4,PC),r0
	fmov @r0,fr3
	mov.w @(0xD8,PC),r0
	fmov @(r0,r5),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x18,r4),r3
	fmov @(r0,r3),fr2
	fmov fr2,@(r0,r4)
	mov.w @(0xC8,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c07adde
	mov.w @(0xC2,PC),r0
	fmov @(r0,r5),fr4
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr4,fr2
	bf loc_8c07adf4               ;8c07adea+0xa
	mova @(0xD0,PC),r0
	fmov @r0,fr2
	mov 0x34,r0
	fadd fr2,fr4
	bra loc_8c07adf4              ;8c07adea+0xa
	fmov fr4,@(r0,r4)

loc_8c07adde:
	mov.w @(0xAC,PC),r0
	fmov @(r0,r5),fr4
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fcmp/gt fr2,fr4
	bf loc_8c07adf4               ;8c07adea+0xa
	mova @(0xBC,PC),r0
	fmov @r0,fr2
	mov 0x34,r0
	fadd fr2,fr4
	fmov fr4,@(r0,r4)

loc_8c07adf4:
	mov.w @(0x98,PC),r0
	mov 0x42,r5
	mov 0x30,r3
	fldi0 fr4
	mov.b r5,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	add 0x04,r0
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov 0x00,r5
	mov.l @(0xA0,PC),r3
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l r5,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x24,r0
	mov 0x0B,r2
	mov.b r2,@(r0,r4)
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x60,r0
	mov.l @(0x60,PC),r2
	fmov fr4,@(r0,r4)
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov 0x17,r6
	fmov fr3,@(r0,r4)
	jmp @r2
	mov r6,r5

;==============================================
loc_8c07ae48:
	mov.w @(0x38,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l r8,@-r15
	mov 0x34,r8
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.l @(0x18,r14),r3
	mov.w @(0x14,PC),r0
	mov.w @(r0,r3),r2
	tst r2,r2
	bt.s loc_8c07aeb8
	add r14,r8
	mov.l @(0x34,PC),r1
	lds r1,fpul
	bra loc_8c07aebe
	fsts fpul,fr3

;##############################################
loc_8c07ae84:
	#data 0x012c
loc_8c07ae86:
	#data 0x020c
loc_8c07ae88:
	#data 0x0090
loc_8c07ae8a:
	#data 0x0130
loc_8c07ae8c:
	#data 0x008c
loc_8c07ae8e:
	#data 0x0088
loc_8c07ae90:
	#data 0x019c
	#align4
loc_8c07ae94:
	#data 0x43092492
loc_8c07ae98:
	#data bank03.loc_8c034e8c
loc_8c07ae9c:
	#data 0x8c26a518
loc_8c07aea0:
	#data 0x432b6db6
loc_8c07aea4:
	#data 0xc2555555
loc_8c07aea8:
	#data 0x42555555
loc_8c07aeac:
	#data 0x8c2896b0
loc_8c07aeb0:
	#data 0xbf9a4924
loc_8c07aeb4:
	#data 0x43d8aaab

;----------------------------------------------
loc_8c07aeb8:
	mov.l @(0xF4,PC),r2
	lds r2,fpul
	fsts fpul,fr3

loc_8c07aebe:
	fmov @r8,fr2
	mov 0x34,r1
	fadd fr3,fr2
	fmov fr2,@r8
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	tst r3,r3
	bt.s loc_8c07aed4
	add r14,r1
	bra loc_8c07aed6
	mov 0x30,r3

loc_8c07aed4:
	mov 0xD0,r3

loc_8c07aed6:
	lds r3,fpul
	mov 0x09,r3
	fmov @r1,fr2
	mov 0x24,r0
	fldi0 fr4
	mov 0x04,r6
	float fpul,fr3
	mov r6,r5
	mov 0x01,r7
	fadd fr3,fr2
	fmov fr2,@r1
	mov.b r3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	mov.l @(0xBC,PC),r3
	fmov fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0xB8,PC),r2
	mov 0x17,r5
	mov 0x2D,r6
	jsr @r2
	mov r14,r4
	mov.l @(0xB4,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x01,r2
	mov.b r2,@r14
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07af18:
	mov.w @(0x8E,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14

loc_8c07af20:
	sts.l pr,@-r15
	mov.b r3,@(r0,r14)
	add 0x04,r0
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x6C,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c07af4e
	mov.l @(0x7C,PC),r3
	mova @(0x78,PC),r0
	fmov @r3,fr3
	bra loc_8c07af56
	fmov @r0,fr2

loc_8c07af4e:
	mov.l @(0x7C,PC),r2
	mova @(0x74,PC),r0
	fmov @r0,fr2
	fmov @r2,fr3

loc_8c07af56:
	fadd fr2,fr3
	mov.l @(0x74,PC),r1
	mov 0x34,r0
	fldi0 fr4
	lds r1,fpul
	mov 0x0E,r3
	mov 0x11,r5
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0x54,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	bsr loc_8c07a456
	mov r14,r4
	mov 0x13,r5
	mov 0x01,r6
	bsr loc_8c07a490
	mov r14,r4
	mov 0x13,r5
	mov 0x00,r6
	bsr loc_8c07a490
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x18,PC),r2
	mov r14,r4
	mov 0x02,r6
	mov 0x17,r5
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07afaa:
	#data 0x012c
loc_8c07afac:
	#data 0x0130
	#align4
loc_8c07afb0:
	#data 0xc3d8aaab
loc_8c07afb4:
	#data bank03.loc_8c03544c
loc_8c07afb8:
	#data bank03.loc_8c034e8c
loc_8c07afbc:
	#data bank10.loc_8c104434
loc_8c07afc0:
	#data 0xc3c80000
loc_8c07afc4:
	#data 0x8c26a5a0
loc_8c07afc8:
	#data 0x43c80000
loc_8c07afcc:
	#data 0x8c26a5a4
loc_8c07afd0:
	#data 0x43700000
loc_8c07afd4:
	#data 0x3fb33333

;==============================================
loc_8c07afd8:
	mov.w @(0x11C,PC),r0
	mov 0x01,r3
	mov 0x00,r5
	mov.b r3,@(r0,r4)
	add 0x04,r0
	mov.l @(0x14,r4),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x14,r4),r2
	fmov @(r0,r2),fr3
	mov 0x3C,r0
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x42,r6
	mov.w r0,@(0x1E,r4)
	mov 0x5C,r0
	fldi0 fr4
	mov 0x41,r3
	fmov fr4,@(r0,r4)
	mov.w @(0xE2,PC),r0
	mov.b r6,@(r0,r4)
	add 0x01,r0
	mov.b r6,@(r0,r4)
	add 0x04,r0
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov.w r5,@(r0,r4)
	add 0xF2,r0
	mov.b r5,@(r0,r4)
	add 0x26,r0
	mov.l @(0xD8,PC),r3
	mov.l r5,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x24,r0
	mov 0x0F,r2
	mov.b r2,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mova @(0xB8,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	mov.l @(0xB8,PC),r2
	mov 0x31,r6
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	jmp @r2
	mov 0x17,r5

;==============================================
loc_8c07b060:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x94,PC),r0
	mov.l @(0x18,r14),r4
	mov.l @(0xA4,PC),r1
	mov.l @(r0,r4),r5
	mov 0x00,r4
	mov.w @(0x86,PC),r0
	lds r1,fpul
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.l @(0x14,r14),r3
	mov.w @(r0,r3),r2
	mov.w r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r5),fr3
	mov 0x42,r5
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x5A,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c07b0b4
	mov.w @(0x4E,PC),r0
	mov 0x43,r3
	bra loc_8c07b0ba
	mov.b r3,@(r0,r14)

loc_8c07b0b4:
	mov.w @(0x46,PC),r0
	mov 0x44,r2
	mov.b r2,@(r0,r14)

loc_8c07b0ba:
	mov.w @(0x42,PC),r0
	mov 0x04,r6
	mov.l @(0x44,PC),r3
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	mov 0x17,r3
	extu.b r0,r0
	fldi0 fr4
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x1C,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x12,PC),r0
	mov.b r3,@(r0,r14)
	mov.b @(r0,r14),r5
	mov.l @(0x18,PC),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07b0f8:
	#data 0x012c
loc_8c07b0fa:
	#data 0x019c
loc_8c07b0fc:
	#data 0x020c
loc_8c07b0fe:
	#data 0x01a1
loc_8c07b100:
	#data 0x01ac
loc_8c07b102:
	#data 0x0159
	#align4
loc_8c07b104:
	#data 0x8c2896b0
loc_8c07b108:
	#data 0x3fb33333
loc_8c07b10c:
	#data bank03.loc_8c034e8c
loc_8c07b110:
	#data 0x42092492

;==============================================
loc_8c07b114:
	mov.w @(0x118,PC),r0
	mov 0x01,r3
	fldi0 fr4
	mov.b r3,@(r0,r4)
	add 0x04,r0
	mov.l @(0x14,r4),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x14,r4),r2
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	mov 0x0D,r3
	fmov fr3,@(r0,r4)
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mova @(0xE8,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	mov.l @(0xE0,PC),r1
	fmov fr4,@(r0,r4)
	mov 0x38,r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x23,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c07b190
	mova @(0xCC,PC),r0
	fmov @r0,fr4
	mov 0x34,r2
	mov.w @(0xBC,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c07b180
	add r4,r2
	bra loc_8c07b186
	fmov fr4,fr2

loc_8c07b180:
	mov.l @(0xBC,PC),r1
	lds r1,fpul
	fsts fpul,fr2

loc_8c07b186:
	fmov @r2,fr3
	fadd fr2,fr3
	fmov fr3,@r2
	bra loc_8c07b1b2
	mov 0x03,r6

loc_8c07b190:
	mova @(0xB0,PC),r0
	fmov @r0,fr4
	mov 0x34,r2
	mov.w @(0x98,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c07b1a4
	add r4,r2
	bra loc_8c07b1aa
	fmov fr4,fr2

loc_8c07b1a4:
	mov.l @(0xA0,PC),r1
	lds r1,fpul
	fsts fpul,fr2

loc_8c07b1aa:
	fmov @r2,fr3
	mov 0x3C,r6
	fadd fr2,fr3
	fmov fr3,@r2

loc_8c07b1b2:
	mov.l @(0x98,PC),r3
	jmp @r3
	mov 0x17,r5

;==============================================
loc_8c07b1b8:
	mov.w @(0x74,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r4)
	add 0x04,r0
	mov.l @(0x14,r4),r2
	mov.w @(r0,r2),r3
	mov.w r3,@(r0,r4)
	mov 0x34,r0
	mov.l @(0x14,r4),r2
	fmov @(r0,r2),fr3
	mov 0x34,r2
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	mov.l @(0x14,r4),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r4)
	mova @(0x6C,PC),r0
	fmov @r0,fr4
	mov.w @(0x4A,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c07b1f2
	add r4,r2
	bra loc_8c07b1f8
	fmov fr4,fr3

loc_8c07b1f2:
	mov.l @(0x60,PC),r1
	lds r1,fpul
	fsts fpul,fr3

loc_8c07b1f8:
	fmov @r2,fr2
	mov 0x38,r0
	mov.l @(0x58,PC),r1
	mov 0x0C,r3
	fadd fr3,fr2
	fldi0 fr4
	lds r1,fpul
	mov 0x37,r6
	fmov fr2,@r2
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	mov 0x68,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mova @(0x14,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	mov.l @(0x24,PC),r3
	fmov fr4,@(r0,r4)
	mov 0x54,r0
	fmov fr4,@(r0,r4)
	jmp @r3
	mov 0x17,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07b230:
	#data 0x012c
loc_8c07b232:
	#data 0x0130
	#align4
loc_8c07b234:
	#data 0x3fb33333
loc_8c07b238:
	#data 0x42bfffff
loc_8c07b23c:
	#data 0x42e00000
loc_8c07b240:
	#data 0xc2e00000
loc_8c07b244:
	#data 0xc1955555
loc_8c07b248:
	#data 0x41955555
loc_8c07b24c:
	#data bank03.loc_8c034e8c
loc_8c07b250:
	#data 0x42955555
loc_8c07b254:
	#data 0xc2955555
loc_8c07b258:
	#data 0x413fffff

;==============================================
loc_8c07b25c:
	mov.w @(0xE0,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r2
	mov r14,r4
	mov 0x17,r5
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	mov 0x0A,r3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.w @(0xB6,PC),r0
	fldi1 fr3
	fmov fr3,@(r0,r14)
	mov.l @(0x18,r14),r6
	mov.l @(0xB8,PC),r3
	mov.b @(0x7,r6),r0
	mov r0,r6
	add 0x32,r6
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c07b29c:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x9C,PC),r0
	mov 0x01,r4
	sts.l pr,@-r15
	mov.l @(0x18,r14),r5
	mov 0x34,r1
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x18,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.w @(0x7A,PC),r0
	mov.w @(r0,r2),r3
	tst r3,r3
	bt.s loc_8c07b2d4
	add r14,r1
	bra loc_8c07b2d6
	mov 0x60,r3

loc_8c07b2d4:
	mov 0xA0,r3

loc_8c07b2d6:
	lds r3,fpul
	mov 0x38,r0
	fmov @r1,fr2
	mov 0x0B,r3
	mov.w @(0x64,PC),r2
	float fpul,fr3
	add r2,r5
	fadd fr3,fr2
	fmov fr2,@r1
	mov.l @(0x64,PC),r1
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x1,r5)
	mova @(0x54,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	mov.l @(0x50,PC),r4
	mov 0x19,r5
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x2C,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r1
	extu.b r1,r1
	shll r1
	add r1,r4
	mov.w @r4,r0
	mov.w r0,@(0x1C,r14)
	bsr loc_8c07a456
	mov r14,r4
	mov.w @(0x1A,PC),r0
	mov 0x17,r2
	mov.l @(0x18,PC),r3
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x3A,r6
	lds.l @r15+,pr
	mov.b @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07b340:
	#data 0x012c
loc_8c07b342:
	#data 0x0108
loc_8c07b344:
	#data 0x0130
loc_8c07b346:
	#data 0x02a4
loc_8c07b348:
	#data 0x01a3
loc_8c07b34a:
	#data 0x0159
loc_8c07b34c:
	#data bank03.loc_8c034e8c
loc_8c07b350:
	#data 0x41a00000
loc_8c07b354:
	#data 0x3fc00000
loc_8c07b358:
	#data bank15.loc_8c153c14

;==============================================
loc_8c07b35c:
	mov.w @(0x160,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x164,PC),r1
	mov.l @(0x18,r14),r4
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x14,r14),r2
	lds r1,fpul
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x130,PC),r0
	mov.l @(0x14,r14),r3
	mov.w @(r0,r3),r2
	mov 0x0A,r3
	mov.w r2,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x124,PC),r0
	mov 0x42,r4
	mov 0x40,r3
	fldi0 fr4
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r4
	mov.l @(0x11C,PC),r3
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
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x21,r0
	mov.b r4,@(r0,r14)
	mov.l @(0xF8,PC),r4
	mov.w @(0xE6,PC),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r1
	extu.b r1,r1
	shll r1
	add r1,r4
	mov.w @r4,r0
	mov.l @(0xEC,PC),r4
	mov.w r0,@(0x1C,r14)
	mov 0x5A,r0
	mov.w r0,@(0x1E,r14)
	mov 0x23,r0
	mov.b @(r0,r14),r2
	mov 0x5C,r0
	extu.b r2,r2
	shll2 r2
	shll2 r2
	add r2,r4
	fmov @r4,fr2
	fmov fr2,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r4),fr2
	mov 0x68,r0
	fmov fr2,@(r0,r14)
	mov 0x08,r0
	fmov @(r0,r4),fr2
	mov 0x60,r0
	fmov fr2,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r4),fr2
	mov 0x6C,r0
	fmov fr2,@(r0,r14)
	mova @(0xBC,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x96,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c07b436
	mov 0x5C,r0
	bra loc_8c07b43c
	fmov @(r0,r14),fr2

loc_8c07b436:
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fneg fr2

loc_8c07b43c:
	mov 0x5C,r0
	fmov fr2,@(r0,r14)
	mov.w @(0x7E,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c07b450
	mov 0x68,r0
	fmov @(r0,r14),fr3
	bra loc_8c07b454
	fneg fr3

loc_8c07b450:
	mov 0x68,r0
	fmov @(r0,r14),fr3

loc_8c07b454:
	mov 0x68,r0
	mov r14,r4
	fmov fr3,@(r0,r14)
	mov 0x17,r3
	mov.w @(0x68,PC),r0
	mov 0x39,r6
	mov.b r3,@(r0,r14)
	mov.l @(0x7C,PC),r3
	mov.b @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c07b46a:
	mov.w @(0x52,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x14,r14),r2
	fldi0 fr4
	fmov @(r0,r2),fr3
	mov.l @(0x64,PC),r4
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	mov 0x09,r3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x24,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	extu.b r2,r2
	shll r2
	add r2,r4
	mov.w @r4,r0
	mov 0x17,r3
	mov 0x38,r6
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	mov.w @(0x10,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0x24,PC),r3
	mov.b @(r0,r14),r5
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07b4c0:
	#data 0x012c
loc_8c07b4c2:
	#data 0x0130
loc_8c07b4c4:
	#data 0x019c
loc_8c07b4c6:
	#data 0x01a3
loc_8c07b4c8:
	#data 0x0159
	#align4
loc_8c07b4cc:
	#data 0x42092492
loc_8c07b4d0:
	#data 0x8c2896b0
loc_8c07b4d4:
	#data bank15.loc_8c153c3c
loc_8c07b4d8:
	#data bank15.loc_8c153c44
loc_8c07b4dc:
	#data 0x3ecccccd
loc_8c07b4e0:
	#data bank03.loc_8c034e8c
loc_8c07b4e4:
	#data bank15.loc_8c153c14

;==============================================
loc_8c07b4e8:
	mov.w @(0x12E,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	mov.l @(0x14,r14),r2
	mov.l @(0x134,PC),r4
	fmov @(r0,r2),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	mov.l @(0x14,r14),r3
	fmov @(r0,r3),fr3
	mov 0x09,r3
	fmov fr3,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mova @(0x114,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov.w @(0xF0,PC),r0
	mov 0x3B,r6
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r2
	mov 0x17,r3
	extu.b r2,r2
	shll r2
	add r2,r4
	mov.w @r4,r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	mov.w @(0xDC,PC),r0
	mov.b r3,@(r0,r14)
	mov.b @(r0,r14),r5
	mov.l @(0xE8,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c07b54a:
	mov 0x20,r0
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(0xE0,PC),r0
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c07b55e:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.l @(0xCC,PC),r1
	mov.l r3,@r15
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xA4,PC),r3
	mov.l @r15,r4
	add r3,r4
	mov.b @(0x1,r4),r0
	tst r0,r0
	bt loc_8c07b592
	mov.b @(0x4,r14),r0
	mov 0x00,r5
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x8A,PC),r0
	mov.b r5,@(r0,r14)
	mov.b r5,@r4

loc_8c07b592:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07b59a:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(0x5,r4),r0
	tst r0,r0
	bt loc_8c07b5b6
	mov 0x02,r0
	mov.b r0,@(0x5,r14)
	mov 0x0A,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c07b5b6:
	mov.l @(0x84,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x62,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c07b5d8
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x74,PC),r3
	mov 0x00,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x01,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c07b5d8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07b5de:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(0x5,r4),r0
	tst r0,r0
	bt loc_8c07b5fa
	mov 0x02,r0
	mov.b r0,@(0x5,r14)
	mov 0x0A,r0
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c07b5fa:
	mov.l @(0x40,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x20,PC),r0
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_8c07b614
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x6,PC),r0
	mov.b r3,@(r0,r14)

loc_8c07b614:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07b61a:
	#data 0x012c
loc_8c07b61c:
	#data 0x01a3
loc_8c07b61e:
	#data 0x0159
loc_8c07b620:
	#data 0x02a4
loc_8c07b622:
	#data 0x0141
loc_8c07b624:
	#data 0x0143
	#align4
loc_8c07b628:
	#data 0x3fc00000
loc_8c07b62c:
	#data bank15.loc_8c153c14
loc_8c07b630:
	#data bank03.loc_8c034e8c
loc_8c07b634:
	#data bank15.loc_8c153e24
loc_8c07b638:
	#data bank15.loc_8c153e8c
loc_8c07b63c:
	#data bank03.loc_8c034dee
loc_8c07b640:
	#data loc_8c07a490

;==============================================
loc_8c07b644:
	mov.l @(0x13C,PC),r1
	mov.w @(0x12C,PC),r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	mov.w @(0x124,PC),r6
	fsts fpul,fr3
	fsub fr3,fr2
	mov.l @(0x18,r4),r5
	fmov fr2,@(r0,r4)
	fmov @(r0,r4),fr1
	fldi0 fr2
	fcmp/gt fr1,fr2
	bf.s loc_8c07b662
	add r5,r6
	fmov fr2,@(r0,r4)

loc_8c07b662:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	add 0x01,r0
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c07b67e
	mov.b @(0x4,r4),r0
	mov 0x00,r5
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xFC,PC),r0
	mov.b r5,@(r0,r4)
	mov.b r5,@r6

loc_8c07b67e:
	rts
	nop

;==============================================
loc_8c07b682:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x100,PC),r1
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	mov.l @(0x18,r14),r13
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov r13,r5
	mov.w @(0xD6,PC),r4
	add r13,r4
	mov.b @(0x1,r4),r0
	tst r0,r0
	bt loc_8c07b6b2
	mov.b @(0x4,r14),r0
	mov 0x00,r5
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xC8,PC),r0
	mov.b r5,@(r0,r14)
	mov.b r5,@r4

loc_8c07b6b2:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07b6ba:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x50,r0
	mov r4,r14
	fldi1 fr4
	mov.l r5,@r15
	fmov @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c07b6d8
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	bra loc_8c07b6ec
	fmov fr4,@(r0,r14)

loc_8c07b6d8:
	mova @(0xB0,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r14)

loc_8c07b6ec:
	mov.w @(0x8A,PC),r0
	mov.l @(0xA0,PC),r13
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c07b798
	mov.w @(0x82,PC),r0
	mov.l @(r0,r14),r4
	mov.b @(0x3,r4),r0
	tst r0,r0
	bf loc_8c07b75e
	mov.w @(0x7A,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c07b75e
	mov.w @(0x6E,PC),r0
	mov.b @(r0,r14),r0
	tst 0x01,r0
	bf loc_8c07b75e
	mov.w @(0x6C,PC),r5
	mov 0x00,r1
	mov.l @(0x7C,PC),r3
	add r4,r5
	mov.l @r5,r2
	and r3,r2
	or r1,r2
	tst r2,r2
	bf loc_8c07b75e
	mov 0x04,r0
	fldi0 fr4
	mov.b r0,@(0x5,r14)
	mov 0x23,r2
	mov.w @(0x4A,PC),r0
	add r14,r2
	mov 0x17,r5
	mov.w r0,@(0x1C,r14)
	mov 0x5A,r0
	mov.w r0,@(0x1E,r14)
	mov 0x1D,r6
	mov.b @(0x1,r4),r0
	mov.b r0,@r2
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	jsr @r13
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c07ba34
	mov.l @r15+,r14

loc_8c07b75e:
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov 0x1D,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x28,r0
	mov.w r0,@(0x1C,r14)
	jsr @r13
	mov r14,r4
	bra loc_8c07b846
	nop

;##############################################
loc_8c07b774:
	#data 0x02a4
loc_8c07b776:
	#data 0x0108
loc_8c07b778:
	#data 0x012c
loc_8c07b77a:
	#data 0x019e
loc_8c07b77c:
	#data 0x01b0
loc_8c07b77e:
	#data 0x0411
loc_8c07b780:
	#data 0x0414
	#align4
loc_8c07b784:
	#data 0x3d75c28f
loc_8c07b788:
	#data bank15.loc_8c153e98
loc_8c07b78c:
	#data 0x3d23d70a
loc_8c07b790:
	#data bank03.loc_8c034e8c
loc_8c07b794:
	#data 0x07000000

;---------------------------------------------
loc_8c07b798:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07b7b4
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov 0x01,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r13
	mov r14,r4

loc_8c07b7b4:
	mov.l @(0xF4,PC),r3
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
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	mova @(0xB4,PC),r0
	mov.l @(0xC0,PC),r2
	fmov @r0,fr2
	mova @(0xB0,PC),r0
	fmov @r0,fr1
	mova @(0xB0,PC),r0
	fmul fr2,fr3
	fmov @r0,fr0
	mov.l @(0xB0,PC),r3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mova @(0xA8,PC),r0
	fmov fr0,fr4
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmul fr3,fr4
	fadd fr4,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0xFA,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf.s loc_8c07b83a
	mov r14,r4
	mov.w @(0x6C,PC),r0
	mov.w r0,@(0x1E,r14)

loc_8c07b83a:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x88,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c07b846:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07b850:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x50,r0
	fldi1 fr4
	sts.l pr,@-r15
	fmov @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf.s loc_8c07b86a
	mov r14,r4
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	bra loc_8c07b87e
	fmov fr4,@(r0,r14)

loc_8c07b86a:
	mova @(0x60,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r14)

loc_8c07b87e:
	mov.l @(0x2C,PC),r3
	jsr @r3
	nop
	mov.w @(0x20,PC),r0
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_8c07b8a0
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x3C,PC),r3
	mov 0x1E,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x17,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c07b8a0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07b8a6:
	#data 0x0168
loc_8c07b8a8:
	#data 0x0143
	#align4
loc_8c07b8ac:
	#data bank03.loc_8c034dee
loc_8c07b8b0:
	#data 0x47800000
loc_8c07b8b4:
	#data 0x43b40000
loc_8c07b8b8:
	#data 0x3f000000
loc_8c07b8bc:
	#data 0x0000ffff
loc_8c07b8c0:
	#data bank11.loc_8c11e860
loc_8c07b8c4:
	#data 0x40a00000
loc_8c07b8c8:
	#data bank04.loc_8c045748
loc_8c07b8cc:
	#data 0x3d23d70a
loc_8c07b8d0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c07b8d4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x12A,PC),r3
	mov r4,r14
	add r5,r3
	mov.l r3,@r15
	mov.l @(0x12C,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x128,PC),r1
	mov 0x50,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	fmov @(r0,r14),fr1
	fldi0 fr2
	fcmp/gt fr2,fr1
	bt loc_8c07b900
	fmov fr2,@(r0,r14)

loc_8c07b900:
	mov.w @(0x106,PC),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8c07b918
	mov.b @(0x4,r14),r0
	mov 0x00,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xF8,PC),r0
	mov.b r4,@(r0,r14)
	mov.l @r15,r3
	mov.b r4,@r3

loc_8c07b918:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07b920:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x50,r0
	mov r4,r14
	fldi1 fr4
	mov.w @(0xD8,PC),r3
	add r5,r3
	mov.l r3,@r15
	fmov @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf.s loc_8c07b942
	mov r14,r4
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	bra loc_8c07b956
	fmov fr4,@(r0,r14)

loc_8c07b942:
	mova @(0xD4,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r14)

loc_8c07b956:
	mov.l @(0xB8,PC),r3
	jsr @r3
	nop
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07b982
	mov.b @(0x4,r14),r0
	mov 0x00,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x96,PC),r0
	mov.b r4,@(r0,r14)
	mov.l @r15,r3
	mov.b r4,@r3
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8c07b982:
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
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	mova @(0x58,PC),r0
	mov.l @(0x64,PC),r2
	fmov @r0,fr2
	mova @(0x54,PC),r0
	fmov @r0,fr1
	mova @(0x54,PC),r0
	fmul fr2,fr3
	fmov @r0,fr0
	mov.l @(0x54,PC),r3
	fdiv fr1,fr3
	fadd fr0,fr3
	ftrc fr3,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mova @(0x4C,PC),r0
	fmov fr0,fr4
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmul fr3,fr4
	fadd fr4,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0xFA,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07ba00
	mov.w @(0xE,PC),r0
	mov.w r0,@(0x1E,r14)

loc_8c07ba00:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07ba08:
	#data 0x02a4
loc_8c07ba0a:
	#data 0x0143
loc_8c07ba0c:
	#data 0x012c
loc_8c07ba0e:
	#data 0x0168
	#align4
loc_8c07ba10:
	#data bank03.loc_8c034dee
loc_8c07ba14:
	#data 0x3d4ccccd
loc_8c07ba18:
	#data 0x3d23d70a
loc_8c07ba1c:
	#data 0x47800000
loc_8c07ba20:
	#data 0x43b40000
loc_8c07ba24:
	#data 0x3f000000
loc_8c07ba28:
	#data 0x0000ffff
loc_8c07ba2c:
	#data bank11.loc_8c11e860
loc_8c07ba30:
	#data 0x40a00000

;==============================================
loc_8c07ba34:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(0xC6,PC),r0
	mov r5,r13
	mov 0x01,r3
	mov r4,r14
	mov 0x09,r2
	mov.l r5,@r15
	mov.l @(r0,r13),r13
	mov.w @(0xBA,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x24,r0
	mov.l @(0xC4,PC),r3
	mov.b r2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0xAE,PC),r0
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c07ba90
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bt loc_8c07ba90
	mov.w @(0x98,PC),r0
	mov.l @(r0,r14),r4
	mov.w @(0x96,PC),r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c07ba90
	mov.w @(0x90,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c07ba90
	mov.w @(0x88,PC),r0
	mov.l @r15,r2
	mov.w @(r0,r2),r3
	tst r3,r3
	bf loc_8c07baac

loc_8c07ba90:
	mov 0x01,r0
	mov r14,r4
	mov.b r0,@(0x5,r14)
	mov 0x1E,r0
	mov 0x17,r5
	mov.w r0,@(0x1C,r14)
	mov 0x1D,r6
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @(0x78,PC),r3
	mov.l @r15+,r8
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c07baac:
	mov 0x50,r0
	fldi1 fr4
	fmov @(r0,r14),fr3
	fcmp/gt fr4,fr3
	bf loc_8c07babe
	fmov fr4,@(r0,r14)
	mov 0x54,r0
	bra loc_8c07bad2
	fmov fr4,@(r0,r14)

loc_8c07babe:
	mova @(0x60,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fadd fr4,fr2
	fmov fr2,@(r0,r14)

loc_8c07bad2:
	mov.w @(0x1C,r14),r0
	mov.l @(0x4C,PC),r3
	mov r0,r1
	jsr @r3
	mov 0x0A,r0
	tst r0,r0
	bf loc_8c07bae8
	mov.l @(0x44,PC),r3
	mov 0xFE,r5
	jsr @r3
	mov r13,r4

loc_8c07bae8:
	mov.w @(0x28,PC),r0
	mov.w @(r0,r13),r2
	mov.w r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov r0,r8
	fmov fr3,@(r0,r14)
	mov.w @(0x1A,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c07bb30
	add r14,r8
	mov.l @(0x28,PC),r1
	lds r1,fpul
	bra loc_8c07bb36
	fsts fpul,fr3

;##############################################
loc_8c07bb08:
	#data 0x020c
loc_8c07bb0a:
	#data 0x012c
loc_8c07bb0c:
	#data 0x019f
loc_8c07bb0e:
	#data 0x01b0
loc_8c07bb10:
	#data 0x0411
loc_8c07bb12:
	#data 0x0420
loc_8c07bb14:
	#data 0x0130
	#align4
loc_8c07bb18:
	#data bank03.loc_8c034dee
loc_8c07bb1c:
	#data bank03.loc_8c034e8c
loc_8c07bb20:
	#data 0x3d23d70a
loc_8c07bb24:
	#data bank12.loc_8c1292d4
loc_8c07bb28:
	#data bank05.loc_8c056de4
loc_8c07bb2c:
	#data 0xc2555555

;----------------------------------------------
loc_8c07bb30:
	mov.l @(0xBC,PC),r2
	lds r2,fpul
	fsts fpul,fr3

loc_8c07bb36:
	fmov @r8,fr2
	mova @(0xB8,PC),r0
	mov.l @(0xCC,PC),r2
	fadd fr3,fr2
	fmov fr2,@r8
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	mov r0,r3
	lds r3,fpul
	mova @(0xA0,PC),r0
	mov.l @(0xA8,PC),r3
	fmov @r0,fr1
	mova @(0x9C,PC),r0
	float fpul,fr2
	fmov @r0,fr0
	mova @(0x9C,PC),r0
	fmov @r0,fr3
	fmul fr1,fr2
	fdiv fr0,fr2
	fadd fr3,fr2
	ftrc fr2,fpul
	sts fpul,r4
	jsr @r2
	and r3,r4
	mova @(0x94,PC),r0
	fmov fr0,fr4
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fmul fr3,fr4
	fadd fr4,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0xFD,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07bb94
	mov.w @(0x58,PC),r0
	mov.w r0,@(0x1E,r14)

loc_8c07bb94:
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07bba0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x68,PC),r1
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	nop
	mov.b @(0x1,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2
	mov.b @(0x1,r3),r0
	cmp/eq r0,r2
	bt loc_8c07bbca
	lds.l @r15+,pr
	mov.l @(0x50,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c07bbca:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07bbd0:
	mov.w @(0x1A,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	fmov fr15,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r0
	cmp/eq 0x01,r0
	bf loc_8c07bc1c
	lds.l @r15+,pr
	mov.l @(0x34,PC),r2
	mov r14,r4
	fmov @r15+,fr15
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07bbec:
	#data 0x0168
loc_8c07bbee:
	#data 0x0141
	#align4
loc_8c07bbf0:
	#data 0x42555555
loc_8c07bbf4:
	#data 0x42892492
loc_8c07bbf8:
	#data 0x47800000
loc_8c07bbfc:
	#data 0x43b40000
loc_8c07bc00:
	#data 0x3f000000
loc_8c07bc04:
	#data 0x0000ffff
loc_8c07bc08:
	#data bank11.loc_8c11e860
loc_8c07bc0c:
	#data 0x422b6db6
loc_8c07bc10:
	#data bank15.loc_8c153eac
loc_8c07bc14:
	#data loc_8c07e6ec
loc_8c07bc18:
	#data bank03.loc_8c034dee

;==============================================
loc_8c07bc1c:
	mov.l @(0x98,PC),r3
	mov.l @(0x9C,PC),r2
	mov.l @r3,r1
	mov.l @(0x1C,r1),r1
	jsr @r2
	mov 0x0E,r0
	tst r0,r0
	bf loc_8c07bc68
	mov 0x23,r0
	mov.b @(r0,r14),r2
	mov 0x03,r1
	extu.b r2,r2
	cmp/gt r1,r2
	bt loc_8c07bc68
	mov.w @(0x78,PC),r0
	mov 0x42,r4
	mov 0x3F,r3
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r4
	mov.l @(0x70,PC),r3
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

loc_8c07bc68:
	mov.l @(0x58,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x58,PC),r1
	mov 0x54,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fldi1 fr15
	fsts fpul,fr3
	fadd fr3,fr2
	fcmp/gt fr2,fr15
	bt.s loc_8c07bc92
	fmov fr2,@(r0,r14)
	mov.b @(0x5,r14),r0
	mov 0x03,r5
	mov.l @(0x44,PC),r3
	mov 0x00,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4

loc_8c07bc92:
	mov.l @(0x24,PC),r3
	mov 0x50,r0
	fmov fr15,@(r0,r14)
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bf.s loc_8c07bcaa
	mov r14,r4
	mova @(0x2C,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)

loc_8c07bcaa:
	lds.l @r15+,pr
	mov.l @(0x24,PC),r3
	fmov @r15+,fr15
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07bcb4:
	#data 0x019c
	#align4
loc_8c07bcb8:
	#data 0x8c26823c
loc_8c07bcbc:
	#data bank12.loc_8c1292d4
loc_8c07bcc0:
	#data 0x8c2896b0
loc_8c07bcc4:
	#data bank03.loc_8c034dee
loc_8c07bcc8:
	#data 0x3e4ccccd
loc_8c07bccc:
	#data loc_8c07a490
loc_8c07bcd0:
	#data 0x3f4ccccd
loc_8c07bcd4:
	#data bank04.loc_8c045748

;==============================================
loc_8c07bcd8:
	mov.l @(0x134,PC),r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @r3,r1
	mov.l @(0x130,PC),r2
	mov.l @(0x1C,r1),r1
	jsr @r2
	mov 0x0E,r0
	tst r0,r0
	bf loc_8c07bd2a
	mov 0x23,r0
	mov.b @(r0,r14),r2
	mov 0x03,r1
	extu.b r2,r2
	cmp/gt r1,r2
	bt loc_8c07bd2a
	mov.w @(0x10E,PC),r0
	mov 0x42,r4
	mov 0x3F,r3
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r4
	mov.l @(0x108,PC),r3
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

loc_8c07bd2a:
	mov.l @(0xF0,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0xEC,PC),r1
	mov 0x54,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fldi1 fr4
	fsts fpul,fr3
	fadd fr3,fr2
	fcmp/gt fr2,fr4
	bt.s loc_8c07bd4a
	fmov fr2,@(r0,r14)
	mov 0x24,r0
	mov 0x0B,r2
	mov.b r2,@(r0,r14)

loc_8c07bd4a:
	fldi1 fr3
	fadd fr3,fr3
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_8c07bd72
	fldi0 fr2
	mov 0x0A,r3
	fmov fr2,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bf loc_8c07bd72
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c07bd72:
	mov.l @(0x9C,PC),r3
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bf.s loc_8c07bd8a
	mov r14,r4
	mova @(0xA0,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)

loc_8c07bd8a:
	lds.l @r15+,pr
	mov.l @(0x98,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c07bd92:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x5,r14),r0
	mov.l @(0x90,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c07bda4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x70,PC),r3
	jsr @r3
	mov r4,r14
	mov.l @(0x70,PC),r1
	mov 0x54,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fldi1 fr4
	fsts fpul,fr3
	fadd fr3,fr2
	fcmp/gt fr2,fr4
	bt.s loc_8c07bdc8
	fmov fr2,@(r0,r14)
	mov 0x24,r0
	mov 0x0B,r2
	mov.b r2,@(r0,r14)

loc_8c07bdc8:
	fldi1 fr3
	fadd fr3,fr3
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_8c07bdf0               ;8c07bde4+0xc
	fldi0 fr2
	mov 0x0A,r3
	fmov fr2,@(r0,r14)
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bf loc_8c07bdf0
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8c07bdf0:
	mov.l @(0x1C,PC),r3
	mov 0x50,r0
	fmov fr4,@(r0,r14)
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bf loc_8c07be06
	mova @(0x24,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)

loc_8c07be06:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07be0c:
	#data 0x019c
	#align4
loc_8c07be10:
	#data 0x8c26823c
loc_8c07be14:
	#data bank12.loc_8c1292d4
loc_8c07be18:
	#data 0x8c2896b0
loc_8c07be1c:
	#data bank03.loc_8c034dee
loc_8c07be20:
	#data 0x3e4ccccd
loc_8c07be24:
	#data 0x3f4ccccd
loc_8c07be28:
	#data bank04.loc_8c045748
loc_8c07be2c:
	#data bank15.loc_8c153eb4

;==============================================
loc_8c07be30:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.l r3,@r15
	mov.l @(0xC0,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xB4,PC),r0
	fldi0 fr2
	fmov @(r0,r14),fr3
	fcmp/eq fr2,fr3
	bt loc_8c07be58
	mov.l @(0xB4,PC),r1
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c07be58:
	mov.l @(0xAC,PC),r1
	mov 0x50,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	fmov @(r0,r14),fr1
	fldi0 fr2
	fcmp/gt fr2,fr1
	bt loc_8c07be76
	mova @(0x9C,PC),r0
	fmov @r0,fr1
	mov 0x50,r0
	fmov fr1,@(r0,r14)

loc_8c07be76:
	mov.l @(0x98,PC),r1
	mov 0x54,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	fldi1 fr2
	fadd fr2,fr2
	fmov @(r0,r14),fr1
	fcmp/gt fr1,fr2
	bt.s loc_8c07bea8
	fldi1 fr3
	mov.b @(0x4,r14),r0
	mov 0x00,r2
	mov.w @(0x64,PC),r3
	add 0x01,r0
	fldi0 fr1
	mov.b r0,@(0x4,r14)
	mov 0x54,r0
	fmov fr1,@(r0,r14)
	mov 0x14,r0
	mov.l @r15,r4
	add r3,r4
	mov.b r2,@(r0,r4)

loc_8c07bea8:
	mov.l @(0x68,PC),r3
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bf loc_8c07bebe
	mova @(0x60,PC),r0
	fmov @r0,fr3
	mov 0x50,r0
	fmov fr3,@(r0,r14)

loc_8c07bebe:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8c07bec6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x50,PC),r1
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	mov.l @(0x18,r14),r5
	extu.b r0,r0
	mov.w @(0x26,PC),r6
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	add r14,r6
	mov.b @(0x1,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2
	mov.b @(0x1,r3),r0
	cmp/eq r0,r2
	bt loc_8c07bef4
	lds.l @r15+,pr
	mov.l @(0x30,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c07bef4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07befa:
	#data 0x0108
loc_8c07befc:
	#data 0x02a4
loc_8c07befe:
	#data 0x0088
	#align4
loc_8c07bf00:
	#data bank03.loc_8c034dee
loc_8c07bf04:
	#data 0x3d75c28f
loc_8c07bf08:
	#data 0x3da3d70a
loc_8c07bf0c:
	#data 0x3ca3d70a
loc_8c07bf10:
	#data 0x3e4ccccd
loc_8c07bf14:
	#data 0x8c26823c
loc_8c07bf18:
	#data 0x3f4ccccd
loc_8c07bf1c:
	#data bank15.loc_8c153ebc
loc_8c07bf20:
	#data loc_8c07e6ec

;==============================================
loc_8c07bf24:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x106,PC),r0
	mov r5,r13
	mov r4,r14
	mov.l @(r0,r13),r3
	mov.w @(0x100,PC),r0
	mov.l r3,@r15
	mov.b @(r0,r14),r4
	cmp/pz r4
	bt.s loc_8c07bfc2
	mov r6,r12
	mov.w @(0xF6,PC),r2
	tst r4,r2
	bt loc_8c07bfc2
	mov.b @(r0,r14),r2
	mov 0x80,r3
	mov r13,r5
	mov r12,r6
	or r3,r2
	mov.b r2,@(r0,r14)
	bsr loc_8c07c16c
	mov r14,r4
	mov.l @(0x4,r12),r3
	tst r3,r3
	bt loc_8c07bfbc
	mov.b @(0x5,r14),r0
	mov r13,r5
	mov r12,r6

loc_8c07bf64:
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	bsr loc_8c07c194
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
	mova @(0xC4,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov.w @(0xB6,PC),r1
	mov 0x17,r5
	fmov fr3,@(r0,r14)
	mov.w @(0xB0,PC),r0
	add r14,r1
	mov.w @(r0,r13),r0
	xor 0x01,r0
	mov.w r0,@r1
	mov.l @r15,r3
	mov.l @(0xB0,PC),r1
	mov.b @(0x1,r3),r0
	extu.b r0,r0
	mov.b @(r0,r1),r3
	mov.b r3,@r15
	mov.b @r15,r6
	mov.l @(0xA8,PC),r3
	add 0x25,r6
	jsr @r3
	mov r14,r4
	mov r14,r4
	mov r13,r5
	mov r12,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c07c1e0
	mov.l @r15+,r14

loc_8c07bfbc:
	mov 0x03,r0
	bra loc_8c07c02c
	mov.b r0,@(0x5,r14)

loc_8c07bfc2:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07bfde
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x64,PC),r0
	bra loc_8c07c02c
	mov.b r3,@(r0,r14)

loc_8c07bfde:
	mov 0x5C,r1
	mov.l @(0x6C,PC),r3
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
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x30,PC),r2
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8c07c02c:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07c038:
	#data 0x020c
loc_8c07c03a:
	#data 0x019e
loc_8c07c03c:
	#data 0x0080
loc_8c07c03e:
	#data 0x0130
loc_8c07c040:
	#data 0x012c
	#align4
loc_8c07c044:
	#data 0xbecdb6db
loc_8c07c048:
	#data bank15.loc_8c153ca4
loc_8c07c04c:
	#data bank03.loc_8c034e8c
loc_8c07c050:
	#data bank03.loc_8c034dee
loc_8c07c054:
	#data bank04.loc_8c045748

;==============================================
loc_8C07C058:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8c07c1b6,pc),r0
	mov r4,r14
	mov 0x5C,r1
	mov.l @(r0,r5),r4
	add r14,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x68,r1
	add r14,r1
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
	mov.w @(loc_8C07C1B8,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fcmp/gt fr2,fr3
	bf loc_8C07C0Ee
	mov.b @(0x05,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C07C1BC,pc),r1 ; r1 set to 0x130
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x05,r14)
	mov 0x14,r0 ; r0 set to 0x14
	mov.w r0,@(0x1E,r14)
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C07C1B8,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C07C1BA,pc),r0 ; r0 set to 0x1F9
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C07C1BC,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	mov 0x17,r5 ; r5 set to 0x17
	xor 0x01,r0
	mov.w r0,@r1
	mov.b @(0x01,r4),r0
	mov.l @(loc_8C07C1C8,pc),r1 ; r1 set to 0x8C153CA4
	extu.b r0,r0
	mov.b @(r0,r1),r3
	mov.b r3,@r15
	mov.b @r15,r6
	mov.l @(loc_8C07C1CC,pc),r3 ; r3 set to 0x8C034E8c
	add 0x25,r6
	jsr @r3
	mov r14,r4
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C07C1D0,pc),r2 ; r2 set to 0x8C034DEe
	jmp @r2
	mov.l @r15+,r14

loc_8C07C0EE:
	mov 0x02,r0 ; r0 set to 0x02
	mov r14,r4
	mov.w r0,@(0x1E,r14)
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C07C222
	mov.l @r15+,r14

;==============================================
loc_8C07C0FC:
	mov.w @(loc_8c07c1b6,pc),r0
	mov.l @(r0,r5),r7
	mov 0x38,r0
	fmov.s @(r0,r4),fr3
	mov.w @(loc_8C07C1B8,pc),r0 ; r0 set to 0x41C
	fmov.s @(r0,r5),fr2
	mov 0x38,r0 ; r0 set to 0x38
	fadd fr3,fr2
	fmov.s @(r0,r7),fr3
	fsub fr3,fr2
	bra loc_8C07C222
	fmov.s fr2,@(r0,r4)

loc_8C07C114:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8C07C130
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C07C1BE,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;==============================================
loc_8C07C130:
	mov 0x5C,r1 ; r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r4,r1 ; r1 ??? bc r4 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x60,r1
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6C
	add r4,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	rts
	nop

;==============================================
loc_8c07c16c:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x60,PC),r3
	mov.l r4,@r15
	mov.l r6,@(0x4,r15)
	jsr @r3
	mov.l @r15,r4
	tst r0,r0
	bt loc_8c07c18c
	mov.l @(0x58,PC),r3
	mov 0x24,r5
	jsr @r3
	mov.l @r15,r4
	mov.l @(0x4,r15),r2
	mov 0x01,r3
	mov.l r3,@(0x4,r2)

loc_8c07c18c:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C07C194:
	mov.w @(loc_8C07C1C0,pc),r0 ; r0 set to 0x1B0
	mov.l r14,@-r15
	mov.w @(loc_8C07C1C2,pc),r3 ; r3 set to 0xC2
	sts.l pr,@-r15
	mov.l @(r0,r4),r14
	add 0x47,r0 ; r0 set to 0x1F7
	mov.b r3,@(r0,r14)
	mov.b r3,@(r0,r5)
	mov.l @(loc_8C07C1DC,pc),r3 ; r3 set to 0x8C05248e
	jsr @r3
	mov r14,r5
	mov.w @(loc_8C07C1C4,pc),r0 ; r0 set to 0x1F6
	mov 0x06,r2 ; r2 set to 0x06
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------

loc_8C07C1B6:
#data 0x01C8

loc_8C07C1B8:
#data 0x041c

loc_8C07C1BA:
#data 0x01F9

loc_8C07C1BC:
#data 0x0130

loc_8C07C1BE:
#data 0x012c

loc_8C07C1C0:
#data 0x01B0

loc_8C07C1C2:
#data 0x00C2

loc_8C07C1C4:
#data 0x01F6
#data 0x0000

#align4
loc_8C07C1C8:
#data bank15.loc_8c153CA4

loc_8C07C1CC:
#data bank03.loc_8c034e8c

loc_8C07C1D0:
#data bank03.loc_8c034dee

loc_8C07C1D4:
#data bank05.loc_8c05264c

loc_8C07C1D8:
#data bank04.loc_8c042008

loc_8C07C1DC:
#data bank05.loc_8c05248e

;==============================================
loc_8C07C1E0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x04,r6),r3
	tst r3,r3
	bt/s loc_8C07C218
	mov r4,r14
	mov.w @(loc_8C07C2FA,pc),r0 ; r0 set to 0x20c
	mov.l @(r0,r5),r3
	mov.w @(loc_8C07C2FC,pc),r0 ; r0 set to 0x1Cc
	mov.l r3,@r15
	mov.l @(r0,r14),r2
	mov.l @(r0,r2),r3
	cmp/eq r14,r3
	bt loc_8C07C218
	mov.l @(loc_8C07C308,pc),r3 ; r3 set to 0x8C05218a
	jsr @r3
	mov.l @r15,r4
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0 ; r0 set to 0x1Cd
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C07C2FE,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C07C218:
	mov.l @(0x04,r6),r0
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C07C222:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r6,r3
	mov.l r6,@r15
	mov.l @(0x04,r3),r2
	tst r2,r2
	bt/s loc_8C07C2B8
	mov r4,r14
	mov.w @(loc_8C07C2FA,pc),r0 ; r0 set to 0x20c
	mov.l @(loc_8C07C308,pc),r11 ; r11 set to 0x8C05218a
	mov.l @(r0,r5),r13
	add 0xC0,r0 ; r0 set to 0x1Cc
	mov.l @(r0,r14),r3
	mov.l @(r0,r3),r2
	cmp/eq r14,r2
	bt/s loc_8C07C25c
	mov 0x00,r12 ; r12 set to 0x00
	jsr @r11
	mov r13,r4
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x1Cd
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C07C2FE,pc),r0 ; r0 set to 0x12c
	bra loc_8C07C2Bc
	mov.b r12,@(r0,r14)

loc_8C07C25c:
	mov.l @(loc_8C07C30C,pc),r3 ; r3 set to 0x8C04CC1c
	mov r13,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C07C300,pc),r0 ; r0 set to 0x19f
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8C07C282
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x1A0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C07C2FE,pc),r0 ; r0 set to 0x12c
	mov.b r12,@(r0,r14)
	mov.w @(loc_8C07C302,pc),r0 ; r0 set to 0x1F6
	mov.b r12,@(r0,r13)
	jsr @r11
	mov r13,r4
	bra loc_8C07C2Bc
	nop

loc_8C07C282:
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	add 0x01,r0
	exts.w r0,r0
	cmp/pl r0
	bt loc_8C07C2B8
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C07C2FE,pc),r0 ; r0 set to 0x12c
	mov.b r12,@(r0,r14)
	jsr @r11
	mov r13,r4
	mov.w @(loc_8C07C304,pc),r0 ; r0 set to 0x420
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8C07C2Bc
	mov r13,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C07C310,pc),r3 ; r3 set to 0x8C051648
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C07C2B8:
	mov.l @r15,r0
	mov.l @(0x04,r0),r0

loc_8C07C2BC:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C07C2CA:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.l r3,@r15
	mov.l @(loc_8C07C314,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	mov.l @r15,r2
	mov 0x34,r0 ; r0 set to 0x34
	mov r0,r1 ; r1 set to 0x34
	fmov.s @(r0,r2),fr3 ; r3 ??? bc r2 is ???	
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C07C306,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	tst r3,r3
	bt/s loc_8C07C318
	add r14,r1 ; r1 ??? bc r14 is ???	
	bra loc_8C07C31a
	mov 0x70,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C07C2FA:
	#data 0x020c

loc_8C07C2FC:
	#data 0x01Cc

loc_8C07C2FE:
	#data 0x012c

loc_8C07C300:
	#data 0x019f

loc_8C07C302:
	#data 0x01F6

loc_8C07C304:
	#data 0x0420

loc_8C07C306:
	#data 0x0130
	#align4

loc_8C07C308:
	#data bank05.loc_8c05218a

loc_8C07C30C:
	#data bank04.loc_8c04CC1c

loc_8C07C310:
	#data bank05.loc_8c051648

loc_8C07C314:
	#data bank03.loc_8c034dee

;==============================================
loc_8C07C318:
	mov 0x90,r3 ; r3 set to 0xFFFFFF90

loc_8C07C31A:
	lds r3,fpul
	fmov.s @r1,fr2
	mov.w @(loc_8C07C436,pc),r0 ; r0 set to 0x19E, r0 set to 0x19e
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r1
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bt/s loc_8C07C3B0
	mov 0x00,r13 ; r13 set to 0x00, r13 set to 0x00
	mov.w @(loc_8C07C438,pc),r0 ; r0 set to 0x1B0, r0 set to 0x1B0
	mov.l @(r0,r14),r12
	mov.w @(loc_8C07C43A,pc),r0 ; r0 set to 0x411, r0 set to 0x411
	mov.b @(r0,r12),r3
	tst r3,r3
	bf loc_8C07C37a
	mov.w @(loc_8C07C438,pc),r0 ; r0 set to 0x1B0, r0 set to 0x1B0
	mov 0x28,r6 ; r6 set to 0x28, r6 set to 0x28
	mov.l @(loc_8C07C44C,pc),r3 ; r3 set to 0x8C0599F4, r3 set to 0x8C0599F4
	mov.w @(loc_8C07C43C,pc),r5 ; r5 set to 0x12C, r5 set to 0x12c
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @(loc_8C07C450,pc),r3 ; r3 set to 0x8C104DF8, r3 set to 0x8C104DF8
	mov 0x00,r5 ; r5 set to 0x00, r5 set to 0x00
	mov.w @(loc_8C07C438,pc),r0 ; r0 set to 0x1B0, r0 set to 0x1B0
	jsr @r3
	mov.l @(r0,r14),r4
	mov.l @(loc_8C07C454,pc),r2 ; r2 set to 0x8C04223A, r2 set to 0x8C04223a
	mov 0x2A,r5 ; r5 set to 0x2A, r5 set to 0x2a
	jsr @r2
	mov r14,r4
	mov.b @(0x04,r14),r0
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	mov.w @(loc_8C07C43E,pc),r5 ; r5 set to 0x3E6, r5 set to 0x3E6
	add 0x01,r0 ; r0 set to 0x1B1, r0 set to 0x1B1
	mov.b r0,@(0x04,r14)
	add r12,r5 ; r5 ??? bc r12 is ???, r5 ??? bc r12 is ???	
	mov.w @(loc_8C07C43C,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.b r13,@(r0,r14)
	mov.w @(loc_8C07C438,pc),r0 ; r0 set to 0x1B0, r0 set to 0x1B0
	mov.l @(r0,r14),r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C07C458,pc),r3 ; r3 set to 0x8C0F047C, r3 set to 0x8C0F047c
	mov.l @r15+,r12
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???, r13 ??? bc r15 is ???	
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C07C37A:
	mov.w @(0xC2,PC),r0
	mov 0x32,r2
	mov.l @(0xDC,PC),r3
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
	mov 0x66,r2
	mov.b @(0x2,r14),r0
	mov 0x06,r1
	xor 0x01,r0
	mov.b r0,@(0x2,r14)
	mov.w @(0x96,PC),r0
	mov.b r2,@(r0,r14)
	add 0x01,r0
	mov.b r1,@(r0,r14)

loc_8C07C3B0:
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07c3ce
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x6E,PC),r0
	mov.b r13,@(r0,r14)

loc_8C07C3CE:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C07C3DA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C07C464,pc),r1 ; r1 set to 0x8C153ECc
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x05,r14),r0
	mov.w @(loc_8C07C444,pc),r6 ; r6 set to 0x88
	extu.b r0,r0
	mov.l @(0x18,r14),r13
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r6 ; r6 ??? bc r14 is ???	
	jsr @r3
	mov r13,r5
	mov.b @(0x01,r14),r0
	mov.l @(0x18,r14),r3
	mov r0,r2
	mov.b @(0x01,r3),r0
	cmp/eq r0,r2
	bt loc_8C07C40e
	lds.l @r15+,pr
	mov.l @(loc_8C07C468,pc),r2 ; r2 set to 0x8C07E6Ec
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C07C40E:
	mov.w @(0x34,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c07c422
	mov.w @(0x2C,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bt loc_8c07c42e

loc_8C07C422:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xE,PC),r0
	mov.b r3,@(r0,r14)

loc_8C07C42E:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C07C436:
	#data 0x019e

loc_8C07C438:
	#data 0x01B0

loc_8C07C43A:
	#data 0x0411

loc_8C07C43C:
	#data 0x012c

loc_8C07C43E:
	#data 0x03E6

loc_8C07C440:
	#data 0x01A1

loc_8C07C442:
	#data 0x019C

loc_8C07C444:
	#data 0x0088

loc_8C07C446:
	#data 0x01D0

loc_8C07C448:
	#data 0x01E9
	#align4

loc_8C07C44C:
	#data bank05.loc_8c0599F4

loc_8C07C450:
	#data bank10.loc_8c104DF8

loc_8C07C454:
	#data bank04.loc_8c04223a

loc_8C07C458:
	#data bank0f.loc_8c0f047c

loc_8C07c45c:
	#data 0x8C2896B0

loc_8C07C460:
	#data bank04.loc_8c045748

loc_8C07C464:
	#data bank15.loc_8c153ECC

loc_8C07C468:
	#data loc_8C07E6Ec

;==============================================
loc_8C07C46C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov 0x01,r3 ; r3 set to 0x01
	mov 0x00,r2 ; r2 set to 0x00
	mov.l r5,@r15
	mov.l r6,@(0x04,r15)
	mov 0x34,r1 ; r1 set to 0x34
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C07C572,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r2,@(r0,r14)
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
	mov.l @(0x18,r14),r2 ; r2 ??? bc r14 is ???	
	mov.w @(loc_8C07C574,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r2),r3
	tst r3,r3
	bt/s loc_8C07C4B6
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C07C576,pc),r3 ; r3 set to 0x9f
	bra loc_8C07C4B8
	nop

loc_8C07C4B6:
	mov.w @(loc_8C07C578,pc),r3 ; r3 set to 0xFF61

loc_8C07C4B8:
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @r1,fr2
	mov 0x23,r5 ; r5 set to 0x23, r5 set to 0x23
	mov.l @(loc_8C07C584,pc),r3 ; r3 set to 0x8C042008, r3 set to 0x8C042008
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r1
	mov.l @(loc_8C07C580,pc),r1 ; r1 set to 0x43250000, r1 set to 0x43250000
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???	
	mov r14,r4
	mov.l @(0x04,r15),r6
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C07C4E4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C07C57A,pc),r0 ; r0 set to 0x20C, r0 set to 0x20C, r0 set to 0x20c
	mov r5,r13
	mov r4,r14
	mov.w @(loc_8C07C57C,pc),r1 ; r1 set to 0x141, r1 set to 0x141, r1 set to 0x141
	mov.l @(r0,r13),r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
	mov.l @(loc_8C07C588,pc),r11 ; r11 set to 0x8C153C74, r11 set to 0x8C153C74, r11 set to 0x8C153C74
	mov.l r3,@r15
	mov.l @(0x18,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???, r0 ??? bc r14 is ???	
	mov.b @(r0,r1),r0
	cmp/eq 0x0B,r0
	bf/s loc_8C07C518
	mov r6,r12
	mov.w @(loc_8C07C57C,pc),r0 ; r0 set to 0x141, r0 set to 0x141, r0 set to 0x141
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00, r3 set to 0x00
	mov.l @(0x18,r14),r2
	mov.b r3,@(r0,r2)
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x142, r0 set to 0x142, r0 set to 0x142
	bra loc_8C07C55e
	mov.b r0,@(0x05,r14)

loc_8C07C518:
	mov.w @(loc_8C07C57E,pc),r0 ; r0 set to 0x19e
	mov.b @(r0,r14),r2
	cmp/pz r2
	bt loc_8C07C59c
	mov r13,r5
	mov r12,r6
	bsr loc_8C07C8D0
	mov r14,r4
	mov r13,r5
	mov r12,r6
	bsr loc_8C07C956
	mov r14,r4
	mov.l @r12,r2
	tst r2,r2
	bt loc_8C07C594
	mov 0x23,r0 ; r0 set to 0x23
	mov.l @(0x18,r14),r3
	mov.b @(r0,r14),r2
	mov 0x17,r5 ; r5 set to 0x17
	mov.l @(loc_8C07C58C,pc),r1 ; r1 set to 0x8C153CA4
	add 0x01,r2
	mov.b r2,@(r0,r3)
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x24
	mov.b r0,@(0x05,r14)
	mov.l @r15,r3
	mov.b @(0x01,r3),r0
	extu.b r0,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3
	mov.b r3,@r15
	mov.b @r15,r6
	mov.l @(loc_8C07C590,pc),r3 ; r3 set to 0x8C034E8c
	add 0x25,r6
	jsr @r3
	mov r14,r4

loc_8C07C55E:
	mov r14,r4
	mov r13,r5 ; r5 ??? bc r13 is ???	
	mov r12,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C07C660
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C07C572:
	#data 0x012c

loc_8C07C574:
	#data 0x0130

loc_8C07C576:
	#data 0x009f

loc_8C07C578:
	#data 0xFF61

loc_8C07C57A:
	#data 0x020c

loc_8C07C57C:
	#data 0x0141

loc_8C07C57E:
	#data 0x019e
	#align4

loc_8C07C580:
	#data 0x43250000

loc_8C07C584:
	#data bank04.loc_8c042008

loc_8C07C588:
	#data bank15.loc_8c153C74

loc_8C07C58C:
	#data bank15.loc_8c153CA4

loc_8C07C590:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C07C594:
	mov.l @(loc_8c07c6d0,PC),r3
	mov 0x23,r5
	jsr @r3
	mov r14,r4

loc_8C07C59C:
	mov.w @(loc_8C07C6C2,pc),r0 ; r0 set to 0x141
	mov.l @(0x18,r14),r2
	mov.b @(r0,r2),r3
	cmp/pl r3
	bf loc_8C07C64e
	mov.l @(0x18,r14),r2
	mov 0x34,r0 ; r0 set to 0x34
	mov 0x34,r1 ; r1 set to 0x34
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
	mov.w @(loc_8C07C6C4,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r14),r2
	mov.w @(r0,r2),r3
	tst r3,r3
	bt/s loc_8C07C5D2
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C07C6C6,pc),r3 ; r3 set to 0x9f
	bra loc_8C07C5D4
	nop

loc_8C07C5D2:
	mov.w @(loc_8C07C6C8,pc),r3 ; r3 set to 0xFF61

loc_8C07C5D4:
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @r1,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r1
	mov.l @(loc_8C07C6D4,pc),r1 ; r1 set to 0x43250000, r1 set to 0x43250000
	fmov.s @(r0,r14),fr2
	lds r1,fpul
	mov 0x34,r1 ; r1 set to 0x34, r1 set to 0x34
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C07C6C4,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.l @(0x18,r14),r4
	mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
	tst r3,r3
	bt/s loc_8C07C60a
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	mov.w @(loc_8C07C6C2,pc),r3 ; r3 set to 0x141, r3 set to 0x141
	add r4,r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???	
	mov.b @r3,r3
	shll2 r3
	add r11,r3
	fmov.s @r3,fr2
	bra loc_8C07C618
	nop

loc_8C07C60A:
	mov.w @(0xB4,PC),r2
	add r4,r2
	mov.b @r2,r2
	shll2 r2
	add r11,r2
	fmov @r2,fr2
	fneg fr2

loc_8C07C618:
	fmov @r1,fr3
	mov.w @(0xAC,PC),r2
	fadd fr2,fr3
	fmov fr3,@r1
	mov.l @(0x18,r14),r3
	mov r2,r0
	nop
	add 0x42,r0
	mov.b @(r0,r3),r1
	mov 0x23,r0
	add r2,r1
	mov.b r1,@(r0,r14)
	mov.w @(0x8E,PC),r0
	mov.l @(0x18,r14),r3
	mov.b @(r0,r3),r1
	cmp/pl r1
	bf loc_8c07c646
	mov 0x23,r0
	mov.l @(0x98,PC),r3
	mov.b @(r0,r14),r6
	mov 0x07,r5
	jsr @r3
	mov r14,r4

loc_8C07C646:
	mov.w @(0x78,PC),r0
	mov 0x00,r3
	mov.l @(0x18,r14),r2
	mov.b r3,@(r0,r2)

loc_8C07C64E:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C07C6DC,pc),r3 ; r3 set to 0x8C045748
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C07C660:
	mov.w @(loc_8C07C6C2,pc),r1 ; r1 set to 0x141
	mov.l r14,@-r15
	mov.l @(0x18,r4),r0
	mov.l @(loc_8C07C6E0,pc),r14 ; r14 set to 0x8C153C74
	mov.b @(r0,r1),r0
	cmp/eq 0x0C,r0
	bf loc_8C07C68c
	mov.l @r6,r2
	tst r2,r2
	bt loc_8C07C67c
	mov.b @(0x05,r4),r0
	add 0x01,r0
	bra loc_8C07C730
	mov.b r0,@(0x05,r4)

loc_8C07C67C:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C07C6CC,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C07C68C:
	mov.w @(loc_8C07C6C2,pc),r0 ; r0 set to 0x141
	mov.l @(0x18,r4),r2
	mov.b @(r0,r2),r3
	cmp/pl r3
	bf loc_8C07C730
	mov.l @(0x18,r4),r2
	mov 0x34,r0 ; r0 set to 0x34
	mov 0x34,r1 ; r1 set to 0x34
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
	mov.w @(loc_8C07C6C4,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	tst r3,r3
	bt/s loc_8C07C6E4
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.w @(loc_8C07C6CE,pc),r3 ; r3 set to 0x94
	bra loc_8C07C6E6
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C07C6C2:
	#data 0x0141

loc_8C07C6C4:
	#data 0x0130

loc_8C07C6C6:
	#data 0x009f

loc_8C07C6C8:
	#data 0xFF61

loc_8c07c6ca:
	#data 0x00Ff

loc_8C07C6CC:
	#data 0x012c

loc_8C07C6CE:
	#data 0x0094
	#align4

loc_8C07C6D0:
	#data bank04.loc_8c042008

loc_8C07C6D4:
	#data 0x43250000

loc_8C07C6D8:
	#data loc_8C07A490

loc_8C07C6DC:
	#data bank04.loc_8c045748

loc_8C07C6E0:
	#data bank15.loc_8c153C74

;==============================================
loc_8C07C6E4:
	mov.w @(loc_8C07C7CE,pc),r3 ; r3 set to 0xFF6c

loc_8C07C6E6:
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @r1,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r1
	mov.l @(loc_8C07C7DC,pc),r1 ; r1 set to 0x43250000, r1 set to 0x43250000
	fmov.s @(r0,r4),fr2
	lds r1,fpul
	mov 0x34,r1 ; r1 set to 0x34, r1 set to 0x34
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C07C7D0,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.l @(0x18,r4),r7
	mov.w @(r0,r7),r3 ; r3 ??? bc r7 is ???	
	tst r3,r3
	bt/s loc_8C07C71c
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
	mov.w @(loc_8C07C7D2,pc),r3 ; r3 set to 0x141, r3 set to 0x141
	add r7,r3 ; r3 ??? bc r7 is ???, r3 ??? bc r7 is ???	
	mov.b @r3,r3
	shll2 r3
	add r14,r3
	fmov.s @r3,fr2
	bra loc_8C07C72a
	nop

loc_8C07C71C:
	mov.w @(0xB2,PC),r2
	add r7,r2
	mov.b @r2,r2
	shll2 r2
	add r14,r2
	fmov @r2,fr2
	fneg fr2

loc_8C07C72A:
	fmov @r1,fr3
	fadd fr2,fr3
	fmov fr3,@r1

loc_8C07C730:
	bra loc_8C07C976
	mov.l @r15+,r14

;unused return
	rts
	mov.l @r15+,r14

;==============================================
loc_8C07C738:
	mov.w @(loc_8C07C7D4,pc),r0 ; r0 set to 0x143
	mov.l @(0x18,r4),r3
	mov.b @(r0,r3),r2
	cmp/pz r2
	bt loc_8C07C74a
	mov.b @(0x05,r4),r0
	add 0x01,r0 ; r0 set to 0x144
	bra loc_8C07C896
	mov.b r0,@(0x05,r4)

loc_8C07C74A:
	mov.w @(loc_8C07C7D2,pc),r1 ; r1 set to 0x141
	mov.l @(0x18,r4),r0
	mov.b @(r0,r1),r0
	cmp/eq 0x01,r0
	bf loc_8C07C79a
	mov.l @(0x18,r4),r2
	mov 0x34,r0 ; r0 set to 0x34
	mov 0x34,r1 ; r1 set to 0x34
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
	mov.w @(loc_8C07C7D0,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	tst r3,r3
	bt/s loc_8C07C780
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.w @(loc_8C07C7D6,pc),r3 ; r3 set to 0x88
	bra loc_8C07C782
	nop

loc_8C07C780:
	mov.w @(0x54,PC),r3

loc_8C07C782:
	lds r3,fpul
	mov 0x38,r0
	fmov @r1,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@r1
	mov.l @(0x4C,PC),r1
	fmov @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C07C79A:
	mov.w @(loc_8C07C7D2,pc),r1 ; r1 set to 0x141
	mov.l @(0x18,r4),r0
	mov.b @(r0,r1),r0
	cmp/eq 0x02,r0
	bf loc_8C07C7Fa
	mov.l @(0x18,r4),r2
	mov 0x34,r0 ; r0 set to 0x34
	mov 0x34,r1 ; r1 set to 0x34
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
	mov.w @(loc_8C07C7D0,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	tst r3,r3
	bt/s loc_8C07C7E0
	add r4,r1 ; r1 ??? bc r4 is ???	
	bra loc_8C07C7E2
	mov 0x6A,r3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C07C7CE:
	#data 0xFF6c

loc_8C07C7D0:
	#data 0x0130

loc_8C07C7D2:
	#data 0x0141

loc_8C07C7D4:
	#data 0x0143

loc_8C07C7D6:
	#data 0x0088

loc_8C07C7D8:
	#data 0xFF78
	#align4

loc_8C07C7DC:
	#data 0x43250000

;==============================================
loc_8C07C7E0:
	mov 0x96,r3

loc_8C07C7E2:
	lds r3,fpul
	mov 0x38,r0
	fmov @r1,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@r1
	mov.l @(0xD4,PC),r1
	fmov @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C07C7FA:
	mov.w @(loc_8C07C8BE,pc),r1 ; r1 set to 0x141
	mov.l @(0x18,r4),r0
	mov.b @(r0,r1),r0
	cmp/eq 0x03,r0
	bf loc_8C07C848
	mov.l @(0x18,r4),r2
	mov 0x34,r0 ; r0 set to 0x34
	mov 0x34,r1 ; r1 set to 0x34
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
	mov.w @(loc_8C07C8C0,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	tst r3,r3
	bt/s loc_8C07C82e
	add r4,r1 ; r1 ??? bc r4 is ???	
	bra loc_8C07C830
	mov 0x6A,r3

loc_8C07C82E:
	mov 0x96,r3

loc_8C07C830:
	lds r3,fpul
	mov 0x38,r0
	fmov @r1,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@r1
	mov.l @(0x88,PC),r1
	fmov @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C07C848:
	mov.w @(loc_8C07C8BE,pc),r1 ; r1 set to 0x141
	mov.l @(0x18,r4),r0
	mov.b @(r0,r1),r0
	cmp/eq 0x04,r0
	bf loc_8C07C896
	mov.l @(0x18,r4),r2
	mov 0x34,r0 ; r0 set to 0x34
	mov 0x34,r1 ; r1 set to 0x34
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
	mov.w @(loc_8C07C8C0,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r4),r2
	mov.w @(r0,r2),r3
	tst r3,r3
	bt/s loc_8C07C87c
	add r4,r1 ; r1 ??? bc r4 is ???	
	bra loc_8C07C87e
	mov 0x30,r3

loc_8C07C87C:
	mov 0xD0,r3

loc_8C07C87E:
	lds r3,fpul
	mov 0x38,r0
	fmov @r1,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@r1
	mov.l @(0x40,PC),r1
	fmov @(r0,r4),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8C07C896:
	bra loc_8C07C976
	nop

loc_8C07C89A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c07c976
	mov r4,r14
	mov.w @(0x18,PC),r1
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	cmp/eq 0x0F,r0
	bf loc_8c07c8b8
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xA,PC),r0
	mov.b r3,@(r0,r14)

loc_8C07C8B8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C07C8BE:
	#data 0x0141

loc_8C07C8C0:
	#data 0x0130

loc_8C07C8C2:
	#data 0x012c
	#align4

loc_8C07C8C4:
	#data 0x43120000

loc_8C07C8C8:
	#data 0x43170000

loc_8C07C8Cc:
	#data 0x434A0000

;==============================================
loc_8C07C8D0:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C07C9CA,pc),r0 ; r0 set to 0x1B0
	mov.l r6,@r15
	mov.l @(r0,r4),r6
	mov.b @(0x03,r6),r0
	tst r0,r0
	bf loc_8C07C938
	mov.b @(0x05,r6),r0
	extu.b r0,r0 ; r0 set to 0xB0
	cmp/eq 0x03,r0
	bf loc_8C07C938
	mov.b @(0x05,r6),r0
	extu.b r0,r0 ; r0 set to 0xB0
	cmp/eq 0x02,r0
	bt loc_8C07C938
	mov.w @(loc_8C07C9CC,pc),r0 ; r0 set to 0x411
	mov.b @(r0,r6),r2
	tst r2,r2
	bf loc_8C07C938
	mov.w @(loc_8C07C9CE,pc),r0 ; r0 set to 0x1F9
	mov.b @(r0,r6),r0 ; r0 ??? bc r6 is ???	
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8C07C938
	mov.w @(loc_8C07C9D0,pc),r0 ; r0 set to 0x420
	mov.w @(r0,r6),r2
	tst r2,r2
	bt loc_8C07C938
	mov.w @(loc_8C07C9D2,pc),r7 ; r7 set to 0x414
	mov 0x00,r1 ; r1 set to 0x00
	mov.l @(loc_8C07C9DC,pc),r3 ; r3 set to 0x7000000
	add r6,r7 ; r7 ??? bc r6 is ???	
	mov.l @r7,r2
	and r3,r2
	or r1,r2
	tst r2,r2
	bf loc_8C07C94e
	mov.b @(0x05,r6),r0
	extu.b r0,r0 ; r0 set to 0x20
	cmp/eq 0x03,r0
	bf loc_8C07C938
	mov.l @(loc_8C07C9E0,pc),r2 ; r2 set to 0x8C042008
	jsr @r2
	mov 0x24,r5 ; r5 set to 0x24
	mov.l @r15,r3 ; r3 ??? bc r15 is ???	
	mov 0x01,r2 ; r2 set to 0x01
	mov.l r2,@r3
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C07C938:
	mov 0x01,r0 ; r0 set to 0x01
	mov.w r0,@(0x1C,r5)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r4),r3
	mov 0x00,r2 ; r2 set to 0x00
	add 0x01,r3
	mov.b r3,@(r0,r5)
	mov.w @(loc_8C07C9D4,pc),r0 ; r0 set to 0x141
	mov.b r2,@(r0,r5)
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x05,r4)

loc_8C07C94E:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;==============================================
loc_8C07C956:
	mov.l r14,@-r15
	mov.l @r6,r3
	tst r3,r3
	bt loc_8C07C972
	mov.w @(loc_8C07C9CA,pc),r0 ; r0 set to 0x1B0
	mov.w @(loc_8C07C9D6,pc),r3 ; r3 set to 0xC2
	mov.l @(r0,r4),r14
	add 0x47,r0 ; r0 set to 0x1F7
	mov.b r3,@(r0,r14)
	mov.b r3,@(r0,r5)
	mov r14,r5
	mov.l @(loc_8C07C9E4,pc),r3 ; r3 set to 0x8C05248e
	jmp @r3
	mov.l @r15+,r14

loc_8C07C972:
	rts
	mov.l @r15+,r14

;==============================================
loc_8C07C976:
#data 0x2FE6
#data 0x4F222FD6
#data 0x6D637FFc
#data 0x63D22F42
#data 0x891A2338
#data 0xE3019026
#data 0x70DE0E5e
#data 0xD3150534
#data 0x430B65E3
#data 0x60F264F2
#data 0x5006911a
#data 0x880F001c
#data 0x90188B0b
#data 0xE33DE201
#data 0x70AB0E24
#data 0xE2000E34
#data 0xE502D30d
#data 0x430B2D22
#data 0x64E3

loc_8C07C9BE:
#data 0x60D2
#data 0x4F267F04
#data 0x000B6DF6
#data 0x6EF6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C07C9CA:
#data 0x01B0

loc_8C07C9CC:
#data 0x0411

loc_8C07C9CE:
#data 0x01F9

loc_8C07C9D0:
#data 0x0420

loc_8C07C9D2:
#data 0x0414

loc_8C07C9D4:
#data 0x0141

loc_8C07C9D6:
#data 0x00C2
#data 0x01F6020c

#align4
loc_8C07C9DC:
#data 0x07000000

#align4
loc_8C07C9E0:
#data bank04.loc_8c042008

loc_8C07C9E4:
#data bank05.loc_8c05248e

loc_8C07C9E8:
#data bank04.loc_8c04CC1c

loc_8C07C9EC:
#data bank04.loc_8c04223a

loc_8C07C9F0:
#data 0x6E432FE6
#data 0x2FD6D150
#data 0x84E54F22
#data 0x4008600c
#data 0x430B031e
#data 0x908D5DE6
#data 0x023C53E6
#data 0x8B092228
#data 0x00DC9089
#data 0x8815600c
#data 0x90858B04
#data 0x600C00Dc
#data 0x89058806

#align4
loc_8C07CA24:
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34907d

#align4
loc_8C07CA30:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C07CA38:
mov.b @(0x05,r4),r0
mov 0x01,r3 ; r3 set to 0x01
mov 0x00,r2 ; r2 set to 0x00
mov.l @(loc_8C07CB3C,pc),r5 ; r5 set to 0x8C153C74
add 0x01,r0
mov.b r0,@(0x05,r4)
mov 0x34,r1 ; r1 set to 0x34
mov.w @(loc_8C07CB2A,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r4)
mov 0x24,r0 ; r0 set to 0x24
mov.b r2,@(r0,r4)
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
mov.l @(0x18,r4),r2 ; r2 ??? bc r4 is ???	
mov.w @(loc_8C07CB2C,pc),r0 ; r0 set to 0x130
mov.w @(r0,r2),r3
tst r3,r3
bt/s loc_8C07CA78
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C07CB2E,pc),r3 ; r3 set to 0x92
bra loc_8C07CA7a
nop

loc_8C07CA78:
mov.w @(loc_8C07CB30,pc),r3 ; r3 set to 0xFF6e

loc_8C07CA7A:
lds r3,fpul
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @r1,fr2
float fpul,fr3
fadd fr3,fr2
fmov.s fr2,@r1
mov.l @(loc_8C07CB40,pc),r1 ; r1 set to 0x43250000, r1 set to 0x43250000
fmov.s @(r0,r4),fr2
lds r1,fpul
mov 0x34,r1 ; r1 set to 0x34, r1 set to 0x34
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov.w @(loc_8C07CB2C,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C07CAB2
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
mov 0x23,r2 ; r2 set to 0x23, r2 set to 0x23
add r4,r2 ; r2 ??? bc r4 is ???, r2 ??? bc r4 is ???	
mov.b @r2,r2
extu.b r2,r2
shll2 r2
add r5,r2
fmov.s @r2,fr2
bra loc_8C07CAC2
nop

loc_8C07CAB2:
mov 0x23,r3 ; r3 set to 0x23
add r4,r3 ; r3 ??? bc r4 is ???	
mov.b @r3,r3
extu.b r3,r3
shll2 r3
add r5,r3
fmov.s @r3,fr2
fneg fr2

loc_8C07CAC2:
fmov.s @r1,fr3
fadd fr2,fr3
rts
fmov.s fr3,@r1
;-------------------------------------------------------------------------------

loc_8C07CACA:
mov 0x23,r0 ; r0 set to 0x23
mov.l @(0x18,r4),r2
mov.b @(r0,r4),r3
mov.w @(loc_8C07CB32,pc),r0 ; r0 set to 0x141
mov.l @(loc_8C07CB3C,pc),r5 ; r5 set to 0x8C153C74
extu.b r3,r3
mov.b @(r0,r2),r1
cmp/eq r1,r3
bf loc_8C07CAEe
mov.l @(0x18,r4),r2
mov 0x00,r5 ; r5 set to 0x00
mov.b r5,@(r0,r2)
mov.b @(0x04,r4),r0
add 0x01,r0 ; r0 set to 0x142
mov.b r0,@(0x04,r4)
mov.w @(loc_8C07CB2A,pc),r0 ; r0 set to 0x12c
rts
mov.b r5,@(r0,r4)
;-------------------------------------------------------------------------------

loc_8C07CAEE:
mov.l @(0x18,r4),r3
mov 0x34,r0 ; r0 set to 0x34
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
mov.l @(0x18,r4),r0 ; r0 ??? bc r4 is ???	
mov.b @(0x06,r0),r0
extu.b r0,r0
cmp/eq 0x02,r0
bf loc_8C07CB4a
mov.w @(loc_8C07CB2C,pc),r0 ; r0 set to 0x130
mov 0x34,r1 ; r1 set to 0x34
mov.l @(0x18,r4),r3
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C07CB44
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C07CB34,pc),r2 ; r2 set to 0x87
bra loc_8C07CB46
nop
#data 0x01D0019f
#data 0x01E9

loc_8C07CB2A:
#data 0x012c

loc_8C07CB2C:
#data 0x0130

loc_8C07CB2E:
#data 0x0092

loc_8C07CB30:
#data 0xFF6e

loc_8C07CB32:
#data 0x0141

loc_8C07CB34:
#data 0x0087
#data 0x0000

#align4
loc_8C07CB38:
#data bank15.loc_8c153EE0

loc_8C07CB3C:
#data bank15.loc_8c153C74

loc_8C07CB40:
#data 0x43250000


loc_8C07CB44:
mov.w @(loc_8C07CC5C,pc),r2 ; r2 set to 0xFF79

loc_8C07CB46:
bra loc_8C07CB62
lds r2,fpul

loc_8C07CB4A:
mov.w @(loc_8C07CC5E,pc),r0 ; r0 set to 0x130
mov 0x34,r1 ; r1 set to 0x34
mov.l @(0x18,r4),r2
mov.w @(r0,r2),r3
tst r3,r3
bt/s loc_8C07CB5e
add r4,r1 ; r1 ??? bc r4 is ???	
mov.w @(loc_8C07CC60,pc),r3 ; r3 set to 0x92
bra loc_8C07CB60
nop

loc_8C07CB5E:
mov.w @(loc_8C07CC62,pc),r3 ; r3 set to 0xFF6e

loc_8C07CB60:
lds r3,fpul

loc_8C07CB62:
float fpul,fr3
fmov.s @r1,fr2
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
fadd fr3,fr2
fmov.s fr2,@r1
mov.l @(loc_8C07CC6C,pc),r1 ; r1 set to 0x43250000, r1 set to 0x43250000, r1 set to 0x43250000
fmov.s @(r0,r4),fr2
lds r1,fpul
mov 0x34,r1 ; r1 set to 0x34, r1 set to 0x34, r1 set to 0x34
fsts fpul,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov.w @(loc_8C07CC5E,pc),r0 ; r0 set to 0x130, r0 set to 0x130, r0 set to 0x130
mov.l @(0x18,r4),r3 ; r3 ??? bc r4 is ???	
mov.w @(r0,r3),r2
tst r2,r2
bt/s loc_8C07CB98
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
mov 0x23,r2 ; r2 set to 0x23, r2 set to 0x23, r2 set to 0x23
add r4,r2 ; r2 ??? bc r4 is ???, r2 ??? bc r4 is ???, r2 ??? bc r4 is ???	
mov.b @r2,r2
extu.b r2,r2
shll2 r2
add r5,r2
fmov.s @r2,fr2
bra loc_8C07CBA8
nop

loc_8C07CB98:
mov 0x23,r3 ; r3 set to 0x23
add r4,r3 ; r3 ??? bc r4 is ???	
mov.b @r3,r3
extu.b r3,r3
shll2 r3
add r5,r3
fmov.s @r3,fr2
fneg fr2

loc_8C07CBA8:
fmov.s @r1,fr3
fadd fr2,fr3
fmov.s fr3,@r1
rts
nop


;-------------------------------------------------------------------------------
loc_8C07CBB2:
#data 0x2FE6
#data 0xD12E6E43
#data 0x4F222FD6
#data 0x600C84E5
#data 0x031E4008
#data 0x5DE6430b
#data 0x00DC904c
#data 0x8815600c
#data 0x90488B04
#data 0x600C00Dc
#data 0x89058806

#align4
loc_8C07CBDC:
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349040

#align4
loc_8C07CBE8:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C07CBF0:
#data 0x4F222FE6
#data 0x430BD31f
#data 0x90366E43
#data 0x421102Ec
#data 0x84E48905
#data 0x7001E300
#data 0x902D80E4
#data 0x0E34

loc_8C07CC0E:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C07CC14:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0
mov.l @(loc_8C07CC78,pc),r1 ; r1 set to 0x8C153EEc
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C07CC26:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C07CC74,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r4,r14
mov.l @(0x18,r14),r0
mov.b @(0x06,r0),r0
extu.b r0,r0
cmp/eq 0x02,r0
bt loc_8C07CC46
mov.b @(0x04,r14),r0
add 0x01,r0
mov.b r0,@(0x04,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C07CC46:
mov.l @(0x18,r14),r3
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x18,r14),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C07CC5C:
#data 0xFF79

loc_8C07CC5E:
#data 0x0130

loc_8C07CC60:
#data 0x0092

loc_8C07CC62:
#data 0xFF6e
#data 0x01E901D0
#data 0x0143012c

#align4
loc_8C07CC6C:
#data 0x43250000

#align4
loc_8C07CC70:
#data bank15.loc_8c153EE8

loc_8C07CC74:
#data bank03.loc_8c034dee

loc_8C07CC78:
#data bank15.loc_8c153EEC

loc_8C07CC7C:
#data 0x6E432FE6
#data 0x2FD6D144
#data 0x84E54F22
#data 0x4008600c
#data 0x430B031e
#data 0x50E65DE6
#data 0x600C8406
#data 0x8909880c
#data 0x00DC9075
#data 0x881D600c
#data 0x90718B04
#data 0x600C00Dc
#data 0x89058809

#align4
loc_8C07CCB0:
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349069

#align4
loc_8C07CCBC:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C07CCC4:
#data 0x2FE69064
#data 0x2F866E43
#data 0x00EC4F22
#data 0x8B038802
#data 0xE518D230
#data 0x64E3420b

#align4
loc_8C07CCDC:
#data 0x03EC9058
#data 0x8B4C2338
#data 0x840650E6
#data 0x8805600c
#data 0x90508B10
#data 0x53E6E834
#data 0x2228023d
#data 0x38EC8D04
#data 0x415AD127
#data 0xF30DA003

#align4
loc_8C07CD04:
#data 0x425AD226
#data 0xF30d

loc_8C07CD0A:
#data 0xF288
#data 0xF82AF230

#align4
loc_8C07CD10:
#data 0x840650E6
#data 0x8806600c
#data 0x84E58B31
#data 0xD321E526
#data 0x80E57001
#data 0x64E3430b
#data 0xE03452E6
#data 0xF326E834
#data 0xE038FE37
#data 0xF33653E6
#data 0xE03CFE37
#data 0xF33653E6
#data 0x9026FE37
#data 0x023D53E6
#data 0x8D042228
#data 0xD11638Ec
#data 0xA003415a
#data 0xF30d

loc_8C07CD56:
#data 0xD215
#data 0xF30D425a

#align4
loc_8C07CD5C:
#data 0xE038F288
#data 0xE517D113
#data 0xD313F230
#data 0xE618415a
#data 0xF2E6F82a
#data 0xF230F30d
#data 0x430BFE27
#data 0xB01F64E3
#data 0x64E3

loc_8C07CD7E:
#data 0x4F26
#data 0x64E3D30d
#data 0x432B68F6
#data 0x01D06EF6
#data 0x012C01E9
#data 0x01300141

#align4
loc_8C07CD94:
#data bank15.loc_8c153EF0

loc_8C07CD98:
#data bank04.loc_8c04223a
#data 0x41D55555
#data 0xC1D55555

#align4
loc_8C07CDA4:
#data bank04.loc_8c042008
#data 0x43C80000
#data 0xC3C80000
#data 0x432B6DB6

#align4
loc_8C07CDB4:
#data bank03.loc_8c034e8c

loc_8C07CDB8:
#data bank03.loc_8c034dee


loc_8C07CDBC:
mov.w @(loc_8C07CEC6,pc),r0 ; r0 set to 0x143
mov.b @(r0,r4),r3
cmp/pz r3
bt loc_8C07CDD2
mov.b @(0x05,r4),r0
mov 0x1A,r6 ; r6 set to 0x1a
mov.l @(loc_8C07CED4,pc),r3 ; r3 set to 0x8C034E8c
add 0x01,r0 ; r0 set to 0x144
mov.b r0,@(0x05,r4)
jmp @r3
mov 0x17,r5

loc_8C07CDD2:
mov.l @(loc_8C07CED8,pc),r2 ; r2 set to 0x8C034DEe
jmp @r2
nop

loc_8C07CDD8:
mov.l @(0x18,r4),r0
mov.b @(0x06,r0),r0
extu.b r0,r0
cmp/eq 0x08,r0
bf loc_8C07CDE8
mov.l @(loc_8C07CED8,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop

loc_8C07CDE8:
rts
nop
;-------------------------------------------------------------------------------

#align4
loc_8C07CDEC:
#data 0x6E432FE6
#data 0x2FD6D13a
#data 0x84E54F22
#data 0x4008600c
#data 0x430B031e
#data 0x50E65DE6
#data 0x600C8406
#data 0x8909880c
#data 0x00DC905c
#data 0x881D600c
#data 0x90588B04
#data 0x600C00Dc
#data 0x89058809

#align4
loc_8C07CE20:
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349050

#align4
loc_8C07CE2C:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C07CE34:
#data 0x2FE6904b
#data 0x2F866E43
#data 0x00EC4F22
#data 0x8B038802
#data 0xE518D226
#data 0x64E3420b

#align4
loc_8C07CE4C:
#data 0x03EC903f
#data 0x8B632338
#data 0x840650E6
#data 0x8805600c
#data 0x90378B10
#data 0x53E6E834
#data 0x2228023d
#data 0x38EC8D04
#data 0x415AD11d
#data 0xF30DA003

#align4
loc_8C07CE74:
#data 0x425AD21c
#data 0xF30d

loc_8C07CE7A:
#data 0xF288
#data 0xF82AF230

#align4
loc_8C07CE80:
#data 0x840650E6
#data 0x8806600c
#data 0x84E58B48
#data 0xD317E526
#data 0x80E57001
#data 0x64E3430b
#data 0xE03452E6
#data 0xF326E834
#data 0xE038FE37
#data 0xF33653E6
#data 0xE03CFE37
#data 0xF33653E6
#data 0x900DFE37
#data 0x023D53E6
#data 0x8D1B2228
#data 0xD10C38Ec
#data 0xA01A415a
#data 0xF30d

loc_8C07CEC6:
#data 0x0143
#data 0x01E901D0
#data 0x0141012c
#data 0x00000130

#align4
loc_8C07CED4:
#data bank03.loc_8c034e8c

loc_8C07CED8:
#data bank03.loc_8c034dee

loc_8C07CEDC:
#data bank15.loc_8c153EFC

loc_8C07CEE0:
#data bank04.loc_8c04223a
#data 0x41D55555
#data 0xC1D55555

#align4
loc_8C07CEEC:
#data bank04.loc_8c042008
#data 0x43C80000

#align4
loc_8C07CEF4:
#data 0x425AD24c
#data 0xF30d

loc_8C07CEFA:
#data 0xF288
#data 0xD14BE038
#data 0xF230E517
#data 0x415AD34a
#data 0xF82AE619
#data 0xF30DF2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x64E3B006

#align4
loc_8C07CF1C:
#data 0xD3454F26
#data 0x68F664E3
#data 0x6EF6432b


loc_8C07CF28:
mov.w @(loc_8C07D01A,pc),r0 ; r0 set to 0x143
mov.b @(r0,r4),r3
cmp/pz r3
bt loc_8C07CF3e
mov.b @(0x05,r4),r0
mov 0x1B,r6 ; r6 set to 0x1b
mov.l @(loc_8C07D030,pc),r3 ; r3 set to 0x8C034E8c
add 0x01,r0 ; r0 set to 0x144
mov.b r0,@(0x05,r4)
jmp @r3
mov 0x17,r5

loc_8C07CF3E:
mov.l @(loc_8C07D034,pc),r2 ; r2 set to 0x8C034DEe
jmp @r2
nop

loc_8C07CF44:
mov.l @(0x18,r4),r0
mov.b @(0x06,r0),r0
extu.b r0,r0
cmp/eq 0x08,r0
bf loc_8C07CF54
mov.l @(loc_8C07D034,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop

loc_8C07CF54:
rts
nop
;-------------------------------------------------------------------------------

#align4
loc_8C07CF58:
#data 0x6E432FE6
#data 0x2FD6D136
#data 0x84E54F22
#data 0x600C965a
#data 0x40085DE6
#data 0x36EC031e
#data 0x65D3430b
#data 0x00DC9053
#data 0x881D600c
#data 0x904F8B04
#data 0x600C00Dc
#data 0x89058809

#align4
loc_8C07CF88:
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349047

#align4
loc_8C07CF94:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C07CF9C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8C07D024,pc),r0 ; r0 set to 0x1B0
	mov r4,r14
	mov.l r5,@r15
	mov.l @(r0,r14),r3
	mova @(loc_8C07D03C,pc),r0  ; r0 set to 0x8C07D03c
	mov.l r3,@(0x04,r15)
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(0x18,r14),r2
	fmov.s @(r0,r14),fr1
	fmov.s @(r0,r2),fr2
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bt/s loc_8C07CFD2
	mov r6,r13
	mov.l @(0x18,r14),r2
	mov 0x0B,r0 ; r0 set to 0x0b
	mov.b r0,@(0x06,r2)
	mov 0x04,r0 ; r0 set to 0x04
	mov.b r0,@(0x05,r14)
	mov 0x14,r0 ; r0 set to 0x14
	bra loc_8C07D086
	mov.w r0,@(0x1C,r14)

loc_8C07CFD2:
	mov.w @(loc_8C07D026,pc),r0 ; r0 set to 0x19e
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt loc_8C07D040
	mov.l @r15,r5
	mov r13,r6
	bsr loc_8C07D41c
	mov r14,r4
	mov.l @r15,r5
	mov r13,r6
	bsr loc_8C07D484
	mov r14,r4
	mov.l @(0x08,r13),r2
	tst r2,r2
	bt loc_8C07D040
	mov.b @(0x05,r14),r0
	mov 0x00,r4 ; r4 set to 0x00
	add 0x01,r0 ; r0 set to 0x19f
	mov.b r0,@(0x05,r14)
	mov.l @(0x04,r15),r3
	mov.w @(loc_8C07D022,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r3)
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b r4,@(r0,r14)
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov 0x17,r5 ; r5 set to 0x17
	mov 0x2F,r6 ; r6 set to 0x2f
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8C07D030,pc),r3 ; r3 set to 0x8C034E8c
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C07D01A:
	#data 0x0143

loc_8C07D01c:
	#data 0x0088

loc_8C07D01e:
	#data 0x01D0

loc_8C07D020:
	#data 0x01E9

loc_8C07D022:
	#data 0x012c

loc_8C07D024:
	#data 0x01B0

loc_8C07D026:
	#data 0x019e
	#align4

loc_8c07d028:
	#data 0xC3C80000

loc_8c07d02c:
	#data 0x432B6DB6

loc_8C07D030:
	#data bank03.loc_8c034e8c

loc_8C07D034:
	#data bank03.loc_8c034dee

loc_8C07D038:
	#data bank15.loc_8c153F08

loc_8C07D03C:
	#data 0x42CDB6Db

;==============================================
loc_8C07D040:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r14,r4
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3
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
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8C07D190,pc),r3 ; r3 set to 0x8C045748
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C07D086:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C07D090:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C07D4A4
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5c
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3
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
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C07D124
	mov 0x00,r4 ; r4 set to 0x00
	mova @(loc_8C07D194,pc),r0  ; r0 set to 0x8C07D194
	mov.l @(0x18,r14),r3
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r3),fr2
	fmov.s @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bt loc_8C07D124
	mov 0x23,r0 ; r0 set to 0x23
	fldi0 fr4
	mov 0x01,r2 ; r2 set to 0x01
	mov.b r2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov r4,r0 ; r0 set to 0x00
	nop
	fldi1 fr2
	fadd fr2,fr2 ; r2 ??	
	mov.w r0,@(0x1C,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s @(r0,r14),fr1
	mov 0x60,r0 ; r0 set to 0x60
	fdiv fr2,fr1
	fmov.s fr1,@(r0,r14)
	mova @(loc_8C07D198,pc),r0  ; r0 set to 0x8C07D198
	fmov.s @r0,fr1
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s @(r0,r14),fr0 ; r0 ??? bc r14 is ???	
	fdiv fr1,fr0
	fneg fr0
	fmov.s fr0,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C07D124:
	mova @(loc_8C07D19C,pc),r0  ; r0 init to 0x8C07D19c
	fmov.s @r0,fr5
	mova @(loc_8C07D1A0,pc),r0  ; r0 set to 0x8C07D1A0
	fmov.s @r0,fr4
	mov 0x0A,r3 ; r3 set to 0x0a
	mov.w @(0x1C,r14),r0
	cmp/ge r3,r0
	bt loc_8C07D144
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
	fadd fr5,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr2
	bra loc_8C07D158
	fsub fr4,fr2

loc_8C07D144:
	mov 0x14,r3 ; r3 set to 0x14
	cmp/ge r3,r0
	bt loc_8C07D166
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
	fsub fr5,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s @(r0,r14),fr2
	fadd fr4,fr2

loc_8C07D158:
	fmov.s fr2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0x01,r0 ; r0 set to 0x55
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;==============================================
loc_8C07D166:
	mov.b @(0x05,r14),r0
	fldi1 fr4
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x03,r0 ; r0 set to 0x03
	mov.l @(0x18,r14),r3
	mov.b r0,@(0x06,r3)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr4,@(r0,r14)
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr4,@(r0,r14)
	mov r4,r0 ; r0 ??? bc r4 is ???	
	nop
	mov.l @(loc_8C07D1A4,pc),r3 ; r3 set to 0x8C030FFa
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;unused return
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
#align4
loc_8C07D190:
	#data bank04.loc_8c045748

loc_8C07D194:
	#data 0x42CDB6Db

loc_8C07D198:
	#data 0x41000000

loc_8C07D19C:
	#data 0x3E03126f

loc_8C07D1A0:
	#data 0x3C449BA6

loc_8C07D1A4:
	#data bank03.loc_8c030FFa

;==============================================
loc_8C07D1A8:
	mov.l r14,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C07D2BC,pc),r0 ; r0 set to 0x20c
	mov r4,r14
	mov.l @(r0,r5),r3
	mov.l r3,@r15
	bsr loc_8C07D4A4
	mov r14,r4
	mov.b @(0x05,r14),r0
	mov 0x34,r8 ; r8 set to 0x34
	add 0x01,r0 ; r0 set to 0x20d
	mov.b r0,@(0x05,r14)
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r14),r3
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
	mov.w @(loc_8C07D2BE,pc),r0 ; r0 set to 0x130
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r2
	tst r2,r2
	bt/s loc_8C07D1F0
	add r14,r8 ; r8 ??? bc r14 is ???	
	mov.l @(loc_8C07D2C0,pc),r1 ; r1 set to 0x43C80000
	lds r1,fpul
	bra loc_8C07D1F6
	fsts fpul,fr3

loc_8C07D1F0:
	mov.l @(loc_8C07D2C4,pc),r2 ; r2 set to 0xC3C80000
	lds r2,fpul
	fsts fpul,fr3

loc_8C07D1F6:
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C07D2C8,pc),r1 ; r1 set to 0x432B6DB6, r1 set to 0x432B6DB6
	fadd fr3,fr2
	lds r1,fpul
	fmov.s fr2,@r8
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r14),fr2
	mov.l @r15,r3
	fmov.s fr2,@(r0,r3)
	fmov.s @(r0,r14),fr2
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr2,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r14),fr2
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr2,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	rts
	mov.l @r15+,r14

;==============================================
loc_8C07D22A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c07d4a4
	mov r4,r14
	mov.l @(0x18,r14),r2
	mov 0x23,r0
	mov.b @(r0,r2),r3
	tst r3,r3
	bt loc_8c07d25c
	mov 0x60,r0
	mov.l @(0x8C,PC),r3
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bf loc_8c07d25c
	mov.l @(0x80,PC),r1
	mov 0x38,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C07D25C:
	mov.l @(0x18,r14),r3
	mov 0x23,r0
	mov.b @(r0,r3),r2
	tst r2,r2
	bf loc_8c07d26e
	mov 0x60,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8C07D26E:
	mov.l @(0x18,r14),r0
	mov.b @(0x6,r0),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c07d27e
	mov.l @(0x58,PC),r2
	jsr @r2
	mov r14,r4

loc_8C07D27E:
	mov.l @(0x18,r14),r0
	mov.b @(0x6,r0),r0
	extu.b r0,r0
	cmp/eq 0x0C,r0
	bf loc_8c07d2b6
	mov.b @(0x5,r14),r0
	mov r14,r4
	fldi0 fr4
	mov 0x30,r6
	add 0x01,r0
	mov.l @(0x48,PC),r3
	mov.b r0,@(0x5,r14)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mova @(0x30,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov 0x17,r5
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C07D2B6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C07D2BC:
	#data 0x020c

loc_8C07D2BE:
	#data 0x0130
	#align4

loc_8C07D2C0:
	#data 0x43C80000

loc_8C07D2C4:
	#data 0xC3C80000

loc_8C07D2C8:
	#data 0x432B6DB6

loc_8c07d2cc:
	#data 0x8C26823c

loc_8c07d2d0:
	#data 0x40A00000

loc_8c07d2d4:
	#data bank03.loc_8c034dee

loc_8c07d2d8:
	#data 0xBF4DB6Db

loc_8C07D2DC:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C07D2E0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(loc_8C07D400,pc),r13 ; r13 set to 0x8C153D2c
	bsr loc_8C07D4A4
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8C07D308
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x08,r0 ; r0 set to 0x08
	bra loc_8C07D3Ca
	mov.w r0,@(0x1C,r14)

loc_8C07D308:
	mov.w @(0x1C,r14),r0
	mov.l @(0xF8,PC),r3
	mov r0,r1
	jsr @r3
	mov 0x06,r0
	tst r0,r0
	bf loc_8c07d36e
	mov 0x34,r0
	mov.l @(0xF0,PC),r3
	fmov @(r0,r14),fr3
	mova @(0xE8,PC),r0
	fmov fr3,@r15
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mov 0x04,r0
	fadd fr3,fr2
	jsr @r3
	fmov fr2,@(r0,r15)
	mov 0x0F,r4
	fmov @r15,fr2
	and r0,r4
	mov.l @(0xD4,PC),r3
	extu.b r4,r0
	shll2 r0
	fmov @(r0,r13),fr3
	fadd fr3,fr2
	jsr @r3
	fmov fr2,@r15
	mov 0x0F,r4
	mov.l @(0xC8,PC),r3
	and r0,r4
	extu.b r4,r4
	shll2 r4
	add r13,r4
	mov 0x04,r0
	add 0x40,r4
	fmov @(r0,r15),fr2
	fmov @r4,fr3
	mov 0x04,r0
	mov 0x49,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r3
	mov r14,r4
	mov.l @(0xB0,PC),r2
	mov r15,r5
	mov.w @(0x92,PC),r7
	mov 0x01,r6
	jsr @r2
	mov r14,r4

loc_8C07D36E:
	mova @(0xA8,PC),r0
	mov.l @(0x18,r14),r3
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r3),fr2
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bt loc_8c07d392
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)

loc_8C07D392:
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

loc_8C07D3CA:
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C07D3D4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c07d4a4
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07d3f6
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x8,PC),r0
	mov.b r3,@(r0,r14)

loc_8C07D3F6:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07d3fc:
	#data 0x00C9

loc_8c07d3fe:
	#data 0x012C
	#align4

loc_8C07D400:
	#data bank15.loc_8c153D2c

loc_8C07D404:
	#data bank12.loc_8c1292D4

loc_8C07D408:
	#data 0xC2CDB6Db

loc_8C07D40C:
	#data bank03.loc_8c03319e

loc_8C07D410:
	#data bank04.loc_8c04223a

loc_8C07D414:
	#data bank10.loc_8c10235c

loc_8C07D418:
	#data 0x42CDB6Db

;==============================================
loc_8C07D41C:
	mov.w @(0x100,PC),r0
	mov.l @(r0,r4),r5
	mov.b @(0x3,r5),r0
	tst r0,r0
	bf loc_8c07d480
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c07d480
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c07d480
	mov.w @(0xE8,PC),r0
	mov.b @(r0,r5),r2
	tst r2,r2
	bf loc_8c07d480
	mov.w @(0xE2,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8c07d480
	mov.w @(0xDA,PC),r0
	mov.w @(r0,r5),r2
	tst r2,r2
	bt loc_8c07d480
	mov.w @(0xD4,PC),r7
	mov 0x00,r1
	mov.l @(0xE0,PC),r3
	add r5,r7
	mov.l @r7,r2
	and r3,r2
	or r1,r2
	tst r2,r2
	bf loc_8c07d480
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c07d480
	mov.w @(0xB6,PC),r0
	mov 0x02,r3
	mov.b @(r0,r5),r2
	extu.b r2,r2
	cmp/ge r3,r2
	bt loc_8c07d480
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x01,r2
	fmov fr3,@(r0,r5)
	mov.l r2,@(0x8,r6)

loc_8C07D480:
	rts
	nop

;-------------------------------------------------------------------------------
loc_8C07D484:
	mov.l r14,@-r15
	mov.l @(0x08,r6),r3
	tst r3,r3
	bt loc_8C07D4A0
	mov.w @(loc_8C07D520,pc),r0 ; r0 set to 0x1B0
	mov.w @(loc_8C07D52A,pc),r3 ; r3 set to 0xC2
	mov.l @(r0,r4),r14
	add 0x47,r0 ; r0 set to 0x1F7
	mov.b r3,@(r0,r14)
	mov.b r3,@(r0,r5)
	mov r14,r5
	mov.l @(loc_8C07D53C,pc),r3 ; r3 set to 0x8C05248e
	jmp @r3
	mov.l @r15+,r14

loc_8C07D4A0:
	rts
	mov.l @r15+,r14

;==============================================
loc_8C07D4A4:
	mov.l @(0x8,r6),r3
	tst r3,r3
	bt loc_8c07d4de
	mov.w @(0x7E,PC),r0
	mov 0x01,r3
	mov.l @(r0,r5),r7
	add 0xDE,r0
	mov.b r3,@(r0,r5)
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c07d4de
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x01,r3
	mov 0x0F,r2
	fmov fr3,@(r0,r7)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r7)
	mov.w @(0x5E,PC),r0
	mov.b r3,@(r0,r7)
	mov 0x23,r3
	mov.w @(0x5A,PC),r0
	mov.b r2,@(r0,r7)
	mov 0x00,r2
	add 0xAB,r0
	mov.b r3,@(r0,r7)
	mov.l r2,@(0x8,r6)

loc_8C07D4DE:
	rts
	mov.l @(0x8,r6),r0

;-------------------------------------------------------------------------------
loc_8C07D4E2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x58,PC),r1
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jsr @r3
	mov.l @(0x18,r14),r13
	mov.w @(0x36,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c07d50c
	mov.w @(0x2E,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bt loc_8c07d518

loc_8C07D50C:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x16,PC),r0
	mov.b r3,@(r0,r14)

loc_8C07D518:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8c07d520:
	#data 0x01B0

loc_8c07d522:
	#data 0x0411

loc_8c07d524:
	#data 0x01F9

loc_8c07d526:
	#data 0x0420

loc_8c07d528:
	#data 0x0414

loc_8C07D52A:
	#data 0x00C2

loc_8c07d52c:
	#data 0x020c

loc_8c07d52e:
	#data 0x012C

loc_8c07d530:
	#data 0x01f6

loc_8c07d532:
	#data 0x01d0

loc_8c07d534:
	#data 0x01e9
	#align4

loc_8c07d538:
#data 0x07000000

loc_8C07D53C:
#data bank05.loc_8c05248e

loc_8C07D540:
#data bank15.loc_8c153F20

;==============================================
loc_8C07D544:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r0
	mov.b @(0x6,r0),r0
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8c07d55a
	mov.l @(0x114,PC),r2
	jsr @r2
	mov r14,r4

loc_8C07D55A:
	mov.l @(0x18,r14),r0
	mov.b @(0x6,r0),r0
	extu.b r0,r0
	cmp/eq 0x0C,r0
	bf loc_8c07d5b2
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xF2,PC),r0
	mov.l @(0x18,r14),r3
	mov.w @(r0,r3),r2
	tst r2,r2
	bt loc_8c07d57a
	mova @(0xF8,PC),r0
	bra loc_8c07d57e
	fmov @r0,fr3

loc_8C07D57A:
	mova @(0xF8,PC),r0
	fmov @r0,fr3

loc_8C07D57E:
	mov 0x5C,r0
	mov.l @(0x100,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fldi0 fr3
	mov r14,r4
	fmov fr3,@(r0,r14)
	mova @(0xE8,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x2E,r6
	fmov fr3,@(r0,r14)
	mova @(0xE4,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	mov 0x17,r5
	fmov fr3,@(r0,r14)
	mov 0x1E,r0
	mov.w r0,@(0x1C,r14)
	mova @(0xD8,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C07D5B2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;-------------------------------------------------------------------------------
loc_8C07D5B8:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8C07D5D4
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C07D662,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;-------------------------------------------------------------------------------
loc_8C07D5D4:
	mov 0x48,r0 ; r0 set to 0x48
	mov.w @(loc_8C07D664,pc),r3 ; r3 set to 0x2000
	mov.l @(r0,r4),r2
	mov 0x5C,r1 ; r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???	
	add r3,r2
	mov.l r2,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
	mov 0x68,r1 ; r1 set to 0x68
	add r4,r1 ; r1 ??? bc r4 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x60,r1 ; r1 set to 0x60
	add r4,r1 ; r1 ??? bc r4 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	mov 0x6C,r1 ; r1 set to 0x6c
	add r4,r1 ; r1 ??? bc r4 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	mov.l @(loc_8C07D66C,pc),r2 ; r2 set to 0x8C034DEe
	jmp @r2
	fmov.s fr2,@(r0,r4)

;???
	rts
	nop

;==============================================
loc_8C07D61E:
	mov r4,r3
	mov.l @(loc_8C07D688,pc),r1 ; r1 set to 0x8C153F28
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C07D630:
	mov.w @(0x34,PC),r0
	mov 0x00,r7
	mov.l @(0x18,r4),r5
	mov.w @(0x2C,PC),r6
	mov.b @(r0,r5),r0
	add r5,r6
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf.s loc_8c07d64e
	fldi0 fr4
	mov.w @(0x22,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8c07d6c2

loc_8C07D64E:
	mov 0x05,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0xA,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c07d690
	mova @(0x30,PC),r0
	bra loc_8c07d694
	fmov @r0,fr3

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07d660:
	#data 0x0130

loc_8C07D662:
	#data 0x012c

loc_8C07D664:
	#data 0x2000

loc_8C07D666:
	#data 0x02A4

loc_8C07D668:
	#data 0x01D0
loc_8C07D66a:
	#data 0x01E9

#align4
loc_8C07D66C:
#data bank03.loc_8c034dee
#data 0x41555555
#data 0xC1555555
#data 0x40CDB6Db
#data 0x40009249
#data 0x424DB6Db

#align4
loc_8C07D684:
#data bank03.loc_8c034e8c

loc_8C07D688:
#data bank15.loc_8c153F28
#data 0xC17D5555

;----------------------------------------------
loc_8C07D690:
	mova @(0xF8,PC),r0
	fmov @r0,fr3

loc_8C07D694:
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0xE6,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c07d6a6
	mova @(0xEC,PC),r0
	bra loc_8c07d6aa
	fmov @r0,fr3


loc_8C07D6A6:
	mova @(0xEC,PC),r0
	fmov @r0,fr3

loc_8C07D6AA:
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r4)
	mov r7,r0
	nop
	rts
	mov.b r0,@(0xE,r6)

;-------------------------------------------------------------------------------
loc_8C07D6C2:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0xB6,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c07d6d6
	mova @(0xC4,PC),r0
	bra loc_8c07d6da
	fmov @r0,fr3

loc_8C07D6D6:
	mova @(0xC4,PC),r0
	fmov @r0,fr3

loc_8C07D6DA:
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0xA0,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c07d6ec
	mova @(0xA8,PC),r0
	bra loc_8c07d6f0
	fmov @r0,fr3

loc_8C07D6EC:
	mova @(0xA4,PC),r0
	fmov @r0,fr3

loc_8C07D6F0:
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov 0x18,r0
	mov.w r0,@(0x1C,r4)
	mov r7,r0
	nop
	bra loc_8c07d70c
	mov.w r0,@(0x10,r6)
	rts
	nop

;==============================================
loc_8C07D70C:
	mov.w @(0x76,PC),r0
	mov.l @(0x18,r4),r5
	mov.w @(0x70,PC),r6
	mov.b @(r0,r5),r0
	add r5,r6
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf.s loc_8c07d728
	fldi0 fr4
	mov.w @(0x66,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8c07d772
 
loc_8C07D728:
	mov 0x05,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0x52,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c07d73a
	mova @(0x68,PC),r0
	bra loc_8c07d73e
	fmov @r0,fr3

loc_8C07D73A:
	mova @(0x50,PC),r0
	fmov @r0,fr3

loc_8C07D73E:
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x3C,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c07d750
	mova @(0x44,PC),r0
	bra loc_8c07d754
	fmov @r0,fr3

loc_8C07D750:
	mova @(0x40,PC),r0
	fmov @r0,fr3

loc_8C07D754:
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r4)
	mov 0x23,r0
	mov 0x00,r4
	mov.b r4,@(r0,r5)
	mov r4,r0
	nop
	rts
	mov.b r0,@(0xE,r6)

;==============================================
loc_8C07D772:
	mov 0x23,r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bt loc_8c07d7a4
	mov.w @(0x10,r6),r0
	add 0x01,r0
	rts
	mov.w r0,@(0x10,r6)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07d782:
	#data 0x0130
loc_8c07d784:
	#data 0x02a4
loc_8c07d786:
	#data 0x01d0
loc_8c07d788:
	#data 0x01e9
	#align4

loc_8c07d78c:
	#data 0x417d5555
loc_8c07d790:
	#data 0xbea00000
loc_8c07d794:
	#data 0x3ea00000
loc_8c07d798:
	#data 0x41c80000
loc_8c07d79c:
	#data 0xc1c80000
loc_8c07d7a0:
	#data 0xc17d5555

;==============================================
loc_8C07D7A4:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07d7f2
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0xEA,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c07d7c6
	mova @(0xEC,PC),r0
	bra loc_8c07d7ca
	fmov @r0,fr3

loc_8C07D7C6:
	mova @(0xEC,PC),r0
	fmov @r0,fr3

loc_8C07D7CA:
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0xD4,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c07d7dc
	mova @(0xE0,PC),r0
	bra loc_8c07d7e0
	fmov @r0,fr3

loc_8C07D7DC:
	mova @(0xDC,PC),r0
	fmov @r0,fr3

loc_8C07D7E0:
	mov 0x68,r0
	fmov fr3,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov 0x02,r0
	rts
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8C07D7F2:
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
	rts
	nop

;==============================================
loc_8C07D82E:
	mov.w @(0x76,PC),r0
	mov.l @(0x18,r4),r5
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c07d844
	mov.w @(0x6C,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bt loc_8c07d88c

loc_8C07D844:
	mov 0x05,r0
	mov.b r0,@(0x5,r4)
	mov.w @(0x5A,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c07d856
	mova @(0x6C,PC),r0
	bra loc_8c07d85a
	fmov @r0,fr3

loc_8C07D856:
	mova @(0x6C,PC),r0
	fmov @r0,fr3

loc_8C07D85A:
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x44,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c07d86c
	mova @(0x54,PC),r0
	bra loc_8c07d870
	fmov @r0,fr3

loc_8C07D86C:
	mova @(0x48,PC),r0
	fmov @r0,fr3

loc_8C07D870:
	mov 0x68,r0
	fldi0 fr4
	fmov fr3,@(r0,r4)
	mov 0x60,r0
	fmov fr4,@(r0,r4)
	mov 0x6C,r0
	fmov fr4,@(r0,r4)
	mov 0x3C,r0
	mov.w r0,@(0x1C,r4)
	mov 0x00,r0
	mov.w @(0x24,PC),r4
	add r5,r4
	rts
	mov.b r0,@(0xE,r4)

;==============================================
loc_8C07D88C:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c07d8c8
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x18,r0
	rts
	mov.w r0,@(0x1C,r4)

VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c07d8a6:
	#data 0x0130
loc_8c07d8a8:
	#data 0x01D0
loc_8c07d8aa:
	#data 0x01E9
loc_8c07d8ac:
	#data 0x02A4
	#align4

loc_8c07d8b0:
	#data 0xC1A00000
loc_8c07d8b4:
	#data 0x41A00000
loc_8c07d8b8:
	#data 0x3EA00000
loc_8c07d8bc:
	#data 0xBEA00000
loc_8c07d8c0:
	#data 0xC17D5555
loc_8c07d8c4:
	#data 0x417D5555

;==============================================
loc_8C07D8C8:
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
	rts
	nop

;==============================================
loc_8C07D904:
mov.l @(0x18,r4),r5
mov 0x05,r7 ; r7 set to 0x05
mov.w @(loc_8C07D9D2,pc),r6 ; r6 set to 0x2A4
mov.w @(0x1E,r5),r0
add r5,r6 ; r6 ??? bc r5 is ???	
tst r0,r0
bf/s loc_8C07D952
fldi0 fr4
mov r7,r0 ; r0 set to 0x05
nop
mov.b r0,@(0x05,r4)
mov.w @(loc_8C07D9D4,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C07D928
mova @(loc_8C07D9DC,pc),r0  ; r0 set to 0x8C07D9Dc
bra loc_8C07D92c
fmov.s @r0,fr3

loc_8C07D928:
mova @(loc_8C07D9E0,pc),r0  ; r0 init to 0x8C07D9E0
fmov.s @r0,fr3

loc_8C07D92C:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr3,@(r0,r4)
mov.w @(loc_8C07D9D4,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt loc_8C07D93e
mova @(loc_8C07D9E4,pc),r0  ; r0 set to 0x8C07D9E4, r0 set to 0x8C07D9E4
bra loc_8C07D942
fmov.s @r0,fr3

loc_8C07D93E:
mova @(loc_8C07D9E8,pc),r0  ; r0 init to 0x8C07D9E8
fmov.s @r0,fr3

loc_8C07D942:
mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
fmov.s fr3,@(r0,r4)
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s fr4,@(r0,r4)
mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
fmov.s fr4,@(r0,r4)
bra loc_8C07D9Cc
mov 0x3C,r0

loc_8C07D952:
#data 0x9040
#data 0x600C005c
#data 0x8B04881d
#data 0x005C903c
#data 0x8805600c
#data 0x8921

loc_8C07D966:
#data 0x6073
#data 0x80450009
#data 0x034D9032
#data 0x89022338
#data 0xA002C719
#data 0xF308

loc_8C07D97A:
#data 0xC719
#data 0xF308

loc_8C07D97E:
#data 0xE05c
#data 0x9027F437
#data 0x2338034d
#data 0xC7168902
#data 0xF308A002

#align4
loc_8C07D990:
#data 0xF308C715

#align4
loc_8C07D994:
#data 0xF437E068
#data 0xF447E060
#data 0xF447E06c
#data 0x814EE03c
#data 0x000BE000
#data 0x806e
;-------------------------------------------------------------------------------

loc_8C07D9AA:
#data 0x854e
#data 0x814E70Ff
#data 0x600F7001
#data 0x8B0A2008
#data 0x70018445
#data 0xE0788045
#data 0x8568814e
#data 0x63034000
#data 0x303C854e

loc_8C07D9CC:
#data 0x814e

loc_8C07D9CE:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C07D9D2:
#data 0x02A4

loc_8C07D9D4:
#data 0x0130
#data 0x01D0
#data 0x000001E9

#align4
loc_8C07D9DC:
#data 0xC17D5555

#align4
loc_8C07D9E0:
#data 0x417D5555

#align4
loc_8C07D9E4:
#data 0xBEA00000

#align4
loc_8C07D9E8:
#data 0x3EA00000

#align4
loc_8C07D9EC:
#data 0x908A7FF4
#data 0x5546E63c
#data 0x600C005c
#data 0x8F05881d
#data 0x9083F48d
#data 0x600C005c
#data 0x89248805

#align4
loc_8C07DA08:
#data 0x8045E005
#data 0x034D907d
#data 0x89022338
#data 0xA002C73e
#data 0xF308

loc_8C07DA1A:
#data 0xC73e
#data 0xF308

loc_8C07DA1E:
#data 0xE05c
#data 0x9072F437
#data 0x2338034d
#data 0xC73B8902
#data 0xF308A002

#align4
loc_8C07DA30:
#data 0xF308C73a

#align4
loc_8C07DA34:
#data 0xF437E068
#data 0xF447E060
#data 0xF447E06c
#data 0x00096063
#data 0xE000814e
#data 0x345C9460
#data 0x000B804e
#data 0x7F0c
;-------------------------------------------------------------------------------

loc_8C07DA52:
#data 0x854e
#data 0x814E70Ff
#data 0x600F7001
#data 0x8B1F2008
#data 0x70018445
#data 0x90508045
#data 0x2338034d
#data 0xC7288902
#data 0xF308A002

#align4
loc_8C07DA74:
#data 0xF308C727

#align4
loc_8C07DA78:
#data 0xF437E05c
#data 0x034D9045
#data 0x89022338
#data 0xA002C724
#data 0xF308

loc_8C07DA8A:
#data 0xC724
#data 0xF308

loc_8C07DA8E:
#data 0xE068
#data 0xE060F437
#data 0xE06CF447
#data 0x6063F447
#data 0x814E0009

#align4
loc_8C07DAA0:
#data 0x7F0C000b
;-------------------------------------------------------------------------------

#align4
loc_8C07DAA4:
#data 0x8828854e
#data 0x55468F04
#data 0xE000922e
#data 0x805E352c

#align4
loc_8C07DAB4:
#data 0x70FF854e
#data 0x7001814e
#data 0x2008600f
#data 0x84448B03
#data 0x000B7001
#data 0x8044
;-------------------------------------------------------------------------------

loc_8C07DACA:
#data 0xE15c
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
#data 0x000BF427
#data 0x01D00009
#data 0x013001E9
#data 0x000002A4
#data 0xC17D5555
#data 0x417D5555
#data 0xBEA00000
#data 0x3EA00000


loc_8C07DB20:
mov r4,r3
mov.l @(loc_8C07DBE0,pc),r1 ; r1 set to 0x8C153F40
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C07DB32:
#data 0x2FE6
#data 0x2FD66E43
#data 0x2FC6904e
#data 0xEB012FB6
#data 0x5DE64F22
#data 0x600C00Dc
#data 0x8F05881d
#data 0x9044EC00
#data 0x600C00Dc
#data 0x89048805

#align4
loc_8C07DB58:
#data 0x000960B3
#data 0xE02380E5
#data 0x0DC4

loc_8C07DB62:
#data 0x50E5
#data 0x600C8405
#data 0x8B048803
#data 0x700184E5
#data 0xE02380E5
#data 0x0DC4

loc_8C07DB76:
#data 0x85Ef
#data 0x89052008
#data 0x0DB4E023
#data 0x70FF85Ef
#data 0x81EFA08c

#align4
loc_8C07DB88:
#data 0x0DC4E023
#data 0x840550E5
#data 0x8801600c
#data 0xD2138B02
#data 0x64E3420b

#align4
loc_8C07DB9C:
#data 0x200885Ee
#data 0x85EE8903
#data 0xA06B70Ff
#data 0x81Ee

loc_8C07DBAA:
#data 0x9017
#data 0x222802Ec
#data 0xE0038963
#data 0x81EEE406
#data 0x00096043
#data 0x900E81Ef
#data 0x85DF05Ee
#data 0x8B162008
#data 0x03EC9008
#data 0x890B23B8
#data 0xF38DE05c
#data 0xFE37A00f
#data 0x01E901D0
#data 0x01B0019e

#align4
loc_8C07DBE0:
#data bank15.loc_8c153F40

loc_8C07DBE4:
#data bank03.loc_8c034dee

loc_8C07DBE8:
#data 0x025C909e
#data 0x8B022228
#data 0xF39DE05c
#data 0xFE37

loc_8C07DBF6:
#data 0xE05c
#data 0xF33DF3E6
#data 0x81DF005a
#data 0x03ECE021
#data 0x3343633c
#data 0x00EC8937
#data 0x600CD549
#data 0x89038805
#data 0x00EC9089
#data 0x8B198802

#align4
loc_8C07DC1C:
#data 0xE2429086
#data 0x700B0E24
#data 0x70F20EC5
#data 0x70260EC4
#data 0x84E20EC6
#data 0x600C6352
#data 0x4000D540
#data 0x023D737c
#data 0x03257201
#data 0x8055E002
#data 0x000960B3
#data 0xE0218056
#data 0x0E44A015

#align4
loc_8C07DC50:
#data 0xE241906c
#data 0x700B0E24
#data 0x70F20EC5
#data 0x70260EC4
#data 0x84E20EC6
#data 0x600C6352
#data 0x737C4000
#data 0x7201023d
#data 0xE0210325
#data 0x730103Ec
#data 0x0E34

loc_8C07DC7A:
#data 0xD230
#data 0x64E3420b

#align4
loc_8C07DC80:
#data 0x53E59055
#data 0x0E25023d
#data 0x53E5E034
#data 0xFE37F336
#data 0x53E5E038
#data 0xFE37F336
#data 0x53E5E03c
#data 0xFE37F336

#align4
loc_8C07DCA0:
#data 0x6BF64F26
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C07DCAC:
mov.l @(0x14,r4),r0
mov.b @(0x04,r0),r0
extu.b r0,r0
cmp/eq 0x02,r0
bf loc_8C07DCC4
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C07DD30,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;-------------------------------------------------------------------------------

loc_8C07DCC4:
mov.w @(loc_8C07DD2E,pc),r0 ; r0 set to 0x130
mov.l @(0x14,r4),r2
mov.w @(r0,r2),r3
mov.w r3,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x14,r4),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
rts
nop
;-------------------------------------------------------------------------------

loc_8C07DCE8:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0
mov.l @(loc_8C07DD40,pc),r1 ; r1 set to 0x8C153F48
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C07DCFA:
mov.w @(loc_8C07DD32,pc),r0 ; r0 set to 0x19e
mov.l r14,@-r15
mov r4,r14
sts.l pr,@-r15
mov.b @(r0,r14),r3
tst r3,r3
bt/s loc_8C07DD4c
mov 0x02,r4 ; r4 set to 0x02
mov.b @(0x05,r14),r0
add 0x01,r0 ; r0 set to 0x19f
mov.b r0,@(0x05,r14)
mov r4,r0 ; r0 set to 0x02
nop
mov.l @(loc_8C07DD44,pc),r3 ; r3 set to 0x8C04223a
mov 0x49,r5 ; r5 set to 0x49
mov.w r0,@(0x1C,r14)
jsr @r3
mov r14,r4 ; r4 ??? bc r14 is ???	
mov.l @(loc_8C07DD48,pc),r1 ; r1 set to 0x42CDB6Db
mov 0x38,r0 ; r0 set to 0x38
lds r1,fpul
bra loc_8C07DD76
fsts fpul,fr3
#data 0x01410411
#data 0x01A1

loc_8C07DD2E:
#data 0x0130

loc_8C07DD30:
#data 0x012c

loc_8C07DD32:
#data 0x019e
#data 0x8C2896B0
#data 0x8C26A518

#align4
loc_8C07DD3C:
#data bank04.loc_8c045748

loc_8C07DD40:
#data bank15.loc_8c153F48

loc_8C07DD44:
#data bank04.loc_8c04223a

loc_8C07DD48:
#data 0x42CDB6Db


loc_8C07DD4C:
mov.w @(0x1C,r14),r0
add 0xFF,r0
mov.w r0,@(0x1C,r14)
add 0x01,r0
exts.w r0,r0
tst r0,r0
bf loc_8C07DD8e
mov.b @(0x05,r14),r0
add 0x01,r0
mov.b r0,@(0x05,r14)
mov r4,r0
nop
mov.l @(loc_8C07DE78,pc),r3 ; r3 set to 0x8C04223a
mov 0x49,r5 ; r5 set to 0x49
mov.w r0,@(0x1C,r14)
jsr @r3
mov r14,r4
mov.l @(loc_8C07DE7C,pc),r1 ; r1 set to 0x42892492
mov 0x38,r0 ; r0 set to 0x38
lds r1,fpul
fsts fpul,fr3

loc_8C07DD76:
fmov.s @(r0,r14),fr2
mov r14,r5 ; r5 ??? bc r14 is ???	
mov.l @(loc_8C07DE80,pc),r3 ; r3 set to 0x8C10235C, r3 set to 0x8C10235c
mov r14,r4
fadd fr3,fr2
mov.w @(loc_8C07DE70,pc),r7 ; r7 set to 0xC9, r7 set to 0xC9
mov 0x01,r6 ; r6 set to 0x01, r6 set to 0x01
add 0x34,r5
fmov.s fr2,@(r0,r14)
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

loc_8C07DD8E:
lds.l @r15+,pr
mov.l @(loc_8C07DE84,pc),r2 ; r2 set to 0x8C045748
mov r14,r4
jmp @r2
mov.l @r15+,r14

#align4
loc_8C07DD98:
#data 0x70FF854e
#data 0x7001814e
#data 0x2008600f
#data 0x84448B02
#data 0x80447001

#align4
loc_8C07DDAC:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C07DDB0:
mov r4,r3
mov.l @(loc_8C07DE88,pc),r1 ; r1 set to 0x8C153F50
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C07DDC2:
#data 0x9056
#data 0x005C5546
#data 0x881D600c
#data 0x90518B0a
#data 0x600C005c
#data 0x8B058805
#data 0x84355345
#data 0x600CE305
#data 0x8B023033

#align4
loc_8C07DDE4:
#data 0x000BE002
#data 0x8045
;-------------------------------------------------------------------------------

loc_8C07DDEA:
#data 0x5045
#data 0x600C8405
#data 0x8B028804
#data 0x70018445
#data 0x8045

loc_8C07DDFA:
#data 0x903c
#data 0x023D5345
#data 0xE0340425
#data 0xF3365345
#data 0xE038F437
#data 0xF3365345
#data 0xE03CF437
#data 0xF3365345
#data 0xE023F437
#data 0x2338034c
#data 0xC71A890d
#data 0xE234F408
#data 0x034D9025
#data 0x8D022338
#data 0xA011324c
#data 0xF34c

loc_8C07DE36:
#data 0xD116
#data 0xA00D415a
#data 0xF30d

loc_8C07DE3E:
#data 0xC715
#data 0xE234F408
#data 0x034D9017
#data 0x8D022338
#data 0xA003324c
#data 0xF34c

loc_8C07DE52:
#data 0xD111
#data 0xF30D415a

#align4
loc_8C07DE58:
#data 0xE038F228
#data 0xF230D10f
#data 0xF22A415a
#data 0xF30DF246
#data 0xF427F231
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C07DE70:
#data 0x00C9
#data 0x01D0
#data 0x013001E9

#align4
loc_8C07DE78:
#data bank04.loc_8c04223a

loc_8C07DE7C:
#data 0x42892492

#align4
loc_8C07DE80:
#data bank10.loc_8c10235c

loc_8C07DE84:
#data bank04.loc_8c045748

loc_8C07DE88:
#data bank15.loc_8c153F50
#data 0x42E00000
#data 0xC2E00000
#data 0xC1955555
#data 0x41955555
#data 0x42BFFFFf

#align4
loc_8C07DEA0:
#data 0x6E432FE6
#data 0x4F229082
#data 0x004C54E6
#data 0x881D600c
#data 0x907C8B04
#data 0x600C004c
#data 0x89058805

#align4
loc_8C07DEBC:
#data 0x700184E5
#data 0x4F2680E5
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C07DEC8:
#data 0x843553E5
#data 0x600CE305
#data 0x8B093033
#data 0x64E384E5
#data 0xE603D237
#data 0x80E57001
#data 0x4F26E517
#data 0x6EF6422b

#align4
loc_8C07DEE8:
#data 0x03EC9062
#data 0x891D2338
#data 0x0E34E300
#data 0x02ECE023
#data 0x890A2228
#data 0xE520D32f
#data 0x64E3430b
#data 0xE512D22e
#data 0x420BE600
#data 0xA00964E3
#data 0x0009

loc_8C07DF12:
#data 0xD22a
#data 0x420BE520
#data 0xD32964E3
#data 0xE601E512
#data 0x64E3430b

#align4
loc_8C07DF24:
#data 0xE514D227
#data 0x64E3420b

#align4
loc_8C07DF2C:
#data 0xD3264F26
#data 0x432B64E3
#data 0x4F266EF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C07DF3C:
mov.l @(0x14,r4),r0
mov.b @(0x04,r0),r0
extu.b r0,r0
cmp/eq 0x02,r0
bf loc_8C07DF54
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C07DFB2,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;-------------------------------------------------------------------------------

loc_8C07DF54:
mov.w @(loc_8C07DFB4,pc),r0 ; r0 set to 0x130
mov.l @(0x14,r4),r2
mov.w @(r0,r2),r3
mov.w r3,@(r0,r4)
mov 0x34,r0 ; r0 set to 0x34
mov.l @(0x14,r4),r2
fmov.s @(r0,r2),fr3
fmov.s fr3,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x3C,r0 ; r0 set to 0x3c
mov.l @(0x14,r4),r3
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r4)
mov 0x23,r0 ; r0 set to 0x23
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C07DF98
mova @(loc_8C07DFCC,pc),r0  ; r0 set to 0x8C07DFCc
fmov.s @r0,fr4
mov 0x34,r2 ; r2 set to 0x34
mov.w @(loc_8C07DFB4,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C07DF90
add r4,r2 ; r2 ??? bc r4 is ???	
bra loc_8C07DFDe
fmov fr4,fr3

loc_8C07DF90:
mov.l @(loc_8C07DFD0,pc),r1 ; r1 set to 0xC2E00000
lds r1,fpul
bra loc_8C07DFDe
fsts fpul,fr3

loc_8C07DF98:
mova @(loc_8C07DFD4,pc),r0  ; r0 init to 0x8C07DFD4
fmov.s @r0,fr4
mov 0x34,r2 ; r2 set to 0x34
mov.w @(loc_8C07DFB4,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3
tst r3,r3
bt/s loc_8C07DFD8
add r4,r2 ; r2 ??? bc r4 is ???	
bra loc_8C07DFDe
fmov fr4,fr3
#data 0x01E901D0
#data 0x0141

loc_8C07DFB2:
#data 0x012c

loc_8C07DFB4:
#data 0x0130
#data 0x0000

#align4
loc_8C07DFB8:
#data bank03.loc_8c034e8c

loc_8C07DFBC:
#data bank04.loc_8c042008

loc_8C07DFC0:
#data loc_8C07A490

loc_8C07DFC4:
#data loc_8C07A456

loc_8C07DFC8:
#data bank03.loc_8c034dee

loc_8C07DFCC:
#data 0x42E00000

#align4
loc_8C07DFD0:
#data 0xC2E00000

#align4
loc_8C07DFD4:
#data 0xC1955555


loc_8C07DFD8:
mov.l @(loc_8C07E0F0,pc),r1 ; r1 set to 0x41955555
lds r1,fpul
fsts fpul,fr3

loc_8C07DFDE:
fmov.s @r2,fr2
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @(loc_8C07E0F4,pc),r1 ; r1 set to 0x42BFFFFF, r1 set to 0x42BFFFFf
fadd fr3,fr2
lds r1,fpul
fmov.s fr2,@r2
fmov.s @(r0,r4),fr2
fsts fpul,fr3
fsub fr3,fr2
fmov.s fr2,@(r0,r4)
rts
nop
;-------------------------------------------------------------------------------

loc_8C07DFF6:
mov r4,r3
mov.l @(loc_8C07E0F8,pc),r1 ; r1 set to 0x8C153F5c
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C07E008:
mov.w @(loc_8C07E0E4,pc),r0 ; r0 set to 0x143
mov.b @(r0,r4),r3
cmp/pz r3
bt loc_8C07E01e
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0 ; r0 set to 0x144
mov.b r0,@(0x04,r4)
mov.w @(loc_8C07E0E6,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;-------------------------------------------------------------------------------

loc_8C07E01E:
mov.l @(loc_8C07E0FC,pc),r3 ; r3 set to 0x8C034DEe
jmp @r3
nop
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C07E028:
#data 0x6E432FE6
#data 0x2FD6D134
#data 0x84E54F22
#data 0x4008600c
#data 0x430B031e
#data 0x90535DE6
#data 0x600C00Dc
#data 0x8B04881d
#data 0x00DC904f
#data 0x8803600c
#data 0x8905

loc_8C07E052:
#data 0x84E4
#data 0x7001E300
#data 0x904480E4
#data 0x0E34

loc_8C07E05E:
#data 0x4F26
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C07E066:
mov.l @(0x18,r4),r0
mov.b @(0x06,r0),r0
extu.b r0,r0
cmp/eq 0x02,r0
bt loc_8C07E078
mov.b @(0x04,r4),r0
add 0x01,r0
rts
mov.b r0,@(0x04,r4)
;-------------------------------------------------------------------------------

#align4
loc_8C07E078:
#data 0xF28D9038
#data 0xF324F346
#data 0xD120890a
#data 0x415AF246
#data 0xF231F30d
#data 0xF146F427
#data 0xF215F28d
#data 0xF4278B00

#align4
loc_8C07E098:
#data 0x034C9024
#data 0x89064311
#data 0xE3008445
#data 0x80457001
#data 0x000B901d
#data 0x0434
;-------------------------------------------------------------------------------

loc_8C07E0AE:
#data 0xD313
#data 0x0009432b
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C07E0B8:
mov r4,r3
mov.l @(loc_8C07E108,pc),r1 ; r1 set to 0x8C153F64
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C07E0CA:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(0x18,r14),r4
mov.b @(0x05,r4),r0
tst r0,r0
bt loc_8C07E10c
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x05,r14)
mov 0x0A,r0 ; r0 set to 0x0a
bra loc_8C07E1A4
mov.w r0,@(0x1C,r14)

loc_8C07E0E4:
#data 0x0143

loc_8C07E0E6:
#data 0x012c
#data 0x01E901D0
#data 0x00000108

#align4
loc_8C07E0F0:
#data 0x41955555

#align4
loc_8C07E0F4:
#data 0x42BFFFFf

#align4
loc_8C07E0F8:
#data bank15.loc_8c153F5C

loc_8C07E0FC:
#data bank03.loc_8c034dee

loc_8C07E100:
#data bank15.loc_8c153F60
#data 0x3D75C28f

#align4
loc_8C07E108:
#data bank15.loc_8c153F64

loc_8C07E10C:
#data 0x00EC9091
#data 0x8F078801
#data 0x908CED00
#data 0xD348E517
#data 0x0ED4E600
#data 0x64E3430b

#align4
loc_8C07E124:
#data 0x00EC9085
#data 0x8B068802
#data 0xE5179081
#data 0xE602D342
#data 0x430B0ED4
#data 0x64E3

loc_8C07E13A:
#data 0x907a
#data 0x880300Ec
#data 0x90768B06
#data 0xD33DE517
#data 0x0ED4E601
#data 0x64E3430b

#align4
loc_8C07E150:
#data 0x00EC906f
#data 0x8B068804
#data 0xE517906b
#data 0xE600D337
#data 0x430B0ED4
#data 0x64E3

loc_8C07E166:
#data 0x9064
#data 0x880500Ec
#data 0x90608B06
#data 0xD332E517
#data 0x0ED4E602
#data 0x64E3430b

#align4
loc_8C07E17C:
#data 0x00EC9059
#data 0x8B098806
#data 0xE5179055
#data 0xE601D32c
#data 0x430B0ED4
#data 0x84E564E3
#data 0x80E57001

#align4
loc_8C07E198:
#data 0xD3294F26
#data 0x6DF664E3
#data 0x6EF6432b


loc_8C07E1A4:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C07E1AC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(loc_8C07E240,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov.l @(0x18,r14),r13
mov.b @(0x05,r13),r0
mov.w @(loc_8C07E234,pc),r4 ; r4 set to 0x2A4
tst r0,r0
bt/s loc_8C07E1Ce
add r13,r4 ; r4 ??? bc r13 is ???	
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x05,r14)
mov 0x0A,r0 ; r0 set to 0x0a
bra loc_8C07E1E8
mov.w r0,@(0x1C,r14)

loc_8C07E1CE:
#data 0x9032
#data 0x431103Ec
#data 0x84E48908
#data 0x7001E500
#data 0x902B80E4
#data 0x60530E54
#data 0x80410009


loc_8C07E1E8:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C07E1F0:
#data 0x9022D114
#data 0xF246415a
#data 0xF30D961c
#data 0x5546F231
#data 0xF146F427
#data 0xF215F28d
#data 0x365C8F01
#data 0xF427

loc_8C07E20E:
#data 0x854e
#data 0x814E70Ff
#data 0x600F7001
#data 0x89084011
#data 0xE5008444
#data 0x80447001
#data 0x04549008
#data 0x00096053
#data 0x8061

loc_8C07E22E:
#data 0x000b
#data 0x01410009

loc_8C07E234:
#data 0x02A4
#data 0x0143
#data 0x0108012c

#align4
loc_8C07E23C:
#data loc_8C07A490

loc_8C07E240:
#data bank03.loc_8c034dee
#data 0x3D75C28f


loc_8C07E248:
mov.l r14,@-r15
mov r4,r14
mov.b @(0x05,r14),r0
mov.l @(loc_8C07E374,pc),r1 ; r1 set to 0x8C153F70
extu.b r0,r0
mov.l @(0x18,r14),r5
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C07E25C:
mov.w @(loc_8C07E36A,pc),r0 ; r0 set to 0x19e
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
sts.l pr,@-r15
mov.b @(r0,r14),r3
mov.l @(loc_8C07E378,pc),r13 ; r13 set to 0x8C034E8c
tst r3,r3
bt loc_8C07E33a
mov 0x21,r0 ; r0 set to 0x21
mov.b @(r0,r14),r3
mov 0x03,r5 ; r5 set to 0x03
extu.b r3,r3
cmp/ge r5,r3
bf loc_8C07E2Ba
mov.w @(loc_8C07E36C,pc),r0 ; r0 set to 0x1B0
mov.l @(r0,r14),r4
mov.b @(0x03,r4),r0
tst r0,r0
bf loc_8C07E2A4
mov.w @(loc_8C07E36E,pc),r0 ; r0 set to 0x411
mov.b @(r0,r4),r2
tst r2,r2
bf loc_8C07E2A0
mov.w @(loc_8C07E36A,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
tst 0x01,r0
bf loc_8C07E2Ba
mov r5,r0 ; r0 set to 0x03
nop
mov.b r0,@(0x05,r14)
mov 0x3C,r0 ; r0 set to 0x3c
bra loc_8C07E2Ae
mov.w r0,@(0x1C,r14)

loc_8C07E2A0:
bra loc_8C07E2A8
mov r5,r0

loc_8C07E2A4:
mov.b @(0x05,r14),r0
add 0x01,r0

loc_8C07E2A8:
mov.b r0,@(0x05,r14)
mov 0x28,r0 ; r0 set to 0x28, r0 set to 0x28
mov.w r0,@(0x1C,r14)

loc_8C07E2AE:
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17, r5 set to 0x17
mov 0x1D,r6 ; r6 set to 0x1D, r6 set to 0x1D, r6 set to 0x1d
jsr @r13
mov r14,r4
bra loc_8C07E424
nop

loc_8C07E2BA:
#data 0x84E7
#data 0xD62FE500
#data 0x8806600c
#data 0xE4428F19
#data 0xE3459052
#data 0x70010E44
#data 0x70040E44
#data 0x700B0E34
#data 0x70F20E55
#data 0x70260E54
#data 0x84E20E56
#data 0x600C6362
#data 0x737C4000
#data 0x7201023d
#data 0xE0210325
#data 0x730103Ec
#data 0x0E34

loc_8C07E2FA:
#data 0x84E7
#data 0x880C600c
#data 0x90358B18
#data 0x0E44E340
#data 0x0E447001
#data 0x0E347004
#data 0x0E55700b
#data 0x0E5470F2
#data 0x0E567026
#data 0x636284E2
#data 0x4000600c
#data 0x023D737c
#data 0x03257201
#data 0x03ECE021
#data 0x0E347301

#align4
loc_8C07E334:
#data 0x700184E7
#data 0x80E7

loc_8C07E33A:
#data 0x85Ee
#data 0x81EE70Ff
#data 0x600F7001
#data 0x8B062008
#data 0xE51784E5
#data 0x7001E601
#data 0x4D0B80E5
#data 0x64E3

loc_8C07E356:
#data 0xE050
#data 0xF3E6F49d
#data 0x8F0FF345
#data 0xFE4764E3
#data 0xA015E054
#data 0xFE47

loc_8C07E36A:
#data 0x019e

loc_8C07E36C:
#data 0x01B0

loc_8C07E36E:
#data 0x0411
#data 0x0000019c

#align4
loc_8C07E374:
#data bank15.loc_8c153F70

loc_8C07E378:
#data bank03.loc_8c034e8c
#data 0x8C2896B0

#align4
loc_8C07E380:
#data 0xF408C747
#data 0xF3E6E050
#data 0xFE37F340
#data 0xF2E6E054
#data 0xFE27F240

#align4
loc_8C07E394:
#data 0x430BD343
#data 0xE15C0009
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x85EFFE27
#data 0x435A6303
#data 0xC733F32d
#data 0xF208D236
#data 0xF108C732
#data 0xF322C732
#data 0xD332F008
#data 0xF300F313
#data 0x045AF33d
#data 0x2439420b
#data 0xF40CC730
#data 0xE038F308
#data 0xF432F2E6
#data 0xFE27F240
#data 0x70FA85Ef
#data 0x600F81Ef
#data 0x8F022008
#data 0x904164E3
#data 0x81Ef

loc_8C07E41A:
#data 0x4F26
#data 0x6DF6D328
#data 0x6EF6432b


loc_8C07E424:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C07E42C:
mov.l r14,@-r15
mov r4,r14
mov 0x50,r0 ; r0 set to 0x50
fldi1 fr4
sts.l pr,@-r15
fmov.s @(r0,r14),fr3
fcmp/gt fr4,fr3
bf/s loc_8C07E446
mov r14,r4
fmov.s fr4,@(r0,r14)
mov 0x54,r0 ; r0 set to 0x54
bra loc_8C07E45a
fmov.s fr4,@(r0,r14)

loc_8C07E446:
mova @(loc_8C07E4A0,pc),r0  ; r0 init to 0x8C07E4A0
fmov.s @r0,fr4
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r14),fr3
fadd fr4,fr3
fmov.s fr3,@(r0,r14)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r14),fr2
fadd fr4,fr2
fmov.s fr2,@(r0,r14)

loc_8C07E45A:
mov.l @(loc_8C07E4A4,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
jsr @r3
nop
mov.w @(loc_8C07E49E,pc),r0 ; r0 set to 0x143, r0 set to 0x143
mov.b @(r0,r14),r2
cmp/pz r2
bt loc_8C07E47c
mov.b @(0x05,r14),r0
mov r14,r4
mov.l @(loc_8C07E4C4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
mov 0x1E,r6 ; r6 set to 0x1E, r6 set to 0x1e
add 0x01,r0 ; r0 set to 0x144, r0 set to 0x144
mov.b r0,@(0x05,r14)
mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
lds.l @r15+,pr
jmp @r3
mov.l @r15+,r14

loc_8C07E47C:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C07E482:
mov.l r14,@-r15
mov r4,r14
mov 0x50,r0 ; r0 set to 0x50
fldi1 fr4
sts.l pr,@-r15
fmov.s @(r0,r14),fr3
fcmp/gt fr4,fr3
bf/s loc_8C07E4C8
mov r14,r4
fmov.s fr4,@(r0,r14)
mov 0x54,r0 ; r0 set to 0x54
bra loc_8C07E4Dc
fmov.s fr4,@(r0,r14)
#data 0x0168

loc_8C07E49E:
#data 0x0143

#align4
loc_8C07E4A0:
#data 0x3D23D70a

#align4
loc_8C07E4A4:
#data bank03.loc_8c034dee
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C07E4B8:
#data bank11.loc_8c11E860
#data 0x40A00000

#align4
loc_8C07E4C0:
#data bank04.loc_8c045748

loc_8C07E4C4:
#data bank03.loc_8c034e8c

loc_8C07E4C8:
#data 0xF408C74a
#data 0xF3E6E050
#data 0xFE37F340
#data 0xF2E6E054
#data 0xFE27F240

#align4
loc_8C07E4DC:
#data 0x430BD346
#data 0xD1460009
#data 0xF2E6E050
#data 0xF30D415a
#data 0xFE27F231
#data 0xF28DF1E6
#data 0x8900F125
#data 0xFE27

loc_8C07E4FA:
#data 0x9077
#data 0x431103Ec
#data 0x84E48905
#data 0x7001E300
#data 0x907080E4
#data 0x0E34

loc_8C07E50E:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C07E514:
mov.l r14,@-r15
mov r4,r14
mov 0x50,r0 ; r0 set to 0x50
fldi1 fr4
sts.l pr,@-r15
fmov.s @(r0,r14),fr3
fcmp/gt fr4,fr3
bf/s loc_8C07E52e
mov r14,r4
fmov.s fr4,@(r0,r14)
mov 0x54,r0 ; r0 set to 0x54
bra loc_8C07E542
fmov.s fr4,@(r0,r14)

loc_8C07E52E:
mova @(loc_8C07E5F4,pc),r0  ; r0 init to 0x8C07E5F4
fmov.s @r0,fr4
mov 0x50,r0 ; r0 set to 0x50
fmov.s @(r0,r14),fr3
fadd fr4,fr3
fmov.s fr3,@(r0,r14)
mov 0x54,r0 ; r0 set to 0x54
fmov.s @(r0,r14),fr2
fadd fr4,fr2
fmov.s fr2,@(r0,r14)

loc_8C07E542:
mov.l @(loc_8C07E5F8,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
jsr @r3
nop
mov.w @(0x1C,r14),r0
add 0xFF,r0 ; r0 set to 0x53
mov.w r0,@(0x1C,r14)
add 0x01,r0 ; r0 set to 0x54
exts.w r0,r0 ; r0 ??	
tst r0,r0
bf loc_8C07E568
mov.b @(0x04,r14),r0
mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.w @(loc_8C07E5EE,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
mov.b r3,@(r0,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C07E568:
#data 0x31ECE15c
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x630385Ef
#data 0xF32D435a
#data 0xD219C715
#data 0xC715F208
#data 0xC715F108
#data 0xF008F322
#data 0xF313D314
#data 0xF33DF300
#data 0x420B045a
#data 0xC7132439
#data 0xF308F40c
#data 0xF2E6E038
#data 0xF240F432
#data 0x85EFFE27
#data 0x81EF70Fa
#data 0x2008600f
#data 0x90058B01
#data 0x81Ef

loc_8C07E5E6:
#data 0x4F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x0143

loc_8C07E5EE:
#data 0x012c
#data 0x00000168

#align4
loc_8C07E5F4:
#data 0x3D23D70a

#align4
loc_8C07E5F8:
#data bank03.loc_8c034dee
#data 0x3D4CCCCd
#data 0x47800000
#data 0x43B40000
#data 0x3F000000
#data 0x0000FFFf

#align4
loc_8C07E610:
#data bank11.loc_8c11E860
#data 0x40A00000

#align4
loc_8C07E618:
#data 0x6E432FE6
#data 0x2FD6D137
#data 0x84E54F22
#data 0x4008600c
#data 0x430B031e
#data 0x94605DE6
#data 0x844134Dc
#data 0x8B022008
#data 0x200884D5
#data 0x8906

loc_8C07E63E:
#data 0x84E4
#data 0x7001E500
#data 0x905580E4
#data 0x24500E54

#align4
loc_8C07E64C:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C07E654:
#data 0x2FE6904f
#data 0x4F226E43
#data 0x880100Ec
#data 0xD1278B0b
#data 0x415A9048
#data 0xF30DF2E6
#data 0xFE27F231
#data 0xF28DF1E6
#data 0x8B00F215
#data 0xFE27

loc_8C07E67A:
#data 0xD322
#data 0x64E3430b
#data 0x02EC903b
#data 0x89054211
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349030

#align4
loc_8C07E694:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C07E69A:
#data 0x2FE6
#data 0xD3194F22
#data 0x6E43430b
#data 0x00EC9027
#data 0x8B0B8801
#data 0x9023D114
#data 0xF2E6415a
#data 0xF231F30d
#data 0xF1E6FE27
#data 0xF215F28d
#data 0xFE278B00

#align4
loc_8C07E6C4:
#data 0x03EC9019
#data 0x89054311
#data 0xE30084E4
#data 0x80E47001
#data 0x0E34900e

#align4
loc_8C07E6D8:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C07E6DE:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C07E6F4,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;-------------------------------------------------------------------------------

loc_8C07E6EC:
mov.l @(loc_8C07E708,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop
#data 0x02A4

loc_8C07E6F4:
#data 0x012c
#data 0x0141
#data 0x01430108

#align4
loc_8C07E6FC:
#data bank15.loc_8c153F80
#data 0x3D75C28F

#align4
loc_8C07E704:
#data bank03.loc_8c034dee

loc_8C07E708:
#data bank04.loc_8c0450C0

loc_8C07E70C:
#data 0x4F222FE6
#data 0x2F507FFc
#data 0xD346E501
#data 0xE6006E43
#data 0x6463430b
#data 0x8D172008
#data 0xE0206403
#data 0x957BD342
#data 0x62F01434
#data 0x042435Ec
#data 0x03EC9072
#data 0x93700434
#data 0x84E114E6
#data 0xE0268041
#data 0x906B0435
#data 0x906A02Ed
#data 0x855F0425
#data 0x815F7001

#align4
loc_8C07E754:
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C07E760:
mov.l r14,@-r15
sts.l pr,@-r15
bsr loc_8C07ED46
mov r4,r14
mov.b @(0x04,r14),r0
mov r14,r4
mov.l @(loc_8C07E838,pc),r1 ; r1 set to 0x8C153F88
extu.b r0,r0
lds.l @r15+,pr
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
mov.l @r15+,r14

loc_8C07E77A:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.w @(loc_8C07E826,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C07E822,pc),r4 ; r4 set to 0xCc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r4 ; r4 ??? bc r14 is ???	
mov.w @(loc_8C07E826,pc),r2 ; r2 set to 0xDc
add r14,r1 ; r1 ??? bc r14 is ???	
add 0x01,r0
mov.l @(loc_8C07E83C,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14)
mov.w @(loc_8C07E828,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r13
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C07E82A,pc),r0 ; r0 set to 0x12c
mov 0x01,r5 ; r5 set to 0x01
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
mov.w @(loc_8C07E81C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C07E840,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x20,r2 ; r2 set to 0x20
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x00,r12 ; r12 set to 0x00
mov.b r3,@(r0,r14)
mov 0x24,r3 ; r3 set to 0x24
mov.w @(loc_8C07E82C,pc),r0 ; r0 set to 0x13d
mov.b r2,@(r0,r14)
add 0xFF,r0 ; r0 set to 0x13c
mov.b r2,@(r0,r14)
add 0x03,r0 ; r0 set to 0x13f
mov.b r3,@(r0,r14)
add 0xFF,r0 ; r0 set to 0x13e
mov.b r3,@(r0,r14)
mov r3,r0 ; r0 set to 0x24
nop
mov.b r12,@(r0,r14)
mov.w @(loc_8C07E820,pc),r0 ; r0 set to 0x158
mov.w @r4,r3 ; r3 ??? bc r4 is ???	
mov.w @(r0,r13),r2 ; r2 ??? bc r13 is ???	
cmp/eq r2,r3
bt loc_8C07E844
mov 0x02,r0 ; r0 set to 0x02
bra loc_8C07E92a
mov.b r0,@(0x04,r14)

loc_8C07E81C:
#data 0x01A3
#data 0x1400

loc_8C07E820:
#data 0x0158

loc_8C07E822:
#data 0x00Cc
#data 0x02A4

loc_8C07E826:
#data 0x00Dc

loc_8C07E828:
#data 0x00C0

loc_8C07E82A:
#data 0x012c

loc_8C07E82C:
#data 0x013d
#data 0x0000

#align4
loc_8C07E830:
#data bank04.loc_8c044F12

loc_8C07E834:
#data loc_8C07E760

loc_8C07E838:
#data bank15.loc_8c153F88

loc_8C07E83C:
#data bank12.loc_8c129560

loc_8C07E840:
#data bank12.loc_8c1294C8

loc_8C07E844:
#data 0xD455E021
#data 0xE0480D54
#data 0xE0200EC6
#data 0x909D07Ec
#data 0x03EC4700
#data 0xF3D6E034
#data 0x657C373c
#data 0x6353FE37
#data 0x353C4508
#data 0x66534500
#data 0xF3D6E038
#data 0xFE37364c
#data 0x6361C74a
#data 0x435AF608
#data 0xF42D8562
#data 0x435A6303
#data 0x02ED9085
#data 0x8D042228
#data 0xC745F52d
#data 0xF608F54d
#data 0xF44d

loc_8C07E896:
#data 0xE034
#data 0xF3E66B53
#data 0xE4443B4c
#data 0xE530F360
#data 0xE05CFE37
#data 0xE068FE47
#data 0x85B1FE57
#data 0x435A6303
#data 0xF32DE060
#data 0x85B3FE37
#data 0x435A6303
#data 0xF32DE06c
#data 0x9065FE37
#data 0x70010E44
#data 0x70040E44
#data 0x700B0E54
#data 0x70F20EC5
#data 0x0EC4D433
#data 0x0EC67026
#data 0x634284E2
#data 0x4000600c
#data 0x023D737c
#data 0x03257201
#data 0x0D549051
#data 0x0DC5700b
#data 0x0DC470F2
#data 0x0DC67026
#data 0x634284D2
#data 0x4000600c
#data 0x023D737c
#data 0x03257201
#data 0x0EC49042
#data 0xD32584B8
#data 0x660CE515
#data 0x64E3430b
#data 0x80E5E002
#data 0x000960C3
#data 0x80E6


loc_8C07E92A:
lds.l @r15+,pr
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C07E936:
mov.l r14,@-r15
mov 0x24,r0 ; r0 set to 0x24
mov 0x0B,r3 ; r3 set to 0x0b
mov r4,r14
mov.b r3,@(r0,r14)
mov r14,r4
mov.b @(0x05,r14),r0
mov.l @(loc_8C07E9B0,pc),r1 ; r1 set to 0x8C153F98
extu.b r0,r0 ; r0 set to 0x24
shll2 r0 ; r0 set to 0x90
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C07E950:
rts
nop
;-------------------------------------------------------------------------------

loc_8C07E954:
rts
nop
;-------------------------------------------------------------------------------

loc_8C07E958:
mov.l r14,@-r15
mov r4,r14
mov.l @(loc_8C07E9B4,pc),r1 ; r1 set to 0x8C153FA4
sts.l pr,@-r15
mov.b @(0x06,r14),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jsr @r3
nop
mov.l @(loc_8C07E9B8,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r14,r4
tst r0,r0
bf loc_8C07E980
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C07E980:
mov.w @(loc_8C07E99A,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C07E9Bc
lds.l @r15+,pr
mov r14,r4
bra loc_8C07E9F2
mov.l @r15+,r14
#data 0x013001A3
#data 0x01A1019c
#data 0x012c

loc_8C07E99A:
#data 0x019e

#align4
loc_8C07E99C:
#data bank13.loc_8c13AD64
#data 0xC2F00000
#data 0x42F00000
#data 0x8C2896B0

#align4
loc_8C07E9AC:
#data bank03.loc_8c034e8c

loc_8C07E9B0:
#data bank15.loc_8c153F98

loc_8C07E9B4:
#data bank15.loc_8c153FA4

loc_8C07E9B8:
#data bank03.loc_8c03340c


loc_8C07E9BC:
mov.w @(loc_8C07EAAA,pc),r0 ; r0 set to 0x19f
mov.b @(r0,r14),r2
tst r2,r2
bt loc_8C07E9D6
mov 0x00,r3 ; r3 set to 0x00
mov.b r3,@(r0,r14)
bsr loc_8C07E9F2
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_8C07EAB4,pc),r2 ; r2 set to 0x8C057B6e
mov r14,r4
jmp @r2
mov.l @r15+,r14

loc_8C07E9D6:
mov 0x24,r0 ; r0 set to 0x24
mov 0x0B,r3 ; r3 set to 0x0b
mov.b r3,@(r0,r14)
mov.l @(loc_8C07EAB8,pc),r3 ; r3 set to 0x8C034DEe
jsr @r3
mov r14,r4
lds.l @r15+,pr
mov.l @(loc_8C07EABC,pc),r2 ; r2 set to 0x8C045748
mov r14,r4
jmp @r2
mov.l @r15+,r14
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C07E9F2:
#data 0x2FE6
#data 0x2FD66E43
#data 0x4F22ED00
#data 0x700184E4
#data 0xC72F80E4
#data 0xE05CF308
#data 0xE060FE37
#data 0xFE37F38d
#data 0xF308C72c
#data 0xFE37E06c
#data 0x0ED6E048
#data 0x03ED9046
#data 0x89032338
#data 0xF308C728
#data 0xFE37E05c

#align4
loc_8C07EA2C:
#data 0x000960D3
#data 0xE515D326
#data 0xE60981Ee
#data 0x64E3430b
#data 0x54E684E1
#data 0x84416303
#data 0x8B013300
#data 0x04D4E021

#align4
loc_8C07EA4C:
#data 0x6DF64F26
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C07EA54:
mov.w @(loc_8C07EAAE,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
mov.b r3,@(r0,r4)
mov.b @(0x06,r4),r0
add 0x01,r0 ; r0 set to 0x12d
mov.b r0,@(0x06,r4)
mov.w @(loc_8C07EAAC,pc),r0 ; r0 set to 0x130
mov.w @(r0,r4),r3 ; r3 ??? bc r4 is ???	
tst r3,r3
bt loc_8C07EA7c
mov.w @(loc_8C07EAB0,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C07EA76
mova @(loc_8C07EAD0,pc),r0  ; r0 set to 0x8C07EAD0
bra loc_8C07EA8e
fmov.s @r0,fr3

loc_8C07EA76:
mova @(loc_8C07EAD4,pc),r0  ; r0 init to 0x8C07EAD4
bra loc_8C07EA8e
fmov.s @r0,fr3

loc_8C07EA7C:
mov.w @(loc_8C07EAB0,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r4),r3
tst r3,r3
bt loc_8C07EA8a
mova @(loc_8C07EAD8,pc),r0  ; r0 set to 0x8C07EAD8
bra loc_8C07EA8e
fmov.s @r0,fr3

loc_8C07EA8A:
mova @(loc_8C07EADC,pc),r0  ; r0 init to 0x8C07EADc
fmov.s @r0,fr3

loc_8C07EA8E:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr3,@(r0,r4)
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???, r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x00,r0
bt/s loc_8C07EAE0
mov 0x0C,r5 ; r5 set to 0x0C, r5 set to 0x0c
cmp/eq 0x01,r0
bt loc_8C07EB0c
cmp/eq 0x02,r0
bt loc_8C07EB3a
bra loc_8C07EB5e
nop

loc_8C07EAAA:
#data 0x019f

loc_8C07EAAC:
#data 0x0130

loc_8C07EAAE:
#data 0x012c

loc_8C07EAB0:
#data 0x01A3
#data 0x0000

#align4
loc_8C07EAB4:
#data bank05.loc_8c057B6e

loc_8C07EAB8:
#data bank03.loc_8c034dee

loc_8C07EABC:
#data bank04.loc_8c045748
#data 0xBFD55555
#data 0xBF892492
#data 0x3FD55555

#align4
loc_8C07EACC:
#data bank03.loc_8c034e8c

loc_8C07EAD0:
#data 0x40D55555

#align4
loc_8C07EAD4:
#data 0x40A00000

#align4
loc_8C07EAD8:
#data 0xC0D55555

#align4
loc_8C07EADC:
#data 0xC0A00000


loc_8C07EAE0:
mov r5,r0
nop
mov.w r0,@(0x1C,r4)
mov.w @(0x1C,r4),r0
mov.l @(loc_8C07EC20,pc),r3 ; r3 set to 0xE000
add 0xF9,r0
mov.l @(loc_8C07EC24,pc),r1 ; r1 set to 0x42F00000
mov.w r0,@(0x1E,r4)
mov 0x48,r0 ; r0 set to 0x48
mov.l r3,@(r0,r4)
mov.w @(loc_8C07EC18,pc),r0 ; r0 set to 0x130
lds r1,fpul
mov.w @(r0,r4),r2
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r4),fr2
fsts fpul,fr3
tst r2,r2
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mova @(loc_8C07EC28,pc),r0  ; r0 set to 0x8C07EC28
bra loc_8C07EB36
fmov.s @r0,fr2

#align4
loc_8C07EB0C:
#data 0x00096053
#data 0x854E814e
#data 0x70FB9381
#data 0x814FD144
#data 0x0436E048
#data 0x415A907a
#data 0xE038024d
#data 0xF30DF246
#data 0xF2302228
#data 0xC73FF427
#data 0xF208


loc_8C07EB36:
bra loc_8C07EB5c
mov 0x60,r0

loc_8C07EB3A:
#data 0xE000
#data 0x814E936e
#data 0xD13C854e
#data 0x814F70Fd
#data 0x0436E048
#data 0x415A9064
#data 0xE038024d
#data 0xF30DF246
#data 0xF2302228


loc_8C07EB5C:
fmov.s fr2,@(r0,r4)

loc_8C07EB5E:
mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5c
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
fmov.s @r1,fr3
fmov.s @(r0,r4),fr2
mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6c
add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
fadd fr3,fr2
rts
fmov.s fr2,@(r0,r4)
;-------------------------------------------------------------------------------

loc_8C07EB98:
mov.l r14,@-r15
mov 0x5C,r1 ; r1 set to 0x5c
mov r4,r14
add r14,r1 ; r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34
sts.l pr,@-r15
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x68,r1 ; r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s @r1,fr3
mov 0x60,r1 ; r1 set to 0x60
fmov.s @(r0,r14),fr2
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
bsr loc_8C07ED4a
mov r14,r4
mov.w @(0x1C,r14),r0
add 0xFF,r0 ; r0 set to 0x5f
mov.w r0,@(0x1C,r14)
add 0x01,r0 ; r0 set to 0x60
exts.w r0,r0 ; r0 ??	
cmp/pl r0
bt loc_8C07EC98
mov.b @(0x06,r14),r0
add 0x01,r0
mov.b r0,@(0x06,r14)
mov.w @(loc_8C07EC18,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
tst r3,r3
bt loc_8C07EC0a
mov.w @(loc_8C07EC1E,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C07EC04
mova @(loc_8C07EC38,pc),r0  ; r0 set to 0x8C07EC38
bra loc_8C07EC48
fmov.s @r0,fr3

loc_8C07EC04:
mova @(loc_8C07EC3C,pc),r0  ; r0 init to 0x8C07EC3c
bra loc_8C07EC48
fmov.s @r0,fr3

loc_8C07EC0A:
mov.w @(loc_8C07EC1E,pc),r0 ; r0 set to 0x1A3
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C07EC44
mova @(loc_8C07EC40,pc),r0  ; r0 set to 0x8C07EC40
bra loc_8C07EC48
fmov.s @r0,fr3

loc_8C07EC18:
#data 0x0130
#data 0x1000
#data 0x2000

loc_8C07EC1E:
#data 0x01A3

#align4
loc_8C07EC20:
#data 0x0000E000

#align4
loc_8C07EC24:
#data 0x42F00000

#align4
loc_8C07EC28:
#data 0x40092492
#data 0x424DB6Db
#data 0xC0092492
#data 0x42AB6DB6

#align4
loc_8C07EC38:
#data 0x40D55555

#align4
loc_8C07EC3C:
#data 0x40A00000

#align4
loc_8C07EC40:
#data 0xC0D55555


loc_8C07EC44:
mova @(loc_8C07ED7C,pc),r0  ; r0 init to 0x8C07ED7c
fmov.s @r0,fr3

loc_8C07EC48:
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
fmov.s fr3,@(r0,r14)
mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???	
extu.b r0,r0
cmp/eq 0x00,r0
bt loc_8C07EC62
cmp/eq 0x01,r0
bt loc_8C07EC74
cmp/eq 0x02,r0
bt loc_8C07EC86
bra loc_8C07EC98
nop

loc_8C07EC62:
mov.w @(loc_8C07ED72,pc),r3 ; r3 set to 0x2000
mov 0x48,r0 ; r0 set to 0x48
mov.l r3,@(r0,r14)
mov.w @(loc_8C07ED74,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r2
mova @(loc_8C07ED80,pc),r0  ; r0 set to 0x8C07ED80
tst r2,r2
bra loc_8C07EC94
fmov.s @r0,fr3

loc_8C07EC74:
mov.l @(loc_8C07ED84,pc),r2 ; r2 set to 0xE000
mov 0x48,r0 ; r0 set to 0x48
mov.l r2,@(r0,r14)
mov.w @(loc_8C07ED74,pc),r0 ; r0 set to 0x130
mov.w @(r0,r14),r3
mova @(loc_8C07ED88,pc),r0  ; r0 set to 0x8C07ED88
tst r3,r3
bra loc_8C07EC94
fmov.s @r0,fr3

loc_8C07EC86:
#data 0xE048
#data 0xE200F38d
#data 0x90710E26
#data 0x233803Ed

#align4
loc_8C07EC94:
#data 0xFE37E060


loc_8C07EC98:
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C07EC9E:
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
mov 0x60,r1 ; r1 set to 0x60
add r4,r1 ; r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6c
add r4,r1 ; r1 ??? bc r4 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r4)
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r4),fr2
fmov.s @r1,fr3
fadd fr3,fr2
rts
fmov.s fr2,@(r0,r4)
;-------------------------------------------------------------------------------

#align4
loc_8C07ECD8:
#data 0x4F222FE6
#data 0x430BD32b
#data 0xE15C6E43
#data 0x31ECD32a
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0x8B052008
#data 0xE30084E4
#data 0x80E47001
#data 0x0E349023

#align4
loc_8C07ED30:
#data 0x000B4F26
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C07ED36:
mov.w @(loc_8C07ED78,pc),r3 ; r3 set to 0x2A4
mov.l @(0x18,r4),r5
mov.l @(loc_8C07ED94,pc),r2 ; r2 set to 0x8C0450C0
add r3,r5
mov.w @(0x1E,r5),r0
add 0xFF,r0
jmp @r2
mov.w r0,@(0x1E,r5)

loc_8C07ED46:
rts
nop
;-------------------------------------------------------------------------------

loc_8C07ED4A:
mov.w @(0x1E,r4),r0
add 0xFF,r0
mov.w r0,@(0x1E,r4)
exts.w r0,r0
cmp/pl r0
bt loc_8C07EDB4
mov 0x01,r0 ; r0 set to 0x01
mov.w @(loc_8C07ED7A,pc),r5 ; r5 set to 0x800
mov.w r0,@(0x1E,r4)
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
extu.b r0,r0
cmp/eq 0x00,r0
bt loc_8C07ED98
cmp/eq 0x01,r0
bt loc_8C07EDA2
cmp/eq 0x02,r0
bt loc_8C07EDAc
bra loc_8C07EDB4
nop

loc_8C07ED72:
#data 0x2000

loc_8C07ED74:
#data 0x0130
#data 0x012c

loc_8C07ED78:
#data 0x02A4

loc_8C07ED7A:
#data 0x0800

#align4
loc_8C07ED7C:
#data 0xC0A00000

#align4
loc_8C07ED80:
#data 0xC02B6DB6

#align4
loc_8C07ED84:
#data 0x0000E000

#align4
loc_8C07ED88:
#data 0x402B6DB6

#align4
loc_8C07ED8C:
#data bank03.loc_8c034dee

loc_8C07ED90:
#data bank03.loc_8c0332E0

loc_8C07ED94:
#data bank04.loc_8c0450C0


loc_8C07ED98:
mov 0x48,r0 ; r0 set to 0x48
mov.l @(r0,r4),r3
add r5,r3
bra loc_8C07EDB4
mov.l r3,@(r0,r4)

loc_8C07EDA2:
mov 0x48,r0 ; r0 set to 0x48
mov.l @(r0,r4),r1
sub r5,r1
bra loc_8C07EDB4
mov.l r1,@(r0,r4)

#align4
loc_8C07EDAC:
#data 0x024EE048
#data 0x04263258


loc_8C07EDB4:
rts
nop
;-------------------------------------------------------------------------------
#data 0x4F222FE6
#data 0x2F507FFc
#data 0xD314E501
#data 0xE6006E43
#data 0x6463430b
#data 0x8D152008
#data 0xD3116403
#data 0x84E11434
#data 0x80419316
#data 0x0435E026
#data 0x62F0E020
#data 0x90100424
#data 0x03ED14E6
#data 0x0435900e
#data 0xF3E6900d
#data 0xF437900c
#data 0x814FE000
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------
#data 0x01581401
#data 0x041C00Cc
#data 0x000000D0

#align4
loc_8C07EE14:
#data bank04.loc_8c044F12

loc_8C07EE18:
#data loc_8C07EF74

loc_8C07EE1C:
#data 0x2FD62FE6
#data 0x4F222FC6
#data 0x2F527FF8
#data 0x60636D43
#data 0xD3600009
#data 0x80F4E501
#data 0x430BE602
#data 0x200864F2
#data 0x6E038F02
#data 0x0009A090

#align4
loc_8C07EE44:
#data 0xE120D35b
#data 0x1E3431Ec
#data 0x93A484D1
#data 0xE02680E1
#data 0x84F40E35
#data 0x909F2100
#data 0x1ED691A2
#data 0x31EC63F2
#data 0x02DD1E35
#data 0xD3539099
#data 0x90970E25
#data 0x9096F3D6
#data 0x700CFE37
#data 0x320C52E6
#data 0x70E4430b
#data 0xE1019091
#data 0x61E30E14
#data 0x715050E6
#data 0x80E28402
#data 0x840150E6
#data 0xE05080E1
#data 0xF33653E6
#data 0xE054FE37
#data 0xF33653E6
#data 0x907FFE37
#data 0x023C53E6
#data 0x70010E24
#data 0x023C53E6
#data 0xE0300E24
#data 0x023C53E6
#data 0x52E60E24
#data 0x7250D33e
#data 0xE00C430b
#data 0xE02451E6
#data 0x031CE430
#data 0xE539E20b
#data 0xE3400E34
#data 0xEC009067
#data 0x70010E44
#data 0x70020E44
#data 0x70FF0E34
#data 0xE0240E34
#data 0xE0340E24
#data 0xE442F3D6
#data 0xE038FE37
#data 0xFE37F3D6
#data 0x0E449056
#data 0x0E447001
#data 0x0E547004
#data 0xD42D700b
#data 0x70F20EC5
#data 0x70260EC4
#data 0xE6040EC6
#data 0x634284E2
#data 0x4000600c
#data 0x023D737c
#data 0x03257201
#data 0x0D549041
#data 0x0DC5700b
#data 0x0DC470F2
#data 0x0DC67026
#data 0x634284D2
#data 0x4000600c
#data 0x023D737c
#data 0x03257201
#data 0xE516D31e
#data 0x64E3430b
#data 0x700184E4
#data 0xE00180E4
#data 0x902480E5
#data 0x60C30EC4
#data 0x81EF0009

#align4
loc_8C07EF64:
#data 0x000960E3
#data 0x4F267F08
#data 0x6DF66CF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C07EF74:
#data 0x6E432FE6
#data 0x84E44F22
#data 0x600CE302
#data 0x89013033
#data 0x64E3B42c

#align4
loc_8C07EF88:
#data 0x64E384E4
#data 0x600CD10e
#data 0x40084F26
#data 0x432B031e
#data 0x14016EF6
#data 0x00CC0158
#data 0x00D0041c
#data 0x012C00Dc
#data 0x013C01A3
#data 0x01A1019c

#align4
loc_8C07EFB0:
#data bank04.loc_8c044F12

loc_8C07EFB4:
#data loc_8C07EF74

loc_8C07EFB8:
#data bank12.loc_8c129560

loc_8C07EFBC:
#data bank12.loc_8c1294C8
#data 0x8C2896B0

#align4
loc_8C07EFC4:
#data bank03.loc_8c034e8c

loc_8C07EFC8:
#data bank15.loc_8c153FB0


loc_8C07EFCC:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C07F13E,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C07F13C,pc),r5 ; r5 set to 0xCc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r5 ; r5 ??? bc r14 is ???	
mov.w @(loc_8C07F13E,pc),r2 ; r2 set to 0xDc
add r14,r1 ; r1 ??? bc r14 is ???	
add 0x01,r0
mov.l @(loc_8C07F154,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14)
mov 0x14,r0 ; r0 set to 0x14
mov.w r0,@(0x1C,r14)
mov.w @(loc_8C07F140,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r13
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C07F142,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C07F144,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C07F158,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x40,r6 ; r6 set to 0x40
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov 0x00,r4 ; r4 set to 0x00
mov.b r3,@(r0,r14)
mov 0x0B,r3 ; r3 set to 0x0b
mov.w @(loc_8C07F146,pc),r0 ; r0 set to 0x13c
mov.b r6,@(r0,r14)
add 0x01,r0 ; r0 set to 0x13d
mov.b r4,@(r0,r14)
add 0x02,r0 ; r0 set to 0x13f
mov.b r6,@(r0,r14)
add 0xFF,r0 ; r0 set to 0x13e
mov.b r6,@(r0,r14)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14)
mov.w @(loc_8C07F148,pc),r0 ; r0 set to 0x158
mov.w @r5,r2
mov.w @(r0,r13),r3 ; r3 ??? bc r13 is ???	
cmp/eq r3,r2
bt loc_8C07F06c
mov 0x02,r0 ; r0 set to 0x02
bra loc_8C07F134
mov.b r0,@(0x04,r14)

#align4
loc_8C07F06C:
#data 0xF48DE034
#data 0xF74CF3D6
#data 0xE038FE37
#data 0xF54CF3D6
#data 0x9064FE37
#data 0x233803Dd
#data 0xF64C8D05
#data 0xF808C734
#data 0xF68CF58c
#data 0xF78c

loc_8C07F092:
#data 0xE034
#data 0xF370F3E6
#data 0xC731FE37
#data 0xE038F708
#data 0xF370F3E6
#data 0x9051FE37
#data 0x600C00Dc
#data 0x8B038802
#data 0xF3E6E038
#data 0xFE37F370

#align4
loc_8C07F0B8:
#data 0xFE57E05c
#data 0xFE67E068
#data 0xF308C728
#data 0xE542E060
#data 0xE06CFE37
#data 0xE639FE47
#data 0x0E54903d
#data 0x0E547001
#data 0x0E647004
#data 0x0E45700b
#data 0x0E4470F2
#data 0xD5207026
#data 0x84E20E46
#data 0x600C6352
#data 0x737C4000
#data 0x7201023d
#data 0x90290325
#data 0x700B0D64
#data 0x70F20D45
#data 0x70260D44
#data 0xE6020D46
#data 0x635284D2
#data 0x600CE516
#data 0x737C4000
#data 0x7201023d
#data 0xD3130325
#data 0x64E3430b
#data 0xD312E201
#data 0x64E32E20
#data 0x6DF64F26
#data 0x6EF6432b


loc_8C07F134:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C07F13C:
	#data 0x00Cc

loc_8C07F13E:
	#data 0x00Dc

loc_8C07F140:
	#data 0x00C0

loc_8C07F142:
	#data 0x012c

loc_8C07F144:
	#data 0x01A3

loc_8C07F146:
	#data 0x013c

loc_8C07F148:
	#data 0x0158

loc_8C07F14a:
	#data 0x0130

loc_8C07F14c:
	#data 0x01F9

loc_8C07F14e:
	#data 0x019C

loc_8C07F150:
	#data 0x01A1

#align4
loc_8C07F154:
	#data bank12.loc_8c129560

loc_8C07F158:
	#data bank12.loc_8c1294C8

loc_8C07F15c:
	#data 0x80000000

loc_8C07F160:
	#data 0x432B6DB6

loc_8C07F164:
	#data 0x424DB6Db

loc_8C07F168:
	#data 0x8C2896B0

loc_8C07F16c:
	#data bank03.loc_8c034e8c

loc_8C07F170:
	#data bank10.loc_8c104434

;==============================================
loc_8C07F174:
	mov.l r14,@-r15
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x0B,r3 ; r3 set to 0x0b
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov r14,r4
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C07F190,pc),r1 ; r1 set to 0x8C153FC0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3 ; r3 ??	
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4
loc_8C07F190:
	#data bank15.loc_8c153FC0

;==============================================
loc_8C07F194:
#data 0x6E432FE6
#data 0x2FC62FD6
#data 0x2FA62FB6
#data 0x4F222F86
#data 0x70FF85Ee
#data 0x600F81Ee
#data 0x89714015
#data 0xF78D84E5
#data 0x80E57001
#data 0xF408C750
#data 0xF508C750
#data 0x5DE69095
#data 0x233803Dd
#data 0xF67C8D06
#data 0xF408C74d
#data 0xF608C74d
#data 0xF508C74d

#align4
loc_8C07F1D8:
#data 0xF3E6E034
#data 0xEC00E442
#data 0xFE37F340
#data 0xF2E6E038
#data 0xFE27F270
#data 0xFE57E05c
#data 0xFE67E068
#data 0xFE77E060
#data 0xF308C745
#data 0xFE37E06c
#data 0x0E449076
#data 0x0E447001
#data 0xE43A7004
#data 0x700B0E44
#data 0x70F20EC5
#data 0x70260EC4
#data 0xE603D53e
#data 0x84E20EC6
#data 0x600C6352
#data 0x737C4000
#data 0x7201023d
#data 0x90600325
#data 0x700B0D44
#data 0x70F20DC5
#data 0x70260DC4
#data 0x84D20DC6
#data 0xE5166352
#data 0x4000600c
#data 0x023D737c
#data 0x03257201
#data 0x430BD331
#data 0x9A4D64E3
#data 0x6563E601
#data 0x3ADCEB0d
#data 0x742464A3

#align4
loc_8C07F264:
#data 0x24C27501
#data 0x32B3625e
#data 0x74048FFa
#data 0x6C63

loc_8C07F272:
#data 0x63A3
#data 0x732062Ce
#data 0x420865E3
#data 0x323C66C3
#data 0xBDCB6823
#data 0x200864D3
#data 0x28028D4d
#data 0x62CE7C01
#data 0x8BEE32B3

#align4
loc_8C07F294:
#data 0xD321E15c
#data 0xE03431Ec
#data 0xF2E6F318
#data 0x31ECE168
#data 0xFE27F230
#data 0xF2E6E05c
#data 0xE160F318
#data 0xF23031Ec
#data 0xE038FE27
#data 0xF318F2E6
#data 0x31ECE16c
#data 0xFE27F230
#data 0xF2E6E060
#data 0xF230F318
#data 0x430BFE27
#data 0xD21364E3
#data 0x64E3420b
#data 0x900D940d
#data 0x34EC55E6
#data 0x025D6341
#data 0x891E3320
#data 0xA01BE002
#data 0x01300009
#data 0x01A1019c
#data 0x00CC02A4
#data 0x00000158
#data 0x42F00000
#data 0xC1855555
#data 0xC2F00000
#data 0x80000000
#data 0x41855555
#data 0xC0AB6DB6
#data 0x8C2896B0

#align4
loc_8C07F318:
#data bank03.loc_8c034e8c

loc_8C07F31C:
#data bank03.loc_8c034dee

loc_8C07F320:
#data bank04.loc_8c045748

loc_8C07F324:
#data 0x80E4

loc_8C07F326:
#data 0x4F26
#data 0x6AF668F6
#data 0x6CF66BF6
#data 0x000B6DF6
#data 0x6EF6
;-------------------------------------------------------------------------------

loc_8C07F336:
mov.l r14,@-r15
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
mov.l r10,@-r15
mov.l r9,@-r15
mov.l r8,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
add 0xFC,r15
mov r4,r14
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r3
mov 0x42,r8 ; r8 set to 0x42
mov.l @(0x18,r14),r12
mov 0x0D,r10 ; r10 set to 0x0d
mov.l @(loc_8C07F408,pc),r11 ; r11 set to 0x8C2896B0
tst r3,r3
mov 0x00,r13 ; r13 set to 0x00
fldi1 fr15
mov 0x3B,r9 ; r9 set to 0x3b
bt/s loc_8C07F368
fadd fr15,fr15
bra loc_8C07F5B4
nop

loc_8C07F368:
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3
	mov.w @(loc_8C07F3FA,pc),r0 ; r0 set to 0xD0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bt loc_8C07F3B4
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(loc_8C07F40C,pc),r4 ; r4 set to 0x8C26A518
	mov 0xFF,r5 ; r5 set to 0xFFFFFFFf
	fmov.s fr3,@(r0,r14)
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C07F410,pc),r3 ; r3 set to 0x8C100672
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x05,r14)
	mov 0x0A,r0 ; r0 set to 0x0a
	mov.w r0,@(0x1C,r14)
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x05,r4)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x06,r4)
	mov r14,r4 ; r4 ??? bc r14 is ???	
	jsr @r3
	add 0x34,r4
	mov r14,r4
	mov 0x31,r5 ; r5 set to 0x31
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C07F414,pc),r2 ; r2 set to 0x8C04223a
	fmov.s @r15+,fr15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C07F3B4:
mov.w @(loc_8C07F3FC,pc),r4 ; r4 set to 0xCc
mov.w @(loc_8C07F3FE,pc),r0 ; r0 set to 0x158
add r14,r4 ; r4 ??? bc r14 is ???	
mov.w @(r0,r12),r2
mov.w @r4,r3
cmp/eq r2,r3
bt loc_8C07F3Ce
mov.b @(0x05,r14),r0
add 0x01,r0 ; r0 set to 0x159
mov.b r0,@(0x05,r14)
mov 0x01,r0 ; r0 set to 0x01
bra loc_8C07F6Ee
mov.w r0,@(0x1C,r14)

loc_8C07F3CE:
mov.w @(loc_8C07F400,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C07F42e
mov.b r13,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60
fmov.s @(r0,r14),fr3
mov 0x01,r4 ; r4 set to 0x01
mov.w @(loc_8C07F404,pc),r5 ; r5 set to 0x2A4
fdiv fr15,fr3
add r12,r5 ; r5 ??? bc r12 is ???	
mov r5,r6
fmov.s fr3,@(r0,r14)
mov.w @(0x1E,r14),r0
add 0x01,r0 ; r0 set to 0x61
mov.w r0,@(0x1E,r14)
mov.w @(loc_8C07F402,pc),r0 ; r0 set to 0x19c
mov.b r13,@(r0,r14)
add 0x01,r0 ; r0 set to 0x19d
mov.b r13,@(r0,r14)
bra loc_8C07F428
add 0x24,r6

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C07F3FA:
#data 0x00D0

loc_8C07F3FC:
#data 0x00Cc

loc_8C07F3FE:
#data 0x0158

loc_8C07F400:
#data 0x019e

loc_8C07F402:
#data 0x019c

loc_8C07F404:
#data 0x02A4
#data 0x0000

#align4
loc_8C07F408:
#data 0x8C2896B0

#align4
loc_8C07F40C:
#data 0x8C26A518

#align4
loc_8C07F410:
#data bank10.loc_8c100672

loc_8C07F414:
#data bank04.loc_8c04223a

loc_8C07F418:
#data 0x25586566
#data 0x74018D04
#data 0x05D49079
#data 0x05D47001

#align4
loc_8C07F428:
#data 0x33A3634e
#data 0x8BF4


loc_8C07F42E:
mov.w @(loc_8C07F518,pc),r0 ; r0 set to 0x1A0
mov.b @(r0,r14),r3
tst r3,r3
bf loc_8C07F43a
bra loc_8C07F56c
nop

loc_8C07F43A:
mov.b @(r0,r14),r3
mov.b r3,@(r0,r12)
mov.b @(r0,r14),r3
add 0xFF,r3
mov.b r3,@(r0,r14)
exts.b r3,r3
tst r3,r3
bt loc_8C07F44e
bra loc_8C07F6Ee
nop

loc_8C07F44E:
mov.w @(0x1E,r14),r0
cmp/eq 0x05,r0
bf loc_8C07F458
bra loc_8C07F6Ee
nop

loc_8C07F458:
mov.w @(loc_8C07F516,pc),r0 ; r0 set to 0x19c
mov.b r8,@(r0,r14)
add 0x01,r0 ; r0 set to 0x19d
mov.b r8,@(r0,r14)
mov.w @(0x1E,r14),r0
cmp/eq 0x04,r0
bf loc_8C07F48c
mov.w @(loc_8C07F51A,pc),r0 ; r0 set to 0x1A1
mov.b r9,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19e
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r11,r3
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r3
mov.w @(r0,r3),r2
add 0x01,r2
mov.w r2,@(r0,r3)
mov.w @(loc_8C07F51A,pc),r0 ; r0 set to 0x1A1
bra loc_8C07F4B4
mov.b r9,@(r0,r12)

loc_8C07F48C:
mov.w @(loc_8C07F51A,pc),r0 ; r0 set to 0x1A1
mov 0x3A,r3 ; r3 set to 0x3a
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r13,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19e
mov.b r13,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l r13,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r11,r3 ; r3 ??? bc r11 is ???	
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r3
mov.w @(r0,r3),r2
add 0x01,r2
mov.w r2,@(r0,r3)
mov 0x3A,r3 ; r3 set to 0x3a
mov.w @(loc_8C07F51A,pc),r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r12)

loc_8C07F4B4:
mov.w @(loc_8C07F51C,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
mov.w @(loc_8C07F51E,pc),r4 ; r4 set to 0x2A4, r4 set to 0x2A4
mov.w r13,@(r0,r12)
add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
mov.b r13,@(r0,r12)
add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
mov.l r13,@(r0,r12)
add r12,r4 ; r4 ??? bc r12 is ???, r4 ??? bc r12 is ???	
mov.b @(0x02,r12),r0
mov r4,r6
mov.l @r11,r3 ; r3 ??? bc r11 is ???	
extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
shll r0 ; r0 set to 0x188, r0 set to 0x188
add 0x7C,r3
mov.w @(r0,r3),r2
add 0x01,r2
mov.w r2,@(r0,r3)
bra loc_8C07F566
add 0x24,r6

loc_8C07F4DC:
mov.l @r6+,r4
tst r4,r4
bt loc_8C07F564
mov.w @(loc_8C07F516,pc),r0 ; r0 set to 0x19c
mov.b r8,@(r0,r4)
add 0x01,r0 ; r0 set to 0x19d
mov.b r8,@(r0,r4)
mov.w @(0x1E,r14),r0
cmp/eq 0x04,r0
bf loc_8C07F520
mov.w @(loc_8C07F51A,pc),r0 ; r0 set to 0x1A1
mov.b r9,@(r0,r4)
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r13,@(r0,r4)
add 0xF2,r0 ; r0 set to 0x19e
mov.b r13,@(r0,r4)
add 0x26,r0 ; r0 set to 0x1C4
mov.l r13,@(r0,r4)
mov.b @(0x02,r4),r0
mov.l @r11,r3
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r3
mov.w @(r0,r3),r2
add 0x01,r2
mov.w r2,@(r0,r3)
mov.w @(loc_8C07F51A,pc),r0 ; r0 set to 0x1A1
bra loc_8C07F548
mov.b r9,@(r0,r12)

loc_8C07F516:
#data 0x019c

loc_8C07F518:
#data 0x01A0

loc_8C07F51A:
#data 0x01A1

loc_8C07F51C:
#data 0x01Ac

loc_8C07F51E:
#data 0x02A4

;==============================================
loc_8C07F520:
	mov.w @(0x114,PC),r0
	mov 0x3A,r3
	mov.b r3,@(r0,r4)
	add 0x0B,r0
	mov.w r13,@(r0,r4)
	add 0xF2,r0
	mov.b r13,@(r0,r4)
	add 0x26,r0
	mov.l r13,@(r0,r4)
	mov.b @(0x2,r4),r0
	mov.l @r11,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov 0x3A,r3
	mov.w @(0xF0,PC),r0
	mov.b r3,@(r0,r12)

loc_8C07F548:
	mov.w @(0xEE,PC),r0
	mov.w r13,@(r0,r12)
	add 0xF2,r0
	mov.b r13,@(r0,r12)
	add 0x26,r0
	mov.l r13,@(r0,r12)
	mov.b @(0x2,r12),r0
	mov.l @r11,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)

loc_8C07F564:
add 0x01,r5

loc_8C07F566:
exts.b r5,r3
cmp/ge r10,r3
bf loc_8C07F4Dc

loc_8C07F56C:
mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
fmov.s @r1,fr3
fmov.s @(r0,r14),fr2
mov 0x68,r1 ; r1 set to 0x68, r1 set to 0x68, r1 set to 0x68
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
mov 0x04,r3 ; r3 set to 0x04, r3 set to 0x04, r3 set to 0x04
fmov.s fr2,@(r0,r14)
mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5C, r0 set to 0x5c
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60, r1 set to 0x60
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38, r0 set to 0x38
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6C, r1 set to 0x6c
add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r14),fr2
fmov.s @r1,fr3
fadd fr3,fr2
fmov.s fr2,@(r0,r14)
mov.w @(0x1E,r14),r0
cmp/gt r3,r0
bt loc_8C07F5B0
bra loc_8C07F6D4
nop

loc_8C07F5B0:
bra loc_8C07F6Ee
nop

loc_8C07F5B4:
mov.l @(0x14,r14),r2
mov r2,r3
mov.l r2,@r15
mov.b @(0x04,r3),r0
mov 0x01,r3 ; r3 set to 0x01
extu.b r0,r0
cmp/gt r3,r0
bf loc_8C07F5D0
mov.b @(0x04,r14),r0
add 0x01,r0
mov.b r0,@(0x04,r14)
mov.w @(loc_8C07F63C,pc),r0 ; r0 set to 0x12c
bra loc_8C07F6Bc
nop

loc_8C07F5D0:
mov.l @(loc_8C07F640,pc),r3 ; r3 set to 0x8C0334A8
jsr @r3
mov r14,r4
tst r0,r0
bt loc_8C07F5E2
mov.w @(loc_8C07F63C,pc),r0 ; r0 set to 0x12c
mov 0x01,r3 ; r3 set to 0x01
bra loc_8C07F5E6
mov.b r3,@(r0,r14)

loc_8C07F5E2:
mov.w @(loc_8C07F63C,pc),r0 ; r0 set to 0x12c
mov.b r13,@(r0,r14)

loc_8C07F5E6:
mov.l @r15,r3
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
mov.l @(loc_8C07F644,pc),r4 ; r4 set to 0x8C13ADA4, r4 set to 0x8C13ADA4
fmov.s @(r0,r3),fr3
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
mov.l @r15,r3
mov r0,r2 ; r2 set to 0x38, r2 set to 0x38
add r14,r2 ; r2 ??? bc r14 is ???, r2 ??? bc r14 is ???	
fmov.s @(r0,r3),fr3
mov 0x20,r3 ; r3 set to 0x20, r3 set to 0x20
add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
fmov.s fr3,@(r0,r14)
mov.b @r3,r3
fmov.s @r2,fr2
extu.b r3,r3
shll2 r3
add r4,r3
mov.w @(0x02,r3),r0
mov r0,r3 ; r3 set to 0x38, r3 set to 0x38
lds r3,fpul
mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
add r14,r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???	
float fpul,fr3
fadd fr3,fr2
fmov.s fr2,@r2
mov.l r0,@-r15
mov.w @(loc_8C07F63E,pc),r0 ; r0 set to 0x130, r0 set to 0x130
mov.w @(r0,r12),r2
tst r2,r2
bt loc_8C07F648
mov 0x20,r3 ; r3 set to 0x20, r3 set to 0x20
add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
mov.b @r3,r3
extu.b r3,r3
shll2 r3
add r4,r3
mov.w @r3,r2
neg r2,r3
bra loc_8C07F656
nop
#data 0x01AC01A1

loc_8C07F63C:
#data 0x012c

loc_8C07F63E:
#data 0x0130

#align4
loc_8C07F640:
#data bank03.loc_8c0334A8

loc_8C07F644:
#data bank13.loc_8c13ADA4


loc_8C07F648:
mov 0x20,r1 ; r1 set to 0x20
add r14,r1 ; r1 ??? bc r14 is ???	
mov.b @r1,r1
extu.b r1,r1
shll2 r1
add r4,r1
mov.w @r1,r3

loc_8C07F656:
lds r3,fpul
mov.l @r15+,r3
mov.w @(loc_8C07F762,pc),r0 ; r0 set to 0x19E, r0 set to 0x19e
float fpul,fr3
fmov.s @r3,fr2
fadd fr3,fr2
fmov.s fr2,@r3
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C07F6A6
mov.b r13,@(r0,r14)
mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
fmov.s @(r0,r14),fr3
mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
mov.w @(loc_8C07F766,pc),r4 ; r4 set to 0x2A4, r4 set to 0x2A4
fdiv fr15,fr3
add r12,r4 ; r4 ??? bc r12 is ???, r4 ??? bc r12 is ???	
mov r4,r6
fmov.s fr3,@(r0,r14)
mov.l @r15,r7
mov.w @(0x1E,r7),r0
add 0x01,r0 ; r0 set to 0x61, r0 set to 0x61
mov.w r0,@(0x1E,r7)
mov.w @(loc_8C07F764,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
mov.b r13,@(r0,r7)
add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
mov.b r13,@(r0,r7)
bra loc_8C07F6A0
add 0x24,r6

#align4
loc_8C07F690:
#data 0x24486466
#data 0x75018D04
#data 0x04D49064
#data 0x04D47001

#align4
loc_8C07F6A0:
#data 0x33A3635e
#data 0x8BF4


loc_8C07F6A6:
mov.w @(loc_8C07F768,pc),r0 ; r0 set to 0x1A0
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C07F6C0
mov.b @(r0,r14),r3
mov.b r3,@(r0,r12)
mov.w @(loc_8C07F768,pc),r0 ; r0 set to 0x1A0
mov.l @r15,r2
mov.b @(r0,r14),r3
mov.b r3,@(r0,r2)
mov.w @(loc_8C07F768,pc),r0 ; r0 set to 0x1A0

loc_8C07F6BC:
bra loc_8C07F6Ee
mov.b r13,@(r0,r14)

#align4
loc_8C07F6C0:
#data 0x63F29052
#data 0x2228023c
#data 0x62F28B11
#data 0x852FE304
#data 0x890C3037


loc_8C07F6D4:
mov r14,r4
add 0x04,r15
lds.l @r15+,pr
mov.l @(loc_8C07F76C,pc),r3 ; r3 set to 0x8C045748
fmov.s @r15+,fr15
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C07F6EE:
add 0x04,r15
lds.l @r15+,pr
fmov.s @r15+,fr15
mov.l @r15+,r8
mov.l @r15+,r9
mov.l @r15+,r10
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

#align4
loc_8C07F704:
#data 0x70FF854e
#data 0x600F814e
#data 0x89264015
#data 0xF48D8445
#data 0xF54C7001
#data 0xE01E8045
#data 0xC714814e
#data 0x5546F608
#data 0x035D9021
#data 0x8D062338
#data 0xC711F74c
#data 0xC711F608
#data 0xF56CF76c
#data 0xF608

loc_8C07F73A:
#data 0xE034
#data 0xF350F346
#data 0xE038F437
#data 0xF240F246
#data 0xE05CF427
#data 0xE068F467
#data 0xC70AF477
#data 0xE060F308
#data 0xE06CF437
#data 0xF447

loc_8C07F75E:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C07F762:
#data 0x019e

loc_8C07F764:
#data 0x019c

loc_8C07F766:
#data 0x02A4

loc_8C07F768:
#data 0x01A0
#data 0x0130

#align4
loc_8C07F76C:
#data bank04.loc_8c045748
#data 0x40A00000
#data 0x80000000
#data 0xC0A00000
#data 0x42092492

;==============================================
loc_8C07F780:
#data 0x70FF854e
#data 0x600F814e
#data 0x89024015
#data 0x70018444
#data 0x8044

loc_8C07F792:
#data 0xE15c
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
#data 0xF427000b

;-------------------------------------------------------------------------------

loc_8C07F7CC:
mov.b @(0x04,r4),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0
mov.b r0,@(0x04,r4)
mov.w @(loc_8C07F7E4,pc),r0 ; r0 set to 0x12c
rts
mov.b r3,@(r0,r4)
;-------------------------------------------------------------------------------

loc_8C07F7DA:
mov.l @(loc_8c07f7e8,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop

#align4
loc_8C07F7E0:
	rts
	nop

;-------------------------------------------------------------------------------

loc_8C07F7E4:
#data 0x012c
#data 0x0000

#align4
loc_8C07F7E8:
#data bank04.loc_8c0450C0
#data 0x4F222FE6
#data 0x2F507FFc
#data 0xD346E501
#data 0xE6006E43
#data 0x6463430b
#data 0x8D132008
#data 0xE0206403
#data 0x1434D342
#data 0x937562F0
#data 0x14E60424
#data 0x804184E1
#data 0x0435E026
#data 0x02ED906f
#data 0x0425906e
#data 0xF3E6906d
#data 0xF437906c
#data 0x00096043
#data 0x4F267F04
#data 0x6EF6000b
;-------------------------------------------------------------------------------

#align4
loc_8C07F838:
#data 0x6E432FE6
#data 0x84E44F22
#data 0x600CE302
#data 0x89013033
#data 0x64E3B521

#align4
loc_8C07F84C:
#data 0x64E384E4
#data 0x600CD131
#data 0x40084F26
#data 0x432B031e
#data 0x6EF6


loc_8C07F85E:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov.w @(loc_8C07F906,pc),r1 ; r1 set to 0xDc
mov.w @(loc_8C07F900,pc),r4 ; r4 set to 0xCc
sts.l pr,@-r15
mov.b @(0x04,r14),r0
add r14,r4 ; r4 ??? bc r14 is ???	
mov.w @(loc_8C07F906,pc),r2 ; r2 set to 0xDc
add r14,r1 ; r1 ??? bc r14 is ???	
add 0x01,r0
mov.l @(loc_8C07F91C,pc),r3 ; r3 set to 0x8C129560
mov.b r0,@(0x04,r14)
mov 0x0A,r0 ; r0 set to 0x0a
mov.w r0,@(0x1C,r14)
mov.w @(loc_8C07F908,pc),r0 ; r0 set to 0xC0
mov.l @(0x18,r14),r13
jsr @r3
add r13,r2 ; r2 ??? bc r13 is ???	
mov.w @(loc_8C07F90A,pc),r0 ; r0 set to 0x12c
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
mov.w @(loc_8C07F90C,pc),r0 ; r0 set to 0x1A3
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
mov.l @(loc_8C07F920,pc),r3 ; r3 set to 0x8C1294C8
add 0x50,r2
jsr @r3
mov 0x0C,r0 ; r0 set to 0x0c
mov.l @(0x18,r14),r1
mov 0x24,r0 ; r0 set to 0x24
mov 0x50,r5 ; r5 set to 0x50
mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
mov.b r3,@(r0,r14)
mov 0x07,r3 ; r3 set to 0x07
mov.w @(loc_8C07F90E,pc),r0 ; r0 set to 0x13d
mov.b r5,@(r0,r14)
add 0xFF,r0 ; r0 set to 0x13c
mov.b r5,@(r0,r14)
add 0x03,r0 ; r0 set to 0x13f
mov.b r5,@(r0,r14)
add 0xFF,r0 ; r0 set to 0x13e
mov.b r5,@(r0,r14)
mov 0x24,r0 ; r0 set to 0x24
mov.b r3,@(r0,r14)
mov.w @(loc_8C07F8FE,pc),r0 ; r0 set to 0x158
mov.w @r4,r2
mov.w @(r0,r13),r3 ; r3 ??? bc r13 is ???	
cmp/eq r3,r2
bt loc_8C07F924
mov 0x02,r0 ; r0 set to 0x02
bra loc_8C07F9E0
mov.b r0,@(0x04,r14)
#data 0x1402

loc_8C07F8FE:
#data 0x0158

loc_8C07F900:
#data 0x00Cc
#data 0x041c
#data 0x00D0

loc_8C07F906:
#data 0x00Dc

loc_8C07F908:
#data 0x00C0

loc_8C07F90A:
#data 0x012c

loc_8C07F90C:
#data 0x01A3

loc_8C07F90E:
#data 0x013d

#align4
loc_8C07F910:
#data bank04.loc_8c044F12

loc_8C07F914:
#data loc_8C07F838

loc_8C07F918:
#data bank15.loc_8c153FD0

loc_8C07F91C:
#data bank12.loc_8c129560

loc_8C07F920:
#data bank12.loc_8c1294C8

loc_8C07F924:
#data 0xF3D6E034
#data 0xFE37E20f
#data 0xF3D6E038
#data 0xE020FE37
#data 0x633C03Ec
#data 0x8B4F3323
#data 0xF88DC751
#data 0xE050F408
#data 0xFE47E400
#data 0xFE47E054
#data 0x0E459098
#data 0xF408C74d
#data 0xF508C74d
#data 0xF708C74d
#data 0x03DD9090
#data 0x8D052338
#data 0xC74BF68c
#data 0xF408F67c
#data 0xF508C74a

#align4
loc_8C07F970:
#data 0xD14AE034
#data 0xE542F3E6
#data 0xE33F415a
#data 0xFE37F340
#data 0xF2E6E038
#data 0xF230F30d
#data 0xE05CFE27
#data 0xE068FE57
#data 0xE060FE67
#data 0xE06CFE87
#data 0x9072FE77
#data 0x70010E54
#data 0x70040E54
#data 0x700B0E34
#data 0x70F20E45
#data 0x70260E44
#data 0xE516D33b
#data 0xE60E0E46
#data 0x623284E2
#data 0x4000600c
#data 0x012D727c
#data 0x02157101
#data 0x420BD236
#data 0x4F2664E3
#data 0x64E3D335
#data 0x6DF6E519
#data 0x6EF6432b

#align4
loc_8C07F9DC:
#data 0x80E500Ec


loc_8C07F9E0:
lds.l @r15+,pr
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C07F9E8:
mov r4,r3
mov.l @(loc_8C07FAAC,pc),r1 ; r1 set to 0x8C153FE0
mov.l r4,@-r15
mov.b @(0x05,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

loc_8C07F9FA:
mov r4,r3
mov.l @(loc_8C07FAB0,pc),r1 ; r1 set to 0x8C153FF4
mov.l r4,@-r15
mov.b @(0x06,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

#align4
loc_8C07FA0C:
#data 0x6E432FE6
#data 0x85EE4F22
#data 0x81EE70Ff
#data 0x4015600f
#data 0x84E68902
#data 0x80E67001

#align4
loc_8C07FA24:
#data 0xF408C723
#data 0xF3E6E050
#data 0x31ECE15c
#data 0xFE37F340
#data 0xF2E6E054
#data 0xFE27F240
#data 0xF2E6E034
#data 0xE168F318
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xF230F318
#data 0xE060FE27
#data 0xF2E6E16c
#data 0xD31331Ec
#data 0xF230F318
#data 0x430BFE27
#data 0x4F2664E3
#data 0x64E3D210
#data 0x6EF6422b
#data 0x019C0130
#data 0x3D23D70a
#data 0xC1A00000
#data 0xC0A00000
#data 0x80000000
#data 0x41A00000
#data 0x40A00000
#data 0x43092492
#data 0x8C2896B0

#align4
loc_8C07FAA4:
#data bank03.loc_8c034e8c

loc_8C07FAA8:
#data bank04.loc_8c042008

loc_8C07FAAC:
#data bank15.loc_8c153FE0

loc_8C07FAB0:
#data bank15.loc_8c153FF4
#data 0x3C03126f

#align4
loc_8C07FAB8:
#data bank03.loc_8c034dee

loc_8C07FABC:
#data bank04.loc_8c045748


loc_8C07FAC0:
mov.l r14,@-r15
sts.l pr,@-r15
mov.l @(loc_8C07FBA8,pc),r3 ; r3 set to 0x8C03340c
jsr @r3
mov r4,r14
tst r0,r0
bf loc_8C07FAD8
mov 0x02,r0 ; r0 set to 0x02
mov.b r0,@(0x04,r14)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C07FAD8:
mov.w @(loc_8C07FBA4,pc),r0 ; r0 set to 0x19e
mov.b @(r0,r14),r3
tst r3,r3
bt loc_8C07FB2c
mov.w @(loc_8C07FBA6,pc),r0 ; r0 set to 0x1B0
mov.l @(r0,r14),r3
mov.b @(0x03,r3),r0
tst r0,r0
bt loc_8C07FB1a
mov.w @(loc_8C07FBA4,pc),r0 ; r0 set to 0x19e
mov 0x00,r4 ; r4 set to 0x00
mov 0x3F,r3 ; r3 set to 0x3f
mov.b r4,@(r0,r14)
add 0x03,r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r14)
add 0x0B,r0 ; r0 set to 0x1Ac
mov.w r4,@(r0,r14)
add 0xF2,r0 ; r0 set to 0x19e
mov.b r4,@(r0,r14)
add 0x26,r0 ; r0 set to 0x1C4
mov.l @(loc_8C07FBAC,pc),r3 ; r3 set to 0x8C2896B0
mov.l r4,@(r0,r14)
mov.b @(0x02,r14),r0
mov.l @r3,r2
extu.b r0,r0 ; r0 set to 0xC4
shll r0 ; r0 set to 0x188
add 0x7C,r2
mov.w @(r0,r2),r1
add 0x01,r1
mov.w r1,@(r0,r2)
lds.l @r15+,pr
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C07FB1A:
mov.l @(loc_8C07FBB0,pc),r3 ; r3 set to 0x8C05264c
jsr @r3
mov r14,r4
tst r0,r0
bt loc_8C07FB2c
lds.l @r15+,pr
mov r14,r4
bra loc_8C07FC8c
mov.l @r15+,r14

#align4
loc_8C07FB2C:
#data 0xF408C721
#data 0xF3E6E050
#data 0xFE37F340
#data 0xF2E6E054
#data 0xF49DF240
#data 0xE050FE27
#data 0xF435F3E6
#data 0xFE478900

#align4
loc_8C07FB4C:
#data 0xF3E6E054
#data 0x8900F435
#data 0xFE47

loc_8C07FB56:
#data 0xE15c
#data 0x31ECD317
#data 0xF318E034
#data 0xE168F2E6
#data 0xF23031Ec
#data 0xE05CFE27
#data 0xF318F2E6
#data 0x31ECE160
#data 0xFE27F230
#data 0xF2E6E038
#data 0xE16CF318
#data 0xF23031Ec
#data 0xE060FE27
#data 0xF318F2E6
#data 0xFE27F230
#data 0x64E3430b
#data 0xD2094F26
#data 0x422B64E3
#data 0x4F266EF6
#data 0x6EF6000b
;-------------------------------------------------------------------------------

loc_8C07FBA4:
#data 0x019e

loc_8C07FBA6:
#data 0x01B0

#align4
loc_8C07FBA8:
#data bank03.loc_8c03340c

loc_8C07FBAC:
#data 0x8C2896B0

#align4
loc_8C07FBB0:
#data bank05.loc_8c05264c
#data 0x3CB43958

#align4
loc_8C07FBB8:
#data bank03.loc_8c034dee

loc_8C07FBBC:
#data bank04.loc_8c045748


loc_8C07FBC0:
mov.l r14,@-r15
mov r4,r14
fldi1 fr3
mov 0x16,r5 ; r5 set to 0x16
mov.l r13,@-r15
mov.l r12,@-r15
mov.l r11,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
mov.b @(0x05,r14),r0
mov.l @(loc_8C07FD20,pc),r3 ; r3 set to 0x8C034E8c
add 0x01,r0
mov.b r0,@(0x05,r14)
mov 0x00,r0 ; r0 set to 0x00
mov.b r0,@(0x06,r14)
mov 0x54,r0 ; r0 set to 0x54
fmov.s fr3,@(r0,r14)
mov 0x50,r0 ; r0 set to 0x50
fmov.s fr3,@(r0,r14)
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r6
extu.b r6,r6
jsr @r3
mov r14,r4
mov.w @(loc_8C07FD08,pc),r0 ; r0 set to 0x130
mov 0x02,r7 ; r7 set to 0x02
mov.l @(0x18,r14),r13
mov r7,r5 ; r5 set to 0x02
fldi0 fr4
mov r7,r6 ; r6 set to 0x02
mov.w @(r0,r13),r2
mov.l @(loc_8C07FD2C,pc),r3 ; r3 set to 0x8C03544c
mov.w r2,@(r0,r14)
mov 0x5C,r0 ; r0 set to 0x5c
fmov.s fr4,@(r0,r14)
mov 0x68,r0 ; r0 set to 0x68
fmov.s fr4,@(r0,r14)
mova @(loc_8C07FD24,pc),r0  ; r0 set to 0x8C07FD24
fmov.s @r0,fr3 ; r3 ??	
mov 0x60,r0 ; r0 set to 0x60
fmov.s fr3,@(r0,r14)
mova @(loc_8C07FD28,pc),r0  ; r0 set to 0x8C07FD28
fmov.s @r0,fr3
mov 0x6C,r0 ; r0 set to 0x6c
fmov.s fr3,@(r0,r14)
jsr @r3
mov r14,r4
mova @(loc_8C07FD34,pc),r0  ; r0 set to 0x8C07FD34
mov.w @(loc_8C07FD0A,pc),r11 ; r11 set to 0x90
fmov.s @r0,fr15
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8C07FD30,pc),r12 ; r12 set to 0x8C0FD75c
mov r11,r6 ; r6 set to 0x90
fmov fr15,fr5 ; r5 ??? bc r15 is ???	
fmov fr15,fr4
jsr @r12
mov r14,r4
mov r11,r6 ; r6 set to 0x90
mov 0x10,r5 ; r5 set to 0x10
fmov fr15,fr5 ; r5 ??? bc r15 is ???	
fmov fr15,fr4
jsr @r12
mov r14,r4
mov.w @(loc_8C07FD0C,pc),r5 ; r5 set to 0xF0
mov r11,r6 ; r6 set to 0x90
fmov fr15,fr5 ; r5 ??? bc r15 is ???	
fmov fr15,fr4
jsr @r12
mov r14,r4
mov.w @(loc_8C07FD08,pc),r0 ; r0 set to 0x130
mov.l @(loc_8C07FD38,pc),r4 ; r4 set to 0x8C26A518
mov.w @(r0,r13),r3
tst r3,r3
bt loc_8C07FC6a
mova @(loc_8C07FD3C,pc),r0  ; r0 set to 0x8C07FD3c
fmov.s @r0,fr3
mov.w @(loc_8C07FD0E,pc),r0 ; r0 set to 0x8c
fmov.s @(r0,r4),fr4 ; r4 ??	
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r14),fr2
fadd fr3,fr4
fcmp/gt fr4,fr2
bf loc_8C07FC7e
bra loc_8C07FC7e
fmov.s fr4,@(r0,r14)

loc_8C07FC6A:
#data 0xC735
#data 0x904FF308
#data 0xE034F446
#data 0xF430F2E6
#data 0x8B00F425
#data 0xFE47


loc_8C07FC7E:
lds.l @r15+,pr
fmov.s @r15+,fr15
mov.l @r15+,r11
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------

loc_8C07FC8C:
mov.w @(loc_8C07FD12,pc),r0 ; r0 set to 0x1B0
mov 0x00,r3 ; r3 set to 0x00
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C07FD16,pc),r2 ; r2 set to 0xFf
mov.l r13,@-r15
sts.l pr,@-r15
mov.l @(r0,r14),r5
mov.w @(loc_8C07FD14,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r5)
add 0x1D,r0 ; r0 set to 0x149
mov.b r2,@(r0,r5)
mov 0x34,r0 ; r0 set to 0x34
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
mov.w @(loc_8C07FD1A,pc),r3 ; r3 set to 0xC3
fmov.s fr3,@(r0,r14)
mov 0x38,r0 ; r0 set to 0x38
fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
fmov.s fr3,@(r0,r14)
mov.w @(loc_8C07FD18,pc),r0 ; r0 set to 0x41c
fmov.s @(r0,r15),fr3
mov 0x38,r0 ; r0 set to 0x38
fmov.s fr3,@(r0,r5)
mov.w @(loc_8C07FD1C,pc),r0 ; r0 set to 0x1F7
mov.l @(0x18,r14),r13
mov.b r3,@(r0,r13)
mov.l @(loc_8C07FD44,pc),r3 ; r3 set to 0x8C05248e
jsr @r3
mov r14,r4
bsr loc_8C07FBC0
mov r14,r4
mov.l @(loc_8C07FD48,pc),r3 ; r3 set to 0x8C042008
mov 0x0A,r5 ; r5 set to 0x0a
jsr @r3
mov r13,r4
mov.l @(loc_8C07FD4C,pc),r2 ; r2 set to 0x8C02FEC4
mov 0x01,r5 ; r5 set to 0x01
mov 0x07,r6 ; r6 set to 0x07
jsr @r2
mov r13,r4
mov 0x01,r3 ; r3 set to 0x01
mov.l @(loc_8C07FD50,pc),r2 ; r2 set to 0x8C104434
mov.b r3,@r14
mov r14,r4
lds.l @r15+,pr
mov.l @r15+,r13
jmp @r2
mov.l @r15+,r14

loc_8C07FCEC:
mov.l r14,@-r15
mov r4,r14
mov.w @(loc_8C07FD1E,pc),r0 ; r0 set to 0x1Ea
mov 0x01,r3 ; r3 set to 0x01
mov.l @(0x18,r14),r4
mov.l @(loc_8C07FD54,pc),r1 ; r1 set to 0x8C153FFc
mov.b r3,@(r0,r4)
mov r14,r4
mov.b @(0x06,r14),r0
extu.b r0,r0 ; r0 set to 0xEa
shll2 r0 ; r0 set to 0x3A8
mov.l @(r0,r1),r3 ; r3 ??	
jmp @r3
mov.l @r15+,r14

loc_8C07FD08:
#data 0x0130

loc_8C07FD0A:
#data 0x0090

loc_8C07FD0C:
#data 0x00F0

loc_8C07FD0E:
#data 0x008c
#data 0x0088

loc_8C07FD12:
#data 0x01B0

loc_8C07FD14:
#data 0x012c

loc_8C07FD16:
#data 0x00Ff

loc_8C07FD18:
#data 0x041c

loc_8C07FD1A:
#data 0x00C3

loc_8C07FD1C:
#data 0x01F7

loc_8C07FD1E:
#data 0x01Ea

#align4
loc_8C07FD20:
#data bank03.loc_8c034e8c

loc_8C07FD24:
#data 0x40CDB6Db

#align4
loc_8C07FD28:
#data 0xBEF00000

#align4
loc_8C07FD2C:
#data bank03.loc_8c03544c

loc_8C07FD30:
#data bank0f.loc_8c0fD75c

loc_8C07FD34:
#data 0x40800000

#align4
loc_8C07FD38:
#data 0x8C26A518

#align4
loc_8C07FD3C:
#data 0xC3200000
#data 0x43200000

#align4
loc_8C07FD44:
#data bank05.loc_8c05248e

loc_8C07FD48:
#data bank04.loc_8c042008

loc_8C07FD4C:
#data bank02.loc_8c02FEC4

loc_8C07FD50:
#data bank10.loc_8c104434

loc_8C07FD54:
#data bank15.loc_8c153FFc

loc_8C07FD58:
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
#data 0xF427F230
#data 0xF346E038
#data 0xF246907e
#data 0x8914F325
#data 0xE038F346
#data 0xF437F48d
#data 0x70018446
#data 0xE0058046
#data 0xE05C814e
#data 0xE068F447
#data 0xC738F447
#data 0xE060F308
#data 0xC737F437
#data 0xE06CF308
#data 0xF437

loc_8C07FDC6:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C07FDCA:
#data 0xD135
#data 0xF246E050
#data 0xD134415a
#data 0xF230F30d
#data 0xF427415a
#data 0xF146E054
#data 0xF121F20d
#data 0x854EF417
#data 0x814E70Ff
#data 0x4015600f
#data 0x84468904
#data 0x80467001
#data 0x814EE005

#align4
loc_8C07FDFC:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C07FE00:
#data 0xE050D129
#data 0x415AF246
#data 0xF30DD128
#data 0x415AF230
#data 0xE054F427
#data 0xF20DF146
#data 0xF417F121
#data 0x70FF854e
#data 0x600F814e
#data 0x89074015
#data 0xF19D8446
#data 0x80467001
#data 0xF417E054
#data 0xF417E050

#align4
loc_8C07FE38:
#data 0x0009000b
;-------------------------------------------------------------------------------

#align4
loc_8C07FE3C:
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
#data 0xF427F230
#data 0xF346E038
#data 0xF246900c
#data 0x8907F325
#data 0xE038F346
#data 0x8446F437
#data 0x80467001
#data 0x814EE005

#align4
loc_8C07FE90:
#data 0x0009000b
;-------------------------------------------------------------------------------
#data 0x000000D0
#data 0x404DB6Db
#data 0xBE700000
#data 0x3C449BA6
#data 0x3C9374Bc
#data 0x3C83126f
#data 0x3CC49BA6

#align4
loc_8C07FEB0:
#data 0xE050D153
#data 0x415AF246
#data 0xF30DD152
#data 0x415AF230
#data 0xE054F427
#data 0xF20DF146
#data 0xF417F121
#data 0x70FF854e
#data 0x600F814e
#data 0x89044015
#data 0x70018446
#data 0xE0058046
#data 0x814e

loc_8C07FEE2:
#data 0x000b
#data 0x0009
;-------------------------------------------------------------------------------

loc_8C07FEE6:
#data 0xD146
#data 0xF246E050
#data 0xD145415a
#data 0xF230F30d
#data 0xF427415a
#data 0xF146E054
#data 0xF121F20d
#data 0x854EF417
#data 0x814E70Ff
#data 0x4015600f
#data 0xE003890c
#data 0x814FF19d
#data 0x8445814e
#data 0x80457001
#data 0x8046E000
#data 0xF417E054
#data 0xF417E050

#align4
loc_8C07FF28:
#data 0x0009000b
;-------------------------------------------------------------------------------

loc_8C07FF2C:
mov.l r14,@-r15
mov r4,r14
mov.l r13,@-r15
mov 0x01,r3 ; r3 set to 0x01
mov.w @(loc_8C07FFF4,pc),r0 ; r0 set to 0x1Ea
mov.l r12,@-r15
fmov.s fr15,@-r15
sts.l pr,@-r15
mov.l @(0x18,r14),r13
mov.b r3,@(r0,r13)
mov.w @(0x1C,r14),r0
mov r0,r3 ; r3 set to 0x1Ea
mov.w @(0x1E,r14),r0
cmp/eq r0,r3
bt loc_8C07FFCc
mov.w @(0x1C,r14),r0
cmp/pl r0
bt loc_8C07FF9e
mov.b @(0x05,r14),r0
mov 0x00,r3 ; r3 set to 0x00
add 0x01,r0 ; r0 set to 0x1Eb
mov.b r0,@(0x05,r14)
mov.w @(loc_8C07FFF6,pc),r0 ; r0 set to 0x12c
mov.b r3,@(r0,r14)
mov 0x40,r3 ; r3 set to 0x40
mov.w @(loc_8C07FFF8,pc),r0 ; r0 set to 0x1B0
mov.l @(r0,r14),r4
add 0xF1,r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r4)
mov.l @(loc_8C080008,pc),r3 ; r3 set to 0x8C05933c
jsr @r3
mov r13,r4
mova @(loc_8C080010,pc),r0  ; r0 set to 0x8C080010
mov.w @(loc_8C07FFFA,pc),r13 ; r13 set to 0x90
fmov.s @r0,fr15
mov 0x00,r5 ; r5 set to 0x00
mov.l @(loc_8C08000C,pc),r12 ; r12 set to 0x8C0FD75c
mov r13,r6 ; r6 set to 0x90
fmov fr15,fr5 ; r5 ??? bc r15 is ???	
fmov fr15,fr4
jsr @r12
mov r14,r4
mov r13,r6 ; r6 set to 0x90
mov 0x10,r5 ; r5 set to 0x10
fmov fr15,fr5 ; r5 ??? bc r15 is ???	
fmov fr15,fr4
jsr @r12
mov r14,r4
mov.w @(loc_8C07FFFC,pc),r5 ; r5 set to 0xF0
mov r13,r6 ; r6 set to 0x90
fmov fr15,fr5 ; r5 ??? bc r15 is ???	
fmov fr15,fr4
jsr @r12
mov r14,r4
mov 0x00,r3 ; r3 set to 0x00
bra loc_8C07FFCc
mov.b r3,@r14

loc_8C07FF9E:
mov.w r0,@(0x1E,r14)
mov 0x20,r0 ; r0 set to 0x20
mov.b @(r0,r14),r6
mov 0x16,r5 ; r5 set to 0x16
mov.w @(0x1C,r14),r0
mov.l @(loc_8C080014,pc),r3 ; r3 set to 0x8C034E8c
extu.b r6,r6
add r0,r6
jsr @r3
mov r14,r4
mov.w @(loc_8C07FFF8,pc),r0 ; r0 set to 0x1B0
mov 0x40,r3 ; r3 set to 0x40
mov.l @(r0,r14),r4
add 0xF1,r0 ; r0 set to 0x1A1
mov.b r3,@(r0,r4)
mov r13,r4
lds.l @r15+,pr
mov.l @(loc_8C080008,pc),r3 ; r3 set to 0x8C05933c
fmov.s @r15+,fr15
mov.l @r15+,r12
mov.l @r15+,r13
jmp @r3
mov.l @r15+,r14

loc_8C07FFCC:
lds.l @r15+,pr
fmov.s @r15+,fr15
mov.l @r15+,r12
mov.l @r15+,r13
rts
mov.l @r15+,r14
;-------------------------------------------------------------------------------
loc_8C07FFD8:
#data 0xE301900C
#data 0x05345546
#data 0x025C900D
#data 0x89032228
#data 0x8045E004
#data 0x8046E000

loc_8C07FFF0:
#data 0x0009000B
;-------------------------------------------------------------------------------

loc_8C07FFF4:
#data 0x01EA

loc_8C07FFF6:
#data 0x012C

loc_8C07FFF8:
#data 0x01B0

loc_8C07FFFA:
#data 0x0090

loc_8C07FFFC:
#data 0x00F0
#data 0x0141
#data 0x3C03126f
#data 0x3C449BA6

#align4
loc_8C080008:
#data bank05.loc_8c05933C

loc_8C08000C:
#data bank0f.loc_8c0fD75C

loc_8C080010:
#data 0x40800000

#align4
loc_8C080014:
#data bank03.loc_8c034e8c

;#symbol loc_8c07 0x8c07