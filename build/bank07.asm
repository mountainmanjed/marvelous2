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

#symbol loc_8c070424 0x8c070424
;#symbol loc_8c07 0x8c07