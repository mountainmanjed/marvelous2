;==============================================
loc_8C0A0000:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0A00E4,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.w @(loc_8C0A00E2,pc),r4 ; r4 set to 0x2A4
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0A00E6,pc),r0 ; r0 set to 0xC0
	add r13,r4 ; r4 ??? bc r13 is ???	
	mov.w @(loc_8C0A00E4,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C0A00F4,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0A00E8,pc),r0 ; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
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
	mov.w @(loc_8C0A00EA,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A00F8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0A00E8,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x32,r3 ; r3 set to 0x32
	mov.b @(0x02,r4),r0
	add 0x01,r0 ; r0 set to 0x32
	mov.b r0,@(0x02,r4)
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C0A00EC,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_8C0A00FC,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov 0x42,r4 ; r4 set to 0x42
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C0A00EE,pc),r0 ; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	mov.l @(loc_8C0A0100,pc),r5 ; r5 set to 0x8C1563F0
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0A0104,pc),r0  ; r0 set to 0x8C0A0104
	fmov.s @r0,fr4 ; r4 ??	
	mov.w @(loc_8C0A00F0,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bf/s loc_8C0A0108
	mov r5,r4 ; r4 set to 0x8C1563F0
	mov 0x21,r2 ; r2 set to 0x21
	fmov fr4,fr0 ; r0 ??	
	add r14,r2 ; r2 ??? bc r14 is ???	
	mov.b @r2,r2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	extu.b r2,r2
	shll r2
	shll r2
	add r2,r4 ; r4 ??? bc r2 is ???	
	mov.w @r4,r2
	lds r2,fpul
	float fpul,fr3
	bra loc_8C0A0124
	fmac fr0,fr3,fr2

;##############################################
loc_8C0A00E2:
	#data 0x02A4
loc_8C0A00E4:
	#data 0x00Dc
loc_8C0A00E6:
	#data 0x00C0
loc_8C0A00E8:
	#data 0x012c
loc_8C0A00EA:
	#data 0x01A3
loc_8C0A00EC:
	#data 0x01A1
loc_8C0A00EE:
	#data 0x019c
loc_8C0A00F0:
	#data 0x0130
	#align4

loc_8C0A00F4:
	#data bank12.loc_8c129560
loc_8C0A00F8:
	#data bank12.loc_8c1294C8
loc_8C0A00FC:
	#data 0x8C2896B0
loc_8C0A0100:
	#data bank15.loc_8c1563F0
loc_8C0A0104:
	#data 0x3FD55555

;==============================================
loc_8c0a0108:
	mov 0x21,r1
	add r14,r1
	mov.b @r1,r1
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	extu.b r1,r1
	shll r1
	shll r1
	add r1,r4
	mov.w @r4,r2
	lds r2,fpul 
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8c0a0124:
	mov 0x21,r3
	fmov.s fr2,@(r0,r14) 
	add r14,r3
	mov r14,r2
	mov 0x38,r0
	mov.l @(loc_8c0a0264,pc),r4
	add r0,r2
	mov.l r2,@-r15
	mov 0x21,r2
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r5
	mov.w @(0x02,r5),r0 
	mov r0,r3
	lds r3,fpul 
	mov.l @r15+,r3
	mova @(loc_8C0A025C,pc),r0 
	fmov.s @r0,fr0
	mova @(loc_8C0A0260,pc),r0 
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	fmov.s @r0,fr5
	mov.w @(loc_8C0A0256,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	add r14,r2
	mov.b @r2,r2
	extu.b r2,r2
	mov r2,r3
	shll2 r2
	shll r2
	add r3,r2
	add r2,r0
	shll2 r0
	mov.l @(r0,r4),r2
	mov 0x5C,r0
	lds r2,fpul 
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C0A0256,pc),r0
	mov.b @(r0,r13),r3
	mov 0x21,r0
	mov.b @(r0,r14),r1
	extu.b r3,r3
	mov r3,r2
	shll r3
	extu.b r1,r1
	add r2,r3
	mov r1,r2
	shll2 r1
	shll r1
	add r2,r1
	add r1,r3
	shll2 r3
	add r4,r3
	mov.l @(0x04,r3),r1
	mov 0x68,r0
	lds r1,fpul 
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x60,r0
	fldi0 fr3
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C0A0256,pc),r0
	mov.b @(r0,r13),r3
	mov 0x21,r0
	mov.b @(r0,r14),r1
	mov 0x6C,r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	extu.b r1,r1
	add r2,r3
	mov r1,r2
	shll2 r1
	shll r1
	add r2,r1
	add r1,r3
	shll2 r3
	add r3,r4
	mov.l @(0x08,r4),r3
	lds r3,fpul 
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C0A0258,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0a0200
	mov 0x0C,r6
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x68,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14) 

loc_8c0a0200:
	mov.l @(loc_8c0a0268,pc),r3
	mov 0x17,r5
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0A026C,pc),r3
	mov 0x04,r1
	mov.w @r3,r2
	cmp/ge r1,r2
	bf loc_8c0a0232
	mov 0x01,r5
	mov 0x00,r6
	bsr bank09.loc_8c09ff76
	mov r14,r4
	mov 0x01,r5
	mov 0x00,r6
	bsr bank09.loc_8c09ff76
	mov r14,r4
	mov 0x01,r5
	mov 0x00,r6
	bsr bank09.loc_8c09ff76
	mov r14,r4
	mov 0x01,r5
	mov 0x00,r6
	bsr bank09.loc_8c09ff76
	mov r14,r4

loc_8c0a0232:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A023C:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(loc_8C0A0270,pc),r1 ; r1 set to 0x8C156458
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a0256:
	#data 0x01A3
loc_8c0a0258:
	#data 0x0130
	#align4

loc_8c0a025c:
	#data 0x40092492
loc_8c0a0260:
	#data 0x47800000
loc_8C0A0264:
	#data bank15.loc_8c1563F8
loc_8C0A0268:
	#data bank03.loc_8c034e8c
loc_8c0a026c:
	#data 0x8C287AE8
loc_8C0A0270:
	#data bank15.loc_8c156458

;==============================================
loc_8C0A0274:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x134,PC),r3
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
	mov 0x68,r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmul fr3,fr2
	fldi0 fr3
	fcmp/gt fr3,fr2
	bf loc_8c0a02d4
	fmov fr3,fr4
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)

loc_8C0A02D4:
	mov 0x38,r0
	mov.l @r15,r3
	fmov @(r0,r14),fr3
	mov.w @(0xCA,PC),r0
	fmov @(r0,r3),fr2
	fcmp/gt fr2,fr3
	bt loc_8c0a02f6
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xBC,PC),r0
	mov.l @r15,r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	bra loc_8c0a0314
	mov 0x0C,r0

loc_8C0A02F6:
	mov.w @(0xB0,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0a030c
	mov.l @(0xB4,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0xA4,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0a0316

loc_8C0A030C:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x01,r0
loc_8C0A0314:
	mov.w r0,@(0x1C,r14)

loc_8C0A0316:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A031E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0A03B0,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0A0350
	mov.b @(0x05,r14),r0
	mov 0x17,r5 ; r5 set to 0x17
	mov.l @(loc_8C0A03B8,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x0D,r6 ; r6 set to 0x0d
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0A03BC,pc),r2 ; r2 set to 0x8C04223a
	mov 0x49,r5 ; r5 set to 0x49
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0A0350:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A0356:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8C0A03AE,pc),r2 ; r2 set to 0x2A4
	mov r5,r3
	mov.l r5,@r15
	mov r4,r14
	add r3,r2 ; r2 ??? bc r3 is ???	
	mov.l @(loc_8C0A03B0,pc),r3 ; r3 set to 0x8C034DEe
	mov.l r2,@(0x04,r15)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0A038e
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @(0x04,r15),r3 ; r3 ??? bc r15 is ???	
	mov.b @(0x02,r3),r0
	add 0xFF,r0
	mov.b r0,@(0x02,r3)
	mov.l @r15,r5
	add 0x08,r15
	lds.l @r15+,pr
	bra loc_8C0A050e
	mov.l @r15+,r14

loc_8C0A038E:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A0396:
	mov r4,r3
	mov.l @(loc_8C0A03C0,pc),r1 ; r1 set to 0x8C156464
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A03A8:
	#data 0x041c
loc_8C0A03Aa:
	#data 0x019F
loc_8C0A03Ac:
	#data 0x019e
loc_8C0A03AE:
	#data 0x02A4
	#align4

loc_8C0A03B0:
	#data bank03.loc_8c034dee
loc_8C0A03B4:
	#data bank04.loc_8c045748
loc_8C0A03B8:
	#data bank03.loc_8c034e8c
loc_8C0A03BC:
	#data bank04.loc_8c04223a
loc_8C0A03C0:
	#data bank15.loc_8c156464

;==============================================
loc_8C0A03C4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x156,PC),r1
	mov r14,r5
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add 0x5C,r5
	mov.w @(0x14C,PC),r2
	add r14,r1
	add 0x01,r0
	mov.l @(0x14,r14),r4
	mov.b r0,@(0x4,r14)
	mov.w @(0x144,PC),r0
	mov.l @(0x14C,PC),r3
	jsr @r3
	add r13,r2
	mov.w @(0x13E,PC),r0
	mov 0x01,r6
	mov r14,r1
	add 0x50,r1
	mov.b r6,@(r0,r14)
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
	mov.l @(0x114,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xFC,PC),r0
	mov.b r6,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x08,r6
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r4),fr3
	mov 0x00,r4
	fmov fr3,@(r0,r14)

loc_8C0A0448:
	mov 0x34,r0
	mov r5,r3
	fmov @(r0,r14),fr3
	mov 0x38,r0
	add r4,r3
	ftrc fr3,fpul
	sts fpul,r2
	mov.w r2,@r3
	mov r5,r3
	fmov @(r0,r14),fr3
	add 0x08,r3
	add r4,r3
	ftrc fr3,fpul
	add 0x02,r4
	cmp/hs r6,r4
	sts fpul,r2
	mov.w r2,@r3
	bf loc_8c0a0448
	mov.l @(0xC8,PC),r2
	mov 0x17,r5
	mov 0x0C,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

;==============================================
loc_8C0A0480:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r13
	mov.l @(0x14,r13),r3
	mov 0x24,r0
	mov.l @(0x8,r13),r12
	mov.l r3,@r15
	mov r4,r14
	mov.b @(r0,r5),r2
	add 0x5C,r14
	mov.l @(0xA0,PC),r3
	mov.b r2,@(r0,r13)
	jsr @r3
	mov r13,r4
	mov.w @(0x6,r14),r0
	mov r14,r4
	mov r0,r3
	lds r3,fpul
	mov 0x34,r0
	float fpul,fr3
	fmov fr3,@(r0,r13)
	mov.w @(0x4,r4),r0
	mov.w r0,@(0x6,r4)
	mov.w @(0x2,r4),r0
	mov.w r0,@(0x4,r4)
	mov.w @r4,r0
	mov.w r0,@(0x2,r4)
	mov 0x34,r0
	fmov @(r0,r12),fr3
	add 0x08,r4
	ftrc fr3,fpul
	sts fpul,r3
	mov.w r3,@r14
	mov.w @(0xE,r14),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	float fpul,fr3
	fmov fr3,@(r0,r13)
	mov.w @(0x4,r4),r0
	mov.w r0,@(0x6,r4)
	mov r14,r4
	add 0x08,r4
	mov.w @(0x2,r4),r0
	mov.w r0,@(0x4,r4)
	mov r14,r4
	add 0x08,r4
	mov.w @r4,r0
	mov.w r0,@(0x2,r4)
	mov 0x38,r0
	fmov @(r0,r12),fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x8,r14)
	mov.l @r15,r0
	mov.b @(0x5,r0),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0a0502
	mov.b @(0x4,r13),r0
	add 0x01,r0
	mov.b r0,@(0x4,r13)


loc_8C0A0502:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A050E:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A052A,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0A051C:
	mov.l @(loc_8C0A0540,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0A052A,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A0526:
	#data 0x00Dc
loc_8C0A0528:
	#data 0x00C0
loc_8C0A052A:
	#data 0x012c
loc_8C0A052c:
	#data 0x01A3
	#align4

loc_8C0A0530:
	#data bank12.loc_8c129560
loc_8C0A0534:
	#data bank12.loc_8c1294C8
loc_8C0A0538:
	#data bank03.loc_8c034e8c
loc_8C0A053C:
	#data bank03.loc_8c034dee
loc_8C0A0540:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c0a0544:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x64,PC),r3
	mov 0x02,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a058a
	mov r0,r4
	mov.w @(0x50,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0x50,PC),r3
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

loc_8c0a058a:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0A0592:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0A05C4,pc),r0 ; r0 set to 0x8C156474
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0A05A8:
	mov r4,r3
	mov.l @(loc_8C0A05C8,pc),r1 ; r1 set to 0x8C15647c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a05ba:
	#data 0x2E03
	#align4
loc_8C0A05BC:
	#data bank04.loc_8c044F12
loc_8C0A05C0:
	#data loc_8c0a0592
loc_8C0A05C4:
	#data bank15.loc_8c156474
loc_8C0A05C8:
	#data bank15.loc_8c15647c

;==============================================
loc_8C0A05CC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x130,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x128,PC),r2
	add 0x01,r0
	mov.l @(0x134,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x122,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x11E,PC),r0
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
	mov.w @(0x102,PC),r0
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
	mov.l @(0xFC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xDC,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov 0x3D,r3
	mov.w @(0xD0,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xD4,PC),r3
	mov.l r4,@(r0,r14)
	mov 0x41,r4
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xAE,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.l @(0xBC,PC),r1
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov 0x17,r5
	lds r1,fpul
	mov 0x1E,r6
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	mov.l @(0xAC,PC),r2
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A069C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x88,PC),r2
	mov 0x01,r4
	mov.b @(0x2,r14),r0
	mov r4,r1
	mov.b @r2,r3
	extu.b r0,r0
	xor r4,r0
	shad r0,r1
	extu.b r3,r3
	tst r1,r3
	bf loc_8c0a0704
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c0a06c6
	mov.b @(0x5,r5),r0
	tst r0,r0
	bt loc_8c0a06cc

loc_8C0A06C6:
	mov r14,r4
	bra loc_8c0a092c
	mov.l @r15+,r14

loc_8C0A06CC:
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0a06e2
	mov 0x31,r0
	mov 0xFF,r2
	bra loc_8c0a06e6
	mov.b r2,@(r0,r14)
loc_8C0A06E2:
	mov 0x31,r0
	mov.b r4,@(r0,r14)

loc_8C0A06E6:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x26,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf loc_8c0a0704
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x34,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0A0704:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a0708:
	#data 0x00Dc
loc_8c0a070a:
	#data 0x00C0
loc_8c0a070c:
	#data 0x012c
loc_8c0a070e:
	#data 0x01A3
loc_8c0a0710:
	#data 0x01A1
loc_8c0a0712:
	#data 0x019C
loc_8c0a0714:
	#data 0x0159
loc_8c0a0716:
	#data 0x01A0
	#align4

loc_8C0A0718:
	#data bank12.loc_8c129560
loc_8C0A071C:
	#data bank12.loc_8c1294C8
loc_8C0A0720:
	#data 0x8C2896B0
loc_8C0A0724:
	#data 0x439A4924
loc_8C0A0728:
	#data bank03.loc_8c034e8c
loc_8C0A072c:
	#data 0x8C2895F6
loc_8C0A0730:
	#data bank15.loc_8c15648c

;==============================================
loc_8C0A0734:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xB6,PC),r3
	mov r4,r14
	mov.l @(0xBC,PC),r2
	add r5,r3
	mov.l r3,@r15
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0a0774
	mov.b @(0x5,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x01,r0
	mov.l @r15,r3
	mov.b r0,@(0x3,r3)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0x90,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)

loc_8C0A0774:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A077C:
	mov.l r14,@-r15
	mov.w @(0x74,PC),r0
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	tst r3,r3
	bt.s loc_8c0a0794
	mov r4,r14
	mov 0x21,r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)

loc_8C0A0794:
	mov 0x60,r1
	mov.l @(0x6C,PC),r3
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
	jsr @r3
	mov r14,r4
	mova @(0x50,PC),r0
	fmov @r0,fr3
	mov.w @(0x3A,PC),r0
	fmov @(r0,r13),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bt loc_8c0a07da
	mov.b @(0x5,r14),r0
	mov r13,r5
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0a091e
	mov.l @r15+,r14

loc_8C0A07DA:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A07E2:
	mov r4,r3
	mov.l @(loc_8C0A080C,pc),r1 ; r1 set to 0x8C156494
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a07f4:
	#data 0x02a4
loc_8c0a07f6:
	#data 0x0141
loc_8c0a07f8:
	#data 0x041c
	#align4

loc_8C0A07FC:
	#data bank03.loc_8c034dee
loc_8C0A0800:
	#data 0xBF092492
loc_8C0A0804:
	#data bank04.loc_8c045748
loc_8C0A0808:
	#data 0x43542492
loc_8C0A080C:
	#data bank15.loc_8c156494

;==============================================
loc_8C0A0810:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0A0936,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0A0936,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0A0940,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0A0938,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0A093A,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0A093C,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A0944,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0A0948,pc),r1 ; r1 set to 0x43542492
	mov.b @(r0,r13),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	lds r1,fpul
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0A093A,pc),r0 ; r0 set to 0x12c
	fldi0 fr4
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
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0A094C,pc),r0  ; r0 set to 0x8C0A094c
	fmov.s @r0,fr2
	mov 0x6C,r0 ; r0 set to 0x6c
	mov.l @(loc_8C0A0950,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	fmov.s fr2,@(r0,r14)
	mov 0x1F,r6 ; r6 set to 0x1f
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???	
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???	
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A08C6:
	mov.l r14,@-r15
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	sts.l pr,@-r15
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???	
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r13),fr3
	mov.l @(loc_8C0A0954,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
	mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??, r0 ??	
	cmp/pz r0
	bt loc_8C0A0916
	mov.b @(0x04,r14),r0
	mov r13,r5
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0A091e
	mov.l @r15+,r14

loc_8C0A0916:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A091E:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A093A,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0A092C:
	mov.l @(loc_8C0A0958,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0A093A,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A0936:
	#data 0x00Dc
loc_8C0A0938:
	#data 0x00C0
loc_8C0A093A:
	#data 0x012c
loc_8C0A093C:
	#data 0x01A3
	#align4

loc_8C0A0940:
	#data bank12.loc_8c129560
loc_8C0A0944:
	#data bank12.loc_8c1294C8
loc_8C0A0948:
	#data 0x43542492
loc_8C0A094C:
	#data 0x3C892492
loc_8C0A0950:
	#data bank03.loc_8c034e8c
loc_8C0A0954:
	#data bank03.loc_8c034dee
loc_8C0A0958:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0a095c:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0xCC,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a09a2
	mov r0,r4
	mov.w @(0xB8,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0xB8,PC),r3
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

loc_8c0a09a2:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c0a09aa:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov r5,r0
	nop 
	mov.b r0,@(0x08,r15) 
	mov.b r6,@r15
	mov r7,r0
	nop 
	mov.l @(loc_8c0a0a3c,pc),r3
	mov 0x01,r6
	mov.w r0,@(0x04,r15) 
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0a0a06
	mov r0,r4
	mov.w @(loc_8C0A0A3A,pc),r2
	mov 0x26,r0
	mov.l @(loc_8c0a0a40,pc),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4) 
	mov.w r2,@(r0,r4) 
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4) 
	mov.b @(0x01,r14),r0 
	mov.b r0,@(0x01,r4) 
	mov.l r14,@(0x14,r4) 
	mov.b @(0x08,r15),r0 
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4) 
	mov.w @(0x04,r15),r0 
	mov r0,r3
	lds r3,fpul 
	mov 0x5C,r0
	float fpul,fr3
	fmov.s fr3,@(r0,r4) 
	mov 0x14,r0
	mov.b @(r0,r15),r0
	extu.b r0,r0
	mov.w r0,@(0x1E,r4) 

loc_8c0a0a06:
	mov r4,r0
	nop 
	add 0x0C,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

loc_8C0A0A12:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0A0A44,pc),r0 ; r0 set to 0x8C1564A4
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0A0A28:
	mov r4,r3
	mov.l @(loc_8C0A0A48,pc),r1 ; r1 set to 0x8C1564Ac
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a0a3a:
	#data 0x2E04
	#align4

loc_8C0A0A3C:
	#data bank04.loc_8c044F12
loc_8C0A0A40:
	#data loc_8c0a0A12
loc_8C0A0A44:
	#data bank15.loc_8c1564A4
loc_8C0A0A48:
	#data bank15.loc_8c1564Ac

;==============================================
loc_8C0A0A4C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.w @(0x13A,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x132,PC),r2
	add 0x01,r0
	mov.l @(0x140,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x12C,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x128,PC),r0
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
	mov.w @(0x10C,PC),r0
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
	mov.l @(0x104,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFE,r3
	mov 0x00,r12
	mov.b r2,@(r0,r14)
	mov 0x34,r2
	mov.w @(0xE2,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x42,r4
	mov.w @(0xDC,PC),r0
	mov.l @(0xEC,PC),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l r12,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xBC,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov.l @(0xC8,PC),r2
	mov 0x17,r5
	mov 0x13,r6
	jsr @r2
	mov r14,r4
	mov 0x23,r0
	mov r13,r5
	mov.b r12,@(r0,r14)
	mov 0x04,r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A0B04:
	mov.w @(0x98,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf.s loc_8c0a0b18
	mov r4,r14
	mov.b @(0x5,r5),r0
	tst r0,r0
	bt loc_8c0a0b24

loc_8C0A0B18:
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	bra loc_8c0a0f3a
	mov.l @r15+,r14

loc_8C0A0B24:
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x62,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c0a0b4e
	mov.l @(0x6C,PC),r1
	mov 0x34,r0
	lds r1,fpul
	bra loc_8c0a0b56
	fsts fpul,fr3

loc_8C0A0B4E:
	mov.l @(0x68,PC),r1
	mov 0x34,r0
	lds r1,fpul
	fsts fpul,fr3

loc_8C0A0B56:
	fmov @(r0,r14),fr2
	mov.l @(0x60,PC),r1
	fadd fr3,fr2
	mov.l @(0x60,PC),r4
	lds r1,fpul
	mov 0x01,r1
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x3C,r0
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c0a0b90
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x3C,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0A0B90:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a0b94:
	#data 0x00dc
loc_8c0a0b96:
	#data 0x00c0
loc_8c0a0b98:
	#data 0x012c
loc_8c0a0b9a:
	#data 0x01a3
loc_8c0a0b9c:
	#data 0x01a1
loc_8c0a0b9e:
	#data 0x019c
loc_8c0a0ba0:
	#data 0x0159
loc_8c0a0ba2:
	#data 0x0130
	#align4

loc_8C0A0BA4:
	#data bank12.loc_8c129560
loc_8C0A0BA8:
	#data bank12.loc_8c1294C8
loc_8C0A0BAc:
	#data 0x8C2896B0
loc_8C0A0BB0:
	#data bank03.loc_8c034e8c
loc_8C0A0BB4:
	#data 0xC3325555
loc_8C0A0BB8:
	#data 0x43325555
loc_8C0A0BBc:
	#data 0x434B9249
loc_8C0A0BC0:
	#data 0x8C2895F0
loc_8C0A0BC4:
	#data bank15.loc_8c1564Bc

;==============================================
loc_8C0A0BC8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0A0D28,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0A0C44
	mov.b @(0x05,r14),r0
	mov 0x07,r3 ; r3 set to 0x07
	mov.w @(loc_8C0A0D20,pc),r12 ; r12 set to 0xFF56
	mov 0x06,r13 ; r13 set to 0x06
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b r3,@(r0,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.w r0,@(0x1E,r14)
	mova @(loc_8C0A0D2C,pc),r0  ; r0 set to 0x8C0A0D2c
	fmov.s @r0,fr15

loc_8C0A0BFC:
	mov.w @(0x1E,r14),r0
	mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
	mov r12,r7 ; r7 set to 0xFF56
	mov.l r0,@-r15
	mov r0,r3 ; r3 set to 0x8C0A0D2c
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r14),r6
	bsr loc_8C0A09Aa
	mov r14,r4
	add 0x04,r15
	exts.w r12,r12 ; r12 ??	
	mov.w @(0x1E,r14),r0
	lds r12,fpul
	dt r13
	add 0x01,r0 ; r0 set to 0x22, r0 set to 0x22
	mov.w r0,@(0x1E,r14)
	float fpul,fr3
	mov.w @(0x1E,r14),r0
	and 0x03,r0
	fsub fr15,fr3 ; r3 ??? bc r15 is ???	
	ftrc fr3,fpul
	sts fpul,r12
	bf/s loc_8C0A0BFc
	mov.w r0,@(0x1E,r14)
	mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
	mov.l @(loc_8C0A0D30,pc),r3 ; r3 set to 0x8C04223A, r3 set to 0x8C04223a
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x48,r5 ; r5 set to 0x48, r5 set to 0x48
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
	jmp @r3
	mov.l @r15+,r14

loc_8C0A0C44:
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A0C50:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xC8,PC),r3
	mov r4,r14
	mov.l @(0xCC,PC),r2
	add r5,r3
	mov.l r3,@r15
	jsr @r2
	mov r14,r4
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xB6,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0a0c9a
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0x60,r0
	mov 0x34,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xB0,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8C0A0C9A:
	mov.w @(0x1E,r14),r0
	mov 0x01,r5
	mov.w @(0x7E,PC),r7
	mov.l r0,@-r15
	mov r0,r3
	mov 0x21,r0
	mov.b @(r0,r14),r6
	bsr loc_8c0a09aa
	mov r14,r4
	add 0x04,r15
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov 0x07,r3
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	and 0x03,r0
	mov.w r0,@(0x1E,r14)
	mov.l @r15,r2
	mov.b @(0x6,r2),r0
	tst r0,r0
	bt loc_8c0a0ce8
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov r14,r4
	mov 0x14,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x58,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0A0CE8:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A0CF0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0A0D28,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0A0D18
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0A0F3a
	mov.l @r15+,r14

loc_8C0A0D18:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A0D20:
	#data 0xFF56
loc_8C0A0D22:
	#data 0x02A4
loc_8C0A0D24:
	#data 0x0141
	#align4

loc_8C0A0D28:
	#data bank03.loc_8c034dee
loc_8C0A0D2C:
	#data 0x42480000
loc_8C0A0D30:
	#data bank04.loc_8c04223a
loc_8C0A0D34:
	#data bank04.loc_8c045748
loc_8C0A0D38:
	#data 0x8C2896B0
loc_8C0A0D3C:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0A0D40:
	mov r4,r3
	mov.l @(loc_8C0A0E88,pc),r1 ; r1 set to 0x8C1564C8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0A0D52:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(0x118,PC),r1
	mov.w @(0x116,PC),r2
	mov.l @(0x12C,PC),r3
	add r14,r1
	mov.l r5,@r15
	mov.b @(0x4,r14),r0
	mov.l @(0x14,r14),r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x108,PC),r0
	jsr @r3
	add r4,r2
	mov.w @(0x104,PC),r0
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
	mov.w @(0xE8,PC),r0
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
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r4),r2
	mov 0xFE,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xC2,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bf loc_8c0a0e04
	mov.w @(0xB8,PC),r0
	mov 0x42,r5
	mov.b r5,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	mov 0x03,r3
	mov.b @(r0,r4),r2
	and r3,r2
	mov.b r2,@(r0,r4)
	mov.b @(r0,r4),r1
	mov 0x00,r4
	mov.w @(0xA0,PC),r0
	add 0x37,r1
	mov.l @(0xB0,PC),r2
	mov.b r1,@(r0,r14)
	add 0x0B,r0
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
	mov.w @(0x7E,PC),r0
	mov.b r5,@(r0,r14)

loc_8C0A0E04:
	mov.w @(0x7C,PC),r0
	mov 0x1A,r3
	mov 0x17,r5
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov.l @(0x80,PC),r3
	add 0x15,r6
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0A0E26:
	mov.w @(0x5C,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf.s loc_8c0a0e3a
	mov r4,r14
	mov.b @(0x5,r5),r0
	tst r0,r0
	bt loc_8c0a0e46

loc_8C0A0E3A:
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	bra loc_8c0a0f48
	mov.l @r15+,r14

loc_8C0A0E46:
	mov 0x24,r0
	mov.l @(0x50,PC),r4
	mov.b @(r0,r5),r2
	mov 0x01,r1
	mov.b r2,@(r0,r14)
	mov 0x3C,r0
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c0a0e72
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x38,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0A0E72:
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a0e76:
	#data 0x00dc
loc_8c0a0e78:
	#data 0x00c0
loc_8c0a0e7a:
	#data 0x012c
loc_8c0a0e7c:
	#data 0x01a3
loc_8c0a0e7e:
	#data 0x019c
loc_8c0a0e80:
	#data 0x01a1
loc_8c0a0e82:
	#data 0x019d
loc_8c0a0e84:
	#data 0x013f
loc_8c0a0e86:
	#data 0x0159
	#align4

loc_8C0A0E88:
	#data bank15.loc_8c1564C8
loc_8C0A0E8C:
	#data bank12.loc_8c129560
loc_8C0A0E90:
	#data bank12.loc_8c1294C8
loc_8C0A0E94:
	#data 0x8C2896B0
loc_8C0A0E98:
	#data bank03.loc_8c034e8c
loc_8C0A0E9c:
	#data 0x8C2895F0
loc_8C0A0EA0:
	#data bank15.loc_8c1564D8

;==============================================
loc_8C0A0EA4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0xF8,PC),r2
	mov r4,r14
	mov r5,r3
	mov.l r5,@r15
	add r3,r2
	mov.l r2,@(0x4,r15)
	mov.l @(0x14,r14),r5
	bsr loc_8c0a0f60
	mov r14,r4
	mov.l @(0xEC,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bf loc_8c0a0ece
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov r14,r4

loc_8C0A0ECE:
	mov.l @(0x4,r15),r2
	mov.b @(0x6,r2),r0
	tst r0,r0
	bt loc_8c0a0ee6
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov.l @(0xD8,PC),r3
	mov 0x1D,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4

loc_8C0A0EE6:
	mov.l @(0xD0,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0a0f02
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @r15,r5
	add 0x08,r15
	lds.l @r15+,pr
	bra loc_8c0a0f48
	mov.l @r15+,r14

loc_8C0A0F02:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A0F0A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0A0FAC,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0A0F32
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0A0F48
	mov.l @r15+,r14

loc_8C0A0F32:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A0F3A:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A0FA8,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0A0F48:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A0FA8,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0A0F56:
	mov.l @(loc_8C0A0FBC,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0A0FA8,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

loc_8C0A0F60:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x34,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c0a0f88
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	bra loc_8c0a0f94
	fadd fr3,fr2

loc_8C0A0F88:
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	fsub fr3,fr2

loc_8C0A0F94:
	mov.l @(0x28,PC),r1
	fmov fr2,@(r0,r4)
	mov 0x5C,r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	rts
	fmov fr2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a0fa6:
	#data 0x02a4
loc_8C0A0FA8:
	#data 0x012c
loc_8C0A0FAa:
	#data 0x0130
	#align4

loc_8C0A0FAC:
	#data bank03.loc_8c034dee
loc_8C0A0FB0:
	#data bank04.loc_8c045748
loc_8C0A0FB4:
	#data bank03.loc_8c034e8c
loc_8C0A0FB8:
	#data bank03.loc_8c03340c
loc_8C0A0FBC:
	#data bank04.loc_8c0450C0
loc_8C0A0Fc0:
	#data 0x42480000

;==============================================
loc_8C0A0Fc4:
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
	bt.s loc_8c0a100c
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

loc_8c0a100c:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A1018:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0A1050,pc),r0 ; r0 set to 0x8C1564Ec
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0A102E:
	mov r4,r3
	mov.l @(loc_8C0A1054,pc),r1 ; r1 set to 0x8C1564F8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a1040:
	#data 0x2e05
loc_8c0a1042:
	#data 0x00cc
loc_8c0a1044:
	#data 0x0158
	#align4

loc_8C0A1048:
	#data bank04.loc_8c044F12
loc_8C0A104C:
	#data loc_8c0a1018
loc_8C0A1050:
	#data bank15.loc_8c1564Ec
loc_8C0A1054:
	#data bank15.loc_8c1564F8

;==============================================
loc_8C0A1058:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x150,PC),r0
	mov r5,r13
	mov r4,r14
	mov.w @(0x14E,PC),r1
	mov.l @(r0,r13),r3
	mov.w @(0x148,PC),r12
	add r14,r1
	mov.l r3,@r15
	mov.b @(0x4,r14),r0
	add r14,r12
	mov.w @(0x140,PC),r2
	add 0x01,r0
	mov.l @(0x14C,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x13A,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x136,PC),r0
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
	mov.w @(0x11A,PC),r0
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
	mov.l @(0x114,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0x3E,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xF4,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r4,@(r0,r14)
	mov 0x00,r4
	mov.w @(0xEE,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xF0,PC),r3
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
	mov 0x44,r2
	mov.w @(0xCA,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0xA0,r0
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov 0x34,r8
	mov.l @(0xC8,PC),r2
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	jsr @r2
	add r14,r8
	mov.l @(0xB8,PC),r1
	and 0x0F,r0
	shll r0
	fldi0 fr4
	mov.w @(r0,r1),r3
	mov 0x5C,r0
	fmov @r8,fr2
	mov 0x34,r2
	lds r3,fpul
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@r8
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mova @(0x9C,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x98,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov.l @r15,r0
	fmov @(r0,r2),fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x2,r12)
	mova @(0x8C,PC),r0
	fmov @r0,fr3
	mov.w @(0x66,PC),r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	mov.l @(0x84,PC),r3
	mov 0x17,r5
	ftrc fr2,fpul
	sts fpul,r0
	mov.w r0,@(0x4,r12)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	add 0x20,r6
	jsr @r3
	mov r14,r4
	mov r14,r4
	mov r13,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A1188:
	mov.w @(0x3E,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf.s loc_8c0a119c
	mov r4,r14
	mov.b @(0x5,r5),r0
	tst r0,r0
	bt loc_8c0a11a2

loc_8C0A119C:
	mov r14,r4
	bra loc_8c0a187e
	mov.l @r15+,r14

loc_8C0A11A2:
	mov 0x24,r0
	mov.l @(0x48,PC),r1
	mov.b @(r0,r5),r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a11b8:
	#data 0x020c
loc_8c0a11ba:
	#data 0x00cc
loc_8c0a11bc:
	#data 0x00dc
loc_8c0a11be:
	#data 0x00c0
loc_8c0a11c0:
	#data 0x012c
loc_8c0a11c2:
	#data 0x01a3
loc_8c0a11c4:
	#data 0x01a1
loc_8c0a11c6:
	#data 0x019c
loc_8c0a11c8:
	#data 0x041c
loc_8c0a11ca:
	#data 0x0159
	#align4

loc_8C0A11CC:
	#data bank12.loc_8c129560
loc_8C0A11D0:
	#data bank12.loc_8c1294C8
loc_8C0A11D4:
	#data 0x8C2896B0
loc_8C0A11D8:
	#data bank03.loc_8c03319e
loc_8C0A11DC:
	#data bank15.loc_8c156508
loc_8C0A11E0:
	#data 0x42092492
loc_8C0A11E4:
	#data 0x3E892492
loc_8C0A11E8:
	#data 0x44700000
loc_8C0A11EC:
	#data bank03.loc_8c034e8c
loc_8C0A11F0:
	#data bank15.loc_8c156528

;==============================================
loc_8C0A11F4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r8,@-r15
	mov.w @(loc_8C0A130C,pc),r13 ; r13 set to 0xCc
	sts.l pr,@-r15
	mov.l @(loc_8C0A1314,pc),r3 ; r3 set to 0x8C0334A8
	add r14,r13 ; r13 ??? bc r14 is ???	
	jsr @r3
	mov 0x00,r12 ; r12 set to 0x00
	tst r0,r0
	bf loc_8C0A1214
	mov.w @(loc_8C0A130E,pc),r0 ; r0 set to 0x12c
	bra loc_8C0A121a
	mov.b r12,@(r0,r14)

loc_8C0A1214:
	mov.w @(loc_8C0A130E,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov.b r2,@(r0,r14)

loc_8C0A121A:
	mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
	mov.l @(loc_8C0A1318,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
	mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x04,r13),r0
	mov r0,r3 ; r3 set to 0x60, r3 set to 0x60
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r14),fr2
	float fpul,fr3
	fcmp/gt fr3,fr2
	bf loc_8C0A12C4
	mov.b @(0x05,r14),r0
	mov 0x40,r3 ; r3 set to 0x40, r3 set to 0x40
	add 0x01,r0 ; r0 set to 0x39, r0 set to 0x39
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0A1310,pc),r0 ; r0 set to 0x1A1, r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.w r12,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r12,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l @(loc_8C0A131C,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.l r12,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x02,r13),r0
	mov r0,r2 ; r2 set to 0x188, r2 set to 0x188
	lds r2,fpul
	mov.l @(loc_8C0A1320,pc),r2 ; r2 set to 0x8C03319E, r2 set to 0x8C03319e
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	mov r0,r8 ; r8 set to 0x34, r8 set to 0x34
	float fpul,fr3
	fmov.s fr3,@(r0,r14)
	jsr @r2
	add r14,r8 ; r8 ??? bc r14 is ???, r8 ??? bc r14 is ???	
	mov.l @(loc_8C0A1324,pc),r1 ; r1 set to 0x8C156508, r1 set to 0x8C156508
	and 0x0F,r0
	shll r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s @r8,fr2 ; r2 ??? bc r8 is ???, r2 ??? bc r8 is ???	
	mov.w @(r0,r1),r3 ; r3 ??, r3 ??	
	mova @(loc_8C0A1328,pc),r0  ; r0 set to 0x8C0A1328, r0 set to 0x8C0A1328
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov r14,r4
	lds r3,fpul
	mov.l @(loc_8C0A1330,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r8
	fmov.s @r0,fr3 ; r3 ??, r3 ??	
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0A132C,pc),r0  ; r0 set to 0x8C0A132C, r0 set to 0x8C0A132c
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov.l @r15+,r8
	add 0x22,r6
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0A12C4:
	mov.w @(loc_8C0A1312,pc),r0 ; r0 set to 0x19f
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0A12D4
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x1A0
	bra loc_8C0A12E4
	mov.b r0,@(0x04,r14)

loc_8C0A12D4:
	lds.l @r15+,pr
	mov.l @(loc_8C0A1334,pc),r3 ; r3 set to 0x8C045748
	mov r14,r4
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0A12E4:
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A12F0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0A1314,pc),r3 ; r3 set to 0x8C0334A8
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0A1338
	mov.w @(loc_8C0A130E,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	bra loc_8C0A133e
	mov.b r3,@(r0,r14)

;==============================================
loc_8C0A130C:
	#data 0x00Cc
loc_8C0A130E:
	#data 0x012c
loc_8C0A1310:
	#data 0x01A1
loc_8C0A1312:
	#data 0x019f
	#align4

loc_8C0A1314:
	#data bank03.loc_8c0334A8
loc_8C0A1318:
	#data bank03.loc_8c034dee
loc_8C0A131C:
	#data 0x8C2896B0
loc_8C0A1320:
	#data bank03.loc_8c03319e
loc_8C0A1324:
	#data bank15.loc_8c156508
loc_8C0A1328:
	#data 0xC2092492
loc_8C0A132C:
	#data 0xBE892492
loc_8C0A1330:
	#data bank03.loc_8c034e8c
loc_8C0A1334:
	#data bank04.loc_8c045748

;==============================================
loc_8C0A1338:
	mov.w @(loc_8C0A13DC,pc),r0 ; r0 set to 0x12c
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r14)

loc_8C0A133E:
	mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
	mov.l @(loc_8C0A13E4,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
	fmov.s @(r0,r14),fr2
	mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0A13DE,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	mov.l @r15,r2
	fmov.s @(r0,r2),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8C0A137a
	mov.w @(loc_8C0A13DE,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	mov.l @r15,r2
	fmov.s @(r0,r2),fr3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	bra loc_8C0A1390
	fmov.s fr3,@(r0,r14)

loc_8c0a137a:
	mov.w @(loc_8C0A13E0,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0a1390
	mov.l @(loc_8c0a13e8,pc),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0A13E2,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0a1396

loc_8C0A1390:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)

loc_8C0A1396:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A139E:
	mov.l r14,@-r15
	mov r4,r5
	sts.l pr,@-r15
	mov.l @(loc_8C0A13EC,pc),r3 ; r3 set to 0x8C10235c
	mov 0x01,r6 ; r6 set to 0x01
	mov r4,r14
	mov 0x08,r7 ; r7 set to 0x08
	jsr @r3
	add 0x34,r5
	mov.l @(loc_8C0A13F0,pc),r2 ; r2 set to 0x8C04223a
	mov 0x49,r5 ; r5 set to 0x49
	jsr @r2
	mov r14,r4
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0A13DC,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A13CA:
	mov r4,r3
	mov.l @(loc_8C0A13F4,pc),r1 ; r1 set to 0x8C156530
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A13DC:
	#data 0x012c
loc_8C0A13DE:
	#data 0x041c
loc_8c0a13e0:
	#data 0x019f
loc_8c0a13e2:
	#data 0x019E
	#align4

loc_8C0A13E4:
	#data bank03.loc_8c034dee
loc_8C0A13E8:
	#data bank04.loc_8c045748
loc_8C0A13EC:
	#data bank10.loc_8c10235c
loc_8C0A13F0:
	#data bank04.loc_8c04223a
loc_8C0A13F4:
	#data bank15.loc_8c156530

;==============================================
loc_8C0A13F8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.w @(0x132,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x128,PC),r4
	add 0x01,r0
	mov.w @(0x126,PC),r2
	mov.b r0,@(0x4,r14)
	add r14,r4
	mov.w @(0x122,PC),r0
	mov.l @(0x134,PC),r3
	jsr @r3
	add r13,r2
	mov.w @(0x11C,PC),r0
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
	mov.w @(0x100,PC),r0
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
	mov.l @(0xFC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0xF8,PC),r12
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xD8,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
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
	shll2 r0
	shll r0
	mov.w @(r0,r12),r0
	lds r0,fpul
	mova @(0xCC,PC),r0
	fmov @r0,fr2
	float fpul,fr3
	fmul fr2,fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x2,r4)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	mov 0x02,r1
	extu.b r0,r0
	shll2 r0
	shll r0
	add r12,r0
	mov.w @(r0,r1),r3
	mova @(0xB4,PC),r0
	fmov @r0,fr1
	lds r3,fpul
	float fpul,fr3
	fmul fr1,fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x4,r4)
	mov.w @(0x86,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0a14c4
	mov.w @(0x2,r4),r0
	neg r0,r0
	mov.w r0,@(0x2,r4)

loc_8C0A14C4:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll r3
	add r12,r3
	mov.w @(0x4,r3),r0
	mov r0,r2
	mov.w @(0x6A,PC),r0
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r3
	mov.w @(0x66,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bt loc_8c0a14ee
	mov.w @(0x60,PC),r0
	mov 0x43,r1
	mov 0x42,r3
	mov.b r1,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)

loc_8C0A14EE:
	mov 0x21,r0
	mov.l @(0x6C,PC),r3
	mov.b @(r0,r14),r6
	mov 0x17,r5
	extu.b r6,r6
	shll2 r6
	shll r6
	add r12,r6
	mov.w @(0x6,r6),r0
	mov r0,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A1512:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0A1536,pc),r4 ; r4 set to 0xCc
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0A1548,pc),r0 ; r0 set to 0x158
	add r14,r4 ; r4 ??? bc r14 is ???	
	sts.l pr,@-r15
	mov.w @r4,r2
	mov.w @(r0,r13),r3
	cmp/eq r2,r3
	bt loc_8C0A1564
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0A187e
	mov.l @r15+,r14

;##############################################
loc_8c0a1536:
	#data 0x00cc
loc_8c0a1538:
	#data 0x00dc
loc_8c0a153a:
	#data 0x00c0
loc_8c0a153c:
	#data 0x012c
loc_8c0a153e:
	#data 0x01a3
loc_8c0a1540:
	#data 0x0130
loc_8c0a1542:
	#data 0x01a1
loc_8c0a1544:
	#data 0x00ff
loc_8c0a1546:
	#data 0x019c
loc_8c0a1548:
	#data 0x0158
	#align4

loc_8C0A154C:
	#data bank12.loc_8c129560
loc_8C0A1550:
	#data bank12.loc_8c1294C8
loc_8C0A1554:
	#data bank15.loc_8c156540
loc_8C0A1558:
	#data 0x3FD55555
loc_8C0A155c:
	#data 0x40092492
loc_8C0A1560:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0A1564:
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r3
	mov 0x34,r2 ; r2 set to 0x34
	add r14,r2 ; r2 ??? bc r14 is ???	
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(0x02,r4),r0
	fmov.s @r2,fr2
	mov r0,r3 ; r3 set to 0x38
	lds r3,fpul
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	mov 0x38,r2 ; r2 set to 0x38
	mov.w @(0x04,r4),r0
	add r14,r2 ; r2 ??? bc r14 is ???	
	fmov.s @r2,fr2
	mov r0,r3 ; r3 set to 0x38
	lds r3,fpul
	mov.l @(loc_8C0A16AC,pc),r3 ; r3 set to 0x8C034DEe
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C0A15B8
	mov.b @(0x04,r14),r0
	mov r13,r5
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0A1870
	mov.l @r15+,r14

loc_8C0A15B8:
	mov.w @(loc_8C0A169A,pc),r0 ; r0 set to 0x1A1
	mov.w @(loc_8C0A169C,pc),r3 ; r3 set to 0xFf
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/eq r3,r2
	bt loc_8C0A15D0
	lds.l @r15+,pr
	mov.l @(loc_8C0A16B0,pc),r1 ; r1 set to 0x8C045748
	mov r14,r4
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_8C0A15D0:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A15D8:
	mov r4,r3
	mov.l @(loc_8C0A16B4,pc),r1 ; r1 set to 0x8C156590
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0A15EA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0A169E,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0A169E,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0A16B8,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0A16A0,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0A16A2,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0A16A4,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A16BC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0A16C0,pc),r5 ; r5 set to 0x8C1564E0
	mov.b @(r0,r13),r2
	mov 0x22,r3 ; r3 set to 0x22
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0A16A2,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r4,@(r0,r14)
	mov.w @(loc_8C0A16A6,pc),r0 ; r0 set to 0x13f
	mov.b r3,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13e
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
	mova @(loc_8C0A16C4,pc),r0  ; r0 set to 0x8C0A16C4
	fmov.s @r0,fr4 ; r4 ??	
	mov.w @(loc_8C0A16A8,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C0A16C8
	mov r5,r4 ; r4 set to 0x8C1564E0
	mov 0x21,r3 ; r3 set to 0x21
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov.b @r3,r3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r4 ; r4 ??? bc r3 is ???	
	mov.w @r4,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	bra loc_8C0A16E4
	fsub fr3,fr2

;##############################################
loc_8C0A169A:
	#data 0x01A1
loc_8C0A169C:
	#data 0x00Ff
loc_8C0A169E:
	#data 0x00Dc
loc_8C0A16A0:
	#data 0x00C0
loc_8C0A16A2:
	#data 0x012c
loc_8C0A16A4:
	#data 0x01A3
loc_8C0A16A6:
	#data 0x013f
loc_8C0A16A8:
	#data 0x0130
	#align4

loc_8C0A16AC:
	#data bank03.loc_8c034dee
loc_8C0A16B0:
	#data bank04.loc_8c045748
loc_8C0A16B4:
	#data bank15.loc_8c156590
loc_8C0A16B8:
	#data bank12.loc_8c129560
loc_8C0A16BC:
	#data bank12.loc_8c1294C8
loc_8C0A16C0:
	#data bank15.loc_8c1564E0
loc_8C0A16C4:
	#data 0x3FD55555

;==============================================
loc_8C0A16C8:
	mov 0x21,r2 ; r2 set to 0x21
	fmov fr4,fr0
	add r14,r2 ; r2 ??? bc r14 is ???	
	mov.b @r2,r2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	extu.b r2,r2
	shll r2
	shll r2
	add r2,r4
	mov.w @r4,r3
	lds r3,fpul
	float fpul,fr3
	fmac fr0,fr3,fr2

loc_8C0A16E4:
	mov 0x21,r3 ; r3 set to 0x21, r3 set to 0x21
	fmov.s fr2,@(r0,r14)
	add r14,r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	mov r14,r2
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	add r0,r2
	mov.l r2,@-r15
	mov.b @r3,r3
	mov.l @(loc_8C0A1820,pc),r2 ; r2 set to 0x8C03319E, r2 set to 0x8C03319e
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r5
	mov.w @(0x02,r5),r0
	mov r0,r3 ; r3 set to 0x38, r3 set to 0x38
	lds r3,fpul
	mov.l @r15+,r3 ; r3 ??? bc r15 is ???, r3 ??? bc r15 is ???	
	mova @(loc_8C0A181C,pc),r0  ; r0 set to 0x8C0A181C, r0 set to 0x8C0A181c
	fmov.s @r0,fr0 ; r0 ??, r0 ??	
	float fpul,fr3
	fmov.s @r3,fr2 ; r2 ??? bc r3 is ???, r2 ??? bc r3 is ???	
	fmac fr0,fr3,fr2
	jsr @r2
	fmov.s fr2,@r3
	mov 0x1F,r4 ; r4 set to 0x1F, r4 set to 0x1f
	and r0,r4 ; r4 ??? bc r0 is ???, r4 ??? bc r0 is ???	
	exts.w r4,r4
	mov 0x10,r3 ; r3 set to 0x10, r3 set to 0x10
	sub r4,r3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???	
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r14),fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0A1810,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8C0A1738
	mova @(loc_8C0A1824,pc),r0  ; r0 set to 0x8C0A1824, r0 set to 0x8C0A1824
	bra loc_8C0A173c
	fmov.s @r0,fr3

loc_8c0a1738:
	mova @(loc_8C0A1828,pc),r0 
	fmov.s @r0,fr3

loc_8c0a173c:
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14) 
	mova @(loc_8C0A182C,pc),r0 
	fmov.s @r0,fr3
	mov 0x68,r0
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C0A1812,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0a1762
	mov 0x44,r4
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x68,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14) 

loc_8c0a1762:
	mov.w @(loc_8C0A1814,pc),r0
	mov 0x00,r5
	mov.l @(loc_8C0A1830,pc),r3
	mov 0x29,r6
	mov.b r4,@(r0,r14) 
	add 0x0B,r0
	mov.w r5,@(r0,r14) 
	add 0xF2,r0
	mov.b r5,@(r0,r14) 
	add 0x26,r0
	mov.l r5,@(r0,r14) 
	mov 0x17,r5
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov.w @(loc_8C0A1816,pc),r0
	mov.l @(loc_8c0a1834,pc),r2
	mov.b r4,@(r0,r14) 
	add 0x01,r0
	mov.b r4,@(r0,r14) 
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr 
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0a17a2:
	mov.l r14,@-r15
	mov 0x24,r0
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	mov 0x5C,r1
	add r14,r1
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14) 
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x68,r1
	add r14,r1
	mov.l @(loc_8c0a1838,pc),r3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0A1818,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0a17ea
	mov.l @(loc_8c0a183c,pc),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0A181A,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0a17f2

loc_8c0a17ea:
	mov.b @(0x04,r14),r0 
	add 0x01,r0
	bra loc_8c0a1808
	mov.b r0,@(0x04,r14) 

loc_8c0a17f2:
	mov.l @(loc_8c0a1840,pc),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0a1808
	lds.l @r15+,pr 
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0a187e
	mov.l @r15+,r14

loc_8c0a1808:
	lds.l @r15+,pr 
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a1810:
	#data 0x01A3
loc_8C0A1812:
	#data 0x0130
loc_8C0A1814:
	#data 0x01A1
loc_8C0A1816:
	#data 0x019C
loc_8C0A1818:
	#data 0x019F
loc_8C0A181A:
	#data 0x019E

loc_8c0a181c:
	#data 0x40092492
loc_8c0a1820:
	#data bank03.loc_8c03319e
loc_8c0a1824:
	#data 0xc1baaaaa
loc_8C0A1828:
	#data 0xC1D55555
loc_8C0A182C:
	#data 0xBE555555
loc_8C0A1830:
	#data 0x8C2896B0
loc_8c0a1834:
	#data bank03.loc_8c034e8c
loc_8c0a1838:
	#data bank03.loc_8c034dee
loc_8c0a183c:
	#data bank04.loc_8c045748
loc_8c0a1840:
	#data bank03.loc_8c03340c

;==============================================
loc_8C0A1844:
	mov.l r14,@-r15
	mov r4,r5
	sts.l pr,@-r15
	mov.l @(loc_8C0A188C,pc),r3 ; r3 set to 0x8C10235c
	mov 0x01,r6 ; r6 set to 0x01
	mov r4,r14
	mov 0x08,r7 ; r7 set to 0x08
	jsr @r3
	add 0x34,r5
	mov.l @(loc_8C0A1890,pc),r2 ; r2 set to 0x8C04223a
	mov 0x49,r5 ; r5 set to 0x49
	jsr @r2
	mov r14,r4
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0A1888,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A1870:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A1888,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0A187E:
	mov.l @(loc_8C0A1894,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0A1888,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A1888:
	#data 0x012c
	#align4

loc_8C0A188C:
	#data bank10.loc_8c10235c
loc_8C0A1890:
	#data bank04.loc_8c04223a
loc_8C0A1894:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0a1898:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x144,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a18de
	mov r0,r4
	mov.w @(0x126,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0x130,PC),r3
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

loc_8c0a18de:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0A18E6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.l @(0xFC,PC),r3
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x01,r6
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0a1928
	mov r0,r4
	mov.w @(0xDA,PC),r2
	mov 0x26,r0
	mov.l @(0xE8,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8C0A1928:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A1934:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0A19F8,pc),r0 ; r0 set to 0x8C1565C0
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0A194A:
	mov r4,r3
	mov.l @(loc_8C0A19FC,pc),r1 ; r1 set to 0x8C1565C8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0A195C:
	mov.w @(0x86,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0x98,PC),r3
	add 0x01,r0
	mov.w @(0x7A,PC),r2
	mov.b r0,@(0x4,r4)
	mov.w @(0x78,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0x74,PC),r0
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
	mov.w @(0x58,PC),r0
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
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x00,r3
	mov.b r2,@(r0,r4)
	mov 0xFE,r2
	mov.w @(0x30,PC),r0
	mov.b r3,@(r0,r4)
	mov 0x31,r0
	mov.b r2,@(r0,r4)
	mov 0x04,r0
	mov.w r0,@(0x1C,r4)
	lds.l @r15+,pr

loc_8C0A19C4:
	mov.w @(0x26,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf.s loc_8c0a19d8
	mov r4,r14
	mov.b @(0x5,r5),r0
	tst r0,r0
	bt loc_8c0a1a08

loc_8C0A19D8:
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	bra loc_8c0a1d48
	mov.l @r15+,r14

;##############################################
loc_8c0a19e4:
	#data 0x2e06
loc_8c0a19e6:
	#data 0x00dc
loc_8c0a19e8:
	#data 0x00c0
loc_8c0a19ea:
	#data 0x012c
loc_8c0a19ec:
	#data 0x01a3
loc_8c0a19ee:
	#data 0x0159
	#align4

loc_8C0A19F0:
	#data bank04.loc_8c044F12
loc_8C0A19F4:
	#data loc_8c0a1934
loc_8C0A19F8:
	#data bank15.loc_8c1565C0
loc_8C0A19FC:
	#data bank15.loc_8c1565C8
loc_8C0A1A00:
	#data bank12.loc_8c129560
loc_8C0A1A04:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0A1A08:
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0xE8,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c0a1a32
	mov.l @(0xE4,PC),r1
	mov 0x34,r0
	lds r1,fpul
	bra loc_8c0a1a3a
	fsts fpul,fr3

loc_8C0A1A32:
	mov.l @(0xE0,PC),r1
	mov 0x34,r0
	lds r1,fpul
	fsts fpul,fr3

loc_8C0A1A3A:
	fmov @(r0,r14),fr2
	mov.l @(0xD8,PC),r1
	fadd fr3,fr2
	mov.l @(0xD8,PC),r4
	lds r1,fpul
	mov 0x01,r1
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x3C,r0
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c0a1a74
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0xB4,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0A1A74:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A1A78:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0a1a96
	mov.b @(0x5,r4),r0
	mov 0x00,r5
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x21,r0
	mov.b r5,@(r0,r4)
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)

loc_8C0A1A96:
	rts
	nop

;----------------------------------------------
loc_8C0A1A9A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0x68,PC),r2
	mov r5,r3
	mov.l r5,@r15
	add r3,r2
	mov.l r2,@(0x4,r15)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0a1ad8
	mov 0x02,r0
	mov.w r0,@(0x1C,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov 0x01,r5
	bsr loc_8c0a18e6
	mov r14,r4
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov 0x01,r3
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)

loc_8C0A1AD8:
	mov.l @(0x4,r15),r1
	mov.b @(0x6,r1),r0
	tst r0,r0
	bt loc_8c0a1af2
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @r15,r5
	add 0x08,r15
	lds.l @r15+,pr
	bra loc_8c0a1d48
	mov.l @r15+,r14

loc_8C0A1AF2:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A1AFA:
	mov r4,r3
	mov.l @(loc_8C0A1B24,pc),r1 ; r1 set to 0x8C1565E0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a1b0c:
	#data 0x0130
loc_8c0a1b0e:
	#data 0x02A4
	#align4

loc_8C0A1B10:
	#data 0xC3325555
loc_8C0A1B14:
	#data 0x43325555
loc_8C0A1B18:
	#data 0x434B9249
loc_8C0A1B1c:
	#data 0x8C2895F0
loc_8C0A1B20:
	#data bank15.loc_8c1565D8
loc_8C0A1B24:
	#data bank15.loc_8c1565E0

;==============================================
loc_8C0A1B28:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(loc_8C0A1C6C,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0A1C6C,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C0A1C80,pc),r3 ; r3 set to 0x8C129560
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l r5,@r15
	mov.b @(0x04,r14),r0
	mov.l @(0x14,r14),r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0A1C6E,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???	
	mov.w @(loc_8C0A1C70,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0A1C72,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A1C84,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0A1C70,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x44,r5 ; r5 set to 0x44
	mov.w @(loc_8C0A1C74,pc),r0 ; r0 set to 0x19c
	mov.b r5,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r5,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bf/s loc_8C0A1BAe
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_8C0A1C76,pc),r0 ; r0 set to 0x1A1
	mov 0x42,r3 ; r3 set to 0x42
	bra loc_8C0A1BB4
	mov.b r3,@(r0,r14)

loc_8c0a1bae:
	mov.w @(loc_8c0a1c76,pc),r0
	mov 0x43,r2
	mov.b r2,@(r0,r14) 

loc_8c0a1bb4:
	mov.w @(loc_8C0A1C78,pc),r0
	mov.l @(loc_8C0A1C88,pc),r3
	mov.w r5,@(r0,r14) 
	add 0xF2,r0
	mov.b r5,@(r0,r14) 
	add 0x26,r0
	mov.l r5,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	mov 0x1A,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov.w @(loc_8C0A1C7A,pc),r0
	mov.b r3,@(r0,r14) 
	add 0xFF,r0
	mov.b r3,@(r0,r14) 
	mov 0x34,r0
	fmov.s @(r0,r4),fr3
	mov.l @(loc_8c0a1c8c,pc),r3
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x3C,r0
	fmov.s @(r0,r4),fr3
	jsr @r3
	fmov.s fr3,@(r0,r14) 
	mov 0x0F,r4
	mov r14,r3
	and r0,r4
	mov 0x38,r0
	add r0,r3
	mov.l @(loc_8c0a1c90,pc),r0
	exts.w r4,r4
	mov.l r3,@-r15
	shll r4
	mov.w @(r0,r4),r2
	mova @(loc_8C0A1C94,pc),r0 
	fmov.s @r0,fr0
	mova @(loc_8C0A1C98,pc),r0 
	lds r2,fpul 
	mov.l @r15+,r2
	float fpul,fr3
	fmov.s @r2,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r2
	fmov.s @r0,fr3
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14) 
	mova @(loc_8C0A1C9C,pc),r0 
	fmov.s @r0,fr3
	mov 0x68,r0
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C0A1C7C,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0a1c40
	mov 0x29,r6
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x68,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14) 

loc_8c0a1c40:
	mov.l @(loc_8c0a1ca0,pc),r3
	mov 0x17,r5
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r14

loc_8C0A1C52:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(loc_8C0A1CA4,pc),r1 ; r1 set to 0x8C1565F0
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A1C6C:
	#data 0x00Dc
loc_8C0A1C6E:
	#data 0x00C0
loc_8C0A1C70:
	#data 0x012c
loc_8C0A1C72:
	#data 0x01A3
loc_8C0A1C74:
	#data 0x019c
loc_8C0A1C76:
	#data 0x01A1
loc_8c0a1c78:
	#data 0x01Ac
loc_8c0a1c7a:
	#data 0x013F
loc_8c0a1c7c:
	#data 0x0130
	#align4

loc_8C0A1C80:
	#data bank12.loc_8c129560
loc_8C0A1C84:
	#data bank12.loc_8c1294C8
loc_8c0a1c88:
	#data 0x8C2896B0
loc_8C0A1C8C:
	#data bank03.loc_8c03319e
loc_8C0A1C90:
	#data bank15.loc_8c1565A0
loc_8c0a1c94:
	#data 0x40092492
loc_8c0a1c98:
	#data 0xC1BAAAAa
loc_8c0a1c9c:
	#data 0xBE555555
loc_8C0A1CA0:
	#data bank03.loc_8c034e8c
loc_8C0A1CA4:
	#data bank15.loc_8c1565F0

;==============================================
loc_8C0A1CA8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov.l @(0xBC,PC),r3
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
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x96,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0a1cea
	mov.l @(0x98,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x8A,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0a1cf8

loc_8C0A1CEA:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A1CF8:
	mov.l @(0x80,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0a1d14
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0a1d56
	mov.l @r15+,r14

loc_8C0A1D14:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A1D1C:
	mov.l r14,@-r15
	mov r4,r5
	sts.l pr,@-r15
	mov.l @(loc_8C0A1D80,pc),r3 ; r3 set to 0x8C10235c
	mov 0x01,r6 ; r6 set to 0x01
	mov r4,r14
	mov 0x08,r7 ; r7 set to 0x08
	jsr @r3
	add 0x34,r5
	mov.l @(loc_8C0A1D84,pc),r2 ; r2 set to 0x8C04223a
	mov 0x49,r5 ; r5 set to 0x49
	jsr @r2
	mov r14,r4
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0A1D72,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A1D48:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A1D72,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0A1D56:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A1D72,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0A1D64:
	mov.l @(loc_8C0A1D88,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0A1D72,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A1D6e:
	#data 0x019f
loc_8C0A1D70:
	#data 0x019e
loc_8C0A1D72:
	#data 0x012c
	#align4

loc_8C0A1D74:
	#data bank03.loc_8c034dee
loc_8C0A1D78:
	#data bank04.loc_8c045748
loc_8C0A1D7C:
	#data bank03.loc_8c03340c
loc_8C0A1D80:
	#data bank10.loc_8c10235c
loc_8C0A1D84:
	#data bank04.loc_8c04223a
loc_8C0A1D88:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8C0A1D8c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x01,r5
	mov.l @(0x74,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a1ddc
	mov r0,r4
	mov.l @(0x68,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x54,PC),r3
	mov.l r14,@(0x18,r4)
	mov.b @r15,r2
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mova @(0x58,PC),r0
	fmov @r0,fr4
	mov.w @(0x46,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0a1dc8
	mova @(0x50,PC),r0
	fmov @r0,fr4

loc_8c0a1dc8:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mova @(0x48,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8c0a1ddc:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A1DE8:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0A1E08,pc),r0 ; r0 set to 0x2F0
	mov 0x02,r2 ; r2 set to 0x02
	mov.l @(0x18,r14),r3
	mov r14,r4
	mov.l @(loc_8C0A1E20,pc),r1 ; r1 set to 0x8C1565F8
	mov.l r2,@(r0,r3)
	mov.b @(0x04,r14),r0
	extu.b r0,r0 ; r0 set to 0xF0
	shll2 r0 ; r0 set to 0x3C0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A1E04:
	#data 0x2F00
loc_8C0A1E06:
	#data 0x0130
loc_8C0A1E08:
	#data 0x02F0
	#align4

loc_8C0A1E0C:
	#data bank04.loc_8c044F12
loc_8C0A1E10:
	#data loc_8c0a1DE8
loc_8C0A1E14:
	#data 0x41D55555
loc_8C0A1E18:
	#data 0xC1D55555
loc_8C0A1E1c:
	#data 0x43092492
loc_8C0A1E20:
	#data bank15.loc_8c1565F8

;==============================================
loc_8C0A1E24:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xD0,r15
	mov.l @(0x150,PC),r2
	mov r15,r1
	mov.l @(0x150,PC),r3
	mov r15,r6
	add 0x2C,r6
	add 0x2C,r1
	jsr @r3
	mov 0x04,r0
	mov.l @(0x148,PC),r2
	mov r15,r1
	mov.l @(0x140,PC),r3
	add 0x1C,r1
	jsr @r3
	mov 0x10,r0
	mov.l @(0x140,PC),r2
	mov r15,r1
	mov.l @(0x140,PC),r3
	add 0x10,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x13C,PC),r2
	mov r15,r1
	mov.l @(0x128,PC),r3
	add 0x08,r1
	jsr @r3
	mov 0x06,r0
	mov.l @(0x120,PC),r3
	mov r15,r1
	mov.l @(0x130,PC),r2
	jsr @r3
	mov 0x08,r0
	mov.b @(0x4,r4),r0
	mov 0x01,r3
	mov 0x20,r1
	mov.w @(0x104,PC),r2
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov 0x40,r7
	mov.w @(0xFA,PC),r0
	mov.b r3,@(r0,r4)
	add 0x10,r0
	mov.b r1,@(r0,r4)
	add 0x01,r0
	mov 0x28,r3
	mov.w @(0xF0,PC),r1
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b r7,@(r0,r4)
	add 0x01,r0
	mov.l @(0x108,PC),r3
	add r4,r1
	mov.b r7,@(r0,r4)
	mov.l @(0x18,r4),r5
	add r5,r2
	jsr @r3
	add 0x81,r0
	mov.w @(0xD6,PC),r0
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
	mov.w @(0xBC,PC),r0
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
	mov.l @(0xBC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x08,r3
	mov 0x24,r0
	mov.b r3,@(r0,r4)
	mov 0x03,r0
	mov.b r0,@(0x7,r4)
	mov r15,r3
	mov.w @(0x94,PC),r0
	add 0x08,r3
	mov.b @(r0,r4),r14
	mov 0x20,r0
	mov.b @(r0,r4),r2
	extu.b r14,r14
	shll r14
	tst r2,r2
	add r3,r14
	bt.s loc_8c0a1ef8
	mov.w @r14,r14
	mov r7,r14

loc_8C0A1EF8:
	mov.w @(0x7E,PC),r0
	mov.l @(r0,r5),r0
	cmp/eq 0x02,r0
	bf loc_8c0a1f02
	shll2 r14

loc_8C0A1F02:
	mov r14,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x64,r0
	mov.w r0,@(0x1E,r4)
	mov 0x23,r0
	mov 0x00,r14
	mov.b r14,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r7
	extu.b r7,r7
	extu.w r7,r3
	tst r3,r3
	bt loc_8c0a1f20
	mov 0x04,r7

loc_8C0A1F20:
	mov.w @(0x56,PC),r0
	mov r15,r3
	mov 0x21,r1
	mov.l @(r0,r5),r2
	add r4,r1
	mov.w @(0x4A,PC),r0
	add r2,r7
	extu.w r7,r7
	add r3,r7
	mov.b @r7,r2
	mov.b r2,@r1
	mov r15,r2
	mov.b @(r0,r4),r0
	add 0x10,r2
	extu.b r0,r0
	shll2 r0
	fmov @(r0,r2),fr4
	mov.w @(0x34,PC),r0
	mov.l @(r0,r5),r0
	cmp/eq 0x01,r0
	bf loc_8c0a1f50
	mova @(0x50,PC),r0
	fmov @r0,fr3
	fmul fr3,fr4

loc_8C0A1F50:
	mova @(0x4C,PC),r0
	fmov @r0,fr5
	mov.w @(0x22,PC),r0
	mov.l @(r0,r5),r0
	cmp/eq 0x03,r0
	bf.s loc_8c0a1f60
	mov 0x20,r0
	fdiv fr5,fr4

loc_8C0A1F60:
	mov.b @(r0,r4),r2
	tst r2,r2
	bt loc_8c0a1fb8
	mova @(0x3C,PC),r0
	fmov @r0,fr4
	mov.w @(0xC,PC),r0
	mov.l @(r0,r5),r0
	cmp/eq 0x01,r0
	bra loc_8c0a1fa8
	nop

;##############################################
loc_8c0a1f74:
	#data 0x012c
loc_8c0a1f76:
	#data 0x00dc
loc_8c0a1f78:
	#data 0x01a3
loc_8c0a1f7a:
	#data 0x02c0
	#align4

loc_8C0A1F7C:
	#data bank13.loc_8c13B018
loc_8C0A1F80:
	#data bank12.loc_8c129620
loc_8C0A1F84:
	#data bank13.loc_8c13B01c
loc_8C0A1F88:
	#data bank13.loc_8c13B02c
loc_8C0A1F8C:
	#data bank12.loc_8c1294C8
loc_8C0A1F90:
	#data bank13.loc_8c13B038
loc_8C0A1F94:
	#data bank13.loc_8c13B03e
loc_8C0A1F98:
	#data bank12.loc_8c129560
loc_8C0A1F9c:
#data 0x3FC00000
loc_8C0A1Fa0:
	#data 0x3F400000
loc_8C0A1Fa4:
	#data 0xC1200000

;==============================================
loc_8C0A1FA8:
	bf loc_8c0a1fae
	mova @(0x120,PC),r0
	fmov @r0,fr4

loc_8C0A1FAE:
	mov.w @(0x10C,PC),r0
	mov.l @(r0,r5),r0
	cmp/eq 0x03,r0
	bf loc_8c0a1fb8
	fdiv fr5,fr4

loc_8C0A1FB8:
	mov.w @(0x104,PC),r0
	mov.w @(r0,r4),r2
	tst r2,r2
	bt.s loc_8c0a1fc4
	mov 0x5C,r0
	fneg fr4

loc_8C0A1FC4:
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c0a1fde
	mov 0x44,r7
	mov 0x54,r0
	fmov fr5,@(r0,r4)
	mov 0x50,r0
	fmov fr5,@(r0,r4)

loc_8C0A1FDE:
	mov.w @(0xE0,PC),r0
	mov.w @(0xDA,PC),r2
	mov.b r7,@(r0,r4)
	add 0x01,r0
	mov.b r7,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r0
	add r5,r2
	extu.b r0,r0
	mov.b @(r0,r6),r3
	mov 0x22,r0
	mov.b r3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r0
	mov r15,r3
	mov.l @r2,r2
	add 0x1C,r3
	extu.b r0,r0
	shll2 r0
	add r3,r0
	mov.b @(r0,r2),r1
	mov.w @(0xB8,PC),r0
	mov.l @(0xC4,PC),r2
	mov.b r1,@(r0,r4)
	add 0x0B,r0
	mov.w r14,@(r0,r4)
	add 0xF2,r0
	mov.b r14,@(r0,r4)
	add 0x26,r0
	mov.l r14,@(r0,r4)
	mov.l @r2,r1
	add 0x7C,r1
	mov.b @(0x2,r4),r0
	mov 0x02,r6
	extu.b r0,r0
	shll r0
	mov.w @(r0,r1),r3
	add 0x01,r3
	mov.w r3,@(r0,r1)
	mov.l @(0xA4,PC),r1
	jsr @r1
	mov 0x15,r5
	add 0x30,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A203A:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r4,r14
	mov.l @(loc_8C0A20D8,pc),r2 ; r2 set to 0x8C13B046
	mov.l @(loc_8C0A20DC,pc),r3 ; r3 set to 0x8C129620
	mov r15,r1
	mov.l @(0x18,r14),r13
	jsr @r3
	mov 0x10,r0 ; r0 set to 0x10
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C0A20E0,pc),r12 ; r12 set to 0x8C034DEe
	tst r0,r0
	bt loc_8C0A2062
	bra loc_8C0A2296
	nop

loc_8C0A2062:
	mov.l @(loc_8C0A20E4,pc),r3 ; r3 set to 0x8C03340c
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0A2074
	bsr loc_8C0A238c
	mov r14,r4
	bra loc_8C0A22Ee
	nop

loc_8c0a2074:
	mov.w @(loc_8C0A20C6,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0a2088
	mov.w @(loc_8C0A20C8,pc),r0
	fmov.s @(r0,r13),fr3
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fcmp/gt fr2,fr3
	bf loc_8c0a2100

loc_8c0a2088:
	mova @(loc_8C0A20E8,pc),r0 
	fmov.s @r0,fr4
	mova @(loc_8C0A20EC,pc),r0 
	fmov.s @r0,fr5
	mov.w @(loc_8C0A20C0,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0a20a0
	mova @(loc_8C0A20F0,pc),r0 
	fmov.s @r0,fr4
	mova @(loc_8C0A20F4,pc),r0 
	fmov.s @r0,fr5

loc_8c0a20a0:
	mov 0x5C,r0
	fmov.s fr4,@(r0,r14) 
	mova @(loc_8C0A20F8,pc),r0 
	fmov.s @r0,fr3
	mov 0x60,r0
	fmov.s fr3,@(r0,r14) 
	mov 0x68,r0
	fmov.s fr5,@(r0,r14) 
	mova @(loc_8C0A20FC,pc),r0 
	fmov.s @r0,fr3
	mov 0x6C,r0
	fmov.s fr3,@(r0,r14) 
	mov 0x01,r0
	bra loc_8c0a21ba
	mov.b r0,@(0x06,r14) 

;##############################################
loc_8C0A20be:
	#data 0x02C0
loc_8C0A20C0:
	#data 0x0130
loc_8C0A20C2:
	#data 0x019C
loc_8C0A20C4:
	#data 0x01A1
loc_8C0A20C6:
	#data 0x019F
loc_8C0A20C8:
	#data 0x041C
	#align4

loc_8c0a20cc:
	#data 0xc1a00000
loc_8c0a20d0:
	#data 0x8c2896b0
loc_8c0a20d4:
	#data bank03.loc_8c034e8c
loc_8c0a20d8:
	#data bank13.loc_8c13b046
loc_8c0a20dc:
	#data bank12.loc_8c129620
loc_8c0a20e0:
	#data bank03.loc_8c034dee
loc_8c0a20e4:
	#data bank03.loc_8c03340c
loc_8C0A20E8:
	#data 0x40555555
loc_8C0A20EC:
	#data 0xBBD55555
loc_8C0A20F0:
	#data 0xC0555555
loc_8C0A20F4:
	#data 0x3BD55555
loc_8C0A20F8:
	#data 0xC0CDB6DB
loc_8C0A20FC:
	#data 0xBE892492

;==============================================
loc_8c0a2100:
	mov.w @(0x1C,r14),r0 
	add 0xFF,r0
	mov.w r0,@(0x1C,r14) 
	exts.w r0,r0
	tst r0,r0
	bf/s loc_8c0a2116
	fldi0 fr15
	bsr loc_8c0a231c
	mov r14,r4
	bra loc_8c0a21aa
	nop 

loc_8c0a2116:
	mov.w @(loc_8C0A21CE,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt/s loc_8c0a218e
	mov 0x00,r11
	mov.b @(r0,r14),r3
	add 0xFE,r3
	mov.b r3,@(r0,r14) 
	exts.b r3,r3
	cmp/pl r3
	bf loc_8c0a2130
	bra loc_8c0a22ee
	nop 

loc_8c0a2130:
	mov.b r11,@(r0,r14) 
	bsr loc_8c0a231c
	mov r14,r4
	mov 0x21,r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14) 
	extu.b r2,r2
	tst r2,r2
	bt loc_8c0a21aa
	mov 0x20,r0
	mov.w @(loc_8C0A21D0,pc),r2
	mov.b @(r0,r14),r0
	mov r15,r3
	add r13,r2
	extu.b r0,r0
	mov.l @r2,r2
	shll2 r0
	add r3,r0
	mov.b @(r0,r2),r1
	mov.w @(loc_8C0A21D2,pc),r0
	mov.l @(loc_8C0A21D8,pc),r2
	mov.b r1,@(r0,r14) 
	add 0x0B,r0
	mov.w r11,@(r0,r14) 
	add 0xF2,r0
	mov.b r11,@(r0,r14) 
	add 0x26,r0
	mov.l r11,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r2,r1
	extu.b r0,r0
	shll r0
	add 0x7C,r1
	mov.w @(r0,r1),r3
	add 0x01,r3
	mov.w r3,@(r0,r1) 
	jsr @r12
	mov r14,r4
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0a218a
	bra loc_8c0a228c
	nop 

loc_8c0a218a:
	bra loc_8c0a22ee
	nop 

loc_8c0a218e:
	mov.w @(loc_8C0A21D4,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0a21e0
	mov.b r11,@(r0,r14) 
	bsr loc_8c0a231c
	mov r14,r4
	mov 0x21,r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14) 
	extu.b r2,r2
	tst r2,r2
	bf loc_8c0a21e0

loc_8c0a21aa:
	mov 0x5C,r0
	fmov.s fr15,@(r0,r14) 
	mov 0x60,r0
	fmov.s fr15,@(r0,r14) 
	mov 0x68,r0
	fmov.s fr15,@(r0,r14) 
	mov 0x6C,r0
	fmov.s fr15,@(r0,r14) 

loc_8c0a21ba:
	mov.b @(0x05,r14),r0 
	mov 0x15,r5
	mov.l @(loc_8c0a21dc,pc),r3
	mov 0x03,r6
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
	jsr @r3
	mov r14,r4
	bra loc_8c0a22ee
	nop 

;##############################################
loc_8C0A21CE:
	#data 0x01A0
loc_8C0A21D0:
	#data 0x02C0
loc_8C0A21D2:
	#data 0x01A1
loc_8C0A21D4:
	#data 0x019E
	#align4

loc_8C0A21D8:
	#data 0x8C2896B0
loc_8c0a21dc:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c0a21e0:
	mov 0x20,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0a223a
	mov 0x22,r0
	mov.b @(r0,r14),r3
	add 0xFF,r3
	mov.b r3,@(r0,r14) 
	mov.w @(loc_8C0A22FE,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0a2200
	mov 0x22,r0
	mov.b @(r0,r14),r3
	add 0x02,r3
	mov.b r3,@(r0,r14) 

loc_8c0a2200:
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov 0x1F,r3
	and r3,r2
	mov.b r2,@(r0,r14) 
	mov.b @(0x07,r14),r0 
	add 0xFF,r0
	mov.b r0,@(0x07,r14) 
	extu.b r0,r0
	tst r0,r0
	bf loc_8c0a2230
	mov 0x03,r0
	mov.w @(loc_8C0A2300,pc),r5
	mov.b r0,@(0x07,r14) 
	mov.w @(0x1E,r14),r0 
	mov r0,r4
	add 0x64,r4
	extu.w r4,r2
	cmp/gt r5,r2
	bf loc_8c0a222a
	mov r5,r4

loc_8c0a222a:
	mov r4,r0
	nop 
	mov.w r0,@(0x1E,r14) 

loc_8c0a2230:
	mov.w @(0x1E,r14),r0 
	mov.l @(loc_8c0a230c,pc),r3
	mov r0,r5
	jsr @r3
	mov r14,r4

loc_8c0a223a:
	mov.w @(loc_8C0A2302,pc),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bf loc_8c0a226c
	mov.w @(loc_8C0A2304,pc),r0
	mov.w @(loc_8C0A2306,pc),r2
	mov.w @(r0,r13),r3
	extu.w r3,r3
	tst r2,r3
	bt/s loc_8c0a2254
	fmov fr15,fr4
	mova @(loc_8C0A2310,pc),r0 
	fmov.s @r0,fr4

loc_8c0a2254:
	mov.w @(loc_8C0A2304,pc),r0
	mov.w @(loc_8C0A2308,pc),r2
	mov.w @(r0,r13),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c0a2264
	mova @(loc_8C0A2314,pc),r0 
	fmov.s @r0,fr4

loc_8c0a2264:
	mov 0x38,r0
	fmov.s @(r0,r14),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14) 

loc_8c0a226c:
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
	jsr @r12
	mov r14,r4

loc_8c0a228c:
	mov.l @(loc_8c0a2318,pc),r3
	jsr @r3
	mov r14,r4
	bra loc_8c0a22ee
	nop 

;==============================================
loc_8c0a2296:
	mov.b @(0x6,r14),r0
	tst r0,r0
	bt loc_8c0a22a6
	mov.w @(0x6A,PC),r0
	mov 0x01,r3
	mov.b @(r0,r14),r1
	xor r3,r1
	mov.b r1,@(r0,r14)

loc_8c0a22a6:
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
	jsr @r12
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0a22ee
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8C0A22EE:
	add 0x10,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a22fe:
	#data 0x0130
loc_8c0a2300:
	#data 0x03E8
loc_8c0a2302:
	#data 0x0525
loc_8c0a2304:
	#data 0x034a
loc_8c0a2306:
	#data 0x2000
loc_8c0a2308:
	#data 0x1000
loc_8c0a230a:
	#data 0x012C
#align4

loc_8C0A230C:
	#data bank03.loc_8c033718
loc_8c0a2310:
	#data 0x40700000
loc_8c0a2314:
	#data 0xC0700000
loc_8C0A2318:
	#data bank04.loc_8c045748

;===============================
loc_8C0A231C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0x7A,PC),r0
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0a2384
	mov.b @(r0,r14),r0
	tst 0x11,r0
	bf loc_8c0a2384
	mov 0x23,r0
	mov.l @(0x6C,PC),r4
	mov.b @(r0,r14),r2
	mova @(0x6C,PC),r0
	fmov @r0,fr3
	mov 0x23,r0
	extu.b r2,r2
	shll2 r2
	shll r2
	add r4,r2
	fmov @r2,fr2
	fmul fr3,fr2
	fmov fr2,@r15
	mov.b @(r0,r14),r3
	mova @(0x5C,PC),r0
	fmov @r0,fr2
	mov 0x04,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r4
	fmov @(r0,r4),fr1
	mov 0x04,r0
	fmul fr2,fr1
	fmov fr1,@(r0,r15)
	mov 0x23,r0
	mov.b @(r0,r14),r6
	add 0x01,r6
	mov.b r6,@(r0,r14)
	add 0xFF,r6
	extu.b r6,r6
	add 0x09,r6
	mov.l @(0x3C,PC),r3
	mov r15,r5
	jsr @r3
	mov r14,r4
	mov 0x23,r0
	mov.b @(r0,r14),r2
	mov 0x07,r3
	and r3,r2
	mov.b r2,@(r0,r14)

loc_8C0A2384:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A238C:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A23A2,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0A239A:
	mov.l @(loc_8C0A23B4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a23a0:
	#data 0x019e
loc_8C0A23A2:
	#data 0x012c
	#align4

loc_8C0A23A4:
	#data bank15.loc_8c156608
loc_8C0A23A8:
	#data 0x3FD55555
loc_8C0A23Ac:
	#data 0x40092492
loc_8C0A23B0:
	#data bank0f.loc_8c0fDAB6
loc_8C0A23B4:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c0a23b8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x120,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a23e8
	mov r0,r4
	mov.l @(0x114,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0xF8,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.w @(0xF2,PC),r0
	mov.l @r15,r2
	mov.w @(r0,r2),r3
	mov.w @(0xEE,PC),r0
	extu.w r3,r3
	mov.l r3,@(r0,r4)

loc_8c0a23e8:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0A23F0:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0A24E8,pc),r1 ; r1 set to 0x8C156648
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0A2404:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0A24D6,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0A24D6,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0A24EC,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0A24D8,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0A24DA,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0A24DC,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A24F0,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov 0x15,r5 ; r5 set to 0x15
	mov.b r2,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x0D,r6 ; r6 set to 0x0d
	mov.l @(loc_8C0A24F4,pc),r3 ; r3 set to 0x8C034E8c
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???	
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A247C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0A24F8,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	jsr @r3
	mov r5,r13
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.l @(loc_8C0A24F0,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	mov.b @(r0,r13),r2
	mov r14,r1
	add 0x34,r1
	mov.b r2,@(r0,r14)
	mov r13,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	mov.w @(loc_8C0A24D2,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov.w @(r0,r13),r2
	mov.w @(loc_8C0A24D4,pc),r0 ; r0 set to 0xCC, r0 set to 0xCc
	extu.w r2,r2
	mov.l @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	cmp/eq r2,r3
	bt loc_8C0A24B8
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0A24C4
	mov.l @r15+,r14

loc_8C0A24B8:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A24C0:
	rts
	nop

;----------------------------------------------
loc_8C0A24C4:
	mov.w @(loc_8C0A24DA,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0A24FC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a24d0:
	#data 0x2F01
loc_8C0A24D2:
	#data 0x0158
loc_8C0A24D4:
	#data 0x00Cc
loc_8C0A24D6:
	#data 0x00Dc
loc_8C0A24D8:
	#data 0x00C0
loc_8C0A24DA:
	#data 0x012c
loc_8C0A24DC:
	#data 0x01A3
	#align4

loc_8C0A24E0:
	#data bank04.loc_8c044F12
loc_8C0A24E4:
	#data loc_8c0a23F0
loc_8C0A24E8:
	#data bank15.loc_8c156648
loc_8C0A24EC:
	#data bank12.loc_8c129560
loc_8C0A24F0:
	#data bank12.loc_8c1294C8
loc_8C0A24F4:
	#data bank03.loc_8c034e8c
loc_8C0A24F8:
	#data bank03.loc_8c034dee
loc_8C0A24FC:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0a2500:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.w r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x114,PC),r3
	mov 0x01,r5
	mov.w r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a254c
	mov r0,r4
	mov.l @(0x108,PC),r3
	mov 0x26,r0
	mov.w @(0xF6,PC),r1
	mov.l r3,@(0x10,r4)
	mov.w @(0xEC,PC),r3
	add r4,r1
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)
	mov.w @(0xE4,PC),r0
	mov.l @r15,r2
	mov.w @(r0,r2),r3
	mov.w @(0xE0,PC),r0
	extu.w r3,r3
	mov.l r3,@(r0,r4)
	mov.w @(0x8,r15),r0
	mov.l r0,@r1
	mov.w @(0xDA,PC),r1
	mov.w @(0x4,r15),r0
	add r4,r1
	mov.l r0,@r1

loc_8c0a254c:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
;Unused
loc_8c0a2554:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov r4,r10
	mov.l r9,@-r15
	mov.l r8,@-r15
	mov 0x00,r8
	sts.l pr,@-r15
	mov r8,r13

loc_8c0a256c:
	mov.l @(0xC0,PC),r3
	jsr @r3
	nop
	mov 0x07,r14
	mov.l @(0xBC,PC),r2
	mov 0x0E,r3
	and r0,r14
	mul.l r3,r14
	mov 0x00,r6
	mov r6,r5
	sts macl,r14
	add r2,r14
	bsr loc_8c0a2500
	mov r10,r4
	tst r0,r0
	bt.s loc_8c0a259c
	mov r0,r4
	mov 0x21,r0
	mov.b r8,@(r0,r4)
	mov 0x20,r0
	mov.b r13,@(r0,r4)
	mov.w @(0x8A,PC),r0
	mov.w @r14,r3
	mov.l r3,@(r0,r4)

loc_8c0a259c:
	mov r14,r9
	mov r14,r11
	add 0x06,r9
	add 0x08,r11
	mov.w @r9,r5
	mov.w @r11,r6
	bsr loc_8c0a2500
	mov r10,r4
	tst r0,r0
	bt.s loc_8c0a25c2
	mov r0,r4
	mov 0x21,r0
	mov.w @(0x6C,PC),r1
	mov.b r12,@(r0,r4)
	mov 0x20,r0
	mov.b r13,@(r0,r4)
	add r4,r1
	mov.w @(0x2,r14),r0
	mov.l r0,@r1

loc_8c0a25c2:
	mov.w @r11,r6
	mov.w @(0xC,r14),r0
	mov.w @r9,r5
	add r0,r6
	mov.w @(0xA,r14),r0
	add r0,r5
	bsr loc_8c0a2500
	mov r10,r4
	tst r0,r0
	bt.s loc_8c0a25e8
	mov r0,r4
	mov 0x21,r0
	mov.w @(0x46,PC),r1
	mov.b r12,@(r0,r4)
	mov 0x20,r0
	mov.b r13,@(r0,r4)
	add r4,r1
	mov.w @(0x4,r14),r0
	mov.l r0,@r1

loc_8c0a25e8:
	add 0x01,r13
	mov 0x08,r2
	exts.w r13,r3
	cmp/ge r2,r3
	bf loc_8c0a256c
	mov r4,r0
	nop
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
loc_8C0A2608:
	mov r4,r3
	mov.l @(loc_8C0A2638,pc),r1 ; r1 set to 0x8C156708
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8c0a261a:
	#data 0x2f02
loc_8c0a261c:
	#data 0x0158
loc_8c0a261e:
	#data 0x00cc
loc_8c0a2620:
	#data 0x00d0
loc_8c0a2622:
	#data 0x00d4
loc_8c0a2624:
	#data 0x00d8
	#align4

loc_8C0A2628:
	#data bank04.loc_8c044F12
loc_8C0A262C:
	#data loc_8c0a2608
loc_8C0A2630:
	#data bank03.loc_8c03319e
loc_8C0A2634:
	#data bank15.loc_8c156658
loc_8C0A2638:
	#data bank15.loc_8c156708

;==============================================
loc_8C0A263C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	fmov fr15,@-r15
	mov.w @(0x164,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x15C,PC),r2
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x4,r14)
	mov 0x05,r0
	mov.w r0,@(0x1C,r14)
	mov.w @(0x152,PC),r0
	mov.l @(0x160,PC),r3
	jsr @r3
	add r4,r2
	mov.w @(0x14C,PC),r0
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
	mov.w @(0x130,PC),r0
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
	mov.l @(0x128,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.w @(0x110,PC),r1
	mov.b @(r0,r4),r2
	mov 0x08,r3
	add r14,r1
	mov.b r2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r0
	and 0x01,r0
	mov.b r0,@r1
	mov 0x24,r0
	mov.b r3,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x01,r3
	mov.w @(0xF8,PC),r0
	extu.b r2,r2
	shlr r2
	mov.w r2,@(r0,r14)
	mov 0x22,r0
	mov.b r2,@(r0,r14)
	mov.w @(0xEC,PC),r0
	mov.w @(r0,r14),r2
	and r3,r2
	mov.w r2,@(r0,r14)
	mov.w @(r0,r4),r1
	tst r1,r1
	bt.s loc_8c0a26da
	mov 0x10,r5
	mov 0xF0,r5

loc_8C0A26DA:
	exts.w r5,r5
	mov.l @(0xF0,PC),r3
	lds r5,fpul
	mova @(0xE4,PC),r0
	fmov @r0,fr15
	mov 0x34,r0
	fmov @(r0,r4),fr2
	float fpul,fr3
	fmov fr15,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0xD8,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	mov 0x42,r4
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0xB8,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	jsr @r3
	mov.b r4,@(r0,r14)
	mov.l @(0xC8,PC),r1
	and 0x0F,r0
	shll r0
	mov.l @(0xC8,PC),r3
	mov.w @(r0,r1),r4
	mov.w @(0xA6,PC),r0
	mov.b r4,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r4
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	mov.w @(0x90,PC),r4
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add r14,r4
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0xC,r4),r13
	mov.l @(0xA0,PC),r2
	shll2 r13
	mov.l @(0x8,r4),r11
	shll r13
	mov.l @(0x4,r4),r12
	add r2,r13
	mov.w @r13,r1
	mov.w @(0x2,r13),r0
	add r0,r11
	mov.w @(0x4,r13),r0
	tst r0,r0
	bt.s loc_8c0a275e
	add r1,r12
	mov.w @(0x60,PC),r0
	mov 0x01,r1
	mov.w @(r0,r14),r3
	xor r1,r3
	mov.w r3,@(r0,r14)

loc_8C0A275E:
	mov.w @(0x6,r13),r0
	mov 0x15,r5
	mov.l @(0x7C,PC),r3
	mov r0,r6
	mov 0x22,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	and 0x02,r0
	shll2 r0
	add r0,r6
	jsr @r3
	mov r14,r4
	mov 0x22,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x01,r0
	bt.s loc_8c0a2784
	mov 0x22,r0
	neg r12,r12

loc_8C0A2784:
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bt loc_8c0a2798
	mov.w @(0x28,PC),r0
	mov 0x01,r3
	neg r11,r11
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)

loc_8C0A2798:
	exts.w r12,r12
	fmov fr15,fr0
	lds r12,fpul
	mov 0x34,r0
	fmov @(r0,r14),fr2
	exts.w r11,r11
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	bra loc_8c0a27e4
	nop

;##############################################
loc_8c0a27b0:
	#data 0x00Dc
loc_8c0a27b2:
	#data 0x00C0
loc_8c0a27b4:
	#data 0x012c
loc_8c0a27b6:
	#data 0x01A3
loc_8c0a27b8:
	#data 0x0130
loc_8c0a27ba:
	#data 0x019C
loc_8c0a27bc:
	#data 0x01A1
loc_8c0a27be:
	#data 0x00CC
	#align4

loc_8C0A27C0:
	#data bank12.loc_8c129560
loc_8C0A27C4:
	#data bank12.loc_8c1294C8
loc_8C0A27C8:
	#data 0x3FD55555
loc_8C0A27Cc:
	#data 0x4391B6Db
	#align4

loc_8C0A27D0:
	#data bank03.loc_8c03319e
loc_8C0A27D4:
	#data bank15.loc_8c156718
loc_8C0A27d8:
	#data 0x8C2896B0
loc_8C0A27DC:
	#data bank15.loc_8c1566C8
loc_8C0A27E0:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0A27E4:
	lds r11,fpul
	mov r14,r4
	mov.l @(0x88,PC),r1
	fmov @(r0,r14),fr2
	float fpul,fr3
	lds r1,fpul
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A2802:
	mov.w @(0x68,PC),r0
	mov 0x01,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r2
	mov.l @(0x18,r14),r4
	xor r3,r2
	mov.b r2,@(r0,r14)
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bf loc_8c0a2850
	mov.w @(0x4C,PC),r0
	mov.w @(r0,r4),r3
	mov.w @(0x4A,PC),r0
	extu.w r3,r3
	mov.l @(r0,r14),r2
	cmp/eq r3,r2
	bf loc_8c0a2850
	mov.l @(0x48,PC),r3
	jsr @r3
	mov r14,r4
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0a2846
	mov.l @(0x3C,PC),r3
	jsr @r3
	nop
	tst 0x07,r0
	bf loc_8c0a2858

loc_8C0A2846:
	lds.l @r15+,pr
	mov.l @(0x34,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0A2850:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0a2862
	mov.l @r15+,r14

loc_8C0A2858:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A285E:
	rts
	nop

;----------------------------------------------
loc_8C0A2862:
	mov.w @(loc_8C0A286E,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0A2884,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;##############################################
loc_8C0A286E:
	#data 0x012c
loc_8C0A2870:
	#data 0x0158
loc_8C0A2872:
	#data 0x00CC
	#align4

loc_8C0A2874:
	#data 0x40092492
loc_8C0A2878:
	#data bank03.loc_8c034dee
loc_8C0A287C:
	#data bank03.loc_8c03319e
loc_8C0A2880:
	#data bank04.loc_8c045748
loc_8C0A2884:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0A2888:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x01,r5
	mov.l @(0x10C,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a28ca
	mov r0,r4
	mov.l @(0x100,PC),r3
	mov.w @(0xE6,PC),r0
	mov.l r3,@(0x10,r4)
	mov.w @(0xE4,PC),r3
	mov.l r14,@(0x18,r4)
	mov.l @r15,r2
	mov.l r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.b @(0x3,r14),r0
	tst r0,r0
	bf loc_8c0a28c2
	mov 0x20,r0
	mov 0x00,r2
	bra loc_8c0a28ca ; loc_8c0a2888+0x42
	mov.b r2,@(r0,r4)

loc_8C0A28C2:
	mov 0x20,r0
	mov.b @(r0,r14),r1
	add 0x01,r1
	mov.b r1,@(r0,r4)

loc_8C0A28CA:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A28D6:
	mov r4,r3
	mov.l @(loc_8C0A29A8,pc),r1 ; r1 set to 0x8C156738
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0A28E8:
	mov.w @(0xA2,PC),r0
	mov.w @(0xA4,PC),r1
	sts.l pr,@-r15
	mov.l @(r0,r4),r5
	add r4,r1
	mov.b @(0x4,r4),r0
	mov.l @(0xB4,PC),r3
	add 0x01,r0
	mov.w @(0x96,PC),r2
	mov.b r0,@(0x4,r4)
	mov 0x78,r0
	mov.w r0,@(0x1C,r4)
	mov 0x08,r0
	mov.w r0,@(0x1E,r4)
	mov.w @(0x8C,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0x88,PC),r0
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
	mov.w @(0x6C,PC),r0
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
	mov.b @(r0,r5),r2
	mov 0xFF,r3
	mov 0x00,r6
	mov.b r2,@(r0,r4)
	mov 0x31,r0
	mov.b r3,@(r0,r4)
	mov.w @(0x44,PC),r0
	mov.b r6,@(r0,r4)
	add 0x01,r0
	mov.b r6,@(r0,r4)
	add 0x93,r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0a2966
	mov 0x20,r6
	mov 0xE0,r6

loc_8C0A2966:
	exts.w r6,r6
	mov.l @(0x18,r4),r3
	lds r6,fpul
	mov 0x34,r0
	fmov @(r0,r3),fr2
	mova @(0x40,PC),r0
	fmov @r0,fr0
	mov 0x34,r0
	float fpul,fr3
	mov.l @(0x3C,PC),r3
	mov 0x04,r6
	fmac fr0,fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x18,PC),r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	mov 0x14,r5
	fmov fr3,@(r0,r4)
	jmp @r3
	lds.l @r15+,pr

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a298e:
	#data 0x00cc
loc_8c0a2990:
	#data 0x2f03
loc_8c0a2992:
	#data 0x00dc
loc_8c0a2994:
	#data 0x00c0
loc_8c0a2996:
	#data 0x012c
loc_8c0a2998:
	#data 0x01a3
loc_8c0a299a:
	#data 0x019c
loc_8c0a299c:
	#data 0x041c
	#align4

loc_8C0A29A0:
	#data bank04.loc_8c044F12
loc_8C0A29A4:
	#data loc_8c0a28D6
loc_8C0A29A8:
	#data bank15.loc_8c156738
loc_8C0A29AC:
	#data bank12.loc_8c129560
loc_8C0A29B0:
	#data bank12.loc_8c1294C8
loc_8c0a29b4:
	#data 0x3FD55555
loc_8C0A29B8:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0A29BC:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x24,r0
	sts.l pr,@-r15
	mov.l @(0x18,r14),r5
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bt loc_8c0a29ec
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0a29ec
	mov 0x20,r0
	mov.b @(r0,r14),r2
	mov 0x04,r3
	extu.b r2,r2
	cmp/ge r3,r2
	bt loc_8c0a29ec
	bsr loc_8c0a2888
	mov r14,r4

loc_8C0A29EC:
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0a2a0c
	mov.b @(0x4,r14),r0
	mov r14,r4
	mov.l @(0x44,PC),r3
	mov 0x03,r6
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov 0x14,r5
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0A2A0C:
	lds.l @r15+,pr
	mov.l @(0x38,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0A2A16:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x2C,PC),r3
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0a2a32
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x10,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0A2A32:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A2A38:
	mov.l @(loc_8C0A2A4C,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0A2A42,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A2A42:
	#data 0x012c
	#align4

loc_8C0A2A44:
	#data bank03.loc_8c034e8c
loc_8C0A2A48:
	#data bank03.loc_8c034dee
loc_8C0A2A4C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0a2a50:
	mov.l r14,@-r15
	mova @(0x130,PC),r0
	mov.l r13,@-r15
	mov 0x00,r14
	mov.l r12,@-r15
	mov 0x04,r12
	mov.l r11,@-r15
	mov r4,r13
	mov.l r10,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	fmov @r0,fr13
	mova @(0x118,PC),r0
	fmov @r0,fr14
	mova @(0x118,PC),r0
	fmov @r0,fr15
	mov.w @(0x100,PC),r11
	mov.l @(0x108,PC),r10

loc_8c0a2a78:
	mov 0x01,r5
	mov 0x00,r6
	jsr @r10
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a2ab2
	mov r0,r4
	mov 0x26,r0
	mov.l @(0x104,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l r13,@(0x18,r4)
	mov.w r11,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov.w @(0xE2,PC),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt.s loc_8c0a2aa0
	fmov fr14,fr4
	fmov fr13,fr4

loc_8c0a2aa0:
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov.w @(0xD0,PC),r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fadd fr15,fr3
	fmov fr3,@(r0,r4)

loc_8c0a2ab2:
	add 0x02,r14
	cmp/ge r12,r14
	bf loc_8c0a2a78
	mov r4,r0
	nop
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

;----------------------------------------------
loc_8c0a2ad0:
	mov.l r14,@-r15
	mov 0x00,r6
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov r5,r12
	fmov.s fr15,@-r15
	mov 0x01,r5
	sts.l pr,@-r15
	mov.l @(loc_8c0a2b80,pc),r3
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt/s loc_8c0a2b58
	mov r0,r14
	mov.w @(loc_8C0A2B78,pc),r2
	mov 0x26,r0
	mov.l @(loc_8c0a2b90,pc),r3
	mov.l r3,@(0x10,r14) 
	mov.l r12,@(0x18,r14) 
	mov.w r2,@(r0,r14) 
	mov 0x20,r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14) 
	mova @(loc_8C0A2B94,pc),r0 
	fmov.s @r0,fr3
	mov 0x38,r0
	fmov.s @(r0,r13),fr4
	mov.w @(loc_8C0A2B7C,pc),r0
	fadd fr3,fr4
	fmov.s @(r0,r12),fr2
	fcmp/gt fr4,fr2
	bf/s loc_8c0a2b4c
	fldi0 fr15
	mova @(loc_8C0A2B98,pc),r0 
	fmov.s @r0,fr15
	mov 0x20,r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c0a2b24
	mova @(loc_8C0A2B9C,pc),r0 
	fmov.s @r0,fr15

loc_8c0a2b24:
	mov.l @(loc_8c0a2ba0,pc),r3
	jsr @r3
	nop 
	and 0x07,r0 
	lds r0,fpul 
	cmp/pz r0
	bt/s loc_8c0a2b3c
	float fpul,fr3
	mov.l @(loc_8C0A2BA4,pc),r2
	lds r2,fpul 
	fsts fpul,fr2
	fadd fr2,fr3

loc_8c0a2b3c:
	mova @(loc_8C0A2BA8,pc),r0 
	fmov.s @r0,fr0
	mov 0x01,r3
	mov.w @(loc_8C0A2B7C,pc),r0
	fmov.s @(r0,r12),fr4
	mov 0x21,r0
	mov.b r3,@(r0,r14) 
	fmac fr0,fr3,fr4

loc_8c0a2b4c:
	mov 0x34,r0
	fmov.s @(r0,r13),fr3
	fadd fr15,fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	fmov.s fr4,@(r0,r14) 

loc_8c0a2b58:
	lds.l @r15+,pr 
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8C0A2B64:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0A2BAC,pc),r1 ; r1 set to 0x8C156748
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a2b78:
	#data 0x2F04
loc_8c0a2b7a:
	#data 0x0130
loc_8c0a2b7c:
	#data 0x041c
	#align4

loc_8C0A2B80:
	#data bank04.loc_8c044F12
loc_8C0A2B84:
	#data 0x41555555
loc_8C0A2B88:
	#data 0xC1555555
loc_8C0A2B8c:
	#data 0x42CDB6Db
loc_8C0A2B90:
	#data loc_8c0a2B64
loc_8c0a2b94:
	#data 0xC2092492
loc_8c0a2b98:
	#data 0x42055555
loc_8c0a2b9c:
	#data 0xC2055555
loc_8C0A2BA0:
	#data bank03.loc_8c03319e
loc_8c0a2ba4:
	#data 0x4F800000
loc_8c0a2ba8:
	#data 0x40092492
loc_8C0A2BAC:
	#data bank15.loc_8c156748

;==============================================
loc_8C0A2BB0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0A2CC8,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0A2CC8,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0A2CD4,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0A2CCA,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0A2CCC,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0A2CCE,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A2CD8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x08,r3 ; r3 set to 0x08
	mov.b @(r0,r13),r2
	mov 0x20,r5 ; r5 set to 0x20
	mov.b r3,@(r0,r14)
	mov r5,r0 ; r0 set to 0x20
	nop
	mov.w r0,@(0x1C,r14)
	mov 0x43,r3 ; r3 set to 0x43
	mov.w @(loc_8C0A2CD0,pc),r0 ; r0 set to 0x19c
	mov 0x42,r2 ; r2 set to 0x42
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r2,@(r0,r14)
	add 0x04,r0 ; r0 set to 0x1A1
	mov 0x40,r3 ; r3 set to 0x40
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_8C0A2CDC,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??	
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C0A2CD2,pc),r0 ; r0 set to 0x13f
	mov.b r5,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13e
	mov.b r5,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13d
	mov.b r5,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13c
	mov.l @(loc_8C0A2CE0,pc),r2 ; r2 set to 0x8C034E8c
	mov.b r5,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r6
	mov 0x16,r5 ; r5 set to 0x16
	add 0x08,r6
	jsr @r2
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov.l @(loc_8C0A2CE4,pc),r3 ; r3 set to 0x8C03340c
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C0A2C7e
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???	
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0A2AD0
	mov.l @r15+,r14

loc_8C0A2C7E:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A2C86:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0A2D40
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8C0A2CF0
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0A2D04
	mov.l @(loc_8C0A2CE8,pc),r3 ; r3 set to 0x8C03319e
	jsr @r3
	nop
	and 0x03,r0
	mov.l @(loc_8C0A2CEC,pc),r2 ; r2 set to 0x8C034C38
	mov r0,r6 ; r6 set to 0x21
	mov 0x1B,r5 ; r5 set to 0x1b
	add 0x0A,r6 ; r6 set to 0x2b
	jsr @r2
	mov r14,r4
	bra loc_8C0A2D04
	nop

;##############################################
loc_8C0A2CC8:
	#data 0x00Dc
loc_8C0A2CCA:
	#data 0x00C0
loc_8C0A2CCC:
	#data 0x012c
loc_8C0A2CCE:
	#data 0x01A3
loc_8C0A2CD0:
	#data 0x019c
loc_8C0A2CD2:
	#data 0x013f
	#align4

loc_8C0A2CD4:
	#data bank12.loc_8c129560
loc_8C0A2CD8:
	#data bank12.loc_8c1294C8
loc_8C0A2CDC:
	#data 0x8C2896B0
loc_8C0A2CE0:
	#data bank03.loc_8c034e8c
loc_8C0A2CE4:
	#data bank03.loc_8c03340c
loc_8C0A2CE8:
	#data bank03.loc_8c03319e
loc_8C0A2CEC:
	#data bank03.loc_8c034C38

;----------------------------------------------
loc_8c0a2cf0:
	mov.w @(loc_8C0A2D98,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0a2cfe
	mov.l @(loc_8c0a2da4,pc),r3
	jsr @r3
	mov r14,r4

loc_8c0a2cfe:
	mov.l @(loc_8c0a2da8,pc),r2
	jsr @r2
	mov r14,r4

loc_8C0A2D04:
	mov.b @(0x06,r14),r0
	tst r0,r0
	bf loc_8C0A2D80
	mov.w @(loc_8C0A2D9A,pc),r0 ; r0 set to 0x19e
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0A2D80
	mov.w @(loc_8C0A2D9C,pc),r0 ; r0 set to 0x1B0
	mov.l @(r0,r14),r4
	mov.w @(loc_8C0A2D9E,pc),r0 ; r0 set to 0x233
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf loc_8C0A2D80
	mov.l @(loc_8C0A2DAC,pc),r3 ; r3 set to 0x8C0E779c
	mov 0x01,r5 ; r5 set to 0x01
	jsr @r3
	mov.l @r15,r4
	tst r0,r0
	bt loc_8C0A2D80
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov 0x0A,r5 ; r5 set to 0x0a
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0A2DB0,pc),r3 ; r3 set to 0x8C04223a
	jmp @r3
	mov.l @r15+,r14

loc_8C0A2D40:
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0A2D5c
	mov.l @(loc_8C0A2DA4,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bf loc_8C0A2D74
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a2d5c:
	mov.l @(loc_8c0a2db4,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c0a2d74
	mov.l @(loc_8c0a2db4,pc),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0a2d80

loc_8C0A2D74:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0A2D8c
	mov.l @r15+,r14

loc_8C0A2D80:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A2D88:
	rts
	nop

;----------------------------------------------
loc_8C0A2D8C:
	mov.w @(loc_8C0A2DA0,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0A2DB8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a2d98:
	#data 0x0141
loc_8C0A2D9A:
	#data 0x019e
loc_8C0A2D9C:
	#data 0x01B0
loc_8C0A2D9E:
	#data 0x0233
loc_8C0A2DA0:
	#data 0x012c
	#align4

loc_8C0A2DA4:
	#data bank03.loc_8c034dee
loc_8C0A2DA8:
	#data bank04.loc_8c045748
loc_8C0A2DAC:
	#data bank0e.loc_8c0e779c
loc_8C0A2DB0:
	#data bank04.loc_8c04223a
loc_8C0A2DB4:
	#data bank03.loc_8c034D8c
loc_8C0A2DB8:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c0a2dbc:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x13C,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a2de6
	mov r0,r4
	mov.l @(0x130,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x118,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov 0x00,r2
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b r2,@(r0,r4)

loc_8c0a2de6:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0A2DEE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov 0x01,r5
	mov.l @(0x104,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a2e42
	mov r0,r4
	mov.l @(0xF8,PC),r3
	mov 0x26,r0
	mov r4,r1
	add 0x34,r1
	mov.l r3,@(0x10,r4)
	mov.w @(0xE0,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov 0x01,r2
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b r2,@(r0,r4)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	mov r14,r2
	add 0x34,r2
	mov.b r3,@(r0,r4)
	mov.l @(0xDC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov.l @r15,r2
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fmov @(r0,r2),fr3
	mov 0x64,r0
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x1E,r14),r0
	mov.w r0,@(0x1E,r4)

loc_8C0A2E42:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A2E4A:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0A2F0C,pc),r1 ; r1 set to 0x8C156758
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0A2E5E:
	mov.w @(loc_8C0A2EF8,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0A2F10,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.w @(loc_8C0A2EF8,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A2EFA,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0A2EFC,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0A2EFE,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A2F08,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???	
	tst r3,r3
	bf/s loc_8C0A2F18
	mov 0x00,r6 ; r6 set to 0x00
	mov.w @(loc_8C0A2EFC,pc),r0 ; r0 set to 0x12c
	fldi0 fr4
	mov.b r6,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r4)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r4)
	mova @(loc_8C0A2F14,pc),r0  ; r0 set to 0x8C0A2F14
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r4)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r4)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x64,r0 ; r0 set to 0x64
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b r6,@(r0,r4)
	mov r6,r0 ; r0 set to 0x00
	nop
	bra loc_8C0A2F6c
	mov.w r0,@(0x1C,r4)

;==============================================
loc_8C0A2EF4:
	#data 0x2F05
loc_8C0A2EF6:
	#data 0x2F04
loc_8C0A2EF8:
	#data 0x00Dc
loc_8C0A2EFA:
	#data 0x00C0
loc_8C0A2EFC:
	#data 0x012c
loc_8C0A2EFE:
	#data 0x01A3
	#align4

loc_8C0A2F00:
	#data bank04.loc_8c044F12
loc_8C0A2F04:
	#data loc_8c0a2E4a
loc_8C0A2F08:
	#data bank12.loc_8c1294C8
loc_8C0A2F0C:
	#data bank15.loc_8c156758
loc_8C0A2F10:
	#data bank12.loc_8c129560
loc_8C0A2F14:
	#data 0x41700000

;==============================================
loc_8C0A2F18:
	mov.w @(0x1E,r4),r0
	mov 0x42,r5 ; r5 set to 0x42
	mov r0,r2
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r2,@(r0,r4)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r4),r3
	mov.l @(loc_8C0A3060,pc),r0 ; r0 set to 0x8C156768
	extu.b r3,r3
	shll2 r3
	fmov.s @(r0,r3),fr3
	mov 0x54,r0 ; r0 set to 0x54
	mov 0x41,r3 ; r3 set to 0x41
	fmov.s fr3,@(r0,r4)
	mov 0x50,r0 ; r0 set to 0x50
	fmov.s fr3,@(r0,r4)
	mov.w @(loc_8C0A3054,pc),r0 ; r0 set to 0x19c
	mov.b r5,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r5,@(r0,r4)
	add 0x04,r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r4)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r6,@(r0,r4)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.l @(loc_8C0A3064,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r6,@(r0,r4)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r6,@(r0,r4)
	mov.l @r3,r2
	mov.b @(0x02,r4),r0
	add 0x7C,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	mov.w @(r0,r2),r1
	mov 0x16,r5 ; r5 set to 0x16
	mov 0x06,r6 ; r6 set to 0x06
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_8C0A3068,pc),r2 ; r2 set to 0x8C034E8c
	jmp @r2
	lds.l @r15+,pr

loc_8C0A2F6C:
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0A2F72:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x20,r0
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0a2fea
	mov r5,r13
	mov 0x60,r1
	mov.w @(0xCC,PC),r5
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
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov 0x64,r0
	fmov fr3,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r3
	add 0x03,r3
	mov.b r3,@(r0,r14)
	mov 0x1F,r3
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	bsr loc_8c0a3080
	mov r14,r4
	mov 0x01,r0
	mov.w @(0x94,PC),r3
	mov.w r0,@(0x1E,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov 0x10,r1
	add r3,r2
	extu.b r2,r2
	cmp/gt r1,r2
	bt.s loc_8c0a2fd8
	mov r13,r5
	mov 0xFF,r0
	mov.w r0,@(0x1E,r14)

loc_8C0A2FD8:
	bsr loc_8c0a2dee
	mov r14,r4
	mov.l @(0x8C,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bt loc_8c0a3030
	bra loc_8c0a303c
	nop

loc_8C0A2FEA:
	mov 0x24,r0
	mov.l @(0x80,PC),r3
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x64,r0
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c0a3030
	mov.l @(0x68,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x48,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0a303c
	mov 0x00,r3
	mov.b r3,@(r0,r14)
	mova @(0x5C,PC),r0
	fmov @r0,fr4
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fmul fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x54,r0
	fmov @(r0,r14),fr2
	fmul fr4,fr2
	bra loc_8c0a303c
	fmov fr2,@(r0,r14)

loc_8C0A3030:
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0a3048
	mov.l @r15+,r14

loc_8C0A303C:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A3044:
	rts
	nop

;----------------------------------------------
loc_8C0A3048:
	mov.w @(loc_8C0A305C,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0A307C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A3054:
	#data 0x019c
loc_8C0A3056:
	#data 0x1F40
loc_8C0A3058:
	#data 0x00F8
loc_8C0A305a:
	#data 0x0140
loc_8C0A305C:
	#data 0x012c
	#align4

loc_8C0A3060:
	#data bank15.loc_8c156768
loc_8C0A3064:
	#data 0x8C2896B0
loc_8C0A3068:
	#data bank03.loc_8c034e8c
loc_8C0A306C:
	#data bank03.loc_8c0335B0
loc_8C0A3070:
	#data bank03.loc_8c034dee
loc_8C0A3074:
	#data bank04.loc_8c045748
loc_8C0A3078:
	#data 0x3F400000
loc_8C0A307C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0A3080:
	mov.l r14,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	exts.w r5,r5
	mov r4,r14
	lds r5,fpul
	mova @(0x5C,PC),r0
	fmov @r0,fr15
	mov 0x22,r0
	mov.b @(r0,r14),r0
	float fpul,fr3
	mov.l @(0x58,PC),r3
	extu.b r0,r0
	neg r0,r0
	add 0x28,r0
	and 0x1F,r0
	fmov fr3,fr14
	shll8 r0
	fmul fr15,fr14
	shll2 r0
	shll r0
	mov.w r0,@r15
	jsr @r3
	exts.w r0,r4
	fmul fr0,fr14
	mova @(0x40,PC),r0
	fmov @r0,fr3
	mova @(0x40,PC),r0
	fmul fr3,fr14
	fmov @r0,fr3
	mova @(0x3C,PC),r0
	fdiv fr3,fr14
	fmov @r0,fr3
	mov.w @(0x22,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	fdiv fr15,fr14
	fmov fr14,fr4
	bt.s loc_8c0a30d6
	fmul fr3,fr4
	fneg fr4

loc_8C0A30D6:
	mov 0x64,r0
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fadd fr3,fr4
	fmov fr4,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a30ec:
	#data 0x0130
	#align4

loc_8c0a30f0:
	#data 0x43800000
loc_8C0A30F4:
	#data bank11.loc_8c11E2E0
loc_8c0a30f8:
	#data 0x447A0000
loc_8c0a30fc:
	#data 0x47C35000
loc_8c0a3100:
	#data 0x3FD55555

;==============================================
;Unused
loc_8c0a3104:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov 0x02,r13
	mov.l r12,@-r15
	mov.l @(0x124,PC),r2
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.w @r2,r3
	cmp/ge r13,r3
	bt.s loc_8c0a3120
	mov r4,r12
	bra loc_8c0a314e
	mov 0x00,r0

loc_8c0a3120:
	mov.w @(0x100,PC),r11
	mov 0x00,r14
	mov.l @(0x110,PC),r10

loc_8c0a3126:
	mov 0x01,r5
	mov 0x00,r6
	jsr @r10
	mov r6,r4
	mov r0,r4
	mov.w @(0xF2,PC),r0
	mov.l @(0x108,PC),r2
	mov.l r2,@(0x10,r4)
	mov.l r12,@(0x18,r4)
	mov.w @(r0,r12),r0
	mov.w r0,@(0x1C,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	add 0x01,r14
	cmp/ge r13,r14
	mov 0x26,r0
	bf.s loc_8c0a3126
	mov.w r11,@(r0,r4)
	mov r4,r0
	nop

loc_8c0a314e:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A315C:
	mov r4,r3
	mov.l @(loc_8C0A3240,pc),r1 ; r1 set to 0x8C156840
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0A316E:
	mov.w @(loc_8C0A3228,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0A3244,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A3228,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0A322A,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0A322C,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A3248,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x45,r2 ; r2 set to 0x45
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r3,@(r0,r4)
	mov 0x00,r3 ; r3 set to 0x00
	mov.w @(loc_8C0A322E,pc),r0 ; r0 set to 0x19c
	mov.b r2,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x19d
	mov.w @(loc_8C0A3230,pc),r2 ; r2 set to 0xFf
	mov.b r3,@(r0,r4)
	mov 0x22,r0 ; r0 set to 0x22
	mov 0x20,r3 ; r3 set to 0x20
	mov.b r2,@(r0,r4)
	add r4,r3 ; r3 ??? bc r4 is ???	
	mov.w @(loc_8C0A3232,pc),r0 ; r0 set to 0x130
	mov.b @r3,r3
	mov.w @(r0,r4),r2 ; r2 ??? bc r4 is ???	
	extu.b r3,r3
	xor r3,r2
	mov.w r2,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r3,@(r0,r4)
	lds.l @r15+,pr

loc_8C0A3200:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C0A322A,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov.l r12,@-r15
	mov 0x00,r12 ; r12 set to 0x00, r12 set to 0x00
	mov.w @(loc_8C0A3226,pc),r3 ; r3 set to 0x158, r3 set to 0x158
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b r12,@(r0,r14)
	add r13,r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
	mov.w @(0x1C,r14),r0
	mov.w @r3,r3
	cmp/eq r3,r0
	bt loc_8C0A324c
	mov 0x02,r0 ; r0 set to 0x02, r0 set to 0x02
	bra loc_8C0A332c
	mov.b r0,@(0x04,r14)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A3224:
	#data 0x3000
loc_8C0A3226:
	#data 0x0158
loc_8C0A3228:
	#data 0x00Dc
loc_8C0A322A:
	#data 0x012c
loc_8C0A322C:
	#data 0x01A3
loc_8C0A322E:
	#data 0x019c
loc_8C0A3230:
	#data 0x00Ff
loc_8C0A3232:
	#data 0x0130
	#align4

loc_8C0A3234:
	#data 0x8C287AE8
loc_8C0A3238:
	#data bank04.loc_8c044F12
loc_8C0A323C:
	#data loc_8c0a315c
loc_8C0A3240:
	#data bank15.loc_8c156840
loc_8C0A3244:
	#data bank12.loc_8c129560
loc_8C0A3248:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0a324c:
	mov.w @(loc_8C0A334A,pc),r4
	add r13,r4
	mov.b @(0x01,r4),r0 
	mov r0,r4
	exts.b r4,r3
	cmp/pz r3
	bf loc_8c0a332c
	mov 0x22,r0
	mov.b @(r0,r14),r3
	extu.b r4,r2
	extu.b r3,r3
	cmp/eq r2,r3
	bt loc_8c0a329c
	mov.l @(loc_8c0a3354,pc),r3
	mov 0x17,r5
	mov 0x00,r6
	mov.b r4,@(r0,r14) 
	mov.b @(r0,r14),r7
	extu.b r7,r7
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0A334C,pc),r0
	mov.l @(loc_8C0A3358,pc),r3
	mov.b @(r0,r14),r2
	add 0x56,r0
	mov.b r2,@(r0,r14) 
	add 0x0B,r0
	mov.w r12,@(r0,r14) 
	add 0xF2,r0
	mov.b r12,@(r0,r14) 
	add 0x26,r0
	mov.l r12,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 

loc_8c0a329c:
	mov r13,r2
	mov.l @(loc_8c0a335c,pc),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8C0A334C,pc),r0
	mov.l @(loc_8c0a3360,pc),r4
	mov.b @(r0,r13),r2
	mov 0x20,r0
	mov.b @(r0,r14),r3
	mova @(loc_8C0A3364,pc),r0 
	extu.b r2,r2
	fmov.s @r0,fr2
	shll2 r2
	mov.w @(loc_8C0A334E,pc),r0
	extu.b r3,r3
	shll r2
	shll2 r3
	add r4,r2
	add r3,r2
	mov.w @r2,r3
	lds r3,fpul 
	mov.w @(r0,r13),r3
	float fpul,fr3
	tst r3,r3
	fmov fr3,fr4
	bt/s loc_8c0a32da
	fmul fr2,fr4
	fneg fr4

loc_8c0a32da:
	mov 0x34,r0
	mov.w @(loc_8C0A334C,pc),r3
	fmov.s @(r0,r14),fr3
	mov r14,r2
	add r13,r3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	add r0,r2
	mov.l r2,@-r15
	mov 0x20,r2
	mov.b @r3,r3
	add r14,r2
	mov.b @r2,r2
	extu.b r3,r3
	shll2 r3
	extu.b r2,r2
	shll r3
	shll2 r2
	add r3,r4
	add r2,r4
	mov.w @(0x02,r4),r0 
	mov 0x01,r2
	mov r0,r3
	lds r3,fpul 
	mov.l @r15+,r3
	mova @(loc_8C0A3368,pc),r0 
	fmov.s @r0,fr0
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	mov.w @(loc_8c0a3350,pc),r0
	mov r14,r4
	mov.l @(loc_8c0a336c,pc),r3
	mov.b r2,@(r0,r14) 
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0A332C:
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A3336:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A3350,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0A3344:
	mov.l @(loc_8C0A3370,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a334a:
	#data 0x0150
loc_8c0a334c:
	#data 0x014b
loc_8c0a334e:
	#data 0x0130
loc_8C0A3350:
	#data 0x012c
	#align4

loc_8C0A3354:
	#data bank03.loc_8c034F54
loc_8c0a3358:
	#data 0x8C2896B0
loc_8C0A335C:
	#data bank12.loc_8c1294C8
loc_8C0A3360:
	#data bank15.loc_8c1567E8
loc_8c0a3364:
	#data 0x3FD55555
loc_8c0a3368:
	#data 0x40092492
loc_8C0A336C:
	#data bank04.loc_8c045748
loc_8C0A3370:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8C0A3374:
	mov.l r14,@-r15
	mov 0x01,r5
	sts.l pr,@-r15
	mov.l @(0x14C,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a33a6
	mov r0,r4
	mov.l @(0x140,PC),r3
	mov 0x00,r2
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x12A,PC),r3
	mov.l r14,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.w @(0x120,PC),r0
	mov.b @(r0,r14),r2
	mov.w @(0x11E,PC),r0
	mov.b r2,@(r0,r4)

loc_8c0a33a6:
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A33B0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov r6,r10
	mov.l r9,@-r15
	cmp/pl r10
	sts.l pr,@-r15
	mov.l @(0x100,PC),r9
	mov.w @(0xF4,PC),r11
	bf.s loc_8c0a341a
	mov 0x00,r12

loc_8C0A33CE:
	mov 0x01,r5
	mov 0x02,r6
	jsr @r9
	mov r14,r4
	mov.l @(0xF4,PC),r2
	mov r0,r4
	mov.l @(0xF4,PC),r3
	mov r4,r1
	mov.l r2,@(0x10,r4)
	mov r14,r2
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x20,r0
	mov 0x01,r2
	mov.b r2,@(r0,r4)
	mov 0x22,r0
	mov.l r14,@(0x18,r4)
	add 0x01,r12
	mov.l @(0x14,r14),r3
	cmp/ge r10,r12
	mov.l r3,@(0x14,r4)
	mov.b @(r0,r14),r2
	mov.w @(0xC4,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r11,@(r0,r4)
	add r3,r4
	mov.w @r13,r2
	mov.w r2,@r4
	mov.w @(0x2,r13),r0
	mov.w r0,@(0x2,r4)
	mov.w @(0x4,r13),r0
	mov.w r0,@(0x4,r4)
	mov.w @(0x6,r13),r0
	bf.s loc_8c0a33ce
	mov.w r0,@(0x6,r4)

loc_8C0A341A:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A342A:
	mov.l r8,@-r15
	fmov fr15,@-r15
	fmov fr14,@-r15
	fmov fr13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	add 0x04,r4
	mov.l @(0xA4,PC),r3
	extu.b r4,r4
	mov.l r5,@r15
	mova @(0x94,PC),r0
	shlr2 r4
	fmov @r0,fr15
	shlr r4
	mov 0x28,r0
	extu.b r4,r4
	sub r4,r0
	and 0x1F,r0
	shll8 r0
	shll2 r0
	shll r0
	mov.w r0,@(0x8,r15)
	mova @(0x80,PC),r0
	fmov @r0,fr13
	mova @(0x80,PC),r0
	fmov @r0,fr14
	mov.w @(0x8,r15),r0
	mov.l @r15,r8
	mov.l r0,@(0x4,r15)
	jsr @r3
	mov r0,r4
	fmov fr15,fr3
	fmul fr0,fr3
	mova @(0x74,PC),r0
	mov.l @(0x7C,PC),r3
	fmov @r0,fr2
	mova @(0x74,PC),r0
	fmov @r0,fr1
	fmul fr14,fr3
	fdiv fr2,fr3
	fdiv fr13,fr3
	fmul fr1,fr3
	fmov fr3,@r8
	mov.l @r15,r8
	add 0x04,r8
	jsr @r3
	mov.l @(0x4,r15),r4
	fmul fr0,fr15
	mova @(0x64,PC),r0
	fmov @r0,fr3
	mova @(0x64,PC),r0
	fmov @r0,fr2
	fmul fr14,fr15
	fdiv fr3,fr15
	fdiv fr13,fr15
	fmul fr2,fr15
	fmov fr15,@r8
	add 0x0C,r15
	lds.l @r15+,pr
	fmov @r15+,fr13
	fmov @r15+,fr14
	fmov @r15+,fr15
	rts
	mov.l @r15+,r8

;----------------------------------------------
loc_8C0A34AA:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0A34F8,pc),r1 ; r1 set to 0x8C1570F0
	extu.b r0,r0
	mov.w @(loc_8C0A34C6,pc),r5 ; r5 set to 0x88
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r5 ; r5 ??? bc r14 is ???	
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a34c0:
	#data 0x3001
loc_8c0a34c2:
	#data 0x01E9
loc_8c0a34c4:
	#data 0x00Be
loc_8C0A34C6:
	#data 0x0088
	#align4

loc_8C0A34C8:
	#data bank04.loc_8c044F12
loc_8C0A34CC:
	#data loc_8c0a34Aa
loc_8C0A34D0:
	#data bank12.loc_8c1294C8
loc_8C0A34D4:
	#data 0x48C80000
loc_8C0A34D8:
	#data 0x43800000
loc_8C0A34Dc:
	#data 0x447A0000
loc_8C0A34E0:
#data bank11.loc_8c11E2E0
loc_8C0A34E4:
	#data 0x47C35000
loc_8C0A34E8:
	#data 0x3FD55555
loc_8C0A34EC:
	#data bank11.loc_8c11E860
loc_8C0A34f0:
	#data 0x47F42400
loc_8C0A34f4:
	#data 0x40092492
loc_8C0A34F8:
	#data bank15.loc_8c1570F0

;==============================================
loc_8C0A34FC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	mov.w @(loc_8C0A3598,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.w @(loc_8C0A359A,pc),r0 ; r0 set to 0xC0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0A3598,pc),r2 ; r2 set to 0xDc
	mov.l @(0x18,r14),r13
	mov.l @(loc_8C0A35A4,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0A359C,pc),r0 ; r0 set to 0x12c
	mov 0x01,r10 ; r10 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r10,@(r0,r14)
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
	mov.w @(loc_8C0A359E,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A35A8,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r1
	mov.b @(r0,r13),r2
	mov 0x64,r3 ; r3 set to 0x64
	mov 0x00,r11 ; r11 set to 0x00
	mov.b r2,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov r13,r2
	mov.w @(loc_8C0A359C,pc),r0 ; r0 set to 0x12c
	add 0x34,r2
	mov.l @(loc_8C0A35A8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r1
	mov.b r11,@(r0,r14)
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0A35A0,pc),r0 ; r0 set to 0x15a
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov.b r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bt loc_8C0A35Ac
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x21
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0A35A2,pc),r0 ; r0 set to 0xA8
	mov.l @(0x18,r14),r4
	bra loc_8C0A3794
	mov.l r14,@(r0,r4)

;##############################################
loc_8C0A3598:
	#data 0x00Dc
loc_8C0A359A:
	#data 0x00C0
loc_8C0A359C:
	#data 0x012c
loc_8C0A359E:
	#data 0x01A3
loc_8C0A35A0:
	#data 0x015a
loc_8C0A35A2:
	#data 0x00A8
	#align4

loc_8C0A35A4:
	#data bank12.loc_8c129560
loc_8C0A35A8:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0a35ac:
	mov.w @(loc_8C0A3720,pc),r4
	mov.w @(loc_8C0A371E,pc),r0
	add r13,r4
	mov.b r10,@(r0,r13) 
	mov r11,r0
	nop 
	mov.w r0,@(0x12,r4) 
	mov 0x34,r0
	mov.b r11,@(r0,r12) 
	mov.w @(loc_8C0A3722,pc),r0
	mov.l @(loc_8c0a3734,pc),r4
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bt loc_8c0a35cc
	mov.l @(loc_8c0a3738,pc),r4

loc_8c0a35cc:
	mov.w @(loc_8C0A3724,pc),r0
	mov.b @(r0,r13),r2
	mova @(loc_8C0A373C,pc),r0 
	fmov.s @r0,fr15
	extu.b r2,r2
	shll2 r2
	shll r2
	add r2,r4
	mov.w @(0x02,r4),r0 
	mov.w @r4,r5
	mov r0,r3
	lds r3,fpul 
	mov.w @(loc_8C0A3726,pc),r0
	float fpul,fr3
	mov.w @(r0,r13),r3
	tst r3,r3
	fmov fr3,fr4
	bt/s loc_8c0a35f6
	fmul fr15,fr4
	fneg fr4
	neg r5,r5

loc_8c0a35f6:
	mov 0x22,r0
	mov.b r5,@(r0,r14) 
	mov 0x18,r0
	fmov.s fr4,@(r0,r12) 
	mova @(loc_8C0A3740,pc),r0 
	fmov.s @r0,fr14
	mov 0x1C,r1
	mov.w @(0x04,r4),r0 
	add r12,r1
	mov r0,r3
	lds r3,fpul 
	mov 0x1C,r0
	float fpul,fr3
	fmul fr14,fr3
	fmov.s fr3,@(r0,r12) 
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	mov 0x10,r0
	fmov.s fr3,@(r0,r12) 
	mov 0x38,r0
	fmov.s @(r0,r14),fr3
	mov 0x14,r0
	fmov.s fr3,@(r0,r12) 
	mov 0x60,r0
	fldi0 fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14) 
	exts.b r11,r3
	mov.w @(loc_8C0A3728,pc),r0
	mov 0x45,r2
	mov.b r11,@(r0,r14) 
	add 0x90,r0
	mov.w r3,@(r0,r14) 
	add 0x6C,r0
	mov.b r2,@(r0,r14) 
	add 0x01,r0
	mov.b r11,@(r0,r14) 
	add 0x06,r0
	mov.b @(r0,r13),r3
	mov.l @(loc_8c0a3744,pc),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov.w @(loc_8C0A372A,pc),r0
	mov.l @(loc_8C0A3748,pc),r3
	mov.b r2,@(r0,r14) 
	add 0x0B,r0
	mov.w r11,@(r0,r14) 
	add 0xF2,r0
	mov.b r11,@(r0,r14) 
	add 0x26,r0
	mov.l r11,@(r0,r14) 
	mov.l @r3,r2
	mov.b @(0x02,r14),r0 
	add 0x7C,r2
	extu.b r0,r0
	mov.w @(loc_8C0A372C,pc),r9
	shll r0
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov 0x32,r0
	mov.b r11,@(r0,r12) 
	mov 0x22,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	add 0x04,r0
	and r0,r9
	cmp/pz r9
	bt loc_8c0a3696
	add 0x07,r9

loc_8c0a3696:
	shar r9
	mov.l @(loc_8c0a374c,pc),r1
	shar r9
	shar r9
	mov 0x1B,r5
	extu.b r9,r7
	mov 0x01,r6
	jsr @r1
	mov r14,r4
	mov.w @(loc_8C0A372E,pc),r0
	extu.b r9,r4
	mov.l @(loc_8c0a3750,pc),r3
	shll2 r4
	shll r4
	mov.w @(loc_8C0A3732,pc),r1
	mov.l r3,@(r0,r14) 
	mov.l @(r0,r14),r2
	add r14,r1
	mov.w @(loc_8C0A3730,pc),r3
	mov.w @(0x12,r2),r0 
	add r14,r3
	extu.w r0,r0
	mov.l @r3,r3
	shll2 r0
	shll2 r0
	add r3,r0
	mov.l @(loc_8c0a3754,pc),r3
	mov.l r0,@r1
	add r3,r4
	mov.w @r4,r2
	lds r2,fpul 
	float fpul,fr3
	fmul fr15,fr3
	ftrc fr3,fpul 
	sts fpul,r2
	mov.w r2,@r12
	mov.w @(0x02,r4),r0 
	mov r0,r2
	lds r2,fpul 
	float fpul,fr3
	fmul fr14,fr3
	ftrc fr3,fpul 
	sts fpul,r0
	mov.w r0,@(0x02,r12) 
	mov.w @(0x04,r4),r0 
	mov r0,r2
	lds r2,fpul 
	float fpul,fr3
	fmul fr15,fr3
	ftrc fr3,fpul 
	sts fpul,r0
	mov.w r0,@(0x04,r12) 
	mov.w @(0x06,r4),r0 
	mov r0,r2
	lds r2,fpul 
	float fpul,fr3
	fmul fr14,fr3
	ftrc fr3,fpul 
	sts fpul,r0
	mov.w r0,@(0x06,r12) 
	mov r11,r0
	nop 
	mov.l @(loc_8C0A3758,pc),r1
	mov.b r0,@(0x0E,r12) 
	mov.b r0,@(0x0F,r12) 
	mov.l r0,@(0x28,r12) 
	bra loc_8c0a375c
	nop 

;==============================================
loc_8C0A371E:
	#data 0x01EA
loc_8C0A3720:
	#data 0x02A4
loc_8C0A3722:
	#data 0x01E9
loc_8C0A3724:
	#data 0x01A3
loc_8C0A3726:
	#data 0x0130
loc_8C0A3728:
	#data 0x01A0
loc_8C0A372A:
	#data 0x01A1
loc_8C0A372C:
	#data 0x00F8
loc_8C0A372E:
	#data 0x0154
loc_8C0A3730:
	#data 0x016C
loc_8C0A3732:
	#data 0x01C0
	#align4

loc_8c0a3734:
	#data bank15.loc_8c156850
loc_8c0a3738:
	#data bank15.loc_8c156870
loc_8C0A373C:
	#data 0x3FD55555
loc_8C0A3740:
	#data 0x40092492
loc_8c0a3744:
	#data bank15.loc_8c156898
loc_8C0A3748:
	#data 0x8C2896B0
loc_8c0a374c:
	#data bank03.loc_8c034cd6
loc_8c0a3750:
	#data bank15.loc_8c1569a8
loc_8c0a3754:
	#data bank15.loc_8c1568a6
loc_8C0A3758:
	#data 0x8C287AE8

;==============================================
loc_8c0a375c:
	mov.w @r1,r2
	mov 0x0E,r0
	cmp/ge r0,r2
	bf loc_8c0a3778
	mov r12,r5
	mov r0,r6
	bsr loc_8c0a33b0
	mov r14,r4
	mov.b @(0x04,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x04,r14) 
	mov 0x34,r0
	bra loc_8c0a3794
	mov.b r10,@(r0,r12) 

loc_8c0a3778:
	mov 0x03,r0
	mov.l @(loc_8c0a386c,pc),r3
	mov.b r0,@(0x06,r13) 
	mov r14,r4
	lds.l @r15+,pr 
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0A3794:
	lds.l @r15+,pr
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A37A8:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0A3870,pc),r0 ; r0 set to 0x8C157100
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0A37BC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r4
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c0a3808
	mov.w @(0x98,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0a37de
	mov.w @(0x90,PC),r0
	mov.b @(r0,r4),r2
	mov 0x36,r0
	mov.b @(r0,r5),r3
	cmp/eq r3,r2
	bf loc_8c0a3808

loc_8C0A37DE:
	mov.w @(0x82,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0a37f4
	mov.w @(0x7A,PC),r0
	mov.b @(r0,r4),r2
	mov 0x36,r0
	mov.b @(r0,r5),r3
	cmp/eq r3,r2
	bf loc_8c0a3808

loc_8C0A37F4:
	mov.w @(0x6C,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_8c0a3810
	mov.w @(0x62,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c0a3810

loc_8C0A3808:
	mov.l @(0x68,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0A3810:
	mov.w @(0x54,PC),r0
	mov 0x01,r3
	mov 0x00,r6
	mov.b r3,@(r0,r4)
	mov 0x0E,r0
	mov.b r0,@(0xE,r5)
	mov 0x18,r0
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	mov 0x10,r0
	mov 0x0E,r7
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x1C,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	mov 0x14,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x24,r0
	mov.b @(r0,r4),r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.w @(0x24,PC),r0
	mov.b r6,@(r0,r14)
	mov 0x34,r0
	mov.b r6,@(r0,r5)

loc_8C0A384A:

	mov.w @(0x1C,PC),r0
	dt r7
	mov.l @(0xC,r4),r4
	bf.s loc_8c0a384a
	mov.b r6,@(r0,r4)
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x1C,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a3864:
	#data 0x01d0
loc_8c0a3866:
	#data 0x01e9
loc_8c0a3868:
	#data 0x01ea
loc_8c0a386a:
	#data 0x012c
	#align4

loc_8C0A386C:
	#data bank04.loc_8c0450C0
loc_8C0A3870:
	#data bank15.loc_8c157100
loc_8C0A3874:
	#data loc_8c0a4FA4
loc_8C0A3878:
	#data bank15.loc_8c157108

;==============================================
loc_8C0A387C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0xF4,PC),r0
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r3
	tst r3,r3
	bf.s loc_8c0a3898
	mov r5,r13
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0a38a2

loc_8C0A3898:
	mov r13,r5
	bsr loc_8c0a3d40
	mov r14,r4
	bra loc_8c0a394a ; loc_8c0a3946+0x4
	nop

loc_8C0A38A2:
	mov.w @(0xDA,PC),r7
	mov r7,r0
	nop
	mov.w @(0xD6,PC),r2
	add 0xF2,r0
	mov.w @(r0,r4),r3
	add r4,r2
	mov.w @r2,r2
	and r7,r2
	or r2,r3
	mov.w r3,@(r0,r4)
	mov 0x07,r3
	mov.b @(0xF,r13),r0
	cmp/gt r3,r0
	bf loc_8c0a38e8
	mov.w @(0xC0,PC),r0
	mov 0x00,r2
	mov.w @(0xBE,PC),r5
	mov.w @(r0,r4),r6
	mov.w r2,@(r0,r4)
	mov.w @(0xBA,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf.s loc_8c0a38d8
	extu.w r6,r6
	mov r7,r5

loc_8C0A38D8:
	extu.w r5,r5
	tst r5,r6
	bt loc_8c0a38e8
	mov r13,r5
	bsr loc_8c0a3ab8
	mov r14,r4
	bra loc_8c0a394a ; loc_8c0a3946+0x4
	nop

loc_8C0A38E8:
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov.w @(0x9A,PC),r0
	fmov @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0a3900
	mov.l @(0x98,PC),r2
	mov r13,r5
	jsr @r2
	mov r14,r4
	bra loc_8c0a394a ; loc_8c0a3946+0x4
	nop

loc_8C0A3900:
	mov 0x22,r0
	mov r15,r5
	bsr loc_8c0a342a
	mov.b @(r0,r14),r4
	mov 0x5C,r0
	fmov @r15,fr3
	fmov @(r0,r14),fr2
	mov r15,r1
	add 0x04,r1
	fadd fr3,fr2
	mov 0x01,r4
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov @(r0,r13),fr2
	mov 0x34,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov @(r0,r13),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x4A,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x00,r0
	mov.b r0,@(0xF,r13)
	mov 0x34,r0
	mov.b r4,@(r0,r13)

loc_8C0A394A:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A3954:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov.w @(0x18,PC),r0
	mov.l @(0x18,r14),r12
	mov.b @(r0,r12),r3
	tst r3,r3
	bf.s loc_8c0a3974
	mov r5,r13
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0a3994

loc_8C0A3974:
	mov r13,r5
	bsr loc_8c0a3d40
	mov r14,r4
	bra loc_8c0a3a92
	nop

;##############################################
loc_8c0a397e:
	#data 0x019e
loc_8c0a3980:
	#data 0x0360
loc_8c0a3982:
	#data 0x034e
loc_8c0a3984:
	#data 0x0352
loc_8c0a3986:
	#data 0x0300
loc_8c0a3988:
	#data 0x01f9
loc_8c0a398a:
	#data 0x041c
loc_8c0a398c:
	#data 0x012c
	#align4

loc_8C0A3990:
	#data loc_8c0a53B8

;==============================================
loc_8C0A3994:
	mov.w @(0x108,PC),r6
	mov r6,r0
	nop
	mov.w @(0x104,PC),r2
	add 0xF2,r0
	mov.w @(r0,r12),r3
	add r12,r2
	mov.w @r2,r2
	and r6,r2
	or r2,r3
	mov.w r3,@(r0,r12)
	mov 0x07,r3
	mov.b @(0xF,r13),r0
	cmp/gt r3,r0
	bf.s loc_8c0a39da
	mov 0x00,r11
	mov.w @(0xEC,PC),r0
	mov.w @(0xEC,PC),r4
	mov.w @(r0,r12),r5
	mov.w r11,@(r0,r12)
	mov.w @(0xE8,PC),r0
	mov.b @(r0,r12),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf.s loc_8c0a39ca
	extu.w r5,r5
	mov r6,r4

loc_8C0A39CA:
	extu.w r4,r4
	tst r4,r5
	bt loc_8c0a39da
	mov r13,r5
	bsr loc_8c0a3ab8
	mov r14,r4
	bra loc_8c0a3a92
	nop

loc_8C0A39DA:
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov.w @(0xC8,PC),r0
	fmov @(r0,r12),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0a39f2
	mov.l @(0xC8,PC),r2
	mov r13,r5
	jsr @r2
	mov r14,r4
	bra loc_8c0a3a92
	nop

loc_8C0A39F2:
	mov 0x22,r0
	mov r15,r5
	bsr loc_8c0a342a
	mov.b @(r0,r14),r4
	mov 0x68,r0
	fmov @r15,fr2
	fmov @(r0,r14),fr3
	mov 0x68,r0
	mov r15,r1
	add 0x04,r1
	fdiv fr3,fr2
	fmov fr2,@r15
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov @(r0,r15),fr2
	mov 0x04,r0
	fdiv fr3,fr2
	fmov fr2,@(r0,r15)
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmov @r15,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov 0x10,r0
	fmov @(r0,r13),fr2
	mov 0x34,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	mov 0x14,r0
	fmov @(r0,r13),fr2
	mov 0x38,r0
	mov 0x01,r4
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x60,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	mov.b r4,@(r0,r13)
	mov.w @(0x8,r13),r0
	add 0xFF,r0
	mov.w r0,@(0x8,r13)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0a3a8c
	fldi1 fr3
	mov 0x08,r0
	fadd fr3,fr3
	mov.w r0,@(0x8,r13)
	mov 0x68,r0
	fmov @(r0,r14),fr2
	fmul fr3,fr2
	fmov fr2,@(r0,r14)
	mova @(0x44,PC),r0
	fmov @r0,fr1
	fcmp/gt fr1,fr2
	bf loc_8c0a3a8c
	mov 0x03,r0
	mov.b r0,@(0x6,r12)
	mov 0x02,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0x2E,PC),r0
	mov.w r0,@(0x8,r13)
	mov 0x22,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	mov.w r0,@(0xA,r13)
	mov 0x33,r0
	mov.b r11,@(r0,r13)

loc_8C0A3A8C:
	mov r11,r0
	nop
	mov.b r0,@(0xF,r13)

loc_8C0A3A92:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a3aa0:
	#data 0x0360
loc_8c0a3aa2:
	#data 0x034e
loc_8c0a3aa4:
	#data 0x0352
loc_8c0a3aa6:
	#data 0x0320
loc_8c0a3aa8:
	#data 0x01f9
loc_8c0a3aaa:
	#data 0x041c
loc_8c0a3aac:
	#data 0x012c
loc_8c0a3aae:
	#data 0x0e00
	#align4

loc_8C0A3AB0:
	#data loc_8c0a53B8
loc_8C0A3AB4:
	#data 0x42000000

;==============================================
loc_8C0A3AB8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r13
	mov.l @(0x18,r13),r3
	mov.l @(0x160,PC),r2
	mov r5,r14
	jsr @r2
	mov.l r3,@r15
	mov.w @(0x150,PC),r0
	mov 0x00,r4
	mov.l @r15,r3
	mov 0x02,r5
	mov.w r4,@(r0,r3)
	mov r5,r0
	nop
	mov.b r0,@(0x5,r13)
	mov r14,r3
	mov.b @(0xF,r14),r0
	add 0x08,r3
	mov.b r0,@(0x1,r3)
	mov r4,r0
	nop
	mov.b r0,@(0x8,r14)
	mov 0x22,r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	mov.w r0,@(0xA,r14)
	mov.l @(0x28,r14),r3
	tst r3,r3
	bt loc_8c0a3b02
	mov.l @(0x28,r14),r3
	mov r5,r0
	nop
	mov.b r0,@(0x4,r3)
	mov.l r4,@(0x28,r14)

loc_8C0A3B02:
	mov r13,r4
	mov r14,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A3B0E:
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
	add 0xE8,r15
	mov r5,r13
	mov r13,r8
	add 0x08,r8
	mov r4,r14
	mov 0x00,r2
	mov.l r14,@(0x10,r15)
	mov.l r13,@(0x8,r15)
	mov.l @(0x18,r14),r3
	mov.l r3,@(0xC,r15)
	mov.w @(0xE8,PC),r3
	mov.l r2,@(0x14,r15)
	mov r13,r2
	mov.b @(0x1,r8),r0
	add 0x08,r2
	extu.b r0,r8
	mov.w @(0x8,r13),r0
	sub r3,r0
	mov.w r0,@(0x8,r13)
	mov.b @(0x1,r2),r0
	extu.b r8,r2
	extu.b r0,r0
	cmp/eq r2,r0
	bt.s loc_8c0a3b58
	exts.b r8,r3
	mov 0x01,r2
	mov.l r2,@(0x14,r15)

loc_8C0A3B58:
	cmp/pz r3
	bt loc_8c0a3b60
	bra loc_8c0a3d0a
	nop

loc_8C0A3B60:
	mov 0x33,r0
	mov r15,r3
	mov.b @(r0,r13),r2
	mova @(0xC4,PC),r0
	add 0x04,r3
	mov.w @(0xB6,PC),r12
	mov.l @(0xC4,PC),r11
	mov 0x40,r9
	mov.b r2,@r3
	mov 0x3F,r10
	fmov @r0,fr14
	mova @(0xB8,PC),r0
	fmov @r0,fr15

loc_8C0A3B7A:
	mov.l @(0xC,r15),r3
	mov 0x24,r0
	mov.b @(r0,r3),r2
	mov r15,r3
	mov.b r2,@(r0,r14)
	mov r15,r2
	add 0x04,r2
	mov.b @r2,r1
	cmp/pz r1
	mov.b r1,@r3
	bt loc_8c0a3b9e
	mov.l @r15,r0
	and 0x7F,r0
	neg r0,r0
	mov r0,r3
	add 0x40,r3
	extu.b r3,r3
	mov.l r3,@r15

loc_8C0A3B9E:
	mov.l @(0x8,r15),r3
	mov r15,r2
	mov.b @r2,r1
	mov.w @(0xA,r3),r0
	add r0,r1
	mov.b r1,@r2
	mov 0x22,r0
	mov.w @(0x76,PC),r2
	mov r15,r1
	mov.l @r15,r3
	add r2,r3
	mov.b r3,@(r0,r14)
	mov r15,r3
	add 0x04,r3
	mov.b @r3,r0
	and 0x7F,r0
	add 0x0C,r0
	mov.b r0,@r1
	mov.l @r15,r1
	exts.b r1,r1
	cmp/ge r9,r1
	bf loc_8c0a3bd6
	mov.l @r15,r1
	and r10,r1
	mov.l r1,@r15
	mov.l @(0x4,r15),r3
	xor r12,r3
	mov.l r3,@(0x4,r15)

loc_8C0A3BD6:
	mov.l @(0x4,r15),r2
	mov 0x33,r0
	mov.l @r15,r3
	and r12,r2
	or r3,r2
	mov r2,r3
	mov.l r2,@(0x4,r15)
	mov.b r3,@(r0,r13)
	mov.l @(0x14,r15),r2
	tst r2,r2
	bt loc_8c0a3c10
	mov 0x00,r2
	mov.l r2,@(0x14,r15)
	mov.l @r15,r4
	add 0x0C,r4
	exts.b r4,r3
	cmp/ge r9,r3
	bf loc_8c0a3c02
	mov.l @(0x4,r15),r3
	and r10,r4
	xor r12,r3
	mov.l r3,@(0x4,r15)

loc_8C0A3C02:
	mov.l @(0x4,r15),r2
	mov 0x33,r0
	and r12,r2
	or r4,r2
	mov r2,r3
	mov.l r2,@(0x4,r15)
	mov.b r3,@(r0,r13)

loc_8C0A3C10:
	mov 0x22,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	add 0x04,r0
	and 0xF8,r0
	cmp/pz r0
	bra loc_8c0a3c38
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a3c20:
	#data 0x0352
loc_8c0a3c22:
	#data 0x0140
loc_8c0a3c24:
	#data 0x0080
loc_8c0a3c26:
	#data 0x00e0
	#align4

loc_8C0A3C28:
	#data bank02.loc_8c02FD26
loc_8C0A3C2c:
	#data 0x40092492
loc_8C0A3C30:
	#data 0x3FD55555
loc_8C0A3C34:
	#data bank15.loc_8c1568A6

;==============================================
loc_8C0A3C38:
	bt loc_8c0a3c3c
	add 0x07,r0

loc_8C0A3C3C:
	shar r0
	mov.l @(0x148,PC),r3
	shar r0
	shar r0
	mov 0x1B,r5
	mov.l r0,@r15
	mov 0x01,r6
	mov r0,r7
	jsr @r3
	mov r14,r4
	mov.w @(0x128,PC),r0
	mov.l @(0x138,PC),r2
	mov.w @(0x128,PC),r1
	mov.l r2,@(r0,r14)
	mov.l @(r0,r14),r3
	add r14,r1
	mov.w @(0x12,r3),r0
	mov.w @(0x11C,PC),r3
	extu.w r0,r0
	add r14,r3
	mov.l @r3,r3
	shll2 r0
	shll2 r0
	add r3,r0
	mov.l r0,@r1
	mov 0x02,r1
	mov.l @r15,r3
	shll2 r3
	shll r3
	add r11,r3
	mov.w @r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr15,fr3
	ftrc fr3,fpul
	sts fpul,r3
	mov.w r3,@r13
	mov.l @r15,r0
	shll2 r0
	shll r0
	add r11,r0
	mov.w @(r0,r1),r3
	lds r3,fpul
	mov 0x04,r2
	mov r14,r4
	float fpul,fr3
	fmul fr14,fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x2,r13)
	mov.l @r15,r0
	shll2 r0
	shll r0
	add r11,r0
	mov.w @(r0,r2),r3
	lds r3,fpul
	mov 0x06,r3
	float fpul,fr3
	fmul fr15,fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x4,r13)
	mov.l @r15,r0
	shll2 r0
	shll r0
	add r11,r0
	mov.w @(r0,r3),r3
	lds r3,fpul
	float fpul,fr3
	fmul fr14,fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x6,r13)
	mov.l @(0xC,r14),r14
	add 0xFF,r8
	mov.w @(0xAC,PC),r13
	cmp/pz r8
	bf.s loc_8c0a3cde
	add r14,r13
	bra loc_8c0a3b7a ; loc_8c0a3ab8+0xc2
	nop

loc_8C0A3CDE:
	mov.l @(0x8,r15),r5
	mov 0x10,r0
	mov 0x01,r3
	fmov @(r0,r5),fr3
	mov 0x34,r0
	mov r5,r2
	add 0x08,r2
	fmov fr3,@(r0,r4)
	mov 0x14,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x8A,PC),r0
	mov.b r3,@(r0,r4)
	mov.b @(0x1,r2),r0
	extu.b r0,r0
	cmp/pl r0
	bf loc_8c0a3d0a
	bsr loc_8c0a4a76
	mov.l @(0x10,r15),r5
	bra loc_8c0a3d28
	nop

loc_8C0A3D0A:
	mov.l @(0x10,r15),r2
	mov.b @(0x4,r2),r0
	add 0x01,r0
	mov.b r0,@(0x4,r2)
	mov.l @(0xC,r15),r0
	mov.b @(0x6,r0),r0
	extu.b r0,r0
	cmp/eq 0x06,r0
	bf loc_8c0a3d22
	mov.l @(0xC,r15),r2
	bra loc_8c0a3d26
	mov 0x07,r0

loc_8C0A3D22:
	mov.l @(0xC,r15),r2
	mov 0x03,r0

loc_8C0A3D26:
	mov.b r0,@(0x6,r2)

loc_8C0A3D28:
	add 0x18,r15
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

;----------------------------------------------
loc_8C0A3D40:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.w @(0x34,PC),r0
	sts.l pr,@-r15
	mov.l @(0x18,r13),r14
	mov.l @(0x38,PC),r3
	mov.l @(r0,r14),r11
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0a3d98
	mov.l @(0x2C,PC),r3
	jsr @r3
	mov r13,r4
	tst r0,r0
	bf loc_8c0a3d94
	lds.l @r15+,pr
	mov r12,r5
	mov r13,r4
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0a3ab8
	mov.l @r15+,r14

;##############################################
loc_8c0a3d7c:
	#data 0x0154
loc_8c0a3d7e:
	#data 0x016c
loc_8c0a3d80:
	#data 0x01c0
loc_8c0a3d82:
	#data 0x0088
loc_8c0a3d84:
	#data 0x012c
loc_8c0a3d86:
	#data 0x01b0
	#align4

loc_8C0A3D88:
	#data bank03.loc_8c034CD6
loc_8C0A3D8C:
	#data bank15.loc_8c1569A8
loc_8C0A3D90:
	#data bank05.loc_8c05264c

;==============================================
loc_8C0A3D94:
	mov.w @(0xDE,PC),r0
	mov.l @(r0,r13),r11

loc_8C0A3D98:
	mov.w @(0xDC,PC),r0
	mov 0x00,r3
	mov 0x03,r10
	mov.b r3,@(r0,r14)
	mov 0x05,r0
	mov.b r0,@(0x6,r14)
	mov r10,r0
	nop
	mov.b r0,@(0x5,r13)
	mov 0x2D,r0
	mov.l @(0xD8,PC),r3
	mov 0x0D,r5
	mov.w r0,@(0x1C,r13)
	mov 0x05,r6
	jsr @r3
	mov r14,r4
	mov.w @(0xBE,PC),r0
	mov 0x00,r2
	mov.w @(0xBC,PC),r4
	mov.b r2,@(r0,r14)
	add 0x50,r0
	mov.b r10,@(r0,r14)
	add 0x05,r0
	mov.b r10,@(r0,r14)
	add 0x05,r0
	mov.b r4,@(r0,r14)
	add 0xF2,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x0A,r0
	bf.s loc_8c0a3ddc
	mov r11,r5
	mov.w @(0xA2,PC),r0
	mov.b r4,@(r0,r14)

loc_8C0A3DDC:
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov r13,r4
	mov.l @(0xAC,PC),r2
	jsr @r2
	mov r14,r4
	mov r12,r5
	mov.l r0,@(0x28,r12)
	lds.l @r15+,pr
	mov r13,r4
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0a3dfc
	mov.l @r15+,r14

loc_8C0A3DFC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x03,r4 ; r4 set to 0x03
	mov.w @(loc_8C0A3E80,pc),r0 ; r0 set to 0x1Ed
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b r4,@(r0,r13)
	add 0x05,r0 ; r0 set to 0x1F2
	mov.b r4,@(r0,r13)
	mov.b @(0x06,r13),r0
	extu.b r0,r0 ; r0 set to 0xF2
	cmp/eq 0x06,r0
	bf/s loc_8C0A3E2a
	mov r5,r12
	lds.l @r15+,pr
	mov r12,r5
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0A3F1e
	mov.l @r15+,r14

loc_8c0a3e2a:
	cmp/eq 0x09,r0 
	bt/s loc_8c0a3e38
	mov r0,r4
	mov r4,r0
	nop 
	cmp/eq 0x0A,r0 
	bf loc_8c0a3e46

loc_8c0a3e38:
	lds.l @r15+,pr 
	mov r12,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0a4ac6
	mov.l @r15+,r14

loc_8c0a3e46:
	mov.w @(loc_8C0A3E82,pc),r0
	mov.l @(r0,r13),r4
	mov.b @(0x05,r4),r0 
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bf loc_8c0a3e64
	mov.w @(0x1C,r14),r0 
	add 0xFF,r0
	mov.w r0,@(0x1C,r14) 
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0a3e94
	mov.w @(loc_8C0A3E84,pc),r0
	mov 0x07,r2
	mov.b r2,@(r0,r4) 

loc_8c0a3e64:
	mov r12,r5
	mov 0x02,r0
	mov.b r0,@(0x06,r13) 
	mov r14,r4
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0a3ab8
	mov.l @r15+,r14

;##############################################
loc_8c0a3e76:
	#data 0x01B0
loc_8c0a3e78:
	#data 0x019C
loc_8c0a3e7a:
	#data 0x019D
loc_8c0a3e7c:
	#data 0x00C0
loc_8c0a3e7e:
	#data 0x01F7
loc_8c0a3e80:
	#data 0x01ED
loc_8C0A3E82:
	#data 0x01C8
loc_8C0A3E84:
	#data 0x01F6
	#align4

loc_8c0a3e88:
	#data bank02.loc_8c02fec4
loc_8c0a3e8c:
	#data bank05.loc_8c05248e
loc_8c0a3e90:
	#data bank0a.loc_8c0a55e0

;==============================================
loc_8c0a3e94:
	mov 0x10,r0
	fmov.s @(r0,r12),fr3
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	mov 0x34,r0
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x14,r0
	fmov.s @(r0,r12),fr3
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	mov 0x2C,r0
	fmov.s fr3,@(r0,r12) 
	mov.w @(loc_8C0A3FE2,pc),r0
	fmov.s @(r0,r13),fr3
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	mova @(loc_8C0A3FF0,pc),r0 
	fsub fr3,fr2
	fmov.s @r0,fr3
	fmov fr2,fr4
	fadd fr3,fr4
	fldi0 fr2
	fcmp/gt fr4,fr2
	bf/s loc_8c0a3ee0
	mov r13,r7
	mov 0x38,r0
	fmov.s @(r0,r13),fr1
	fsub fr4,fr1
	fmov.s fr1,@(r0,r13) 
	fmov.s @(r0,r14),fr0
	fsub fr4,fr0
	fmov.s fr0,@(r0,r14) 

loc_8c0a3ee0:
	mov.l @(loc_8c0a3ff4,pc),r3
	mov r12,r5
	mov.l @(0x28,r12),r6
	jsr @r3
	mov r14,r4
	mov 0x2C,r1
	mov.l @(loc_8c0a3ff8,pc),r3
	add r12,r1
	fmov.s @r1,fr3
	mov 0x34,r0
	mov r0,r1
	add r14,r1
	fmov.s @r1,fr2
	fsub fr3,fr2
	fmov.s @(r0,r13),fr3
	fadd fr2,fr3
	fmov.s fr3,@(r0,r13) 
	jsr @r3
	mov r13,r4
	mov.w @(loc_8c0a3fe4,pc),r0
	mov 0x01,r4
	mov.b r4,@(r0,r14) 
	mov 0x34,r0
	mov.b r4,@(r0,r12) 
	mov 0x00,r0
	mov.b r0,@(0x0F,r12) 
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

loc_8C0A3F1E:
	add 0xFC,r15
	mov.l @(0x18,r4),r3
	mov 0x04,r0 ; r0 set to 0x04
	mov.l r3,@r15
	mov.b r0,@(0x05,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.l @r15,r3
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0A3FFC,pc),r0 ; r0 set to 0x8C157120
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C0A3F3A:
	mov.l r14,@-r15
	mov 0x03,r6 ; r6 set to 0x03
	mov.w @(loc_8C0A3FE6,pc),r0 ; r0 set to 0x1Ed
	mov.l @(0x18,r4),r14
	mov.b r6,@(r0,r14)
	add 0x05,r0 ; r0 set to 0x1F2
	mov.b r6,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0A4000,pc),r0 ; r0 set to 0x8C15712c
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0A3F58:
	mov.w @(0x8C,PC),r0
	mov.l @(0x18,r4),r6
	mov.l @(r0,r6),r7
	mova @(0xA4,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r6),fr2
	fmov @(r0,r7),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bf loc_8c0a3f72
	fmov @(r0,r6),fr2
	fmov fr2,@(r0,r7)

loc_8C0A3F72:
	bra loc_8c0a3f3a
	nop

;==============================================
loc_8C0A3F76:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov r4,r10
	mov.w @(loc_8C0A3FEA,pc),r0 ; r0 set to 0x141
	mov.l @(0x18,r10),r14
	mov r5,r11
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt/s loc_8C0A3F9c
	mov 0x00,r9 ; r9 set to 0x00
	bra loc_8C0A40F6
	nop

loc_8C0A3F9C:
	mov.b @(r0,r14),r13
	mov 0x0E,r3 ; r3 set to 0x0e
	mov.l @(loc_8C0A4008,pc),r2 ; r2 set to 0x8C156B40
	muls.w r3,r13
	sts macl,r13
	add r2,r13
	mov.l r13,@(0x24,r11)
	mov.b @r13,r3 ; r3 ??? bc r13 is ???	
	cmp/pz r3
	bt loc_8C0A3FBa
	mov.l @(loc_8C0A400C,pc),r3 ; r3 set to 0x8C02FD62
	jsr @r3
	nop
	bra loc_8C0A40F8
	nop

loc_8C0A3FBA:
	mov.l @(loc_8C0A4010,pc),r3 ; r3 set to 0x8C0A5144
	mov r11,r5
	mov r13,r6
	jsr @r3
	mov r10,r4
	mov.w @(loc_8C0A3FE4,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r10,r13
	mov r11,r12
	mov.b r2,@(r0,r10)
	mov r11,r8
	mov.w @(loc_8C0A3FE8,pc),r0 ; r0 set to 0x1C8
	mov.l r10,@(0x04,r15)
	mov.w @(loc_8C0A3FEC,pc),r10 ; r10 set to 0x80
	mov.l @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	mov r10,r11 ; r11 set to 0x80
	add 0x74,r11 ; r11 set to 0xF4
	mov.l r3,@(0x08,r15)
	bra loc_8C0A40Ae
	mov.l r9,@r15

;==============================================
loc_8c0a3fe2:
	#data 0x041c
loc_8C0A3FE4:
	#data 0x012c
loc_8C0A3FE6:
	#data 0x01Ed
loc_8C0A3FE8:
	#data 0x01C8
loc_8C0A3FEA:
	#data 0x0141
loc_8C0A3FEC:
	#data 0x0080
	#align4

loc_8c0a3ff0:
	#data 0xC3092492
loc_8C0A3FF4:
	#data loc_8c0a4FE2
loc_8C0A3FF8:
	#data bank05.loc_8c0500Ac
loc_8C0A3FFC:
	#data bank15.loc_8c157120
loc_8C0A4000:
	#data bank15.loc_8c15712c
loc_8C0A4004:
	#data 0x430B4924
loc_8C0A4008:
	#data bank15.loc_8c156b40
loc_8C0A400C:
	#data bank02.loc_8c02FD62
loc_8C0A4010:
	#data loc_8c0a5144

;==============================================
loc_8C0A4014:
	mov r13,r2
	mov.l @(loc_8C0A4124,pc),r3 ; r3 set to 0x8C1294C8
	mov r15,r1
	add 0x34,r2
	add 0x0C,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @r12,r3 ; r3 ??? bc r12 is ???	
	mov 0x0C,r0 ; r0 set to 0x0c
	fmov.s @(r0,r15),fr2
	mov 0x0C,r0 ; r0 set to 0x0c
	lds r3,fpul
	mov r15,r4
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r15)
	mov.w @(0x02,r12),r0
	mov r0,r3 ; r3 set to 0x0c
	lds r3,fpul
	mov 0x10,r0 ; r0 set to 0x10
	mov.l @(loc_8C0A4128,pc),r3 ; r3 set to 0x8C03362c
	fmov.s @(r0,r15),fr2
	mov 0x10,r0 ; r0 set to 0x10
	float fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r15)
	mov.l @(0x08,r15),r5
	add 0x34,r5
	jsr @r3
	add 0x0C,r4
	mov r0,r6 ; r6 set to 0x10
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r13),r7
	mov r7,r4
	sub r6,r4
	extu.b r4,r3 ; r3 ??? bc r4 is ???	
	tst r3,r3
	bt loc_8C0A407e
	mov.w @(loc_8C0A411A,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bf/s loc_8C0A4076
	extu.b r4,r5
	mov 0x0C,r3 ; r3 set to 0x0c
	cmp/gt r3,r5
	bf loc_8C0A407e
	mov r7,r6 ; r6 ??? bc r7 is ???	
	bra loc_8C0A407e
	add r11,r6

loc_8c0a4076:
	cmp/ge r11,r5
	bt loc_8c0a407e
	mov r7,r6
	add 0x0C,r6

loc_8c0a407e:
	mov.l @(0x04,r15),r5
	mov 0x22,r0
	mov.b @(r0,r5),r5
	mov.w @(loc_8c0a411a,pc),r0
	add r10,r5
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0a4092
	mov r5,r4
	add r10,r4

loc_8c0a4092:
	sub r6,r4
	exts.b r4,r4
	cmp/pz r4
	bf/s loc_8c0a409e
	mov.l @(0x0C,r13),r13
	mov r5,r6

loc_8c0a409e:
	mov.w @(loc_8C0A411C,pc),r12
	add r13,r12
	mov r12,r5
	bsr loc_8c0a42b2
	mov r13,r4
	mov.l @r15,r3
	add 0x01,r3
	mov.l r3,@r15

loc_8C0A40AE:
	mov.l @r15,r3
	mov.b @(0x0F,r8),r0
	cmp/ge r0,r3
	bf loc_8C0A4014
	mov.l @(0x28,r8),r6
	mov r12,r5
	mov r14,r7
	bsr loc_8C0A4FE2
	mov r13,r4
	mov 0x2C,r0 ; r0 set to 0x2c
	fmov.s @(r0,r12),fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr4
	fsub fr3,fr4
	fldi0 fr3
	fcmp/eq fr3,fr4
	bf loc_8C0A40D4
	bra loc_8C0A429e
	nop

loc_8C0A40D4:
	fmov.s @(r0,r14),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov.l @(0x04,r15),r4
	bra loc_8C0A40Ec
	mov r9,r5

loc_8C0A40E0:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr3
	add 0x01,r5
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.l @(0x0C,r4),r4

loc_8C0A40EC:
	mov.b @(0x0F,r8),r0
	cmp/ge r0,r5
	bf loc_8C0A40E0
	bra loc_8C0A429e
	nop

loc_8c0a40f6:
	mov.l @(0x24,r11),r13

loc_8C0A40F8:
	mov.w @(loc_8C0A411E,pc),r0 ; r0 set to 0x141
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov.l @(loc_8C0A412C,pc),r3 ; r3 set to 0x8C0A5144
	mov r11,r5
	mov.b r2,@(r0,r14)
	mov r13,r6
	jsr @r3
	mov r10,r4
	mov.w @(loc_8C0A4120,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r11,r12
	mov r10,r8
	mov.b r2,@(r0,r10)
	mov r10,r13
	mov.l r11,@r15
	bra loc_8C0A4174
	mov.l r9,@(0x04,r15)

;##############################################
loc_8C0A411A:
	#data 0x0130
loc_8c0a411c:
	#data 0x0088
loc_8C0A411E:
	#data 0x0141
loc_8C0A4120:
	#data 0x012c
	#align4

loc_8C0A4124:
	#data bank12.loc_8c1294C8
loc_8C0A4128:
	#data bank03.loc_8c03362c
loc_8C0A412C:
	#data loc_8c0a5144

;----------------------------------------------
loc_8C0A4130:
	mov.l @(0x0C,r13),r13
	mov 0x22,r0 ; r0 set to 0x22
	mov.w @(loc_8C0A421E,pc),r2 ; r2 set to 0x88
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.l r2,@r15
	mov.b @(r0,r8),r6
	mov.b @(r0,r13),r11
	mov.w @(loc_8C0A4220,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C0A4158
	mov r11,r3
	sub r6,r3
	mov 0x11,r2 ; r2 set to 0x11
	extu.b r3,r3
	cmp/gt r2,r3
	bf loc_8C0A4168
	mov.w @(loc_8C0A4222,pc),r6 ; r6 set to 0xEf
	bra loc_8C0A4168
	add r11,r6

loc_8c0a4158:
	mov r6,r4
	sub r11,r4
	mov 0x11,r3
	extu.b r4,r4
	cmp/gt r3,r4
	bf loc_8c0a4168
	mov r11,r6
	add 0x11,r6

loc_8C0A4168:
	mov.l @r15,r5
	bsr loc_8C0A42B2
	mov r13,r4
	mov.l @(0x04,r15),r2
	add 0x01,r2
	mov.l r2,@(0x04,r15)

loc_8C0A4174:
	mov.l @(0x04,r15),r3
	mov.b @(0x0F,r12),r0
	cmp/ge r0,r3
	bf loc_8C0A4130
	mov.l @r15,r5
	mov r14,r7
	mov.l @(0x28,r12),r6
	bsr loc_8C0A4FE2
	mov r13,r4
	mov.l @r15,r2
	mov 0x2C,r0 ; r0 set to 0x2C, r0 set to 0x2c
	fmov.s @(r0,r2),fr3
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r13),fr4
	fsub fr3,fr4
	fldi0 fr3
	fcmp/eq fr3,fr4
	bt loc_8C0A41B6
	fmov.s @(r0,r14),fr3
	mov r8,r13
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	bra loc_8C0A41B0
	mov r9,r4

loc_8C0A41A4:
	mov 0x34,r0
	fmov @(r0,r13),fr3
	add 0x01,r4
	fadd fr4,fr3
	fmov fr3,@(r0,r13)
	mov.l @(0xC,r13),r13

loc_8c0a41b0:
	mov.b @(0x0F,r12),r0 
	cmp/ge r0,r4
	bf loc_8c0a41a4

loc_8C0A41B6:
	mov.w @(loc_8C0A4224,pc),r5 ; r5 set to 0x2A4
	mov.l @(loc_8C0A4230,pc),r2 ; r2 set to 0x8C0A53F0
	add r14,r5 ; r5 ??? bc r14 is ???	
	jsr @r2
	mov r14,r4
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r8),r2 ; r2 ??? bc r8 is ???	
	mov.b @(r0,r13),r3
	cmp/eq r2,r3
	bt loc_8C0A4206
	mov.l @(0x28,r12),r3
	tst r3,r3
	bt loc_8C0A429e
	mov.w @(loc_8C0A4226,pc),r0 ; r0 set to 0x41c
	mov.l @(0x28,r12),r3
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r3),fr2
	fcmp/gt fr3,fr2
	bt loc_8C0A429e
	mov.l @(loc_8C0A4234,pc),r3 ; r3 set to 0x8C0423Ac
	mov.w @(loc_8C0A4228,pc),r0 ; r0 set to 0x1C8
	jsr @r3
	mov.l @(r0,r14),r4
	mov.w @(loc_8C0A4224,pc),r6 ; r6 set to 0x2A4
	mov r14,r5
	mov.l @(loc_8C0A4238,pc),r2 ; r2 set to 0x8C0A5448
	add r14,r6 ; r6 ??? bc r14 is ???	
	jsr @r2
	mov r8,r4
	mov.b @(0x05,r8),r0
	extu.b r0,r0 ; r0 set to 0xC8
	cmp/eq 0x03,r0
	bf loc_8C0A4206
	mov.l @(loc_8C0A423C,pc),r2 ; r2 set to 0x8C042008
	mov 0x07,r5 ; r5 set to 0x07
	jsr @r2
	mov r14,r4
	bra loc_8C0A429e
	nop

loc_8C0A4206:
	mov.w @(loc_8C0A4228,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r14),r4
	add 0xEC,r0 ; r0 set to 0x1B4
	mov.l r14,@(r0,r4)
	mov.w @(loc_8C0A422A,pc),r0 ; r0 set to 0x411
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0A4240
	mov.w @(loc_8C0A422C,pc),r0 ; r0 set to 0x1F6
	mov 0x01,r3 ; r3 set to 0x01
	bra loc_8C0A4246
	mov.b r3,@(r0,r4)

;##############################################
loc_8C0A421E:
	#data 0x0088
loc_8C0A4220:
	#data 0x0130
loc_8C0A4222:
	#data 0x00Ef
loc_8C0A4224:
	#data 0x02A4
loc_8C0A4226:
	#data 0x041c
loc_8C0A4228:
	#data 0x01C8
loc_8C0A422A:
	#data 0x0411
loc_8C0A422C:
	#data 0x01F6
	#align4

loc_8C0A4230:
	#data loc_8c0a53F0
loc_8C0A4234:
	#data bank04.loc_8c0423Ac
loc_8C0A4238:
	#data loc_8c0a5448
loc_8C0A423C:
	#data bank04.loc_8c042008

;----------------------------------------------
loc_8c0a4240:
	mov.w @(loc_8C0A43A6,pc),r0
	mov 0x10,r1
	mov.b r1,@(r0,r4) 

loc_8c0a4246:
	mov.w @(loc_8C0A43A8,pc),r0
	mov 0x0D,r5
	mov 0x06,r6
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4) 
	mov 0x00,r3
	mov.w @(loc_8C0A43AA,pc),r0
	mov.w @(r0,r14),r2
	mov.l @(loc_8c0a43bc,pc),r0
	extu.w r2,r2
	cmp/gt r2,r3
	addc r3,r2
	mov.l @(loc_8c0a43c0,pc),r3
	shar r2
	mov.b @(r0,r2),r1
	mov.w @(loc_8C0A43AC,pc),r0
	mov.b r1,@(r0,r4) 
	jsr @r3
	mov r14,r4
	mov 0x02,r4
	mov r4,r0
	nop 
	mov.b r0,@(0x05,r8) 
	mov r12,r3
	mov.b @(0x0F,r12),r0 
	add 0x08,r3
	mov.b r0,@(0x01,r3) 
	mov r9,r0
	nop 
	mov.b r0,@(0x08,r12) 
	mov 0x22,r0
	mov.b @(r0,r10),r0
	extu.b r0,r0
	mov.w r0,@(0x0A,r12) 
	mov 0x33,r0
	mov.b r9,@(r0,r12) 
	mov.l @(0x28,r12),r3
	tst r3,r3
	bt loc_8c0a429e
	mov.l @(0x28,r12),r3
	mov r4,r0
	nop 
	mov.b r0,@(0x04,r3) 
	mov.l r9,@(0x28,r12) 

loc_8C0A429E:
	add 0x18,r15
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
loc_8c0a42b2:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x22,r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(loc_8C0A43AE,pc),r12
	sts.l pr,@-r15
	mov.b r6,@(r0,r14) 
	extu.b r6,r0
	add 0x04,r0
	and r0,r12
	cmp/pz r12
	bt/s loc_8c0a42d0
	mov r5,r13
	add 0x07,r12

loc_8c0a42d0:
	shar r12
	mov.l @(loc_8c0a43c4,pc),r2
	shar r12
	shar r12
	mov 0x1B,r5
	extu.b r12,r7
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0A43B0,pc),r0
	extu.b r12,r4
	mov.l @(loc_8c0a43c8,pc),r3
	shll2 r4
	shll r4
	mov.w @(loc_8C0A43B4,pc),r1
	mov.l r3,@(r0,r14) 
	mov.l @(r0,r14),r2
	add r14,r1
	mov.w @(loc_8C0A43B2,pc),r3
	mov.w @(0x12,r2),r0 
	add r14,r3
	extu.w r0,r0
	mov.l @r3,r3
	shll2 r0
	shll2 r0
	add r3,r0
	mov.l @(loc_8c0a43d0,pc),r3
	mov.l r0,@r1
	mova @(loc_8C0A43CC,pc),r0 
	add r3,r4
	fmov.s @r0,fr4
	mov.w @r4,r2
	mova @(loc_8C0A43D4,pc),r0 
	lds r2,fpul 
	float fpul,fr3
	fmul fr4,fr3
	ftrc fr3,fpul 
	sts fpul,r2
	mov.w r2,@r13
	fmov.s @r0,fr5
	mov.w @(0x02,r4),r0 
	mov r0,r2
	lds r2,fpul 
	mov.w @(loc_8C0A43B6,pc),r5
	float fpul,fr3
	fmul fr5,fr3
	ftrc fr3,fpul 
	sts fpul,r0
	mov.w r0,@(0x02,r13) 
	mov.w @(0x04,r4),r0 
	mov r0,r2
	lds r2,fpul 
	float fpul,fr3
	fmul fr4,fr3
	ftrc fr3,fpul 
	sts fpul,r0
	mov.w r0,@(0x04,r13) 
	mov.w @(0x06,r4),r0 
	mov r0,r2
	lds r2,fpul 
	float fpul,fr3
	fmul fr5,fr3
	ftrc fr3,fpul 
	sts fpul,r0
	mov.w r0,@(0x06,r13) 
	mov 0x34,r0
	mov.l @(0x08,r14),r4
	add r4,r5
	fmov.s @(r0,r4),fr2
	mov.w @r5,r2
	lds r2,fpul 
	float fpul,fr3
	fadd fr3,fr2
	mov.w @(0x04,r13),r0 
	mov 0x01,r1
	mov r0,r2
	lds r2,fpul 
	mov 0x2C,r0
	float fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r13) 
	mov 0x34,r0
	fmov.s fr2,@(r0,r14) 
	mov.w @(0x02,r5),r0 
	mov r0,r2
	lds r2,fpul 
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	mov.w @(0x06,r13),r0 
	float fpul,fr3
	mov r0,r2
	lds r2,fpul 
	mov 0x38,r0
	fsub fr3,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x24,r0
	mov.b @(r0,r4),r2
	mov.b r2,@(r0,r14) 
	mov.w @(loc_8C0A43B8,pc),r0
	mov.b r1,@(r0,r14) 
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a43a6:
	#data 0x01F6
loc_8c0a43a8:
	#data 0x01D2
loc_8c0a43aa:
	#data 0x02A4
loc_8c0a43ac:
	#data 0x01A1
loc_8C0A43AE:
	#data 0x00F8
loc_8C0A43B0:
	#data 0x0154
loc_8C0A43B2:
	#data 0x016C
loc_8C0A43B4:
	#data 0x01C0
loc_8C0A43B6:
	#data 0x0088
loc_8C0A43B8:
	#data 0x012C
	#align4

loc_8c0a43bc:
	#data bank15.loc_8C15689E
loc_8c0a43c0:
	#data bank02.loc_8C02FEC4
loc_8c0a43c4:
	#data bank03.loc_8c034cd6
loc_8c0a43c8:
	#data bank15.loc_8c1569a8
loc_8C0A43CC:
	#data 0x3FD55555
loc_8c0a43d0:
	#data bank15.loc_8c1568a6
loc_8C0A43D4:
	#data 0x40092492

;==============================================
loc_8c0a43d8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r4,r8
	mov.w @(0x70,PC),r0
	mov.l @(0x18,r8),r11
	mov 0x03,r4
	mov r5,r9
	mov r8,r10
	mov.b r4,@(r0,r11)
	add 0x05,r0
	mov.b r4,@(r0,r11)
	mov.w @(0x62,PC),r0
	mov.b @(r0,r11),r3
	cmp/pz r3
	bf.s loc_8c0a4428
	mov r9,r12
	mov.b @(r0,r11),r14
	mov 0x0E,r3
	mov.l @(0x58,PC),r2
	mov r9,r5
	muls.w r3,r14
	sts macl,r14
	add r2,r14
	mov r14,r6
	mov.l r14,@(0x24,r9)
	bsr loc_8c0a52c0
	mov r8,r4
	mov.b @r14,r2
	cmp/pz r2
	bf loc_8c0a4428
	mov.l @(0x44,PC),r2
	jsr @r2
	nop

loc_8c0a4428:
	mov r9,r13
	mov r8,r14
	bra loc_8c0a45d4
	mov 0x00,r9

loc_8c0a4430:
	mov.b @(0xC,r13),r0
	mov r0,r6
	mov 0x22,r0
	mov.b @(r0,r14),r4
	mov.b @(0xD,r12),r0
	mov r4,r5
	sub r6,r4
	extu.b r4,r3
	tst r3,r3
	bt.s loc_8c0a4478
	mov r0,r7
	exts.b r4,r2
	cmp/pz r2
	extu.b r4,r3
	bt.s loc_8c0a446c
	mov.l r3,@r15
	mov.l @r15,r3
	neg r7,r4
	extu.b r4,r4
	cmp/gt r3,r4
	bf loc_8c0a4478
	mov.b @(0xD,r12),r0
	bra loc_8c0a4476
	add r0,r5

;##############################################
loc_8c0a4460:
	#data 0x01ED
loc_8c0a4462:
	#data 0x0141
	#align4

loc_8c0a4464:
	#data bank15.loc_8c156b40

loc_8c0a4468:
	#data bank02.loc_8c02fd62

;=============================================
loc_8c0a446c:
	mov.l @r15,r3
	extu.b r7,r2
	cmp/ge r3,r2
	bt loc_8c0a4478
	sub r7,r5

loc_8c0a4476:
	mov r5,r6

loc_8c0a4478:
	mov 0x22,r0
	mov.w @(0xE2,PC),r5
	mov.b r6,@(r0,r14)
	mov 0x08,r4
	mov.b @(r0,r14),r1
	extu.b r1,r1
	add 0x04,r1
	and r5,r1
	mov r4,r0
	nop
	mov.l @(0xD8,PC),r3
	jsr @r3
	nop
	mov.l @(0xD8,PC),r3
	mov 0x1B,r5
	mov 0x01,r6
	mov.b r0,@r15
	extu.b r0,r7
	jsr @r3
	mov r14,r4
	mov.w @(0xBE,PC),r0
	mov.l @(0xCC,PC),r2
	mov.l @(0xCC,PC),r5
	mov.l r2,@(r0,r14)
	mov.l @(r0,r14),r3
	mov.w @(0xB8,PC),r1
	mov.w @(0x12,r3),r0
	mov.w @(0xB2,PC),r3
	add r14,r1
	extu.w r0,r0
	add r14,r3
	mov.l @r3,r3
	shll2 r0
	shll2 r0
	add r3,r0
	mov.l r0,@r1
	mova @(0xB4,PC),r0
	mov.b @r15,r4
	fmov @r0,fr4
	mova @(0xB4,PC),r0
	extu.b r4,r4
	shll2 r4
	shll r4
	add r5,r4
	mov.w @r4,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	ftrc fr3,fpul
	sts fpul,r3
	mov.w r3,@r13
	fmov @r0,fr5
	mov.w @(0x2,r4),r0
	tst r9,r9
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x2,r13)
	mov.w @(0x4,r4),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x4,r13)
	mov.w @(0x6,r4),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	ftrc fr3,fpul
	sts fpul,r0
	bf.s loc_8c0a4580
	mov.w r0,@(0x6,r13)
	mov 0x10,r0
	mov r15,r4
	fmov @(r0,r13),fr3
	add 0x08,r4
	mov 0x14,r0
	fmov fr3,@r4
	fmov @(r0,r13),fr3
	mov 0x04,r0
	fmov fr3,@(r0,r4)
	mov 0x35,r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bt loc_8c0a454c
	mov.w @(0x4,r13),r0
	fmov @r4,fr2
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fsub fr3,fr2
	fmov fr2,@r4
	mov.w @(0x6,r13),r0
	mov r0,r3
	lds r3,fpul
	mov 0x04,r0
	fmov @(r0,r4),fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)

loc_8c0a454c:
	fmov @r4,fr3
	mov 0x2C,r0
	fmov fr3,@(r0,r13)
	mov 0x34,r0
	fmov fr3,@(r0,r14)
	mov 0x04,r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	bra loc_8c0a45c2
	fmov fr3,@(r0,r14)

;##############################################
loc_8c0a4560:
	#data 0x00F8
loc_8c0a4562:
	#data 0x0154
loc_8c0a4564:
	#data 0x016C
loc_8c0a4566:
	#data 0x01C0
	#align4

loc_8c0a4568:
	#data bank12.loc_8c129128
loc_8c0a456c:
	#data bank03.loc_8c034cd6
loc_8c0a4570:
	#data bank15.loc_8c1569a8
loc_8c0a4574:
	#data bank15.loc_8c1568a6
loc_8c0a4578:
	#data work.CpsXScale
loc_8c0a457c:
	#data work.CpsYScale

;----------------------------------------------
loc_8c0a4580:
	mov.w @(0x104,PC),r5
	mov 0x34,r0
	mov.l @(0x8,r14),r4
	add r4,r5
	fmov @(r0,r4),fr2
	mov.w @r5,r3
	mov.w @(0x4,r13),r0
	lds r3,fpul
	mov r0,r3
	mov 0x2C,r0
	float fpul,fr3
	lds r3,fpul
	fadd fr3,fr2
	float fpul,fr3
	fmov fr2,fr4
	fsub fr3,fr4
	fmov fr4,@(r0,r13)
	mov 0x34,r0
	fmov fr4,@(r0,r14)
	mov.w @(0x2,r5),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r4),fr2
	mov.w @(0x6,r13),r0
	float fpul,fr3
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fsub fr3,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8c0a45c2:
	mov.w @(0xC4,PC),r0
	mov 0x01,r3
	add 0x01,r9
	mov.b r3,@(r0,r14)
	mov.l r14,@r15
	mov.l r13,@(0x4,r15)
	mov.w @(0xB6,PC),r13
	mov.l @(0xC,r14),r14
	add r14,r13

loc_8c0a45d4:
	mov.b @(0xF,r12),r0
	cmp/gt r0,r9
	bt loc_8c0a45de
	bra loc_8c0a4430
	nop

loc_8c0a45de:
	mov.l @(0x28,r12),r6
	mov r11,r7
	mov.l @(0x4,r15),r5
	mov.l @r15,r14
	bsr loc_8c0a4fe2
	mov r14,r4
	mov.l @(0x4,r15),r2
	mov 0x2C,r0
	fmov @(r0,r2),fr3
	mov 0x34,r0
	fmov @(r0,r14),fr4
	fsub fr3,fr4
	fldi0 fr3
	fcmp/eq fr3,fr4
	bt loc_8c0a461e
	fmov @(r0,r11),fr3
	mov r10,r4
	fadd fr4,fr3
	fmov fr3,@(r0,r11)
	bra loc_8c0a4616
	mov 0x00,r5

loc_8c0a4608:
	mov 0x34,r0
	fmov @(r0,r4),fr3
	add 0x01,r5
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov.l r4,@r15
	mov.l @(0xC,r4),r4

loc_8c0a4616:
	mov.b @(0xF,r12),r0
	cmp/ge r0,r5
	bf loc_8c0a4608
	mov.l @r15,r14

loc_8c0a461e:
	mov.w @(0xA,r12),r0
	tst r0,r0
	bt loc_8c0a4700
	mov.w @(0x64,PC),r5
	add r11,r5
	bsr loc_8c0a53f0
	mov r11,r4
	mov 0x22,r0
	mov.b @(r0,r10),r3
	mov.b @(r0,r14),r2
	cmp/eq r3,r2
	bt loc_8c0a4670
	mov.l @(0x28,r12),r3
	tst r3,r3
	bt loc_8c0a4700
	mov.w @(0x4E,PC),r0
	mov.l @(0x28,r12),r3
	fmov @(r0,r11),fr3
	mov 0x38,r0
	fmov @(r0,r3),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0a4700
	mov.l @(0x4C,PC),r3
	mov.w @(0x40,PC),r0
	jsr @r3
	mov.l @(r0,r11),r4
	mov.w @(0x36,PC),r6
	mov r11,r5
	add r11,r6
	bsr loc_8c0a5448
	mov r10,r4
	mov.b @(0x5,r10),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0a4670
	mov.l @(0x34,PC),r2
	mov 0x07,r5
	jsr @r2
	mov r11,r4
	bra loc_8c0a4700
	nop

loc_8c0a4670:
	mov.w @(0x1C,PC),r0
	mov.l @(r0,r11),r4
	add 0xEC,r0
	mov.l r11,@(r0,r4)
	mov.w @(0x16,PC),r0
	mov.b @(r0,r11),r3
	tst r3,r3
	bf loc_8c0a46a0
	mov.w @(0x10,PC),r0
	mov 0x01,r3
	bra loc_8c0a46a6
	mov.b r3,@(r0,r4)

;###############################################
loc_8c0a4688:
	#data 0x0088
loc_8c0a468a:
	#data 0x012C
loc_8c0a468c:
	#data 0x02A4
loc_8c0a468e:
	#data 0x041C
loc_8c0a4690:
	#data 0x01C8
loc_8c0a4692:
	#data 0x0411
loc_8c0a4694:
	#data 0x01F6
	#align4

loc_8c0a4698:
	#data bank04.loc_8c0423ac

loc_8c0a469c:
	#data bank04.loc_8c042008


;----------------------------------------------
loc_8c0a46a0:
	mov.w @(0x11A,PC),r0
	mov 0x10,r1
	mov.b r1,@(r0,r4)

loc_8c0a46a6:
	mov.w @(0x116,PC),r0
	mov 0x0D,r5
	mov 0x06,r6
	mov.b @(r0,r11),r3
	mov.b r3,@(r0,r4)
	mov 0x00,r3
	mov.w @(0x10C,PC),r0
	mov.w @(r0,r11),r2
	mov.l @(0x118,PC),r0
	extu.w r2,r2
	cmp/gt r2,r3
	addc r3,r2
	mov.l @(0x114,PC),r3
	shar r2
	mov.b @(r0,r2),r1
	mov.w @(0xFC,PC),r0
	mov.b r1,@(r0,r4)
	jsr @r3
	mov r11,r4
	mov 0x02,r4
	mov r4,r0
	nop
	mov.b r0,@(0x5,r10)
	mov r12,r3
	mov.b @(0xF,r12),r0
	add 0x08,r3
	mov.b r0,@(0x1,r3)
	mov 0x00,r0
	mov.b r0,@(0x8,r12)
	mov 0x22,r0
	mov.b @(r0,r8),r0
	mov 0x00,r3
	extu.b r0,r0
	mov.w r0,@(0xA,r12)
	mov 0x33,r0
	mov.b r3,@(r0,r12)
	mov.l @(0x28,r12),r2
	tst r2,r2
	bt loc_8c0a4700
	mov.l @(0x28,r12),r2
	mov r4,r0
	nop
	mov 0x00,r3
	mov.b r0,@(0x4,r2)
	mov.l r3,@(0x28,r12)

loc_8c0a4700:
	add 0x10,r15
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
loc_8c0a4714:
	mova @(0xC0,PC),r0
	mov.l @(0x18,r4),r6
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r6),fr4
	mov.w @(0xA4,PC),r0
	fadd fr3,fr4
	mov.l @(r0,r6),r3
	mov 0x38,r0
	fmov @(r0,r3),fr2
	fcmp/gt fr4,fr2
	bf loc_8c0a4736
	mov.w @(0x96,PC),r0
	mov.l @(r0,r6),r2
	mov 0x38,r0
	fmov @(r0,r6),fr2
	fmov fr2,@(r0,r2)

loc_8C0A4736:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xE8,r15
	mov r5,r11
	mov.b @(0x0F,r11),r0
	mov r4,r10
	cmp/eq 0x0E,r0
	bt/s loc_8C0A4766
	mov.l @(0x18,r10),r14
	mov.b @(0x0F,r11),r0
	mov 0x0E,r3 ; r3 set to 0x0e
	cmp/ge r3,r0
	bt loc_8C0A4762
	mov.b @(0x0F,r11),r0
	bra loc_8C0A4764
	add 0x01,r0

loc_8c0a4762:
	add 0xFF,r0

loc_8c0a4764:
	mov.b r0,@(0x0F,r11) 

loc_8C0A4766:
	mov.w @(loc_8C0A47C8,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	cmp/pz r3
	bt/s loc_8C0A477a
	mov 0x00,r9 ; r9 set to 0x00
	mov.l @(loc_8C0A47DC,pc),r2 ; r2 set to 0x8C02FD62
	jsr @r2
	nop
	bra loc_8C0A48C6
	nop

loc_8C0A477A:
	mov.b @(r0,r14),r13
	mov 0x0E,r3 ; r3 set to 0x0e
	mov.l @(loc_8C0A47E0,pc),r2 ; r2 set to 0x8C156B40
	muls.w r3,r13
	sts macl,r13
	add r2,r13
	mov.l r13,@(0x24,r11)
	mov.b @r13,r3 ; r3 ??? bc r13 is ???	
	cmp/pz r3
	bt loc_8C0A4798
	mov.l @(loc_8C0A47DC,pc),r3 ; r3 set to 0x8C02FD62
	jsr @r3
	nop
	bra loc_8C0A48C8
	nop

loc_8C0A4798:
	mov r11,r5
	mov r13,r6
	bsr loc_8C0A5144
	mov r10,r4
	mov.w @(loc_8C0A47CA,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r10,r13
	mov r11,r12
	mov.b r2,@(r0,r10)
	mov r11,r8
	mov.w @(loc_8C0A47C6,pc),r0 ; r0 set to 0x1C8
	mov.l r10,@(0x04,r15)
	mov.w @(loc_8C0A47CC,pc),r10 ; r10 set to 0x80
	mov.l @(r0,r14),r3
	mov r10,r11 ; r11 set to 0x80
	add 0x74,r11 ; r11 set to 0xF4
	mov.l r3,@(0x08,r15)
	bra loc_8C0A487e
	mov.l r9,@r15

;##############################################
loc_8c0a47be:
	#data 0x01F6
loc_8c0a47c0:
	#data 0x01D2
loc_8c0a47c2:
	#data 0x02A4
loc_8c0a47c4:
	#data 0x01A1
loc_8C0A47C6:
	#data 0x01C8
loc_8C0A47C8:
	#data 0x0141
loc_8C0A47CA:
	#data 0x012c
loc_8C0A47CC:
	#data 0x0080
	#align4

loc_8C0A47D0:
	#data bank15.loc_8c15689e
loc_8C0A47D4:
	#data bank02.loc_8c02FEC4
loc_8C0A47D8:
	#data 0x3F0B4924
loc_8C0A47DC:
	#data bank02.loc_8c02FD62
loc_8C0A47E0:
	#data bank15.loc_8c156b40

;----------------------------------------------
loc_8C0A47E4:
	mov r13,r2
	mov.l @(loc_8C0A48F0,pc),r3 ; r3 set to 0x8C1294C8
	mov r15,r1
	add 0x34,r2
	add 0x0C,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @r12,r3 ; r3 ??? bc r12 is ???	
	mov 0x0C,r0 ; r0 set to 0x0c
	fmov.s @(r0,r15),fr2
	mov 0x0C,r0 ; r0 set to 0x0c
	lds r3,fpul
	mov r15,r4
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r15)
	mov.w @(0x02,r12),r0
	mov r0,r3 ; r3 set to 0x0c
	lds r3,fpul
	mov 0x10,r0 ; r0 set to 0x10
	mov.l @(loc_8C0A48F4,pc),r3 ; r3 set to 0x8C03362c
	fmov.s @(r0,r15),fr2
	mov 0x10,r0 ; r0 set to 0x10
	float fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r15)
	mov.l @(0x08,r15),r5
	add 0x34,r5
	jsr @r3
	add 0x0C,r4
	mov r0,r6 ; r6 set to 0x10
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r13),r5
	mov r5,r4
	sub r6,r4
	extu.b r4,r3 ; r3 ??? bc r4 is ???	
	tst r3,r3
	bt loc_8C0A484e
	mov.w @(loc_8C0A48E8,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bf/s loc_8C0A4846
	extu.b r4,r7
	mov 0x0C,r3 ; r3 set to 0x0c
	cmp/gt r3,r7
	bf loc_8C0A484e
	mov r5,r6 ; r6 ??? bc r5 is ???	
	bra loc_8C0A484e
	add r11,r6

loc_8c0a4846:
	cmp/ge r11,r7
	bt loc_8c0a484e
	mov r5,r6
	add 0x0C,r6

loc_8c0a484e:
	mov.l @(0x04,r15),r5
	mov 0x22,r0
	mov.b @(r0,r5),r5
	mov.w @(loc_8c0a48e8,pc),r0
	add r10,r5
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0a4862
	mov r5,r4
	add r10,r4

loc_8c0a4862:
	sub r6,r4
	exts.b r4,r4
	cmp/pz r4
	bf/s loc_8c0a486e
	mov.l @(0x0C,r13),r13
	mov r5,r6

loc_8c0a486e:
	mov.w @(loc_8C0A48EA,pc),r12
	add r13,r12
	mov r12,r5
	bsr loc_8c0a42b2
	mov r13,r4
	mov.l @r15,r3
	add 0x01,r3
	mov.l r3,@r15

loc_8C0A487E:
	mov.l @r15,r3
	mov.b @(0x0F,r8),r0
	cmp/ge r0,r3
	bf loc_8C0A47E4
	mov.l @(0x28,r8),r6
	mov r12,r5
	mov r14,r7
	bsr loc_8C0A4FE2
	mov r13,r4
	mov 0x2C,r0 ; r0 set to 0x2c
	fmov.s @(r0,r12),fr3
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr4
	fsub fr3,fr4
	fldi0 fr3
	fcmp/eq fr3,fr4
	bf loc_8C0A48A4
	bra loc_8C0A4A62
	nop

loc_8C0A48A4:
	fmov.s @(r0,r14),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	mov.l @(0x04,r15),r4
	bra loc_8C0A48Bc
	mov r9,r5

loc_8C0A48B0:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr3
	add 0x01,r5
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov.l @(0x0C,r4),r4

loc_8C0A48BC:
	mov.b @(0x0F,r8),r0
	cmp/ge r0,r5
	bf loc_8C0A48B0
	bra loc_8C0A4A62
	nop

loc_8c0a48c6:
	mov.l @(0x24,r11),r13

loc_8C0A48C8:
	mov.w @(loc_8C0A48EC,pc),r0 ; r0 set to 0x141
	mov 0xFF,r2 ; r2 set to 0xFFFFFFFf
	mov r11,r5
	mov r13,r6
	mov.b r2,@(r0,r14)
	bsr loc_8C0A5144
	mov r10,r4
	mov.w @(loc_8C0A48EE,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov r11,r12
	mov r10,r8
	mov.b r2,@(r0,r10)
	mov r10,r13
	mov.l r11,@r15
	bra loc_8C0A493c
	mov.l r9,@(0x04,r15)

;##############################################
loc_8C0A48E8:
	#data 0x0130
loc_8c0a48ea:
	#data 0x0088
loc_8C0A48EC:
	#data 0x0141
loc_8C0A48EE:
	#data 0x012c
	#align4

loc_8C0A48F0:
	#data bank12.loc_8c1294C8
loc_8C0A48F4:
	#data bank03.loc_8c03362c

;----------------------------------------------
loc_8C0A48F8:
	mov.l @(0x0C,r13),r13
	mov 0x22,r0 ; r0 set to 0x22
	mov.w @(loc_8C0A49F8,pc),r2 ; r2 set to 0x88
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.l r2,@r15
	mov.b @(r0,r8),r6
	mov.b @(r0,r13),r11
	mov.w @(loc_8C0A49FA,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8C0A4920
	mov r11,r3
	sub r6,r3
	mov 0x11,r2 ; r2 set to 0x11
	extu.b r3,r3
	cmp/gt r2,r3
	bf loc_8C0A4930
	mov.w @(loc_8C0A49FC,pc),r6 ; r6 set to 0xEf
	bra loc_8C0A4930
	add r11,r6

loc_8c0a4920:
	mov r6,r4
	sub r11,r4
	mov 0x11,r3
	extu.b r4,r4
	cmp/gt r3,r4
	bf loc_8c0a4930
	mov r11,r6
	add 0x11,r6

loc_8C0A4930:
	mov.l @r15,r5
	bsr loc_8C0A42B2
	mov r13,r4
	mov.l @(0x04,r15),r2
	add 0x01,r2
	mov.l r2,@(0x04,r15)

loc_8C0A493C:
	mov.l @(0x04,r15),r3
	mov.b @(0x0F,r12),r0
	cmp/ge r0,r3
	bf loc_8C0A48F8
	mov.l @r15,r5
	mov r14,r7
	mov.l @(0x28,r12),r6
	bsr loc_8C0A4FE2
	mov r13,r4
	mov.l @r15,r2
	mov 0x2C,r0 ; r0 set to 0x2C, r0 set to 0x2c
	fmov.s @(r0,r2),fr3
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r13),fr4
	fsub fr3,fr4
	fldi0 fr3
	fcmp/eq fr3,fr4
	bt loc_8C0A497e
	fmov.s @(r0,r14),fr3
	mov r8,r13
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)
	bra loc_8C0A4978
	mov r9,r4

loc_8C0A496C:
	mov 0x34,r0
	fmov @(r0,r13),fr3
	add 0x01,r4
	fadd fr4,fr3
	fmov fr3,@(r0,r13)
	mov.l @(0xC,r13),r13

loc_8c0a4978:
	mov.b @(0x0F,r12),r0 
	cmp/ge r0,r4
	bf loc_8c0a496c

loc_8C0A497E:
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r8),r3
	mov.b @(r0,r13),r2
	cmp/eq r3,r2
	bt loc_8C0A49B0
	mov.l @(0x28,r12),r3
	tst r3,r3
	bt loc_8C0A4A62
	mov.w @(loc_8C0A49FE,pc),r0 ; r0 set to 0x41c
	mov.l @(0x28,r12),r3
	fmov.s @(r0,r14),fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r3),fr2
	fcmp/gt fr3,fr2
	bt loc_8C0A4A62
	mov.b @(0x05,r8),r0
	extu.b r0,r0 ; r0 set to 0x38
	cmp/eq 0x03,r0
	bf loc_8C0A49B0
	mov.l @(loc_8C0A4A08,pc),r2 ; r2 set to 0x8C042008
	mov 0x07,r5 ; r5 set to 0x07
	jsr @r2
	mov r14,r4
	bra loc_8C0A4A62
	nop

loc_8C0A49B0:
	mov.w @(loc_8C0A4A00,pc),r0 ; r0 set to 0x1C8
	mov r15,r1
	mov.l @(loc_8C0A4A0C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x0C,r1
	mov.l @(r0,r14),r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.w @(loc_8C0A4A00,pc),r0 ; r0 set to 0x1C8
	mov r15,r5
	mov.w @(loc_8C0A4A02,pc),r7 ; r7 set to 0x179
	add 0x0C,r5
	mov.l @(r0,r14),r1
	mov 0x01,r6 ; r6 set to 0x01
	mov.w @(loc_8C0A49FE,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r1),fr3 ; r3 ??? bc r1 is ???	
	mov 0x10,r0 ; r0 set to 0x10
	fmov.s fr3,@(r0,r15)
	mov r7,r0 ; r0 set to 0x179
	nop
	mov.l @(loc_8C0A4A10,pc),r3 ; r3 set to 0x8C10235c
	add 0x4F,r0 ; r0 set to 0x1C8
	jsr @r3
	mov.l @(r0,r14),r4
	mov.w @(loc_8C0A4A00,pc),r0 ; r0 set to 0x1C8
	mov.l @(r0,r14),r4
	add 0xEC,r0 ; r0 set to 0x1B4
	mov.l r14,@(r0,r4)
	mov.w @(loc_8C0A4A04,pc),r0 ; r0 set to 0x411
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bf loc_8C0A4A14
	mov.w @(loc_8C0A4A06,pc),r0 ; r0 set to 0x1F6
	mov 0x01,r3 ; r3 set to 0x01
	bra loc_8C0A4A1a
	mov.b r3,@(r0,r4)

;##############################################
loc_8C0A49F8:
	#data 0x0088
loc_8C0A49FA:
	#data 0x0130
loc_8C0A49FC:
	#data 0x00Ef
loc_8C0A49FE:
	#data 0x041c
loc_8C0A4A00:
	#data 0x01C8
loc_8C0A4A02:
	#data 0x0179
loc_8C0A4A04:
	#data 0x0411
loc_8C0A4A06:
	#data 0x01F6
	#align4

loc_8C0A4A08:
	#data bank04.loc_8c042008
loc_8C0A4A0C:
	#data bank12.loc_8c1294C8
loc_8C0A4A10:
	#data bank10.loc_8c10235c

;----------------------------------------------
loc_8c0a4a14:
	mov.w @(loc_8C0A4B22,pc),r0
	mov 0x10,r1
	mov.b r1,@(r0,r4) 

loc_8c0a4a1a:
	mov.w @(loc_8C0A4B24,pc),r0
	mov 0x2A,r2
	mov 0x0D,r5
	mov.b @(r0,r14),r3
	mov 0x06,r6
	mov.b r3,@(r0,r4) 
	add 0xCF,r0
	mov.l @(loc_8c0a4b2c,pc),r3
	mov.b r2,@(r0,r4) 
	jsr @r3
	mov r14,r4
	mov 0x02,r4
	mov r4,r0
	nop 
	mov.b r0,@(0x05,r8) 
	mov r12,r3
	mov.b @(0x0F,r12),r0 
	add 0x08,r3
	mov.b r0,@(0x01,r3) 
	mov r9,r0
	nop 
	mov.b r0,@(0x08,r12) 
	mov 0x22,r0
	mov.b @(r0,r10),r0
	extu.b r0,r0
	mov.w r0,@(0x0A,r12) 
	mov 0x33,r0
	mov.b r9,@(r0,r12) 
	mov.l @(0x28,r12),r3
	tst r3,r3
	bt loc_8c0a4a62
	mov.l @(0x28,r12),r3
	mov r4,r0
	nop 
	mov.b r0,@(0x04,r3) 
	mov.l r9,@(0x28,r12) 

loc_8C0A4A62:
	add 0x18,r15
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
loc_8C0A4A76:
	mov 0x01,r2

loc_8C0A4A78:
	mov.w @(0xAA,PC),r7
	mov r4,r6
	mov.l @(0x8,r4),r4
	mov 0x34,r0
	add r6,r7
	mov.w @(0xA0,PC),r1
	mov.w @r7,r3
	fmov @(r0,r6),fr2
	add r4,r1
	lds r3,fpul
	mov.w @(0x4,r1),r0
	float fpul,fr3
	mov r0,r3
	lds r3,fpul
	mov 0x34,r0
	fadd fr3,fr2
	float fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x2,r7),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r6),fr2
	mov.w @(0x6,r1),r0
	float fpul,fr3
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fsub fr3,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	cmp/eq r4,r5
	mov.w @(0x68,PC),r0
	bf.s loc_8c0a4a78
	mov.b r2,@(r0,r4)
	rts
	nop

;----------------------------------------------
loc_8C0A4AC6:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov r4,r12
	mov.l r11,@-r15
	mov.w @(0x54,PC),r0
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r12),r11
	mov.l @(r0,r11),r4
	add 0x72,r0
	mov.b @(r0,r4),r3
	add 0x02,r3
	mov.b r3,@(r0,r4)
	mov 0x05,r0
	mov.b r0,@(0x5,r12)
	mov 0x00,r0
	mov.w r0,@(0x8,r14)
	mov 0x3C,r0
	mov.l @(0x3C,PC),r3
	mov.w r0,@(0x1C,r12)
	jsr @r3
	mov 0x18,r5
	mov.l @(0x38,PC),r2
	mov 0x06,r5
	jsr @r2
	mov r11,r4
	mov.b @(0x6,r11),r0
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf.s loc_8c0a4b14
	mov 0x02,r8
	mov 0x30,r0
	mov 0x01,r2
	bra loc_8c0a4b18 ; loc_8c0a3d40+0xdd8
	mov.w r2,@(r0,r14)

loc_8C0A4B14:
	mov 0x30,r0
	mov.w r8,@(r0,r14)

loc_8C0A4B18:
	mov 0x00,r9
	mov r14,r4
	mov r12,r13
	bra loc_8c0a4b7a
	mov r9,r10

;##############################################
loc_8c0a4b22:
	#data 0x01F6
loc_8c0a4b24:
	#data 0x01D2
loc_8c0a4b26:
	#data 0x0088
loc_8c0a4b28:
	#data 0x012c
loc_8c0a4b2a:
	#data 0x01C8
	#align4

loc_8C0A4B2C:
	#data bank02.loc_8c02FEC4
loc_8C0A4B30:
	#data bank05.loc_8c050552
loc_8C0A4B34:
	#data bank05.loc_8c05064e

;----------------------------------------------
loc_8C0A4B38:
	mov r9,r0
	nop
	exts.w r9,r3
	tst r3,r3
	bt.s loc_8c0a4b70
	mov.w r0,@(0xA,r4)
	exts.w r9,r0
	tst 0x01,r0
	bf loc_8c0a4b70
	mov.l @(0xD8,PC),r2
	mov r14,r6
	mov r12,r5
	add 0x08,r6
	jsr @r2
	mov r13,r4
	tst r0,r0
	bt.s loc_8c0a4b70
	mov r0,r4
	mov r8,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov.b @(0xF,r14),r0
	sub r10,r0
	mov.w r0,@(0x1E,r4)
	mov 0x30,r0
	mov.b @(r0,r14),r3
	mov 0x21,r0
	mov.b r3,@(r0,r4)

loc_8C0A4B70:
	mov.w @(0xA6,PC),r4
	add 0x01,r10
	mov.l @(0xC,r13),r13
	add 0xFF,r9
	add r13,r4

loc_8C0A4B7A:
	mov.b @(0xF,r14),r0
	cmp/gt r0,r10
	bf loc_8c0a4b38
	mov.l @(0xA4,PC),r2
	mov 0x00,r6
	mov r6,r5
	jsr @r2
	mov r11,r4
	mov.l @(0x9C,PC),r3
	mov 0x00,r5
	mov 0x01,r6
	jsr @r3
	mov r11,r4
	mov.l @(0x94,PC),r2
	mov 0x00,r6
	mov.l @(0x28,r14),r5
	jsr @r2
	mov r11,r4
	lds.l @r15+,pr
	mov r12,r4
	mov r14,r5
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A4BB2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r13
	mov.w @(loc_8C0A4C1C,pc),r0 ; r0 set to 0x1Ed
	mov.l @(0x18,r13),r12
	mov 0x03,r4 ; r4 set to 0x03
	mov.b r4,@(r0,r12)
	add 0x05,r0 ; r0 set to 0x1F2
	mov.b r4,@(r0,r12)
	mov.b @(0x06,r12),r0
	extu.b r0,r0 ; r0 set to 0xF2
	cmp/eq 0x06,r0
	bf/s loc_8C0A4BF4
	mov r5,r14
	mov r13,r4 ; r4 ??? bc r13 is ???	
	mov r14,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0A3F1e
	mov.l @r15+,r14

loc_8C0A4BF4:
	mov.w @(loc_8C0A4C1E,pc),r3 ; r3 set to 0x360
	mov 0x02,r11 ; r11 set to 0x02
	mov r3,r0 ; r0 set to 0x360
	nop
	add 0xEE,r0 ; r0 set to 0x34e
	mov.w @(r0,r12),r4
	and r3,r4
	extu.w r4,r2
	tst r2,r2
	bt/s loc_8C0A4C38
	mov 0x01,r9 ; r9 set to 0x01
	mov.w @(loc_8C0A4C20,pc),r1 ; r1 set to 0x300
	extu.w r4,r4
	tst r1,r4
	bt loc_8C0A4C30
	mov 0x30,r0 ; r0 set to 0x30
	mov.w r9,@(r0,r14)
	bra loc_8C0A4C36
	mov 0x09,r0

;##############################################
loc_8C0A4C1a:
	#data 0x0088
loc_8C0A4C1C:
	#data 0x01Ed
loc_8C0A4C1E:
	#data 0x0360
loc_8C0A4C20:
	#data 0x0300
	#align4

loc_8C0A4C24:
	#data loc_8c0a5598
loc_8C0A4C28:
	#data bank0e.loc_8c0e7D30
loc_8C0A4C2C:
	#data bank0e.loc_8c0eE7C4

;----------------------------------------------
loc_8c0a4c30:
	mov 0x30,r0
	mov.w r11,@(r0,r14)
	mov 0x0A,r0

loc_8c0a4c36:
	mov.b r0,@(0x06,r12)

loc_8c0a4c38:
	mov.w @(0x1C,r13),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r13)
	exts.w r0,r0
	cmp/pl r0
	bf loc_8c0a4c6a
	mov.w @(0x1C,r13),r0 
	tst 0x07,r0 
	bf loc_8c0a4c5a
	mov.l @(loc_8c0a4d04,pc),r2
	mov 0x1E,r5
	jsr @r2
	mov r12,r4
	mov r14,r5
	mov r12,r6
	bsr loc_8c0a4dee
	mov r13,r4

loc_8c0a4c5a:
	mov.l @(loc_8c0a4d08,pc),r3
	mov.w @(loc_8C0A4D02,pc),r0
	jsr @r3
	mov.l @(r0,r12),r4
	tst r0,r0
	bt loc_8c0a4c6a
	mov 0xFF,r0
	mov.w r0,@(0x1C,r13) 

loc_8c0a4c6a:
	mov.w @(0x1C,r13),r0 
	cmp/pz r0
	bt loc_8c0a4c9a
	mov r11,r0
	nop 
	mov.b r0,@(0x06,r12) 
	mov 0x07,r2
	mov.w @(loc_8C0A4D02,pc),r0
	mov r13,r4
	mov r14,r5
	mov.l @(r0,r12),r3
	add 0x2E,r0
	mov.b r2,@(r0,r3) 
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @(loc_8c0a4d0c,pc),r3
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0a4c9a:
	mov.l @(loc_8c0a4d10,pc),r2
	jsr @r2
	mov r12,r4
	tst r0,r0
	bt loc_8c0a4cac
	mov r14,r5
	mov r12,r6
	bsr loc_8c0a4dee
	mov r13,r4

loc_8c0a4cac:
	mov.w @(0x08,r14),r0 
	add 0xFF,r0
	mov.w r0,@(0x08,r14) 
	exts.w r0,r0
	cmp/pl r0
	bt loc_8c0a4d62
	mov r11,r0
	nop 
	mov.w r0,@(0x08,r14) 
	mov.w @(0x0A,r14),r0 
	tst r9,r0
	bf loc_8c0a4cee
	mov.l @(loc_8c0a4d14,pc),r2
	mov r14,r6
	mov r13,r5
	add 0x08,r6
	jsr @r2
	mov r13,r4
	tst r0,r0
	bt/s loc_8c0a4cee
	mov r0,r4
	mov 0x30,r0
	mov.b @(r0,r14),r2
	mov 0x21,r0
	mov 0x00,r3
	mov.b r2,@(r0,r4) 
	mov.w @(0x0A,r14),r0 
	cmp/gt r0,r3
	addc r3,r0
	shar r0
	mov.w r0,@(0x1C,r4) 
	mov.b @(0x0F,r14),r0 
	mov.w r0,@(0x1E,r4) 

loc_8c0a4cee:
	mov r14,r10
	mov r13,r11
	bra loc_8c0a4d5c
	mov 0x00,r8

loc_8c0a4cf6:
	mov.w @(0x0A,r10),r0 
	cmp/pz r0
	bt loc_8c0a4d18
	mov.w @(0x0A,r10),r0 
	bra loc_8c0a4d52
	add 0x01,r0

;##############################################
loc_8C0A4D02:
	#data 0x01C8
	#align4

loc_8c0a4d04:
	#data bank04.loc_8c042008
loc_8c0a4d08:
	#data bank05.loc_8c050610
loc_8c0a4d0c:
	#data loc_8c0a3ab8
loc_8c0a4d10:
	#data bank05.loc_8c050682
loc_8c0a4d14:
	#data loc_8c0a5598

;----------------------------------------------
loc_8c0a4d18:
	mov.l @(loc_8c0a4e34,pc),r1
	mov.b @(r0,r1),r3
	mov.l @(loc_8c0a4e38,pc),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov.w @(loc_8C0A4E28,pc),r0
	mov.b r2,@(r0,r11) 
	mov 0x22,r0
	mov.b @(r0,r11),r0
	extu.b r0,r0
	add 0x04,r0
	and 0xF8,r0 
	cmp/pz r0
	bt loc_8c0a4d36
	add 0x07,r0

loc_8c0a4d36:
	shar r0
	mov.l @(loc_8c0a4e3c,pc),r3
	shar r0
	shar r0
	extu.b r0,r7
	mov.b r0,@r15
	mov.w @(loc_8C0A4E28,pc),r0
	mov 0x1B,r5
	mov.b @(r0,r11),r6
	jsr @r3
	mov r11,r4
	mov.w @(0x0A,r10),r0 
	add 0x01,r0
	and 0x1F,r0 

loc_8c0a4d52:
	mov.w r0,@(0x0A,r10)
	add 0x01,r8
	mov.w @(loc_8C0A4E2A,pc),r10
	mov.l @(0x0C,r11),r11
	add r11,r10

loc_8c0a4d5c:
	mov.b @(0x0F,r14),r0
	cmp/gt r0,r8
	bf loc_8c0a4cf6

loc_8c0a4d62:
	mov 0x10,r0
	fmov.s @(r0,r14),fr3
	mov 0x5C,r0
	fmov.s @(r0,r13),fr2
	mov 0x2C,r0
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x34,r0
	fmov.s fr2,@(r0,r13) 
	mov 0x14,r0
	fmov.s @(r0,r14),fr3
	mov 0x60,r0
	fmov.s @(r0,r13),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov.s fr2,@(r0,r13) 
	mov.w @(loc_8C0A4E2C,pc),r0
	fmov.s @(r0,r12),fr3
	mov 0x38,r0
	fmov.s @(r0,r13),fr2
	mova @(loc_8C0A4E40,pc),r0 
	fsub fr3,fr2
	fmov.s @r0,fr3
	fmov fr2,fr4
	fadd fr3,fr4
	fldi0 fr2
	fcmp/gt fr4,fr2
	bf/s loc_8c0a4daa
	mov r12,r7
	mov 0x38,r0
	fmov.s @(r0,r13),fr1
	fadd fr4,fr1
	fmov.s fr1,@(r0,r13) 
	fmov.s @(r0,r12),fr0
	fadd fr4,fr0
	fmov.s fr0,@(r0,r12) 

loc_8c0a4daa:
	mov.l @(0x28,r14),r6
	mov r14,r5
	bsr loc_8c0a4fe2
	mov r13,r4
	mov 0x2C,r1
	mov.l @(loc_8c0a4e44,pc),r3
	add r14,r1
	fmov.s @r1,fr3
	mov 0x34,r0
	mov r0,r1
	add r13,r1
	fmov.s @r1,fr2
	fsub fr3,fr2
	fmov.s @(r0,r12),fr3
	fadd fr2,fr3
	fmov.s fr3,@(r0,r12) 
	jsr @r3
	mov r12,r4
	mov.w @(loc_8C0A4E2E,pc),r0
	mov.b r9,@(r0,r13) 
	mov 0x34,r0
	mov.b r9,@(r0,r14) 
	mov 0x00,r0
	mov.b r0,@(0x0F,r14) 
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
loc_8c0a4dee:
	mov.l r14,@-r15
	mov r6,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0 
	extu.b r0,r0
	cmp/eq 0x09,r0 
	bf loc_8c0a4e12
	mov.l @(loc_8c0a4e48,pc),r2
	mov 0x01,r5
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0A4E30,pc),r0
	mov 0xFE,r5
	lds.l @r15+,pr 
	mov.l @(loc_8c0a4e4c,pc),r3
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

loc_8c0a4e12:
	mov.l @(loc_8c0a4e50,pc),r3
	mov 0x01,r5
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0A4E30,pc),r0
	mov 0xFE,r5
	lds.l @r15+,pr 
	mov.l @(loc_8c0a4e50,pc),r3
	mov.l @(r0,r14),r4
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A4E28:
	#data 0x0158
loc_8C0A4E2A:
	#data 0x0088
loc_8C0A4E2C:
	#data 0x041C
loc_8C0A4E2E:
	#data 0x012C
loc_8C0A4E30:
	#data 0x01C8
	#align4

loc_8c0a4e34:
	#data bank15.loc_8c1569bc
loc_8c0a4e38:
	#data bank15.loc_8c1569dc
loc_8c0a4e3c:
	#data bank03.loc_8c034cd6
loc_8C0A4E40:
	#data 0xC3092492
loc_8c0a4e44:
	#data bank05.loc_8c0500ac
loc_8c0a4e48:
	#data bank05.loc_8c0590f4
loc_8c0a4e4c:
	#data bank05.loc_8c05929c
loc_8c0a4e50:
	#data bank05.loc_8c056de4

;==============================================
loc_8C0A4E54:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(loc_8C0A4F8E,pc),r14 ; r14 set to 0x88
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(0x18,r4),r13
	add r13,r14 ; r14 ??? bc r13 is ???	
	mov.b @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C0A4E76
	mov.l @(0x14,r4),r10
	bra loc_8C0A4F7e
	nop

loc_8c0a4e76:
	mov 0x24,r0
	mov.l @(0x08,r4),r6
	mov.b @(r0,r10),r3
	mov.w @(loc_8c0a4f8e,pc),r7
	mov.b r3,@(r0,r4) 
	add r6,r7
	mov.w @(0x04,r7),r0 
	mov r0,r3
	lds r3,fpul 
	mov.w @r5,r3
	mov 0x34,r0
	fmov.s @(r0,r6),fr2
	float fpul,fr3
	lds r3,fpul 
	fadd fr3,fr2
	float fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mov.w @(0x06,r7),r0 
	mov r0,r3
	lds r3,fpul 
	mov 0x38,r0
	fmov.s @(r0,r6),fr2
	mov.w @(0x02,r5),r0 
	float fpul,fr3
	mov r0,r3
	lds r3,fpul 
	mov 0x38,r0
	fsub fr3,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mov.w @(loc_8C0A4F90,pc),r0
	mov 0x00,r6
	mov r15,r7
	mov r7,r12
	mov.b r6,@(r0,r4) 
	mov 0x34,r0
	fmov.s @(r0,r4),fr3
	mov 0x10,r0
	mov r12,r5
	add 0x04,r5
	fmov.s fr3,@r12
	fmov.s @(r0,r14),fr3
	mov 0x22,r0
	fmov.s fr3,@r5
	mov.b @(r0,r4),r3
	cmp/pz r3
	bt/s loc_8c0a4ee6
	mov 0x01,r11
	mov 0x10,r0
	fmov.s @(r0,r14),fr3
	mov 0x34,r0
	fmov.s fr3,@r12
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@r5

loc_8c0a4ee6:
	fmov.s @r12,fr2
	fmov.s @r5,fr3
	fcmp/gt fr3,fr2
	bt loc_8c0a4f20
	mov 0x38,r0
	fmov.s @(r0,r4),fr3
	mov 0x14,r0
	mov 0x40,r3
	fmov.s fr3,@r12
	fmov.s @(r0,r14),fr3
	mov 0x22,r0
	fmov.s fr3,@r5
	mov.b @(r0,r4),r7
	extu.b r7,r7
	cmp/gt r3,r7
	bf loc_8c0a4f18
	mov.w @(loc_8C0A4F92,pc),r1
	cmp/ge r1,r7
	bt loc_8c0a4f18
	mov 0x14,r0
	fmov.s @(r0,r14),fr3
	mov 0x38,r0
	fmov.s fr3,@r12
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@r5

loc_8c0a4f18:
	fmov.s @r12,fr2
	fmov.s @r5,fr3
	fcmp/gt fr3,fr2
	bf loc_8c0a4f4e

loc_8c0a4f20:
	mov.w @(loc_8C0A4F90,pc),r0
	mov.b r11,@(r0,r4) 
	mov.b @(0x0F,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x0F,r14) 
	mov.b @(0x05,r13),r0 
	tst r0,r0
	bf loc_8c0a4f4e
	mov.b @(0x0E,r14),r0 
	mov 0x04,r3
	cmp/ge r3,r0
	bt loc_8c0a4f4e
	mov r11,r0
	nop 
	mov.b r0,@(0x05,r13) 
	mov.w @(loc_8C0A4F94,pc),r0
	mov r6,r0
	nop 
	mov.w r0,@(0x08,r14) 
	mova @(loc_8C0A4F9C,pc),r0 
	fmov.s @r0,fr3
	mov 0x68,r0
	fmov.s fr3,@(r0,r13) 

loc_8c0a4f4e:
	mov.b @(0x0E,r14),r0 
	add 0xFF,r0
	mov.b r0,@(0x0E,r14) 
	exts.b r0,r0
	cmp/pl r0
	bt loc_8c0a4f7e
	mov.b @(0x05,r13),r0 
	extu.b r0,r0
	cmp/gt r11,r0
	bt loc_8c0a4f7e
	mov.w @(loc_8C0A4F98,pc),r0
	mov.w @(loc_8C0A4F96,pc),r2
	mov.l @(loc_8c0a4fa0,pc),r3
	mov.b r2,@(r0,r13) 
	jsr @r3
	mov r13,r4
	mov 0x32,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0a4f7e
	mov.b r11,@(r0,r14) 
	mov 0x80,r3
	mov.w @(loc_8C0A4F9A,pc),r0
	mov.b r3,@(r0,r10) 

loc_8C0A4F7E:
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;##############################################s
loc_8C0A4F8E:
	#data 0x0088
loc_8c0a4f90:
	#data 0x012c
loc_8c0a4f92:
	#data 0x00C0
loc_8c0a4f94:
	#data 0x0A00
loc_8c0a4f96:
	#data 0x0080
loc_8c0a4f98:
	#data 0x014a
loc_8c0a4f9a:
	#data 0x019C
	#align4

loc_8c0a4f9c:
	#data 0x40800000
loc_8C0A4FA0:
	#data bank04.loc_8c045748

;==============================================
loc_8C0A4FA4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r4
	mov.l r5,@(0x4,r15)
	mov.l @(0x28,r4),r4
	tst r4,r4
	bt loc_8c0a4fbe
	mov 0x02,r0
	mov.b r0,@(0x4,r4)

loc_8C0A4FBE:
	mov.l @(0x118,PC),r12
	mov 0x0E,r13
	mov.l @r15,r14

loc_8C0A4FC4:
	mov.l @(0xC,r14),r14
	jsr @r12
	mov r14,r4
	dt r13
	bf loc_8c0a4fc4
	mov.l @r15,r4
	mov.l @(0x4,r15),r5
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A4FDC:
	mov.l @(loc_8C0A50D8,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8c0a4fe2:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0A50CC,pc),r0
	mov r7,r12
	mov r4,r14
	mov.l r6,@r15
	mov.w @(r0,r12),r3
	mov 0x10,r4
	mov 0x00,r13
	tst r3,r3
	bf/s loc_8c0a5006
	mov r13,r5
	mov.w @(loc_8C0A50CE,pc),r4
	mov 0x08,r5

loc_8c0a5006:
	mov 0x22,r0
	mov.w @(loc_8C0A50D0,pc),r2
	mov.b @(r0,r14),r3
	mov.l @(loc_8c0a50dc,pc),r0
	add r14,r2
	add r3,r4
	extu.b r4,r4
	shlr2 r4
	shlr2 r4
	shlr r4
	add r5,r4
	extu.b r4,r4
	mov.b @(r0,r4),r3
	mov.w @(loc_8C0A50D2,pc),r0
	mov.b r3,@r2
	mov.l @(loc_8c0a50e0,pc),r3
	mov.l @(r0,r12),r5
	jsr @r3
	mov r14,r4
	mov.l @r15,r4
	tst r4,r4
	bt loc_8c0a5128
	mov.w @(loc_8C0A50D2,pc),r0
	mov.l @(loc_8c0a50e4,pc),r1
	mov.l @(r0,r12),r11
	mov.w @(loc_8C0A50D4,pc),r3
	mov.b @(0x01,r11),r0 
	extu.b r0,r0
	mov.b @(r0,r1),r11
	mov r3,r0
	nop 
	add 0x51,r0
	mov r14,r2
	mov.b @(r0,r14),r12
	mov r4,r1
	add 0x34,r2
	add r3,r12
	mov.l @(loc_8c0a50e8,pc),r3
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	extu.b r11,r5
	mov.l @(loc_8c0a50ec,pc),r2
	shll2 r5
	mov.l @(loc_8C0A50F0,pc),r1
	shll2 r5
	extu.b r12,r3
	shll2 r5
	add r2,r5
	shll2 r3
	add r3,r5
	mov.w @r5,r3
	mov 0x34,r0
	fmov.s @(r0,r4),fr2
	lds r3,fpul 
	float fpul,fr3
	lds r1,fpul 
	mov 0x38,r1
	add r4,r1
	fsts fpul,fr0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mov.w @(0x02,r5),r0 
	fmov.s @r1,fr1
	mov r0,r3
	lds r3,fpul 
	mova @(loc_8C0A50F4,pc),r0 
	mov.l @(loc_8C0A50F8,pc),r5
	fmov.s @r0,fr2
	float fpul,fr3
	fmul fr2,fr3
	fsub fr3,fr1
	fmov.s fr1,@r1
	mov.l @(loc_8c0a50fc,pc),r1
	extu.b r12,r0
	shll r0
	mov.w @(loc_8C0A50CC,pc),r3
	mov.b @(r0,r1),r0
	add r4,r3
	extu.b r0,r0
	mov.w r0,@r3
	exts.w r0,r0
	cmp/eq 0x02,r0 
	bt loc_8c0a50b6
	cmp/eq 0x03,r0 
	bt loc_8c0a50c2
	bra loc_8c0a5100
	nop 

loc_8c0a50b6:
	mov 0x48,r0
	mov.l r5,@(r0,r4) 
	mov 0x01,r3
	mov.w @(loc_8C0A50CC,pc),r0
	bra loc_8c0a5104
	mov.w r3,@(r0,r4) 

loc_8c0a50c2:
	mov 0x48,r0
	mov.l r5,@(r0,r4) 
	mov.w @(loc_8C0A50CC,pc),r0
	bra loc_8c0a5104
	mov.w r13,@(r0,r4) 

;##############################################
loc_8C0A50CC:
	#data 0x0130
loc_8C0A50CE:
	#data 0x00F0
loc_8C0A50D0:
	#data 0x0150
loc_8C0A50D2:
	#data 0x01C8
loc_8C0A50D4:
	#data 0x00FF
	#align4

loc_8c0a50d8:
	#data bank04.loc_8C0450C0
loc_8c0a50dc:
	#data bank15.loc_8c157138
loc_8c0a50e0:
	#data bank04.loc_8c04cc1c
loc_8c0a50e4:
	#data bank15.loc_8c1569e0
loc_8c0a50e8:
	#data bank12.loc_8c1294c8
loc_8c0a50ec:
	#data bank15.loc_8c156a40
loc_8C0A50F0:
	#data work.CpsXScale
loc_8C0A50F4:
	#data work.CpsYScale
loc_8C0A50F8:
	#data 0x00008000
loc_8c0a50fc:
	#data bank15.loc_8c156a20

;----------------------------------------------
loc_8c0a5100:
	mov 0x48,r0
	mov.l r13,@(r0,r4) 

loc_8c0a5104:
	mov.l @(loc_8c0a513c,pc),r3
	extu.b r12,r12
	mov.l @(loc_8c0a5138,pc),r0
	shll r12
	add r12,r3
	extu.b r11,r11
	mov.b @r3,r3
	mov.b @(r0,r11),r6
	mov 0x14,r5
	add r3,r6
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @(loc_8c0a5140,pc),r3
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0a5128:
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8c0a5138:
	#data bank15.loc_8c156a1b
loc_8c0a513c:
	#data bank15.loc_8c156a1f
loc_8c0a5140:
	#data bank03.loc_8c034e8c

;==============================================
loc_8c0a5144:
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
	add 0xF8,r15
	mov r6,r10
	mov.b @(0x1,r10),r0
	mov r4,r13
	mov.l @(0x14,r13),r12
	mov r0,r4
	mova @(0x144,PC),r0
	fmov @r0,fr15
	mov r5,r14
	mov.w @(0x4,r10),r0
	mov r15,r5
	mov r5,r11
	mov r0,r3
	lds r3,fpul
	mov.w @(0x128,PC),r0
	float fpul,fr3
	fmul fr15,fr3
	fmov fr3,@r11
	mov.w @(r0,r12),r3
	tst r3,r3
	bt.s loc_8c0a518c
	mov 0x22,r0
	fmov @r11,fr3
	neg r4,r4
	fneg fr3
	fmov fr3,@r11

loc_8c0a518c:
	mov.b r4,@(r0,r13)
	mov 0x18,r0
	fmov @r11,fr3
	mov r5,r8
	add 0x04,r8
	fmov fr3,@(r0,r14)
	mova @(0x114,PC),r0
	fmov @r0,fr14
	mov.w @(0x6,r10),r0
	mov r0,r3
	lds r3,fpul
	mov 0x1C,r0
	float fpul,fr3
	fmul fr14,fr3
	fmov fr3,@(r0,r14)
	mov 0x18,r0
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r12),fr2
	mov 0x10,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x1C,r0
	fmov fr2,@r11
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r12),fr2
	mov 0x14,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	extu.b r4,r0
	add 0x04,r0
	mov.w @(0xD2,PC),r9
	and r0,r9
	cmp/pz r9
	bt.s loc_8c0a51d8
	fmov fr2,@r8
	add 0x07,r9

loc_8c0a51d8:
	shar r9
	mov.l @(0xD8,PC),r2
	shar r9
	shar r9
	mov 0x1B,r5
	extu.b r9,r7
	mov 0x01,r6
	jsr @r2
	mov r13,r4
	mov.w @(0xB6,PC),r0
	extu.b r9,r4
	mov.l @(0xC8,PC),r3
	shll2 r4
	shll r4
	mov.w @(0xB0,PC),r1
	mov.l r3,@(r0,r13)
	mov.l @(r0,r13),r2
	add r13,r1
	mov.w @(0xA6,PC),r3
	mov.w @(0x12,r2),r0
	add r13,r3
	extu.w r0,r0
	mov.l @r3,r3
	shll2 r0
	shll2 r0
	add r3,r0
	mov.l @(0xAC,PC),r3
	mov.l r0,@r1
	add r3,r4
	mov.w @r4,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr15,fr3
	ftrc fr3,fpul
	sts fpul,r2
	mov.w r2,@r14
	mov.w @(0x2,r4),r0
	mov r0,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr14,fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x2,r14)
	mov.w @(0x4,r4),r0
	mov r0,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr15,fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x4,r14)
	mov.w @(0x6,r4),r0
	mov r0,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr14,fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x6,r14)
	mov.b @(0x3,r10),r0
	tst r0,r0
	bt loc_8c0a5272
	mov.w @(0x4,r14),r0
	fmov @r11,fr2
	mov r0,r2
	lds r2,fpul
	float fpul,fr3
	fsub fr3,fr2
	fmov fr2,@r11
	mov.w @(0x6,r14),r0
	fmov @r8,fr2
	mov r0,r2
	lds r2,fpul
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@r8

loc_8c0a5272:
	fmov @r11,fr3
	mov 0x2C,r0
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov fr3,@(r0,r13)
	mov 0x38,r0
	fmov @r8,fr3
	fmov fr3,@(r0,r13)
	mov 0x24,r0
	mov.b @(r0,r12),r3
	mov.b r3,@(r0,r13)
	add 0x08,r15
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a52a0:
	#data 0x0130
loc_8c0a52a2:
	#data 0x00F8
loc_8c0a52a4:
	#data 0x0154
loc_8c0a52a6:
	#data 0x016C
loc_8c0a52a8:
	#data 0x01C0
	#align4

loc_8c0a53ac:
	#data work.CpsXScale
loc_8c0a52b0:
	#data work.CpsYScale
loc_8c0a52b4:
	#data bank03.loc_8c034cd6
loc_8c0a52b8:
	#data bank15.loc_8c1569a8
loc_8c0a52bc:
	#data bank15.loc_8c1568a6

;==============================================
loc_8c0a52c0:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r11,@-r15
	add 0xF4,r15
	mov.w @(0x4,r6),r0
	mov r15,r7
	add 0x04,r7
	mov.l @(0x14,r4),r11
	mov r0,r3
	lds r3,fpul
	mova @(0x108,PC),r0
	mov r7,r2
	fmov @r0,fr2
	mov 0x35,r1
	float fpul,fr3
	add r5,r1
	add 0x04,r7
	fmul fr2,fr3
	fmov fr3,@r2
	mov.l r7,@r15
	mov.w @(0x6,r6),r0
	mov r0,r3
	lds r3,fpul
	mova @(0xF4,PC),r0
	fmov @r0,fr1
	float fpul,fr3
	fmul fr1,fr3
	fmov fr3,@r7
	mov.b @r6,r0
	mov.w r0,@(0xA,r5)
	mov.b @(0x3,r6),r0
	mov.b r0,@r1
	mov.b @(0x8,r6),r0
	mov r0,r14
	mov.b @(0xA,r6),r0
	mov r0,r7
	mov.b @(0xB,r6),r0
	mov r0,r13
	mov.b @(0xC,r6),r0
	mov r0,r1
	mov.b @(0x9,r6),r0
	mov.b r0,@(0xD,r5)
	mov.w @(0xC2,PC),r0
	mov.w @(r0,r11),r3
	tst r3,r3
	bt loc_8c0a532a
	fmov @r2,fr3
	neg r13,r13
	neg r1,r1
	fneg fr3
	neg r7,r7
	fmov fr3,@r2
	neg r14,r14

loc_8c0a532a:
	fmov @r2,fr2
	mov 0x18,r0
	mov r5,r6
	fmov fr2,@(r0,r5)
	mov 0x1C,r0
	mov.l @r15,r3
	fmov @r3,fr3
	fmov fr3,@(r0,r5)
	mov 0x34,r0
	fmov @(r0,r11),fr2
	mov 0x10,r0
	fmov @r2,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x38,r0
	mov.l @r15,r3
	fmov @(r0,r11),fr2
	mov 0x14,r0
	fmov @r3,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x24,r0
	mov.b @(r0,r11),r3
	mov.b r3,@(r0,r4)
	bra loc_8c0a53a8
	mov 0x00,r11

loc_8c0a535e:
	mov r14,r0
	nop
	mov.b r0,@(0xC,r6)
	exts.b r7,r3
	mov r1,r6
	add r7,r14
	cmp/pz r3
	sub r14,r6
	bf.s loc_8c0a537a
	exts.b r6,r6
	cmp/pz r6
	bt loc_8c0a5380
	bra loc_8c0a537e
	nop

loc_8c0a537a:
	cmp/pz r6
	bf loc_8c0a5380

loc_8c0a537e:
	mov r1,r14

loc_8c0a5380:
	extu.b r13,r3
	tst r3,r3
	bt.s loc_8c0a53a0
	add r13,r7
	exts.b r13,r3
	cmp/pz r3
	bt.s loc_8c0a5398
	exts.b r7,r6
	cmp/pl r6
	bt loc_8c0a53a0
	bra loc_8c0a539e
	mov 0x01,r6

loc_8c0a5398:
	cmp/pz r6
	bf loc_8c0a53a0
	mov.w @(0x3C,PC),r6

loc_8c0a539e:
	mov r6,r7

loc_8c0a53a0:
	mov.w @(0x3A,PC),r6
	add 0x01,r11
	mov.l @(0xC,r4),r4
	add r4,r6

loc_8c0a53a8:
	mov.b @(0xF,r5),r0
	cmp/gt r0,r11
	bf loc_8c0a535e
	add 0x0C,r15
	mov.l @r15+,r11
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0A53B8:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0A53E8,pc),r3 ; r3 set to 0x8C0E7D30
	mov r4,r14
	mov.l r5,@r15
	mov r14,r5
	mov 0x02,r6 ; r6 set to 0x02
	jsr @r3
	mov.l @(0x18,r14),r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0A53EC,pc),r3 ; r3 set to 0x8C0A3AB8
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a53da:
	#data 0x0130
loc_8c0a53dc:
	#data 0x00Ff
loc_8c0a53de:
	#data 0x0088
	#align4

loc_8c0a53e0:
	#data work.CpsXScale
loc_8c0a53e4:
	#data work.CpsYScale
loc_8C0A53E8:
	#data bank0e.loc_8c0e7D30
loc_8C0A53EC:
	#data loc_8c0a3AB8

;==============================================
loc_8C0A53F0:
	mov.w @(loc_8C0A54E2,pc),r0 ; r0 set to 0x1C8
	mov 0x01,r7 ; r7 set to 0x01
	mov.l @(r0,r4),r3
	add 0x72,r0 ; r0 set to 0x23a
	mov.b @(r0,r3),r2
	cmp/ge r7,r2
	bt loc_8C0A5444
	mov.w @(loc_8C0A54E4,pc),r0 ; r0 set to 0x34a
	mov.w @(loc_8C0A54E6,pc),r3 ; r3 set to 0x3C00
	mov.w @(r0,r4),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8C0A5444
	mov.w @(loc_8C0A54E8,pc),r0 ; r0 set to 0x34e
	mov.w @(loc_8C0A54EA,pc),r3 ; r3 set to 0x300
	mov.w @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	extu.w r0,r0
	tst r3,r0
	bt loc_8C0A541a
	bra loc_8C0A5426
	mov 0x00,r6

loc_8c0a541a:
	mov.w @(loc_8c0a54e8,pc),r0
	mov.w @(r0,r4),r0
	extu.w r0,r0
	tst 0x60,r0 
	bt loc_8c0a5444
	mov r7,r6

loc_8c0a5426:
	mov.w @(loc_8c0a54e2,pc),r0
	mov.l @(r0,r4),r3
	add 0x72,r0
	mov.b @(r0,r3),r2
	add 0x02,r2
	mov.b r2,@(r0,r3) 
	mov r6,r0
	nop 
	mov.w r0,@(0x16,r5) 
	mov.w @(loc_8c0a54e4,pc),r0
	mov.w @(r0,r4),r0
	mov.w r0,@(0x14,r5) 
	mov r7,r0
	nop 
	mov.w r0,@(0x12,r5) 

loc_8C0A5444:
	rts
	nop

;----------------------------------------------
loc_8C0A5448:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.l r4,@r15
	mov.w @(0x12,r6),r0
	tst r0,r0
	bt.s loc_8c0a54da
	mov r5,r14
	mov 0x00,r4
	mov r4,r0
	nop
	mov 0x0A,r2
	mov.w r0,@(0x12,r6)
	mov.w @r6,r3
	extu.w r3,r3
	cmp/ge r2,r3
	bt loc_8c0a547c
	mov.w @(0x14,r6),r0
	mov.w @(0x7C,PC),r5
	extu.w r0,r0
	tst r5,r0
	bt.s loc_8c0a547c
	mov 0x01,r4
	mov.w @(0x14,r6),r0
	xor r5,r0
	mov.w r0,@(0x14,r6)

loc_8C0A547C:
	mov 0x11,r0
	mov.b r4,@(r0,r6)
	mov 0x38,r2
	mov.w @(0x5C,PC),r0
	mov.l @(r0,r14),r3
	add 0xEC,r0
	mov.l r14,@(r0,r3)
	add 0x14,r0
	mov.l @(r0,r14),r3
	add 0xD9,r0
	mov.b r2,@(r0,r3)
	mov.l @(0x60,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x46,PC),r0
	mov.l @(r0,r14),r2
	mov.w @(0x4E,PC),r0
	mov.w @(r0,r2),r3
	tst r3,r3
	bt loc_8c0a54da ; loc_8c0a5448+0x92
	mov.w @(0x3A,PC),r0
	mov r15,r1
	mov.l @(0x4C,PC),r3
	add 0x04,r1
	mov.l @(r0,r14),r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x2A,PC),r0
	mov r15,r4
	mov.l @(0x40,PC),r3
	mov.l @(r0,r14),r1
	mov.w @(0x30,PC),r0
	fmov @(r0,r1),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r15)
	mov.w @(0x1A,PC),r0
	mov.l @(r0,r14),r5
	mov.b @(0x2,r5),r0
	extu.b r0,r5
	jsr @r3
	add 0x04,r4
	mov.l @r15,r2
	mov 0x03,r0
	mov.b r0,@(0x5,r2)
	mov 0x0B,r0
	mov.b r0,@(0x6,r14)

loc_8C0A54DA:
	add 0x10,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A54E2:
	#data 0x01C8
loc_8C0A54E4:
	#data 0x034a
loc_8C0A54E6:
	#data 0x3C00
loc_8C0A54E8:
	#data 0x034e
loc_8C0A54EA:
	#data 0x0300
loc_8c0a54ec:
	#data 0x0C00
loc_8c0a54ee:
	#data 0x0420
loc_8c0a54f0:
	#data 0x041c
	#align4

loc_8C0A54F4:
	#data bank05.loc_8c05933c
loc_8C0A54F8:
	#data bank12.loc_8c1294C8
loc_8C0A54FC:
	#data bank10.loc_8c100672

;==============================================
;unused
loc_8c0a5500:
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
	bt.s loc_8c0a5548
	mov r0,r4
	mov.w @(0x134,PC),r1
	mov.l @(0x148,PC),r3
	mov.l r3,@(0x10,r4)
	mov 0x21,r3
	mov.l @r15,r2
	add r4,r3
	mov.l r2,@(0x18,r4)
	mov 0x20,r2
	mov.l @r15,r0
	add r4,r2
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1C,r4)
	mov.b @(0x8,r15),r0
	mov.b r0,@r2
	mov.b @(0x4,r15),r0
	mov.w @(0x118,PC),r2
	mov.b r0,@r3
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0a5548:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c0a5550:
	mov.l r14,@-r15
	mov 0x01,r5
	sts.l pr,@-r15
	mov.l @(loc_8c0a566c,pc),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt/s loc_8c0a5592
	mov r0,r4
	mov.w @(loc_8C0A565A,pc),r1
	mov.l @(loc_8c0a5670,pc),r3
	mov.l r3,@(0x10,r4) 
	mov 0x03,r3
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4) 
	mov.l @(0x18,r14),r0
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1C,r4) 
	mov 0x20,r0
	mov.b r3,@(r0,r4) 
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r4) 
	mov 0x22,r0
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4) 
	mov.b @(0x05,r14),r0 
	mov.w @(loc_8C0A565C,pc),r3
	mov.b r0,@(0x05,r4) 
	mov 0x26,r0
	mov.w r3,@(r0,r4) 

loc_8c0a5592:
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a5598:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l @(0xCC,PC),r3
	mov.l r4,@(0x8,r15)
	mov.l r5,@r15
	mov.l r6,@(0x4,r15)
	mov 0x01,r6
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0a55d8
	mov r0,r4
	mov.l @(0xBC,PC),r3
	mov 0x20,r0
	mov 0x05,r2
	mov.l r3,@(0x10,r4)
	mov.b r2,@(r0,r4)
	mov.l @(0x8,r15),r3
	mov.w @(0x9C,PC),r0
	mov.l r3,@(0x18,r4)
	mov.l @r15,r2
	mov.l r2,@(0x14,r4)
	mov.l @r15,r3
	mov.l @(0x18,r3),r2
	mov.l r2,@(r0,r4)
	mov.w @(0x90,PC),r0
	mov.l @(0x4,r15),r3
	mov.w @(0x88,PC),r2
	mov.l r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)

loc_8c0a55d8:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c0a55e0:
	mov.l r14,@-r15
	mov 0x01,r6
	sts.l pr,@-r15
	mov.l @(0x84,PC),r3
	mov r6,r5
	mov r4,r14
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0a5650
	mov r0,r4
	mov.l @(0x78,PC),r3
	mov 0x04,r2
	mov 0x20,r0
	mov.w @(0x62,PC),r1
	mov.l r3,@(0x10,r4)
	mov.b r2,@(r0,r4)
	add r4,r1
	mov.w @(0x5A,PC),r2
	mov.w @(0x5A,PC),r0
	mov.l @(0x68,PC),r3
	mov.l r14,@(0x18,r4)
	jsr @r3
	add r14,r2
	mov.w @(0x52,PC),r0
	mov 0x01,r2
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x2,r14),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x36,PC),r0
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
	mov.l @(0x30,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r4)

loc_8c0a5650:
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A565A:
	#data 0x0158
loc_8C0A565C:
	#data 0x3002
loc_8c0a565e:
	#data 0x00CC
loc_8c0a5660:
	#data 0x00D0
loc_8c0a5662:
	#data 0x00DC
loc_8c0a5664:
	#data 0x00C0
loc_8c0a5666:
	#data 0x012C
loc_8c0a5668:
	#data 0x01A3
	#align4

loc_8c0a566c:
	#data bank04.loc_8c044f12
loc_8c0a5670:
	#data loc_8c0a567c

loc_8c0a5674:
	#data bank12.loc_8C129560
loc_8c0a5678:
	#data bank12.loc_8C1294C8

;----------------------------------------------
loc_8C0A567C:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0A57CC,pc),r0 ; r0 set to 0x8C157148
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

loc_8C0A5690:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C0A56B8
	mov.l @(0x18,r14),r4
	mov.w @(loc_8C0A57BC,pc),r0 ; r0 set to 0x158
	mov.w @(r0,r4),r1
	mov.w @(0x1C,r14),r0
	extu.w r1,r1
	cmp/eq r0,r1
	bf loc_8C0A56Ce
	mov.w @(loc_8C0A57BE,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	extu.b r0,r0
	cmp/eq 0x14,r0
	bt loc_8C0A56D4
	bra loc_8C0A56Ce
	nop

loc_8c0a56b8:
	mov.w @(loc_8c0a57bc,pc),r0
	mov.w @(r0,r4),r2
	mov.w @(0x1C,r14),r0 
	extu.w r2,r2
	cmp/eq r0,r2
	bf loc_8c0a56ce
	mov.w @(loc_8c0a57be,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0 
	bt loc_8c0a56d4

loc_8C0A56CE:
	mov r14,r4
	bra loc_8C0A61B4
	mov.l @r15+,r14

loc_8C0A56D4:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0A57D0,pc),r1 ; r1 set to 0x8C157170
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0A56E4:
	mov.w @(0xD8,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r4),r0
	add r4,r1
	mov.l @(0xE4,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xCA,PC),r0
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0xC2,PC),r0
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
	mov.w @(0x9E,PC),r0
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
	mov.l @(0x98,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov 0x00,r5
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov 0x45,r3
	mov.w @(0x6E,PC),r0
	mov.b r5,@(r0,r4)
	add 0x70,r0
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b r5,@(r0,r4)
	mov 0x24,r0
	mov.b r5,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r3
	mov.l @(0x74,PC),r0
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r3
	mova @(0x70,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	lds r3,fpul
	float fpul,fr3
	fmul fr2,fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x48,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt.s loc_8c0a578c
	mov 0x0B,r6
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8C0A578C:
	mov 0x20,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8c0a5796
	mov 0x3C,r6

loc_8C0A5796:
	mov.w @(0x2E,PC),r0
	mov.l @(0x48,PC),r3
	mov.b r6,@(r0,r4)
	add 0x0B,r0
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
	lds.l @r15+,pr
	mov.w @(r0,r2),r1
	add 0x01,r1
	rts
	mov.w r1,@(r0,r2)

;----------------------------------------------
loc_8C0A57BC:
	#data 0x0158
loc_8C0A57BE:
	#data 0x01D0
loc_8c0a57c0:
	#data 0x00Dc
loc_8c0a57c2:
	#data 0x012C
loc_8c0a57c4:
	#data 0x01A3
loc_8c0a57c6:
	#data 0x0130
loc_8c0a57c8:
	#data 0x01A1
	#align4

loc_8C0A57CC:
	#data bank15.loc_8c157148
loc_8C0A57D0:
	#data bank15.loc_8c157170
loc_8C0A57D4:
	#data bank12.loc_8c129560
loc_8C0A57D8:
	#data bank12.loc_8c1294C8
loc_8C0A57DC:
	#data bank15.loc_8c157180
loc_8C0A57e0:
	#data work.CpsXScale
loc_8C0A57e4:
	#data 0x8C2896B0

;==============================================
loc_8C0A57E8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf.s loc_8c0a5816
	mov.l @(0x18,r14),r13
	mov.w @(0xA8,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c0a5874
	mov.b @(0x5,r14),r0
	mov 0x14,r5
	mov.l @(0xA8,PC),r3
	mov 0x00,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x92,PC),r0
	mov 0x01,r2
	mov.b r2,@(r0,r14)

loc_8C0A5816:
	mov r13,r2
	mov.l @(0x98,PC),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov 0x5C,r1
	add r14,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x72,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c0a5874
	mov.l @(0x7C,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c0a585a
	mov.w @(0x60,PC),r0
	mov.b @(r0,r13),r2
	tst r2,r2
	bt loc_8c0a5868
	mov.l @(0x68,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0a5868

loc_8C0A585A:
	mov 0x00,r0
	mov r14,r4
	mov.w r0,@(0x1C,r13)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0a61b4
	mov.l @r15+,r14

loc_8C0A5868:
	lds.l @r15+,pr
	mov.l @(0x50,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0A5874:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A587C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0A58AC,pc),r0 ; r0 set to 0x158
	mov.l @(0x18,r14),r4
	mov.w @(r0,r4),r3
	mov.w @(0x1C,r14),r0
	extu.w r3,r3
	cmp/eq r0,r3
	bt loc_8C0A5894
	mov r14,r4
	bra loc_8C0A61B4
	mov.l @r15+,r14

loc_8C0A5894:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0A58C0,pc),r1 ; r1 set to 0x8C157188
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a58a4:
	#data 0x0141
loc_8c0a58a6:
	#data 0x012C
loc_8c0a58a8:
	#data 0x01A0
loc_8c0a58aa:
	#data 0x0200
loc_8C0A58AC:
	#data 0x0158
	#align4

loc_8C0A58B0:
	#data bank03.loc_8c034e8c
loc_8C0A58B4:
	#data bank12.loc_8c1294C8
loc_8C0A58B8:
	#data bank03.loc_8c034dee
loc_8C0A58BC:
	#data bank04.loc_8c045748
loc_8C0A58C0:
	#data bank15.loc_8c157188

;==============================================
loc_8C0A58C4:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0A5A0A,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0A5A14,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0A5A0A,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0A5A0C,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0A5A0E,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A5A18,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov r14,r1
	add 0x34,r1
	mov.b r3,@(r0,r14)
	mov.l @(0x18,r14),r2
	mov.l @(loc_8C0A5A18,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x00,r4 ; r4 set to 0x00
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.w r0,@(0x1E,r14)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b r4,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bf loc_8C0A5958
	mov 0x24,r0 ; r0 set to 0x24
	bra loc_8C0A595e
	mov.b r4,@(r0,r14)

loc_8C0A5958:
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x07,r2 ; r2 set to 0x07
	mov.b r2,@(r0,r14)

loc_8C0A595E:
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.l @(loc_8C0A5A1C,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov r14,r4
	mov 0x12,r5 ; r5 set to 0x12, r5 set to 0x12
	add 0x01,r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0A5970:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov.l r3,@r15
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8C0A59A8
	bsr loc_8C0A5550
	mov r14,r4
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0A5996
	bra loc_8C0A5998
	mov 0x04,r0

loc_8c0a5996:
	mov 0x07,r0

loc_8c0a5998:
	mov.w r0,@(0x1E,r14) 
	mov 0x22,r0
	mov.b @(r0,r14),r0
	mov 0x22,r1
	add r14,r1
	add 0x01,r0
	and 0x07,r0 
	mov.b r0,@r1

loc_8C0A59A8:
	mov.b @(0x05,r14),r0
	tst r0,r0
	bf loc_8C0A59D8
	mov.l @(loc_8C0A5A20,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0A5A10,pc),r0 ; r0 set to 0x14b
	mov.l @r15,r2
	mov.b @(r0,r2),r3 ; r3 ??? bc r2 is ???	
	tst r3,r3
	bt loc_8C0A59F0
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov 0x12,r5 ; r5 set to 0x12
	add 0x01,r0 ; r0 set to 0x14c
	mov.b r0,@(0x05,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r6
	add 0x03,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0A5A1C,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	mov.l @r15+,r14

loc_8c0a59d8:
	mov.l @(loc_8c0a5a20,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0a59f0
	mov.b @(0x04,r14),r0 
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r14) 
	mov.w @(loc_8c0a5a0c,pc),r0
	mov.b r3,@(r0,r14) 

loc_8C0A59F0:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A59F8:
	mov r4,r3
	mov.l @(loc_8C0A5A24,pc),r1 ; r1 set to 0x8C157198
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A5A0A:
	#data 0x00Dc
loc_8C0A5A0C:
	#data 0x012c
loc_8C0A5A0E:
	#data 0x01A3
loc_8C0A5A10:
	#data 0x014b
	#align4

loc_8C0A5A14:
	#data bank12.loc_8c129560
loc_8C0A5A18:
	#data bank12.loc_8c1294C8
loc_8C0A5A1C:
	#data bank03.loc_8c034e8c
loc_8C0A5A20:
	#data bank03.loc_8c034dee
loc_8C0A5A24:
	#data bank15.loc_8c157198

;----------------------------------------------
loc_8C0A5A28:
	mov.l r14,@-r15
	mov.w @(loc_8C0A5B48,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r4),r0
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0A5B50,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A5B48,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r4),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0A5B4A,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0A5B4C,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A5B54,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov r4,r1
	add 0x34,r1
	mov.b r3,@(r0,r4)
	mov.l @(0x18,r4),r2
	mov.l @(loc_8C0A5B54,pc),r3 ; r3 set to 0x8C1294C8
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r4),r5
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r4),r3 ; r3 ??? bc r4 is ???	
	mov 0x00,r6 ; r6 set to 0x00
	mov r6,r14 ; r14 set to 0x00
	tst r3,r3
	bf/s loc_8C0A5ACa
	fldi0 fr5
	mov 0x24,r0 ; r0 set to 0x24
	fmov fr5,fr4
	mov.b r6,@(r0,r4)
	mova @(loc_8C0A5B58,pc),r0  ; r0 set to 0x8C0A5B58
	fmov.s @r0,fr3
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0A5B5C,pc),r0  ; r0 set to 0x8C0A5B5c
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	bra loc_8C0A5B0a
	fmov.s fr3,@(r0,r4)

loc_8C0A5ACA:
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x07,r2 ; r2 set to 0x07
	mov.b r2,@(r0,r4)
	mov.b @(0x05,r4),r0
	tst r0,r0
	bf/s loc_8C0A5AE2
	mov 0x04,r14 ; r14 set to 0x04
	mov.l @(loc_8C0A5B60,pc),r1 ; r1 set to 0x42092492
	mov 0x38,r0 ; r0 set to 0x38
	lds r1,fpul
	bra loc_8C0A5AEa
	fsts fpul,fr3

loc_8c0a5ae2:
	mov.l @(loc_8C0A5B64,pc),r1
	mov 0x38,r0
	lds r1,fpul 
	fsts fpul,fr3

loc_8c0a5aea:
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mova @(loc_8C0A5B68,pc),r0 
	fmov.s @r0,fr3
	mov 0x60,r0
	fmov.s fr3,@(r0,r4) 
	mova @(loc_8C0A5B6C,pc),r0 
	fmov.s @r0,fr3
	mov 0x6C,r0
	fmov.s fr3,@(r0,r4) 
	mova @(loc_8C0A5B70,pc),r0 
	fmov.s @r0,fr4
	not r5,r0
	mov 0x07,r5
	and r0,r5

loc_8c0a5b0a:
	mov.l @(loc_8c0a5b74,pc),r0
	extu.b r5,r5
	shll r5
	mov.w @(r0,r5),r3
	mova @(loc_8C0A5B78,pc),r0 
	fmov.s @r0,fr2
	lds r3,fpul 
	mov.w @(loc_8C0A5B4E,pc),r0
	float fpul,fr3
	mov.w @(r0,r4),r3
	tst r3,r3
	fmov fr3,fr6
	fmul fr2,fr6
	bt/s loc_8c0a5b2a
	fadd fr6,fr4
	fneg fr4

loc_8c0a5b2a:
	mov 0x34,r0
	mov.l @(loc_8c0a5b7c,pc),r3
	fmov.s @(r0,r4),fr3
	mov 0x12,r5
	mov r14,r7
	mov 0x05,r6
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4) 
	mov 0x5C,r0
	fmov.s fr5,@(r0,r4) 
	mov 0x68,r0
	fmov.s fr5,@(r0,r4) 
	lds.l @r15+,pr 
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0a5b48:
	#data 0x00DC
loc_8c0a5b4a:
	#data 0x012C
loc_8c0a5b4c:
	#data 0x01A3
loc_8C0A5B4E:
	#data 0x0130
	#align4

loc_8c0a5b50:
	#data bank12.loc_8C129560
loc_8c0a5b54:
	#data bank12.loc_8C1294C8
loc_8c0a5b58:
	#data work.CpsYScale
loc_8c0a5b5c:
	#data 0x3F092492
loc_8c0a5b60:
	#data 0x42092492
loc_8C0A5B64:
	#data 0x432B6DB6
loc_8C0A5B68:
	#data 0x40892492
loc_8C0A5B6C:
	#data 0x3F892492
loc_8C0A5B70:
	#data 0xC1555555
loc_8c0a5b74:
	#data bank15.loc_8c1571a8
loc_8C0A5B78:
	#data work.CpsXScale
loc_8c0a5b7c:
	#data bank03.loc_8c034f54

;==============================================
loc_8C0A5B80:
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
	fmov.s fr2,@(r0,r4)
	mov.b @(0x05,r4),r0
	tst r0,r0
	bf loc_8C0A5BC4
	mova @(loc_8C0A5C70,pc),r0  ; r0 set to 0x8C0A5C70
	bra loc_8C0A5BC8
	fmov.s @r0,fr4

loc_8c0a5bc4:
	mova @(loc_8C0A5C74,pc),r0 
	fmov.s @r0,fr4

loc_8c0a5bc8:
	mov 0x60,r0
	fmov.s @(r0,r4),fr3
	fcmp/gt fr4,fr3
	bf loc_8c0a5bda
	mov 0x6C,r0
	fldi0 fr3
	fmov.s fr3,@(r0,r4) 
	mov 0x60,r0
	fmov.s fr4,@(r0,r4) 

loc_8c0a5bda:
	mova @(loc_8C0A5C78,pc),r0 
	mov.l @(0x18,r4),r5
	fmov.s @r0,fr3
	mov 0x38,r0
	fmov.s @(r0,r5),fr4
	mov 0x21,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bt/s loc_8c0a5bf4
	fadd fr3,fr4
	mova @(loc_8C0A5C7C,pc),r0 
	fmov.s @r0,fr2
	fadd fr2,fr4

loc_8c0a5bf4:
	mov.b @(0x05,r4),r0
	tst r0,r0
	bt loc_8c0a5c00
	mova @(loc_8C0A5C80,pc),r0
	fmov.s @r0,fr3
	fadd fr3,fr4

loc_8c0a5c00:
	mov 0x38,r0
	fmov.s @(r0,r4),fr3
	fcmp/gt fr4,fr3
	bf loc_8c0a5c14
	mov.b @(0x04,r4),r0 
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x04,r4) 
	mov.w @(loc_8c0a5c6a,pc),r0
	mov.b r3,@(r0,r4) 

loc_8c0a5c14:
	rts
	nop

;==============================================
loc_8C0A5C18:
	mov.w @(loc_8C0A5C6A,pc),r0 ; r0 set to 0x12c
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r2,@(r0,r4)
	mov.w @(loc_8C0A5C6C,pc),r0 ; r0 set to 0x1C8
	mov.l @(0x18,r4),r3
	mov.l @(r0,r3),r2 ; r2 ??? bc r3 is ???	
	mov 0x24,r0 ; r0 set to 0x24
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b @(r0,r2),r1
	mov.b r1,@(r0,r4)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r4)
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0A5C48
	cmp/eq 0x01,r0
	bt loc_8C0A5C48
	cmp/eq 0x02,r0
	bt loc_8C0A5C50
	cmp/eq 0x03,r0
	bt loc_8C0A5C50
	bra loc_8C0A5C50
	nop

loc_8C0A5C48:
	mov.w @(loc_8C0A5C6A,pc),r0 ; r0 set to 0x12c
	mov 0x01,r3 ; r3 set to 0x01
	bra loc_8C0A5C54
	mov.b r3,@(r0,r4)

loc_8C0A5C50:
	bra loc_8C0A61B4
	nop

loc_8C0A5C54:
	rts
	nop

;----------------------------------------------
loc_8C0A5C58:
	mov r4,r3
	mov.l @(loc_8C0A5C84,pc),r1 ; r1 set to 0x8C1571B8
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A5C6A:
	#data 0x012c
loc_8C0A5C6C:
	#data 0x01C8
	#align4

loc_8C0A5C70:
	#data 0x40F00000
loc_8c0a5c74:
	#data 0x41892492
loc_8c0a5c78:
	#data 0x42CDB6Db
loc_8c0a5c7c:
	#data 0x42092492
loc_8c0a5c80:
	#data 0x43892492
loc_8C0A5C84:
	#data bank15.loc_8c1571B8

;==============================================
loc_8C0A5C88:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0x132,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x12A,PC),r2
	add 0x01,r0
	mov.l @(0x138,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x124,PC),r0
	mov.l @(0x14,r14),r4
	mov.l @(0x18,r14),r5
	jsr @r3
	add r4,r2
	mov.w @(0x11C,PC),r0
	mov 0x01,r13
	mov r14,r1
	add 0x50,r1
	mov.b r13,@(r0,r14)
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
	mov.w @(0x100,PC),r0
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
	mov.l @(0xF8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov r14,r1
	mov.b @(r0,r4),r2
	mov 0x00,r3
	add 0x34,r1
	mov.b r2,@(r0,r14)
	mov r5,r2
	mov.w @(0xD4,PC),r0
	add 0x34,r2
	mov.b r3,@(r0,r14)
	mov.l @(0xE0,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x31,r0
	mov.l @(0xDC,PC),r1
	mov 0x05,r2
	mov.b r2,@(r0,r14)
	mov 0x17,r5
	mov.w @(0x1C,r14),r0
	mov.l @(0xD4,PC),r2
	mov.b @(r0,r1),r3
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r3,r3
	extu.b r0,r0
	shll2 r0
	add r0,r2
	add r2,r3
	mov.w @(0xAE,PC),r2
	mov.b @r3,r0
	add r14,r2
	mov.l @(0xC0,PC),r3
	mov.b r0,@r2
	mov.w @(0xA4,PC),r0
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov.l @(0xB8,PC),r3
	mov.l @r3,r2
	mov.l @(0x1C,r2),r1
	tst r13,r1
	bt loc_8c0a5d3a
	mov.w @(0x8E,PC),r0
	mov.b r13,@(r0,r14)


loc_8C0A5D3A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A5D42:
	mov.w @(0x88,PC),r0
	mov 0x00,r3
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(r0,r14),r6
	add 0x60,r0
	mov.l @(0x14,r14),r5
	mov.l @(0x18,r14),r4
	mov.b r3,@(r0,r14)
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov.b @(0x5,r6),r0
	tst r0,r0
	bf loc_8c0a5d8a
	mov.w @(0x6A,PC),r0
	mov.b @(r0,r6),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0a5d8a
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x05,r0
	bf loc_8c0a5d8a
	mov.w @(0x5A,PC),r0
	mov.l @(r0,r14),r0
	mov.w @r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0a5d9a
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pz r0
	bt loc_8c0a5d96

loc_8C0A5D8A:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

loc_8C0A5D96:
	mov.l @(0xC,r4),r4
	mov.l r4,@(0x18,r14)

loc_8C0A5D9A:
	mov r4,r2
	mov.l @(0x38,PC),r3
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x3C,PC),r2
	mov.l @r2,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bt loc_8c0a5dbe
	mov.l @(0x38,PC),r1
	jsr @r1
	mov r14,r4
	mov.w @(0xC,PC),r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)

loc_8C0A5DBE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a5dc4:
	#data 0x00dc
loc_8c0a5dc6:
	#data 0x00c0
loc_8c0a5dc8:
	#data 0x012c
loc_8c0a5dca:
	#data 0x01a3
loc_8c0a5dcc:
	#data 0x0158
loc_8c0a5dce:
	#data 0x00cc
loc_8c0a5dd0:
	#data 0x01d0
loc_8c0a5dd2:
	#data 0x00d0
	#align4

loc_8C0A5DD4:
	#data bank12.loc_8c129560
loc_8C0A5DD8:
	#data bank12.loc_8c1294C8
loc_8C0A5DDC:
	#data bank15.loc_8c1571D4
loc_8C0A5DE0:
	#data bank15.loc_8c1571C8
loc_8C0A5DE4:
	#data bank03.loc_8c034e8c
loc_8C0A5DE8:
	#data 0x8C26823c
loc_8C0A5DEC:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0A5DF0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0A5F26,pc),r1 ; r1 set to 0x1D0
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0A5E06
	mov r14,r4
	bra loc_8C0A61B4
	mov.l @r15+,r14

loc_8C0A5E06:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0A5F34,pc),r1 ; r1 set to 0x8C1571E4
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c0a5e16:
	sts.l pr,@-r15
	mov.l @(0x18,r4),r2
	mov r4,r1
	mov.l @(loc_8c0a5f38,pc),r3
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(loc_8c0a5f28,pc),r0
	mov r4,r1
	mov.l @(loc_8c0a5f3c,pc),r2
	mov.l @(r0,r4),r5
	mov 0x21,r0
	mov.b @(r0,r4),r3
	mova @(loc_8C0A5F40,pc),r0 
	shll2 r5
	fmov.s @r0,fr2
	extu.b r3,r3
	add r2,r5
	shll r3
	add r3,r5
	mov.b @r5,r3
	mov 0x38,r0
	add r0,r1
	lds r3,fpul 
	mov.l r1,@-r15
	mov.b @(0x01,r5),r0 
	float fpul,fr3
	mov r0,r3
	lds r3,fpul 
	mov.l @r15+,r3
	mova @(loc_8C0A5F44,pc),r0 
	fmov.s @r0,fr0
	fmov.s @r3,fr1
	fmov fr3,fr4
	float fpul,fr3
	mov.w @(loc_8C0A5F2A,pc),r0
	fmac fr0,fr3,fr1
	fmov.s fr1,@r3
	mov.w @(r0,r4),r1
	tst r1,r1
	bt/s loc_8c0a5e6e
	fmul fr2,fr4
	fneg fr4

loc_8c0a5e6e:
	mov 0x34,r0
	fmov.s @(r0,r4),fr3
	lds.l @r15+,pr 
	fadd fr4,fr3
	rts 
	fmov.s fr3,@(r0,r4) 

loc_8C0A5E7A:
	mov.w @(loc_8C0A5F28,pc),r0 ; r0 set to 0xCc
	mov.l @(loc_8C0A5F48,pc),r1 ; r1 set to 0x8C157200
	mov.l @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	shll r0
	mov.w @(r0,r1),r0
	rts
	mov.w r0,@(0x1E,r4)

;==============================================
loc_8C0A5E88:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x9C,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.l @(0xB4,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x8E,PC),r0
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x86,PC),r0
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
	mov.w @(0x62,PC),r0
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
	mov.l @(0x50,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r14),r1
	mov 0x00,r4
	mov 0x24,r0
	mov.b @(r0,r1),r3
	mov.b r4,@(r0,r14)
	mov.w @(0x2E,PC),r0
	mov.l r4,@(r0,r14)
	bsr loc_8c0a5e16
	mov r14,r4
	bsr loc_8c0a5e7a
	mov r14,r4
	mov.w @(0x2C,PC),r0
	mov 0x02,r3
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0a5f16
	mov.w @(0x1E,PC),r0
	mov 0x04,r2
	mov.b r2,@(r0,r14)

loc_8C0A5F16:
	mov.w @(0x18,PC),r0
	mov 0x13,r5
	lds.l @r15+,pr
	mov.l @(0x30,PC),r3
	mov r14,r4
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A5F26:
	#data 0x01D0
loc_8C0A5F28:
	#data 0x00Cc
loc_8c0a5f2a:
	#data 0x0130
loc_8c0a5f2c:
	#data 0x00Dc
loc_8c0a5f2e:
	#data 0x012C
loc_8c0a5f30:
	#data 0x01A3
loc_8c0a5f32:
	#data 0x0158
	#align4

loc_8C0A5F34:
	#data bank15.loc_8c1571E4
loc_8C0A5F38:
	#data bank12.loc_8c1294C8
loc_8C0A5F3C:
	#data bank15.loc_8c1571F4
loc_8c0a5f40:
	#data work.CpsXScale
loc_8c0a5f44:
	#data work.CpsYScale
loc_8C0A5F48:
	#data bank15.loc_8c157200
loc_8C0A5F4C:
	#data bank12.loc_8c129560
loc_8C0A5F50:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0A5F54:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1E,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8C0A5FCa
	mov.w @(loc_8C0A6084,pc),r0 ; r0 set to 0xCc
	mov.l @(r0,r14),r2
	add 0x01,r2
	mov.l r2,@(r0,r14)
	bsr loc_8C0A5E7a
	mov r14,r4
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bf loc_8C0A5F92
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0xCd
	mov.b r0,@(0x04,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0A5FD8
	mov.l @(0x18,r14),r3
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x07,r3)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a5f92:
	mov.l @(loc_8c0a6094,pc),r2
	mov 0x01,r6
	mov r6,r5
	jsr @r2
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0a5fca
	mov r0,r4
	mov.l @(loc_8c0a6098,pc),r2
	mov 0x20,r0
	mov r4,r1
	add 0x34,r1
	mov.l r2,@(0x10,r4) 
	mov 0x08,r2
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4) 
	mov.b r2,@(r0,r4) 
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.w @(loc_8C0A6086,pc),r2
	mov.b r3,@(r0,r4) 
	mov 0x26,r0
	mov.w r2,@(r0,r4) 
	mov r14,r2
	mov.l @(loc_8c0a609c,pc),r3
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0

loc_8C0A5FCA:
	bsr loc_8C0A5E16
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0A60A0,pc),r3 ; r3 set to 0x8C034DEe
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0A5FD8:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A5FDE:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0A6088,pc),r1 ; r1 set to 0x1D0
	mov.l @(0x18,r14),r0
	mov.b @(r0,r1),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bt loc_8C0A5FF4
	mov r14,r4
	bra loc_8C0A61B4
	mov.l @r15+,r14

loc_8C0A5FF4:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0A60A4,pc),r1 ; r1 set to 0x8C157208
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0A6004:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0A608A,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l @(loc_8C0A60A8,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0A608A,pc),r0 ; r0 set to 0xDc
	mov.l @(0x18,r14),r2
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0A608C,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0A608E,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A609C,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x00,r2 ; r2 set to 0x00
	mov.l @(0x18,r14),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r2,@(r0,r14)
	mov 0x08,r0 ; r0 set to 0x08
	mov.w r0,@(0x1E,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bf loc_8C0A60Ac
	mov.w @(loc_8C0A6090,pc),r0 ; r0 set to 0x158
	mov 0x03,r3 ; r3 set to 0x03
	bra loc_8C0A60B2
	mov.b r3,@(r0,r14)

;##############################################
loc_8C0A6084:
	#data 0x00Cc
loc_8c0a6086:
	#data 0x3002
loc_8C0A6088:
	#data 0x01D0
loc_8C0A608A:
	#data 0x00Dc
loc_8C0A608C:
	#data 0x012c
loc_8C0A608E:
	#data 0x01A3
loc_8C0A6090:
	#data 0x0158
	#align4

loc_8C0A6094:
	#data bank04.loc_8c044F12
loc_8C0A6098:
	#data loc_8c0a567c
loc_8C0A609C:
	#data bank12.loc_8c1294C8
loc_8C0A60A0:
	#data bank03.loc_8c034dee
loc_8C0A60A4:
	#data bank15.loc_8c157208
loc_8C0A60A8:
	#data bank12.loc_8c129560

;----------------------------------------------
loc_8C0A60AC:
	mov.w @(loc_8C0A61BA,pc),r0 ; r0 set to 0x158
	mov 0x05,r1 ; r1 set to 0x05
	mov.b r1,@(r0,r14)

loc_8C0A60B2:
	mov.w @(loc_8C0A61BA,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov 0x13,r5 ; r5 set to 0x13, r5 set to 0x13
	lds.l @r15+,pr
	mov.l @(loc_8C0A61C4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov r14,r4
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0A60C2:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	cmp/pl r0
	bt loc_8C0A60Dc
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A61BC,pc),r0 ; r0 set to 0x12c
	bra loc_8C0A60E2
	mov.b r3,@(r0,r4)

loc_8C0A60DC:
	mov.l @(loc_8C0A61C8,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

loc_8C0A60E2:
	rts
	nop

;----------------------------------------------
loc_8C0A60E6:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0A61BA,pc),r0 ; r0 set to 0x158
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.w @(r0,r4),r3
	mov.w @(0x1C,r14),r0
	extu.w r3,r3
	cmp/eq r0,r3
	bt loc_8C0A6102
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0A61B4
	mov.l @r15+,r14

loc_8C0A6102:
	mov r4,r2
	mov.l @(loc_8C0A61CC,pc),r3 ; r3 set to 0x8C1294C8
	mov r14,r1
	add 0x34,r2
	add 0x34,r1
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.b @(0x04,r14),r0
	tst r0,r0
	bf loc_8C0A619c
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0A61BE,pc),r1 ; r1 set to 0xDc
	add 0x01,r0 ; r0 set to 0x0d
	mov.l @(loc_8C0A61D0,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0A61C0,pc),r0 ; r0 set to 0xC0
	mov.w @(loc_8C0A61BE,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???	
	mov.w @(loc_8C0A61BC,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0A61C2,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A61CC,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov.b r2,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bf loc_8C0A6180
	mov.w @(loc_8C0A61BA,pc),r0 ; r0 set to 0x158
	mov 0x0D,r3 ; r3 set to 0x0d
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	bra loc_8C0A618c
	mov.b r2,@(r0,r14)

loc_8C0A6180:
	mov.w @(loc_8C0A61BA,pc),r0 ; r0 set to 0x158
	mov 0x0E,r1 ; r1 set to 0x0e
	mov 0x07,r3 ; r3 set to 0x07
	mov.b r1,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)

loc_8C0A618C:
	mov.w @(loc_8C0A61BA,pc),r0 ; r0 set to 0x158, r0 set to 0x158
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	lds.l @r15+,pr
	mov.l @(loc_8C0A61C4,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov r14,r4
	mov.b @(r0,r14),r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0A619C:
	lds.l @r15+,pr
	mov.l @(loc_8C0A61C8,pc),r3 ; r3 set to 0x8C034DEe
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0A61A6:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A61BC,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0A61B4:
	mov.l @(loc_8C0A61D4,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;##############################################
loc_8C0A61BA:
	#data 0x0158
loc_8C0A61BC:
	#data 0x012c
loc_8C0A61BE:
	#data 0x00Dc
loc_8C0A61C0:
	#data 0x00C0
loc_8C0A61C2:
	#data 0x01A3
	#align4

loc_8C0A61C4:
	#data bank03.loc_8c034e8c
loc_8C0A61C8:
	#data bank03.loc_8c034dee
loc_8C0A61CC:
	#data bank12.loc_8c1294C8
loc_8C0A61D0:
	#data bank12.loc_8c129560
loc_8C0A61D4:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0a61d8:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x90,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a6202
	mov r0,r4
	mov.l @(0x84,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x70,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov 0x00,r2
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b r2,@(r0,r4)

loc_8c0a6202:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0A620A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x18,r14),r3
	mov 0x24,r0
	mov.b @(r0,r3),r2
	mov.b r2,@(r0,r14)
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0a6224
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf loc_8c0a623e

loc_8C0A6224:
	mov.w @(0x42,PC),r0
	mov 0x00,r3
	mov.l @(0x4C,PC),r1
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x4,r14),r0
	mov.w @(0x38,PC),r5
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	add r14,r5
	jmp @r3
	mov.l @r15+,r14

loc_8C0A623E:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A6242:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0A626E,pc),r0 ; r0 set to 0x1D3
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r3
	mov 0x2A,r0 ; r0 set to 0x2a
	mov.b r3,@(r0,r5)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r4),r2
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0A627C,pc),r0 ; r0 set to 0x8C157284
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;##############################################
loc_8c0a6268:
	#data 0x3003
loc_8c0a626a:
	#data 0x012C
loc_8c0a626c:
	#data 0x0088
loc_8C0A626E:
	#data 0x01D3
	#align4

loc_8C0A6270:
	#data bank04.loc_8c044F12
loc_8C0A6274:
	#data loc_8c0a620a
loc_8C0A6278:
	#data bank15.loc_8c157274
loc_8C0A627C:
	#data bank15.loc_8c157284

;==============================================
loc_8C0A6280:
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
	add 0xF8,r15
	mov.w @(0xB8,PC),r1
	mov r4,r12
	mov.w @(0xB6,PC),r0
	mov r5,r10
	mov.w @(0xB0,PC),r2
	add r12,r1
	mov.l @(0x18,r12),r13
	mov.l @(0xB4,PC),r3
	jsr @r3
	add r13,r2
	mov.w @(0xA8,PC),r0
	mov 0x01,r9
	mov r12,r1
	add 0x50,r1
	mov.b r9,@(r0,r12)
	mov.b @(0x2,r13),r0
	mov.b r0,@(0x2,r12)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r12)
	mov 0x50,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r12)
	mov 0x54,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r12)
	mov.w @(0x8C,PC),r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r12)
	add 0x01,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r12)
	mov 0x30,r0
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r12)
	mov.l @(0x80,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0x78,PC),r3
	mov.b @(r0,r13),r2
	mov r12,r1
	add 0x34,r1
	mov.b r2,@(r0,r12)
	mov r13,r2
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0
	mov.w @(0x5E,PC),r0
	mov.w @(r0,r13),r2
	tst r2,r2
	bt.s loc_8c0a630a
	mov r13,r6
	mov 0x22,r0
	mov.b @(r0,r12),r2
	neg r2,r2
	mov.b r2,@(r0,r12)

loc_8C0A630A:
	mov r10,r5
	bsr loc_8c0a6b24
	mov r12,r4
	mov 0x60,r0
	fldi0 fr3
	fmov fr3,@(r0,r12)
	mov 0x5C,r0
	fmov fr3,@(r0,r12)
	mov 0x31,r0
	mov 0xFF,r8
	mov.b r8,@(r0,r12)
	mov r9,r0
	nop
	mov.l @(0x3C,PC),r2
	mov 0x03,r1
	mov.w r0,@(0x8,r10)
	mov 0x00,r11
	mov 0x28,r0
	mov.b r11,@(r0,r10)
	mov.w @r2,r3
	cmp/ge r1,r3
	bt loc_8c0a6368
	mov r12,r4
	mov r10,r5
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0a6b1e
	mov.l @r15+,r14

;##############################################
loc_8c0a6352:
	#data 0x00dc
loc_8c0a6354:
	#data 0x00c0
loc_8c0a6356:
	#data 0x012c
loc_8c0a6358:
	#data 0x01a3
loc_8c0a635a:
	#data 0x0130
	#align4

loc_8C0A635C:
	#data bank12.loc_8c129560
loc_8C0A6360:
	#data bank12.loc_8c1294C8
loc_8C0A6364:
	#data 0x8C287AE8

;==============================================
loc_8C0A6368:
	mov.l @(0x198,PC),r2
	mov 0x01,r5
	mov 0x02,r6
	jsr @r2
	mov r12,r4
	mov.l @(0x194,PC),r3
	mov r0,r4
	mov 0x20,r0
	mov.w @(0x178,PC),r1
	mov 0x02,r2
	mov.l r3,@(0x10,r4)
	mov.b r2,@(r0,r4)
	add r4,r1
	mov.w @(0x16E,PC),r2
	mov.l @(0x184,PC),r3
	mov.w @(0x16C,PC),r0
	mov.l r13,@(0x18,r4)
	mov.l r12,@(0x14,r4)
	jsr @r3
	add r13,r2
	mov.w @(0x164,PC),r0
	mov r4,r1
	add 0x50,r1
	mov.b r9,@(r0,r4)
	mov.b @(0x2,r13),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x14A,PC),r0
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.b @(r0,r13),r3
	mov r13,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(0x14C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.w @(0x12E,PC),r5
	mov.b @(r0,r13),r2
	mov 0xFE,r3
	add r4,r5
	mov.b r2,@(r0,r4)
	mov 0x31,r0
	mov.b r3,@(r0,r4)
	mov 0x2A,r0
	mov.b @(r0,r10),r3
	mov.b r3,@(r0,r5)
	mov 0x01,r0
	mov.b r0,@(0x4,r4)
	mova @(0x130,PC),r0
	mov 0x02,r3
	mov.l r4,@(0x24,r10)
	fmov @r0,fr14
	mova @(0x12C,PC),r0
	fmov @r0,fr15
	mov.l r3,@r15

loc_8C0A63F0:
	mov.l @(0x110,PC),r3
	mov 0x01,r5
	mov 0x02,r6
	jsr @r3
	mov r12,r4
	mov.l @(0x10C,PC),r2
	mov r0,r14
	mov 0x20,r0
	mov.w @(0xF0,PC),r1
	mov 0x01,r3
	mov.l r2,@(0x10,r14)
	mov.b r3,@(r0,r14)
	add r14,r1
	mov.w @(0xE6,PC),r2
	mov.l @(0xFC,PC),r3
	mov.w @(0xE4,PC),r0
	mov.l r13,@(0x18,r14)
	mov.l r12,@(0x14,r14)
	jsr @r3
	add r13,r2
	mov.w @(0xDC,PC),r0
	mov r14,r1
	add 0x50,r1
	mov.b r9,@(r0,r14)
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
	mov.w @(0xC2,PC),r0
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
	mov.l @(0xC4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r12),r3
	mov.b r3,@(r0,r14)
	mov.b @(r0,r14),r0
	extu.b r0,r0
	add 0x04,r0
	and 0xF8,r0
	cmp/pz r0
	bt loc_8c0a646a
	add 0x07,r0

loc_8C0A646A:
	shar r0
	mov.l @(0xAC,PC),r3
	shar r0
	shar r0
	mov 0x1B,r5
	mov.b r0,@(0x4,r15)
	mov 0x01,r6
	extu.b r0,r7
	jsr @r3
	mov r14,r4
	mov.w @(0x7C,PC),r0
	mov.l @(0x9C,PC),r2
	mov.w @(0x7C,PC),r1
	mov.l r2,@(r0,r14)
	mov.l @(r0,r12),r3
	add r14,r1
	mov.w @(0x6E,PC),r4
	mov.w @(0x12,r3),r0
	mov.w @(0x6E,PC),r3
	add r14,r4
	extu.w r0,r0
	add r14,r3
	mov.l @r3,r3
	shll2 r0
	shll2 r0
	add r3,r0
	mov.l @(0x84,PC),r3
	mov.l r0,@r1
	mov 0x24,r0
	mov.b r11,@(r0,r14)
	mov 0x31,r0
	mov.b r8,@(r0,r14)
	mov.b @(0x4,r15),r0
	extu.b r0,r5
	shll2 r5
	shll r5
	add r3,r5
	mov.w @r5,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr14,fr3
	ftrc fr3,fpul
	sts fpul,r2
	mov.w r2,@r4
	mov.w @(0x2,r5),r0
	mov r0,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr15,fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x2,r4)
	mov.w @(0x4,r5),r0
	mov r0,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr14,fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x4,r4)
	mov.w @(0x6,r5),r0
	mov r0,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr15,fr3
	ftrc fr3,fpul
	sts fpul,r0
	bra loc_8c0a6528
	nop

;##############################################
loc_8c0a64f4:
	#data 0x00dc
loc_8c0a64f6:
	#data 0x00c0
loc_8c0a64f8:
	#data 0x012c
loc_8c0a64fa:
	#data 0x01a3
loc_8c0a64fc:
	#data 0x0088
loc_8c0a64fe:
	#data 0x0154
loc_8c0a6500:
	#data 0x016c
loc_8c0a6502:
	#data 0x01c0
	#align4

loc_8C0A6504:
	#data bank04.loc_8c044F12
loc_8C0A6508:
	#data loc_8c0a620a
loc_8C0A650C:
	#data bank12.loc_8c129560
loc_8C0A6510:
	#data bank12.loc_8c1294C8
loc_8C0A6514:
	#data work.CpsXScale
loc_8C0A6518:
	#data work.CpsYScale
loc_8C0A651C:
	#data bank03.loc_8c034CD6
loc_8C0A6520:
	#data bank15.loc_8c157260
loc_8C0A6524:
	#data bank15.loc_8c1568A6

;----------------------------------------------
loc_8C0A6528:
	mov.w r0,@(0x6,r4)
	mov 0x2A,r0
	mov.b @(r0,r10),r2
	mov.b r2,@(r0,r4)
	mov.w @(0xFC,PC),r0
	mov.w r11,@(r0,r14)
	mov 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @r15,r2
	add 0xFF,r2
	tst r2,r2
	bt.s loc_8c0a6546
	mov.l r2,@r15
	bra loc_8c0a63f0
	nop

;----------------------------------------------
loc_8C0A6546:
	mov.b @(0x4,r12),r0
	mov r12,r4
	mov r10,r5
	add 0x01,r0
	mov.b r0,@(0x4,r12)
	add 0x08,r15
	lds.l @r15+,pr
	fmov @r15+,fr14
	fmov @r15+,fr15
	mov.l @r15+,r8
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0a65c4
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A6568:
	mov.w @(loc_8C0A6630,pc),r0 ; r0 set to 0x130
	mov 0x00,r3 ; r3 set to 0x00
	mov.w r3,@(r0,r4)
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x131
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C0A6576:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C0A657E:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0A65B2
	mov 0x00,r6 ; r6 set to 0x00
	mov r14,r4
	bra loc_8C0A65A8
	mov r6,r7

loc_8C0A6592:
	mov.l @(0xC,r4),r4
	mov.l @(0xA0,PC),r2
	mov.l @(0x10,r4),r3
	cmp/eq r2,r3
	bf loc_8c0a65b2
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r4)
	add 0x01,r7
	mov.w @(0x8A,PC),r0
	mov.b r6,@(r0,r4)

loc_8c0a65a8:
	mov 0x28,r0
	mov.b @(r0,r5),r3
	add 0x03,r3
	cmp/ge r3,r7
	bf loc_8c0a6592

loc_8C0A65B2:
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r2
	mov.l @(loc_8C0A663C,pc),r0 ; r0 set to 0x8C157290
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0A65C4:
	mov.w @(0x6A,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov 0x28,r0
	mov.b @(r0,r5),r3
	mov 0x29,r0
	mov.l @(0x18,r4),r6
	mov.b r3,@(r0,r5)
	mov.b @(0x5,r6),r0
	tst r0,r0
	bf loc_8c0a65e4
	mov.w @(0x56,PC),r0
	mov.b @(r0,r6),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_8c0a65e8

loc_8C0A65E4:
	bra loc_8c0a6ae0
	nop

loc_8C0A65E8:
	mov.w @(0x4A,PC),r0
	mov.b @(r0,r6),r3
	tst r3,r3
	bf loc_8c0a6604
	mov.l @(0x50,PC),r0
	mov.l @(0x4C,PC),r2
	mov.b @r0,r1
	mov.w @r2,r3
	mov 0x01,r2
	extu.b r1,r1
	shad r1,r2
	extu.w r3,r3
	tst r2,r3
	bt loc_8c0a6622

loc_8C0A6604:
	mov.w @(0x2A,PC),r0
	mov 0x01,r5
	mov.b r5,@(r0,r4)
	mov.l @(0xC,r4),r4
	mov.b r5,@(r0,r4)
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1A,PC),r0
	mov.l @(0xC,r4),r4
	mov.b r5,@(r0,r4)
	mov r5,r0
	nop
	rts
	mov.w r0,@(0x1C,r4)

;----------------------------------------------
loc_8C0A6622:
	mov.b @(0x5,r4),r0
	tst r0,r0
	bt loc_8c0a6648
	bra loc_8c0a6736
	nop

;unused
	rts
	nop

;----------------------------------------------
loc_8C0A6630:
	#data 0x0130
loc_8C0A6632:
	#data 0x012c
loc_8C0A6634:
	#data 0x01D0
loc_8C0A6636:
	#data 0x01A0
	#align4

loc_8C0A6638:
	#data loc_8c0a620a
loc_8C0A663C:
	#data bank15.loc_8c157290
loc_8C0A6640:
	#data 0x8C28962c
loc_8C0A6644:
	#data 0x8C28962b

;----------------------------------------------
loc_8C0A6648:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r12
	mov.b @(0x6,r12),r0
	extu.b r0,r0
	cmp/eq 0x04,r0
	bf.s loc_8c0a666c
	mov r5,r13
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0a6ae0
	mov.l @r15+,r14

loc_8C0A666C:
	cmp/eq 0x06,r0
	bf loc_8c0a667e
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0a6718
	mov.l @r15+,r14

loc_8C0A667E:
	mov r13,r5
	mov r12,r6
	bsr loc_8c0a6b24
	mov r14,r4
	mov.w @(0x94,PC),r0
	mov 0x01,r6
	mov.b r6,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r13),fr3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	mov.l @(0xC,r14),r4
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x10,r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x74,PC),r0
	mov.b r6,@(r0,r4)
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x14,r0
	fmov @(r0,r13),fr3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	mov.l @(0xC,r4),r5
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov 0x18,r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov.w @(0x50,PC),r0
	mov.b r6,@(r0,r5)
	mov r6,r0
	nop
	mov.w r0,@(0x1C,r5)
	mov 0x28,r0
	mov.b @(r0,r13),r3
	mov 0x29,r0
	tst r3,r3
	bt.s loc_8c0a66f2
	mov.b r3,@(r0,r13)
	lds.l @r15+,pr
	mov.l @(0xC,r5),r14
	mov.w @(0x38,PC),r5
	mov.l @r15+,r12
	mov r14,r4
	add r14,r5
	mov.l @r15+,r13
	bra loc_8c0a67f6
	mov.l @r15+,r14

loc_8C0A66F2:
	mov 0x1C,r0
	mov r12,r6
	fmov @(r0,r13),fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	mov r14,r4
	fsub fr3,fr2
	fmov fr2,@(r0,r12)
	mov 0x20,r0
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r12)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0a6c28
	mov.l @r15+,r14

loc_8C0A6718:
	mov r4,r6
	bra loc_8c0a672c
	mov 0x00,r7

;##############################################
loc_8c0a671e:
	#data 0x012c
loc_8c0a6720:
	#data 0x0088

;----------------------------------------------
loc_8C0A6722:
	mov.b @(0x5,r6),r0
	add 0x01,r7
	add 0x01,r0
	mov.b r0,@(0x5,r6)
	mov.l @(0xC,r6),r6

loc_8C0A672C:
	mov 0x28,r0
	mov.b @(r0,r5),r3
	add 0x04,r3
	cmp/ge r3,r7
	bf loc_8c0a6722

loc_8C0A6736:
	mov.l r14,@-r15
	mov r5,r14
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r13),r12
	bsr loc_8c0a6b24
	mov r12,r6
	mov.w @(0xE4,PC),r0
	mov 0x01,r5
	mov.b r5,@(r0,r13)
	mov 0x0C,r0
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	mov.l @(0xC,r13),r4
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x10,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0xC4,PC),r0
	mov.b r5,@(r0,r4)
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x14,r0
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	mov.l @(0xC,r4),r4
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x18,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0xA0,PC),r0
	mov.b r5,@(r0,r4)
	mov r5,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x28,r0
	mov.b @(r0,r14),r3
	mov 0x02,r2
	mov 0x29,r0
	cmp/gt r2,r3
	mov.b r3,@(r0,r14)
	bf loc_8c0a67b6
	lds.l @r15+,pr
	mov.l @(0xC,r4),r14
	mov.w @(0x86,PC),r5
	mov.l @r15+,r12
	mov r14,r4
	add r14,r5
	mov.l @r15+,r13
	bra loc_8c0a67f6
	mov.l @r15+,r14

loc_8C0A67B6:
	mov 0x1C,r0
	mov.l @(0x7C,PC),r2
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r12)
	mov 0x20,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r12)
	mov.w @(0x60,PC),r0
	mov.w r5,@(r0,r12)
	mov.b @(0x4,r13),r0
	add 0x01,r0
	mov.b r0,@(0x4,r13)
	mov 0x28,r0
	mov.b @(r0,r14),r3
	add 0xFE,r3
	mov.b r3,@(r0,r14)
	mov.l @(0xC,r4),r14
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x4C,PC),r3
	mov.l @(0xC,r14),r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0A67F6:
	mov.w @(0x3C,PC),r0
	mov.l @(0x18,r4),r6
	mov.b @(r0,r6),r3
	tst r3,r3
	bf loc_8c0a6814
	mov.l @(0x3C,PC),r0
	mov.l @(0x38,PC),r2
	mov.b @r0,r1
	mov.w @r2,r3
	mov 0x01,r2
	extu.b r1,r1
	shad r1,r2
	extu.w r3,r3
	tst r2,r3
	bt loc_8c0a6822

#align4
loc_8C0A6814:
	mov.w @(0x18,PC),r0
	mov 0x01,r5
	mov.b r5,@(r0,r4)
	mov r5,r0
	nop
	rts
	mov.w r0,@(0x1C,r4)

;----------------------------------------------
loc_8C0A6822:
	mov.b @(0x5,r4),r0
	tst r0,r0
	bt loc_8c0a6844
	bra loc_8c0a6966
	nop

;unused
	rts
	nop

;----------------------------------------------
loc_8c0a6830:
	#data 0x012c
loc_8c0a6832:
	#data 0x0088
loc_8c0a6834:
	#data 0x02A6
loc_8c0a6836:
	#data 0x01A0
	#align4

loc_8C0A6838:
	#data bank04.loc_8c0450C0
loc_8C0A683c:
	#data 0x8C28962c
loc_8C0A6840:
	#data 0x8C28962b

;==============================================
loc_8C0A6844:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15

loc_8C0A684A:
	mov r4,r6
	mov.l @(0x8,r6),r13
	mov r5,r1
	mov.w @(0x10C,PC),r12
	mov.l @(0x8,r13),r5
	mov 0x34,r0
	mov.l @(0x18,r4),r14
	add r5,r12
	fmov @(r0,r5),fr2
	mov.w @r12,r3
	mov.w @(0x4,r1),r0
	lds r3,fpul
	mov r0,r3
	mov 0x34,r0
	mov.l @(0x14,r6),r4
	float fpul,fr3
	lds r3,fpul
	mov.w @(0xF0,PC),r7
	mov.w @(0xEE,PC),r2
	add r4,r7
	add r13,r2
	fadd fr3,fr2
	float fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r6)
	mov.w @(0x2,r12),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r5),fr2
	float fpul,fr3
	fsub fr3,fr2
	mov.w @(0x6,r1),r0
	mov 0x01,r12
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r6)
	mov.w @(0xC4,PC),r0
	mov.b r12,@(r0,r6)
	mov r12,r0
	nop
	mov.w r0,@(0x1C,r6)
	mov 0x34,r0
	mov.w @r2,r3
	mov.l @(0xC,r6),r5
	lds r3,fpul
	mov.w @(0xB0,PC),r6
	fmov @(r0,r13),fr2
	add r5,r6
	float fpul,fr3
	mov.w @(0x4,r6),r0
	mov r0,r3
	lds r3,fpul
	mov 0x34,r0
	fadd fr3,fr2
	float fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r5)
	mov.w @(0x2,r2),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fmov @(r0,r13),fr2
	mov.w @(0x6,r6),r0
	float fpul,fr3
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	fsub fr3,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r5)
	mov.w @(0x7E,PC),r0
	mov.b r12,@(r0,r5)
	mov r12,r0
	nop
	mov.w r0,@(0x1C,r5)
	mov 0x29,r0
	mov.b @(r0,r7),r3
	add 0xFE,r3
	mov.b r3,@(r0,r7)
	exts.b r3,r3
	cmp/pl r3
	bf loc_8c0a6902
	mov.w @(0x64,PC),r6
	mov.l @(0xC,r5),r4
	add r4,r6
	bra loc_8c0a684a
	mov r6,r5

loc_8C0A6902:
	mov.w @(0x5E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0a6958
	mov 0x1C,r0
	fmov @(r0,r7),fr3
	mov 0x34,r0
	fmov @(r0,r5),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x20,r0
	fmov @(r0,r7),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x8,r7),r0
	neg r0,r0
	mov.w r0,@(0x8,r7)
	exts.w r0,r0
	cmp/pz r0
	bf loc_8c0a6958
	mov.w @r6,r3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	mov 0x38,r2
	lds r3,fpul
	add r14,r2
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x2,r6),r0
	mov r14,r6
	fmov @r2,fr2
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fsub fr3,fr2
	fmov fr2,@r2
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0a6c28
	mov.l @r15+,r14

loc_8C0A6958:
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a6960:
	#data 0x0088
loc_8c0a6962:
	#data 0x012c
loc_8c0a6964:
	#data 0x01a0

;==============================================
loc_8C0A6966:
	mov.l r14,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15

loc_8C0A696C:
	mov.l @(0x8,r4),r6
	mov 0x34,r0
	mov.w @(0x14A,PC),r1
	mov r5,r12
	mov.l @(0x8,r6),r7
	mov.w @(0x144,PC),r3
	add r7,r1
	fmov @(r0,r7),fr2
	mov.w @r1,r2
	mov.w @(0x4,r12),r0
	lds r2,fpul
	mov r0,r2
	mov 0x34,r0
	mov.l @(0x14,r4),r5
	float fpul,fr3
	lds r2,fpul
	mov.l @(0x18,r4),r14
	add r3,r5
	add r6,r3
	fadd fr3,fr2
	float fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x2,r1),r0
	mov r0,r2
	lds r2,fpul
	mov 0x38,r0
	fmov @(r0,r7),fr2
	float fpul,fr3
	mov.w @(0x6,r12),r0
	mov r0,r2
	fsub fr3,fr2
	lds r2,fpul
	mov 0x38,r0
	mov 0x01,r7
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x104,PC),r0
	mov.b r7,@(r0,r4)
	mov r7,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x34,r0
	mov.w @r3,r2
	mov.l @(0xC,r4),r4
	lds r2,fpul
	mov.w @(0xF0,PC),r1
	fmov @(r0,r6),fr2
	add r4,r1
	float fpul,fr3
	mov.w @(0x4,r1),r0
	mov r0,r2
	lds r2,fpul
	mov 0x34,r0
	fadd fr3,fr2
	float fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x2,r3),r0
	mov r0,r2
	lds r2,fpul
	mov 0x38,r0
	fmov @(r0,r6),fr2
	mov.w @(0x6,r1),r0
	float fpul,fr3
	mov r0,r2
	lds r2,fpul
	mov 0x38,r0
	fsub fr3,fr2
	float fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0xBE,PC),r0
	mov.b r7,@(r0,r4)
	mov r7,r0
	nop
	mov.w r0,@(0x1C,r4)
	mov 0x29,r0
	mov.b @(r0,r5),r2
	add 0xFE,r2
	mov.b r2,@(r0,r5)
	mov.b @(r0,r5),r0
	cmp/eq 0x02,r0
	bt loc_8c0a6a20
	mov.w @(0xA4,PC),r6
	mov.l @(0xC,r4),r4
	add r4,r6
	bra loc_8c0a696c
	mov r6,r5

loc_8C0A6A20:
	mov.w @(0x9E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0a6a70 ; loc_8c0a6a32+0x3e
	mov.l @(0xA0,PC),r0
	mov.l @(0x9C,PC),r2
	mov.b @r0,r1
	mov.w @r2,r3
	mov 0x01,r2
	extu.b r1,r1
	shad r1,r2
	extu.w r3,r3
	tst r2,r3
	bf loc_8c0a6a70
	mov 0x1C,r0
	mov.l @(0x90,PC),r2
	fmov @(r0,r5),fr3
	mov 0x34,r0
	fmov @(r0,r4),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x20,r0
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fsub fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x28,r0
	mov.b @(r0,r5),r3
	add 0xFE,r3
	mov.b r3,@(r0,r5)
	mov.l @(0xC,r4),r14
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x68,PC),r3
	mov.l @(0xC,r14),r4
	mov.l @r15+,r12
	jmp @r3
	mov.l @r15+,r14

loc_8C0A6A70:
	lds.l @r15+,pr
	mov.l @r15+,r12
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A6A78:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(loc_8C0A6AC4,pc),r0 ; r0 set to 0x141
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(r0,r13),r3
	cmp/pz r3
	bf/s loc_8C0A6A90
	mov r14,r1
	bra loc_8C0A6A92
	mov 0x00,r7

loc_8C0A6A90:
	mov 0x01,r7 ; r7 set to 0x01

loc_8C0A6A92:
	mov.l @(loc_8C0A6AD4,pc),r3 ; r3 set to 0x8C1294C8, r3 set to 0x8C1294C8
	mov r13,r2
	add 0x34,r1
	add 0x34,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	mov.w @(loc_8C0A6AC6,pc),r0 ; r0 set to 0x2A4, r0 set to 0x2A4
	mov 0x1B,r5 ; r5 set to 0x1B, r5 set to 0x1b
	mov.l @(loc_8C0A6ADC,pc),r3 ; r3 set to 0x8C034CD6, r3 set to 0x8C034CD6
	mov.w @(r0,r13),r6
	mov.l @(loc_8C0A6AD8,pc),r0 ; r0 set to 0x8C15729C, r0 set to 0x8C15729c
	extu.w r6,r6
	mov.b @(r0,r6),r6
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0A6AC0,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01, r2 set to 0x01
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A6Abe:
	#data 0x0088
loc_8C0A6AC0:
	#data 0x012c
loc_8C0A6Ac2:
	#data 0x01A0
loc_8C0A6AC4:
	#data 0x0141
loc_8C0A6AC6:
	#data 0x02A4
	#align4

loc_8C0A6Ac8:
	#data 0x8C28962c
loc_8C0A6Acc:
	#data 0x8C28962b
loc_8C0A6AD0:
	#data bank04.loc_8c0450C0
loc_8C0A6AD4:
	#data bank12.loc_8c1294C8
loc_8C0A6AD8:
	#data bank15.loc_8c15729c
loc_8C0A6ADC:
	#data bank03.loc_8c034CD6

;==============================================
loc_8C0A6AE0:
	mov.l r14,@-r15
	mov 0x28,r0
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov r5,r11
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(0x11C,PC),r10
	mov.l r4,@-r15
	mov.b @(r0,r11),r13
	mov.l @(0x24,r11),r4
	add 0x03,r13
	cmp/pl r13
	bf.s loc_8c0a6b0c
	mov 0x00,r14

loc_8C0A6B00:
	jsr @r10
	mov.l @(0x8,r4),r12
	add 0x01,r14
	cmp/ge r13,r14
	bf.s loc_8c0a6b00
	mov r12,r4

loc_8C0A6B0C:
	mov.l @r15,r4
	mov r11,r5
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A6B1E:
	mov.l @(loc_8C0A6C10,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C0A6B24:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov.w @(0xD6,PC),r0
	mov.w @(0xD2,PC),r10
	mov.b @(r0,r6),r3
	add r6,r10
	cmp/pz r3
	bt.s loc_8c0a6b40
	mov 0x00,r14
	mov 0x01,r14

loc_8C0A6B40:
	extu.b r14,r7
	mov.w @r10,r2
	mov r7,r3
	shll2 r7
	shll r7
	mov.l @(0xC8,PC),r1
	extu.w r2,r2
	add r3,r7
	mov r2,r3
	shll r2
	shll2 r7
	add r3,r2
	mova @(0xBC,PC),r0
	add r1,r7
	fmov @r0,fr4
	shll2 r2
	add r2,r7
	mov.w @(0x2,r7),r0
	mov r0,r3
	lds r3,fpul
	mov 0x10,r0
	float fpul,fr3
	fmul fr4,fr3
	fmov fr3,@(r0,r5)
	mov.w @(0x6,r7),r0
	mov r0,r3
	lds r3,fpul
	mov 0x18,r0
	float fpul,fr3
	fmul fr4,fr3
	fmov fr3,@(r0,r5)
	mov.w @(0xA,r7),r0
	mov r0,r3
	lds r3,fpul
	mov 0x20,r0
	mov r15,r1
	mov r1,r12
	mov r12,r13
	float fpul,fr3
	add 0x04,r13
	mov r12,r2
	add 0x08,r2
	fmul fr4,fr3
	fmov fr3,@(r0,r5)
	mova @(0x80,PC),r0
	mov.w @r7,r3
	fmov @r0,fr4
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fmov fr3,@r12
	mov.w @(0x4,r7),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fmov fr3,@r13
	mov.w @(0x8,r7),r0
	mov r0,r3
	lds r3,fpul
	mov.w @(0x50,PC),r0
	float fpul,fr3
	fmul fr4,fr3
	fmov fr3,@r2
	mov.w @(r0,r6),r3
	tst r3,r3
	bt loc_8c0a6bd8
	fmov @r12,fr3
	fneg fr3
	fmov fr3,@r12
	fmov @r13,fr2
	fneg fr2
	fmov fr2,@r13
	fmov @r2,fr3
	fneg fr3
	fmov fr3,@r2

loc_8C0A6BD8:
	fmov @r12,fr2
	mov 0x0C,r0
	mov.l @(0x44,PC),r3
	extu.b r14,r7
	fmov fr2,@(r0,r5)
	mov 0x14,r0
	fmov @r13,fr3
	fmov fr3,@(r0,r5)
	mov 0x1C,r0
	fmov @r2,fr3
	fmov fr3,@(r0,r5)
	mov.w @r10,r6
	mov.l @(0x2C,PC),r0
	extu.w r6,r6
	mov.b @(r0,r6),r6
	jsr @r3
	mov 0x1B,r5
	add 0x10,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a6c08:
	#data 0x02a4
loc_8c0a6c0a:
	#data 0x0141
loc_8c0a6c0c:
	#data 0x0130
	#align4

loc_8C0A6C10:
	#data bank04.loc_8c0450C0
loc_8C0A6C14:
	#data bank15.loc_8c157218
loc_8C0A6C18:
	#data work.CpsYScale
loc_8C0A6C1c:
	#data work.CpsXScale
loc_8C0A6C20:
	#data bank15.loc_8c15729f
loc_8C0A6C24:
	#data bank03.loc_8c034CD6

;==============================================
loc_8C0A6C28:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xCC,PC),r2
	mov r4,r9
	mov 0x02,r4
	mov.l r6,@r15
	mov.w @r2,r3
	cmp/ge r4,r3
	bf.s loc_8c0a6cea
	mov r5,r14
	mov.w @(0xB0,PC),r13
	mov 0xFF,r11
	mov.l @(0xBC,PC),r8
	mov r4,r12
	add r14,r13
	mov 0x01,r10

loc_8C0A6C56:
	mov 0x01,r5
	mov 0x02,r6
	jsr @r8
	mov r14,r4
	mov r0,r4
	mov 0x01,r3
	mov 0x20,r0
	mov.l @(0xA8,PC),r2
	mov.w @(0x96,PC),r1
	mov.l r2,@(0x10,r4)
	mov.b r3,@(r0,r4)
	mov 0x22,r0
	mov.l @r15,r2
	add r4,r1
	mov.w @(0x88,PC),r5
	mov.l r2,@(0x18,r4)
	mov.w @(0x86,PC),r2
	add r4,r5
	mov.l r9,@(0x14,r4)
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	mov.w @(0x7E,PC),r0
	mov.l @(0x90,PC),r3
	jsr @r3
	add r14,r2
	mov.w @(0x78,PC),r0
	mov r4,r1
	add 0x50,r1
	mov.b r10,@(r0,r4)
	mov.b @(0x2,r14),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x5E,PC),r0
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
	mov.l @(0x5C,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r14),r2
	dt r12
	mov.b r2,@(r0,r4)
	mov 0x31,r0
	mov.b r11,@(r0,r4)
	mov.w @r13,r3
	mov.w r3,@r5
	mov.w @(0x2,r13),r0
	mov.w r0,@(0x2,r5)
	mov.w @(0x4,r13),r0
	mov.w r0,@(0x4,r5)
	mov.w @(0x6,r13),r0
	bf.s loc_8c0a6c56
	mov.w r0,@(0x6,r5)
	mov.w @(0x1C,PC),r4
	mov 0x28,r0
	add r9,r4
	mov.b @(r0,r4),r2
	add 0x02,r2
	mov.b r2,@(r0,r4)

loc_8C0A6CEA:
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

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a6cfe:
	#data 0x0088
loc_8c0a6d00:
	#data 0x00dc
loc_8c0a6d02:
	#data 0x00c0
loc_8c0a6d04:
	#data 0x012c
loc_8c0a6d06:
	#data 0x01a3
	#align4

loc_8C0A6D08:
	#data 0x8c287ae8
loc_8C0A6D0C:
	#data bank04.loc_8c044F12
loc_8C0A6D10:
	#data loc_8c0a620a
loc_8C0A6D14:
	#data bank12.loc_8c129560
loc_8C0A6D18:
	#data bank12.loc_8c1294C8

;==============================================
;unused
loc_8c0a6d1c:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x64,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a6d62
	mov r0,r4
	mov.w @(0x50,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0x50,PC),r3
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

loc_8c0a6d62:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0A6D6A:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0A6D9C,pc),r0 ; r0 set to 0x8C1572B8
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0A6D80:
	mov r4,r3
	mov.l @(loc_8C0A6DA0,pc),r1 ; r1 set to 0x8C1572Bc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a6d92:
	#data 0x3100
	#align4

loc_8C0A6D94:
	#data bank04.loc_8c044F12
loc_8C0A6D98:
	#data loc_8c0a6D6a
loc_8C0A6D9C:
	#data bank15.loc_8c1572B8
loc_8C0A6DA0:
	#data bank15.loc_8c1572Bc

;==============================================
loc_8C0A6DA4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	mov.w @(0x172,PC),r1
	add 0x01,r0
	mov.w @(0x16C,PC),r4
	mov.b r0,@(0x4,r14)
	add r14,r1
	mov.w @(0x168,PC),r2
	add r14,r4
	mov.l @(0x178,PC),r3
	mov.w @(0x164,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x160,PC),r0
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
	mov.w @(0x144,PC),r0
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
	mov.l @(0x140,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov 0x10,r2
	mov.w @(0x11C,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x32,r3
	mov.w @(0x116,PC),r0
	mov 0x00,r5
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
	mov.w r5,@(r0,r14)
	add 0xF2,r0
	mov.b r5,@(r0,r14)
	add 0x26,r0
	mov.l @(0x108,PC),r3
	mov.l r5,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	add 0x7C,r2
	shll r0
	mov.w @(r0,r2),r1
	mov 0x44,r5
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xE2,PC),r0
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov.l @(0xEC,PC),r0
	extu.b r2,r2
	mov.b @(r0,r2),r1
	mov 0x22,r0
	mov.b r1,@(r0,r14)
	mov.w @(0xCE,PC),r0
	mov.w @(r0,r13),r2
	tst r2,r2
	bt loc_8c0a6e7a
	mov 0x22,r0
	mov.b @(r0,r14),r2
	neg r2,r2
	add 0x20,r2
	mov.b r2,@(r0,r14)
	mov 0x1F,r2
	mov.b @(r0,r14),r1
	and r2,r1
	mov.b r1,@(r0,r14)

loc_8C0A6E7A:
	mov 0x3C,r0
	fldi0 fr4
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mova @(0xC0,PC),r0
	ftrc fr3,fpul
	sts fpul,r3
	mov.w r3,@r4
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	ftrc fr2,fpul
	sts fpul,r0
	mov.w r0,@(0x2,r4)
	mov 0x34,r0
	mov.w @r4,r3
	lds r3,fpul
	float fpul,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0x2,r4),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	float fpul,fr2
	fmov fr2,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	mov.w @(0x74,PC),r5
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	mov.l @(0x88,PC),r3
	fmov fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x84,PC),r2
	mov 0x17,r5
	mov 0x01,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A6EDE:
	mov.l r14,@-r15
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x0B,r3 ; r3 set to 0x0b
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov r14,r4
	mov.b @(0x05,r14),r0
	mov.l @(loc_8C0A6F54,pc),r1 ; r1 set to 0x8C1572Cc
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3 ; r3 ??	
	jmp @r3
	mov.l @r15+,r14

loc_8C0A6EF8:
	mov.l r14,@-r15
	mov 0x21,r0 ; r0 set to 0x21
	mov.w @(loc_8C0A6F36,pc),r6 ; r6 set to 0x2A4
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	add r5,r6 ; r6 ??? bc r5 is ???	
	mov r6,r2
	mov.w @(loc_8C0A6F24,pc),r4 ; r4 set to 0xCc
	extu.b r3,r3
	add r2,r3
	mov.b @r3,r1
	add r14,r4 ; r4 ??? bc r14 is ???	
	tst r1,r1
	bf/s loc_8C0A6F58
	mov 0x03,r7 ; r7 set to 0x03
	mov r7,r0 ; r0 set to 0x03
	nop
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A6F24:
	#data 0x00Cc
loc_8C0A6F26:
	#data 0x00Dc
loc_8C0A6F28:
	#data 0x00C0
loc_8C0A6F2a:
	#data 0x012C
loc_8C0A6F2c:
	#data 0x01A3
loc_8C0A6F2e:
	#data 0x013F
loc_8C0A6F30:
	#data 0x019c
loc_8C0A6F32:
	#data 0x0130
loc_8C0A6F34:
	#data 0x1900
loc_8C0A6F36:
	#data 0x02A4
	#align4

loc_8C0A6F38:
	#data bank12.loc_8c129560
loc_8C0A6F3C:
	#data bank12.loc_8c1294C8
loc_8C0A6F40:
	#data 0x8C2896B0
loc_8C0A6F44:
	#data bank15.loc_8c1572A4
loc_8C0A6F48:
	#data 0x43092492
loc_8C0A6F4C:
	#data bank03.loc_8c033674
loc_8C0A6F50:
	#data bank03.loc_8c034e8c
loc_8C0A6F54:
	#data bank15.loc_8c1572Cc

;==============================================
loc_8C0A6F58:
	mov.b @(0x05,r5),r0
	tst r0,r0
	bt loc_8C0A6F78
	mov r7,r0
	nop
	mov.b r0,@(0x04,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	mov r6,r2
	mov 0x00,r1 ; r1 set to 0x00
	extu.b r3,r3
	add r2,r3
	mov.b r1,@r3
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A6F78:
	mov 0x34,r0 ; r0 set to 0x34
	fldi0 fr4
	fmov.s @(r0,r5),fr3
	mova @(loc_8C0A7054,pc),r0  ; r0 set to 0x8C0A7054
	ftrc fr3,fpul
	sts fpul,r3
	mov.w r3,@r4
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	ftrc fr2,fpul
	sts fpul,r0
	mov.w r0,@(0x02,r4)
	mov 0x34,r0 ; r0 set to 0x34
	mov.w @r4,r3
	lds r3,fpul
	float fpul,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(0x02,r4),r0
	mov r0,r3 ; r3 set to 0x34
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38
	float fpul,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	mov.l @(loc_8C0A7058,pc),r3 ; r3 set to 0x8C033674
	mov.w @(loc_8C0A704E,pc),r5 ; r5 set to 0x1900
	fmov.s fr4,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0A705C,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C0A6FF0
	mov.b @(0x05,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	mov.l @(loc_8C0A7060,pc),r2 ; r2 set to 0x8C034F54
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r7
	mov 0x03,r6 ; r6 set to 0x03
	lds.l @r15+,pr
	extu.b r7,r7
	cmp/gt r7,r3
	mov 0x17,r5 ; r5 set to 0x17
	addc r3,r7
	shar r7
	jmp @r2
	mov.l @r15+,r14

loc_8C0A6FF0:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A6FF6:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x21,r0 ; r0 set to 0x21
	mov.l r12,@-r15
	mov r5,r13
	mov.w @(loc_8C0A7050,pc),r12 ; r12 set to 0x2A4
	mov.l r11,@-r15
	add r13,r12 ; r12 ??? bc r13 is ???	
	mov.l r10,@-r15
	mov r12,r2
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.w @(loc_8C0A7052,pc),r10 ; r10 set to 0xCc
	extu.b r3,r3
	add r2,r3
	mov.b @r3,r1
	tst r1,r1
	bf/s loc_8C0A7026
	add r14,r10 ; r10 ??? bc r14 is ???	
	mov 0x03,r0 ; r0 set to 0x03
	bra loc_8C0A717a
	mov.b r0,@(0x04,r14)

loc_8C0A7026:
	mov.b @(0x05,r13),r0
	mov 0x01,r9 ; r9 set to 0x01
	tst r0,r0
	bt/s loc_8C0A7064
	mov 0x00,r11 ; r11 set to 0x00
	mov 0x02,r0 ; r0 set to 0x02
	mov.b r0,@(0x04,r14)
	mov r9,r0 ; r0 set to 0x01
	nop
	mov.b r0,@(0x06,r14)
	mov r11,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x07,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	mov r12,r2
	extu.b r3,r3
	add r2,r3
	bra loc_8C0A717a
	mov.b r11,@r3

;##############################################
loc_8C0A704E:
	#data 0x1900
loc_8C0A7050:
	#data 0x02A4
loc_8C0A7052:
	#data 0x00Cc
	#align4

loc_8C0A7054:
	#data 0x43092492
loc_8C0A7058:
	#data bank03.loc_8c033674
loc_8C0A705C:
	#data bank03.loc_8c034dee
loc_8C0A7060:
	#data bank03.loc_8c034F54

;----------------------------------------------
loc_8c0a7064:
	mov.l @(loc_8c0a7190,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0A718A,pc),r0
	mov.w @(r0,r13),r3
	mov.w @(r0,r14),r2
	cmp/eq r3,r2
	bt loc_8c0a70a0
	mov.w @(r0,r13),r2
	mov.w r2,@(r0,r14) 
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @(loc_8c0a7194,pc),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov 0x22,r0
	mov.b r2,@(r0,r14) 
	mov.w @(loc_8C0A718A,pc),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8c0a70a0
	mov 0x22,r0
	mov.b @(r0,r14),r3
	neg r3,r3
	add 0x20,r3
	mov.b r3,@(r0,r14) 
	mov 0x1F,r3
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14) 

loc_8c0a70a0:
	mov 0x34,r0
	fldi0 fr4
	fmov.s @(r0,r13),fr3
	mova @(loc_8C0A7198,pc),r0 
	ftrc fr3,fpul 
	sts fpul,r1
	mov.w r1,@r10
	fmov.s @r0,fr3
	mov 0x38,r0
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	ftrc fr2,fpul 
	sts fpul,r0
	mov.w r0,@(0x02,r10) 
	mov 0x34,r0
	mov.w @r10,r3
	lds r3,fpul 
	float fpul,fr2
	fmov.s fr2,@(r0,r14) 
	mov.w @(0x02,r10),r0 
	mov r0,r3
	lds r3,fpul 
	mov 0x38,r0
	float fpul,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x5C,r0
	fmov.s fr4,@(r0,r14) 
	mov 0x60,r0
	fmov.s fr4,@(r0,r14) 
	mov 0x68,r0
	fmov.s fr4,@(r0,r14) 
	mov 0x6C,r0
	mov.l @(loc_8c0a719c,pc),r3
	mov.w @(loc_8C0A718C,pc),r5
	fmov.s fr4,@(r0,r14) 
	jsr @r3
	mov r14,r4
	mov 0x21,r0
	mov r12,r3
	mov.b @(r0,r14),r2
	add 0x06,r3
	extu.b r2,r2
	add r3,r2
	mov.b @r2,r1
	tst r1,r1
	bt loc_8c0a7120
	mov.b @(r0,r14),r1
	mov r12,r3
	add 0x06,r3
	extu.b r1,r1
	add r3,r1
	mov r12,r3
	mov.b r11,@r1
	mov.b @(r0,r14),r2
	extu.b r2,r2
	add r3,r2
	mov.b r11,@r2
	mov.b @(0x05,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
	mov r11,r0
	nop 
	bra loc_8c0a715e
	mov.b r0,@(0x06,r14) 

loc_8c0a7120:
	mov.b @(0x0C,r12),r0 
	tst r0,r0
	bt loc_8c0a717a
	mov 0x21,r0
	mov r12,r2
	mov.b @(r0,r14),r3
	mov.w @(loc_8C0A718E,pc),r0
	extu.b r3,r3
	add r2,r3
	mov.b r11,@r3
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14) 
	mov.b @(r0,r14),r0
	extu.b r0,r0
	cmp/eq 0x00,r0 
	bt loc_8c0a714c
	cmp/eq 0x01,r0 
	bt loc_8c0a714c
	cmp/eq 0x02,r0 
	bt loc_8c0a7150
	bra loc_8c0a7154
	nop 

loc_8c0a714c:
	bra loc_8c0a7156
	mov r9,r0

loc_8c0a7150:
	bra loc_8c0a7156
	mov 0x02,r0

loc_8c0a7154:
	mov 0x03,r0

loc_8c0a7156:
	mov.b r0,@(0x06,r14) 
	mov.b @(0x05,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x05,r14) 

loc_8c0a715e:
	mov r11,r0
	nop
	mov r13,r4
	mov.l @(loc_8c0a71a0,pc),r3
	mov.b r0,@(0x07,r14) 
	mov 0x21,r5
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0A717A:
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a718a:
	#data 0x0130
loc_8c0a718c:
	#data 0x1900
loc_8c0a718e:
	#data 0x01A3
	#align4

loc_8C0A7190:
	#data bank03.loc_8c034dee
loc_8C0A7194:
	#data bank15.loc_8c1572A4
loc_8c0a7198:
	#data 0x43092492
loc_8C0A719C:
	#data bank03.loc_8c033674
loc_8C0A71A0:
	#data bank04.loc_8c042008

;==============================================
loc_8C0A71A4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x120,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c0a71c2
	mov.l @(0x114,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0a71ce

loc_8C0A71C2:
	mov 0x03,r0
	mov.b r0,@(0x4,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A71CE:
	mov 0x38,r0
	mov.l @r15,r3
	fmov @(r0,r14),fr3
	mov.w @(0xE8,PC),r0
	fmov @(r0,r3),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0a71ee
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r0
	mov.b r0,@(0x6,r14)
	mov.b r0,@(0x7,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A71EE:
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(0xE0,PC),r1
	extu.b r0,r0
	mov.l @r15,r5
	shll2 r0
	mov.l @(r0,r1),r3
	add 0x04,r15
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A720C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	tst r0,r0
	bf loc_8C0A7248
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0A72C2,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C0A7234
	mov 0x0C,r7 ; r7 set to 0x0c
	mov 0x22,r0 ; r0 set to 0x22
	mov 0x18,r3 ; r3 set to 0x18
	bra loc_8C0A723a
	mov.b r3,@(r0,r14)

loc_8C0A7234:
	mov 0x22,r0 ; r0 set to 0x22
	mov 0x08,r1 ; r1 set to 0x08
	mov.b r1,@(r0,r14)

loc_8C0A723A:
	mov.l @(loc_8C0A72D8,pc),r3 ; r3 set to 0x8C034F54, r3 set to 0x8C034F54
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03
	jsr @r3
	mov r14,r4
	bra loc_8C0A7250
	nop

loc_8C0A7248:
	mov.l @(loc_8C0A72DC,pc),r3 ; r3 set to 0x8C033674
	mov.w @(loc_8C0A72C4,pc),r5 ; r5 set to 0x2Bc
	jsr @r3
	mov r14,r4

loc_8C0A7250:
	mov.l @r15,r5 ; r5 ??? bc r15 is ???	
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0A76C0
	mov.l @r15+,r14

loc_8C0A725C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(0x5C,PC),r13
	mov.l r5,@r15
	mov.b @(0x7,r14),r0
	tst r0,r0
	bf.s loc_8c0a72e8
	add r14,r13
	mov.b @(0x7,r14),r0
	mov.l @(0x6C,PC),r4
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0x64,PC),r0
	fmov @r0,fr4
	mov.w @(0x46,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	mov.b @(r0,r4),r0
	lds r0,fpul
	float fpul,fr3
	fmov fr3,fr2
	fmul fr4,fr2
	ftrc fr2,fpul
	sts fpul,r0
	mov.w r0,@(0x4,r13)
	mov.w @(0x28,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0a72a4
	mov.w @(0x4,r13),r0
	neg r0,r0
	mov.w r0,@(0x4,r13)

loc_8C0A72A4:
	mov.w @(0x20,PC),r0
	mov 0x01,r1
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	add r4,r0
	mov.b @(r0,r1),r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	ftrc fr3,fpul
	sts fpul,r0
	bra loc_8c0a7386
	mov.w r0,@(0x6,r13)

;##############################################
loc_8c0a72c0:
	#data 0x041c
loc_8c0a72c2:
	#data 0x0130
loc_8c0a72c4:
	#data 0x02bc
loc_8c0a72c6:
	#data 0x00cc
loc_8c0a72c8:
	#data 0x01a3
	#align4

loc_8C0A72CC:
	#data bank03.loc_8c03340c
loc_8C0A72D0:
	#data bank03.loc_8c0335B0
loc_8C0A72D4:
	#data bank15.loc_8c1572D8
loc_8C0A72D8:
	#data bank03.loc_8c034F54
loc_8C0A72DC:
	#data bank03.loc_8c033674
loc_8C0A72E0:
	#data work.CpsXScale
loc_8C0A72E4:
	#data bank15.loc_8c1572Aa


;==============================================
loc_8C0A72E8:
	mov.w @(0x108,PC),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8c0a72f8
	mov 0x22,r0
	mov.b @(r0,r14),r3
	bra loc_8c0a72fe
	add 0xFF,r3

loc_8C0A72F8:
	mov 0x22,r0
	mov.b @(r0,r14),r3
	add 0x01,r3

loc_8C0A72FE:
	mov.b r3,@(r0,r14)
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov 0x1F,r3
	and r3,r2
	mov.b r2,@(r0,r14)
	mov.w @(0xE6,PC),r0
	mov.w @(r0,r14),r1
	tst r1,r1
	bf.s loc_8c0a7326
	mov 0x0F,r3
	mov 0x22,r0
	mov.b @(r0,r14),r7
	mov 0x00,r2
	extu.b r7,r7
	cmp/gt r7,r2
	addc r2,r7
	shar r7
	bra loc_8c0a7338
	add 0xFC,r7

loc_8C0A7326:
	mov 0x22,r0
	mov.b @(r0,r14),r7
	mov 0x00,r2
	extu.b r7,r7
	cmp/gt r7,r2
	addc r2,r7
	shar r7
	neg r7,r7
	add 0x0C,r7

loc_8C0A7338:
	mov.l @(0xC0,PC),r2
	mov 0x17,r5
	and r3,r7
	mov 0x03,r6
	jsr @r2
	mov r14,r4
	mov.w @r13,r3
	mov.w @(0x4,r13),r0
	fldi0 fr4
	add r0,r3
	mov.w @(0xA6,PC),r5
	mov.w r3,@r13
	mov.w @(0x6,r13),r0
	mov r0,r3
	mov.w @(0x2,r13),r0
	add r3,r0
	mov.w r0,@(0x2,r13)
	mov 0x34,r0
	mov.w @r13,r3
	lds r3,fpul
	float fpul,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x2,r13),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	mov.l @(0x90,PC),r3
	float fpul,fr3
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

loc_8C0A7386:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0a76c0
	mov.l @r15+,r14

loc_8C0A7394:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(loc_8C0A73F8,pc),r13 ; r13 set to 0xCc
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	tst r0,r0
	bf/s loc_8C0A73B6
	add r14,r13 ; r13 ??? bc r14 is ???	
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0A73FA,pc),r0 ; r0 set to 0x1900
	bra loc_8C0A7458
	nop

loc_8C0A73B6:
	mov.w @(loc_8C0A73F4,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bf loc_8C0A73C6
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r3
	bra loc_8C0A73Cc
	add 0xFF,r3

loc_8C0A73C6:
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r3
	add 0x01,r3

loc_8C0A73CC:
	mov.b r3,@(r0,r14)
	mov 0x22,r0 ; r0 set to 0x22, r0 set to 0x22
	mov.b @(r0,r14),r2
	mov 0x1F,r3 ; r3 set to 0x1F, r3 set to 0x1f
	and r3,r2
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0A73F4,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r1
	tst r1,r1
	bf/s loc_8C0A7404
	mov 0x0F,r3 ; r3 set to 0x0F, r3 set to 0x0f
	mov 0x22,r0 ; r0 set to 0x22, r0 set to 0x22
	mov.b @(r0,r14),r7
	mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
	extu.b r7,r7
	cmp/gt r7,r2
	addc r2,r7
	shar r7
	bra loc_8C0A7416
	add 0xFC,r7

;##############################################
loc_8C0A73F4:
	#data 0x0130
loc_8C0A73F6:
	#data 0x0FA0
loc_8C0A73F8:
	#data 0x00Cc
loc_8C0A73FA:
	#data 0x1900
	#align4

loc_8C0A73FC:
	#data bank03.loc_8c034F54
loc_8C0A7400:
	#data bank03.loc_8c033674

;==============================================
loc_8C0A7404:
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r7
	mov 0x00,r2 ; r2 set to 0x00
	extu.b r7,r7
	cmp/gt r7,r2
	addc r2,r7
	shar r7
	neg r7,r7
	add 0x0C,r7

loc_8C0A7416:
	mov.l @(loc_8C0A7524,pc),r2 ; r2 set to 0x8C034F54, r2 set to 0x8C034F54
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	and r3,r7
	mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03
	jsr @r2
	mov r14,r4
	mov.w @r13,r3
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fldi0 fr4
	lds r3,fpul
	float fpul,fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(0x02,r13),r0
	mov r0,r3 ; r3 set to 0x34, r3 set to 0x34
	lds r3,fpul
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	mov.l @(loc_8C0A7528,pc),r3 ; r3 set to 0x8C033674, r3 set to 0x8C033674
	float fpul,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov.w @(0x08,r13),r0
	mov r0,r5 ; r5 set to 0x6C, r5 set to 0x6c
	jsr @r3
	mov r14,r4
	mov.w @(0x08,r13),r0
	add 0x64,r0 ; r0 set to 0xD0, r0 set to 0xD0

loc_8C0A7458:
	mov r14,r4
	mov.w r0,@(0x08,r13)
	mov.l @r15,r5 ; r5 ??? bc r15 is ???, r5 ??? bc r15 is ???	
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0A76C0
	mov.l @r15+,r14

loc_8C0A7468:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	tst r0,r0
	bf loc_8C0A74Ba
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0A751C,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0A7496
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r7
	mov 0x00,r3 ; r3 set to 0x00
	extu.b r7,r7
	cmp/gt r7,r3
	addc r3,r7
	bra loc_8C0A74A8
	shar r7

loc_8C0A7496:
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r7
	mov 0x00,r3 ; r3 set to 0x00
	extu.b r7,r7
	cmp/gt r7,r3
	addc r3,r7
	shar r7
	neg r7,r7
	add 0x10,r7

loc_8C0A74A8:
	mov.l @(loc_8C0A7524,pc),r3 ; r3 set to 0x8C034F54, r3 set to 0x8C034F54
	mov 0x0F,r2 ; r2 set to 0x0F, r2 set to 0x0f
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	and r2,r7
	mov 0x03,r6 ; r6 set to 0x03, r6 set to 0x03
	jsr @r3
	mov r14,r4
	bra loc_8C0A74C2
	nop

loc_8C0A74BA:
	mov.l @(loc_8C0A7528,pc),r3 ; r3 set to 0x8C033674
	mov.w @(loc_8C0A751E,pc),r5 ; r5 set to 0x2Bc
	jsr @r3
	mov r14,r4

loc_8C0A74C2:
	mov.l @r15,r5 ; r5 ??? bc r15 is ???	
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0A76C0
	mov.l @r15+,r14

loc_8C0A74CE:
	mov r4,r3
	mov.l @(loc_8C0A752C,pc),r1 ; r1 set to 0x8C1572E8
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0A74E0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	tst r0,r0
	bf loc_8C0A7500
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_8C0A7530,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x02,r6 ; r6 set to 0x02
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x17,r5 ; r5 set to 0x17
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c0a7500:
	mov.l @(loc_8c0a7534,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0a7516
	mov.w @(loc_8C0A7520,pc),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14) 
	mov 0x03,r0
	mov.b r0,@(0x04,r14) 

loc_8c0a7516:
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a751c:
	#data 0x0130
loc_8c0a751e:
	#data 0x02BC
loc_8C0A7520:
	#data 0x012C
	#align4

loc_8c0a7524:
	#data bank03.loc_8c034f54
loc_8c0a7528:
	#data bank03.loc_8c033674
loc_8c0a752c:
	#data bank15.loc_8c1572e8
loc_8c0a7530:
	#data bank03.loc_8c034e8c
loc_8c0a7534:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0A7538:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	tst r0,r0
	bf loc_8C0A7584
	mov.b @(0x07,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.w @(loc_8C0A7650,pc),r5 ; r5 set to 0x258
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0A7658,pc),r1 ; r1 set to 0x8C033674
	neg r3,r3
	add 0x20,r3
	mov.b r3,@(r0,r14)
	mov 0x1F,r3 ; r3 set to 0x1f
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	jsr @r1
	mov r14,r4
	mova @(loc_8C0A765C,pc),r0  ; r0 set to 0x8C0A765c
	fmov.s @r0,fr3 ; r3 ??	
	mov 0x6C,r0 ; r0 set to 0x6c
	bra loc_8C0A75F4
	fmov.s fr3,@(r0,r14)

loc_8C0A7584:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C0A7660,pc),r3 ; r3 set to 0x8C034DEe
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
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0A7664,pc),r2 ; r2 set to 0x8C03340c
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8C0A75D8
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x04,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a75d8:
	mov 0x38,r0
	mov.l @r15,r3
	fmov.s @(r0,r14),fr3
	mov.w @(loc_8C0A7652,pc),r0
	fmov.s @(r0,r3),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0a75f4
	mov 0x02,r0
	mov 0x00,r4
	mov.b r0,@(0x04,r14) 
	mov r4,r0
	nop 
	mov.b r0,@(0x06,r14) 
	mov.b r0,@(0x07,r14) 

loc_8C0A75F4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A75FC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	tst r0,r0
	bf loc_8C0A766c
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0A7654,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0A7626
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r7
	mov 0x00,r3 ; r3 set to 0x00
	extu.b r7,r7
	cmp/gt r7,r3
	addc r3,r7
	bra loc_8C0A7638
	shar r7

loc_8C0A7626:
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r7
	mov 0x00,r3 ; r3 set to 0x00
	extu.b r7,r7
	cmp/gt r7,r3
	addc r3,r7
	shar r7
	neg r7,r7
	add 0x10,r7

loc_8C0A7638:
	mov.l @(loc_8C0A7668,pc),r3 ; r3 set to 0x8C034F54, r3 set to 0x8C034F54
	mov 0x0F,r2 ; r2 set to 0x0F, r2 set to 0x0f
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	and r2,r7
	mov 0x04,r6 ; r6 set to 0x04, r6 set to 0x04
	jsr @r3
	mov r14,r4
	mov 0x14,r0 ; r0 set to 0x14, r0 set to 0x14
	mov.w r0,@(0x1C,r14)
	mov 0x07,r0 ; r0 set to 0x07, r0 set to 0x07
	bra loc_8C0A76Ae
	mov.w r0,@(0x1E,r14)

;##############################################
loc_8C0A7650:
	#data 0x0258
loc_8c0a7652:
	#data 0x041c
loc_8C0A7654:
	#data 0x0130
	#align4

loc_8C0A7658:
	#data bank03.loc_8c033674
loc_8C0A765C:
	#data 0xBF4DB6Db
loc_8C0A7660:
	#data bank03.loc_8c034dee
loc_8C0A7664:
	#data bank03.loc_8c03340c
loc_8C0A7668:
	#data bank03.loc_8c034F54

;----------------------------------------------
loc_8c0a766c:
	mov.w @(loc_8C0A770E,pc),r0
	mov.l @(r0,r14),r2
	mov 0x34,r0
	fmov.s @(r0,r2),fr3
	fmov.s fr3,@(r0,r14) 
	mov.w @(0x1E,r14),r0 
	tst r0,r0
	bt loc_8c0a7696
	mov.w @(0x1E,r14),r0 
	mov 0x34,r2
	mov.l @(loc_8c0a7718,pc),r1
	add r14,r2
	fmov.s @r2,fr2
	mov.b @(r0,r1),r3
	lds r3,fpul 
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	mov.w @(0x1E,r14),r0 
	add 0xFF,r0
	mov.w r0,@(0x1E,r14) 

loc_8c0a7696:
	mov.w @(0x1C,r14),r0 
	add 0xFF,r0
	mov.w r0,@(0x1C,r14) 
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0a76ae
	mov.w @(loc_8c0a7710,pc),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14) 
	mov 0x03,r0
	mov.b r0,@(0x04,r14) 

loc_8C0A76AE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A76B4:
	mov.w @(loc_8C0A7710,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0A771C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;----------------------------------------------
loc_8c0a76c0:
	mov.w @(loc_8C0A7712,pc),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf/s loc_8c0a76ee
	mov 0x02,r13
	mov.l @(loc_8c0a7720,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0A7714,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0a7706
	mov.b @(r0,r14),r4
	mov 0x01,r3
	tst r4,r3
	bf loc_8c0a76ee
	mov 0x10,r1
	tst r4,r1
	bt loc_8c0a76fa

loc_8c0a76ee:
	mov r13,r0
	nop 
	mov.b r0,@(0x04,r14) 
	mov 0x01,r0
	bra loc_8c0a7702
	mov.b r0,@(0x06,r14) 

loc_8c0a76fa:
	mov r13,r0
	nop 
	mov.b r0,@(0x04,r14) 
	mov.b r0,@(0x06,r14) 

loc_8c0a7702:
	mov 0x00,r0
	mov.b r0,@(0x07,r14)

loc_8c0a7706:
	lds.l @r15+,pr 
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a770e:
	#data 0x01B0
loc_8c0a7710:
	#data 0x012C
loc_8C0A7712:
	#data 0x019F
loc_8C0A7714:
	#data 0x019E
	#align4

loc_8c0a7718:
	#data bank15.loc_8C1572AE
loc_8c0a771c:
	#data bank04.loc_8C0450C0
loc_8c0a7720:
	#data bank04.loc_8c045748

;==============================================
;unused
loc_8c0a7724:
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
	bt.s loc_8c0a776a
	mov r0,r4
	mov.w @(0xE0,PC),r2
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

loc_8c0a776a:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;==============================================
loc_8C0A7772:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0A7840,pc),r0 ; r0 set to 0x8C157314
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0A7788:
	mov r4,r3
	mov.l @(loc_8C0A7844,pc),r1 ; r1 set to 0x8C157318
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0A779A:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov 0x00,r12 ; r12 set to 0x00
	mov.w @(loc_8C0A782C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0A782C,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0A7848,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0A782E,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0A7830,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0A7832,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A784C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	mov.b r2,@(r0,r14)
	mov 0x10,r2 ; r2 set to 0x10
	mov.w @(loc_8C0A7830,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov.w @(loc_8C0A7834,pc),r0 ; r0 set to 0x13f
	mov.b r2,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13e
	mov.b r2,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13d
	mov.b r2,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13c
	mov.b r2,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r5
	extu.b r5,r5
	tst r4,r5
	bt loc_8C0A7850
	mov.w @(loc_8C0A7836,pc),r0 ; r0 set to 0x1A1
	mov 0x3B,r2 ; r2 set to 0x3b
	bra loc_8C0A7856
	mov.b r2,@(r0,r14)

;==============================================
loc_8c0a782a:
	#data 0x3101
loc_8C0A782C:
	#data 0x00Dc
loc_8C0A782E:
	#data 0x00C0
loc_8C0A7830:
	#data 0x012c
loc_8C0A7832:
	#data 0x01A3
loc_8C0A7834:
	#data 0x013f
loc_8C0A7836:
	#data 0x01A1
	#align4

loc_8C0A7838:
	#data bank04.loc_8c044F12
loc_8C0A783C:
	#data loc_8c0a7772
loc_8C0A7840:
	#data bank15.loc_8c157314
loc_8C0A7844:
	#data bank15.loc_8c157318
loc_8C0A7848:
	#data bank12.loc_8c129560
loc_8C0A784C:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0a7850:
	mov.w @(loc_8C0A79A0,pc),r0
	mov 0x3C,r3
	mov.b r3,@(r0,r14)

loc_8c0a7856:
	mov.w @(loc_8C0A79A2,pc),r0
	mov 0x44,r4
	mov.l @(loc_8C0A79A8,pc),r3
	mov.w r12,@(r0,r14) 
	add 0xF2,r0
	mov.b r12,@(r0,r14) 
	add 0x26,r0
	mov.l r12,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	mov 0x18,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov.w @(loc_8C0A79A4,pc),r0
	mov.b r4,@(r0,r14) 
	add 0x01,r0
	mov.b r4,@(r0,r14) 
	add 0x93,r0
	mov.w r12,@(r0,r14) 
	mov 0x22,r0
	mov.b r3,@(r0,r14) 
	mov.w @(loc_8c0a79a6,pc),r0
	mov.w @(r0,r13),r2
	tst r2,r2
	bt loc_8c0a78a2
	mov 0x22,r0
	mov.b @(r0,r14),r2
	mov 0x1F,r3
	neg r2,r2
	add 0x20,r2
	mov.b r2,@(r0,r14) 
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14) 

loc_8c0a78a2:
	mov 0x34,r0
	mov.l @(loc_8c0a79ac,pc),r4
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll r3
	shll r3
	add r4,r3
	mov.w @(0x02,r3),r0 
	mov r0,r3
	lds r3,fpul 
	mov 0x38,r0
	fmov.s @(r0,r13),fr2
	mova @(loc_8C0A79B0,pc),r0 
	float fpul,fr3
	fmov.s @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x3C,r0
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	shll r0
	mov.w @(r0,r4),r3
	lds r3,fpul 
	float fpul,fr3
	mova @(loc_8C0A79B4,pc),r0 
	fmov.s @r0,fr2
	mov 0x5C,r0
	fmul fr2,fr3
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8c0a79a6,pc),r0
	mov.w @(r0,r13),r3
	tst r3,r3
	bt loc_8c0a78fc
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14) 

loc_8c0a78fc:
	mov 0x5C,r1
	mov.l @(loc_8c0a79b8,pc),r3
	add r14,r1
	mov 0x34,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	mov 0x17,r5
	mov 0x01,r6
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr 
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A7920:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(loc_8C0A79BC,pc),r1 ; r1 set to 0x8C157328
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0A793A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0A79C0,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0A799a
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0A79A6,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bf loc_8C0A7968
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r7
	mov 0x00,r3 ; r3 set to 0x00
	extu.b r7,r7
	cmp/gt r7,r3
	addc r3,r7
	bra loc_8C0A797a
	shar r7

loc_8c0a7968:
	mov 0x22,r0
	mov.b @(r0,r14),r7
	mov 0x00,r3
	extu.b r7,r7
	cmp/gt r7,r3
	addc r3,r7
	shar r7
	neg r7,r7
	add 0x10,r7

loc_8c0a797a:
	mov.l @(loc_8c0a79c4,pc),r3
	mov 0x0F,r2
	mov 0x17,r5
	and r2,r7
	mov 0x03,r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0a79c8,pc),r2
	jsr @r2
	nop 
	mov 0x07,r4
	and r0,r4
	add 0x04,r4
	mov r4,r0
	nop 
	mov.w r0,@(0x1C,r14) 

loc_8C0A799A:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a79a0:
	#data 0x01A1
loc_8c0a79a2:
	#data 0x01AC
loc_8c0a79a4:
	#data 0x019c
loc_8C0A79A6:
	#data 0x0130
	#align4

loc_8c0a79a8:
	#data 0x8C2896B0
loc_8C0A79AC:
	#data bank15.loc_8c1572F4
loc_8c0a79b0:
	#data work.CpsYScale
loc_8c0a79b4:
	#data work.CpsXScale
loc_8C0A79B8:
	#data bank03.loc_8c034e8c
loc_8C0A79BC:
	#data bank15.loc_8c157328
loc_8C0A79C0:
	#data bank03.loc_8c034dee
loc_8C0A79C4:
	#data bank03.loc_8c034F54
loc_8C0A79C8:
	#data bank03.loc_8c03319e

;==============================================
loc_8C0A79CC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0a7a04
	mov.b @(0x5,r14),r0
	mov 0x21,r5
	mov.l @(0x128,PC),r3
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov.l @r15,r4
	mov 0x5C,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)

loc_8C0A7A04:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A7A0C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x104,PC),r3
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c0a7a2a
	mov.l @(0xF8,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0a7a36

loc_8C0A7A2A:
	mov 0x03,r0
	mov.b r0,@(0x4,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A7A36:
	mov 0x38,r0
	mov.l @r15,r3
	fmov @(r0,r14),fr3
	mov.w @(0xCC,PC),r0
	fmov @(r0,r3),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0a7a56
	mov 0x02,r0
	mov.b r0,@(0x4,r14)
	mov 0x00,r0
	mov.b r0,@(0x6,r14)
	mov.b r0,@(0x7,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A7A56:
	mov.l @(0xC8,PC),r3
	mov.w @(0xB2,PC),r5
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0a7c70
	mov.l @r15+,r14
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A7A72:
	mov r4,r3
	mov.l @(loc_8C0A7B24,pc),r1 ; r1 set to 0x8C157334
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0A7A84:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	tst r0,r0
	bf loc_8C0A7AA4
	mov.b @(0x07,r14),r0
	mov r14,r4
	mov.l @(loc_8C0A7B28,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x02,r6 ; r6 set to 0x02
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov 0x17,r5 ; r5 set to 0x17
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8c0a7aa4:
	mov.l @(loc_8c0a7b2c,pc),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0a7aba
	mov.w @(loc_8C0A7B10,pc),r0
	mov 0x00,r3
	mov.b r3,@(r0,r14) 
	mov 0x03,r0
	mov.b r0,@(0x04,r14) 

loc_8c0a7aba:
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A7AC0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.b @(0x07,r14),r0
	tst r0,r0
	bf loc_8C0A7B34
	mov.b @(0x07,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.w @(loc_8C0A7B12,pc),r5 ; r5 set to 0x258
	mov.b r0,@(0x07,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0A7B20,pc),r1 ; r1 set to 0x8C033674
	neg r3,r3
	add 0x20,r3
	mov.b r3,@(r0,r14)
	mov 0x1F,r3 ; r3 set to 0x1f
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	jsr @r1
	mov r14,r4
	mova @(loc_8C0A7B30,pc),r0  ; r0 set to 0x8C0A7B30
	fmov.s @r0,fr3 ; r3 ??	
	mov 0x6C,r0 ; r0 set to 0x6c
	bra loc_8C0A7BA4
	fmov.s fr3,@(r0,r14)

;##############################################
loc_8c0a7b0c:
	#data 0x041c
loc_8c0a7b0e:
	#data 0x03E8
loc_8c0a7b10:
	#data 0x012c
loc_8C0A7B12:
	#data 0x0258
	#align4

loc_8C0A7B14:
	#data bank04.loc_8c042008
loc_8C0A7B18:
	#data bank03.loc_8c03340c
loc_8C0A7B1C:
	#data bank03.loc_8c0335B0
loc_8C0A7B20:
	#data bank03.loc_8c033674
loc_8C0A7B24:
	#data bank15.loc_8c157334
loc_8C0A7B28:
	#data bank03.loc_8c034e8c
loc_8C0A7B2C:
	#data bank03.loc_8c034dee
loc_8C0A7B30:
	#data 0xBF4DB6Db

;===============================================
loc_8C0A7B34:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C0A7C5C,pc),r3 ; r3 set to 0x8C034DEe
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
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0A7C60,pc),r2 ; r2 set to 0x8C03340c
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8C0A7B88
	mov 0x03,r0 ; r0 set to 0x03
	mov.b r0,@(0x04,r14)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a7b88:
	mov 0x38,r0
	mov.l @r15,r3
	fmov.s @(r0,r14),fr3
	mov.w @(loc_8C0A7C54,pc),r0
	fmov.s @(r0,r3),fr2
	fcmp/gt fr3,fr2
	bf loc_8c0a7ba4
	mov 0x02,r0
	mov 0x00,r4
	mov.b r0,@(0x04,r14)
	mov r4,r0
	nop 
	mov.b r0,@(0x06,r14)
	mov.b r0,@(0x07,r14)

loc_8C0A7BA4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A7BAC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x07,r14),r0
	tst r0,r0
	bf loc_8C0A7C00
	mov.b @(0x07,r14),r0
	add 0x01,r0
	mov.b r0,@(0x07,r14)
	mov.w @(loc_8C0A7C56,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0A7BD6
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r7
	mov 0x00,r3 ; r3 set to 0x00
	extu.b r7,r7
	cmp/gt r7,r3
	addc r3,r7
	bra loc_8C0A7BE8
	shar r7

loc_8C0A7BD6:
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r7
	mov 0x00,r3 ; r3 set to 0x00
	extu.b r7,r7
	cmp/gt r7,r3
	addc r3,r7
	shar r7
	neg r7,r7
	add 0x10,r7

loc_8C0A7BE8:
	mov.l @(loc_8C0A7C64,pc),r3 ; r3 set to 0x8C034F54, r3 set to 0x8C034F54
	mov 0x0F,r2 ; r2 set to 0x0F, r2 set to 0x0f
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	and r2,r7
	mov 0x04,r6 ; r6 set to 0x04, r6 set to 0x04
	jsr @r3
	mov r14,r4
	mov 0x14,r0 ; r0 set to 0x14, r0 set to 0x14
	mov.w r0,@(0x1C,r14)
	mov 0x07,r0 ; r0 set to 0x07, r0 set to 0x07
	bra loc_8C0A7C42
	mov.w r0,@(0x1E,r14)

loc_8c0a7c00:
	mov.w @(loc_8C0A7C58,pc),r0
	mov.l @(r0,r14),r2
	mov 0x34,r0
	fmov.s @(r0,r2),fr3
	fmov.s fr3,@(r0,r14) 
	mov.w @(0x1E,r14),r0 
	tst r0,r0
	bt loc_8c0a7c2a
	mov.w @(0x1E,r14),r0 
	mov 0x34,r2
	mov.l @(loc_8c0a7c68,pc),r1
	add r14,r2
	fmov.s @r2,fr2
	mov.b @(r0,r1),r3
	lds r3,fpul 
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	mov.w @(0x1E,r14),r0 
	add 0xFF,r0
	mov.w r0,@(0x1E,r14) 

loc_8c0a7c2a:
	mov.w @(0x1C,r14),r0 
	add 0xFF,r0
	mov.w r0,@(0x1C,r14) 
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0a7c42
	mov.w @(loc_8c0a7c5a,pc),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14) 
	mov 0x03,r0
	mov.b r0,@(0x04,r14) 

loc_8C0A7C42:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A7C48:
	mov.w @(loc_8C0A7C5A,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0A7C6C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8c0a7c54:
	#data 0x041c
loc_8C0A7C56:
	#data 0x0130
loc_8c0a7c58:
	#data 0x01B0
loc_8C0A7C5A:
	#data 0x012c
	#align4

loc_8C0A7C5C:
	#data bank03.loc_8c034dee
loc_8C0A7C60:
	#data bank03.loc_8c03340c
loc_8C0A7C64:
	#data bank03.loc_8c034F54
loc_8C0A7C68:
	#data bank15.loc_8c15730c
loc_8C0A7C6C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0A7C70:
	mov.w @(0x4A,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0a7c9e
	mov 0x02,r13
	mov.l @(0x40,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0x34,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0a7cb6
	mov.b @(r0,r14),r4
	mov 0x01,r3
	tst r4,r3
	bf loc_8c0a7c9e
	mov 0x10,r1
	tst r4,r1
	bt loc_8c0a7caa

loc_8C0A7C9E:
	mov r13,r0
	nop
	mov.b r0,@(0x4,r14)
	mov 0x01,r0
	bra loc_8c0a7cb2
	mov.b r0,@(0x6,r14)

loc_8C0A7CAA:
	mov r13,r0
	nop
	mov.b r0,@(0x4,r14)
	mov.b r0,@(0x6,r14)

loc_8C0A7CB2:
	mov 0x00,r0
	mov.b r0,@(0x7,r14)

loc_8C0A7CB6:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a7cbe:
	#data 0x019f
loc_8c0a7cc0:
	#data 0x019e
	#align4

loc_8C0A7CC4:
	#data bank04.loc_8c045748

;===========================
;unused
loc_8c0a7cc8:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0xC0,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a7d0e
	mov r0,r4
	mov.w @(0xAC,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0xAC,PC),r3
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

loc_8c0a7d0e:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c0a7d16:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov r5,r0
	nop 
	mov.b r0,@(0x08,r15) 
	mov r6,r0
	nop 
	mov 0x01,r6
	mov.l @(loc_8c0a7d9c,pc),r3
	mov.b r0,@(0x04,r15) 
	mov r6,r5
	mov.b r7,@r15
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0a7d66
	mov r0,r4
	mov.w @(loc_8C0A7D9A,pc),r2
	mov 0x26,r0
	mov.l @(loc_8c0a7da0,pc),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4) 
	mov.w r2,@(r0,r4) 
	mov 0x21,r2
	mov.l @(0x18,r14),r3
	add r4,r2
	mov.l r3,@(0x18,r4) 
	mov.l r14,@(0x14,r4) 
	mov.b @(0x01,r14),r0 
	mov.b r0,@(0x01,r4) 
	mov.b @(0x08,r15),r0 
	mov.b r0,@r1
	mov.b @(0x04,r15),r0 
	mov.b r0,@r2
	mov 0x23,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4) 

loc_8c0a7d66:
	mov r4,r0
	nop 
	add 0x0C,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

loc_8C0A7D72:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0A7DA4,pc),r0 ; r0 set to 0x8C157348
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0A7D88:
	mov r4,r3
	mov.l @(loc_8C0A7DA8,pc),r1 ; r1 set to 0x8C157354
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a7d9a:
	#data 0x3300
	#align4

loc_8C0A7D9C:
	#data bank04.loc_8c044F12
loc_8C0A7DA0:
	#data loc_8c0a7D72
loc_8C0A7DA4:
	#data bank15.loc_8c157348
loc_8C0A7DA8:
	#data bank15.loc_8c157354

;==============================================
loc_8C0A7DAC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.w @(0x11A,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x112,PC),r2
	add 0x01,r0
	mov.l @(0x120,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x10C,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x108,PC),r0
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
	mov.w @(0xEC,PC),r0
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
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFE,r3
	mov 0x00,r4
	mov.b r2,@(r0,r14)
	mov.w @(0xC4,PC),r0
	mov.b r12,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.w @(0xBE,PC),r0
	mov.l @(0xD0,PC),r3
	mov.b @(r0,r14),r2
	add 0xFE,r0
	add 0x35,r2
	mov.b r2,@(r0,r14)
	add 0x0B,r0
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
	mov.w @(0x96,PC),r0
	mov.b r4,@(r0,r14)
	mov.l @(0xA8,PC),r2
	add 0x01,r0
	mov 0x17,r5
	mov.b r4,@(r0,r14)
	mov 0x05,r6
	jsr @r2
	mov r14,r4
	mov r12,r0
	nop
	mov.l @(0x98,PC),r3
	mov 0x23,r5
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A7E6E:
	mov 0x24,r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov.w @(0x62,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8c0a7e88
	mov.b @(0x5,r5),r0
	tst r0,r0
	bt loc_8c0a7e94

loc_8C0A7E88:
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	bra loc_8c0a827c
	mov.l @r15+,r14

loc_8C0A7E94:
	mov 0x34,r0
	mov.l @(0x64,PC),r6
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mova @(0x4C,PC),r0
	fmov @r0,fr4
	mov.w @(0x30,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0a7f00
	mov r6,r4
	mov 0x21,r3
	fmov fr4,fr0
	add r14,r3
	mov.b @r3,r3
	mov 0x34,r0
	fmov @(r0,r14),fr2
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r4
	mov.w @r4,r3
	lds r3,fpul
	float fpul,fr3
	bra loc_8c0a7f1c
	fmac fr0,fr3,fr2

;##############################################
loc_8c0a7ed4:
	#data 0x00dc
loc_8c0a7ed6:
	#data 0x00c0
loc_8c0a7ed8:
	#data 0x012c
loc_8c0a7eda:
	#data 0x01a3
loc_8c0a7edc:
	#data 0x019c
loc_8c0a7ede:
	#data 0x0159
loc_8c0a7ee0:
	#data 0x0130
	#align4

loc_8C0A7EE4:
	#data bank12.loc_8c129560
loc_8C0A7EE8:
	#data bank12.loc_8c1294C8
loc_8C0A7EEc:
	#data 0x8C2896B0
loc_8C0A7EF0:
	#data bank03.loc_8c034e8c
loc_8C0A7EF4:
	#data bank04.loc_8c042008
loc_8C0A7EF8:
	#data work.CpsXScale
loc_8C0A7EFC:
	#data bank15.loc_8c157340

;==============================================
loc_8C0A7F00:
	mov 0x21,r2
	add r14,r2
	mov.b @r2,r2
	mov 0x34,r0
	fmov @(r0,r14),fr2
	extu.b r2,r2
	shll r2
	shll r2
	add r2,r4
	mov.w @r4,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8C0A7F1C:
	mov 0x21,r3
	fmov fr2,@(r0,r14)
	add r14,r3
	mov r14,r2
	mov 0x38,r0
	mov.l @(0xE8,PC),r1
	add r0,r2
	mov r14,r4
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
	mova @(0xC8,PC),r0
	fmov @r0,fr0
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0A7F58:
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x00,r7 ; r7 set to 0x00
	mov.l r4,@r15
	mov r7,r6 ; r6 set to 0x00
	bsr loc_8C0A7D16
	mov 0x02,r5 ; r5 set to 0x02
	mov.l @r15,r2
	mov.b @(0x05,r2),r0
	add 0x01,r0
	mov.b r0,@(0x05,r2)
	add 0x04,r15
	lds.l @r15+,pr
	rts
	nop

;----------------------------------------------
loc_8C0A7F76:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(loc_8C0A8008,pc),r3 ; r3 set to 0x2A4
	mov r4,r14
	mov.l @(loc_8C0A8014,pc),r2 ; r2 set to 0x8C034DEe
	add r5,r3 ; r3 ??? bc r5 is ???	
	mov.l r3,@r15
	jsr @r2
	mov r14,r4
	mov.w @(0x1C,r14),r0
	mov 0x01,r6 ; r6 set to 0x01
	mov 0x03,r7 ; r7 set to 0x03
	add 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov 0x01,r5 ; r5 set to 0x01
	mov.w @(0x1C,r14),r0
	and r0,r6 ; r6 ??? bc r0 is ???	
	and r0,r7 ; r7 ??? bc r0 is ???	
	bsr loc_8C0A7D16
	mov r14,r4
	mov.l @r15,r2 ; r2 ??? bc r15 is ???	
	mov.b @r2,r3
	tst r3,r3
	bt loc_8C0A7FBe
	mov.b @(0x05,r14),r0
	mov 0x17,r5 ; r5 set to 0x17
	mov r14,r4
	mov 0x06,r6 ; r6 set to 0x06
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0A8018,pc),r3 ; r3 set to 0x8C034E8c
	jmp @r3
	mov.l @r15+,r14

loc_8C0A7FBE:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A7FC6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0A8014,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0A7FEe
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0A827c
	mov.l @r15+,r14

loc_8C0A7FEE:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A7FF6:
	mov r4,r3
	mov.l @(loc_8C0A801C,pc),r1 ; r1 set to 0x8C157370
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A8008:
	#data 0x02A4
	#align4

loc_8C0A800c:
	#data work.CpsYScale
loc_8C0A8010:
	#data bank15.loc_8c157364
loc_8C0A8014:
	#data bank03.loc_8c034dee
loc_8C0A8018:
	#data bank03.loc_8c034e8c
loc_8C0A801C:
	#data bank15.loc_8c157370

;==============================================
loc_8C0A8020:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(loc_8C0A814E,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0A814E,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C0A815C,pc),r3 ; r3 set to 0x8C129560
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l r5,@r15
	mov.b @(0x04,r14),r0
	mov.l @(0x14,r14),r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0A8150,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r4,r2 ; r2 ??? bc r4 is ???	
	mov.w @(loc_8C0A8152,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0A8154,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A8160,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r4),r2
	mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0A8152,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_8C0A8154,pc),r0 ; r0 set to 0x1A3
	mov.l @(loc_8C0A8164,pc),r3 ; r3 set to 0x8C2896B0
	mov.b @(r0,r14),r2
	add 0xFE,r0 ; r0 set to 0x1A1
	add 0x30,r2
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r5,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r5,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r5,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r2
	tst r2,r2
	bf/s loc_8C0A80C6
	mov 0x42,r5 ; r5 set to 0x42
	mov.w @(loc_8C0A8156,pc),r0 ; r0 set to 0x19c
	bra loc_8C0A80Cc
	mov.b r5,@(r0,r14)

loc_8C0A80C6:
	mov.w @(loc_8C0A8156,pc),r0 ; r0 set to 0x19c
	mov 0x60,r1 ; r1 set to 0x60
	mov.b r1,@(r0,r14)

loc_8C0A80CC:
	mov.w @(loc_8C0A8158,pc),r0 ; r0 set to 0x19D, r0 set to 0x19d
	mov 0x0D,r3 ; r3 set to 0x0D, r3 set to 0x0d
	mov.b r5,@(r0,r14)
	add 0xA2,r0 ; r0 set to 0x13F, r0 set to 0x13f
	mov.b r3,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13E, r0 set to 0x13e
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???, r3 ??? bc r4 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3C, r0 set to 0x3c
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0A815A,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0A80Fe
	mov.l @(loc_8C0A8168,pc),r1 ; r1 set to 0xC2555555, r1 set to 0xC2555555
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	lds r1,fpul
	bra loc_8C0A8106
	fsts fpul,fr3

loc_8C0A80FE:
	mov.l @(loc_8C0A816C,pc),r1 ; r1 set to 0x42555555
	mov 0x34,r0 ; r0 set to 0x34
	lds r1,fpul
	fsts fpul,fr3

loc_8C0A8106:
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0A815A,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0A811a
	mova @(loc_8C0A8170,pc),r0  ; r0 set to 0x8C0A8170, r0 set to 0x8C0A8170
	bra loc_8C0A811e
	fmov.s @r0,fr3

loc_8C0A811A:
	mova @(loc_8C0A8174,pc),r0  ; r0 init to 0x8C0A8174
	fmov.s @r0,fr3

loc_8C0A811E:
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	mov.l @(loc_8C0A8178,pc),r13 ; r13 set to 0x8C034E8C, r13 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fldi0 fr3
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???	
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8C0A8140
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	jsr @r13
	mov r14,r4
	bra loc_8C0A8182
	nop

loc_8C0A8140:
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C0A817c
	mov 0x17,r5 ; r5 set to 0x17
	bra loc_8C0A817e
	mov 0x02,r6

;##############################################
loc_8C0A814E:
	#data 0x00Dc
loc_8C0A8150:
	#data 0x00C0
loc_8C0A8152:
	#data 0x012c
loc_8C0A8154:
	#data 0x01A3
loc_8C0A8156:
	#data 0x019c
loc_8C0A8158:
	#data 0x019d
loc_8C0A815A:
	#data 0x0130
	#align4

loc_8C0A815C:
	#data bank12.loc_8c129560
loc_8C0A8160:
	#data bank12.loc_8c1294C8
loc_8C0A8164:
	#data 0x8C2896B0
loc_8C0A8168:
	#data 0xC2555555
loc_8C0A816C:
	#data 0x42555555
loc_8C0A8170:
	#data 0xC2480000
loc_8C0A8174:
	#data 0x42480000
loc_8C0A8178:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8c0a817c:
	mov 0x03,r6

loc_8c0a817e:
	jsr @r13
	mov r14,r4

loc_8c0a8182:
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0a818e:
	mov 0x24,r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.b r3,@(r0,r14) 
	mov.w @(loc_8C0A82A6,pc),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x15,r0 
	bf loc_8c0a81a8
	mov.b @(0x05,r5),r0 
	tst r0,r0
	bt loc_8c0a81b4

loc_8c0a81a8:
	mov.b @(0x04,r14),r0 
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14) 
	bra loc_8c0a828e
	mov.l @r15+,r14

loc_8c0a81b4:
	mov.b @(0x05,r14),r0 
	mov r14,r4
	mov.l @(loc_8c0a82ac,pc),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0A81C4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov 0x68,r1 ; r1 set to 0x68
	mov r4,r14
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.w @(loc_8C0A82A8,pc),r2 ; r2 set to 0x2A4
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.l r5,@r15
	mov r5,r3
	add r3,r2 ; r2 ??? bc r3 is ???	
	mov.l r2,@(0x04,r15)
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov.l @(0x14,r14),r5
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	bsr loc_8C0A82C8
	mov r14,r4
	mov.l @(loc_8C0A82B0,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov.l @(loc_8C0A82B4,pc),r3 ; r3 set to 0x8C045748
	jsr @r3
	mov r14,r4
	mov.l @(0x04,r15),r2 ; r2 ??? bc r15 is ???	
	mov.b @r2,r3 ; r3 ??? bc r2 is ???	
	tst r3,r3
	bt loc_8C0A8222
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x5d
	mov.b r0,@(0x05,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf/s loc_8C0A8214
	mov 0x17,r5 ; r5 set to 0x17
	bra loc_8C0A8216
	mov 0x01,r6

loc_8C0A8214:
	mov 0x04,r6 ; r6 set to 0x04

loc_8C0A8216:
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0A82B8,pc),r2 ; r2 set to 0x8C034E8C, r2 set to 0x8C034E8c
	jmp @r2
	mov.l @r15+,r14

loc_8C0A8222:
	mov.l @(loc_8C0A82BC,pc),r3 ; r3 set to 0x8C03340c
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8C0A823e
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @r15,r5
	add 0x08,r15
	lds.l @r15+,pr
	bra loc_8C0A828e
	mov.l @r15+,r14

loc_8C0A823E:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A8246:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l r5,@r15
	mov r4,r14
	mov.l @(0x14,r14),r5
	bsr loc_8C0A82C8
	mov r14,r4
	mov.l @(loc_8C0A82B0,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0A8274
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0A828e
	mov.l @r15+,r14

loc_8C0A8274:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A827C:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A82AA,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov.l @(loc_8C0A82C0,pc),r3 ; r3 set to 0x8C042008
	jmp @r3
	mov 0x2B,r5

;==============================================
loc_8C0A828E:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A82AA,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0A829C:
	mov.l @(loc_8C0A82C4,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0A82AA,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a82a6:
	#data 0x0159
loc_8C0A82A8:
	#data 0x02A4
loc_8C0A82AA:
	#data 0x012c
	#align4

loc_8C0A82AC:
	#data bank15.loc_8c157380
loc_8C0A82B0:
	#data bank03.loc_8c034dee
loc_8C0A82B4:
	#data bank04.loc_8c045748
loc_8C0A82B8:
	#data bank03.loc_8c034e8c
loc_8C0A82BC:
	#data bank03.loc_8c03340c
loc_8C0A82C0:
	#data bank04.loc_8c042008
loc_8C0A82C4:
	#data bank04.loc_8c0450C0

;----------------------------------------------
loc_8C0A82C8:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8C0A8306
	mov.w @(loc_8C0A8336,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r2
	tst r2,r2
	bf loc_8C0A82F6
	mov.l @(loc_8C0A8338,pc),r1 ; r1 set to 0xC1D55555
	mov 0x34,r0 ; r0 set to 0x34
	lds r1,fpul
	bra loc_8C0A82Fe
	fsts fpul,fr3

loc_8C0A82F6:
	mov.l @(loc_8C0A833C,pc),r1 ; r1 set to 0x41D55555
	mov 0x34,r0 ; r0 set to 0x34
	lds r1,fpul
	fsts fpul,fr3

loc_8C0A82FE:
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	bra loc_8C0A8326
	fmov.s fr2,@(r0,r4)

loc_8C0A8306:
	mov.w @(loc_8C0A8336,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r4),r2
	tst r2,r2
	bf loc_8C0A8318
	mov.l @(loc_8C0A8340,pc),r1 ; r1 set to 0xC2555555
	mov 0x34,r0 ; r0 set to 0x34
	lds r1,fpul
	bra loc_8C0A8320
	fsts fpul,fr3

loc_8C0A8318:
	mov.l @(loc_8C0A8344,pc),r1 ; r1 set to 0x42555555
	mov 0x34,r0 ; r0 set to 0x34
	lds r1,fpul
	fsts fpul,fr3

loc_8C0A8320:
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)

loc_8C0A8326:
	mov 0x5C,r1 ; r1 set to 0x5C, r1 set to 0x5C, r1 set to 0x5c
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34, r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

;----------------------------------------------
loc_8C0A8336:
	#data 0x0130
	#align4

loc_8C0A8338:
	#data 0xC1D55555
loc_8C0A833C:
	#data 0x41D55555
loc_8C0A8340:
	#data 0xC2555555
loc_8C0A8344:
	#data 0x42555555

;==============================================
;unused
loc_8c0a8348:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x78,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a838e
	mov r0,r4
	mov.w @(0x62,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0x64,PC),r3
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

loc_8c0a838e:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0A8396:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0A83D2,pc),r0 ; r0 set to 0x159
	mov.l @(0x18,r14),r5
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_8C0A83Ac
	mov r14,r4
	bra loc_8C0A8588
	mov.l @r15+,r14

loc_8C0A83AC:
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0A83DC,pc),r0 ; r0 set to 0x8C15739c
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0A83BE:
	mov r4,r3
	mov.l @(loc_8C0A83E0,pc),r1 ; r1 set to 0x8C1573A0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a83d0:
	#data 0x3301
loc_8C0A83D2:
	#data 0x0159
	#align4

loc_8C0A83D4:
	#data bank04.loc_8c044F12
loc_8C0A83D8:
	#data loc_8c0a8396
loc_8C0A83DC:
	#data bank15.loc_8c15739c
loc_8C0A83E0:
	#data bank15.loc_8c1573A0

;==============================================
loc_8C0A83E4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x15E,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x156,PC),r2
	add 0x01,r0
	mov.l @(0x160,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x150,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x14C,PC),r0
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
	mov.w @(0x130,PC),r0
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
	mov.l @(0x128,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov.b r2,@(r0,r14)
	mov.w @(0x10C,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r4,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	mov 0x00,r4
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @(0x10C,PC),r0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov.w @(0xF6,PC),r0
	mov.l @(0x108,PC),r3
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
	mov 0x42,r4
	mov.w @(0xD4,PC),r0
	mov 0x17,r5
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov.w @(0xC2,PC),r0
	extu.b r6,r6
	mov.b @(r0,r13),r2
	mov.l @(0xD4,PC),r0
	extu.b r2,r2
	shll2 r2
	add r2,r6
	mov.l @(0xD0,PC),r2
	mov.b @(r0,r6),r6
	jsr @r2
	mov r14,r4
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	tst 0x02,r0
	bt.s loc_8c0a84ba
	mov r13,r5
	mov.w @(0xA6,PC),r0
	mov 0x01,r3
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)

loc_8C0A84BA:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A84C2:
	mov r4,r3
	mov.l @(loc_8C0A8574,pc),r1 ; r1 set to 0x8C1573B0
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0A84D4:
	mov.l r14,@-r15
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	mov r14,r3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	add r0,r3
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.l r3,@-r15
	mov 0x21,r3 ; r3 set to 0x21
	add r14,r3 ; r3 ??? bc r14 is ???	
	mov.l @(loc_8C0A8578,pc),r0 ; r0 set to 0x8C157388
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	mov.w @(r0,r3),r2
	mova @(loc_8C0A857C,pc),r0  ; r0 set to 0x8C0A857c
	fmov.s @r0,fr0 ; r0 ??	
	lds r2,fpul
	mov.l @r15+,r2
	float fpul,fr3
	fmov.s @r2,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r2
	mov.l @(loc_8C0A8580,pc),r3 ; r3 set to 0x8C045748
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0A8584,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0A8538
	mov.b @(0x04,r14),r0
	mov r13,r5
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0A8540
	mov.l @r15+,r14

loc_8C0A8538:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A8540:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A8552,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0A854e:
	#data 0x00Dc
loc_8C0A8550:
	#data 0x00C0
loc_8C0A8552:
	#data 0x012c
loc_8C0A8554:
	#data 0x01A3
loc_8C0A8556:
	#data 0x01A1
loc_8C0A8558:
	#data 0x019c
loc_8C0A855a:
	#data 0x0130
	#align4

loc_8C0A855C:
	#data bank12.loc_8c129560
loc_8C0A8560:
	#data bank12.loc_8c1294C8
loc_8C0A8564:
	#data bank15.loc_8c157398
loc_8C0A8568:
	#data 0x8C2896B0
loc_8C0A856C:
	#data bank15.loc_8c157390
loc_8C0A8570:
	#data bank03.loc_8c034e8c
loc_8C0A8574:
	#data bank15.loc_8c1573B0
loc_8C0A8578:
	#data bank15.loc_8c157388
loc_8C0A857C:
	#data work.CpsYScale
loc_8C0A8580:
	#data bank04.loc_8c045748
loc_8C0A8584:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0A8588:
	mov.l @(loc_8C0A8594,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0A8592,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A8592:
	#data 0x012c
	#align4

loc_8C0A8594:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0a8598:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0xB4,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a85de
	mov r0,r4
	mov.w @(0x9E,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0xA0,PC),r3
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

loc_8c0a85de:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0A85E6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.l @(0x6C,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0a8628
	mov r0,r4
	mov.w @(0x52,PC),r2
	mov 0x26,r0
	mov.l @(0x58,PC),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8C0A8628:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A8634:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0A8668,pc),r0 ; r0 set to 0x8C157404
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A864A:
	mov r4,r3
	mov.l @(loc_8C0A866C,pc),r1 ; r1 set to 0x8C15740c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a865c:
	#data 0x3302
	#align4

loc_8C0A8660:
	#data bank04.loc_8c044F12
loc_8C0A8664:
	#data loc_8c0a8634
loc_8C0A8668:
	#data bank15.loc_8c157404
loc_8C0A866C:
	#data bank15.loc_8c15740c

;==============================================
loc_8C0A8670:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0A8754,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.w @(loc_8C0A8752,pc),r4 ; r4 set to 0x2A4
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0A8756,pc),r0 ; r0 set to 0xC0
	add r13,r4 ; r4 ??? bc r13 is ???	
	mov.w @(loc_8C0A8754,pc),r2 ; r2 set to 0xDc
	mov.l @(loc_8C0A8764,pc),r3 ; r3 set to 0x8C129560
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0A8758,pc),r0 ; r0 set to 0x12c
	mov 0x01,r5 ; r5 set to 0x01
	mov r14,r1
	add 0x50,r1
	mov.b r5,@(r0,r14)
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
	mov.w @(loc_8C0A875A,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A8768,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0xFE,r3 ; r3 set to 0xFFFFFFFe
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0A8758,pc),r0 ; r0 set to 0x12c
	mov.b r5,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov 0x32,r3 ; r3 set to 0x32
	mov.b @(0x02,r4),r0
	add 0x01,r0 ; r0 set to 0x32
	mov.b r0,@(0x02,r4)
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C0A875C,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_8C0A876C,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov 0x42,r4 ; r4 set to 0x42
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C0A875E,pc),r0 ; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	mov.l @(loc_8C0A8770,pc),r5 ; r5 set to 0x8C1573B4
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x3C,r0 ; r0 set to 0x3c
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0A8774,pc),r0  ; r0 set to 0x8C0A8774
	fmov.s @r0,fr4 ; r4 ??	
	mov.w @(loc_8C0A8760,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r2
	tst r2,r2
	bf/s loc_8C0A8778
	mov r5,r4 ; r4 set to 0x8C1573B4
	mov 0x21,r2 ; r2 set to 0x21
	fmov fr4,fr0 ; r0 ??	
	add r14,r2 ; r2 ??? bc r14 is ???	
	mov.b @r2,r2
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr2
	extu.b r2,r2
	shll r2
	shll r2
	add r2,r4 ; r4 ??? bc r2 is ???	
	mov.w @r4,r2
	lds r2,fpul
	float fpul,fr3
	bra loc_8C0A8794
	fmac fr0,fr3,fr2

;==============================================
loc_8C0A8752:
	#data 0x02A4
loc_8C0A8754:
	#data 0x00Dc
loc_8C0A8756:
	#data 0x00C0
loc_8C0A8758:
	#data 0x012c
loc_8C0A875A:
	#data 0x01A3
loc_8C0A875C:
	#data 0x01A1
loc_8C0A875E:
	#data 0x019c
loc_8C0A8760:
	#data 0x0130
	#align4

loc_8C0A8764:
	#data bank12.loc_8c129560
loc_8C0A8768:
	#data bank12.loc_8c1294C8
loc_8C0A876C:
	#data 0x8C2896B0
loc_8C0A8770:
	#data bank15.loc_8c1573B4
loc_8C0A8774:
	#data work.CpsXScale

;==============================================
loc_8c0a8778:
	mov 0x21,r1
	add r14,r1
	mov.b @r1,r1
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	extu.b r1,r1
	shll r1
	shll r1
	add r1,r4
	mov.w @r4,r2
	lds r2,fpul 
	float fpul,fr3
	fmul fr4,fr3
	fsub fr3,fr2

loc_8c0a8794:
	mov 0x21,r3
	fmov.s fr2,@(r0,r14) 
	add r14,r3
	mov r14,r2
	mov 0x38,r0
	mov.l @(loc_8c0a88c8,pc),r4
	add r0,r2
	mov.l r2,@-r15
	mov 0x21,r2
	mov.b @r3,r3
	extu.b r3,r3
	shll r3
	shll r3
	add r3,r5
	mov.w @(0x02,r5),r0 
	mov r0,r3
	lds r3,fpul 
	mov.l @r15+,r3
	mova @(loc_8C0A88C0,pc),r0 
	fmov.s @r0,fr0
	mova @(loc_8C0A88C4,pc),r0 
	float fpul,fr3
	fmov.s @r3,fr2
	fmac fr0,fr3,fr2
	fmov.s fr2,@r3
	fmov.s @r0,fr5
	mov.w @(loc_8C0A88BC,pc),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	mov r0,r3
	shll r0
	add r3,r0
	add r14,r2
	mov.b @r2,r2
	extu.b r2,r2
	mov r2,r3
	shll2 r2
	shll r2
	add r3,r2
	add r2,r0
	shll2 r0
	mov.l @(r0,r4),r2
	mov 0x5C,r0
	lds r2,fpul 
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C0A88BC,pc),r0
	mov.b @(r0,r13),r3
	mov 0x21,r0
	mov.b @(r0,r14),r1
	extu.b r3,r3
	mov r3,r2
	shll r3
	extu.b r1,r1
	add r2,r3
	mov r1,r2
	shll2 r1
	shll r1
	add r2,r1
	add r1,r3
	shll2 r3
	add r4,r3
	mov.l @(0x04,r3),r1
	mov 0x68,r0
	lds r1,fpul 
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x60,r0
	fldi0 fr3
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C0A88BC,pc),r0
	mov.b @(r0,r13),r3
	mov 0x21,r0
	mov.b @(r0,r14),r1
	mov 0x6C,r0
	extu.b r3,r3
	mov r3,r2
	shll r3
	extu.b r1,r1
	add r2,r3
	mov r1,r2
	shll2 r1
	shll r1
	add r2,r1
	add r1,r3
	shll2 r3
	add r3,r4
	mov.l @(0x08,r4),r3
	lds r3,fpul 
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C0A88BE,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0a8870
	mov 0x0C,r6
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x68,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14) 

loc_8c0a8870:
	mov.l @(loc_8c0a88cc,pc),r3
	mov 0x17,r5
	jsr @r3
	mov r14,r4
	mov 0x01,r5
	mov 0x00,r6
	bsr loc_8c0a85e6
	mov r14,r4
	mov 0x01,r5
	mov 0x00,r6
	bsr loc_8c0a85e6
	mov r14,r4
	mov 0x01,r5
	mov 0x00,r6
	bsr loc_8c0a85e6
	mov r14,r4
	mov 0x01,r5
	mov 0x00,r6
	bsr loc_8c0a85e6
	mov r14,r4
	lds.l @r15+,pr 
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A88A2:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.l @(loc_8C0A88D0,pc),r1 ; r1 set to 0x8C15741c
	mov r14,r4
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x24
	shll2 r0 ; r0 set to 0x90
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a88bc:
	#data 0x01A3
loc_8c0a88be:
	#data 0x0130
	#align4

loc_8c0a88c0:
	#data work.CpsYScale
loc_8c0a88c4:
	#data 0x47800000
loc_8C0A88C8:
	#data bank15.loc_8c1573Bc
loc_8C0A88CC:
	#data bank03.loc_8c034e8c
loc_8C0A88D0:
	#data bank15.loc_8c15741c

;==============================================
loc_8C0A88D4:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x11C,PC),r3
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
	mov 0x68,r0
	fmov @(r0,r14),fr3
	mov 0x5C,r0
	fmov @(r0,r14),fr2
	fmul fr3,fr2
	fldi0 fr3
	fcmp/gt fr3,fr2
	bf loc_8c0a8934
	fmov fr3,fr4
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)

loc_8C0A8934:
	mov 0x38,r0
	mov.l @r15,r3
	fmov @(r0,r14),fr3
	mov.w @(0xB2,PC),r0
	fmov @(r0,r3),fr2
	fcmp/gt fr2,fr3
	bt loc_8c0a8956
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov.w @(0xA4,PC),r0
	mov.l @r15,r3
	fmov @(r0,r3),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	bra loc_8c0a8974
	mov 0x0C,r0

loc_8C0A8956:
	mov.w @(0x98,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0a896c
	mov.l @(0x9C,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x8C,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0a8976

loc_8C0A896C:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x01,r0

loc_8C0A8974:
	mov.w r0,@(0x1C,r14)

loc_8C0A8976:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A897E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0x74,PC),r3
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0a89b4
	mov.b @(0x5,r14),r0
	mov r14,r5
	mov.l @(0x64,PC),r3
	add 0x34,r5
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x08,r7
	mov 0x01,r6
	jsr @r3
	mov r14,r4
	mov.l @(0x58,PC),r2
	mov 0x49,r5
	jsr @r2
	mov r14,r4
	mov 0x0A,r0
	mov.w r0,@(0x1C,r14)

loc_8C0A89B4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A89BA:
	mov.w @(0x1C,r4),r0
	mov.w @(loc_8C0A89F6,pc),r6 ; r6 set to 0x2A4
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf/s loc_8C0A89Da
	add r5,r6 ; r6 ??? bc r5 is ???	
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.b @(0x02,r6),r0
	add 0xFF,r0
	bra loc_8C0A8B56
	mov.b r0,@(0x02,r6)

loc_8C0A89DA:
	rts
	nop

;----------------------------------------------
loc_8C0A89DE:
	mov r4,r3
	mov.l @(loc_8C0A8A08,pc),r1 ; r1 set to 0x8C157428
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A89F0:
	#data 0x041c
loc_8C0A89F2:
	#data 0x019F
loc_8C0A89F4:
	#data 0x019e
loc_8C0A89F6:
	#data 0x02A4
	#align4

loc_8C0A89F8:
	#data bank03.loc_8c034dee
loc_8C0A89FC:
	#data bank04.loc_8c045748
loc_8C0A8A00:
	#data bank10.loc_8c10235c
loc_8C0A8A04:
	#data bank04.loc_8c04223a
loc_8C0A8A08:
	#data bank15.loc_8c157428

;==============================================
loc_8C0A8A0C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x156,PC),r1
	mov r14,r5
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add 0x5C,r5
	mov.w @(0x14C,PC),r2
	add r14,r1
	add 0x01,r0
	mov.l @(0x14,r14),r4
	mov.b r0,@(0x4,r14)
	mov.w @(0x144,PC),r0
	mov.l @(0x14C,PC),r3
	jsr @r3
	add r13,r2
	mov.w @(0x13E,PC),r0
	mov 0x01,r6
	mov r14,r1
	add 0x50,r1
	mov.b r6,@(r0,r14)
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
	mov.l @(0x114,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xFC,PC),r0
	mov.b r6,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r4),fr3
	mov 0x08,r6
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r4),fr3
	mov 0x00,r4
	fmov fr3,@(r0,r14)

loc_8C0A8A90:
	mov 0x34,r0
	mov r5,r3
	fmov @(r0,r14),fr3
	mov 0x38,r0
	add r4,r3
	ftrc fr3,fpul
	sts fpul,r2
	mov.w r2,@r3
	mov r5,r3
	fmov @(r0,r14),fr3
	add 0x08,r3
	add r4,r3
	ftrc fr3,fpul
	add 0x02,r4
	cmp/hs r6,r4
	sts fpul,r2
	mov.w r2,@r3
	bf loc_8c0a8a90
	mov.l @(0xC8,PC),r2
	mov 0x17,r5
	mov 0x0C,r6
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A8AC8:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r13
	mov.l @(0x14,r13),r3
	mov 0x24,r0
	mov.l @(0x8,r13),r12
	mov.l r3,@r15
	mov r4,r14
	mov.b @(r0,r5),r2
	add 0x5C,r14
	mov.l @(0xA0,PC),r3
	mov.b r2,@(r0,r13)
	jsr @r3
	mov r13,r4
	mov.w @(0x6,r14),r0
	mov r14,r4
	mov r0,r3
	lds r3,fpul
	mov 0x34,r0
	float fpul,fr3
	fmov fr3,@(r0,r13)
	mov.w @(0x4,r4),r0
	mov.w r0,@(0x6,r4)
	mov.w @(0x2,r4),r0
	mov.w r0,@(0x4,r4)
	mov.w @r4,r0
	mov.w r0,@(0x2,r4)
	mov 0x34,r0
	fmov @(r0,r12),fr3
	add 0x08,r4
	ftrc fr3,fpul
	sts fpul,r3
	mov.w r3,@r14
	mov.w @(0xE,r14),r0
	mov r0,r3
	lds r3,fpul
	mov 0x38,r0
	float fpul,fr3
	fmov fr3,@(r0,r13)
	mov.w @(0x4,r4),r0
	mov.w r0,@(0x6,r4)
	mov r14,r4
	add 0x08,r4
	mov.w @(0x2,r4),r0
	mov.w r0,@(0x4,r4)
	mov r14,r4
	add 0x08,r4
	mov.w @r4,r0
	mov.w r0,@(0x2,r4)
	mov 0x38,r0
	fmov @(r0,r12),fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x8,r14)
	mov.l @r15,r0
	mov.b @(0x5,r0),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8c0a8b4a
	mov.b @(0x4,r13),r0
	add 0x01,r0
	mov.b r0,@(0x4,r13)

loc_8C0A8B4A:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A8B56:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A8B72,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0A8B64:
	mov.l @(loc_8C0A8B88,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0A8B72,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A8B6e:
	#data 0x00Dc
loc_8C0A8B70:
	#data 0x00C0
loc_8C0A8B72:
	#data 0x012c
loc_8C0A8B74:
	#data 0x01A3
	#align4

loc_8C0A8B78:
	#data bank12.loc_8c129560
loc_8C0A8B7C:
	#data bank12.loc_8c1294C8
loc_8C0A8B80:
	#data bank03.loc_8c034e8c
loc_8C0A8B84:
	#data bank03.loc_8c034dee
loc_8C0A8B88:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0a8b8c:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0x64,PC),r3
	mov 0x02,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a8bd2
	mov r0,r4
	mov.w @(0x50,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0x50,PC),r3
	add r4,r1
	mov.l r3,@(0x10,r4)
	mov.w r2,@(r0,r4)
	mov 0x21,r2
	mov.l @r15,r3

loc_8c0a8bc0:
	add r4,r2
	mov.l r3,@(0x18,r4)
	mov.l @r15,r0
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov.b @(0x8,r15),r0
	mov.b r0,@r1
	mov.b @(0x4,r15),r0
	mov.b r0,@r2

loc_8c0a8bd2:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0A8BDA:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0A8C0C,pc),r0 ; r0 set to 0x8C157438
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A8BF0:
	mov r4,r3
	mov.l @(loc_8C0A8C10,pc),r1 ; r1 set to 0x8C157440
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a8c02:
	#data 0x3303
	#align4

loc_8C0A8C04:
	#data bank04.loc_8c044F12
loc_8C0A8C08:
	#data loc_8c0a8BDa
loc_8C0A8C0C:
	#data bank15.loc_8c157438
loc_8C0A8C10:
	#data bank15.loc_8c157440

;==============================================
loc_8C0A8C14:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x130,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x128,PC),r2
	add 0x01,r0
	mov.l @(0x134,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x122,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x11E,PC),r0
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
	mov.w @(0x102,PC),r0
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
	mov.l @(0xFC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xDC,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	mov 0x3D,r3
	mov.w @(0xD0,PC),r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xD4,PC),r3
	mov.l r4,@(r0,r14)
	mov 0x41,r4
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xAE,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.l @(0xBC,PC),r1
	mov.b r4,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov 0x17,r5
	lds r1,fpul
	mov 0x18,r6
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	mov.l @(0xAC,PC),r2
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r13),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A8CE4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(0x88,PC),r2
	mov 0x01,r4
	mov.b @(0x2,r14),r0
	mov r4,r1
	mov.b @r2,r3
	extu.b r0,r0
	xor r4,r0
	shad r0,r1
	extu.b r3,r3
	tst r1,r3
	bf loc_8c0a8d4c
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf loc_8c0a8d0e
	mov.b @(0x5,r5),r0
	tst r0,r0
	bt loc_8c0a8d14

loc_8C0A8D0E:
	mov r14,r4
	bra loc_8c0a8f74
	mov.l @r15+,r14

loc_8C0A8D14:
	mov 0x24,r0
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0a8d2a
	mov 0x31,r0
	mov 0xFF,r2
	bra loc_8c0a8d2e
	mov.b r2,@(r0,r14)

loc_8C0A8D2A:
	mov 0x31,r0
	mov.b r4,@(r0,r14)

loc_8C0A8D2E:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x26,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf loc_8c0a8d4c
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x34,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0A8D4C:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a8d50:
	#data 0x00dc
loc_8c0a8d52:
	#data 0x00c0
loc_8c0a8d54:
	#data 0x012c
loc_8c0a8d56:
	#data 0x01a3
loc_8c0a8d58:
	#data 0x01a1
loc_8c0a8d5a:
	#data 0x019c
loc_8c0a8d5c:
	#data 0x0159
loc_8c0a8d5e:
	#data 0x01a0
	#align4

loc_8C0A8D60:
	#data bank12.loc_8c129560
loc_8C0A8D64:
	#data bank12.loc_8c1294C8
loc_8C0A8D68:
	#data 0x8C2896B0
loc_8C0A8D6c:
	#data 0x439A4924
loc_8C0A8D70:
	#data bank03.loc_8c034e8c
loc_8C0A8D74:
	#data 0x8C2895F6
loc_8C0A8D78:
	#data bank15.loc_8c157450

;==============================================
loc_8C0A8D7C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xB6,PC),r3
	mov r4,r14
	mov.l @(0xBC,PC),r2
	add r5,r3
	mov.l r3,@r15
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0a8dbc
	mov.b @(0x5,r14),r0
	fldi0 fr4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x01,r0
	mov.l @r15,r3
	mov.b r0,@(0x3,r3)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mova @(0x90,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)

loc_8C0A8DBC:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A8DC4:
	mov.l r14,@-r15
	mov.w @(0x74,PC),r0
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	tst r3,r3
	bt.s loc_8c0a8ddc
	mov r4,r14
	mov 0x21,r0
	mov 0x01,r3
	mov.b r3,@(r0,r14)

loc_8C0A8DDC:
	mov 0x60,r1
	mov.l @(0x6C,PC),r3
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
	jsr @r3
	mov r14,r4
	mova @(0x50,PC),r0
	fmov @r0,fr3
	mov.w @(0x3A,PC),r0
	fmov @(r0,r13),fr2
	mov 0x38,r0
	fmov @(r0,r14),fr1
	fadd fr3,fr2
	fcmp/gt fr2,fr1
	bt loc_8c0a8e22
	mov.b @(0x5,r14),r0
	mov r13,r5
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0a8f66
	mov.l @r15+,r14


loc_8C0A8E22:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A8E2A:
	mov r4,r3
	mov.l @(loc_8C0A8E54,pc),r1 ; r1 set to 0x8C157458
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a8e3c:
	#data 0x02a4
loc_8c0a8e3e:
	#data 0x0141
loc_8c0a8e40:
	#data 0x041c
	#align4

loc_8C0A8E44:
	#data bank03.loc_8c034dee
loc_8C0A8E48:
	#data 0xBF092492
loc_8C0A8E4C:
	#data bank04.loc_8c045748
loc_8C0A8E50:
	#data 0x43542492
loc_8C0A8E54:
	#data bank15.loc_8c157458

;==============================================
loc_8C0A8E58:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0A8F7E,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0A8F7E,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0A8F88,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0A8F80,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0A8F82,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0A8F84,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A8F8C,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0A8F90,pc),r1 ; r1 set to 0x43542492
	mov.b @(r0,r13),r2
	mov 0xFF,r3 ; r3 set to 0xFFFFFFFf
	lds r1,fpul
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0A8F82,pc),r0 ; r0 set to 0x12c
	fldi0 fr4
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
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mova @(loc_8C0A8F94,pc),r0  ; r0 set to 0x8C0A8F94
	fmov.s @r0,fr2
	mov 0x6C,r0 ; r0 set to 0x6c
	mov.l @(loc_8C0A8F98,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	fmov.s fr2,@(r0,r14)
	mov 0x19,r6 ; r6 set to 0x19
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???	
	lds.l @r15+,pr
	mov r13,r5 ; r5 ??? bc r13 is ???	
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A8F0E:
	mov.l r14,@-r15
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	mov 0x60,r1 ; r1 set to 0x60, r1 set to 0x60
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	sts.l pr,@-r15
	mov.b @(r0,r13),r3 ; r3 ??? bc r13 is ???	
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	fmov.s @(r0,r13),fr3
	mov.l @(loc_8C0A8F9C,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???, r3 ??? bc r1 is ???	
	mov 0x6C,r1 ; r1 set to 0x6C, r1 set to 0x6c
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??, r0 ??	
	cmp/pz r0
	bt loc_8C0A8F5e
	mov.b @(0x04,r14),r0
	mov r13,r5
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0A8F66
	mov.l @r15+,r14

loc_8C0A8F5E:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A8F66:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A8F82,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0A8F74:
	mov.l @(loc_8C0A8FA0,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0A8F82,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A8F7E:
	#data 0x00Dc
loc_8C0A8F80:
	#data 0x00C0
loc_8C0A8F82:
	#data 0x012c
loc_8C0A8F84:
	#data 0x01A3
	#align4

loc_8C0A8F88:
	#data bank12.loc_8c129560
loc_8C0A8F8C:
	#data bank12.loc_8c1294C8
loc_8C0A8F90:
	#data 0x43542492
loc_8C0A8F94:
	#data 0x3C892492
loc_8C0A8F98:
	#data bank03.loc_8c034e8c
loc_8C0A8F9C:
	#data bank03.loc_8c034dee
loc_8C0A8FA0:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0a8fa4:
	sts.l pr,@-r15
	add 0xF4,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.b r0,@(0x8,r15)
	mov r6,r0
	nop
	mov.l @(0xCC,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a8fea
	mov r0,r4
	mov.w @(0xB8,PC),r2
	mov 0x26,r0
	mov 0x20,r1
	mov.l @(0xB8,PC),r3
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

loc_8c0a8fea:
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8c0a8ff2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov r4,r14
	mov r5,r0
	nop 
	mov.b r0,@(0x08,r15) 
	mov.b r6,@r15
	mov r7,r0
	nop 
	mov.l @(loc_8c0a9084,pc),r3
	mov 0x01,r6
	mov.w r0,@(0x04,r15) 
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt/s loc_8c0a904e
	mov r0,r4
	mov.w @(loc_8C0A9082,pc),r2
	mov 0x26,r0
	mov.l @(loc_8c0a9088,pc),r3
	mov 0x20,r1
	add r4,r1
	mov.l r3,@(0x10,r4) 
	mov.w r2,@(r0,r4) 
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4) 
	mov.b @(0x01,r14),r0 
	mov.b r0,@(0x01,r4) 
	mov.l r14,@(0x14,r4) 
	mov.b @(0x08,r15),r0 
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4) 
	mov.w @(0x04,r15),r0 
	mov r0,r3
	lds r3,fpul 
	mov 0x5C,r0
	float fpul,fr3
	fmov.s fr3,@(r0,r4) 
	mov 0x14,r0
	mov.b @(r0,r15),r0
	extu.b r0,r0
	mov.w r0,@(0x1E,r4) 

loc_8c0a904e:
	mov r4,r0
	nop 
	add 0x0C,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

loc_8C0A905A:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0A908C,pc),r0 ; r0 set to 0x8C157468
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0A9070:
	mov r4,r3
	mov.l @(loc_8C0A9090,pc),r1 ; r1 set to 0x8C157470
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a9082:
	#data 0x3304
	#align4

loc_8C0A9084:
	#data bank04.loc_8c044F12
loc_8C0A9088:
	#data loc_8c0a905a
loc_8C0A908C:
	#data bank15.loc_8c157468
loc_8C0A9090:
	#data bank15.loc_8c157470

;==============================================
loc_8C0A9094:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.w @(0x13A,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x132,PC),r2
	add 0x01,r0
	mov.l @(0x140,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x12C,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x128,PC),r0
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
	mov.w @(0x10C,PC),r0
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
	mov.l @(0x104,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0xFE,r3
	mov 0x00,r12
	mov.b r2,@(r0,r14)
	mov 0x34,r2
	mov.w @(0xE2,PC),r0
	mov.b r4,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov 0x42,r4
	mov.w @(0xDC,PC),r0
	mov.l @(0xEC,PC),r3
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l r12,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0xBC,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	mov.l @(0xC8,PC),r2
	mov 0x17,r5
	mov 0x0D,r6
	jsr @r2
	mov r14,r4
	mov 0x23,r0
	mov r13,r5
	mov.b r12,@(r0,r14)
	mov 0x04,r0
	mov r14,r4
	mov.w r0,@(0x1C,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A914C:
	mov.w @(0x98,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf.s loc_8c0a9160
	mov r4,r14
	mov.b @(0x5,r5),r0
	tst r0,r0
	bt loc_8c0a916c

loc_8C0A9160:
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	bra loc_8c0a9582
	mov.l @r15+,r14

loc_8C0A916C:
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov 0x3C,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x62,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c0a9196
	mov.l @(0x6C,PC),r1
	mov 0x34,r0
	lds r1,fpul
	bra loc_8c0a919e
	fsts fpul,fr3

loc_8C0A9196:
	mov.l @(0x68,PC),r1
	mov 0x34,r0
	lds r1,fpul
	fsts fpul,fr3

loc_8C0A919E:
	fmov @(r0,r14),fr2
	mov.l @(0x60,PC),r1
	fadd fr3,fr2
	mov.l @(0x60,PC),r4
	lds r1,fpul
	mov 0x01,r1
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x3C,r0
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c0a91d8
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x3C,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0A91D8:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a91dc:
	#data 0x00dc
loc_8c0a91de:
	#data 0x00c0
loc_8c0a91e0:
	#data 0x012c
loc_8c0a91e2:
	#data 0x01a3
loc_8c0a91e4:
	#data 0x01a1
loc_8c0a91e6:
	#data 0x019c
loc_8c0a91e8:
	#data 0x0159
loc_8c0a91ea:
	#data 0x0130
	#align4

loc_8C0A91EC:
	#data bank12.loc_8c129560
loc_8C0A91F0:
	#data bank12.loc_8c1294C8
loc_8C0A91F4:
	#data 0x8C2896B0
loc_8C0A91F8:
	#data bank03.loc_8c034e8c
loc_8C0A91Fc:
	#data 0xC3325555
loc_8C0A9200:
	#data 0x43325555
loc_8C0A9204:
	#data 0x434B9249
loc_8C0A9208:
	#data 0x8C2895F0
loc_8C0A920C:
	#data bank15.loc_8c157480

;==============================================
loc_8C0A9210:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0A9370,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r4,r14
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0A928c
	mov.b @(0x05,r14),r0
	mov 0x07,r3 ; r3 set to 0x07
	mov.w @(loc_8C0A9368,pc),r12 ; r12 set to 0xFF56
	mov 0x06,r13 ; r13 set to 0x06
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b r3,@(r0,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.w r0,@(0x1E,r14)
	mova @(loc_8C0A9374,pc),r0  ; r0 set to 0x8C0A9374
	fmov.s @r0,fr15

loc_8C0A9244:
	mov.w @(0x1E,r14),r0
	mov 0x01,r5 ; r5 set to 0x01, r5 set to 0x01
	mov r12,r7 ; r7 set to 0xFF56
	mov.l r0,@-r15
	mov r0,r3 ; r3 set to 0x8C0A9374
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r14),r6
	bsr loc_8C0A8FF2
	mov r14,r4
	add 0x04,r15
	exts.w r12,r12 ; r12 ??	
	mov.w @(0x1E,r14),r0
	lds r12,fpul
	dt r13
	add 0x01,r0 ; r0 set to 0x22, r0 set to 0x23
	mov.w r0,@(0x1E,r14)
	float fpul,fr3
	mov.w @(0x1E,r14),r0
	and 0x03,r0
	fsub fr15,fr3 ; r3 ??? bc r15 is ???	
	ftrc fr3,fpul
	sts fpul,r12
	bf/s loc_8C0A9244
	mov.w r0,@(0x1E,r14)
	mov 0x00,r2 ; r2 set to 0x00, r2 set to 0x00
	mov.l @(loc_8C0A9378,pc),r3 ; r3 set to 0x8C04223A, r3 set to 0x8C04223a
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x48,r5 ; r5 set to 0x48, r5 set to 0x48
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
	jmp @r3
	mov.l @r15+,r14

loc_8C0A928C:
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A9298:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xC8,PC),r3
	mov r4,r14
	mov.l @(0xCC,PC),r2
	add r5,r3
	mov.l r3,@r15
	jsr @r2
	mov r14,r4
	mov.l @(0xCC,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xB6,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8c0a92e2
	mov 0x00,r4
	mov.b r4,@(r0,r14)
	add 0x60,r0
	mov 0x34,r3
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l @(0xB0,PC),r3
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)

loc_8C0A92E2:
	mov.w @(0x1E,r14),r0
	mov 0x01,r5
	mov.w @(0x7E,PC),r7
	mov.l r0,@-r15
	mov r0,r3
	mov 0x21,r0
	mov.b @(r0,r14),r6
	bsr loc_8c0a8ff2
	mov r14,r4
	add 0x04,r15
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov 0x07,r3
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r2
	and r3,r2
	mov.b r2,@(r0,r14)
	mov.w @(0x1E,r14),r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mov.w @(0x1E,r14),r0
	and 0x03,r0
	mov.w r0,@(0x1E,r14)
	mov.l @r15,r2
	mov.b @(0x6,r2),r0
	tst r0,r0
	bt loc_8c0a9330
	mov.b @(0x5,r14),r0
	mov 0x17,r5
	mov r14,r4
	mov 0x0E,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x58,PC),r2
	jmp @r2
	mov.l @r15+,r14

loc_8C0A9330:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A9338:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0A9370,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0A9360
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0A9582
	mov.l @r15+,r14

loc_8C0A9360:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A9368:
	#data 0xFF56;-170
loc_8C0A936a:
	#data 0x02A4
loc_8C0A936c:
	#data 0x0141
	#align4

loc_8C0A9370:
	#data bank03.loc_8c034dee
loc_8C0A9374:
	#data 0x42480000
loc_8C0A9378:
	#data bank04.loc_8c04223a
loc_8C0A937C:
	#data bank04.loc_8c045748
loc_8C0A9380:
	#data 0x8C2896B0
loc_8C0A9384:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0A9388:
	mov r4,r3
	mov.l @(loc_8C0A94D0,pc),r1 ; r1 set to 0x8C15748c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0A939A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(0x118,PC),r1
	mov.w @(0x116,PC),r2
	mov.l @(0x12C,PC),r3
	add r14,r1
	mov.l r5,@r15
	mov.b @(0x4,r14),r0
	mov.l @(0x14,r14),r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x108,PC),r0
	jsr @r3
	add r4,r2
	mov.w @(0x104,PC),r0
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
	mov.w @(0xE8,PC),r0
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
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r4),r2
	mov 0xFE,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xC2,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bf loc_8c0a944c
	mov.w @(0xB8,PC),r0
	mov 0x42,r5
	mov.b r5,@(r0,r14)
	mov 0x23,r0
	mov.b @(r0,r4),r3
	add 0x01,r3
	mov.b r3,@(r0,r4)
	mov 0x03,r3
	mov.b @(r0,r4),r2
	and r3,r2
	mov.b r2,@(r0,r4)
	mov.b @(r0,r4),r1
	mov 0x00,r4
	mov.w @(0xA0,PC),r0
	add 0x37,r1
	mov.l @(0xB0,PC),r2
	mov.b r1,@(r0,r14)
	add 0x0B,r0
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
	mov.w @(0x7E,PC),r0
	mov.b r5,@(r0,r14)

loc_8C0A944C:
	mov.w @(0x7C,PC),r0
	mov 0x1A,r3
	mov 0x17,r5
	mov.b r3,@(r0,r14)
	add 0xFF,r0
	mov.b r3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov.l @(0x80,PC),r3
	add 0x0F,r6
	jsr @r3
	mov r14,r4
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0A946E:
	mov.w @(0x5C,PC),r0
	mov.l r14,@-r15
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x16,r0
	bf.s loc_8c0a9482
	mov r4,r14
	mov.b @(0x5,r5),r0
	tst r0,r0
	bt loc_8c0a948e

loc_8C0A9482:
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	bra loc_8c0a9590
	mov.l @r15+,r14

loc_8C0A948E:
	mov 0x24,r0
	mov.l @(0x50,PC),r4
	mov.b @(r0,r5),r2
	mov 0x01,r1
	mov.b r2,@(r0,r14)
	mov 0x3C,r0
	mov.w @(r0,r4),r3
	mov 0x3B,r0
	mov.b @(r0,r4),r2
	extu.w r3,r3
	extu.b r2,r2
	shad r2,r1
	tst r1,r3
	bf loc_8c0a94ba
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x38,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0A94BA:
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a94be:
	#data 0x00dc
loc_8c0a94c0:
	#data 0x00c0
loc_8c0a94c2:
	#data 0x012c
loc_8c0a94c4:
	#data 0x01a3
loc_8c0a94c6:
	#data 0x019c
loc_8c0a94c8:
	#data 0x01a1
loc_8c0a94ca:
	#data 0x019d
loc_8c0a94cc:
	#data 0x013f
loc_8c0a94ce:
	#data 0x0159
	#align4

loc_8C0A94D0:
	#data bank15.loc_8c15748c
loc_8C0A94D4:
	#data bank12.loc_8c129560
loc_8C0A94D8:
	#data bank12.loc_8c1294C8
loc_8C0A94Dc:
	#data 0x8C2896B0
loc_8C0A94E0:
	#data bank03.loc_8c034e8c
loc_8C0A94E4:
	#data 0x8C2895F0
loc_8C0A94E8:
	#data bank15.loc_8c15749c

;==============================================
loc_8C0A94EC:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0xF8,PC),r2
	mov r4,r14
	mov r5,r3
	mov.l r5,@r15
	add r3,r2
	mov.l r2,@(0x4,r15)
	mov.l @(0x14,r14),r5
	bsr loc_8c0a95a8
	mov r14,r4
	mov.l @(0xEC,PC),r2
	jsr @r2
	mov r14,r4
	mov.w @(0x1E,r14),r0
	tst r0,r0
	bf loc_8c0a9516
	mov.l @(0xE4,PC),r3
	jsr @r3
	mov r14,r4


loc_8C0A9516:
	mov.l @(0x4,r15),r2
	mov.b @(0x6,r2),r0
	tst r0,r0
	bt loc_8c0a952e
	mov.b @(0x5,r14),r0
	mov 0x17,r6
	mov.l @(0xD8,PC),r3
	mov r6,r5
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	jsr @r3
	mov r14,r4

loc_8C0A952E:
	mov.l @(0xD0,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0a954a
	mov.b @(0x4,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @r15,r5
	add 0x08,r15
	lds.l @r15+,pr
	bra loc_8c0a9590
	mov.l @r15+,r14

loc_8C0A954A:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A9552:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(loc_8C0A95F4,pc),r3 ; r3 set to 0x8C034DEe
	mov r4,r14
	mov.l r5,@r15
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0A957a
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8C0A9590
	mov.l @r15+,r14

loc_8C0A957A:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A9582:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A95F0,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0A9590:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A95F0,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0A959E:
	mov.l @(loc_8C0A9604,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0A95F0,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

loc_8C0A95A8:
	mov 0x34,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x3C,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x34,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c0a95d0
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	bra loc_8c0a95dc
	fadd fr3,fr2

loc_8C0A95D0:
	mov 0x5C,r1
	add r4,r1
	mov 0x34,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	fsub fr3,fr2
#align4
loc_8C0A95DC:
	mov.l @(0x28,PC),r1
	fmov fr2,@(r0,r4)
	mov 0x5C,r0
	lds r1,fpul
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	rts
	fmov fr2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0A95ee:
	#data 0x02A4
loc_8C0A95F0:
	#data 0x012c
loc_8C0A95F2:
	#data 0x0130
	#align4

loc_8C0A95F4:
	#data bank03.loc_8c034dee
loc_8C0A95F8:
	#data bank04.loc_8c045748
loc_8C0A95FC:
	#data bank03.loc_8c034e8c
loc_8C0A9600:
	#data bank03.loc_8c03340c
loc_8C0A9604:
	#data bank04.loc_8c0450C0
loc_8C0A9608:
	#data 0x42480000

;==============================================
;unused
loc_8c0a960c:
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
	bt.s loc_8c0a9654
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

loc_8c0a9654:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A9660:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0A9698,pc),r0 ; r0 set to 0x8C1574A4
	extu.b r3,r3
	mov.l @(0x18,r14),r5
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A9676:
mov r4,r3
mov.l @(loc_8C0A969C,pc),r1 ; r1 set to 0x8C1574B0
mov.l r4,@-r15
mov.b @(0x04,r3),r0
extu.b r0,r0
shll2 r0
mov.l @(r0,r1),r3
jmp @r3
add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a9688:
	#data 0x2E05
loc_8c0a968a:
	#data 0x00CC
loc_8c0a968c:
	#data 0x0158
	#align4

loc_8C0A9690:
	#data bank04.loc_8c044F12
loc_8C0A9694:
	#data loc_8c0a9660
loc_8C0A9698:
	#data bank15.loc_8c1574A4
loc_8C0A969C:
	#data bank15.loc_8c1574B0

;==============================================
loc_8C0A96A0:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.w @(0x132,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x128,PC),r4
	add 0x01,r0
	mov.w @(0x126,PC),r2
	mov.b r0,@(0x4,r14)
	add r14,r4
	mov.w @(0x122,PC),r0
	mov.l @(0x134,PC),r3
	jsr @r3
	add r13,r2
	mov.w @(0x11C,PC),r0
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
	mov.w @(0x100,PC),r0
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
	mov.l @(0xFC,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.l @(0xF8,PC),r12
	mov.b @(r0,r13),r2
	mov 0xFF,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xD8,PC),r0
	mov.b r5,@(r0,r14)
	mov 0x31,r0
	mov.b r3,@(r0,r14)
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
	shll2 r0
	shll r0
	mov.w @(r0,r12),r0
	lds r0,fpul
	mova @(0xCC,PC),r0
	fmov @r0,fr2
	float fpul,fr3
	fmul fr2,fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x2,r4)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	mov 0x02,r1
	extu.b r0,r0
	shll2 r0
	shll r0
	add r12,r0
	mov.w @(r0,r1),r3
	mova @(0xB4,PC),r0
	fmov @r0,fr1
	lds r3,fpul
	float fpul,fr3
	fmul fr1,fr3
	ftrc fr3,fpul
	sts fpul,r0
	mov.w r0,@(0x4,r4)
	mov.w @(0x86,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0a976c
	mov.w @(0x2,r4),r0
	neg r0,r0
	mov.w r0,@(0x2,r4)

loc_8C0A976C:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll r3
	add r12,r3
	mov.w @(0x4,r3),r0
	mov r0,r2
	mov.w @(0x6A,PC),r0
	mov.b r2,@(r0,r14)
	mov.b @(r0,r14),r3
	mov.w @(0x66,PC),r2
	extu.b r3,r3
	cmp/eq r2,r3
	bt loc_8c0a9796
	mov.w @(0x60,PC),r0
	mov 0x43,r1
	mov 0x42,r3
	mov.b r1,@(r0,r14)
	add 0x01,r0
	mov.b r3,@(r0,r14)

loc_8C0A9796:
	mov 0x21,r0
	mov.l @(0x6C,PC),r3
	mov.b @(r0,r14),r6
	mov 0x17,r5
	extu.b r6,r6
	shll2 r6
	shll r6
	add r12,r6
	mov.w @(0x6,r6),r0
	mov r0,r6
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0A97BA:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0A97DE,pc),r4 ; r4 set to 0xCc
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0A97F0,pc),r0 ; r0 set to 0x158
	add r14,r4 ; r4 ??? bc r14 is ???	
	sts.l pr,@-r15
	mov.w @r4,r2
	mov.w @(r0,r13),r3
	cmp/eq r2,r3
	bt loc_8C0A980c
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0A9A74
	mov.l @r15+,r14

;##############################################
loc_8c0a97de:
	#data 0x00cc
loc_8c0a97e0:
	#data 0x00dc
loc_8c0a97e2:
	#data 0x00c0
loc_8c0a97e4:
	#data 0x012c
loc_8c0a97e6:
	#data 0x01a3
loc_8c0a97e8:
	#data 0x0130
loc_8c0a97ea:
	#data 0x01a1
loc_8c0a97ec:
	#data 0x00ff
loc_8c0a97ee:
	#data 0x019c
loc_8c0a97f0:
	#data 0x0158
	#align4

loc_8C0A97F4:
	#data bank12.loc_8c129560
loc_8C0A97F8:
	#data bank12.loc_8c1294C8
loc_8C0A97FC:
	#data bank15.loc_8c1574C0
loc_8C0A9800:
	#data work.CpsXScale
loc_8C0A9804:
	#data work.CpsYScale
loc_8C0A9808:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8C0A980C:
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r3
	mov 0x34,r2 ; r2 set to 0x34
	add r14,r2 ; r2 ??? bc r14 is ???	
	mov.b r3,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(0x02,r4),r0
	fmov.s @r2,fr2
	mov r0,r3 ; r3 set to 0x38
	lds r3,fpul
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	mov 0x38,r2 ; r2 set to 0x38
	mov.w @(0x04,r4),r0
	add r14,r2 ; r2 ??? bc r14 is ???	
	fmov.s @r2,fr2
	mov r0,r3 ; r3 set to 0x38
	lds r3,fpul
	mov.l @(loc_8C0A9938,pc),r3 ; r3 set to 0x8C034DEe
	float fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@r2
	jsr @r3
	mov r14,r4
	exts.b r0,r0 ; r0 ??	
	cmp/pz r0
	bt loc_8C0A9860
	mov.b @(0x04,r14),r0
	mov r13,r5
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8C0A9A66
	mov.l @r15+,r14

loc_8C0A9860:
	mov.w @(loc_8C0A9928,pc),r0 ; r0 set to 0x1A1
	mov.w @(loc_8C0A992A,pc),r3 ; r3 set to 0xFf
	mov.b @(r0,r14),r2
	extu.b r2,r2
	cmp/eq r3,r2
	bt loc_8C0A9878
	lds.l @r15+,pr
	mov.l @(loc_8C0A993C,pc),r1 ; r1 set to 0x8C045748
	mov r14,r4
	mov.l @r15+,r13
	jmp @r1
	mov.l @r15+,r14

loc_8C0A9878:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A9880:
	mov r4,r3
	mov.l @(loc_8C0A9940,pc),r1 ; r1 set to 0x8C157510
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0A9892:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0A992C,pc),r1 ; r1 set to 0xDc
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0A992C,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0A9944,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0A992E,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0A9930,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0A9932,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0A9948,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0x22,r3 ; r3 set to 0x22
	mov.b r2,@(r0,r14)
	mov.w @(loc_8C0A9930,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r4,@(r0,r14)
	mov.w @(loc_8C0A9934,pc),r0 ; r0 set to 0x13f
	mov.b r3,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13e
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
	mova @(loc_8C0A994C,pc),r0  ; r0 set to 0x8C0A994c
	fmov.s @r0,fr4 ; r4 ??	
	mov.w @(loc_8C0A9936,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8C0A9950
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r14),fr3
	bra loc_8C0A9956
	fsub fr4,fr3

;##############################################
loc_8C0A9928:
	#data 0x01A1
loc_8C0A992A:
	#data 0x00Ff
loc_8C0A992C:
	#data 0x00Dc
loc_8C0A992E:
	#data 0x00C0
loc_8C0A9930:
	#data 0x012c
loc_8C0A9932:
	#data 0x01A3
loc_8C0A9934:
	#data 0x013f
loc_8C0A9936:
	#data 0x0130
	#align4

loc_8C0A9938:
	#data bank03.loc_8c034dee
loc_8C0A993C:
	#data bank04.loc_8c045748
loc_8C0A9940:
	#data bank15.loc_8c157510
loc_8C0A9944:
	#data bank12.loc_8c129560
loc_8C0A9948:
	#data bank12.loc_8c1294C8
loc_8C0A994C:
	#data 0x42F00000

;----------------------------------------------
loc_8c0a9950:
	mov 0x34,r0
	fmov.s @(r0,r14),fr3
	fadd fr4,fr3

loc_8c0a9956:
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fadd fr4,fr2
	fmov.s fr2,@(r0,r14) 
	mova @(loc_8C0A9A8C,pc),r0 
	fmov.s @r0,fr3
	mov 0x5C,r0
	fmov.s fr3,@(r0,r14) 
	mova @(loc_8C0A9A90,pc),r0 
	fmov.s @r0,fr3
	mov 0x68,r0
	fmov.s fr3,@(r0,r14) 
	mov.w @(loc_8C0A9A7E,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bt loc_8c0a9988
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x68,r0
	fmov.s @(r0,r14),fr3
	fneg fr3
	fmov.s fr3,@(r0,r14) 

loc_8c0a9988:
	mov.w @(loc_8C0A9A80,pc),r0
	mov 0x08,r3
	mov 0x00,r4
	mov.b r3,@(r0,r14) 
	add 0x0B,r0
	mov.w r4,@(r0,r14) 
	add 0xF2,r0
	mov.b r4,@(r0,r14) 
	add 0x26,r0
	mov.l @(loc_8C0A9A94,pc),r3
	mov 0x17,r5
	mov.l r4,@(r0,r14) 
	mov 0x42,r4
	mov.b @(0x02,r14),r0 
	mov 0x1D,r6
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov.w @(loc_8C0A9A82,pc),r0
	mov.l @(loc_8c0a9a98,pc),r2
	mov.b r4,@(r0,r14) 
	add 0x01,r0
	mov.b r4,@(r0,r14) 
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr 
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8c0a99cc:
	mov.l r14,@-r15
	mov 0x24,r0
	mov.l r13,@-r15
	mov r5,r13
	mov r4,r14
	mov 0x5C,r1
	add r14,r1
	sts.l pr,@-r15
	mov.b @(r0,r13),r3
	mov.b r3,@(r0,r14) 
	mov 0x34,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x68,r1
	add r14,r1
	mov.l @(loc_8c0a9a9c,pc),r3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x5C,r0
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0A9A84,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0a9a14
	mov.l @(loc_8c0a9aa0,pc),r2
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0A9A86,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0a9a1c

loc_8c0a9a14:
	mov.b @(0x04,r14),r0 
	add 0x01,r0
	bra loc_8c0a9a32
	mov.b r0,@(0x04,r14) 

loc_8c0a9a1c:
	mov.l @(loc_8c0a9aa4,pc),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0a9a32
	lds.l @r15+,pr 
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0a9a74
	mov.l @r15+,r14

loc_8c0a9a32:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

loc_8C0A9A3A:
	mov.l r14,@-r15
	mov r4,r5
	sts.l pr,@-r15
	mov.l @(loc_8C0A9AA8,pc),r3 ; r3 set to 0x8C10235c
	mov 0x01,r6 ; r6 set to 0x01
	mov r4,r14
	mov 0x08,r7 ; r7 set to 0x08
	jsr @r3
	add 0x34,r5
	mov.l @(loc_8C0A9AAC,pc),r2 ; r2 set to 0x8C04223a
	mov 0x49,r5 ; r5 set to 0x49
	jsr @r2
	mov r14,r4
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0A9A88,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0A9A66:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0A9A88,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0A9A74:
	mov.l @(loc_8C0A9AB0,pc),r3 ; r3 set to 0x8C0450C0
	mov 0x00,r2 ; r2 set to 0x00
	mov.w @(loc_8C0A9A88,pc),r0 ; r0 set to 0x12c
	jmp @r3
	mov.b r2,@(r0,r4)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a9a7e:
	#data 0x0130
loc_8c0a9a80:
	#data 0x01A1
loc_8c0a9a82:
	#data 0x019C
loc_8c0a9a84:
	#data 0x019f
loc_8c0a9a86:
	#data 0x019E
loc_8C0A9A88:
	#data 0x012c
	#align4

loc_8c0a9a8c:
	#data 0xC0D55555
loc_8c0a9a90:
	#data 0xBED55555
loc_8c0a9a94:
	#data 0x8C2896B0
loc_8C0A9A98:
	#data bank03.loc_8c034e8c
loc_8C0A9A9C:
	#data bank03.loc_8c034dee
loc_8C0A9AA0:
	#data bank04.loc_8c045748
loc_8C0A9AA4:
	#data bank03.loc_8c03340c
loc_8C0A9AA8:
	#data bank10.loc_8c10235c
loc_8C0A9AAC:
	#data bank04.loc_8c04223a
loc_8C0A9AB0:
	#data bank04.loc_8c0450C0

;==============================================
;unused
loc_8c0a9ab4:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l r4,@r15
	mov r5,r0
	nop
	mov.l @(0x148,PC),r3
	mov 0x01,r5
	mov.b r0,@(0x4,r15)
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a9af0
	mov r0,r4
	mov 0x20,r0
	mov.l @(0x138,PC),r3
	mov 0x00,r5
	mov 0x23,r1
	mov.l r3,@(0x10,r4)
	add r4,r1
	mov.w @(0x122,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.b r5,@(r0,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x22,r0
	mov.b r5,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0a9af0:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
;unused
loc_8c0a9af8:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x108,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0a9b30
	mov r0,r4
	mov.l @(0xF8,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov 0x00,r3
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov.b r3,@(r0,r4)
	mov 0x23,r0
	mov.b @r15,r2
	mov 0x01,r3
	mov.b r2,@(r0,r4)
	mov 0x22,r0
	mov.w @(0xD6,PC),r2
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r2,@(r0,r4)
loc_8c0a9b30:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0A9B38:
	mov.l r14,@-r15
	mov 0x02,r6
	mov.l r13,@-r15
	mov r4,r14
	mov.l r12,@-r15
	mov 0x01,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	mov 0x05,r9
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0xB4,PC),r8
	mov.w @(0xAC,PC),r11
	jsr @r8
	mov r12,r5
	tst r0,r0
	bt.s loc_8c0a9b92
	mov r0,r13
	mov.l @(0xAC,PC),r2
	mov 0x22,r0
	mov.l r2,@(0x10,r13)
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r13)
	mov 0x00,r3
	mov.l r14,@(0x14,r13)
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r13)
	mov 0x23,r0
	mov.b r3,@(r0,r13)
	mov 0x20,r0
	mov.b r12,@(r0,r13)
	mov 0x26,r0
	mov.w r11,@(r0,r13)
	mov r9,r0
	nop
	mov.w @(0x80,PC),r4
	add 0xFF,r9
	mov.w @(0x7C,PC),r5
	add r13,r4
	mov.w r0,@(0x1E,r13)
	add r14,r5
	mov.l r14,@r4
	mov.l r13,@(0x4,r4)
	mov.l r13,@(0x4,r5)

loc_8C0A9B92:
	mov 0x05,r10

loc_8C0A9B94:
	mov 0x01,r5
	mov 0x02,r6
	jsr @r8
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0a9bd4
	mov r0,r4
	mov.l @(0x68,PC),r2
	mov 0x22,r0
	mov.l r2,@(0x10,r4)
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(r0,r14),r2
	mov.b r2,@(r0,r4)
	mov 0x23,r0
	mov.b r12,@(r0,r4)
	mov 0x20,r0
	mov.b r12,@(r0,r4)
	mov 0x26,r0
	mov.w r11,@(r0,r4)
	mov r9,r0
	nop
	mov.w @(0x3E,PC),r6
	add 0xFF,r9
	mov.w @(0x3A,PC),r5
	add r14,r6
	mov.w r0,@(0x1E,r4)
	add r13,r5
	mov.l r14,@r5
	mov.l @(0x4,r6),r3
	mov.l r3,@(0x4,r5)

loc_8C0A9BD4:
	dt r10
	bf loc_8c0a9b94
	mov r4,r0
	nop
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
loc_8C0A9BEE:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0A9C10,pc),r1 ; r1 set to 0x8C15752c
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0a9c02:
	#data 0x3400
loc_8c0a9c04:
	#data 0x0088
	#align4

loc_8C0A9C08:
	#data bank04.loc_8c044F12
loc_8C0A9C0C:
	#data loc_8c0a9BEe
loc_8C0A9C10:
	#data bank15.loc_8c15752c

;----------------------------------------------
loc_8C0A9C14:
	mov.w @(loc_8C0A9D1A,pc),r0 ; r0 set to 0x13c
	mov.l @(loc_8C0A9D2C,pc),r3 ; r3 set to 0x20202020
	mov.l r3,@(r0,r4)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8C0A9C2e
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8C0A9C3a
	bra loc_8C0A9C3e
	nop

loc_8C0A9C2E:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8C0A9C3a
	bra loc_8C0AA054
	nop

loc_8C0A9C3A:
	bra loc_8C0A9ED0
	nop

loc_8C0A9C3E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(loc_8C0A9D1C,pc),r3 ; r3 set to 0x2A4
	mov.w @(loc_8C0A9D20,pc),r1 ; r1 set to 0xDc
	mov 0x01,r12 ; r12 set to 0x01
	add r5,r3 ; r3 ??? bc r5 is ???	
	mov.w @(loc_8C0A9D1E,pc),r4 ; r4 set to 0x88
	mov.l r3,@r15
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.b @(0x04,r14),r0
	mov 0x00,r13 ; r13 set to 0x00
	mov.l @(loc_8C0A9D30,pc),r3 ; r3 set to 0x8C129560
	add r14,r4 ; r4 ??? bc r14 is ???	
	add 0x01,r0
	mov.w @(loc_8C0A9D20,pc),r2 ; r2 set to 0xDc
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0A9D22,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0A9D24,pc),r0 ; r0 set to 0x12c
	mov r14,r1
	add 0x50,r1
	mov.b r12,@(r0,r14)
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
	mov.w @(loc_8C0A9D26,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r5),r3
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x1A4
	mov.b @(r0,r5),r2
	mov.b r2,@(r0,r14)
	mov 0x30,r0 ; r0 set to 0x30
	mov.b @(r0,r5),r3
	mov r5,r2
	add 0x50,r2
	mov.b r3,@(r0,r14)
	mov.l @(loc_8C0A9D34,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x0D,r7 ; r7 set to 0x0d
	mov.b r2,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C0A9CD0
	mov 0x09,r6 ; r6 set to 0x09
	cmp/eq 0x01,r0
	bt loc_8C0A9CE6
	cmp/eq 0x02,r0
	bt loc_8C0A9CF4
	cmp/eq 0x03,r0
	bt loc_8C0A9D00
	cmp/eq 0x04,r0
	bt loc_8C0A9D0c
	cmp/eq 0x05,r0
	bt loc_8C0A9D38
	bra loc_8C0A9D60
	nop

loc_8C0A9CD0:
	mov 0x21,r0 ; r0 set to 0x21
	mov.b r6,@(r0,r14)
	mov.w @(loc_8C0A9D28,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x03,r0
	bt loc_8C0A9CEc
	mov.w @(loc_8C0A9D2A,pc),r0 ; r0 set to 0x1A1
	mov 0x31,r3 ; r3 set to 0x31
	bra loc_8C0A9D42
	mov.b r3,@(r0,r14)

loc_8c0a9ce6:
	mov 0x21,r0
	mov 0x05,r2
	mov.b r2,@(r0,r14) 

loc_8C0A9CEC:
	mov.w @(loc_8C0A9D2A,pc),r0 ; r0 set to 0x1A1
	mov 0x30,r3 ; r3 set to 0x30
	bra loc_8C0A9D42
	mov.b r3,@(r0,r14)

loc_8C0A9CF4:
	mov 0x21,r0 ; r0 set to 0x21
	mov.b r7,@(r0,r14)
	mov 0x2E,r3 ; r3 set to 0x2e
	mov.w @(loc_8C0A9D2A,pc),r0 ; r0 set to 0x1A1
	bra loc_8C0A9D42
	mov.b r3,@(r0,r14)

loc_8C0A9D00:
	mov 0x21,r0 ; r0 set to 0x21
	mov.b r6,@(r0,r14)
	mov 0x33,r3 ; r3 set to 0x33
	mov.w @(loc_8C0A9D2A,pc),r0 ; r0 set to 0x1A1
	bra loc_8C0A9D42
	mov.b r3,@(r0,r14)

loc_8C0A9D0C:
	mov 0x21,r0 ; r0 set to 0x21
	mov 0x05,r1 ; r1 set to 0x05
	mov.b r1,@(r0,r14)
	mov 0x32,r3 ; r3 set to 0x32
	mov.w @(loc_8C0A9D2A,pc),r0 ; r0 set to 0x1A1
	bra loc_8C0A9D42
	mov.b r3,@(r0,r14)

;##############################################
loc_8C0A9D1A:
	#data 0x013c
loc_8C0A9D1C:
	#data 0x02A4
loc_8C0A9D1E:
	#data 0x0088
loc_8C0A9D20:
	#data 0x00Dc
loc_8C0A9D22:
	#data 0x00C0
loc_8C0A9D24:
	#data 0x012c
loc_8C0A9D26:
	#data 0x01A3
loc_8C0A9D28:
	#data 0x0255
loc_8C0A9D2A:
	#data 0x01A1
	#align4

loc_8C0A9D2C:
	#data 0x20202020
loc_8C0A9D30:
	#data bank12.loc_8c129560
loc_8C0A9D34:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0a9d38:
	mov 0x21,r0
	mov.b r7,@(r0,r14)
	mov 0x2F,r3
	mov.w @(loc_8C0A9EAA,pc),r0
	mov.b r3,@(r0,r14) 

loc_8C0A9D42:
	mov.w @(loc_8C0A9EAC,pc),r0 ; r0 set to 0x1Ac
	mov.l @(loc_8C0A9EB4,pc),r3 ; r3 set to 0x8C2896B0
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
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

loc_8C0A9D60:
	mova @(loc_8C0A9EB8,pc),r0  ; r0 set to 0x8C0A9EB8, r0 init to 0x8C0A9EB8
	mov.l @(loc_8C0A9EC0,pc),r6 ; r6 set to 0x8C15753C, r6 set to 0x8C15753c
	fmov.s @r0,fr6 ; r6 ??, r6 ??	
	mova @(loc_8C0A9EBC,pc),r0  ; r0 set to 0x8C0A9EBC, r0 set to 0x8C0A9EBc
	fmov.s @r0,fr5
	mova @(loc_8C0A9EC4,pc),r0  ; r0 set to 0x8C0A9EC4, r0 set to 0x8C0A9EC4
	fmov.s @r0,fr4
	mov.w @(loc_8C0A9EAE,pc),r0 ; r0 set to 0x130, r0 set to 0x130
	mov.w @(r0,r5),r3 ; r3 ??? bc r5 is ???	
	tst r3,r3
	bf/s loc_8C0A9DE4
	mov r6,r7
	mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
	mov.b @(r0,r14),r3
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r7
	mov.l @r7,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fneg fr3
	fmov.s fr3,@(r0,r4)
	mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
	mov.b @(r0,r14),r3
	mov 0x0C,r0 ; r0 set to 0x0C, r0 set to 0x0c
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r6,r3
	mov.l @(0x04,r3),r2
	lds r2,fpul
	float fpul,fr3
	fmul fr6,fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r6,r3
	mov.l @(0x08,r3),r2
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r6
	mov.l @(0x0C,r6),r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	bra loc_8C0A9E48
	fneg fr3

loc_8c0a9de4:
	mov 0x23,r0
	mov.b @(r0,r14),r2
	mov 0x08,r0
	extu.b r2,r2
	shll2 r2
	shll2 r2
	add r2,r7
	mov.l @r7,r3
	lds r3,fpul 
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r4) 
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov 0x0C,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r6,r3
	mov.l @(0x04,r3),r2
	lds r2,fpul 
	float fpul,fr3
	fmul fr6,fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r4) 
	mov 0x23,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r6,r3
	mov.l @(0x08,r3),r2
	mov 0x5C,r0
	lds r2,fpul 
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x23,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r6
	mov.l @(0x0C,r6),r3
	lds r3,fpul 
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3

loc_8c0a9e48:
	mov 0x68,r0
	fmov.s fr3,@(r0,r14) 
	mov 0x08,r0
	fmov.s @(r0,r4),fr3
	mov 0x34,r0
	fmov.s @(r0,r5),fr2
	mov 0x44,r3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x0C,r0
	fmov.s @(r0,r4),fr3
	mov 0x38,r0
	fmov.s @(r0,r5),fr2
	mov 0x15,r5
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov.w @(loc_8C0A9EB0,pc),r0
	mov.b r3,@(r0,r14) 
	add 0x01,r0
	mov.b r12,@(r0,r14) 
	mov 0x21,r0
	mov.l @(loc_8c0a9ec8,pc),r3
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov.l @(loc_8c0a9ecc,pc),r3
	mov 0x31,r0
	mov 0xFE,r2
	mov.b r2,@(r0,r14) 
	jsr @r3
	mov r14,r4
	bsr loc_8c0a9b38
	mov r14,r4
	tst r0,r0
	bf loc_8c0a9e9e
	mov 0x03,r0
	mov.b r0,@(0x04,r14) 
	mov.w @(loc_8C0A9EB2,pc),r0
	mov.b r13,@(r0,r14) 
	mov.l @r15,r3
	mov r12,r0
	nop 
	mov.b r0,@(0x04,r3) 

loc_8c0a9e9e:
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0a9eaa:
	#data 0x01A1
loc_8c0a9eac:
	#data 0x01AC
loc_8c0a9eae:
	#data 0x0130
loc_8C0A9EB0:
	#data 0x019C
loc_8C0A9EB2:
	#data 0x012C
	#align4

loc_8c0a9eb4:
	#data 0x8C2896B0
loc_8c0a9eb8:
	#data work.CpsYScale
loc_8c0a9ebc:
	#data work.CpsXScale
loc_8c0a9ec0:
	#data bank15.loc_8C15753C
loc_8c0a9ec4:
	#data 0x47800000
loc_8c0a9ec8:
	#data bank03.loc_8c034e8c
loc_8c0a9ecc:
	#data bank04.loc_8c045748

;==============================================
loc_8c0a9ed0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x136,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x12C,PC),r6
	add 0x01,r0
	mov.w @(0x12A,PC),r2
	mov.l @(0x134,PC),r3
	add r14,r6
	mov.l @(0x14,r14),r4
	mov.b r0,@(0x4,r14)
	mov.w @(0x122,PC),r0
	jsr @r3
	add r5,r2
	mov.w @(0x11E,PC),r0
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
	mov.w @(0x102,PC),r0
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
	mov.l @(0xF4,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r5),r2
	mov 0x00,r3
	mov.b r2,@(r0,r14)
	mov.w @(0xDC,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x31,r0
	mov.b @(r0,r4),r2
	add 0x01,r2
	mov.b r2,@(r0,r14)
	mov.l @(0xC,r4),r3
	cmp/eq r3,r14
	bf loc_8c0a9fe4
	mova @(0xDC,PC),r0
	mov.l @(0xD8,PC),r7
	fmov @r0,fr5
	mova @(0xDC,PC),r0
	fmov @r0,fr4
	mov 0x23,r0
	mov.b @(r0,r4),r3
	mov 0x08,r0
	extu.b r3,r3
	shll2 r3
	add r7,r3
	mov.w @r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r6)
	mova @(0xC4,PC),r0
	fmov @r0,fr7
	mov 0x23,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	shll2 r3
	add r3,r7
	mov.w @(0x2,r7),r0
	mov r0,r3
	lds r3,fpul
	mov 0x0C,r0
	float fpul,fr3
	fmul fr7,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r6)
	mov 0x5C,r0
	fldi0 fr6
	fmov fr6,@(r0,r14)
	mov 0x60,r0
	fmov fr6,@(r0,r14)
	mov 0x68,r0
	fmov fr6,@(r0,r14)
	mov 0x6C,r0
	fmov fr6,@(r0,r14)
	mov.w @(0x7A,PC),r0
	mov.l @(0x94,PC),r7
	mov.b @(r0,r5),r3
	mov 0x5C,r0
	extu.b r3,r3
	shll2 r3
	add r7,r3
	mov.w @r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov fr3,@(r0,r14)
	mov.w @(0x60,PC),r0
	mov.b @(r0,r5),r3
	extu.b r3,r3
	shll2 r3
	add r3,r7
	mov.w @(0x2,r7),r0
	mov r0,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr7,fr3
	fdiv fr4,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x48,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bf loc_8c0a9fe4
	mov 0x5C,r0
	mov r6,r5
	fmov @(r0,r14),fr3
	add 0x08,r5
	fneg fr3
	fmov fr3,@(r0,r14)
	fmov @r5,fr3
	fneg fr3
	fmov fr3,@r5

loc_8c0a9fe4:
	mov 0x23,r0
	mov.b @(r0,r4),r0
	mov 0x08,r7
	mov 0x0C,r6
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt.s loc_8c0aa034
	mov 0x04,r5
	cmp/eq 0x01,r0
	bt loc_8c0aa03a
	cmp/eq 0x02,r0
	bt loc_8c0aa040
	cmp/eq 0x03,r0
	bt loc_8c0aa034
	cmp/eq 0x04,r0
	bt loc_8c0aa03a
	cmp/eq 0x05,r0
	bt loc_8c0aa040
	bra loc_8c0aa044
	nop

;##############################################
loc_8c0aa00c:
	#data 0x0088
loc_8c0aa00e:
	#data 0x00DC
loc_8c0aa010:
	#data 0x00C0
loc_8c0aa012:
	#data 0x012C
loc_8c0aa014:
	#data 0x01A3
loc_8c0aa016:
	#data 0x0130
	#align4

loc_8c0aa018:
	#data bank12.loc_8c129560
loc_8c0aa01c:
	#data bank12.loc_8c1294c8
loc_8c0aa020:
	#data bank15.loc_8c15759c
loc_8c0aa024:
	#data work.CpsXScale
loc_8c0aa028:
	#data 0x43800000
loc_8c0aa02c:
	#data work.CpsYScale
loc_8c0aa030:
	#data bank15.loc_8C157520

;----------------------------------------------
loc_8c0aa034:
	mov 0x21,r0
	bra loc_8c0aa044
	mov.b r7,@(r0,r14)

loc_8c0aa03a:
	mov 0x21,r0
	bra loc_8c0aa044
	mov.b r5,@(r0,r14)

loc_8c0aa040:
	mov 0x21,r0
	mov.b r6,@(r0,r14)

loc_8c0aa044:
	lds.l @r15+,pr
	mov 0x21,r0
	mov.l @(0xB0,PC),r3
	mov.b @(r0,r14),r6
	mov 0x15,r5
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0AA054:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(loc_8C0AA0EE,pc),r3 ; r3 set to 0x2A4
	mov.w @(loc_8C0AA0F2,pc),r1 ; r1 set to 0xDc
	add r5,r3 ; r3 ??? bc r5 is ???	
	mov.w @(loc_8C0AA0F0,pc),r4 ; r4 set to 0x88
	mov.l r3,@r15
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.b @(0x04,r14),r0
	add r14,r4 ; r4 ??? bc r14 is ???	
	mov.w @(loc_8C0AA0F2,pc),r2 ; r2 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0AA100,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0AA0F4,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0AA0F6,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0AA0F8,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0AA104,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r5),r2
	mov 0x0D,r7 ; r7 set to 0x0d
	mov.b r2,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt/s loc_8C0AA0E0
	mov 0x09,r6 ; r6 set to 0x09
	cmp/eq 0x01,r0
	bt loc_8C0AA0E6
	cmp/eq 0x02,r0
	bt loc_8C0AA108
	cmp/eq 0x03,r0
	bt loc_8C0AA0E0
	cmp/eq 0x04,r0
	bt loc_8C0AA0E6
	cmp/eq 0x05,r0
	bt loc_8C0AA108
	bra loc_8C0AA10c
	nop

loc_8C0AA0E0:
	mov 0x21,r0 ; r0 set to 0x21
	bra loc_8C0AA10c
	mov.b r6,@(r0,r14)

loc_8C0AA0E6:
	mov 0x21,r0 ; r0 set to 0x21
	mov 0x05,r2 ; r2 set to 0x05
	bra loc_8C0AA10c
	mov.b r2,@(r0,r14)

;##############################################
loc_8C0AA0EE:
	#data 0x02A4
loc_8C0AA0F0:
	#data 0x0088
loc_8C0AA0F2:
	#data 0x00Dc
loc_8C0AA0F4:
	#data 0x00C0
loc_8C0AA0F6:
	#data 0x012c
loc_8C0AA0F8:
	#data 0x01A3
	#align4

loc_8C0AA0FC:
	#data bank03.loc_8c034e8c
loc_8C0AA100:
	#data bank12.loc_8c129560
loc_8C0AA104:
	#data bank12.loc_8c1294C8

;----------------------------------------------
loc_8c0aa108:
	mov 0x21,r0
	mov.b r7,@(r0,r14) 

loc_8C0AA10C:
	mova @(loc_8C0AA248,pc),r0  ; r0 init to 0x8C0AA248
	mov.l @(loc_8C0AA250,pc),r6 ; r6 set to 0x8C1575B4
	fmov.s @r0,fr6 ; r6 ??	
	mova @(loc_8C0AA24C,pc),r0  ; r0 set to 0x8C0AA24c
	fmov.s @r0,fr5
	mova @(loc_8C0AA254,pc),r0  ; r0 set to 0x8C0AA254
	fmov.s @r0,fr4
	mov.w @(loc_8C0AA242,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r5),r3
	tst r3,r3
	bf/s loc_8C0AA190
	mov r6,r7
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r3
	mov 0x08,r0 ; r0 set to 0x08
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r7
	mov.l @r7,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fneg fr3
	fmov.s fr3,@(r0,r4)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r3
	mov 0x0C,r0 ; r0 set to 0x0c
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r6,r3
	mov.l @(0x04,r3),r2
	lds r2,fpul
	float fpul,fr3
	fmul fr6,fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r4)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r6,r3
	mov.l @(0x08,r3),r2
	mov 0x5C,r0 ; r0 set to 0x5c
	lds r2,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fneg fr3
	fmov.s fr3,@(r0,r14)
	mov 0x23,r0 ; r0 set to 0x23
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r6
	mov.l @(0x0C,r6),r3
	lds r3,fpul
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	bra loc_8C0AA1F4
	fneg fr3

loc_8c0aa190:
	mov 0x23,r0
	mov.b @(r0,r14),r2
	mov 0x08,r0
	extu.b r2,r2
	shll2 r2
	shll2 r2
	add r2,r7
	mov.l @r7,r3
	lds r3,fpul 
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r4) 
	mov 0x23,r0
	mov.b @(r0,r14),r3
	mov 0x0C,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r6,r3
	mov.l @(0x04,r3),r2
	lds r2,fpul 
	float fpul,fr3
	fmul fr6,fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r4) 
	mov 0x23,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r6,r3
	mov.l @(0x08,r3),r2
	mov 0x5C,r0
	lds r2,fpul 
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x23,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r3,r6
	mov.l @(0x0C,r6),r3
	lds r3,fpul 
	float fpul,fr3
	fmul fr5,fr3
	fdiv fr4,fr3

loc_8c0aa1f4:
	mov 0x68,r0
	mov.l @(loc_8c0aa258,pc),r3
	fmov.s fr3,@(r0,r14) 
	mov 0x08,r0
	fmov.s @(r0,r4),fr3
	mov 0x34,r0
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x0C,r0
	fmov.s @(r0,r4),fr3
	mov 0x38,r0
	fmov.s @(r0,r5),fr2
	mov 0x15,r5
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x21,r0
	mov.b @(r0,r14),r6
	jsr @r3
	mov r14,r4
	mov 0x31,r0
	mov 0xFE,r2
	mov.b r2,@(r0,r14) 
	bsr loc_8c0a9b38
	mov r14,r4
	tst r0,r0
	bf loc_8c0aa23a
	mov 0x03,r0
	mov.b r0,@(0x04,r14) 
	mov 0x00,r3
	mov.w @(loc_8C0AA244,pc),r0
	mov.b r3,@(r0,r14) 
	mov 0x01,r0
	mov.l @r15,r2
	mov.b r0,@(0x04,r2) 

loc_8c0aa23a:
	add 0x04,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0aa242:
	#data 0x0130
loc_8C0AA244:
	#data 0x012C
	#align4

loc_8c0aa248:
	#data work.CpsYScale
loc_8c0aa24c:
	#data work.CpsXScale
loc_8c0aa250:
	#data bank15.loc_8C1575B4
loc_8c0aa254:
	#data 0x47800000
loc_8c0aa258:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0AA25C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	bsr loc_8C0AA6Fc
	mov r5,r13
	mov.w @(loc_8C0AA360,pc),r0 ; r0 set to 0x19e
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0AA2A8
	mov.w @(loc_8C0AA362,pc),r0 ; r0 set to 0x1B0
	mov r13,r5
	mov.l @(r0,r14),r3
	mov 0x03,r0 ; r0 set to 0x03
	mov.l r3,@r15
	mov.w r0,@(0x1C,r14)
	mov.b @(0x05,r14),r0
	add 0x01,r0 ; r0 set to 0x04
	mov.b r0,@(0x05,r14)
	bsr loc_8C0AA750
	mov r14,r4
	mov.l @r15,r2
	mov.b @(0x03,r2),r0
	tst r0,r0
	bf loc_8C0AA2E2
	mov.l @(loc_8C0AA370,pc),r4 ; r4 set to 0x8C26A518
	mov 0x01,r0 ; r0 set to 0x01
	mov 0x30,r5 ; r5 set to 0x30
	mov.b r0,@(0x05,r4)
	mov.b r0,@(0x06,r4)
	mov r13,r4 ; r4 ??? bc r13 is ???	
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0AA374,pc),r3 ; r3 set to 0x8C04223a
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0aa2a8:
	mov 0x00,r5
	bsr loc_8c0aa7aa
	mov r14,r4
	tst r0,r0
	bf loc_8c0aa2ca
	mov.w @(loc_8C0AA364,pc),r0
	mov.w @(loc_8C0AA366,pc),r3
	mov.w @(r0,r13),r2
	extu.w r2,r2
	tst r3,r2
	bt loc_8c0aa2d4
	mov.w @(loc_8C0AA368,pc),r0
	mov.w @(loc_8C0AA36A,pc),r1
	mov.w @(r0,r13),r2
	extu.w r2,r2
	tst r1,r2
	bt loc_8c0aa2d4

loc_8c0aa2ca:
	mov 0x03,r0
	mov.w r0,@(0x1C,r14) 
	mov.b @(0x05,r14),r0 
	add 0x01,r0
	mov.b r0,@(0x05,r14) 

loc_8c0aa2d4:
	mov r14,r4
	mov r13,r5
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r13
	bra loc_8c0aa750
	mov.l @r15+,r14

loc_8C0AA2E2:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0AA2EC:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0aa35c
	mova @(0x80,PC),r0
	mov.l @(0x78,PC),r6
	fmov @r0,fr5
	mova @(0x7C,PC),r0
	fmov @r0,fr4
	mov 0x23,r0
	mov.b @(r0,r4),r3
	mov 0x5C,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r6,r3
	mov.l @r3,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fmov fr3,@(r0,r4)
	mov 0x23,r0
	mov.b @(r0,r4),r3
	mov 0x68,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r6
	mov.l @(0x4,r6),r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x30,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c0aa350
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8C0AA350:
	mov.w @(0x1A,PC),r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8C0AA35C:
	bra loc_8c0aa750
	nop

;##############################################
loc_8C0AA360:
	#data 0x019e
loc_8C0AA362:
	#data 0x01B0
loc_8c0aa364:
	#data 0x034e
loc_8c0aa366:
	#data 0x0300
loc_8c0aa368:
	#data 0x034a
loc_8c0aa36a:
	#data 0x0400
loc_8c0aa36c:
	#data 0x0130
loc_8c0aa36e:
	#data 0x019C
	#align4

loc_8C0AA370:
	#data 0x8C26A518
loc_8C0AA374:
	#data bank04.loc_8c04223a
loc_8C0AA378:
	#data bank15.loc_8c157614
loc_8C0AA37c:
	#data 0x47800000
loc_8C0AA380:
	#data work.CpsXScale

;==============================================
loc_8C0AA384:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x13E,PC),r4
	mov 0x08,r0
	mov.l r13,@-r15
	mov r5,r13
	add r14,r4
	mov.w @(0x136,PC),r5
	sts.l pr,@-r15
	fmov @(r0,r4),fr3
	mov 0x34,r0
	fmov @(r0,r13),fr4
	add r13,r5
	fadd fr3,fr4
	fmov fr4,fr3
	fmov @(r0,r14),fr4
	mov.w @(0x126,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0aa3b0
	fsub fr3,fr4
	fneg fr4

loc_8C0AA3B0:
	fldi0 fr3
	fcmp/gt fr3,fr4
	bt loc_8c0aa3f2
	mov 0x08,r0
	fmov @(r0,r4),fr2
	mov 0x34,r0
	fmov @(r0,r13),fr1
	mov 0x00,r3
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r4),fr2
	mov 0x38,r0
	fmov @(r0,r13),fr1
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x10,r0
	fmov fr3,@(r0,r4)
	mov r14,r4
	mov.w @(0xF6,PC),r0
	mov.b r3,@(r0,r14)
	mov 0x03,r0
	mov.w r0,@(0x1C,r14)
	mov 0x01,r0
	mov.b r0,@(0x4,r5)
	mov r13,r5
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0aa774 ; loc_8c0aa750+0x24
	mov.l @r15+,r14

loc_8C0AA3F2:
	mov r13,r5
	bsr loc_8c0aa6fc
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0aa750
	mov.l @r15+,r14

loc_8C0AA404:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0AA420
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0AA4D2,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0AA420:
	bra loc_8C0AA750
	nop

;unused
	rts
	nop

;----------------------------------------------
loc_8C0AA428:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x14,r14),r4
	mov 0x02,r3 ; r3 set to 0x02
	mov.w @(loc_8C0AA4CA,pc),r5 ; r5 set to 0x88
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/ge r3,r0
	bf/s loc_8C0AA450
	add r4,r5 ; r5 ??? bc r4 is ???	
	mov.b @(0x04,r14),r0
	mov 0x00,r2 ; r2 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0AA4D2,pc),r0 ; r0 set to 0x12c
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0aa450:
	mov.w @(0x1E,r14),r0 
	mov r0,r3
	mov.w @(0x18,r5),r0 
	cmp/gt r0,r3
	bt loc_8c0aa466
	mov.l @(loc_8c0aa4dc,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0aa4d2,pc),r1
	add r14,r1
	mov.b r0,@r1

loc_8c0aa466:
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

loc_8C0AA46C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(loc_8C0AA4D4,pc),r0 ; r0 set to 0x1C8
	mov r5,r13
	mov r4,r14
	mov.l @(r0,r13),r4
	add 0x35,r0 ; r0 set to 0x1Fd
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C0AA4E8
	mov 0x03,r0 ; r0 set to 0x03
	mov.w @(loc_8C0AA4D8,pc),r7 ; r7 set to 0x89
	mov.w r0,@(0x1C,r14)
	mov 0x01,r3 ; r3 set to 0x01
	mov.b @(0x05,r14),r0
	mov 0x02,r2 ; r2 set to 0x02
	mov 0x20,r5 ; r5 set to 0x20
	mov r3,r6 ; r6 set to 0x01
	add 0x01,r0 ; r0 set to 0x04
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0AA4D6,pc),r0 ; r0 set to 0x1B4
	mov.l r13,@(r0,r4)
	add 0x42,r0 ; r0 set to 0x1F6
	mov.b r3,@(r0,r4)
	add 0x03,r0 ; r0 set to 0x1F9
	mov.b r2,@(r0,r4)
	add 0xA8,r0 ; r0 set to 0x1A1
	mov.b r5,@(r0,r4)
	mov.b r5,@(r0,r13)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
	mov 0x38,r0 ; r0 set to 0x38
	mov.l @(loc_8C0AA4E0,pc),r3 ; r3 set to 0x8C10235c
	fmov.s fr3,@r15
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr3,@(r0,r15)
	jsr @r3
	mov r15,r5 ; r5 ??? bc r15 is ???	
	mov.l @(loc_8C0AA4E4,pc),r2 ; r2 set to 0x8C04223a
	mov 0x49,r5 ; r5 set to 0x49
	jsr @r2
	mov r14,r4
	bra loc_8C0AA4Ee
	nop

;##############################################
loc_8C0AA4CA:
	#data 0x0088
loc_8C0AA4Cc:
	#data 0x02A4
loc_8C0AA4Ce:
	#data 0x0130
loc_8C0AA4d0:
	#data 0x019c
loc_8C0AA4D2:
	#data 0x012c
loc_8C0AA4D4:
	#data 0x01C8
loc_8C0AA4D6:
	#data 0x01B4
loc_8C0AA4D8:
	#data 0x0089
	#align4

loc_8C0AA4DC:
	#data bank03.loc_8c0334A8
loc_8C0AA4E0:
	#data bank10.loc_8c10235c
loc_8C0AA4E4:
	#data bank04.loc_8c04223a

;----------------------------------------------
loc_8C0AA4E8:
	mov r13,r5
	bsr loc_8C0AA6Fc
	mov r14,r4

loc_8C0AA4EE:
	mov r13,r5
	bsr loc_8C0AA750
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AA4FE:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0aa568
	mova @(0x108,PC),r0
	mov.l @(0x104,PC),r6
	fmov @r0,fr5
	mova @(0x108,PC),r0
	fmov @r0,fr4
	mov 0x23,r0
	mov.b @(r0,r4),r3
	mov 0x5C,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r6,r3
	mov.l @r3,r2
	lds r2,fpul
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fmov fr3,@(r0,r4)
	mov 0x23,r0
	mov.b @(r0,r4),r3
	mov 0x68,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r6
	mov.l @(0x4,r6),r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr5,fr3
	fmov fr3,@(r0,r4)
	mov.w @(0xBC,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bt loc_8c0aa562
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8C0AA562:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)

loc_8C0AA568:
	bra loc_8c0aa750
	nop

loc_8C0AA56C:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0x98,PC),r4
	mov 0x08,r0
	mov.l r13,@-r15
	mov r5,r13
	add r14,r4
	mov.w @(0x90,PC),r5
	sts.l pr,@-r15
	fmov @(r0,r4),fr3
	mov 0x34,r0
	fmov @(r0,r13),fr4
	add r13,r5
	fadd fr3,fr4
	fmov fr4,fr3
	fmov @(r0,r14),fr4
	mov.w @(0x7A,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0aa598
	fsub fr3,fr4
	fneg fr4

loc_8C0AA598:
	fldi0 fr3
	fcmp/gt fr3,fr4
	bt loc_8c0aa5d4
	mov 0x08,r0
	fmov @(r0,r4),fr2
	mov 0x34,r0
	fmov @(r0,r13),fr1
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x0C,r0
	fmov @(r0,r4),fr2
	mov 0x38,r0
	fmov @(r0,r13),fr1
	fadd fr2,fr1
	fmov fr1,@(r0,r14)
	mov 0x10,r0
	fmov fr3,@(r0,r4)
	mov 0x03,r0
	mov.w r0,@(0x1C,r14)
	mov 0x01,r0
	mov.b r0,@(0x4,r5)
	mov r13,r5
	mov.b @(0x5,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0aa774 ; loc_8c0aa750+0x24
	mov.l @r15+,r14

loc_8C0AA5D4:
	mov r13,r5
	bsr loc_8c0aa6fc
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0aa750
	mov.l @r15+,r14

loc_8C0AA5E6:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	add 0x01,r0
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0AA602
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0AA610,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0AA602:
	bra loc_8C0AA750
	nop

;unused
	rts
	nop

;##############################################
loc_8c0aa60a:
	#data 0x0130
loc_8c0aa60c:
	#data 0x0088
loc_8c0aa60e:
	#data 0x02a4
loc_8c0aa610:
	#data 0x012c
	#align4

loc_8C0AA614:
	#data bank15.loc_8c157644
loc_8C0AA618:
	#data 0x47800000
loc_8C0AA61c:
	#data work.CpsXScale

;==============================================
loc_8C0AA620:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.w @(loc_8C0AA736,pc),r6 ; r6 set to 0x2A4
	mov.b r3,@(r0,r14)
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r3
	add r5,r6 ; r6 ??? bc r5 is ???	
	tst r3,r3
	bf/s loc_8C0AA674
	mov 0x00,r4 ; r4 set to 0x00
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0AA660
	mov.b @(0x05,r5),r0
	tst r0,r0
	bf loc_8C0AA68e
	mov.w @(loc_8C0AA738,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8C0AA68e
	mov.b @(0x05,r14),r0
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov.l @(loc_8C0AA740,pc),r1 ; r1 set to 0x8C157674
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0AA660:
	mov.b @(0x05,r5),r0
	tst r0,r0
	bf loc_8C0AA6C2
	mov.w @(loc_8C0AA738,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x15,r0
	bt loc_8C0AA6D0
	bra loc_8C0AA6C2
	nop

loc_8c0aa674:
	mov 0x20,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0aa6b0
	mov.b @(0x05,r5),r0 
	extu.b r0,r0
	cmp/eq 0x01,r0 
	bf loc_8c0aa68e
	mov.w @(loc_8c0aa738,pc),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1E,r0 
	bt loc_8c0aa6a0

loc_8C0AA68E:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0AA73A,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x04,r6)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AA6A0:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x9C,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AA6B0:
	mov.b @(0x5,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0aa6c2
	mov.w @(0x7C,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1E,r0
	bt loc_8c0aa6d0

loc_8C0AA6C2:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0AA73A,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	rts
	mov.l @r15+,r14

loc_8C0AA6D0:
	mov.w @(loc_8C0AA73A,pc),r0 ; r0 set to 0x12c
	mov.l @(loc_8C0AA748,pc),r1 ; r1 set to 0x8C157684
	mov.b r4,@(r0,r14)
	mov r14,r4
	mov.b @(0x05,r14),r0
	extu.b r0,r0 ; r0 set to 0x2c
	shll2 r0 ; r0 set to 0xB0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AA6E8:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0AA73A,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0AA6F6:
	mov.l @(loc_8C0AA74C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;----------------------------------------------
loc_8C0AA6FC:
	mov 0x68,r1 ; r1 set to 0x68
	mov.w @(loc_8C0AA73C,pc),r5 ; r5 set to 0x88
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x6C,r1 ; r1 set to 0x6c
	add r4,r1 ; r1 ??? bc r4 is ???	
	fadd fr3,fr2
	add r4,r5 ; r5 ??? bc r4 is ???	
	fmov.s fr2,@(r0,r4)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr3
	mov 0x10,r0 ; r0 set to 0x10
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r5)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s @(r0,r4),fr3
	mov 0x14,r0 ; r0 set to 0x14
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	rts
	fmov.s fr2,@(r0,r5)

;----------------------------------------------
loc_8C0AA736:
	#data 0x02A4
loc_8C0AA738:
	#data 0x01D0
loc_8C0AA73A:
	#data 0x012c
loc_8C0AA73C:
	#data 0x0088
	#align4

loc_8C0AA740:
	#data bank15.loc_8c157674
loc_8C0AA744:
	#data bank15.loc_8c157688
loc_8C0AA748:
	#data bank15.loc_8c157684
loc_8C0AA74C:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0aa750:
	mov.w @(loc_8C0AA818,pc),r6
	mov 0x08,r0
	add r4,r6
	fmov.s @(r0,r6),fr3
	mov 0x34,r0
	fmov.s @(r0,r5),fr2
	mov 0x10,r0
	fadd fr3,fr2
	fmov.s @(r0,r6),fr3
	mov 0x34,r0
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mov 0x0C,r0
	fmov.s @(r0,r6),fr3
	mov 0x38,r0
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4) 

loc_8c0aa774:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x22,r0
	mov r4,r14
	mov.l r5,@r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0aa78c
	mov.l @(loc_8c0aa820,pc),r3
	jsr @r3
	mov r14,r4

loc_8c0aa78c:
	mov.l @(loc_8c0aa824,pc),r2
	jsr @r2
	mov r14,r4
	mov.l @(loc_8c0aa828,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0AA81A,pc),r1
	mov r14,r4
	add r14,r1
	mov.b r0,@r1
	mov.l @r15,r5
	add 0x04,r15
	lds.l @r15+,pr 
	bra loc_8c0aa83c
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0aa7aa:
	extu.b r5,r6
	mov.l @(0x80,PC),r3
	shll2 r6
	mov.l @(0x78,PC),r7
	mov 0x34,r0
	add r3,r6
	fmov @(r0,r4),fr2
	fmov @r6,fr3
	add 0x54,r0
	fsub fr3,fr2
	fmov @(r0,r7),fr3
	fcmp/gt fr2,fr3
	bt loc_8c0aa7d4
	mov 0x34,r0
	fmov @r6,fr3
	fmov @(r0,r4),fr2
	add 0x58,r0
	fadd fr3,fr2
	fmov @(r0,r7),fr3
	fcmp/gt fr3,fr2
	bf loc_8c0aa7d8

loc_8c0aa7d4:
	rts
	mov 0x01,r0

loc_8c0aa7d8:
	bra loc_8c0aa7e0
	nop

;unused
	rts
	nop

loc_8c0aa7e0:
	mova @(0x50,PC),r0
	mov.l r14,@-r15
	sts.l pr,@-r15
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	mov.w @(0x2C,PC),r0
	fadd fr3,fr2
	mov.l @(0x18,r4),r14
	fmov @(r0,r14),fr1
	fcmp/gt fr2,fr1
	bf loc_8c0aa810
	mov.l @(0x30,PC),r4
	mov 0x01,r0
	mov.l @(0x38,PC),r3
	mov 0x30,r5
	mov.b r0,@(0x5,r4)
	mov.b r0,@(0x6,r4)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov 0x01,r0
	rts
	mov.l @r15+,r14

loc_8c0aa810:
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AA818:
	#data 0x0088
loc_8C0AA81A:
	#data 0x012C
loc_8C0AA81c:
	#data 0x041C
	#align4

loc_8c0aa820:
	#data bank04.loc_8c045748
loc_8c0aa824:
	#data bank03.loc_8c034dee
loc_8c0aa828:
	#data bank03.loc_8c0334a8
loc_8c0aa82c:
	#data 0x8C26A518
loc_8c0aa830:
	#data bank15.loc_8C157698
loc_8c0aa834:
	#data 0xC2092492
loc_8c0aa838:
	#data bank04.loc_8C04223A

;==============================================
loc_8c0aa83c:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov.l r9,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x34,r0
	mov r5,r13
	mov.w @(loc_8C0AA918,pc),r5
	mov.w @(loc_8C0AA918,pc),r11
	add r4,r5
	mov.l r4,@r15
	fmov.s @(r0,r13),fr3
	add r4,r11
	fmov.s @(r0,r4),fr2
	mov 0x08,r0
	fsub fr3,fr2
	fmov.s @(r0,r5),fr3
	mov.w @(loc_8C0AA91A,pc),r0
	mov.w @(r0,r13),r3
	fmov fr2,fr5
	tst r3,r3
	bf/s loc_8c0aa876
	fsub fr3,fr5
	fneg fr5

loc_8c0aa876:
	fldi0 fr3
	fcmp/gt fr5,fr3
	bf loc_8c0aa880
	bra loc_8c0aaa32
	nop 

loc_8c0aa880:
	mova @(loc_8C0AA920,pc),r0 
	fmov.s @r0,fr6
	mova @(loc_8C0AA924,pc),r0 
	fmov.s @r0,fr4
	mov.w @(loc_8C0AA91C,pc),r0
	fdiv fr6,fr5
	mov.b @(r0,r13),r3
	mov.l @(loc_8c0aa928,pc),r0
	extu.b r3,r3
	shll2 r3
	mov.w @(r0,r3),r3
	lds r3,fpul 
	float fpul,fr3
	ftrc fr5,fpul 
	fmul fr6,fr3
	sts fpul,r9
	fmov fr3,fr7
	fdiv fr4,fr7
	mov r9,r1
	fdiv fr6,fr7
	ftrc fr7,fpul 
	sts fpul,r10
	mov r10,r0
	nop 
	mov.l @(loc_8c0aa92c,pc),r3
	jsr @r3
	nop 
	mov.w r0,@(0x18,r5) 
	mov r0,r12
	mova @(loc_8C0AA930,pc),r0 
	mov r9,r1
	fmov.s @r0,fr5
	mov r10,r0
	nop 
	mov.l @(loc_8c0aa934,pc),r3
	jsr @r3
	nop 
	mov r0,r14
	mov.w @(loc_8C0AA91C,pc),r0
	exts.w r12,r3
	mov.l @(loc_8c0aa928,pc),r6
	mov.b @(r0,r13),r2
	lds r3,fpul 
	mov.l @(loc_8c0aa938,pc),r7
	tst r2,r2
	bf/s loc_8c0aa93c
	float fpul,fr6
	mov.b @(r0,r13),r3
	fmov fr6,fr0
	extu.b r3,r3
	shll2 r3
	add r3,r6
	mov.w @(0x02,r6),r0 
	mov r0,r3
	exts.w r14,r0
	and 0x3F,r0 
	lds r3,fpul 
	shll r0
	mov.w @(r0,r7),r3
	mov 0x38,r0
	float fpul,fr3
	lds r3,fpul 
	float fpul,fr2
	fmul fr5,fr3
	fmul fr5,fr2
	fdiv fr4,fr3
	fdiv fr4,fr2
	fmac fr0,fr3,fr2
	fmov.s @(r0,r13),fr3
	mov 0x0C,r0
	fadd fr3,fr2
	fmov.s @(r0,r5),fr3
	mov 0x38,r0
	fadd fr3,fr2
	bra loc_8c0aa982
	fmov.s fr2,@(r0,r4) 

;##############################################
loc_8C0AA918:
	#data 0x0088
loc_8C0AA91A:
	#data 0x0130
loc_8C0AA91C:
	#data 0x01A3
	#align4

loc_8C0AA920:
	#data work.CpsXScale
loc_8C0AA924:
	#data 0x43800000
loc_8c0aa928:
	#data bank15.loc_8c157520
loc_8c0aa92c:
	#data bank12.loc_8c129284
loc_8C0AA930:
	#data work.CpsYScale
loc_8c0aa934:
	#data bank12.loc_8c129454
loc_8c0aa938:
	#data bank15.loc_8c1576a0

;----------------------------------------------
loc_8c0aa93c:
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bf loc_8c0aa982
	mov.w @(loc_8C0AAA48,pc),r0
	mov.w @(loc_8C0AAA4A,pc),r1
	mov.b @(r0,r13),r2
	fmov fr6,fr0
	extu.b r2,r2
	shll2 r2
	add r2,r6
	mov.w @(0x02,r6),r0 
	mov r0,r3
	exts.w r14,r0
	and 0x3F,r0 
	lds r3,fpul 
	shll r0
	add r7,r0
	mov.w @(r0,r1),r3
	float fpul,fr3
	mov 0x38,r0
	lds r3,fpul 
	float fpul,fr2
	fmul fr5,fr3
	fmul fr5,fr2
	fdiv fr4,fr3
	fdiv fr4,fr2
	fmac fr0,fr3,fr2
	fmov.s @(r0,r13),fr3
	mov 0x0C,r0
	fadd fr3,fr2
	fmov.s @(r0,r5),fr3
	mov 0x38,r0
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4) 

loc_8c0aa982:
	mov 0x22,r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0 
	bf loc_8c0aa9bc
	mov 0x20,r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c0aa9bc
	mov.b @(0x05,r4),r0 
	mov 0x01,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bt loc_8c0aa9bc
	mov.w @(loc_8C0AAA4C,pc),r0
	mov.l @(r0,r13),r14
	add 0x35,r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0aa9bc
	tst r14,r14
	bt loc_8c0aa9bc
	mov.w @(loc_8C0AAA4E,pc),r0
	mov.w @(r0,r14),r2
	tst r2,r2
	bt loc_8c0aa9bc
	mov.l @(loc_8c0aaa54,pc),r3
	jsr @r3
	mov r14,r5

loc_8c0aa9bc:
	mov.l @r15,r14
	mov 0x34,r0
	mov.w @(loc_8C0AAA50,pc),r5
	mov.l @(0x0C,r14),r14
	fmov.s @(r0,r13),fr15
	mov 0x04,r0
	add r14,r5
	mov.l @(loc_8c0aaa58,pc),r3
	mov r5,r4
	add 0x08,r4
	fmov.s @r4,fr3
	mov r14,r12
	fadd fr3,fr15
	fmov.s @(r0,r4),fr3
	mov 0x38,r0
	fmov.s @(r0,r13),fr14
	mov 0x34,r0
	fadd fr3,fr14
	fmov.s fr15,@(r0,r14) 
	mov 0x38,r0
	fmov.s fr14,@(r0,r14) 
	jsr @r3
	mov r12,r4
	mov.w @(0x18,r11),r0 
	add 0xFF,r0
	cmp/pz r0
	bf loc_8c0aaa32
	mov.l @(loc_8c0aaa5c,pc),r10
	bra loc_8c0aaa2c
	mov 0x00,r13

loc_8c0aa9f8:
	mov.l @(0x0C,r14),r14
	tst r14,r14
	bt loc_8c0aaa32
	mov 0x5C,r0
	fmov.s @(r0,r12),fr3
	mov 0x34,r0
	fadd fr3,fr15
	fmov.s fr15,@(r0,r14) 
	mov 0x60,r0
	fmov.s @(r0,r12),fr3
	mov 0x38,r0
	fadd fr3,fr14
	fmov.s fr14,@(r0,r14) 
	mov.w @(loc_8C0AAA52,pc),r0
	mov.b @(r0,r14),r2
	mov.b @(r0,r12),r3
	cmp/eq r2,r3
	bt loc_8c0aaa2a
	mov.b @(r0,r12),r7
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov 0x15,r5
	extu.b r6,r6
	jsr @r10
	mov r14,r4

loc_8c0aaa2a:
	add 0x01,r13

loc_8c0aaa2c:
	mov.w @(0x18,r11),r0 
	cmp/ge r0,r13
	bf loc_8c0aa9f8

loc_8c0aaa32:
	add 0x04,r15
	lds.l @r15+,pr 
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AAA48:
	#data 0x01A3
loc_8C0AAA4A:
	#data 0x0080
loc_8C0AAA4C:
	#data 0x01C8
loc_8C0AAA4E:
	#data 0x0420
loc_8C0AAA50:
	#data 0x0088
loc_8C0AAA52:
	#data 0x0141
	#align4

loc_8c0aaa54:
	#data bank04.loc_8c04cc1c
loc_8c0aaa58:
	#data bank03.loc_8c034dee
loc_8c0aaa5c:
	#data bank03.loc_8c034f54

;==============================================
;unused
loc_8c0aaa60:
	mov.l r14,@-r15
	mov 0x00,r6
	mov.l r13,@-r15
	mov r4,r13
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov 0x01,r5
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l @(0x90,PC),r10
	mov.w @(0x8C,PC),r11
	jsr @r10
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0aaa98
	mov r0,r14
	mov 0x20,r0
	mov.l @(0x84,PC),r2
	mov 0x00,r3
	mov.l r2,@(0x10,r14)
	mov.l r13,@(0x18,r14)
	mov.l r14,@(0x14,r14)
	mov.b r12,@(r0,r14)
	mov 0x21,r0
	mov.b r3,@(r0,r14)
	mov 0x26,r0
	mov.w r11,@(r0,r14)

loc_8c0aaa98:
	mov 0x01,r5
	mov 0x02,r6
	jsr @r10
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0aaabc
	mov r0,r4
	mov 0x20,r0
	mov.l @(0x60,PC),r2
	mov 0x01,r3
	mov.l r2,@(0x10,r4)
	mov.l r13,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b r12,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r11,@(r0,r4)

loc_8c0aaabc:
	mov 0x01,r5
	mov 0x02,r6
	jsr @r10
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0aaae0
	mov r0,r4
	mov 0x20,r0
	mov.l @(0x3C,PC),r2
	mov 0x02,r3
	mov.l r2,@(0x10,r4)
	mov.l r13,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b r12,@(r0,r4)
	mov 0x21,r0
	mov.b r3,@(r0,r4)
	mov 0x26,r0
	mov.w r11,@(r0,r4)

loc_8c0aaae0:
	mov r14,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14


;==============================================
loc_8C0AAAF2:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0AAB10,pc),r1 ; r1 set to 0x8C1577A0
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0AAB06:
	#data 0x3401
	#align4

loc_8C0AAB08:
	#data bank04.loc_8c044F12
loc_8C0AAB0C:
	#data loc_8c0aAAF2
loc_8C0AAB10:
	#data bank15.loc_8c1577A0

;==============================================
loc_8C0AAB14:
	mov.l r14,@-r15
	mova @(loc_8C0AAC7C,pc),r0  ; r0 init to 0x8C0AAC7c
	mov.l r13,@-r15
	mov r4,r14
	mov.l r12,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	mov.l r11,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	mov.l @(loc_8C0AAC88,pc),r3 ; r3 set to 0x20204060
	mov.w @(loc_8C0AAC6A,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0AAC64,pc),r12 ; r12 set to 0x88
	mov.w @(loc_8C0AAC66,pc),r4 ; r4 set to 0x2A4
	add r14,r1 ; r1 ??? bc r14 is ???	
	sts.l pr,@-r15
	fmov.s @r0,fr14
	mova @(loc_8C0AAC84,pc),r0  ; r0 set to 0x8C0AAC84
	fmov.s @r0,fr15
	add r14,r12 ; r12 ??? bc r14 is ???	
	mov.w @(loc_8C0AAC68,pc),r0 ; r0 set to 0x13c
	add r5,r4 ; r4 ??? bc r5 is ???	
	mov.w @(loc_8C0AAC6A,pc),r2 ; r2 set to 0xDc
	mov.l r3,@(r0,r14)
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0AAC8C,pc),r3 ; r3 set to 0x8C129560
	add 0x01,r0 ; r0 set to 0x13d
	mov.l @(loc_8C0AAC80,pc),r11 ; r11 set to 0x8C1577C6
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0AAC6C,pc),r0 ; r0 set to 0xC0
	jsr @r3
	add r5,r2 ; r2 ??? bc r5 is ???	
	mov.w @(loc_8C0AAC6E,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0AAC70,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0AAC90,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0AAC94,pc),r6 ; r6 set to 0x8C26A518
	mov.b @(r0,r5),r2
	mov.b r13,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r3,@(r0,r14)
	mov.b @(0x05,r4),r0
	add 0x01,r0 ; r0 set to 0x32
	mov.b r0,@(0x05,r4)
	mova @(loc_8C0AAC98,pc),r0  ; r0 set to 0x8C0AAC98
	fmov.s @r0,fr4
	mov.w @(loc_8C0AAC72,pc),r0 ; r0 set to 0x130
	mov.l @(loc_8C0AAC9C,pc),r4 ; r4 set to 0x8C1577B4
	mov.w @(r0,r5),r3
	tst r3,r3
	bf loc_8C0AABF6
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	mov 0x21,r2 ; r2 set to 0x21
	add r14,r2 ; r2 ??? bc r14 is ???	
	extu.b r0,r0
	mov.b @r2,r2
	mov r0,r3
	shll2 r3
	shll r0
	extu.b r2,r2
	add r3,r0
	shll r2
	add r4,r0
	mov.w @(r0,r2),r3
	mov.w @(loc_8C0AAC74,pc),r0 ; r0 set to 0x8c
	lds r3,fpul
	fmov.s @(r0,r6),fr2
	mov 0x34,r0 ; r0 set to 0x34
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr15,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	add r11,r3
	mov.w @r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr15,fr3
	bra loc_8C0AAC38
	fneg fr3

loc_8C0AABF6:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	mov 0x21,r2 ; r2 set to 0x21
	add r14,r2 ; r2 ??? bc r14 is ???	
	extu.b r0,r0
	mov.b @r2,r2
	mov r0,r3
	shll2 r3
	shll r0
	extu.b r2,r2
	add r3,r0
	shll r2
	add r4,r0
	mov.w @(r0,r2),r3
	mov.w @(loc_8C0AAC64,pc),r0 ; r0 set to 0x88
	lds r3,fpul
	fmov.s @(r0,r6),fr2
	mov 0x34,r0 ; r0 set to 0x34
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr15,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	add r11,r3
	mov.w @r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr15,fr3

loc_8C0AAC38:
	mov 0x5C,r0 ; r0 set to 0x5C, r0 set to 0x5c
	fmov.s fr3,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???, r0 ??? bc r14 is ???	
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8C0AACA4
	mova @(loc_8C0AACA0,pc),r0  ; r0 set to 0x8C0AACA0, r0 set to 0x8C0AACA0
	fmov.s @r0,fr3
	mov 0x21,r3 ; r3 set to 0x21, r3 set to 0x21
	mov.w @(loc_8C0AAC76,pc),r0 ; r0 set to 0x41C, r0 set to 0x41c
	fmov.s @(r0,r5),fr2
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0AAC78,pc),r0 ; r0 set to 0x255, r0 set to 0x255
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???, r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x03,r0
	mov.w @(loc_8C0AAC7A,pc),r0 ; r0 set to 0x1A1, r0 set to 0x1A1
	bra loc_8C0AACD2
	mov.b r3,@(r0,r14)

;##############################################
loc_8C0AAC64:
	#data 0x0088
loc_8C0AAC66:
	#data 0x02A4
loc_8C0AAC68:
	#data 0x013c
loc_8C0AAC6A:
	#data 0x00Dc
loc_8C0AAC6C:
	#data 0x00C0
loc_8C0AAC6E:
	#data 0x012c
loc_8C0AAC70:
	#data 0x01A3
loc_8C0AAC72:
	#data 0x0130
loc_8C0AAC74:
	#data 0x008c
loc_8C0AAC76:
	#data 0x041c
loc_8C0AAC78:
	#data 0x0255
loc_8C0AAC7A:
	#data 0x01A1
	#align4

loc_8C0AAC7C:
	#data work.CpsYScale
loc_8C0AAC80:
	#data bank15.loc_8c1577C6
loc_8C0AAC84:
	#data 0x43800000
loc_8C0AAC88:
	#data 0x20204060
loc_8C0AAC8C:
	#data bank12.loc_8c129560
loc_8C0AAC90:
	#data bank12.loc_8c1294C8
loc_8C0AAC94:
	#data 0x8C26A518
loc_8C0AAC98:
	#data work.CpsXScale
loc_8C0AAC9C:
	#data bank15.loc_8c1577B4
loc_8C0AACA0:
	#data 0x439A4924

;==============================================
loc_8C0AACA4:
	mov 0x21,r0 ; r0 set to 0x21
	mov.w @(loc_8C0AAD52,pc),r1 ; r1 set to 0x2000
	mov.b @(r0,r14),r2
	mov.w @(loc_8C0AAD54,pc),r0 ; r0 set to 0x41c
	extu.b r2,r2
	mov r2,r3
	shll r2
	add r3,r2
	fmov.s @(r0,r5),fr2
	shll8 r2
	shll2 r2
	shll2 r2
	add r1,r2
	lds r2,fpul
	mov 0x38,r0 ; r0 set to 0x38
	mov 0x39,r3 ; r3 set to 0x39
	float fpul,fr3
	fmul fr14,fr3 ; r3 ??? bc r14 is ???	
	fdiv fr15,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov.w @(loc_8C0AAD56,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)

loc_8C0AACD2:
	mov.w @(loc_8C0AAD58,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.l @(loc_8C0AAD5C,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1 ; r1 ??? bc r2 is ???	
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	extu.b r3,r3
	shll2 r3
	add r11,r3
	mov.w @(0x02,r3),r0
	mov r0,r3 ; r3 set to 0x20, r3 set to 0x20
	lds r3,fpul
	mov 0x60,r0 ; r0 set to 0x60, r0 set to 0x60
	float fpul,fr3
	fmul fr14,fr3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	fdiv fr15,fr3
	fmov.s fr3,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6C, r0 set to 0x6c
	fldi0 fr3
	fmov.s fr3,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68, r0 set to 0x68
	fmov.s fr3,@(r0,r14)
	mov 0x44,r4 ; r4 set to 0x44, r4 set to 0x44
	mov.w @(loc_8C0AAD5A,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
	mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
	mov.l @(loc_8C0AAD60,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x17,r6 ; r6 set to 0x17, r6 set to 0x17
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
	mov.b r4,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
	mov 0x22,r0 ; r0 set to 0x22, r0 set to 0x22
	mov.b r13,@(r0,r12)
	mov 0x23,r0 ; r0 set to 0x23, r0 set to 0x23
	mov.b r13,@(r0,r12)
	mov 0x20,r0 ; r0 set to 0x20, r0 set to 0x20
	mov.b r13,@(r0,r12)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	mov.l @(loc_8C0AAD64,pc),r0 ; r0 set to 0x8C1577B0, r0 set to 0x8C1577B0
	extu.b r3,r3
	mov.b @(r0,r3),r2
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b r2,@(r0,r12)
	lds.l @r15+,pr
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AAD52:
	#data 0x2000
loc_8C0AAD54:
	#data 0x041c
loc_8C0AAD56:
	#data 0x01A1
loc_8C0AAD58:
	#data 0x01Ac
loc_8C0AAD5A:
	#data 0x019c
	#align4

loc_8C0AAD5C:
	#data 0x8C2896B0
loc_8C0AAD60:
	#data bank03.loc_8c034e8c
loc_8C0AAD64:
	#data bank15.loc_8c1577B0

;==============================================
loc_8C0AAD68:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	mov 0x34,r0
	add r14,r1
	mov.w @(0x138,PC),r4
	sts.l pr,@-r15
	fmov @(r0,r14),fr2
	add r14,r4
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
	mov 0x21,r0
	mov.b @(r0,r4),r3
	mov r4,r2
	mov.w @(0xFC,PC),r0
	shll r3
	mov.w @(r0,r5),r1
	add r2,r3
	mov 0x20,r0
	mov.w r1,@r3
	mov.b @(r0,r4),r3
	shll r3
	add r2,r3
	mov.w @r3,r1
	mov.w @(0xEA,PC),r3
	extu.w r1,r1
	tst r3,r1
	bt loc_8c0aadda
	mov.l @(0xEC,PC),r1
	mov 0x38,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C0AADDA:
	mov 0x20,r0
	mov r4,r2
	mov.b @(r0,r4),r3
	shll r3
	add r2,r3
	mov.w @r3,r1
	mov.w @(0xCA,PC),r3
	extu.w r1,r1
	tst r3,r1
	bt loc_8c0aadfc
	mov.l @(0xD0,PC),r1
	mov 0x38,r0
	fmov @(r0,r14),fr2
	lds r1,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C0AADFC:
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov 0x00,r5
	add 0x01,r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r2
	mov 0x0F,r3
	add 0x01,r2
	mov.b r2,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r2
	and r3,r2
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov.b @(r0,r4),r1
	and r3,r1
	mov.b r1,@(r0,r4)
	mov.w @(0x92,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c0aae36
	mov 0x02,r4
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)
	mov r5,r0
	nop
	mov.b r0,@(0x5,r14)

loc_8C0AAE36:
	mov.w @(0x7E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0aae4a
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)
	mov r5,r0
	nop
	mov.b r0,@(0x5,r14)

loc_8C0AAE4A:
	mov.l @(0x78,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0x74,PC),r2
	jsr @r2
	mov r14,r4
	mov.l @(0x74,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0aae64
	mov 0x03,r0
	mov.b r0,@(0x4,r14)

loc_8C0AAE64:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14
 
;----------------------------------------------
loc_8C0AAE6A:
	mov.l r14,@-r15
	mov r4,r14
	fldi0 fr3
	mov 0x03,r3
	mov.l @(0x5C,PC),r1
	mov 0x23,r5
	mov.w @(0x34,PC),r4
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	add r14,r4
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll r0
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1C,r14)
	mov 0x22,r0
	mov.b r3,@(r0,r4)
	mov.l @(0x38,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x34,PC),r2
	mov r14,r4
	mov 0x18,r6
	mov 0x15,r5
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0aaeae:
	#data 0x0088
loc_8c0aaeb0:
	#data 0x034a
loc_8c0aaeb2:
	#data 0x2000
loc_8c0aaeb4:
	#data 0x1000
loc_8c0aaeb6:
	#data 0x019e
loc_8c0aaeb8:
	#data 0x019f
	#align4

loc_8c0aaebc:
	#data 0x40892492
loc_8c0aaec0:
	#data work.CpsYScale
loc_8C0AAEC4:
	#data bank03.loc_8c034dee
loc_8C0AAEC8:
	#data bank04.loc_8c045748
loc_8C0AAECC:
	#data bank03.loc_8c0332E0
loc_8C0AAED0:
	#data bank15.loc_8c1577D2
loc_8C0AAED4:
	#data bank04.loc_8c042008
loc_8C0AAED8:
	#data bank03.loc_8c034e8c

;================================================
loc_8C0AAEDC:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0xC0,PC),r0
	mov r4,r14
	mov.w @(0xBA,PC),r3
	mov 0x02,r4
	add r14,r3
	mov.l r3,@r15
	mov.b @(r0,r14),r2
	tst r2,r2
	bt.s loc_8c0aaf04
	mov 0x00,r13
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x5,r14)

loc_8C0AAF04:
	mov.w @(0xA2,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0aaf18
	mov r4,r0
	nop
	mov.b r0,@(0x4,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x5,r14)

loc_8C0AAF18:
	mov 0x5C,r1
	mov.l @(0x90,PC),r3
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
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0aaf98 ; loc_8c0aaf90+0x8
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0aaf98 ; loc_8c0aaf90+0x8
	mov.l @(0x44,PC),r2
	jsr @r2
	mov r14,r4
	mov 0x01,r0
	mov.w r0,@(0x1C,r14)
	mov 0x22,r0
	mov.l @r15,r3
	mov.b @(r0,r3),r2
	add 0xFF,r2
	mov.b r2,@(r0,r3)
	exts.b r2,r2
	tst r2,r2
	bf loc_8c0aaf98 ; loc_8c0aaf90+0x8
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r13,r0
	nop
	mov.l @(0x24,PC),r3
	mov 0x15,r5
	mov.b r0,@(0x5,r14)
	mov 0x19,r6
	jsr @r3
	mov r14,r4

loc_8C0AAF98:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x18,PC),r2
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0aafa6:
	#data 0x0088
loc_8c0aafa8:
	#data 0x019e
loc_8c0aafaa:
	#data 0x019f
	#align4

loc_8C0AAFAC:
	#data bank03.loc_8c034dee
loc_8C0AAFB0:
	#data loc_8c0aB274
loc_8C0AAFB4:
	#data bank03.loc_8c034e8c
loc_8C0AAFB8:
	#data bank04.loc_8c045748

;==============================================
loc_8c0aafbc:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	mov 0x34,r0
	add r14,r1
	mov.w @(loc_8c0ab0f0,pc),r4
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	add r14,r4
	fmov.s @r1,fr3
	mov 0x68,r1
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x5C,r0
	fmov.s @r1,fr3
	mov 0x60,r1
	fmov.s @(r0,r14),fr2
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x38,r0
	fmov.s @r1,fr3
	mov 0x6C,r1
	fmov.s @(r0,r14),fr2
	add r14,r1
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x60,r0
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x02,r7
	mov.w @(loc_8C0AB0F2,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt/s loc_8c0ab016
	mov 0x00,r6
	mov r7,r0
	nop 
	mov.b r0,@(0x04,r14) 
	mov r6,r0
	nop 
	mov.b r0,@(0x05,r14) 

loc_8c0ab016:
	mov.w @(loc_8C0AB0F4,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0ab02a
	mov r7,r0
	nop 
	mov.b r0,@(0x04,r14) 
	mov r6,r0
	nop 
	mov.b r0,@(0x05,r14) 

loc_8c0ab02a:
	mov 0x24,r0
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0ab044
	mov.w @(loc_8C0AB0F6,pc),r0
	mov.w @(r0,r5),r0
	extu.w r0,r0
	tst 0x20,r0 
	bt loc_8c0ab04c
	mov 0x24,r0
	mov 0x01,r2
	bra loc_8c0ab04c
	mov.b r2,@(r0,r4) 

loc_8c0ab044:
	mov.w @(0x1C,r14),r0 
	mov 0x3C,r3
	cmp/gt r3,r0
	bf loc_8c0ab058

loc_8c0ab04c:
	mov.w @(0x1C,r14),r0 
	add 0xFF,r0
	mov.w r0,@(0x1C,r14) 
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0ab060

loc_8c0ab058:
	lds.l @r15+,pr 
	mov r14,r4
	bra loc_8c0aae6a
	mov.l @r15+,r14

loc_8c0ab060:
	mov.l @(loc_8c0ab0fc,pc),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr 
	mov.l @(loc_8c0ab100,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0AB070:
	mov 0x3C,r0 ; r0 set to 0x3c
	mov.w @(loc_8C0AB0F0,pc),r6 ; r6 set to 0x88
	mov.w r0,@(0x1C,r4)
	mov.w @(loc_8C0AB0F8,pc),r0 ; r0 set to 0x34a
	mov.w @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.w r0,r0
	tst 0x20,r0
	bt/s loc_8C0AB08a
	add r4,r6 ; r6 ??? bc r4 is ???	
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r2 ; r2 set to 0x00
	bra loc_8C0AB090
	mov.b r2,@(r0,r6)

loc_8C0AB08A:
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x01,r1 ; r1 set to 0x01
	mov.b r1,@(r0,r6)

loc_8C0AB090:
	mov.b @(0x05,r4),r0
	add 0x01,r0 ; r0 set to 0x25
	bra loc_8C0AAFBc
	mov.b r0,@(0x05,r4)

;----------------------------------------------
loc_8C0AB098:
	mov.l r14,@-r15
	mov 0x5C,r1
	mov r4,r14
	add r14,r1
	mov 0x34,r0
	mov.l @(0x58,PC),r3
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
	mov.l @(0x24,PC),r2
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0ab0ea
	mov 0x03,r0
	mov.b r0,@(0x4,r14)

loc_8C0AB0EA:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AB0F0:
	#data 0x0088
loc_8c0ab0f2:
	#data 0x019e
loc_8c0ab0f4:
	#data 0x019f
loc_8c0ab0f6:
	#data 0x034E
loc_8C0AB0F8:
	#data 0x034a
	#align4

loc_8C0AB0FC:
	#data bank03.loc_8c034dee
loc_8C0AB100:
	#data bank04.loc_8c045748
loc_8C0AB104:
	#data bank03.loc_8c0332E0

;==============================================
loc_8C0AB108:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.w @(0x12A,PC),r0
	mov r4,r14
	mov.l r5,@r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0ab124
	mov r14,r4
	mov.w @(0x11E,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0ab12a

loc_8C0AB124:
	mov.b @(0x5,r14),r0
	add 0x01,r0
	mov.b r0,@(0x5,r14)

loc_8C0AB12A:
	mov.l @(0x11C,PC),r3
	jsr @r3
	nop
	mov.l @r15,r5
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	bra loc_8c0ab098
	mov.l @r15+,r14

;==============================================
loc_8C0AB13C:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	extu.b r0,r0
	cmp/eq 0x00,r0
	bt loc_8C0AB156
	cmp/eq 0x01,r0
	bt loc_8C0AB166
	cmp/eq 0x02,r0
	bt loc_8C0AB176
	bra loc_8C0AB186
	nop

loc_8C0AB156:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0AB24C,pc),r1 ; r1 set to 0x8C1577D8
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0AB166:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0AB250,pc),r1 ; r1 set to 0x8C1577Dc
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0AB176:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0AB254,pc),r1 ; r1 set to 0x8C1577E8
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0AB186:
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AB18A:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov r4,r14
	tst r0,r0
	bf loc_8c0ab1a4
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x9C,PC),r0
	mov.b r3,@(r0,r14)

loc_8C0AB1A4:
	mov 0x5C,r1
	mov.l @(0xB4,PC),r3
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
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0AB1E6:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mova @(0x70,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x44,PC),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c0ab20a
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8C0AB20A:
	mova @(0x58,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mova @(0x54,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	bra loc_8c0ab18a
	fmov fr3,@(r0,r4)

loc_8C0AB21C:
	mov r4,r3
	mov.l @(loc_8C0AB26C,pc),r1 ; r1 set to 0x8C1577F0
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0AB22E:
	mov.w @(loc_8C0AB244,pc),r3 ; r3 set to 0x2A4
	mov.l @(loc_8C0AB270,pc),r2 ; r2 set to 0x8C0450C0
	add r3,r5
	mov.b @(0x05,r5),r0
	add 0xFF,r0
	jmp @r2
	mov.b r0,@(0x05,r5)

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ab23c:
	#data 0x019e
loc_8c0ab23e:
	#data 0x019F
loc_8c0ab240:
	#data 0x012c
loc_8c0ab242:
	#data 0x0130
loc_8C0AB244:
	#data 0x02A4
	#align4

loc_8C0AB248:
	#data bank04.loc_8c045748
loc_8C0AB24C:
	#data bank15.loc_8c1577D8
loc_8C0AB250:
	#data bank15.loc_8c1577Dc
loc_8C0AB254:
	#data bank15.loc_8c1577E8
loc_8C0AB258:
	#data bank03.loc_8c0334A8
loc_8C0AB25C:
	#data bank03.loc_8c034dee
loc_8C0AB260:
	#data work.CpsXScale
loc_8C0AB264:
	#data 0x404DB6Db
loc_8C0AB268:
	#data 0x3F092492
loc_8C0AB26C:
	#data bank15.loc_8c1577F0
loc_8C0AB270:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0AB274:
	mov.l r14,@-r15
	mov 0x02,r6
	sts.l pr,@-r15
	mov.l @(0x168,PC),r3
	mov r4,r14
	jsr @r3
	mov 0x01,r5
	tst r0,r0
	bt.s loc_8c0ab298
	mov r0,r4
	mov.l @(0x15C,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x138,PC),r3
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.w r3,@(r0,r4)

loc_8C0AB298:
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AB2A2:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0AB3EC,pc),r1 ; r1 set to 0x8C1577F8
	extu.b r0,r0
	mov.l @(0x14,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AB2B6:
	mov.w @(0x114,PC),r0
	mov.l @(0x134,PC),r3
	mov.w @(0x112,PC),r1
	sts.l pr,@-r15
	mov.w @(0x10A,PC),r7
	add r4,r1
	mov.w @(0x10A,PC),r2
	mov.l @(0x18,r4),r6
	add r4,r7
	mov.l r3,@(r0,r4)
	mov.b @(0x4,r4),r0
	mov.l @(0x124,PC),r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0xFC,PC),r0
	jsr @r3
	add r6,r2
	mov.w @(0xF8,PC),r0
	mov 0x01,r2
	mov r4,r1
	add 0x50,r1
	mov.b r2,@(r0,r4)
	mov.b @(0x2,r6),r0
	mov.b r0,@(0x2,r4)
	mov.b @(0x1,r6),r0
	mov.b r0,@(0x1,r4)
	mov 0x50,r0
	fmov @(r0,r6),fr3
	fmov fr3,@(r0,r4)
	mov 0x54,r0
	fmov @(r0,r6),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0xDC,PC),r0
	mov.b @(r0,r6),r3
	mov.b r3,@(r0,r4)
	add 0x01,r0
	mov.b @(r0,r6),r2
	mov.b r2,@(r0,r4)
	mov 0x30,r0
	mov.b @(r0,r6),r3
	mov r6,r2
	add 0x50,r2
	mov.b r3,@(r0,r4)
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov 0x0C,r0
	mov 0x24,r0
	mov.b @(r0,r6),r2
	mov.b r2,@(r0,r4)
	mova @(0xE0,PC),r0
	fmov @r0,fr3
	mova @(0xE0,PC),r0
	fmov fr3,@r7
	fmov @r0,fr3
	mov 0x04,r0
	fmov fr3,@(r0,r7)
	mov.w @(0xAE,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bf loc_8c0ab336
	mov r7,r6
	fmov @r6,fr3
	fneg fr3
	fmov fr3,@r6

loc_8C0AB336:
	mov 0x34,r0
	fmov @r7,fr3
	fmov @(r0,r5),fr2
	mov 0x22,r3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r7),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	mov 0x44,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.w @(0x86,PC),r0
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
	mov 0x15,r5
	mov 0x1A,r6
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x84,PC),r2
	jmp @r2
	lds.l @r15+,pr

;==============================================
loc_8C0AB386:
	mov.w @(0x52,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0ab3b2
	mov.l @(0x18,r14),r4
	mov.w @(0x44,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0ab3b2
	mov.w @(0x3E,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fcmp/gt fr3,fr2
	bt loc_8c0ab40c
	mov.w @(0x32,PC),r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)

loc_8C0AB3B2:
	mov.b @(0x4,r14),r0
	mov 0x00,r4
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r4,r0
	nop
	mov.b r0,@(0x5,r14)
	mov.w @(0x10,PC),r0
	mov.b r4,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ab3ca:
	#data 0x3402
loc_8c0ab3cc:
	#data 0x0088
loc_8c0ab3ce:
	#data 0x013c
loc_8c0ab3d0:
	#data 0x00dc
loc_8c0ab3d2:
	#data 0x00c0
loc_8c0ab3d4:
	#data 0x012c
loc_8c0ab3d6:
	#data 0x01a3
loc_8c0ab3d8:
	#data 0x0130
loc_8c0ab3da:
	#data 0x019c
loc_8c0ab3dc:
	#data 0x019e
loc_8c0ab3de:
	#data 0x019f
loc_8c0ab3e0:
	#data 0x041c
	#align4

loc_8C0AB3E4:
	#data bank04.loc_8c044F12
loc_8C0AB3E8:
	#data loc_8c0aB2A2
loc_8C0AB3EC:
	#data bank15.loc_8c1577F8
loc_8C0AB3f0:
	#data 0x08080808
loc_8C0AB3F4:
	#data bank12.loc_8c129560

loc_8C0AB3F8:
	#data bank12.loc_8c1294C8
loc_8C0AB3Fc:
	#data 0x41C80000
loc_8C0AB400:
	#data 0x41F00000
loc_8C0AB404:
	#data 0x8C2896B0
loc_8C0AB408:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0AB40C:
	mov 0x5C,r1
	mov.l @(0xE0,PC),r3
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
	lds.l @r15+,pr
	mov.l @(0xA4,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;unused
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AB45A:
	mov.w @(0x8A,PC),r6
	mov 0x34,r0
	fmov @(r0,r5),fr2
	add r4,r6
	fmov @r6,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x04,r0
	fmov @(r0,r6),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mova @(0x80,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r4)
	mov 0x68,r0
	fldi0 fr3
	fmov fr3,@(r0,r4)
	mova @(0x78,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mova @(0x74,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov.w @(0x54,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bf loc_8c0ab4a2 ; loc_8c0ab49c+0x6
	mov 0x5C,r0
	fmov @(r0,r4),fr3
	fneg fr3
	fmov fr3,@(r0,r4)

loc_8C0AB4A2:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x5,r4)

;----------------------------------------------
loc_8C0AB4AA:
	mov r4,r3
	mov.l @(loc_8C0AB504,pc),r1 ; r1 set to 0x8C157808
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0AB4BC:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	mov r14,r5
	mov.w @(loc_8C0AB4EC,pc),r7 ; r7 set to 0x409
	mov 0x01,r6 ; r6 set to 0x01
	mov.l @(loc_8C0AB508,pc),r3 ; r3 set to 0x8C10235c
	add 0x01,r0
	mov.l @(0x18,r14),r4
	mov.b r0,@(0x04,r14)
	jsr @r3
	add 0x34,r5
	lds.l @r15+,pr
	mov.l @(loc_8C0AB50C,pc),r2 ; r2 set to 0x8C04223a
	mov 0x49,r5 ; r5 set to 0x49
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AB4E2:
	mov.l @(loc_8C0AB510,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0AB4E8:
	#data 0x0088
loc_8C0AB4Ea:
	#data 0x0130
loc_8C0AB4EC:
	#data 0x0409
	#align4

loc_8C0AB4F0:
	#data bank03.loc_8c034dee
loc_8C0AB4F4:
	#data bank04.loc_8c045748
loc_8C0AB4F8:
	#data 0x40555555
loc_8C0AB4Fc:
	#data 0xC0092492
loc_8C0AB500:
	#data 0xBE892492
loc_8C0AB504:
	#data bank15.loc_8c157808
loc_8C0AB508:
	#data bank10.loc_8c10235c
loc_8C0AB50C:
	#data bank04.loc_8c04223a
loc_8C0AB510:
	#data bank04.loc_8c0450C0

;==============================================
;Unused
loc_8c0ab514:
	sts.l pr,@-r15
	add 0xF8,r15
	mov.l @(0x158,PC),r3
	mov 0x00,r6
	mov.l r4,@(0x4,r15)
	mov.b r5,@r15
	mov 0x01,r5
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0ab546
	mov r0,r4
	mov.l @(0x148,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x4,r15),r2
	mov.l r2,@(0x18,r4)
	mov 0x00,r2
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.w @(0x120,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0ab546:
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0AB54E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov.b r5,@r15
	mov 0x01,r5
	mov.l @(0x118,PC),r3
	mov r4,r14
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0ab584
	mov r0,r4
	mov.l @(0x10C,PC),r3
	mov 0x20,r0
	mov.l r3,@(0x10,r4)
	mov.l @(0x18,r14),r2
	mov.l r2,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(r0,r14),r3
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b @r15,r2
	mov.w @(0xE2,PC),r3
	mov.b r2,@(r0,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8C0AB584:
	mov r4,r0
	nop
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AB590:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0AB67C,pc),r1 ; r1 set to 0x8C157810
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AB5A4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l @(loc_8C0AB680,pc),r3 ; r3 set to 0x10101010
	mov.w @(loc_8C0AB666,pc),r0 ; r0 set to 0x13c
	mov.l r13,@-r15
	mov r5,r13
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.l r3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.w @(loc_8C0AB664,pc),r11 ; r11 set to 0x88
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	add r14,r11 ; r11 ??? bc r14 is ???	
	tst r3,r3
	bf/s loc_8C0AB5D8
	mov 0x01,r12 ; r12 set to 0x01
	bra loc_8C0AB5D4
	mov 0x0B,r10

loc_8C0AB5CC:
	mov r10,r5
	bsr loc_8c0ab54e
	mov r14,r4
	add 0xFF,r10

loc_8c0ab5d4:
	cmp/ge r12,r10
	bt loc_8c0ab5cc

loc_8C0AB5D8:
	mov.b @(0x04,r14),r0
	mov.w @(loc_8C0AB668,pc),r1 ; r1 set to 0xDc
	add 0x01,r0
	mov.l @(loc_8C0AB684,pc),r3 ; r3 set to 0x8C129560
	mov.b r0,@(0x04,r14)
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0AB66A,pc),r0 ; r0 set to 0xC0
	mov.w @(loc_8C0AB668,pc),r2 ; r2 set to 0xDc
	jsr @r3
	add r13,r2 ; r2 ??? bc r13 is ???	
	mov.w @(loc_8C0AB66C,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0AB66E,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0AB688,pc),r3 ; r3 set to 0x8C1294C8
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov.b @(r0,r13),r2
	mov 0x00,r4 ; r4 set to 0x00
	mov.b r2,@(r0,r14)
	mov 0x31,r0 ; r0 set to 0x31
	mov.b r12,@(r0,r14)
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x0A,r11)
	mov.w r0,@r11
	mov.w r0,@(0x04,r11)
	mov.w r0,@(0x02,r11)
	mov.w r0,@(0x08,r11)
	mov r12,r0 ; r0 ??? bc r12 is ???	
	nop
	mov.w r0,@(0x06,r11)
	mov 0x42,r3 ; r3 set to 0x42
	mov.w @(loc_8C0AB670,pc),r0 ; r0 set to 0x19c
	mov 0x40,r2 ; r2 set to 0x40
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r2,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8C0AB68c
	mov.w @(loc_8C0AB672,pc),r0 ; r0 set to 0x1A1
	mov 0x34,r2 ; r2 set to 0x34
	bra loc_8C0AB692
	mov.b r2,@(r0,r14)

;##############################################
loc_8C0AB662:
	#data 0x3403
loc_8C0AB664:
	#data 0x0088
loc_8C0AB666:
	#data 0x013c
loc_8C0AB668:
	#data 0x00Dc
loc_8C0AB66A:
	#data 0x00C0
loc_8C0AB66C:
	#data 0x012c
loc_8C0AB66E:
	#data 0x01A3
loc_8C0AB670:
	#data 0x019c
loc_8C0AB672:
	#data 0x01A1
	#align4

loc_8C0AB674:
	#data bank04.loc_8c044F12
loc_8C0AB678:
	#data loc_8c0aB590
loc_8C0AB67C:
	#data bank15.loc_8c157810
loc_8C0AB680:
	#data 0x10101010
loc_8C0AB684:
	#data bank12.loc_8c129560
loc_8C0AB688:
	#data bank12.loc_8c1294C8

;----------------------------------------------
loc_8C0AB68C:
	mov.w @(loc_8C0AB7B6,pc),r0 ; r0 set to 0x1A1
	mov 0x02,r3 ; r3 set to 0x02
	mov.b r3,@(r0,r14)

loc_8C0AB692:
	mov.w @(loc_8C0AB7B8,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.l @(loc_8C0AB7C4,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	mov.l @(loc_8C0AB7C8,pc),r3 ; r3 set to 0x8C045748, r3 set to 0x8C045748
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8C0AB85c
	mov.l @r15+,r14

loc_8C0AB6C8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(loc_8C0AB7BC,pc),r5 ; r5 set to 0x2A4
	mov.w @(loc_8C0AB7BA,pc),r4 ; r4 set to 0x88
	add r13,r5 ; r5 ??? bc r13 is ???	
	add r14,r4 ; r4 ??? bc r14 is ???	
	sts.l pr,@-r15
	mov.b @(0x09,r5),r0
	mov.b r0,@(0x0A,r4)
	mov.b @(0x0A,r4),r0
	cmp/pz r0
	bt loc_8C0AB6F2
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0AB7BE,pc),r0 ; r0 set to 0x12c
	bra loc_8C0AB710
	mov.b r3,@(r0,r14)

loc_8C0AB6F2:
	mov.w @r4,r2
	mov r13,r5
	add 0x01,r2
	mov.w r2,@r4
	mov.w @r4,r0
	and 0x01,r0
	mov.w r0,@r4
	bsr loc_8C0AB8F0
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0AB99c
	mov.l @r15+,r14

loc_8C0AB710:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AB718:
	mov.w @(loc_8C0AB7C0,pc),r0 ; r0 set to 0x140
	mov.w @(loc_8C0AB7BA,pc),r6 ; r6 set to 0x88
	mov.b @(r0,r5),r3
	tst r3,r3
	bt/s loc_8C0AB738
	add r4,r6 ; r6 ??? bc r4 is ???	
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	cmp/eq 0x7F,r0
	bf loc_8C0AB72e
	bra loc_8C0AB730
	mov 0xFF,r0

loc_8c0ab72e:
	mov 0x01,r0

loc_8c0ab730:
	mov.w r0,@(0x02,r6) 
	mov 0x00,r3
	mov.w @(loc_8c0ab7c0,pc),r0
	mov.b r3,@(r0,r5) 

loc_8c0ab738:
	mov.w @(0x02,r6),r0 
	cmp/pz r0
	bt loc_8c0ab748
	mov 0x08,r0
	mov.w r0,@(0x1C,r4) 
	mov.b @(0x05,r4),r0 
	add 0x01,r0
	mov.b r0,@(0x05,r4) 

loc_8c0ab748:
	bra loc_8c0ab6c8
	nop

;==============================================
loc_8C0AB74C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l r5,@r15
	mov.l @(0x14,r14),r4
	mov.w @(loc_8C0AB7BA,pc),r13 ; r13 set to 0x88
	mov.b @(0x04,r4),r0
	mov.w @(loc_8C0AB7BA,pc),r3 ; r3 set to 0x88
	add r4,r13 ; r13 ??? bc r4 is ???	
	mov.w @(loc_8C0AB7BA,pc),r11 ; r11 set to 0x88
	extu.b r0,r0
	mov.l @(0x08,r14),r5
	cmp/eq 0x01,r0
	add r14,r11 ; r11 ??? bc r14 is ???	
	add r3,r5
	bt/s loc_8C0AB77e
	mov 0x00,r12 ; r12 set to 0x00
	mov.b @(0x04,r14),r0
	add 0x01,r0
	bra loc_8C0AB802
	mov.b r0,@(0x04,r14)

loc_8C0AB77E:
	mov.b @(0x0A,r13),r0
	mov.b r0,@(0x0A,r11)
	mov.w @r5,r3
	mov.w r3,@r11
	mov.l @r15,r5
	bsr loc_8C0AB8F0
	mov r14,r4
	mov.l @r15,r5
	bsr loc_8C0AB99c
	mov r14,r4
	mov.w @(loc_8C0AB7C2,pc),r0 ; r0 set to 0x19f
	mov.b @(r0,r14),r2
	tst r2,r2
	bt/s loc_8C0AB7Cc
	mov 0xFF,r4 ; r4 set to 0xFFFFFFFf
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	extu.b r0,r0
	mov.w r0,@(0x06,r13)
	mov r4,r0 ; r0 set to 0xFFFFFFFf
	nop
	mov.w r0,@(0x02,r13)
	mov r12,r0 ; r0 ??? bc r12 is ???	
	nop
	mov.w r0,@(0x02,r11)
	mov.w @(loc_8C0AB7C2,pc),r0 ; r0 set to 0x19f
	bra loc_8C0AB804
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0AB7B6:
	#data 0x01A1
loc_8C0AB7B8:
	#data 0x01Ac
loc_8C0AB7BA:
	#data 0x0088
loc_8C0AB7BC:
	#data 0x02A4
loc_8C0AB7BE:
	#data 0x012c
loc_8C0AB7C0:
	#data 0x0140
loc_8C0AB7C2:
	#data 0x019f
	#align4

loc_8C0AB7C4:
	#data 0x8C2896B0
loc_8C0AB7C8:
	#data bank04.loc_8c045748

;==============================================
loc_8C0AB7CC:
	mov.w @(loc_8C0AB8D4,pc),r0 ; r0 set to 0x19e
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0AB7Ee
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	extu.b r0,r0
	mov.w r0,@(0x06,r13)
	mov r4,r0
	nop
	mov.w r0,@(0x02,r13)
	mov r12,r0
	nop
	mov.w r0,@(0x02,r11)
	mov.w @(loc_8C0AB8D4,pc),r0 ; r0 set to 0x19e
	bra loc_8C0AB804
	nop

loc_8C0AB7EE:
	mov.w @(loc_8C0AB8D6,pc),r0 ; r0 set to 0x12c
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0AB84e
	mov.w @(0x08,r13),r0
	tst r0,r0
	bt loc_8C0AB808
	mov r12,r0 ; r0 ??? bc r12 is ???	
	nop
	mov.w r0,@(0x08,r13)

loc_8C0AB802:
	mov.w @(loc_8C0AB8D6,pc),r0 ; r0 set to 0x12c

loc_8C0AB804:
	bra loc_8C0AB84e
	mov.b r12,@(r0,r14)

;==============================================
loc_8c0ab808:
	mov 0x21,r3
	mov.w @(0x06,r13),r0 
	add r14,r3
	mov.b @r3,r3
	extu.b r3,r3
	cmp/eq r3,r0
	bf/s loc_8c0ab82c
	mov 0x01,r4
	mov.w @(0x06,r13),r0 
	mov 0x0B,r3
	cmp/ge r3,r0
	bt loc_8c0ab82c
	mov.w @(0x06,r13),r0 
	add 0x01,r0
	mov.w r0,@(0x06,r13) 
	mov r4,r0
	nop 
	mov.w r0,@(0x08,r13) 

loc_8c0ab82c:
	mov.w @(0x02,r13),r0 
	cmp/pl r0
	bf loc_8c0ab842
	mov.l @(loc_8C0AB8DC,pc),r3
	mov.l @r3,r2
	mov.l @(0x1C,r2),r1
	tst r1,r4
	bt loc_8c0ab842
	mov.l @(loc_8c0ab8e0,pc),r1
	jsr @r1
	mov r14,r4

loc_8c0ab842:
	mov.l @(loc_8c0ab8e4,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8c0ab8d6,pc),r1
	add r14,r1
	mov.b r0,@r1

loc_8C0AB84E:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AB85C:
	mov 0x24,r0 ; r0 set to 0x24
	mov.l r14,@-r15
	mov.b @(r0,r5),r3
	mov r4,r14
	mov.b r3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0AB874
	mov r14,r4
	bra loc_8C0AB74c
	mov.l @r15+,r14

loc_8C0AB874:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	extu.b r0,r0
	cmp/eq 0x02,r0
	bf loc_8C0AB892
	mov.b @(0x05,r5),r0
	tst r0,r0
	bf loc_8C0AB8A2
	mov.w @(loc_8C0AB8D8,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8C0AB8B2
	bra loc_8C0AB8A2
	nop

loc_8c0ab892:
	mov.b @(0x05,r5),r0 
	tst r0,r0
	bf loc_8c0ab8a2
	mov.w @(loc_8c0ab8d8,pc),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x14,r0 
	bt loc_8c0ab8b2

loc_8C0AB8A2:
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0AB8D6,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r14)
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AB8B2:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0AB8E8,pc),r1 ; r1 set to 0x8C157820
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;unused
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AB8C6:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C0AB8CE:
	mov.l @(loc_8C0AB8EC,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0AB8D4:
	#data 0x019e
loc_8C0AB8D6:
	#data 0x012c
loc_8C0AB8D8:
	#data 0x01D0
	#align4

loc_8c0ab8dc:
	#data 0x8C26823c
loc_8C0AB8E0:
	#data bank04.loc_8c045748
loc_8C0AB8E4:
	#data bank03.loc_8c0332E0
loc_8C0AB8E8:
	#data bank15.loc_8c157820
loc_8C0AB8EC:
	#data bank04.loc_8c0450C0

;==============================================
loc_8c0ab8f0:
	mov 0x21,r0
	mov.w @(loc_8c0ab9dc,pc),r3
	mov.b @(r0,r4),r2
	mov.l @(0x14,r4),r7
	mov.l @(0x08,r4),r6
	tst r2,r2
	bf/s loc_8c0ab956
	add r3,r7
	mova @(loc_8C0AB9E4,pc),r0 
	fmov.s @r0,fr4
	mov 0x20,r0
	mov.b @(r0,r4),r6
	extu.b r6,r6
	tst r6,r6
	bt loc_8c0ab916
	mov r6,r0
	nop 
	cmp/eq 0x02,r0 
	bf loc_8c0ab920

loc_8c0ab916:
	mov 0x5C,r0
	fmov.s fr4,@(r0,r4) 
	mova @(loc_8C0AB9E8,pc),r0 
	bra loc_8c0ab928
	fmov.s @r0,fr3

loc_8c0ab920:
	mov 0x5C,r0
	fmov.s fr4,@(r0,r4) 
	mova @(loc_8C0AB9EC,pc),r0 
	fmov.s @r0,fr3

loc_8c0ab928:
	mov 0x60,r0
	fmov.s fr3,@(r0,r4) 
	mov.w @(loc_8C0AB9DE,pc),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c0ab93c
	mov 0x5C,r0
	fmov.s @(r0,r4),fr3
	fneg fr3
	fmov.s fr3,@(r0,r4) 

loc_8c0ab93c:
	mov 0x5C,r0
	fmov.s @(r0,r4),fr3
	mov 0x34,r0
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mov 0x60,r0
	fmov.s @(r0,r4),fr3
	mov 0x38,r0
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	rts
	fmov.s fr2,@(r0,r4)

;----------------------------------------------
loc_8c0ab956:
	mov.b @(r0,r4),r3
	mov.w @(0x06,r7),r0 
	extu.b r3,r3
	cmp/gt r0,r3
	bt loc_8c0ab992
	mova @(loc_8C0AB9F0,pc),r0 
	fmov.s @r0,fr3
	mov 0x5C,r0
	fmov.s fr3,@(r0,r4) 
	mov.w @(loc_8C0AB9DE,pc),r0
	mov.w @(r0,r4),r3
	tst r3,r3
	bf loc_8c0ab978
	mov 0x5C,r0
	fmov.s @(r0,r4),fr3
	fneg fr3
	fmov.s fr3,@(r0,r4) 

loc_8c0ab978:
	mov 0x5C,r0
	fmov.s @(r0,r4),fr3
	mov 0x34,r0
	fmov.s @(r0,r6),fr2
	mov 0x01,r3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mov 0x38,r0
	fmov.s @(r0,r6),fr3
	fmov.s fr3,@(r0,r4) 
	mov.w @(loc_8C0AB9E0,pc),r0
	bra loc_8c0ab998
	mov.b r3,@(r0,r4) 

loc_8c0ab992:
	mov.w @(loc_8C0AB9E0,pc),r0
	mov 0x00,r1
	mov.b r1,@(r0,r4) 

loc_8c0ab998:
	rts
	nop

;==============================================
loc_8C0AB99C:
	mov 0x21,r0 ; r0 set to 0x21
	mov.w @(loc_8C0AB9DC,pc),r5 ; r5 set to 0x88
	mov.w @(loc_8C0AB9DC,pc),r3 ; r3 set to 0x88
	mov.l r14,@-r15
	add r4,r5 ; r5 ??? bc r4 is ???	
	mov.b @(r0,r4),r2
	mov.l @(0x14,r4),r6
	tst r2,r2
	bt/s loc_8C0AB9C6
	add r3,r6
	mov.b @(r0,r4),r2
	mov.w @(0x06,r6),r0
	extu.b r2,r2
	cmp/eq r0,r2
	bf loc_8C0AB9C6
	mov.w @r5,r14
	mov.b @(0x0A,r5),r0
	add r0,r14
	mov.l @(loc_8C0AB9F4,pc),r0 ; r0 set to 0x8C157828
	bra loc_8C0AB9D0
	mov.b @(r0,r14),r14

loc_8C0AB9C6:
	mov.w @r5,r14
	mov.b @(0x0A,r5),r0
	add r0,r14
	mov.l @(loc_8C0AB9F8,pc),r0 ; r0 set to 0x8C157832
	mov.b @(r0,r14),r14

loc_8C0AB9D0:
	mov.l @(loc_8C0AB9FC,pc),r3 ; r3 set to 0x8C034F54, r3 set to 0x8C034F54
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov r14,r7
	mov 0x00,r6 ; r6 set to 0x00, r6 set to 0x00
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0AB9DC:
	#data 0x0088
loc_8c0ab9de:
	#data 0x0130
loc_8c0ab9e0:
	#data 0x012c
	#align4

loc_8c0ab9e4:
	#data 0x4312AAAa
loc_8c0ab9e8:
	#data 0x435EDB6d
loc_8c0ab9ec:
	#data 0x430B4924
loc_8c0ab9f0:
	#data 0x42555555
loc_8C0AB9F4:
	#data bank15.loc_8c157828
loc_8C0AB9F8:
	#data bank15.loc_8c157832
loc_8C0AB9FC:
	#data bank03.loc_8c034F54

;==============================================
;unused
loc_8c0aba00:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0x128,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0aba24
	mov r0,r4
	mov.l @(0x11C,PC),r3
	mov 0x26,r0
	mov.l r3,@(0x10,r4)
	mov.w @(0x100,PC),r3
	mov.l @r15,r2
	mov.l r2,@(0x18,r4)
	mov.w r3,@(r0,r4)

loc_8c0aba24:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0ABA2C:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0ABB38,pc),r1 ; r1 set to 0x8C15783c
	extu.b r0,r0
	mov.l @(0x18,r14),r5
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0ABA40:
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
	mov.l @(0xE4,PC),r3
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
	mov 0x42,r3
	mov.b r2,@(r0,r14)
	mov 0x44,r2
	mov.w @(0x84,PC),r0
	mov.b r3,@(r0,r14)
	add 0x01,r0
	mov.b r2,@(r0,r14)
	mova @(0x98,PC),r0
	fmov @r0,fr3
	mov 0x5C,r0
	fmov fr3,@(r0,r14)
	mova @(0x94,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov.w @(0x6E,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c0abaca
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	fneg fr3
	fmov fr3,@(r0,r14)

loc_8C0ABACA:
	mov 0x31,r0
	mov 0xFF,r3
	mov.b r3,@(r0,r14)
	mov 0x37,r2
	mov.w @(0x58,PC),r0
	mov 0x00,r4
	mov.l @(0x74,PC),r3
	mov 0x17,r5
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov 0x01,r6
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(0x54,PC),r2
	jsr @r2
	mov r14,r4
	mov 0x5C,r0
	fmov @(r0,r14),fr3
	mov 0x34,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0abb20:
	#data 0x3404
loc_8c0abb22:
	#data 0x00dc
loc_8c0abb24:
	#data 0x00c0
loc_8c0abb26:
	#data 0x012c
loc_8c0abb28:
	#data 0x01a3
loc_8c0abb2a:
	#data 0x019c
loc_8c0abb2c:
	#data 0x0130
loc_8c0abb2e:
	#data 0x01a1
	#align4

loc_8C0ABB30:
	#data bank04.loc_8c044F12
loc_8C0ABB34:
	#data loc_8c0aBA2c
loc_8C0ABB38:
	#data bank15.loc_8c15783c
loc_8C0ABB3C:
	#data bank12.loc_8c129560
loc_8C0ABB40:
	#data bank12.loc_8c1294C8
loc_8C0ABB44:
	#data 0x4353AAAa
loc_8C0ABB48:
	#data 0x43700000
loc_8C0ABB4c:
	#data 0x8C2896B0
loc_8C0ABB50:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0ABB54:
	mov 0x24,r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15
	mov.b @(r0,r5),r3
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
	mov.w @(0xEC,PC),r0
	mov.b r13,@(r0,r14)
	mov.b @(0x5,r5),r0
	tst r0,r0
	bf loc_8c0abbd2
	mov.w @(0xE4,PC),r0
	mov.b @(r0,r5),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0abbd2
	mov.b @(0x6,r5),r0
	mov 0x03,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c0abbb6
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0abbc6
	mov.b @(0x5,r14),r0
	mov 0x01,r3
	mov 0x17,r5
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x02,r6
	mov.w @(0xC0,PC),r0
	mov.b r3,@(r0,r14)
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov r14,r4

loc_8C0ABBB6:
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0abbc6
	mov.l @(0xC0,PC),r3
	jsr @r3
	mov r14,r4
	bra loc_8c0abbde
	nop

loc_8C0ABBC6:
	mov.l @(0xB8,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0abbde

loc_8C0ABBD2:
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x94,PC),r0
	bra loc_8c0abc20
	mov.b r13,@(r0,r14)

loc_8C0ABBDE:
	mov.w @(0x90,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0abc10
	mov r14,r4
	mov.b @(r0,r14),r3
	add 0x60,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0x88,PC),r3
	mov.l r13,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(0x62,PC),r0
	mov.b r13,@(r0,r14)

loc_8C0ABC10:
	bsr loc_8c0abc3c
	nop
	lds.l @r15+,pr
	mov.l @(0x70,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0ABC20:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0ABC28:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0ABC70,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0ABC36:
	mov.l @(loc_8C0ABC8C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;----------------------------------------------
loc_8C0ABC3C:
	mov.w @(0x34,PC),r0
	mov.l @(0x18,r4),r5
	mov.l @(r0,r5),r6
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c0abc68
	mov 0x34,r0
	fmov @(r0,r6),fr4
	fmov @(r0,r4),fr3
	mov.w @(0x24,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bf.s loc_8c0abc5a
	fsub fr3,fr4
	fneg fr4

loc_8C0ABC5A:
	mova @(0x34,PC),r0
	fmov @r0,fr3
	fcmp/gt fr3,fr4
	bf loc_8c0abc68
	mov.w @(0x12,PC),r0
	mov 0x10,r2
	mov.w r2,@(r0,r4)

loc_8C0ABC68:
	rts
	nop

;----------------------------------------------
loc_8c0abc6c:
	#data 0x019f
loc_8c0abc6e:
	#data 0x01d0
loc_8c0abc70:
	#data 0x012c
loc_8c0abc72:
	#data 0x0141
loc_8c0abc74:
	#data 0x020c
loc_8c0abc76:
	#data 0x0130
loc_8c0abc78:
	#data 0x01ac
	#align4

loc_8C0ABC7C:
	#data bank03.loc_8c034e8c
loc_8C0ABC80:
	#data bank03.loc_8c034dee
loc_8C0ABC84:
	#data 0x8C2896B0
loc_8C0ABC88:
	#data bank04.loc_8c045748
loc_8C0ABC8C:
#data bank04.loc_8c0450C0
loc_8C0ABC90:
	#data 0x42A00000

;==============================================
;unused
loc_8c0abc94:
	mov.l r14,@-r15
	mov 0x01,r5
	sts.l pr,@-r15
	mov.l @(0x144,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0abcc6
	mov r0,r4
	mov 0x34,r0
	mov.l @(0x134,PC),r3
	mov.l r3,@(0x10,r4)
	fmov @(r0,r14),fr3
	mov.w @(0x122,PC),r3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)

loc_8c0abcc6:
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0ABCD0:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0ABF1e
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0ABDE8,pc),r1 ; r1 set to 0x8C15784c
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0ABCEA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @(0x18,r14),r12
	bsr loc_8c0abe9c
	mov r14,r4
	mov.l @(0xE8,PC),r13
	mov 0x01,r2
	mov.l @(0xE8,PC),r3
	mov 0x21,r0
	jsr @r3
	mov.b r2,@(r0,r12)
	and 0x0F,r0
	mov.l @(0xE4,PC),r4
	mov r0,r2
	mov.l r0,@r13
	mov.l @(0xE0,PC),r0
	shll2 r2
	fmov @(r0,r2),fr3
	mov.w @(0xBC,PC),r0
	fmov fr3,@r4
	mov.b @(r0,r12),r3
	tst r3,r3
	bf.s loc_8c0abd2c
	mov 0x34,r0
	fmov @r4,fr3
	fneg fr3
	fmov fr3,@r4

loc_8C0ABD2C:
	fmov @(r0,r14),fr2
	fmov @r4,fr3
	mov.l @(0xCC,PC),r3
	fadd fr3,fr2
	mov.l @(0xCC,PC),r7
	mov.l @(0xD0,PC),r5
	fmov fr2,@(r0,r14)
	mova @(0xC0,PC),r0
	fmov @r3,fr2
	fmov @r0,fr3
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.l @r13,r0
	and 0x07,r0
	mov r0,r6
	shll2 r6
	shll2 r6
	mov.l r0,@r13
	add r7,r6
	mov 0x04,r0
	fmov @r6,fr2
	fmov fr2,@r5
	fmov @(r0,r6),fr1
	mov 0x08,r0
	fmov fr1,@r4
	fmov @(r0,r6),fr2
	mov 0x60,r0
	fmov fr2,@(r0,r14)
	mov.l @r13,r3
	shll2 r3
	shll2 r3
	mov 0x0C,r0
	add r7,r3
	fmov @(r0,r3),fr2
	mov 0x6C,r0
	fmov fr2,@(r0,r14)
	mov.w @(0x60,PC),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bf loc_8c0abd8a
	fmov @r5,fr2
	fneg fr2
	fmov fr2,@r5
	fmov @r4,fr1
	fneg fr1
	fmov fr1,@r4

loc_8C0ABD8A:
	fmov @r5,fr3
	mov 0x5C,r0
	mov 0x33,r3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov @r4,fr3
	mov 0x42,r4
	mov 0x16,r5
	fmov fr3,@(r0,r14)
	mov 0x03,r6
	mov.w @(0x3A,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r4
	mov.l @(0x5C,PC),r3
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
	lds.l @r15+,pr
	mov.l @(0x40,PC),r2
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0abdd8:
	#data 0x3500
loc_8c0abdda:
	#data 0x01d2
loc_8c0abddc:
	#data 0x019c
	#align4

loc_8C0ABDE0:
	#data bank04.loc_8c044F12
loc_8C0ABDE4:
	#data loc_8c0aBCD0
loc_8C0ABDE8:
	#data bank15.loc_8c15784c
loc_8C0ABDEc:
	#data 0x8C28C678
loc_8C0ABDF0:
	#data bank03.loc_8c03319e
loc_8C0ABDf4:
	#data 0x8C28C680
loc_8C0ABDF8:
	#data bank15.loc_8c15785c
loc_8C0ABDfc:
	#data 0x42892492
loc_8C0ABe00:
	#data 0x8C26A5A8
loc_8C0ABE04:
	#data bank15.loc_8c15789c
loc_8C0ABe08:
	#data 0x8C28C67c
loc_8C0ABe0c:
	#data 0x8C2896B0
loc_8C0ABE10:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0ABE14:
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
	mov.l @(0x18,r14),r4
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3
	mov.w @(loc_8C0ABF22,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r4),fr2
	fcmp/gt fr3,fr2
	bf loc_8C0ABE80
	mov.b @(0x04,r14),r0
	mov r14,r5
	mov.l @(loc_8C0ABF2C,pc),r3 ; r3 set to 0x8C10235c
	add 0x34,r5
	add 0x01,r0 ; r0 set to 0x41d
	mov.b r0,@(0x04,r14)
	mov 0x08,r7 ; r7 set to 0x08
	mov.w @(loc_8C0ABF22,pc),r0 ; r0 set to 0x41c
	mov 0x01,r6 ; r6 set to 0x01
	fmov.s @(r0,r4),fr3 ; r3 ??? bc r4 is ???	
	mov 0x38,r0 ; r0 set to 0x38
	mov r14,r4
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

loc_8C0ABE80:
	mov.l @(loc_8C0ABF30,pc),r3 ; r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0ABF34,pc),r2 ; r2 set to 0x8C045748
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0ABE90:
	mov.w @(loc_8C0ABF24,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)

loc_8C0ABE96:
	mov.l @(loc_8C0ABF38,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C0ABE9C:
	mov.w @(0x86,PC),r1
	mov.w @(0x84,PC),r0
	sts.l pr,@-r15
	mov.l @(0x18,r4),r2
	add r4,r1
	mov.l @(0x94,PC),r3
	add r0,r2
	jsr @r3
	add 0xE4,r0
	mov.w @(0x72,PC),r0
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
	mov.w @(0x50,PC),r0
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
	mov.l @(0x50,PC),r3
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0
	mov.l @(0x18,r4),r1
	mov 0x24,r0
	mov 0x20,r2
	mov.b @(r0,r1),r3
	mov.b r3,@(r0,r4)
	mov 0x24,r3
	mov.w @(0x24,PC),r0
	mov.b r2,@(r0,r4)
	add 0xFF,r0
	mov.b r2,@(r0,r4)
	add 0x03,r0
	mov.b r3,@(r0,r4)
	add 0xFF,r0
	mov 0x00,r2
	mov.b r3,@(r0,r4)
	mov r3,r0
	nop
	lds.l @r15+,pr
	rts
	mov.b r2,@(r0,r4)

;----------------------------------------------
loc_8C0ABF1E:
	rts
	nop

;----------------------------------------------
loc_8C0ABF22:
	#data 0x041c

loc_8C0ABF24:
	#data 0x012c
loc_8C0ABF26:
	#data 0x00Dc
loc_8C0ABF28:
	#data 0x01A3
loc_8C0ABF2a:
	#data 0x013D
	#align4

loc_8C0ABF2C:
	#data bank10.loc_8c10235c
loc_8C0ABF30:
	#data bank03.loc_8c034dee
loc_8C0ABF34:
	#data bank04.loc_8c045748
loc_8C0ABF38:
	#data bank04.loc_8c0450C0
loc_8C0ABF3C:
	#data bank12.loc_8c129560
loc_8C0ABF40:
	#data bank12.loc_8c1294C8

;==============================================
;unused
loc_8c0abf44:
	mov.l r14,@-r15
	mov 0x01,r5
	sts.l pr,@-r15
	mov.l @(0xFC,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0abf8a
	mov r0,r4
	mov 0x34,r0
	mov.l @(0xEC,PC),r3
	mov 0x00,r2
	mov.l r3,@(0x10,r4)
	fmov @(r0,r14),fr3
	mov.w @(0xD4,PC),r3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b r2,@(r0,r4)
	mov.w @(0x1C,r14),r0
	add 0xF0,r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0xB8,PC),r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	mov.w r0,@(0x1E,r4)

loc_8c0abf8a:
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0ABF94:
	mov.l r14,@-r15
	mov 0x01,r5
	sts.l pr,@-r15
	mov.l @(0xAC,PC),r3
	mov r4,r14
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0abfd8
	mov r0,r4
	mov 0x34,r0
	mov.l @(0x9C,PC),r3
	mov.w @(0x8E,PC),r2
	mov.l r3,@(0x10,r4)
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4)
	mov.w @(0x78,PC),r3
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b r2,@(r0,r4)
	mov.w @(0x1C,r14),r0
	mov.w r0,@(0x1C,r4)
	mov.w @(0x1E,r14),r0
	mov.w r0,@(0x1E,r4)

loc_8C0ABFD8:
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0ABFE2:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0AC2C4
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0AC050,pc),r1 ; r1 set to 0x8C15791c
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0ABFFC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	mov.l @(loc_8C0AC054,pc),r12 ; r12 set to 0x8C28C684
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @(0x18,r14),r13
	bsr loc_8C0AC242
	mov r14,r4
	mov.w @(loc_8C0AC042,pc),r0 ; r0 set to 0x19c
	mov 0x42,r4 ; r4 set to 0x42
	mov.l @(loc_8C0AC058,pc),r5 ; r5 set to 0x8C2896B0
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C0AC0Bc
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C0AC044,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8C0AC05c
	mov.w @(loc_8C0AC046,pc),r0 ; r0 set to 0x1A1
	mov 0x35,r2 ; r2 set to 0x35
	bra loc_8C0AC068
	mov.b r2,@(r0,r14)

;##############################################
loc_8c0ac03c:
	#data 0x3501
loc_8c0ac03e:
	#data 0x0158
loc_8c0ac040:
	#data 0x00Ff
loc_8C0AC042:
	#data 0x019c
loc_8C0AC044:
	#data 0x0255
loc_8C0AC046:
	#data 0x01A1
	#align4

loc_8C0AC048:
	#data bank04.loc_8c044F12
loc_8C0AC04C:
	#data loc_8c0aBFE2
loc_8C0AC050:
	#data bank15.loc_8c15791c
loc_8C0AC054:
	#data 0x8C28C684
loc_8C0AC058:
	#data 0x8C2896B0

;==============================================
loc_8c0ac05c:
	mov.w @(loc_8c0ac192,pc),r0
	mov.b @(r0,r13),r3
	add 0xFE,r0
	shll r3
	add 0x34,r3
	mov.b r3,@(r0,r14)

loc_8c0ac068:
	mov.w @(loc_8c0ac194,pc),r0
	mov.w r4,@(r0,r14) 
	add 0xF2,r0
	mov.b r4,@(r0,r14) 
	add 0x26,r0
	mov.l r4,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r5,r3
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3) 
	mova @(loc_8C0AC1A0,pc),r0 
	fmov.s @r0,fr3
	mov.w @(loc_8C0AC196,pc),r0
	fmov.s fr3,@r12
	mov.b @(r0,r13),r3
	tst r3,r3
	bf/s loc_8c0ac09a
	mov 0x34,r0
	fmov.s @r12,fr3
	fneg fr3
	fmov.s fr3,@r12

loc_8c0ac09a:
	fmov.s @(r0,r14),fr2
	fmov.s @r12,fr3
	mov.l @(loc_8C0AC1A4,pc),r1
	fadd fr3,fr2
	lds r1,fpul 
	fmov.s fr2,@(r0,r14) 
	mov 0x38,r0
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov.w @(loc_8c0ac192,pc),r0
	mov.b @(r0,r13),r6
	extu.b r6,r6
	shll r6
	bra loc_8c0ac120
	add 0x03,r6

loc_8C0AC0BC:
	mov.w @(loc_8C0AC198,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r13),r0 ; r0 ??? bc r13 is ???	
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8C0AC0Ce
	mov.w @(loc_8C0AC19A,pc),r0 ; r0 set to 0x1A1
	mov 0x2C,r2 ; r2 set to 0x2c
	bra loc_8C0AC0D4
	mov.b r2,@(r0,r14)

loc_8C0AC0CE:
	mov.w @(loc_8C0AC19A,pc),r0 ; r0 set to 0x1A1
	mov 0x2B,r3 ; r3 set to 0x2b
	mov.b r3,@(r0,r14)

loc_8C0AC0D4:
	mov.w @(loc_8C0AC194,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov 0x04,r1 ; r1 set to 0x04, r1 set to 0x04
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r5,r3 ; r3 ??? bc r5 is ???	
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	mov.l @(loc_8C0AC1A8,pc),r4 ; r4 set to 0x8C15792C, r4 set to 0x8C15792c
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov.w @(loc_8C0AC192,pc),r0 ; r0 set to 0x1A3, r0 set to 0x1A3
	mov.b @(r0,r13),r3
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	extu.b r3,r3
	shll2 r3
	shll r3
	add r4,r3
	fmov.s @r3,fr3
	mov.w @(loc_8C0AC192,pc),r3 ; r3 set to 0x1A3, r3 set to 0x1A3
	fmov.s fr3,@r12
	add r13,r3 ; r3 ??? bc r13 is ???, r3 ??? bc r13 is ???	
	mov.b @r3,r3
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r4 ; r4 ??? bc r3 is ???, r4 ??? bc r3 is ???	
	add r4,r1 ; r1 ??? bc r4 is ???, r1 ??? bc r4 is ???	
	fmov.s @(r0,r14),fr2
	fmov.s @r1,fr3
	mov 0x09,r6 ; r6 set to 0x09, r6 set to 0x09
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)

loc_8C0AC120:
	lds.l @r15+,pr
	mov.l @(loc_8C0AC1AC,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
	mov r14,r4
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0AC130:
	mov.l r14,@-r15
	mov 0x5C,r1 ; r1 set to 0x5c
	mov r4,r14
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
	mov.w @(0x1E,r14),r0
	mov.l @(0x18,r14),r4
	mov.w @(loc_8C0AC19C,pc),r3 ; r3 set to 0x158
	add r4,r3 ; r3 ??? bc r4 is ???	
	mov.b @r3,r3
	extu.b r3,r3
	cmp/eq r3,r0
	bt loc_8C0AC182
	mov r14,r4
	bra loc_8C0AC236
	mov.l @r15+,r14

loc_8C0AC182:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0AC1B0,pc),r1 ; r1 set to 0x8C15793c
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0AC192:
	#data 0x01A3
loc_8C0AC194:
	#data 0x01Ac
loc_8c0ac196:
	#data 0x01D2
loc_8C0AC198:
	#data 0x0255
loc_8C0AC19A:
	#data 0x01A1
loc_8C0AC19C:
	#data 0x0158
	#align4

loc_8c0ac1a0:
	#data 0xC2A35555
loc_8c0ac1a4:
	#data 0x435A9249
loc_8C0AC1A8:
	#data bank15.loc_8c15792c
loc_8C0AC1AC:
	#data bank03.loc_8c034e8c
loc_8C0AC1B0:
	#data bank15.loc_8c15793c

;==============================================
loc_8C0AC1B4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8C0AC2Ec
	mov r4,r14
	mov.l @(loc_8C0AC2D4,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov.w @(0x1C,r14),r0
	mov.l @(0x18,r14),r4
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bf loc_8C0AC1F6
	mov.b @(0x05,r14),r0
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0AC1Ea
	mov.w @(loc_8C0AC2C8,pc),r0 ; r0 set to 0x1A3
	mov.b @(r0,r4),r13
	shll r13
	bra loc_8C0AC1Ec
	add 0x06,r13

loc_8c0ac1ea:
	mov 0x07,r13

loc_8c0ac1ec:
	mov.l @(loc_8c0ac2d8,pc),r2
	mov 0x15,r5
	extu.b r13,r6
	jsr @r2
	mov r14,r4

loc_8c0ac1f6:
	mov.w @(loc_8C0AC2CA,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0ac206
	mov 0x00,r3
	mov.b r3,@(r0,r14) 
	bsr loc_8c0abf94
	mov r14,r4

loc_8c0ac206:
	lds.l @r15+,pr 
	mov.l @(loc_8c0ac2dc,pc),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8c0ac212:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8c0ac2ec
	mov r4,r14
	mov.l @(0xB8,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt.s loc_8c0ac22e
	mov r14,r4
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)

loc_8c0ac22e:
	lds.l @r15+,pr
	mov.l @(0xA8,PC),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0AC236:
	mov.w @(loc_8C0AC2CC,pc),r0 ; r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00
	mov.b r3,@(r0,r4)

loc_8C0AC23C:
	mov.l @(loc_8C0AC2E0,pc),r3 ; r3 set to 0x8C0450C0, r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C0AC242:
	mov.w @(loc_8C0AC2CE,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0AC2CE,pc),r0 ; r0 set to 0xDc
	sts.l pr,@-r15
	mov.l @(0x18,r4),r2
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0AC2E4,pc),r3 ; r3 set to 0x8C129560
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0AC2CC,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0AC2C8,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0AC2E8,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x20,r2 ; r2 set to 0x20
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r3,@(r0,r4)
	mov 0x24,r3 ; r3 set to 0x24
	mov.w @(loc_8C0AC2D0,pc),r0 ; r0 set to 0x13d
	mov.b r2,@(r0,r4)
	add 0xFF,r0 ; r0 set to 0x13c
	mov.b r2,@(r0,r4)
	add 0x03,r0 ; r0 set to 0x13f
	mov.b r3,@(r0,r4)
	add 0xFF,r0 ; r0 set to 0x13e
	mov 0x00,r2 ; r2 set to 0x00
	mov.b r3,@(r0,r4)
	mov r3,r0 ; r0 set to 0x24
	nop
	lds.l @r15+,pr
	rts
	mov.b r2,@(r0,r4)

;----------------------------------------------
loc_8C0AC2C4:
	rts
	nop

;----------------------------------------------
loc_8C0AC2C8:
	#data 0x01A3
loc_8c0ac2ca:
	#data 0x0141
loc_8C0AC2CC:
	#data 0x012c
loc_8C0AC2CE:
	#data 0x00Dc
loc_8C0AC2D0:
	#data 0x013d
	#align4

loc_8C0AC2D4:
	#data bank03.loc_8c034dee
loc_8C0AC2D8:
	#data bank03.loc_8c034e8c
loc_8C0AC2DC:
	#data bank04.loc_8c045748
loc_8C0AC2E0:
	#data bank04.loc_8c0450C0
loc_8C0AC2E4:
	#data bank12.loc_8c129560
loc_8C0AC2E8:
	#data bank12.loc_8c1294C8

;==============================================
loc_8C0AC2EC:
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r3
	tst r3,r3
	bf/s loc_8C0AC31a
	mov.l @(0x18,r4),r5
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mova @(loc_8C0AC364,pc),r0  ; r0 set to 0x8C0AC364
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4)
	mova @(loc_8C0AC368,pc),r0  ; r0 set to 0x8C0AC368
	fmov.s @r0,fr4
	mov.w @(loc_8C0AC35E,pc),r0 ; r0 set to 0x1D2
	mov.b @(r0,r5),r3
	tst r3,r3
	bf loc_8C0AC354
	mova @(loc_8C0AC36C,pc),r0  ; r0 set to 0x8C0AC36c
	bra loc_8C0AC354
	fmov.s @r0,fr4

loc_8c0ac31a:
	mov.l @(0x14,r4),r6
	mov 0x34,r0
	mov.l @(loc_8c0ac370,pc),r7
	fmov.s @(r0,r6),fr3
	fmov.s fr3,@(r0,r4) 
	mov.w @(loc_8C0AC360,pc),r0
	mov.b @(r0,r5),r3
	mov 0x04,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r7,r3
	fmov.s @(r0,r3),fr3
	mov 0x38,r0
	fmov.s @(r0,r6),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4) 
	mov.w @(loc_8C0AC360,pc),r0
	mov.b @(r0,r5),r3
	add 0x2F,r0
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r7
	mov.b @(r0,r5),r3
	tst r3,r3
	bf/s loc_8c0ac354
	fmov.s @r7,fr4
	fneg fr4

loc_8C0AC354:
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	rts
	fmov.s fr3,@(r0,r4)

;----------------------------------------------
loc_8C0AC35E:
	#data 0x01D2
loc_8c0ac360:
	#data 0x01A3
	#align4

loc_8C0AC364:
	#data 0x435A9249
loc_8C0AC368:
	#data 0x42A35555
loc_8C0AC36C:
	#data 0xC2A35555
loc_8C0AC370:
	#data bank15.loc_8c157944

;==============================================
;unused
loc_8c0ac374:
	mov.l r14,@-r15
	mov 0x03,r1
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l @(0x120,PC),r2
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	mov.w @r2,r3
	cmp/ge r1,r3
	bt.s loc_8c0ac390
	mov r4,r14
	bra loc_8c0ac402
	mov 0x00,r0

loc_8c0ac390:
	mov 0x01,r6
	mov.l @(0x110,PC),r13
	mov r6,r5
	jsr @r13
	mov 0x00,r4
	mov r0,r4
	mov.w @(0xFE,PC),r10
	mov 0x00,r12
	mov.l @(0x104,PC),r11
	mov 0x01,r6
	mov r6,r5
	mov.l r11,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r10,@(r0,r4)
	mov 0x20,r0
	mov.b r12,@(r0,r4)
	mov 0x21,r0
	mov.b r12,@(r0,r4)
	jsr @r13
	mov r12,r4
	mov r0,r4
	mov 0x01,r3
	mov r3,r6
	mov r3,r5
	mov.l r11,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r10,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b r12,@(r0,r4)
	jsr @r13
	mov r12,r4
	mov r0,r4
	mov 0x01,r3
	mov r3,r2
	mov.l r11,@(0x10,r4)
	mov.l r14,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r10,@(r0,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b r2,@(r0,r4)
	mov r4,r0
	nop

loc_8c0ac402:
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AC410:
	mov.l @(0x8C,PC),r2
	mov 0x02,r1
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.w @r2,r3
	cmp/ge r1,r3
	bt.s loc_8c0ac428
	mov r4,r14
	lds.l @r15+,pr
	mov 0x00,r0
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AC428:
	mov.l @(0x78,PC),r2
	mov 0x01,r6
	mov r6,r5
	jsr @r2
	mov 0x00,r4
	mov.l @(0x74,PC),r3
	mov r0,r4
	mov.l r3,@(0x10,r4)
	mov.w @(0x62,PC),r3
	mov.l r14,@(0x18,r4)
	mov.l @(0x14,r14),r2
	mov.l r2,@(0x14,r4)
	mov 0x03,r2
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b r2,@(r0,r4)
	mov 0x21,r0
	mov 0x00,r3
	mov.b r3,@(r0,r4)
	mov r4,r0
	nop
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AC45E:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0ACF1a
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0AC4AC,pc),r1 ; r1 set to 0x8C157954
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AC478:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x20,r0 ; r0 set to 0x20
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0AC4B0,pc),r0 ; r0 set to 0x8C157964
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jsr @r2
	nop
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x8C157965
	mov.b r0,@(0x04,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ac49e:
	#data 0x3502
	#align4

loc_8c0ac4a0:
	#data 0x8C287AE8
loc_8C0AC4A4:
	#data bank04.loc_8c044F12
loc_8C0AC4A8:
	#data loc_8c0aC45e
loc_8C0AC4AC:
	#data bank15.loc_8c157954
loc_8C0AC4B0:
	#data bank15.loc_8c157964

;----------------------------------------------
loc_8C0AC4B4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.w @(loc_8C0AC608,pc),r0 ; r0 set to 0x20c
	mov.l @(0x14,r14),r13
	mov.l @(r0,r13),r3
	mov.l r3,@r15
	bsr loc_8C0ACE98
	mov r14,r4
	mov 0x24,r0 ; r0 set to 0x24
	fldi1 fr7
	mov 0x0B,r2 ; r2 set to 0x0b
	fadd fr7,fr7
	mov.b r2,@(r0,r14)
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C0AC60A,pc),r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0AC61C,pc),r0  ; r0 set to 0x8C0AC61c
	fmov.s @r0,fr3
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr2 ; r2 ??? bc r13 is ???	
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0AC620,pc),r0  ; r0 set to 0x8C0AC620
	mov.l @r15,r3
	fmov.s @r0,fr4 ; r4 ??	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r3),fr1
	fmov.s @(r0,r13),fr2
	mov 0x5C,r0 ; r0 set to 0x5c
	fsub fr2,fr1
	fmov fr1,fr5
	fdiv fr4,fr5
	fmov fr5,fr6
	fdiv fr7,fr6
	fadd fr6,fr5
	fmov.s fr5,@(r0,r14)
	fldi0 fr5
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr5,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2
	mov 0x37,r3 ; r3 set to 0x37
	mov.w @(loc_8C0AC60C,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r13),fr1
	mov 0x60,r0 ; r0 set to 0x60
	fsub fr2,fr1
	fmov fr4,fr2
	fmov fr1,fr4
	fdiv fr2,fr4
	fmov fr4,fr6
	fdiv fr7,fr6
	fadd fr6,fr4
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr5,@(r0,r14)
	mov.w @(loc_8C0AC60E,pc),r0 ; r0 set to 0x1A1
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_8C0AC624,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	mov 0x42,r4 ; r4 set to 0x42
	mov 0x17,r5 ; r5 set to 0x17
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x16,r6 ; r6 set to 0x16
	mov.w @(loc_8C0AC610,pc),r0 ; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov r14,r4 ; r4 ??? bc r14 is ???	
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0AC628,pc),r2 ; r2 set to 0x8C034E8c
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AC56C:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov.s fr15,@-r15
	fmov.s fr14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x14,r14),r3
	mov.w @(loc_8C0AC612,pc),r13 ; r13 set to 0xCc
	mov.l r3,@r15
	add r14,r13 ; r13 ??? bc r14 is ???	
	bsr loc_8C0ACE98
	mov r14,r4
	mova @(loc_8C0AC62C,pc),r0  ; r0 init to 0x8C0AC62c
	mov.l @r15,r3
	fmov.s @r0,fr14
	mova @(loc_8C0AC630,pc),r0  ; r0 set to 0x8C0AC630
	fmov.s @r0,fr15
	mov.w @(loc_8C0AC614,pc),r0 ; r0 set to 0x1D2
	mov.l @(loc_8C0AC634,pc),r4 ; r4 set to 0x8C26A518
	mov.b @(r0,r3),r2
	tst r2,r2
	bt loc_8C0AC5A2
	mov.w @(loc_8C0AC616,pc),r0 ; r0 set to 0x8c
	fmov.s @(r0,r4),fr3
	bra loc_8C0AC5A8
	fadd fr15,fr3

loc_8C0AC5A2:
	mov.w @(loc_8C0AC618,pc),r0 ; r0 set to 0x88
	fmov.s @(r0,r4),fr3
	fadd fr14,fr3

loc_8C0AC5A8:
	mov 0x34,r0 ; r0 set to 0x34, r0 set to 0x34
	mov.l @(loc_8C0AC63C,pc),r3 ; r3 set to 0x8C03319E, r3 set to 0x8C03319e
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0AC638,pc),r0  ; r0 set to 0x8C0AC638, r0 set to 0x8C0AC638
	fmov.s @r0,fr3 ; r3 ??, r3 ??	
	mov.w @(loc_8C0AC61A,pc),r0 ; r0 set to 0x90, r0 set to 0x90
	fmov.s @(r0,r4),fr2
	mov 0x38,r0 ; r0 set to 0x38, r0 set to 0x38
	fadd fr3,fr2
	jsr @r3
	fmov.s fr2,@(r0,r14)
	mov 0x22,r1 ; r1 set to 0x22, r1 set to 0x22
	add r14,r1 ; r1 ??? bc r14 is ???, r1 ??? bc r14 is ???	
	and 0x1F,r0
	mov.b r0,@r1
	mova @(loc_8C0AC640,pc),r0  ; r0 set to 0x8C0AC640, r0 set to 0x8C0AC640
	fmov.s @r0,fr4
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C0AC5E6
	mov 0x12,r5 ; r5 set to 0x12, r5 set to 0x12
	mov 0x04,r0 ; r0 set to 0x04, r0 set to 0x04
	fmov.s fr14,@(r0,r13)
	mov 0x08,r0 ; r0 set to 0x08, r0 set to 0x08
	fmov.s fr4,@(r0,r13)
	mov 0x24,r0 ; r0 set to 0x24, r0 set to 0x24
	mov 0x07,r3 ; r3 set to 0x07, r3 set to 0x07
	mov.b r3,@(r0,r14)
	bra loc_8C0AC5F6
	mov 0x16,r6

loc_8C0AC5E6:
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s fr15,@(r0,r13)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s fr4,@(r0,r13)
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x00,r3 ; r3 set to 0x00
	mov 0x25,r6 ; r6 set to 0x25
	mov.b r3,@(r0,r14)

loc_8C0AC5F6:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0AC628,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	fmov.s @r15+,fr14
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0AC608:
	#data 0x020c
loc_8C0AC60A:
	#data 0x012c
loc_8C0AC60C:
	#data 0x041c
loc_8C0AC60E:
	#data 0x01A1
loc_8C0AC610:
	#data 0x019c
loc_8C0AC612:
	#data 0x00Cc
loc_8C0AC614:
	#data 0x01D2
loc_8C0AC616:
	#data 0x008c
loc_8C0AC618:
	#data 0x0088
loc_8C0AC61A:
	#data 0x0090
	#align4

loc_8C0AC61C:
	#data 0x43892492
loc_8C0AC620:
	#data 0x41000000
loc_8C0AC624:
	#data 0x8C2896B0
loc_8C0AC628:
	#data bank03.loc_8c034e8c
loc_8C0AC62C:
	#data 0xC2555555
loc_8C0AC630:
	#data 0x42555555
loc_8C0AC634:
	#data 0x8C26A518
loc_8C0AC638:
	#data 0x43092492
loc_8C0AC63C:
	#data bank03.loc_8c03319e
loc_8C0AC640:
	#data 0x432D5555

;==============================================
loc_8C0AC644:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0AC7A8,pc),r13 ; r13 set to 0x8C03319e
	bsr loc_8C0ACE98
	mov r4,r14
	mov.w @(loc_8C0AC79E,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov 0x00,r12 ; r12 set to 0x00
	mov.b r2,@(r0,r14)
	mov r12,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x06,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x0B,r3 ; r3 set to 0x0b
	mov.b r3,@(r0,r14)
	jsr @r13
	mov.l @(0x18,r14),r11
	and 0x1F,r0
	lds r0,fpul
	mova @(loc_8C0AC7AC,pc),r0  ; r0 set to 0x8C0AC7Ac
	fmov.s @r0,fr0 ; r0 ??	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r11),fr2 ; r2 ??? bc r11 is ???	
	float fpul,fr3
	fmac fr0,fr3,fr2
	jsr @r13
	fmov.s fr2,@(r0,r14)
	and 0x0F,r0
	fldi0 fr4
	lds r0,fpul
	mova @(loc_8C0AC7B0,pc),r0  ; r0 set to 0x8C0AC7B0
	fmov.s @r0,fr0 ; r0 ??	
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r11),fr2
	float fpul,fr3
	mov.l @(loc_8C0AC7BC,pc),r3 ; r3 set to 0x8C26823c
	fmac fr0,fr3,fr2
	fmov.s fr2,@(r0,r14)
	mova @(loc_8C0AC7B4,pc),r0  ; r0 set to 0x8C0AC7B4
	fmov.s @r0,fr3 ; r3 ??	
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0AC7B8,pc),r0  ; r0 set to 0x8C0AC7B8
	fmov.s @r0,fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr3,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x0A,r0 ; r0 set to 0x0a
	mov.w r0,@(0x1C,r14)
	mov.l @r3,r0 ; r0 ??? bc r3 is ???	
	mov.l @(0x1C,r0),r0
	tst 0x03,r0
	bt loc_8C0AC6C2
	mov.w @(loc_8C0AC7A0,pc),r0 ; r0 set to 0x1A1
	mov 0x39,r1 ; r1 set to 0x39
	bra loc_8C0AC6C8
	mov.b r1,@(r0,r14)

loc_8C0AC6C2:
	mov.w @(loc_8C0AC7A0,pc),r0 ; r0 set to 0x1A1
	mov 0x38,r2 ; r2 set to 0x38
	mov.b r2,@(r0,r14)

loc_8C0AC6C8:
	mov.w @(loc_8C0AC7A2,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov 0x42,r4 ; r4 set to 0x42, r4 set to 0x42
	mov.l @(loc_8C0AC7C0,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.w r12,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r12,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r12,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??	
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.w @(loc_8C0AC7A4,pc),r0 ; r0 set to 0x19C, r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19D, r0 set to 0x19d
	jsr @r13
	mov.b r4,@(r0,r14)
	mov 0x0F,r12 ; r12 set to 0x0F, r12 set to 0x0f
	mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
	and r0,r12 ; r12 ??, r12 ??	
	mov.l @(loc_8C0AC7C4,pc),r0 ; r0 set to 0x8C157984, r0 set to 0x8C157984
	extu.b r12,r3 ; r3 ??? bc r12 is ???, r3 ??? bc r12 is ???	
	shll2 r3
	mov.l @(r0,r3),r2
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	extu.b r12,r12
	mov.l @(loc_8C0AC7CC,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov.b r2,@(r0,r14)
	mov 0x12,r5 ; r5 set to 0x12, r5 set to 0x12
	lds.l @r15+,pr
	mov.l @(loc_8C0AC7C8,pc),r0 ; r0 set to 0x8C157974, r0 set to 0x8C157974
	mov.l @r15+,r11
	mov.b @(r0,r12),r6
	mov.l @r15+,r12
	extu.b r6,r6
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0AC71C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8C0ACE98
	mov.l @(0x18,r14),r13
	mov 0x24,r0 ; r0 set to 0x24
	mov.l @(loc_8C0AC7D4,pc),r3 ; r3 set to 0x8C04223a
	mov 0x0B,r2 ; r2 set to 0x0b
	mov.b r2,@(r0,r14)
	mov 0x42,r4 ; r4 set to 0x42
	mov.w @(loc_8C0AC7A4,pc),r0 ; r0 set to 0x19c
	mov 0x4C,r5 ; r5 set to 0x4c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mova @(loc_8C0AC7D0,pc),r0  ; r0 set to 0x8C0AC7D0
	fmov.s @r0,fr3
	mov 0x54,r0 ; r0 set to 0x54
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4 ; r4 ??? bc r14 is ???	
	mov.w @(loc_8C0AC7A0,pc),r0 ; r0 set to 0x1A1
	mov 0x3B,r2 ; r2 set to 0x3b
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8C0AC7C0,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov 0x19,r6 ; r6 set to 0x19
	mov.b @(0x02,r14),r0
	mov 0x15,r5 ; r5 set to 0x15
	mov.l @r3,r2 ; r2 ??	
	mov r14,r4 ; r4 ??? bc r14 is ???	
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.l @(loc_8C0AC7CC,pc),r2 ; r2 set to 0x8C034E8c
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0AC78A:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0AC7D8,pc),r0 ; r0 set to 0x8C1579C4
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0AC79E:
	#data 0x012c
loc_8C0AC7A0:
	#data 0x01A1
loc_8C0AC7A2:
	#data 0x01Ac
loc_8C0AC7A4:
	#data 0x019c
	#align4

loc_8C0AC7A8:
	#data bank03.loc_8c03319e
loc_8C0AC7AC:
	#data work.CpsXScale
loc_8C0AC7B0:
	#data work.CpsYScale
loc_8C0AC7B4:
	#data 0x41092492
loc_8C0AC7B8:
	#data 0x3E892492
loc_8C0AC7BC:
	#data 0x8C26823c
loc_8C0AC7C0:
	#data 0x8C2896B0
loc_8C0AC7C4:
	#data bank15.loc_8c157984
loc_8C0AC7C8:
	#data bank15.loc_8c157974
loc_8C0AC7CC:
	#data bank03.loc_8c034e8c
loc_8C0AC7D0:
	#data 0x4019999a
loc_8C0AC7D4:
	#data bank04.loc_8c04223a
loc_8C0AC7D8:
	#data bank15.loc_8c1579C4

;==============================================
loc_8C0AC7DC:
	mov r4,r3
	mov.l @(loc_8C0AC924,pc),r1 ; r1 set to 0x8C1579D4
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0AC7EE:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(0x14,r4),r5
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @r1,fr3
	fmov.s @(r0,r4),fr2
	mov 0x68,r1 ; r1 set to 0x68
	add r4,r1 ; r1 ??? bc r4 is ???	
	fadd fr3,fr2
	mov 0x01,r3 ; r3 set to 0x01
	fmov.s fr2,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3 ; r3 ??? bc r1 is ???	
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
	fmov.s fr2,@(r0,r4)
	mov.w @(loc_8C0AC91A,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr3
	mov.w @(loc_8C0AC91C,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r5),fr2
	fcmp/gt fr2,fr3
	bf loc_8C0AC840
	mov.l @(loc_8C0AC928,pc),r3 ; r3 set to 0x8C034DEe
	jmp @r3
	nop

;==============================================
loc_8C0AC840:
	mov.b @(0x05,r4),r0
	mov 0x0D,r3 ; r3 set to 0x0d
	mov 0x17,r6 ; r6 set to 0x17
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r4)
	mov.w @(loc_8C0AC91C,pc),r0 ; r0 set to 0x41c
	mov.l @(loc_8C0AC92C,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s @(r0,r5),fr3 ; r3 ??? bc r5 is ???	
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r4)
	jmp @r3
	mov 0x15,r5

;==============================================
loc_8C0AC85C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x14,r14),r13
	mov.w @(0xB4,PC),r4
	mov.b @(0x5,r13),r0
	tst r0,r0
	bf.s loc_8c0ac884
	add r13,r4
	mov.w @(0xAC,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bf loc_8c0ac884
	mov.w @(0xA4,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0ac892

loc_8C0AC884:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x8A,PC),r0
	bra loc_8c0ac8f6
	mov.b r3,@(r0,r14)

loc_8C0AC892:
	mov.b @r4,r1
	tst r1,r1
	bt loc_8c0ac8b6
	mov.b @(0x5,r14),r0
	mov 0x15,r5
	mov.l @(0x8C,PC),r3
	mov 0x18,r6
	add 0x01,r0
	mov.b r0,@(0x5,r14)
	mov 0x20,r0
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0ac410
	mov.l @r15+,r14

loc_8C0AC8B6:
	mov.l @(0x78,PC),r3
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x07,r0
	bf loc_8c0ac8ea
	mov.l @(0x70,PC),r1
	mov 0x01,r6
	mov r6,r5
	jsr @r1
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ac8ea
	mov r0,r4
	mov.l @(0x64,PC),r2
	mov.l r2,@(0x10,r4)
	mov 0x00,r2
	mov.l r14,@(0x18,r4)
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x14,r4)
	mov 0x02,r3
	mov.b @(0x1,r13),r0
	mov.b r0,@(0x1,r4)
	mov 0x20,r0
	mov.b r3,@(r0,r4)
	mov 0x21,r0
	mov.b r2,@(r0,r4)

loc_8C0AC8EA:
	lds.l @r15+,pr
	mov.l @(0x4C,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0AC8F6:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AC8FE:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0ac916
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x4,PC),r0
	mov.b r3,@(r0,r4)

loc_8C0AC916:
	rts
	nop

;----------------------------------------------
loc_8C0AC91A:
	#data 0x012c
loc_8C0AC91C:
	#data 0x041c
loc_8C0AC91e:
	#data 0x02A4
loc_8C0AC920:
	#data 0x01D0
loc_8C0AC922:
	#data 0x01E9
	#align4

loc_8C0AC924:
	#data bank15.loc_8c1579D4
loc_8C0AC928:
	#data bank03.loc_8c034dee
loc_8C0AC92C:
	#data bank03.loc_8c034e8c
loc_8C0AC930:
	#data 0x8C26823c
loc_8C0AC934:
	#data bank04.loc_8c044F12
loc_8C0AC938:
	#data loc_8c0aC45e
loc_8C0AC93C:
	#data bank04.loc_8c045748

;==============================================
loc_8C0AC940:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x5,r14),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0ac986
	mov.l @(0x14,r14),r4
	mov.b @(0x5,r4),r0
	tst r0,r0
	bf loc_8c0ac968
	mov.w @(0x12C,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0ac968
	mov.w @(0x124,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1D,r0
	bt loc_8c0ac986

loc_8C0AC968:
	mov 0x02,r0
	fldi0 fr4
	mov.b r0,@(0x5,r14)
	mova @(0x120,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0x11C,PC),r0
	fmov @r0,fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)

loc_8C0AC986:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0x10C,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0AC996:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF4,r15
	mov.w @(0xE8,PC),r5
	mov r4,r14
	mov 0x04,r0
	mov.l @(0x14,r14),r4
	add r14,r5
	fmov @(r0,r5),fr3
	mov.w @(0xDE,PC),r0
	fmov fr3,@r15
	mov.b @(r0,r4),r3
	tst r3,r3
	bf loc_8c0ac9b8
	fmov @r15,fr3
	fneg fr3
	fmov fr3,@r15

loc_8C0AC9B8:
	mov 0x34,r0
	fmov @r15,fr2
	fmov @(r0,r4),fr3
	mov 0x08,r0
	mov.l @(0xD8,PC),r3
	fadd fr3,fr2
	fmov fr2,@r15
	fmov @(r0,r5),fr3
	mov 0x38,r0
	fmov @(r0,r4),fr2
	mov 0x04,r0
	mov r14,r4
	mov r15,r5
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r3
	add 0x34,r4
	add 0x04,r0
	mov.w @(0xAC,PC),r5
	shar r0
	mov.l @(0xBC,PC),r3
	mov 0x22,r1
	shar r0
	shar r0
	add r14,r1
	mov.b r0,@r1
	jsr @r3
	mov r14,r4
	mov.l @(0xB0,PC),r2
	jsr @r2
	mov r14,r4
	add 0x0C,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AC9FE:
	mov.w @(0x86,PC),r6
	mov 0x04,r0
	mov.l @(0x14,r4),r5
	add r4,r6
	fmov @(r0,r6),fr4
	mov.w @(0x7E,PC),r0
	mov.b @(r0,r5),r3
	tst r3,r3
	bf.s loc_8c0aca14
	mov 0x34,r0
	fneg fr4

loc_8C0ACA14:
	fmov @(r0,r5),fr3
	mov.l @(0x8C,PC),r3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x08,r0
	fmov @(r0,r6),fr3
	mov 0x38,r0
	fmov @(r0,r5),fr2
	fadd fr3,fr2
	jmp @r3
	fmov fr2,@(r0,r4)

;==============================================
loc_8C0ACA2A:
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l @(loc_8C0ACAA8,pc),r3 ; r3 set to 0x8C26A5A8
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
	fmov.s fr2,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @r3,fr2
	fmov.s @(r0,r4),fr3
	fcmp/gt fr2,fr3
	bf loc_8C0ACA7a
	mov.b @(0x04,r4),r0
	add 0x01,r0 ; r0 set to 0x39
	mov.b r0,@(0x04,r4)
	mov 0x00,r0 ; r0 set to 0x00
	bra loc_8C0ACA80
	mov.b r0,@(0x05,r4)

loc_8C0ACA7A:
	mov.l @(loc_8C0ACAA4,pc),r1 ; r1 set to 0x8C034DEe
	jmp @r1
	nop

loc_8C0ACA80:
	rts
	nop

;----------------------------------------------
loc_8c0aca84:
	#data 0x01e9
loc_8c0aca86:
	#data 0x01d0
loc_8c0aca88:
	#data 0x00cc
loc_8c0aca8a:
	#data 0x01d2
loc_8c0aca8c:
	#data 0x0190
	#align4

loc_8C0ACA90:
	#data 0xC0892492
loc_8C0ACA94:
	#data 0x3F092492
loc_8C0ACA98:
	#data bank15.loc_8c1579E0
loc_8C0ACA9C:
	#data bank03.loc_8c03362c
loc_8C0ACAA0:
	#data bank03.loc_8c033674
loc_8C0ACAA4:
	#data bank03.loc_8c034dee
loc_8C0ACAA8:
	#data 0x8C26A5A8

;==============================================
loc_8C0ACAAC:
	mov r4,r3
	mov.l @(loc_8C0ACBB0,pc),r1 ; r1 set to 0x8C1579Ec
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0ACABE:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bt/s loc_8C0ACAE6
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @(loc_8C0ACBB4,pc),r3 ; r3 set to 0x8C26823c
	mov.l @r3,r2
	mov.l @(0x1C,r2),r1
	tst r5,r1
	bt loc_8C0ACAE0
	mov.w @(loc_8C0ACBA4,pc),r2 ; r2 set to 0x12c
	mov 0x00,r0 ; r0 set to 0x00
	add r4,r2 ; r2 ??? bc r4 is ???	
	bra loc_8C0ACAF2
	mov.b r0,@r2

loc_8C0ACAE0:
	mov.w @(loc_8C0ACBA4,pc),r0 ; r0 set to 0x12c
	bra loc_8C0ACAF2
	mov.b r5,@(r0,r4)

loc_8C0ACAE6:
	mov.b @(0x05,r4),r0
	add 0x01,r0
	mov.b r0,@(0x05,r4)
	mov.w @(loc_8C0ACBA4,pc),r0 ; r0 set to 0x12c
	bra loc_8C0ACAF6
	mov.b r5,@(r0,r4)

loc_8C0ACAF2:
	rts
	nop

;----------------------------------------------
loc_8c0acaf6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x14,r14),r5
	mov.w @(loc_8C0ACBA6,pc),r0
	mov.l @(0x18,r14),r4
	mov.l @(r0,r5),r3
	mov.w @(loc_8C0ACBA8,pc),r2
	mov.l r3,@r15
	mov.b @(0x04,r4),r0 
	extu.b r0,r0
	cmp/eq 0x01,r0 
	bf/s loc_8c0acb1a
	add r2,r5
	mov.b @r5,r1
	tst r1,r1
	bt loc_8c0acb2e

loc_8c0acb1a:
	mov.b @(0x05,r14),r0 
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x05,r14) 
	mov 0x03,r0
	mov.w r0,@(0x1C,r14) 
	add 0x04,r15
	lds.l @r15+,pr 
	bra loc_8c0ace04
	mov.l @r15+,r14

loc_8c0acb2e:
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov.l @(loc_8c0acbb8,pc),r0
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r1
	jsr @r1
	mov r14,r4
	mov.l @(loc_8c0acbb4,pc),r3
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x1F,r0 
	bf loc_8c0acb80
	mov.l @(loc_8c0acbbc,pc),r1
	jsr @r1
	nop 
	tst 0x03,r0 
	bt/s loc_8c0acb5c
	mov 0x00,r4
	mov.w @(loc_8C0ACBAA,pc),r0
	mov 0x39,r2
	bra loc_8c0acb62
	mov.b r2,@(r0,r14) 

loc_8c0acb5c:
	mov.w @(loc_8C0ACBAA,pc),r0
	mov 0x38,r3
	mov.b r3,@(r0,r14) 

loc_8c0acb62:
	mov.w @(loc_8C0ACBAC,pc),r0
	mov.l @(loc_8C0ACBC0,pc),r3
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

loc_8c0acb80:
	mov.l @(loc_8c0acbc4,pc),r3
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0ACBAE,pc),r0
	mov.l @r15,r2
	mov.b @(r0,r2),r3
	tst r3,r3
	bf loc_8c0acb9c
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @(loc_8c0acbc8,pc),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c0acb9c:
	add 0x04,r15
	lds.l @r15+,pr 
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0acba4:
	#data 0x012C
loc_8C0ACBA6:
	#data 0x020C
loc_8C0ACBA8:
	#data 0x02A4
loc_8C0ACBAA:
	#data 0x01A1
loc_8C0ACBAC:
	#data 0x01AC
loc_8C0ACBAE:
	#data 0x01A0
	#align4

loc_8c0acbb0:
	#data bank15.loc_8C1579EC
loc_8c0acbb4:
	#data 0x8C26823C
loc_8c0acbb8:
	#data bank15.loc_8c1579f8
loc_8c0acbbc:
	#data bank03.loc_8c03319e
loc_8C0ACBC0:
	#data 0x8C2896B0
loc_8c0acbc4:
	#data bank03.loc_8c034dee
loc_8c0acbc8:
	#data bank04.loc_8c045748

;==============================================
loc_8C0ACBCC:
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
	fmov.s fr2,@(r0,r4)

loc_8C0ACC04:
	mov r4,r3
	mov.l @(loc_8C0ACDA0,pc),r1 ; r1 set to 0x8C157A04, r1 set to 0x8C157A04
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0 ; r0 set to 0x60
	shll2 r0 ; r0 set to 0x180
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0ACC16:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.b @(0x06,r13),r0
	mov.l @(loc_8C0ACDA4,pc),r14 ; r14 set to 0x8C28C68c
	mov.l @(loc_8C0ACDA8,pc),r3 ; r3 set to 0x8C03319e
	add 0x01,r0
	jsr @r3
	mov.b r0,@(0x06,r13)
	mov.l @(loc_8C0ACDAC,pc),r4 ; r4 set to 0x8C157A14
	and 0x07,r0
	mov.b r0,@r14 ; r14 ??? bc r0 is ???	
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.b @r14,r2
	extu.b r2,r2
	shll2 r2
	shll r2
	add r4,r2
	fmov.s @r2,fr3 ; r3 ??? bc r2 is ???	
	fmov.s fr3,@(r0,r13)
	mov 0x04,r0 ; r0 set to 0x04
	mov.b @r14,r3
	extu.b r3,r3
	shll2 r3
	shll r3
	add r4,r3
	fmov.s @(r0,r3),fr3
	mov 0x68,r0 ; r0 set to 0x68
	mov.l @(loc_8C0ACDA8,pc),r3 ; r3 set to 0x8C03319e
	jsr @r3
	fmov.s fr3,@(r0,r13)
	mov.l @(loc_8C0ACDB0,pc),r4 ; r4 set to 0x8C157A54
	and 0x07,r0
	mov.b r0,@r14
	mov 0x60,r0 ; r0 set to 0x60
	mov.b @r14,r2
	extu.b r2,r2
	shll2 r2
	shll r2
	add r4,r2
	fmov.s @r2,fr3 ; r3 ??? bc r2 is ???	
	fmov.s fr3,@(r0,r13)
	mov 0x04,r0 ; r0 set to 0x04
	mov.b @r14,r3
	extu.b r3,r3
	shll2 r3
	shll r3
	add r4,r3
	fmov.s @(r0,r3),fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr3,@(r0,r13)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0ACC86:
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
	bf.s loc_8c0accde
	fmov fr2,@(r0,r14)
	mov.b @(0x6,r14),r0
	mov.l @(0xD8,PC),r3
	add 0x01,r0
	jsr @r3
	mov.b r0,@(0x6,r14)
	mov.l @(0xDC,PC),r1
	and 0x03,r0
	shll r0
	mov.w @(r0,r1),r0
	mov.w r0,@(0x1C,r14)

loc_8C0ACCDE:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0ACCE4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov r4,r13
	sts.l pr,@-r15
	mov.b @(0x06,r13),r0
	mov.l @(loc_8C0ACDB8,pc),r14 ; r14 set to 0x8C28C68d
	mov.l @(loc_8C0ACDA8,pc),r3 ; r3 set to 0x8C03319e
	add 0x01,r0
	jsr @r3
	mov.b r0,@(0x06,r13)
	mov.l @(loc_8C0ACDBC,pc),r4 ; r4 set to 0x8C157A9c
	and 0x07,r0
	mov.b r0,@r14 ; r14 ??? bc r0 is ???	
	mov 0x5C,r0 ; r0 set to 0x5c
	mov.b @r14,r2
	extu.b r2,r2
	shll2 r2
	shll r2
	add r4,r2
	fmov.s @r2,fr3 ; r3 ??? bc r2 is ???	
	fmov.s fr3,@(r0,r13)
	mov 0x04,r0 ; r0 set to 0x04
	mov.b @r14,r3
	extu.b r3,r3
	shll2 r3
	shll r3
	add r4,r3
	fmov.s @(r0,r3),fr3
	mov 0x68,r0 ; r0 set to 0x68
	mov.l @(loc_8C0ACDA8,pc),r3 ; r3 set to 0x8C03319e
	jsr @r3
	fmov.s fr3,@(r0,r13)
	mov.l @(loc_8C0ACDC0,pc),r4 ; r4 set to 0x8C157ADc
	and 0x07,r0
	mov.b r0,@r14
	mov 0x60,r0 ; r0 set to 0x60
	mov.b @r14,r2
	extu.b r2,r2
	shll2 r2
	shll r2
	add r4,r2
	fmov.s @r2,fr3 ; r3 ??? bc r2 is ???	
	fmov.s fr3,@(r0,r13)
	mov 0x04,r0 ; r0 set to 0x04
	mov.b @r14,r3
	extu.b r3,r3
	shll2 r3
	shll r3
	add r4,r3
	fmov.s @(r0,r3),fr3
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr3,@(r0,r13)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0ACD54:
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

;----------------------------------------------
loc_8C0ACD8E:
	mov r4,r3
	mov.l @(loc_8C0ACDC4,pc),r1 ; r1 set to 0x8C157B1c
	mov.l r4,@-r15
	mov.b @(0x06,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
	#align4

loc_8C0ACDA0:
	#data bank15.loc_8c157a04
loc_8C0ACDA4:
	#data 0x8C28C68c
loc_8C0ACDA8:
	#data bank03.loc_8c03319e
loc_8C0ACDAC:
	#data bank15.loc_8c157a14
loc_8C0ACDB0:
	#data bank15.loc_8c157a54
loc_8C0ACDB4:
	#data bank15.loc_8c157a94
loc_8C0ACDB8:
	#data 0x8C28C68d
loc_8C0ACDBC:
	#data bank15.loc_8c157a9c
loc_8C0ACDC0:
	#data bank15.loc_8c157aDc
loc_8C0ACDC4:
	#data bank15.loc_8c157b1c

;==============================================
loc_8C0ACDC8:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	mov.l @(loc_8C0ACF28,pc),r3 ; r3 set to 0x8C03319e
	add 0x01,r0
	jsr @r3
	mov.b r0,@(0x06,r14)
	mov 0x22,r1 ; r1 set to 0x22
	mov r14,r4
	add r14,r1 ; r1 ??? bc r14 is ???	
	and 0x1F,r0
	mov.b r0,@r1
	lds.l @r15+,pr
	mov.l @r15+,r14

loc_8C0ACDE6:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0ACF2C,pc),r3 ; r3 set to 0x8C033674, r3 set to 0x8C033674
	mov.w @(loc_8C0ACF1E,pc),r5 ; r5 set to 0x190, r5 set to 0x190
	jsr @r3
	mov r4,r14
	mov 0x22,r0 ; r0 set to 0x22, r0 set to 0x22
	mov.b @(r0,r14),r2
	mov 0x1F,r3 ; r3 set to 0x1F, r3 set to 0x1f
	add 0x01,r2
	and r3,r2
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0ACE04:
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bt/s loc_8C0ACE2c
	mov 0x00,r5 ; r5 set to 0x00
	mov.l @(loc_8C0ACF30,pc),r3 ; r3 set to 0x8C26823c
	mov.l @r3,r2
	mov.l @(0x1C,r2),r1
	tst r1,r1
	bt loc_8C0ACE22
	mov.w @(loc_8C0ACF20,pc),r0 ; r0 set to 0x12c
	bra loc_8C0ACE38
	mov.b r5,@(r0,r4)

loc_8C0ACE22:
	mov.l @(loc_8C0ACF34,pc),r2 ; r2 set to 0x8C034DEe
	mov 0x01,r1 ; r1 set to 0x01
	mov.w @(loc_8C0ACF20,pc),r0 ; r0 set to 0x12c
	jmp @r2
	mov.b r1,@(r0,r4)

loc_8C0ACE2C:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x05,r4)

loc_8C0ACE38:
	rts
	nop

;----------------------------------------------
loc_8C0ACE3C:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8C0ACE5a
	mov.b @(0x04,r14),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.w @(loc_8C0ACF20,pc),r0 ; r0 set to 0x12c
	bra loc_8C0ACE7e
	mov.b r3,@(r0,r14)

loc_8c0ace5a:
	mov 0x21,r0
	mov.b @(r0,r14),r1
	tst r1,r1
	bt loc_8c0ace6e
	mova @(loc_8C0ACF38,pc),r0 
	fmov.s @r0,fr3
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 

loc_8c0ace6e:
	mov.l @(loc_8c0acf34,pc),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr 
	mov.l @(loc_8c0acf3c,pc),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0ACE7E:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0ACE84:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0ACF20,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0ACE92:
	mov.l @(loc_8C0ACF40,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

;==============================================
loc_8C0ACE98:
	mov.w @(loc_8C0ACF22,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0ACF22,pc),r0 ; r0 set to 0xDc
	sts.l pr,@-r15
	mov.l @(0x18,r4),r2
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0ACF44,pc),r3 ; r3 set to 0x8C129560
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0ACF20,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0ACF24,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0ACF48,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x20,r2 ; r2 set to 0x20
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r3,@(r0,r4)
	mov 0x24,r3 ; r3 set to 0x24
	mov.w @(loc_8C0ACF26,pc),r0 ; r0 set to 0x13d
	mov.b r2,@(r0,r4)
	add 0xFF,r0 ; r0 set to 0x13c
	mov.b r2,@(r0,r4)
	add 0x03,r0 ; r0 set to 0x13f
	mov.b r3,@(r0,r4)
	add 0xFF,r0 ; r0 set to 0x13e
	mov 0x0B,r2 ; r2 set to 0x0b
	mov.b r3,@(r0,r4)
	mov r3,r0 ; r0 set to 0x24
	nop
	lds.l @r15+,pr
	rts
	mov.b r2,@(r0,r4)

;----------------------------------------------
loc_8C0ACF1A:
	rts
	nop

;----------------------------------------------
loc_8C0ACF1E:
	#data 0x0190
loc_8C0ACF20:
	#data 0x012c
loc_8C0ACF22:
	#data 0x00Dc
loc_8C0ACF24:
	#data 0x01A3
loc_8C0ACF26:
	#data 0x013d
	#align4

loc_8C0ACF28:
	#data bank03.loc_8c03319e
loc_8C0ACF2C:
	#data bank03.loc_8c033674
loc_8C0ACF30:
	#data 0x8C26823c
loc_8C0ACF34:
	#data bank03.loc_8c034dee
loc_8c0acf38:
	#data 0x43F89249
loc_8C0ACF3C:
	#data bank04.loc_8c045748
loc_8C0ACF40:
	#data bank04.loc_8c0450C0
loc_8C0ACF44:
	#data bank12.loc_8c129560
loc_8C0ACF48:
	#data bank12.loc_8c1294C8

;==============================================
loc_8c0acf4c:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop 
	mov.l @(loc_8c0ad0a4,pc),r3
	mov 0x01,r5
	mov.b r0,@(0x04,r15) 
	mov.b r6,@r15
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt/s loc_8c0acf9c
	mov r0,r4
	mov 0x34,r0
	mov.l @(loc_8c0ad0a8,pc),r3
	mov 0x20,r1
	mov.l r3,@(0x10,r4) 
	add r4,r1
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4) 
	mov 0x38,r0
	fmov.s @(r0,r14),fr3
	fmov.s fr3,@(r0,r4) 
	mov.l r14,@(0x18,r4) 
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x14,r4) 
	mov.l @(0x14,r14),r5
	mov.w @(loc_8C0AD0A2,pc),r3
	mov.b @(0x01,r5),r0 
	mov.b r0,@(0x01,r4) 
	mov 0x26,r0
	mov.w r3,@(r0,r4) 
	mov.b @(0x04,r15),r0 
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4) 

loc_8c0acf9c:
	mov r4,r0
	nop 
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
;unused
loc_8c0acfa8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12
	mov.l r11,@-r15
	mov r12,r13
	mov.l r10,@-r15
	mov 0x04,r10
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.w @(0xE0,PC),r11
	mov.l @(0xE0,PC),r9

loc_8c0acfc2:
	mov 0x01,r6
	mov r6,r5
	jsr @r9
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0acff4
	mov r0,r4
	mov 0x34,r0
	mov.l @(0xD4,PC),r2
	mov.l r2,@(0x10,r4)
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov.l r14,@(0x18,r4)
	mov.l r14,@(0x14,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r11,@(r0,r4)
	mov 0x20,r0
	mov.b r12,@(r0,r4)
	mov 0x21,r0
	mov.b r13,@(r0,r4)

loc_8c0acff4:
	add 0x01,r13
	exts.w r13,r3
	cmp/ge r10,r3
	bf loc_8c0acfc2
	mov r4,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8c0ad010:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.l r11,@-r15
	mov.l r10,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.l @(0x7C,PC),r10
	mov 0x00,r13
	mov.w @(0x76,PC),r12
	mov 0x08,r11
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15

loc_8c0ad030:
	mov 0x01,r5
	mov 0x02,r6
	jsr @r10
	mov r14,r4
	tst r0,r0
	bt.s loc_8c0ad06c
	mov r0,r4
	mov 0x34,r0
	mov.l @(0x64,PC),r2
	mov 0x20,r1
	add r4,r1
	mov.l r2,@(0x10,r4)
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov.l r14,@(0x18,r4)
	mov.l @(0x14,r14),r3
	mov.l r3,@(0x14,r4)
	mov.l @(0x14,r14),r5
	mov.b @(0x1,r5),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r12,@(r0,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)

loc_8c0ad06c:
	add 0x01,r13
	exts.w r13,r3
	cmp/ge r11,r3
	bf loc_8c0ad030
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;==============================================
loc_8C0AD088:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0AD860
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0AD0AC,pc),r1 ; r1 set to 0x8C157B24
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ad0a2:
	#data 0x3503
	#align4

loc_8C0AD0A4:
	#data bank04.loc_8c044F12
loc_8C0AD0A8:
	#data loc_8c0aD088
loc_8C0AD0AC:
	#data bank15.loc_8c157b24

;==============================================
loc_8C0AD0B0:
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(0x04,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r14),r3
	mov.l @(loc_8C0AD210,pc),r0 ; r0 set to 0x8C157B34
	extu.b r3,r3
	shll2 r3
	mov.l @(r0,r3),r2
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0AD0CC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov.w @(0x12E,PC),r13
	sts.l pr,@-r15
	add r14,r13
	bsr loc_8c0ad7de
	mov.l @(0x18,r14),r12
	mov 0x24,r0
	mov 0x0B,r2
	mov.b r2,@(r0,r14)
	mov.w @(0x120,PC),r0
	fmov @(r0,r12),fr3
	mov 0x08,r0
	fmov fr3,@(r0,r13)
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	add 0x01,r0
	mov.w r0,@(0x1E,r14)
	mova @(0x11C,PC),r0
	fmov @r0,fr4
	mov.w @(0x10C,PC),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bt loc_8c0ad106
	mova @(0x114,PC),r0
	fmov @r0,fr4

loc_8C0AD106:
	mov 0x34,r0
	mov.l @(0x110,PC),r1
	fmov @(r0,r14),fr3
	mov 0x17,r5
	lds r1,fpul
	fsub fr4,fr3
	mov.l @(0x10C,PC),r3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	extu.b r6,r6
	add 0x0C,r6
	jsr @r3
	mov r14,r4
	mov.w @(0xDC,PC),r0
	mov.b @(r0,r12),r2
	tst r2,r2
	bf loc_8c0ad14c
	mova @(0xEC,PC),r0
	fmov @r0,fr4
	mov.w @(0xCE,PC),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bf loc_8c0ad144
	mova @(0xE4,PC),r0
	fmov @r0,fr4

loc_8C0AD144:
	mov 0x34,r0
	fmov @(r0,r12),fr3
	bra loc_8c0ad154
	fadd fr4,fr3

loc_8C0AD14C:
	mov.w @(0xBE,PC),r0
	mov.l @(r0,r12),r4
	mov 0x34,r0
	fmov @(r0,r4),fr3

loc_8C0AD154:
	mov 0x04,r0
	fmov fr3,@(r0,r13)
	mov 0x6C,r0
	fldi0 fr3
	mov 0x21,r3
	fmov fr3,@(r0,r14)
	mov 0x68,r0
	fmov fr3,@(r0,r14)
	mova @(0xC4,PC),r0
	fmov @r0,fr4
	mov 0x34,r0
	fmov @(r0,r14),fr3
	mov 0x04,r0
	fmov @(r0,r13),fr2
	mov 0x5C,r0
	add r14,r3
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov 0x08,r0
	fmov @(r0,r13),fr2
	mov 0x60,r0
	fsub fr3,fr2
	fdiv fr4,fr2
	fmov fr2,@(r0,r14)
	mova @(0xA4,PC),r0
	mov.b @r3,r3
	fmov @r0,fr4
	mov 0x34,r0
	extu.b r3,r3
	lds r3,fpul
	mov 0x5C,r1
	add r14,r1
	fmov fr4,fr0
	fmov @r1,fr2
	mov 0x21,r3
	float fpul,fr3
	add r14,r3
	mov 0x60,r1
	add r14,r1
	fmul fr3,fr2
	fmov @(r0,r14),fr3
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	mov.b @r3,r3
	fmov @r1,fr2
	extu.b r3,r3
	lds r3,fpul
	float fpul,fr3
	fmul fr3,fr2
	fmov @(r0,r14),fr3
	fmac fr0,fr2,fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AD1CE:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0AD7De
	mov r4,r14
	mov.l @(loc_8C0AD220,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x0C,r2 ; r2 set to 0x0c
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x0D,r6 ; r6 set to 0x0d
	lds.l @r15+,pr
	mov 0x15,r5 ; r5 set to 0x15
	jmp @r3
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AD1EA:
	mov.l r14,@-r15
	sts.l pr,@-r15
	bsr loc_8C0AD7De
	mov r4,r14
	mov.l @(loc_8C0AD220,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x09,r2 ; r2 set to 0x09
	mov 0x24,r0 ; r0 set to 0x24
	mov r14,r4
	mov.b r2,@(r0,r14)
	mov 0x13,r6 ; r6 set to 0x13
	lds.l @r15+,pr
	mov 0x15,r5 ; r5 set to 0x15
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0ad206:
	#data 0x00cc
loc_8c0ad208:
	#data 0x041c
loc_8c0ad20a:
	#data 0x01d2
loc_8c0ad20c:
	#data 0x01a3
loc_8c0ad20e:
	#data 0x020c
	#align4

loc_8C0AD210:
	#data bank15.loc_8c157b34
loc_8C0AD214:
	#data 0x42555555
loc_8C0AD218:
	#data 0xC2555555
loc_8C0AD21c:
	#data 0x43700000
loc_8C0AD220:
	#data bank03.loc_8c034e8c
loc_8C0AD224:
	#data 0x43200000
loc_8C0AD228:
	#data 0xC3200000
loc_8C0AD22c:
	#data 0x42800000
loc_8C0AD230:
	#data 0x41800000

;==============================================
loc_8C0AD234:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8C0AD7De
	mov.l @(0x18,r14),r13
	mov 0x24,r0 ; r0 set to 0x24
	mov.w @(loc_8C0AD388,pc),r3 ; r3 set to 0xD4
	mov 0x0A,r2 ; r2 set to 0x0a
	mov.b r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	mov 0x42,r4 ; r4 set to 0x42
	mov 0x40,r5 ; r5 set to 0x40
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0AD386,pc),r0 ; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	add 0xA0,r0 ; r0 set to 0x13d
	mov.b r3,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13c
	mov.b r3,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13d
	mov 0x01,r4 ; r4 set to 0x01
	mov.b r4,@(r0,r14)
	mov.b r4,@(r0,r14)
	mov.b r5,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r5,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r5,@(r0,r14)
	mov.b r5,@(r0,r14)
	add 0xED,r0 ; r0 set to 0x12c
	mov.b r4,@(r0,r14)
	mov.w @(loc_8C0AD38A,pc),r0 ; r0 set to 0x255
	mov.l @(0x14,r14),r4 ; r4 ??? bc r14 is ???	
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8C0AD290
	bra loc_8C0AD29c
	mov 0x32,r2

loc_8C0AD290:
	mov.w @(loc_8C0AD38A,pc),r0 ; r0 set to 0x255
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8C0AD2A2
	mov 0x30,r2 ; r2 set to 0x30

loc_8C0AD29C:
	mov.w @(loc_8C0AD38C,pc),r0 ; r0 set to 0x1A1, r0 set to 0x1A1
	bra loc_8C0AD2A8
	mov.b r2,@(r0,r14)

loc_8C0AD2A2:
	mov.w @(loc_8C0AD38C,pc),r0 ; r0 set to 0x1A1
	mov 0x31,r3 ; r3 set to 0x31
	mov.b r3,@(r0,r14)

loc_8C0AD2A8:
	mov.w @(loc_8C0AD38E,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov 0x00,r4 ; r4 set to 0x00, r4 set to 0x00
	mov.l @(loc_8C0AD390,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov 0x15,r5 ; r5 set to 0x15, r5 set to 0x15
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov r14,r4 ; r4 ??? bc r14 is ???, r4 ??? bc r14 is ???	
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	mov.l @(loc_8C0AD394,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov.l @r15+,r13
	extu.b r6,r6
	add 0x11,r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0AD2DE:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8C0AD7De
	mov.l @(0x18,r14),r13
	mov 0x24,r0 ; r0 set to 0x24
	mov.w @(loc_8C0AD388,pc),r3 ; r3 set to 0xD4
	mov 0x0A,r2 ; r2 set to 0x0a
	mov.b r2,@(r0,r14)
	mov 0x34,r0 ; r0 set to 0x34
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	mov 0x42,r4 ; r4 set to 0x42
	mov 0x01,r2 ; r2 set to 0x01
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14)
	mov.w @(loc_8C0AD386,pc),r0 ; r0 set to 0x19c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	add 0xA0,r0 ; r0 set to 0x13d
	mov.b r3,@(r0,r14)
	add 0xFF,r0 ; r0 set to 0x13c
	mov.b r3,@(r0,r14)
	mov 0x40,r4 ; r4 set to 0x40
	add 0x01,r0 ; r0 set to 0x13d
	mov.b r2,@(r0,r14)
	mov.b r2,@(r0,r14)
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13e
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x13f
	mov.b r4,@(r0,r14)
	mov.b r4,@(r0,r14)
	add 0xED,r0 ; r0 set to 0x12c
	mov 0x00,r4 ; r4 set to 0x00
	mov.l @(loc_8C0AD398,pc),r1 ; r1 set to 0x43F00000
	mov.b r4,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	lds r1,fpul
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14)
	mov 0x02,r0 ; r0 set to 0x02
	mov.w r0,@(0x1C,r14)
	mov.w @(loc_8C0AD38A,pc),r0 ; r0 set to 0x255
	mov.l @(0x14,r14),r5
	mov.b @(r0,r5),r0 ; r0 ??? bc r5 is ???	
	extu.b r0,r0
	cmp/eq 0x08,r0
	bf loc_8C0AD352
	mov.w @(loc_8C0AD38C,pc),r0 ; r0 set to 0x1A1
	mov 0x32,r2 ; r2 set to 0x32
	bra loc_8C0AD358
	mov.b r2,@(r0,r14)

loc_8C0AD352:
	mov.w @(loc_8C0AD38C,pc),r0 ; r0 set to 0x1A1
	mov 0x31,r3 ; r3 set to 0x31
	mov.b r3,@(r0,r14)

loc_8C0AD358:
	mov.w @(loc_8C0AD38E,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov.l @(loc_8C0AD390,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov.w r4,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r4,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r4,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x21,r0 ; r0 set to 0x21, r0 set to 0x21
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???, r3 ??? bc r14 is ???	
	tst r3,r3
	bf/s loc_8C0AD39c
	mov r14,r4
	mov 0x15,r6 ; r6 set to 0x15, r6 set to 0x15
	bra loc_8C0AD3A4
	mov r6,r5

;##############################################
loc_8C0AD386:
	#data 0x019c
loc_8C0AD388:
	#data 0x00D4
loc_8C0AD38A:
	#data 0x0255
loc_8C0AD38C:
	#data 0x01A1
loc_8C0AD38E:
	#data 0x01Ac
loc_8C0AD390:
	#data 0x8C2896B0
loc_8C0AD394:
	#data bank03.loc_8c034e8c
loc_8C0AD398:
	#data 0x43F00000

;----------------------------------------------
loc_8C0AD39C:
	mov.b @(r0,r14),r6
	mov 0x15,r5 ; r5 set to 0x15
	extu.b r6,r6
	add 0x11,r6

loc_8C0AD3A4:
	lds.l @r15+,pr
	mov.l @(loc_8C0AD500,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AD3AE:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r8,@-r15
	sts.l pr,@-r15
	bsr loc_8C0AD7De
	mov r4,r14
	mov 0x24,r0 ; r0 set to 0x24
	fldi0 fr4
	mov 0x0B,r2 ; r2 set to 0x0b
	mov.l @(loc_8C0AD504,pc),r1 ; r1 set to 0x434DB6Db
	mov.b r2,@(r0,r14)
	mov 0x01,r3 ; r3 set to 0x01
	mov.w @(loc_8C0AD4FA,pc),r0 ; r0 set to 0x12c
	mov 0x34,r8 ; r8 set to 0x34
	lds r1,fpul
	mov.b r3,@(r0,r14)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s fr4,@(r0,r14)
	mov 0x60,r0 ; r0 set to 0x60
	fmov.s fr4,@(r0,r14)
	mov 0x68,r0 ; r0 set to 0x68
	fmov.s fr4,@(r0,r14)
	mov 0x6C,r0 ; r0 set to 0x6c
	fmov.s fr4,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr2 ; r2 ??? bc r14 is ???	
	fsts fpul,fr3
	fadd fr3,fr2
	mov.l @(loc_8C0AD508,pc),r13 ; r13 set to 0x8C03319e
	fmov.s fr2,@(r0,r14)
	jsr @r13
	add r14,r8 ; r8 ??? bc r14 is ???	
	and 0x3F,r0
	lds r0,fpul
	mova @(loc_8C0AD50C,pc),r0  ; r0 set to 0x8C0AD50c
	fmov.s @r0,fr2
	mova @(loc_8C0AD510,pc),r0  ; r0 set to 0x8C0AD510
	fmov.s @r0,fr0 ; r0 ??	
	float fpul,fr3
	fmac fr0,fr3,fr2
	fmov.s @r8,fr3 ; r3 ??? bc r8 is ???	
	fadd fr2,fr3
	fmov.s fr3,@r8
	mov 0x38,r8 ; r8 set to 0x38
	jsr @r13
	add r14,r8 ; r8 ??? bc r14 is ???	
	and 0x7F,r0
	lds r0,fpul
	mova @(loc_8C0AD514,pc),r0  ; r0 set to 0x8C0AD514
	fmov.s @r0,fr3
	mova @(loc_8C0AD518,pc),r0  ; r0 set to 0x8C0AD518
	fmov.s @r0,fr0 ; r0 ??	
	float fpul,fr2
	fmac fr0,fr2,fr3
	fmov.s @r8,fr2
	fadd fr3,fr2
	jsr @r13
	fmov.s fr2,@r8
	mov.l @(loc_8C0AD51C,pc),r1 ; r1 set to 0x8C157B50
	and 0x03,r0
	shll2 r0
	fmov.s @(r0,r1),fr3
	mov 0x60,r0 ; r0 set to 0x60
	jsr @r13
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @(loc_8C0AD520,pc),r1 ; r1 set to 0x8C157B4c
	and 0x03,r0
	mov.l @(loc_8C0AD500,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x17,r5 ; r5 set to 0x17
	mov.l @r15+,r8
	mov r14,r4
	mov.b @(r0,r1),r6
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
	extu.b r6,r6
	jmp @r3
	mov.l @r15+,r14

loc_8C0AD448:
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r3
	mov.l r4,@-r15
	mov.b @(r0,r3),r2
	mov.l @(loc_8C0AD524,pc),r0 ; r0 set to 0x8C157B60
	extu.b r2,r2
	shll2 r2
	mov.l @(r0,r2),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0AD45C:
	mov r4,r3
	mov.l @(loc_8C0AD528,pc),r1 ; r1 set to 0x8C157B78
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0AD46E:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0ad484
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x04,r0
	mov.w r0,@(0x1E,r4)

loc_8C0AD484:
	rts
	nop

;----------------------------------------------
loc_8C0AD488:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1 ; r1 set to 0x5c
	mov.l r13,@-r15
	add r14,r1 ; r1 ??? bc r14 is ???	
	mov.w @(loc_8C0AD4FC,pc),r13 ; r13 set to 0xCc
	mov 0x34,r0 ; r0 set to 0x34
	sts.l pr,@-r15
	fmov.s @(r0,r14),fr2
	add r14,r13 ; r13 ??? bc r14 is ???	
	fmov.s @r1,fr3
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
	fmov.s @r1,fr3
	fmov.s @(r0,r14),fr2
	fadd fr3,fr2
	mov.l @(loc_8C0AD52C,pc),r3 ; r3 set to 0x8C034DEe
	fmov.s fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(0x1E,r14),r0
	add 0xFF,r0 ; r0 set to 0x5f
	mov.w r0,@(0x1E,r14)
	exts.w r0,r0 ; r0 ??	
	tst r0,r0
	bf loc_8C0AD56a
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r2
	tst r2,r2
	bt loc_8C0AD530
	mov.b @(0x04,r14),r0
	mov 0x00,r4 ; r4 set to 0x00
	add 0x01,r0 ; r0 set to 0x22
	mov.b r0,@(0x04,r14)
	mov r4,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0AD4FA,pc),r0 ; r0 set to 0x12c
	bra loc_8C0AD56a
	mov.b r4,@(r0,r14)

;##############################################
loc_8C0AD4FA:
	#data 0x012c
loc_8C0AD4FC:
	#data 0x00Cc
	#align4

loc_8C0AD500:
	#data bank03.loc_8c034e8c
loc_8C0AD504:
	#data 0x434DB6Db
loc_8C0AD508:
	#data bank03.loc_8c03319e
loc_8C0AD50C:
	#data 0xC2555555;negative CpsXScale
loc_8C0AD510:
	#data work.CpsXScale
loc_8C0AD514:
	#data 0xC3092492;negative CpsYScale
loc_8C0AD518:
	#data work.CpsYScale
loc_8C0AD51C:
	#data bank15.loc_8c157b50
loc_8C0AD520:
	#data bank15.loc_8c157b4c
loc_8C0AD524:
	#data bank15.loc_8c157b60
loc_8C0AD528:
	#data bank15.loc_8c157b78
loc_8C0AD52C:
	#data bank03.loc_8c034dee

;----------------------------------------------
loc_8C0AD530:
	mov.b @(0x05,r14),r0
	mov 0x01,r3 ; r3 set to 0x01
	mov 0x0D,r2 ; r2 set to 0x0d
	add 0x01,r0
	mov.b r0,@(0x05,r14)
	mov 0x15,r5 ; r5 set to 0x15
	mov.w @(loc_8C0AD672,pc),r0 ; r0 set to 0x12c
	mov 0x0F,r6 ; r6 set to 0x0f
	mov.b r3,@(r0,r14)
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r2,@(r0,r14)
	mov 0x04,r0 ; r0 set to 0x04
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0AD678,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s fr3,@(r0,r14)
	mov 0x08,r0 ; r0 set to 0x08
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r14,r4
	mov 0x00,r6 ; r6 set to 0x00
	mov 0x01,r5 ; r5 set to 0x01
	mov.l @r15+,r13
	bra loc_8C0ACF4c
	mov.l @r15+,r14

loc_8C0AD56A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AD572:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x14,r14),r4
	mov.b @(0x05,r4),r0
	tst r0,r0
	bf/s loc_8C0AD5Aa
	mov 0x00,r13 ; r13 set to 0x00
	mov.l @(loc_8C0AD67C,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0AD674,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0AD5Ba
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov 0x00,r6 ; r6 set to 0x00
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x05,r14)
	mov 0x02,r5 ; r5 set to 0x02
	mov.w @(loc_8C0AD674,pc),r0 ; r0 set to 0x141
	mov.b r13,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
	bra loc_8C0ACF4c
	mov.l @r15+,r14

loc_8C0AD5AA:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0AD672,pc),r0 ; r0 set to 0x12c
	mov.b r13,@(r0,r14)

loc_8C0AD5BA:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AD5C2:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x14,r14),r4
	mov.b @(0x05,r4),r0
	tst r0,r0
	bf/s loc_8C0AD61e
	mov 0x00,r13 ; r13 set to 0x00
	mov.l @(loc_8C0AD67C,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0AD674,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0AD62e
	mov.b @(0x05,r14),r0
	mov 0x03,r5 ; r5 set to 0x03
	mov 0x00,r6 ; r6 set to 0x00
	add 0x01,r0 ; r0 set to 0x142
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0AD674,pc),r0 ; r0 set to 0x141
	mov.b r13,@(r0,r14)
	mov 0x3E,r0 ; r0 set to 0x3e
	mov.w r0,@(0x1E,r14)
	bsr loc_8C0ACF4c
	mov r14,r4
	mov 0x04,r5 ; r5 set to 0x04
	mov 0x00,r6 ; r6 set to 0x00
	bsr loc_8C0ACF4c
	mov r14,r4
	mov 0x03,r5 ; r5 set to 0x03
	mov 0x01,r6 ; r6 set to 0x01
	bsr loc_8C0ACF4c
	mov r14,r4
	mov 0x04,r5 ; r5 set to 0x04
	mov 0x01,r6 ; r6 set to 0x01
	bsr loc_8C0ACF4c
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0AD680,pc),r3 ; r3 set to 0x8C04223a
	mov r14,r4
	mov 0x4C,r5 ; r5 set to 0x4c
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
	jmp @r3
	mov.l @r15+,r14

loc_8C0AD61E:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0AD672,pc),r0 ; r0 set to 0x12c
	mov.b r13,@(r0,r14)

loc_8C0AD62E:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AD636:
	mov.w @(0x1E,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1E,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0ad654
	mov.b @(0x4,r4),r0
	mov 0x00,r5
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x5,r4)
	mov.w @(0x1E,PC),r0
	mov.b r5,@(r0,r4)

loc_8C0AD654:
	rts
	nop

;----------------------------------------------
loc_8C0AD658:
	mov.l @(0x18,r4),r5
	mov.b @(0x4,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0ad66e
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x4,PC),r0
	mov.b r3,@(r0,r4)

loc_8C0AD66E:
	rts
	nop

;----------------------------------------------
loc_8C0AD672:
	#data 0x012c
loc_8C0AD674:
	#data 0x0141
	#align4

loc_8C0AD678:
	#data bank03.loc_8c034e8c
loc_8C0AD67C:
	#data bank03.loc_8c034dee
loc_8C0AD680:
	#data bank04.loc_8c04223a

;==============================================
loc_8C0AD684:
	mov.l @(0x18,r4),r5
	mov.b @(0x4,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0ad6a0
	mov.b @(0x4,r4),r0
	mov 0x00,r5
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov r5,r0
	nop
	mov.b r0,@(0x5,r4)
	mov.w @(0x112,PC),r0
	mov.b r5,@(r0,r4)

loc_8C0AD6A0:
	rts
	nop

;----------------------------------------------
loc_8C0AD6A4:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf/s loc_8C0AD6Dc
	mov 0x00,r13 ; r13 set to 0x00
	mov.l @(loc_8C0AD7BC,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	mov.l @(loc_8C0AD7C0,pc),r3 ; r3 set to 0x8C045748
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0AD7B4,pc),r0 ; r0 set to 0x141
	mov.b @(r0,r14),r2 ; r2 ??? bc r14 is ???	
	tst r2,r2
	bt loc_8C0AD6Ec
	mov.b r13,@(r0,r14)
	mov r14,r4
	lds.l @r15+,pr
	mov 0x00,r6 ; r6 set to 0x00
	mov 0x05,r5 ; r5 set to 0x05
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
	bra loc_8C0AD010
	mov.l @r15+,r14

loc_8C0AD6DC:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x05,r14)
	mov.w @(loc_8C0AD7B2,pc),r0 ; r0 set to 0x12c
	mov.b r13,@(r0,r14)

loc_8C0AD6EC:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AD6F4:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.w @(0x1C,r14),r0
	tst r0,r0
	bf/s loc_8C0AD70a
	mov.l @(0x18,r14),r4
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	bra loc_8C0AD754
	mov.w r0,@(0x1C,r14)

loc_8C0AD70A:
	mov.b @(0x04,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8C0AD74e
	mov.w @(loc_8C0AD7B2,pc),r0 ; r0 set to 0x12c
	mov 0x01,r2 ; r2 set to 0x01
	mov.l @(loc_8C0AD7C4,pc),r5 ; r5 set to 0x8C26A518
	mov.b r2,@(r0,r14)
	mova @(loc_8C0AD7C8,pc),r0  ; r0 set to 0x8C0AD7C8
	fmov.s @r0,fr4
	mov.w @(loc_8C0AD7B6,pc),r0 ; r0 set to 0x94
	fmov.s @(r0,r5),fr3
	fcmp/gt fr4,fr3
	bf loc_8C0AD736
	mova @(loc_8C0AD7CC,pc),r0  ; r0 set to 0x8C0AD7Cc
	fmov.s @r0,fr3
	mov.w @(loc_8C0AD7B8,pc),r0 ; r0 set to 0x90
	fmov.s @(r0,r5),fr2 ; r2 ??	
	mov 0x38,r0 ; r0 set to 0x38
	fadd fr3,fr2
	bra loc_8C0AD73e
	fmov.s fr2,@(r0,r14)

loc_8C0AD736:
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr3
	fadd fr4,fr3
	fmov.s fr3,@(r0,r14)

loc_8C0AD73E:
	mov.l @(loc_8C0AD7BC,pc),r3 ; r3 set to 0x8C034DEE, r3 set to 0x8C034DEe
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0AD7C0,pc),r2 ; r2 set to 0x8C045748, r2 set to 0x8C045748
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0AD74E:
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)

loc_8C0AD754:
	mov.w @(loc_8C0AD7B2,pc),r0 ; r0 set to 0x12C, r0 set to 0x12c
	mov 0x00,r3 ; r3 set to 0x00, r3 set to 0x00
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AD760:
	mov 0x60,r1
	add r4,r1
	mov 0x38,r0
	fmov @r1,fr3
	fmov @(r0,r4),fr2
	mov 0x6C,r1
	add r4,r1
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x60,r0
	fmov @(r0,r4),fr2
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov.l @(0x18,r4),r5
	mov.b @(0x4,r5),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0ad792
	mov.b @(0x4,r4),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r4)
	mov.w @(0x20,PC),r0
	mov.b r3,@(r0,r4)

loc_8C0AD792:
	rts
	nop

;----------------------------------------------
loc_8C0AD796:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0AD7B2,pc),r0 ; r0 set to 0x12c
	mov.b r3,@(r0,r4)
	mov 0x20,r0 ; r0 set to 0x20
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8C0AD7D4
	mov.l @(loc_8C0AD7D0,pc),r2 ; r2 set to 0x8C04223a
	jmp @r2
	mov 0x3A,r5

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0AD7B2:
	#data 0x012c
loc_8C0AD7B4:
	#data 0x0141
loc_8C0AD7B6:
	#data 0x0094
loc_8C0AD7B8:
	#data 0x0090
	#align4

loc_8C0AD7BC:
	#data bank03.loc_8c034dee
loc_8C0AD7C0:
	#data bank04.loc_8c045748
loc_8C0AD7C4:
	#data 0x8C26A518
loc_8C0AD7C8:
	#data 0x43F00000
loc_8C0AD7CC:
	#data 0xC3F00000
loc_8C0AD7D0:
	#data bank04.loc_8c04223a

;==============================================
loc_8C0AD7D4:
	rts
	nop

;----------------------------------------------
loc_8C0AD7D8:
	mov.l @(loc_8C0AD86C,pc),r3 ; r3 set to 0x8C0450C0
	jmp @r3
	nop

loc_8C0AD7DE:
	mov.w @(loc_8C0AD864,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0AD864,pc),r0 ; r0 set to 0xDc
	sts.l pr,@-r15
	mov.l @(0x18,r4),r2
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0AD870,pc),r3 ; r3 set to 0x8C129560
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0AD866,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0AD868,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0AD874,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x20,r2 ; r2 set to 0x20
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r3,@(r0,r4)
	mov 0x24,r3 ; r3 set to 0x24
	mov.w @(loc_8C0AD86A,pc),r0 ; r0 set to 0x13d
	mov.b r2,@(r0,r4)
	add 0xFF,r0 ; r0 set to 0x13c
	mov.b r2,@(r0,r4)
	add 0x03,r0 ; r0 set to 0x13f
	mov.b r3,@(r0,r4)
	add 0xFF,r0 ; r0 set to 0x13e
	mov 0x0B,r2 ; r2 set to 0x0b
	mov.b r3,@(r0,r4)
	mov r3,r0 ; r0 set to 0x24
	nop
	lds.l @r15+,pr
	rts
	mov.b r2,@(r0,r4)

;----------------------------------------------
loc_8C0AD860:
	rts
	nop

;----------------------------------------------
loc_8C0AD864:
	#data 0x00Dc
loc_8C0AD866:
	#data 0x012c
loc_8C0AD868:
	#data 0x01A3
loc_8C0AD86A:
	#data 0x013d
	#align4

loc_8C0AD86C:
	#data bank04.loc_8c0450C0
loc_8C0AD870:
	#data bank12.loc_8c129560
loc_8C0AD874:
	#data bank12.loc_8c1294C8

;==============================================
;unused
loc_8c0ad878:
	mov.l r14,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov r4,r14
	mov r5,r0
	nop
	mov.l @(0xFC,PC),r3
	mov.b r0,@(0x4,r15)
	mov.b r6,@r15
	mov 0x01,r6
	mov r6,r5
	jsr @r3
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ad8cc
	mov r0,r4
	mov 0x34,r0
	mov.l @(0xEC,PC),r3
	mov 0x20,r1
	mov.w @(0xDA,PC),r5
	mov.l r3,@(0x10,r4)
	add r4,r1
	fmov @(r0,r14),fr3
	add r4,r5
	mov.w @(0xD2,PC),r3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov.l r14,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov.b @(0x4,r15),r0
	mov.b r0,@r1
	mov 0x21,r0
	mov.b @r15,r3
	mov.b r3,@(r0,r4)
	mov.w @(0xB6,PC),r0
	mov.l @(r0,r14),r2
	mov.l r2,@r5

loc_8c0ad8cc:
	mov r4,r0
	nop
	add 0x08,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AD8D8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov 0x09,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov 0x08,r10
	mov.l r9,@-r15
	sts.l pr,@-r15
	mov.w @(0x8C,PC),r11
	mov.l @(0x90,PC),r9

loc_8C0AD8F2:
	mov 0x01,r6
	mov r6,r5
	jsr @r9
	mov 0x00,r4
	tst r0,r0
	bt.s loc_8c0ad932
	mov r0,r4
	mov 0x34,r0
	mov.w @(0x76,PC),r6
	mov.w @(0x74,PC),r5
	add r14,r6
	mov.l @(0x7C,PC),r2
	add r4,r5
	mov.l r2,@(0x10,r4)
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r14),fr3
	fmov fr3,@(r0,r4)
	mov.l @(0x18,r14),r3
	mov.l r3,@(0x18,r4)
	mov.b @(0x1,r14),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r11,@(r0,r4)
	mov 0x20,r0
	mov.b r12,@(r0,r4)
	mov 0x21,r0
	mov.b r13,@(r0,r4)
	mov.l @r6,r3
	mov.l r3,@r5
	mov.l r14,@(0x14,r4)

loc_8C0AD932:
	add 0x01,r13
	cmp/ge r10,r13
	bf loc_8c0ad8f2
	mov r4,r0
	nop
	lds.l @r15+,pr
	mov.l @r15+,r9
	mov.l @r15+,r10
	mov.l @r15+,r11
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AD94C:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0AD98C,pc),r3 ; r3 set to 0x8C0AFC66
	jsr @r3
	mov r4,r14
	mov 0x20,r0 ; r0 set to 0x20
	mov r14,r4
	mov.b @(r0,r14),r2
	mov.l @(loc_8C0AD990,pc),r0 ; r0 set to 0x8C157B8c
	extu.b r2,r2
	lds.l @r15+,pr
	shll2 r2
	mov.l @(r0,r2),r3 ; r3 ??? bc r2 is ???	
	jmp @r3
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AD96A:
	mov r4,r3
	mov.l @(loc_8C0AD994,pc),r1 ; r1 set to 0x8C157BBc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ad97c:
	#data 0x00cc
loc_8c0ad97e:
	#data 0x3504
loc_8c0ad980:
	#data 0x020c
	#align4

loc_8C0AD984:
	#data bank04.loc_8c044F12
loc_8C0AD988:
	#data loc_8c0aD94c
loc_8C0AD98C:
	#data loc_8c0aFC66
loc_8C0AD990:
	#data bank15.loc_8c157b8c
loc_8C0AD994:
	#data bank15.loc_8c157bBc

;==============================================
loc_8C0AD998:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov r13,r0 ; r0 set to 0x00
	nop
	mov.l @(loc_8C0ADAAC,pc),r3 ; r3 set to 0x8C0AFBE4
	mov.b r0,@(0x05,r14)
	mov.b r0,@(0x06,r14)
	mov.l @(0x18,r14),r12
	jsr @r3
	mov r14,r4
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0ADAB0,pc),r3 ; r3 set to 0x8C0AF80c
	fmov.s @(r0,r12),fr3 ; r3 ??? bc r12 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r12),fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0ADAA0,pc),r0 ; r0 set to 0x1A1
	mov 0x12,r2 ; r2 set to 0x12
	mov.l @(loc_8C0ADAB4,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??	
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_8C0ADAB8,pc),r2 ; r2 set to 0x8C0AF848
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r6 ; r6 set to 0x00
	mov.l @(loc_8C0ADABC,pc),r3 ; r3 set to 0x8C034E8c
	mov r14,r4
	mov 0x19,r5 ; r5 set to 0x19
	mov.l @r15+,r12
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0ADA08:
	mov.w @(loc_8C0ADAA2,pc),r0 ; r0 set to 0x19f
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0ADA20
	lds.l @r15+,pr
	mov.l @(loc_8C0ADAC0,pc),r3 ; r3 set to 0x8C0AF96a
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0ADA20:
	mov.l @(loc_8C0ADAC4,pc),r3 ; r3 set to 0x8C0AF9A2
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C0ADA34
	lds.l @r15+,pr
	mov.l @(loc_8C0ADAC8,pc),r3 ; r3 set to 0x8C0AF994
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0ADA34:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0ADACC,pc),r1 ; r1 set to 0x8C157BCc
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0ADA46:
	mov.w @(0x5A,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0ada90
	mov.w @(0x50,PC),r0
	mov.l @(r0,r14),r4
	mov.b @(0x3,r4),r0
	tst r0,r0
	bf loc_8c0ada88
	mov.w @(0x48,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c0ada88
	mov.b @(0x1,r4),r0
	mov 0x18,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c0ada78
	mov.b @(0x1,r4),r0
	mov 0x1A,r2
	extu.b r0,r0
	cmp/gt r2,r0
	bf loc_8c0ada88

loc_8C0ADA78:
	mov.w @(0x28,PC),r0
	mov.b @(r0,r14),r0
	tst 0x7F,r0
	bf loc_8c0ada88
	mov.l @(0x4C,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0ADA88:
	mov.l @(0x3C,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0ADA90:
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(0x3C,PC),r1
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0ADAA0:
	#data 0x01A1
loc_8C0ADAA2:
	#data 0x019f
loc_8c0adaa4:
	#data 0x019e
loc_8c0adaa6:
	#data 0x01b0
loc_8c0adaa8:
	#data 0x0411
	#align4

loc_8C0ADAAC:
	#data loc_8c0aFBE4
loc_8C0ADAB0:
	#data loc_8c0aF80c
loc_8C0ADAB4:
	#data 0x8C2896B0
loc_8C0ADAB8:
	#data loc_8c0aF848
loc_8C0ADABC:
	#data bank03.loc_8c034e8c
loc_8C0ADAC0:
	#data loc_8c0aF96a
loc_8C0ADAC4:
	#data loc_8c0aF9A2
loc_8C0ADAC8:
	#data loc_8c0aF994
loc_8C0ADACC:
	#data bank15.loc_8c157bCc
loc_8C0ADAD0:
	#data loc_8c0aF922
loc_8C0ADAD4:
	#data bank15.loc_8c157bD4

;==============================================
loc_8C0ADAD8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0x13C,PC),r0
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8c0adaf6
	mov.w @(0x130,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x02,r0
	bt loc_8c0adb02

loc_8C0ADAF6:
	lds.l @r15+,pr
	mov.l @(0x12C,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0ADB02:
	mov 0x5C,r1
	mov.l @(0x124,PC),r3
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
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov.w @(0xDA,PC),r0
	fmov @(r0,r13),fr2
	fcmp/gt fr3,fr2
	bf.s loc_8c0adb5c
	fldi0 fr4
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)

loc_8C0ADB5C:
	mov.w @(0xC4,PC),r0
	mov.b @(r0,r14),r3
	cmp/pz r3
	bf loc_8c0adb8e
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr4,@(r0,r14)
	mova @(0xBC,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xB8,PC),r0
	fmov @r0,fr4
	mov.w @(0xA4,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c0adb8a
	mova @(0xB0,PC),r0
	fmov @r0,fr4

loc_8C0ADB8A:
	mov 0x5C,r0
	fmov fr4,@(r0,r14)

loc_8C0ADB8E:
	lds.l @r15+,pr
	mov.l @(0xA8,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0ADB9A:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l r13,@-r15
	mov 0x34,r0
	add r14,r1
	sts.l pr,@-r15
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x68,r1
	add r14,r1
	mov.l @(0x18,r14),r13
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
	mov.l @(0x64,PC),r3
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(0x60,PC),r2
	jsr @r2
	mov r14,r4
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov.w @(0x32,PC),r0
	fmov @(r0,r13),fr2
	fcmp/gt fr3,fr2
	bf.s loc_8c0adc06
	mov r14,r4
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x6C,r0
	fldi0 fr3
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov fr3,@(r0,r14)

loc_8C0ADC06:
	mov.l @(0x24,PC),r3
	jsr @r3
	nop
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0adc48
	lds.l @r15+,pr
	mov.l @(0x10,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0adc1e:
	#data 0x0159
loc_8c0adc20:
	#data 0x0158
loc_8c0adc22:
	#data 0x041c
loc_8c0adc24:
	#data 0x0140
loc_8c0adc26:
	#data 0x01d2
	#align4

loc_8C0ADC28:
	#data loc_8c0aF994
loc_8C0ADC2C:
	#data bank03.loc_8c034dee
loc_8C0ADC30:
	#data 0xC0092492
loc_8C0ADC34:
	#data 0x40D55555
loc_8C0ADC38:
	#data 0xC0D55555
loc_8C0ADC3C:
	#data bank04.loc_8c045748
loc_8C0ADC40:
	#data loc_8c0aF6D6
loc_8C0ADC44:
	#data loc_8c0aF734

;==============================================
loc_8C0ADC48:
	lds.l @r15+,pr
	mov.l @(0x110,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0ADC54:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r12
	mov.w @(0xF0,PC),r3
	mov.w @(0xEC,PC),r4
	add r12,r3
	mov.l r3,@r15
	add r14,r4
	mov.l @(0xF0,PC),r3
	mov.l @r4,r13
	jsr @r3
	mov r14,r4
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c0add20
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mova @(0xE0,PC),r0
	fmov @r0,fr4
	mov 0x34,r0
	fmov @(r0,r14),fr5
	fmov @(r0,r13),fr3
	fsub fr3,fr5
	fldi0 fr3
	fcmp/gt fr3,fr5
	bf loc_8c0adc96
	mova @(0xD4,PC),r0
	fmov @r0,fr4

loc_8C0ADC96:
	fadd fr4,fr5
	fldi0 fr3
	fmov fr5,fr4
	fcmp/gt fr4,fr3
	bf loc_8c0adca2
	fneg fr4

loc_8C0ADCA2:
	mov.b @(0x1,r13),r0
	mov.l @(0xC4,PC),r4
	extu.b r0,r0
	shll2 r0
	mov r4,r5
	shll r0
	add r5,r0
	fmov @r0,fr3
	fcmp/gt fr3,fr4
	bf.s loc_8c0adcc4
	fldi0 fr3
	mov.b @(0x1,r13),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	add r0,r5
	fmov @r5,fr4

loc_8C0ADCC4:
	fcmp/gt fr5,fr3
	bf.s loc_8c0adccc
	mov 0x5C,r0
	fneg fr4

loc_8C0ADCCC:
	fmov fr4,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mov 0x04,r1
	fmov @(r0,r13),fr3
	mov.b @(0x1,r13),r0
	fsub fr3,fr2
	extu.b r0,r0
	shll2 r0
	shll r0
	add r4,r0
	fmov fr2,fr4
	fmov @(r0,r1),fr3
	fsub fr3,fr4
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c0add02
	mov.b @(0x1,r13),r0
	extu.b r0,r0
	shll2 r0
	shll r0
	add r0,r4
	mov 0x04,r0
	fmov @(r0,r4),fr2
	mov 0x60,r0
	bra loc_8c0add06
	fmov fr2,@(r0,r14)

loc_8C0ADD02:
	mov 0x60,r0
	fmov fr4,@(r0,r14)

loc_8C0ADD06:
	mov.l @(0x68,PC),r3
	jsr @r3
	mov r14,r4
	mov r14,r4
	mov 0x19,r5
	mov 0x01,r6
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x5C,PC),r2
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0ADD20:
	mov.l @r15,r2
	mov.b @(0x3,r2),r0
	tst r0,r0
	bt loc_8c0adda2
	mov.w @(0x2C,PC),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bf loc_8c0adda2
	mov.l @(0x44,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0add44
	mov.l @(0x40,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c0add84

loc_8C0ADD44:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0x34,PC),r3
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0add54:
	#data 0x00cc
loc_8c0add56:
	#data 0x02a4
loc_8c0add58:
	#data 0x0411
	#align4

loc_8C0ADD5C:
	#data bank04.loc_8c045748
loc_8C0ADD60:
	#data loc_8c0aFB80
loc_8C0ADD64:
	#data 0xC1D55555
loc_8C0ADD68:
	#data 0x41D55555
loc_8C0ADD6C:
	#data bank15.loc_8c158124
loc_8C0ADD70:
	#data loc_8c0aF5Dc
loc_8C0ADD74:
	#data bank03.loc_8c034e8c
loc_8C0ADD78:
	#data loc_8c0aF6Ac
loc_8C0ADD7C:
	#data loc_8c0aF770
loc_8C0ADD80:
	#data loc_8c0aF96a

;==============================================
loc_8C0ADD84:
	mov.l @(0xFC,PC),r3
	jsr @r3
	mov r14,r4
	mov.l @(0xFC,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0addb2
	mov.l @(0xF4,PC),r2
	mov r13,r5
	jsr @r2
	mov r14,r4
	tst r0,r0
	bf loc_8c0addb2


loc_8C0ADDA2:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(0xE4,PC),r2
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0ADDB2:
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @r15+,r12
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0ADDBE:
	mov r4,r3
	mov.l @(loc_8C0ADE94,pc),r1 ; r1 set to 0x8C157BDc
	mov.l r4,@-r15
	mov.b @(0x05,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;----------------------------------------------
loc_8C0ADDD0:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	mov.w @(0xA6,PC),r4
	tst r0,r0
	bf.s loc_8c0ade00
	add r14,r4
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.b @(0x7,r4),r0
	cmp/pz r0
	bf loc_8c0addf2
	mov.l @(0xA8,PC),r2
	jsr @r2
	mov r14,r4

loc_8C0ADDF2:
	mov.l @(0xA8,PC),r3
	mov 0x19,r5
	mov 0x03,r6
	jsr @r3
	mov r14,r4
	bra loc_8c0ade16
	nop

loc_8C0ADE00:
	mov.l @(0x84,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0ade16
	lds.l @r15+,pr
	mov.l @(0x90,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0ADE16:
	lds.l @r15+,pr
	mov.l @(0x88,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0ADE20:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	mov.w @(0x56,PC),r4
	tst r0,r0
	bf.s loc_8c0ade50
	add r14,r4
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.b @(0x7,r4),r0
	cmp/pz r0
	bf loc_8c0ade42
	mov.l @(0x58,PC),r2
	jsr @r2
	mov r14,r4

loc_8C0ADE42:
	mov.l @(0x58,PC),r3
	mov 0x19,r5
	mov 0x02,r6
	jsr @r3
	mov r14,r4
	bra loc_8c0ade66
	nop

loc_8C0ADE50:
	mov.l @(0x34,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0ade66
	lds.l @r15+,pr
	mov.l @(0x40,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0ADE66:
	lds.l @r15+,pr
	mov.l @(0x38,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

;==============================================
loc_8C0ADE70:
	mov r4,r3
	mov.l @(loc_8C0ADEA8,pc),r1 ; r1 set to 0x8C157BE4
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ade82:
	#data 0x00Cc
	#align4

loc_8C0ADE84:
	#data loc_8c0aF5Dc
loc_8C0ADE88:
	#data bank03.loc_8c034dee
loc_8C0ADE8C:
	#data loc_8c0aF598
loc_8C0ADE90:
	#data loc_8c0aF994
loc_8C0ADE94:
	#data bank15.loc_8c157bDc
loc_8C0ADE98:
	#data loc_8c0aFB9c
loc_8C0ADE9C:
	#data bank03.loc_8c034e8c
loc_8C0ADEA0:
	#data loc_8c0aFBB0
loc_8C0ADEA4:
	#data loc_8c0aFB7c
loc_8C0ADEA8:
	#data bank15.loc_8c157bE4

;==============================================
loc_8C0ADEAC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov r13,r0 ; r0 set to 0x00
	nop
	mov.l @(loc_8C0ADFD0,pc),r3 ; r3 set to 0x8C0AFBE4
	mov.b r0,@(0x05,r14)
	mov.b r0,@(0x06,r14)
	mov.l @(0x18,r14),r12
	jsr @r3
	mov r14,r4
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0ADFD4,pc),r3 ; r3 set to 0x8C0AF80c
	fmov.s @(r0,r12),fr3 ; r3 ??? bc r12 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r12),fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0ADFC6,pc),r0 ; r0 set to 0x1A1
	mov 0x14,r2 ; r2 set to 0x14
	mov.l @(loc_8C0ADFD8,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??	
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_8C0ADFDC,pc),r2 ; r2 set to 0x8C0AF848
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r6 ; r6 set to 0x00
	mov.l @(loc_8C0ADFE0,pc),r3 ; r3 set to 0x8C034E8c
	mov r14,r4
	mov 0x19,r5 ; r5 set to 0x19
	mov.l @r15+,r12
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
	jmp @r3
	mov.l @r15+,r14

loc_8C0ADF1C:
	mov.w @(loc_8C0ADFC8,pc),r0 ; r0 set to 0x19f
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0ADF34
	lds.l @r15+,pr
	mov.l @(loc_8C0ADFE4,pc),r3 ; r3 set to 0x8C0AF96a
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0ADF34:
	mov.l @(loc_8C0ADFE8,pc),r3 ; r3 set to 0x8C0AF9A2
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C0ADF48
	lds.l @r15+,pr
	mov.l @(loc_8C0ADFEC,pc),r3 ; r3 set to 0x8C0AF994
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0ADF48:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0ADFF0,pc),r1 ; r1 set to 0x8C157BF4
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0ADF5A:
	mov.w @(0x6C,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0adfa0
	mov.w @(0x60,PC),r0
	mov.l @(r0,r14),r4
	mov.b @(0x3,r4),r0
	tst r0,r0
	bf loc_8c0adfaa
	mov.w @(0x58,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c0adfaa
	mov.b @(0x1,r4),r0
	mov 0x18,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c0adf8e
	mov.b @(0x1,r4),r0
	mov 0x1A,r2
	extu.b r0,r0
	cmp/gt r2,r0
	bf loc_8c0adfaa

loc_8C0ADF8E:
	mov.w @(0x38,PC),r0
	mov.b @(r0,r14),r0
	tst 0x7F,r0
	bf loc_8c0adfaa
	lds.l @r15+,pr
	mov.l @(0x58,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0ADFA0:
	mov.l @(0x54,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c0adfb4

loc_8C0ADFAA:
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0ADFB4:
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(0x40,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0ADFC6:
	#data 0x01A1
loc_8C0ADFC8:
	#data 0x019f
loc_8C0ADFCa:
	#data 0x019e
loc_8C0ADFcc:
	#data 0x01B0
loc_8C0ADFCe:
	#data 0x0411
	#align4

loc_8C0ADFD0:
	#data loc_8c0aFBE4
loc_8C0ADFD4:
	#data loc_8c0aF80c
loc_8C0ADFD8:
	#data 0x8C2896B0
loc_8C0ADFDC:
	#data loc_8c0aF848
loc_8C0ADFE0:
	#data bank03.loc_8c034e8c
loc_8C0ADFE4:
	#data loc_8c0aF96a
loc_8C0ADFE8:
	#data loc_8c0aF9A2
loc_8C0ADFEC:
	#data loc_8c0aF994
loc_8C0ADFF0:
	#data bank15.loc_8c157bF4
loc_8C0ADFF4:
	#data loc_8c0aF922
loc_8C0ADFF8:
	#data loc_8c0aFA8e
loc_8C0ADFFC:
	#data bank15.loc_8c157bFc

;==============================================
loc_8C0AE000:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l r13,@-r15
	add r14,r1
	fmov fr15,@-r15
	mov 0x34,r0
	sts.l pr,@-r15
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x68,r1
	add r14,r1
	mov.l @(0x18,r14),r13
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
	fmov @(r0,r14),fr3
	mov.w @(0xFE,PC),r0
	fmov @(r0,r13),fr2
	fcmp/gt fr3,fr2
	bf.s loc_8c0ae060
	fldi0 fr15
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov fr15,@(r0,r14)
	mov 0x6C,r0
	fmov fr15,@(r0,r14)

loc_8C0AE060:
	mov.l @(0xEC,PC),r3
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0ae0a0
	mov.b @(0x6,r14),r0
	mov 0x19,r5
	mov.l @(0xE0,PC),r3
	mov 0x01,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4
	mov 0x6C,r0
	fmov fr15,@(r0,r14)
	mov 0x68,r0
	fmov fr15,@(r0,r14)
	mova @(0xD0,PC),r0
	fmov @r0,fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mova @(0xCC,PC),r0
	fmov @r0,fr4
	mov.w @(0xB8,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf loc_8c0ae09c
	mova @(0xC4,PC),r0
	fmov @r0,fr4

loc_8C0AE09C:
	mov 0x5C,r0
	fmov fr4,@(r0,r14)

loc_8C0AE0A0:
	lds.l @r15+,pr
	mov.l @(0xC0,PC),r3
	mov r14,r4
	fmov @r15+,fr15
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0AE0AE:
	mov.l r14,@-r15
	mov r4,r14
	mov 0x5C,r1
	mov.l r13,@-r15
	mov 0x34,r0
	add r14,r1
	sts.l pr,@-r15
	fmov @(r0,r14),fr2
	fmov @r1,fr3
	mov 0x68,r1
	add r14,r1
	mov.l @(0x18,r14),r13
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
	mov.l @(0x78,PC),r3
	fmov fr2,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov 0x38,r0
	fmov @(r0,r14),fr3
	mov.w @(0x4C,PC),r0
	fmov @(r0,r13),fr2
	fcmp/gt fr3,fr2
	bf.s loc_8c0ae114
	mov r14,r4
	fmov @(r0,r13),fr3
	mov 0x38,r0
	fldi0 fr4
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)

loc_8C0AE114:
	mov.l @(0x38,PC),r3
	jsr @r3
	nop
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0ae12c
	lds.l @r15+,pr
	mov.l @(0x48,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0AE12C:
	lds.l @r15+,pr
	mov.l @(0x34,PC),r3
	mov r14,r4
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0AE138:
	mov r4,r3
	mov.l @(loc_8C0AE170,pc),r1 ; r1 set to 0x8C157C04
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ae14a:
	#data 0x041c
loc_8c0ae14c:
	#data 0x01D2
	#align4

loc_8C0AE150:
	#data bank03.loc_8c034dee
loc_8C0AE154:
	#data bank03.loc_8c034e8c
loc_8C0AE158:
	#data 0xC0092492
loc_8C0AE15c:
	#data 0x40D55555
loc_8C0AE160:
	#data 0xC0D55555
loc_8C0AE164:
	#data bank04.loc_8c045748
loc_8C0AE168:
	#data loc_8c0aF6D6
loc_8C0AE16C:
	#data loc_8c0aF994
loc_8C0AE170:
	#data bank15.loc_8c157c04

;==============================================
loc_8C0AE174:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov r13,r0 ; r0 set to 0x00
	nop
	mov.l @(loc_8C0AE298,pc),r3 ; r3 set to 0x8C0AFBE4
	mov.b r0,@(0x05,r14)
	mov.b r0,@(0x06,r14)
	mov.l @(0x18,r14),r12
	jsr @r3
	mov r14,r4
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0AE29C,pc),r3 ; r3 set to 0x8C0AF80c
	fmov.s @(r0,r12),fr3 ; r3 ??? bc r12 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r12),fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.w @(loc_8C0AE28E,pc),r0 ; r0 set to 0x1A1
	mov 0x16,r2 ; r2 set to 0x16
	mov.l @(loc_8C0AE2A0,pc),r3 ; r3 set to 0x8C2896B0
	mov.b r2,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??	
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov.l @(loc_8C0AE2A4,pc),r2 ; r2 set to 0x8C0AF848
	jsr @r2
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(loc_8C0AE2A8,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x19,r5 ; r5 set to 0x19
	mov r14,r4
	mov 0x13,r6 ; r6 set to 0x13
	mov.l @r15+,r12
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0AE1E4:
	mov.w @(loc_8C0AE290,pc),r0 ; r0 set to 0x19f
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8C0AE1Fc
	lds.l @r15+,pr
	mov.l @(loc_8C0AE2AC,pc),r3 ; r3 set to 0x8C0AF96a
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0AE1FC:
	mov.l @(loc_8C0AE2B0,pc),r3 ; r3 set to 0x8C0AF9A2
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C0AE210
	lds.l @r15+,pr
	mov.l @(loc_8C0AE2B4,pc),r3 ; r3 set to 0x8C0AF994
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0AE210:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0AE2B8,pc),r1 ; r1 set to 0x8C157C14
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0AE222:
	mov.w @(0x6C,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0ae268
	mov.w @(0x60,PC),r0
	mov.l @(r0,r14),r4
	mov.b @(0x3,r4),r0
	tst r0,r0
	bf loc_8c0ae272
	mov.w @(0x58,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c0ae272
	mov.b @(0x1,r4),r0
	mov 0x18,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c0ae256
	mov.b @(0x1,r4),r0
	mov 0x1A,r2
	extu.b r0,r0
	cmp/gt r2,r0
	bf loc_8c0ae272

loc_8C0AE256:
	mov.w @(0x38,PC),r0
	mov.b @(r0,r14),r0
	tst 0x7F,r0
	bf loc_8c0ae272
	lds.l @r15+,pr
	mov.l @(0x58,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0AE268:
	mov.l @(0x54,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c0ae27c

loc_8C0AE272:
	lds.l @r15+,pr
	mov.l @(0x3C,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0AE27C:
	mov.b @(0x6,r14),r0
	mov r14,r4
	mov.l @(0x40,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0AE28E:
	#data 0x01A1
loc_8C0AE290:
	#data 0x019f
loc_8C0AE292:
	#data 0x019e
loc_8C0AE294:
	#data 0x01B0
loc_8C0AE296:
	#data 0x0411
	#align4

loc_8C0AE298:
	#data loc_8c0aFBE4
loc_8C0AE29C:
	#data loc_8c0aF80c
loc_8C0AE2A0:
	#data 0x8C2896B0
loc_8C0AE2A4:
	#data loc_8c0aF848
loc_8C0AE2A8:
	#data bank03.loc_8c034e8c
loc_8C0AE2AC:
	#data loc_8c0aF96a
loc_8C0AE2B0:
	#data loc_8c0aF9A2
loc_8C0AE2B4:
	#data loc_8c0aF994
loc_8C0AE2B8:
	#data bank15.loc_8c157c14
loc_8C0AE2BC:
	#data loc_8c0aF922
loc_8C0AE2C0:
	#data loc_8c0aFA8e
loc_8C0AE2C4:
	#data bank15.loc_8c157c1c

;==============================================
loc_8C0AE2C8:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.l @(0xE8,PC),r3
	jsr @r3
	mov.l @(0x18,r14),r13
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
	mov 0x5C,r0
	fmov @(r0,r14),fr4
	mov.w @(0xA0,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0ae31e
	fldi0 fr3
	fneg fr4

loc_8C0AE31E:
	fcmp/gt fr3,fr4
	bf loc_8c0ae34a
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mov.w @(0x8E,PC),r0
	fmov @(r0,r13),fr1
	fcmp/gt fr2,fr1
	bf.s loc_8c0ae340
	mov r14,r4
	fmov @(r0,r13),fr2
	mov 0x38,r0
	fmov fr3,fr4
	fmov fr2,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)

loc_8C0AE340:
	lds.l @r15+,pr
	mov.l @(0x7C,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0AE34A:
	mov.b @(0x6,r14),r0
	mov r14,r4
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov 0x00,r0
	mov.b r0,@(0x7,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0ae35e
	mov.l @r15+,r14

loc_8C0AE35E:
	mov.l r14,@-r15
	mov.l r13,@-r15
	fmov fr15,@-r15
	sts.l pr,@-r15
	add 0xF0,r15
	mov r4,r14
	mov.b @(0x7,r14),r0
	tst r0,r0
	bf loc_8c0ae3d8
	mov.b @(0x7,r14),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x7,r14)
	mova @(0x48,PC),r0
	fmov @r0,fr4
	mova @(0x48,PC),r0
	fmov @r0,fr5
	mov.w @(0x32,PC),r0
	mov.w @(r0,r14),r2
	xor r3,r2
	mov.w r2,@(r0,r14)
	exts.w r2,r2
	tst r2,r2
	bf loc_8c0ae396
	mova @(0x3C,PC),r0
	fmov @r0,fr4
	mova @(0x3C,PC),r0
	fmov @r0,fr5

loc_8C0AE396:
	mov 0x5C,r0
	mov.l @(0x38,PC),r3
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr5,@(r0,r14)
	mov 0x60,r0
	fldi0 fr4
	mov 0x19,r5
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	mov 0x14,r6
	jsr @r3
	mov r14,r4
	bra loc_8c0ae496
	nop

;##############################################
loc_8c0ae3b6:
	#data 0x0130
loc_8c0ae3b8:
	#data 0x041c
	#align4

loc_8C0AE3BC:
	#data bank03.loc_8c034dee
loc_8C0AE3C0:
	#data bank04.loc_8c045748
loc_8C0AE3C4:
	#data 0x40D55555
loc_8C0AE3C8:
	#data 0x3ED55555
loc_8C0AE3Cc:
	#data 0xC0D55555
loc_8C0AE3d0:
	#data 0xBED55555
loc_8C0AE3D4:
	#data bank03.loc_8c034e8c

;----------------------------------------------
loc_8C0AE3D8:
	mov.l @(0x18,r14),r13
	mov 0x34,r0
	mov r15,r5
	mov.l @(0x15C,PC),r3
	fmov @(r0,r13),fr3
	mov 0x04,r0
	mov r14,r4
	add 0x04,r5
	fmov fr3,@(r0,r15)
	mova @(0x14C,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	mov 0x08,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r15)
	jsr @r3
	add 0x34,r4
	mov r0,r4
	mova @(0x140,PC),r0
	fmov @r0,fr15
	shll r4
	mov 0x30,r0
	mov.l @(0x13C,PC),r3
	extu.b r4,r4
	sub r4,r0
	and 0x3F,r0
	shll8 r0
	shll2 r0
	mov.w r0,@r15
	jsr @r3
	mov.w @r15,r4
	fmul fr0,fr15
	mova @(0x12C,PC),r0
	fmov @r0,fr3
	mova @(0x12C,PC),r0
	fmov @r0,fr2
	mova @(0x12C,PC),r0
	fmov @r0,fr1
	mova @(0x12C,PC),r0
	fmul fr3,fr15
	fmov @r0,fr3
	mov 0x60,r0
	mov 0x5C,r1
	add r14,r1
	fdiv fr2,fr15
	fdiv fr1,fr15
	fmul fr3,fr15
	fmov fr15,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r14),fr0
	fmov @r1,fr2
	mov 0x68,r1
	add r14,r1
	fadd fr2,fr0
	fmov fr0,@(r0,r14)
	mov 0x5C,r0
	fmov @(r0,r14),fr0
	fmov @r1,fr2
	mov 0x60,r1
	add r14,r1
	fadd fr2,fr0
	fmov fr0,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r14),fr0
	fmov @r1,fr2
	mov 0x6C,r1
	add r14,r1
	fadd fr2,fr0
	fmov fr0,@(r0,r14)
	mov 0x60,r0
	fmov @(r0,r14),fr0
	fmov @r1,fr2
	fadd fr2,fr0
	fmov fr0,@(r0,r14)
	mov 0x34,r0
	fmov @(r0,r13),fr4
	fmov @(r0,r14),fr2
	mov.w @(0xBA,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0ae480
	fsub fr2,fr4
	fneg fr4

loc_8C0AE480:
	fldi0 fr3
	fcmp/gt fr4,fr3
	bf loc_8c0ae490
	mov.l @(0xD0,PC),r2
	jsr @r2
	mov r14,r4
	bra loc_8c0ae49c
	nop

loc_8C0AE490:
	mov.l @(0xC8,PC),r2
	jsr @r2
	mov r14,r4

loc_8C0AE496:
	mov.l @(0xC8,PC),r3
	jsr @r3
	mov r14,r4

loc_8C0AE49C:
	add 0x10,r15
	lds.l @r15+,pr
	fmov @r15+,fr15
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AE4A8:
	mov r4,r3
	mov.l @(loc_8C0AE564,pc),r1 ; r1 set to 0x8C157C24
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0AE4BA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov r13,r0 ; r0 set to 0x00
	nop
	mov.l @(loc_8C0AE568,pc),r3 ; r3 set to 0x8C0AFBE4
	mov.b r0,@(0x05,r14)
	mov.b r0,@(0x06,r14)
	mov.l @(0x18,r14),r12
	jsr @r3
	mov r14,r4
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0AE56C,pc),r3 ; r3 set to 0x8C0AF848
	fmov.s @(r0,r12),fr3 ; r3 ??? bc r12 is ???	
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r12),fr3
	fmov.s fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov.l @(loc_8C0AE570,pc),r2 ; r2 set to 0x8C0AF80c
	jsr @r2
	mov r14,r4
	mov.w @(loc_8C0AE534,pc),r0 ; r0 set to 0x1A1
	mov 0x13,r3 ; r3 set to 0x13
	mov 0x19,r5 ; r5 set to 0x19
	mov r14,r4
	mov.b r3,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	mov.l @(loc_8C0AE574,pc),r3 ; r3 set to 0x8C2896B0
	mov.l r13,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??	
	extu.b r0,r0 ; r0 set to 0xC4
	shll r0 ; r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x21,r0 ; r0 set to 0x21
	lds.l @r15+,pr
	mov.b @(r0,r14),r6
	mov.l @(loc_8C0AE578,pc),r0 ; r0 set to 0x8C157C34
	mov.l @r15+,r12
	extu.b r6,r6
	mov.l @(loc_8C0AE57C,pc),r2 ; r2 set to 0x8C034E8c
	mov.l @r15+,r13 ; r13 ??? bc r15 is ???	
	mov.b @(r0,r6),r6
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0AE532:
	#data 0x0130
loc_8C0AE534:
	#data 0x01A1
	#align4

loc_8C0AE538:
	#data 0x43892492
loc_8C0AE53C:
	#data bank03.loc_8c03362c
loc_8C0AE540:
	#data 0x48610000
loc_8C0AE544:
	#data bank11.loc_8c11E860
loc_8C0AE548:
	#data 0x447A0000
loc_8C0AE54c:
	#data 0x47F42400
loc_8C0AE550:
	#data 0x43800000
loc_8C0AE554:
	#data 0x40092492
loc_8C0AE558:
	#data loc_8c0aF994
loc_8C0AE55C:
	#data bank03.loc_8c034dee
loc_8C0AE560:
	#data bank04.loc_8c045748
loc_8C0AE564:
	#data bank15.loc_8c157c24
loc_8C0AE568:
	#data loc_8c0aFBE4
loc_8C0AE56C:
	#data loc_8c0aF848
loc_8C0AE570:
	#data loc_8c0aF80c
loc_8C0AE574:
	#data 0x8C2896B0
loc_8C0AE578:
	#data bank15.loc_8c157c34
loc_8C0AE57C:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0AE580:
	mov.l r14,@-r15
	sts.l pr,@-r15
	mov.l @(loc_8C0AE6A4,pc),r3 ; r3 set to 0x8C0AF636
	jsr @r3
	mov r4,r14
	tst r0,r0
	bt loc_8C0AE596
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0AE81c
	mov.l @r15+,r14

;==============================================
loc_8C0AE596:
	mov.l @(loc_8C0AE6A8,pc),r3 ; r3 set to 0x8C0AF9A2
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8C0AE5Aa
	lds.l @r15+,pr
	mov.l @(loc_8C0AE6AC,pc),r3 ; r3 set to 0x8C0AF994
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0AE5AA:
	mov.b @(0x05,r14),r0
	mov r14,r4
	mov.l @(loc_8C0AE6B0,pc),r1 ; r1 set to 0x8C157C3c
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14
	
;==============================================
loc_8C0AE5BC:
	mov.w @(0xDC,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt.s loc_8c0ae606
	mov.l @(0x18,r14),r13
	mov.w @(0xCC,PC),r0
	mov.l @(r0,r14),r4
	mov.b @(0x3,r4),r0
	tst r0,r0
	bf loc_8c0ae680
	mov.w @(0xC4,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c0ae680
	mov.b @(0x1,r4),r0
	mov 0x18,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c0ae5f4
	mov.b @(0x1,r4),r0
	mov 0x1A,r2
	extu.b r0,r0
	cmp/gt r2,r0
	bf loc_8c0ae680

loc_8C0AE5F4:
	mov.w @(0xA4,PC),r0
	mov.b @(r0,r14),r0
	tst 0x7F,r0
	bf loc_8c0ae680
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0ae79e
	mov.l @r15+,r14

loc_8C0AE606:
	mov.l @(0xAC,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c0ae61a
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0ae7dc
	mov.l @r15+,r14

loc_8C0AE61A:
	mov 0x5C,r1
	mov.l @(0x98,PC),r4
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
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll2 r0
	fmov @(r0,r4),fr3
	mov 0x38,r0
	fmov @(r0,r14),fr2
	mov.w @(0x3C,PC),r0
	fsub fr3,fr2
	fmov @(r0,r13),fr3
	fcmp/gt fr2,fr3
	bf loc_8c0ae68a
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll2 r0
	fmov @(r0,r4),fr3
	mov.w @(0x28,PC),r0
	fmov @(r0,r13),fr2
	mov 0x38,r0
	fsub fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C0AE680:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0ae81c
	mov.l @r15+,r14

loc_8C0AE68A:
	mov.l @(0x30,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x2C,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0ae69c:
	#data 0x019e
loc_8c0ae69e:
	#data 0x01b0
loc_8c0ae6a0:
	#data 0x0411
loc_8c0ae6a2:
	#data 0x041c
	#align4

loc_8C0AE6A4:
	#data loc_8c0aF636
loc_8C0AE6A8:
	#data loc_8c0aF9A2
loc_8C0AE6AC:
	#data loc_8c0aF994
loc_8C0AE6B0:
	#data bank15.loc_8c157c3c
loc_8C0AE6B4:
	#data loc_8c0aFA8e
loc_8C0AE6B8:
	#data bank15.loc_8c157c44
loc_8C0AE6BC:
	#data bank03.loc_8c034dee
loc_8C0AE6C0:
	#data bank04.loc_8c045748

;==============================================
loc_8C0AE6C4:
	mov.l r14,@-r15
	mov.l r13,@-r15
	mov.l r12,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov r4,r14
	mov.l @(0x18,r14),r12
	mov.w @(loc_8C0AE7F2,pc),r3 ; r3 set to 0x2A4
	mov.w @(loc_8C0AE7F0,pc),r4 ; r4 set to 0xCc
	add r12,r3 ; r3 ??? bc r12 is ???	
	mov.l r3,@r15
	add r14,r4 ; r4 ??? bc r14 is ???	
	mov.l @(loc_8C0AE804,pc),r3 ; r3 set to 0x8C0AFB80
	mov.l @r4,r13
	jsr @r3
	mov r14,r4
	mov.b @(0x06,r14),r0
	tst r0,r0
	bf loc_8C0AE72c
	mov.b @(0x06,r14),r0
	add 0x01,r0
	mov.b r0,@(0x06,r14)
	mov.w @(loc_8C0AE7F4,pc),r0 ; r0 set to 0x130
	mov.w @(r0,r13),r3 ; r3 ??? bc r13 is ???	
	mov.w r3,@(r0,r14)
	mov.l @(loc_8C0AE808,pc),r3 ; r3 set to 0x8C0AFAA2
	jsr @r3
	mov r14,r4
	mov.b @(0x01,r13),r0
	mov r14,r4
	mov.l @(loc_8C0AE80C,pc),r2 ; r2 set to 0x8C1582Fc
	mov 0x19,r5 ; r5 set to 0x19
	extu.b r0,r6 ; r6 set to 0x30
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	shll2 r6 ; r6 set to 0xC0
	shll2 r6 ; r6 set to 0x300
	extu.b r3,r3
	shll2 r3
	shll2 r6 ; r6 set to 0xC00
	add r2,r6 ; r6 set to 0x8C158EFc
	shll r3
	add r3,r6 ; r6 ??? bc r3 is ???	
	mov.b @(0x06,r6),r0
	mov r0,r6 ; r6 set to 0x21
	add 0x04,r15
	lds.l @r15+,pr
	mov.l @(loc_8C0AE810,pc),r3 ; r3 set to 0x8C034E8c
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0ae72c:
	mov.l @(loc_8c0ae808,pc),r3
	jsr @r3
	mov r14,r4
	mov.l @r15,r2
	mov.b @(0x03,r2),r0 
	tst r0,r0
	bt loc_8c0ae742
	mov.w @(loc_8C0AE7F6,pc),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bt loc_8c0ae750

loc_8c0ae742:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0ae7dc
	mov.l @r15+,r14

loc_8c0ae750:
	mov.b @(0x05,r13),r0 
	extu.b r0,r0
	cmp/eq 0x03,r0 
	bf loc_8c0ae780
	mov.w @(loc_8C0AE7F8,pc),r0
	mov.b @(r0,r13),r4
	extu.b r4,r0
	cmp/eq 0x09,r0 
	bt/s loc_8c0ae76c
	mov r0,r4
	mov r4,r0
	nop 
	cmp/eq 0x17,r0 
	bf loc_8c0ae780

loc_8c0ae76c:
	mov.w @(loc_8C0AE7FA,pc),r0
	mov 0x02,r4
	mov.l @(loc_8c0ae814,pc),r3
	mov.w r4,@(r0,r13) 
	add 0x55,r0
	mov.b r4,@(r0,r13) 
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c0ae78e

loc_8c0ae780:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @r15+,r12
	mov.l @r15+,r13
	bra loc_8c0ae81c
	mov.l @r15+,r14

loc_8c0ae78e:
	mov r14,r4
	add 0x04,r15
	lds.l @r15+,pr 
	mov.l @(loc_8c0ae818,pc),r3
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8c0ae79e:
	mov.b @(0x5,r4),r0
	mov 0x00,r6
	mov.w @(0x4A,PC),r5
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	add r4,r5
	mov r6,r0
	nop
	mov.b r0,@(0x6,r4)
	mov.w @(0x48,PC),r0
	mov.l @(r0,r4),r3
	mov.w @(0x46,PC),r0
	mov.l r3,@r5
	mov.w @(0x36,PC),r3
	mov.b r0,@(0x9,r5)
	mov.l @(0x18,r4),r4
	add r3,r4
	mov.b @(0x2,r4),r0
	tst r0,r0
	bf loc_8c0ae7ca
	mov 0x78,r0
	mov.b r0,@(0x3,r4)

loc_8c0ae7ca:
	mov.b @(0x2,r4),r0
	mov.b r0,@(0x7,r5)
	mov r6,r0
	nop
	mov.b r0,@(0xA,r5)
	mov.b @(0x2,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x2,r4)

;----------------------------------------------
loc_8c0ae7dc:
	mov.b @(0x04,r4),r0 
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x04,r4) 
	mov 0x00,r0
	mov.b r0,@(0x05,r4) 
	mov.b r0,@(0x06,r4) 
	mov.w @(loc_8C0AE800,pc),r0
	rts 
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8c0ae7f0:
	#data 0x00CC
loc_8c0ae7f2:
	#data 0x02A4
loc_8c0ae7f4:
	#data 0x0130
loc_8C0AE7F6:
	#data 0x0411
loc_8C0AE7F8:
	#data 0x0233
loc_8C0AE7FA:
	#data 0x01E4
loc_8C0AE7Fc:
	#data 0x01B0
loc_8C0AE7Fe:
	#data 0x00FF
loc_8C0AE800:
	#data 0x012C
	#align4

loc_8c0ae804:
	#data loc_8C0AFB80
loc_8c0ae808:
	#data loc_8c0afaa2
loc_8c0ae80c:
	#data bank15.loc_8C1582FC
loc_8c0ae810:
	#data bank03.loc_8C034E8C
loc_8c0ae814:
	#data loc_8c0af770
loc_8c0ae818:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0AE81C:
	mov.b @(0x04,r4),r0
	mov 0x01,r5 ; r5 set to 0x01
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov r5,r0 ; r0 set to 0x01
	nop
	mov.b r0,@(0x05,r4)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x06,r4)
	mov.w @(loc_8C0AE948,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r5,@(r0,r4)

;----------------------------------------------
loc_8C0AE834:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	mov.w @(0x10A,PC),r4
	tst r0,r0
	bf.s loc_8c0ae86e
	add r14,r4
	mov.b @(0x6,r14),r0
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.b @(0x7,r4),r0
	cmp/pz r0
	bf loc_8c0ae856
	mov.l @(0xFC,PC),r2
	jsr @r2
	mov r14,r4

loc_8C0AE856:
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf.s loc_8c0ae862
	mov 0x19,r5
	bra loc_8c0ae864
	mov 0x17,r6

loc_8C0AE862:
	mov 0x0A,r6

loc_8C0AE864:
	mov.l @(0xEC,PC),r3
	jsr @r3
	mov r14,r4
	bra loc_8c0ae888
	nop

loc_8C0AE86E:
	mov.l @(0xE8,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0ae888
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0xC2,PC),r0
	bra loc_8c0ae892
	mov.b r3,@(r0,r14)

loc_8C0AE888:
	lds.l @r15+,pr
	mov.l @(0xD0,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

loc_8C0AE892:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AE898:
	mov r4,r3
	mov.l @(loc_8C0AE960,pc),r1 ; r1 set to 0x8C157C64
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

loc_8C0AE8AA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r13,r0
	nop
	mov.l @(0xA0,PC),r3
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x6,r14)
	mov.l @(0x18,r14),r12
	jsr @r3
	mov r14,r4
	mov 0x34,r0
	fmov @(r0,r12),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r12),fr3
	fmov fr3,@(r0,r14)
	mov 0x60,r0
	mov.w r0,@(0x1C,r14)
	mova @(0x88,PC),r0
	fmov @r0,fr5
	mova @(0x88,PC),r0
	fmov @r0,fr4
	mov.w @(0x64,PC),r0
	mov.b @(r0,r12),r3
	tst r3,r3
	bf loc_8c0ae8f4
	mova @(0x80,PC),r0
	fmov @r0,fr5
	mova @(0x80,PC),r0
	fmov @r0,fr4

loc_8C0AE8F4:
	mov 0x34,r0
	fmov @(r0,r14),fr3
	fadd fr5,fr3
	fmov fr3,@(r0,r14)
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fldi0 fr4
	fmov fr4,@(r0,r14)
	mov 0x60,r0
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	fmov fr4,@(r0,r14)
	bsr loc_8c0af80c
	mov r14,r4
	mov.w @(0x38,PC),r0
	mov 0x15,r2
	mov.l @(0x60,PC),r3
	mov 0x19,r5
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l r13,@(r0,r14)
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov 0x0D,r6
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.l @(0x14,PC),r2
	mov.l @r15+,r12
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0AE948:
	#data 0x012c
loc_8C0AE94a:
	#data 0x00Cc
loc_8C0AE94c:
	#data 0x01D2
loc_8C0AE94e:
	#data 0x01A1
	#align4

loc_8C0AE950:
	#data loc_8c0aFB9c
loc_8C0AE954:
	#data bank03.loc_8c034e8c
loc_8C0AE958:
	#data bank03.loc_8c034dee
loc_8C0AE95C:
	#data loc_8c0aFB7c
loc_8C0AE960:
	#data bank15.loc_8c157c64
loc_8C0AE964:
	#data loc_8c0aFBE4
loc_8C0AE968:
	#data 0x42D55555
loc_8C0AE96c:
	#data 0x40555555
loc_8C0AE970:
	#data 0xC2D55555
loc_8C0AE974:
	#data 0xC0555555
loc_8C0AE978:
	#data 0x8C2896B0

;==============================================
loc_8C0AE97C:
	mov.w @(0xD8,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8c0ae994
	mov.l @(0xD4,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bt loc_8c0ae99c

loc_8C0AE994:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0ae7dc
	mov.l @r15+,r14

loc_8C0AE99C:
	mov.b @(0x5,r14),r0
	mov r14,r4
	mov.l @(0xC0,PC),r1
	extu.b r0,r0
	lds.l @r15+,pr
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8C0AE9AE:
	mov.w @(0xA8,PC),r0
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0ae9f2
	mov.w @(0x9C,PC),r0
	mov.l @(r0,r14),r4
	mov.b @(0x3,r4),r0
	tst r0,r0
	bf loc_8c0aea50
	mov.w @(0x94,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c0aea50
	mov.b @(0x1,r4),r0
	mov 0x18,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c0ae9e2
	mov.b @(0x1,r4),r0
	mov 0x1A,r2
	extu.b r0,r0
	cmp/gt r2,r0
	bf loc_8c0aea50

loc_8C0AE9E2:
	mov.w @(0x74,PC),r0
	mov.b @(r0,r14),r0
	tst 0x7F,r0
	bf loc_8c0aea50
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0aeb12
	mov.l @r15+,r14

loc_8C0AE9F2:
	mov.l @(0x74,PC),r3
	jsr @r3
	mov r14,r4
	tst r0,r0
	bf loc_8c0aea50
	mov.w @(0x1C,r14),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	tst r0,r0
	bt loc_8c0aea50
	mov 0x5C,r1
	mov.l @(0x60,PC),r3
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
	lds.l @r15+,pr
	mov.l @(0x24,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0AEA50:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0ae7dc
	mov.l @r15+,r14

;##############################################
loc_8c0aea58:
	#data 0x019f
loc_8c0aea5a:
	#data 0x019e
loc_8c0aea5c:
	#data 0x01b0
loc_8c0aea5e:
	#data 0x0411
	#align4

loc_8C0AEA60:
	#data loc_8c0aF9A2
loc_8C0AEA64:
	#data bank15.loc_8c157c74
loc_8C0AEA68:
	#data loc_8c0aFA8e
loc_8C0AEA6C:
	#data bank03.loc_8c034dee
loc_8C0AEA70:
	#data bank04.loc_8c045748

;----------------------------------------------
loc_8C0AEA74:
	mov.l r14,@-r15
	mov.l r13,@-r15
	sts.l pr,@-r15
	add 0xF8,r15
	mov.w @(0xD4,PC),r3
	mov r4,r14
	add r14,r3
	mov.l r3,@(0x4,r15)
	mov.l @(0xDC,PC),r3
	jsr @r3
	mov r14,r4
	mov.w @(0xC8,PC),r2
	mov.l @(0x18,r14),r13
	add r13,r2
	mov.l r2,@r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c0aeaa4
	mov.b @(0x6,r14),r0
	mov.l @(0xCC,PC),r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4

loc_8C0AEAA4:
	mov.l @r15,r2
	mov.b @(0x3,r2),r0
	tst r0,r0
	bt loc_8c0aeab4
	mov.w @(0xA8,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bt loc_8c0aeac0

loc_8C0AEAB4:
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0ae7dc
	mov.l @r15+,r14

loc_8C0AEAC0:
	mov.l @(0x4,r15),r4
	mov 0x34,r0
	mov.l @r4,r4
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov.b @(0x5,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8c0aeb06
	mov.w @(0x84,PC),r0
	mov.b @(r0,r4),r5
	extu.b r5,r0
	cmp/eq 0x09,r0
	bt.s loc_8c0aeae6
	mov r0,r5
	mov r5,r0
	nop
	cmp/eq 0x17,r0
	bf loc_8c0aeb06

loc_8C0AEAE6:
	mov.w @(0x72,PC),r0
	mov 0x02,r5
	mov.w r5,@(r0,r4)
	add 0x55,r0
	mov.b r5,@(r0,r4)
	bsr loc_8c0af770
	mov r14,r4
	tst r0,r0
	bf loc_8c0aeb06
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @(0x6C,PC),r3
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0AEB06:
	mov r14,r4
	add 0x08,r15
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0ae81c
	mov.l @r15+,r14

loc_8C0AEB12:
	mov.b @(0x5,r4),r0
	mov 0x00,r7
	mov.w @(0x3A,PC),r5
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	add r4,r5
	mov r7,r0
	nop
	mov.b r0,@(0x6,r4)
	mov.w @(0x36,PC),r0
	mov.l @(r0,r4),r3
	mov.w @(0x34,PC),r0
	mov.l r3,@r5
	mov.w @(0x26,PC),r3
	mov.b r0,@(0x9,r5)
	add 0x2D,r0
	mov.l @(0x18,r4),r6
	mov.b r7,@(r0,r4)
	add r3,r6
	mov.b @(0x2,r6),r0
	tst r0,r0
	bf loc_8c0aeb42
	mov 0x78,r0
	mov.b r0,@(0x3,r6)

loc_8C0AEB42:
	mov.b @(0x2,r6),r0
	mov.b r0,@(0x7,r5)
	mov.b @(0x2,r6),r0
	add 0x01,r0
	mov.b r0,@(0x2,r6)
	mov r7,r0
	nop
	rts
	mov.b r0,@(0xA,r5)

;----------------------------------------------
loc_8c0aeb54:
	#data 0x00cc
loc_8c0aeb56:
	#data 0x02a4
loc_8c0aeb58:
	#data 0x0411
loc_8c0aeb5a:
	#data 0x0233
loc_8c0aeb5c:
	#data 0x01e4
loc_8c0aeb5e:
	#data 0x01b0
loc_8c0aeb60:
	#data 0x00ff
	#align4

loc_8C0AEB64:
	#data loc_8c0aFB80
loc_8C0AEB68:
	#data loc_8c0aD8D8
loc_8C0AEB6C:
	#data bank03.loc_8c034dee

;==============================================
loc_8C0AEB70:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x5,r14),r0
	mov.w @(0x76,PC),r4
	tst r0,r0
	bf.s loc_8c0aebc2
	add r14,r4
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c0aebac
	mov.b @(0x6,r14),r0
	mov 0x01,r3
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	mov.w @(0x62,PC),r0
	mov.b r3,@(r0,r14)
	mov.b @(0x7,r4),r0
	cmp/pz r0
	bf loc_8c0aeb9e
	mov.l @(0x5C,PC),r2
	jsr @r2
	mov r14,r4

loc_8C0AEB9E:
	mov.l @(0x5C,PC),r3
	mov 0x19,r5
	mov 0x11,r6
	jsr @r3
	mov r14,r4
	bra loc_8c0aebb8
	nop

loc_8C0AEBAC:
	mov.l @(0x50,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bf loc_8c0aebce

loc_8C0AEBB8:
	lds.l @r15+,pr
	mov.l @(0x48,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8C0AEBC2:
	mov.b @(0x7,r4),r0
	cmp/pz r0
	bf loc_8c0aebce
	mov.l @(0x2C,PC),r2
	jsr @r2
	mov r14,r4

loc_8C0AEBCE:
	mov.b @(0x4,r14),r0
	mov 0x00,r3
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.w @(0x1A,PC),r0
	mov.b r3,@(r0,r14)
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AEBE0:
	mov r4,r3
	mov.l @(loc_8C0AEC08,pc),r1 ; r1 set to 0x8C157C7c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0AEBF2:
	#data 0x00Cc
loc_8C0AEBF4:
	#data 0x012c
	#align4

loc_8C0AEBF8:
	#data loc_8c0aFB9c
loc_8C0AEBFC:
	#data bank03.loc_8c034e8c
loc_8C0AEC00:
	#data bank03.loc_8c034dee
loc_8C0AEC04:
	#data loc_8c0aFB7c
loc_8C0AEC08:
	#data bank15.loc_8c157c7c

;==============================================
loc_8C0AEC0C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.l r12,@-r15
	mov 0x00,r12
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r12,r0
	nop
	mov.l @(0xE0,PC),r3
	mov.b r0,@(0x5,r14)
	mov.b r0,@(0x6,r14)
	mov.l @(0x18,r14),r13
	jsr @r3
	mov r14,r4
	mov 0x21,r0
	mov.l @(0xD4,PC),r4
	mov.b @(r0,r14),r2
	mov.w @(0xC6,PC),r0
	extu.b r2,r2
	mov.b @(r0,r13),r3
	shll2 r2
	shll r2
	tst r3,r3
	add r4,r2
	bf.s loc_8c0aec48
	fmov @r2,fr4
	fneg fr4

loc_8C0AEC48:
	mov 0x34,r0
	fmov @(r0,r13),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r4
	fmov @r4,fr3
	mov.l @(0xA8,PC),r4
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	mov 0x08,r0
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r4,r3
	fmov @(r0,r3),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r3
	extu.b r3,r3
	shll2 r3
	shll2 r3
	add r4,r3
	mov 0x0C,r0
	fmov @(r0,r3),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r5
	mov 0x04,r0
	extu.b r5,r5
	shll2 r5
	shll2 r5
	add r4,r5
	fmov @(r0,r5),fr5
	mov.w @(0x5A,PC),r0
	mov.b @(r0,r13),r3
	tst r3,r3
	bf.s loc_8c0aecae
	fmov @r5,fr4
	fneg fr5
	fneg fr4

loc_8C0AECAE:
	mov 0x5C,r0
	fmov fr4,@(r0,r14)
	mov 0x68,r0
	fmov fr5,@(r0,r14)
	bsr loc_8c0af80c
	mov r14,r4
	mov.w @(0x42,PC),r0
	mov 0x17,r2
	mov.l @(0x50,PC),r3
	mov 0x19,r5
	mov.b r2,@(r0,r14)
	add 0x0B,r0
	mov.w r12,@(r0,r14)
	add 0xF2,r0
	mov.b r12,@(r0,r14)
	add 0x26,r0
	mov.l r12,@(r0,r14)
	mov r14,r4
	mov.b @(0x2,r14),r0
	mov.l @r3,r2
	extu.b r0,r0
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	mov 0x21,r0
	mov.b @(r0,r14),r6
	mov.l @(0x2C,PC),r0
	extu.b r6,r6
	mov.l @(0x2C,PC),r2
	shll2 r6
	fmov @(r0,r6),fr3
	lds.l @r15+,pr
	ftrc fr3,fpul
	mov.l @r15+,r12
	sts fpul,r6
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0aecfe:
	#data 0x01d2
loc_8c0aed00:
	#data 0x01a1
	#align4

loc_8C0AED04:
	#data loc_8c0aFBE4
loc_8C0AED08:
	#data bank15.loc_8c157c8c
loc_8C0AED0C:
	#data bank15.loc_8c157cCc
loc_8C0AED10:
	#data 0x8C2896B0
loc_8C0AED14:
	#data bank15.loc_8c157d4c
loc_8C0AED18:
	#data bank03.loc_8c034e8c

;==============================================
loc_8C0AED1C:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	bsr loc_8c0af636
	mov.l @(0x18,r14),r13
	tst r0,r0
	bf loc_8c0aedf2
	bsr loc_8c0af9a2
	mov r14,r4
	tst r0,r0
	bf loc_8c0aed82
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0aee0e
	mov.w @(0xEC,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0aed7a
	mov.w @(0xE6,PC),r0
	mov.l @(r0,r14),r4
	mov.b @(0x3,r4),r0
	tst r0,r0
	bf loc_8c0aedf2
	mov.w @(0xDE,PC),r0
	mov.b @(r0,r4),r2
	tst r2,r2
	bf loc_8c0aedf2
	mov.b @(0x1,r4),r0
	mov 0x18,r3
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c0aed68
	mov.b @(0x1,r4),r0
	mov 0x1A,r2
	extu.b r0,r0
	cmp/gt r2,r0
	bf loc_8c0aedf2

loc_8C0AED68:
	mov.w @(0xBE,PC),r0
	mov.b @(r0,r14),r0
	tst 0x7F,r0
	bf loc_8c0aedf2
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0ae79e
	mov.l @r15+,r14

loc_8C0AED7A:
	bsr loc_8c0afa8e
	mov r14,r4
	tst r0,r0
	bt loc_8c0aed8c

loc_8C0AED82:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0ae7dc
	mov.l @r15+,r14

loc_8C0AED8C:
	mov 0x5C,r1
	mov.l @(0xA4,PC),r4
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
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll2 r0
	fmov @(r0,r4),fr3
	mov.w @(0x5C,PC),r0
	fmov @(r0,r13),fr2
	mov 0x38,r0
	fsub fr3,fr2
	fmov @(r0,r14),fr3
	fcmp/gt fr3,fr2
	bf loc_8c0aedfc
	mov 0x21,r0
	mov.b @(r0,r14),r0
	extu.b r0,r0
	shll2 r0
	fmov @(r0,r4),fr3
	mov.w @(0x44,PC),r0
	fmov @(r0,r13),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)

loc_8C0AEDF2:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0ae81c
	mov.l @r15+,r14

loc_8C0AEDFC:
	mov.l @(0x38,PC),r3
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x34,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0AEE0E:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0ae6c4
	mov.l @r15+,r14

;==============================================
loc_8C0AEE18:
	mov r4,r3
	mov.l @(loc_8C0AEE40,pc),r1 ; r1 set to 0x8C157D8c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0aee2a:
	#data 0x019e
loc_8c0aee2c:
	#data 0x01b0
loc_8c0aee2e:
	#data 0x0411
loc_8c0aee30:
	#data 0x041c
	#align4

loc_8C0AEE34:
	#data bank15.loc_8c157d6c
loc_8C0AEE38:
	#data bank03.loc_8c034dee
loc_8C0AEE3C:
	#data bank04.loc_8c045748
loc_8C0AEE40:
	#data bank15.loc_8c157d8c

;==============================================
loc_8C0AEE44:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r14)
	mov.l @(0x18,r14),r13
	bsr loc_8C0AFBE4
	mov r14,r4
	mov 0x34,r0 ; r0 set to 0x34
	mov.l @(loc_8C0AEF64,pc),r3 ; r3 set to 0x8C034E8c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	mov r14,r4
	mov 0x04,r6 ; r6 set to 0x04
	fmov.s fr3,@(r0,r14)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r13),fr3
	mov 0x17,r5 ; r5 set to 0x17
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0AEE78:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(0xDC,PC),r0
	sts.l pr,@-r15
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x07,r0
	bf loc_8c0aeeac
	mov.w @(0xD0,PC),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bf loc_8c0aeeac
	mov 0x34,r0
	mov.l @(0xD0,PC),r3
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0aeeb4

loc_8C0AEEAC:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0afba8
	mov.l @r15+,r14

loc_8C0AEEB4:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AEEBA:
	mov r4,r3
	mov.l @(loc_8C0AEF6C,pc),r1 ; r1 set to 0x8C157D9c
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0AEECC:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13 ; r13 set to 0x00
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov r13,r0 ; r0 set to 0x00
	nop
	mov.b r0,@(0x05,r14)
	bsr loc_8C0AFBE4
	mov r14,r4
	bsr loc_8C0AF83c
	mov r14,r4
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0AEEFa
	mov.w @(loc_8C0AEF60,pc),r0 ; r0 set to 0x1A1
	mov 0x07,r3 ; r3 set to 0x07
	bra loc_8C0AEF00
	mov.b r3,@(r0,r14)

loc_8C0AEEFA:
	mov.w @(loc_8C0AEF60,pc),r0 ; r0 set to 0x1A1
	mov 0x41,r2 ; r2 set to 0x41
	mov.b r2,@(r0,r14)

loc_8C0AEF00:
	mov.w @(loc_8C0AEF62,pc),r0 ; r0 set to 0x1AC, r0 set to 0x1Ac
	mov r14,r4
	mov.l @(loc_8C0AEF70,pc),r3 ; r3 set to 0x8C2896B0, r3 set to 0x8C2896B0
	mov 0x05,r6 ; r6 set to 0x05, r6 set to 0x05
	mov.w r13,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19E, r0 set to 0x19e
	mov.b r13,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4, r0 set to 0x1C4
	mov.l r13,@(r0,r14)
	mov 0x17,r5 ; r5 set to 0x17, r5 set to 0x17
	mov.b @(0x02,r14),r0
	mov.l @r3,r2 ; r2 ??	
	extu.b r0,r0 ; r0 set to 0xC4, r0 set to 0xC4
	mov.l @(loc_8C0AEF64,pc),r3 ; r3 set to 0x8C034E8C, r3 set to 0x8C034E8c
	shll r0 ; r0 set to 0x188, r0 set to 0x188
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8C0AEF2E:
	mov.l r14,@-r15
	mov 0x21,r0 ; r0 set to 0x21
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(r0,r14),r3
	tst r3,r3
	bf/s loc_8C0AEF74
	mov.l @(0x18,r14),r4
	mov.b @(0x05,r4),r0
	tst r0,r0
	bf loc_8C0AEFA6
	mov.w @(loc_8C0AEF5C,pc),r0 ; r0 set to 0x159
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf loc_8C0AEFA6
	mov.w @(loc_8C0AEF5E,pc),r0 ; r0 set to 0x158
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8C0AEF8e
	bra loc_8C0AEFA6
	nop

;==============================================
loc_8C0AEF5C:
	#data 0x0159
loc_8C0AEF5E:
	#data 0x0158
loc_8C0AEF60:
	#data 0x01A1
loc_8C0AEF62:
	#data 0x01Ac
	#align4

loc_8C0AEF64:
	#data bank03.loc_8c034e8c
loc_8C0AEF68:
	#data bank03.loc_8c034dee
loc_8C0AEF6C:
	#data bank15.loc_8c157d9c
loc_8C0AEF70:
	#data 0x8C2896B0

;==============================================
loc_8c0aef74:
	mov.b @(0x05,r4),r0 
	tst r0,r0
	bf loc_8c0aefa6
	mov.w @(loc_8C0AF082,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x15,r0 
	bf loc_8c0aefa6
	mov.w @(loc_8C0AF084,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x1A,r0 
	bf loc_8c0aefa6

loc_8c0aef8e:
	mov 0x34,r0
	mov.l @(loc_8c0af08c,pc),r3
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x38,r0
	fmov.s @(r0,r4),fr3
	fmov.s fr3,@(r0,r14) 
	jsr @r3
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0aefae

loc_8C0AEFA6:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0AFBA8
	mov.l @r15+,r14

;==============================================
loc_8C0AEFAE:
	lds.l @r15+,pr
	mov.l @(0xDC,PC),r3
	mov r14,r4
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0AEFB8:
	mov r4,r3
	mov.l @(loc_8C0AF094,pc),r1 ; r1 set to 0x8C157DAc
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;==============================================
loc_8C0AEFCA:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov 0x00,r13
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov r13,r0
	nop
	mov.b r0,@(0x5,r14)
	bsr loc_8c0afbe4
	mov r14,r4
	bsr loc_8c0af83c
	mov r14,r4
	mov.w @(0x9A,PC),r0
	mov 0x0D,r3
	mov r14,r4
	mov.b r3,@(r0,r14)
	add 0x0B,r0
	mov.w r13,@(r0,r14)
	add 0xF2,r0
	mov.b r13,@(r0,r14)
	add 0x26,r0
	mov.l @(0x9C,PC),r3
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
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0AF014:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov.w @(0x64,PC),r0
	sts.l pr,@-r15
	mov.l @(0x18,r14),r13
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x0B,r0
	bf loc_8c0af032
	mov.w @(0x58,PC),r0
	mov.b @(r0,r13),r0
	extu.b r0,r0
	cmp/eq 0x01,r0
	bt loc_8c0af03c

loc_8C0AF032:
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8c0afba8
	mov.l @r15+,r14

loc_8C0AF03C:
	mov.w @(0x48,PC),r0
	mov.b @(r0,r13),r2
	cmp/pz r2
	bt loc_8c0af074
	mov 0x34,r0
	fmov @(r0,r13),fr3
	mov 0x01,r3
	mov 0x7F,r7
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	mov 0x17,r5
	mov 0x06,r6
	fmov fr3,@(r0,r14)
	mov.w @(0x2E,PC),r0
	mov.b r3,@(r0,r14)
	add 0x15,r0
	mov.b @(r0,r13),r0
	mov.l @(0x38,PC),r3
	and r0,r7
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov.l @(0x24,PC),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0AF074:
	mov.w @(0x12,PC),r0
	mov 0x00,r2
	mov.b r2,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0af082:
	#data 0x0159
loc_8c0af084:
	#data 0x0158
loc_8c0af086:
	#data 0x01a1
loc_8c0af088:
	#data 0x0141
loc_8c0af08a:
	#data 0x012c
	#align4

loc_8C0AF08C:
	#data bank03.loc_8c034dee
loc_8C0AF090:
	#data bank04.loc_8c045748
loc_8C0AF094:
	#data bank15.loc_8c157dAc
loc_8C0AF098:
	#data 0x8C2896B0
loc_8C0AF09C:
	#data bank03.loc_8c034F54

;==============================================
loc_8C0AF0A0:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0AF1AA,pc),r0 ; r0 set to 0x248
	sts.l pr,@-r15
	mov.l @(0x18,r14),r5
	mov.w @(loc_8C0AF1A8,pc),r4 ; r4 set to 0xCc
	mov.b @(r0,r5),r3
	tst r3,r3
	bf/s loc_8C0AF0F4
	add r14,r4 ; r4 ??? bc r14 is ???	
	mov.b @(0x04,r14),r0
	tst r0,r0
	bf loc_8C0AF0E8
	mov.b @(0x04,r14),r0
	add 0x01,r0 ; r0 set to 0x249
	mov.b r0,@(0x04,r14)
	bsr loc_8C0AFBE4
	mov r14,r4
	mov 0x21,r0 ; r0 set to 0x21
	mov r14,r4
	mov.b @(r0,r14),r2
	mov 0x19,r5 ; r5 set to 0x19
	mov.l @(loc_8C0AF1B4,pc),r0 ; r0 set to 0x8C157DC4
	extu.b r2,r2
	mov.b @(r0,r2),r3
	mov 0x24,r0 ; r0 set to 0x24
	mov.b r3,@(r0,r14)
	mov 0x21,r0 ; r0 set to 0x21
	mov.b @(r0,r14),r6
	mov.l @(loc_8C0AF1B8,pc),r0 ; r0 set to 0x8C157DBc
	lds.l @r15+,pr
	extu.b r6,r6
	mov.l @(loc_8C0AF1BC,pc),r3 ; r3 set to 0x8C034E8c
	mov.b @(r0,r6),r6
	jmp @r3
	mov.l @r15+,r14

loc_8c0af0e8:
	mov.l @(0x14,r14),r5
	mov 0x02,r3
	mov.b @(0x04,r5),r0 
	extu.b r0,r0
	cmp/ge r3,r0
	bf loc_8c0af0fc

loc_8C0AF0F4:
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8C0AFBBe
	mov.l @r15+,r14
	
;==============================================
loc_8C0AF0FC:
	mov.w @(0xAC,PC),r0
	mov.w @(r0,r5),r1
	mov.l @(0xBC,PC),r5
	mov.w r1,@(r0,r14)
	mov 0x34,r0
	mov.l @r4,r4
	fmov @(r0,r4),fr3
	fmov fr3,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov 0x04,r0
	extu.b r2,r2
	shll2 r2
	shll r2
	add r5,r2
	fmov @(r0,r2),fr3
	mov.w @(0x8E,PC),r0
	fmov @(r0,r4),fr2
	mov 0x38,r0
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov 0x21,r0
	mov.b @(r0,r14),r2
	mov.w @(0x7E,PC),r0
	extu.b r2,r2
	shll2 r2
	shll r2
	add r2,r5
	mov.w @(r0,r14),r2
	tst r2,r2
	bf.s loc_8c0af13e
	fmov @r5,fr4
	fneg fr4

loc_8C0AF13E:
	mov 0x34,r0
	mov.l @(0x80,PC),r3
	fmov @(r0,r14),fr3
	mov r14,r4
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0AF150:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0AF1AA,pc),r0 ; r0 set to 0x248
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C0AF164
	mov r14,r4
	bra loc_8C0AFBBe
	mov.l @r15+,r14

loc_8C0AF164:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0AF1C8,pc),r1 ; r1 set to 0x8C157E0c
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0AF174:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	mov.b @(0x04,r14),r0
	add 0x01,r0
	mov.b r0,@(0x04,r14)
	mov.l @(0x18,r14),r13
	bsr loc_8C0AFBE4
	mov r14,r4
	mov.w @(loc_8C0AF1B0,pc),r0 ; r0 set to 0x19c
	mov 0x44,r4 ; r4 set to 0x44
	mov.l @(loc_8C0AF1CC,pc),r3 ; r3 set to 0x8C26823c
	mov.b r4,@(r0,r14)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r4,@(r0,r14)
	mov.l @r3,r0 ; r0 ??	
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bt/s loc_8C0AF1D0
	mov 0x00,r4 ; r4 set to 0x00
	mov.w @(loc_8C0AF1B2,pc),r0 ; r0 set to 0x1A1
	mov 0x27,r1 ; r1 set to 0x27
	bra loc_8C0AF1D6
	mov.b r1,@(r0,r14)

;##############################################
loc_8C0AF1A8:
	#data 0x00Cc
loc_8C0AF1AA:
	#data 0x0248
loc_8C0AF1Ac:
	#data 0x0130
loc_8C0AF1Ae:
	#data 0x041C
loc_8C0AF1B0:
	#data 0x019c
loc_8C0AF1B2:
	#data 0x01A1
	#align4

loc_8C0AF1B4:
	#data bank15.loc_8c157dC4
loc_8C0AF1B8:
	#data bank15.loc_8c157dBc
loc_8C0AF1BC:
	#data bank03.loc_8c034e8c
loc_8C0AF1C0:
	#data bank15.loc_8c157dCc
loc_8C0AF1C4:
	#data bank03.loc_8c034dee
loc_8C0AF1C8:
	#data bank15.loc_8c157e0c
loc_8C0AF1CC:
	#data 0x8C26823c

;----------------------------------------------
loc_8c0af1d0:
	mov.w @(loc_8C0AF2F8,pc),r0
	mov 0x29,r2
	mov.b r2,@(r0,r14)

loc_8c0af1d6:
	mov.w @(loc_8C0AF2FA,pc),r0
	mov 0x19,r5
	mov.l @(loc_8C0AF304,pc),r3
	mov 0x1B,r6
	mov.w r4,@(r0,r14) 
	add 0xF2,r0
	mov.b r4,@(r0,r14) 
	add 0x26,r0
	mov.l r4,@(r0,r14) 
	mov.b @(0x02,r14),r0 
	mov.l @r3,r2
	extu.b r0,r0
	mov.l @(loc_8c0af30c,pc),r3
	shll r0
	add 0x7C,r2
	mov.w @(r0,r2),r1
	add 0x01,r1
	mov.w r1,@(r0,r2) 
	mov 0x34,r0
	fmov.s @(r0,r13),fr3
	fmov.s fr3,@(r0,r14) 
	mova @(loc_8C0AF308,pc),r0 
	fmov.s @r0,fr3
	mov 0x38,r0
	fmov.s @(r0,r13),fr2
	fadd fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mov 0x30,r0
	mov.w r0,@(0x1C,r14) 
	jsr @r3
	mov r14,r4
	mov 0x68,r0
	fldi0 fr4
	mov.l @(loc_8c0af310,pc),r13
	fmov.s fr4,@(r0,r14) 
	mov 0x6C,r0
	jsr @r13
	fmov.s fr4,@(r0,r14) 
	and 0x07,r0 
	mov.l @(loc_8c0af314,pc),r1
	shll2 r0
	shll r0
	fmov.s @(r0,r1),fr4
	mov.w @(loc_8C0AF2FC,pc),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf/s loc_8c0af238
	mov 0x5C,r0
	fneg fr4

loc_8c0af238:
	jsr @r13
	fmov.s fr4,@(r0,r14) 
	and 0x07,r0 
	mov.l @(loc_8c0af318,pc),r1
	shll2 r0
	shll r0
	jsr @r13
	fmov.s @(r0,r1),fr15
	tst 0x01,r0 
	bt/s loc_8c0af250
	mov 0x60,r0
	fneg fr15

loc_8c0af250:
	fmov.s fr15,@(r0,r14) 
	mov r14,r4
	lds.l @r15+,pr 
	fmov.s @r15+,fr15
	mov.l @r15+,r13
	bra loc_8c0af532
	mov.l @r15+,r14

;==============================================
loc_8c0af25e:
	mov.l r14,@-r15
	mov r4,r14
	sts.l pr,@-r15
	mov.b @(0x6,r14),r0
	tst r0,r0
	bf loc_8c0af2de
	mov.l @(0xB0,PC),r3
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
	add 0xFF,r0
	mov.w r0,@(0x1C,r14)
	exts.w r0,r0
	cmp/pz r0
	bf loc_8c0af2c4
	mov.w @(0x46,PC),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0af2c4
	mov.w @(0x40,PC),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0af2d4

loc_8c0af2c4:
	mov.b @(0x6,r14),r0
	mov 0x19,r5
	mov.l @(0x40,PC),r3
	mov 0x02,r6
	add 0x01,r0
	mov.b r0,@(0x6,r14)
	jsr @r3
	mov r14,r4

loc_8c0af2d4:
	lds.l @r15+,pr
	mov.l @(0x48,PC),r2
	mov r14,r4
	jmp @r2
	mov.l @r15+,r14

loc_8c0af2de:
	mov.l @(0x3C,PC),r2
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8c0af2f2
	lds.l @r15+,pr
	mov r14,r4
	bra loc_8c0afbbe
	mov.l @r15+,r14

loc_8c0af2f2:
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AF2F8:
	#data 0x01A1
loc_8C0AF2FA:
	#data 0x01AC
loc_8C0AF2FC:
	#data 0x0130
loc_8C0AF2Fe:
	#data 0x019F
loc_8C0AF300:
	#data 0x019E
	#align4

loc_8C0AF304:
	#data 0x8C2896B0
loc_8C0AF308:
	#data 0x43700000
loc_8c0af30c:
	#data bank03.loc_8c034e8c
loc_8c0af310:
	#data bank03.loc_8c03319e
loc_8c0af314:
	#data bank15.loc_8c157e14
loc_8c0af318:
	#data bank15.loc_8c157e18
loc_8c0af31c:
	#data bank03.loc_8C034DEE
loc_8c0af320:
	#data bank04.loc_8C045748

;==============================================
loc_8C0AF324:
	mov.l r14,@-r15
	mov r4,r14
	mov.w @(loc_8C0AF432,pc),r0 ; r0 set to 0x248
	mov.l @(0x18,r14),r4
	mov.b @(r0,r4),r3
	tst r3,r3
	bt loc_8C0AF338
	mov r14,r4
	bra loc_8C0AFBBe
	mov.l @r15+,r14

loc_8C0AF338:
	mov.b @(0x04,r14),r0
	mov r14,r4
	mov.l @(loc_8C0AF43C,pc),r1 ; r1 set to 0x8C157E54
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

;==============================================
loc_8C0AF348:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add 0x01,r0
	mov.b r0,@(0x4,r14)
	mov.l @(0x18,r14),r13
	bsr loc_8c0afbe4
	mov r14,r4
	mova @(0xE0,PC),r0
	fmov @r0,fr4
	mov.w @(0xD0,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf loc_8c0af36c
	mova @(0xD8,PC),r0
	fmov @r0,fr4

loc_8C0AF36C:
	mov 0x34,r0
	mov.l @(0xDC,PC),r6
	fmov @(r0,r13),fr3
	mov 0x44,r4
	mov 0x2A,r5
	fadd fr4,fr3
	fmov fr3,@(r0,r14)
	mova @(0xCC,PC),r0
	fmov @r0,fr3
	mov 0x38,r0
	fmov @(r0,r13),fr2
	fadd fr3,fr2
	fmov fr2,@(r0,r14)
	mov.w @(0xAC,PC),r0
	mov.b r4,@(r0,r14)
	add 0x01,r0
	mov.b r4,@(r0,r14)
	add 0x04,r0
	mov.b r5,@(r0,r14)
	add 0x0B,r0
	mov 0x00,r4
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
	mov.l @(0x9C,PC),r3
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bt loc_8c0af3c2
	mov.w @(0x7A,PC),r0
	mov 0x28,r1
	bra loc_8c0af3c6
	mov.b r1,@(r0,r14)

loc_8C0AF3C2:
	mov.w @(0x72,PC),r0
	mov.b r5,@(r0,r14)

loc_8C0AF3C6:
	mov.w @(0x70,PC),r0
	mov 0x19,r5
	mov.w r4,@(r0,r14)
	add 0xF2,r0
	mov.b r4,@(r0,r14)
	add 0x26,r0
	mov.l r4,@(r0,r14)
	mov.b @(0x2,r14),r0
	mov.l @r6,r3
	mov 0x15,r6
	extu.b r0,r0
	shll r0
	add 0x7C,r3
	mov.w @(r0,r3),r2
	add 0x01,r2
	mov.w r2,@(r0,r3)
	mov 0x60,r0
	mov.l @(0x68,PC),r3
	mov.w r0,@(0x1C,r14)
	jsr @r3
	mov r14,r4
	mov 0x68,r0
	fldi0 fr4
	mov.l @(0x60,PC),r3
	fmov fr4,@(r0,r14)
	mov 0x6C,r0
	jsr @r3
	fmov fr4,@(r0,r14)
	and 0x07,r0
	mov.l @(0x58,PC),r1
	shll2 r0
	shll r0
	fmov @(r0,r1),fr4
	mov.w @(0x28,PC),r0
	mov.w @(r0,r14),r3
	tst r3,r3
	bf.s loc_8c0af414
	mov 0x5C,r0
	fneg fr4

loc_8C0AF414:
	mov.l @(0x40,PC),r3
	jsr @r3
	fmov fr4,@(r0,r14)
	and 0x07,r0
	mov.l @(0x40,PC),r1
	shll2 r0
	mov r14,r4
	shll r0
	fmov @(r0,r1),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	bra loc_8c0af532
	mov.l @r15+,r14

;##############################################
loc_8C0AF432:
	#data 0x0248
loc_8c0af434:
	#data 0x0130
loc_8c0af436:
	#data 0x019c
loc_8c0af438:
	#data 0x01a1
loc_8c0af43a:
	#data 0x01ac
	#align4

loc_8C0AF43C:
#data bank15.loc_8c157e54
loc_8C0AF440:
	#data 0x425C0000
loc_8C0AF444:
	#data 0xC25C0000
loc_8C0AF448:
	#data 0x434DB6Db
loc_8C0AF44c:
	#data 0x8C2896B0
loc_8C0AF450:
	#data 0x8C26823c
loc_8C0AF454:
	#data bank03.loc_8c034e8c
loc_8C0AF458:
	#data bank03.loc_8c03319e
loc_8C0AF45C:
	#data bank15.loc_8c157e5c
loc_8C0AF460:
	#data bank15.loc_8c157e60

;==============================================
loc_8C0AF464:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	sts.l pr,@-r15
	mov.b @(0x06,r14),r0
	tst r0,r0
	bf/s loc_8C0AF514
	mov.l @(0x18,r14),r13
	mov.l @(loc_8C0AF580,pc),r3 ; r3 set to 0x8C034DEe
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
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3
	mov.w @(loc_8C0AF578,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r13),fr2
	fcmp/gt fr3,fr2
	bf loc_8C0AF4Dc
	mov.b @(0x06,r14),r0
	mov r14,r4
	mov.l @(loc_8C0AF584,pc),r3 ; r3 set to 0x8C034E8c
	mov 0x02,r6 ; r6 set to 0x02
	add 0x01,r0 ; r0 set to 0x41d
	mov.b r0,@(0x06,r14)
	mov 0x19,r5 ; r5 set to 0x19
	mov.w @(loc_8C0AF578,pc),r0 ; r0 set to 0x41c
	fmov.s @(r0,r13),fr3 ; r3 ??? bc r13 is ???	
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s fr3,@(r0,r14)
	lds.l @r15+,pr
	mov.l @r15+,r13
	jmp @r3
	mov.l @r15+,r14

loc_8c0af4dc:
	mov.w @(0x1C,r14),r0 
	add 0xFF,r0
	mov.w r0,@(0x1C,r14) 
	exts.w r0,r0
	cmp/pz r0
	bf loc_8c0af4f8
	mov.w @(loc_8C0AF57A,pc),r0
	mov.b @(r0,r14),r2
	tst r2,r2
	bf loc_8c0af4f8
	mov.w @(loc_8C0AF57C,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0af508

loc_8c0af4f8:
	mov.b @(0x06,r14),r0 
	mov 0x19,r5
	mov.l @(loc_8c0af584,pc),r3
	mov 0x02,r6
	add 0x01,r0
	mov.b r0,@(0x06,r14) 
	jsr @r3
	mov r14,r4

loc_8c0af508:
	lds.l @r15+,pr 
	mov.l @(loc_8c0af588,pc),r2
	mov r14,r4
	mov.l @r15+,r13
	jmp @r2
	mov.l @r15+,r14

loc_8C0AF514:
	mov.l @(loc_8C0AF580,pc),r2 ; r2 set to 0x8C034DEe
	jsr @r2
	mov r14,r4
	exts.b r0,r0
	cmp/pz r0
	bt loc_8C0AF52a
	lds.l @r15+,pr
	mov r14,r4
	mov.l @r15+,r13
	bra loc_8C0AFBBe
	mov.l @r15+,r14

loc_8C0AF52A:
	lds.l @r15+,pr
	mov.l @r15+,r13
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AF532:
	mov.l r8,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x34,r8
	mov r4,r3
	add r3,r8
	mov.l @(0x4C,PC),r3
	jsr @r3
	mov.l r4,@r15
	and 0x07,r0
	mov.l @(0x48,PC),r1
	shll2 r0
	fmov @r8,fr2
	shll r0
	fmov @(r0,r1),fr3
	fadd fr3,fr2
	fmov fr2,@r8
	mov 0x38,r8
	mov.l @r15,r3
	add r3,r8
	mov.l @(0x30,PC),r3
	jsr @r3
	nop
	and 0x07,r0
	mov.l @(0x30,PC),r1
	shll2 r0
	fmov @r8,fr2
	shll r0
	fmov @(r0,r1),fr3
	fadd fr3,fr2
	fmov fr2,@r8
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov.l @r15+,r8

;----------------------------------------------
loc_8C0AF578:
	#data 0x041c
loc_8c0af57a:
	#data 0x019f
loc_8c0af57c:
	#data 0x019e
	#align4

loc_8C0AF580:
	#data bank03.loc_8c034dee
loc_8C0AF584:
	#data bank03.loc_8c034e8c
loc_8C0AF588:
	#data bank04.loc_8c045748
loc_8C0AF58C:
	#data bank03.loc_8c03319e
loc_8C0AF590:
	#data bank15.loc_8c157e9c
loc_8C0AF594:
	#data bank15.loc_8c157eA0

;==============================================
loc_8C0AF598:
	mov.w @(0xF4,PC),r3
	mov.l r14,@-r15
	add r3,r4
	sts.l pr,@-r15
	mov.l @r4,r14
	mov.b @(0x5,r14),r0
	tst r0,r0
	bf loc_8c0af5c2
	mov.l @(0xF4,PC),r3
	mov.l @r3,r0
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bt loc_8c0af5ba
	mov.l @(0xF0,PC),r1
	mov 0xFF,r5
	jsr @r1
	mov r14,r4

loc_8C0AF5BA:
	mov.w @(0xD4,PC),r0
	mov.w @(r0,r14),r3
	cmp/pl r3
	bf loc_8c0af5ca

loc_8C0AF5C2:
	lds.l @r15+,pr
	mov 0xFF,r0
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AF5CA:
	mov.l @(0xDC,PC),r3
	mov 0x0B,r5
	mov 0x1C,r6
	jsr @r3
	mov r14,r4
	mov 0x00,r0
	lds.l @r15+,pr
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AF5DC:
	mov.w @(loc_8C0AF690,pc),r5 ; r5 set to 0xCc
	mov 0x34,r0 ; r0 set to 0x34
	add r4,r5 ; r5 ??? bc r4 is ???	
	mov.l @r5,r5
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r5),fr3
	fmov.s fr3,@(r0,r4)
	mov 0x5C,r0 ; r0 set to 0x5c
	fmov.s @(r0,r4),fr4
	fldi0 fr3
	fcmp/gt fr3,fr4
	bf loc_8C0AF600
	mov.w @(loc_8C0AF694,pc),r0 ; r0 set to 0x130
	mov 0x00,r2 ; r2 set to 0x00
	bra loc_8C0AF606
	mov.w r2,@(r0,r4)

loc_8c0af600:
	mov.w @(loc_8c0af694,pc),r0
	mov 0x01,r1
	mov.w r1,@(r0,r4) 

loc_8c0af606:
	mov 0x22,r0
	mov.b @(r0,r4),r3
	mov.w @(loc_8c0af694,pc),r0
	extu.b r3,r3
	mov.w @(r0,r5),r2
	cmp/eq r2,r3
	bt loc_8c0af61e
	mov.w @(r0,r4),r2
	mov 0x01,r3
	fneg fr4
	xor r3,r2
	mov.w r2,@(r0,r4) 

loc_8c0af61e:
	mov 0x34,r0
	fmov.s @(r0,r4),fr3
	mov 0x60,r1
	add r4,r1
	fadd fr4,fr3
	fmov.s fr3,@(r0,r4) 
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	fmov.s @r1,fr3
	fadd fr3,fr2
	rts 
	fmov.s fr2,@(r0,r4) 

loc_8C0AF636:
	mov.w @(loc_8C0AF696,pc),r0 ; r0 set to 0x19f
	mov.w @(loc_8C0AF690,pc),r5 ; r5 set to 0xCc
	mov.b @(r0,r4),r3
	tst r3,r3
	bf/s loc_8C0AF646
	add r4,r5 ; r5 ??? bc r4 is ???	
	rts
	mov 0x00,r0

;----------------------------------------------
loc_8C0AF646:
	mov.w @(loc_8C0AF698,pc),r3 ; r3 set to 0x2A4
	mov.l @(0x18,r4),r4
	add r3,r4
	mov.b @(0x02,r4),r0
	tst r0,r0
	bf loc_8C0AF68a
	mov.b @(0x09,r5),r0
	tst r0,r0
	bt loc_8C0AF68a
	mov.l @r5,r4
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8C0AF68a
	mov.w @(loc_8C0AF69A,pc),r0 ; r0 set to 0x233
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	extu.b r0,r0
	cmp/eq 0x09,r0
	bf/s loc_8C0AF678
	mov 0x00,r5 ; r5 set to 0x00
	mov.w @(loc_8C0AF69C,pc),r0 ; r0 set to 0x1E4
	mov.w r5,@(r0,r4)
	add 0x55,r0 ; r0 set to 0x239
	bra loc_8C0AF68a
	mov.b r5,@(r0,r4)

loc_8c0af678:
	mov.w @(loc_8c0af69a,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x17,r0 
	bf loc_8c0af68a
	mov.w @(loc_8c0af69c,pc),r0
	mov.w r5,@(r0,r4) 
	add 0x55,r0
	mov.b r5,@(r0,r4) 

loc_8C0AF68A:
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFf
	rts
	nop


;----------------------------------------------
loc_8C0AF690:
	#data 0x00Cc
loc_8C0AF692:
	#data 0x0420
loc_8C0AF694:
	#data 0x0130
loc_8C0AF696:
	#data 0x019f
loc_8C0AF698:
	#data 0x02A4
loc_8C0AF69A:
	#data 0x0233
loc_8C0AF69C:
	#data 0x01E4
	#align4

loc_8C0AF6a0:
	#data 0x8C26823c
loc_8C0AF6A4:
	#data bank05.loc_8c05929c
loc_8C0AF6A8:
	#data bank05.loc_8c058DC4

;==============================================
loc_8C0AF6AC:
	mov.w @(loc_8C0AF7BE,pc),r3 ; r3 set to 0xCc
	mov.w @(loc_8C0AF7C0,pc),r0 ; r0 set to 0x420
	add r3,r4
	mov.l @r4,r5
	mov.w @(r0,r5),r2
	tst r2,r2
	bt loc_8C0AF6Cc
	mov.b @(0x05,r5),r0
	tst r0,r0
	bf loc_8C0AF6C6
	mov.w @(loc_8C0AF7C2,pc),r0 ; r0 set to 0xFf
	bra loc_8C0AF6D0
	mov.b r0,@(0x08,r4)

loc_8c0af6c6:
	mov.b @(0x08,r4),r0
	tst r0,r0
	bt loc_8c0af6d0

loc_8C0AF6CC:
	rts
	mov 0xFF,r0

;----------------------------------------------
loc_8C0AF6D0:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;----------------------------------------------
loc_8C0AF6D6:
	mov.l r14,@-r15
	fmov.s fr15,@-r15
	sts.l pr,@-r15
	add 0xFC,r15
	mov 0x22,r0 ; r0 set to 0x22
	mov r4,r14
	mov.b @(r0,r14),r3
	mov 0x1F,r2 ; r2 set to 0x1f
	add 0x01,r3
	and r2,r3
	mov.b r3,@(r0,r14)
	mova @(loc_8C0AF7D4,pc),r0  ; r0 set to 0x8C0AF7D4
	fmov.s @r0,fr15
	mov 0x22,r0 ; r0 set to 0x22
	mov.b @(r0,r14),r0 ; r0 ??? bc r14 is ???	
	mov.l @(loc_8C0AF7D8,pc),r3 ; r3 set to 0x8C11E860
	extu.b r0,r0
	neg r0,r0
	add 0x28,r0
	and r2,r0
	shll8 r0
	shll2 r0
	shll r0
	mov.w r0,@r15
	jsr @r3
	mov.w @r15,r4
	fmul fr0,fr15
	mova @(loc_8C0AF7DC,pc),r0  ; r0 set to 0x8C0AF7Dc
	fmov.s @r0,fr0 ; r0 ??	
	mova @(loc_8C0AF7E0,pc),r0  ; r0 set to 0x8C0AF7E0
	fmul fr0,fr15
	fmov.s @r0,fr0 ; r0 ??	
	mova @(loc_8C0AF7E4,pc),r0  ; r0 set to 0x8C0AF7E4
	fdiv fr0,fr15
	fmov.s @r0,fr0 ; r0 ??	
	mova @(loc_8C0AF7E8,pc),r0  ; r0 set to 0x8C0AF7E8
	fdiv fr0,fr15
	fmov.s @r0,fr0 ; r0 ??	
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r14),fr3 ; r3 ??? bc r14 is ???	
	fmac fr0,fr15,fr3
	fmov.s fr3,@(r0,r14)
	add 0x04,r15
	lds.l @r15+,pr
	fmov.s @r15+,fr15
	rts
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AF734:
	mov.w @(loc_8C0AF7C6,pc),r0 ; r0 set to 0x34a
	mov.l @(0x18,r4),r5
	mov.w @(loc_8C0AF7C4,pc),r3 ; r3 set to 0x3000
	mov.w @(r0,r5),r6
	and r3,r6
	extu.w r6,r2
	tst r2,r2
	bt loc_8C0AF76c
	mov.w @(loc_8C0AF7C8,pc),r1 ; r1 set to 0x1000
	extu.w r6,r6
	cmp/eq r1,r6
	bf loc_8C0AF75e
	mov.l @(loc_8C0AF7EC,pc),r2 ; r2 set to 0x3F892492
	mov 0x38,r0 ; r0 set to 0x38
	fmov.s @(r0,r4),fr2 ; r2 ??? bc r4 is ???	
	lds r2,fpul
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r4)
	bra loc_8C0AF76c
	nop

loc_8c0af75e:
	mov.l @(loc_8C0AF7F0,pc),r2
	mov 0x38,r0
	fmov.s @(r0,r4),fr2
	lds r2,fpul 
	fsts fpul,fr3
	fadd fr3,fr2
	fmov.s fr2,@(r0,r4) 

loc_8C0AF76C:
	rts
	nop

;----------------------------------------------
loc_8C0AF770:
	mov.w @(0x4A,PC),r5
	mov.l @(0x18,r4),r6
	add r4,r5
	mov.w @(0x50,PC),r4
	add r6,r4
	mov.b @(0x5,r4),r0
	extu.b r0,r3
	mov.b @(0x7,r5),r0
	cmp/eq r0,r3
	bf loc_8c0af7f8
	mov.w @(0x44,PC),r0
	mov.w @(0x46,PC),r2
	mov.l @(r0,r6),r6
	mov.w @(0x40,PC),r0
	mov.w @(r0,r6),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c0af79a
	mov.b @(0xA,r5),r0
	add 0x02,r0
	mov.b r0,@(0xA,r5)

loc_8C0AF79A:
	mov.w @(0x30,PC),r0
	mov.w @(0x32,PC),r2
	mov.w @(r0,r6),r3
	extu.w r3,r3
	tst r2,r3
	bt loc_8c0af7ac
	mov.b @(0xA,r5),r0
	add 0x02,r0
	mov.b r0,@(0xA,r5)

loc_8C0AF7AC:
	mov.l @(0x44,PC),r1
	mov.b @(0x7,r5),r0
	mov.b @(r0,r1),r3
	mov.b @(0xA,r5),r0
	extu.b r0,r0
	cmp/gt r3,r0
	bt loc_8c0af7fc
	bra loc_8c0af806
	nop

;##############################################
loc_8c0af7be:
	#data 0x00cc
loc_8c0af7c0:
	#data 0x0420
loc_8c0af7c2:
	#data 0x00ff
loc_8c0af7c4:
	#data 0x3000
loc_8c0af7c6:
	#data 0x034a
loc_8c0af7c8:
	#data 0x1000
loc_8c0af7ca:
	#data 0x02a4
loc_8c0af7cc:
	#data 0x020c
loc_8c0af7ce:
	#data 0x034e
loc_8c0af7d0:
	#data 0x3c00
loc_8c0af7d2:
	#data 0x0360
	#align4

loc_8C0AF7D4:
	#data 0x47160000
loc_8C0AF7D8:
	#data bank11.loc_8c11E860
loc_8C0AF7DC:
	#data 0x447A0000
loc_8C0AF7E0:
	#data 0x47F42400
loc_8C0AF7E4:
	#data 0x43800000
loc_8C0AF7E8:
	#data 0x40092492
loc_8C0AF7EC:
	#data 0x3F892492
loc_8c0af7f0:
	#data 0x404DB6Db
loc_8C0AF7F4:
	#data bank15.loc_8c157eDc

;==============================================
loc_8C0AF7F8:
	cmp/gt r0,r3
	bf loc_8c0af806

loc_8C0AF7FC:
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	rts
	mov 0x01,r0

loc_8C0AF806:
	mov 0x00,r0
	rts
	nop

;----------------------------------------------
loc_8C0AF80C:
	mov.w @(loc_8C0AF97E,pc),r0 ; r0 set to 0x19c
	mov 0x44,r3 ; r3 set to 0x44
	mov r3,r2 ; r2 set to 0x44
	mov.l @(0x18,r4),r6
	mov.b r3,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x19d
	mov.b r2,@(r0,r4)
	add 0xBC,r0 ; r0 set to 0x159
	mov.w @(loc_8C0AF97A,pc),r5 ; r5 set to 0xCc
	mov.b @(r0,r6),r0 ; r0 ??? bc r6 is ???	
	add r4,r5 ; r5 ??? bc r4 is ???	
	mov.w @(loc_8C0AF97C,pc),r7 ; r7 set to 0x2A4
	mov.b r0,@(0x04,r5)
	mov.w @(loc_8C0AF980,pc),r0 ; r0 set to 0x158
	add r6,r7 ; r7 ??? bc r6 is ???	
	mov.b @(r0,r6),r0 ; r0 ??? bc r6 is ???	
	mov.b r0,@(0x05,r5)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x08,r5)
	mov.b @(0x04,r7),r0
	mov.b r0,@(0x06,r5)
	mov 0xFF,r0 ; r0 set to 0xFFFFFFFf
	rts
	mov.b r0,@(0x07,r5)

;----------------------------------------------
loc_8C0AF83C:
	mov.w @(loc_8C0AF97E,pc),r0 ; r0 set to 0x19c
	mov 0x41,r5 ; r5 set to 0x41
	mov.b r5,@(r0,r4)
	add 0x01,r0 ; r0 set to 0x19d
	rts
	mov.b r5,@(r0,r4)

;----------------------------------------------
loc_8C0AF848:
	mov 0x20,r0
	mov.l @(0x18,r4),r5
	mov.b @(r0,r4),r3
	mov 0x21,r0
	mov.b @(r0,r4),r1
	extu.b r3,r3
	mov.w @(0x12A,PC),r0
	mov r3,r2
	shll2 r3
	extu.b r1,r1
	mov.l @(0x12C,PC),r6
	add r2,r3
	mov.b @(r0,r5),r2
	add r1,r3
	shll2 r3
	shll r3
	tst r2,r2
	add r6,r3
	bf.s loc_8c0af872
	fmov @r3,fr4
	fneg fr4

loc_8C0AF872:
	mov 0x20,r3
	mov.l @(0x118,PC),r7
	add r4,r3
	mov 0x21,r1
	mov 0x34,r0
	add r4,r1
	fmov @(r0,r4),fr3
	fadd fr4,fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	mov.b @r3,r3
	mov.b @r1,r1
	extu.b r3,r3
	fmov @(r0,r4),fr2
	mov r3,r2
	shll2 r3
	extu.b r1,r1
	add r2,r3
	add r1,r3
	shll2 r3
	shll r3
	add r3,r6
	mov 0x04,r1
	add r6,r1
	fmov @r1,fr3
	fadd fr3,fr2
	fmov fr2,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	mov r3,r2
	shll2 r3
	mov 0x21,r0
	mov.b @(r0,r4),r1
	add r2,r3
	mov 0x08,r0
	extu.b r1,r1
	add r1,r3
	shll2 r3
	shll2 r3
	add r7,r3
	fmov @(r0,r3),fr3
	mov 0x60,r0
	fmov fr3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r3
	mov 0x21,r0
	mov.b @(r0,r4),r1
	mov 0x0C,r0
	extu.b r3,r3
	mov r3,r2
	shll2 r3
	extu.b r1,r1
	add r2,r3
	add r1,r3
	shll2 r3
	shll2 r3
	add r7,r3
	fmov @(r0,r3),fr3
	mov 0x6C,r0
	fmov fr3,@(r0,r4)
	mov 0x20,r0
	mov.b @(r0,r4),r6
	extu.b r6,r6
	mov 0x21,r0
	mov r6,r3
	mov.b @(r0,r4),r2
	shll2 r6
	add r3,r6
	extu.b r2,r2
	add r2,r6
	shll2 r6
	shll2 r6
	mov 0x04,r0
	add r7,r6
	fmov @(r0,r6),fr5
	mov.w @(0x76,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bf.s loc_8c0af918
	fmov @r6,fr4
	fneg fr5
	fneg fr4

loc_8C0AF918:
	mov 0x5C,r0
	fmov fr4,@(r0,r4)
	mov 0x68,r0
	rts
	fmov fr5,@(r0,r4)

;----------------------------------------------
loc_8C0AF922:
	mov.b @(0x5,r4),r0
	mov 0x00,r7
	mov.w @(0x50,PC),r5
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	add r4,r5
	mov r7,r0
	nop
	mov.b r0,@(0x6,r4)
	mov.w @(0x4E,PC),r0
	mov.l @(r0,r4),r3
	mov.w @(0x4C,PC),r0
	mov.l r3,@r5
	mov.b r0,@(0x9,r5)
	add 0x31,r0
	mov.l @r5,r2
	mov.l @(0x18,r4),r6
	mov.b @(r0,r2),r1
	mov 0x22,r0
	mov.w @(0x30,PC),r3
	mov.b r1,@(r0,r4)
	add r3,r6
	mov.b @(0x2,r6),r0
	tst r0,r0
	bf loc_8c0af958
	mov 0x78,r0
	mov.b r0,@(0x3,r6)

loc_8C0AF958:
	mov.b @(0x2,r6),r0
	mov.b r0,@(0x7,r5)
	mov.b @(0x2,r6),r0
	add 0x01,r0
	mov.b r0,@(0x2,r6)
	mov r7,r0
	nop
	rts
	mov.b r0,@(0xA,r5)

;----------------------------------------------
loc_8C0AF96A:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x01,r0 ; r0 set to 0x01
	mov.b r0,@(0x05,r4)
	mov 0x00,r0 ; r0 set to 0x00
	rts
	mov.b r0,@(0x06,r4)

;----------------------------------------------
loc_8C0AF97A:
	#data 0x00Cc
loc_8C0AF97C:
	#data 0x02A4
loc_8C0AF97E:
	#data 0x019c
loc_8C0AF980:
	#data 0x0158
loc_8C0AF982:
	#data 0x01D2
loc_8C0AF984:
	#data 0x0130
loc_8C0AF986:
	#data 0x01B0
loc_8C0AF988:
	#data 0x00Ff
	#align4

loc_8C0AF98C:
	#data bank15.loc_8c157eFc
loc_8C0AF990:
	#data bank15.loc_8c157fB4

;==============================================
loc_8C0AF994:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov 0x00,r0 ; r0 set to 0x00
	mov.b r0,@(0x05,r4)
	rts
	mov.b r0,@(0x06,r4)

;----------------------------------------------
loc_8C0AF9A2:
	mov.w @(loc_8C0AFA82,pc),r5 ; r5 set to 0xCc
	mov.w @(loc_8C0AFA84,pc),r6 ; r6 set to 0x2A4
	add r4,r5 ; r5 ??? bc r4 is ???	
	mov.l @(0x18,r4),r4
	mov.b @(0x05,r4),r0
	tst r0,r0
	bf/s loc_8C0AF9Cc
	add r4,r6 ; r6 ??? bc r4 is ???	
	mov.w @(loc_8C0AFA86,pc),r0 ; r0 set to 0x1D0
	mov.b @(r0,r4),r0 ; r0 ??? bc r4 is ???	
	extu.b r0,r0
	cmp/eq 0x15,r0
	bf loc_8C0AF9Cc
	mov.w @(loc_8C0AFA88,pc),r0 ; r0 set to 0x1E9
	mov 0x02,r3 ; r3 set to 0x02
	mov.b @(r0,r4),r2
	extu.b r2,r2
	cmp/ge r3,r2
	bf loc_8C0AFA78
	bra loc_8C0AFA7e
	nop

loc_8c0af9cc:
	mov.b @(0x04,r6),r0 
	mov r0,r3
	mov.b @(0x06,r5),r0 
	cmp/eq r0,r3
	bf loc_8c0afa78
	mov.b @(0x04,r5),r0 
	tst r0,r0
	bt loc_8c0afa00
	mov.b @(0x05,r5),r0 
	tst r0,r0
	bt loc_8c0afa00
	mov.w @(loc_8C0AFA8A,pc),r0
	mov.b @(r0,r4),r2
	mov.b @(0x04,r5),r0 
	cmp/eq r0,r2
	bf loc_8c0af9f6
	mov.w @(loc_8C0AFA8C,pc),r0
	mov.b @(r0,r4),r2
	mov.b @(0x05,r5),r0 
	cmp/eq r0,r2
	bt loc_8c0afa7c

loc_8c0af9f6:
	mov 0x00,r6
	mov r6,r0
	nop 
	mov.b r0,@(0x04,r5) 
	mov.b r0,@(0x05,r5) 

loc_8c0afa00:
	mov.w @(loc_8C0AFA8A,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x07,r0 
	bf loc_8c0afa14
	mov.w @(loc_8C0AFA8C,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bt loc_8c0afa78

loc_8c0afa14:
	mov.w @(loc_8C0AFA8A,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x08,r0 
	bf loc_8c0afa28
	mov.w @(loc_8C0AFA8C,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bt loc_8c0afa78

loc_8c0afa28:
	mov.w @(loc_8C0AFA8A,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x09,r0 
	bf loc_8c0afa3c
	mov.w @(loc_8C0AFA8C,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bt loc_8c0afa78

loc_8c0afa3c:
	mov.w @(loc_8C0AFA8A,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x0A,r0 
	bf loc_8c0afa50
	mov.w @(loc_8C0AFA8C,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bt loc_8c0afa78

loc_8c0afa50:
	mov.w @(loc_8C0AFA8A,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x0B,r0 
	bf loc_8c0afa64
	mov.w @(loc_8C0AFA8C,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bt loc_8c0afa78

loc_8c0afa64:
	mov.w @(loc_8C0AFA8A,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x0C,r0 
	bf loc_8c0afa7c
	mov.w @(loc_8C0AFA8C,pc),r0
	mov.b @(r0,r4),r0
	extu.b r0,r0
	cmp/eq 0x02,r0 
	bf loc_8c0afa7c

loc_8C0AFA78:
	rts
	mov 0xFF,r0

;----------------------------------------------
loc_8C0AFA7C:
	mov 0x00,r0

loc_8C0AFA7E:
	rts
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0AFA82:
	#data 0x00Cc
loc_8C0AFA84:
	#data 0x02A4
loc_8C0AFA86:
	#data 0x01D0
loc_8C0AFA88:
	#data 0x01E9
loc_8c0afa8a:
	#data 0x0159
loc_8c0afa8c:
	#data 0x0158

;==============================================
loc_8C0AFA8E:
	mov.l @(0x18,r4),r4
	mov.b @(0x05,r4),r0
	extu.b r0,r0
	cmp/eq 0x03,r0
	bf loc_8C0AFA9c
	rts
	mov 0xFF,r0

;----------------------------------------------
loc_8C0AFA9C:
	mov 0x00,r0 ; r0 set to 0x00
	rts
	nop

;----------------------------------------------
loc_8C0AFAA2:
	mov.w @(0x11E,PC),r5
	mov 0x34,r0
	mov.l @(0x124,PC),r6
	add r4,r5
	mov.l @r5,r5
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r5),fr3
	fmov fr3,@(r0,r4)
	mov.w @(0x10C,PC),r0
	mov.w @(r0,r5),r3
	mov.w r3,@(r0,r4)
	mov 0x21,r3
	mov.b @(0x1,r5),r0
	add r4,r3
	mov.b @r3,r3
	extu.b r0,r0
	shll2 r0
	extu.b r3,r3
	shll2 r0
	shll2 r3
	shll2 r0
	shll r3
	add r6,r0
	mov.w @(r0,r3),r3
	mova @(0xF8,PC),r0
	fmov @r0,fr2
	lds r3,fpul
	mov.w @(0xE6,PC),r0
	float fpul,fr3
	fmov fr3,fr4
	mov.w @(r0,r5),r3
	tst r3,r3
	bf.s loc_8c0afaec
	fmul fr2,fr4
	fneg fr4

loc_8C0AFAEC:
	mov 0x34,r0
	mov r4,r2
	fmov @(r0,r4),fr3
	mov 0x21,r3
	add r4,r3
	fadd fr4,fr3
	mov 0x02,r1
	fmov fr3,@(r0,r4)
	mov 0x38,r0
	add r0,r2
	mov.l r2,@-r15
	mov.b @(0x1,r5),r0
	mov.b @r3,r3
	extu.b r0,r0
	shll2 r0
	extu.b r3,r3
	shll2 r0
	shll2 r0
	shll2 r3
	add r6,r0
	shll r3
	add r3,r0
	mov.w @(r0,r1),r3
	mova @(0xB8,PC),r0
	fmov @r0,fr0
	lds r3,fpul
	mov.l @r15+,r3
	mov.w @(0xA0,PC),r0
	float fpul,fr3
	fmov @r3,fr2
	fmac fr0,fr3,fr2
	fmov fr2,@r3
	mov.w @(r0,r5),r2
	mov 0x21,r3
	add r4,r3
	mov.w r2,@(r0,r4)
	mov.b @(0x1,r5),r0
	mov.b @r3,r3
	extu.b r0,r0
	shll2 r0
	shll2 r0
	extu.b r3,r3
	shll2 r3
	shll2 r0
	shll r3
	add r6,r0
	add r3,r0
	mov.b @(0x4,r0),r0
	tst r0,r0
	bt loc_8c0afb5a
	mov.w @(0x72,PC),r0
	mov 0x01,r3
	mov.w @(r0,r4),r2
	xor r3,r2
	mov.w r2,@(r0,r4)

loc_8C0AFB5A:
	mov.b @(0x1,r5),r0
	mov 0x24,r1
	add r4,r1
	extu.b r0,r0
	shll2 r0
	shll2 r0
	shll2 r0
	add r0,r6
	mov 0x21,r0
	mov.b @(r0,r4),r3
	extu.b r3,r3
	shll2 r3
	shll r3
	add r3,r6
	mov.b @(0x5,r6),r0
	rts
	mov.b r0,@r1

;----------------------------------------------
loc_8C0AFB7C:
	rts
	mov 0x00,r0

;----------------------------------------------
loc_8C0AFB80:
	mov.l @(loc_8C0AFBD8,pc),r2 ; r2 set to 0x8C26823c
	mov.w @(loc_8C0AFBC4,pc),r3 ; r3 set to 0xCc
	mov.l @r2,r0
	add r3,r4
	mov.l @(0x1C,r0),r0
	tst 0x01,r0
	bt/s loc_8C0AFB94
	mov.l @r4,r4
	bra loc_8C0AFB96
	mov 0x01,r5

loc_8C0AFB94:
	mov 0x08,r5 ; r5 set to 0x08

loc_8C0AFB96:
	mov.l @(loc_8C0AFBDC,pc),r1 ; r1 set to 0x8C035162, r1 set to 0x8C035162
	jmp @r1
	nop

;==============================================
loc_8C0AFB9C:
	mov.w @(loc_8C0AFBC4,pc),r3 ; r3 set to 0xCc
	mov.l @(loc_8C0AFBDC,pc),r2 ; r2 set to 0x8C035162
	add r3,r4
	mov.l @r4,r4
	jmp @r2
	mov 0x01,r5

loc_8C0AFBA8:
	mov.b @(0x04,r4),r0
	add 0x01,r0
	rts
	mov.b r0,@(0x04,r4)

;----------------------------------------------
loc_8C0AFBB0:
	mov.b @(0x04,r4),r0
	mov 0x00,r3 ; r3 set to 0x00
	add 0x01,r0
	mov.b r0,@(0x04,r4)
	mov.w @(loc_8C0AFBC8,pc),r0 ; r0 set to 0x12c
	rts
	mov.b r3,@(r0,r4)

;----------------------------------------------
loc_8C0AFBBE:
mov.l @(loc_8C0AFBE0,pc),r3 ; r3 set to 0x8C0450C0
jmp @r3
nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8C0AFBC4:
	#data 0x00Cc
loc_8C0AFBC6:
	#data 0x0130
loc_8C0AFBC8:
	#data 0x012c
	#align4

loc_8C0AFBCC:
	#data bank15.loc_8c1582Fc
loc_8C0AFBd0:
	#data work.CpsXScale
loc_8C0AFBd4:
	#data work.CpsYScale
loc_8C0AFBD8:
	#data 0x8C26823c
loc_8C0AFBDC:
	#data bank03.loc_8c035162
loc_8C0AFBE0:
	#data bank04.loc_8c0450C0

;==============================================
loc_8C0AFBE4:
	mov.w @(loc_8C0AFC6A,pc),r1 ; r1 set to 0xDc
	mov.w @(loc_8C0AFC6A,pc),r0 ; r0 set to 0xDc
	sts.l pr,@-r15
	mov.l @(0x18,r4),r2
	add r4,r1 ; r1 ??? bc r4 is ???	
	mov.l @(loc_8C0AFC74,pc),r3 ; r3 set to 0x8C129560
	add r0,r2
	jsr @r3
	add 0xE4,r0 ; r0 set to 0xC0
	mov.w @(loc_8C0AFC6C,pc),r0 ; r0 set to 0x12c
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
	mov.w @(loc_8C0AFC6E,pc),r0 ; r0 set to 0x1A3
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
	mov.l @(loc_8C0AFC78,pc),r3 ; r3 set to 0x8C1294C8
	add 0x50,r2
	jsr @r3
	mov 0x0C,r0 ; r0 set to 0x0c
	mov.l @(0x18,r4),r1
	mov 0x24,r0 ; r0 set to 0x24
	mov 0x20,r2 ; r2 set to 0x20
	mov.b @(r0,r1),r3 ; r3 ??? bc r1 is ???	
	mov.b r3,@(r0,r4)
	mov 0x24,r3 ; r3 set to 0x24
	mov.w @(loc_8C0AFC70,pc),r0 ; r0 set to 0x13d
	mov.b r2,@(r0,r4)
	add 0xFF,r0 ; r0 set to 0x13c
	mov.b r2,@(r0,r4)
	add 0x03,r0 ; r0 set to 0x13f
	mov.b r3,@(r0,r4)
	add 0xFF,r0 ; r0 set to 0x13e
	mov 0x0B,r2 ; r2 set to 0x0b
	mov.b r3,@(r0,r4)
	mov r3,r0 ; r0 set to 0x24
	nop
	lds.l @r15+,pr
	rts
	mov.b r2,@(r0,r4)

;----------------------------------------------
loc_8C0AFC66:
	rts
	nop

;----------------------------------------------
loc_8C0AFC6A:
	#data 0x00Dc
loc_8C0AFC6C:
	#data 0x012c
loc_8C0AFC6E:
	#data 0x01A3
loc_8C0AFC70:
	#data 0x013d
	#align4

loc_8C0AFC74:
	#data bank12.loc_8c129560
loc_8C0AFC78:
	#data bank12.loc_8c1294C8

;==============================================
;unused
loc_8c0afc7c:
	sts.l pr,@-r15
	add 0xFC,r15
	mov.l @(0xD0,PC),r3
	mov 0x01,r5
	mov.l r4,@r15
	mov 0x00,r6
	jsr @r3
	mov r6,r4
	tst r0,r0
	bt.s loc_8c0afcb4
	mov r0,r4
	mov 0x01,r3
	mov.l @(0xC0,PC),r2
	mov.b r3,@r4
	mov 0x00,r5
	mov.l r2,@(0x10,r4)
	mov.l @r15,r3
	mov.l r3,@(0x18,r4)
	mov.l @r15,r0
	mov.w @(0xAA,PC),r3
	mov.b @(0x1,r0),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r3,@(r0,r4)
	mov 0x20,r0
	mov.b r5,@(r0,r4)
	mov.w @(0x9E,PC),r0
	mov.l r5,@(r0,r4)

loc_8c0afcb4:
	add 0x04,r15
	lds.l @r15+,pr
	rts
	mov r4,r0

;----------------------------------------------
loc_8C0AFCBC:
	mov.l r14,@-r15
	mov 0x01,r14
	mov.l r13,@-r15
	mov 0x00,r13
	mov.l r12,@-r15
	mov r5,r12
	mov.l r11,@-r15
	mov.l r10,@-r15
	mov r4,r10
	mov.l r9,@-r15
	mov 0x05,r9
	mov.l r8,@-r15
	sts.l pr,@-r15
	mov.l @(0x7C,PC),r8
	mov.w @(0x74,PC),r11

loc_8C0AFCDA:
	mov 0x01,r5
	mov 0x02,r6
	jsr @r8
	mov r10,r4
	tst r0,r0
	bt.s loc_8c0afd04
	mov r0,r4
	mov.w @(0x66,PC),r0
	mov.l @(0x6C,PC),r2
	mov.b r14,@r4
	mov.l r2,@(0x10,r4)
	mov.l r12,@(0x18,r4)
	mov.l r10,@(r0,r4)
	mov.b @(0x1,r12),r0
	mov.b r0,@(0x1,r4)
	mov 0x26,r0
	mov.w r11,@(r0,r4)
	mov 0x20,r0
	mov.b r14,@(r0,r4)
	mov 0x21,r0
	mov.b r13,@(r0,r4)

loc_8C0AFD04:
	add 0x01,r13
	extu.b r13,r3
	cmp/ge r9,r3
	bf loc_8c0afcda
	mov r4,r0
	nop
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
loc_8C0AFD22:
	mov.l r14,@-r15
	mov 0x20,r0 ; r0 set to 0x20
	mov r4,r14
	mov.b @(r0,r14),r3
	tst r3,r3
	bf loc_8C0AFD36
	mov.l @(0x18,r14),r5
	mov r14,r4
	bra loc_8C0AFD3e
	mov.l @r15+,r14

loc_8C0AFD36:
	mov.l @(0x18,r14),r5
	mov r14,r4
	bra bank0b.loc_8C0B02Fc
	mov.l @r15+,r14

loc_8C0AFD3E:
	mov r4,r3
	mov.l @(loc_8C0AFD5C,pc),r1 ; r1 set to 0x8C1591D0
	mov.l r4,@-r15
	mov.b @(0x04,r3),r0
	extu.b r0,r0
	shll2 r0
	mov.l @(r0,r1),r3
	jmp @r3
	add 0x04,r15

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0afd50:
	#data 0x3600
loc_8c0afd52:
	#data 0x00d8
	#align4

loc_8C0AFD54:
	#data bank04.loc_8c044F12
loc_8C0AFD58:
	#data loc_8c0aFD22
loc_8C0AFD5C:
	#data bank15.loc_8c1591D0

;==============================================
loc_8C0AFD60:
	mov.l r14,@-r15
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	mov.w @(0x15A,PC),r1
	sts.l pr,@-r15
	mov.b @(0x4,r14),r0
	add r14,r1
	mov.w @(0x152,PC),r2
	add 0x01,r0
	mov.l @(0x168,PC),r3
	mov.b r0,@(0x4,r14)
	mov.w @(0x14C,PC),r0
	jsr @r3
	add r13,r2
	mov.w @(0x148,PC),r0
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
	mov.w @(0x12C,PC),r0
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
	mov 0x00,r4
	mov 0x24,r0
	mov.b @(r0,r13),r2
	mov 0x06,r3
	mov.b r4,@(r0,r14)
	mov 0x42,r5
	mov.w @(0x106,PC),r0
	mov.l r3,@(r0,r14)
	add 0x04,r0
	mov.l r4,@(r0,r14)
	add 0x04,r0
	mov.l r4,@(r0,r14)
	mov.w @(0xFC,PC),r0
	mov.l @(0x114,PC),r3
	mov.b r5,@(r0,r14)
	add 0x01,r0
	mov.b r5,@(r0,r14)
	add 0x04,r0
	mov.b r5,@(r0,r14)
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
	mov.w @(0xD4,PC),r2
	mov r2,r0
	nop
	add 0x4F,r0
	mov.l @(0xEC,PC),r4
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	add 0xFF,r0
	mov.b r2,@(r0,r14)
	mova @(0xD8,PC),r0
	fmov @r0,fr3
	mov 0x54,r0
	fmov fr3,@(r0,r14)
	mov 0x50,r0
	fmov fr3,@(r0,r14)
	mov.w @r4,r2
	mov.w @(0x2,r4),r0
	lds r2,fpul
	mov r0,r2
	mov.w @(0xAA,PC),r0
	float fpul,fr4
	mov.w @(r0,r13),r1
	lds r2,fpul
	tst r1,r1
	bt.s loc_8c0afe36
	float fpul,fr5
	fneg fr4

loc_8C0AFE36:
	mov 0x34,r0
	mov.l @(0xC0,PC),r3
	fmov @(r0,r13),fr3
	mova @(0xB4,PC),r0
	fmov @r0,fr0
	mov 0x34,r0
	mov 0x16,r5
	fmac fr0,fr4,fr3
	mov 0x0D,r6
	fmov fr3,@(r0,r14)
	mov 0x38,r0
	fmov @(r0,r13),fr3
	mova @(0xA8,PC),r0
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr5,fr3
	fmov fr3,@(r0,r14)
	jsr @r3
	mov r14,r4
	mov r13,r5
	bsr loc_8c0afcbc
	mov r14,r4
	mov.l @(0x9C,PC),r3
	mov 0x24,r5
	jsr @r3
	mov r14,r4
	lds.l @r15+,pr
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	mov.l @r15+,r14

loc_8C0AFE74:
	mov.l r14,@-r15
	mov 0x04,r3 ; r3 set to 0x04
	mov.w @(loc_8C0AFED6,pc),r0 ; r0 set to 0x2C0
	mov r4,r14
	mov.l r13,@-r15
	mov r5,r13
	sts.l pr,@-r15
	mov.l r3,@(r0,r13)
	mov 0x01,r4 ; r4 set to 0x01
	mov.w @(loc_8C0AFED8,pc),r0 ; r0 set to 0x19e
	fldi1 fr4
	mov.b @(r0,r14),r3 ; r3 ??? bc r14 is ???	
	tst r3,r3
	bt/s loc_8C0AFF34
	fadd fr4,fr4 ; r4 ??	
	mov.w @(loc_8C0AFEDA,pc),r0 ; r0 set to 0xD0
	mov.l @(loc_8C0AFF04,pc),r3 ; r3 set to 0x20000000
	mov.l r4,@(r0,r14)
	add 0x04,r0 ; r0 set to 0xD4
	mov.l @(r0,r14),r2
	add r3,r2
	tst r2,r2
	bf/s loc_8C0AFF34
	mov.l r2,@(r0,r14)
	mov.w @(loc_8C0AFECE,pc),r0 ; r0 set to 0xCc
	mov.l @(r0,r14),r2
	add 0xFF,r2
	cmp/pl r2
	mov.l r2,@(r0,r14)
	bf loc_8C0AFF20
	mov.w @(loc_8C0AFEDC,pc),r0 ; r0 set to 0x1A1
	mov 0x42,r1 ; r1 set to 0x42
	mov 0x00,r5 ; r5 set to 0x00
	mov.b r1,@(r0,r14)
	add 0x0B,r0 ; r0 set to 0x1Ac
	mov.w r5,@(r0,r14)
	add 0xF2,r0 ; r0 set to 0x19e
	mov.b r5,@(r0,r14)
	add 0x26,r0 ; r0 set to 0x1C4
	bra loc_8C0AFF08
	nop

;##############################################
loc_8c0afec6:
	#data 0x00Dc
loc_8c0afec8:
	#data 0x00C0
loc_8c0afeca:
	#data 0x012C
loc_8c0afecc:
	#data 0x01A3
loc_8C0AFECE:
	#data 0x00Cc
loc_8c0afed0:
	#data 0x019c
loc_8c0afed2:
	#data 0x00F0
loc_8c0afed4:
	#data 0x0130
loc_8C0AFED6:
	#data 0x02C0
loc_8C0AFED8:
	#data 0x019e
loc_8C0AFEDA:
	#data 0x00D0
loc_8C0AFEDC:
	#data 0x01A1
	#align4

loc_8C0AFEE0:
	#data bank12.loc_8c129560
loc_8C0AFEE4:
#data bank12.loc_8c1294C8
loc_8C0AFEE8:
	#data 0x8C2896B0
loc_8C0AFEEc:
	#data 0x3E800000
loc_8C0AFEF0:
	#data bank15.loc_8c1591C0
loc_8C0AFEf4:
	#data work.CpsXScale
loc_8C0AFEf8:
	#data work.CpsYScale
loc_8C0AFEFC:
	#data bank03.loc_8c034e8c
loc_8C0AFF00:
	#data bank04.loc_8c042008
loc_8C0AFF04:
	#data 0x20000000

;==============================================
loc_8C0AFF08:
	mov.l @(loc_8C0AFFCC,pc),r2 ; r2 set to 0x8C2896B0
	mov.l r5,@(r0,r14)
	mov.b @(0x02,r14),r0
	mov.l @r2,r1
	extu.b r0,r0
	shll r0
	add 0x7C,r1
	mov.w @(r0,r1),r3
	add 0x01,r3
	mov.w r3,@(r0,r1)
	bra loc_8C0AFF34
	nop

loc_8c0aff20:
	mov.w @(loc_8C0AFFC6,pc),r0
	mov.l r4,@(r0,r14) 
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14) 

loc_8c0aff34:
	mov.b @(0x05,r13),r0 
	tst r0,r0
	bt loc_8c0aff4e
	mov.w @(loc_8C0AFFC6,pc),r0
	mov.l r4,@(r0,r14) 
	mov 0x5C,r0
	fmov.s @(r0,r14),fr3
	fdiv fr4,fr3
	fmov.s fr3,@(r0,r14) 
	mov 0x60,r0
	fmov.s @(r0,r14),fr2
	fdiv fr4,fr2
	fmov.s fr2,@(r0,r14) 

loc_8c0aff4e:
	mov.w @(loc_8C0AFFC6,pc),r0
	mov.l @(r0,r14),r3
	tst r3,r3
	bt loc_8c0aff8c
	mov.w @(loc_8C0AFFC8,pc),r0
	mov 0x01,r3
	mov.l @(loc_8C0AFFD0,pc),r1
	mov.b @(r0,r14),r2
	lds r1,fpul 
	xor r3,r2
	mov.b r2,@(r0,r14) 
	mov 0x50,r0
	fmov.s @(r0,r14),fr2
	fsts fpul,fr3
	fsub fr3,fr2
	fmov.s fr2,@(r0,r14) 
	mova @(loc_8C0AFFD4,pc),r0 
	fmov.s @r0,fr2
	mov 0x50,r0
	fmov.s @(r0,r14),fr1
	fcmp/gt fr1,fr2
	bf loc_8c0aff86
	lds.l @r15+,pr 
	mov r13,r5
	mov r14,r4
	mov.l @r15+,r13
	bra bank0b.loc_8c0b04d0
	mov.l @r15+,r14

loc_8c0aff86:
	fmov.s @(r0,r14),fr3
	mov 0x54,r0
	fmov.s fr3,@(r0,r14) 

loc_8c0aff8c:
	mov.w @(loc_8C0AFFCA,pc),r0
	mov.b @(r0,r14),r3
	tst r3,r3
	bt loc_8c0affa8
	mov r13,r5
	bsr bank0b.loc_8c0b028c
	mov r14,r4
	mov.w @(loc_8C0AFFCA,pc),r0
	mov.b @(r0,r14),r2
	add 0xFF,r2
	mov.b r2,@(r0,r14) 
	exts.b r2,r2
	tst r2,r2
	bf loc_8c0affbe

loc_8c0affa8:
	mov.b @(0x05,r14),r0 
	mov r13,r5
	lds.l @r15+,pr 
	mov.l @(loc_8c0affd8,pc),r1
	extu.b r0,r0
	shll2 r0
	mov r14,r4
	mov.l @r15+,r13
	mov.l @(r0,r1),r3
	jmp @r3
	mov.l @r15+,r14

loc_8c0affbe:
	lds.l @r15+,pr 
	mov.l @r15+,r13
	rts 
	mov.l @r15+,r14

;----------------------------------------------
loc_8C0AFFC6:
	#data 0x00D8
loc_8C0AFFC8:
	#data 0x012C
loc_8C0AFFCA:
	#data 0x01A0
loc_8c0affcc:
	#data 0x8C2896B0
loc_8C0AFFD0:
	#data 0x3D4CCCCD
loc_8C0AFFD4:
	#data 0x3C23D70A
loc_8c0affd8:
	#data bank15.loc_8c1591e0

;==============================================
loc_8C0AFFDC:
	mov.b @(0x05,r5),r0
	tst r0,r0
	bt loc_8C0AFFE6
	bra bank0b.loc_8C0B04D0
	nop

;==============================================
loc_8C0AFFE6:
	mova @(0x118,PC),r0
	fmov @r0,fr4
	mov.w @(0x10E,PC),r0
	mov.b @(r0,r5),r3
	cmp/pz r3
	bt.s loc_8c0b003e
	fldi1 fr5
	mov.b @(0x5,r4),r0
	mov 0x04,r3
	fldi0 fr6
	add 0x01,r0
	mov.l @(0x104,PC),r6
	mov.b r0,@(0x5,r4)

loc_8C0B0000:
	mov.w @(0xF8,PC),r0
	mov.b r3,@(r0,r5)
	mov 0x50,r0
	fmov fr5,@(r0,r4)
	mov 0x10,r0
	mov.w r0,@(0x1C,r4)
	mov 0x5C,r0
	fmov fr6,@(r0,r4)
	mov 0x60,r0
	fmov fr6,@(r0,r4)
	mov 0x68,r0
	fmov fr6,@(r0,r4)
	mov 0x6C,r0
	fmov fr6,@(r0,r4)
	mov.w @(0xDE,PC),r0
	mov.w @(r0,r5),r3
	tst r3,r3
	bf.s loc_8c0b002a
	mov 0x08,r7
	mov.l @(0xE0,PC),r6
	mov 0x18,r7

loc_8C0B002A:
	lds r6,fpul
	mova @(0xDC,PC),r0
	fmov @r0,fr2
	mov 0x5C,r0
	float fpul,fr3
	fmul fr4,fr3
	fdiv fr2,fr3
	fmov fr3,@(r0,r4)
	mov 0x22,r0
	mov.b r7,@(r0,r4)

loc_8C0B003E:
	mov.l @(0xD0,PC),r1
	mov.w @(0xB8,PC),r0
	lds r1,fpul
	mov.b @(r0,r5),r6
	mov 0x50,r0
	fmov @(r0,r4),fr2
	fsts fpul,fr3
	fadd fr3,fr2
	fcmp/gt fr5,fr2
	bf.s loc_8c0b0056
	fmov fr2,@(r0,r4)
	fmov fr5,@(r0,r4)

loc_8C0B0056:
	mov.l @(0xBC,PC),r3
	mov r6,r7
	fmov @(r0,r4),fr3
	shll2 r7
	mov 0x54,r0
	add r3,r7
	fmov fr3,@(r0,r4)
	mov.w @(0x2,r7),r0
	mov.w @r7,r6
	mov r0,r7
	mov.w @(0x90,PC),r0
	mov.w @(r0,r5),r2
	tst r2,r2
	bt.s loc_8c0b0076
	fldi1 fr5
	neg r6,r6

loc_8C0B0076:
	lds r6,fpul
	mov 0x34,r0
	fmov @(r0,r5),fr0
	fadd fr5,fr5
	fmov @(r0,r4),fr2
	float fpul,fr3
	lds r7,fpul
	fadd fr0,fr2
	fmov fr4,fr0
	fmac fr0,fr3,fr2
	float fpul,fr3
	fdiv fr5,fr2
	fmov fr2,@(r0,r4)
	mov 0x38,r0
	fmov @(r0,r4),fr2
	fmov @(r0,r5),fr0
	mova @(0x80,PC),r0
	fadd fr0,fr2
	fmov @r0,fr0
	mov 0x38,r0
	fmac fr0,fr3,fr2
	fdiv fr5,fr2
	rts
	fmov fr2,@(r0,r4)

;----------------------------------------------
loc_8C0B00A6:
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
	mov.w @(0x1C,r4),r0
	add 0xFF,r0
	mov.w r0,@(0x1C,r4)
	exts.w r0,r0
	tst r0,r0
	bf loc_8c0b00f8
	mov.b @(0x5,r4),r0
	add 0x01,r0
	mov.b r0,@(0x5,r4)
	mov 0x30,r0
	mov.w r0,@(0x1C,r4)
	mov 0x00,r0
	mov.w r0,@(0x1E,r4)

loc_8C0B00F8:
	bra bank0b.loc_8c0b02dc
	nop

;VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
loc_8c0b00fc:
	#data 0x0141
loc_8c0b00fe:
	#data 0x0130
	#align4

loc_8c0b0100:
	#data work.CpsXScale
loc_8c0b0104:
	#data 0x00071600
loc_8c0b0108:
	#data 0xFFF8EA00
loc_8c0b010c:
	#data 0x47800000
loc_8c0b0110:
	#data 0x3DCCCCCd
loc_8C0B0114:
	#data bank15.loc_8c1591Bc
loc_8c0b0118:
	#data work.CpsYScale